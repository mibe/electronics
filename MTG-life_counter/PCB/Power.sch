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
Text Notes 7200 3950 0    50   ~ 0
nominal\nvoltage:\n3.7 V
$Comp
L Switch:SW_SPST #SW?
U 1 1 61840AEE
P 6700 3500
F 0 "#SW?" H 6700 3735 50  0000 C CNN
F 1 "SW_SPST" H 6700 3644 50  0000 C CNN
F 2 "" H 6700 3500 50  0001 C CNN
F 3 "~" H 6700 3500 50  0001 C CNN
	1    6700 3500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61840AF4
P 7200 3450
F 0 "#PWR?" H 7200 3300 50  0001 C CNN
F 1 "VCC" H 7215 3623 50  0000 C CNN
F 2 "" H 7200 3450 50  0001 C CNN
F 3 "" H 7200 3450 50  0001 C CNN
	1    7200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3500 7200 3500
Wire Wire Line
	7200 3500 7200 3450
Wire Wire Line
	3300 3200 3100 3200
Wire Wire Line
	3300 3800 3300 3200
Wire Wire Line
	3300 4200 2800 4200
Connection ~ 3300 4200
Wire Wire Line
	3300 4100 3300 4200
Wire Wire Line
	5750 4200 6200 4200
Connection ~ 5750 4200
Wire Wire Line
	5750 4000 5750 4200
Wire Wire Line
	5750 3700 5750 3500
$Comp
L Device:C C?
U 1 1 61840B05
P 5750 3850
F 0 "C?" H 5865 3896 50  0000 L CNN
F 1 "C" H 5865 3805 50  0000 L CNN
F 2 "" H 5788 3700 50  0001 C CNN
F 3 "~" H 5750 3850 50  0001 C CNN
	1    5750 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61840B0B
P 3300 3950
F 0 "C?" H 3415 3996 50  0000 L CNN
F 1 "C" H 3415 3905 50  0000 L CNN
F 2 "" H 3338 3800 50  0001 C CNN
F 3 "~" H 3300 3950 50  0001 C CNN
	1    3300 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3700 4850 3700
Text GLabel 5000 3700 2    50   Output ~ 0
CHARGE_LED
Wire Wire Line
	6200 3500 6500 3500
Wire Wire Line
	5750 3500 6200 3500
Connection ~ 6200 3500
Wire Wire Line
	6200 3500 6200 3450
$Comp
L power:+BATT #PWR?
U 1 1 61840B17
P 6200 3450
F 0 "#PWR?" H 6200 3300 50  0001 C CNN
F 1 "+BATT" H 6215 3623 50  0000 C CNN
F 2 "" H 6200 3450 50  0001 C CNN
F 3 "" H 6200 3450 50  0001 C CNN
	1    6200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3700 4050 3700
Wire Wire Line
	3850 3800 3850 3700
Wire Wire Line
	3850 4200 3300 4200
Connection ~ 3850 4200
Wire Wire Line
	3850 4100 3850 4200
$Comp
L Device:R R?
U 1 1 61840B22
P 3850 3950
F 0 "R?" H 3920 3996 50  0000 L CNN
F 1 "R" H 3920 3905 50  0000 L CNN
F 2 "" V 3780 3950 50  0001 C CNN
F 3 "~" H 3850 3950 50  0001 C CNN
	1    3850 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4200 6200 4000
Wire Wire Line
	2800 4200 2800 4250
Connection ~ 2800 4200
Wire Wire Line
	2800 3800 2800 4200
Wire Wire Line
	6200 3500 6200 3700
Connection ~ 5750 3500
Wire Wire Line
	4850 3500 5750 3500
NoConn ~ 3100 3600
NoConn ~ 3100 3500
NoConn ~ 3100 3400
Wire Wire Line
	4450 4200 5750 4200
Wire Wire Line
	4450 4200 3850 4200
Connection ~ 4450 4200
Wire Wire Line
	4450 3900 4450 4200
Connection ~ 3300 3200
Wire Wire Line
	4450 3200 3300 3200
Wire Wire Line
	4450 3300 4450 3200
$Comp
L Battery_Management:MCP73831-2-OT U?
U 1 1 61840B39
P 4450 3600
F 0 "U?" H 4550 4000 50  0000 L CNN
F 1 "MCP73831-2-OT" H 4550 3900 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4500 3350 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 4300 3550 50  0001 C CNN
	1    4450 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J?
U 1 1 61840B3F
P 2800 3400
F 0 "J?" H 2857 3867 50  0000 C CNN
F 1 "USB_B_Mini" H 2857 3776 50  0000 C CNN
F 2 "mibe:USB_Mini-B_Reichelt_BWM" H 2950 3350 50  0001 C CNN
F 3 "~" H 2950 3350 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61840B45
P 2800 4250
F 0 "#PWR?" H 2800 4000 50  0001 C CNN
F 1 "GND" H 2805 4077 50  0000 C CNN
F 2 "" H 2800 4250 50  0001 C CNN
F 3 "" H 2800 4250 50  0001 C CNN
	1    2800 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 61840B4B
P 6200 3900
F 0 "BT?" H 6318 3996 50  0000 L CNN
F 1 "Battery_Cell" H 6318 3905 50  0000 L CNN
F 2 "" V 6200 3960 50  0001 C CNN
F 3 "~" V 6200 3960 50  0001 C CNN
	1    6200 3900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
