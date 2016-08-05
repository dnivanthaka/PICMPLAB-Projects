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
	FNCALL	_main,_ds18b20_busy
	FNCALL	_main,_ds18b20_init
	FNCALL	_main,_ds18b20_read_byte
	FNCALL	_main,_ds18b20_write_byte
	FNCALL	_main,_init
	FNCALL	_main,_itoa
	FNCALL	_main,_serial_tx_newline
	FNCALL	_main,_serial_tx_print
	FNCALL	_main,_serial_tx_printline
	FNCALL	_serial_tx_printline,_serial_tx_poll
	FNCALL	_serial_tx_printline,_serial_tx_print
	FNCALL	_serial_tx_print,_serial_tx_poll
	FNCALL	_serial_tx_newline,_serial_tx_poll
	FNCALL	_itoa,_utoa
	FNCALL	_utoa,___lwdiv
	FNCALL	_utoa,___lwmod
	FNCALL	_init,_serial_init
	FNROOT	_main
	FNCALL	intlevel1,_tc_int
	global	intlevel1
	FNROOT	intlevel1
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
	
STR_3:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	0
psect	strings
STR_4	equ	STR_3+0
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
	file	"read.as"
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
?_serial_init:	; 0 bytes @ 0x0
?_ds18b20_write_byte:	; 0 bytes @ 0x0
?_serial_tx_newline:	; 0 bytes @ 0x0
?_init:	; 0 bytes @ 0x0
?_tc_int:	; 0 bytes @ 0x0
??_tc_int:	; 0 bytes @ 0x0
?_serial_tx_poll:	; 0 bytes @ 0x0
?_ds18b20_init:	; 1 bytes @ 0x0
?_ds18b20_busy:	; 1 bytes @ 0x0
?_ds18b20_read_byte:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	ds	4
??_serial_init:	; 0 bytes @ 0x4
??_ds18b20_init:	; 0 bytes @ 0x4
??_ds18b20_write_byte:	; 0 bytes @ 0x4
??_ds18b20_busy:	; 0 bytes @ 0x4
??_ds18b20_read_byte:	; 0 bytes @ 0x4
??_init:	; 0 bytes @ 0x4
??_serial_tx_poll:	; 0 bytes @ 0x4
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x4
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x4
	global	serial_tx_poll@val
serial_tx_poll@val:	; 1 bytes @ 0x4
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x4
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x4
	ds	1
??_serial_tx_newline:	; 0 bytes @ 0x5
?_serial_tx_print:	; 0 bytes @ 0x5
	global	ds18b20_busy@busy
ds18b20_busy@busy:	; 1 bytes @ 0x5
	global	serial_tx_print@str
serial_tx_print@str:	; 2 bytes @ 0x5
	ds	1
	global	ds18b20_init@ok
ds18b20_init@ok:	; 1 bytes @ 0x6
	global	ds18b20_read_byte@dta
ds18b20_read_byte@dta:	; 1 bytes @ 0x6
	global	ds18b20_write_byte@i
ds18b20_write_byte@i:	; 2 bytes @ 0x6
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x6
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x6
	ds	1
?_serial_tx_printline:	; 0 bytes @ 0x7
??_serial_tx_print:	; 0 bytes @ 0x7
	global	serial_tx_printline@str
serial_tx_printline@str:	; 2 bytes @ 0x7
	global	ds18b20_read_byte@i
ds18b20_read_byte@i:	; 2 bytes @ 0x7
	ds	1
??___lwdiv:	; 0 bytes @ 0x8
??___lwmod:	; 0 bytes @ 0x8
	global	ds18b20_write_byte@dta
ds18b20_write_byte@dta:	; 1 bytes @ 0x8
	ds	1
??_serial_tx_printline:	; 0 bytes @ 0x9
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x9
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x0
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x2
	ds	1
?_utoa:	; 1 bytes @ 0x3
	global	utoa@val
utoa@val:	; 2 bytes @ 0x3
	ds	2
	global	utoa@base
utoa@base:	; 2 bytes @ 0x5
	ds	2
??_utoa:	; 0 bytes @ 0x7
	ds	1
	global	utoa@v
utoa@v:	; 2 bytes @ 0x8
	ds	2
	global	utoa@c
utoa@c:	; 1 bytes @ 0xA
	ds	1
	global	utoa@buf
utoa@buf:	; 1 bytes @ 0xB
	ds	1
?_itoa:	; 1 bytes @ 0xC
	global	itoa@val
itoa@val:	; 2 bytes @ 0xC
	ds	2
	global	itoa@base
itoa@base:	; 2 bytes @ 0xE
	ds	2
??_itoa:	; 0 bytes @ 0x10
	ds	1
	global	itoa@cp
itoa@cp:	; 1 bytes @ 0x11
	ds	1
	global	itoa@buf
itoa@buf:	; 1 bytes @ 0x12
	ds	1
??_main:	; 0 bytes @ 0x13
	ds	4
	global	main@rh_str
main@rh_str:	; 1 bytes @ 0x17
	ds	1
	global	main@b4
main@b4:	; 1 bytes @ 0x18
	ds	1
	global	main@b5
main@b5:	; 1 bytes @ 0x19
	ds	1
	global	main@b3
main@b3:	; 1 bytes @ 0x1A
	ds	1
	global	main@buff
main@buff:	; 4 bytes @ 0x1B
	ds	4
	global	main@tp_str
main@tp_str:	; 1 bytes @ 0x1F
	ds	1
	global	main@b1
main@b1:	; 1 bytes @ 0x20
	ds	1
	global	main@b2
main@b2:	; 1 bytes @ 0x21
	ds	1
	global	main@res
main@res:	; 1 bytes @ 0x22
	ds	1
;!
;!Data Sizes:
;!    Strings     39
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      10
;!    BANK0            80     35      35
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
;!    serial_tx_printline@str	PTR unsigned char  size(2) Largest target is 4
;!		 -> main@buff(BANK0[4]), STR_4(CODE[3]), STR_3(CODE[3]), 
;!
;!    serial_tx_print@str	PTR unsigned char  size(2) Largest target is 15
;!		 -> main@buff(BANK0[4]), STR_4(CODE[3]), STR_3(CODE[3]), STR_2(CODE[15]), 
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


