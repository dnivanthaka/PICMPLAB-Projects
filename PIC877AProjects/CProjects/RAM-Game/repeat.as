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
	FNCALL	_main,_getready
	FNCALL	_main,_init
	FNCALL	_main,_playtune
	FNCALL	_getready,_beep
	FNROOT	_main
	FNCALL	intlevel1,_tc_int
	global	intlevel1
	FNROOT	intlevel1
	global	playtune@F1315
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
	line	84

;initializer for playtune@F1315
	retlw	02h
	retlw	0
	retlw	03h
	retlw	02h
	retlw	03h
	retlw	0
	global	_PORTA
_PORTA	set	0x5
	global	_TMR0
_TMR0	set	0x1
	global	_RA0
_RA0	set	0x28
	global	_RA1
_RA1	set	0x29
	global	_RA2
_RA2	set	0x2A
	global	_RA3
_RA3	set	0x2B
	global	_RA5
_RA5	set	0x2D
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
	file	"repeat.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
	line	84
playtune@F1315:
       ds      6

	file	"repeat.as"
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
?_tc_int:	; 0 bytes @ 0x0
??_tc_int:	; 0 bytes @ 0x0
?_beep:	; 0 bytes @ 0x0
?_getready:	; 0 bytes @ 0x0
?_playtune:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	4
??_init:	; 0 bytes @ 0x4
??_beep:	; 0 bytes @ 0x4
??_playtune:	; 0 bytes @ 0x4
	ds	3
??_getready:	; 0 bytes @ 0x7
	ds	3
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	playtune@bitstream
playtune@bitstream:	; 6 bytes @ 0x0
	ds	6
	global	playtune@i
playtune@i:	; 2 bytes @ 0x6
	ds	2
??_main:	; 0 bytes @ 0x8
	ds	3
	global	main@i
