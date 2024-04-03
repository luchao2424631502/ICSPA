#include "cpu/instr.h"
/*
Put the implementations of `lea' instructions here.
*/

// int lea(uint32_t eip, uint8_t opcode)
make_instr_func(lea)
{
	int len = 1;
	OPERAND sib, dest;
	
	sib.data_size = dest.data_size = data_size;

	MODRM modrm;
	modrm.val = instr_fetch(eip, 1);
	// len += modrm_r_rm(eip + 1, &dest, &sib);

	// 1. 将lea计算得到的值移动到寄存器
	// dest.val = sib.addr;
	// operand_write(&dest);

	// {printf("\n[LEA] eax=0x%X ecx=0x%X ()_val=0x%X \n", cpu.eax, cpu.ecx, sib.addr);}

	return len;
}
