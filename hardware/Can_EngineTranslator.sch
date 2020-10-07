EESchema Schematic File Version 4
LIBS:Can_EngineTranslator-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2550 3450 1150 800 
U 5F60F829
F0 "PowerModule" 50
F1 "PowerModule.sch" 50
$EndSheet
$Sheet
S 2550 4550 1150 800 
U 5F60F83F
F0 "CAN" 50
F1 "CAN.sch" 50
$EndSheet
$Comp
L MCU_ST_STM32F1:STM32F105RBTx U1
U 1 1 5F60F944
P 6850 3600
F 0 "U1" H 6850 3750 50  0000 C CNN
F 1 "STM32F105RBTx" H 6850 3600 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 6250 1900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00220364.pdf" H 6850 3600 50  0001 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F620A2C
P 7500 1500
F 0 "C2" H 7615 1546 50  0000 L CNN
F 1 "100nF" H 7615 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7538 1350 50  0001 C CNN
F 3 "~" H 7500 1500 50  0001 C CNN
	1    7500 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F620A70
P 7950 1500
F 0 "C3" H 8065 1546 50  0000 L CNN
F 1 "100nF" H 8065 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7988 1350 50  0001 C CNN
F 3 "~" H 7950 1500 50  0001 C CNN
	1    7950 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F620A90
P 8400 1500
F 0 "C4" H 8515 1546 50  0000 L CNN
F 1 "100nF" H 8515 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8438 1350 50  0001 C CNN
F 3 "~" H 8400 1500 50  0001 C CNN
	1    8400 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F620AB8
P 8850 1500
F 0 "C6" H 8965 1546 50  0000 L CNN
F 1 "100nF" H 8965 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8888 1350 50  0001 C CNN
F 3 "~" H 8850 1500 50  0001 C CNN
	1    8850 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5F6210B6
P 7150 1500
F 0 "L1" H 7203 1546 50  0000 L CNN
F 1 "L" H 7203 1455 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 7150 1500 50  0001 C CNN
F 3 "~" H 7150 1500 50  0001 C CNN
	1    7150 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F621186
P 8400 1950
F 0 "C5" H 8515 1996 50  0000 L CNN
F 1 "100nF" H 8515 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8438 1800 50  0001 C CNN
F 3 "~" H 8400 1950 50  0001 C CNN
	1    8400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1800 7150 1800
Wire Wire Line
	7150 1800 7150 1650
Connection ~ 7150 1800
$Comp
L power:GND #PWR05
U 1 1 5F62122A
P 8850 1750
F 0 "#PWR05" H 8850 1500 50  0001 C CNN
F 1 "GND" H 8855 1577 50  0000 C CNN
F 2 "" H 8850 1750 50  0001 C CNN
F 3 "" H 8850 1750 50  0001 C CNN
	1    8850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1650 8850 1700
Wire Wire Line
	8850 1700 8400 1700
Wire Wire Line
	7500 1700 7500 1650
Connection ~ 8850 1700
Wire Wire Line
	8850 1700 8850 1750
Wire Wire Line
	7950 1650 7950 1700
Connection ~ 7950 1700
Wire Wire Line
	7950 1700 7500 1700
Wire Wire Line
	8400 1650 8400 1700
Connection ~ 8400 1700
Wire Wire Line
	8400 1700 7950 1700
$Comp
L power:+3.3V #PWR04
U 1 1 5F621321
P 8850 1250
F 0 "#PWR04" H 8850 1100 50  0001 C CNN
F 1 "+3.3V" H 8865 1423 50  0000 C CNN
F 2 "" H 8850 1250 50  0001 C CNN
F 3 "" H 8850 1250 50  0001 C CNN
	1    8850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1250 8850 1300
Wire Wire Line
	8850 1300 8400 1300
Wire Wire Line
	8400 1300 8400 1350
Connection ~ 8850 1300
Wire Wire Line
	8850 1300 8850 1350
Wire Wire Line
	8400 1300 7950 1300
