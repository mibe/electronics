EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L mibe:AT90S4433-8P U2
U 1 1 614167E5
P 3500 2750
F 0 "U2" H 3350 2550 50  0000 C CNN
F 1 "AT90S4433-8P" H 3350 2450 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 3500 2750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2486-8-bit-avr-microcontroller-atmega8_l_datasheet.pdf" H 3500 2750 50  0001 C CNN
	1    3500 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 61419060
P 3350 1150
F 0 "L1" V 3540 1150 50  0000 C CNN
F 1 "10 µH" V 3449 1150 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3350 1150 50  0001 C CNN
F 3 "~" H 3350 1150 50  0001 C CNN
	1    3350 1150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 614195C0
P 3850 1150
F 0 "C1" V 3598 1150 50  0000 C CNN
F 1 "100 nF" V 3689 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3888 1000 50  0001 C CNN
F 3 "~" H 3850 1150 50  0001 C CNN
	1    3850 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6141AFD6
P 3500 4300
F 0 "#PWR06" H 3500 4050 50  0001 C CNN
F 1 "GND" H 3505 4127 50  0000 C CNN
F 2 "" H 3500 4300 50  0001 C CNN
F 3 "" H 3500 4300 50  0001 C CNN
	1    3500 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4300 3500 4250
Wire Wire Line
	3500 4250 3600 4250
Wire Wire Line
	3600 4250 3600 4150
Connection ~ 3500 4250
Wire Wire Line
	3500 4250 3500 4150
$Comp
L Device:Crystal Y1
U 1 1 6141CA0F
P 2300 1950
F 0 "Y1" V 2254 2081 50  0000 L CNN
F 1 "8 MHz" V 2345 2081 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 2300 1950 50  0001 C CNN
F 3 "~" H 2300 1950 50  0001 C CNN
	1    2300 1950
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 6141DCBC
P 1600 1800
F 0 "C2" V 1348 1800 50  0000 C CNN
F 1 "33 pF" V 1439 1800 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1638 1650 50  0001 C CNN
F 3 "~" H 1600 1800 50  0001 C CNN
	1    1600 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 6141E339
P 1600 2100
F 0 "C3" V 1850 2100 50  0000 C CNN
F 1 "33 pF" V 1750 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1638 1950 50  0001 C CNN
F 3 "~" H 1600 2100 50  0001 C CNN
	1    1600 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6141EB88
P 1200 2150
F 0 "#PWR03" H 1200 1900 50  0001 C CNN
F 1 "GND" H 1205 1977 50  0000 C CNN
F 2 "" H 1200 2150 50  0001 C CNN
F 3 "" H 1200 2150 50  0001 C CNN
	1    1200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1150 3600 1150
Connection ~ 3600 1150
Wire Wire Line
	3600 1150 3700 1150
Wire Wire Line
	3500 1350 3500 1300
Wire Wire Line
	3500 1300 3050 1300
Wire Wire Line
	3050 1300 3050 1150
$Comp
L power:GND #PWR08
U 1 1 614259EA
P 4350 1200
F 0 "#PWR08" H 4350 950 50  0001 C CNN
F 1 "GND" H 4355 1027 50  0000 C CNN
F 2 "" H 4350 1200 50  0001 C CNN
F 3 "" H 4350 1200 50  0001 C CNN
	1    4350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2100 1200 2100
Wire Wire Line
	1200 2100 1200 1800
Wire Wire Line
	1200 1800 1450 1800
Wire Wire Line
	1200 2150 1200 2100
Connection ~ 1200 2100
Wire Wire Line
	4000 1150 4350 1150
Wire Wire Line
	4350 1150 4350 1200
Wire Wire Line
	3200 1150 3050 1150
Connection ~ 3050 1150
Wire Wire Line
	3050 1150 3050 1100
Wire Wire Line
	2300 1800 2750 1800
Wire Wire Line
	2750 1850 2900 1850
$Comp
L mibe:HDSP-H101 U3
U 1 1 6142D96D
P 8700 3350
F 0 "U3" H 8700 4017 50  0000 C CNN
F 1 "HDSP-H101" H 8700 3926 50  0000 C CNN
F 2 "mibe:HDSP-H101" H 8700 2800 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 7900 4350 50  0001 C CNN
	1    8700 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 614315F8
