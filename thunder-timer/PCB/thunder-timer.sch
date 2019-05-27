EESchema Schematic File Version 4
LIBS:thunder-timer-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "thunder-timer"
Date "2019-05-20"
Rev "5"
Comp "Michael Bemmerl"
Comment1 "Open Hardware: CERN OHL v1.2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U1
U 1 1 5B315E85
P 3850 2050
F 0 "U1" H 3700 2650 50  0000 C CNN
F 1 "ATTINY85-20PU" H 3450 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4850 2050 50  0001 C CIN
F 3 "" H 3850 2050 50  0001 C CNN
	1    3850 2050
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5B315FB7
P 4700 2000
F 0 "C1" H 4725 2100 50  0000 L CNN
F 1 "100n" H 4725 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4738 1850 50  0001 C CNN
F 3 "" H 4700 2000 50  0001 C CNN
	1    4700 2000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5B316152
P 2150 1950
F 0 "SW1" H 2200 2050 50  0000 L CNN
F 1 "SW_Push" H 2150 1890 50  0000 C CNN
F 2 "mibe:SW_Push_10mm" H 2150 2150 50  0001 C CNN
F 3 "" H 2150 2150 50  0001 C CNN
	1    2150 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5B3163C8
P 8000 5500
F 0 "R2" V 8080 5500 50  0000 C CNN
F 1 "33k" V 8000 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7930 5500 50  0001 C CNN
F 3 "" H 8000 5500 50  0001 C CNN
	1    8000 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5B31642A
P 7600 5250
F 0 "R1" V 7680 5250 50  0000 C CNN
F 1 "6.8k" V 7600 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7530 5250 50  0001 C CNN
F 3 "" H 7600 5250 50  0001 C CNN
	1    7600 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5B3164B8
P 8600 4000
F 0 "R3" V 8680 4000 50  0000 C CNN
F 1 "82" V 8600 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8530 4000 50  0001 C CNN
F 3 "" H 8600 4000 50  0001 C CNN
	1    8600 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5B3164FF
P 8050 1800
F 0 "#PWR01" H 8050 1650 50  0001 C CNN
F 1 "VCC" H 8050 1950 50  0000 C CNN
F 2 "" H 8050 1800 50  0001 C CNN
F 3 "" H 8050 1800 50  0001 C CNN
	1    8050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5B316521
P 8050 2350
F 0 "#PWR02" H 8050 2100 50  0001 C CNN
F 1 "GND" H 8050 2200 50  0000 C CNN
F 2 "" H 8050 2350 50  0001 C CNN
F 3 "" H 8050 2350 50  0001 C CNN
	1    8050 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5B355631
P 1850 2250
F 0 "#PWR03" H 1850 2000 50  0001 C CNN
F 1 "GND" H 1850 2100 50  0000 C CNN
F 2 "" H 1850 2250 50  0001 C CNN
F 3 "" H 1850 2250 50  0001 C CNN
	1    1850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1950 1850 1950
Wire Wire Line
	1850 1950 1850 2250
$Comp
L power:GND #PWR04
U 1 1 5B355EB2
P 8600 5950
F 0 "#PWR04" H 8600 5700 50  0001 C CNN
F 1 "GND" H 8600 5800 50  0000 C CNN
F 2 "" H 8600 5950 50  0001 C CNN
F 3 "" H 8600 5950 50  0001 C CNN
	1    8600 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5450 8600 5750
Wire Wire Line
	8000 5350 8000 5250
Wire Wire Line
	7750 5250 8000 5250
Wire Wire Line
	8000 5650 8000 5750
Wire Wire Line
	8000 5750 8600 5750
Connection ~ 8600 5750
Wire Wire Line
	8600 4650 8600 4800
Connection ~ 8000 5250
Wire Wire Line
	8600 3600 8600 3850
Wire Wire Line
	8600 4450 8800 4450
Wire Wire Line
	8600 4150 8600 4300
Text Notes 9600 4650 0    60   Italic 0
Standard computer mainboard\nbuzzer connected here\n(suited for 5 V)
$Comp
L power:PWR_FLAG #FLG06
U 1 1 5B4112EC
P 8500 1800
F 0 "#FLG06" H 8500 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 8500 1950 50  0000 C CNN
F 2 "" H 8500 1800 50  0001 C CNN
F 3 "" H 8500 1800 50  0001 C CNN
	1    8500 1800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG07
U 1 1 5B41131C
P 8500 2300
F 0 "#FLG07" H 8500 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 8500 2450 50  0000 C CNN
F 2 "" H 8500 2300 50  0001 C CNN
F 3 "" H 8500 2300 50  0001 C CNN
	1    8500 2300
	1    0    0    -1  
