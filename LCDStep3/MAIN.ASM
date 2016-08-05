;**********************************************************************
;   This file is a basic code template for object module code         *
;   generation on the PIC16F716. This file contains the               *
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
;    Files required: P16F716.INC                                      *
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

    list      p=16F716              ; list directive to define processor
    #include <p16F716.inc>          ; processor specific variable definitions

    errorlevel  -302                ; suppress message 302 from list file

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

    __CONFIG    _CP_OFF & _VBOR_25 & _BOREN_OFF & _PWRTE_ON & _WDT_OFF & _XT_OSC

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR     UDATA    
w_temp      RES     1       ; variable used for context saving 
status_temp RES     1       ; variable used for context saving
count1      RES 1       	;variable used in delay routines.
counta      RES 1       	;variable used in delay routines.
countb      RES 1       	;variable used in delay routines.
temp		RES	1

INT_VAR1    UDATA   
w1_temp     RES 1           ; bank 1 w_temp register

#define		lcd_tris	TRISB
#define		lcd_port	PORTB

#define		lcd_en		PORTB, 4
#define		lcd_rs		PORTB, 5
#define		lcd_rw		PORTB, 6



;**********************************************************************
RESET_VECTOR    CODE    0x0000  ; processor reset vector
        goto    start           ; go to beginning of program

INT_VECTOR      CODE    0x0004  ; interrupt vector location

INTERRUPT

        movwf   w_temp          ; save off current W register contents
        movf    STATUS,w        ; move status register into W register
        bcf STATUS,RP0  ; select bank0
        movwf   status_temp     ; save off contents of STATUS register

; isr code can go here or be located as a call subroutine elsewhere


        bcf STATUS,RP0  ; select bank0
        movf    status_temp,W   ; retrieve copy of STATUS register
        movwf   STATUS          ; restore pre-isr STATUS register contents
        swapf   w_temp,F
        swapf   w_temp,W        ; restore pre-isr W register contents
        retfie                  ; return from interrupt
       
MAIN_PROG       CODE

start
		clrf	lcd_port		; Setting all pins to 0

		bsf		STATUS, RP0		; Switching to bank 1
		clrf	lcd_tris
		bcf		STATUS, RP0		; Switching to bank	0

mainloop
		call 	lcd_init

		call	Delay255
		call	Delay255

		movlw	'D'
		;movlw	b'01001000'
		call	LCD_CHAR

		movlw	'i'
		;movlw	b'01001000'
		call	LCD_CHAR

		movlw	'u'
		;movlw	b'01001000'
		call	LCD_CHAR
		
		movlw	's'
		;movlw	b'01001000'
		call	LCD_CHAR

		movlw	'h'
		;movlw	b'01001000'
		call	LCD_CHAR

		movlw	'a'
		;movlw	b'01001000'
		call	LCD_CHAR

        goto $

lcd_init
		call	Delay30

		;--------------------
		movlw	b'00000011'
		movwf	lcd_port
		call	pulse_en
		call	Delay5

		movlw	b'00000011'
		movwf	lcd_port
		call	pulse_en
		call	Delay1

		movlw	b'00000011'
		movwf	lcd_port
		call	pulse_en
		call	Delay1
		;call	lcd_busy
		;--------------------

		movlw	b'00000010'		; Switch to 4bit mode
		movwf	lcd_port
		call	pulse_en
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


pulse_en
		bsf		lcd_en
		nop
		bcf		lcd_en
		return

lcd_char2
		bsf		lcd_rs
		call	lcd_write
		;bcf		lcd_rs
		return

lcd_cmd
		bcf		lcd_rs			; setting RS low (RS = 0, Instruction Register)
		call	lcd_write
		return

lcd_write
		movwf	temp
		swapf	temp, w
		andlw	0x0f
		movwf	lcd_port

		call	pulse_en

		movf	temp, w
		andlw	0x0f
		movwf	lcd_port
		
		call	pulse_en

		call	Delay5
		;call	lcd_busy
		return

lcd_busy
		bsf		STATUS, RP0		; Switching to Bank 1
		bsf		lcd_tris, 3
		bcf		STATUS, RP0		; Switching to Bank 0

		;bcf		lcd_rs
		bsf		lcd_rw
		bsf		lcd_en

		btfsc	lcd_port, 3
		goto	$-1

		bcf		lcd_rw
		bcf		lcd_en		

		bsf		STATUS, RP0		; Switching to Bank 1
		bcf		lcd_tris, 3
		bcf		STATUS, RP0		; Switching to Bank 0

		return

LCD_CHAR

		movwf	temp			; moving passed value in w to temp variable
		swapf	temp, w			; swaping high and low nibbles and storing it in w
		andlw	0x0f			; selecting only the lower nibble (Previous high nibble)
		movwf	lcd_port		; writing to port
		bsf		lcd_rs
		call 	pulse_en		; pulsing the E line

		movf	temp, w
		andlw 	0x0f
		movwf 	lcd_port
		bsf 	lcd_rs
		call 	pulse_en

		call 	Delay5
		;call	lcd_busy

		bcf		lcd_rs
		
		RETURN

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

        END                     ; directive 'end of program'

