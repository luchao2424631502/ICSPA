#include "nemu.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "device/mm_io.h"
#include <memory.h>
#include <stdio.h>

uint8_t hw_mem[MEM_SIZE_B];

uint32_t hw_mem_read(paddr_t paddr, size_t len)
{
	uint32_t ret = 0;
	memcpy(&ret, hw_mem + paddr, len);
	return ret;
}

void hw_mem_write(paddr_t paddr, size_t len, uint32_t data)
{
	memcpy(hw_mem + paddr, &data, len);
}

uint32_t paddr_read(paddr_t paddr, size_t len)
{
	uint32_t ret = 0;
#ifndef CACHE_ENABLED
	ret = hw_mem_read(paddr, len);
#else
	ret = cache_read(paddr, len);
	// ret = hw_mem_read(paddr, len);
#endif
	return ret;
}

void paddr_write(paddr_t paddr, size_t len, uint32_t data)
{
#ifndef CACHE_ENABLED
	hw_mem_write(paddr, len, data);
#else
	cache_write(paddr, len, data);
#endif
}

#define PFN_MASK 0xFFFFFC00

static inline uint32_t is_span(laddr_t laddr, size_t len)
{
	/* 在当前4kb页内写, 并没有溢出 */
	if (((laddr + len - 1) & PFN_MASK) == (laddr & PFN_MASK))
		return 0;
	return 4096 - (laddr & 0x3FF);
	uint32_t offset = laddr & 0x3FF;
	return 4096 - offset; // 当前页写多长
}	

// 将ia32分段mmu得到的线性地址, 根据页表(分页机制)翻译为物理地址
uint32_t laddr_read(laddr_t laddr, size_t len)
{
#ifndef IA32_PAGE
	return paddr_read(laddr, len);
#else
	if (cpu.cr0.paging && cpu.cr0.protect_enable) { // 判断CPU是否开启了分页机制
		uint32_t tmp = is_span(laddr, len);
		// 越页边界了
		if (tmp) {
			// uint32_t val1 = paddr_read(page_translate(laddr), tmp);
			// uint32_t val2 = paddr_read(page_translate(laddr+tmp), len-tmp);
			uint32_t val1 = laddr_read(laddr, tmp);
			uint32_t val2 = laddr_read(laddr+tmp, len-tmp);
			{printf("[%s] 越界read\n", __func__);}
			return val1 | (val2 << (8 * tmp));
		}
		// 没有越界
		paddr_t phy_addr = page_translate(laddr);
		{printf("[%s] _read\n", __func__);}
		return paddr_read(phy_addr, len);
	} else {
		{printf("[%s] 没有开启分页 cr0.paging=%d cr0.protect_enable=%d\n", __func__,
				cpu.cr0.paging, cpu.cr0.);}
		return paddr_read(laddr, len);
	}
#endif
}

void laddr_write(laddr_t laddr, size_t len, uint32_t data)
{
#ifndef IA32_PAGE
	paddr_write(laddr, len, data);
#else
	if (cpu.cr0.paging && cpu.cr0.protect_enable) {
		uint32_t tmp = is_span(laddr, len);
		if (tmp) {
			uint32_t val1 = data & ((1<<(8 * tmp)) - 1);
			uint32_t val2 = (data & ~((1<<(8 * tmp)) - 1)) >> (8 * tmp);
			laddr_write(laddr, tmp, val1);
			laddr_write(laddr+tmp, len-tmp, val2);
			{printf("[%s] 越界write\n", __func__);}
			return ;
		}
		paddr_t phy_addr = page_translate(laddr);
		paddr_write(phy_addr, len, data);
		{printf("[%s] _write\n", __func__);}
	} else {
		{printf("[%s] 没有开启分页 cr0.paging=%d cr0.protect_enable=%d\n", __func__,
				cpu.cr0.paging, cpu.cr0.);}
		paddr_write(laddr, len, data);
	}
#endif
}

uint32_t vaddr_read(vaddr_t vaddr, uint8_t sreg, size_t len)
{
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_SEG
	return laddr_read(vaddr, len);
#else
	if (cpu.cr0.protect_enable) { // 开启了分段机制, 先将虚拟地址翻译为线性地址
		printf("[vaddr_write] sreg=%x\n vaddr=0x%x trans_vaddr=0x%x\n",
		     sreg, vaddr, segment_translate(vaddr, sreg));
		return laddr_read(segment_translate(vaddr, sreg), len);
	}
	else
		return laddr_read(vaddr, len);
#endif
}

void vaddr_write(vaddr_t vaddr, uint8_t sreg, size_t len, uint32_t data)
{
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_SEG
	laddr_write(vaddr, len, data);
#else
	if (cpu.cr0.protect_enable) { // 开启了分段机制, 先将虚拟地址翻译为线性地址
		printf("[vaddr_write] sreg=%x\n vaddr=0x%x trans_vaddr=0x%x\n",
		     sreg, vaddr, segment_translate(vaddr, sreg));
		laddr_write(segment_translate(vaddr, sreg), len, data);
	}
	else
		laddr_write(vaddr, len, data);
#endif
}

void init_mem()
{
	// clear the memory on initiation
	memset(hw_mem, 0, MEM_SIZE_B);

#ifdef CACHE_ENABLED
	init_cache();
#endif

#ifdef TLB_ENABLED
	make_all_tlb();
	init_all_tlb();
#endif
}

uint32_t instr_fetch(vaddr_t vaddr, size_t len)
{
	assert(len == 1 || len == 2 || len == 4);
	return vaddr_read(vaddr, SREG_CS, len);
}

uint8_t *get_mem_addr()
{
	return hw_mem;
}