P 4400 3050
F 0 "R2" V 4350 2850 50  0000 C CNN
F 1 "130 Ω" V 4350 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3050 50  0001 C CNN
F 3 "~" H 4400 3050 50  0001 C CNN
	1    4400 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 61431FEF
P 4400 3150
F 0 "R3" V 4350 2950 50  0000 C CNN
F 1 "130 Ω" V 4350 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3150 50  0001 C CNN
F 3 "~" H 4400 3150 50  0001 C CNN
	1    4400 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 6143219D
P 4400 3250
F 0 "R4" V 4450 3450 50  0000 C CNN
F 1 "130 Ω" V 4450 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3250 50  0001 C CNN
F 3 "~" H 4400 3250 50  0001 C CNN
	1    4400 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 614322D3
P 4400 3350
F 0 "R5" V 4450 3150 50  0000 C CNN
F 1 "130 Ω" V 4350 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3350 50  0001 C CNN
F 3 "~" H 4400 3350 50  0001 C CNN
	1    4400 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 61432453
P 4400 3450
F 0 "R6" V 4250 3250 50  0000 C CNN
F 1 "130 Ω" V 4350 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3450 50  0001 C CNN
F 3 "~" H 4400 3450 50  0001 C CNN
	1    4400 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 61432583
P 4400 3550
F 0 "R7" V 4350 3350 50  0000 C CNN
F 1 "130 Ω" V 4350 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3550 50  0001 C CNN
F 3 "~" H 4400 3550 50  0001 C CNN
	1    4400 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 614326D3
P 4400 3650
F 0 "R8" V 4350 3450 50  0000 C CNN
F 1 "130 Ω" V 4350 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3650 50  0001 C CNN
F 3 "~" H 4400 3650 50  0001 C CNN
	1    4400 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 61432868
P 9900 4000
F 0 "R9" H 9830 3954 50  0000 R CNN
F 1 "130 Ω" H 9830 4045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9830 4000 50  0001 C CNN
F 3 "~" H 9900 4000 50  0001 C CNN
	1    9900 4000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 61433008
P 9900 4200
F 0 "#PWR015" H 9900 3950 50  0001 C CNN
F 1 "GND" H 9905 4027 50  0000 C CNN
F 2 "" H 9900 4200 50  0001 C CNN
F 3 "" H 9900 4200 50  0001 C CNN
	1    9900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4200 9900 4150
Wire Wire Line
	4100 3050 4250 3050
Wire Wire Line
	4100 3150 4250 3150
Wire Wire Line
	4100 3250 4250 3250
Wire Wire Line
	4100 3350 4250 3350
Wire Wire Line
	4100 3450 4250 3450
Wire Wire Line
	4100 3550 4250 3550
Wire Wire Line
	4100 3650 4250 3650
Entry Wire Line
	5150 3050 5250 3150
Entry Wire Line
	5150 3150 5250 3250
Entry Wire Line
	5150 3250 5250 3350
Entry Wire Line
	5150 3350 5250 3450
Entry Wire Line
	5150 3450 5250 3550
Entry Wire Line
	5150 3550 5250 3650
Entry Wire Line
	5150 3650 5250 3750
Wire Wire Line
	5150 3050 4550 3050
Wire Wire Line
	4550 3150 5150 3150
Wire Wire Line
	5150 3250 4550 3250
Wire Wire Line
	4550 3350 5150 3350
Wire Wire Line
	5150 3450 4550 3450
Wire Wire Line
	4550 3550 5150 3550
Wire Wire Line
	5150 3650 4550 3650
Wire Wire Line
	9750 3050 10000 3050
Wire Wire Line
	10000 3150 9750 3150
Wire Wire Line
	9750 3250 10000 3250
Wire Wire Line
	10000 3350 9750 3350
Wire Wire Line
	9750 3450 10000 3450
Wire Wire Line
	10000 3550 9750 3550
Wire Wire Line
	9750 3650 10000 3650
Wire Bus Line
	8050 4250 5250 4250
Entry Wire Line
	8050 3150 8150 3050
Entry Wire Line
	8050 3250 8150 3150
Entry Wire Line
	8050 3350 8150 3250
Entry Wire Line
	8050 3450 8150 3350
Wire Wire Line
	8150 3050 8400 3050
Wire Wire Line
	8400 3150 8150 3150
Wire Wire Line
	8150 3250 8400 3250
Wire Wire Line
	8400 3350 8150 3350
Wire Wire Line
	8400 3550 8150 3550
Wire Wire Line
	8150 3650 8400 3650
