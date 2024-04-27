#include "cpu/instr.h"
#include "device/port_io.h"
/*
Put the implementations of `out' instructions here.
*/
make_instr_func(out_b)
{
	int len = 1;

	// 将AL reg传送到DX reg表示的io端口
	pio_write(cpu.gpr[0x2]._16, 1, cpu.gpr[0x0]._8[0]);

	// printf("[OUT_B] AL=0x%x DX=0x%x\n", cpu.gpr[0x0]._8[0], cpu.gpr[0x2]._16);

	return len;
}
