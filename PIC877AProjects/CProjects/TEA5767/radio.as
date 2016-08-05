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
	FNCALL	_main,_debounce_lo
	FNCALL	_main,_init
	FNCALL	_main,_print_freq
	FNCALL	_main,_print_mode
	FNCALL	_main,_print_signal_level
	FNCALL	_main,_tea5767_init
	FNCALL	_main,_tea5767_read
	FNCALL	_main,_tea5767_search_up
	FNCALL	_tea5767_search_up,_tea5767_search
	FNCALL	_tea5767_search,___ftadd
	FNCALL	_tea5767_search,___ftge
	FNCALL	_tea5767_search,___ftneg
	FNCALL	_tea5767_search,_serial_tx_printline
	FNCALL	_tea5767_search,_tea5767_getfreq
	FNCALL	_tea5767_search,_tea5767_getpll
	FNCALL	_tea5767_search,_tea5767_read
	FNCALL	_tea5767_search,_tea5767_round_freq
	FNCALL	_tea5767_search,_tea5767_tune
	FNCALL	_tea5767_search,_tea5767_write
	FNCALL	_tea5767_tune,_tea5767_getpll
	FNCALL	_tea5767_tune,_tea5767_write
	FNCALL	_tea5767_round_freq,___ftdiv
	FNCALL	_tea5767_round_freq,___ftmul
	FNCALL	_tea5767_round_freq,_ceil
	FNCALL	_tea5767_read,_i2c_read_data
	FNCALL	_tea5767_read,_i2c_send_ack
	FNCALL	_tea5767_read,_i2c_send_controlbyte
	FNCALL	_tea5767_read,_i2c_send_nack
	FNCALL	_tea5767_read,_i2c_start
	FNCALL	_tea5767_read,_i2c_stop
	FNCALL	_tea5767_read,_serial_tx_printline
	FNCALL	_tea5767_getfreq,___awtoft
	FNCALL	_tea5767_getfreq,___ftadd
	FNCALL	_tea5767_getfreq,___ftdiv
	FNCALL	_tea5767_getfreq,___ftmul
	FNCALL	_tea5767_getfreq,_ceil
	FNCALL	_ceil,___altoft
	FNCALL	_ceil,___ftadd
	FNCALL	_ceil,___ftge
	FNCALL	_ceil,___fttol
	FNCALL	_ceil,_frexp
	FNCALL	___awtoft,___ftpack
	FNCALL	_tea5767_init,_tea5767_getpll
	FNCALL	_tea5767_init,_tea5767_write
	FNCALL	_tea5767_write,_i2c_send_controlbyte
	FNCALL	_tea5767_write,_i2c_send_data
	FNCALL	_tea5767_write,_i2c_start
	FNCALL	_tea5767_write,_i2c_stop
	FNCALL	_tea5767_write,_serial_tx_printline
	FNCALL	_serial_tx_printline,_serial_tx_poll
	FNCALL	_serial_tx_printline,_serial_tx_print
	FNCALL	_serial_tx_print,_serial_tx_poll
	FNCALL	_tea5767_getpll,___ftadd
	FNCALL	_tea5767_getpll,___ftdiv
	FNCALL	_tea5767_getpll,___ftmul
	FNCALL	_tea5767_getpll,___fttol
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_print_signal_level,_hd44780_block_erase
	FNCALL	_print_signal_level,_hd44780_printint
	FNCALL	_print_signal_level,_tea5767_signal_level
	FNCALL	_hd44780_printint,_hd44780_printstr
	FNCALL	_hd44780_printint,_sprintf
	FNCALL	_print_mode,_hd44780_printstr
	FNCALL	_print_mode,_tea5767_mode
	FNCALL	_print_freq,___awdiv
	FNCALL	_print_freq,___wmul
	FNCALL	_print_freq,_hd44780_block_erase
	FNCALL	_print_freq,_hd44780_printdecimal
	FNCALL	_print_freq,_tea5767_tuned_freq
	FNCALL	_tea5767_tuned_freq,___ftmul
	FNCALL	_tea5767_tuned_freq,___fttol
	FNCALL	_tea5767_tuned_freq,___wmul
	FNCALL	_tea5767_tuned_freq,_trunc
	FNCALL	_trunc,___altoft
	FNCALL	_trunc,___fttol
	FNCALL	_trunc,_frexp
	FNCALL	___altoft,___ftpack
	FNCALL	_hd44780_printdecimal,_hd44780_printstr
	FNCALL	_hd44780_printdecimal,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_hd44780_printstr,_hd44780_char
	FNCALL	_hd44780_printstr,_hd44780_newline
	FNCALL	_hd44780_printstr,_hd44780_write
	FNCALL	_hd44780_newline,_hd44780_write
	FNCALL	_hd44780_block_erase,_hd44780_char
	FNCALL	_hd44780_block_erase,_hd44780_write
	FNCALL	_hd44780_char,_hd44780_write
	FNCALL	_init,_hd44780_init
	FNCALL	_init,_serial_init
	FNCALL	_hd44780_init,_hd44780_busy
	FNCALL	_hd44780_init,_hd44780_pulse
	FNCALL	_hd44780_init,_hd44780_write
	FNCALL	_hd44780_write,_hd44780_busy
	FNCALL	_hd44780_write,_hd44780_pulse
	FNCALL	___ftmul,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_tc_int
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_MUTE_ON
psect	strings
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.h"
	line	8
_MUTE_ON:
	retlw	080h
	global __end_of_MUTE_ON
__end_of_MUTE_ON:
	global	_SM_ON
psect	strings
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.h"
	line	9
_SM_ON:
	retlw	040h
	global __end_of_SM_ON
__end_of_SM_ON:
	global	_STBY
psect	strings
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.h"
	line	11
_STBY:
	retlw	040h
	global __end_of_STBY
__end_of_STBY:
	global	_SUD_UP
psect	strings
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.h"
	line	10
_SUD_UP:
	retlw	080h
	global __end_of_SUD_UP
__end_of_SUD_UP:
	global	_dpowers
	global	_MUTE_ON
	global	_SM_ON
	global	_STBY
	global	_SUD_UP
	global	_errno
	global	print_signal_level@prev_lvl
	global	_rs_flag
	global	tea5767@commandbytes
	global	tea5767@responsebytes
	global	tea5767@current_freq
	global	print_freq@dec
	global	_buff
	global	_commandbytes
	global	_responsebytes
	global	_current_freq
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTE
_PORTE	set	0x9
	global	_RCREG
_RCREG	set	0x1A
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_TMR0
_TMR0	set	0x1
	global	_TXREG
_TXREG	set	0x19
	global	_RA3
_RA3	set	0x2B
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RE0
_RE0	set	0x48
	global	_RE1
_RE1	set	0x49
	global	_RE2
_RE2	set	0x4A
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2bits
_SSPCON2bits	set	0x91
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISCbits
_TRISCbits	set	0x87
	global	_TRISE
_TRISE	set	0x89
	global __stringdata
__stringdata:
	
STR_4:	
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_3:	
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_5:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	112	;'p'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_6:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_7:	
	retlw	83	;'S'
	retlw	97	;'a'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	113	;'q'
	retlw	0
psect	strings
	
STR_9:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	46	;'.'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_2:	
	retlw	77	;'M'
	retlw	0
psect	strings
	
STR_1:	
	retlw	83	;'S'
	retlw	0
psect	strings
STR_8	equ	STR_9+3
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
	file	"radio.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_rs_flag:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_errno:
       ds      2

print_signal_level@prev_lvl:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
tea5767@commandbytes:
       ds      5

tea5767@responsebytes:
       ds      5

tea5767@current_freq:
       ds      3

print_freq@dec:
       ds      1

_buff:
       ds      5

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_commandbytes:
       ds      5

_responsebytes:
       ds      5

_current_freq:
       ds      3

	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+013h)
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+0Dh)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	3
??_tea5767_getfreq:	; 0 bytes @ 0x6
	global	?___fttol
?___fttol:	; 4 bytes @ 0x6
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x6
	ds	2
	global	tea5767_getfreq@byte1
tea5767_getfreq@byte1:	; 1 bytes @ 0x8
	ds	1
	global	tea5767_getfreq@dta
tea5767_getfreq@dta:	; 3 bytes @ 0x9
	ds	1
??___fttol:	; 0 bytes @ 0xA
	ds	2
	global	_tea5767_getfreq$1037
_tea5767_getfreq$1037:	; 3 bytes @ 0xC
	ds	3
	global	_tea5767_getfreq$1038
_tea5767_getfreq$1038:	; 3 bytes @ 0xF
	ds	5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x14
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x15
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x19
	ds	1
	global	?_tea5767_getpll
?_tea5767_getpll:	; 2 bytes @ 0x1A
	global	?_trunc
?_trunc:	; 3 bytes @ 0x1A
	global	?_tea5767_round_freq
?_tea5767_round_freq:	; 3 bytes @ 0x1A
	global	tea5767_getpll@freq
tea5767_getpll@freq:	; 3 bytes @ 0x1A
	global	tea5767_round_freq@freq
tea5767_round_freq@freq:	; 3 bytes @ 0x1A
	global	trunc@x
trunc@x:	; 3 bytes @ 0x1A
	ds	3
??_tea5767_init:	; 0 bytes @ 0x1D
?_tea5767_tune:	; 0 bytes @ 0x1D
	global	tea5767_round_freq@d
tea5767_round_freq@d:	; 3 bytes @ 0x1D
	global	tea5767_tune@freq
tea5767_tune@freq:	; 3 bytes @ 0x1D
	global	trunc@i
trunc@i:	; 3 bytes @ 0x1D
	ds	3
??_tea5767_tune:	; 0 bytes @ 0x20
	global	tea5767_init@pll
tea5767_init@pll:	; 2 bytes @ 0x20
	global	trunc@expon
trunc@expon:	; 2 bytes @ 0x20
	ds	1
	global	tea5767_tune@pll
tea5767_tune@pll:	; 2 bytes @ 0x21
	ds	1
	global	?_tea5767_tuned_freq
?_tea5767_tuned_freq:	; 2 bytes @ 0x22
	ds	1
??_tea5767_search:	; 0 bytes @ 0x23
	ds	1
	global	tea5767_search@prev_freq
tea5767_search@prev_freq:	; 3 bytes @ 0x24
	global	_tea5767_tuned_freq$1039
_tea5767_tuned_freq$1039:	; 3 bytes @ 0x24
	ds	3
	global	tea5767_tuned_freq@f
tea5767_tuned_freq@f:	; 2 bytes @ 0x27
	global	tea5767_search@pll
tea5767_search@pll:	; 2 bytes @ 0x27
	ds	2
??_tea5767_search_up:	; 0 bytes @ 0x29
	global	tea5767_tuned_freq@tmp
tea5767_tuned_freq@tmp:	; 3 bytes @ 0x29
	ds	3
	global	tea5767_tuned_freq@d
tea5767_tuned_freq@d:	; 2 bytes @ 0x2C
	ds	2
??_print_freq:	; 0 bytes @ 0x2E
	ds	2
	global	print_freq@fr
print_freq@fr:	; 2 bytes @ 0x30
	ds	2
	global	print_freq@f
print_freq@f:	; 2 bytes @ 0x32
	ds	2
	global	print_freq@i
print_freq@i:	; 2 bytes @ 0x34
	ds	2
??_main:	; 0 bytes @ 0x36
	ds	3
	global	main@button_pressed
main@button_pressed:	; 1 bytes @ 0x39
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_hd44780_init:	; 0 bytes @ 0x0
?_tea5767_init:	; 0 bytes @ 0x0
?_tea5767_read:	; 0 bytes @ 0x0
?_tea5767_search_up:	; 0 bytes @ 0x0
?_tea5767_write:	; 0 bytes @ 0x0
?_tea5767_search:	; 0 bytes @ 0x0
?_hd44780_busy:	; 0 bytes @ 0x0
?_hd44780_write:	; 0 bytes @ 0x0
?_hd44780_newline:	; 0 bytes @ 0x0
?_serial_init:	; 0 bytes @ 0x0
?_serial_tx_poll:	; 0 bytes @ 0x0
?_serial_tx_print:	; 0 bytes @ 0x0
?_serial_tx_printline:	; 0 bytes @ 0x0
?_init:	; 0 bytes @ 0x0
?_tc_int:	; 0 bytes @ 0x0
??_tc_int:	; 0 bytes @ 0x0
?_print_freq:	; 0 bytes @ 0x0
?_print_signal_level:	; 0 bytes @ 0x0
?_print_mode:	; 0 bytes @ 0x0
?_i2c_start:	; 0 bytes @ 0x0
?_i2c_stop:	; 0 bytes @ 0x0
?_i2c_send_data:	; 0 bytes @ 0x0
?_i2c_send_ack:	; 0 bytes @ 0x0
?_i2c_send_nack:	; 0 bytes @ 0x0
?_hd44780_pulse:	; 0 bytes @ 0x0
?_hd44780_char:	; 0 bytes @ 0x0
?_tea5767_signal_level:	; 1 bytes @ 0x0
?_tea5767_mode:	; 1 bytes @ 0x0
?_debounce_lo:	; 1 bytes @ 0x0
?_i2c_read_data:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	ds	4
??_tea5767_signal_level:	; 0 bytes @ 0x4
??_tea5767_mode:	; 0 bytes @ 0x4
??_tea5767_getpll:	; 0 bytes @ 0x4
??_hd44780_busy:	; 0 bytes @ 0x4
??_hd44780_write:	; 0 bytes @ 0x4
??_serial_init:	; 0 bytes @ 0x4
??_serial_tx_poll:	; 0 bytes @ 0x4
??_debounce_lo:	; 0 bytes @ 0x4
??_i2c_start:	; 0 bytes @ 0x4
??_i2c_stop:	; 0 bytes @ 0x4
?_i2c_send_controlbyte:	; 0 bytes @ 0x4
??_i2c_send_data:	; 0 bytes @ 0x4
??_i2c_read_data:	; 0 bytes @ 0x4
??_i2c_send_ack:	; 0 bytes @ 0x4
??_i2c_send_nack:	; 0 bytes @ 0x4
??_tea5767_round_freq:	; 0 bytes @ 0x4
??_hd44780_pulse:	; 0 bytes @ 0x4
??___awdiv:	; 0 bytes @ 0x4
??___ftneg:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
	global	serial_tx_poll@val
serial_tx_poll@val:	; 1 bytes @ 0x4
	global	i2c_send_controlbyte@rw_bit
i2c_send_controlbyte@rw_bit:	; 1 bytes @ 0x4
	global	i2c_send_data@dta
i2c_send_data@dta:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
??_serial_tx_print:	; 0 bytes @ 0x5
??_i2c_send_controlbyte:	; 0 bytes @ 0x5
??___lwmod:	; 0 bytes @ 0x5
	ds	1
??_hd44780_printstr:	; 0 bytes @ 0x6
??_tea5767_write:	; 0 bytes @ 0x6
??_hd44780_newline:	; 0 bytes @ 0x6
??_serial_tx_printline:	; 0 bytes @ 0x6
??_hd44780_char:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?___ftge:	; 1 bit 
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
?_frexp:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	serial_tx_print@str
serial_tx_print@str:	; 1 bytes @ 0x0
	global	debounce_lo@prt
debounce_lo@prt:	; 1 bytes @ 0x0
	global	i2c_send_controlbyte@addr
i2c_send_controlbyte@addr:	; 1 bytes @ 0x0
	global	hd44780_write@bt
hd44780_write@bt:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	frexp@value
frexp@value:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	ds	1
	global	serial_tx_printline@str
serial_tx_printline@str:	; 1 bytes @ 0x1
	global	debounce_lo@count
debounce_lo@count:	; 1 bytes @ 0x1
	global	hd44780_write@tmp
hd44780_write@tmp:	; 1 bytes @ 0x1
	ds	1
??_hd44780_init:	; 0 bytes @ 0x2
??_tea5767_read:	; 0 bytes @ 0x2
	global	hd44780_char@bt
hd44780_char@bt:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
?_hd44780_block_erase:	; 0 bytes @ 0x3
?_hd44780_printstr:	; 0 bytes @ 0x3
	global	hd44780_block_erase@length
hd44780_block_erase@length:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x3
	global	hd44780_printstr@dta
hd44780_printstr@dta:	; 2 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??_hd44780_block_erase:	; 0 bytes @ 0x4
??_frexp:	; 0 bytes @ 0x4
??_init:	; 0 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	hd44780_printstr@loc
hd44780_printstr@loc:	; 1 bytes @ 0x5
	global	hd44780_block_erase@start_loc
hd44780_block_erase@start_loc:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??_print_mode:	; 0 bytes @ 0x6
??___ftge:	; 0 bytes @ 0x6
	global	hd44780_block_erase@i
hd44780_block_erase@i:	; 2 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	1
	global	?___altoft
?___altoft:	; 3 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	print_mode@mode
print_mode@mode:	; 2 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x8
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	2
??___awtoft:	; 0 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	ds	1
??___altoft:	; 0 bytes @ 0xC
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xC
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xC
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xE
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0xF
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0xF
	ds	1
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x10
	ds	1
??_sprintf:	; 0 bytes @ 0x11
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x11
	ds	1
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x12
	ds	2
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x14
	ds	1
??___ftadd:	; 0 bytes @ 0x15
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x15
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x17
	ds	4
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x1B
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x1C
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x1C
	ds	1
?_hd44780_printdecimal:	; 0 bytes @ 0x1D
?_hd44780_printint:	; 0 bytes @ 0x1D
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x1D
	global	hd44780_printint@dta
hd44780_printint@dta:	; 2 bytes @ 0x1D
	global	hd44780_printdecimal@i
hd44780_printdecimal@i:	; 2 bytes @ 0x1D
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x1E
	ds	1
	global	?_ceil
?_ceil:	; 3 bytes @ 0x1F
	global	hd44780_printint@loc
hd44780_printint@loc:	; 1 bytes @ 0x1F
	global	hd44780_printdecimal@d
hd44780_printdecimal@d:	; 2 bytes @ 0x1F
	global	ceil@x
ceil@x:	; 3 bytes @ 0x1F
	ds	1
??_hd44780_printint:	; 0 bytes @ 0x20
	ds	1
??_print_signal_level:	; 0 bytes @ 0x21
	global	hd44780_printdecimal@loc
hd44780_printdecimal@loc:	; 1 bytes @ 0x21
	ds	1
??_hd44780_printdecimal:	; 0 bytes @ 0x22
??_ceil:	; 0 bytes @ 0x22
	ds	1
	global	print_signal_level@lvl
print_signal_level@lvl:	; 2 bytes @ 0x23
	ds	5
	global	ceil@i
ceil@i:	; 3 bytes @ 0x28
	ds	3
	global	ceil@expon
ceil@expon:	; 2 bytes @ 0x2B
	ds	2
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x2D
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x2D
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x30
	ds	3
??___ftmul:	; 0 bytes @ 0x33
	ds	10
??___ftdiv:	; 0 bytes @ 0x3D
	ds	6
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x43
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x44
	ds	3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x47
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x47
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x48
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x48
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x4B
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x4C
	ds	1
??_trunc:	; 0 bytes @ 0x4D
	global	?_tea5767_getfreq
?_tea5767_getfreq:	; 3 bytes @ 0x4D
	global	tea5767_getfreq@byte2
tea5767_getfreq@byte2:	; 1 bytes @ 0x4D
	global	_tea5767_getpll$1036
_tea5767_getpll$1036:	; 3 bytes @ 0x4D
	ds	1
??_tea5767_tuned_freq:	; 0 bytes @ 0x4E
	ds	2
