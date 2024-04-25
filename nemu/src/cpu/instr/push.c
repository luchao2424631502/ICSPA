#include "cpu/instr.h"
/*
Put the implementations of `push' instructions here.
*/

static void instr_execute_1op();

make_instr_impl_1op(push, r, l) // 生成的push_r_l适用于0x50~0x57
make_instr_impl_1op(push, rm, v)// push_rm_v
make_instr_impl_1op(push, i, b) // push_i_b [可能存在存在操作数大小问题]
make_instr_impl_1op(push, i, v) // push_i_v kernel使用到
/* 
 * int len = 1;
 * decode_data_size_l
 * decode_operand_r
 * instr_execute_1op
 * return len;
 * */
make_instr_func(pusha)
{
	int len = 1;

	// 先检查一下当前栈上的值
	printf("[PUSHA] +0=0x%x +1=0x%x +2=0x%x +3=0x%x +4=0x%x +5=0x%x\n", vaddr_read(cpu.esp, SREG_CS, 4),
	     	vaddr_read(cpu.esp+4, SREG_CS, 4),
	     	vaddr_read(cpu.esp+8, SREG_CS, 4),
	     	vaddr_read(cpu.esp+12, SREG_CS, 4),
	     	vaddr_read(cpu.esp+16, SREG_CS, 4),
		vaddr_read(cpu.esp+20, SREG_CS, 4));
	// assert(0);
	uint32_t temp = cpu.esp;

	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.eax); // eax
	
	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.ecx); // ecx

	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.edx); // edx

	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.ebx); // ebx

	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, temp); // temp

	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.ebp); // ebp

	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.esi); // esi

	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.edi); // edi

	return len;
}

/* 实现统一的instr_execute_1op */
static void instr_execute_1op()
{
	printf("\n[PUSH]_before eip=0x%X info reg $ebp=0x%X $esp=0x%X [$esp]=0x%X\n", cpu.eip, cpu.ebp, cpu.esp, vaddr_read(cpu.esp, SREG_CS, 4));
	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X\n", 
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp);}

	/* 24.4.25 永远不要觉得当前代码写的是对的, 果然在一个月后, 发现了一个BUG(代码处理的情况不对) */
	uint32_t old_esp = cpu.esp;
	// 0. esp -= 4;
	cpu.esp -= data_size / 8;
	// 1. 栈顶写入值
	operand_read(&opr_src);
	if (opr_src.data_size < data_size)
		vaddr_write(cpu.esp, SREG_CS, (data_size / 8),
				sign_ext(opr_src.val, opr_src.data_size));
	else
		if (opr_src.addr == 0x4) // 处理push esp, 否则push esp的值是错误的
			vaddr_write(cpu.esp, SREG_CS, (data_size / 8), old_esp);
		else
			vaddr_write(cpu.esp, SREG_CS, (data_size / 8),
					opr_src.val);

	{printf("\teax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esp=0x%X ebp=0x%X esi=0x%X edi=0x%X\n",
			cpu.eax,
			cpu.ecx,
			cpu.edx,
			cpu.ebx,
			cpu.esp,
			cpu.ebp,
			cpu.esi,
			cpu.edi);}
	printf("[PUSH]_after info reg $ebp=0x%X $esp=0x%X [$old_esp]=0x%X [$esp]=0x%X\n", cpu.ebp, cpu.esp, vaddr_read(cpu.esp + 4, SREG_CS, 4), vaddr_read(cpu.esp, SREG_CS, 4));
}
