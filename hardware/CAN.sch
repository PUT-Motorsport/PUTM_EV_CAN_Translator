EESchema Schematic File Version 4
LIBS:Can_EngineTranslator-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Interface_CAN_LIN:MCP2562-H-SN U4
U 1 1 5F60FAE0
P 6300 2500
F 0 "U4" H 6150 2700 50  0000 C CNN
F 1 "MCP2562-H-SN" H 6300 2500 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6300 2000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 6300 2500 50  0001 C CNN
	1    6300 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5F60FB9C
P 6550 1950
F 0 "#PWR029" H 6550 1700 50  0001 C CNN
F 1 "GND" H 6555 1777 50  0000 C CNN
F 2 "" H 6550 1950 50  0001 C CNN
F 3 "" H 6550 1950 50  0001 C CNN
	1    6550 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5F60FBC1
P 6300 3200
F 0 "#PWR026" H 6300 2950 50  0001 C CNN
F 1 "GND" H 6305 3027 50  0000 C CNN
F 2 "" H 6300 3200 50  0001 C CNN
F 3 "" H 6300 3200 50  0001 C CNN
	1    6300 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR023
U 1 1 5F60FC10
P 5150 2350
F 0 "#PWR023" H 5150 2200 50  0001 C CNN
F 1 "+3.3V" H 5165 2523 50  0000 C CNN
F 2 "" H 5150 2350 50  0001 C CNN
F 3 "" H 5150 2350 50  0001 C CNN
	1    5150 2350
	1    0    0    -1  
$EndComp
Text GLabel 5800 2300 0    50   Input ~ 0
CANcar_TX
Text GLabel 5800 2400 0    50   Output ~ 0
CANcar_RX
Wire Wire Line
	6300 2900 6300 3050
Wire Wire Line
	5800 2700 5700 2700
Wire Wire Line
	5700 2700 5700 3050
Wire Wire Line
	5700 3050 6300 3050
Connection ~ 6300 3050
Wire Wire Line
	6300 3050 6300 3200
Wire Wire Line
	5800 2600 5400 2600
Wire Wire Line
	5150 2600 5150 2350
$Comp
L power:+5V #PWR025
U 1 1 5F60FC9D
P 6300 1450
F 0 "#PWR025" H 6300 1300 50  0001 C CNN
F 1 "+5V" H 6315 1623 50  0000 C CNN
F 2 "" H 6300 1450 50  0001 C CNN
F 3 "" H 6300 1450 50  0001 C CNN
	1    6300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2100 6300 1650
$Comp
L Device:C C15
U 1 1 5F60FDF8
P 6550 1800
F 0 "C15" H 6665 1846 50  0000 L CNN
F 1 "100nF" H 6665 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6588 1650 50  0001 C CNN
F 3 "~" H 6550 1800 50  0001 C CNN
	1    6550 1800
	1    0    0    -1  
$EndComp
Connection ~ 6300 1650
Wire Wire Line
	6300 1650 6300 1450
$Comp
L Device:R_Small R10
U 1 1 5F6105D7
P 7300 2300
F 0 "R10" V 7150 2400 50  0000 L CNN
F 1 "120R" V 7250 2400 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 7300 2300 50  0001 C CNN
F 3 "~" H 7300 2300 50  0001 C CNN
	1    7300 2300
	0    1    1    0   
$EndComp
Text GLabel 7850 2100 2    50   Input ~ 0
CANcar_H
Text GLabel 7850 2900 2    50   Input ~ 0
CANcar_L
Wire Wire Line
	7150 2100 7150 2300
Wire Wire Line
	7150 2400 6800 2400
Wire Wire Line
	7150 2600 6800 2600
$Comp
L Interface_CAN_LIN:MCP2562-H-SN U5
U 1 1 5F6111DE
P 6300 4800
F 0 "U5" H 6150 5000 50  0000 C CNN
F 1 "MCP2562-H-SN" H 6300 4800 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6300 4300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 6300 4800 50  0001 C CNN
	1    6300 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5F6111EB
