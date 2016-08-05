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

EXTERN Delay255
EXTERN Delay30
EXTERN Delay15
EXTERN Delay5
EXTERN Delay3
EXTERN Delay1
EXTERN uDelay

EXTERN	lcd_init
EXTERN	lcd_cmd
EXTERN	lcd_newline
EXTERN	lcd_char
EXTERN	lcd_pulse
EXTERN	lcd_busy
EXTERN	lcd_put_at
EXTERN	lcd_home
EXTERN	lcd_clear
EXTERN	lcd_display

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

#define	sensor_port		PORTA
#define sensor_pin		RA1
#define	sensor_tris		TRISA

OW_HI:MACRO
	bsf		STATUS, RP0				; Switching to Bank 1
	bsf		sensor_tris, sensor_pin ; Setting pin as input high impedence
	bcf		STATUS, RP0				; Switching to Bank 0
	ENDM

OW_LO:MACRO
	bcf		STATUS, RP0				; Switching to Bank 0
	bcf		sensor_port, sensor_pin ; Setting sensor pin as low
	bsf		STATUS, RP0				; Switching to Bank 1
	bcf		sensor_tris, sensor_pin ; Setting pin as output
	bcf		STATUS, RP0				; Switching to Bank 0
	ENDM

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR        UDATA_SHR     
w_temp         RES     1        ; variable used for context saving 
status_temp    RES     1        ; variable used for context saving

UDATA
byte_data			RES	1
temp				RES	1
bcounter			RES	1

ds18b20_temp_lsb	RES	1
ds18b20_temp_msb	RES	1
ds18b20_user_lsb	RES	1
ds18b20_user_msb	RES	1
ds18b20_conf_reg	RES	1
ds18b20_data_crc	RES	1
ds18b20_family_id	RES	1

ds18b20_addr_b0		RES	1
ds18b20_addr_b1		RES	1
ds18b20_addr_b2		RES	1
ds18b20_addr_b3		RES	1
ds18b20_addr_b4		RES	1
ds18b20_addr_b5		RES	1
ds18b20_addr_b6		RES	1
ds18b20_addr_b7		RES	1
ds18b20_temp_val	RES	1
ds18b20_temp_dec	RES	1


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
; Turning off comparators
		movlw	0x07
		movwf	CMCON

		;bsf		STATUS, RP0			; Switching to Bank 1

		
		;bsf		sensor_tris, sensor_pin		; Setting sensor pin as high impedence

		;movlw	b'00000000'				; Timer0 Enabled, No prescaler
		;movwf	OPTION_REG

		;bcf		STATUS, RP0			; Switching to Bank 0

		pagesel	lcd_init
		call	lcd_init
		movlw	b'000000001'	;Clear display
		pagesel lcd_cmd
		call	lcd_cmd



		;DS18B20 Command Sequence
		; Initialization
		; ROM Command
		; DS18B20 Function Command

		;call	ds18b20_init

		clrf	ds18b20_family_id

mainloop
		;call	Delay255
		;call	Delay255
		;call	Delay255
		;call	Delay255

		;movlw	.1
		;call	_decimal
		;pagesel	lcd_char
		;call	lcd_char
		;call	ds18b20_init
		; Send Reset Pulse to Device
		call	ds18b20_init
		; Read ROM Command
		movlw	0x33
		call	ds18b20_write_byte
		call	ds18b20_read_byte
		movwf	ds18b20_family_id

		;---Reading the 64bit address---
		call	ds18b20_read_byte
		movwf	ds18b20_addr_b0
		call	ds18b20_read_byte
		movwf	ds18b20_addr_b1
		call	ds18b20_read_byte
		movwf	ds18b20_addr_b2
		call	ds18b20_read_byte
		movwf	ds18b20_addr_b3
		call	ds18b20_read_byte
		movwf	ds18b20_addr_b4
		call	ds18b20_read_byte
		movwf	ds18b20_addr_b5
		call	ds18b20_read_byte
		movwf	ds18b20_addr_b6
		call	ds18b20_read_byte
		movwf	ds18b20_addr_b7
		;--------------------------------
		;call	ds18b20_init

		movlw	0x28
		xorwf	ds18b20_family_id, w
		btfss	STATUS, Z
		nop							; Show device not found error
		call	device_ok

		;movlw	'.'
		;call 	lcd_char
		
	
		;call	Delay255
		;call	Delay255
		
		; Addressing the device ----------
		;call	ds18b20_init
		;movlw	0x55
		;call	ds18b20_write_byte

		;movf	ds18b20_addr_b0
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b1
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b2
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b3
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b4
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b5
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b6
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b7
		;call	ds18b20_write_byte

		;movlw	0x55
		;call	ds18b20_write_byte
		;---------------------------------
