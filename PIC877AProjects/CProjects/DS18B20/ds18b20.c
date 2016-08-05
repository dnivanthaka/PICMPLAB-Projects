#include <xc.h>
#include <stdint.h>

#include "ds18b20.h"

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