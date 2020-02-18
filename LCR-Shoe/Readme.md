# LCR-Shoe
**LCR-Shoe** is a power supply attachment for cheap LCR meters. Power can be supplied by USB type B, Mini-B, Micro-B, USB 3.0 type C or an 9-volt battery.

# The Story
The LCR meter usually comes with a standard battery connector cable, dangling around. This is quite unpractical. The same with the battery: Who has a charged 9-volt battery lying around? But what probably most engineers have on their desks is a computer with an USB connector providing 5 volts. So why not leverage this and use the USB as a power supply? And so this project was born. These goals had to be achieved:

- The device must allow for most USB connectors
- The device must also accept a 9-volt battery
- No changes to the LCR meter must be necessary
- The device must provide mechanical support for the LCR meter itself

The electronics on the LCR meter run on 5 volts, and that's coincidentally the same voltage provided by USB. That's a match, right? Well, not so fast. The LCR meter wants 9 volt at the input side, which is then regulated to 5 volt. Since no change on the LCR meter itself must be necessary, the voltage from the USB has to be converted to something the regulator on the meter can work with. The other power source (the battery) is switched transparently depending on which power source is available. USB power takes priority over the battery.

The meter has four mounting holes, of which three can be used to really mount stuff. The other one is covered by the LCD screen. That's why the thread on one spacer has to be shortened a bit and is not screwed to the meter.

# The Name
You know Raspberry Pi HATs? HAT stands for Hardware Attached on Top. Well, and since this is attached on bottom, why not call it shoe? A shoe for a cheap LCR meter. That "fits", right? 😉

# The Theory of Operation
The circuit has two power inputs: From one of the USB connectors or from the battery. All USB connectors are in parallel, so if a USB host is attached to one of the USB connectors, all will have live +5 volt and ground on their power pins. Without proper USB device enumeration, the USB specification allows up to 100 mA of output current. This limit is not reached, the LCR meter draws about 30 mA with a device under test.

The voltage from the USB bus is boosted to 10.25 V using a DC/DC converter circuit around U1. The voltage is set by the resistor divider R3 / R4. The feedback to U1 is picked up after D1, so the voltage drop introduced by D1 is also compensated. The output voltage of the converter circuit is then fed directly to the output connector (J5 & J6).

The battery is switched to the output connector by Q1 when the sense voltage of the circuit around U2 is not ~ 20 mV above the battery voltage. This voltage difference is the reason why the DC/DC converter at the USB input is not boosting the USB voltage to 9 V, but rather to 10.25 V, which has plenty of margin in the case a full battery is inserted. The sense voltage is directly connected to the output voltage of the DC/DC converter circuit. The diode D1 at the converter also blocks reverse voltage flow from the battery into the converter.

# The BOM
## PCB
See the [```PCB/thunder-timer.csv```](PCB/LCR-Shoe.csv) file for an in-detail list. Short summary:

- 1x battery holder for 9-volt battery
- 2x battery contacts
- 5x capacitors
- 1x diode
- 4x USB connectors
- 1x inductor
- 1x P channel MOSFET
- 4x resistors
- 1x LM2731 DC/DC boost converter
- 1x LTC4412 switch

## Other stuff
- 3x M2x8 screws & nuts for the battery holder
- 4x M3x30 male-female spacer
- 3x M3 nuts
- 4x self adhesive rubber feet

# The Assembly
1. Place & solder the parts excluding the battery holder and the battery contacts to the PCB.
2. Place & solder J5 (battery contact). Mind the dimples on the part.
3. Connect battery connector of the LCR meter (or any other device that works with a 9-volt battery) to the soldered contact.
4. Now slide the other battery contact (J6) under the connector.
5. Solder J6 to the pad. This way the distance of both contacts is correct. Remove the connector afterwards.
6. Place & solder the battery holder to the PCB. Secure it with the three M2 screws.
7. Depending on how long the male thread of the M3 spacers is, remove a few millimeters, just so that the thread does not hit the display in the back.
8. Mount three spacers to the LCR meter, mount the spacer with the shortened thread to the PCB.
9. Mount the LCR meter to the PCB.
10. Connect the battery connector of the LCR meter to the PCB.
11. Add some rubber feet.
12. And you're done!


# The Pictures
Some (crappy) pictures are available in the [```Pictures```](Pictures) folder.

# The License
(C) 2019, 2020 Michael Bemmerl

This project is available under the [CERN OHL 1.2 License](https://www.ohwr.org/documents/294) license.
