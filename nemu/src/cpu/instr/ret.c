#include "cpu/instr.h"
/*
Put the implementations of `ret' instructions here.
*/
/* int ret(uint32_t eip, uint8_t opcode) */
make_instr_func(ret) {
	// 0. 取出栈顶绝对地址, 
	uint32_t dest_addr = vaddr_read(cpu.esp, SREG_CS, 4);
	
	// 偏移值 = 目标地址 - 下一条指令地址
	dest_addr = dest_addr - (eip + 1);
	int offset = sign_ext(dest_addr, data_size);
	// 1. 修改
	cpu.eip += offset;

	return 1;
}