;!
;!Data Sizes:
;!    Strings     111
;!    Constant    14
;!    Data        0
;!    BSS         35
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     80      80
;!    BANK1            80     58      77
;!    BANK3            96      0      13
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> trunc@expon(BANK1[2]), ceil@expon(BANK0[2]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 6
;!		 -> STR_9(CODE[6]), STR_8(CODE[3]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 5
;!		 -> buff(BANK1[5]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S467$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    hd44780_printstr@dta	PTR unsigned char  size(2) Largest target is 5
;!		 -> buff(BANK1[5]), STR_2(CODE[2]), STR_1(CODE[2]), 
;!
;!    serial_tx_printline@str	PTR unsigned char  size(1) Largest target is 36
;!		 -> STR_7(CODE[10]), STR_6(CODE[16]), STR_5(CODE[16]), STR_4(CODE[36]), 
;!		 -> STR_3(CODE[23]), 
;!
;!    serial_tx_print@str	PTR unsigned char  size(1) Largest target is 36
;!		 -> STR_7(CODE[10]), STR_6(CODE[16]), STR_5(CODE[16]), STR_4(CODE[36]), 
;!		 -> STR_3(CODE[23]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_debounce_lo
;!    _tea5767_read->_i2c_send_controlbyte
;!    _tea5767_write->_i2c_send_controlbyte
;!    _serial_tx_printline->_serial_tx_print
;!    _serial_tx_print->_serial_tx_poll
;!    _print_freq->___wmul
;!    _tea5767_tuned_freq->___wmul
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _hd44780_printstr->_hd44780_write
;!    _hd44780_newline->_hd44780_write
;!    _hd44780_block_erase->_hd44780_write
;!    _hd44780_char->_hd44780_write
;!    _hd44780_init->_hd44780_write
;!
;!Critical Paths under _tc_int in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _tea5767_search->_tea5767_getfreq
;!    _tea5767_search->_tea5767_getpll
;!    _tea5767_tune->_tea5767_getpll
;!    _tea5767_round_freq->_tea5767_getfreq
;!    _tea5767_read->_serial_tx_printline
;!    _tea5767_getfreq->___ftdiv
;!    _ceil->___ftadd
;!    ___awtoft->___ftpack
;!    _tea5767_init->_tea5767_getpll
;!    _tea5767_write->_serial_tx_printline
;!    _serial_tx_printline->_serial_tx_print
;!    _tea5767_getpll->___ftdiv
;!    ___ftadd->___awtoft
;!    _print_signal_level->_hd44780_printint
;!    _hd44780_printint->_sprintf
;!    _print_mode->_hd44780_printstr
;!    _print_freq->_tea5767_tuned_freq
;!    _tea5767_tuned_freq->_trunc
;!    ___fttol->___ftdiv
;!    ___altoft->___ftpack
;!    _hd44780_printdecimal->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _hd44780_printstr->_hd44780_char
;!    _hd44780_newline->_hd44780_write
;!    _hd44780_block_erase->_hd44780_char
;!    _hd44780_char->_hd44780_write
;!    _init->_hd44780_init
;!    _hd44780_init->_hd44780_write
;!    ___ftmul->_ceil
;!
;!Critical Paths under _tc_int in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_print_freq
;!    _tea5767_search_up->_tea5767_search
;!    _tea5767_search->_tea5767_tune
;!    _tea5767_tune->_tea5767_getpll
;!    _tea5767_getfreq->___ftdiv
;!    _tea5767_init->_tea5767_getpll
;!    _tea5767_getpll->___fttol
;!    _print_freq->_tea5767_tuned_freq
;!    _tea5767_tuned_freq->_trunc
;!    _trunc->___fttol
;!    ___fttol->___ftdiv
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
;! (0) _main                                                 4     4      0  106923
;!                                             54 BANK1      4     4      0
;!                        _debounce_lo
;!                               _init
;!                         _print_freq
;!                         _print_mode
;!                 _print_signal_level
;!                       _tea5767_init
;!                       _tea5767_read
;!                  _tea5767_search_up
;! ---------------------------------------------------------------------------------
;! (1) _tea5767_search_up                                    1     1      0   72096
;!                                             41 BANK1      1     1      0
;!                     _tea5767_search
;! ---------------------------------------------------------------------------------
;! (2) _tea5767_search                                       6     6      0   72096
;!                                             35 BANK1      6     6      0
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftneg
;!                _serial_tx_printline
;!                    _tea5767_getfreq
;!                     _tea5767_getpll
;!                       _tea5767_read
;!                 _tea5767_round_freq
;!                       _tea5767_tune
;!                      _tea5767_write
;! ---------------------------------------------------------------------------------
;! (3) _tea5767_tune                                         6     3      3   12164
;!                                             29 BANK1      6     3      3
;!                     _tea5767_getpll
;!                      _tea5767_write
;! ---------------------------------------------------------------------------------
;! (3) _tea5767_round_freq                                   6     3      3   17505
;!                                             26 BANK1      6     3      3
;!                            ___ftdiv
;!                            ___ftmul
;!                               _ceil
;!                    _tea5767_getfreq (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _tea5767_read                                         3     3      0     530
;!                                              2 BANK0      1     1      0
;!                      _i2c_read_data
;!                       _i2c_send_ack
;!               _i2c_send_controlbyte
;!                      _i2c_send_nack
;!                          _i2c_start
;!                           _i2c_stop
;!                _serial_tx_printline
;! ---------------------------------------------------------------------------------
;! (4) _i2c_send_nack                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _i2c_send_ack                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _i2c_read_data                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _tea5767_getfreq                                     15    12      3   24302
;!                                             77 BANK0      3     0      3
;!                                              6 BANK1     12    12      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                               _ceil
;! ---------------------------------------------------------------------------------
;! (4) _ceil                                                 9     6      3   10795
;!                                             31 BANK0     14    11      3
;!                           ___altoft
;!                           ___awtoft (ARG)
;!                            ___ftadd
;!                             ___ftge
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (5) ___ftge                                              12     6      6     678
;!                                              0 BANK0     12     6      6
;! ---------------------------------------------------------------------------------
;! (4) ___awtoft                                             6     3      3    2535
;!                                              8 BANK0      7     4      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftneg                                              3     0      3     175
;!                                              0 BANK0      3     0      3
;! ---------------------------------------------------------------------------------
;! (1) _tea5767_init                                         5     5      0   12037
;!                                             29 BANK1      5     5      0
;!                     _tea5767_getpll
;!                      _tea5767_write
;! ---------------------------------------------------------------------------------
;! (3) _tea5767_write                                        2     2      0     552
;!               _i2c_send_controlbyte
;!                      _i2c_send_data
;!                          _i2c_start
;!                           _i2c_stop
;!                _serial_tx_printline
;! ---------------------------------------------------------------------------------
;! (4) _serial_tx_printline                                  1     1      0     338
;!                                              1 BANK0      1     1      0
;!                     _serial_tx_poll
;!                    _serial_tx_print
;! ---------------------------------------------------------------------------------
;! (5) _serial_tx_print                                      2     2      0     126
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      1     1      0
;!                     _serial_tx_poll
;! ---------------------------------------------------------------------------------
;! (6) _serial_tx_poll                                       1     1      0      31
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _i2c_stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _i2c_start                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _i2c_send_data                                        1     1      0      22
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _i2c_send_controlbyte                                 3     2      1     192
;!                                              4 COMMON     2     1      1
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _tea5767_getpll                                       6     3      3   11420
;!                                             77 BANK0      3     3      0
;!                                             26 BANK1      3     0      3
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (5) ___ftdiv                                             16    10      6    3037
;!                                             61 BANK0     16    16      0
;!                                              0 BANK1      6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                               _ceil (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___ftadd                                             13     7      6    4192
;!                                             15 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _print_signal_level                                   4     4      0    3939
;!                                             33 BANK0      4     4      0
;!                _hd44780_block_erase
;!                   _hd44780_printint
;!               _tea5767_signal_level
;! ---------------------------------------------------------------------------------
;! (2) _tea5767_signal_level                                 1     1      0       0
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _hd44780_printint                                     4     1      3    3088
;!                                             29 BANK0      4     1      3
;!                   _hd44780_printstr
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _print_mode                                           4     4      0    1408
;!                                              6 BANK0      4     4      0
;!                   _hd44780_printstr
;!                       _tea5767_mode
;! ---------------------------------------------------------------------------------
;! (2) _tea5767_mode                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _print_freq                                           8     8      0   16436
;!                                             46 BANK1      8     8      0
;!                            ___awdiv
;!                             ___wmul
;!                _hd44780_block_erase
;!               _hd44780_printdecimal
;!                 _tea5767_tuned_freq
;! ---------------------------------------------------------------------------------
;! (2) _tea5767_tuned_freq                                  14    12      2   10356
;!                                             78 BANK0      2     2      0
;!                                             34 BANK1     12    10      2
;!                            ___ftmul
;!                            ___fttol
;!                             ___wmul
;!                              _trunc
;! ---------------------------------------------------------------------------------
;! (3) _trunc                                                9     6      3    5419
;!                                             77 BANK0      1     1      0
;!                                             26 BANK1      8     5      3
;!                           ___altoft
;!                            ___ftmul (ARG)
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (5) _frexp                                                6     2      4    1152
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (5) ___fttol                                             14    10      4     696
;!                                              6 BANK1     20    16      4
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___altoft                                             8     4      4    2833
;!                                              8 BANK0     10     6      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     526
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      4     0      4
;! ---------------------------------------------------------------------------------
;! (2) _hd44780_printdecimal                                 6     1      5    3249
;!                                             29 BANK0      6     1      5
;!                   _hd44780_printstr
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (3) _sprintf                                             17    12      5    1522
;!                                             12 BANK0     17    12      5
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              6     2      4     265
;!                                              5 COMMON     1     1      0
;!                                              7 BANK0      5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              8     4      4     371
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (3) _hd44780_printstr                                     3     0      3    1374
;!                                              3 BANK0      3     0      3
;!                       _hd44780_char
;!                    _hd44780_newline
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (4) _hd44780_newline                                      0     0      0     232
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (2) _hd44780_block_erase                                  5     4      1     755
;!                                              3 BANK0      5     4      1
;!                       _hd44780_char
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (4) _hd44780_char                                         1     1      0     263
;!                                              2 BANK0      1     1      0
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     705
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 2     2      0     232
;!                                              4 BANK0      2     2      0
;!                       _hd44780_init
;!                        _serial_init
;! ---------------------------------------------------------------------------------
;! (2) _serial_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _hd44780_init                                         2     2      0     232
;!                                              2 BANK0      2     2      0
;!                       _hd44780_busy
;!                      _hd44780_pulse
;!                      _hd44780_write
;! ---------------------------------------------------------------------------------
;! (4) _hd44780_write                                        4     4      0     232
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      2     2      0
;!                       _hd44780_busy
;!                      _hd44780_pulse
;! ---------------------------------------------------------------------------------
;! (5) _hd44780_pulse                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _hd44780_busy                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _debounce_lo                                          4     4      0     130
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (5) ___ftmul                                             16    10      6    3235
;!                                             45 BANK0     28    22      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                               _ceil (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftpack                                             8     3      5    2097
;!                                              0 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! (6) ___ftpack                                             8     3      5    2097
;!                                              0 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (8) _tc_int                                               4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _debounce_lo
;!   _init
;!     _hd44780_init
;!       _hd44780_busy
;!       _hd44780_pulse
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!     _serial_init
;!   _print_freq
;!     ___awdiv
;!     ___wmul
;!     _hd44780_block_erase
;!       _hd44780_char
;!         _hd44780_write
;!           _hd44780_busy
;!           _hd44780_pulse
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!     _hd44780_printdecimal
;!       _hd44780_printstr
;!         _hd44780_char
;!           _hd44780_write
;!             _hd44780_busy
;!             _hd44780_pulse
;!         _hd44780_newline
;!           _hd44780_write
;!             _hd44780_busy
;!             _hd44780_pulse
;!         _hd44780_write
;!           _hd44780_busy
;!           _hd44780_pulse
;!       _sprintf
;!         ___lwdiv
;!         ___lwmod
;!           ___lwdiv (ARG)
;!     _tea5767_tuned_freq
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _ceil (ARG)
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftge (ARG)
;!           ___fttol (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!           _frexp (ARG)
;!       ___fttol
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             _frexp (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             _frexp (ARG)
;!       ___wmul
;!       _trunc
;!         ___altoft
;!           ___ftpack
;!           ___fttol (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _ceil (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftadd (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftge (ARG)
;!                   _frexp (ARG)
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                   ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftge (ARG)
;!                 _frexp (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftdiv (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                   ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftge (ARG)
;!                 _frexp (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___fttol (ARG)
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftge (ARG)
;!                 _frexp (ARG)
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               _frexp (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               _frexp (ARG)
;!         _frexp (ARG)
;!   _print_mode
;!     _hd44780_printstr
;!       _hd44780_char
;!         _hd44780_write
;!           _hd44780_busy
;!           _hd44780_pulse
;!       _hd44780_newline
;!         _hd44780_write
;!           _hd44780_busy
;!           _hd44780_pulse
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!     _tea5767_mode
;!   _print_signal_level
;!     _hd44780_block_erase
;!       _hd44780_char
;!         _hd44780_write
;!           _hd44780_busy
;!           _hd44780_pulse
;!       _hd44780_write
;!         _hd44780_busy
;!         _hd44780_pulse
;!     _hd44780_printint
;!       _hd44780_printstr
;!         _hd44780_char
;!           _hd44780_write
;!             _hd44780_busy
;!             _hd44780_pulse
;!         _hd44780_newline
;!           _hd44780_write
;!             _hd44780_busy
;!             _hd44780_pulse
;!         _hd44780_write
;!           _hd44780_busy
;!           _hd44780_pulse
;!       _sprintf
;!         ___lwdiv
;!         ___lwmod
;!           ___lwdiv (ARG)
;!     _tea5767_signal_level
;!   _tea5767_init
;!     _tea5767_getpll
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftdiv
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!             _frexp (ARG)
;!         ___ftpack (ARG)
;!         _ceil (ARG)
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftge (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!           _frexp (ARG)
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _ceil (ARG)
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftge (ARG)
;!           ___fttol (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!           _frexp (ARG)
;!       ___fttol
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             _frexp (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             _frexp (ARG)
;!     _tea5767_write
;!       _i2c_send_controlbyte
;!       _i2c_send_data
;!       _i2c_start
;!       _i2c_stop
;!       _serial_tx_printline
;!         _serial_tx_poll
;!         _serial_tx_print
;!           _serial_tx_poll
;!   _tea5767_read
;!     _i2c_read_data
;!     _i2c_send_ack
;!     _i2c_send_controlbyte
;!     _i2c_send_nack
;!     _i2c_start
;!     _i2c_stop
;!     _serial_tx_printline
;!       _serial_tx_poll
;!       _serial_tx_print
;!         _serial_tx_poll
;!   _tea5767_search_up
;!     _tea5767_search
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftge
;!       ___ftneg
;!       _serial_tx_printline
;!         _serial_tx_poll
;!         _serial_tx_print
;!           _serial_tx_poll
;!       _tea5767_getfreq
;!         ___awtoft
;!           ___ftpack
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                   ___fttol (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftge (ARG)
;!                 ___fttol (ARG)
;!                 _frexp (ARG)
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!               _frexp (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!                   ___ftdiv (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!               _frexp (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!         _ceil
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftge (ARG)
;!           ___fttol (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!           _frexp (ARG)
;!       _tea5767_getpll
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                   ___fttol (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftge (ARG)
;!                 ___fttol (ARG)
;!                 _frexp (ARG)
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!               _frexp (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!                   ___ftdiv (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!               _frexp (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___fttol
;!           ___ftdiv (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftge (ARG)
;!                 _frexp (ARG)
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               _frexp (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               _frexp (ARG)
;!       _tea5767_read
;!         _i2c_read_data
;!         _i2c_send_ack
;!         _i2c_send_controlbyte
;!         _i2c_send_nack
;!         _i2c_start
;!         _i2c_stop
;!         _serial_tx_printline
;!           _serial_tx_poll
;!           _serial_tx_print
;!             _serial_tx_poll
;!       _tea5767_round_freq
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!               _frexp (ARG)
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _ceil (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!         _ceil
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftge (ARG)
;!           ___fttol (ARG)
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!           _frexp (ARG)
;!         _tea5767_getfreq (ARG)
;!           ___awtoft
;!             ___ftpack
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _ceil (ARG)
;!                   ___altoft
;!                     ___ftpack
;!                     ___fttol (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftge (ARG)
;!                   ___fttol (ARG)
;!                   _frexp (ARG)
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                   ___fttol (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftge (ARG)
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                 _frexp (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                   ___fttol (ARG)
;!                     ___ftdiv (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftge (ARG)
;!                 ___fttol (ARG)
;!                   ___ftdiv (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                 _frexp (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftdiv
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                   ___fttol (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftge (ARG)
;!                 ___fttol (ARG)
;!                 _frexp (ARG)
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!               _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!                   ___ftdiv (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!               _frexp (ARG)
;!           _ceil
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftge (ARG)
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp (ARG)
;!       _tea5767_tune
;!         _tea5767_getpll
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _ceil (ARG)
;!                   ___altoft
;!                     ___ftpack
;!                     ___fttol (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftge (ARG)
;!                   ___fttol (ARG)
;!                   _frexp (ARG)
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                   ___fttol (ARG)
;!                     ___ftmul (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftge (ARG)
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                 _frexp (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                   ___fttol (ARG)
;!                     ___ftdiv (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftge (ARG)
;!                 ___fttol (ARG)
;!                   ___ftdiv (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                 _frexp (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftdiv
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                   ___fttol (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftge (ARG)
;!                 ___fttol (ARG)
;!                 _frexp (ARG)
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!               _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _ceil (ARG)
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!                   ___ftdiv (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                 ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftge (ARG)
;!               ___fttol (ARG)
;!                 ___ftdiv (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!               _frexp (ARG)
;!           ___fttol
;!             ___ftdiv (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _ceil (ARG)
;!                   ___altoft
;!                     ___ftpack
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftadd (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftge (ARG)
;!                   _frexp (ARG)
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftmul (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                   ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftge (ARG)
;!                 _frexp (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _ceil (ARG)
;!                 ___altoft
;!                   ___ftpack
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftdiv (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                   ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftge (ARG)
;!                 _frexp (ARG)
;!         _tea5767_write
;!           _i2c_send_controlbyte
;!           _i2c_send_data
;!           _i2c_start
;!           _i2c_stop
;!           _serial_tx_printline
;!             _serial_tx_poll
;!             _serial_tx_print
;!               _serial_tx_poll
;!       _tea5767_write
;!         _i2c_send_controlbyte
;!         _i2c_send_data
;!         _i2c_start
;!         _i2c_stop
;!         _serial_tx_printline
;!           _serial_tx_poll
;!           _serial_tx_print
;!             _serial_tx_poll
;!
;! _tc_int (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      B4       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     50      50       5      100.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50     3A      4D       7       96.3%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       D       9       13.5%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      B4      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 163 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  button_press    1   57[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2  153[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_debounce_lo
;;		_init
;;		_print_freq
;;		_print_mode
;;		_print_signal_level
;;		_tea5767_init
;;		_tea5767_read
;;		_tea5767_search_up
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	163
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	163
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 0
; Regs used in _main: [allreg]
	line	166
	
l5214:	
;main.c: 166: uint8_t button_pressed = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@button_pressed)^080h
	line	168
	
l5216:	
;main.c: 168: init();
	fcall	_init
	line	169
	
l5218:	
;main.c: 169: tea5767_init();
	fcall	_tea5767_init
	goto	l5220
	line	245
;main.c: 245: while( 1 ){
	
l154:	
	line	257
	
l5220:	
;main.c: 257: tea5767_read();
	fcall	_tea5767_read
	line	258
	
l5222:	
;main.c: 258: print_signal_level();
	fcall	_print_signal_level
	line	259
	
l5224:	
;main.c: 259: print_freq();
	fcall	_print_freq
	line	260
	
l5226:	
;main.c: 260: print_mode();
	fcall	_print_mode
	line	267
	
l5228:	
;main.c: 267: if( !button_pressed && debounce_lo( RB1 ) ){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@button_pressed)^080h,f
	skipz
	goto	u4991
	goto	u4990
u4991:
	goto	l155
u4990:
	
l5230:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7	;volatile
	movlw	1
	fcall	_debounce_lo
	xorlw	0
	skipnz
	goto	u5001
	goto	u5000
u5001:
	goto	l155
u5000:
	line	268
	
l5232:	
;main.c: 268: RB2 = 0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	271
	
l5234:	
;main.c: 271: tea5767_search_up();
	fcall	_tea5767_search_up
	line	272
	
l5236:	
;main.c: 272: button_pressed = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@button_pressed)^080h
	incf	(main@button_pressed)^080h,f
	line	277
;main.c: 277: }else{
	goto	l5242
	
l155:	
	line	278
;main.c: 278: RB2 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	279
	
l5238:	
;main.c: 279: if(!debounce_lo( RB1 ))
	movlw	0
	btfsc	(49/8),(49)&7	;volatile
	movlw	1
	fcall	_debounce_lo
	iorlw	0
	skipz
	goto	u5011
	goto	u5010
u5011:
	goto	l5242
u5010:
	line	280
	
l5240:	
;main.c: 280: button_pressed = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@button_pressed)^080h
	goto	l5242
	
l157:	
	goto	l5242
	line	281
	
l156:	
	line	283
	
l5242:	
;main.c: 281: }
;main.c: 283: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	138
movwf	((??_main+0)^080h+0+1),f
	movlw	86
movwf	((??_main+0)^080h+0),f
u5177:
	decfsz	((??_main+0)^080h+0),f
	goto	u5177
	decfsz	((??_main+0)^080h+0+1),f
	goto	u5177
	decfsz	((??_main+0)^080h+0+2),f
	goto	u5177
	nop2
opt asmopt_on

	goto	l5220
	line	284
	
l158:	
	line	245
	goto	l5220
	
l159:	
	line	287
;main.c: 284: }
;main.c: 286: return 0;
;	Return value of _main is never used
	
l160:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_tea5767_search_up

;; *************** function _tea5767_search_up *****************
;; Defined at:
;;		line 214 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_tea5767_search
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	214
global __ptext1
__ptext1:	;psect for function _tea5767_search_up
psect	text1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	214
	global	__size_of_tea5767_search_up
	__size_of_tea5767_search_up	equ	__end_of_tea5767_search_up-_tea5767_search_up
	
_tea5767_search_up:	
;incstack = 0
;; using string table level
	opt	stack 1
; Regs used in _tea5767_search_up: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	216
	
l5244:	
;tea5767.c: 216: commandbytes[2] |= SUD_UP;
	movlw	(_SUD_UP-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_tea5767_search_up+0)^080h+0
	movf	(??_tea5767_search_up+0)^080h+0,w
	iorwf	0+(tea5767@commandbytes)^080h+02h,f
	line	217
	
l5246:	
;tea5767.c: 217: tea5767_search();
	fcall	_tea5767_search
	line	218
	
l310:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_search_up
	__end_of_tea5767_search_up:
	signat	_tea5767_search_up,88
	global	_tea5767_search

;; *************** function _tea5767_search *****************
;; Defined at:
;;		line 228 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  prev_freq       3   36[BANK1 ] int 
;;  pll             2   39[BANK1 ] unsigned int 
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
;;      Locals:         0       0       5       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftadd
;;		___ftge
;;		___ftneg
;;		_serial_tx_printline
;;		_tea5767_getfreq
;;		_tea5767_getpll
;;		_tea5767_read
;;		_tea5767_round_freq
;;		_tea5767_tune
;;		_tea5767_write
;; This function is called by:
;;		_tea5767_search_up
;;		_tea5767_search_down
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	228
global __ptext2
__ptext2:	;psect for function _tea5767_search
psect	text2
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	228
	global	__size_of_tea5767_search
	__size_of_tea5767_search	equ	__end_of_tea5767_search-_tea5767_search
	
_tea5767_search:	
;incstack = 0
;; using string table level
	opt	stack 1
; Regs used in _tea5767_search: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	233
	
l5316:	
;tea5767.c: 231: double prev_freq;
;tea5767.c: 233: current_freq += 0.1;
	movlw	0xcd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0xcc
	movwf	(___ftadd@f1+1)
	movlw	0x3d
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767@current_freq)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767@current_freq+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767@current_freq+2)^080h
	line	235
;tea5767.c: 235: if( current_freq > 108.0 ){
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movlw	0xd8
	movwf	(___ftge@ff1+1)
	movlw	0x42
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u5081
	goto	u5080
u5081:
	goto	l5320
u5080:
	line	236
	
l5318:	
;tea5767.c: 236: current_freq = 87.0;
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767@current_freq)^080h
	movlw	0xae
	movwf	(tea5767@current_freq+1)^080h
	movlw	0x42
	movwf	(tea5767@current_freq+2)^080h
	goto	l5320
	line	237
	
l316:	
	line	239
	
l5320:	
;tea5767.c: 237: }
;tea5767.c: 239: unsigned int pll = tea5767_getpll( current_freq );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq)^080h,w
	movwf	(tea5767_getpll@freq)^080h
	movf	(tea5767@current_freq+1)^080h,w
	movwf	(tea5767_getpll@freq+1)^080h
	movf	(tea5767@current_freq+2)^080h,w
	movwf	(tea5767_getpll@freq+2)^080h
	fcall	_tea5767_getpll
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_tea5767_getpll))^080h,w
	clrf	(tea5767_search@pll+1)^080h
	addwf	(tea5767_search@pll+1)^080h
	movf	(0+(?_tea5767_getpll))^080h,w
	clrf	(tea5767_search@pll)^080h
	addwf	(tea5767_search@pll)^080h

	line	241
	
l5322:	
;tea5767.c: 241: commandbytes[0] = (pll >> 8);
	movf	(tea5767_search@pll+1)^080h,w
	movwf	(??_tea5767_search+0)^080h+0
	movf	(??_tea5767_search+0)^080h+0,w
	movwf	(tea5767@commandbytes)^080h
	line	242
	
l5324:	
;tea5767.c: 242: commandbytes[0] |= SM_ON;
	movlw	(_SM_ON-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_tea5767_search+0)^080h+0
	movf	(??_tea5767_search+0)^080h+0,w
	iorwf	(tea5767@commandbytes)^080h,f
	line	243
	
l5326:	
;tea5767.c: 243: commandbytes[0] |= MUTE_ON;
	movlw	(_MUTE_ON-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_tea5767_search+0)^080h+0
	movf	(??_tea5767_search+0)^080h+0,w
	iorwf	(tea5767@commandbytes)^080h,f
	line	244
	
l5328:	
;tea5767.c: 244: commandbytes[1] = (pll & 0xFF);
	movf	(tea5767_search@pll)^080h,w
	movwf	(??_tea5767_search+0)^080h+0
	movf	(??_tea5767_search+0)^080h+0,w
	movwf	0+(tea5767@commandbytes)^080h+01h
	line	246
	
l5330:	
;tea5767.c: 246: tea5767_write();
	fcall	_tea5767_write
	line	249
	
l5332:	
;tea5767.c: 249: responsebytes[0] = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(tea5767@responsebytes)^080h
	line	252
	
l5334:	
;tea5767.c: 252: tea5767_read();
	fcall	_tea5767_read
	line	255
;tea5767.c: 255: while( (responsebytes[0] & 0x80) == 0 && (responsebytes[0] & 0x40) == 0 ){
	goto	l5338
	
l318:	
	line	257
	
l5336:	
;tea5767.c: 257: tea5767_read();
	fcall	_tea5767_read
	goto	l5338
	line	261
	
l317:	
	line	255
	
l5338:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(tea5767@responsebytes)^080h,(7)&7
	goto	u5091
	goto	u5090
u5091:
	goto	l5342
u5090:
	
l5340:	
	btfss	(tea5767@responsebytes)^080h,(6)&7
	goto	u5101
	goto	u5100
u5101:
	goto	l5336
u5100:
	goto	l5342
	
l320:	
	goto	l5342
	
l321:	
	line	265
	
l5342:	
;tea5767.c: 261: }
;tea5767.c: 265: serial_tx_printline( "Search Complete" );
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_serial_tx_printline
	line	272
	
l5344:	
;tea5767.c: 272: prev_freq = current_freq;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq)^080h,w
	movwf	(tea5767_search@prev_freq)^080h
	movf	(tea5767@current_freq+1)^080h,w
	movwf	(tea5767_search@prev_freq+1)^080h
	movf	(tea5767@current_freq+2)^080h,w
	movwf	(tea5767_search@prev_freq+2)^080h
	line	275
	
l5346:	
;tea5767.c: 274: current_freq = tea5767_round_freq(
;tea5767.c: 275: tea5767_getfreq( responsebytes[0], responsebytes[1] ));
	movf	0+(tea5767@responsebytes)^080h+01h,w
	movwf	(??_tea5767_search+0)^080h+0
	movf	(??_tea5767_search+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(tea5767_getfreq@byte2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@responsebytes)^080h,w
	fcall	_tea5767_getfreq
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_tea5767_getfreq)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767_round_freq@freq)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_tea5767_getfreq)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767_round_freq@freq+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_tea5767_getfreq)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767_round_freq@freq+2)^080h
	fcall	_tea5767_round_freq
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_tea5767_round_freq))^080h,w
	movwf	(tea5767@current_freq)^080h
	movf	(1+(?_tea5767_round_freq))^080h,w
	movwf	(tea5767@current_freq+1)^080h
	movf	(2+(?_tea5767_round_freq))^080h,w
	movwf	(tea5767@current_freq+2)^080h
	line	277
	
l5348:	
;tea5767.c: 277: if( current_freq - prev_freq == 0 ){
	movf	(tea5767@current_freq)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_search@prev_freq)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_search@prev_freq+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_search@prev_freq+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	iorwf	(1+(?___ftadd)),w
	iorwf	(0+(?___ftadd)),w
	skipz
	goto	u5111
	goto	u5110
u5111:
	goto	l5354
u5110:
	line	278
	
l5350:	
;tea5767.c: 278: serial_tx_printline( "Same Freq" );
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_serial_tx_printline
	line	279
	
l5352:	
;tea5767.c: 279: current_freq += 0.1;
	movlw	0xcd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0xcc
	movwf	(___ftadd@f1+1)
	movlw	0x3d
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767@current_freq)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767@current_freq+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767@current_freq+2)^080h
	goto	l5354
	line	280
	
l322:	
	line	286
	
l5354:	
;tea5767.c: 280: }
;tea5767.c: 286: tea5767_tune( current_freq );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq)^080h,w
	movwf	(tea5767_tune@freq)^080h
	movf	(tea5767@current_freq+1)^080h,w
	movwf	(tea5767_tune@freq+1)^080h
	movf	(tea5767@current_freq+2)^080h,w
	movwf	(tea5767_tune@freq+2)^080h
	fcall	_tea5767_tune
	line	288
	
l323:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_search
	__end_of_tea5767_search:
	signat	_tea5767_search,88
	global	_tea5767_tune

;; *************** function _tea5767_tune *****************
;; Defined at:
;;		line 65 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
;; Parameters:    Size  Location     Type
;;  freq            3   29[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  pll             2   33[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_tea5767_getpll
;;		_tea5767_write
;; This function is called by:
;;		_tea5767_search
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	65
global __ptext3
__ptext3:	;psect for function _tea5767_tune
psect	text3
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	65
	global	__size_of_tea5767_tune
	__size_of_tea5767_tune	equ	__end_of_tea5767_tune-_tea5767_tune
	
_tea5767_tune:	
;incstack = 0
;; using string table level
	opt	stack 1
; Regs used in _tea5767_tune: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	69
	
l4006:	
;tea5767.c: 69: unsigned int pll = tea5767_getpll( freq );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_tune@freq)^080h,w
	movwf	(tea5767_getpll@freq)^080h
	movf	(tea5767_tune@freq+1)^080h,w
	movwf	(tea5767_getpll@freq+1)^080h
	movf	(tea5767_tune@freq+2)^080h,w
	movwf	(tea5767_getpll@freq+2)^080h
	fcall	_tea5767_getpll
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_tea5767_getpll))^080h,w
	clrf	(tea5767_tune@pll+1)^080h
	addwf	(tea5767_tune@pll+1)^080h
	movf	(0+(?_tea5767_getpll))^080h,w
	clrf	(tea5767_tune@pll)^080h
	addwf	(tea5767_tune@pll)^080h

	line	70
	
l4008:	
;tea5767.c: 70: current_freq = freq;
	movf	(tea5767_tune@freq)^080h,w
	movwf	(tea5767@current_freq)^080h
	movf	(tea5767_tune@freq+1)^080h,w
	movwf	(tea5767@current_freq+1)^080h
	movf	(tea5767_tune@freq+2)^080h,w
	movwf	(tea5767@current_freq+2)^080h
	line	72
	
l4010:	
;tea5767.c: 72: commandbytes[0] = (pll >> 8);
	movf	(tea5767_tune@pll+1)^080h,w
	movwf	(??_tea5767_tune+0)^080h+0
	movf	(??_tea5767_tune+0)^080h+0,w
	movwf	(tea5767@commandbytes)^080h
	line	73
	
l4012:	
;tea5767.c: 73: commandbytes[0] &= ~SM_ON;
	movlw	(_SM_ON-__stringbase)
	movwf	fsr0
	fcall	stringdir
	xorlw	0ffh
	movwf	(??_tea5767_tune+0)^080h+0
	movf	(??_tea5767_tune+0)^080h+0,w
	andwf	(tea5767@commandbytes)^080h,f
	line	74
	
l4014:	
;tea5767.c: 74: commandbytes[0] &= ~MUTE_ON;
	movlw	(_MUTE_ON-__stringbase)
	movwf	fsr0
	fcall	stringdir
	xorlw	0ffh
	movwf	(??_tea5767_tune+0)^080h+0
	movf	(??_tea5767_tune+0)^080h+0,w
	andwf	(tea5767@commandbytes)^080h,f
	line	75
	
l4016:	
;tea5767.c: 75: commandbytes[1] = pll & 0xFF;
	movf	(tea5767_tune@pll)^080h,w
	movwf	(??_tea5767_tune+0)^080h+0
	movf	(??_tea5767_tune+0)^080h+0,w
	movwf	0+(tea5767@commandbytes)^080h+01h
	line	77
	
l4018:	
;tea5767.c: 77: tea5767_write();
	fcall	_tea5767_write
	line	82
	
l286:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_tune
	__end_of_tea5767_tune:
	signat	_tea5767_tune,4216
	global	_tea5767_round_freq

;; *************** function _tea5767_round_freq *****************
;; Defined at:
;;		line 45 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
;; Parameters:    Size  Location     Type
;;  freq            3   26[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  d               3   29[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  3   26[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftdiv
;;		___ftmul
;;		_ceil
;; This function is called by:
;;		_tea5767_search
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	45
global __ptext4
__ptext4:	;psect for function _tea5767_round_freq
psect	text4
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	45
	global	__size_of_tea5767_round_freq
	__size_of_tea5767_round_freq	equ	__end_of_tea5767_round_freq-_tea5767_round_freq
	
_tea5767_round_freq:	
;incstack = 0
	opt	stack 1
; Regs used in _tea5767_round_freq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	48
	
l5288:	
;tea5767.c: 48: double d = freq * 10;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x20
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_round_freq@freq)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_round_freq@freq+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_round_freq@freq+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767_round_freq@d)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767_round_freq@d+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767_round_freq@d+2)^080h
	line	49
	
l5290:	
;tea5767.c: 49: d = ceil(d);
	movf	(tea5767_round_freq@d)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ceil@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_round_freq@d+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ceil@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_round_freq@d+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ceil@x+2)
	fcall	_ceil
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ceil)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767_round_freq@d)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_ceil)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767_round_freq@d+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_ceil)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767_round_freq@d+2)^080h
	line	55
	
l5292:	
;tea5767.c: 55: d = d / 10.0;
	movlw	0x0
	movwf	(___ftdiv@f2)^080h
	movlw	0x20
	movwf	(___ftdiv@f2+1)^080h
	movlw	0x41
	movwf	(___ftdiv@f2+2)^080h
	movf	(tea5767_round_freq@d)^080h,w
	movwf	(___ftdiv@f1)^080h
	movf	(tea5767_round_freq@d+1)^080h,w
	movwf	(___ftdiv@f1+1)^080h
	movf	(tea5767_round_freq@d+2)^080h,w
	movwf	(___ftdiv@f1+2)^080h
	fcall	___ftdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftdiv))^080h,w
	movwf	(tea5767_round_freq@d)^080h
	movf	(1+(?___ftdiv))^080h,w
	movwf	(tea5767_round_freq@d+1)^080h
	movf	(2+(?___ftdiv))^080h,w
	movwf	(tea5767_round_freq@d+2)^080h
	line	56
	
l5294:	
;tea5767.c: 56: return d;
	movf	(tea5767_round_freq@d)^080h,w
	movwf	(?_tea5767_round_freq)^080h
	movf	(tea5767_round_freq@d+1)^080h,w
	movwf	(?_tea5767_round_freq+1)^080h
	movf	(tea5767_round_freq@d+2)^080h,w
	movwf	(?_tea5767_round_freq+2)^080h
	goto	l283
	
l5296:	
	line	59
	
l283:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_round_freq
	__end_of_tea5767_round_freq:
	signat	_tea5767_round_freq,4219
	global	_tea5767_read

;; *************** function _tea5767_read *****************
;; Defined at:
;;		line 176 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0        int 
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_i2c_read_data
;;		_i2c_send_ack
;;		_i2c_send_controlbyte
;;		_i2c_send_nack
;;		_i2c_start
;;		_i2c_stop
;;		_serial_tx_printline
;; This function is called by:
;;		_main
;;		_tea5767_search
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	176
global __ptext5
__ptext5:	;psect for function _tea5767_read
psect	text5
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	176
	global	__size_of_tea5767_read
	__size_of_tea5767_read	equ	__end_of_tea5767_read-_tea5767_read
	
_tea5767_read:	
;incstack = 0
	opt	stack 1
; Regs used in _tea5767_read: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	180
	
l3888:	
;tea5767.c: 178: int i;
;tea5767.c: 180: i2c_start();
	fcall	_i2c_start
	line	181
	
l3890:	
;tea5767.c: 181: i2c_send_controlbyte( 0x60, 1 );
	clrf	(i2c_send_controlbyte@rw_bit)
	incf	(i2c_send_controlbyte@rw_bit),f
	movlw	(060h)
	fcall	_i2c_send_controlbyte
	line	183
	
l3892:	
;tea5767.c: 183: if( SSPCON2bits.ACKSTAT == 1 ){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(145)^080h,6	;volatile
	goto	u3341
	goto	u3340
u3341:
	goto	l3896
u3340:
	line	184
	
l3894:	
;tea5767.c: 184: serial_tx_printline( "No Read Control Data ACK from slave" );
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_serial_tx_printline
	goto	l3896
	line	185
	
l305:	
	line	193
	
l3896:	
;tea5767.c: 185: }
;tea5767.c: 193: responsebytes[0] = i2c_read_data();
	fcall	_i2c_read_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_tea5767_read+0)+0
	movf	(??_tea5767_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767@responsebytes)^080h
	line	194
	
l3898:	
;tea5767.c: 194: i2c_send_ack();
	fcall	_i2c_send_ack
	line	195
	
l3900:	
;tea5767.c: 195: responsebytes[1] = i2c_read_data();
	fcall	_i2c_read_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_tea5767_read+0)+0
	movf	(??_tea5767_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(tea5767@responsebytes)^080h+01h
	line	196
	
l3902:	
;tea5767.c: 196: i2c_send_ack();
	fcall	_i2c_send_ack
	line	197
	
l3904:	
;tea5767.c: 197: responsebytes[2] = i2c_read_data();
	fcall	_i2c_read_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_tea5767_read+0)+0
	movf	(??_tea5767_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(tea5767@responsebytes)^080h+02h
	line	198
	
l3906:	
;tea5767.c: 198: i2c_send_ack();
	fcall	_i2c_send_ack
	line	199
	
l3908:	
;tea5767.c: 199: responsebytes[3] = i2c_read_data();
	fcall	_i2c_read_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_tea5767_read+0)+0
	movf	(??_tea5767_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(tea5767@responsebytes)^080h+03h
	line	200
	
l3910:	
;tea5767.c: 200: i2c_send_ack();
	fcall	_i2c_send_ack
	line	201
	
l3912:	
;tea5767.c: 201: responsebytes[4] = i2c_read_data();
	fcall	_i2c_read_data
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_tea5767_read+0)+0
	movf	(??_tea5767_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(tea5767@responsebytes)^080h+04h
	line	202
	
l3914:	
;tea5767.c: 202: i2c_send_ack();
	fcall	_i2c_send_ack
	line	205
	
l3916:	
;tea5767.c: 205: i2c_send_nack();
	fcall	_i2c_send_nack
	line	206
	
l3918:	
;tea5767.c: 206: i2c_stop();
	fcall	_i2c_stop
	line	208
	
l3920:	
;tea5767.c: 208: if( (responsebytes[3] & 0x0F) != 0x00 ){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(tea5767@responsebytes)^080h+03h,w
	andlw	0Fh
	btfsc	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l307
u3350:
	line	209
	
l3922:	
;tea5767.c: 209: serial_tx_printline( "Invalid Chip ID" );
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_serial_tx_printline
	goto	l307
	line	210
	
l306:	
	line	211
	
l307:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_read
	__end_of_tea5767_read:
	signat	_tea5767_read,88
	global	_i2c_send_nack

;; *************** function _i2c_send_nack *****************
;; Defined at:
;;		line 77 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
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
;;		_tea5767_read
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
	line	77
global __ptext6
__ptext6:	;psect for function _i2c_send_nack
psect	text6
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
	line	77
	global	__size_of_i2c_send_nack
	__size_of_i2c_send_nack	equ	__end_of_i2c_send_nack-_i2c_send_nack
	
_i2c_send_nack:	
;incstack = 0
	opt	stack 3
; Regs used in _i2c_send_nack: []
	line	79
	
l2892:	
;i2c.c: 79: PIR1bits.SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),3	;volatile
	line	80
;i2c.c: 80: SSPCON2bits.ACKDT = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(145)^080h,5	;volatile
	line	81
;i2c.c: 81: SSPCON2bits.ACKEN = 1;
	bsf	(145)^080h,4	;volatile
	line	82
;i2c.c: 82: while( !PIR1bits.SSPIF );
	goto	l224
	
l225:	
	
l224:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),3	;volatile
	goto	u1881
	goto	u1880
u1881:
	goto	l224
u1880:
	goto	l227
	
l226:	
	line	83
	
l227:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_send_nack
	__end_of_i2c_send_nack:
	signat	_i2c_send_nack,88
	global	_i2c_send_ack

;; *************** function _i2c_send_ack *****************
;; Defined at:
;;		line 69 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
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
;;		_tea5767_read
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	69
global __ptext7
__ptext7:	;psect for function _i2c_send_ack
psect	text7
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
	line	69
	global	__size_of_i2c_send_ack
	__size_of_i2c_send_ack	equ	__end_of_i2c_send_ack-_i2c_send_ack
	
_i2c_send_ack:	
;incstack = 0
	opt	stack 3
; Regs used in _i2c_send_ack: []
	line	71
	
l2890:	
;i2c.c: 71: PIR1bits.SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),3	;volatile
	line	72
;i2c.c: 72: SSPCON2bits.ACKDT = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(145)^080h,5	;volatile
	line	73
;i2c.c: 73: SSPCON2bits.ACKEN = 1;
	bsf	(145)^080h,4	;volatile
	line	74
;i2c.c: 74: while( !PIR1bits.SSPIF );
	goto	l218
	
l219:	
	
l218:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),3	;volatile
	goto	u1871
	goto	u1870
u1871:
	goto	l218
u1870:
	goto	l221
	
l220:	
	line	75
	
l221:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_send_ack
	__end_of_i2c_send_ack:
	signat	_i2c_send_ack,88
	global	_i2c_read_data

;; *************** function _i2c_read_data *****************
;; Defined at:
;;		line 46 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_tea5767_read
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	46
global __ptext8
__ptext8:	;psect for function _i2c_read_data
psect	text8
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
	line	46
	global	__size_of_i2c_read_data
	__size_of_i2c_read_data	equ	__end_of_i2c_read_data-_i2c_read_data
	
_i2c_read_data:	
;incstack = 0
	opt	stack 3
; Regs used in _i2c_read_data: [wreg]
	line	50
	
l2884:	
;i2c.c: 50: PIR1bits.SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),3	;volatile
	line	55
;i2c.c: 55: SSPCON2bits.RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(145)^080h,3	;volatile
	line	56
;i2c.c: 56: while( !PIR1bits.SSPIF );
	goto	l206
	
l207:	
	
l206:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),3	;volatile
	goto	u1861
	goto	u1860
u1861:
	goto	l206
u1860:
	goto	l2886
	
l208:	
	line	58
	
l2886:	
;i2c.c: 58: return SSPBUF;
	movf	(19),w	;volatile
	goto	l209
	
l2888:	
	line	59
	
l209:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_read_data
	__end_of_i2c_read_data:
	signat	_i2c_read_data,89
	global	_tea5767_getfreq

;; *************** function _tea5767_getfreq *****************
;; Defined at:
;;		line 38 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
;; Parameters:    Size  Location     Type
;;  byte1           1    wreg     unsigned char 
;;  byte2           1   77[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte1           1    8[BANK1 ] unsigned char 
;;  dta             3    9[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   77[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0      10       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       3      12       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		_ceil
;; This function is called by:
;;		_tea5767_search
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	38
global __ptext9
__ptext9:	;psect for function _tea5767_getfreq
psect	text9
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	38
	global	__size_of_tea5767_getfreq
	__size_of_tea5767_getfreq	equ	__end_of_tea5767_getfreq-_tea5767_getfreq
	
_tea5767_getfreq:	
;incstack = 0
	opt	stack 1
; Regs used in _tea5767_getfreq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;tea5767_getfreq@byte1 stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767_getfreq@byte1)^080h
	line	40
	
l5248:	
;tea5767.c: 40: double dta = (ceil(ceil(((byte1 & 0x3F) << 8) + byte2) * 32768 / 4 - 225000) / 1000000);
	movlw	0x0
	movwf	(___ftdiv@f2)^080h
	movlw	0x80
	movwf	(___ftdiv@f2+1)^080h
	movlw	0x40
	movwf	(___ftdiv@f2+2)^080h
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x47
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_getfreq@byte1)^080h,w
	andlw	03Fh
	movwf	(??_tea5767_getfreq+0)^080h+0
	clrf	(??_tea5767_getfreq+0)^080h+0+1
	movf	(??_tea5767_getfreq+0)^080h+0,w
	movwf	(??_tea5767_getfreq+0)^080h+1
	clrf	(??_tea5767_getfreq+0)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(tea5767_getfreq@byte2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	0+(??_tea5767_getfreq+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@c)
	movlw	0
	skipnc
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	1+(??_tea5767_getfreq+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(___awtoft@c)
	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(ceil@x)
	movf	(1+(?___awtoft)),w
	movwf	(ceil@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(ceil@x+2)
	fcall	_ceil
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ceil)),w
	movwf	(___ftmul@f2)
	movf	(1+(?_ceil)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?_ceil)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftdiv@f1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftdiv@f1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftdiv@f1+2)^080h
	fcall	___ftdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftdiv))^080h,w
	movwf	(_tea5767_getfreq$1037)^080h
	movf	(1+(?___ftdiv))^080h,w
	movwf	(_tea5767_getfreq$1037+1)^080h
	movf	(2+(?___ftdiv))^080h,w
	movwf	(_tea5767_getfreq$1037+2)^080h
	
l5250:	
;tea5767.c: 40: double dta = (ceil(ceil(((byte1 & 0x3F) << 8) + byte2) * 32768 / 4 - 225000) / 1000000);
	movlw	0xba
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x5b
	movwf	(___ftadd@f1+1)
	movlw	0xc8
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tea5767_getfreq$1037)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tea5767_getfreq$1037+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tea5767_getfreq$1037+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_tea5767_getfreq$1038)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_tea5767_getfreq$1038+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_tea5767_getfreq$1038+2)^080h
	
l5252:	
;tea5767.c: 40: double dta = (ceil(ceil(((byte1 & 0x3F) << 8) + byte2) * 32768 / 4 - 225000) / 1000000);
	movlw	0x24
	movwf	(___ftdiv@f2)^080h
	movlw	0x74
	movwf	(___ftdiv@f2+1)^080h
	movlw	0x49
	movwf	(___ftdiv@f2+2)^080h
	movf	(_tea5767_getfreq$1038)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ceil@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tea5767_getfreq$1038+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ceil@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tea5767_getfreq$1038+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ceil@x+2)
	fcall	_ceil
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ceil)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftdiv@f1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_ceil)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftdiv@f1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_ceil)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftdiv@f1+2)^080h
	fcall	___ftdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftdiv))^080h,w
	movwf	(tea5767_getfreq@dta)^080h
	movf	(1+(?___ftdiv))^080h,w
	movwf	(tea5767_getfreq@dta+1)^080h
	movf	(2+(?___ftdiv))^080h,w
	movwf	(tea5767_getfreq@dta+2)^080h
	line	41
	
l5254:	
;tea5767.c: 41: return dta;
	movf	(tea5767_getfreq@dta)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_tea5767_getfreq)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_getfreq@dta+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_tea5767_getfreq+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_getfreq@dta+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_tea5767_getfreq+2)
	goto	l280
	
l5256:	
	line	42
	
l280:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_getfreq
	__end_of_tea5767_getfreq:
	signat	_tea5767_getfreq,8315
	global	_ceil

;; *************** function _ceil *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ceil.c"
;; Parameters:    Size  Location     Type
;;  x               3   31[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               3   40[BANK0 ] unsigned char 
;;  expon           2   43[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   31[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___altoft
;;		___ftadd
;;		___ftge
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_tea5767_getfreq
;;		_tea5767_round_freq
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ceil.c"
	line	13
global __ptext10
__ptext10:	;psect for function _ceil
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ceil.c"
	line	13
	global	__size_of_ceil
	__size_of_ceil	equ	__end_of_ceil-_ceil
	
_ceil:	
;incstack = 0
	opt	stack 1
; Regs used in _ceil: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l5258:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ceil@x),w
	movwf	(frexp@value)
	movf	(ceil@x+1),w
	movwf	(frexp@value+1)
	movf	(ceil@x+2),w
	movwf	(frexp@value+2)
	movlw	(ceil@expon)&0ffh
	movwf	(??_ceil+0)+0
	movf	(??_ceil+0)+0,w
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
l5260:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ceil@expon+1),7
	goto	u5021
	goto	u5020
u5021:
	goto	l5274
u5020:
	line	20
	
l5262:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x0
	movwf	(___ftge@ff1+2)
	movf	(ceil@x),w
	movwf	(___ftge@ff2)
	movf	(ceil@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(ceil@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u5031
	goto	u5030
u5031:
	goto	l5270
u5030:
	line	21
	
l5264:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ceil)
	movlw	0x0
	movwf	(?_ceil+1)
	movlw	0x0
	movwf	(?_ceil+2)
	goto	l654
	
l5266:	
	goto	l654
	
l5268:	
	goto	l5274
	line	22
	
l653:	
	line	23
	
l5270:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ceil)
	movlw	0x80
	movwf	(?_ceil+1)
	movlw	0x3f
	movwf	(?_ceil+2)
	goto	l654
	
l5272:	
	goto	l654
	
l655:	
	goto	l5274
	
l652:	
	line	24
	
l5274:	
	movlw	high(015h)
	subwf	(ceil@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(ceil@expon),w
	skipc
	goto	u5041
	goto	u5040
u5041:
	goto	l5278
u5040:
	line	25
	
l5276:	
	goto	l654
	
l656:	
	line	26
	
l5278:	
	movf	(ceil@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fttol@f1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ceil@x+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fttol@f1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ceil@x+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fttol@f1+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___altoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___altoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___altoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___altoft@c)

	fcall	___altoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___altoft)),w
	movwf	(ceil@i)
	movf	(1+(?___altoft)),w
	movwf	(ceil@i+1)
	movf	(2+(?___altoft)),w
	movwf	(ceil@i+2)
	line	27
	movf	(ceil@i),w
	movwf	(___ftge@ff1)
	movf	(ceil@i+1),w
	movwf	(___ftge@ff1+1)
	movf	(ceil@i+2),w
	movwf	(___ftge@ff1+2)
	movf	(ceil@x),w
	movwf	(___ftge@ff2)
	movf	(ceil@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(ceil@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u5051
	goto	u5050
u5051:
	goto	l5284
u5050:
	line	28
	
l5280:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	movf	(ceil@i),w
	movwf	(___ftadd@f2)
	movf	(ceil@i+1),w
	movwf	(___ftadd@f2+1)
	movf	(ceil@i+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_ceil)
	movf	(1+(?___ftadd)),w
	movwf	(?_ceil+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_ceil+2)
	goto	l654
	
l5282:	
	goto	l654
	
l657:	
	line	29
	
l5284:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ceil@i),w
	movwf	(?_ceil)
	movf	(ceil@i+1),w
	movwf	(?_ceil+1)
	movf	(ceil@i+2),w
	movwf	(?_ceil+2)
	goto	l654
	
l5286:	
	line	30
	
l654:	
	return
	opt stack 0
GLOBAL	__end_of_ceil
	__end_of_ceil:
	signat	_ceil,4219
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[BANK0 ] float 
;;  ff2             3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_tea5767_search
;;		_ceil
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftge.c"
	line	4
global __ptext11
__ptext11:	;psect for function ___ftge
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l4422:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l4426
u4190:
	line	7
	
l4424:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u4201
	goto	u4202
u4201:
	addwf	(??___ftge+0)+1,f
	
u4202:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u4203
	goto	u4204
u4203:
	addwf	(??___ftge+0)+2,f
	
u4204:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l4426
	
l744:	
	line	8
	
l4426:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l4430
u4210:
	line	9
	
l4428:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u4221
	goto	u4222
u4221:
	addwf	(??___ftge+0)+1,f
	
u4222:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u4223
	goto	u4224
u4223:
	addwf	(??___ftge+0)+2,f
	
u4224:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l4430
	
l745:	
	line	10
	
l4430:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l4432:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l4434:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u4235
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u4235
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u4235:
	skipnc
	goto	u4231
	goto	u4230
u4231:
	goto	l4438
u4230:
	
l4436:	
	clrc
	
	goto	l746
	
l3630:	
	
l4438:	
	setc
	
	goto	l746
	
l3632:	
	goto	l746
	
l4440:	
	line	13
	
l746:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_tea5767_getfreq
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtoft.c"
	line	32
global __ptext12
__ptext12:	;psect for function ___awtoft
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5376:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	
l5378:	
	btfss	(___awtoft@c+1),7
	goto	u5151
	goto	u5150
u5151:
	goto	l5384
u5150:
	line	38
	
l5380:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l5382:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l5384
	line	40
	
l640:	
	line	41
	
l5384:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l641
	
l5386:	
	line	42
	
l641:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_tea5767_search
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftneg.c"
	line	15
global __ptext13
__ptext13:	;psect for function ___ftneg
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftneg: [wreg]
	line	17
	
l4492:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u4381
	goto	u4380
u4381:
	goto	l4496
u4380:
	line	18
	
l4494:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l4496
	
l762:	
	line	19
	
l4496:	
	goto	l763
	
l4498:	
	line	20
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_tea5767_init

;; *************** function _tea5767_init *****************
;; Defined at:
;;		line 12 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pll             2   32[BANK1 ] unsigned int 
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
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_tea5767_getpll
;;		_tea5767_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	12
global __ptext14
__ptext14:	;psect for function _tea5767_init
psect	text14
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	12
	global	__size_of_tea5767_init
	__size_of_tea5767_init	equ	__end_of_tea5767_init-_tea5767_init
	
_tea5767_init:	
;incstack = 0
	opt	stack 2
; Regs used in _tea5767_init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l3872:	
;tea5767.c: 15: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_tea5767_init+0)^080h+0+2),f
movlw	138
movwf	((??_tea5767_init+0)^080h+0+1),f
	movlw	86
movwf	((??_tea5767_init+0)^080h+0),f
u5187:
	decfsz	((??_tea5767_init+0)^080h+0),f
	goto	u5187
	decfsz	((??_tea5767_init+0)^080h+0+1),f
	goto	u5187
	decfsz	((??_tea5767_init+0)^080h+0+2),f
	goto	u5187
	nop2
opt asmopt_on

	line	17
;tea5767.c: 17: current_freq = 87.0;
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(tea5767@current_freq)^080h
	movlw	0xae
	movwf	(tea5767@current_freq+1)^080h
	movlw	0x42
	movwf	(tea5767@current_freq+2)^080h
	line	18
	
l3874:	
;tea5767.c: 18: unsigned int pll = tea5767_getpll( current_freq );
	movf	(tea5767@current_freq)^080h,w
	movwf	(tea5767_getpll@freq)^080h
	movf	(tea5767@current_freq+1)^080h,w
	movwf	(tea5767_getpll@freq+1)^080h
	movf	(tea5767@current_freq+2)^080h,w
	movwf	(tea5767_getpll@freq+2)^080h
	fcall	_tea5767_getpll
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_tea5767_getpll))^080h,w
	clrf	(tea5767_init@pll+1)^080h
	addwf	(tea5767_init@pll+1)^080h
	movf	(0+(?_tea5767_getpll))^080h,w
	clrf	(tea5767_init@pll)^080h
	addwf	(tea5767_init@pll)^080h

	line	20
	
l3876:	
;tea5767.c: 20: commandbytes[0] = (pll >> 8);
	movf	(tea5767_init@pll+1)^080h,w
	movwf	(??_tea5767_init+0)^080h+0
	movf	(??_tea5767_init+0)^080h+0,w
	movwf	(tea5767@commandbytes)^080h
	line	21
	
l3878:	
;tea5767.c: 21: commandbytes[1] = pll & 0xFF;
	movf	(tea5767_init@pll)^080h,w
	movwf	(??_tea5767_init+0)^080h+0
	movf	(??_tea5767_init+0)^080h+0,w
	movwf	0+(tea5767@commandbytes)^080h+01h
	line	23
	
l3880:	
;tea5767.c: 23: commandbytes[2] = 0xD0;
	movlw	(0D0h)
	movwf	(??_tea5767_init+0)^080h+0
	movf	(??_tea5767_init+0)^080h+0,w
	movwf	0+(tea5767@commandbytes)^080h+02h
	line	24
	
l3882:	
;tea5767.c: 24: commandbytes[3] = 0x10;
	movlw	(010h)
	movwf	(??_tea5767_init+0)^080h+0
	movf	(??_tea5767_init+0)^080h+0,w
	movwf	0+(tea5767@commandbytes)^080h+03h
	line	25
	
l3884:	
;tea5767.c: 25: commandbytes[4] = 0x00;
	clrf	0+(tea5767@commandbytes)^080h+04h
	line	27
	
l3886:	
;tea5767.c: 27: tea5767_write();
	fcall	_tea5767_write
	line	28
	
l274:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_init
	__end_of_tea5767_init:
	signat	_tea5767_init,88
	global	_tea5767_write

;; *************** function _tea5767_write *****************
;; Defined at:
;;		line 123 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0        int 
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_i2c_send_controlbyte
;;		_i2c_send_data
;;		_i2c_start
;;		_i2c_stop
;;		_serial_tx_printline
;; This function is called by:
;;		_tea5767_init
;;		_tea5767_tune
;;		_tea5767_search
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	123
global __ptext15
__ptext15:	;psect for function _tea5767_write
psect	text15
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	123
	global	__size_of_tea5767_write
	__size_of_tea5767_write	equ	__end_of_tea5767_write-_tea5767_write
	
_tea5767_write:	
;incstack = 0
	opt	stack 1
; Regs used in _tea5767_write: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	127
	
l3936:	
;tea5767.c: 125: int i;
;tea5767.c: 127: i2c_start();
	fcall	_i2c_start
	line	128
	
l3938:	
;tea5767.c: 128: i2c_send_controlbyte( 0x60, 0 );
	clrf	(i2c_send_controlbyte@rw_bit)
	movlw	(060h)
	fcall	_i2c_send_controlbyte
	line	135
	
l3940:	
;tea5767.c: 135: i2c_send_data( commandbytes[0] );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@commandbytes)^080h,w
	fcall	_i2c_send_data
	line	136
	
l3942:	
;tea5767.c: 136: i2c_send_data( commandbytes[1] );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(tea5767@commandbytes)^080h+01h,w
	fcall	_i2c_send_data
	line	137
	
l3944:	
;tea5767.c: 137: i2c_send_data( commandbytes[2] );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(tea5767@commandbytes)^080h+02h,w
	fcall	_i2c_send_data
	line	138
	
l3946:	
;tea5767.c: 138: i2c_send_data( commandbytes[3] );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(tea5767@commandbytes)^080h+03h,w
	fcall	_i2c_send_data
	line	139
	
l3948:	
;tea5767.c: 139: i2c_send_data( commandbytes[4] );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(tea5767@commandbytes)^080h+04h,w
	fcall	_i2c_send_data
	line	142
	
l3950:	
;tea5767.c: 142: if( SSPCON2bits.ACKSTAT == 1 ){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(145)^080h,6	;volatile
	goto	u3381
	goto	u3380
u3381:
	goto	l3954
u3380:
	line	143
	
l3952:	
;tea5767.c: 143: serial_tx_printline( "No Data ACK from slave" );
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_serial_tx_printline
	goto	l3954
	line	144
	
l301:	
	line	146
	
l3954:	
;tea5767.c: 144: }
;tea5767.c: 146: i2c_stop();
	fcall	_i2c_stop
	line	147
	
l302:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_write
	__end_of_tea5767_write:
	signat	_tea5767_write,88
	global	_serial_tx_printline

;; *************** function _serial_tx_printline *****************
;; Defined at:
;;		line 57 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> STR_7(10), STR_6(16), STR_5(16), STR_4(36), 
;;		 -> STR_3(23), 
;; Auto vars:     Size  Location     Type
;;  str             1    1[BANK0 ] PTR unsigned char 
;;		 -> STR_7(10), STR_6(16), STR_5(16), STR_4(36), 
;;		 -> STR_3(23), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_serial_tx_poll
;;		_serial_tx_print
;; This function is called by:
;;		_tea5767_write
;;		_tea5767_read
;;		_tea5767_search
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
	line	57
global __ptext16
__ptext16:	;psect for function _serial_tx_printline
psect	text16
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
	line	57
	global	__size_of_serial_tx_printline
	__size_of_serial_tx_printline	equ	__end_of_serial_tx_printline-_serial_tx_printline
	
_serial_tx_printline:	
;incstack = 0
	opt	stack 1
; Regs used in _serial_tx_printline: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;serial_tx_printline@str stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serial_tx_printline@str)
	line	59
	
l3650:	
;serial.c: 59: serial_tx_print( str );
	movf	(serial_tx_printline@str),w
	fcall	_serial_tx_print
	line	62
	
l3652:	
;serial.c: 62: serial_tx_poll( 0x0D );
	movlw	(0Dh)
	fcall	_serial_tx_poll
	line	64
	
l3654:	
;serial.c: 64: serial_tx_poll( 0x0A );
	movlw	(0Ah)
	fcall	_serial_tx_poll
	line	65
	
l30:	
	return
	opt stack 0
GLOBAL	__end_of_serial_tx_printline
	__end_of_serial_tx_printline:
	signat	_serial_tx_printline,4216
	global	_serial_tx_print

;; *************** function _serial_tx_print *****************
;; Defined at:
;;		line 49 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> STR_7(10), STR_6(16), STR_5(16), STR_4(36), 
;;		 -> STR_3(23), 
;; Auto vars:     Size  Location     Type
;;  str             1    0[BANK0 ] PTR unsigned char 
;;		 -> STR_7(10), STR_6(16), STR_5(16), STR_4(36), 
;;		 -> STR_3(23), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       1       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_serial_tx_poll
;; This function is called by:
;;		_serial_tx_printline
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	49
global __ptext17
__ptext17:	;psect for function _serial_tx_print
psect	text17
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
	line	49
	global	__size_of_serial_tx_print
	__size_of_serial_tx_print	equ	__end_of_serial_tx_print-_serial_tx_print
	
_serial_tx_print:	
;incstack = 0
	opt	stack 1
; Regs used in _serial_tx_print: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;serial_tx_print@str stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serial_tx_print@str)
	line	51
	
l3642:	
;serial.c: 51: while( *(str) != '\0' ){
	goto	l3648
	
l25:	
	line	52
	
l3644:	
;serial.c: 53: str = str++;
	movf	(serial_tx_print@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_serial_tx_poll
	line	53
	
l3646:	
	movlw	(01h)
	movwf	(??_serial_tx_print+0)+0
	movf	(??_serial_tx_print+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(serial_tx_print@str),f
	goto	l3648
	line	54
	
l24:	
	line	51
	
l3648:	
	movf	(serial_tx_print@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l3644
u3180:
	goto	l27
	
l26:	
	line	55
	
l27:	
	return
	opt stack 0
GLOBAL	__end_of_serial_tx_print
	__end_of_serial_tx_print:
	signat	_serial_tx_print,4216
	global	_serial_tx_poll

;; *************** function _serial_tx_poll *****************
;; Defined at:
;;		line 32 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
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
psect	text18,local,class=CODE,delta=2,merge=1
	line	32
global __ptext18
__ptext18:	;psect for function _serial_tx_poll
psect	text18
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
	line	32
	global	__size_of_serial_tx_poll
	__size_of_serial_tx_poll	equ	__end_of_serial_tx_poll-_serial_tx_poll
	
_serial_tx_poll:	
;incstack = 0
	opt	stack 1
; Regs used in _serial_tx_poll: [wreg]
;serial_tx_poll@val stored from wreg
	movwf	(serial_tx_poll@val)
	line	34
	
l3638:	
;serial.c: 34: while( PIR1bits.TXIF == 0 );
	goto	l12
	
l13:	
	
l12:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u3171
	goto	u3170
u3171:
	goto	l12
u3170:
	goto	l3640
	
l14:	
	line	36
	
l3640:	
;serial.c: 36: TXREG = val;
	movf	(serial_tx_poll@val),w
	movwf	(25)	;volatile
	line	37
	
l15:	
	return
	opt stack 0
GLOBAL	__end_of_serial_tx_poll
	__end_of_serial_tx_poll:
	signat	_serial_tx_poll,4216
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 25 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
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
;;		_tea5767_write
;;		_tea5767_read
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
	line	25
global __ptext19
__ptext19:	;psect for function _i2c_stop
psect	text19
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
	line	25
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
;incstack = 0
	opt	stack 3
; Regs used in _i2c_stop: []
	line	27
	
l2874:	
;i2c.c: 27: PIR1bits.SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),3	;volatile
	line	28
;i2c.c: 28: SSPCON2bits.PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(145)^080h,2	;volatile
	line	29
;i2c.c: 29: while( !PIR1bits.SSPIF );
	goto	l188
	
l189:	
	
l188:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),3	;volatile
	goto	u1821
	goto	u1820
u1821:
	goto	l188
u1820:
	goto	l191
	
l190:	
	line	30
	
l191:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,88
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 18 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
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
;;		_tea5767_write
;;		_tea5767_read
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	18
global __ptext20
__ptext20:	;psect for function _i2c_start
psect	text20
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
	line	18
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
;incstack = 0
	opt	stack 3
; Regs used in _i2c_start: []
	line	20
	
l2872:	
;i2c.c: 20: PIR1bits.SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),3	;volatile
	line	21
;i2c.c: 21: SSPCON2bits.SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(145)^080h,0	;volatile
	line	22
;i2c.c: 22: while( !PIR1bits.SSPIF );
	goto	l182
	
l183:	
	
l182:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),3	;volatile
	goto	u1811
	goto	u1810
u1811:
	goto	l182
u1810:
	goto	l185
	
l184:	
	line	23
	
l185:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,88
	global	_i2c_send_data

;; *************** function _i2c_send_data *****************
;; Defined at:
;;		line 39 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
;; Parameters:    Size  Location     Type
;;  dta             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dta             1    4[COMMON] unsigned char 
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
;;		_tea5767_write
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	39
global __ptext21
__ptext21:	;psect for function _i2c_send_data
psect	text21
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
	line	39
	global	__size_of_i2c_send_data
	__size_of_i2c_send_data	equ	__end_of_i2c_send_data-_i2c_send_data
	
_i2c_send_data:	
;incstack = 0
	opt	stack 3
; Regs used in _i2c_send_data: [wreg]
;i2c_send_data@dta stored from wreg
	movwf	(i2c_send_data@dta)
	line	41
	
l2880:	
;i2c.c: 41: PIR1bits.SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),3	;volatile
	line	42
	
