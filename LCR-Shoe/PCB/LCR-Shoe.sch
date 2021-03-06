EESchema Schematic File Version 4
LIBS:LCR-Shoe-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "LCR-Shoe"
Date "2019-09-25"
Rev "1"
Comp "Michael Bemmerl"
Comment1 "Open Hardware: CERN OHL v1.2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B_Micro J4
U 1 1 5D798557
P 3800 1400
F 0 "J4" H 3857 1867 50  0000 C CNN
F 1 "USB_B_Micro" H 3857 1776 50  0000 C CNN
F 2 "mibe:USB_Micro-B_Amphenol_10104110" H 3950 1350 50  0001 C CNN
F 3 "~" H 3950 1350 50  0001 C CNN
	1    3800 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Mini J3
U 1 1 5D79985B
P 2550 1400
F 0 "J3" H 2607 1867 50  0000 C CNN
F 1 "USB_B_Mini" H 2607 1776 50  0000 C CNN
F 2 "mibe:USB_Mini-B_Reichelt_BWM" H 2700 1350 50  0001 C CNN
F 3 "~" H 2700 1350 50  0001 C CNN
	1    2550 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D7A813D
P 1450 5850
F 0 "#PWR02" H 1450 5600 50  0001 C CNN
F 1 "GND" H 1455 5677 50  0000 C CNN
F 2 "" H 1450 5850 50  0001 C CNN
F 3 "" H 1450 5850 50  0001 C CNN
	1    1450 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D7A8AA2
P 1350 2050
F 0 "#PWR01" H 1350 1800 50  0001 C CNN
F 1 "GND" H 1355 1877 50  0000 C CNN
F 2 "" H 1350 2050 50  0001 C CNN
F 3 "" H 1350 2050 50  0001 C CNN
	1    1350 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D7AF4C7
P 2550 2050
F 0 "#PWR06" H 2550 1800 50  0001 C CNN
F 1 "GND" H 2555 1877 50  0000 C CNN
F 2 "" H 2550 2050 50  0001 C CNN
F 3 "" H 2550 2050 50  0001 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D7AF8A6
P 3800 2050
F 0 "#PWR09" H 3800 1800 50  0001 C CNN
F 1 "GND" H 3805 1877 50  0000 C CNN
F 2 "" H 3800 2050 50  0001 C CNN
F 3 "" H 3800 2050 50  0001 C CNN
	1    3800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1800 3800 2050
Wire Wire Line
	2550 2050 2550 1800
Wire Wire Line
	1350 1800 1350 2050
Wire Wire Line
	1450 5600 1450 5850
Wire Wire Line
	4100 1200 4350 1200
Wire Wire Line
	3100 1200 2850 1200
Wire Wire Line
	1900 1200 1650 1200
NoConn ~ 4100 1400
NoConn ~ 4100 1500
NoConn ~ 4100 1600
NoConn ~ 3700 1800
NoConn ~ 2450 1800
NoConn ~ 1250 1800
NoConn ~ 1650 1500
NoConn ~ 1650 1400
NoConn ~ 2850 1400
NoConn ~ 2850 1500
NoConn ~ 2850 1600
NoConn ~ 2050 5300
NoConn ~ 2050 5200
NoConn ~ 2050 5000
NoConn ~ 2050 4900
NoConn ~ 2050 4700
NoConn ~ 2050 4600
NoConn ~ 2050 4400
NoConn ~ 2050 4300
NoConn ~ 2050 4100
NoConn ~ 2050 4000
NoConn ~ 2050 3800
NoConn ~ 2050 3700
NoConn ~ 2050 3600
NoConn ~ 2050 3500
NoConn ~ 1150 5600
$Comp
L Connector:USB_C_Receptacle J2
U 1 1 5D79AA11
P 1450 4000
F 0 "J2" H 1557 5267 50  0000 C CNN
F 1 "USB_C_Receptacle" H 1557 5176 50  0000 C CNN
F 2 "mibe:USB_C_Receptacle_Bellwether_80211-x92" H 1600 4000 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1600 4000 50  0001 C CNN
	1    1450 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J1
