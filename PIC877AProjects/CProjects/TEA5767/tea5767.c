#include <xc.h>
#include <math.h>
//#include <stdio.h>

#include "i2c.h"
#include "serial.h"
#include "tea5767.h"

//#include "hd44780.h"

void
tea5767_init()
{
	// Wait for stabilization
	__delay_ms(100);
	//starting_freq = 87.0;
	current_freq = 87.0;
	unsigned int pll = tea5767_getpll( current_freq );
	
	commandbytes[0] = (pll >> 8);
	commandbytes[1] = pll & 0xFF;
	//commandbytes[2] = 0xB0;
	commandbytes[2] = 0xD0;
	commandbytes[3] = 0x10;
	commandbytes[4] = 0x00;

	tea5767_write();
}

unsigned int
tea5767_getpll( double freq )
{
	return (unsigned int)(4 * ( freq * 1000000 + 225000 ) / 32768);
}


double
tea5767_getfreq( uint8_t byte1, uint8_t byte2 )
{
	double dta = (ceil(ceil(((byte1 & 0x3F) << 8) + byte2) * 32768 / 4 - 225000) / 1000000);
	return dta;
}

double
tea5767_round_freq( double freq )
{
   //double d = freq * 10;
   double d = freq * 10;
   d = ceil(d);
   //d = trunc(d);
   //int f = (int)d;
   //d = 0.0;
   //d = ((double)f) / 10.0;
   //d = f;
   d = d / 10.0;
   return d;
   //return freq;
   //return ((float)f) + ( ((float)j) / 10 );
}




void
tea5767_tune( double freq )
{
	//uint8_t readbytes[5] = {0};

	unsigned int pll = tea5767_getpll( freq );
	current_freq = freq;

	commandbytes[0] = (pll >> 8);
	commandbytes[0] &= ~SM_ON;
    commandbytes[0] &= ~MUTE_ON;
	commandbytes[1] = pll & 0xFF;

	tea5767_write();
	
	//tea5767_read( );
	//tea5767_read_info( readbytes );
	//tea5767_read_info();
}

void
tea5767_read_info()
{
	//current_freq = tea5767_round_freq(
		//tea5767_getfreq( *(bytes + 0), *(bytes + 1) ));
	//tuned.signal_level = (*(bytes + 3) >> 4) & 0x0F;
	//tuned.mode = (*(bytes + 2) & 0x80);

	//hd44780_printdecimal( current_freq, 0 );
}

int
tea5767_tuned_freq()
{
	double tmp = current_freq;
	//tmp = trunc(tmp * 100);
	//int i = (int)tmp;
	int d = (int)tmp;
	int f = ((int)trunc((tmp) * 10)) - (d * 10);

	//return current_freq;
	//return fmod()
	return ((d * 10) + f);
}

uint8_t
tea5767_signal_level()
{
	return ((responsebytes[3] >> 4) & 0x0F);
}

uint8_t
tea5767_mode()
{
	//uint8_t i = ((responsebytes[2] & 0x80) > 0) ? 1 : 0;
	return ((responsebytes[2] & 0x80) > 0) ? 1 : 0;
}

