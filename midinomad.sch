EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MIDI Nomad"
Date "2020-03-31"
Rev "4"
Comp "krpec - dittrich.r@gmail.com"
Comment1 "Untested."
Comment2 ""
Comment3 ""
Comment4 "Partially inspired by HappySwitch - happyswitch.it"
$EndDescr
$Comp
L Connector:DIN-8 J4
U 1 1 5E7C7CED
P 10100 1200
F 0 "J4" H 10100 800 50  0000 C CNN
F 1 "DIN-8" H 10100 600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 10100 1200 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 10100 1200 50  0001 C CNN
F 4 "Nomad 100" H 10100 700 50  0000 C CNN "Note"
	1    10100 1200
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5E7CDAC3
P 6550 5100
F 0 "A1" H 6550 4011 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 6550 3920 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6550 5100 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 6550 5100 50  0001 C CNN
	1    6550 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR05
U 1 1 5E7F6EDF
P 6550 6400
F 0 "#PWR05" H 6550 6150 50  0001 C CNN
F 1 "GNDREF" H 6555 6227 50  0000 C CNN
F 2 "" H 6550 6400 50  0001 C CNN
F 3 "" H 6550 6400 50  0001 C CNN
	1    6550 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6100 6550 6150
Wire Wire Line
	6550 6150 6650 6150
Wire Wire Line
	6650 6150 6650 6100
Connection ~ 6550 6150
Wire Wire Line
	6550 6150 6550 6400
Text GLabel 6450 4100 1    50   Input ~ 0
+5V
Text GLabel 5450 4500 0    50   Input ~ 0
Rx
Text GLabel 6050 4900 0    50   Output ~ 0
Arduino_D4
Text GLabel 6050 5000 0    50   Output ~ 0
Arduino_D5
NoConn ~ 7050 5700
NoConn ~ 7050 5800
NoConn ~ 7050 4900
NoConn ~ 10100 1500
Text GLabel 6050 5100 0    50   Output ~ 0
Arduino_D6
Text GLabel 1200 5400 0    50   Input ~ 0
Arduino_D4
$Comp
L Device:R R4
U 1 1 5E858A5D
P 1500 4900
F 0 "R4" H 1570 4946 50  0000 L CNN
F 1 "10k" H 1570 4855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1430 4900 50  0001 C CNN
F 3 "~" H 1500 4900 50  0001 C CNN
	1    1500 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5E859217
P 1900 4900
F 0 "R7" H 1970 4946 50  0000 L CNN
F 1 "220R" H 1970 4855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 4900 50  0001 C CNN
F 3 "~" H 1900 4900 50  0001 C CNN
	1    1900 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5E859915
P 1900 5200
F 0 "D2" V 1939 5083 50  0000 R CNN
F 1 "LED" V 1848 5083 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1900 5200 50  0001 C CNN
F 3 "~" H 1900 5200 50  0001 C CNN
	1    1900 5200
	0    -1   -1   0   
$EndComp
Text GLabel 1500 4750 1    50   Input ~ 0
+5V
Text GLabel 1900 4750 1    50   Input ~ 0
+5V
Wire Wire Line
	1200 5400 1500 5400
Wire Wire Line
	1900 5400 1900 5350
Wire Wire Line
	1500 5050 1500 5400
Connection ~ 1500 5400
Wire Wire Line
	1500 5400 1900 5400
Text GLabel 2250 5400 2    50   Output ~ 0
MESA_SWA_(SOLO)
Wire Wire Line
	2250 5400 1900 5400
Connection ~ 1900 5400
Text GLabel 1200 5550 0    50   Input ~ 0
Arduino_D5
$Comp
L Device:R R5
U 1 1 5E85DD9C
P 1500 5850
F 0 "R5" H 1570 5896 50  0000 L CNN
F 1 "10k" H 1570 5805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1430 5850 50  0001 C CNN
F 3 "~" H 1500 5850 50  0001 C CNN
	1    1500 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E860A60
P 1900 5850
F 0 "R8" H 1970 5896 50  0000 L CNN
F 1 "220R" H 1970 5805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 5850 50  0001 C CNN
F 3 "~" H 1900 5850 50  0001 C CNN
	1    1900 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5E860DCF
P 1900 6150
F 0 "D3" V 1939 6033 50  0000 R CNN
F 1 "LED" V 1848 6033 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1900 6150 50  0001 C CNN
F 3 "~" H 1900 6150 50  0001 C CNN
	1    1900 6150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 5700 1500 5550
Wire Wire Line
	1500 5550 1200 5550
Wire Wire Line
	1500 5550 1900 5550
Wire Wire Line
	1900 5550 1900 5700
Connection ~ 1500 5550
Text GLabel 2250 5550 2    50   Output ~ 0
MESA_SWB_(REV)
Wire Wire Line
	1900 5550 2250 5550
Connection ~ 1900 5550
$Comp
L power:GNDREF #PWR02
U 1 1 5E86383D
P 1900 6300
F 0 "#PWR02" H 1900 6050 50  0001 C CNN
F 1 "GNDREF" H 1905 6127 50  0000 C CNN
F 2 "" H 1900 6300 50  0001 C CNN
F 3 "" H 1900 6300 50  0001 C CNN
	1    1900 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR01
