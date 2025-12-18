EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 23622 19685
encoding utf-8
Sheet 1 1
Title "MZ-2000_EMM&CMU"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x22_Row_Letter_First J1
U 1 1 627EE89C
P 2850 2700
F 0 "J1" H 2900 3850 50  0000 C CNN
F 1 "Conn_02x22_Row_Letter_First" H 2050 4450 50  0000 C CNN
F 2 "mz-2000:BUS_MZ2000" H 2850 2700 50  0001 C CNN
F 3 "~" H 2850 2700 50  0001 C CNN
	1    2850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1800 2400 1800
Wire Wire Line
	2650 1900 2400 1900
Wire Wire Line
	2650 2000 2400 2000
Wire Wire Line
	3150 1800 3400 1800
Text Label 2450 1800 0    50   ~ 0
D2
Text Label 2450 1900 0    50   ~ 0
D1
Text Label 2450 2000 0    50   ~ 0
D0
Text Label 2450 2200 0    50   ~ 0
A15
Text Label 2450 2300 0    50   ~ 0
A14
Text Label 2450 2400 0    50   ~ 0
A13
Text Label 2450 2500 0    50   ~ 0
A12
Text Label 2450 2600 0    50   ~ 0
A11
Text Label 2450 2700 0    50   ~ 0
A10
Text Label 2450 2800 0    50   ~ 0
A9
Text Label 2450 2900 0    50   ~ 0
A8
Text Label 2450 3000 0    50   ~ 0
A7
Text Label 2450 3100 0    50   ~ 0
A6
Text Label 2450 3200 0    50   ~ 0
A5
Text Label 2450 3300 0    50   ~ 0
A4
Text Label 2450 3400 0    50   ~ 0
A3
Text Label 2450 3500 0    50   ~ 0
A2
Text Label 2450 3600 0    50   ~ 0
A1
Text Label 2450 3700 0    50   ~ 0
A0
Text Label 3150 3700 0    50   ~ 0
~MNI
Text Label 3150 3600 0    50   ~ 0
~EXWAIT
Text Label 3150 3500 0    50   ~ 0
~EXINT
Text Label 3150 3300 0    50   ~ 0
RESET
Text Label 3150 3200 0    50   ~ 0
IE0
Text Label 3150 3100 0    50   ~ 0
IE1
Text Label 3150 3000 0    50   ~ 0
~HALT
Text Label 3150 2800 0    50   ~ 0
~MREQ
Text Label 3150 2700 0    50   ~ 0
~IOREQ
Text Label 3150 2600 0    50   ~ 0
~RD
Text Label 3150 2500 0    50   ~ 0
~WR
Text Label 3150 2400 0    50   ~ 0
~M1
Text Label 3150 2300 0    50   ~ 0
phi
Text Label 3150 2200 0    50   ~ 0
D7
Text Label 3150 2100 0    50   ~ 0
D6
Text Label 3150 2000 0    50   ~ 0
D5
Text Label 3150 1900 0    50   ~ 0
D4
Text Label 3150 1800 0    50   ~ 0
D3
Wire Wire Line
	2650 2200 2400 2200
Wire Wire Line
	2650 2300 2400 2300
Wire Wire Line
	2650 2400 2400 2400
Wire Wire Line
	2650 2500 2400 2500
Wire Wire Line
	2650 2600 2400 2600
Wire Wire Line
	2650 2700 2400 2700
Wire Wire Line
	2650 2800 2400 2800
Wire Wire Line
	2650 2900 2400 2900
Wire Wire Line
	2650 3000 2400 3000
Wire Wire Line
	2650 3100 2400 3100
Wire Wire Line
	2650 3200 2400 3200
Wire Wire Line
	2650 3300 2400 3300
Wire Wire Line
	2650 3400 2400 3400
Wire Wire Line
	2650 3500 2400 3500
Wire Wire Line
	2650 3600 2400 3600
Wire Wire Line
	2650 3700 2400 3700
Wire Wire Line
	3150 1900 3400 1900
Wire Wire Line
	3150 2000 3400 2000
Wire Wire Line
	3150 2100 3400 2100
Wire Wire Line
	3150 2200 3400 2200
Wire Wire Line
	3150 2300 3400 2300
Wire Wire Line
	3150 2400 3400 2400
Wire Wire Line
	3150 2500 3400 2500
Wire Wire Line
	3150 2600 3400 2600
Wire Wire Line
	3150 2700 3400 2700
Wire Wire Line
	3150 2800 3400 2800
Wire Wire Line
	3150 3000 3400 3000
Wire Wire Line
	3150 3100 3400 3100
Wire Wire Line
	3150 3200 3400 3200
Wire Wire Line
	3150 3300 3400 3300
Wire Wire Line
	3150 3400 3400 3400
Wire Wire Line
	3150 3500 3400 3500
Wire Wire Line
	3150 3600 3400 3600
Wire Wire Line
	3150 3700 3400 3700
Text Label 3150 3400 0    50   ~ 0
~EXRESET
$Comp
L power:GND #PWR?
U 1 1 636B8114
P 2450 3950
AR Path="/6274F952/636B8114" Ref="#PWR?"  Part="1" 
AR Path="/636B8114" Ref="#PWR02"  Part="1" 
AR Path="/636550FF/636B8114" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 2450 3700 50  0001 C CNN
F 1 "GND" H 2455 3777 50  0000 C CNN
F 2 "" H 2450 3950 50  0001 C CNN
F 3 "" H 2450 3950 50  0001 C CNN
	1    2450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3950 2450 3800
Wire Wire Line
	2450 3800 2650 3800
Wire Wire Line
	3550 3800 3150 3800
$Comp
L power:PWR_FLAG #FLG?
U 1 1 636B8121
P 2950 4200
AR Path="/636550FF/636B8121" Ref="#FLG?"  Part="1" 
AR Path="/636B8121" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 2950 4275 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 4373 50  0000 C CNN
F 2 "" H 2950 4200 50  0001 C CNN
F 3 "~" H 2950 4200 50  0001 C CNN
	1    2950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4300 2950 4300
Wire Wire Line
	2950 4300 2950 4200
Wire Wire Line
	3150 2900 3550 2900
Wire Wire Line
	3550 2900 3550 3800
Connection ~ 3550 3800
$Comp
L power:+5V #PWR?
U 1 1 636B8140
P 2450 1300
AR Path="/6274F952/636B8140" Ref="#PWR?"  Part="1" 
AR Path="/636B8140" Ref="#PWR01"  Part="1" 
AR Path="/636550FF/636B8140" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 2450 1150 50  0001 C CNN
F 1 "+5V" H 2465 1473 50  0000 C CNN
F 2 "" H 2450 1300 50  0001 C CNN
F 3 "" H 2450 1300 50  0001 C CNN
	1    2450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1700 2650 1700
$Comp
L power:PWR_FLAG #FLG?
U 1 1 636B814C
P 3400 1300
AR Path="/636550FF/636B814C" Ref="#FLG?"  Part="1" 
AR Path="/636B814C" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 3400 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 3400 1473 50  0000 C CNN
F 2 "" H 3400 1300 50  0001 C CNN
F 3 "~" H 3400 1300 50  0001 C CNN
	1    3400 1300
	1    0    0    -1  
$EndComp
Text Label 2450 1700 0    50   ~ 0
+5V
Text Label 2500 2100 0    50   ~ 0
GND
Text Label 2500 3800 0    50   ~ 0
GND
Text Label 3150 1700 0    50   ~ 0
+5V
Text Label 3150 2900 0    50   ~ 0
GND
Text Label 3150 3800 0    50   ~ 0
GND
Wire Wire Line
	3150 1700 3400 1700
NoConn ~ 3400 3100
NoConn ~ 3400 3000
NoConn ~ 3400 3200
NoConn ~ 3400 3400
NoConn ~ 3400 3500
NoConn ~ 3400 3600
NoConn ~ 3400 3700
NoConn ~ 2400 2200
NoConn ~ 2400 2300
NoConn ~ 2400 2400
NoConn ~ 2400 2500
NoConn ~ 2400 2600
NoConn ~ 2400 2700
NoConn ~ 2400 2800
NoConn ~ 2400 2900
NoConn ~ 3400 2800
NoConn ~ 3400 2300
NoConn ~ 3400 2400
$Comp
L Connector_Generic:Conn_02x25_Odd_Even J2
U 1 1 68F77FF1
P 5000 2900
F 0 "J2" H 5050 4317 50  0000 C CNN
F 1 "Conn_02x25_Odd_Even" H 5050 4226 50  0000 C CNN
F 2 "MZ-2000_SD_3_2:BUS_50Pin" H 5000 2900 50  0001 C CNN
F 3 "~" H 5000 2900 50  0001 C CNN
	1    5000 2900
	1    0    0    -1  
$EndComp
NoConn ~ 3400 3300
Text Label 4600 3300 0    50   ~ 0
A7
Text Label 4600 3200 0    50   ~ 0
A6
Text Label 4600 3100 0    50   ~ 0
A5
Text Label 4600 3000 0    50   ~ 0
A4
Text Label 4600 2900 0    50   ~ 0
A3
Text Label 4600 2800 0    50   ~ 0
A2
Text Label 4600 2700 0    50   ~ 0
A1
Text Label 4600 2600 0    50   ~ 0
A0
Wire Wire Line
	4800 3300 4550 3300
Wire Wire Line
	4800 3200 4550 3200
Wire Wire Line
	4800 3100 4550 3100
Wire Wire Line
	4800 3000 4550 3000
Wire Wire Line
	4800 2900 4550 2900
Wire Wire Line
	4800 2800 4550 2800
Wire Wire Line
	4800 2700 4550 2700
Wire Wire Line
	4800 2600 4550 2600
Wire Wire Line
	4550 2100 4800 2100
Text Label 4550 2500 0    50   ~ 0
D7
Text Label 4550 2400 0    50   ~ 0
D6
Text Label 4550 2300 0    50   ~ 0
D5
Text Label 4550 2200 0    50   ~ 0
D4
Text Label 4550 2100 0    50   ~ 0
D3
Wire Wire Line
	4550 2200 4800 2200
Wire Wire Line
	4550 2300 4800 2300
