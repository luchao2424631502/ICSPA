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

/* 
 * int jmp_near_aindirect(uint32_t eip,uint8_t opcode)
 * 间接寻址, 拿到地址, 取出地址然后跳转
*/
make_instr_func(jmp_near_aindirect)
{
	int len = 1;

	OPERAND src;
	src.data_size = 32;

	// 解码r/m, 得到的地址在src.addr
	len += modrm_rm(eip + 1, &src); 

	// 1. 读取地址上的值(绝对地址)
	operand_read(&src);

	// 2. jmp 跳转过去 (手册上说直接设置eip)
	cpu.eip = src.val;

	return 0; 
}