U 1 1 5E8639DB
P 1500 6300
F 0 "#PWR01" H 1500 6050 50  0001 C CNN
F 1 "GNDREF" H 1505 6127 50  0000 C CNN
F 2 "" H 1500 6300 50  0001 C CNN
F 3 "" H 1500 6300 50  0001 C CNN
	1    1500 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6300 1500 6000
Text GLabel 1200 7500 0    50   Input ~ 0
Arduino_D6
$Comp
L Device:R R6
U 1 1 5E867E1A
P 1500 7000
F 0 "R6" H 1570 7046 50  0000 L CNN
F 1 "10k" H 1570 6955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1430 7000 50  0001 C CNN
F 3 "~" H 1500 7000 50  0001 C CNN
	1    1500 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5E867E20
P 1900 7000
F 0 "R9" H 1970 7046 50  0000 L CNN
F 1 "220R" H 1970 6955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 7000 50  0001 C CNN
F 3 "~" H 1900 7000 50  0001 C CNN
	1    1900 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5E867E26
P 1900 7300
F 0 "D4" V 1939 7183 50  0000 R CNN
F 1 "LED" V 1848 7183 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1900 7300 50  0001 C CNN
F 3 "~" H 1900 7300 50  0001 C CNN
	1    1900 7300
	0    -1   -1   0   
$EndComp
Text GLabel 1500 6850 1    50   Input ~ 0
+5V
Text GLabel 1900 6850 1    50   Input ~ 0
+5V
Wire Wire Line
	1200 7500 1500 7500
Wire Wire Line
	1900 7500 1900 7450
Wire Wire Line
	1500 7150 1500 7500
Connection ~ 1500 7500
Wire Wire Line
	1500 7500 1900 7500
Text GLabel 2250 7500 2    50   Output ~ 0
MESA_SWC_(EQ)
Wire Wire Line
	2250 7500 1900 7500
Connection ~ 1900 7500
$Comp
L Connector:DIN-5_180degree J3
U 1 1 5E86B2C8
P 8050 1200
F 0 "J3" H 8050 925 50  0000 C CNN
F 1 "DIN-5_180degree" H 8050 750 50  0000 C CNN
F 2 "w_conn_av:din-5" H 8050 1200 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 8050 1200 50  0001 C CNN
F 4 "Nomad 45, 55" H 8050 850 50  0000 C CNN "Note"
	1    8050 1200
	1    0    0    -1  
$EndComp
Text GLabel 7750 1200 0    50   Output ~ 0
-3V
Text GLabel 8050 900  1    50   Output ~ 0
+2V
Text GLabel 8350 1200 2    50   Input ~ 0
MESA_VCH
Text GLabel 7750 1100 0    50   Input ~ 0
MESA_SWB_(REV)
Text GLabel 8350 1100 2    50   Input ~ 0
MESA_SWA_(SOLO)
Text GLabel 6050 5200 0    50   Output ~ 0
Arduino_D7
Text GLabel 6050 4700 0    50   Output ~ 0
Arduino_D2
Text GLabel 6050 4800 0    50   Output ~ 0
Arduino_D3
$Comp
L Device:Jumper JP1
U 1 1 5E944A1A
P 5750 4500
F 0 "JP1" H 5750 4764 50  0000 C CNN
F 1 "Jumper" H 5750 4673 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5750 4500 50  0001 C CNN
F 3 "~" H 5750 4500 50  0001 C CNN
	1    5750 4500
	1    0    0    -1  
$EndComp
Text GLabel 6050 5300 0    50   Output ~ 0
Arduino_D8
Text GLabel 6050 5400 0    50   Output ~ 0
Arduino_D9
Text GLabel 3800 5400 0    50   Input ~ 0
Arduino_D7
$Comp
L Device:R R10
U 1 1 5E953307
P 3950 5550
F 0 "R10" H 3880 5504 50  0000 R CNN
F 1 "10k" H 3880 5595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3880 5550 50  0001 C CNN
F 3 "~" H 3950 5550 50  0001 C CNN
	1    3950 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5E953A52
P 4250 5400
F 0 "R13" V 4043 5400 50  0000 C CNN
F 1 "220R" V 4134 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4180 5400 50  0001 C CNN
F 3 "~" H 4250 5400 50  0001 C CNN
	1    4250 5400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5E953EFF
P 4550 5400
F 0 "D5" H 4543 5145 50  0000 C CNN
F 1 "LED" H 4543 5236 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4550 5400 50  0001 C CNN
F 3 "~" H 4550 5400 50  0001 C CNN
	1    4550 5400
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR09
U 1 1 5E95DE8D
P 4700 5400
F 0 "#PWR09" H 4700 5150 50  0001 C CNN
F 1 "GNDREF" H 4705 5227 50  0000 C CNN
F 2 "" H 4700 5400 50  0001 C CNN
F 3 "" H 4700 5400 50  0001 C CNN
	1    4700 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5400 3950 5400
Connection ~ 3950 5400
Wire Wire Line
	3950 5400 4100 5400
