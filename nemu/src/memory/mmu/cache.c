#include "memory/mmu/cache.h"

#include <stdlib.h>
uint8_t hw_cache[CACHE_SIZE_B];
CacheLinfo *cache_line_info;

// init the cache
void init_cache()
{
	// implement me in PA 3-1

	printf("%s\n", __func__);
	memset(hw_cache, 0, CACHE_SIZE_B);
	cache_line_info = malloc(sizeof(CacheLinfo) * CACHE_LINE_NUMS);
}

// write data to cache
void cache_write(paddr_t paddr, size_t len, uint32_t data)
{
	// implement me in PA 3-1
}

// read data from cache
uint32_t cache_read(paddr_t paddr, size_t len)
{
	// implement me in PA 3-1
	return 0;
}

