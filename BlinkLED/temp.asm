CONFIG	FOSC=HS					; HS oscillator, HS used by USB
	CONFIG	PWRT=ON					; Power on timer
	CONFIG	BOR=OFF					; Brown out off
	CONFIG	WDT=OFF					; Watch dog off
	CONFIG	PBADEN=OFF				; Port B en digital IO
	CONFIG	LVP=OFF					; Pas de prog single supply
;	CONFIG	ICPRT=OFF				; Port de debug off
	CONFIG	DEBUG=OFF				; Debug off

	D1		EQU		0x08
	D2		EQU		0x09

	ORG 0x0
	GOTO Init

	ORG 0x10
	
Init
	MOVLW	0
	MOVWF	LATB
	MOVWF	TRISB
	MOVWF	D1
	MOVWF	D2

Loop
	;BCF		PORTB, 1
	BSF		PORTB, 0
	CALL Delay
	BCF		PORTB, 0
	CALL Delay
	;BCF
	BRA Loop	

	;ORG 0x30
Delay
Loop1
	NOP
	NOP
	INCFSZ	D1, 1
	BRA		Loop1
Loop2
	NOP
	NOP
	INCFSZ	D2, 1
	BRA		Loop2
	RETURN
	
	END	