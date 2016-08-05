;**********************************************************************
;   This file is a basic code template for object module code         *
;   generation on the PIC16F690. This file contains the               *
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
;    Filename:      xxx.asm                                           *
;    Date:                                                            *
;    File Version:                                                    *
;                                                                     *
;    Author:                                                          *
;    Company:                                                         *
;                                                                     *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Files required: P16F690.INC                                      *
;                                                                     *
;                                                                     *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Notes:                                                           *
;                                                                     *
;                                                                     *
;                                                                     *
;                                                                     *
;**********************************************************************

    list      p=16F690           ; list directive to define processor
    #include <p16F690.inc>        ; processor specific variable definitions

    errorlevel  -302              ; suppress message 302 from list file

    __CONFIG   _CP_OFF & _CPD_OFF & _BOR_OFF & _MCLRE_ON & _WDT_OFF & _PWRTE_ON & _INTRC_OSC_NOCLKOUT & _FCMEN_OFF & _IESO_OFF 

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

EXTERN	swi2c_init
EXTERN	swi2c_start
EXTERN	swi2c_stop
EXTERN	swi2c_sendaddrwrite
EXTERN	swi2c_sendaddrread
EXTERN	swi2c_senddata	

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR     UDATA_SHR     
w_temp      RES     1       ; variable used for context saving 
status_temp RES     1       ; variable used for context saving
pclath_temp RES     1       ; variable used for context saving

;**********************************************************************
RESET_VECTOR    CODE    0x0000       ; processor reset vector
        goto    start                ; go to beginning of program

INT_VECTOR      CODE    0x0004       ; interrupt vector location

INTERRUPT

        movwf   w_temp            ; save off current W register contents
        movf    STATUS,w          ; move status register into W register
        movwf   status_temp       ; save off contents of STATUS register
        movf    PCLATH,w          ; move pclath register into W register
        movwf   pclath_temp       ; save off contents of PCLATH register



; isr code can go here or be located as a call subroutine elsewhere


        movf    pclath_temp,w     ; retrieve copy of PCLATH register
        movwf   PCLATH            ; restore pre-isr PCLATH register contents
        movf    status_temp,w     ; retrieve copy of STATUS register
        movwf   STATUS            ; restore pre-isr STATUS register contents
        swapf   w_temp,f
        swapf   w_temp,w          ; restore pre-isr W register contents
        retfie                    ; return from interrupt

MAIN_PROG       CODE

start
	pagesel	device_init
	call	device_init

	pagesel	swi2c_init
	call	swi2c_init

	
loop

	pagesel	swi2c_start
	call	swi2c_start

	movlw	0x20
	pagesel	swi2c_sendaddrwrite
	call	swi2c_sendaddrwrite

	;movlw	0x00
	;pagesel	swi2c_senddata
	;call	swi2c_senddata

	;movlw	0x80
	;pagesel	swi2c_senddata
	;call	swi2c_senddata

	;pagesel	swi2c_stop
	;call	swi2c_stop

	;pagesel	swi2c_start
	;call	swi2c_start

	;movlw	0x20
	;pagesel	swi2c_sendaddrwrite
	;call	swi2c_sendaddrwrite

	;movlw	0x14
	;pagesel	swi2c_senddata
	;call	swi2c_senddata

	;movlw	0x01
	;pagesel	swi2c_senddata
	;call	swi2c_senddata

	pagesel	swi2c_stop
	call	swi2c_stop

	banksel		PORTC
	bsf			PORTC, RC4

    goto    loop             ; loop forever
	;goto    $             ; loop forever

;------------------------------------------------------
device_init
	; Setting Oscillator
	movlw b'01110000'
		  ;--111----	; 8Mhz Crystal
		  ;-----0---	; OSTS - Intrnal Oscillator
		  ;------0--	; HFINTOSC - High Frequency Oscillator
		  ;-------0-	; LFINTOSC - Low Freq. Oscillator
		  ;---------1	; Internal Oscillator is used for Clock
	banksel	OSCCON
	movwf	OSCCON

	; Setting Ports
	bcf	STATUS, RP0	; Bank 0
	bcf	STATUS, RP1

	clrf	PORTB
	clrf	PORTC

	bsf	STATUS, RP1	; Bank 2

	clrf	ANSEL
	clrf	ANSELH

	bsf	STATUS, RP0	; Bank 1
	bcf	STATUS, RP1

	;movlw	b'01010000'
	;movwf	TRISB
	;movlw	b'00010000'
	;movlw	b'00000000'
	;movwf	TRISB

	;movlw	b'01000000'
	;movwf	TRISC
	clrf	TRISC

	bcf	STATUS, RP0	; Bank 0

	; Setting up SSP peripheral
	;banksel	SSPBUF
	;clrf	SSPBUF

	; Setting baud rate
	;movlw	BAUDRATE
	;banksel	SSPADD
	;movwf	SSPADD

	;banksel	SSPSTAT
	;bcf		SSPSTAT, 6
	;bsf		SSPSTAT, 7

	; Mastermode, SSP Enable
	;movlw	b'00110010'
	;movlw	b'00110001'
	;movlw	b'00110010'
	;banksel	SSPCON
	;movwf	SSPCON

	return

; initialize eeprom locations

EE      CODE    0x2100
        DE  0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'