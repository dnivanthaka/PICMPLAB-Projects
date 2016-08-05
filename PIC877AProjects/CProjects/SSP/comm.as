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
	FNCALL	_main,_init
	FNCALL	_main,_read_eeprom
	FNCALL	_main,_ssp_init
	FNCALL	_main,_write_eeprom
	FNROOT	_main
	FNCALL	intlevel1,_tc_int
	global	intlevel1
	FNROOT	intlevel1
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_PIR2bits
_PIR2bits	set	0xD
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_TMR0
_TMR0	set	0x1
	global	_GIE
_GIE	set	0x5F
	global	_RB2
_RB2	set	0x32
	global	_RC6
_RC6	set	0x3E
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_SSPSTATbits
_SSPSTATbits	set	0x94
	global	_TRISB
_TRISB	set	0x86
	global	_TRISCbits
_TRISCbits	set	0x87
	global	_EEADR
_EEADR	set	0x10D
	global	_EEDATA
_EEDATA	set	0x10C
	global	_EECON1bits
_EECON1bits	set	0x18C
	global	_EECON2
_EECON2	set	0x18D
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
	file	"comm.as"
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
?_init:	; 0 bytes @ 0x0
?_tc_int:	; 0 bytes @ 0x0
??_tc_int:	; 0 bytes @ 0x0
?_read_eeprom:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	ds	4
??_ssp_init:	; 0 bytes @ 0x4
??_init:	; 0 bytes @ 0x4
?_write_eeprom:	; 0 bytes @ 0x4
??_read_eeprom:	; 0 bytes @ 0x4
	global	write_eeprom@dta
write_eeprom@dta:	; 1 bytes @ 0x4
	global	read_eeprom@adr
read_eeprom@adr:	; 1 bytes @ 0x4
	ds	1
??_write_eeprom:	; 0 bytes @ 0x5
	global	write_eeprom@adr
write_eeprom@adr:	; 1 bytes @ 0x5
	ds	1
??_main:	; 0 bytes @ 0x6
	ds	3
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	main@button_pressed
main@button_pressed:	; 1 bytes @ 0x0
	ds	1
	global	main@tmp
main@tmp:	; 1 bytes @ 0x1
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x2
	ds	1
	global	main@j
main@j:	; 1 bytes @ 0x3
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
;!    COMMON           14      9       9
;!    BANK0            80      4       4
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
;!    _main->_init
;!    _main->_write_eeprom
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
;! (0) _main                                                 7     7      0     171
;!                                              6 COMMON     3     3      0
;!                                              0 BANK0      4     4      0
;!                               _init
;!                        _read_eeprom
;!                           _ssp_init
;!                       _write_eeprom
;! ---------------------------------------------------------------------------------
;! (1) _write_eeprom                                         2     1      1      97
;!                                              4 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _ssp_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _read_eeprom                                          2     2      0      22
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 2     2      0       0
;!                                              4 COMMON     2     2      0
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
;!   _init
;!   _read_eeprom
;!   _ssp_init
;!   _write_eeprom
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
;!BANK0               50      4       4       5        5.0%
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
;;		line 178 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               1    3[BANK0 ] unsigned char 
;;  i               1    2[BANK0 ] unsigned char 
;;  tmp             1    1[BANK0 ] unsigned char 
;;  button_press    1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   99[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       4       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init
;;		_read_eeprom
;;		_ssp_init
;;		_write_eeprom
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
	line	178
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
	line	178
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	181
	
l706:	
;main.c: 181: uint8_t button_pressed = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@button_pressed)
	line	182
;main.c: 182: uint8_t i = 0, j, tmp;
	clrf	(main@i)
	line	184
	
l708:	
;main.c: 184: init();
	fcall	_init
	line	185
	
l710:	
;main.c: 185: ssp_init();
	fcall	_ssp_init
	line	186
	
l712:	
;main.c: 186: write_eeprom( 0x00, 0x08 );
	movlw	(08h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(write_eeprom@dta)
	movlw	(0)
	fcall	_write_eeprom
	line	188
	
l714:	
;main.c: 188: j = read_eeprom( 0x00 );
	movlw	(0)
	fcall	_read_eeprom
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@j)
	goto	l716
	line	207
