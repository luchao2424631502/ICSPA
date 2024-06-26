#include "memory/mmu/cache.h"
#include "memory/memory.h"

uint8_t hw_cache[CACHE_SIZE_B];
CacheLinfo hw_cache_info[CACHE_LINE_NUMS];

// 内存结构映射
CacheLdata *cache_line_data = (CacheLdata *)hw_cache;
CacheLinfo *cache_line_info = hw_cache_info;

static inline uint32_t cache_get_tag(uint32_t vaddr)
{
	return (vaddr & T_MASK) >> (O_LEN + S_LEN);
}

static inline uint32_t cache_get_group(uint32_t vaddr)
{
	return (vaddr & S_MASK) >> (O_LEN);
}

static inline uint32_t cache_get_offset(uint32_t vaddr)
{
	return vaddr & O_MASK;
}

static inline uint32_t BASEADDR64(uint32_t vaddr)
{
	return vaddr & ~((1<<6)-1);
}	

static inline uint32_t is_span(uint32_t vaddr, int len)
{
	uint32_t offset = vaddr & ((1<<6)-1);
	// printf("[%s] addr=%d, len=%d\n", __func__, offset, len);
	if ((offset + len) <= 64)
		return 0;
	return 64 - offset;
}	

// init the cache
void init_cache()
{
	// implement me in PA 3-1

	memset(hw_cache, 0, CACHE_SIZE_B);
	memset(hw_cache_info, 0, sizeof(CacheLinfo) * CACHE_LINE_NUMS);
	
//	printf("[%s] CACHE_SIZE_B=0X%X CACHE_LINE_NUMS=0x%X" 
//			" sizeof(CLdata)=0x%X sizeof(CLinfo)=0x%X\n", __func__, CACHE_SIZE_B, CACHE_LINE_NUMS,
//			sizeof(CacheLdata), sizeof(CacheLinfo));
}

// write data to cache
void cache_write(paddr_t paddr, size_t len, uint32_t data)
{
	// implement me in PA 3-1
	uint32_t tmp = is_span(paddr, len);
	if (tmp) {
		// data = 0xe78af3d1;
		uint32_t val1 = data & ((1<<(8 * tmp)) - 1);
		uint32_t val2 = (data & ~((1<<(8 * tmp)) - 1)) >> (8 * tmp);
		
		// printf("[%s] span paddr=0x%x tmp=%d data=0x%x val1=0x%x val2=0x%x\n", 
		// 		__func__, paddr, tmp, data, val1, val2);
		cache_write(paddr, tmp, val1);
		cache_write(paddr + tmp, len - tmp, val2);
		// assert(0);
		//cache_write(paddr + tmp, len - tmp, data);
		return ;
	}
	uint32_t tag = cache_get_tag(paddr);
	uint32_t group = cache_get_group(paddr);
	uint32_t offset = cache_get_offset(paddr);
	for (uint32_t i = 0; i < 8; i++) { // HIT 就要修改内容
		uint32_t index = i + group * 8;
		if (cache_line_info[index].tag == tag &&
			1 == cache_line_info[index].valid) {
			// 更新cache
			memcpy(cache_line_data[index].data + offset, &data, len);
			break;
		}
	}

	// write through + no write allocate
	hw_mem_write(paddr, len, data);
}

// read data from cache
uint32_t cache_read(paddr_t paddr, size_t len)
{
	// implement me in PA 3-1 
	uint32_t tmp = is_span(paddr, len);
	if (tmp) {
		// printf("[%s] span paddr=0x%x\n", __func__, paddr);
		// assert(0);
		uint32_t ret1 = cache_read(paddr, tmp);
		// uint32_t ret1 = hw_mem_read(paddr, tmp);
		uint32_t ret2 = cache_read(paddr + tmp, len - tmp);
		// uint32_t ret2 = hw_mem_read(paddr + tmp, len - tmp);
		// printf("paddr=0x%x tmp=%x ret1=0x%x paddr2=0x%x tmp=%d ret2=0x%x ans=0x%x\n", 
		// 		paddr, tmp, ret1, paddr+tmp, len-tmp, ret2, ret1|(ret2 << (8 * tmp)));
		// printf("ans=0x%x\n", ret1 | (ret2 << (8 * tmp)));
		return ret1 | (ret2 << (8 * tmp));
	}
	uint32_t tag = cache_get_tag(paddr);
	uint32_t group = cache_get_group(paddr);
	uint32_t offset = cache_get_offset(paddr);
	// printf("\tpaddr=0x%x, tag=0x%x, group=0x%x, offset=0x%x\n", paddr, tag, group, offset);
	for (uint32_t i = 0; i < 8; i++) {
		uint32_t index = i + group * 8;
		if (cache_line_info[index].tag == tag && 
			cache_line_info[index].valid == 1) {
			uint32_t ret = 0;
			memcpy(&ret, cache_line_data[index].data + offset, len);
			return ret;
		}
	}

	uint32_t ret = hw_mem_read(paddr, len);

	for (uint32_t i = 0; i < 8; i++) {
		uint32_t index = i + group * 8;
		if (0 == cache_line_info[index].valid) {
			// 0. 更新标志位
			cache_line_info[index].valid = 1;
			cache_line_info[index].tag = tag;
			// 1. 更新 64B cache line
			memcpy(cache_line_data[index].data, hw_mem + BASEADDR64(paddr), CACHE_LINE_SIZE);

			return ret;
		}
	}

	// 缓存替换
	uint32_t index = group * 8 + ((paddr >> 8) & ((1<<3)-1));
	cache_line_info[index].valid = 1;
	cache_line_info[index].tag = tag;
	memcpy(cache_line_data[index].data, hw_mem + BASEADDR64(paddr), CACHE_LINE_SIZE);

	return ret;
}
