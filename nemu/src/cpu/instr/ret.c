#include "cpu/instr.h"
/*
Put the implementations of `ret' instructions here.
*/
/* int ret(uint32_t eip, uint8_t opcode) */
make_instr_func(ret) { // ret 直接将栈顶值加载到eip中, 但是我这里没有这么做

	// 0. 取出栈顶绝对地址, 
	uint32_t dest_addr = vaddr_read(cpu.esp, SREG_CS, 4);
	cpu.esp += data_size / 8;
	
	dest_addr = dest_addr - (eip + 1); // 还是计算偏移地址加到eip上, 因为exec_instr()执行完后会+len, 所以不好直接
	int offset = sign_ext(dest_addr, data_size);

	// 1. 修改
	cpu.eip += offset;

	{printf("\n[RET] offset=%d old_cpu_eip=0x%X new_cpu_eip=0x%X\n", offset, cpu.eip - offset, cpu.eip);}
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	printf("\t curr_stack_top_value=0x%X\n", vaddr_read(cpu.esp , SREG_CS, 4));

	return 1;
}
