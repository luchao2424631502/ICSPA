#include "cpu/instr.h"
/*
Put the implementations of `cmp' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(cmp, i, rm, bv) // cmp_i2rm_bv

void instr_execute_2op() // cmp逻辑
{
	// 0. 读取imm
	operand_read(&opr_src);

	// 1. 读入目标reg中的值
	operand_read(&opr_dest);

	{printf("\n[CMP_BV] imm_val=0x%X reg_val=0x%X\n", opr_src.val, opr_dest.val);}
	// 2. 执行cmp (实际通过sub指令来影响eflags标志位, 并且执行32bit减法)
	alu_sub(sign_ext(opr_src.val, 8), opr_dest.val, data_size);
}