;!
;!Critical Paths under _main in COMMON
;!
;!    _serial_tx_printline->_serial_tx_print
;!    _serial_tx_print->_serial_tx_poll
;!    _serial_tx_newline->_serial_tx_poll
;!    _utoa->___lwmod
;!
;!Critical Paths under _tc_int in COMMON
;!
;!    None.
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                17    17      0    2372
;!                                             19 BANK0     16    16      0
;!                       _ds18b20_busy
;!                       _ds18b20_init
;!                  _ds18b20_read_byte
;!                 _ds18b20_write_byte
;!                               _init
;!                               _itoa
;!                  _serial_tx_newline
;!                    _serial_tx_print
;!                _serial_tx_printline
;! ---------------------------------------------------------------------------------
;! (1) _serial_tx_printline                                  2     0      2     376
;!                                              7 COMMON     2     0      2
;!                     _serial_tx_poll
;!                    _serial_tx_print
;! ---------------------------------------------------------------------------------
;! (2) _serial_tx_print                                      2     0      2     173
;!                                              5 COMMON     2     0      2
;!                     _serial_tx_poll
;! ---------------------------------------------------------------------------------
;! (1) _serial_tx_newline                                    0     0      0      22
;!                     _serial_tx_poll
;! ---------------------------------------------------------------------------------
;! (3) _serial_tx_poll                                       1     1      0      22
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _itoa                                                 7     3      4    1370
;!                                             12 BANK0      7     3      4
;!                               _utoa
;! ---------------------------------------------------------------------------------
;! (2) _utoa                                                 9     5      4    1074
;!                                              3 BANK0      9     5      4
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     265
;!                                              4 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     374
;!                                              4 COMMON     5     1      4
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;!                        _serial_init
;! ---------------------------------------------------------------------------------
;! (2) _serial_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ds18b20_write_byte                                   5     5      0      91
;!                                              4 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _ds18b20_read_byte                                    5     5      0     115
;!                                              4 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _ds18b20_init                                         3     3      0      25
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _ds18b20_busy                                         2     2      0      25
;!                                              4 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _tc_int                                               4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ds18b20_busy
;!   _ds18b20_init
;!   _ds18b20_read_byte
;!   _ds18b20_write_byte
;!   _init
;!     _serial_init
;!   _itoa
;!     _utoa
;!       ___lwdiv
;!       ___lwmod
;!   _serial_tx_newline
;!     _serial_tx_poll
;!   _serial_tx_print
;!     _serial_tx_poll
;!   _serial_tx_printline
;!     _serial_tx_poll
;!     _serial_tx_print
;!       _serial_tx_poll
;!
;! _tc_int (ROOT)
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
;!BANK0               50     23      23       5       43.8%
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
;;		line 245 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buff            4   27[BANK0 ] unsigned char [4]
;;  res             1   34[BANK0 ] unsigned char 
;;  b2              1   33[BANK0 ] unsigned char 
;;  b1              1   32[BANK0 ] unsigned char 
;;  tp_str          1   31[BANK0 ] PTR unsigned char 
;;		 -> STR_2(15), 
;;  b3              1   26[BANK0 ] unsigned char 
;;  b5              1   25[BANK0 ] unsigned char 
;;  b4              1   24[BANK0 ] unsigned char 
;;  rh_str          1   23[BANK0 ] PTR unsigned char 
;;		 -> STR_1(21), 
;;  ch              1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   43[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ds18b20_busy
;;		_ds18b20_init
;;		_ds18b20_read_byte
;;		_ds18b20_write_byte
;;		_init
;;		_itoa
;;		_serial_tx_newline
;;		_serial_tx_print
;;		_serial_tx_printline
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\main.c"
	line	245
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\main.c"
	line	245
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [allreg]
	line	247
	
l961:	
;main.c: 247: char *rh_str = "Relative Humidity : ";
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@rh_str)
	line	248
;main.c: 248: char *tp_str = "Temperature : ";
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@tp_str)
	line	254
	
l963:	
;main.c: 250: char buff[4];
;main.c: 251: char ch;
;main.c: 252: uint8_t res, b1, b2, b3, b4, b5;
;main.c: 254: init();
	fcall	_init
	line	261
	
l965:	
;main.c: 261: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u747:
	decfsz	((??_main+0)+0),f
	goto	u747
	decfsz	((??_main+0)+0+1),f
	goto	u747
	decfsz	((??_main+0)+0+2),f
	goto	u747
	nop
opt asmopt_on

	line	263
	
l967:	
;main.c: 263: res = ds18b20_init();
	fcall	_ds18b20_init
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@res)
	line	264
	
l969:	
;main.c: 264: if(res == 1){
	movf	(main@res),w
	xorlw	01h
	skipz
	goto	u391
	goto	u390
u391:
	goto	l973
u390:
	line	265
	
l971:	
;main.c: 265: serial_tx_printline( "OK" );
	movlw	low((STR_3-__stringbase))
	movwf	(serial_tx_printline@str)
	movlw	80h
	movwf	(serial_tx_printline@str+1)
	fcall	_serial_tx_printline
	goto	l973
	line	266
	
l44:	
	line	267
	
l973:	
;main.c: 266: }
;main.c: 267: ds18b20_write_byte( 0xCC );
	movlw	(0CCh)
	fcall	_ds18b20_write_byte
	line	268
	
l975:	
;main.c: 268: ds18b20_write_byte( 0x44 );
	movlw	(044h)
	fcall	_ds18b20_write_byte
	line	272
;main.c: 272: while( ds18b20_busy() == 1 );
	goto	l977
	
l46:	
	goto	l977
	
l45:	
	
l977:	
	fcall	_ds18b20_busy
	xorlw	01h
	skipnz
	goto	u401
	goto	u400
u401:
	goto	l977
u400:
	goto	l979
	
l47:	
	goto	l979
	line	282
;main.c: 282: while( 1 ){
	
l48:	
	line	295
	
l979:	
;main.c: 295: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u757:
	decfsz	((??_main+0)+0),f
	goto	u757
	decfsz	((??_main+0)+0+1),f
	goto	u757
	decfsz	((??_main+0)+0+2),f
	goto	u757
	nop
opt asmopt_on

	line	297
	
l981:	
;main.c: 297: res = ds18b20_init();
	fcall	_ds18b20_init
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@res)
	line	298
	