$Comp
L power:GNDREF #PWR06
U 1 1 5E95F3BC
P 3950 5700
F 0 "#PWR06" H 3950 5450 50  0001 C CNN
F 1 "GNDREF" H 3955 5527 50  0000 C CNN
F 2 "" H 3950 5700 50  0001 C CNN
F 3 "" H 3950 5700 50  0001 C CNN
	1    3950 5700
	1    0    0    -1  
$EndComp
Text GLabel 3800 6250 0    50   Input ~ 0
Arduino_D8
$Comp
L Device:R R11
U 1 1 5E963E48
P 3950 6400
F 0 "R11" H 3880 6354 50  0000 R CNN
F 1 "10k" H 3880 6445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3880 6400 50  0001 C CNN
F 3 "~" H 3950 6400 50  0001 C CNN
	1    3950 6400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5E963E4E
P 4250 6250
F 0 "R14" V 4043 6250 50  0000 C CNN
F 1 "220R" V 4134 6250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4180 6250 50  0001 C CNN
F 3 "~" H 4250 6250 50  0001 C CNN
	1    4250 6250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5E963E54
P 4550 6250
F 0 "D6" H 4543 5995 50  0000 C CNN
F 1 "LED" H 4543 6086 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4550 6250 50  0001 C CNN
F 3 "~" H 4550 6250 50  0001 C CNN
	1    4550 6250
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR010
U 1 1 5E963E5A
P 4700 6250
F 0 "#PWR010" H 4700 6000 50  0001 C CNN
F 1 "GNDREF" H 4705 6077 50  0000 C CNN
F 2 "" H 4700 6250 50  0001 C CNN
F 3 "" H 4700 6250 50  0001 C CNN
	1    4700 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 6250 3950 6250
Connection ~ 3950 6250
Wire Wire Line
	3950 6250 4100 6250
$Comp
L power:GNDREF #PWR07
U 1 1 5E963E63
P 3950 6550
F 0 "#PWR07" H 3950 6300 50  0001 C CNN
F 1 "GNDREF" H 3955 6377 50  0000 C CNN
F 2 "" H 3950 6550 50  0001 C CNN
F 3 "" H 3950 6550 50  0001 C CNN
	1    3950 6550
	1    0    0    -1  
$EndComp
Text GLabel 3800 7050 0    50   Input ~ 0
Arduino_D9
$Comp
L Device:R R12
U 1 1 5E9685C4
P 3950 7200
F 0 "R12" H 3880 7154 50  0000 R CNN
F 1 "10k" H 3880 7245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3880 7200 50  0001 C CNN
F 3 "~" H 3950 7200 50  0001 C CNN
	1    3950 7200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5E9685CA
P 4250 7050
F 0 "R15" V 4043 7050 50  0000 C CNN
F 1 "220R" V 4134 7050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4180 7050 50  0001 C CNN
F 3 "~" H 4250 7050 50  0001 C CNN
	1    4250 7050
	0    1    1    0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5E9685D0
P 4550 7050
F 0 "D7" H 4543 6795 50  0000 C CNN
F 1 "LED" H 4543 6886 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 4550 7050 50  0001 C CNN
F 3 "~" H 4550 7050 50  0001 C CNN
	1    4550 7050
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR011
U 1 1 5E9685D6
P 4700 7050
F 0 "#PWR011" H 4700 6800 50  0001 C CNN
F 1 "GNDREF" H 4705 6877 50  0000 C CNN
F 2 "" H 4700 7050 50  0001 C CNN
F 3 "" H 4700 7050 50  0001 C CNN
	1    4700 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7050 3950 7050
Connection ~ 3950 7050
Wire Wire Line
	3950 7050 4100 7050
$Comp
L power:GNDREF #PWR08
U 1 1 5E9685DF
P 3950 7350
F 0 "#PWR08" H 3950 7100 50  0001 C CNN
F 1 "GNDREF" H 3955 7177 50  0000 C CNN
F 2 "" H 3950 7350 50  0001 C CNN
F 3 "" H 3950 7350 50  0001 C CNN
	1    3950 7350
	1    0    0    -1  
$EndComp
Text GLabel 6050 5500 0    50   Output ~ 0
Arduino_D10
Text GLabel 6050 5600 0    50   Output ~ 0
Arduino_D11
Text GLabel 6050 5700 0    50   Output ~ 0
Arduino_D12
Text GLabel 8450 4550 0    50   Input ~ 0
Arduino_D10
$Comp
L Device:R R19
U 1 1 5E9865DF
P 8700 4300
F 0 "R19" H 8770 4346 50  0000 L CNN
F 1 "10k" H 8770 4255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8630 4300 50  0001 C CNN
F 3 "~" H 8700 4300 50  0001 C CNN
	1    8700 4300
	1    0    0    -1  
$EndComp
Text GLabel 8700 4150 1    50   Input ~ 0
+5V
$Comp
L Switch:SW_Push SW1
U 1 1 5E9875B6
P 9150 4550
F 0 "SW1" H 9150 4835 50  0000 C CNN
F 1 "SW_Push" H 9150 4744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 9150 4750 50  0001 C CNN
F 3 "~" H 9150 4750 50  0001 C CNN
	1    9150 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR012
