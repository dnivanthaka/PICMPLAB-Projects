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
	FNROOT	_main
	global	_RA1
_RA1	set	0x29
	global	_TRISA
_TRISA	set	0x85
psect	maintext,global,class=CODE,delta=2,split=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f628a.h"
	line	1535
global __pmaintext
__pmaintext:	;psect for function _main
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
	file	"buzzer.as"
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
??_main:	; 0 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
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
;!    COMMON           14      3       3
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK2            48      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0       0
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA              80      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      3       3       1       21.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               50      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0       0       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!BANK2               30      0       0       9        0.0%
;!DATA                 0      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\Buzz00\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] int 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\Buzz00\main.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	9
	
l469:	
;main.c: 9: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	goto	l471
	line	11
;main.c: 11: while(1){
	
l9:	
	line	12
	
l471:	
;main.c: 12: RA1 = 0x1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	13
	
l473:	
;main.c: 13: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_main+0)+0+1),f
	movlw	221
movwf	((??_main+0)+0),f
u17:
	decfsz	((??_main+0)+0),f
	goto	u17
	decfsz	((??_main+0)+0+1),f
	goto	u17
	nop2
opt asmopt_on

	line	14
	
l475:	
;main.c: 14: RA1 = 0x0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	15
	
l477:	
;main.c: 15: _delay((unsigned long)((900)*(4000000/4000.0)));
	opt asmopt_off
movlw  5
movwf	((??_main+0)+0+2),f
movlw	145
movwf	((??_main+0)+0+1),f
	movlw	210
movwf	((??_main+0)+0),f
u27:
	decfsz	((??_main+0)+0),f
	goto	u27
	decfsz	((??_main+0)+0+1),f
	goto	u27
	decfsz	((??_main+0)+0+2),f
	goto	u27
	nop2
opt asmopt_on

	goto	l471
	line	16
	
l10:	
	line	11
	goto	l471
	
l11:	
	line	18
;main.c: 16: }
;main.c: 17: return 0;
;	Return value of _main is never used
	
l12:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
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