Wire Wire Line
	4550 2400 4800 2400
Wire Wire Line
	4550 2500 4800 2500
Wire Wire Line
	4550 2000 4800 2000
Wire Wire Line
	4550 1900 4800 1900
Wire Wire Line
	4550 1800 4800 1800
Text Label 4650 2000 2    50   ~ 0
D2
Text Label 4650 1900 2    50   ~ 0
D1
Text Label 4650 1800 2    50   ~ 0
D0
Wire Wire Line
	5550 4000 5300 4000
Text Label 5550 4000 2    50   ~ 0
GND
Text Label 4550 3700 0    50   ~ 0
~IOREQ
Wire Wire Line
	4550 3700 4800 3700
Text Label 4550 3400 0    50   ~ 0
~RD
Text Label 4550 3500 0    50   ~ 0
~WR
Wire Wire Line
	4550 3500 4800 3500
Wire Wire Line
	4550 3400 4800 3400
NoConn ~ 4800 1700
NoConn ~ 5300 1700
NoConn ~ 5300 1800
NoConn ~ 5300 1900
NoConn ~ 5300 2000
NoConn ~ 5300 2100
NoConn ~ 5300 2200
NoConn ~ 5300 2300
NoConn ~ 5300 2400
NoConn ~ 5300 2500
NoConn ~ 5300 2600
NoConn ~ 5300 2700
NoConn ~ 5300 2800
NoConn ~ 5300 2900
NoConn ~ 5300 3000
NoConn ~ 5300 3100
NoConn ~ 5300 3200
NoConn ~ 5300 3400
NoConn ~ 5300 3500
NoConn ~ 5300 3600
NoConn ~ 5300 3700
NoConn ~ 5300 3800
NoConn ~ 5300 3900
NoConn ~ 5300 4100
NoConn ~ 4800 4100
NoConn ~ 4800 4000
NoConn ~ 4800 3900
NoConn ~ 4800 3800
NoConn ~ 4800 3600
Wire Wire Line
	2450 1300 2450 1700
Wire Wire Line
	3400 1300 3400 1700
Wire Wire Line
	3550 3800 3550 4300
Wire Wire Line
	2650 2100 2400 2100
$Comp
L 74xx:74LS245 U?
U 1 1 692BB82C
P 18550 9400
AR Path="/6274F952/692BB82C" Ref="U?"  Part="1" 
AR Path="/692BB82C" Ref="U15"  Part="1" 
AR Path="/636550FF/692BB82C" Ref="U?"  Part="1" 
AR Path="/6687DD68/692BB82C" Ref="U?"  Part="1" 
AR Path="/6921BBA5/692BB82C" Ref="U?"  Part="1" 
F 0 "U15" H 18800 10100 50  0000 C CNN
F 1 "74LS245" H 18350 10100 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 18550 9400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 18550 9400 50  0001 C CNN
	1    18550 9400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	16100 8900 18050 8900
Wire Wire Line
	16100 9000 18050 9000
Wire Wire Line
	16100 9100 18050 9100
Wire Wire Line
	16100 9200 18050 9200
Wire Wire Line
	16100 9300 18050 9300
Wire Wire Line
	16100 9400 18050 9400
Wire Wire Line
	16100 9500 18050 9500
Wire Wire Line
	16100 9600 18050 9600
$Comp
L Device:C C?
U 1 1 692BB83A
P 17200 10650
AR Path="/6274F952/692BB83A" Ref="C?"  Part="1" 
AR Path="/692BB83A" Ref="C13"  Part="1" 
AR Path="/636550FF/692BB83A" Ref="C?"  Part="1" 
AR Path="/6687DD68/692BB83A" Ref="C?"  Part="1" 
AR Path="/6921BBA5/692BB83A" Ref="C?"  Part="1" 
F 0 "C13" H 17315 10696 50  0000 L CNN
F 1 "0.1uF" H 17315 10605 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 17238 10500 50  0001 C CNN
F 3 "~" H 17200 10650 50  0001 C CNN
	1    17200 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	17200 10800 17200 12550
Wire Wire Line
	15600 12550 15600 10900
$Comp
L power:+5V #PWR?
U 1 1 692BB844
P 17200 8100
AR Path="/6274F952/692BB844" Ref="#PWR?"  Part="1" 
AR Path="/692BB844" Ref="#PWR015"  Part="1" 
AR Path="/636550FF/692BB844" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/692BB844" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB844" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 17200 7950 50  0001 C CNN
F 1 "+5V" H 17215 8273 50  0000 C CNN
F 2 "" H 17200 8100 50  0001 C CNN
F 3 "" H 17200 8100 50  0001 C CNN
	1    17200 8100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 692BB84A
P 17200 12650
AR Path="/6274F952/692BB84A" Ref="#PWR?"  Part="1" 
AR Path="/692BB84A" Ref="#PWR016"  Part="1" 
AR Path="/636550FF/692BB84A" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/692BB84A" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB84A" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 17200 12400 50  0001 C CNN
F 1 "GND" H 17205 12477 50  0000 C CNN
F 2 "" H 17200 12650 50  0001 C CNN
F 3 "" H 17200 12650 50  0001 C CNN
	1    17200 12650
	1    0    0    -1  
$EndComp
Wire Wire Line
	17200 12650 17200 12550
Connection ~ 17200 12550
Wire Wire Line
	16100 9900 16400 9900
Wire Wire Line
	16400 9900 16400 10000
$Comp
L Device:C C?
U 1 1 692BB855
P 19250 10100
AR Path="/6274F952/692BB855" Ref="C?"  Part="1" 
AR Path="/692BB855" Ref="C15"  Part="1" 
AR Path="/636550FF/692BB855" Ref="C?"  Part="1" 
AR Path="/6687DD68/692BB855" Ref="C?"  Part="1" 
AR Path="/6921BBA5/692BB855" Ref="C?"  Part="1" 
F 0 "C15" H 19365 10146 50  0000 L CNN
F 1 "0.1uF" H 19365 10055 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 19288 9950 50  0001 C CNN
F 3 "~" H 19250 10100 50  0001 C CNN
	1    19250 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	18550 8600 18550 8550
Wire Wire Line
	18550 8550 19250 8550
Wire Wire Line
	19250 8550 19250 9950
Wire Wire Line
	19250 10250 19250 10350
Wire Wire Line
	18550 10350 18550 10200
$Comp
L power:+5V #PWR?
U 1 1 692BB861
P 19250 8450
AR Path="/6274F952/692BB861" Ref="#PWR?"  Part="1" 
AR Path="/692BB861" Ref="#PWR017"  Part="1" 
AR Path="/636550FF/692BB861" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/692BB861" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB861" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 19250 8300 50  0001 C CNN
F 1 "+5V" H 19265 8623 50  0000 C CNN
F 2 "" H 19250 8450 50  0001 C CNN
F 3 "" H 19250 8450 50  0001 C CNN
	1    19250 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	19250 8450 19250 8550
Connection ~ 19250 8550
$Comp
L power:GND #PWR?
U 1 1 692BB869
P 19250 10450
AR Path="/6274F952/692BB869" Ref="#PWR?"  Part="1" 
AR Path="/692BB869" Ref="#PWR018"  Part="1" 
AR Path="/636550FF/692BB869" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/692BB869" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB869" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 19250 10200 50  0001 C CNN
F 1 "GND" H 19255 10277 50  0000 C CNN
F 2 "" H 19250 10450 50  0001 C CNN
F 3 "" H 19250 10450 50  0001 C CNN
	1    19250 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	19250 10450 19250 10350
Connection ~ 19250 10350
Text Label 20050 8900 0    50   ~ 0
D0
Text Label 20050 9000 0    50   ~ 0
D1
Text Label 20050 9100 0    50   ~ 0
D2
Text Label 20050 9200 0    50   ~ 0
D3
Text Label 20050 9300 0    50   ~ 0
D4
Text Label 20050 9400 0    50   ~ 0
D5
Text Label 20050 9500 0    50   ~ 0
D6
Text Label 20050 9600 0    50   ~ 0
D7
Wire Wire Line
	1750 11500 1750 11400
Wire Wire Line
	1750 12500 1750 12600
$Comp
L power:GND #PWR?
U 1 1 692BB87F
P 1750 12600
AR Path="/6274F952/692BB87F" Ref="#PWR?"  Part="1" 
AR Path="/692BB87F" Ref="#PWR020"  Part="1" 
AR Path="/636550FF/692BB87F" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/692BB87F" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB87F" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 1750 12350 50  0001 C CNN
F 1 "GND" H 1755 12427 50  0000 C CNN
F 2 "" H 1750 12600 50  0001 C CNN
F 3 "" H 1750 12600 50  0001 C CNN
	1    1750 12600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 692BB885
P 1750 11400
AR Path="/6274F952/692BB885" Ref="#PWR?"  Part="1" 
AR Path="/692BB885" Ref="#PWR019"  Part="1" 
AR Path="/636550FF/692BB885" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/692BB885" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB885" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 1750 11250 50  0001 C CNN
F 1 "+5V" H 1765 11573 50  0000 C CNN
F 2 "" H 1750 11400 50  0001 C CNN
F 3 "" H 1750 11400 50  0001 C CNN
	1    1750 11400
	1    0    0    -1  
$EndComp
Connection ~ 1750 11400
$Comp
L Device:C C?
U 1 1 692BB88C
P 1200 11900
AR Path="/6274F952/692BB88C" Ref="C?"  Part="1" 
AR Path="/692BB88C" Ref="C1"  Part="1" 
AR Path="/636550FF/692BB88C" Ref="C?"  Part="1" 
AR Path="/6687DD68/692BB88C" Ref="C?"  Part="1" 
AR Path="/6921BBA5/692BB88C" Ref="C?"  Part="1" 
F 0 "C1" H 1315 11946 50  0000 L CNN
F 1 "0.1uF" H 1315 11855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 1238 11750 50  0001 C CNN
F 3 "~" H 1200 11900 50  0001 C CNN
	1    1200 11900
	1    0    0    -1  
$EndComp
Connection ~ 1750 12600
Wire Wire Line
	1200 11750 1200 11400
Wire Wire Line
	1200 11400 1750 11400
