;**********************************************************************
;   This file is a basic code template for object module code         *
;   generation on the PIC16F877A. This file contains the              *
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
;    Files required: P16F877A.INC                                     *
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


    list        p=16f877a   ; list directive to define processor
    #include    <p16f877a.inc>  ; processor specific variable definitions
    
    ;__CONFIG _CP_OFF & _WDT_OFF & _BODEN_OFF & _PWRTE_ON & _RC_OSC & _WRT_OFF & _LVP_ON & _CPD_OFF
	__CONFIG  _FOSC_HS & _WRT_OFF & _LVP_OFF & _CPD_OFF & _CP_OFF & _WDT_OFF & _BODEN_OFF & _PWRTE_ON
; '__CONFIG' directive is used to embed configuration data within .asm file.
; The labels following the directive are located in the respective .inc file.
; See respective data sheet for additional information on configuration word.

; External Functions ***************************************************
EXTERN uDelay
EXTERN mDelay
EXTERN sDelay
;***********************************************************************
;***** VARIABLE DEFINITIONS (examples)

; example of using Shared Uninitialized Data Section
INT_VAR     UDATA_SHR      
w_temp      RES     1       ; variable used for context saving 
status_temp RES     1       ; variable used for context saving
pclath_temp RES	    1       ; variable used for context saving

; example of using Uninitialized Data Section
TEMP_VAR    UDATA           ; explicit address specified is not required
temp_count  RES     1       ; temporary variable (example)
sPORTB		RES		1		; Shadow PORTC register

; example of using Overlayed Uninitialized Data Section
; in this example both variables are assigned the same GPR location by linker
G_DATA      UDATA_OVR       ; explicit address can be specified
flag        RES 2           ; temporary variable (shared locations - G_DATA)

G_DATA      UDATA_OVR   
count       RES 2           ; temporary variable (shared locations - G_DATA)

;**********************************************************************
RESET_VECTOR    CODE    0x0000 ; processor reset vector
    nop                        ; nop for icd
    pagesel start
    goto    start              ; go to beginning of program


INT_VECTOR      CODE    0x0004 ; interrupt vector location

INTERRUPT

    movwf   w_temp          ; save off current W register contents
    movf    STATUS,w        ; move status register into W register
    movwf   status_temp     ; save off contents of STATUS register
    movf    PCLATH,w        ; move pclath register into w register
    movwf   pclath_temp     ; save off contents of PCLATH register

; isr code can go here or be located as a call subroutine elsewhere

    movf    pclath_temp,w   ; retrieve copy of PCLATH register
    movwf   PCLATH          ; restore pre-isr PCLATH register contents
    movf    status_temp,w   ; retrieve copy of STATUS register
    movwf   STATUS          ; restore pre-isr STATUS register contents
    swapf   w_temp,f
    swapf   w_temp,w        ; restore pre-isr W register contents
    retfie                  ; return from interrupt

MAIN_PROG       CODE

start

    nop             ; code starts here (example)
    banksel count           ; example
    clrf    count           ; example

	call	init
	
	movlw	b'00000000'
	banksel	sPORTB
	movwf	sPORTB

	banksel	PORTB
	movwf	PORTB
	
loop
	movlw	b'00000000'
	;banksel	sPORTB
	;xorwf	sPORTB, f
	;movf	sPORTB, w
	banksel	PORTB
	movwf	PORTB

	movlw	.2
	;pagesel	uDelay
	;call	uDelay
	;pagesel	mDelay
	;call	mDelay
	pagesel	sDelay
	call	sDelay

	movlw	b'00000100'
	;banksel	sPORTB
	;xorwf	sPORTB, f
	;movf	sPORTB, w
	banksel	PORTB
	movwf	PORTB

	movlw	.2
	;pagesel	uDelay
	;call	uDelay
	;pagesel	mDelay
	;call	mDelay		
	pagesel	sDelay
	call	sDelay
    goto loop

	;----------------------------------------------------
	; Initialization of the device
	;----------------------------------------------------
init
	banksel	sPORTB
	clrf	sPORTB

	; Switching to bank 0
	bcf	STATUS, RP0
	bcf	STATUS, RP1

	clrf	PORTB

	; Switching to bank 1
	bsf	STATUS, RP0
	;bcf	STATUS, RP1

	movlw	b'11111011'
	movwf	TRISB

	; Switching to bank 0
	bcf	STATUS, RP0	

	return
	;----------------------------------------------------
    END                       ; directive 'end of program'

