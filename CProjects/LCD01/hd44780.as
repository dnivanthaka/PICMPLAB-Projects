opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 55553"

opt pagewidth 120

	opt lm

	processor	16F628A
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
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
INDF equ 00h ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PCL equ 02h ;# 
# 64 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
FSR equ 04h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PORTB equ 06h ;# 
# 279 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PCLATH equ 0Ah ;# 
# 298 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
INTCON equ 0Bh ;# 
# 375 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PIR1 equ 0Ch ;# 
# 431 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TMR1 equ 0Eh ;# 
# 437 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TMR1L equ 0Eh ;# 
# 443 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TMR1H equ 0Fh ;# 
# 449 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
T1CON equ 010h ;# 
# 507 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TMR2 equ 011h ;# 
# 513 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
T2CON equ 012h ;# 
# 583 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
CCPR1 equ 015h ;# 
# 589 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
CCPR1L equ 015h ;# 
# 595 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
CCPR1H equ 016h ;# 
# 601 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
CCP1CON equ 017h ;# 
# 658 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
RCSTA equ 018h ;# 
# 728 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TXREG equ 019h ;# 
# 734 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
RCREG equ 01Ah ;# 
# 740 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
CMCON equ 01Fh ;# 
# 809 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
OPTION_REG equ 081h ;# 
# 878 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TRISA equ 085h ;# 
# 939 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TRISB equ 086h ;# 
# 1000 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1056 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PCON equ 08Eh ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PR2 equ 092h ;# 
# 1110 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TXSTA equ 098h ;# 
# 1166 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
SPBRG equ 099h ;# 
# 1172 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1178 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
EEADR equ 09Bh ;# 
# 1184 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1221 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1227 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
VRCON equ 09Fh ;# 
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
INDF equ 00h ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PCL equ 02h ;# 
# 64 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
FSR equ 04h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PORTB equ 06h ;# 
# 279 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PCLATH equ 0Ah ;# 
# 298 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
INTCON equ 0Bh ;# 
# 375 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PIR1 equ 0Ch ;# 
# 431 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TMR1 equ 0Eh ;# 
# 437 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TMR1L equ 0Eh ;# 
# 443 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TMR1H equ 0Fh ;# 
# 449 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
T1CON equ 010h ;# 
# 507 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TMR2 equ 011h ;# 
# 513 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
T2CON equ 012h ;# 
# 583 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
CCPR1 equ 015h ;# 
# 589 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
CCPR1L equ 015h ;# 
# 595 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
CCPR1H equ 016h ;# 
# 601 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
CCP1CON equ 017h ;# 
# 658 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
RCSTA equ 018h ;# 
# 728 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TXREG equ 019h ;# 
# 734 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
RCREG equ 01Ah ;# 
# 740 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
CMCON equ 01Fh ;# 
# 809 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
OPTION_REG equ 081h ;# 
# 878 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TRISA equ 085h ;# 
# 939 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TRISB equ 086h ;# 
# 1000 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1056 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PCON equ 08Eh ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
PR2 equ 092h ;# 
# 1110 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
TXSTA equ 098h ;# 
# 1166 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
SPBRG equ 099h ;# 
# 1172 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1178 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
EEADR equ 09Bh ;# 
# 1184 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1221 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1227 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
VRCON equ 09Fh ;# 
	FNCALL	_main,_debounce_read
	FNCALL	_main,_hd44780_block_erase
	FNCALL	_main,_hd44780_clear
	FNCALL	_main,_hd44780_printchr
	FNCALL	_main,_hd44780_printdecimal
	FNCALL	_main,_hd44780_printint
	FNCALL	_main,_hd44780_printstr
	FNCALL	_main,_init
	FNCALL	_main,_sprintf
	FNCALL	_init,_hd44780_init
	FNCALL	_hd44780_init,_hd44780_busy
	FNCALL	_hd44780_init,_hd44780_pulse
	FNCALL	_hd44780_init,_hd44780_write
	FNCALL	_hd44780_printint,_hd44780_printstr
	FNCALL	_hd44780_printint,_sprintf
	FNCALL	_hd44780_printdecimal,_hd44780_printstr
	FNCALL	_hd44780_printdecimal,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_hd44780_printstr,_hd44780_char
	FNCALL	_hd44780_printstr,_hd44780_newline
	FNCALL	_hd44780_printstr,_hd44780_write
	FNCALL	_hd44780_newline,_hd44780_write
	FNCALL	_hd44780_printchr,_hd44780_char
	FNCALL	_hd44780_printchr,_hd44780_write
	FNCALL	_hd44780_clear,_hd44780_write
	FNCALL	_hd44780_block_erase,_hd44780_char
	FNCALL	_hd44780_block_erase,_hd44780_write
	FNCALL	_hd44780_char,_hd44780_write
	FNCALL	_hd44780_write,_hd44780_busy
	FNCALL	_hd44780_write,_hd44780_pulse
	FNROOT	_main
	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	354
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
	global	_dpowers
	global	_rs_flag
	global	_CMCON
_CMCON	set	0x1F
	global	_PORTAbits
_PORTAbits	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_RA1
_RA1	set	0x29
	global	_RB3
_RB3	set	0x33
	global	_RB4
_RB4	set	0x34
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global __stringdata
__stringdata:
	
STR_2:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	120	;'x'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	10
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	112	;'p'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	121	;'y'
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_4:	
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	46	;'.'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_3:	
	retlw	72	;'H'
	retlw	0
psect	strings
STR_5	equ	STR_6+3
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
	file	"hd44780.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssBANK0,class=BANK0,bit,space=1,noexec
global __pbitbssBANK0
__pbitbssBANK0:
_rs_flag:
       ds      1

	line	#
; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssBANK0/8)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_hd44780_init:	; 0 bytes @ 0x0
?_hd44780_clear:	; 0 bytes @ 0x0
?_hd44780_busy:	; 0 bytes @ 0x0
??_hd44780_busy:	; 0 bytes @ 0x0
?_hd44780_write:	; 0 bytes @ 0x0
??_hd44780_write:	; 0 bytes @ 0x0
?_hd44780_newline:	; 0 bytes @ 0x0
?_debounce_read:	; 1 bit 
??_debounce_read:	; 0 bytes @ 0x0
?_init:	; 0 bytes @ 0x0
?_hd44780_pulse:	; 0 bytes @ 0x0
??_hd44780_pulse:	; 0 bytes @ 0x0
?_hd44780_char:	; 0 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	debounce_read@pin
debounce_read@pin:	; 1 bytes @ 0x1
	ds	1
	global	debounce_read@count
