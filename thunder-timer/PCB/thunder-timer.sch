EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:thunder-timer-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "thunder-timer"
Date "2018-07-07"
Rev "1"
Comp "Michael Bemmerl"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY85-20PU U1
U 1 1 5B315E85
P 5950 2700
F 0 "U1" H 4800 3100 50  0000 C CNN
F 1 "ATTINY85-20PU" H 6950 2300 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 6950 2700 50  0001 C CIN
F 3 "" H 5950 2700 50  0001 C CNN
	1    5950 2700
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5B315FB7
P 7650 2700
F 0 "C1" H 7675 2800 50  0000 L CNN
F 1 "100n" H 7675 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7688 2550 50  0001 C CNN
F 3 "" H 7650 2700 50  0001 C CNN
	1    7650 2700
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5B316152
P 3950 2650
F 0 "SW1" H 4000 2750 50  0000 L CNN
F 1 "SW_Push" H 3950 2590 50  0000 C CNN
F 2 "mibe:SW_Push_10mm" H 3950 2850 50  0001 C CNN
F 3 "" H 3950 2850 50  0001 C CNN
	1    3950 2650
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B3163C8
P 3550 6000
F 0 "R2" V 3630 6000 50  0000 C CNN
F 1 "33k" V 3550 6000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3480 6000 50  0001 C CNN
F 3 "" H 3550 6000 50  0001 C CNN
	1    3550 6000
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B31642A
P 3150 5750
F 0 "R1" V 3230 5750 50  0000 C CNN
F 1 "6.8k" V 3150 5750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3080 5750 50  0001 C CNN
F 3 "" H 3150 5750 50  0001 C CNN
	1    3150 5750
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5B3164B8
P 4150 4500
F 0 "R3" V 4230 4500 50  0000 C CNN
F 1 "82" V 4150 4500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 4500 50  0001 C CNN
F 3 "" H 4150 4500 50  0001 C CNN
	1    4150 4500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5B3164FF
P 7650 2400
F 0 "#PWR01" H 7650 2250 50  0001 C CNN
F 1 "VCC" H 7650 2550 50  0000 C CNN
F 2 "" H 7650 2400 50  0001 C CNN
F 3 "" H 7650 2400 50  0001 C CNN
	1    7650 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B316521
P 7650 3000
F 0 "#PWR02" H 7650 2750 50  0001 C CNN
F 1 "GND" H 7650 2850 50  0000 C CNN
F 2 "" H 7650 3000 50  0001 C CNN
F 3 "" H 7650 3000 50  0001 C CNN
	1    7650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2450 8700 2450
Wire Wire Line
	7650 2400 7650 2550
Connection ~ 7650 2450
Wire Wire Line
	7300 2950 8700 2950
Wire Wire Line
	7650 2850 7650 3000
Connection ~ 7650 2950
Wire Wire Line
	4600 2650 4150 2650
$Comp
L GND #PWR03
U 1 1 5B355631
P 3350 2950
F 0 "#PWR03" H 3350 2700 50  0001 C CNN
F 1 "GND" H 3350 2800 50  0000 C CNN
F 2 "" H 3350 2950 50  0001 C CNN
F 3 "" H 3350 2950 50  0001 C CNN
	1    3350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2650 3350 2650
Wire Wire Line
	3350 2650 3350 2950
$Comp
L Q_NPN_BCE Q1
U 1 1 5B355AB8
P 4050 5750
F 0 "Q1" H 4250 5825 50  0000 L CNN
F 1 "2PC945" H 4250 5750 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 4250 5675 50  0001 L CIN
F 3 "" H 4050 5750 50  0001 L CNN
	1    4050 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5B355EB2
P 4150 6450
F 0 "#PWR04" H 4150 6200 50  0001 C CNN
F 1 "GND" H 4150 6300 50  0000 C CNN
F 2 "" H 4150 6450 50  0001 C CNN
F 3 "" H 4150 6450 50  0001 C CNN
	1    4150 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5950 4150 6450
Wire Wire Line
	3550 5850 3550 5750
Wire Wire Line
	3300 5750 3850 5750
Wire Wire Line
	3550 6150 3550 6250
Wire Wire Line
	3550 6250 4150 6250
Connection ~ 4150 6250
Wire Wire Line
	4150 5150 4150 5550
Connection ~ 3550 5750
$Comp
L VCC #PWR05
U 1 1 5B356641
P 4150 4100
F 0 "#PWR05" H 4150 3950 50  0001 C CNN
F 1 "VCC" H 4150 4250 50  0000 C CNN
F 2 "" H 4150 4100 50  0001 C CNN
F 3 "" H 4150 4100 50  0001 C CNN
	1    4150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4100 4150 4350
Wire Wire Line
	1550 2450 4600 2450
Wire Wire Line
	1550 2450 1550 5750
Wire Wire Line
	1550 5750 3000 5750
Wire Wire Line
	4150 4950 4350 4950
Wire Wire Line
	4150 4950 4150 4650
Text Notes 5150 5150 0    60   Italic 0
Standard computer mainboard\nbuzzer connected here
NoConn ~ 4600 2950
NoConn ~ 4600 2850
NoConn ~ 4600 2750
NoConn ~ 4600 2550
$Comp
L PWR_FLAG #FLG06
U 1 1 5B4112EC
P 8350 2450
F 0 "#FLG06" H 8350 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 8350 2600 50  0000 C CNN
F 2 "" H 8350 2450 50  0001 C CNN
F 3 "" H 8350 2450 50  0001 C CNN
	1    8350 2450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 5B41131C
P 8350 2950
F 0 "#FLG07" H 8350 3025 50  0001 C CNN
F 1 "PWR_FLAG" H 8350 3100 50  0000 C CNN
F 2 "" H 8350 2950 50  0001 C CNN
F 3 "" H 8350 2950 50  0001 C CNN
	1    8350 2950
	1    0    0    -1  
$EndComp
Connection ~ 8350 2450
Connection ~ 8350 2950
$Comp
L Conn_01x02 J1
U 1 1 5B428B05
P 9000 2650
F 0 "J1" H 9000 2750 50  0000 C CNN
F 1 "Conn_01x02" H 9000 2450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 9000 2650 50  0001 C CNN
F 3 "" H 9000 2650 50  0001 C CNN
	1    9000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2450 8700 2650
Wire Wire Line
	8700 2650 8800 2650
Wire Wire Line
	8800 2750 8700 2750
Wire Wire Line
	8700 2750 8700 2950
$Comp
L Buzzer BZ1
U 1 1 5B43C4D2
P 4450 5050
F 0 "BZ1" H 4600 5100 50  0000 L CNN
F 1 "Buzzer" H 4600 5000 50  0000 L CNN
F 2 "mibe:Buzzer_12x9.5RM5" V 4425 5150 50  0001 C CNN
F 3 "" V 4425 5150 50  0001 C CNN
	1    4450 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5150 4150 5150
$EndSCHEMATC
