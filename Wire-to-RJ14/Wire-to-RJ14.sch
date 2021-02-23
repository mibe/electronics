EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Wire-to-RJ14"
Date "2020-11-18"
Rev "20/1"
Comp "Michael Bemmerl"
Comment1 "Open Hardware: CERN OHL v1.2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:6P4C J1
U 1 1 5FB4540E
P 5450 3850
F 0 "J1" H 5507 4417 50  0000 C CNN
F 1 "6P4C" H 5507 4326 50  0000 C CNN
F 2 "mibe:RJ14_Reichelt_MEBP_6-4S" V 5450 3875 50  0001 C CNN
F 3 "~" V 5450 3875 50  0001 C CNN
	1    5450 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5FB460A5
P 7350 3750
F 0 "J2" H 7430 3742 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 7430 3651 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-2-2.54_1x02_P2.54mm_Horizontal" H 7350 3750 50  0001 C CNN
F 3 "~" H 7350 3750 50  0001 C CNN
	1    7350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3750 5850 3750
Wire Wire Line
	5850 3850 7150 3850
NoConn ~ 5850 3950
NoConn ~ 5850 3650
Text Label 6350 3750 0    50   ~ 0
La
Text Label 6350 3850 0    50   ~ 0
Lb
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5FB5C36F
P 10900 6850
F 0 "#LOGO1" H 10900 7125 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10900 6625 50  0001 C CNN
F 2 "" H 10900 6850 50  0001 C CNN
F 3 "~" H 10900 6850 50  0001 C CNN
	1    10900 6850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