_reading_start
		;pagesel	lcd_home
		;call	lcd_home
		;movlw	b'000000001'	;Clear display
		;pagesel lcd_cmd
		;call	lcd_cmd
		;---------------------------------
		call	ds18b20_init
		movlw	0xCC
		call	ds18b20_write_byte
		nop
		nop
		movlw	0x44
		call	ds18b20_write_byte
		;---------------------------------
		;call	Delay30
		nop
		nop
		btfss	sensor_port, sensor_pin
		goto	$-1
		
		pagesel	Delay255
		call	Delay255
		call	Delay255
		call	Delay255
		;call	Delay255

		; Addressing the device ----------
		;call	ds18b20_init
		;movlw	0x55
		;call	ds18b20_write_byte

		;movf	ds18b20_addr_b0
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b1
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b2
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b3
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b4
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b5
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b6
		;call	ds18b20_write_byte
		;movf	ds18b20_addr_b7
		;call	ds18b20_write_byte
		;----------------------------------
		call	ds18b20_init
		movlw	0xCC
		call	ds18b20_write_byte

		movlw	0xBE
		call	ds18b20_write_byte

		call	ds18b20_read_byte
		movwf	ds18b20_temp_lsb
		call	ds18b20_read_byte
		movwf	ds18b20_temp_msb

		;--- Stopping data read
		call	ds18b20_init
		;call	ds18b20_read_byte
		;movwf	ds18b20_user_lsb
		;call	ds18b20_read_byte
		;movwf	ds18b20_user_msb
		;call	ds18b20_read_byte
		;movwf	ds18b20_conf_reg
		;call	ds18b20_read_byte
		;call	ds18b20_read_byte
		;call	ds18b20_read_byte
		;call	ds18b20_read_byte
		;movwf	ds18b20_data_crc
		;---------------------------------
		;ds18b20_temp_lsb	RES	1
		;ds18b20_temp_msb	RES	1
		;ds18b20_user_lsb	RES	1
		;ds18b20_user_msb	RES	1
		;ds18b20_conf_reg	RES	1
		;ds18b20_data_crc	RES	1
		;call	lcd_put
		;movlw	'X'
		;call 	lcd_char
		;movlw	' '
		;call	lcd_put_at

		;call	lcd_home
		movlw	'X'
		pagesel	lcd_char
		call 	lcd_char

		
		
		;swapf	byte_data, w
		;movlw	0x0F
		;andwf	byte_data, f
		;andlw	0x0F
		;movf	byte_data, w
		;movf 	ds18b20_temp_lsb, w
		;clrf	ds18b20_temp_dec
		swapf	ds18b20_temp_lsb, w
		andlw	0x0F
		movwf	ds18b20_temp_val

		; Reading the Decimal Value
		;swapf	ds18b20_temp_lsb, w
		;andlw	0x0F
		;movlw	.1
		;movwf	temp
		;pagesel	ds18b20_temp_dec
		;movwf	ds18b20_temp_dec
		;pagesel $

		swapf	ds18b20_temp_msb, w
		andlw	0xF0
		addwf	ds18b20_temp_val, f

		movf	ds18b20_temp_val, w
		;movlw	0x28
		pagesel	lcd_display
		call	lcd_display
		;pagesel $

		;call	lcd_newline

		;movlw	'Y'
		;pagesel lcd_char
		;call 	lcd_char
		;pagesel $
		
		;rlf		temp, w
		;movlw	.0
		;btfss	STATUS, C
		;movlw	.5
		;nop
		;pagesel	print_decimal
		;call	print_decimal
		;pagesel	$

		; Reading the Decimal Value
		;movf	ds18b20_temp_lsb, w
		;andlw	0x0F
		;pagesel	ds18b20_temp_dec
		;movwf	ds18b20_temp_dec
		;rlf		ds18b20_temp_dec, w
		;call	_decimal
		;call	lcd_char

		;movf	byte_data, w
		;andlw	0x0F
		;call	_decimal
		;call	lcd_char
		;call	Delay255
		;call	Delay255
		;call	Delay255
		;call	Delay255

        goto     _reading_start                ; loop forever
		;goto     $                ; loop forever



;--------------------------------------
ds18b20_init
		; Send Reset Pulse to Device
		OW_HI
		nop
		nop
		OW_LO
		; Delay at least 480us
		movlw	.95
		call	uDelay

		OW_HI
		; Check the presence of the device
		btfsc	sensor_port, sensor_pin
		goto $-1

		movlw	.95
		call	uDelay
		nop
		nop

		return

;--------------------------------------

ds18b20_write_byte
		movwf	temp
		; low bit first
		movlw	.8
		movwf	bcounter

_brloop
		OW_LO
		nop
		nop
		nop
		nop		
		rrf		temp, f
		btfsc	STATUS, C
		bsf		sensor_port, sensor_pin
		movlw	.8
		call	uDelay
		OW_HI
		nop
		nop			; Recovery time 2us
		decfsz	bcounter, f
		goto	_brloop
		nop
		return

;--------------------------------------

ds18b20_read_byte
		clrf	temp
		movlw	.8
		movwf	bcounter
_bwloop
		OW_LO
		nop
		nop
		nop
		nop
		OW_HI
		nop
		nop
		nop
		nop
		bsf		STATUS, C
		btfss	sensor_port, sensor_pin
		bcf		STATUS, C
		nop
		rrf		temp, f

		movlw	.8
		call	uDelay

		decfsz	bcounter, f
		goto	_bwloop
		movf	temp, w
		return
	

;--------------------------------------
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

;----- Messages-------------------------
device_ok
		movlw	'D'
		pagesel	lcd_char
		call	lcd_char
		movlw	'e'
		call	lcd_char
		movlw	'v'
		call	lcd_char
		movlw	'i'
		call	lcd_char
		movlw	'c'
		call	lcd_char
		movlw	'e'
		call	lcd_char
		movlw	' '
		call	lcd_char
		movlw	'O'
		call	lcd_char
		movlw	'K'
		call	lcd_char

		pagesel	Delay255
		call	Delay255
		call	Delay255

		return
;---------------------------------------

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

