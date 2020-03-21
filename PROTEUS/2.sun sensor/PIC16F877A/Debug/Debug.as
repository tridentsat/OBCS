opt subtitle "Microchip MPLAB XC8 C Compiler v2.05 (Free license) build 20181220022703 Og9 "

opt pagewidth 120

	opt flic

	processor	16F877A
opt include "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\16f877a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 54 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
INDF equ 00h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PCL equ 02h ;# 
# 75 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
STATUS equ 03h ;# 
# 161 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
FSR equ 04h ;# 
# 168 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PORTB equ 06h ;# 
# 280 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PORTC equ 07h ;# 
# 342 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PORTD equ 08h ;# 
# 404 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PORTE equ 09h ;# 
# 436 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 456 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 534 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 596 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 650 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 657 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
T1CON equ 010h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 739 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
T2CON equ 012h ;# 
# 810 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 887 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 894 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 901 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 966 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1068 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1075 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1082 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1089 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1096 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1154 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1257 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1377 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1439 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1620 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1682 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1722 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1756 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1818 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1825 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1832 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 2001 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2089 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2159 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2231 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2290 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2297 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2304 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2311 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2318 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2363 "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_ADC_Initialize
	FNCALL	_main,_ADC_Read
	FNCALL	_main,_Lcd_Clear
	FNCALL	_main,_Lcd_Print_Ang
	FNCALL	_main,_Lcd_Print_String
	FNCALL	_main,_Lcd_Set_Cursor
	FNCALL	_main,_Lcd_Start
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___lwtoft
	FNCALL	_main,_acos
	FNCALL	_main,_sqrt
	FNCALL	_acos,___ftsub
	FNCALL	_acos,_asin
	FNCALL	_asin,___ftdiv
	FNCALL	_asin,___ftge
	FNCALL	_asin,___ftmul
	FNCALL	_asin,___ftneg
	FNCALL	_asin,___ftsub
	FNCALL	_asin,_atan
	FNCALL	_asin,_fabs
	FNCALL	_asin,_sqrt
	FNCALL	_sqrt,___ftge
	FNCALL	_sqrt,___ftmul
	FNCALL	_sqrt,___ftsub
	FNCALL	_atan,___ftdiv
	FNCALL	_atan,___ftge
	FNCALL	_atan,___ftmul
	FNCALL	_atan,___ftneg
	FNCALL	_atan,___ftsub
	FNCALL	_atan,_eval_poly
	FNCALL	_atan,_fabs
	FNCALL	_fabs,___ftge
	FNCALL	_fabs,___ftneg
	FNCALL	_eval_poly,___bmul
	FNCALL	_eval_poly,___ftadd
	FNCALL	_eval_poly,___ftmul
	FNCALL	___ftdiv,___ftpack
	FNCALL	___lwtoft,___ftpack
	FNCALL	_Lcd_Start,_Lcd_Cmd
	FNCALL	_Lcd_Start,_Lcd_SetBit
	FNCALL	_Lcd_Set_Cursor,_Lcd_Cmd
	FNCALL	_Lcd_Print_Ang,_Lcd_Print_String
	FNCALL	_Lcd_Print_Ang,___awtoft
	FNCALL	_Lcd_Print_Ang,___ftmul
	FNCALL	_Lcd_Print_Ang,___ftsub
	FNCALL	_Lcd_Print_Ang,___fttol
	FNCALL	_Lcd_Print_Ang,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_Lcd_Print_String,_Lcd_Print_Char
	FNCALL	_Lcd_Print_Char,_Lcd_SetBit
	FNCALL	_Lcd_Clear,_Lcd_Cmd
	FNCALL	_Lcd_Cmd,_Lcd_SetBit
	FNROOT	_main
	global	main@F1031
	global	main@F1029
	global	main@F1027
	global	main@F1025
	global	main@F1023
psect	idataBANK2,class=CODE,space=0,delta=2,noexec
global __pidataBANK2
__pidataBANK2:
	file	"../main.c"
	line	163

;initializer for main@F1031
	retlw	045h
	retlw	03Dh
	retlw	low(0)
	line	162

;initializer for main@F1029
	retlw	044h
	retlw	03Dh
	retlw	low(0)

;initializer for main@F1027
	retlw	043h
	retlw	03Dh
	retlw	low(0)

;initializer for main@F1025
	retlw	042h
	retlw	03Dh
	retlw	low(0)
	line	161

;initializer for main@F1023
	retlw	041h
	retlw	03Dh
	retlw	low(0)
	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\doprnt.c"
	line	358
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	atan@coeff_a
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\atan.c"
	line	10
atan@coeff_a:
	retlw	0x3c
	retlw	0x4
	retlw	0x42

	retlw	0x9f
	retlw	0x6a
	retlw	0x42

	retlw	0x90
	retlw	0x1
	retlw	0x42

	retlw	0x4d
	retlw	0xbb
	retlw	0x40

	retlw	0xec
	retlw	0x47
	retlw	0x3e

	retlw	0x8e
	retlw	0x1f
	retlw	0xbb

	global __end_ofatan@coeff_a
__end_ofatan@coeff_a:
	global	atan@coeff_b
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\atan.c"
	line	19
atan@coeff_b:
	retlw	0x3c
	retlw	0x4
	retlw	0x42

	retlw	0x5a
	retlw	0x8b
	retlw	0x42

	retlw	0x4
	retlw	0x44
	retlw	0x42

	retlw	0x9c
	retlw	0x4f
	retlw	0x41

	retlw	0x0
	retlw	0x80
	retlw	0x3f

	global __end_ofatan@coeff_b
__end_ofatan@coeff_b:
	global	_dpowers
	global	atan@coeff_a
	global	atan@coeff_b
	global	_errno
	global	_ADRESH
_ADRESH	set	0x1E
	global	_ADCON0
_ADCON0	set	0x1F
	global	_RD3
_RD3	set	0x43
	global	_RD2
_RD2	set	0x42
	global	_RD7
_RD7	set	0x47
	global	_RD6
_RD6	set	0x46
	global	_RD5
_RD5	set	0x45
	global	_RD4
_RD4	set	0x44
	global	_GO_nDONE
_GO_nDONE	set	0xFA
	global	_ADON
_ADON	set	0xF8
	global	_TRISD
_TRISD	set	0x88
	global	_ADRESL
_ADRESL	set	0x9E
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISB0
_TRISB0	set	0x430
	
STR_1:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	46	;'.'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
; #config settings
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
	file	"Debug.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_errno:
       ds      2

_i:
       ds      2

psect	dataBANK2,class=BANK2,space=1,noexec
global __pdataBANK2
__pdataBANK2:
	file	"../main.c"
	line	163
main@F1031:
       ds      3

psect	dataBANK2
	file	"../main.c"
	line	162
main@F1029:
       ds      3

psect	dataBANK2
	file	"../main.c"
	line	162
main@F1027:
       ds      3

psect	dataBANK2
	file	"../main.c"
	line	162
main@F1025:
       ds      3

psect	dataBANK2
	file	"../main.c"
	line	161
main@F1023:
       ds      3

	file	"Debug.as"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK2
	bsf	status, 7	;select IRP bank2
	movlw low(__pdataBANK2+15)
	movwf btemp-1,f
	movlw high(__pidataBANK2)
	movwf btemp,f
	movlw low(__pidataBANK2)
	movwf btemp+1,f
	movlw low(__pdataBANK2)
	movwf fsr,f
	fcall init_ram0
	line	#
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	Lcd_Print_Ang@str
Lcd_Print_Ang@str:	; 80 bytes @ 0x0
	ds	80
	global	Lcd_Print_Ang@fval
Lcd_Print_Ang@fval:	; 3 bytes @ 0x50
	ds	3
	global	Lcd_Print_Ang@ival
Lcd_Print_Ang@ival:	; 2 bytes @ 0x53
	ds	2
psect	cstackBANK2,class=BANK2,space=1,noexec
global __pcstackBANK2
__pcstackBANK2:
	global	main@a
main@a:	; 3 bytes @ 0x0
	ds	3
	global	main@b
main@b:	; 3 bytes @ 0x3
	ds	3
	global	main@c
main@c:	; 3 bytes @ 0x6
	ds	3
	global	main@d
main@d:	; 3 bytes @ 0x9
	ds	3
	global	main@e
main@e:	; 3 bytes @ 0xC
	ds	3
	global	_main$776
_main$776:	; 3 bytes @ 0xF
	ds	3
	global	_main$777
_main$777:	; 3 bytes @ 0x12
	ds	3
	global	_main$778
_main$778:	; 3 bytes @ 0x15
	ds	3
	global	_main$779
_main$779:	; 3 bytes @ 0x18
	ds	3
	global	_main$780
_main$780:	; 3 bytes @ 0x1B
	ds	3
	global	main@A
main@A:	; 3 bytes @ 0x1E
	ds	3
	global	main@B
main@B:	; 3 bytes @ 0x21
	ds	3
	global	main@C
main@C:	; 3 bytes @ 0x24
	ds	3
	global	main@D
main@D:	; 3 bytes @ 0x27
	ds	3
	global	main@E
main@E:	; 3 bytes @ 0x2A
	ds	3
	global	main@x
main@x:	; 3 bytes @ 0x2D
	ds	3
	global	main@y
main@y:	; 3 bytes @ 0x30
	ds	3
	global	main@z
main@z:	; 3 bytes @ 0x33
	ds	3
	global	main@negx
main@negx:	; 3 bytes @ 0x36
	ds	3
	global	main@negy
main@negy:	; 3 bytes @ 0x39
	ds	3
	global	main@r
main@r:	; 3 bytes @ 0x3C
	ds	3
	global	_main$781
_main$781:	; 3 bytes @ 0x3F
	ds	3
	global	_main$782
_main$782:	; 3 bytes @ 0x42
	ds	3
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	ds	3
	global	_asin$785
_asin$785:	; 3 bytes @ 0x3
	ds	3
	global	_asin$784
_asin$784:	; 3 bytes @ 0x6
	ds	3
	global	_asin$787
_asin$787:	; 3 bytes @ 0x9
	ds	3
	global	asin@y
asin@y:	; 3 bytes @ 0xC
	ds	3
	global	_asin$786
_asin$786:	; 3 bytes @ 0xF
	ds	3
??_main:	; 1 bytes @ 0x12
	ds	3
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?___ftge:	; 1 bit 
?_ADC_Initialize:	; 1 bytes @ 0x0
??_ADC_Initialize:	; 1 bytes @ 0x0
?_Lcd_SetBit:	; 1 bytes @ 0x0
??_Lcd_SetBit:	; 1 bytes @ 0x0
?_Lcd_Cmd:	; 1 bytes @ 0x0
?_Lcd_Start:	; 1 bytes @ 0x0
?_Lcd_Print_Char:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	?_ADC_Read
?_ADC_Read:	; 2 bytes @ 0x0
?_Lcd_Clear:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	Lcd_SetBit@data_bit
Lcd_SetBit@data_bit:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	ds	1
??_Lcd_Cmd:	; 1 bytes @ 0x1
??_Lcd_Print_Char:	; 1 bytes @ 0x1
??___bmul:	; 1 bytes @ 0x1
	ds	1
??_ADC_Read:	; 1 bytes @ 0x2
	global	Lcd_Print_Char@Lower_Nibble
Lcd_Print_Char@Lower_Nibble:	; 1 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	Lcd_Cmd@a
Lcd_Cmd@a:	; 1 bytes @ 0x3
	global	Lcd_Print_Char@Upper_Nibble
Lcd_Print_Char@Upper_Nibble:	; 1 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??_Lcd_Clear:	; 1 bytes @ 0x4
?_Lcd_Set_Cursor:	; 1 bytes @ 0x4
??_Lcd_Start:	; 1 bytes @ 0x4
??___fttol:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
	global	ADC_Read@channel
ADC_Read@channel:	; 1 bytes @ 0x4
	global	Lcd_Set_Cursor@b
Lcd_Set_Cursor@b:	; 1 bytes @ 0x4
	global	Lcd_Print_Char@data
Lcd_Print_Char@data:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 1 bytes @ 0x5
??_Lcd_Set_Cursor:	; 1 bytes @ 0x5
	global	Lcd_Print_Char@i
Lcd_Print_Char@i:	; 2 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??___ftge:	; 1 bytes @ 0x6
	ds	1
	global	Lcd_Set_Cursor@a
Lcd_Set_Cursor@a:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	Lcd_Print_Char@i_86
Lcd_Print_Char@i_86:	; 2 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	Lcd_Set_Cursor@z
Lcd_Set_Cursor@z:	; 1 bytes @ 0x8
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x8
	ds	1
?_Lcd_Print_String:	; 1 bytes @ 0x9
??_Lcd_Print_String:	; 1 bytes @ 0x9
	global	Lcd_Set_Cursor@y
Lcd_Set_Cursor@y:	; 1 bytes @ 0x9
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x9
	ds	1
	global	Lcd_Set_Cursor@temp
Lcd_Set_Cursor@temp:	; 1 bytes @ 0xA
	global	Lcd_Print_String@i
Lcd_Print_String@i:	; 2 bytes @ 0xA
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
??___awtoft:	; 1 bytes @ 0xB
??___lwtoft:	; 1 bytes @ 0xB
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xB
	ds	1
??___lwmod:	; 1 bytes @ 0xC
	global	Lcd_Print_String@a
