#ifndef __CACHE_H__
#define __CACHE_H__

#include "nemu.h"

#define CACHE_SIZE_B 64*1024
#define CACHE_LINE_SIZE 64
#define CACHE_LINE_NUMS (CACHE_SIZE_B/CACHE_LINE_SIZE)

#define O_LEN 6 
#define S_LEN 7
#define T_LEN 14

#define O_MASK ((1 << O_LEN) - 1)
#define S_MASK (((1 << S_LEN)-1) << O_LEN)
#define T_MASK (((1 << T_LEN)-1) << (O_LEN + S_LEN))

typedef struct {
	uint16_t tag 	:14;
	uint8_t valid	:2;
}CacheLinfo;

typedef struct {
	uint8_t data[CACHE_LINE_SIZE];
}CacheLdata;

#ifdef CACHE_ENABLED

// init the cache
void init_cache();

// write data to cache
void cache_write(paddr_t paddr, size_t len, uint32_t data);

// read data from cache
uint32_t cache_read(paddr_t paddr, size_t len);

#endif

#endif
