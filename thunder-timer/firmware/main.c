#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#define BTN					PB2
#define BEEP_DELAY			100
#define BEEP_LENGTH			250
#define BEEP_MAG_DELAY		1000
#define OC_BEEP_FIVE		3
#define OC_BEEP_ONE			6
#define OC_BEEP_TENTHS		9

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

void beep(uint16_t count, uint8_t ocValue, uint16_t length, uint16_t delayBetween)
{
	for(int a = 0; a < count; a++)
	{
		uint16_t tempLength = length;
		uint16_t tempDelay = delayBetween;
		
		// Start Timer 0: toggle OC0A, CTC mode, no prescaler (/1), Output Compare at ocValue
		TCCR0A = _BV(COM0A0) | _BV(WGM01);
		TCCR0B = _BV(CS01);
		OCR0A = ocValue;
		
		while(tempLength--)
			_delay_ms(1);
		
		TCCR0B = 0;
		
		// don't delay after the last beep
		if (a != count - 1)
			while(tempDelay--)
				_delay_ms(1);
	}
}

void calculateDistance(uint16_t* fiveKilometers, uint8_t* kilometers, uint8_t* tenthKilometers)
{
	// Calculate the distance from the measured interval. Speed of sound at 25 °C is about 346 m/s,
	// so the divisor is 1000/346, which is 2.89. We'll use 3 here for simplicity. Result is x 10^2 m.
	uint16_t distance = deziSeconds / 3;
	
	// Divide by 50 to get the number of five kilometers.
	*fiveKilometers = distance / 50;
	
	// Remove the number of five kilometers
	distance -= *fiveKilometers * 50;
	
	// Divide by 10 to get the number of kilometers,
	*kilometers = distance / 10;
	
	// Remove the number of kilometers
	distance -= *kilometers * 10;
	
	// In distance is now the number of tenths of a kilometer.
	*tenthKilometers = distance;
}

void setup(void)
{
	// Set clock prescaler to run at 31.25 kHz (prescaler of 256)
	CLKPR = _BV(CLKPCE);
	CLKPR = _BV(CLKPS3);
	
	// Setup I/O ports: PB4 == Debug; PB0 == PWM for piezo (OC0A)
	DDRB |= _BV(PB4) | _BV(PB0);
	// Enable pull-up on button pin
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
			
			deziSeconds = 150;
			
			uint16_t fiveKilometers = 0;
			uint8_t kilometers = 0;
			uint8_t tenthKilometers = 0;
			
			calculateDistance(&fiveKilometers, &kilometers, &tenthKilometers);
			
			if (fiveKilometers > 0)
			{
				beep(fiveKilometers, OC_BEEP_FIVE, BEEP_LENGTH, BEEP_DELAY);
				_delay_ms(BEEP_MAG_DELAY);
			}
			
			if (kilometers > 0)
			{
				beep(kilometers, OC_BEEP_ONE, BEEP_LENGTH, BEEP_DELAY);
				_delay_ms(BEEP_MAG_DELAY);
			}
			
			if (tenthKilometers > 0)
				beep(tenthKilometers, OC_BEEP_TENTHS, BEEP_LENGTH, BEEP_DELAY);
		}
	}
	
	return 0;
}
