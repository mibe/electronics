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
Wire Wire Line
	2800 4050 2800 2700
Wire Wire Line
	2800 4900 2300 4900
Connection ~ 2800 4900
Wire Wire Line
	2800 4350 2800 4900
Wire Wire Line
	5750 4900 6450 4900
Wire Wire Line
	5750 4350 5750 4900
Wire Wire Line
	5750 4050 5750 3100
$Comp
L Device:C C5
U 1 1 61840B05
P 5750 4200
F 0 "C5" H 5865 4246 50  0000 L CNN
F 1 "4,7 µF" H 5865 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5788 4050 50  0001 C CNN
F 3 "~" H 5750 4200 50  0001 C CNN
	1    5750 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61840B0B
P 2800 4200
F 0 "C4" H 2915 4246 50  0000 L CNN
F 1 "4,7 µF" H 2915 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2838 4050 50  0001 C CNN
F 3 "~" H 2800 4200 50  0001 C CNN
	1    2800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3100 6450 3100
Connection ~ 6450 3100
$Comp
L power:+BATT #PWR09
U 1 1 61840B17
P 8350 3050
F 0 "#PWR09" H 8350 2900 50  0001 C CNN
F 1 "+BATT" H 8365 3223 50  0000 C CNN
F 2 "" H 8350 3050 50  0001 C CNN
F 3 "" H 8350 3050 50  0001 C CNN
	1    8350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3300 4050 3300
Wire Wire Line
	3850 4050 3850 3300
Wire Wire Line
	3850 4900 3300 4900
Wire Wire Line
	3850 4350 3850 4900
$Comp
L Device:R R1
U 1 1 61840B22
P 3850 4200
F 0 "R1" H 3920 4246 50  0000 L CNN
F 1 "3,3 kΩ" H 3920 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3780 4200 50  0001 C CNN
F 3 "~" H 3850 4200 50  0001 C CNN
	1    3850 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4900 6450 4350
Wire Wire Line
	2300 4900 2300 4950
Connection ~ 2300 4900
Wire Wire Line
	2300 3300 2300 3400
Wire Wire Line
	6450 3100 6450 4050
Wire Wire Line
	4850 3100 5750 3100
NoConn ~ 2600 3100
NoConn ~ 2600 3000
NoConn ~ 2600 2900
Wire Wire Line
	4450 4900 5750 4900
Wire Wire Line
	4450 4900 3850 4900
Connection ~ 4450 4900
Wire Wire Line
	4450 3500 4450 4900
Wire Wire Line
	4450 2900 4450 2700
$Comp
L Battery_Management:MCP73831-2-OT U1
U 1 1 61840B39
P 4450 3200
F 0 "U1" H 4550 2900 50  0000 L CNN
F 1 "MCP73831-2-OT" H 4550 2800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4500 2950 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 4300 3150 50  0001 C CNN
	1    4450 3200
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
P 2300 4950
F 0 "#PWR01" H 2300 4700 50  0001 C CNN
F 1 "GND" H 2305 4777 50  0000 C CNN
F 2 "" H 2300 4950 50  0001 C CNN
F 3 "" H 2300 4950 50  0001 C CNN
	1    2300 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 61840B4B
P 6450 4250
F 0 "BT1" H 6568 4346 50  0000 L CNN
F 1 "Battery_Cell" H 6568 4255 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" V 6450 4310 50  0001 C CNN
F 3 "~" V 6450 4310 50  0001 C CNN
	1    6450 4250
	1    0    0    -1  
$EndComp
Text Notes 6450 5200 0    50   ~ 0
LiPo 1800 mAh\nnominal voltage: 3.7 V
Text Notes 3850 5200 0    50   ~ 0
R1 sets max. charge current of ~~ 303 mA\nR = 1000 V / I
$Comp
L Device:D_TVS D1
U 1 1 6189FBE0
P 3300 4200
F 0 "D1" V 3254 4280 50  0000 L CNN
F 1 "SMAJ5.0A" V 3345 4280 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 3300 4200 50  0001 C CNN
F 3 "~" H 3300 4200 50  0001 C CNN
	1    3300 4200
	0    1    1    0   
$EndComp
Connection ~ 3850 4900
Wire Wire Line
	3300 4350 3300 4900
Connection ~ 3300 4900
Wire Wire Line
	3300 4900 2800 4900
Wire Wire Line
	3300 4050 3300 2700
Connection ~ 5750 4900
Connection ~ 5750 3100
Text HLabel 4700 2700 2    50   Output ~ 0
VUSB
Wire Wire Line
	4700 2700 4450 2700
Connection ~ 4450 2700
$Comp
L mibe:SGM809 U5
U 1 1 618B80FF
P 7700 4200
F 0 "U5" H 7700 3800 50  0000 L CNN
F 1 "SGM809-T" H 7700 3700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23W_Handsoldering" H 7300 4350 50  0001 C CNN
F 3 "http://www.sg-micro.com/uploads/soft/20190626/1561528457.pdf" H 7400 4450 50  0001 C CNN
	1    7700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4900 7600 4900
Wire Wire Line
	7600 4900 7600 4600
Connection ~ 6450 4900
Text HLabel 8350 4200 2    50   Output ~ 0
~BATT_LOW
Wire Wire Line
	8000 4200 8350 4200
Text HLabel 4950 3300 2    50   Output ~ 0
CHARGER_STAT
Wire Wire Line
	2600 2700 2800 2700
Wire Wire Line
	6450 3100 7600 3100
Connection ~ 2800 2700
Connection ~ 3300 2700
Wire Wire Line
	3300 2700 4450 2700
$Comp
L Device:R R10
U 1 1 618D046B
P 7600 3450
F 0 "R10" H 7670 3496 50  0000 L CNN
F 1 "680 Ω" H 7670 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7530 3450 50  0001 C CNN
F 3 "~" H 7600 3450 50  0001 C CNN
	1    7600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3300 7600 3100
Text Notes 7600 5100 0    50   ~ 0
"UVLO"
Connection ~ 7600 3100
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 618C90E1
P 7500 3700
F 0 "#FLG0102" H 7500 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 7500 3873 50  0000 C CNN
F 2 "" H 7500 3700 50  0001 C CNN
F 3 "~" H 7500 3700 50  0001 C CNN
	1    7500 3700
	0    -1   -1   0   
$EndComp
Connection ~ 2600 2700
Wire Wire Line
	2600 2700 2450 2700
Wire Wire Line
	4850 3300 4950 3300
Wire Wire Line
	2200 3300 2200 3400
Wire Wire Line
	2200 3400 2300 3400
Connection ~ 2300 3400
Wire Wire Line
	2300 3400 2300 4900
Wire Wire Line
	7600 3600 7600 3700
Wire Wire Line
	2800 2700 3300 2700
Wire Wire Line
	7600 3100 8350 3100
Wire Wire Line
	7500 3700 7600 3700
Connection ~ 7600 3700
Wire Wire Line
	7600 3700 7600 3800
Wire Wire Line
	8350 3100 8350 3050
$EndSCHEMATC
