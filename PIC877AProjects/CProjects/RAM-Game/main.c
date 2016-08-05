#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


#define _XTAL_FREQ 20000000 // 20MHz Clock

#pragma config BOREN = ON, CPD = OFF, FOSC = HS, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

//bit data_read = 0, tmp;

//uint8_t data[5];

#define LED1 RA0
#define LED2 RA1
#define LED3 RA2
#define LED4 RA3
#define SPK  RA5

//bit LEDS[] = {RA0};

void init()
{
	ADCON1 = 0x06;
	// Setting PORTA as output
	TRISA = 0x00;
	// Disabling A2D convertor

	PORTA = 0x00;
	// Setting TMR0, 1:16 => 1 tick = 200 * 16ns = 3.2us
	//OPTION_REG = 0 << 5 | 0 << 4 | 0 << 3 | 0b000;
	OPTION_REGbits.T0CS = 0;
	OPTION_REGbits.T0SE = 0;
	OPTION_REGbits.PSA  = 0;

	//1:2 Ratio
	OPTION_REGbits.PS0  = 0;
	OPTION_REGbits.PS1  = 0;
	OPTION_REGbits.PS2  = 1;

	//INTCONbits.GIE = 1;
}

void interrupt tc_int()
{
	if( TMR0IE && TMR0IF ){
		TMR0IF = 0;
		TMR0 = 0;

		//TX_poll('Y');
		return;
	}
}

void beep()
{
	SPK = 1;
	__delay_ms(100);
	SPK = 0;
}

void getready()
{
	beep();
	LED1 = 1;
	__delay_ms(200);
	beep();
	LED2 = 1;
	__delay_ms(200);
	beep();
	LED3 = 1;
	__delay_ms(200);
	beep();
	LED4 = 1;
	__delay_ms(200);
	LED1 = 0;
	LED2 = 0;
	LED3 = 0;
	LED4 = 0;
}

void playtune()
{
	// 1 = 10, 2 = 50, 3 = 100, 4 = 200
	uint8_t bitstream[] = {2, 0, 3, 2, 3, 0};

	for(int i=0;i<6;i++){
		SPK = 1;
		if(bitstream[i] == 0){
			__delay_ms(0);
		}
		if(bitstream[i] == 1){
			__delay_ms(50);
		}
		if(bitstream[i] == 2){
			__delay_ms(100);
		}
		if(bitstream[i] == 3){
			__delay_ms(200);
		}
		SPK = 0;
		__delay_ms(200);
	}
}

void main(void)
{
	//int LEDS[] = { LED1, LED2, LED3, LED4 };
	init();
	//int *p = LED1;
	getready();
	playtune();
	while(1){
		for( int i=0;i<4;i++ ){
			//*p = 1;
			//LED4 = 1;
			//LED3 = 1;
			__delay_ms(200);
			//LED1 + 1 = 1;
			//beep();
		}
	}
}