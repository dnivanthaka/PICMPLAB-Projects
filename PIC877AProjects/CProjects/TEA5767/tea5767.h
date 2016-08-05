#ifndef __TEA5767_H__
#define __TEA5767_H__

#include <stdint.h>

#define _XTAL_FREQ 20000000 // 20MHz Clock

const uint8_t MUTE_ON = 0x80;
const uint8_t SM_ON   = 0x40;
const uint8_t SUD_UP  = 0x80;
const uint8_t STBY    = 1 << 6;

void tea5767_init();
unsigned int tea5767_getpll( double freq );
double tea5767_getfreq( uint8_t byte1, uint8_t byte2 );
double tea5767_round_freq( double freq );
void tea5767_tune( double freq );
void tea5767_write();
void tea5767_read();
void tea5767_search();
void tea5767_search_up();
void tea5767_search_down();
void tea5767_read_info( );
int tea5767_tuned_freq();
uint8_t tea5767_signal_level();
uint8_t tea5767_mode();

static uint8_t commandbytes[5] = { 0x00, 0x00, 0x00, 0x00, 0x00 };
static uint8_t responsebytes[5] = { 0x00, 0x00, 0x00, 0x00, 0x00 };

static double current_freq;
/*
struct station_info {
	double current_freq2;
	uint8_t signal_level;
	unsigned mode:1;
};

struct station_info tuned;
*/

#endif