;**********************************************************************
;   This file is a basic code template for object module code         *
;   generation on the PIC16F628A. This file contains the              *
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
;    Filename:        xxx.asm                                         *
;    Date:                                                            *
;    File Version:                                                    *
;                                                                     *
;    Author:                                                          *
;    Company:                                                         *
;                                                                     *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Files required: P16F628A.INC                                     *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Notes:                                                           *
;                                                                     *
;**********************************************************************

    list      p=16F628A           ; list directive to define processor
    #include <p16F628A.inc>       ; processor specific variable definitions

    errorlevel  -302              ; suppress message 302 from list file

    ;__CONFIG   _CP_OFF & _DATA_CP_OFF & _LVP_OFF & _BOREN_OFF & _MCLRE_ON & _WDT_OFF & _PWRTE_ON & _INTOSC_OSC_NOCLKOUT 
	__CONFIG   _XT_OSC & _LVP_OFF & _WDT_OFF & _PWRTE_ON & _BODEN_ON

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR        UDATA_SHR     
w_temp         RES     1        ; variable used for context saving 
status_temp    RES     1        ; variable used for context saving

				UDATA
count1         RES 1       ;variable used in delay routines.
counta         RES 1       ;variable used in delay routines.
countb         RES 1       ;variable used in delay routines.

ucount		   	RES	1
bit_count		RES	1

rh_integer		RES	1
rh_decimal		RES	1
temp_integer	RES	1
temp_decimal	RES	1
data_checksum	RES	1
temp		   	RES 1
ones_count		RES	1
tens_count		RES	1
hundreds_count	RES	1
data_buffer		RES 1

#define	lcd_port_tris	TRISB
#define	lcd_port		PORTB
#define	lcd_en			PORTB, 4
#define	lcd_rs			PORTB, 5
#define lcd_rw			PORTB, 6
#define	lcd_busy_flag		RB3

#define	sensor_port		PORTA
#define sensor_pin		RA0
#define	sensor_tris		TRISA

OW_HI:MACRO
	bsf		STATUS, RP0				; Switching to Bank 1
	bsf		sensor_tris, sensor_pin ; Setting pin as input high impedence
	bcf		STATUS, RP0				; Switching to Bank 0
	ENDM

OW_LO:MACRO
	bcf		STATUS, RP0				; Switching to Bank 0
	bcf	sensor_port, sensor_pin 	; Setting sensor pin as low
	bsf		STATUS, RP0				; Switching to Bank 1
	bcf		sensor_tris, sensor_pin ; Setting pin as input high impedence
	bcf		STATUS, RP0				; Switching to Bank 0
	ENDM
;**********************************************************************
RESET_VECTOR    CODE   0x0000     ; processor reset vector
        goto    START             ; go to beginning of program
    
INT_VECTOR    CODE    0x0004      ; interrupt vector location

INTERRUPT

        movwf   w_temp            ; save off current W register contents
        movf    STATUS,w          ; move status register into W register
        movwf   status_temp       ; save off contents of STATUS register


; isr code can go here or be located as a call subroutine elsewhere
		
		movlw	b'000000001'	;Clear display
		call	lcd_cmd

		call	 text3

		movlw	0<<T0IF
		movwf	INTCON
        movf    status_temp,w     ; retrieve copy of STATUS register
        movwf   STATUS            ; restore pre-isr STATUS register contents
        swapf   w_temp,f
        swapf   w_temp,w          ; restore pre-isr W register contents
	
        retfie                    ; return from interrupt

MAIN_PROG     CODE

START
		movlw	0x07
		movwf	CMCON				; Turning off comparators

		;bcf		led_port, led_pin
		;bcf		sensor_port, sensor_pin
		;bcf		sensor_port, sensor_pin
		clrf	rh_integer
		clrf	rh_decimal
		clrf	temp_integer
		clrf	temp_decimal
		clrf	data_checksum

		bsf		STATUS, RP0			; Switching to Bank 1

		clrf	lcd_port_tris
		;bcf		led_tris, led_pin		; Setting led pin as output
		;bsf		led_tris, led_pin		; Setting led pin as input, high impedence
		bcf		sensor_tris, sensor_pin		; Setting sensor pin as output
		;bsf		sensor_tris, sensor_pin	; Setting sensor pin as input

		movlw	b'00000000'				; Timer0 Enabled, No prescaler
		movwf	OPTION_REG

		bcf		STATUS, RP0			; Switching to Bank 0


mainloop
		;bsf		led_port, led_pin
		;bcf		led_port, led_pin
		;bsf		sensor_port, sensor_pin
		call	lcd_init

		;movlw	'H'
		;call	lcd_char

