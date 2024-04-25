#include "cpu/intr.h"
#include "cpu/instr.h"

/*
Put the implementations of `int' instructions here.

Special note for `int': please use the instruction name `int_' instead of `int'.
*/
make_func_name(int_)
{
	int len = 1;
	OPERAND src;
	src.data_size = 8; // ib
	src.type = OPR_IMM;
	src.sreg = SREG_CS;
	src.addr = eip + 1;
	len += src.data_size / 8;

	// 0. 读取源操作数的值
	operand_read(&src);
	{printf("[int 0x%x] src.val=0x%x", src.val, src.val);}

	// 1. 什么都不做
	assert(0);
	return len;
}
