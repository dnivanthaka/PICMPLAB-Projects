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
sGPIO		   RES     1        ; Shadow GPIO

			   UDATA 
sample_count   RES     1        ; variable used for sampling
delay_count    RES     1        ; variable used for sampling


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
			  ;clrf PORTB                  ; Setting port A pins as output
	  ;movlw h'00010000'
	  clrf sGPIO
	  clrf PORTB
	  bcf PORTB, RB0
	  bsf PORTB, RB7                ; setting RB7 as input
	  movlw b'00000001'
	  movwf sGPIO
      ;movlw b'01111111'
      ;movwf PORTB
	  bsf  STATUS, RP0            ; Switching to bank 1
	  ;clrf TRISA
	  ;movlw h'00010000'
	  ;movlw b'00000100'
	  ;movwf TRISB
	  ;movlw b'01111111'
	  ;movwf TRISB
	  clrf TRISB
      bcf TRISB, TRISB0
	  bsf TRISB, TRISB7
	  bcf  STATUS, RP0            ; Switching back to bank 0

	  movlw b'0'                  ; Switching off the LED
	  movwf PORTB

; 
; ------------------------ 
; FUNCTION OF PORT A PINS 
; ------------------------ 
; 
      MOVLW    7 
      MOVWF    CMCON ; Comparators off, all pins digital I/O 

MAINLOOP
	  ;btfss PORTB, RB7
	  ;bsf PORTB, RB0
	  ;NOP
      ;NOP
	  ;bcf PORTB, RB0
	  ;bsf PORTB, RB0
      ;bsf PORTB, RB1
	  ;bcf PORTB, RB0

	  ;bsf   PORTA, RA1
	  ;bcf   PORTA, RA1
	  ;movlw b'1'
	  ;movwf PORTB

data_reset
		;clrf delay_count
		;clrf sample_count
		movlw .250
		movwf delay_count
		movlw .2
		movwf sample_count
		

sampling_start
		incfsz delay_count, f
		goto sampling_start
        btfsc PORTB, RB7	;Checking if the RB7 pin is set to low, skip if not
		goto data_reset
        ;incf sample_count, f
		;movlw .10
		;xorwf sample_count, w
		;btfss STATUS, Z
		decfsz sample_count, f
		goto sampling_start
		;movf PORTB, w
		movf sGPIO, w
		;xorwf b'00000001'
		xorlw 1 << RB0
		movwf sGPIO
		;movlw b'1'
		;movlw b'00000001'
		movwf PORTB
		;bsf sGPIO, RB0
		;movlw b'1'
		;movwf sGPIO
		;movf sGPIO, PORTB
		;btfsc PORTB, RB7
		;movlw b'1'
		;movwf PORTB
		;movwf sGPIO
		;bsf PORTB, RB0
		;bsf sGPIO, RB0
		;btfss PORTB, RB0
		;bcf PORTB, RB0
		;bsf PORTB, RB0
		;movlw b'10000000'
		;xorwf sGPIO
		;movwf sGPIO
		;movwf PORTB;
		;bsf PORTB, sGPIO
		;movf sGPIO, w
		;xorlw b'10000000'
		;movwf sGPIO
		;btfss sGPIO, RB0
		;bcf PORTB, RB0
		;bsf PORTB, RB0
		;clrf delay_count

;state_change_delay
		;incfsz delay_count, f
		;goto state_change_delay
		;NOP
data_reset_up
		;clrf delay_count
		movlw .250
		movwf delay_count
		;clrf sample_count
		movlw .2
		movwf sample_count

sampling_start_up
		incfsz delay_count, f
		goto sampling_start
        btfss PORTB, RB7	;Checking if the RB7 pin is set to low, skip if not
		goto data_reset_up
        incf sample_count, f
		decfsz sample_count, f
		goto sampling_start_up
		;movf PORTB, w
		;movf sGPIO, w
		;xorwf b'00000001'
		;movwf sGPIO
		;movlw b'1'
		;movlw b'00000001'
		;movwf PORTB
				

;sampling_loop
		;incf sample_count
		;movlw .15
		;xorwf sample_count, w
		;btfss 
		

	  goto MAINLOOP
      ;  goto     $                ; loop forever

; initialize eeprom locations

EE        CODE    0x2100
        DE    0x00, 0x01, 0x02, 0x03

        END                       ; directive 'end of program'