P 6300 5500
F 0 "#PWR028" H 6300 5250 50  0001 C CNN
F 1 "GND" H 6305 5327 50  0000 C CNN
F 2 "" H 6300 5500 50  0001 C CNN
F 3 "" H 6300 5500 50  0001 C CNN
	1    6300 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR024
U 1 1 5F6111F1
P 5150 4650
F 0 "#PWR024" H 5150 4500 50  0001 C CNN
F 1 "+3.3V" H 5165 4823 50  0000 C CNN
F 2 "" H 5150 4650 50  0001 C CNN
F 3 "" H 5150 4650 50  0001 C CNN
	1    5150 4650
	1    0    0    -1  
$EndComp
Text GLabel 5800 4600 0    50   Input ~ 0
CANinverter_TX
Text GLabel 5800 4700 0    50   Output ~ 0
CANinverter_RX
Wire Wire Line
	6300 5200 6300 5350
Wire Wire Line
	5800 5000 5700 5000
Wire Wire Line
	5700 5000 5700 5350
Wire Wire Line
	5700 5350 6300 5350
Connection ~ 6300 5350
Wire Wire Line
	6300 5350 6300 5500
Wire Wire Line
	5800 4900 5450 4900
Wire Wire Line
	5150 4900 5150 4650
Text GLabel 7850 4400 2    50   Input ~ 0
CANinverter_H
Text GLabel 7850 5200 2    50   Input ~ 0
CANinverter_L
$Comp
L Device:D_TVS_x2_AAC D11
U 1 1 5F611EB6
P 7800 2500
F 0 "D11" V 7950 2200 50  0000 L CNN
F 1 "PESD2CAN.215" V 7850 1800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7650 2500 50  0001 C CNN
F 3 "~" H 7650 2500 50  0001 C CNN
	1    7800 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5F612DEC
P 7950 2500
F 0 "#PWR031" H 7950 2250 50  0001 C CNN
F 1 "GND" H 7955 2327 50  0000 C CNN
F 2 "" H 7950 2500 50  0001 C CNN
F 3 "" H 7950 2500 50  0001 C CNN
	1    7950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2100 7800 2100
Wire Wire Line
	7150 2900 7800 2900
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 600A9176
P 7500 2500
F 0 "JP1" V 7450 2350 50  0000 L CNN
F 1 "Jumper" V 7550 2200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7500 2500 50  0001 C CNN
F 3 "~" H 7500 2500 50  0001 C CNN
	1    7500 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 2300 7200 2300
Connection ~ 7150 2300
Wire Wire Line
	7150 2300 7150 2400
Wire Wire Line
	7400 2300 7500 2300
Wire Wire Line
	7500 2700 7150 2700
Wire Wire Line
	7150 2600 7150 2700
Connection ~ 7150 2700
Wire Wire Line
	7150 2700 7150 2900
Wire Wire Line
	6550 1650 6300 1650
$Comp
L power:GND #PWR030
U 1 1 600AD976
P 6550 4250
F 0 "#PWR030" H 6550 4000 50  0001 C CNN
F 1 "GND" H 6555 4077 50  0000 C CNN
F 2 "" H 6550 4250 50  0001 C CNN
F 3 "" H 6550 4250 50  0001 C CNN
	1    6550 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 600AD97C
P 6300 3750
F 0 "#PWR027" H 6300 3600 50  0001 C CNN
F 1 "+5V" H 6315 3923 50  0000 C CNN
F 2 "" H 6300 3750 50  0001 C CNN
F 3 "" H 6300 3750 50  0001 C CNN
	1    6300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4400 6300 3950
$Comp
L Device:C C16
U 1 1 600AD983
P 6550 4100
F 0 "C16" H 6665 4146 50  0000 L CNN
F 1 "100nF" H 6665 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6588 3950 50  0001 C CNN
F 3 "~" H 6550 4100 50  0001 C CNN
	1    6550 4100
	1    0    0    -1  
$EndComp
Connection ~ 6300 3950
Wire Wire Line
	6300 3950 6300 3750
Wire Wire Line
	6550 3950 6300 3950
