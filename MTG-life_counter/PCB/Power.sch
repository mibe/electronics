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
	3450 4050 3450 2200
Wire Wire Line
	3450 4900 2900 4900
Connection ~ 3450 4900
Wire Wire Line
	3450 4350 3450 4900
Wire Wire Line
	6400 4900 7100 4900
Wire Wire Line
	6400 4350 6400 4900
Wire Wire Line
	6400 4050 6400 3100
$Comp
L Device:C C5
U 1 1 61840B05
P 6400 4200
F 0 "C5" H 6515 4246 50  0000 L CNN
F 1 "4,7 µF" H 6515 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6438 4050 50  0001 C CNN
F 3 "~" H 6400 4200 50  0001 C CNN
	1    6400 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61840B0B
P 3450 4200
F 0 "C4" H 3565 4246 50  0000 L CNN
F 1 "4,7 µF" H 3565 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3488 4050 50  0001 C CNN
F 3 "~" H 3450 4200 50  0001 C CNN
	1    3450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3100 7100 3100
Connection ~ 7100 3100
$Comp
L power:+BATT #PWR09
U 1 1 61840B17
P 9000 3050
F 0 "#PWR09" H 9000 2900 50  0001 C CNN
F 1 "+BATT" H 9015 3223 50  0000 C CNN
F 2 "" H 9000 3050 50  0001 C CNN
F 3 "" H 9000 3050 50  0001 C CNN
	1    9000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3300 4700 3300
Wire Wire Line
	4500 4050 4500 3300
Wire Wire Line
	4500 4900 3950 4900
Wire Wire Line
	4500 4350 4500 4900
$Comp
L Device:R R1
U 1 1 61840B22
P 4500 4200
F 0 "R1" H 4570 4246 50  0000 L CNN
F 1 "3,3 kΩ" H 4570 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4430 4200 50  0001 C CNN
F 3 "~" H 4500 4200 50  0001 C CNN
	1    4500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4900 7100 4350
Wire Wire Line
	850  4900 850  4950
Wire Wire Line
	7100 3100 7100 4050
Wire Wire Line
	5500 3100 6400 3100
Wire Wire Line
	5100 4900 6400 4900
Wire Wire Line
	5100 4900 4500 4900
Connection ~ 5100 4900
Wire Wire Line
	5100 3500 5100 4900
Wire Wire Line
	5100 2900 5100 2200
$Comp
L Battery_Management:MCP73831-2-OT U1
U 1 1 61840B39
P 5100 3200
F 0 "U1" H 5200 2900 50  0000 L CNN
F 1 "MCP73831-2-OT" H 5200 2800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5150 2950 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 4950 3150 50  0001 C CNN
	1    5100 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61840B45
P 850 4950
F 0 "#PWR01" H 850 4700 50  0001 C CNN
F 1 "GND" H 855 4777 50  0000 C CNN
F 2 "" H 850 4950 50  0001 C CNN
F 3 "" H 850 4950 50  0001 C CNN
	1    850  4950
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 61840B4B
P 7100 4250
F 0 "BT1" H 7218 4346 50  0000 L CNN
F 1 "Battery_Cell" H 7218 4255 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" V 7100 4310 50  0001 C CNN
F 3 "~" V 7100 4310 50  0001 C CNN
	1    7100 4250
	1    0    0    -1  
$EndComp
Text Notes 7100 5200 0    50   ~ 0
LiPo 1800 mAh\nnominal voltage: 3.7 V
Text Notes 4500 5200 0    50   ~ 0
R1 sets max. charge current of ~~ 303 mA\nR = 1000 V / I
$Comp
L Device:D_TVS D1
U 1 1 6189FBE0
P 3950 4200
F 0 "D1" V 3904 4280 50  0000 L CNN
F 1 "SMAJ5.0A" V 3995 4280 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 3950 4200 50  0001 C CNN
F 3 "~" H 3950 4200 50  0001 C CNN
	1    3950 4200
	0    1    1    0   
$EndComp
Connection ~ 4500 4900
Wire Wire Line
	3950 4350 3950 4900
Connection ~ 3950 4900
Wire Wire Line
	3950 4900 3450 4900
Wire Wire Line
	3950 4050 3950 2200
Connection ~ 6400 4900
Connection ~ 6400 3100
Text HLabel 5350 2200 2    50   Output ~ 0
VUSB
Wire Wire Line
	5350 2200 5100 2200
