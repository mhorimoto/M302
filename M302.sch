EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "M302 Measurement Equipment Type Light"
Date "2020-10-03"
Rev "1.00"
Comp "HOLLY&Co.,Ltd."
Comment1 "Use W5500 I/F for LAN networking"
Comment2 "Use IM920 I/F for Radio connection"
Comment3 ""
Comment4 ""
$EndDescr
Text Label 5900 3450 1    60   ~ 0
Vin
Text Label 6300 3450 1    60   ~ 0
IOREF
Text Label 5850 4500 0    60   ~ 0
A0
Text Label 5850 4600 0    60   ~ 0
A1
Text Label 5850 4700 0    60   ~ 0
A2
Text Label 5850 4800 0    60   ~ 0
A3
Text Label 5850 4900 0    60   ~ 0
A4(SDA)
Text Label 5850 5000 0    60   ~ 0
A5(SCL)
Text Label 7500 5000 0    60   ~ 0
0(Rx)
Text Label 7500 4800 0    60   ~ 0
2
Text Label 7500 4900 0    60   ~ 0
1(Tx)
Text Label 7500 4700 0    60   ~ 0
3(**)
Text Label 7500 4600 0    60   ~ 0
4
Text Label 7500 4500 0    60   ~ 0
5(**)
Text Label 7500 4400 0    60   ~ 0
6(**)
Text Label 7500 4300 0    60   ~ 0
7
Text Label 7500 4100 0    60   ~ 0
8
Text Label 7500 4000 0    60   ~ 0
9(**)
Text Label 7500 3900 0    60   ~ 0
10(**/SS)
Text Label 7500 3800 0    60   ~ 0
11(**/MOSI)
Text Label 7500 3700 0    60   ~ 0
12(MISO)
Text Label 7500 3600 0    60   ~ 0
13(SCK)
Text Label 7500 3400 0    60   ~ 0
AREF
NoConn ~ 6350 3600
Text Label 7500 3300 0    60   ~ 0
A4(SDA)
Text Label 7500 3200 0    60   ~ 0
A5(SCL)
Text Notes 7800 3000 0    60   ~ 0
Holes
Text Notes 5500 2750 0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 6550 3900
F 0 "P1" H 6550 4350 50  0000 C CNN
F 1 "Power" V 6650 3900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 6700 3900 20  0000 C CNN
F 3 "" H 6550 3900 50  0000 C CNN
	1    6550 3900
	1    0    0    -1  
$EndComp
Text Label 5600 3800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 6100 3450
F 0 "#PWR01" H 6100 3300 50  0001 C CNN
F 1 "+3.3V" V 6100 3700 50  0000 C CNN
F 2 "" H 6100 3450 50  0000 C CNN
F 3 "" H 6100 3450 50  0000 C CNN
	1    6100 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 6000 3350
F 0 "#PWR02" H 6000 3200 50  0001 C CNN
F 1 "+5V" V 6000 3550 50  0000 C CNN
F 2 "" H 6000 3350 50  0000 C CNN
F 3 "" H 6000 3350 50  0000 C CNN
	1    6000 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 6250 5150
F 0 "#PWR03" H 6250 4900 50  0001 C CNN
F 1 "GND" H 6250 5000 50  0000 C CNN
F 2 "" H 6250 5150 50  0000 C CNN
F 3 "" H 6250 5150 50  0000 C CNN
	1    6250 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 7250 5150
F 0 "#PWR04" H 7250 4900 50  0001 C CNN
F 1 "GND" H 7250 5000 50  0000 C CNN
F 2 "" H 7250 5150 50  0000 C CNN
F 3 "" H 7250 5150 50  0000 C CNN
	1    7250 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 6550 4700
F 0 "P2" H 6550 4300 50  0000 C CNN
F 1 "Analog" V 6650 4700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 6700 4750 20  0000 C CNN
F 3 "" H 6550 4700 50  0000 C CNN
	1    6550 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 7750 2650
F 0 "P5" V 7850 2650 50  0000 C CNN
F 1 "CONN_01X01" V 7850 2650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 7671 2724 20  0000 C CNN
F 3 "" H 7750 2650 50  0000 C CNN
	1    7750 2650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 7850 2650
