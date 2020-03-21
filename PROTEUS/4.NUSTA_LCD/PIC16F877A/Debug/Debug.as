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
	FNCALL	_main,_Lcd_Clear
	FNCALL	_main,_Lcd_Print_String
	FNCALL	_main,_Lcd_Set_Cursor
	FNCALL	_main,_Lcd_Start
	FNCALL	_Lcd_Start,_Lcd_Cmd
	FNCALL	_Lcd_Start,_Lcd_SetBit
	FNCALL	_Lcd_Set_Cursor,_Lcd_Cmd
	FNCALL	_Lcd_Print_String,_Lcd_Print_Char
	FNCALL	_Lcd_Print_Char,_Lcd_SetBit
	FNCALL	_Lcd_Clear,_Lcd_Cmd
	FNCALL	_Lcd_Cmd,_Lcd_SetBit
	FNROOT	_main
	global	main@F945
	global	main@F943
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"../main.c"
	line	146

;initializer for main@F945
	retlw	054h
	retlw	048h
	retlw	049h
	retlw	053h
	retlw	020h
	retlw	049h
	retlw	053h
	retlw	020h
	retlw	055h
	retlw	050h
	retlw	045h
	retlw	04Eh
	retlw	044h
	retlw	052h
	retlw	041h
	retlw	low(0)
	line	145

;initializer for main@F943
	retlw	048h
	retlw	045h
	retlw	04Ch
	retlw	04Ch
	retlw	04Fh
	retlw	021h
	retlw	021h
	retlw	021h
	retlw	021h
	retlw	021h
	retlw	021h
	retlw	low(0)
	global	_RB2
_RB2	set	0x32
	global	_RB0
_RB0	set	0x30
	global	_RB7
_RB7	set	0x37
	global	_RB6
_RB6	set	0x36
	global	_RB5
_RB5	set	0x35
	global	_RB4
_RB4	set	0x34
	global	_TRISB
_TRISB	set	0x86
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
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"../main.c"
	line	146
main@F945:
       ds      16

psect	dataBANK0
	file	"../main.c"
	line	145
main@F943:
       ds      12

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
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+28)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Lcd_SetBit:	; 1 bytes @ 0x0
??_Lcd_SetBit:	; 1 bytes @ 0x0
?_Lcd_Cmd:	; 1 bytes @ 0x0
?_Lcd_Clear:	; 1 bytes @ 0x0
?_Lcd_Start:	; 1 bytes @ 0x0
?_Lcd_Print_Char:	; 1 bytes @ 0x0
?_Lcd_Print_String:	; 1 bytes @ 0x0
	global	Lcd_SetBit@data_bit
Lcd_SetBit@data_bit:	; 1 bytes @ 0x0
	ds	1
??_Lcd_Cmd:	; 1 bytes @ 0x1
??_Lcd_Print_Char:	; 1 bytes @ 0x1
	ds	1
	global	Lcd_Print_Char@Lower_Nibble
Lcd_Print_Char@Lower_Nibble:	; 1 bytes @ 0x2
	ds	1
	global	Lcd_Cmd@a
Lcd_Cmd@a:	; 1 bytes @ 0x3
	global	Lcd_Print_Char@Upper_Nibble
Lcd_Print_Char@Upper_Nibble:	; 1 bytes @ 0x3
	ds	1
??_Lcd_Clear:	; 1 bytes @ 0x4
?_Lcd_Set_Cursor:	; 1 bytes @ 0x4
??_Lcd_Start:	; 1 bytes @ 0x4
	global	Lcd_Set_Cursor@b
Lcd_Set_Cursor@b:	; 1 bytes @ 0x4
	global	Lcd_Print_Char@data
Lcd_Print_Char@data:	; 1 bytes @ 0x4
	ds	1
??_Lcd_Set_Cursor:	; 1 bytes @ 0x5
	ds	2
	global	Lcd_Set_Cursor@a
Lcd_Set_Cursor@a:	; 1 bytes @ 0x7
	ds	1
	global	Lcd_Set_Cursor@z
Lcd_Set_Cursor@z:	; 1 bytes @ 0x8
	ds	1
	global	Lcd_Set_Cursor@y
Lcd_Set_Cursor@y:	; 1 bytes @ 0x9
	ds	1
	global	Lcd_Set_Cursor@temp