U 1 1 5D796928
P 1350 1400
F 0 "J1" H 1407 1867 50  0000 C CNN
F 1 "USB_B" H 1407 1776 50  0000 C CNN
F 2 "mibe:USB_B_Lumberg_2411_02" H 1500 1350 50  0001 C CNN
F 3 " ~" H 1500 1350 50  0001 C CNN
	1    1350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3000 2300 3000
$Comp
L Regulator_Switching:LM2731YMF U1
U 1 1 5D7AA8AB
P 4500 4600
F 0 "U1" H 4500 4967 50  0000 C CNN
F 1 "LM2731YMF" H 4500 4876 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4550 4350 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2731.pdf" H 4500 4700 50  0001 C CNN
	1    4500 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D7AB26C
P 4500 5550
F 0 "#PWR011" H 4500 5300 50  0001 C CNN
F 1 "GND" H 4505 5377 50  0000 C CNN
F 2 "" H 4500 5550 50  0001 C CNN
F 3 "" H 4500 5550 50  0001 C CNN
	1    4500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4900 4500 5450
$Comp
L power:+5V #PWR03
U 1 1 5D7AD537
P 1900 1200
F 0 "#PWR03" H 1900 1050 50  0001 C CNN
F 1 "+5V" H 1915 1373 50  0000 C CNN
F 2 "" H 1900 1200 50  0001 C CNN
F 3 "" H 1900 1200 50  0001 C CNN
	1    1900 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5D7ADFFB
P 3100 1200
F 0 "#PWR07" H 3100 1050 50  0001 C CNN
F 1 "+5V" H 3115 1373 50  0000 C CNN
F 2 "" H 3100 1200 50  0001 C CNN
F 3 "" H 3100 1200 50  0001 C CNN
	1    3100 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5D7AE4E3
P 4350 1200
F 0 "#PWR010" H 4350 1050 50  0001 C CNN
F 1 "+5V" H 4365 1373 50  0000 C CNN
F 2 "" H 4350 1200 50  0001 C CNN
F 3 "" H 4350 1200 50  0001 C CNN
	1    4350 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5D7AE95A
P 2300 3000
F 0 "#PWR04" H 2300 2850 50  0001 C CNN
F 1 "+5V" H 2315 3173 50  0000 C CNN
F 2 "" H 2300 3000 50  0001 C CNN
F 3 "" H 2300 3000 50  0001 C CNN
	1    2300 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5D7AEE93
P 3600 4400
F 0 "#PWR08" H 3600 4250 50  0001 C CNN
F 1 "+5V" H 3615 4573 50  0000 C CNN
F 2 "" H 3600 4400 50  0001 C CNN
F 3 "" H 3600 4400 50  0001 C CNN
	1    3600 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5D7AF922
P 6600 1950
F 0 "BT1" H 6718 2046 50  0000 L CNN
F 1 "Battery_Cell" H 6718 1955 50  0000 L CNN
F 2 "mibe:BatteryHolder_MPD_BA9VPC_1xPP3" V 6600 2010 50  0001 C CNN
F 3 "~" V 6600 2010 50  0001 C CNN
	1    6600 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5D7B04E5
P 6600 2300
F 0 "#PWR014" H 6600 2050 50  0001 C CNN
F 1 "GND" H 6605 2127 50  0000 C CNN
F 2 "" H 6600 2300 50  0001 C CNN
F 3 "" H 6600 2300 50  0001 C CNN
	1    6600 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR013
U 1 1 5D7B0C39
P 6600 1500
F 0 "#PWR013" H 6600 1350 50  0001 C CNN
F 1 "+9V" H 6615 1673 50  0000 C CNN
F 2 "" H 6600 1500 50  0001 C CNN
F 3 "" H 6600 1500 50  0001 C CNN
	1    6600 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 5D7B33F9
P 9550 2200
F 0 "J5" H 9578 2226 50  0000 L CNN
F 1 "Conn_01x01_Female" H 9578 2135 50  0000 L CNN
F 2 "mibe:Keystone_269" H 9550 2200 50  0001 C CNN
F 3 "~" H 9550 2200 50  0001 C CNN
	1    9550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4500 3950 4500
