EESchema Schematic File Version 2
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
LIBS:Arduino_shield-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L CONN_01X02 J2
U 1 1 592861BA
P 3053 1760
F 0 "J2" H 3053 1910 50  0000 C CNN
F 1 "DC-motor_L" V 3153 1760 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 3053 1760 50  0001 C CNN
F 3 "" H 3053 1760 50  0001 C CNN
	1    3053 1760
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 J5
U 1 1 59287D89
P 8388 5483
F 0 "J5" H 8388 5683 50  0000 C CNN
F 1 "SERVO" V 8488 5483 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 8388 5483 50  0001 C CNN
F 3 "" H 8388 5483 50  0001 C CNN
	1    8388 5483
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 592BCA33
P 5698 5451
F 0 "J1" H 5698 5651 50  0000 C CNN
F 1 "DC_MOTOR_PWR" V 5798 5451 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 5698 5451 50  0001 C CNN
F 3 "" H 5698 5451 50  0001 C CNN
	1    5698 5451
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J4
U 1 1 592BF54B
P 7841 5481
F 0 "J4" H 7841 5731 50  0000 C CNN
F 1 "SENSOR" V 7941 5481 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.54mm" H 7841 5481 50  0001 C CNN
F 3 "" H 7841 5481 50  0001 C CNN
	1    7841 5481
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 J3
U 1 1 592843D3
P 3053 2368
F 0 "J3" H 3053 2518 50  0000 C CNN
F 1 "DC-motor_R" V 3153 2368 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 3053 2368 50  0001 C CNN
F 3 "" H 3053 2368 50  0001 C CNN
	1    3053 2368
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 J6
U 1 1 5A33A933
P 9093 5481
F 0 "J6" H 9093 5731 50  0000 C CNN
F 1 "Bluetooth_module" V 9193 5481 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.54mm" H 9093 5481 50  0001 C CNN
F 3 "" H 9093 5481 50  0001 C CNN
	1    9093 5481
	0    -1   1    0   
$EndComp
$Comp
L Half-bridge U1
U 1 1 5A5DFDD5
P 6184 3110
F 0 "U1" H 5584 4710 60  0000 C CNN
F 1 "Half-bridge" H 5634 2910 60  0000 C CNN
F 2 "hdmi:Half-bridge" H 6184 3110 60  0001 C CNN
F 3 "" H 6184 3110 60  0001 C CNN
	1    6184 3110
	1    0    0    -1  
$EndComp
$Comp
L ardushield M1
U 1 1 592D12B2
P 9129 2275
F 0 "M1" H 9264 3291 60  0000 C CNN
F 1 "ardushield" H 9185 833 60  0000 C CNN
F 2 "Connectors:Ardushield" H 9129 2275 60  0001 C CNN
F 3 "" H 9129 2275 60  0001 C CNN
	1    9129 2275
	-1   0    0    1   
