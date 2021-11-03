EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
F 2 "" H 3888 1000 50  0001 C CNN
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
F 2 "Crystal:Crystal_HC49-U_Horizontal" H 2300 1950 50  0001 C CNN
F 3 "~" H 2300 1950 50  0001 C CNN
	1    2300 1950
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 6141DCBC
P 1850 1800
F 0 "C2" V 1598 1800 50  0000 C CNN
F 1 "33 pF" V 1689 1800 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1888 1650 50  0001 C CNN
F 3 "~" H 1850 1800 50  0001 C CNN
	1    1850 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 6141E339
P 1850 2100
F 0 "C3" V 2100 2100 50  0000 C CNN
F 1 "33 pF" V 2000 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1888 1950 50  0001 C CNN
F 3 "~" H 1850 2100 50  0001 C CNN
	1    1850 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6141EB88
P 1450 2150
F 0 "#PWR03" H 1450 1900 50  0001 C CNN
F 1 "GND" H 1455 1977 50  0000 C CNN
F 2 "" H 1450 2150 50  0001 C CNN
F 3 "" H 1450 2150 50  0001 C CNN
	1    1450 2150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 61422A79
P 3050 1100
F 0 "#PWR05" H 3050 950 50  0001 C CNN
F 1 "VCC" H 3065 1273 50  0000 C CNN
F 2 "" H 3050 1100 50  0001 C CNN
F 3 "" H 3050 1100 50  0001 C CNN
	1    3050 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1150 3600 1150
Wire Wire Line
	3600 1350 3600 1150
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
P 4100 1200
F 0 "#PWR08" H 4100 950 50  0001 C CNN
F 1 "GND" H 4105 1027 50  0000 C CNN
F 2 "" H 4100 1200 50  0001 C CNN
F 3 "" H 4100 1200 50  0001 C CNN
	1    4100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2100 2300 2100
Wire Wire Line
	2300 1800 2000 1800
Wire Wire Line
	1700 2100 1450 2100
Wire Wire Line
	1450 2100 1450 1800
Wire Wire Line
	1450 1800 1700 1800
Wire Wire Line
	1450 2150 1450 2100
Connection ~ 1450 2100
Wire Wire Line
	4000 1150 4100 1150
Wire Wire Line
	4100 1150 4100 1200
Wire Wire Line
	3200 1150 3050 1150
Connection ~ 3050 1150
Wire Wire Line
	3050 1150 3050 1100
Wire Wire Line
	2300 1800 2750 1800
Wire Wire Line
	2750 1850 2900 1850
Connection ~ 2300 1800
$Comp
L mibe:HDSP-H101 U3
U 1 1 6142D96D
P 8700 3350
F 0 "U3" H 8700 4017 50  0000 C CNN
F 1 "HDSP-H101" H 8700 3926 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A401" H 8700 2800 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 7900 4350 50  0001 C CNN
	1    8700 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 614315F8
P 4400 3050
F 0 "R2" V 4193 3050 50  0000 C CNN
F 1 "R" V 4284 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3050 50  0001 C CNN
F 3 "~" H 4400 3050 50  0001 C CNN
	1    4400 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 61431FEF
P 4400 3150
F 0 "R3" V 4193 3150 50  0000 C CNN
F 1 "130" V 4284 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3150 50  0001 C CNN
F 3 "~" H 4400 3150 50  0001 C CNN
	1    4400 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 6143219D
P 4400 3250
F 0 "R4" V 4607 3250 50  0000 C CNN
F 1 "130" V 4516 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3250 50  0001 C CNN
F 3 "~" H 4400 3250 50  0001 C CNN
	1    4400 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 614322D3
P 4400 3350
F 0 "R5" V 4193 3350 50  0000 C CNN
F 1 "130" V 4284 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3350 50  0001 C CNN
F 3 "~" H 4400 3350 50  0001 C CNN
	1    4400 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 61432453
P 4400 3450
F 0 "R6" V 4193 3450 50  0000 C CNN
F 1 "130" V 4284 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3450 50  0001 C CNN
F 3 "~" H 4400 3450 50  0001 C CNN
	1    4400 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 61432583
