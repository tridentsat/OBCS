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
	FNCALL	_main,_Initialize_UART
	FNCALL	_main,_UART_send_char
	FNCALL	_main,_UART_send_float
	FNCALL	_main,_UART_send_string
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
	FNCALL	_UART_send_string,_UART_send_char
	FNCALL	_UART_send_float,_UART_send_char
	FNCALL	_UART_send_float,___awdiv
	FNCALL	_UART_send_float,___awmod
	FNCALL	_UART_send_float,___awtoft
	FNCALL	_UART_send_float,___ftmul
	FNCALL	_UART_send_float,___ftsub
	FNCALL	_UART_send_float,___fttol
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	global	atan@coeff_a
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
	global	atan@coeff_a
	global	atan@coeff_b
	global	_errno
	global	_TXREG
_TXREG	set	0x19
	global	_ADRESH
_ADRESH	set	0x1E
	global	_ADCON0
_ADCON0	set	0x1F
	global	_TXIF
_TXIF	set	0x64
	global	_RX9
_RX9	set	0xC6
	global	_CREN
_CREN	set	0xC4
	global	_SPEN
_SPEN	set	0xC7
	global	_GO_nDONE
_GO_nDONE	set	0xFA
	global	_ADON
_ADON	set	0xF8
	global	_TRISB
_TRISB	set	0x86
	global	_SPBRG
_SPBRG	set	0x99
	global	_ADRESL
_ADRESL	set	0x9E
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISB0
_TRISB0	set	0x430
	global	_TX9
_TX9	set	0x4C6
	global	_TXEN
_TXEN	set	0x4C5
	global	_SYNC
_SYNC	set	0x4C4
	global	_BRGH
_BRGH	set	0x4C2
	global	_TRISC7
_TRISC7	set	0x43F
	global	_TRISC6
_TRISC6	set	0x43E
	
STR_1:	
	retlw	85	;'U'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	122	;'z'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	10
	retlw	0
psect	strings
	
STR_2:	
	retlw	83	;'S'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	75	;'K'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_6:	
	retlw	32	;' '
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	88	;'X'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	88	;'X'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	32	;' '
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	88	;'X'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_4:	
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	88	;'X'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	32	;' '
	retlw	90	;'Z'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	88	;'X'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
STR_3	equ	STR_6+4
; #config settings
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
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

	file	"Debug.as"
	line	#
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	ds	3
	global	_asin$730
_asin$730:	; 3 bytes @ 0x3
	ds	3
	global	_asin$729
_asin$729:	; 3 bytes @ 0x6
	ds	3
	global	_asin$732
_asin$732:	; 3 bytes @ 0x9
	ds	3
	global	asin@y
asin@y:	; 3 bytes @ 0xC
	ds	3
	global	_asin$731
_asin$731:	; 3 bytes @ 0xF
	ds	3
??_main:	; 1 bytes @ 0x12
	ds	3
	global	main@A
main@A:	; 3 bytes @ 0x15
	ds	3
	global	main@B
main@B:	; 3 bytes @ 0x18
	ds	3
	global	main@C
main@C:	; 3 bytes @ 0x1B
	ds	3
	global	main@D
main@D:	; 3 bytes @ 0x1E
	ds	3
	global	main@E
main@E:	; 3 bytes @ 0x21
	ds	3
	global	_main$721
_main$721:	; 3 bytes @ 0x24
	ds	3
	global	_main$722
_main$722:	; 3 bytes @ 0x27
	ds	3
	global	_main$723
_main$723:	; 3 bytes @ 0x2A
	ds	3
	global	_main$724
_main$724:	; 3 bytes @ 0x2D
	ds	3
	global	_main$725
_main$725:	; 3 bytes @ 0x30
	ds	3
	global	main@x
main@x:	; 3 bytes @ 0x33
	ds	3
	global	main@y
main@y:	; 3 bytes @ 0x36
	ds	3
	global	main@z
main@z:	; 3 bytes @ 0x39
	ds	3
	global	main@negx
main@negx:	; 3 bytes @ 0x3C
	ds	3
	global	main@negy
main@negy:	; 3 bytes @ 0x3F
	ds	3
	global	main@r
main@r:	; 3 bytes @ 0x42
	ds	3
	global	_main$726
_main$726:	; 3 bytes @ 0x45
	ds	3
	global	_main$727
_main$727:	; 3 bytes @ 0x48
	ds	3
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?___ftge:	; 1 bit 
?_ADC_Initialize:	; 1 bytes @ 0x0
??_ADC_Initialize:	; 1 bytes @ 0x0
?_Initialize_UART:	; 1 bytes @ 0x0
??_Initialize_UART:	; 1 bytes @ 0x0
?_UART_send_char:	; 1 bytes @ 0x0
??_UART_send_char:	; 1 bytes @ 0x0
?_UART_send_string:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	?_ADC_Read
?_ADC_Read:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	UART_send_char@bt
UART_send_char@bt:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds	1
??_UART_send_string:	; 1 bytes @ 0x1
??___bmul:	; 1 bytes @ 0x1
	ds	1
??_ADC_Read:	; 1 bytes @ 0x2
	global	UART_send_string@st_pt
UART_send_string@st_pt:	; 1 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??___awdiv:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
	global	ADC_Read@channel
ADC_Read@channel:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
??___ftge:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x8
	ds	3
??___awtoft:	; 1 bytes @ 0xB
??___lwtoft:	; 1 bytes @ 0xB
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xB
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
??_acos:	; 1 bytes @ 0xE
??_asin:	; 1 bytes @ 0xE
??_fabs:	; 1 bytes @ 0xE
??_UART_send_float:	; 1 bytes @ 0xE
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
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x2A
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x2A
	global	?___fttol
?___fttol:	; 4 bytes @ 0x2A
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x2A
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x2A
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x2A
	ds	3
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x2D
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x2D
	ds	1
??___fttol:	; 1 bytes @ 0x2E
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x2E
	ds	2
??_eval_poly:	; 1 bytes @ 0x30
	global	?_sqrt
?_sqrt:	; 3 bytes @ 0x30
	global	sqrt@a
sqrt@a:	; 3 bytes @ 0x30
	ds	1
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x31
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x32
	ds	1
??_sqrt:	; 1 bytes @ 0x33
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x33
	ds	1
	global	?_atan
?_atan:	; 3 bytes @ 0x34
	global	atan@f
atan@f:	; 3 bytes @ 0x34
	ds	3
??_atan:	; 1 bytes @ 0x37
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x37
	ds	1
?_UART_send_float:	; 1 bytes @ 0x38
	global	UART_send_float@bt
UART_send_float@bt:	; 3 bytes @ 0x38
	global	atan@y
atan@y:	; 3 bytes @ 0x38
	ds	1
	global	sqrt@z
