#include "cpu/instr.h"
/*
Put the implementations of `call' instructions here.
*/

// int call_near(uint32_t eip, uint8_t opcode)
make_instr_func(call_near) {
	OPERAND rel;
	rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
	rel.data_size = data_size;
	rel.addr = eip + 1;
	// 0. 取到call指令跟着的偏移值
	operand_read(&rel);

	// 1. PUSH RA(下一条指令地址)
	uint32_t RA = eip + 1 + data_size / 8;
	cpu.esp -= data_size / 8;
	vaddr_write(cpu.esp, SREG_CS, (data_size / 8), RA);
	printf("\n[CALL] cur_eip=0x%X next_eip=0x%X old_stack_top=0x%X RA(now_stack_top)=0x%X\n", cpu.eip, cpu.eip+sign_ext(rel.val, data_size)+1+data_size/8, vaddr_read(cpu.esp+4, SREG_CS, 4),
			vaddr_read(cpu.esp, SREG_CS,4));

	// 2. 跳转到目标地址(下一条指令的地址+偏移量)
	int offset = sign_ext(rel.val, data_size);
	cpu.eip += offset;

	{printf("\t rel.val=0x%X offset=0x%X\n", rel.val, offset);}

	return 1 + data_size / 8;
}

/* 注意和jmp是不一样的, jmp直接跳转就行 */
make_instr_func(call_near_indirect)
{
	int len = 1;
	OPERAND src;
	// 0. 解析r/m表示的寄存器, 并且获得值
	len += modrm_rm(eip + 1, &src);
	operand_read(&src);

	// 1. push RA
	cpu.esp -= data_size / 8;
	vaddr_write(cpu.esp, SREG_CS, data_size / 8, eip + len);

	// 2. 跳转到目标地址
	cpu.eip = src.val;

	return 0; // 绝对call
}