Lcd_Print_String@a:	; 1 bytes @ 0xC
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xD
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
??_acos:	; 1 bytes @ 0xE
??_asin:	; 1 bytes @ 0xE
??_fabs:	; 1 bytes @ 0xE
??___ftneg:	; 1 bytes @ 0xE
??___ftsub:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftadd:	; 1 bytes @ 0x0
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x4
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x5
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x6
	ds	1
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x7
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x7
	ds	3
	global	?_fabs
?_fabs:	; 3 bytes @ 0xA
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xA
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xA
	global	fabs@d
fabs@d:	; 3 bytes @ 0xA
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xD
	ds	3
??___ftdiv:	; 1 bytes @ 0x10
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x14
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x15
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x18
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x19
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1A
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1A
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1D
	ds	3
??___ftmul:	; 1 bytes @ 0x20
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x24
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x25
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x28
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x29
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x2A
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x2A
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x2A
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x2A
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x2A
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x2A
	ds	3
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x2D
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x2D
	ds	1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x2E
	ds	2
??_sprintf:	; 1 bytes @ 0x30
??_eval_poly:	; 1 bytes @ 0x30
	global	?_sqrt
?_sqrt:	; 3 bytes @ 0x30
	global	sqrt@a
sqrt@a:	; 3 bytes @ 0x30
	ds	1
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x31
	ds	2
??_sqrt:	; 1 bytes @ 0x33
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x33
	ds	1
	global	?_atan
?_atan:	; 3 bytes @ 0x34
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x34
	global	atan@f
atan@f:	; 3 bytes @ 0x34
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x35
	ds	1
	global	sprintf@val
sprintf@val:	; 2 bytes @ 0x36
	ds	1
??_atan:	; 1 bytes @ 0x37
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x38
	global	atan@y
atan@y:	; 3 bytes @ 0x38
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x39
	global	sqrt@z
sqrt@z:	; 3 bytes @ 0x39
	ds	1
?_Lcd_Print_Ang:	; 1 bytes @ 0x3A
	global	Lcd_Print_Ang@f
Lcd_Print_Ang@f:	; 3 bytes @ 0x3A
	ds	1
	global	atan@x
atan@x:	; 3 bytes @ 0x3B
	ds	1
	global	sqrt@i
sqrt@i:	; 1 bytes @ 0x3C
	ds	1
??_Lcd_Print_Ang:	; 1 bytes @ 0x3D
	global	sqrt@q
sqrt@q:	; 3 bytes @ 0x3D
	ds	1
	global	atan@recip
atan@recip:	; 1 bytes @ 0x3E
	ds	1
	global	atan@val_squared
atan@val_squared:	; 3 bytes @ 0x3F
	ds	1
	global	sqrt@x
sqrt@x:	; 3 bytes @ 0x40
	ds	2
	global	atan@val
atan@val:	; 3 bytes @ 0x42
	ds	3
	global	?_asin
?_asin:	; 3 bytes @ 0x45
	global	asin@x
asin@x:	; 3 bytes @ 0x45
	ds	3
	global	?_acos
?_acos:	; 3 bytes @ 0x48
	global	acos@x
acos@x:	; 3 bytes @ 0x48
	ds	3
	global	_acos$783
_acos$783:	; 3 bytes @ 0x4B
	ds	3
;!
;!Data Sizes:
;!    Strings     6
;!    Constant    43
;!    Data        15
;!    BSS         4
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     78      78
;!    BANK1            80     21      25
;!    BANK3            96     85      85
;!    BANK2            96     69      84

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 18
;!		 -> atan@coeff_a(CODE[18]), atan@coeff_b(CODE[15]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 6
;!		 -> STR_1(CODE[6]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 80
;!		 -> Lcd_Print_Ang@str(BANK3[80]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    Lcd_Print_String@a	PTR unsigned char  size(1) Largest target is 80
;!		 -> main@e(BANK2[3]), main@d(BANK2[3]), main@c(BANK2[3]), main@b(BANK2[3]), 
;!		 -> main@a(BANK2[3]), Lcd_Print_Ang@str(BANK3[80]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___ftadd
;!    ___ftneg->___ftadd
;!    _eval_poly->___ftadd
;!    ___lwtoft->___ftpack
;!    _Lcd_Start->_Lcd_Cmd
;!    _Lcd_Set_Cursor->_Lcd_Cmd
;!    _Lcd_Print_Ang->___awtoft
;!    _Lcd_Print_Ang->___fttol
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    ___ftsub->___awtoft
;!    ___ftsub->___ftadd
;!    ___ftadd->___ftpack
;!    ___ftadd->___ftpack
;!    ___ftmul->___ftadd
;!    ___awtoft->___ftpack
;!    _Lcd_Print_String->_Lcd_Print_Char
;!    _Lcd_Print_Char->_Lcd_SetBit
;!    _Lcd_Clear->_Lcd_Cmd
;!    _Lcd_Cmd->_Lcd_SetBit
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_acos
;!    _acos->_asin
;!    _asin->_atan
;!    _sqrt->___ftsub
;!    _atan->_eval_poly
;!    _fabs->___ftneg
;!    ___ftneg->___ftadd
;!    _eval_poly->___ftmul
;!    ___ftdiv->___ftneg
;!    _Lcd_Print_Ang->_sprintf
;!    _sprintf->___ftmul
;!    ___ftsub->___ftmul
;!    ___ftmul->___ftdiv
;!
;!Critical Paths under _main in BANK1
;!
;!    _acos->_asin
;!
;!Critical Paths under _main in BANK3
;!
;!    _main->_Lcd_Print_Ang
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                72    72      0   95986
;!                                             18 BANK1      3     3      0
;!                                              0 BANK2     69    69      0
;!                     _ADC_Initialize
;!                           _ADC_Read
;!                          _Lcd_Clear
;!                      _Lcd_Print_Ang
;!                   _Lcd_Print_String
;!                     _Lcd_Set_Cursor
;!                          _Lcd_Start
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                           ___lwtoft
;!                               _acos
;!                               _sqrt
;! ---------------------------------------------------------------------------------
;! (1) _acos                                                 6     3      3   54796
;!                                             72 BANK0      6     3      3
;!                            ___ftsub
;!                               _asin
;! ---------------------------------------------------------------------------------
;! (2) _asin                                                21    18      3   49817
;!                                             69 BANK0      3     0      3
;!                                              0 BANK1     18    18      0
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                               _atan
;!                               _fabs
;!                               _sqrt
;! ---------------------------------------------------------------------------------
;! (1) _sqrt                                                19    16      3   10286
;!                                             48 BANK0     19    16      3
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftsub
;! ---------------------------------------------------------------------------------
;! (3) _atan                                                17    14      3   24001
;!                                             52 BANK0     17    14      3
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                          _eval_poly
;!                               _fabs
;! ---------------------------------------------------------------------------------
;! (3) _fabs                                                 3     0      3    1466
;!                                             10 BANK0      3     0      3
;!                             ___ftge
;!                            ___ftneg
;! ---------------------------------------------------------------------------------
;! (4) ___ftneg                                              3     0      3     257
;!                                              7 BANK0      3     0      3
;!                            ___ftadd (ARG)
;!                           ___ftpack (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                               6     0      6     984
;!                                              0 COMMON     6     0      6
;! ---------------------------------------------------------------------------------
;! (4) _eval_poly                                           10     4      6    8658
;!                                             42 BANK0     10     4      6
;!                             ___bmul
;!                            ___ftadd
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (5) ___bmul                                               4     3      1     160
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (4) ___ftdiv                                             16    10      6    3328
;!                                             10 BANK0     16    10      6
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___lwtoft                                             4     1      3    2273
;!                                              8 COMMON     4     1      3
;!                           _ADC_Read (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Start                                            4     4      0     347
;!                                              4 COMMON     4     4      0
;!                            _Lcd_Cmd
;!                         _Lcd_SetBit
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Set_Cursor                                       7     6      1     870
;!                                              4 COMMON     7     6      1
;!                            _Lcd_Cmd
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Print_Ang                                       89    86      3   13644
;!                                             58 BANK0      4     1      3
;!                                              0 BANK3     85    85      0
;!                   _Lcd_Print_String
;!                           ___awtoft
;!                            ___ftmul
;!                            ___ftsub
;!                            ___fttol
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             24    18      6    1090
;!                                             42 BANK0     16    10      6
;!                            ___ftmul (ARG)
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     265
;!                                              8 COMMON     6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     268
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     305
;!                                              0 COMMON    14    10      4
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    4589
;!                                             42 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             13     7      6    3780
;!                                              8 COMMON     6     0      6
;!                                              0 BANK0      7     7      0
;!                             ___bmul (ARG)
;!                           ___ftpack
;!                           ___ftpack (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             16    10      6    4222
;!                                             26 BANK0     16    10      6
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___awtoft                                             6     3      3    2130
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    1986
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Print_String                                     4     4      0     730
;!                                              9 COMMON     4     4      0
;!                     _Lcd_Print_Char
;! ---------------------------------------------------------------------------------
;! (2) _Lcd_Print_Char                                       8     8      0     390
;!                                              1 COMMON     8     8      0
;!                         _Lcd_SetBit
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Clear                                            0     0      0     155
;!                            _Lcd_Cmd
;! ---------------------------------------------------------------------------------
;! (2) _Lcd_Cmd                                              3     3      0     155
;!                                              1 COMMON     3     3      0
;!                         _Lcd_SetBit
;! ---------------------------------------------------------------------------------
;! (2) _Lcd_SetBit                                           1     1      0     124
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Read                                             5     3      2      22
;!                                              0 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Initialize                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Initialize
;!   _ADC_Read
;!   _Lcd_Clear
;!     _Lcd_Cmd
;!       _Lcd_SetBit
;!   _Lcd_Print_Ang
;!     _Lcd_Print_String
;!       _Lcd_Print_Char
;!         _Lcd_SetBit
;!     ___awtoft
;!       ___ftpack
;!     ___ftmul
;!       ___ftadd (ARG)
;!         ___bmul (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___ftneg (ARG)
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!     ___ftsub
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___bmul (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___ftneg (ARG)
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___ftadd (ARG)
;!           ___bmul (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftneg (ARG)
;!         ___ftadd (ARG)
;!           ___bmul (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!     ___fttol
;!     _sprintf
;!       ___ftmul (ARG)
;!         ___ftadd (ARG)
;!           ___bmul (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___lwdiv (ARG)
;!       ___lwmod (ARG)
;!         ___lwdiv (ARG)
;!   _Lcd_Print_String
;!     _Lcd_Print_Char
;!       _Lcd_SetBit
;!   _Lcd_Set_Cursor
;!     _Lcd_Cmd
;!       _Lcd_SetBit
;!   _Lcd_Start
;!     _Lcd_Cmd
;!       _Lcd_SetBit
;!     _Lcd_SetBit
;!   ___ftadd
;!     ___bmul (ARG)
;!     ___ftpack (ARG)
;!     ___ftpack (ARG)
;!   ___ftdiv
;!     ___ftneg (ARG)
;!       ___ftadd (ARG)
;!         ___bmul (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!     ___ftpack (ARG)
;!   ___ftmul
;!     ___ftadd (ARG)
;!       ___bmul (ARG)
;!       ___ftpack (ARG)
;!       ___ftpack (ARG)
;!     ___ftdiv (ARG)
;!       ___ftneg (ARG)
;!         ___ftadd (ARG)
;!           ___bmul (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!     ___ftpack (ARG)
;!   ___lwtoft
;!     _ADC_Read (ARG)
;!     ___ftpack (ARG)
;!   _acos
;!     ___ftsub
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___bmul (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___ftneg (ARG)
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___ftadd (ARG)
;!           ___bmul (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftneg (ARG)
;!         ___ftadd (ARG)
;!           ___bmul (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!     _asin
;!       ___ftdiv
;!         ___ftneg (ARG)
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftge
;!       ___ftmul
;!         ___ftadd (ARG)
;!           ___bmul (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftneg
;!         ___ftadd (ARG)
;!           ___bmul (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftsub
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___bmul (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftdiv (ARG)
;!             ___ftneg (ARG)
;!               ___ftadd (ARG)
;!                 ___bmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftneg (ARG)
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!       _atan
;!         ___ftdiv
;!           ___ftneg (ARG)
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftge
;!         ___ftmul
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftdiv (ARG)
;!             ___ftneg (ARG)
;!               ___ftadd (ARG)
;!                 ___bmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftneg
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftsub
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftdiv (ARG)
;!             ___ftneg (ARG)
;!               ___ftadd (ARG)
;!                 ___bmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftdiv (ARG)
;!               ___ftneg (ARG)
;!                 ___ftadd (ARG)
;!                   ___bmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftneg (ARG)
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!         _eval_poly
;!           ___bmul
;!           ___ftadd
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftdiv (ARG)
;!               ___ftneg (ARG)
;!                 ___ftadd (ARG)
;!                   ___bmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!         _fabs
;!           ___ftge
;!           ___ftneg
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!       _fabs
;!         ___ftge
;!         ___ftneg
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!       _sqrt
;!         ___ftge
;!         ___ftmul
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftdiv (ARG)
;!             ___ftneg (ARG)
;!               ___ftadd (ARG)
;!                 ___bmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftsub
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftdiv (ARG)
;!             ___ftneg (ARG)
;!               ___ftadd (ARG)
;!                 ___bmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftdiv (ARG)
;!               ___ftneg (ARG)
;!                 ___ftadd (ARG)
;!                   ___bmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftneg (ARG)
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!   _sqrt
;!     ___ftge
;!     ___ftmul
;!       ___ftadd (ARG)
;!         ___bmul (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___ftneg (ARG)
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!     ___ftsub
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___bmul (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___ftneg (ARG)
;!           ___ftadd (ARG)
;!             ___bmul (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___ftadd (ARG)
;!           ___bmul (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv (ARG)
;!           ___ftneg (ARG)
;!             ___ftadd (ARG)
;!               ___bmul (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftneg (ARG)
;!         ___ftadd (ARG)
;!           ___bmul (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     55      55       9       88.5%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60     45      54      11       87.5%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     15      19       7       31.3%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     4E      4E       5       97.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0     11E      12        0.0%
;!ABS                  0      0     11E       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 157 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  r               3   60[BANK2 ] float 
;;  negy            3   57[BANK2 ] float 
;;  negx            3   54[BANK2 ] float 
;;  z               3   51[BANK2 ] float 
;;  y               3   48[BANK2 ] float 
;;  x               3   45[BANK2 ] float 
;;  e               3   12[BANK2 ] unsigned char [3]
;;  d               3    9[BANK2 ] unsigned char [3]
;;  c               3    6[BANK2 ] unsigned char [3]
;;  b               3    3[BANK2 ] unsigned char [3]
;;  a               3    0[BANK2 ] unsigned char [3]
;;  E               3   42[BANK2 ] float 
;;  D               3   39[BANK2 ] float 
;;  C               3   36[BANK2 ] float 
;;  B               3   33[BANK2 ] float 
;;  A               3   30[BANK2 ] float 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0      69
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       3       0      69
;;Total ram usage:       72 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ADC_Initialize
;;		_ADC_Read
;;		_Lcd_Clear
;;		_Lcd_Print_Ang
;;		_Lcd_Print_String
;;		_Lcd_Set_Cursor
;;		_Lcd_Start
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;;		_acos
;;		_sqrt
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"../main.c"
	line	157
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../main.c"
	line	157
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	callstack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	161
	
l2458:	
	movlw	0x0
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@B)^0100h
	movlw	0x0
	movwf	(main@B+1)^0100h
	movlw	0x0
	movwf	(main@B+2)^0100h
	movlw	0x0
	movwf	(main@C)^0100h
	movlw	0x0
	movwf	(main@C+1)^0100h
	movlw	0x0
	movwf	(main@C+2)^0100h
	movlw	0x0
	movwf	(main@D)^0100h
	movlw	0x0
	movwf	(main@D+1)^0100h
	movlw	0x0
	movwf	(main@D+2)^0100h
	movlw	0x0
	movwf	(main@E)^0100h
	movlw	0x0
	movwf	(main@E+1)^0100h
	movlw	0x0
	movwf	(main@E+2)^0100h
	line	162
	movf	(main@F1023)^0100h,w
	movwf	(main@a)^0100h
	movf	(main@F1023+1)^0100h,w
	movwf	(main@a+1)^0100h
	movf	(main@F1023+2)^0100h,w
	movwf	(main@a+2)^0100h
	movf	(main@F1025)^0100h,w
	movwf	(main@b)^0100h
	movf	(main@F1025+1)^0100h,w
	movwf	(main@b+1)^0100h
	movf	(main@F1025+2)^0100h,w
	movwf	(main@b+2)^0100h
	movf	(main@F1027)^0100h,w
	movwf	(main@c)^0100h
	movf	(main@F1027+1)^0100h,w
	movwf	(main@c+1)^0100h
	movf	(main@F1027+2)^0100h,w
	movwf	(main@c+2)^0100h
	line	163
	movf	(main@F1029)^0100h,w
	movwf	(main@d)^0100h
	movf	(main@F1029+1)^0100h,w
	movwf	(main@d+1)^0100h
	movf	(main@F1029+2)^0100h,w
	movwf	(main@d+2)^0100h
	movf	(main@F1031)^0100h,w
	movwf	(main@e)^0100h
	movf	(main@F1031+1)^0100h,w
	movwf	(main@e+1)^0100h
	movf	(main@F1031+2)^0100h,w
	movwf	(main@e+2)^0100h
	line	165
	
l2460:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	166
	
l2462:	
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	169
	
l2464:	
	fcall	_ADC_Initialize
	line	170
	
l2466:	
	fcall	_Lcd_Start
	line	178
	
l2468:	
	movlw	low(0)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?_ADC_Read)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@x)^0100h
	movf	(1+(?___lwtoft)),w
	movwf	(main@x+1)^0100h
	movf	(2+(?___lwtoft)),w
	movwf	(main@x+2)^0100h
	line	179
	
l2470:	
	movlw	low(01h)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?_ADC_Read)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@y)^0100h
	movf	(1+(?___lwtoft)),w
	movwf	(main@y+1)^0100h
	movf	(2+(?___lwtoft)),w
	movwf	(main@y+2)^0100h
	line	180
	
l2472:	
	movlw	low(02h)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?_ADC_Read)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@z)^0100h
	movf	(1+(?___lwtoft)),w
	movwf	(main@z+1)^0100h
	movf	(2+(?___lwtoft)),w
	movwf	(main@z+2)^0100h
	line	181
	
l2474:	
	movlw	low(03h)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?_ADC_Read)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@negx)^0100h
	movf	(1+(?___lwtoft)),w
	movwf	(main@negx+1)^0100h
	movf	(2+(?___lwtoft)),w
	movwf	(main@negx+2)^0100h
	line	182
	
l2476:	
	movlw	low(04h)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?_ADC_Read)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@negy)^0100h
	movf	(1+(?___lwtoft)),w
	movwf	(main@negy+1)^0100h
	movf	(2+(?___lwtoft)),w
	movwf	(main@negy+2)^0100h
	line	187
	
l2478:	
	movf	(main@negy)^0100h,w
	movwf	(___ftadd@f1)
	movf	(main@negy+1)^0100h,w
	movwf	(___ftadd@f1+1)
	movf	(main@negy+2)^0100h,w
	movwf	(___ftadd@f1+2)
	movf	(main@y)^0100h,w
	movwf	(___ftadd@f2)
	movf	(main@y+1)^0100h,w
	movwf	(___ftadd@f2+1)
	movf	(main@y+2)^0100h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftmul@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftmul@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@negy)^0100h,w
	movwf	(___ftadd@f1)
	movf	(main@negy+1)^0100h,w
	movwf	(___ftadd@f1+1)
	movf	(main@negy+2)^0100h,w
	movwf	(___ftadd@f1+2)
	movf	(main@y)^0100h,w
	movwf	(___ftadd@f2)
	movf	(main@y+1)^0100h,w
	movwf	(___ftadd@f2+1)
	movf	(main@y+2)^0100h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$776)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$776+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$776+2)^0100h
	
l2480:	
	movf	(main@negx)^0100h,w
	movwf	(___ftadd@f1)
	movf	(main@negx+1)^0100h,w
	movwf	(___ftadd@f1+1)
	movf	(main@negx+2)^0100h,w
	movwf	(___ftadd@f1+2)
	movf	(main@x)^0100h,w
	movwf	(___ftadd@f2)
	movf	(main@x+1)^0100h,w
	movwf	(___ftadd@f2+1)
	movf	(main@x+2)^0100h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftmul@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftmul@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@negx)^0100h,w
	movwf	(___ftadd@f1)
	movf	(main@negx+1)^0100h,w
	movwf	(___ftadd@f1+1)
	movf	(main@negx+2)^0100h,w
	movwf	(___ftadd@f1+2)
	movf	(main@x)^0100h,w
	movwf	(___ftadd@f2)
	movf	(main@x+1)^0100h,w
	movwf	(___ftadd@f2+1)
	movf	(main@x+2)^0100h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$777)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$777+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$777+2)^0100h
	
l2482:	
	movf	(_main$776)^0100h,w
	movwf	(___ftadd@f1)
	movf	(_main$776+1)^0100h,w
	movwf	(___ftadd@f1+1)
	movf	(_main$776+2)^0100h,w
	movwf	(___ftadd@f1+2)
	movf	(_main$777)^0100h,w
	movwf	(___ftadd@f2)
	movf	(_main$777+1)^0100h,w
	movwf	(___ftadd@f2+1)
	movf	(_main$777+2)^0100h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$778)^0100h
	movf	(1+(?___ftadd)),w
	movwf	(_main$778+1)^0100h
	movf	(2+(?___ftadd)),w
	movwf	(_main$778+2)^0100h
	
l2484:	
	movf	(main@z)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@z+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@z+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@z)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@z+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@z+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$778)^0100h,w
	movwf	(___ftadd@f2)
	movf	(_main$778+1)^0100h,w
	movwf	(___ftadd@f2+1)
	movf	(_main$778+2)^0100h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$779)^0100h
	movf	(1+(?___ftadd)),w
	movwf	(_main$779+1)^0100h
	movf	(2+(?___ftadd)),w
	movwf	(_main$779+2)^0100h
	
l2486:	
	movf	(_main$779)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sqrt@a)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$779+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sqrt@a+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$779+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sqrt@a+2)
	fcall	_sqrt
	movf	(0+(?_sqrt)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$780)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_sqrt)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$780+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_sqrt)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$780+2)^0100h
	