Wire Wire Line
	1200 12600 1750 12600
Wire Wire Line
	1200 12050 1200 12600
Wire Wire Line
	19050 8900 20150 8900
Wire Wire Line
	19050 9000 20150 9000
Wire Wire Line
	19050 9100 20150 9100
Wire Wire Line
	19050 9200 20150 9200
Wire Wire Line
	19050 9300 20150 9300
Wire Wire Line
	19050 9400 20150 9400
Wire Wire Line
	19050 9500 20150 9500
Wire Wire Line
	19050 9600 20150 9600
Wire Wire Line
	16400 10000 16100 10000
$Comp
L 74xx:74LS193 U?
U 1 1 692BB8A3
P 12100 9300
AR Path="/6921BBA5/692BB8A3" Ref="U?"  Part="1" 
AR Path="/692BB8A3" Ref="U6"  Part="1" 
F 0 "U6" H 11900 9900 50  0000 C CNN
F 1 "74LS193" H 12350 9900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 12100 9300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls193.pdf" H 12100 9300 50  0001 C CNN
	1    12100 9300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS193 U?
U 1 1 692BB8A9
P 12100 11200
AR Path="/6921BBA5/692BB8A9" Ref="U?"  Part="1" 
AR Path="/692BB8A9" Ref="U7"  Part="1" 
F 0 "U7" H 11950 11750 50  0000 C CNN
F 1 "74LS193" H 12300 11750 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 12100 11200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls193.pdf" H 12100 11200 50  0001 C CNN
	1    12100 11200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS193 U?
U 1 1 692BB8AF
P 12100 13100
AR Path="/6921BBA5/692BB8AF" Ref="U?"  Part="1" 
AR Path="/692BB8AF" Ref="U8"  Part="1" 
F 0 "U8" H 11900 13650 50  0000 C CNN
F 1 "74LS193" H 12300 13650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 12100 13100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls193.pdf" H 12100 13100 50  0001 C CNN
	1    12100 13100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS193 U?
U 1 1 692BB8B5
P 12100 15050
AR Path="/6921BBA5/692BB8B5" Ref="U?"  Part="1" 
AR Path="/692BB8B5" Ref="U9"  Part="1" 
F 0 "U9" H 11850 15650 50  0000 C CNN
F 1 "74LS193" H 12400 15650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 12100 15050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls193.pdf" H 12100 15050 50  0001 C CNN
	1    12100 15050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U?
U 1 1 692BB8BB
P 5000 14000
AR Path="/6921BBA5/692BB8BB" Ref="U?"  Part="1" 
AR Path="/692BB8BB" Ref="U3"  Part="1" 
F 0 "U3" H 5000 14317 50  0000 C CNN
F 1 "74LS14" H 5000 14226 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5000 14000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 5000 14000 50  0001 C CNN
	1    5000 14000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U?
U 2 1 692BB8C1
P 5000 14500
AR Path="/6921BBA5/692BB8C1" Ref="U?"  Part="2" 
AR Path="/692BB8C1" Ref="U3"  Part="2" 
F 0 "U3" H 5000 14817 50  0000 C CNN
F 1 "74LS14" H 5000 14726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5000 14500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 5000 14500 50  0001 C CNN
	2    5000 14500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U?
U 3 1 692BB8C7
P 5000 15050
AR Path="/6921BBA5/692BB8C7" Ref="U?"  Part="3" 
AR Path="/692BB8C7" Ref="U3"  Part="3" 
F 0 "U3" H 5000 15367 50  0000 C CNN
F 1 "74LS14" H 5000 15276 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5000 15050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 5000 15050 50  0001 C CNN
	3    5000 15050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U?
U 4 1 692BB8CD
P 9650 9600
AR Path="/6921BBA5/692BB8CD" Ref="U?"  Part="4" 
AR Path="/692BB8CD" Ref="U3"  Part="4" 
F 0 "U3" H 9650 9917 50  0000 C CNN
F 1 "74LS14" H 9650 9826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9650 9600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 9650 9600 50  0001 C CNN
	4    9650 9600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U?
U 5 1 692BB8D3
P 9000 9600
AR Path="/6921BBA5/692BB8D3" Ref="U?"  Part="5" 
AR Path="/692BB8D3" Ref="U3"  Part="5" 
F 0 "U3" H 9000 9917 50  0000 C CNN
F 1 "74LS14" H 9000 9826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 9000 9600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 9000 9600 50  0001 C CNN
	5    9000 9600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U?
U 6 1 692BB8D9
P 7850 9600
AR Path="/6921BBA5/692BB8D9" Ref="U?"  Part="6" 
AR Path="/692BB8D9" Ref="U3"  Part="6" 
F 0 "U3" H 7850 9917 50  0000 C CNN
F 1 "74LS14" H 7850 9826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7850 9600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 7850 9600 50  0001 C CNN
	6    7850 9600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U?
U 7 1 692BB8DF
P 4200 12000
AR Path="/6921BBA5/692BB8DF" Ref="U?"  Part="7" 
AR Path="/692BB8DF" Ref="U3"  Part="7" 
F 0 "U3" H 4430 12046 50  0000 L CNN
F 1 "74LS14" H 4430 11955 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4200 12000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 4200 12000 50  0001 C CNN
	7    4200 12000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11600 9700 11250 9700
Connection ~ 11250 9700
Wire Wire Line
	11250 9700 11250 10400
Wire Wire Line
	11600 11600 11250 11600
Connection ~ 11250 11600
Wire Wire Line
	11250 11600 11250 12300
Wire Wire Line
	11600 13500 11250 13500
Connection ~ 11250 13500
Wire Wire Line
	11250 13500 11250 14200
Wire Wire Line
	11600 15450 11250 15450
Wire Wire Line
	12600 9400 12800 9400
Wire Wire Line
	12800 9400 12800 10300
Wire Wire Line
	12800 10300 11350 10300
Wire Wire Line
	11350 10300 11350 11500
Wire Wire Line
	11350 11500 11600 11500
NoConn ~ 12600 9600
NoConn ~ 12600 11500
NoConn ~ 12600 13400
NoConn ~ 12600 15350
Wire Wire Line
	12600 11300 12800 11300
Wire Wire Line
	12800 11300 12800 12200
Wire Wire Line
	12800 12200 11350 12200
Wire Wire Line
	11350 12200 11350 13400
Wire Wire Line
	11350 13400 11600 13400
Wire Wire Line
	12600 13200 12800 13200
Wire Wire Line
	12800 13200 12800 14100
Wire Wire Line
	12800 14100 11350 14100
Wire Wire Line
	11350 14100 11350 15350
Wire Wire Line
	11350 15350 11600 15350
Wire Wire Line
	12600 10800 12950 10800
Wire Wire Line
	12950 10800 12950 9300
Wire Wire Line
	12600 10900 13050 10900
Wire Wire Line
	13050 10900 13050 9400
Wire Wire Line
	13050 9400 15100 9400
Wire Wire Line
	12600 11000 13150 11000
Wire Wire Line
	13150 11000 13150 9500
Wire Wire Line
	12600 11100 13250 11100
Wire Wire Line
	13250 11100 13250 9600
Wire Wire Line
	13250 9600 15100 9600
Wire Wire Line
	12600 12700 13350 12700
Wire Wire Line
	13350 12700 13350 9700
Wire Wire Line
	13350 9700 15100 9700
Wire Wire Line
	12600 12800 13450 12800
Wire Wire Line
	13450 12800 13450 9800
Wire Wire Line
	13450 9800 15100 9800
Wire Wire Line
	12600 12900 13550 12900
Wire Wire Line
	13550 12900 13550 9900
Wire Wire Line
	13550 9900 15100 9900
Wire Wire Line
	12600 13000 13650 13000
Wire Wire Line
	13650 13000 13650 10000
Wire Wire Line
	13650 10000 15100 10000
Wire Wire Line
	12600 14650 13750 14650
Wire Wire Line
	13750 14650 13750 10100
Wire Wire Line
	13750 10100 15100 10100
Wire Wire Line
	12600 14750 13850 14750
Wire Wire Line
	13850 14750 13850 10200
Wire Wire Line
	13850 10200 15100 10200
Wire Wire Line
	12600 14850 13950 14850
Wire Wire Line
	13950 14850 13950 10300
Wire Wire Line
	13950 10300 15100 10300
Wire Wire Line
	11600 9800 11150 9800
Wire Wire Line
	11150 9800 11150 11700
Wire Wire Line
	11150 11700 11600 11700
Wire Wire Line
	11150 11700 11150 13600
Wire Wire Line
	11150 13600 11600 13600
Connection ~ 11150 11700
Wire Wire Line
	11150 13600 11150 15550
Wire Wire Line
	11150 15550 11600 15550
Connection ~ 11150 13600
Wire Wire Line
	9950 9600 11600 9600
Wire Wire Line
	9300 9600 9350 9600
$Comp
L Device:R R?
U 1 1 692BB92C
P 8350 9600
AR Path="/6921BBA5/692BB92C" Ref="R?"  Part="1" 
AR Path="/692BB92C" Ref="R1"  Part="1" 
F 0 "R1" V 8557 9600 50  0000 C CNN
F 1 "100" V 8466 9600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8280 9600 50  0001 C CNN
F 3 "~" H 8350 9600 50  0001 C CNN
	1    8350 9600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 9600 8600 9600
$Comp
L Device:C C?
U 1 1 692BB933
P 8600 9950
AR Path="/6921BBA5/692BB933" Ref="C?"  Part="1" 
AR Path="/692BB933" Ref="C16"  Part="1" 
F 0 "C16" H 8715 9996 50  0000 L CNN
F 1 "220pF" H 8715 9905 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 8638 9800 50  0001 C CNN
F 3 "~" H 8600 9950 50  0001 C CNN
	1    8600 9950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 9800 8600 9600
Connection ~ 8600 9600
Wire Wire Line
	8600 9600 8700 9600
$Comp
L power:GND #PWR?
U 1 1 692BB93C
P 8600 10100
AR Path="/636550FF/692BB93C" Ref="#PWR?"  Part="1" 
AR Path="/692BB93C" Ref="#PWR03"  Part="1" 
AR Path="/6687DD68/692BB93C" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB93C" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 8600 9850 50  0001 C CNN
F 1 "GND" H 8605 9927 50  0000 C CNN
F 2 "" H 8600 10100 50  0001 C CNN
F 3 "" H 8600 10100 50  0001 C CNN
	1    8600 10100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 692BB942
