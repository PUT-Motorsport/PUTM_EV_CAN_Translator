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
S 900  950  1150 800 
U 5F60F829
F0 "PowerModule" 50
F1 "PowerModule.sch" 50
$EndSheet
$Sheet
S 900  2050 1150 800 
U 5F60F83F
F0 "CAN" 50
F1 "CAN.sch" 50
$EndSheet
$Comp
L MCU_ST_STM32F1:STM32F105RBTx U1
U 1 1 5F60F944
P 4700 3250
F 0 "U1" H 4700 3400 50  0000 C CNN
F 1 "STM32F105RBTx" H 4700 3250 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 4100 1550 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00220364.pdf" H 4700 3250 50  0001 C CNN
	1    4700 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F620A2C
P 5350 1150
F 0 "C4" H 5465 1196 50  0000 L CNN
F 1 "100nF" H 5465 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5388 1000 50  0001 C CNN
F 3 "~" H 5350 1150 50  0001 C CNN
	1    5350 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F620A70
P 5800 1150
F 0 "C6" H 5915 1196 50  0000 L CNN
F 1 "100nF" H 5915 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5838 1000 50  0001 C CNN
F 3 "~" H 5800 1150 50  0001 C CNN
	1    5800 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F620A90
P 6250 1150
F 0 "C7" H 6365 1196 50  0000 L CNN
F 1 "100nF" H 6365 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6288 1000 50  0001 C CNN
F 3 "~" H 6250 1150 50  0001 C CNN
	1    6250 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F620AB8
P 6700 1150
F 0 "C8" H 6815 1196 50  0000 L CNN
F 1 "100nF" H 6815 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6738 1000 50  0001 C CNN
F 3 "~" H 6700 1150 50  0001 C CNN
	1    6700 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5F6210B6
P 5000 1150
F 0 "L1" H 5053 1196 50  0000 L CNN
F 1 "L" H 5053 1105 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 5000 1150 50  0001 C CNN
F 3 "~" H 5000 1150 50  0001 C CNN
	1    5000 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F621186
P 5700 1600
F 0 "C5" H 5815 1646 50  0000 L CNN
F 1 "100nF" H 5815 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5738 1450 50  0001 C CNN
F 3 "~" H 5700 1600 50  0001 C CNN
	1    5700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1450 5000 1300
Connection ~ 5000 1450
$Comp
L power:GND #PWR08
U 1 1 5F62122A
P 6700 1400
F 0 "#PWR08" H 6700 1150 50  0001 C CNN
F 1 "GND" H 6705 1227 50  0000 C CNN
F 2 "" H 6700 1400 50  0001 C CNN
F 3 "" H 6700 1400 50  0001 C CNN
	1    6700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1300 6700 1350
Wire Wire Line
	6700 1350 6250 1350
Wire Wire Line
	5350 1350 5350 1300
Connection ~ 6700 1350
Wire Wire Line
	6700 1350 6700 1400
Wire Wire Line
	5800 1300 5800 1350
Connection ~ 5800 1350
Wire Wire Line
	5800 1350 5350 1350
Wire Wire Line
	6250 1300 6250 1350
Connection ~ 6250 1350
Wire Wire Line
	6250 1350 5800 1350
$Comp
L power:+3.3V #PWR07
U 1 1 5F621321
P 6700 900
F 0 "#PWR07" H 6700 750 50  0001 C CNN
F 1 "+3.3V" H 6715 1073 50  0000 C CNN
F 2 "" H 6700 900 50  0001 C CNN
F 3 "" H 6700 900 50  0001 C CNN
	1    6700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 900  6700 950 
Wire Wire Line
	6700 950  6250 950 
Wire Wire Line
	6250 950  6250 1000
Connection ~ 6700 950 
Wire Wire Line
	6700 950  6700 1000
Wire Wire Line
	6250 950  5800 950 
Wire Wire Line
	5800 950  5800 1000
Connection ~ 6250 950 
Wire Wire Line
	5800 950  5350 950 
Wire Wire Line
	5350 950  5350 1000
Connection ~ 5800 950 
Wire Wire Line
	5350 950  5000 950 
Wire Wire Line
	5000 950  5000 1000
Connection ~ 5350 950 
Wire Wire Line
	5000 950  4900 950 
