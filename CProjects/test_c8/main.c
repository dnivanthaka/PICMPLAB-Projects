#include <xc.h>

#define XTAL_FREQ 4000000 // 4MHz Clock

#pragma config BOREN = ON, CPD = OFF, FOSC = XT, MCLRE = ON, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

void delay()
{
	unsigned char i,j;

	for(i=0;i<100;i++){
		for(j=0;j<100;j++){
		
		}
	}
}

int main(void)
{
// Delay routines
// _delay(n), __delay_us(n), __delay_ms(n)
// uint8_t

	TRISB = 0x00;
	
	while(1){
		PORTB = 0b00000001;
		//delay();
		PORTB = 0b00000000;
		delay();
		delay();
	}

	return 0;
}