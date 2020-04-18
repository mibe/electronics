#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <avr/power.h>

volatile uint8_t overflows = 0;
volatile uint8_t state = 0;
volatile uint8_t pin = 0;

/*
 * Update the state machine to the next state.
 */
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

/*
 * Timer0 overflow interrupt.
 */
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
	// Set clock prescaler to run at 62.5 kHz (prescaler of 128)
	clock_prescale_set(clock_div_128);
	
	// Disable stuff which is not needed: Analog Comparator, Timer1, USI, ADC, input buffer on AIN0/1
	ACSR |= _BV(ACD);
	PRR |= _BV(PRTIM1) | _BV(PRUSI) | _BV(PRADC);
	DIDR0 |= _BV(AIN0D) | _BV(AIN0D);
	
	// Enable pull-ups on unsused inputs (see chapter 10.2.6 in the datasheet)
	PORTB |= _BV(PB2) | _BV(PB3) | _BV(PB4);
	
	// Timer0 Fast PWM to 0xFF; clock == clkIO (no prescaling); clear OC0x on compare match; both channels
	TCCR0A = _BV(COM0A1) | _BV(COM0B1) | _BV(WGM01) | _BV(WGM00);
	TCCR0B = _BV(CS00);
	
	// Set the PWM duty cycle. This controls the brightness of the LEDs.
	OCR0A = 100;
	OCR0B = 100;
	
	// PB0 is the first pin to blink
	pin = PB0;
	
	// Enable Timer0 overflow interrupt...
	TIMSK |= _BV(TOIE0);
	
	// ...& enable interrupts
	sei();
}

/*
 * Main entry point.
 */
int main(void)
{
	setup();
	
	// Endless loop: Everything is done in the TOV0 interrupt.
	while(1)
	{
		// Enter idle sleep mode. An occurring interrupt will wake the CPU.
		// Enter idle sleep mode again after processing of the interrupt.
		set_sleep_mode(SLEEP_MODE_IDLE);
		sleep_mode();
	}
	
	return 0;
}
