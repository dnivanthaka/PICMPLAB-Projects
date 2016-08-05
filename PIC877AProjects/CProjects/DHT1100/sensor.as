opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 55553"

opt pagewidth 120

	opt lm

	processor	16F877A
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
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
INDF equ 00h ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PCL equ 02h ;# 
# 64 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
FSR equ 04h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PORTA equ 05h ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PORTB equ 06h ;# 
# 267 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PORTC equ 07h ;# 
# 328 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PORTD equ 08h ;# 
# 389 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PORTE equ 09h ;# 
# 420 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 439 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 516 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 577 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 616 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 622 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 628 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 634 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
T1CON equ 010h ;# 
# 708 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 714 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
T2CON equ 012h ;# 
# 784 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 790 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 859 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 865 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 871 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 877 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 934 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1028 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1034 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1040 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1046 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1052 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1058 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1115 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1121 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1285 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1334 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1395 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1456 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1517 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1573 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1634 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1673 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1706 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1767 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1773 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1779 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1947 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2027 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2033 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2102 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2166 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2172 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2230 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2236 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2242 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2248 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2254 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_TX_newline
	FNCALL	_main,_TX_print
	FNCALL	_main,_TX_printline
	FNCALL	_main,_dht11_read_byte
	FNCALL	_main,_dht11_response
	FNCALL	_main,_dht11_start_signal
	FNCALL	_main,_init
	FNCALL	_main,_itoa
	FNCALL	_itoa,_utoa
	FNCALL	_utoa,___lwdiv
	FNCALL	_utoa,___lwmod
	FNCALL	_TX_printline,_TX_poll
	FNCALL	_TX_printline,_TX_print
	FNCALL	_TX_print,_TX_poll
	FNCALL	_TX_newline,_TX_poll
	FNROOT	_main
	FNCALL	_tc_int,i1_TX_poll
	FNCALL	intlevel1,_tc_int
	global	intlevel1
	FNROOT	intlevel1
	global	_data_read
	global	_tmp
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTA
_PORTA	set	0x5
	global	_RCREG
_RCREG	set	0x1A
	global	_TMR0
_TMR0	set	0x1
	global	_TXREG
_TXREG	set	0x19
	global	_RA0
_RA0	set	0x28
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_TRISA
_TRISA	set	0x85
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
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
	file	"sensor.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_data_read:
       ds      1

_tmp:
       ds      1

	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init:	; 0 bytes @ 0x0
?_TX_poll:	; 0 bytes @ 0x0
?_TX_printline:	; 0 bytes @ 0x0
?_TX_newline:	; 0 bytes @ 0x0
?_tc_int:	; 0 bytes @ 0x0
?_dht11_start_signal:	; 0 bytes @ 0x0
?i1_TX_poll:	; 0 bytes @ 0x0
??i1_TX_poll:	; 0 bytes @ 0x0
?_dht11_response:	; 1 bytes @ 0x0
?_dht11_read_byte:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	i1TX_poll@val
i1TX_poll@val:	; 1 bytes @ 0x0
	ds	1
??_tc_int:	; 0 bytes @ 0x1
	ds	4
??_init:	; 0 bytes @ 0x5
??_TX_poll:	; 0 bytes @ 0x5
??_dht11_start_signal:	; 0 bytes @ 0x5
??_dht11_response:	; 0 bytes @ 0x5
??_dht11_read_byte:	; 0 bytes @ 0x5
??___lwdiv:	; 0 bytes @ 0x5
??___lwmod:	; 0 bytes @ 0x5
	global	TX_poll@val
TX_poll@val:	; 1 bytes @ 0x5
	ds	1
?_TX_print:	; 0 bytes @ 0x6
??_TX_newline:	; 0 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	global	TX_print@str
TX_print@str:	; 2 bytes @ 0x6
	ds	1
??_utoa:	; 0 bytes @ 0x7
	ds	1
??_TX_print:	; 0 bytes @ 0x8
??_TX_printline:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	TX_printline@str
TX_printline@str:	; 1 bytes @ 0x0
	global	dht11_read_byte@data
dht11_read_byte@data:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	dht11_read_byte@i
dht11_read_byte@i:	; 2 bytes @ 0x1
	ds	1
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
?_utoa:	; 1 bytes @ 0x7
	global	utoa@val
utoa@val:	; 2 bytes @ 0x7
	ds	2
	global	utoa@base
utoa@base:	; 2 bytes @ 0x9
	ds	2
	global	utoa@v
utoa@v:	; 2 bytes @ 0xB
	ds	2
	global	utoa@c
utoa@c:	; 1 bytes @ 0xD
	ds	1
	global	utoa@buf
utoa@buf:	; 1 bytes @ 0xE
	ds	1
?_itoa:	; 1 bytes @ 0xF
	global	itoa@val
itoa@val:	; 2 bytes @ 0xF
	ds	2
	global	itoa@base
itoa@base:	; 2 bytes @ 0x11
	ds	2
??_itoa:	; 0 bytes @ 0x13
	ds	1
	global	itoa@cp
itoa@cp:	; 1 bytes @ 0x14
	ds	1
	global	itoa@buf
itoa@buf:	; 1 bytes @ 0x15
	ds	1