P 12100 10100
AR Path="/636550FF/692BB942" Ref="#PWR?"  Part="1" 
AR Path="/692BB942" Ref="#PWR08"  Part="1" 
AR Path="/6687DD68/692BB942" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB942" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 12100 9850 50  0001 C CNN
F 1 "GND" H 12200 10100 50  0000 C CNN
F 2 "" H 12100 10100 50  0001 C CNN
F 3 "" H 12100 10100 50  0001 C CNN
	1    12100 10100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 692BB948
P 12100 12000
AR Path="/636550FF/692BB948" Ref="#PWR?"  Part="1" 
AR Path="/692BB948" Ref="#PWR09"  Part="1" 
AR Path="/6687DD68/692BB948" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB948" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 12100 11750 50  0001 C CNN
F 1 "GND" H 12200 12000 50  0000 C CNN
F 2 "" H 12100 12000 50  0001 C CNN
F 3 "" H 12100 12000 50  0001 C CNN
	1    12100 12000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 692BB94E
P 12100 13900
AR Path="/636550FF/692BB94E" Ref="#PWR?"  Part="1" 
AR Path="/692BB94E" Ref="#PWR010"  Part="1" 
AR Path="/6687DD68/692BB94E" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB94E" Ref="#PWR?"  Part="1" 
F 0 "#PWR010" H 12100 13650 50  0001 C CNN
F 1 "GND" H 12200 13900 50  0000 C CNN
F 2 "" H 12100 13900 50  0001 C CNN
F 3 "" H 12100 13900 50  0001 C CNN
	1    12100 13900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 692BB954
P 12100 15850
AR Path="/636550FF/692BB954" Ref="#PWR?"  Part="1" 
AR Path="/692BB954" Ref="#PWR011"  Part="1" 
AR Path="/6687DD68/692BB954" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB954" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 12100 15600 50  0001 C CNN
F 1 "GND" H 12200 15850 50  0000 C CNN
F 2 "" H 12100 15850 50  0001 C CNN
F 3 "" H 12100 15850 50  0001 C CNN
	1    12100 15850
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 14350 12100 14200
Wire Wire Line
	12100 14200 11450 14200
Connection ~ 11250 14200
Wire Wire Line
	12100 12400 12100 12300
Wire Wire Line
	12100 12300 11450 12300
Connection ~ 11250 12300
Wire Wire Line
	12100 10500 12100 10400
Wire Wire Line
	12100 10400 11450 10400
Connection ~ 11250 10400
Wire Wire Line
	12100 8600 12100 8450
Wire Wire Line
	12100 8450 11400 8450
Wire Wire Line
	8150 9600 8200 9600
Wire Wire Line
	11150 8750 11150 9800
Connection ~ 11150 9800
Wire Wire Line
	4600 14000 4700 14000
Wire Wire Line
	4600 14000 4600 14500
Wire Wire Line
	4600 14500 4700 14500
Wire Wire Line
	4600 14500 4600 15050
Wire Wire Line
	4600 15050 4700 15050
Connection ~ 4600 14500
Connection ~ 4600 15050
NoConn ~ 5300 14000
NoConn ~ 5300 14500
NoConn ~ 5300 15050
$Comp
L Device:C C?
U 1 1 692BB97C
P 11400 8700
AR Path="/6274F952/692BB97C" Ref="C?"  Part="1" 
AR Path="/692BB97C" Ref="C6"  Part="1" 
AR Path="/636550FF/692BB97C" Ref="C?"  Part="1" 
AR Path="/6687DD68/692BB97C" Ref="C?"  Part="1" 
AR Path="/6921BBA5/692BB97C" Ref="C?"  Part="1" 
F 0 "C6" H 11515 8746 50  0000 L CNN
F 1 "0.1uF" H 11515 8655 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 11438 8550 50  0001 C CNN
F 3 "~" H 11400 8700 50  0001 C CNN
	1    11400 8700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 692BB982
P 11450 10600
AR Path="/6274F952/692BB982" Ref="C?"  Part="1" 
AR Path="/692BB982" Ref="C7"  Part="1" 
AR Path="/636550FF/692BB982" Ref="C?"  Part="1" 
AR Path="/6687DD68/692BB982" Ref="C?"  Part="1" 
AR Path="/6921BBA5/692BB982" Ref="C?"  Part="1" 
F 0 "C7" H 11565 10646 50  0000 L CNN
F 1 "0.1uF" H 11565 10555 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 11488 10450 50  0001 C CNN
F 3 "~" H 11450 10600 50  0001 C CNN
	1    11450 10600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 692BB988
P 11450 12500
AR Path="/6274F952/692BB988" Ref="C?"  Part="1" 
AR Path="/692BB988" Ref="C8"  Part="1" 
AR Path="/636550FF/692BB988" Ref="C?"  Part="1" 
AR Path="/6687DD68/692BB988" Ref="C?"  Part="1" 
AR Path="/6921BBA5/692BB988" Ref="C?"  Part="1" 
F 0 "C8" H 11565 12546 50  0000 L CNN
F 1 "0.1uF" H 11565 12455 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 11488 12350 50  0001 C CNN
F 3 "~" H 11450 12500 50  0001 C CNN
	1    11450 12500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 692BB98E
P 11450 14450
AR Path="/6274F952/692BB98E" Ref="C?"  Part="1" 
AR Path="/692BB98E" Ref="C9"  Part="1" 
AR Path="/636550FF/692BB98E" Ref="C?"  Part="1" 
AR Path="/6687DD68/692BB98E" Ref="C?"  Part="1" 
AR Path="/6921BBA5/692BB98E" Ref="C?"  Part="1" 
F 0 "C9" H 11565 14496 50  0000 L CNN
F 1 "0.1uF" H 11565 14405 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 11488 14300 50  0001 C CNN
F 3 "~" H 11450 14450 50  0001 C CNN
	1    11450 14450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11450 12350 11450 12300
Connection ~ 11450 12300
Wire Wire Line
	11450 12300 11250 12300
Wire Wire Line
	11450 13900 12100 13900
Wire Wire Line
	11450 12650 11450 13900
Connection ~ 12100 13900
Wire Wire Line
	11450 14300 11450 14200
Connection ~ 11450 14200
Wire Wire Line
	11450 14200 11250 14200
Wire Wire Line
	11450 15850 12100 15850
Wire Wire Line
	11450 14600 11450 15850
Connection ~ 12100 15850
Wire Wire Line
	11450 10450 11450 10400
Connection ~ 11450 10400
Wire Wire Line
	11450 10400 11250 10400
Wire Wire Line
	11450 12000 12100 12000
Wire Wire Line
	11450 10750 11450 12000
Connection ~ 12100 12000
Wire Wire Line
	11400 10100 12100 10100
Wire Wire Line
	11400 8850 11400 10100
Connection ~ 12100 10100
Wire Wire Line
	11400 8550 11400 8450
Connection ~ 11400 8450
$Comp
L Memory_RAM:AS6C4008-55PCN U?
U 1 1 692BB9AB
P 15600 9800
AR Path="/6921BBA5/692BB9AB" Ref="U?"  Part="1" 
AR Path="/692BB9AB" Ref="U13"  Part="1" 
F 0 "U13" H 15100 10900 50  0000 C CNN
F 1 "HM628512LFP-5" H 16050 10900 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_LongPads" H 15600 9900 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 15600 9900 50  0001 C CNN
	1    15600 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	12600 8900 15100 8900
Wire Wire Line
	12600 9000 15100 9000
Wire Wire Line
	12600 9100 15100 9100
Wire Wire Line
	12600 9200 15100 9200
Wire Wire Line
	12950 9300 15100 9300
Wire Wire Line
	13150 9500 15100 9500
Wire Wire Line
	12600 14950 14050 14950
Wire Wire Line
	14050 14950 14050 10400
Wire Wire Line
	14050 10400 15100 10400
$Comp
L 74xx:74LS193 U?
U 1 1 692BB9BB
P 12100 17000
AR Path="/6921BBA5/692BB9BB" Ref="U?"  Part="1" 
AR Path="/692BB9BB" Ref="U10"  Part="1" 
F 0 "U10" H 11900 17550 50  0000 C CNN
F 1 "74LS193" H 12300 17550 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 12100 17000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls193.pdf" H 12100 17000 50  0001 C CNN
	1    12100 17000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 15450 11250 16150
Wire Wire Line
	11600 17400 11250 17400
NoConn ~ 12600 17300
Wire Wire Line
	12800 15150 12800 16050
Wire Wire Line
	12800 16050 11350 16050
Wire Wire Line
	11350 16050 11350 17300
Wire Wire Line
	11350 17300 11600 17300
Wire Wire Line
	12600 16600 14150 16600
Wire Wire Line
	12600 16700 14250 16700
Wire Wire Line
	12600 16800 14350 16800
NoConn ~ 12600 17100
Wire Wire Line
	11150 15550 11150 17500
Wire Wire Line
	11150 17500 11600 17500
$Comp
L power:GND #PWR?
U 1 1 692BB9CE
P 12100 17800
AR Path="/636550FF/692BB9CE" Ref="#PWR?"  Part="1" 
AR Path="/692BB9CE" Ref="#PWR012"  Part="1" 
AR Path="/6687DD68/692BB9CE" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB9CE" Ref="#PWR?"  Part="1" 
F 0 "#PWR012" H 12100 17550 50  0001 C CNN
F 1 "GND" H 12200 17800 50  0000 C CNN
F 2 "" H 12100 17800 50  0001 C CNN
F 3 "" H 12100 17800 50  0001 C CNN
	1    12100 17800
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 16300 12100 16150
Wire Wire Line
	12100 16150 11450 16150