U 1 1 5E98CB37
P 9350 4550
F 0 "#PWR012" H 9350 4300 50  0001 C CNN
F 1 "GNDREF" H 9355 4377 50  0000 C CNN
F 2 "" H 9350 4550 50  0001 C CNN
F 3 "" H 9350 4550 50  0001 C CNN
	1    9350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4550 8700 4550
Wire Wire Line
	8700 4450 8700 4550
Connection ~ 8700 4550
Wire Wire Line
	8700 4550 8450 4550
Text GLabel 8450 5400 0    50   Input ~ 0
Arduino_D11
$Comp
L Device:R R20
U 1 1 5E991B78
P 8700 5150
F 0 "R20" H 8770 5196 50  0000 L CNN
F 1 "10k" H 8770 5105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8630 5150 50  0001 C CNN
F 3 "~" H 8700 5150 50  0001 C CNN
	1    8700 5150
	1    0    0    -1  
$EndComp
Text GLabel 8700 5000 1    50   Input ~ 0
+5V
$Comp
L Switch:SW_Push SW2
U 1 1 5E991B7F
P 9150 5400
F 0 "SW2" H 9150 5685 50  0000 C CNN
F 1 "SW_Push" H 9150 5594 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 9150 5600 50  0001 C CNN
F 3 "~" H 9150 5600 50  0001 C CNN
	1    9150 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR013
U 1 1 5E991B85
P 9350 5400
F 0 "#PWR013" H 9350 5150 50  0001 C CNN
F 1 "GNDREF" H 9355 5227 50  0000 C CNN
F 2 "" H 9350 5400 50  0001 C CNN
F 3 "" H 9350 5400 50  0001 C CNN
	1    9350 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5400 8700 5400
Wire Wire Line
	8700 5300 8700 5400
Connection ~ 8700 5400
Wire Wire Line
	8700 5400 8450 5400
Text GLabel 8450 6250 0    50   Input ~ 0
Arduino_D12
$Comp
L Device:R R21
U 1 1 5E993A8A
P 8700 6000
F 0 "R21" H 8770 6046 50  0000 L CNN
F 1 "10k" H 8770 5955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8630 6000 50  0001 C CNN
F 3 "~" H 8700 6000 50  0001 C CNN
	1    8700 6000
	1    0    0    -1  
$EndComp
Text GLabel 8700 5850 1    50   Input ~ 0
+5V
$Comp
L Switch:SW_Push SW3
U 1 1 5E993A91
P 9150 6250
F 0 "SW3" H 9150 6535 50  0000 C CNN
F 1 "SW_Push" H 9150 6444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 9150 6450 50  0001 C CNN
F 3 "~" H 9150 6450 50  0001 C CNN
	1    9150 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR014
U 1 1 5E993A97
P 9350 6250
F 0 "#PWR014" H 9350 6000 50  0001 C CNN
F 1 "GNDREF" H 9355 6077 50  0000 C CNN
F 2 "" H 9350 6250 50  0001 C CNN
F 3 "" H 9350 6250 50  0001 C CNN
	1    9350 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 6250 8700 6250
Wire Wire Line
	8700 6150 8700 6250
Connection ~ 8700 6250
Wire Wire Line
	8700 6250 8450 6250
Text GLabel 10050 4550 0    50   Input ~ 0
Arduino_A0
$Comp
L Device:R R22
U 1 1 5E9954EC
P 10300 4300
F 0 "R22" H 10370 4346 50  0000 L CNN
F 1 "10k" H 10370 4255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10230 4300 50  0001 C CNN
F 3 "~" H 10300 4300 50  0001 C CNN
	1    10300 4300
	1    0    0    -1  
$EndComp
Text GLabel 10300 4150 1    50   Input ~ 0
+5V
$Comp
L Switch:SW_Push SW4
U 1 1 5E9954F3
P 10750 4550
F 0 "SW4" H 10750 4835 50  0000 C CNN
F 1 "SW_Push" H 10750 4744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 10750 4750 50  0001 C CNN
F 3 "~" H 10750 4750 50  0001 C CNN
	1    10750 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR015
U 1 1 5E9954F9
P 10950 4550
F 0 "#PWR015" H 10950 4300 50  0001 C CNN
F 1 "GNDREF" H 10955 4377 50  0000 C CNN
F 2 "" H 10950 4550 50  0001 C CNN
F 3 "" H 10950 4550 50  0001 C CNN
	1    10950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 4550 10300 4550
Wire Wire Line
	10300 4450 10300 4550
Connection ~ 10300 4550
Wire Wire Line
	10300 4550 10050 4550
Text GLabel 10050 5400 0    50   Input ~ 0
Arduino_A1
$Comp
L Device:R R23
U 1 1 5E997889
P 10300 5150
F 0 "R23" H 10370 5196 50  0000 L CNN
F 1 "10k" H 10370 5105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10230 5150 50  0001 C CNN
F 3 "~" H 10300 5150 50  0001 C CNN
	1    10300 5150
	1    0    0    -1  
