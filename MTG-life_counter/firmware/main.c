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

ISR(TIMER1_OVF_vect)
{
	PORTB |= _BV(PB0);
}

ISR(TIMER1_COMP_vect)
{
	PORTB &= ~_BV(PB0);
}

ISR(ADC_vect)
{
	uint16_t adc = ADC;
	
	if (adc > 0 && adc < 1000)
	{
		// Shift the 10 bit wide ADC value 6 bits to the left for the OCR1 register (16 bit Timer1)
		OCR1 = adc << 6;
	}
	else if (adc >= 1000)
		OCR1 = 0xFFFF;
}

void setup(void)
{
	// Set PB3 & PB4 as outputs
	DDRB |= _BV(PB0) | _BV(PB3) | _BV(PB4);
	DDRD = 0xFF;
	
	// Enable pull-ups on PB1 & PB2 for the push buttons.
	PORTB |= _BV(PB1) | _BV(PB2);
	
	counter = 0;
	
	// Timer0 used for multiplexing both 7-segment-displays
	// No prescaler, overflow interrupt enabled
	TCCR0 = _BV(CS00);
	TIMSK |= _BV(TOIE0);
	
	// Timer1 used for brightness control
	// No prescaler, overflow interrupt enabled
	TCCR1B = _BV(CS10);
	TIMSK |= _BV(TOIE1) | _BV(OCIE1);
	
	// ADC used for brightness control
	// ADC3 (PC3) as input, enable & start conversion, free running, interrupt enabled, Prescaler of 128
	ADMUX = _BV(MUX1) | _BV(MUX0);
	ADCSR = _BV(ADEN) | _BV(ADSC) | _BV(ADFR) | _BV(ADIE) | _BV(ADPS2) | _BV(ADPS1) | _BV(ADPS0);
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

		PORTD = ~digits[counter];
	}
	
	return 0;
}
