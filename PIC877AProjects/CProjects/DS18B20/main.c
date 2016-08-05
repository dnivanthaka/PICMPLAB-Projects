#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include "serial.h"
#include "ds18b20.h"

#define _XTAL_FREQ 20000000 // 20MHz Clock

#pragma config BOREN = ON, CPD = OFF, FOSC = HS, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

//bit data_read = 0, tmp;

//uint8_t data[5];

void init()
{
	// RB1 = 1 and RB2 = 0, RB7 = 1
	//TRISB = 0x81;
	//TRISE = 0x00;
	// Setting RE0 as high impedence
	TRISA = 0x01;
	// Disabling A2D convertor
	ADCON1 = 0x06;
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

	serial_init();

	//INTCONbits.GIE = 1;
	/*
	// Clearing out Transmission and Receive Registers
	asm("banksel TXREG");
	asm("clrf TXREG");
	asm("banksel RCREG");
	asm("clrf RCREG");

	// Setting Baudrate of 19200
	asm("banksel SPBRG");
	asm("movlw 0x40");
	asm("movwf SPBRG");

	// Transmission Mode, Asynchronous, 8N1 format
	asm("banksel TXSTA");
	asm("movlw 0x24");
	asm("movwf TXSTA");

	// USART Enabled
	asm("banksel RCSTA");
	asm("movlw	0x90");
	asm("movwf	RCSTA");
	*/
}
/*
void TX_poll(char val)
{
	while( PIR1bits.TXIF == 0 );

	TXREG = val;
}

char RX_poll()
{
	char ch;

	while( PIR1bits.RCIF == 0 );

	ch = RCREG;
	return ch;
}

void TX_print( char *str )
{
	while( *(str) != '\0' ){
		TX_poll( *str );
		str = str++;
	}
}

void TX_printline( char *str )
{
	TX_print( str );

	//\r
	TX_poll( 0x0D );
	//\n
	TX_poll( 0x0A );
}

void TX_newline()
{
	//\r
	TX_poll( 0x0D );
	//\n
	TX_poll( 0x0A );
}

void RX_readline(char *buff)
{
	char ch;
	char i = 0;

	while( (ch = RX_poll()) != 0x0D ){
		buff[i] = ch;
		TX_poll(ch);
		//buff++;
		//i++;
	}

	buff[i] = '\0';
}
*/
void interrupt tc_int()
{
	if( TMR0IE && TMR0IF ){
		TMR0IF = 0;
		TMR0 = 0;

		//TX_poll('Y');
		return;
	}
}
/*
uint8_t ds18b20_init()
{
	uint8_t ok = 0;

	TRISA = 0x01;
	__delay_us(1);

	RA0 = 0;
	TRISA = 0x00;
	//PORTA = 0x00;

	__delay_us(480);

	TRISA = 0x01;

	//__delay_us(60);
	__delay_us(80);

	if( !RA0 ){
		ok = 1;
	}else{
		ok = 0;
	}

	__delay_us(400);
	return ok;
}

void ds18b20_write_byte( uint8_t dta )
{
	for( int i=0;i<8;i++ ){
		//if( (dta >> i & 0x01) == 0 ){
		if( (dta & 0x01) == 0 ){
			// Setting port as output
			RA0 = 0;
			TRISA = 0x00;

			__delay_us(60);
			// Releasing the line for pullup
			TRISA = 0x01;
			// 1us recovery time
			__delay_us(2);
		}else{
			// Setting port as output
			RA0 = 0;
			TRISA = 0x00;

			__delay_us(10);
			// Releasing the line for pullup
			TRISA = 0x01;
			__delay_us(50);
			// 1us recovery time
			__delay_us(2);
		}

		dta = dta >> 1;
	}
}

uint8_t ds18b20_read_byte()
{
	uint8_t dta = 0;

	for( int i=0;i<8;i++ ){
		// read time slot generation
		RA0 = 0;
		TRISA = 0x00;

		__delay_us(2);
		TRISA = 0x01;
		__delay_us(10);
		if( RA0 ){
			dta |= 1 << i;
		}else{
			dta |= 0 << i;
		}

		__delay_us(50);
		// 1us recovery time
		__delay_us(2);
	}
	return dta;
}

uint8_t ds18b20_busy()
{
	uint8_t busy = 0;

	// read time slot generation
	RA0 = 0;
	TRISA = 0x00;

	__delay_us(2);
	TRISA = 0x01;
	__delay_us(10);
	if( !RA0 ){
		busy = 1;
	}else{
		busy = 0;
	}

	__delay_us(50);
	// 1us recovery time
	__delay_us(2);

	//__delay_us(100);

	return busy;
}
*/

