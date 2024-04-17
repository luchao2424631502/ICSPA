#include "cpu/instr.h"
/*
Put the implementations of `cli' instructions here.
*/
make_instr_func(cli)
{

	cpu.eflags.IF = 0;
	printf("[CLI] if=0x%x\n", cpu.eflags.IF);

	return 1;
}
