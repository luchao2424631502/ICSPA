#include "cpu/instr.h"
/*
Put the implementations of `sub' instructions here.
*/

static void instr_execute_2op();

/* 属于GRP1(Group1)指令组, 该指令组包括多种操作, 其立即数操作大小固定为8bit */
make_instr_impl_2op(sub, i, rm, bv) // sub_i2rm_bv
make_instr_impl_2op(sub, rm, r, v) // sub_rm2r_v
make_instr_impl_2op(sub, r, rm, v) // sub_r2rm_v
make_instr_impl_2op(sub, i, rm, v) // sub_i2rm_v
make_instr_impl_2op(sub, i,  a, b) // sub_i2a_b
make_instr_impl_2op(sub, i,  a, v) // sub_i2a_v

static void instr_execute_2op()
{
	// 1. 读取imm
	operand_read(&opr_src);
	// 2. 读取$rm 寄存器的值
	operand_read(&opr_dest);

	// printf("\n[SUB]_before opr_src.val=0x%X opr_dest.val=0x%X opr_src.data_size=%d opr_dest.data_size=%d\n", opr_src.val, opr_dest.val, opr_src.data_size, opr_dest.data_size);

	// 3. 执行sub运算
	opr_dest.val = alu_sub(sign_ext(opr_src.val, opr_src.data_size), 
				opr_dest.val, opr_dest.data_size);
	// 4. 写回到目标寄存器
	operand_write(&opr_dest);
	
	
	// printf("[SUB]_after opr_src.val=0x%X opr_dest.val=0x%X opr_src.data_size=%d opr_dest.data_size=%d\n", opr_src.val, opr_dest.val, opr_src.data_size, opr_dest.data_size);
}