$EndComp
Connection ~ 8500 2300
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5B428B05
P 9150 2000
F 0 "J1" H 9150 2100 50  0000 C CNN
F 1 "Conn_01x02" H 9150 1800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 9150 2000 50  0001 C CNN
F 3 "" H 9150 2000 50  0001 C CNN
	1    9150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1800 8850 2000
Wire Wire Line
	8850 2000 8950 2000
Wire Wire Line
	8950 2100 8850 2100
Wire Wire Line
	8850 2100 8850 2300
$Comp
L Device:Buzzer BZ1
U 1 1 5B43C4D2
P 8900 4550
F 0 "BZ1" H 9050 4600 50  0000 L CNN
F 1 "Buzzer" H 9050 4500 50  0000 L CNN
F 2 "mibe:Buzzer_12x9.5RM5" V 8875 4650 50  0001 C CNN
F 3 "" V 8875 4650 50  0001 C CNN
	1    8900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4650 8600 4650
$Comp
L Device:D D1
U 1 1 5B6B6148
P 8300 4550
F 0 "D1" H 8300 4650 50  0000 C CNN
F 1 "1N4148" H 8300 4450 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 8300 4550 50  0001 C CNN
F 3 "" H 8300 4550 50  0001 C CNN
	1    8300 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 4400 8300 4300
Wire Wire Line
	8300 4300 8600 4300
Connection ~ 8600 4300
Wire Wire Line
	8300 4700 8300 4800
Wire Wire Line
	8300 4800 8600 4800
Connection ~ 8600 4800
$Comp
L Device:Q_NPN_ECB Q1
U 1 1 5B355AB8
P 8500 5250
F 0 "Q1" H 8700 5325 50  0000 L CNN
F 1 "2PC945" H 8700 5250 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 8700 5175 50  0001 L CIN
F 3 "" H 8500 5250 50  0001 L CNN
	1    8500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2300 8500 2300
Wire Wire Line
	8050 2300 8050 2350
Wire Wire Line
	8600 5750 8600 5950
Wire Wire Line
	8000 5250 8300 5250
Wire Wire Line
	8500 1800 8850 1800
Wire Wire Line
	8500 2300 8850 2300
Wire Wire Line
	8600 4300 8600 4450
Wire Wire Line
	8600 4800 8600 5050
$Comp
L power:GND #PWR0101
U 1 1 5CDA340D
P 3850 2800
F 0 "#PWR0101" H 3850 2550 50  0001 C CNN
F 1 "GND" H 3850 2650 50  0000 C CNN
F 2 "" H 3850 2800 50  0001 C CNN
F 3 "" H 3850 2800 50  0001 C CNN
	1    3850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2800 3850 2750
Wire Wire Line
	3850 1450 3850 1350
$Comp
L power:VCC #PWR0102
U 1 1 5CDA3A5D
P 3850 1250
F 0 "#PWR0102" H 3850 1100 50  0001 C CNN
F 1 "VCC" H 3850 1400 50  0000 C CNN
F 2 "" H 3850 1250 50  0001 C CNN
F 3 "" H 3850 1250 50  0001 C CNN
	1    3850 1250
	1    0    0    -1  
$EndComp
Text GLabel 3000 1750 0    50   Input ~ 0
BUZ_PWM
Text GLabel 7100 5250 0    50   Input ~ 0
BUZ_PWM
Wire Wire Line
	7100 5250 7450 5250
Wire Wire Line
	3000 1750 3250 1750
Wire Wire Line
	2350 1950 3250 1950
Wire Wire Line
	8050 1800 8500 1800
Connection ~ 8500 1800
Wire Wire Line
	4700 1850 4700 1350
Wire Wire Line
	4700 1350 3850 1350
Connection ~ 3850 1350
Wire Wire Line
	3850 1350 3850 1250
Wire Wire Line
	4700 2150 4700 2750
Wire Wire Line
	4700 2750 3850 2750
Connection ~ 3850 2750
Wire Wire Line
	3850 2750 3850 2650
NoConn ~ 3250 1850
NoConn ~ 3250 2150
NoConn ~ 3250 2250
Text Notes 3550 950  0    50   ~ 0
Microcontroller
Text Notes 8300 1250 0    50   ~ 0
Battery connector
Text Notes 8350 3200 0    50   ~ 0
Buzzer circuit
Text Notes 3150 3950 0    50   ~ 0
DC/DC converter
$Comp
L mibe:LM2621 U2
U 1 1 5CE09A32
P 3500 5600
F 0 "U2" H 3500 6065 50  0000 C CNN
F 1 "LM2621" H 3500 5974 50  0000 C CNN
F 2 "Package_SO:VSSOP-8_3.0x3.0mm_P0.65mm" H 4300 5250 50  0001 C CIN
F 3 "https://www.ti.com/lit/ds/symlink/lm2621.pdf" H 3500 5600 50  0001 C CNN
	1    3500 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5CE0A646
