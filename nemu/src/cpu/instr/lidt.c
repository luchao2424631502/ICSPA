#include "cpu/instr.h"
/*
Put the implementations of `lidt' instructions here.
*/
make_instr_func(lidt)
{
	int len = 1;
	OPERAND src;
	src.data_size = data_size;

	len += modrm_rm(eip + 1, &src);
	uint16_t limit = vaddr_read(src.addr, SREG_CS, 2);
	uint32_t base  = vaddr_read(src.addr + 2, SREG_CS, 4);

	cpu.idtr.limit = limit;
	cpu.idtr.base = base;

	{printf("[LIDT] limit=0x%x BASE=0x%x\n", limit, base);}

	return len;
}
