#include "cpu/instr.h"
/*
Put the implementations of `inc' instructions here.
*/
static void instr_execute_1op();

make_instr_impl_1op(inc, rm, v) // inc_rm_v
make_instr_impl_1op(inc, r, v) // inc_r_v

static void instr_execute_1op()
{
	// 0. 读取地址上的值
	operand_read(&opr_src);

	// 1. inc通过add指令实现, 但是inc保存CF标志位状态(不影响CF标志位)
	uint8_t old_cf = cpu.eflags.CF;
	opr_src.val = alu_add(0x1, opr_src.val, data_size);
	cpu.eflags.CF = old_cf;
	{printf("\n[INC] old_val=0x%X new_val=0x%X\n", opr_src.val-1, opr_src.val);}

	// 2. 将值写回
	operand_write(&opr_src);
}