Wire Wire Line
	4900 950  4900 1450
Connection ~ 5000 950 
Wire Wire Line
	4900 950  4800 950 
Wire Wire Line
	4800 950  4800 1450
Connection ~ 4900 950 
Wire Wire Line
	4800 950  4700 950 
Wire Wire Line
	4700 950  4700 1450
Connection ~ 4800 950 
Wire Wire Line
	4700 950  4600 950 
Wire Wire Line
	4600 950  4600 1450
Connection ~ 4700 950 
Wire Wire Line
	4600 950  4500 950 
Wire Wire Line
	4500 950  4500 1450
Connection ~ 4600 950 
$Comp
L power:GND #PWR06
U 1 1 5F622891
P 5700 1750
F 0 "#PWR06" H 5700 1500 50  0001 C CNN
F 1 "GND" H 5705 1577 50  0000 C CNN
F 2 "" H 5700 1750 50  0001 C CNN
F 3 "" H 5700 1750 50  0001 C CNN
	1    5700 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F622E1A
P 4700 5250
F 0 "#PWR05" H 4700 5000 50  0001 C CNN
F 1 "GND" H 4705 5077 50  0000 C CNN
F 2 "" H 4700 5250 50  0001 C CNN
F 3 "" H 4700 5250 50  0001 C CNN
	1    4700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5050 4900 5150
Wire Wire Line
	4900 5150 4800 5150
Wire Wire Line
	4500 5150 4500 5050
Wire Wire Line
	4800 5050 4800 5150
Connection ~ 4800 5150
Wire Wire Line
	4800 5150 4700 5150
Wire Wire Line
	4600 5050 4600 5150
Connection ~ 4600 5150
Wire Wire Line
	4600 5150 4500 5150
Wire Wire Line
	4700 5050 4700 5150
Connection ~ 4700 5150
Wire Wire Line
	4700 5150 4600 5150
Wire Wire Line
	4700 5250 4700 5150
$Comp
L Device:R_Small R1
U 1 1 5F6269A1
P 3600 2000
F 0 "R1" H 3659 2046 50  0000 L CNN
F 1 "10k" H 3659 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3600 2000 50  0001 C CNN
F 3 "~" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F626A1C
P 3600 2200
F 0 "#PWR03" H 3600 1950 50  0001 C CNN
F 1 "GND" H 3605 2027 50  0000 C CNN
F 2 "" H 3600 2200 50  0001 C CNN
F 3 "" H 3600 2200 50  0001 C CNN
	1    3600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2100 3600 2150
Wire Wire Line
	4000 1850 3600 1850
Wire Wire Line
	3600 1850 3600 1900
Text GLabel 3700 1500 1    50   BiDi ~ 0
NRST
Wire Wire Line
	4000 1650 3900 1650
Wire Wire Line
	3700 1650 3700 1500
$Comp
L Device:C C3
U 1 1 5F62A6CF
P 3350 1650
F 0 "C3" V 3200 1650 50  0000 C CNN
F 1 "100nF" V 3500 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3388 1500 50  0001 C CNN
F 3 "~" H 3350 1650 50  0001 C CNN
	1    3350 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1650 3550 1650
Connection ~ 3700 1650
$Comp
L Switch:SW_Push SW1
U 1 1 5F62B38B
P 3200 1400
F 0 "SW1" H 3200 1685 50  0000 C CNN
F 1 "SW_Push" H 3200 1594 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3200 1600 50  0001 C CNN
F 3 "" H 3200 1600 50  0001 C CNN
	1    3200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1650 3550 1400
Wire Wire Line
	3550 1400 3400 1400
Connection ~ 3550 1650
Wire Wire Line
	3550 1650 3500 1650
Wire Wire Line
	3200 1650 3000 1650
Wire Wire Line
	3000 1650 3000 1400
Wire Wire Line
	3000 1650 3000 2150
Wire Wire Line
	3000 2150 3600 2150
Connection ~ 3000 1650
Connection ~ 3600 2150
Wire Wire Line
	3600 2150 3600 2200
Text GLabel 9400 3200 2    50   Output ~ 0
CANcar_L
Text GLabel 9400 3100 2    50   Output ~ 0
CANcar_H
Text GLabel 9400 3550 2    50   Output ~ 0
CANinverter_L
Text GLabel 9400 3450 2    50   Output ~ 0
CANinverter_H
Wire Wire Line
	9400 3200 9250 3200
