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

; External Functions ***************************************************
EXTERN uDelay
EXTERN mDelay
EXTERN sDelay

EXTERN	usart_init
EXTERN	usart_tx_byte
EXTERN	usart_rx_byte 
;***********************************************************************

;***** VARIABLE DEFINITIONS (examples)

#define PWM1		PORTB, RB1
#define PWM1_TRIS	TRISB, RB1

#define PWM2		PORTB, RB2
#define PWM2_TRIS	TRISB, RB2

; example of using Shared Uninitialized Data Section
INT_VAR     UDATA_SHR      
w_temp      RES     1       ; variable used for context saving 
status_temp RES     1       ; variable used for context saving
pclath_temp RES	    1       ; variable used for context saving

; example of using Uninitialized Data Section
TEMP_VAR    UDATA           ; explicit address specified is not required

sPORTB		RES		1		; Shadow PORTB
temp_count  RES     1       ; temporary variable (example)
periodc		RES		1		; Period Counter
PWM1_duty	RES		1		; PWM1 duty counter
PWM2_duty	RES		1		; PWM2 duty counter
temp		RES		1
temp2		RES		1

PWM1_value 	RES		1
PWM2_value 	RES		1

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

	banksel	periodc
	decfsz	periodc, f
	goto	channel_0

	;movlw	.255
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
	movlw	b'00000110'
	banksel	sPORTB
	movwf	sPORTB

	banksel PWM2_value
	movf	PWM2_value, w
	;movlw	.100
	banksel	PWM2_duty
	movwf	PWM2_duty

	;goto	_duty_done

	;banksel	PORTB
	;bsf		PWM2
channel_0
	banksel	periodc
	movf	periodc, w
	banksel	PWM1_duty
	subwf	PWM1_duty, w
	banksel	STATUS
	btfsc	STATUS, Z
	bcf		sPORTB, 1

channel_1
	banksel	periodc
	movf	periodc, w
	banksel	PWM2_duty
	subwf	PWM2_duty, w
	banksel	STATUS
	btfsc	STATUS, Z
	bcf		sPORTB, 2

;_check_duty
	;movlw	.0	
	;banksel	PWM1_duty
	;xorwf	PWM1_duty, w
	;btfsc	STATUS, Z
	;goto	_duty1_off	

	;banksel	PWM1_duty
	;decfsz	PWM1_duty, f
	;decf	PWM1_duty, f
	;goto	_duty2

;_duty1_off
	;movlw	.0
	;banksel	PORTB
	;bcf		PWM1
	;banksel	sPORTB
	;bcf		sPORTB, 1

;_duty2
	;movlw	.0	
	;banksel	PWM2_duty
	;xorwf	PWM2_duty, w
	;btfsc	STATUS, Z
	;goto	_duty2_off

	;banksel	PWM2_duty
	;decfsz	PWM2_duty, f
	;decf	PWM2_duty, f
	;goto	_duty_done

;_duty2_off
	;banksel	PORTB
	;bcf		PWM2
	;banksel	sPORTB
	;bcf		sPORTB, 2
	
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
    ;banksel count           ; example
    ;clrf    count           ; example
	call	init

loop

; A/D Conversion Channel 0 ---------------------------

	movlw	b'10000001'
	banksel	ADCON0
	movwf	ADCON0

	; Waiting for the aquisition time
	movlw	.20
	pagesel	uDelay
	call	uDelay

	banksel	ADCON0
	bsf		ADCON0, GO_DONE

	btfsc	ADCON0, GO_DONE
	goto	$-1


	;movlw	b'01000000'
	;banksel	ADCON0
	;movwf	ADCON0

	;movlw .1
	;movlw	0xF0
	banksel	ADRESH
	;subwf	ADRESH, w
	;swapf	ADRESH, w
	movf	ADRESH, w

	pagesel	scale
	call	scale

	;Turning off A/D
	banksel	ADCON0
	bcf		ADCON0, ADON		

	;clrf	ADRESH
	;rlf		ADRESH, f
	;movwf	temp
	;rlf		ADRESH, w
	;andwf	ADRESH, w
	;banksel	temp
	;movwf	temp

	;movlw	0xF0
	;andwf	temp, w
	
	;movlw	.27
	;subwf	temp

	;movf	ADRESH, w
	;subwf	ADRESH, w

	;banksel PWM1_value
	;movf	PWM1_value, w
	;banksel 
	;movlw	.10
	banksel	PWM1_value
	movwf	PWM1_value

	;movlw	0x72
	;pagesel	usart_hex2ascii
	;call	usart_hex2ascii

