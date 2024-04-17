#include "cpu/instr.h"
/*
Put the implementations of `sti' instructions here.
*/
make_instr_func(sti)
{
	cpu.eflags.IF = 1; // 开启中断
	printf("[STI] if=0x%x\n", cpu.eflags.IF);
	return 1;
}
