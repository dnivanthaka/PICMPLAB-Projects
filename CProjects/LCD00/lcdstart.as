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
	FNCALL	_main,_hd44780_clear
	FNCALL	_main,_hd44780_init
	FNCALL	_main,_hd44780_printchr
	FNCALL	_main,_hd44780_printint
	FNCALL	_main,_hd44780_printstr
	FNCALL	_hd44780_printstr,_hd44780_char
	FNCALL	_hd44780_printstr,_hd44780_newline
	FNCALL	_hd44780_printstr,_hd44780_write
	FNCALL	_hd44780_newline,_hd44780_write
	FNCALL	_hd44780_printint,___awdiv
	FNCALL	_hd44780_printint,___awmod
	FNCALL	_hd44780_printint,_hd44780_char
	FNCALL	_hd44780_printint,_hd44780_write
	FNCALL	_hd44780_printchr,_hd44780_char
	FNCALL	_hd44780_printchr,_hd44780_write
	FNCALL	_hd44780_char,_hd44780_write
	FNCALL	_hd44780_init,_hd44780_busy
	FNCALL	_hd44780_init,_hd44780_pulse
	FNCALL	_hd44780_init,_hd44780_write
	FNCALL	_hd44780_clear,_hd44780_write
	FNCALL	_hd44780_write,_hd44780_busy
	FNCALL	_hd44780_write,_hd44780_pulse
	FNROOT	_main
	global	hd44780_printint@F630
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	149

;initializer for hd44780_printint@F630
	retlw	030h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	039h
	global	_rs_flag
	global	_PORTB
_PORTB	set	0x6
	global	_RB3
_RB3	set	0x33
	global	_RB4
_RB4	set	0x34
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_TRISB
_TRISB	set	0x86
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
	
STR_3:	
	retlw	72	;'H'
	retlw	0
psect	strings
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
	file	"lcdstart.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	149
hd44780_printint@F630:
       ds      10

psect	bitbssBANK0,class=BANK0,bit,space=1,noexec
global __pbitbssBANK0
__pbitbssBANK0:
_rs_flag:
       ds      1

	file	"lcdstart.as"
	line	#
; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssBANK0/8)+0)&07Fh
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
	fcall	__pidataBANK0+8		;fetch initializer
	movwf	__pdataBANK0+8&07fh		
	fcall	__pidataBANK0+9		;fetch initializer
	movwf	__pdataBANK0+9&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_hd44780_busy:	; 0 bytes @ 0x0
??_hd44780_busy:	; 0 bytes @ 0x0
?_hd44780_write:	; 0 bytes @ 0x0
??_hd44780_write:	; 0 bytes @ 0x0
?_hd44780_newline:	; 0 bytes @ 0x0
?_hd44780_pulse:	; 0 bytes @ 0x0
??_hd44780_pulse:	; 0 bytes @ 0x0
?_hd44780_init:	; 0 bytes @ 0x0
?_hd44780_char:	; 0 bytes @ 0x0
?_hd44780_clear:	; 0 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	hd44780_write@bt
hd44780_write@bt:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	hd44780_write@tmp
hd44780_write@tmp:	; 1 bytes @ 0x3
	ds	1
??_hd44780_newline:	; 0 bytes @ 0x4
??_hd44780_init:	; 0 bytes @ 0x4
??_hd44780_char:	; 0 bytes @ 0x4
??_hd44780_clear:	; 0 bytes @ 0x4
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	hd44780_char@bt
hd44780_char@bt:	; 1 bytes @ 0x4
	ds	1
?_hd44780_printstr:	; 0 bytes @ 0x5
?_hd44780_printchr:	; 0 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	hd44780_printstr@loc
hd44780_printstr@loc:	; 2 bytes @ 0x5
	global	hd44780_printchr@loc
hd44780_printchr@loc:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
??_hd44780_printstr:	; 0 bytes @ 0x7
??_hd44780_printchr:	; 0 bytes @ 0x7
	global	hd44780_printchr@dta
hd44780_printchr@dta:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	hd44780_printstr@dta
hd44780_printstr@dta:	; 1 bytes @ 0x8
	ds	1
?_hd44780_printint:	; 0 bytes @ 0x9
	global	hd44780_printint@dta
hd44780_printint@dta:	; 2 bytes @ 0x9
	ds	2
	global	hd44780_printint@loc
hd44780_printint@loc:	; 2 bytes @ 0xB
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_hd44780_printint:	; 0 bytes @ 0x0
	ds	4
	global	hd44780_printint@arr
hd44780_printint@arr:	; 10 bytes @ 0x4
	ds	10
	global	hd44780_printint@u_count
