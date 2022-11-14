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
L mibe:PAM2804AAB010 U3
U 1 1 6369B35B
P 5600 2800
F 0 "U3" H 5600 3167 50  0000 C CNN
F 1 "PAM2804AAB010" H 5600 3076 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 5650 2550 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/products_inactive_data/PAM2804.pdf" H 5350 2450 50  0001 C CNN
	1    5600 2800
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny25-20SSU U1
U 1 1 6369BBC6
P 2800 5300
F 0 "U1" H 2400 5850 50  0000 R CNN
F 1 "ATtiny25-20SSU" H 2650 4750 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2800 5300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 2800 5300 50  0001 C CNN
	1    2800 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6369D795
P 5350 5500
F 0 "C3" H 5465 5546 50  0000 L CNN
F 1 "C" H 5465 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5388 5350 50  0001 C CNN
F 3 "~" H 5350 5500 50  0001 C CNN
	1    5350 5500
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 6369DFE7
P 5350 5200
F 0 "C4" H 5465 5246 50  0000 L CNN
F 1 "C" H 5465 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5388 5050 50  0001 C CNN
F 3 "~" H 5350 5200 50  0001 C CNN
	1    5350 5200
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 636A08B3
P 8250 3100
F 0 "C2" H 8365 3146 50  0000 L CNN
F 1 "C1206C106K3PACTU" H 8365 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8288 2950 50  0001 C CNN
F 3 "~" H 8250 3100 50  0001 C CNN
	1    8250 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 636A0DE7
P 7750 3100
F 0 "C5" H 7865 3146 50  0000 L CNN
F 1 "100 nF" H 7865 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7788 2950 50  0001 C CNN
F 3 "~" H 7750 3100 50  0001 C CNN
	1    7750 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 636A1A59
P 6850 3350
F 0 "R1" H 6920 3396 50  0000 L CNN
F 1 "CRL1206-FW-R820" H 6920 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 6780 3350 50  0001 C CNN
F 3 "~" H 6850 3350 50  0001 C CNN
	1    6850 3350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 636A2B0E
P 4000 5000
F 0 "SW1" H 4000 5285 50  0000 C CNN
F 1 "TL3301" H 4000 5194 50  0000 C CNN
F 2 "mibe:SW_SPST_TL3301" H 4000 5200 50  0001 C CNN
F 3 "~" H 4000 5200 50  0001 C CNN
	1    4000 5000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 636A5139
P 7750 2700
F 0 "#FLG0101" H 7750 2775 50  0001 C CNN
F 1 "PWR_FLAG" H 7750 2873 50  0000 C CNN
F 2 "" H 7750 2700 50  0001 C CNN
F 3 "~" H 7750 2700 50  0001 C CNN
	1    7750 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 636A57D5
P 2800 6000
F 0 "#PWR0101" H 2800 5750 50  0001 C CNN
F 1 "GND" H 2805 5827 50  0000 C CNN
F 2 "" H 2800 6000 50  0001 C CNN
F 3 "" H 2800 6000 50  0001 C CNN
	1    2800 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 636A5CD9
P 6850 2900
F 0 "D1" V 6889 2782 50  0000 R CNN
F 1 "LEDs" V 6798 2782 50  0000 R CNN
F 2 "" H 6850 2900 50  0001 C CNN
F 3 "~" H 6850 2900 50  0001 C CNN
	1    6850 2900
	0    -1   -1   0   
$EndComp
Text Notes 6450 2800 0    50   ~ 0
15 µH
$Comp
L mibe:SGM809 U2
U 1 1 636AEB68
P 3100 3150
F 0 "U2" H 2870 3196 50  0000 R CNN
F 1 "SGM809B-SXN3LG" H 2870 3105 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23W_Handsoldering" H 2700 3300 50  0001 C CNN
F 3 "http://www.sg-micro.com/uploads/soft/20190626/1561528457.pdf" H 2800 3400 50  0001 C CNN
	1    3100 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6369F26A
P 4550 3200
F 0 "C1" H 4665 3246 50  0000 L CNN
F 1 "C1206C106K3PACTU" H 4665 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4588 3050 50  0001 C CNN
F 3 "~" H 4550 3200 50  0001 C CNN
F 4 "±10 %; X5R" H 4550 3200 50  0001 C CNN "Characteristics"
	1    4550 3200
	1    0    0    -1  