Wire Wire Line
	7950 1300 7950 1350
Connection ~ 8400 1300
Wire Wire Line
	7950 1300 7500 1300
Wire Wire Line
	7500 1300 7500 1350
Connection ~ 7950 1300
Wire Wire Line
	7500 1300 7150 1300
Wire Wire Line
	7150 1300 7150 1350
Connection ~ 7500 1300
Wire Wire Line
	7150 1300 7050 1300
Wire Wire Line
	7050 1300 7050 1800
Connection ~ 7150 1300
Wire Wire Line
	7050 1300 6950 1300
Wire Wire Line
	6950 1300 6950 1800
Connection ~ 7050 1300
Wire Wire Line
	6950 1300 6850 1300
Wire Wire Line
	6850 1300 6850 1800
Connection ~ 6950 1300
Wire Wire Line
	6850 1300 6750 1300
Wire Wire Line
	6750 1300 6750 1800
Connection ~ 6850 1300
Wire Wire Line
	6750 1300 6650 1300
Wire Wire Line
	6650 1300 6650 1800
Connection ~ 6750 1300
$Comp
L power:GND #PWR03
U 1 1 5F622891
P 8400 2150
F 0 "#PWR03" H 8400 1900 50  0001 C CNN
F 1 "GND" H 8405 1977 50  0000 C CNN
F 2 "" H 8400 2150 50  0001 C CNN
F 3 "" H 8400 2150 50  0001 C CNN
	1    8400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2100 8400 2150
$Comp
L power:GND #PWR02
U 1 1 5F622E1A
P 6850 5600
F 0 "#PWR02" H 6850 5350 50  0001 C CNN
F 1 "GND" H 6855 5427 50  0000 C CNN
F 2 "" H 6850 5600 50  0001 C CNN
F 3 "" H 6850 5600 50  0001 C CNN
	1    6850 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5400 7050 5500
Wire Wire Line
	7050 5500 6950 5500
Wire Wire Line
	6650 5500 6650 5400
Wire Wire Line
	6950 5400 6950 5500
Connection ~ 6950 5500
Wire Wire Line
	6950 5500 6850 5500
Wire Wire Line
	6750 5400 6750 5500
Connection ~ 6750 5500
Wire Wire Line
	6750 5500 6650 5500
Wire Wire Line
	6850 5400 6850 5500
Connection ~ 6850 5500
Wire Wire Line
	6850 5500 6750 5500
Wire Wire Line
	6850 5600 6850 5500
$Comp
L Device:R_Small R1
U 1 1 5F6269A1
P 5750 2350
F 0 "R1" H 5809 2396 50  0000 L CNN
F 1 "R_Small" H 5809 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5750 2350 50  0001 C CNN
F 3 "~" H 5750 2350 50  0001 C CNN
	1    5750 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F626A1C
P 5750 2550
F 0 "#PWR01" H 5750 2300 50  0001 C CNN
F 1 "GND" H 5755 2377 50  0000 C CNN
F 2 "" H 5750 2550 50  0001 C CNN
F 3 "" H 5750 2550 50  0001 C CNN
	1    5750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2450 5750 2500
Wire Wire Line
	6150 2200 5750 2200
Wire Wire Line
	5750 2200 5750 2250
Text GLabel 5850 1850 1    50   BiDi ~ 0
NRST
Wire Wire Line
	6150 2000 5850 2000
Wire Wire Line
	5850 2000 5850 1850
$Comp
L Device:C C1
U 1 1 5F62A6CF
P 5500 2000
F 0 "C1" V 5350 2000 50  0000 C CNN
F 1 "100nF" V 5650 2000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5538 1850 50  0001 C CNN
F 3 "~" H 5500 2000 50  0001 C CNN
	1    5500 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 2000 5700 2000
