EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 5250 3450 1    60   ~ 0
Vin
Text Label 5650 3450 1    60   ~ 0
IOREF
Text Label 5200 4500 0    60   ~ 0
A0
Text Label 5200 4600 0    60   ~ 0
A1
Text Label 5200 4700 0    60   ~ 0
A2
Text Label 5200 4800 0    60   ~ 0
A3
Text Label 5200 4900 0    60   ~ 0
A4(SDA)
Text Label 5200 5000 0    60   ~ 0
A5(SCL)
Text Label 6850 5000 0    60   ~ 0
0(Rx)
Text Label 6850 4800 0    60   ~ 0
2
Text Label 6850 4900 0    60   ~ 0
1(Tx)
Text Label 6850 4700 0    60   ~ 0
3(**)
Text Label 6850 4600 0    60   ~ 0
4
Text Label 6850 4500 0    60   ~ 0
5(**)
Text Label 6850 4400 0    60   ~ 0
6(**)
Text Label 6850 4300 0    60   ~ 0
7
Text Label 6850 4100 0    60   ~ 0
8
Text Label 6850 4000 0    60   ~ 0
9(**)
Text Label 6850 3900 0    60   ~ 0
10(**/SS)
Text Label 6850 3800 0    60   ~ 0
11(**/MOSI)
Text Label 6850 3700 0    60   ~ 0
12(MISO)
Text Label 6850 3600 0    60   ~ 0
13(SCK)
Text Label 6850 3400 0    60   ~ 0
AREF
NoConn ~ 5700 3600
Text Label 6850 3300 0    60   ~ 0
A4(SDA)
Text Label 6850 3200 0    60   ~ 0
A5(SCL)
Text Notes 7150 3000 0    60   ~ 0
Holes
Text Notes 4850 2750 0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 5900 3900
F 0 "P1" H 5900 4350 50  0000 C CNN
F 1 "Power" V 6000 3900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 6050 3900 20  0000 C CNN
F 3 "" H 5900 3900 50  0000 C CNN
	1    5900 3900
	1    0    0    -1  
$EndComp
Text Label 4950 3800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 5450 3450
F 0 "#PWR01" H 5450 3300 50  0001 C CNN
F 1 "+3.3V" V 5450 3700 50  0000 C CNN
F 2 "" H 5450 3450 50  0000 C CNN
F 3 "" H 5450 3450 50  0000 C CNN
	1    5450 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 5350 3350
F 0 "#PWR02" H 5350 3200 50  0001 C CNN
F 1 "+5V" V 5350 3550 50  0000 C CNN
F 2 "" H 5350 3350 50  0000 C CNN
F 3 "" H 5350 3350 50  0000 C CNN
	1    5350 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 5600 5150
F 0 "#PWR03" H 5600 4900 50  0001 C CNN
F 1 "GND" H 5600 5000 50  0000 C CNN
F 2 "" H 5600 5150 50  0000 C CNN
F 3 "" H 5600 5150 50  0000 C CNN
	1    5600 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 6600 5150
F 0 "#PWR04" H 6600 4900 50  0001 C CNN
F 1 "GND" H 6600 5000 50  0000 C CNN
F 2 "" H 6600 5150 50  0000 C CNN
F 3 "" H 6600 5150 50  0000 C CNN
	1    6600 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 5900 4700
F 0 "P2" H 5900 4300 50  0000 C CNN
F 1 "Analog" V 6000 4700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 6050 4750 20  0000 C CNN
F 3 "" H 5900 4700 50  0000 C CNN
	1    5900 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 7100 2650
F 0 "P5" V 7200 2650 50  0000 C CNN
F 1 "CONN_01X01" V 7200 2650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 7021 2724 20  0000 C CNN
F 3 "" H 7100 2650 50  0000 C CNN
	1    7100 2650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 7200 2650
F 0 "P6" V 7300 2650 50  0000 C CNN
F 1 "CONN_01X01" V 7300 2650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 7200 2650 20  0001 C CNN
F 3 "" H 7200 2650 50  0000 C CNN
	1    7200 2650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 7300 2650
F 0 "P7" V 7400 2650 50  0000 C CNN
F 1 "CONN_01X01" V 7400 2650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 7300 2650 20  0001 C CNN
F 3 "" H 7300 2650 50  0000 C CNN
	1    7300 2650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 7400 2650
F 0 "P8" V 7500 2650 50  0000 C CNN
F 1 "CONN_01X01" V 7500 2650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 7324 2572 20  0000 C CNN
F 3 "" H 7400 2650 50  0000 C CNN
	1    7400 2650
	0    -1   -1   0   
