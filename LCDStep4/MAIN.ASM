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
w_temp         RES 1       ;variable used for context saving 
status_temp    RES 1       ;variable used for context saving
data_buffer		RES 1
data_counter	RES	1
tens_count		RES	1


				UDATA
count1         RES 1       ;variable used in delay routines.
counta         RES 1       ;variable used in delay routines.
countb         RES 1       ;variable used in delay routines.
temp		   RES 1

rh_integral		RES	1
rh_decimal		RES	1

temp_integral	RES	1
temp_decimal	RES	1

data_checksum	RES	1

;data_buffer		RES 1
;data_counter	RES	1

hundreds_count	RES	1
;tens_count		RES	1
ones_count		RES	1
hilo_flag		RES	1


#define	lcd_port_tris	TRISB
#define	lcd_port		PORTB
#define	lcd_en			PORTB, 4
#define	lcd_rs			PORTB, 5

#define	sensor_port		PORTA
#define	sensor_tris		TRISA
#define	sensor_pin		RA0


;**********************************************************************
RESET_VECTOR    CODE   0x0000     ; processor reset vector
        goto    START             ; go to beginning of program
    
INT_VECTOR    CODE    0x0004      ; interrupt vector location

INTERRUPT

        movwf   w_temp            ; save off current W register contents
        movf    STATUS,w          ; move status register into W register
        movwf   status_temp       ; save off contents of STATUS register


; isr code can go here or be located as a call subroutine elsewhere


        movf    status_temp,w     ; retrieve copy of STATUS register
        movwf   STATUS            ; restore pre-isr STATUS register contents
        swapf   w_temp,f
        swapf   w_temp,w          ; restore pre-isr W register contents
        retfie                    ; return from interrupt

MAIN_PROG     CODE

START
		movlw	0x07
		movwf	CMCON			; Turning off comparators
		
		clrf	temp
		clrf	PORTB
		clrf	TMR0

		;movlw	0x00
		;movwf	sensor_port
		;bsf		sensor_port, sensor_pin	; Setting sensor pin high
		;bcf		sensor_port, sensor_pin	; Setting sensor pin high

		bsf		STATUS, RP0		; Switching to Bank 1

		clrf	lcd_port_tris
		;movlw	0x00
		movlw	b'00000000'
		movwf	OPTION_REG

		;bcf		sensor_tris, sensor_pin

		bcf		STATUS, RP0		; Switching to Bank 0

mainloop
		call	lcd_init

		call	Delay255
		call	Delay255

		call	sensor_init
		;call 	sensor_start

sensor_loop
		;call 	sensor_start
		call 	sensor_read

		;movlw	.1
		;movwf	sensor_port

		;movlw 	'H'
		;call	lcd_char
		movlw	b'000000001'	;Clear display
		call	lcd_cmd

		pagesel text1
		call	text1
		;pagesel	$
		;movlw	b'00110000'
		;movf	rh_integral, w
		;movlw	.9
		;call	_decimal
		;call	lcd_char
		pagesel data_display
		call	data_display
		;pagesel	$

		pagesel lcd_newline
		call	lcd_newline
		;pagesel	$

		pagesel text2
		call	text2

		call	Delay255
		call	Delay255
		call	Delay255
		call	Delay255

		goto 	sensor_loop

        ;goto     $                ; loop forever

sensor_init
		call	Delay255
		call	Delay255

		return

sensor_start
		;bsf		sensor_port, sensor_pin
		;nop
		;bcf		sensor_port, sensor_pin
		;nop
		;nop
		;call	Delay1
		;call	Delay1
		;bsf		sensor_port, sensor_pin
		;nop
		;call	Delay1
		;bcf		sensor_port, sensor_pin
;_rep
		bsf		STATUS, RP0				; Switching to Bank 1
		bcf		sensor_tris, sensor_pin	;Setting pin as output
		bcf		STATUS, RP0				; Switching to Bank 0

		bcf		sensor_port, sensor_pin
		call	Delay5
		call	Delay5
		call	Delay5
		call	Delay5
		nop
		bsf		sensor_port, sensor_pin
		;call	Delay1
		;nop
		;nop
		;nop
		;nop
		;nop
		;bcf		sensor_port, sensor_pin
		;nop
		return

sensor_read


		clrf	data_counter
		clrf	data_buffer
		clrf	temp
		
		pagesel	sensor_start
		call	sensor_start

		bsf		STATUS, RP0				; Switching to Bank 1
		bsf		sensor_tris, sensor_pin	;Setting pin as input
		bcf		STATUS, RP0				; Switching to Bank 0		
		
;_ack
		;btfss	sensor_port, sensor_pin
		;goto	_ack
		;nop
;_ack1
		;btfsc	sensor_port, sensor_pin
		;btfss	sensor_port, sensor_pin
		;goto	_ack1

;_ack2
		;btfss	sensor_port, sensor_pin
		;btfss	sensor_port, sensor_pin
		;goto	_ack2
;_lo_
		;nop
		;nop
		;btfss	sensor_port, sensor_pin
		;btfsc	sensor_port, sensor_pin
		;goto	_lo_

_start
		;movf	sensor_port, w
		;movlw	.1
		;pagesel	sensor_data_bit
		;call	sensor_data_bit
		
		clrf	TMR0
