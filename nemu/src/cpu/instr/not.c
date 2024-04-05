#include "cpu/instr.h"
/*
Put the implementations of `not' instructions here.
*/
static void instr_execute_1op();

make_instr_impl_1op(not, rm, v) // not_rm_v

static void instr_execute_1op()
{
	{printf("\n[NOT]\n");}
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n", 
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	// 0. 读取源操作数 
	operand_read(&opr_src);
	
	// 1. not 运算
	opr_src.val = ~opr_src.val;
	
	if (opr_src.data_size == 8) 
		opr_src.val = 0xFF & opr_src.val;
	else if (opr_src.data_size == 16)
		opr_src.val = 0xFFFF & opr_src.val;

	// 2. 写回
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