hd44780_printint@u_count:	; 1 bytes @ 0xE
	ds	1
	global	hd44780_printint@h_count
hd44780_printint@h_count:	; 1 bytes @ 0xF
	ds	1
	global	hd44780_printint@t_count
hd44780_printint@t_count:	; 1 bytes @ 0x10
	ds	1
??_main:	; 0 bytes @ 0x11
	ds	2
	global	main@text2
main@text2:	; 1 bytes @ 0x13
	ds	1
	global	main@text3
main@text3:	; 1 bytes @ 0x14
	ds	1
	global	main@text
main@text:	; 1 bytes @ 0x15
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x16
	ds	2
;!
;!Data Sizes:
;!    Strings     28
;!    Constant    0
;!    Data        10
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     13      13
;!    BANK0            80     24      35
;!    BANK1            80      0       0
;!    BANK2            48      0       0

;!
;!Pointer List with Targets:
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
;!    hd44780_printstr@dta	PTR unsigned char  size(1) Largest target is 11
;!		 -> STR_3(CODE[2]), STR_1(CODE[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_hd44780_printint
;!    _hd44780_printstr->_hd44780_char
;!    _hd44780_newline->_hd44780_write
;!    _hd44780_printint->___awdiv
;!    _hd44780_printchr->_hd44780_char
;!    _hd44780_char->_hd44780_write
;!    _hd44780_init->_hd44780_write
;!    _hd44780_clear->_hd44780_write
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_hd44780_printint
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 7     7      0    4976
;!                                             17 BANK0      7     7      0
;!                      _hd44780_clear
;!                       _hd44780_init
;!                   _hd44780_printchr
;!                   _hd44780_printint
;!                   _hd44780_printstr
;! ---------------------------------------------------------------------------------
;! (1) _hd44780_printstr                                     4     2      2    1139
;!                                              5 COMMON     4     2      2
;!                       _hd44780_char
;!                    _hd44780_newline
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (2) _hd44780_newline                                      0     0      0     232
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (1) _hd44780_printint                                    22    18      4    2550
;!                                              9 COMMON     4     0      4
;!                                              0 BANK0     17    17      0
;!                            ___awdiv
;!                            ___awmod
;!                       _hd44780_char
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4     614
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     618
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! (1) _hd44780_printchr                                     3     1      2     622
;!                                              5 COMMON     3     1      2
;!                       _hd44780_char
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (2) _hd44780_char                                         1     1      0     263
;!                                              4 COMMON     1     1      0
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (1) _hd44780_init                                         2     2      0     232
;!                                              4 COMMON     2     2      0
;!                       _hd44780_busy
;!                      _hd44780_pulse
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (1) _hd44780_clear                                        0     0      0     232
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (2) _hd44780_write                                        4     4      0     232
;!                                              0 COMMON     4     4      0
;!                       _hd44780_busy
;!                      _hd44780_pulse
;! ---------------------------------------------------------------------------------
;! (3) _hd44780_pulse                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _hd44780_busy                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _hd44780_clear
;!     _hd44780_write
;!       _hd44780_busy
;!       _hd44780_pulse
;!   _hd44780_init
;!     _hd44780_busy
;!     _hd44780_pulse
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
;!   _hd44780_printint
;!     ___awdiv
;!     ___awmod
;!     _hd44780_char
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!     _hd44780_write
;!       _hd44780_busy
;!       _hd44780_pulse
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
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               30      0       0       9        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     18      23       3       43.8%
;!BITBANK0            50      0       1       5        1.3%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      D       D       1       92.9%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      30      10        0.0%
;!ABS                  0      0      30       4        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              80      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 185 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   22[BANK0 ] int 
;;  text            1   21[BANK0 ] PTR unsigned char 
;;		 -> STR_1(11), 
;;  text3           1   20[BANK0 ] PTR unsigned char 
;;		 -> STR_3(2), 
;;  text2           1   19[BANK0 ] PTR unsigned char 
;;		 -> STR_2(15), 
;; Return value:  Size  Location     Type
;;                  2   67[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       5       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_hd44780_clear
;;		_hd44780_init
;;		_hd44780_printchr
;;		_hd44780_printint
;;		_hd44780_printstr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	185
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	185
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	187
	
l1262:	
;main.c: 187: char *text = "Counting: ";
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@text)
	line	188
;main.c: 188: char *text2 = "Text \nDisplay2";
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@text2)
	line	189
;main.c: 189: char *text3 = "H";
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@text3)
	line	196
	
l1264:	
;main.c: 190: int i;
;main.c: 196: hd44780_init();
	fcall	_hd44780_init
	line	197
	
