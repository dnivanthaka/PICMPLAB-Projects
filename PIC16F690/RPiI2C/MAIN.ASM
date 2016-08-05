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
#define DEVICE_ADDR	0x22


; example of using Shared Uninitialized Data Section
INT_VAR     UDATA_SHR     
w_temp      RES     1       ; variable used for context saving 
status_temp RES     1       ; variable used for context saving
pclath_temp RES     1       ; variable used for context saving

UDATA
temp		RES		1
buffer		RES		1

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



		banksel	PIR1
		btfss	PIR1, SSPIF
		goto $
		bcf 	PIR1, SSPIF
		banksel	PORTB
		bsf		PORTB, RB5
		pagesel	SSP_Handler
		call	SSP_Handler


        movf    pclath_temp,w     ; retrieve copy of PCLATH register
        movwf   PCLATH            ; restore pre-isr PCLATH register contents
        movf    status_temp,w     ; retrieve copy of STATUS register
        movwf   STATUS            ; restore pre-isr STATUS register contents
        swapf   w_temp,f
        swapf   w_temp,w          ; restore pre-isr W register contents
        retfie                    ; return from interrupt

MAIN_PROG       CODE

start
		call	device_init
		;banksel	PORTB
		;bsf		PORTB, RB5

        goto    $             ; loop forever


;----------------------------------------------------
; Initialization of Device
;----------------------------------------------------
device_init
	;movlw b'01110101'
	 movlw b'01110000'
		  ;--111----	; 8Mhz Crystal
		  ;-----0---	; OSTS - Intrnal Oscillator
		  ;------1--	; HFINTOSC - High Frequency Oscillator
		  ;-------0-	; LFINTOSC - Low Freq. Oscillator
		  ;---------1	; Internal Oscillator is used for Clock
	banksel	OSCCON
	movwf	OSCCON
	
	bcf		STATUS, RP0	; Bank 0
	bcf		STATUS, RP1 

	clrf	PORTB
	
	bsf		STATUS, RP1 ; Bank 2
	
	clrf	ANSEL		; Digital IO
	clrf	ANSELH		; Digital IO
	
	bsf		STATUS, RP0
	bcf		STATUS, RP1	; Bank 1

	movlw	b'01010000'		; RB4 and RB6 as inputs - SDA, SCL
	movwf	TRISB

	bcf		STATUS, RP0	; Bank 0

; Configuring I2C Peripheral
	banksel	PIR1
	;clrf	PIR1
	bcf		PIR1, SSPIF

	;movlw	b'00110110'
	movlw	b'00110110'
			;-----0110		; 7 bit slave mode
	banksel	SSPCON	
	movwf	SSPCON

	movlw	DEVICE_ADDR
	banksel	SSPADD			; Setting Address
	movwf	SSPADD

	banksel	SSPSTAT
	clrf	SSPSTAT

	banksel	SSPBUF
	clrf	SSPBUF

	;Enabling Interrupts
	banksel	PIE1
	bsf		PIE1, SSPIE

	banksel	INTCON
	bsf		INTCON, PEIE	; Peripheral interrupt enable
	bsf		INTCON, GIE		; Global interrupt enable

	return
;----------------------------------------------------

SSP_Handler
	banksel	SSPSTAT
	movf	SSPSTAT, w
	andlw	b'00101101'
	banksel	temp
	movwf	temp

State1
	banksel	temp
	movf	temp, w
	xorlw	b'00001001'
	btfss	STATUS, Z
	goto	State2
	banksel	SSPBUF
	movf	SSPBUF, w
	banksel	buffer
	movwf	buffer

	return

State2
	banksel	temp
	movf	temp, w
	xorlw	b'00101001'
	btfss	STATUS, Z
	goto	State3
	banksel	SSPBUF
	movf	SSPBUF, w
	banksel	buffer
	movwf	buffer
	return


State3
	banksel	temp
	movf	temp, w
	andlw	b'00101100'
	xorlw	b'00001101'
	btfss	STATUS, Z
	goto	State4

	return


State4
	banksel	temp
	movf	temp, w
	xorlw	b'00101100'
	btfss	STATUS, Z
	goto	State5

	return


State5
	
	return
; initialize eeprom locations

EE      CODE    0x2100
        DE  0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'