#include <xc.h>
#include <stdio.h>

#define _XTAL_FREQ 20000000 // 20MHz Clock

#pragma config BOREN = ON, CPD = OFF, FOSC = HS, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

void init()
{
	// RB1 = 1 and RB2 = 0
	TRISB = 0x01;
}

int main()
{
	init();

	while( 1 ){
		PORTBbits.RB2 = 1;
		__delay_ms(100);
		PORTBbits.RB2 = 0;
		__delay_ms(100);
	}
	
	return 0;
}