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
	FNCALL	_main,_RX_readline
	FNCALL	_main,_TX_printline
	FNCALL	_main,_init
	FNCALL	_TX_printline,_TX_poll
	FNCALL	_TX_printline,_TX_print
	FNCALL	_TX_print,_TX_poll
	FNCALL	_RX_readline,_RX_poll
	FNCALL	_RX_readline,_TX_poll
	FNROOT	_main
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_RCREG
_RCREG	set	0x1A
	global	_TXREG
_TXREG	set	0x19
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
	
STR_1:	
	retlw	84	;'T'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
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
	file	"serial.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
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
??_init:	; 0 bytes @ 0x0
?_TX_poll:	; 0 bytes @ 0x0
??_TX_poll:	; 0 bytes @ 0x0
??_RX_poll:	; 0 bytes @ 0x0
?_TX_print:	; 0 bytes @ 0x0
?_TX_printline:	; 0 bytes @ 0x0
?_RX_readline:	; 0 bytes @ 0x0
?_RX_poll:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	TX_poll@val
TX_poll@val:	; 1 bytes @ 0x0
	ds	1
??_TX_print:	; 0 bytes @ 0x1
	global	RX_poll@ch
RX_poll@ch:	; 1 bytes @ 0x1
	ds	1
??_RX_readline:	; 0 bytes @ 0x2
	global	TX_print@str
TX_print@str:	; 1 bytes @ 0x2
	ds	1
??_TX_printline:	; 0 bytes @ 0x3
	global	TX_printline@str
TX_printline@str:	; 1 bytes @ 0x3
	ds	1
	global	RX_readline@ch
RX_readline@ch:	; 1 bytes @ 0x4
	ds	1
	global	RX_readline@i
RX_readline@i:	; 1 bytes @ 0x5
	ds	1
	global	RX_readline@buff
RX_readline@buff:	; 1 bytes @ 0x6
	ds	1
??_main:	; 0 bytes @ 0x7
	ds	3
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	main@buff
main@buff:	; 10 bytes @ 0x0
	ds	10
	global	main@str
main@str:	; 1 bytes @ 0xA
	ds	1
