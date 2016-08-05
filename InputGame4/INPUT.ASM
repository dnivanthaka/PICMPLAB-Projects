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
;constant MAXRT=.200
#define LED1 PORTB, RB0
#define LED2 PORTB, RB2

			   UDATA 
sample_count   RES     1        ; variable used for sampling
delay_count    RES     1        ; variable used for sampling
time_scaler    RES     1
;flash_counter    RES     1
;flash_counter_2  RES     1
scale_value      RES     1

;DelayMS MACRO ms
;		movlw ms/.10
;		pagesel delay10
;		call delay10
;		pagesel $
;		ENDM


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
	  bsf PORTB, RB7                ; setting RB7 as input
	 
	  bsf  STATUS, RP0            ; Switching to bank 1
	  ;clrf TRISA
	  movlw b'11110000'
	  		  ;--1-----				;Timer mode (T0CS = 1)
			  ;----1---				;Prescaler assigned to Timer0 (PSA = 1)
			  ;-----000				;Prescale = 32 (PS = 100)
	  option
	  clrf TRISB
	  bsf TRISB, TRISB7	
	  bcf  STATUS, RP0            ; Switching back to bank 0

	  bcf PORTB, RB0
	  bcf PORTB, RB1

; 
; ------------------------ 
; FUNCTION OF PORT A PINS 
; ------------------------ 
; 
      MOVLW    7 
      MOVWF    CMCON ; Comparators off, all pins digital I/O 

MAINLOOP

		;clrf flash_counter
		;clrf flash_counter_2

		;clrf time_scaler
;wait_1s
		;clrf TMR0
		
;w_tmr0
		;movf TMR0, w	
		;xorlw .250
		;btfss STATUS, Z
		;goto w_tmr0			;(250 * 32 = 8ms)
		;movwf sample_count
		;incf time_scaler, f
		;movlw .125
		;xorwf time_scaler, w
		;btfss STATUS, Z
		;goto wait_1s
		;movlw .125
		;call wait_delay
		;bsf PORTB, RB0
		;movlw .125
		;call wait_delay
		;movlw .0
		;xorlw .1
		;btfss STATUS, Z
		;bsf PORTB, RB1
		;bcf PORTB, RB0
		;goto $
		clrf TMR0
		
		goto MAINLOOP
;		clrf time_scaler

		
wait_delay
		movwf scale_value
		clrf time_scaler
wait_s
		clrf TMR0
w_tmr
		btfss PORTB, RB7
		retlw 1
		movf TMR0, w	
		xorlw .250
		btfss STATUS, Z
		goto w_tmr			;(250 * 32 = 8ms)
		;movwf sample_count
		incf time_scaler, f
		movfw scale_value
		;movlw .125
		xorwf time_scaler, w
		btfss STATUS, Z
		goto wait_s
		;return
		retlw 0
		
;wait_1s_2
;		clrf TMR0
		
;w_tmr0_2
;		btfss PORTB, RB7
;		goto w_end
;		movf TMR0, w	
;		xorlw .128
;		btfss STATUS, Z
;		goto w_tmr0_2			;(128 * 32 = 4ms)
		;movwf sample_count
;		incf time_scaler, f
;		movlw .50
;		xorwf time_scaler, w
;		btfss STATUS, Z
;		goto wait_1s_2


;		bsf PORTB, RB1
	
		
;w_end		
;button_loop
;	  	btfss PORTB, RB7 	; When button is pressed, input is 0, ie cleared
;	  	;goto button_loop
;	  	;bsf PORTB, RB1
;		call flash_led
;	 	btfsc PORTB, RB7
;	  	;bcf PORTB, RB1
;		nop
;	  	goto MAINLOOP
      	;  goto     $                ; loop forever


f;lash_led
;	  	bcf PORTB, RB1
;		call delay_timer
;		bsf PORTB, RB1
;		call delay_timer
;		bcf PORTB, RB1
;		call delay_timer
		;incfsz flash_counter, f
		;goto flash_led
		;movlw .75
		;incf flash_counter_2, f
		;xorwf flash_counter_2, w
		;btfss STATUS, Z
		;goto flash_led
	  	;bsf PORTB, RB1
;		return
;delay_timer
;		incfsz flash_counter, f
;		goto delay_timer
;		movlw .75
;		incf flash_counter_2, f
;		xorwf flash_counter_2, w
;		btfss STATUS, Z
;		goto delay_timer
;		return
; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