;main.c: 207: while( 1 ){
	
l100:	
	line	208
	
l716:	
;main.c: 208: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7	;volatile
	line	210
	
l718:	
;main.c: 210: SSPBUF = j;
	movf	(main@j),w
	movwf	(19)	;volatile
	line	211
;main.c: 211: while( SSPSTATbits.BF == 0 );
	goto	l101
	
l102:	
	
l101:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(148)^080h,0	;volatile
	goto	u171
	goto	u170
u171:
	goto	l101
u170:
	goto	l720
	
l103:	
	line	212
	
l720:	
;main.c: 212: tmp = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@tmp)
	line	213
	
l722:	
;main.c: 213: RB2 = 0x01;
	bsf	(50/8),(50)&7	;volatile
	line	214
	
l724:	
;main.c: 214: RC6 = 1;
	bsf	(62/8),(62)&7	;volatile
	line	215
	
l726:	
;main.c: 215: i++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	line	216
	
l728:	
;main.c: 216: if( i > 3 )
	movlw	(04h)
	subwf	(main@i),w
	skipc
	goto	u181
	goto	u180
u181:
	goto	l104
u180:
	line	217
	
l730:	
;main.c: 217: i = 0;
	clrf	(main@i)
	
l104:	
	line	219
;main.c: 219: j = 0x00;
	clrf	(main@j)
	line	220
	
l732:	
;main.c: 220: j = read_eeprom( 0x00 );
	movlw	(0)
	fcall	_read_eeprom
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@j)
	line	242
	
l734:	
;main.c: 242: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u197:
	decfsz	((??_main+0)+0),f
	goto	u197
	decfsz	((??_main+0)+0+1),f
	goto	u197
	decfsz	((??_main+0)+0+2),f
	goto	u197
	nop
opt asmopt_on

	goto	l716
	line	243
	
l105:	
	line	207
	goto	l716
	
l106:	
	line	246
;main.c: 243: }
;main.c: 245: return 0;
;	Return value of _main is never used
	
l107:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_write_eeprom

;; *************** function _write_eeprom *****************
;; Defined at:
;;		line 135 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
;; Parameters:    Size  Location     Type
;;  adr             1    wreg     unsigned char 
;;  dta             1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adr             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
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
psect	text1,local,class=CODE,delta=2,merge=1
	line	135
global __ptext1
__ptext1:	;psect for function _write_eeprom
psect	text1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
	line	135
	global	__size_of_write_eeprom
	__size_of_write_eeprom	equ	__end_of_write_eeprom-_write_eeprom
	
_write_eeprom:	
;incstack = 0
	opt	stack 6
; Regs used in _write_eeprom: [wreg]
;write_eeprom@adr stored from wreg
	movwf	(write_eeprom@adr)
	line	137
	
l682:	
;main.c: 137: while( EECON1bits.WR == 1 );
	goto	l88
	
l89:	
	
l88:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(396)^0180h,1	;volsfr
	goto	u151
	goto	u150
u151:
	goto	l88
u150:
	goto	l684
	
l90:	
	line	139
	
