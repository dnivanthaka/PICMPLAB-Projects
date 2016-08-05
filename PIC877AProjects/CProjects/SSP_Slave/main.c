#include <xc.h>
//#include <stdio.h>
//#include <stdlib.h>
#include <stdint.h>
//#include <math.h>


#define _XTAL_FREQ 20000000 // 20MHz Clock

#define SS RC6

#pragma config BOREN = ON, FOSC = HS, CPD = OFF, WDTE = OFF, CP = OFF, PWRTE = ON

//uint8_t data[5];


void ssp_init()
{
	// Clock pin
	TRISBbits.TRISB6 = 1;
	// Input Pin
	TRISBbits.TRISB4 = 1;
	// Output Pin
	TRISCbits.TRISC7 = 0;
	// SS Pin
	TRISCbits.TRISC6 = 1;
	// Mode 1,1 SPI, Middle of output time sampling
	SSPSTAT = 0x40;
	// SPI Slave mode, 1/16 Tosc bit, SSP On
	SSPCON  = 0x34;
	//SSPCON  = 0x35;
}

void ssp_select_device( uint8_t pin )
{
	//Pulldown
	pin = 0;
}

void ssp_deselect_device( uint8_t pin )
{
	//Pullup
	pin = 1;
}

void send_data( uint8_t dta )
{
	SSPBUF = dta;
	while( !SSPSTATbits.BF );
}

uint8_t read_data()
{
	uint8_t dta;

	dta = SSPBUF;
	return dta;
}

void send_transaction( uint8_t dta, uint8_t pin )
{
	while( !SSPSTATbits.BF );
	pin = 0;
	SSPBUF = dta;
	while( !SSPSTATbits.BF );
	dta = SSPBUF;
	pin = 1;
}

uint8_t read_transaction( uint8_t pin )
{
	uint8_t tmp = 0;

	//while( pin );
	//while( !SSPSTATbits.BF );
	SSPBUF = 0x00;
	while( !SSPSTATbits.BF );
	tmp = SSPBUF;
	//while( !pin );

	return tmp;
}

void init()
{
	//OSCCONbits.IRCF0 = 1;
	//OSCCONbits.IRCF1 = 1;
	//OSCCONbits.IRCF2 = 1;
	// RB1 = 1 and RB2 = 0, RB7 = 1
	//TRISB = 0x81;
	//TRISE = 0x00;
	// Setting RE0 as high impedence
	//TRISA = 0x01;
	// Disabling A2D convertor
	//ADCON0 = 0x00;

	//Setting PORTC as Outputs
	//TRISC = 0x00;
	//PORTC = 0x00;

	// Turning on TMR2
	//T2CONbits.TMR2ON = 1;

	// Setting PORTB pin 1 as input
	//TRISB = 0x02;
	//PORTB = 0x00;

	//__delay_ms(10);

	//OPTION_REGbits.T0CS = 0;
	//OPTION_REGbits.T0SE = 0;
	//OPTION_REGbits.PSA  = 0;

	//1:2 Ratio
	//OPTION_REGbits.PS0  = 0;
	//OPTION_REGbits.PS1  = 0;
	//OPTION_REGbits.PS2  = 1;


	//INTCONbits.GIE = 1;
	ANSEL = 0x00;
	ANSELH = 0x00;
	PORTC = 0x00;
	//TRISC = 0x00;
	TRISC = 0x00;
	//TRISCbits.TRISC6 = 1;
}
/*
void interrupt tc_int()
{
	if( TMR0IE && TMR0IF ){
		TMR0IF = 0;
		TMR0 = 0;

		//TX_poll('Y');
		return;
	}
}
*/

uint8_t debounce_lo( uint8_t prt )
{
	uint8_t count = 0;

	if( !prt ){
		while( !prt && count < 10 ){
			__delay_ms(1);
			count++;
		}
		if( count == 10 )
			return 1;
	}
	return 0;
}


int main()
{
	//char *text = "Counting: ";
	uint8_t button_pressed = 0;
	uint8_t i, tmp = 0x00;

	init();
	ssp_init();
	
	//TRISE = 0x01;
	//TRISA = 0x01;
	//ADCON1 = 0x06;
	//RE0 = 1;
	//itoa(buff, 1234, 10);

	//__delay_ms(1000);
	//dht11_read();

	//TRISA = 0x01;
	//while( !RA0 );
	//PORTCbits.RC6 = 1;
	//CCPR1L = 64;
	//PORTC = 0xFF;

	while( 1 ){

		//PORTC = 1 << i;
		//i++;
		//if( i > 3 )
			//i =  0;
		//send_data( 0x00 );
		//tmp = read_data();
		//PORTC = tmp;
		//while( SS == 1 );
		//PORTC = 1;
		//if( SS == 1 ){
			//PORTC = 1;
		//}else{
			//PORTC = 0;
		//}
		//SSPBUF = 0x00;
		//while( SSPSTATbits.BF == 0 );
		//tmp = SSPBUF;
		tmp = read_transaction( SS );
		PORTC = tmp;
		//while( SS == 0 );
		//PORTC = 1;
	
		//__delay_ms(1000);
		//dht11_read();
		
		//data_read = 0;
		//TMR0 = 0;
		//__delay_us(200);
		//PORTAbits.RA0 = 0;
		//itoa(buff, TMR0, 10);
		//TX_printline(&buff);
		//__delay_ms(1000);
		
		//hd44780_newline();
		//hd44780_write( 0b00100001 );
		//hd44780_char( 0b10100101 );
		//hd44780_write( 223 );
	
		
		//__delay_ms(500);
	}
	
	return 0;
}