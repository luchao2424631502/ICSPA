#include "cpu/instr.h"
/*
Put the implementations of `iret' instructions here.
*/
#define KOFFSET 0xc0000000
make_instr_func(iret) // 目前栈上有eip, cs, eflags
{
	// 0. 取出栈顶的绝对地址
	cpu.eip = vaddr_read(cpu.esp, SREG_CS, 4);
	cpu.esp += 4;

	// 1. 取出cs选择子的值并且刷新隐藏部分
	cpu.cs.val = vaddr_read(cpu.esp, SREG_CS, 4);
	cpu.esp += 4;

	printf("\tgdtr.base=0x%x\n", cpu.gdtr.base);
	assert(0);
	cpu.gdtr.base -= KOFFSET;
	load_sreg();// 刷新段寄存器的隐藏部分
	cpu.gdtr.base += KOFFSET;

	return 0;
}
