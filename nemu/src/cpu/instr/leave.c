#include "cpu/instr.h"
/*
Put the implementations of `leave' instructions here.
*/
make_instr_func(leave)
{
	printf("\n[LEAVE]\n");
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	// 0. 释放栈帧 将esp恢复为栈基址ebp
	cpu.esp = cpu.ebp;

	// 1. 将栈机制恢复为调用者的栈基址 pop %ebp
	cpu.ebp = vaddr_read(cpu.esp, SREG_CS, data_size / 8);
	cpu.esp += data_size / 8;
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	return 1;
}
