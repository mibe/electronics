#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>

/**
 * Counter values:
 */
#define MAX			99			// Maximum counter value
#define MIN			0			// Minimum counter value
#define START		20			// Starting counter value
#define START_THG	30			// Starting counter value for Two-Headed Giant
#define INJURED		10			// "Breathing" animation counter value

/**
 * Pin mappings:
 */
#define INC_BTN		PB1			// Button for incrementing the counter value
#define DEC_BTN		PB2			// Button for decrementing the counter value
#define DIGIT1		PB3			// Anode driver for first digit
#define DIGIT2		PB4			// Anode driver for second digit

/**
 * State variable of the Dead ticker-style animation
 *
 * Content: 0xCCCX XXBA  (LSB 0)
 *   CCC = animation index
 *     B = zero counter was displayed
 *     A = overall dead state
 */
uint8_t isDead = 0;

/**
 * State variable for the breathing animation. Set when the counter is not greather than INJURED.
 */
uint8_t isInjured = 0;

/**
 * Life counter, set to START
 */
uint8_t counter = START;

/**
 * Variables containing the bits for the 7-segment display for the digits.
 */
uint8_t digit1 = 0;
uint8_t digit2 = 0;

/**
 * State variables for the ticker and the breathing animation.
 */
volatile uint8_t origPORTD = 0;
volatile uint8_t breathDirection = 0;
volatile uint8_t breathStep = 0;
volatile uint8_t breathIndex = 0;
volatile uint8_t timer1Compare = 0;
volatile uint8_t timer1Counter = 0;
volatile uint8_t tickerCounter = 0;

const uint8_t digits[10] PROGMEM = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111}; // "0123456789"
const uint8_t dead[7] PROGMEM = {0, 94, 121, 119, 94, 0, 0}; // " dEAd  "
const uint8_t breath[21] PROGMEM = {0, 0, 0, 1, 1, 2, 3, 4, 6, 8, 10, 12, 15, 18, 21, 22, 23, 24, 25, 25, 25}; // breath curve: inhale; backwards exhale
const uint8_t btnMask = _BV(INC_BTN) | _BV(DEC_BTN);

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
	
	// Backup PORTD. This is used in the TIMER1_COMP ISR.
	origPORTD = PORTD;
	
	if (isDead)
		tickerCounter++;
	
	if (isInjured)
	{
		// Next "breath" index every 10th step
		if (breathStep == 10)
		{
			timer1Compare = pgm_read_byte(&(breath[breathIndex]));
			
			// Increment or decrement the index depending on the direction and swap it when needed.
			if (breathDirection == 0)
			{
				if (breathIndex == 20)
					breathDirection = 1;
				else
					breathIndex++;
			}
			else
			{
				if (breathIndex == 0)
					breathDirection = 0;
				else
					breathIndex--;
			}
			
			// Reset step
			breathStep = 0;
		}
		else
			breathStep++;
	}
}

ISR(TIMER1_COMP_vect)
{
	// Enable all segments when the counter is smaller than timer1Compare.
	// Otherwise use original PORTD value. This is basically a software PWM.
	if (timer1Counter < timer1Compare)
		PORTD = 0x0;
	else
		PORTD = origPORTD;
	
	timer1Counter++;
}

void calc_digits()
{
	uint8_t temp = counter;
	uint8_t tenths = 0;
	
	while(temp >= 10)
	{
		tenths++;
		temp -= 10;
	}
	
	if (tenths > 0)
		digit1 = ~pgm_read_byte(&(digits[tenths]));
	else
		digit1 = 0xFF;
	
	digit2 = ~pgm_read_byte(&(digits[temp]));
}

void update_display()
{
	// Is the player dead?
	if (isDead)
	{
		// Player is dead, do the ticker
		// Wait one animation cycle to display the zero. Bit two used here as state.
		if ((isDead & 0x02) == 0x00)
		{
			calc_digits();
			isDead = 0x03;
		}
		else
		{
			// Get index from the three MSB bits (mask & shift)
			uint8_t index = (isDead & 0xE0) >> 5;
			digit1 = ~pgm_read_byte(&(dead[index++]));
			digit2 = ~pgm_read_byte(&(dead[index]));
			
			// Reset index if necessary
			if (index >= 6)
				index = 0;
			
			// Save index in state variable
			isDead = (index << 5) | 0x03;
		}
	}
	else
		calc_digits();
}

