EESchema Schematic File Version 2
LIBS:bb
LIBS:power
LIBS:device
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
LIBS:ESP8266
LIBS:w_analog
LIBS:w_device
LIBS:gsg-symbols
LIBS:bb1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L R R15
U 1 1 5660856B
P 2750 5500
F 0 "R15" V 2830 5500 50  0000 C CNN
F 1 "56k .1%" V 2750 5500 31  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2680 5500 30  0001 C CNN
F 3 "" H 2750 5500 30  0000 C CNN
	1    2750 5500
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 56608572
P 3000 5650
F 0 "R16" V 3080 5650 50  0000 C CNN
F 1 "10k .1%" V 3000 5650 31  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2930 5650 30  0001 C CNN
F 3 "" H 3000 5650 30  0000 C CNN
	1    3000 5650
	1    0    0    -1  
$EndComp
$Comp
L ZENERsmall D4
U 1 1 5660858A
P 3250 5650
F 0 "D4" H 3250 5750 40  0000 C CNN
F 1 "5.1V" H 3250 5550 30  0000 C CNN
F 2 "Diodes_SMD:SOD-323" H 3250 5650 60  0001 C CNN
F 3 "" H 3250 5650 60  0000 C CNN
	1    3250 5650
	0    1    1    0   
$EndComp
$Comp
L C_Small C21
U 1 1 56608592
P 3450 5650
F 0 "C21" H 3460 5720 50  0000 L CNN
F 1 ".1uF" H 3460 5570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3450 5650 60  0001 C CNN
F 3 "" H 3450 5650 60  0000 C CNN
	1    3450 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR049
U 1 1 5660859F
P 3250 5850
F 0 "#PWR049" H 3250 5600 50  0001 C CNN
F 1 "GND" H 3250 5700 50  0000 C CNN
F 2 "" H 3250 5850 60  0000 C CNN
F 3 "" H 3250 5850 60  0000 C CNN
	1    3250 5850
	1    0    0    -1  
$EndComp
Text HLabel 2350 2050 0    60   Input ~ 0
CAN_RX
Text HLabel 2350 1750 0    60   Input ~ 0
CAN_TX
Text HLabel 6500 2050 0    60   Input ~ 0
SER2_RX
Text HLabel 8500 1750 2    60   Input ~ 0
SER1_TX
Text HLabel 8500 2400 2    60   Input ~ 0
SER2_TX
Text HLabel 3600 6700 2    60   Input ~ 0
ANALOG1
$Comp
L MCP2562 U10
U 1 1 56616862
P 2900 1850
F 0 "U10" H 2900 1550 60  0000 C CNN
F 1 "MCP2562" H 2850 2050 60  0000 C CNN
F 2 "bb:SOIC8N-HandSoldering" H 2900 1750 60  0001 C CNN
F 3 "" H 2900 1750 60  0000 C CNN
	1    2900 1850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR050
U 1 1 5661817C
P 3500 2200
F 0 "#PWR050" H 3500 2050 50  0001 C CNN
F 1 "+3.3V" H 3500 2340 50  0000 C CNN
F 2 "" H 3500 2200 60  0000 C CNN
F 3 "" H 3500 2200 60  0000 C CNN
	1    3500 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 5661CF45
P 1900 2150
F 0 "#PWR051" H 1900 1900 50  0001 C CNN
F 1 "GND" H 1900 2000 50  0000 C CNN
F 2 "" H 1900 2150 60  0000 C CNN
F 3 "" H 1900 2150 60  0000 C CNN
	1    1900 2150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR052
U 1 1 5661EB70
P 1600 1700
F 0 "#PWR052" H 1600 1550 50  0001 C CNN
F 1 "+5V" H 1600 1840 50  0000 C CNN
F 2 "" H 1600 1700 60  0000 C CNN
F 3 "" H 1600 1700 60  0000 C CNN
	1    1600 1700
	1    0    0    -1  
$EndComp
Text HLabel 3450 1650 2    60   Input ~ 0
CAN_STBY
$Comp
L C_Small C19
U 1 1 566311B1
P 3400 2400
F 0 "C19" H 3410 2470 50  0000 L CNN
F 1 ".1uF" H 3410 2320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3400 2400 60  0001 C CNN
F 3 "" H 3400 2400 60  0000 C CNN
	1    3400 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR053
