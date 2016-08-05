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
	FNCALL	_main,_set_speed
	FNROOT	_main
	FNCALL	intlevel1,_tc_int
	global	intlevel1
	FNROOT	intlevel1
	global	_CCP1CONbits
_CCP1CONbits	set	0x17
	global	_CCP2CONbits
_CCP2CONbits	set	0x1D
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_PORTC
_PORTC	set	0x7
	global	_T2CON
_T2CON	set	0x12
	global	_T2CONbits
_T2CONbits	set	0x12
	global	_TMR0
_TMR0	set	0x1
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_PR2
_PR2	set	0x92
	global	_TRISC
_TRISC	set	0x87
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
	line	2758
global __ptext0
__ptext0:	;psect for function _tc_int
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
?_set_speed:	; 0 bytes @ 0x0
?_debounce_lo:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	ds	4
??_init:	; 0 bytes @ 0x4
??_debounce_lo:	; 0 bytes @ 0x4
??_set_speed:	; 0 bytes @ 0x4
	global	set_speed@sp
set_speed@sp:	; 1 bytes @ 0x4
	ds	2
	global	debounce_lo@prt
debounce_lo@prt:	; 1 bytes @ 0x6
	ds	1
	global	debounce_lo@count
debounce_lo@count:	; 1 bytes @ 0x7
	ds	1
	global	main@button_pressed
