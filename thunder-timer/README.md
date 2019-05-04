# Thunder timer
Calculate thunderstorm distance by timing the interval between two button presses and output the result acoustically.

Three beep frequencies are used for that:

- ~1500 Hz: Number of tenth kilometers
- ~2200 Hz: Number of kilometers
- ~3900 Hz: Number of five kilometers

# BOM
## PCB
See the ```PCB/thunder-timer.csv``` file. Short summary:

- 1x Atmel ATtiny[2,4,8]5
- 1x buzzer with a nominal frequency of 2 kHz
- 1x push button, normally open
- 1x capacitor
- 1x (small signal) diode
- 3x resistors
- 1x right-angeled pin header
- 1x (off-the-shelf) NPN transistor

## Other stuff
- Strapubox 6090 as enclosure
- battery holder for 2x AAA's

# Design & building notes
* Strictly speaking, R2 is not neccessary, since transistors are current-controlled devies. However, to drain the possible reverse leakage current of the CB junction, R2 was added.
* The internal pull-up on PB2 was activated to provide a logic level to the input pin.
* BZ1 is an inductive load so a free-wheeling diode D1 was added.
* Q1 is an off-the-shelf transistor. It just so happend that I had 2PC945 lying around.

# License
(C) 2018 Michael Bemmerl
## Hardware / PCB
[CERN OHL 1.2 License](https://www.ohwr.org/documents/294)
## Software / Firmware
[MIT License](https://tldrlegal.com/license/mit-license)