U 1 1 5663157A
P 3400 2550
F 0 "#PWR053" H 3400 2300 50  0001 C CNN
F 1 "GND" H 3400 2400 50  0000 C CNN
F 2 "" H 3400 2550 60  0000 C CNN
F 3 "" H 3400 2550 60  0000 C CNN
	1    3400 2550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C17
U 1 1 566339F9
P 1600 2100
F 0 "C17" H 1610 2170 50  0000 L CNN
F 1 ".1uF" H 1610 2020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1600 2100 60  0001 C CNN
F 3 "" H 1600 2100 60  0000 C CNN
	1    1600 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 56633AB1
P 1600 2250
F 0 "#PWR054" H 1600 2000 50  0001 C CNN
F 1 "GND" H 1600 2100 50  0000 C CNN
F 2 "" H 1600 2250 60  0000 C CNN
F 3 "" H 1600 2250 60  0000 C CNN
	1    1600 2250
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5671B2FD
P 2750 6100
F 0 "R17" V 2830 6100 50  0000 C CNN
F 1 "56k .1%" V 2750 6100 31  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2680 6100 30  0001 C CNN
F 3 "" H 2750 6100 30  0000 C CNN
	1    2750 6100
	0    1    1    0   
$EndComp
$Comp
L R R18
U 1 1 5671B303
P 3000 6250
F 0 "R18" V 3080 6250 50  0000 C CNN
F 1 "10k .1%" V 3000 6250 31  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2930 6250 30  0001 C CNN
F 3 "" H 3000 6250 30  0000 C CNN
	1    3000 6250
	1    0    0    -1  
$EndComp
$Comp
L ZENERsmall D5
U 1 1 5671B30D
P 3250 6250
F 0 "D5" H 3250 6350 40  0000 C CNN
F 1 "5.1V" H 3250 6150 30  0000 C CNN
F 2 "Diodes_SMD:SOD-323" H 3250 6250 60  0001 C CNN
F 3 "" H 3250 6250 60  0000 C CNN
	1    3250 6250
	0    1    1    0   
$EndComp
$Comp
L C_Small C22
U 1 1 5671B314
P 3450 6250
F 0 "C22" H 3460 6320 50  0000 L CNN
F 1 ".1uF" H 3460 6170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3450 6250 60  0001 C CNN
F 3 "" H 3450 6250 60  0000 C CNN
	1    3450 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR055
U 1 1 5671B320
P 3250 6450
F 0 "#PWR055" H 3250 6200 50  0001 C CNN
F 1 "GND" H 3250 6300 50  0000 C CNN
F 2 "" H 3250 6450 60  0000 C CNN
F 3 "" H 3250 6450 60  0000 C CNN
	1    3250 6450
	1    0    0    -1  
$EndComp
Text HLabel 3600 6100 2    60   Input ~ 0
ANALOG2
$Comp
L R R19
U 1 1 5671D27C
P 2750 6700
F 0 "R19" V 2830 6700 50  0000 C CNN
F 1 "56k .1%" V 2750 6700 31  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2680 6700 30  0001 C CNN
F 3 "" H 2750 6700 30  0000 C CNN
	1    2750 6700
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 5671D282
P 3000 6850
F 0 "R20" V 3080 6850 50  0000 C CNN
F 1 "10k .1%" V 3000 6850 31  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2930 6850 30  0001 C CNN
F 3 "" H 3000 6850 30  0000 C CNN
	1    3000 6850
	1    0    0    -1  
$EndComp
$Comp
L ZENERsmall D6
U 1 1 5671D28C
P 3250 6850
F 0 "D6" H 3250 6950 40  0000 C CNN
F 1 "5.1V" H 3250 6750 30  0000 C CNN
F 2 "Diodes_SMD:SOD-323" H 3250 6850 60  0001 C CNN
F 3 "" H 3250 6850 60  0000 C CNN
	1    3250 6850
	0    1    1    0   
