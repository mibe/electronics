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
LIBS:ATtiny-BB-cache
EELAYER 25 0
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
L Conn_01x04_Male J1
U 1 1 5B7498D9
P 3000 2800
F 0 "J1" H 3000 3000 50  0000 C CNN
F 1 "Conn_01x04" H 3000 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3000 2800 50  0001 C CNN
F 3 "" H 3000 2800 50  0001 C CNN
	1    3000 2800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04_Male J2
U 1 1 5B749966
P 3000 3600
F 0 "J2" H 3000 3800 50  0000 C CNN
F 1 "Conn_01x04" H 3000 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3000 3600 50  0001 C CNN
F 3 "" H 3000 3600 50  0001 C CNN
	1    3000 3600
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02_Male J3
U 1 1 5B749BFC
P 6150 2100
F 0 "J3" H 6150 2200 50  0000 C CNN
F 1 "Conn_01x02" H 6150 1900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6150 2100 50  0001 C CNN
F 3 "" H 6150 2100 50  0001 C CNN
	1    6150 2100
	-1   0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5B749CE9
P 8450 3550
F 0 "C1" H 8475 3650 50  0000 L CNN
F 1 "100n" H 8475 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8488 3400 50  0001 C CNN
F 3 "" H 8450 3550 50  0001 C CNN
	1    8450 3550
	1    0    0    -1  
$EndComp
$Comp
L ATTINY45-20PU U1
U 1 1 5B74A2CE
P 6850 3550
F 0 "U1" H 5700 3950 50  0000 C CNN
F 1 "ATTINY45-20PU" H 7850 3150 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 7850 3550 50  0001 C CIN
F 3 "" H 6850 3550 50  0001 C CNN
	1    6850 3550
	1    0    0    -1  
$EndComp
$Comp
L AVR-ISP-6 J4
U 1 1 5B78B057
P 4800 2200
F 0 "J4" H 4695 2440 50  0000 C CNN
F 1 "AVR-ISP-6" H 4535 1970 50  0000 L BNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" V 4280 2240 50  0001 C CNN
F 3 "" H 4775 2200 50  0001 C CNN
	1    4800 2200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 5B78C01C
P 8450 2900
F 0 "#FLG01" H 8450 2975 50  0001 C CNN
F 1 "PWR_FLAG" H 8450 3050 50  0000 C CNN
F 2 "" H 8450 2900 50  0001 C CNN
F 3 "" H 8450 2900 50  0001 C CNN
	1    8450 2900
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5B78C090
P 8450 4200
F 0 "#FLG02" H 8450 4275 50  0001 C CNN
F 1 "PWR_FLAG" H 8450 4350 50  0000 C CNN
F 2 "" H 8450 4200 50  0001 C CNN
F 3 "" H 8450 4200 50  0001 C CNN
	1    8450 4200
	-1   0    0    1   
$EndComp
Connection ~ 8450 4100
Connection ~ 8450 3000
Wire Wire Line
	3500 3800 5500 3800
Wire Wire Line
	3500 3800 3500 3500
Wire Wire Line
	3500 3500 3200 3500
Wire Wire Line
	3200 3600 5500 3600
Wire Wire Line
	3200 3700 5500 3700
Wire Wire Line
	8200 3800 8450 3800
Wire Wire Line
	8450 3700 8450 4200
Wire Wire Line
	8450 4100 3400 4100
Wire Wire Line
	3400 4100 3400 3800
Wire Wire Line
	3400 3800 3200 3800
Wire Wire Line
	3800 3300 5500 3300
Wire Wire Line
	3800 3300 3800 2700
Wire Wire Line
	3800 2700 3200 2700
Wire Wire Line
	3700 3400 5500 3400
Wire Wire Line
	3700 3400 3700 2800
Wire Wire Line
	3700 2800 3200 2800
Wire Wire Line
	3600 3500 5500 3500
Wire Wire Line
	3600 3500 3600 2900
Wire Wire Line
	3600 2900 3200 2900
Wire Wire Line
	8200 3300 8450 3300
Wire Wire Line
	8450 2900 8450 3400
Wire Wire Line
	3200 3000 8450 3000
Wire Wire Line
	4900 2300 5250 2300
Wire Wire Line
	5250 2300 5250 4100
Connection ~ 5250 4100
Wire Wire Line
	4900 2200 5350 2200
Wire Wire Line
	5350 2200 5350 3300
Connection ~ 5350 3300
Wire Wire Line
	4650 2300 4300 2300
Wire Wire Line
	4300 2300 4300 3800
Connection ~ 4300 3800
Wire Wire Line
	4650 2200 4200 2200
Wire Wire Line
	4200 2200 4200 3500
Connection ~ 4200 3500
Wire Wire Line
	4650 2100 4100 2100
Wire Wire Line
	4100 2100 4100 3400
Connection ~ 4100 3400
Wire Wire Line
	4900 2100 5950 2100
Wire Wire Line
	5950 2200 5450 2200
Wire Wire Line
	5450 2200 5450 3000
Connection ~ 5450 3000
Connection ~ 8450 3300
Connection ~ 8450 3800
Text Notes 6550 2200 0    60   ~ 0
Jumper here for measuring current\nconsumption of the device (if needed)
$EndSCHEMATC
