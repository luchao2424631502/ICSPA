#include "cpu/instr.h"
/*
Put the implementations of `ret' instructions here.
*/
/* int ret(uint32_t eip, uint8_t opcode) */
make_instr_func(ret) { // ret 直接将栈顶值加载到eip中, 但是我这里没有这么做

	// 0. 取出栈顶绝对地址, 
	uint32_t dest_addr = vaddr_read(cpu.esp, SREG_CS, 4);
	
	// 偏移值 = 目标地址 - 下一条指令地址
	dest_addr = dest_addr - (eip + 1);
	int offset = sign_ext(dest_addr, data_size);

	// 1. 修改
	cpu.eip += offset;

	{printf("\n[RET] offset=%d old_cpu_eip=0x%X new_cpu_eip=0x%X\n", offset, cpu.eip - offset, cpu.eip);}
	printf("\t curr_stack_top_value=0x%X\n", vaddr_read(cpu.esp , SREG_CS, 4));

	return 1;
}
