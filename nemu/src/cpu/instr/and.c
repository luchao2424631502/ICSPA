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
	
}
