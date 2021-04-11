EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "tiny-UPDI-burner"
Date "2021-04-09"
Rev "1"
Comp "Michael Bemmerl"
Comment1 "Open Hardware: CERN OHL v1.2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60665088
P 10100 850
F 0 "H1" H 10200 899 50  0000 L CNN
F 1 "MountingHole_Pad" H 10200 808 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 10100 850 50  0001 C CNN
F 3 "~" H 10100 850 50  0001 C CNN
	1    10100 850 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 606656CA
P 10100 1300
F 0 "H2" H 10200 1349 50  0000 L CNN
F 1 "MountingHole_Pad" H 10200 1258 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 10100 1300 50  0001 C CNN
F 3 "~" H 10100 1300 50  0001 C CNN
	1    10100 1300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 60665C26
P 10100 1750
F 0 "H3" H 10200 1799 50  0000 L CNN
F 1 "MountingHole_Pad" H 10200 1708 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 10100 1750 50  0001 C CNN
F 3 "~" H 10100 1750 50  0001 C CNN
	1    10100 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60665E7C
P 10100 2200
F 0 "H4" H 10200 2249 50  0000 L CNN
F 1 "MountingHole_Pad" H 10200 2158 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 10100 2200 50  0001 C CNN
F 3 "~" H 10100 2200 50  0001 C CNN
	1    10100 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT R1
U 1 1 60668454
P 4550 3750
F 0 "R1" H 4481 3796 50  0000 R CNN
F 1 "10k" H 4481 3705 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical_Hole" H 4550 3750 50  0001 C CNN
F 3 "~" H 4550 3750 50  0001 C CNN
	1    4550 3750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:DB9_Female J1
U 1 1 6066B6B8
P 2600 3750
F 0 "J1" H 2780 3796 50  0000 L CNN
F 1 "DB9_Female" H 2780 3705 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-9_Female_Horizontal_P2.77x2.54mm_EdgePinOffset9.40mm" H 2600 3750 50  0001 C CNN
F 3 " ~" H 2600 3750 50  0001 C CNN
	1    2600 3750
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 60683CB6
P 5800 3750
F 0 "J4" H 5908 4031 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5908 3940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5800 3750 50  0001 C CNN
F 3 "~" H 5800 3750 50  0001 C CNN
	1    5800 3750
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J2
U 1 1 606880C7
P 7100 3750
F 0 "J2" H 6900 3150 50  0000 L CNN
F 1 "Conn_01x10_Female" H 6900 3050 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 7100 3750 50  0001 C CNN
F 3 "~" H 7100 3750 50  0001 C CNN
	1    7100 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J3
U 1 1 60688BDD
P 7700 3750
F 0 "J3" H 7550 3150 50  0000 L CNN
F 1 "Conn_01x10_Female" H 6900 3050 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 7700 3750 50  0001 C CNN
F 3 "~" H 7700 3750 50  0001 C CNN
	1    7700 3750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6068E36B
P 4100 5150
F 0 "#PWR0101" H 4100 4900 50  0001 C CNN
F 1 "GND" H 4105 4977 50  0000 C CNN
F 2 "" H 4100 5150 50  0001 C CNN
F 3 "" H 4100 5150 50  0001 C CNN
	1    4100 5150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 6068EB38
P 4100 3350
F 0 "#PWR0102" H 4100 3200 50  0001 C CNN
F 1 "VCC" H 4115 3523 50  0000 C CNN
F 2 "" H 4100 3350 50  0001 C CNN
F 3 "" H 4100 3350 50  0001 C CNN
	1    4100 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6068FCF7
P 7400 3050
F 0 "C1" H 7515 3096 50  0000 L CNN
F 1 "100n" H 7515 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7438 2900 50  0001 C CNN
F 3 "~" H 7400 3050 50  0001 C CNN
	1    7400 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2900 4150 4100 4150
Wire Wire Line
	4100 4150 4100 4950
Text Notes 7300 3800 0    50   ~ 0
Chip\nsits\nhere,\naligned\nto the\ntop
Text Notes 6900 3250 0    50   ~ 0
Pin 1
Text Notes 7700 3250 0    50   ~ 0
Pin 8 / 14 / 20
$Comp
L power:GND #PWR0103
U 1 1 606CF464
P 10100 2300
F 0 "#PWR0103" H 10100 2050 50  0001 C CNN
F 1 "GND" H 10105 2127 50  0000 C CNN
F 2 "" H 10100 2300 50  0001 C CNN
F 3 "" H 10100 2300 50  0001 C CNN
	1    10100 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 606D003A
