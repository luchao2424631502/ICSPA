#include "cpu/instr.h"
/*
Put the implementations of `add' instructions here.
*/

static void instr_execute_2op();

make_instr_impl_2op(add, i, rm, v) // add_i2rm_v

static void instr_execute_2op()
{
	// 0. 读取imm
	operand_read(&opr_src);
	// 1. 读取$rm 目标寄存器的值
	operand_read(&opr_dest);

	{printf("\n[ADD] imm=0x%X -> old_reg=0x%X \n", opr_src.val, opr_dest.val);}
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}

	// 2. 执行add运算
	opr_dest.val = alu_add(opr_src.val, opr_dest.val, data_size);

	// 2. 值写回到目标寄存器
	operand_write(&opr_dest);

	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	{printf("\timm=0x%X -> new_reg=0x%X ebp=0x%X esp=0x%X \n", opr_src.val, opr_dest.val, cpu.ebp, cpu.esp);}
}