F 0 "P6" V 7950 2650 50  0000 C CNN
F 1 "CONN_01X01" V 7950 2650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 7850 2650 20  0001 C CNN
F 3 "" H 7850 2650 50  0000 C CNN
	1    7850 2650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 7950 2650
F 0 "P7" V 8050 2650 50  0000 C CNN
F 1 "CONN_01X01" V 8050 2650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 7950 2650 20  0001 C CNN
F 3 "" H 7950 2650 50  0000 C CNN
	1    7950 2650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 8050 2650
F 0 "P8" V 8150 2650 50  0000 C CNN
F 1 "CONN_01X01" V 8150 2650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 7974 2572 20  0000 C CNN
F 3 "" H 8050 2650 50  0000 C CNN
	1    8050 2650
	0    -1   -1   0   
$EndComp
NoConn ~ 7750 2850
NoConn ~ 7850 2850
NoConn ~ 7950 2850
NoConn ~ 8050 2850
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 6950 4600
F 0 "P4" H 6950 4100 50  0000 C CNN
F 1 "Digital" V 7050 4600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 7100 4550 20  0000 C CNN
F 3 "" H 6950 4600 50  0000 C CNN
	1    6950 4600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	5475 2825 6875 2825
Wire Notes Line
	6875 2825 6875 2475
Wire Wire Line
	6300 3450 6300 3700
Wire Wire Line
	6300 3700 6350 3700
Wire Wire Line
	6350 3900 6100 3900
Wire Wire Line
	6350 4000 6000 4000
Wire Wire Line
	6350 4300 5900 4300
Wire Wire Line
	6350 4100 6250 4100
Wire Wire Line
	6350 4200 6250 4200
Connection ~ 6250 4200
Wire Wire Line
	6000 4000 6000 3350
Wire Wire Line
	6100 3900 6100 3450
Wire Wire Line
	6350 4500 5850 4500
Wire Wire Line
	6350 4600 5850 4600
Wire Wire Line
	6350 4700 5850 4700
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 6950 3600
F 0 "P3" H 6950 4150 50  0000 C CNN
F 1 "Digital" V 7050 3600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 7100 3600 20  0000 C CNN
F 3 "" H 6950 3600 50  0000 C CNN
	1    6950 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7150 4100 7500 4100
Wire Wire Line
	7150 4000 7500 4000
Wire Wire Line
	7150 3400 7500 3400
Wire Wire Line
	7150 5000 7500 5000
Wire Wire Line
	7150 4900 7500 4900
Wire Wire Line
	7150 4800 7500 4800
Wire Wire Line
	7150 4700 7500 4700
Wire Wire Line
	7150 3500 7250 3500
Wire Wire Line
	7250 3500 7250 5150
Wire Wire Line
	6250 4100 6250 4200
Wire Wire Line
	6250 4200 6250 5150
Wire Notes Line
	5450 2500 5450 5450
Wire Notes Line
	5450 5450 8150 5450
Text Notes 6650 3600 0    60   ~ 0
1
Wire Notes Line
	8150 3000 7650 3000
Wire Notes Line
	7650 3000 7650 2500
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5F884277
P 3600 4300
F 0 "J4" V 3700 4450 50  0000 R CNN
F 1 "I2C-4" V 3700 4250 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 3600 4300 50  0001 C CNN
F 3 "~" H 3600 4300 50  0001 C CNN
	1    3600 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5F885BBE
P 3000 4300
F 0 "J3" V 3100 4450 50  0000 R CNN
F 1 "I2C-3" V 3100 4250 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 3000 4300 50  0001 C CNN
F 3 "~" H 3000 4300 50  0001 C CNN
	1    3000 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5F8861FD
P 2400 4300
F 0 "J2" V 2500 4450 50  0000 R CNN
F 1 "I2C-2" V 2500 4250 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 2400 4300 50  0001 C CNN
F 3 "~" H 2400 4300 50  0001 C CNN
	1    2400 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5F886759
P 1750 4300
F 0 "J1" V 1850 4450 50  0000 R CNN
F 1 "I2C-1" V 1850 4250 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 1750 4300 50  0001 C CNN
F 3 "~" H 1750 4300 50  0001 C CNN
	1    1750 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J5