Wire Wire Line
	9400 3100 9250 3100
Wire Wire Line
	9400 3550 9250 3550
Wire Wire Line
	9400 3450 9250 3450
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5F6389BB
P 9050 2450
F 0 "J1" H 9156 2828 50  0000 C CNN
F 1 "ProgramerConnector" H 9156 2737 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9050 2450 50  0001 C CNN
F 3 "~" H 9050 2450 50  0001 C CNN
	1    9050 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5F638A3D
P 9850 2100
F 0 "#PWR015" H 9850 1950 50  0001 C CNN
F 1 "+3.3V" H 9865 2273 50  0000 C CNN
F 2 "" H 9850 2100 50  0001 C CNN
F 3 "" H 9850 2100 50  0001 C CNN
	1    9850 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5F638A8D
P 9850 2750
F 0 "#PWR016" H 9850 2500 50  0001 C CNN
F 1 "GND" H 9855 2577 50  0000 C CNN
F 2 "" H 9850 2750 50  0001 C CNN
F 3 "" H 9850 2750 50  0001 C CNN
	1    9850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2250 9850 2250
Wire Wire Line
	9850 2250 9850 2100
Text GLabel 10050 2250 2    50   Input ~ 0
SW_VDDtarget
Text GLabel 10050 2350 2    50   Input ~ 0
SWCLK
Text GLabel 10050 2450 2    50   Input ~ 0
SW_GND
Text GLabel 10050 2550 2    50   Input ~ 0
SWDIO
Text GLabel 10050 2650 2    50   Input ~ 0
NRST
Wire Wire Line
	9850 2250 10050 2250
Connection ~ 9850 2250
Wire Wire Line
	9250 2350 10050 2350
Wire Wire Line
	9250 2450 9850 2450
Wire Wire Line
	9250 2550 10050 2550
Wire Wire Line
	9250 2650 10050 2650
Wire Wire Line
	9850 2750 9850 2450
Wire Wire Line
	9850 2450 10050 2450
Connection ~ 9850 2450
Text GLabel 5400 2850 2    50   Input ~ 0
CANcar_TX
Text GLabel 5400 2750 2    50   Input ~ 0
CANcar_RX
Text GLabel 5400 4650 2    50   Input ~ 0
CANinverter_TX
Text GLabel 5400 4550 2    50   Input ~ 0
CANinverter_RX
$Comp
L Device:Crystal Y1
U 1 1 5F627B74
P 3400 3150
F 0 "Y1" V 3350 3350 50  0000 R CNN
F 1 "Crystal 8 MHz" V 3450 3800 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 3400 3150 50  0001 C CNN
F 3 "~" H 3400 3150 50  0001 C CNN
	1    3400 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 2950 3400 2950
Wire Wire Line
	4000 3050 3850 3050
$Comp
L Device:C C1
U 1 1 5F62C30F
P 3100 2950
F 0 "C1" V 2848 2950 50  0000 C CNN
F 1 "22pF" V 2939 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3138 2800 50  0001 C CNN
F 3 "~" H 3100 2950 50  0001 C CNN
	1    3100 2950
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5F62C39E
P 3100 3350
F 0 "C2" V 3350 3350 50  0000 C CNN
F 1 "22pF" V 3250 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3138 3200 50  0001 C CNN
F 3 "~" H 3100 3350 50  0001 C CNN
	1    3100 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 2950 3250 2950
Connection ~ 3400 2950
$Comp
L power:GND #PWR01
U 1 1 5F630B02
P 2850 2950
F 0 "#PWR01" H 2850 2700 50  0001 C CNN
F 1 "GND" V 2855 2822 50  0000 R CNN
F 2 "" H 2850 2950 50  0001 C CNN
F 3 "" H 2850 2950 50  0001 C CNN
	1    2850 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F630B4D
P 2850 3350
F 0 "#PWR02" H 2850 3100 50  0001 C CNN
F 1 "GND" V 2855 3222 50  0000 R CNN
F 2 "" H 2850 3350 50  0001 C CNN
F 3 "" H 2850 3350 50  0001 C CNN
	1    2850 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 2950 2850 2950
