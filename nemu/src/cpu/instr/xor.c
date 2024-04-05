#include "cpu/instr.h"
/*
Put the implementations of `xor' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(xor, r, rm, v); // xor_r2rm_v

static void instr_execute_2op()
{
	// 0. 读取源操作数
	operand_read(&opr_src);
	// 1. 读取目的操作数
	operand_read(&opr_dest);
	// 2. xor


}
