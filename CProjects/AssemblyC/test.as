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
	FNROOT	_main
psect	maintext,global,class=CODE,delta=2,split=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f877a.h"
	line	2758
global __pmaintext
__pmaintext:	;psect for function _main
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
	file	"test.as"
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
;!    COMMON           14      0       0
;!    BANK0            80      0       0
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
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
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
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
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
;;		line 15 in file "C:\Users\Dinusha\Documents\PICProjects\CProjects\AssemblyC\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    5[COMMON] int 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\CProjects\AssemblyC\main.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: []
	line	17
	
l463:	
# 17 "C:\Users\Dinusha\Documents\PICProjects\CProjects\AssemblyC\main.c"
movlw 0x07 ;# 
psect	maintext
	line	20
;main.c: 19: return 0;
;	Return value of _main is never used
	
l6:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
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
