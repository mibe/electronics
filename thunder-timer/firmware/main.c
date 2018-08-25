/*
 * Thunder timer: Calculate thunderstorm distance by timing the interval between two button presses and output the result acoustically.
 *
 * Copyright (C) 2018 Michael Bemmerl
 *
 * SPDX-License-Identifier: MIT
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/power.h>
#include <avr/sleep.h>
#include <util/delay.h>

// Pin to which the pushbutton is connected.
#define BTN					PB2
// Delay between beeps, in ms.
#define BEEP_DELAY			100
// Length of each beep, in ms.
#define BEEP_LENGTH			250
// Delay between the different magnitudes (5, 1, 0.1 km), in ms.
#define BEEP_MAG_DELAY		1000
// Output Compare Register values for the three magnitudes. They determine the buzzer frequency.
// The values are dependent on the I/O clock (CPU) frequency. Running with 31,25 kHz, these values
// correspond to about 3900 Hz, 2232 Hz, 1562 Hz. 
#define OC_BEEP_FIVE		3
#define OC_BEEP_ONE			6
#define OC_BEEP_TENTHS		9

volatile uint16_t deziSeconds = 0;

/*
 * External interrupt. Used for waking up from sleep mode.
 */
ISR(INT0_vect)
{
	// Disable INT0 again. The interrupt is used for waking up from sleep mode only.
	GIMSK &= ~(_BV(INT0));
}

/*
 * Timer 1 Overflow Interrupt. Increments the deziSeconds counter.
 */
ISR(TIMER1_OVF_vect)
{
	// Reset Timer 1 to the starting value.
	TCNT1 = 61;
	deziSeconds++;
}

/*
 * Starts the timer for measuring the interval.
 */
void start_timer(void)
{
	deziSeconds = 0;
	// The Timer1 value is set so that the overflow of the timer has a frequency of about 0.1 Hz.
	// The correct value for exactly 0.1 Hz would be 60.6875
	TCNT1 = 61;
	// Start Timer 1 with a prescaler of 16; enable Timer1 Overflow Interrupt.
	TCCR1 = _BV(CS12) | _BV(CS10);
	TIMSK = _BV(TOIE1);
}

/*
 * Stops the timer for measuring the interval.
 */
void stop_timer(void)
{
	TCCR1 = 0;
}

/*
 * Outputs a square wave on pin BTN (see defines), which drives a buzzer. This is using Timer 0.
 *
 * count: Number of beeps.
 * ocValue: Value for the Output Compare Register. This determines the frequency of the wave.
 * length: Length of a beep in ms.
 * delayBetween: Delay between the beeps in ms.
 */
void beep(uint16_t count, uint8_t ocValue, uint16_t length, uint16_t delayBetween)
{
	for(int a = 0; a < count; a++)
	{
		uint16_t tempLength = length;
		uint16_t tempDelay = delayBetween;
		
		// Start Timer 0: toggle OC0A, CTC mode, no prescaler (/1), Output Compare at ocValue
		TCCR0A = _BV(COM0A0) | _BV(WGM01);
		TCCR0B = _BV(CS01);
		OCR0A = ocValue;
		
		while(tempLength--)
			_delay_ms(1);
		
		// Stop timer and disconnect the Output Compare Unit to pull transistor base to low (PB0 @ PORTB is still 0)
		TCCR0B = 0;
		TCCR0A = 0;
		
		// don't delay after the last beep
		if (a != count - 1)
			while(tempDelay--)
				_delay_ms(1);
	}
}

/*
 * Calculate the distance by using the measured interval.
 *
 * fiveKilometers: Number of five kilometers.
 * kilometers: Number of one kilometer.
 * tenthKilometers: Number of thenths of a kilometer.
 */
void calculateDistance(uint16_t* fiveKilometers, uint8_t* kilometers, uint8_t* tenthKilometers)
{
	// Calculate the distance from the measured interval. Speed of sound at 25 °C is about 346 m/s,
	// so the divisor is 1000/346, which is 2.89. We'll use 3 here for simplicity. Result is x 10^2 m.
	uint16_t distance = deziSeconds / 3;
	
	// Divide by 50 to get the number of five kilometers.
	*fiveKilometers = distance / 50;
	
	// Remove the number of five kilometers
	distance -= *fiveKilometers * 50;
	
	// Divide by 10 to get the number of kilometers,
	*kilometers = distance / 10;
	
	// Remove the number of kilometers
	distance -= *kilometers * 10;
	
	// In distance is now the number of tenths of a kilometer.
	*tenthKilometers = distance;
}

/*
 * Setup the system.
 */
void setup(void)
{
	// Set clock prescaler to run at 31.25 kHz (prescaler of 256)
	CLKPR = _BV(CLKPCE);
	CLKPR = _BV(CLKPS3);
	
	// Setup I/O ports: PB4 == Debug; PB0 == PWM for piezo (OC0A)
	DDRB |= _BV(PB4) | _BV(PB0);
	// Enable pull-up on button and unused pins
	PORTB |= _BV(BTN) | _BV(PB1) | _BV(PB3);
	
	// Disable unused modules to save more battery power
	power_usi_disable();
	power_adc_disable();
	
	// Enable interrupts
	sei();
}

int main(void)
{
	setup();
	
	// Play the three beep tones at the beginning to memorize them.
	beep(1, OC_BEEP_FIVE, BEEP_LENGTH, 0);
	beep(1, OC_BEEP_ONE, BEEP_LENGTH, 0);
	beep(1, OC_BEEP_TENTHS, BEEP_LENGTH, 0);
	
	// Wait until the button is not pressed
	while(!(PINB & _BV(BTN)))
	{ }
	
	while(1)
	{
		// Enable INT0 interrupt at low level (ISC00 & ISC01 @ MCUCR = 0) to wake up after
		// we have entered sleep mode.
		GIMSK |= _BV(INT0);
		set_sleep_mode(SLEEP_MODE_PWR_DOWN);
		sleep_mode();

		// Start the logic as soon as the button pin goes low
		if (!(PINB & _BV(BTN)))
		{
			start_timer();
			
			// Do nothing while the button is pressed...
			while(!(PINB & _BV(BTN)))
			{ }
			
			// Wait until 0.2 seconds have passed since button release (poor man's debouncing)
			_delay_ms(200);
			
			// Wait until the button is pressed again
			while(PINB & _BV(BTN))
			{ }
			
			stop_timer();
			
			// Wait until the button is not pressed
			while(!(PINB & _BV(BTN)))
			{ }
			
			uint16_t fiveKilometers = 0;
			uint8_t kilometers = 0;
			uint8_t tenthKilometers = 0;
			
			calculateDistance(&fiveKilometers, &kilometers, &tenthKilometers);
			
			if (fiveKilometers > 0)
			{
				beep(fiveKilometers, OC_BEEP_FIVE, BEEP_LENGTH, BEEP_DELAY);
				_delay_ms(BEEP_MAG_DELAY);
			}
			
			if (kilometers > 0)
			{
				beep(kilometers, OC_BEEP_ONE, BEEP_LENGTH, BEEP_DELAY);
				_delay_ms(BEEP_MAG_DELAY);
			}
			
			if (tenthKilometers > 0)
				beep(tenthKilometers, OC_BEEP_TENTHS, BEEP_LENGTH, BEEP_DELAY);
		}
	}
	
	return 0;
}
