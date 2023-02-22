#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#define MAX 99
#define MIN 0
#define START 8

#define INC_BTN PB1
#define DEC_BTN PB2
#define DIGIT1 PB3
#define DIGIT2 PB4

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
 * Life counter
 */
uint8_t counter = START;

volatile uint8_t animationCounter = 0;
volatile uint8_t digit1 = 0;
volatile uint8_t digit2 = 0;

const uint8_t digits[10] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111}; // "0123456789"
const uint8_t dead[7] = {0, 94, 121, 119, 94, 0, 0}; // " dEAd  "
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
	
	if ((isDead & 0x01) == 0x01)
		animationCounter++;
}

void display_counter()
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

void update_display()
{
	// Is the player dead? Check first bit = general dead state
	if ((isDead & 0x01) == 0x01)
	{
		// Player is dead, do the ticker
		// Wait one animation cycle to display the zero. Bit two used here as state.
		if ((isDead & 0x02) == 0x00)
		{
			display_counter();
			isDead = 0x03;
		}
		else
		{
			// Get index from the last three bits (mask & shift)
			uint8_t index = (isDead & 0xE0) >> 5;
			digit1 = ~dead[index++];
			digit2 = ~dead[index];
			
			// Reset index if necessary
			if (index >= 6)
				index = 0;
			
			// Save index
			isDead = (index << 5) | 0x03;
		}
	}
	else
		display_counter();
}

void setup(void)
{
	// Set both anode drivers of the digits as outputs. Port D is also an output.
	DDRB |= _BV(PB0) | _BV(DIGIT1) | _BV(DIGIT2);
	DDRD = 0xFF;
	
	// Enable pull-ups on both pins for the push buttons. Also set all Port D pins high (disable display).
	PORTB |= _BV(INC_BTN) | _BV(DEC_BTN);
	PORTD = 0xFF;
	
	display_counter();
	
	// Timer0 used for multiplexing both 7-segment displays at ~ 488 Hz.
	// Prescaler of 64 (125 kHz), overflow interrupt enabled
	TCCR0 = _BV(CS02);
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
		uint8_t input = PINB & btnMask;
		
		if (input != btnMask)
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
			
			// If the counter reaches MIN, start the ticker animation.
			// If the counter is (once again) bigger than MIN, disable the animation.
			if (counter == MIN)
				isDead = 1;
			else
			{
				animationCounter = 0;
				isDead = 0;
			}
			
			update_display();
		}
		
		
		// The counter at 0x7F results in a nice ticker animation (~ 1 Hz)
		if (animationCounter == 0x7F)
		{
			update_display();
			animationCounter = 0;
		}
	}
	
	return 0;
}
