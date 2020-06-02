EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BreadBoard-Power-BusBar"
Date "2020-05-30"
Rev "2"
Comp "Michael Bemmerl"
Comment1 "Open Hardware: CERN OHL v1.2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J1
U 1 1 5E5B3147
P 3550 2650
F 0 "J1" H 3600 2867 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 3600 2776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 3550 2650 50  0001 C CNN
F 3 "~" H 3550 2650 50  0001 C CNN
	1    3550 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J2
U 1 1 5E5B37FB
P 8050 2650
F 0 "J2" H 8100 2867 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 8100 2776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 8050 2650 50  0001 C CNN
F 3 "~" H 8050 2650 50  0001 C CNN
	1    8050 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3850 2650 4050 2650
Wire Wire Line
	7750 2750 7550 2750
Wire Wire Line
	7550 2750 7550 2650
Connection ~ 7550 2650
Wire Wire Line
	7550 2650 7750 2650
Wire Wire Line
	4050 2650 4050 2750
Wire Wire Line
	4050 2750 3850 2750
Connection ~ 4050 2650
Wire Wire Line
	3350 2650 3150 2650
Wire Wire Line
	3150 2650 3150 2750
Wire Wire Line
	3150 2900 5400 2900
Wire Wire Line
	8450 2900 8450 2750
Wire Wire Line
	8450 2650 8250 2650
Wire Wire Line
	8250 2750 8450 2750
Connection ~ 8450 2750
Wire Wire Line
	8450 2750 8450 2650
Wire Wire Line
	3350 2750 3150 2750
Connection ~ 3150 2750
Wire Wire Line
	3150 2750 3150 2900
Text Label 6100 2650 0    50   ~ 0
Power-1
Text Label 6100 2900 0    50   ~ 0
Power-2
$Comp
L Device:R R2
U 1 1 5EC1D841
P 7950 5450
F 0 "R2" H 8020 5496 50  0000 L CNN
F 1 "150" H 8020 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7880 5450 50  0001 C CNN
F 3 "~" H 7950 5450 50  0001 C CNN
F 4 "1 %" H 7950 5450 50  0001 C CNN "Characteristics"
	1    7950 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5EC1DF2A
P 7950 4250
F 0 "D4" H 7943 4466 50  0000 C CNN
F 1 "17-21SYGC" H 7943 4375 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7950 4250 50  0001 C CNN
F 3 "~" H 7950 4250 50  0001 C CNN
F 4 "Everlight" H 7950 4250 50  0001 C CNN "Manufacturer"
	1    7950 4250
	0    -1   -1   0   
$EndComp
$Comp
L mibe:BAS40BRW D1
U 1 1 5EC1D02F
P 5100 4800
F 0 "D1" H 5100 5281 50  0000 C CNN
F 1 "BAS40BRW" H 5100 5190 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6_Handsoldering" H 5250 4925 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30156.pdf" H 5100 4800 50  0001 C CNN
	1    5100 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5ED042FE
P 7200 4250
F 0 "R1" H 7270 4296 50  0000 L CNN
F 1 "1k" H 7270 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7130 4250 50  0001 C CNN
F 3 "~" H 7200 4250 50  0001 C CNN
F 4 "1 %" H 7200 4250 50  0001 C CNN "Characteristics"
	1    7200 4250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC847 Q1
U 1 1 5ED048E5
P 7850 4850
F 0 "Q1" H 8041 4896 50  0000 L CNN
F 1 "BC847B" H 8041 4805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8050 4775 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 7850 4850 50  0001 L CNN
	1    7850 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5ED0530C
P 6600 5800
F 0 "#PWR01" H 6600 5550 50  0001 C CNN
F 1 "GND" H 6605 5627 50  0000 C CNN
F 2 "" H 6600 5800 50  0001 C CNN
F 3 "" H 6600 5800 50  0001 C CNN
	1    6600 5800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 5ED05B8F
P 6600 3750
F 0 "#PWR02" H 6600 3600 50  0001 C CNN
F 1 "VCC" H 6617 3923 50  0000 C CNN
F 2 "" H 6600 3750 50  0001 C CNN
F 3 "" H 6600 3750 50  0001 C CNN
	1    6600 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5ED069EF
P 7200 5450
F 0 "D3" V 7246 5371 50  0000 R CNN
F 1 "S1B" V 7155 5371 50  0000 R CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 7200 5450 50  0001 C CNN
F 3 "~" H 7200 5450 50  0001 C CNN
	1    7200 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 4950 7200 4850
