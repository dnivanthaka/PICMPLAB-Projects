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

  __CONFIG    _XT_OSC & _LVP_OFF & _WDT_OFF & _PWRTE_ON & _BODEN_ON

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR        UDATA_SHR     
w_temp         RES     1        ; variable used for context saving 
status_temp    RES     1        ; variable used for context saving
dc1			   RES	   1
dc2			   RES	   1
dc3			   RES	   1


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
	  clrf dc1
	  clrf dc2
	  clrf dc3

	  

	  clrf PORTA
	  bsf  STATUS, RP0
	  clrf TRISA
	  bcf  STATUS, RP0

; 
; ------------------------ 
; FUNCTION OF PORT A PINS 
; ------------------------ 
; 
        MOVLW    7 
        MOVWF    CMCON ; Comparators off, all pins digital I/O 

MAINLOOP
	  movlw b'1111'
	  movwf PORTA

	  movlw 87
	  call DELAY_10
	  ;call DELAY
	  ;call DELAY
	  
	  movlw b'0000'
	  movwf PORTA

	  movlw 13
	  call DELAY_10
	  ;call DELAY
	  ;call DELAY

	  goto MAINLOOP

        ;goto     $                ; loop forever
DELAY_10
	  ;movlw d'15'
	  movwf dc3

	  movlw d'13'
	  movwf dc2

DL1 nop
	  decfsz dc1, f
	  goto DL1

DL2 nop
	  decfsz dc2, f
	  goto DL2

DL3 nop
	  decfsz dc3, f
	  goto DL1
	  RETURN
	

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