Wire Wire Line
	6600 2300 6600 2050
Wire Wire Line
	6600 1500 6600 1600
$Comp
L power:+10V #PWR012
U 1 1 5D7BA04E
P 6000 4400
F 0 "#PWR012" H 6000 4275 50  0001 C CNN
F 1 "+10V" H 6015 4573 50  0000 C CNN
F 2 "" H 6000 4400 50  0001 C CNN
F 3 "" H 6000 4400 50  0001 C CNN
	1    6000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4400 3600 4500
Wire Wire Line
	4350 4050 3950 4050
Wire Wire Line
	3950 4050 3950 4500
Connection ~ 3950 4500
Wire Wire Line
	3950 4500 4200 4500
$Comp
L Device:L L1
U 1 1 5D7BE1D7
P 4500 4050
F 0 "L1" V 4690 4050 50  0000 C CNN
F 1 "LQH43MN100K03L" V 4599 4050 50  0000 C CNN
F 2 "Inductor_SMD:L_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 4500 4050 50  0001 C CNN
F 3 "~" H 4500 4050 50  0001 C CNN
F 4 "10 µH" H 4500 4050 50  0001 C CNN "Characteristics"
	1    4500 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 4050 5050 4050
Wire Wire Line
	6000 4500 6000 4400
Wire Wire Line
	5050 4050 5050 4500
Wire Wire Line
	4800 4500 5050 4500
$Comp
L Device:D_Schottky D1
U 1 1 5D7BFAAD
P 5550 4500
F 0 "D1" H 5550 4284 50  0000 C CNN
F 1 "NSR0320MW2T1G" H 5550 4375 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5550 4500 50  0001 C CNN
F 3 "~" H 5550 4500 50  0001 C CNN
	1    5550 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 4500 5400 4500
Connection ~ 5050 4500
Wire Wire Line
	5700 4500 6000 4500
Wire Wire Line
	4200 4700 3950 4700
Wire Wire Line
	3950 4700 3950 4500
$Comp
L Device:R R4
U 1 1 5D7C1839
P 5550 4700
F 0 "R4" V 5650 4700 50  0000 C CNN
F 1 "110k" V 5650 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5480 4700 50  0001 C CNN
F 3 "~" H 5550 4700 50  0001 C CNN
F 4 "1%" H 5550 4700 50  0001 C CNN "Characteristics"
	1    5550 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 4700 5050 4700
Wire Wire Line
	5050 4700 5050 4900
Connection ~ 5050 4700
Wire Wire Line
	5050 4700 5400 4700
Wire Wire Line
	5700 4700 6000 4700
Wire Wire Line
	6000 4700 6000 4500
Connection ~ 6000 4500
$Comp
L Device:C C1
U 1 1 5D7C588D
P 3950 5050
F 0 "C1" H 4065 5096 50  0000 L CNN
F 1 "2.2µ" H 4065 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3988 4900 50  0001 C CNN
F 3 "~" H 3950 5050 50  0001 C CNN
F 4 "MLCC X5R / X7R" H 3950 5050 50  0001 C CNN "Characteristics"
	1    3950 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D7C63E9
P 5550 4900
F 0 "C2" V 5400 4900 50  0000 C CNN
F 1 "270p" V 5300 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5588 4750 50  0001 C CNN
F 3 "~" H 5550 4900 50  0001 C CNN
F 4 "MLCC X5R / X7R" H 5550 4900 50  0001 C CNN "Characteristics"
	1    5550 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 4900 6000 4900
Wire Wire Line
	6000 4900 6000 4700
Connection ~ 6000 4700
$Comp
L Device:R R3
U 1 1 5D7C2573
P 5050 5200
F 0 "R3" H 5120 5246 50  0000 L CNN
F 1 "15k" H 5120 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 5200 50  0001 C CNN
F 3 "~" H 5050 5200 50  0001 C CNN
F 4 "1%" H 5050 5200 50  0001 C CNN "Characteristics"
	1    5050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4900 5050 4900
Connection ~ 5050 4900
Wire Wire Line
	5050 4900 5050 5050
Wire Wire Line
	5050 5350 5050 5450
Wire Wire Line
	5050 5450 4500 5450
