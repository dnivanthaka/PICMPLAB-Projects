;**********************************************************************
;   This file is a basic code template for object module code         *
;   generation on the PIC16F690. This file contains the               *
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
;    Files required: P16F690.INC                                      *
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

    list      p=16F690           ; list directive to define processor
    #include <p16F690.inc>        ; processor specific variable definitions

    errorlevel  -302              ; suppress message 302 from list file

    __CONFIG   _CP_OFF & _CPD_OFF & _BOR_OFF & _MCLRE_ON & _WDT_OFF & _PWRTE_ON & _INTRC_OSC_NOCLKOUT & _FCMEN_OFF & _IESO_OFF 

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR     UDATA_SHR     
w_temp      RES     1       ; variable used for context saving 
status_temp RES     1       ; variable used for context saving
pclath_temp RES     1       ; variable used for context saving

;**********************************************************************
RESET_VECTOR    CODE    0x0000       ; processor reset vector
        goto    start                ; go to beginning of program

INT_VECTOR      CODE    0x0004       ; interrupt vector location

INTERRUPT

        movwf   w_temp            ; save off current W register contents
        movf    STATUS,w          ; move status register into W register
        movwf   status_temp       ; save off contents of STATUS register
        movf    PCLATH,w          ; move pclath register into W register
        movwf   pclath_temp       ; save off contents of PCLATH register



; isr code can go here or be located as a call subroutine elsewhere


        movf    pclath_temp,w     ; retrieve copy of PCLATH register
        movwf   PCLATH            ; restore pre-isr PCLATH register contents
        movf    status_temp,w     ; retrieve copy of STATUS register
        movwf   STATUS            ; restore pre-isr STATUS register contents
        swapf   w_temp,f
        swapf   w_temp,w          ; restore pre-isr W register contents
        retfie                    ; return from interrupt

MAIN_PROG       CODE

start
		call	init
; remaining code goes here
		;banksel	PORTC
		;bsf		PORTC, RC1

        goto    $             ; loop forever



init
		;---------------------------------------------------
		; Setting Speed 4Mhz, 1us instruction cycle
		;---------------------------------------------------
		movlw	b'01100000'
		banksel	OSCCON
		movwf	OSCCON
		;---------------------------------------------------

		;---------------------------------------------------
		; Setting up PORTS for Digital IO/PWM
		;---------------------------------------------------
		; Switching to Bank 0
		bcf	STATUS, RP0
		bcf	STATUS, RP1
		clrf PORTC
		; Switching to Bank 2
		bsf	STATUS, RP1
		clrf ANSEL
		; Switching to Bank 1
		bsf	STATUS, RP0
		bcf	STATUS, RP1
		
		clrf TRISC
		; As stated in datasheet the output driver should be disabled and enabled for that pin
		bsf	TRISC, RC2
		; Switching to Bank 0
		bcf STATUS, RP0
		;--------------------------------------------------

		;--------------------------------------------------
		; Setting up PWM Parameters
		;--------------------------------------------------
		movlw	0xFF
		banksel PR2
		movwf	PR2

		movlw	b'01001100'
		banksel	CCP1CON
		movwf	CCP1CON

		movlw 	.100
		banksel	CCPR1L
		movwf	CCPR1L

		banksel PIR1
		bcf		PIR1, TMR2IF

		;movlw	b'01111110'
		movlw	b'00000100'
		banksel T2CON
		movwf	T2CON
		;--------------------------------------------------

		;banksel	sPORTC
		;clrf sPORTC

		;---------------------------------------------------
		; Setting up Interrupts
		;---------------------------------------------------
		; PORTA/PORTB Pull-up Disabled, PSA = Timer0, PS 1:2, delay = 1us * 256 * 2 = 512us
		;banksel	OPTION_REG
		;movlw	b'10000000'
		;movlw	b'10000111'
		;movwf	OPTION_REG

		; GIE, T0IE Enable
		;banksel	INTCON
		;movlw	b'10100000'
		;movwf	INTCON
		;--------------------------------------------------

		;---------------------------------------------------
		; Setting up Counters
		;---------------------------------------------------

		; Cycle count = 256 - 154 + 2 = 100
		;movlw	.8
		;movlw	.104
		;banksel	TMR0
		;movwf	TMR0

		; Wait until the overflow occurs, as stated in datasheet
		banksel	PIR1
		btfss	PIR1, TMR2IF
		goto	$-1
		nop
		
		; Enabling PWM output
		banksel	TRISC
		bcf		TRISC, RC2

		return


; initialize eeprom locations

EE      CODE    0x2100
        DE  0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'