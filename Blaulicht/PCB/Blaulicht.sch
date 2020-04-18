EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Blaulicht"
Date "2020-04-19"
Rev "1"
Comp "Michael Bemmerl"
Comment1 "Open Hardware: CERN OHL v1.2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny45V-10PU U1
U 1 1 5E84F533
P 4150 3350
F 0 "U1" H 3620 3396 50  0000 R CNN
F 1 "ATtiny45V-10PU" H 3620 3305 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4150 3350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 4150 3350 50  0001 C CNN
	1    4150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5E850059
P 5550 4250
F 0 "D1" V 5589 4133 50  0000 R CNN
F 1 "LED" V 5498 4133 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5550 4250 50  0001 C CNN
F 3 "~" H 5550 4250 50  0001 C CNN
	1    5550 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5E85051D
P 6150 4250
F 0 "D2" V 6189 4133 50  0000 R CNN
F 1 "LED" V 6098 4133 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6150 4250 50  0001 C CNN
F 3 "~" H 6150 4250 50  0001 C CNN
	1    6150 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E850A14
P 6150 3600
F 0 "R2" H 6220 3646 50  0000 L CNN
F 1 "20" H 6220 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6080 3600 50  0001 C CNN
F 3 "~" H 6150 3600 50  0001 C CNN
F 4 "1 %" H 6150 3600 50  0001 C CNN "Characteristics"
	1    6150 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E850F69
P 5550 3600
F 0 "R1" H 5620 3646 50  0000 L CNN
F 1 "20" H 5620 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5480 3600 50  0001 C CNN
F 3 "~" H 5550 3600 50  0001 C CNN
F 4 "1 %" H 5550 3600 50  0001 C CNN "Characteristics"
	1    5550 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E8512DB
P 4150 4700
F 0 "#PWR02" H 4150 4450 50  0001 C CNN
F 1 "GND" H 4155 4527 50  0000 C CNN
F 2 "" H 4150 4700 50  0001 C CNN
F 3 "" H 4150 4700 50  0001 C CNN
	1    4150 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5E851B5C
P 4150 2250
F 0 "#PWR01" H 4150 2100 50  0001 C CNN
F 1 "VCC" H 4167 2423 50  0000 C CNN
F 2 "" H 4150 2250 50  0001 C CNN
F 3 "" H 4150 2250 50  0001 C CNN
	1    4150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3450 5550 3150
Wire Wire Line
	5550 3150 4750 3150
Wire Wire Line
	6150 3450 6150 3050
Wire Wire Line
	6150 3050 4750 3050
Wire Wire Line
	5550 3750 5550 4100
Wire Wire Line
	6150 3750 6150 4100
Wire Wire Line
	6150 4400 6150 4550
Wire Wire Line
	6150 4550 5550 4550
Wire Wire Line
	4150 4550 4150 4200
Wire Wire Line
	4150 4550 4150 4700
Connection ~ 4150 4550
Wire Wire Line
	5550 4400 5550 4550
Connection ~ 5550 4550
Wire Wire Line
	5550 4550 4150 4550
Wire Wire Line
	4150 2250 4150 2500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E854F31
P 4150 2500
F 0 "#FLG0101" H 4150 2575 50  0001 C CNN
F 1 "PWR_FLAG" V 4150 2628 50  0000 L CNN
F 2 "" H 4150 2500 50  0001 C CNN
F 3 "~" H 4150 2500 50  0001 C CNN
	1    4150 2500
	0    1    1    0   
$EndComp
Connection ~ 4150 2500
Wire Wire Line
	4150 2500 4150 2750
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E8559CB
P 4150 4200
F 0 "#FLG0102" H 4150 4275 50  0001 C CNN
F 1 "PWR_FLAG" V 4150 4328 50  0000 L CNN
F 2 "" H 4150 4200 50  0001 C CNN
F 3 "~" H 4150 4200 50  0001 C CNN
	1    4150 4200
	0    1    1    0   
$EndComp
Connection ~ 4150 4200
Wire Wire Line
	4150 4200 4150 3950
NoConn ~ 4750 3250
NoConn ~ 4750 3350
NoConn ~ 4750 3450
NoConn ~ 4750 3550
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5E8570C0
P 10900 6850
F 0 "#LOGO1" H 10900 7125 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 6625 50  0001 C CNN
F 2 "" H 10900 6850 50  0001 C CNN
F 3 "~" H 10900 6850 50  0001 C CNN
	1    10900 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5E857A0F
P 2550 3400
F 0 "C1" H 2665 3446 50  0000 L CNN
F 1 "100n" H 2665 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2588 3250 50  0001 C CNN
F 3 "~" H 2550 3400 50  0001 C CNN
	1    2550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3550 2550 4550
Wire Wire Line
	2550 4550 4150 4550
Wire Wire Line
	2550 3250 2550 2500
Wire Wire Line
	2550 2500 4150 2500
$Comp
L Device:Battery_Cell BT1
U 1 1 5E9A3121
P 8350 3700
F 0 "BT1" H 8468 3796 50  0000 L CNN
F 1 "CR2032 3V" H 8468 3705 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1060_1x2032" V 8350 3760 50  0001 C CNN
F 3 "~" V 8350 3760 50  0001 C CNN
	1    8350 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5E9A3F85
P 8350 4000
F 0 "#PWR04" H 8350 3750 50  0001 C CNN
F 1 "GND" H 8355 3827 50  0000 C CNN
F 2 "" H 8350 4000 50  0001 C CNN
F 3 "" H 8350 4000 50  0001 C CNN
	1    8350 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5E9A46A9
P 8350 2650
F 0 "#PWR03" H 8350 2500 50  0001 C CNN
F 1 "VCC" H 8367 2823 50  0000 C CNN
F 2 "" H 8350 2650 50  0001 C CNN
F 3 "" H 8350 2650 50  0001 C CNN
	1    8350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4000 8350 3800
$Comp
L Switch:SW_SPDT #SW1
U 1 1 5E9B8E94
P 8350 3100
F 0 "#SW1" V 8396 3247 50  0000 L CNN
F 1 "SW_SPDT" V 8305 3247 50  0000 L CNN
F 2 "" H 8350 3100 50  0001 C CNN
F 3 "~" H 8350 3100 50  0001 C CNN
	1    8350 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 2650 8350 2800
Wire Wire Line
	8350 2800 8450 2800
Wire Wire Line
	8450 2800 8450 2900
Wire Wire Line
	8350 3300 8350 3500
Text Notes 8700 3150 0    50   ~ 0
Switch is mounted\noutside the PCB
Text Notes 6600 4350 0    50   ~ 0
Blue LEDs,\nVf = 2.9 V,\nI = 5 mA
NoConn ~ 8250 2900
Text Label 8350 3450 0    50   ~ 0
BAT+
$Comp
L Device:C C2
U 1 1 5E9C8322
P 2100 3400
F 0 "C2" H 2215 3446 50  0000 L CNN
F 1 "2.2µ" H 2215 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2138 3250 50  0001 C CNN
F 3 "~" H 2100 3400 50  0001 C CNN
	1    2100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3550 2100 4550
Wire Wire Line
	2100 4550 2550 4550
Connection ~ 2550 4550
Wire Wire Line
	2100 3250 2100 2500
Wire Wire Line
	2100 2500 2550 2500
Connection ~ 2550 2500
Text Label 5550 3250 0    50   ~ 0
PB1
Text Label 6150 3250 0    50   ~ 0
PB2
Text Label 6150 3900 0    50   ~ 0
I_D2
Text Label 5550 3900 0    50   ~ 0
I_D1
$EndSCHEMATC
