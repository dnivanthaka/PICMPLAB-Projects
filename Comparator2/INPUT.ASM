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

radix dec

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR        UDATA_SHR     
w_temp         RES     1        ; variable used for context saving 
status_temp    RES     1        ; variable used for context saving
;sGPIO		   RES     1        ; Shadow GPIO
;constant MAXRT=.200
;#define LED1 PORTB, RB0
;#define LED2 PORTB, RB2

			   UDATA 
sample_count   RES     1        ; variable used for sampling
delay_count    RES     1        ; variable used for sampling
time_scaler    RES     1
;flash_counter    RES     1
;flash_counter_2  RES     1
scale_value      RES     1
counter_value_1  RES     1
counter_value_2  RES     1
mpx_cnt			 RES	 1

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
	  clrf PORTA
	  bsf PORTB, RB7                ; setting RB7 as input
	  bsf PORTA, RA0
	  bsf PORTA, RA3
	  bsf  STATUS, RP0            ; Switching to bank 1
	  ;clrf TRISA
	  ; Enabling weak pull-ups

	  movlw b'01010111'
			  ;0-------				; Weak pull up enable
	  		  ;--0-----				;Timer mode (T0CS = 0)
			  ;----0---				;Prescaler assigned to Timer0 (PSA = 0)
			  ;-----111				;Prescale = 256 (PS = 111)
	  option
	  clrf TRISB
	  clrf TRISA
	  bsf TRISB, TRISB7	
	  bsf TRISA, TRISA0
	  bsf TRISA, TRISA1
	  bsf TRISA, TRISA2	
	  bsf TRISA, TRISA3
	  bcf  STATUS, RP0            ; Switching back to bank 0

	  ;bcf PORTB, RB0
	  ;bcf PORTB, RB1

	  ;bcf PORTA, RA0
	  ;bsf PORTA, RA1
	  ;bcf PORTA, RA1
	  ;bsf PORTA, RA1
	  ;bsf PORTA, RA2
	  movlw b'1111111'
	  movwf PORTB

; 
; ------------------------ 
; FUNCTION OF PORT A PINS 
; ------------------------ 
; 
      ;MOVLW    7 
      ;MOVWF    CMCON ; Comparators off, all pins digital I/O
		;movlw 1<<C1OUT|1<<CIS|1<<CM2|0<<CM1|0<<CM0 
		movlw 1<<C1OUT|1<<CIS|0<<CM2|1<<CM1|0<<CM0
		;movlw 1<<C1OUT|1<<CIS
		movwf CMCON

		movlw 1<<VREN|0<<VROE|1<<VRR|1<<VR3|1<<VR2|0<<VR1|0<<VR0
		movwf VRCON
		;movlw 4
		;MOVWF    CMCON

		movlw b'1111111'
	  	movwf PORTB

MAINLOOP
		;clrf TMR0
		;clrf counter_value_1
		;movlw 0x09
		;movwf counter_value_1
		;movwf counter_value_2
		;bcf PORTA, RA1
	    ;bcf PORTA, RA2
		;bsf PORTB, RB7
		;movlw 1000000/2048/2
		;movwf mpx_cnt


		btfsc CMCON, C1OUT
		movlw .1
		btfss CMCON, C1OUT
		movlw .0
		

		;clrf flash_counter
		;clrf flash_counter_2

		;clrf time_scaler
		
		;movlw .1
		call get7sc
		movwf PORTB
		;call wait_delay
		;movlw .1
		;call get7sc
		;movwf PORTB
		;call wait_delay

		goto MAINLOOP
;		clrf time_scaler

		
wait_delay
		;movwf scale_value
		clrf time_scaler
wait_s
		clrf TMR0
w_tmr
		movf TMR0, w	
		xorlw .250
		btfss STATUS, Z
		goto w_tmr			;(250 * 32 = 8ms)
		;movwf sample_count
		incf time_scaler, f
		;movfw scale_value
		movlw .125
		xorwf time_scaler, w
		btfss STATUS, Z
		goto wait_s
		return
		;retlw 0
		

get7sc
		addwf PCL, f
		;retlw b'1011111'		;0
		retlw b'0010000'		;0
		;retlw b'0000110'		;1
		;retlw b'1111001'		;1
		retlw b'1111100'		;1
		retlw b'0100010'		;2
		retlw b'0101000'		;3
		retlw b'1001100'		;4
		retlw b'0001001'		;5
		retlw b'0000001'		;6
		retlw b'0011100'		;7
		retlw b'0000000'		;8
		retlw b'0001100'		;9

;flash_led
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

