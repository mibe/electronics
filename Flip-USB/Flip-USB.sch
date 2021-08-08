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
L Connector:USB_B_Micro J3
U 1 1 603584FD
P 4450 3550
F 0 "J3" H 4507 4017 50  0000 C CNN
F 1 "ZX62D-B-5PA8(30)" H 4507 3926 50  0000 C CNN
F 2 "mibe:USB_Micro_B_Hirose_ZX62D-B-5PA8" H 4600 3500 50  0001 C CNN
F 3 "~" H 4600 3500 50  0001 C CNN
	1    4450 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 60359A3C
P 6900 3550
F 0 "J1" H 6980 3542 50  0000 L CNN
F 1 "Conn_01x04" H 6980 3451 50  0000 L CNN
F 2 "mibe:SolderWire-0.15sqmm_1x04_P2mm_D0.5mm_OD1.5mm" H 6900 3550 50  0001 C CNN
F 3 "~" H 6900 3550 50  0001 C CNN
	1    6900 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6035A3C3
P 5850 4050
F 0 "R1" H 5920 4096 50  0000 L CNN
F 1 "R" H 5920 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 5780 4050 50  0001 C CNN
F 3 "~" H 5850 4050 50  0001 C CNN
	1    5850 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6035AB55
P 6200 4050
F 0 "R2" H 6270 4096 50  0000 L CNN
F 1 "R" H 6270 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 6130 4050 50  0001 C CNN
F 3 "~" H 6200 4050 50  0001 C CNN
	1    6200 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6035D987
P 4450 4450
F 0 "#PWR01" H 4450 4200 50  0001 C CNN
F 1 "GND" H 4455 4277 50  0000 C CNN
F 2 "" H 4450 4450 50  0001 C CNN
F 3 "" H 4450 4450 50  0001 C CNN
	1    4450 4450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 6035ED4B
P 6200 3450
F 0 "#PWR02" H 6200 3300 50  0001 C CNN
F 1 "VCC" H 6215 3623 50  0000 C CNN
F 2 "" H 6200 3450 50  0001 C CNN
F 3 "" H 6200 3450 50  0001 C CNN
	1    6200 3450
	1    0    0    -1  
$EndComp
NoConn ~ 4750 3750
$Comp
L Device:Ferrite_Bead_Small L1
U 1 1 60382247
P 5550 3450
F 0 "L1" V 5313 3450 50  0000 C CNN
F 1 "?" V 5404 3450 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5480 3450 50  0001 C CNN
F 3 "~" H 5550 3450 50  0001 C CNN
	1    5550 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 3450 6200 3450
Wire Wire Line
	5450 3450 5200 3450
Wire Wire Line
	6700 3650 5850 3650
Wire Wire Line
	4350 4300 4350 3950
Wire Wire Line
	4450 3950 4450 4300
Connection ~ 4450 4300
Wire Wire Line
	4450 4300 4350 4300
Wire Wire Line
	4450 4450 4450 4300
Wire Wire Line
	5850 3900 5850 3650
Wire Wire Line
	6200 3900 6200 3750
Wire Wire Line
	6200 3550 6700 3550
Wire Wire Line
	5850 4300 5850 4200
Wire Wire Line
	6200 4200 6200 4300
Wire Wire Line
	6200 4300 5850 4300
Connection ~ 5850 4300
Wire Wire Line
	5850 3650 5200 3650
Wire Wire Line
	5200 3650 5200 3550
Wire Wire Line
	5200 3550 4750 3550
Connection ~ 5850 3650
Wire Wire Line
	5100 3750 5100 3650
Wire Wire Line
	5100 3650 4750 3650
Wire Wire Line
	5200 4300 5850 4300
Wire Wire Line
	5200 4300 4450 4300
Connection ~ 5200 4300
Wire Wire Line
	5200 3850 5200 4300
Wire Wire Line
	5200 3850 6450 3850
Wire Wire Line
	6450 3850 6450 3750
Wire Wire Line
	6450 3750 6700 3750
Wire Wire Line
	5100 3750 6200 3750
Connection ~ 6200 3750
Wire Wire Line
	6200 3750 6200 3550
Text Notes 5850 4600 0    50   ~ 0
Resistors\nnot placed
Text Label 4850 3550 0    50   ~ 0
D+
Text Label 4850 3650 0    50   ~ 0
D-
Connection ~ 6200 3450
Wire Wire Line
	6200 3450 5650 3450
Wire Wire Line
	5200 3450 5200 3350
Wire Wire Line
	5200 3350 4750 3350
Text Label 4850 3350 0    50   ~ 0
VCC_USB
Text Label 4750 3750 0    50   ~ 0
ID
$EndSCHEMATC
