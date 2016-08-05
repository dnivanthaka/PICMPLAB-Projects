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
	FNCALL	_main,_debounce_lo
	FNCALL	_main,_init
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_ticks
	global	_update_duty
	global	_update_state
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_TMR0
_TMR0	set	0x1
	global	_GIE
_GIE	set	0x5F
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RC2
_RC2	set	0x3A
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_TRISB
_TRISB	set	0x86
	global	_TRISBbits
_TRISBbits	set	0x86
	global	_TRISC
_TRISC	set	0x87
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
	line	2758
global __ptext0
__ptext0:	;psect for function _isr
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
	file	"control.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_update_duty:
       ds      1

_update_state:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_ticks:
       ds      2

	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
?_isr:	; 0 bytes @ 0x0
??_isr:	; 0 bytes @ 0x0
?_debounce_lo:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	ds	4
??_init:	; 0 bytes @ 0x4
??_debounce_lo:	; 0 bytes @ 0x4
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	debounce_lo@prt
debounce_lo@prt:	; 1 bytes @ 0x0
	ds	1
	global	debounce_lo@count
debounce_lo@count:	; 1 bytes @ 0x1
	ds	1
??_main:	; 0 bytes @ 0x2
	ds	2
	global	main@delay
main@delay:	; 2 bytes @ 0x4
	ds	2
	global	main@increment
main@increment:	; 2 bytes @ 0x6
	ds	2
	global	main@step_angle
main@step_angle:	; 1 bytes @ 0x8
	ds	1
	global	main@button_pressed
main@button_pressed:	; 1 bytes @ 0x9
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0xA
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6       9
;!    BANK0            80     12      12
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
;!    _main->_debounce_lo
;!
;!Critical Paths under _isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_debounce_lo
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
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
;! (0) _main                                                10    10      0     343
;!                                              2 BANK0     10    10      0
;!                        _debounce_lo
;!                               _init
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _debounce_lo                                          4     4      0     130
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _isr                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _debounce_lo
;!   _init
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      6       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      15       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      C       C       5       15.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      15      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 143 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Servo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   10[BANK0 ] int 
;;  increment       2    6[BANK0 ] int 
;;  delay           2    4[BANK0 ] int 
;;  button_press    1    9[BANK0 ] unsigned char 
;;  step_angle      1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   67[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_debounce_lo
;;		_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Servo\main.c"
	line	143
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Servo\main.c"
	line	143
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	146
	
l803:	
;main.c: 146: uint8_t button_pressed = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@button_pressed)
	line	149
	
l805:	
;main.c: 149: int delay = 1000;
	movlw	low(03E8h)
	movwf	(main@delay)
	movlw	high(03E8h)
	movwf	((main@delay))+1
	line	150
	
l807:	
;main.c: 150: uint8_t step_angle = 10;
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@step_angle)
	line	151
	
l809:	
;main.c: 151: int increment = 1;
	movlw	low(01h)
	movwf	(main@increment)
	movlw	high(01h)
	movwf	((main@increment))+1
	line	152
	
l811:	
;main.c: 152: int i = 0;
	clrf	(main@i)
	clrf	(main@i+1)
	line	154
	
l813:	
;main.c: 154: init();
	fcall	_init
	line	179
	
l815:	
;main.c: 179: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	180
	
l817:	
;main.c: 180: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	183
	
l819:	
;main.c: 183: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	line	185
	
l821:	
;main.c: 185: TMR0 = 0;
	clrf	(1)	;volatile
	goto	l823
	line	187
;main.c: 187: while( 1 ){
	
l68:	
	line	192
	
l823:	
;main.c: 192: if( !button_pressed && debounce_lo( RB1 ) ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@button_pressed),f
	skipz
	goto	u351
	goto	u350
u351:
	goto	l69
u350:
	
l825:	
	movlw	0
	btfsc	(49/8),(49)&7	;volatile
	movlw	1
	fcall	_debounce_lo
	xorlw	0
	skipnz
	goto	u361
	goto	u360
u361:
	goto	l69
u360:
	line	194
	
l827:	
;main.c: 194: RB2 = 0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	197
;main.c: 197: button_pressed = 1;
	clrf	(main@button_pressed)
	incf	(main@button_pressed),f
	line	202
	
l829:	
;main.c: 202: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	203
	
l831:	
;main.c: 203: if( i > 3 ){
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u375
	movlw	low(04h)
	subwf	(main@i),w
u375:

	skipc
	goto	u371
	goto	u370
u371:
	goto	l839
u370:
	line	204
	
l833:	
;main.c: 204: i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l839
	line	205
	
l70:	
	line	206
;main.c: 205: }
;main.c: 206: }else{
	goto	l839
	
l69:	
	line	207
;main.c: 207: RB2 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	208
	
l835:	
;main.c: 208: if(!debounce_lo( RB1 ))
	movlw	0
	btfsc	(49/8),(49)&7	;volatile
	movlw	1
	fcall	_debounce_lo
	iorlw	0
	skipz
	goto	u381
	goto	u380
u381:
	goto	l839
u380:
	line	210
	
l837:	
;main.c: 210: button_pressed = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@button_pressed)
	goto	l839
	
