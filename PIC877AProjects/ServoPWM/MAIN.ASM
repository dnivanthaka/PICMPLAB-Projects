;**********************************************************************
;   This file is a basic code template for object module code         *
;   generation on the PIC16F877A. This file contains the              *
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
;    Files required: P16F877A.INC                                     *
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


    list        p=16f877a   ; list directive to define processor
    #include    <p16f877a.inc>  ; processor specific variable definitions
    
    ;__CONFIG _CP_OFF & _WDT_OFF & _BODEN_OFF & _PWRTE_ON & _RC_OSC & _WRT_OFF & _LVP_ON & _CPD_OFF
	__CONFIG  _FOSC_HS & _WRT_OFF & _LVP_OFF & _CPD_OFF & _CP_OFF & _WDT_OFF & _BODEN_OFF & _PWRTE_ON

; '__CONFIG' directive is used to embed configuration data within .asm file.
; The labels following the directive are located in the respective .inc file.
; See respective data sheet for additional information on configuration word.

#define SERVO1	PORTC, RC2
#define SERVO_TRIS TRISC

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR     UDATA_SHR      
w_temp      RES     1       ; variable used for context saving 
status_temp RES     1       ; variable used for context saving
pclath_temp RES	    1       ; variable used for context saving

; example of using Uninitialized Data Section
TEMP_VAR    UDATA           ; explicit address specified is not required
temp_count  RES     1       ; temporary variable (example)
sPORTC		RES		1
servo_ticks RES		1


; example of using Overlayed Uninitialized Data Section
; in this example both variables are assigned the same GPR location by linker
G_DATA      UDATA_OVR       ; explicit address can be specified
flag        RES 2           ; temporary variable (shared locations - G_DATA)

G_DATA      UDATA_OVR   
count       RES 2           ; temporary variable (shared locations - G_DATA)

;**********************************************************************
RESET_VECTOR    CODE    0x0000 ; processor reset vector
    nop                        ; nop for icd
    pagesel start
    goto    start              ; go to beginning of program


INT_VECTOR      CODE    0x0004 ; interrupt vector location

INTERRUPT

    movwf   w_temp          ; save off current W register contents
    movf    STATUS,w        ; move status register into W register
    movwf   status_temp     ; save off contents of STATUS register
    movf    PCLATH,w        ; move pclath register into w register
    movwf   pclath_temp     ; save off contents of PCLATH register

; isr code can go here or be located as a call subroutine elsewhere
	;banksel	PORTC
	;bcf		PORTC, RC2

	; Checking interrupt
	banksel	INTCON
	btfss	INTCON, TMR0IF
	goto	timer1_trigger

	; Timer0 Interrupt
	movlw	0x0
	banksel	servo_ticks
	xorwf	servo_ticks, w
	pagesel	STATUS
	btfss	STATUS, Z
	goto	$+2
	goto	change_pulse

;dec_ticks
	banksel	servo_ticks
	decf	servo_ticks, f

	banksel	sPORTC
	movf	sPORTC, w
	xorlw	0x04
	movwf	sPORTC

	banksel	PORTC
	movwf	PORTC

	;banksel	PORTC
	;bsf		PORTC, RC2

	goto	dec_ticks_done

change_pulse
	;banksel	PORTC
	;bcf		PORTC, RC2
	banksel	sPORTC
	clrf	sPORTC
	movf	sPORTC, w
	banksel	PORTC
	movwf	PORTC

	;movlw	.10
	;movwf	servo_ticks	
	;banksel	sPORTC
	;movf	sPORTC, w
	;xorlw	0x04
	;movwf	sPORTC
	;movlw	0xFF
	;banksel	sPORTC
	;movf	sPORTC, w
	;banksel	PORTC
	;movwf	PORTC

	;banksel	PORTC
	;movwf	PORTC
	
	

dec_ticks_done
	; Enabling TMR0 interrupt again
	banksel	INTCON
	bcf		INTCON, TMR0IF
	goto	int_end

timer1_trigger
	; Timer1 Interrupt
	;banksel	sPORTC
	;movf	sPORTC, w
	;banksel	PORTC
	;movwf	PORTC
	movlw	.10
	banksel	servo_ticks
	movwf	servo_ticks

	movlw	.250
	banksel	TMR1L
	movwf	TMR1L


	;banksel	PORTC
	;bsf		PORTC, RC2
	;banksel	sPORTC
	;movf	sPORTC, w
	;xorlw	0x04
	;movwf	sPORTC

	;banksel	PORTC
	;movwf	PORTC



	; Enabling TMR1 interrupt again
	banksel	PIR1
	bcf		PIR1, TMR1IF

int_end
    movf    pclath_temp,w   ; retrieve copy of PCLATH register
    movwf   PCLATH          ; restore pre-isr PCLATH register contents
    movf    status_temp,w   ; retrieve copy of STATUS register
    movwf   STATUS          ; restore pre-isr STATUS register contents
    swapf   w_temp,f
    swapf   w_temp,w        ; restore pre-isr W register contents
    retfie                  ; return from interrupt

MAIN_PROG       CODE

start

    nop             ; code starts here (example)
    banksel count           ; example
    clrf    count           ; example

; remaining code goes here

;init
	;movlw	0xFF
	;banksel PR2
	;movwf	PR2

	;movlw 	.24
	;banksel	CCPR1L
	;movwf	CCPR1L

	banksel	TRISC
	bcf		TRISC, RC2

	clrf	sPORTC

	;movlw	b'01111110'
	;movlw	b'00000110'
	;banksel T2CON
	;movwf	T2CON

	;banksel TMR2
	;clrf	TMR2

	;movlw	b'00001100'
	;banksel	CCP1CON
	;movwf	CCP1CON

	;banksel	TRISB
	;bcf		TRISB, RB2

	;movlw	0x0F;
	banksel	PORTC
	bcf		PORTC, RC2
	;movwf	PORTC
	;banksel	PORTB
	;bsf		PORTB, RB2

	movlw	.10
	banksel	servo_ticks
	;clrf	servo_ticks
	movwf	servo_ticks

	call	setup


loop	
	
    goto	loop
	;goto $

setup
	;------------------------------------------------------------
	; Enabling TMR1 interrupts
	;------------------------------------------------------------
	;TMR1 ON, Prescalar 1:2 = 0.2 * 256 * 256 * 2 = 26ms
	;movlw	b'00111001'
	;movlw	b'00001001'
	movlw	b'00011001'
	banksel	T1CON
	movwf	T1CON

	banksel	TMR1H
	clrf	TMR1H

	banksel	TMR1L
	clrf	TMR1L

	movlw	.250
	banksel	TMR1L
	movwf	TMR1L

	; Enabling Global Interrupts, Peripheral Interrupts
	;movlw	b'11000000'
	;banksel	INTCON
	;movwf	INTCON

	;movlw	b'00000001'
	;banksel	PIE1
	;movwf	PIE1

	;------------------------------------------------------------
	; Enabling TMR0 interrupts
	;------------------------------------------------------------
	; Prescalar 1:2 = 0.2 * 256 * 2 = 102us
	movlw	b'00000111'
	banksel	OPTION_REG
	movwf	OPTION_REG

	; Enabling Global Interrupts, Peripheral Interrupts
	movlw	b'11100000'
	banksel	INTCON
	movwf	INTCON

	banksel	TMR0
	clrf	TMR0

	movlw	b'00000001'
	banksel	PIE1
	movwf	PIE1

	return

    END                       ; directive 'end of program'

