;******************************************************************************
;                                                                             *
;    Filename:                                                                *
;    Date:                                                                    *
;    File Version:                                                            *
;                                                                             *
;    Author:                                                                  *
;    Company:                                                                 *
;                                                                             * 
;******************************************************************************
;                                                                             *
;    Files Required: P18F2550.INC                                             *
;                                                                             *
;******************************************************************************

	LIST P=18F2550		;directive to define processor
	#include <P18F2550.INC>	;processor specific variable definitions


;******************************************************************************
;Configuration bits
;Microchip has changed the format for defining the configuration bits, please 
;see the .inc file for futher details on notation.  Below are a few examples.

    CONFIG	FOSC=HS					; HS oscillator, HS used by USB
	CONFIG	PWRT=ON					; Power on timer
	CONFIG	BOR=OFF					; Brown out off
	CONFIG	WDT=OFF					; Watch dog off
	CONFIG	PBADEN=OFF				; Port B en digital IO
	CONFIG	LVP=OFF					; Pas de prog single supply
;	CONFIG	ICPRT=OFF				; Port de debug off
	CONFIG	DEBUG=OFF				; Debug off


;   Oscillator Selection:
    ;CONFIG	FOSC = XT_XT         ;XT oscillator, XT used by USB

;******************************************************************************
;EEPROM data
; Data to be programmed into the Data EEPROM is defined here

		ORG	0xf00000

		;DE	"Test Data",0,1,2,3,4,5
		LOC_1	EQU	0x08

;******************************************************************************
;Reset vector
; This code will start executing when a reset occurs.

		ORG	0x0000

		goto	Main		;go to start of main code

;******************************************************************************
;Start of main program
; The main program code is placed here.

Main:

;	*** main code goes here ***

;		MOVLW	A'Y'
		CLRF	TRISB		; Make PORTB as a Output port
		CLRF	LATB		; Make PORTB as a Output port
LpHere	BSF		PORTB, 0	; bit set turns on RB0
		CALL	Delay		; Call delay routine
		BCF		PORTB, 0	; bit clear turns off RB0
		CALL	Delay
		CALL	Delay
		BRA 	LpHere

		ORG		300H
Delay
		MOVLW	0xFA		; 250 rounds
		MOVWF	LOC_1

Loop	NOP
		NOP
		NOP
		DECF	LOC_1, F
		BNZ		Loop		; repeat until LOC_1 becomes zero

		RETURN
; Delay Calculation = 250 * 6 + 1 + 1 + 1
; 1 second at 1MHz since each instruction takes 4 cycles
;******************************************************************************
;End of program

		END
