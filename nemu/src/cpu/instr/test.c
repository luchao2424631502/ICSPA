#include "cpu/instr.h"
/*
Put the implementations of `test' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(test, r, rm, v); // test_r2rm_v
make_instr_impl_2op(test, r, rm, b); // test_r2rm_b
make_instr_impl_2op(test, i, rm, v); // test_i2rm_v
make_instr_impl_2op(test, i,  a, v); // test_i2a_v
make_instr_impl_2op(test, i,  a, b); // test_i2a_b

static void instr_execute_2op()
{
	// 0. 读取源
	operand_read(&opr_src);
	// 1. 读取目的
	operand_read(&opr_dest);
	// 2. 执行and操作, 结果丢弃, 只影响标志位即可
	alu_and(opr_src.val, opr_dest.val, data_size);

	{printf("\n[TEST]\n");}
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n", 
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	printf("\talu_and size=%d\n", opr_dest.data_size);
	{printf("\teflags before [%s %s %s %s]\n", cpu.eflags.ZF?"ZF":"",
			cpu.eflags.SF?"SF":"",
			cpu.eflags.CF?"CF":"",
			cpu.eflags.OF?"OF":"");}
}