l1266:	
;main.c: 197: hd44780_printstr( text, 1 );
	movlw	low(01h)
	movwf	(hd44780_printstr@loc)
	movlw	high(01h)
	movwf	((hd44780_printstr@loc))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@text),w
	fcall	_hd44780_printstr
	line	198
	
l1268:	
;main.c: 198: hd44780_printstr( text3, 7 );
	movlw	low(07h)
	movwf	(hd44780_printstr@loc)
	movlw	high(07h)
	movwf	((hd44780_printstr@loc))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@text3),w
	fcall	_hd44780_printstr
	line	199
	
l1270:	
;main.c: 199: hd44780_clear();
	fcall	_hd44780_clear
	line	200
	
l1272:	
;main.c: 200: hd44780_printchr( 'H', 7 );
	movlw	low(07h)
	movwf	(hd44780_printchr@loc)
	movlw	high(07h)
	movwf	((hd44780_printchr@loc))+1
	movlw	(048h)
	fcall	_hd44780_printchr
	line	201
	
l1274:	
;main.c: 201: hd44780_printint( -2500, 5 );
	movlw	low(-2500)
	movwf	(hd44780_printint@dta)
	movlw	high(-2500)
	movwf	((hd44780_printint@dta))+1
	movlw	low(05h)
	movwf	(hd44780_printint@loc)
	movlw	high(05h)
	movwf	((hd44780_printint@loc))+1
	fcall	_hd44780_printint
	line	202
	
l1276:	
;main.c: 202: hd44780_clear();
	fcall	_hd44780_clear
	line	203
	
l1278:	
;main.c: 203: hd44780_printstr( text, 0 );
	movlw	low(0)
	movwf	(hd44780_printstr@loc)
	movlw	high(0)
	movwf	((hd44780_printstr@loc))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@text),w
	fcall	_hd44780_printstr
	goto	l1280
	line	227
;main.c: 227: while(1){
	
l68:	
	line	228
	
l1280:	
;main.c: 228: for(i=0;i<5000;i++){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l1282:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01388h))^80h
	subwf	btemp+1,w
	skipz
	goto	u675
	movlw	low(01388h)
	subwf	(main@i),w
u675:

	skipc
	goto	u671
	goto	u670
u671:
	goto	l1286
u670:
	goto	l1280
	
l1284:	
	goto	l1280
	
l69:	
	line	229
	
l1286:	
;main.c: 229: hd44780_printint( i, 11 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i+1),w
	clrf	(hd44780_printint@dta+1)
	addwf	(hd44780_printint@dta+1)
	movf	(main@i),w
	clrf	(hd44780_printint@dta)
	addwf	(hd44780_printint@dta)

	movlw	low(0Bh)
	movwf	(hd44780_printint@loc)
	movlw	high(0Bh)
	movwf	((hd44780_printint@loc))+1
	fcall	_hd44780_printint
	line	230
	
l1288:	
;main.c: 230: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u697:
	decfsz	((??_main+0)+0),f
	goto	u697
	decfsz	((??_main+0)+0+1),f
	goto	u697
	nop2
opt asmopt_on

	line	228
	
l1290:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1292:	
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
	goto	l1286
u680:
	goto	l1280
	
l70:	
	goto	l1280
	line	232
	
l71:	
	line	227
	goto	l1280
	
l72:	
	line	235
;main.c: 231: }
;main.c: 232: }
;main.c: 234: return 0;
;	Return value of _main is never used
	
l73:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_hd44780_printstr

;; *************** function _hd44780_printstr *****************
;; Defined at:
;;		line 117 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
;; Parameters:    Size  Location     Type
;;  dta             1    wreg     PTR unsigned char 
;;		 -> STR_3(2), STR_1(11), 
;;  loc             2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  dta             1    8[COMMON] PTR unsigned char 
;;		 -> STR_3(2), STR_1(11), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_hd44780_char
;;		_hd44780_newline
;;		_hd44780_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	117
global __ptext1
__ptext1:	;psect for function _hd44780_printstr
psect	text1
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	117
	global	__size_of_hd44780_printstr
	__size_of_hd44780_printstr	equ	__end_of_hd44780_printstr-_hd44780_printstr
	
_hd44780_printstr:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_printstr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;hd44780_printstr@dta stored from wreg
	movwf	(hd44780_printstr@dta)
	line	121
	
l1218:	
;main.c: 121: hd44780_write( 0x80 | loc );
	movf	(hd44780_printstr@loc),w
	iorlw	080h
	fcall	_hd44780_write
	line	123