debounce_read@count:	; 1 bytes @ 0x2
	global	hd44780_write@bt
hd44780_write@bt:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	hd44780_write@tmp
hd44780_write@tmp:	; 1 bytes @ 0x3
	ds	1
??_hd44780_init:	; 0 bytes @ 0x4
??_hd44780_clear:	; 0 bytes @ 0x4
??_hd44780_newline:	; 0 bytes @ 0x4
??_hd44780_char:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	hd44780_char@bt
hd44780_char@bt:	; 1 bytes @ 0x4
	ds	1
?_hd44780_printstr:	; 0 bytes @ 0x5
?_hd44780_printchr:	; 0 bytes @ 0x5
?_hd44780_block_erase:	; 0 bytes @ 0x5
	global	hd44780_printchr@loc
hd44780_printchr@loc:	; 1 bytes @ 0x5
	global	hd44780_block_erase@length
hd44780_block_erase@length:	; 1 bytes @ 0x5
	global	hd44780_printstr@dta
hd44780_printstr@dta:	; 2 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??_hd44780_printchr:	; 0 bytes @ 0x6
??_hd44780_block_erase:	; 0 bytes @ 0x6
??_init:	; 0 bytes @ 0x6
	global	hd44780_printchr@dta
hd44780_printchr@dta:	; 1 bytes @ 0x6
	ds	1
	global	hd44780_printstr@loc
hd44780_printstr@loc:	; 1 bytes @ 0x7
	global	hd44780_block_erase@start_loc
hd44780_block_erase@start_loc:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
??_hd44780_printstr:	; 0 bytes @ 0x8
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	hd44780_block_erase@i
hd44780_block_erase@i:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	ds	5
??_sprintf:	; 0 bytes @ 0x5
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x8
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x9
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xA
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0xB
	ds	4
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0xF
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x10
	ds	1
?_hd44780_printint:	; 0 bytes @ 0x11
?_hd44780_printdecimal:	; 0 bytes @ 0x11
	global	hd44780_printint@dta
hd44780_printint@dta:	; 2 bytes @ 0x11
	global	hd44780_printdecimal@i
hd44780_printdecimal@i:	; 2 bytes @ 0x11
	ds	2
	global	hd44780_printint@loc
hd44780_printint@loc:	; 1 bytes @ 0x13
	global	hd44780_printdecimal@d
hd44780_printdecimal@d:	; 2 bytes @ 0x13
	ds	1
??_hd44780_printint:	; 0 bytes @ 0x14
	ds	1
	global	hd44780_printdecimal@loc
hd44780_printdecimal@loc:	; 1 bytes @ 0x15
	global	hd44780_printint@buff
hd44780_printint@buff:	; 5 bytes @ 0x15
	ds	1
??_hd44780_printdecimal:	; 0 bytes @ 0x16
	ds	1
	global	hd44780_printdecimal@buff
hd44780_printdecimal@buff:	; 10 bytes @ 0x17
	ds	10
??_main:	; 0 bytes @ 0x21
	ds	3
	global	main@buff
main@buff:	; 25 bytes @ 0x24
	ds	25
	global	main@text2
main@text2:	; 1 bytes @ 0x3D
	ds	1
	global	main@text
main@text:	; 1 bytes @ 0x3E
	ds	1
	global	main@text3
main@text3:	; 1 bytes @ 0x3F
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x40
	ds	2
