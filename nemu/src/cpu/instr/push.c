#include "cpu/instr.h"
/*
Put the implementations of `push' instructions here.
*/

static void instr_execute_1op();

make_instr_impl_1op(push, r, l) // 生成的push_r_l适用于0x50~0x57, 所以需要修改相应的opcode function
/* 
 * int len = 1;
 * decode_data_size_l
 * decode_operand_r
 * instr_execute_1op
 * return len;
 * */

/* 实现统一的instr_execute_1op */
static void instr_execute_1op()
{
	printf("\n[PUSH]_before info reg $ebp=0x%X $esp=0x%X [$esp]=0x%X\n", cpu.ebp, cpu.esp, vaddr_read(cpu.esp, SREG_CS, 4));

	cpu.esp = cpu.esp - (data_size / 8);
	operand_read(&opr_src); // opr_src.val = $ebp的值
	printf("\t$reg_value=0x%X\n", opr_src.val);
	vaddr_write(cpu.esp, SREG_CS, (data_size / 8), opr_src.val);

	printf("[PUSH]_after info reg $ebp=0x%X $esp=0x%X [$old_esp]=0x%X [$esp]=0x%X\n", cpu.ebp, cpu.esp, vaddr_read(cpu.esp + 4, SREG_CS, 4), vaddr_read(cpu.esp, SREG_CS, 4));
}
