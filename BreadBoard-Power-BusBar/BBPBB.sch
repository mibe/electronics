EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BreadBoard-Power-BusBar"
Date ""
Rev "1"
Comp "Michael Bemmerl"
Comment1 "Open Hardware: CERN OHL v1.2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J1
U 1 1 5E5B3147
P 3550 3900
F 0 "J1" H 3600 4117 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 3600 4026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 3550 3900 50  0001 C CNN
F 3 "~" H 3550 3900 50  0001 C CNN
	1    3550 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J2
U 1 1 5E5B37FB
P 8050 3900
F 0 "J2" H 8100 4117 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 8100 4026 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 8050 3900 50  0001 C CNN
F 3 "~" H 8050 3900 50  0001 C CNN
	1    8050 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 3900 4050 3900
Wire Wire Line
	7750 4000 7550 4000
Wire Wire Line
	7550 4000 7550 3900
Connection ~ 7550 3900
Wire Wire Line
	7550 3900 7750 3900
Wire Wire Line
	4050 3900 4050 4000
Wire Wire Line
	4050 4000 3850 4000
Connection ~ 4050 3900
Wire Wire Line
	4050 3900 7550 3900
Wire Wire Line
	3350 3900 3150 3900
Wire Wire Line
	3150 3900 3150 4000
Wire Wire Line
	3150 4150 8450 4150
Wire Wire Line
	8450 4150 8450 4000
Wire Wire Line
	8450 3900 8250 3900
Wire Wire Line
	8250 4000 8450 4000
Connection ~ 8450 4000
Wire Wire Line
	8450 4000 8450 3900
Wire Wire Line
	3350 4000 3150 4000
Connection ~ 3150 4000
Wire Wire Line
	3150 4000 3150 4150
Text Label 6100 3900 0    50   ~ 0
Power-1
Text Label 6100 4150 0    50   ~ 0
Power-2
$EndSCHEMATC
