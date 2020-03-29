#include <avr/io.h>
#include <avr/interrupt.h>

volatile uint8_t overflows = 0;
volatile uint8_t state = 0;
volatile uint8_t pin = 0;

void updateState(void)
{
	if (state == 0)
		DDRB |= _BV(pin);
	else if (state >= 1 && state <= 4)
		DDRB &= ~_BV(pin);
	else if (state == 5)
		DDRB |= _BV(pin);
	else if (state >= 6 && state <= 7)
		DDRB &= ~_BV(pin);
	else if (state == 8)
		DDRB |= _BV(pin);
	else if (state >= 9 && state <= 12)
		DDRB &= ~_BV(pin);
	else if (state == 13)
		DDRB |= _BV(pin);
	else if (state >= 14 && state <= 17)
		DDRB &= ~_BV(pin);
	else if (state == 18)
		DDRB |= _BV(pin);
	else if (state >= 19 && state <= 20)
		DDRB &= ~_BV(pin);
	else if (state == 21)
		DDRB |= _BV(pin);
	else if (state >= 22 && state <= 25)
		DDRB &= ~_BV(pin);
	
	if (state == 25)
		state = 0;
	else
		state++;
	
	if (state == 8)
		pin = PB1;
	else if (state == 21)
		pin = PB0;
}

ISR(TIMER0_OVF_vect)
{
	overflows++;
	
	// Update the state machine every 8th overflow
	if (overflows % 8 == 0)
		updateState();
}

/*
 * Setup the system.
 */
void setup(void)
{
	// Set clock prescaler to run at 31.25 kHz (prescaler of 256)
	CLKPR = _BV(CLKPCE);
	CLKPR = _BV(CLKPS2) | _BV(CLKPS1) | _BV(CLKPS0);
	
	// Timer0 Fast PWM to 0xFF; clock == clkIO (no prescaling); clear OC0A on compare match
	TCCR0A = _BV(COM0A1) | _BV(COM0B1) | _BV(WGM01) | _BV(WGM00);
	TCCR0B = _BV(CS00);
	OCR0A = 100;
	OCR0B = 100;
	
	// PB0 is the first pin to blink
	pin = PB0;
	
	// Enable Timer0 overflow interrupt...
	TIMSK |= _BV(TOIE0);
	
	// ...& enable interrupts
	sei();
}

int main(void)
{
	setup();
	
	// Endless loop: Everything is done in the TOV0 interrupt.
	while(1) {};
	
	return 0;
}
