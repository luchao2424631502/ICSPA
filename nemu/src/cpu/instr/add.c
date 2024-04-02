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

	{printf("\n[ADD] imm=0x%X->register=0x%X \n", opr_src.val, opr_dest.val);}

	// 2. 执行add运算
	opr_dest.val = alu_add(opr_src.val, opr_dest.val, data_size);

	// 2. 值写回到目标寄存器
	operand_write(&opr_dest);

	{printf("\n[ADD] imm=0x%X->register=0x%X \n", opr_src.val, opr_dest.val);}
}
