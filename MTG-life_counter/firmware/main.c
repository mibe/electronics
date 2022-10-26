#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define MAX 99
#define MIN 0

#define INC_BTN PB1
#define DEC_BTN PB2
#define DIGIT1 PB3
#define DIGIT2 PB4

uint8_t counter = 20;
volatile uint8_t digit1 = 0;
volatile uint8_t digit2 = 0;

const uint8_t digits[10] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};
const uint8_t mask = _BV(PB1) | _BV(PB2);

ISR(TIMER0_OVF_vect)
{
	// Multiplex both 7-segment displays:
	// Switch active digit, depending on which one is active.
	if ((PORTB & _BV(DIGIT1)) == _BV(DIGIT1))
	{
		// disable second, enable first
		PORTB &= ~_BV(DIGIT1);
		PORTB |= _BV(DIGIT2);
		
		PORTD = digit1;
	}
	else
	{
		// disable first, enable second
		PORTB |= _BV(DIGIT1);
		PORTB &= ~_BV(DIGIT2);
		
		PORTD = digit2;
	}
}

void setup(void)
{
	// Set both anode drivers of the digits as outputs. Port D is also an output.
	DDRB |= _BV(PB0) | _BV(DIGIT1) | _BV(DIGIT2);
	DDRD = 0xFF;
	
	// Enable pull-ups on both pins for the push buttons. Also set all Port D pins high (disable display).
	PORTB |= _BV(INC_BTN) | _BV(DEC_BTN);
	PORTD = 0xFF;
	
	update_display();
	
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

void update_display()
{
	uint8_t temp = counter;
	uint8_t tenths = 0;
	
	while(temp >= 10)
	{
		tenths++;
		temp -= 10;
	}
	
	if (tenths > 0)
		digit1 = ~digits[tenths];
	else
		digit1 = 0xFF;
	
	digit2 = ~digits[temp];
}

int main(void)
{
	setup();
	
	while(1)
	{
		uint8_t input = PINB & mask;
		
		if (input != mask)
		{
			if ((input & _BV(INC_BTN)) == 0)
			{
				if (counter < MAX)
					counter++;
				
				debounce(INC_BTN);
			}
			else if ((input & _BV(DEC_BTN)) == 0)
			{
				if (counter > MIN)
					counter--;
				
				debounce(DEC_BTN);
			}
			
			update_display();
		}
	}
	
	return 0;
}
