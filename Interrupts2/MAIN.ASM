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
count1              RES 1       ;variable used in delay routines.
counta              RES 1       ;variable used in delay routines.
countb              RES 1       ;variable used in delay routines.
duty_value			RES	1
pwm_level			RES	1


GENVAR		   UDATA_SHR
sPORTB			RES		1
led_count			RES	1
;cnt_t0			RES		1

;MACRO
set_status MACRO	p3, p2, p1, p0
			pagesel	$
			clrf	pwm_level
		
			movf	p3 << 6 | p2 << 4 | p1 << 2 | p0, w
			movwf	pwm_level

			ENDM
	


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
		;incfsz	cnt_t0, f
		;goto	isr_end
		;goto	cl_off
;isr_end
		;btfsc	sPORTB, 0	
		;goto 	tt
		;goto	isr_end
		;movlw	.240
		;movwf	cnt_t0
;tt
		; Toggle LED
		;movf	sPORTB, w
		;xorlw	b'0001'
		;xorlw	b'1111'
		;movlw	b'0001'
		;movwf	sPORTB
		;goto 	isr_end
		;goto	cl_on
		;movf	sPORTB, w
		;banksel PORTB
		;movwf	PORTB
;cl_off
		;clrf	sPORTB
;cl_on
		;movf	sPORTB, w
		;banksel PORTB
		;movwf	PORTB
		call _pwm_
isr_end
		;clrf	sPORTB
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
		;movlw .1
		movlw 0
		movwf duty_value
		;-----------------
		call 	Delay30
		call 	Delay30
		;-----------------
		;movf	sPORTB, w
		;banksel PORTB
		;movwf	PORTB
		;movlw .230
		movlw 1
		movwf duty_value
		;-----------------
		call 	Delay30
		call 	Delay30
		;call 	Delay255
		;movlw .240
		movlw 2
		movwf duty_value
		;movlw	b'0001'
		;movwf	sPORTB
		;movf	sPORTB, w
		;banksel PORTB
		;movwf	PORTB

		call 	Delay30
		call 	Delay30

		;movlw .250
		movlw 3
		movwf duty_value
		;call 	Delay255

		call 	Delay30
		call 	Delay30

		;movlw .254
		;movwf duty_value

		;call 	Delay30
		;call 	Delay30

		goto 	MAINLOOP
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

_pwm_
		incfsz	cnt_t0, f
		;goto	isr_end
		goto	cl_off
;isr_end
		;btfsc	sPORTB, 0	
		;goto 	tt
		;goto	isr_end
		;movlw	.230
		;movlw	.1
led_loop
		;movf	duty_value, w
		call	getbrightness
		;movf	duty_value, w
		movwf	cnt_t0
tt
		; Toggle LED
		;movf	sPORTB, w
		;xorlw	b'0001'
		;xorlw	b'1111'
		;movlw	b'0001'
		movlw	b'1111'
		movwf	sPORTB
		;goto 	isr_end
		decfsz	led_count
		goto	led_loop
		goto	cl_on
		;movf	sPORTB, w
		;banksel PORTB
		;movwf	PORTB
cl_off
		clrf	sPORTB
cl_on
		movf	sPORTB, w
		banksel PORTB
		movwf	PORTB
		return

getbrightness
		addwf	PCL, f
		retlw	.1
		retlw	.230
		retlw	.240
		;retlw	.250
		retlw	.254

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

