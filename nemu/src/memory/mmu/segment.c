#include "cpu/cpu.h"
#include "memory/memory.h"

// return the linear address from the virtual address and segment selector
uint32_t segment_translate(uint32_t offset, uint8_t sreg)
{
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */
	return cpu.segReg[sreg].base + offset;
	// return offset + cpu.segReg[sreg].base;
}

// load the invisible part of a segment register
void load_sreg(uint8_t sreg)
{
	/* TODO: load the invisibile part of the segment register 'sreg' by reading the GDT.
	 * The visible part of 'sreg' should be assigned by mov or ljmp already.
	 */

	uint16_t index = cpu.segReg[sreg].val >> 3; // 得到index值
	SegDesc *entry = hwa_to_va(cpu.gdtr.base);
	
	{printf("[%s] index=%d\n", __func__, index);};

	// 从GDTR加载到seg reg cache中
	// 1. base
	uint32_t base = entry[index].base_15_0 | (entry[index].base_23_16 << 16) | 
		(entry[index].base_31_24 << 24);
	{printf("[%s] base=0x%X\n", __func__, base);}
	assert(0 == base);
	cpu.segReg[sreg].base = base;

	// 2. limit
	uint32_t limit = entry[index].limit_15_0 | (entry[index].limit_19_16 << 16);
	uint8_t granularity = entry[index].granularity; 
	{printf("[%s] limit=0x%X granularity=%d\n", __func__, limit, granularity);}
	assert(0xFFFFF == limit);
	assert(0x1 == granularity);
	cpu.segReg[sreg].limit = limit;

	// 3. type
	uint8_t type = entry[index].type;
	{printf("[%s] type=0x%X\n", __func__, type);}
	cpu.segReg[sreg].type = type;
	
	// 4. privilege_level
	uint8_t privilege_level = entry[index].privilege_level;
	{printf("[%s] privilege_level=0x%X\n", __func__, privilege_level);}
	cpu.segReg[sreg].privilege_level = privilege_level;

	// 5. soft_use
	uint8_t soft_use = entry[index].soft_use;
	{printf("[%s] soft_use=0x%X\n", __func__, soft_use);}
	cpu.segReg[sreg].soft_use = soft_use;

	assert(0);
}