$EndComp
Text GLabel 10300 5000 1    50   Input ~ 0
+5V
$Comp
L Switch:SW_Push SW5
U 1 1 5E997890
P 10750 5400
F 0 "SW5" H 10750 5685 50  0000 C CNN
F 1 "SW_Push" H 10750 5594 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 10750 5600 50  0001 C CNN
F 3 "~" H 10750 5600 50  0001 C CNN
	1    10750 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR016
U 1 1 5E997896
P 10950 5400
F 0 "#PWR016" H 10950 5150 50  0001 C CNN
F 1 "GNDREF" H 10955 5227 50  0000 C CNN
F 2 "" H 10950 5400 50  0001 C CNN
F 3 "" H 10950 5400 50  0001 C CNN
	1    10950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 5400 10300 5400
Wire Wire Line
	10300 5300 10300 5400
Connection ~ 10300 5400
Wire Wire Line
	10300 5400 10050 5400
Text GLabel 10050 6250 0    50   Input ~ 0
Arduino_A2
$Comp
L Device:R R24
U 1 1 5E9C2684
P 10300 6000
F 0 "R24" H 10370 6046 50  0000 L CNN
F 1 "10k" H 10370 5955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10230 6000 50  0001 C CNN
F 3 "~" H 10300 6000 50  0001 C CNN
	1    10300 6000
	1    0    0    -1  
$EndComp
Text GLabel 10300 5850 1    50   Input ~ 0
+5V
$Comp
L Switch:SW_Push SW6
U 1 1 5E9C268B
P 10750 6250
F 0 "SW6" H 10750 6535 50  0000 C CNN
F 1 "SW_Push" H 10750 6444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 10750 6450 50  0001 C CNN
F 3 "~" H 10750 6450 50  0001 C CNN
	1    10750 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR017
U 1 1 5E9C2691
P 10950 6250
F 0 "#PWR017" H 10950 6000 50  0001 C CNN
F 1 "GNDREF" H 10955 6077 50  0000 C CNN
F 2 "" H 10950 6250 50  0001 C CNN
F 3 "" H 10950 6250 50  0001 C CNN
	1    10950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 6250 10300 6250
Wire Wire Line
	10300 6150 10300 6250
Connection ~ 10300 6250
Wire Wire Line
	10300 6250 10050 6250
Text GLabel 7050 5100 2    50   Output ~ 0
Arduino_A0
Text GLabel 7050 5200 2    50   Output ~ 0
Arduino_A1
Text GLabel 7050 5300 2    50   Output ~ 0
Arduino_A2
NoConn ~ 7050 5400
NoConn ~ 7050 5500
NoConn ~ 7050 5600
NoConn ~ 6650 4100
Text GLabel 9200 2300 2    50   Input ~ 0
Arduino_D2
Text GLabel 9200 2400 2    50   Input ~ 0
Arduino_D3
Text GLabel 9800 1300 0    50   Input ~ 0
MESA_SWC_(EQ)
Text GLabel 9800 1200 0    50   Output ~ 0
-3V
Text GLabel 9800 1100 0    50   Input ~ 0
MESA_SWB_(REV)
Text GLabel 10100 900  1    50   Output ~ 0
+2V
Text GLabel 10400 1100 2    50   Input ~ 0
MESA_SWA_(SOLO)
Text GLabel 10400 1200 2    50   Input ~ 0
MESA_VCH
NoConn ~ 10400 1300
$Comp
L Device:R R16
U 1 1 5E9A1EAF
P 10400 2450
F 0 "R16" V 10193 2450 50  0000 C CNN
F 1 "9k1" V 10284 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10330 2450 50  0001 C CNN
F 3 "~" H 10400 2450 50  0001 C CNN
	1    10400 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 5E9A28EB
P 10400 3100
F 0 "R17" H 10330 3054 50  0000 R CNN
F 1 "5k6" H 10330 3145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10330 3100 50  0001 C CNN
F 3 "~" H 10400 3100 50  0001 C CNN
	1    10400 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R18
U 1 1 5E9A3301
P 10800 3100
F 0 "R18" H 10730 3054 50  0000 R CNN
F 1 "2k7" H 10730 3145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10730 3100 50  0001 C CNN
F 3 "~" H 10800 3100 50  0001 C CNN
	1    10800 3100
	-1   0    0    1   
$EndComp
Text GLabel 10400 2300 1    50   Input ~ 0
+2V
Text GLabel 10400 3650 3    50   Input ~ 0
-3V
Text GLabel 9200 2800 2    50   Output ~ 0
MESA_VCH
NoConn ~ 6050 5800
Text GLabel 9200 2200 2    50   Input ~ 0
+5V
$Comp
L power:GNDREF #PWR0101
U 1 1 5EA2C615
P 9200 2500
F 0 "#PWR0101" H 9200 2250 50  0001 C CNN
F 1 "GNDREF" H 9205 2327 50  0000 C CNN
F 2 "" H 9200 2500 50  0001 C CNN
F 3 "" H 9200 2500 50  0001 C CNN
	1    9200 2500
	1    0    0    -1  
