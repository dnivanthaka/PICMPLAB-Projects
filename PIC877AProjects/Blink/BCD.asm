; Switch Routines for PIC877A with a 20Mhz clock
#include    <p16f877a.inc>  ; processor specific variable definitions

GLOBAL bin162bcd


UDATA
d0			RES	1
d1			RES	1
d2			RES	1


;******************** Subroutines **********************
CODE

bcdpack
	clrf	d0
	clrf	d1
	clrf	d2


	return

END