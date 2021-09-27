EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MCP73831-BB"
Date "2021-09-27"
Rev "1"
Comp "Michael Bemmerl"
Comment1 "Open Hardware: CERN OHL v1.2"
Comment2 ""
Comment3 ""
Comment4 "A breakout board for the MCP73831 Li-Ion / Li-Polymer charger."
$EndDescr
$Comp
L Battery_Management:MCP73831-2-OT U1
U 1 1 61521483
P 5550 3250
F 0 "U1" H 5200 3400 50  0000 R CNN
F 1 "MCP73831" H 5200 3300 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5600 3000 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 5400 3200 50  0001 C CNN
	1    5550 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 6152211F
P 5550 2850
F 0 "#PWR01" H 5550 2700 50  0001 C CNN
F 1 "VCC" H 5565 3023 50  0000 C CNN
F 2 "" H 5550 2850 50  0001 C CNN
F 3 "" H 5550 2850 50  0001 C CNN
	1    5550 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6152236B
P 4750 3600
F 0 "R1" H 4820 3646 50  0000 L CNN
F 1 "2,49 kΩ" H 4820 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4680 3600 50  0001 C CNN
F 3 "~" H 4750 3600 50  0001 C CNN
	1    4750 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 615224E0
P 8550 3600
F 0 "C2" H 8665 3646 50  0000 L CNN
F 1 "4,7 µF" H 8665 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8588 3450 50  0001 C CNN
F 3 "~" H 8550 3600 50  0001 C CNN
F 4 "MLCC, X7R, 16 V" H 8550 3600 50  0001 C CNN "Characteristics"
	1    8550 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 61523292
P 6900 4200
F 0 "D2" V 6939 4082 50  0000 R CNN
F 1 "Green LED" V 6848 4082 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6900 4200 50  0001 C CNN
F 3 "~" H 6900 4200 50  0001 C CNN
	1    6900 4200
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 615249B0
P 9500 3500
F 0 "J2" H 9580 3492 50  0000 L CNN
F 1 "Conn_01x02" H 9580 3401 50  0000 L CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 9500 3500 50  0001 C CNN
F 3 "~" H 9500 3500 50  0001 C CNN
	1    9500 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61524ED2
P 3350 3600
F 0 "C1" H 3465 3646 50  0000 L CNN
F 1 "4,7 µF" H 3465 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3388 3450 50  0001 C CNN
F 3 "~" H 3350 3600 50  0001 C CNN
F 4 "MLCC, X7R, 16 V" H 3350 3600 50  0001 C CNN "Characteristics"
	1    3350 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J1
U 1 1 61525FF4
P 2500 3100
F 0 "J1" H 2557 3567 50  0000 C CNN
F 1 "USB_B_Mini" H 2557 3476 50  0000 C CNN
F 2 "mibe:USB_Mini-B_Reichelt_BWM" H 2650 3050 50  0001 C CNN
F 3 "~" H 2650 3050 50  0001 C CNN
	1    2500 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:D_TVS D1
U 1 1 6152882C
P 4000 3600
F 0 "D1" V 3954 3680 50  0000 L CNN
F 1 "SMAJ5.0A" V 4045 3680 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 4000 3600 50  0001 C CNN
F 3 "~" H 4000 3600 50  0001 C CNN
	1    4000 3600
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 6152A188
P 6300 2550
F 0 "J3" V 6264 2262 50  0000 R CNN
F 1 "Conn_01x04" V 6173 2262 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6300 2550 50  0001 C CNN
F 3 "~" H 6300 2550 50  0001 C CNN
	1    6300 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 6152AF9D
P 6900 3600
F 0 "R3" H 6970 3646 50  0000 L CNN
F 1 "330 Ω" H 6970 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6830 3600 50  0001 C CNN
F 3 "~" H 6900 3600 50  0001 C CNN
	1    6900 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 61530ECD
P 5100 4200
F 0 "RV1" H 5030 4154 50  0000 R CNN
F 1 "100 kΩ" H 5030 4245 50  0000 R CNN
F 2 "mibe:Potentiometer_Bourns_3361P_Vertical" H 5100 4200 50  0001 C CNN
F 3 "~" H 5100 4200 50  0001 C CNN
	1    5100 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 615321FE
P 4500 4200
F 0 "R2" H 4570 4246 50  0000 L CNN
F 1 "187 kΩ" H 4570 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4430 4200 50  0001 C CNN
F 3 "~" H 4500 4200 50  0001 C CNN
	1    4500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3900 4750 3900
Wire Wire Line
	4750 3900 4750 3750
Wire Wire Line
	4750 3450 4750 3350
Wire Wire Line
	4750 3350 5150 3350
Wire Wire Line
	2500 4800 3350 4800
Wire Wire Line
	4500 4800 4500 4350
Wire Wire Line
	4500 4800 5100 4800
Wire Wire Line
	5100 4800 5100 4350