main@i:	; 2 bytes @ 0xB
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        6
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      10
;!    BANK0            80     13      19
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_getready
;!    _getready->_beep
;!
;!Critical Paths under _tc_int in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_playtune
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
;! (0) _main                                                 5     5      0     273
;!                                              8 BANK0      5     5      0
;!                           _getready
;!                               _init
;!                           _playtune
;! ---------------------------------------------------------------------------------
;! (1) _playtune                                            11    11      0     227
;!                                              4 COMMON     3     3      0
;!                                              0 BANK0      8     8      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _getready                                             3     3      0       0
;!                                              7 COMMON     3     3      0
;!                               _beep
;! ---------------------------------------------------------------------------------
;! (2) _beep                                                 3     3      0       0
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _tc_int                                               4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _getready
;!     _beep
;!   _init
;!   _playtune
;!
;! _tc_int (ROOT)
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
;!BANK0               50      D      13       5       23.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      A       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      1D      12        0.0%
;!ABS                  0      0      1D       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 107 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   11[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_getready
;;		_init
;;		_playtune
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
	line	107
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
	line	107
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	110
	
l699:	
;main.c: 110: init();
	fcall	_init
	line	112
;main.c: 112: getready();
	fcall	_getready
	line	113
	
l701:	
;main.c: 113: playtune();
	fcall	_playtune
	goto	l703
	line	114
;main.c: 114: while(1){
	
l53:	
	line	115
	
l703:	
;main.c: 115: for( int i=0;i<4;i++ ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l705:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u175
	movlw	low(04h)
	subwf	(main@i),w
u175:

	skipc
	goto	u171
	goto	u170
u171:
	goto	l709
u170:
	goto	l703
	
l707:	
	goto	l703
	
l54:	
	line	119
	
l709:	
;main.c: 119: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	19
movwf	((??_main+0)+0+1),f
	movlw	177
movwf	((??_main+0)+0),f
u197:
	decfsz	((??_main+0)+0),f
	goto	u197
	decfsz	((??_main+0)+0+1),f
	goto	u197
	decfsz	((??_main+0)+0+2),f
	goto	u197
	nop2
opt asmopt_on

	line	115
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l711:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u185
	movlw	low(04h)
	subwf	(main@i),w
u185:

	skipc
	goto	u181
	goto	u180
u181:
	goto	l709
u180:
	goto	l703
	
l55:	
	goto	l703
	line	123
	
l56:	
	line	114
	goto	l703
	
l57:	
	line	124
	
l58:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_playtune

;; *************** function _playtune *****************
;; Defined at:
;;		line 83 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    6[BANK0 ] int 
;;  bitstream       6    0[BANK0 ] unsigned char [6]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       8       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	83
global __ptext1
__ptext1:	;psect for function _playtune
psect	text1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
	line	83
	global	__size_of_playtune
	__size_of_playtune	equ	__end_of_playtune-_playtune
	
_playtune:	
;incstack = 0
	opt	stack 6
; Regs used in _playtune: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	86
	
l671:	
;main.c: 86: uint8_t bitstream[] = {2, 0, 3, 2, 3, 0};
	movlw	(playtune@bitstream)&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(playtune@F1315),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(playtune@F1315)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(playtune@F1315)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(playtune@F1315)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(playtune@F1315)+4,w
	movwf	indf
	incf	fsr0,f
	movf	(playtune@F1315)+5,w
	movwf	indf
	line	88
	
l673:	
;main.c: 88: for(int i=0;i<6;i++){
	clrf	(playtune@i)
	clrf	(playtune@i+1)
	
l675:	
	movf	(playtune@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u115
	movlw	low(06h)
	subwf	(playtune@i),w
u115:

	skipc
	goto	u111
	goto	u110
u111:
	goto	l44
u110:
	goto	l50
	
l677:	
	goto	l50
	
l44:	
	line	89
;main.c: 89: RA5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7	;volatile
	line	90
	
l679:	
;main.c: 90: if(bitstream[i] == 0){
	movf	(playtune@i),w
	addlw	playtune@bitstream&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u121
	goto	u120
u121:
	goto	l683
u120:
	line	91
	
l681:	
;main.c: 91: _delay((unsigned long)((0)*(20000000/4000.0)));
	
	goto	l683
	line	92
	
l46:	
	line	93
	
l683:	
;main.c: 92: }
;main.c: 93: if(bitstream[i] == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(playtune@i),w
	addlw	playtune@bitstream&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	01h
	skipz
	goto	u131
	goto	u130
u131:
	goto	l687
u130:
	line	94
	
l685:	
;main.c: 94: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_playtune+0)+0+2),f
movlw	69
movwf	((??_playtune+0)+0+1),f
	movlw	169
movwf	((??_playtune+0)+0),f
u207:
	decfsz	((??_playtune+0)+0),f
	goto	u207
	decfsz	((??_playtune+0)+0+1),f
	goto	u207
	decfsz	((??_playtune+0)+0+2),f
	goto	u207
	nop2
opt asmopt_on

	goto	l687
	line	95
	
l47:	
	line	96
	
l687:	
;main.c: 95: }
;main.c: 96: if(bitstream[i] == 2){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(playtune@i),w
	addlw	playtune@bitstream&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	02h
	skipz
	goto	u141
	goto	u140
u141:
	goto	l691
u140:
	line	97
	
l689:	
;main.c: 97: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_playtune+0)+0+2),f
movlw	138
movwf	((??_playtune+0)+0+1),f
	movlw	86
movwf	((??_playtune+0)+0),f
u217:
	decfsz	((??_playtune+0)+0),f
	goto	u217
	decfsz	((??_playtune+0)+0+1),f
	goto	u217
	decfsz	((??_playtune+0)+0+2),f
	goto	u217
	nop2
opt asmopt_on

	goto	l691
	line	98
	
l48:	
	line	99
	
l691:	
;main.c: 98: }
;main.c: 99: if(bitstream[i] == 3){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(playtune@i),w
	addlw	playtune@bitstream&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	03h
	skipz
	goto	u151
	goto	u150
u151:
	goto	l695
u150:
	line	100
	
l693:	
;main.c: 100: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_playtune+0)+0+2),f
movlw	19
movwf	((??_playtune+0)+0+1),f
	movlw	177
