1000	' HALFG.BAS
1010	'
1020	' USING UTF-8 HALF-PIXEL GRAPHICS IN UTF-8, DISPLAY
1030	' A LINE OF TEXT USING SCOPEWRITER CHARACTER SET
1040	'
1050	CLEAR 2000
1060	'
1070	' 2X2 HALF-CELL GRAPHICS
1080	'
1090	' EACH CELL IS 2X2 GRAPHIC ELEMENTS, MEANING A 80X24
1100	' TERMINAL HAS 160X48 DOTS. VIEW THE INDEX AS A 4 BIT
1110	' VALUE ABCD, AND THE GRAPHIC IS:
1120	'         A B
1130	'         C D
1140	' REQUIRES UTF-8
1150	'
1160	DIM T$(16)
1170	T$(0) = " "
1180	FOR I%=1 TO 15
1190	  READ C1%,C2%,C3%
1200	  T$(I%)=CHR$(C1%)+CHR$(C2%)+CHR$(C3%)
1210	NEXT I%
1220	DATA #E2,#96,#97, #E2,#96,#96, #E2,#96,#84
1230	DATA #E2,#96,#9D, #E2,#96,#90, #E2,#96,#9E
1240	DATA #E2,#96,#9F, #E2,#96,#98, #E2,#96,#9A
1250	DATA #E2,#96,#8C, #E2,#96,#99, #E2,#96,#80
1260	DATA #E2,#96,#9C, #E2,#96,#9B, #E2,#96,#88
1270	'
1280	' 5X7 SCOPEWRITER FONT
1290	'
1300	' FROM POPULAR ELECTRONICS, AUGUST 1974, PAGE 35
1310	' C%(N) MAPS EACH INDEX TO THE CODE USED. NOTE THAT
1320	' @ IS 0, NOT #40!
1330	'
1340	' F%(N,7) IS THE IMAGE FOR EACH ROW FOR CHARACTER N
1350	'
1360	DIM C%(64)
1370	DIM F%(64,7)
1380	FOR I%=0 TO 63
1390	  READ N%
1410	  C%(I%)=N%
1420	  FOR J%=0 TO 6
1430	    READ N%
1450	    F%(I%,J%)=N%
1460	  NEXT J%
1470	NEXT I%
1480	DATA &000000 : ' @
1490	DATA &01110
1500	DATA &10001
1510	DATA &10011
1520	DATA &10101
1530	DATA &10111
1540	DATA &10000
1550	DATA &01110
1560	DATA &100000 : '
1570	DATA &00000
1580	DATA &00000
1590	DATA &00000
1600	DATA &00000
1610	DATA &00000
1620	DATA &00000
1630	DATA &00000
1640	DATA &000001 :' A
1650	DATA &00100
1660	DATA &01010
1670	DATA &10001
1680	DATA &10001
1690	DATA &11111
1700	DATA &10001
1710	DATA &10001
1720	DATA &100001 :' !
1730	DATA &00100
1740	DATA &00100
1750	DATA &00100
1760	DATA &00100
1770	DATA &00100
1780	DATA &00000
1790	DATA &00100
1800	DATA &000010 :' B
1810	DATA &11110
1820	DATA &10001
1830	DATA &10001
1840	DATA &11110
1850	DATA &10001
1860	DATA &10001
1870	DATA &11110
1880	DATA &100010 :' "
1890	DATA &01010
1900	DATA &01010
1910	DATA &01010
1920	DATA &00000
1930	DATA &00000
1940	DATA &00000
1950	DATA &00000
1960	DATA &000011 :' C
1970	DATA &01110
1980	DATA &10001
1990	DATA &10000
2000	DATA &10000
2010	DATA &10000
2020	DATA &10001
2030	DATA &01110
2040	DATA &100011 :' #
2050	DATA &01010
2060	DATA &01010
2070	DATA &11111
2080	DATA &01010
2090	DATA &11111
2100	DATA &01010
2110	DATA &01010
2120	DATA &000100 :' D
2130	DATA &11110
2140	DATA &01001
2150	DATA &01001
2160	DATA &01001
2170	DATA &01001
2180	DATA &01001
2190	DATA &11110
2200	DATA &100100 :' $
2210	DATA &00100
2220	DATA &01111
2230	DATA &10100
2240	DATA &01110
2250	DATA &00101
2260	DATA &11110
2270	DATA &00100
2280	DATA &000101 :' E
2290	DATA &11111
2300	DATA &10000
2310	DATA &10000
2320	DATA &11110
2330	DATA &10000
2340	DATA &10000
2350	DATA &11111
2360	DATA &100101 :' %
2370	DATA &11000
2380	DATA &11001
2390	DATA &00010
2400	DATA &00100
2410	DATA &01000
2420	DATA &10011
2430	DATA &00011
2440	DATA &000110 :' F
2450	DATA &11111
2460	DATA &10000
2470	DATA &10000
2480	DATA &11110
2490	DATA &10000
2500	DATA &10000
2510	DATA &10000
2520	DATA &100110 :' &
2530	DATA &00100
2540	DATA &01010
2550	DATA &01010
2560	DATA &01100
2570	DATA &10101
2580	DATA &10010
2590	DATA &01101
2600	DATA &000111 :' G
2610	DATA &01110
2620	DATA &10001
2630	DATA &10000
2640	DATA &10000
2650	DATA &10011
2660	DATA &10001
2670	DATA &01111
2680	DATA &100111 :' '
2690	DATA &00100
2700	DATA &00100
2710	DATA &01000
2720	DATA &00000
2730	DATA &00000
2740	DATA &00000
2750	DATA &00000
2760	DATA &001000 :' H
2770	DATA &10001
2780	DATA &10001
2790	DATA &10001
2800	DATA &11111
2810	DATA &10001
2820	DATA &10001
2830	DATA &10001
2840	DATA &101000 :' (
2850	DATA &00010
2860	DATA &00100
2870	DATA &01000
2880	DATA &01000
2890	DATA &01000
2900	DATA &00100
2910	DATA &00010
2920	DATA &001001 :' I
2930	DATA &01110
2940	DATA &00100
2950	DATA &00100
2960	DATA &00100
2970	DATA &00100
2980	DATA &00100
2990	DATA &01110
3000	DATA &101001 :' )
3010	DATA &01000
3020	DATA &00100
3030	DATA &00010
3040	DATA &00010
3050	DATA &00010
3060	DATA &00100
3070	DATA &01000
3080	DATA &001010 :' J
3090	DATA &00001
3100	DATA &00001
3110	DATA &00001
3120	DATA &00001
3130	DATA &10001
3140	DATA &10001
3150	DATA &01110
3160	DATA &101010 :' *
3170	DATA &00000
3180	DATA &00100
3190	DATA &10101
3200	DATA &01110
3210	DATA &10101
3220	DATA &00100
3230	DATA &00000
3240	DATA &001011 :' K
3250	DATA &10001
3260	DATA &10010
3270	DATA &10100
3280	DATA &11000
3290	DATA &10100
3300	DATA &10010
3310	DATA &10001
3320	DATA &101011 :' +
3330	DATA &00000
3340	DATA &00100
3350	DATA &00100
3360	DATA &11111
3370	DATA &00100
3380	DATA &00100
3390	DATA &00000
3400	DATA &001100 :' L
3410	DATA &10000
3420	DATA &10000
3430	DATA &10000
3440	DATA &10000
3450	DATA &10000
3460	DATA &10000
3470	DATA &11111
3480	DATA &101100 :' ,
3490	DATA &00000
3500	DATA &00000
3510	DATA &00000
3520	DATA &00000
3530	DATA &01000
3540	DATA &01000
3550	DATA &10000
3560	DATA &001101 :' M
3570	DATA &10001
3580	DATA &11011
3590	DATA &10101
3600	DATA &10101
3610	DATA &10001
3620	DATA &10001
3630	DATA &10001
3640	DATA &101101 :' -
3650	DATA &00000
3660	DATA &00000
3670	DATA &00000
3680	DATA &11111
3690	DATA &00000
3700	DATA &00000
3710	DATA &00000
3720	DATA &001110 :' N
3730	DATA &10001
3740	DATA &10001
3750	DATA &11001
3760	DATA &10101
3770	DATA &10011
3780	DATA &10001
3790	DATA &10001
3800	DATA &101110 :' .
3810	DATA &00000
3820	DATA &00000
3830	DATA &00000
3840	DATA &00000
3850	DATA &00000
3860	DATA &00000
3870	DATA &11000
3880	DATA &001111 :' O
3890	DATA &01110
3900	DATA &10001
3910	DATA &10001
3920	DATA &10001
3930	DATA &10001
3940	DATA &10001
3950	DATA &01110
3960	DATA &101111 :' /
3970	DATA &00000
3980	DATA &00001
3990	DATA &00010
4000	DATA &00100
4010	DATA &01000
4020	DATA &10000
4030	DATA &00000
4040	DATA &010000 :' P
4050	DATA &11110
4060	DATA &10001
4070	DATA &10001
4080	DATA &11110
4090	DATA &10000
4100	DATA &10000
4110	DATA &10000
4120	DATA &110000 :' 0
4130	DATA &01110
4140	DATA &10001
4150	DATA &10011
4160	DATA &10101
4170	DATA &11001
4180	DATA &10001
4190	DATA &01110
4200	DATA &010001 :' Q
4210	DATA &01110
4220	DATA &10001
4230	DATA &10001
4240	DATA &10001
4250	DATA &10101
4260	DATA &10010
4270	DATA &01101
4280	DATA &110001 :' 1
4290	DATA &00100
4300	DATA &01100
4310	DATA &00100
4320	DATA &00100
4330	DATA &00100
4340	DATA &00100
4350	DATA &01110
4360	DATA &010010 :' R
4370	DATA &111,1,0
4380	DATA &10001
4390	DATA &10001
4400	DATA &11110
4410	DATA &10100
4420	DATA &10010
4430	DATA &10001
4440	DATA &110010 :' 2
4450	DATA &01110
4460	DATA &10001
4470	DATA &00001
4480	DATA &00110
4490	DATA &01000
4500	DATA &10000
4510	DATA &11111
4520	DATA &010011 :' S
4530	DATA &01110
4540	DATA &10001
4550	DATA &10000
4560	DATA &01110
4570	DATA &00001
4580	DATA &10001
4590	DATA &01110
4600	DATA &110011 :' 3
4610	DATA &11111
4620	DATA &00001
4630	DATA &00010
4640	DATA &00110
4650	DATA &00001
4660	DATA &10001
4670	DATA &01110
4680	DATA &010100 :' T
4690	DATA &11111
4700	DATA &00100
4710	DATA &00100
4720	DATA &00100
4730	DATA &00100
4740	DATA &00100
4750	DATA &00100
4760	DATA &110100 :' 4
4770	DATA &00010
4780	DATA &00110
4790	DATA &01010
4800	DATA &10010
4810	DATA &11111
4820	DATA &00010
4830	DATA &00010
4840	DATA &010101 :' U
4850	DATA &10001
4860	DATA &10001
4870	DATA &10001
4880	DATA &10001
4890	DATA &10001
4900	DATA &10001
4910	DATA &01110
4920	DATA &110101 :' 5
4930	DATA &11111
4940	DATA &10000
4950	DATA &11110
4960	DATA &00001
4970	DATA &00001
4980	DATA &10001
4990	DATA &01110
5000	DATA &010110 :' V
5010	DATA &10001
5020	DATA &10001
5030	DATA &10001
5040	DATA &01010
5050	DATA &01010
5060	DATA &00100
5070	DATA &00100
5080	DATA &110110 :' 6
5090	DATA &00111
5100	DATA &01000
5110	DATA &10000
5120	DATA &11110
5130	DATA &10001
5140	DATA &10001
5150	DATA &01110
5160	DATA &010111 :' W
5170	DATA &10001
5180	DATA &10001
5190	DATA &10001
5200	DATA &10101
5210	DATA &10101
5220	DATA &10101
5230	DATA &01010
5240	DATA &110111 :' 7
5250	DATA &11111
5260	DATA &00001
5270	DATA &00010
5280	DATA &00100
5290	DATA &01000
5300	DATA &01000
5310	DATA &01000
5320	DATA &011000 :' X
5330	DATA &10001
5340	DATA &10001
5350	DATA &01010
5360	DATA &00100
5370	DATA &01010
5380	DATA &10001
5390	DATA &10001
5400	DATA &111000 :' 8
5410	DATA &01110
5420	DATA &10001
5430	DATA &10001
5440	DATA &01110
5450	DATA &10001
5460	DATA &10001
5470	DATA &01110
5480	DATA &011001 :' Y
5490	DATA &10001
5500	DATA &10001
5510	DATA &01010
5520	DATA &00100
5530	DATA &00100
5540	DATA &00100
5550	DATA &00100
5560	DATA &111001 :' 9
5570	DATA &01110
5580	DATA &10001
5590	DATA &10001
5600	DATA &01111
5610	DATA &00001
5620	DATA &00010
5630	DATA &11100
5640	DATA &011010 :' Z
5650	DATA &11111
5660	DATA &00001
5670	DATA &00010
5680	DATA &00100
5690	DATA &01000
5700	DATA &10000
5710	DATA &11111
5720	DATA &111010 :' :
5730	DATA &00000
5740	DATA &00000
5750	DATA &00000
5760	DATA &00000
5770	DATA &10000
5780	DATA &00000
5790	DATA &10000
5800	DATA &011011 :' [
5810	DATA &11100
5820	DATA &10000
5830	DATA &10000
5840	DATA &10000
5850	DATA &10000
5860	DATA &10000
5870	DATA &11100
5880	DATA &111011 :' ;
5890	DATA &00000
5900	DATA &00000
5910	DATA &01000
5920	DATA &00000
5930	DATA &01000
5940	DATA &01000
5950	DATA &10000
5960	DATA &011100 :' \
5970	DATA &00000
5980	DATA &10000
5990	DATA &01000
6000	DATA &00100
6010	DATA &00010
6020	DATA &00001
6030	DATA &00000
6040	DATA &111100 :' <
6050	DATA &00010
6060	DATA &00100
6070	DATA &01000
6080	DATA &10000
6090	DATA &01000
6100	DATA &00100
6110	DATA &00010
6120	DATA &011101 :' ]
6130	DATA &00111
6140	DATA &00001
6150	DATA &00001
6160	DATA &00001
6170	DATA &00001
6180	DATA &00001
6190	DATA &00111
6200	DATA &111101 :' =
6210	DATA &00000
6220	DATA &00000
6230	DATA &11111
6240	DATA &00000
6250	DATA &11111
6260	DATA &00000
6270	DATA &00000
6280	DATA &011110 :' ^
6290	DATA &01110
6300	DATA &10001
6310	DATA &00000
6320	DATA &00000
6330	DATA &00000
6340	DATA &00000
6350	DATA &00000
6360	DATA &111110 :' >
6370	DATA &01000
6380	DATA &00100
6390	DATA &00010
6400	DATA &00001
6410	DATA &00010
6420	DATA &00100
6430	DATA &01000
6440	DATA &011111 :' _
6450	DATA &00000
6460	DATA &00000
6470	DATA &00000
6480	DATA &00000
6490	DATA &00000
6500	DATA &00000
6510	DATA &11111
6520	DATA &111111 :' ?
6530	DATA &01110
6540	DATA &10001
6550	DATA &00001
6560	DATA &00010
6570	DATA &00100
6580	DATA &00000
6590	DATA &00100
6600	'
6610	' D% IS DISPLAY 80x24. EACH ELEMENT IS A 2X2 ELEMENT.
6620	' EACH 2X2 CELL WILL BE CONVERTED TO A UTF-8 CHARACTER
6630	' ON DISPLAY
6640	'
6650	DIM D%(80,24)
6660	FOR I%=0 TO 79
6670	  FOR J%=0 TO 23
6680	    D%(I%,J%)=0
6690	  NEXT J%
6700	NEXT I%
6710	S$="HELLO"
6720	X%=0
6730	Y%=10
6740	FOR I%=1 TO LEN(S$)
6750	  C1%=ASC(MID$(S$,I%,1)) AND #3F
6760	  J%=0
6770	  IF C%(J%)=C1% THEN 6800
6780	  J%=J%+1
6790	  GOTO 6770
6800	  FOR K%=0 TO 6
6801	    V%=(Y%+K%)/2
6802	    H%=X%/2
6810	    C2%=F%(J%,K%)
6811	    IF ((Y%+K%) AND 1) = 0 THEN 6820
6812	    IF C2% AND 16 THEN D%(H%,V%)  =D%(H%,V%)   OR &0010
6813	    IF C2% AND  8 THEN D%(H%,V%)  =D%(H%,V%)   OR &0001
6814	    IF C2% AND  4 THEN D%(H%+1,V%)=D%(H%+1,V%) OR &0010
6815	    IF C2% AND  2 THEN D%(H%+1,V%)=D%(H%+1,V%) OR &0001
6816	    IF C2% AND  1 THEN D%(H%+2,V%)=D%(H%+2,V%) OR &0010
6817	    GOTO 6870
6820	    IF C2% AND 16 THEN D%(H%,V%)  =D%(H%,V%)   OR &1000
6830	    IF C2% AND  8 THEN D%(H%,V%)  =D%(H%,V%)   OR &0100
6840	    IF C2% AND  4 THEN D%(H%+1,V%)=D%(H%+1,V%) OR &1000
6850	    IF C2% AND  2 THEN D%(H%+1,V%)=D%(H%+1,V%) OR &0100
6860	    IF C2% AND  1 THEN D%(H%+2,V%)=D%(H%+2,V%) OR &1000
6870	  NEXT K%
6880	  X%=X%+6
6890	NEXT I%
6900	' WIDTH 255
6910	PRINT
6920	FOR I%=0 TO 23
6930	  L$=""
6940	  FOR J%=0 TO 78
7000	    L$=L$+T$(D%(J%,I%))
7010	  NEXT J%
7020	  PRINT L$
7030	NEXT I%
7040    IF GET$ = "" THEN 7040