Connection ~ 4500 5450
Wire Wire Line
	4500 5450 4500 5550
Wire Wire Line
	4500 5450 3950 5450
Wire Wire Line
	3950 5450 3950 5200
Wire Wire Line
	3950 4900 3950 4700
Connection ~ 3950 4700
$Comp
L power:VCC #PWR017
U 1 1 5D7CE5BE
P 9100 1350
F 0 "#PWR017" H 9100 1200 50  0001 C CNN
F 1 "VCC" H 9117 1523 50  0000 C CNN
F 2 "" H 9100 1350 50  0001 C CNN
F 3 "" H 9100 1350 50  0001 C CNN
	1    9100 1350
	1    0    0    -1  
$EndComp
$Comp
L Power_Management:LTC4412xS6 U2
U 1 1 5D80063F
P 8300 4750
F 0 "U2" H 8450 4350 50  0000 L CNN
F 1 "LTC4412xS6" H 8450 4250 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-6" H 8950 4400 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/4412fb.pdf" H 10400 4550 50  0001 C CNN
	1    8300 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR015
U 1 1 5D80E41A
P 7300 3900
F 0 "#PWR015" H 7300 3750 50  0001 C CNN
F 1 "+9V" H 7315 4073 50  0000 C CNN
F 2 "" H 7300 3900 50  0001 C CNN
F 3 "" H 7300 3900 50  0001 C CNN
	1    7300 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5D80F038
P 8300 5700
F 0 "#PWR016" H 8300 5450 50  0001 C CNN
F 1 "GND" H 8305 5527 50  0000 C CNN
F 2 "" H 8300 5700 50  0001 C CNN
F 3 "" H 8300 5700 50  0001 C CNN
	1    8300 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5700 8300 5400
Connection ~ 8300 5400
Wire Wire Line
	8300 5400 8300 5150
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 5D8125DD
P 8300 4100
F 0 "Q1" V 8643 4100 50  0000 C CNN
F 1 "IRLML6402PbF" V 8552 4100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 8500 4200 50  0001 C CNN
F 3 "~" H 8300 4100 50  0001 C CNN
	1    8300 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 4300 8300 4350
$Comp
L power:+10V #PWR019
U 1 1 5D81D72F
P 8900 3600
F 0 "#PWR019" H 8900 3475 50  0001 C CNN
F 1 "+10V" H 8915 3773 50  0000 C CNN
F 2 "" H 8900 3600 50  0001 C CNN
F 3 "" H 8900 3600 50  0001 C CNN
	1    8900 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4650 8950 4650
$Comp
L power:VCC #PWR020
U 1 1 5D81EFA0
P 10050 3900
F 0 "#PWR020" H 10050 3750 50  0001 C CNN
F 1 "VCC" H 10067 4073 50  0000 C CNN
F 2 "" H 10050 3900 50  0001 C CNN
F 3 "" H 10050 3900 50  0001 C CNN
	1    10050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3900 10050 4000
Wire Wire Line
	10050 4000 9500 4000
Wire Wire Line
	8100 4000 7650 4000
Wire Wire Line
	7300 4000 7300 3900
$Comp
L Device:C C3
U 1 1 5D832805
P 7300 4750
F 0 "C3" H 7415 4796 50  0000 L CNN
F 1 "100n" H 7415 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7338 4600 50  0001 C CNN
F 3 "~" H 7300 4750 50  0001 C CNN
	1    7300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4600 7300 4000
Connection ~ 7300 4000
Wire Wire Line
	7300 4900 7300 5400
Wire Wire Line
	7300 5400 7650 5400
Wire Wire Line
	7900 4650 7650 4650
Wire Wire Line
	7650 4650 7650 4000
Connection ~ 7650 4000
Wire Wire Line
	7650 4000 7300 4000
Wire Wire Line
	7900 4850 7650 4850
Wire Wire Line
	7650 4850 7650 5400
Connection ~ 7650 5400
Wire Wire Line
	7650 5400 8300 5400