Wire Wire Line
	7650 4850 7200 4850
Connection ~ 7200 4850
Wire Wire Line
	7200 4850 7200 4400
Wire Wire Line
	7950 5050 7950 5300
Wire Wire Line
	7950 4650 7950 4400
Wire Wire Line
	7950 5600 7950 5750
Wire Wire Line
	7950 5750 7200 5750
Wire Wire Line
	5100 5750 5100 5100
Wire Wire Line
	7200 5600 7200 5750
Connection ~ 7200 5750
Wire Wire Line
	7200 5750 6600 5750
Wire Wire Line
	7950 4100 7950 3800
Wire Wire Line
	7950 3800 7200 3800
Wire Wire Line
	5100 3800 5100 4500
Wire Wire Line
	7200 4100 7200 3800
Connection ~ 7200 3800
Wire Wire Line
	7200 3800 6600 3800
Wire Wire Line
	6600 5800 6600 5750
Connection ~ 6600 5750
Wire Wire Line
	6600 5750 5700 5750
Wire Wire Line
	6600 3750 6600 3800
Wire Wire Line
	5400 4800 5400 2900
Connection ~ 5400 2900
Wire Wire Line
	5400 2900 8450 2900
Wire Wire Line
	7200 5250 7200 5300
$Comp
L Device:D D2
U 1 1 5ED06192
P 7200 5100
F 0 "D2" V 7246 5021 50  0000 R CNN
F 1 "S1B" V 7155 5021 50  0000 R CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 7200 5100 50  0001 C CNN
F 3 "~" H 7200 5100 50  0001 C CNN
	1    7200 5100
	0    -1   -1   0   
$EndComp
Text Notes 8450 4750 0    50   ~ 0
VBE ~~ 0.69 V @ 5 mA
Text Notes 8450 4850 0    50   ~ 0
VE ~~ 0.67 V
Text Notes 8450 4300 0    50   ~ 0
I = 0.005 A
Text Notes 8450 5450 0    50   ~ 0
R = VE / I = 134 Ω
Text Notes 8450 4950 0    50   ~ 0
hFE ~~ 275 @ 5 mA
Text Notes 6600 5150 0    50   ~ 0
Vf ~~ 0.69 V
Text Notes 6600 4900 0    50   ~ 0
VB ~~ 1.38 V
Text Notes 6600 4800 0    50   ~ 0
IB ~~ 0.002 A
$Comp
L Switch:SW_SPDT SW1
U 1 1 5ED2F8B8
P 4800 3400
F 0 "SW1" H 4800 3685 50  0000 C CNN
F 1 "JS102011JCQN" H 4800 3594 50  0000 C CNN
F 2 "mibe:SW_DPDT_CK_JS202011JCQN" H 4800 3400 50  0001 C CNN
F 3 "~" H 4800 3400 50  0001 C CNN
	1    4800 3400
	0    -1   -1   0   
$EndComp
Connection ~ 6600 3800
Wire Wire Line
	4050 2650 4900 2650
Wire Wire Line
	5100 3800 5700 3800
Wire Wire Line
	4800 4800 4800 3600
Wire Wire Line
	4900 3200 4900 2650
Connection ~ 4900 2650
Wire Wire Line
	4900 2650 7550 2650
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5ED3E074
P 5700 3750
F 0 "#FLG0101" H 5700 3825 50  0001 C CNN
F 1 "PWR_FLAG" H 5700 3923 50  0000 C CNN
F 2 "" H 5700 3750 50  0001 C CNN
F 3 "~" H 5700 3750 50  0001 C CNN
	1    5700 3750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5ED3E544
P 5700 5800
F 0 "#FLG0102" H 5700 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 5700 5973 50  0000 C CNN
F 2 "" H 5700 5800 50  0001 C CNN
F 3 "~" H 5700 5800 50  0001 C CNN
	1    5700 5800
	-1   0    0    1   
$EndComp
NoConn ~ 4700 3200
Wire Wire Line
	5700 3750 5700 3800
Connection ~ 5700 3800
Wire Wire Line
	5700 3800 6600 3800
Wire Wire Line
	5700 5800 5700 5750
Connection ~ 5700 5750
Wire Wire Line
	5700 5750 5100 5750
$EndSCHEMATC
