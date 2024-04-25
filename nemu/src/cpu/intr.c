#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"

void raise_intr(uint8_t intr_no)
{
#ifdef IA32_INTR
	// 0.压栈
	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.eflags.val);
	printf("eflags=0x%x\n", cpu.eflags.val);

	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.cs.val);
	printf("cs=0x%x\n", cpu.cs.val);

	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.eip);
	printf("eip=0x%x\n", cpu.eip);

	printf("stack_info 2=%x 1=%x 0=%x\n", vaddr_read(cpu.esp+8, SREG_CS, 4), 
			vaddr_read(cpu.esp+4, SREG_CS, 4),
		       	vaddr_read(cpu.esp, SREG_CS, 4));
	
	
	printf("Please implement raise_intr()");
	fflush(stdout);
	assert(0);
#endif
}

void raise_sw_intr(uint8_t intr_no)
{
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
}