Connection ~ 11250 16150
$Comp
L Device:C C?
U 1 1 692BB9D7
P 11450 16400
AR Path="/6274F952/692BB9D7" Ref="C?"  Part="1" 
AR Path="/692BB9D7" Ref="C10"  Part="1" 
AR Path="/636550FF/692BB9D7" Ref="C?"  Part="1" 
AR Path="/6687DD68/692BB9D7" Ref="C?"  Part="1" 
AR Path="/6921BBA5/692BB9D7" Ref="C?"  Part="1" 
F 0 "C10" H 11565 16446 50  0000 L CNN
F 1 "0.1uF" H 11565 16355 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 11488 16250 50  0001 C CNN
F 3 "~" H 11450 16400 50  0001 C CNN
	1    11450 16400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11450 16250 11450 16150
Connection ~ 11450 16150
Wire Wire Line
	11450 16150 11250 16150
Wire Wire Line
	11450 17800 12100 17800
Wire Wire Line
	11450 16550 11450 17800
Connection ~ 12100 17800
Connection ~ 11150 15550
Connection ~ 11250 15450
Wire Wire Line
	12800 15150 12600 15150
NoConn ~ 12600 16900
Wire Wire Line
	14150 10500 15100 10500
Wire Wire Line
	14150 10500 14150 16600
Wire Wire Line
	14250 10600 15100 10600
Wire Wire Line
	14250 10600 14250 16700
Wire Wire Line
	14350 10700 15100 10700
Wire Wire Line
	14350 10700 14350 16800
Wire Wire Line
	16750 10100 16100 10100
Wire Wire Line
	11400 8450 11250 8450
Connection ~ 11250 8450
Wire Wire Line
	11250 8450 11250 8250
$Comp
L power:+5V #PWR?
U 1 1 692BB9F3
P 11250 8250
AR Path="/636550FF/692BB9F3" Ref="#PWR?"  Part="1" 
AR Path="/692BB9F3" Ref="#PWR07"  Part="1" 
AR Path="/6687DD68/692BB9F3" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BB9F3" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 11250 8100 50  0001 C CNN
F 1 "+5V" H 11265 8423 50  0000 C CNN
F 2 "" H 11250 8250 50  0001 C CNN
F 3 "" H 11250 8250 50  0001 C CNN
	1    11250 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 8450 11250 9700
Wire Wire Line
	11250 10400 11250 11600
Wire Wire Line
	11250 12300 11250 13500
Wire Wire Line
	11250 14200 11250 15450
Wire Wire Line
	11250 16150 11250 17400
Wire Wire Line
	11600 9400 11050 9400
Wire Wire Line
	11050 9400 11050 11300
Wire Wire Line
	11050 11300 11600 11300
Wire Wire Line
	11600 13200 10950 13200
Wire Wire Line
	10950 13200 10950 15150
Wire Wire Line
	10950 15150 11600 15150
Wire Wire Line
	11050 9400 11050 6450
Connection ~ 11050 9400
Wire Wire Line
	10950 13200 10950 6350
Connection ~ 10950 13200
Wire Wire Line
	11600 17100 10850 17100
Wire Wire Line
	10850 17100 10850 6250
$Comp
L 74xx:74LS245 U?
U 1 1 692BBA28
P 9000 11900
AR Path="/6921BBA5/692BBA28" Ref="U?"  Part="1" 
AR Path="/692BBA28" Ref="U4"  Part="1" 
F 0 "U4" H 9250 12600 50  0000 C CNN
F 1 "74LS245" H 8750 12600 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_LongPads" H 9000 11900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 9000 11900 50  0001 C CNN
	1    9000 11900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11600 8900 10000 8900
Wire Wire Line
	10000 8900 10000 11400
Wire Wire Line
	10000 11400 9500 11400
Wire Wire Line
	9500 11500 10050 11500
Wire Wire Line
	10050 11500 10050 9000
Wire Wire Line
	10050 9000 11600 9000
Wire Wire Line
	11600 9100 10100 9100
Wire Wire Line
	10100 9100 10100 11600
Wire Wire Line
	10100 11600 9500 11600
Wire Wire Line
	9500 11700 10150 11700
Wire Wire Line
	10150 11700 10150 9200
Wire Wire Line
	10150 9200 11600 9200
Wire Wire Line
	9500 11800 10200 11800
Wire Wire Line
	10200 11800 10200 10800
Wire Wire Line
	10200 10800 11600 10800
Wire Wire Line
	9500 11900 10250 11900
Wire Wire Line
	10250 11900 10250 10900
Wire Wire Line
	10250 10900 11600 10900
Wire Wire Line
	9500 12000 10300 12000
Wire Wire Line
	10300 12000 10300 11000
Wire Wire Line
	10300 11000 11600 11000
Wire Wire Line
	9500 12100 10350 12100
Wire Wire Line
	10350 12100 10350 11100
Wire Wire Line
	10350 11100 11600 11100
Wire Wire Line
	10000 11400 10000 12700
Wire Wire Line
	10000 12700 11600 12700
Connection ~ 10000 11400
Wire Wire Line
	10050 11500 10050 12800
Wire Wire Line
	10050 12800 11600 12800
Connection ~ 10050 11500
Wire Wire Line
	10100 11600 10100 12900
Wire Wire Line
	10100 12900 11600 12900
Connection ~ 10100 11600
Wire Wire Line
	10150 11700 10150 13000
Wire Wire Line
	10150 13000 11600 13000
Connection ~ 10150 11700
Wire Wire Line
	10200 11800 10200 14650
Wire Wire Line
	10200 14650 11600 14650
Connection ~ 10200 11800
Wire Wire Line
	10250 11900 10250 14750
Wire Wire Line
	10250 14750 11600 14750
Connection ~ 10250 11900
Wire Wire Line
	10300 12000 10300 14850
Wire Wire Line
	10300 14850 11600 14850
Connection ~ 10300 12000
Wire Wire Line
	10350 12100 10350 14950
Wire Wire Line
	10350 14950 11600 14950
Connection ~ 10350 12100
Wire Wire Line
	10000 12700 10000 16600
Wire Wire Line
	10000 16600 11600 16600
Connection ~ 10000 12700
Wire Wire Line
	10050 12800 10050 16700
Wire Wire Line
	10050 16700 11600 16700
Connection ~ 10050 12800
Wire Wire Line
	10100 12900 10100 16800
Wire Wire Line
	10100 16800 11600 16800
Connection ~ 10100 12900
Wire Wire Line
	10150 13000 10150 16900
Wire Wire Line
	10150 16900 11600 16900
Connection ~ 10150 13000
Text Label 8250 11400 0    50   ~ 0
D0
Text Label 8250 11500 0    50   ~ 0
D1
Text Label 8250 11600 0    50   ~ 0
D2
Text Label 8250 11700 0    50   ~ 0
D3
Text Label 8250 11800 0    50   ~ 0
D4
Text Label 8250 11900 0    50   ~ 0
D5
Text Label 8250 12000 0    50   ~ 0
D6
Text Label 8250 12100 0    50   ~ 0
D7
Wire Wire Line
	8500 11400 8250 11400
Wire Wire Line
	8500 11500 8250 11500
Wire Wire Line
	8500 11600 8250 11600
Wire Wire Line
	8500 11700 8250 11700
Wire Wire Line
	8500 11800 8250 11800
Wire Wire Line
	8500 11900 8250 11900
Wire Wire Line
	8500 12000 8250 12000
Wire Wire Line
	8500 12100 8250 12100
$Comp
L Device:C C?
U 1 1 692BBA7A
P 7850 11550
AR Path="/6274F952/692BBA7A" Ref="C?"  Part="1" 
AR Path="/692BBA7A" Ref="C4"  Part="1" 
AR Path="/636550FF/692BBA7A" Ref="C?"  Part="1" 
AR Path="/6687DD68/692BBA7A" Ref="C?"  Part="1" 
AR Path="/6921BBA5/692BBA7A" Ref="C?"  Part="1" 
F 0 "C4" H 7965 11596 50  0000 L CNN
F 1 "0.1uF" H 7965 11505 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 7888 11400 50  0001 C CNN
F 3 "~" H 7850 11550 50  0001 C CNN
	1    7850 11550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 11700 7850 12700
Wire Wire Line
	7850 11400 7850 11100
Wire Wire Line
	7850 11100 9000 11100
Wire Wire Line
	7850 12700 9000 12700
Wire Wire Line
	9600 12700 9000 12700
Connection ~ 9000 12700
$Comp
L power:GND #PWR?
U 1 1 692BBA88
P 9000 12700
AR Path="/636550FF/692BBA88" Ref="#PWR?"  Part="1" 
AR Path="/692BBA88" Ref="#PWR05"  Part="1" 
AR Path="/6687DD68/692BBA88" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BBA88" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 9000 12450 50  0001 C CNN
F 1 "GND" H 9100 12700 50  0000 C CNN
F 2 "" H 9000 12700 50  0001 C CNN
F 3 "" H 9000 12700 50  0001 C CNN
	1    9000 12700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6150 6050 10550
$Comp
L power:+5V #PWR?
U 1 1 692BBA9B
P 9000 11100
AR Path="/636550FF/692BBA9B" Ref="#PWR?"  Part="1" 
AR Path="/692BBA9B" Ref="#PWR04"  Part="1" 
AR Path="/6687DD68/692BBA9B" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BBA9B" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 9000 10950 50  0001 C CNN
F 1 "+5V" H 9015 11273 50  0000 C CNN
F 2 "" H 9000 11100 50  0001 C CNN
F 3 "" H 9000 11100 50  0001 C CNN
	1    9000 11100
	1    0    0    -1  
$EndComp
Connection ~ 9000 11100
Wire Wire Line
	10850 6250 5250 6250
Wire Wire Line
	5250 6350 10950 6350
Wire Wire Line
	5250 6450 11050 6450
$Comp
L Diode:1N4001 D?
U 1 1 692BBABE
P 16250 8100
AR Path="/6921BBA5/692BBABE" Ref="D?"  Part="1" 
AR Path="/692BBABE" Ref="D2"  Part="1" 
F 0 "D2" H 16250 8317 50  0000 C CNN
F 1 "1S4" H 16250 8226 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 16250 7925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 16250 8100 50  0001 C CNN
	1    16250 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	16400 8100 17200 8100
Wire Wire Line
	16100 8100 15600 8100
