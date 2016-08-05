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
count1              RES 1       ;variable used in delay routines.
counta              RES 1       ;variable used in delay routines.
countb              RES 1       ;variable used in delay routines.
duty_level			RES	1
inc_amount			RES	1



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
; remaining code goes here
		movlw	0x07			; Turning off comparators			
		movwf	CMCON

		clrf duty_level

		; PWM Period Setting
		banksel	PR2
		;movlw	0x1F
		movlw	0x20
		movwf	PR2
		
		movlw	0x01
		movwf	inc_amount

		banksel	T2CON
		movlw	0x07
		movwf	T2CON


MAIN_LOOP

		; Duty Cycle Setting
		banksel	CCPR1L
		movlw	0x4					;10% Duty Cycle
		;movf	duty_level, w			;10% Duty Cycle
		movwf	CCPR1L

		;movlw	0x01
		;movwf	inc_amount
		;movf	inc_amount, w
		
		;movwf	duty_level
		addwf	duty_level, f
		;movlw	0x1
		;addwf	duty_level, f
		;movlw	0xFF
		;xorwf	duty_level
		;btfsc	STATUS, Z
		;clrf 	duty_level
		;call change_increment
		nop

		bcf		CCP1CON, 0x05
		bcf		CCP1CON, 0x04

		banksel	TRISB
		bcf		TRISB, RB3
		


		banksel	CCP1CON
		bsf		CCP1CON, 0x03		; PWM on
		bsf		CCP1CON, 0x02

		call Delay5
		call Delay5
		;call Delay255
		
		bcf		CCP1CON, 0x03		; PWM off
		bcf		CCP1CON, 0x02
		bcf		CCP1CON, 0x01
		bcf		CCP1CON, 0x00
		

		goto MAIN_LOOP
        ;goto     $                ; loop forever

change_increment

		comf	duty_level, f
		incf	duty_level, f
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
        retlw   .0 

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