$EndComp
$Comp
L C_Small C23
U 1 1 5671D293
P 3450 6850
F 0 "C23" H 3460 6920 50  0000 L CNN
F 1 ".1uF" H 3460 6770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3450 6850 60  0001 C CNN
F 3 "" H 3450 6850 60  0000 C CNN
	1    3450 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR056
U 1 1 5671D29F
P 3250 7050
F 0 "#PWR056" H 3250 6800 50  0001 C CNN
F 1 "GND" H 3250 6900 50  0000 C CNN
F 2 "" H 3250 7050 60  0000 C CNN
F 3 "" H 3250 7050 60  0000 C CNN
	1    3250 7050
	1    0    0    -1  
$EndComp
Text HLabel 3600 5500 2    60   Input ~ 0
ANALOG3
$Comp
L +12V #PWR057
U 1 1 567F4FFA
P 8250 3800
F 0 "#PWR057" H 8250 3650 50  0001 C CNN
F 1 "+12V" H 8250 3940 50  0000 C CNN
F 2 "" H 8250 3800 60  0000 C CNN
F 3 "" H 8250 3800 60  0000 C CNN
	1    8250 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR058
U 1 1 56805BCC
P 2250 5100
F 0 "#PWR058" H 2250 4850 50  0001 C CNN
F 1 "GND" H 2250 4950 50  0000 C CNN
F 2 "" H 2250 5100 60  0000 C CNN
F 3 "" H 2250 5100 60  0000 C CNN
	1    2250 5100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG059
U 1 1 568074D6
P 7900 3850
F 0 "#FLG059" H 7900 3945 50  0001 C CNN
F 1 "PWR_FLAG" H 7900 4030 50  0000 C CNN
F 2 "" H 7900 3850 60  0000 C CNN
F 3 "" H 7900 3850 60  0000 C CNN
	1    7900 3850
	1    0    0    -1  
$EndComp
$Comp
L INA219 U12
U 1 1 56698426
P 3200 4700
F 0 "U12" H 3400 4950 60  0000 C CNN
F 1 "INA219" H 3100 4950 60  0000 C CNN
F 2 "bb:SOIC8N-HandSoldering" H 3200 4700 60  0001 C CNN
F 3 "" H 3200 4700 60  0000 C CNN
	1    3200 4700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR060
U 1 1 56699F39
P 2700 4400
F 0 "#PWR060" H 2700 4250 50  0001 C CNN
F 1 "+3.3V" H 2700 4540 50  0000 C CNN
F 2 "" H 2700 4400 60  0000 C CNN
F 3 "" H 2700 4400 60  0000 C CNN
	1    2700 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 5669B7A7
P 4500 5000
F 0 "#PWR061" H 4500 4750 50  0001 C CNN
F 1 "GND" H 4500 4850 50  0000 C CNN
F 2 "" H 4500 5000 60  0000 C CNN
F 3 "" H 4500 5000 60  0000 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
Text HLabel 3650 4750 2    60   Input ~ 0
SDA
Text HLabel 3650 4850 2    60   Input ~ 0
SCL
$Comp
L C_Small C29
U 1 1 566A03FA
P 2450 4950
F 0 "C29" H 2460 5020 50  0000 L CNN
F 1 ".1uF" H 2460 4870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2450 4950 60  0001 C CNN
F 3 "" H 2450 4950 60  0000 C CNN
	1    2450 4950
	1    0    0    -1  
$EndComp
$Comp
L SN7534051 U11
U 1 1 5665A3DD
P 7800 2150
F 0 "U11" H 7800 1800 60  0000 C CNN
F 1 "SN65C1168E" H 7800 2700 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 7800 2150 60  0001 C CNN
F 3 "" H 7800 2150 60  0000 C CNN
	1    7800 2150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR062
U 1 1 5665D00E
P 8450 1100
F 0 "#PWR062" H 8450 950 50  0001 C CNN
F 1 "+5V" H 8450 1240 50  0000 C CNN
F 2 "" H 8450 1100 60  0000 C CNN
F 3 "" H 8450 1100 60  0000 C CNN
	1    8450 1100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C14
