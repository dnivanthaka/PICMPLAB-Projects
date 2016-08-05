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
temp			RES	1

INT_VAR1    UDATA   
w1_temp     RES 1           ; bank 1 w_temp register

#define		LCD_RS	PORTB, 0
#define		LCD_RW	PORTB, 1
#define		LCD_E	PORTB, 2

#define lcd_port	    PORTB
#define lcd_port_tris	TRISB
#define lcd_rs		    PORTB, 5
#define lcd_en		    PORTB, 4

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
		CLRF PORTA
		CLRF lcd_port				; Setting All ports as outputs

		;MOVLW 0x07				; Turning off comparators
		;MOVWF CMCON

		BCF STATUS, RP1
		BSF STATUS, RP0			; Selecting Bank 1
		
		CLRF TRISA
		CLRF lcd_port_tris

		BCF STATUS, RP0			; Switching back to Bank 0

		CLRF temp

		;--------------------- Initializing LCD ----------------------;
		;call Delay
		call    Delay30

	

		;movlw b'11'					
		;movwf PORTA	
		;call lcd_enable
		;call Delay1

		;movlw	0x20			;Set 4 bit mode
		;movlw	b'00100000'
		movlw	b'00000010'
		call	LCD_CMD

		;movlw	0x28			;Set display shift
		movlw	b'00101000'
		call	LCD_CMD

		;movlw	0x06			;Set display character mode
		movlw	b'0000110'
		call	LCD_CMD

		;movlw	0x0d			;Set display on/off and cursor command
		movlw	b'0001111'
		call	LCD_CMD

		;movlw	0x01			;Clear display
		movlw	b'000000001'	;Clear display
		call	LCD_CMD

		

		;-------------------------------------------------------------;

		;-------------------------------------------------------------;
		;call	Delay255
		;call	Delay255
		;call	Delay255
		call	Delay255

		;movlw   'H'
		;call 	LCD_CHAR
		call 	characters
		call	Delay255
		

MAINLOOP


        ;goto     $                ; loop forever
		goto MAINLOOP

;Delay
		;MOVLW	0x64					; 100 rounds
		;MOVWF	LOC_1

;Loop	NOP
		;NOP
		;NOP
		;DECF	LOC_1, F
		;BNZ		Loop		; repeat until LOC_1 becomes zero

		;RETURN

lcd_pulse
		;BSF PORTA, RA1
		BSF lcd_en
		NOP
		BCF lcd_en
		;BCF PORTA, RA1
		
		RETURN
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

LCD_CMD
		bcf		lcd_rs			; setting RS low (RS = 0, Instruction Register)
		call	SEND_CMD
		RETURN

SEND_CMD
		movwf	temp			; moving passed value in w to temp variable
		;movf	temp, w
		swapf	temp, w			; swaping high and low nibbles and storing it in w
		andlw	0x0f
		;andlw	b'11110000'			; selecting only the lower nibble (Previous high nibble)
		movwf	lcd_port		; writing to port
		;bcf		lcd_rs
		call 	lcd_pulse		; pulsing the E line

		movf	temp, w
		;swapf	temp, w
		andlw 	0x0f
		;andlw 	b'11110000'
		movwf 	lcd_port
		;bcf 	lcd_rs
		call 	lcd_pulse

		call 	Delay5

		RETURN

LCD_CHAR
		;bsf		lcd_rs			; setting RS high (RS = 1, Data Register)
		;call 	SEND_CMD
		;bcf		lcd_rs			; setting RS low (RS = 0, Instruction Register)

		movwf	temp			; moving passed value in w to temp variable
		swapf	temp, w			; swaping high and low nibbles and storing it in w
		andlw	0x0f			; selecting only the lower nibble (Previous high nibble)
		movwf	lcd_port		; writing to port
		bsf		lcd_rs
		call 	lcd_pulse		; pulsing the E line

		movf	temp, w
		andlw 	0x0f
		movwf 	lcd_port
		bsf 	lcd_rs
		call 	lcd_pulse

		call 	Delay5
		
		RETURN

characters
    movlw   'H'
    call    LCD_CHAR
    movlw   'e'
    call    LCD_CHAR
    movlw   'l'
    call    LCD_CHAR
    movlw   'l'
    call    LCD_CHAR
    movlw   'o'
    call    LCD_CHAR
    movlw   0xc0                ;put the cursor at the start of line 2
    call    LCD_CMD
    movlw   'N'
    call    LCD_CHAR
    movlw   'i'
    call    LCD_CHAR
    movlw   'v'
    call    LCD_CHAR
    movlw   'a'
    call    LCD_CHAR
    movlw   'n'
    call    LCD_CHAR
    movlw   't'
    call    LCD_CHAR
    movlw   'h'
    call    LCD_CHAR
    movlw   'a'
    call    LCD_CHAR
    movlw   'k'
    call    LCD_CHAR
	movlw   'a'
    call    LCD_CHAR
    movlw   ' '
    call    LCD_CHAR
    movlw   ':'
    call    LCD_CHAR
    movlw   '-'
    call    LCD_CHAR
    movlw   ')'
    call    LCD_CHAR
	movlw   b'11111100'
    call    LCD_CHAR

    return

        END                     ; directive 'end of program'