sqrt@z:	; 3 bytes @ 0x39
	ds	2
	global	UART_send_float@f
UART_send_float@f:	; 3 bytes @ 0x3B
	global	atan@x
atan@x:	; 3 bytes @ 0x3B
	ds	1
	global	sqrt@i
sqrt@i:	; 1 bytes @ 0x3C
	ds	1
	global	sqrt@q
sqrt@q:	; 3 bytes @ 0x3D
	ds	1
	global	atan@recip
atan@recip:	; 1 bytes @ 0x3E
	global	UART_send_float@ival1
UART_send_float@ival1:	; 2 bytes @ 0x3E
	ds	1
	global	atan@val_squared
atan@val_squared:	; 3 bytes @ 0x3F
	ds	1
	global	UART_send_float@fval1
UART_send_float@fval1:	; 2 bytes @ 0x40
	global	sqrt@x
sqrt@x:	; 3 bytes @ 0x40
	ds	2
	global	UART_send_float@fval
UART_send_float@fval:	; 2 bytes @ 0x42
	global	atan@val
atan@val:	; 3 bytes @ 0x42
	ds	2
	global	UART_send_float@ival
UART_send_float@ival:	; 2 bytes @ 0x44
	ds	1
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
	global	_acos$728
_acos$728:	; 3 bytes @ 0x4B
	ds	3
;!
;!Data Sizes:
;!    Strings     105
;!    Constant    33
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     78      78
;!    BANK1            80     75      77
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 18
;!		 -> atan@coeff_a(CODE[18]), atan@coeff_b(CODE[15]), 
;!
;!    UART_send_string@st_pt	PTR unsigned char  size(1) Largest target is 36
;!		 -> STR_7(CODE[13]), STR_6(CODE[14]), STR_5(CODE[10]), STR_4(CODE[10]), 
;!		 -> STR_3(CODE[10]), STR_2(CODE[22]), STR_1(CODE[36]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___ftadd
;!    ___ftneg->___ftadd
;!    _eval_poly->___ftadd
;!    ___lwtoft->___ftpack
;!    _UART_send_string->_UART_send_char
;!    _UART_send_float->___awtoft
;!    ___ftsub->___awtoft
;!    ___ftsub->___ftadd
;!    ___ftadd->___ftpack
;!    ___ftadd->___ftpack
;!    ___ftmul->___ftadd
;!    ___awtoft->___ftpack
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
;!    _UART_send_float->___fttol
;!    ___fttol->___ftmul
;!    ___ftsub->___ftmul
;!    ___ftmul->___ftdiv
;!
;!Critical Paths under _main in BANK1
;!
;!    _acos->_asin
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
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
;! (0) _main                                                57    57      0   93600
;!                                             18 BANK1     57    57      0
;!                     _ADC_Initialize
;!                           _ADC_Read
;!                    _Initialize_UART
;!                     _UART_send_char
;!                    _UART_send_float
;!                   _UART_send_string
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
;! (1) _UART_send_string                                     2     2      0     256
;!                                              1 COMMON     2     2      0
;!                     _UART_send_char
;! ---------------------------------------------------------------------------------
;! (1) _UART_send_float                                     14    11      3   13142
;!                                             56 BANK0     14    11      3
;!                     _UART_send_char
;!                            ___awdiv
;!                            ___awmod
;!                           ___awtoft
;!                            ___ftmul
;!                            ___ftsub
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     358
;!                                             42 BANK0     14    10      4
;!                            ___ftmul (ARG)
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
;! (2) ___awmod                                              7     3      4     508
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     512
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! (2) _UART_send_char                                       1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Initialize_UART                                      0     0      0       0
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
;!   _Initialize_UART
;!   _UART_send_char
;!   _UART_send_float
;!     _UART_send_char
;!     ___awdiv
;!     ___awmod
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
;!   _UART_send_string
;!     _UART_send_char
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
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      A9       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     4E      4E       5       97.5%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50     4B      4D       7       96.3%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      A9      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 104 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  r               3   66[BANK1 ] float 
;;  negy            3   63[BANK1 ] float 
;;  negx            3   60[BANK1 ] float 
;;  z               3   57[BANK1 ] float 
;;  y               3   54[BANK1 ] float 
;;  x               3   51[BANK1 ] float 
;;  E               3   33[BANK1 ] float 
;;  D               3   30[BANK1 ] float 
;;  C               3   27[BANK1 ] float 
;;  B               3   24[BANK1 ] float 
;;  A               3   21[BANK1 ] float 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      54       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0      57       0       0
;;Total ram usage:       57 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ADC_Initialize
;;		_ADC_Read
;;		_Initialize_UART
;;		_UART_send_char
;;		_UART_send_float
;;		_UART_send_string
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
	line	104
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../main.c"
	line	104
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	callstack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	110
	
l2105:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	111
	
l2107:	
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	113
	
l2109:	
	fcall	_ADC_Initialize
	line	114
	
l2111:	
	fcall	_Initialize_UART
	line	116
	
l2113:	
	movlw	(low((((STR_1)-__stringbase)|8000h)))&0ffh
	fcall	_UART_send_string
	line	117
	
l2115:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	line	118
	
l2117:	
	movlw	(low((((STR_2)-__stringbase)|8000h)))&0ffh
	fcall	_UART_send_string
	line	119
	
l2119:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	line	126
	
l2121:	
	fcall	_ADC_Initialize
	line	127
	
l2123:	
	movlw	low(0)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?_ADC_Read)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@x)^080h
	movf	(1+(?___lwtoft)),w
	movwf	(main@x+1)^080h
	movf	(2+(?___lwtoft)),w
	movwf	(main@x+2)^080h
	line	128
	
l2125:	
	movlw	low(01h)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?_ADC_Read)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@y)^080h
	movf	(1+(?___lwtoft)),w
	movwf	(main@y+1)^080h
	movf	(2+(?___lwtoft)),w
	movwf	(main@y+2)^080h
	line	129
	
l2127:	
	movlw	low(02h)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?_ADC_Read)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@z)^080h
	movf	(1+(?___lwtoft)),w
	movwf	(main@z+1)^080h
	movf	(2+(?___lwtoft)),w
	movwf	(main@z+2)^080h
	line	130
	
l2129:	
	movlw	low(03h)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?_ADC_Read)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@negx)^080h
	movf	(1+(?___lwtoft)),w
	movwf	(main@negx+1)^080h
	movf	(2+(?___lwtoft)),w
	movwf	(main@negx+2)^080h
	line	131
	
l2131:	
	movlw	low(04h)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?_ADC_Read)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@negy)^080h
	movf	(1+(?___lwtoft)),w
	movwf	(main@negy+1)^080h
	movf	(2+(?___lwtoft)),w
	movwf	(main@negy+2)^080h
	line	136
	