l2882:	
;i2c.c: 42: SSPBUF = dta;
	movf	(i2c_send_data@dta),w
	movwf	(19)	;volatile
	line	43
;i2c.c: 43: while( !PIR1bits.SSPIF );
	goto	l200
	
l201:	
	
l200:	
	btfss	(12),3	;volatile
	goto	u1851
	goto	u1850
u1851:
	goto	l200
u1850:
	goto	l203
	
l202:	
	line	44
	
l203:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_send_data
	__end_of_i2c_send_data:
	signat	_i2c_send_data,4216
	global	_i2c_send_controlbyte

;; *************** function _i2c_send_controlbyte *****************
;; Defined at:
;;		line 32 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  rw_bit          1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       1       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_tea5767_write
;;		_tea5767_read
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	32
global __ptext22
__ptext22:	;psect for function _i2c_send_controlbyte
psect	text22
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\i2c.c"
	line	32
	global	__size_of_i2c_send_controlbyte
	__size_of_i2c_send_controlbyte	equ	__end_of_i2c_send_controlbyte-_i2c_send_controlbyte
	
_i2c_send_controlbyte:	
;incstack = 0
	opt	stack 3
; Regs used in _i2c_send_controlbyte: [wreg+status,2+status,0]
;i2c_send_controlbyte@addr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(i2c_send_controlbyte@addr)
	line	34
	