U 1 1 5665D07C
P 8650 1350
F 0 "C14" H 8660 1420 50  0000 L CNN
F 1 ".1uF" H 8660 1270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8650 1350 60  0001 C CNN
F 3 "" H 8650 1350 60  0000 C CNN
	1    8650 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR063
U 1 1 5665D465
P 8650 1500
F 0 "#PWR063" H 8650 1250 50  0001 C CNN
F 1 "GND" H 8650 1350 50  0000 C CNN
F 2 "" H 8650 1500 60  0000 C CNN
F 3 "" H 8650 1500 60  0000 C CNN
	1    8650 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR064
U 1 1 566617E0
P 7100 2600
F 0 "#PWR064" H 7100 2350 50  0001 C CNN
F 1 "GND" H 7100 2450 50  0000 C CNN
F 2 "" H 7100 2600 60  0000 C CNN
F 3 "" H 7100 2600 60  0000 C CNN
	1    7100 2600
	1    0    0    -1  
$EndComp
Text HLabel 8500 2050 2    60   Input ~ 0
NMEAOUT2_EN
Text HLabel 6500 1250 0    60   Input ~ 0
NMEAOUT1_EN
Text HLabel 6500 1900 0    60   Input ~ 0
SER1_RX
$Comp
L R R14
U 1 1 5667A3BB
P 7450 1250
F 0 "R14" V 7530 1250 50  0000 C CNN
F 1 "10k" V 7450 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7380 1250 30  0001 C CNN
F 3 "" H 7450 1250 30  0000 C CNN
	1    7450 1250
	0    -1   -1   0   
$EndComp
$Comp
L R R23
U 1 1 5667AC61
P 8100 1250
F 0 "R23" V 8180 1250 50  0000 C CNN
F 1 "10k" V 8100 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8030 1250 30  0001 C CNN
F 3 "" H 8100 1250 30  0000 C CNN
	1    8100 1250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR065
U 1 1 5667B0C5
P 7800 1300
F 0 "#PWR065" H 7800 1050 50  0001 C CNN
F 1 "GND" H 7800 1150 50  0000 C CNN
F 2 "" H 7800 1300 60  0000 C CNN
F 3 "" H 7800 1300 60  0000 C CNN
	1    7800 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5500 2600 5500
Wire Wire Line
	2900 5500 3600 5500
Connection ~ 3000 5500
Wire Wire Line
	3250 5500 3250 5550
Connection ~ 3250 5500
Wire Wire Line
	3250 5750 3250 5850
Wire Wire Line
	3450 5500 3450 5550
Connection ~ 3450 5500
Wire Wire Line
	3450 5850 3450 5750
Wire Wire Line
	3000 5800 3000 5850
Wire Wire Line
	3000 5850 3450 5850
Connection ~ 3250 5850
Wire Wire Line
	3300 2050 3350 2050
Wire Wire Line
	3350 2050 3350 2250
Wire Wire Line
	3500 2250 3500 2200
Wire Wire Line
	2350 1750 2500 1750
Wire Wire Line
	2350 2050 2500 2050
Wire Wire Line
	2500 1850 1900 1850
Wire Wire Line
	1900 1850 1900 2150
Wire Wire Line
	2500 1950 1600 1950
Wire Wire Line
	1600 1700 1600 2000
Wire Wire Line
	3350 1750 3300 1750
Wire Wire Line
	3350 2250 3500 2250
Wire Wire Line
	3400 2300 3400 2250
Connection ~ 3400 2250
Wire Wire Line
	3400 2500 3400 2550
Wire Wire Line
	1600 2200 1600 2250
Connection ~ 1600 1950
Wire Wire Line
	1700 6100 2600 6100
Wire Wire Line
	2900 6100 3600 6100
Connection ~ 3000 6100
Wire Wire Line
	3250 6100 3250 6150
Connection ~ 3250 6100
Wire Wire Line
	3250 6350 3250 6450
Wire Wire Line
	3450 6100 3450 6150
Connection ~ 3450 6100
Wire Wire Line
	3450 6450 3450 6350
Wire Wire Line
	3000 6400 3000 6450
Wire Wire Line
	3000 6450 3450 6450
Connection ~ 3250 6450
Wire Wire Line
	2400 6700 2600 6700