P 4400 3550
F 0 "R7" V 4193 3550 50  0000 C CNN
F 1 "130" V 4284 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3550 50  0001 C CNN
F 3 "~" H 4400 3550 50  0001 C CNN
	1    4400 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 614326D3
P 4400 3650
F 0 "R8" V 4193 3650 50  0000 C CNN
F 1 "130" V 4284 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4330 3650 50  0001 C CNN
F 3 "~" H 4400 3650 50  0001 C CNN
	1    4400 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 61432868
P 9600 4000
F 0 "R9" H 9530 3954 50  0000 R CNN
F 1 "130" H 9530 4045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9530 4000 50  0001 C CNN
F 3 "~" H 9600 4000 50  0001 C CNN
	1    9600 4000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 61433008
P 9600 4200
F 0 "#PWR015" H 9600 3950 50  0001 C CNN
F 1 "GND" H 9605 4027 50  0000 C CNN
F 2 "" H 9600 4200 50  0001 C CNN
F 3 "" H 9600 4200 50  0001 C CNN
	1    9600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 4200 9600 4150
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
Wire Bus Line
	9350 2600 8050 2600
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
Entry Wire Line
	9350 2950 9450 3050
Entry Wire Line
	9350 3050 9450 3150
Entry Wire Line
	9350 3150 9450 3250
Entry Wire Line
	9350 3250 9450 3350
Entry Wire Line
	9350 3350 9450 3450
Entry Wire Line
	9350 3450 9450 3550
Entry Wire Line
	9350 3550 9450 3650
Wire Wire Line
	9450 3050 9700 3050
Wire Wire Line
	9700 3150 9450 3150
Wire Wire Line
	9450 3250 9700 3250
Wire Wire Line
	9700 3350 9450 3350
Wire Wire Line
	9450 3450 9700 3450
Wire Wire Line
	9700 3550 9450 3550
Wire Wire Line
	9450 3650 9700 3650
Connection ~ 8050 2600
Wire Bus Line
	8050 2600 5250 2600
Entry Wire Line
	8050 3050 8150 3150
Entry Wire Line
	8050 3150 8150 3250
Entry Wire Line
	8050 3250 8150 3350
Entry Wire Line
	8050 3350 8150 3450
Entry Wire Line
	8050 3450 8150 3550
Entry Wire Line
	8050 3550 8150 3650
Entry Wire Line
	8050 2950 8150 3050
Wire Wire Line
	8150 3050 8400 3050
Wire Wire Line
	8400 3150 8150 3150
Wire Wire Line
	8150 3250 8400 3250
Wire Wire Line
	8400 3350 8150 3350
Wire Wire Line
	8150 3450 8400 3450
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
Text Label 9450 3050 0    50   ~ 0
7S_A
Text Label 9450 3150 0    50   ~ 0
7S_B
Text Label 9450 3250 0    50   ~ 0
7S_C
Text Label 9450 3350 0    50   ~ 0
7S_D
Text Label 9450 3450 0    50   ~ 0
7S_E
Text Label 9450 3550 0    50   ~ 0
7S_F
Text Label 9450 3650 0    50   ~ 0
7S_G
Text Label 4600 3050 0    50   ~ 0
7S_A
Text Label 4600 3150 0    50   ~ 0
7S_B
Text Label 4600 3250 0    50   ~ 0
7S_C
Text Label 4600 3350 0    50   ~ 0
7S_D
Text Label 4600 3450 0    50   ~ 0
7S_E
Text Label 4600 3550 0    50   ~ 0
7S_F
Text Label 4600 3650 0    50   ~ 0
7S_G
Wire Wire Line
	9600 3850 9600 3750
Wire Wire Line
	9600 3750 9700 3750
Wire Wire Line
	2750 1800 2750 1850
Wire Wire Line
	2300 2100 2750 2100
Wire Wire Line
	2750 2100 2750 2050
Wire Wire Line
	2750 2050 2900 2050
