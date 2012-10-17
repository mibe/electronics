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

int main(void)
{
	// Pins as output
	DDRB = LED;

	// Interner-Pull-Up aktiv
	PINB |= BUTTON;

	setup_adc();
	read_adc();

	while(1)
	{
	}
}