$EndComp
Text GLabel 8650 2200 0    50   Output ~ 0
Relay_Ucc
Text GLabel 8650 2300 0    50   Output ~ 0
Relay_In1
Text GLabel 8650 2400 0    50   Output ~ 0
Relay_In2
Text GLabel 8650 2800 0    50   Input ~ 0
Relay_COM1
Text GLabel 8650 2900 0    50   Output ~ 0
Relay_NC1
Text GLabel 8650 3000 0    50   Output ~ 0
Relay_NO1
Text GLabel 8650 3100 0    50   Output ~ 0
Relay_COM2
Text GLabel 8650 3200 0    50   Input ~ 0
Relay_NC2
Text GLabel 8650 3300 0    50   Input ~ 0
Relay_NO2
Text GLabel 8650 2500 0    50   Output ~ 0
Relay_GND
Wire Wire Line
	10400 3650 10400 3600
Wire Wire Line
	10400 2600 10400 2850
Wire Wire Line
	10800 2950 10800 2850
Wire Wire Line
	10800 2850 10400 2850
Connection ~ 10400 2850
Wire Wire Line
	10400 2850 10400 2950
NoConn ~ 9200 2900
Wire Wire Line
	9200 3000 9800 3000
Wire Wire Line
	9800 3000 9800 2850
Wire Wire Line
	9800 2850 10400 2850
NoConn ~ 9200 3300
Wire Wire Line
	9800 3100 9200 3100
Wire Wire Line
	9200 3200 9550 3200
Wire Wire Line
	9550 3200 9550 3600
Wire Wire Line
	9550 3600 10400 3600
Connection ~ 10400 3600
Wire Wire Line
	10400 3600 10400 3250
Wire Wire Line
	10800 3400 10800 3250
Wire Wire Line
	9800 3100 9800 3400
Wire Wire Line
	9800 3400 10800 3400
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5EB50DB8
P 2450 3500
F 0 "U2" H 2450 3742 50  0000 C CNN
F 1 "L7805" H 2450 3651 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2475 3350 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2450 3450 50  0001 C CNN
	1    2450 3500
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C1
U 1 1 5EB526FD
P 1800 3750
F 0 "C1" H 1978 3796 50  0000 L CNN
F 1 "0.33uF" H 1978 3705 50  0000 L CNN
F 2 "" H 1800 3750 50  0001 C CNN
F 3 "~" H 1800 3750 50  0001 C CNN
	1    1800 3750
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C2
U 1 1 5EB534B8
P 3050 3750
F 0 "C2" H 3228 3796 50  0000 L CNN
F 1 "0.1uF" H 3228 3705 50  0000 L CNN
F 2 "" H 3050 3750 50  0001 C CNN
F 3 "~" H 3050 3750 50  0001 C CNN
	1    3050 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Jack-DC J7
U 1 1 5EB4F955
P 1050 3600
F 0 "J7" H 1107 3925 50  0000 C CNN
F 1 "Jack-DC" H 1107 3834 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1100 3560 50  0001 C CNN
F 3 "~" H 1100 3560 50  0001 C CNN
	1    1050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3500 1800 3500
Connection ~ 1800 3500
Wire Wire Line
	1800 3500 2150 3500
Wire Wire Line
	1350 3700 1350 4000
Wire Wire Line
	1350 4000 1800 4000
Wire Wire Line
	1800 4000 2450 4000
Wire Wire Line
	2450 4000 2450 3800
Connection ~ 1800 4000
Wire Wire Line
	2750 3500 3050 3500
Wire Wire Line
	3050 4000 2450 4000
Connection ~ 2450 4000
Text GLabel 3400 3500 2    50   Output ~ 0
+5V
Wire Wire Line
	3050 3500 3400 3500
Connection ~ 3050 3500
$Comp
L power:GNDREF #PWR018
U 1 1 5EB7657B
P 2450 4000
F 0 "#PWR018" H 2450 3750 50  0001 C CNN
F 1 "GNDREF" H 2455 3827 50  0000 C CNN
F 2 "" H 2450 4000 50  0001 C CNN
F 3 "" H 2450 4000 50  0001 C CNN
	1    2450 4000
	1    0    0    -1  
$EndComp
Text GLabel 5450 4600 0    50   Output ~ 0
Tx
$Comp
L Device:Jumper JP2
U 1 1 5EC41C41
P 5750 4600
F 0 "JP2" H 5750 4864 50  0000 C CNN
F 1 "Jumper" H 5750 4773 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5750 4600 50  0001 C CNN
F 3 "~" H 5750 4600 50  0001 C CNN
	1    5750 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:DIN-5_180degree J1
U 1 1 5E7C6234
P 1250 1200
F 0 "J1" H 1250 925 50  0000 C CNN
F 1 "MIDI IN" H 1250 834 50  0000 C CNN
F 2 "w_conn_av:din-5" H 1250 1200 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 1250 1200 50  0001 C CNN
	1    1250 1200
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5E7D06A3
P 2200 1150
F 0 "D1" V 2154 1229 50  0000 L CNN
F 1 "1N4148" V 2245 1229 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2200 975 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2200 1150 50  0001 C CNN
	1    2200 1150
	0    1    1    0   