l2133:	
	movf	(main@negy)^080h,w
	movwf	(___ftadd@f1)
	movf	(main@negy+1)^080h,w
	movwf	(___ftadd@f1+1)
	movf	(main@negy+2)^080h,w
	movwf	(___ftadd@f1+2)
	movf	(main@y)^080h,w
	movwf	(___ftadd@f2)
	movf	(main@y+1)^080h,w
	movwf	(___ftadd@f2+1)
	movf	(main@y+2)^080h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftmul@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negy)^080h,w
	movwf	(___ftadd@f1)
	movf	(main@negy+1)^080h,w
	movwf	(___ftadd@f1+1)
	movf	(main@negy+2)^080h,w
	movwf	(___ftadd@f1+2)
	movf	(main@y)^080h,w
	movwf	(___ftadd@f2)
	movf	(main@y+1)^080h,w
	movwf	(___ftadd@f2+1)
	movf	(main@y+2)^080h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$721)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$721+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$721+2)^080h
	
l2135:	
	movf	(main@negx)^080h,w
	movwf	(___ftadd@f1)
	movf	(main@negx+1)^080h,w
	movwf	(___ftadd@f1+1)
	movf	(main@negx+2)^080h,w
	movwf	(___ftadd@f1+2)
	movf	(main@x)^080h,w
	movwf	(___ftadd@f2)
	movf	(main@x+1)^080h,w
	movwf	(___ftadd@f2+1)
	movf	(main@x+2)^080h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftmul@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negx)^080h,w
	movwf	(___ftadd@f1)
	movf	(main@negx+1)^080h,w
	movwf	(___ftadd@f1+1)
	movf	(main@negx+2)^080h,w
	movwf	(___ftadd@f1+2)
	movf	(main@x)^080h,w
	movwf	(___ftadd@f2)
	movf	(main@x+1)^080h,w
	movwf	(___ftadd@f2+1)
	movf	(main@x+2)^080h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$722)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$722+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$722+2)^080h
	
l2137:	
	movf	(_main$721)^080h,w
	movwf	(___ftadd@f1)
	movf	(_main$721+1)^080h,w
	movwf	(___ftadd@f1+1)
	movf	(_main$721+2)^080h,w
	movwf	(___ftadd@f1+2)
	movf	(_main$722)^080h,w
	movwf	(___ftadd@f2)
	movf	(_main$722+1)^080h,w
	movwf	(___ftadd@f2+1)
	movf	(_main$722+2)^080h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$723)^080h
	movf	(1+(?___ftadd)),w
	movwf	(_main$723+1)^080h
	movf	(2+(?___ftadd)),w
	movwf	(_main$723+2)^080h
	
l2139:	
	movf	(main@z)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@z+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@z+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@z)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@z+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@z+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$723)^080h,w
	movwf	(___ftadd@f2)
	movf	(_main$723+1)^080h,w
	movwf	(___ftadd@f2+1)
	movf	(_main$723+2)^080h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$724)^080h
	movf	(1+(?___ftadd)),w
	movwf	(_main$724+1)^080h
	movf	(2+(?___ftadd)),w
	movwf	(_main$724+2)^080h
	
l2141:	
	movf	(_main$724)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sqrt@a)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$724+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sqrt@a+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$724+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sqrt@a+2)
	fcall	_sqrt
	movf	(0+(?_sqrt)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$725)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_sqrt)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$725+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_sqrt)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$725+2)^080h
	
l2143:	
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	movf	(_main$725)^080h,w
	movwf	(___ftadd@f2)
	movf	(_main$725+1)^080h,w
	movwf	(___ftadd@f2+1)
	movf	(_main$725+2)^080h,w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@r)^080h
	movf	(1+(?___ftadd)),w
	movwf	(main@r+1)^080h
	movf	(2+(?___ftadd)),w
	movwf	(main@r+2)^080h
	line	137
	
l2145:	
	movf	(main@r)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@r+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@r+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726+2)^080h
	
l2147:	
	movf	(_main$726)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$726+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$726+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x+2)
	fcall	_acos
	movf	(0+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727+2)^080h
	
l2149:	
	movlw	0x29
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x65
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@A)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@A+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@A+2)^080h
	line	138
	
l2151:	
	movf	(main@r)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@r+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@r+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726+2)^080h
	
l2153:	
	movf	(_main$726)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$726+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$726+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x+2)
	fcall	_acos
	movf	(0+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727+2)^080h
	
l2155:	
	movlw	0x29
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x65
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@B)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@B+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@B+2)^080h
	line	139
	
l2157:	
	movf	(main@r)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@r+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@r+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@z)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@z+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@z+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726+2)^080h
	
l2159:	
	movf	(_main$726)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$726+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$726+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x+2)
	fcall	_acos
	movf	(0+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727+2)^080h
	
l2161:	
	movlw	0x29
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x65
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@C)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@C+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@C+2)^080h
	line	140
	
l2163:	
	movf	(main@r)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@r+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@r+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negx)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negx+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negx+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726+2)^080h
	
l2165:	
	movf	(_main$726)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$726+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$726+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x+2)
	fcall	_acos
	movf	(0+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727+2)^080h
	
l2167:	
	movlw	0x29
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x65
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@D)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@D+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@D+2)^080h
	line	141
	
l2169:	
	movf	(main@r)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@r+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@r+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negy)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negy+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negy+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$726+2)^080h
	
l2171:	
	movf	(_main$726)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$726+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$726+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(acos@x+2)
	fcall	_acos
	movf	(0+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_acos)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$727+2)^080h
	
l2173:	
	movlw	0x29
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x65
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$727+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@E)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@E+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@E+2)^080h
	line	146
	
l2175:	
	movlw	(low((((STR_3)-__stringbase)|8000h)))&0ffh
	fcall	_UART_send_string
	line	147
	
l2177:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@A)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@A+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@A+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+2)
	fcall	_UART_send_float
	
l2179:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	
l2181:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+2)
	fcall	_UART_send_float
	
l2183:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	line	148
	
l2185:	
	movlw	(low((((STR_4)-__stringbase)|8000h)))&0ffh
	fcall	_UART_send_string
	line	149
	
l2187:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@B)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@B+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@B+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+2)
	fcall	_UART_send_float
	
l2189:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	
l2191:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+2)
	fcall	_UART_send_float
	
l2193:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	line	150
	
l2195:	
	movlw	(low((((STR_5)-__stringbase)|8000h)))&0ffh
	fcall	_UART_send_string
	line	151
	
l2197:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@C)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@C+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@C+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+2)
	fcall	_UART_send_float
	
l2199:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	
l2201:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negx)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negx+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negx+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+2)
	fcall	_UART_send_float
	
l2203:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	line	152
	
l2205:	
	movlw	(low((((STR_6)-__stringbase)|8000h)))&0ffh
	fcall	_UART_send_string
	line	153
	
