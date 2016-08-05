 list      p=16F690           ; list directive to define processor
 #include <p16F690.inc>        ; processor specific variable definitions

GLOBAL	swi2c_init
GLOBAL	swi2c_start
GLOBAL	swi2c_stop
GLOBAL	swi2c_sendaddrwrite
GLOBAL	swi2c_sendaddrread
GLOBAL	swi2c_senddata


;**********************************************************************
; PORT allocations
;**********************************************************************
#define I2CTRIS	TRISC
#define I2CPORT	PORTC
#define SDA		RC0
#define SCL		RC1
;**********************************************************************
; Macro definitions
;**********************************************************************
SDAHI	MACRO
		;Setting SDA as input
		banksel	I2CTRIS
		bsf		I2CTRIS, SDA

		;nop
		;nop

		;Setting SDA pin low
		banksel	I2CPORT
		bcf		I2CPORT, SDA
		ENDM

SDALO	MACRO
		;Setting SDA as output
		banksel	I2CTRIS
		bcf		I2CTRIS, SDA

		;Setting SDA pin low
		banksel	I2CPORT
		bcf		I2CPORT, SDA
		ENDM

SCLHI	MACRO
		;Setting SDA as input
		banksel	I2CTRIS
		bsf		I2CTRIS, SCL

		;nop
		;nop

		;Setting SDA pin low
		banksel	I2CPORT
		bcf		I2CPORT, SCL
		ENDM

SCLLO	MACRO
		;Setting SDA as output
		banksel	I2CTRIS
		bcf		I2CTRIS, SCL

		;Setting SDA pin low
		banksel	I2CPORT
		bcf		I2CPORT, SCL
		ENDM
;**********************************************************************
UDATA
i2ctemp		RES		1
i2cbcount	RES		1
i2timer		RES		1

CODE
;**********************************************************************
; Initialization of I2C
;**********************************************************************
swi2c_init
	bcf	I2CPORT, SDA
	bcf	I2CPORT, SCL

	SDAHI
	SCLHI

	return
;**********************************************************************
; I2C Start
;**********************************************************************
swi2c_start
	SCLHI
	SDAHI
	;pagesel	swi2c_delay
	;call	swi2c_delay
	SDALO
	pagesel	swi2c_delay_4cycles
	call	swi2c_delay_4cycles
	SCLLO

	return
;**********************************************************************
; I2C Stop
;**********************************************************************
swi2c_stop
	SCLHI
	SDALO

	pagesel	swi2c_delay
	call	swi2c_delay

	SDAHI

	return
;**********************************************************************
; Sending address as write
;**********************************************************************
swi2c_sendaddrwrite
	banksel	i2ctemp
	movwf	i2ctemp

	bcf	STATUS, C
	banksel	i2ctemp
	movf	i2ctemp, w

	pagesel	swi2c_senddata
	call	swi2c_senddata
	
	return
;**********************************************************************
; Sending address as read
;**********************************************************************
swi2c_sendaddrread
	banksel	i2ctemp
	movwf	i2ctemp

	bsf	STATUS, C
	banksel	i2ctemp
	movf	i2ctemp, w

	pagesel	swi2c_senddata
	call	swi2c_senddata
	
	return
;**********************************************************************
; Macro definitions
;**********************************************************************
;swi2c_senddata
	;banksel	i2ctemp
	;movwf	i2ctemp

	;bcf	STATUS, C

	;No: of bits
	;movlw	.8
	;banksel	i2cbcount
	;movwf	i2cbcount

;_i2cdloop_
	;banksel	i2ctemp			;1
	;rlf		i2ctemp, f		;1
	;pagesel	swi2c_sendbit	;1
	;call	swi2c_sendbit	;2
	
	;banksel	i2cbcount		;1
	;decfsz	i2cbcount, f	;1/2
	;goto	_i2cdloop_		;2

	;Waiting for ACK
	;pagesel	swi2c_ackwait
	;call	swi2c_ackwait

	;return