;!
;!Data Sizes:
;!    Strings     46
;!    Constant    10
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     66      67
;!    BANK1            80      0       0
;!    BANK2            48      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 12
;!		 -> STR_6(CODE[6]), STR_5(CODE[3]), STR_4(CODE[12]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 25
;!		 -> hd44780_printdecimal@buff(BANK0[10]), hd44780_printint@buff(BANK0[5]), main@buff(BANK0[25]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S188$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    hd44780_printstr@dta	PTR unsigned char  size(2) Largest target is 25
;!		 -> hd44780_printdecimal@buff(BANK0[10]), hd44780_printint@buff(BANK0[5]), main@buff(BANK0[25]), STR_3(CODE[2]), 
;!		 -> STR_1(CODE[11]), 
;!
;!    main@text3	PTR unsigned char  size(1) Largest target is 2
;!		 -> STR_3(CODE[2]), 
;!
;!    main@text2	PTR unsigned char  size(1) Largest target is 15
;!		 -> STR_2(CODE[15]), 
;!
;!    main@text	PTR unsigned char  size(1) Largest target is 11
;!		 -> STR_1(CODE[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _init->_hd44780_init
;!    _hd44780_init->_hd44780_write
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _hd44780_printstr->_hd44780_char
;!    _hd44780_newline->_hd44780_write
;!    _hd44780_printchr->_hd44780_char
;!    _hd44780_clear->_hd44780_write
;!    _hd44780_block_erase->_hd44780_char
;!    _hd44780_char->_hd44780_write
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_hd44780_printdecimal
;!    _hd44780_printint->_sprintf
;!    _hd44780_printdecimal->_sprintf
;!
;!Critical Paths under _main in BANK1
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
;! (0) _main                                                33    33      0    9110
;!                                             33 BANK0     33    33      0
;!                      _debounce_read
;!                _hd44780_block_erase
;!                      _hd44780_clear
;!                   _hd44780_printchr
;!               _hd44780_printdecimal
;!                   _hd44780_printint
;!                   _hd44780_printstr
;!                               _init
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0     159
;!                       _hd44780_init
;! ---------------------------------------------------------------------------------
;! (2) _hd44780_init                                         2     2      0     159
;!                                              4 COMMON     2     2      0
;!                       _hd44780_busy
;!                      _hd44780_pulse
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (1) _hd44780_printint                                     9     6      3    2573
;!                                             17 BANK0      9     6      3
;!                   _hd44780_printstr
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _hd44780_printdecimal                                16    11      5    2693
;!                                             17 BANK0     16    11      5
;!                      _debounce_read (ARG)
;!                   _hd44780_printstr
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             17    12      5    1250
;!                                              0 BANK0     17    12      5
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     265
;!                                              8 COMMON     6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     268
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _hd44780_printstr                                     3     0      3    1118
;!                                              5 COMMON     3     0      3
;!                       _hd44780_char
;!                    _hd44780_newline
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (2) _hd44780_newline                                      0     0      0     159
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (1) _hd44780_printchr                                     2     1      1     437
;!                                              5 COMMON     2     1      1
;!                       _hd44780_char
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (1) _hd44780_clear                                        0     0      0     159
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (1) _hd44780_block_erase                                  5     4      1     483
;!                                              5 COMMON     5     4      1
;!                       _hd44780_char
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (2) _hd44780_char                                         1     1      0     181
;!                                              4 COMMON     1     1      0
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (3) _hd44780_write                                        4     4      0     159
;!                                              0 COMMON     4     4      0
;!                       _hd44780_busy
;!                      _hd44780_pulse
;! ---------------------------------------------------------------------------------
;! (4) _hd44780_pulse                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _hd44780_busy                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _debounce_read                                        3     3      0      68
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _debounce_read
;!   _hd44780_block_erase
;!     _hd44780_char
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!     _hd44780_write
;!       _hd44780_busy
;!       _hd44780_pulse
;!   _hd44780_clear
;!     _hd44780_write
;!       _hd44780_busy
;!       _hd44780_pulse
;!   _hd44780_printchr
;!     _hd44780_char
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!     _hd44780_write
;!       _hd44780_busy
;!       _hd44780_pulse
;!   _hd44780_printdecimal
;!     _debounce_read (ARG)
;!     _hd44780_printstr (ARG)
;!       _hd44780_char
;!         _hd44780_write
;!           _hd44780_busy
;!           _hd44780_pulse
;!       _hd44780_newline
;!         _hd44780_write
;!           _hd44780_busy
;!           _hd44780_pulse
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!     _sprintf (ARG)
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!   _hd44780_printint
;!     _hd44780_printstr
;!       _hd44780_char
;!         _hd44780_write
;!           _hd44780_busy
;!           _hd44780_pulse
;!       _hd44780_newline
;!         _hd44780_write
;!           _hd44780_busy
;!           _hd44780_pulse
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!   _hd44780_printstr
;!     _hd44780_char
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!     _hd44780_newline
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!     _hd44780_write
;!       _hd44780_busy
;!       _hd44780_pulse
;!   _init
;!     _hd44780_init
;!       _hd44780_busy
;!       _hd44780_pulse
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!   _sprintf
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              80      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               50     42      43       3       83.8%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      51       4        0.0%
;!BITBANK0            50      0       1       5        1.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!BANK2               30      0       0       9        0.0%
;!DATA                 0      0      51      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buff           25   36[BANK0 ] unsigned char [25]
;;  i               2   64[BANK0 ] int 
;;  text3           1   63[BANK0 ] PTR unsigned char 
;;		 -> STR_3(2), 
;;  text            1   62[BANK0 ] PTR unsigned char 
;;		 -> STR_1(11), 
;;  text2           1   61[BANK0 ] PTR unsigned char 
;;		 -> STR_2(15), 
;; Return value:  Size  Location     Type
;;                  2   41[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0      30       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      33       0       0
;;Total ram usage:       33 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_debounce_read
;;		_hd44780_block_erase
;;		_hd44780_clear
;;		_hd44780_printchr
;;		_hd44780_printdecimal
;;		_hd44780_printint
;;		_hd44780_printstr
;;		_init
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\main.c"
	line	30
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\main.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	32
	
l1208:	
;main.c: 32: char *text = "Counting: ";
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@text)
	line	33
;main.c: 33: char *text2 = "Text \nDisplay2";
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@text2)
	line	34
;main.c: 34: char *text3 = "H";
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@text3)
	line	47
	
l1210:	
;main.c: 35: int i;
;main.c: 36: char buff[25];
;main.c: 47: init();
	fcall	_init
	line	49
	
l1212:	
;main.c: 49: hd44780_printstr( text, 1 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@text),w
	movwf	(hd44780_printstr@dta)
	movlw	80h
	movwf	(hd44780_printstr@dta+1)
	clrf	(hd44780_printstr@loc)
	incf	(hd44780_printstr@loc),f
	fcall	_hd44780_printstr
	line	50
	
l1214:	
;main.c: 50: hd44780_printstr( text3, 7 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@text3),w
	movwf	(hd44780_printstr@dta)
	movlw	80h
	movwf	(hd44780_printstr@dta+1)
	movlw	(07h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(hd44780_printstr@loc)
	fcall	_hd44780_printstr
	line	51
	
l1216:	
;main.c: 51: hd44780_clear();
	fcall	_hd44780_clear
	line	52
	
l1218:	
;main.c: 52: hd44780_printchr( 'H', 7 );
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(hd44780_printchr@loc)
	movlw	(048h)
	fcall	_hd44780_printchr
	line	53
	
l1220:	
;main.c: 53: hd44780_printint( -2500, 5 );
	movlw	low(-2500)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(hd44780_printint@dta)
	movlw	high(-2500)
	movwf	((hd44780_printint@dta))+1
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(hd44780_printint@loc)
	fcall	_hd44780_printint
	line	54
	
l1222:	
;main.c: 54: hd44780_clear();
	fcall	_hd44780_clear
	line	56
	
l1224:	
;main.c: 56: sprintf(buff, "Counter :%d", 1);
	movlw	((STR_4-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	movlw	low(01h)
	movwf	0+(?_sprintf)+01h
	movlw	high(01h)
	movwf	(0+(?_sprintf)+01h)+1
	movlw	(main@buff)&0ffh
	fcall	_sprintf
	line	57
	
l1226:	
;main.c: 57: hd44780_printstr( &buff, 0 );
	movlw	(main@buff&0ffh)
	movwf	(hd44780_printstr@dta)
	movlw	(0x0/2)
	movwf	(hd44780_printstr@dta+1)
	clrf	(hd44780_printstr@loc)
	fcall	_hd44780_printstr
	goto	l1228
	line	82
;main.c: 82: while(1){
	
l42:	
	line	83
	
l1228:	
;main.c: 83: for(i=0;i<5000;i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l1230:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01388h))^80h
	subwf	btemp+1,w
	skipz
	goto	u685
	movlw	low(01388h)
	subwf	(main@i),w
u685:

	skipc
	goto	u681
	goto	u680
u681:
	goto	l1234
u680:
	goto	l1246
	
l1232:	
	goto	l1246
	
l43:	
	line	88
	
l1234:	
;main.c: 88: hd44780_printdecimal( i, debounce_read( PORTAbits.RA0 ), 0x40 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i+1),w
	clrf	(hd44780_printdecimal@i+1)
	addwf	(hd44780_printdecimal@i+1)
	movf	(main@i),w
	clrf	(hd44780_printdecimal@i)
	addwf	(hd44780_printdecimal@i)

	movf	(5),w	;volatile
	andlw	(1<<1)-1
	fcall	_debounce_read
	movlw	0
	skipnc
	movlw	1

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(hd44780_printdecimal@d)
	movf	1+(??_main+0)+0,w
	movwf	(hd44780_printdecimal@d+1)
	movlw	(040h)
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(hd44780_printdecimal@loc)
	fcall	_hd44780_printdecimal
	line	89
	
l1236:	
;main.c: 89: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u717:
	decfsz	((??_main+0)+0),f
	goto	u717
	decfsz	((??_main+0)+0+1),f
	goto	u717
	nop2
opt asmopt_on

	line	95
	
l1238:	
;main.c: 95: if( debounce_read( PORTAbits.RA0 ) == 1 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	andlw	(1<<1)-1
	fcall	_debounce_read
	btfss	status,0
	goto	u691
	goto	u690
u691:
	goto	l45
u690:
	line	96
	
l1240:	
;main.c: 96: RA1 = 0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	97
;main.c: 97: }else{
	goto	l1242
	
l45:	
	line	98
;main.c: 98: RA1 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	goto	l1242
	line	99
	
l46:	
	line	83
	
l1242:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1244:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01388h))^80h
	subwf	btemp+1,w
	skipz
	goto	u705
	movlw	low(01388h)
	subwf	(main@i),w
u705:

	skipc
	goto	u701
	goto	u700
u701:
	goto	l1234
u700:
	goto	l1246
	
l44:	
	line	103
	
l1246:	
;main.c: 99: }
;main.c: 101: }
;main.c: 103: hd44780_block_erase( 0x40, 6 );
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(hd44780_block_erase@length)
	movlw	(040h)
	fcall	_hd44780_block_erase
	goto	l1228
	line	104
	
l47:	
	line	82
	goto	l1228
	
l48:	
	line	107
;main.c: 104: }
;main.c: 106: return 0;
;	Return value of _main is never used
	
l49:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 20 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_hd44780_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	20
global __ptext1
__ptext1:	;psect for function _init
psect	text1
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\main.c"
	line	20
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 4
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l1172:	
;main.c: 23: CMCON = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	25
;main.c: 25: TRISA = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	27
	
l1174:	
;main.c: 27: hd44780_init();
	fcall	_hd44780_init
	line	28
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_hd44780_init

;; *************** function _hd44780_init *****************
;; Defined at:
;;		line 10 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_hd44780_busy
;;		_hd44780_pulse
;;		_hd44780_write
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	10
global __ptext2
__ptext2:	;psect for function _hd44780_init
psect	text2
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	10
	global	__size_of_hd44780_init
	__size_of_hd44780_init	equ	__end_of_hd44780_init-_hd44780_init
	
_hd44780_init:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_init: [wreg+status,2+status,0+pclath+cstack]
	line	13
	
l1124:	
;hd44780.c: 13: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	14
;hd44780.c: 14: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	16
	
l1126:	
;hd44780.c: 16: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_hd44780_init+0)+0+1),f
	movlw	248