l2207:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@D)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@D+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@D+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+2)
	fcall	_UART_send_float
	
l2209:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	
l2211:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negy)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negy+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@negy+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+2)
	fcall	_UART_send_float
	
l2213:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	line	154
	
l2215:	
	movlw	(low((((STR_7)-__stringbase)|8000h)))&0ffh
	fcall	_UART_send_string
	line	155
	
l2217:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@E)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@E+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@E+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+2)
	fcall	_UART_send_float
	
l2219:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	
l2221:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@z)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@z+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@z+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(UART_send_float@bt+2)
	fcall	_UART_send_float
	
l2223:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	line	156
	
l2225:	
	opt asmopt_push
opt asmopt_off
movlw  26
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	94
movwf	((??_main+0)^080h+0+1),f
	movlw	109
movwf	((??_main+0)^080h+0),f
	u2267:
decfsz	((??_main+0)^080h+0),f
	goto	u2267
	decfsz	((??_main+0)^080h+0+1),f
	goto	u2267
	decfsz	((??_main+0)^080h+0+2),f
	goto	u2267
	nop2
opt asmopt_pop

	line	157
	
l2227:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	
l2229:	
	movlw	low(0Dh)
	fcall	_UART_send_char
	goto	l2121
	global	start
	ljmp	start
	opt callstack 0
	line	160
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
	
l2099:	
	movf	(acos@x),w
	movwf	(asin@x)
	movf	(acos@x+1),w
	movwf	(asin@x+1)
	movf	(acos@x+2),w
	movwf	(asin@x+2)
	fcall	_asin
	movf	(0+(?_asin)),w
	movwf	(_acos$728)
	movf	(1+(?_asin)),w
	movwf	(_acos$728+1)
	movf	(2+(?_asin)),w
	movwf	(_acos$728+2)
	
l2101:	
	movf	(_acos$728),w
	movwf	(___ftsub@f2)
	movf	(_acos$728+1),w
	movwf	(___ftsub@f2+1)
	movf	(_acos$728+2),w
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
	
l617:	
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
	
l2059:	
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
	movwf	(_asin$729)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_fabs)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$729+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_fabs)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$729+2)^080h
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movf	(_asin$729)^080h,w
	movwf	(___ftge@ff2)
	movf	(_asin$729+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(_asin$729+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2231
	goto	u2230
u2231:
	goto	l2065
u2230:
	line	15
	
l2061:	
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
	goto	l629
	line	18
	
l2065:	
	line	19
	
l2067:	
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
	movwf	(_asin$730)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$730+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$730+2)^080h
	
l2069:	
	movf	(_asin$730)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sqrt@a)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$730+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(sqrt@a+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$730+2)^080h,w
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
	
l2071:	
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
	movwf	(_asin$729)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_fabs)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$729+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_fabs)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$729+2)^080h
	
l2073:	
	movf	(_asin$729)^080h,w
	movwf	(___ftge@ff1)
	movf	(_asin$729+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_asin$729+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0xc3
	movwf	(___ftge@ff2)
	movlw	0x35
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u2241
	goto	u2240
u2241:
	goto	l2081
u2240:
	line	21
	
l2075:	
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
	movwf	(_asin$731)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$731+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$731+2)^080h
	
l2077:	
	movf	(_asin$731)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$731+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$731+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+2)
	fcall	_atan
	movf	(0+(?_atan)),w
	movwf	(?_asin)
	movf	(1+(?_atan)),w
	movwf	(?_asin+1)
	movf	(2+(?_atan)),w
	movwf	(?_asin+2)
	goto	l629
	line	22
	
l2081:	
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
	goto	u2251
	goto	u2250
u2251:
	goto	l2091
u2250:
	line	23
	
l2083:	
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
	movwf	(_asin$731)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$731+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$731+2)^080h
	
l2085:	
	movf	(_asin$731)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$731+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$731+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+2)
	fcall	_atan
	movf	(0+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$732)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$732+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$732+2)^080h
	
l2087:	
	movlw	0x10
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f1)
	movlw	0xc9
	movwf	(___ftsub@f1+1)
	movlw	0x3f
	movwf	(___ftsub@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$732)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$732+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$732+2)^080h,w
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
	goto	l629
	line	24
	
l2091:	
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
	movwf	(_asin$731)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$731+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$731+2)^080h
	
l2093:	
	movf	(_asin$731)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$731+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$731+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(atan@f+2)
	fcall	_atan
	movf	(0+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$732)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$732+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_atan)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_asin$732+2)^080h
	
l2095:	
	movf	(_asin$732)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$732+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_asin$732+2)^080h,w
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
	
l629:	
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
	
l1647:	
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
	goto	u1751
	goto	u1750
u1751:
	goto	l1655
u1750:
	line	139
	
l1649:	
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
	goto	u1761
	goto	u1760
u1761:
	goto	l609
u1760:
	line	140
	
l1651:	
	movlw	021h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_errno)^080h
	movlw	0
	movwf	((_errno)^080h)+1
	line	141
	
l609:	
	line	142
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_sqrt)
	movlw	0x0
	movwf	(?_sqrt+1)
	movlw	0x0
	movwf	(?_sqrt+2)
	goto	l610
	line	144
	
l1655:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sqrt@a),w
	movwf	(sqrt@z)
	movf	(sqrt@a+1),w
	movwf	(sqrt@z+1)
	movf	(sqrt@a+2),w
	movwf	(sqrt@z+2)
	line	145
	
l1657:	
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
	
l1659:	
	movlw	01h
u1775:
	clrc
	rrf	(sqrt@x+2),f
	rrf	(sqrt@x+1),f
	rrf	(sqrt@x),f
	addlw	-1
	skipz
	goto	u1775

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
	goto	u1785
	goto	u1786
u1785:
	subwf	(sqrt@z+1),f
u1786:
	movf	2+(??_sqrt+0)+0,w
	skipc
	incf	2+(??_sqrt+0)+0,w
	goto	u1787
	goto	u1788
u1787:
	subwf	(sqrt@z+2),f
u1788:

	line	148
	movlw	low(04h)
	movwf	(??_sqrt+0)+0
	movf	(??_sqrt+0)+0,w
	movwf	(sqrt@i)
	line	149
	
l611:	
	line	151
	
l1661:	
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
	
l1663:	
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
	
l1665:	
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
	
l1667:	
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
	
l1669:	
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
	
l1671:	
	movlw	01h
	subwf	(sqrt@i),f
	btfss	status,2
	goto	u1791
	goto	u1790
u1791:
	goto	l611
u1790:
	line	157
	
l1673:	
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
	
l610:	
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
	
l1677:	
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
	goto	u1801
	goto	u1800
u1801:
	goto	l1683
u1800:
	line	31
	
