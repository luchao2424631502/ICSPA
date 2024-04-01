#include "cpu/instr.h"
/*
Put the implementations of `push' instructions here.
*/

static void instr_execute_1op();

make_instr_impl_1op(push, r, l) // push_r_l
/* 
 * int len = 1;
 * decode_data_size_l
 * decode_operand_r
 * instr_execute_1op
 * return len;
 * */

// 每一个宏生成来说, 都给了一个static 用户自己实现的 执行函数
static void instr_execute_1op()
{
	operand_read(&opr_src); // push xxx = mov reg -> [$esp]
	vaddr_write(cpu.esp, SREG_CS, 4, opr_src.val); 
	cpu.esp -= 4; // esp -= 4
}