Text Label 8150 3150 0    50   ~ 0
7S_B
Text Label 8150 3050 0    50   ~ 0
7S_A
Text Label 8150 3250 0    50   ~ 0
7S_C
Text Label 8150 3350 0    50   ~ 0
7S_D
Text Label 8150 3450 0    50   ~ 0
7S_E
Text Label 8150 3550 0    50   ~ 0
7S_F
Text Label 8150 3650 0    50   ~ 0
7S_G
Text Label 9750 3050 0    50   ~ 0
7S_A
Text Label 9750 3150 0    50   ~ 0
7S_B
Text Label 9750 3250 0    50   ~ 0
7S_C
Text Label 9750 3350 0    50   ~ 0
7S_D
Text Label 9750 3450 0    50   ~ 0
7S_E
Text Label 9750 3550 0    50   ~ 0
7S_F
Text Label 9750 3650 0    50   ~ 0
7S_G
Text Label 4900 3050 0    50   ~ 0
7S_A
Text Label 4900 3150 0    50   ~ 0
7S_B
Text Label 4900 3250 0    50   ~ 0
7S_C
Text Label 4900 3350 0    50   ~ 0
7S_D
Text Label 4900 3450 0    50   ~ 0
7S_E
Text Label 4900 3550 0    50   ~ 0
7S_F
Text Label 4900 3650 0    50   ~ 0
7S_G
Wire Wire Line
	9900 3850 9900 3750
Wire Wire Line
	9900 3750 10000 3750
Wire Wire Line
	2750 1800 2750 1850
Wire Wire Line
	2300 2100 2750 2100
Wire Wire Line
	2750 2100 2750 2050
Wire Wire Line
	2750 2050 2900 2050
$Comp
L Switch:SW_Push SW2
U 1 1 6144BFDF
P 5900 1400
F 0 "SW2" V 5854 1548 50  0000 L CNN
F 1 "SW_Push" V 5945 1548 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.15sqmm_1x02_P4mm_D0.5mm_OD1.5mm" H 5900 1600 50  0001 C CNN
F 3 "~" H 5900 1600 50  0001 C CNN
	1    5900 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 1150 5350 1150
Wire Wire Line
	5900 1150 5900 1200
Connection ~ 4350 1150
Wire Wire Line
	5350 1200 5350 1150
Connection ~ 5350 1150
Wire Wire Line
	5350 1150 5900 1150
Wire Wire Line
	5350 1600 5350 1750
Wire Wire Line
	5350 1750 4100 1750
Wire Wire Line
	4100 1850 5900 1850
Wire Wire Line
	5900 1850 5900 1600
NoConn ~ 4100 2850
NoConn ~ 4100 2750
NoConn ~ 4100 2550
$Comp
L power:VDDA #PWR07
U 1 1 614B94B2
P 3600 1100
F 0 "#PWR07" H 3600 950 50  0001 C CNN
F 1 "VDDA" H 3615 1273 50  0000 C CNN
F 2 "" H 3600 1100 50  0001 C CNN
F 3 "" H 3600 1100 50  0001 C CNN
	1    3600 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1150 3600 1100
$Comp
L power:VDDA #PWR04
U 1 1 614C3CE1
P 2750 2250
F 0 "#PWR04" H 2750 2100 50  0001 C CNN
F 1 "VDDA" H 2750 2200 50  0000 C CNN
F 2 "" H 2750 2250 50  0001 C CNN
F 3 "" H 2750 2250 50  0001 C CNN
	1    2750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2250 2900 2250
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 614BC040
P 7250 6100
F 0 "H1" H 7350 6149 50  0000 L CNN
F 1 "MountingHole_Pad" H 7350 6058 50  0000 L CNN
F 2 "mibe:SMTSO-M3" H 7250 6100 50  0001 C CNN
F 3 "~" H 7250 6100 50  0001 C CNN
	1    7250 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 614BCA90
P 8200 6100
F 0 "H2" H 8300 6149 50  0000 L CNN
F 1 "MountingHole_Pad" H 8300 6058 50  0000 L CNN
F 2 "mibe:SMTSO-M3" H 8200 6100 50  0001 C CNN
F 3 "~" H 8200 6100 50  0001 C CNN
	1    8200 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 614BD66E