Lcd_Set_Cursor@temp:	; 1 bytes @ 0xA
	ds	3
??_Lcd_Print_String:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	Lcd_Print_String@i
Lcd_Print_String@i:	; 2 bytes @ 0x0
	ds	2
	global	Lcd_Print_String@a
Lcd_Print_String@a:	; 1 bytes @ 0x2
	ds	1
?_main:	; 2 bytes @ 0x3
main@argc:	; 2 bytes @ 0x3
	ds	2
main@argv:	; 2 bytes @ 0x5
	ds	2
??_main:	; 1 bytes @ 0x7
	ds	4
	global	main@abc
main@abc:	; 16 bytes @ 0xB
	ds	16
	global	main@str
main@str:	; 12 bytes @ 0x1B
	ds	12
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        28
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     39      67
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    Lcd_Print_String@a	PTR unsigned char  size(1) Largest target is 16
;!		 -> main@abc(BANK0[16]), main@str(BANK0[12]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_Lcd_Print_String
;!    _Lcd_Start->_Lcd_Cmd
;!    _Lcd_Set_Cursor->_Lcd_Cmd
;!    _Lcd_Print_String->_Lcd_Print_Char
;!    _Lcd_Print_Char->_Lcd_SetBit
;!    _Lcd_Clear->_Lcd_Cmd
;!    _Lcd_Cmd->_Lcd_SetBit
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_Lcd_Print_String
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                38    34      4    1304
;!                                              3 BANK0     36    32      4
;!                          _Lcd_Clear
;!                   _Lcd_Print_String
;!                     _Lcd_Set_Cursor
;!                          _Lcd_Start
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Start                                            6     6      0     244
;!                                              4 COMMON     6     6      0
;!                            _Lcd_Cmd
;!                         _Lcd_SetBit
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Set_Cursor                                       7     6      1     486
;!                                              4 COMMON     7     6      1
;!                            _Lcd_Cmd
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Print_String                                     4     4      0     414
;!                                             13 COMMON     1     1      0
;!                                              0 BANK0      3     3      0
;!                     _Lcd_Print_Char
;! ---------------------------------------------------------------------------------
;! (2) _Lcd_Print_Char                                      12    12      0     270
;!                                              1 COMMON    12    12      0
;!                         _Lcd_SetBit
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Clear                                            0     0      0     110
;!                            _Lcd_Cmd
;! ---------------------------------------------------------------------------------
;! (2) _Lcd_Cmd                                              3     3      0     110
;!                                              1 COMMON     3     3      0
;!                         _Lcd_SetBit
;! ---------------------------------------------------------------------------------
;! (2) _Lcd_SetBit                                           1     1      0      88
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Lcd_Clear
;!     _Lcd_Cmd
;!       _Lcd_SetBit
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
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     27      43       5       83.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      51      12        0.0%
;!ABS                  0      0      51       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 144 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  argc            2    3[BANK0 ] int 
;;  argv            2    5[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  abc            16   11[BANK0 ] unsigned char [16]
;;  str            12   27[BANK0 ] unsigned char [12]
;;  a               2    0        unsigned int 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      28       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      36       0       0       0
;;Total ram usage:       36 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Lcd_Clear
;;		_Lcd_Print_String
;;		_Lcd_Set_Cursor
;;		_Lcd_Start
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"../main.c"
	line	144
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../main.c"
	line	144
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	callstack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	146
	
l852:	
	movlw	(main@str)&0ffh
	movwf	fsr0
	movlw	low(main@F943)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	12
	movwf	((??_main+0)+0+2)
u230:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u230
	
	line	147
	movlw	(main@abc)&0ffh
	movwf	fsr0
	movlw	low(main@F945)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	16
	movwf	((??_main+0)+0+2)
u240:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u240
	
	line	148
	
l854:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	149
	
l856:	
	fcall	_Lcd_Start
	line	153
	
l858:	
	fcall	_Lcd_Clear
	line	154
	
l860:	
	clrf	(Lcd_Set_Cursor@b)
	incf	(Lcd_Set_Cursor@b),f
	movlw	low(01h)
	fcall	_Lcd_Set_Cursor
	line	155
	
l862:	
	movlw	(low(main@str|((0x0)<<8)))&0ffh
	fcall	_Lcd_Print_String
	line	156
	
l864:	
	clrf	(Lcd_Set_Cursor@b)
	incf	(Lcd_Set_Cursor@b),f
	movlw	low(02h)
	fcall	_Lcd_Set_Cursor
	line	157
	
l866:	
	movlw	(low(main@abc|((0x0)<<8)))&0ffh
	fcall	_Lcd_Print_String
	line	158
	
l868:	
	opt asmopt_push
opt asmopt_off
movlw  8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	157
movwf	((??_main+0)+0+1),f
	movlw	5
movwf	((??_main+0)+0),f
	u257:
decfsz	((??_main+0)+0),f
	goto	u257
	decfsz	((??_main+0)+0+1),f
	goto	u257
	decfsz	((??_main+0)+0+2),f
	goto	u257
opt asmopt_pop

	goto	l858
	global	start
	ljmp	start
	opt callstack 0
	line	162
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_Lcd_Start

;; *************** function _Lcd_Start *****************
;; Defined at:
;;		line 95 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               4    0        long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Cmd
;;		_Lcd_SetBit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	95
global __ptext1
__ptext1:	;psect for function _Lcd_Start
psect	text1
	file	"../main.c"
	line	95
	global	__size_of_Lcd_Start
	__size_of_Lcd_Start	equ	__end_of_Lcd_Start-_Lcd_Start
	
_Lcd_Start:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Start: [wreg+status,2+status,0+pclath+cstack]
	line	97
	
l810:	
	movlw	low(0)
	fcall	_Lcd_SetBit
	line	98
	
l812:	
	
l814:	
	line	99
	
l822:	
	movlw	low(03h)
	fcall	_Lcd_Cmd
	line	100
	
l824:	
	opt asmopt_push
opt asmopt_off
movlw	33
movwf	((??_Lcd_Start+0)+0+1),f
	movlw	118
movwf	((??_Lcd_Start+0)+0),f
	u267:
decfsz	((??_Lcd_Start+0)+0),f
	goto	u267
	decfsz	((??_Lcd_Start+0)+0+1),f
	goto	u267
	nop
opt asmopt_pop

	line	101
	
l826:	
	movlw	low(03h)
	fcall	_Lcd_Cmd
	line	102
	opt asmopt_push
opt asmopt_off
movlw	72
movwf	((??_Lcd_Start+0)+0+1),f
	movlw	108
movwf	((??_Lcd_Start+0)+0),f
	u277:
decfsz	((??_Lcd_Start+0)+0),f
	goto	u277
	decfsz	((??_Lcd_Start+0)+0+1),f
	goto	u277
	nop
opt asmopt_pop

	line	103
	
l828:	
	movlw	low(03h)
	fcall	_Lcd_Cmd
	line	104
	
l830:	
	movlw	low(02h)
	fcall	_Lcd_Cmd
	line	105
	
l832:	
	movlw	low(02h)
	fcall	_Lcd_Cmd
	line	106
	
l834:	
	movlw	low(08h)
	fcall	_Lcd_Cmd
	line	107
	
l836:	
	movlw	low(0)
	fcall	_Lcd_Cmd
	line	108
	
l838:	
	movlw	low(0Ch)
	fcall	_Lcd_Cmd
	line	109
	
l840:	
	movlw	low(0)
	fcall	_Lcd_Cmd
	line	110
	
l842:	
	movlw	low(06h)
	fcall	_Lcd_Cmd
	line	111
	
l46:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Start
	__end_of_Lcd_Start:
	signat	_Lcd_Start,89
	global	_Lcd_Set_Cursor

;; *************** function _Lcd_Set_Cursor *****************
;; Defined at:
;;		line 75 in file "../main.c"
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
;;		On entry : 300/0
;;		On exit  : 300/0
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	75
global __ptext2
__ptext2:	;psect for function _Lcd_Set_Cursor
psect	text2
	file	"../main.c"
	line	75
	global	__size_of_Lcd_Set_Cursor
	__size_of_Lcd_Set_Cursor	equ	__end_of_Lcd_Set_Cursor-_Lcd_Set_Cursor
	
_Lcd_Set_Cursor:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Set_Cursor: [wreg+status,2+status,0+pclath+cstack]
	movwf	(Lcd_Set_Cursor@a)
	line	78
	
l790:	
		decf	((Lcd_Set_Cursor@a)),w
	btfss	status,2
	goto	u181
	goto	u180
u181:
	goto	l800
u180:
	line	80
	
l792:	
	movf	(Lcd_Set_Cursor@b),w
	addlw	07Fh
	movwf	(??_Lcd_Set_Cursor+0)+0
	movf	(??_Lcd_Set_Cursor+0)+0,w
	movwf	(Lcd_Set_Cursor@temp)
	line	81
	movf	(Lcd_Set_Cursor@temp),w
	movwf	(??_Lcd_Set_Cursor+0)+0
	movlw	04h
u195:
	clrc
	rrf	(??_Lcd_Set_Cursor+0)+0,f
	addlw	-1
	skipz
	goto	u195
	movf	0+(??_Lcd_Set_Cursor+0)+0,w
	movwf	(??_Lcd_Set_Cursor+1)+0
	movf	(??_Lcd_Set_Cursor+1)+0,w
	movwf	(Lcd_Set_Cursor@z)
	line	82
	
l794:	
	movf	(Lcd_Set_Cursor@temp),w
	andlw	0Fh
	movwf	(??_Lcd_Set_Cursor+0)+0
	movf	(??_Lcd_Set_Cursor+0)+0,w
	movwf	(Lcd_Set_Cursor@y)
	line	83
	
l796:	
	movf	(Lcd_Set_Cursor@z),w
	fcall	_Lcd_Cmd
	line	84
	
l798:	
	movf	(Lcd_Set_Cursor@y),w
	fcall	_Lcd_Cmd
	line	85
	goto	l41
	line	86
	
l800:	
		movlw	2
	xorwf	((Lcd_Set_Cursor@a)),w
	btfss	status,2
	goto	u201
	goto	u200
u201:
	goto	l41
u200:
	line	88
	
l802:	
	movf	(Lcd_Set_Cursor@b),w
	addlw	0BFh
	movwf	(??_Lcd_Set_Cursor+0)+0
	movf	(??_Lcd_Set_Cursor+0)+0,w
	movwf	(Lcd_Set_Cursor@temp)
	line	89
	movf	(Lcd_Set_Cursor@temp),w
	movwf	(??_Lcd_Set_Cursor+0)+0
	movlw	04h
u215:
	clrc
	rrf	(??_Lcd_Set_Cursor+0)+0,f
	addlw	-1
	skipz
	goto	u215
	movf	0+(??_Lcd_Set_Cursor+0)+0,w
	movwf	(??_Lcd_Set_Cursor+1)+0
	movf	(??_Lcd_Set_Cursor+1)+0,w
	movwf	(Lcd_Set_Cursor@z)
	line	90
	
l804:	
	movf	(Lcd_Set_Cursor@temp),w
	andlw	0Fh
	movwf	(??_Lcd_Set_Cursor+0)+0
	movf	(??_Lcd_Set_Cursor+0)+0,w
	movwf	(Lcd_Set_Cursor@y)
	line	91
	
l806:	
	movf	(Lcd_Set_Cursor@z),w
	fcall	_Lcd_Cmd
	line	92
	
l808:	
	movf	(Lcd_Set_Cursor@y),w
	fcall	_Lcd_Cmd
	line	94
	
l41:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Set_Cursor
	__end_of_Lcd_Set_Cursor:
	signat	_Lcd_Set_Cursor,8313
	global	_Lcd_Print_String

;; *************** function _Lcd_Print_String *****************
;; Defined at:
;;		line 129 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR unsigned char 
;;		 -> main@abc(16), main@str(12), 
;; Auto vars:     Size  Location     Type
;;  a               1    2[BANK0 ] PTR unsigned char 
;;		 -> main@abc(16), main@str(12), 
;;  i               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd_Print_Char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	129
global __ptext3
__ptext3:	;psect for function _Lcd_Print_String
psect	text3
	file	"../main.c"
	line	129
	global	__size_of_Lcd_Print_String
	__size_of_Lcd_Print_String	equ	__end_of_Lcd_Print_String-_Lcd_Print_String
	
_Lcd_Print_String:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Print_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	movwf	(Lcd_Print_String@a)
	line	132
	
l844:	
	clrf	(Lcd_Print_String@i)
	clrf	(Lcd_Print_String@i+1)
	goto	l850
	line	133
	
l846:	
	movf	(Lcd_Print_String@i),w
	addwf	(Lcd_Print_String@a),w
	movwf	(??_Lcd_Print_String+0)+0
	movf	0+(??_Lcd_Print_String+0)+0,w
	movwf	fsr0
	movf	indf,w
	fcall	_Lcd_Print_Char
	line	132
	
l848:	
	movlw	01h
	addwf	(Lcd_Print_String@i),f
	skipnc
	incf	(Lcd_Print_String@i+1),f
	movlw	0
	addwf	(Lcd_Print_String@i+1),f
	
l850:	
	movf	(Lcd_Print_String@i),w
	addwf	(Lcd_Print_String@a),w
	movwf	(??_Lcd_Print_String+0)+0
	movf	0+(??_Lcd_Print_String+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	(indf),w
	btfss	status,2
	goto	u221
	goto	u220
u221:
	goto	l846
u220:
	line	134
	
l59:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Print_String
	__end_of_Lcd_Print_String:
	signat	_Lcd_Print_String,4217
	global	_Lcd_Print_Char

;; *************** function _Lcd_Print_Char *****************
;; Defined at:
;;		line 113 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
;;  i               4    0        long 
;;  i               4    0        long 
;;  Upper_Nibble    1    3[COMMON] unsigned char 
;;  Lower_Nibble    1    2[COMMON] unsigned char 
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
;;      Locals:        11       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd_SetBit
;; This function is called by:
;;		_Lcd_Print_String
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	113
global __ptext4
__ptext4:	;psect for function _Lcd_Print_Char
psect	text4
	file	"../main.c"
	line	113
	global	__size_of_Lcd_Print_Char
	__size_of_Lcd_Print_Char	equ	__end_of_Lcd_Print_Char-_Lcd_Print_Char
	
_Lcd_Print_Char:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Print_Char: [wreg+status,2+status,0+pclath+cstack]
	movwf	(Lcd_Print_Char@data)
	line	116
	
l756:	
	movf	(Lcd_Print_Char@data),w
	andlw	0Fh
	movwf	(??_Lcd_Print_Char+0)+0
	movf	(??_Lcd_Print_Char+0)+0,w
	movwf	(Lcd_Print_Char@Lower_Nibble)
	line	117
	movf	(Lcd_Print_Char@data),w
	andlw	0F0h
	movwf	(??_Lcd_Print_Char+0)+0
	movf	(??_Lcd_Print_Char+0)+0,w
	movwf	(Lcd_Print_Char@Upper_Nibble)
	line	118
	
l758:	
	bsf	(48/8),(48)&7	;volatile
	line	119
	
l760:	
	movf	(Lcd_Print_Char@Upper_Nibble),w
	movwf	(??_Lcd_Print_Char+0)+0
	movlw	04h
u175:
	clrc
	rrf	(??_Lcd_Print_Char+0)+0,f
	addlw	-1
	skipz
	goto	u175
	movf	0+(??_Lcd_Print_Char+0)+0,w
	fcall	_Lcd_SetBit
	line	120
	
l762:	
	bsf	(50/8),(50)&7	;volatile
	line	121
	
l764:	
	
l766:	
	
l50:	
	line	122
	bcf	(50/8),(50)&7	;volatile
	line	123
	
l774:	
	movf	(Lcd_Print_Char@Lower_Nibble),w
	fcall	_Lcd_SetBit
	line	124
	
l776:	
	bsf	(50/8),(50)&7	;volatile
	line	125
	
l778:	
	
l780:	
	
l52:	
	line	126
	bcf	(50/8),(50)&7	;volatile
	line	127
	
l53:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Print_Char
	__end_of_Lcd_Print_Char:
	signat	_Lcd_Print_Char,4217
	global	_Lcd_Clear

;; *************** function _Lcd_Clear *****************
;; Defined at:
;;		line 69 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	69
global __ptext5
__ptext5:	;psect for function _Lcd_Clear
psect	text5
	file	"../main.c"
	line	69
	global	__size_of_Lcd_Clear
	__size_of_Lcd_Clear	equ	__end_of_Lcd_Clear-_Lcd_Clear
	
_Lcd_Clear:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	71
	
l788:	
	movlw	low(0)
	fcall	_Lcd_Cmd
	line	72
	movlw	low(01h)
	fcall	_Lcd_Cmd
	line	73
	
l35:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Clear
	__end_of_Lcd_Clear:
	signat	_Lcd_Clear,89
	global	_Lcd_Cmd

;; *************** function _Lcd_Cmd *****************
;; Defined at:
;;		line 59 in file "../main.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	59
global __ptext6
__ptext6:	;psect for function _Lcd_Cmd
psect	text6
	file	"../main.c"
	line	59
	global	__size_of_Lcd_Cmd
	__size_of_Lcd_Cmd	equ	__end_of_Lcd_Cmd-_Lcd_Cmd
	
_Lcd_Cmd:	
;incstack = 0
	opt	callstack 5
; Regs used in _Lcd_Cmd: [wreg+status,2+status,0+pclath+cstack]
	movwf	(Lcd_Cmd@a)
	line	61
	
l746:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	line	63
	
l748:	
	movf	(Lcd_Cmd@a),w
	fcall	_Lcd_SetBit
	line	64
	
l750:	
	bsf	(50/8),(50)&7	;volatile
	line	65
	
l752:	
	opt asmopt_push
opt asmopt_off
movlw	26
movwf	((??_Lcd_Cmd+0)+0+1),f
	movlw	248
movwf	((??_Lcd_Cmd+0)+0),f
	u287:
decfsz	((??_Lcd_Cmd+0)+0),f
	goto	u287
	decfsz	((??_Lcd_Cmd+0)+0+1),f
	goto	u287
	nop
opt asmopt_pop

	line	66
	
l754:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	67
	
l32:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_Cmd
	__end_of_Lcd_Cmd:
	signat	_Lcd_Cmd,4217
	global	_Lcd_SetBit

;; *************** function _Lcd_SetBit *****************
;; Defined at:
;;		line 36 in file "../main.c"
;; Parameters:    Size  Location     Type
;;  data_bit        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data_bit        1    0[COMMON] unsigned char 
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
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	36
global __ptext7
__ptext7:	;psect for function _Lcd_SetBit
psect	text7
	file	"../main.c"
	line	36
	global	__size_of_Lcd_SetBit
	__size_of_Lcd_SetBit	equ	__end_of_Lcd_SetBit-_Lcd_SetBit
	
_Lcd_SetBit:	
;incstack = 0
	opt	callstack 6
; Regs used in _Lcd_SetBit: [wreg]
	movwf	(Lcd_SetBit@data_bit)
	line	38
	
l736:	
	btfss	(Lcd_SetBit@data_bit),(0)&7
	goto	u131
	goto	u130
u131:
	goto	l21
u130:
	line	39
	
l738:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	goto	l22
	line	40
	
l21:	
	line	41
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	
l22:	
	line	43
	btfss	(Lcd_SetBit@data_bit),(1)&7
	goto	u141
	goto	u140
u141:
	goto	l23
u140:
	line	44
	
l740:	
	bsf	(53/8),(53)&7	;volatile
	goto	l24
	line	45
	
l23:	
	line	46
	bcf	(53/8),(53)&7	;volatile
	
l24:	
	line	48
	btfss	(Lcd_SetBit@data_bit),(2)&7
	goto	u151
	goto	u150
u151:
	goto	l25
u150:
	line	49
	
l742:	
	bsf	(54/8),(54)&7	;volatile
	goto	l26
	line	50
	
l25:	
	line	51
	bcf	(54/8),(54)&7	;volatile
	
l26:	
	line	53
	btfss	(Lcd_SetBit@data_bit),(3)&7
	goto	u161
	goto	u160
u161:
	goto	l27
u160:
	line	54
	
l744:	
	bsf	(55/8),(55)&7	;volatile
	goto	l29
	line	55
	
l27:	
	line	56
	bcf	(55/8),(55)&7	;volatile
	line	57
	
l29:	
	return
	opt callstack 0
GLOBAL	__end_of_Lcd_SetBit
	__end_of_Lcd_SetBit:
	signat	_Lcd_SetBit,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
