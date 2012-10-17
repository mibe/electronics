#include <avr/io.h>

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
