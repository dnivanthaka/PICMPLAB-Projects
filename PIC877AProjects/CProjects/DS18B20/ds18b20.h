#ifndef __DS18B20_H__
#define __DS18B20_H__

#define _XTAL_FREQ 20000000 // 20MHz Clock

uint8_t ds18b20_init();
void ds18b20_write_byte( uint8_t dta );
uint8_t ds18b20_read_byte();
uint8_t ds18b20_busy();

#endif