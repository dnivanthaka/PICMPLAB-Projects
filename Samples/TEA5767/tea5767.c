#include <stdio.h>
#include <math.h>
#include <malloc.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <linux/i2c-dev.h>

#include "tea5767.h"

const char DEVICE_ADDRESS = 0x60; // TEA5657
const char CHIP_ID = 0x00;
const unsigned int XTAL_FREQ = 32768;

int i2c_fd;

double current_freq;
char isMuted = 0;


struct channel{
	double freq;
	char name[16];
	struct channel *next;
};

/*struct channels_list{
	struct channel *channels;
	unsigned char size;
};*/

struct data_seq command;

//struct channels_list clist;
struct channel *channels = NULL;


void
save_channel(char *n, double f)
{
	struct channel *tmp, **ptr;

	//last = &clist.channels;
	ptr = &channels;

	//unsigned char list_size = clist.size;
	//list_size
	tmp = malloc( sizeof(struct channel) );	

	strncpy(tmp->name, n, 15);
	tmp->name[15] = '\0';

	tmp->freq = f;
	tmp->next = NULL;

	// Adding element
	if( channels != NULL ){
		while( (*ptr)->next != NULL ){
			//printf("Going Through %s\n", (*ptr)->name);

			ptr = &((*ptr)->next);
		}
		(*ptr)->next = tmp;
		
	}else{
		channels = tmp;
	}
	//clist.size = clist.size + 1;
	
	
}

void
clear_channels_list()
{
	struct channel **ptr, *tmp;

	//last = &clist.channels;
	ptr = &channels;

	if( channels != NULL ){
		while( *ptr != NULL ){
			//printf("Going Through %s\n", (*ptr)->name);
			//tmp = *ptr;
			ptr = &((*ptr)->next);
			free( tmp );
		}
	}
}

void
list_channels()
{
	struct channel **ptr, *tmp;

	//last = &clist.channels;
	ptr = &channels;
	int i = 1;

	if( channels != NULL ){
		printf("+---------------------------------+\n");
		//printf("| No: | Name                 | Freq      |");
		printf("|No:| Name            | Freq      |\n");
		printf("+---------------------------------+\n");
		while( *ptr != NULL ){
			printf("| %-2d| %-15s | %5.1f Mhz |\n", i, (*ptr)->name, (*ptr)->freq);
			ptr = &((*ptr)->next);
			i++;
		}
		printf("+---------------------------------+\n");
	}
}

void
init_channels_list()
{
	//clist.size = 0;
	//clist.channels = NULL;
}

unsigned int
tea5767_getpll( double freq )
{
   unsigned int pll = 4 * (freq * 1000000 + 255000) / XTAL_FREQ;
   return pll;
}

void
tea5767_open()
{
    char *dev = "/dev/i2c-1";

    i2c_fd = open( dev, O_RDWR );
    if( i2c_fd < 0 ){
        perror("open");
        exit(1);
    }

    if( ioctl( i2c_fd, I2C_SLAVE, DEVICE_ADDRESS ) < 0 ){
        printf("Failed to acquire bus access.\n");
        exit(1);
    }
}

void
tea5767_init()
{
    double frequency = 87.0;

    //unsigned int pll = 4 * (frequency * 1000000 + 255000) / XTAL_FREQ;
	unsigned int pll = tea5767_getpll( frequency );

    usleep(10000);
    command.byte1 = (pll >> 8);
    command.byte2 = (pll & 0xFF);
    command.byte3 = 0xB0;
    //command.byte3 = 0xC0;
    command.byte4 = 0x12;
    command.byte5 = 0x00;

    write( i2c_fd, &command, 5 );
    usleep(10000);

    current_freq = frequency;
}

void
tea5767_standby()
{
    command.byte4 |= STBY;

    write( i2c_fd, &command, 5 );
    usleep(10000);
}

void
tea5767_mute()
{
    command.byte1 |= MUTE_ON;

    write( i2c_fd, &command, 5 );
	isMuted = 1;

    usleep(10000);
}

void
tea5767_unmute()
{
    command.byte1 &= ~MUTE_ON;

    write( i2c_fd, &command, 5 );
	isMuted = 0;
    usleep(10000);
}

void
tea5767_wakeup()
{
    command.byte4 |= ~STBY;

    write( i2c_fd, &command, 5 );
    usleep(10000);
}


void
tea5767_close()
{
    if( i2c_fd > 0 ){
        close( i2c_fd );
    }
}

void
tea5767_read( struct data_seq *bt )
{
    read( i2c_fd, bt, 5 );
}

double
tea5767_calculate_freq( struct data_seq *bt )
{
    double freq;

    unsigned byte1 = (bt->byte1);
    unsigned byte2 = (bt->byte2);

    freq = (ceil(ceil(((byte1 & 0x3F) << 8) + byte2) * XTAL_FREQ / 4 - 225000) / 1000000); 
    return freq;
}

double
tea5767_round_freq( double freq )
{
   char buff[6]; 

   sprintf( buff, "%04.1f", freq );
   buff[5] = '\0';
   //printf("%f\n", atof(buff));
   return atof(buff);
}



void
tea5767_tune(double freq)
{

    //unsigned int pll = 4 * (freq * 1000000 + 255000) / XTAL_FREQ;
	unsigned int pll = tea5767_getpll( freq );

    command.byte1 = (pll >> 8);
    //command.byte2 = 0x00;
    command.byte2 = (pll & 0xFF);
    write( i2c_fd, &command, 5 );
    usleep(10000);

    current_freq = freq;
}

