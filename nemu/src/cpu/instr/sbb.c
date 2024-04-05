#include "cpu/instr.h"
/*
Put the implementations of `sbb' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(sbb, rm, r, v) // sbb_rm2r_v

static void instr_execute_2op()
{
	// 0. 取出源操作数
	operand_read(&opr_src);
	// 1.
	operand_read(&opr_dest);

	printf("\n[SBB]_before opr_src.val=0x%X opr_dest.val=0x%X opr_src.data_size=%d opr_dest.data_size=%d\n", opr_src.val, opr_dest.val, opr_src.data_size, opr_dest.data_size);
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	// 2.
	opr_dest.val = alu_sbb(opr_src.val, opr_dest.val, opr_dest.data_size);

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