;!
;!Data Sizes:
;!    Strings     21
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      10
;!    BANK0            80     11      11
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    main@str	PTR unsigned char  size(1) Largest target is 21
;!		 -> STR_1(CODE[21]), 
;!
;!    RX_readline@buff	PTR unsigned char  size(1) Largest target is 10
;!		 -> main@buff(BANK0[10]), 
;!
;!    TX_printline@str	PTR unsigned char  size(1) Largest target is 10
;!		 -> main@buff(BANK0[10]), 
;!
;!    TX_print@str	PTR unsigned char  size(1) Largest target is 10
;!		 -> main@buff(BANK0[10]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_RX_readline
;!    _TX_printline->_TX_print
;!    _TX_print->_TX_poll
;!    _RX_readline->_RX_poll
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                15    15      0     421
;!                                              7 COMMON     3     3      0
;!                                              0 BANK0     11    11      0
;!                        _RX_readline
;!                       _TX_printline
;!                               _init
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _TX_printline                                         1     1      0     164
;!                                              3 COMMON     1     1      0
;!                            _TX_poll
;!                           _TX_print
;! ---------------------------------------------------------------------------------
;! (2) _TX_print                                             2     2      0      93
;!                                              1 COMMON     2     2      0
;!                            _TX_poll
;! ---------------------------------------------------------------------------------
;! (1) _RX_readline                                          5     5      0     206
;!                                              2 COMMON     5     5      0
;!                            _RX_poll
;!                            _TX_poll
;! ---------------------------------------------------------------------------------
;! (3) _TX_poll                                              1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _RX_poll                                              2     2      0      23
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _RX_readline
;!     _RX_poll
;!     _TX_poll
;!   _TX_printline
;!     _TX_poll
;!     _TX_print
;!       _TX_poll
;!   _init
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      A       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      B       B       5       13.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 101 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buff           10    0[BANK0 ] unsigned char [10]
;;  str             1   10[BANK0 ] PTR unsigned char 
;;		 -> STR_1(21), 
;;  ch              1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   42[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3      11       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_RX_readline
;;		_TX_printline
;;		_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
	line	101
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
	line	101
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	103
	
l581:	
;main.c: 103: char *str = "This is a String 123";
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@str)
	line	107
	
l583:	
;main.c: 104: char buff[10];
;main.c: 105: char ch;
;main.c: 107: init();
	fcall	_init
	goto	l585
	line	110
;main.c: 110: while( 1 ){
	
l43:	
	line	117
	
l585:	
;main.c: 117: RX_readline(&buff);
	movlw	(main@buff)&0ffh
	fcall	_RX_readline
	line	118
	
l587:	
;main.c: 118: TX_printline(&buff);
	movlw	(main@buff)&0ffh
	fcall	_TX_printline
	line	123
	
l589:	
;main.c: 123: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u97:
	decfsz	((??_main+0)+0),f
	goto	u97
	decfsz	((??_main+0)+0+1),f
	goto	u97
	decfsz	((??_main+0)+0+2),f
	goto	u97
	nop2
opt asmopt_on

	goto	l585
	line	124
	
l44:	
	line	110
	goto	l585
	
l45:	
	line	127
;main.c: 124: }
;main.c: 126: return 0;
;	Return value of _main is never used
	
l46:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 8 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
psect	text1,local,class=CODE,delta=2,merge=1
	line	8
global __ptext1
__ptext1:	;psect for function _init
psect	text1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
	line	8
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 7
; Regs used in _init: [wreg]
	line	11
	
l547:	
;main.c: 11: TRISB = 0x81;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	14
# 14 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
banksel TXREG ;# 
	line	15
# 15 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
clrf TXREG ;# 
	line	16
# 16 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
banksel RCREG ;# 
	line	17
# 17 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
clrf RCREG ;# 
	line	20
# 20 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
banksel SPBRG ;# 
	line	21
# 21 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
movlw 0x40 ;# 
	line	22
# 22 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
movwf SPBRG ;# 
	line	25
# 25 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
banksel TXSTA ;# 
	line	26
# 26 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
movlw 0x24 ;# 
	line	27
# 27 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
movwf TXSTA ;# 
	line	30
# 30 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
banksel RCSTA ;# 
	line	31
# 31 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
movlw 0x90 ;# 
	line	32
# 32 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
movwf RCSTA ;# 
psect	text1
	line	34
	
l13:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_TX_printline

;; *************** function _TX_printline *****************
;; Defined at:
;;		line 76 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> main@buff(10), 
;; Auto vars:     Size  Location     Type
;;  str             1    3[COMMON] PTR unsigned char 
;;		 -> main@buff(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_TX_poll
;;		_TX_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	76
global __ptext2
__ptext2:	;psect for function _TX_printline
psect	text2
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
	line	76
	global	__size_of_TX_printline
	__size_of_TX_printline	equ	__end_of_TX_printline-_TX_printline
	
_TX_printline:	
;incstack = 0
	opt	stack 5
; Regs used in _TX_printline: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;TX_printline@str stored from wreg
	movwf	(TX_printline@str)
	line	78
	
l575:	
;main.c: 78: TX_print( str );
	movf	(TX_printline@str),w
	fcall	_TX_print
	line	81
	
l577:	
;main.c: 81: TX_poll( 0x0D );
	movlw	(0Dh)
	fcall	_TX_poll
	line	83
	
l579:	
;main.c: 83: TX_poll( 0x0A );
	movlw	(0Ah)
	fcall	_TX_poll
	line	84
	
l34:	
	return
	opt stack 0
GLOBAL	__end_of_TX_printline
	__end_of_TX_printline:
	signat	_TX_printline,4216
	global	_TX_print

;; *************** function _TX_print *****************
;; Defined at:
;;		line 69 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> main@buff(10), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR unsigned char 
;;		 -> main@buff(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_TX_poll
;; This function is called by:
;;		_TX_printline
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	69
global __ptext3
__ptext3:	;psect for function _TX_print
psect	text3
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
	line	69
	global	__size_of_TX_print
	__size_of_TX_print	equ	__end_of_TX_print-_TX_print
	
_TX_print:	
;incstack = 0
	opt	stack 5
; Regs used in _TX_print: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;TX_print@str stored from wreg
	movwf	(TX_print@str)
	line	71
	
l559:	
;main.c: 71: while( *(++str) != '\0' ){
	goto	l563
	
l29:	
	line	72
	
l561:	
;main.c: 72: TX_poll( *str );
	movf	(TX_print@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_TX_poll
	goto	l563
	line	73
	
l28:	
	line	71
	
l563:	
	movlw	(01h)
	movwf	(??_TX_print+0)+0
	movf	(??_TX_print+0)+0,w
	addwf	(TX_print@str),f
	movf	((TX_print@str)),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u71
	goto	u70
u71:
	goto	l561
u70:
	goto	l31
	
l30:	
	line	74
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_TX_print
	__end_of_TX_print:
	signat	_TX_print,4216
	global	_RX_readline

;; *************** function _RX_readline *****************
;; Defined at:
;;		line 86 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
;; Parameters:    Size  Location     Type
;;  buff            1    wreg     PTR unsigned char 
;;		 -> main@buff(10), 
;; Auto vars:     Size  Location     Type
;;  buff            1    6[COMMON] PTR unsigned char 
;;		 -> main@buff(10), 
;;  i               1    5[COMMON] unsigned char 
;;  ch              1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_RX_poll
;;		_TX_poll
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	86
global __ptext4
__ptext4:	;psect for function _RX_readline
psect	text4
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
	line	86
	global	__size_of_RX_readline
	__size_of_RX_readline	equ	__end_of_RX_readline-_RX_readline
	
_RX_readline:	
;incstack = 0
	opt	stack 6
; Regs used in _RX_readline: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;RX_readline@buff stored from wreg
	movwf	(RX_readline@buff)
	line	89
	
l565:	
;main.c: 88: char ch;
;main.c: 89: char i = 0;
	clrf	(RX_readline@i)
	line	91
;main.c: 91: while( (ch = RX_poll()) != 0x0D ){
	goto	l571
	
l38:	
	line	92
	
l567:	
;main.c: 92: buff[i] = ch;
	movf	(RX_readline@ch),w
	movwf	(??_RX_readline+0)+0
	movf	(RX_readline@i),w
	addwf	(RX_readline@buff),w
	movwf	(??_RX_readline+1)+0
	movf	0+(??_RX_readline+1)+0,w
	movwf	fsr0
	movf	(??_RX_readline+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	93
	
l569:	
;main.c: 93: TX_poll(ch);
	movf	(RX_readline@ch),w
	fcall	_TX_poll
	goto	l571
	line	96
	
l37:	
	line	91
	
l571:	
	fcall	_RX_poll
	movwf	(RX_readline@ch)
	xorlw	0Dh
	skipz
	goto	u81
	goto	u80
u81:
	goto	l567
u80:
	goto	l573
	
l39:	
	line	98
	
l573:	
;main.c: 96: }
;main.c: 98: buff[i] = '\0';
	movf	(RX_readline@i),w
	addwf	(RX_readline@buff),w
	movwf	(??_RX_readline+0)+0
	movf	0+(??_RX_readline+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	99
	
l40:	
	return
	opt stack 0
GLOBAL	__end_of_RX_readline
	__end_of_RX_readline:
	signat	_RX_readline,4216
	global	_TX_poll

;; *************** function _TX_poll *****************
;; Defined at:
;;		line 36 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
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
;;		_TX_print
;;		_TX_printline
;;		_RX_readline
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	36
global __ptext5
__ptext5:	;psect for function _TX_poll
psect	text5
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
	line	36
	global	__size_of_TX_poll
	__size_of_TX_poll	equ	__end_of_TX_poll-_TX_poll
	
_TX_poll:	
;incstack = 0
	opt	stack 5
; Regs used in _TX_poll: [wreg]
;TX_poll@val stored from wreg
	movwf	(TX_poll@val)
	line	45
	
l549:	
;main.c: 45: while( PIR1bits.TXIF == 0 );
	goto	l16
	
l17:	
	
l16:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u51
	goto	u50
u51:
	goto	l16
u50:
	goto	l551
	
l18:	
	line	55
	
l551:	
;main.c: 55: TXREG = val;
	movf	(TX_poll@val),w
	movwf	(25)	;volatile
	line	57
	
l19:	
	return
	opt stack 0
GLOBAL	__end_of_TX_poll
	__end_of_TX_poll:
	signat	_TX_poll,4216
	global	_RX_poll

;; *************** function _RX_poll *****************
;; Defined at:
;;		line 59 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ch              1    1[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RX_readline
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	59
global __ptext6
__ptext6:	;psect for function _RX_poll
psect	text6
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Serial00\main.c"
	line	59
	global	__size_of_RX_poll
	__size_of_RX_poll	equ	__end_of_RX_poll-_RX_poll
	
_RX_poll:	
;incstack = 0
	opt	stack 6
; Regs used in _RX_poll: [wreg]
	line	63
	
l553:	
;main.c: 61: char ch;
;main.c: 63: while( PIR1bits.RCIF == 0 );
	goto	l22
	
l23:	
	
l22:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),5	;volatile
	goto	u61
	goto	u60
u61:
	goto	l22
u60:
	goto	l555
	
l24:	
	line	65
	
l555:	
;main.c: 65: ch = RCREG;
	movf	(26),w	;volatile
	movwf	(??_RX_poll+0)+0
	movf	(??_RX_poll+0)+0,w
	movwf	(RX_poll@ch)
	line	66
;main.c: 66: return ch;
	movf	(RX_poll@ch),w
	goto	l25
	
l557:	
	line	67
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_RX_poll
	__end_of_RX_poll:
	signat	_RX_poll,89
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