$Comp
L Diode:1N4001 D?
U 1 1 692BBAC9
P 15250 8150
AR Path="/6921BBA5/692BBAC9" Ref="D?"  Part="1" 
AR Path="/692BBAC9" Ref="D1"  Part="1" 
F 0 "D1" H 15250 8367 50  0000 C CNN
F 1 "1S4" H 15250 8276 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 15250 7975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 15250 8150 50  0001 C CNN
	1    15250 8150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	15400 8150 15600 8150
$Comp
L Device:Battery_Cell BT?
U 1 1 692BBAD2
P 14650 8350
AR Path="/6921BBA5/692BBAD2" Ref="BT?"  Part="1" 
AR Path="/692BBAD2" Ref="BT1"  Part="1" 
F 0 "BT1" H 14768 8446 50  0000 L CNN
F 1 "Battery_Cell" H 14768 8355 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_103_1x20mm" V 14650 8410 50  0001 C CNN
F 3 "~" V 14650 8410 50  0001 C CNN
	1    14650 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	15100 8150 14650 8150
$Comp
L power:GND #PWR?
U 1 1 692BBAD9
P 14650 8450
AR Path="/636550FF/692BBAD9" Ref="#PWR?"  Part="1" 
AR Path="/692BBAD9" Ref="#PWR014"  Part="1" 
AR Path="/6687DD68/692BBAD9" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/692BBAD9" Ref="#PWR?"  Part="1" 
F 0 "#PWR014" H 14650 8200 50  0001 C CNN
F 1 "GND" H 14750 8450 50  0000 C CNN
F 2 "" H 14650 8450 50  0001 C CNN
F 3 "" H 14650 8450 50  0001 C CNN
	1    14650 8450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 692BBAE2
P 15600 8050
AR Path="/6921BBA5/692BBAE2" Ref="#FLG?"  Part="1" 
AR Path="/692BBAE2" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 15600 8125 50  0001 C CNN
F 1 "PWR_FLAG" H 15600 8223 50  0000 C CNN
F 2 "" H 15600 8050 50  0001 C CNN
F 3 "~" H 15600 8050 50  0001 C CNN
	1    15600 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	15600 8150 15600 8100
Connection ~ 15600 8150
Wire Wire Line
	3900 1700 3900 3100
Wire Wire Line
	3900 3800 3900 3400
$Comp
L Device:CP C?
U 1 1 6940A364
P 3900 3250
AR Path="/693E033D/6940A364" Ref="C?"  Part="1" 
AR Path="/6940A364" Ref="C17"  Part="1" 
F 0 "C17" H 4018 3296 50  0000 L CNN
F 1 "100uF" H 4018 3205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3938 3100 50  0001 C CNN
F 3 "~" H 3900 3250 50  0001 C CNN
	1    3900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1700 3900 1700
Connection ~ 3400 1700
Wire Wire Line
	3900 3800 3550 3800
Connection ~ 15600 8100
Wire Wire Line
	15600 8100 15600 8050
Wire Wire Line
	15600 8150 15600 8300
Wire Wire Line
	17200 8450 17200 10500
Wire Wire Line
	17200 8450 15600 8450
Connection ~ 15600 8450
Wire Wire Line
	15600 8450 15600 8700
$Comp
L 74xx:74LS30 U5
U 1 1 6924DF8D
P 11150 1850
F 0 "U5" H 11150 2375 50  0000 C CNN
F 1 "74LS30" H 11150 2284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 11150 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 11150 1850 50  0001 C CNN
	1    11150 1850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 3 1 69280849
P 7750 2750
F 0 "U1" H 7500 2900 50  0000 C CNN
F 1 "74LS04" H 7950 2900 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7750 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7750 2750 50  0001 C CNN
	3    7750 2750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 5 1 692835D8
P 10400 2500
F 0 "U1" H 10150 2650 50  0000 C CNN
F 1 "74LS04" H 10550 2650 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 10400 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 10400 2500 50  0001 C CNN
	5    10400 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 6 1 69284EB3
P 8150 8750
F 0 "U1" H 7900 8900 50  0000 C CNN
F 1 "74LS04" H 8250 8900 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8150 8750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8150 8750 50  0001 C CNN
	6    8150 8750
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM2:SLIDE_SWITCH_3P S1
U 1 1 692DC95F
P 8550 2950
F 0 "S1" H 8550 3015 50  0000 C CNN
F 1 "A3_select" V 8650 2450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8550 2975 50  0001 C CNN
F 3 "" H 8550 2975 50  0001 C CNN
	1    8550 2950
	0    -1   -1   0   
$EndComp
$Comp
L Memory_RAM2:SLIDE_SWITCH_3P S2
U 1 1 692DDCEB
P 8550 3550
F 0 "S2" H 8550 3615 50  0000 C CNN
F 1 "A2_select" V 8650 3050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8550 3575 50  0001 C CNN
F 3 "" H 8550 3575 50  0001 C CNN
	1    8550 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 2750 8750 2750
Wire Wire Line
	7450 3150 8750 3150
Wire Wire Line
	8050 3350 8750 3350
Wire Wire Line
	7450 3750 8750 3750
Wire Wire Line
	7450 2750 7450 3150
Wire Wire Line
	7450 3350 7450 3750
Wire Wire Line
	9100 1900 9100 1750
Wire Wire Line
	9100 1750 10850 1750
Wire Wire Line
	9200 2300 9200 1850
Wire Wire Line
	9200 1850 10850 1850
Wire Wire Line
	8900 2950 9300 2950
Wire Wire Line
	9300 2950 9300 1950
Wire Wire Line
	9300 1950 10850 1950
Wire Wire Line
	8900 3550 9400 3550
Wire Wire Line
	9400 3550 9400 2050
Wire Wire Line
	9400 2050 10850 2050
Text Label 7250 1350 0    50   ~ 0
A7
Text Label 7250 1650 0    50   ~ 0
A6
Text Label 7250 1900 0    50   ~ 0
A5
Text Label 7250 2300 0    50   ~ 0
A4
Text Label 7250 3350 0    50   ~ 0
A2
Text Label 12400 1950 0    50   ~ 0
A1
Text Label 12400 1850 0    50   ~ 0
A0
Wire Wire Line
	7450 2300 7200 2300
Wire Wire Line
	7450 3350 7200 3350
Wire Wire Line
	12600 1950 12350 1950
Wire Wire Line
	12600 1850 12350 1850
Wire Wire Line
	7450 2750 7200 2750
Text Label 7250 2750 0    50   ~ 0
A3
Text Label 12350 2050 0    50   ~ 0
~RD
Text Label 12350 4000 0    50   ~ 0
~WR
Wire Wire Line
	12350 4000 12600 4000
Wire Wire Line
	12350 2050 12600 2050
Text Label 10100 2500 2    50   ~ 0
~IOREQ
Wire Wire Line
	10100 2500 9850 2500
$Comp
L 74xx:74LS138 U11
U 1 1 6A0D5E83
P 13100 2150
F 0 "U11" H 12850 2650 50  0000 C CNN
F 1 "74LS138" H 13350 2650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 13100 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 13100 2150 50  0001 C CNN
	1    13100 2150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U12
U 1 1 6A0D6D08
P 13100 4100
F 0 "U12" H 12850 4600 50  0000 C CNN
F 1 "74LS138" H 13350 4600 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 13100 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 13100 4100 50  0001 C CNN
	1    13100 4100
	1    0    0    -1  
$EndComp
Text Label 12400 3900 0    50   ~ 0
A1
Text Label 12400 3800 0    50   ~ 0
A0
Wire Wire Line
	12600 3900 12350 3900
Wire Wire Line
	12600 3800 12350 3800
NoConn ~ 13600 2250
NoConn ~ 13600 2350
NoConn ~ 13600 2450
NoConn ~ 13600 4200
NoConn ~ 13600 4300
NoConn ~ 13600 4400
NoConn ~ 13600 4500
Wire Wire Line
	11450 1850 11900 1850
Wire Wire Line
	11900 1850 11900 2450
Wire Wire Line
	11900 2450 12500 2450
Wire Wire Line
	12500 2450 12500 2550
Wire Wire Line
	12500 2550 12600 2550
Connection ~ 12500 2450
Wire Wire Line
	12500 2450 12600 2450
Wire Wire Line
	11900 2450 11900 4400
Wire Wire Line
	11900 4400 12500 4400
Connection ~ 11900 2450
Wire Wire Line
	12600 4500 12500 4500
Wire Wire Line
	12500 4500 12500 4400
Connection ~ 12500 4400
Wire Wire Line
	12500 4400 12600 4400
$Comp
L power:+5V #PWR?
U 1 1 6A5B1D7F
P 12150 1500
AR Path="/6274F952/6A5B1D7F" Ref="#PWR?"  Part="1" 
AR Path="/6A5B1D7F" Ref="#PWR013"  Part="1" 
AR Path="/636550FF/6A5B1D7F" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/6A5B1D7F" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/6A5B1D7F" Ref="#PWR?"  Part="1" 
F 0 "#PWR013" H 12150 1350 50  0001 C CNN
F 1 "+5V" H 12165 1673 50  0000 C CNN
F 2 "" H 12150 1500 50  0001 C CNN
F 3 "" H 12150 1500 50  0001 C CNN
	1    12150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12150 1500 12150 2350
Wire Wire Line
	12150 2350 12600 2350
Wire Wire Line
	12150 2350 12150 4300
Wire Wire Line
	12150 4300 12600 4300
Connection ~ 12150 2350
$Comp
L power:+5V #PWR?
U 1 1 6A661D36
P 10450 1400
AR Path="/6274F952/6A661D36" Ref="#PWR?"  Part="1" 
AR Path="/6A661D36" Ref="#PWR06"  Part="1" 
AR Path="/636550FF/6A661D36" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/6A661D36" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/6A661D36" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 10450 1250 50  0001 C CNN
F 1 "+5V" H 10465 1573 50  0000 C CNN
F 2 "" H 10450 1400 50  0001 C CNN
F 3 "" H 10450 1400 50  0001 C CNN
	1    10450 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 2250 10450 2250
Wire Wire Line
	10450 2250 10450 1400
