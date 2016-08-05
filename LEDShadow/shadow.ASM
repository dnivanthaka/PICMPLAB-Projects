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
;    Filename:        xxx.asm                                         *
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
;    Notes:                                                           *
;                                                                     *
;**********************************************************************

    list      p=16F628A           ; list directive to define processor
    #include <p16F628A.inc>       ; processor specific variable definitions

    errorlevel  -302              ; suppress message 302 from list file

    ;__CONFIG   _LVP_OFF & _BOREN_OFF & _MCLRE_ON & _WDT_OFF & _PWRTE_ON & _INTOSC_OSC_NOCLKOUT 
	;__CONFIG    _XT_OSC & _LVP_OFF & _WDT_OFF & _PWRTE_ON & _BODEN_ON
	__CONFIG    _INTOSC_OSC_NOCLKOUT & _LVP_OFF & _WDT_OFF & _PWRTE_ON & _BODEN_ON

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR        UDATA_SHR     
w_temp         RES     1        ; variable used for context saving 
status_temp    RES     1        ; variable used for context saving

Delay1         RES     1
Delay2         RES     1
Counter        RES     1

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
; remaining code goes here
		CLRF PORTA                ; Setting port A pins as outputs
		BSF  STATUS,RP0           ; RAM bank 1
		CLRF TRISA                ; Setting port A pins as outputs
		BCF  STATUS,RP0           ; RAM bank 0

		movlw d'255'
		movwf Delay1
		movwf Delay2

; 
; ------------------------ 
; FUNCTION OF PORT A PINS 
; ------------------------ 
; 
        MOVLW    7 
        MOVWF    CMCON ; Comparators off, all pins digital I/O 

MainLoop:
		;movlw b'1111'
		;movwf PORTA

		;CALL Delay_1
		;CALL Delay_1

		;movlw b'1110'
		;movwf PORTA

		;CALL Delay_1
		;CALL Delay_1

		;movlw b'1101'
		;movwf PORTA

		;CALL Delay_1
		;CALL Delay_1

		;movlw b'1011'
		;movwf PORTA

		;CALL Delay_1
		;CALL Delay_1

		;movlw b'0111'
		;movwf PORTA

		;CALL Delay_1
		;CALL Delay_1

		;movlw b'1000'
		;movwf PORTA

		;CALL Delay_1
		;CALL Delay_1
		movlw h'1111'
		movwf Counter

	CounterLoop:
		CALL Delay_1
		CALL Delay_1

		movfw Counter
		movwf PORTA

		CALL Delay_1
		CALL Delay_1

		decfsz Counter
		goto CounterLoop
		goto MainLoop

Delay_1:
	DECFSZ Delay1,1 ;Decrement Delay1 by 1, skip next instruction if Delay1 is 0 
	GOTO Delay_1
	DECFSZ Delay2,1
	GOTO Delay_1
	return		
        ;goto     $               ; loop forever

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

