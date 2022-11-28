#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#define DEBUG

// Pin mapping
#define BTN PB0
#define DEBUG_LED PB1
#define ENABLE PB2

#define STATE_OFF 0						// LEDs are permanently off
#define STATE_ON 1						// LEDs are permanently on
#define STATE_TIMER_BLINK 2				// Timer is active, LEDs a blinking
#define STATE_TIMER_ON 3				// Timer is active, LEDs are on
#define STATE_TIMER_OFF 4				// Timer is active, LEDs are off

// Timer configuration
#define BLINKS 25						// Number of blinks. Number * 8 + 1, e.g. 4 blinks --> 4 * 8 + 1
#define TIMER_ON_TIME 75				// Number of ticks the LEDs are on in Timer mode. Ticks = Number of seconds / 8
#define TIMER_OFF_TIME 75				// Number of ticks the LEDs are off in Timer mode. Ticks = Number of seconds / 8

#ifdef DEBUG
volatile uint8_t led;
#endif
volatile uint8_t state;
volatile uint16_t ticks;
volatile uint8_t blink_counter;

// We save ourselves a header file here...
void enable_dcdc();
void disable_dcdc();
void update();
void setup();
void debounce(uint8_t bit);
void switch_state();

ISR(TIMER0_OVF_vect)
{
	#ifdef DEBUG
	led = !led;
	
	if (led)
		PORTB |= _BV(DEBUG_LED);
	else
		PORTB &= ~_BV(DEBUG_LED);
	#endif
	
	// Increment ticks counter, for both timer states. If the counter
	// exceeds the limit, change the timer state (on / off).
	// In blink mode toggle the enable state of the LED driver.
	if (state == STATE_TIMER_ON)
	{
		ticks++;
		
		if (ticks >= TIMER_ON_TIME)
		{
			ticks = 0;
			state = STATE_TIMER_OFF;
			update();
		}
	}
	else if (state == STATE_TIMER_OFF)
	{
		ticks++;

		if (ticks >= TIMER_OFF_TIME)
		{
			ticks = 0;
			state = STATE_TIMER_ON;
			update();
		}
	}
	else if (state == STATE_TIMER_BLINK)
	{
		// The prescaler of Timer0 does not fit perfectly to the desired blink frequency,
		// so fix that by using an appropriate modulo division.
		if (blink_counter % 8 == 0)
			enable_dcdc();
		else if (blink_counter % 8 == 4)
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
	
	// Disable Timer0 when it is not needed.
	if (state == STATE_OFF || state == STATE_ON)
	{
		// System is permanently on or off: stop & reset timer
		TCCR0B = 0;
		TCNT0 = 0;
		blink_counter = 0;
		
		if (state == STATE_ON)
			enable_dcdc();
		else
			disable_dcdc();
		
		return;
	}
	
	// In blink mode and unset Timer0, configure Timer0
	if (state == STATE_TIMER_BLINK && TCCR0B == 0)
	{
		// Prescaler of 8.
		TCCR0B = _BV(CS01);
		return;
	}
	
	// After enough blinks change to Timer mode.
	if (state == STATE_TIMER_BLINK && blink_counter >= BLINKS)
		state = STATE_TIMER_ON;
	
	// Setup Timer0 in Timer mode.
	if (state == STATE_TIMER_ON || state == STATE_TIMER_OFF)
	{
		// Prescaler of 1024
		TCCR0B = _BV(CS02) | _BV(CS00);
	}
}

void switch_state()
{
	// Switch states from OFF --> TIMER_BLINK; TIMER_* --> ON; ON--> OFF;
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
	// Use Idle mode when sleeping
	set_sleep_mode(SLEEP_MODE_IDLE);
	
	// Activate Pin Change interrupt on the button pin.
	PCMSK |= _BV(BTN);
	GIMSK |= _BV(PCIE);
	
	// Disable Timer1, USI, the ADC and the analog comparator.
	PRR |= _BV(PRTIM1) | _BV(PRUSI) | _BV(PRADC);
	ACSR |= _BV(ACD);
	
	// Disable the digital input buffer
	DIDR0 |= _BV(ADC0D) | _BV(ADC2D) | _BV(ADC3D) | _BV(ADC1D) | _BV(AIN1D) | _BV(AIN0D);
	
	DDRB |= _BV(ENABLE);
	#ifdef DEBUG
	DDRB |= _BV(DEBUG_LED);
	#endif
	
	// Enable pull-up on the button pin.
	PORTB |= _BV(BTN);
	
	// Enable Timer0 overflow interrupt.
	TIMSK = _BV(TOIE0);
	
	sei();
}

int main(void)
{
	// Setup hardware and activate state machine.
	setup();
	update();
	
	while(1)
	{
		// Switch the state when the button is pressed.
		if ((PINB & _BV(BTN)) == 0)
		{
			debounce(BTN);
			switch_state();
		}
		
		sleep_mode();
	}
	
	return 0;
}
