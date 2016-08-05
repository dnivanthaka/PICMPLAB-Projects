#include    <p16f877a.inc>

GLOBAL	usart_init
GLOBAL	usart_tx_byte
GLOBAL	usart_rx_byte

UDATA
utemp	RES		1


CODE

;----------------------------------------------------
; Initialization of the USART peripheral
;----------------------------------------------------
usart_init
	;banksel	TRISC
	;bsf		TRISC, RC7
	;bcf		TRISC, RC6
	

	banksel	TXREG
	clrf	TXREG

	banksel	RCREG
	clrf	RCREG
	
	; Setting BAUD Rate, 15 -> 19200
	movlw	0x0F
	banksel	SPBRG
	movwf	SPBRG

	; Transmission Asynchronous mode with 8N1 Format
	;movlw	0x24
	movlw	0x20
	;movlw	b'00100100'
	banksel	TXSTA
	movwf	TXSTA

	; Enabling USART
	movlw	0x90
	banksel	RCSTA
	movwf	RCSTA

	return
;----------------------------------------------------

;----------------------------------------------------
; Transmitting of data, polls TXIF flag
;----------------------------------------------------
usart_tx_byte
	banksel	utemp
	movwf	utemp

	banksel	PIR1
	btfss	PIR1, TXIF
	goto	$-1

	banksel	utemp
	movf	utemp, w
	
	banksel	TXREG
	movwf	TXREG

	return
;----------------------------------------------------

;----------------------------------------------------
; Recieving of data, polls TXIF flag
;----------------------------------------------------
usart_rx_byte
	;banksel	temp
	;movwf	temp

	banksel	PIR1
	btfss	PIR1, RCIF
	goto	$-1

	banksel	RCREG
	movf	RCREG, w
	;movwf	TXREG

	return
;----------------------------------------------------

END