;main.c: 123: while( *dta != '\0' ){
	goto	l1228
	
l46:	
	line	124
	
l1220:	
;main.c: 124: if( *dta != '\n' ){
	movf	(hd44780_printstr@dta),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0Ah
	skipnz
	goto	u631
	goto	u630
u631:
	goto	l1224
u630:
	line	125
	
l1222:	
;main.c: 125: hd44780_char( *dta );
	movf	(hd44780_printstr@dta),w
	movwf	fsr0
	fcall	stringdir
	fcall	_hd44780_char
	line	126
;main.c: 126: }else{
	goto	l1226
	
l47:	
	line	128
	
l1224:	
;main.c: 128: hd44780_newline();
	fcall	_hd44780_newline
	goto	l1226
	line	129
	
l48:	
	line	131
	
l1226:	
;main.c: 129: }
;main.c: 131: dta++;
	movlw	(01h)
	movwf	(??_hd44780_printstr+0)+0
	movf	(??_hd44780_printstr+0)+0,w
	addwf	(hd44780_printstr@dta),f
	goto	l1228
	line	132
	
l45:	
	line	123
	
l1228:	
	movf	(hd44780_printstr@dta),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u641
	goto	u640
u641:
	goto	l1220
u640:
	goto	l50
	
l49:	
	line	133
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_printstr
	__end_of_hd44780_printstr:
	signat	_hd44780_printstr,8312
	global	_hd44780_newline

;; *************** function _hd44780_newline *****************
;; Defined at:
;;		line 143 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
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
psect	text2,local,class=CODE,delta=2,merge=1
	line	143
global __ptext2
__ptext2:	;psect for function _hd44780_newline
psect	text2
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	143
	global	__size_of_hd44780_newline
	__size_of_hd44780_newline	equ	__end_of_hd44780_newline-_hd44780_newline
	
_hd44780_newline:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_newline: [wreg+status,2+status,0+pclath+cstack]
	line	145
	
l1214:	
;main.c: 145: hd44780_write( 0xC0 );
	movlw	(0C0h)
	fcall	_hd44780_write
	line	146
	
l56:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_newline
	__end_of_hd44780_newline:
	signat	_hd44780_newline,88
	global	_hd44780_printint

;; *************** function _hd44780_printint *****************
;; Defined at:
;;		line 148 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
;; Parameters:    Size  Location     Type
;;  dta             2    9[COMMON] int 
;;  loc             2   11[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  arr            10    4[BANK0 ] unsigned char [10]
;;  t_count         1   16[BANK0 ] unsigned char 
;;  h_count         1   15[BANK0 ] unsigned char 
;;  u_count         1   14[BANK0 ] unsigned char 
;;  o_count         1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         0      13       0       0
;;      Temps:          0       4       0       0
;;      Totals:         4      17       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_hd44780_char
;;		_hd44780_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	148
global __ptext3
__ptext3:	;psect for function _hd44780_printint
psect	text3
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	148
	global	__size_of_hd44780_printint
	__size_of_hd44780_printint	equ	__end_of_hd44780_printint-_hd44780_printint
	
_hd44780_printint:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_printint: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	150
	
l1232:	
;main.c: 150: char arr[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
	movlw	(hd44780_printint@arr)&0ffh
	movwf	fsr0
	movlw	low(hd44780_printint@F630)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_hd44780_printint+0)+0
	movf	fsr0,w
	movwf	((??_hd44780_printint+0)+0+1)
	movlw	10
	movwf	((??_hd44780_printint+0)+0+2)
u650:
	movf	(??_hd44780_printint+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_hd44780_printint+0)+0+3)
	incf	(??_hd44780_printint+0)+0,f
	movf	((??_hd44780_printint+0)+0+1),w
	movwf	fsr0
	
	movf	((??_hd44780_printint+0)+0+3),w
	movwf	indf
	incf	((??_hd44780_printint+0)+0+1),f
	decfsz	((??_hd44780_printint+0)+0+2),f
	goto	u650
	line	154
	
l1234:	
;main.c: 151: unsigned char u_count, h_count, t_count, o_count;
;main.c: 154: hd44780_write( 0x80 | loc );
	movf	(hd44780_printint@loc),w
	iorlw	080h
	fcall	_hd44780_write
	line	156
	
l1236:	
;main.c: 156: if( dta < 0 ){
	btfss	(hd44780_printint@dta+1),7
	goto	u661
	goto	u660
u661:
	goto	l1242
u660:
	line	157
	
l1238:	
;main.c: 157: hd44780_char( '-' );
	movlw	(02Dh)
	fcall	_hd44780_char
	line	158
	
l1240:	
;main.c: 158: dta = -dta;
	comf	(hd44780_printint@dta),f
	comf	(hd44780_printint@dta+1),f
	incf	(hd44780_printint@dta),f
	skipnz
	incf	(hd44780_printint@dta+1),f
	goto	l1242
	line	159
	
l61:	
	line	161
	
l1242:	
;main.c: 159: }
;main.c: 161: u_count = dta / 1000;
	movlw	low(03E8h)
	movwf	(___awdiv@divisor)
	movlw	high(03E8h)
	movwf	((___awdiv@divisor))+1
	movf	(hd44780_printint@dta+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(hd44780_printint@dta),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_hd44780_printint+0)+0
	movf	(??_hd44780_printint+0)+0,w
	movwf	(hd44780_printint@u_count)
	line	162
	
l1244:	
;main.c: 162: dta = dta % 1000;
	movlw	low(03E8h)
	movwf	(___awmod@divisor)
	movlw	high(03E8h)
	movwf	((___awmod@divisor))+1
	movf	(hd44780_printint@dta+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(hd44780_printint@dta),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(hd44780_printint@dta+1)
	addwf	(hd44780_printint@dta+1)
	movf	(0+(?___awmod)),w
	clrf	(hd44780_printint@dta)
	addwf	(hd44780_printint@dta)

	line	163
	
l1246:	
;main.c: 163: h_count = dta / 100;
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(hd44780_printint@dta+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(hd44780_printint@dta),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_hd44780_printint+0)+0
	movf	(??_hd44780_printint+0)+0,w
	movwf	(hd44780_printint@h_count)
	line	164
	
l1248:	
;main.c: 164: dta = dta % 100;
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	movf	(hd44780_printint@dta+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(hd44780_printint@dta),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(hd44780_printint@dta+1)
	addwf	(hd44780_printint@dta+1)
	movf	(0+(?___awmod)),w
	clrf	(hd44780_printint@dta)
	addwf	(hd44780_printint@dta)

	line	165
	
l1250:	
;main.c: 165: t_count = dta / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(hd44780_printint@dta+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(hd44780_printint@dta),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_hd44780_printint+0)+0
	movf	(??_hd44780_printint+0)+0,w
	movwf	(hd44780_printint@t_count)
	line	166
	
l1252:	
;main.c: 166: dta = dta % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(hd44780_printint@dta+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(hd44780_printint@dta),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(hd44780_printint@dta+1)
	addwf	(hd44780_printint@dta+1)
	movf	(0+(?___awmod)),w
	clrf	(hd44780_printint@dta)
	addwf	(hd44780_printint@dta)

	line	170
	
l1254:	
;main.c: 170: hd44780_char( arr[u_count] );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(hd44780_printint@u_count),w
	addlw	hd44780_printint@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_hd44780_char
	line	172
	
l1256:	
;main.c: 172: hd44780_char( arr[h_count] );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(hd44780_printint@h_count),w
	addlw	hd44780_printint@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_hd44780_char
	line	174
	
l1258:	
;main.c: 174: hd44780_char( arr[t_count] );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(hd44780_printint@t_count),w
	addlw	hd44780_printint@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_hd44780_char
	line	176
	
l1260:	
;main.c: 176: hd44780_char( arr[dta] );
	movf	(hd44780_printint@dta),w
	addlw	hd44780_printint@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_hd44780_char
	line	177
	
l62:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_printint
	__end_of_hd44780_printint:
	signat	_hd44780_printint,8312
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awmod.c"
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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hd44780_printint
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awmod.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___awmod
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l934:	
	clrf	(___awmod@sign)
	line	14
	
l936:	
	btfss	(___awmod@dividend+1),7
	goto	u411
	goto	u410
u411:
	goto	l942
u410:
	line	15
	
l938:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l940:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l942
	line	17
	
l268:	
	line	18
	
l942:	
	btfss	(___awmod@divisor+1),7
	goto	u421
	goto	u420
u421:
	goto	l946
u420:
	line	19
	
l944:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l946
	
l269:	
	line	20
	
l946:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u431
	goto	u430
u431:
	goto	l964
u430:
	line	21
	
l948:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l954
	
l272:	
	line	23
	
l950:	
	movlw	01h
	
u445:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u445
	line	24
	
l952:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l954
	line	25
	
l271:	
	line	22
	
l954:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u451
	goto	u450
u451:
	goto	l950
u450:
	goto	l956
	
l273:	
	goto	l956
	line	26
	
l274:	
	line	27
	
l956:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u465
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u465:
	skipc
	goto	u461
	goto	u460
u461:
	goto	l960
u460:
	line	28
	
l958:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l960
	
l275:	
	line	29
	
l960:	
	movlw	01h
	
u475:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u475
	line	30
	
l962:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u481
	goto	u480
u481:
	goto	l956
u480:
	goto	l964
	
l276:	
	goto	l964
	line	31
	
l270:	
	line	32
	
l964:	
	movf	(___awmod@sign),w
	skipz
	goto	u490
	goto	l968
u490:
	line	33
	
l966:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l968
	
l277:	
	line	34
	
l968:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l278
	
l970:	
	line	35
	
l278:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hd44780_printint
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___awdiv
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l890:	
	clrf	(___awdiv@sign)
	line	15
	
l892:	
	btfss	(___awdiv@divisor+1),7
	goto	u311
	goto	u310
u311:
	goto	l898
u310:
	line	16
	
l894:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l896:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l898
	line	18
	
l255:	
	line	19
	
l898:	
	btfss	(___awdiv@dividend+1),7
	goto	u321
	goto	u320
u321:
	goto	l904
u320:
	line	20
	
l900:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l902:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l904
	line	22
	
l256:	
	line	23
	
l904:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l906:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u331
	goto	u330
u331:
	goto	l926
u330:
	line	25
	
l908:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l914
	
l259:	
	line	27
	
l910:	
	movlw	01h
	
u345:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u345
	line	28
	
l912:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l914
	line	29
	
l258:	
	line	26
	
l914:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u351
	goto	u350
u351:
	goto	l910
u350:
	goto	l916
	
l260:	
	goto	l916
	line	30
	
l261:	
	line	31
	
l916:	
	movlw	01h
	
u365:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u365
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u375
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u375:
	skipc
	goto	u371
	goto	u370
u371:
	goto	l922
u370:
	line	33
	
l918:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l920:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l922
	line	35
	
l262:	
	line	36
	
l922:	
	movlw	01h
	
u385:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u385
	line	37
	
l924:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u391
	goto	u390
u391:
	goto	l916
u390:
	goto	l926
	
l263:	
	goto	l926
	line	38
	
l257:	
	line	39
	
l926:	
	movf	(___awdiv@sign),w
	skipz
	goto	u400
	goto	l930
u400:
	line	40
	
l928:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l930
	
l264:	
	line	41
	
l930:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l265
	
l932:	
	line	42
	
l265:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_hd44780_printchr

;; *************** function _hd44780_printchr *****************
;; Defined at:
;;		line 135 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
;; Parameters:    Size  Location     Type
;;  dta             1    wreg     unsigned char 
;;  loc             2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  dta             1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_hd44780_char
;;		_hd44780_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	135
global __ptext6
__ptext6:	;psect for function _hd44780_printchr
psect	text6
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	135
	global	__size_of_hd44780_printchr
	__size_of_hd44780_printchr	equ	__end_of_hd44780_printchr-_hd44780_printchr
	
_hd44780_printchr:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_printchr: [wreg+status,2+status,0+pclath+cstack]
;hd44780_printchr@dta stored from wreg
	movwf	(hd44780_printchr@dta)
	line	138
	
l1230:	
;main.c: 138: hd44780_write( 0x80 | loc );
	movf	(hd44780_printchr@loc),w
	iorlw	080h
	fcall	_hd44780_write
	line	140
;main.c: 140: hd44780_char( dta );
	movf	(hd44780_printchr@dta),w
	fcall	_hd44780_char
	line	141
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_printchr
	__end_of_hd44780_printchr:
	signat	_hd44780_printchr,8312
	global	_hd44780_char

;; *************** function _hd44780_char *****************
;; Defined at:
;;		line 91 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
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
;;		_hd44780_printint
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	91
global __ptext7
__ptext7:	;psect for function _hd44780_char
psect	text7
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	91
	global	__size_of_hd44780_char
	__size_of_hd44780_char	equ	__end_of_hd44780_char-_hd44780_char
	
_hd44780_char:	
;incstack = 0
	opt	stack 4
; Regs used in _hd44780_char: [wreg+status,2+status,0+pclath+cstack]
;hd44780_char@bt stored from wreg
	movwf	(hd44780_char@bt)
	line	94
	
l1206:	
;main.c: 94: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	95
;main.c: 95: rs_flag = 1;
	bsf	(_rs_flag/8),(_rs_flag)&7
	line	96
	
l1208:	
;main.c: 96: hd44780_write( bt );
	movf	(hd44780_char@bt),w
	fcall	_hd44780_write
	line	97
	
l1210:	
;main.c: 97: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	98
	
l1212:	
;main.c: 98: rs_flag = 0;
	bcf	(_rs_flag/8),(_rs_flag)&7
	line	99
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_char
	__end_of_hd44780_char:
	signat	_hd44780_char,4216
	global	_hd44780_init

;; *************** function _hd44780_init *****************
;; Defined at:
;;		line 31 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	31
global __ptext8
__ptext8:	;psect for function _hd44780_init
psect	text8
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	31
	global	__size_of_hd44780_init
	__size_of_hd44780_init	equ	__end_of_hd44780_init-_hd44780_init
	
_hd44780_init:	
;incstack = 0
	opt	stack 5
; Regs used in _hd44780_init: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l1170:	
;main.c: 34: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	35
;main.c: 35: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	37
	
l1172:	
;main.c: 37: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_hd44780_init+0)+0+1),f
	movlw	248
movwf	((??_hd44780_init+0)+0),f
u707:
	decfsz	((??_hd44780_init+0)+0),f
	goto	u707
	decfsz	((??_hd44780_init+0)+0+1),f
	goto	u707
	nop
opt asmopt_on

	line	38
	
l1174:	
;main.c: 38: PORTB = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	39
	
l1176:	
;main.c: 39: hd44780_pulse();
	fcall	_hd44780_pulse
	line	40
	
l1178:	
;main.c: 40: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_hd44780_init+0)+0+1),f
	movlw	125
