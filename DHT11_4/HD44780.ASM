#include <p16F628A.inc>       ; processor specific variable definitions

GLOBAL	lcd_init
GLOBAL	lcd_cmd
GLOBAL	lcd_newline
GLOBAL	lcd_char
GLOBAL	lcd_pulse
GLOBAL	lcd_busy
GLOBAL	lcd_put_at
GLOBAL	lcd_home
GLOBAL	lcd_clear
GLOBAL	lcd_display

EXTERN Delay255
EXTERN Delay30
EXTERN Delay15
EXTERN Delay5
EXTERN Delay3
EXTERN Delay1

#define	lcd_port_tris	TRISB
#define	lcd_port		PORTB
#define	lcd_en			PORTB, 4
#define	lcd_rs			PORTB, 5
#define lcd_rw			PORTB, 6
#define	lcd_busy_flag		RB3

UDATA
temp		   	RES 1
l_char		   	RES 1
l_loc		   	RES 1
l_ones			RES	1
l_tens			RES	1
l_hundreds		RES	1
l_thousands		RES	1
data_buffer		RES	1

CODE

lcd_init
		bsf		STATUS, RP0			; Switching to Bank 1
		banksel	lcd_port_tris
		clrf	lcd_port_tris
		bcf		STATUS, RP0			; Switching to Bank 0

		call	Delay30

		;--------------------
		movlw	b'00000011'
		movwf	lcd_port
		call	lcd_pulse
		call	Delay5

		movlw	b'00000011'
		movwf	lcd_port
		call	lcd_pulse
		call	Delay1

		movlw	b'00000011'
		movwf	lcd_port
		call	lcd_pulse
		call	Delay1
		;call	lcd_busy
		;--------------------

		movlw	b'00000010'		; Switch to 4bit mode
		movwf	lcd_port
		call	lcd_pulse
		;call	lcd_busy
		;--------------------
								;Set display shift
		movlw	b'00101000'
		call	lcd_cmd
								;Set display character mode
		movlw	b'00000110'
		call	lcd_cmd
								;Set display on/off and cursor command
		movlw	b'0001100'
		call	lcd_cmd

		movlw	b'000000001'	;Clear display
		call	lcd_cmd

		return

lcd_cmd
		bcf		lcd_rs
		movwf	temp
		swapf	temp, w
		andlw	0x0f
		movwf	lcd_port
		call 	lcd_pulse

		movf	temp, w
		andlw	0x0f
		movwf	lcd_port
		call 	lcd_pulse

		;call Delay5
		;pagesel	lcd_busy
		call	lcd_busy
		;pagesel $

		return

lcd_newline
		movlw   0xc0                ;put the cursor at the start of line 2
    	call    lcd_cmd

		return

lcd_char
		
		movwf	temp
		swapf	temp, w
		andlw	0x0f
		movwf	lcd_port
		bsf		lcd_rs
		call 	lcd_pulse

		movf	temp, w
		andlw	0x0f
		movwf	lcd_port
		bsf		lcd_rs
		call 	lcd_pulse

		;call Delay5
		;pagesel	lcd_busy
		call	lcd_busy
		;pagesel $
		;call	lcd_busy

		return



lcd_pulse
		bsf	lcd_en
		nop
		bcf	lcd_en
		return

lcd_busy
		;bcf		lcd_port, lcd_busy_flag
		bcf		lcd_rs

		bsf		STATUS, RP0				; Switching to Bank 1
		bsf		lcd_port_tris, lcd_busy_flag ; Setting pin as input high impedence
		bcf		STATUS, RP0				; Switching to Bank 0

		;bcf		lcd_rs
		bsf		lcd_rw
		bsf		lcd_en

		btfsc	lcd_port, lcd_busy_flag
		goto	$-1

		bcf		lcd_en
		bcf		lcd_rw

		bsf		STATUS, RP0				; Switching to Bank 1
		bcf		lcd_port_tris, lcd_busy_flag ; Setting pin as output
		bcf		STATUS, RP0				; Switching to Bank 0

		return

lcd_put_at
		movwf	l_char
		bcf		lcd_rs
		bcf		lcd_rw
		movlw	b'10000100'
		call	lcd_cmd
		bsf		lcd_rs
		;call	Delay1
		call	lcd_busy
		movf	l_char, w
		;call	_decimal
		;call 	lcd_char
		
		;call	Delay30

		return

lcd_home
		movlw	b'00000010'
		call	lcd_cmd

		call	lcd_busy
		return

lcd_clear
		movlw	b'000000001'	;Clear display
		call	lcd_cmd
		return

lcd_display	
		pagesel	data_buffer
		;movf	rh_integer, w
		;movf	temp_integer, w
		;movlw	.55
		movwf	data_buffer

		clrf	l_ones
		clrf	l_tens
		clrf	l_hundreds
		;clrf	l_thousands

_hundreds
		incf	l_hundreds
		movf	data_buffer, w
		movwf	temp
		movlw	.100
		subwf	data_buffer, f
		;btfss	STATUS, Z
		btfss	STATUS, C
		btfsc	STATUS, Z
		goto	_hundreds
	
		movf	temp, w
		movwf	data_buffer

_tens

		incf	l_tens
		movf	data_buffer, w
		movwf	temp
		movlw	.10
		subwf	data_buffer, f
		;btfss	STATUS, Z
		btfss	STATUS, C
		btfsc	STATUS, Z
		goto	_tens

		movf	temp, w
		movwf	data_buffer

_ones
		incf	l_ones

		movlw	.1
		subwf	data_buffer, f
		btfss	STATUS, C
		btfsc	STATUS, Z
		goto	_ones

		decf	l_hundreds
		decf	l_tens
		decf	l_ones

		movf	l_hundreds, w
		andlw	0x0F

		call	_decimal

		call	lcd_char

		movf	l_tens, w
		andlw	0x0F

		call	_decimal

		call	lcd_char

		movf	l_ones, w
		andlw	0x0F

		call	_decimal

		call	lcd_char

		return


_decimal
		addwf	PCL, f
		retlw	b'00110000'				; Decimal 0
		retlw	b'00110001'				; Decimal 1
		retlw	b'00110010'				; Decimal 2
		retlw	b'00110011'				; Decimal 3
		retlw	b'00110100'				; Decimal 4
		retlw	b'00110101'				; Decimal 5
		retlw	b'00110110'				; Decimal 6
		retlw	b'00110111'				; Decimal 7
		retlw	b'00111000'				; Decimal 8
		retlw	b'00111001'				; Decimal 9
END