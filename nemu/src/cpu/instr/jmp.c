#include "cpu/instr.h"

// int jmp_near(uint32_t eip, uint8_t opcode)
make_instr_func(jmp_near)
{
        OPERAND rel;
        rel.type = OPR_IMM;
        rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);

        int offset = sign_ext(rel.val, data_size);
        // thank Ting Xu from CS'17 for finding this bug
        print_asm_1("jmp", "", 1 + data_size / 8, &rel);
	{printf("\n[JMP_NEAR] now_eip=0x%X new_eip=0x%X\n", eip, eip + 1 + data_size / 8 + offset);}

        cpu.eip += offset;

        return 1 + data_size / 8;
}

// int jmp_byte(uint32_t eip, uint8_t opcode)
make_instr_func(jmp_byte)
{
	OPERAND rel;
	rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
	rel.data_size = 8; // Jb
	rel.addr = eip + 1;

	operand_read(&rel);

	int offset = sign_ext(rel.val, 8); // signed-相对偏移
	cpu.eip += offset;
	
	{printf("\n[JMP_BYTE] old_eip=0x%X new_eip=0x%X \n", eip, eip + 2 + offset);}
	return 1 + 1;
}

make_instr_func(ljmp)
{
	OPERAND rel;
	rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
	rel.data_size = data_size;
	rel.addr = eip + 1;

	operand_read(&rel);

	// eip赋值
	cpu.eip = rel.val;
	
	rel.data_size = 16;
	rel.addr = eip + 1 + 4;
	operand_read(&rel);
	// cs赋值
	cpu.cs.val = rel.val;

	// 修改了段寄存器就要更新段寄存器缓冲
	load_sreg(rel.val >> 3);
	{printf("\n[LJMP] cs=0x%x eip=0x%x sreg=%d\n", cpu.cs.val, cpu.eip, rel.val >> 3);}
	return 0;
}

/* 
 * int jmp_near_aindirect(uint32_t eip,uint8_t opcode)
 * 间接寻址, 拿到地址, 取出地址然后跳转
*/
make_instr_func(jmp_near_aindirect)
{
	OPERAND src;
	src.data_size = 32;

	// 0.解码r/m, 得到的地址在src.addr
	modrm_rm(eip + 1, &src); 
	// 1.根据地址拿到数据(跳转地址)
	operand_read(&src);

	// 2. 直接跳转过去
	cpu.eip = src.val;

	{printf("\n[JMP_NEAR_AINDIRECT]\n src.addr=0x%X src.val=0x%X\n", src.addr, src.val);};

	return 0; 
}