movwf	((??_hd44780_init+0)+0),f
u717:
	decfsz	((??_hd44780_init+0)+0),f
	goto	u717
	decfsz	((??_hd44780_init+0)+0+1),f
	goto	u717
opt asmopt_on

	line	41
	
l1180:	
;main.c: 41: PORTB = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	42
	
l1182:	
;main.c: 42: hd44780_pulse();
	fcall	_hd44780_pulse
	line	43
	
l1184:	
;main.c: 43: _delay((unsigned long)((120)*(4000000/4000000.0)));
	opt asmopt_off
movlw	39
movwf	(??_hd44780_init+0)+0,f
u727:
decfsz	(??_hd44780_init+0)+0,f
	goto	u727
	nop2	;nop
opt asmopt_on

	line	44
	
l1186:	
;main.c: 44: PORTB = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	45
	
l1188:	
;main.c: 45: hd44780_pulse();
	fcall	_hd44780_pulse
	line	47
	
l1190:	
;main.c: 47: hd44780_busy();
	fcall	_hd44780_busy
	line	49
	
l1192:	
;main.c: 49: PORTB = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	50
	
l1194:	
;main.c: 50: hd44780_pulse();
	fcall	_hd44780_pulse
	line	52
	
l1196:	
;main.c: 52: hd44780_busy();
	fcall	_hd44780_busy
	line	55
	