movwf	((??_playtune+0)+0),f
u227:
	decfsz	((??_playtune+0)+0),f
	goto	u227
	decfsz	((??_playtune+0)+0+1),f
	goto	u227
	decfsz	((??_playtune+0)+0+2),f
	goto	u227
	nop2
opt asmopt_on

	goto	l695
	line	101
	
l49:	
	line	102
	
l695:	
;main.c: 101: }
;main.c: 102: RA5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7	;volatile
	line	103
;main.c: 103: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_playtune+0)+0+2),f
movlw	19
movwf	((??_playtune+0)+0+1),f
	movlw	177
movwf	((??_playtune+0)+0),f
u237:
	decfsz	((??_playtune+0)+0),f
	goto	u237
	decfsz	((??_playtune+0)+0+1),f
	goto	u237
	decfsz	((??_playtune+0)+0+2),f
	goto	u237
	nop2
opt asmopt_on

	line	88
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(playtune@i),f
	skipnc
	incf	(playtune@i+1),f
	movlw	high(01h)
	addwf	(playtune@i+1),f
	
l697:	
	movf	(playtune@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u165
	movlw	low(06h)
	subwf	(playtune@i),w
u165:

	skipc
	goto	u161
	goto	u160
u161:
	goto	l44
u160:
	goto	l50
	
l45:	
	line	105
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_playtune
	__end_of_playtune:
	signat	_playtune,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 23 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	23
global __ptext2
__ptext2:	;psect for function _init
psect	text2
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
	line	23
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 6
; Regs used in _init: [wreg+status,2]
	line	25
	
l619:	
;main.c: 25: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	27
	
l621:	
;main.c: 27: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	30
	
l623:	
;main.c: 30: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	33
	
l625:	
;main.c: 33: OPTION_REGbits.T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h,5	;volatile
	line	34
	
l627:	
;main.c: 34: OPTION_REGbits.T0SE = 0;
	bcf	(129)^080h,4	;volatile
	line	35
	
l629:	
;main.c: 35: OPTION_REGbits.PSA = 0;
	bcf	(129)^080h,3	;volatile
	line	38
	
l631:	
;main.c: 38: OPTION_REGbits.PS0 = 0;
	bcf	(129)^080h,0	;volatile
	line	39
	
l633:	
;main.c: 39: OPTION_REGbits.PS1 = 0;
	bcf	(129)^080h,1	;volatile
	line	40
	
l635:	
;main.c: 40: OPTION_REGbits.PS2 = 1;
	bsf	(129)^080h,2	;volatile
	line	43
	
l29:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_getready

;; *************** function _getready *****************
;; Defined at:
;;		line 63 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
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
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_beep
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	63
global __ptext3
__ptext3:	;psect for function _getready
psect	text3
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
	line	63
	global	__size_of_getready
	__size_of_getready	equ	__end_of_getready-_getready
	
_getready:	
;incstack = 0
	opt	stack 5
; Regs used in _getready: [wreg+status,2+status,0+pclath+cstack]
	line	65
	
l643:	
;main.c: 65: beep();
	fcall	_beep
	line	66
	
l645:	
;main.c: 66: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	67
	
l647:	
;main.c: 67: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_getready+0)+0+2),f
movlw	19
movwf	((??_getready+0)+0+1),f
	movlw	177
movwf	((??_getready+0)+0),f
u247:
	decfsz	((??_getready+0)+0),f
	goto	u247
	decfsz	((??_getready+0)+0+1),f
	goto	u247
	decfsz	((??_getready+0)+0+2),f
	goto	u247
	nop2
opt asmopt_on

	line	68
	
l649:	
;main.c: 68: beep();
	fcall	_beep
	line	69
	
l651:	
;main.c: 69: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	70
;main.c: 70: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_getready+0)+0+2),f
movlw	19
movwf	((??_getready+0)+0+1),f
	movlw	177
