EESchema Schematic File Version 4
LIBS:ATtiny-BB-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ATtiny-BB"
Date "2018-08-15"
Rev "1"
Comp "Michael Bemmerl"
Comment1 "Open Hardware: CERN OHL v1.2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5B7498D9
P 3000 2800
F 0 "J1" H 3000 3000 50  0000 C CNN
F 1 "Conn_01x04" H 3000 2500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3000 2800 50  0001 C CNN
F 3 "" H 3000 2800 50  0001 C CNN
	1    3000 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5B749966
P 3000 3650
F 0 "J2" H 3000 3850 50  0000 C CNN
F 1 "Conn_01x04" H 3000 3350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3000 3650 50  0001 C CNN
F 3 "" H 3000 3650 50  0001 C CNN
	1    3000 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5B749BFC
P 7550 2100
F 0 "J3" H 7550 2200 50  0000 C CNN
F 1 "Conn_01x02" H 7550 1900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7550 2100 50  0001 C CNN
F 3 "" H 7550 2100 50  0001 C CNN
	1    7550 2100
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5B749CE9
P 8250 3600
F 0 "C1" H 8275 3700 50  0000 L CNN
F 1 "100n" H 8275 3500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8288 3450 50  0001 C CNN
F 3 "" H 8250 3600 50  0001 C CNN
	1    8250 3600
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny45-20PU U1
U 1 1 5B74A2CE
P 6850 3650
F 0 "U1" H 6250 4100 50  0000 C CNN
F 1 "ATTINY45-20PU" H 6000 3200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7850 3650 50  0001 C CIN
F 3 "" H 6850 3650 50  0001 C CNN
	1    6850 3650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J4
U 1 1 5B78B057
P 5350 2200
F 0 "J4" H 5350 2600 50  0000 C CNN
F 1 "AVR-ISP-6" H 5300 1850 50  0000 L BNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 4830 2240 50  0001 C CNN
F 3 "" H 5325 2200 50  0001 C CNN
	1    5350 2200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5B78C01C
P 8250 2900
F 0 "#FLG01" H 8250 2975 50  0001 C CNN
F 1 "PWR_FLAG" H 8250 3050 50  0000 C CNN
F 2 "" H 8250 2900 50  0001 C CNN
F 3 "" H 8250 2900 50  0001 C CNN
	1    8250 2900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5B78C090
P 8250 4450
F 0 "#FLG02" H 8250 4525 50  0001 C CNN
F 1 "PWR_FLAG" H 8250 4600 50  0000 C CNN
F 2 "" H 8250 4450 50  0001 C CNN
F 3 "" H 8250 4450 50  0001 C CNN
	1    8250 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 3650 6250 3650
Wire Wire Line
	3200 3750 6250 3750
Wire Wire Line
	3400 4300 3400 3850
Wire Wire Line
	3400 3850 3200 3850
Wire Wire Line
	3800 3350 3800 2700
Wire Wire Line
	3800 2700 3200 2700
Wire Wire Line
	3700 3450 3700 2800
Wire Wire Line
	3700 2800 3200 2800
Wire Wire Line
	3600 3550 3600 2900
Wire Wire Line
	3600 2900 3200 2900
Wire Wire Line
	6850 2100 7350 2100
Wire Wire Line
	7350 2200 6850 2200
Wire Wire Line
	6850 2200 6850 3000
Text Notes 7950 2200 0    60   ~ 0
Jumper here for measuring current\nconsumption of the device (if needed)
Text Label 4600 3350 0    60   ~ 0
PB0
Text Label 4600 3450 0    60   ~ 0
PB1
Text Label 4600 3550 0    60   ~ 0
PB2
Text Label 4600 3650 0    60   ~ 0
PB3
Text Label 4600 3750 0    60   ~ 0
PB4
Text Label 4600 4300 0    60   ~ 0
GND
Text Label 4600 3000 0    60   ~ 0
VCC
Text Label 6950 2100 0    60   ~ 0
VCC_in
Wire Wire Line
	5250 4300 3400 4300
Wire Wire Line
	5250 4300 5250 4850
Connection ~ 5250 4300
Wire Wire Line
	6850 2100 6850 1650
Wire Wire Line
	5250 1650 5250 1700
Wire Wire Line
	3800 3350 6050 3350
Wire Wire Line
	3600 3550 5950 3550
Wire Wire Line
	3700 3450 6150 3450
Wire Wire Line
	8250 2900 8250 3000
Connection ~ 8250 3000
Wire Wire Line
	8250 3000 8250 3450
Wire Wire Line
	6850 3050 6850 3000
Connection ~ 6850 3000
Wire Wire Line
	6850 3000 8250 3000
Wire Wire Line
	8250 3750 8250 4300
Wire Wire Line
	5250 4300 6850 4300
Connection ~ 8250 4300
Wire Wire Line
	8250 4300 8250 4450
Wire Wire Line
	6850 4250 6850 4300
Connection ~ 6850 4300
Wire Wire Line
	6850 4300 8250 4300
Wire Wire Line
	3200 3000 6850 3000
Wire Wire Line
	5250 2600 5250 4300
Wire Wire Line
	5250 1650 6850 1650
Wire Wire Line
	5750 2300 5850 2300
Wire Wire Line
	5850 2300 5850 3850
Wire Wire Line
	5850 3850 6250 3850
Wire Wire Line
	5750 2200 5950 2200
Wire Wire Line
	5950 2200 5950 3550
Connection ~ 5950 3550
Wire Wire Line
	5950 3550 6250 3550
Wire Wire Line
	5750 2100 6050 2100
Wire Wire Line
	6050 2100 6050 3350
Connection ~ 6050 3350
Wire Wire Line
	6050 3350 6250 3350
Wire Wire Line
	5750 2000 6150 2000
Wire Wire Line
	6150 2000 6150 3450
Connection ~ 6150 3450
Wire Wire Line
	6150 3450 6250 3450
Text Label 4600 3850 0    60   ~ 0
PB5
Wire Wire Line
	3500 3550 3200 3550
Wire Wire Line
	3500 3850 3500 3550
Connection ~ 5850 3850
Wire Wire Line
	4300 3850 5850 3850
Connection ~ 4300 3850
Wire Wire Line
	3500 3850 4300 3850
Wire Wire Line
	5250 4850 4950 4850
Wire Wire Line
	4300 4850 4550 4850
$Comp
L Switch:SW_Push SW1
U 1 1 5B7B32E0
P 4750 4850
F 0 "SW1" H 4800 4950 50  0000 L CNN
F 1 "SW_Push" H 4750 4790 50  0000 C CNN
F 2 "mibe:SW_Push_1P1T_NO_CK_KMR2_GNDPad" H 4750 5050 50  0001 C CNN
F 3 "" H 4750 5050 50  0001 C CNN
	1    4750 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4700 4300 4850
Wire Wire Line
	4300 3850 4300 4400
$Comp
L Device:R R1
U 1 1 5B7B3216
P 4300 4550
F 0 "R1" V 4380 4550 50  0000 C CNN
F 1 "330" V 4300 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 4550 50  0001 C CNN
F 3 "" H 4300 4550 50  0001 C CNN
	1    4300 4550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