$EndComp
NoConn ~ 7100 2850
NoConn ~ 7200 2850
NoConn ~ 7300 2850
NoConn ~ 7400 2850
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 6300 4600
F 0 "P4" H 6300 4100 50  0000 C CNN
F 1 "Digital" V 6400 4600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 6450 4550 20  0000 C CNN
F 3 "" H 6300 4600 50  0000 C CNN
	1    6300 4600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	4825 2825 6225 2825
Wire Notes Line
	6225 2825 6225 2475
Wire Wire Line
	5650 3450 5650 3700
Wire Wire Line
	5650 3700 5700 3700
Wire Wire Line
	5700 3900 5450 3900
Wire Wire Line
	5700 4000 5350 4000
Wire Wire Line
	5700 4300 5250 4300
Wire Wire Line
	5700 4100 5600 4100
Wire Wire Line
	5700 4200 5600 4200
Connection ~ 5600 4200
Wire Wire Line
	5250 4300 5250 3450
Wire Wire Line
	5350 4000 5350 3350
Wire Wire Line
	5450 3900 5450 3450
Wire Wire Line
	5700 4500 5200 4500
Wire Wire Line
	5700 4600 5200 4600
Wire Wire Line
	5700 4700 5200 4700
Wire Wire Line
	5700 4800 5200 4800
Wire Wire Line
	5700 4900 5200 4900
Wire Wire Line
	5700 5000 5200 5000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 6300 3600
F 0 "P3" H 6300 4150 50  0000 C CNN
F 1 "Digital" V 6400 3600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 6450 3600 20  0000 C CNN
F 3 "" H 6300 3600 50  0000 C CNN
	1    6300 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6500 4100 6850 4100
Wire Wire Line
	6500 4000 6850 4000
Wire Wire Line
	6500 3900 6850 3900
Wire Wire Line
	6500 3800 6850 3800
Wire Wire Line
	6500 3700 6850 3700
Wire Wire Line
	6500 3600 6850 3600
Wire Wire Line
	6500 3400 6850 3400
Wire Wire Line
	6500 3300 6850 3300
Wire Wire Line
	6500 3200 6850 3200
Wire Wire Line
	6500 5000 6850 5000
Wire Wire Line
	6500 4900 6850 4900
Wire Wire Line
	6500 4800 6850 4800
Wire Wire Line
	6500 4700 6850 4700
Wire Wire Line
	6500 4600 6850 4600
Wire Wire Line
	6500 4500 6850 4500
Wire Wire Line
	6500 4400 6850 4400
Wire Wire Line
	6500 4300 6850 4300
Wire Wire Line
	6500 3500 6600 3500
Wire Wire Line
	6600 3500 6600 5150
Wire Wire Line
	5600 4100 5600 4200
Wire Wire Line
	5600 4200 5600 5150
Wire Notes Line
	4800 2500 4800 5450
Wire Notes Line
	4800 5450 7500 5450
Wire Wire Line
	5700 3800 4950 3800
Text Notes 6000 3600 0    60   ~ 0
1
Wire Notes Line
	7500 3000 7000 3000
Wire Notes Line
	7000 3000 7000 2500
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F884277
P 3600 4550
F 0 "J?" V 3564 4262 50  0000 R CNN
F 1 "Conn_01x04" V 3473 4262 50  0000 R CNN
F 2 "" H 3600 4550 50  0001 C CNN
F 3 "~" H 3600 4550 50  0001 C CNN
	1    3600 4550
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F885BBE
P 3000 4550
F 0 "J?" V 2964 4262 50  0000 R CNN
F 1 "Conn_01x04" V 2873 4262 50  0000 R CNN
F 2 "" H 3000 4550 50  0001 C CNN
F 3 "~" H 3000 4550 50  0001 C CNN
	1    3000 4550
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F8861FD
P 2400 4550
F 0 "J?" V 2364 4262 50  0000 R CNN
F 1 "Conn_01x04" V 2273 4262 50  0000 R CNN
F 2 "" H 2400 4550 50  0001 C CNN
F 3 "~" H 2400 4550 50  0001 C CNN
	1    2400 4550
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F886759
P 1750 4550
F 0 "J?" V 1714 4262 50  0000 R CNN
F 1 "Conn_01x04" V 1623 4262 50  0000 R CNN
F 2 "" H 1750 4550 50  0001 C CNN
F 3 "~" H 1750 4550 50  0001 C CNN
	1    1750 4550
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F886BA7
P 1750 5200
F 0 "J?" V 1714 4912 50  0000 R CNN
F 1 "Conn_01x04" V 1623 4912 50  0000 R CNN
F 2 "" H 1750 5200 50  0001 C CNN
F 3 "~" H 1750 5200 50  0001 C CNN
	1    1750 5200
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
