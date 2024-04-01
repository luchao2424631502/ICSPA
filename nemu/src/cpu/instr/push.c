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
	printf("before info reg $ebp=0x%X $esp=0x%X [$esp]=0x%X\n", cpu.ebp, cpu.esp, vaddr_read(cpu.esp, SREG_CS, 4));

	operand_read(&opr_src); // opr_src.val = $ebp的值
	vaddr_write(cpu.esp, SREG_CS, (data_size / 8), opr_src.val);
	cpu.esp = cpu.esp - (data_size / 8);

	// 因为暂时不能单步调试, 所以printf打印出来试一下
	printf("before info reg $ebp=0x%X $esp=0x%X [$esp]=0x%X\n", cpu.ebp, cpu.esp, vaddr_read(cpu.esp, SREG_CS, 4));
}
