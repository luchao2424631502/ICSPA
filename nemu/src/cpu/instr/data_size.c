#include "cpu/instr.h"

extern uint8_t data_size;
extern bool has_prefix;

// int data_size_16(uint32_t eip, uint8_t opcode)
make_instr_func(data_size_16)
{
	uint8_t op_code = 0;
	int len = 0;
	data_size = 16;
	has_prefix = true;
	op_code = instr_fetch(eip + 1, 1);
#ifdef NEMU_REF_INSTR
	len = __ref_opcode_entry[op_code](eip + 1, op_code);
#else
	len = opcode_entry[op_code](eip + 1, op_code); // 遇到0x66前缀, 直接执行下一条指令
#endif
	data_size = 32;
	has_prefix = false;
	return 1 + len;
}
