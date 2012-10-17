#include <avr/io.h>
#include <stdlib.h>
#include <util/delay.h>

#define LED (1 << PB0)

#define BUTTON (1 << PB3)
#define POTI (1 << PB4)

#ifndef F_CPU
#error F_CPU not defined!
#endif

void setup_adc(void);
uint8_t read_adc(void);

int main(void)
{
	// Pins als Ausgänge
	DDRB = LED;

	// Interner-Pull-Up aktiv
	PINB |= BUTTON;

	setup_adc();
	read_adc();

	while(1)
	{
	}
}

void setup_adc(void)
{
	// Vcc as Vref

	// ADC Left Adjust Result
	ADMUX |= (1 << ADLAR);
	// ADC2 (PB4)
	ADMUX |= (1 << MUX1);

	// ADC Prescaler (1 MHz / 8 == 125 kHz)
	ADCSRA |= (1 << ADPS1) | (1 << ADPS0);
	
	// ADC2D (PB4) Digital Input Disable
	DIDR0 |= (1 << ADC2D);

	// ADC Enable
	ADCSRA |= (1 << ADEN);
}

uint8_t read_adc(void)
{
	// ADC Start Conversation
	ADCSRA |= (1 << ADSC);

	// Wait until ADSC bit goes 0 again
	while (ADCSRA & (1<<ADSC));

	// ADC High data byte
	return ADCH;
}
