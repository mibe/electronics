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


/* ------------------------------------------------------------------------- */

#define NUM_KEYS    17

/* Pin, onto which the switch is wired to.
 * The pins for the USB D- and D+ line cannot be used here, of course.
 */
#define SWITCH_PIN PB4


/* The following function returns an index for the first key pressed. It
 * returns 0 if no key is pressed.
 */
static uchar    keyPressed(void)
{
// uchar   i, mask, x;

    // x = PINB;
    // mask = 1;
    // for(i=0;i<6;i++){
        // if((x & mask) == 0)
            // return i + 1;
        // mask <<= 1;
    // }
    // x = PINC;
    // mask = 1;
    // for(i=0;i<6;i++){
        // if((x & mask) == 0)
            // return i + 7;
        // mask <<= 1;
    // }
    // x = PIND;
    // mask = 1 << 3;
    // for(i=0;i<5;i++){
        // if((x & mask) == 0)
            // return i + 13;
        // mask <<= 1;
    // }
    return 0;
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
#define MOD_GUI_LEFT        (1<<3)
#define MOD_CONTROL_RIGHT   (1<<4)
#define MOD_SHIFT_RIGHT     (1<<5)
#define MOD_ALT_RIGHT       (1<<6)
#define MOD_GUI_RIGHT       (1<<7)

#define KEY_A       4
#define KEY_B       5
#define KEY_C       6
#define KEY_D       7
#define KEY_E       8
#define KEY_F       9
#define KEY_G       10
#define KEY_H       11
#define KEY_I       12
#define KEY_J       13
#define KEY_K       14
#define KEY_L       15
#define KEY_M       16
#define KEY_N       17
#define KEY_O       18
#define KEY_P       19
#define KEY_Q       20
#define KEY_R       21
#define KEY_S       22
#define KEY_T       23
#define KEY_U       24
#define KEY_V       25
#define KEY_W       26
#define KEY_X       27
#define KEY_Y       28
#define KEY_Z       29
#define KEY_1       30
#define KEY_2       31
#define KEY_3       32
#define KEY_4       33
#define KEY_5       34
#define KEY_6       35
#define KEY_7       36
#define KEY_8       37
#define KEY_9       38
#define KEY_0       39

#define KEY_F1      58
#define KEY_F2      59
#define KEY_F3      60
#define KEY_F4      61
#define KEY_F5      62
#define KEY_F6      63
#define KEY_F7      64
#define KEY_F8      65
#define KEY_F9      66
#define KEY_F10     67
#define KEY_F11     68
#define KEY_F12     69

static const uchar  keyReport[NUM_KEYS + 1][2] PROGMEM = {
/* none */  {0, 0},                     /* no key pressed */
/*  1 */    {MOD_SHIFT_LEFT, KEY_A},
/*  2 */    {MOD_SHIFT_LEFT, KEY_B},
/*  3 */    {MOD_SHIFT_LEFT, KEY_C},
/*  4 */    {MOD_SHIFT_LEFT, KEY_D},
/*  5 */    {MOD_SHIFT_LEFT, KEY_E},
/*  6 */    {MOD_SHIFT_LEFT, KEY_F},
/*  7 */    {MOD_SHIFT_LEFT, KEY_G},
/*  8 */    {MOD_SHIFT_LEFT, KEY_H},
/*  9 */    {MOD_SHIFT_LEFT, KEY_I},
/* 10 */    {MOD_SHIFT_LEFT, KEY_J},
/* 11 */    {MOD_SHIFT_LEFT, KEY_K},
/* 12 */    {MOD_SHIFT_LEFT, KEY_L},
/* 13 */    {MOD_SHIFT_LEFT, KEY_M},
/* 14 */    {MOD_SHIFT_LEFT, KEY_N},
/* 15 */    {MOD_SHIFT_LEFT, KEY_O},
/* 16 */    {MOD_SHIFT_LEFT, KEY_P},
/* 17 */    {MOD_SHIFT_LEFT, KEY_Q},
};

static void buildReport(uchar key)
{
/* This (not so elegant) cast saves us 10 bytes of program memory */
    *(int *)reportBuffer = pgm_read_word(keyReport[key]);
}

uchar	usbFunctionSetup(uchar data[8])
{
usbRequest_t    *rq = (void *)data;

    usbMsgPtr = reportBuffer;
    if((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS){    /* class request type */
        if(rq->bRequest == USBRQ_HID_GET_REPORT){  /* wValue: ReportType (highbyte), ReportID (lowbyte) */
            /* we only have one report type, so don't look at wValue */
            buildReport(keyPressed());
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

int	main(void)
{
uchar   key, lastKey = 0, keyDidChange = 0;
uchar   idleCounter = 0;

	wdt_enable(WDTO_2S);
    
	// Activate the pull-up on the switch pin
	PORTB |= _BV(SWITCH_PIN);

	odDebugInit();
	usbInit();
	sei();
    DBG1(0x00, 0, 0);
	for(;;){	/* main event loop */
		wdt_reset();
		usbPoll();
        key = keyPressed();
        if(lastKey != key){
            lastKey = key;
            keyDidChange = 1;
        }
        if(TIFR & (1<<TOV0)){   /* 22 ms timer */
            TIFR = 1<<TOV0;
            if(idleRate != 0){
                if(idleCounter > 4){
                    idleCounter -= 5;   /* 22 ms in units of 4 ms */
                }else{
                    idleCounter = idleRate;
                    keyDidChange = 1;
                }
            }
        }
        if(keyDidChange && usbInterruptIsReady()){
            keyDidChange = 0;
            /* use last key and not current key status in order to avoid lost
               changes in key status. */
            buildReport(lastKey);
            usbSetInterrupt(reportBuffer, sizeof(reportBuffer));
        }
	}
	return 0;
}

/* ------------------------------------------------------------------------- */
