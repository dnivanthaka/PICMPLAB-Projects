#ifndef __SERIAL_H__
#define __SERIAL_H__

void serial_init();
void serial_tx_poll(char val);
char serial_rx_poll();
void serial_tx_print( char *str );
void serial_tx_printline( char *str );
void serial_tx_newline();
void serial_rx_readline(char *buff);

#endif