/**
  * @file log.h
  * @description Definitions of functions offered by the logger
  */

#ifndef _LOG_H
#define _LOG_H

void log_add_items(int num_items, int stock_dest, int total);
void log_add_items_inv(int num_items, int stock_dest);

void log_rem_items(int num_items, int stock_src, int total);
void log_rem_items_none(int num_items, int stock_src, int num_available); 
void log_rem_items_inv(int num_items, int stock_src);

void log_ex(int num_items, int stock_src, int stock_dest, int total);
void log_ex_items_none(int num_items, int stock_src, int stock_dest, int num_available); 
void log_ex_inv(int num_items, int stock_src, int stock_dest); 

void log_instock(int stock_src, int total);
void log_instock_inv(int stock_src); 

#endif