;-----------------------------------------------------

	movlw	.20
	pagesel	uDelay
	call	uDelay

; A/D Conversion Channel 1 ---------------------------

	movlw	b'10001001'
	banksel	ADCON0
	movwf	ADCON0

	; Waiting for the aquisition time
	movlw	.20
	pagesel	uDelay
	call	uDelay

	banksel	ADCON0
	bsf		ADCON0, GO_DONE

	btfsc	ADCON0, GO_DONE
	goto	$-1

	;movlw	b'01001000'
	;banksel	ADCON0
	;movwf	ADCON0

	;movlw .1
	;movlw	0xF0
	banksel	ADRESH
	;subwf	ADRESH, w
	;swapf	ADRESH, w
	movf	ADRESH, w
	;clrf	ADRESH
	;movwf	temp

	pagesel	scale
	call	scale

	;Turning off A/D
	banksel	ADCON0
	bcf		ADCON0, ADON

	;movf	temp, w

	;movlw	.255
	banksel	PWM2_value
	movwf	PWM2_value

	movlw	0x2D
	;banksel	usart_hexprint
	;call	usart_hexprint
	banksel	usart_hex2ascii
	call	usart_hex2ascii
	;banksel usart_tx_byte
    ;call    usart_tx_byte

;----------------------------------------------------

	movlw	.20
	pagesel	uDelay
	call	uDelay

	;movlw	.2
	;pagesel	usart_rx_byte
	;call	usart_rx_byte

	;pagesel	hex_2_ascii
	;call	hex_2_ascii
	;pagesel	usart_tx_byte
	;call	usart_tx_byte

	;movlw	0x95
	;movf	PWM1_value, w


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
	; Initializing USART
	pagesel	usart_init
	call	usart_init

	banksel	sPORTB
	clrf	sPORTB

	; Switching to bank 0
	bcf	STATUS, RP0
	bcf	STATUS, RP1

	clrf	PORTB
	;movlw	0
	;movwf	PWM1

	; Switching to bank 1
	bsf	STATUS, RP0
	;bcf	STATUS, RP1

	;movlw	b'11111001'
	;movwf	TRISB
	banksel	TRISB
	bcf	PWM1_TRIS
	bcf	PWM2_TRIS

	; Switching to bank 0
	bcf	STATUS, RP0

;----------------------------------------------------
	;banksel	TRISA
	;bsf		TRISA, RA0
	;bsf		TRISA, RA1
	;bsf		TRISA, RA3

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
	
	; Initializing variables
	banksel	periodc
	clrf	periodc

	banksel	PWM1_value
	clrf	PWM1_value

	banksel	PWM2_value
	clrf	PWM2_value
	;movlw	.25
	;movwf	periodc

	;movlw	.15
	;banksel	PWM1_duty
	;movwf	PWM1_duty

	;banksel	PORTB
	;bsf		PWM1

	;movlw	.0
	;banksel	PWM2_duty
	;movwf	PWM2_duty

	; 256 - 228 = 28
	movlw	.228	
	banksel	TMR0
	;clrf	TMR0
	movwf	TMR0

	return

;----------------------------------------------------

usart_hex2ascii
        banksel temp
        movwf   temp

        swapf   temp, w
        andlw   0x0F

        pagesel usart_hexprint
        call    usart_hexprint

        banksel temp
        movf    temp, w
        andlw   0x0F

        pagesel usart_hexprint
        call    usart_hexprint

        return

usart_hexprint
        banksel temp2
        movwf   temp2
   
        btfss   temp2, 3
        goto    _isnum

        btfsc   temp2, 3
        btfsc   temp2, 2
        goto    _ischar
        btfsc   temp2, 1
        goto    _ischar
        goto    _isnum


_isnum
        movlw   0x30
        banksel temp2
        addwf   temp2, f
        goto    _send

_ischar
        movlw   0x37
        banksel temp2
        addwf   temp2, f
        ;goto    _send

_send
        banksel temp2
        movf    temp2, w

        banksel usart_tx_byte
        call    usart_tx_byte

        return
;----------------------------------------------------
    END                       ; directive 'end of program'

