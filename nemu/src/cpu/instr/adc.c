#include "cpu/instr.h"
/*
Put the implementations of `adc' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(adc, r, rm, v); // adc_r2rm_v

static void instr_execute_2op()
{
	// cpu.ebx = 0x9999;
	// cpu.edx = 0x1;

	// 0. 读取源操作数
	operand_read(&opr_src);
	// 1. 读取目的操作数
	operand_read(&opr_dest);

	
	// 2. adc
	opr_dest.val = alu_adc(opr_src.val, opr_dest.val, data_size);

	// 3. 写回
	operand_write(&opr_dest);
	
}