Connection ~ 2300 2100
$Comp
L Switch:SW_Push #SW3
U 1 1 6144BFDF
P 5350 1400
F 0 "#SW3" V 5304 1548 50  0000 L CNN
F 1 "SW_Push" V 5395 1548 50  0000 L CNN
F 2 "" H 5350 1600 50  0001 C CNN
F 3 "~" H 5350 1600 50  0001 C CNN
	1    5350 1400
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push #SW1
U 1 1 6144D59E
P 4750 1400
F 0 "#SW1" V 4704 1548 50  0000 L CNN
F 1 "SW_Push" V 4795 1548 50  0000 L CNN
F 2 "" H 4750 1600 50  0001 C CNN
F 3 "~" H 4750 1600 50  0001 C CNN
	1    4750 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 1150 4750 1150
Wire Wire Line
	5350 1150 5350 1200
Connection ~ 4100 1150
Wire Wire Line
	4750 1200 4750 1150
Connection ~ 4750 1150
Wire Wire Line
	4750 1150 5350 1150
Wire Wire Line
	4750 1600 4750 1750
Wire Wire Line
	4750 1750 4100 1750
Wire Wire Line
	4100 1850 5350 1850
Wire Wire Line
	5350 1850 5350 1600
Wire Wire Line
	4100 2650 4400 2650
Wire Wire Line
	4750 2300 4750 2200
Wire Wire Line
	4750 2600 4750 2700
$Comp
L power:GND #PWR011
U 1 1 6146287A
P 4750 2700
F 0 "#PWR011" H 4750 2450 50  0001 C CNN
F 1 "GND" H 4755 2527 50  0000 C CNN
F 2 "" H 4750 2700 50  0001 C CNN
F 3 "" H 4750 2700 50  0001 C CNN
	1    4750 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 61462242
P 4750 2200
F 0 "#PWR010" H 4750 2050 50  0001 C CNN
F 1 "VCC" H 4765 2373 50  0000 C CNN
F 2 "" H 4750 2200 50  0001 C CNN
F 3 "" H 4750 2200 50  0001 C CNN
	1    4750 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 61456388
P 4750 2450
F 0 "RV1" H 4680 2404 50  0000 R CNN
F 1 "10 kOhm" H 4680 2495 50  0000 R CNN
F 2 "" H 4750 2450 50  0001 C CNN
F 3 "~" H 4750 2450 50  0001 C CNN
	1    4750 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 2650 4400 2450
Wire Wire Line
	4400 2450 4600 2450
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
P 1000 7350
F 0 "H1" H 1100 7399 50  0000 L CNN
F 1 "MountingHole_Pad" H 1100 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 1000 7350 50  0001 C CNN
F 3 "~" H 1000 7350 50  0001 C CNN
	1    1000 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 614BCA90
P 1950 7350
F 0 "H2" H 2050 7399 50  0000 L CNN
F 1 "MountingHole_Pad" H 2050 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 1950 7350 50  0001 C CNN
F 3 "~" H 1950 7350 50  0001 C CNN
	1    1950 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 614BD66E
P 2900 7350
F 0 "H3" H 3000 7399 50  0000 L CNN
F 1 "MountingHole_Pad" H 3000 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 2900 7350 50  0001 C CNN
F 3 "~" H 2900 7350 50  0001 C CNN
	1    2900 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 614BDC32
P 3850 7350
F 0 "H4" H 3950 7399 50  0000 L CNN
F 1 "MountingHole_Pad" H 3950 7308 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3850 7350 50  0001 C CNN
F 3 "~" H 3850 7350 50  0001 C CNN
	1    3850 7350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 614BE552
P 1000 7550
F 0 "#PWR02" H 1000 7300 50  0001 C CNN
F 1 "GND" H 1005 7377 50  0000 C CNN
F 2 "" H 1000 7550 50  0001 C CNN
F 3 "" H 1000 7550 50  0001 C CNN
	1    1000 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 7550 1000 7500
Wire Wire Line
	1000 7500 1950 7500
Wire Wire Line
	1950 7500 1950 7450
Connection ~ 1000 7500
Wire Wire Line
	1000 7500 1000 7450
Wire Wire Line
	1950 7500 2900 7500
Wire Wire Line
	2900 7500 2900 7450
Connection ~ 1950 7500
Wire Wire Line
	2900 7500 3850 7500
Wire Wire Line
	3850 7500 3850 7450