U 1 1 5F886BA7
P 4650 4300
F 0 "J5" V 4750 4650 50  0000 R CNN
F 1 "I2C-D400" V 4750 4300 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B7B-XH-A_1x07_P2.50mm_Vertical" H 4650 4300 50  0001 C CNN
F 3 "~" H 4650 4300 50  0001 C CNN
	1    4650 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F7724F3
P 3500 5650
F 0 "#PWR0101" H 3500 5400 50  0001 C CNN
F 1 "GND" H 3505 5477 50  0000 C CNN
F 2 "" H 3500 5650 50  0001 C CNN
F 3 "" H 3500 5650 50  0001 C CNN
	1    3500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5650 3500 5400
Wire Wire Line
	1650 4500 1650 4700
Connection ~ 3500 4700
Wire Wire Line
	3500 4700 3500 4500
Wire Wire Line
	2900 4500 2900 4700
Connection ~ 2900 4700
Wire Wire Line
	2900 4700 3500 4700
Wire Wire Line
	2300 4500 2300 4700
Wire Wire Line
	1650 4700 2300 4700
Connection ~ 2300 4700
Wire Wire Line
	2300 4700 2900 4700
$Comp
L power:+5V #PWR0102
U 1 1 5F77B8D6
P 1350 2900
F 0 "#PWR0102" H 1350 2750 50  0001 C CNN
F 1 "+5V" H 1365 3073 50  0000 C CNN
F 2 "" H 1350 2900 50  0001 C CNN
F 3 "" H 1350 2900 50  0001 C CNN
	1    1350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2900 1350 3100
Wire Wire Line
	3600 4600 3600 4500
Wire Wire Line
	3000 4500 3000 4600
Connection ~ 3000 4600
Wire Wire Line
	3000 4600 3600 4600
Wire Wire Line
	2400 4500 2400 4600
Connection ~ 2400 4600
Wire Wire Line
	2400 4600 3000 4600
Wire Wire Line
	1750 4500 1750 4600
Wire Wire Line
	1350 4600 1750 4600
Connection ~ 1750 4600
Wire Wire Line
	1750 4600 2400 4600
Wire Wire Line
	1850 4900 1850 4500
Wire Wire Line
	2500 4500 2500 4900
Wire Wire Line
	1850 4900 2500 4900
Connection ~ 2500 4900
Wire Wire Line
	2500 4900 3100 4900
Wire Wire Line
	3100 4500 3100 4900
Connection ~ 3100 4900
Wire Wire Line
	3100 4900 3700 4900
Wire Wire Line
	3700 4500 3700 4900
Wire Wire Line
	3700 4900 4650 4900
Wire Wire Line
	1950 5000 1950 4500
Wire Wire Line
	1950 5000 2600 5000
Wire Wire Line
	2600 4500 2600 5000
Connection ~ 2600 5000
Wire Wire Line
	2600 5000 3200 5000
Wire Wire Line
	3200 4500 3200 5000
Connection ~ 3200 5000
Wire Wire Line
	3200 5000 3800 5000
Wire Wire Line
	3800 4500 3800 5000
Wire Wire Line
	3800 5000 4950 5000
Connection ~ 3700 4900
Connection ~ 3800 5000
Wire Wire Line
	4950 4500 4950 5000
Connection ~ 4950 5000
Wire Wire Line
	4950 5000 5300 5000
Wire Wire Line
	4650 4500 4650 4900
Connection ~ 4650 4900
Wire Wire Line
	4650 4900 5400 4900
Wire Wire Line
	4350 4500 4350 4600
Wire Wire Line
	4350 4600 3600 4600
Connection ~ 3600 4600
Wire Wire Line
	4550 4500 4550 4700
Wire Wire Line
	4550 4700 3500 4700
Wire Wire Line
	4850 4500 4850 5400
Wire Wire Line
	4850 5400 4550 5400
Wire Wire Line
	4150 5400 3500 5400
Connection ~ 3500 5400
Wire Wire Line
	3500 5400 3500 4700
Wire Wire Line
	4850 5400 5050 5400
Wire Wire Line
	5050 5400 5050 4800
Wire Wire Line
	5050 4800 6350 4800
