DEVICE  = attiny85
F_CPU   = 31250
AVRDUDE = avrdude -c usbtiny -P usb -p $(DEVICE) -B200

OBJECTS = main.o

COMPILE = avr-gcc -Wall -Os -DF_CPU=$(F_CPU) -I. -mmcu=$(DEVICE) -std=c99

help:
	@echo "make hex		compile main.hex"
	@echo "make flash		flash the firmware"
	@echo "make clean		delete objects and hex file"

hex: main.hex

flash: main.hex
	$(AVRDUDE) -U flash:w:main.hex:i

clean:
	rm -f main.hex main.lst main.obj main.cof main.list main.map main.elf *.o

.c.o:
	$(COMPILE) -c $< -o $@

main.elf: $(OBJECTS)
	$(COMPILE) -o main.elf $(OBJECTS)

main.hex: main.elf
	rm -f main.hex
	avr-objcopy -j .text -j .data -O ihex main.elf main.hex
	avr-size main.hex