l1198:	
;main.c: 55: hd44780_write( 0b00101000 );
	movlw	(028h)
	fcall	_hd44780_write
	line	57
	
l1200:	
;main.c: 57: hd44780_write( 0b00001100 );
	movlw	(0Ch)
	fcall	_hd44780_write
	line	58
	
l1202:	
;main.c: 58: hd44780_write( 0b00000001 );
	movlw	(01h)
	fcall	_hd44780_write
	line	59
	
l1204:	
;main.c: 59: hd44780_write( 0b00000110 );
	movlw	(06h)
	fcall	_hd44780_write
	line	60
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_init
	__end_of_hd44780_init:
	signat	_hd44780_init,88
	global	_hd44780_clear

;; *************** function _hd44780_clear *****************
;; Defined at:
;;		line 179 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1
	line	179
global __ptext9
__ptext9:	;psect for function _hd44780_clear
psect	text9
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	179
	global	__size_of_hd44780_clear
	__size_of_hd44780_clear	equ	__end_of_hd44780_clear-_hd44780_clear
	
_hd44780_clear:	
;incstack = 0
	opt	stack 5
; Regs used in _hd44780_clear: [wreg+status,2+status,0+pclath+cstack]
	line	182
	
l1216:	
;main.c: 182: hd44780_write( 0b00000001 );
	movlw	(01h)
	fcall	_hd44780_write
	line	183
	