Connection ~ 4850 5400
$Comp
L Switch:SW_Push SW2
U 1 1 5F7EA933
P 4350 5400
F 0 "SW2" H 4350 5685 50  0000 C CNN
F 1 "D400" H 4350 5594 50  0000 C CNN
F 2 "HOLLY:TVDT18-050" H 4350 5600 50  0001 C CNN
F 3 "~" H 4350 5600 50  0001 C CNN
	1    4350 5400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F80B622
P 4450 3800
F 0 "SW1" H 4450 4085 50  0000 C CNN
F 1 "CPU" H 4450 3994 50  0000 C CNN
F 2 "HOLLY:TVDT18-050" H 4450 4000 50  0001 C CNN
F 3 "~" H 4450 4000 50  0001 C CNN
	1    4450 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F80D01D
P 4900 3450
F 0 "R1" H 4968 3496 50  0000 L CNN
F 1 "10k" H 4968 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4940 3440 50  0001 C CNN
F 3 "~" H 4900 3450 50  0001 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3800 4900 3800
Wire Wire Line
	4900 3300 4900 3100
Wire Wire Line
	4900 3100 1350 3100
Connection ~ 1350 3100
Wire Wire Line
	1350 3100 1350 4600
Wire Wire Line
	4900 3600 4900 3800
Connection ~ 4900 3800
Wire Wire Line
	4900 3800 5200 3800
$Comp
L power:GND #PWR0103
U 1 1 5F831826
P 4100 3950
F 0 "#PWR0103" H 4100 3700 50  0001 C CNN
F 1 "GND" H 4105 3777 50  0000 C CNN
F 2 "" H 4100 3950 50  0001 C CNN
F 3 "" H 4100 3950 50  0001 C CNN
	1    4100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3800 4100 3800
Wire Wire Line
	4100 3800 4100 3950
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J6
U 1 1 5F839511
P 9300 2900
F 0 "J6" H 9350 3317 50  0000 C CNN
F 1 "W5500" H 9350 3226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 9300 2900 50  0001 C CNN
F 3 "~" H 9300 2900 50  0001 C CNN
	1    9300 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5F83D4E0
P 8900 2300
F 0 "#PWR0104" H 8900 2150 50  0001 C CNN
F 1 "+3.3V" V 8900 2550 50  0000 C CNN
F 2 "" H 8900 2300 50  0000 C CNN
F 3 "" H 8900 2300 50  0000 C CNN
	1    8900 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5F83DB67
P 9950 2300
F 0 "#PWR0108" H 9950 2150 50  0001 C CNN
F 1 "+5V" V 9950 2500 50  0000 C CNN
F 2 "" H 9950 2300 50  0000 C CNN
F 3 "" H 9950 2300 50  0000 C CNN
	1    9950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2700 8900 2700
Wire Wire Line
	8900 2700 8900 2300
Wire Wire Line
	9600 2700 9950 2700
Wire Wire Line
	9950 2700 9950 2300
$Comp
L power:GND #PWR0106
U 1 1 5F845184
P 9950 3500
F 0 "#PWR0106" H 9950 3250 50  0001 C CNN
F 1 "GND" H 9950 3350 50  0000 C CNN
F 2 "" H 9950 3500 50  0000 C CNN
F 3 "" H 9950 3500 50  0000 C CNN
	1    9950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2800 9950 2800
Wire Wire Line
	9950 2800 9950 3500
Wire Wire Line
	9600 2900 9700 2900
Wire Wire Line
	9700 2900 9700 1600
Wire Wire Line
	9700 1600 5200 1600
Wire Wire Line
	5200 1600 5200 3800
Connection ~ 5200 3800
Wire Wire Line
	5200 3800 6350 3800
NoConn ~ 9600 3000
NoConn ~ 9600 3100
Wire Wire Line
	8600 3700 8600 2800
Wire Wire Line
	8600 2800 9100 2800
Wire Wire Line
	7150 3700 8600 3700
Wire Wire Line
	8650 3800 8650 2900
Wire Wire Line
	8650 2900 9100 2900
Wire Wire Line
	7150 3800 8650 3800
Wire Wire Line
	8700 3000 9100 3000
Wire Wire Line
	7150 3900 8700 3900