??_main:	; 0 bytes @ 0x16
	ds	3
	global	main@rh_d_byte
main@rh_d_byte:	; 1 bytes @ 0x19
	ds	1
	global	main@tp_d_byte
main@tp_d_byte:	; 1 bytes @ 0x1A
	ds	1
	global	main@checksum
main@checksum:	; 1 bytes @ 0x1B
	ds	1
	global	main@buff
main@buff:	; 4 bytes @ 0x1C
	ds	4
	global	main@rh_str
main@rh_str:	; 1 bytes @ 0x20
	ds	1
	global	main@tp_str
main@tp_str:	; 1 bytes @ 0x21
	ds	1
	global	main@rh_i_byte
main@rh_i_byte:	; 1 bytes @ 0x22
	ds	1
	global	main@tp_i_byte
main@tp_i_byte:	; 1 bytes @ 0x23
	ds	1
;!
;!Data Sizes:
;!    Strings     36
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8       9
;!    BANK0            80     36      36
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    utoa@buf	PTR unsigned char  size(1) Largest target is 4
;!		 -> main@buff(BANK0[4]), 
;!
;!    sp__utoa	PTR unsigned char  size(1) Largest target is 4
;!		 -> main@buff(BANK0[4]), 
;!
;!    itoa@buf	PTR unsigned char  size(1) Largest target is 4
;!		 -> main@buff(BANK0[4]), 
;!
;!    itoa@cp	PTR unsigned char  size(1) Largest target is 4
;!		 -> main@buff(BANK0[4]), 
;!
;!    sp__itoa	PTR unsigned char  size(1) Largest target is 4
;!		 -> main@buff(BANK0[4]), 
;!
;!    main@tp_str	PTR unsigned char  size(1) Largest target is 15
;!		 -> STR_2(CODE[15]), 
;!
;!    main@rh_str	PTR unsigned char  size(1) Largest target is 21
;!		 -> STR_1(CODE[21]), 
;!
;!    TX_printline@str	PTR unsigned char  size(1) Largest target is 4
;!		 -> main@buff(BANK0[4]), 
;!
;!    TX_print@str	PTR unsigned char  size(2) Largest target is 21
;!		 -> main@buff(BANK0[4]), STR_2(CODE[15]), STR_1(CODE[21]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_TX_print
;!    _itoa->_utoa
;!    _utoa->___lwmod
;!    _TX_printline->_TX_print
;!    _TX_print->_TX_poll
;!    _TX_newline->_TX_poll
;!
;!Critical Paths under _tc_int in COMMON
;!
;!    _tc_int->i1_TX_poll
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_itoa
;!    _itoa->_utoa
;!    _utoa->___lwdiv
;!
;!Critical Paths under _tc_int in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _tc_int in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _tc_int in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _tc_int in BANK2
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
;! (0) _main                                                15    15      0    3159
;!                                             22 BANK0     14    14      0
;!                         _TX_newline
;!                           _TX_print
;!                       _TX_printline
;!                    _dht11_read_byte
;!                     _dht11_response
;!                 _dht11_start_signal
;!                               _init
;!                               _itoa
;! ---------------------------------------------------------------------------------
;! (1) _itoa                                                 7     3      4    2016
;!                                             15 BANK0      7     3      4
;!                               _utoa
;! ---------------------------------------------------------------------------------
;! (2) _utoa                                                 9     5      4    1463
;!                                              7 COMMON     1     1      0
;!                                              7 BANK0      8     4      4
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     362
;!                                              5 COMMON     2     2      0
;!                                              0 BANK0      4     0      4
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     501
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _dht11_start_signal                                   2     2      0       0
;!                                              5 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _dht11_response                                       1     1      0       0
;!                                              5 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _dht11_read_byte                                      5     5      0     115
;!                                              5 COMMON     2     2      0
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _TX_printline                                         1     1      0     413
;!                                              0 BANK0      1     1      0
;!                            _TX_poll
;!                           _TX_print
;! ---------------------------------------------------------------------------------
;! (2) _TX_print                                             2     0      2     291
;!                                              6 COMMON     2     0      2
;!                            _TX_poll
;! ---------------------------------------------------------------------------------
;! (1) _TX_newline                                           0     0      0      31
;!                            _TX_poll
;! ---------------------------------------------------------------------------------
;! (3) _TX_poll                                              1     1      0      31
;!                                              5 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _tc_int                                               4     4      0      73
;!                                              1 COMMON     4     4      0
;!                          i1_TX_poll
;! ---------------------------------------------------------------------------------
;! (5) i1_TX_poll                                            1     1      0      73
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _TX_newline
;!     _TX_poll
;!   _TX_print
;!     _TX_poll
;!   _TX_printline
;!     _TX_poll
;!     _TX_print
;!       _TX_poll
;!   _dht11_read_byte
;!   _dht11_response
;!   _dht11_start_signal
;!   _init
;!   _itoa
;!     _utoa
;!       ___lwdiv
;!       ___lwmod
;!
;! _tc_int (ROOT)
;!   i1_TX_poll
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      2D       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     24      24       5       45.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      2D      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 218 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buff            4   28[BANK0 ] unsigned char [4]
;;  tp_i_byte       1   35[BANK0 ] unsigned char 
;;  rh_i_byte       1   34[BANK0 ] unsigned char 
;;  tp_str          1   33[BANK0 ] PTR unsigned char 
;;		 -> STR_2(15), 
;;  rh_str          1   32[BANK0 ] PTR unsigned char 
;;		 -> STR_1(21), 
;;  checksum        1   27[BANK0 ] unsigned char 
;;  tp_d_byte       1   26[BANK0 ] unsigned char 
;;  rh_d_byte       1   25[BANK0 ] unsigned char 
;;  ch              1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   94[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_TX_newline
;;		_TX_print
;;		_TX_printline
;;		_dht11_read_byte
;;		_dht11_response
;;		_dht11_start_signal
;;		_init
;;		_itoa
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	218
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	218
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [allreg]
	line	220
	
l1085:	
;main.c: 220: char *rh_str = "Relative Humidity : ";
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@rh_str)
	line	221
;main.c: 221: char *tp_str = "Temperature : ";
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@tp_str)
	line	227
	
