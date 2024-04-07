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

	{printf("\n[RET] current_eip=0x%X new_cpu_eip=0x%X\n", eip, cpu.eip);}
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

	{printf("\n[RET_IMM16] old_cpu_eip=0x%X new_cpu_eip=0x%X\n", eip, cpu.eip);}
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
	
	return 0;
}
