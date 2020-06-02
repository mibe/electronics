# Thunder timer
Calculate thunderstorm distance by timing the interval between the lightning strike and the thunder. Two button presses start (lightning) and stop (thunder) a timer. This time span is used to calculate the distance. The distance is then presented acoustically to the user. 

Three beep frequencies are used for that:

- ~1500 Hz: Number of tenth kilometers
- ~2200 Hz: Number of kilometers
- ~3900 Hz: Number of five kilometers

# BOM
## PCB
See the ```PCB/thunder-timer.csv``` file. Short summary:

- 1x Atmel ATtiny[2,4,8]5 microcontroller
- 1x LM2621 DC/DC boost converter
- 1x buzzer with a nominal frequency of 2 kHz and a voltage of 5 V
- 1x push button, normally open
- 5x capacitors
- 2x diodes
- 8x resistors
- 1x inductor
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
* The reference implementation of the LM2621 converter IC was used (see chapter 8.1 in the datasheet) to generate the 5 volt for the buzzer.
* C1 is close to a mounting hole, which is not a good idea when using MLCC capacitors, since the failure mode when mechanically overstressed is a short. But since the PCB will be mounted in a plastic case not much force can be applied anyways, so this shouldn't be a problem.
* The latest revision mainly uses SMD components. I just couldn't be bothered to update the other passives to SMD... 

# License
(C) 2018, 2019 Michael Bemmerl
## Hardware / PCB
[CERN OHL 1.2 License](https://www.ohwr.org/project/cernohl/wikis/Documents/CERN-OHL-version-1.2)
## Software / Firmware
[MIT License](https://tldrlegal.com/license/mit-license)