$Comp
L 74xx:74LS04 U2
U 1 1 6A6D81A4
P 7100 9600
F 0 "U2" H 6850 9750 50  0000 C CNN
F 1 "74LS04" H 7200 9750 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7100 9600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7100 9600 50  0001 C CNN
	1    7100 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 2500 10750 2500
Wire Wire Line
	10750 2500 10750 2150
Wire Wire Line
	10750 2150 10850 2150
Wire Wire Line
	13600 1850 13900 1850
Text Label 13700 1850 0    50   ~ 0
x0_RD
Text Label 13700 2150 0    50   ~ 0
x3_RD
NoConn ~ 13600 2550
Text Label 13700 3800 0    50   ~ 0
x0_WR
Text Label 13700 3900 0    50   ~ 0
x1_WR
Text Label 13700 4000 0    50   ~ 0
x2_WR
Text Label 13700 4100 0    50   ~ 0
x3_WR
$Comp
L 74xx:74LS04 U2
U 2 1 6AC18CCB
P 5000 15600
F 0 "U2" H 5000 15917 50  0000 C CNN
F 1 "74LS04" H 5000 15826 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5000 15600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5000 15600 50  0001 C CNN
	2    5000 15600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 9600 7400 9600
Text Label 7400 8750 0    50   ~ 0
x0_RD
Wire Wire Line
	18550 10350 19250 10350
Wire Wire Line
	13600 2150 15600 2150
Wire Wire Line
	15400 4100 15400 2350
Wire Wire Line
	15400 2350 15600 2350
Wire Wire Line
	13600 4100 15400 4100
Wire Wire Line
	16200 2250 21050 2250
Wire Wire Line
	21050 2250 21050 7600
Wire Wire Line
	19050 9900 21050 9900
Wire Wire Line
	19050 9800 20150 9800
Text Label 19900 9800 0    50   ~ 0
x3_RD
Wire Wire Line
	7400 8750 7850 8750
Wire Wire Line
	11150 8750 8450 8750
$Comp
L 74xx:74LS04 U2
U 3 1 6B1F723C
P 5000 16150
F 0 "U2" H 4750 16300 50  0000 C CNN
F 1 "74LS04" H 5200 16300 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5000 16150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5000 16150 50  0001 C CNN
	3    5000 16150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 9600 6700 9600
Wire Wire Line
	6700 9600 6700 7600
Wire Wire Line
	6700 7600 21050 7600
Connection ~ 21050 7600
Wire Wire Line
	21050 7600 21050 9900
Wire Wire Line
	9500 12300 9600 12300
Wire Wire Line
	9600 12300 9600 12700
$Comp
L 74xx:74LS11 U14
U 2 1 6B3556F1
P 15900 3900
F 0 "U14" H 15900 4225 50  0000 C CNN
F 1 "74LS11" H 15900 4134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 15900 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS11" H 15900 3900 50  0001 C CNN
	2    15900 3900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS11 U14
U 1 1 6B38F685
P 15900 2250
F 0 "U14" H 15900 2575 50  0000 C CNN
F 1 "74LS11" H 15900 2484 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 15900 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS11" H 15900 2250 50  0001 C CNN
	1    15900 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	15600 2250 15400 2250
Wire Wire Line
	15400 2250 15400 2350
Connection ~ 15400 2350
Wire Wire Line
	13600 3800 15600 3800
Wire Wire Line
	13600 3900 15600 3900
Wire Wire Line
	13600 4000 15600 4000
Wire Wire Line
	9500 12400 9700 12400
Wire Wire Line
	9700 12400 9700 10550
Wire Wire Line
	6050 10550 9700 10550
Wire Wire Line
	6050 6150 16450 6150
Wire Wire Line
	16450 6150 16450 3900
Wire Wire Line
	16450 3900 16200 3900
Text Label 16500 10100 0    50   ~ 0
x3_WR
Text Label 5300 6450 0    50   ~ 0
x0_WR
Text Label 5300 6350 0    50   ~ 0
x1_WR
Text Label 5300 6250 0    50   ~ 0
x2_WR
NoConn ~ 13600 1950
NoConn ~ 13600 2050
$Comp
L 74xx:74LS11 U14
U 3 1 6B7B280E
P 5000 13400
F 0 "U14" H 5000 13725 50  0000 C CNN
F 1 "74LS11" H 5000 13634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5000 13400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS11" H 5000 13400 50  0001 C CNN
	3    5000 13400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS11 U14
U 4 1 6B7C61B7
P 6700 12000
F 0 "U14" H 6930 12046 50  0000 L CNN
F 1 "74LS11" H 6930 11955 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6700 12000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS11" H 6700 12000 50  0001 C CNN
	4    6700 12000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 4 1 6B8083AA
P 5000 16750
F 0 "U2" H 5000 17067 50  0000 C CNN
F 1 "74LS04" H 5000 16976 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5000 16750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5000 16750 50  0001 C CNN
	4    5000 16750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 5 1 6B809B00
P 5000 17550
F 0 "U2" H 5000 17867 50  0000 C CNN
F 1 "74LS04" H 5000 17776 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5000 17550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5000 17550 50  0001 C CNN
	5    5000 17550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 6 1 6B80B03B
P 5000 18150
F 0 "U2" H 5000 18467 50  0000 C CNN
F 1 "74LS04" H 5000 18376 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5000 18150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5000 18150 50  0001 C CNN
	6    5000 18150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 7 1 6B80CD13
P 1750 12000
F 0 "U1" H 1980 12046 50  0000 L CNN
F 1 "74LS04" H 1980 11955 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1750 12000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1750 12000 50  0001 C CNN
	7    1750 12000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U2
U 7 1 6B815BC8
P 3000 12000
F 0 "U2" H 3230 12046 50  0000 L CNN
F 1 "74LS04" H 3230 11955 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3000 12000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3000 12000 50  0001 C CNN
	7    3000 12000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS30 U5
U 2 1 6B821410
P 5450 12000
F 0 "U5" H 5680 12046 50  0000 L CNN
F 1 "74LS30" H 5680 11955 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5450 12000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS30" H 5450 12000 50  0001 C CNN
	2    5450 12000
	1    0    0    -1  
$EndComp
NoConn ~ 5300 13400
Wire Wire Line
	4700 13300 4600 13300
Wire Wire Line
	4600 13300 4600 13400
Connection ~ 4600 14000
Wire Wire Line
	4700 13400 4600 13400
Connection ~ 4600 13400
Wire Wire Line
	4600 13400 4600 13500
Wire Wire Line
	4700 13500 4600 13500
Connection ~ 4600 13500
Wire Wire Line
	4600 13500 4600 14000
Wire Wire Line
	4600 15050 4600 15600
Wire Wire Line
	4700 15600 4600 15600
Connection ~ 4600 15600
Wire Wire Line
	4600 15600 4600 16150
Wire Wire Line
	4700 16150 4600 16150
Connection ~ 4600 16150
Wire Wire Line
	4600 16150 4600 16750
Wire Wire Line
	4700 16750 4600 16750
Connection ~ 4600 16750
NoConn ~ 5300 15600
NoConn ~ 5300 16150
NoConn ~ 5300 16750
$Comp
L Device:C C?
U 1 1 6BB3B83B
P 2450 11900
AR Path="/6274F952/6BB3B83B" Ref="C?"  Part="1" 
AR Path="/6BB3B83B" Ref="C2"  Part="1" 
AR Path="/636550FF/6BB3B83B" Ref="C?"  Part="1" 
AR Path="/6687DD68/6BB3B83B" Ref="C?"  Part="1" 
AR Path="/6921BBA5/6BB3B83B" Ref="C?"  Part="1" 
F 0 "C2" H 2565 11946 50  0000 L CNN
F 1 "0.1uF" H 2565 11855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 2488 11750 50  0001 C CNN
F 3 "~" H 2450 11900 50  0001 C CNN
	1    2450 11900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 11750 2450 11400
Wire Wire Line
	2450 12050 2450 12600
$Comp
L Device:C C?
U 1 1 6BBC2A56
P 3650 11900
AR Path="/6274F952/6BBC2A56" Ref="C?"  Part="1" 
AR Path="/6BBC2A56" Ref="C3"  Part="1" 
AR Path="/636550FF/6BBC2A56" Ref="C?"  Part="1" 
AR Path="/6687DD68/6BBC2A56" Ref="C?"  Part="1" 
AR Path="/6921BBA5/6BBC2A56" Ref="C?"  Part="1" 
F 0 "C3" H 3765 11946 50  0000 L CNN
F 1 "0.1uF" H 3765 11855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 3688 11750 50  0001 C CNN
F 3 "~" H 3650 11900 50  0001 C CNN
	1    3650 11900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 11750 3650 11400
Wire Wire Line
	3650 12050 3650 12600
$Comp
L Device:C C?
U 1 1 6BC474D8
P 4900 11900
AR Path="/6274F952/6BC474D8" Ref="C?"  Part="1" 
AR Path="/6BC474D8" Ref="C5"  Part="1" 
AR Path="/636550FF/6BC474D8" Ref="C?"  Part="1" 
AR Path="/6687DD68/6BC474D8" Ref="C?"  Part="1" 
AR Path="/6921BBA5/6BC474D8" Ref="C?"  Part="1" 
F 0 "C5" H 5015 11946 50  0000 L CNN
F 1 "0.1uF" H 5015 11855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 4938 11750 50  0001 C CNN
F 3 "~" H 4900 11900 50  0001 C CNN
	1    4900 11900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 11750 4900 11400
Wire Wire Line
	4900 12050 4900 12600
$Comp
L Device:C C?
U 1 1 6BCCD66F
P 6150 11900
AR Path="/6274F952/6BCCD66F" Ref="C?"  Part="1" 
AR Path="/6BCCD66F" Ref="C14"  Part="1" 
AR Path="/636550FF/6BCCD66F" Ref="C?"  Part="1" 
AR Path="/6687DD68/6BCCD66F" Ref="C?"  Part="1" 
AR Path="/6921BBA5/6BCCD66F" Ref="C?"  Part="1" 
F 0 "C14" H 6265 11946 50  0000 L CNN
F 1 "0.1uF" H 6265 11855 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 6188 11750 50  0001 C CNN
F 3 "~" H 6150 11900 50  0001 C CNN
	1    6150 11900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 11400 6700 11500
