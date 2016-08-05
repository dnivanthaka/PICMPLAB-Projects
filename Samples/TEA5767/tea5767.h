/*
 * =====================================================================================
 *
 *       Filename:  tea5767.h
 *
 *    Description:  Driver for TEA5767 Radio Chip
 *
 *        Version:  1.0
 *        Created:  04/03/2014 10:02:18 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  D.N. Amerasinghe (Niva), nivanthaka@gmail.com
 *        Company:  HobbyWorks
 *
 * =====================================================================================
 */

#ifndef __TEA5767__
#define __TEA5767__

struct data_seq {
    unsigned char byte1;
    unsigned char byte2;
    unsigned char byte3;
    unsigned char byte4;
    unsigned char byte5;
};

const char MUTE_ON = 1 << 7;
const char SM_ON   = 1 << 6;
const char SUD_UP  = 1 << 7;
const char STBY    = 1 << 6;

void save_channel(char *n, double f);
void clear_channels_list();
void list_channels();
void init_channels_list();
unsigned int tea5767_getpll( double freq );
void tea5767_open();
void tea5767_init();
void tea5767_standby();
void tea5767_mute();
void tea5767_unmute();
void tea5767_wakeup();
void tea5767_close();
void tea5767_read( struct data_seq *bt );
double tea5767_calculate_freq( struct data_seq *bt );
double tea5767_round_freq( double freq );
void tea5767_tune(double freq);
void tea5767_print_info();
void tea5767_info( char * );
void tea5767_search();

#endif