l1087:	
;main.c: 223: char buff[4];
;main.c: 224: char ch;
;main.c: 225: uint8_t rh_i_byte, rh_d_byte, tp_i_byte, tp_d_byte, checksum;
;main.c: 227: init();
	fcall	_init
	goto	l1089
	line	234
;main.c: 234: while( 1 ){
	
l95:	
	line	247
	
l1089:	
;main.c: 247: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u877:
	decfsz	((??_main+0)+0),f
	goto	u877
	decfsz	((??_main+0)+0+1),f
	goto	u877
	decfsz	((??_main+0)+0+2),f
	goto	u877
	nop
opt asmopt_on

	line	249
;main.c: 249: dht11_start_signal();
	fcall	_dht11_start_signal
	line	250
;main.c: 250: dht11_response();
	fcall	_dht11_response
	line	252
;main.c: 252: rh_i_byte = dht11_read_byte();
	fcall	_dht11_read_byte
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@rh_i_byte)
	line	253
;main.c: 253: rh_d_byte = dht11_read_byte();
	fcall	_dht11_read_byte
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@rh_d_byte)
	line	254
;main.c: 254: tp_i_byte = dht11_read_byte();
	fcall	_dht11_read_byte
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@tp_i_byte)
	line	255
;main.c: 255: tp_d_byte = dht11_read_byte();
	fcall	_dht11_read_byte
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@tp_d_byte)
	line	256
;main.c: 256: checksum = dht11_read_byte();
	fcall	_dht11_read_byte
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@checksum)
	line	260
;main.c: 260: TX_newline();
	fcall	_TX_newline
	line	261
	
l1091:	
;main.c: 261: TX_print(rh_str);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@rh_str),w
	movwf	(TX_print@str)
	movlw	80h
	movwf	(TX_print@str+1)
	fcall	_TX_print
	line	262
	
l1093:	
;main.c: 262: itoa(buff, rh_i_byte, 10);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@rh_i_byte),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(itoa@val)
	movf	1+(??_main+0)+0,w
	movwf	(itoa@val+1)
	movlw	low(0Ah)
	movwf	(itoa@base)
	movlw	high(0Ah)
	movwf	((itoa@base))+1
	movlw	(main@buff)&0ffh
	fcall	_itoa
	line	263
	
l1095:	
;main.c: 263: TX_printline(&buff);
	movlw	(main@buff)&0ffh
	fcall	_TX_printline
	line	266
	
l1097:	
;main.c: 266: TX_print(tp_str);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@tp_str),w
	movwf	(TX_print@str)
	movlw	80h
	movwf	(TX_print@str+1)
	fcall	_TX_print
	line	267
	
l1099:	
;main.c: 267: itoa(buff, tp_i_byte, 10);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@tp_i_byte),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(itoa@val)
	movf	1+(??_main+0)+0,w
	movwf	(itoa@val+1)
	movlw	low(0Ah)
	movwf	(itoa@base)
	movlw	high(0Ah)
	movwf	((itoa@base))+1
	movlw	(main@buff)&0ffh
	fcall	_itoa
	line	268
	
l1101:	
;main.c: 268: TX_printline(&buff);
	movlw	(main@buff)&0ffh
	fcall	_TX_printline
	line	281
	
l1103:	
;main.c: 281: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u887:
	decfsz	((??_main+0)+0),f
	goto	u887
	decfsz	((??_main+0)+0+1),f
	goto	u887
	decfsz	((??_main+0)+0+2),f
	goto	u887
	nop
opt asmopt_on

	goto	l1089
	line	282
	
l96:	
	line	234
	goto	l1089
	
l97:	
	line	285
;main.c: 282: }
;main.c: 284: return 0;
;	Return value of _main is never used
	
l98:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_itoa

