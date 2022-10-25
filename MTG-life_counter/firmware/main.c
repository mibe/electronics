#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define MAX 99
#define MIN 0

volatile uint16_t counter = 0;
volatile uint8_t dummy = 0;

const uint8_t digits[10] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};
const uint8_t mask = _BV(PB1) | _BV(PB2);

ISR(TIMER0_OVF_vect)
{
	if ((PORTB & _BV(PB3)) == _BV(PB3))
	{
		PORTB &= ~_BV(PB3);
		PORTB |= _BV(PB4);
	}
	else
	{
		PORTB |= _BV(PB3);
		PORTB &= ~_BV(PB4);
	}
}

void setup(void)
{
	// Set both anode drivers of the digits as outputs. Port D is also an output.
	DDRB |= _BV(PB0) | _BV(PB3) | _BV(PB4);
	DDRD = 0xFF;
	
	// Enable pull-ups on PB1 & PB2 for the push buttons.
	PORTB |= _BV(PB1) | _BV(PB2);
	
	// Timer0 used for multiplexing both 7-segment displays
	// Prescaler of 64, overflow interrupt enabled
	TCCR0 = _BV(CS12);
	TIMSK |= _BV(TOIE0);
	
	sei();
}

void debounce(uint8_t bit)
{
	_delay_ms(100);
	while((PINB & _BV(bit)) == 0) {}
	_delay_ms(50);
}

int main(void)
{
	setup();
	
	while(1)
	{
		uint8_t input = PINB & mask;
		
		if (input != mask)
		{
			if ((input & _BV(PB1)) == 0)
			{
				if (counter < MAX)
					counter++;
				
				debounce(PB1);
			}
			else if ((input & _BV(PB2)) == 0)
			{
				if (counter > MIN)
					counter--;
				
				debounce(PB2);
			}
		}
	}
	
	return 0;
}