l684:	
;main.c: 139: EEADR = adr;
	movf	(write_eeprom@adr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	140
;main.c: 140: EEDATA = dta;
	movf	(write_eeprom@dta),w
	movwf	(268)^0100h	;volatile
	line	143
	
l686:	
;main.c: 143: EECON1bits.EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(396)^0180h,7	;volsfr
	line	144
	
l688:	
;main.c: 144: EECON1bits.WREN = 1;
	bsf	(396)^0180h,2	;volsfr
	line	145
	
l690:	
;main.c: 145: (GIE = 0);
	bcf	(95/8),(95)&7	;volatile
	line	150
;main.c: 150: EECON2 = 0x55;
	movlw	(055h)
	movwf	(397)^0180h	;volsfr
	line	151
;main.c: 151: EECON2 = 0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volsfr
	line	152
	
l692:	
;main.c: 152: EECON1bits.WR = 1;
	bsf	(396)^0180h,1	;volsfr
	line	154
	
l694:	
;main.c: 154: (GIE = 1);
	bsf	(95/8),(95)&7	;volatile
	line	155
	
l696:	
;main.c: 155: EECON1bits.WREN = 0;
	bcf	(396)^0180h,2	;volsfr
	line	157
;main.c: 157: while( PIR2bits.EEIF == 0 );
	goto	l91
	
l92:	
	
l91:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(13),4	;volatile
	goto	u161
	goto	u160
u161:
	goto	l91
u160:
	
l93:	
	line	158
;main.c: 158: PIR2bits.EEIF = 0;
	bcf	(13),4	;volatile
	line	160
	
l94:	
	return
	opt stack 0
GLOBAL	__end_of_write_eeprom
	__end_of_write_eeprom:
	signat	_write_eeprom,8312
	global	_ssp_init

;; *************** function _ssp_init *****************
;; Defined at:
;;		line 16 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	16
global __ptext2
__ptext2:	;psect for function _ssp_init
psect	text2
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
	line	16
	global	__size_of_ssp_init
	__size_of_ssp_init	equ	__end_of_ssp_init-_ssp_init
	
_ssp_init:	
;incstack = 0
	opt	stack 6
; Regs used in _ssp_init: [wreg]
	line	19
	
l676:	
;main.c: 19: TRISCbits.TRISC3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h,3	;volatile
	line	21
;main.c: 21: TRISCbits.TRISC4 = 1;
	bsf	(135)^080h,4	;volatile
	line	23
;main.c: 23: TRISCbits.TRISC5 = 0;
	bcf	(135)^080h,5	;volatile
	line	26
;main.c: 26: TRISCbits.TRISC6 = 0;
	bcf	(135)^080h,6	;volatile
	line	28
	
l678:	
;main.c: 28: SSPSTAT = 0x40;
	movlw	(040h)
	movwf	(148)^080h	;volatile
	line	30
;main.c: 30: SSPCON = 0x31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	31
	
l43:	
	return
	opt stack 0
GLOBAL	__end_of_ssp_init
	__end_of_ssp_init:
	signat	_ssp_init,88
	global	_read_eeprom

;; *************** function _read_eeprom *****************
;; Defined at:
;;		line 162 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
;; Parameters:    Size  Location     Type
;;  adr             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adr             1    4[COMMON] unsigned char 
;;  tmp             1    0        unsigned char 
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
psect	text3,local,class=CODE,delta=2,merge=1
	line	162
global __ptext3
__ptext3:	;psect for function _read_eeprom
psect	text3
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
	line	162
	global	__size_of_read_eeprom
	__size_of_read_eeprom	equ	__end_of_read_eeprom-_read_eeprom
	
_read_eeprom:	
;incstack = 0
	opt	stack 6
; Regs used in _read_eeprom: [wreg]
;read_eeprom@adr stored from wreg
	movwf	(read_eeprom@adr)
	line	166
	
l698:	
;main.c: 164: uint8_t tmp;
;main.c: 166: EEADR = adr;
	movf	(read_eeprom@adr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	169
	
l700:	
;main.c: 169: EECON1bits.EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(396)^0180h,7	;volsfr
	line	172
	
l702:	
;main.c: 172: EECON1bits.RD = 1;
	bsf	(396)^0180h,0	;volsfr
	line	175
;main.c: 175: return EEDATA;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	goto	l97
	
l704:	
	line	176
	
l97:	
	return
	opt stack 0
GLOBAL	__end_of_read_eeprom
	__end_of_read_eeprom:
	signat	_read_eeprom,4217
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 60 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
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
psect	text4,local,class=CODE,delta=2,merge=1
	line	60
global __ptext4
__ptext4:	;psect for function _init
psect	text4
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
	line	60
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 6
; Regs used in _init: [wreg]
	line	63
	
l680:	
;main.c: 63: TRISB = 0x81;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	68
;main.c: 68: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	81
;main.c: 81: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_init+0)+0+1),f
	movlw	238
movwf	((??_init+0)+0),f
u207:
	decfsz	((??_init+0)+0),f
	goto	u207
	decfsz	((??_init+0)+0+1),f
	goto	u207
	nop
opt asmopt_on

	line	94
	
l61:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_tc_int

;; *************** function _tc_int *****************
;; Defined at:
;;		line 96 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
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
	line	96
global __ptext5
__ptext5:	;psect for function _tc_int
psect	text5
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\SSP\main.c"
	line	96
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
psect	text5
	line	98
	
i1l580:	
;main.c: 98: if( TMR0IE && TMR0IF ){
	btfss	(93/8),(93)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l65
u2_20:
	
i1l582:	
	btfss	(90/8),(90)&7	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l65
u3_20:
	line	99
	
i1l584:	
;main.c: 99: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	100
	
i1l586:	
;main.c: 100: TMR0 = 0;
	clrf	(1)	;volatile
	goto	i1l65
	line	103
	
i1l588:	
;main.c: 103: return;
	goto	i1l65
	line	104
	
i1l64:	
	line	105
	
i1l65:	
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