Wire Wire Line
	2850 3350 2950 3350
Wire Wire Line
	3400 2950 3400 3000
Wire Wire Line
	3400 3300 3400 3350
Wire Wire Line
	3400 3350 3850 3350
Wire Wire Line
	3850 3050 3850 3350
Connection ~ 3400 3350
Wire Wire Line
	3250 3350 3400 3350
Text GLabel 5400 3150 2    50   Input ~ 0
SWCLK
Text GLabel 5400 2950 2    50   Input ~ 0
SWDIO
Text GLabel 5400 4050 2    50   Input ~ 0
USART_TX
Text GLabel 5400 4150 2    50   Input ~ 0
USART_RX
NoConn ~ 5400 3650
NoConn ~ 5400 3750
NoConn ~ 5400 3850
NoConn ~ 5400 3950
NoConn ~ 5400 4250
NoConn ~ 5400 4350
NoConn ~ 5400 4450
NoConn ~ 5400 4750
NoConn ~ 5400 4850
NoConn ~ 4000 4850
NoConn ~ 4000 4750
NoConn ~ 4000 4650
NoConn ~ 4000 4550
NoConn ~ 4000 4450
NoConn ~ 4000 4350
NoConn ~ 4000 3950
NoConn ~ 4000 3850
NoConn ~ 4000 3750
NoConn ~ 4000 3650
NoConn ~ 4000 3550
NoConn ~ 4000 3450
NoConn ~ 4000 3150
NoConn ~ 5400 2650
NoConn ~ 5400 2550
NoConn ~ 5400 2050
NoConn ~ 5400 1950
NoConn ~ 5400 1850
NoConn ~ 5400 1750
NoConn ~ 5400 1650
NoConn ~ 5400 2450
$Comp
L Device:R R3
U 1 1 5F6C5C5D
P 6300 2150
F 0 "R3" V 6200 2100 50  0000 C CNN
F 1 "180" V 6200 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6230 2150 50  0001 C CNN
F 3 "~" H 6300 2150 50  0001 C CNN
	1    6300 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 2150 5600 2150
Wire Wire Line
	5400 2250 5950 2250
Wire Wire Line
	5400 2350 6300 2350
$Comp
L Device:LED D1
U 1 1 5F6D263D
P 5750 2150
F 0 "D1" H 5850 2250 50  0000 C CNN
F 1 "LED" H 5700 2250 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5750 2150 50  0001 C CNN
F 3 "~" H 5750 2150 50  0001 C CNN
	1    5750 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5F6DCBCC
P 6100 2250
F 0 "D3" H 6150 2100 50  0000 C CNN
F 1 "LED" H 6000 2100 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6100 2250 50  0001 C CNN
F 3 "~" H 6100 2250 50  0001 C CNN
	1    6100 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5F6DCC1E
P 6450 2350
F 0 "D5" H 6550 2200 50  0000 C CNN
F 1 "LED" H 6400 2200 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6450 2350 50  0001 C CNN
F 3 "~" H 6450 2350 50  0001 C CNN
	1    6450 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F67A73C
P 7150 1150
F 0 "C9" H 7265 1196 50  0000 L CNN
F 1 "100nF" H 7265 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7188 1000 50  0001 C CNN
F 3 "~" H 7150 1150 50  0001 C CNN
	1    7150 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1350 7150 1350
Wire Wire Line
	7150 1350 7150 1300
Wire Wire Line
	7150 1000 7150 950 
Wire Wire Line
	7150 950  6700 950 
$Comp
L power:+3.3V #PWR04
U 1 1 600194B4
P 3900 1050
F 0 "#PWR04" H 3900 900 50  0001 C CNN
F 1 "+3.3V" H 3915 1223 50  0000 C CNN
F 2 "" H 3900 1050 50  0001 C CNN
F 3 "" H 3900 1050 50  0001 C CNN
	1    3900 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 60019E3D
P 3900 1250
F 0 "R2" H 3959 1296 50  0000 L CNN
F 1 "100k" H 3959 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 3900 1250 50  0001 C CNN
F 3 "~" H 3900 1250 50  0001 C CNN
	1    3900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1050 3900 1150
Wire Wire Line
	3900 1350 3900 1650
