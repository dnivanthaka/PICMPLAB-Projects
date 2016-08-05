;**********************************************************************
;   This file is a basic code template for object module code         *
;   generation on the PIC16F716. This file contains the               *
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
;    Filename:      xxx.asm                                           *
;    Date:                                                            *
;    File Version:                                                    *
;                                                                     *
;    Author:                                                          *
;    Company:                                                         *
;                                                                     *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Files required: P16F716.INC                                      *
;                                                                     *
;                                                                     *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Notes:                                                           *
;                                                                     *
;                                                                     *
;                                                                     *
;                                                                     *
;**********************************************************************

    list      p=16F716              ; list directive to define processor
    #include <p16F716.inc>          ; processor specific variable definitions

    errorlevel  -302                ; suppress message 302 from list file

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

    __CONFIG    _CP_OFF & _VBOR_25 & _BOREN_OFF & _PWRTE_ON & _WDT_OFF & _XT_OSC

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR     UDATA    
w_temp      RES     1       ; variable used for context saving 
status_temp RES     1       ; variable used for context saving
sample_count   RES     1        
delay_count    RES     1        
time_scaler    RES     1
;flash_counter    RES     1
;flash_counter_2  RES     1
scale_value      RES     1
counter_value_1  RES     1
counter_value_2  RES     1

mpx_cnt			 RES	 1

INT_VAR1    UDATA   
w1_temp     RES 1           ; bank 1 w_temp register

;**********************************************************************
RESET_VECTOR    CODE    0x0000  ; processor reset vector
        goto    start           ; go to beginning of program

INT_VECTOR      CODE    0x0004  ; interrupt vector location

INTERRUPT

        movwf   w_temp          ; save off current W register contents
        movf    STATUS,w        ; move status register into W register
        bcf STATUS,RP0  ; select bank0
        movwf   status_temp     ; save off contents of STATUS register

; isr code can go here or be located as a call subroutine elsewhere


        bcf STATUS,RP0  ; select bank0
        movf    status_temp,W   ; retrieve copy of STATUS register
        movwf   STATUS          ; restore pre-isr STATUS register contents
        swapf   w_temp,F
        swapf   w_temp,W        ; restore pre-isr W register contents
        retfie                  ; return from interrupt
       
MAIN_PROG       CODE

start
; remaining code goes here
		;BCF STATUS, RP0			; Switching to bank 0
		;CLRF PORTB				; All pins cleared to output
		
		;BSF STATUS, RP0			; switching to bank 1
		;CLRF TRISB				; Set all pins as Outputs
		;BCF STATUS, RP0			; Switching to bank 0
		;BSF PORTB, RB0
		;movlw b'0000'
		;movwf PORTB
		;CLRF counter
		clrf PORTB
	  	clrf PORTA
	  	;bsf PORTB, RB7                ; setting RB7 as input
	 
	  	bsf  STATUS, RP0            ; Switching to bank 1
	  ;clrf TRISA
	  ; Enabling weak pull-ups

	  	movlw b'01010100'
			  ;0-------				; Weak pull up enable
	  		  ;--0-----				;Timer mode (T0CS = 0)
			  ;----0---				;Prescaler assigned to Timer0 (PSA = 0)
			  ;-----111				;Prescale = 32 (PS = 100)
	  	option
	  	clrf TRISB
	  	clrf TRISA
	  	;bsf TRISB, TRISB7	
	  	bcf  STATUS, RP0            ; Switching back to bank 0

	  	;bcf PORTB, RB0
	  	;bcf PORTB, RB1

	  	;bcf PORTA, RA0
	  	;bsf PORTA, RA1
	  	;bcf PORTA, RA1
	  	;bsf PORTA, RA1
	  	;bsf PORTA, RA2

		;bsf PORTA, RA0
	  	;bsf PORTA, RA1
		;bsf PORTA, RA2
		movlw b'0111'
		movwf PORTA

	  	;movlw b'1111111'
	  	;movwf PORTB
		clrf counter_value_1


