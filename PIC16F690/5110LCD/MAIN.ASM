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

EXTERN uDelay
EXTERN mDelay
EXTERN sDelay

;***** VARIABLE DEFINITIONS (examples)

;----------- Pin Numberings ------------------------
;SCK -> RB6
;SDI -> RB4
;SDO -> RC7
;D/C -> RC3
;CE  -> RB7
;RST -> RB5
;---------------------------------------------------
; example of using Shared Uninitialized Data Section
INT_VAR     UDATA_SHR     
w_temp      RES     1       ; variable used for context saving 
status_temp RES     1       ; variable used for context saving
pclath_temp RES     1       ; variable used for context saving


UDATA
temp		RES		1
temp_flash	RES		1
lcounter	RES		1
clsch		RES		1
chcount		RES		1
fb_temp		RES		1

ARR1 UDATA
framebuffer	RES		32		; Frame Buffer 1

;ARR2 UDATA
;framebuffer2	RES		50	; Frame Buffer


;**********************************************************************

;**********************************************************************
; Macro Definitions
;**********************************************************************
PCD8544_COMMAND_MODE	MACRO
	banksel	PORTC
	bcf		PORTC, RC3
	ENDM

PCD8544_DATA_MODE		MACRO
	banksel	PORTC
	bsf		PORTC, RC3
	ENDM
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

	pagesel	pcd8544_init
	call	pcd8544_init

	;movlw	0xFF
	;pagesel	pcd8544_clear
	;call	pcd8544_clear

	movlw	0x00
	pagesel	pcd8544_clear
	call	pcd8544_clear

	;pagesel	pcd8544_flash
	;call	pcd8544_flash

	;movlw b'01111111'
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata

	;movlw 0x7f
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata
	;movlw 0x41
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata
	;movlw 0x41
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata
	;movlw 0x22
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata
	;movlw 0x1c
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata
	;banksel	rom_font
	;movf	rom_font+2, w
	;movlw 0x7f
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata
	;movlw	.5
	;banksel	chcount
	;movwf	chcount

	;movlw	0x09
	;banksel	FSR
	;movwf	FSR

;_charloop_

	;banksel	INDF
	;movf	INDF, w
	;banksel	EEADR
	;movlw	0x04
	;movwf	EEADR

	;banksel	EECON1
	;bcf		EECON1, EEPGD
	;bsf		EECON1, RD
	;banksel	EEDAT
	;movf	EEDAT, w
	;BCF STATUS, RP1 ;Bank 0
	
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata

	;banksel	FSR
	;incf	FSR, f

	;banksel	chcount
	;decfsz	chcount, f
	;goto	_charloop_

	;movlw	0xFF
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata
	;pagesel	pcd8544_putpixel
	;call	pcd8544_putpixel

	;pagesel	fb_init
	;call	fb_init

	;banksel	framebuffer
	;bcf		framebuffer, 1

	;pagesel	fb_display
	;call	fb_display

	pagesel	pcd8544_putchar
	call	pcd8544_putchar

	banksel		PORTC
	bsf			PORTC, RC4

loop

        goto    loop             ; loop forever
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
	movlw	b'00010000'
	;movlw	b'00000000'
	movwf	TRISB

	movlw	b'01000000'
	movwf	TRISC

	bcf	STATUS, RP0	; Bank 0

	; Setting up SSP peripheral
	banksel	SSPBUF
	clrf	SSPBUF

	; Setting baud rate
	;movlw	BAUDRATE
	;banksel	SSPADD
	;movwf	SSPADD

	banksel	SSPSTAT
	bcf		SSPSTAT, 6
	bsf		SSPSTAT, 7

	; Mastermode, SSP Enable
	;movlw	b'00110010'
	;movlw	b'00110001'
	movlw	b'00110010'
	banksel	SSPCON
	movwf	SSPCON

	; Enabling the SSPIF Flag
	;banksel	PIR1
	;bcf		PIR1, SSPIF
	;banksel	PIE1
	;bsf		PIE1, SSPIE

	;Resetting LCD
	;banksel		PORTB
	;bsf			PORTB, RB7 
	;bcf			PORTB, RB5

	;pagesel		delay_5_cycles
	;call		delay_5_cycles
	;movlw	.100
	;pagesel	mDelay
	;call	mDelay

	;banksel		PORTB
	;bsf			PORTB, RB5

	return