P 9150 6100
F 0 "H3" H 9250 6149 50  0000 L CNN
F 1 "MountingHole_Pad" H 9250 6058 50  0000 L CNN
F 2 "mibe:SMTSO-M3" H 9150 6100 50  0001 C CNN
F 3 "~" H 9150 6100 50  0001 C CNN
	1    9150 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 614BDC32
P 10100 6100
F 0 "H4" H 10200 6149 50  0000 L CNN
F 1 "MountingHole_Pad" H 10200 6058 50  0000 L CNN
F 2 "mibe:SMTSO-M3" H 10100 6100 50  0001 C CNN
F 3 "~" H 10100 6100 50  0001 C CNN
	1    10100 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 614BE552
P 7250 6300
F 0 "#PWR02" H 7250 6050 50  0001 C CNN
F 1 "GND" H 7255 6127 50  0000 C CNN
F 2 "" H 7250 6300 50  0001 C CNN
F 3 "" H 7250 6300 50  0001 C CNN
	1    7250 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 6300 7250 6250
Wire Wire Line
	7250 6250 8200 6250
Wire Wire Line
	8200 6250 8200 6200
Connection ~ 7250 6250
Wire Wire Line
	7250 6250 7250 6200
Wire Wire Line
	8200 6250 9150 6250
Wire Wire Line
	9150 6250 9150 6200
Connection ~ 8200 6250
Wire Wire Line
	9150 6250 10100 6250
Wire Wire Line
	10100 6250 10100 6200
Connection ~ 9150 6250
Text Label 4300 1750 0    50   ~ 0
SW_DEC
Text Label 4300 1850 0    50   ~ 0
SW_INC
Text Notes 8500 4150 0    50   ~ 0
If: 15 mA\nVf: ~~ 1.73 V
NoConn ~ 4100 3750
$Comp
L Connector:AVR-ISP-6 J2
U 1 1 614A8B86
P 6100 6850
F 0 "J2" H 5770 6946 50  0000 R CNN
F 1 "AVR-ISP-6" H 5770 6855 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 5850 6900 50  0001 C CNN
F 3 " ~" H 4825 6300 50  0001 C CNN
	1    6100 6850
	-1   0    0    -1  
$EndComp
$Comp
L mibe:HDSP-H101 U4
U 1 1 6142F527
P 10300 3350
F 0 "U4" H 10300 4017 50  0000 C CNN
F 1 "HDSP-H101" H 10300 3926 50  0000 C CNN
F 2 "mibe:HDSP-H101" H 10300 2800 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 9500 4350 50  0001 C CNN
	1    10300 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 614B1547
P 6200 7350
F 0 "#PWR014" H 6200 7100 50  0001 C CNN
F 1 "GND" H 6205 7177 50  0000 C CNN
F 2 "" H 6200 7350 50  0001 C CNN
F 3 "" H 6200 7350 50  0001 C CNN
	1    6200 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 7250 6200 7350
Text GLabel 2750 1650 0    50   Input ~ 0
~RESET
Wire Wire Line
	2750 1650 2900 1650
Text GLabel 5500 6950 0    50   Output ~ 0
~RESET
Text GLabel 6300 2600 3    50   Output ~ 0
MISO
Text GLabel 4400 2150 2    50   Input ~ 0
SCK
Text GLabel 5500 6850 0    50   Output ~ 0
SCK
Text GLabel 5500 6650 0    50   Input ~ 0
MISO
Text GLabel 5500 6750 0    50   Output ~ 0
MOSI
Wire Wire Line
	5500 6650 5700 6650
Wire Wire Line
	5700 6750 5500 6750
Wire Wire Line
	5500 6850 5700 6850
Wire Wire Line
	5700 6950 5500 6950
Wire Wire Line
	4400 2150 4100 2150
$Sheet
S 850  5700 1350 900 
U 61835AF1
F0 "Power" 50
F1 "Power.sch" 50
F2 "~BATT_LOW" O R 2200 5800 50 
F3 "VUSB" O R 2200 6100 50 
F4 "CHARGER_STAT" O R 2200 6400 50 
$EndSheet
$Comp
L power:GND #PWR012
U 1 1 619FDBF8
P 4100 6600
F 0 "#PWR012" H 4100 6350 50  0001 C CNN
F 1 "GND" H 4105 6427 50  0000 C CNN
F 2 "" H 4100 6600 50  0001 C CNN
F 3 "" H 4100 6600 50  0001 C CNN
	1    4100 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6600 4100 6400
Text GLabel 4650 5800 2    50   Output ~ 0
~RESET
Wire Wire Line
	4650 5800 4100 5800