Connection ~ 4500 4800
Wire Wire Line
	5100 4800 5550 4800
Connection ~ 5100 4800
Wire Wire Line
	6900 4800 6900 4350
Connection ~ 5550 4800
Wire Wire Line
	8550 4800 8550 3750
$Comp
L power:GND #PWR02
U 1 1 61535686
P 5550 4950
F 0 "#PWR02" H 5550 4700 50  0001 C CNN
F 1 "GND" H 5555 4777 50  0000 C CNN
F 2 "" H 5550 4950 50  0001 C CNN
F 3 "" H 5550 4950 50  0001 C CNN
	1    5550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3550 5550 4800
Wire Wire Line
	6900 3750 6900 4050
Wire Wire Line
	8550 3450 8550 3150
Wire Wire Line
	8550 3150 6500 3150
Wire Wire Line
	6900 3350 6900 3450
Wire Wire Line
	2800 2900 3350 2900
Wire Wire Line
	3350 2900 3350 3450
Wire Wire Line
	3350 2900 4000 2900
Wire Wire Line
	4000 2900 4000 3450
Connection ~ 3350 2900
Wire Wire Line
	4000 3750 4000 4800
Connection ~ 4000 4800
Wire Wire Line
	4000 4800 4500 4800
Wire Wire Line
	3350 3750 3350 4800
Connection ~ 3350 4800
Wire Wire Line
	3350 4800 4000 4800
Wire Wire Line
	5550 4800 5550 4950
Wire Wire Line
	4000 2900 5550 2900
Wire Wire Line
	5550 2900 5550 2950
Connection ~ 4000 2900
Wire Wire Line
	8550 4800 9200 4800
Wire Wire Line
	9200 4800 9200 3600
Wire Wire Line
	9200 3600 9300 3600
Wire Wire Line
	9300 3500 9200 3500
Wire Wire Line
	9200 3500 9200 3150
Wire Wire Line
	9200 3150 8550 3150
Connection ~ 8550 3150
Wire Wire Line
	5550 2900 6200 2900
Wire Wire Line
	6200 2900 6200 2750
Connection ~ 5550 2900
Wire Wire Line
	6400 2750 6400 3350
Connection ~ 6400 3350
Wire Wire Line
	6500 2750 6500 3150
Wire Wire Line
	5550 2900 5550 2850
Wire Wire Line
	4750 3900 4900 3900
Wire Wire Line
	4900 3900 4900 4200
Wire Wire Line
	4900 4200 4950 4200
Connection ~ 4750 3900
NoConn ~ 5100 4050
NoConn ~ 2800 3100
NoConn ~ 2800 3200
NoConn ~ 2800 3300
Wire Wire Line
	2500 3600 2500 4800
Wire Wire Line
	2500 3500 2500 3600
Connection ~ 2500 3600
Wire Wire Line
	2400 3500 2400 3600
Wire Wire Line
	2400 3600 2500 3600
Wire Wire Line
	6400 3350 6900 3350
Wire Wire Line
	5950 3350 6400 3350
Wire Wire Line
	5550 4800 6300 4800
Wire Wire Line
	6300 2750 6300 4800
Connection ~ 6300 4800
Text Notes 8050 3100 0    50   ~ 0
Imax: 401 mA due to R1
Text Notes 9450 3400 0    50   ~ 0
Battery connected here
$Comp
L Device:R R4
U 1 1 6155E8EE
P 7800 3600
F 0 "R4" H 7870 3646 50  0000 L CNN
F 1 "390 Ω" H 7870 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7730 3600 50  0001 C CNN
F 3 "~" H 7800 3600 50  0001 C CNN
	1    7800 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 61563BF8
P 7800 4200
F 0 "D3" V 7839 4082 50  0000 R CNN
F 1 "Red LED" V 7748 4082 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7800 4200 50  0001 C CNN
F 3 "~" H 7800 4200 50  0001 C CNN
	1    7800 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 2900 7800 2900
Wire Wire Line
	7800 2900 7800 3450
Connection ~ 6200 2900
Wire Wire Line
	7800 3750 7800 4050
Wire Wire Line
	7800 4350 7800 4550
Wire Wire Line
	7800 4550 7500 4550
Wire Wire Line
	7500 4550 7500 3350
Wire Wire Line
	7500 3350 6900 3350
Connection ~ 6900 3350
Wire Wire Line
	6300 4800 6900 4800
Wire Wire Line
	5950 3150 6500 3150
Connection ~ 6500 3150
Wire Wire Line
	6900 4800 8550 4800
Connection ~ 6900 4800
Connection ~ 8550 4800
Text Label 7300 2900 0    50   ~ 0
VCC
Text Label 7300 3150 0    50   ~ 0
VBAT
Text Label 7300 3350 0    50   ~ 0
STAT
Text Label 7300 4800 0    50   ~ 0
GND
Wire Wire Line
	4500 4050 4500 3900
$EndSCHEMATC
