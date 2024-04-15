#include "cpu/cpu.h"
#include "memory/memory.h"

// 虚拟地址对应的页目录项索引值和页表项索引值
#define PDE_INDEX(vaddr) (((vaddr & 0xFFC00000) >> 22) << 2)
#define PTE_INDEX(vaddr) (((vaddr & 0x003FF000) >> 12) << 2)
#define PAGE_OFFSET(vaddr) (vaddr & 0x000003FF)

// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr)
{
#ifndef TLB_ENABLED
	/* Please implement page_translate() */
	
	// 0. 由CR3拿到页目录表基地址 (页帧号<<12转物理地址)
	uint32_t pdirtable_base = cpu.cr3.page_directory_base << 12;
	printf("\tcr3.base=0x%x pdirtable_base=0x%x\n", pdirtable_base >> 12, pdirtable_base);

	// 1. 得到页表的物理基地址
	uint32_t offset = PDE_INDEX(laddr);
	PDE *pde_entry = (PDE *)((void *)hw_mem + pdirtable_base + offset);
	// PDE *pde_entry = (PDE *)(pdirtable_base + offset);
	printf("\tpde_entry=0x%x\n", (uint32_t)pde_entry);
	// assert(0);
	if (0 == pde_entry->present) { // 地址转换出了问题 
		printf("[%s] 页目录表项不存在\n", __func__);
		assert(0);
	}
	uint32_t ptable_base = pde_entry->page_frame << 12;
	printf("\tpresent=%d page_frame=0x%x\n", pde_entry->present, 
			pde_entry->ptable_base);
	assert(0);

	// 2. 得到页的物理基础地址
	offset = PTE_INDEX(laddr);
	PTE *pte_entry = (PTE *)(ptable_base + offset);
	if (0 == pte_entry->present) {
		printf("[%s] 页表项不存在\n", __func__);
		assert(0);
	}
	uint32_t page_base = pte_entry->page_frame << 12;
	
	// 3. 拼接得到最终转换的物理地址
	paddr_t phy_addr = PAGE_OFFSET(laddr) + page_base;

	assert(0);
	printf("[%s] laddr=0x%x -> phy_addr=0x%x ", __func__, laddr, phy_addr);
	return phy_addr;
#else
	return tlb_read(laddr) | (laddr & PAGE_MASK);
#endif
}
