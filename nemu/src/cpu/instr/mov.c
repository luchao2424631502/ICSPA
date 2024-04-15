#include "cpu/instr.h"

static void instr_execute_2op() 
{
	operand_read(&opr_src);
	opr_dest.val = opr_src.val;
	operand_write(&opr_dest);
}

// 通过宏定义生成大部分mov指令的工作流程
make_instr_impl_2op(mov, r, rm, b)
make_instr_impl_2op(mov, r, rm, v)
make_instr_impl_2op(mov, rm, r, b)
make_instr_impl_2op(mov, rm, r, v)
make_instr_impl_2op(mov, i, rm, b)
make_instr_impl_2op(mov, i, rm, v)
make_instr_impl_2op(mov, i, r, b)
make_instr_impl_2op(mov, i, r, v)
make_instr_impl_2op(mov, a, o, b)
make_instr_impl_2op(mov, a, o, v)
make_instr_impl_2op(mov, o, a, b)
make_instr_impl_2op(mov, o, a, v)

// 通用寄存器赋值到段寄存器
make_instr_func(mov_rm2sr_v)
{
	int len = 1;
	OPERAND seg, src;
	len += modrm_r_rm(eip + 1, &seg, &src);

	// mov 通用寄存器 -> 段寄存器
	cpu.segReg[seg.addr].val = cpu.gpr[src.addr].val;

	// 加载段寄存器的不可见部分
	load_sreg(seg.addr);
	printf("[MOV] seg_reg=0x%x <- src_reg=0x%x src_reg_val=0x%x\n", seg.addr , src.addr, cpu.gpr[src.addr].val);
	return len;
	assert(0);
}

// CR->GPR 
make_instr_func(mov_cr2rm_v)
{
	int len = 1;
	OPERAND cr, rm;
	len += modrm_r_rm(eip + 1, &cr, &rm);

	printf("[MOV_rm2cr] reg[%x] = cr%x.val = \n", rm.addr, cr.addr);
	// 将控制寄存器复制到通用寄存器
	if (0 == cr.addr) {
		cpu.gpr[rm.addr].val = cpu.cr0.val;
		printf("\t[MOV_cr2rm] reg[%x] = cr0.val = %x\n", rm.addr, cpu.cr0.val);
	}
	if (3 == cr.addr) {
		cpu.gpr[rm.addr].val = cpu.cr3.val;
		printf("\t[MOV_cr2rm] reg[%x] = cr3.val = %x\n", rm.addr, cpu.cr3.val);
	}

	return len;
}

// gpr->cr
make_instr_func(mov_rm2cr_v)
{
	int len = 1;
	OPERAND cr, rm;
	len += modrm_r_rm(eip + 1, &cr, &rm);

	printf("[MOV_rm2cr] cr%d = reg[%x] = %x\n", cr.addr, rm.addr, cpu.gpr[rm.addr].val);
	// 将通用寄存器赋值到控制寄存器
	if (0 == cr.addr) {
		cpu.cr0.val = cpu.gpr[rm.addr].val;
		printf("\t[MOV_rm2cr] cr0 = reg[%x] = %x\n", rm.addr, cpu.gpr[rm.addr].val);
	}

	if (3 == cr.addr) {
		cpu.cr3.val = cpu.gpr[rm.addr].val;
		printf("\t[MOV_rm2cr] cr3 = reg[%x] = %x\n", rm.addr, cpu.gpr[rm.addr].val);
	}
	return len;
}

make_instr_func(mov_zrm82r_v) {
	int len = 1;
	OPERAND r, rm;
	r.data_size = data_size;
	rm.data_size = 8;
	len += modrm_r_rm(eip + 1, &r, &rm);
	
	operand_read(&rm);
	r.val = rm.val;
	operand_write(&r);

	print_asm_2("mov", "", len, &rm, &r);
	return len;
}

make_instr_func(mov_zrm162r_l) {
        int len = 1;
        OPERAND r, rm;
        r.data_size = 32;
        rm.data_size = 16;
        len += modrm_r_rm(eip + 1, &r, &rm);

        operand_read(&rm);
        r.val = rm.val;
        operand_write(&r);
	print_asm_2("mov", "", len, &rm, &r);
        return len;
}

make_instr_func(mov_srm82r_v) {
        int len = 1;
        OPERAND r, rm;
        r.data_size = data_size;
        rm.data_size = 8;
        len += modrm_r_rm(eip + 1, &r, &rm);
        
	operand_read(&rm);
        r.val = sign_ext(rm.val, 8);
        operand_write(&r);
	print_asm_2("mov", "", len, &rm, &r);
        return len;
}

make_instr_func(mov_srm162r_l) {
        int len = 1;
        OPERAND r, rm;
        r.data_size = 32;
        rm.data_size = 16;
        len += modrm_r_rm(eip + 1, &r, &rm);
        operand_read(&rm);
        r.val = sign_ext(rm.val, 16);
        operand_write(&r);

	print_asm_2("mov", "", len, &rm, &r);
        return len;
}
