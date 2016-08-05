; Switch Routines for PIC877A with a 20Mhz clock
#include    <p16f877a.inc>  ; processor specific variable definitions

GLOBAL debRead

EXTERN mDelay

;TMP1	EQU		0x20
;TMP2	EQU		0x21

;DebHiRead MACRO port, pin
	;local count
	;movf	port, w
	;movwf	TMP1

	;movf	pin, w
	;movwf	TMP2

	;call	debRead

	;ENDM

UDATA
count			RES	1


;******************** Subroutines **********************
CODE

debRead
	movlw	0
	movwf	count

loop
	btfss	PORTB, RB1
	retlw	0
	incf	count, f
	movlw	0x0A
	xorwf	count, w
	btfsc	STATUS, Z
	retlw	1
	movlw	0x0A
	pagesel	mDelay
	call	mDelay
	;btfsc	PORTB, RB1
	goto loop
	;nop
	retlw	0

END