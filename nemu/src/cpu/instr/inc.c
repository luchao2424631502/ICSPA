#include "cpu/instr.h"
/*
Put the implementations of `inc' instructions here.
*/
static void instr_execute_1op();

make_instr_impl_1op(inc, rm, v) // inc_rm_v

static void instr_execute_1op()
{
	// 0. 读取地址上的值
	operand_read(&opr_src);

	// 1. inc 增加指令
	opr_src.val = alu_add(0x1, opr_src.val, data_size);

	// 2. 将值写回
	operand_write(&opr_src);
}
