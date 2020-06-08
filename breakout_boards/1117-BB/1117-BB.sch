EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "1117-BB"
Date "2020-06-08"
Rev "1"
Comp "Michael Bemmerl"
Comment1 "Open Hardware: CERN OHL v1.2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:LT1117-ADJ U1
U 1 1 5EDAE787
P 6850 3100
F 0 "U1" H 6850 3342 50  0000 C CNN
F 1 "LT1117-ADJ" H 6850 3251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6850 3100 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1117fd.pdf" H 6850 3100 50  0001 C CNN
	1    6850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5EDAEE54
P 5450 3600
F 0 "C1" H 5568 3646 50  0000 L CNN
F 1 "TAJB106K020SNJ" H 5568 3555 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 5488 3450 50  0001 C CNN
F 3 "~" H 5450 3600 50  0001 C CNN
F 4 "10%" H 5450 3600 50  0001 C CNN "Characteristics"
	1    5450 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT R2
U 1 1 5EDAF6EC
P 6850 4200
F 0 "R2" H 6780 4246 50  0000 R CNN
F 1 "3361P-1-202GLF" H 6780 4155 50  0000 R CNN
F 2 "mibe:Potentiometer_Bourns_3361P_Vertical" V 6780 4200 50  0001 C CNN
F 3 "~" H 6850 4200 50  0001 C CNN
F 4 "10%" H 6850 4200 50  0001 C CNN "Characteristics"
	1    6850 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EDAFE6D
P 7450 3450
F 0 "R1" H 7520 3496 50  0000 L CNN
F 1 "150" H 7520 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7380 3450 50  0001 C CNN
F 3 "~" H 7450 3450 50  0001 C CNN
F 4 "1%" H 7450 3450 50  0001 C CNN "Characteristics"
	1    7450 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5EDB0665
P 3150 3600
F 0 "J1" H 3200 3917 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 3200 3826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" H 3150 3600 50  0001 C CNN
F 3 "~" H 3150 3600 50  0001 C CNN
	1    3150 3600
	1    0    0    -1  
$EndComp
Text Notes 6100 4400 0    50   ~ 0
2 k
$Comp
L power:GND #PWR0101
U 1 1 5EDC1A78
P 2500 3600
F 0 "#PWR0101" H 2500 3350 50  0001 C CNN
F 1 "GND" V 2505 3472 50  0000 R CNN
F 2 "" H 2500 3600 50  0001 C CNN
F 3 "" H 2500 3600 50  0001 C CNN
	1    2500 3600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EDC1FCE
P 6850 4800
F 0 "#PWR0102" H 6850 4550 50  0001 C CNN
F 1 "GND" H 6855 4627 50  0000 C CNN
F 2 "" H 6850 4800 50  0001 C CNN
F 3 "" H 6850 4800 50  0001 C CNN
	1    6850 4800
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0103
U 1 1 5EDC272B
P 2500 3500
F 0 "#PWR0103" H 2500 3350 50  0001 C CNN
F 1 "VBUS" H 2515 3673 50  0000 C CNN
F 2 "" H 2500 3500 50  0001 C CNN
F 3 "" H 2500 3500 50  0001 C CNN
	1    2500 3500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5EDC2E53
P 2500 3700
F 0 "#PWR0104" H 2500 3550 50  0001 C CNN
F 1 "VCC" H 2518 3873 50  0000 C CNN
F 2 "" H 2500 3700 50  0001 C CNN
F 3 "" H 2500 3700 50  0001 C CNN
	1    2500 3700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EDC541A
P 3900 3600
F 0 "#PWR0105" H 3900 3350 50  0001 C CNN
F 1 "GND" V 3905 3472 50  0000 R CNN
F 2 "" H 3900 3600 50  0001 C CNN
F 3 "" H 3900 3600 50  0001 C CNN
	1    3900 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:VBUS #PWR0106
U 1 1 5EDC5420
P 3900 3500
F 0 "#PWR0106" H 3900 3350 50  0001 C CNN
F 1 "VBUS" H 3915 3673 50  0000 C CNN
F 2 "" H 3900 3500 50  0001 C CNN
F 3 "" H 3900 3500 50  0001 C CNN
	1    3900 3500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 5EDC5426
P 3900 3700
F 0 "#PWR0107" H 3900 3550 50  0001 C CNN
F 1 "VCC" H 3918 3873 50  0000 C CNN
F 2 "" H 3900 3700 50  0001 C CNN
F 3 "" H 3900 3700 50  0001 C CNN
	1    3900 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 3500 2950 3500
Wire Wire Line
	2950 3600 2500 3600
Wire Wire Line
	2500 3700 2950 3700
Wire Wire Line
	3900 3700 3450 3700
Wire Wire Line
	3900 3600 3450 3600
Wire Wire Line
	3450 3500 3900 3500
