#include <avr/io.h>

static uint8_t last_value;

void pwm_setup(void)
{
	// Waveform Generation Mode Fast PWM
	TCCR0A = (1<<WGM01) | (1<<WGM00);

	// Compare Output Mode for Fast PWM, inverting mode
	TCCR0A |= (1<<COM0A1) | (1<<COM0A0);

	// Clock Select: clkIO / 64
	TCCR0B = (1<<CS01) | (1<<CS00);
}

void pwm_set(uint8_t value)
{
	// save last value
	last_value = value;
	OCR0A = last_value;
}

void pwm_on(void)
{
	OCR0A = last_value;
}

void pwm_off(void)
{
	if (TCCR0A & COM0A0)
		OCR0A = 255;
	else
		OCR0A = 0;
}