l72:	
	goto	l839
	line	211
	
l71:	
	line	217
	
l839:	
;main.c: 211: }
;main.c: 217: if( update_state ){
	btfss	(_update_state/8),(_update_state)&7
	goto	u391
	goto	u390
u391:
	goto	l823
u390:
	line	221
	
l841:	
;main.c: 221: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7	;volatile
	line	230
	
l843:	
;main.c: 230: if(i == 0){
	movf	((main@i+1)),w
	iorwf	((main@i)),w
	skipz
	goto	u401
	goto	u400
u401:
	goto	l847
u400:
	line	231
	
l845:	
;main.c: 231: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	61
movwf	((??_main+0)+0),f
u447:
	decfsz	((??_main+0)+0),f
	goto	u447
	decfsz	((??_main+0)+0+1),f
	goto	u447
	nop2
opt asmopt_on

	line	232
;main.c: 232: }else if( i == 1 ){
	goto	l859
	
l74:	
	
l847:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipz
	goto	u411
	goto	u410
u411:
	goto	l851
u410:
	line	233
	
l849:	
;main.c: 233: _delay((unsigned long)((1000)*(20000000/4000000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u457:
	decfsz	((??_main+0)+0),f
	goto	u457
	decfsz	((??_main+0)+0+1),f
	goto	u457
opt asmopt_on

	line	234
;main.c: 234: }else if( i == 2 ){
	goto	l859
	
l76:	
	
l851:	
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipz
	goto	u421
	goto	u420
u421:
	goto	l855
u420:
	line	235
	
l853:	
;main.c: 235: _delay((unsigned long)((1500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	10
movwf	((??_main+0)+0+1),f
	movlw	188
movwf	((??_main+0)+0),f
u467:
	decfsz	((??_main+0)+0),f
	goto	u467
	decfsz	((??_main+0)+0+1),f
	goto	u467
	nop
opt asmopt_on

	line	236
;main.c: 236: }else if( i == 3 ){
	goto	l859
	
l78:	
	
l855:	
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipz
	goto	u431
	goto	u430
u431:
	goto	l859
u430:
	line	237
	
l857:	
;main.c: 237: _delay((unsigned long)((2000)*(20000000/4000000.0)));
	opt asmopt_off
movlw	13
movwf	((??_main+0)+0+1),f
	movlw	251
movwf	((??_main+0)+0),f
u477:
	decfsz	((??_main+0)+0),f
	goto	u477
	decfsz	((??_main+0)+0+1),f
	goto	u477
	nop2
opt asmopt_on

	goto	l859
	line	238
	
l80:	
	goto	l859
	line	239
	
l79:	
	goto	l859
	
l77:	
	goto	l859
	
l75:	
	
l859:	
;main.c: 238: }
;main.c: 239: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	255
	
l861:	
;main.c: 255: update_state = 0;
	bcf	(_update_state/8),(_update_state)&7
	line	257
;main.c: 257: }else{
	goto	l823
	
l73:	
	goto	l823
	line	259
	
l81:	
	goto	l823
	line	260
	
l82:	
	line	187
	goto	l823
	
l83:	
	line	263
;main.c: 259: }
;main.c: 260: }
;main.c: 262: return 0;
;	Return value of _main is never used
	
l84:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 20 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Servo\main.c"
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
psect	text1,local,class=CODE,delta=2,merge=1
	line	20
global __ptext1
__ptext1:	;psect for function _init
psect	text1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Servo\main.c"
	line	20
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 6
; Regs used in _init: [wreg+status,2]
	line	28
	
l673:	
;main.c: 28: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	31
	
l675:	
;main.c: 31: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	32
	
l677:	
;main.c: 32: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	34
	
l679:	
;main.c: 34: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	35
	
l681:	
;main.c: 35: TRISBbits.TRISB1 = 1;
	bsf	(134)^080h,1	;volatile
	line	36
	
l683:	
;main.c: 36: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	72
	
l685:	
;main.c: 72: OPTION_REGbits.T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h,5	;volatile
	line	73
	
l687:	
;main.c: 73: OPTION_REGbits.T0SE = 0;
	bcf	(129)^080h,4	;volatile
	line	74
	
l689:	
;main.c: 74: OPTION_REGbits.PSA = 0;
	bcf	(129)^080h,3	;volatile
	line	77
	
l691:	
;main.c: 77: OPTION_REGbits.PS0 = 0;
	bcf	(129)^080h,0	;volatile
	line	78
	
l693:	
;main.c: 78: OPTION_REGbits.PS1 = 0;
	bcf	(129)^080h,1	;volatile
	line	79
	
l695:	
;main.c: 79: OPTION_REGbits.PS2 = 0;
	bcf	(129)^080h,2	;volatile
	line	81
	
l697:	
;main.c: 81: INTCONbits.TMR0IE = 1;
	bsf	(11),5	;volatile
	line	91
	
l41:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_debounce_lo

;; *************** function _debounce_lo *****************
;; Defined at:
;;		line 114 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Servo\main.c"
;; Parameters:    Size  Location     Type
;;  prt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prt             1    0[BANK0 ] unsigned char 
;;  count           1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       2       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	114
global __ptext2
__ptext2:	;psect for function _debounce_lo
psect	text2
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Servo\main.c"
	line	114
	global	__size_of_debounce_lo
	__size_of_debounce_lo	equ	__end_of_debounce_lo-_debounce_lo
	
_debounce_lo:	
;incstack = 0
	opt	stack 6
; Regs used in _debounce_lo: [wreg+status,2+status,0]
;debounce_lo@prt stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(debounce_lo@prt)
	line	116
	
l781:	
;main.c: 116: uint8_t count = 0;
	clrf	(debounce_lo@count)
	line	118
	
l783:	
;main.c: 118: if( !prt ){
	movf	(debounce_lo@prt),f
	skipz
	goto	u311
	goto	u310
u311:
	goto	l799
u310:
	goto	l50
	line	119
	
l785:	
;main.c: 119: while( !prt && count < 10 ){
	goto	l50
	
l51:	
	line	120
	
l787:	
;main.c: 120: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_debounce_lo+0)+0+1),f
	movlw	125
movwf	((??_debounce_lo+0)+0),f
u487:
	decfsz	((??_debounce_lo+0)+0),f
	goto	u487
	decfsz	((??_debounce_lo+0)+0+1),f
	goto	u487
opt asmopt_on

	line	121
	
l789:	
;main.c: 121: count++;
	movlw	(01h)
	movwf	(??_debounce_lo+0)+0
	movf	(??_debounce_lo+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(debounce_lo@count),f
	line	122
	
l50:	
	line	119
	movf	(debounce_lo@prt),f
	skipz
	goto	u321
	goto	u320
u321:
	goto	l793
u320:
	
l791:	
	movlw	(0Ah)
	subwf	(debounce_lo@count),w
	skipc
	goto	u331
	goto	u330
u331:
	goto	l787
u330:
	goto	l793
	
l53:	
	goto	l793
	
l54:	
	line	123
	
l793:	
;main.c: 122: }
;main.c: 123: if( count == 10 )
	movf	(debounce_lo@count),w
	xorlw	0Ah
	skipz
	goto	u341
	goto	u340
u341:
	goto	l799
u340:
	line	124
	
l795:	
;main.c: 124: return 1;
	movlw	(01h)
	goto	l56
	
l797:	
	goto	l56
	
l55:	
	goto	l799
	line	125
	
l49:	
	line	126
	
l799:	
;main.c: 125: }
;main.c: 126: return 0;
	movlw	(0)
	goto	l56
	
l801:	
	line	127
	
l56:	
	return
	opt stack 0
GLOBAL	__end_of_debounce_lo
	__end_of_debounce_lo:
	signat	_debounce_lo,4217
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 93 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Servo\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1
	line	93
global __ptext3
__ptext3:	;psect for function _isr
psect	text3
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\Servo\main.c"
	line	93
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	stack 6
; Regs used in _isr: [wreg+status,2]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+0)
	movf	fsr0,w
	movwf	(??_isr+1)
	movf	pclath,w
	movwf	(??_isr+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_isr+3)
	ljmp	_isr
psect	text3
	line	95
	
i1l567:	
;main.c: 95: if( TMR0IE && TMR0IF ){
	btfss	(93/8),(93)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l46
u1_20:
	
i1l569:	
	btfss	(90/8),(90)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l46
u2_20:
	line	96
	
i1l571:	
;main.c: 96: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	97
	
i1l573:	
;main.c: 97: TMR0 = 0;
	clrf	(1)	;volatile
	line	98
	
i1l575:	
;main.c: 98: update_duty = 1;
	bsf	(_update_duty/8),(_update_duty)&7
	line	100
	
i1l577:	
;main.c: 100: ++ticks;
	movlw	low(01h)
	addwf	(_ticks),f
	skipnc
	incf	(_ticks+1),f
	movlw	high(01h)
	addwf	(_ticks+1),f
	line	104
	
i1l579:	
;main.c: 104: if( ticks == 100 ){
	movlw	064h
	xorwf	(_ticks),w
	iorwf	(_ticks+1),w
	skipz
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l46
u3_20:
	line	105
	
i1l581:	
;main.c: 105: update_state = 1;
	bsf	(_update_state/8),(_update_state)&7
	line	106
	
i1l583:	
;main.c: 106: ticks = 0;
	clrf	(_ticks)
	clrf	(_ticks+1)
	goto	i1l46
	line	107
	
i1l45:	
	goto	i1l46
	line	110
	
i1l585:	
;main.c: 107: }
;main.c: 110: return;
	goto	i1l46
	line	111
	
i1l44:	
	line	112
	
i1l46:	
	movf	(??_isr+3),w
	movwf	btemp+1
	movf	(??_isr+2),w
	movwf	pclath
	movf	(??_isr+1),w
	movwf	fsr0
	swapf	(??_isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
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
