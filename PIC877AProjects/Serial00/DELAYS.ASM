; Delay Routines for PIC877A with a 20Mhz clock

GLOBAL uDelay
GLOBAL mDelay
GLOBAL sDelay


UDATA
ucount			RES	1
mcount			RES	1
scount			RES	1

;******************** Subroutines **********************
CODE

uDelay
		movwf	ucount
u0
		nop
		nop
		decfsz	ucount, f
		goto	u0
		return

mDelay
		movwf	mcount
		movlw	0xFF
m0
		call	uDelay
		decfsz	mcount, f
		goto	m0	
		return
sDelay
		;movlw	0x01
		movwf	scount
		movlw	0xFF
s0
		call	mDelay
		call	mDelay
		call	mDelay
		call	mDelay
		decfsz	scount, f
		goto	s0	
		return

END