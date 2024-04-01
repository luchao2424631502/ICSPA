#include "cpu/instr.h"
/*
Put the implementations of `push' instructions here.
*/

static void instr_execute_1op;

make_instr_impl_1op(push, r, l)
/* 
 * int len = 1;
 * decode_data_size_l
 * decode_operand_r
 * instr_execute_1op
 * return len;
 * */

// 字符串接在 make_instr_impl_1op 中
static void instr_execute_1op()
{
	operand_read(&opr_src); // push xxx = mov reg -> [$esp]
	vaddr_write((vaddr_t)cpu.eflags.ESP, SREG_CS, data_size, opr_src.val); 
	cpu.eflags.ESP -= data_size; // esp -= 4
}
