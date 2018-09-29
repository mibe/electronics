# ATtiny-BB
A small breakout-board for mounting an 8-pin Atmel ATtiny onto a breadboard.

# BOM
- 8-pin DIP socket (U1)
- 10-pin pin strip (J1, J2, J3)
- 1x jumper (on J3)
- Tactile switch C&K KMR2 with grounding pin (SW1)
- 100 nF 0805 capacitor (C1)
- 330 Ω 0805 resistor (R1)

# Design & building notes
* The resistor R1 limits the current, if the reset switch is pressed by accident when the RESET pin is used as an I/O pin.
* J3 is intended for measuring the current consumption of the system. Hence J3 is shorted with a jumper when not used.

# License
(C) 2018 Michael Bemmerl

[CERN OHL 1.2 License](https://www.ohwr.org/documents/294)