Connection ~ 3900 1650
Wire Wire Line
	3900 1650 3700 1650
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5FFFEE85
P 9050 3100
F 0 "J2" H 9158 3281 50  0000 C CNN
F 1 "CANcarConnector" H 9158 3190 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 9050 3100 50  0001 C CNN
F 3 "~" H 9050 3100 50  0001 C CNN
	1    9050 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5FFFF1C1
P 9050 3450
F 0 "J3" H 9158 3631 50  0000 C CNN
F 1 "CANinverterConnector" H 9158 3540 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0200_1x02_P3.00mm_Horizontal" H 9050 3450 50  0001 C CNN
F 3 "~" H 9050 3450 50  0001 C CNN
	1    9050 3450
	1    0    0    -1  
$EndComp
NoConn ~ 9250 2750
Wire Notes Line
	8350 4900 10850 4900
Wire Notes Line
	10850 4900 10850 1550
Wire Notes Line
	10850 1550 8350 1550
Wire Notes Line
	8350 1550 8350 4900
Text Notes 8550 1800 0    118  ~ 24
Connectors
NoConn ~ 5400 3050
NoConn ~ 4000 4050
NoConn ~ 4000 4250
Wire Wire Line
	6150 2150 5900 2150
Wire Wire Line
	6600 2350 6850 2350
Wire Wire Line
	6500 2250 6250 2250
$Comp
L Device:R R5
U 1 1 600DB063
P 6650 2250
F 0 "R5" V 6550 2200 50  0000 C CNN
F 1 "180" V 6550 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6580 2250 50  0001 C CNN
F 3 "~" H 6650 2250 50  0001 C CNN
	1    6650 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 600DB320
P 7000 2350
F 0 "R7" V 6900 2300 50  0000 C CNN
F 1 "180" V 6900 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6930 2350 50  0001 C CNN
F 3 "~" H 7000 2350 50  0001 C CNN
	1    7000 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 600E7FA5
P 6300 3350
F 0 "R4" V 6200 3300 50  0000 C CNN
F 1 "180" V 6200 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6230 3350 50  0001 C CNN
F 3 "~" H 6300 3350 50  0001 C CNN
	1    6300 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 3350 5600 3350
Wire Wire Line
	5400 3450 5950 3450
Wire Wire Line
	5400 3550 6300 3550
$Comp
L Device:LED D2
U 1 1 600E7FAE
P 5750 3350
F 0 "D2" H 5850 3450 50  0000 C CNN
F 1 "LED" H 5700 3450 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5750 3350 50  0001 C CNN
F 3 "~" H 5750 3350 50  0001 C CNN
	1    5750 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 600E7FB4
P 6100 3450
F 0 "D4" H 6150 3300 50  0000 C CNN
F 1 "LED" H 6000 3300 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6100 3450 50  0001 C CNN
F 3 "~" H 6100 3450 50  0001 C CNN
	1    6100 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 600E7FBA
P 6450 3550
F 0 "D6" H 6550 3400 50  0000 C CNN
F 1 "LED" H 6400 3400 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6450 3550 50  0001 C CNN
F 3 "~" H 6450 3550 50  0001 C CNN
	1    6450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3350 5900 3350
Wire Wire Line
	6600 3550 6850 3550
Wire Wire Line
	6500 3450 6250 3450
$Comp
L Device:R R6
U 1 1 600E7FC3
P 6650 3450
F 0 "R6" V 6550 3400 50  0000 C CNN
F 1 "180" V 6550 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6580 3450 50  0001 C CNN
F 3 "~" H 6650 3450 50  0001 C CNN
	1    6650 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 600E7FC9
P 7000 3550
F 0 "R8" V 6900 3500 50  0000 C CNN
F 1 "180" V 6900 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6930 3550 50  0001 C CNN
F 3 "~" H 7000 3550 50  0001 C CNN
	1    7000 3550
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 600EB1B5
P 7600 2900
F 0 "#PWR09" H 7600 2750 50  0001 C CNN
F 1 "+3.3V" H 7615 3073 50  0000 C CNN
F 2 "" H 7600 2900 50  0001 C CNN
F 3 "" H 7600 2900 50  0001 C CNN
	1    7600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3550 7250 3550
Wire Wire Line
	7250 3550 7250 3450
Wire Wire Line
	7250 3000 7600 3000