Connection ~ 5850 2000
$Comp
L Switch:SW_Push SW1
U 1 1 5F62B38B
P 5350 1750
F 0 "SW1" H 5350 2035 50  0000 C CNN
F 1 "SW_Push" H 5350 1944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5350 1950 50  0001 C CNN
F 3 "" H 5350 1950 50  0001 C CNN
	1    5350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2000 5700 1750
Wire Wire Line
	5700 1750 5550 1750
Connection ~ 5700 2000
Wire Wire Line
	5700 2000 5650 2000
Wire Wire Line
	5350 2000 5150 2000
Wire Wire Line
	5150 2000 5150 1750
Wire Wire Line
	5150 2000 5150 2500
Wire Wire Line
	5150 2500 5750 2500
Connection ~ 5150 2000
Connection ~ 5750 2500
Wire Wire Line
	5750 2500 5750 2550
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5F632D5E
P 10250 1800
F 0 "J4" H 10330 1792 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10330 1701 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 10250 1800 50  0001 C CNN
F 3 "~" H 10250 1800 50  0001 C CNN
	1    10250 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5F632EF3
P 10250 2150
F 0 "J5" H 10330 2142 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10330 2051 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 10250 2150 50  0001 C CNN
F 3 "~" H 10250 2150 50  0001 C CNN
	1    10250 2150
	1    0    0    -1  
$EndComp
Text GLabel 9900 1800 0    50   Output ~ 0
CANcar_L
Text GLabel 9900 1900 0    50   Output ~ 0
CANcar_H
Text GLabel 9900 2150 0    50   Output ~ 0
CANinverter_L
Text GLabel 9900 2250 0    50   Output ~ 0
CANinverter_H
Wire Wire Line
	9900 1800 10050 1800
Wire Wire Line
	9900 1900 10050 1900
Wire Wire Line
	9900 2150 10050 2150
Wire Wire Line
	9900 2250 10050 2250
$Comp
L Connector:Conn_01x06_Male J6
U 1 1 5F6389BB
P 1900 1400
F 0 "J6" H 2006 1778 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2006 1687 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1900 1400 50  0001 C CNN
F 3 "~" H 1900 1400 50  0001 C CNN
	1    1900 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR028
U 1 1 5F638A3D
P 2700 1050
F 0 "#PWR028" H 2700 900 50  0001 C CNN
F 1 "+3.3V" H 2715 1223 50  0000 C CNN
F 2 "" H 2700 1050 50  0001 C CNN
F 3 "" H 2700 1050 50  0001 C CNN
	1    2700 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5F638A8D
P 2700 1700
F 0 "#PWR029" H 2700 1450 50  0001 C CNN
F 1 "GND" H 2705 1527 50  0000 C CNN
F 2 "" H 2700 1700 50  0001 C CNN
F 3 "" H 2700 1700 50  0001 C CNN
	1    2700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1200 2700 1200
Wire Wire Line
	2700 1200 2700 1050
Text GLabel 2900 1200 2    50   Input ~ 0
SW_VDDtarget
Text GLabel 2900 1300 2    50   Input ~ 0
SWCLK
Text GLabel 2900 1400 2    50   Input ~ 0
SW_GND
Text GLabel 2900 1500 2    50   Input ~ 0
SWDIO
Text GLabel 2900 1600 2    50   Input ~ 0
NRST
Wire Wire Line
	2700 1200 2900 1200
Connection ~ 2700 1200
Wire Wire Line
	2100 1300 2900 1300
Wire Wire Line
	2100 1400 2700 1400
Wire Wire Line
	2100 1500 2900 1500
Wire Wire Line
	2100 1600 2900 1600
Wire Wire Line
	2700 1700 2700 1400
Wire Wire Line
	2700 1400 2900 1400
Connection ~ 2700 1400
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 5F645C49
P 3500 2350
F 0 "J7" H 3580 2342 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 3580 2251 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3500 2350 50  0001 C CNN
F 3 "~" H 3500 2350 50  0001 C CNN
	1    3500 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F645CB7