swi2c_senddata
	banksel	i2ctemp
	movwf	i2ctemp

	bcf	STATUS, C

	;No: of bits
	;movlw	.8
	;banksel	i2cbcount
	;movwf	i2cbcount

;_i2cdloop_
	banksel	i2ctemp			;1
	rlf		i2ctemp, f		;1

	pagesel	swi2c_sendbit	;1
	call	swi2c_sendbit	;2

	banksel	i2ctemp			;1
	rlf		i2ctemp, f		;1

	pagesel	swi2c_sendbit	;1
	call	swi2c_sendbit	;2

	banksel	i2ctemp			;1
	rlf		i2ctemp, f		;1


	pagesel	swi2c_sendbit	;1
	call	swi2c_sendbit	;2

	banksel	i2ctemp			;1
	rlf		i2ctemp, f		;1


	pagesel	swi2c_sendbit	;1
	call	swi2c_sendbit	;2

	banksel	i2ctemp			;1
	rlf		i2ctemp, f		;1


	pagesel	swi2c_sendbit	;1
	call	swi2c_sendbit	;2

	banksel	i2ctemp			;1
	rlf		i2ctemp, f		;1


	pagesel	swi2c_sendbit	;1
	call	swi2c_sendbit	;2

	banksel	i2ctemp			;1
	rlf		i2ctemp, f		;1


	pagesel	swi2c_sendbit	;1
	call	swi2c_sendbit	;2

	banksel	i2ctemp			;1
	rlf		i2ctemp, f		;1


	pagesel	swi2c_sendbit	;1
	call	swi2c_sendbit	;2
	
	;banksel	i2cbcount		;1
	;decfsz	i2cbcount, f	;1/2
	;goto	_i2cdloop_		;2

	;Waiting for ACK
	;pagesel	swi2c_ackwait
	;call	swi2c_ackwait

	return
;**********************************************************************
; Sending a bit
;**********************************************************************
swi2c_sendbit
	SCLLO					;4
	btfss	STATUS, C		;1/2
	goto	_i2czero_		;2
	goto	_i2cone_		;2

_i2czero_
	SDALO					;4
	goto	_i2cdone_		;2

_i2cone_
	SDAHI					;4
	goto	$+1				;2

_i2cdone_
	;nop
	;nop
	SCLHI					;4
	;nop
	;nop
	;nop
	;nop
	;nop
	;pagesel	swi2c_delay
	;call	swi2c_delay
	;pagesel	swi2c_delay_4cycles	;1
	;call	swi2c_delay_4cycles	;2+2
	;nop						;1
	;nop						;1
	
	return						;2
;**********************************************************************
; Reading a bit
;**********************************************************************
swi2c_readbit
	SCLLO						;4
	SDAHI						;4

	nop
	nop
	nop
	nop
	;nop
	;pagesel	swi2c_delay_4cycles	;1
	;call	swi2c_delay_4cycles	;2+2

	SCLHI						;4
	nop
	nop
	nop
	nop
	;nop
	;pagesel	swi2c_delay_4cycles	;1
	;call	swi2c_delay_4cycles	;2+2

	;pagesel	swi2c_delay
	;call	swi2c_delay

	banksel	I2CPORT				;1
	btfss	I2CPORT, SDA		;1/2
	retlw	0x0					;2
	retlw	0x1					;2
	
	return

;**********************************************************************
; ACK wait
;**********************************************************************
swi2c_ackwait

_i2cackwait_
	pagesel	swi2c_readbit
	call	swi2c_readbit

	banksel	i2ctemp
	movwf	i2ctemp
	btfsc	i2ctemp, 0	
	goto	_i2cackwait_

	
	return
;**********************************************************************
; I2C Delay
;**********************************************************************
swi2c_delay
	;100khz speed
	movlw	.1
	banksel	i2timer	
	movwf	i2timer	

i2c_delayloop
	nop
	nop

	banksel	i2timer
	decfsz	i2timer, f
	goto	i2c_delayloop
	
	return

swi2c_delay_4cycles
	return
swi2c_delay_8cycles
	nop
	nop
	return
END