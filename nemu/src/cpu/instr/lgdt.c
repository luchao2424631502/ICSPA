#include "cpu/instr.h"
/*
Put the implementations of `lgdt' instructions here.
*/
make_instr_func(lgdt) // 将地址指向的6字节载入GDTR寄存器中
{
	int len = 1;
	OPERAND src;
	src.data_size = data_size;
	
	len += modrm_rm(eip + 1, &src);
	// 源操作数值, 位于src.addr中
	uint16_t limit = vaddr_read(src.addr, SREG_CS, 2);
	uint32_t base  = vaddr_read(src.addr + 2, SREG_CS, 4); 

	// 将值加载进入GDTR中
	cpu.gdtr.limit = limit;
	cpu.gdtr.base = base;

	{printf("[LGDT] limit=0x%x BASE=0x%x\n", limit, base);}

	return len; 
}