movwf	((??_getready+0)+0),f
u257:
	decfsz	((??_getready+0)+0),f
	goto	u257
	decfsz	((??_getready+0)+0+1),f
	goto	u257
	decfsz	((??_getready+0)+0+2),f
	goto	u257
	nop2
opt asmopt_on

	line	71
	
l653:	
;main.c: 71: beep();
	fcall	_beep
	line	72
	
l655:	
;main.c: 72: RA2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7	;volatile
	line	73
	
l657:	
;main.c: 73: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_getready+0)+0+2),f
movlw	19
movwf	((??_getready+0)+0+1),f
	movlw	177
movwf	((??_getready+0)+0),f
u267:
	decfsz	((??_getready+0)+0),f
	goto	u267
	decfsz	((??_getready+0)+0+1),f
	goto	u267
	decfsz	((??_getready+0)+0+2),f
	goto	u267
	nop2
opt asmopt_on

	line	74
;main.c: 74: beep();
	fcall	_beep
	line	75
	
l659:	
;main.c: 75: RA3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7	;volatile
	line	76
	
l661:	
;main.c: 76: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_getready+0)+0+2),f
movlw	19
movwf	((??_getready+0)+0+1),f
	movlw	177
movwf	((??_getready+0)+0),f
u277:
	decfsz	((??_getready+0)+0),f
	goto	u277
	decfsz	((??_getready+0)+0+1),f
	goto	u277
	decfsz	((??_getready+0)+0+2),f
	goto	u277
	nop2
opt asmopt_on

	line	77
	
l663:	
;main.c: 77: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	78
	
l665:	
;main.c: 78: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	79
	
l667:	
;main.c: 79: RA2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	80
	
l669:	
;main.c: 80: RA3 = 0;
	bcf	(43/8),(43)&7	;volatile
	line	81
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_getready
	__end_of_getready:
	signat	_getready,88
	global	_beep

;; *************** function _beep *****************
;; Defined at:
;;		line 56 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
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
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getready
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	56
global __ptext4
__ptext4:	;psect for function _beep
psect	text4
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
	line	56
	global	__size_of_beep
	__size_of_beep	equ	__end_of_beep-_beep
	
_beep:	
;incstack = 0
	opt	stack 5
; Regs used in _beep: [wreg]
	line	58
	
l637:	
;main.c: 58: RA5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7	;volatile
	line	59
	
l639:	
;main.c: 59: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_beep+0)+0+2),f
movlw	138
movwf	((??_beep+0)+0+1),f
	movlw	86
movwf	((??_beep+0)+0),f
u287:
	decfsz	((??_beep+0)+0),f
	goto	u287
	decfsz	((??_beep+0)+0+1),f
	goto	u287
	decfsz	((??_beep+0)+0+2),f
	goto	u287
	nop2
opt asmopt_on

	line	60
	
l641:	
;main.c: 60: RA5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7	;volatile
	line	61
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_beep
	__end_of_beep:
	signat	_beep,88
	global	_tc_int

;; *************** function _tc_int *****************
;; Defined at:
;;		line 45 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	45
global __ptext5
__ptext5:	;psect for function _tc_int
psect	text5
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\RAM-Game\main.c"
	line	45
	global	__size_of_tc_int
	__size_of_tc_int	equ	__end_of_tc_int-_tc_int
	
_tc_int:	
;incstack = 0
	opt	stack 5
; Regs used in _tc_int: [status,2]
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
psect	text5
	line	47
	
i1l533:	
;main.c: 47: if( TMR0IE && TMR0IF ){
	btfss	(93/8),(93)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l33
u1_20:
	
i1l535:	
	btfss	(90/8),(90)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l33
u2_20:
	line	48
	
i1l537:	
;main.c: 48: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	49
	
i1l539:	
;main.c: 49: TMR0 = 0;
	clrf	(1)	;volatile
	goto	i1l33
	line	52
	
i1l541:	
;main.c: 52: return;
	goto	i1l33
	line	53
	
i1l32:	
	line	54
	
i1l33:	
	movf	(??_tc_int+3),w
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
