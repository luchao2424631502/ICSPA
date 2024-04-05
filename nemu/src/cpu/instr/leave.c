#include "cpu/instr.h"
/*
Put the implementations of `leave' instructions here.
*/
make_instr_func(leave)
{
	// 0. 释放栈帧 将esp恢复为栈基址ebp
	cpu.esp = cpu.ebp;

	// 1. 将栈机制恢复为调用者的栈基址 pop %ebp
	cpu.ebp = vaddr_read(cpu.esp, SREG_CS, data_size / 8);
	cpu.esp += data_size / 8;
}