;------------------------------------------------------
delay_5_cycles	; call takes 2 cycles
	nop
	nop
	return
;------------------------------------------------------
;
;
;------------------------------------------------------
fb_init
	banksel	framebuffer
	movlw	framebuffer
	banksel	FSR
	movwf	FSR

	movlw	.32
	banksel	temp
	movwf	temp

_fbinit_
	movlw	0xFF
	banksel	INDF
	;clrf	INDF
	movwf	INDF

	incf	FSR, f

	banksel	temp
	decfsz	temp, f
	goto	_fbinit_	

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
fb_display

	banksel	framebuffer
	movlw	framebuffer
	banksel	FSR
	movwf	FSR

	movlw 0x80
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw 0x40
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw	.16
	banksel	fb_temp
	movwf	fb_temp

	;Sending data
	banksel	PORTC
	bsf		PORTC, RC3

	;Enabling chip select
	banksel	PORTB
	bcf		PORTB, RB7

_fbdisp_
	banksel	INDF
	;clrf	INDF
	movf	INDF, w
	;movlw	0xFF
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata

	;Setting data to send
	banksel	SSPBUF
	movwf	SSPBUF

	;Sending data
	banksel	SSPSTAT
	btfss	SSPSTAT, BF
	goto	$-1

	;Reading data
	banksel	SSPBUF
	movf	SSPBUF, w

	incf	FSR, f

	banksel	fb_temp
	decfsz	fb_temp, f
	goto	_fbdisp_

	;Setting back to Command mode
	banksel	PORTC
	bcf		PORTC, RC3

	;Disabling chip select
	banksel	PORTB
	bsf		PORTB, RB7

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_putchar
;0x7E, 0x09, 0x09, 0x09, 0x7E
	pagesel	pcd8544_resetxy
	call	pcd8544_resetxy

	;movlw	0x7E
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata

	;movlw	0x09
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata

	;movlw	0x09
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata

	;movlw	0x09
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata

	;movlw	0x7E
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata
	movlw	.5
	banksel	chcount
	movwf	chcount

	movlw	0x0A
	banksel	EEADR
	movwf	EEADR

_charloop_

	;banksel	EEADR
	;movlw	0x04
	;movwf	EEADR

	banksel	EECON1
	bcf		EECON1, EEPGD
	bsf		EECON1, RD
	banksel	EEDAT
	movf	EEDAT, w
	BCF STATUS, RP1 ;Bank 0
	
	pagesel	pcd8544_senddata
	call	pcd8544_senddata

	banksel	EEADR
	incf	EEADR, f

	banksel	chcount
	decfsz	chcount, f
	goto	_charloop_

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_reset
	;Resetting LCD
	banksel		PORTB
	bcf			PORTB, RB7 
	bcf			PORTB, RB5

	movlw	.100
	pagesel	mDelay
	call	mDelay

	banksel		PORTB
	bsf			PORTB, RB5

	movlw	.20
	pagesel	mDelay
	call	mDelay

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_init
	movlw	.100
	pagesel	mDelay
	call	mDelay

	pagesel	pcd8544_reset
	call	pcd8544_reset

	movlw	0x21				;Extended instructions enabled
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	;movlw	0xB9
	movlw	0xBF				;Set contrast 0 - 127
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw	0x04 + 0x02			;Temperature control
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw	0x10 + 0x03			;Set bias system
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd


	movlw	0x20				;Return to basic instruction set, power on, set horizontal addressing
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw	0x08 + 0x04			;Display control set to normal mode
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd
	

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_sendcmd
	banksel	temp
	movwf	temp

	;Sending command
	banksel	PORTC
	bcf		PORTC, RC3

	banksel	temp
	movf	temp, w
	pagesel	pcd8544_sendbyte
	call	pcd8544_sendbyte



	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_senddata
	banksel	temp
	movwf	temp

	;Sending data
	banksel	PORTC
	bsf		PORTC, RC3

	banksel	temp
	movf	temp, w
	pagesel	pcd8544_sendbyte
	call	pcd8544_sendbyte

	;Setting back to Command mode
	banksel	PORTC
	bcf		PORTC, RC3

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_sendbyte
	banksel	temp
	movwf	temp

	;Enabling chip select
	banksel	PORTB
	bcf		PORTB, RB7

	;Setting data to send
	;movlw	0x21
	banksel	temp
	movf	temp, w
	banksel	SSPBUF
	movwf	SSPBUF

	;Sending data
	banksel	SSPSTAT
	btfss	SSPSTAT, BF
	goto	$-1

	;Reading data
	banksel	SSPBUF
	movf	SSPBUF, w

	;Disabling chip select
	banksel	PORTB
	bsf		PORTB, RB7

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_clear
	banksel	clsch
	movwf	clsch

	movlw	.14 * .6
	banksel	lcounter
	movwf	lcounter

	movlw 0x80
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw 0x40
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	;movlw	0xFF
	;pagesel	pcd8544_senddata
	;call	pcd8544_senddata


