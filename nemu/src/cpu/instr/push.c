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
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}

	// 0. esp -= 4;
	cpu.esp -= data_size / 8;
	// 1. 栈顶写入值
	operand_read(&opr_src);
	vaddr_write(cpu.esp, SREG_CS, (data_size / 8), opr_src.val);

	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	printf("[PUSH]_after info reg $ebp=0x%X $esp=0x%X [$old_esp]=0x%X [$esp]=0x%X\n", cpu.ebp, cpu.esp, vaddr_read(cpu.esp + 4, SREG_CS, 4), vaddr_read(cpu.esp, SREG_CS, 4));
}
