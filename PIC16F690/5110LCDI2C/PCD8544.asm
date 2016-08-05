UDATA
temp		RES		1

CODE
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_init
	movlw	.100
	pagesel	mDelay
	call	mDelay

	pagesel	pcd8544_reset
	call	pcd8544_reset

	movlw	0x21				;Extended instructions enabled
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	;movlw	0xB9
	movlw	0xBF				;Set contrast 0 - 127
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw	0x04 + 0x02			;Temperature control
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw	0x10 + 0x03			;Set bias system
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd


	movlw	0x20				;Return to basic instruction set, power on, set horizontal addressing
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw	0x08 + 0x04			;Display control set to normal mode
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd
	

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_sendcmd
	banksel	temp
	movwf	temp

	;Sending command
	banksel	PORTC
	bcf		PORTC, RC3

	banksel	temp
	movf	temp, w
	pagesel	pcd8544_sendbyte
	call	pcd8544_sendbyte



	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_senddata
	banksel	temp
	movwf	temp

	;Sending data
	banksel	PORTC
	bsf		PORTC, RC3

	banksel	temp
	movf	temp, w
	pagesel	pcd8544_sendbyte
	call	pcd8544_sendbyte

	;Setting back to Command mode
	banksel	PORTC
	bcf		PORTC, RC3

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_sendbyte
	banksel	temp
	movwf	temp

	;Enabling chip select
	banksel	PORTB
	bcf		PORTB, RB7

	;Setting data to send
	;movlw	0x21
	banksel	temp
	movf	temp, w
	banksel	SSPBUF
	movwf	SSPBUF

	;Sending data
	banksel	SSPSTAT
	btfss	SSPSTAT, BF
	goto	$-1

	;Reading data
	banksel	SSPBUF
	movf	SSPBUF, w

	;Disabling chip select
	banksel	PORTB
	bsf		PORTB, RB7

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_modeblank
	movlw	b'00001000'
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd	

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_putpixel

	movlw 0x80 + 10				;X-Coordinate
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw 0x40 + 2				;Y-Coordinate
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw	0x01
	pagesel	pcd8544_senddata
	call	pcd8544_senddata	

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_resetxy

	movlw 0x80				;X-Coordinate
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw 0x40				;Y-Coordinate
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd	

	return
;------------------------------------------------------

END