P 10100 1850
F 0 "#PWR0104" H 10100 1600 50  0001 C CNN
F 1 "GND" H 10105 1677 50  0000 C CNN
F 2 "" H 10100 1850 50  0001 C CNN
F 3 "" H 10100 1850 50  0001 C CNN
	1    10100 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 606D16FF
P 10100 1400
F 0 "#PWR0105" H 10100 1150 50  0001 C CNN
F 1 "GND" H 10105 1227 50  0000 C CNN
F 2 "" H 10100 1400 50  0001 C CNN
F 3 "" H 10100 1400 50  0001 C CNN
	1    10100 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 606D219A
P 10100 950
F 0 "#PWR0106" H 10100 700 50  0001 C CNN
F 1 "GND" H 10105 777 50  0000 C CNN
F 2 "" H 10100 950 50  0001 C CNN
F 3 "" H 10100 950 50  0001 C CNN
	1    10100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3750 4400 3750
Wire Wire Line
	5600 3750 4950 3750
Wire Wire Line
	4950 3750 4950 3550
Wire Wire Line
	4950 3550 4550 3550
Wire Wire Line
	4550 3550 4550 3600
Wire Wire Line
	2900 3550 4550 3550
Connection ~ 4550 3550
Wire Wire Line
	5600 3850 5550 3850
Wire Wire Line
	5550 3850 5550 4750
Wire Wire Line
	5550 4750 8950 4750
Wire Wire Line
	5600 3650 5450 3650
Wire Wire Line
	5450 3650 5450 4850
Wire Wire Line
	5450 4850 9050 4850
Wire Wire Line
	9050 4850 9050 3550
Wire Wire Line
	9050 3550 7900 3550
Wire Wire Line
	8950 3750 7900 3750
Wire Wire Line
	8950 4750 8950 3750
Text Label 3700 3750 0    50   ~ 0
TxD
Text Label 3700 3550 0    50   ~ 0
RxD
Text Label 8400 3550 0    50   ~ 0
UPDI_8
Text Label 8400 3750 0    50   ~ 0
UPDI_14-20
Wire Wire Line
	6750 3350 6750 3050
Wire Wire Line
	6750 3050 7250 3050
Wire Wire Line
	4100 3350 4450 3350
Wire Wire Line
	6750 3350 6900 3350
Connection ~ 6750 3350
Wire Wire Line
	4100 4950 4450 4950
Wire Wire Line
	9150 4950 9150 3350
Wire Wire Line
	9150 3350 7900 3350
Connection ~ 4100 4950
Wire Wire Line
	4100 4950 4100 5150
Wire Wire Line
	7550 3050 9150 3050
Wire Wire Line
	9150 3050 9150 3350
Connection ~ 9150 3350
NoConn ~ 2900 3350
NoConn ~ 2900 3850
NoConn ~ 2900 4050
NoConn ~ 2900 3450
NoConn ~ 6900 3450
NoConn ~ 6900 3550
NoConn ~ 6900 3750
NoConn ~ 6900 3650
NoConn ~ 6900 3850
NoConn ~ 6900 3950
NoConn ~ 6900 4050
NoConn ~ 6900 4150
NoConn ~ 6900 4250
NoConn ~ 7900 4250
NoConn ~ 7900 4150
NoConn ~ 7900 4050
NoConn ~ 7900 3950
NoConn ~ 7900 3850
NoConn ~ 7900 3650
NoConn ~ 7900 3450
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 606E58BF
P 4450 3350
F 0 "#FLG0101" H 4450 3425 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 3523 50  0000 C CNN
F 2 "" H 4450 3350 50  0001 C CNN
F 3 "~" H 4450 3350 50  0001 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
Connection ~ 4450 3350
Wire Wire Line
	4450 3350 6750 3350
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 606E6019
P 4450 5150
F 0 "#FLG0102" H 4450 5225 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 5323 50  0000 C CNN
F 2 "" H 4450 5150 50  0001 C CNN
F 3 "~" H 4450 5150 50  0001 C CNN
	1    4450 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 5150 4450 4950
Connection ~ 4450 4950
Wire Wire Line
	4450 4950 9150 4950
NoConn ~ 4700 3750
Text Notes 5900 3850 0    50   ~ 0
Jumper for\nIC package\nselection
Wire Wire Line
	2900 3650 3250 3650
Wire Wire Line
	3250 3650 3250 3350
Wire Wire Line
	3250 3350 4100 3350
Connection ~ 4100 3350
Wire Wire Line
	2900 3950 3250 3950
Wire Wire Line
	3250 3950 3250 3650
Connection ~ 3250 3650
Text Notes 3000 3250 0    50   ~ 0
DTR & RTS as\npower source
$EndSCHEMATC
