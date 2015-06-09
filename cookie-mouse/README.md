# cookie-mouse

"cookie-mouse" is an automatic clicking mouse for the game [Cookie Clicker](http://orteil.dashnet.org/cookieclicker/), realised in hardware. Yes, you read right, this USB mouse just performs mouse clicks. Specifically, clicks of the left mouse button. The whole day if you want. You say this is cheating? I say you are right! This mouse clicks even faster than your finger! But you can slow down the clicking speed to give you a more quiet conscience.

## Requirements

The software is based on [Objective Development's V-USB](https://www.obdev.at/products/vusb/index.html), more precisely the "[hid-mouse](https://github.com/obdev/v-usb/tree/master/examples/hid-mouse)" example. The hardware consists of the following parts:

### BOM

* 1x Atmel ATtiny[4,8]5
* 2x 1N400[1-7] rectifier diodes
* 1x [250-100k] Ω linear potentiometer
* 1x push button, normally open
* 1x SPST switch
* 2x 68 Ω resistors
* 1x 1.5 kΩ resistor
* 1x USB connector or cable

### Production
The code was

* compiled with avr-gcc version 4.3.3 from WinAVR-20100110
* burned with AVRDUDE (version 5.10) using an USBtinyISP programmer 
* tested with an ATtiny45 revision G with 1N4001 diodes and a 10 kΩ potentiometer.

The mouse was successfully tested with the following operating systems:

* Windows 7 Professional x64

### Drivers
No operating system drivers are required since this device works as a HID mouse. All modern operating systems already include drivers for Human Interface Devices.

## Firmware build instructions
1. Change the `Makefile` according to your needs (`DEVICE`, `AVRDUDE`, `FUSE_L` and `FUSE_H`). Be really careful with the fuses, because you could brick your AVR.
2. Issue a `make clean` command.
3. Issue a `make program` command.

## Design & building remarks
* If you don't have an SPST switch, you can use any other and just leave the remaining pole(s) unconnected. The internal pull-up of the AVR is active, so the potential on the input pin is always tied to Vcc or GND.
* To save some pins and tidy up the BOM, the internal RC oscillator of the ATtiny is used and "calibrated".
* This comes with a disadvantage: The code uses 2122 bytes of the flash memory, so it won't fit into an ATtiny25. If you use an external oscillator instead, the code should be portable to be small enough to fit into an ATtiny25.
* To avoid using an voltage regulator two rectifier diodes are tied in series to reduce the supply voltage to about 3.6 volts. This means the end of the diode series act as the current source for the whole project. This approach is described as [Solution A](http://vusb.wikidot.com/hardware) in the V-USB wiki.
* The USB power requirement is set to 20 mA. This means you should not use a potentiometer smaller than 250 Ω, because otherwise the device would draw more power than declared (assuming the microcontroller is already consuming 5 mA of the 20 mA limit). Besides that, Atmel's ADC is optimized for signals with an impedance of about 10 kΩ (see datasheet).

## License
GNU GPL v2 (see LICENSE.txt and firmware/usbdrv/License.txt)