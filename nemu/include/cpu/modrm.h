#ifndef __MOD_RM__
#define __MOD_RM__

#include "cpu/operand.h"

typedef union {
	struct
	{
		uint32_t rm : 3; // 地址: 立即数地址/基址(所以rm也确定使用的基址寄存器)寻址/变址寻址/寄存器地址
		uint32_t reg_opcode : 3; // 中间reg对应相应的寄存器(前提是指令使用到register了)
		uint32_t mod : 2;
	};
	uint8_t val;
} MODRM;

// The following functions parses the ModR/M byte and the possible following SIB and displacement bytes.
// Return the number of bytes read during parsing the ModR/M byte.
// Note they are only responsible for getting the type and addr of the
// operands, not the values.
int modrm_r_rm(uint32_t eip, OPERAND *r, OPERAND *rm);
int modrm_opcode_rm(uint32_t eip, uint8_t *opcode, OPERAND *rm);
int modrm_opcode(uint32_t eip, uint8_t *opcode);
int modrm_rm(uint32_t eip, OPERAND *rm);
#endif
