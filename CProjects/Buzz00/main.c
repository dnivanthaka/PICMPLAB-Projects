#include <xc.h>

#define _XTAL_FREQ 4000000 // 4MHz Clock

#pragma config BOREN = ON, CPD = OFF, FOSC = XT, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

int main()
{
	TRISA = 0x00;

	while(1){
		RA1 = 0x1;
		__delay_ms(100);
		RA1 = 0x0;
		__delay_ms(900);
	}
	return 0;
}