_readloop
		call	sensor_init

		call	sensor_start
		;bcf		led_port, led_pin
		;btfss	sensor_port, sensor_pin
		;bsf		led_port, led_pin
		;goto	mainloop
		movlw	b'000000001'	;Clear display
		call	lcd_cmd

		;---------------------------------------------
		; Checking data is correct or not
		call	sensor_data_correct
		xorlw	0x1
		btfsc	STATUS, Z
		goto	_sensor_data_error
		nop
		;---------------------------------------------

		call	text1

		movf	temp_integer, w
		call	data_display

		movlw	'.'
		call	lcd_char

		movf	temp_decimal, w
		call	data_display
		

		call	lcd_newline

		;movlw	' '
		;call	lcd_char

		call	 text2

		movf	rh_integer, w
		call	data_display

		movlw	'.'
		call	lcd_char

		movf	rh_decimal, w
		call	data_display

		;---------------------------
		; Writing to DataRam Directly
		;bcf		lcd_rs
		;bcf		lcd_rw

		;movlw	b'10001101'
		;call	lcd_cmd

		;bsf		lcd_rs

		;movlw	'1'
		;call	lcd_char
		
		;---------------------------


		call	sensor_init
		call	sensor_init
		goto	_readloop
		;call	sensor_init
_sensor_data_error
		call	 text3

		goto	_readloop
        ;goto     $                ; loop forever

sensor_init
		call 	Delay255
		call 	Delay255
		call 	Delay255
		call 	Delay255
		
		return


sensor_response
_lo_s1_
		btfsc	sensor_port, sensor_pin
		goto	_lo_s1_
		
_hi_s1_
		btfss	sensor_port, sensor_pin
		goto	_hi_s1_

_lo_s2_
		btfsc	sensor_port, sensor_pin
		goto	_lo_s2_
		
		
		return

sensor_start
		clrf	rh_integer
		clrf	rh_decimal
		clrf	temp_integer
		clrf	temp_decimal

		;bsf		lcd_rw

		;OW_LO
		bcf		sensor_port, sensor_pin
		;call 	Delay255
		call 	Delay15
		call 	Delay5

		bsf		sensor_port, sensor_pin
		call 	Delayu30
		
		bsf		STATUS, RP0				; Switching to Bank 1
		bsf		sensor_tris, sensor_pin
		bcf		STATUS, RP0				; Switching to Bank 0

		
		call	Delayu80
		call	Delayu80

		;movlw	b'00000000'				; Timer0 Enabled, No prescaler
		;movwf	OPTION_REG

		movlw	b'10100000'				; Timer0 Overflow Interrupt Enabled
		movwf	INTCON
		
		;clrf	TMR0

		call	read_byte
		movwf	rh_integer

		;clrf	TMR0

	
		call	read_byte
		movwf	rh_decimal

		;clrf	TMR0

	
		call	read_byte
		movwf	temp_integer

		;clrf	TMR0

	
		call	read_byte
		movwf	temp_decimal

		;clrf	TMR0


		call	read_byte
		movwf	data_checksum

		;clrf	TMR0

_check_end_
		btfss	sensor_port, sensor_pin
		goto	_check_end_

		; Changing sensor pin as output
		bsf		STATUS, RP0				; Switching to Bank 1
		bcf		sensor_tris, sensor_pin
		bcf		STATUS, RP0				; Switching to Bank 0
			

		movlw	b'00000000'				; Timer0 Overflow Interrupt Disabled
		movwf	INTCON

		;movlw	b'00001000'				; Timer0 Disabled
		;movwf	OPTION_REG


		return


;-----------------------------------------------
read_byte
		clrf	temp

		bcf		lcd_rw

		movlw	.8
		movwf	bit_count

		;movlw	0x1
		;movwf	temp

_read_loop_
		
		clrf	TMR0
_lo_
		btfss	sensor_port, sensor_pin
		goto	_lo_
		
		;clrf	TMR0
_hi_
		btfsc	sensor_port, sensor_pin
		goto	_hi_

		movlw	.40
		subwf	TMR0, w
		;clrf	TMR0
		btfsc	STATUS, C
		btfsc	STATUS, Z
		goto	_z_
		goto	_o_
_z_
		movlw	0x0
		;bsf		temp, 1
		goto	_done_
_o_
		movlw	0x1
_done_
		addlw	.255
		;movlw	0x1
		rlf		temp, f

		;call 	Delay1

		decfsz	bit_count, f
		goto	_read_loop_

		movf	temp, w
		;movlw	.255
		;clrf	temp
		return
