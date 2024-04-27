#include "cpu/instr.h"
/*
Put the implementations of `add' instructions here.
*/

static void instr_execute_2op();

make_instr_impl_2op(add, i, rm, v) // add_i2rm_v
make_instr_impl_2op(add, i, a,  v) // add_i2a_v
make_instr_impl_2op(add, r, rm, v) // add_r2rm_v
make_instr_impl_2op(add, i, rm, bv)// add_i2rm_bv

static void instr_execute_2op()
{
	// 0. 读取imm
	operand_read(&opr_src);
	// 1. 读取$rm 目标寄存器的值
	operand_read(&opr_dest);

	

	// 2. 执行add运算
	// opr_dest.val = alu_add(opr_src.val, opr_dest.val, data_size);
	// 上面这个情况不满足后面添加的add_i2rm_bv, 所以错误才会在后面发生
	opr_dest.val = alu_add(sign_ext(opr_src.val, opr_src.data_size),
			opr_dest.val, data_size);

	// 2. 值写回到目标寄存器
	operand_write(&opr_dest);

	
}