Wire Wire Line
	4100 5800 4100 5900
Wire Wire Line
	2200 6100 3300 6100
$Comp
L Device:R R12
U 1 1 61A098B5
P 3600 6400
F 0 "R12" V 3393 6400 50  0000 C CNN
F 1 "100 kΩ" V 3484 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3530 6400 50  0001 C CNN
F 3 "~" H 3600 6400 50  0001 C CNN
	1    3600 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 6400 3300 6400
Wire Wire Line
	3300 6400 3300 6100
Connection ~ 3300 6100
Wire Wire Line
	3300 6100 3450 6100
Wire Wire Line
	3750 6400 4100 6400
Connection ~ 4100 6400
Wire Wire Line
	4100 6400 4100 6300
Wire Wire Line
	2200 5800 3450 5800
Connection ~ 4100 5800
$Comp
L Device:R R11
U 1 1 61A174B7
P 3600 5800
F 0 "R11" V 3393 5800 50  0000 C CNN
F 1 "10 kΩ" V 3484 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3530 5800 50  0001 C CNN
F 3 "~" H 3600 5800 50  0001 C CNN
	1    3600 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 5800 4100 5800
NoConn ~ 8400 3750
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 619F4049
P 4000 6100
F 0 "Q1" H 4204 6146 50  0000 L CNN
F 1 "IRLML6244" H 4204 6055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4200 6200 50  0001 C CNN
F 3 "~" H 4000 6100 50  0001 C CNN
	1    4000 6100
	1    0    0    -1  
$EndComp
Text Notes 1650 5900 0    50   ~ 0
Ref. to +BATT
$Comp
L Device:LED D2
U 1 1 61A3EFBD
P 3100 6850
F 0 "D2" H 3093 7067 50  0000 C CNN
F 1 "LED red" H 3093 6976 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O1.27mm_Z2.0mm" H 3100 6850 50  0001 C CNN
F 3 "~" H 3100 6850 50  0001 C CNN
F 4 "Vf 1.6 V; If 2 mA" H 3100 6850 50  0001 C CNN "Characteristics"
	1    3100 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 61A40252
P 2700 6850
F 0 "R13" V 2493 6850 50  0000 C CNN
F 1 "1,8 kΩ" V 2584 6850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2630 6850 50  0001 C CNN
F 3 "~" H 2700 6850 50  0001 C CNN
	1    2700 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 6850 3300 6850
Wire Wire Line
	3300 6850 3300 6400
Connection ~ 3300 6400
Wire Wire Line
	2950 6850 2850 6850
Wire Wire Line
	2550 6850 2450 6850
Wire Wire Line
	2450 6850 2450 6400
Wire Wire Line
	2450 6400 2200 6400
Text Notes 1700 6500 0    50   ~ 0
Ref. to VUSB
Text Notes 2600 7050 0    50   ~ 0
Low = Charging
$Comp
L Device:Q_PMOS_GSD Q3
U 1 1 61A59774
P 10650 2250
F 0 "Q3" H 10854 2296 50  0000 L CNN
F 1 "Si2301DS" H 10854 2205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 10850 2350 50  0001 C CNN
F 3 "~" H 10650 2250 50  0001 C CNN
	1    10650 2250
	1    0    0    -1  
$EndComp
Entry Wire Line
	8050 3550 8150 3450
Entry Wire Line
	8050 3750 8150 3650
Entry Wire Line
	8050 3650 8150 3550
Wire Wire Line
	8150 3450 8400 3450
Entry Wire Line
	9650 3750 9750 3650
Entry Wire Line
	9650 3650 9750 3550
Entry Wire Line
	9650 3550 9750 3450
Entry Wire Line
	9650 3450 9750 3350
Entry Wire Line
	9650 3250 9750 3150
Entry Wire Line
	9650 3350 9750 3250
Entry Wire Line
	9650 3150 9750 3050
Wire Bus Line
	8050 4250 9650 4250
Connection ~ 8050 4250
Wire Wire Line
	9000 3750 9150 3750
Wire Wire Line
	9150 3750 9150 3650
Wire Wire Line
	9000 3650 9150 3650
Connection ~ 9150 3650
Wire Wire Line
	9150 3650 9150 2450
Wire Wire Line
	10600 3750 10750 3750
Wire Wire Line
	10750 3750 10750 3650
Wire Wire Line
	10600 3650 10750 3650
