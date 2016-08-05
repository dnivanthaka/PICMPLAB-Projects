opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 55553"

opt pagewidth 120

	opt lm

	processor	16F690
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
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
INDF equ 00h ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PCL equ 02h ;# 
# 64 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
FSR equ 04h ;# 
# 157 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PORTA equ 05h ;# 
# 206 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PORTB equ 06h ;# 
# 244 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PORTC equ 07h ;# 
# 305 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PCLATH equ 0Ah ;# 
# 311 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
INTCON equ 0Bh ;# 
# 372 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PIR1 equ 0Ch ;# 
# 441 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PIR2 equ 0Dh ;# 
# 479 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
TMR1 equ 0Eh ;# 
# 485 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
TMR1L equ 0Eh ;# 
# 491 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
TMR1H equ 0Fh ;# 
# 497 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
T1CON equ 010h ;# 
# 567 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
TMR2 equ 011h ;# 
# 573 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
T2CON equ 012h ;# 
# 643 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
SSPBUF equ 013h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
SSPCON equ 014h ;# 
# 718 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
CCPR equ 015h ;# 
# 724 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
CCPR1L equ 015h ;# 
# 730 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
CCPR1H equ 016h ;# 
# 736 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
CCP1CON equ 017h ;# 
# 817 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
RCSTA equ 018h ;# 
# 878 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
TXREG equ 019h ;# 
# 884 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
RCREG equ 01Ah ;# 
# 890 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PWM1CON equ 01Ch ;# 
# 959 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
ECCPAS equ 01Dh ;# 
# 1040 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
ADRESH equ 01Eh ;# 
# 1046 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
ADCON0 equ 01Fh ;# 
# 1140 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
OPTION_REG equ 081h ;# 
# 1209 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
TRISA equ 085h ;# 
# 1258 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
TRISB equ 086h ;# 
# 1296 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
TRISC equ 087h ;# 
# 1357 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PIE1 equ 08Ch ;# 
# 1426 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PIE2 equ 08Dh ;# 
# 1464 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PCON equ 08Eh ;# 
# 1502 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
OSCCON equ 08Fh ;# 
# 1566 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
OSCTUNE equ 090h ;# 
# 1617 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PR2 equ 092h ;# 
# 1623 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
SSPADD equ 093h ;# 
# 1629 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
SSPMSK equ 093h ;# 
# 1634 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
MSK equ 093h ;# 
# 1750 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
SSPSTAT equ 094h ;# 
# 1918 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
WPUA equ 095h ;# 
# 1923 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
WPU equ 095h ;# 
# 2071 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
IOCA equ 096h ;# 
# 2076 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
IOC equ 096h ;# 
# 2244 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
WDTCON equ 097h ;# 
# 2296 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
TXSTA equ 098h ;# 
# 2366 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
SPBRG equ 099h ;# 
# 2427 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
SPBRGH equ 09Ah ;# 
# 2488 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
BAUDCTL equ 09Bh ;# 
# 2539 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
ADRESL equ 09Eh ;# 
# 2545 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
ADCON1 equ 09Fh ;# 
# 2586 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
EEDAT equ 010Ch ;# 
# 2591 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
EEDATA equ 010Ch ;# 
# 2597 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
EEADR equ 010Dh ;# 
# 2603 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
EEDATH equ 010Eh ;# 
# 2609 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
EEADRH equ 010Fh ;# 
# 2615 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
WPUB equ 0115h ;# 
# 2662 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
IOCB equ 0116h ;# 
# 2700 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
VRCON equ 0118h ;# 
# 2769 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
CM1CON0 equ 0119h ;# 
# 2833 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
CM2CON0 equ 011Ah ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
CM2CON1 equ 011Bh ;# 
# 2935 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
ANSEL equ 011Eh ;# 
# 2996 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
ANSELH equ 011Fh ;# 
# 3033 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
EECON1 equ 018Ch ;# 
# 3077 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
EECON2 equ 018Dh ;# 
# 3083 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
PSTRCON equ 019Dh ;# 
# 3126 "C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
SRCON equ 019Eh ;# 
	FNCALL	_main,_init
	FNCALL	_main,_read_transaction
	FNCALL	_main,_ssp_init
	FNROOT	_main
	global	_PORTC
_PORTC	set	0x7
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_RC6
_RC6	set	0x3E
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_SSPSTATbits
_SSPSTATbits	set	0x94
	global	_TRISBbits
_TRISBbits	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISCbits
_TRISCbits	set	0x87
	global	_ANSEL
_ANSEL	set	0x11E
	global	_ANSELH
_ANSELH	set	0x11F
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f690.h"
	line	3793
global __ptext0
__ptext0:	;psect for function _init
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
	file	"slave.as"
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
?_ssp_init:	; 0 bytes @ 0x0
??_ssp_init:	; 0 bytes @ 0x0
??_read_transaction:	; 0 bytes @ 0x0
?_init:	; 0 bytes @ 0x0
??_init:	; 0 bytes @ 0x0
?_read_transaction:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
read_transaction@pin:	; 1 bytes @ 0x0
	ds	1
	global	read_transaction@tmp
read_transaction@tmp:	; 1 bytes @ 0x1
	ds	1
??_main:	; 0 bytes @ 0x2
	ds	1
	global	main@button_pressed
main@button_pressed:	; 1 bytes @ 0x3
	ds	1
	global	main@tmp
