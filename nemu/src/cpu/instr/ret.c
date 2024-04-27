#include "cpu/instr.h"
/*
Put the implementations of `ret' instructions here.
*/
/* int ret(uint32_t eip, uint8_t opcode) */
make_instr_func(ret) 
{ // ret 直接将栈顶值加载到eip中, 但是我这里没有这么做

	// 0. 取出栈顶绝对地址, 
	uint32_t dest_addr = vaddr_read(cpu.esp, SREG_CS, 4);
	cpu.esp += data_size / 8;
	
	// 1. 直接修改eip
	cpu.eip = dest_addr;

	
	// printf("\t curr_stack_top_value=0x%X\n", vaddr_read(cpu.esp , SREG_CS, 4));

	return 0;
}

make_instr_func(ret_imm16)
{
	// 0. 直接修改eip
	uint32_t dest_addr = vaddr_read(cpu.esp, SREG_CS, 4);
	cpu.esp += data_size / 8;

	// 1. 直接修改eip
	cpu.eip = dest_addr;
	
	// 2. 释放栈参数
	uint16_t imm = vaddr_read(eip + 1, SREG_CS, 2);
	cpu.esp += imm;

	
	// printf("\t curr_stack_top_value=0x%X\n", vaddr_read(cpu.esp , SREG_CS, 4));
	
	return 0;
}