main@button_pressed:	; 1 bytes @ 0x8
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_main:	; 0 bytes @ 0x0
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9       9
;!    BANK0            80      3       3
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
;!Critical Paths under _tc_int in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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
;! (0) _main                                                 4     4      0     145
;!                                              8 COMMON     1     1      0
;!                                              0 BANK0      3     3      0
;!                        _debounce_lo
;!                               _init
;!                          _set_speed
;! ---------------------------------------------------------------------------------
;! (1) _set_speed                                            1     1      0      60
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 2     2      0       0
;!                                              4 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _debounce_lo                                          4     4      0      60
;!                                              4 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _tc_int                                               4     4      0       0
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
;!   _set_speed
;!
;! _tc_int (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      3       3       5        3.8%
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
;;		line 115 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\PWM0\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  button_press    1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   59[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_debounce_lo
;;		_init
;;		_set_speed
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\PWM0\main.c"
	line	115
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\PWM0\main.c"
	line	115
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	118
	
l633:	
;main.c: 118: uint8_t button_pressed = 0;
	clrf	(main@button_pressed)
	line	120
	
l635:	
;main.c: 120: init();
	fcall	_init
	goto	l637
	line	146
;main.c: 146: while( 1 ){
	
l60:	
	line	163
	
l637:	
;main.c: 163: set_speed(1);
	movlw	(01h)
	fcall	_set_speed
	line	164
	
l639:	
;main.c: 164: _delay((unsigned long)((2000)*(20000000/4000.0)));
	opt asmopt_off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	188
movwf	((??_main+0)+0+1),f
	movlw	16
movwf	((??_main+0)+0),f
u177:
	decfsz	((??_main+0)+0),f
	goto	u177
	decfsz	((??_main+0)+0+1),f
	goto	u177
	decfsz	((??_main+0)+0+2),f
	goto	u177
opt asmopt_on

	line	165
	
l641:	
;main.c: 165: set_speed(2);
	movlw	(02h)
	fcall	_set_speed
	line	166
	
l643:	
;main.c: 166: _delay((unsigned long)((2000)*(20000000/4000.0)));
	opt asmopt_off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	188
movwf	((??_main+0)+0+1),f
	movlw	16
movwf	((??_main+0)+0),f
u187:
	decfsz	((??_main+0)+0),f
	goto	u187
	decfsz	((??_main+0)+0+1),f
	goto	u187
	decfsz	((??_main+0)+0+2),f
	goto	u187
opt asmopt_on

	line	167
	
l645:	
;main.c: 167: set_speed(3);
	movlw	(03h)
	fcall	_set_speed
	line	168
	
l647:	
;main.c: 168: _delay((unsigned long)((2000)*(20000000/4000.0)));
	opt asmopt_off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	188
movwf	((??_main+0)+0+1),f
	movlw	16
movwf	((??_main+0)+0),f
u197:
	decfsz	((??_main+0)+0),f
	goto	u197
	decfsz	((??_main+0)+0+1),f
	goto	u197
	decfsz	((??_main+0)+0+2),f
	goto	u197
opt asmopt_on

	line	169
	
l649:	
;main.c: 169: set_speed(4);
	movlw	(04h)
	fcall	_set_speed
	line	170
	
l651:	
;main.c: 170: _delay((unsigned long)((2000)*(20000000/4000.0)));
	opt asmopt_off
movlw  51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	188
movwf	((??_main+0)+0+1),f
	movlw	16
movwf	((??_main+0)+0),f
u207:
	decfsz	((??_main+0)+0),f
	goto	u207
	decfsz	((??_main+0)+0+1),f
	goto	u207
	decfsz	((??_main+0)+0+2),f
	goto	u207
opt asmopt_on

	line	172
	
l653:	
;main.c: 172: if( !button_pressed && debounce_lo( RB1 ) ){
	movf	(main@button_pressed),f
	skipz
	goto	u141
	goto	u140
u141:
	goto	l61
u140:
	
l655:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7	;volatile
	movlw	1
	fcall	_debounce_lo
	xorlw	0
	skipnz
	goto	u151
	goto	u150
u151:
	goto	l61
u150:
	line	173
	
l657:	
;main.c: 173: RB2 = 0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	176
;main.c: 176: button_pressed = 1;
	clrf	(main@button_pressed)
	incf	(main@button_pressed),f
	line	181
;main.c: 181: }else{
	goto	l637
	
l61:	
	line	182
;main.c: 182: RB2 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	183
	
l659:	
;main.c: 183: if(!debounce_lo( RB1 ))
	movlw	0
	btfsc	(49/8),(49)&7	;volatile
	movlw	1
	fcall	_debounce_lo
	iorlw	0
	skipz
	goto	u161
	goto	u160
u161:
	goto	l637
u160:
	line	184
	
l661:	
;main.c: 184: button_pressed = 0;
	clrf	(main@button_pressed)
	goto	l637
	
l63:	
	goto	l637
	line	185
	
l62:	
	goto	l637
	line	188
	
l64:	
	line	146
	goto	l637
	
l65:	
	line	191
;main.c: 185: }
;main.c: 188: }
;main.c: 190: return 0;
;	Return value of _main is never used
	
l66:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_set_speed

;; *************** function _set_speed *****************
;; Defined at:
;;		line 102 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\PWM0\main.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  sp              1    4[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	102
global __ptext1
__ptext1:	;psect for function _set_speed
psect	text1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\PWM0\main.c"
	line	102
	global	__size_of_set_speed
	__size_of_set_speed	equ	__end_of_set_speed-_set_speed
	
_set_speed:	
;incstack = 0
	opt	stack 6
; Regs used in _set_speed: [wreg]
;set_speed@sp stored from wreg
	movwf	(set_speed@sp)
	line	104
	
l587:	
;main.c: 104: if( sp == 1 ){
	movf	(set_speed@sp),w
	xorlw	01h
	skipz
	goto	u71
	goto	u70
u71:
	goto	l591
u70:
	line	105
	
l589:	
;main.c: 105: CCPR1L = 32;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	106
;main.c: 106: }else if( sp == 2 ){
	goto	l57
	
l50:	
	
l591:	
	movf	(set_speed@sp),w
	xorlw	02h
	skipz
	goto	u81
	goto	u80
u81:
	goto	l595
u80:
	line	107
	
l593:	
;main.c: 107: CCPR1L = 64;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	108
;main.c: 108: }else if( sp == 3 ){
	goto	l57
	
l52:	
	
l595:	
	movf	(set_speed@sp),w
	xorlw	03h
	skipz
	goto	u91
	goto	u90
u91:
	goto	l599
u90:
	line	109
	
l597:	
;main.c: 109: CCPR1L = 96;
	movlw	(060h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	110
;main.c: 110: }else if( sp == 4 ){
	goto	l57
	
l54:	
	
l599:	
	movf	(set_speed@sp),w
	xorlw	04h
	skipz
	goto	u101
	goto	u100
u101:
	goto	l57
u100:
	line	111
	
l601:	
;main.c: 111: CCPR1L = 127;
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	goto	l57
	line	112
	
l56:	
	goto	l57
	line	113
	
l55:	
	goto	l57
	
l53:	
	goto	l57
	
l51:	
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_set_speed
	__end_of_set_speed:
	signat	_set_speed,4216
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 15 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\PWM0\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	15
global __ptext2
__ptext2:	;psect for function _init
psect	text2
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\PWM0\main.c"
	line	15
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 6
; Regs used in _init: [wreg+status,2]
	line	23
	
l523:	
;main.c: 23: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	26
	
l525:	
;main.c: 26: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	27
	
l527:	
;main.c: 27: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	31
	
l529:	
;main.c: 31: CCP1CONbits.CCP1M0 = 0;
	bcf	(23),0	;volatile
	line	32
	
l531:	
;main.c: 32: CCP1CONbits.CCP1M1 = 0;
	bcf	(23),1	;volatile
	line	33
	
l533:	
;main.c: 33: CCP1CONbits.CCP1M2 = 1;
	bsf	(23),2	;volatile
	line	34
	
l535:	
;main.c: 34: CCP1CONbits.CCP1M3 = 1;
	bsf	(23),3	;volatile
	line	38
	
l537:	
;main.c: 38: CCP2CONbits.CCP2M0 = 0;
	bcf	(29),0	;volatile
	line	39
	
l539:	
;main.c: 39: CCP2CONbits.CCP2M1 = 0;
	bcf	(29),1	;volatile
	line	40
	
l541:	
;main.c: 40: CCP2CONbits.CCP2M2 = 1;
	bsf	(29),2	;volatile
	line	41
	
l543:	
;main.c: 41: CCP2CONbits.CCP2M3 = 1;
	bsf	(29),3	;volatile
	line	44
;main.c: 44: PR2 = 126;
	movlw	(07Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	47
	
l545:	
;main.c: 47: T2CON = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(18)	;volatile
	line	49
	
l547:	
;main.c: 49: T2CONbits.T2CKPS0 = 1;
	bsf	(18),0	;volatile
	line	50
	
l549:	
;main.c: 50: T2CONbits.T2CKPS1 = 1;
	bsf	(18),1	;volatile
	line	53
	
l551:	
;main.c: 53: CCPR1L = 0x00;
	clrf	(21)	;volatile
	line	55
	
l553:	
;main.c: 55: T2CONbits.TMR2ON = 1;
	bsf	(18),2	;volatile
	line	61
;main.c: 61: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_init+0)+0+1),f
	movlw	238
movwf	((??_init+0)+0),f
u217:
	decfsz	((??_init+0)+0),f
	goto	u217
	decfsz	((??_init+0)+0+1),f
	goto	u217
	nop
opt asmopt_on

	line	74
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_debounce_lo

;; *************** function _debounce_lo *****************
;; Defined at:
;;		line 87 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\PWM0\main.c"
;; Parameters:    Size  Location     Type
;;  prt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prt             1    6[COMMON] unsigned char 
;;  count           1    7[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	87
global __ptext3
__ptext3:	;psect for function _debounce_lo
psect	text3
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\PWM0\main.c"
	line	87
	global	__size_of_debounce_lo
	__size_of_debounce_lo	equ	__end_of_debounce_lo-_debounce_lo
	
_debounce_lo:	
;incstack = 0
	opt	stack 6
; Regs used in _debounce_lo: [wreg+status,2+status,0]
;debounce_lo@prt stored from wreg
	movwf	(debounce_lo@prt)
	line	89
	
l565:	
;main.c: 89: uint8_t count = 0;
	clrf	(debounce_lo@count)
	line	91
	
l567:	
;main.c: 91: if( !prt ){
	movf	(debounce_lo@prt),f
	skipz
	goto	u31
	goto	u30
u31:
	goto	l583
u30:
	goto	l41
	line	92
	
l569:	
;main.c: 92: while( !prt && count < 10 ){
	goto	l41
	
l42:	
	line	93
	
l571:	
;main.c: 93: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_debounce_lo+0)+0+1),f
	movlw	125
movwf	((??_debounce_lo+0)+0),f
u227:
	decfsz	((??_debounce_lo+0)+0),f
	goto	u227
	decfsz	((??_debounce_lo+0)+0+1),f
	goto	u227
opt asmopt_on

	line	94
	
l573:	
;main.c: 94: count++;
	movlw	(01h)
	movwf	(??_debounce_lo+0)+0
	movf	(??_debounce_lo+0)+0,w
	addwf	(debounce_lo@count),f
	line	95
	
l41:	
	line	92
	movf	(debounce_lo@prt),f
	skipz
	goto	u41
	goto	u40
u41:
	goto	l577
u40:
	
l575:	
	movlw	(0Ah)
	subwf	(debounce_lo@count),w
	skipc
	goto	u51
	goto	u50
u51:
	goto	l571
u50:
	goto	l577
	
l44:	
	goto	l577
	
l45:	
	line	96
	
l577:	
;main.c: 95: }
;main.c: 96: if( count == 10 )
	movf	(debounce_lo@count),w
	xorlw	0Ah
	skipz
	goto	u61
	goto	u60
u61:
	goto	l583
u60:
	line	97
	
l579:	
;main.c: 97: return 1;
	movlw	(01h)
	goto	l47
	
l581:	
	goto	l47
	
l46:	
	goto	l583
	line	98
	
l40:	
	line	99
	
l583:	
;main.c: 98: }
;main.c: 99: return 0;
	movlw	(0)
	goto	l47
	
l585:	
	line	100
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_debounce_lo
	__end_of_debounce_lo:
	signat	_debounce_lo,4217
	global	_tc_int

;; *************** function _tc_int *****************
;; Defined at:
;;		line 76 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\PWM0\main.c"
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
psect	text4,local,class=CODE,delta=2,merge=1
	line	76
global __ptext4
__ptext4:	;psect for function _tc_int
psect	text4
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\PWM0\main.c"
	line	76
	global	__size_of_tc_int
	__size_of_tc_int	equ	__end_of_tc_int-_tc_int
	
_tc_int:	
;incstack = 0
	opt	stack 6
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
psect	text4
	line	78
	
i1l555:	
;main.c: 78: if( TMR0IE && TMR0IF ){
	btfss	(93/8),(93)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l37
u1_20:
	
i1l557:	
	btfss	(90/8),(90)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l37
u2_20:
	line	79
	
i1l559:	
;main.c: 79: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	80
	
i1l561:	
;main.c: 80: TMR0 = 0;
	clrf	(1)	;volatile
	goto	i1l37
	line	83
	
i1l563:	
;main.c: 83: return;
	goto	i1l37
	line	84
	
i1l36:	
	line	85
	
i1l37:	
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
