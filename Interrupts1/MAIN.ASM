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
cnt_t0			RES		1

GENVAR		   UDATA_SHR
sPORTB			RES		1
;cnt_t0			RES		1


;**********************************************************************
RESET_VECTOR    CODE   0x0000     ; processor reset vector
        goto    START             ; go to beginning of program
    
INT_VECTOR    CODE    0x0004      ; interrupt vector location

INTERRUPT

        movwf   w_temp            ; save off current W register contents
        movf    STATUS,w          ; move status register into W register
        movwf   status_temp       ; save off contents of STATUS register


; isr code can go here or be located as a call subroutine elsewhere
		bcf		INTCON, T0IF	  ; Clear interrupt flag
		;bcf		INTCON, GIE	  ; Clear interrupt flag
	
		;banksel cnt_t0
		;movf	cnt_t0, w
		;xorlw	.255
		;banksel	STATUS
		;btfss	STATUS, Z
		;goto	isr_end
		incfsz	cnt_t0, f
		goto	isr_end
;isr_end
		btfss	sPORTB, 0	
		goto 	tt
		movlw	.254
		movwf	cnt_t0
tt
		; Toggle LED
		movf	sPORTB, w
		xorlw	b'0001'
		;xorlw	b'1111'
		movwf	sPORTB
isr_end
        movf    status_temp,w     ; retrieve copy of STATUS register
        movwf   STATUS            ; restore pre-isr STATUS register contents
        swapf   w_temp,f
        swapf   w_temp,w          ; restore pre-isr W register contents
        retfie                    ; return from interrupt

MAIN_PROG     CODE

START
		movlw	0x7
		movwf	CMCON			; Turning off comparators

		clrf	PORTB
		clrf	sPORTB
		clrf	TMR0
		clrf	INTCON

		clrwdt

		bsf		STATUS, RP0		; Switching to Bank 1
		
		movlw	b'01000000'
		;movlw	b'01000010'
		movwf	OPTION_REG		; Prescale enabled = 1:256
	
		clrwdt
		clrf	TRISB

		bcf		STATUS, RP0		; Switching to Bank 0

		movlw	1<<GIE|1<<T0IE	; Enable Timer 0 Interrupts and Global Interrupts
		movwf	INTCON

	;	movlw	.240
		;movwf	cnt_t0
		;clrf	cnt_t0

		

MAINLOOP
		movf	sPORTB, w
		banksel PORTB
		movwf	PORTB
		goto 	MAINLOOP
        ;goto     $                ; loop forever

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