P 3250 7050
F 0 "#PWR06" H 3250 6800 50  0001 C CNN
F 1 "GND" H 3255 6877 50  0000 C CNN
F 2 "" H 3250 7050 50  0001 C CNN
F 3 "" H 3250 7050 50  0001 C CNN
	1    3250 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6000 3250 6450
Wire Wire Line
	3450 6000 3450 6450
Wire Wire Line
	3450 6450 3250 6450
Connection ~ 3250 6450
Text GLabel 2550 5550 0    50   Input ~ 0
DCDC-PWR
Wire Wire Line
	2550 5550 2800 5550
$Comp
L Device:R R4
U 1 1 5CE1072E
P 2800 5950
F 0 "R4" H 2870 5996 50  0000 L CNN
F 1 "100k" H 2870 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2730 5950 50  0001 C CNN
F 3 "~" H 2800 5950 50  0001 C CNN
	1    2800 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6100 2800 6450
Wire Wire Line
	2800 6450 3250 6450
Wire Wire Line
	2800 5800 2800 5550
Connection ~ 2800 5550
Wire Wire Line
	2800 5550 3000 5550
$Comp
L Device:L L1
U 1 1 5CE15E71
P 2400 4900
F 0 "L1" V 2590 4900 50  0000 C CNN
F 1 "6µ8" V 2499 4900 50  0000 C CNN
F 2 "Inductor_SMD:L_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 2400 4900 50  0001 C CNN
F 3 "~" H 2400 4900 50  0001 C CNN
	1    2400 4900
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5CE19ACF
P 1800 4800
F 0 "#PWR05" H 1800 4650 50  0001 C CNN
F 1 "VCC" H 1817 4973 50  0000 C CNN
F 2 "" H 1800 4800 50  0001 C CNN
F 3 "" H 1800 4800 50  0001 C CNN
	1    1800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4800 1800 4900
$Comp
L power:+5V #PWR08
U 1 1 5CE1FAB6
P 5450 4800
F 0 "#PWR08" H 5450 4650 50  0001 C CNN
F 1 "+5V" H 5465 4973 50  0000 C CNN
F 2 "" H 5450 4800 50  0001 C CNN
F 3 "" H 5450 4800 50  0001 C CNN
	1    5450 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5CE204E9
P 8600 3600
F 0 "#PWR010" H 8600 3450 50  0001 C CNN
F 1 "+5V" H 8615 3773 50  0000 C CNN
F 2 "" H 8600 3600 50  0001 C CNN
F 3 "" H 8600 3600 50  0001 C CNN
	1    8600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4900 4200 4900
Wire Wire Line
	4000 5400 4200 5400
Wire Wire Line
	4200 5400 4200 4900
$Comp
L Device:R R5
U 1 1 5CE2569F
P 3950 6450
F 0 "R5" V 4157 6450 50  0000 C CNN
F 1 "50k" V 4066 6450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3880 6450 50  0001 C CNN
F 3 "~" H 3950 6450 50  0001 C CNN
	1    3950 6450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5CE263BE
P 4550 6450
F 0 "R7" V 4757 6450 50  0000 C CNN
F 1 "150k" V 4666 6450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 6450 50  0001 C CNN
F 3 "~" H 4550 6450 50  0001 C CNN
	1    4550 6450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 6450 3800 6450
Connection ~ 3450 6450
Wire Wire Line
	4100 6450 4250 6450
Wire Wire Line
	4250 6450 4250 5850
Wire Wire Line
	4250 5850 4000 5850
Connection ~ 4250 6450
Wire Wire Line
	4250 6450 4400 6450
$Comp
L Device:R R8
U 1 1 5CE33CEB
P 4800 5200
F 0 "R8" H 4870 5246 50  0000 L CNN
F 1 "500" H 4870 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4730 5200 50  0001 C CNN
F 3 "~" H 4800 5200 50  0001 C CNN
	1    4800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5700 4800 5550
Connection ~ 4800 5550
Wire Wire Line
	4800 5550 4800 5350
Wire Wire Line
	4000 5550 4550 5550
Wire Wire Line
	4700 6450 5150 6450
$Comp
L Device:C C4
U 1 1 5CE59E0F
P 4800 5950
F 0 "C4" H 4915 5996 50  0000 L CNN
F 1 "100n" H 4915 5905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4838 5800 50  0001 C CNN
F 3 "~" H 4800 5950 50  0001 C CNN
	1    4800 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4900 5150 6450
Wire Wire Line
	4800 5800 4800 5700
