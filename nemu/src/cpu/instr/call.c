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

	// 2. 跳转到目标地址(下一条指令的地址+偏移量)
	int offset = sign_ext(rel.val, data_size);
	cpu.eip += offset;

	return 1 + (data_size / 8);
}
