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

    ;__CONFIG    _CP_OFF & _VBOR_25 & _BOREN_OFF & _PWRTE_ON & _WDT_OFF & _HS_OSC
	__CONFIG    _CP_OFF & _VBOR_25 & _BOREN_ON & _PWRTE_ON & _WDT_ON & _HS_OSC

; External Functions ***************************************************
EXTERN uDelay
EXTERN mDelay
EXTERN sDelay

;***********************************************************************

;***** VARIABLE DEFINITIONS (examples)
#define PWM1		PORTB, RB0
#define PWM1_TRIS	TRISB, RB0

#define PWM2		PORTB, RB1
#define PWM2_TRIS	TRISB, RB1

; example of using Shared Uninitialized Data Section
INT_VAR     UDATA    
w_temp      RES     1       ; variable used for context saving 
status_temp RES     1       ; variable used for context saving
sPORTB		RES		1		; Shadow PORTB
periodc		RES		1		; Period Counter
PWM1_duty	RES		1		; PWM1 duty counter
PWM2_duty	RES		1		; PWM2 duty counter
temp		RES		1
temp2		RES		1

PWM1_value 	RES		1
PWM2_value 	RES		1

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

		clrwdt

		banksel	periodc
		decfsz	periodc, f
		goto	channel_0
	
		movlw	.127
		movwf	periodc
	
		banksel PWM1_value
		movf	PWM1_value, w
		;movlw	.10
		banksel	PWM1_duty
		movwf	PWM1_duty
	
		;banksel	PORTB
		;bsf		PWM1
		;bsf		PWM2
		;movlw	b'00000101'
		movlw	b'00001111'
		;movlw	b'00000110'
		banksel	sPORTB
		movwf	sPORTB
	
		banksel PWM2_value
		movf	PWM2_value, w
		;movlw	.100
		banksel	PWM2_duty
		movwf	PWM2_duty

	
channel_0
		banksel	periodc
		movf	periodc, w
		banksel	PWM1_duty
		subwf	PWM1_duty, w
		banksel	sPORTB
		btfsc	STATUS, Z
		bcf		sPORTB, RB0

channel_1
		banksel	periodc
		movf	periodc, w
		banksel	PWM2_duty
		subwf	PWM2_duty, w
		banksel	sPORTB
		btfsc	STATUS, Z
		bcf		sPORTB, RB1
	
_duty_done
		;Updating PORTB
		banksel	sPORTB
		movf	sPORTB, w
		
		banksel	PORTB
		movwf	PORTB
	
		; Enabling Interrupts Again
		movlw	.228
		banksel	TMR0	
		;clrf	TMR0
		movwf	TMR0
	
		banksel	INTCON
		bcf		INTCON, TMR0IF


        bcf 	STATUS,RP0  	; select bank0
        movf    status_temp,W   ; retrieve copy of STATUS register
        movwf   STATUS          ; restore pre-isr STATUS register contents
        swapf   w_temp,F
        swapf   w_temp,W        ; restore pre-isr W register contents
        retfie                  ; return from interrupt
       
MAIN_PROG       CODE

start
	pagesel	init
	call	init

	;movlw	b'00000101'
	;movlw	b'00001111'
	;banksel	PORTB
	;movwf	PORTB

	;goto $

loop
	clrwdt
; A/D Conversion Channel 0 ---------------------------

	movlw	b'10000001'
	banksel	ADCON0
	movwf	ADCON0

	;clrwdt

	; Waiting for the aquisition time
	movlw	.20
	pagesel	uDelay
	call	uDelay

	;clrwdt

	banksel	ADCON0
	bsf		ADCON0, GO_DONE

	btfsc	ADCON0, GO_DONE
	goto	$-1

	clrwdt

	banksel	ADRES
	movf	ADRES, w

	pagesel	scale
	call	scale

	;Turning off A/D
	banksel	ADCON0
	bcf		ADCON0, ADON

	;movlw	.100		

	banksel	PWM1_value
	movwf	PWM1_value

;-----------------------------------------------------
	;clrwdt

	movlw	.20
	pagesel	uDelay
	call	uDelay

	;clrwdt

; A/D Conversion Channel 1 ---------------------------

	movlw	b'10001001'
	banksel	ADCON0
	movwf	ADCON0

	;clrwdt

	; Waiting for the aquisition time
	movlw	.20
	pagesel	uDelay
	call	uDelay

	;clrwdt

	banksel	ADCON0
	bsf		ADCON0, GO_DONE

	btfsc	ADCON0, GO_DONE
	goto	$-1

	clrwdt

	banksel	ADRES
	movf	ADRES, w

	pagesel	scale
	call	scale

	;Turning off A/D
	banksel	ADCON0
	bcf		ADCON0, ADON

	;movf	temp, w

	;movlw	.255
	;movlw	.127
	;movlw	.0
	banksel	PWM2_value
	movwf	PWM2_value

;----------------------------------------------------
	;clrwdt

	movlw	.20
	pagesel	uDelay
	call	uDelay

	;clrwdt

    goto loop


;----------------------------------------------------
; Scaling the readings
;----------------------------------------------------

scale
	banksel	temp
	movwf	temp
	
	bcf		STATUS, C
	rrf		temp, w
	;movlw	.100

	return

;----------------------------------------------------
;----------------------------------------------------
; Initialization of the device
;----------------------------------------------------
init

	banksel	sPORTB
	clrf	sPORTB

	; Switching to bank 0
	bcf	STATUS, RP0
	bcf	STATUS, RP1

	clrf	PORTB
	clrf	PORTA
	;movlw	0
	;movwf	PWM1

	clrwdt

	; Switching to bank 1
	bsf	STATUS, RP0
	;bcf	STATUS, RP1

	;movlw	b'11111001'
	;movwf	TRISB
	banksel	TRISB
	clrf	TRISB
	;bcf	PWM1_TRIS
	;bcf	PWM2_TRIS

	banksel	TRISA
	bsf		TRISA, RA0
	bsf		TRISA, RA1

	; Switching to bank 0
	bcf	STATUS, RP0

;----------------------------------------------------

	; Setting up A/D
	;movlw	b'00000101'
	;movlw	b'00001110'
	movlw	b'00000100'
	banksel	ADCON1
	movwf	ADCON1

	;movlw	b'10000001'
	movlw	b'10000000'
	;movlw	b'01000000'
	banksel	ADCON0
	movwf	ADCON0

	clrwdt
	
	;nop
	;nop
	;nop
	;nop
	;nop
	; Waiting for the aquisition time
	;movlw	.20
	;pagesel	uDelay
	;call	uDelay

;----------------------------------------------------

	; Setting TMR0 Interrupt
	; 1:2 Prescalar -> 0.2us * 2 * 256 = 100us
	movlw	b'00000000'
	banksel	OPTION_REG
	movwf	OPTION_REG

	; Enabling GIE & TMR0IE
	movlw 	b'10100000'
	banksel	INTCON
	movwf	INTCON
	
	clrwdt

	; Initializing variables
	banksel	periodc
	clrf	periodc

	banksel	PWM1_value
	clrf	PWM1_value

	banksel	PWM2_value
	clrf	PWM2_value

	; 256 - 228 = 28
	movlw	.228	
	banksel	TMR0
	;clrf	TMR0
	movwf	TMR0

	clrwdt

	return

;----------------------------------------------------
        END                     ; directive 'end of program'