l1679:	
	movlw	0x0
	movwf	(?_atan)
	movlw	0x0
	movwf	(?_atan+1)
	movlw	0x0
	movwf	(?_atan+2)
	goto	l643
	line	32
	
l1683:	
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
	goto	u1811
	goto	u1810
u1811:
	movlw	1
	goto	u1820
u1810:
	movlw	0
u1820:
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_atan+0)+0
	movf	(??_atan+0)+0,w
	movwf	(atan@recip)
	movf	(((atan@recip))),w
	btfsc	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l644
u1830:
	line	33
	
l1685:	
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
	
l644:	
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
	
l1687:	
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
	
l1689:	
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
	
l1691:	
	movf	((atan@recip)),w
	btfsc	status,2
	goto	u1841
	goto	u1840
u1841:
	goto	l645
u1840:
	line	39
	
l1693:	
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
	
l645:	
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
	goto	u1851
	goto	u1850
u1851:
	goto	l1697
u1850:
	
l1695:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(atan@val),w
	movwf	(?_atan)
	movf	(atan@val+1),w
	movwf	(?_atan+1)
	movf	(atan@val+2),w
	movwf	(?_atan+2)
	goto	l643
	
l1697:	
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
	
l643:	
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
	
l1631:	
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
	goto	u1731
	goto	u1730
u1731:
	goto	l660
u1730:
	line	7
	
l1633:	
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
	goto	l661
	
l660:	
	line	8
	line	9
	
l661:	
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
	
l1573:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u1651
	goto	u1650
u1651:
	goto	l1577
u1650:
	line	18
	
l1575:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l1577:	
	line	20
	
l466:	
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
	
l1497:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u1501
	goto	u1500
u1501:
	goto	l1501
u1500:
	line	7
	
l1499:	
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
	
l1501:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u1511
	goto	u1510
u1511:
	goto	l1505
u1510:
	line	9
	
l1503:	
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
	
l1505:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l1507:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l1509:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u1525
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u1525
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u1525:
	skipnc
	goto	u1521
	goto	u1520
u1521:
	goto	l1513
u1520:
	
l1511:	
	clrc
	
	goto	l449
	
l1513:	
	setc
	
	line	13
	
l449:	
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
	
l1637:	
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
	goto	l1641
	line	10
	
l1639:	
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
	movwf	(eval_poly@res)
	movf	(1+(?___ftadd)),w
	movwf	(eval_poly@res+1)
	movf	(2+(?___ftadd)),w
	movwf	(eval_poly@res+2)
	line	9
	
l1641:	
	movf	((eval_poly@n)),w
iorwf	((eval_poly@n+1)),w
	btfss	status,2
	goto	u1741
	goto	u1740
u1741:
	goto	l1639
u1740:
	line	11
	
l1643:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	line	12
	
l657:	
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
	
l1413:	
	clrf	(___bmul@product)
	line	43
	
l1415:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1241
	goto	u1240
u1241:
	goto	l1419
u1240:
	line	44
	
l1417:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	line	45
	
l1419:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1421:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l1415
u1250:
	line	50
	
l1423:	
	movf	(___bmul@product),w
	line	51
	
l206:	
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
	
l1581:	
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
	goto	u1661
	goto	u1660
u1661:
	goto	l1587
u1660:
	line	64
	
l1583:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l440
	line	65
	
l1587:	
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
	goto	u1671
	goto	u1670
u1671:
	goto	l1593
u1670:
	line	66
	
l1589:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l440
	line	67
	
l1593:	
	movlw	low(0)
	movwf	(___ftdiv@f3)
	movlw	high(0)
	movwf	(___ftdiv@f3+1)
	movlw	low highword(0)
	movwf	(___ftdiv@f3+2)
	line	68
	
l1595:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l1597:	
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
	