int main()
{
	char *rh_str = "Relative Humidity : ";
	char *tp_str = "Temperature : ";

	char buff[4];
	char ch;
	uint8_t res, b1, b2, b3, b4, b5;

	init();
	//TRISE = 0x01;
	//TRISA = 0x01;
	//ADCON1 = 0x06;
	//RE0 = 1;
	//itoa(buff, 1234, 10);

	__delay_ms(1000);
	//dht11_read();
	res = ds18b20_init();
	if(res == 1){
		serial_tx_printline( "OK" );
	}
	ds18b20_write_byte( 0xCC );
	ds18b20_write_byte( 0x44 );

	//TRISA = 0x01;
	//while( !RA0 );
	while( ds18b20_busy() == 1 );

	//res = ds18b20_init();

	//ds18b20_write_byte( 0xCC );
	//ds18b20_write_byte( 0x4E );
	//ds18b20_write_byte( 0x00 );
	//ds18b20_write_byte( 0x00 );
	//ds18b20_write_byte( 0x00 );	

	while( 1 ){
		//str2 = malloc();
		//PORTBbits.RB2 = 1;
		//__delay_ms(100);
		//PORTBbits.RB2 = 0;
		//TX_poll('X');
		//TX_printline( str );
		//RX_readline(&buff);
		//TX_printline(&buff);
		//ch = RX_poll();
		//TX_poll(ch);
		//PORTAbits.RA0 = 1;
		//char * str = "This is a String 123";
		__delay_ms(1000);
		//dht11_read();
		res = ds18b20_init();
		if(res == 1){
			serial_tx_printline( "OK" );
		}
		ds18b20_write_byte( 0xCC );
		ds18b20_write_byte( 0x44 );
		
		//while( !RA0 );

		//res = ds18b20_init();
		//if(res == 1){
			//TX_printline( "OK" );
		//}
		//ds18b20_write_byte( 0xCC );
		//ds18b20_write_byte( 0x44 );

		while( ds18b20_busy() == 1 );

		//__delay_ms(600);

		//while( !RA0 );

		//res = ds18b20_init();
		//if(res == 1){
			//TX_printline( "OK" );
		//}
		//ds18b20_write_byte( 0xCC );
		//ds18b20_write_byte( 0x44 );

		//__delay_ms(300);


		//res = ds18b20_init();
		

		//ds18b20_write_byte( 0xCC );
		//ds18b20_write_byte( 0xB4 );
		//res = ds18b20_busy();

		//if(res == 1){
			//TX_printline( "PARA" );
		//}else{
			//TX_printline( "EXT" );
		//}


		res = ds18b20_init();
		

		ds18b20_write_byte( 0xCC );
		ds18b20_write_byte( 0xBE );

		//__delay_ms(100);
		//while( ds18b20_busy() == 1 );
		//ds18b20_write_byte( 0x33 );

		b1 = ds18b20_read_byte();
		b2 = ds18b20_read_byte();
		b3 = ds18b20_read_byte();
		b4 = ds18b20_read_byte();
		b5 = ds18b20_read_byte();
		ds18b20_read_byte();
		ds18b20_read_byte();
		ds18b20_read_byte();
		ds18b20_read_byte();

		//ds18b20_init();
		
		//itoa(buff, tmp1 + tmp2 + tmp3 + tmp4, 10);
		//TX_printline(&buff);
		//TX_newline();
		//TX_print(rh_str);
		//itoa(buff, rh_i_byte, 10);
		//TX_printline(&buff);

		serial_tx_newline();
		serial_tx_print(tp_str);
		itoa(buff, ((b1 >> 4) & 0x0F) | ((b2 & 0x07) << 4), 10);
		//itoa(buff, b1, 10);
		//itoa(buff, b1, 16);
		serial_tx_printline(&buff);
		b1 = 0;
		b2 = 0;
		b3 = 0;
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
		__delay_ms(1000);
	}
	
	return 0;
}