_hi_
		;nop
		;nop
		;nop
		;nop
		;nop
		;nop
		;nop
		;nop
		btfss	sensor_port, sensor_pin
		;btfsc	sensor_port, sensor_pin
		goto	_hi_

_lo_
		;nop
		;nop
		;btfss	sensor_port, sensor_pin
		btfsc	sensor_port, sensor_pin
		goto	_lo_

		movlw	.40
		subwf	TMR0, w
		btfsc	STATUS, C
		btfsc	STATUS, Z
		goto	_zero
		goto	_one

_zero
		;retlw	0x00
		movlw	0x00
		goto _dt
_one
		;retlw	0x01
		movlw	0x01
_dt
		andlw	b'00000001'
		;movwf	rh_integral
		rlf		data_buffer, f
		;iorwf	data_buffer, f
		addwf	data_buffer, f
		incf	data_counter, f
		movlw	.7
		;movlw	.6
		xorwf	data_counter, w
		btfss	STATUS, Z
		goto	_start

		movf	data_buffer, w
		movwf	rh_integral

		bsf		STATUS, RP0				; Switching to Bank 1
		bcf		sensor_tris, sensor_pin	;Setting pin as output
		bcf		STATUS, RP0				; Switching to Bank 0
		;clrf	data_buffer
		return

sensor_data_bit
		pagesel	sensor_port
		;btfsc	sensor_port, sensor_pin
		;btfss	sensor_port, sensor_pin
		;goto	sensor_data_bit

		clrf	TMR0

_hi
		;nop
		;nop
		;nop
		;nop
		;nop
		;nop
		;nop
		;nop
		;btfss	sensor_port, sensor_pin
		btfsc	sensor_port, sensor_pin
		goto	_hi

		movlw	.40
		subwf	TMR0, w
		btfsc	STATUS, C
		btfsc	STATUS, Z
		goto	_zero
		goto	_one

;_zero
		retlw	0x00
;_one
		retlw	0x01
		;nop
		;nop
		;nop
		;nop
		;pagesel	Delay1
		;call	Delay1
		;btfss	sensor_port, sensor_pin
		;retlw	0x00
		;retlw	0x01
		;clrf	TMR0
;_lo
		;incf	hilo_flag
		;btfsc	sensor_port, sensor_pin
		;goto	_lo

		;decf	hilo_flag
		;decf	hilo_flag

		;movf	hilo_flag, w

		return

data_display
		;pagesel	data_buffer
		movf	rh_integral, w
		;movlw	.50
		movwf	data_buffer
		clrf	tens_count
;_hundreds
		;incf	hundreds_count
		;movlw	.100
		;subwf	data_buffer, f
		;btfss	STATUS, Z
		;btfss	STATUS, C
		;btfsc	STATUS, Z
		;goto	_hundreds
	
		;movf	rh_integral, w
		;movwf	data_buffer

_tens

		incf	tens_count
		movlw	.10
		subwf	data_buffer, 1
		;btfss	STATUS, Z
		btfss	STATUS, C
		btfsc	STATUS, Z
		goto	_tens

;_ones
		;incf	ones_count
		;movlw	.10
		;subwf	data_buffer, f
		;btfss	STATUS, Z
		;btfss	STATUS, C
		;btfsc	STATUS, Z
		;goto	_ones

		;movlw	.2
		;subwf	tens_count, f
		decf	tens_count

		;incf	tens_count, f
		;movf	tens_count, w
		;andlw	0x09
		;movwf	
		;movlw	.1
		;movwf	tens_count
		;subwf	hundreds_count, f
		;movlw	.5
		;movwf	tens_count
		movf	tens_count, w
		andlw	0x0F
		pagesel	_decimal
		;movf	tens_count, w
		call	_decimal
		pagesel	$
		pagesel	lcd_char
		call	lcd_char
		pagesel	$

		return

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

		call Delay5

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

		call Delay5

		return


lcd_pulse
		bsf	lcd_en
		nop
		bcf	lcd_en
		return

;text1
		;addwf	PCL, f
		;retlw	'T'
		;retlw	'e'
		;retlw	'm'
		;retlw	'p'
		;retlw	'.'
		;retlw	0x00

;text2
		;addwf	PCL, f
		;retlw	'R'
		;retlw	'H'
		;retlw	'.'
		;retlw	0x00
		
text1
		movlw	'T'
		call	lcd_char
		movlw	'e'
		call	lcd_char
		movlw	'm'
		call	lcd_char
		movlw	'p'
		call	lcd_char
		movlw	'e'
		call	lcd_char
		movlw	'r'
		call	lcd_char
		movlw	'a'
		call	lcd_char
		movlw	't'
		call	lcd_char
		movlw	'u'
		call	lcd_char
		movlw	'r'
		call	lcd_char
		movlw	'e'
		call	lcd_char
		movlw	':'
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
		

;______________________________________________________________________________________________
;Delays originated here: http://www.winpicprog.co.uk/pic_tutorial3.htm
;All delays here assume a 4Mhz clock.
Delay255
        movlw   .255            ;delay 255ms.
        goto    d0
Delay30
        movlw   .30             ;delay 30mS.
        goto    d0
Delay5
        movlw   .5              ;delay 5ms.
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

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

