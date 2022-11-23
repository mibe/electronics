#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define DEBUG

#define BTN PB0
#define DEBUG_LED PB1
#define ENABLE PB2

#define STATE_OFF 0						// LEDs are permanently off
#define STATE_ON 1						// LEDs are permanently on
#define STATE_TIMER_BLINK 2				// Timer is active, LEDs a blinking
#define STATE_TIMER_ON 3				// Timer is active, LEDs are on
#define STATE_TIMER_OFF 4				// Timer is active, LEDs are off

#define BLINKS 7						// Number of blinks. Number * 2 + 1, e.g. 4 blinks --> 4 * 2 + 1
#define TIMER_ON_TIME 3
#define TIMER_OFF_TIME 5

#ifdef DEBUG
volatile uint8_t led;
#endif
volatile uint8_t state;
volatile uint16_t seconds;
volatile uint8_t blink_counter;

ISR(TIMER1_OVF_vect)
{
	#ifdef DEBUG
	led = !led;
	
	if (led)
		PORTB |= _BV(DEBUG_LED);
	else
		PORTB &= ~_BV(DEBUG_LED);
	#endif
	
	if (state == STATE_TIMER_BLINK)
	{
		if (blink_counter % 2 == 0)
			enable_dcdc();
		else
			disable_dcdc();
		
		blink_counter++;
		update();
	}
	else if (state == STATE_TIMER_ON)
	{
		seconds++;
		
		if (seconds >= TIMER_ON_TIME)
		{
			seconds = 0;
			state = STATE_TIMER_OFF;
			disable_dcdc();
		}
	}
	else if (state == STATE_TIMER_OFF)
	{
		seconds++;

		if (seconds >= TIMER_OFF_TIME)
		{
			seconds = 0;
			state = STATE_TIMER_ON;
			enable_dcdc();
		}
	}
}

void enable_dcdc()
{
	PORTB |= _BV(ENABLE);
}

void disable_dcdc()
{
	PORTB &= ~_BV(ENABLE);
}

void setup(void)
{
	DDRB |= _BV(ENABLE);
	#ifdef DEBUG
	DDRB |= _BV(DEBUG_LED);
	#endif
	PORTB |= _BV(BTN);
	
	TIMSK = _BV(TOIE1);
	
	sei();
}

void debounce(uint8_t bit)
{
	_delay_ms(100);
	while((PINB & _BV(bit)) == 0) {}
	_delay_ms(50);
}

void update()
{
	if (state == STATE_OFF || state == STATE_ON)
	{
		// System is permanently on or off: stop & reset timer
		TCCR1 = 0;
		TCNT1 = 0;
		blink_counter = 0;
	}
	
	if (state == STATE_OFF || state == STATE_TIMER_OFF)
		disable_dcdc();
	
	if (state == STATE_ON || state == STATE_TIMER_ON)
		enable_dcdc();
	
	if (state == STATE_TIMER_BLINK && TCCR1 == 0)
		TCCR1 = _BV(CS12) | _BV(CS11);
	
	if (state == STATE_TIMER_BLINK && blink_counter >= BLINKS)
		state = STATE_TIMER_ON;
	
	if (state == STATE_TIMER_ON || state == STATE_TIMER_OFF)
	{
		TCCR1 = _BV(CS13);
	}
}

void switch_state()
{
	// Switch states from OFF --> TTIMER_BLINK; TIMER_* --> ON; ON--> OFF;
	if (state == STATE_OFF)
		state = STATE_TIMER_BLINK;
	else if (state == STATE_TIMER_BLINK || state == STATE_TIMER_ON || state == STATE_TIMER_OFF)
		state = STATE_ON;
	else if (state == STATE_ON)
		state = STATE_OFF;
	
	update();
}

int main(void)
{
	setup();
	update();
	
	while(1)
	{
		if ((PINB & _BV(BTN)) == 0)
		{
			debounce(BTN);
			switch_state();
		}
	}
	
	return 0;
}