$Comp
L Device:Net-Tie_2 NT1
U 1 1 5D83D321
P 9400 3600
F 0 "NT1" H 9400 3781 50  0000 C CNN
F 1 "Net-Tie_2" H 9400 3690 50  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad0.5mm" H 9400 3600 50  0001 C CNN
F 3 "~" H 9400 3600 50  0001 C CNN
	1    9400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3600 9300 3600
Wire Wire Line
	9500 3600 9500 4000
Connection ~ 9500 4000
NoConn ~ 8700 4850
$Comp
L power:GND #PWR018
U 1 1 5D7B57E1
P 9100 2450
F 0 "#PWR018" H 9100 2200 50  0001 C CNN
F 1 "GND" H 9105 2277 50  0000 C CNN
F 2 "" H 9100 2450 50  0001 C CNN
F 3 "" H 9100 2450 50  0001 C CNN
	1    9100 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 5D7B3CC5
P 9550 1600
F 0 "J6" H 9522 1624 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9522 1533 50  0000 R CNN
F 2 "mibe:Keystone_261" H 9550 1600 50  0001 C CNN
F 3 "~" H 9550 1600 50  0001 C CNN
	1    9550 1600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D843A82
P 2400 3500
F 0 "R1" H 2470 3546 50  0000 L CNN
F 1 "5.1k" H 2470 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2330 3500 50  0001 C CNN
F 3 "~" H 2400 3500 50  0001 C CNN
F 4 "max. 10%" H 2400 3500 50  0001 C CNN "Characteristics"
	1    2400 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2400 3350 2400 3300
Wire Wire Line
	2400 3300 2050 3300
Wire Wire Line
	2050 3200 2600 3200
Wire Wire Line
	2600 3200 2600 3350
$Comp
L power:GND #PWR05
U 1 1 5D84CA92
P 2500 3850
F 0 "#PWR05" H 2500 3600 50  0001 C CNN
F 1 "GND" H 2505 3677 50  0000 C CNN
F 2 "" H 2500 3850 50  0001 C CNN
F 3 "" H 2500 3850 50  0001 C CNN
	1    2500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3650 2400 3750
Wire Wire Line
	2400 3750 2500 3750
Wire Wire Line
	2600 3750 2600 3650
Wire Wire Line
	2500 3850 2500 3750
Connection ~ 2500 3750
Wire Wire Line
	2500 3750 2600 3750
Text Notes 1150 6800 0    50   ~ 0
R1, R2: Termination resistors tolerance max. 10% (USB C spec. 2.0, table 4-25)
Text Notes 1150 6900 0    50   ~ 0
C1, C2: MLCC X5R / X7R
$Comp
L Device:R R2
U 1 1 5D84506B
P 2600 3500
F 0 "R2" H 2670 3546 50  0000 L CNN
F 1 "5.1k" H 2670 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2530 3500 50  0001 C CNN
F 3 "~" H 2600 3500 50  0001 C CNN
F 4 "max. 10%" H 2600 3500 50  0001 C CNN "Characteristics"
	1    2600 3500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D85F7FC
P 3600 4650
F 0 "#FLG0101" H 3600 4725 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 4823 50  0000 C CNN
F 2 "" H 3600 4650 50  0001 C CNN
F 3 "~" H 3600 4650 50  0001 C CNN
	1    3600 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 4650 3600 4500
Connection ~ 3600 4500
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D861C84
P 6200 4900
F 0 "#FLG0102" H 6200 4975 50  0001 C CNN
F 1 "PWR_FLAG" H 6200 5073 50  0000 C CNN
F 2 "" H 6200 4900 50  0001 C CNN
F 3 "~" H 6200 4900 50  0001 C CNN
	1    6200 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4900 6000 4900
Connection ~ 6000 4900
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5D863EDB
P 6450 1600
F 0 "#FLG0103" H 6450 1675 50  0001 C CNN
F 1 "PWR_FLAG" V 6450 1727 50  0000 L CNN
F 2 "" H 6450 1600 50  0001 C CNN
F 3 "~" H 6450 1600 50  0001 C CNN
	1    6450 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 1600 6600 1600
