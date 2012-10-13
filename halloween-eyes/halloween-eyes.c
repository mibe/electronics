#include <avr/io.h>
#include <stdlib.h>
#include <util/delay.h>

#define RED (1 << PB2)
#define GREEN (1 << PB1)
#define BLUE (1 << PB0)

#define BUTTON (1 << PB3)

void set_led(uint8_t red, uint8_t green, uint8_t blue);

int main(void)
{
	// Pins als Ausgänge
	DDRB = RED | GREEN | BLUE;

	// Interner-Pull-Up aktiv
	PINB |= BUTTON;

	uint8_t asdf = 0;

	while(1)
	{
		if (!(PINB & BUTTON))
		{
			switch(asdf)
			{
				case 0: set_led(0, 0, 0);
					break;
				case 1: set_led(1, 0, 0);
					break;
				case 2: set_led(0, 1, 0);
					break;
				case 3: set_led(0, 0, 1);
					break;
			}

			asdf++;

			if (asdf == 4)
				asdf = 0;

			_delay_ms(200);
		}
	}
}

void set_led(uint8_t red, uint8_t green, uint8_t blue)
{
	uint8_t out = PORTB;

	if (red == 1)
		out |= RED;
	else
		out &= ~RED;

	if (green == 1)
		out |= GREEN;
	else
		out &= ~GREEN;

	if (blue == 1)
		out |= BLUE;
	else
		out &= ~BLUE;

	PORTB = out;
}
