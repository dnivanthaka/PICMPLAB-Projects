#include <xc.h>
//#include <stdio.h>
//#include <stdlib.h>
#include <stdint.h>
//#include <math.h>


#define _XTAL_FREQ 20000000 // 20MHz Clock
#define SS RC6

#pragma config BOREN = ON, CPD = OFF, FOSC = HS, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

//uint8_t data[5];


void ssp_init()
{
	// Clock pin
	TRISCbits.TRISC3 = 0;
	// Input Pin
	TRISCbits.TRISC4 = 1;
	// Output Pin
	TRISCbits.TRISC5 = 0;

	// SS Pin
	TRISCbits.TRISC6 = 0;
	// Mode 1,1 SPI, Middle of output time sampling
	SSPSTAT = 0x40;
	// SPI Master mode, 1/16 Tosc bit, SSP On
	SSPCON  = 0x31;
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


void init()
{
	// RB1 = 1 and RB2 = 0, RB7 = 1
	TRISB = 0x81;
	//TRISE = 0x00;
	// Setting RE0 as high impedence
	//TRISA = 0x01;
	// Disabling A2D convertor
	ADCON1 = 0x06;

	//Setting PORTC as Outputs
	//TRISC = 0x00;
	//PORTC = 0x00;

	// Turning on TMR2
	//T2CONbits.TMR2ON = 1;

	// Setting PORTB pin 1 as input
	//TRISB = 0x02;
	//PORTB = 0x00;

	__delay_ms(10);

	//OPTION_REGbits.T0CS = 0;
	//OPTION_REGbits.T0SE = 0;
	//OPTION_REGbits.PSA  = 0;

	//1:2 Ratio
	//OPTION_REGbits.PS0  = 0;
	//OPTION_REGbits.PS1  = 0;
	//OPTION_REGbits.PS2  = 1;


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

void set_speed(uint8_t sp)
{
	if( sp == 1 ){
		CCPR1L = 32;
	}else if( sp == 2 ){
		CCPR1L = 64;
	}else if( sp == 3 ){
		CCPR1L = 96;
	}else if( sp == 4 ){
		CCPR1L = 127;
	}
}

void write_eeprom( uint8_t adr, uint8_t dta )
{
	while( EECON1bits.WR == 1 );

	EEADR = adr;
	EEDATA = dta;

	// Accessing Data Memory
	EECON1bits.EEPGD = 0;
	EECON1bits.WREN  = 1;
	di();
	//asm("movlw 0x55");
	//asm("movwf EECON2");
	//asm("movlw 0xAA");
	//asm("movwf EECON2");
	EECON2 = 0x55;
	EECON2 = 0xAA;
	EECON1bits.WR = 1;
	//asm("bsf EECON1, 2");
	ei();
	EECON1bits.WREN  = 0;
	//__delay_ms(20);
	while( PIR2bits.EEIF == 0 );
	PIR2bits.EEIF = 0;
	
}

uint8_t read_eeprom( uint8_t adr )
{
	uint8_t tmp;

	EEADR = adr;

	// Accessing Data Memory
	EECON1bits.EEPGD = 0;
	//EECON1bits.WREN  = 1;

	EECON1bits.RD = 1;

	//tmp = EEDATA;
	return EEDATA;
}

int main()
{
	//char *text = "Counting: ";
	uint8_t button_pressed = 0;
	uint8_t i = 0, j, tmp;

	init();
	ssp_init();
	write_eeprom( 0x00, 0x08 );
	//write_eeprom( 0x01, 0x04 );
	j = read_eeprom( 0x00 );
	//tmp = 0x08;
	//j = 0x08;
	
	
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

	while( 1 ){
		SS = 0;
		//SSPBUF = 1 << i;
		SSPBUF = j;
		while( SSPSTATbits.BF == 0 );
		tmp = SSPBUF;
		RB2 = 0x01;
		SS = 1;
		i++;
		if( i > 3 )
			i = 0;

		j = 0x00;
		j = read_eeprom( 0x00 );
		
		/*
		if( !button_pressed && debounce_lo( RB1 ) ){
			RB2 = 0x01;

			//tea5767_search();
			button_pressed = 1;
			//f = (float)tea5767_tuned_freq() / 10;
			//hd44780_printdecimal( f, 0 );
			//print_freq();
			//print_signal_level();
		}else{
			RB2 = 0x00;
			if(!debounce_lo( RB1 ))
				button_pressed = 0;
		}
		*/
		//send_data( 0xFF );
		//read_data();
		
		
		__delay_ms(500);
	}
	
	return 0;
}