l1599:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l1601:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l1603:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l1605:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l1607:	
	movlw	low(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	line	78
	
l1609:	
	movlw	01h
u1685:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u1685
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1695
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1695
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1695:
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l1615
u1690:
	line	80
	
l1611:	
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
	
l1613:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l1615:	
	movlw	01h
u1705:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u1705
	line	84
	
l1617:	
	movlw	01h
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l1609
u1710:
	line	85
	
l1619:	
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
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	86
	
l440:	
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
;;		On exit  : 200/0
;;		Unchanged: 200/0
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
	
l1929:	
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
	
l603:	
	return
	opt callstack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	_UART_send_string

;; *************** function _UART_send_string *****************
;; Defined at:
;;		line 99 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  st_pt           1    wreg     PTR unsigned char 
;;		 -> STR_7(13), STR_6(14), STR_5(10), STR_4(10), 
;;		 -> STR_3(10), STR_2(22), STR_1(36), 
;; Auto vars:     Size  Location     Type
;;  st_pt           1    2[COMMON] PTR unsigned char 
;;		 -> STR_7(13), STR_6(14), STR_5(10), STR_4(10), 
;;		 -> STR_3(10), STR_2(22), STR_1(36), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_UART_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	99
global __ptext12
__ptext12:	;psect for function _UART_send_string
psect	text12
	file	"../main.c"
	line	99
	global	__size_of_UART_send_string
	__size_of_UART_send_string	equ	__end_of_UART_send_string-_UART_send_string
	
_UART_send_string:	
;incstack = 0
	opt	callstack 6
; Regs used in _UART_send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(UART_send_string@st_pt)
	line	101
	
l1915:	
	goto	l1921
	line	102
	
l1917:	
	movf	(UART_send_string@st_pt),w
	movwf	fsr0
	fcall	stringdir
	fcall	_UART_send_char
	
l1919:	
	movlw	low(01h)
	movwf	(??_UART_send_string+0)+0
	movf	(??_UART_send_string+0)+0,w
	addwf	(UART_send_string@st_pt),f
	line	101
	
l1921:	
	movf	(UART_send_string@st_pt),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l1917
u2220:
	line	103
	
l86:	
	return
	opt callstack 0
GLOBAL	__end_of_UART_send_string
	__end_of_UART_send_string:
	signat	_UART_send_string,4217
	global	_UART_send_float

;; *************** function _UART_send_float *****************
;; Defined at:
;;		line 81 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  bt              3   56[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f               3   59[BANK0 ] float 
;;  ival            2   68[BANK0 ] int 
;;  fval            2   66[BANK0 ] int 
;;  fval1           2   64[BANK0 ] int 
;;  ival1           2   62[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_UART_send_char
;;		___awdiv
;;		___awmod
;;		___awtoft
;;		___ftmul
;;		___ftsub
;;		___fttol
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	81
global __ptext13
__ptext13:	;psect for function _UART_send_float
psect	text13
	file	"../main.c"
	line	81
	global	__size_of_UART_send_float
	__size_of_UART_send_float	equ	__end_of_UART_send_float-_UART_send_float
	
_UART_send_float:	
;incstack = 0
	opt	callstack 4
; Regs used in _UART_send_float: [wreg+status,2+status,0+pclath+cstack]
	line	83
	
l1913:	
	movf	(UART_send_float@bt),w
	movwf	(___fttol@f1)
	movf	(UART_send_float@bt+1),w
	movwf	(___fttol@f1+1)
	movf	(UART_send_float@bt+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(1+(?___fttol)),w
	movwf	(UART_send_float@ival+1)
	movf	(0+(?___fttol)),w
	movwf	(UART_send_float@ival)
	line	84
	movf	(UART_send_float@ival+1),w
	movwf	(___awtoft@c+1)
	movf	(UART_send_float@ival),w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftsub@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftsub@f2+2)
	movf	(UART_send_float@bt),w
	movwf	(___ftsub@f1)
	movf	(UART_send_float@bt+1),w
	movwf	(___ftsub@f1+1)
	movf	(UART_send_float@bt+2),w
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movwf	(UART_send_float@f)
	movf	(1+(?___ftsub)),w
	movwf	(UART_send_float@f+1)
	movf	(2+(?___ftsub)),w
	movwf	(UART_send_float@f+2)
	line	85
	movf	(UART_send_float@f),w
	movwf	(___ftmul@f2)
	movf	(UART_send_float@f+1),w
	movwf	(___ftmul@f2+1)
	movf	(UART_send_float@f+2),w
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xc8
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(1+(?___fttol)),w
	movwf	(UART_send_float@fval+1)
	movf	(0+(?___fttol)),w
	movwf	(UART_send_float@fval)
	line	86
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(UART_send_float@ival+1),w
	movwf	(___awmod@dividend+1)
	movf	(UART_send_float@ival),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(UART_send_float@ival1+1)
	movf	(0+(?___awmod)),w
	movwf	(UART_send_float@ival1)
	line	87
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(UART_send_float@ival+1),w
	movwf	(___awdiv@dividend+1)
	movf	(UART_send_float@ival),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(UART_send_float@ival+1)
	movf	(0+(?___awdiv)),w
	movwf	(UART_send_float@ival)
	line	88
	movlw	0Ah
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(UART_send_float@fval+1),w
	movwf	(___awmod@dividend+1)
	movf	(UART_send_float@fval),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(UART_send_float@fval1+1)
	movf	(0+(?___awmod)),w
	movwf	(UART_send_float@fval1)
	line	89
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(UART_send_float@fval+1),w
	movwf	(___awdiv@dividend+1)
	movf	(UART_send_float@fval),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(UART_send_float@fval+1)
	movf	(0+(?___awdiv)),w
	movwf	(UART_send_float@fval)
	line	90
	movf	(UART_send_float@ival),w
	addlw	030h
	fcall	_UART_send_char
	line	91
	movf	(UART_send_float@ival1),w
	addlw	030h
	fcall	_UART_send_char
	line	92
	movlw	low(02Eh)
	fcall	_UART_send_char
	line	93
	movf	(UART_send_float@fval),w
	addlw	030h
	fcall	_UART_send_char
	line	94
	movf	(UART_send_float@fval1),w
	addlw	030h
	fcall	_UART_send_char
	line	95
	
l80:	
	return
	opt callstack 0
GLOBAL	__end_of_UART_send_float
	__end_of_UART_send_float:
	signat	_UART_send_float,4217
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   42[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   51[BANK0 ] unsigned long 
;;  exp1            1   55[BANK0 ] unsigned char 
;;  sign1           1   50[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   42[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_send_float
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\fttol.c"
	line	44
global __ptext14
__ptext14:	;psect for function ___fttol
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	callstack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1799:	
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
	goto	u2071
	goto	u2070
u2071:
	goto	l1805
u2070:
	line	50
	
l1801:	
	movlw	high highword(0)
	movwf	(?___fttol+3)
	movlw	low highword(0)
	movwf	(?___fttol+2)
	movlw	high(0)
	movwf	(?___fttol+1)
	movlw	low(0)
	movwf	(?___fttol)

	goto	l476
	line	51
	
l1805:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2085:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2080:
	addlw	-1
	skipz
	goto	u2085
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1807:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1809:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1811:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1813:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l1815:	
	btfss	(___fttol@exp1),7
	goto	u2091
	goto	u2090
u2091:
	goto	l1825
u2090:
	line	57
	
l1817:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2101
	goto	u2100
u2101:
	goto	l1823
u2100:
	goto	l1801
	line	60
	
l1823:	
	movlw	01h
u2115:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2115

	line	61
	movlw	low(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l1823
u2120:
	goto	l1833
	line	63
	
l1825:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2131
	goto	u2130
u2131:
	goto	l483
u2130:
	goto	l1801
	line	66
	
l1831:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2145:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2145
	line	67
	movlw	01h
	subwf	(___fttol@exp1),f
	line	68
	
l483:	
	line	65
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l1831
u2150:
	line	70
	
l1833:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l1837
u2160:
	line	71
	
l1835:	
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
	
l1837:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l476:	
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
;;		_UART_send_float
;;		_sqrt
;;		_acos
;;		_asin
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftsub.c"
	line	17
global __ptext15
__ptext15:	;psect for function ___ftsub
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;incstack = 0
	opt	callstack 4
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l1623:	
	movf	(___ftsub@f2+2),w
	iorwf	(___ftsub@f2+1),w
	iorwf	(___ftsub@f2),w
	skipnz
	goto	u1721
	goto	u1720
u1721:
	goto	l1627
u1720:
	line	23
	
l1625:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	25
	
l1627:	
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
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	line	26
	
l472:	
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
;;		On entry : 200/100
;;		On exit  : 200/0
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
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftadd.c"
	line	86
global __ptext16
__ptext16:	;psect for function ___ftadd
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	callstack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1427:	
	movf	(___ftadd@f1),w
	bcf	status, 5	;RP0=0, select bank0
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
	goto	u1261
	goto	u1260
u1261:
	goto	l1433
u1260:
	
l1429:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1271
	goto	u1270
u1271:
	goto	l1437
u1270:
	
l1431:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1281
	goto	u1280
u1281:
	goto	l1437
u1280:
	line	93
	
l1433:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l409
	line	94
	
l1437:	
	movf	((___ftadd@exp2)),w
	btfsc	status,2
	goto	u1291
	goto	u1290
u1291:
	goto	l412
u1290:
	
l1439:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1301
	goto	u1300
u1301:
	goto	l1443
u1300:
	
l1441:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	low(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1311
	goto	u1310
u1311:
	goto	l1443
u1310:
	
l412:	
	line	95
	goto	l409
	line	96
	
l1443:	
	movlw	low(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1445:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l413
u1320:
	line	98
	
l1447:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l413:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1331
	goto	u1330
u1331:
	goto	l414
u1330:
	line	100
	
l1449:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l414:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1451:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1453:	
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
	goto	u1341
	goto	u1340
u1341:
	goto	l1465
u1340:
	line	110
	
l1455:	
	movlw	01h
u1355:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u1355
	line	111
	movlw	01h
	subwf	(___ftadd@exp2),f
	line	112
	
l1457:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1361
	goto	u1360
u1361:
	goto	l1463
u1360:
	
l1459:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1371
	goto	u1370
u1371:
	goto	l1455
u1370:
	goto	l1463
	line	114
	
l1461:	
	movlw	01h
u1385:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u1385

	line	115
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	line	113
	
l1463:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1391
	goto	u1390
u1391:
	goto	l1461
u1390:
	goto	l423
	line	117
	
l1465:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1401
	goto	u1400
u1401:
	goto	l423
u1400:
	line	121
	
l1467:	
	movlw	01h
u1415:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u1415
	line	122
	movlw	01h
	subwf	(___ftadd@exp1),f
	line	123
	
l1469:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1421
	goto	u1420
u1421:
	goto	l1475
u1420:
	
l1471:	
	movlw	01h
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1431
	goto	u1430
u1431:
	goto	l1467
u1430:
	goto	l1475
	line	125
	
l1473:	
	movlw	01h
u1445:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u1445

	line	126
	movlw	low(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	line	124
	
l1475:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1451
	goto	u1450
u1451:
	goto	l1473
u1450:
	line	129
	
l423:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1461
	goto	u1460
u1461:
	goto	l1479
u1460:
	line	131
	
l1477:	
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
	
l1479:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1471
	goto	u1470
u1471:
	goto	l1483
u1470:
	line	136
	
l1481:	
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
	
l1483:	
	clrf	(___ftadd@sign)
	line	140
	
l1485:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1481
	addwf	(___ftadd@f2+1),f
u1481:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1482
	addwf	(___ftadd@f2+2),f
u1482:

	line	141
	
l1487:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l1493
u1490:
	line	142
	
l1489:	
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
	
l1491:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l1493:	
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
	
l409:	
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
;;		_UART_send_float
;;		_main
;;		_sqrt
;;		_asin
;;		_atan
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftmul.c"
	line	62
global __ptext17
__ptext17:	;psect for function ___ftmul
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	callstack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1517:	
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
	goto	u1531
	goto	u1530
u1531:
	goto	l1523
u1530:
	line	68
	
l1519:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l455
	line	69
	
l1523:	
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
	goto	u1541
	goto	u1540
u1541:
	goto	l1529
u1540:
	line	70
	
l1525:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l455
	line	71
	
l1529:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	
l1531:	
	movf	0+(___ftmul@f1)+02h,w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@sign)
	line	73
	
l1533:	
	movf	0+(___ftmul@f2)+02h,w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	
l1535:	
	movlw	low(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1537:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1539:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1541:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1543:	
	movlw	low(0)
	movwf	(___ftmul@f3_as_product)
	movlw	high(0)
	movwf	(___ftmul@f3_as_product+1)
	movlw	low highword(0)
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1545:	
	movlw	low(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	136
	
l1547:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l1551
u1550:
	line	137
	
l1549:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1561
	addwf	(___ftmul@f3_as_product+1),f
u1561:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1562
	addwf	(___ftmul@f3_as_product+2),f
u1562:

	line	138
	
l1551:	
	movlw	01h
u1575:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1575

	line	139
	
l1553:	
	movlw	01h
u1585:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1585
	line	140
	
l1555:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l1547
u1590:
	line	143
	
l1557:	
	movlw	low(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	line	145
	
l1559:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l1563
u1600:
	line	146
	
l1561:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1611
	addwf	(___ftmul@f3_as_product+1),f
u1611:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1612
	addwf	(___ftmul@f3_as_product+2),f
u1612:

	line	147
	
l1563:	
	movlw	01h
u1625:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1625

	line	148
	
l1565:	
	movlw	01h
u1635:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1635

	line	149
	
l1567:	
	movlw	01h
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l1559
u1640:
	line	156
	
l1569:	
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
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	157
	
l455:	
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
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 200/0
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
;;		_UART_send_float
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\awtoft.c"
	line	32
global __ptext18
__ptext18:	;psect for function ___awtoft
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	callstack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1787:	
	clrf	(___awtoft@sign)
	line	37
	
l1789:	
	btfss	(___awtoft@c+1),7
	goto	u2061
	goto	u2060
u2061:
	goto	l1795
u2060:
	line	38
	
l1791:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1793:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l1795:	
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
	
l382:	
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
;;		On entry : 200/0
;;		On exit  : 200/0
;;		Unchanged: 200/0
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
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\float.c"
	line	62
global __ptext19
__ptext19:	;psect for function ___ftpack
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	callstack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1381:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l1385
u1120:
	
l1383:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1131
	goto	u1130
u1131:
	goto	l1391
u1130:
	line	65
	
l1385:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l388
	line	67
	
l1389:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1145:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1145

	line	66
	
l1391:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l1389
u1150:
	goto	l392
	line	71
	
l1393:	
	movlw	low(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1395:	
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
	
l1397:	
	movlw	01h
u1165:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1165

	line	74
	
l392:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1171
	goto	u1170
u1171:
	goto	l1393
u1170:
	goto	l1401
	line	76
	
l1399:	
	movlw	01h
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1185:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1185
	line	75
	
l1401:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u1191
	goto	u1190
u1191:
	goto	l399
u1190:
	
l1403:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u1201
	goto	u1200
u1201:
	goto	l1399
u1200:
	
l399:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1211
	goto	u1210
u1211:
	goto	l400
u1210:
	line	80
	
l1405:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l400:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1407:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1225:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1220:
	addlw	-1
	skipz
	goto	u1225
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1409:	
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l401
u1230:
	line	84
	
l1411:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l401:	
	line	85
	line	86
	
l388:	
	return
	opt callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_send_float
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\awmod.c"
	line	5
global __ptext20
__ptext20:	;psect for function ___awmod
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	callstack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	12
	
l1749:	
	clrf	(___awmod@sign)
	line	13
	
l1751:	
	btfss	(___awmod@dividend+1),7
	goto	u1971
	goto	u1970
u1971:
	goto	l1757
u1970:
	line	14
	
l1753:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	15
	
l1755:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	17
	
l1757:	
	btfss	(___awmod@divisor+1),7
	goto	u1981
	goto	u1980
u1981:
	goto	l1761
u1980:
	line	18
	
l1759:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	19
	
l1761:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l1779
u1990:
	line	20
	
l1763:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	21
	goto	l1769
	line	22
	
l1765:	
	movlw	01h
	
u2005:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2005
	line	23
	
l1767:	
	movlw	low(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	line	21
	
l1769:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2011
	goto	u2010
u2011:
	goto	l1765
u2010:
	line	26
	
l1771:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2025
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2025:
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l1775
u2020:
	line	27
	
l1773:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	28
	
l1775:	
	movlw	01h
	
u2035:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2035
	line	29
	
l1777:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l1771
u2040:
	line	31
	
l1779:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u2051
	goto	u2050
u2051:
	goto	l1783
u2050:
	line	32
	
l1781:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	33
	
l1783:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	34
	
l376:	
	return
	opt callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_send_float
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\awdiv.c"
	line	5
global __ptext21
__ptext21:	;psect for function ___awdiv
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v2.05\pic\sources\c90\common\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	callstack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	13
	
l1705:	
	clrf	(___awdiv@sign)
	line	14
	
l1707:	
	btfss	(___awdiv@divisor+1),7
	goto	u1871
	goto	u1870
u1871:
	goto	l1713
u1870:
	line	15
	
l1709:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	16
	
l1711:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	18
	
l1713:	
	btfss	(___awdiv@dividend+1),7
	goto	u1881
	goto	u1880
u1881:
	goto	l1719
u1880:
	line	19
	
l1715:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	20
	
l1717:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	22
	
l1719:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	23
	
l1721:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u1891
	goto	u1890
u1891:
	goto	l1741
u1890:
	line	24
	
l1723:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	25
	goto	l1729
	line	26
	
l1725:	
	movlw	01h
	
u1905:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1905
	line	27
	
l1727:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	line	25
	
l1729:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1911
	goto	u1910
u1911:
	goto	l1725
u1910:
	line	30
	
l1731:	
	movlw	01h
	
u1925:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1925
	line	31
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1935
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1935:
	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l1737
u1930:
	line	32
	
l1733:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	33
	
l1735:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	35
	
l1737:	
	movlw	01h
	
u1945:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1945
	line	36
	
l1739:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l1731
u1950:
	line	38
	
l1741:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l1745
u1960:
	line	39
	
l1743:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	40
	
l1745:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	41
	
l363:	
	return
	opt callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_UART_send_char

;; *************** function _UART_send_char *****************
;; Defined at:
;;		line 62 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  bt              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bt              1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
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
;;		_UART_send_float
;;		_UART_send_string
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"../main.c"
	line	62
global __ptext22
__ptext22:	;psect for function _UART_send_char
psect	text22
	file	"../main.c"
	line	62
	global	__size_of_UART_send_char
	__size_of_UART_send_char	equ	__end_of_UART_send_char-_UART_send_char
	
_UART_send_char:	
;incstack = 0
	opt	callstack 6
; Regs used in _UART_send_char: [wreg]
	movwf	(UART_send_char@bt)
	line	64
	
l1701:	
	
l67:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u1861
	goto	u1860
u1861:
	goto	l67
u1860:
	line	65
	
l1703:	
	movf	(UART_send_char@bt),w
	movwf	(25)	;volatile
	line	66
	
l70:	
	return
	opt callstack 0
GLOBAL	__end_of_UART_send_char
	__end_of_UART_send_char:
	signat	_UART_send_char,4217
	global	_Initialize_UART

;; *************** function _Initialize_UART *****************
;; Defined at:
;;		line 31 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	31
global __ptext23
__ptext23:	;psect for function _Initialize_UART
psect	text23
	file	"../main.c"
	line	31
	global	__size_of_Initialize_UART
	__size_of_Initialize_UART	equ	__end_of_Initialize_UART-_Initialize_UART
	
_Initialize_UART:	
;incstack = 0
	opt	callstack 7
; Regs used in _Initialize_UART: [wreg]
	line	34
	
l1895:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1086/8)^080h,(1086)&7	;volatile
	line	35
	bsf	(1087/8)^080h,(1087)&7	;volatile
	line	40
	
l1897:	
	movlw	low(081h)
	movwf	(153)^080h	;volatile
	line	41
	
l1899:	
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	45
	
l1901:	
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	46
	
l1903:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	50
	
l1905:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	51
	
l1907:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7	;volatile
	line	55
	
l1909:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	56
	
l1911:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(198/8),(198)&7	;volatile
	line	58
	
l64:	
	return
	opt callstack 0
GLOBAL	__end_of_Initialize_UART
	__end_of_Initialize_UART:
	signat	_Initialize_UART,89
	global	_ADC_Read

;; *************** function _ADC_Read *****************
;; Defined at:
;;		line 23 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	23
global __ptext24
__ptext24:	;psect for function _ADC_Read
psect	text24
	file	"../main.c"
	line	23
	global	__size_of_ADC_Read
	__size_of_ADC_Read	equ	__end_of_ADC_Read-_ADC_Read
	
_ADC_Read:	
;incstack = 0
	opt	callstack 7
; Regs used in _ADC_Read: [wreg+status,2+status,0]
	movwf	(ADC_Read@channel)
	line	25
	
l1885:	
	movf	(ADC_Read@channel),w
	movwf	(??_ADC_Read+0)+0
	movlw	(03h)-1
u2205:
	clrc
	rlf	(??_ADC_Read+0)+0,f
	addlw	-1
	skipz
	goto	u2205
	clrc
	rlf	(??_ADC_Read+0)+0,w
	movwf	(??_ADC_Read+1)+0
	movf	(??_ADC_Read+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(31),f	;volatile
	line	26
	
l1887:	
	opt asmopt_push
opt asmopt_off
movlw	13
movwf	((??_ADC_Read+0)+0+1),f
	movlw	251
movwf	((??_ADC_Read+0)+0),f
	u2277:
decfsz	((??_ADC_Read+0)+0),f
	goto	u2277
	decfsz	((??_ADC_Read+0)+0+1),f
	goto	u2277
	nop2
opt asmopt_pop

	line	27
	
l1889:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	28
	
l58:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u2211
	goto	u2210
u2211:
	goto	l58
u2210:
	line	29
	
l1891:	
	movf	(30),w	;volatile
	movwf	(?_ADC_Read+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(?_ADC_Read)
	line	30
	
l61:	
	return
	opt callstack 0
GLOBAL	__end_of_ADC_Read
	__end_of_ADC_Read:
	signat	_ADC_Read,4218
	global	_ADC_Initialize

;; *************** function _ADC_Initialize *****************
;; Defined at:
;;		line 16 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
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
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	16
global __ptext25
__ptext25:	;psect for function _ADC_Initialize
psect	text25
	file	"../main.c"
	line	16
	global	__size_of_ADC_Initialize
	__size_of_ADC_Initialize	equ	__end_of_ADC_Initialize-_ADC_Initialize
	
_ADC_Initialize:	
;incstack = 0
	opt	callstack 7
; Regs used in _ADC_Initialize: [wreg]
	line	18
	
l1881:	
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	19
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	20
	
l1883:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(248/8),(248)&7	;volatile
	line	21
	
l55:	
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