l3928:	
;i2c.c: 34: PIR1bits.SSPIF = 0;
	bcf	(12),3	;volatile
	line	35
	
l3930:	
;i2c.c: 35: SSPBUF = (addr << 1) + rw_bit;
	movf	(i2c_send_controlbyte@addr),w
	movwf	(??_i2c_send_controlbyte+0)+0
	movlw	01h
u3365:
	clrc
	rlf	(??_i2c_send_controlbyte+0)+0,f
	addlw	-1
	skipz
	goto	u3365
	movf	(i2c_send_controlbyte@rw_bit),w
	addwf	0+(??_i2c_send_controlbyte+0)+0,w
	movwf	(19)	;volatile
	line	36
;i2c.c: 36: while( !PIR1bits.SSPIF );
	goto	l194
	
l195:	
	
l194:	
	btfss	(12),3	;volatile
	goto	u3371
	goto	u3370
u3371:
	goto	l194
u3370:
	goto	l197
	
l196:	
	line	37
	
l197:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_send_controlbyte
	__end_of_i2c_send_controlbyte:
	signat	_i2c_send_controlbyte,8312
	global	_tea5767_getpll

;; *************** function _tea5767_getpll *****************
;; Defined at:
;;		line 31 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
;; Parameters:    Size  Location     Type
;;  freq            3   26[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   26[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       3       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		_tea5767_init
;;		_tea5767_tune
;;		_tea5767_search
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	31
global __ptext23
__ptext23:	;psect for function _tea5767_getpll
psect	text23
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	31
	global	__size_of_tea5767_getpll
	__size_of_tea5767_getpll	equ	__end_of_tea5767_getpll-_tea5767_getpll
	
_tea5767_getpll:	
;incstack = 0
	opt	stack 1
; Regs used in _tea5767_getpll: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l3932:	
;tea5767.c: 33: return (unsigned int)(4 * ( freq * 1000000 + 225000 ) / 32768);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_getpll@freq)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_getpll@freq+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_getpll@freq+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x24
	movwf	(___ftmul@f1)
	movlw	0x74
	movwf	(___ftmul@f1+1)
	movlw	0x49
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	movlw	0xba
	movwf	(___ftadd@f1)
	movlw	0x5b
	movwf	(___ftadd@f1+1)
	movlw	0x48
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(_tea5767_getpll$1036)
	movf	(1+(?___ftadd)),w
	movwf	(_tea5767_getpll$1036+1)
	movf	(2+(?___ftadd)),w
	movwf	(_tea5767_getpll$1036+2)
;tea5767.c: 33: return (unsigned int)(4 * ( freq * 1000000 + 225000 ) / 32768);
	movf	(_tea5767_getpll$1036),w
	movwf	(___ftmul@f2)
	movf	(_tea5767_getpll$1036+1),w
	movwf	(___ftmul@f2+1)
	movf	(_tea5767_getpll$1036+2),w
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x80
	movwf	(___ftmul@f1+1)
	movlw	0x40
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftdiv@f1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftdiv@f1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftdiv@f1+2)^080h
	movlw	0x0
	movwf	(___ftdiv@f2)^080h
	movlw	0x0
	movwf	(___ftdiv@f2+1)^080h
	movlw	0x47
	movwf	(___ftdiv@f2+2)^080h
	fcall	___ftdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftdiv))^080h,w
	movwf	(___fttol@f1)^080h
	movf	(1+(?___ftdiv))^080h,w
	movwf	(___fttol@f1+1)^080h
	movf	(2+(?___ftdiv))^080h,w
	movwf	(___fttol@f1+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	clrf	(?_tea5767_getpll+1)^080h
	addwf	(?_tea5767_getpll+1)^080h
	movf	0+(((0+(?___fttol))^080h)),w
	clrf	(?_tea5767_getpll)^080h
	addwf	(?_tea5767_getpll)^080h

	goto	l277
	
l3934:	
	line	34
	
l277:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_getpll
	__end_of_tea5767_getpll:
	signat	_tea5767_getpll,4218
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK1 ] float 
;;  f1              3    3[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   72[BANK0 ] float 
;;  sign            1   76[BANK0 ] unsigned char 
;;  exp             1   75[BANK0 ] unsigned char 
;;  cntr            1   71[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK1 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       6       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_tea5767_getpll
;;		_tea5767_getfreq
;;		_tea5767_round_freq
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\ftdiv.c"
	line	49
global __ptext24
__ptext24:	;psect for function ___ftdiv
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l4380:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l4386
u4110:
	line	56
	
l4382:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv)^080h
	movlw	0x0
	movwf	(?___ftdiv+1)^080h
	movlw	0x0
	movwf	(?___ftdiv+2)^080h
	goto	l737
	
l4384:	
	goto	l737
	
l736:	
	line	57
	
l4386:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l4392
u4120:
	line	58
	
l4388:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv)^080h
	movlw	0x0
	movwf	(?___ftdiv+1)^080h
	movlw	0x0
	movwf	(?___ftdiv+2)^080h
	goto	l737
	