l983:	
;main.c: 298: if(res == 1){
	movf	(main@res),w
	xorlw	01h
	skipz
	goto	u411
	goto	u410
u411:
	goto	l987
u410:
	line	299
	
l985:	
;main.c: 299: serial_tx_printline( "OK" );
	movlw	low((STR_4-__stringbase))
	movwf	(serial_tx_printline@str)
	movlw	80h
	movwf	(serial_tx_printline@str+1)
	fcall	_serial_tx_printline
	goto	l987
	line	300
	
l49:	
	line	301
	
l987:	
;main.c: 300: }
;main.c: 301: ds18b20_write_byte( 0xCC );
	movlw	(0CCh)
	fcall	_ds18b20_write_byte
	line	302
	
l989:	
;main.c: 302: ds18b20_write_byte( 0x44 );
	movlw	(044h)
	fcall	_ds18b20_write_byte
	line	313
;main.c: 313: while( ds18b20_busy() == 1 );
	goto	l991
	
l51:	
	goto	l991
	
l50:	
	
l991:	
	fcall	_ds18b20_busy
	xorlw	01h
	skipnz
	goto	u421
	goto	u420
u421:
	goto	l991
u420:
	goto	l993
	
l52:	
	line	343
	
l993:	
;main.c: 343: res = ds18b20_init();
	fcall	_ds18b20_init
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@res)
	line	346
	
l995:	
;main.c: 346: ds18b20_write_byte( 0xCC );
	movlw	(0CCh)
	fcall	_ds18b20_write_byte
	line	347
	
l997:	
;main.c: 347: ds18b20_write_byte( 0xBE );
	movlw	(0BEh)
	fcall	_ds18b20_write_byte
	line	353
	
l999:	
;main.c: 353: b1 = ds18b20_read_byte();
	fcall	_ds18b20_read_byte
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@b1)
	line	354
	
l1001:	
;main.c: 354: b2 = ds18b20_read_byte();
	fcall	_ds18b20_read_byte
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@b2)
	line	355
	
l1003:	
;main.c: 355: b3 = ds18b20_read_byte();
	fcall	_ds18b20_read_byte
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@b3)
	line	356
	
l1005:	
;main.c: 356: b4 = ds18b20_read_byte();
	fcall	_ds18b20_read_byte
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@b4)
	line	357
	
l1007:	
;main.c: 357: b5 = ds18b20_read_byte();
	fcall	_ds18b20_read_byte
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@b5)
	line	358
	
l1009:	
;main.c: 358: ds18b20_read_byte();
	fcall	_ds18b20_read_byte
	line	359
	
l1011:	
;main.c: 359: ds18b20_read_byte();
	fcall	_ds18b20_read_byte
	line	360
	
l1013:	
;main.c: 360: ds18b20_read_byte();
	fcall	_ds18b20_read_byte
	line	361
	
l1015:	
;main.c: 361: ds18b20_read_byte();
	fcall	_ds18b20_read_byte
	line	372
	
l1017:	
;main.c: 372: serial_tx_newline();
	fcall	_serial_tx_newline
	line	373
	
l1019:	
;main.c: 373: serial_tx_print(tp_str);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@tp_str),w
	movwf	(serial_tx_print@str)
	movlw	80h
	movwf	(serial_tx_print@str+1)
	fcall	_serial_tx_print
	line	374
	
l1021:	
;main.c: 374: itoa(buff, ((b1 >> 4) & 0x0F) | ((b2 & 0x07) << 4), 10);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b2),w
	andlw	07h
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	swapf	(??_main+0)+0,f
	swapf	(??_main+0)+1,f
	movlw	0f0h
	andwf	(??_main+0)+1,f
	movf	(??_main+0)+0,w
	andlw	0fh
	iorwf	(??_main+0)+1,f
	movlw	0f0h
	andwf	(??_main+0)+0,f
	movf	(main@b1),w
	movwf	(??_main+2)+0
	movlw	04h
u435:
	clrc
	rrf	(??_main+2)+0,f
	addlw	-1
	skipz
	goto	u435
	movlw	(0Fh)
	andwf	0+(??_main+2)+0,w
	movwf	(??_main+3)+0
	movf	0+(??_main+0)+0,w
	iorwf	0+(??_main+3)+0,w
	movwf	(itoa@val)
	movf	1+(??_main+0)+0,w
	movwf	1+(itoa@val)
	movlw	low(0Ah)
	movwf	(itoa@base)
	movlw	high(0Ah)
	movwf	((itoa@base))+1
	movlw	(main@buff)&0ffh
	fcall	_itoa
	line	377
	
l1023:	
;main.c: 377: serial_tx_printline(&buff);
	movlw	(main@buff&0ffh)
	movwf	(serial_tx_printline@str)
	movlw	(0x0/2)
	movwf	(serial_tx_printline@str+1)
	fcall	_serial_tx_printline
	line	378
	
l1025:	
;main.c: 378: b1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b1)
	line	379
	
l1027:	
;main.c: 379: b2 = 0;
	clrf	(main@b2)
	line	380
	
l1029:	
;main.c: 380: b3 = 0;
	clrf	(main@b3)
	line	393
	
l1031:	
;main.c: 393: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u767:
	decfsz	((??_main+0)+0),f
	goto	u767
	decfsz	((??_main+0)+0+1),f
	goto	u767
	decfsz	((??_main+0)+0+2),f
	goto	u767
	nop
opt asmopt_on

	goto	l979
	line	394
	
l53:	
	line	282
	goto	l979
	
l54:	
	line	397
;main.c: 394: }
;main.c: 396: return 0;
;	Return value of _main is never used
	
l55:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_serial_tx_printline

