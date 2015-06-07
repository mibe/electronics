/* Name: main.c
 * Project: hid-mouse, a very simple HID example
 * Author: Christian Starkjohann
 * Creation Date: 2008-04-07
 * Tabsize: 4
 * Copyright: (c) 2008 by OBJECTIVE DEVELOPMENT Software GmbH
 * License: GNU GPL v2 (see License.txt), GNU GPL v3 or proprietary (CommercialLicense.txt)
 */

/*
This example should run on most AVRs with only little changes. No special
hardware resources except INT0 are used. You may have to change usbconfig.h for
different I/O pins for USB. Please note that USB D+ must be the INT0 pin, or
at least be connected to INT0 as well.

We use VID/PID 0x046D/0xC00E which is taken from a Logitech mouse. Don't
publish any hardware using these IDs! This is for demonstration only!
*/

#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>  /* for sei() */
#include <util/delay.h>     /* for _delay_ms() */

#include <avr/pgmspace.h>   /* required by usbdrv.h */
#include "usbdrv.h"
#include "oddebug.h"        /* This is also an example for using debug macros */

/* ------------------------------------------------------------------------- */
/* ----------------------------- USB interface ----------------------------- */
/* ------------------------------------------------------------------------- */

PROGMEM const char usbHidReportDescriptor[52] = { /* USB report descriptor, size must match usbconfig.h */
	0x05, 0x01,                    // USAGE_PAGE (Generic Desktop)
	0x09, 0x02,                    // USAGE (Mouse)
	0xA1, 0x01,                    // COLLECTION (Application)
	0x09, 0x01,                    //   USAGE (Pointer)
	0xA1, 0x00,                    //   COLLECTION (Physical)
	0x05, 0x09,                    //     USAGE_PAGE (Button)
	0x19, 0x01,                    //     USAGE_MINIMUM (1)
	0x29, 0x03,                    //     USAGE_MAXIMUM (3)
	0x15, 0x00,                    //     LOGICAL_MINIMUM (0)
	0x25, 0x01,                    //     LOGICAL_MAXIMUM (1)
	0x95, 0x03,                    //     REPORT_COUNT (3)
	0x75, 0x01,                    //     REPORT_SIZE (1)
	0x81, 0x02,                    //     INPUT (Data,Var,Abs)
	0x95, 0x01,                    //     REPORT_COUNT (1)
	0x75, 0x05,                    //     REPORT_SIZE (5)
	0x81, 0x03,                    //     INPUT (Const,Var,Abs)
	0x05, 0x01,                    //     USAGE_PAGE (Generic Desktop)
	0x09, 0x30,                    //     USAGE (X)
	0x09, 0x31,                    //     USAGE (Y)
	0x09, 0x38,                    //     USAGE (Wheel)
	0x15, 0x81,                    //     LOGICAL_MINIMUM (-127)
	0x25, 0x7F,                    //     LOGICAL_MAXIMUM (127)
	0x75, 0x08,                    //     REPORT_SIZE (8)
	0x95, 0x03,                    //     REPORT_COUNT (3)
	0x81, 0x06,                    //     INPUT (Data,Var,Rel)
	0xC0,                          //   END_COLLECTION
	0xC0,                          // END COLLECTION
};
/* This is the same report descriptor as seen in a Logitech mouse. The data
 * described by this descriptor consists of 4 bytes:
 *      .  .  .  .  . B2 B1 B0 .... one byte with mouse button states (middle right left)
 *     X7 X6 X5 X4 X3 X2 X1 X0 .... 8 bit signed relative coordinate x
 *     Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0 .... 8 bit signed relative coordinate y
 *     W7 W6 W5 W4 W3 W2 W1 W0 .... 8 bit signed relative coordinate wheel
 */
typedef struct{
	uchar   buttonMask;
	char    dx;
	char    dy;
	char    dWheel;
}report_t;

static report_t reportBuffer;
static uchar    idleRate;   /* repeat rate for keyboards, never used for mice */

/* Pin, onto which the switch is wired to.
 * The pins for the USB D- and D+ line cannot be used here, of course.
 */
#define SWITCH_PIN PB4

/* ------------------------------------------------------------------------- */

