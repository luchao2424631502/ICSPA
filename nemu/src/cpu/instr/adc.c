#include "cpu/instr.h"
/*
Put the implementations of `adc' instructions here.
*/
static void instr_execute_2op();

make_instr_impl_2op(adc, r, rm, v); // adc_r2rm_v

static void instr_execute_2op()
{
	// 0. 读取源操作数
	operand_read(&opr_src);
	// 1. 读取目的操作数
	operand_read(&opr_dest);

	cpu.ebx = 0x9999;
	cpu.edx = 0x1;

	{printf("\n[ADC] imm=0x%X -> old_reg=0x%X \n", opr_src.val, opr_dest.val);}
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	// 2. adc
	opr_dest.val = alu_adc(opr_src.val, opr_dest.val, data_size);

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
	{printf("\timm=0x%X -> new_reg=0x%X ebp=0x%X esp=0x%X \n", opr_src.val, opr_dest.val, cpu.ebp, cpu.esp);}
}
