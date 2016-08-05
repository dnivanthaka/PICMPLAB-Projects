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
; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR        UDATA_SHR     
w_temp         RES     1        ; variable used for context saving 
status_temp    RES     1        ; variable used for context saving

UDATA
pcounter			RES		1


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

		call	lcd_init

		clrf	pcounter


		movlw	'A'
		call	lcd_char

_counterloop
		movf	pcounter, w
		;movlw	.1
		;call	_decimal
		call	lcd_put_at

		call	Delay255
		;call	Delay255

		incf	pcounter, f

		movlw	0x0A
		xorwf	pcounter, w
		btfsc	STATUS, Z
		clrf	pcounter
		nop

		;movlw	.2
		;call	_decimal
		;call	lcd_put_at

        ;goto     $                ; loop forever
		goto	_counterloop

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

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

