#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#define BTN		PB2

volatile uint16_t deziSeconds = 0;

ISR(TIMER1_OVF_vect)
{
	TCNT1 = 61;
	deziSeconds++;

	PINB |= _BV(PB4);
}

void start_timer(void)
{
	deziSeconds = 0;
	TCNT1 = 61;
	TCCR1 = _BV(CS12) | _BV(CS10);
	TIMSK = _BV(TOIE1);
}

void stop_timer(void)
{
	TCCR1 = 0;
}

void playSound(void)
{
	PORTB &= ~_BV(PB4);
	_delay_ms(1000);
				
			while(deziSeconds > 0)
			{
				PORTB |= _BV(PB4);
				_delay_ms(300);
				PORTB &= ~_BV(PB4);
				_delay_ms(300);
				deziSeconds--;
			}
}

void setup(void)
{
	// Set clock prescaler to run at 31.25 kHz (prescaler of 256)
	CLKPR = _BV(CLKPCE);
	CLKPR = _BV(CLKPS3);
	
	// Set IO ports
	DDRB |= _BV(PB4);
	// Enable pull-up on PB2
	PORTB |= _BV(BTN);
	
	sei();
}

int main(void)
{
	setup();
	
	// Wait until the button is not pressed
	while(!(PINB & _BV(BTN)))
	{ }
	
	while(1)
	{
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
			
			playSound();
		}
	}
	
	return 0;
}
