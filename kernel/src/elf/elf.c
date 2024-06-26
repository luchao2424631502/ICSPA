#include "common.h"
#include "memory.h"
#include "string.h"

#include <elf.h>

#ifdef HAS_DEVICE_IDE
#define ELF_OFFSET_IN_DISK 0
#endif

#define STACK_SIZE (1 << 20)

void ide_read(uint8_t *, uint32_t, uint32_t);
void create_video_mapping();
uint32_t get_ucr3();

uint32_t loader()
{
	Elf32_Ehdr *elf;
	Elf32_Phdr *ph, *eph;

#ifdef HAS_DEVICE_IDE
	uint8_t buf[4096];
	ide_read(buf, ELF_OFFSET_IN_DISK, 4096);
	elf = (void *)buf;
	Log("ELF loading from hard disk.");
#else
	elf = (void *)0x0;
	Log("ELF loading from ram disk.");
#endif

	/* Load each program segment */
	ph = (void *)elf + elf->e_phoff;
	eph = ph + elf->e_phnum;
	for (; ph < eph; ph++)
	{
		if (ph->p_type == PT_LOAD)
		{

			// remove this panic!!!
			// panic("Please implement the loader");

#ifndef IA32_PAGE
/* TODO: copy the segment from the ELF file to its proper memory area */
			memcpy((void *)(ph->p_vaddr), (void *)elf + ph->p_offset, ph->p_filesz);
/* TODO: zeror the memory area [vaddr + file_sz, vaddr + mem_sz) */
			if (ph->p_filesz < ph->p_memsz)
				memset((void *)(ph->p_vaddr) + ph->p_filesz, 
				      0, ph->p_memsz - ph->p_filesz);	
#else
			// 1. mm_malloc填写的是用户页面(init_mm), 但是此时用的还是kernel页表
			uint32_t physical_addr = mm_malloc(ph->p_vaddr, ph->p_memsz);
			// 2. 因为kernel页表虚拟地址前128MB一对一映射到物理地址的前128MB,
			//    所以这里的物理地址即使经过页表翻译也是真正的物理地址
			memcpy((void *)physical_addr, (void *)elf + ph->p_offset, ph->p_filesz);
			if (ph->p_filesz < ph->p_memsz)
				memset((void *)(physical_addr) + ph->p_filesz, 
					0, ph->p_memsz - ph->p_filesz);
#endif

#ifdef IA32_PAGE
			/* Record the program break for future use */
			extern uint32_t brk;
			uint32_t new_brk = ph->p_vaddr + ph->p_memsz - 1;
			if (brk < new_brk)
			{
				brk = new_brk;
			}
#endif
		}
	}

	volatile uint32_t entry = elf->e_entry;

#ifdef IA32_PAGE
	mm_malloc(KOFFSET - STACK_SIZE, STACK_SIZE);
#ifdef HAS_DEVICE_VGA
	create_video_mapping();
#endif
	write_cr3(get_ucr3()); // 切换到用户的页表了?
#endif
	return entry;
}
