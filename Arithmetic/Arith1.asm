;******************************************************************************
;                                                                             *
;    Filename:                                                                *
;    Date:                                                                    *
;    File Version:                                                            *
;                                                                             *
;    Author:                                                                  *
;    Company:                                                                 *
;                                                                             * 
;******************************************************************************
;                                                                             *
;    Files Required: P18F2550.INC                                             *
;                                                                             *
;******************************************************************************

	LIST P=18F2550		;directive to define processor
	#include <P18F2550.INC>	;processor specific variable definitions

;******************************************************************************
;Configuration bits
;Microchip has changed the format for defining the configuration bits, please 
;see the .inc file for futher details on notation.  Below are a few examples.



;   Oscillator Selection:
    CONFIG	FOSC = XT_XT         ;XT oscillator, XT used by USB

;******************************************************************************
;EEPROM data
; Data to be programmed into the Data EEPROM is defined here

		ORG	0xf00000

		;DE	"Test Data",0,1,2,3,4,5
		L_Byte	EQU	0x6		
		H_Byte	EQU	0x7	

;******************************************************************************
;Reset vector
; This code will start executing when a reset occurs.

		ORG	0x0000

		goto	Main		;go to start of main code

;******************************************************************************
;Start of main program
; The main program code is placed here.

Main:

;	*** main code goes here ***

	
			
			MOVLW	0		
			MOVWF	H_Byte
			ADDWF	0x40,W
			DAW				
			BNC		N_1	
			INCF	H_Byte,F
		N_1	ADDWF 	0x41,W
			DAW				
			BNC		N_2	
			INCF	H_Byte,F
		N_2	ADDWF 	0x42,W
			DAW				
			BNC		N_3	
			INCF	H_Byte
		N_3	ADDWF 	0x43,W
			DAW				
			BNC		N_4	
			INCF	H_Byte,F
		N_4	MOVWF 	L_Byte
;******************************************************************************
;End of program

		END