Wire Wire Line
	1750 11400 2450 11400
Connection ~ 2450 11400
Wire Wire Line
	2450 11400 3000 11400
Connection ~ 3650 11400
Wire Wire Line
	3650 11400 4200 11400
Connection ~ 4900 11400
Wire Wire Line
	4900 11400 5450 11400
Wire Wire Line
	6150 11750 6150 11400
Connection ~ 6150 11400
Wire Wire Line
	6150 11400 6700 11400
Wire Wire Line
	6700 12500 6700 12600
Wire Wire Line
	4900 12600 5450 12600
Wire Wire Line
	6150 12050 6150 12600
Connection ~ 6150 12600
Wire Wire Line
	6150 12600 6700 12600
Wire Wire Line
	5450 12500 5450 12600
Connection ~ 5450 12600
Wire Wire Line
	5450 12600 6150 12600
Wire Wire Line
	5450 11500 5450 11400
Connection ~ 5450 11400
Wire Wire Line
	5450 11400 6150 11400
Wire Wire Line
	1750 12600 2450 12600
Connection ~ 4900 12600
Connection ~ 2450 12600
Wire Wire Line
	2450 12600 3000 12600
Connection ~ 3650 12600
Wire Wire Line
	3650 12600 4200 12600
Wire Wire Line
	3000 12500 3000 12600
Connection ~ 3000 12600
Wire Wire Line
	3000 12600 3650 12600
Wire Wire Line
	4200 12500 4200 12600
Connection ~ 4200 12600
Wire Wire Line
	4200 12600 4900 12600
Wire Wire Line
	4200 11500 4200 11400
Connection ~ 4200 11400
Wire Wire Line
	4200 11400 4900 11400
Wire Wire Line
	3000 11500 3000 11400
Connection ~ 3000 11400
Wire Wire Line
	3000 11400 3650 11400
$Comp
L Device:C C?
U 1 1 6C5A4175
P 14300 1850
AR Path="/6274F952/6C5A4175" Ref="C?"  Part="1" 
AR Path="/6C5A4175" Ref="C11"  Part="1" 
AR Path="/636550FF/6C5A4175" Ref="C?"  Part="1" 
AR Path="/6687DD68/6C5A4175" Ref="C?"  Part="1" 
AR Path="/6921BBA5/6C5A4175" Ref="C?"  Part="1" 
F 0 "C11" H 14415 1896 50  0000 L CNN
F 1 "0.1uF" H 14415 1805 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 14338 1700 50  0001 C CNN
F 3 "~" H 14300 1850 50  0001 C CNN
	1    14300 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6C690B8C
P 14250 4400
AR Path="/6274F952/6C690B8C" Ref="C?"  Part="1" 
AR Path="/6C690B8C" Ref="C12"  Part="1" 
AR Path="/636550FF/6C690B8C" Ref="C?"  Part="1" 
AR Path="/6687DD68/6C690B8C" Ref="C?"  Part="1" 
AR Path="/6921BBA5/6C690B8C" Ref="C?"  Part="1" 
F 0 "C12" H 14365 4446 50  0000 L CNN
F 1 "0.1uF" H 14365 4355 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L4.0mm_W2.5mm_P2.50mm" H 14288 4250 50  0001 C CNN
F 3 "~" H 14250 4400 50  0001 C CNN
	1    14250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13100 1550 13100 1500
Wire Wire Line
	13100 1500 14300 1500
Wire Wire Line
	14300 2000 14300 2900
Wire Wire Line
	14300 2900 13100 2900
Wire Wire Line
	13100 2900 13100 2850
Wire Wire Line
	13100 3500 13100 3450
Wire Wire Line
	13100 3450 14250 3450
Wire Wire Line
	14250 3450 14250 4250
Wire Wire Line
	14250 4550 14250 4850
Wire Wire Line
	14250 4850 13100 4850
Wire Wire Line
	13100 4850 13100 4800
$Comp
L power:+5V #PWR?
U 1 1 6C7F2970
P 13100 1450
AR Path="/6274F952/6C7F2970" Ref="#PWR?"  Part="1" 
AR Path="/6C7F2970" Ref="#PWR0101"  Part="1" 
AR Path="/636550FF/6C7F2970" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/6C7F2970" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/6C7F2970" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 13100 1300 50  0001 C CNN
F 1 "+5V" H 13115 1623 50  0000 C CNN
F 2 "" H 13100 1450 50  0001 C CNN
F 3 "" H 13100 1450 50  0001 C CNN
	1    13100 1450
	1    0    0    -1  
$EndComp
Connection ~ 13100 1500
Wire Wire Line
	13100 1500 13100 1450
Wire Wire Line
	14300 1500 14300 1700
$Comp
L power:+5V #PWR?
U 1 1 6C8D1414
P 13100 3450
AR Path="/6274F952/6C8D1414" Ref="#PWR?"  Part="1" 
AR Path="/6C8D1414" Ref="#PWR0102"  Part="1" 
AR Path="/636550FF/6C8D1414" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/6C8D1414" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/6C8D1414" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 13100 3300 50  0001 C CNN
F 1 "+5V" H 13115 3623 50  0000 C CNN
F 2 "" H 13100 3450 50  0001 C CNN
F 3 "" H 13100 3450 50  0001 C CNN
	1    13100 3450
	1    0    0    -1  
$EndComp
Connection ~ 13100 3450
$Comp
L power:GND #PWR?
U 1 1 6C9700A0
P 13100 4850
AR Path="/6274F952/6C9700A0" Ref="#PWR?"  Part="1" 
AR Path="/6C9700A0" Ref="#PWR0103"  Part="1" 
AR Path="/636550FF/6C9700A0" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/6C9700A0" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/6C9700A0" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 13100 4600 50  0001 C CNN
F 1 "GND" H 13105 4677 50  0000 C CNN
F 2 "" H 13100 4850 50  0001 C CNN
F 3 "" H 13100 4850 50  0001 C CNN
	1    13100 4850
	1    0    0    -1  
$EndComp
Connection ~ 13100 4850
$Comp
L power:GND #PWR?
U 1 1 6CA559D4
P 13100 2900
AR Path="/6274F952/6CA559D4" Ref="#PWR?"  Part="1" 
AR Path="/6CA559D4" Ref="#PWR0104"  Part="1" 
AR Path="/636550FF/6CA559D4" Ref="#PWR?"  Part="1" 
AR Path="/6687DD68/6CA559D4" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/6CA559D4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 13100 2650 50  0001 C CNN
F 1 "GND" H 13105 2727 50  0000 C CNN
F 2 "" H 13100 2900 50  0001 C CNN
F 3 "" H 13100 2900 50  0001 C CNN
	1    13100 2900
	1    0    0    -1  
$EndComp
Connection ~ 13100 2900
NoConn ~ 5300 3300
NoConn ~ 14600 9500
$Comp
L 74xx:74LS04 U1
U 4 1 692820BD
P 7750 3350
F 0 "U1" H 7500 3500 50  0000 C CNN
F 1 "74LS04" H 7900 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7750 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7750 3350 50  0001 C CNN
	4    7750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1650 7450 1650
Wire Wire Line
	8050 2300 9200 2300
$Comp
L 74xx:74LS04 U1
U 1 1 69B8FDDA
P 7750 1650
F 0 "U1" H 7500 1800 50  0000 C CNN
F 1 "74LS04" H 7850 1800 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7750 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7750 1650 50  0001 C CNN
	1    7750 1650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U1
U 2 1 69BD8EDA
P 7750 2300
F 0 "U1" H 7500 2450 50  0000 C CNN
F 1 "74LS04" H 7850 2450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 7750 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7750 2300 50  0001 C CNN
	2    7750 2300
	1    0    0    -1  
$EndComp
Connection ~ 7450 2750
Connection ~ 7450 3350
$Comp
L power:GND #PWR?
U 1 1 6A2ED500
P 4600 18400
AR Path="/636550FF/6A2ED500" Ref="#PWR?"  Part="1" 
AR Path="/6A2ED500" Ref="#PWR0105"  Part="1" 
AR Path="/6687DD68/6A2ED500" Ref="#PWR?"  Part="1" 
AR Path="/6921BBA5/6A2ED500" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 4600 18150 50  0001 C CNN
F 1 "GND" H 4605 18227 50  0000 C CNN
F 2 "" H 4600 18400 50  0001 C CNN
F 3 "" H 4600 18400 50  0001 C CNN
	1    4600 18400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 17550 4600 17550
Connection ~ 4600 17550
Wire Wire Line
	4600 17550 4600 18150
Wire Wire Line
	4700 18150 4600 18150
Connection ~ 4600 18150
Wire Wire Line
	4600 18150 4600 18400
NoConn ~ 5300 17550
NoConn ~ 5300 18150
Wire Wire Line
	4600 16750 4600 17550
Wire Wire Line
	7200 1900 9100 1900
Wire Wire Line
	8050 1650 10850 1650
Wire Wire Line
	9100 1350 9100 1550
Wire Wire Line
	9100 1550 10850 1550
Wire Wire Line
	7200 1350 9100 1350
Wire Wire Line
	15600 12550 17200 12550
Wire Wire Line
	11900 4400 11900 6850
Wire Wire Line
	11900 6850 17700 6850
Wire Wire Line
	17700 6850 17700 8300
Wire Wire Line
	17700 9900 16400 9900
Connection ~ 11900 4400
Connection ~ 16400 9900
$Comp
L Device:R R?
U 1 1 6942A7C9
P 17450 8300
AR Path="/6921BBA5/6942A7C9" Ref="R?"  Part="1" 
AR Path="/6942A7C9" Ref="R2"  Part="1" 
F 0 "R2" V 17657 8300 50  0000 C CNN
F 1 "10k" V 17566 8300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 17380 8300 50  0001 C CNN
F 3 "~" H 17450 8300 50  0001 C CNN
	1    17450 8300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	17600 8300 17700 8300
Connection ~ 17700 8300
Wire Wire Line
	17700 8300 17700 9900
Wire Wire Line
	17300 8300 15600 8300
Connection ~ 15600 8300
Wire Wire Line
	15600 8300 15600 8450
$EndSCHEMATC
