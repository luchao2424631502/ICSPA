#include "memory/mmu/cache.h"

uint8_t hw_cache[CACHE_SIZE_B];
CacheLinfo hw_cache_info[CACHE_LINE_NUMS];

CacheLdata *cache_line_data = (CacheLdata *)hw_cache;
CacheLinfo *cache_line_info = hw_cache_info;

// init the cache
void init_cache()
{
	// implement me in PA 3-1

	memset(hw_cache, 0, CACHE_SIZE_B);
	memset(hw_cache_info, 0, sizeof(CacheLinfo) * CACHE_LINE_NUMS);
	
	// printf("%s cli=%p cld=%p\n", __func__, cache_line_info, cache_line_data);
	
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

