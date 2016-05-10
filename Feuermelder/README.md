# Feuermelder

"Feuermelder" (German for "fire call point") is a USB "keyboard" with only one "key": As soon as you press it, the key combination "[Ctrl+Alt+Delete](https://en.wikipedia.org/wiki/Ctrl-Alt-Delete)" or "Ctrl+Shift+Escape" will be sent to the USB host. This will, at least on Windows, open the [Task Manager](https://en.wikipedia.org/wiki/Windows_Task_Manager). Hence the name, "Feuermelder".

The switch controls which combination is sent.

## Requirements

The software is based on [Objective Development's V-USB](https://www.obdev.at/products/vusb/index.html), more precisely the "[HIDKeys](https://www.obdev.at/products/vusb/hidkeys-de.html)" example. The hardware consists of the following parts:

### BOM

* 1x Atmel ATtiny[4,8]5
* 2x 1N400[1-7] rectifier diodes
* 1x push button, normally open
* 1x SPST switch
* 2x 68 Ω resistors
* 1x 1.5 kΩ resistor
* 1x USB connector or cable

### Production
The code was

* compiled with avr-gcc version 4.3.3 from WinAVR-20100110.
* burned with AVRDUDE (version 5.10) using an USBtinyISP programmer.
* tested with an ATtiny45 revision G with 1N4001 diodes.

The keyboard was successfully tested with the following operating systems:

* Windows 7 Professional x64

### Drivers
No operating system drivers are required since this device works as a HID keyboard. All modern operating systems already include drivers for Human Interface Devices.

## Firmware build instructions
1. Change the `Makefile` according to your needs (`DEVICE`, `AVRDUDE`, `FUSE_L` and `FUSE_H`). Be really careful with the fuses, because you could brick your AVR.
2. Issue a `make clean` command.
3. Issue a `make program` command.

## Design & building remarks
* If you don't have an SPST switch, you can use any other and just leave the remaining pole(s) unconnected. The internal pull-up of the AVR is active, so the potential on the input pin is always tied to Vcc or GND.
* To save some pins and tidy up the BOM, the internal RC oscillator of the ATtiny is used and "calibrated".
* This comes with a disadvantage: The code uses 2064 bytes of the flash memory, so it won't fit into an ATtiny25. If you use an external oscillator instead, the code should be portable to be small enough to fit into an ATtiny25.
* To avoid using an voltage regulator two rectifier diodes are tied in series to reduce the supply voltage to about 3.6 volts. This means the end of the diode series act as the current source for the whole project. This approach is described as [Solution A](http://vusb.wikidot.com/hardware) in the V-USB wiki.

## License
GNU GPL v2 (see LICENSE.txt and firmware/usbdrv/License.txt)