$Comp
L power:VBUS #PWR0108
U 1 1 5EDC9669
P 5450 3000
F 0 "#PWR0108" H 5450 2850 50  0001 C CNN
F 1 "VBUS" H 5465 3173 50  0000 C CNN
F 2 "" H 5450 3000 50  0001 C CNN
F 3 "" H 5450 3000 50  0001 C CNN
	1    5450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3000 5450 3100
Connection ~ 5450 3100
Wire Wire Line
	5450 3100 5450 3450
Wire Wire Line
	5450 4700 5450 3750
Connection ~ 6850 4700
Wire Wire Line
	7450 3600 7450 3750
Wire Wire Line
	7450 3750 6850 3750
Wire Wire Line
	6850 3750 6850 3400
Wire Wire Line
	7450 3300 7450 3100
Connection ~ 7450 3100
Wire Wire Line
	6850 4050 6850 3750
Connection ~ 6850 3750
Wire Wire Line
	7000 4200 7150 4200
Wire Wire Line
	7150 4200 7150 4500
Wire Wire Line
	7150 4500 6850 4500
Wire Wire Line
	6850 4500 6850 4700
Wire Wire Line
	7450 3100 7150 3100
Wire Wire Line
	6850 4700 6500 4700
Wire Wire Line
	8350 3750 8350 4700
Connection ~ 8350 3100
Wire Wire Line
	8350 3450 8350 3100
Wire Wire Line
	8350 3100 8350 2900
$Comp
L power:VCC #PWR0109
U 1 1 5EDCA078
P 8350 2900
F 0 "#PWR0109" H 8350 2750 50  0001 C CNN
F 1 "VCC" H 8367 3073 50  0000 C CNN
F 2 "" H 8350 2900 50  0001 C CNN
F 3 "" H 8350 2900 50  0001 C CNN
	1    8350 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5EDAFC01
P 8350 3600
F 0 "C2" H 8468 3646 50  0000 L CNN
F 1 "TAJB226K020RNJV" H 8468 3555 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 8388 3450 50  0001 C CNN
F 3 "~" H 8350 3600 50  0001 C CNN
F 4 "10%" H 8350 3600 50  0001 C CNN "Characteristics"
	1    8350 3600
	1    0    0    -1  
$EndComp
Text Notes 5600 3800 0    50   ~ 0
10 µF
Text Notes 8500 3800 0    50   ~ 0
22 µF
Text Notes 6150 3350 0    50   ~ 0
or any other\nadjustable\n*1117
NoConn ~ 6850 4350
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EDD5EDB
P 6500 4800
F 0 "#FLG0102" H 6500 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 4973 50  0000 C CNN
F 2 "" H 6500 4800 50  0001 C CNN
F 3 "~" H 6500 4800 50  0001 C CNN
	1    6500 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 3000 5800 3100
Connection ~ 5800 3100
Wire Wire Line
	5800 3100 5450 3100
Wire Wire Line
	7450 3100 8350 3100
Wire Wire Line
	6850 4800 6850 4700
$Comp
L Device:CP C3
U 1 1 5EDE1F48
P 7450 4200
F 0 "C3" H 7568 4246 50  0000 L CNN
F 1 "TAJB226K020RNJV" H 7568 4155 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 7488 4050 50  0001 C CNN
F 3 "~" H 7450 4200 50  0001 C CNN
F 4 "10%" H 7450 4200 50  0001 C CNN "Characteristics"
	1    7450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4050 7450 3750
Connection ~ 7450 3750
Wire Wire Line
	7450 4350 7450 4700
Connection ~ 7450 4700
Wire Wire Line
	7450 4700 6850 4700
Text Notes 7650 4400 0    50   ~ 0
22 µF
Wire Wire Line
	7450 4700 8350 4700
Wire Wire Line
	6500 4800 6500 4700
Connection ~ 6500 4700
Wire Wire Line
	6500 4700 5450 4700
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EDD4C79
P 5800 3000
F 0 "#FLG0101" H 5800 3075 50  0001 C CNN
F 1 "PWR_FLAG" H 5800 3173 50  0000 C CNN
F 2 "" H 5800 3000 50  0001 C CNN
F 3 "~" H 5800 3000 50  0001 C CNN
	1    5800 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5EDEAEE9
P 6850 2600
F 0 "D1" H 6850 2816 50  0000 C CNN
F 1 "SD103BW" H 6850 2725 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6850 2600 50  0001 C CNN
F 3 "~" H 6850 2600 50  0001 C CNN
	1    6850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3100 7450 2600
Wire Wire Line
	7450 2600 7000 2600
Wire Wire Line
	6550 3100 6250 3100
Wire Wire Line
	6700 2600 6250 2600
Wire Wire Line
	6250 2600 6250 3100
Connection ~ 6250 3100
Wire Wire Line
	6250 3100 5800 3100
Text Label 7000 3750 0    50   ~ 0
ADJ
$EndSCHEMATC