l4390:	
	goto	l737
	
l738:	
	line	59
	
l4392:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l4394:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l4396:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4135:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4130:
	addlw	-1
	skipz
	goto	u4135
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l4398:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4145:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4140:
	addlw	-1
	skipz
	goto	u4145
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l4400:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l4402:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(___ftdiv@f1)^080h+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1)^080h,f
	movlw	0FFh
	andwf	(___ftdiv@f1+1)^080h,f
	movlw	0
	andwf	(___ftdiv@f1+2)^080h,f
	line	66
	
l4404:	
	bsf	(___ftdiv@f2)^080h+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2)^080h,f
	movlw	0FFh
	andwf	(___ftdiv@f2+1)^080h,f
	movlw	0
	andwf	(___ftdiv@f2+2)^080h,f
	line	68
	movlw	(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l4406
	line	69
	
l739:	
	line	70
	
l4406:	
	movlw	01h
u4155:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u4155
	line	71
	
l4408:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftdiv@f2+2)^080h,w
	subwf	(___ftdiv@f1+2)^080h,w
	skipz
	goto	u4165
	movf	(___ftdiv@f2+1)^080h,w
	subwf	(___ftdiv@f1+1)^080h,w
	skipz
	goto	u4165
	movf	(___ftdiv@f2)^080h,w
	subwf	(___ftdiv@f1)^080h,w
u4165:
	skipc
	goto	u4161
	goto	u4160
u4161:
	goto	l4414
u4160:
	line	72
	
l4410:	
	movf	(___ftdiv@f2)^080h,w
	subwf	(___ftdiv@f1)^080h,f
	movf	(___ftdiv@f2+1)^080h,w
	skipc
	incfsz	(___ftdiv@f2+1)^080h,w
	subwf	(___ftdiv@f1+1)^080h,f
	movf	(___ftdiv@f2+2)^080h,w
	skipc
	incf	(___ftdiv@f2+2)^080h,w
	subwf	(___ftdiv@f1+2)^080h,f
	line	73
	
l4412:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l4414
	line	74
	
l740:	
	line	75
	
l4414:	
	movlw	01h
u4175:
	clrc
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rlf	(___ftdiv@f1)^080h,f
	rlf	(___ftdiv@f1+1)^080h,f
	rlf	(___ftdiv@f1+2)^080h,f
	addlw	-1
	skipz
	goto	u4175
	line	76
	
l4416:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l4406
u4180:
	goto	l4418
	
l741:	
	line	77
	
l4418:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftdiv+2)^080h
	goto	l737
	
l4420:	
	line	78
	