$EndComp
Text Notes 5000 3200 0    50   ~ 0
10 µF
Wire Wire Line
	5200 2700 4550 2700
Wire Wire Line
	4550 2700 4550 3050
Wire Wire Line
	4550 3600 5600 3600
Wire Wire Line
	5600 3600 5600 3100
Wire Wire Line
	4550 3350 4550 3600
Wire Wire Line
	4550 3600 3000 3600
Wire Wire Line
	3000 3600 3000 3550
Connection ~ 4550 3600
Wire Wire Line
	4550 2700 3000 2700
Wire Wire Line
	3000 2700 3000 2750
Connection ~ 4550 2700
$Comp
L power:+BATT #PWR0102
U 1 1 636B99F8
P 2350 2700
F 0 "#PWR0102" H 2350 2550 50  0001 C CNN
F 1 "+BATT" H 2365 2873 50  0000 C CNN
F 2 "" H 2350 2700 50  0001 C CNN
F 3 "" H 2350 2700 50  0001 C CNN
	1    2350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2700 3000 2700
Connection ~ 3000 2700
$Comp
L power:GND #PWR0103
U 1 1 636BA4A7
P 2400 3600
F 0 "#PWR0103" H 2400 3350 50  0001 C CNN
F 1 "GND" H 2405 3427 50  0000 C CNN
F 2 "" H 2400 3600 50  0001 C CNN
F 3 "" H 2400 3600 50  0001 C CNN
	1    2400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3600 2400 3600
Connection ~ 3000 3600
Text GLabel 3650 3150 2    50   Output ~ 0
RESET
Text GLabel 3650 5500 2    50   Input ~ 0
RESET
Text GLabel 5000 2900 0    50   Input ~ 0
ENABLE
Wire Wire Line
	5000 2900 5200 2900
Wire Wire Line
	3650 3150 3400 3150
Wire Wire Line
	3400 5500 3650 5500
Wire Wire Line
	4600 5500 4400 5500
Wire Wire Line
	4400 5500 4400 5400
Wire Wire Line
	4400 5400 3400 5400
Wire Wire Line
	4600 5200 4400 5200
Wire Wire Line
	4400 5200 4400 5300
Wire Wire Line
	4400 5300 3400 5300
Wire Wire Line
	5200 5200 4600 5200
Wire Wire Line
	4600 5500 5200 5500
$Comp
L power:GND #PWR0104
U 1 1 636C6851
P 5600 5550
F 0 "#PWR0104" H 5600 5300 50  0001 C CNN
F 1 "GND" H 5605 5377 50  0000 C CNN
F 2 "" H 5600 5550 50  0001 C CNN
F 3 "" H 5600 5550 50  0001 C CNN
	1    5600 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5550 5600 5500
Wire Wire Line
	5600 5500 5600 5200
Wire Wire Line
	5600 5200 5500 5200
Wire Wire Line
	5500 5500 5600 5500
Wire Wire Line
	6850 3200 6850 3100
Wire Wire Line
	5600 3600 6850 3600
Wire Wire Line
	6850 3600 6850 3500
Connection ~ 5600 3600
Wire Wire Line
	8250 2950 8250 2700
Wire Wire Line
	8250 2700 7750 2700
Wire Wire Line
	6850 2750 6850 2700
Wire Wire Line
	6850 3600 7750 3600
Wire Wire Line
	8250 3600 8250 3250
Wire Wire Line
	6850 3100 6100 3100
Wire Wire Line
	6100 3100 6100 2900
Wire Wire Line
	6100 2900 6000 2900
Connection ~ 6850 3100
Wire Wire Line
	6850 3100 6850 3050
Text GLabel 3650 5200 2    50   Output ~ 0
ENABLE
Wire Wire Line
	3650 5200 3400 5200
Wire Wire Line
	2800 6000 2800 5900
Wire Wire Line
	7750 2950 7750 2700
Connection ~ 7750 2700
Wire Wire Line
	7750 2700 6850 2700
Wire Wire Line
	7750 3250 7750 3600
Connection ~ 7750 3600
Wire Wire Line
	7750 3600 8250 3600