Wire Wire Line
	8750 3600 8750 3100
Wire Wire Line
	8750 3100 9100 3100
Wire Wire Line
	7150 3600 8750 3600
NoConn ~ 7500 3400
NoConn ~ 6300 3450
NoConn ~ 5850 4700
NoConn ~ 5850 4600
NoConn ~ 5850 4500
NoConn ~ 4750 4500
NoConn ~ 4450 4500
$Comp
L Connector_Generic:Conn_01x06 J7
U 1 1 5F890362
P 10150 4750
F 0 "J7" V 10250 5100 50  0000 R CNN
F 1 "IM920" V 10250 4750 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B6B-XH-A_1x06_P2.50mm_Vertical" H 10150 4750 50  0001 C CNN
F 3 "~" H 10150 4750 50  0001 C CNN
	1    10150 4750
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5F897A65
P 1950 2450
F 0 "J8" H 1868 2667 50  0000 C CNN
F 1 "PWR" H 1868 2576 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 1950 2450 50  0001 C CNN
F 3 "~" H 1950 2450 50  0001 C CNN
	1    1950 2450
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5F8A1D1C
P 3800 2100
F 0 "J9" V 3862 2244 50  0000 L CNN
F 1 "VSW" V 3953 2244 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3800 2100 50  0001 C CNN
F 3 "~" H 3800 2100 50  0001 C CNN
	1    3800 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 2450 2850 2450
Wire Wire Line
	3800 2450 3800 2300
Wire Wire Line
	3700 2300 3700 2950
Wire Wire Line
	3700 2950 5900 2950
Wire Wire Line
	5900 2950 5900 4300
$Comp
L power:GND #PWR0107
U 1 1 5F8AB9C5
P 2150 2850
F 0 "#PWR0107" H 2150 2600 50  0001 C CNN
F 1 "GND" H 2155 2677 50  0000 C CNN
F 2 "" H 2150 2850 50  0001 C CNN
F 3 "" H 2150 2850 50  0001 C CNN
	1    2150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2550 2150 2750
$Comp
L power:+5V #PWR0105
U 1 1 5F8B4AD0
P 4400 2300
F 0 "#PWR0105" H 4400 2150 50  0001 C CNN
F 1 "+5V" V 4400 2500 50  0000 C CNN
F 2 "" H 4400 2300 50  0000 C CNN
F 3 "" H 4400 2300 50  0000 C CNN
	1    4400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2300 3900 2450
Wire Wire Line
	3900 2450 4400 2450
Wire Wire Line
	4400 2450 4400 2300
$Comp
L Device:CP_Small C1
U 1 1 5F8BA3B3
P 2850 2600
F 0 "C1" H 2938 2646 50  0000 L CNN
F 1 "100uF/25V" H 2938 2555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2850 2600 50  0001 C CNN
F 3 "https://akizukidenshi.com/download/ds/rubycon/PK_series.pdf" H 2850 2600 50  0001 C CNN
	1    2850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2500 2850 2450
Connection ~ 2850 2450
Wire Wire Line
	2850 2450 3800 2450
Wire Wire Line
	2850 2700 2850 2750
Wire Wire Line
	2850 2750 2150 2750
Connection ~ 2150 2750
Wire Wire Line
	2150 2750 2150 2850
$Comp
L Buffer:SFE-BOB-12009 U1
U 1 1 5F77B0BE
P 9050 5150
F 0 "U1" H 9050 5175 50  0000 C CNN
F 1 "SFE-BOB-12009" H 9050 5084 50  0000 C CNN
F 2 "HOLLY:SFE-BOB-12009" H 9050 5150 50  0001 C CNN
F 3 "" H 9050 5150 50  0001 C CNN
	1    9050 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 4450 9950 4450
Wire Wire Line
	9400 4550 9950 4550
$Comp
L power:GND #PWR0109
U 1 1 5F789935
P 9650 5500
F 0 "#PWR0109" H 9650 5250 50  0001 C CNN
F 1 "GND" H 9650 5350 50  0000 C CNN
F 2 "" H 9650 5500 50  0000 C CNN
F 3 "" H 9650 5500 50  0000 C CNN
	1    9650 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4750 9950 4750
