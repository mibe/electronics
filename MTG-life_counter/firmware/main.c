#include <avr/io.h>
#include <util/delay.h>

volatile uint16_t counter = 0;

const uint8_t digits[10] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};

void setup(void)
{
	DDRB |= _BV(PB0);
	DDRD = 0xFF;
	
	PORTB |= _BV(PB1) | _BV(PB2);
	
	counter = 0;
}

int main(void)
{
	setup();
	
	while(1)
	{
		if (!(PINB & _BV(PB1)))
		{
			counter--;
			_delay_ms(100);
		}
		else if (!(PINB & _BV(PB2)))
		{
			counter++;
			_delay_ms(100);
		}

		if (counter % 2 == 0)
			PORTB |= _BV(PB0);
		else
			PORTB &= ~_BV(PB0);
		
		uint8_t temp = counter;
		if (temp > 9)
			temp = 9;
		else if (temp < 0)
			temp = 0;
		
		PORTD = ~digits[temp];
	}
	
	return 0;
}
