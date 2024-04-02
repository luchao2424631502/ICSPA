#include "cpu/instr.h"
/*
Put the implementations of `sub' instructions here.
*/

static void instr_execute_2op();

/* 属于GRP1(Group1)指令组, 该指令组包括多种操作, 其立即数操作大小固定为8bit */
make_instr_impl_2op(sub, i, rm, b) // sub_i2rm_b

static void instr_execute_2op()
{
	// 1. 读取imm
	operand_read(&opr_src);
	// 2. 读取$rm 寄存器的值
	operand_read(&opr_dest);

	printf("old opr_dest.val = 0x%X\n", opr_dest.val);

	// 3. 执行sub运算
	opr_dest.val = alu_sub(opr_src.val, opr_dest.val, opr_dest.data_size);
	// 4. 写回到目标寄存器
	operand_write(&opr_dest);
	
	printf("opr_dest.val = 0x%X\n", opr_dest.val);
}
