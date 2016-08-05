	LIST P=18F2550, F=INHX32

#include "p18F2550.inc"

    CONFIG WDT=OFF; disable watchdog timer
	CONFIG MCLRE = ON; MCLEAR Pin on
	CONFIG DEBUG = ON; Enable Debug Mode
	CONFIG	PBADEN=OFF				; Port B en digital IO
	CONFIG LVP = OFF; Low-Voltage programming disabled (necessary for debugging)
	CONFIG FOSC = HS;Internal oscillator, port function on RA6 

constant Delay1=H'0008';reserve 1 byte for the variable Delay1
constant Delay2=H'0009';reserve 1 byte for the variable Delay2
	
	org 0; start code at 0
		


Start:
	CLRF PORTB
	CLRF TRISB
	CLRF LATB
	
	CLRF Delay1
	CLRF Delay2
MainLoop:
	;BSF PORTB,RB1 ;Toggle PORT D PIN 1 (20)
	BTG LATB, RB1

Delay:
	INCFSZ		Delay1,1 ;Decrement Delay1 by 1, skip next instruction if Delay1 is 0 
	GOTO		Delay
	INCFSZ		Delay2,1
	GOTO		Delay
	;BCF			PORTB, RB1
	;incf	LATB, 1	
	GOTO MainLoop
	
	end