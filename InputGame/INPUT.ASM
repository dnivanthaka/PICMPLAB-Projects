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
	__CONFIG   _XT_OSC & _LVP_OFF & _WDT_OFF & _PWRTE_ON & _BODEN_ON 

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR        UDATA_SHR     
w_temp         RES     1        ; variable used for context saving 
status_temp    RES     1        ; variable used for context saving
;sGPIO		   RES     1        ; Shadow GPIO

			   UDATA 
sample_count   RES     1        ; variable used for sampling
delay_count    RES     1        ; variable used for sampling
time_scaler    RES     1


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
	
	  clrf PORTB
	  ;bsf PORTB, RB7                ; setting RB7 as input
	 
	  bsf  STATUS, RP0            ; Switching to bank 1
	  ;clrf TRISA
	  movlw b'11010100'
	  		  ;--0-----				;Timer mode (T0CS = 0)
			  ;----0---				;Prescaler assigned to Timer0 (PSA = 0)
			  ;-----100				;Prescale = 32 (PS = 100)
	  option
	  clrf TRISB
	  bcf  STATUS, RP0            ; Switching back to bank 0

	  movlw b'0'                  ; Switching off the LED
	  movwf PORTB

; 
; ------------------------ 
; FUNCTION OF PORT A PINS 
; ------------------------ 
; 
      MOVLW    7 
      MOVWF    CMCON ; Comparators off, all pins digital I/O 

MAINLOOP

		clrf time_scaler
wait_1s
		clrf TMR0
		

w_tmr0
		movf TMR0, w	
		xorlw .250
		btfss STATUS, Z
		goto w_tmr0			;(250 * 32 = 8ms)
		;movwf sample_count
		incf time_scaler, f
		movlw .125
		xorwf time_scaler, w
		btfss STATUS, Z
		goto wait_1s
		
		bsf PORTB, RB0
		bsf PORTB, RB1
	
		clrf time_scaler

wait_1s_off
		clrf TMR0
		
w_tmr0_off
		movf TMR0, w	
		xorlw .250
		btfss STATUS, Z
		goto w_tmr0_off			;(250 * 32 = 8ms)
		;movwf sample_count
		incf time_scaler, f
		movlw .10
		xorwf time_scaler, w
		btfss STATUS, Z
		goto wait_1s_off
		
		bcf PORTB, RB0
		bcf PORTB, RB1
		

	  goto MAINLOOP
      ;  goto     $                ; loop forever

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