Wire Wire Line
	2900 6700 3600 6700
Connection ~ 3000 6700
Wire Wire Line
	3250 6700 3250 6750
Connection ~ 3250 6700
Wire Wire Line
	3250 6950 3250 7050
Wire Wire Line
	3450 6700 3450 6750
Connection ~ 3450 6700
Wire Wire Line
	3450 7050 3450 6950
Wire Wire Line
	3000 7000 3000 7050
Wire Wire Line
	3000 7050 3450 7050
Connection ~ 3250 7050
Wire Wire Line
	2400 6000 2400 5500
Wire Wire Line
	1700 6200 2400 6200
Wire Wire Line
	2400 6200 2400 6700
Wire Wire Line
	2750 4750 2250 4750
Wire Wire Line
	2250 4750 2250 5100
Wire Wire Line
	2450 4850 2750 4850
Wire Wire Line
	2700 4850 2700 4400
Wire Wire Line
	3650 4550 3750 4550
Wire Wire Line
	3750 4550 3750 4650
Wire Wire Line
	3750 4650 3650 4650
Wire Wire Line
	3750 4600 4500 4600
Wire Wire Line
	4500 4600 4500 5000
Connection ~ 3750 4600
Connection ~ 2700 4850
Wire Wire Line
	2450 5050 2250 5050
Connection ~ 2250 5050
Wire Wire Line
	8450 1700 8250 1700
Wire Wire Line
	8450 1100 8450 1700
Wire Wire Line
	8450 1200 8650 1200
Wire Wire Line
	8650 1200 8650 1250
Connection ~ 8450 1200
Wire Wire Line
	8650 1450 8650 1500
Wire Wire Line
	7350 2400 7100 2400
Wire Wire Line
	7100 2400 7100 2600
Wire Wire Line
	8250 2100 8400 2100
Wire Wire Line
	6500 2200 7350 2200
Wire Wire Line
	6500 2300 7350 2300
Wire Wire Line
	6500 1800 7350 1800
Wire Wire Line
	6500 1700 7350 1700
Wire Wire Line
	6500 1900 7350 1900
Wire Wire Line
	6500 1250 7300 1250
Wire Wire Line
	7200 1250 7200 2000
Wire Wire Line
	7200 2000 7350 2000
Wire Wire Line
	6550 2100 7350 2100
Wire Wire Line
	8250 2400 8500 2400
Wire Wire Line
	8250 2300 8500 2300
Wire Wire Line
	8250 2200 8500 2200
Wire Wire Line
	8250 2000 8500 2000
Wire Wire Line
	8350 2100 8350 1250
Wire Wire Line
	8350 1250 8250 1250
Connection ~ 8350 2100
Connection ~ 7200 1250
Wire Wire Line
	7600 1250 7950 1250
Wire Wire Line
	7800 1250 7800 1300
Connection ~ 7800 1250
$Comp
L CONN_01X20 P1
U 1 1 566AE4E8
P 9350 4750
F 0 "P1" H 9350 5800 50  0000 C CNN
F 1 "CONN_01X20" V 9450 4750 50  0000 C CNN
F 2 "bb:TerminalBlock_Pheonix_PT-3.5mm_20pol" H 9350 4750 60  0001 C CNN
F 3 "" H 9350 4750 60  0000 C CNN
	1    9350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1850 3400 1850
Wire Wire Line
	3300 1950 3400 1950
Text Label 3400 1950 0    60   ~ 0
CAN-
Text Label 3400 1850 0    60   ~ 0
CAN+
Wire Wire Line
	1700 6000 2400 6000
Text Label 1650 4550 2    60   ~ 0
SHUNT+
Text Label 1650 4650 2    60   ~ 0
SHUNT-
Text Label 1700 6200 2    60   ~ 0
12V_1
Text Label 1700 6100 2    60   ~ 0
12V_2
Text Label 1700 6000 2    60   ~ 0
12V_3
Wire Wire Line
	8250 1900 8500 1900
