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
timer_scale		RES		1
duty			RES		1
duty_inc		RES		1
pattern			RES		1


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
		clrf	PORTB

		bsf		STATUS, RP0			; Switching to Bank 1

		clrwdt

		movlw	b'00000100'
				 ;-----100			; Prescale value of 1:32
		option

		clrwdt

		clrf	TRISB
		bcf		STATUS, RP0			; Switching to Bank 0

		clrf 	timer_scale

		;movlw	b'00000001'
		movlw	0x0
		movwf	pattern	

reset_duty

		movlw	.10
		movwf 	duty_inc
MAINLOOP

		;movlw	b'00000001'
		;movwf	PORTB
		
		;movlw	.1
		;call	DELAY
		
		;movlw	b'00000000'
		;movwf	PORTB

		;movlw	.39
		;call	DELAY
		;rlf		pattern, f
		;movlw	.1	
		movf	duty_inc, w
		movwf	duty
		;movlw	b'00000001'
		
		movf	pattern, w
		call	pat_1
		call	LEDON

		;incf	pattern, f

		;clrf	STATUS, C
		
		;movlw	b'00000010'
		;movwf	pattern
		;incf	duty_inc, f

		;movlw	.39
		;xorwf	duty_inc, w
		;btfsc	STATUS, Z
		;goto     $ 
		;goto	reset_duty
		
		;movlw	.200
		;call	DELAY
		;call	DELAY	

		goto 	MAINLOOP
        ;goto     $                ; loop forever

DELAY
		movwf	timer_scale
		;clrf	timer_counter
tmr_clr
		clrf	TMR0
tmr_inner
		movlw	.4
		xorwf	TMR0, w				; Delay = 32 * 4 = 0.128 ms
		btfss	STATUS, Z
		goto 	tmr_inner
		
		;incf	timer_counter, f
		;movf	timer_scale, w
		;xorwf	timer_counter
		;btfss	STATUS, Z
		decfsz	timer_scale, f
		goto	tmr_clr

		return

LEDON
		;movlw	b'00000001'
		movwf	PORTB
		
		;movlw	.1
		movf	duty, w
		call	DELAY

		;movlw	.40
		;subwf	duty
		;movwf	duty
		movf	duty, w
		sublw	.40
		movwf	duty
		
		movlw	b'00000000'
		movwf	PORTB

		;movlw	.39
		movf	duty, w
		call	DELAY
	
		return

pat_1
		addwf	PCL, f
		retlw	b'00000001'
		retlw	b'00000010'
		retlw	b'00000100'
		retlw	b'00001000'
		retlw	b'00010000'
		retlw	b'00100000'
		retlw	b'01000000'
		retlw	b'10000000'

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