l2488:	
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	movf	(_main$780)^0100h,w
	movwf	(___ftadd@f2)
	movf	(_main$780+1)^0100h,w
	movwf	(___ftadd@f2+1)
	movf	(_main$780+2)^0100h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@r)^0100h
	movf	(1+(?___ftadd)),w
	movwf	(main@r+1)^0100h
	movf	(2+(?___ftadd)),w
	movwf	(main@r+2)^0100h
	line	188
	
l2490:	
	movf	(main@r)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@r+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@r+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@x)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@x+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@x+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781+2)^0100h
	
l2492:	
	movf	(_main$781)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$781+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$781+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x+2)
	fcall	_acos
	movf	(0+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782+2)^0100h
	
l2494:	
	movlw	0x29
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x65
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@A)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@A+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@A+2)^0100h
	line	189
	
l2496:	
	movf	(main@r)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@r+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@r+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@y)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@y+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@y+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781+2)^0100h
	
l2498:	
	movf	(_main$781)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$781+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$781+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x+2)
	fcall	_acos
	movf	(0+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782+2)^0100h
	
l2500:	
	movlw	0x29
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x65
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@B)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@B+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@B+2)^0100h
	line	190
	
l2502:	
	movf	(main@r)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@r+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@r+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@z)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@z+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@z+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781+2)^0100h
	
l2504:	
	movf	(_main$781)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$781+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$781+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x+2)
	fcall	_acos
	movf	(0+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782+2)^0100h
	
l2506:	
	movlw	0x29
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x65
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@C)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@C+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@C+2)^0100h
	line	191
	
l2508:	
	movf	(main@r)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@r+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@r+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@negx)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@negx+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@negx+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781+2)^0100h
	
l2510:	
	movf	(_main$781)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$781+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$781+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x+2)
	fcall	_acos
	movf	(0+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782+2)^0100h
	
l2512:	
	movlw	0x29
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x65
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@D)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@D+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@D+2)^0100h
	line	192
	
l2514:	
	movf	(main@r)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@r+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@r+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@negy)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@negy+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@negy+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$781+2)^0100h
	
l2516:	
	movf	(_main$781)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$781+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$781+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(acos@x+2)
	fcall	_acos
	movf	(0+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_acos)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(_main$782+2)^0100h
	
l2518:	
	movlw	0x29
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x65
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(_main$782+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@E)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@E+1)^0100h
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(main@E+2)^0100h
	line	195
	
l2520:	
	fcall	_Lcd_Clear
	line	196
	
l2522:	
	clrf	(Lcd_Set_Cursor@b)
	incf	(Lcd_Set_Cursor@b),f
	movlw	low(01h)
	fcall	_Lcd_Set_Cursor
	line	197
	
l2524:	
	movlw	(low(main@a|((0x1)<<8)))&0ffh
	fcall	_Lcd_Print_String
	
l2526:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@A)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@A+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@A+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f+2)
	fcall	_Lcd_Print_Ang
	line	198
	
l2528:	
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(Lcd_Set_Cursor@b)
	movlw	low(01h)
	fcall	_Lcd_Set_Cursor
	line	199
	
l2530:	
	movlw	(low(main@b|((0x1)<<8)))&0ffh
	fcall	_Lcd_Print_String
	
l2532:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@B)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@B+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@B+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f+2)
	fcall	_Lcd_Print_Ang
	line	200
	
l2534:	
	clrf	(Lcd_Set_Cursor@b)
	incf	(Lcd_Set_Cursor@b),f
	movlw	low(02h)
	fcall	_Lcd_Set_Cursor
	line	201
	
l2536:	
	movlw	(low(main@c|((0x1)<<8)))&0ffh
	fcall	_Lcd_Print_String
	
l2538:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@C)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@C+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@C+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f+2)
	fcall	_Lcd_Print_Ang
	line	202
	
l2540:	
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(Lcd_Set_Cursor@b)
	movlw	low(02h)
	fcall	_Lcd_Set_Cursor
	line	203
	
l2542:	
	movlw	(low(main@d|((0x1)<<8)))&0ffh
	fcall	_Lcd_Print_String
	
l2544:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@D)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@D+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@D+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f+2)
	fcall	_Lcd_Print_Ang
	line	204
	
l2546:	
	opt asmopt_push
opt asmopt_off
movlw  39
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	13
movwf	((??_main+0)^080h+0+1),f
	movlw	37
movwf	((??_main+0)^080h+0),f
	u2627:
