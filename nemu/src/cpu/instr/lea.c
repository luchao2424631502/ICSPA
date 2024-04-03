#include "cpu/instr.h"
/*
Put the implementations of `lea' instructions here.
*/

// int lea(uint32_t eip, uint8_t opcode)
make_instr_func(lea)
{
	int len = 1;
	OPERAND src_sib, dest_reg;
	
	src_sib.data_size = dest_reg.data_size = data_size;

	// 1. 得到寄存器, 和sib地址操作数
	len += modrm_r_rm(eip + 1, &dest_reg, &src_sib);
	/*
	MODRM modrm;
	modrm.val = instr_fetch(eip + 1, 1);
	dest_reg.type = ORP_REG;
	dest_reg.addr = modrm.reg_opcode;
	len += parse_rm_32(eip + 1, modrm, &src_sib);
	*/

	// 1. 将lea计算得到的值移动到寄存器
	// dest.val = sib.addr;
	// operand_write(&dest);

	// {printf("\n[LEA] eax=0x%X ecx=0x%X ()_val=0x%X \n", cpu.eax, cpu.ecx, sib.addr);}

	return len;
}