;; *************** function _serial_tx_printline *****************
;; Defined at:
;;		line 57 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
;; Parameters:    Size  Location     Type
;;  str             2    7[COMMON] PTR unsigned char 
;;		 -> main@buff(4), STR_4(3), STR_3(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
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
;;		_serial_tx_poll
;;		_serial_tx_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
	line	57
global __ptext1
__ptext1:	;psect for function _serial_tx_printline
psect	text1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
	line	57
	global	__size_of_serial_tx_printline
	__size_of_serial_tx_printline	equ	__end_of_serial_tx_printline-_serial_tx_printline
	
_serial_tx_printline:	
;incstack = 0
	opt	stack 4
; Regs used in _serial_tx_printline: [allreg]
	line	59
	
l1055:	
;serial.c: 59: serial_tx_print( str );
	movf	(serial_tx_printline@str+1),w
	clrf	(serial_tx_print@str+1)
	addwf	(serial_tx_print@str+1)
	movf	(serial_tx_printline@str),w
	clrf	(serial_tx_print@str)
	addwf	(serial_tx_print@str)

	fcall	_serial_tx_print
	line	62
	
l1057:	
;serial.c: 62: serial_tx_poll( 0x0D );
	movlw	(0Dh)
	fcall	_serial_tx_poll
	line	64
	
l1059:	
;serial.c: 64: serial_tx_poll( 0x0A );
	movlw	(0Ah)
	fcall	_serial_tx_poll
	line	65
	
l85:	
	return
	opt stack 0
GLOBAL	__end_of_serial_tx_printline
	__end_of_serial_tx_printline:
	signat	_serial_tx_printline,4216
	global	_serial_tx_print

;; *************** function _serial_tx_print *****************
;; Defined at:
;;		line 49 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
;; Parameters:    Size  Location     Type
;;  str             2    5[COMMON] PTR unsigned char 
;;		 -> main@buff(4), STR_4(3), STR_3(3), STR_2(15), 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_serial_tx_poll
;; This function is called by:
;;		_main
;;		_serial_tx_printline
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	49
global __ptext2
__ptext2:	;psect for function _serial_tx_print
psect	text2
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
	line	49
	global	__size_of_serial_tx_print
	__size_of_serial_tx_print	equ	__end_of_serial_tx_print-_serial_tx_print
	
_serial_tx_print:	
;incstack = 0
	opt	stack 4
; Regs used in _serial_tx_print: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	51
	
l1151:	
;serial.c: 51: while( *(str) != '\0' ){
	goto	l1157
	
l80:	
	line	52
	
l1153:	
;serial.c: 53: str = str++;
	movf	(serial_tx_print@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(serial_tx_print@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_serial_tx_poll
	line	53
	
l1155:	
	movlw	01h
	addwf	(serial_tx_print@str),f
	skipnc
	incf	(serial_tx_print@str+1),f
	goto	l1157
	line	54
	
l79:	
	line	51
	
l1157:	
	movf	(serial_tx_print@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(serial_tx_print@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u541
	goto	u540
u541:
	goto	l1153
u540:
	goto	l82
	
l81:	
	line	55
	
l82:	
	return
	opt stack 0
GLOBAL	__end_of_serial_tx_print
	__end_of_serial_tx_print:
	signat	_serial_tx_print,4216
	global	_serial_tx_newline

;; *************** function _serial_tx_newline *****************
;; Defined at:
;;		line 67 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_serial_tx_poll
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	67
global __ptext3
__ptext3:	;psect for function _serial_tx_newline
psect	text3
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
	line	67
	global	__size_of_serial_tx_newline
	__size_of_serial_tx_newline	equ	__end_of_serial_tx_newline-_serial_tx_newline
	
_serial_tx_newline:	
;incstack = 0
	opt	stack 5
; Regs used in _serial_tx_newline: [wreg+status,2+status,0+pclath+cstack]
	line	70
	
l1149:	
;serial.c: 70: serial_tx_poll( 0x0D );
	movlw	(0Dh)
	fcall	_serial_tx_poll
	line	72
;serial.c: 72: serial_tx_poll( 0x0A );
	movlw	(0Ah)
	fcall	_serial_tx_poll
	line	73
	
l88:	
	return
	opt stack 0
GLOBAL	__end_of_serial_tx_newline
	__end_of_serial_tx_newline:
	signat	_serial_tx_newline,88
	global	_serial_tx_poll

;; *************** function _serial_tx_poll *****************
;; Defined at:
;;		line 32 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    4[COMMON] unsigned char 
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
;;		_serial_tx_print
;;		_serial_tx_printline
;;		_serial_tx_newline
;;		_serial_rx_readline
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	32
global __ptext4
__ptext4:	;psect for function _serial_tx_poll
psect	text4
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
	line	32
	global	__size_of_serial_tx_poll
	__size_of_serial_tx_poll	equ	__end_of_serial_tx_poll-_serial_tx_poll
	
_serial_tx_poll:	
;incstack = 0
	opt	stack 4
; Regs used in _serial_tx_poll: [wreg]
;serial_tx_poll@val stored from wreg
	movwf	(serial_tx_poll@val)
	line	34
	
l1173:	
;serial.c: 34: while( PIR1bits.TXIF == 0 );
	goto	l67
	
l68:	
	
l67:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u561
	goto	u560
u561:
	goto	l67
u560:
	goto	l1175
	
l69:	
	line	36
	
l1175:	
;serial.c: 36: TXREG = val;
	movf	(serial_tx_poll@val),w
	movwf	(25)	;volatile
	line	37
	
l70:	
	return
	opt stack 0
GLOBAL	__end_of_serial_tx_poll
	__end_of_serial_tx_poll:
	signat	_serial_tx_poll,4216
	global	_itoa

;; *************** function _itoa *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\itoa.c"
;; Parameters:    Size  Location     Type
;;  buf             1    wreg     PTR unsigned char 
;;		 -> main@buff(4), 
;;  val             2   12[BANK0 ] int 
;;  base            2   14[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  buf             1   18[BANK0 ] PTR unsigned char 
;;		 -> main@buff(4), 
;;  cp              1   17[BANK0 ] PTR unsigned char 
;;		 -> main@buff(4), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_utoa
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\itoa.c"
	line	4
global __ptext5
__ptext5:	;psect for function _itoa
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\itoa.c"
	line	4
	global	__size_of_itoa
	__size_of_itoa	equ	__end_of_itoa-_itoa
	
_itoa:	
;incstack = 0
	opt	stack 4
; Regs used in _itoa: [allreg]
;itoa@buf stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(itoa@buf)
	line	6
	
l1159:	
	movf	(itoa@buf),w
	movwf	(??_itoa+0)+0
	movf	(??_itoa+0)+0,w
	movwf	(itoa@cp)
	line	8
	
l1161:	
	btfss	(itoa@val+1),7
	goto	u551
	goto	u550
u551:
	goto	l1169
u550:
	line	9
	
l1163:	
	movlw	(02Dh)
	movwf	(??_itoa+0)+0
	movf	(itoa@buf),w
	movwf	fsr0
	movf	(??_itoa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1165:	
	movlw	(01h)
	movwf	(??_itoa+0)+0
	movf	(??_itoa+0)+0,w
	addwf	(itoa@buf),f
	line	10
	
l1167:	
	comf	(itoa@val),f
	comf	(itoa@val+1),f
	incf	(itoa@val),f
	skipnz
	incf	(itoa@val+1),f
	goto	l1169
	line	11
	
l447:	
	line	12
	
l1169:	
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
	goto	l448
	line	13
	
l1171:	
	line	14
;	Return value of _itoa is never used
	
l448:	
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
;;  val             2    3[BANK0 ] unsigned int 
;;  base            2    5[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  buf             1   11[BANK0 ] PTR unsigned char 
;;		 -> main@buff(4), 
;;  v               2    8[BANK0 ] unsigned int 
;;  c               1   10[BANK0 ] unsigned char 
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_itoa
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	17
global __ptext6
__ptext6:	;psect for function _utoa
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\itoa.c"
	line	17
	global	__size_of_utoa
	__size_of_utoa	equ	__end_of_utoa-_utoa
	
_utoa:	
;incstack = 0
	opt	stack 4
; Regs used in _utoa: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;utoa@buf stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(utoa@buf)
	line	22
	
l1183:	
	movf	(utoa@val+1),w
	clrf	(utoa@v+1)
	addwf	(utoa@v+1)
	movf	(utoa@val),w
	clrf	(utoa@v)
	addwf	(utoa@v)

	goto	l1185
	line	23
	
l451:	
	line	24
	
l1185:	
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
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(utoa@v+1)
	addwf	(utoa@v+1)
	movf	(0+(?___lwdiv)),w
	clrf	(utoa@v)
	addwf	(utoa@v)

	line	25
	
l1187:	
	movlw	(01h)
	movwf	(??_utoa+0)+0
	movf	(??_utoa+0)+0,w
	addwf	(utoa@buf),f
	line	26
	
l1189:	
	movf	((utoa@v+1)),w
	iorwf	((utoa@v)),w
	skipz
	goto	u581
	goto	u580
u581:
	goto	l1185
u580:
	goto	l1191
	
l452:	
	line	27
	
l1191:	
	movf	(utoa@buf),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	
l1193:	
	movlw	low(01h)
	subwf	(utoa@buf),f
	goto	l1195
	line	28
	
l453:	
	line	29
	
l1195:	
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
	movf	(0+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_utoa+0)+0
	movf	(??_utoa+0)+0,w
	movwf	(utoa@c)
	line	30
	
l1197:	
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
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(utoa@val+1)
	addwf	(utoa@val+1)
	movf	(0+(?___lwdiv)),w
	clrf	(utoa@val)
	addwf	(utoa@val)

	line	31
	
l1199:	
	movlw	(0Ah)
	subwf	(utoa@c),w
	skipc
	goto	u591
	goto	u590
u591:
	goto	l454
u590:
	line	32
	
l1201:	
	movlw	(07h)
	movwf	(??_utoa+0)+0
	movf	(??_utoa+0)+0,w
	addwf	(utoa@c),f
	
l454:	
	line	33
	movlw	(030h)
	movwf	(??_utoa+0)+0
	movf	(??_utoa+0)+0,w
	addwf	(utoa@c),f
	line	34
	
l1203:	
	movf	(utoa@c),w
	movwf	(??_utoa+0)+0
	movf	(utoa@buf),w
	movwf	fsr0
	movf	(??_utoa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1205:	
	movlw	low(01h)
	subwf	(utoa@buf),f
	line	35
	
l1207:	
	movf	((utoa@val+1)),w
	iorwf	((utoa@val)),w
	skipz
	goto	u601
	goto	u600
u601:
	goto	l1195
u600:
	goto	l1209
	
l455:	
	line	36
	
l1209:	
;	Return value of _utoa is never used
	movlw	(01h)
	movwf	(??_utoa+0)+0
	movf	(??_utoa+0)+0,w
	addwf	(utoa@buf),f
	goto	l456
	
l1211:	
	line	37
	
l456:	
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
;;  divisor         2    4[COMMON] unsigned int 
;;  dividend        2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_utoa
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwmod.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___lwmod
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1239:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u681
	goto	u680
u681:
	goto	l1257
u680:
	line	14
	
l1241:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1247
	
l551:	
	line	16
	
l1243:	
	movlw	01h
	
u695:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u695
	line	17
	
l1245:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1247
	line	18
	
l550:	
	line	15
	
l1247:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u701
	goto	u700
u701:
	goto	l1243
u700:
	goto	l1249
	
l552:	
	goto	l1249
	line	19
	
l553:	
	line	20
	
l1249:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u715
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u715:
	skipc
	goto	u711
	goto	u710
u711:
	goto	l1253
u710:
	line	21
	
l1251:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1253
	
l554:	
	line	22
	
l1253:	
	movlw	01h
	
u725:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u725
	line	23
	
l1255:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u731
	goto	u730
u731:
	goto	l1249
u730:
	goto	l1257
	
l555:	
	goto	l1257
	line	24
	
l549:	
	line	25
	
l1257:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l556
	
l1259:	
	line	26
	
l556:	
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
;;  divisor         2    4[COMMON] unsigned int 
;;  dividend        2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    0[BANK0 ] unsigned int 
;;  counter         1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       3       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_utoa
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___lwdiv
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1213:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1215:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u611
	goto	u610
u611:
	goto	l1235
u610:
	line	16
	
l1217:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1223
	
l541:	
	line	18
	
l1219:	
	movlw	01h
	
u625:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u625
	line	19
	
l1221:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1223
	line	20
	
l540:	
	line	17
	
l1223:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u631
	goto	u630
u631:
	goto	l1219
u630:
	goto	l1225
	
l542:	
	goto	l1225
	line	21
	
l543:	
	line	22
	
l1225:	
	movlw	01h
	
u645:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u645
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u655
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u655:
	skipc
	goto	u651
	goto	u650
u651:
	goto	l1231
u650:
	line	24
	
l1227:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1229:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1231
	line	26
	
l544:	
	line	27
	
l1231:	
	movlw	01h
	
u665:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u665
	line	28
	
l1233:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u671
	goto	u670
u671:
	goto	l1225
u670:
	goto	l1235
	
l545:	
	goto	l1235
	line	29
	
l539:	
	line	30
	
l1235:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l546
	
l1237:	
	line	31
	
l546:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 17 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_serial_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\main.c"
	line	17
global __ptext9
__ptext9:	;psect for function _init
psect	text9
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\main.c"
	line	17
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 5
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l941:	
;main.c: 23: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	25
;main.c: 25: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	26
	
l943:	
;main.c: 26: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	29
	
l945:	
;main.c: 29: OPTION_REGbits.T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h,5	;volatile
	line	30
	
l947:	
;main.c: 30: OPTION_REGbits.T0SE = 0;
	bcf	(129)^080h,4	;volatile
	line	31
	
l949:	
;main.c: 31: OPTION_REGbits.PSA = 0;
	bcf	(129)^080h,3	;volatile
	line	34
	
l951:	
;main.c: 34: OPTION_REGbits.PS0 = 0;
	bcf	(129)^080h,0	;volatile
	line	35
	
l953:	
;main.c: 35: OPTION_REGbits.PS1 = 0;
	bcf	(129)^080h,1	;volatile
	line	36
	
l955:	
;main.c: 36: OPTION_REGbits.PS2 = 1;
	bsf	(129)^080h,2	;volatile
	line	38
	
l957:	
;main.c: 38: serial_init();
	fcall	_serial_init
	line	63
	
l37:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_serial_init

;; *************** function _serial_init *****************
;; Defined at:
;;		line 5 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
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
;;		_init
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
	line	5
global __ptext10
__ptext10:	;psect for function _serial_init
psect	text10
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
	line	5
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
;incstack = 0
	opt	stack 5
; Regs used in _serial_init: []
	line	9
	
l959:	
# 9 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
banksel TXREG ;# 
	line	10
# 10 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
clrf TXREG ;# 
	line	11
# 11 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
banksel RCREG ;# 
	line	12
# 12 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
clrf RCREG ;# 
	line	15
# 15 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
banksel SPBRG ;# 
	line	16
# 16 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
movlw 0x40 ;# 
	line	17
# 17 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
movwf SPBRG ;# 
	line	20
# 20 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
banksel TXSTA ;# 
	line	21
# 21 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
movlw 0x24 ;# 
	line	22
# 22 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
movwf TXSTA ;# 
	line	26
# 26 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
banksel RCSTA ;# 
	line	27
# 27 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
movlw 0x90 ;# 
	line	28
# 28 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\serial.c"
movwf RCSTA ;# 
psect	text10
	line	30
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
	signat	_serial_init,88
	global	_ds18b20_write_byte

;; *************** function _ds18b20_write_byte *****************
;; Defined at:
;;		line 34 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\ds18b20.c"
;; Parameters:    Size  Location     Type
;;  dta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dta             1    8[COMMON] unsigned char 
;;  i               2    6[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\ds18b20.c"
	line	34
global __ptext11
__ptext11:	;psect for function _ds18b20_write_byte
psect	text11
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\ds18b20.c"
	line	34
	global	__size_of_ds18b20_write_byte
	__size_of_ds18b20_write_byte	equ	__end_of_ds18b20_write_byte-_ds18b20_write_byte
	
_ds18b20_write_byte:	
;incstack = 0
	opt	stack 6
; Regs used in _ds18b20_write_byte: [wreg+status,2+status,0+btemp+1]
;ds18b20_write_byte@dta stored from wreg
	movwf	(ds18b20_write_byte@dta)
	line	36
	
l1061:	
;ds18b20.c: 36: for( int i=0;i<8;i++ ){
	clrf	(ds18b20_write_byte@i)
	clrf	(ds18b20_write_byte@i+1)
	
l1063:	
	movf	(ds18b20_write_byte@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u455
	movlw	low(08h)
	subwf	(ds18b20_write_byte@i),w
u455:

	skipc
	goto	u451
	goto	u450
u451:
	goto	l108
u450:
	goto	l112
	
l1065:	
	goto	l112
	
l108:	
	line	38
;ds18b20.c: 38: if( (dta & 0x01) == 0 ){
	btfsc	(ds18b20_write_byte@dta),(0)&7
	goto	u461
	goto	u460
u461:
	goto	l110
u460:
	line	40
	
l1067:	
;ds18b20.c: 40: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	41
	
l1069:	
;ds18b20.c: 41: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	43
	
l1071:	
;ds18b20.c: 43: _delay((unsigned long)((60)*(20000000/4000000.0)));
	opt asmopt_off
movlw	99
movwf	(??_ds18b20_write_byte+0)+0,f
u777:
decfsz	(??_ds18b20_write_byte+0)+0,f
	goto	u777
	nop2	;nop
opt asmopt_on

	line	45
	
l1073:	
;ds18b20.c: 45: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	47
	
l1075:	
;ds18b20.c: 47: _delay((unsigned long)((2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	(??_ds18b20_write_byte+0)+0,f
u787:
decfsz	(??_ds18b20_write_byte+0)+0,f
	goto	u787
opt asmopt_on

	line	48
;ds18b20.c: 48: }else{
	goto	l1087
	
l110:	
	line	50
;ds18b20.c: 50: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	51
	
l1077:	
;ds18b20.c: 51: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	53
	
l1079:	
;ds18b20.c: 53: _delay((unsigned long)((10)*(20000000/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ds18b20_write_byte+0)+0,f
u797:
decfsz	(??_ds18b20_write_byte+0)+0,f
	goto	u797
	nop
opt asmopt_on

	line	55
	
l1081:	
;ds18b20.c: 55: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	56
	
l1083:	
;ds18b20.c: 56: _delay((unsigned long)((50)*(20000000/4000000.0)));
	opt asmopt_off
movlw	83
movwf	(??_ds18b20_write_byte+0)+0,f
u807:
decfsz	(??_ds18b20_write_byte+0)+0,f
	goto	u807
opt asmopt_on

	line	58
	
l1085:	
;ds18b20.c: 58: _delay((unsigned long)((2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	(??_ds18b20_write_byte+0)+0,f
u817:
decfsz	(??_ds18b20_write_byte+0)+0,f
	goto	u817
opt asmopt_on

	goto	l1087
	line	59
	
l111:	
	line	61
	
l1087:	
;ds18b20.c: 59: }
;ds18b20.c: 61: dta = dta >> 1;
	movf	(ds18b20_write_byte@dta),w
	movwf	(??_ds18b20_write_byte+0)+0
	clrc
	rrf	(??_ds18b20_write_byte+0)+0,w
	movwf	(??_ds18b20_write_byte+1)+0
	movf	(??_ds18b20_write_byte+1)+0,w
	movwf	(ds18b20_write_byte@dta)
	line	36
	
l1089:	
	movlw	low(01h)
	addwf	(ds18b20_write_byte@i),f
	skipnc
	incf	(ds18b20_write_byte@i+1),f
	movlw	high(01h)
	addwf	(ds18b20_write_byte@i+1),f
	
l1091:	
	movf	(ds18b20_write_byte@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u475
	movlw	low(08h)
	subwf	(ds18b20_write_byte@i),w
u475:

	skipc
	goto	u471
	goto	u470
u471:
	goto	l108
u470:
	goto	l112
	
l109:	
	line	63
	
l112:	
	return
	opt stack 0
GLOBAL	__end_of_ds18b20_write_byte
	__end_of_ds18b20_write_byte:
	signat	_ds18b20_write_byte,4216
	global	_ds18b20_read_byte

;; *************** function _ds18b20_read_byte *****************
;; Defined at:
;;		line 65 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\ds18b20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    7[COMMON] int 
;;  dta             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	65
global __ptext12
__ptext12:	;psect for function _ds18b20_read_byte
psect	text12
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\ds18b20.c"
	line	65
	global	__size_of_ds18b20_read_byte
	__size_of_ds18b20_read_byte	equ	__end_of_ds18b20_read_byte-_ds18b20_read_byte
	
_ds18b20_read_byte:	
;incstack = 0
	opt	stack 6
; Regs used in _ds18b20_read_byte: [wreg+status,2+status,0+btemp+1]
	line	67
	
l1117:	
;ds18b20.c: 67: uint8_t dta = 0;
	clrf	(ds18b20_read_byte@dta)
	line	69
;ds18b20.c: 69: for( int i=0;i<8;i++ ){
	clrf	(ds18b20_read_byte@i)
	clrf	(ds18b20_read_byte@i+1)
	
l1119:	
	movf	(ds18b20_read_byte@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u495
	movlw	low(08h)
	subwf	(ds18b20_read_byte@i),w
u495:

	skipc
	goto	u491
	goto	u490
u491:
	goto	l115
u490:
	goto	l1145
	
l1121:	
	goto	l1145
	
l115:	
	line	71
;ds18b20.c: 71: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	72
	
l1123:	
;ds18b20.c: 72: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	74
	
l1125:	
;ds18b20.c: 74: _delay((unsigned long)((2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	(??_ds18b20_read_byte+0)+0,f
u827:
decfsz	(??_ds18b20_read_byte+0)+0,f
	goto	u827
opt asmopt_on

	line	75
	
l1127:	
;ds18b20.c: 75: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	76
	
l1129:	
;ds18b20.c: 76: _delay((unsigned long)((10)*(20000000/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ds18b20_read_byte+0)+0,f
u837:
decfsz	(??_ds18b20_read_byte+0)+0,f
	goto	u837
	nop
opt asmopt_on

	line	77
	
l1131:	
;ds18b20.c: 77: if( RA0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7	;volatile
	goto	u501
	goto	u500
u501:
	goto	l1135
u500:
	line	78
	
l1133:	
;ds18b20.c: 78: dta |= 1 << i;
	movlw	(01h)
	movwf	(??_ds18b20_read_byte+0)+0
	incf	(ds18b20_read_byte@i),w
	goto	u514
u515:
	clrc
	rlf	(??_ds18b20_read_byte+0)+0,f
u514:
	addlw	-1
	skipz
	goto	u515
	movf	0+(??_ds18b20_read_byte+0)+0,w
	movwf	(??_ds18b20_read_byte+1)+0
	movf	(??_ds18b20_read_byte+1)+0,w
	iorwf	(ds18b20_read_byte@dta),f
	line	79
;ds18b20.c: 79: }else{
	goto	l1137
	
l117:	
	line	80
	
l1135:	
;ds18b20.c: 80: dta |= 0 << i;
	movlw	(0)
	movwf	(??_ds18b20_read_byte+0)+0
	incf	(ds18b20_read_byte@i),w
	goto	u524
u525:
	clrc
	rlf	(??_ds18b20_read_byte+0)+0,f
u524:
	addlw	-1
	skipz
	goto	u525
	movf	0+(??_ds18b20_read_byte+0)+0,w
	movwf	(??_ds18b20_read_byte+1)+0
	movf	(??_ds18b20_read_byte+1)+0,w
	iorwf	(ds18b20_read_byte@dta),f
	goto	l1137
	line	81
	
l118:	
	line	83
	
l1137:	
;ds18b20.c: 81: }
;ds18b20.c: 83: _delay((unsigned long)((50)*(20000000/4000000.0)));
	opt asmopt_off
movlw	83
movwf	(??_ds18b20_read_byte+0)+0,f
u847:
decfsz	(??_ds18b20_read_byte+0)+0,f
	goto	u847
opt asmopt_on

	line	85
	
l1139:	
;ds18b20.c: 85: _delay((unsigned long)((2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	(??_ds18b20_read_byte+0)+0,f
u857:
decfsz	(??_ds18b20_read_byte+0)+0,f
	goto	u857
opt asmopt_on

	line	69
	
l1141:	
	movlw	low(01h)
	addwf	(ds18b20_read_byte@i),f
	skipnc
	incf	(ds18b20_read_byte@i+1),f
	movlw	high(01h)
	addwf	(ds18b20_read_byte@i+1),f
	
l1143:	
	movf	(ds18b20_read_byte@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u535
	movlw	low(08h)
	subwf	(ds18b20_read_byte@i),w
u535:

	skipc
	goto	u531
	goto	u530
u531:
	goto	l115
u530:
	goto	l1145
	
l116:	
	line	87
	
l1145:	
;ds18b20.c: 86: }
;ds18b20.c: 87: return dta;
	movf	(ds18b20_read_byte@dta),w
	goto	l119
	
l1147:	
	line	88
	
l119:	
	return
	opt stack 0
GLOBAL	__end_of_ds18b20_read_byte
	__end_of_ds18b20_read_byte:
	signat	_ds18b20_read_byte,89
	global	_ds18b20_init

;; *************** function _ds18b20_init *****************
;; Defined at:
;;		line 6 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\ds18b20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ok              1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	6
global __ptext13
__ptext13:	;psect for function _ds18b20_init
psect	text13
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\ds18b20.c"
	line	6
	global	__size_of_ds18b20_init
	__size_of_ds18b20_init	equ	__end_of_ds18b20_init-_ds18b20_init
	
_ds18b20_init:	
;incstack = 0
	opt	stack 6
; Regs used in _ds18b20_init: [wreg+status,2]
	line	8
	
l1033:	
;ds18b20.c: 8: uint8_t ok = 0;
	clrf	(ds18b20_init@ok)
	line	10
	
l1035:	
;ds18b20.c: 10: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	11
	
l1037:	
;ds18b20.c: 11: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	13
	
l1039:	
;ds18b20.c: 13: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	14
	
l1041:	
;ds18b20.c: 14: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	17
;ds18b20.c: 17: _delay((unsigned long)((480)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ds18b20_init+0)+0+1),f
	movlw	28
movwf	((??_ds18b20_init+0)+0),f
u867:
	decfsz	((??_ds18b20_init+0)+0),f
	goto	u867
	decfsz	((??_ds18b20_init+0)+0+1),f
	goto	u867
	nop
opt asmopt_on

	line	19
;ds18b20.c: 19: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	22
;ds18b20.c: 22: _delay((unsigned long)((80)*(20000000/4000000.0)));
	opt asmopt_off
movlw	133
movwf	(??_ds18b20_init+0)+0,f
u877:
decfsz	(??_ds18b20_init+0)+0,f
	goto	u877
opt asmopt_on

	line	24
	
l1043:	
;ds18b20.c: 24: if( !RA0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7	;volatile
	goto	u441
	goto	u440
u441:
	goto	l1047
u440:
	line	25
	
l1045:	
;ds18b20.c: 25: ok = 1;
	clrf	(ds18b20_init@ok)
	incf	(ds18b20_init@ok),f
	line	26
;ds18b20.c: 26: }else{
	goto	l1049
	
l103:	
	line	27
	
l1047:	
;ds18b20.c: 27: ok = 0;
	clrf	(ds18b20_init@ok)
	goto	l1049
	line	28
	
l104:	
	line	30
	
l1049:	
;ds18b20.c: 28: }
;ds18b20.c: 30: _delay((unsigned long)((400)*(20000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	((??_ds18b20_init+0)+0+1),f
	movlw	151
movwf	((??_ds18b20_init+0)+0),f
u887:
	decfsz	((??_ds18b20_init+0)+0),f
	goto	u887
	decfsz	((??_ds18b20_init+0)+0+1),f
	goto	u887
	nop2
opt asmopt_on

	line	31
	
l1051:	
;ds18b20.c: 31: return ok;
	movf	(ds18b20_init@ok),w
	goto	l105
	
l1053:	
	line	32
	
l105:	
	return
	opt stack 0
GLOBAL	__end_of_ds18b20_init
	__end_of_ds18b20_init:
	signat	_ds18b20_init,89
	global	_ds18b20_busy

;; *************** function _ds18b20_busy *****************
;; Defined at:
;;		line 90 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\ds18b20.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  busy            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	90
global __ptext14
__ptext14:	;psect for function _ds18b20_busy
psect	text14
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\ds18b20.c"
	line	90
	global	__size_of_ds18b20_busy
	__size_of_ds18b20_busy	equ	__end_of_ds18b20_busy-_ds18b20_busy
	
_ds18b20_busy:	
;incstack = 0
	opt	stack 6
; Regs used in _ds18b20_busy: [wreg+status,2]
	line	92
	
l1093:	
;ds18b20.c: 92: uint8_t busy = 0;
	clrf	(ds18b20_busy@busy)
	line	95
	
l1095:	
;ds18b20.c: 95: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	96
;ds18b20.c: 96: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	98
	
l1097:	
;ds18b20.c: 98: _delay((unsigned long)((2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	(??_ds18b20_busy+0)+0,f
u897:
decfsz	(??_ds18b20_busy+0)+0,f
	goto	u897
opt asmopt_on

	line	99
	
l1099:	
;ds18b20.c: 99: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	100
	
l1101:	
;ds18b20.c: 100: _delay((unsigned long)((10)*(20000000/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_ds18b20_busy+0)+0,f
u907:
decfsz	(??_ds18b20_busy+0)+0,f
	goto	u907
	nop
opt asmopt_on

	line	101
	
l1103:	
;ds18b20.c: 101: if( !RA0 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7	;volatile
	goto	u481
	goto	u480
u481:
	goto	l1107
u480:
	line	102
	
l1105:	
;ds18b20.c: 102: busy = 1;
	clrf	(ds18b20_busy@busy)
	incf	(ds18b20_busy@busy),f
	line	103
;ds18b20.c: 103: }else{
	goto	l1109
	
l122:	
	line	104
	
l1107:	
;ds18b20.c: 104: busy = 0;
	clrf	(ds18b20_busy@busy)
	goto	l1109
	line	105
	
l123:	
	line	107
	
l1109:	
;ds18b20.c: 105: }
;ds18b20.c: 107: _delay((unsigned long)((50)*(20000000/4000000.0)));
	opt asmopt_off
movlw	83
movwf	(??_ds18b20_busy+0)+0,f
u917:
decfsz	(??_ds18b20_busy+0)+0,f
	goto	u917
opt asmopt_on

	line	109
	
l1111:	
;ds18b20.c: 109: _delay((unsigned long)((2)*(20000000/4000000.0)));
	opt asmopt_off
movlw	3
movwf	(??_ds18b20_busy+0)+0,f
u927:
decfsz	(??_ds18b20_busy+0)+0,f
	goto	u927
opt asmopt_on

	line	113
	
l1113:	
;ds18b20.c: 113: return busy;
	movf	(ds18b20_busy@busy),w
	goto	l124
	
l1115:	
	line	114
	
l124:	
	return
	opt stack 0
GLOBAL	__end_of_ds18b20_busy
	__end_of_ds18b20_busy:
	signat	_ds18b20_busy,89
	global	_tc_int

;; *************** function _tc_int *****************
;; Defined at:
;;		line 123 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\main.c"
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
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\main.c"
	line	123
global __ptext15
__ptext15:	;psect for function _tc_int
psect	text15
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\DS18B20\main.c"
	line	123
	global	__size_of_tc_int
	__size_of_tc_int	equ	__end_of_tc_int-_tc_int
	
_tc_int:	
;incstack = 0
	opt	stack 4
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
psect	text15
	line	125
	
i1l663:	
;main.c: 125: if( TMR0IE && TMR0IF ){
	btfss	(93/8),(93)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l41
u1_20:
	
i1l665:	
	btfss	(90/8),(90)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l41
u2_20:
	line	126
	
i1l667:	
;main.c: 126: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	127
	
i1l669:	
;main.c: 127: TMR0 = 0;
	clrf	(1)	;volatile
	goto	i1l41
	line	130
	
i1l671:	
;main.c: 130: return;
	goto	i1l41
	line	131
	
i1l40:	
	line	132
	
i1l41:	
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
