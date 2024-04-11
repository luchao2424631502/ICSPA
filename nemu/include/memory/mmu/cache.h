#ifndef __CACHE_H__
#define __CACHE_H__

#include "nemu.h"

#ifdef CACHE_ENABLED

#define CACHE_SIZE_B 64*1024
#define CACHE_LINE_SIZE 64
#define CACHE_LINE_NUMS (CACHE_SIZE_B/CACHE_LINE_SIZE)

#define O_MASK ((1 << 6) - 1)
#define S_MASK (((1 << 7)-1)<<6)
#define T_MASK (((1 << 14)-1)<<13)

typedef struct {
	uint16_t tag 	:14;
	uint8_t valid	:2;
}CacheLinfo;

typedef struct {
	uint8_t data[CACHE_LINE_SIZE];
}CacheLdata;

// init the cache
void init_cache();

// write data to cache
void cache_write(paddr_t paddr, size_t len, uint32_t data);

// read data from cache
uint32_t cache_read(paddr_t paddr, size_t len);

#endif

#endif
