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
	__CONFIG    _XT_OSC & _LVP_OFF & _WDT_OFF & _PWRTE_ON & _BODEN_ON

; '__CONFIG' directive is used to embed configuration word within .asm file.
; The lables following the directive are located in the respective .inc file.
; See data sheet for additional information on configuration word settings.

;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR        UDATA_SHR     
w_temp         RES     1        ; variable used for context saving 
status_temp    RES     1        ; variable used for context saving
count1              RES 1       ;variable used in delay routines.
counta              RES 1       ;variable used in delay routines.
countb              RES 1       ;variable used in delay routines.
pattern				RES	1
pattern1_counter	RES	1
pattern1_increment	RES	1


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
		clrf	PORTB

		bsf		STATUS, RP0			; Switching to Bank 1
		clrf	TRISB
		bcf		STATUS, RP0			; Switching to Bank 0

		clrf	pattern
		clrf	pattern1_counter
		movlw	0x1
		movwf	pattern1_increment
		;movwf	pattern1_counter

MAINLOOP

		;movlw	b'10000000'
		;movwf	PORTB
		;movf	pattern, w
		;call	pat_1
		call	pat_composer
		;movwf	PORTB

		;movf 	pattern1_counter, w
		;call 	pat_1
		;movwf	PORTB

		;incf	pattern, f

		;movf	pattern1_increment, w
		;addwf	pattern1_counter, f
		

		;call 	Delay255
		;call 	Delay30
		;call 	Delay30

		;movlw	0x07
		;xorwf	pattern1_counter, w
		;btfsc	STATUS, Z
		;call	invert_increment

		;movlw	0x0
		;xorwf	pattern1_counter, w
		;btfsc	STATUS, Z
		;call	invert_increment

		;movlw	b'00000000'
		;movwf	PORTB

		;call 	Delay255
		;clrf	pattern1_counter
		;movlw	0x1
		;movwf	pattern1_increment

		;movlw	b'10000000'
		;movwf	PORTB

		;call	Delay5

		;movlw	b'00000000'
		;movwf	PORTB

		;call	Delay5

		goto MAINLOOP
        ;goto     $                ; loop forever

;______________________________________________________________________________________________
;Delays originated here: http://www.winpicprog.co.uk/pic_tutorial3.htm
;All delays here assume a 4Mhz clock.
Delay255
        movlw   .255            ;delay 255ms.
        goto    d0
Delay30
        movlw   .30             ;delay 30mS.
        goto    d0
Delay10
        movlw   .10              ;delay 10ms.
        goto    d0
Delay5
        movlw   .5              ;delay 5ms.
        goto    d0
Delay2
        movlw   .2              ;delay 2ms.
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

pat_1
		addwf	PCL, f
		retlw	b'00000001'
		retlw	b'00000010'
		retlw	b'00000100'
		retlw	b'00001000'
		retlw	b'00010000'
		retlw	b'00100000'
		retlw	b'01000000'
		retlw	b'10000000'

pat_2
		addwf	PCL, f
		retlw	b'10000001'
		retlw	b'01000010'
		retlw	b'00100100'
		retlw	b'00011000'
		retlw	b'00011000'
		retlw	b'00100100'
		retlw	b'01000010'
		retlw	b'10000001'

pat_3
		addwf	PCL, f
		retlw	b'11111110'
		retlw	b'11111101'
		retlw	b'11111011'
		retlw	b'11110111'
		retlw	b'11101111'
		retlw	b'11011111'
		retlw	b'10111111'
		retlw	b'01111111'

pat_composer
		movf 	pattern1_counter, w
		call 	pat_3
		movwf	PORTB

		call 	Delay30
		call 	Delay30
		;call 	Delay30

		;incf	pattern1_counter, f
		;movf	pattern1_increment, w
		;addwf	pattern1_counter, f
		;movlw	0x1
		movf	pattern1_increment, w
		addwf	pattern1_counter, f

		movlw	0x07
		xorwf	pattern1_counter, w
		btfsc	STATUS, Z
		call	invert_increment

		movlw	0x0
		xorwf	pattern1_counter, w
		btfss	STATUS, Z
		;call	invert_increment
		goto 	pat_composer

		;goto	pat_2
		;goto	rep_1

		return


invert_increment
		comf	pattern1_increment, f
		incf	pattern1_increment, f
		return

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

