#include "cpu/instr.h"
/*
Put the implementations of `or' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(or, r, rm, v); // or_r2rm_v
make_instr_impl_2op(or, rm, r, b); // or_rm2r_b
make_instr_impl_2op(or, i, rm, bv);// or_i2rm_bv

static void instr_execute_2op()
{
	
	// 0. 读取源操作数
	operand_read(&opr_src);
	// 1. 读取目的操作数
	operand_read(&opr_dest);
	// 2. or
	// opr_dest.val = alu_or(opr_src.val, opr_dest.val, data_size);
	opr_dest.val = alu_or(sign_ext(opr_src.val, opr_src.data_size), opr_dest.val, opr_dest.data_size);
	// 3. 写回
	operand_write(&opr_dest);
}