;; *************** function _itoa *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\itoa.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR unsigned char 
;;		 -> main@buff(4), 
;;  val             2   15[BANK0 ] int 
;;  base            2   17[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  buf             1   21[BANK0 ] PTR unsigned char 
;;		 -> main@buff(4), 
;;  cp              1   20[BANK0 ] PTR unsigned char 
;;		 -> main@buff(4), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_utoa
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\itoa.c"
	line	4
global __ptext1
__ptext1:	;psect for function _itoa
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\itoa.c"
	line	4
	global	__size_of_itoa
	__size_of_itoa	equ	__end_of_itoa-_itoa
	
_itoa:	
;incstack = 0
	opt	stack 3
; Regs used in _itoa: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;itoa@buf stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(itoa@buf)
	line	6
	
l1105:	
	movf	(itoa@buf),w
	movwf	(??_itoa+0)+0
	movf	(??_itoa+0)+0,w
	movwf	(itoa@cp)
	line	8
	
l1107:	
	btfss	(itoa@val+1),7
	goto	u701
	goto	u700
u701:
	goto	l1115
u700:
	line	9
	
l1109:	
	movlw	(02Dh)
	movwf	(??_itoa+0)+0
	movf	(itoa@buf),w
	movwf	fsr0
	movf	(??_itoa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1111:	
	movlw	(01h)
	movwf	(??_itoa+0)+0
	movf	(??_itoa+0)+0,w
	addwf	(itoa@buf),f
	line	10
	
l1113:	
	comf	(itoa@val),f
	comf	(itoa@val+1),f
	incf	(itoa@val),f
	skipnz
	incf	(itoa@val+1),f
	goto	l1115
	line	11
	
l421:	
	line	12
	
l1115:	
	movf	(itoa@val+1),w
	clrf	(utoa@val+1)
	addwf	(utoa@val+1)
	movf	(itoa@val),w
	clrf	(utoa@val)
	addwf	(utoa@val)

	movf	(itoa@base+1),w
	clrf	(utoa@base+1)
	addwf	(utoa@base+1)
	movf	(itoa@base),w
	clrf	(utoa@base)
	addwf	(utoa@base)

	movf	(itoa@buf),w
	fcall	_utoa
	goto	l422
	line	13
	
l1117:	
	line	14
;	Return value of _itoa is never used
	
l422:	
	return
	opt stack 0
GLOBAL	__end_of_itoa
	__end_of_itoa:
	signat	_itoa,12409
	global	_utoa

;; *************** function _utoa *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\itoa.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR unsigned char 
;;		 -> main@buff(4), 
;;  val             2    7[BANK0 ] unsigned int 
;;  base            2    9[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  buf             1   14[BANK0 ] PTR unsigned char 
;;		 -> main@buff(4), 
;;  v               2   11[BANK0 ] unsigned int 
;;  c               1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       8       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_itoa
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	17
global __ptext2
__ptext2:	;psect for function _utoa
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\itoa.c"
	line	17
	global	__size_of_utoa
	__size_of_utoa	equ	__end_of_utoa-_utoa
	
_utoa:	
;incstack = 0
	opt	stack 3
; Regs used in _utoa: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;utoa@buf stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(utoa@buf)
	line	22
	
l1119:	
	movf	(utoa@val+1),w
	clrf	(utoa@v+1)
	addwf	(utoa@v+1)
	movf	(utoa@val),w
	clrf	(utoa@v)
	addwf	(utoa@v)

	goto	l1121
	line	23
	
l425:	
	line	24
	
l1121:	
	movf	(utoa@base+1),w
	clrf	(___lwdiv@divisor+1)
	addwf	(___lwdiv@divisor+1)
	movf	(utoa@base),w
	clrf	(___lwdiv@divisor)
	addwf	(___lwdiv@divisor)

	movf	(utoa@v+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(utoa@v),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(utoa@v+1)
	addwf	(utoa@v+1)
	movf	(0+(?___lwdiv)),w
	clrf	(utoa@v)
	addwf	(utoa@v)

	line	25
	
l1123:	
	movlw	(01h)
	movwf	(??_utoa+0)+0
	movf	(??_utoa+0)+0,w
	addwf	(utoa@buf),f
	line	26
	
l1125:	
	movf	((utoa@v+1)),w
	iorwf	((utoa@v)),w
	skipz
	goto	u711
	goto	u710
u711:
	goto	l1121
u710:
	goto	l1127
	
l426:	
	line	27
	
l1127:	
	movf	(utoa@buf),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	
l1129:	
	movlw	low(01h)
	subwf	(utoa@buf),f
	goto	l1131
	line	28
	
l427:	
	line	29
	
l1131:	
	movf	(utoa@base+1),w
	clrf	(___lwmod@divisor+1)
	addwf	(___lwmod@divisor+1)
	movf	(utoa@base),w
	clrf	(___lwmod@divisor)
	addwf	(___lwmod@divisor)

	movf	(utoa@val+1),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(utoa@val),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	movwf	(??_utoa+0)+0
	movf	(??_utoa+0)+0,w
	movwf	(utoa@c)
	line	30
	
l1133:	
	movf	(utoa@base+1),w
	clrf	(___lwdiv@divisor+1)
	addwf	(___lwdiv@divisor+1)
	movf	(utoa@base),w
	clrf	(___lwdiv@divisor)
	addwf	(___lwdiv@divisor)

	movf	(utoa@val+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(utoa@val),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(utoa@val+1)
	addwf	(utoa@val+1)
	movf	(0+(?___lwdiv)),w
	clrf	(utoa@val)
	addwf	(utoa@val)

	line	31
	
l1135:	
	movlw	(0Ah)
	subwf	(utoa@c),w
	skipc
	goto	u721
	goto	u720
u721:
	goto	l428
u720:
	line	32
	
l1137:	
	movlw	(07h)
	movwf	(??_utoa+0)+0
	movf	(??_utoa+0)+0,w
	addwf	(utoa@c),f
	
l428:	
	line	33
	movlw	(030h)
	movwf	(??_utoa+0)+0
	movf	(??_utoa+0)+0,w
	addwf	(utoa@c),f
	line	34
	
l1139:	
	movf	(utoa@c),w
	movwf	(??_utoa+0)+0
	movf	(utoa@buf),w
	movwf	fsr0
	movf	(??_utoa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1141:	
	movlw	low(01h)
	subwf	(utoa@buf),f
	line	35
	
l1143:	
	movf	((utoa@val+1)),w
	iorwf	((utoa@val)),w
	skipz
	goto	u731
	goto	u730
u731:
	goto	l1131
u730:
	goto	l1145
	
l429:	
	line	36
	
l1145:	
;	Return value of _utoa is never used
	movlw	(01h)
	movwf	(??_utoa+0)+0
	movf	(??_utoa+0)+0,w
	addwf	(utoa@buf),f
	goto	l430
	
l1147:	
	line	37
	
l430:	
	return
	opt stack 0
GLOBAL	__end_of_utoa
	__end_of_utoa:
	signat	_utoa,12409
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_utoa
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwmod.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lwmod
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1175:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u811
	goto	u810
u811:
	goto	l1193
u810:
	line	14
	
l1177:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1183
	
l525:	
	line	16
	
l1179:	
	movlw	01h
	
u825:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u825
	line	17
	
l1181:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1183
	line	18
	
l524:	
	line	15
	
l1183:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u831
	goto	u830
u831:
	goto	l1179
u830:
	goto	l1185
	
l526:	
	goto	l1185
	line	19
	
l527:	
	line	20
	
l1185:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u845
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u845:
	skipc
	goto	u841
	goto	u840
u841:
	goto	l1189
u840:
	line	21
	
l1187:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1189
	
l528:	
	line	22
	
l1189:	
	movlw	01h
	
u855:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u855
	line	23
	
l1191:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l1185
u860:
	goto	l1193
	
l529:	
	goto	l1193
	line	24
	
l523:	
	line	25
	
l1193:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l530
	
l1195:	
	line	26
	
l530:	
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
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       7       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_utoa
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___lwdiv
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1149:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1151:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u741
	goto	u740
u741:
	goto	l1171
u740:
	line	16
	
l1153:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1159
	
l515:	
	line	18
	
l1155:	
	movlw	01h
	
u755:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u755
	line	19
	
l1157:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1159
	line	20
	
l514:	
	line	17
	
l1159:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u761
	goto	u760
u761:
	goto	l1155
u760:
	goto	l1161
	
l516:	
	goto	l1161
	line	21
	
l517:	
	line	22
	
l1161:	
	movlw	01h
	
u775:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u775
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u785
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u785:
	skipc
	goto	u781
	goto	u780
u781:
	goto	l1167
u780:
	line	24
	
l1163:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1165:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1167
	line	26
	
l518:	
	line	27
	
l1167:	
	movlw	01h
	
u795:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u795
	line	28
	
l1169:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u801
	goto	u800
u801:
	goto	l1161
u800:
	goto	l1171
	
l519:	
	goto	l1171
	line	29
	
l513:	
	line	30
	
l1171:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l520
	
l1173:	
	line	31
	
l520:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 14 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	14
global __ptext5
__ptext5:	;psect for function _init
psect	text5
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	14
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 5
; Regs used in _init: [wreg+status,2]
	line	20
	
l843:	
;main.c: 20: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	22
;main.c: 22: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	23
	
l845:	
;main.c: 23: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	26
	
l847:	
;main.c: 26: OPTION_REGbits.T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h,5	;volatile
	line	27
	
l849:	
;main.c: 27: OPTION_REGbits.T0SE = 0;
	bcf	(129)^080h,4	;volatile
	line	28
	
l851:	
;main.c: 28: OPTION_REGbits.PSA = 0;
	bcf	(129)^080h,3	;volatile
	line	31
	
l853:	
;main.c: 31: OPTION_REGbits.PS0 = 0;
	bcf	(129)^080h,0	;volatile
	line	32
	
l855:	
;main.c: 32: OPTION_REGbits.PS1 = 0;
	bcf	(129)^080h,1	;volatile
	line	33
	
l857:	
;main.c: 33: OPTION_REGbits.PS2 = 1;
	bsf	(129)^080h,2	;volatile
	line	38
# 38 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
banksel TXREG ;# 
	line	39
# 39 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
clrf TXREG ;# 
	line	40
# 40 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
banksel RCREG ;# 
	line	41
# 41 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
clrf RCREG ;# 
	line	44
# 44 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
banksel SPBRG ;# 
	line	45
# 45 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
movlw 0x40 ;# 
	line	46
# 46 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
movwf SPBRG ;# 
	line	49
# 49 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
banksel TXSTA ;# 
	line	50
# 50 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
movlw 0x24 ;# 
	line	51
# 51 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
movwf TXSTA ;# 
	line	54
# 54 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
banksel RCSTA ;# 
	line	55
# 55 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
movlw 0x90 ;# 
	line	56
# 56 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
movwf RCSTA ;# 
psect	text5
	line	58
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_dht11_start_signal

;; *************** function _dht11_start_signal *****************
;; Defined at:
;;		line 130 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	130
global __ptext6
__ptext6:	;psect for function _dht11_start_signal
psect	text6
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	130
	global	__size_of_dht11_start_signal
	__size_of_dht11_start_signal	equ	__end_of_dht11_start_signal-_dht11_start_signal
	
_dht11_start_signal:	
;incstack = 0
	opt	stack 5
; Regs used in _dht11_start_signal: [wreg+status,2]
	line	132
	
l885:	
;main.c: 132: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	133
;main.c: 133: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	135
	
l887:	
;main.c: 135: _delay((unsigned long)((25)*(20000000/4000.0)));
	opt asmopt_off
movlw	163
movwf	((??_dht11_start_signal+0)+0+1),f
	movlw	85
movwf	((??_dht11_start_signal+0)+0),f
u897:
	decfsz	((??_dht11_start_signal+0)+0),f
	goto	u897
	decfsz	((??_dht11_start_signal+0)+0+1),f
	goto	u897
opt asmopt_on

	line	137
	
l889:	
;main.c: 137: PORTA = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	139
	
l891:	
;main.c: 139: _delay((unsigned long)((30)*(20000000/4000000.0)));
	opt asmopt_off
movlw	49
movwf	(??_dht11_start_signal+0)+0,f
u907:
decfsz	(??_dht11_start_signal+0)+0,f
	goto	u907
	nop2	;nop
opt asmopt_on

	line	141
	
l893:	
;main.c: 141: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	143
	
l70:	
	return
	opt stack 0
GLOBAL	__end_of_dht11_start_signal
	__end_of_dht11_start_signal:
	signat	_dht11_start_signal,88
	global	_dht11_response

;; *************** function _dht11_response *****************
;; Defined at:
;;		line 145 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	145
global __ptext7
__ptext7:	;psect for function _dht11_response
psect	text7
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	145
	global	__size_of_dht11_response
	__size_of_dht11_response	equ	__end_of_dht11_response-_dht11_response
	
_dht11_response:	
;incstack = 0
	opt	stack 5
; Regs used in _dht11_response: [wreg]
	line	156
	
l895:	
;main.c: 156: while( RA0 );
	goto	l73
	
l74:	
	
l73:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7	;volatile
	goto	u381
	goto	u380
u381:
	goto	l73
u380:
	goto	l76
	
l75:	
	line	157
;main.c: 157: while( !RA0 );
	goto	l76
	
l77:	
	
l76:	
	btfss	(40/8),(40)&7	;volatile
	goto	u391
	goto	u390
u391:
	goto	l76
u390:
	goto	l897
	
l78:	
	line	159
	
l897:	
;main.c: 159: _delay((unsigned long)((80)*(20000000/4000000.0)));
	opt asmopt_off
movlw	133
movwf	(??_dht11_response+0)+0,f
u917:
decfsz	(??_dht11_response+0)+0,f
	goto	u917
opt asmopt_on

	goto	l79
	line	161
	
l899:	
	line	162
;main.c: 161: return 1;
;	Return value of _dht11_response is never used
	
l79:	
	return
	opt stack 0
GLOBAL	__end_of_dht11_response
	__end_of_dht11_response:
	signat	_dht11_response,89
	global	_dht11_read_byte

;; *************** function _dht11_read_byte *****************
;; Defined at:
;;		line 200 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    1[BANK0 ] int 
;;  data            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	200
global __ptext8
__ptext8:	;psect for function _dht11_read_byte
psect	text8
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	200
	global	__size_of_dht11_read_byte
	__size_of_dht11_read_byte	equ	__end_of_dht11_read_byte-_dht11_read_byte
	
_dht11_read_byte:	
;incstack = 0
	opt	stack 5
; Regs used in _dht11_read_byte: [wreg+status,2+status,0]
	line	202
	
l901:	
;main.c: 202: uint8_t data = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(dht11_read_byte@data)
	line	204
	
l903:	
;main.c: 204: for(int i=7;i>=0;i--){
	movlw	low(07h)
	movwf	(dht11_read_byte@i)
	movlw	high(07h)
	movwf	((dht11_read_byte@i))+1
	
l905:	
	btfss	(dht11_read_byte@i+1),7
	goto	u401
	goto	u400
u401:
	goto	l84
u400:
	goto	l921
	
l907:	
	goto	l921
	
l82:	
	line	205
;main.c: 205: while( RA0 );
	goto	l84
	
l85:	
	
l84:	
	btfsc	(40/8),(40)&7	;volatile
	goto	u411
	goto	u410
u411:
	goto	l84
u410:
	goto	l87
	
l86:	
	line	206
;main.c: 206: while( !RA0 );
	goto	l87
	
l88:	
	
l87:	
	btfss	(40/8),(40)&7	;volatile
	goto	u421
	goto	u420
u421:
	goto	l87
u420:
	goto	l909
	
l89:	
	line	207
	
l909:	
;main.c: 207: _delay((unsigned long)((30)*(20000000/4000000.0)));
	opt asmopt_off
movlw	49
movwf	(??_dht11_read_byte+0)+0,f
u927:
decfsz	(??_dht11_read_byte+0)+0,f
	goto	u927
	nop2	;nop
opt asmopt_on

	line	208
	
l911:	
;main.c: 208: if( RA0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7	;volatile
	goto	u431
	goto	u430
u431:
	goto	l915
u430:
	line	209
	
l913:	
;main.c: 209: data |= 1 << i;
	movlw	(01h)
	movwf	(??_dht11_read_byte+0)+0
	incf	(dht11_read_byte@i),w
	goto	u444
u445:
	clrc
	rlf	(??_dht11_read_byte+0)+0,f
u444:
	addlw	-1
	skipz
	goto	u445
	movf	0+(??_dht11_read_byte+0)+0,w
	movwf	(??_dht11_read_byte+1)+0
	movf	(??_dht11_read_byte+1)+0,w
	iorwf	(dht11_read_byte@data),f
	line	210
;main.c: 210: }else{
	goto	l917
	
l90:	
	line	211
	
l915:	
;main.c: 211: data |= 0 << i;
	movlw	(0)
	movwf	(??_dht11_read_byte+0)+0
	incf	(dht11_read_byte@i),w
	goto	u454
u455:
	clrc
	rlf	(??_dht11_read_byte+0)+0,f
u454:
	addlw	-1
	skipz
	goto	u455
	movf	0+(??_dht11_read_byte+0)+0,w
	movwf	(??_dht11_read_byte+1)+0
	movf	(??_dht11_read_byte+1)+0,w
	iorwf	(dht11_read_byte@data),f
	goto	l917
	line	212
	
l91:	
	line	204
	
l917:	
	movlw	low(-1)
	addwf	(dht11_read_byte@i),f
	skipnc
	incf	(dht11_read_byte@i+1),f
	movlw	high(-1)
	addwf	(dht11_read_byte@i+1),f
	
l919:	
	btfss	(dht11_read_byte@i+1),7
	goto	u461
	goto	u460
u461:
	goto	l84
u460:
	goto	l921
	
l83:	
	line	214
	
l921:	
;main.c: 212: }
;main.c: 213: }
;main.c: 214: return data;
	movf	(dht11_read_byte@data),w
	goto	l92
	
l923:	
	line	215
	
l92:	
	return
	opt stack 0
GLOBAL	__end_of_dht11_read_byte
	__end_of_dht11_read_byte:
	signat	_dht11_read_byte,89
	global	_TX_printline

;; *************** function _TX_printline *****************
;; Defined at:
;;		line 86 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> main@buff(4), 
;; Auto vars:     Size  Location     Type
;;  str             1    0[BANK0 ] PTR unsigned char 
;;		 -> main@buff(4), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_TX_poll
;;		_TX_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	86
global __ptext9
__ptext9:	;psect for function _TX_printline
psect	text9
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	86
	global	__size_of_TX_printline
	__size_of_TX_printline	equ	__end_of_TX_printline-_TX_printline
	
_TX_printline:	
;incstack = 0
	opt	stack 3
; Regs used in _TX_printline: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;TX_printline@str stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(TX_printline@str)
	line	88
	
l1071:	
;main.c: 88: TX_print( str );
	movf	(TX_printline@str),w
	movwf	(TX_print@str)
	movlw	(0x0/2)
	movwf	(TX_print@str+1)
	fcall	_TX_print
	line	91
	
l1073:	
;main.c: 91: TX_poll( 0x0D );
	movlw	(0Dh)
	fcall	_TX_poll
	line	93
	
l1075:	
;main.c: 93: TX_poll( 0x0A );
	movlw	(0Ah)
	fcall	_TX_poll
	line	94
	
l54:	
	return
	opt stack 0
GLOBAL	__end_of_TX_printline
	__end_of_TX_printline:
	signat	_TX_printline,4216
	global	_TX_print

;; *************** function _TX_print *****************
;; Defined at:
;;		line 78 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
;; Parameters:    Size  Location     Type
;;  str             2    6[COMMON] PTR unsigned char 
;;		 -> main@buff(4), STR_2(15), STR_1(21), 
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TX_poll
;; This function is called by:
;;		_TX_printline
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	78
global __ptext10
__ptext10:	;psect for function _TX_print
psect	text10
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	78
	global	__size_of_TX_print
	__size_of_TX_print	equ	__end_of_TX_print-_TX_print
	
_TX_print:	
;incstack = 0
	opt	stack 3
; Regs used in _TX_print: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	80
	
l1063:	
;main.c: 80: while( *(str) != '\0' ){
	goto	l1069
	
l49:	
	line	81
	
l1065:	
;main.c: 82: str = str++;
	movf	(TX_print@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(TX_print@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_TX_poll
	line	82
	
l1067:	
	movlw	01h
	addwf	(TX_print@str),f
	skipnc
	incf	(TX_print@str+1),f
	goto	l1069
	line	83
	
l48:	
	line	80
	
l1069:	
	movf	(TX_print@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(TX_print@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u681
	goto	u680
u681:
	goto	l1065
u680:
	goto	l51
	
l50:	
	line	84
	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_TX_print
	__end_of_TX_print:
	signat	_TX_print,4216
	global	_TX_newline

;; *************** function _TX_newline *****************
;; Defined at:
;;		line 96 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TX_poll
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	96
global __ptext11
__ptext11:	;psect for function _TX_newline
psect	text11
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	96
	global	__size_of_TX_newline
	__size_of_TX_newline	equ	__end_of_TX_newline-_TX_newline
	
_TX_newline:	
;incstack = 0
	opt	stack 4
; Regs used in _TX_newline: [wreg+status,2+status,0+pclath+cstack]
	line	99
	
l1077:	
;main.c: 99: TX_poll( 0x0D );
	movlw	(0Dh)
	fcall	_TX_poll
	line	101
;main.c: 101: TX_poll( 0x0A );
	movlw	(0Ah)
	fcall	_TX_poll
	line	102
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_TX_newline
	__end_of_TX_newline:
	signat	_TX_newline,88
	global	_TX_poll

;; *************** function _TX_poll *****************
;; Defined at:
;;		line 60 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TX_print
;;		_TX_printline
;;		_TX_newline
;;		_RX_readline
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	60
global __ptext12
__ptext12:	;psect for function _TX_poll
psect	text12
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	60
	global	__size_of_TX_poll
	__size_of_TX_poll	equ	__end_of_TX_poll-_TX_poll
	
_TX_poll:	
;incstack = 0
	opt	stack 3
; Regs used in _TX_poll: [wreg]
;TX_poll@val stored from wreg
	movwf	(TX_poll@val)
	line	62
	
l1059:	
;main.c: 62: while( PIR1bits.TXIF == 0 );
	goto	l36
	
l37:	
	
l36:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u671
	goto	u670
u671:
	goto	l36
u670:
	goto	l1061
	
l38:	
	line	64
	
l1061:	
;main.c: 64: TXREG = val;
	movf	(TX_poll@val),w
	movwf	(25)	;volatile
	line	66
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_TX_poll
	__end_of_TX_poll:
	signat	_TX_poll,4216
	global	_tc_int

;; *************** function _tc_int *****************
;; Defined at:
;;		line 119 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_TX_poll
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	119
global __ptext13
__ptext13:	;psect for function _tc_int
psect	text13
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	119
	global	__size_of_tc_int
	__size_of_tc_int	equ	__end_of_tc_int-_tc_int
	
_tc_int:	
;incstack = 0
	opt	stack 3
; Regs used in _tc_int: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_tc_int+0)
	movf	fsr0,w
	movwf	(??_tc_int+1)
	movf	pclath,w
	movwf	(??_tc_int+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_tc_int+3)
	ljmp	_tc_int
psect	text13
	line	121
	
i1l1041:	
;main.c: 121: if( TMR0IE && TMR0IF ){
	btfss	(93/8),(93)&7	;volatile
	goto	u65_21
	goto	u65_20
u65_21:
	goto	i1l67
u65_20:
	
i1l1043:	
	btfss	(90/8),(90)&7	;volatile
	goto	u66_21
	goto	u66_20
u66_21:
	goto	i1l67
u66_20:
	line	122
	
i1l1045:	
;main.c: 122: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	123
	
i1l1047:	
;main.c: 123: TMR0 = 0;
	clrf	(1)	;volatile
	line	125
	
i1l1049:	
;main.c: 125: TX_poll('Y');
	movlw	(059h)
	fcall	i1_TX_poll
	goto	i1l67
	line	126
	
i1l1051:	
;main.c: 126: return;
	goto	i1l67
	line	127
	
i1l66:	
	line	128
	
i1l67:	
	movf	(??_tc_int+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_tc_int+2),w
	movwf	pclath
	movf	(??_tc_int+1),w
	movwf	fsr0
	swapf	(??_tc_int+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_tc_int
	__end_of_tc_int:
	signat	_tc_int,88
	global	i1_TX_poll

;; *************** function i1_TX_poll *****************
;; Defined at:
;;		line 60 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_tc_int
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	60
global __ptext14
__ptext14:	;psect for function i1_TX_poll
psect	text14
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DHT1100\main.c"
	line	60
	global	__size_ofi1_TX_poll
	__size_ofi1_TX_poll	equ	__end_ofi1_TX_poll-i1_TX_poll
	
i1_TX_poll:	
;incstack = 0
	opt	stack 3
; Regs used in i1_TX_poll: [wreg]
;i1TX_poll@val stored from wreg
	movwf	(i1TX_poll@val)
	line	62
	
i1l1037:	
;main.c: 62: while( PIR1bits.TXIF == 0 );
	goto	i1l36
	
i1l37:	
	
i1l36:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u64_21
	goto	u64_20
u64_21:
	goto	i1l36
u64_20:
	goto	i1l1039
	
i1l38:	
	line	64
	
i1l1039:	
;main.c: 64: TXREG = val;
	movf	(i1TX_poll@val),w
	movwf	(25)	;volatile
	line	66
	
i1l39:	
	return
	opt stack 0
GLOBAL	__end_ofi1_TX_poll
	__end_ofi1_TX_poll:
	signat	i1_TX_poll,88
global	___latbits
___latbits	equ	2
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