movwf	((??_hd44780_init+0)+0),f
u727:
	decfsz	((??_hd44780_init+0)+0),f
	goto	u727
	decfsz	((??_hd44780_init+0)+0+1),f
	goto	u727
	nop
opt asmopt_on

	line	17
	
l1128:	
;hd44780.c: 17: PORTB = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	18
	
l1130:	
;hd44780.c: 18: hd44780_pulse();
	fcall	_hd44780_pulse
	line	19
	
l1132:	
;hd44780.c: 19: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_hd44780_init+0)+0+1),f
	movlw	125
movwf	((??_hd44780_init+0)+0),f
u737:
	decfsz	((??_hd44780_init+0)+0),f
	goto	u737
	decfsz	((??_hd44780_init+0)+0+1),f
	goto	u737
opt asmopt_on

	line	20
	
l1134:	
;hd44780.c: 20: PORTB = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	21
	
l1136:	
;hd44780.c: 21: hd44780_pulse();
	fcall	_hd44780_pulse
	line	22
	
l1138:	
;hd44780.c: 22: _delay((unsigned long)((120)*(4000000/4000000.0)));
	opt asmopt_off
movlw	39
movwf	(??_hd44780_init+0)+0,f
u747:
decfsz	(??_hd44780_init+0)+0,f
	goto	u747
	nop2	;nop
opt asmopt_on

	line	23
	
l1140:	
;hd44780.c: 23: PORTB = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	24
	
l1142:	
;hd44780.c: 24: hd44780_pulse();
	fcall	_hd44780_pulse
	line	26
	
l1144:	
;hd44780.c: 26: hd44780_busy();
	fcall	_hd44780_busy
	line	28
	
l1146:	
;hd44780.c: 28: PORTB = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	29
	
l1148:	
;hd44780.c: 29: hd44780_pulse();
	fcall	_hd44780_pulse
	line	31
	
l1150:	
;hd44780.c: 31: hd44780_busy();
	fcall	_hd44780_busy
	line	34
	
l1152:	
;hd44780.c: 34: hd44780_write( 0b00101000 );
	movlw	(028h)
	fcall	_hd44780_write
	line	36
	
l1154:	
;hd44780.c: 36: hd44780_write( 0b00001100 );
	movlw	(0Ch)
	fcall	_hd44780_write
	line	37
	
l1156:	
;hd44780.c: 37: hd44780_write( 0b00000001 );
	movlw	(01h)
	fcall	_hd44780_write
	line	38
	
l1158:	
;hd44780.c: 38: hd44780_write( 0b00000110 );
	movlw	(06h)
	fcall	_hd44780_write
	line	39
	
l79:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_init
	__end_of_hd44780_init:
	signat	_hd44780_init,88
	global	_hd44780_printint

