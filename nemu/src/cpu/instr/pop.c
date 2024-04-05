#include "cpu/instr.h"
/*
Put the implementations of `pop' instructions here.
*/
static void instr_execute_1op();

make_instr_impl_1op(pop, r, v) // pop_r_v v对应data_size l对应32

static void instr_execute_1op()
{
	printf("\n[POP]\n");
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	{printf("\t current_top_of_stack_value=0x%X\n", vaddr_read(cpu.esp, SREG_CS, data_size / 8));}
	// 0. 取出当前栈顶的值
	uint32_t top_val = vaddr_read(cpu.esp, SREG_CS, data_size / 8);
	cpu.esp += data_size / 8; 
	
	// 1. 将栈顶的值写回到指定寄存器
	opr_src.val = top_val;
	operand_write(&opr_src);
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
}