Connection ~ 10750 3650
Wire Wire Line
	10750 3650 10750 2450
Wire Wire Line
	9150 1500 9150 1650
Wire Wire Line
	10750 1650 10750 2050
Connection ~ 9150 1650
Wire Wire Line
	9150 1650 9150 2050
$Comp
L Device:R R17
U 1 1 61B139BA
P 8350 1950
F 0 "R17" V 8143 1950 50  0000 C CNN
F 1 "10 kΩ" V 8234 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8280 1950 50  0001 C CNN
F 3 "~" H 8350 1950 50  0001 C CNN
	1    8350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1800 8350 1650
Wire Wire Line
	8350 1650 9150 1650
Wire Wire Line
	9150 1650 10200 1650
$Comp
L Device:Q_PMOS_GSD Q2
U 1 1 61A579B0
P 9050 2250
F 0 "Q2" H 9254 2296 50  0000 L CNN
F 1 "Si2301DS" H 9254 2205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 9250 2350 50  0001 C CNN
F 3 "~" H 9050 2250 50  0001 C CNN
	1    9050 2250
	1    0    0    -1  
$EndComp
NoConn ~ 4100 2450
NoConn ~ 4100 2350
Wire Wire Line
	3600 1350 3600 1300
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61C05BFA
P 3650 1300
F 0 "#FLG0101" H 3650 1375 50  0001 C CNN
F 1 "PWR_FLAG" V 3650 1428 50  0000 L CNN
F 2 "" H 3650 1300 50  0001 C CNN
F 3 "~" H 3650 1300 50  0001 C CNN
	1    3650 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 1300 3600 1300
Connection ~ 3600 1300
Wire Wire Line
	3600 1300 3600 1150
$Comp
L power:+BATT #PWR0101
U 1 1 61C0CF65
P 3050 1100
F 0 "#PWR0101" H 3050 950 50  0001 C CNN
F 1 "+BATT" H 3065 1273 50  0000 C CNN
F 2 "" H 3050 1100 50  0001 C CNN
F 3 "" H 3050 1100 50  0001 C CNN
	1    3050 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0103
U 1 1 61C18617
P 9150 1500
F 0 "#PWR0103" H 9150 1350 50  0001 C CNN
F 1 "+BATT" H 9165 1673 50  0000 C CNN
F 2 "" H 9150 1500 50  0001 C CNN
F 3 "" H 9150 1500 50  0001 C CNN
	1    9150 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR05
U 1 1 61C19A2C
P 6200 5950
F 0 "#PWR05" H 6200 5800 50  0001 C CNN
F 1 "+BATT" H 6215 6123 50  0000 C CNN
F 2 "" H 6200 5950 50  0001 C CNN
F 3 "" H 6200 5950 50  0001 C CNN
	1    6200 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 61B08127
P 7850 2250
F 0 "R14" V 7643 2250 50  0000 C CNN
F 1 "220 Ω" V 7734 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7780 2250 50  0001 C CNN
F 3 "~" H 7850 2250 50  0001 C CNN
	1    7850 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 61B086B3
P 7850 2400
F 0 "R15" V 7643 2400 50  0000 C CNN
F 1 "220 Ω" V 7734 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7780 2400 50  0001 C CNN
F 3 "~" H 7850 2400 50  0001 C CNN
	1    7850 2400
	0    -1   -1   0   
$EndComp
NoConn ~ 4100 1650
Wire Wire Line
	8350 2100 8350 2250
$Comp
L Device:R R18
U 1 1 61B3C230
P 10200 1950
F 0 "R18" V 9993 1950 50  0000 C CNN
F 1 "10 kΩ" V 10084 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10130 1950 50  0001 C CNN
F 3 "~" H 10200 1950 50  0001 C CNN
	1    10200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1800 10200 1650
Connection ~ 10200 1650
Wire Wire Line
	10200 1650 10750 1650
Wire Wire Line
	10200 2100 10200 2250
Wire Wire Line
	10200 2250 10450 2250
Wire Wire Line
	8000 2250 8350 2250
Wire Wire Line
	8350 2250 8850 2250
Connection ~ 8350 2250
Connection ~ 10200 2250
Wire Wire Line
	7700 2250 6300 2250
Wire Wire Line
	6100 2250 6100 1950
Wire Wire Line
	6100 1950 4100 1950