void
tea5767_write()
{
	int i;

	i2c_start();
	i2c_send_controlbyte( 0x60, 0 );

	//if( SSPCON2bits.ACKSTAT == 1 ){
		//serial_tx_printline( "No Control Data ACK from slave" );
	//}

	//for(i=0;i<5;i++){
		i2c_send_data( commandbytes[0] );
		i2c_send_data( commandbytes[1] );
		i2c_send_data( commandbytes[2] );
		i2c_send_data( commandbytes[3] );
		i2c_send_data( commandbytes[4] );
	//}

	if( SSPCON2bits.ACKSTAT == 1 ){
			serial_tx_printline( "No Data ACK from slave" );
	}

	i2c_stop();
}
/*
void
tea5767_read( uint8_t *bytes )
{
	int i;

	// Reading data
	i2c_start();
	i2c_send_controlbyte( 0x60, 1 );

	if( SSPCON2bits.ACKSTAT == 1 ){
		serial_tx_printline( "No Read Control Data ACK from slave" );
	}

	//for(i=0;i<5;i++){
		//*(bytes + i) = i2c_read_data();
		*(bytes + 0) = i2c_read_data();
		*(bytes + 1) = i2c_read_data();
		*(bytes + 2) = i2c_read_data();
		*(bytes + 3) = i2c_read_data();
		*(bytes + 4) = i2c_read_data();
		//(bytes + i) = i2c_read_data();
	//}
	i2c_send_nack();
	i2c_stop();
}
*/
void
tea5767_read()
{
	int i;
	// Reading data
	i2c_start();
	i2c_send_controlbyte( 0x60, 1 );

	if( SSPCON2bits.ACKSTAT == 1 ){
		serial_tx_printline( "No Read Control Data ACK from slave" );
	}

	//__delay_us(20);

	//for(i=0;i<5;i++){
		//responsebytes[i] = i2c_read_data();
		//i2c_send_ack();
		//__delay_us(1);
		responsebytes[0] = i2c_read_data();
		i2c_send_ack();
		responsebytes[1] = i2c_read_data();
		i2c_send_ack();
		responsebytes[2] = i2c_read_data();
		i2c_send_ack();
		responsebytes[3] = i2c_read_data();
		i2c_send_ack();
		responsebytes[4] = i2c_read_data();
		i2c_send_ack();
		
	//}
		i2c_send_nack();
		i2c_stop();
	
	if( (responsebytes[3] & 0x0F) != 0x00 ){
		serial_tx_printline( "Invalid Chip ID" );
	}
}

void
tea5767_search_up()
{
	commandbytes[2] |= SUD_UP;
	tea5767_search();
}

void
tea5767_search_down()
{
	commandbytes[2] &= ~SUD_UP;
	tea5767_search();
}

void
tea5767_search()
{
	//uint8_t readbytes[5] = {0, 0, 0, 0, 0};
	double prev_freq;

	current_freq += 0.1;

    if( current_freq > 108.0 ){
        current_freq = 87.0;
    }

	unsigned int pll = tea5767_getpll( current_freq );

    commandbytes[0] = (pll >> 8);
    commandbytes[0] |= SM_ON;
    commandbytes[0] |= MUTE_ON;
    commandbytes[1] = (pll & 0xFF);

    tea5767_write();
    //__delay_us(100);

	responsebytes[0] = 0x00;

    //tea5767_read( readbytes );
	tea5767_read();
    //tea5767_tune(tea5767_calculate_freq(&res) + 0.1);
    //while( (readbytes[0] & 0x80) == 0 && (readbytes[0] & 0x40) == 0 ){
	while( (responsebytes[0] & 0x80) == 0 && (responsebytes[0] & 0x40) == 0 ){
        //tea5767_read( readbytes );
		tea5767_read();
		//tea5767_round_freq(
		//tea5767_getfreq( responsebytes[0], responsebytes[1] ));
		//__delay_us(100);    
    }



	serial_tx_printline( "Search Complete" );
	
	//tea5767_read_info( readbytes );

	// This is used to prevent hanging
	//if(tea5767_round_freq(tea5767_getfreq( responsebytes[0], responsebytes[1] )) == current_freq)
		//tea5767_search();
	prev_freq = current_freq;

	current_freq = tea5767_round_freq(
		tea5767_getfreq( responsebytes[0], responsebytes[1] ));

	if( current_freq - prev_freq == 0 ){
		serial_tx_printline( "Same Freq" );
		current_freq += 0.1;
	}


	//commandbytes[0] &= ~SM_ON;
    //commandbytes[0] &= ~MUTE_ON;

	tea5767_tune( current_freq );
	//tea5767_tune( 92.7 );
}