main@tmp:	; 1 bytes @ 0x4
	ds	1
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
;!    COMMON           14      5       5
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_read_transaction
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0      30
;!                                              2 COMMON     3     3      0
;!                               _init
;!                   _read_transaction
;!                           _ssp_init
;! ---------------------------------------------------------------------------------
;! (1) _ssp_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _read_transaction                                     3     3      0      15
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _init
;!   _read_transaction
;!   _ssp_init
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       5       1       35.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               50      0       0       3        0.0%
;!BITBANK1            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK1               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK2            50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0       0       8        0.0%
;!BITBANK0            50      0       0       9        0.0%
;!DATA                 0      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 157 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP_Slave\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tmp             1    4[COMMON] unsigned char 
;;  button_press    1    3[COMMON] unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   72[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_init
;;		_read_transaction
;;		_ssp_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP_Slave\main.c"
	line	157
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP_Slave\main.c"
	line	157
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	160
	
l581:	
;main.c: 160: uint8_t button_pressed = 0;
	clrf	(main@button_pressed)
	line	161
;main.c: 161: uint8_t i, tmp = 0x00;
	clrf	(main@tmp)
	line	163
	
l583:	
;main.c: 163: init();
	fcall	_init
	line	164
	
l585:	
;main.c: 164: ssp_init();
	fcall	_ssp_init
	goto	l587
	line	181
;main.c: 181: while( 1 ){
	
l73:	
	line	200
	
l587:	
;main.c: 200: tmp = read_transaction( RC6 );
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(62/8),(62)&7	;volatile
	movlw	1
	fcall	_read_transaction
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@tmp)
	line	201
	
l589:	
;main.c: 201: PORTC = tmp;
	movf	(main@tmp),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l587
	line	223
	
l74:	
	line	181
	goto	l587
	
l75:	
	line	226
;main.c: 223: }
;main.c: 225: return 0;
;	Return value of _main is never used
	
l76:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_ssp_init

;; *************** function _ssp_init *****************
;; Defined at:
;;		line 17 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP_Slave\main.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	17
global __ptext1
__ptext1:	;psect for function _ssp_init
psect	text1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP_Slave\main.c"
	line	17
	global	__size_of_ssp_init
	__size_of_ssp_init	equ	__end_of_ssp_init-_ssp_init
	
_ssp_init:	
;incstack = 0
	opt	stack 7
; Regs used in _ssp_init: [wreg]
	line	20
	
l533:	
;main.c: 20: TRISBbits.TRISB6 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(134)^080h,6	;volatile
	line	22
;main.c: 22: TRISBbits.TRISB4 = 1;
	bsf	(134)^080h,4	;volatile
	line	24
;main.c: 24: TRISCbits.TRISC7 = 0;
	bcf	(135)^080h,7	;volatile
	line	26
;main.c: 26: TRISCbits.TRISC6 = 1;
	bsf	(135)^080h,6	;volatile
	line	28
	
l535:	
;main.c: 28: SSPSTAT = 0x40;
	movlw	(040h)
	movwf	(148)^080h	;volatile
	line	30
;main.c: 30: SSPCON = 0x34;
	movlw	(034h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	32
	
l27:	
	return
	opt stack 0
GLOBAL	__end_of_ssp_init
	__end_of_ssp_init:
	signat	_ssp_init,88
	global	_read_transaction

;; *************** function _read_transaction *****************
;; Defined at:
;;		line 70 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP_Slave\main.c"
;; Parameters:    Size  Location     Type
;;  pin             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pin             1    0[COMMON] unsigned char 
;;  tmp             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	70
global __ptext2
__ptext2:	;psect for function _read_transaction
psect	text2
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP_Slave\main.c"
	line	70
	global	__size_of_read_transaction
	__size_of_read_transaction	equ	__end_of_read_transaction-_read_transaction
	
_read_transaction:	
;incstack = 0
	opt	stack 7
; Regs used in _read_transaction: [wreg+status,2]
	line	72
	
l557:	
;main.c: 72: uint8_t tmp = 0;
	clrf	(read_transaction@tmp)
	line	76
;main.c: 76: SSPBUF = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	77
;main.c: 77: while( !SSPSTATbits.BF );
	goto	l54
	
l55:	
	
l54:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(148)^080h,0	;volatile
	goto	u41
	goto	u40
u41:
	goto	l54
u40:
	goto	l559
	
l56:	
	line	78
	
l559:	
;main.c: 78: tmp = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_read_transaction+0)+0
	movf	(??_read_transaction+0)+0,w
	movwf	(read_transaction@tmp)
	line	81
;main.c: 81: return tmp;
	movf	(read_transaction@tmp),w
	goto	l57
	
l561:	
	line	82
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_read_transaction
	__end_of_read_transaction:
	signat	_read_transaction,4217
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 84 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP_Slave\main.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	84
global __ptext3
__ptext3:	;psect for function _init
psect	text3
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP_Slave\main.c"
	line	84
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 7
; Regs used in _init: [status,2]
	line	121
	
l563:	
;main.c: 121: ANSEL = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h	;volatile
	line	122
;main.c: 122: ANSELH = 0x00;
	clrf	(287)^0100h	;volatile
	line	123
;main.c: 123: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	125
;main.c: 125: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	127
	
l60:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
global	___latbits
___latbits	equ	1
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