P 2900 2900
F 0 "#PWR0101" H 2900 2650 50  0001 C CNN
F 1 "GND" H 2905 2727 50  0000 C CNN
F 2 "" H 2900 2900 50  0001 C CNN
F 3 "" H 2900 2900 50  0001 C CNN
	1    2900 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5F645D65
P 2600 2350
F 0 "F1" V 2375 2350 50  0000 C CNN
F 1 "Polyfuse" V 2466 2350 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 2650 2150 50  0001 L CNN
F 3 "~" H 2600 2350 50  0001 C CNN
	1    2600 2350
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 5F645E0E
P 2750 2350
F 0 "#PWR0102" H 2750 2200 50  0001 C CNN
F 1 "+12V" H 2765 2523 50  0000 C CNN
F 2 "" H 2750 2350 50  0001 C CNN
F 3 "" H 2750 2350 50  0001 C CNN
	1    2750 2350
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D6
U 1 1 5F645EC6
P 2250 2600
F 0 "D6" V 2204 2679 50  0000 L CNN
F 1 "D_Zener" V 2295 2679 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 2250 2600 50  0001 C CNN
F 3 "~" H 2250 2600 50  0001 C CNN
	1    2250 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2800 2250 2800
Wire Wire Line
	2250 2800 2250 2750
Connection ~ 2900 2800
Wire Wire Line
	2450 2350 2250 2350
Wire Wire Line
	2900 2800 2900 2900
Text GLabel 7550 3200 2    50   Input ~ 0
CANcar_TX
Text GLabel 7550 3100 2    50   Input ~ 0
CANcar_RX
Text GLabel 7550 5000 2    50   Input ~ 0
CANinverter_TX
Text GLabel 7550 4900 2    50   Input ~ 0
CANinverter_RX
$Comp
L Device:Crystal Y1
U 1 1 5F627B74
P 5550 3500
F 0 "Y1" V 5500 3700 50  0000 R CNN
F 1 "Crystal 8 MHz" V 5600 4150 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 5550 3500 50  0001 C CNN
F 3 "~" H 5550 3500 50  0001 C CNN
	1    5550 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 3300 5550 3300
Wire Wire Line
	6150 3400 6000 3400
$Comp
L Device:C C14
U 1 1 5F62C30F
P 5250 3300
F 0 "C14" V 4998 3300 50  0000 C CNN
F 1 "122pF" V 5089 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5288 3150 50  0001 C CNN
F 3 "~" H 5250 3300 50  0001 C CNN
	1    5250 3300
	0    1    1    0   
$EndComp
$Comp
L Device:C C15
U 1 1 5F62C39E
P 5250 3700
F 0 "C15" V 5500 3700 50  0000 C CNN
F 1 "22pF" V 5400 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5288 3550 50  0001 C CNN
F 3 "~" H 5250 3700 50  0001 C CNN
	1    5250 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 3300 5400 3300
Connection ~ 5550 3300
$Comp
L power:GND #PWR0103
U 1 1 5F630B02
P 5000 3300
F 0 "#PWR0103" H 5000 3050 50  0001 C CNN
F 1 "GND" V 5005 3172 50  0000 R CNN
F 2 "" H 5000 3300 50  0001 C CNN
F 3 "" H 5000 3300 50  0001 C CNN
	1    5000 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F630B4D
P 5000 3700
F 0 "#PWR0104" H 5000 3450 50  0001 C CNN
F 1 "GND" V 5005 3572 50  0000 R CNN
F 2 "" H 5000 3700 50  0001 C CNN
F 3 "" H 5000 3700 50  0001 C CNN
	1    5000 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3300 5000 3300
Wire Wire Line
	5000 3700 5100 3700
Wire Wire Line
	5550 3300 5550 3350
Wire Wire Line
	5550 3650 5550 3700
Wire Wire Line
	5550 3700 6000 3700
Wire Wire Line
	6000 3400 6000 3700
Connection ~ 5550 3700
Wire Wire Line
	5400 3700 5550 3700