Wire Wire Line
	7600 3000 7600 2900
Connection ~ 7250 3000
Wire Wire Line
	6800 2250 7250 2250
Wire Wire Line
	7250 2250 7250 2350
Wire Wire Line
	7150 2350 7250 2350
Connection ~ 7250 2350
Wire Wire Line
	7250 2350 7250 3000
Wire Wire Line
	6450 2150 7250 2150
Wire Wire Line
	7250 2150 7250 2250
Connection ~ 7250 2250
Wire Wire Line
	6800 3450 7250 3450
Connection ~ 7250 3450
Wire Wire Line
	7250 3450 7250 3350
Wire Wire Line
	6450 3350 7250 3350
Connection ~ 7250 3350
Wire Wire Line
	7250 3350 7250 3000
Wire Wire Line
	5700 1450 5000 1450
$Comp
L Transistor_FET:BSS138 Q1
U 1 1 6086D278
P 2350 5700
F 0 "Q1" H 2556 5746 50  0000 L CNN
F 1 "BSS138" H 2556 5655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2550 5625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 2350 5700 50  0001 L CNN
	1    2350 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 6086FA16
P 1850 5700
F 0 "R12" H 1909 5746 50  0000 L CNN
F 1 "100" H 1909 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 1850 5700 50  0001 C CNN
F 3 "~" H 1850 5700 50  0001 C CNN
	1    1850 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R13
U 1 1 608747DB
P 2150 6000
F 0 "R13" H 2209 6046 50  0000 L CNN
F 1 "10k" H 2209 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 2150 6000 50  0001 C CNN
F 3 "~" H 2150 6000 50  0001 C CNN
	1    2150 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 6000 2450 6000
Wire Wire Line
	2450 6000 2450 5900
Wire Wire Line
	2050 6000 2050 5700
Wire Wire Line
	2050 5700 2150 5700
Wire Wire Line
	1950 5700 2050 5700
Connection ~ 2050 5700
Wire Wire Line
	1750 5700 1600 5700
Text GLabel 1600 5700 0    50   Input ~ 0
buzzer
Text GLabel 9450 3850 2    50   Input ~ 0
buzzer_gnd
Text GLabel 2450 5200 1    50   Input ~ 0
buzzer_gnd
Wire Wire Line
	2450 5200 2450 5500
Wire Wire Line
	2450 6000 2450 6200
Connection ~ 2450 6000
$Comp
L power:GND #PWR033
U 1 1 608A5178
P 2450 6200
F 0 "#PWR033" H 2450 5950 50  0001 C CNN
F 1 "GND" H 2455 6027 50  0000 C CNN
F 2 "" H 2450 6200 50  0001 C CNN
F 3 "" H 2450 6200 50  0001 C CNN
	1    2450 6200
	1    0    0    -1  
$EndComp
Text GLabel 3900 3650 0    50   Input ~ 0
buzzer
Wire Wire Line
	9250 3850 9450 3850
Wire Wire Line
	9250 3950 9450 3950
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 60061EB3
P 9050 3950
F 0 "J5" H 9158 4231 50  0000 C CNN
F 1 "PowerOutputConnector" H 9158 4140 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0300_1x03_P3.00mm_Horizontal" H 9050 3950 50  0001 C CNN
F 3 "~" H 9050 3950 50  0001 C CNN
	1    9050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4050 9450 4050
$Comp
L power:VCC #PWR010
U 1 1 608C938A
P 9450 4050
F 0 "#PWR010" H 9450 3900 50  0001 C CNN
F 1 "VCC" H 9467 4223 50  0000 C CNN
F 2 "" H 9450 4050 50  0001 C CNN
F 3 "" H 9450 4050 50  0001 C CNN
	1    9450 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600120DD
P 9450 3950
AR Path="/5F60F829/600120DD" Ref="#PWR?"  Part="1" 
AR Path="/600120DD" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 9450 3700 50  0001 C CNN
F 1 "GND" V 9455 3822 50  0000 R CNN
F 2 "" H 9450 3950 50  0001 C CNN
F 3 "" H 9450 3950 50  0001 C CNN
	1    9450 3950
	0    -1   -1   0   
$EndComp
NoConn ~ 4000 4150
Wire Wire Line
	4000 3650 3900 3650
$EndSCHEMATC