Text Label 6500 1700 2    60   ~ 0
NMEA_IN1+
Text Label 6500 1800 2    60   ~ 0
NMEA_IN1-
Text Label 6500 2300 2    60   ~ 0
NMEA_IN2+
Text Label 6500 2200 2    60   ~ 0
NMEA_IN2-
Text Label 8500 2000 0    60   ~ 0
NMEA_OUT1+
Text Label 8500 1900 0    60   ~ 0
NMEA_OUT1-
Text Label 8500 2300 0    60   ~ 0
NMEA_OUT2-
Text Label 8500 2200 0    60   ~ 0
NMEA_OUT2+
Wire Wire Line
	8500 1750 8400 1750
Wire Wire Line
	8400 1750 8400 1800
Wire Wire Line
	8400 1800 8250 1800
Wire Wire Line
	8500 2050 8400 2050
Wire Wire Line
	8400 2050 8400 2100
Wire Wire Line
	7900 3900 9150 3900
Wire Wire Line
	8250 3900 8250 3800
Wire Wire Line
	7900 3850 7900 3900
Connection ~ 8250 3900
Text Label 9150 4100 2    60   ~ 0
CAN+
Text Label 9150 4000 2    60   ~ 0
CAN-
Text Label 9150 4300 2    60   ~ 0
NMEA_IN1+
Text Label 9150 4200 2    60   ~ 0
NMEA_IN1-
Text Label 9150 4500 2    60   ~ 0
NMEA_IN2+
Text Label 9150 4400 2    60   ~ 0
NMEA_IN2-
Text Label 9150 4800 2    60   ~ 0
NMEA_OUT1+
Text Label 9150 4700 2    60   ~ 0
NMEA_OUT1-
Text Label 9150 5100 2    60   ~ 0
NMEA_OUT2+
Text Label 9150 5000 2    60   ~ 0
NMEA_OUT2-
Text Label 9150 5300 2    60   ~ 0
12V_1
Text Label 9150 5400 2    60   ~ 0
12V_2
Text Label 9150 5500 2    60   ~ 0
12V_3
Text Label 9150 5700 2    60   ~ 0
SHUNT-
Text Label 9150 5600 2    60   ~ 0
SHUNT+
NoConn ~ 9150 5200
Wire Wire Line
	9150 4600 8450 4600
Wire Wire Line
	8450 4900 9150 4900
Wire Wire Line
	8450 3800 8450 5800
Connection ~ 8450 4600
Connection ~ 8450 4900
$Comp
L GND #PWR066
U 1 1 566C9EC9
P 8450 5800
F 0 "#PWR066" H 8450 5550 50  0001 C CNN
F 1 "GND" H 8450 5650 50  0000 C CNN
F 2 "" H 8450 5800 60  0000 C CNN
F 3 "" H 8450 5800 60  0000 C CNN
	1    8450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3800 8450 3800
Wire Wire Line
	6500 2050 6550 2050
Wire Wire Line
	3350 1750 3350 1650
Wire Wire Line
	3350 1650 3450 1650
Text Notes 7500 2950 0    60   ~ 0
Note: NMEA_IN1+ goes to B, NMEA_IN1- goes to A, etc.\nThat is because + greater than - is defined as a "0" in the EIA422 spec, \nand so we want a 0 on the corresponding 3.3V serial line.
Text Notes 3000 4300 0    60   ~ 0
I2C Address: 0x40
$Comp
L R R25
U 1 1 56A28792
P 2100 4550
F 0 "R25" V 2180 4550 50  0000 C CNN
F 1 "10" V 2100 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2030 4550 50  0001 C CNN
F 3 "" H 2100 4550 50  0000 C CNN
	1    2100 4550
	0    1    -1   0   
$EndComp
$Comp
L R R26
U 1 1 56A28825
P 2100 4650
F 0 "R26" V 2180 4650 50  0000 C CNN
F 1 "10" V 2100 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2030 4650 50  0001 C CNN
F 3 "" H 2100 4650 50  0000 C CNN
	1    2100 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 4550 1950 4550
Wire Wire Line
	2250 4550 2750 4550
Wire Wire Line
	2750 4650 2250 4650
Wire Wire Line
	1950 4650 1650 4650
Wire Wire Line
	6550 2050 6550 2100
$EndSCHEMATC
