EESchema Schematic File Version 4
LIBS:Can_EngineTranslator-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Regulator_Switching:LM2596S-5 U2
U 1 1 5F615EE7
P 5300 2050
F 0 "U2" H 5300 2200 50  0000 C CNN
F 1 "LM2596S-5" H 5300 2100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 5350 1800 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 5300 2050 50  0001 C CNN
	1    5300 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5F615F7A
P 7250 1750
F 0 "#PWR022" H 7250 1600 50  0001 C CNN
F 1 "+5V" H 7265 1923 50  0000 C CNN
F 2 "" H 7250 1750 50  0001 C CNN
F 3 "" H 7250 1750 50  0001 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5F616034
P 5300 2900
F 0 "#PWR019" H 5300 2650 50  0001 C CNN
F 1 "GND" H 5305 2727 50  0000 C CNN
F 2 "" H 5300 2900 50  0001 C CNN
F 3 "" H 5300 2900 50  0001 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5F61606C
P 5300 4150
F 0 "#PWR020" H 5300 3900 50  0001 C CNN
F 1 "GND" H 5305 3977 50  0000 C CNN
F 2 "" H 5300 4150 50  0001 C CNN
F 3 "" H 5300 4150 50  0001 C CNN
	1    5300 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR021
U 1 1 5F616098
P 5750 3550
F 0 "#PWR021" H 5750 3400 50  0001 C CNN
F 1 "+3.3V" H 5765 3723 50  0000 C CNN
F 2 "" H 5750 3550 50  0001 C CNN
F 3 "" H 5750 3550 50  0001 C CNN
	1    5750 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5F6160C4
P 4850 3550
F 0 "#PWR018" H 4850 3400 50  0001 C CNN
F 1 "+5V" H 4865 3723 50  0000 C CNN
F 2 "" H 4850 3550 50  0001 C CNN
F 3 "" H 4850 3550 50  0001 C CNN
	1    4850 3550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U3
U 1 1 5F616160
P 5300 3600
F 0 "U3" H 5300 3842 50  0000 C CNN
F 1 "LM1117-3.3" H 5300 3751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5300 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 5300 3600 50  0001 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5F6162C0
P 5750 3850
F 0 "C13" H 5865 3896 50  0000 L CNN
F 1 "100nF" H 5865 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5788 3700 50  0001 C CNN
F 3 "~" H 5750 3850 50  0001 C CNN
	1    5750 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F616331
P 4850 3850
F 0 "C12" H 4965 3896 50  0000 L CNN
F 1 "100nF" H 4965 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4888 3700 50  0001 C CNN
F 3 "~" H 4850 3850 50  0001 C CNN
	1    4850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3600 5750 3600
Wire Wire Line
	5750 3600 5750 3550
Wire Wire Line
	5750 3600 5750 3700
Connection ~ 5750 3600
Wire Wire Line
	5750 4000 5300 4000
Wire Wire Line
	5300 4000 5300 4150
Wire Wire Line
	5300 3900 5300 4000
Connection ~ 5300 4000
Wire Wire Line
	4850 4000 5300 4000
Wire Wire Line
	4850 3550 4850 3600
Wire Wire Line
	5000 3600 4850 3600
Connection ~ 4850 3600
Wire Wire Line
	4850 3600 4850 3700
$Comp
L Device:C C11
U 1 1 5F6165D8
P 4350 2400
F 0 "C11" H 4465 2446 50  0000 L CNN
F 1 "100nF" H 4465 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4388 2250 50  0001 C CNN
F 3 "~" H 4350 2400 50  0001 C CNN
	1    4350 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C10
U 1 1 5F616760
P 3850 2400
F 0 "C10" H 3965 2446 50  0000 L CNN
F 1 "680uF" H 3965 2355 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 3850 2400 50  0001 C CNN
F 3 "~" H 3850 2400 50  0001 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C14
U 1 1 5F616792
P 6750 2400
F 0 "C14" H 6865 2446 50  0000 L CNN
F 1 "220u" H 6865 2355 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 6750 2400 50  0001 C CNN
F 3 "~" H 6750 2400 50  0001 C CNN
	1    6750 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D9
U 1 1 5F61696B
P 6150 2400
F 0 "D9" V 6104 2479 50  0000 L CNN
F 1 "SS24T3G" V 6195 2479 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 6150 2400 50  0001 C CNN
F 3 "~" H 6150 2400 50  0001 C CNN
	1    6150 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 1950 4350 1950
Wire Wire Line
	5300 2850 5300 2900
Wire Wire Line
	5300 2350 5300 2850
Connection ~ 5300 2850
Wire Wire Line
	3850 2550 3850 2850
Wire Wire Line
	3850 2850 4350 2850
Wire Wire Line
	4350 2550 4350 2850
Connection ~ 4350 2850
Wire Wire Line
	4350 2850 4700 2850
Connection ~ 4350 1950
Wire Wire Line
	4350 1950 3850 1950
Wire Wire Line
	5300 2850 6150 2850
Wire Wire Line
	6150 2550 6150 2850
Connection ~ 6150 2850
Wire Wire Line
	6150 2850 6750 2850
Wire Wire Line
	6750 2850 6750 2550
Wire Wire Line
	5800 2150 6150 2150
Wire Wire Line
	6150 2150 6150 2250
Wire Wire Line
	6750 2150 6750 2250
Wire Wire Line
	4800 2150 4700 2150
Wire Wire Line
	4700 2150 4700 2850
Connection ~ 4700 2850
Wire Wire Line
	4700 2850 5300 2850
Wire Wire Line
	4350 1950 4350 2250