Connection ~ 6600 1600
Wire Wire Line
	6600 1600 6600 1750
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5D869C42
P 10050 4150
F 0 "#FLG0104" H 10050 4225 50  0001 C CNN
F 1 "PWR_FLAG" H 10050 4323 50  0000 C CNN
F 2 "" H 10050 4150 50  0001 C CNN
F 3 "~" H 10050 4150 50  0001 C CNN
	1    10050 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	10050 4150 10050 4000
Connection ~ 10050 4000
Text Notes 1150 7000 0    50   ~ 0
R3, R4: Tolerance 1%
Wire Wire Line
	8950 4650 8950 4000
Connection ~ 8950 4000
Wire Wire Line
	8950 4000 9500 4000
Wire Wire Line
	8500 4000 8950 4000
Wire Wire Line
	6000 5050 6000 4900
Wire Wire Line
	6000 5350 6000 5450
Wire Wire Line
	6000 5450 5050 5450
Connection ~ 5050 5450
$Comp
L Device:C C4
U 1 1 5D88F65A
P 6000 5200
F 0 "C4" H 6115 5246 50  0000 L CNN
F 1 "4.7µ" H 6115 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6038 5050 50  0001 C CNN
F 3 "~" H 6000 5200 50  0001 C CNN
	1    6000 5200
	1    0    0    -1  
$EndComp
Text Notes 1150 7100 0    50   ~ 0
L1: 10 µH
$Comp
L Device:CP C5
U 1 1 5D8BFCAB
P 9100 1900
F 0 "C5" H 9218 1946 50  0000 L CNN
F 1 "2.2µ" H 9218 1855 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-12_Kemet-T_Pad1.50x2.35mm_HandSolder" H 9138 1750 50  0001 C CNN
F 3 "~" H 9100 1900 50  0001 C CNN
	1    9100 1900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5DA80BBC
P 5950 6800
F 0 "H2" H 6050 6846 50  0000 L CNN
F 1 "MountingHole" H 6050 6755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5950 6800 50  0001 C CNN
F 3 "~" H 5950 6800 50  0001 C CNN
	1    5950 6800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5DA81C0F
P 5950 6600
F 0 "H1" H 6050 6646 50  0000 L CNN
F 1 "MountingHole" H 6050 6555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5950 6600 50  0001 C CNN
F 3 "~" H 5950 6600 50  0001 C CNN
	1    5950 6600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5DA82263
P 5950 7000
F 0 "H3" H 6050 7046 50  0000 L CNN
F 1 "MountingHole" H 6050 6955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5950 7000 50  0001 C CNN
F 3 "~" H 5950 7000 50  0001 C CNN
	1    5950 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5DA824F6
P 5950 7200
F 0 "H4" H 6050 7246 50  0000 L CNN
F 1 "MountingHole" H 6050 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5950 7200 50  0001 C CNN
F 3 "~" H 5950 7200 50  0001 C CNN
	1    5950 7200
	1    0    0    -1  
$EndComp
Text Label 4900 4500 0    50   ~ 0
SW
Text Label 4900 4700 0    50   ~ 0
FB
Text Label 8300 4350 1    50   ~ 0
G
Text Label 2050 3200 0    50   ~ 0
USB_C-CC1
Text Label 2050 3300 0    50   ~ 0
USB_C-CC2
$Comp
L Mechanical:MountingHole H5
U 1 1 5DB3DB97
P 5950 7400
F 0 "H5" H 6050 7446 50  0000 L CNN
F 1 "MountingHole" H 6050 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5950 7400 50  0001 C CNN
F 3 "~" H 5950 7400 50  0001 C CNN
	1    5950 7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5DB4140D
P 5950 7600
F 0 "H6" H 6050 7646 50  0000 L CNN
F 1 "MountingHole" H 6050 7555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5950 7600 50  0001 C CNN
F 3 "~" H 5950 7600 50  0001 C CNN
	1    5950 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1350 9100 1600
Wire Wire Line
	9100 2050 9100 2200
Wire Wire Line
	9350 1600 9100 1600
Connection ~ 9100 1600
Wire Wire Line
	9100 1600 9100 1750
Wire Wire Line
	9350 2200 9100 2200
Connection ~ 9100 2200
Wire Wire Line
	9100 2200 9100 2450
$EndSCHEMATC
