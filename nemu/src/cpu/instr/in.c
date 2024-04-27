#include "cpu/instr.h"
#include "device/port_io.h"
/*
Put the implementations of `in' instructions here.
*/
make_instr_func(in_b)
{
	int len = 1;

	// DX reg表示的端口中读取数据到AL reg
	cpu.gpr[0x0]._8[0] = pio_read(cpu.gpr[0x2]._16, 1);

	// {printf("[IN_B] AL=0x%x dx=0x%x,\n", cpu.gpr[0x0]._8[0], cpu.gpr[0x02]._16);}

	// assert(0);

	return len;
}
