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
count1              RES 1       ;variable used in delay routines.
counta              RES 1       ;variable used in delay routines.
countb              RES 1       ;variable used in delay routines.
temp_val			RES	1

INT_VAR1    UDATA   
w1_temp     RES 1           ; bank 1 w_temp register

#define		LCD_RS	PORTB, 5
#define		LCD_RW	PORTB, 1
#define		LCD_E	PORTB, 4

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
		clrf	PORTB

		BCF STATUS, RP1
		bsf	STATUS, RP0	; Switching to Bank 1

		clrf	TRISB	; Setting Port B as output

		bcf	STATUS, RP0	; Switching to Bank 0

		clrf	temp_val

		;call	lcd_init
		call Delay30	; According to datasheet page 23, The busy state lasts for 10 ms after VCC rises to 4.5 V
		
		; Function (1)
		;movlw	b'00101000'
		movlw	b'00000011'
		movwf	PORTB
		call	send_pulse
		call	Delay5
		;call	send_cmd

		; Setting Display Shift
		;movlw	b'00011100'
		;movlw	b'00100000'
		; Function (2)
		movlw	b'00000011'
		movwf	PORTB
		call	send_pulse
		call	Delay1
		;call	send_cmd

		; Function (3)
		movlw	b'00000011'
		movwf	PORTB
		call	send_pulse
		call	Delay5

		;movlw	b'0000110'
		movlw	b'00000010'
		movwf	PORTB
		call	send_pulse
		call	Delay5
		;call	send_cmd

		; Setting Display On
		;movlw	b'00001111'
		;movlw	b'00100010'
		;call	send_cmd

		;movlw	b'00001110'
		;call	send_cmd

		;movlw	b'00000110'
		;call	send_cmd
		;function set
    	movlw   b'00100011'
    	call    send_cmd

		;movlw	b'0000110'
		;call    send_cmd
		;display control
    	movlw   b'00001110'         ;instruction bit / display on / cursor on / cursor position on.
    	call    send_cmd
		;clear display
    	movlw   b'00000001'
    	call    send_cmd
		;set entry mode
   		;movlw   b'00000110'
    	;call    send_cmd

		;movlw	b'000000001'	;Clear display
		;call	send_cmd
		
		call	Delay255
		call	Delay255

		;movlw   b'00000110'
    	;call    send_char_data

		movlw 'H'
		call send_char_data
		;call 	characters

		call	Delay255

mainloop
		;movlw 'H'
		;call send_char_data	

		goto mainloop
        ;goto $


send_pulse
		bsf	LCD_E
		nop
		bcf	LCD_E
		return

send_cmd
		bcf	LCD_RS		; Instruction Register
		call	send_4bit_data
		return

send_char
		;bsf	LCD_RS		; Data Register
		call	send_char_data
		return	

send_4bit_data
		; The four high order bits are transferred before the four low order bits

		;bcf	LCD_RS		; Instruction Register
		;bcf	LCD_RW		; Switching to Write Mode

		; Sending high 4 bits
		movwf	temp_val
		swapf	temp_val, w
		andlw	0x0F
		;movlw	0xF0
		;andwf	temp_val, w
		movwf	PORTB
		
		call	send_pulse

		; Sending low 4 bits
		;movwf	temp_val
		;swapf	temp_val, w
		movf	temp_val, w
		andlw	0x0F
		movwf	PORTB
		
		call	send_pulse
		;call 	check_busy
		call 	Delay5
			
		return

send_char_data
		; The four high order bits are transferred before the four low order bits

		;bcf	LCD_RS		; Instruction Register
		;bcf	LCD_RW		; Switching to Write Mode

		; Sending high 4 bits
		movwf	temp_val
		swapf	temp_val, w
		andlw	0x0F
		bsf		LCD_RS
		movwf	PORTB
		
		call	send_pulse

		; Sending low 4 bits
		;movwf	temp_val
		movf	temp_val, w
		andlw	0x0F
		bsf		LCD_RS

		movwf	PORTB
		
		call	send_pulse
		;call 	check_busy
		call 	Delay5
			
		return

		
check_busy	; Checks the busy flag
		bsf	STATUS, RP0	; Switching to Bank 1
		bsf	TRISB, 7	; Setting pin 7 as input
		bcf	STATUS, RP0	; Switching to Bank 0

		bcf	LCD_RS
		bsf	LCD_RW

		btfsc	PORTB, 7
		goto	$-1

		bcf	LCD_RW		; Switching to Write Mode

		bsf	STATUS, RP0	; Switching to Bank 1
		bcf	TRISB, 7	; Setting pin 7 as output
		bcf	STATUS, RP0	; Switching to Bank 0	

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

characters
    movlw   'H'
    call    send_char_data
    movlw   'e'
    call    send_char_data
    movlw   'l'
    call    send_char_data
    movlw   'l'
    call    send_char_data
    movlw   'o'
    call    send_char_data
    movlw   0xc0                ;put the cursor at the start of line 2
    call    send_char_data
    movlw   'N'
    call    send_char_data
    movlw   'i'
    call    send_char_data
    movlw   'v'
    call    send_char_data
    movlw   'a'
    call    send_char_data
    movlw   'n'
    call    send_char_data
    movlw   't'
    call    send_char_data
    movlw   'h'
    call    send_char_data
    movlw   'a'
    call    send_char_data
    movlw   'k'
    call    send_char_data
	movlw   'a'
    call    send_char_data
    movlw   ' '
    call    send_char_data
    movlw   ':'
    call    send_char_data
    movlw   '-'
    call    send_char_data
    movlw   ')'
    call    send_char_data
	movlw   b'11111100'
    call    send_char_data

    return

        END                     ; directive 'end of program'