Connection ~ 4800 5700
$Comp
L power:GND #PWR07
U 1 1 5CE6DDD1
P 4800 6200
F 0 "#PWR07" H 4800 5950 50  0001 C CNN
F 1 "GND" H 4805 6027 50  0000 C CNN
F 2 "" H 4800 6200 50  0001 C CNN
F 3 "" H 4800 6200 50  0001 C CNN
	1    4800 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6200 4800 6100
$Comp
L Device:CP C5
U 1 1 5CE702DB
P 5450 5750
F 0 "C5" H 5568 5796 50  0000 L CNN
F 1 "68µ" H 5568 5705 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-31_Kemet-D_Pad2.25x2.55mm_HandSolder" H 5488 5600 50  0001 C CNN
F 3 "~" H 5450 5750 50  0001 C CNN
	1    5450 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5CE71163
P 1800 5750
F 0 "C2" H 1918 5796 50  0000 L CNN
F 1 "22µ" H 1918 5705 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 1838 5600 50  0001 C CNN
F 3 "~" H 1800 5750 50  0001 C CNN
	1    1800 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5900 1800 6450
Wire Wire Line
	1800 6450 2800 6450
Connection ~ 2800 6450
Wire Wire Line
	1800 5600 1800 4900
Connection ~ 1800 4900
Wire Wire Line
	1800 4900 2250 4900
$Comp
L power:GND #PWR09
U 1 1 5CE7BD20
P 5450 6200
F 0 "#PWR09" H 5450 5950 50  0001 C CNN
F 1 "GND" H 5455 6027 50  0000 C CNN
F 2 "" H 5450 6200 50  0001 C CNN
F 3 "" H 5450 6200 50  0001 C CNN
	1    5450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4900 5450 4900
Wire Wire Line
	5450 4900 5450 4800
Wire Wire Line
	5450 5600 5450 4900
Connection ~ 5450 4900
Wire Wire Line
	5450 5900 5450 6200
$Comp
L Device:CP C3
U 1 1 5CE8725E
P 4550 6850
F 0 "C3" V 4295 6850 50  0000 C CNN
F 1 "39p" V 4386 6850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4588 6700 50  0001 C CNN
F 3 "~" H 4550 6850 50  0001 C CNN
	1    4550 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 6850 5150 6850
Wire Wire Line
	5150 6850 5150 6450
Connection ~ 5150 6450
Wire Wire Line
	3250 7050 3250 6450
Wire Wire Line
	4400 6850 4250 6850
Wire Wire Line
	4250 6850 4250 6450
$Comp
L Device:R R6
U 1 1 5CE346C7
P 4550 5700
F 0 "R6" V 4757 5700 50  0000 C CNN
F 1 "200k" V 4666 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 5700 50  0001 C CNN
F 3 "~" H 4550 5700 50  0001 C CNN
	1    4550 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 5700 4700 5700
Wire Wire Line
	4400 5700 4000 5700
Wire Wire Line
	3000 5400 2800 5400
Wire Wire Line
	2800 5400 2800 4900
Wire Wire Line
	2800 4900 2550 4900
Wire Wire Line
	2800 4900 3350 4900
Connection ~ 2800 4900
$Comp
L Device:D_Schottky D2
U 1 1 5CE153B5
P 3500 4900
F 0 "D2" H 3500 4684 50  0000 C CNN
F 1 "NSR0320MW2T1G" H 3500 4775 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 3500 4900 50  0001 C CNN
F 3 "~" H 3500 4900 50  0001 C CNN
	1    3500 4900
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5CE3CA7C
P 4550 5500
F 0 "#FLG0101" H 4550 5575 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 5650 50  0000 C CNN
F 2 "" H 4550 5500 50  0001 C CNN
F 3 "" H 4550 5500 50  0001 C CNN
	1    4550 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5500 4550 5550
Connection ~ 4550 5550
Wire Wire Line
	4550 5550 4800 5550
Connection ~ 4200 4900
Wire Wire Line
	4200 4900 4800 4900
Wire Wire Line
	4800 4900 4800 5050
Connection ~ 4800 4900
Connection ~ 5150 4900
Wire Wire Line
	5150 4900 4800 4900
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5CE4E097
P 5750 4800
F 0 "#FLG0103" H 5750 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 5750 4950 50  0000 C CNN
F 2 "" H 5750 4800 50  0001 C CNN
F 3 "" H 5750 4800 50  0001 C CNN
	1    5750 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4900 5750 4900
Wire Wire Line
	5750 4900 5750 4800
Text GLabel 3000 2050 0    50   Input ~ 0
DCDC-PWR
Wire Wire Line
	3250 2050 3000 2050
Text Label 4100 5850 0    50   ~ 0
FB
Text Label 4100 5550 0    50   ~ 0
DCDC-VCC
$EndSCHEMATC
