#ifndef __I2C_H__
#define __I2C_H__

#include <stdint.h>

#define _XTAL_FREQ 20000000 // 20MHz Clock
#define BAUD	100   // In kbps
#define FOSC_SPEED	20000 // Oscillator clock in Khz

void i2c_init();
void i2c_start();
void i2c_stop();
void i2c_send_controlbyte( uint8_t addr, uint8_t rw_bit );
void i2c_send_data( uint8_t dta );
uint8_t i2c_read_data();
void i2c_send_repstart();
void i2c_send_ack();
void i2c_send_nack();
#endif