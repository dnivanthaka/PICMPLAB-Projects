#include <xc.h>
#include <stdio.h>

#define _XTAL_FREQ 20000000 // 20MHz Clock

#pragma config BOREN = ON, CPD = OFF, FOSC = HS, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = ON

void init()
{
	// RB1 = 1 and RB2 = 0, RB7 = 1
	TRISB = 0x81;

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

	//asm("banksel PIR1");
	//asm("btfss PIR1, TXIF");
	//asm("goto $-2");
	//while( PIR1bits.TXIF == 0 ){
	
	//}
	while( PIR1bits.TXIF == 0 );

	//asm("banksel TXREG");
	//asm("movlw val");
	//asm("movwf TXREG");
//#asm
	//BANKSEL	TXREG;
	//MOVLW	(val2);
	//MOVWF TXREG;
//#endasm
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
	while( *(++str) != '\0' ){
		TX_poll( *str );
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

int main()
{
	char *str = "This is a String 123";
	char buff[10];
	char ch;

	init();
	

	while( 1 ){
		//str2 = malloc();
		//PORTBbits.RB2 = 1;
		//__delay_ms(100);
		//PORTBbits.RB2 = 0;
		//TX_poll('X');
		//TX_printline( str );
		RX_readline(&buff);
		TX_printline(&buff);
		//ch = RX_poll();
		//TX_poll(ch);
		//char * str = "This is a String 123";
		
		__delay_ms(100);
	}
	
	return 0;
}