decfsz	((??_main+0)^080h+0),f
	goto	u2627
	decfsz	((??_main+0)^080h+0+1),f
	goto	u2627
	decfsz	((??_main+0)^080h+0+2),f
	goto	u2627
	nop2
opt asmopt_pop

	line	205
	
l2548:	
	fcall	_Lcd_Clear
	line	206
	
l2550:	
	clrf	(Lcd_Set_Cursor@b)
	incf	(Lcd_Set_Cursor@b),f
	movlw	low(01h)
	fcall	_Lcd_Set_Cursor
	line	207
	
l2552:	
	movlw	(low(main@e|((0x1)<<8)))&0ffh
	fcall	_Lcd_Print_String
	
l2554:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@E)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@E+1)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f+1)
	bsf	status, 6	;RP1=1, select bank2
	movf	(main@E+2)^0100h,w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Print_Ang@f+2)
	fcall	_Lcd_Print_Ang
	line	208
	
l2556:	
	opt asmopt_push
opt asmopt_off
movlw  39
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	13
movwf	((??_main+0)^080h+0+1),f
	movlw	37
movwf	((??_main+0)^080h+0),f
	u2637:
decfsz	((??_main+0)^080h+0),f
	goto	u2637
	decfsz	((??_main+0)^080h+0+1),f
	goto	u2637
	decfsz	((??_main+0)^080h+0+2),f
	goto	u2637
	nop2
opt asmopt_pop

	goto	l2468
	global	start
	ljmp	start
	opt callstack 0
	line	213
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_acos

;; *************** function _acos *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\acos.c"
;; Parameters:    Size  Location     Type
;;  x               3   72[BANK0 ] void 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   72[BANK0 ] void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftsub
;;		_asin
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\acos.c"
	line	8
global __ptext1
__ptext1:	;psect for function _acos
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\acos.c"
	line	8
	global	__size_of_acos
	__size_of_acos	equ	__end_of_acos-_acos
	
_acos:	
;incstack = 0
	opt	callstack 2
; Regs used in _acos: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	10
	
l2452:	
	movf	(acos@x),w
	movwf	(asin@x)
	movf	(acos@x+1),w
	movwf	(asin@x+1)
	movf	(acos@x+2),w
	movwf	(asin@x+2)
	fcall	_asin
	movf	(0+(?_asin)),w
	movwf	(_acos$783)
	movf	(1+(?_asin)),w
	movwf	(_acos$783+1)
	movf	(2+(?_asin)),w
	movwf	(_acos$783+2)
	
l2454:	
	movf	(_acos$783),w
	movwf	(___ftsub@f2)
	movf	(_acos$783+1),w
	movwf	(___ftsub@f2+1)
	movf	(_acos$783+2),w
	movwf	(___ftsub@f2+2)
	movlw	0x10
	movwf	(___ftsub@f1)
	movlw	0xc9
	movwf	(___ftsub@f1+1)
	movlw	0x3f
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movwf	(?_acos)
	movf	(1+(?___ftsub)),w
	movwf	(?_acos+1)
	movf	(2+(?___ftsub)),w
	movwf	(?_acos+2)
	line	11
	
l662:	
	return
	opt callstack 0
GLOBAL	__end_of_acos
	__end_of_acos:
	signat	_acos,4219
	global	_asin

;; *************** function _asin *****************
;; Defined at:
;;		line 9 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\asin.c"
;; Parameters:    Size  Location     Type
;;  x               3   69[BANK0 ] void 
;; Auto vars:     Size  Location     Type
;;  y               3   12[BANK1 ] void 
;;  sgn             3    0        void 
;; Return value:  Size  Location     Type
;;                  3   69[BANK0 ] void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0      18       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3      18       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		_atan
;;		_fabs
;;		_sqrt
;; This function is called by:
;;		_acos
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\asin.c"
	line	9
global __ptext2
__ptext2:	;psect for function _asin
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\asin.c"
	line	9
	global	__size_of_asin
	__size_of_asin	equ	__end_of_asin-_asin
	
_asin:	
;incstack = 0
	opt	callstack 2
; Regs used in _asin: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	14
	
l2350:	
	movf	(asin@x),w
	movwf	(fabs@d)
	movf	(asin@x+1),w
	movwf	(fabs@d+1)
	movf	(asin@x+2),w
	movwf	(fabs@d+2)
	fcall	_fabs
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_fabs)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$784)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_fabs)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$784+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_fabs)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$784+2)^080h
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movf	(_asin$784)^080h,w
	movwf	(___ftge@ff2)
	movf	(_asin$784+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(_asin$784+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2551
	goto	u2550
u2551:
	goto	l2356
u2550:
	line	15
	
l2352:	
	movlw	021h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_errno)^080h
	movlw	0
	movwf	((_errno)^080h)+1
	line	16
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_asin)
	movlw	0x0
	movwf	(?_asin+1)
	movlw	0x0
	movwf	(?_asin+2)
	goto	l674
	line	18
	
l2356:	
	line	19
	
l2358:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(asin@x),w
	movwf	(___ftmul@f1)
	movf	(asin@x+1),w
	movwf	(___ftmul@f1+1)
	movf	(asin@x+2),w
	movwf	(___ftmul@f1+2)
	movf	(asin@x),w
	movwf	(___ftmul@f2)
	movf	(asin@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(asin@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftsub@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftsub@f2+2)
	movlw	0x0
	movwf	(___ftsub@f1)
	movlw	0x80
	movwf	(___ftsub@f1+1)
	movlw	0x3f
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$785)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$785+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$785+2)^080h
	
l2360:	
	movf	(_asin$785)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sqrt@a)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$785+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sqrt@a+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$785+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sqrt@a+2)
	fcall	_sqrt
	movf	(0+(?_sqrt)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(asin@y)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_sqrt)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(asin@y+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_sqrt)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(asin@y+2)^080h
	line	20
	
l2362:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(asin@x),w
	movwf	(fabs@d)
	movf	(asin@x+1),w
	movwf	(fabs@d+1)
	movf	(asin@x+2),w
	movwf	(fabs@d+2)
	fcall	_fabs
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_fabs)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$784)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_fabs)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$784+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_fabs)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$784+2)^080h
	
l2364:	
	movf	(_asin$784)^080h,w
	movwf	(___ftge@ff1)
	movf	(_asin$784+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_asin$784+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0xc3
	movwf	(___ftge@ff2)
	movlw	0x35
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2561
	goto	u2560
u2561:
	goto	l2372
u2560:
	line	21
	
l2366:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(asin@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(asin@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(asin@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+2)
	movf	(asin@x),w
	movwf	(___ftdiv@f1)
	movf	(asin@x+1),w
	movwf	(___ftdiv@f1+1)
	movf	(asin@x+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$786)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$786+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$786+2)^080h
	
l2368:	
	movf	(_asin$786)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$786+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$786+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+2)
	fcall	_atan
	movf	(0+(?_atan)),w
	movwf	(?_asin)
	movf	(1+(?_atan)),w
	movwf	(?_asin+1)
	movf	(2+(?_atan)),w
	movwf	(?_asin+2)
	goto	l674
	line	22
	
l2372:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(asin@x),w
	movwf	(___ftge@ff1)
	movf	(asin@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(asin@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2571
	goto	u2570
u2571:
	goto	l2382
u2570:
	line	23
	
l2374:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(asin@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftneg@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(asin@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftneg@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(asin@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftneg)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftdiv@f1+2)
	movf	(asin@x),w
	movwf	(___ftdiv@f2)
	movf	(asin@x+1),w
	movwf	(___ftdiv@f2+1)
	movf	(asin@x+2),w
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$786)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$786+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$786+2)^080h
	
l2376:	
	movf	(_asin$786)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$786+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$786+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+2)
	fcall	_atan
	movf	(0+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$787)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$787+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$787+2)^080h
	
l2378:	
	movlw	0x10
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f1)
	movlw	0xc9
	movwf	(___ftsub@f1+1)
	movlw	0x3f
	movwf	(___ftsub@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$787)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$787+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$787+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movwf	(___ftneg@f1)
	movf	(1+(?___ftsub)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___ftsub)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(?_asin)
	movf	(1+(?___ftneg)),w
	movwf	(?_asin+1)
	movf	(2+(?___ftneg)),w
	movwf	(?_asin+2)
	goto	l674
	line	24
	
l2382:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(asin@x),w
	movwf	(___ftdiv@f2)
	movf	(asin@x+1),w
	movwf	(___ftdiv@f2+1)
	movf	(asin@x+2),w
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(asin@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(asin@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(asin@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$786)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$786+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$786+2)^080h
	
l2384:	
	movf	(_asin$786)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$786+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$786+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+2)
	fcall	_atan
	movf	(0+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$787)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$787+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$787+2)^080h
	
l2386:	
	movf	(_asin$787)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$787+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$787+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+2)
	movlw	0x10
	movwf	(___ftsub@f1)
	movlw	0xc9
	movwf	(___ftsub@f1+1)
	movlw	0x3f
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movwf	(?_asin)
	movf	(1+(?___ftsub)),w
	movwf	(?_asin+1)
	movf	(2+(?___ftsub)),w
	movwf	(?_asin+2)
	line	25
	
l674:	
	return
	opt callstack 0
GLOBAL	__end_of_asin
	__end_of_asin:
	signat	_asin,4219
	global	_sqrt

