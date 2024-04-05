#include "cpu/instr.h"
/*
Put the implementations of `cmp' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(cmp, i, rm, bv)	// cmp_i2rm_bv  cmp $0x10, %ebx
make_instr_impl_2op(cmp, r, rm, v)	// cmp_r2rm_v	cmp %ebx, %eax
make_instr_impl_2op(cmp, i, a, b)	// cmp_i2a_b	cmp $0x1, %AL
make_instr_impl_2op(cmp, i, rm, b)	// cmp_i2rm_b
make_instr_impl_2op(cmp, i, rm, v)	// cmp_i2rm_v

static void instr_execute_2op() // cmp逻辑
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
	/* 2. 执行cmp (手册说将立即数符号扩展到第一个操作数相同, 以sub指令的方法实现)
	      debug发现这里出错原因:
	      - 没有按照i386指令手册要求的操作数运算大小来进行sub运算
	      - 这里因为有两个宏, 同时用到 instr_execute_2op() 函数, 
	        但是两个宏的opr操作数大小不一样, 所以大小需要适配相应指令
	*/

	alu_sub(sign_ext(opr_src.val, opr_src.data_size), opr_dest.val, opr_dest.data_size);

	{printf("\teflags after [%s %s %s %s]\n", cpu.eflags.ZF?"ZF":"",
			cpu.eflags.SF?"SF":"",
			cpu.eflags.CF?"CF":"",
			cpu.eflags.OF?"OF":"");}
}