$Comp
L Device:R_Small R11
U 1 1 600B5EDD
P 7300 4600
F 0 "R11" V 7150 4700 50  0000 L CNN
F 1 "120R" V 7250 4700 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 7300 4600 50  0001 C CNN
F 3 "~" H 7300 4600 50  0001 C CNN
	1    7300 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 4400 7150 4600
Wire Wire Line
	7150 4700 6800 4700
Wire Wire Line
	7150 4900 6800 4900
$Comp
L Device:D_TVS_x2_AAC D12
U 1 1 600B5EE8
P 7800 4800
F 0 "D12" V 7950 4500 50  0000 L CNN
F 1 "PESD2CAN.215" V 7850 4100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7650 4800 50  0001 C CNN
F 3 "~" H 7650 4800 50  0001 C CNN
	1    7800 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR032
U 1 1 600B5EEE
P 7950 4800
F 0 "#PWR032" H 7950 4550 50  0001 C CNN
F 1 "GND" H 7955 4627 50  0000 C CNN
F 2 "" H 7950 4800 50  0001 C CNN
F 3 "" H 7950 4800 50  0001 C CNN
	1    7950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4400 7800 4400
Wire Wire Line
	7150 5200 7800 5200
$Comp
L Jumper:Jumper_2_Open JP2
U 1 1 600B5EF6
P 7500 4800
F 0 "JP2" V 7450 4650 50  0000 L CNN
F 1 "Jumper" V 7550 4500 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7500 4800 50  0001 C CNN
F 3 "~" H 7500 4800 50  0001 C CNN
	1    7500 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 4600 7200 4600
Connection ~ 7150 4600
Wire Wire Line
	7150 4600 7150 4700
Wire Wire Line
	7400 4600 7500 4600
Wire Wire Line
	7500 5000 7150 5000
Wire Wire Line
	7150 4900 7150 5000
Connection ~ 7150 5000
Wire Wire Line
	7150 5000 7150 5200
Wire Wire Line
	7800 2850 7800 2900
Connection ~ 7800 2900
Wire Wire Line
	7800 2900 7850 2900
Wire Wire Line
	7800 2150 7800 2100
Connection ~ 7800 2100
Wire Wire Line
	7800 2100 7850 2100
Wire Wire Line
	7800 4450 7800 4400
Connection ~ 7800 4400
Wire Wire Line
	7800 4400 7850 4400
Wire Wire Line
	7800 5150 7800 5200
Connection ~ 7800 5200
Wire Wire Line
	7800 5200 7850 5200
$Comp
L power:GND #PWR014
U 1 1 60912A46
P 5150 5150
F 0 "#PWR014" H 5150 4900 50  0001 C CNN
F 1 "GND" H 5155 4977 50  0000 C CNN
F 2 "" H 5150 5150 50  0001 C CNN
F 3 "" H 5150 5150 50  0001 C CNN
	1    5150 5150
	0    1    1    0   
$EndComp
$Comp
L Device:C C20
U 1 1 60912A4C
P 5300 5150
F 0 "C20" H 5415 5196 50  0000 L CNN
F 1 "100nF" H 5415 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5338 5000 50  0001 C CNN
F 3 "~" H 5300 5150 50  0001 C CNN
	1    5300 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 5150 5450 4900
Connection ~ 5450 4900
Wire Wire Line
	5450 4900 5150 4900
$Comp
L power:GND #PWR013
U 1 1 60914F3F
P 5100 2850
F 0 "#PWR013" H 5100 2600 50  0001 C CNN
F 1 "GND" H 5105 2677 50  0000 C CNN
F 2 "" H 5100 2850 50  0001 C CNN
F 3 "" H 5100 2850 50  0001 C CNN
	1    5100 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C19
U 1 1 60914F45
P 5250 2850
F 0 "C19" H 5365 2896 50  0000 L CNN
F 1 "100nF" H 5365 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5288 2700 50  0001 C CNN
F 3 "~" H 5250 2850 50  0001 C CNN
	1    5250 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 2850 5400 2600
Connection ~ 5400 2600
Wire Wire Line
	5400 2600 5150 2600
$EndSCHEMATC