Text Label 4300 1950 0    50   ~ 0
~DIGIT_1_ENABLE
Text Label 4300 2050 0    50   ~ 0
~DIGIT_2_ENABLE
Wire Wire Line
	8000 2400 8750 2400
Wire Wire Line
	8750 2400 8750 2550
Wire Wire Line
	6000 2050 6000 2400
Wire Wire Line
	4100 2050 6000 2050
Wire Wire Line
	6000 2400 6300 2400
Wire Wire Line
	9750 2550 9750 2250
Wire Wire Line
	8750 2550 9750 2550
Wire Wire Line
	9750 2250 10200 2250
Text GLabel 6300 2050 1    50   Input ~ 0
MOSI
$Comp
L Device:Net-Tie_2 NT2
U 1 1 61B04413
P 6300 2500
F 0 "NT2" V 6254 2544 50  0000 L CNN
F 1 "Net-Tie_2" V 6345 2544 50  0000 L CNN
F 2 "mibe:NetTie-2_SMD_Pad0.25mm" H 6300 2500 50  0001 C CNN
F 3 "~" H 6300 2500 50  0001 C CNN
	1    6300 2500
	0    1    1    0   
$EndComp
Connection ~ 6300 2400
Wire Wire Line
	6300 2400 7700 2400
$Comp
L Device:Net-Tie_2 NT1
U 1 1 61B2FD31
P 6300 2150
F 0 "NT1" V 6254 2194 50  0000 L CNN
F 1 "Net-Tie_2" V 6345 2194 50  0000 L CNN
F 2 "mibe:NetTie-2_SMD_Pad0.25mm" H 6300 2150 50  0001 C CNN
F 3 "~" H 6300 2150 50  0001 C CNN
	1    6300 2150
	0    1    1    0   
$EndComp
Connection ~ 6300 2250
Wire Wire Line
	6300 2250 6100 2250
$Comp
L Device:C C6
U 1 1 61E79B15
P 2750 1150
F 0 "C6" V 2498 1150 50  0000 C CNN
F 1 "100 nF" V 2589 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2788 1000 50  0001 C CNN
F 3 "~" H 2750 1150 50  0001 C CNN
	1    2750 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61EA9491
P 2550 1200
F 0 "#PWR0104" H 2550 950 50  0001 C CNN
F 1 "GND" H 2555 1027 50  0000 C CNN
F 2 "" H 2550 1200 50  0001 C CNN
F 3 "" H 2550 1200 50  0001 C CNN
	1    2550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1150 2900 1150
Wire Wire Line
	2600 1150 2550 1150
Wire Wire Line
	2550 1150 2550 1200
Text Label 1850 1800 0    50   ~ 0
XTAL1
Text Label 1850 2100 0    50   ~ 0
XTAL2
Wire Wire Line
	1750 2100 2300 2100
Connection ~ 2300 2100
Wire Wire Line
	1750 1800 2300 1800
Connection ~ 2300 1800
$Comp
L Device:R R19
U 1 1 62CE8F9E
P 3600 6100
F 0 "R19" V 3393 6100 50  0000 C CNN
F 1 "10 kΩ" V 3484 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3530 6100 50  0001 C CNN
F 3 "~" H 3600 6100 50  0001 C CNN
	1    3600 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 6100 3800 6100
Text Label 9150 3350 0    50   ~ 0
CA_1
Text Label 10750 3350 0    50   ~ 0
CA_2
$Comp
L Switch:SW_Push SW1
U 1 1 6144D59E
P 5350 1400
F 0 "SW1" V 5304 1548 50  0000 L CNN
F 1 "SW_Push" V 5395 1548 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.15sqmm_1x02_P4mm_D0.5mm_OD1.5mm" H 5350 1600 50  0001 C CNN
F 3 "~" H 5350 1600 50  0001 C CNN
	1    5350 1400
	0    1    1    0   
$EndComp
NoConn ~ 4100 2650
$Comp
L Device:D D3
U 1 1 638FCA74
P 6200 6150
F 0 "D3" V 6154 6230 50  0000 L CNN
F 1 "S1B" V 6245 6230 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 6200 6150 50  0001 C CNN
F 3 "~" H 6200 6150 50  0001 C CNN
	1    6200 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 6350 6200 6300
Wire Wire Line
	6200 6000 6200 5950
Wire Bus Line
	5250 3150 5250 4250
Wire Bus Line
	8050 3150 8050 4250
Wire Bus Line
	9650 3150 9650 4250
$EndSCHEMATC
