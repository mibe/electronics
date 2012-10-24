#include <avr/io.h>
#include <stdlib.h>
#include <util/delay.h>
#include <stdbool.h>

#include "adc.h"
#include "pwm.h"

#define LED (1 << PB0)

#define BUTTON (1 << PB3)
#define POTI (1 << PB4)

#ifndef F_CPU
#error F_CPU not defined!
#endif

void setup_brightness(void);
void blink_mode_switched(void);
void blink_static(bool);
void blink_random(bool);
void wait(uint8_t wait);

int main(void)
{
	// LED pin as output
	DDRB = LED;

	// Activate pull-up for button
	PINB |= BUTTON;

	// Initialize ADC & Timer
	adc_setup();
	adc_read();
	pwm_setup();

	// Seed the PRNG with value from pot
	srand(adc_read());

	setup_brightness();

	uint8_t mode = 0;

	while(1)
	{
		if (!(PINB & BUTTON))
		{
			mode++;
			blink_mode_switched();
		}

 		if (mode == 2)
 			mode = 0;

		if (mode == 0)
			blink_static(false);
		else
			blink_random(false);
	}
}

void setup_brightness(void)
{
	// Loop as long as button is not pressed
	while(PINB & BUTTON)
	{
		// Get value from pot
		uint8_t value = adc_read();
		pwm_set(value);
	}

	// Poor man's debouncing
	_delay_ms(250);

	// wait until button is not pressed anymore
	while(!(PINB & BUTTON));

	_delay_ms(250);
}

void blink_static(bool defaultOn)
{
	defaultOn ? pwm_on() : pwm_off();

	_delay_ms(5000);

	defaultOn ? pwm_off() : pwm_on();

	_delay_ms(150);

	defaultOn ? pwm_on() : pwm_off();

	_delay_ms(400);

	defaultOn ? pwm_off() : pwm_on();

	_delay_ms(150);

	defaultOn ? pwm_on() : pwm_off();
}

void blink_random(bool defaultOn)
{
	defaultOn ? pwm_on() : pwm_off();

	uint8_t rando = rand();
	wait(rando);

	defaultOn ? pwm_off() : pwm_on();

	_delay_ms(150);
}

void blink_mode_switched(void)
{
	uint8_t times = 5;

	while(times-- > 0)
	{
		pwm_off();
		_delay_ms(200);
		pwm_on();
		_delay_ms(200);
	}
	
	_delay_ms(1000);
}

void wait(uint8_t wait)
{
	// 2^8 == max. 20 seconds
	while(wait-- > 0)
		_delay_ms(78);
}