Connection ~ 2900 7500
Text Label 4300 1750 0    50   ~ 0
SW_DEC
Text Label 4300 1850 0    50   ~ 0
SW_INC
Text Notes 8850 4150 0    50   ~ 0
If: 15 mA\nVf: ~~ 1.73 V
NoConn ~ 4100 3750
$Comp
L Connector:AVR-ISP-6 J2
U 1 1 614A8B86
P 8350 1500
F 0 "J2" H 8020 1596 50  0000 R CNN
F 1 "AVR-ISP-6" H 8020 1505 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 8100 1550 50  0001 C CNN
F 3 " ~" H 7075 950 50  0001 C CNN
	1    8350 1500
	-1   0    0    -1  
$EndComp
$Comp
L mibe:HDSP-H101 U4
U 1 1 6142F527
P 10000 3350
F 0 "U4" H 10000 4017 50  0000 C CNN
F 1 "HDSP-H101" H 10000 3926 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A401" H 10000 2800 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 9200 4350 50  0001 C CNN
	1    10000 3350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR013
U 1 1 614B0DEC
P 8450 900
F 0 "#PWR013" H 8450 750 50  0001 C CNN
F 1 "VCC" H 8465 1073 50  0000 C CNN
F 2 "" H 8450 900 50  0001 C CNN
F 3 "" H 8450 900 50  0001 C CNN
	1    8450 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 614B1547
P 8450 2000
F 0 "#PWR014" H 8450 1750 50  0001 C CNN
F 1 "GND" H 8455 1827 50  0000 C CNN
F 2 "" H 8450 2000 50  0001 C CNN
F 3 "" H 8450 2000 50  0001 C CNN
	1    8450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 900  8450 1000
Wire Wire Line
	8450 1900 8450 2000
Text GLabel 2750 1650 0    50   Input ~ 0
~RESET
Wire Wire Line
	2750 1650 2900 1650
Text GLabel 7750 1600 0    50   Output ~ 0
~RESET
Text GLabel 4400 2050 2    50   Output ~ 0
MISO
Text GLabel 4400 1950 2    50   Input ~ 0
MOSI
Text GLabel 4400 2150 2    50   Input ~ 0
SCK
Text GLabel 7750 1500 0    50   Output ~ 0
SCK
Text GLabel 7750 1300 0    50   Input ~ 0
MISO
Text GLabel 7750 1400 0    50   Output ~ 0
MOSI
Wire Wire Line
	7750 1300 7950 1300
Wire Wire Line
	7950 1400 7750 1400
Wire Wire Line
	7750 1500 7950 1500
Wire Wire Line
	7950 1600 7750 1600
Wire Wire Line
	4400 2150 4100 2150
Wire Wire Line
	4400 1950 4100 1950
Wire Wire Line
	4100 2050 4400 2050
Wire Bus Line
	8050 2600 8050 3650
Wire Bus Line
	9350 2600 9350 3650
Wire Bus Line
	5250 2600 5250 3750
Text Notes 5400 6150 0    50   ~ 0
nominal\nvoltage:\n3.7 V
$Comp
L Switch:SW_SPST #SW2
U 1 1 6148AECB
P 4900 5700
F 0 "#SW2" H 4900 5935 50  0000 C CNN
F 1 "SW_SPST" H 4900 5844 50  0000 C CNN
F 2 "" H 4900 5700 50  0001 C CNN
F 3 "~" H 4900 5700 50  0001 C CNN
	1    4900 5700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 6149EAE3
P 5400 5650
F 0 "#PWR012" H 5400 5500 50  0001 C CNN
F 1 "VCC" H 5415 5823 50  0000 C CNN
F 2 "" H 5400 5650 50  0001 C CNN
F 3 "" H 5400 5650 50  0001 C CNN
	1    5400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5700 5400 5700
Wire Wire Line
	5400 5700 5400 5650
Wire Wire Line
	1500 5400 1300 5400
Wire Wire Line
	1500 6000 1500 5400
Wire Wire Line
	1500 6400 1000 6400
Connection ~ 1500 6400
Wire Wire Line
	1500 6300 1500 6400
Wire Wire Line
	3950 6400 4400 6400
