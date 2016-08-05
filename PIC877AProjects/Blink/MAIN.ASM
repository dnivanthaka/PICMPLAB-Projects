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
    
    ;__CONFIG _CP_OFF & _WDT_OFF & _BODEN_OFF & _PWRTE_ON & _RC_OSC & _WRT_OFF & _LVP_OFF & _CPD_OFF
	__CONFIG  _FOSC_HS & _WRT_OFF & _LVP_OFF & _CPD_OFF & _CP_OFF & _WDT_OFF & _BODEN_OFF & _PWRTE_ON
	;__CONFIG   _XT_OSC & _LVP_OFF & _WDT_OFF & _PWRTE_ON & _BODEN_ON

EXTERN uDelay
EXTERN mDelay
EXTERN sDelay
;EXTERN debRead

;-----------------------------------------------------------------
DebHiRead MACRO port, pin
	local count
	local loop, ret_zero, ret_one
 
	movlw	0
	movwf	count

loop
	btfss	port, pin
	goto	ret_zero
	incf	count, f
	movlw	0x0A
	xorwf	count, w
	btfsc	STATUS, Z
	goto	ret_one
	movlw	0x0A
	pagesel	mDelay
	call	mDelay
	goto loop

ret_zero
	movlw	0
	goto	$+3

ret_one
	movlw	1
	

	ENDM

;-----------------------------------------------------------------

DebLoRead MACRO port, pin
	local count
	local loop, ret_zero, ret_one
 
	movlw	0
	movwf	count

loop
	btfsc	port, pin
	goto	ret_zero
	incf	count, f
	movlw	0x0A
	xorwf	count, w
	btfsc	STATUS, Z
	goto	ret_one
	movlw	0x0A
	pagesel	mDelay
	call	mDelay
	goto loop

ret_zero
	movlw	0
	goto	$+3

ret_one
	movlw	1
	

	ENDM
;-----------------------------------------------------------------

;TMP1	EQU		0x20
;TMP2	EQU		0x21

; '__CONFIG' directive is used to embed configuration data within .asm file.
; The labels following the directive are located in the respective .inc file.
; See respective data sheet for additional information on configuration word.

;***** VARIABLE DEFINITIONS (examples)
;UDATA
;count			RES	1

; example of using Shared Uninitialized Data Section
INT_VAR     UDATA_SHR      
w_temp      RES     1       ; variable used for context saving 
status_temp RES     1       ; variable used for context saving
pclath_temp RES	    1       ; variable used for context saving

; example of using Uninitialized Data Section
TEMP_VAR    UDATA           ; explicit address specified is not required
temp_count  RES     1       ; temporary variable (example)

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

mainloop

	;movlw	0x00
	;btfss	PORTB, RB1
	;movlw	0x04
	;nop
	;movwf	PORTB
	;bsf	PORTB, RB1

	;bsf		PORTB, RB2

	;pagesel	mDelay
	;movlw	0x01
	;call	sDelay
	;call	mDelay
	;call	mDelay
	;call	mDelay
	;bcf		PORTB, RB2
	;pagesel	mDelay
	;movlw	0xFF
	;call	mDelay
	;call	mDelay
	;call	mDelay
	;call	mDelay

	;pagesel	debRead
	;call	debRead
	;banksel	PORTB	
	DebHiRead PORTB, RB1
	xorlw	0x01
	movlw	0x00
	btfss	STATUS, Z
	movlw	0x04
	nop
	movwf	PORTB

    goto 	mainloop

	; Initialization of Devices
init
	;bcf	STATUS, RP0
	;bcf	STATUS, RP1
	;banksel	PORTB
	clrf	PORTB

; Switching to bank 1
	bsf	STATUS, RP0
	;banksel TRISB
	bsf	TRISB, RB1
	bcf	TRISB, RB2

; Switching to bank 0
	bcf	STATUS, RP0
	;banksel	PORTB
	return


    END                       ; directive 'end of program'

