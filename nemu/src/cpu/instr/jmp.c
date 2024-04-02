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

        int offset = sign_ext(rel.val, data_size); // 跳转地址本来就是signed编码,
        // thank Ting Xu from CS'17 for finding this bug
        print_asm_1("jmp", "", 1 + data_size / 8, &rel);

        cpu.eip += offset; // 跳转目标地址是相当于当前指令的地址计算的

        return 1 + data_size / 8;
}

// int jmp_b(uint32_t eip, uint8_t opcode)
make_instr_func(jmp_b)
{
	OPERAND rel;
	rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
	rel.data_size = 8; // Jb
	rel.addr = eip + 1;

	operand_read(&rel);

	int offset = sign_ext(rel.val, 8); // signed-相对偏移
	cpu.eip += offset;
	
	return 1 + 1;
}