Connection ~ 3950 6400
Wire Wire Line
	3950 6200 3950 6400
Wire Wire Line
	3950 5900 3950 5700
$Comp
L Device:C C5
U 1 1 614CCC8B
P 3950 6050
F 0 "C5" H 4065 6096 50  0000 L CNN
F 1 "C" H 4065 6005 50  0000 L CNN
F 2 "" H 3988 5900 50  0001 C CNN
F 3 "~" H 3950 6050 50  0001 C CNN
	1    3950 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 614CBA2F
P 1500 6150
F 0 "C4" H 1615 6196 50  0000 L CNN
F 1 "C" H 1615 6105 50  0000 L CNN
F 2 "" H 1538 6000 50  0001 C CNN
F 3 "~" H 1500 6150 50  0001 C CNN
	1    1500 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5900 3050 5900
Text GLabel 3200 5900 2    50   Output ~ 0
CHARGE_LED
Wire Wire Line
	4400 5700 4700 5700
Wire Wire Line
	3950 5700 4400 5700
Connection ~ 4400 5700
Wire Wire Line
	4400 5700 4400 5650
$Comp
L power:+BATT #PWR09
U 1 1 6149F617
P 4400 5650
F 0 "#PWR09" H 4400 5500 50  0001 C CNN
F 1 "+BATT" H 4415 5823 50  0000 C CNN
F 2 "" H 4400 5650 50  0001 C CNN
F 3 "" H 4400 5650 50  0001 C CNN
	1    4400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5900 2250 5900
Wire Wire Line
	2050 6000 2050 5900
Wire Wire Line
	2050 6400 1500 6400
Connection ~ 2050 6400
Wire Wire Line
	2050 6300 2050 6400
$Comp
L Device:R R1
U 1 1 6149905F
P 2050 6150
F 0 "R1" H 2120 6196 50  0000 L CNN
F 1 "R" H 2120 6105 50  0000 L CNN
F 2 "" V 1980 6150 50  0001 C CNN
F 3 "~" H 2050 6150 50  0001 C CNN
	1    2050 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6400 4400 6200
Wire Wire Line
	1000 6400 1000 6450
Connection ~ 1000 6400
Wire Wire Line
	1000 6000 1000 6400
Wire Wire Line
	4400 5700 4400 5900
Connection ~ 3950 5700
Wire Wire Line
	3050 5700 3950 5700
NoConn ~ 1300 5800
NoConn ~ 1300 5700
NoConn ~ 1300 5600
Wire Wire Line
	2650 6400 3950 6400
Wire Wire Line
	2650 6400 2050 6400
Connection ~ 2650 6400
Wire Wire Line
	2650 6100 2650 6400
Connection ~ 1500 5400
Wire Wire Line
	2650 5400 1500 5400
Wire Wire Line
	2650 5500 2650 5400
$Comp
L Battery_Management:MCP73831-2-OT U1
U 1 1 6142838A
P 2650 5800
F 0 "U1" H 2750 6200 50  0000 L CNN
F 1 "MCP73831-2-OT" H 2750 6100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2700 5550 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 2500 5750 50  0001 C CNN
	1    2650 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J1
U 1 1 61439C57
P 1000 5600
F 0 "J1" H 1057 6067 50  0000 C CNN
F 1 "USB_B_Mini" H 1057 5976 50  0000 C CNN
F 2 "mibe:USB_Mini-B_Reichelt_BWM" H 1150 5550 50  0001 C CNN
F 3 "~" H 1150 5550 50  0001 C CNN
	1    1000 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61439440
P 1000 6450
F 0 "#PWR01" H 1000 6200 50  0001 C CNN
F 1 "GND" H 1005 6277 50  0000 C CNN
F 2 "" H 1000 6450 50  0001 C CNN
F 3 "" H 1000 6450 50  0001 C CNN
	1    1000 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 6143801A
P 4400 6100
F 0 "BT1" H 4518 6196 50  0000 L CNN
F 1 "Battery_Cell" H 4518 6105 50  0000 L CNN
F 2 "" V 4400 6160 50  0001 C CNN
F 3 "~" V 4400 6160 50  0001 C CNN
	1    4400 6100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
