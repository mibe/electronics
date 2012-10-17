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
void setup_blinkrate(void);

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

	setup_brightness();
	setup_blinkrate();
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

void setup_blinkrate(void)
{
	
}