l65:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_clear
	__end_of_hd44780_clear:
	signat	_hd44780_clear,88
	global	_hd44780_write

;; *************** function _hd44780_write *****************
;; Defined at:
;;		line 62 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
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
;;		_hd44780_printint
;;		_hd44780_clear
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	62
global __ptext10
__ptext10:	;psect for function _hd44780_write
psect	text10
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	62
	global	__size_of_hd44780_write
	__size_of_hd44780_write	equ	__end_of_hd44780_write-_hd44780_write
	
_hd44780_write:	
;incstack = 0
	opt	stack 5
; Regs used in _hd44780_write: [wreg+status,2+status,0+pclath+cstack]
;hd44780_write@bt stored from wreg
	movwf	(hd44780_write@bt)
	line	66
	
l1146:	
;main.c: 64: unsigned char tmp;
;main.c: 66: tmp = bt & 0xF0;
	movf	(hd44780_write@bt),w
	andlw	0F0h
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	line	67
	
l1148:	
;main.c: 67: tmp = tmp >> 4;
	movf	(hd44780_write@tmp),w
	movwf	(??_hd44780_write+0)+0
	movlw	04h
u605:
	clrc
	rrf	(??_hd44780_write+0)+0,f
	addlw	-1
	skipz
	goto	u605
	movf	0+(??_hd44780_write+0)+0,w
	movwf	(??_hd44780_write+1)+0
	movf	(??_hd44780_write+1)+0,w
	movwf	(hd44780_write@tmp)
	line	69
	
