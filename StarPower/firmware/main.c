#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

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
#define TIMER_ON_TIME 3					// Number of seconds the LEDs are on in Timer mode
#define TIMER_OFF_TIME 5				// Number of seconds the LEDs are off in Timer mode

#ifdef DEBUG
volatile uint8_t led;
#endif
volatile uint8_t state;
volatile uint16_t seconds;
volatile uint8_t blink_counter;

// We save ourselfs a header file here...
void enable_dcdc();
void disable_dcdc();
void update();
void setup();
void debounce(uint8_t bit);
void switch_state();

ISR(TIMER1_OVF_vect)
{
	#ifdef DEBUG
	led = !led;
	
	if (led)
		PORTB |= _BV(DEBUG_LED);
	else
		PORTB &= ~_BV(DEBUG_LED);
	#endif
	
	// Increment seconds counter, for both timer states. If the counter
	// exceeds the limit, change the timer state (on / off).
	// In blink mode toggle the enable state of the LED driver.
	if (state == STATE_TIMER_ON)
	{
		seconds++;
		
		if (seconds >= TIMER_ON_TIME)
		{
			seconds = 0;
			state = STATE_TIMER_OFF;
			update();
		}
	}
	else if (state == STATE_TIMER_OFF)
	{
		seconds++;

		if (seconds >= TIMER_OFF_TIME)
		{
			seconds = 0;
			state = STATE_TIMER_ON;
			update();
		}
	}
	else if (state == STATE_TIMER_BLINK)
	{
		if (blink_counter % 2 == 0)
			enable_dcdc();
		else
			disable_dcdc();
		
		blink_counter++;
		update();
	}
}

ISR(PCINT0_vect)
{
	// Empty ISR. The interrupt is just used to wake the CPU from sleep.
}

void enable_dcdc()
{
	PORTB |= _BV(ENABLE);
}

void disable_dcdc()
{
	PORTB &= ~_BV(ENABLE);
}

void debounce(uint8_t bit)
{
	// Poor man's debouncer. ;-)
	_delay_ms(100);
	while((PINB & _BV(bit)) == 0) {}
	_delay_ms(50);
}

void update()
{
	// Handle the timer states first to save CPU cycles (and thus power).
	if (state == STATE_TIMER_OFF)
	{
		disable_dcdc();
		return;
	}
	
	if (state == STATE_TIMER_ON)
	{
		enable_dcdc();
		return;
	}

	if (state == STATE_OFF || state == STATE_ON)
	{
		// System is permanently on or off: stop & reset timer
		TCCR1 = 0;
		TCNT1 = 0;
		blink_counter = 0;
		
		if (state == STATE_ON)
			enable_dcdc();
		else
			disable_dcdc();
		
		return;
	}
	
	if (state == STATE_TIMER_BLINK && TCCR1 == 0)
	{
		TCCR1 = _BV(CS12) | _BV(CS11);
		return;
	}
	
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

void setup(void)
{
	set_sleep_mode(SLEEP_MODE_IDLE);
	
	PCMSK |= _BV(BTN);
	GIMSK |= _BV(PCIE);
	
	PRR |= _BV(PRTIM0) | _BV(PRUSI) | _BV(PRADC);
	ACSR |= _BV(ACD);
	
	DIDR0 |= _BV(AIN1D);
	
	DDRB |= _BV(ENABLE);
	#ifdef DEBUG
	DDRB |= _BV(DEBUG_LED);
	#endif
	PORTB |= _BV(BTN) | _BV(PB5) | _BV(PB4) | _BV(PB3);
	
	TIMSK = _BV(TOIE1);
	
	sei();
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
		
		sleep_mode();
	}
	
	return 0;
}