usbMsgLen_t usbFunctionSetup(uchar data[8])
{
usbRequest_t    *rq = (void *)data;

	/* The following requests are never used. But since they are required by
	 * the specification, we implement them in this example.
	 */
	if((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS){    /* class request type */
		DBG1(0x50, &rq->bRequest, 1);   /* debug output: print our request */
		if(rq->bRequest == USBRQ_HID_GET_REPORT){  /* wValue: ReportType (highbyte), ReportID (lowbyte) */
			/* we only have one report type, so don't look at wValue */
			usbMsgPtr = (void *)&reportBuffer;
			return sizeof(reportBuffer);
		}else if(rq->bRequest == USBRQ_HID_GET_IDLE){
			usbMsgPtr = &idleRate;
			return 1;
		}else if(rq->bRequest == USBRQ_HID_SET_IDLE){
			idleRate = rq->wValue.bytes[1];
		}
	}else{
		/* no vendor specific requests implemented */
	}
	return 0;   /* default for not implemented requests: return no data back to host */
}

/* ------------------------------------------------------------------------- */

/* Calibrate the RC oscillator to 8.25 MHz. The core clock of 16.5 MHz is
 * derived from the 66 MHz peripheral clock by dividing. Our timing reference
 * is the Start Of Frame signal (a single SE0 bit) available immediately after
 * a USB RESET. We first do a binary search for the OSCCAL value and then
 * optimize this value with a neighboorhod search.
 * This algorithm may also be used to calibrate the RC oscillator directly to
 * 12 MHz (no PLL involved, can therefore be used on almost ALL AVRs), but this
 * is wide outside the spec for the OSCCAL value and the required precision for
 * the 12 MHz clock! Use the RC oscillator calibrated to 12 MHz for
 * experimental purposes only!
 */
static void calibrateOscillator(void)
{
uchar       step = 128;
uchar       trialValue = 0, optimumValue;
int         x, optimumDev, targetValue = (unsigned)(1499 * (double)F_CPU / 10.5e6 + 0.5);

	/* do a binary search: */
	do{
		OSCCAL = trialValue + step;
		x = usbMeasureFrameLength();    /* proportional to current real frequency */
		if(x < targetValue)             /* frequency still too low */
			trialValue += step;
		step >>= 1;
	}while(step > 0);
	/* We have a precision of +/- 1 for optimum OSCCAL here */
	/* now do a neighborhood search for optimum value */
	optimumValue = trialValue;
	optimumDev = x; /* this is certainly far away from optimum */
	for(OSCCAL = trialValue - 1; OSCCAL <= trialValue + 1; OSCCAL++){
		x = usbMeasureFrameLength() - targetValue;
		if(x < 0)
			x = -x;
		if(x < optimumDev){
			optimumDev = x;
			optimumValue = OSCCAL;
		}
	}
	OSCCAL = optimumValue;
}

void hadUsbReset(void)
{
	/* Disable interrupts during oscillator calibration since
	 * usbMeasureFrameLength() counts CPU cycles.
	 */
	cli();
	calibrateOscillator();
	sei();
	//eeprom_write_byte(0, OSCCAL);   /* store the calibrated value in EEPROM */
}

ISR(ADC_vect)
{
	sei();
	
	// Change prescaler of Timer1 depending on the value of the ADC.
	// This is done by shifting the ADC value four times to the right.
	// (Bit 0-3) are the prescaler bits in the TCCR1 register. The other
	// timer features on bit 4-7 are not used, so the bits contain already
	// a zero. But do not stop the timer (ADC values =< 0x0F will stop it).
	if (ADCH > 0x0F)
		TCCR1 = (ADCH >> 4);
}

int __attribute__((noreturn)) main(void)
{
uchar   i;

	wdt_enable(WDTO_1S);
	/* If you don't use the watchdog, replace the call above with a wdt_disable().
	 * On newer devices, the status of the watchdog (on/off, period) is PRESERVED
	 * OVER RESET!
	 */
	/* RESET status: all port bits are inputs without pull-up.
	 * That's the way we need D+ and D-. Therefore we don't need any
	 * additional hardware initialization.
	 */
	odDebugInit();
	DBG1(0x00, 0, 0);       /* debug output: main starts */
	usbInit();
	usbDeviceDisconnect();  /* enforce re-enumeration, do this while interrupts are disabled! */
	i = 0;
	while(--i){             /* fake USB disconnect for > 250 ms */
		wdt_reset();
		_delay_ms(1);
	}
	usbDeviceConnect();

	// Activate the pull-up on the switch pin
	PORTB |= _BV(SWITCH_PIN);
	
	// setup Timer1: select default prescaler CK/16384 
	TCCR1 = (1 << CS13) | (1 << CS12) | (1 << CS11) | (1 << CS10);
	
	// setup ADC: Vcc as reference voltage, ADC3 as input, left adjusted
	// enable and start ADC, enable auto triggering (Free Running) and ADC interrupt, use prescaler of 128.
	ADMUX = _BV(MUX0) | _BV(MUX1) | _BV(ADLAR);
	ADCSRA = _BV(ADEN) | _BV(ADSC) | _BV(ADATE) | _BV(ADIE) | _BV(ADPS2) | _BV(ADPS1) | _BV(ADPS0);

	sei();
	DBG1(0x01, 0, 0);       /* debug output: main loop starts */
	for(;;){                /* main event loop */
		DBG1(0x02, 0, 0);   /* debug output: main loop iterates */
		wdt_reset();
		usbPoll();
		if(usbInterruptIsReady()){
			/* called after every poll of the interrupt endpoint */
			
			uint8_t switchState = PINB & _BV(SWITCH_PIN);
			
			// overflow of Timer1 happened, switch pin is low and no mouse buttons are active
			if ((TIFR & _BV(TOV1)) && !switchState && reportBuffer.buttonMask == 0)
			{
				//PINB |= _BV(PB1);
				// clear the TOV1 flag
				// http://www.atmel.com/webdoc/AVRLibcReferenceManual/FAQ_1faq_intbits.html
				TIFR = _BV(TOV1);
				
				// activate left mouse button
				reportBuffer.buttonMask = 1;
			}
			else if (switchState)
			{
				// Reset timer when switch is not active. When the user activates the switch
				// the timespan until the first "mouse click" is thereby constant (one timer overflow)
				TCNT1 = 0;
			}
			
			DBG1(0x03, 0, 0);   /* debug output: interrupt report prepared */
			usbSetInterrupt((void *)&reportBuffer, sizeof(reportBuffer));
			
			// reset button state
			if (reportBuffer.buttonMask != 0)
				reportBuffer.buttonMask = 0;
		}
	}
}

/* ------------------------------------------------------------------------- */