Text GLabel 7550 3500 2    50   Input ~ 0
SWCLK
Text GLabel 7550 3300 2    50   Input ~ 0
SWDIO
Text GLabel 7550 4400 2    50   Input ~ 0
USART_TX
Text GLabel 7550 4500 2    50   Input ~ 0
USART_RX
NoConn ~ 7550 3700
NoConn ~ 7550 3800
NoConn ~ 7550 3900
NoConn ~ 7550 4000
NoConn ~ 7550 4100
NoConn ~ 7550 4200
NoConn ~ 7550 4300
NoConn ~ 7550 4600
NoConn ~ 7550 4700
NoConn ~ 7550 4800
NoConn ~ 7550 5100
NoConn ~ 7550 5200
NoConn ~ 6150 5200
NoConn ~ 6150 5100
NoConn ~ 6150 5000
NoConn ~ 6150 4900
NoConn ~ 6150 4800
NoConn ~ 6150 4700
NoConn ~ 6150 4300
NoConn ~ 6150 4200
NoConn ~ 6150 4100
NoConn ~ 6150 4000
NoConn ~ 6150 3900
NoConn ~ 6150 3800
NoConn ~ 6150 3700
NoConn ~ 6150 3500
NoConn ~ 7550 3000
NoConn ~ 7550 2900
NoConn ~ 7550 2400
NoConn ~ 7550 2300
NoConn ~ 7550 2200
NoConn ~ 7550 2100
NoConn ~ 7550 2000
NoConn ~ 7550 2800
$Comp
L Device:R R9
U 1 1 5F6C5C5D
P 8750 2500
F 0 "R9" V 8650 2450 50  0000 C CNN
F 1 "R" V 8650 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8680 2500 50  0001 C CNN
F 3 "~" H 8750 2500 50  0001 C CNN
	1    8750 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5F6C5CCA
P 9100 2600
F 0 "R10" V 9250 2700 50  0000 C CNN
F 1 "R" V 9250 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9030 2600 50  0001 C CNN
F 3 "~" H 9100 2600 50  0001 C CNN
	1    9100 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5F6CAAC3
P 9450 2700
F 0 "R11" V 9350 2750 50  0000 C CNN
F 1 "R" V 9350 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9380 2700 50  0001 C CNN
F 3 "~" H 9450 2700 50  0001 C CNN
	1    9450 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 2500 7750 2500
Wire Wire Line
	7550 2600 8100 2600
Wire Wire Line
	7550 2700 8450 2700
$Comp
L Device:LED D10
U 1 1 5F6D263D
P 7900 2500
F 0 "D10" H 8000 2600 50  0000 C CNN
F 1 "LED" H 7850 2600 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 7900 2500 50  0001 C CNN
F 3 "~" H 7900 2500 50  0001 C CNN
	1    7900 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D11
U 1 1 5F6DCBCC
P 8250 2600
F 0 "D11" H 8300 2450 50  0000 C CNN
F 1 "LED" H 8150 2450 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 8250 2600 50  0001 C CNN
F 3 "~" H 8250 2600 50  0001 C CNN
	1    8250 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D12
U 1 1 5F6DCC1E
P 8600 2700
F 0 "D12" H 8700 2550 50  0000 C CNN
F 1 "LED" H 8550 2550 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 8600 2700 50  0001 C CNN
F 3 "~" H 8600 2700 50  0001 C CNN
	1    8600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2500 8600 2500
Wire Wire Line
	8400 2600 8950 2600
Wire Wire Line
	8750 2700 9300 2700
Wire Wire Line
	9850 2600 9750 2600
Wire Wire Line
	9750 2600 9750 2700
Wire Wire Line
	9750 2700 9600 2700
Connection ~ 9750 2600
Wire Wire Line
	9750 2600 9250 2600
Wire Wire Line
	9750 2600 9750 2500
Wire Wire Line
	9750 2500 8900 2500
