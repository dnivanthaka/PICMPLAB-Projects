#include <p18f452.inc>

; Setting Configuration parameters
CONFIG WDT=OFF; disable watchdog timer
;CONFIG MCLRE = EXTMCLR; MCLEAR Pin on
CONFIG DEBUG = OFF; Enable Debug Mode
CONFIG OSC = XT
;CONFIG	PWRT=ON

org 0; start code at 0

; Variable Declaration
;Delay1 res 2;reserve 1 byte for the variable Delay1
;Delay2 res 2;reserve 1 byte for the variable Delay2
constant Delay1 = h'0008';reserve 1 byte for the variable Delay1
constant Delay2 = h'0009';reserve 1 byte for the variable Delay2
Counter equ h'000A'

Start:
	;bcf	STATUS,	RP0
	CLRF PORTB
	CLRF TRISB

Restart: 
	clrf Counter

MainLoop:
	;movlw 1
	;movwf Delay1
	;movwf Delay2

	;movlw b'1111'
	movlw Counter
	movwf PORTB

	CALL Delay_1
	CALL Delay_1

	incf Counter, f

	movlw d'16'
	xorwf Counter, w
	btfss STATUS, Z
	GOTO MainLoop
	GOTO Restart

	;movlw b'0000'
	;movwf PORTB

	;CALL Delay_1
	;CALL Delay_1

	;GOTO MainLoop

Delay_1:
	DECFSZ Delay1,1 ;Decrement Delay1 by 1, skip next instruction if Delay1 is 0 
	GOTO Delay_1
	DECFSZ Delay2,1
	GOTO Delay_1
	;movlw 0
	;movwf Delay1
	;movwf Delay2
	RETURN



;Delay2:
	;DECFSZ    Delay1,1 ;Decrement Delay1 by 1, skip next instruction if Delay1 is 0 
	;GOTO Delay2
	;DECFSZ	  Delay2,1
	;GOTO Delay2

	;goto MainLoop
	
	;CLRF Delay1
	;CLRF Delay2
;MainLoop:
	;BTG PORTB,RB0 ;Toggle PORT B PIN 0 (33)

;Delay:
	;DECFSZ    Delay1,1 ;Decrement Delay1 by 1, skip next instruction if Delay1 is 0 
	;GOTO Delay
	;DECFSZ	  Delay2,1
	;GOTO Delay

	;GOTO MainLoop
end