$Comp
L power:+3.3V #PWR0111
U 1 1 5F7EE56D
P 9650 4200
F 0 "#PWR0111" H 9650 4050 50  0001 C CNN
F 1 "+3.3V" V 9650 4450 50  0000 C CNN
F 2 "" H 9650 4200 50  0000 C CNN
F 3 "" H 9650 4200 50  0000 C CNN
	1    9650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4200 9650 4650
Wire Wire Line
	9650 4650 9950 4650
Wire Wire Line
	9400 4850 9950 4850
Wire Wire Line
	9400 4950 9950 4950
$Comp
L power:+5V #PWR0112
U 1 1 5F803107
P 8500 4200
F 0 "#PWR0112" H 8500 4050 50  0001 C CNN
F 1 "+5V" V 8500 4400 50  0000 C CNN
F 2 "" H 8500 4200 50  0000 C CNN
F 3 "" H 8500 4200 50  0000 C CNN
	1    8500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4300 8200 4450
Wire Wire Line
	8200 4450 8700 4450
Wire Wire Line
	7150 4300 8200 4300
Wire Wire Line
	8150 4550 8700 4550
Wire Wire Line
	7150 4400 8150 4400
Wire Wire Line
	8150 4400 8150 4550
Wire Wire Line
	8100 4500 8100 4850
Wire Wire Line
	8100 4850 8700 4850
Wire Wire Line
	7150 4500 8100 4500
Wire Wire Line
	8050 4600 8050 4950
Wire Wire Line
	7150 4600 8050 4600
Text Notes 8050 5000 0    39   ~ 0
IM920 RESET
Text Notes 8100 4900 0    39   ~ 0
IM920 BUSY
Text Notes 8150 4600 0    39   ~ 0
RX(IM920 TX)
Text Notes 8200 4500 0    39   ~ 0
TX(IM920 RX)
$Comp
L Switch:SW_Push SW3
U 1 1 5F84E5BD
P 8050 5600
F 0 "SW3" H 8050 5885 50  0000 C CNN
F 1 "IM920" H 8050 5794 50  0000 C CNN
F 2 "HOLLY:TVDT18-050" H 8050 5800 50  0001 C CNN
F 3 "~" H 8050 5800 50  0001 C CNN
	1    8050 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F84F736
P 8050 6050
F 0 "#PWR0113" H 8050 5800 50  0001 C CNN
F 1 "GND" H 8050 5900 50  0000 C CNN
F 2 "" H 8050 6050 50  0000 C CNN
F 3 "" H 8050 6050 50  0000 C CNN
	1    8050 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 6050 8050 5800
Wire Wire Line
	8050 5400 8050 4950
Connection ~ 8050 4950
Wire Wire Line
	8050 4950 8700 4950
Wire Wire Line
	9650 4750 9650 5300
Wire Wire Line
	9400 4750 9650 4750
Connection ~ 9650 4750
Wire Wire Line
	9650 4650 9400 4650
Connection ~ 9650 4650
Wire Wire Line
	8700 3000 8700 3900
Wire Wire Line
	8500 4200 8500 4650
Wire Wire Line
	8500 4650 8700 4650
Wire Wire Line
	8700 4750 8500 4750
Wire Wire Line
	8500 4750 8500 5300
Wire Wire Line
	8500 5300 9650 5300
Connection ~ 9650 5300
Wire Wire Line
	9650 5300 9650 5500
Text Notes 4350 3900 0    50   ~ 0
RESET
Text Notes 4250 5500 0    50   ~ 0
RESET
Text Notes 8000 5700 1    50   ~ 0
RESET
Wire Wire Line
	5400 4900 5400 2250
Wire Wire Line
	5400 2250 8350 2250
Wire Wire Line
	8350 2250 8350 3300
Wire Wire Line
	7150 3300 8350 3300
Connection ~ 5400 4900
Wire Wire Line
	5400 4900 6350 4900
Wire Wire Line
	5300 5000 5300 2150
Wire Wire Line
	5300 2150 8250 2150
Wire Wire Line
	8250 2150 8250 3200
Wire Wire Line
	7150 3200 8250 3200
Connection ~ 5300 5000
Wire Wire Line
	5300 5000 6350 5000
$EndSCHEMATC