void
tea5767_print_info()
{
	unsigned char signal_lvl;
	struct data_seq res;

	tea5767_read( &res );
    signal_lvl = (res.byte4 & 0xF0) >> 4;
    printf("+-------------------------+\n");
    printf("%-15s : %04.1f Mhz\n", "Frequency",tea5767_calculate_freq(&res));
    printf("%-15s : %d\n", "Signal Level",signal_lvl);
    printf("%-15s : %s\n", "Mode",((res.byte3 & (1 << 7)) > 0)?"STEREO":"MONO");
    printf("+-------------------------+\n");
    printf("\n");
}

void
tea5767_info( char *str )
{
	unsigned char signal_lvl;
	struct data_seq res;

	tea5767_read( &res );
    signal_lvl = (res.byte4 & 0xF0) >> 4;
    sprintf( str, "freq=%04.1f&level=%d&mode=%s", tea5767_calculate_freq(&res), signal_lvl,  ((res.byte3 & (1 << 7)) > 0)?"STEREO":"MONO");
}

void
tea5767_search()
{
    struct data_seq res;

    current_freq += 0.1;

    if( current_freq > 108.0 ){
        current_freq = 87.0;
    }

    //unsigned int pll = 4 * (current_freq * 1000000 + 255000) / XTAL_FREQ;
	unsigned int pll = tea5767_getpll( current_freq );

    command.byte1 = (pll >> 8);
    command.byte1 |= SM_ON;
    command.byte1 |= MUTE_ON;
    command.byte2 = (pll & 0xFF);

    write( i2c_fd, &command, 5 );
    usleep(10000);

    tea5767_read( &res );
    //tea5767_tune(tea5767_calculate_freq(&res) + 0.1);
    while( (res.byte1 & 0x80) == 0 && (res.byte1 & 0x40) == 0 ){
        
        tea5767_read( &res );
	//printf("%-15s : %04.1f Mhz.\n", "Scanning Frequency",tea5767_calculate_freq(&res));
        usleep(25000);        
    }

    //printf("%-15s : %04.1f Mhz.\n", "Frequency set to",tea5767_calculate_freq(&res));


    current_freq = tea5767_round_freq(tea5767_calculate_freq(&res));
    //pll = 4 * (current_freq * 1000000 + 255000) / XTAL_FREQ;
	pll = tea5767_getpll( current_freq );

    command.byte1 = (pll >> 8);
    command.byte2 = (pll & 0xFF);
    //command.byte1 &= ~SM_ON;
    //command.byte1 &= ~MUTE_ON;
    //res.byte1 &= ~MUTE_ON;

    write( i2c_fd, &command, 5 );
    usleep(10000);

}

int
main( int argc, char *argv[] )
{
    //int fd;
    char *dev = "/dev/i2c-1";
    double freq;
    char buf[6];
    unsigned char isRunning = 1, usercmd;

    //char command[6];
    //struct data_seq command;
    //struct data_seq res;

    i2c_fd = open( dev, O_RDWR );
    if( i2c_fd < 0 ){
        perror("open");
        exit(1);
    }

    if( ioctl( i2c_fd, I2C_SLAVE, DEVICE_ADDRESS ) < 0 ){
        printf("Failed to acquire bus access.\n");
        exit(1);
    }

    init_channels_list();
    //printf("Putting Test 1\n");
    save_channel("Test 1", 1.5);

    //printf("Putting Test 2\n");
    save_channel("Test 2", 2.5);

    //printf("Putting Test 3\n");
    save_channel("Test 3", 3.5);

    //printf("Putting Test 4\n");
    save_channel("Test 4", 103.5);

    //printf("Putting Test 5\n");
    save_channel("Test 5", 103.5);

    list_channels();

    //search_up();
    tea5767_init();
    while( isRunning == 1 ){
        printf("(1) Manual tune\n");
        printf("(2) Auto tune\n");
        printf("(3) Mute/Unmute\n");
		printf("(4) Info.\n");
		printf("(5) Save channel\n");
		printf("(6) Goto channel\n");
        printf("(7) Quit\n");
        printf("Enter command: ");
        //fgets(buf, 6, stdin);
        //if( buf[strlen(buf)] != '\n' ){
            //char ch;
            //while(((ch = getchar()) != '\n') && (ch != EOF));
        //}
        //buf[strlen(buf) - 1] = '\0';
        //fflush(stdin);
        //sscanf(buf, "%1d", &usercmd);
        scanf("%d", &usercmd);
        if( usercmd == 1 ){
            printf("Enter frequency (Mhz): ");
            scanf("%lf", &freq);
            printf("Tunning to %3.1f Mhz.\n", freq);

            //usleep(100000);

            tea5767_tune(freq);
			tea5767_print_info();

        }else if( usercmd == 2 ){
            //tea5767_mute();
            tea5767_search();
            //tea5767_read( &res );
            //tea5767_tune(tea5767_calculate_freq(&res));
            //tea5767_unmute();
        }else if( usercmd == 3 ){
			if( isMuted == 0 ){
            	tea5767_mute();
				printf("Radio is muted.\n");
			}else{
				tea5767_unmute();
				printf("Radio is un-muted.\n");
			}
		}else if( usercmd == 4 ){
			tea5767_print_info();        
		}else if( usercmd == 7 ){
            isRunning = 0;
        }else{
            //continue;
        }

    }
    //tea5767_tune(87.5);
    tea5767_mute();
    tea5767_standby();
    tea5767_close();

	clear_channels_list();

    return 0;
}