Connection ~ 5100 2200
$Comp
L mibe:SGM809 U5
U 1 1 618B80FF
P 8350 4200
F 0 "U5" H 8350 3800 50  0000 L CNN
F 1 "SGM809-T" H 8350 3700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23W_Handsoldering" H 7950 4350 50  0001 C CNN
F 3 "http://www.sg-micro.com/uploads/soft/20190626/1561528457.pdf" H 8050 4450 50  0001 C CNN
	1    8350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4900 8250 4900
Wire Wire Line
	8250 4900 8250 4600
Connection ~ 7100 4900
Text HLabel 9000 4200 2    50   Output ~ 0
~BATT_LOW
Wire Wire Line
	8650 4200 9000 4200
Text HLabel 5600 3300 2    50   Output ~ 0
CHARGER_STAT
Wire Wire Line
	7100 3100 8250 3100
Connection ~ 3450 2200
Connection ~ 3950 2200
Wire Wire Line
	3950 2200 5100 2200
$Comp
L Device:R R10
U 1 1 618D046B
P 8250 3450
F 0 "R10" H 8320 3496 50  0000 L CNN
F 1 "680 Ω" H 8320 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8180 3450 50  0001 C CNN
F 3 "~" H 8250 3450 50  0001 C CNN
	1    8250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3300 8250 3100
Text Notes 8250 5100 0    50   ~ 0
"UVLO"
Connection ~ 8250 3100
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 618C90E1
P 8150 3700
F 0 "#FLG0102" H 8150 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 8150 3873 50  0000 C CNN
F 2 "" H 8150 3700 50  0001 C CNN
F 3 "~" H 8150 3700 50  0001 C CNN
	1    8150 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 3300 5600 3300
Wire Wire Line
	8250 3600 8250 3700
Wire Wire Line
	3450 2200 3950 2200
Wire Wire Line
	8250 3100 9000 3100
Wire Wire Line
	8150 3700 8250 3700
Connection ~ 8250 3700
Wire Wire Line
	8250 3700 8250 3800
Wire Wire Line
	9000 3100 9000 3050
Wire Wire Line
	1750 2200 3450 2200
$Comp
L Connector:USB_C_Receptacle J1
U 1 1 63660E70
P 1150 3200
F 0 "J1" H 1257 4467 50  0000 C CNN
F 1 "USB_C_Receptacle" H 1257 4376 50  0000 C CNN
F 2 "mibe:USB_C_Receptacle_Bellwether_80211-x92" H 1300 3200 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1300 3200 50  0001 C CNN
	1    1150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  4800 850  4900
Connection ~ 850  4900
Wire Wire Line
	1150 4800 1150 4900
Connection ~ 1150 4900
Wire Wire Line
	1150 4900 850  4900
$Comp
L Device:R R20
U 1 1 63671739
P 2900 4200
F 0 "R20" H 2970 4246 50  0000 L CNN
F 1 "5,1 kΩ" H 2970 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2830 4200 50  0001 C CNN
F 3 "~" H 2900 4200 50  0001 C CNN
F 4 "max. 10 %" H 2900 4200 50  0001 C CNN "Characteristics"
	1    2900 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 63672331
P 2450 4200
F 0 "R16" H 2520 4246 50  0000 L CNN
F 1 "5,1 kΩ" H 2520 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2380 4200 50  0001 C CNN
F 3 "~" H 2450 4200 50  0001 C CNN
F 4 "max. 10 %" H 2450 4200 50  0001 C CNN "Characteristics"
	1    2450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4350 2450 4900
Connection ~ 2450 4900
Wire Wire Line
	2450 4900 1150 4900
Wire Wire Line
	2900 4350 2900 4900
Connection ~ 2900 4900
Wire Wire Line
	2900 4900 2450 4900
Wire Wire Line
	2900 4050 2900 2400
Wire Wire Line
	2900 2400 1750 2400
Wire Wire Line
	1750 2500 2450 2500
Wire Wire Line
	2450 2500 2450 4050
NoConn ~ 1750 4500
NoConn ~ 1750 4400
NoConn ~ 1750 4200
NoConn ~ 1750 4100
NoConn ~ 1750 3900
NoConn ~ 1750 3800
NoConn ~ 1750 3600
NoConn ~ 1750 3500
NoConn ~ 1750 3300
NoConn ~ 1750 3200
NoConn ~ 1750 3000
NoConn ~ 1750 2900
NoConn ~ 1750 2800
NoConn ~ 1750 2700
$EndSCHEMATC