l1150:	
;main.c: 69: if(rs_flag == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_rs_flag/8),(_rs_flag)&7
	goto	u611
	goto	u610
u611:
	goto	l1154
u610:
	line	70
	
l1152:	
;main.c: 70: tmp = tmp | 0x20;
	movf	(hd44780_write@tmp),w
	iorlw	020h
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	goto	l1154
	line	71
	
l31:	
	line	72
	
l1154:	
;main.c: 71: }
;main.c: 72: PORTB = tmp;
	movf	(hd44780_write@tmp),w
	movwf	(6)	;volatile
	line	74
	
l1156:	
;main.c: 74: hd44780_pulse();
	fcall	_hd44780_pulse
	line	76
	
l1158:	
;main.c: 76: tmp = bt & 0x0F;
	movf	(hd44780_write@bt),w
	andlw	0Fh
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	line	78
	
l1160:	
;main.c: 78: if(rs_flag == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_rs_flag/8),(_rs_flag)&7
	goto	u621
	goto	u620
u621:
	goto	l1164
u620:
	line	79
	
l1162:	
;main.c: 79: tmp = tmp | 0x20;
	movf	(hd44780_write@tmp),w
	iorlw	020h
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	goto	l1164
	line	80
	
l32:	
	line	82
	
l1164:	
;main.c: 80: }
;main.c: 82: PORTB = tmp;
	movf	(hd44780_write@tmp),w
	movwf	(6)	;volatile
	line	84
	
l1166:	
;main.c: 84: hd44780_pulse();
	fcall	_hd44780_pulse
	line	88
	
l1168:	
;main.c: 88: hd44780_busy();
	fcall	_hd44780_busy
	line	89
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_write
	__end_of_hd44780_write:
	signat	_hd44780_write,4216
	global	_hd44780_pulse

;; *************** function _hd44780_pulse *****************
;; Defined at:
;;		line 24 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1
	line	24
global __ptext11
__ptext11:	;psect for function _hd44780_pulse
psect	text11
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	24
	global	__size_of_hd44780_pulse
	__size_of_hd44780_pulse	equ	__end_of_hd44780_pulse-_hd44780_pulse
	
_hd44780_pulse:	
;incstack = 0
	opt	stack 5
; Regs used in _hd44780_pulse: []
	line	26
	
l1144:	
;main.c: 26: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	27
;main.c: 27: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	28
;main.c: 28: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	line	29
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_pulse
	__end_of_hd44780_pulse:
	signat	_hd44780_pulse,88
	global	_hd44780_busy

;; *************** function _hd44780_busy *****************
;; Defined at:
;;		line 101 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1
	line	101
global __ptext12
__ptext12:	;psect for function _hd44780_busy
psect	text12
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\LCD00\main.c"
	line	101
	global	__size_of_hd44780_busy
	__size_of_hd44780_busy	equ	__end_of_hd44780_busy-_hd44780_busy
	
_hd44780_busy:	
;incstack = 0
	opt	stack 5
; Regs used in _hd44780_busy: [wreg+status,2]
	line	103
	
l1134:	
;main.c: 103: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	line	104
;main.c: 104: rs_flag = 0;
	bcf	(_rs_flag/8),(_rs_flag)&7
	line	105
	
l1136:	
;main.c: 105: TRISB = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	106
	
l1138:	
;main.c: 106: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	107
	
l1140:	
;main.c: 107: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	109
;main.c: 109: while( RB3 == 1 );
	goto	l39
	
l40:	
	
l39:	
	btfsc	(51/8),(51)&7	;volatile
	goto	u591
	goto	u590
u591:
	goto	l39
u590:
	
l41:	
	line	111
;main.c: 111: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	112
;main.c: 112: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	114
	
l1142:	
;main.c: 114: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	115
	
l42:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_busy
	__end_of_hd44780_busy:
	signat	_hd44780_busy,88
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
