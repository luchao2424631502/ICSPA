#include "cpu/instr.h"
/*
Put the implementations of `and' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(and, i, rm, bv)	// and_i2rm_bv

static void instr_execute_2op()
{
	// 0. 读取寄存器的值
	operand_read(&opr_dest);

	// 1. 读取立即数的值
	operand_read(&opr_src);

	// 2. and运算
	opr_dest.val = alu_and(sign_ext(opr_src.val, opr_dest.data_size), opr_dest.val, opr_dest.data_size);
	
	// 3. 写回
	operand_write(&opr_dest);
}
