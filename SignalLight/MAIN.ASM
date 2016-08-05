;**********************************************************************
;   This file is a basic code template for object module code         *
;   generation on the PIC16F628A. This file contains the              *
;   basic code building blocks to build upon.                         *
;                                                                     *
;   Refer to the MPASM User's Guide for additional information on     *
;   features of the assembler and linker (Document DS33014).          *
;                                                                     *
;   Refer to the respective PIC data sheet for additional             *
;   information on the instruction set.                               *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Filename:        main.asm                                         *
;    Date:                                                            *
;    File Version:                                                    *
;                                                                     *
;    Author:                                                          *
;    Company:                                                         *
;                                                                     *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Files required: P16F628A.INC                                     *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Notes: Signal Light Demo                                                          *
;                                                                     *
;**********************************************************************

    list      p=16F628A           ; list directive to define processor
    #include <p16F628A.inc>       ; processor specific variable definitions

    errorlevel  -302              ; suppress message 302 from list file

    ;__CONFIG   _CP_OFF & _DATA_CP_OFF & _LVP_OFF & _BOREN_OFF & _MCLRE_ON & _WDT_OFF & _PWRTE_ON & _INTOSC_OSC_NOCLKOUT 
	__CONFIG   _XT_OSC & _LVP_OFF & _WDT_OFF & _PWRTE_ON & _BODEN_ON

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR        UDATA_SHR     
w_temp         RES     1        ; variable used for context saving 
status_temp    RES     1        ; variable used for context saving
scale_value		RES		1
time_scaler		RES		1

; Constants
#define RED_LIGHT		PORTB, RB0
#define	YELLOW_LIGHT	PORTB, RB1
#define GREEN_LIGHT		PORTB, RB2


;**********************************************************************
RESET_VECTOR    CODE   0x0000     ; processor reset vector
        goto    START             ; go to beginning of program
    
INT_VECTOR    CODE    0x0004      ; interrupt vector location

INTERRUPT

        movwf   w_temp            ; save off current W register contents
        movf    STATUS,w          ; move status register into W register
        movwf   status_temp       ; save off contents of STATUS register


; isr code can go here or be located as a call subroutine elsewhere


        movf    status_temp,w     ; retrieve copy of STATUS register
        movwf   STATUS            ; restore pre-isr STATUS register contents
        swapf   w_temp,f
        swapf   w_temp,w          ; restore pre-isr W register contents
        retfie                    ; return from interrupt

MAIN_PROG     CODE

START
		movlw 	0x07				; Turning off comparators
		movwf 	CMCON

		clrf	PORTB				; Setting port output low

		clrf	TMR0				; Clearing the Timer0 value

		bsf		STATUS, RP0			; Switching to Bank 1
		clrf	TRISB				; Setting output driver
		
		clrwdt

		movlw	b'00000111'
				 ;--0-----
				 ;----0---
				 ;-----1--
				 ;------1-
				 ;-------1
		option
		
		clrwdt

		bcf		STATUS, RP0			; Switching back to Bank 0

		; Turning off all lights
		bcf		RED_LIGHT
		bcf		YELLOW_LIGHT
		bcf		GREEN_LIGHT

MAINLOOP		
		bsf		RED_LIGHT

		movlw	.120
		call DELAY

		bcf		RED_LIGHT

		movlw	.1
		call DELAY

		;bsf		YELLOW_LIGHT

		;movlw	.1
		;call DELAY

		;bcf		YELLOW_LIGHT

		;movlw	.1
		;call DELAY

		bsf		GREEN_LIGHT

		movlw	.120
		call DELAY

		bcf		GREEN_LIGHT

		;movlw	.40
		;call DELAY

		goto	MAINLOOP
        ;goto     $                ; loop forever

DELAY
		movwf	scale_value
		clrf 	time_scaler
tmr_clr
		clrf	TMR0
		
tmr_loop
		movf	TMR0, w
		xorlw	.80						; Delay = prescale ratio * scale_value
										; i.e. 256 * 80 = 20ms
		btfss	STATUS, Z
		goto	tmr_loop
		incf	time_scaler, f
		movf	time_scaler, w				; Total Delay = 10ms * 10 = 1000ms
		xorlw	.60
		btfsc	STATUS, Z
		bsf		YELLOW_LIGHT
		movf	scale_value, w				; Total Delay = 10ms * 10 = 1000ms
		xorwf	time_scaler
		btfss	STATUS, Z
		goto 	tmr_clr
		bcf		YELLOW_LIGHT
		
		return

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