_clearloop_
	movf	clsch, w
	;movlw	0x00
	pagesel	pcd8544_senddata
	call	pcd8544_senddata

	movf	clsch, w
	pagesel	pcd8544_senddata
	call	pcd8544_senddata

	movf	clsch, w
	pagesel	pcd8544_senddata
	call	pcd8544_senddata

	movf	clsch, w
	pagesel	pcd8544_senddata
	call	pcd8544_senddata

	movf	clsch, w
	pagesel	pcd8544_senddata
	call	pcd8544_senddata

	movf	clsch, w
	pagesel	pcd8544_senddata
	call	pcd8544_senddata

	banksel	lcounter
	decfsz	lcounter, f
	goto	_clearloop_	

	return

;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_modeblank
	movlw	b'00001000'
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd	

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_flash
	movlw	.5
	banksel	temp_flash
	movwf	temp_flash

_flashloop_

	;movlw	b'00001000'
	movlw	0x08
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd	

	movlw	.50
	pagesel	mDelay
	call	mDelay

	;movlw	b'00001001'
	movlw	0x09
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd	

	movlw	.100
	pagesel	mDelay
	call	mDelay

	banksel	temp_flash
	decfsz	temp_flash, f
	goto	_flashloop_

	;movlw	b'00001100'
	movlw	0x0C
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd	

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_putpixel

	movlw 0x80 + 10				;X-Coordinate
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw 0x40 + 2				;Y-Coordinate
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw	0x01
	pagesel	pcd8544_senddata
	call	pcd8544_senddata	

	return
;------------------------------------------------------
;
;
;------------------------------------------------------
pcd8544_resetxy

	movlw 0x80				;X-Coordinate
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd

	movlw 0x40				;Y-Coordinate
	pagesel	pcd8544_sendcmd
	call	pcd8544_sendcmd	

	return
;------------------------------------------------------
ORG	0x2100
	de	0x7E, 0x09, 0x09, 0x09, 0x7E ;A
	de	0x7F, 0x49, 0x49, 0x49, 0x3E ;B
	de	0x3E, 0x41, 0x41, 0x41, 0x41 ;C
	de	0x7F, 0x41, 0x41, 0x41, 0x3E ;D
	de	0x7F, 0x49, 0x49, 0x49, 0x49 ;E
	de	0x7F, 0x09, 0x09, 0x09, 0x09 ;F
	de	0x7F, 0x09, 0x09, 0x09, 0x70 ;G
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;H
	de	0x41, 0x41, 0xEF, 0x41, 0x41 ;I
	de	0x41, 0x41, 0x41, 0x41, 0x7F ;J
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;K
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;L
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;M
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;N
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;O
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;P
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;Q
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;R
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;S
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;T
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;U
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;V
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;W
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;X
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;Y
	de	0x7F, 0x08, 0x08, 0x08, 0x7F ;Z

END

; initialize eeprom locations

EE      CODE    0x2100
        DE  0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'