Text Notes 8700 3100 0    50   ~ 0
10 µF
$Comp
L power:+2V8 #PWR0105
U 1 1 636E24C5
P 8250 2700
F 0 "#PWR0105" H 8250 2550 50  0001 C CNN
F 1 "+2V8" H 8265 2873 50  0000 C CNN
F 2 "" H 8250 2700 50  0001 C CNN
F 3 "" H 8250 2700 50  0001 C CNN
	1    8250 2700
	1    0    0    -1  
$EndComp
Connection ~ 8250 2700
Wire Wire Line
	2800 4650 2800 4700
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 636E7652
P 3000 2700
F 0 "#FLG0102" H 3000 2775 50  0001 C CNN
F 1 "PWR_FLAG" H 3000 2873 50  0000 C CNN
F 2 "" H 3000 2700 50  0001 C CNN
F 3 "~" H 3000 2700 50  0001 C CNN
	1    3000 2700
	1    0    0    -1  
$EndComp
Connection ~ 4600 5500
Connection ~ 4600 5200
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 636ECB08
P 2400 3600
F 0 "#FLG0103" H 2400 3675 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 3773 50  0000 C CNN
F 2 "" H 2400 3600 50  0001 C CNN
F 3 "~" H 2400 3600 50  0001 C CNN
	1    2400 3600
	1    0    0    -1  
$EndComp
Connection ~ 2400 3600
Connection ~ 5600 5500
Wire Wire Line
	5600 5200 5600 5000
Wire Wire Line
	5600 5000 4200 5000
Connection ~ 5600 5200
Wire Wire Line
	3800 5000 3400 5000
NoConn ~ 3400 5100
Connection ~ 6850 3600
Connection ~ 6850 2700
Text Notes 7250 3350 0    50   ~ 0
0.82 Ω
$Comp
L power:+BATT #PWR0106
U 1 1 636EEFD2
P 2800 4650
F 0 "#PWR0106" H 2800 4500 50  0001 C CNN
F 1 "+BATT" H 2815 4823 50  0000 C CNN
F 2 "" H 2800 4650 50  0001 C CNN
F 3 "" H 2800 4650 50  0001 C CNN
	1    2800 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 6369D0A6
P 4600 5350
F 0 "Y1" V 4350 5350 50  0000 C CNN
F 1 "32.768 kHz" V 4850 5350 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_MC146-4Pin_6.7x1.5mm_HandSoldering" H 4600 5350 50  0001 C CNN
F 3 "~" H 4600 5350 50  0001 C CNN
	1    4600 5350
	0    1    1    0   
$EndComp
Text Notes 7000 3100 0    50   ~ 0
Iled ~~ 122 mA
$Comp
L Mechanical:MountingHole H1
U 1 1 6372BC7B
P 7700 6000
F 0 "H1" H 7800 6046 50  0000 L CNN
F 1 "MountingHole" H 7800 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 7700 6000 50  0001 C CNN
F 3 "~" H 7700 6000 50  0001 C CNN
	1    7700 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6372C182
P 8500 6000
F 0 "H2" H 8600 6046 50  0000 L CNN
F 1 "MountingHole" H 8600 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 8500 6000 50  0001 C CNN
F 3 "~" H 8500 6000 50  0001 C CNN
	1    8500 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6372C56E
P 9300 6000
F 0 "H3" H 9400 6046 50  0000 L CNN
F 1 "MountingHole" H 9400 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm" H 9300 6000 50  0001 C CNN
F 3 "~" H 9300 6000 50  0001 C CNN
	1    9300 6000
	1    0    0    -1  
$EndComp
Text Label 4100 5400 0    50   ~ 0
XTAL2
Text Label 4100 5300 0    50   ~ 0
XTAL1
$Comp
L Device:L L1
U 1 1 6369E4E0
P 6550 2700
F 0 "L1" V 6740 2700 50  0000 C CNN
F 1 "SRU1038-150Y" V 6649 2700 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns-SRU1028_10.0x10.0mm" H 6550 2700 50  0001 C CNN
F 3 "~" H 6550 2700 50  0001 C CNN
F 4 "ESR as low as possible" H 6550 2700 50  0001 C CNN "Characteristics"
	1    6550 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 2700 6000 2700
Wire Wire Line
	6850 2700 6700 2700
Text Label 6050 2700 0    50   ~ 0
SW
Text Label 6150 3100 0    50   ~ 0
FB
$EndSCHEMATC