;; *************** function _hd44780_printint *****************
;; Defined at:
;;		line 159 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;  dta             2   17[BANK0 ] int 
;;  loc             1   19[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  buff            5   21[BANK0 ] unsigned char [5]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       5       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_hd44780_printstr
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	159
global __ptext3
__ptext3:	;psect for function _hd44780_printint
psect	text3
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	159
	global	__size_of_hd44780_printint
	__size_of_hd44780_printint	equ	__end_of_hd44780_printint-_hd44780_printint
	
_hd44780_printint:	
;incstack = 0
	opt	stack 3
; Regs used in _hd44780_printint: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	167
	
l1198:	
;hd44780.c: 165: char buff[5];
;hd44780.c: 167: sprintf(buff, "%d", dta);
	movlw	((STR_5-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_hd44780_printint+0)+0
	movf	(??_hd44780_printint+0)+0,w
	movwf	(sprintf@f)
	movf	(hd44780_printint@dta+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(hd44780_printint@dta),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(hd44780_printint@buff)&0ffh
	fcall	_sprintf
	line	169
;hd44780.c: 169: hd44780_printstr( &buff, loc );
	movlw	(hd44780_printint@buff&0ffh)
	movwf	(hd44780_printstr@dta)
	movlw	(0x0/2)
	movwf	(hd44780_printstr@dta+1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(hd44780_printint@loc),w
	movwf	(??_hd44780_printint+0)+0
	movf	(??_hd44780_printint+0)+0,w
	movwf	(hd44780_printstr@loc)
	fcall	_hd44780_printstr
	line	171
	
l110:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_printint
	__end_of_hd44780_printint:
	signat	_hd44780_printint,8312
	global	_hd44780_printdecimal

;; *************** function _hd44780_printdecimal *****************
;; Defined at:
;;		line 174 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;  i               2   17[BANK0 ] int 
;;  d               2   19[BANK0 ] int 
;;  loc             1   21[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  buff           10   23[BANK0 ] unsigned char [10]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       5       0       0
;;      Locals:         0      10       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0      16       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_hd44780_printstr
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	174
global __ptext4
__ptext4:	;psect for function _hd44780_printdecimal
psect	text4
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	174
	global	__size_of_hd44780_printdecimal
	__size_of_hd44780_printdecimal	equ	__end_of_hd44780_printdecimal-_hd44780_printdecimal
	
_hd44780_printdecimal:	
;incstack = 0
	opt	stack 3
; Regs used in _hd44780_printdecimal: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	180
	
l1200:	
;hd44780.c: 176: char buff[10];
;hd44780.c: 180: if(d < 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(hd44780_printdecimal@d+1),7
	goto	u671
	goto	u670
u671:
	goto	l1204
u670:
	line	181
	
l1202:	
;hd44780.c: 181: d = -d;
	comf	(hd44780_printdecimal@d),f
	comf	(hd44780_printdecimal@d+1),f
	incf	(hd44780_printdecimal@d),f
	skipnz
	incf	(hd44780_printdecimal@d+1),f
	goto	l1204
	line	182
	
l113:	
	line	184
	
l1204:	
;hd44780.c: 182: }
;hd44780.c: 184: sprintf(buff, "%d.%d", i, d);
	movlw	((STR_6-__stringbase))&0ffh
	movwf	(??_hd44780_printdecimal+0)+0
	movf	(??_hd44780_printdecimal+0)+0,w
	movwf	(sprintf@f)
	movf	(hd44780_printdecimal@i+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(hd44780_printdecimal@i),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movf	(hd44780_printdecimal@d+1),w
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	movf	(hd44780_printdecimal@d),w
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movlw	(hd44780_printdecimal@buff)&0ffh
	fcall	_sprintf
	line	186
	
l1206:	
;hd44780.c: 186: hd44780_printstr( &buff, loc );
	movlw	(hd44780_printdecimal@buff&0ffh)
	movwf	(hd44780_printstr@dta)
	movlw	(0x0/2)
	movwf	(hd44780_printstr@dta+1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(hd44780_printdecimal@loc),w
	movwf	(??_hd44780_printdecimal+0)+0
	movf	(??_hd44780_printdecimal+0)+0,w
	movwf	(hd44780_printstr@loc)
	fcall	_hd44780_printstr
	line	187
	
l114:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_printdecimal
	__end_of_hd44780_printdecimal:
	signat	_hd44780_printdecimal,12408
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> hd44780_printdecimal@buff(10), hd44780_printint@buff(5), main@buff(25), 
;;  f               1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(6), STR_5(3), STR_4(12), 
;; Auto vars:     Size  Location     Type
;;  sp              1   15[BANK0 ] PTR unsigned char 
;;		 -> hd44780_printdecimal@buff(10), hd44780_printint@buff(5), main@buff(25), 
;;  _val            4   11[BANK0 ] struct .
;;  c               1   16[BANK0 ] char 
;;  prec            1   10[BANK0 ] char 
;;  flag            1    9[BANK0 ] unsigned char 
;;  ap              1    8[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       5       0       0
;;      Locals:         0       9       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      17       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;;		_hd44780_printint
;;		_hd44780_printdecimal
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	492
global __ptext5
__ptext5:	;psect for function _sprintf
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 6
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	542
	
l1042:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l1094
	
l133:	
	line	547
	
l1044:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u531
	goto	u530
u531:
	goto	l1050
u530:
	line	550
	
l1046:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1048:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
;doprnt.c: 551: continue;
	goto	l1094
	line	552
	
l134:	
	line	557
	
l1050:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l1054
	line	646
;doprnt.c: 646: case 0:
	
l136:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l1096
	line	706
;doprnt.c: 706: case 'd':
	
l138:	
	goto	l1056
	line	707
	
l139:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l1056
	line	811
;doprnt.c: 811: default:
	
l141:	
	line	822
;doprnt.c: 822: continue;
	goto	l1094
	line	831
	
l1052:	
;doprnt.c: 831: }
	goto	l1056
	line	644
	
l135:	
	
l1054:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte          112     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1096
	xorlw	100^0	; case 100
	skipnz
	goto	l1056
	xorlw	105^100	; case 105
	skipnz
	goto	l1056
	goto	l1094
	opt asmopt_on

	line	831
	
l140:	
	line	1268
	
l1056:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l1058:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l1060:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u541
	goto	u540
u541:
	goto	l1066
u540:
	line	1271
	
l1062:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l1064:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l1066
	line	1273
	
l142:	
	line	1314
	
l1066:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u551
	goto	u550
u551:
	goto	l1070
u550:
	goto	l1078
	
l1068:	
	goto	l1078
	line	1315
	
l143:	
	
l1070:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u565
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u565:
	skipnc
	goto	u561
	goto	u560
u561:
	goto	l1074
u560:
	goto	l1078
	line	1316
	
l1072:	
;doprnt.c: 1316: break;
	goto	l1078
	
l145:	
	line	1314
	
l1074:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l1076:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u571
	goto	u570
u571:
	goto	l1070
u570:
	goto	l1078
	
l144:	
	line	1447
	
l1078:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u581
	goto	u580
u581:
	goto	l1084
u580:
	line	1448
	
l1080:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1082:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1084
	
l146:	
	line	1481
	
l1084:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l1092
	
l148:	
	line	1498
	
l1086:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@_val+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(sprintf@_val),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1533
	
l1088:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1090:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1092
	line	1534
	
l147:	
	line	1483
	
l1092:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u591
	goto	u590
u591:
	goto	l1086
u590:
	goto	l1094
	
l149:	
	goto	l1094
	line	1542
	
l132:	
	line	545
	
l1094:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u601
	goto	u600
u601:
	goto	l1044
u600:
	goto	l1096
	
l150:	
	goto	l1096
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l137:	
	line	1547
	
l1096:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l151
	line	1549
	
l1098:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l151:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwmod.c"
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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwmod.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___lwmod
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1020:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u471
	goto	u470
u471:
	goto	l1038
u470:
	line	14
	
l1022:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1028
	
l564:	
	line	16
	
l1024:	
	movlw	01h
	
u485:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u485
	line	17
	
l1026:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1028
	line	18
	
l563:	
	line	15
	
l1028:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u491
	goto	u490
u491:
	goto	l1024
u490:
	goto	l1030
	
l565:	
	goto	l1030
	line	19
	
l566:	
	line	20
	
l1030:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u505
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u505:
	skipc
	goto	u501
	goto	u500
u501:
	goto	l1034
u500:
	line	21
	
l1032:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1034
	
l567:	
	line	22
	
l1034:	
	movlw	01h
	
u515:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u515
	line	23
	
l1036:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l1030
u520:
	goto	l1038
	
l568:	
	goto	l1038
	line	24
	
l562:	
	line	25
	
l1038:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l569
	
l1040:	
	line	26
	
l569:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___lwdiv
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l974:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l976:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u371
	goto	u370
u371:
	goto	l996
u370:
	line	16
	
l978:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l984
	
l554:	
	line	18
	
l980:	
	movlw	01h
	
u385:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u385
	line	19
	
l982:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l984
	line	20
	
l553:	
	line	17
	
l984:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u391
	goto	u390
u391:
	goto	l980
u390:
	goto	l986
	
l555:	
	goto	l986
	line	21
	
l556:	
	line	22
	
l986:	
	movlw	01h
	
u405:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u405
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u415
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u415:
	skipc
	goto	u411
	goto	u410
u411:
	goto	l992
u410:
	line	24
	
l988:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l990:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l992
	line	26
	
l557:	
	line	27
	
l992:	
	movlw	01h
	
u425:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u425
	line	28
	
l994:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u431
	goto	u430
u431:
	goto	l986
u430:
	goto	l996
	
l558:	
	goto	l996
	line	29
	
l552:	
	line	30
	
l996:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l559
	
l998:	
	line	31
	
l559:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_hd44780_printstr

;; *************** function _hd44780_printstr *****************
;; Defined at:
;;		line 96 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;  dta             2    5[COMMON] PTR unsigned char 
;;		 -> hd44780_printdecimal@buff(10), hd44780_printint@buff(5), main@buff(25), STR_3(2), 
;;		 -> STR_1(11), 
;;  loc             1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         3       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_hd44780_char
;;		_hd44780_newline
;;		_hd44780_write
;; This function is called by:
;;		_main
;;		_hd44780_printint
;;		_hd44780_printdecimal
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	96
global __ptext8
__ptext8:	;psect for function _hd44780_printstr
psect	text8
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	96
	global	__size_of_hd44780_printstr
	__size_of_hd44780_printstr	equ	__end_of_hd44780_printstr-_hd44780_printstr
	
_hd44780_printstr:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_printstr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	100
	
l1176:	
;hd44780.c: 100: hd44780_write( 0x80 | loc );
	movf	(hd44780_printstr@loc),w
	iorlw	080h
	fcall	_hd44780_write
	line	102
;hd44780.c: 102: while( *dta != '\0' ){
	goto	l1186
	
l97:	
	line	103
	
l1178:	
;hd44780.c: 103: if( *dta != '\n' ){
	movf	(hd44780_printstr@dta+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(hd44780_printstr@dta),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0Ah
	skipnz
	goto	u641
	goto	u640
u641:
	goto	l1182
u640:
	line	104
	
l1180:	
;hd44780.c: 104: hd44780_char( *dta );
	movf	(hd44780_printstr@dta+1),w
	movwf	btemp+1
	movf	(hd44780_printstr@dta),w
	movwf	fsr0
	fcall	stringtab
	fcall	_hd44780_char
	line	105
;hd44780.c: 105: }else{
	goto	l1184
	
l98:	
	line	107
	
l1182:	
;hd44780.c: 107: hd44780_newline();
	fcall	_hd44780_newline
	goto	l1184
	line	108
	
l99:	
	line	110
	
l1184:	
;hd44780.c: 108: }
;hd44780.c: 110: dta++;
	movlw	01h
	addwf	(hd44780_printstr@dta),f
	skipnc
	incf	(hd44780_printstr@dta+1),f
	goto	l1186
	line	111
	
l96:	
	line	102
	
l1186:	
	movf	(hd44780_printstr@dta+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(hd44780_printstr@dta),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u651
	goto	u650
u651:
	goto	l1178
u650:
	goto	l101
	
l100:	
	line	112
	
l101:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_printstr
	__end_of_hd44780_printstr:
	signat	_hd44780_printstr,8312
	global	_hd44780_newline

;; *************** function _hd44780_newline *****************
;; Defined at:
;;		line 122 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_hd44780_write
;; This function is called by:
;;		_hd44780_printstr
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	122
global __ptext9
__ptext9:	;psect for function _hd44780_newline
psect	text9
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	122
	global	__size_of_hd44780_newline
	__size_of_hd44780_newline	equ	__end_of_hd44780_newline-_hd44780_newline
	
_hd44780_newline:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_newline: [wreg+status,2+status,0+pclath+cstack]
	line	124
	
l1170:	
;hd44780.c: 124: hd44780_write( 0xC0 );
	movlw	(0C0h)
	fcall	_hd44780_write
	line	125
	
l107:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_newline
	__end_of_hd44780_newline:
	signat	_hd44780_newline,88
	global	_hd44780_printchr

;; *************** function _hd44780_printchr *****************
;; Defined at:
;;		line 114 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;  dta             1    wreg     unsigned char 
;;  loc             1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dta             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_hd44780_char
;;		_hd44780_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	114
global __ptext10
__ptext10:	;psect for function _hd44780_printchr
psect	text10
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	114
	global	__size_of_hd44780_printchr
	__size_of_hd44780_printchr	equ	__end_of_hd44780_printchr-_hd44780_printchr
	
_hd44780_printchr:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_printchr: [wreg+status,2+status,0+pclath+cstack]
;hd44780_printchr@dta stored from wreg
	movwf	(hd44780_printchr@dta)
	line	117
	
l1188:	
;hd44780.c: 117: hd44780_write( 0x80 | loc );
	movf	(hd44780_printchr@loc),w
	iorlw	080h
	fcall	_hd44780_write
	line	119
;hd44780.c: 119: hd44780_char( dta );
	movf	(hd44780_printchr@dta),w
	fcall	_hd44780_char
	line	120
	
l104:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_printchr
	__end_of_hd44780_printchr:
	signat	_hd44780_printchr,8312
	global	_hd44780_clear

;; *************** function _hd44780_clear *****************
;; Defined at:
;;		line 189 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_hd44780_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	189
global __ptext11
__ptext11:	;psect for function _hd44780_clear
psect	text11
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	189
	global	__size_of_hd44780_clear
	__size_of_hd44780_clear	equ	__end_of_hd44780_clear-_hd44780_clear
	
_hd44780_clear:	
;incstack = 0
	opt	stack 5
; Regs used in _hd44780_clear: [wreg+status,2+status,0+pclath+cstack]
	line	192
	
l1160:	
;hd44780.c: 192: hd44780_write( 0b00000001 );
	movlw	(01h)
	fcall	_hd44780_write
	line	193
	
l117:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_clear
	__end_of_hd44780_clear:
	signat	_hd44780_clear,88
	global	_hd44780_block_erase

;; *************** function _hd44780_block_erase *****************
;; Defined at:
;;		line 195 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;  start_loc       1    wreg     unsigned char 
;;  length          1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  start_loc       1    7[COMMON] unsigned char 
;;  i               2    8[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_hd44780_char
;;		_hd44780_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	195
global __ptext12
__ptext12:	;psect for function _hd44780_block_erase
psect	text12
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	195
	global	__size_of_hd44780_block_erase
	__size_of_hd44780_block_erase	equ	__end_of_hd44780_block_erase-_hd44780_block_erase
	
_hd44780_block_erase:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_block_erase: [wreg+status,2+status,0+pclath+cstack]
;hd44780_block_erase@start_loc stored from wreg
	movwf	(hd44780_block_erase@start_loc)
	line	200
	
l1190:	
;hd44780.c: 197: int i;
;hd44780.c: 200: for(i=0;i<length;i++){
	clrf	(hd44780_block_erase@i)
	clrf	(hd44780_block_erase@i+1)
	goto	l1196
	
l121:	
	line	201
	
l1192:	
;hd44780.c: 201: hd44780_write( 0x80 | (start_loc+i) );
	movf	(hd44780_block_erase@i),w
	addwf	(hd44780_block_erase@start_loc),w
	iorlw	080h
	fcall	_hd44780_write
	line	203
;hd44780.c: 203: hd44780_char( ' ' );
	movlw	(020h)
	fcall	_hd44780_char
	line	200
	
l1194:	
	movlw	low(01h)
	addwf	(hd44780_block_erase@i),f
	skipnc
	incf	(hd44780_block_erase@i+1),f
	movlw	high(01h)
	addwf	(hd44780_block_erase@i+1),f
	goto	l1196
	
l120:	
	
l1196:	
	movf	(hd44780_block_erase@i+1),w
	xorlw	80h
	movwf	(??_hd44780_block_erase+0)+0
	movlw	80h
	subwf	(??_hd44780_block_erase+0)+0,w
	skipz
	goto	u665
	movf	(hd44780_block_erase@length),w
	subwf	(hd44780_block_erase@i),w
u665:

	skipc
	goto	u661
	goto	u660
u661:
	goto	l1192
u660:
	goto	l123
	
l122:	
	line	205
	
l123:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_block_erase
	__end_of_hd44780_block_erase:
	signat	_hd44780_block_erase,8312
	global	_hd44780_char

;; *************** function _hd44780_char *****************
;; Defined at:
;;		line 70 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;  bt              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bt              1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_hd44780_write
;; This function is called by:
;;		_hd44780_printstr
;;		_hd44780_printchr
;;		_hd44780_block_erase
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	70
global __ptext13
__ptext13:	;psect for function _hd44780_char
psect	text13
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	70
	global	__size_of_hd44780_char
	__size_of_hd44780_char	equ	__end_of_hd44780_char-_hd44780_char
	
_hd44780_char:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_char: [wreg+status,2+status,0+pclath+cstack]
;hd44780_char@bt stored from wreg
	movwf	(hd44780_char@bt)
	line	73
	
l1162:	
;hd44780.c: 73: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	74
;hd44780.c: 74: rs_flag = 1;
	bsf	(_rs_flag/8),(_rs_flag)&7
	line	75
	
l1164:	
;hd44780.c: 75: hd44780_write( bt );
	movf	(hd44780_char@bt),w
	fcall	_hd44780_write
	line	76
	
l1166:	
;hd44780.c: 76: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	77
	
l1168:	
;hd44780.c: 77: rs_flag = 0;
	bcf	(_rs_flag/8),(_rs_flag)&7
	line	78
	
l87:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_char
	__end_of_hd44780_char:
	signat	_hd44780_char,4216
	global	_hd44780_write

;; *************** function _hd44780_write *****************
;; Defined at:
;;		line 41 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;  bt              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bt              1    2[COMMON] unsigned char 
;;  tmp             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_hd44780_busy
;;		_hd44780_pulse
;; This function is called by:
;;		_hd44780_init
;;		_hd44780_char
;;		_hd44780_printstr
;;		_hd44780_printchr
;;		_hd44780_newline
;;		_hd44780_clear
;;		_hd44780_block_erase
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	41
global __ptext14
__ptext14:	;psect for function _hd44780_write
psect	text14
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	41
	global	__size_of_hd44780_write
	__size_of_hd44780_write	equ	__end_of_hd44780_write-_hd44780_write
	
_hd44780_write:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_write: [wreg+status,2+status,0+pclath+cstack]
;hd44780_write@bt stored from wreg
	movwf	(hd44780_write@bt)
	line	45
	
l1100:	
;hd44780.c: 43: unsigned char tmp;
;hd44780.c: 45: tmp = bt & 0xF0;
	movf	(hd44780_write@bt),w
	andlw	0F0h
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	line	46
	
l1102:	
;hd44780.c: 46: tmp = tmp >> 4;
	movf	(hd44780_write@tmp),w
	movwf	(??_hd44780_write+0)+0
	movlw	04h
u615:
	clrc
	rrf	(??_hd44780_write+0)+0,f
	addlw	-1
	skipz
	goto	u615
	movf	0+(??_hd44780_write+0)+0,w
	movwf	(??_hd44780_write+1)+0
	movf	(??_hd44780_write+1)+0,w
	movwf	(hd44780_write@tmp)
	line	48
	
l1104:	
;hd44780.c: 48: if(rs_flag == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_rs_flag/8),(_rs_flag)&7
	goto	u621
	goto	u620
u621:
	goto	l1108
u620:
	line	49
	
l1106:	
;hd44780.c: 49: tmp = tmp | 0x20;
	movf	(hd44780_write@tmp),w
	iorlw	020h
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	goto	l1108
	line	50
	
l82:	
	line	51
	
l1108:	
;hd44780.c: 50: }
;hd44780.c: 51: PORTB = tmp;
	movf	(hd44780_write@tmp),w
	movwf	(6)	;volatile
	line	53
	
l1110:	
;hd44780.c: 53: hd44780_pulse();
	fcall	_hd44780_pulse
	line	55
	
l1112:	
;hd44780.c: 55: tmp = bt & 0x0F;
	movf	(hd44780_write@bt),w
	andlw	0Fh
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	line	57
	
l1114:	
;hd44780.c: 57: if(rs_flag == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_rs_flag/8),(_rs_flag)&7
	goto	u631
	goto	u630
u631:
	goto	l1118
u630:
	line	58
	
l1116:	
;hd44780.c: 58: tmp = tmp | 0x20;
	movf	(hd44780_write@tmp),w
	iorlw	020h
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	goto	l1118
	line	59
	
l83:	
	line	61
	
l1118:	
;hd44780.c: 59: }
;hd44780.c: 61: PORTB = tmp;
	movf	(hd44780_write@tmp),w
	movwf	(6)	;volatile
	line	63
	
l1120:	
;hd44780.c: 63: hd44780_pulse();
	fcall	_hd44780_pulse
	line	67
	
l1122:	
;hd44780.c: 67: hd44780_busy();
	fcall	_hd44780_busy
	line	68
	
l84:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_write
	__end_of_hd44780_write:
	signat	_hd44780_write,4216
	global	_hd44780_pulse

;; *************** function _hd44780_pulse *****************
;; Defined at:
;;		line 3 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hd44780_init
;;		_hd44780_write
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	3
global __ptext15
__ptext15:	;psect for function _hd44780_pulse
psect	text15
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	3
	global	__size_of_hd44780_pulse
	__size_of_hd44780_pulse	equ	__end_of_hd44780_pulse-_hd44780_pulse
	
_hd44780_pulse:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_pulse: []
	line	5
	
l1018:	
;hd44780.c: 5: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	6
;hd44780.c: 6: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	7
;hd44780.c: 7: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	8
	
l76:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_pulse
	__end_of_hd44780_pulse:
	signat	_hd44780_pulse,88
	global	_hd44780_busy

;; *************** function _hd44780_busy *****************
;; Defined at:
;;		line 80 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hd44780_init
;;		_hd44780_write
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	80
global __ptext16
__ptext16:	;psect for function _hd44780_busy
psect	text16
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\hd44780.c"
	line	80
	global	__size_of_hd44780_busy
	__size_of_hd44780_busy	equ	__end_of_hd44780_busy-_hd44780_busy
	
_hd44780_busy:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_busy: [wreg+status,2]
	line	82
	
l964:	
;hd44780.c: 82: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	83
;hd44780.c: 83: rs_flag = 0;
	bcf	(_rs_flag/8),(_rs_flag)&7
	line	84
	
l966:	
;hd44780.c: 84: TRISB = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	85
	
l968:	
;hd44780.c: 85: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	86
	
l970:	
;hd44780.c: 86: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	88
;hd44780.c: 88: while( RB3 == 1 );
	goto	l90
	
l91:	
	
l90:	
	btfsc	(51/8),(51)&7	;volatile
	goto	u361
	goto	u360
u361:
	goto	l90
u360:
	
l92:	
	line	90
;hd44780.c: 90: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	91
;hd44780.c: 91: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	93
	
l972:	
;hd44780.c: 93: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	94
	
l93:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_busy
	__end_of_hd44780_busy:
	signat	_hd44780_busy,88
	global	_debounce_read

;; *************** function _debounce_read *****************
;; Defined at:
;;		line 7 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\main.c"
;; Parameters:    Size  Location     Type
;;  pin             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pin             1    1[COMMON] unsigned char 
;;  count           1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\main.c"
	line	7
global __ptext17
__ptext17:	;psect for function _debounce_read
psect	text17
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD01\main.c"
	line	7
	global	__size_of_debounce_read
	__size_of_debounce_read	equ	__end_of_debounce_read-_debounce_read
	
_debounce_read:	
;incstack = 0
	opt	stack 7
; Regs used in _debounce_read: [wreg+status,2+status,0]
;debounce_read@pin stored from wreg
	movwf	(debounce_read@pin)
	line	9
	
l1000:	
;main.c: 9: char count = 0;
	clrf	(debounce_read@count)
	line	11
;main.c: 11: while( pin == 1 && count < 10 ){
	goto	l1006
	
l32:	
	line	12
	
l1002:	
;main.c: 12: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_debounce_read+0)+0,f
u757:
	nop
decfsz	(??_debounce_read+0)+0,f
	goto	u757
	nop2	;nop
	nop
opt asmopt_on

	line	13
	
l1004:	
;main.c: 13: count++;
	movlw	(01h)
	movwf	(??_debounce_read+0)+0
	movf	(??_debounce_read+0)+0,w
	addwf	(debounce_read@count),f
	goto	l1006
	line	14
	
l31:	
	line	11
	
l1006:	
	movf	(debounce_read@pin),w
	xorlw	01h
	skipz
	goto	u441
	goto	u440
u441:
	goto	l1010
u440:
	
l1008:	
	movlw	(0Ah)
	subwf	(debounce_read@count),w
	skipc
	goto	u451
	goto	u450
u451:
	goto	l1002
u450:
	goto	l1010
	
l34:	
	goto	l1010
	
l35:	
	line	17
	
l1010:	
;main.c: 14: }
;main.c: 17: return (count == 10) ? 1 : 0;
	movf	(debounce_read@count),w
	xorlw	0Ah
	skipnz
	goto	u461
	goto	u460
u461:
	goto	l1014
u460:
	
l1012:	
	clrc
	
	goto	l36
	
l960:	
	
l1014:	
	setc
	
	goto	l36
	
l962:	
	goto	l36
	
l1016:	
	line	18
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_debounce_read
	__end_of_debounce_read:
	signat	_debounce_read,4216
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