$Comp
L Device:LED D10
U 1 1 5F61CE18
P 7250 2550
F 0 "D10" V 7288 2433 50  0000 R CNN
F 1 "LED" V 7197 2433 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 7250 2550 50  0001 C CNN
F 3 "~" H 7250 2550 50  0001 C CNN
	1    7250 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5F61CE1F
P 7250 2150
F 0 "R9" H 7320 2196 50  0000 L CNN
F 1 "180" H 7320 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7180 2150 50  0001 C CNN
F 3 "~" H 7250 2150 50  0001 C CNN
	1    7250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1950 7250 2000
Wire Wire Line
	7250 2300 7250 2400
Wire Wire Line
	7250 2700 7250 2850
$Comp
L Device:L L2
U 1 1 5F61D716
P 6450 2150
F 0 "L2" V 6550 2150 50  0000 C CNN
F 1 "33u" V 6400 2150 50  0000 C CNN
F 2 "Inductor_SMD:L_12x12mm_H8mm" H 6450 2150 50  0001 C CNN
F 3 "~" H 6450 2150 50  0001 C CNN
	1    6450 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 2150 6600 2150
Wire Wire Line
	6300 2150 6150 2150
Connection ~ 6150 2150
Wire Wire Line
	5800 1950 6750 1950
Wire Wire Line
	6750 1950 6750 2150
Connection ~ 6750 2150
Wire Wire Line
	6750 2150 6950 2150
Wire Wire Line
	6950 2150 6950 1950
Wire Wire Line
	6950 1950 7250 1950
Wire Wire Line
	7250 1750 7250 1950
Connection ~ 7250 1950
Wire Wire Line
	7250 2850 6750 2850
Connection ~ 6750 2850
$Comp
L Device:Polyfuse F?
U 1 1 60004A26
P 1250 1950
AR Path="/60004A26" Ref="F?"  Part="1" 
AR Path="/5F60F829/60004A26" Ref="F1"  Part="1" 
F 0 "F1" V 1025 1950 50  0000 C CNN
F 1 "Polyfuse" V 1116 1950 50  0000 C CNN
F 2 "Diode_SMD:D_SMB" H 1300 1750 50  0001 L CNN
F 3 "~" H 1250 1950 50  0001 C CNN
	1    1250 1950
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 60004A2C
P 3150 2350
AR Path="/60004A2C" Ref="D?"  Part="1" 
AR Path="/5F60F829/60004A2C" Ref="D7"  Part="1" 
F 0 "D7" V 3200 2150 50  0000 L CNN
F 1 "1SMA5937BT3G" V 3300 1750 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 3150 2350 50  0001 C CNN
F 3 "~" H 3150 2350 50  0001 C CNN
	1    3150 2350
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR017
U 1 1 600054AD
P 900 1700
F 0 "#PWR017" H 900 1550 50  0001 C CNN
F 1 "VCC" H 915 1873 50  0000 C CNN
F 2 "" H 900 1700 50  0001 C CNN
F 3 "" H 900 1700 50  0001 C CNN
	1    900  1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1700 900  1950
Wire Wire Line
	3150 1950 3150 2200
Wire Wire Line
	3150 2500 3150 2850
Connection ~ 3150 1950
Wire Wire Line
	1100 1950 900  1950
$Comp
L Device:D_Schottky D8
U 1 1 5FFE0535
P 3600 2400
F 0 "D8" V 3550 2250 50  0000 L CNN
F 1 "SS24T3G" V 3700 2050 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 3600 2400 50  0001 C CNN
F 3 "~" H 3600 2400 50  0001 C CNN
	1    3600 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 1950 3600 1950
Connection ~ 3850 1950
Wire Wire Line
	3600 2250 3600 1950
Wire Wire Line
	3850 1950 3850 2250
Connection ~ 3600 1950
Wire Wire Line
	3600 1950 3850 1950
Wire Wire Line
	3150 2850 3600 2850
Connection ~ 3850 2850
Wire Wire Line
	3600 2550 3600 2850
Connection ~ 3600 2850
Wire Wire Line
	3600 2850 3850 2850
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 608C13DF
P 2300 1950
F 0 "FB1" H 2400 1996 50  0000 L CNN
F 1 "Ferrite_Bead_Small" H 2400 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2230 1950 50  0001 C CNN
F 3 "~" H 2300 1950 50  0001 C CNN
	1    2300 1950
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C17
U 1 1 608C4B59
P 2000 2150
F 0 "C17" H 2088 2196 50  0000 L CNN
F 1 "CP_Small" H 2088 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2000 2150 50  0001 C CNN
F 3 "~" H 2000 2150 50  0001 C CNN
	1    2000 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C18
U 1 1 608C58AB
P 2650 2150
F 0 "C18" H 2738 2196 50  0000 L CNN
F 1 "CP_Small" H 2738 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2650 2150 50  0001 C CNN
F 3 "~" H 2650 2150 50  0001 C CNN
	1    2650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1950 2650 1950
Wire Wire Line
	2200 1950 2000 1950
Wire Wire Line
	2000 2050 2000 1950
Connection ~ 2000 1950
Wire Wire Line
	2000 1950 1400 1950
Wire Wire Line
	2650 2050 2650 1950
Connection ~ 2650 1950
Wire Wire Line
	2650 1950 3150 1950
Wire Wire Line
	2650 2250 2350 2250
$Comp
L power:GND #PWR012
U 1 1 608CC72D
P 2350 2400
F 0 "#PWR012" H 2350 2150 50  0001 C CNN
F 1 "GND" H 2355 2227 50  0000 C CNN
F 2 "" H 2350 2400 50  0001 C CNN
F 3 "" H 2350 2400 50  0001 C CNN
	1    2350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2400 2350 2250
Connection ~ 2350 2250
Wire Wire Line
	2350 2250 2000 2250
$EndSCHEMATC
