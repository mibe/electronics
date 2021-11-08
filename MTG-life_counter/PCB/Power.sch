EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 7450 3950 0    50   ~ 0
nominal\nvoltage:\n3.7 V
$Comp
L Switch:SW_SPST #SW2
U 1 1 61840AEE
P 6950 3500
F 0 "#SW2" H 6950 3735 50  0000 C CNN
F 1 "SW_SPST" H 6950 3644 50  0000 C CNN
F 2 "" H 6950 3500 50  0001 C CNN
F 3 "~" H 6950 3500 50  0001 C CNN
	1    6950 3500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 61840AF4
P 7450 3450
F 0 "#PWR012" H 7450 3300 50  0001 C CNN
F 1 "VCC" H 7465 3623 50  0000 C CNN
F 2 "" H 7450 3450 50  0001 C CNN
F 3 "" H 7450 3450 50  0001 C CNN
	1    7450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3500 7450 3500
Wire Wire Line
	7450 3500 7450 3450
Wire Wire Line
	2800 2700 2600 2700
Wire Wire Line
	2800 3800 2800 2700
Wire Wire Line
	2800 4450 2300 4450
Connection ~ 2800 4450
Wire Wire Line
	2800 4100 2800 4450
Wire Wire Line
	5750 4450 6450 4450
Wire Wire Line
	5750 4100 5750 4450
Wire Wire Line
	5750 3800 5750 3500
$Comp
L Device:C C5
U 1 1 61840B05
P 5750 3950
F 0 "C5" H 5865 3996 50  0000 L CNN
F 1 "4,7 µF" H 5865 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5788 3800 50  0001 C CNN
F 3 "~" H 5750 3950 50  0001 C CNN
	1    5750 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61840B0B
P 2800 3950
F 0 "C4" H 2915 3996 50  0000 L CNN
F 1 "4,7 µF" H 2915 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2838 3800 50  0001 C CNN
F 3 "~" H 2800 3950 50  0001 C CNN
	1    2800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3700 4850 3700
Text GLabel 5000 3700 2    50   Output ~ 0
CHARGE_LED
Wire Wire Line
	6450 3500 6750 3500
Wire Wire Line
	5750 3500 6450 3500
Connection ~ 6450 3500
Wire Wire Line
	6450 3500 6450 3450
$Comp
L power:+BATT #PWR09
U 1 1 61840B17
P 6450 3450
F 0 "#PWR09" H 6450 3300 50  0001 C CNN
F 1 "+BATT" H 6465 3623 50  0000 C CNN
F 2 "" H 6450 3450 50  0001 C CNN
F 3 "" H 6450 3450 50  0001 C CNN
	1    6450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3700 4050 3700
Wire Wire Line
	3850 3800 3850 3700
Wire Wire Line
	3850 4450 3300 4450
Wire Wire Line
	3850 4100 3850 4450
$Comp
L Device:R R1
U 1 1 61840B22
P 3850 3950
F 0 "R1" H 3920 3996 50  0000 L CNN
F 1 "3,3 k" H 3920 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3780 3950 50  0001 C CNN
F 3 "~" H 3850 3950 50  0001 C CNN
	1    3850 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4450 6450 4100
Wire Wire Line
	2300 4450 2300 4500
Connection ~ 2300 4450
Wire Wire Line
	2300 3300 2300 4450
Wire Wire Line
	6450 3500 6450 3800
Wire Wire Line
	4850 3500 5750 3500
NoConn ~ 2600 3100
NoConn ~ 2600 3000
NoConn ~ 2600 2900
Wire Wire Line
	4450 4450 5750 4450
Wire Wire Line
	4450 4450 3850 4450
Connection ~ 4450 4450
Wire Wire Line
	4450 3900 4450 4450
Connection ~ 2800 2700
Wire Wire Line
	4450 2700 3300 2700
Wire Wire Line
	4450 3300 4450 2700
$Comp
L Battery_Management:MCP73831-2-OT U1
U 1 1 61840B39
P 4450 3600
F 0 "U1" H 4550 4000 50  0000 L CNN
F 1 "MCP73831-2-OT" H 4550 3900 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4500 3350 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 4300 3550 50  0001 C CNN
	1    4450 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J1
U 1 1 61840B3F
P 2300 2900
F 0 "J1" H 2357 3367 50  0000 C CNN
F 1 "USB_B_Mini" H 2357 3276 50  0000 C CNN
F 2 "mibe:USB_Mini-B_Reichelt_BWM" H 2450 2850 50  0001 C CNN
F 3 "~" H 2450 2850 50  0001 C CNN
	1    2300 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61840B45
P 2300 4500
F 0 "#PWR01" H 2300 4250 50  0001 C CNN
F 1 "GND" H 2305 4327 50  0000 C CNN
F 2 "" H 2300 4500 50  0001 C CNN
F 3 "" H 2300 4500 50  0001 C CNN
	1    2300 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 61840B4B
P 6450 4000
F 0 "BT1" H 6568 4096 50  0000 L CNN
F 1 "Battery_Cell" H 6568 4005 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" V 6450 4060 50  0001 C CNN
F 3 "~" V 6450 4060 50  0001 C CNN
	1    6450 4000
	1    0    0    -1  
$EndComp
Text Notes 7450 4150 0    50   ~ 0
LiPo 1800 mAh
Text Notes 3850 4750 0    50   ~ 0
R1 sets max. charge current of ~~ 303 mA\nR = 1000 V / I
$Comp
L Device:D_TVS D1
U 1 1 6189FBE0
P 3300 3950
F 0 "D1" V 3254 4030 50  0000 L CNN
F 1 "SMAJ5.0A" V 3345 4030 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 3300 3950 50  0001 C CNN
F 3 "~" H 3300 3950 50  0001 C CNN
	1    3300 3950
	0    1    1    0   
$EndComp
Connection ~ 3850 4450
Wire Wire Line
	3300 4100 3300 4450
Connection ~ 3300 4450
Wire Wire Line
	3300 4450 2800 4450
Wire Wire Line
	3300 3800 3300 2700
Connection ~ 3300 2700
Connection ~ 5750 4450
Connection ~ 5750 3500
$Comp
L power:PWR_FLAG #FLG?
U 1 1 618A58D2
P 3050 2650
F 0 "#FLG?" H 3050 2725 50  0001 C CNN
F 1 "PWR_FLAG" H 3050 2823 50  0000 C CNN
F 2 "" H 3050 2650 50  0001 C CNN
F 3 "~" H 3050 2650 50  0001 C CNN
	1    3050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2700 3050 2700
Wire Wire Line
	3050 2700 2800 2700
Connection ~ 3050 2700
Wire Wire Line
	3050 2650 3050 2700
Text HLabel 4700 2700 2    50   Output ~ 0
VUSB
Wire Wire Line
	4700 2700 4450 2700
Connection ~ 4450 2700
$EndSCHEMATC
