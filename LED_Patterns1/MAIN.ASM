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

    ;__CONFIG   _CP_OFF & _DATA_CP_OFF & _LVP_OFF & _BOREN_OFF & _MCLRE_ON & _WDT_OFF & _PWRTE_ON & _INTOSC_OSC_NOCLKOUT 
	__CONFIG    _XT_OSC & _LVP_OFF & _WDT_OFF & _PWRTE_ON & _BODEN_ON

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR        UDATA_SHR     
w_temp         RES     1        ; variable used for context saving 
status_temp    RES     1        ; variable used for context saving

				UDATA
count1              RES 1       ;variable used in delay routines.
counta              RES 1       ;variable used in delay routines.
countb              RES 1       ;variable used in delay routines.


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
	START
; remaining code goes here
;Start:
	;bcf	STATUS,	RP0
	;CLRF PORTA
	CLRF PORTB
	BSF    STATUS,RP0 ; RAM bank 1
	;CLRF TRISA
	CLRF TRISB
	BCF    STATUS,RP0 ; RAM bank 0
	
; 
; ------------------------ 
; FUNCTION OF PORT A PINS 
; ------------------------ 
; 
        MOVLW    7 
        MOVWF    CMCON ; Comparators off, all pins digital I/O 


MAINLOOP


	movlw b'1111'
	;movwf PORTA
	movwf PORTB
	;BSF     PORTA,0

	CALL Delay255
	;CALL Delay_1
	;nop
	;nop
	;nop

	movlw b'0111'
	;movwf PORTA
	movwf PORTB
	;BCF     PORTA,0

	;nop
	;nop
	;nop

	CALL Delay255
	;CALL Delay_1

	movlw b'1011'
	;movwf PORTA
	movwf PORTB
	;BCF     PORTA,0

	;nop
	;nop
	;nop

	CALL Delay255
	;CALL Delay_1

	movlw b'1101'
	;movwf PORTA
	movwf PORTB
	;BCF     PORTA,0

	;nop
	;nop
	;nop

	CALL Delay255
	;CALL Delay_1

	movlw b'1110'
	;movwf PORTA
	movwf PORTB
	;BCF     PORTA,0

	;nop
	;nop
	;nop

	CALL Delay255
	;CALL Delay_1



	GOTO MAINLOOP

;______________________________________________________________________________________________
;Delays originated here: http://www.winpicprog.co.uk/pic_tutorial3.htm
;All delays here assume a 4Mhz clock.
Delay255
        movlw   .255            ;delay 255ms.
        goto    d0
Delay30
        movlw   .30             ;delay 30mS.
        goto    d0
Delay5
        movlw   .5              ;delay 5ms.
        goto    d0
Delay1
        movlw   .1              ;delay 1mS.
                
d0      movwf   count1
d1      movlw   0xC7
        movwf   counta
        movlw   0x01
        movwf   countb
Delay_0
        decfsz  counta
        goto    $+2
        decfsz  countb
        goto    Delay_0
        decfsz  count1
        goto    d1
        retlw   .0              ;return from the delay routine.
; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

