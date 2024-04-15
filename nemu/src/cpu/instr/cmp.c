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
make_instr_impl_2op(cmp, rm, r, v)	// cmp_rm2r_v 	cmp $0x10(%ebp), %eax
make_instr_impl_2op(cmp, rm, r, b)	// cmp_rm2r_b

make_instr_func(cmp_eaxI_v)
{
	int len = 1;
	OPERAND src;
	src.data_size = data_size; // 32
	src.type = OPR_IMM;
	src.sreg = SREG_CS;
	src.addr = eip + 1;
	len += src.data_size / 8;

	// 0. 读取imm
	operand_read(&src);

	alu_sub(src.val, cpu.eax, data_size);
	printf("[CMP_eaxI] src.val=0x%x cpu.eax=0x%x\n", src.val, cpu.eax);
	return len;
}

static void instr_execute_2op() // cmp逻辑
{
	// 0. 读取imm
	operand_read(&opr_src);

	// 1. 读入目标reg中的值
	operand_read(&opr_dest);

	{printf("\n[CMP_BV] eip=0x%X imm_val=0x%X reg_val=0x%X\n", 
			cpu.eip, opr_src.val, opr_dest.val);}
	{printf("\teflags before [%s %s %s %s]\n", cpu.eflags.ZF?"ZF":"",
			cpu.eflags.SF?"SF":"",
			cpu.eflags.CF?"CF":"",
			cpu.eflags.OF?"OF":"");}
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n", 
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
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