$EndComp
$Comp
L R_Small R1
U 1 1 5B275C2F
P 9754 5386
F 0 "R1" H 9784 5406 50  0000 L CNN
F 1 "R_Small" H 9784 5346 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 9754 5386 50  0001 C CNN
F 3 "" H 9754 5386 50  0001 C CNN
	1    9754 5386
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5B275C76
P 9754 5739
F 0 "R2" H 9614 5705 50  0000 L CNN
F 1 "R_Small" H 9411 5790 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 9754 5739 50  0001 C CNN
F 3 "" H 9754 5739 50  0001 C CNN
	1    9754 5739
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x02 A1
U 1 1 5B2766A5
P 6306 5443
F 0 "A1" H 6306 5643 50  0000 C CNN
F 1 "ARDU_PWR" V 6406 5443 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 6306 5443 50  0001 C CNN
F 3 "" H 6306 5443 50  0001 C CNN
	1    6306 5443
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 5B324573
P 4984 2410
F 0 "#PWR01" H 4984 2160 50  0001 C CNN
F 1 "GND" H 4984 2260 50  0000 C CNN
F 2 "" H 4984 2410 50  0001 C CNN
F 3 "" H 4984 2410 50  0001 C CNN
	1    4984 2410
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B3246CF
P 6184 3110
F 0 "#PWR02" H 6184 2860 50  0001 C CNN
F 1 "GND" H 6184 2960 50  0000 C CNN
F 2 "" H 6184 3110 50  0001 C CNN
F 3 "" H 6184 3110 50  0001 C CNN
	1    6184 3110
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5B324753
P 6184 1710
F 0 "#PWR03" H 6184 1460 50  0001 C CNN
F 1 "GND" H 6184 1560 50  0000 C CNN
F 2 "" H 6184 1710 50  0001 C CNN
F 3 "" H 6184 1710 50  0001 C CNN
	1    6184 1710
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5B324871
P 8455 1890
F 0 "#PWR04" H 8455 1640 50  0001 C CNN
F 1 "GND" H 8455 1740 50  0000 C CNN
F 2 "" H 8455 1890 50  0001 C CNN
F 3 "" H 8455 1890 50  0001 C CNN
	1    8455 1890
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5B324AC8
P 8455 1765
F 0 "#PWR05" H 8455 1515 50  0001 C CNN
F 1 "GND" H 8455 1615 50  0000 C CNN
F 2 "" H 8455 1765 50  0001 C CNN
F 3 "" H 8455 1765 50  0001 C CNN
	1    8455 1765
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 5B324B20
P 9661 1365
F 0 "#PWR06" H 9661 1115 50  0001 C CNN
F 1 "GND" H 9661 1215 50  0000 C CNN
F 2 "" H 9661 1365 50  0001 C CNN
F 3 "" H 9661 1365 50  0001 C CNN
	1    9661 1365
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 5B324C33
P 9043 5281
F 0 "#PWR07" H 9043 5031 50  0001 C CNN
F 1 "GND" H 9043 5131 50  0000 C CNN
F 2 "" H 9043 5281 50  0001 C CNN
F 3 "" H 9043 5281 50  0001 C CNN
	1    9043 5281
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 5B324CB7
P 8288 5283
F 0 "#PWR08" H 8288 5033 50  0001 C CNN
F 1 "GND" H 8288 5133 50  0000 C CNN
F 2 "" H 8288 5283 50  0001 C CNN
F 3 "" H 8288 5283 50  0001 C CNN
	1    8288 5283
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 5B324D3B
P 7991 5281
F 0 "#PWR09" H 7991 5031 50  0001 C CNN
F 1 "GND" H 7991 5131 50  0000 C CNN
F 2 "" H 7991 5281 50  0001 C CNN
F 3 "" H 7991 5281 50  0001 C CNN
	1    7991 5281
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 5B324D93
P 9754 5839
F 0 "#PWR010" H 9754 5589 50  0001 C CNN
F 1 "GND" H 9754 5689 50  0000 C CNN
F 2 "" H 9754 5839 50  0001 C CNN
F 3 "" H 9754 5839 50  0001 C CNN
	1    9754 5839
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5B324F61
P 6306 5243
F 0 "#PWR011" H 6306 4993 50  0001 C CNN
F 1 "GND" H 6306 5093 50  0000 C CNN
F 2 "" H 6306 5243 50  0001 C CNN
F 3 "" H 6306 5243 50  0001 C CNN
	1    6306 5243
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 5B325150
P 5698 5251
F 0 "#PWR012" H 5698 5001 50  0001 C CNN
F 1 "GND" H 5698 5101 50  0000 C CNN
F 2 "" H 5698 5251 50  0001 C CNN
F 3 "" H 5698 5251 50  0001 C CNN
	1    5698 5251
	-1   0    0    1   
$EndComp
NoConn ~ 8455 3140
NoConn ~ 8455 3015
NoConn ~ 8455 2890
NoConn ~ 8455 2765
NoConn ~ 8455 2640
NoConn ~ 8455 2515
NoConn ~ 8455 1515
NoConn ~ 8455 1390
NoConn ~ 8455 1265
NoConn ~ 8455 1140
NoConn ~ 9661 990 
NoConn ~ 9661 1115
NoConn ~ 9661 1240
NoConn ~ 9655 2415
NoConn ~ 9655 2540
NoConn ~ 9655 2790
Wire Wire Line
	9243 5281 9244 5281
Wire Wire Line
	9244 5281 9244 5106
Wire Wire Line
	9799 3165 9655 3165
Wire Wire Line
	9143 5281 9143 5002
Wire Wire Line
	9754 5486 9754 5639
Wire Wire Line
	8488 5283 8488 5054
Wire Wire Line
	8488 5054 9868 5054
Wire Wire Line
	9868 5054 9868 2915
Wire Wire Line
	9868 2915 9655 2915
Wire Wire Line
	7891 5281 7891 4940
Wire Wire Line
	7891 4940 9936 4940
Wire Wire Line
	9936 4940 9936 2665
Wire Wire Line
	9936 2665 9655 2665
