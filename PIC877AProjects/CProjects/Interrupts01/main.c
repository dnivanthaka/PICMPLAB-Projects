#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define _XTAL_FREQ 20000000 // 20MHz Clock

#pragma config BOREN = ON, CPD = OFF, FOSC = HS, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

volatile union {
	uint8_t port;
	struct{
		unsigned RB0	:1;
		unsigned RB1	:1;
		unsigned RB2	:1;
		unsigned RB3	:1;
		unsigned RB4	:1;
		unsigned RB5	:1;
		unsigned RB6	:1;
		unsigned RB7	:1;
	};
}sPORTB;

void init()
{
	// RB1 = 1 and RB2 = 0, RB7 = 1
	//TRISB = 0x81;
	//TRISE = 0x00;
	// Setting RE0 as high impedence
	TRISB = 0x00;
	// Disabling A2D convertor
	ADCON1 = 0x06;
	PORTB = 0x00;
	sPORTB.port = 0;
	// Setting TMR0, 1:16 => 1 tick = 200 * 16ns = 3.2us
	//OPTION_REG = 0 << 5 | 0 << 4 | 0 << 3 | 0b000;
	OPTION_REGbits.T0CS = 0;
	OPTION_REGbits.T0SE = 0;
	OPTION_REGbits.PSA  = 0;

	//1:2 Ratio
	OPTION_REGbits.PS0  = 1;
	OPTION_REGbits.PS1  = 1;
	OPTION_REGbits.PS2  = 1;

	//INTCONbits.GIE      = 1;
	INTCONbits.TMR0IE   = 1;
	// Enabling Global Interrupts
	ei();
}

void interrupt isr(void)
{
	static uint8_t count = 0;

	if( count == 0 ){
		sPORTB.RB2 = ~sPORTB.RB2;
	}


	if( TMR0IE && TMR0IF ){
		TMR0IF = 0;
		TMR0 = 0;

		//sPORTB.RB2 = ~sPORTB.RB2;
		//sPORTB.RB2 = 0;
		count++;

		return;
	}
}

int main()
{
	//char *str = "This is a String 123";
	//char buff[10];
	//char ch;

	init();
	//ADCON1 = 0x06;
	//RE0 = 1;
	//itoa(buff, 1234, 10);
	//sPORTB.RB2 = 1;

	while( 1 ){
	
		//PORTAbits.RA0 = 1;
		//char * str = "This is a String 123";
		//__delay_ms(1000);
		//dht11_read();
		//if( PORTAbits.RA0 == 1 ){
			//TX_poll('Z');
		//}else{
			//TX_poll('P');
		//}
		//PORTEbits.RE0 = 1;
		//data_read = 0;
		//TMR0 = 0;
		//__delay_us(200);
		//PORTAbits.RA0 = 0;
		//itoa(buff, TMR0, 10);
		//TX_printline(&buff);
		//__delay_ms(1000);
		PORTB = sPORTB.port;
		//__delay_ms(100);
	}
	
	return 0;
}