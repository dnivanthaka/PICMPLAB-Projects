#include <xc.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define _XTAL_FREQ 20000000 // 20MHz Clock

#pragma config BOREN = ON, CPD = OFF, FOSC = HS, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

bit data_read = 0, tmp;

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

	//INTCONbits.GIE = 1;

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
	
}

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

void interrupt tc_int()
{
	if( TMR0IE && TMR0IF ){
		TMR0IF = 0;
		TMR0 = 0;

		TX_poll('Y');
		return;
	}
}

void dht11_start_signal()
{
	TRISA = 0x00;
	PORTA = 0x00;

	__delay_ms(25);
	
	PORTA = 0x01;

	__delay_us(30);

	TRISA = 0x01;
}

uint8_t dht11_response()
{
	//while( !RA0 );
	//while( RA0 );
	//while( !RA0 );
	//__delay_us(80);
	//asm("btfsc PORTA, 0");
	//asm("goto $-1");

	//asm("btfss PORTA, 0");
	//asm("goto $-1");
	while( RA0 );
	while( !RA0 );

	__delay_us(80);	

	return 1;
}
/*
void dht11_read_data()
{
	uint8_t data = 0;
	//char buff[10];
	//for(int j=0;j<6;j++){
	
		for(int i=7;i>=0;i--){
			//while( !RA0 );
			while( RA0 == 1 );
			while( RA0 == 0 );
			__delay_us(30);
			if( RA0 ){
				data |= 1 << i;
			}else{
				data |= 0 << i;
			}
			//TMR0 = 0;
			//while( RA0 );
			//while( !RA0 );
			
			// 3.2 * 10 = 32us 62
			//if( TMR0 > 15 ){
				//data |= 1 << i;
			//}else{
				//data |= 0 << i;
			//}
			//data = TMR0;
			//break;
		}
	//}
	//data = 25;
	//itoa(buff, data, 10);
	//TX_printline(&buff);
}
*/

uint8_t dht11_read_byte()
{
	uint8_t data = 0;

	for(int i=7;i>=0;i--){
		while( RA0 );
		while( !RA0 );
		__delay_us(30);
		if( RA0 ){
			data |= 1 << i;
		}else{
			data |= 0 << i;
		}
	}
	return data;
}


int main()
{
	char *rh_str = "Relative Humidity : ";
	char *tp_str = "Temperature : ";

	char buff[4];
	char ch;
	uint8_t rh_i_byte, rh_d_byte, tp_i_byte, tp_d_byte, checksum;

	init();
	//TRISE = 0x01;
	//TRISA = 0x01;
	//ADCON1 = 0x06;
	//RE0 = 1;
	//itoa(buff, 1234, 10);

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
		dht11_start_signal();
		dht11_response();
		//dht11_read_data();
		rh_i_byte = dht11_read_byte();
		rh_d_byte = dht11_read_byte();
		tp_i_byte = dht11_read_byte();
		tp_d_byte = dht11_read_byte();
		checksum  = dht11_read_byte();

		//itoa(buff, tmp1 + tmp2 + tmp3 + tmp4, 10);
		//TX_printline(&buff);
		TX_newline();
		TX_print(rh_str);
		itoa(buff, rh_i_byte, 10);
		TX_printline(&buff);

		//TX_newline();
		TX_print(tp_str);
		itoa(buff, tp_i_byte, 10);
		TX_printline(&buff);
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