Wire Wire Line
	7791 5281 7791 4872
Wire Wire Line
	7791 4872 10009 4872
Wire Wire Line
	10009 4872 10009 2290
Wire Wire Line
	10009 2290 9655 2290
Wire Wire Line
	7691 1639 8455 1639
Wire Wire Line
	8455 1639 8455 1640
Wire Wire Line
	8388 4806 8388 5283
Wire Wire Line
	8943 4807 8943 5281
Wire Wire Line
	4984 1810 3253 1810
Wire Wire Line
	4984 3010 3996 3010
Wire Wire Line
	3996 3010 3996 2418
Wire Wire Line
	3996 2418 3253 2418
Wire Wire Line
	9661 2115 10086 2115
Wire Wire Line
	10086 2115 10086 4727
Wire Wire Line
	10160 4520 10160 1990
Wire Wire Line
	10160 1990 9661 1990
Wire Wire Line
	10242 4252 10242 1865
Wire Wire Line
	10242 1865 9661 1865
Wire Wire Line
	6432 3978 10320 3978
Wire Wire Line
	10320 3978 10320 1740
Wire Wire Line
	10320 1740 9661 1740
Wire Wire Line
	4496 3720 10393 3720
Wire Wire Line
	10393 3720 10393 1615
Wire Wire Line
	10393 1615 9661 1615
Wire Wire Line
	4696 3417 10477 3417
Wire Wire Line
	10477 3417 10477 1490
Wire Wire Line
	10477 1490 9661 1490
Wire Wire Line
	7691 5281 7691 1639
Wire Wire Line
	6184 2310 7691 2310
Wire Wire Line
	7691 2310 7691 2309
Connection ~ 7691 2309
Wire Wire Line
	8388 4806 8943 4806
Wire Wire Line
	8943 4806 8943 4808
Connection ~ 8943 4808
Wire Wire Line
	8389 4806 7691 4806
Wire Wire Line
	7691 4806 7691 4805
Connection ~ 7691 4805
Connection ~ 8389 4806
Wire Wire Line
	6184 1910 6450 1910
Wire Wire Line
	6450 1910 6450 1384
Wire Wire Line
	6450 1384 4912 1384
Wire Wire Line
	4912 1384 4912 1710
Wire Wire Line
	4912 1710 3253 1710
Wire Wire Line
	6184 2910 7474 2910
Wire Wire Line
	7474 2910 7474 5004
Wire Wire Line
	7474 5004 3754 5004
Wire Wire Line
	3754 5004 3754 2316
Wire Wire Line
	3754 2316 3253 2316
Wire Wire Line
	3253 2316 3253 2318
Wire Wire Line
	4920 2810 4920 4224
Wire Wire Line
	4920 2810 4984 2810
Wire Wire Line
	6206 5243 6206 5094
Wire Wire Line
	6206 5094 8000 5094
Wire Wire Line
	8000 5094 8000 2015
Wire Wire Line
	8000 2015 8455 2015
Wire Wire Line
	9754 3040 9655 3040
Wire Wire Line
	10086 4727 7244 4727
Wire Wire Line
	7244 4727 7244 2710
Wire Wire Line
	7244 2710 6184 2710
Wire Wire Line
	10160 4520 7000 4520
Wire Wire Line
	7000 4520 7000 2510
Wire Wire Line
	7000 2510 6184 2510
Wire Wire Line
	10242 4252 6757 4252
Wire Wire Line
	6757 4252 6757 2110
Wire Wire Line
	6757 2110 6184 2110
Wire Wire Line
	4696 3417 4696 2610
Wire Wire Line
	4696 2610 4984 2610
Wire Wire Line
	4496 3720 4496 2210
Wire Wire Line
	4496 2210 4984 2210
Wire Wire Line
	6433 3978 4208 3978
Wire Wire Line
	4208 3978 4208 2010
Wire Wire Line
	4208 2010 4984 2010
Connection ~ 6433 3978
Wire Wire Line
	5598 5251 5598 4224
Wire Wire Line
	5598 4224 4920 4224
Wire Wire Line
	9143 5002 9799 5002
Wire Wire Line
	9799 5002 9799 3165
Wire Wire Line
	9754 5286 9754 3040
Wire Wire Line
	9754 5563 9523 5563
Wire Wire Line
	9523 5563 9523 5107
Wire Wire Line
	9523 5107 9244 5107
Connection ~ 9244 5107
Connection ~ 9754 5563
$EndSCHEMATC
