#include "cpu/instr.h"
/*
Put the implementations of `and' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(and, i, rm, bv)	// and_i2rm_bv
make_instr_impl_2op(and, rm, r, b)	// and_rm2r_b
make_instr_impl_2op(and, r, rm, v)	// and_r2rm_v
make_instr_impl_2op(and, i, rm, v)	// and_i2rm_v

static void instr_execute_2op()
{
	// 0. 读取寄存器的值
	operand_read(&opr_dest);

	// 1. 读取立即数的值
	operand_read(&opr_src);

	printf("\n[AND]\n");
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X\n", 
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp);}
	printf("\tsrc.val=0x%X dest.val=0x%X\n", opr_src.val, opr_dest.val);
	// 2. and运算
	opr_dest.val = alu_and(sign_ext(opr_src.val, opr_src.data_size), opr_dest.val, opr_dest.data_size);
	printf("\tsrc.val=0x%X dest.val=0x%X\n", opr_src.val, opr_dest.val);
	// 3. 写回
	operand_write(&opr_dest);

	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X\n", 
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp);}
}