;; *************** function _sqrt *****************
;; Defined at:
;;		line 9 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\sprcsqrt.c"
;; Parameters:    Size  Location     Type
;;  a               3   48[BANK0 ] void 
;; Auto vars:     Size  Location     Type
;;  x               3   64[BANK0 ] void 
;;  q               3   61[BANK0 ] void 
;;  z               3   57[BANK0 ] void 
;;  og              3    0        void 
;;  i               1   60[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   48[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftsub
;; This function is called by:
;;		_main
;;		_asin
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\sprcsqrt.c"
	line	9
global __ptext3
__ptext3:	;psect for function _sqrt
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\sprcsqrt.c"
	line	9
	global	__size_of_sqrt
	__size_of_sqrt	equ	__end_of_sqrt-_sqrt
	
_sqrt:	
;incstack = 0
	opt	callstack 4
; Regs used in _sqrt: [wreg+status,2+status,0+pclath+cstack]
	line	138
	
l1832:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x0
	movwf	(___ftge@ff1+2)
	movf	(sqrt@a),w
	movwf	(___ftge@ff2)
	movf	(sqrt@a+1),w
	movwf	(___ftge@ff2+1)
	movf	(sqrt@a+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u1951
	goto	u1950
u1951:
	goto	l1840
u1950:
	line	139
	
l1834:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sqrt@a),w
	movwf	(___ftge@ff1)
	movf	(sqrt@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(sqrt@a+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1961
	goto	u1960
u1961:
	goto	l654
u1960:
	line	140
	
l1836:	
	movlw	021h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_errno)^080h
	movlw	0
	movwf	((_errno)^080h)+1
	line	141
	
l654:	
	line	142
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_sqrt)
	movlw	0x0
	movwf	(?_sqrt+1)
	movlw	0x0
	movwf	(?_sqrt+2)
	goto	l655
	line	144
	
l1840:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sqrt@a),w
	movwf	(sqrt@z)
	movf	(sqrt@a+1),w
	movwf	(sqrt@z+1)
	movf	(sqrt@a+2),w
	movwf	(sqrt@z+2)
	line	145
	
l1842:	
	movf	(sqrt@a),w
	sublw	0C8h
	movwf	(sqrt@x)
	movf	(sqrt@a+1),w
	skipc
	incfsz	(sqrt@a+1),w
	sublw	06Eh
	movwf	1+(sqrt@x)
	
	movf	(sqrt@a+2),w
	skipc
	incfsz	(sqrt@a+2),w
	sublw	0BEh
	movwf	2+(sqrt@x)
	line	146
	
l1844:	
	movlw	01h
u1975:
	clrc
	rrf	(sqrt@x+2),f
	rrf	(sqrt@x+1),f
	rrf	(sqrt@x),f
	addlw	-1
	skipz
	goto	u1975

	line	147
	movlw	low(08000h)
	movwf	((??_sqrt+0)+0)
	movlw	high(08000h)
	movwf	((??_sqrt+0)+0+1)
	movlw	low highword(08000h)
	movwf	((??_sqrt+0)+0+2)
	movf	0+(??_sqrt+0)+0,w
	subwf	(sqrt@z),f
	movf	1+(??_sqrt+0)+0,w
	skipc
	incfsz	1+(??_sqrt+0)+0,w
	goto	u1985
	goto	u1986
u1985:
	subwf	(sqrt@z+1),f
u1986:
	movf	2+(??_sqrt+0)+0,w
	skipc
	incf	2+(??_sqrt+0)+0,w
	goto	u1987
	goto	u1988
u1987:
	subwf	(sqrt@z+2),f
u1988:

	line	148
	movlw	low(04h)
	movwf	(??_sqrt+0)+0
	movf	(??_sqrt+0)+0,w
	movwf	(sqrt@i)
	line	149
	
l656:	
	line	151
	
l1846:	
	movf	(sqrt@z),w
	movwf	(___ftmul@f1)
	movf	(sqrt@z+1),w
	movwf	(___ftmul@f1+1)
	movf	(sqrt@z+2),w
	movwf	(___ftmul@f1+2)
	movf	(sqrt@x),w
	movwf	(___ftmul@f2)
	movf	(sqrt@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(sqrt@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(sqrt@q)
	movf	(1+(?___ftmul)),w
	movwf	(sqrt@q+1)
	movf	(2+(?___ftmul)),w
	movwf	(sqrt@q+2)
	line	152
	
l1848:	
	movf	(sqrt@x),w
	movwf	(___ftmul@f1)
	movf	(sqrt@x+1),w
	movwf	(___ftmul@f1+1)
	movf	(sqrt@x+2),w
	movwf	(___ftmul@f1+2)
	movf	(sqrt@q),w
	movwf	(___ftmul@f2)
	movf	(sqrt@q+1),w
	movwf	(___ftmul@f2+1)
	movf	(sqrt@q+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(sqrt@q)
	movf	(1+(?___ftmul)),w
	movwf	(sqrt@q+1)
	movf	(2+(?___ftmul)),w
	movwf	(sqrt@q+2)
	line	153
	
l1850:	
	movf	(sqrt@x),w
	movwf	(___ftmul@f1)
	movf	(sqrt@x+1),w
	movwf	(___ftmul@f1+1)
	movf	(sqrt@x+2),w
	movwf	(___ftmul@f1+2)
	movf	(sqrt@q),w
	movwf	(___ftmul@f2)
	movf	(sqrt@q+1),w
	movwf	(___ftmul@f2+1)
	movf	(sqrt@q+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(sqrt@q)
	movf	(1+(?___ftmul)),w
	movwf	(sqrt@q+1)
	movf	(2+(?___ftmul)),w
	movwf	(sqrt@q+2)
	line	154
	
l1852:	
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xc0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(sqrt@x),w
	movwf	(___ftmul@f2)
	movf	(sqrt@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(sqrt@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(sqrt@x)
	movf	(1+(?___ftmul)),w
	movwf	(sqrt@x+1)
	movf	(2+(?___ftmul)),w
	movwf	(sqrt@x+2)
	line	155
	
l1854:	
	movf	(sqrt@q),w
	movwf	(___ftsub@f2)
	movf	(sqrt@q+1),w
	movwf	(___ftsub@f2+1)
	movf	(sqrt@q+2),w
	movwf	(___ftsub@f2+2)
	movf	(sqrt@x),w
	movwf	(___ftsub@f1)
	movf	(sqrt@x+1),w
	movwf	(___ftsub@f1+1)
	movf	(sqrt@x+2),w
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movwf	(sqrt@x)
	movf	(1+(?___ftsub)),w
	movwf	(sqrt@x+1)
	movf	(2+(?___ftsub)),w
	movwf	(sqrt@x+2)
	line	156
	
l1856:	
	movlw	01h
	subwf	(sqrt@i),f
	btfss	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l656
u1990:
	line	157
	
l1858:	
	movf	(sqrt@a),w
	movwf	(___ftmul@f1)
	movf	(sqrt@a+1),w
	movwf	(___ftmul@f1+1)
	movf	(sqrt@a+2),w
	movwf	(___ftmul@f1+2)
	movf	(sqrt@x),w
	movwf	(___ftmul@f2)
	movf	(sqrt@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(sqrt@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_sqrt)
	movf	(1+(?___ftmul)),w
	movwf	(?_sqrt+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_sqrt+2)
	line	159
	
l655:	
	return
	opt callstack 0
GLOBAL	__end_of_sqrt
	__end_of_sqrt:
	signat	_sqrt,4219
	global	_atan

;; *************** function _atan *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\atan.c"
;; Parameters:    Size  Location     Type
;;  f               3   52[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             3   66[BANK0 ] unsigned char 
;;  val_squared     3   63[BANK0 ] unsigned char 
;;  x               3   59[BANK0 ] unsigned char 
;;  y               3   56[BANK0 ] unsigned char 
;;  recip           1   62[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   52[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		_eval_poly
;;		_fabs
;; This function is called by:
;;		_asin
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\atan.c"
	line	8
global __ptext4
__ptext4:	;psect for function _atan
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\atan.c"
	line	8
	global	__size_of_atan
	__size_of_atan	equ	__end_of_atan-_atan
	
_atan:	
;incstack = 0
	opt	callstack 2
; Regs used in _atan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	30
	
l1910:	
	movf	(atan@f),w
	movwf	(fabs@d)
	movf	(atan@f+1),w
	movwf	(fabs@d+1)
	movf	(atan@f+2),w
	movwf	(fabs@d+2)
	fcall	_fabs
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_fabs)),w
	movwf	(atan@val)
	movf	(1+(?_fabs)),w
	movwf	(atan@val+1)
	movf	(2+(?_fabs)),w
	movwf	(atan@val+2)
	movf	((atan@val+2)),w
	iorwf	((atan@val+1)),w
	iorwf	((atan@val)),w
	skipz
	goto	u2131
	goto	u2130
u2131:
	goto	l1916
u2130:
	line	31
	
l1912:	
	movlw	0x0
	movwf	(?_atan)
	movlw	0x0
	movwf	(?_atan+1)
	movlw	0x0
	movwf	(?_atan+2)
	goto	l688
	line	32
	
l1916:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movf	(atan@val),w
	movwf	(___ftge@ff2)
	movf	(atan@val+1),w
	movwf	(___ftge@ff2+1)
	movf	(atan@val+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2141
	goto	u2140
u2141:
	movlw	1
	goto	u2150
u2140:
	movlw	0
u2150:
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_atan+0)+0
	movf	(??_atan+0)+0,w
	movwf	(atan@recip)
	movf	(((atan@recip))),w
	btfsc	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l689
u2160:
	line	33
	
l1918:	
	movf	(atan@val),w
	movwf	(___ftdiv@f2)
	movf	(atan@val+1),w
	movwf	(___ftdiv@f2+1)
	movf	(atan@val+2),w
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftdiv@f1)
	movlw	0x80
	movwf	(___ftdiv@f1+1)
	movlw	0x3f
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(atan@val)
	movf	(1+(?___ftdiv)),w
	movwf	(atan@val+1)
	movf	(2+(?___ftdiv)),w
	movwf	(atan@val+2)
	
l689:	
	line	34
	movf	(atan@val),w
	movwf	(___ftmul@f1)
	movf	(atan@val+1),w
	movwf	(___ftmul@f1+1)
	movf	(atan@val+2),w
	movwf	(___ftmul@f1+2)
	movf	(atan@val),w
	movwf	(___ftmul@f2)
	movf	(atan@val+1),w
	movwf	(___ftmul@f2+1)
	movf	(atan@val+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(atan@val_squared)
	movf	(1+(?___ftmul)),w
	movwf	(atan@val_squared+1)
	movf	(2+(?___ftmul)),w
	movwf	(atan@val_squared+2)
	line	35
	
l1920:	
	movf	(atan@val_squared),w
	movwf	(eval_poly@x)
	movf	(atan@val_squared+1),w
	movwf	(eval_poly@x+1)
	movf	(atan@val_squared+2),w
	movwf	(eval_poly@x+2)
	movlw	(low((((atan@coeff_b)-__stringbase)|8000h)))&0ffh
	movwf	(??_atan+0)+0
	movf	(??_atan+0)+0,w
	movwf	(eval_poly@d)
	movlw	04h
	movwf	(eval_poly@n)
	movlw	0
	movwf	((eval_poly@n))+1
	fcall	_eval_poly
	movf	(0+(?_eval_poly)),w
	movwf	(atan@y)
	movf	(1+(?_eval_poly)),w
	movwf	(atan@y+1)
	movf	(2+(?_eval_poly)),w
	movwf	(atan@y+2)
	line	36
	
l1922:	
	movf	(atan@val_squared),w
	movwf	(eval_poly@x)
	movf	(atan@val_squared+1),w
	movwf	(eval_poly@x+1)
	movf	(atan@val_squared+2),w
	movwf	(eval_poly@x+2)
	movlw	(low((((atan@coeff_a)-__stringbase)|8000h)))&0ffh
	movwf	(??_atan+0)+0
	movf	(??_atan+0)+0,w
	movwf	(eval_poly@d)
	movlw	05h
	movwf	(eval_poly@n)
	movlw	0
	movwf	((eval_poly@n))+1
	fcall	_eval_poly
	movf	(0+(?_eval_poly)),w
	movwf	(atan@x)
	movf	(1+(?_eval_poly)),w
	movwf	(atan@x+1)
	movf	(2+(?_eval_poly)),w
	movwf	(atan@x+2)
	line	37
	movf	(atan@x),w
	movwf	(___ftdiv@f1)
	movf	(atan@x+1),w
	movwf	(___ftdiv@f1+1)
	movf	(atan@x+2),w
	movwf	(___ftdiv@f1+2)
	movf	(atan@y),w
	movwf	(___ftdiv@f2)
	movf	(atan@y+1),w
	movwf	(___ftdiv@f2+1)
	movf	(atan@y+2),w
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f1+2)
	movf	(atan@val),w
	movwf	(___ftmul@f2)
	movf	(atan@val+1),w
	movwf	(___ftmul@f2+1)
	movf	(atan@val+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(atan@val)
	movf	(1+(?___ftmul)),w
	movwf	(atan@val+1)
	movf	(2+(?___ftmul)),w
	movwf	(atan@val+2)
	line	38
	
l1924:	
	movf	((atan@recip)),w
	btfsc	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l690
u2170:
	line	39
	
l1926:	
	movf	(atan@val),w
	movwf	(___ftsub@f2)
	movf	(atan@val+1),w
	movwf	(___ftsub@f2+1)
	movf	(atan@val+2),w
	movwf	(___ftsub@f2+2)
	movlw	0x10
	movwf	(___ftsub@f1)
	movlw	0xc9
	movwf	(___ftsub@f1+1)
	movlw	0x3f
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movwf	(atan@val)
	movf	(1+(?___ftsub)),w
	movwf	(atan@val+1)
	movf	(2+(?___ftsub)),w
	movwf	(atan@val+2)
	
l690:	
	line	40
	movf	(atan@f),w
	movwf	(___ftge@ff1)
	movf	(atan@f+1),w
	movwf	(___ftge@ff1+1)
	movf	(atan@f+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u2181
	goto	u2180
u2181:
	goto	l1930
u2180:
	
l1928:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(atan@val),w
	movwf	(?_atan)
	movf	(atan@val+1),w
	movwf	(?_atan+1)
	movf	(atan@val+2),w
	movwf	(?_atan+2)
	goto	l688
	
l1930:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(atan@val),w
	movwf	(___ftneg@f1)
	movf	(atan@val+1),w
	movwf	(___ftneg@f1+1)
	movf	(atan@val+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(?_atan)
	movf	(1+(?___ftneg)),w
	movwf	(?_atan+1)
	movf	(2+(?___ftneg)),w
	movwf	(?_atan+2)
	line	41
	
l688:	
	return
	opt callstack 0
GLOBAL	__end_of_atan
	__end_of_atan:
	signat	_atan,4219
	global	_fabs

;; *************** function _fabs *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\fabs.c"
;; Parameters:    Size  Location     Type
;;  d               3   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_asin
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\fabs.c"
	line	4
global __ptext5
__ptext5:	;psect for function _fabs
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\fabs.c"
	line	4
	global	__size_of_fabs
	__size_of_fabs	equ	__end_of_fabs-_fabs
	
_fabs:	
;incstack = 0
	opt	callstack 4
; Regs used in _fabs: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l1784:	
	movf	(fabs@d),w
	movwf	(___ftge@ff1)
	movf	(fabs@d+1),w
	movwf	(___ftge@ff1+1)
	movf	(fabs@d+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u1901
	goto	u1900
u1901:
	goto	l705
u1900:
	line	7
	
l1786:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(fabs@d),w
	movwf	(___ftneg@f1)
	movf	(fabs@d+1),w
	movwf	(___ftneg@f1+1)
	movf	(fabs@d+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(?_fabs)
	movf	(1+(?___ftneg)),w
	movwf	(?_fabs+1)
	movf	(2+(?___ftneg)),w
	movwf	(?_fabs+2)
	goto	l706
	
l705:	
	line	8
	line	9
	
l706:	
	return
	opt callstack 0
GLOBAL	__end_of_fabs
	__end_of_fabs:
	signat	_fabs,4219
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    7[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    7[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_asin
;;		_atan
;;		_fabs
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftneg.c"
	line	15
global __ptext6
__ptext6:	;psect for function ___ftneg
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	callstack 4
; Regs used in ___ftneg: [wreg]
	line	17
	
l1716:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u1781
	goto	u1780
u1781:
	goto	l1720
u1780:
	line	18
	
l1718:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l1720:	
	line	20
	
l511:	
	return
	opt callstack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 200/0
;;		Unchanged: 200/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sqrt
;;		_asin
;;		_atan
;;		_fabs
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftge.c"
	line	4
global __ptext7
__ptext7:	;psect for function ___ftge
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	callstack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l1640:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u1631
	goto	u1630
u1631:
	goto	l1644
u1630:
	line	7
	
l1642:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l1644:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l1648
u1640:
	line	9
	
l1646:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l1648:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1650:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1652:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u1655
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u1655
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u1655:
	skipnc
	goto	u1651
	goto	u1650
u1651:
	goto	l1656
u1650:
	
l1654:	
	clrc
	
	goto	l494
	
l1656:	
	setc
	
	line	13
	
l494:	
	return
	opt callstack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   42[BANK0 ] float 
;;  d               1   45[BANK0 ] PTR const 
;;		 -> atan@coeff_a(18), atan@coeff_b(15), 
;;  n               2   46[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   49[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   42[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		___ftadd
;;		___ftmul
;; This function is called by:
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\evalpoly.c"
	line	4
global __ptext8
__ptext8:	;psect for function _eval_poly
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
;incstack = 0
	opt	callstack 2
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l1790:	
	movlw	low(03h)
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(eval_poly@n),w
	fcall	___bmul
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(eval_poly@res)
	fcall	stringdir
	movwf	(eval_poly@res+1)
	fcall	stringdir
	movwf	(eval_poly@res+2)
	line	9
	goto	l1794
	line	10
	
l1792:	
	movlw	low(03h)
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	0FFh
	addwf	(eval_poly@n),f
	skipnc
	incf	(eval_poly@n+1),f
	movlw	0FFh
	addwf	(eval_poly@n+1),f
	movf	((eval_poly@n)),w
	fcall	___bmul
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(___ftadd@f1)
	fcall	stringdir
	movwf	(___ftadd@f1+1)
	fcall	stringdir
	movwf	(___ftadd@f1+2)
	movf	(eval_poly@res),w
	movwf	(___ftmul@f1)
	movf	(eval_poly@res+1),w
	movwf	(___ftmul@f1+1)
	movf	(eval_poly@res+2),w
	movwf	(___ftmul@f1+2)
	movf	(eval_poly@x),w
	movwf	(___ftmul@f2)
	movf	(eval_poly@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(eval_poly@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eval_poly@res)
	movf	(1+(?___ftadd)),w
	movwf	(eval_poly@res+1)
	movf	(2+(?___ftadd)),w
	movwf	(eval_poly@res+2)
	line	9
	
l1794:	
	movf	((eval_poly@n)),w
iorwf	((eval_poly@n+1)),w
	btfss	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l1792
u1910:
	line	11
	
l1796:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	line	12
	
l702:	
	return
	opt callstack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12411
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\Umul8.c"
	line	4
global __ptext9
__ptext9:	;psect for function ___bmul
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	callstack 3
; Regs used in ___bmul: [wreg+status,2+status,0]
	movwf	(___bmul@multiplier)
	line	6
	
l1556:	
	clrf	(___bmul@product)
	line	43
	
l1558:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1371
	goto	u1370
u1371:
	goto	l1562
u1370:
	line	44
	
l1560:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	line	45
	
l1562:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1564:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l1558
u1380:
	line	50
	
l1566:	
	movf	(___bmul@product),w
	line	51
	
l251:	
	return
	opt callstack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 56 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   10[BANK0 ] float 
;;  f1              3   13[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   21[BANK0 ] float 
;;  sign            1   25[BANK0 ] unsigned char 
;;  exp             1   24[BANK0 ] unsigned char 
;;  cntr            1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_asin
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftdiv.c"
	line	56
global __ptext10
__ptext10:	;psect for function ___ftdiv
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftdiv.c"
	line	56
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	callstack 3
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l1734:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	(((___ftdiv@exp))),w
	btfss	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l1740
u1830:
	line	64
	
l1736:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l485
	line	65
	
l1740:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	(((___ftdiv@sign))),w
	btfss	status,2
	goto	u1841
	goto	u1840
u1841:
	goto	l1746
u1840:
	line	66
	
l1742:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l485
	line	67
	
l1746:	
	movlw	low(0)
	movwf	(___ftdiv@f3)
	movlw	high(0)
	movwf	(___ftdiv@f3+1)
	movlw	low highword(0)
	movwf	(___ftdiv@f3+2)
	line	68
	
l1748:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l1750:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@sign)
	line	70
	movf	0+(___ftdiv@f2)+02h,w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	xorwf	(___ftdiv@sign),f
	line	71
	movlw	low(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	72
	
l1752:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l1754:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l1756:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l1758:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l1760:	
	movlw	low(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	line	78
	
l1762:	
	movlw	01h
u1855:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u1855
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1865
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1865
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1865:
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l1768
u1860:
	line	80
	
l1764:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	81
	
l1766:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l1768:	
	movlw	01h
u1875:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u1875
	line	84
	
l1770:	
	movlw	01h
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l1762
u1880:
	line	85
	
l1772:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	86
	
l485:	
	return
	opt callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\lwtoft.c"
	line	28
global __ptext11
__ptext11:	;psect for function ___lwtoft
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	callstack 6
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2186:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	line	31
	
l648:	
	return
	opt callstack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	_Lcd_Start

;; *************** function _Lcd_Start *****************
;; Defined at:
;;		line 108 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0        int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Cmd
;;		_Lcd_SetBit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	108
global __ptext12
__ptext12:	;psect for function _Lcd_Start
psect	text12
	file	"../main.c"
	line	108
	global	__size_of_Lcd_Start
	__size_of_Lcd_Start	equ	__end_of_Lcd_Start-_Lcd_Start
	
_Lcd_Start:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Start: [wreg+status,2+status,0+pclath+cstack]
	line	110
	
l2412:	
	movlw	low(0)
	fcall	_Lcd_SetBit
	line	111
	
l2414:	
	
l2416:	
	line	112
	
l2424:	
	movlw	low(03h)
	fcall	_Lcd_Cmd
	line	113
	
l2426:	
	opt asmopt_push
opt asmopt_off
movlw	33
movwf	((??_Lcd_Start+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Start+0)+0),f
	u2647:
decfsz	((??_Lcd_Start+0)+0),f
	goto	u2647
	decfsz	((??_Lcd_Start+0)+0+1),f
	goto	u2647
	nop
opt asmopt_pop

	line	114
	
l2428:	
	movlw	low(03h)
	fcall	_Lcd_Cmd
	line	115
	opt asmopt_push
opt asmopt_off
movlw	72
movwf	((??_Lcd_Start+0)+0+1),f
	movlw	108
movwf	((??_Lcd_Start+0)+0),f
	u2657:
decfsz	((??_Lcd_Start+0)+0),f
	goto	u2657
	decfsz	((??_Lcd_Start+0)+0+1),f
	goto	u2657
	nop
opt asmopt_pop

	line	116
	
l2430:	
	movlw	low(03h)
	fcall	_Lcd_Cmd
	line	117
	
l2432:	
	movlw	low(02h)
	fcall	_Lcd_Cmd
	line	118
	
l2434:	
	movlw	low(02h)
	fcall	_Lcd_Cmd
	line	119
	
l2436:	
	movlw	low(08h)
	fcall	_Lcd_Cmd
	line	120
	
l2438:	
	movlw	low(0)
	fcall	_Lcd_Cmd
	line	121
	
l2440:	
	movlw	low(0Ch)
	fcall	_Lcd_Cmd
	line	122
	
l2442:	
	movlw	low(0)
	fcall	_Lcd_Cmd
	line	123
	
l2444:	
	movlw	low(06h)
	fcall	_Lcd_Cmd
	line	124
	
l77:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Start
	__end_of_Lcd_Start:
	signat	_Lcd_Start,89
	global	_Lcd_Set_Cursor

;; *************** function _Lcd_Set_Cursor *****************
;; Defined at:
;;		line 88 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    7[COMMON] unsigned char 
;;  temp            1   10[COMMON] unsigned char 
;;  y               1    9[COMMON] unsigned char 
;;  z               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	88
global __ptext13
__ptext13:	;psect for function _Lcd_Set_Cursor
psect	text13
	file	"../main.c"
	line	88
	global	__size_of_Lcd_Set_Cursor
	__size_of_Lcd_Set_Cursor	equ	__end_of_Lcd_Set_Cursor-_Lcd_Set_Cursor
	
_Lcd_Set_Cursor:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Set_Cursor: [wreg+status,2+status,0+pclath+cstack]
	movwf	(Lcd_Set_Cursor@a)
	line	91
	
l2392:	
		decf	((Lcd_Set_Cursor@a)),w
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l2402
u2580:
	line	93
	
l2394:	
	movf	(Lcd_Set_Cursor@b),w
	addlw	07Fh
	movwf	(??_Lcd_Set_Cursor+0)+0
	movf	(??_Lcd_Set_Cursor+0)+0,w
	movwf	(Lcd_Set_Cursor@temp)
	line	94
	movf	(Lcd_Set_Cursor@temp),w
	movwf	(??_Lcd_Set_Cursor+0)+0
	movlw	04h
u2595:
	clrc
	rrf	(??_Lcd_Set_Cursor+0)+0,f
	addlw	-1
	skipz
	goto	u2595
	movf	0+(??_Lcd_Set_Cursor+0)+0,w
	movwf	(??_Lcd_Set_Cursor+1)+0
	movf	(??_Lcd_Set_Cursor+1)+0,w
	movwf	(Lcd_Set_Cursor@z)
	line	95
	
l2396:	
	movf	(Lcd_Set_Cursor@temp),w
	andlw	0Fh
	movwf	(??_Lcd_Set_Cursor+0)+0
	movf	(??_Lcd_Set_Cursor+0)+0,w
	movwf	(Lcd_Set_Cursor@y)
	line	96
	
l2398:	
	movf	(Lcd_Set_Cursor@z),w
	fcall	_Lcd_Cmd
	line	97
	
l2400:	
	movf	(Lcd_Set_Cursor@y),w
	fcall	_Lcd_Cmd
	line	98
	goto	l72
	line	99
	
l2402:	
		movlw	2
	xorwf	((Lcd_Set_Cursor@a)),w
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l72
u2600:
	line	101
	
l2404:	
	movf	(Lcd_Set_Cursor@b),w
	addlw	0BFh
	movwf	(??_Lcd_Set_Cursor+0)+0
	movf	(??_Lcd_Set_Cursor+0)+0,w
	movwf	(Lcd_Set_Cursor@temp)
	line	102
	movf	(Lcd_Set_Cursor@temp),w
	movwf	(??_Lcd_Set_Cursor+0)+0
	movlw	04h
u2615:
	clrc
	rrf	(??_Lcd_Set_Cursor+0)+0,f
	addlw	-1
	skipz
	goto	u2615
	movf	0+(??_Lcd_Set_Cursor+0)+0,w
	movwf	(??_Lcd_Set_Cursor+1)+0
	movf	(??_Lcd_Set_Cursor+1)+0,w
	movwf	(Lcd_Set_Cursor@z)
	line	103
	
l2406:	
	movf	(Lcd_Set_Cursor@temp),w
	andlw	0Fh
	movwf	(??_Lcd_Set_Cursor+0)+0
	movf	(??_Lcd_Set_Cursor+0)+0,w
	movwf	(Lcd_Set_Cursor@y)
	line	104
	
l2408:	
	movf	(Lcd_Set_Cursor@z),w
	fcall	_Lcd_Cmd
	line	105
	
l2410:	
	movf	(Lcd_Set_Cursor@y),w
	fcall	_Lcd_Cmd
	line	107
	
l72:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Set_Cursor
	__end_of_Lcd_Set_Cursor:
	signat	_Lcd_Set_Cursor,8313
	global	_Lcd_Print_Ang

;; *************** function _Lcd_Print_Ang *****************
;; Defined at:
;;		line 148 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  f               3   58[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  str            80    0[BANK3 ] unsigned char [80]
;;  fval            3   80[BANK3 ] float 
;;  ival            2   83[BANK3 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/800
;;		On exit  : A00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0      85       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0      85       0
;;Total ram usage:       89 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Lcd_Print_String
;;		___awtoft
;;		___ftmul
;;		___ftsub
;;		___fttol
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	148
global __ptext14
__ptext14:	;psect for function _Lcd_Print_Ang
psect	text14
	file	"../main.c"
	line	148
	global	__size_of_Lcd_Print_Ang
	__size_of_Lcd_Print_Ang	equ	__end_of_Lcd_Print_Ang-_Lcd_Print_Ang
	
_Lcd_Print_Ang:	
;incstack = 0
	opt	callstack 4
; Regs used in _Lcd_Print_Ang: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	151
	
l2446:	
	movf	(Lcd_Print_Ang@f),w
	movwf	(___fttol@f1)
	movf	(Lcd_Print_Ang@f+1),w
	movwf	(___fttol@f1+1)
	movf	(Lcd_Print_Ang@f+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(Lcd_Print_Ang@ival+1)^0180h
	movf	(0+(?___fttol)),w
	movwf	(Lcd_Print_Ang@ival)^0180h
	line	152
	movf	(Lcd_Print_Ang@ival+1)^0180h,w
	movwf	(___awtoft@c+1)
	movf	(Lcd_Print_Ang@ival)^0180h,w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftsub@f2+2)
	movf	(Lcd_Print_Ang@f),w
	movwf	(___ftsub@f1)
	movf	(Lcd_Print_Ang@f+1),w
	movwf	(___ftsub@f1+1)
	movf	(Lcd_Print_Ang@f+2),w
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(Lcd_Print_Ang@fval)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(Lcd_Print_Ang@fval+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(Lcd_Print_Ang@fval+2)^0180h
	line	153
	
l2448:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Lcd_Print_Ang+0)+0
	movf	(??_Lcd_Print_Ang+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(Lcd_Print_Ang@ival+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(Lcd_Print_Ang@ival)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_sprintf)+01h
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xc8
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(Lcd_Print_Ang@fval)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(Lcd_Print_Ang@fval+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(Lcd_Print_Ang@fval+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	0+(?_sprintf)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?_sprintf)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?_sprintf)+03h
	movlw	(low(Lcd_Print_Ang@str|((0x1)<<8)))&0ffh
	fcall	_sprintf
	line	154
	
l2450:	
	movlw	(low(Lcd_Print_Ang@str|((0x1)<<8)))&0ffh
	fcall	_Lcd_Print_String
	line	155
	
l93:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Print_Ang
	__end_of_Lcd_Print_Ang:
	signat	_Lcd_Print_Ang,4217
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 500 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> Lcd_Print_Ang@str(80), 
;;  f               1   42[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  sp              1   56[BANK0 ] PTR unsigned char 
;;		 -> Lcd_Print_Ang@str(80), 
;;  tmpval          4    0        struct .
;;  val             2   54[BANK0 ] unsigned int 
;;  cp              2    0        PTR const unsigned char 
;;  len             2    0        unsigned int 
;;  c               1   57[BANK0 ] unsigned char 
;;  prec            1   53[BANK0 ] char 
;;  flag            1   52[BANK0 ] unsigned char 
;;  ap              1   51[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   42[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_Lcd_Print_Ang
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\doprnt.c"
	line	500
global __ptext15
__ptext15:	;psect for function _sprintf
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\doprnt.c"
	line	500
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	callstack 5
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(sprintf@sp)
	line	545
	
l1952:	
	movlw	(low(?_sprintf|((0x0)<<8)+01h))&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	548
	goto	l2004
	line	550
	
l1954:	
		movlw	37
	xorwf	((sprintf@c)),w
	btfsc	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l1960
u2200:
	line	553
	
l1956:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l1958:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	554
	goto	l2004
	line	560
	
l1960:	
	clrf	(sprintf@flag)
	line	654
	
l1964:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2006
	xorlw	100^0	; case 100
	skipnz
	goto	l1966
	xorlw	105^100	; case 105
	skipnz
	goto	l1966
	goto	l2004
	opt asmopt_pop

	line	1278
	
l1966:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@val+1)
	
l1968:	
	movlw	low(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1280
	
l1970:	
	btfss	(sprintf@val+1),7
	goto	u2211
	goto	u2210
u2211:
	goto	l1976
u2210:
	line	1281
	
l1972:	
	movlw	low(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1282
	
l1974:	
	comf	(sprintf@val),f
	comf	(sprintf@val+1),f
	incf	(sprintf@val),f
	skipnz
	incf	(sprintf@val+1),f
	line	1324
	
l1976:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1325
	
l1982:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@val+1),w
	skipz
	goto	u2225
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@val),w
u2225:
	skipnc
	goto	u2221
	goto	u2220
u2221:
	goto	l1986
u2220:
	goto	l1988
	line	1324
	
l1986:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
		movlw	5
	xorwf	((sprintf@c)),w
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l1982
u2230:
	line	1457
	
l1988:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l1994
u2240:
	line	1458
	
l1990:	
	movlw	low(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l1992:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1491
	
l1994:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1493
	goto	l2002
	line	1508
	
l1996:	
	movlw	0Ah
	movwf	(___lwmod@divisor)
	movlw	0
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((((_dpowers)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@val+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(sprintf@val),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1543
	
l1998:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2000:	
	movlw	low(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1493
	
l2002:	
	movlw	low(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
		incf	(((sprintf@prec))),w
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l1996
u2250:
	line	548
	
l2004:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	(((sprintf@c))),w
	btfss	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l1954
u2260:
	line	1557
	
l2006:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	line	1560
	
l221:	
	return
	opt callstack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\lwmod.c"
	line	5
global __ptext16
__ptext16:	;psect for function ___lwmod
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	callstack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	12
	
l1888:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u2071
	goto	u2070
u2071:
	goto	l1906
u2070:
	line	13
	
l1890:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	14
	goto	l1896
	line	15
	
l1892:	
	movlw	01h
	
u2085:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2085
	line	16
	
l1894:	
	movlw	low(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	line	14
	
l1896:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2091
	goto	u2090
u2091:
	goto	l1892
u2090:
	line	19
	
l1898:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2105
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2105:
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l1902
u2100:
	line	20
	
l1900:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	21
	
l1902:	
	movlw	01h
	
u2115:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2115
	line	22
	
l1904:	
	movlw	01h
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l1898
u2120:
	line	24
	
l1906:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	25
	
l643:	
	return
	opt callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\lwdiv.c"
	line	5
global __ptext17
__ptext17:	;psect for function ___lwdiv
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	callstack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	13
	
l1862:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	14
	
l1864:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l1884
u2000:
	line	15
	
l1866:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	16
	goto	l1872
	line	17
	
l1868:	
	movlw	01h
	
u2015:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2015
	line	18
	
l1870:	
	movlw	low(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	line	16
	
l1872:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2021
	goto	u2020
u2021:
	goto	l1868
u2020:
	line	21
	
l1874:	
	movlw	01h
	
u2035:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2035
	line	22
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2045
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2045:
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l1880
u2040:
	line	23
	
l1876:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	24
	
l1878:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	26
	
l1880:	
	movlw	01h
	
u2055:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2055
	line	27
	
l1882:	
	movlw	01h
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2061
	goto	u2060
u2061:
	goto	l1874
u2060:
	line	29
	
l1884:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	30
	
l633:	
	return
	opt callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    9[COMMON] unsigned long 
;;  exp1            1   13[COMMON] unsigned char 
;;  sign1           1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/800
;;		On exit  : B00/800
;;		Unchanged: B00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_Print_Ang
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\fttol.c"
	line	44
global __ptext18
__ptext18:	;psect for function ___fttol
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	callstack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2022:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	(((___fttol@exp1))),w
	btfss	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l2028
u2280:
	line	50
	
l2024:	
	movlw	high highword(0)
	movwf	(?___fttol+3)
	movlw	low highword(0)
	movwf	(?___fttol+2)
	movlw	high(0)
	movwf	(?___fttol+1)
	movlw	low(0)
	movwf	(?___fttol)

	goto	l521
	line	51
	
l2028:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2295:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2290:
	addlw	-1
	skipz
	goto	u2295
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2030:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2032:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2034:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2036:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l2038:	
	btfss	(___fttol@exp1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l2048
u2300:
	line	57
	
l2040:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2311
	goto	u2310
u2311:
	goto	l2046
u2310:
	goto	l2024
	line	60
	
l2046:	
	movlw	01h
u2325:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2325

	line	61
	movlw	low(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l2046
u2330:
	goto	l2056
	line	63
	
l2048:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l528
u2340:
	goto	l2024
	line	66
	
l2054:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2355:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2355
	line	67
	movlw	01h
	subwf	(___fttol@exp1),f
	line	68
	
l528:	
	line	65
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l2054
u2360:
	line	70
	
l2056:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l2060
u2370:
	line	71
	
l2058:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l2060:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l521:	
	return
	opt callstack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   42[BANK0 ] float 
;;  f1              3   45[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   42[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_Lcd_Print_Ang
;;		_sqrt
;;		_acos
;;		_asin
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftsub.c"
	line	17
global __ptext19
__ptext19:	;psect for function ___ftsub
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;incstack = 0
	opt	callstack 4
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l1776:	
	movf	(___ftsub@f2+2),w
	iorwf	(___ftsub@f2+1),w
	iorwf	(___ftsub@f2),w
	skipnz
	goto	u1891
	goto	u1890
u1891:
	goto	l1780
u1890:
	line	23
	
l1778:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	25
	
l1780:	
	movf	(___ftsub@f1),w
	movwf	(___ftadd@f1)
	movf	(___ftsub@f1+1),w
	movwf	(___ftadd@f1+1)
	movf	(___ftsub@f1+2),w
	movwf	(___ftadd@f1+2)
	movf	(___ftsub@f2),w
	movwf	(___ftadd@f2)
	movf	(___ftsub@f2+1),w
	movwf	(___ftadd@f2+1)
	movf	(___ftsub@f2+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	line	26
	
l517:	
	return
	opt callstack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;;  f2              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1    6[BANK0 ] unsigned char 
;;  exp2            1    5[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/200
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6       7       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		___ftsub
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftadd.c"
	line	86
global __ptext20
__ptext20:	;psect for function ___ftadd
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	callstack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1570:	
	movf	(___ftadd@f1),w
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	movf	((___ftadd@exp1)),w
	btfsc	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l1576
u1390:
	
l1572:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1401
	goto	u1400
u1401:
	goto	l1580
u1400:
	
l1574:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l1580
u1410:
	line	93
	
l1576:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l454
	line	94
	
l1580:	
	movf	((___ftadd@exp2)),w
	btfsc	status,2
	goto	u1421
	goto	u1420
u1421:
	goto	l457
u1420:
	
l1582:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1431
	goto	u1430
u1431:
	goto	l1586
u1430:
	
l1584:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l1586
u1440:
	
l457:	
	line	95
	goto	l454
	line	96
	
l1586:	
	movlw	low(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1588:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1451
	goto	u1450
u1451:
	goto	l458
u1450:
	line	98
	
l1590:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l458:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1461
	goto	u1460
u1461:
	goto	l459
u1460:
	line	100
	
l1592:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l459:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1594:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1596:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1471
	goto	u1470
u1471:
	goto	l1608
u1470:
	line	110
	
l1598:	
	movlw	01h
u1485:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u1485
	line	111
	movlw	01h
	subwf	(___ftadd@exp2),f
	line	112
	
l1600:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1491
	goto	u1490
u1491:
	goto	l1606
u1490:
	
l1602:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l1598
u1500:
	goto	l1606
	line	114
	
l1604:	
	movlw	01h
u1515:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u1515

	line	115
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	line	113
	
l1606:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1521
	goto	u1520
u1521:
	goto	l1604
u1520:
	goto	l468
	line	117
	
l1608:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1531
	goto	u1530
u1531:
	goto	l468
u1530:
	line	121
	
l1610:	
	movlw	01h
u1545:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u1545
	line	122
	movlw	01h
	subwf	(___ftadd@exp1),f
	line	123
	
l1612:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1551
	goto	u1550
u1551:
	goto	l1618
u1550:
	
l1614:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l1610
u1560:
	goto	l1618
	line	125
	
l1616:	
	movlw	01h
u1575:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u1575

	line	126
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	line	124
	
l1618:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1581
	goto	u1580
u1581:
	goto	l1616
u1580:
	line	129
	
l468:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1591
	goto	u1590
u1591:
	goto	l1622
u1590:
	line	131
	
l1620:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	line	134
	
l1622:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l1626
u1600:
	line	136
	
l1624:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	139
	
l1626:	
	clrf	(___ftadd@sign)
	line	140
	
l1628:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1611
	addwf	(___ftadd@f2+1),f
u1611:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1612
	addwf	(___ftadd@f2+2),f
u1612:

	line	141
	
l1630:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1621
	goto	u1620
u1621:
	goto	l1636
u1620:
	line	142
	
l1632:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l1634:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l1636:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l454:	
	return
	opt callstack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[BANK0 ] float 
;;  f2              3   29[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   37[BANK0 ] unsigned um
;;  sign            1   41[BANK0 ] unsigned char 
;;  cntr            1   40[BANK0 ] unsigned char 
;;  exp             1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Lcd_Print_Ang
;;		_main
;;		_sqrt
;;		_asin
;;		_atan
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftmul.c"
	line	62
global __ptext21
__ptext21:	;psect for function ___ftmul
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	callstack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1660:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	(((___ftmul@exp))),w
	btfss	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l1666
u1660:
	line	68
	
l1662:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l500
	line	69
	
l1666:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	(((___ftmul@sign))),w
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l1672
u1670:
	line	70
	
l1668:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l500
	line	71
	
l1672:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	
l1674:	
	movf	0+(___ftmul@f1)+02h,w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@sign)
	line	73
	
l1676:	
	movf	0+(___ftmul@f2)+02h,w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	
l1678:	
	movlw	low(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1680:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1682:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1684:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1686:	
	movlw	low(0)
	movwf	(___ftmul@f3_as_product)
	movlw	high(0)
	movwf	(___ftmul@f3_as_product+1)
	movlw	low highword(0)
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1688:	
	movlw	low(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	136
	
l1690:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l1694
u1680:
	line	137
	
l1692:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1691
	addwf	(___ftmul@f3_as_product+1),f
u1691:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1692
	addwf	(___ftmul@f3_as_product+2),f
u1692:

	line	138
	
l1694:	
	movlw	01h
u1705:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1705

	line	139
	
l1696:	
	movlw	01h
u1715:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1715
	line	140
	
l1698:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l1690
u1720:
	line	143
	
l1700:	
	movlw	low(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	145
	
l1702:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1731
	goto	u1730
u1731:
	goto	l1706
u1730:
	line	146
	
l1704:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1741
	addwf	(___ftmul@f3_as_product+1),f
u1741:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1742
	addwf	(___ftmul@f3_as_product+2),f
u1742:

	line	147
	
l1706:	
	movlw	01h
u1755:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1755

	line	148
	
l1708:	
	movlw	01h
u1765:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1765

	line	149
	
l1710:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l1702
u1770:
	line	156
	
l1712:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	157
	
l500:	
	return
	opt callstack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/B00
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Lcd_Print_Ang
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\awtoft.c"
	line	32
global __ptext22
__ptext22:	;psect for function ___awtoft
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	callstack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2010:	
	clrf	(___awtoft@sign)
	line	37
	
l2012:	
	btfss	(___awtoft@c+1),7
	goto	u2271
	goto	u2270
u2271:
	goto	l2018
u2270:
	line	38
	
l2014:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l2016:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l2018:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l427:	
	return
	opt callstack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\float.c"
	line	62
global __ptext23
__ptext23:	;psect for function ___ftpack
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	callstack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1524:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l1528
u1250:
	
l1526:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1261
	goto	u1260
u1261:
	goto	l1534
u1260:
	line	65
	
l1528:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l433
	line	67
	
l1532:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1275:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1275

	line	66
	
l1534:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l1532
u1280:
	goto	l437
	line	71
	
l1536:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1538:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1540:	
	movlw	01h
u1295:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1295

	line	74
	
l437:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l1536
u1300:
	goto	l1544
	line	76
	
l1542:	
	movlw	01h
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1315:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1315
	line	75
	
l1544:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l444
u1320:
	
l1546:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u1331
	goto	u1330
u1331:
	goto	l1542
u1330:
	
l444:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1341
	goto	u1340
u1341:
	goto	l445
u1340:
	line	80
	
l1548:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l445:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1550:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1355:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1350:
	addlw	-1
	skipz
	goto	u1355
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1552:	
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l446
u1360:
	line	84
	
l1554:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l446:	
	line	85
	line	86
	
l433:	
	return
	opt callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_Lcd_Print_String

;; *************** function _Lcd_Print_String *****************
;; Defined at:
;;		line 142 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR unsigned char 
;;		 -> main@e(3), main@d(3), main@c(3), main@b(3), 
;;		 -> main@a(3), Lcd_Print_Ang@str(80), 
;; Auto vars:     Size  Location     Type
;;  a               1   12[COMMON] PTR unsigned char 
;;		 -> main@e(3), main@d(3), main@c(3), main@b(3), 
;;		 -> main@a(3), Lcd_Print_Ang@str(80), 
;;  i               2   10[COMMON] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : A00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Print_Char
;; This function is called by:
;;		_Lcd_Print_Ang
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	142
global __ptext24
__ptext24:	;psect for function _Lcd_Print_String
psect	text24
	file	"../main.c"
	line	142
	global	__size_of_Lcd_Print_String
	__size_of_Lcd_Print_String	equ	__end_of_Lcd_Print_String-_Lcd_Print_String
	
_Lcd_Print_String:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Print_String: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(Lcd_Print_String@a)
	line	145
	
l2342:	
	clrf	(Lcd_Print_String@i)
	clrf	(Lcd_Print_String@i+1)
	goto	l2348
	line	146
	
l2344:	
	movf	(Lcd_Print_String@i),w
	addwf	(Lcd_Print_String@a),w
	movwf	(??_Lcd_Print_String+0)+0
	movf	0+(??_Lcd_Print_String+0)+0,w
	movwf	fsr0
	movf	indf,w
	fcall	_Lcd_Print_Char
	line	145
	
l2346:	
	movlw	01h
	addwf	(Lcd_Print_String@i),f
	skipnc
	incf	(Lcd_Print_String@i+1),f
	movlw	0
	addwf	(Lcd_Print_String@i+1),f
	
l2348:	
	movf	(Lcd_Print_String@i),w
	addwf	(Lcd_Print_String@a),w
	movwf	(??_Lcd_Print_String+0)+0
	movf	0+(??_Lcd_Print_String+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	(indf),w
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l2344
u2540:
	line	147
	
l90:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Print_String
	__end_of_Lcd_Print_String:
	signat	_Lcd_Print_String,4217
	global	_Lcd_Print_Char

;; *************** function _Lcd_Print_Char *****************
;; Defined at:
;;		line 126 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
;;  i               2    7[COMMON] int 
;;  i               2    5[COMMON] int 
;;  Upper_Nibble    1    3[COMMON] unsigned char 
;;  Lower_Nibble    1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : A00/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         7       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_SetBit
;; This function is called by:
;;		_Lcd_Print_String
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	126
global __ptext25
__ptext25:	;psect for function _Lcd_Print_Char
psect	text25
	file	"../main.c"
	line	126
	global	__size_of_Lcd_Print_Char
	__size_of_Lcd_Print_Char	equ	__end_of_Lcd_Print_Char-_Lcd_Print_Char
	
_Lcd_Print_Char:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Print_Char: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	movwf	(Lcd_Print_Char@data)
	line	129
	
l2300:	
	movf	(Lcd_Print_Char@data),w
	andlw	0Fh
	movwf	(??_Lcd_Print_Char+0)+0
	movf	(??_Lcd_Print_Char+0)+0,w
	movwf	(Lcd_Print_Char@Lower_Nibble)
	line	130
	movf	(Lcd_Print_Char@data),w
	andlw	0F0h
	movwf	(??_Lcd_Print_Char+0)+0
	movf	(??_Lcd_Print_Char+0)+0,w
	movwf	(Lcd_Print_Char@Upper_Nibble)
	line	131
	
l2302:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(66/8),(66)&7	;volatile
	line	132
	
l2304:	
	movf	(Lcd_Print_Char@Upper_Nibble),w
	movwf	(??_Lcd_Print_Char+0)+0
	movlw	04h
u2515:
	clrc
	rrf	(??_Lcd_Print_Char+0)+0,f
	addlw	-1
	skipz
	goto	u2515
	movf	0+(??_Lcd_Print_Char+0)+0,w
	fcall	_Lcd_SetBit
	line	133
	
l2306:	
	bsf	(67/8),(67)&7	;volatile
	line	134
	
l2308:	
	movlw	033h
	movwf	(Lcd_Print_Char@i)
	movlw	082h
	movwf	((Lcd_Print_Char@i))+1
	
l80:	
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	
l2314:	
	movlw	0FFh
	addwf	(Lcd_Print_Char@i),f
	skipnc
	incf	(Lcd_Print_Char@i+1),f
	movlw	0FFh
	addwf	(Lcd_Print_Char@i+1),f
	
l2316:	
	movf	(Lcd_Print_Char@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2525
	movlw	01h
	subwf	(Lcd_Print_Char@i),w
u2525:

	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l80
u2520:
	
l81:	
	line	135
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	136
	
l2318:	
	movf	(Lcd_Print_Char@Lower_Nibble),w
	fcall	_Lcd_SetBit
	line	137
	
l2320:	
	bsf	(67/8),(67)&7	;volatile
	line	138
	
l2322:	
	movlw	033h
	movwf	(Lcd_Print_Char@i_86)
	movlw	082h
	movwf	((Lcd_Print_Char@i_86))+1
	
l82:	
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	
l2328:	
	movlw	0FFh
	addwf	(Lcd_Print_Char@i_86),f
	skipnc
	incf	(Lcd_Print_Char@i_86+1),f
	movlw	0FFh
	addwf	(Lcd_Print_Char@i_86+1),f
	
l2330:	
	movf	(Lcd_Print_Char@i_86+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u2535
	movlw	01h
	subwf	(Lcd_Print_Char@i_86),w
u2535:

	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l82
u2530:
	
l83:	
	line	139
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	140
	
l84:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Print_Char
	__end_of_Lcd_Print_Char:
	signat	_Lcd_Print_Char,4217
	global	_Lcd_Clear

;; *************** function _Lcd_Clear *****************
;; Defined at:
;;		line 82 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   65[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/200
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	82
global __ptext26
__ptext26:	;psect for function _Lcd_Clear
psect	text26
	file	"../main.c"
	line	82
	global	__size_of_Lcd_Clear
	__size_of_Lcd_Clear	equ	__end_of_Lcd_Clear-_Lcd_Clear
	
_Lcd_Clear:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	84
	
l2390:	
	movlw	low(0)
	fcall	_Lcd_Cmd
	line	85
	movlw	low(01h)
	fcall	_Lcd_Cmd
	line	86
	
l66:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Clear
	__end_of_Lcd_Clear:
	signat	_Lcd_Clear,90
	global	_Lcd_Cmd

;; *************** function _Lcd_Cmd *****************
;; Defined at:
;;		line 73 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_SetBit
;; This function is called by:
;;		_Lcd_Clear
;;		_Lcd_Set_Cursor
;;		_Lcd_Start
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	73
global __ptext27
__ptext27:	;psect for function _Lcd_Cmd
psect	text27
	file	"../main.c"
	line	73
	global	__size_of_Lcd_Cmd
	__size_of_Lcd_Cmd	equ	__end_of_Lcd_Cmd-_Lcd_Cmd
	
_Lcd_Cmd:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Cmd: [wreg+status,2+status,0+pclath+cstack]
	movwf	(Lcd_Cmd@a)
	line	75
	
l2332:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	76
	
l2334:	
	movf	(Lcd_Cmd@a),w
	fcall	_Lcd_SetBit
	line	77
	
l2336:	
	bsf	(67/8),(67)&7	;volatile
	line	78
	
l2338:	
	opt asmopt_push
opt asmopt_off
movlw	26
movwf	((??_Lcd_Cmd+0)+0+1),f
	movlw	248
movwf	((??_Lcd_Cmd+0)+0),f
	u2667:
decfsz	((??_Lcd_Cmd+0)+0),f
	goto	u2667
	decfsz	((??_Lcd_Cmd+0)+0+1),f
	goto	u2667
	nop
opt asmopt_pop

	line	79
	
l2340:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7	;volatile
	line	80
	
l63:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Cmd
	__end_of_Lcd_Cmd:
	signat	_Lcd_Cmd,4217
	global	_Lcd_SetBit

;; *************** function _Lcd_SetBit *****************
;; Defined at:
;;		line 50 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  data_bit        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data_bit        1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd_Cmd
;;		_Lcd_Start
;;		_Lcd_Print_Char
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	line	50
global __ptext28
__ptext28:	;psect for function _Lcd_SetBit
psect	text28
	file	"../main.c"
	line	50
	global	__size_of_Lcd_SetBit
	__size_of_Lcd_SetBit	equ	__end_of_Lcd_SetBit-_Lcd_SetBit
	
_Lcd_SetBit:	
;incstack = 0
	opt	callstack 6
; Regs used in _Lcd_SetBit: [wreg]
	movwf	(Lcd_SetBit@data_bit)
	line	52
	
l2290:	
	btfss	(Lcd_SetBit@data_bit),(0)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l52
u2470:
	line	53
	
l2292:	
	bsf	(68/8),(68)&7	;volatile
	goto	l53
	line	54
	
l52:	
	line	55
	bcf	(68/8),(68)&7	;volatile
	
l53:	
	line	57
	btfss	(Lcd_SetBit@data_bit),(1)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l54
u2480:
	line	58
	
l2294:	
	bsf	(69/8),(69)&7	;volatile
	goto	l55
	line	59
	
l54:	
	line	60
	bcf	(69/8),(69)&7	;volatile
	
l55:	
	line	62
	btfss	(Lcd_SetBit@data_bit),(2)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l56
u2490:
	line	63
	
l2296:	
	bsf	(70/8),(70)&7	;volatile
	goto	l57
	line	64
	
l56:	
	line	65
	bcf	(70/8),(70)&7	;volatile
	
l57:	
	line	67
	btfss	(Lcd_SetBit@data_bit),(3)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l58
u2500:
	line	68
	
l2298:	
	bsf	(71/8),(71)&7	;volatile
	goto	l60
	line	69
	
l58:	
	line	70
	bcf	(71/8),(71)&7	;volatile
	line	71
	
l60:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_SetBit
	__end_of_Lcd_SetBit:
	signat	_Lcd_SetBit,4217
	global	_ADC_Read

;; *************** function _ADC_Read *****************
;; Defined at:
;;		line 41 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	41
global __ptext29
__ptext29:	;psect for function _ADC_Read
psect	text29
	file	"../main.c"
	line	41
	global	__size_of_ADC_Read
	__size_of_ADC_Read	equ	__end_of_ADC_Read-_ADC_Read
	
_ADC_Read:	
;incstack = 0
	opt	callstack 7
; Regs used in _ADC_Read: [wreg+status,2+status,0]
	movwf	(ADC_Read@channel)
	line	43
	
l2108:	
	movf	(ADC_Read@channel),w
	movwf	(??_ADC_Read+0)+0
	movlw	(03h)-1
u2415:
	clrc
	rlf	(??_ADC_Read+0)+0,f
	addlw	-1
	skipz
	goto	u2415
	clrc
	rlf	(??_ADC_Read+0)+0,w
	movwf	(??_ADC_Read+1)+0
	movf	(??_ADC_Read+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(31),f	;volatile
	line	44
	
l2110:	
	opt asmopt_push
opt asmopt_off
movlw	13
movwf	((??_ADC_Read+0)+0+1),f
	movlw	251
movwf	((??_ADC_Read+0)+0),f
	u2677:
decfsz	((??_ADC_Read+0)+0),f
	goto	u2677
	decfsz	((??_ADC_Read+0)+0+1),f
	goto	u2677
	nop2
opt asmopt_pop

	line	45
	
l2112:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	46
	
l46:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u2421
	goto	u2420
u2421:
	goto	l46
u2420:
	line	47
	
l2114:	
	movf	(30),w	;volatile
	movwf	(?_ADC_Read+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(?_ADC_Read)
	line	48
	
l49:	
	return
	opt callstack 0
GLOBAL	__end_of_ADC_Read
	__end_of_ADC_Read:
	signat	_ADC_Read,4218
	global	_ADC_Initialize

;; *************** function _ADC_Initialize *****************
;; Defined at:
;;		line 34 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	line	34
global __ptext30
__ptext30:	;psect for function _ADC_Initialize
psect	text30
	file	"../main.c"
	line	34
	global	__size_of_ADC_Initialize
	__size_of_ADC_Initialize	equ	__end_of_ADC_Initialize-_ADC_Initialize
	
_ADC_Initialize:	
;incstack = 0
	opt	callstack 7
; Regs used in _ADC_Initialize: [wreg]
	line	36
	
l2104:	
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	37
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	38
	
l2106:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(248/8),(248)&7	;volatile
	line	39
	
l43:	
	return
	opt callstack 0
GLOBAL	__end_of_ADC_Initialize
	__end_of_ADC_Initialize:
	signat	_ADC_Initialize,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
