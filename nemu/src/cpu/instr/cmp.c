#include "cpu/instr.h"
/*
Put the implementations of `cmp' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(cmp, i, rm, bv)	// cmp_i2rm_bv
make_instr_impl_2op(cmp, r, rm, v)	// cmp_r2rm_v

void instr_execute_2op() // cmp逻辑
{
	// 0. 读取imm
	operand_read(&opr_src);

	// 1. 读入目标reg中的值
	operand_read(&opr_dest);

	{printf("\n[CMP_BV] eip=0x%X imm_val=0x%X reg_val=0x%X\n", cpu.eip, opr_src.val, opr_dest.val);}
	{printf("\teflags before [%s %s %s %s]\n", cpu.eflags.ZF?"ZF":"",
			cpu.eflags.SF?"SF":"",
			cpu.eflags.CF?"CF":"",
			cpu.eflags.OF?"OF":"");}
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X\n", 
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp);}
	// 2. 执行cmp (手册说将立即数符号扩展到第一个操作数相同,实际通过sub指令来影响eflags标志位, 并且执行32bit减法)
	alu_sub(sign_ext(opr_src.val, opr_dest.data_size), opr_dest.val, opr_dest.data_size);

	{printf("\teflags after [%s %s %s %s]\n", cpu.eflags.ZF?"ZF":"",
			cpu.eflags.SF?"SF":"",
			cpu.eflags.CF?"CF":"",
			cpu.eflags.OF?"OF":"");}
}
