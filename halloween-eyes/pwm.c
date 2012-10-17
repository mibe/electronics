#include <avr/io.h>

void setup_pwm(void)
{
	// PWM
	TCCR0A = (1<<WGM01) | (1<<WGM00) | (1<<COM0A1) | (1<<COM0A0);
	TCCR0B = (1<<CS01) | (1<<CS00);
}
