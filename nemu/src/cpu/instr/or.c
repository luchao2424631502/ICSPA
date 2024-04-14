#include "cpu/instr.h"
/*
Put the implementations of `or' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(or, r, rm, v); // or_r2rm_v
make_instr_impl_2op(or, rm, r, b); // or_rm2r_b
make_instr_impl_2op(or, i, rm, bv);// or_i2rm_bv

static void instr_execute_2op()
{
	{printf("\n[OR]\n");}
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n", 
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	// 0. 读取源操作数
	operand_read(&opr_src);
	// 1. 读取目的操作数
	operand_read(&opr_dest);
	// 2. or
	// opr_dest.val = alu_or(opr_src.val, opr_dest.val, data_size);
	opr_dest.val = alu_or(sign_ext(opr_src.val, opr_src.data_size), opr_dest.val, opr_dest.data_size);
	// 3. 写回
	operand_write(&opr_dest);
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n", 
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
}