l737:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   15[BANK0 ] float 
;;  f2              3   18[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   30[BANK0 ] unsigned char 
;;  exp2            1   29[BANK0 ] unsigned char 
;;  sign            1   28[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   15[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_tea5767_getpll
;;		_tea5767_getfreq
;;		_tea5767_search
;;		_ceil
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftadd.c"
	line	86
global __ptext25
__ptext25:	;psect for function ___ftadd
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l4308:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l4310:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3870
	goto	l4316
u3870:
	
l4312:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3881
	goto	u3880
u3881:
	goto	l4320
u3880:
	
l4314:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l4320
u3890:
	goto	l4316
	
l705:	
	line	93
	
l4316:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l706
	
l4318:	
	goto	l706
	
l703:	
	line	94
	
l4320:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3900
	goto	l709
u3900:
	
l4322:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l4326
u3910:
	
l4324:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l4326
u3920:
	
l709:	
	line	95
	goto	l706
	
l707:	
	line	96
	
l4326:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l4328:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l710
u3930:
	line	98
	
l4330:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l710:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3941
	goto	u3940
u3941:
	goto	l711
u3940:
	line	100
	
l4332:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l711:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l4334:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l4336:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3951
	goto	u3950
u3951:
	goto	l4348
u3950:
	goto	l4338
	line	109
	
l713:	
	line	110
	
l4338:	
	movlw	01h
u3965:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u3965
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l4340:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3971
	goto	u3970
u3971:
	goto	l4346
u3970:
	
l4342:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l4338
u3980:
	goto	l4346
	
l715:	
	goto	l4346
	
l716:	
	line	113
	goto	l4346
	
l718:	
	line	114
	
l4344:	
	movlw	01h
u3995:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u3995

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l4346
	line	116
	
l717:	
	line	113
	
l4346:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4001
	goto	u4000
u4001:
	goto	l4344
u4000:
	goto	l720
	
l719:	
	line	117
	goto	l720
	
l712:	
	
l4348:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l720
u4010:
	goto	l4350
	line	120
	
l722:	
	line	121
	
l4350:	
	movlw	01h
u4025:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u4025
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l4352:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4031
	goto	u4030
u4031:
	goto	l4358
u4030:
	
l4354:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l4350
u4040:
	goto	l4358
	
l724:	
	goto	l4358
	
l725:	
	line	124
	goto	l4358
	
l727:	
	line	125
	
l4356:	
	movlw	01h
u4055:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u4055

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l4358
	line	127
	
l726:	
	line	124
	
l4358:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l4356
u4060:
	goto	l720
	
l728:	
	goto	l720
	line	128
	
l721:	
	line	129
	
l720:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l4362
u4070:
	line	131
	
l4360:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l4362
	line	133
	
l729:	
	line	134
	
l4362:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l4366
u4080:
	line	136
	
l4364:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l4366
	line	138
	
l730:	
	line	139
	
l4366:	
	clrf	(___ftadd@sign)
	line	140
	
l4368:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u4091
	addwf	(___ftadd@f2+1),f
u4091:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u4092
	addwf	(___ftadd@f2+2),f
u4092:

	line	141
	
l4370:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4101
	goto	u4100
u4101:
	goto	l4376
u4100:
	line	142
	
l4372:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l4374:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l4376
	line	145
	
l731:	
	line	146
	
l4376:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l706
	
l4378:	
	line	148
	
l706:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	_print_signal_level

;; *************** function _print_signal_level *****************
;; Defined at:
;;		line 122 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lvl             2   35[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_hd44780_block_erase
;;		_hd44780_printint
;;		_tea5767_signal_level
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	122
global __ptext26
__ptext26:	;psect for function _print_signal_level
psect	text26
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	122
	global	__size_of_print_signal_level
	__size_of_print_signal_level	equ	__end_of_print_signal_level-_print_signal_level
	
_print_signal_level:	
;incstack = 0
	opt	stack 1
; Regs used in _print_signal_level: [allreg]
	line	126
	
l3810:	
;main.c: 124: static uint8_t prev_lvl = 0;
;main.c: 126: int lvl = tea5767_signal_level();
	fcall	_tea5767_signal_level
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_print_signal_level+0)+0
	clrf	(??_print_signal_level+0)+0+1
	movf	0+(??_print_signal_level+0)+0,w
	movwf	(print_signal_level@lvl)
	movf	1+(??_print_signal_level+0)+0,w
	movwf	(print_signal_level@lvl+1)
	line	128
	
l3812:	
;main.c: 128: if( prev_lvl != lvl ){
	movf	(print_signal_level@prev_lvl),w
	movwf	(??_print_signal_level+0)+0
	clrf	(??_print_signal_level+0)+0+1
	movf	(print_signal_level@lvl+1),w
	xorwf	1+(??_print_signal_level+0)+0,w
	skipz
	goto	u3275
	movf	(print_signal_level@lvl),w
	xorwf	0+(??_print_signal_level+0)+0,w
u3275:

	skipnz
	goto	u3271
	goto	u3270
u3271:
	goto	l146
u3270:
	line	129
	
l3814:	
;main.c: 129: hd44780_block_erase( 14, 3 );
	movlw	(03h)
	movwf	(??_print_signal_level+0)+0
	movf	(??_print_signal_level+0)+0,w
	movwf	(hd44780_block_erase@length)
	movlw	(0Eh)
	fcall	_hd44780_block_erase
	line	130
	
l3816:	
;main.c: 130: hd44780_printint( lvl, 14 );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(print_signal_level@lvl+1),w
	clrf	(hd44780_printint@dta+1)
	addwf	(hd44780_printint@dta+1)
	movf	(print_signal_level@lvl),w
	clrf	(hd44780_printint@dta)
	addwf	(hd44780_printint@dta)

	movlw	(0Eh)
	movwf	(??_print_signal_level+0)+0
	movf	(??_print_signal_level+0)+0,w
	movwf	(hd44780_printint@loc)
	fcall	_hd44780_printint
	line	131
	
l3818:	
;main.c: 131: prev_lvl = lvl;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(print_signal_level@lvl),w
	movwf	(??_print_signal_level+0)+0
	movf	(??_print_signal_level+0)+0,w
	movwf	(print_signal_level@prev_lvl)
	goto	l146
	line	132
	
l145:	
	line	133
	
l146:	
	return
	opt stack 0
GLOBAL	__end_of_print_signal_level
	__end_of_print_signal_level:
	signat	_print_signal_level,88
	global	_tea5767_signal_level

;; *************** function _tea5767_signal_level *****************
;; Defined at:
;;		line 110 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_signal_level
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	110
global __ptext27
__ptext27:	;psect for function _tea5767_signal_level
psect	text27
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	110
	global	__size_of_tea5767_signal_level
	__size_of_tea5767_signal_level	equ	__end_of_tea5767_signal_level-_tea5767_signal_level
	
_tea5767_signal_level:	
;incstack = 0
	opt	stack 5
; Regs used in _tea5767_signal_level: [wreg+status,2+status,0]
	line	112
	
l2756:	
;tea5767.c: 112: return ((responsebytes[3] >> 4) & 0x0F);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(tea5767@responsebytes)^080h+03h,w
	movwf	(??_tea5767_signal_level+0)+0
	movlw	04h
u1725:
	clrc
	rrf	(??_tea5767_signal_level+0)+0,f
	addlw	-1
	skipz
	goto	u1725
	movf	0+(??_tea5767_signal_level+0)+0,w
	andlw	0Fh
	goto	l295
	
l2758:	
	line	113
	
l295:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_signal_level
	__end_of_tea5767_signal_level:
	signat	_tea5767_signal_level,89
	global	_hd44780_printint

;; *************** function _hd44780_printint *****************
;; Defined at:
;;		line 161 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
;; Parameters:    Size  Location     Type
;;  dta             2   29[BANK0 ] int 
;;  loc             1   31[BANK0 ] unsigned char 
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
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_hd44780_printstr
;;		_sprintf
;; This function is called by:
;;		_print_signal_level
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	161
global __ptext28
__ptext28:	;psect for function _hd44780_printint
psect	text28
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	161
	global	__size_of_hd44780_printint
	__size_of_hd44780_printint	equ	__end_of_hd44780_printint-_hd44780_printint
	
_hd44780_printint:	
;incstack = 0
	opt	stack 1
; Regs used in _hd44780_printint: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	169
	
l3820:	
;hd44780.c: 169: sprintf(buff, "%d", dta);
	movlw	((STR_8-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_hd44780_printint+0)+0
	movf	(??_hd44780_printint+0)+0,w
	movwf	(sprintf@f)
	movf	(hd44780_printint@dta+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(hd44780_printint@dta),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(_buff)&0ffh
	fcall	_sprintf
	line	171
;hd44780.c: 171: hd44780_printstr( &buff, loc );
	movlw	(_buff&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(hd44780_printstr@dta)
	movlw	(0x1/2)
	movwf	(hd44780_printstr@dta+1)
	movf	(hd44780_printint@loc),w
	movwf	(??_hd44780_printint+0)+0
	movf	(??_hd44780_printint+0)+0,w
	movwf	(hd44780_printstr@loc)
	fcall	_hd44780_printstr
	line	173
	
l386:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_printint
	__end_of_hd44780_printint:
	signat	_hd44780_printint,8312
	global	_print_mode

;; *************** function _print_mode *****************
;; Defined at:
;;		line 135 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mode            2    8[BANK0 ] int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_hd44780_printstr
;;		_tea5767_mode
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	135
global __ptext29
__ptext29:	;psect for function _print_mode
psect	text29
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	135
	global	__size_of_print_mode
	__size_of_print_mode	equ	__end_of_print_mode-_print_mode
	
_print_mode:	
;incstack = 0
	opt	stack 2
; Regs used in _print_mode: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	137
	
l3822:	
;main.c: 137: int mode = tea5767_mode();
	fcall	_tea5767_mode
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_print_mode+0)+0
	clrf	(??_print_mode+0)+0+1
	movf	0+(??_print_mode+0)+0,w
	movwf	(print_mode@mode)
	movf	1+(??_print_mode+0)+0,w
	movwf	(print_mode@mode+1)
	line	139
	
l3824:	
;main.c: 139: if( mode == 1 ){
	movlw	01h
	xorwf	(print_mode@mode),w
	iorwf	(print_mode@mode+1),w
	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l3828
u3280:
	line	141
	
l3826:	
;main.c: 141: hd44780_printstr( "S", 0 );
	movlw	low((STR_1-__stringbase))
	movwf	(hd44780_printstr@dta)
	movlw	80h
	movwf	(hd44780_printstr@dta+1)
	clrf	(hd44780_printstr@loc)
	fcall	_hd44780_printstr
	line	142
;main.c: 142: }else{
	goto	l151
	
l149:	
	line	143
	
l3828:	
;main.c: 143: hd44780_printstr( "M", 0 );
	movlw	low((STR_2-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(hd44780_printstr@dta)
	movlw	80h
	movwf	(hd44780_printstr@dta+1)
	clrf	(hd44780_printstr@loc)
	fcall	_hd44780_printstr
	goto	l151
	line	144
	
l150:	
	line	145
	
l151:	
	return
	opt stack 0
GLOBAL	__end_of_print_mode
	__end_of_print_mode:
	signat	_print_mode,88
	global	_tea5767_mode

;; *************** function _tea5767_mode *****************
;; Defined at:
;;		line 116 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_mode
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	116
global __ptext30
__ptext30:	;psect for function _tea5767_mode
psect	text30
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	116
	global	__size_of_tea5767_mode
	__size_of_tea5767_mode	equ	__end_of_tea5767_mode-_tea5767_mode
	
_tea5767_mode:	
;incstack = 0
	opt	stack 5
; Regs used in _tea5767_mode: [wreg]
	line	119
	
l2770:	
;tea5767.c: 119: return ((responsebytes[2] & 0x80) > 0) ? 1 : 0;
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	0+(tea5767@responsebytes)^080h+02h,(7)&7
	movlw	1
	goto	l298
	
l2772:	
	line	120
	
l298:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_mode
	__end_of_tea5767_mode:
	signat	_tea5767_mode,89
	global	_print_freq

;; *************** function _print_freq *****************
;; Defined at:
;;		line 104 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   52[BANK1 ] int 
;;  f               2   50[BANK1 ] int 
;;  fr              2   48[BANK1 ] int 
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
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awdiv
;;		___wmul
;;		_hd44780_block_erase
;;		_hd44780_printdecimal
;;		_tea5767_tuned_freq
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	104
global __ptext31
__ptext31:	;psect for function _print_freq
psect	text31
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	104
	global	__size_of_print_freq
	__size_of_print_freq	equ	__end_of_print_freq-_print_freq
	
_print_freq:	
;incstack = 0
	opt	stack 1
; Regs used in _print_freq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	108
	
l5184:	
;main.c: 106: static uint8_t dec = 0;
;main.c: 108: int fr = tea5767_tuned_freq();
	fcall	_tea5767_tuned_freq
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_tea5767_tuned_freq))^080h,w
	clrf	(print_freq@fr+1)^080h
	addwf	(print_freq@fr+1)^080h
	movf	(0+(?_tea5767_tuned_freq))^080h,w
	clrf	(print_freq@fr)^080h
	addwf	(print_freq@fr)^080h

	line	109
	
l5186:	
;main.c: 109: int i = fr / 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(print_freq@fr+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(print_freq@fr)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(print_freq@i+1)^080h
	addwf	(print_freq@i+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(print_freq@i)^080h
	addwf	(print_freq@i)^080h

	line	110
	
l5188:	
;main.c: 110: i = i * 10;
	movf	(print_freq@i+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(print_freq@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(0Ah)
	movwf	(___wmul@multiplicand)
	movlw	high(0Ah)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(print_freq@i+1)^080h
	addwf	(print_freq@i+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(print_freq@i)^080h
	addwf	(print_freq@i)^080h

	line	111
	
l5190:	
;main.c: 111: int f = fr - i;
	comf	(print_freq@i)^080h,w
	movwf	(??_print_freq+0)^080h+0
	comf	(print_freq@i+1)^080h,w
	movwf	((??_print_freq+0)^080h+0+1)
	incf	(??_print_freq+0)^080h+0,f
	skipnz
	incf	((??_print_freq+0)^080h+0+1),f
	movf	(print_freq@fr)^080h,w
	addwf	0+(??_print_freq+0)^080h+0,w
	movwf	(print_freq@f)^080h
	movf	(print_freq@fr+1)^080h,w
	skipnc
	incf	(print_freq@fr+1)^080h,w
	addwf	1+(??_print_freq+0)^080h+0,w
	movwf	1+(print_freq@f)^080h
	line	112
	
l5192:	
;main.c: 112: i = i / 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(print_freq@i+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(print_freq@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(print_freq@i+1)^080h
	addwf	(print_freq@i+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(print_freq@i)^080h
	addwf	(print_freq@i)^080h

	line	114
	
l5194:	
;main.c: 114: if( dec != (i + f) ){
	movf	(print_freq@f)^080h,w
	addwf	(print_freq@i)^080h,w
	movwf	(??_print_freq+0)^080h+0
	movf	(print_freq@f+1)^080h,w
	skipnc
	incf	(print_freq@f+1)^080h,w
	addwf	(print_freq@i+1)^080h,w
	movwf	1+(??_print_freq+0)^080h+0
	movf	(print_freq@dec)^080h,w
	xorwf	0+(??_print_freq+0)^080h+0,w
	iorwf	1+(??_print_freq+0)^080h+0,w
	skipnz
	goto	u4981
	goto	u4980
u4981:
	goto	l140
u4980:
	line	115
	
l5196:	
;main.c: 115: hd44780_block_erase( 5, 5 );
	movlw	(05h)
	movwf	(??_print_freq+0)^080h+0
	movf	(??_print_freq+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(hd44780_block_erase@length)
	movlw	(05h)
	fcall	_hd44780_block_erase
	line	116
	
l5198:	
;main.c: 116: hd44780_printdecimal( i, f, 5 );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(print_freq@i+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(hd44780_printdecimal@i+1)
	addwf	(hd44780_printdecimal@i+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(print_freq@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(hd44780_printdecimal@i)
	addwf	(hd44780_printdecimal@i)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(print_freq@f+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(hd44780_printdecimal@d+1)
	addwf	(hd44780_printdecimal@d+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(print_freq@f)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(hd44780_printdecimal@d)
	addwf	(hd44780_printdecimal@d)

	movlw	(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_print_freq+0)^080h+0
	movf	(??_print_freq+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(hd44780_printdecimal@loc)
	fcall	_hd44780_printdecimal
	line	117
	
l5200:	
;main.c: 117: dec = i + f;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(print_freq@f)^080h,w
	addwf	(print_freq@i)^080h,w
	movwf	(??_print_freq+0)^080h+0
	movf	(??_print_freq+0)^080h+0,w
	movwf	(print_freq@dec)^080h
	goto	l140
	line	118
	
l139:	
	line	119
	
l140:	
	return
	opt stack 0
GLOBAL	__end_of_print_freq
	__end_of_print_freq:
	signat	_print_freq,88
	global	_tea5767_tuned_freq

;; *************** function _tea5767_tuned_freq *****************
;; Defined at:
;;		line 96 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tmp             3   41[BANK1 ] int 
;;  d               2   44[BANK1 ] int 
;;  f               2   39[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  2   34[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       2       0       0
;;      Locals:         0       0      10       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2      12       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftmul
;;		___fttol
;;		___wmul
;;		_trunc
;; This function is called by:
;;		_print_freq
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	96
global __ptext32
__ptext32:	;psect for function _tea5767_tuned_freq
psect	text32
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\tea5767.c"
	line	96
	global	__size_of_tea5767_tuned_freq
	__size_of_tea5767_tuned_freq	equ	__end_of_tea5767_tuned_freq-_tea5767_tuned_freq
	
_tea5767_tuned_freq:	
;incstack = 0
	opt	stack 2
; Regs used in _tea5767_tuned_freq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	98
	
l5202:	
;tea5767.c: 98: double tmp = current_freq;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767@current_freq)^080h,w
	movwf	(tea5767_tuned_freq@tmp)^080h
	movf	(tea5767@current_freq+1)^080h,w
	movwf	(tea5767_tuned_freq@tmp+1)^080h
	movf	(tea5767@current_freq+2)^080h,w
	movwf	(tea5767_tuned_freq@tmp+2)^080h
	line	101
	
l5204:	
;tea5767.c: 101: int d = (int)tmp;
	movf	(tea5767_tuned_freq@tmp)^080h,w
	movwf	(___fttol@f1)^080h
	movf	(tea5767_tuned_freq@tmp+1)^080h,w
	movwf	(___fttol@f1+1)^080h
	movf	(tea5767_tuned_freq@tmp+2)^080h,w
	movwf	(___fttol@f1+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(((0+(?___fttol))^080h)),w
	clrf	(tea5767_tuned_freq@d+1)^080h
	addwf	(tea5767_tuned_freq@d+1)^080h
	movf	0+(((0+(?___fttol))^080h)),w
	clrf	(tea5767_tuned_freq@d)^080h
	addwf	(tea5767_tuned_freq@d)^080h

	line	102
	
l5206:	
;tea5767.c: 102: int f = ((int)trunc((tmp) * 10)) - (d * 10);
	movf	(tea5767_tuned_freq@tmp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_tuned_freq@tmp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_tuned_freq@tmp+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x20
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(trunc@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(trunc@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(trunc@x+2)^080h
	fcall	_trunc
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_trunc))^080h,w
	movwf	(_tea5767_tuned_freq$1039)^080h
	movf	(1+(?_trunc))^080h,w
	movwf	(_tea5767_tuned_freq$1039+1)^080h
	movf	(2+(?_trunc))^080h,w
	movwf	(_tea5767_tuned_freq$1039+2)^080h
	
l5208:	
;tea5767.c: 102: int f = ((int)trunc((tmp) * 10)) - (d * 10);
	movf	(tea5767_tuned_freq@d+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_tuned_freq@d)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(0Ah)
	movwf	(___wmul@multiplicand)
	movlw	high(0Ah)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(0+(?___wmul)),w
	movwf	(??_tea5767_tuned_freq+0)+0
	comf	(1+(?___wmul)),w
	movwf	((??_tea5767_tuned_freq+0)+0+1)
	incf	(??_tea5767_tuned_freq+0)+0,f
	skipnz
	incf	((??_tea5767_tuned_freq+0)+0+1),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tea5767_tuned_freq$1039)^080h,w
	movwf	(___fttol@f1)^080h
	movf	(_tea5767_tuned_freq$1039+1)^080h,w
	movwf	(___fttol@f1+1)^080h
	movf	(_tea5767_tuned_freq$1039+2)^080h,w
	movwf	(___fttol@f1+2)^080h
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_tea5767_tuned_freq+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	0+(((0+(?___fttol))^080h)),w
	movwf	(tea5767_tuned_freq@f)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_tea5767_tuned_freq+0)+0,w
	skipnc
	incf	1+(??_tea5767_tuned_freq+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	1+(((0+(?___fttol))^080h)),w
	movwf	1+(tea5767_tuned_freq@f)^080h
	line	106
	
l5210:	
;tea5767.c: 106: return ((d * 10) + f);
	movf	(tea5767_tuned_freq@d+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_tuned_freq@d)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(0Ah)
	movwf	(___wmul@multiplicand)
	movlw	high(0Ah)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(tea5767_tuned_freq@f)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_tea5767_tuned_freq)^080h
	movf	(tea5767_tuned_freq@f+1)^080h,w
	skipnc
	incf	(tea5767_tuned_freq@f+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?_tea5767_tuned_freq)^080h
	goto	l292
	
l5212:	
	line	107
	
l292:	
	return
	opt stack 0
GLOBAL	__end_of_tea5767_tuned_freq
	__end_of_tea5767_tuned_freq:
	signat	_tea5767_tuned_freq,90
	global	_trunc

;; *************** function _trunc *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\trunc.c"
;; Parameters:    Size  Location     Type
;;  x               3   26[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  i               3   29[BANK1 ] int 
;;  expon           2   32[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  3   26[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       5       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       8       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___altoft
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_tea5767_tuned_freq
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\trunc.c"
	line	13
global __ptext33
__ptext33:	;psect for function _trunc
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\trunc.c"
	line	13
	global	__size_of_trunc
	__size_of_trunc	equ	__end_of_trunc-_trunc
	
_trunc:	
;incstack = 0
	opt	stack 2
; Regs used in _trunc: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l5298:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(trunc@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(frexp@value)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(trunc@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(frexp@value+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(trunc@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(frexp@value+2)
	movlw	(trunc@expon)&0ffh
	movwf	(??_trunc+0)+0
	movf	(??_trunc+0)+0,w
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
l5300:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(trunc@expon+1)^080h,7
	goto	u5061
	goto	u5060
u5061:
	goto	l5306
u5060:
	line	20
	
l5302:	
	movlw	0x0
	movwf	(?_trunc)^080h
	movlw	0x0
	movwf	(?_trunc+1)^080h
	movlw	0x0
	movwf	(?_trunc+2)^080h
	goto	l899
	
l5304:	
	goto	l899
	
l898:	
	line	21
	
l5306:	
	movlw	high(015h)
	subwf	(trunc@expon+1)^080h,w
	movlw	low(015h)
	skipnz
	subwf	(trunc@expon)^080h,w
	skipc
	goto	u5071
	goto	u5070
u5071:
	goto	l5310
u5070:
	line	22
	
l5308:	
	goto	l899
	
l900:	
	line	23
	
l5310:	
	movf	(trunc@x)^080h,w
	movwf	(___fttol@f1)^080h
	movf	(trunc@x+1)^080h,w
	movwf	(___fttol@f1+1)^080h
	movf	(trunc@x+2)^080h,w
	movwf	(___fttol@f1+2)^080h
	fcall	___fttol
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___altoft@c+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___altoft@c+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___altoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___altoft@c)

	fcall	___altoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___altoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(trunc@i)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___altoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(trunc@i+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___altoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(trunc@i+2)^080h
	line	24
	
l5312:	
	movf	(trunc@i)^080h,w
	movwf	(?_trunc)^080h
	movf	(trunc@i+1)^080h,w
	movwf	(?_trunc+1)^080h
	movf	(trunc@i+2)^080h,w
	movwf	(?_trunc+2)^080h
	goto	l899
	
l5314:	
	line	25
	
l899:	
	return
	opt stack 0
GLOBAL	__end_of_trunc
	__end_of_trunc:
	signat	_trunc,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[BANK0 ] int 
;;  eptr            1    3[BANK0 ] PTR int 
;;		 -> trunc@expon(2), ceil@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ceil
;;		_trunc
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\frexp.c"
	line	254
global __ptext34
__ptext34:	;psect for function _frexp
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
;incstack = 0
	opt	stack 2
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l5388:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u5161
	goto	u5160
u5161:
	goto	l5394
u5160:
	line	257
	
l5390:	
	movf	(frexp@eptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	goto	l680
	line	258
	
l5392:	
;	Return value of _frexp is never used
	goto	l680
	line	259
	
l679:	
	line	261
	
l5394:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	rlf	0+(frexp@value)+01h,w
	rlf	0+(frexp@value)+01h,w
	andlw	1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	iorwf	indf,f
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	iorwf	indf,f
	line	263
	
l5396:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(-126)
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movlw	high(-126)
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	268
	
l5398:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l5400:	
	bcf	0+(frexp@value)+01h,7
	goto	l680
	line	273
	
l5402:	
	line	274
;	Return value of _frexp is never used
	
l680:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    6[BANK1 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   21[BANK1 ] unsigned long 
;;  exp1            1   25[BANK1 ] unsigned char 
;;  sign1           1   20[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    6[BANK1 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0      12       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      20       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_tea5767_getpll
;;		_tea5767_tuned_freq
;;		_ceil
;;		_trunc
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fttol.c"
	line	44
global __ptext35
__ptext35:	;psect for function ___fttol
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 2
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l4500:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1)^080h,w
	movwf	((??___fttol+0)^080h+0)
	movf	(___fttol@f1+1)^080h,w
	movwf	((??___fttol+0)^080h+0+1)
	movf	(___fttol@f1+2)^080h,w
	movwf	((??___fttol+0)^080h+0+2)
	clrc
	rlf	(??___fttol+0)^080h+1,w
	rlf	(??___fttol+0)^080h+2,w
	movwf	(??___fttol+3)^080h+0
	movf	(??___fttol+3)^080h+0,w
	movwf	(___fttol@exp1)^080h
	movf	((___fttol@exp1)^080h),f
	skipz
	goto	u4391
	goto	u4390
u4391:
	goto	l4506
u4390:
	line	50
	
l4502:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l772
	
l4504:	
	goto	l772
	
l771:	
	line	51
	
l4506:	
	movf	(___fttol@f1)^080h,w
	movwf	((??___fttol+0)^080h+0)
	movf	(___fttol@f1+1)^080h,w
	movwf	((??___fttol+0)^080h+0+1)
	movf	(___fttol@f1+2)^080h,w
	movwf	((??___fttol+0)^080h+0+2)
	movlw	017h
u4405:
	clrc
	rrf	(??___fttol+0)^080h+2,f
	rrf	(??___fttol+0)^080h+1,f
	rrf	(??___fttol+0)^080h+0,f
u4400:
	addlw	-1
	skipz
	goto	u4405
	movf	0+(??___fttol+0)^080h+0,w
	movwf	(??___fttol+3)^080h+0
	movf	(??___fttol+3)^080h+0,w
	movwf	(___fttol@sign1)^080h
	line	52
	
l4508:	
	bsf	(___fttol@f1)^080h+(15/8),(15)&7
	line	53
	
l4510:	
	movlw	0FFh
	andwf	(___fttol@f1)^080h,f
	movlw	0FFh
	andwf	(___fttol@f1+1)^080h,f
	movlw	0
	andwf	(___fttol@f1+2)^080h,f
	line	54
	
l4512:	
	movf	(___fttol@f1)^080h,w
	movwf	(___fttol@lval)^080h
	movf	(___fttol@f1+1)^080h,w
	movwf	((___fttol@lval)^080h)+1
	movf	(___fttol@f1+2)^080h,w
	movwf	((___fttol@lval)^080h)+2
	clrf	((___fttol@lval)^080h)+3
	line	55
	
l4514:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1)^080h,f
	line	56
	
l4516:	
	btfss	(___fttol@exp1)^080h,7
	goto	u4411
	goto	u4410
u4411:
	goto	l4526
u4410:
	line	57
	
l4518:	
	movf	(___fttol@exp1)^080h,w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4421
	goto	u4420
u4421:
	goto	l4524
u4420:
	line	58
	
l4520:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l772
	
l4522:	
	goto	l772
	
l774:	
	goto	l4524
	line	59
	
l775:	
	line	60
	
l4524:	
	movlw	01h
u4435:
	clrc
	rrf	(___fttol@lval+3)^080h,f
	rrf	(___fttol@lval+2)^080h,f
	rrf	(___fttol@lval+1)^080h,f
	rrf	(___fttol@lval)^080h,f
	addlw	-1
	skipz
	goto	u4435

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)^080h+0
	movf	(??___fttol+0)^080h+0,w
	addwf	(___fttol@exp1)^080h,f
	btfss	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l4524
u4440:
	goto	l4536
	
l776:	
	line	62
	goto	l4536
	
l773:	
	line	63
	
l4526:	
	movlw	(018h)
	subwf	(___fttol@exp1)^080h,w
	skipc
	goto	u4451
	goto	u4450
u4451:
	goto	l4534
u4450:
	line	64
	
l4528:	
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l772
	
l4530:	
	goto	l772
	
l778:	
	line	65
	goto	l4534
	
l780:	
	line	66
	
l4532:	
	movlw	01h
	movwf	(??___fttol+0)^080h+0
u4465:
	clrc
	rlf	(___fttol@lval)^080h,f
	rlf	(___fttol@lval+1)^080h,f
	rlf	(___fttol@lval+2)^080h,f
	rlf	(___fttol@lval+3)^080h,f
	decfsz	(??___fttol+0)^080h+0
	goto	u4465
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1)^080h,f
	goto	l4534
	line	68
	
l779:	
	line	65
	
l4534:	
	movf	(___fttol@exp1)^080h,f
	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l4532
u4470:
	goto	l4536
	
l781:	
	goto	l4536
	line	69
	
l777:	
	line	70
	
l4536:	
	movf	(___fttol@sign1)^080h,w
	skipz
	goto	u4480
	goto	l4540
u4480:
	line	71
	
l4538:	
	comf	(___fttol@lval)^080h,f
	comf	(___fttol@lval+1)^080h,f
	comf	(___fttol@lval+2)^080h,f
	comf	(___fttol@lval+3)^080h,f
	incf	(___fttol@lval)^080h,f
	skipnz
	incf	(___fttol@lval+1)^080h,f
	skipnz
	incf	(___fttol@lval+2)^080h,f
	skipnz
	incf	(___fttol@lval+3)^080h,f
	goto	l4540
	
l782:	
	line	72
	
l4540:	
	movf	(___fttol@lval+3)^080h,w
	movwf	(?___fttol+3)^080h
	movf	(___fttol@lval+2)^080h,w
	movwf	(?___fttol+2)^080h
	movf	(___fttol@lval+1)^080h,w
	movwf	(?___fttol+1)^080h
	movf	(___fttol@lval)^080h,w
	movwf	(?___fttol)^080h

	goto	l772
	
l4542:	
	line	73
	
l772:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   17[BANK0 ] unsigned char 
;;  exp             1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ceil
;;		_trunc
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\altoft.c"
	line	42
global __ptext36
__ptext36:	;psect for function ___altoft
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\altoft.c"
	line	42
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
;incstack = 0
	opt	stack 1
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l5360:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
l5362:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l5364:	
	btfss	(___altoft@c+3),7
	goto	u5121
	goto	u5120
u5121:
	goto	l5370
u5120:
	line	48
	
l5366:	
	comf	(___altoft@c),f
	comf	(___altoft@c+1),f
	comf	(___altoft@c+2),f
	comf	(___altoft@c+3),f
	incf	(___altoft@c),f
	skipnz
	incf	(___altoft@c+1),f
	skipnz
	incf	(___altoft@c+2),f
	skipnz
	incf	(___altoft@c+3),f
	line	49
	clrf	(___altoft@sign)
	incf	(___altoft@sign),f
	goto	l5370
	line	50
	
l573:	
	line	52
	goto	l5370
	
l575:	
	line	53
	
l5368:	
	movlw	01h
u5135:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u5135

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	l5370
	line	55
	
l574:	
	line	52
	
l5370:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u5141
	goto	u5140
u5141:
	goto	l5368
u5140:
	goto	l5372
	
l576:	
	line	56
	
l5372:	
	movf	(___altoft@c),w
	movwf	(___ftpack@arg)
	movf	(___altoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___altoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___altoft@exp),w
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___altoft@sign),w
	movwf	(??___altoft+1)+0
	movf	(??___altoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	goto	l577
	
l5374:	
	line	57
	
l577:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_freq
;;		_tea5767_tuned_freq
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
	line	4
global __ptext37
__ptext37:	;psect for function ___wmul
psect	text37
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
	line	4
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	20
	
l4570:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l4572
	line	21
	
l903:	
	line	22
	
l4572:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___wmul@multiplier),(0)&7
	goto	u4561
	goto	u4560
u4561:
	goto	l904
u4560:
	line	23
	
l4574:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l904:	
	line	24
	movlw	01h
	
u4575:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u4575
	line	25
	
l4576:	
	movlw	01h
	
u4585:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u4585
	line	26
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u4591
	goto	u4590
u4591:
	goto	l4572
u4590:
	goto	l4578
	
l905:	
	line	30
	
l4578:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l906
	
l4580:	
	line	31
	
l906:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_hd44780_printdecimal

;; *************** function _hd44780_printdecimal *****************
;; Defined at:
;;		line 176 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
;; Parameters:    Size  Location     Type
;;  i               2   29[BANK0 ] int 
;;  d               2   31[BANK0 ] int 
;;  loc             1   33[BANK0 ] unsigned char 
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
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_hd44780_printstr
;;		_sprintf
;; This function is called by:
;;		_print_freq
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	176
global __ptext38
__ptext38:	;psect for function _hd44780_printdecimal
psect	text38
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	176
	global	__size_of_hd44780_printdecimal
	__size_of_hd44780_printdecimal	equ	__end_of_hd44780_printdecimal-_hd44780_printdecimal
	
_hd44780_printdecimal:	
;incstack = 0
	opt	stack 1
; Regs used in _hd44780_printdecimal: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	182
	
l3802:	
;hd44780.c: 182: if(d < 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(hd44780_printdecimal@d+1),7
	goto	u3261
	goto	u3260
u3261:
	goto	l3806
u3260:
	line	183
	
l3804:	
;hd44780.c: 183: d = -d;
	comf	(hd44780_printdecimal@d),f
	comf	(hd44780_printdecimal@d+1),f
	incf	(hd44780_printdecimal@d),f
	skipnz
	incf	(hd44780_printdecimal@d+1),f
	goto	l3806
	line	184
	
l389:	
	line	186
	
l3806:	
;hd44780.c: 184: }
;hd44780.c: 186: sprintf(buff, "%d.%d", i, d);
	movlw	((STR_9-__stringbase))&0ffh
	movwf	(??_hd44780_printdecimal+0)+0
	movf	(??_hd44780_printdecimal+0)+0,w
	movwf	(sprintf@f)
	movf	(hd44780_printdecimal@i+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(hd44780_printdecimal@i),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movf	(hd44780_printdecimal@d+1),w
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	movf	(hd44780_printdecimal@d),w
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movlw	(_buff)&0ffh
	fcall	_sprintf
	line	188
	
l3808:	
;hd44780.c: 188: hd44780_printstr( &buff, loc );
	movlw	(_buff&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(hd44780_printstr@dta)
	movlw	(0x1/2)
	movwf	(hd44780_printstr@dta+1)
	movf	(hd44780_printdecimal@loc),w
	movwf	(??_hd44780_printdecimal+0)+0
	movf	(??_hd44780_printdecimal+0)+0,w
	movwf	(hd44780_printstr@loc)
	fcall	_hd44780_printstr
	line	189
	
l390:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_printdecimal
	__end_of_hd44780_printdecimal:
	signat	_hd44780_printdecimal,12408
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> buff(5), 
;;  f               1   12[BANK0 ] PTR const unsigned char 
;;		 -> STR_9(6), STR_8(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   27[BANK0 ] PTR unsigned char 
;;		 -> buff(5), 
;;  _val            4   23[BANK0 ] struct .
;;  c               1   28[BANK0 ] char 
;;  prec            1   22[BANK0 ] char 
;;  flag            1   21[BANK0 ] unsigned char 
;;  ap              1   20[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   12[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_hd44780_printint
;;		_hd44780_printdecimal
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	492
global __ptext39
__ptext39:	;psect for function _sprintf
psect	text39
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	542
	
l4130:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l4182
	
l412:	
	line	547
	
l4132:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u3531
	goto	u3530
u3531:
	goto	l4138
u3530:
	line	550
	
l4134:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4136:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
;doprnt.c: 551: continue;
	goto	l4182
	line	552
	
l413:	
	line	557
	
l4138:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l4142
	line	646
;doprnt.c: 646: case 0:
	
l415:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l4184
	line	706
;doprnt.c: 706: case 'd':
	
l417:	
	goto	l4144
	line	707
	
l418:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l4144
	line	811
;doprnt.c: 811: default:
	
l420:	
	line	822
;doprnt.c: 822: continue;
	goto	l4182
	line	831
	
l4140:	
;doprnt.c: 831: }
	goto	l4144
	line	644
	
l414:	
	
l4142:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l4184
	xorlw	100^0	; case 100
	skipnz
	goto	l4144
	xorlw	105^100	; case 105
	skipnz
	goto	l4144
	goto	l4182
	opt asmopt_on

	line	831
	
l419:	
	line	1268
	
l4144:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l4146:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l4148:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u3541
	goto	u3540
u3541:
	goto	l4154
u3540:
	line	1271
	
l4150:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l4152:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l4154
	line	1273
	
l421:	
	line	1314
	
l4154:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l4158
u3550:
	goto	l4166
	
l4156:	
	goto	l4166
	line	1315
	
l422:	
	
l4158:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u3565
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u3565:
	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l4162
u3560:
	goto	l4166
	line	1316
	
l4160:	
;doprnt.c: 1316: break;
	goto	l4166
	
l424:	
	line	1314
	
l4162:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l4164:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l4158
u3570:
	goto	l4166
	
l423:	
	line	1447
	
l4166:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l4172
u3580:
	line	1448
	
l4168:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4170:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l4172
	
l425:	
	line	1481
	
l4172:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l4180
	
l427:	
	line	1498
	
l4174:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@_val+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(sprintf@_val),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1533
	
l4176:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4178:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l4180
	line	1534
	
l426:	
	line	1483
	
l4180:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l4174
u3590:
	goto	l4182
	
l428:	
	goto	l4182
	line	1542
	
l411:	
	line	545
	
l4182:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l4132
u3600:
	goto	l4184
	
l429:	
	goto	l4184
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l416:	
	line	1547
	
l4184:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l430
	line	1549
	
l4186:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l430:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK0 ] unsigned int 
;;  dividend        2    9[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwmod.c"
	line	6
global __ptext40
__ptext40:	;psect for function ___lwmod
psect	text40
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l3532:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3071
	goto	u3070
u3071:
	goto	l3550
u3070:
	line	14
	
l3534:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3540
	
l877:	
	line	16
	
l3536:	
	movlw	01h
	
u3085:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3085
	line	17
	
l3538:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l3540
	line	18
	
l876:	
	line	15
	
l3540:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l3536
u3090:
	goto	l3542
	
l878:	
	goto	l3542
	line	19
	
l879:	
	line	20
	
l3542:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3105
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3105:
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l3546
u3100:
	line	21
	
l3544:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l3546
	
l880:	
	line	22
	
l3546:	
	movlw	01h
	
u3115:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3115
	line	23
	
l3548:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l3542
u3120:
	goto	l3550
	
l881:	
	goto	l3550
	line	24
	
l875:	
	line	25
	
l3550:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l882
	
l3552:	
	line	26
	
l882:	
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
global __ptext41
__ptext41:	;psect for function ___lwdiv
psect	text41
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l4544:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l4546:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u4491
	goto	u4490
u4491:
	goto	l4566
u4490:
	line	16
	
l4548:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l4554
	
l867:	
	line	18
	
l4550:	
	movlw	01h
	
u4505:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4505
	line	19
	
l4552:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l4554
	line	20
	
l866:	
	line	17
	
l4554:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u4511
	goto	u4510
u4511:
	goto	l4550
u4510:
	goto	l4556
	
l868:	
	goto	l4556
	line	21
	
l869:	
	line	22
	
l4556:	
	movlw	01h
	
u4525:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4525
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u4535
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u4535:
	skipc
	goto	u4531
	goto	u4530
u4531:
	goto	l4562
u4530:
	line	24
	
l4558:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l4560:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l4562
	line	26
	
l870:	
	line	27
	
l4562:	
	movlw	01h
	
u4545:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u4545
	line	28
	
l4564:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l4556
u4550:
	goto	l4566
	
l871:	
	goto	l4566
	line	29
	
l865:	
	line	30
	
l4566:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l872
	
l4568:	
	line	31
	
l872:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_hd44780_printstr

;; *************** function _hd44780_printstr *****************
;; Defined at:
;;		line 98 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
;; Parameters:    Size  Location     Type
;;  dta             2    3[BANK0 ] PTR unsigned char 
;;		 -> buff(5), STR_2(2), STR_1(2), 
;;  loc             1    5[BANK0 ] unsigned char 
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
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_hd44780_char
;;		_hd44780_newline
;;		_hd44780_write
;; This function is called by:
;;		_print_mode
;;		_hd44780_printint
;;		_hd44780_printdecimal
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	98
global __ptext42
__ptext42:	;psect for function _hd44780_printstr
psect	text42
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	98
	global	__size_of_hd44780_printstr
	__size_of_hd44780_printstr	equ	__end_of_hd44780_printstr-_hd44780_printstr
	
_hd44780_printstr:	
;incstack = 0
	opt	stack 1
; Regs used in _hd44780_printstr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	102
	
l3830:	
;hd44780.c: 102: hd44780_write( 0x80 | loc );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(hd44780_printstr@loc),w
	iorlw	080h
	fcall	_hd44780_write
	line	104
;hd44780.c: 104: while( *dta != '\0' ){
	goto	l3840
	
l373:	
	line	105
	
l3832:	
;hd44780.c: 105: if( *dta != '\n' ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(hd44780_printstr@dta+1),w
	movwf	btemp+1
	movf	(hd44780_printstr@dta),w
	movwf	fsr0
	fcall	stringtab
	xorlw	0Ah
	skipnz
	goto	u3291
	goto	u3290
u3291:
	goto	l3836
u3290:
	line	106
	
l3834:	
;hd44780.c: 106: hd44780_char( *dta );
	movf	(hd44780_printstr@dta+1),w
	movwf	btemp+1
	movf	(hd44780_printstr@dta),w
	movwf	fsr0
	fcall	stringtab
	fcall	_hd44780_char
	line	107
;hd44780.c: 107: }else{
	goto	l3838
	
l374:	
	line	109
	
l3836:	
;hd44780.c: 109: hd44780_newline();
	fcall	_hd44780_newline
	goto	l3838
	line	110
	
l375:	
	line	112
	
l3838:	
;hd44780.c: 110: }
;hd44780.c: 112: dta++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(hd44780_printstr@dta),f
	skipnc
	incf	(hd44780_printstr@dta+1),f
	goto	l3840
	line	113
	
l372:	
	line	104
	
l3840:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(hd44780_printstr@dta+1),w
	movwf	btemp+1
	movf	(hd44780_printstr@dta),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l3832
u3300:
	goto	l377
	
l376:	
	line	114
	
l377:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_printstr
	__end_of_hd44780_printstr:
	signat	_hd44780_printstr,8312
	global	_hd44780_newline

;; *************** function _hd44780_newline *****************
;; Defined at:
;;		line 124 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
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
;;		_hd44780_write
;; This function is called by:
;;		_hd44780_printstr
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1
	line	124
global __ptext43
__ptext43:	;psect for function _hd44780_newline
psect	text43
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	124
	global	__size_of_hd44780_newline
	__size_of_hd44780_newline	equ	__end_of_hd44780_newline-_hd44780_newline
	
_hd44780_newline:	
;incstack = 0
	opt	stack 1
; Regs used in _hd44780_newline: [wreg+status,2+status,0+pclath+cstack]
	line	126
	
l4126:	
;hd44780.c: 126: hd44780_write( 0xC0 );
	movlw	(0C0h)
	fcall	_hd44780_write
	line	127
	
l383:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_newline
	__end_of_hd44780_newline:
	signat	_hd44780_newline,88
	global	_hd44780_block_erase

;; *************** function _hd44780_block_erase *****************
;; Defined at:
;;		line 219 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
;; Parameters:    Size  Location     Type
;;  start_loc       1    wreg     unsigned char 
;;  length          1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  start_loc       1    5[BANK0 ] unsigned char 
;;  i               2    6[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_hd44780_char
;;		_hd44780_write
;; This function is called by:
;;		_print_freq
;;		_print_signal_level
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1
	line	219
global __ptext44
__ptext44:	;psect for function _hd44780_block_erase
psect	text44
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	219
	global	__size_of_hd44780_block_erase
	__size_of_hd44780_block_erase	equ	__end_of_hd44780_block_erase-_hd44780_block_erase
	
_hd44780_block_erase:	
;incstack = 0
	opt	stack 2
; Regs used in _hd44780_block_erase: [wreg+status,2+status,0+pclath+cstack]
;hd44780_block_erase@start_loc stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(hd44780_block_erase@start_loc)
	line	224
	
l3794:	
;hd44780.c: 221: int i;
;hd44780.c: 224: for(i=0;i<length;i++){
	clrf	(hd44780_block_erase@i)
	clrf	(hd44780_block_erase@i+1)
	goto	l3800
	
l397:	
	line	225
	
l3796:	
;hd44780.c: 225: hd44780_write( 0x80 | (start_loc+i) );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(hd44780_block_erase@i),w
	addwf	(hd44780_block_erase@start_loc),w
	iorlw	080h
	fcall	_hd44780_write
	line	227
;hd44780.c: 227: hd44780_char( ' ' );
	movlw	(020h)
	fcall	_hd44780_char
	line	224
	
l3798:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(hd44780_block_erase@i),f
	skipnc
	incf	(hd44780_block_erase@i+1),f
	movlw	high(01h)
	addwf	(hd44780_block_erase@i+1),f
	goto	l3800
	
l396:	
	
l3800:	
	movf	(hd44780_block_erase@i+1),w
	xorlw	80h
	movwf	(??_hd44780_block_erase+0)+0
	movlw	80h
	subwf	(??_hd44780_block_erase+0)+0,w
	skipz
	goto	u3255
	movf	(hd44780_block_erase@length),w
	subwf	(hd44780_block_erase@i),w
u3255:

	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l3796
u3250:
	goto	l399
	
l398:	
	line	229
	
l399:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_block_erase
	__end_of_hd44780_block_erase:
	signat	_hd44780_block_erase,8312
	global	_hd44780_char

;; *************** function _hd44780_char *****************
;; Defined at:
;;		line 72 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
;; Parameters:    Size  Location     Type
;;  bt              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bt              1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_hd44780_write
;; This function is called by:
;;		_hd44780_printstr
;;		_hd44780_block_erase
;;		_hd44780_printchr
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1
	line	72
global __ptext45
__ptext45:	;psect for function _hd44780_char
psect	text45
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	72
	global	__size_of_hd44780_char
	__size_of_hd44780_char	equ	__end_of_hd44780_char-_hd44780_char
	
_hd44780_char:	
;incstack = 0
	opt	stack 1
; Regs used in _hd44780_char: [wreg+status,2+status,0+pclath+cstack]
;hd44780_char@bt stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(hd44780_char@bt)
	line	75
	
l4118:	
;hd44780.c: 75: RE2 = 1;
	bsf	(74/8),(74)&7	;volatile
	line	76
;hd44780.c: 76: rs_flag = 1;
	bsf	(_rs_flag/8),(_rs_flag)&7
	line	77
	
l4120:	
;hd44780.c: 77: hd44780_write( bt );
	movf	(hd44780_char@bt),w
	fcall	_hd44780_write
	line	78
	
l4122:	
;hd44780.c: 78: RE2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7	;volatile
	line	79
	
l4124:	
;hd44780.c: 79: rs_flag = 0;
	bcf	(_rs_flag/8),(_rs_flag)&7
	line	80
	
l363:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_char
	__end_of_hd44780_char:
	signat	_hd44780_char,4216
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_freq
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
	line	6
global __ptext46
__ptext46:	;psect for function ___awdiv
psect	text46
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l4236:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l4238:	
	btfss	(___awdiv@divisor+1),7
	goto	u3751
	goto	u3750
u3751:
	goto	l4244
u3750:
	line	16
	
l4240:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l4242:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l4244
	line	18
	
l612:	
	line	19
	
l4244:	
	btfss	(___awdiv@dividend+1),7
	goto	u3761
	goto	u3760
u3761:
	goto	l4250
u3760:
	line	20
	
l4246:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l4248:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l4250
	line	22
	
l613:	
	line	23
	
l4250:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l4252:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3771
	goto	u3770
u3771:
	goto	l4272
u3770:
	line	25
	
l4254:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l4260
	
l616:	
	line	27
	
l4256:	
	movlw	01h
	
u3785:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3785
	line	28
	
l4258:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l4260
	line	29
	
l615:	
	line	26
	
l4260:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3791
	goto	u3790
u3791:
	goto	l4256
u3790:
	goto	l4262
	
l617:	
	goto	l4262
	line	30
	
l618:	
	line	31
	
l4262:	
	movlw	01h
	
u3805:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3805
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3815
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3815:
	skipc
	goto	u3811
	goto	u3810
u3811:
	goto	l4268
u3810:
	line	33
	
l4264:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l4266:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l4268
	line	35
	
l619:	
	line	36
	
l4268:	
	movlw	01h
	
u3825:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3825
	line	37
	
l4270:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3831
	goto	u3830
u3831:
	goto	l4262
u3830:
	goto	l4272
	
l620:	
	goto	l4272
	line	38
	
l614:	
	line	39
	
l4272:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3840
	goto	l4276
u3840:
	line	40
	
l4274:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l4276
	
l621:	
	line	41
	
l4276:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l622
	
l4278:	
	line	42
	
l622:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 28 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_hd44780_init
;;		_serial_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	28
global __ptext47
__ptext47:	;psect for function _init
psect	text47
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	28
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 3
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3664:	
;main.c: 36: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	38
	
l3666:	
;main.c: 38: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	40
	
l3668:	
;main.c: 40: TRISE = 0x00;
	clrf	(137)^080h	;volatile
	line	42
	
l3670:	
;main.c: 42: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	43
	
l3672:	
;main.c: 43: PORTE = 0x00;
	clrf	(9)	;volatile
	line	50
	
l3674:	
;main.c: 50: TRISCbits.TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(135)^080h,3	;volatile
	line	51
	
l3676:	
;main.c: 51: TRISCbits.TRISC4 = 1;
	bsf	(135)^080h,4	;volatile
	line	52
	
l3678:	
;main.c: 52: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	55
	
l3680:	
;main.c: 55: TRISB = 0x02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	56
;main.c: 56: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	58
	
l3682:	
;main.c: 58: SSPCON = 0b00101000;
	movlw	(028h)
	movwf	(20)	;volatile
	line	59
	
l3684:	
;main.c: 59: SSPSTAT = 0b10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	60
	
l3686:	
;main.c: 60: SSPADD = (20000 / (4 * 100)) - 1;
	movlw	(031h)
	movwf	(147)^080h	;volatile
	line	62
	
l3688:	
;main.c: 62: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_init+0)+0+1),f
	movlw	238
movwf	((??_init+0)+0),f
u5197:
	decfsz	((??_init+0)+0),f
	goto	u5197
	decfsz	((??_init+0)+0+1),f
	goto	u5197
	nop
opt asmopt_on

	line	64
	
l3690:	
;main.c: 64: OPTION_REGbits.T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h,5	;volatile
	line	65
	
l3692:	
;main.c: 65: OPTION_REGbits.T0SE = 0;
	bcf	(129)^080h,4	;volatile
	line	66
	
l3694:	
;main.c: 66: OPTION_REGbits.PSA = 0;
	bcf	(129)^080h,3	;volatile
	line	69
	
l3696:	
;main.c: 69: OPTION_REGbits.PS0 = 0;
	bcf	(129)^080h,0	;volatile
	line	70
	
l3698:	
;main.c: 70: OPTION_REGbits.PS1 = 0;
	bcf	(129)^080h,1	;volatile
	line	71
	
l3700:	
;main.c: 71: OPTION_REGbits.PS2 = 1;
	bsf	(129)^080h,2	;volatile
	line	73
	
l3702:	
;main.c: 73: serial_init();
	fcall	_serial_init
	line	74
	
l3704:	
;main.c: 74: hd44780_init();
	fcall	_hd44780_init
	line	77
	
l120:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_serial_init

;; *************** function _serial_init *****************
;; Defined at:
;;		line 5 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
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
psect	text48,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
	line	5
global __ptext48
__ptext48:	;psect for function _serial_init
psect	text48
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
	line	5
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
;incstack = 0
	opt	stack 5
; Regs used in _serial_init: []
	line	9
	
l2574:	
# 9 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
banksel TXREG ;# 
	line	10
# 10 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
clrf TXREG ;# 
	line	11
# 11 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
banksel RCREG ;# 
	line	12
# 12 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
clrf RCREG ;# 
	line	15
# 15 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
banksel SPBRG ;# 
	line	16
# 16 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
movlw 0x40 ;# 
	line	17
# 17 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
movwf SPBRG ;# 
	line	20
# 20 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
banksel TXSTA ;# 
	line	21
# 21 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
movlw 0x24 ;# 
	line	22
# 22 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
movwf TXSTA ;# 
	line	26
# 26 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
banksel RCSTA ;# 
	line	27
# 27 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
movlw 0x90 ;# 
	line	28
# 28 "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\serial.c"
movwf RCSTA ;# 
psect	text48
	line	30
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
	signat	_serial_init,88
	global	_hd44780_init

;; *************** function _hd44780_init *****************
;; Defined at:
;;		line 12 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_hd44780_busy
;;		_hd44780_pulse
;;		_hd44780_write
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	12
global __ptext49
__ptext49:	;psect for function _hd44780_init
psect	text49
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	12
	global	__size_of_hd44780_init
	__size_of_hd44780_init	equ	__end_of_hd44780_init-_hd44780_init
	
_hd44780_init:	
;incstack = 0
	opt	stack 3
; Regs used in _hd44780_init: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l3706:	
;hd44780.c: 15: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	16
;hd44780.c: 16: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	18
	
l3708:	
;hd44780.c: 18: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_hd44780_init+0)+0+1),f
	movlw	221
movwf	((??_hd44780_init+0)+0),f
u5207:
	decfsz	((??_hd44780_init+0)+0),f
	goto	u5207
	decfsz	((??_hd44780_init+0)+0+1),f
	goto	u5207
	nop2
opt asmopt_on

	line	19
	
l3710:	
;hd44780.c: 19: PORTA = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	20
	
l3712:	
;hd44780.c: 20: hd44780_pulse();
	fcall	_hd44780_pulse
	line	21
	
l3714:	
;hd44780.c: 21: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_hd44780_init+0)+0+1),f
	movlw	118
movwf	((??_hd44780_init+0)+0),f
u5217:
	decfsz	((??_hd44780_init+0)+0),f
	goto	u5217
	decfsz	((??_hd44780_init+0)+0+1),f
	goto	u5217
	nop
opt asmopt_on

	line	22
	
l3716:	
;hd44780.c: 22: PORTA = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	23
	
l3718:	
;hd44780.c: 23: hd44780_pulse();
	fcall	_hd44780_pulse
	line	24
	
l3720:	
;hd44780.c: 24: _delay((unsigned long)((120)*(20000000/4000000.0)));
	opt asmopt_off
movlw	199
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_hd44780_init+0)+0,f
u5227:
decfsz	(??_hd44780_init+0)+0,f
	goto	u5227
	nop2	;nop
opt asmopt_on

	line	25
	
l3722:	
;hd44780.c: 25: PORTA = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	26
	
l3724:	
;hd44780.c: 26: hd44780_pulse();
	fcall	_hd44780_pulse
	line	28
	
l3726:	
;hd44780.c: 28: hd44780_busy();
	fcall	_hd44780_busy
	line	30
	
l3728:	
;hd44780.c: 30: PORTA = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	31
	
l3730:	
;hd44780.c: 31: hd44780_pulse();
	fcall	_hd44780_pulse
	line	33
	
l3732:	
;hd44780.c: 33: hd44780_busy();
	fcall	_hd44780_busy
	line	36
	
l3734:	
;hd44780.c: 36: hd44780_write( 0b00101000 );
	movlw	(028h)
	fcall	_hd44780_write
	line	38
	
l3736:	
;hd44780.c: 38: hd44780_write( 0b00001100 );
	movlw	(0Ch)
	fcall	_hd44780_write
	line	39
	
l3738:	
;hd44780.c: 39: hd44780_write( 0b00000001 );
	movlw	(01h)
	fcall	_hd44780_write
	line	40
	
l3740:	
;hd44780.c: 40: hd44780_write( 0b00000110 );
	movlw	(06h)
	fcall	_hd44780_write
	line	41
	
l355:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_init
	__end_of_hd44780_init:
	signat	_hd44780_init,88
	global	_hd44780_write

;; *************** function _hd44780_write *****************
;; Defined at:
;;		line 43 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
;; Parameters:    Size  Location     Type
;;  bt              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bt              1    0[BANK0 ] unsigned char 
;;  tmp             1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       2       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_hd44780_busy
;;		_hd44780_pulse
;; This function is called by:
;;		_hd44780_init
;;		_hd44780_char
;;		_hd44780_printstr
;;		_hd44780_newline
;;		_hd44780_block_erase
;;		_hd44780_printchr
;;		_hd44780_clear
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1
	line	43
global __ptext50
__ptext50:	;psect for function _hd44780_write
psect	text50
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	43
	global	__size_of_hd44780_write
	__size_of_hd44780_write	equ	__end_of_hd44780_write-_hd44780_write
	
_hd44780_write:	
;incstack = 0
	opt	stack 2
; Regs used in _hd44780_write: [wreg+status,2+status,0+pclath+cstack]
;hd44780_write@bt stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(hd44780_write@bt)
	line	47
	
l4094:	
;hd44780.c: 45: unsigned char tmp;
;hd44780.c: 47: tmp = bt & 0xF0;
	movf	(hd44780_write@bt),w
	andlw	0F0h
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	line	48
	
l4096:	
;hd44780.c: 48: tmp = tmp >> 4;
	movf	(hd44780_write@tmp),w
	movwf	(??_hd44780_write+0)+0
	movlw	04h
u3505:
	clrc
	rrf	(??_hd44780_write+0)+0,f
	addlw	-1
	skipz
	goto	u3505
	movf	0+(??_hd44780_write+0)+0,w
	movwf	(??_hd44780_write+1)+0
	movf	(??_hd44780_write+1)+0,w
	movwf	(hd44780_write@tmp)
	line	50
	
l4098:	
;hd44780.c: 50: if(rs_flag == 1){
	btfss	(_rs_flag/8),(_rs_flag)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l4102
u3510:
	line	51
	
l4100:	
;hd44780.c: 51: tmp = tmp | 0x20;
	movf	(hd44780_write@tmp),w
	iorlw	020h
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	goto	l4102
	line	52
	
l358:	
	line	53
	
l4102:	
;hd44780.c: 52: }
;hd44780.c: 53: PORTA = tmp;
	movf	(hd44780_write@tmp),w
	movwf	(5)	;volatile
	line	55
	
l4104:	
;hd44780.c: 55: hd44780_pulse();
	fcall	_hd44780_pulse
	line	57
	
l4106:	
;hd44780.c: 57: tmp = bt & 0x0F;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(hd44780_write@bt),w
	andlw	0Fh
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	line	59
	
l4108:	
;hd44780.c: 59: if(rs_flag == 1){
	btfss	(_rs_flag/8),(_rs_flag)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l4112
u3520:
	line	60
	
l4110:	
;hd44780.c: 60: tmp = tmp | 0x20;
	movf	(hd44780_write@tmp),w
	iorlw	020h
	movwf	(??_hd44780_write+0)+0
	movf	(??_hd44780_write+0)+0,w
	movwf	(hd44780_write@tmp)
	goto	l4112
	line	61
	
l359:	
	line	63
	
l4112:	
;hd44780.c: 61: }
;hd44780.c: 63: PORTA = tmp;
	movf	(hd44780_write@tmp),w
	movwf	(5)	;volatile
	line	65
	
l4114:	
;hd44780.c: 65: hd44780_pulse();
	fcall	_hd44780_pulse
	line	69
	
l4116:	
;hd44780.c: 69: hd44780_busy();
	fcall	_hd44780_busy
	line	70
	
l360:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_write
	__end_of_hd44780_write:
	signat	_hd44780_write,4216
	global	_hd44780_pulse

;; *************** function _hd44780_pulse *****************
;; Defined at:
;;		line 5 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
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
;;		_hd44780_init
;;		_hd44780_write
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1
	line	5
global __ptext51
__ptext51:	;psect for function _hd44780_pulse
psect	text51
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	5
	global	__size_of_hd44780_pulse
	__size_of_hd44780_pulse	equ	__end_of_hd44780_pulse-_hd44780_pulse
	
_hd44780_pulse:	
;incstack = 0
	opt	stack 2
; Regs used in _hd44780_pulse: []
	line	7
	
l4082:	
;hd44780.c: 7: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7	;volatile
	line	8
;hd44780.c: 8: _delay((unsigned long)((1)*(20000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop
	opt asmopt_on

	line	9
;hd44780.c: 9: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7	;volatile
	line	10
	
l352:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_pulse
	__end_of_hd44780_pulse:
	signat	_hd44780_pulse,88
	global	_hd44780_busy

;; *************** function _hd44780_busy *****************
;; Defined at:
;;		line 82 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
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
;;		_hd44780_init
;;		_hd44780_write
;; This function uses a non-reentrant model
;;
psect	text52,local,class=CODE,delta=2,merge=1
	line	82
global __ptext52
__ptext52:	;psect for function _hd44780_busy
psect	text52
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\hd44780.c"
	line	82
	global	__size_of_hd44780_busy
	__size_of_hd44780_busy	equ	__end_of_hd44780_busy-_hd44780_busy
	
_hd44780_busy:	
;incstack = 0
	opt	stack 2
; Regs used in _hd44780_busy: [wreg+status,2]
	line	84
	
l4084:	
;hd44780.c: 84: RE2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7	;volatile
	line	85
;hd44780.c: 85: rs_flag = 0;
	bcf	(_rs_flag/8),(_rs_flag)&7
	line	86
	
l4086:	
;hd44780.c: 86: TRISA = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	87
	
l4088:	
;hd44780.c: 87: RE1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7	;volatile
	line	88
	
l4090:	
;hd44780.c: 88: RE0 = 1;
	bsf	(72/8),(72)&7	;volatile
	line	90
;hd44780.c: 90: while( RA3 == 1 );
	goto	l366
	
l367:	
	
l366:	
	btfsc	(43/8),(43)&7	;volatile
	goto	u3491
	goto	u3490
u3491:
	goto	l366
u3490:
	
l368:	
	line	92
;hd44780.c: 92: RE0 = 0;
	bcf	(72/8),(72)&7	;volatile
	line	93
;hd44780.c: 93: RE1 = 0;
	bcf	(73/8),(73)&7	;volatile
	line	95
	
l4092:	
;hd44780.c: 95: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	96
	
l369:	
	return
	opt stack 0
GLOBAL	__end_of_hd44780_busy
	__end_of_hd44780_busy:
	signat	_hd44780_busy,88
	global	_debounce_lo

;; *************** function _debounce_lo *****************
;; Defined at:
;;		line 89 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
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
psect	text53,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	89
global __ptext53
__ptext53:	;psect for function _debounce_lo
psect	text53
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	89
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
	line	91
	
l3742:	
;main.c: 91: uint8_t count = 0;
	clrf	(debounce_lo@count)
	line	93
	
l3744:	
;main.c: 93: if( !prt ){
	movf	(debounce_lo@prt),f
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l3760
u3200:
	goto	l128
	line	94
	
l3746:	
;main.c: 94: while( !prt && count < 10 ){
	goto	l128
	
l129:	
	line	95
	
l3748:	
;main.c: 95: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_debounce_lo+0)+0+1),f
	movlw	125
movwf	((??_debounce_lo+0)+0),f
u5237:
	decfsz	((??_debounce_lo+0)+0),f
	goto	u5237
	decfsz	((??_debounce_lo+0)+0+1),f
	goto	u5237
opt asmopt_on

	line	96
	
l3750:	
;main.c: 96: count++;
	movlw	(01h)
	movwf	(??_debounce_lo+0)+0
	movf	(??_debounce_lo+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(debounce_lo@count),f
	line	97
	
l128:	
	line	94
	movf	(debounce_lo@prt),f
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l3754
u3210:
	
l3752:	
	movlw	(0Ah)
	subwf	(debounce_lo@count),w
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l3748
u3220:
	goto	l3754
	
l131:	
	goto	l3754
	
l132:	
	line	98
	
l3754:	
;main.c: 97: }
;main.c: 98: if( count == 10 )
	movf	(debounce_lo@count),w
	xorlw	0Ah
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l3760
u3230:
	line	99
	
l3756:	
;main.c: 99: return 1;
	movlw	(01h)
	goto	l134
	
l3758:	
	goto	l134
	
l133:	
	goto	l3760
	line	100
	
l127:	
	line	101
	
l3760:	
;main.c: 100: }
;main.c: 101: return 0;
	movlw	(0)
	goto	l134
	
l3762:	
	line	102
	
l134:	
	return
	opt stack 0
GLOBAL	__end_of_debounce_lo
	__end_of_debounce_lo:
	signat	_debounce_lo,4217
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 51 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   45[BANK0 ] float 
;;  f2              3   48[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   68[BANK0 ] unsigned um
;;  sign            1   72[BANK0 ] unsigned char 
;;  cntr            1   71[BANK0 ] unsigned char 
;;  exp             1   67[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   45[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0      18       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      28       0       0       0
;;Total ram usage:       28 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_tea5767_getpll
;;		_tea5767_getfreq
;;		_tea5767_round_freq
;;		_tea5767_tuned_freq
;; This function uses a non-reentrant model
;;
psect	text54,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftmul.c"
	line	51
global __ptext54
__ptext54:	;psect for function ___ftmul
psect	text54
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftmul.c"
	line	51
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l4442:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u4241
	goto	u4240
u4241:
	goto	l4448
u4240:
	line	57
	
l4444:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l752
	
l4446:	
	goto	l752
	
l751:	
	line	58
	
l4448:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u4251
	goto	u4250
u4251:
	goto	l4454
u4250:
	line	59
	
l4450:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l752
	
l4452:	
	goto	l752
	
l753:	
	line	60
	
l4454:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u4265:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4260:
	addlw	-1
	skipz
	goto	u4265
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u4275:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4270:
	addlw	-1
	skipz
	goto	u4275
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l4456:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l4458:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l4460:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l4462:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l4464:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4466
	line	70
	
l754:	
	line	71
	
l4466:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l4470
u4280:
	line	72
	
l4468:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4291
	addwf	(___ftmul@f3_as_product+1),f
u4291:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4292
	addwf	(___ftmul@f3_as_product+2),f
u4292:

	goto	l4470
	
l755:	
	line	73
	
l4470:	
	movlw	01h
u4305:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4305

	line	74
	
l4472:	
	movlw	01h
u4315:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u4315
	line	75
	
l4474:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4321
	goto	u4320
u4321:
	goto	l4466
u4320:
	goto	l4476
	
l756:	
	line	76
	
l4476:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4478
	line	77
	
l757:	
	line	78
	
l4478:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l4482
u4330:
	line	79
	
l4480:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4341
	addwf	(___ftmul@f3_as_product+1),f
u4341:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4342
	addwf	(___ftmul@f3_as_product+2),f
u4342:

	goto	l4482
	
l758:	
	line	80
	
l4482:	
	movlw	01h
u4355:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4355

	line	81
	
l4484:	
	movlw	01h
u4365:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u4365

	line	82
	
l4486:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l4478
u4370:
	goto	l4488
	
l759:	
	line	83
	
l4488:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l752
	
l4490:	
	line	84
	
l752:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;; This function uses a non-reentrant model
;;
psect	text55,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\float.c"
	line	62
global __ptext55
__ptext55:	;psect for function ___ftpack
psect	text55
	file	"C:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l4190:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u3610
	goto	l4194
u3610:
	
l4192:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l4200
u3620:
	goto	l4194
	
l662:	
	line	65
	
l4194:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l663
	
l4196:	
	goto	l663
	
l660:	
	line	66
	goto	l4200
	
l665:	
	line	67
	
l4198:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u3635:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3635

	goto	l4200
	line	69
	
l664:	
	line	66
	
l4200:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l4198
u3640:
	goto	l667
	
l666:	
	line	70
	goto	l667
	
l668:	
	line	71
	
l4202:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l4204:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l4206:	
	movlw	01h
u3655:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3655

	line	74
	
l667:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l4202
u3660:
	goto	l4210
	
l669:	
	line	75
	goto	l4210
	
l671:	
	line	76
	
l4208:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3675:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3675
	goto	l4210
	line	78
	
l670:	
	line	75
	
l4210:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l4208
u3680:
	
l672:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l673
u3690:
	line	80
	
l4212:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l673:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l4214:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3705:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3700:
	addlw	-1
	skipz
	goto	u3705
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l4216:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3710
	goto	l674
u3710:
	line	84
	
l4218:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l674:	
	line	85
	line	86
	
l663:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_tc_int

;; *************** function _tc_int *****************
;; Defined at:
;;		line 78 in file "C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
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
psect	text56,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	78
global __ptext56
__ptext56:	;psect for function _tc_int
psect	text56
	file	"C:\Users\Dinusha\Documents\PICProjects\PIC877AProjects\CProjects\TEA5767\main.c"
	line	78
	global	__size_of_tc_int
	__size_of_tc_int	equ	__end_of_tc_int-_tc_int
	
_tc_int:	
;incstack = 0
	opt	stack 0
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
psect	text56
	line	80
	
i1l1618:	
;main.c: 80: if( TMR0IE && TMR0IF ){
	btfss	(93/8),(93)&7	;volatile
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l124
u5_20:
	
i1l1620:	
	btfss	(90/8),(90)&7	;volatile
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l124
u6_20:
	line	81
	
i1l1622:	
;main.c: 81: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	82
	
i1l1624:	
;main.c: 82: TMR0 = 0;
	clrf	(1)	;volatile
	goto	i1l124
	line	85
	
i1l1626:	
;main.c: 85: return;
	goto	i1l124
	line	86
	
i1l123:	
	line	87
	
i1l124:	
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