$EndComp
$Comp
L Isolator:6N138 U1
U 1 1 5E7D308B
P 3050 1200
F 0 "U1" H 3050 1667 50  0000 C CNN
F 1 "6N138" H 3050 1576 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3340 900 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 3340 900 50  0001 C CNN
	1    3050 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E7DA868
P 1950 800
F 0 "R1" V 1743 800 50  0000 C CNN
F 1 "220R" V 1834 800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1880 800 50  0001 C CNN
F 3 "~" H 1950 800 50  0001 C CNN
	1    1950 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	950  1100 950  800 
Wire Wire Line
	950  800  1800 800 
Wire Wire Line
	2100 800  2200 800 
Wire Wire Line
	2200 800  2200 1000
Wire Wire Line
	2750 1100 2750 800 
Wire Wire Line
	2750 800  2200 800 
Connection ~ 2200 800 
Wire Wire Line
	2750 1300 2200 1300
Wire Wire Line
	1550 1100 1800 1100
Wire Wire Line
	1800 1100 1800 1300
Wire Wire Line
	1800 1300 2200 1300
Connection ~ 2200 1300
$Comp
L Device:R R2
U 1 1 5E7EE9BB
P 4000 1150
F 0 "R2" H 4070 1196 50  0000 L CNN
F 1 "220R " H 4070 1105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3930 1150 50  0001 C CNN
F 3 "~" H 4000 1150 50  0001 C CNN
	1    4000 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E7F2ACA
P 3800 1550
F 0 "R3" H 3870 1596 50  0000 L CNN
F 1 "4k7" H 3870 1505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3730 1550 50  0001 C CNN
F 3 "~" H 3800 1550 50  0001 C CNN
	1    3800 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR03
U 1 1 5E7F88CD
P 3500 1850
F 0 "#PWR03" H 3500 1600 50  0001 C CNN
F 1 "GNDREF" H 3505 1677 50  0000 C CNN
F 2 "" H 3500 1850 50  0001 C CNN
F 3 "" H 3500 1850 50  0001 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR04
U 1 1 5E7F901E
P 3800 1850
F 0 "#PWR04" H 3800 1600 50  0001 C CNN
F 1 "GNDREF" H 3805 1677 50  0000 C CNN
F 2 "" H 3800 1850 50  0001 C CNN
F 3 "" H 3800 1850 50  0001 C CNN
	1    3800 1850
	1    0    0    -1  
$EndComp
Text GLabel 4000 800  1    50   Input ~ 0
+5V
Wire Wire Line
	4000 800  4000 1000
Connection ~ 4000 1000
Text GLabel 4150 1300 2    50   Output ~ 0
Rx
Wire Wire Line
	4150 1300 4000 1300
Connection ~ 4000 1300
Wire Wire Line
	3350 1000 4000 1000
Wire Wire Line
	3350 1300 4000 1300
Wire Wire Line
	3800 1850 3800 1700
Wire Wire Line
	3800 1400 3800 1100
Wire Wire Line
	3350 1100 3800 1100
Wire Wire Line
	3500 1400 3350 1400
Wire Wire Line
	3500 1400 3500 1850
NoConn ~ 1550 1200
NoConn ~ 950  1200
$Comp
L Connector:DIN-5_180degree J2
U 1 1 5EBF0780
P 1250 2450
F 0 "J2" H 1250 2175 50  0000 C CNN
F 1 "MIDI OUT" H 1250 2084 50  0000 C CNN
F 2 "w_conn_av:din-5" H 1250 2450 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 1250 2450 50  0001 C CNN
	1    1250 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 5EC35636
P 1950 2000
F 0 "R25" V 1743 2000 50  0000 C CNN
F 1 "220R" V 1834 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1880 2000 50  0001 C CNN
F 3 "~" H 1950 2000 50  0001 C CNN
	1    1950 2000
	0    1    1    0   
$EndComp
Text GLabel 2100 2000 2    50   Input ~ 0
+5V
Wire Wire Line
	1800 2000 950  2000
Wire Wire Line
	950  2000 950  2350
$Comp
L power:GNDREF #PWR019
U 1 1 5EC3C015
P 700 2200
F 0 "#PWR019" H 700 1950 50  0001 C CNN
F 1 "GNDREF" H 705 2027 50  0000 C CNN
F 2 "" H 700 2200 50  0001 C CNN
F 3 "" H 700 2200 50  0001 C CNN
	1    700  2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2150 700  2150
Wire Wire Line
	700  2150 700  2200
Text GLabel 1550 2350 2    50   Input ~ 0
Tx
Wire Notes Line
	550  2900 4300 2900
Wire Notes Line
	4300 2900 4300 550 
Wire Notes Line
	4300 550  550  550 
Wire Notes Line
	550  550  550  2900
Wire Notes Line
	550  3100 550  4250
Wire Notes Line
	550  4250 3700 4250
Wire Notes Line
	3700 4250 3700 3100
Wire Notes Line
	3700 3100 550  3100
Wire Notes Line
	7050 550  7050 1900
