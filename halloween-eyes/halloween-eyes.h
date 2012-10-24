#ifndef _HALLOWEENEYES_H_
#define _HALLOWEENEYES_H_

// Portpin definitions
#define LED (1 << PB0)

#define BUTTON (1 << PB3)
#define POTI (1 << PB4)

#ifndef F_CPU
#error F_CPU not defined!
#endif

void setup_brightness(void);
void blink_mode_switched(void);
void blink_static(bool);
void blink_random(bool);
void wait(uint8_t wait);

#endif // _HALLOWEENEYES_H_
