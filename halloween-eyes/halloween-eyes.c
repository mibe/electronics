#include <avr/io.h>
#include <stdlib.h>
#include <util/delay.h>

#include "adc.h"
#include "pwm.h"

#define LED (1 << PB0)

#define BUTTON (1 << PB3)
#define POTI (1 << PB4)

#ifndef F_CPU
#error F_CPU not defined!
#endif

void setup_brightness(void);
void blink();
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

	srand(adc_read());

	setup_brightness();

	while(1)
	{
		blink();
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

void blink()
{
// 	pwm_off();
// 	_delay_ms(5000);
// 	pwm_on();
// 	_delay_ms(100);
// 	pwm_off();
// 	_delay_ms(200);
// 	pwm_on();
// 	_delay_ms(100);

// 	pwm_on();
// 	_delay_ms(5000);
// 	pwm_off();
// 	_delay_ms(150);
// 	pwm_on();
// 	_delay_ms(400);
// 	pwm_off();
// 	_delay_ms(150);
// 	pwm_on();

	pwm_on();
	uint8_t rando = rand();
	wait(rando);
	pwm_off();
	_delay_ms(150);
}

void wait(uint8_t wait)
{
	// 2^8 == max. 20 seconds
	while(wait-- > 0)
		_delay_ms(78);
}

