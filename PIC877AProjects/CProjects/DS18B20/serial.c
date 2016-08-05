#include <xc.h>

#include "serial.h"

void serial_init()
{

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

void serial_tx_poll(char val)
{
	while( PIR1bits.TXIF == 0 );

	TXREG = val;
}

char serial_rx_poll()
{
	char ch;

	while( PIR1bits.RCIF == 0 );

	ch = RCREG;
	return ch;
}

void serial_tx_print( char *str )
{
	while( *(str) != '\0' ){
		serial_tx_poll( *str );
		str = str++;
	}
}

void serial_tx_printline( char *str )
{
	serial_tx_print( str );

	//\r
	serial_tx_poll( 0x0D );
	//\n
	serial_tx_poll( 0x0A );
}

void serial_tx_newline()
{
	//\r
	serial_tx_poll( 0x0D );
	//\n
	serial_tx_poll( 0x0A );
}

void serial_rx_readline(char *buff)
{
	char ch;
	char i = 0;

	while( (ch = serial_rx_poll()) != 0x0D ){
		buff[i] = ch;
		serial_tx_poll(ch);
		//buff++;
		//i++;
	}

	buff[i] = '\0';
}