$Comp
L Device:R R8
U 1 1 5F6FD2DB
P 5000 4400
F 0 "R8" V 4900 4350 50  0000 C CNN
F 1 "R" V 4900 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4930 4400 50  0001 C CNN
F 3 "~" H 5000 4400 50  0001 C CNN
	1    5000 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F6FD38E
P 4600 4500
F 0 "R7" V 4450 4450 50  0000 C CNN
F 1 "R" V 4450 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4530 4500 50  0001 C CNN
F 3 "~" H 4600 4500 50  0001 C CNN
	1    4600 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F6FD3FA
P 4200 4600
F 0 "R6" V 4300 4550 50  0000 C CNN
F 1 "R" V 4300 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4130 4600 50  0001 C CNN
F 3 "~" H 4200 4600 50  0001 C CNN
	1    4200 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4400 6050 4400
Wire Wire Line
	6150 4500 5750 4500
Wire Wire Line
	6150 4600 5450 4600
$Comp
L Device:LED D9
U 1 1 5F706918
P 5300 4600
F 0 "D9" H 5250 4700 50  0000 C CNN
F 1 "LED" H 5400 4700 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5300 4600 50  0001 C CNN
F 3 "~" H 5300 4600 50  0001 C CNN
	1    5300 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 5F706A01
P 5600 4500
F 0 "D8" H 5500 4650 50  0000 C CNN
F 1 "LED" H 5650 4650 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5600 4500 50  0001 C CNN
F 3 "~" H 5600 4500 50  0001 C CNN
	1    5600 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 5F706A67
P 5900 4400
F 0 "D7" H 5850 4300 50  0000 C CNN
F 1 "LED" H 6000 4300 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5900 4400 50  0001 C CNN
F 3 "~" H 5900 4400 50  0001 C CNN
	1    5900 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 4600 4350 4600
Wire Wire Line
	4750 4500 5450 4500
Wire Wire Line
	5150 4400 5750 4400
Wire Wire Line
	4050 4600 3900 4600
Wire Wire Line
	3900 4600 3900 4800
Wire Wire Line
	4450 4500 3900 4500
Wire Wire Line
	3900 4500 3900 4600
Connection ~ 3900 4600
Wire Wire Line
	4850 4400 3900 4400
Wire Wire Line
	3900 4400 3900 4500
Connection ~ 3900 4500
$Comp
L power:+3.3V #PWR0105
U 1 1 5F63F605
P 9850 2600
F 0 "#PWR0105" H 9850 2450 50  0001 C CNN
F 1 "+3.3V" V 9865 2728 50  0000 L CNN
F 2 "" H 9850 2600 50  0001 C CNN
F 3 "" H 9850 2600 50  0001 C CNN
	1    9850 2600
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 5F65A920
P 3900 4800
F 0 "#PWR0106" H 3900 4650 50  0001 C CNN
F 1 "+3.3V" H 3915 4973 50  0000 C CNN
F 2 "" H 3900 4800 50  0001 C CNN
F 3 "" H 3900 4800 50  0001 C CNN
	1    3900 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C16
U 1 1 5F67A73C
P 9300 1500
F 0 "C16" H 9415 1546 50  0000 L CNN
F 1 "100nF" H 9415 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9338 1350 50  0001 C CNN
F 3 "~" H 9300 1500 50  0001 C CNN
	1    9300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1700 9300 1700
Wire Wire Line
	9300 1700 9300 1650
Wire Wire Line
	9300 1350 9300 1300
Wire Wire Line
	9300 1300 8850 1300
Wire Wire Line
	3300 2450 3300 2800
Wire Wire Line
	2900 2800 3300 2800
Wire Wire Line
	2250 2350 2250 2450
$Comp
L power:+12V #PWR0107
U 1 1 5F6B62BE
P 3300 2350
F 0 "#PWR0107" H 3300 2200 50  0001 C CNN
F 1 "+12V" V 3315 2478 50  0000 L CNN
F 2 "" H 3300 2350 50  0001 C CNN
F 3 "" H 3300 2350 50  0001 C CNN
	1    3300 2350
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
