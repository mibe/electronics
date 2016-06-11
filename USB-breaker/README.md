# USB-breaker
This is a tool to shortly disconnect a USB device from the USB bus. This is done by switching two relays, which are tied into the USB bus. One relay switches the data lines, the other the power supply lines. A RC filter tries to mimic the unplugging of a USB type A connector: Due to the design of this connector, the data lines are disconnected before the power lines.

This tool is mainly used for developing USB devices: A reset is now possible without unplugging the USB connector of the device. Hence it is saving insertion-removal cycles of the hub's USB connector: The standard A type connector has a designed lifetime of 1.500 cycles (see "Universal Serial Bus Cables and Connectors Class Document", table 3-1).

## BOM

### PCB
See the ```BOM-PCB.csv``` file. Short summary:

* 2 capacitors
* 2 diodes
* 1 pin header
* 2 relays
* 5 resistors
* 2 transistors
* 5 connectors

### The rest
* Case KEMO G025
* Red LED, 3 mm diameter
* SPST switch (on/off switch)
* Push button, normally open
* Some wires

## Enclosure
The top half of the case is used as front panel, where the controls and indicator LED are mounted. See ```drilling plan.pdf``` for a drawing of the drill holes. 

## Limitations
This tool is not designed to work with high-current USB devices. It is designed for a standard USB device with draws 500 mA at maximum. Don't hook up a device which draws more current (like a phone, charger, fan or vacuum cleaner)! The rated load of the relay contacts is 1 A, though.

## Design & building remarks
* If you don't have an SPST switch, you can use any other and just leave the remaining pole(s) unconnected.
* It was planned to connect the front panel with ribbon cable & an IDC connector mating with ```SV1```. But that didn't work, because the switch got in the way. Use a case which is at least 1.5 cm higher.
* Use the -ECB.brd / -ECB.sch files if you have transistors with a different pinout.

## License
GNU GPL v2 (see LICENSE.txt and firmware/usbdrv/License.txt)