;-----------------------------------------------
;-----------------------------------------------
sensor_data_correct
		clrf	temp
		movf	rh_integer, w
		;movwf	temp
		addwf	rh_decimal, w
		addwf	temp_integer, w
		addwf	temp_decimal, w
		movwf	temp	

		movf	data_checksum, w
		xorwf	temp
		movlw	0x1
		btfsc	STATUS, Z
		movlw	0x0
		nop
		;call	_decimal
		;call	lcd_char

		return
;-----------------------------------------------

lcd_init
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
		pagesel	lcd_busy
		call	lcd_busy
		pagesel $

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
		pagesel	lcd_busy
		call	lcd_busy
		pagesel $
		;call	lcd_busy

		return



lcd_pulse
		bsf	lcd_en
		nop
		bcf	lcd_en
		return

data_display
		;pagesel	data_buffer
		;movf	rh_integer, w
		;movf	temp_integer, w
		;movlw	.55
		movwf	data_buffer

		clrf	tens_count
		clrf	ones_count
		clrf	hundreds_count

_hundreds
		incf	hundreds_count
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

		incf	tens_count
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
		incf	ones_count
		;decfsz	data_buffer
		;goto	_ones
		movlw	.1
		subwf	data_buffer, f
		;btfss	STATUS, Z
		btfss	STATUS, C
		btfsc	STATUS, Z
		goto	_ones

		;movlw	.2
		;subwf	tens_count, f
		decf	hundreds_count
		decf	tens_count
		decf	ones_count

		;incf	tens_count, f
		;movf	tens_count, w
		;andlw	0x09
		;movwf	
		;movlw	.1
		;movwf	tens_count
		;subwf	hundreds_count, f
		;movlw	.5
		;movwf	tens_count
		;-------------------------------
		;movf	hundreds_count, w
		;andlw	0x0F
		;call	_decimal
		;call	lcd_char
		;-------------------------------

		movf	tens_count, w
		andlw	0x0F
		;pagesel	_decimal
		;movf	tens_count, w
		call	_decimal
		;pagesel	$
		;pagesel	lcd_char
		call	lcd_char
		;pagesel	$

		movf	ones_count, w
		andlw	0x0F
		;pagesel	_decimal
		;movf	tens_count, w
		call	_decimal
		;pagesel	$
		;pagesel	lcd_char
		call	lcd_char
		;pagesel	$

		;clrf	temp

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

text1
		movlw	'T'
		call	lcd_char
		movlw	'e'
		call	lcd_char
		movlw	'm'
		call	lcd_char
		movlw	'p'
		call	lcd_char
		movlw	'.'
		call	lcd_char
		movlw	':'
		call	lcd_char
		
		return

text3
		movlw	'D'
		call	lcd_char
		movlw	'a'
		call	lcd_char
		movlw	't'
		call	lcd_char
		movlw	'a'
		call	lcd_char
		movlw	' '
		call	lcd_char
		movlw	'E'
		call	lcd_char
		movlw	'r'
		call	lcd_char
		movlw	'r'
		call	lcd_char
		movlw	'o'
		call	lcd_char
		movlw	'r'
		call	lcd_char

		return

text2
		movlw	'R'
		call	lcd_char
		movlw	'.'
		call	lcd_char
		movlw	'H'
		call	lcd_char
		movlw	'u'
		call	lcd_char
		movlw	'm'
		call	lcd_char
		movlw	'i'
		call	lcd_char
		movlw	'd'
		call	lcd_char
		movlw	'i'
		call	lcd_char
		movlw	't'
		call	lcd_char
		movlw	'y'
		call	lcd_char
		movlw	':'
		call	lcd_char

		return

;______________________________________________________________________________________________
;Delays originated here: http://www.winpicprog.co.uk/pic_tutorial3.htm
;All delays here assume a 4Mhz clock.
Delay255
        movlw   .255            ;delay 255ms.
        goto    d0
Delay30
        movlw   .30             ;delay 30mS.
        goto    d0
Delay15	
		movlw	.15
		goto	d0
Delay5
        movlw   .5              ;delay 5ms.
        goto    d0
Delay3
        movlw   .3              ;delay 3ms.
        goto    d0
Delay1
        movlw   .1              ;delay 1mS.
                
d0      movwf   count1
d1      movlw   0xC7
        movwf   counta
        movlw   0x01
        movwf   countb
Delay_0
        decfsz  counta
        goto    $+2
        decfsz  countb
        goto    Delay_0
        decfsz  count1
        goto    d1
        retlw   .0              ;return from the delay routine.

Delayu80
		movlw	.27
		goto	uDelay
Delayu30
		movlw	.10
		goto	uDelay

uDelay
		movwf	ucount
_uloop
		;nop
		decfsz	ucount, f
		goto	_uloop
		retlw	.0

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


; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

