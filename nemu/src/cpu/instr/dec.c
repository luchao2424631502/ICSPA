#include "cpu/instr.h"
/*
Put the implementations of `dec' instructions here.
*/
static void instr_execute_1op();

make_instr_impl_1op(dec, r, v) // dec_r_v
make_instr_impl_1op(dec, rm, v) // dec_rm_v

static void instr_execute_1op()
{
	// 0. 取到源操作数
	operand_read(&opr_src);

	// 1. 
	uint8_t old_cf = cpu.eflags.CF;
	opr_src.val = alu_sub(0x1, opr_src.val, data_size);
	cpu.eflags.CF = old_cf;

	

	// 2. 写回操作数
	operand_write(&opr_src);
}
