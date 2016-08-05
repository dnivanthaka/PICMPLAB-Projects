; TEST01.ASM
;
;                 Programme de test du PIC18F4550 N° 1
;
;                        (C) CHAMOUARD 2008
;              (Libre de droits pour utilisation non 
;               commerciale et à vos propres risques)

; Clignotement des LEDs sur le port RB
;
; Le circuit correspond au montage le plus simple pour le 18F4550 :
;	- quartz 20 MHz avec ses deux capacités de 10 pF
;	- _MCLR tirée au +5V
;	- Alimentation et découplage de 100 nF et 47µF
;	- 470 nF sur Vusb
; Le port B correspond à un compteur binaire le LSB (RB0 broche 33) commutant
; 	tous les 3*256*256 cycles (environ) soit 0,04 s 
;	et le MSB (RB7 broche 40) tous les 3*256*256*128 cycles (environ) soit 5 s
;	donc une période de 10 s.

	LIST P=18F4550, F=INHX32

	#include "P18F4550.INC"

    CONFIG	FOSC=HS					; HS oscillator, HS used by USB
	CONFIG	PWRT=ON					; Power on timer
	CONFIG	BOR=OFF					; Brown out off
	CONFIG	WDT=OFF					; Watch dog off
	CONFIG	PBADEN=OFF				; Port B en digital IO
	CONFIG	LVP=OFF					; Pas de prog single supply
	CONFIG	ICPRT=OFF				; Port de debug off
	CONFIG	DEBUG=OFF				; Debug off

	constant	RFAST=H'0008'
	constant	RSLOW=H'0009'

	org		0
	goto	Debut

	org		10
Debut
	movlw	0
	movwf	LATB
	movwf	TRISB					; PortB en sortie
	movwf	RFAST
	movwf	RSLOW

Boucle
	incfsz	RFAST, 1				; Increment du premier registre
	goto	Boucle
	incfsz	RSLOW, 1				; Increment du second registre
	goto	Boucle
	incf	LATB, 1					; Increment du port B (via le latch)
	goto	Boucle

	end