MAINLOOP
		clrf counter_value_1
		;movlw 0x12
		;addwf counter_value_1
		;movlw 0x09
		;movwf counter_value_1
		;movwf counter_value_2
		;bcf PORTA, RA1
	    ;bcf PORTA, RA2
		;bsf PORTB, RB7
		movlw 1000000/2048/2
		movwf mpx_cnt

		;movlw b'1111111'
	  	;movwf PORTB

counter_loop
		;movlw .0
c1_hi
		btfss TMR0, 2
		goto c1_hi

		;btfss PORTB, RB7
		;goto MAINLOOP
		;bcf PORTA, RA0
		;bsf PORTA, RA1
		movlw b'0110'
		movwf PORTA

		swapf counter_value_1, w
		;movfw counter_value_1
		andlw 0x0F
		;movfw counter_value_1
		call get7sc
		movwf PORTB
		;bcf PORTA, RA1
		;bsf PORTA, RA0
		movlw b'0101'
		movwf PORTA

c1_lo
		btfsc TMR0, 2
		goto c1_lo

		;btfss PORTB, RB7
		;goto MAINLOOP

		;call wait_delay
c2_hi
		btfss TMR0, 2
		goto c2_hi

		;btfss PORTB, RB7
		;goto MAINLOOP

		;bsf PORTA, RA0
		;bcf PORTA, RA1
		movlw b'0101'
		movwf PORTA

		;movfw counter_value_1
		;andlw 0x0F
		;swapf counter_value_1, w
		movfw counter_value_1
		andlw 0x0F
		call get7sc
		movwf PORTB
		;bsf PORTA, RA1
		;bcf PORTA, RA0
		movlw b'0110'
		movwf PORTA


c2_lo
		btfsc TMR0, 2
		goto c2_lo

		;movlw b'0111'
		;movwf PORTA
		
		;btfss PORTB, RB7
		;goto MAINLOOP
		;movlw .1
		;call wait_delay

		;movf TMR0, w	
		;xorlw .40
		;btfss STATUS, Z		;(256 * 40 = 100ms)
		;goto counter_loop

		;incf time_scaler, f
		;movfw scale_value
		;movlw .10
		;xorwf time_scaler, w
		;btfss STATUS, Z
		;goto cl_tmr
		;movlw b'1111111'
	  	;movwf PORTB

		decfsz mpx_cnt, f
		goto counter_loop

		;call wait_delay

		;decf counter_value_2, f
		;incf counter_value_1, f
		;swapf counter_value_1, w
		;addlw 0x01
		;movlw 0x10
		;addwf counter_value_1, f
		;movlw 0x01
		;subwf counter_value_1, f
		;movlw .10
		;movlw 0xA0
		;xorwf counter_value_1, w
		;btfss STATUS, Z
		;goto counter_loop

		;bsf PORTB, RB0
		
		;movlw .9
		;call get7sc
		;movwf PORTB
		;call wait_delay
		;movlw .1
		;call get7sc
		;movwf PORTB
		;call wait_delay
		;movlw .0
		;movfw counter_value_1
		;call get7sc
		;movwf PORTB

		;call wait_delay

		;incf counter_value_1, f
		;movlw .10
		;xorwf counter_value_1, w
		;btfss STATUS, Z
		;goto  counter_loop

		movlw 0x10
		addwf counter_value_1, f
		movlw 0x01
		addwf counter_value_1, f

		;call wait_delay

		movlw 0xA0
		xorwf counter_value_1, w
		btfss STATUS, Z
		goto counter_loop

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

        goto MAINLOOP

get7sc
		addwf PCL, f
		;retlw b'1011111'		;0
		retlw b'1000000'		;0
		;retlw b'0000110'		;1
		;retlw b'1111001'		;1
		retlw b'1111100'		;1
		retlw b'0100010'		;2
		retlw b'0101000'		;3
		retlw b'0011100'		;4
		retlw b'0001001'		;5
		retlw b'0000001'		;6
		retlw b'1001100'		;7
		retlw b'0000000'		;8
		retlw b'0001100'		;9

        END                     ; directive 'end of program'

