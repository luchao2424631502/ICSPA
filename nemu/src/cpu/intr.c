#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"

#define KOFFSET 0xc0000000

#define pd(msg, ...) printf(msg, ##__VA_ARGS__)

void raise_intr(uint8_t intr_no)
{
#ifdef IA32_INTR
	// 0.压栈
	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.eflags.val);
	// printf("luchao eflags=0x%x\n", cpu.eflags.val);

	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.cs.val);
	// printf("luchao cs=0x%x\n", cpu.cs.val);

	cpu.esp -= 4;
	vaddr_write(cpu.esp, SREG_CS, 4, cpu.eip);
	// printf("luchao eip=0x%x\n", cpu.eip);

	// printf("luchao stack_info 2=%x 1=%x 0=%x\n", vaddr_read(cpu.esp+8, SREG_CS, 4), 
	// 		vaddr_read(cpu.esp+4, SREG_CS, 4),
	// 	       	vaddr_read(cpu.esp, SREG_CS, 4));

	// 1.是中断号则关闭中断
	if (intr_no != 0x80)
		cpu.eflags.IF = 0;

	// 2.查询IDT, 获得中断处理程序的入口地址
	char *nemu_idt_base = cpu.idtr.base - KOFFSET + (void *)hw_mem;
	// pd("luchao hw_mem=0x%x idt_base=0x%x gdt_base=0x%x\n", (uint32_t)hw_mem, (uint32_t)nemu_idt_base,
			cpu.gdtr.base);
	uint32_t entry_offset = intr_no << 3;
	GateDesc *entry = (GateDesc *)(nemu_idt_base + entry_offset);
	if (entry->present == 0) {
		// pd("entry->present=0\n");
		assert(0);
	}
		
	uint32_t offset = (entry->offset_31_16 << 16) | entry->offset_15_0;
	// pd("luchao entry_offset=0x%x selector=0x%x\n", offset, entry->selector);

	// 3. 设置cs:eip
	cpu.cs.val = entry->selector;
	cpu.eip = offset;

	// 4. [!!!-因为GDT表更换了位置] 加载段选择子的隐藏部分
	cpu.gdtr.base -= KOFFSET;
	load_sreg(entry->selector >> 3);
	cpu.gdtr.base += KOFFSET;

	// printf("Please implement raise_intr()");
	// fflush(stdout);
	// assert(0);
#endif
}

void raise_sw_intr(uint8_t intr_no)
{
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
}