void start_breathing()
{
	isInjured = 1;
	
	// Timer1 runs at clock speed.
	TCCR1B |= _BV(CS10);
}

void stop_breathing()
{
	// Reset state variables
	isInjured = 0;
	breathDirection = 0;
	breathStep = 0;
	breathIndex = 0;
	timer1Compare = 0;
	timer1Counter = 0;
	
	// Stop Timer1
	TCCR1B &= ~_BV(CS10);
}

void setup(void)
{
	// Set both anode drivers of the digits as outputs. Port D is also an output.
	DDRB |= _BV(DIGIT1) | _BV(DIGIT2);
	DDRD = 0xFF;
	
	// Enable pull-ups on both pins for the push buttons and the unused pins on Port B.
	// Also enable pull-ups on Port C and set all Port D pins high (disable display).
	PORTB |= _BV(INC_BTN) | _BV(DEC_BTN) | _BV(PB0) | _BV(PB5);
	PORTC = 0xFF;
	PORTD = 0xFF;
	
	calc_digits();
	
	// Disable Analog Comparator
	ACSR |= _BV(ACD);
	
	// Timer0 is used for multiplexing both 7-segment displays at ~ 488 Hz.
	// Prescaler of 64 (125 kHz)
	TCCR0 = _BV(CS02);
	
	// Timer1 is used for a "breathing" animation (but not started here).
	// Set output compare to 0xFF and to clear Timer1 at a match.
	OCR1 = 0xFF;
	TCCR1B = _BV(CTC1);
	
	// Enable interrupt handlers: Timer0 overflow & Timer1 compare match
	TIMSK |= _BV(TOIE0) | _BV(OCIE1);
	
	sei();
}

uint8_t debounce(uint8_t bit, uint8_t cancelBit)
{
	uint8_t canceled = 0;
	
	// Poor man's debouncing: Just wait until the button is not pressed anymore
	_delay_ms(100);
	while((PINB & _BV(bit)) == 0)
	{
		// Abort the loop when the cancel pin is low (button is pressed). Also check for a valid pin bit value.
		if (cancelBit <= 0x80 && (PINB & _BV(cancelBit)) == 0)
		{
			canceled = 1;
			break;
		}
	}
	
	if (!canceled)
		_delay_ms(50);
	
	return canceled;
}

int main(void)
{
	setup();
	
	while(1)
	{
		// Get button state
		uint8_t input = PINB & btnMask;
		
		if (input != btnMask)
		{
			if ((input & _BV(INC_BTN)) == 0)
			{
				if (counter < MAX)
					counter++;
				
				uint8_t both = debounce(INC_BTN, DEC_BTN);
				
				// If both buttons were pressed, reset the counter.
				if (both)
				{
					counter = START;
					debounce(INC_BTN, 0xFF);
					debounce(DEC_BTN, 0xFF);
				}
			}
			else if ((input & _BV(DEC_BTN)) == 0)
			{
				if (counter > MIN)
					counter--;
				
				uint8_t both = debounce(DEC_BTN, INC_BTN);
				
				// If both buttons were pressed, reset the counter to the Two-Headed Giant starting value.
				if (both)
				{
					counter = START_THG;
					debounce(INC_BTN, 0xFF);
					debounce(DEC_BTN, 0xFF);
				}
			}
			
			// If the counter reaches MIN, start the ticker animation.
			// If the counter is (once again) greater than MIN, disable the animation.
			if (counter == MIN)
			{
				isDead = 1;
				stop_breathing();
			}
			else
			{
				tickerCounter = 0;
				isDead = 0;
			}
			
			// If the counter is greater than MIN but less or equal INJURED start the breathing animation.
			// If not, stop it.
			if (counter > MIN && counter <= INJURED)
				start_breathing();
			else
				stop_breathing();
			
			update_display();
		}
		
		// The counter at 0x7F results in a nice ticker animation (~ 1 Hz)
		if (tickerCounter == 0x7F)
		{
			update_display();
			tickerCounter = 0;
		}
	}
	
	return 0;
}
