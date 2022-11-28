# StarPower
"StarPower" is a PCB to drive one of these cheap Moravian star christmas decorations. The original circuit drives 12 LEDs in parallel and uses a dropper resistor. That means about ⅓ of the supply voltage is wasted as heat, which is way too much for a battery powered system. The new circuit uses an LED driver (PAM2804 from Diodes Inc.), which is a step-down DC/DC converter with only 0.1 V feedback voltage. As an added bonus this new circuit supports NiMH rechargeable batteries: A battery monitor resets the system at about 3 V, so the three cells cut-off at about 1 V each. The microcontroller is clocked by a 32.768 kHz crystal and has as many features as possible disabled and runs in sleep mode to save power. The µC consumes about 12 µA.

## Parameters
* Voltage range: 3 V - 4.5 V
* LED current: 120 mA
* LED forward voltage: 2.8 V
* LEDs driven in parallel: 12

## Bill of Materials
See the ```PCB\bom.html``` file.

## License
(C) 2022 Michael Bemmerl

This PCB is available under the [CERN OHL 1.2 License](https://www.ohwr.org/project/cernohl/wikis/Documents/CERN-OHL-version-1.2) license.
