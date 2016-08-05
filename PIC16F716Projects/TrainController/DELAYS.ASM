; Delay Routines for PIC877A
; 20Mhz Clock = 200ns per Intruction

GLOBAL uDelay
GLOBAL mDelay
GLOBAL sDelay


UDATA
ucount			RES	1
mcount			RES	1
scount			RES	1

CODE

;-----------------------------------------
uDelay
	banksel	ucount
	movwf	ucount

uloop
	nop
	;nop
	clrwdt
	banksel	ucount
	decfsz	ucount, f
	goto	uloop

	return
;-----------------------------------------
mDelay
	banksel	mcount
	movwf	mcount

mloop
	movlw	.255
	pagesel	uDelay
	call	uDelay
	call	uDelay
	;call	uDelay

	banksel	mcount
	decfsz	mcount, f
	goto	mloop

	return
;-----------------------------------------
sDelay
	banksel	scount
	movwf	scount

sloop
	movlw	.255
	pagesel	mDelay
	call	mDelay
	call	mDelay
	;call	uDelay

	banksel	scount
	decfsz	scount, f
	goto	sloop

	return
;-----------------------------------------
END