GLOBAL Delay255
GLOBAL Delay30
GLOBAL Delay15
GLOBAL Delay5
GLOBAL Delay3
GLOBAL Delay1
GLOBAL uDelay

UDATA
count1         RES 1       ;variable used in delay routines.
counta         RES 1       ;variable used in delay routines.
countb         RES 1       ;variable used in delay routines.
ucount			RES	1

;******************** Subroutines **********************
CODE
;______________________________________________________________________________________________
;Delays originated here: http://www.winpicprog.co.uk/pic_tutorial3.htm
;All delays here assume a 4Mhz clock.
Delay255
        movlw   .255            ;delay 255ms.
        goto    d0
Delay30
        movlw   .30             ;delay 30mS.
        goto    d0
Delay15	
		movlw	.15
		goto	d0
Delay5
        movlw   .5              ;delay 5ms.
        goto    d0
Delay3
        movlw   .3              ;delay 3ms.
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
;--------------------------------------------------------------

uDelay
		movwf	ucount
u0
		nop
		nop
		decfsz	ucount, f
		goto	u0
		return

END