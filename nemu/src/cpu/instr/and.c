#include "cpu/instr.h"
/*
Put the implementations of `and' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(and, i, rm, bv)	// and_i2rm_bv
make_instr_impl_2op(and, rm, r, b)	// and_rm2r_b
make_instr_impl_2op(and, r, rm, v)	// and_r2rm_v
make_instr_impl_2op(and, i, rm, v)	// and_i2rm_v
make_instr_impl_2op(and, i, rm, b)	// and_i2rm_b

make_instr_func(and_eaxI_v) // and eAX, Iv
{
	int len = 1;
	OPERAND src;
	src.type = OPR_IMM;
	src.sreg = SREG_CS;
	src.addr = eip + 1;
	src.data_size = data_size; // 32

	// 0. 读取立即数
	operand_read(&src);

	// printf("[AND_i] imm=0x%x eax=0x%x\n", src.val, cpu.eax);

	// 1. AND 运算
	len += src.data_size / 8;
	cpu.eax = alu_and(src.val, cpu.eax, src.data_size); // 一定是32bit运算, 不需要符号扩展

	// printf("[AND_i] imm=0x%x eax=0x%x\n", src.val, cpu.eax);

	return len;
}

static void instr_execute_2op()
{
	// 0. 读取寄存器的值
	operand_read(&opr_dest);

	// 1. 读取立即数的值
	operand_read(&opr_src);

	// printf("\n[AND]\n");
	// printf("\tsrc.val=0x%X dest.val=0x%X\n", opr_src.val, opr_dest.val);
	// 2. and运算
	opr_dest.val = alu_and(sign_ext(opr_src.val, opr_src.data_size), opr_dest.val, opr_dest.data_size);
	printf("\tsrc.val=0x%X dest.val=0x%X\n", opr_src.val, opr_dest.val);
	// 3. 写回
	operand_write(&opr_dest);

}