Wire Notes Line
	7050 1900 11150 1900
Wire Notes Line
	11150 1900 11150 550 
Wire Notes Line
	11150 550  7050 550 
$Comp
L Device:R R26
U 1 1 5E8C2E42
P 5850 1450
F 0 "R26" V 5643 1450 50  0001 C CNN
F 1 "9k1" V 5734 1450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5780 1450 50  0001 C CNN
F 3 "~" H 5850 1450 50  0001 C CNN
	1    5850 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R27
U 1 1 5E8C2E48
P 5850 2100
F 0 "R27" H 5780 2054 50  0001 R CNN
F 1 "5k6" H 5780 2145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5780 2100 50  0001 C CNN
F 3 "~" H 5850 2100 50  0001 C CNN
	1    5850 2100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R28
U 1 1 5E8C2E4E
P 6250 2100
F 0 "R28" H 6180 2054 50  0001 R CNN
F 1 "2k7" H 6180 2145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 2100 50  0001 C CNN
F 3 "~" H 6250 2100 50  0001 C CNN
	1    6250 2100
	-1   0    0    1   
$EndComp
Text GLabel 5850 1300 1    50   Input ~ 0
+2V
Text GLabel 5850 3050 3    50   Input ~ 0
-3V
Wire Wire Line
	5850 1600 5850 1850
Wire Wire Line
	6250 1950 6250 1850
Wire Wire Line
	6250 1850 5850 1850
Connection ~ 5850 1850
Wire Wire Line
	5850 1850 5850 1950
Wire Wire Line
	6250 2400 6250 2250
$Comp
L Switch:SW_SPDT Relay1
U 1 1 5E8C957B
P 5300 1750
F 0 "Relay1" H 5300 1943 50  0000 C CNN
F 1 "SW_SPDT" H 5300 1944 50  0001 C CNN
F 2 "" H 5300 1750 50  0001 C CNN
F 3 "~" H 5300 1750 50  0001 C CNN
	1    5300 1750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT Relay2
U 1 1 5E8D2845
P 6150 2600
F 0 "Relay2" V 6150 2412 50  0000 R CNN
F 1 "SW_SPDT" V 6105 2412 50  0001 R CNN
F 2 "" H 6150 2600 50  0001 C CNN
F 3 "~" H 6150 2600 50  0001 C CNN
	1    6150 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 1850 5850 1850
Wire Wire Line
	5850 2250 5850 2850
Wire Wire Line
	6150 2800 6150 2850
Wire Wire Line
	6150 2850 5850 2850
Connection ~ 5850 2850
Wire Wire Line
	5850 2850 5850 3050
Text GLabel 5100 1750 0    50   Output ~ 0
MESA_VCH
Wire Notes Line
	4700 3300 6700 3300
Wire Notes Line
	6700 3300 6700 1050
Wire Notes Line
	6700 1050 4700 1050
Wire Notes Line
	4700 1050 4700 3300
Wire Notes Line
	8050 3900 11150 3900
Wire Notes Line
	11150 3900 11150 1950
Wire Notes Line
	11150 1950 8050 1950
Wire Notes Line
	8050 1950 8050 3900
Wire Notes Line
	6700 2350 8050 2350
Wire Notes Line
	3300 5000 3300 7700
Wire Notes Line
	3300 7700 5000 7700
Wire Notes Line
	5000 7700 5000 5000
Wire Notes Line
	5000 5000 3300 5000
Wire Notes Line
	11150 3950 7900 3950
Wire Notes Line
	7900 3950 7900 6500
Wire Notes Line
	7900 6500 11150 6500
Wire Notes Line
	11150 6500 11150 3950
Wire Notes Line
	550  4350 550  7700
Wire Notes Line
	550  7700 3050 7700
Wire Notes Line
	3050 7700 3050 4350
Wire Notes Line
	550  4350 3050 4350
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 5E9555CC
P 9000 2300
F 0 "J8" H 9108 2581 50  0000 C CNN
F 1 "Conn_01x04_Male" H 9108 2490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9000 2300 50  0001 C CNN
F 3 "~" H 9000 2300 50  0001 C CNN
	1    9000 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5E9560F1
P 8850 2300
F 0 "J5" H 8878 2276 50  0000 L CNN
F 1 "Conn_01x04_Female" H 8878 2185 50  0000 L CNN
F 2 "" H 8850 2300 50  0001 C CNN
F 3 "~" H 8850 2300 50  0001 C CNN
	1    8850 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J6
U 1 1 5E97E67B
P 8850 3000
F 0 "J6" H 8878 2976 50  0000 L CNN
F 1 "Conn_01x06_Female" H 8878 2885 50  0000 L CNN
F 2 "" H 8850 3000 50  0001 C CNN
F 3 "~" H 8850 3000 50  0001 C CNN
	1    8850 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J9
U 1 1 5E97F186
P 9000 3000
F 0 "J9" H 9108 3381 50  0000 C CNN
F 1 "Conn_01x06_Male" H 9108 3290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9000 3000 50  0001 C CNN
F 3 "~" H 9000 3000 50  0001 C CNN
	1    9000 3000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
