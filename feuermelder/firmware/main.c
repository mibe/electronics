/* Name: main.c
 * Project: HID-Test
 * Author: Christian Starkjohann
 * Creation Date: 2006-02-02
 * Tabsize: 4
 * Copyright: (c) 2006 by OBJECTIVE DEVELOPMENT Software GmbH
 * License: GNU GPL v2 (see License.txt) or proprietary (CommercialLicense.txt)
 * This Revision: $Id$
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/wdt.h>

#include "usbdrv.h"
#include "oddebug.h"

/* ----------------------- hardware I/O abstraction ------------------------ */

/* Pin, onto which the switch is wired to.
 * The pins for the USB D- and D+ line cannot be used here, of course.
 */
#define SWITCH_PIN PB4

#define BUTTON_PIN PB3

#define HOTKEY_NONE    0
#define HOTKEY_CSE     1
#define HOTKEY_CAD     2

#define STATE_STANDBY          0
#define STATE_KEY_PRESSED      1
#define STATE_WAIT_FOR_RELEASE 2
#define STATE_WAITING          3

static uchar getKeyPressed(void)
{
	if (!(PINB & _BV(BUTTON_PIN)))
	{
		if (!(PINB & _BV(SWITCH_PIN)))
			return HOTKEY_CSE;
		else
			return HOTKEY_CAD;
	}
	else
		return HOTKEY_NONE;
}

/* ------------------------------------------------------------------------- */
/* ----------------------------- USB interface ----------------------------- */
/* ------------------------------------------------------------------------- */

static uchar    reportBuffer[2];    /* buffer for HID reports */
static uchar    idleRate;           /* in 4 ms units */

const PROGMEM char usbHidReportDescriptor[35] = {   /* USB report descriptor */
	0x05, 0x01,                    // USAGE_PAGE (Generic Desktop)
	0x09, 0x06,                    // USAGE (Keyboard)
	0xa1, 0x01,                    // COLLECTION (Application)
	0x05, 0x07,                    //   USAGE_PAGE (Keyboard)
	0x19, 0xe0,                    //   USAGE_MINIMUM (Keyboard LeftControl)
	0x29, 0xe7,                    //   USAGE_MAXIMUM (Keyboard Right GUI)
	0x15, 0x00,                    //   LOGICAL_MINIMUM (0)
	0x25, 0x01,                    //   LOGICAL_MAXIMUM (1)
	0x75, 0x01,                    //   REPORT_SIZE (1)
	0x95, 0x08,                    //   REPORT_COUNT (8)
	0x81, 0x02,                    //   INPUT (Data,Var,Abs)
	0x95, 0x01,                    //   REPORT_COUNT (1)
	0x75, 0x08,                    //   REPORT_SIZE (8)
	0x25, 0x65,                    //   LOGICAL_MAXIMUM (101)
	0x19, 0x00,                    //   USAGE_MINIMUM (Reserved (no event indicated))
	0x29, 0x65,                    //   USAGE_MAXIMUM (Keyboard Application)
	0x81, 0x00,                    //   INPUT (Data,Ary,Abs)
	0xc0                           // END_COLLECTION
};
/* We use a simplifed keyboard report descriptor which does not support the
 * boot protocol. We don't allow setting status LEDs and we only allow one
 * simultaneous key press (except modifiers). We can therefore use short
 * 2 byte input reports.
 * The report descriptor has been created with usb.org's "HID Descriptor Tool"
 * which can be downloaded from http://www.usb.org/developers/hidpage/.
 * Redundant entries (such as LOGICAL_MINIMUM and USAGE_PAGE) have been omitted
 * for the second INPUT item.
 */

/* Keyboard usage values, see usb.org's HID-usage-tables document, chapter
 * 10 Keyboard/Keypad Page for more codes.
 */
#define MOD_CONTROL_LEFT    (1<<0)
#define MOD_SHIFT_LEFT      (1<<1)
#define MOD_ALT_LEFT        (1<<2)

#define KEY_ESCAPE  41
#define KEY_DELETE  76

static void buildReport(uchar key)
{
	if (key == HOTKEY_CSE)
	{
		reportBuffer[0] = MOD_CONTROL_LEFT | MOD_SHIFT_LEFT;
		reportBuffer[1] = KEY_ESCAPE;
	}
	else if (key == HOTKEY_CAD)
	{
		reportBuffer[0] = MOD_CONTROL_LEFT | MOD_ALT_LEFT;
		reportBuffer[1] = KEY_DELETE;
	}
	else
	{
		reportBuffer[0] = 0;
		reportBuffer[1] = 0;
	}
}

uchar	usbFunctionSetup(uchar data[8])
{
	usbRequest_t    *rq = (void *)data;

	if((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS){    /* class request type */
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
	return 0;
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

int main(void)
{
	uchar   key = HOTKEY_NONE;
	uchar   state = STATE_STANDBY;
	uchar   idleCounter = 0;

	wdt_enable(WDTO_2S);
	
	// Activate the pull-up on the switch & button pin
	PORTB |= _BV(SWITCH_PIN);
	PORTB |= _BV(BUTTON_PIN);

	odDebugInit();
	usbInit();
	sei();
	DBG1(0x00, 0, 0);
	for(;;){	/* main event loop */
		wdt_reset();
		usbPoll();

		if (usbInterruptIsReady())
		{
			// State standby - waiting for someone to push the button
			if (state == STATE_STANDBY)
			{
				key = getKeyPressed();

				// When the button is pressed, build the HID report for the
				// corresponding key and set state to key pressed
				if (key != HOTKEY_NONE)
				{
					buildReport(key);
					state = STATE_KEY_PRESSED;
				}
			}
			// State key pressed - release the key
			else if (state == STATE_KEY_PRESSED)
			{
				// Release the keys by sending a zero report.
				buildReport(HOTKEY_NONE);
				state = STATE_WAIT_FOR_RELEASE;
			}
			// State wait for release - wait until the button is released
			else if (state == STATE_WAIT_FOR_RELEASE)
			{
				if (getKeyPressed() == HOTKEY_NONE)
				{
					state = STATE_WAITING;
					idleCounter = 10;
				}
			}
			// State waiting - poor man's debouncing :-|
			else if (state == STATE_WAITING)
			{
				if (idleCounter == 0)
					state = STATE_STANDBY;
				else
					idleCounter--;
			}

			usbSetInterrupt(reportBuffer, sizeof(reportBuffer));
		}
	}
	return 0;
}

/* ------------------------------------------------------------------------- */
