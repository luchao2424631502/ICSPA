
kernel:     file format elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	fa                   	cli    
c0030001:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
c0030008:	ea 0f 00 03 00 08 00 	ljmp   $0x8,$0x3000f

c003000f <start_cond>:
c003000f:	66 b8 10 00          	mov    $0x10,%ax
c0030013:	8e d8                	mov    %eax,%ds
c0030015:	8e c0                	mov    %eax,%es
c0030017:	8e d0                	mov    %eax,%ss
c0030019:	0f 20 c0             	mov    %cr0,%eax
c003001c:	83 c8 01             	or     $0x1,%eax
c003001f:	0f 22 c0             	mov    %eax,%cr0
c0030022:	bd 00 00 00 00       	mov    $0x0,%ebp
c0030027:	bc 00 00 00 08       	mov    $0x8000000,%esp
c003002c:	83 ec 10             	sub    $0x10,%esp
c003002f:	e9 bf 00 00 00       	jmp    c00300f3 <init>

c0030034 <gdt>:
	...
c003003c:	ff                   	(bad)  
c003003d:	ff 00                	incl   (%eax)
c003003f:	00 00                	add    %al,(%eax)
c0030041:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
c0030048:	00                   	.byte 0x0
c0030049:	92                   	xchg   %eax,%edx
c003004a:	cf                   	iret   
	...

c003004c <gdtdesc>:
c003004c:	17                   	pop    %ss
c003004d:	00 34 00             	add    %dh,(%eax,%eax,1)
c0030050:	03 00                	add    (%eax),%eax

c0030052 <vec0>:
c0030052:	6a 00                	push   $0x0
c0030054:	6a 00                	push   $0x0
c0030056:	eb 7b                	jmp    c00300d3 <asm_do_irq>

c0030058 <vec1>:
c0030058:	6a 00                	push   $0x0
c003005a:	6a 01                	push   $0x1
c003005c:	eb 75                	jmp    c00300d3 <asm_do_irq>

c003005e <vec2>:
c003005e:	6a 00                	push   $0x0
c0030060:	6a 02                	push   $0x2
c0030062:	eb 6f                	jmp    c00300d3 <asm_do_irq>

c0030064 <vec3>:
c0030064:	6a 00                	push   $0x0
c0030066:	6a 03                	push   $0x3
c0030068:	eb 69                	jmp    c00300d3 <asm_do_irq>

c003006a <vec4>:
c003006a:	6a 00                	push   $0x0
c003006c:	6a 04                	push   $0x4
c003006e:	eb 63                	jmp    c00300d3 <asm_do_irq>

c0030070 <vec5>:
c0030070:	6a 00                	push   $0x0
c0030072:	6a 05                	push   $0x5
c0030074:	eb 5d                	jmp    c00300d3 <asm_do_irq>

c0030076 <vec6>:
c0030076:	6a 00                	push   $0x0
c0030078:	6a 06                	push   $0x6
c003007a:	eb 57                	jmp    c00300d3 <asm_do_irq>

c003007c <vec7>:
c003007c:	6a 00                	push   $0x0
c003007e:	6a 07                	push   $0x7
c0030080:	eb 51                	jmp    c00300d3 <asm_do_irq>

c0030082 <vec8>:
c0030082:	6a 08                	push   $0x8
c0030084:	eb 4d                	jmp    c00300d3 <asm_do_irq>

c0030086 <vec9>:
c0030086:	6a 00                	push   $0x0
c0030088:	6a 09                	push   $0x9
c003008a:	eb 47                	jmp    c00300d3 <asm_do_irq>

c003008c <vec10>:
c003008c:	6a 0a                	push   $0xa
c003008e:	eb 43                	jmp    c00300d3 <asm_do_irq>

c0030090 <vec11>:
c0030090:	6a 0b                	push   $0xb
c0030092:	eb 3f                	jmp    c00300d3 <asm_do_irq>

c0030094 <vec12>:
c0030094:	6a 0c                	push   $0xc
c0030096:	eb 3b                	jmp    c00300d3 <asm_do_irq>

c0030098 <vec13>:
c0030098:	6a 0d                	push   $0xd
c003009a:	eb 37                	jmp    c00300d3 <asm_do_irq>

c003009c <vec14>:
c003009c:	6a 0e                	push   $0xe
c003009e:	eb 33                	jmp    c00300d3 <asm_do_irq>

c00300a0 <vecsys>:
c00300a0:	6a 00                	push   $0x0
c00300a2:	68 80 00 00 00       	push   $0x80
c00300a7:	eb 2a                	jmp    c00300d3 <asm_do_irq>

c00300a9 <irq0>:
c00300a9:	6a 00                	push   $0x0
c00300ab:	68 e8 03 00 00       	push   $0x3e8
c00300b0:	eb 21                	jmp    c00300d3 <asm_do_irq>

c00300b2 <irq1>:
c00300b2:	6a 00                	push   $0x0
c00300b4:	68 e9 03 00 00       	push   $0x3e9
c00300b9:	eb 18                	jmp    c00300d3 <asm_do_irq>

c00300bb <irq2>:
c00300bb:	6a 00                	push   $0x0
c00300bd:	68 ea 03 00 00       	push   $0x3ea
c00300c2:	eb 0f                	jmp    c00300d3 <asm_do_irq>

c00300c4 <irq14>:
c00300c4:	6a 00                	push   $0x0
c00300c6:	68 f6 03 00 00       	push   $0x3f6
c00300cb:	eb 06                	jmp    c00300d3 <asm_do_irq>

c00300cd <irq_empty>:
c00300cd:	6a 00                	push   $0x0
c00300cf:	6a ff                	push   $0xffffffff
c00300d1:	eb 00                	jmp    c00300d3 <asm_do_irq>

c00300d3 <asm_do_irq>:
c00300d3:	60                   	pusha  
c00300d4:	54                   	push   %esp
c00300d5:	e8 4a 0b 00 00       	call   c0030c24 <irq_handle>
c00300da:	83 c4 04             	add    $0x4,%esp
c00300dd:	61                   	popa   
c00300de:	83 c4 08             	add    $0x8,%esp
c00300e1:	cf                   	iret   

c00300e2 <sti>:
c00300e2:	55                   	push   %ebp
c00300e3:	89 e5                	mov    %esp,%ebp
c00300e5:	e8 98 00 00 00       	call   c0030182 <__x86.get_pc_thunk.ax>
c00300ea:	05 16 cf 00 00       	add    $0xcf16,%eax
c00300ef:	fb                   	sti    
c00300f0:	90                   	nop
c00300f1:	5d                   	pop    %ebp
c00300f2:	c3                   	ret    

c00300f3 <init>:
c00300f3:	55                   	push   %ebp
c00300f4:	89 e5                	mov    %esp,%ebp
c00300f6:	53                   	push   %ebx
c00300f7:	83 ec 04             	sub    $0x4,%esp
c00300fa:	e8 87 00 00 00       	call   c0030186 <__x86.get_pc_thunk.bx>
c00300ff:	81 c3 01 cf 00 00    	add    $0xcf01,%ebx
c0030105:	e8 fc 17 00 00       	call   c0031906 <init_page>
c003010a:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0030110:	8d 83 25 31 ff bf    	lea    -0x4000cedb(%ebx),%eax
c0030116:	ff e0                	jmp    *%eax
c0030118:	b8 01 00 00 00       	mov    $0x1,%eax
c003011d:	82                   	nemu_trap 
c003011e:	90                   	nop
c003011f:	83 c4 04             	add    $0x4,%esp
c0030122:	5b                   	pop    %ebx
c0030123:	5d                   	pop    %ebp
c0030124:	c3                   	ret    

c0030125 <init_cond>:
c0030125:	55                   	push   %ebp
c0030126:	89 e5                	mov    %esp,%ebp
c0030128:	53                   	push   %ebx
c0030129:	83 ec 14             	sub    $0x14,%esp
c003012c:	e8 55 00 00 00       	call   c0030186 <__x86.get_pc_thunk.bx>
c0030131:	81 c3 cf ce 00 00    	add    $0xcecf,%ebx
c0030137:	e8 ab 19 00 00       	call   c0031ae7 <init_segment>
c003013c:	e8 3c 0e 00 00       	call   c0030f7d <init_idt>
c0030141:	e8 9c ff ff ff       	call   c00300e2 <sti>
c0030146:	e8 7f 15 00 00       	call   c00316ca <init_mm>
c003014b:	8d 83 40 c0 ff ff    	lea    -0x3fc0(%ebx),%eax
c0030151:	50                   	push   %eax
c0030152:	6a 52                	push   $0x52
c0030154:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
c003015a:	50                   	push   %eax
c003015b:	8d 83 0c c0 ff ff    	lea    -0x3ff4(%ebx),%eax
c0030161:	50                   	push   %eax
c0030162:	e8 9c 09 00 00       	call   c0030b03 <printk>
c0030167:	83 c4 10             	add    $0x10,%esp
c003016a:	e8 31 07 00 00       	call   c00308a0 <loader>
c003016f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030172:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0030177:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003017a:	ff d0                	call   *%eax
c003017c:	90                   	nop
c003017d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030180:	c9                   	leave  
c0030181:	c3                   	ret    

c0030182 <__x86.get_pc_thunk.ax>:
c0030182:	8b 04 24             	mov    (%esp),%eax
c0030185:	c3                   	ret    

c0030186 <__x86.get_pc_thunk.bx>:
c0030186:	8b 1c 24             	mov    (%esp),%ebx
c0030189:	c3                   	ret    

c003018a <in_byte>:
c003018a:	55                   	push   %ebp
c003018b:	89 e5                	mov    %esp,%ebp
c003018d:	83 ec 14             	sub    $0x14,%esp
c0030190:	e8 ed ff ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030195:	05 6b ce 00 00       	add    $0xce6b,%eax
c003019a:	8b 45 08             	mov    0x8(%ebp),%eax
c003019d:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00301a1:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00301a4:	89 c2                	mov    %eax,%edx
c00301a6:	ec                   	in     (%dx),%al
c00301a7:	88 45 ff             	mov    %al,-0x1(%ebp)
c00301aa:	8a 45 ff             	mov    -0x1(%ebp),%al
c00301ad:	c9                   	leave  
c00301ae:	c3                   	ret    

c00301af <out_byte>:
c00301af:	55                   	push   %ebp
c00301b0:	89 e5                	mov    %esp,%ebp
c00301b2:	83 ec 08             	sub    $0x8,%esp
c00301b5:	e8 c8 ff ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00301ba:	05 46 ce 00 00       	add    $0xce46,%eax
c00301bf:	8b 45 08             	mov    0x8(%ebp),%eax
c00301c2:	8b 55 0c             	mov    0xc(%ebp),%edx
c00301c5:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00301c9:	88 d0                	mov    %dl,%al
c00301cb:	88 45 f8             	mov    %al,-0x8(%ebp)
c00301ce:	8a 45 f8             	mov    -0x8(%ebp),%al
c00301d1:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00301d4:	ee                   	out    %al,(%dx)
c00301d5:	90                   	nop
c00301d6:	c9                   	leave  
c00301d7:	c3                   	ret    

c00301d8 <out_long>:
c00301d8:	55                   	push   %ebp
c00301d9:	89 e5                	mov    %esp,%ebp
c00301db:	83 ec 04             	sub    $0x4,%esp
c00301de:	e8 9f ff ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00301e3:	05 1d ce 00 00       	add    $0xce1d,%eax
c00301e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00301eb:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00301ef:	8b 45 0c             	mov    0xc(%ebp),%eax
c00301f2:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00301f5:	ef                   	out    %eax,(%dx)
c00301f6:	90                   	nop
c00301f7:	c9                   	leave  
c00301f8:	c3                   	ret    

c00301f9 <dma_prepare>:
c00301f9:	55                   	push   %ebp
c00301fa:	89 e5                	mov    %esp,%ebp
c00301fc:	83 ec 10             	sub    $0x10,%esp
c00301ff:	e8 7e ff ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030204:	05 fc cd 00 00       	add    $0xcdfc,%eax
c0030209:	8b 55 08             	mov    0x8(%ebp),%edx
c003020c:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0030212:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0030215:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c003021b:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003021e:	89 0a                	mov    %ecx,(%edx)
c0030220:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c0030226:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c003022c:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c0030232:	8a 4a 07             	mov    0x7(%edx),%cl
c0030235:	83 c9 80             	or     $0xffffff80,%ecx
c0030238:	88 4a 07             	mov    %cl,0x7(%edx)
c003023b:	c7 c1 54 00 07 c0    	mov    $0xc0070054,%ecx
c0030241:	66 8b 51 06          	mov    0x6(%ecx),%dx
c0030245:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c003024b:	66 89 51 06          	mov    %dx,0x6(%ecx)
c003024f:	c7 c0 54 00 07 c0    	mov    $0xc0070054,%eax
c0030255:	05 00 00 00 40       	add    $0x40000000,%eax
c003025a:	89 45 f8             	mov    %eax,-0x8(%ebp)
c003025d:	ff 75 f8             	pushl  -0x8(%ebp)
c0030260:	68 44 c0 00 00       	push   $0xc044
c0030265:	e8 6e ff ff ff       	call   c00301d8 <out_long>
c003026a:	83 c4 08             	add    $0x8,%esp
c003026d:	90                   	nop
c003026e:	c9                   	leave  
c003026f:	c3                   	ret    

c0030270 <dma_issue_read>:
c0030270:	55                   	push   %ebp
c0030271:	89 e5                	mov    %esp,%ebp
c0030273:	e8 0a ff ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030278:	05 88 cd 00 00       	add    $0xcd88,%eax
c003027d:	68 40 c0 00 00       	push   $0xc040
c0030282:	e8 03 ff ff ff       	call   c003018a <in_byte>
c0030287:	83 c4 04             	add    $0x4,%esp
c003028a:	83 c8 09             	or     $0x9,%eax
c003028d:	0f b6 c0             	movzbl %al,%eax
c0030290:	50                   	push   %eax
c0030291:	68 40 c0 00 00       	push   $0xc040
c0030296:	e8 14 ff ff ff       	call   c00301af <out_byte>
c003029b:	83 c4 08             	add    $0x8,%esp
c003029e:	90                   	nop
c003029f:	c9                   	leave  
c00302a0:	c3                   	ret    

c00302a1 <wait_intr>:
c00302a1:	55                   	push   %ebp
c00302a2:	89 e5                	mov    %esp,%ebp
c00302a4:	e8 d9 fe ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00302a9:	05 57 cd 00 00       	add    $0xcd57,%eax
c00302ae:	f4                   	hlt    
c00302af:	90                   	nop
c00302b0:	5d                   	pop    %ebp
c00302b1:	c3                   	ret    

c00302b2 <ide_read>:
c00302b2:	55                   	push   %ebp
c00302b3:	89 e5                	mov    %esp,%ebp
c00302b5:	56                   	push   %esi
c00302b6:	53                   	push   %ebx
c00302b7:	83 ec 10             	sub    $0x10,%esp
c00302ba:	e8 c7 fe ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c00302bf:	81 c3 41 cd 00 00    	add    $0xcd41,%ebx
c00302c5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00302cc:	eb 22                	jmp    c00302f0 <ide_read+0x3e>
c00302ce:	8b 55 0c             	mov    0xc(%ebp),%edx
c00302d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302d4:	01 d0                	add    %edx,%eax
c00302d6:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00302d9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00302dc:	8d 34 11             	lea    (%ecx,%edx,1),%esi
c00302df:	83 ec 0c             	sub    $0xc,%esp
c00302e2:	50                   	push   %eax
c00302e3:	e8 c6 02 00 00       	call   c00305ae <read_byte>
c00302e8:	83 c4 10             	add    $0x10,%esp
c00302eb:	88 06                	mov    %al,(%esi)
c00302ed:	ff 45 f4             	incl   -0xc(%ebp)
c00302f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302f3:	3b 45 10             	cmp    0x10(%ebp),%eax
c00302f6:	72 d6                	jb     c00302ce <ide_read+0x1c>
c00302f8:	90                   	nop
c00302f9:	8d 65 f8             	lea    -0x8(%ebp),%esp
c00302fc:	5b                   	pop    %ebx
c00302fd:	5e                   	pop    %esi
c00302fe:	5d                   	pop    %ebp
c00302ff:	c3                   	ret    

c0030300 <ide_write>:
c0030300:	55                   	push   %ebp
c0030301:	89 e5                	mov    %esp,%ebp
c0030303:	53                   	push   %ebx
c0030304:	83 ec 14             	sub    $0x14,%esp
c0030307:	e8 7a fe ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c003030c:	81 c3 f4 cc 00 00    	add    $0xccf4,%ebx
c0030312:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030319:	eb 25                	jmp    c0030340 <ide_write+0x40>
c003031b:	8b 55 08             	mov    0x8(%ebp),%edx
c003031e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030321:	01 d0                	add    %edx,%eax
c0030323:	8a 00                	mov    (%eax),%al
c0030325:	0f b6 c0             	movzbl %al,%eax
c0030328:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003032b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003032e:	01 ca                	add    %ecx,%edx
c0030330:	83 ec 08             	sub    $0x8,%esp
c0030333:	50                   	push   %eax
c0030334:	52                   	push   %edx
c0030335:	e8 b1 02 00 00       	call   c00305eb <write_byte>
c003033a:	83 c4 10             	add    $0x10,%esp
c003033d:	ff 45 f4             	incl   -0xc(%ebp)
c0030340:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030343:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030346:	72 d3                	jb     c003031b <ide_write+0x1b>
c0030348:	90                   	nop
c0030349:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003034c:	c9                   	leave  
c003034d:	c3                   	ret    

c003034e <ide_writeback>:
c003034e:	55                   	push   %ebp
c003034f:	89 e5                	mov    %esp,%ebp
c0030351:	53                   	push   %ebx
c0030352:	83 ec 04             	sub    $0x4,%esp
c0030355:	e8 2c fe ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c003035a:	81 c3 a6 cc 00 00    	add    $0xcca6,%ebx
c0030360:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
c0030366:	40                   	inc    %eax
c0030367:	89 83 04 10 00 00    	mov    %eax,0x1004(%ebx)
c003036d:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
c0030373:	83 f8 64             	cmp    $0x64,%eax
c0030376:	75 0f                	jne    c0030387 <ide_writeback+0x39>
c0030378:	e8 f6 00 00 00       	call   c0030473 <cache_writeback>
c003037d:	c7 83 04 10 00 00 00 	movl   $0x0,0x1004(%ebx)
c0030384:	00 00 00 
c0030387:	90                   	nop
c0030388:	83 c4 04             	add    $0x4,%esp
c003038b:	5b                   	pop    %ebx
c003038c:	5d                   	pop    %ebp
c003038d:	c3                   	ret    

c003038e <ide_intr>:
c003038e:	55                   	push   %ebp
c003038f:	89 e5                	mov    %esp,%ebp
c0030391:	e8 ec fd ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030396:	05 6a cc 00 00       	add    $0xcc6a,%eax
c003039b:	c7 80 00 10 00 00 01 	movl   $0x1,0x1000(%eax)
c00303a2:	00 00 00 
c00303a5:	90                   	nop
c00303a6:	5d                   	pop    %ebp
c00303a7:	c3                   	ret    

c00303a8 <clear_ide_intr>:
c00303a8:	55                   	push   %ebp
c00303a9:	89 e5                	mov    %esp,%ebp
c00303ab:	e8 d2 fd ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00303b0:	05 50 cc 00 00       	add    $0xcc50,%eax
c00303b5:	c7 80 00 10 00 00 00 	movl   $0x0,0x1000(%eax)
c00303bc:	00 00 00 
c00303bf:	90                   	nop
c00303c0:	5d                   	pop    %ebp
c00303c1:	c3                   	ret    

c00303c2 <wait_ide_intr>:
c00303c2:	55                   	push   %ebp
c00303c3:	89 e5                	mov    %esp,%ebp
c00303c5:	53                   	push   %ebx
c00303c6:	e8 bb fd ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c00303cb:	81 c3 35 cc 00 00    	add    $0xcc35,%ebx
c00303d1:	eb 05                	jmp    c00303d8 <wait_ide_intr+0x16>
c00303d3:	e8 c9 fe ff ff       	call   c00302a1 <wait_intr>
c00303d8:	8b 83 00 10 00 00    	mov    0x1000(%ebx),%eax
c00303de:	85 c0                	test   %eax,%eax
c00303e0:	74 f1                	je     c00303d3 <wait_ide_intr+0x11>
c00303e2:	e8 c1 ff ff ff       	call   c00303a8 <clear_ide_intr>
c00303e7:	90                   	nop
c00303e8:	5b                   	pop    %ebx
c00303e9:	5d                   	pop    %ebp
c00303ea:	c3                   	ret    

c00303eb <init_ide>:
c00303eb:	55                   	push   %ebp
c00303ec:	89 e5                	mov    %esp,%ebp
c00303ee:	53                   	push   %ebx
c00303ef:	83 ec 04             	sub    $0x4,%esp
c00303f2:	e8 8f fd ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c00303f7:	81 c3 09 cc 00 00    	add    $0xcc09,%ebx
c00303fd:	e8 2e 00 00 00       	call   c0030430 <cache_init>
c0030402:	83 ec 08             	sub    $0x8,%esp
c0030405:	8d 83 4e 33 ff ff    	lea    -0xccb2(%ebx),%eax
c003040b:	50                   	push   %eax
c003040c:	6a 00                	push   $0x0
c003040e:	e8 44 07 00 00       	call   c0030b57 <add_irq_handle>
c0030413:	83 c4 10             	add    $0x10,%esp
c0030416:	83 ec 08             	sub    $0x8,%esp
c0030419:	8d 83 8e 33 ff ff    	lea    -0xcc72(%ebx),%eax
c003041f:	50                   	push   %eax
c0030420:	6a 0e                	push   $0xe
c0030422:	e8 30 07 00 00       	call   c0030b57 <add_irq_handle>
c0030427:	83 c4 10             	add    $0x10,%esp
c003042a:	90                   	nop
c003042b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003042e:	c9                   	leave  
c003042f:	c3                   	ret    

c0030430 <cache_init>:
c0030430:	55                   	push   %ebp
c0030431:	89 e5                	mov    %esp,%ebp
c0030433:	53                   	push   %ebx
c0030434:	83 ec 10             	sub    $0x10,%esp
c0030437:	e8 fd 01 00 00       	call   c0030639 <__x86.get_pc_thunk.dx>
c003043c:	81 c2 c4 cb 00 00    	add    $0xcbc4,%edx
c0030442:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030449:	eb 1b                	jmp    c0030466 <cache_init+0x36>
c003044b:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c003044e:	8d 9a 24 10 00 00    	lea    0x1024(%edx),%ebx
c0030454:	89 c8                	mov    %ecx,%eax
c0030456:	c1 e0 06             	shl    $0x6,%eax
c0030459:	01 c8                	add    %ecx,%eax
c003045b:	c1 e0 03             	shl    $0x3,%eax
c003045e:	01 d8                	add    %ebx,%eax
c0030460:	c6 00 00             	movb   $0x0,(%eax)
c0030463:	ff 45 f8             	incl   -0x8(%ebp)
c0030466:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c003046a:	7e df                	jle    c003044b <cache_init+0x1b>
c003046c:	90                   	nop
c003046d:	83 c4 10             	add    $0x10,%esp
c0030470:	5b                   	pop    %ebx
c0030471:	5d                   	pop    %ebp
c0030472:	c3                   	ret    

c0030473 <cache_writeback>:
c0030473:	55                   	push   %ebp
c0030474:	89 e5                	mov    %esp,%ebp
c0030476:	53                   	push   %ebx
c0030477:	83 ec 14             	sub    $0x14,%esp
c003047a:	e8 07 fd ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c003047f:	81 c3 81 cb 00 00    	add    $0xcb81,%ebx
c0030485:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003048c:	eb 72                	jmp    c0030500 <cache_writeback+0x8d>
c003048e:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030491:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
c0030497:	89 d0                	mov    %edx,%eax
c0030499:	c1 e0 06             	shl    $0x6,%eax
c003049c:	01 d0                	add    %edx,%eax
c003049e:	c1 e0 03             	shl    $0x3,%eax
c00304a1:	01 c8                	add    %ecx,%eax
c00304a3:	8a 00                	mov    (%eax),%al
c00304a5:	3c 01                	cmp    $0x1,%al
c00304a7:	75 54                	jne    c00304fd <cache_writeback+0x8a>
c00304a9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00304ac:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
c00304b2:	89 d0                	mov    %edx,%eax
c00304b4:	c1 e0 06             	shl    $0x6,%eax
c00304b7:	01 d0                	add    %edx,%eax
c00304b9:	c1 e0 03             	shl    $0x3,%eax
c00304bc:	01 c8                	add    %ecx,%eax
c00304be:	8b 10                	mov    (%eax),%edx
c00304c0:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c00304c3:	89 c8                	mov    %ecx,%eax
c00304c5:	c1 e0 06             	shl    $0x6,%eax
c00304c8:	01 c8                	add    %ecx,%eax
c00304ca:	c1 e0 03             	shl    $0x3,%eax
c00304cd:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
c00304d3:	01 c8                	add    %ecx,%eax
c00304d5:	83 c0 06             	add    $0x6,%eax
c00304d8:	83 ec 08             	sub    $0x8,%esp
c00304db:	52                   	push   %edx
c00304dc:	50                   	push   %eax
c00304dd:	e8 52 03 00 00       	call   c0030834 <disk_do_write>
c00304e2:	83 c4 10             	add    $0x10,%esp
c00304e5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00304e8:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
c00304ee:	89 d0                	mov    %edx,%eax
c00304f0:	c1 e0 06             	shl    $0x6,%eax
c00304f3:	01 d0                	add    %edx,%eax
c00304f5:	c1 e0 03             	shl    $0x3,%eax
c00304f8:	01 c8                	add    %ecx,%eax
c00304fa:	c6 00 00             	movb   $0x0,(%eax)
c00304fd:	ff 45 f4             	incl   -0xc(%ebp)
c0030500:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c0030504:	7e 88                	jle    c003048e <cache_writeback+0x1b>
c0030506:	90                   	nop
c0030507:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003050a:	c9                   	leave  
c003050b:	c3                   	ret    

c003050c <cache_fetch>:
c003050c:	55                   	push   %ebp
c003050d:	89 e5                	mov    %esp,%ebp
c003050f:	53                   	push   %ebx
c0030510:	83 ec 14             	sub    $0x14,%esp
c0030513:	e8 6e fc ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0030518:	81 c3 e8 ca 00 00    	add    $0xcae8,%ebx
c003051e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030521:	83 e0 7f             	and    $0x7f,%eax
c0030524:	89 c2                	mov    %eax,%edx
c0030526:	89 d0                	mov    %edx,%eax
c0030528:	c1 e0 06             	shl    $0x6,%eax
c003052b:	01 d0                	add    %edx,%eax
c003052d:	c1 e0 03             	shl    $0x3,%eax
c0030530:	8d 93 20 10 00 00    	lea    0x1020(%ebx),%edx
c0030536:	01 d0                	add    %edx,%eax
c0030538:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003053b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003053e:	8a 40 04             	mov    0x4(%eax),%al
c0030541:	3c 01                	cmp    $0x1,%al
c0030543:	75 0a                	jne    c003054f <cache_fetch+0x43>
c0030545:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030548:	8b 00                	mov    (%eax),%eax
c003054a:	39 45 08             	cmp    %eax,0x8(%ebp)
c003054d:	74 57                	je     c00305a6 <cache_fetch+0x9a>
c003054f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030552:	8a 40 04             	mov    0x4(%eax),%al
c0030555:	3c 01                	cmp    $0x1,%al
c0030557:	75 22                	jne    c003057b <cache_fetch+0x6f>
c0030559:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003055c:	8a 40 05             	mov    0x5(%eax),%al
c003055f:	3c 01                	cmp    $0x1,%al
c0030561:	75 18                	jne    c003057b <cache_fetch+0x6f>
c0030563:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030566:	8b 00                	mov    (%eax),%eax
c0030568:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003056b:	83 c2 06             	add    $0x6,%edx
c003056e:	83 ec 08             	sub    $0x8,%esp
c0030571:	50                   	push   %eax
c0030572:	52                   	push   %edx
c0030573:	e8 bc 02 00 00       	call   c0030834 <disk_do_write>
c0030578:	83 c4 10             	add    $0x10,%esp
c003057b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003057e:	83 c0 06             	add    $0x6,%eax
c0030581:	83 ec 08             	sub    $0x8,%esp
c0030584:	ff 75 08             	pushl  0x8(%ebp)
c0030587:	50                   	push   %eax
c0030588:	e8 3c 02 00 00       	call   c00307c9 <disk_do_read>
c003058d:	83 c4 10             	add    $0x10,%esp
c0030590:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030593:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c0030597:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003059a:	8b 55 08             	mov    0x8(%ebp),%edx
c003059d:	89 10                	mov    %edx,(%eax)
c003059f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00305a2:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c00305a6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00305a9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00305ac:	c9                   	leave  
c00305ad:	c3                   	ret    

c00305ae <read_byte>:
c00305ae:	55                   	push   %ebp
c00305af:	89 e5                	mov    %esp,%ebp
c00305b1:	83 ec 18             	sub    $0x18,%esp
c00305b4:	e8 c9 fb ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00305b9:	05 47 ca 00 00       	add    $0xca47,%eax
c00305be:	8b 45 08             	mov    0x8(%ebp),%eax
c00305c1:	c1 e8 09             	shr    $0x9,%eax
c00305c4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00305c7:	83 ec 0c             	sub    $0xc,%esp
c00305ca:	ff 75 f4             	pushl  -0xc(%ebp)
c00305cd:	e8 3a ff ff ff       	call   c003050c <cache_fetch>
c00305d2:	83 c4 10             	add    $0x10,%esp
c00305d5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00305d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00305db:	25 ff 01 00 00       	and    $0x1ff,%eax
c00305e0:	89 c2                	mov    %eax,%edx
c00305e2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00305e5:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c00305e9:	c9                   	leave  
c00305ea:	c3                   	ret    

c00305eb <write_byte>:
c00305eb:	55                   	push   %ebp
c00305ec:	89 e5                	mov    %esp,%ebp
c00305ee:	83 ec 28             	sub    $0x28,%esp
c00305f1:	e8 8c fb ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00305f6:	05 0a ca 00 00       	add    $0xca0a,%eax
c00305fb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00305fe:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0030601:	8b 45 08             	mov    0x8(%ebp),%eax
c0030604:	c1 e8 09             	shr    $0x9,%eax
c0030607:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003060a:	83 ec 0c             	sub    $0xc,%esp
c003060d:	ff 75 f4             	pushl  -0xc(%ebp)
c0030610:	e8 f7 fe ff ff       	call   c003050c <cache_fetch>
c0030615:	83 c4 10             	add    $0x10,%esp
c0030618:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003061b:	8b 45 08             	mov    0x8(%ebp),%eax
c003061e:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030623:	89 c1                	mov    %eax,%ecx
c0030625:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030628:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c003062b:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c003062f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030632:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0030636:	90                   	nop
c0030637:	c9                   	leave  
c0030638:	c3                   	ret    

c0030639 <__x86.get_pc_thunk.dx>:
c0030639:	8b 14 24             	mov    (%esp),%edx
c003063c:	c3                   	ret    

c003063d <in_byte>:
c003063d:	55                   	push   %ebp
c003063e:	89 e5                	mov    %esp,%ebp
c0030640:	83 ec 14             	sub    $0x14,%esp
c0030643:	e8 3a fb ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030648:	05 b8 c9 00 00       	add    $0xc9b8,%eax
c003064d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030650:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030654:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030657:	89 c2                	mov    %eax,%edx
c0030659:	ec                   	in     (%dx),%al
c003065a:	88 45 ff             	mov    %al,-0x1(%ebp)
c003065d:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030660:	c9                   	leave  
c0030661:	c3                   	ret    

c0030662 <in_long>:
c0030662:	55                   	push   %ebp
c0030663:	89 e5                	mov    %esp,%ebp
c0030665:	83 ec 14             	sub    $0x14,%esp
c0030668:	e8 15 fb ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003066d:	05 93 c9 00 00       	add    $0xc993,%eax
c0030672:	8b 45 08             	mov    0x8(%ebp),%eax
c0030675:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030679:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003067c:	89 c2                	mov    %eax,%edx
c003067e:	ed                   	in     (%dx),%eax
c003067f:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0030682:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030685:	c9                   	leave  
c0030686:	c3                   	ret    

c0030687 <out_byte>:
c0030687:	55                   	push   %ebp
c0030688:	89 e5                	mov    %esp,%ebp
c003068a:	83 ec 08             	sub    $0x8,%esp
c003068d:	e8 f0 fa ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030692:	05 6e c9 00 00       	add    $0xc96e,%eax
c0030697:	8b 45 08             	mov    0x8(%ebp),%eax
c003069a:	8b 55 0c             	mov    0xc(%ebp),%edx
c003069d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00306a1:	88 d0                	mov    %dl,%al
c00306a3:	88 45 f8             	mov    %al,-0x8(%ebp)
c00306a6:	8a 45 f8             	mov    -0x8(%ebp),%al
c00306a9:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00306ac:	ee                   	out    %al,(%dx)
c00306ad:	90                   	nop
c00306ae:	c9                   	leave  
c00306af:	c3                   	ret    

c00306b0 <out_long>:
c00306b0:	55                   	push   %ebp
c00306b1:	89 e5                	mov    %esp,%ebp
c00306b3:	83 ec 04             	sub    $0x4,%esp
c00306b6:	e8 c7 fa ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00306bb:	05 45 c9 00 00       	add    $0xc945,%eax
c00306c0:	8b 45 08             	mov    0x8(%ebp),%eax
c00306c3:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00306c7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00306ca:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00306cd:	ef                   	out    %eax,(%dx)
c00306ce:	90                   	nop
c00306cf:	c9                   	leave  
c00306d0:	c3                   	ret    

c00306d1 <waitdisk>:
c00306d1:	55                   	push   %ebp
c00306d2:	89 e5                	mov    %esp,%ebp
c00306d4:	e8 a9 fa ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00306d9:	05 27 c9 00 00       	add    $0xc927,%eax
c00306de:	90                   	nop
c00306df:	68 f7 01 00 00       	push   $0x1f7
c00306e4:	e8 54 ff ff ff       	call   c003063d <in_byte>
c00306e9:	83 c4 04             	add    $0x4,%esp
c00306ec:	0f b6 c0             	movzbl %al,%eax
c00306ef:	25 c0 00 00 00       	and    $0xc0,%eax
c00306f4:	83 f8 40             	cmp    $0x40,%eax
c00306f7:	75 e6                	jne    c00306df <waitdisk+0xe>
c00306f9:	90                   	nop
c00306fa:	c9                   	leave  
c00306fb:	c3                   	ret    

c00306fc <ide_prepare>:
c00306fc:	55                   	push   %ebp
c00306fd:	89 e5                	mov    %esp,%ebp
c00306ff:	e8 7e fa ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030704:	05 fc c8 00 00       	add    $0xc8fc,%eax
c0030709:	e8 c3 ff ff ff       	call   c00306d1 <waitdisk>
c003070e:	6a 00                	push   $0x0
c0030710:	68 f1 01 00 00       	push   $0x1f1
c0030715:	e8 6d ff ff ff       	call   c0030687 <out_byte>
c003071a:	83 c4 08             	add    $0x8,%esp
c003071d:	6a 01                	push   $0x1
c003071f:	68 f2 01 00 00       	push   $0x1f2
c0030724:	e8 5e ff ff ff       	call   c0030687 <out_byte>
c0030729:	83 c4 08             	add    $0x8,%esp
c003072c:	8b 45 08             	mov    0x8(%ebp),%eax
c003072f:	0f b6 c0             	movzbl %al,%eax
c0030732:	50                   	push   %eax
c0030733:	68 f3 01 00 00       	push   $0x1f3
c0030738:	e8 4a ff ff ff       	call   c0030687 <out_byte>
c003073d:	83 c4 08             	add    $0x8,%esp
c0030740:	8b 45 08             	mov    0x8(%ebp),%eax
c0030743:	c1 e8 08             	shr    $0x8,%eax
c0030746:	0f b6 c0             	movzbl %al,%eax
c0030749:	50                   	push   %eax
c003074a:	68 f4 01 00 00       	push   $0x1f4
c003074f:	e8 33 ff ff ff       	call   c0030687 <out_byte>
c0030754:	83 c4 08             	add    $0x8,%esp
c0030757:	8b 45 08             	mov    0x8(%ebp),%eax
c003075a:	c1 e8 10             	shr    $0x10,%eax
c003075d:	0f b6 c0             	movzbl %al,%eax
c0030760:	50                   	push   %eax
c0030761:	68 f5 01 00 00       	push   $0x1f5
c0030766:	e8 1c ff ff ff       	call   c0030687 <out_byte>
c003076b:	83 c4 08             	add    $0x8,%esp
c003076e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030771:	c1 e8 18             	shr    $0x18,%eax
c0030774:	83 c8 e0             	or     $0xffffffe0,%eax
c0030777:	0f b6 c0             	movzbl %al,%eax
c003077a:	50                   	push   %eax
c003077b:	68 f6 01 00 00       	push   $0x1f6
c0030780:	e8 02 ff ff ff       	call   c0030687 <out_byte>
c0030785:	83 c4 08             	add    $0x8,%esp
c0030788:	90                   	nop
c0030789:	c9                   	leave  
c003078a:	c3                   	ret    

c003078b <issue_read>:
c003078b:	55                   	push   %ebp
c003078c:	89 e5                	mov    %esp,%ebp
c003078e:	e8 ef f9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030793:	05 6d c8 00 00       	add    $0xc86d,%eax
c0030798:	6a 20                	push   $0x20
c003079a:	68 f7 01 00 00       	push   $0x1f7
c003079f:	e8 e3 fe ff ff       	call   c0030687 <out_byte>
c00307a4:	83 c4 08             	add    $0x8,%esp
c00307a7:	90                   	nop
c00307a8:	c9                   	leave  
c00307a9:	c3                   	ret    

c00307aa <issue_write>:
c00307aa:	55                   	push   %ebp
c00307ab:	89 e5                	mov    %esp,%ebp
c00307ad:	e8 d0 f9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00307b2:	05 4e c8 00 00       	add    $0xc84e,%eax
c00307b7:	6a 30                	push   $0x30
c00307b9:	68 f7 01 00 00       	push   $0x1f7
c00307be:	e8 c4 fe ff ff       	call   c0030687 <out_byte>
c00307c3:	83 c4 08             	add    $0x8,%esp
c00307c6:	90                   	nop
c00307c7:	c9                   	leave  
c00307c8:	c3                   	ret    

c00307c9 <disk_do_read>:
c00307c9:	55                   	push   %ebp
c00307ca:	89 e5                	mov    %esp,%ebp
c00307cc:	53                   	push   %ebx
c00307cd:	83 ec 14             	sub    $0x14,%esp
c00307d0:	e8 b1 f9 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c00307d5:	81 c3 2b c8 00 00    	add    $0xc82b,%ebx
c00307db:	e8 c8 fb ff ff       	call   c00303a8 <clear_ide_intr>
c00307e0:	83 ec 0c             	sub    $0xc,%esp
c00307e3:	ff 75 0c             	pushl  0xc(%ebp)
c00307e6:	e8 11 ff ff ff       	call   c00306fc <ide_prepare>
c00307eb:	83 c4 10             	add    $0x10,%esp
c00307ee:	e8 98 ff ff ff       	call   c003078b <issue_read>
c00307f3:	e8 ca fb ff ff       	call   c00303c2 <wait_ide_intr>
c00307f8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00307ff:	eb 25                	jmp    c0030826 <disk_do_read+0x5d>
c0030801:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030804:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003080b:	8b 45 08             	mov    0x8(%ebp),%eax
c003080e:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0030811:	83 ec 0c             	sub    $0xc,%esp
c0030814:	68 f0 01 00 00       	push   $0x1f0
c0030819:	e8 44 fe ff ff       	call   c0030662 <in_long>
c003081e:	83 c4 10             	add    $0x10,%esp
c0030821:	89 03                	mov    %eax,(%ebx)
c0030823:	ff 45 f4             	incl   -0xc(%ebp)
c0030826:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030829:	83 f8 7f             	cmp    $0x7f,%eax
c003082c:	76 d3                	jbe    c0030801 <disk_do_read+0x38>
c003082e:	90                   	nop
c003082f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030832:	c9                   	leave  
c0030833:	c3                   	ret    

c0030834 <disk_do_write>:
c0030834:	55                   	push   %ebp
c0030835:	89 e5                	mov    %esp,%ebp
c0030837:	83 ec 10             	sub    $0x10,%esp
c003083a:	e8 43 f9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003083f:	05 c1 c7 00 00       	add    $0xc7c1,%eax
c0030844:	ff 75 0c             	pushl  0xc(%ebp)
c0030847:	e8 b0 fe ff ff       	call   c00306fc <ide_prepare>
c003084c:	83 c4 04             	add    $0x4,%esp
c003084f:	e8 56 ff ff ff       	call   c00307aa <issue_write>
c0030854:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c003085b:	eb 22                	jmp    c003087f <disk_do_write+0x4b>
c003085d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030860:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030867:	8b 45 08             	mov    0x8(%ebp),%eax
c003086a:	01 d0                	add    %edx,%eax
c003086c:	8b 00                	mov    (%eax),%eax
c003086e:	50                   	push   %eax
c003086f:	68 f0 01 00 00       	push   $0x1f0
c0030874:	e8 37 fe ff ff       	call   c00306b0 <out_long>
c0030879:	83 c4 08             	add    $0x8,%esp
c003087c:	ff 45 fc             	incl   -0x4(%ebp)
c003087f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030882:	83 f8 7f             	cmp    $0x7f,%eax
c0030885:	76 d6                	jbe    c003085d <disk_do_write+0x29>
c0030887:	90                   	nop
c0030888:	c9                   	leave  
c0030889:	c3                   	ret    

c003088a <write_cr3>:
c003088a:	55                   	push   %ebp
c003088b:	89 e5                	mov    %esp,%ebp
c003088d:	e8 f0 f8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030892:	05 6e c7 00 00       	add    $0xc76e,%eax
c0030897:	8b 45 08             	mov    0x8(%ebp),%eax
c003089a:	0f 22 d8             	mov    %eax,%cr3
c003089d:	90                   	nop
c003089e:	5d                   	pop    %ebp
c003089f:	c3                   	ret    

c00308a0 <loader>:
c00308a0:	55                   	push   %ebp
c00308a1:	89 e5                	mov    %esp,%ebp
c00308a3:	53                   	push   %ebx
c00308a4:	83 ec 24             	sub    $0x24,%esp
c00308a7:	e8 da f8 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c00308ac:	81 c3 54 c7 00 00    	add    $0xc754,%ebx
c00308b2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00308b9:	8d 83 98 c0 ff ff    	lea    -0x3f68(%ebx),%eax
c00308bf:	50                   	push   %eax
c00308c0:	6a 1d                	push   $0x1d
c00308c2:	8d 83 4c c0 ff ff    	lea    -0x3fb4(%ebx),%eax
c00308c8:	50                   	push   %eax
c00308c9:	8d 83 5c c0 ff ff    	lea    -0x3fa4(%ebx),%eax
c00308cf:	50                   	push   %eax
c00308d0:	e8 2e 02 00 00       	call   c0030b03 <printk>
c00308d5:	83 c4 10             	add    $0x10,%esp
c00308d8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308db:	8b 50 1c             	mov    0x1c(%eax),%edx
c00308de:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308e1:	01 d0                	add    %edx,%eax
c00308e3:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00308e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308e9:	8b 40 2c             	mov    0x2c(%eax),%eax
c00308ec:	0f b7 c0             	movzwl %ax,%eax
c00308ef:	c1 e0 05             	shl    $0x5,%eax
c00308f2:	89 c2                	mov    %eax,%edx
c00308f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308f7:	01 d0                	add    %edx,%eax
c00308f9:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00308fc:	e9 b4 00 00 00       	jmp    c00309b5 <loader+0x115>
c0030901:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030904:	8b 00                	mov    (%eax),%eax
c0030906:	83 f8 01             	cmp    $0x1,%eax
c0030909:	0f 85 a2 00 00 00    	jne    c00309b1 <loader+0x111>
c003090f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030912:	8b 40 14             	mov    0x14(%eax),%eax
c0030915:	89 c2                	mov    %eax,%edx
c0030917:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003091a:	8b 40 08             	mov    0x8(%eax),%eax
c003091d:	83 ec 08             	sub    $0x8,%esp
c0030920:	52                   	push   %edx
c0030921:	50                   	push   %eax
c0030922:	e8 39 12 00 00       	call   c0031b60 <mm_malloc>
c0030927:	83 c4 10             	add    $0x10,%esp
c003092a:	89 45 e8             	mov    %eax,-0x18(%ebp)
c003092d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030930:	8b 50 10             	mov    0x10(%eax),%edx
c0030933:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030936:	8b 48 04             	mov    0x4(%eax),%ecx
c0030939:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003093c:	01 c1                	add    %eax,%ecx
c003093e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030941:	83 ec 04             	sub    $0x4,%esp
c0030944:	52                   	push   %edx
c0030945:	51                   	push   %ecx
c0030946:	50                   	push   %eax
c0030947:	e8 a8 14 00 00       	call   c0031df4 <memcpy>
c003094c:	83 c4 10             	add    $0x10,%esp
c003094f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030952:	8b 50 10             	mov    0x10(%eax),%edx
c0030955:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030958:	8b 40 14             	mov    0x14(%eax),%eax
c003095b:	39 c2                	cmp    %eax,%edx
c003095d:	73 28                	jae    c0030987 <loader+0xe7>
c003095f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030962:	8b 50 14             	mov    0x14(%eax),%edx
c0030965:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030968:	8b 40 10             	mov    0x10(%eax),%eax
c003096b:	29 c2                	sub    %eax,%edx
c003096d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030970:	8b 48 10             	mov    0x10(%eax),%ecx
c0030973:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030976:	01 c8                	add    %ecx,%eax
c0030978:	83 ec 04             	sub    $0x4,%esp
c003097b:	52                   	push   %edx
c003097c:	6a 00                	push   $0x0
c003097e:	50                   	push   %eax
c003097f:	e8 b8 14 00 00       	call   c0031e3c <memset>
c0030984:	83 c4 10             	add    $0x10,%esp
c0030987:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003098a:	8b 50 08             	mov    0x8(%eax),%edx
c003098d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030990:	8b 40 14             	mov    0x14(%eax),%eax
c0030993:	01 d0                	add    %edx,%eax
c0030995:	48                   	dec    %eax
c0030996:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0030999:	c7 c0 88 ee 04 c0    	mov    $0xc004ee88,%eax
c003099f:	8b 00                	mov    (%eax),%eax
c00309a1:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00309a4:	76 0b                	jbe    c00309b1 <loader+0x111>
c00309a6:	c7 c0 88 ee 04 c0    	mov    $0xc004ee88,%eax
c00309ac:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00309af:	89 10                	mov    %edx,(%eax)
c00309b1:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c00309b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309b8:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c00309bb:	0f 82 40 ff ff ff    	jb     c0030901 <loader+0x61>
c00309c1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00309c4:	8b 40 18             	mov    0x18(%eax),%eax
c00309c7:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00309ca:	83 ec 08             	sub    $0x8,%esp
c00309cd:	68 00 00 10 00       	push   $0x100000
c00309d2:	68 00 00 f0 bf       	push   $0xbff00000
c00309d7:	e8 84 11 00 00       	call   c0031b60 <mm_malloc>
c00309dc:	83 c4 10             	add    $0x10,%esp
c00309df:	e8 81 0c 00 00       	call   c0031665 <get_ucr3>
c00309e4:	83 ec 0c             	sub    $0xc,%esp
c00309e7:	50                   	push   %eax
c00309e8:	e8 9d fe ff ff       	call   c003088a <write_cr3>
c00309ed:	83 c4 10             	add    $0x10,%esp
c00309f0:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00309f3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00309f6:	c9                   	leave  
c00309f7:	c3                   	ret    

c00309f8 <sbrk>:
c00309f8:	55                   	push   %ebp
c00309f9:	89 e5                	mov    %esp,%ebp
c00309fb:	53                   	push   %ebx
c00309fc:	83 ec 04             	sub    $0x4,%esp
c00309ff:	e8 7e f7 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030a04:	05 fc c5 00 00       	add    $0xc5fc,%eax
c0030a09:	83 ec 0c             	sub    $0xc,%esp
c0030a0c:	8d 90 a0 c0 ff ff    	lea    -0x3f60(%eax),%edx
c0030a12:	52                   	push   %edx
c0030a13:	8d 90 00 c1 ff ff    	lea    -0x3f00(%eax),%edx
c0030a19:	52                   	push   %edx
c0030a1a:	6a 09                	push   $0x9
c0030a1c:	8d 90 a2 c0 ff ff    	lea    -0x3f5e(%eax),%edx
c0030a22:	52                   	push   %edx
c0030a23:	8d 90 b4 c0 ff ff    	lea    -0x3f4c(%eax),%edx
c0030a29:	52                   	push   %edx
c0030a2a:	89 c3                	mov    %eax,%ebx
c0030a2c:	e8 d2 00 00 00       	call   c0030b03 <printk>
c0030a31:	83 c4 20             	add    $0x20,%esp
c0030a34:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a39:	82                   	nemu_trap 
c0030a3a:	b8 00 00 00 00       	mov    $0x0,%eax
c0030a3f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a42:	c9                   	leave  
c0030a43:	c3                   	ret    

c0030a44 <in_byte>:
c0030a44:	55                   	push   %ebp
c0030a45:	89 e5                	mov    %esp,%ebp
c0030a47:	83 ec 14             	sub    $0x14,%esp
c0030a4a:	e8 33 f7 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030a4f:	05 b1 c5 00 00       	add    $0xc5b1,%eax
c0030a54:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a57:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030a5b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030a5e:	89 c2                	mov    %eax,%edx
c0030a60:	ec                   	in     (%dx),%al
c0030a61:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030a64:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030a67:	c9                   	leave  
c0030a68:	c3                   	ret    

c0030a69 <out_byte>:
c0030a69:	55                   	push   %ebp
c0030a6a:	89 e5                	mov    %esp,%ebp
c0030a6c:	83 ec 08             	sub    $0x8,%esp
c0030a6f:	e8 0e f7 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030a74:	05 8c c5 00 00       	add    $0xc58c,%eax
c0030a79:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a7c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030a7f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030a83:	88 d0                	mov    %dl,%al
c0030a85:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030a88:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030a8b:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030a8e:	ee                   	out    %al,(%dx)
c0030a8f:	90                   	nop
c0030a90:	c9                   	leave  
c0030a91:	c3                   	ret    

c0030a92 <init_serial>:
c0030a92:	55                   	push   %ebp
c0030a93:	89 e5                	mov    %esp,%ebp
c0030a95:	e8 e8 f6 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030a9a:	05 66 c5 00 00       	add    $0xc566,%eax
c0030a9f:	90                   	nop
c0030aa0:	5d                   	pop    %ebp
c0030aa1:	c3                   	ret    

c0030aa2 <serial_idle>:
c0030aa2:	55                   	push   %ebp
c0030aa3:	89 e5                	mov    %esp,%ebp
c0030aa5:	e8 d8 f6 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030aaa:	05 56 c5 00 00       	add    $0xc556,%eax
c0030aaf:	68 fd 03 00 00       	push   $0x3fd
c0030ab4:	e8 8b ff ff ff       	call   c0030a44 <in_byte>
c0030ab9:	83 c4 04             	add    $0x4,%esp
c0030abc:	0f b6 c0             	movzbl %al,%eax
c0030abf:	83 e0 20             	and    $0x20,%eax
c0030ac2:	85 c0                	test   %eax,%eax
c0030ac4:	0f 95 c0             	setne  %al
c0030ac7:	0f b6 c0             	movzbl %al,%eax
c0030aca:	c9                   	leave  
c0030acb:	c3                   	ret    

c0030acc <serial_printc>:
c0030acc:	55                   	push   %ebp
c0030acd:	89 e5                	mov    %esp,%ebp
c0030acf:	83 ec 04             	sub    $0x4,%esp
c0030ad2:	e8 ab f6 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030ad7:	05 29 c5 00 00       	add    $0xc529,%eax
c0030adc:	8b 45 08             	mov    0x8(%ebp),%eax
c0030adf:	88 45 fc             	mov    %al,-0x4(%ebp)
c0030ae2:	90                   	nop
c0030ae3:	e8 ba ff ff ff       	call   c0030aa2 <serial_idle>
c0030ae8:	85 c0                	test   %eax,%eax
c0030aea:	74 f7                	je     c0030ae3 <serial_printc+0x17>
c0030aec:	8a 45 fc             	mov    -0x4(%ebp),%al
c0030aef:	0f b6 c0             	movzbl %al,%eax
c0030af2:	50                   	push   %eax
c0030af3:	68 f8 03 00 00       	push   $0x3f8
c0030af8:	e8 6c ff ff ff       	call   c0030a69 <out_byte>
c0030afd:	83 c4 08             	add    $0x8,%esp
c0030b00:	90                   	nop
c0030b01:	c9                   	leave  
c0030b02:	c3                   	ret    

c0030b03 <printk>:
c0030b03:	55                   	push   %ebp
c0030b04:	89 e5                	mov    %esp,%ebp
c0030b06:	53                   	push   %ebx
c0030b07:	83 ec 14             	sub    $0x14,%esp
c0030b0a:	e8 77 f6 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0030b0f:	81 c3 f1 c4 00 00    	add    $0xc4f1,%ebx
c0030b15:	8d 45 0c             	lea    0xc(%ebp),%eax
c0030b18:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030b1b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b1e:	ff 75 f4             	pushl  -0xc(%ebp)
c0030b21:	50                   	push   %eax
c0030b22:	68 00 01 00 00       	push   $0x100
c0030b27:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030b2d:	50                   	push   %eax
c0030b2e:	e8 2d 14 00 00       	call   c0031f60 <vsnprintf>
c0030b33:	83 c4 10             	add    $0x10,%esp
c0030b36:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030b39:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030b3c:	83 ec 04             	sub    $0x4,%esp
c0030b3f:	50                   	push   %eax
c0030b40:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030b46:	50                   	push   %eax
c0030b47:	6a 01                	push   $0x1
c0030b49:	e8 83 07 00 00       	call   c00312d1 <fs_write>
c0030b4e:	83 c4 10             	add    $0x10,%esp
c0030b51:	90                   	nop
c0030b52:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b55:	c9                   	leave  
c0030b56:	c3                   	ret    

c0030b57 <add_irq_handle>:
c0030b57:	55                   	push   %ebp
c0030b58:	89 e5                	mov    %esp,%ebp
c0030b5a:	53                   	push   %ebx
c0030b5b:	83 ec 14             	sub    $0x14,%esp
c0030b5e:	e8 23 f6 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0030b63:	81 c3 9d c4 00 00    	add    $0xc49d,%ebx
c0030b69:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0030b6d:	7e 2f                	jle    c0030b9e <add_irq_handle+0x47>
c0030b6f:	83 ec 0c             	sub    $0xc,%esp
c0030b72:	8d 83 08 c1 ff ff    	lea    -0x3ef8(%ebx),%eax
c0030b78:	50                   	push   %eax
c0030b79:	8d 83 60 c2 ff ff    	lea    -0x3da0(%ebx),%eax
c0030b7f:	50                   	push   %eax
c0030b80:	6a 17                	push   $0x17
c0030b82:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030b88:	50                   	push   %eax
c0030b89:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030b8f:	50                   	push   %eax
c0030b90:	e8 6e ff ff ff       	call   c0030b03 <printk>
c0030b95:	83 c4 20             	add    $0x20,%esp
c0030b98:	b8 01 00 00 00       	mov    $0x1,%eax
c0030b9d:	82                   	nemu_trap 
c0030b9e:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
c0030ba4:	83 f8 20             	cmp    $0x20,%eax
c0030ba7:	7e 2f                	jle    c0030bd8 <add_irq_handle+0x81>
c0030ba9:	83 ec 0c             	sub    $0xc,%esp
c0030bac:	8d 83 7a c1 ff ff    	lea    -0x3e86(%ebx),%eax
c0030bb2:	50                   	push   %eax
c0030bb3:	8d 83 60 c2 ff ff    	lea    -0x3da0(%ebx),%eax
c0030bb9:	50                   	push   %eax
c0030bba:	6a 18                	push   $0x18
c0030bbc:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030bc2:	50                   	push   %eax
c0030bc3:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030bc9:	50                   	push   %eax
c0030bca:	e8 34 ff ff ff       	call   c0030b03 <printk>
c0030bcf:	83 c4 20             	add    $0x20,%esp
c0030bd2:	b8 01 00 00 00       	mov    $0x1,%eax
c0030bd7:	82                   	nemu_trap 
c0030bd8:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
c0030bde:	8d 50 01             	lea    0x1(%eax),%edx
c0030be1:	89 93 60 16 01 00    	mov    %edx,0x11660(%ebx)
c0030be7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0030bee:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
c0030bf4:	01 d0                	add    %edx,%eax
c0030bf6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030bf9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030bfc:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030bff:	89 10                	mov    %edx,(%eax)
c0030c01:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c04:	8b 94 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%edx
c0030c0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c0e:	89 50 04             	mov    %edx,0x4(%eax)
c0030c11:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c14:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030c17:	89 94 83 20 16 01 00 	mov    %edx,0x11620(%ebx,%eax,4)
c0030c1e:	90                   	nop
c0030c1f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030c22:	c9                   	leave  
c0030c23:	c3                   	ret    

c0030c24 <irq_handle>:
c0030c24:	55                   	push   %ebp
c0030c25:	89 e5                	mov    %esp,%ebp
c0030c27:	53                   	push   %ebx
c0030c28:	83 ec 14             	sub    $0x14,%esp
c0030c2b:	e8 56 f5 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0030c30:	81 c3 d0 c3 00 00    	add    $0xc3d0,%ebx
c0030c36:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c39:	8b 40 20             	mov    0x20(%eax),%eax
c0030c3c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030c3f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0030c43:	79 2a                	jns    c0030c6f <irq_handle+0x4b>
c0030c45:	8d 83 70 c2 ff ff    	lea    -0x3d90(%ebx),%eax
c0030c4b:	50                   	push   %eax
c0030c4c:	6a 27                	push   $0x27
c0030c4e:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030c54:	50                   	push   %eax
c0030c55:	8d 83 98 c1 ff ff    	lea    -0x3e68(%ebx),%eax
c0030c5b:	50                   	push   %eax
c0030c5c:	e8 a2 fe ff ff       	call   c0030b03 <printk>
c0030c61:	83 c4 10             	add    $0x10,%esp
c0030c64:	b8 01 00 00 00       	mov    $0x1,%eax
c0030c69:	82                   	nemu_trap 
c0030c6a:	e9 cb 00 00 00       	jmp    c0030d3a <irq_handle+0x116>
c0030c6f:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
c0030c76:	75 13                	jne    c0030c8b <irq_handle+0x67>
c0030c78:	83 ec 0c             	sub    $0xc,%esp
c0030c7b:	ff 75 08             	pushl  0x8(%ebp)
c0030c7e:	e8 df 08 00 00       	call   c0031562 <do_syscall>
c0030c83:	83 c4 10             	add    $0x10,%esp
c0030c86:	e9 af 00 00 00       	jmp    c0030d3a <irq_handle+0x116>
c0030c8b:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030c92:	7f 38                	jg     c0030ccc <irq_handle+0xa8>
c0030c94:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c97:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c9a:	8b 40 28             	mov    0x28(%eax),%eax
c0030c9d:	83 ec 04             	sub    $0x4,%esp
c0030ca0:	52                   	push   %edx
c0030ca1:	50                   	push   %eax
c0030ca2:	ff 75 f0             	pushl  -0x10(%ebp)
c0030ca5:	8d 83 70 c2 ff ff    	lea    -0x3d90(%ebx),%eax
c0030cab:	50                   	push   %eax
c0030cac:	6a 2f                	push   $0x2f
c0030cae:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030cb4:	50                   	push   %eax
c0030cb5:	8d 83 e4 c1 ff ff    	lea    -0x3e1c(%ebx),%eax
c0030cbb:	50                   	push   %eax
c0030cbc:	e8 42 fe ff ff       	call   c0030b03 <printk>
c0030cc1:	83 c4 20             	add    $0x20,%esp
c0030cc4:	b8 01 00 00 00       	mov    $0x1,%eax
c0030cc9:	82                   	nemu_trap 
c0030cca:	eb 6e                	jmp    c0030d3a <irq_handle+0x116>
c0030ccc:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030cd3:	7e 65                	jle    c0030d3a <irq_handle+0x116>
c0030cd5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030cd8:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0030cdd:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0030ce0:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c0030ce4:	7e 2f                	jle    c0030d15 <irq_handle+0xf1>
c0030ce6:	83 ec 0c             	sub    $0xc,%esp
c0030ce9:	8d 83 47 c2 ff ff    	lea    -0x3db9(%ebx),%eax
c0030cef:	50                   	push   %eax
c0030cf0:	8d 83 70 c2 ff ff    	lea    -0x3d90(%ebx),%eax
c0030cf6:	50                   	push   %eax
c0030cf7:	6a 34                	push   $0x34
c0030cf9:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030cff:	50                   	push   %eax
c0030d00:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030d06:	50                   	push   %eax
c0030d07:	e8 f7 fd ff ff       	call   c0030b03 <printk>
c0030d0c:	83 c4 20             	add    $0x20,%esp
c0030d0f:	b8 01 00 00 00       	mov    $0x1,%eax
c0030d14:	82                   	nemu_trap 
c0030d15:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030d18:	8b 84 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%eax
c0030d1f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030d22:	eb 10                	jmp    c0030d34 <irq_handle+0x110>
c0030d24:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d27:	8b 00                	mov    (%eax),%eax
c0030d29:	ff d0                	call   *%eax
c0030d2b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d2e:	8b 40 04             	mov    0x4(%eax),%eax
c0030d31:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030d34:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0030d38:	75 ea                	jne    c0030d24 <irq_handle+0x100>
c0030d3a:	90                   	nop
c0030d3b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030d3e:	c9                   	leave  
c0030d3f:	c3                   	ret    

c0030d40 <out_byte>:
c0030d40:	55                   	push   %ebp
c0030d41:	89 e5                	mov    %esp,%ebp
c0030d43:	83 ec 08             	sub    $0x8,%esp
c0030d46:	e8 37 f4 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030d4b:	05 b5 c2 00 00       	add    $0xc2b5,%eax
c0030d50:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d53:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030d56:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030d5a:	88 d0                	mov    %dl,%al
c0030d5c:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030d5f:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030d62:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030d65:	ee                   	out    %al,(%dx)
c0030d66:	90                   	nop
c0030d67:	c9                   	leave  
c0030d68:	c3                   	ret    

c0030d69 <init_i8259>:
c0030d69:	55                   	push   %ebp
c0030d6a:	89 e5                	mov    %esp,%ebp
c0030d6c:	e8 11 f4 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030d71:	05 8f c2 00 00       	add    $0xc28f,%eax
c0030d76:	68 ff 00 00 00       	push   $0xff
c0030d7b:	6a 21                	push   $0x21
c0030d7d:	e8 be ff ff ff       	call   c0030d40 <out_byte>
c0030d82:	83 c4 08             	add    $0x8,%esp
c0030d85:	68 ff 00 00 00       	push   $0xff
c0030d8a:	68 a1 00 00 00       	push   $0xa1
c0030d8f:	e8 ac ff ff ff       	call   c0030d40 <out_byte>
c0030d94:	83 c4 08             	add    $0x8,%esp
c0030d97:	6a 11                	push   $0x11
c0030d99:	6a 20                	push   $0x20
c0030d9b:	e8 a0 ff ff ff       	call   c0030d40 <out_byte>
c0030da0:	83 c4 08             	add    $0x8,%esp
c0030da3:	6a 20                	push   $0x20
c0030da5:	6a 21                	push   $0x21
c0030da7:	e8 94 ff ff ff       	call   c0030d40 <out_byte>
c0030dac:	83 c4 08             	add    $0x8,%esp
c0030daf:	6a 04                	push   $0x4
c0030db1:	6a 21                	push   $0x21
c0030db3:	e8 88 ff ff ff       	call   c0030d40 <out_byte>
c0030db8:	83 c4 08             	add    $0x8,%esp
c0030dbb:	6a 03                	push   $0x3
c0030dbd:	6a 21                	push   $0x21
c0030dbf:	e8 7c ff ff ff       	call   c0030d40 <out_byte>
c0030dc4:	83 c4 08             	add    $0x8,%esp
c0030dc7:	6a 11                	push   $0x11
c0030dc9:	68 a0 00 00 00       	push   $0xa0
c0030dce:	e8 6d ff ff ff       	call   c0030d40 <out_byte>
c0030dd3:	83 c4 08             	add    $0x8,%esp
c0030dd6:	6a 28                	push   $0x28
c0030dd8:	68 a1 00 00 00       	push   $0xa1
c0030ddd:	e8 5e ff ff ff       	call   c0030d40 <out_byte>
c0030de2:	83 c4 08             	add    $0x8,%esp
c0030de5:	6a 02                	push   $0x2
c0030de7:	68 a1 00 00 00       	push   $0xa1
c0030dec:	e8 4f ff ff ff       	call   c0030d40 <out_byte>
c0030df1:	83 c4 08             	add    $0x8,%esp
c0030df4:	6a 03                	push   $0x3
c0030df6:	68 a1 00 00 00       	push   $0xa1
c0030dfb:	e8 40 ff ff ff       	call   c0030d40 <out_byte>
c0030e00:	83 c4 08             	add    $0x8,%esp
c0030e03:	6a 68                	push   $0x68
c0030e05:	6a 20                	push   $0x20
c0030e07:	e8 34 ff ff ff       	call   c0030d40 <out_byte>
c0030e0c:	83 c4 08             	add    $0x8,%esp
c0030e0f:	6a 0a                	push   $0xa
c0030e11:	6a 20                	push   $0x20
c0030e13:	e8 28 ff ff ff       	call   c0030d40 <out_byte>
c0030e18:	83 c4 08             	add    $0x8,%esp
c0030e1b:	6a 68                	push   $0x68
c0030e1d:	68 a0 00 00 00       	push   $0xa0
c0030e22:	e8 19 ff ff ff       	call   c0030d40 <out_byte>
c0030e27:	83 c4 08             	add    $0x8,%esp
c0030e2a:	6a 0a                	push   $0xa
c0030e2c:	68 a0 00 00 00       	push   $0xa0
c0030e31:	e8 0a ff ff ff       	call   c0030d40 <out_byte>
c0030e36:	83 c4 08             	add    $0x8,%esp
c0030e39:	90                   	nop
c0030e3a:	c9                   	leave  
c0030e3b:	c3                   	ret    

c0030e3c <write_idtr>:
c0030e3c:	55                   	push   %ebp
c0030e3d:	89 e5                	mov    %esp,%ebp
c0030e3f:	e8 3e f3 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030e44:	05 bc c1 00 00       	add    $0xc1bc,%eax
c0030e49:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030e4c:	4a                   	dec    %edx
c0030e4d:	66 89 90 80 1e 01 00 	mov    %dx,0x11e80(%eax)
c0030e54:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e57:	66 89 90 82 1e 01 00 	mov    %dx,0x11e82(%eax)
c0030e5e:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e61:	c1 ea 10             	shr    $0x10,%edx
c0030e64:	66 89 90 84 1e 01 00 	mov    %dx,0x11e84(%eax)
c0030e6b:	8d 80 80 1e 01 00    	lea    0x11e80(%eax),%eax
c0030e71:	0f 01 18             	lidtl  (%eax)
c0030e74:	90                   	nop
c0030e75:	5d                   	pop    %ebp
c0030e76:	c3                   	ret    

c0030e77 <sti>:
c0030e77:	55                   	push   %ebp
c0030e78:	89 e5                	mov    %esp,%ebp
c0030e7a:	e8 03 f3 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030e7f:	05 81 c1 00 00       	add    $0xc181,%eax
c0030e84:	fb                   	sti    
c0030e85:	90                   	nop
c0030e86:	5d                   	pop    %ebp
c0030e87:	c3                   	ret    

c0030e88 <set_intr>:
c0030e88:	55                   	push   %ebp
c0030e89:	89 e5                	mov    %esp,%ebp
c0030e8b:	e8 f2 f2 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030e90:	05 70 c1 00 00       	add    $0xc170,%eax
c0030e95:	8b 45 10             	mov    0x10(%ebp),%eax
c0030e98:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e9b:	66 89 02             	mov    %ax,(%edx)
c0030e9e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030ea1:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ea4:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030ea8:	8b 45 08             	mov    0x8(%ebp),%eax
c0030eab:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030eaf:	8b 45 08             	mov    0x8(%ebp),%eax
c0030eb2:	8a 50 05             	mov    0x5(%eax),%dl
c0030eb5:	83 e2 f0             	and    $0xfffffff0,%edx
c0030eb8:	83 ca 0e             	or     $0xe,%edx
c0030ebb:	88 50 05             	mov    %dl,0x5(%eax)
c0030ebe:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ec1:	8a 50 05             	mov    0x5(%eax),%dl
c0030ec4:	83 e2 ef             	and    $0xffffffef,%edx
c0030ec7:	88 50 05             	mov    %dl,0x5(%eax)
c0030eca:	8b 45 14             	mov    0x14(%ebp),%eax
c0030ecd:	88 c2                	mov    %al,%dl
c0030ecf:	83 e2 03             	and    $0x3,%edx
c0030ed2:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ed5:	83 e2 03             	and    $0x3,%edx
c0030ed8:	88 d1                	mov    %dl,%cl
c0030eda:	c1 e1 05             	shl    $0x5,%ecx
c0030edd:	8a 50 05             	mov    0x5(%eax),%dl
c0030ee0:	83 e2 9f             	and    $0xffffff9f,%edx
c0030ee3:	09 ca                	or     %ecx,%edx
c0030ee5:	88 50 05             	mov    %dl,0x5(%eax)
c0030ee8:	8b 45 08             	mov    0x8(%ebp),%eax
c0030eeb:	8a 50 05             	mov    0x5(%eax),%dl
c0030eee:	83 ca 80             	or     $0xffffff80,%edx
c0030ef1:	88 50 05             	mov    %dl,0x5(%eax)
c0030ef4:	8b 45 10             	mov    0x10(%ebp),%eax
c0030ef7:	c1 e8 10             	shr    $0x10,%eax
c0030efa:	8b 55 08             	mov    0x8(%ebp),%edx
c0030efd:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030f01:	90                   	nop
c0030f02:	5d                   	pop    %ebp
c0030f03:	c3                   	ret    

c0030f04 <set_trap>:
c0030f04:	55                   	push   %ebp
c0030f05:	89 e5                	mov    %esp,%ebp
c0030f07:	e8 76 f2 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030f0c:	05 f4 c0 00 00       	add    $0xc0f4,%eax
c0030f11:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f14:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f17:	66 89 02             	mov    %ax,(%edx)
c0030f1a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030f1d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f20:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030f24:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f27:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030f2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f2e:	8a 50 05             	mov    0x5(%eax),%dl
c0030f31:	83 ca 0f             	or     $0xf,%edx
c0030f34:	88 50 05             	mov    %dl,0x5(%eax)
c0030f37:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f3a:	8a 50 05             	mov    0x5(%eax),%dl
c0030f3d:	83 e2 ef             	and    $0xffffffef,%edx
c0030f40:	88 50 05             	mov    %dl,0x5(%eax)
c0030f43:	8b 45 14             	mov    0x14(%ebp),%eax
c0030f46:	88 c2                	mov    %al,%dl
c0030f48:	83 e2 03             	and    $0x3,%edx
c0030f4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f4e:	83 e2 03             	and    $0x3,%edx
c0030f51:	88 d1                	mov    %dl,%cl
c0030f53:	c1 e1 05             	shl    $0x5,%ecx
c0030f56:	8a 50 05             	mov    0x5(%eax),%dl
c0030f59:	83 e2 9f             	and    $0xffffff9f,%edx
c0030f5c:	09 ca                	or     %ecx,%edx
c0030f5e:	88 50 05             	mov    %dl,0x5(%eax)
c0030f61:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f64:	8a 50 05             	mov    0x5(%eax),%dl
c0030f67:	83 ca 80             	or     $0xffffff80,%edx
c0030f6a:	88 50 05             	mov    %dl,0x5(%eax)
c0030f6d:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f70:	c1 e8 10             	shr    $0x10,%eax
c0030f73:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f76:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030f7a:	90                   	nop
c0030f7b:	5d                   	pop    %ebp
c0030f7c:	c3                   	ret    

c0030f7d <init_idt>:
c0030f7d:	55                   	push   %ebp
c0030f7e:	89 e5                	mov    %esp,%ebp
c0030f80:	53                   	push   %ebx
c0030f81:	83 ec 10             	sub    $0x10,%esp
c0030f84:	e8 fd f1 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0030f89:	81 c3 77 c0 00 00    	add    $0xc077,%ebx
c0030f8f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030f96:	eb 2b                	jmp    c0030fc3 <init_idt+0x46>
c0030f98:	c7 c0 cd 00 03 c0    	mov    $0xc00300cd,%eax
c0030f9e:	89 c2                	mov    %eax,%edx
c0030fa0:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030fa3:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0030faa:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0030fb0:	01 c8                	add    %ecx,%eax
c0030fb2:	6a 00                	push   $0x0
c0030fb4:	52                   	push   %edx
c0030fb5:	6a 08                	push   $0x8
c0030fb7:	50                   	push   %eax
c0030fb8:	e8 47 ff ff ff       	call   c0030f04 <set_trap>
c0030fbd:	83 c4 10             	add    $0x10,%esp
c0030fc0:	ff 45 f8             	incl   -0x8(%ebp)
c0030fc3:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0030fca:	7e cc                	jle    c0030f98 <init_idt+0x1b>
c0030fcc:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030fd2:	6a 00                	push   $0x0
c0030fd4:	50                   	push   %eax
c0030fd5:	6a 08                	push   $0x8
c0030fd7:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0030fdd:	50                   	push   %eax
c0030fde:	e8 21 ff ff ff       	call   c0030f04 <set_trap>
c0030fe3:	83 c4 10             	add    $0x10,%esp
c0030fe6:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c0030fec:	89 c2                	mov    %eax,%edx
c0030fee:	8d 83 88 16 01 00    	lea    0x11688(%ebx),%eax
c0030ff4:	6a 00                	push   $0x0
c0030ff6:	52                   	push   %edx
c0030ff7:	6a 08                	push   $0x8
c0030ff9:	50                   	push   %eax
c0030ffa:	e8 05 ff ff ff       	call   c0030f04 <set_trap>
c0030fff:	83 c4 10             	add    $0x10,%esp
c0031002:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c0031008:	89 c2                	mov    %eax,%edx
c003100a:	8d 83 90 16 01 00    	lea    0x11690(%ebx),%eax
c0031010:	6a 00                	push   $0x0
c0031012:	52                   	push   %edx
c0031013:	6a 08                	push   $0x8
c0031015:	50                   	push   %eax
c0031016:	e8 e9 fe ff ff       	call   c0030f04 <set_trap>
c003101b:	83 c4 10             	add    $0x10,%esp
c003101e:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c0031024:	89 c2                	mov    %eax,%edx
c0031026:	8d 83 98 16 01 00    	lea    0x11698(%ebx),%eax
c003102c:	6a 00                	push   $0x0
c003102e:	52                   	push   %edx
c003102f:	6a 08                	push   $0x8
c0031031:	50                   	push   %eax
c0031032:	e8 cd fe ff ff       	call   c0030f04 <set_trap>
c0031037:	83 c4 10             	add    $0x10,%esp
c003103a:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c0031040:	89 c2                	mov    %eax,%edx
c0031042:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
c0031048:	6a 00                	push   $0x0
c003104a:	52                   	push   %edx
c003104b:	6a 08                	push   $0x8
c003104d:	50                   	push   %eax
c003104e:	e8 b1 fe ff ff       	call   c0030f04 <set_trap>
c0031053:	83 c4 10             	add    $0x10,%esp
c0031056:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c003105c:	89 c2                	mov    %eax,%edx
c003105e:	8d 83 a8 16 01 00    	lea    0x116a8(%ebx),%eax
c0031064:	6a 00                	push   $0x0
c0031066:	52                   	push   %edx
c0031067:	6a 08                	push   $0x8
c0031069:	50                   	push   %eax
c003106a:	e8 95 fe ff ff       	call   c0030f04 <set_trap>
c003106f:	83 c4 10             	add    $0x10,%esp
c0031072:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0031078:	89 c2                	mov    %eax,%edx
c003107a:	8d 83 b0 16 01 00    	lea    0x116b0(%ebx),%eax
c0031080:	6a 00                	push   $0x0
c0031082:	52                   	push   %edx
c0031083:	6a 08                	push   $0x8
c0031085:	50                   	push   %eax
c0031086:	e8 79 fe ff ff       	call   c0030f04 <set_trap>
c003108b:	83 c4 10             	add    $0x10,%esp
c003108e:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0031094:	89 c2                	mov    %eax,%edx
c0031096:	8d 83 b8 16 01 00    	lea    0x116b8(%ebx),%eax
c003109c:	6a 00                	push   $0x0
c003109e:	52                   	push   %edx
c003109f:	6a 08                	push   $0x8
c00310a1:	50                   	push   %eax
c00310a2:	e8 5d fe ff ff       	call   c0030f04 <set_trap>
c00310a7:	83 c4 10             	add    $0x10,%esp
c00310aa:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c00310b0:	89 c2                	mov    %eax,%edx
c00310b2:	8d 83 c0 16 01 00    	lea    0x116c0(%ebx),%eax
c00310b8:	6a 00                	push   $0x0
c00310ba:	52                   	push   %edx
c00310bb:	6a 08                	push   $0x8
c00310bd:	50                   	push   %eax
c00310be:	e8 41 fe ff ff       	call   c0030f04 <set_trap>
c00310c3:	83 c4 10             	add    $0x10,%esp
c00310c6:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c00310cc:	89 c2                	mov    %eax,%edx
c00310ce:	8d 83 c8 16 01 00    	lea    0x116c8(%ebx),%eax
c00310d4:	6a 00                	push   $0x0
c00310d6:	52                   	push   %edx
c00310d7:	6a 08                	push   $0x8
c00310d9:	50                   	push   %eax
c00310da:	e8 25 fe ff ff       	call   c0030f04 <set_trap>
c00310df:	83 c4 10             	add    $0x10,%esp
c00310e2:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c00310e8:	89 c2                	mov    %eax,%edx
c00310ea:	8d 83 d0 16 01 00    	lea    0x116d0(%ebx),%eax
c00310f0:	6a 00                	push   $0x0
c00310f2:	52                   	push   %edx
c00310f3:	6a 08                	push   $0x8
c00310f5:	50                   	push   %eax
c00310f6:	e8 09 fe ff ff       	call   c0030f04 <set_trap>
c00310fb:	83 c4 10             	add    $0x10,%esp
c00310fe:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c0031104:	89 c2                	mov    %eax,%edx
c0031106:	8d 83 d8 16 01 00    	lea    0x116d8(%ebx),%eax
c003110c:	6a 00                	push   $0x0
c003110e:	52                   	push   %edx
c003110f:	6a 08                	push   $0x8
c0031111:	50                   	push   %eax
c0031112:	e8 ed fd ff ff       	call   c0030f04 <set_trap>
c0031117:	83 c4 10             	add    $0x10,%esp
c003111a:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c0031120:	89 c2                	mov    %eax,%edx
c0031122:	8d 83 e0 16 01 00    	lea    0x116e0(%ebx),%eax
c0031128:	6a 00                	push   $0x0
c003112a:	52                   	push   %edx
c003112b:	6a 08                	push   $0x8
c003112d:	50                   	push   %eax
c003112e:	e8 d1 fd ff ff       	call   c0030f04 <set_trap>
c0031133:	83 c4 10             	add    $0x10,%esp
c0031136:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c003113c:	89 c2                	mov    %eax,%edx
c003113e:	8d 83 e8 16 01 00    	lea    0x116e8(%ebx),%eax
c0031144:	6a 00                	push   $0x0
c0031146:	52                   	push   %edx
c0031147:	6a 08                	push   $0x8
c0031149:	50                   	push   %eax
c003114a:	e8 b5 fd ff ff       	call   c0030f04 <set_trap>
c003114f:	83 c4 10             	add    $0x10,%esp
c0031152:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0031158:	89 c2                	mov    %eax,%edx
c003115a:	8d 83 f0 16 01 00    	lea    0x116f0(%ebx),%eax
c0031160:	6a 00                	push   $0x0
c0031162:	52                   	push   %edx
c0031163:	6a 08                	push   $0x8
c0031165:	50                   	push   %eax
c0031166:	e8 99 fd ff ff       	call   c0030f04 <set_trap>
c003116b:	83 c4 10             	add    $0x10,%esp
c003116e:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0031174:	89 c2                	mov    %eax,%edx
c0031176:	8d 83 80 1a 01 00    	lea    0x11a80(%ebx),%eax
c003117c:	6a 03                	push   $0x3
c003117e:	52                   	push   %edx
c003117f:	6a 08                	push   $0x8
c0031181:	50                   	push   %eax
c0031182:	e8 7d fd ff ff       	call   c0030f04 <set_trap>
c0031187:	83 c4 10             	add    $0x10,%esp
c003118a:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0031190:	89 c2                	mov    %eax,%edx
c0031192:	8d 83 80 17 01 00    	lea    0x11780(%ebx),%eax
c0031198:	6a 00                	push   $0x0
c003119a:	52                   	push   %edx
c003119b:	6a 08                	push   $0x8
c003119d:	50                   	push   %eax
c003119e:	e8 e5 fc ff ff       	call   c0030e88 <set_intr>
c00311a3:	83 c4 10             	add    $0x10,%esp
c00311a6:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c00311ac:	89 c2                	mov    %eax,%edx
c00311ae:	8d 83 88 17 01 00    	lea    0x11788(%ebx),%eax
c00311b4:	6a 00                	push   $0x0
c00311b6:	52                   	push   %edx
c00311b7:	6a 08                	push   $0x8
c00311b9:	50                   	push   %eax
c00311ba:	e8 c9 fc ff ff       	call   c0030e88 <set_intr>
c00311bf:	83 c4 10             	add    $0x10,%esp
c00311c2:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c00311c8:	89 c2                	mov    %eax,%edx
c00311ca:	8d 83 90 17 01 00    	lea    0x11790(%ebx),%eax
c00311d0:	6a 00                	push   $0x0
c00311d2:	52                   	push   %edx
c00311d3:	6a 08                	push   $0x8
c00311d5:	50                   	push   %eax
c00311d6:	e8 ad fc ff ff       	call   c0030e88 <set_intr>
c00311db:	83 c4 10             	add    $0x10,%esp
c00311de:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c00311e4:	89 c2                	mov    %eax,%edx
c00311e6:	8d 83 f0 17 01 00    	lea    0x117f0(%ebx),%eax
c00311ec:	6a 00                	push   $0x0
c00311ee:	52                   	push   %edx
c00311ef:	6a 08                	push   $0x8
c00311f1:	50                   	push   %eax
c00311f2:	e8 91 fc ff ff       	call   c0030e88 <set_intr>
c00311f7:	83 c4 10             	add    $0x10,%esp
c00311fa:	68 00 08 00 00       	push   $0x800
c00311ff:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0031205:	50                   	push   %eax
c0031206:	e8 31 fc ff ff       	call   c0030e3c <write_idtr>
c003120b:	83 c4 08             	add    $0x8,%esp
c003120e:	e8 64 fc ff ff       	call   c0030e77 <sti>
c0031213:	90                   	nop
c0031214:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031217:	c9                   	leave  
c0031218:	c3                   	ret    

c0031219 <fs_open>:
c0031219:	55                   	push   %ebp
c003121a:	89 e5                	mov    %esp,%ebp
c003121c:	53                   	push   %ebx
c003121d:	83 ec 04             	sub    $0x4,%esp
c0031220:	e8 5d ef ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031225:	05 db bd 00 00       	add    $0xbddb,%eax
c003122a:	8d 90 18 c5 ff ff    	lea    -0x3ae8(%eax),%edx
c0031230:	52                   	push   %edx
c0031231:	6a 28                	push   $0x28
c0031233:	8d 90 4f c3 ff ff    	lea    -0x3cb1(%eax),%edx
c0031239:	52                   	push   %edx
c003123a:	8d 90 5c c3 ff ff    	lea    -0x3ca4(%eax),%edx
c0031240:	52                   	push   %edx
c0031241:	89 c3                	mov    %eax,%ebx
c0031243:	e8 bb f8 ff ff       	call   c0030b03 <printk>
c0031248:	83 c4 10             	add    $0x10,%esp
c003124b:	b8 01 00 00 00       	mov    $0x1,%eax
c0031250:	82                   	nemu_trap 
c0031251:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031256:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031259:	c9                   	leave  
c003125a:	c3                   	ret    

c003125b <fs_read>:
c003125b:	55                   	push   %ebp
c003125c:	89 e5                	mov    %esp,%ebp
c003125e:	53                   	push   %ebx
c003125f:	83 ec 04             	sub    $0x4,%esp
c0031262:	e8 1f ef ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0031267:	81 c3 99 bd 00 00    	add    $0xbd99,%ebx
c003126d:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0031271:	7f 2f                	jg     c00312a2 <fs_read+0x47>
c0031273:	83 ec 0c             	sub    $0xc,%esp
c0031276:	8d 83 b2 c3 ff ff    	lea    -0x3c4e(%ebx),%eax
c003127c:	50                   	push   %eax
c003127d:	8d 83 20 c5 ff ff    	lea    -0x3ae0(%ebx),%eax
c0031283:	50                   	push   %eax
c0031284:	6a 2e                	push   $0x2e
c0031286:	8d 83 4f c3 ff ff    	lea    -0x3cb1(%ebx),%eax
c003128c:	50                   	push   %eax
c003128d:	8d 83 bc c3 ff ff    	lea    -0x3c44(%ebx),%eax
c0031293:	50                   	push   %eax
c0031294:	e8 6a f8 ff ff       	call   c0030b03 <printk>
c0031299:	83 c4 20             	add    $0x20,%esp
c003129c:	b8 01 00 00 00       	mov    $0x1,%eax
c00312a1:	82                   	nemu_trap 
c00312a2:	8d 83 20 c5 ff ff    	lea    -0x3ae0(%ebx),%eax
c00312a8:	50                   	push   %eax
c00312a9:	6a 2f                	push   $0x2f
c00312ab:	8d 83 4f c3 ff ff    	lea    -0x3cb1(%ebx),%eax
c00312b1:	50                   	push   %eax
c00312b2:	8d 83 08 c4 ff ff    	lea    -0x3bf8(%ebx),%eax
c00312b8:	50                   	push   %eax
c00312b9:	e8 45 f8 ff ff       	call   c0030b03 <printk>
c00312be:	83 c4 10             	add    $0x10,%esp
c00312c1:	b8 01 00 00 00       	mov    $0x1,%eax
c00312c6:	82                   	nemu_trap 
c00312c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00312cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312cf:	c9                   	leave  
c00312d0:	c3                   	ret    

c00312d1 <fs_write>:
c00312d1:	55                   	push   %ebp
c00312d2:	89 e5                	mov    %esp,%ebp
c00312d4:	53                   	push   %ebx
c00312d5:	83 ec 14             	sub    $0x14,%esp
c00312d8:	e8 a9 ee ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c00312dd:	81 c3 23 bd 00 00    	add    $0xbd23,%ebx
c00312e3:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00312e7:	7e 2f                	jle    c0031318 <fs_write+0x47>
c00312e9:	83 ec 0c             	sub    $0xc,%esp
c00312ec:	8d 83 5e c4 ff ff    	lea    -0x3ba2(%ebx),%eax
c00312f2:	50                   	push   %eax
c00312f3:	8d 83 28 c5 ff ff    	lea    -0x3ad8(%ebx),%eax
c00312f9:	50                   	push   %eax
c00312fa:	6a 35                	push   $0x35
c00312fc:	8d 83 4f c3 ff ff    	lea    -0x3cb1(%ebx),%eax
c0031302:	50                   	push   %eax
c0031303:	8d 83 bc c3 ff ff    	lea    -0x3c44(%ebx),%eax
c0031309:	50                   	push   %eax
c003130a:	e8 f4 f7 ff ff       	call   c0030b03 <printk>
c003130f:	83 c4 20             	add    $0x20,%esp
c0031312:	b8 01 00 00 00       	mov    $0x1,%eax
c0031317:	82                   	nemu_trap 
c0031318:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003131f:	eb 1c                	jmp    c003133d <fs_write+0x6c>
c0031321:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031324:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031327:	01 d0                	add    %edx,%eax
c0031329:	8a 00                	mov    (%eax),%al
c003132b:	0f be c0             	movsbl %al,%eax
c003132e:	83 ec 0c             	sub    $0xc,%esp
c0031331:	50                   	push   %eax
c0031332:	e8 95 f7 ff ff       	call   c0030acc <serial_printc>
c0031337:	83 c4 10             	add    $0x10,%esp
c003133a:	ff 45 f4             	incl   -0xc(%ebp)
c003133d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031340:	39 45 10             	cmp    %eax,0x10(%ebp)
c0031343:	77 dc                	ja     c0031321 <fs_write+0x50>
c0031345:	8b 45 10             	mov    0x10(%ebp),%eax
c0031348:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003134b:	c9                   	leave  
c003134c:	c3                   	ret    

c003134d <fs_lseek>:
c003134d:	55                   	push   %ebp
c003134e:	89 e5                	mov    %esp,%ebp
c0031350:	53                   	push   %ebx
c0031351:	83 ec 04             	sub    $0x4,%esp
c0031354:	e8 29 ee ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031359:	05 a7 bc 00 00       	add    $0xbca7,%eax
c003135e:	8d 90 34 c5 ff ff    	lea    -0x3acc(%eax),%edx
c0031364:	52                   	push   %edx
c0031365:	6a 48                	push   $0x48
c0031367:	8d 90 4f c3 ff ff    	lea    -0x3cb1(%eax),%edx
c003136d:	52                   	push   %edx
c003136e:	8d 90 68 c4 ff ff    	lea    -0x3b98(%eax),%edx
c0031374:	52                   	push   %edx
c0031375:	89 c3                	mov    %eax,%ebx
c0031377:	e8 87 f7 ff ff       	call   c0030b03 <printk>
c003137c:	83 c4 10             	add    $0x10,%esp
c003137f:	b8 01 00 00 00       	mov    $0x1,%eax
c0031384:	82                   	nemu_trap 
c0031385:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c003138a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003138d:	c9                   	leave  
c003138e:	c3                   	ret    

c003138f <fs_close>:
c003138f:	55                   	push   %ebp
c0031390:	89 e5                	mov    %esp,%ebp
c0031392:	53                   	push   %ebx
c0031393:	83 ec 04             	sub    $0x4,%esp
c0031396:	e8 e7 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003139b:	05 65 bc 00 00       	add    $0xbc65,%eax
c00313a0:	8d 90 40 c5 ff ff    	lea    -0x3ac0(%eax),%edx
c00313a6:	52                   	push   %edx
c00313a7:	6a 4e                	push   $0x4e
c00313a9:	8d 90 4f c3 ff ff    	lea    -0x3cb1(%eax),%edx
c00313af:	52                   	push   %edx
c00313b0:	8d 90 c0 c4 ff ff    	lea    -0x3b40(%eax),%edx
c00313b6:	52                   	push   %edx
c00313b7:	89 c3                	mov    %eax,%ebx
c00313b9:	e8 45 f7 ff ff       	call   c0030b03 <printk>
c00313be:	83 c4 10             	add    $0x10,%esp
c00313c1:	b8 01 00 00 00       	mov    $0x1,%eax
c00313c6:	82                   	nemu_trap 
c00313c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00313cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00313cf:	c9                   	leave  
c00313d0:	c3                   	ret    

c00313d1 <sti>:
c00313d1:	55                   	push   %ebp
c00313d2:	89 e5                	mov    %esp,%ebp
c00313d4:	e8 a9 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00313d9:	05 27 bc 00 00       	add    $0xbc27,%eax
c00313de:	fb                   	sti    
c00313df:	90                   	nop
c00313e0:	5d                   	pop    %ebp
c00313e1:	c3                   	ret    

c00313e2 <cli>:
c00313e2:	55                   	push   %ebp
c00313e3:	89 e5                	mov    %esp,%ebp
c00313e5:	e8 98 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00313ea:	05 16 bc 00 00       	add    $0xbc16,%eax
c00313ef:	fa                   	cli    
c00313f0:	90                   	nop
c00313f1:	5d                   	pop    %ebp
c00313f2:	c3                   	ret    

c00313f3 <sys_brk>:
c00313f3:	55                   	push   %ebp
c00313f4:	89 e5                	mov    %esp,%ebp
c00313f6:	53                   	push   %ebx
c00313f7:	83 ec 04             	sub    $0x4,%esp
c00313fa:	e8 83 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00313ff:	05 01 bc 00 00       	add    $0xbc01,%eax
c0031404:	8b 55 08             	mov    0x8(%ebp),%edx
c0031407:	8b 52 10             	mov    0x10(%edx),%edx
c003140a:	83 ec 0c             	sub    $0xc,%esp
c003140d:	52                   	push   %edx
c003140e:	89 c3                	mov    %eax,%ebx
c0031410:	e8 67 02 00 00       	call   c003167c <mm_brk>
c0031415:	83 c4 10             	add    $0x10,%esp
c0031418:	8b 45 08             	mov    0x8(%ebp),%eax
c003141b:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c0031422:	90                   	nop
c0031423:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031426:	c9                   	leave  
c0031427:	c3                   	ret    

c0031428 <sys_open>:
c0031428:	55                   	push   %ebp
c0031429:	89 e5                	mov    %esp,%ebp
c003142b:	53                   	push   %ebx
c003142c:	83 ec 04             	sub    $0x4,%esp
c003142f:	e8 4e ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031434:	05 cc bb 00 00       	add    $0xbbcc,%eax
c0031439:	8b 55 08             	mov    0x8(%ebp),%edx
c003143c:	8b 52 18             	mov    0x18(%edx),%edx
c003143f:	89 d1                	mov    %edx,%ecx
c0031441:	8b 55 08             	mov    0x8(%ebp),%edx
c0031444:	8b 52 10             	mov    0x10(%edx),%edx
c0031447:	83 ec 08             	sub    $0x8,%esp
c003144a:	51                   	push   %ecx
c003144b:	52                   	push   %edx
c003144c:	89 c3                	mov    %eax,%ebx
c003144e:	e8 c6 fd ff ff       	call   c0031219 <fs_open>
c0031453:	83 c4 10             	add    $0x10,%esp
c0031456:	89 c2                	mov    %eax,%edx
c0031458:	8b 45 08             	mov    0x8(%ebp),%eax
c003145b:	89 50 1c             	mov    %edx,0x1c(%eax)
c003145e:	90                   	nop
c003145f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031462:	c9                   	leave  
c0031463:	c3                   	ret    

c0031464 <sys_read>:
c0031464:	55                   	push   %ebp
c0031465:	89 e5                	mov    %esp,%ebp
c0031467:	53                   	push   %ebx
c0031468:	83 ec 04             	sub    $0x4,%esp
c003146b:	e8 12 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031470:	05 90 bb 00 00       	add    $0xbb90,%eax
c0031475:	8b 55 08             	mov    0x8(%ebp),%edx
c0031478:	8b 52 14             	mov    0x14(%edx),%edx
c003147b:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003147e:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031481:	89 cb                	mov    %ecx,%ebx
c0031483:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031486:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031489:	83 ec 04             	sub    $0x4,%esp
c003148c:	52                   	push   %edx
c003148d:	53                   	push   %ebx
c003148e:	51                   	push   %ecx
c003148f:	89 c3                	mov    %eax,%ebx
c0031491:	e8 c5 fd ff ff       	call   c003125b <fs_read>
c0031496:	83 c4 10             	add    $0x10,%esp
c0031499:	89 c2                	mov    %eax,%edx
c003149b:	8b 45 08             	mov    0x8(%ebp),%eax
c003149e:	89 50 1c             	mov    %edx,0x1c(%eax)
c00314a1:	90                   	nop
c00314a2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00314a5:	c9                   	leave  
c00314a6:	c3                   	ret    

c00314a7 <sys_write>:
c00314a7:	55                   	push   %ebp
c00314a8:	89 e5                	mov    %esp,%ebp
c00314aa:	53                   	push   %ebx
c00314ab:	83 ec 04             	sub    $0x4,%esp
c00314ae:	e8 cf ec ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00314b3:	05 4d bb 00 00       	add    $0xbb4d,%eax
c00314b8:	8b 55 08             	mov    0x8(%ebp),%edx
c00314bb:	8b 52 14             	mov    0x14(%edx),%edx
c00314be:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314c1:	8b 49 18             	mov    0x18(%ecx),%ecx
c00314c4:	89 cb                	mov    %ecx,%ebx
c00314c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314c9:	8b 49 10             	mov    0x10(%ecx),%ecx
c00314cc:	83 ec 04             	sub    $0x4,%esp
c00314cf:	52                   	push   %edx
c00314d0:	53                   	push   %ebx
c00314d1:	51                   	push   %ecx
c00314d2:	89 c3                	mov    %eax,%ebx
c00314d4:	e8 f8 fd ff ff       	call   c00312d1 <fs_write>
c00314d9:	83 c4 10             	add    $0x10,%esp
c00314dc:	89 c2                	mov    %eax,%edx
c00314de:	8b 45 08             	mov    0x8(%ebp),%eax
c00314e1:	89 50 1c             	mov    %edx,0x1c(%eax)
c00314e4:	90                   	nop
c00314e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00314e8:	c9                   	leave  
c00314e9:	c3                   	ret    

c00314ea <sys_lseek>:
c00314ea:	55                   	push   %ebp
c00314eb:	89 e5                	mov    %esp,%ebp
c00314ed:	53                   	push   %ebx
c00314ee:	83 ec 04             	sub    $0x4,%esp
c00314f1:	e8 8c ec ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00314f6:	05 0a bb 00 00       	add    $0xbb0a,%eax
c00314fb:	8b 55 08             	mov    0x8(%ebp),%edx
c00314fe:	8b 52 14             	mov    0x14(%edx),%edx
c0031501:	89 d3                	mov    %edx,%ebx
c0031503:	8b 55 08             	mov    0x8(%ebp),%edx
c0031506:	8b 52 18             	mov    0x18(%edx),%edx
c0031509:	89 d1                	mov    %edx,%ecx
c003150b:	8b 55 08             	mov    0x8(%ebp),%edx
c003150e:	8b 52 10             	mov    0x10(%edx),%edx
c0031511:	83 ec 04             	sub    $0x4,%esp
c0031514:	53                   	push   %ebx
c0031515:	51                   	push   %ecx
c0031516:	52                   	push   %edx
c0031517:	89 c3                	mov    %eax,%ebx
c0031519:	e8 2f fe ff ff       	call   c003134d <fs_lseek>
c003151e:	83 c4 10             	add    $0x10,%esp
c0031521:	89 c2                	mov    %eax,%edx
c0031523:	8b 45 08             	mov    0x8(%ebp),%eax
c0031526:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031529:	90                   	nop
c003152a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003152d:	c9                   	leave  
c003152e:	c3                   	ret    

c003152f <sys_close>:
c003152f:	55                   	push   %ebp
c0031530:	89 e5                	mov    %esp,%ebp
c0031532:	53                   	push   %ebx
c0031533:	83 ec 04             	sub    $0x4,%esp
c0031536:	e8 47 ec ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003153b:	05 c5 ba 00 00       	add    $0xbac5,%eax
c0031540:	8b 55 08             	mov    0x8(%ebp),%edx
c0031543:	8b 52 10             	mov    0x10(%edx),%edx
c0031546:	83 ec 0c             	sub    $0xc,%esp
c0031549:	52                   	push   %edx
c003154a:	89 c3                	mov    %eax,%ebx
c003154c:	e8 3e fe ff ff       	call   c003138f <fs_close>
c0031551:	83 c4 10             	add    $0x10,%esp
c0031554:	89 c2                	mov    %eax,%edx
c0031556:	8b 45 08             	mov    0x8(%ebp),%eax
c0031559:	89 50 1c             	mov    %edx,0x1c(%eax)
c003155c:	90                   	nop
c003155d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031560:	c9                   	leave  
c0031561:	c3                   	ret    

c0031562 <do_syscall>:
c0031562:	55                   	push   %ebp
c0031563:	89 e5                	mov    %esp,%ebp
c0031565:	53                   	push   %ebx
c0031566:	83 ec 04             	sub    $0x4,%esp
c0031569:	e8 18 ec ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c003156e:	81 c3 92 ba 00 00    	add    $0xba92,%ebx
c0031574:	8b 45 08             	mov    0x8(%ebp),%eax
c0031577:	8b 40 1c             	mov    0x1c(%eax),%eax
c003157a:	83 f8 2d             	cmp    $0x2d,%eax
c003157d:	0f 87 98 00 00 00    	ja     c003161b <.L10>
c0031583:	c1 e0 02             	shl    $0x2,%eax
c0031586:	8b 84 18 bc c5 ff ff 	mov    -0x3a44(%eax,%ebx,1),%eax
c003158d:	01 d8                	add    %ebx,%eax
c003158f:	ff e0                	jmp    *%eax

c0031591 <.L18>:
c0031591:	e8 4c fe ff ff       	call   c00313e2 <cli>
c0031596:	8b 45 08             	mov    0x8(%ebp),%eax
c0031599:	8b 40 18             	mov    0x18(%eax),%eax
c003159c:	89 c2                	mov    %eax,%edx
c003159e:	8b 45 08             	mov    0x8(%ebp),%eax
c00315a1:	8b 40 10             	mov    0x10(%eax),%eax
c00315a4:	83 ec 08             	sub    $0x8,%esp
c00315a7:	52                   	push   %edx
c00315a8:	50                   	push   %eax
c00315a9:	e8 a9 f5 ff ff       	call   c0030b57 <add_irq_handle>
c00315ae:	83 c4 10             	add    $0x10,%esp
c00315b1:	e8 1b fe ff ff       	call   c00313d1 <sti>
c00315b6:	e9 8f 00 00 00       	jmp    c003164a <.L10+0x2f>

c00315bb <.L11>:
c00315bb:	83 ec 0c             	sub    $0xc,%esp
c00315be:	ff 75 08             	pushl  0x8(%ebp)
c00315c1:	e8 2d fe ff ff       	call   c00313f3 <sys_brk>
c00315c6:	83 c4 10             	add    $0x10,%esp
c00315c9:	eb 7f                	jmp    c003164a <.L10+0x2f>

c00315cb <.L15>:
c00315cb:	83 ec 0c             	sub    $0xc,%esp
c00315ce:	ff 75 08             	pushl  0x8(%ebp)
c00315d1:	e8 52 fe ff ff       	call   c0031428 <sys_open>
c00315d6:	83 c4 10             	add    $0x10,%esp
c00315d9:	eb 6f                	jmp    c003164a <.L10+0x2f>

c00315db <.L17>:
c00315db:	83 ec 0c             	sub    $0xc,%esp
c00315de:	ff 75 08             	pushl  0x8(%ebp)
c00315e1:	e8 7e fe ff ff       	call   c0031464 <sys_read>
c00315e6:	83 c4 10             	add    $0x10,%esp
c00315e9:	eb 5f                	jmp    c003164a <.L10+0x2f>

c00315eb <.L16>:
c00315eb:	83 ec 0c             	sub    $0xc,%esp
c00315ee:	ff 75 08             	pushl  0x8(%ebp)
c00315f1:	e8 b1 fe ff ff       	call   c00314a7 <sys_write>
c00315f6:	83 c4 10             	add    $0x10,%esp
c00315f9:	eb 4f                	jmp    c003164a <.L10+0x2f>

c00315fb <.L13>:
c00315fb:	83 ec 0c             	sub    $0xc,%esp
c00315fe:	ff 75 08             	pushl  0x8(%ebp)
c0031601:	e8 e4 fe ff ff       	call   c00314ea <sys_lseek>
c0031606:	83 c4 10             	add    $0x10,%esp
c0031609:	eb 3f                	jmp    c003164a <.L10+0x2f>

c003160b <.L14>:
c003160b:	83 ec 0c             	sub    $0xc,%esp
c003160e:	ff 75 08             	pushl  0x8(%ebp)
c0031611:	e8 19 ff ff ff       	call   c003152f <sys_close>
c0031616:	83 c4 10             	add    $0x10,%esp
c0031619:	eb 2f                	jmp    c003164a <.L10+0x2f>

c003161b <.L10>:
c003161b:	8b 45 08             	mov    0x8(%ebp),%eax
c003161e:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031621:	83 ec 0c             	sub    $0xc,%esp
c0031624:	50                   	push   %eax
c0031625:	8d 83 74 c6 ff ff    	lea    -0x398c(%ebx),%eax
c003162b:	50                   	push   %eax
c003162c:	6a 4a                	push   $0x4a
c003162e:	8d 83 4c c5 ff ff    	lea    -0x3ab4(%ebx),%eax
c0031634:	50                   	push   %eax
c0031635:	8d 83 68 c5 ff ff    	lea    -0x3a98(%ebx),%eax
c003163b:	50                   	push   %eax
c003163c:	e8 c2 f4 ff ff       	call   c0030b03 <printk>
c0031641:	83 c4 20             	add    $0x20,%esp
c0031644:	b8 01 00 00 00       	mov    $0x1,%eax
c0031649:	82                   	nemu_trap 
c003164a:	90                   	nop
c003164b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003164e:	c9                   	leave  
c003164f:	c3                   	ret    

c0031650 <get_updir>:
c0031650:	55                   	push   %ebp
c0031651:	89 e5                	mov    %esp,%ebp
c0031653:	e8 2a eb ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031658:	05 a8 b9 00 00       	add    $0xb9a8,%eax
c003165d:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031663:	5d                   	pop    %ebp
c0031664:	c3                   	ret    

c0031665 <get_ucr3>:
c0031665:	55                   	push   %ebp
c0031666:	89 e5                	mov    %esp,%ebp
c0031668:	e8 15 eb ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003166d:	05 93 b9 00 00       	add    $0xb993,%eax
c0031672:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031678:	8b 00                	mov    (%eax),%eax
c003167a:	5d                   	pop    %ebp
c003167b:	c3                   	ret    

c003167c <mm_brk>:
c003167c:	55                   	push   %ebp
c003167d:	89 e5                	mov    %esp,%ebp
c003167f:	53                   	push   %ebx
c0031680:	83 ec 04             	sub    $0x4,%esp
c0031683:	e8 fe ea ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0031688:	81 c3 78 b9 00 00    	add    $0xb978,%ebx
c003168e:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c0031694:	39 45 08             	cmp    %eax,0x8(%ebp)
c0031697:	76 22                	jbe    c00316bb <mm_brk+0x3f>
c0031699:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c003169f:	8b 55 08             	mov    0x8(%ebp),%edx
c00316a2:	29 c2                	sub    %eax,%edx
c00316a4:	89 d0                	mov    %edx,%eax
c00316a6:	89 c2                	mov    %eax,%edx
c00316a8:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c00316ae:	83 ec 08             	sub    $0x8,%esp
c00316b1:	52                   	push   %edx
c00316b2:	50                   	push   %eax
c00316b3:	e8 a8 04 00 00       	call   c0031b60 <mm_malloc>
c00316b8:	83 c4 10             	add    $0x10,%esp
c00316bb:	8b 45 08             	mov    0x8(%ebp),%eax
c00316be:	89 83 88 1e 01 00    	mov    %eax,0x11e88(%ebx)
c00316c4:	90                   	nop
c00316c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00316c8:	c9                   	leave  
c00316c9:	c3                   	ret    

c00316ca <init_mm>:
c00316ca:	55                   	push   %ebp
c00316cb:	89 e5                	mov    %esp,%ebp
c00316cd:	53                   	push   %ebx
c00316ce:	83 ec 14             	sub    $0x14,%esp
c00316d1:	e8 b0 ea ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c00316d6:	81 c3 2a b9 00 00    	add    $0xb92a,%ebx
c00316dc:	e8 10 02 00 00       	call   c00318f1 <get_kpdir>
c00316e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00316e4:	83 ec 04             	sub    $0x4,%esp
c00316e7:	68 00 10 00 00       	push   $0x1000
c00316ec:	6a 00                	push   $0x0
c00316ee:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00316f4:	50                   	push   %eax
c00316f5:	e8 42 07 00 00       	call   c0031e3c <memset>
c00316fa:	83 c4 10             	add    $0x10,%esp
c00316fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031700:	05 00 0c 00 00       	add    $0xc00,%eax
c0031705:	83 ec 04             	sub    $0x4,%esp
c0031708:	68 80 00 00 00       	push   $0x80
c003170d:	50                   	push   %eax
c003170e:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031714:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c003171a:	50                   	push   %eax
c003171b:	e8 d4 06 00 00       	call   c0031df4 <memcpy>
c0031720:	83 c4 10             	add    $0x10,%esp
c0031723:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031729:	05 00 00 00 40       	add    $0x40000000,%eax
c003172e:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0031733:	89 c2                	mov    %eax,%edx
c0031735:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c003173b:	89 10                	mov    %edx,(%eax)
c003173d:	90                   	nop
c003173e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031741:	c9                   	leave  
c0031742:	c3                   	ret    

c0031743 <create_video_mapping>:
c0031743:	55                   	push   %ebp
c0031744:	89 e5                	mov    %esp,%ebp
c0031746:	53                   	push   %ebx
c0031747:	83 ec 04             	sub    $0x4,%esp
c003174a:	e8 33 ea ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003174f:	05 b1 b8 00 00       	add    $0xb8b1,%eax
c0031754:	8d 90 38 c7 ff ff    	lea    -0x38c8(%eax),%edx
c003175a:	52                   	push   %edx
c003175b:	6a 14                	push   $0x14
c003175d:	8d 90 80 c6 ff ff    	lea    -0x3980(%eax),%edx
c0031763:	52                   	push   %edx
c0031764:	8d 90 94 c6 ff ff    	lea    -0x396c(%eax),%edx
c003176a:	52                   	push   %edx
c003176b:	89 c3                	mov    %eax,%ebx
c003176d:	e8 91 f3 ff ff       	call   c0030b03 <printk>
c0031772:	83 c4 10             	add    $0x10,%esp
c0031775:	b8 01 00 00 00       	mov    $0x1,%eax
c003177a:	82                   	nemu_trap 
c003177b:	90                   	nop
c003177c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003177f:	c9                   	leave  
c0031780:	c3                   	ret    

c0031781 <video_mapping_write_test>:
c0031781:	55                   	push   %ebp
c0031782:	89 e5                	mov    %esp,%ebp
c0031784:	83 ec 10             	sub    $0x10,%esp
c0031787:	e8 f6 e9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003178c:	05 74 b8 00 00       	add    $0xb874,%eax
c0031791:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c0031798:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c003179f:	eb 17                	jmp    c00317b8 <video_mapping_write_test+0x37>
c00317a1:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00317a4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00317ab:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00317ae:	01 c2                	add    %eax,%edx
c00317b0:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00317b3:	89 02                	mov    %eax,(%edx)
c00317b5:	ff 45 fc             	incl   -0x4(%ebp)
c00317b8:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c00317bf:	7e e0                	jle    c00317a1 <video_mapping_write_test+0x20>
c00317c1:	90                   	nop
c00317c2:	c9                   	leave  
c00317c3:	c3                   	ret    

c00317c4 <video_mapping_read_test>:
c00317c4:	55                   	push   %ebp
c00317c5:	89 e5                	mov    %esp,%ebp
c00317c7:	53                   	push   %ebx
c00317c8:	83 ec 14             	sub    $0x14,%esp
c00317cb:	e8 b6 e9 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c00317d0:	81 c3 30 b8 00 00    	add    $0xb830,%ebx
c00317d6:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c00317dd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00317e4:	eb 4a                	jmp    c0031830 <video_mapping_read_test+0x6c>
c00317e6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317e9:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00317f0:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00317f3:	01 d0                	add    %edx,%eax
c00317f5:	8b 10                	mov    (%eax),%edx
c00317f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317fa:	39 c2                	cmp    %eax,%edx
c00317fc:	74 2f                	je     c003182d <video_mapping_read_test+0x69>
c00317fe:	83 ec 0c             	sub    $0xc,%esp
c0031801:	8d 83 dd c6 ff ff    	lea    -0x3923(%ebx),%eax
c0031807:	50                   	push   %eax
c0031808:	8d 83 50 c7 ff ff    	lea    -0x38b0(%ebx),%eax
c003180e:	50                   	push   %eax
c003180f:	6a 27                	push   $0x27
c0031811:	8d 83 80 c6 ff ff    	lea    -0x3980(%ebx),%eax
c0031817:	50                   	push   %eax
c0031818:	8d 83 ec c6 ff ff    	lea    -0x3914(%ebx),%eax
c003181e:	50                   	push   %eax
c003181f:	e8 df f2 ff ff       	call   c0030b03 <printk>
c0031824:	83 c4 20             	add    $0x20,%esp
c0031827:	b8 01 00 00 00       	mov    $0x1,%eax
c003182c:	82                   	nemu_trap 
c003182d:	ff 45 f4             	incl   -0xc(%ebp)
c0031830:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0031837:	7e ad                	jle    c00317e6 <video_mapping_read_test+0x22>
c0031839:	90                   	nop
c003183a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003183d:	c9                   	leave  
c003183e:	c3                   	ret    

c003183f <video_mapping_clear>:
c003183f:	55                   	push   %ebp
c0031840:	89 e5                	mov    %esp,%ebp
c0031842:	53                   	push   %ebx
c0031843:	83 ec 04             	sub    $0x4,%esp
c0031846:	e8 37 e9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003184b:	05 b5 b7 00 00       	add    $0xb7b5,%eax
c0031850:	83 ec 04             	sub    $0x4,%esp
c0031853:	68 00 fa 00 00       	push   $0xfa00
c0031858:	6a 00                	push   $0x0
c003185a:	68 00 00 0a 00       	push   $0xa0000
c003185f:	89 c3                	mov    %eax,%ebx
c0031861:	e8 d6 05 00 00       	call   c0031e3c <memset>
c0031866:	83 c4 10             	add    $0x10,%esp
c0031869:	90                   	nop
c003186a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003186d:	c9                   	leave  
c003186e:	c3                   	ret    

c003186f <read_cr0>:
c003186f:	55                   	push   %ebp
c0031870:	89 e5                	mov    %esp,%ebp
c0031872:	83 ec 10             	sub    $0x10,%esp
c0031875:	e8 08 e9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003187a:	05 86 b7 00 00       	add    $0xb786,%eax
c003187f:	0f 20 c0             	mov    %cr0,%eax
c0031882:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031885:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031888:	c9                   	leave  
c0031889:	c3                   	ret    

c003188a <write_cr0>:
c003188a:	55                   	push   %ebp
c003188b:	89 e5                	mov    %esp,%ebp
c003188d:	e8 f0 e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031892:	05 6e b7 00 00       	add    $0xb76e,%eax
c0031897:	8b 45 08             	mov    0x8(%ebp),%eax
c003189a:	0f 22 c0             	mov    %eax,%cr0
c003189d:	90                   	nop
c003189e:	5d                   	pop    %ebp
c003189f:	c3                   	ret    

c00318a0 <write_cr3>:
c00318a0:	55                   	push   %ebp
c00318a1:	89 e5                	mov    %esp,%ebp
c00318a3:	e8 da e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00318a8:	05 58 b7 00 00       	add    $0xb758,%eax
c00318ad:	8b 45 08             	mov    0x8(%ebp),%eax
c00318b0:	0f 22 d8             	mov    %eax,%cr3
c00318b3:	90                   	nop
c00318b4:	5d                   	pop    %ebp
c00318b5:	c3                   	ret    

c00318b6 <write_gdtr>:
c00318b6:	55                   	push   %ebp
c00318b7:	89 e5                	mov    %esp,%ebp
c00318b9:	e8 c4 e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00318be:	05 42 b7 00 00       	add    $0xb742,%eax
c00318c3:	8b 55 0c             	mov    0xc(%ebp),%edx
c00318c6:	4a                   	dec    %edx
c00318c7:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
c00318ce:	8b 55 08             	mov    0x8(%ebp),%edx
c00318d1:	66 89 90 8e 1e 01 00 	mov    %dx,0x11e8e(%eax)
c00318d8:	8b 55 08             	mov    0x8(%ebp),%edx
c00318db:	c1 ea 10             	shr    $0x10,%edx
c00318de:	66 89 90 90 1e 01 00 	mov    %dx,0x11e90(%eax)
c00318e5:	8d 80 8c 1e 01 00    	lea    0x11e8c(%eax),%eax
c00318eb:	0f 01 10             	lgdtl  (%eax)
c00318ee:	90                   	nop
c00318ef:	5d                   	pop    %ebp
c00318f0:	c3                   	ret    

c00318f1 <get_kpdir>:
c00318f1:	55                   	push   %ebp
c00318f2:	89 e5                	mov    %esp,%ebp
c00318f4:	e8 89 e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00318f9:	05 07 b7 00 00       	add    $0xb707,%eax
c00318fe:	c7 c0 00 40 07 c0    	mov    $0xc0074000,%eax
c0031904:	5d                   	pop    %ebp
c0031905:	c3                   	ret    

c0031906 <init_page>:
c0031906:	55                   	push   %ebp
c0031907:	89 e5                	mov    %esp,%ebp
c0031909:	53                   	push   %ebx
c003190a:	83 ec 24             	sub    $0x24,%esp
c003190d:	e8 70 e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031912:	05 ee b6 00 00       	add    $0xb6ee,%eax
c0031917:	c7 c2 00 40 07 c0    	mov    $0xc0074000,%edx
c003191d:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031923:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0031926:	c7 c2 00 50 07 c0    	mov    $0xc0075000,%edx
c003192c:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031932:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0031935:	83 ec 04             	sub    $0x4,%esp
c0031938:	68 00 10 00 00       	push   $0x1000
c003193d:	6a 00                	push   $0x0
c003193f:	ff 75 e4             	pushl  -0x1c(%ebp)
c0031942:	89 c3                	mov    %eax,%ebx
c0031944:	e8 f3 04 00 00       	call   c0031e3c <memset>
c0031949:	83 c4 10             	add    $0x10,%esp
c003194c:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031953:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c003195a:	eb 70                	jmp    c00319cc <init_page+0xc6>
c003195c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003195f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031964:	89 c2                	mov    %eax,%edx
c0031966:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031969:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031970:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031973:	01 c8                	add    %ecx,%eax
c0031975:	83 ca 07             	or     $0x7,%edx
c0031978:	89 10                	mov    %edx,(%eax)
c003197a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003197d:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031982:	89 c2                	mov    %eax,%edx
c0031984:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031987:	05 00 03 00 00       	add    $0x300,%eax
c003198c:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031993:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031996:	01 c8                	add    %ecx,%eax
c0031998:	83 ca 07             	or     $0x7,%edx
c003199b:	89 10                	mov    %edx,(%eax)
c003199d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c00319a4:	eb 1a                	jmp    c00319c0 <init_page+0xba>
c00319a6:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00319a9:	c1 e0 0c             	shl    $0xc,%eax
c00319ac:	83 c8 07             	or     $0x7,%eax
c00319af:	89 c2                	mov    %eax,%edx
c00319b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00319b4:	89 10                	mov    %edx,(%eax)
c00319b6:	ff 45 e8             	incl   -0x18(%ebp)
c00319b9:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c00319bd:	ff 45 ec             	incl   -0x14(%ebp)
c00319c0:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c00319c7:	76 dd                	jbe    c00319a6 <init_page+0xa0>
c00319c9:	ff 45 f0             	incl   -0x10(%ebp)
c00319cc:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c00319d0:	76 8a                	jbe    c003195c <init_page+0x56>
c00319d2:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00319d9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00319dc:	c1 e8 0c             	shr    $0xc,%eax
c00319df:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00319e4:	c1 e0 0c             	shl    $0xc,%eax
c00319e7:	89 c2                	mov    %eax,%edx
c00319e9:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00319ec:	25 ff 0f 00 00       	and    $0xfff,%eax
c00319f1:	09 d0                	or     %edx,%eax
c00319f3:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00319f6:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00319f9:	83 ec 0c             	sub    $0xc,%esp
c00319fc:	50                   	push   %eax
c00319fd:	e8 9e fe ff ff       	call   c00318a0 <write_cr3>
c0031a02:	83 c4 10             	add    $0x10,%esp
c0031a05:	e8 65 fe ff ff       	call   c003186f <read_cr0>
c0031a0a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0031a0d:	8a 45 e3             	mov    -0x1d(%ebp),%al
c0031a10:	83 c8 80             	or     $0xffffff80,%eax
c0031a13:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0031a16:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031a19:	83 ec 0c             	sub    $0xc,%esp
c0031a1c:	50                   	push   %eax
c0031a1d:	e8 68 fe ff ff       	call   c003188a <write_cr0>
c0031a22:	83 c4 10             	add    $0x10,%esp
c0031a25:	90                   	nop
c0031a26:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a29:	c9                   	leave  
c0031a2a:	c3                   	ret    

c0031a2b <set_segment>:
c0031a2b:	55                   	push   %ebp
c0031a2c:	89 e5                	mov    %esp,%ebp
c0031a2e:	e8 4f e7 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031a33:	05 cd b5 00 00       	add    $0xb5cd,%eax
c0031a38:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a3b:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031a40:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a43:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0031a49:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a4c:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031a50:	8b 45 10             	mov    0x10(%ebp),%eax
c0031a53:	88 c2                	mov    %al,%dl
c0031a55:	83 e2 0f             	and    $0xf,%edx
c0031a58:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a5b:	88 d1                	mov    %dl,%cl
c0031a5d:	83 e1 0f             	and    $0xf,%ecx
c0031a60:	8a 50 05             	mov    0x5(%eax),%dl
c0031a63:	83 e2 f0             	and    $0xfffffff0,%edx
c0031a66:	09 ca                	or     %ecx,%edx
c0031a68:	88 50 05             	mov    %dl,0x5(%eax)
c0031a6b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a6e:	8a 50 05             	mov    0x5(%eax),%dl
c0031a71:	83 ca 10             	or     $0x10,%edx
c0031a74:	88 50 05             	mov    %dl,0x5(%eax)
c0031a77:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031a7a:	88 c2                	mov    %al,%dl
c0031a7c:	83 e2 03             	and    $0x3,%edx
c0031a7f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a82:	83 e2 03             	and    $0x3,%edx
c0031a85:	88 d1                	mov    %dl,%cl
c0031a87:	c1 e1 05             	shl    $0x5,%ecx
c0031a8a:	8a 50 05             	mov    0x5(%eax),%dl
c0031a8d:	83 e2 9f             	and    $0xffffff9f,%edx
c0031a90:	09 ca                	or     %ecx,%edx
c0031a92:	88 50 05             	mov    %dl,0x5(%eax)
c0031a95:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a98:	8a 50 05             	mov    0x5(%eax),%dl
c0031a9b:	83 ca 80             	or     $0xffffff80,%edx
c0031a9e:	88 50 05             	mov    %dl,0x5(%eax)
c0031aa1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031aa4:	8a 50 06             	mov    0x6(%eax),%dl
c0031aa7:	83 ca 0f             	or     $0xf,%edx
c0031aaa:	88 50 06             	mov    %dl,0x6(%eax)
c0031aad:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ab0:	8a 50 06             	mov    0x6(%eax),%dl
c0031ab3:	83 e2 ef             	and    $0xffffffef,%edx
c0031ab6:	88 50 06             	mov    %dl,0x6(%eax)
c0031ab9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031abc:	8a 50 06             	mov    0x6(%eax),%dl
c0031abf:	83 e2 df             	and    $0xffffffdf,%edx
c0031ac2:	88 50 06             	mov    %dl,0x6(%eax)
c0031ac5:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ac8:	8a 50 06             	mov    0x6(%eax),%dl
c0031acb:	83 ca 40             	or     $0x40,%edx
c0031ace:	88 50 06             	mov    %dl,0x6(%eax)
c0031ad1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ad4:	8a 50 06             	mov    0x6(%eax),%dl
c0031ad7:	83 ca 80             	or     $0xffffff80,%edx
c0031ada:	88 50 06             	mov    %dl,0x6(%eax)
c0031add:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ae0:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0031ae4:	90                   	nop
c0031ae5:	5d                   	pop    %ebp
c0031ae6:	c3                   	ret    

c0031ae7 <init_segment>:
c0031ae7:	55                   	push   %ebp
c0031ae8:	89 e5                	mov    %esp,%ebp
c0031aea:	53                   	push   %ebx
c0031aeb:	83 ec 04             	sub    $0x4,%esp
c0031aee:	e8 93 e6 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0031af3:	81 c3 0d b5 00 00    	add    $0xb50d,%ebx
c0031af9:	83 ec 04             	sub    $0x4,%esp
c0031afc:	6a 18                	push   $0x18
c0031afe:	6a 00                	push   $0x0
c0031b00:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b06:	50                   	push   %eax
c0031b07:	e8 30 03 00 00       	call   c0031e3c <memset>
c0031b0c:	83 c4 10             	add    $0x10,%esp
c0031b0f:	83 ec 04             	sub    $0x4,%esp
c0031b12:	6a 0a                	push   $0xa
c0031b14:	6a 00                	push   $0x0
c0031b16:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b1c:	8d 40 08             	lea    0x8(%eax),%eax
c0031b1f:	50                   	push   %eax
c0031b20:	e8 06 ff ff ff       	call   c0031a2b <set_segment>
c0031b25:	83 c4 10             	add    $0x10,%esp
c0031b28:	83 ec 04             	sub    $0x4,%esp
c0031b2b:	6a 02                	push   $0x2
c0031b2d:	6a 00                	push   $0x0
c0031b2f:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b35:	8d 40 10             	lea    0x10(%eax),%eax
c0031b38:	50                   	push   %eax
c0031b39:	e8 ed fe ff ff       	call   c0031a2b <set_segment>
c0031b3e:	83 c4 10             	add    $0x10,%esp
c0031b41:	83 ec 08             	sub    $0x8,%esp
c0031b44:	6a 18                	push   $0x18
c0031b46:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b4c:	50                   	push   %eax
c0031b4d:	e8 64 fd ff ff       	call   c00318b6 <write_gdtr>
c0031b52:	83 c4 10             	add    $0x10,%esp
c0031b55:	90                   	nop
c0031b56:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b59:	c9                   	leave  
c0031b5a:	c3                   	ret    
c0031b5b:	66 90                	xchg   %ax,%ax
c0031b5d:	66 90                	xchg   %ax,%ax
c0031b5f:	90                   	nop

c0031b60 <mm_malloc>:
c0031b60:	55                   	push   %ebp
c0031b61:	31 c0                	xor    %eax,%eax
c0031b63:	89 e5                	mov    %esp,%ebp
c0031b65:	57                   	push   %edi
c0031b66:	56                   	push   %esi
c0031b67:	53                   	push   %ebx
c0031b68:	83 ec 3c             	sub    $0x3c,%esp
c0031b6b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031b6e:	85 db                	test   %ebx,%ebx
c0031b70:	0f 8e 36 02 00 00    	jle    c0031dac <mm_malloc+0x24c>
c0031b76:	e8 d5 fa ff ff       	call   c0031650 <get_updir>
c0031b7b:	89 c6                	mov    %eax,%esi
c0031b7d:	e8 e3 fa ff ff       	call   c0031665 <get_ucr3>
c0031b82:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b85:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031b89:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031b8c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031b8f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031b94:	29 d0                	sub    %edx,%eax
c0031b96:	89 da                	mov    %ebx,%edx
c0031b98:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031b9e:	01 d0                	add    %edx,%eax
c0031ba0:	85 c0                	test   %eax,%eax
c0031ba2:	0f 8e c0 00 00 00    	jle    c0031c68 <mm_malloc+0x108>
c0031ba8:	8b 55 08             	mov    0x8(%ebp),%edx
c0031bab:	83 e8 01             	sub    $0x1,%eax
c0031bae:	89 f7                	mov    %esi,%edi
c0031bb0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031bb5:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031bbc:	89 d3                	mov    %edx,%ebx
c0031bbe:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031bc1:	eb 51                	jmp    c0031c14 <mm_malloc+0xb4>
c0031bc3:	90                   	nop
c0031bc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031bc8:	8b 31                	mov    (%ecx),%esi
c0031bca:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031bd0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031bd6:	89 d8                	mov    %ebx,%eax
c0031bd8:	c1 e8 0a             	shr    $0xa,%eax
c0031bdb:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031be0:	01 c6                	add    %eax,%esi
c0031be2:	f6 06 01             	testb  $0x1,(%esi)
c0031be5:	75 22                	jne    c0031c09 <mm_malloc+0xa9>
c0031be7:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031bec:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031bf1:	0f 8f c1 01 00 00    	jg     c0031db8 <mm_malloc+0x258>
c0031bf7:	89 c1                	mov    %eax,%ecx
c0031bf9:	83 c0 01             	add    $0x1,%eax
c0031bfc:	c1 e1 0c             	shl    $0xc,%ecx
c0031bff:	83 c9 07             	or     $0x7,%ecx
c0031c02:	89 0e                	mov    %ecx,(%esi)
c0031c04:	a3 20 d0 03 c0       	mov    %eax,0xc003d020
c0031c09:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031c0f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031c12:	74 54                	je     c0031c68 <mm_malloc+0x108>
c0031c14:	89 d8                	mov    %ebx,%eax
c0031c16:	c1 e8 16             	shr    $0x16,%eax
c0031c19:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031c1c:	f6 01 01             	testb  $0x1,(%ecx)
c0031c1f:	75 a7                	jne    c0031bc8 <mm_malloc+0x68>
c0031c21:	a1 00 f0 04 c0       	mov    0xc004f000,%eax
c0031c26:	89 c6                	mov    %eax,%esi
c0031c28:	83 c0 01             	add    $0x1,%eax
c0031c2b:	c1 e6 0c             	shl    $0xc,%esi
c0031c2e:	81 c6 00 00 05 c0    	add    $0xc0050000,%esi
c0031c34:	a3 00 f0 04 c0       	mov    %eax,0xc004f000
c0031c39:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031c3f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c44:	83 c8 07             	or     $0x7,%eax
c0031c47:	89 01                	mov    %eax,(%ecx)
c0031c49:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031c50:	00 
c0031c51:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031c58:	00 
c0031c59:	89 34 24             	mov    %esi,(%esp)
c0031c5c:	e8 db 01 00 00       	call   c0031e3c <memset>
c0031c61:	e9 70 ff ff ff       	jmp    c0031bd6 <mm_malloc+0x76>
c0031c66:	66 90                	xchg   %ax,%ax
c0031c68:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031c6b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031c6e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031c74:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031c7a:	c1 e8 16             	shr    $0x16,%eax
c0031c7d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031c80:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031c86:	75 32                	jne    c0031cba <mm_malloc+0x15a>
c0031c88:	c7 44 24 10 8c 97 03 	movl   $0xc003978c,0x10(%esp)
c0031c8f:	c0 
c0031c90:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031c97:	c0 
c0031c98:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031c9f:	00 
c0031ca0:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031ca7:	c0 
c0031ca8:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031caf:	e8 4f ee ff ff       	call   c0030b03 <printk>
c0031cb4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031cb9:	82                   	nemu_trap 
c0031cba:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0031cbd:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c0031cc3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031cc8:	c1 ea 0c             	shr    $0xc,%edx
c0031ccb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031cd1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c0031cd5:	75 32                	jne    c0031d09 <mm_malloc+0x1a9>
c0031cd7:	c7 44 24 10 94 97 03 	movl   $0xc0039794,0x10(%esp)
c0031cde:	c0 
c0031cdf:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031ce6:	c0 
c0031ce7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031cee:	00 
c0031cef:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031cf6:	c0 
c0031cf7:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031cfe:	e8 00 ee ff ff       	call   c0030b03 <printk>
c0031d03:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d08:	82                   	nemu_trap 
c0031d09:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d0c:	c1 e8 16             	shr    $0x16,%eax
c0031d0f:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031d12:	f6 c3 01             	test   $0x1,%bl
c0031d15:	75 32                	jne    c0031d49 <mm_malloc+0x1e9>
c0031d17:	c7 44 24 10 8c 97 03 	movl   $0xc003978c,0x10(%esp)
c0031d1e:	c0 
c0031d1f:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031d26:	c0 
c0031d27:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031d2e:	00 
c0031d2f:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031d36:	c0 
c0031d37:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031d3e:	e8 c0 ed ff ff       	call   c0030b03 <printk>
c0031d43:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d48:	82                   	nemu_trap 
c0031d49:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d4c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
c0031d52:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d57:	c1 ea 0c             	shr    $0xc,%edx
c0031d5a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031d60:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
c0031d63:	f6 c3 01             	test   $0x1,%bl
c0031d66:	75 32                	jne    c0031d9a <mm_malloc+0x23a>
c0031d68:	c7 44 24 10 94 97 03 	movl   $0xc0039794,0x10(%esp)
c0031d6f:	c0 
c0031d70:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031d77:	c0 
c0031d78:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d7f:	00 
c0031d80:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031d87:	c0 
c0031d88:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031d8f:	e8 6f ed ff ff       	call   c0030b03 <printk>
c0031d94:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d99:	82                   	nemu_trap 
c0031d9a:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d9d:	89 d8                	mov    %ebx,%eax
c0031d9f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031da4:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c0031daa:	09 d0                	or     %edx,%eax
c0031dac:	83 c4 3c             	add    $0x3c,%esp
c0031daf:	5b                   	pop    %ebx
c0031db0:	5e                   	pop    %esi
c0031db1:	5f                   	pop    %edi
c0031db2:	5d                   	pop    %ebp
c0031db3:	c3                   	ret    
c0031db4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031db8:	c7 44 24 10 68 97 03 	movl   $0xc0039768,0x10(%esp)
c0031dbf:	c0 
c0031dc0:	c7 44 24 0c e8 97 03 	movl   $0xc00397e8,0xc(%esp)
c0031dc7:	c0 
c0031dc8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031dcf:	00 
c0031dd0:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031dd7:	c0 
c0031dd8:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031ddf:	e8 1f ed ff ff       	call   c0030b03 <printk>
c0031de4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031de9:	82                   	nemu_trap 
c0031dea:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031def:	e9 03 fe ff ff       	jmp    c0031bf7 <mm_malloc+0x97>

c0031df4 <memcpy>:
c0031df4:	55                   	push   %ebp
c0031df5:	89 e5                	mov    %esp,%ebp
c0031df7:	56                   	push   %esi
c0031df8:	57                   	push   %edi
c0031df9:	53                   	push   %ebx
c0031dfa:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031dfd:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e00:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031e03:	fc                   	cld    
c0031e04:	83 f9 08             	cmp    $0x8,%ecx
c0031e07:	76 26                	jbe    c0031e2f <memcpy+0x3b>
c0031e09:	89 fa                	mov    %edi,%edx
c0031e0b:	89 cb                	mov    %ecx,%ebx
c0031e0d:	83 e2 03             	and    $0x3,%edx
c0031e10:	74 10                	je     c0031e22 <memcpy+0x2e>
c0031e12:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031e17:	29 d1                	sub    %edx,%ecx
c0031e19:	83 e1 03             	and    $0x3,%ecx
c0031e1c:	29 cb                	sub    %ecx,%ebx
c0031e1e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e20:	89 d9                	mov    %ebx,%ecx
c0031e22:	c1 e9 02             	shr    $0x2,%ecx
c0031e25:	8d 76 00             	lea    0x0(%esi),%esi
c0031e28:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031e2a:	89 d9                	mov    %ebx,%ecx
c0031e2c:	83 e1 03             	and    $0x3,%ecx
c0031e2f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e31:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e34:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031e37:	5b                   	pop    %ebx
c0031e38:	5f                   	pop    %edi
c0031e39:	5e                   	pop    %esi
c0031e3a:	c9                   	leave  
c0031e3b:	c3                   	ret    

c0031e3c <memset>:
c0031e3c:	55                   	push   %ebp
c0031e3d:	89 e5                	mov    %esp,%ebp
c0031e3f:	57                   	push   %edi
c0031e40:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e43:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031e47:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e4a:	fc                   	cld    
c0031e4b:	83 f9 10             	cmp    $0x10,%ecx
c0031e4e:	76 69                	jbe    c0031eb9 <memset+0x7d>
c0031e50:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e56:	74 4c                	je     c0031ea4 <memset+0x68>
c0031e58:	88 07                	mov    %al,(%edi)
c0031e5a:	47                   	inc    %edi
c0031e5b:	49                   	dec    %ecx
c0031e5c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e62:	74 40                	je     c0031ea4 <memset+0x68>
c0031e64:	88 07                	mov    %al,(%edi)
c0031e66:	47                   	inc    %edi
c0031e67:	49                   	dec    %ecx
c0031e68:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e6e:	74 34                	je     c0031ea4 <memset+0x68>
c0031e70:	88 07                	mov    %al,(%edi)
c0031e72:	47                   	inc    %edi
c0031e73:	49                   	dec    %ecx
c0031e74:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e7a:	74 28                	je     c0031ea4 <memset+0x68>
c0031e7c:	88 07                	mov    %al,(%edi)
c0031e7e:	47                   	inc    %edi
c0031e7f:	49                   	dec    %ecx
c0031e80:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e86:	74 1c                	je     c0031ea4 <memset+0x68>
c0031e88:	88 07                	mov    %al,(%edi)
c0031e8a:	47                   	inc    %edi
c0031e8b:	49                   	dec    %ecx
c0031e8c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e92:	74 10                	je     c0031ea4 <memset+0x68>
c0031e94:	88 07                	mov    %al,(%edi)
c0031e96:	47                   	inc    %edi
c0031e97:	49                   	dec    %ecx
c0031e98:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e9e:	74 04                	je     c0031ea4 <memset+0x68>
c0031ea0:	88 07                	mov    %al,(%edi)
c0031ea2:	47                   	inc    %edi
c0031ea3:	49                   	dec    %ecx
c0031ea4:	88 c4                	mov    %al,%ah
c0031ea6:	89 c2                	mov    %eax,%edx
c0031ea8:	c1 e2 10             	shl    $0x10,%edx
c0031eab:	09 d0                	or     %edx,%eax
c0031ead:	89 ca                	mov    %ecx,%edx
c0031eaf:	c1 e9 02             	shr    $0x2,%ecx
c0031eb2:	83 e2 03             	and    $0x3,%edx
c0031eb5:	f3 ab                	rep stos %eax,%es:(%edi)
c0031eb7:	89 d1                	mov    %edx,%ecx
c0031eb9:	f3 aa                	rep stos %al,%es:(%edi)
c0031ebb:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ebe:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031ec1:	5f                   	pop    %edi
c0031ec2:	c9                   	leave  
c0031ec3:	c3                   	ret    
c0031ec4:	66 90                	xchg   %ax,%ax
c0031ec6:	66 90                	xchg   %ax,%ax
c0031ec8:	66 90                	xchg   %ax,%ax
c0031eca:	66 90                	xchg   %ax,%ax
c0031ecc:	66 90                	xchg   %ax,%ax
c0031ece:	66 90                	xchg   %ax,%ax

c0031ed0 <_vsnprintf_r>:
c0031ed0:	55                   	push   %ebp
c0031ed1:	89 e5                	mov    %esp,%ebp
c0031ed3:	56                   	push   %esi
c0031ed4:	53                   	push   %ebx
c0031ed5:	83 c4 80             	add    $0xffffff80,%esp
c0031ed8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031edb:	8b 75 08             	mov    0x8(%ebp),%esi
c0031ede:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031ee1:	85 db                	test   %ebx,%ebx
c0031ee3:	78 63                	js     c0031f48 <_vsnprintf_r+0x78>
c0031ee5:	ba 08 02 00 00       	mov    $0x208,%edx
c0031eea:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031eef:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031ef3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031ef6:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031ef9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031efc:	31 c0                	xor    %eax,%eax
c0031efe:	85 db                	test   %ebx,%ebx
c0031f00:	0f 45 c2             	cmovne %edx,%eax
c0031f03:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031f06:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031f09:	8b 45 18             	mov    0x18(%ebp),%eax
c0031f0c:	89 34 24             	mov    %esi,(%esp)
c0031f0f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031f13:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031f17:	8b 45 14             	mov    0x14(%ebp),%eax
c0031f1a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031f1e:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031f21:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031f25:	e8 86 00 00 00       	call   c0031fb0 <_svfprintf_r>
c0031f2a:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031f2d:	7c 11                	jl     c0031f40 <_vsnprintf_r+0x70>
c0031f2f:	85 db                	test   %ebx,%ebx
c0031f31:	74 06                	je     c0031f39 <_vsnprintf_r+0x69>
c0031f33:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031f36:	c6 02 00             	movb   $0x0,(%edx)
c0031f39:	83 ec 80             	sub    $0xffffff80,%esp
c0031f3c:	5b                   	pop    %ebx
c0031f3d:	5e                   	pop    %esi
c0031f3e:	5d                   	pop    %ebp
c0031f3f:	c3                   	ret    
c0031f40:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f46:	eb e7                	jmp    c0031f2f <_vsnprintf_r+0x5f>
c0031f48:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f4e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031f53:	eb e4                	jmp    c0031f39 <_vsnprintf_r+0x69>
c0031f55:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031f59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031f60 <vsnprintf>:
c0031f60:	55                   	push   %ebp
c0031f61:	89 e5                	mov    %esp,%ebp
c0031f63:	83 ec 28             	sub    $0x28,%esp
c0031f66:	e8 35 00 00 00       	call   c0031fa0 <__getreent>
c0031f6b:	8b 55 14             	mov    0x14(%ebp),%edx
c0031f6e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031f72:	8b 55 10             	mov    0x10(%ebp),%edx
c0031f75:	89 04 24             	mov    %eax,(%esp)
c0031f78:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031f7c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031f7f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031f83:	8b 55 08             	mov    0x8(%ebp),%edx
c0031f86:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031f8a:	e8 41 ff ff ff       	call   c0031ed0 <_vsnprintf_r>
c0031f8f:	c9                   	leave  
c0031f90:	c3                   	ret    
c0031f91:	66 90                	xchg   %ax,%ax
c0031f93:	66 90                	xchg   %ax,%ax
c0031f95:	66 90                	xchg   %ax,%ax
c0031f97:	66 90                	xchg   %ax,%ax
c0031f99:	66 90                	xchg   %ax,%ax
c0031f9b:	66 90                	xchg   %ax,%ax
c0031f9d:	66 90                	xchg   %ax,%ax
c0031f9f:	90                   	nop

c0031fa0 <__getreent>:
c0031fa0:	55                   	push   %ebp
c0031fa1:	a1 40 d0 03 c0       	mov    0xc003d040,%eax
c0031fa6:	89 e5                	mov    %esp,%ebp
c0031fa8:	5d                   	pop    %ebp
c0031fa9:	c3                   	ret    
c0031faa:	66 90                	xchg   %ax,%ax
c0031fac:	66 90                	xchg   %ax,%ax
c0031fae:	66 90                	xchg   %ax,%ax

c0031fb0 <_svfprintf_r>:
c0031fb0:	55                   	push   %ebp
c0031fb1:	89 e5                	mov    %esp,%ebp
c0031fb3:	57                   	push   %edi
c0031fb4:	56                   	push   %esi
c0031fb5:	53                   	push   %ebx
c0031fb6:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c0031fbc:	8b 45 08             	mov    0x8(%ebp),%eax
c0031fbf:	89 04 24             	mov    %eax,(%esp)
c0031fc2:	e8 89 33 00 00       	call   c0035350 <_localeconv_r>
c0031fc7:	8b 00                	mov    (%eax),%eax
c0031fc9:	89 04 24             	mov    %eax,(%esp)
c0031fcc:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0031fd2:	e8 d9 4a 00 00       	call   c0036ab0 <strlen>
c0031fd7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c0031fdd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031fe0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0031fe4:	74 0b                	je     c0031ff1 <_svfprintf_r+0x41>
c0031fe6:	8b 40 10             	mov    0x10(%eax),%eax
c0031fe9:	85 c0                	test   %eax,%eax
c0031feb:	0f 84 62 18 00 00    	je     c0033853 <_svfprintf_r+0x18a3>
c0031ff1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0031ff4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0031ff7:	89 c7                	mov    %eax,%edi
c0031ff9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0031fff:	d9 ee                	fldz   
c0032001:	29 d0                	sub    %edx,%eax
c0032003:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c003200a:	00 00 00 
c003200d:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032013:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003201a:	00 00 00 
c003201d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0032024:	00 00 00 
c0032027:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c003202e:	00 00 00 
c0032031:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0032038:	00 00 00 
c003203b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0032042:	00 00 00 
c0032045:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c003204b:	8b 45 10             	mov    0x10(%ebp),%eax
c003204e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032051:	0f b6 00             	movzbl (%eax),%eax
c0032054:	3c 25                	cmp    $0x25,%al
c0032056:	74 4d                	je     c00320a5 <_svfprintf_r+0xf5>
c0032058:	84 c0                	test   %al,%al
c003205a:	75 08                	jne    c0032064 <_svfprintf_r+0xb4>
c003205c:	eb 47                	jmp    c00320a5 <_svfprintf_r+0xf5>
c003205e:	66 90                	xchg   %ax,%ax
c0032060:	84 c0                	test   %al,%al
c0032062:	74 0a                	je     c003206e <_svfprintf_r+0xbe>
c0032064:	83 c3 01             	add    $0x1,%ebx
c0032067:	0f b6 03             	movzbl (%ebx),%eax
c003206a:	3c 25                	cmp    $0x25,%al
c003206c:	75 f2                	jne    c0032060 <_svfprintf_r+0xb0>
c003206e:	89 de                	mov    %ebx,%esi
c0032070:	2b 75 10             	sub    0x10(%ebp),%esi
c0032073:	74 30                	je     c00320a5 <_svfprintf_r+0xf5>
c0032075:	8b 45 10             	mov    0x10(%ebp),%eax
c0032078:	83 c7 08             	add    $0x8,%edi
c003207b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003207e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032084:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032087:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003208d:	83 c0 01             	add    $0x1,%eax
c0032090:	83 f8 07             	cmp    $0x7,%eax
c0032093:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032099:	0f 8f 91 00 00 00    	jg     c0032130 <_svfprintf_r+0x180>
c003209f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c00320a5:	80 3b 00             	cmpb   $0x0,(%ebx)
c00320a8:	0f 84 aa 00 00 00    	je     c0032158 <_svfprintf_r+0x1a8>
c00320ae:	8d 43 01             	lea    0x1(%ebx),%eax
c00320b1:	be 20 00 00 00       	mov    $0x20,%esi
c00320b6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00320bd:	31 db                	xor    %ebx,%ebx
c00320bf:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c00320c6:	ff ff ff 
c00320c9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c00320d0:	00 00 00 
c00320d3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c00320da:	00 00 00 
c00320dd:	8d 48 01             	lea    0x1(%eax),%ecx
c00320e0:	0f be 00             	movsbl (%eax),%eax
c00320e3:	8d 50 e0             	lea    -0x20(%eax),%edx
c00320e6:	83 fa 58             	cmp    $0x58,%edx
c00320e9:	0f 87 8f 07 00 00    	ja     c003287e <_svfprintf_r+0x8ce>
c00320ef:	ff 24 95 3c 98 03 c0 	jmp    *-0x3ffc67c4(,%edx,4)
c00320f6:	66 90                	xchg   %ax,%ax
c00320f8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00320ff:	89 c8                	mov    %ecx,%eax
c0032101:	eb da                	jmp    c00320dd <_svfprintf_r+0x12d>
c0032103:	8b 45 14             	mov    0x14(%ebp),%eax
c0032106:	8b 55 14             	mov    0x14(%ebp),%edx
c0032109:	8b 00                	mov    (%eax),%eax
c003210b:	83 c2 04             	add    $0x4,%edx
c003210e:	89 55 14             	mov    %edx,0x14(%ebp)
c0032111:	85 c0                	test   %eax,%eax
c0032113:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0032119:	79 e4                	jns    c00320ff <_svfprintf_r+0x14f>
c003211b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0032121:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0032128:	89 c8                	mov    %ecx,%eax
c003212a:	eb b1                	jmp    c00320dd <_svfprintf_r+0x12d>
c003212c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032130:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032136:	89 44 24 08          	mov    %eax,0x8(%esp)
c003213a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003213d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032141:	8b 45 08             	mov    0x8(%ebp),%eax
c0032144:	89 04 24             	mov    %eax,(%esp)
c0032147:	e8 e4 49 00 00       	call   c0036b30 <__ssprint_r>
c003214c:	85 c0                	test   %eax,%eax
c003214e:	75 30                	jne    c0032180 <_svfprintf_r+0x1d0>
c0032150:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032153:	e9 47 ff ff ff       	jmp    c003209f <_svfprintf_r+0xef>
c0032158:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003215e:	85 c0                	test   %eax,%eax
c0032160:	74 1e                	je     c0032180 <_svfprintf_r+0x1d0>
c0032162:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032168:	89 44 24 08          	mov    %eax,0x8(%esp)
c003216c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003216f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032173:	8b 45 08             	mov    0x8(%ebp),%eax
c0032176:	89 04 24             	mov    %eax,(%esp)
c0032179:	e8 b2 49 00 00       	call   c0036b30 <__ssprint_r>
c003217e:	66 90                	xchg   %ax,%ax
c0032180:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032183:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032188:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003218c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032193:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032199:	5b                   	pop    %ebx
c003219a:	5e                   	pop    %esi
c003219b:	5f                   	pop    %edi
c003219c:	5d                   	pop    %ebp
c003219d:	c3                   	ret    
c003219e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c00321a3:	89 c8                	mov    %ecx,%eax
c00321a5:	e9 33 ff ff ff       	jmp    c00320dd <_svfprintf_r+0x12d>
c00321aa:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00321b0:	8b 45 14             	mov    0x14(%ebp),%eax
c00321b3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00321b6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00321bd:	8d 70 04             	lea    0x4(%eax),%esi
c00321c0:	8b 00                	mov    (%eax),%eax
c00321c2:	85 c0                	test   %eax,%eax
c00321c4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00321ca:	0f 84 7f 18 00 00    	je     c0033a4f <_svfprintf_r+0x1a9f>
c00321d0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00321d6:	85 c0                	test   %eax,%eax
c00321d8:	0f 88 b6 17 00 00    	js     c0033994 <_svfprintf_r+0x19e4>
c00321de:	89 44 24 08          	mov    %eax,0x8(%esp)
c00321e2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00321e8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00321ef:	00 
c00321f0:	89 04 24             	mov    %eax,(%esp)
c00321f3:	e8 f8 38 00 00       	call   c0035af0 <memchr>
c00321f8:	85 c0                	test   %eax,%eax
c00321fa:	0f 84 a0 19 00 00    	je     c0033ba0 <_svfprintf_r+0x1bf0>
c0032200:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0032206:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003220c:	39 d0                	cmp    %edx,%eax
c003220e:	0f 4f c2             	cmovg  %edx,%eax
c0032211:	89 c2                	mov    %eax,%edx
c0032213:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003221a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032220:	31 c0                	xor    %eax,%eax
c0032222:	85 d2                	test   %edx,%edx
c0032224:	0f 49 c2             	cmovns %edx,%eax
c0032227:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c003222d:	89 75 14             	mov    %esi,0x14(%ebp)
c0032230:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032237:	00 00 00 
c003223a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032241:	00 00 00 
c0032244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032248:	84 db                	test   %bl,%bl
c003224a:	74 07                	je     c0032253 <_svfprintf_r+0x2a3>
c003224c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032253:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032259:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003225f:	89 c8                	mov    %ecx,%eax
c0032261:	89 f2                	mov    %esi,%edx
c0032263:	83 c0 02             	add    $0x2,%eax
c0032266:	83 e2 02             	and    $0x2,%edx
c0032269:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003226f:	89 f2                	mov    %esi,%edx
c0032271:	0f 44 c1             	cmove  %ecx,%eax
c0032274:	81 e2 84 00 00 00    	and    $0x84,%edx
c003227a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032280:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032286:	0f 85 1c 06 00 00    	jne    c00328a8 <_svfprintf_r+0x8f8>
c003228c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032292:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032298:	85 f6                	test   %esi,%esi
c003229a:	0f 8e 08 06 00 00    	jle    c00328a8 <_svfprintf_r+0x8f8>
c00322a0:	83 fe 10             	cmp    $0x10,%esi
c00322a3:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00322a9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00322af:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00322b5:	7f 11                	jg     c00322c8 <_svfprintf_r+0x318>
c00322b7:	eb 6b                	jmp    c0032324 <_svfprintf_r+0x374>
c00322b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00322c0:	83 ee 10             	sub    $0x10,%esi
c00322c3:	83 fe 10             	cmp    $0x10,%esi
c00322c6:	7e 5c                	jle    c0032324 <_svfprintf_r+0x374>
c00322c8:	83 c0 01             	add    $0x1,%eax
c00322cb:	83 c1 10             	add    $0x10,%ecx
c00322ce:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c00322d4:	83 c7 08             	add    $0x8,%edi
c00322d7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00322de:	83 f8 07             	cmp    $0x7,%eax
c00322e1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00322e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00322ed:	7e d1                	jle    c00322c0 <_svfprintf_r+0x310>
c00322ef:	8b 45 0c             	mov    0xc(%ebp),%eax
c00322f2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00322f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00322fa:	8b 45 08             	mov    0x8(%ebp),%eax
c00322fd:	89 04 24             	mov    %eax,(%esp)
c0032300:	e8 2b 48 00 00       	call   c0036b30 <__ssprint_r>
c0032305:	85 c0                	test   %eax,%eax
c0032307:	0f 85 73 fe ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c003230d:	83 ee 10             	sub    $0x10,%esi
c0032310:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032316:	83 fe 10             	cmp    $0x10,%esi
c0032319:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003231f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032322:	7f a4                	jg     c00322c8 <_svfprintf_r+0x318>
c0032324:	83 c0 01             	add    $0x1,%eax
c0032327:	01 f1                	add    %esi,%ecx
c0032329:	83 f8 07             	cmp    $0x7,%eax
c003232c:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c0032332:	89 77 04             	mov    %esi,0x4(%edi)
c0032335:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003233b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032341:	0f 8f 16 0e 00 00    	jg     c003315d <_svfprintf_r+0x11ad>
c0032347:	83 c7 08             	add    $0x8,%edi
c003234a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032351:	e9 58 05 00 00       	jmp    c00328ae <_svfprintf_r+0x8fe>
c0032356:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003235d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032363:	8b 45 14             	mov    0x14(%ebp),%eax
c0032366:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032369:	0f 85 fd 04 00 00    	jne    c003286c <_svfprintf_r+0x8bc>
c003236f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032376:	0f 84 f0 04 00 00    	je     c003286c <_svfprintf_r+0x8bc>
c003237c:	0f b7 08             	movzwl (%eax),%ecx
c003237f:	83 c0 04             	add    $0x4,%eax
c0032382:	89 45 14             	mov    %eax,0x14(%ebp)
c0032385:	b8 01 00 00 00       	mov    $0x1,%eax
c003238a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032390:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032397:	31 db                	xor    %ebx,%ebx
c0032399:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003239f:	89 f2                	mov    %esi,%edx
c00323a1:	80 e2 7f             	and    $0x7f,%dl
c00323a4:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c00323ab:	0f 48 d6             	cmovs  %esi,%edx
c00323ae:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c00323b4:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00323ba:	85 d2                	test   %edx,%edx
c00323bc:	75 08                	jne    c00323c6 <_svfprintf_r+0x416>
c00323be:	85 c9                	test   %ecx,%ecx
c00323c0:	0f 84 ea 08 00 00    	je     c0032cb0 <_svfprintf_r+0xd00>
c00323c6:	3c 01                	cmp    $0x1,%al
c00323c8:	0f 84 6a 0d 00 00    	je     c0033138 <_svfprintf_r+0x1188>
c00323ce:	3c 02                	cmp    $0x2,%al
c00323d0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00323d3:	0f 85 bf 0b 00 00    	jne    c0032f98 <_svfprintf_r+0xfe8>
c00323d9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c00323df:	90                   	nop
c00323e0:	89 ca                	mov    %ecx,%edx
c00323e2:	83 e8 01             	sub    $0x1,%eax
c00323e5:	83 e2 0f             	and    $0xf,%edx
c00323e8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c00323ec:	c1 e9 04             	shr    $0x4,%ecx
c00323ef:	85 c9                	test   %ecx,%ecx
c00323f1:	88 10                	mov    %dl,(%eax)
c00323f3:	75 eb                	jne    c00323e0 <_svfprintf_r+0x430>
c00323f5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c00323f8:	29 c2                	sub    %eax,%edx
c00323fa:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032400:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0032406:	66 90                	xchg   %ax,%ax
c0032408:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c003240e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0032414:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003241b:	00 00 00 
c003241e:	39 c2                	cmp    %eax,%edx
c0032420:	0f 4d c2             	cmovge %edx,%eax
c0032423:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032429:	e9 1a fe ff ff       	jmp    c0032248 <_svfprintf_r+0x298>
c003242e:	84 db                	test   %bl,%bl
c0032430:	89 c8                	mov    %ecx,%eax
c0032432:	0f 44 de             	cmove  %esi,%ebx
c0032435:	e9 a3 fc ff ff       	jmp    c00320dd <_svfprintf_r+0x12d>
c003243a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032441:	89 c8                	mov    %ecx,%eax
c0032443:	e9 95 fc ff ff       	jmp    c00320dd <_svfprintf_r+0x12d>
c0032448:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003244f:	00 00 00 
c0032452:	89 c8                	mov    %ecx,%eax
c0032454:	e9 84 fc ff ff       	jmp    c00320dd <_svfprintf_r+0x12d>
c0032459:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003245f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032462:	31 ff                	xor    %edi,%edi
c0032464:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003246b:	00 00 00 
c003246e:	66 90                	xchg   %ax,%ax
c0032470:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032473:	83 c1 01             	add    $0x1,%ecx
c0032476:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032479:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003247d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032480:	83 fa 09             	cmp    $0x9,%edx
c0032483:	76 eb                	jbe    c0032470 <_svfprintf_r+0x4c0>
c0032485:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003248b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032491:	e9 4d fc ff ff       	jmp    c00320e3 <_svfprintf_r+0x133>
c0032496:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003249d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00324a4:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00324aa:	8b 45 14             	mov    0x14(%ebp),%eax
c00324ad:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324b0:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00324b6:	0f 85 61 02 00 00    	jne    c003271d <_svfprintf_r+0x76d>
c00324bc:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00324c3:	0f 84 54 02 00 00    	je     c003271d <_svfprintf_r+0x76d>
c00324c9:	0f bf 08             	movswl (%eax),%ecx
c00324cc:	83 c0 04             	add    $0x4,%eax
c00324cf:	89 45 14             	mov    %eax,0x14(%ebp)
c00324d2:	85 c9                	test   %ecx,%ecx
c00324d4:	0f 88 53 02 00 00    	js     c003272d <_svfprintf_r+0x77d>
c00324da:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00324e1:	b8 01 00 00 00       	mov    $0x1,%eax
c00324e6:	e9 ae fe ff ff       	jmp    c0032399 <_svfprintf_r+0x3e9>
c00324eb:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c00324f2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00324f8:	8b 45 14             	mov    0x14(%ebp),%eax
c00324fb:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324fe:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032504:	0f 84 15 10 00 00    	je     c003351f <_svfprintf_r+0x156f>
c003250a:	db 28                	fldt   (%eax)
c003250c:	83 c0 0c             	add    $0xc,%eax
c003250f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032512:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032518:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c003251e:	dd 1c 24             	fstpl  (%esp)
c0032521:	e8 aa 44 00 00       	call   c00369d0 <__fpclassifyd>
c0032526:	83 f8 01             	cmp    $0x1,%eax
c0032529:	0f 85 82 0f 00 00    	jne    c00334b1 <_svfprintf_r+0x1501>
c003252f:	d9 ee                	fldz   
c0032531:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032537:	d9 c9                	fxch   %st(1)
c0032539:	df e9                	fucomip %st(1),%st
c003253b:	dd d8                	fstp   %st(0)
c003253d:	0f 87 59 15 00 00    	ja     c0033a9c <_svfprintf_r+0x1aec>
c0032543:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003254a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032551:	ba fe 97 03 c0       	mov    $0xc00397fe,%edx
c0032556:	b8 02 98 03 c0       	mov    $0xc0039802,%eax
c003255b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032562:	00 00 00 
c0032565:	0f 4e c2             	cmovle %edx,%eax
c0032568:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003256e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032575:	ff ff ff 
c0032578:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003257f:	00 00 00 
c0032582:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032589:	00 00 00 
c003258c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032593:	00 00 00 
c0032596:	e9 ad fc ff ff       	jmp    c0032248 <_svfprintf_r+0x298>
c003259b:	8d 41 01             	lea    0x1(%ecx),%eax
c003259e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00325a4:	0f be 01             	movsbl (%ecx),%eax
c00325a7:	83 f8 2a             	cmp    $0x2a,%eax
c00325aa:	0f 84 84 18 00 00    	je     c0033e34 <_svfprintf_r+0x1e84>
c00325b0:	8d 50 d0             	lea    -0x30(%eax),%edx
c00325b3:	31 c9                	xor    %ecx,%ecx
c00325b5:	83 fa 09             	cmp    $0x9,%edx
c00325b8:	0f 87 a8 16 00 00    	ja     c0033c66 <_svfprintf_r+0x1cb6>
c00325be:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c00325c4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00325ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00325d0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c00325d3:	83 c7 01             	add    $0x1,%edi
c00325d6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c00325d9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c00325dd:	8d 50 d0             	lea    -0x30(%eax),%edx
c00325e0:	83 fa 09             	cmp    $0x9,%edx
c00325e3:	76 eb                	jbe    c00325d0 <_svfprintf_r+0x620>
c00325e5:	85 c9                	test   %ecx,%ecx
c00325e7:	89 ca                	mov    %ecx,%edx
c00325e9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00325ee:	0f 48 d1             	cmovs  %ecx,%edx
c00325f1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00325f7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c00325fd:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032603:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0032609:	e9 d5 fa ff ff       	jmp    c00320e3 <_svfprintf_r+0x133>
c003260e:	8b 45 14             	mov    0x14(%ebp),%eax
c0032611:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032614:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c003261b:	8b 08                	mov    (%eax),%ecx
c003261d:	83 c0 04             	add    $0x4,%eax
c0032620:	89 45 14             	mov    %eax,0x14(%ebp)
c0032623:	b8 02 00 00 00       	mov    $0x2,%eax
c0032628:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c003262f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032636:	c7 85 18 ff ff ff 1f 	movl   $0xc003981f,-0xe8(%ebp)
c003263d:	98 03 c0 
c0032640:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032647:	00 00 00 
c003264a:	e9 41 fd ff ff       	jmp    c0032390 <_svfprintf_r+0x3e0>
c003264f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032656:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003265c:	8b 45 14             	mov    0x14(%ebp),%eax
c003265f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032662:	0f 85 87 00 00 00    	jne    c00326ef <_svfprintf_r+0x73f>
c0032668:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003266f:	74 7e                	je     c00326ef <_svfprintf_r+0x73f>
c0032671:	0f b7 08             	movzwl (%eax),%ecx
c0032674:	83 c0 04             	add    $0x4,%eax
c0032677:	89 45 14             	mov    %eax,0x14(%ebp)
c003267a:	31 c0                	xor    %eax,%eax
c003267c:	e9 0f fd ff ff       	jmp    c0032390 <_svfprintf_r+0x3e0>
c0032681:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032688:	89 c8                	mov    %ecx,%eax
c003268a:	e9 4e fa ff ff       	jmp    c00320dd <_svfprintf_r+0x12d>
c003268f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032696:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032699:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003269f:	0f 85 97 0b 00 00    	jne    c003323c <_svfprintf_r+0x128c>
c00326a5:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00326ac:	0f 84 8a 0b 00 00    	je     c003323c <_svfprintf_r+0x128c>
c00326b2:	8b 45 14             	mov    0x14(%ebp),%eax
c00326b5:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c00326bc:	8b 00                	mov    (%eax),%eax
c00326be:	66 89 10             	mov    %dx,(%eax)
c00326c1:	8b 45 14             	mov    0x14(%ebp),%eax
c00326c4:	83 c0 04             	add    $0x4,%eax
c00326c7:	89 45 14             	mov    %eax,0x14(%ebp)
c00326ca:	e9 7c f9 ff ff       	jmp    c003204b <_svfprintf_r+0x9b>
c00326cf:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00326d6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326dd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326e3:	8b 45 14             	mov    0x14(%ebp),%eax
c00326e6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326e9:	0f 84 79 ff ff ff    	je     c0032668 <_svfprintf_r+0x6b8>
c00326ef:	8b 08                	mov    (%eax),%ecx
c00326f1:	83 c0 04             	add    $0x4,%eax
c00326f4:	89 45 14             	mov    %eax,0x14(%ebp)
c00326f7:	31 c0                	xor    %eax,%eax
c00326f9:	e9 92 fc ff ff       	jmp    c0032390 <_svfprintf_r+0x3e0>
c00326fe:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032705:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003270b:	8b 45 14             	mov    0x14(%ebp),%eax
c003270e:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032711:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032717:	0f 84 9f fd ff ff    	je     c00324bc <_svfprintf_r+0x50c>
c003271d:	8b 08                	mov    (%eax),%ecx
c003271f:	83 c0 04             	add    $0x4,%eax
c0032722:	89 45 14             	mov    %eax,0x14(%ebp)
c0032725:	85 c9                	test   %ecx,%ecx
c0032727:	0f 89 ad fd ff ff    	jns    c00324da <_svfprintf_r+0x52a>
c003272d:	f7 d9                	neg    %ecx
c003272f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032734:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c003273b:	b8 01 00 00 00       	mov    $0x1,%eax
c0032740:	e9 54 fc ff ff       	jmp    c0032399 <_svfprintf_r+0x3e9>
c0032745:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c003274c:	89 c8                	mov    %ecx,%eax
c003274e:	e9 8a f9 ff ff       	jmp    c00320dd <_svfprintf_r+0x12d>
c0032753:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003275a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032760:	8b 45 14             	mov    0x14(%ebp),%eax
c0032763:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032766:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003276c:	c7 85 18 ff ff ff 1f 	movl   $0xc003981f,-0xe8(%ebp)
c0032773:	98 03 c0 
c0032776:	75 71                	jne    c00327e9 <_svfprintf_r+0x839>
c0032778:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003277f:	74 68                	je     c00327e9 <_svfprintf_r+0x839>
c0032781:	0f b7 08             	movzwl (%eax),%ecx
c0032784:	83 c0 04             	add    $0x4,%eax
c0032787:	89 45 14             	mov    %eax,0x14(%ebp)
c003278a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032791:	b8 02 00 00 00       	mov    $0x2,%eax
c0032796:	0f 84 f4 fb ff ff    	je     c0032390 <_svfprintf_r+0x3e0>
c003279c:	85 c9                	test   %ecx,%ecx
c003279e:	0f 84 ec fb ff ff    	je     c0032390 <_svfprintf_r+0x3e0>
c00327a4:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c00327ab:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00327b2:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00327b9:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c00327bf:	e9 cc fb ff ff       	jmp    c0032390 <_svfprintf_r+0x3e0>
c00327c4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00327cb:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327d1:	8b 45 14             	mov    0x14(%ebp),%eax
c00327d4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327d7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00327dd:	c7 85 18 ff ff ff 0e 	movl   $0xc003980e,-0xe8(%ebp)
c00327e4:	98 03 c0 
c00327e7:	74 8f                	je     c0032778 <_svfprintf_r+0x7c8>
c00327e9:	8b 08                	mov    (%eax),%ecx
c00327eb:	83 c0 04             	add    $0x4,%eax
c00327ee:	89 45 14             	mov    %eax,0x14(%ebp)
c00327f1:	eb 97                	jmp    c003278a <_svfprintf_r+0x7da>
c00327f3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327f9:	8b 45 14             	mov    0x14(%ebp),%eax
c00327fc:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327ff:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032806:	8b 00                	mov    (%eax),%eax
c0032808:	88 45 80             	mov    %al,-0x80(%ebp)
c003280b:	8b 45 14             	mov    0x14(%ebp),%eax
c003280e:	83 c0 04             	add    $0x4,%eax
c0032811:	89 45 14             	mov    %eax,0x14(%ebp)
c0032814:	8d 45 80             	lea    -0x80(%ebp),%eax
c0032817:	31 db                	xor    %ebx,%ebx
c0032819:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032820:	00 00 00 
c0032823:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c003282a:	00 00 00 
c003282d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032834:	00 00 00 
c0032837:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003283e:	00 00 00 
c0032841:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032847:	e9 07 fa ff ff       	jmp    c0032253 <_svfprintf_r+0x2a3>
c003284c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032853:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003285a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032860:	8b 45 14             	mov    0x14(%ebp),%eax
c0032863:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032866:	0f 84 03 fb ff ff    	je     c003236f <_svfprintf_r+0x3bf>
c003286c:	8b 08                	mov    (%eax),%ecx
c003286e:	83 c0 04             	add    $0x4,%eax
c0032871:	89 45 14             	mov    %eax,0x14(%ebp)
c0032874:	b8 01 00 00 00       	mov    $0x1,%eax
c0032879:	e9 12 fb ff ff       	jmp    c0032390 <_svfprintf_r+0x3e0>
c003287e:	85 c0                	test   %eax,%eax
c0032880:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032886:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032889:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003288f:	0f 84 c3 f8 ff ff    	je     c0032158 <_svfprintf_r+0x1a8>
c0032895:	88 45 80             	mov    %al,-0x80(%ebp)
c0032898:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003289f:	e9 70 ff ff ff       	jmp    c0032814 <_svfprintf_r+0x864>
c00328a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00328a8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00328ae:	84 db                	test   %bl,%bl
c00328b0:	74 33                	je     c00328e5 <_svfprintf_r+0x935>
c00328b2:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c00328b8:	83 c1 01             	add    $0x1,%ecx
c00328bb:	89 07                	mov    %eax,(%edi)
c00328bd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328c3:	83 c7 08             	add    $0x8,%edi
c00328c6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c00328cd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328d3:	83 c0 01             	add    $0x1,%eax
c00328d6:	83 f8 07             	cmp    $0x7,%eax
c00328d9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328df:	0f 8f 7b 06 00 00    	jg     c0032f60 <_svfprintf_r+0xfb0>
c00328e5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c00328eb:	85 db                	test   %ebx,%ebx
c00328ed:	74 33                	je     c0032922 <_svfprintf_r+0x972>
c00328ef:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c00328f5:	83 c1 02             	add    $0x2,%ecx
c00328f8:	89 07                	mov    %eax,(%edi)
c00328fa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032900:	83 c7 08             	add    $0x8,%edi
c0032903:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c003290a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032910:	83 c0 01             	add    $0x1,%eax
c0032913:	83 f8 07             	cmp    $0x7,%eax
c0032916:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003291c:	0f 8f 06 06 00 00    	jg     c0032f28 <_svfprintf_r+0xf78>
c0032922:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0032929:	00 00 00 
c003292c:	0f 84 c6 03 00 00    	je     c0032cf8 <_svfprintf_r+0xd48>
c0032932:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0032938:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c003293e:	85 f6                	test   %esi,%esi
c0032940:	0f 8e d2 00 00 00    	jle    c0032a18 <_svfprintf_r+0xa68>
c0032946:	83 fe 10             	cmp    $0x10,%esi
c0032949:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003294f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032955:	7f 11                	jg     c0032968 <_svfprintf_r+0x9b8>
c0032957:	eb 6b                	jmp    c00329c4 <_svfprintf_r+0xa14>
c0032959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032960:	83 ee 10             	sub    $0x10,%esi
c0032963:	83 fe 10             	cmp    $0x10,%esi
c0032966:	7e 5c                	jle    c00329c4 <_svfprintf_r+0xa14>
c0032968:	83 c0 01             	add    $0x1,%eax
c003296b:	83 c1 10             	add    $0x10,%ecx
c003296e:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0032974:	83 c7 08             	add    $0x8,%edi
c0032977:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003297e:	83 f8 07             	cmp    $0x7,%eax
c0032981:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032987:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003298d:	7e d1                	jle    c0032960 <_svfprintf_r+0x9b0>
c003298f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032992:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032996:	89 44 24 04          	mov    %eax,0x4(%esp)
c003299a:	8b 45 08             	mov    0x8(%ebp),%eax
c003299d:	89 04 24             	mov    %eax,(%esp)
c00329a0:	e8 8b 41 00 00       	call   c0036b30 <__ssprint_r>
c00329a5:	85 c0                	test   %eax,%eax
c00329a7:	0f 85 d3 f7 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c00329ad:	83 ee 10             	sub    $0x10,%esi
c00329b0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00329b6:	83 fe 10             	cmp    $0x10,%esi
c00329b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329bf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329c2:	7f a4                	jg     c0032968 <_svfprintf_r+0x9b8>
c00329c4:	83 c0 01             	add    $0x1,%eax
c00329c7:	01 f1                	add    %esi,%ecx
c00329c9:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c00329cf:	83 c7 08             	add    $0x8,%edi
c00329d2:	89 77 fc             	mov    %esi,-0x4(%edi)
c00329d5:	83 f8 07             	cmp    $0x7,%eax
c00329d8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329de:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329e4:	7e 32                	jle    c0032a18 <_svfprintf_r+0xa68>
c00329e6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00329ec:	89 44 24 08          	mov    %eax,0x8(%esp)
c00329f0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00329f3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00329f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00329fa:	89 04 24             	mov    %eax,(%esp)
c00329fd:	e8 2e 41 00 00       	call   c0036b30 <__ssprint_r>
c0032a02:	85 c0                	test   %eax,%eax
c0032a04:	0f 85 76 f7 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0032a0a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a10:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a13:	90                   	nop
c0032a14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032a18:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c0032a1f:	01 00 00 
c0032a22:	0f 85 50 01 00 00    	jne    c0032b78 <_svfprintf_r+0xbc8>
c0032a28:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032a2e:	89 07                	mov    %eax,(%edi)
c0032a30:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032a36:	01 c1                	add    %eax,%ecx
c0032a38:	89 47 04             	mov    %eax,0x4(%edi)
c0032a3b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a41:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a47:	83 c0 01             	add    $0x1,%eax
c0032a4a:	83 f8 07             	cmp    $0x7,%eax
c0032a4d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a53:	0f 8f 6a 04 00 00    	jg     c0032ec3 <_svfprintf_r+0xf13>
c0032a59:	83 c7 08             	add    $0x8,%edi
c0032a5c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032a63:	0f 84 d7 00 00 00    	je     c0032b40 <_svfprintf_r+0xb90>
c0032a69:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a6f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032a75:	85 f6                	test   %esi,%esi
c0032a77:	0f 8e c3 00 00 00    	jle    c0032b40 <_svfprintf_r+0xb90>
c0032a7d:	83 fe 10             	cmp    $0x10,%esi
c0032a80:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a86:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032a8c:	7f 0a                	jg     c0032a98 <_svfprintf_r+0xae8>
c0032a8e:	eb 64                	jmp    c0032af4 <_svfprintf_r+0xb44>
c0032a90:	83 ee 10             	sub    $0x10,%esi
c0032a93:	83 fe 10             	cmp    $0x10,%esi
c0032a96:	7e 5c                	jle    c0032af4 <_svfprintf_r+0xb44>
c0032a98:	83 c0 01             	add    $0x1,%eax
c0032a9b:	83 c1 10             	add    $0x10,%ecx
c0032a9e:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c0032aa4:	83 c7 08             	add    $0x8,%edi
c0032aa7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032aae:	83 f8 07             	cmp    $0x7,%eax
c0032ab1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ab7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032abd:	7e d1                	jle    c0032a90 <_svfprintf_r+0xae0>
c0032abf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ac2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032ac6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032aca:	8b 45 08             	mov    0x8(%ebp),%eax
c0032acd:	89 04 24             	mov    %eax,(%esp)
c0032ad0:	e8 5b 40 00 00       	call   c0036b30 <__ssprint_r>
c0032ad5:	85 c0                	test   %eax,%eax
c0032ad7:	0f 85 a3 f6 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0032add:	83 ee 10             	sub    $0x10,%esi
c0032ae0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ae6:	83 fe 10             	cmp    $0x10,%esi
c0032ae9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032aef:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032af2:	7f a4                	jg     c0032a98 <_svfprintf_r+0xae8>
c0032af4:	83 c0 01             	add    $0x1,%eax
c0032af7:	01 f1                	add    %esi,%ecx
c0032af9:	83 f8 07             	cmp    $0x7,%eax
c0032afc:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c0032b02:	89 77 04             	mov    %esi,0x4(%edi)
c0032b05:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b0b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b11:	7e 2d                	jle    c0032b40 <_svfprintf_r+0xb90>
c0032b13:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032b19:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032b1d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032b20:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032b24:	8b 45 08             	mov    0x8(%ebp),%eax
c0032b27:	89 04 24             	mov    %eax,(%esp)
c0032b2a:	e8 01 40 00 00       	call   c0036b30 <__ssprint_r>
c0032b2f:	85 c0                	test   %eax,%eax
c0032b31:	0f 85 49 f6 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0032b37:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b3d:	8d 76 00             	lea    0x0(%esi),%esi
c0032b40:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032b46:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032b4c:	39 c2                	cmp    %eax,%edx
c0032b4e:	0f 4d c2             	cmovge %edx,%eax
c0032b51:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032b57:	85 c9                	test   %ecx,%ecx
c0032b59:	0f 85 99 03 00 00    	jne    c0032ef8 <_svfprintf_r+0xf48>
c0032b5f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032b66:	00 00 00 
c0032b69:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b6c:	e9 da f4 ff ff       	jmp    c003204b <_svfprintf_r+0x9b>
c0032b71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032b78:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032b7f:	0f 8e 5b 02 00 00    	jle    c0032de0 <_svfprintf_r+0xe30>
c0032b85:	d9 ee                	fldz   
c0032b87:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032b8d:	df e9                	fucomip %st(1),%st
c0032b8f:	dd d8                	fstp   %st(0)
c0032b91:	0f 8a 59 04 00 00    	jp     c0032ff0 <_svfprintf_r+0x1040>
c0032b97:	0f 85 53 04 00 00    	jne    c0032ff0 <_svfprintf_r+0x1040>
c0032b9d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ba3:	83 c1 01             	add    $0x1,%ecx
c0032ba6:	83 c7 08             	add    $0x8,%edi
c0032ba9:	c7 47 f8 37 98 03 c0 	movl   $0xc0039837,-0x8(%edi)
c0032bb0:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032bb7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bbd:	83 c0 01             	add    $0x1,%eax
c0032bc0:	83 f8 07             	cmp    $0x7,%eax
c0032bc3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032bc9:	0f 8f 63 09 00 00    	jg     c0033532 <_svfprintf_r+0x1582>
c0032bcf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032bd5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032bdb:	7c 0d                	jl     c0032bea <_svfprintf_r+0xc3a>
c0032bdd:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032be4:	0f 84 72 fe ff ff    	je     c0032a5c <_svfprintf_r+0xaac>
c0032bea:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032bf0:	83 c7 08             	add    $0x8,%edi
c0032bf3:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032bf6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032bfc:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032bff:	01 c1                	add    %eax,%ecx
c0032c01:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c07:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c0d:	83 c0 01             	add    $0x1,%eax
c0032c10:	83 f8 07             	cmp    $0x7,%eax
c0032c13:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c19:	0f 8f dc 0b 00 00    	jg     c00337fb <_svfprintf_r+0x184b>
c0032c1f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032c25:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032c28:	85 f6                	test   %esi,%esi
c0032c2a:	0f 8e 2c fe ff ff    	jle    c0032a5c <_svfprintf_r+0xaac>
c0032c30:	83 fe 10             	cmp    $0x10,%esi
c0032c33:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c39:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032c3f:	7f 13                	jg     c0032c54 <_svfprintf_r+0xca4>
c0032c41:	e9 e6 05 00 00       	jmp    c003322c <_svfprintf_r+0x127c>
c0032c46:	66 90                	xchg   %ax,%ax
c0032c48:	83 ee 10             	sub    $0x10,%esi
c0032c4b:	83 fe 10             	cmp    $0x10,%esi
c0032c4e:	0f 8e d8 05 00 00    	jle    c003322c <_svfprintf_r+0x127c>
c0032c54:	83 c0 01             	add    $0x1,%eax
c0032c57:	83 c1 10             	add    $0x10,%ecx
c0032c5a:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0032c60:	83 c7 08             	add    $0x8,%edi
c0032c63:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032c6a:	83 f8 07             	cmp    $0x7,%eax
c0032c6d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c73:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c79:	7e cd                	jle    c0032c48 <_svfprintf_r+0xc98>
c0032c7b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c7e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032c82:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032c86:	8b 45 08             	mov    0x8(%ebp),%eax
c0032c89:	89 04 24             	mov    %eax,(%esp)
c0032c8c:	e8 9f 3e 00 00       	call   c0036b30 <__ssprint_r>
c0032c91:	85 c0                	test   %eax,%eax
c0032c93:	0f 85 e7 f4 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0032c99:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032c9f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ca2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ca8:	eb 9e                	jmp    c0032c48 <_svfprintf_r+0xc98>
c0032caa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032cb0:	84 c0                	test   %al,%al
c0032cb2:	75 2c                	jne    c0032ce0 <_svfprintf_r+0xd30>
c0032cb4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032cbb:	74 23                	je     c0032ce0 <_svfprintf_r+0xd30>
c0032cbd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032cc3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032cc7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032ccd:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032cd0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032cd6:	e9 2d f7 ff ff       	jmp    c0032408 <_svfprintf_r+0x458>
c0032cdb:	90                   	nop
c0032cdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032ce0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032ce3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032cea:	00 00 00 
c0032ced:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032cf3:	e9 10 f7 ff ff       	jmp    c0032408 <_svfprintf_r+0x458>
c0032cf8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032cfe:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032d04:	85 f6                	test   %esi,%esi
c0032d06:	0f 8e 26 fc ff ff    	jle    c0032932 <_svfprintf_r+0x982>
c0032d0c:	83 fe 10             	cmp    $0x10,%esi
c0032d0f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d15:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032d1b:	7f 0b                	jg     c0032d28 <_svfprintf_r+0xd78>
c0032d1d:	eb 65                	jmp    c0032d84 <_svfprintf_r+0xdd4>
c0032d1f:	90                   	nop
c0032d20:	83 ee 10             	sub    $0x10,%esi
c0032d23:	83 fe 10             	cmp    $0x10,%esi
c0032d26:	7e 5c                	jle    c0032d84 <_svfprintf_r+0xdd4>
c0032d28:	83 c0 01             	add    $0x1,%eax
c0032d2b:	83 c1 10             	add    $0x10,%ecx
c0032d2e:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0032d34:	83 c7 08             	add    $0x8,%edi
c0032d37:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032d3e:	83 f8 07             	cmp    $0x7,%eax
c0032d41:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d47:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d4d:	7e d1                	jle    c0032d20 <_svfprintf_r+0xd70>
c0032d4f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d52:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d56:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d5a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d5d:	89 04 24             	mov    %eax,(%esp)
c0032d60:	e8 cb 3d 00 00       	call   c0036b30 <__ssprint_r>
c0032d65:	85 c0                	test   %eax,%eax
c0032d67:	0f 85 13 f4 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0032d6d:	83 ee 10             	sub    $0x10,%esi
c0032d70:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d76:	83 fe 10             	cmp    $0x10,%esi
c0032d79:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d7f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d82:	7f a4                	jg     c0032d28 <_svfprintf_r+0xd78>
c0032d84:	83 c0 01             	add    $0x1,%eax
c0032d87:	01 f1                	add    %esi,%ecx
c0032d89:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0032d8f:	83 c7 08             	add    $0x8,%edi
c0032d92:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032d95:	83 f8 07             	cmp    $0x7,%eax
c0032d98:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d9e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032da4:	0f 8e 88 fb ff ff    	jle    c0032932 <_svfprintf_r+0x982>
c0032daa:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032db0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032db4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032db7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032dbb:	8b 45 08             	mov    0x8(%ebp),%eax
c0032dbe:	89 04 24             	mov    %eax,(%esp)
c0032dc1:	e8 6a 3d 00 00       	call   c0036b30 <__ssprint_r>
c0032dc6:	85 c0                	test   %eax,%eax
c0032dc8:	0f 85 b2 f3 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0032dce:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032dd4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032dd7:	e9 56 fb ff ff       	jmp    c0032932 <_svfprintf_r+0x982>
c0032ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032de0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032de7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032ded:	0f 8e df 05 00 00    	jle    c00333d2 <_svfprintf_r+0x1422>
c0032df3:	89 07                	mov    %eax,(%edi)
c0032df5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032dfb:	8d 51 01             	lea    0x1(%ecx),%edx
c0032dfe:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032e05:	83 c7 08             	add    $0x8,%edi
c0032e08:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e0e:	83 c0 01             	add    $0x1,%eax
c0032e11:	83 f8 07             	cmp    $0x7,%eax
c0032e14:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e1a:	0f 8f 59 06 00 00    	jg     c0033479 <_svfprintf_r+0x14c9>
c0032e20:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032e26:	83 c0 01             	add    $0x1,%eax
c0032e29:	83 c7 08             	add    $0x8,%edi
c0032e2c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e32:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032e35:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032e3b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032e3e:	01 da                	add    %ebx,%edx
c0032e40:	83 f8 07             	cmp    $0x7,%eax
c0032e43:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e49:	0f 8f f2 05 00 00    	jg     c0033441 <_svfprintf_r+0x1491>
c0032e4f:	d9 ee                	fldz   
c0032e51:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032e57:	df e9                	fucomip %st(1),%st
c0032e59:	dd d8                	fstp   %st(0)
c0032e5b:	7a 06                	jp     c0032e63 <_svfprintf_r+0xeb3>
c0032e5d:	0f 84 33 03 00 00    	je     c0033196 <_svfprintf_r+0x11e6>
c0032e63:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032e69:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032e6f:	83 c1 01             	add    $0x1,%ecx
c0032e72:	89 0f                	mov    %ecx,(%edi)
c0032e74:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032e77:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032e7a:	01 ca                	add    %ecx,%edx
c0032e7c:	83 c0 01             	add    $0x1,%eax
c0032e7f:	83 f8 07             	cmp    $0x7,%eax
c0032e82:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e88:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e8e:	0f 8f 75 05 00 00    	jg     c0033409 <_svfprintf_r+0x1459>
c0032e94:	83 c7 08             	add    $0x8,%edi
c0032e97:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032e9d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032ea3:	89 0f                	mov    %ecx,(%edi)
c0032ea5:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032ea8:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032eab:	83 c0 01             	add    $0x1,%eax
c0032eae:	83 f8 07             	cmp    $0x7,%eax
c0032eb1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032eb7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ebd:	0f 8e 96 fb ff ff    	jle    c0032a59 <_svfprintf_r+0xaa9>
c0032ec3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ec9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ecd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ed0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ed4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ed7:	89 04 24             	mov    %eax,(%esp)
c0032eda:	e8 51 3c 00 00       	call   c0036b30 <__ssprint_r>
c0032edf:	85 c0                	test   %eax,%eax
c0032ee1:	0f 85 99 f2 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0032ee7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032eed:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ef0:	e9 67 fb ff ff       	jmp    c0032a5c <_svfprintf_r+0xaac>
c0032ef5:	8d 76 00             	lea    0x0(%esi),%esi
c0032ef8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032efe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f02:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f05:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f09:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f0c:	89 04 24             	mov    %eax,(%esp)
c0032f0f:	e8 1c 3c 00 00       	call   c0036b30 <__ssprint_r>
c0032f14:	85 c0                	test   %eax,%eax
c0032f16:	0f 84 43 fc ff ff    	je     c0032b5f <_svfprintf_r+0xbaf>
c0032f1c:	e9 5f f2 ff ff       	jmp    c0032180 <_svfprintf_r+0x1d0>
c0032f21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032f28:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f2e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f32:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f35:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f39:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f3c:	89 04 24             	mov    %eax,(%esp)
c0032f3f:	e8 ec 3b 00 00       	call   c0036b30 <__ssprint_r>
c0032f44:	85 c0                	test   %eax,%eax
c0032f46:	0f 85 34 f2 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0032f4c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f52:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f55:	e9 c8 f9 ff ff       	jmp    c0032922 <_svfprintf_r+0x972>
c0032f5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f60:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f66:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f6a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f6d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f71:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f74:	89 04 24             	mov    %eax,(%esp)
c0032f77:	e8 b4 3b 00 00       	call   c0036b30 <__ssprint_r>
c0032f7c:	85 c0                	test   %eax,%eax
c0032f7e:	0f 85 fc f1 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0032f84:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f8a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f8d:	e9 53 f9 ff ff       	jmp    c00328e5 <_svfprintf_r+0x935>
c0032f92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f98:	89 c2                	mov    %eax,%edx
c0032f9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fa0:	89 c8                	mov    %ecx,%eax
c0032fa2:	83 ea 01             	sub    $0x1,%edx
c0032fa5:	83 e0 07             	and    $0x7,%eax
c0032fa8:	c1 e9 03             	shr    $0x3,%ecx
c0032fab:	83 c0 30             	add    $0x30,%eax
c0032fae:	85 c9                	test   %ecx,%ecx
c0032fb0:	88 02                	mov    %al,(%edx)
c0032fb2:	75 ec                	jne    c0032fa0 <_svfprintf_r+0xff0>
c0032fb4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032fbb:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0032fc1:	0f 84 5b 01 00 00    	je     c0033122 <_svfprintf_r+0x1172>
c0032fc7:	3c 30                	cmp    $0x30,%al
c0032fc9:	74 0b                	je     c0032fd6 <_svfprintf_r+0x1026>
c0032fcb:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0032fd2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0032fd6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032fd9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0032fdf:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032fe5:	e9 1e f4 ff ff       	jmp    c0032408 <_svfprintf_r+0x458>
c0032fea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032ff0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0032ff6:	85 db                	test   %ebx,%ebx
c0032ff8:	0f 8e 66 05 00 00    	jle    c0033564 <_svfprintf_r+0x15b4>
c0032ffe:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033004:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c003300a:	01 d0                	add    %edx,%eax
c003300c:	89 c3                	mov    %eax,%ebx
c003300e:	29 d3                	sub    %edx,%ebx
c0033010:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033016:	89 d0                	mov    %edx,%eax
c0033018:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c003301e:	39 d3                	cmp    %edx,%ebx
c0033020:	0f 4f da             	cmovg  %edx,%ebx
c0033023:	85 db                	test   %ebx,%ebx
c0033025:	7e 28                	jle    c003304f <_svfprintf_r+0x109f>
c0033027:	89 07                	mov    %eax,(%edi)
c0033029:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003302f:	01 d9                	add    %ebx,%ecx
c0033031:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033034:	83 c7 08             	add    $0x8,%edi
c0033037:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003303d:	83 c0 01             	add    $0x1,%eax
c0033040:	83 f8 07             	cmp    $0x7,%eax
c0033043:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033049:	0f 8f 58 09 00 00    	jg     c00339a7 <_svfprintf_r+0x19f7>
c003304f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033055:	31 c0                	xor    %eax,%eax
c0033057:	85 db                	test   %ebx,%ebx
c0033059:	0f 49 c3             	cmovns %ebx,%eax
c003305c:	29 c6                	sub    %eax,%esi
c003305e:	85 f6                	test   %esi,%esi
c0033060:	0f 8e 40 02 00 00    	jle    c00332a6 <_svfprintf_r+0x12f6>
c0033066:	83 fe 10             	cmp    $0x10,%esi
c0033069:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003306f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033075:	7f 15                	jg     c003308c <_svfprintf_r+0x10dc>
c0033077:	e9 db 01 00 00       	jmp    c0033257 <_svfprintf_r+0x12a7>
c003307c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033080:	83 ee 10             	sub    $0x10,%esi
c0033083:	83 fe 10             	cmp    $0x10,%esi
c0033086:	0f 8e cb 01 00 00    	jle    c0033257 <_svfprintf_r+0x12a7>
c003308c:	83 c0 01             	add    $0x1,%eax
c003308f:	83 c1 10             	add    $0x10,%ecx
c0033092:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033098:	83 c7 08             	add    $0x8,%edi
c003309b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00330a2:	83 f8 07             	cmp    $0x7,%eax
c00330a5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330ab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330b1:	7e cd                	jle    c0033080 <_svfprintf_r+0x10d0>
c00330b3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00330b6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00330ba:	89 44 24 04          	mov    %eax,0x4(%esp)
c00330be:	8b 45 08             	mov    0x8(%ebp),%eax
c00330c1:	89 04 24             	mov    %eax,(%esp)
c00330c4:	e8 67 3a 00 00       	call   c0036b30 <__ssprint_r>
c00330c9:	85 c0                	test   %eax,%eax
c00330cb:	0f 85 af f0 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c00330d1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00330d7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00330da:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330e0:	eb 9e                	jmp    c0033080 <_svfprintf_r+0x10d0>
c00330e2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00330e5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c00330ea:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00330f0:	89 c7                	mov    %eax,%edi
c00330f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00330f8:	89 c8                	mov    %ecx,%eax
c00330fa:	83 ef 01             	sub    $0x1,%edi
c00330fd:	f7 e6                	mul    %esi
c00330ff:	c1 ea 03             	shr    $0x3,%edx
c0033102:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033105:	01 c0                	add    %eax,%eax
c0033107:	29 c1                	sub    %eax,%ecx
c0033109:	83 c1 30             	add    $0x30,%ecx
c003310c:	85 d2                	test   %edx,%edx
c003310e:	88 0f                	mov    %cl,(%edi)
c0033110:	89 d1                	mov    %edx,%ecx
c0033112:	75 e4                	jne    c00330f8 <_svfprintf_r+0x1148>
c0033114:	89 fa                	mov    %edi,%edx
c0033116:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c003311c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0033122:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033125:	29 d0                	sub    %edx,%eax
c0033127:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003312d:	e9 d6 f2 ff ff       	jmp    c0032408 <_svfprintf_r+0x458>
c0033132:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033138:	83 f9 09             	cmp    $0x9,%ecx
c003313b:	77 a5                	ja     c00330e2 <_svfprintf_r+0x1132>
c003313d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033143:	83 c1 30             	add    $0x30,%ecx
c0033146:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033149:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003314f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033152:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033158:	e9 ab f2 ff ff       	jmp    c0032408 <_svfprintf_r+0x458>
c003315d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033163:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033167:	8b 45 0c             	mov    0xc(%ebp),%eax
c003316a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003316e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033171:	89 04 24             	mov    %eax,(%esp)
c0033174:	e8 b7 39 00 00       	call   c0036b30 <__ssprint_r>
c0033179:	85 c0                	test   %eax,%eax
c003317b:	0f 85 ff ef ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0033181:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033188:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003318b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033191:	e9 18 f7 ff ff       	jmp    c00328ae <_svfprintf_r+0x8fe>
c0033196:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003319c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003319f:	85 f6                	test   %esi,%esi
c00331a1:	0f 8e f0 fc ff ff    	jle    c0032e97 <_svfprintf_r+0xee7>
c00331a7:	83 fe 10             	cmp    $0x10,%esi
c00331aa:	7e 70                	jle    c003321c <_svfprintf_r+0x126c>
c00331ac:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00331b2:	eb 0c                	jmp    c00331c0 <_svfprintf_r+0x1210>
c00331b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00331b8:	83 ee 10             	sub    $0x10,%esi
c00331bb:	83 fe 10             	cmp    $0x10,%esi
c00331be:	7e 5c                	jle    c003321c <_svfprintf_r+0x126c>
c00331c0:	83 c0 01             	add    $0x1,%eax
c00331c3:	83 c2 10             	add    $0x10,%edx
c00331c6:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c00331cc:	83 c7 08             	add    $0x8,%edi
c00331cf:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00331d6:	83 f8 07             	cmp    $0x7,%eax
c00331d9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00331df:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00331e5:	7e d1                	jle    c00331b8 <_svfprintf_r+0x1208>
c00331e7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00331ea:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00331ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c00331f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00331f5:	89 04 24             	mov    %eax,(%esp)
c00331f8:	e8 33 39 00 00       	call   c0036b30 <__ssprint_r>
c00331fd:	85 c0                	test   %eax,%eax
c00331ff:	0f 85 7b ef ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0033205:	83 ee 10             	sub    $0x10,%esi
c0033208:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003320e:	83 fe 10             	cmp    $0x10,%esi
c0033211:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033217:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003321a:	7f a4                	jg     c00331c0 <_svfprintf_r+0x1210>
c003321c:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033222:	01 f2                	add    %esi,%edx
c0033224:	89 77 04             	mov    %esi,0x4(%edi)
c0033227:	e9 50 fc ff ff       	jmp    c0032e7c <_svfprintf_r+0xecc>
c003322c:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033232:	01 f1                	add    %esi,%ecx
c0033234:	89 77 04             	mov    %esi,0x4(%edi)
c0033237:	e9 6f fc ff ff       	jmp    c0032eab <_svfprintf_r+0xefb>
c003323c:	8b 45 14             	mov    0x14(%ebp),%eax
c003323f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033245:	8b 00                	mov    (%eax),%eax
c0033247:	89 10                	mov    %edx,(%eax)
c0033249:	8b 45 14             	mov    0x14(%ebp),%eax
c003324c:	83 c0 04             	add    $0x4,%eax
c003324f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033252:	e9 f4 ed ff ff       	jmp    c003204b <_svfprintf_r+0x9b>
c0033257:	83 c0 01             	add    $0x1,%eax
c003325a:	01 f1                	add    %esi,%ecx
c003325c:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033262:	83 c7 08             	add    $0x8,%edi
c0033265:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033268:	83 f8 07             	cmp    $0x7,%eax
c003326b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033271:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033277:	7e 2d                	jle    c00332a6 <_svfprintf_r+0x12f6>
c0033279:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003327f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033283:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033286:	89 44 24 04          	mov    %eax,0x4(%esp)
c003328a:	8b 45 08             	mov    0x8(%ebp),%eax
c003328d:	89 04 24             	mov    %eax,(%esp)
c0033290:	e8 9b 38 00 00       	call   c0036b30 <__ssprint_r>
c0033295:	85 c0                	test   %eax,%eax
c0033297:	0f 85 e3 ee ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c003329d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00332a3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00332a6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00332ac:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c00332b2:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c00332b8:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c00332be:	89 c6                	mov    %eax,%esi
c00332c0:	7c 0d                	jl     c00332cf <_svfprintf_r+0x131f>
c00332c2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00332c9:	0f 84 5e 05 00 00    	je     c003382d <_svfprintf_r+0x187d>
c00332cf:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00332d5:	89 07                	mov    %eax,(%edi)
c00332d7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00332dd:	01 c1                	add    %eax,%ecx
c00332df:	89 47 04             	mov    %eax,0x4(%edi)
c00332e2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332e8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332ee:	83 c0 01             	add    $0x1,%eax
c00332f1:	83 f8 07             	cmp    $0x7,%eax
c00332f4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332fa:	0f 8f d9 06 00 00    	jg     c00339d9 <_svfprintf_r+0x1a29>
c0033300:	83 c7 08             	add    $0x8,%edi
c0033303:	89 d0                	mov    %edx,%eax
c0033305:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c003330b:	89 f2                	mov    %esi,%edx
c003330d:	29 f3                	sub    %esi,%ebx
c003330f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033315:	29 c6                	sub    %eax,%esi
c0033317:	39 de                	cmp    %ebx,%esi
c0033319:	0f 4e de             	cmovle %esi,%ebx
c003331c:	85 db                	test   %ebx,%ebx
c003331e:	7e 29                	jle    c0033349 <_svfprintf_r+0x1399>
c0033320:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033326:	01 d9                	add    %ebx,%ecx
c0033328:	83 c7 08             	add    $0x8,%edi
c003332b:	89 57 f8             	mov    %edx,-0x8(%edi)
c003332e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033331:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033337:	83 c0 01             	add    $0x1,%eax
c003333a:	83 f8 07             	cmp    $0x7,%eax
c003333d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033343:	0f 8f c8 06 00 00    	jg     c0033a11 <_svfprintf_r+0x1a61>
c0033349:	31 c0                	xor    %eax,%eax
c003334b:	85 db                	test   %ebx,%ebx
c003334d:	0f 49 c3             	cmovns %ebx,%eax
c0033350:	29 c6                	sub    %eax,%esi
c0033352:	85 f6                	test   %esi,%esi
c0033354:	0f 8e 02 f7 ff ff    	jle    c0032a5c <_svfprintf_r+0xaac>
c003335a:	83 fe 10             	cmp    $0x10,%esi
c003335d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033363:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033369:	7f 11                	jg     c003337c <_svfprintf_r+0x13cc>
c003336b:	e9 bc fe ff ff       	jmp    c003322c <_svfprintf_r+0x127c>
c0033370:	83 ee 10             	sub    $0x10,%esi
c0033373:	83 fe 10             	cmp    $0x10,%esi
c0033376:	0f 8e b0 fe ff ff    	jle    c003322c <_svfprintf_r+0x127c>
c003337c:	83 c0 01             	add    $0x1,%eax
c003337f:	83 c1 10             	add    $0x10,%ecx
c0033382:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033388:	83 c7 08             	add    $0x8,%edi
c003338b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033392:	83 f8 07             	cmp    $0x7,%eax
c0033395:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003339b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333a1:	7e cd                	jle    c0033370 <_svfprintf_r+0x13c0>
c00333a3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333a6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00333aa:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333ae:	8b 45 08             	mov    0x8(%ebp),%eax
c00333b1:	89 04 24             	mov    %eax,(%esp)
c00333b4:	e8 77 37 00 00       	call   c0036b30 <__ssprint_r>
c00333b9:	85 c0                	test   %eax,%eax
c00333bb:	0f 85 bf ed ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c00333c1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00333c7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00333ca:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333d0:	eb 9e                	jmp    c0033370 <_svfprintf_r+0x13c0>
c00333d2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00333d9:	0f 85 14 fa ff ff    	jne    c0032df3 <_svfprintf_r+0xe43>
c00333df:	89 07                	mov    %eax,(%edi)
c00333e1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333e7:	8d 51 01             	lea    0x1(%ecx),%edx
c00333ea:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c00333f1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00333f7:	83 c0 01             	add    $0x1,%eax
c00333fa:	83 f8 07             	cmp    $0x7,%eax
c00333fd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033403:	0f 8e 8b fa ff ff    	jle    c0032e94 <_svfprintf_r+0xee4>
c0033409:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003340f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033413:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033416:	89 44 24 04          	mov    %eax,0x4(%esp)
c003341a:	8b 45 08             	mov    0x8(%ebp),%eax
c003341d:	89 04 24             	mov    %eax,(%esp)
c0033420:	e8 0b 37 00 00       	call   c0036b30 <__ssprint_r>
c0033425:	85 c0                	test   %eax,%eax
c0033427:	0f 85 53 ed ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c003342d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033433:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033436:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003343c:	e9 56 fa ff ff       	jmp    c0032e97 <_svfprintf_r+0xee7>
c0033441:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033447:	89 44 24 08          	mov    %eax,0x8(%esp)
c003344b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003344e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033452:	8b 45 08             	mov    0x8(%ebp),%eax
c0033455:	89 04 24             	mov    %eax,(%esp)
c0033458:	e8 d3 36 00 00       	call   c0036b30 <__ssprint_r>
c003345d:	85 c0                	test   %eax,%eax
c003345f:	0f 85 1b ed ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0033465:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003346b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003346e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033474:	e9 d6 f9 ff ff       	jmp    c0032e4f <_svfprintf_r+0xe9f>
c0033479:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003347f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033483:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033486:	89 44 24 04          	mov    %eax,0x4(%esp)
c003348a:	8b 45 08             	mov    0x8(%ebp),%eax
c003348d:	89 04 24             	mov    %eax,(%esp)
c0033490:	e8 9b 36 00 00       	call   c0036b30 <__ssprint_r>
c0033495:	85 c0                	test   %eax,%eax
c0033497:	0f 85 e3 ec ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c003349d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00334a3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00334a6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334ac:	e9 6f f9 ff ff       	jmp    c0032e20 <_svfprintf_r+0xe70>
c00334b1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00334b7:	dd 1c 24             	fstpl  (%esp)
c00334ba:	e8 11 35 00 00       	call   c00369d0 <__fpclassifyd>
c00334bf:	85 c0                	test   %eax,%eax
c00334c1:	0f 85 a3 01 00 00    	jne    c003366a <_svfprintf_r+0x16ba>
c00334c7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00334ce:	ba 06 98 03 c0       	mov    $0xc0039806,%edx
c00334d3:	b8 0a 98 03 c0       	mov    $0xc003980a,%eax
c00334d8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00334df:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00334e6:	00 00 00 
c00334e9:	0f 4e c2             	cmovle %edx,%eax
c00334ec:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00334f2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c00334f9:	ff ff ff 
c00334fc:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0033503:	00 00 00 
c0033506:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003350d:	00 00 00 
c0033510:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033517:	00 00 00 
c003351a:	e9 29 ed ff ff       	jmp    c0032248 <_svfprintf_r+0x298>
c003351f:	dd 00                	fldl   (%eax)
c0033521:	83 c0 08             	add    $0x8,%eax
c0033524:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c003352a:	89 45 14             	mov    %eax,0x14(%ebp)
c003352d:	e9 e6 ef ff ff       	jmp    c0032518 <_svfprintf_r+0x568>
c0033532:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033538:	89 44 24 08          	mov    %eax,0x8(%esp)
c003353c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003353f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033543:	8b 45 08             	mov    0x8(%ebp),%eax
c0033546:	89 04 24             	mov    %eax,(%esp)
c0033549:	e8 e2 35 00 00       	call   c0036b30 <__ssprint_r>
c003354e:	85 c0                	test   %eax,%eax
c0033550:	0f 85 2a ec ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0033556:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003355c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003355f:	e9 6b f6 ff ff       	jmp    c0032bcf <_svfprintf_r+0xc1f>
c0033564:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003356a:	83 c1 01             	add    $0x1,%ecx
c003356d:	83 c7 08             	add    $0x8,%edi
c0033570:	c7 47 f8 37 98 03 c0 	movl   $0xc0039837,-0x8(%edi)
c0033577:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003357e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033584:	83 c0 01             	add    $0x1,%eax
c0033587:	83 f8 07             	cmp    $0x7,%eax
c003358a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033590:	0f 8f ef 02 00 00    	jg     c0033885 <_svfprintf_r+0x18d5>
c0033596:	85 db                	test   %ebx,%ebx
c0033598:	75 17                	jne    c00335b1 <_svfprintf_r+0x1601>
c003359a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c00335a0:	85 d2                	test   %edx,%edx
c00335a2:	75 0d                	jne    c00335b1 <_svfprintf_r+0x1601>
c00335a4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00335ab:	0f 84 ab f4 ff ff    	je     c0032a5c <_svfprintf_r+0xaac>
c00335b1:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00335b7:	83 c7 08             	add    $0x8,%edi
c00335ba:	89 47 f8             	mov    %eax,-0x8(%edi)
c00335bd:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00335c3:	89 47 fc             	mov    %eax,-0x4(%edi)
c00335c6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c00335c9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335cf:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335d5:	83 c0 01             	add    $0x1,%eax
c00335d8:	83 f8 07             	cmp    $0x7,%eax
c00335db:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335e1:	0f 8f 60 03 00 00    	jg     c0033947 <_svfprintf_r+0x1997>
c00335e7:	f7 db                	neg    %ebx
c00335e9:	85 db                	test   %ebx,%ebx
c00335eb:	0f 8e 21 03 00 00    	jle    c0033912 <_svfprintf_r+0x1962>
c00335f1:	83 fb 10             	cmp    $0x10,%ebx
c00335f4:	0f 8e c3 02 00 00    	jle    c00338bd <_svfprintf_r+0x190d>
c00335fa:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0033600:	eb 12                	jmp    c0033614 <_svfprintf_r+0x1664>
c0033602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033608:	83 eb 10             	sub    $0x10,%ebx
c003360b:	83 fb 10             	cmp    $0x10,%ebx
c003360e:	0f 8e a9 02 00 00    	jle    c00338bd <_svfprintf_r+0x190d>
c0033614:	83 c0 01             	add    $0x1,%eax
c0033617:	83 c2 10             	add    $0x10,%edx
c003361a:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033620:	83 c7 08             	add    $0x8,%edi
c0033623:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003362a:	83 f8 07             	cmp    $0x7,%eax
c003362d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033633:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033639:	7e cd                	jle    c0033608 <_svfprintf_r+0x1658>
c003363b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003363e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033642:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033646:	8b 45 08             	mov    0x8(%ebp),%eax
c0033649:	89 04 24             	mov    %eax,(%esp)
c003364c:	e8 df 34 00 00       	call   c0036b30 <__ssprint_r>
c0033651:	85 c0                	test   %eax,%eax
c0033653:	0f 85 27 eb ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0033659:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003365f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033662:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033668:	eb 9e                	jmp    c0033608 <_svfprintf_r+0x1658>
c003366a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033670:	83 e3 df             	and    $0xffffffdf,%ebx
c0033673:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003367a:	0f 84 05 03 00 00    	je     c0033985 <_svfprintf_r+0x19d5>
c0033680:	83 fb 47             	cmp    $0x47,%ebx
c0033683:	75 16                	jne    c003369b <_svfprintf_r+0x16eb>
c0033685:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003368b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033690:	85 d2                	test   %edx,%edx
c0033692:	0f 45 c2             	cmovne %edx,%eax
c0033695:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c003369b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00336a1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00336a7:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c00336ad:	80 cc 01             	or     $0x1,%ah
c00336b0:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c00336b6:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00336bc:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c00336c3:	85 c0                	test   %eax,%eax
c00336c5:	0f 88 ba 05 00 00    	js     c0033c85 <_svfprintf_r+0x1cd5>
c00336cb:	83 fb 46             	cmp    $0x46,%ebx
c00336ce:	0f 94 c0             	sete   %al
c00336d1:	89 c6                	mov    %eax,%esi
c00336d3:	0f 84 d4 03 00 00    	je     c0033aad <_svfprintf_r+0x1afd>
c00336d9:	83 fb 45             	cmp    $0x45,%ebx
c00336dc:	0f 85 99 05 00 00    	jne    c0033c7b <_svfprintf_r+0x1ccb>
c00336e2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00336e8:	dd 54 24 04          	fstl   0x4(%esp)
c00336ec:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c00336f3:	00 
c00336f4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c00336fa:	8d 70 01             	lea    0x1(%eax),%esi
c00336fd:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033703:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033707:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c003370d:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033711:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033717:	89 44 24 14          	mov    %eax,0x14(%esp)
c003371b:	8b 45 08             	mov    0x8(%ebp),%eax
c003371e:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033722:	89 04 24             	mov    %eax,(%esp)
c0033725:	e8 56 09 00 00       	call   c0034080 <_dtoa_r>
c003372a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033730:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033733:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033739:	d9 ee                	fldz   
c003373b:	d9 c9                	fxch   %st(1)
c003373d:	df e9                	fucomip %st(1),%st
c003373f:	dd d8                	fstp   %st(0)
c0033741:	0f 8a fd 00 00 00    	jp     c0033844 <_svfprintf_r+0x1894>
c0033747:	89 c8                	mov    %ecx,%eax
c0033749:	0f 85 f5 00 00 00    	jne    c0033844 <_svfprintf_r+0x1894>
c003374f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033755:	83 fb 47             	cmp    $0x47,%ebx
c0033758:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003375e:	0f 84 1e 04 00 00    	je     c0033b82 <_svfprintf_r+0x1bd2>
c0033764:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003376b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033771:	0f 8e 65 04 00 00    	jle    c0033bdc <_svfprintf_r+0x1c2c>
c0033777:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003377e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033784:	0f 84 3c 05 00 00    	je     c0033cc6 <_svfprintf_r+0x1d16>
c003378a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033790:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033796:	0f 8f f7 04 00 00    	jg     c0033c93 <_svfprintf_r+0x1ce3>
c003379c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00337a2:	83 e0 01             	and    $0x1,%eax
c00337a5:	0f 85 e2 05 00 00    	jne    c0033d8d <_svfprintf_r+0x1ddd>
c00337ab:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c00337b1:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c00337b8:	00 00 00 
c00337bb:	85 d2                	test   %edx,%edx
c00337bd:	0f 49 c2             	cmovns %edx,%eax
c00337c0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00337c6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c00337cd:	0f 85 68 03 00 00    	jne    c0033b3b <_svfprintf_r+0x1b8b>
c00337d3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00337d9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c00337df:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00337e6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00337ed:	00 00 00 
c00337f0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c00337f6:	e9 4d ea ff ff       	jmp    c0032248 <_svfprintf_r+0x298>
c00337fb:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033801:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033805:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033808:	89 44 24 04          	mov    %eax,0x4(%esp)
c003380c:	8b 45 08             	mov    0x8(%ebp),%eax
c003380f:	89 04 24             	mov    %eax,(%esp)
c0033812:	e8 19 33 00 00       	call   c0036b30 <__ssprint_r>
c0033817:	85 c0                	test   %eax,%eax
c0033819:	0f 85 61 e9 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c003381f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033825:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033828:	e9 f2 f3 ff ff       	jmp    c0032c1f <_svfprintf_r+0xc6f>
c003382d:	89 d0                	mov    %edx,%eax
c003382f:	e9 d1 fa ff ff       	jmp    c0033305 <_svfprintf_r+0x1355>
c0033834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033838:	8d 50 01             	lea    0x1(%eax),%edx
c003383b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033841:	c6 00 30             	movb   $0x30,(%eax)
c0033844:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c003384a:	39 c1                	cmp    %eax,%ecx
c003384c:	77 ea                	ja     c0033838 <_svfprintf_r+0x1888>
c003384e:	e9 fc fe ff ff       	jmp    c003374f <_svfprintf_r+0x179f>
c0033853:	8b 45 08             	mov    0x8(%ebp),%eax
c0033856:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003385d:	00 
c003385e:	89 04 24             	mov    %eax,(%esp)
c0033861:	e8 4a 1b 00 00       	call   c00353b0 <_malloc_r>
c0033866:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033869:	85 c0                	test   %eax,%eax
c003386b:	89 02                	mov    %eax,(%edx)
c003386d:	89 42 10             	mov    %eax,0x10(%edx)
c0033870:	0f 84 15 06 00 00    	je     c0033e8b <_svfprintf_r+0x1edb>
c0033876:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033879:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033880:	e9 6c e7 ff ff       	jmp    c0031ff1 <_svfprintf_r+0x41>
c0033885:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003388b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003388f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033892:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033896:	8b 45 08             	mov    0x8(%ebp),%eax
c0033899:	89 04 24             	mov    %eax,(%esp)
c003389c:	e8 8f 32 00 00       	call   c0036b30 <__ssprint_r>
c00338a1:	85 c0                	test   %eax,%eax
c00338a3:	0f 85 d7 e8 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c00338a9:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00338af:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338b2:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00338b8:	e9 d9 fc ff ff       	jmp    c0033596 <_svfprintf_r+0x15e6>
c00338bd:	83 c0 01             	add    $0x1,%eax
c00338c0:	01 da                	add    %ebx,%edx
c00338c2:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c00338c8:	83 c7 08             	add    $0x8,%edi
c00338cb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00338ce:	83 f8 07             	cmp    $0x7,%eax
c00338d1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00338d7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00338dd:	7e 33                	jle    c0033912 <_svfprintf_r+0x1962>
c00338df:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338e5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338e9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338ec:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338f0:	8b 45 08             	mov    0x8(%ebp),%eax
c00338f3:	89 04 24             	mov    %eax,(%esp)
c00338f6:	e8 35 32 00 00       	call   c0036b30 <__ssprint_r>
c00338fb:	85 c0                	test   %eax,%eax
c00338fd:	0f 85 7d e8 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0033903:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033909:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003390c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033912:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0033918:	83 c0 01             	add    $0x1,%eax
c003391b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033921:	89 1f                	mov    %ebx,(%edi)
c0033923:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033929:	01 da                	add    %ebx,%edx
c003392b:	83 f8 07             	cmp    $0x7,%eax
c003392e:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033931:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033937:	0f 8f 86 f5 ff ff    	jg     c0032ec3 <_svfprintf_r+0xf13>
c003393d:	83 c7 08             	add    $0x8,%edi
c0033940:	89 d1                	mov    %edx,%ecx
c0033942:	e9 15 f1 ff ff       	jmp    c0032a5c <_svfprintf_r+0xaac>
c0033947:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003394d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033951:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033954:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033958:	8b 45 08             	mov    0x8(%ebp),%eax
c003395b:	89 04 24             	mov    %eax,(%esp)
c003395e:	e8 cd 31 00 00       	call   c0036b30 <__ssprint_r>
c0033963:	85 c0                	test   %eax,%eax
c0033965:	0f 85 15 e8 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c003396b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033971:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033974:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003397a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033980:	e9 62 fc ff ff       	jmp    c00335e7 <_svfprintf_r+0x1637>
c0033985:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c003398c:	00 00 00 
c003398f:	e9 07 fd ff ff       	jmp    c003369b <_svfprintf_r+0x16eb>
c0033994:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003399a:	89 04 24             	mov    %eax,(%esp)
c003399d:	e8 0e 31 00 00       	call   c0036ab0 <strlen>
c00339a2:	e9 6a e8 ff ff       	jmp    c0032211 <_svfprintf_r+0x261>
c00339a7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339ad:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339b1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339b4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00339bb:	89 04 24             	mov    %eax,(%esp)
c00339be:	e8 6d 31 00 00       	call   c0036b30 <__ssprint_r>
c00339c3:	85 c0                	test   %eax,%eax
c00339c5:	0f 85 b5 e7 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c00339cb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339d1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339d4:	e9 76 f6 ff ff       	jmp    c003304f <_svfprintf_r+0x109f>
c00339d9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339df:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339e3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339e6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339ea:	8b 45 08             	mov    0x8(%ebp),%eax
c00339ed:	89 04 24             	mov    %eax,(%esp)
c00339f0:	e8 3b 31 00 00       	call   c0036b30 <__ssprint_r>
c00339f5:	85 c0                	test   %eax,%eax
c00339f7:	0f 85 83 e7 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c00339fd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033a03:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a06:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a0c:	e9 f4 f8 ff ff       	jmp    c0033305 <_svfprintf_r+0x1355>
c0033a11:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a17:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a1b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a1e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a22:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a25:	89 04 24             	mov    %eax,(%esp)
c0033a28:	e8 03 31 00 00       	call   c0036b30 <__ssprint_r>
c0033a2d:	85 c0                	test   %eax,%eax
c0033a2f:	0f 85 4b e7 ff ff    	jne    c0032180 <_svfprintf_r+0x1d0>
c0033a35:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033a3b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a3e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033a44:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a4a:	e9 fa f8 ff ff       	jmp    c0033349 <_svfprintf_r+0x1399>
c0033a4f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033a55:	b0 06                	mov    $0x6,%al
c0033a57:	89 75 14             	mov    %esi,0x14(%ebp)
c0033a5a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a61:	00 00 00 
c0033a64:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033a6b:	00 00 00 
c0033a6e:	83 fa 06             	cmp    $0x6,%edx
c0033a71:	0f 46 c2             	cmovbe %edx,%eax
c0033a74:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033a7a:	85 c0                	test   %eax,%eax
c0033a7c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033a82:	c7 85 28 ff ff ff 30 	movl   $0xc0039830,-0xd8(%ebp)
c0033a89:	98 03 c0 
c0033a8c:	0f 49 d0             	cmovns %eax,%edx
c0033a8f:	31 db                	xor    %ebx,%ebx
c0033a91:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033a97:	e9 b7 e7 ff ff       	jmp    c0032253 <_svfprintf_r+0x2a3>
c0033a9c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033aa3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033aa8:	e9 9d ea ff ff       	jmp    c003254a <_svfprintf_r+0x59a>
c0033aad:	ba 03 00 00 00       	mov    $0x3,%edx
c0033ab2:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033ab8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033abc:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033ac2:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033ac6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033acc:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033ad0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033ad6:	dd 54 24 04          	fstl   0x4(%esp)
c0033ada:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033ade:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033ae4:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033ae8:	8b 45 08             	mov    0x8(%ebp),%eax
c0033aeb:	89 04 24             	mov    %eax,(%esp)
c0033aee:	e8 8d 05 00 00       	call   c0034080 <_dtoa_r>
c0033af3:	83 fb 47             	cmp    $0x47,%ebx
c0033af6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033afc:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033b02:	75 09                	jne    c0033b0d <_svfprintf_r+0x1b5d>
c0033b04:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033b0b:	74 5b                	je     c0033b68 <_svfprintf_r+0x1bb8>
c0033b0d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033b13:	89 f0                	mov    %esi,%eax
c0033b15:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033b1b:	01 d1                	add    %edx,%ecx
c0033b1d:	84 c0                	test   %al,%al
c0033b1f:	0f 84 14 fc ff ff    	je     c0033739 <_svfprintf_r+0x1789>
c0033b25:	80 3a 30             	cmpb   $0x30,(%edx)
c0033b28:	0f 84 37 02 00 00    	je     c0033d65 <_svfprintf_r+0x1db5>
c0033b2e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b34:	01 c1                	add    %eax,%ecx
c0033b36:	e9 fe fb ff ff       	jmp    c0033739 <_svfprintf_r+0x1789>
c0033b3b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b41:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033b47:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033b4c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b53:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b5a:	00 00 00 
c0033b5d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033b63:	e9 e4 e6 ff ff       	jmp    c003224c <_svfprintf_r+0x29c>
c0033b68:	dd d8                	fstp   %st(0)
c0033b6a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033b70:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033b76:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033b7c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033b82:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b88:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033b8b:	7c 48                	jl     c0033bd5 <_svfprintf_r+0x1c25>
c0033b8d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033b93:	7c 40                	jl     c0033bd5 <_svfprintf_r+0x1c25>
c0033b95:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033b9b:	e9 ea fb ff ff       	jmp    c003378a <_svfprintf_r+0x17da>
c0033ba0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033ba6:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033bad:	89 75 14             	mov    %esi,0x14(%ebp)
c0033bb0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033bb7:	00 00 00 
c0033bba:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033bc0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033bc6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033bcd:	00 00 00 
c0033bd0:	e9 73 e6 ff ff       	jmp    c0032248 <_svfprintf_r+0x298>
c0033bd5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033bdc:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033bdf:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033be6:	85 c9                	test   %ecx,%ecx
c0033be8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033bee:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033bf4:	0f 88 2c 02 00 00    	js     c0033e26 <_svfprintf_r+0x1e76>
c0033bfa:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033c01:	83 f9 09             	cmp    $0x9,%ecx
c0033c04:	0f 8f ea 00 00 00    	jg     c0033cf4 <_svfprintf_r+0x1d44>
c0033c0a:	83 c1 30             	add    $0x30,%ecx
c0033c0d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033c14:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033c1a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033c20:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033c26:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033c2c:	29 d0                	sub    %edx,%eax
c0033c2e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033c34:	89 da                	mov    %ebx,%edx
c0033c36:	01 c2                	add    %eax,%edx
c0033c38:	83 fb 01             	cmp    $0x1,%ebx
c0033c3b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c41:	0f 8e 21 02 00 00    	jle    c0033e68 <_svfprintf_r+0x1eb8>
c0033c47:	31 c0                	xor    %eax,%eax
c0033c49:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033c50:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033c57:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c5e:	00 00 00 
c0033c61:	e9 60 fb ff ff       	jmp    c00337c6 <_svfprintf_r+0x1816>
c0033c66:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033c6c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c73:	00 00 00 
c0033c76:	e9 68 e4 ff ff       	jmp    c00320e3 <_svfprintf_r+0x133>
c0033c7b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033c80:	e9 2d fe ff ff       	jmp    c0033ab2 <_svfprintf_r+0x1b02>
c0033c85:	d9 e0                	fchs   
c0033c87:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033c8e:	e9 38 fa ff ff       	jmp    c00336cb <_svfprintf_r+0x171b>
c0033c93:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033c99:	ba 01 00 00 00       	mov    $0x1,%edx
c0033c9e:	85 c9                	test   %ecx,%ecx
c0033ca0:	0f 8e 5a 01 00 00    	jle    c0033e00 <_svfprintf_r+0x1e50>
c0033ca6:	31 c0                	xor    %eax,%eax
c0033ca8:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033cae:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033cb5:	00 00 00 
c0033cb8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033cbe:	0f 49 c2             	cmovns %edx,%eax
c0033cc1:	e9 00 fb ff ff       	jmp    c00337c6 <_svfprintf_r+0x1816>
c0033cc6:	85 c0                	test   %eax,%eax
c0033cc8:	0f 8e 06 01 00 00    	jle    c0033dd4 <_svfprintf_r+0x1e24>
c0033cce:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033cd4:	85 f6                	test   %esi,%esi
c0033cd6:	0f 85 d4 00 00 00    	jne    c0033db0 <_svfprintf_r+0x1e00>
c0033cdc:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033ce3:	0f 85 c7 00 00 00    	jne    c0033db0 <_svfprintf_r+0x1e00>
c0033ce9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033cef:	e9 d2 fa ff ff       	jmp    c00337c6 <_svfprintf_r+0x1816>
c0033cf4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033cfa:	89 f3                	mov    %esi,%ebx
c0033cfc:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033d01:	83 eb 01             	sub    $0x1,%ebx
c0033d04:	f7 e9                	imul   %ecx
c0033d06:	89 c8                	mov    %ecx,%eax
c0033d08:	c1 f8 1f             	sar    $0x1f,%eax
c0033d0b:	c1 fa 02             	sar    $0x2,%edx
c0033d0e:	29 c2                	sub    %eax,%edx
c0033d10:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033d13:	01 c0                	add    %eax,%eax
c0033d15:	29 c1                	sub    %eax,%ecx
c0033d17:	83 fa 09             	cmp    $0x9,%edx
c0033d1a:	8d 41 30             	lea    0x30(%ecx),%eax
c0033d1d:	89 d1                	mov    %edx,%ecx
c0033d1f:	88 03                	mov    %al,(%ebx)
c0033d21:	7f d9                	jg     c0033cfc <_svfprintf_r+0x1d4c>
c0033d23:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033d26:	83 c1 30             	add    $0x30,%ecx
c0033d29:	39 f0                	cmp    %esi,%eax
c0033d2b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033d2e:	0f 83 6a 01 00 00    	jae    c0033e9e <_svfprintf_r+0x1eee>
c0033d34:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d3a:	eb 07                	jmp    c0033d43 <_svfprintf_r+0x1d93>
c0033d3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033d40:	0f b6 08             	movzbl (%eax),%ecx
c0033d43:	83 c0 01             	add    $0x1,%eax
c0033d46:	83 c2 01             	add    $0x1,%edx
c0033d49:	39 f0                	cmp    %esi,%eax
c0033d4b:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033d4e:	75 f0                	jne    c0033d40 <_svfprintf_r+0x1d90>
c0033d50:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d56:	29 d8                	sub    %ebx,%eax
c0033d58:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d5e:	01 d0                	add    %edx,%eax
c0033d60:	e9 bb fe ff ff       	jmp    c0033c20 <_svfprintf_r+0x1c70>
c0033d65:	d9 ee                	fldz   
c0033d67:	d9 c9                	fxch   %st(1)
c0033d69:	db e9                	fucomi %st(1),%st
c0033d6b:	dd d9                	fstp   %st(1)
c0033d6d:	7a 06                	jp     c0033d75 <_svfprintf_r+0x1dc5>
c0033d6f:	0f 84 b9 fd ff ff    	je     c0033b2e <_svfprintf_r+0x1b7e>
c0033d75:	b8 01 00 00 00       	mov    $0x1,%eax
c0033d7a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033d80:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033d86:	01 c1                	add    %eax,%ecx
c0033d88:	e9 ac f9 ff ff       	jmp    c0033739 <_svfprintf_r+0x1789>
c0033d8d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d93:	31 c0                	xor    %eax,%eax
c0033d95:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033d9c:	00 00 00 
c0033d9f:	83 c2 01             	add    $0x1,%edx
c0033da2:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033da8:	0f 49 c2             	cmovns %edx,%eax
c0033dab:	e9 16 fa ff ff       	jmp    c00337c6 <_svfprintf_r+0x1816>
c0033db0:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033db6:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033dbc:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033dc0:	89 c2                	mov    %eax,%edx
c0033dc2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033dc8:	31 c0                	xor    %eax,%eax
c0033dca:	85 d2                	test   %edx,%edx
c0033dcc:	0f 49 c2             	cmovns %edx,%eax
c0033dcf:	e9 f2 f9 ff ff       	jmp    c00337c6 <_svfprintf_r+0x1816>
c0033dd4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033dda:	85 db                	test   %ebx,%ebx
c0033ddc:	75 2f                	jne    c0033e0d <_svfprintf_r+0x1e5d>
c0033dde:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033de5:	75 26                	jne    c0033e0d <_svfprintf_r+0x1e5d>
c0033de7:	b8 01 00 00 00       	mov    $0x1,%eax
c0033dec:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033df3:	00 00 00 
c0033df6:	e9 cb f9 ff ff       	jmp    c00337c6 <_svfprintf_r+0x1816>
c0033dfb:	90                   	nop
c0033dfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033e00:	b2 02                	mov    $0x2,%dl
c0033e02:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033e08:	e9 99 fe ff ff       	jmp    c0033ca6 <_svfprintf_r+0x1cf6>
c0033e0d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033e13:	31 c0                	xor    %eax,%eax
c0033e15:	83 c2 02             	add    $0x2,%edx
c0033e18:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033e1e:	0f 49 c2             	cmovns %edx,%eax
c0033e21:	e9 a0 f9 ff ff       	jmp    c00337c6 <_svfprintf_r+0x1816>
c0033e26:	f7 d9                	neg    %ecx
c0033e28:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033e2f:	e9 cd fd ff ff       	jmp    c0033c01 <_svfprintf_r+0x1c51>
c0033e34:	8b 55 14             	mov    0x14(%ebp),%edx
c0033e37:	8b 45 14             	mov    0x14(%ebp),%eax
c0033e3a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033e40:	8b 12                	mov    (%edx),%edx
c0033e42:	83 c0 04             	add    $0x4,%eax
c0033e45:	89 45 14             	mov    %eax,0x14(%ebp)
c0033e48:	85 d2                	test   %edx,%edx
c0033e4a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033e50:	0f 89 a9 e2 ff ff    	jns    c00320ff <_svfprintf_r+0x14f>
c0033e56:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033e5d:	ff ff ff 
c0033e60:	89 c8                	mov    %ecx,%eax
c0033e62:	e9 76 e2 ff ff       	jmp    c00320dd <_svfprintf_r+0x12d>
c0033e67:	90                   	nop
c0033e68:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e6e:	83 e0 01             	and    $0x1,%eax
c0033e71:	0f 85 d0 fd ff ff    	jne    c0033c47 <_svfprintf_r+0x1c97>
c0033e77:	85 d2                	test   %edx,%edx
c0033e79:	0f 49 c2             	cmovns %edx,%eax
c0033e7c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033e83:	00 00 00 
c0033e86:	e9 3b f9 ff ff       	jmp    c00337c6 <_svfprintf_r+0x1816>
c0033e8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e8e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033e94:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033e99:	e9 f5 e2 ff ff       	jmp    c0032193 <_svfprintf_r+0x1e3>
c0033e9e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033ea4:	e9 77 fd ff ff       	jmp    c0033c20 <_svfprintf_r+0x1c70>
c0033ea9:	66 90                	xchg   %ax,%ax
c0033eab:	66 90                	xchg   %ax,%ax
c0033ead:	66 90                	xchg   %ax,%ax
c0033eaf:	90                   	nop

c0033eb0 <quorem>:
c0033eb0:	55                   	push   %ebp
c0033eb1:	89 c1                	mov    %eax,%ecx
c0033eb3:	89 e5                	mov    %esp,%ebp
c0033eb5:	57                   	push   %edi
c0033eb6:	89 d7                	mov    %edx,%edi
c0033eb8:	56                   	push   %esi
c0033eb9:	53                   	push   %ebx
c0033eba:	83 ec 3c             	sub    $0x3c,%esp
c0033ebd:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033ec0:	8b 42 10             	mov    0x10(%edx),%eax
c0033ec3:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033ec6:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033ec9:	89 ca                	mov    %ecx,%edx
c0033ecb:	0f 8f 9f 01 00 00    	jg     c0034070 <quorem+0x1c0>
c0033ed1:	83 e8 01             	sub    $0x1,%eax
c0033ed4:	83 c7 14             	add    $0x14,%edi
c0033ed7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033eda:	c1 e0 02             	shl    $0x2,%eax
c0033edd:	83 c2 14             	add    $0x14,%edx
c0033ee0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033ee3:	01 d0                	add    %edx,%eax
c0033ee5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033ee8:	8b 13                	mov    (%ebx),%edx
c0033eea:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033eed:	8b 00                	mov    (%eax),%eax
c0033eef:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033ef2:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033ef5:	31 d2                	xor    %edx,%edx
c0033ef7:	f7 f1                	div    %ecx
c0033ef9:	85 c0                	test   %eax,%eax
c0033efb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033efe:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033f01:	0f 84 b5 00 00 00    	je     c0033fbc <quorem+0x10c>
c0033f07:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033f0a:	31 f6                	xor    %esi,%esi
c0033f0c:	89 fa                	mov    %edi,%edx
c0033f0e:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033f11:	89 f7                	mov    %esi,%edi
c0033f13:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033f1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033f20:	83 c2 04             	add    $0x4,%edx
c0033f23:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f26:	83 c0 04             	add    $0x4,%eax
c0033f29:	0f b7 ce             	movzwl %si,%ecx
c0033f2c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033f30:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033f33:	c1 ee 10             	shr    $0x10,%esi
c0033f36:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033f3a:	89 cb                	mov    %ecx,%ebx
c0033f3c:	0f b7 c9             	movzwl %cx,%ecx
c0033f3f:	c1 eb 10             	shr    $0x10,%ebx
c0033f42:	29 cf                	sub    %ecx,%edi
c0033f44:	01 f3                	add    %esi,%ebx
c0033f46:	89 de                	mov    %ebx,%esi
c0033f48:	0f b7 db             	movzwl %bx,%ebx
c0033f4b:	c1 ee 10             	shr    $0x10,%esi
c0033f4e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033f51:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033f54:	0f b7 ce             	movzwl %si,%ecx
c0033f57:	01 f9                	add    %edi,%ecx
c0033f59:	c1 ee 10             	shr    $0x10,%esi
c0033f5c:	29 de                	sub    %ebx,%esi
c0033f5e:	89 cb                	mov    %ecx,%ebx
c0033f60:	c1 fb 10             	sar    $0x10,%ebx
c0033f63:	0f b7 c9             	movzwl %cx,%ecx
c0033f66:	01 de                	add    %ebx,%esi
c0033f68:	89 f7                	mov    %esi,%edi
c0033f6a:	c1 e6 10             	shl    $0x10,%esi
c0033f6d:	09 ce                	or     %ecx,%esi
c0033f6f:	c1 ff 10             	sar    $0x10,%edi
c0033f72:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033f75:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033f78:	73 a6                	jae    c0033f20 <quorem+0x70>
c0033f7a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033f7d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033f80:	8b 10                	mov    (%eax),%edx
c0033f82:	85 d2                	test   %edx,%edx
c0033f84:	75 36                	jne    c0033fbc <quorem+0x10c>
c0033f86:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033f89:	89 c2                	mov    %eax,%edx
c0033f8b:	83 e8 04             	sub    $0x4,%eax
c0033f8e:	39 c1                	cmp    %eax,%ecx
c0033f90:	73 21                	jae    c0033fb3 <quorem+0x103>
c0033f92:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f95:	85 f6                	test   %esi,%esi
c0033f97:	75 1a                	jne    c0033fb3 <quorem+0x103>
c0033f99:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f9c:	eb 08                	jmp    c0033fa6 <quorem+0xf6>
c0033f9e:	66 90                	xchg   %ax,%ax
c0033fa0:	8b 18                	mov    (%eax),%ebx
c0033fa2:	85 db                	test   %ebx,%ebx
c0033fa4:	75 0a                	jne    c0033fb0 <quorem+0x100>
c0033fa6:	83 e8 04             	sub    $0x4,%eax
c0033fa9:	83 ea 01             	sub    $0x1,%edx
c0033fac:	39 c1                	cmp    %eax,%ecx
c0033fae:	72 f0                	jb     c0033fa0 <quorem+0xf0>
c0033fb0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033fb3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033fb6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033fb9:	89 50 10             	mov    %edx,0x10(%eax)
c0033fbc:	8b 45 c8             	mov    -0x38(%ebp),%eax
c0033fbf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033fc3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033fc6:	89 04 24             	mov    %eax,(%esp)
c0033fc9:	e8 a2 23 00 00       	call   c0036370 <__mcmp>
c0033fce:	85 c0                	test   %eax,%eax
c0033fd0:	0f 88 8e 00 00 00    	js     c0034064 <quorem+0x1b4>
c0033fd6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0033fd9:	31 f6                	xor    %esi,%esi
c0033fdb:	83 c0 01             	add    $0x1,%eax
c0033fde:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033fe1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033fe4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033fe8:	83 c7 04             	add    $0x4,%edi
c0033feb:	8b 4f fc             	mov    -0x4(%edi),%ecx
c0033fee:	83 c0 04             	add    $0x4,%eax
c0033ff1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0033ff4:	0f b7 d1             	movzwl %cx,%edx
c0033ff7:	29 d6                	sub    %edx,%esi
c0033ff9:	0f b7 d3             	movzwl %bx,%edx
c0033ffc:	01 f2                	add    %esi,%edx
c0033ffe:	c1 e9 10             	shr    $0x10,%ecx
c0034001:	c1 eb 10             	shr    $0x10,%ebx
c0034004:	29 cb                	sub    %ecx,%ebx
c0034006:	89 d1                	mov    %edx,%ecx
c0034008:	c1 f9 10             	sar    $0x10,%ecx
c003400b:	0f b7 d2             	movzwl %dx,%edx
c003400e:	01 cb                	add    %ecx,%ebx
c0034010:	89 de                	mov    %ebx,%esi
c0034012:	c1 e3 10             	shl    $0x10,%ebx
c0034015:	09 d3                	or     %edx,%ebx
c0034017:	c1 fe 10             	sar    $0x10,%esi
c003401a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c003401d:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0034020:	73 c6                	jae    c0033fe8 <quorem+0x138>
c0034022:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034025:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034028:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c003402b:	8b 02                	mov    (%edx),%eax
c003402d:	85 c0                	test   %eax,%eax
c003402f:	75 33                	jne    c0034064 <quorem+0x1b4>
c0034031:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034034:	8d 42 fc             	lea    -0x4(%edx),%eax
c0034037:	39 c1                	cmp    %eax,%ecx
c0034039:	73 20                	jae    c003405b <quorem+0x1ab>
c003403b:	8b 72 fc             	mov    -0x4(%edx),%esi
c003403e:	85 f6                	test   %esi,%esi
c0034040:	75 19                	jne    c003405b <quorem+0x1ab>
c0034042:	89 fa                	mov    %edi,%edx
c0034044:	eb 08                	jmp    c003404e <quorem+0x19e>
c0034046:	66 90                	xchg   %ax,%ax
c0034048:	8b 18                	mov    (%eax),%ebx
c003404a:	85 db                	test   %ebx,%ebx
c003404c:	75 0a                	jne    c0034058 <quorem+0x1a8>
c003404e:	83 e8 04             	sub    $0x4,%eax
c0034051:	83 ea 01             	sub    $0x1,%edx
c0034054:	39 c1                	cmp    %eax,%ecx
c0034056:	72 f0                	jb     c0034048 <quorem+0x198>
c0034058:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003405b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003405e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034061:	89 78 10             	mov    %edi,0x10(%eax)
c0034064:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034067:	83 c4 3c             	add    $0x3c,%esp
c003406a:	5b                   	pop    %ebx
c003406b:	5e                   	pop    %esi
c003406c:	5f                   	pop    %edi
c003406d:	5d                   	pop    %ebp
c003406e:	c3                   	ret    
c003406f:	90                   	nop
c0034070:	83 c4 3c             	add    $0x3c,%esp
c0034073:	31 c0                	xor    %eax,%eax
c0034075:	5b                   	pop    %ebx
c0034076:	5e                   	pop    %esi
c0034077:	5f                   	pop    %edi
c0034078:	5d                   	pop    %ebp
c0034079:	c3                   	ret    
c003407a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034080 <_dtoa_r>:
c0034080:	55                   	push   %ebp
c0034081:	89 e5                	mov    %esp,%ebp
c0034083:	57                   	push   %edi
c0034084:	56                   	push   %esi
c0034085:	53                   	push   %ebx
c0034086:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003408c:	8b 75 08             	mov    0x8(%ebp),%esi
c003408f:	dd 45 0c             	fldl   0xc(%ebp)
c0034092:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034095:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034098:	8b 46 40             	mov    0x40(%esi),%eax
c003409b:	85 c0                	test   %eax,%eax
c003409d:	74 23                	je     c00340c2 <_dtoa_r+0x42>
c003409f:	8b 4e 44             	mov    0x44(%esi),%ecx
c00340a2:	ba 01 00 00 00       	mov    $0x1,%edx
c00340a7:	d3 e2                	shl    %cl,%edx
c00340a9:	89 48 04             	mov    %ecx,0x4(%eax)
c00340ac:	89 50 08             	mov    %edx,0x8(%eax)
c00340af:	89 44 24 04          	mov    %eax,0x4(%esp)
c00340b3:	89 34 24             	mov    %esi,(%esp)
c00340b6:	e8 95 1b 00 00       	call   c0035c50 <_Bfree>
c00340bb:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c00340c2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00340c5:	85 ff                	test   %edi,%edi
c00340c7:	0f 88 3b 02 00 00    	js     c0034308 <_dtoa_r+0x288>
c00340cd:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c00340d3:	89 f8                	mov    %edi,%eax
c00340d5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c00340da:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c00340df:	0f 84 e3 01 00 00    	je     c00342c8 <_dtoa_r+0x248>
c00340e5:	dd 45 c0             	fldl   -0x40(%ebp)
c00340e8:	d9 ee                	fldz   
c00340ea:	d9 c9                	fxch   %st(1)
c00340ec:	db e9                	fucomi %st(1),%st
c00340ee:	dd d9                	fstp   %st(1)
c00340f0:	7a 36                	jp     c0034128 <_dtoa_r+0xa8>
c00340f2:	75 34                	jne    c0034128 <_dtoa_r+0xa8>
c00340f4:	dd d8                	fstp   %st(0)
c00340f6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c00340f9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00340fc:	85 c9                	test   %ecx,%ecx
c00340fe:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0034104:	0f 84 4e 02 00 00    	je     c0034358 <_dtoa_r+0x2d8>
c003410a:	8b 45 24             	mov    0x24(%ebp),%eax
c003410d:	c7 00 38 98 03 c0    	movl   $0xc0039838,(%eax)
c0034113:	b8 37 98 03 c0       	mov    $0xc0039837,%eax
c0034118:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c003411e:	5b                   	pop    %ebx
c003411f:	5e                   	pop    %esi
c0034120:	5f                   	pop    %edi
c0034121:	5d                   	pop    %ebp
c0034122:	c3                   	ret    
c0034123:	90                   	nop
c0034124:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034128:	8d 45 e0             	lea    -0x20(%ebp),%eax
c003412b:	89 fb                	mov    %edi,%ebx
c003412d:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034131:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0034134:	dd 54 24 04          	fstl   0x4(%esp)
c0034138:	89 44 24 0c          	mov    %eax,0xc(%esp)
c003413c:	dd 5d b8             	fstpl  -0x48(%ebp)
c003413f:	89 34 24             	mov    %esi,(%esp)
c0034142:	c1 eb 14             	shr    $0x14,%ebx
c0034145:	e8 76 25 00 00       	call   c00366c0 <__d2b>
c003414a:	85 db                	test   %ebx,%ebx
c003414c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003414f:	0f 85 db 01 00 00    	jne    c0034330 <_dtoa_r+0x2b0>
c0034155:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034158:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003415b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003415e:	01 c3                	add    %eax,%ebx
c0034160:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034166:	0f 8c ec 07 00 00    	jl     c0034958 <_dtoa_r+0x8d8>
c003416c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003416f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034174:	89 f8                	mov    %edi,%eax
c0034176:	29 d9                	sub    %ebx,%ecx
c0034178:	d3 e0                	shl    %cl,%eax
c003417a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034180:	d3 ea                	shr    %cl,%edx
c0034182:	09 d0                	or     %edx,%eax
c0034184:	31 d2                	xor    %edx,%edx
c0034186:	83 eb 01             	sub    $0x1,%ebx
c0034189:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003418c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003418f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034192:	df 6d c8             	fildll -0x38(%ebp)
c0034195:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034198:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003419f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c00341a6:	dd 45 b8             	fldl   -0x48(%ebp)
c00341a9:	d8 25 d0 99 03 c0    	fsubs  0xc00399d0
c00341af:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c00341b2:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00341b5:	dc 0d e8 99 03 c0    	fmull  0xc00399e8
c00341bb:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00341bf:	b4 0c                	mov    $0xc,%ah
c00341c1:	dc 05 f0 99 03 c0    	faddl  0xc00399f0
c00341c7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00341cb:	db 45 d4             	fildl  -0x2c(%ebp)
c00341ce:	dc 0d f8 99 03 c0    	fmull  0xc00399f8
c00341d4:	de c1                	faddp  %st,%st(1)
c00341d6:	d9 6d d0             	fldcw  -0x30(%ebp)
c00341d9:	db 55 b8             	fistl  -0x48(%ebp)
c00341dc:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00341df:	d9 ee                	fldz   
c00341e1:	df e9                	fucomip %st(1),%st
c00341e3:	0f 87 27 07 00 00    	ja     c0034910 <_dtoa_r+0x890>
c00341e9:	dd d8                	fstp   %st(0)
c00341eb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c00341ef:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c00341f6:	77 24                	ja     c003421c <_dtoa_r+0x19c>
c00341f8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00341fb:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c0034202:	dd 45 c0             	fldl   -0x40(%ebp)
c0034205:	d9 c9                	fxch   %st(1)
c0034207:	df e9                	fucomip %st(1),%st
c0034209:	dd d8                	fstp   %st(0)
c003420b:	0f 86 5f 07 00 00    	jbe    c0034970 <_dtoa_r+0x8f0>
c0034211:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034215:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c003421c:	89 d0                	mov    %edx,%eax
c003421e:	29 d8                	sub    %ebx,%eax
c0034220:	83 e8 01             	sub    $0x1,%eax
c0034223:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c003422a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c003422d:	0f 88 0d 07 00 00    	js     c0034940 <_dtoa_r+0x8c0>
c0034233:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034236:	85 c0                	test   %eax,%eax
c0034238:	0f 88 ea 06 00 00    	js     c0034928 <_dtoa_r+0x8a8>
c003423e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034241:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034244:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003424b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003424f:	0f 87 0b 03 00 00    	ja     c0034560 <_dtoa_r+0x4e0>
c0034255:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034259:	0f 8e 23 10 00 00    	jle    c0035282 <_dtoa_r+0x1202>
c003425f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034263:	31 c0                	xor    %eax,%eax
c0034265:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034269:	0f 84 43 0d 00 00    	je     c0034fb2 <_dtoa_r+0xf32>
c003426f:	0f 8e f3 00 00 00    	jle    c0034368 <_dtoa_r+0x2e8>
c0034275:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034279:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034280:	0f 84 f3 00 00 00    	je     c0034379 <_dtoa_r+0x2f9>
c0034286:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003428a:	0f 85 d7 02 00 00    	jne    c0034567 <_dtoa_r+0x4e7>
c0034290:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034293:	03 5d 18             	add    0x18(%ebp),%ebx
c0034296:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034299:	83 c3 01             	add    $0x1,%ebx
c003429c:	83 fb 0e             	cmp    $0xe,%ebx
c003429f:	0f 96 c2             	setbe  %dl
c00342a2:	85 db                	test   %ebx,%ebx
c00342a4:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c00342a7:	0f 8e a7 08 00 00    	jle    c0034b54 <_dtoa_r+0xad4>
c00342ad:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00342b0:	83 fb 0e             	cmp    $0xe,%ebx
c00342b3:	89 df                	mov    %ebx,%edi
c00342b5:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c00342b9:	20 45 b4             	and    %al,-0x4c(%ebp)
c00342bc:	e9 d6 00 00 00       	jmp    c0034397 <_dtoa_r+0x317>
c00342c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00342c8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00342cb:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00342ce:	85 d2                	test   %edx,%edx
c00342d0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c00342d6:	b8 c9 99 03 c0       	mov    $0xc00399c9,%eax
c00342db:	74 43                	je     c0034320 <_dtoa_r+0x2a0>
c00342dd:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00342e0:	85 db                	test   %ebx,%ebx
c00342e2:	0f 84 30 fe ff ff    	je     c0034118 <_dtoa_r+0x98>
c00342e8:	8b 75 24             	mov    0x24(%ebp),%esi
c00342eb:	8d 50 08             	lea    0x8(%eax),%edx
c00342ee:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c00342f2:	8d 48 03             	lea    0x3(%eax),%ecx
c00342f5:	0f 44 d1             	cmove  %ecx,%edx
c00342f8:	89 16                	mov    %edx,(%esi)
c00342fa:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034300:	5b                   	pop    %ebx
c0034301:	5e                   	pop    %esi
c0034302:	5f                   	pop    %edi
c0034303:	5d                   	pop    %ebp
c0034304:	c3                   	ret    
c0034305:	8d 76 00             	lea    0x0(%esi),%esi
c0034308:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c003430e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0034314:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0034317:	e9 b7 fd ff ff       	jmp    c00340d3 <_dtoa_r+0x53>
c003431c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034320:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0034326:	ba c0 99 03 c0       	mov    $0xc00399c0,%edx
c003432b:	0f 44 c2             	cmove  %edx,%eax
c003432e:	eb ad                	jmp    c00342dd <_dtoa_r+0x25d>
c0034330:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034333:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034339:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003433c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034343:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034348:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003434d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034350:	e9 51 fe ff ff       	jmp    c00341a6 <_dtoa_r+0x126>
c0034355:	8d 76 00             	lea    0x0(%esi),%esi
c0034358:	b8 37 98 03 c0       	mov    $0xc0039837,%eax
c003435d:	e9 b6 fd ff ff       	jmp    c0034118 <_dtoa_r+0x98>
c0034362:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034368:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003436c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034373:	0f 85 ee 01 00 00    	jne    c0034567 <_dtoa_r+0x4e7>
c0034379:	8b 55 18             	mov    0x18(%ebp),%edx
c003437c:	85 d2                	test   %edx,%edx
c003437e:	0f 8e b6 07 00 00    	jle    c0034b3a <_dtoa_r+0xaba>
c0034384:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034387:	83 ff 0e             	cmp    $0xe,%edi
c003438a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003438e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034391:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034394:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034397:	83 ff 17             	cmp    $0x17,%edi
c003439a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c00343a1:	0f 86 e5 0e 00 00    	jbe    c003528c <_dtoa_r+0x120c>
c00343a7:	b9 01 00 00 00       	mov    $0x1,%ecx
c00343ac:	b8 04 00 00 00       	mov    $0x4,%eax
c00343b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00343b8:	01 c0                	add    %eax,%eax
c00343ba:	89 ca                	mov    %ecx,%edx
c00343bc:	8d 58 14             	lea    0x14(%eax),%ebx
c00343bf:	39 fb                	cmp    %edi,%ebx
c00343c1:	8d 49 01             	lea    0x1(%ecx),%ecx
c00343c4:	76 f2                	jbe    c00343b8 <_dtoa_r+0x338>
c00343c6:	89 56 44             	mov    %edx,0x44(%esi)
c00343c9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00343cd:	89 34 24             	mov    %esi,(%esp)
c00343d0:	e8 db 17 00 00       	call   c0035bb0 <_Balloc>
c00343d5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c00343d9:	89 c7                	mov    %eax,%edi
c00343db:	89 46 40             	mov    %eax,0x40(%esi)
c00343de:	0f 84 bb 01 00 00    	je     c003459f <_dtoa_r+0x51f>
c00343e4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00343e7:	dd 45 c0             	fldl   -0x40(%ebp)
c00343ea:	85 db                	test   %ebx,%ebx
c00343ec:	0f 8e de 07 00 00    	jle    c0034bd0 <_dtoa_r+0xb50>
c00343f2:	89 d8                	mov    %ebx,%eax
c00343f4:	83 e0 0f             	and    $0xf,%eax
c00343f7:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c00343fe:	89 d8                	mov    %ebx,%eax
c0034400:	c1 f8 04             	sar    $0x4,%eax
c0034403:	a8 10                	test   $0x10,%al
c0034405:	0f 84 cd 05 00 00    	je     c00349d8 <_dtoa_r+0x958>
c003440b:	dd 05 a0 9a 03 c0    	fldl   0xc0039aa0
c0034411:	83 e0 0f             	and    $0xf,%eax
c0034414:	b9 03 00 00 00       	mov    $0x3,%ecx
c0034419:	d8 fa                	fdivr  %st(2),%st
c003441b:	85 c0                	test   %eax,%eax
c003441d:	74 22                	je     c0034441 <_dtoa_r+0x3c1>
c003441f:	31 d2                	xor    %edx,%edx
c0034421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034428:	a8 01                	test   $0x1,%al
c003442a:	74 0e                	je     c003443a <_dtoa_r+0x3ba>
c003442c:	d9 c9                	fxch   %st(1)
c003442e:	dc 0c d5 80 9a 03 c0 	fmull  -0x3ffc6580(,%edx,8)
c0034435:	d9 c9                	fxch   %st(1)
c0034437:	83 c1 01             	add    $0x1,%ecx
c003443a:	83 c2 01             	add    $0x1,%edx
c003443d:	d1 f8                	sar    %eax
c003443f:	75 e7                	jne    c0034428 <_dtoa_r+0x3a8>
c0034441:	de f1                	fdivp  %st,%st(1)
c0034443:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034446:	85 c0                	test   %eax,%eax
c0034448:	74 0a                	je     c0034454 <_dtoa_r+0x3d4>
c003444a:	d9 e8                	fld1   
c003444c:	df e9                	fucomip %st(1),%st
c003444e:	0f 87 92 0b 00 00    	ja     c0034fe6 <_dtoa_r+0xf66>
c0034454:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034457:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003445a:	db 45 d4             	fildl  -0x2c(%ebp)
c003445d:	d8 c9                	fmul   %st(1),%st
c003445f:	d8 05 dc 99 03 c0    	fadds  0xc00399dc
c0034465:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034468:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003446f:	85 c0                	test   %eax,%eax
c0034471:	0f 84 89 05 00 00    	je     c0034a00 <_dtoa_r+0x980>
c0034477:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003447a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003447d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034480:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034483:	85 c0                	test   %eax,%eax
c0034485:	0f 84 b5 07 00 00    	je     c0034c40 <_dtoa_r+0xbc0>
c003448b:	d9 05 e4 99 03 c0    	flds   0xc00399e4
c0034491:	8d 57 01             	lea    0x1(%edi),%edx
c0034494:	dc 34 cd b8 9a 03 c0 	fdivl  -0x3ffc6548(,%ecx,8)
c003449b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003449e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00344a2:	b4 0c                	mov    $0xc,%ah
c00344a4:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00344a8:	dc 65 c0             	fsubl  -0x40(%ebp)
c00344ab:	d9 c9                	fxch   %st(1)
c00344ad:	d9 6d d0             	fldcw  -0x30(%ebp)
c00344b0:	db 55 d4             	fistl  -0x2c(%ebp)
c00344b3:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00344b6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00344b9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00344bc:	83 c0 30             	add    $0x30,%eax
c00344bf:	db 45 d4             	fildl  -0x2c(%ebp)
c00344c2:	de e9                	fsubrp %st,%st(1)
c00344c4:	d9 c9                	fxch   %st(1)
c00344c6:	88 07                	mov    %al,(%edi)
c00344c8:	db e9                	fucomi %st(1),%st
c00344ca:	77 7f                	ja     c003454b <_dtoa_r+0x4cb>
c00344cc:	d9 c1                	fld    %st(1)
c00344ce:	d8 2d d4 99 03 c0    	fsubrs 0xc00399d4
c00344d4:	d9 c9                	fxch   %st(1)
c00344d6:	db e9                	fucomi %st(1),%st
c00344d8:	dd d9                	fstp   %st(1)
c00344da:	0f 87 33 0c 00 00    	ja     c0035113 <_dtoa_r+0x1093>
c00344e0:	83 f9 01             	cmp    $0x1,%ecx
c00344e3:	0f 8e c4 06 00 00    	jle    c0034bad <_dtoa_r+0xb2d>
c00344e9:	01 f9                	add    %edi,%ecx
c00344eb:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c00344f1:	eb 25                	jmp    c0034518 <_dtoa_r+0x498>
c00344f3:	90                   	nop
c00344f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00344f8:	d9 c1                	fld    %st(1)
c00344fa:	d8 2d d4 99 03 c0    	fsubrs 0xc00399d4
c0034500:	d9 c9                	fxch   %st(1)
c0034502:	db e9                	fucomi %st(1),%st
c0034504:	dd d9                	fstp   %st(1)
c0034506:	0f 87 14 0c 00 00    	ja     c0035120 <_dtoa_r+0x10a0>
c003450c:	39 ca                	cmp    %ecx,%edx
c003450e:	0f 84 a4 06 00 00    	je     c0034bb8 <_dtoa_r+0xb38>
c0034514:	d9 c9                	fxch   %st(1)
c0034516:	d9 ca                	fxch   %st(2)
c0034518:	dc c9                	fmul   %st,%st(1)
c003451a:	83 c2 01             	add    $0x1,%edx
c003451d:	dc ca                	fmul   %st,%st(2)
c003451f:	d9 ca                	fxch   %st(2)
c0034521:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034524:	db 55 d4             	fistl  -0x2c(%ebp)
c0034527:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003452a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003452d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034530:	83 c0 30             	add    $0x30,%eax
c0034533:	db 45 d4             	fildl  -0x2c(%ebp)
c0034536:	de e9                	fsubrp %st,%st(1)
c0034538:	d9 c9                	fxch   %st(1)
c003453a:	88 42 ff             	mov    %al,-0x1(%edx)
c003453d:	db e9                	fucomi %st(1),%st
c003453f:	76 b7                	jbe    c00344f8 <_dtoa_r+0x478>
c0034541:	dd d8                	fstp   %st(0)
c0034543:	dd d8                	fstp   %st(0)
c0034545:	dd d8                	fstp   %st(0)
c0034547:	dd d8                	fstp   %st(0)
c0034549:	eb 06                	jmp    c0034551 <_dtoa_r+0x4d1>
c003454b:	dd d8                	fstp   %st(0)
c003454d:	dd d8                	fstp   %st(0)
c003454f:	dd d8                	fstp   %st(0)
c0034551:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034554:	89 fb                	mov    %edi,%ebx
c0034556:	89 d7                	mov    %edx,%edi
c0034558:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003455b:	e9 70 03 00 00       	jmp    c00348d0 <_dtoa_r+0x850>
c0034560:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034567:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003456e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034575:	00 
c0034576:	89 34 24             	mov    %esi,(%esp)
c0034579:	e8 32 16 00 00       	call   c0035bb0 <_Balloc>
c003457e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034585:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003458c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034593:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003459a:	89 c7                	mov    %eax,%edi
c003459c:	89 46 40             	mov    %eax,0x40(%esi)
c003459f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00345a2:	85 c0                	test   %eax,%eax
c00345a4:	0f 88 2e 01 00 00    	js     c00346d8 <_dtoa_r+0x658>
c00345aa:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c00345ae:	0f 8f 24 01 00 00    	jg     c00346d8 <_dtoa_r+0x658>
c00345b4:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00345b7:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c00345be:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00345c1:	85 c0                	test   %eax,%eax
c00345c3:	7f 0e                	jg     c00345d3 <_dtoa_r+0x553>
c00345c5:	8b 45 18             	mov    0x18(%ebp),%eax
c00345c8:	c1 e8 1f             	shr    $0x1f,%eax
c00345cb:	84 c0                	test   %al,%al
c00345cd:	0f 85 9d 07 00 00    	jne    c0034d70 <_dtoa_r+0xcf0>
c00345d3:	dd 45 c0             	fldl   -0x40(%ebp)
c00345d6:	d9 c0                	fld    %st(0)
c00345d8:	d8 f2                	fdiv   %st(2),%st
c00345da:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00345dd:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c00345e1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00345e5:	b4 0c                	mov    $0xc,%ah
c00345e7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00345eb:	8d 47 01             	lea    0x1(%edi),%eax
c00345ee:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00345f1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00345f4:	db 5d d4             	fistpl -0x2c(%ebp)
c00345f7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00345fa:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00345fd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034600:	8d 42 30             	lea    0x30(%edx),%eax
c0034603:	db 45 d4             	fildl  -0x2c(%ebp)
c0034606:	d8 ca                	fmul   %st(2),%st
c0034608:	88 07                	mov    %al,(%edi)
c003460a:	de e9                	fsubrp %st,%st(1)
c003460c:	74 66                	je     c0034674 <_dtoa_r+0x5f4>
c003460e:	d8 0d d8 99 03 c0    	fmuls  0xc00399d8
c0034614:	d9 ee                	fldz   
c0034616:	d9 c9                	fxch   %st(1)
c0034618:	db e9                	fucomi %st(1),%st
c003461a:	dd d9                	fstp   %st(1)
c003461c:	0f 8b 33 0c 00 00    	jnp    c0035255 <_dtoa_r+0x11d5>
c0034622:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034625:	8d 47 02             	lea    0x2(%edi),%eax
c0034628:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c003462e:	01 fb                	add    %edi,%ebx
c0034630:	eb 19                	jmp    c003464b <_dtoa_r+0x5cb>
c0034632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034638:	dc c9                	fmul   %st,%st(1)
c003463a:	83 c0 01             	add    $0x1,%eax
c003463d:	d9 ee                	fldz   
c003463f:	d9 ca                	fxch   %st(2)
c0034641:	db ea                	fucomi %st(2),%st
c0034643:	dd da                	fstp   %st(2)
c0034645:	0f 8b 73 09 00 00    	jnp    c0034fbe <_dtoa_r+0xf3e>
c003464b:	d9 c1                	fld    %st(1)
c003464d:	39 d8                	cmp    %ebx,%eax
c003464f:	d8 f3                	fdiv   %st(3),%st
c0034651:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034654:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034657:	db 5d d4             	fistpl -0x2c(%ebp)
c003465a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003465d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034660:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034663:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034666:	db 45 d4             	fildl  -0x2c(%ebp)
c0034669:	d8 cb                	fmul   %st(3),%st
c003466b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003466e:	de ea                	fsubrp %st,%st(2)
c0034670:	75 c6                	jne    c0034638 <_dtoa_r+0x5b8>
c0034672:	dd d8                	fstp   %st(0)
c0034674:	d8 c0                	fadd   %st(0),%st
c0034676:	db e9                	fucomi %st(1),%st
c0034678:	77 1e                	ja     c0034698 <_dtoa_r+0x618>
c003467a:	d9 c9                	fxch   %st(1)
c003467c:	df e9                	fucomip %st(1),%st
c003467e:	dd d8                	fstp   %st(0)
c0034680:	0f 8a 44 09 00 00    	jp     c0034fca <_dtoa_r+0xf4a>
c0034686:	0f 85 3e 09 00 00    	jne    c0034fca <_dtoa_r+0xf4a>
c003468c:	83 e2 01             	and    $0x1,%edx
c003468f:	90                   	nop
c0034690:	0f 84 34 09 00 00    	je     c0034fca <_dtoa_r+0xf4a>
c0034696:	eb 04                	jmp    c003469c <_dtoa_r+0x61c>
c0034698:	dd d8                	fstp   %st(0)
c003469a:	dd d8                	fstp   %st(0)
c003469c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c003469f:	89 fb                	mov    %edi,%ebx
c00346a1:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c00346a5:	89 cf                	mov    %ecx,%edi
c00346a7:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c00346aa:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c00346ad:	eb 0f                	jmp    c00346be <_dtoa_r+0x63e>
c00346af:	90                   	nop
c00346b0:	39 d3                	cmp    %edx,%ebx
c00346b2:	0f 84 75 09 00 00    	je     c003502d <_dtoa_r+0xfad>
c00346b8:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c00346bc:	89 d7                	mov    %edx,%edi
c00346be:	3c 39                	cmp    $0x39,%al
c00346c0:	8d 57 ff             	lea    -0x1(%edi),%edx
c00346c3:	74 eb                	je     c00346b0 <_dtoa_r+0x630>
c00346c5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c00346c8:	83 c0 01             	add    $0x1,%eax
c00346cb:	88 02                	mov    %al,(%edx)
c00346cd:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c00346d0:	e9 fb 01 00 00       	jmp    c00348d0 <_dtoa_r+0x850>
c00346d5:	8d 76 00             	lea    0x0(%esi),%esi
c00346d8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00346db:	85 c9                	test   %ecx,%ecx
c00346dd:	0f 85 9d 02 00 00    	jne    c0034980 <_dtoa_r+0x900>
c00346e3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00346e6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00346e9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00346f0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346f3:	85 c0                	test   %eax,%eax
c00346f5:	7e 14                	jle    c003470b <_dtoa_r+0x68b>
c00346f7:	85 db                	test   %ebx,%ebx
c00346f9:	7e 10                	jle    c003470b <_dtoa_r+0x68b>
c00346fb:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346fe:	39 d8                	cmp    %ebx,%eax
c0034700:	0f 4f c3             	cmovg  %ebx,%eax
c0034703:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034706:	29 c3                	sub    %eax,%ebx
c0034708:	29 45 ac             	sub    %eax,-0x54(%ebp)
c003470b:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003470e:	85 c0                	test   %eax,%eax
c0034710:	7e 61                	jle    c0034773 <_dtoa_r+0x6f3>
c0034712:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034715:	85 c0                	test   %eax,%eax
c0034717:	0f 84 72 04 00 00    	je     c0034b8f <_dtoa_r+0xb0f>
c003471d:	85 d2                	test   %edx,%edx
c003471f:	7e 47                	jle    c0034768 <_dtoa_r+0x6e8>
c0034721:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034724:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034728:	89 34 24             	mov    %esi,(%esp)
c003472b:	89 55 88             	mov    %edx,-0x78(%ebp)
c003472e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034732:	e8 f9 19 00 00       	call   c0036130 <__pow5mult>
c0034737:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c003473a:	89 34 24             	mov    %esi,(%esp)
c003473d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034741:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034745:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034748:	e8 13 18 00 00       	call   c0035f60 <__multiply>
c003474d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034750:	89 34 24             	mov    %esi,(%esp)
c0034753:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034757:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003475a:	e8 f1 14 00 00       	call   c0035c50 <_Bfree>
c003475f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034762:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034765:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034768:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003476b:	29 d0                	sub    %edx,%eax
c003476d:	0f 85 1f 04 00 00    	jne    c0034b92 <_dtoa_r+0xb12>
c0034773:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003477a:	00 
c003477b:	89 34 24             	mov    %esi,(%esp)
c003477e:	e8 ad 17 00 00       	call   c0035f30 <__i2b>
c0034783:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034786:	85 c9                	test   %ecx,%ecx
c0034788:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003478b:	7e 13                	jle    c00347a0 <_dtoa_r+0x720>
c003478d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034791:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034795:	89 34 24             	mov    %esi,(%esp)
c0034798:	e8 93 19 00 00       	call   c0036130 <__pow5mult>
c003479d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00347a0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c00347a4:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c00347ab:	0f 8e f7 05 00 00    	jle    c0034da8 <_dtoa_r+0xd28>
c00347b1:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00347b4:	ba 01 00 00 00       	mov    $0x1,%edx
c00347b9:	85 c0                	test   %eax,%eax
c00347bb:	0f 85 27 05 00 00    	jne    c0034ce8 <_dtoa_r+0xc68>
c00347c1:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347c4:	01 d0                	add    %edx,%eax
c00347c6:	83 e0 1f             	and    $0x1f,%eax
c00347c9:	89 c2                	mov    %eax,%edx
c00347cb:	0f 84 57 03 00 00    	je     c0034b28 <_dtoa_r+0xaa8>
c00347d1:	b8 20 00 00 00       	mov    $0x20,%eax
c00347d6:	29 d0                	sub    %edx,%eax
c00347d8:	83 f8 04             	cmp    $0x4,%eax
c00347db:	0f 8e 8c 0a 00 00    	jle    c003526d <_dtoa_r+0x11ed>
c00347e1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c00347e6:	29 d0                	sub    %edx,%eax
c00347e8:	01 45 a0             	add    %eax,-0x60(%ebp)
c00347eb:	01 c3                	add    %eax,%ebx
c00347ed:	01 45 ac             	add    %eax,-0x54(%ebp)
c00347f0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c00347f3:	85 c0                	test   %eax,%eax
c00347f5:	7e 16                	jle    c003480d <_dtoa_r+0x78d>
c00347f7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00347fb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00347fe:	89 34 24             	mov    %esi,(%esp)
c0034801:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034805:	e8 46 1a 00 00       	call   c0036250 <__lshift>
c003480a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003480d:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034810:	85 c0                	test   %eax,%eax
c0034812:	7e 16                	jle    c003482a <_dtoa_r+0x7aa>
c0034814:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034818:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003481b:	89 34 24             	mov    %esi,(%esp)
c003481e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034822:	e8 29 1a 00 00       	call   c0036250 <__lshift>
c0034827:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003482a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c003482d:	85 c0                	test   %eax,%eax
c003482f:	0f 85 d3 04 00 00    	jne    c0034d08 <_dtoa_r+0xc88>
c0034835:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034839:	0f 8e 11 02 00 00    	jle    c0034a50 <_dtoa_r+0x9d0>
c003483f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034842:	85 c0                	test   %eax,%eax
c0034844:	0f 8f 06 02 00 00    	jg     c0034a50 <_dtoa_r+0x9d0>
c003484a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003484d:	85 c0                	test   %eax,%eax
c003484f:	0f 85 e0 01 00 00    	jne    c0034a35 <_dtoa_r+0x9b5>
c0034855:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034858:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003485f:	00 
c0034860:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034867:	00 
c0034868:	89 34 24             	mov    %esi,(%esp)
c003486b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003486f:	e8 fc 13 00 00       	call   c0035c70 <__multadd>
c0034874:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034877:	89 44 24 04          	mov    %eax,0x4(%esp)
c003487b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003487e:	89 04 24             	mov    %eax,(%esp)
c0034881:	e8 ea 1a 00 00       	call   c0036370 <__mcmp>
c0034886:	85 c0                	test   %eax,%eax
c0034888:	0f 8e a7 01 00 00    	jle    c0034a35 <_dtoa_r+0x9b5>
c003488e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034892:	89 fb                	mov    %edi,%ebx
c0034894:	83 c7 01             	add    $0x1,%edi
c0034897:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003489b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c00348a2:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00348a5:	89 34 24             	mov    %esi,(%esp)
c00348a8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348ac:	e8 9f 13 00 00       	call   c0035c50 <_Bfree>
c00348b1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348b4:	85 c0                	test   %eax,%eax
c00348b6:	74 18                	je     c00348d0 <_dtoa_r+0x850>
c00348b8:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c00348bb:	0f 85 a7 02 00 00    	jne    c0034b68 <_dtoa_r+0xae8>
c00348c1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348c4:	89 34 24             	mov    %esi,(%esp)
c00348c7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348cb:	e8 80 13 00 00       	call   c0035c50 <_Bfree>
c00348d0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00348d3:	89 34 24             	mov    %esi,(%esp)
c00348d6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348da:	e8 71 13 00 00       	call   c0035c50 <_Bfree>
c00348df:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00348e2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c00348e5:	c6 07 00             	movb   $0x0,(%edi)
c00348e8:	83 c0 01             	add    $0x1,%eax
c00348eb:	89 06                	mov    %eax,(%esi)
c00348ed:	8b 45 24             	mov    0x24(%ebp),%eax
c00348f0:	85 c0                	test   %eax,%eax
c00348f2:	0f 84 90 02 00 00    	je     c0034b88 <_dtoa_r+0xb08>
c00348f8:	8b 45 24             	mov    0x24(%ebp),%eax
c00348fb:	89 38                	mov    %edi,(%eax)
c00348fd:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034903:	89 d8                	mov    %ebx,%eax
c0034905:	5b                   	pop    %ebx
c0034906:	5e                   	pop    %esi
c0034907:	5f                   	pop    %edi
c0034908:	5d                   	pop    %ebp
c0034909:	c3                   	ret    
c003490a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034910:	db 45 b8             	fildl  -0x48(%ebp)
c0034913:	df e9                	fucomip %st(1),%st
c0034915:	dd d8                	fstp   %st(0)
c0034917:	7a 06                	jp     c003491f <_dtoa_r+0x89f>
c0034919:	0f 84 cc f8 ff ff    	je     c00341eb <_dtoa_r+0x16b>
c003491f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034923:	e9 c3 f8 ff ff       	jmp    c00341eb <_dtoa_r+0x16b>
c0034928:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003492b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c003492e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0034935:	f7 d8                	neg    %eax
c0034937:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003493a:	e9 0c f9 ff ff       	jmp    c003424b <_dtoa_r+0x1cb>
c003493f:	90                   	nop
c0034940:	f7 d8                	neg    %eax
c0034942:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034945:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c003494c:	e9 e2 f8 ff ff       	jmp    c0034233 <_dtoa_r+0x1b3>
c0034951:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034958:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003495b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034960:	29 d9                	sub    %ebx,%ecx
c0034962:	d3 e0                	shl    %cl,%eax
c0034964:	e9 1b f8 ff ff       	jmp    c0034184 <_dtoa_r+0x104>
c0034969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034970:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034977:	e9 a0 f8 ff ff       	jmp    c003421c <_dtoa_r+0x19c>
c003497c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034980:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034984:	0f 8e fe 06 00 00    	jle    c0035088 <_dtoa_r+0x1008>
c003498a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003498d:	83 e8 01             	sub    $0x1,%eax
c0034990:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034993:	0f 8c 3b 06 00 00    	jl     c0034fd4 <_dtoa_r+0xf54>
c0034999:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003499c:	29 c2                	sub    %eax,%edx
c003499e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c00349a1:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00349a4:	85 c9                	test   %ecx,%ecx
c00349a6:	89 c8                	mov    %ecx,%eax
c00349a8:	0f 88 83 07 00 00    	js     c0035131 <_dtoa_r+0x10b1>
c00349ae:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00349b5:	00 
c00349b6:	89 34 24             	mov    %esi,(%esp)
c00349b9:	89 55 8c             	mov    %edx,-0x74(%ebp)
c00349bc:	01 45 a0             	add    %eax,-0x60(%ebp)
c00349bf:	01 45 ac             	add    %eax,-0x54(%ebp)
c00349c2:	e8 69 15 00 00       	call   c0035f30 <__i2b>
c00349c7:	8b 55 8c             	mov    -0x74(%ebp),%edx
c00349ca:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00349cd:	e9 1e fd ff ff       	jmp    c00346f0 <_dtoa_r+0x670>
c00349d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00349d8:	d9 c1                	fld    %st(1)
c00349da:	b9 02 00 00 00       	mov    $0x2,%ecx
c00349df:	e9 37 fa ff ff       	jmp    c003441b <_dtoa_r+0x39b>
c00349e4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00349e7:	db 45 d4             	fildl  -0x2c(%ebp)
c00349ea:	d8 c9                	fmul   %st(1),%st
c00349ec:	d8 05 dc 99 03 c0    	fadds  0xc00399dc
c00349f2:	dd 5d c0             	fstpl  -0x40(%ebp)
c00349f5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00349fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a00:	d8 25 e0 99 03 c0    	fsubs  0xc00399e0
c0034a06:	dd 45 c0             	fldl   -0x40(%ebp)
c0034a09:	d9 c9                	fxch   %st(1)
c0034a0b:	db e9                	fucomi %st(1),%st
c0034a0d:	0f 87 0d 02 00 00    	ja     c0034c20 <_dtoa_r+0xba0>
c0034a13:	d9 c9                	fxch   %st(1)
c0034a15:	d9 e0                	fchs   
c0034a17:	df e9                	fucomip %st(1),%st
c0034a19:	dd d8                	fstp   %st(0)
c0034a1b:	0f 86 a7 01 00 00    	jbe    c0034bc8 <_dtoa_r+0xb48>
c0034a21:	dd d8                	fstp   %st(0)
c0034a23:	eb 02                	jmp    c0034a27 <_dtoa_r+0x9a7>
c0034a25:	dd d8                	fstp   %st(0)
c0034a27:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034a2e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034a35:	8b 45 18             	mov    0x18(%ebp),%eax
c0034a38:	89 fb                	mov    %edi,%ebx
c0034a3a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a41:	f7 d0                	not    %eax
c0034a43:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034a46:	e9 57 fe ff ff       	jmp    c00348a2 <_dtoa_r+0x822>
c0034a4b:	90                   	nop
c0034a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a50:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034a53:	85 c0                	test   %eax,%eax
c0034a55:	0f 85 c5 03 00 00    	jne    c0034e20 <_dtoa_r+0xda0>
c0034a5b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034a5e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034a63:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034a66:	eb 24                	jmp    c0034a8c <_dtoa_r+0xa0c>
c0034a68:	8b 45 08             	mov    0x8(%ebp),%eax
c0034a6b:	83 c3 01             	add    $0x1,%ebx
c0034a6e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034a72:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034a79:	00 
c0034a7a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034a81:	00 
c0034a82:	89 04 24             	mov    %eax,(%esp)
c0034a85:	e8 e6 11 00 00       	call   c0035c70 <__multadd>
c0034a8a:	89 c6                	mov    %eax,%esi
c0034a8c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a8f:	89 f0                	mov    %esi,%eax
c0034a91:	e8 1a f4 ff ff       	call   c0033eb0 <quorem>
c0034a96:	83 c0 30             	add    $0x30,%eax
c0034a99:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034a9c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034aa0:	7c c6                	jl     c0034a68 <_dtoa_r+0x9e8>
c0034aa2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034aa5:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034aa8:	ba 01 00 00 00       	mov    $0x1,%edx
c0034aad:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034ab0:	8b 75 08             	mov    0x8(%ebp),%esi
c0034ab3:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034aba:	85 c0                	test   %eax,%eax
c0034abc:	0f 4f d0             	cmovg  %eax,%edx
c0034abf:	01 fa                	add    %edi,%edx
c0034ac1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034ac4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034acb:	00 
c0034acc:	89 34 24             	mov    %esi,(%esp)
c0034acf:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034ad2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ad6:	e8 75 17 00 00       	call   c0036250 <__lshift>
c0034adb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034ade:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034ae2:	89 04 24             	mov    %eax,(%esp)
c0034ae5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034ae8:	e8 83 18 00 00       	call   c0036370 <__mcmp>
c0034aed:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034af0:	83 f8 00             	cmp    $0x0,%eax
c0034af3:	0f 8e 41 06 00 00    	jle    c003513a <_dtoa_r+0x10ba>
c0034af9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034afd:	eb 0f                	jmp    c0034b0e <_dtoa_r+0xa8e>
c0034aff:	90                   	nop
c0034b00:	39 c7                	cmp    %eax,%edi
c0034b02:	0f 84 70 05 00 00    	je     c0035078 <_dtoa_r+0xff8>
c0034b08:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034b0c:	89 c2                	mov    %eax,%edx
c0034b0e:	80 f9 39             	cmp    $0x39,%cl
c0034b11:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034b14:	74 ea                	je     c0034b00 <_dtoa_r+0xa80>
c0034b16:	83 c1 01             	add    $0x1,%ecx
c0034b19:	89 fb                	mov    %edi,%ebx
c0034b1b:	88 08                	mov    %cl,(%eax)
c0034b1d:	89 d7                	mov    %edx,%edi
c0034b1f:	e9 7e fd ff ff       	jmp    c00348a2 <_dtoa_r+0x822>
c0034b24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b28:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034b2d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034b30:	01 c3                	add    %eax,%ebx
c0034b32:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034b35:	e9 b6 fc ff ff       	jmp    c00347f0 <_dtoa_r+0x770>
c0034b3a:	ba 01 00 00 00       	mov    $0x1,%edx
c0034b3f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034b46:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034b4d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034b54:	21 c2                	and    %eax,%edx
c0034b56:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034b59:	31 d2                	xor    %edx,%edx
c0034b5b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b62:	e9 62 f8 ff ff       	jmp    c00343c9 <_dtoa_r+0x349>
c0034b67:	90                   	nop
c0034b68:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034b6b:	85 d2                	test   %edx,%edx
c0034b6d:	0f 84 4e fd ff ff    	je     c00348c1 <_dtoa_r+0x841>
c0034b73:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034b76:	89 34 24             	mov    %esi,(%esp)
c0034b79:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b7d:	e8 ce 10 00 00       	call   c0035c50 <_Bfree>
c0034b82:	e9 3a fd ff ff       	jmp    c00348c1 <_dtoa_r+0x841>
c0034b87:	90                   	nop
c0034b88:	89 d8                	mov    %ebx,%eax
c0034b8a:	e9 89 f5 ff ff       	jmp    c0034118 <_dtoa_r+0x98>
c0034b8f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034b92:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034b96:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034b99:	89 34 24             	mov    %esi,(%esp)
c0034b9c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ba0:	e8 8b 15 00 00       	call   c0036130 <__pow5mult>
c0034ba5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034ba8:	e9 c6 fb ff ff       	jmp    c0034773 <_dtoa_r+0x6f3>
c0034bad:	dd d8                	fstp   %st(0)
c0034baf:	dd d8                	fstp   %st(0)
c0034bb1:	eb 15                	jmp    c0034bc8 <_dtoa_r+0xb48>
c0034bb3:	90                   	nop
c0034bb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034bb8:	dd d8                	fstp   %st(0)
c0034bba:	dd d8                	fstp   %st(0)
c0034bbc:	dd d8                	fstp   %st(0)
c0034bbe:	eb 08                	jmp    c0034bc8 <_dtoa_r+0xb48>
c0034bc0:	dd d8                	fstp   %st(0)
c0034bc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034bc8:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034bcb:	e9 cf f9 ff ff       	jmp    c003459f <_dtoa_r+0x51f>
c0034bd0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034bd3:	f7 d8                	neg    %eax
c0034bd5:	0f 84 6a 04 00 00    	je     c0035045 <_dtoa_r+0xfc5>
c0034bdb:	89 c2                	mov    %eax,%edx
c0034bdd:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034be2:	83 e2 0f             	and    $0xf,%edx
c0034be5:	c1 f8 04             	sar    $0x4,%eax
c0034be8:	dd 04 d5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%edx,8)
c0034bef:	85 c0                	test   %eax,%eax
c0034bf1:	d8 c9                	fmul   %st(1),%st
c0034bf3:	0f 84 4a f8 ff ff    	je     c0034443 <_dtoa_r+0x3c3>
c0034bf9:	31 d2                	xor    %edx,%edx
c0034bfb:	90                   	nop
c0034bfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c00:	a8 01                	test   $0x1,%al
c0034c02:	74 0a                	je     c0034c0e <_dtoa_r+0xb8e>
c0034c04:	dc 0c d5 80 9a 03 c0 	fmull  -0x3ffc6580(,%edx,8)
c0034c0b:	83 c1 01             	add    $0x1,%ecx
c0034c0e:	83 c2 01             	add    $0x1,%edx
c0034c11:	d1 f8                	sar    %eax
c0034c13:	75 eb                	jne    c0034c00 <_dtoa_r+0xb80>
c0034c15:	e9 29 f8 ff ff       	jmp    c0034443 <_dtoa_r+0x3c3>
c0034c1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034c20:	dd d8                	fstp   %st(0)
c0034c22:	dd d8                	fstp   %st(0)
c0034c24:	dd d8                	fstp   %st(0)
c0034c26:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034c2d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034c34:	e9 55 fc ff ff       	jmp    c003488e <_dtoa_r+0x80e>
c0034c39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034c40:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034c43:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034c46:	dd 45 c0             	fldl   -0x40(%ebp)
c0034c49:	dc 0c c5 c0 9a 03 c0 	fmull  -0x3ffc6540(,%eax,8)
c0034c50:	d9 c9                	fxch   %st(1)
c0034c52:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034c55:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034c59:	8d 57 01             	lea    0x1(%edi),%edx
c0034c5c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034c5f:	b4 0c                	mov    $0xc,%ah
c0034c61:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c65:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c68:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c6b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c6e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c71:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034c74:	83 c0 30             	add    $0x30,%eax
c0034c77:	83 f9 01             	cmp    $0x1,%ecx
c0034c7a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c7d:	de e9                	fsubrp %st,%st(1)
c0034c7f:	88 07                	mov    %al,(%edi)
c0034c81:	89 d0                	mov    %edx,%eax
c0034c83:	74 37                	je     c0034cbc <_dtoa_r+0xc3c>
c0034c85:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c0034c8b:	eb 05                	jmp    c0034c92 <_dtoa_r+0xc12>
c0034c8d:	8d 76 00             	lea    0x0(%esi),%esi
c0034c90:	d9 c9                	fxch   %st(1)
c0034c92:	dc c9                	fmul   %st,%st(1)
c0034c94:	d9 c9                	fxch   %st(1)
c0034c96:	83 c0 01             	add    $0x1,%eax
c0034c99:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c9c:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c9f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034ca2:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034ca5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034ca8:	83 c1 30             	add    $0x30,%ecx
c0034cab:	39 d8                	cmp    %ebx,%eax
c0034cad:	db 45 d4             	fildl  -0x2c(%ebp)
c0034cb0:	de e9                	fsubrp %st,%st(1)
c0034cb2:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034cb5:	75 d9                	jne    c0034c90 <_dtoa_r+0xc10>
c0034cb7:	dd d9                	fstp   %st(1)
c0034cb9:	03 55 88             	add    -0x78(%ebp),%edx
c0034cbc:	d9 05 e4 99 03 c0    	flds   0xc00399e4
c0034cc2:	d9 c2                	fld    %st(2)
c0034cc4:	d8 c1                	fadd   %st(1),%st
c0034cc6:	d9 ca                	fxch   %st(2)
c0034cc8:	db ea                	fucomi %st(2),%st
c0034cca:	dd da                	fstp   %st(2)
c0034ccc:	0f 86 7f 03 00 00    	jbe    c0035051 <_dtoa_r+0xfd1>
c0034cd2:	dd d8                	fstp   %st(0)
c0034cd4:	dd d8                	fstp   %st(0)
c0034cd6:	dd d8                	fstp   %st(0)
c0034cd8:	dd d8                	fstp   %st(0)
c0034cda:	89 fb                	mov    %edi,%ebx
c0034cdc:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034ce0:	89 d7                	mov    %edx,%edi
c0034ce2:	e9 d7 f9 ff ff       	jmp    c00346be <_dtoa_r+0x63e>
c0034ce7:	90                   	nop
c0034ce8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034ceb:	8b 41 10             	mov    0x10(%ecx),%eax
c0034cee:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034cf2:	89 04 24             	mov    %eax,(%esp)
c0034cf5:	e8 56 11 00 00       	call   c0035e50 <__hi0bits>
c0034cfa:	ba 20 00 00 00       	mov    $0x20,%edx
c0034cff:	29 c2                	sub    %eax,%edx
c0034d01:	e9 bb fa ff ff       	jmp    c00347c1 <_dtoa_r+0x741>
c0034d06:	66 90                	xchg   %ax,%ax
c0034d08:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034d0b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d0f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d12:	89 04 24             	mov    %eax,(%esp)
c0034d15:	e8 56 16 00 00       	call   c0036370 <__mcmp>
c0034d1a:	85 c0                	test   %eax,%eax
c0034d1c:	0f 89 13 fb ff ff    	jns    c0034835 <_dtoa_r+0x7b5>
c0034d22:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d25:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034d2c:	00 
c0034d2d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034d34:	00 
c0034d35:	89 34 24             	mov    %esi,(%esp)
c0034d38:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d3c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034d40:	e8 2b 0f 00 00       	call   c0035c70 <__multadd>
c0034d45:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034d48:	85 c9                	test   %ecx,%ecx
c0034d4a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034d4d:	0f 85 8d 00 00 00    	jne    c0034de0 <_dtoa_r+0xd60>
c0034d53:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034d57:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034d5a:	7f 0a                	jg     c0034d66 <_dtoa_r+0xce6>
c0034d5c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034d60:	0f 8f ff 04 00 00    	jg     c0035265 <_dtoa_r+0x11e5>
c0034d66:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034d69:	e9 ed fc ff ff       	jmp    c0034a5b <_dtoa_r+0x9db>
c0034d6e:	66 90                	xchg   %ax,%ax
c0034d70:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034d73:	85 db                	test   %ebx,%ebx
c0034d75:	0f 85 aa fc ff ff    	jne    c0034a25 <_dtoa_r+0x9a5>
c0034d7b:	d8 0d e0 99 03 c0    	fmuls  0xc00399e0
c0034d81:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034d88:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034d8f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034d92:	d9 c9                	fxch   %st(1)
c0034d94:	df e9                	fucomip %st(1),%st
c0034d96:	dd d8                	fstp   %st(0)
c0034d98:	0f 83 97 fc ff ff    	jae    c0034a35 <_dtoa_r+0x9b5>
c0034d9e:	e9 eb fa ff ff       	jmp    c003488e <_dtoa_r+0x80e>
c0034da3:	90                   	nop
c0034da4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034da8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034dab:	85 c0                	test   %eax,%eax
c0034dad:	0f 85 fe f9 ff ff    	jne    c00347b1 <_dtoa_r+0x731>
c0034db3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034db6:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034dbb:	0f 85 f0 f9 ff ff    	jne    c00347b1 <_dtoa_r+0x731>
c0034dc1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034dc6:	0f 84 e5 f9 ff ff    	je     c00347b1 <_dtoa_r+0x731>
c0034dcc:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034dd0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034dd4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034ddb:	e9 d1 f9 ff ff       	jmp    c00347b1 <_dtoa_r+0x731>
c0034de0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034de3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034dea:	00 
c0034deb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034df2:	00 
c0034df3:	89 34 24             	mov    %esi,(%esp)
c0034df6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034dfa:	e8 71 0e 00 00       	call   c0035c70 <__multadd>
c0034dff:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034e02:	85 d2                	test   %edx,%edx
c0034e04:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e07:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034e0a:	7f 0a                	jg     c0034e16 <_dtoa_r+0xd96>
c0034e0c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034e10:	0f 8f 4f 04 00 00    	jg     c0035265 <_dtoa_r+0x11e5>
c0034e16:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034e19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034e20:	85 db                	test   %ebx,%ebx
c0034e22:	7e 16                	jle    c0034e3a <_dtoa_r+0xdba>
c0034e24:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e27:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034e2b:	89 34 24             	mov    %esi,(%esp)
c0034e2e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e32:	e8 19 14 00 00       	call   c0036250 <__lshift>
c0034e37:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e3a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034e3d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e40:	85 db                	test   %ebx,%ebx
c0034e42:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e45:	0f 85 11 03 00 00    	jne    c003515c <_dtoa_r+0x10dc>
c0034e4b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034e4e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034e51:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034e54:	01 f8                	add    %edi,%eax
c0034e56:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034e59:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034e5c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e5f:	83 e0 01             	and    $0x1,%eax
c0034e62:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034e65:	eb 2e                	jmp    c0034e95 <_dtoa_r+0xe15>
c0034e67:	90                   	nop
c0034e68:	e8 03 0e 00 00       	call   c0035c70 <__multadd>
c0034e6d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e74:	00 
c0034e75:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e7c:	00 
c0034e7d:	89 34 24             	mov    %esi,(%esp)
c0034e80:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e83:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034e86:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e8a:	e8 e1 0d 00 00       	call   c0035c70 <__multadd>
c0034e8f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e92:	83 c3 01             	add    $0x1,%ebx
c0034e95:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034e98:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034e9b:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034e9e:	89 f8                	mov    %edi,%eax
c0034ea0:	e8 0b f0 ff ff       	call   c0033eb0 <quorem>
c0034ea5:	89 3c 24             	mov    %edi,(%esp)
c0034ea8:	8d 48 30             	lea    0x30(%eax),%ecx
c0034eab:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034eae:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034eb1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034eb4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034eb8:	e8 b3 14 00 00       	call   c0036370 <__mcmp>
c0034ebd:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034ec0:	89 34 24             	mov    %esi,(%esp)
c0034ec3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034ec7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034eca:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034ecd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ed1:	e8 ea 14 00 00       	call   c00363c0 <__mdiff>
c0034ed6:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034ed9:	89 c2                	mov    %eax,%edx
c0034edb:	85 c9                	test   %ecx,%ecx
c0034edd:	0f 85 c5 00 00 00    	jne    c0034fa8 <_dtoa_r+0xf28>
c0034ee3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ee7:	89 3c 24             	mov    %edi,(%esp)
c0034eea:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034eed:	e8 7e 14 00 00       	call   c0036370 <__mcmp>
c0034ef2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034ef5:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034ef9:	89 34 24             	mov    %esi,(%esp)
c0034efc:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034eff:	e8 4c 0d 00 00       	call   c0035c50 <_Bfree>
c0034f04:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034f07:	89 c1                	mov    %eax,%ecx
c0034f09:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f0c:	75 0b                	jne    c0034f19 <_dtoa_r+0xe99>
c0034f0e:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034f11:	85 d2                	test   %edx,%edx
c0034f13:	0f 84 fb 02 00 00    	je     c0035214 <_dtoa_r+0x1194>
c0034f19:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034f1c:	85 d2                	test   %edx,%edx
c0034f1e:	0f 88 7f 01 00 00    	js     c00350a3 <_dtoa_r+0x1023>
c0034f24:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034f27:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f2a:	75 0b                	jne    c0034f37 <_dtoa_r+0xeb7>
c0034f2c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034f2f:	85 c9                	test   %ecx,%ecx
c0034f31:	0f 84 6c 01 00 00    	je     c00350a3 <_dtoa_r+0x1023>
c0034f37:	85 c0                	test   %eax,%eax
c0034f39:	0f 8f 82 02 00 00    	jg     c00351c1 <_dtoa_r+0x1141>
c0034f3f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034f43:	89 da                	mov    %ebx,%edx
c0034f45:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034f48:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034f4b:	0f 84 8d 02 00 00    	je     c00351de <_dtoa_r+0x115e>
c0034f51:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034f55:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f5c:	00 
c0034f5d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f64:	00 
c0034f65:	89 34 24             	mov    %esi,(%esp)
c0034f68:	e8 03 0d 00 00       	call   c0035c70 <__multadd>
c0034f6d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f74:	00 
c0034f75:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f7c:	00 
c0034f7d:	89 34 24             	mov    %esi,(%esp)
c0034f80:	89 c7                	mov    %eax,%edi
c0034f82:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f85:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034f88:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034f8b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f8f:	0f 85 d3 fe ff ff    	jne    c0034e68 <_dtoa_r+0xde8>
c0034f95:	e8 d6 0c 00 00       	call   c0035c70 <__multadd>
c0034f9a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034f9d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034fa0:	e9 ed fe ff ff       	jmp    c0034e92 <_dtoa_r+0xe12>
c0034fa5:	8d 76 00             	lea    0x0(%esi),%esi
c0034fa8:	b8 01 00 00 00       	mov    $0x1,%eax
c0034fad:	e9 43 ff ff ff       	jmp    c0034ef5 <_dtoa_r+0xe75>
c0034fb2:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034fb9:	e9 d2 f2 ff ff       	jmp    c0034290 <_dtoa_r+0x210>
c0034fbe:	0f 85 87 f6 ff ff    	jne    c003464b <_dtoa_r+0x5cb>
c0034fc4:	dd d8                	fstp   %st(0)
c0034fc6:	dd d8                	fstp   %st(0)
c0034fc8:	dd d8                	fstp   %st(0)
c0034fca:	89 fb                	mov    %edi,%ebx
c0034fcc:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034fcf:	e9 fc f8 ff ff       	jmp    c00348d0 <_dtoa_r+0x850>
c0034fd4:	89 c2                	mov    %eax,%edx
c0034fd6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0034fd9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034fdc:	01 55 94             	add    %edx,-0x6c(%ebp)
c0034fdf:	31 d2                	xor    %edx,%edx
c0034fe1:	e9 b8 f9 ff ff       	jmp    c003499e <_dtoa_r+0x91e>
c0034fe6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034fe9:	85 c0                	test   %eax,%eax
c0034feb:	0f 84 f3 f9 ff ff    	je     c00349e4 <_dtoa_r+0x964>
c0034ff1:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034ff4:	85 c0                	test   %eax,%eax
c0034ff6:	0f 8e c4 fb ff ff    	jle    c0034bc0 <_dtoa_r+0xb40>
c0034ffc:	d8 0d d8 99 03 c0    	fmuls  0xc00399d8
c0035002:	83 c1 01             	add    $0x1,%ecx
c0035005:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035008:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c003500b:	89 c1                	mov    %eax,%ecx
c003500d:	83 eb 01             	sub    $0x1,%ebx
c0035010:	db 45 d4             	fildl  -0x2c(%ebp)
c0035013:	d8 c9                	fmul   %st(1),%st
c0035015:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0035018:	d8 05 dc 99 03 c0    	fadds  0xc00399dc
c003501e:	dd 5d c0             	fstpl  -0x40(%ebp)
c0035021:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0035028:	e9 53 f4 ff ff       	jmp    c0034480 <_dtoa_r+0x400>
c003502d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035030:	c6 03 30             	movb   $0x30,(%ebx)
c0035033:	83 c0 01             	add    $0x1,%eax
c0035036:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0035039:	b8 31 00 00 00       	mov    $0x31,%eax
c003503e:	88 02                	mov    %al,(%edx)
c0035040:	e9 8b f8 ff ff       	jmp    c00348d0 <_dtoa_r+0x850>
c0035045:	d9 c0                	fld    %st(0)
c0035047:	b9 02 00 00 00       	mov    $0x2,%ecx
c003504c:	e9 f2 f3 ff ff       	jmp    c0034443 <_dtoa_r+0x3c3>
c0035051:	de e2                	fsubp  %st,%st(2)
c0035053:	d9 c9                	fxch   %st(1)
c0035055:	df e9                	fucomip %st(1),%st
c0035057:	dd d8                	fstp   %st(0)
c0035059:	0f 86 69 fb ff ff    	jbe    c0034bc8 <_dtoa_r+0xb48>
c003505f:	dd d8                	fstp   %st(0)
c0035061:	eb 07                	jmp    c003506a <_dtoa_r+0xfea>
c0035063:	90                   	nop
c0035064:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035068:	89 c2                	mov    %eax,%edx
c003506a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003506e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035071:	74 f5                	je     c0035068 <_dtoa_r+0xfe8>
c0035073:	e9 d9 f4 ff ff       	jmp    c0034551 <_dtoa_r+0x4d1>
c0035078:	c6 07 31             	movb   $0x31,(%edi)
c003507b:	89 fb                	mov    %edi,%ebx
c003507d:	89 d7                	mov    %edx,%edi
c003507f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035083:	e9 1a f8 ff ff       	jmp    c00348a2 <_dtoa_r+0x822>
c0035088:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003508b:	85 d2                	test   %edx,%edx
c003508d:	0f 84 1b 01 00 00    	je     c00351ae <_dtoa_r+0x112e>
c0035093:	05 33 04 00 00       	add    $0x433,%eax
c0035098:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003509b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003509e:	e9 0b f9 ff ff       	jmp    c00349ae <_dtoa_r+0x92e>
c00350a3:	85 c0                	test   %eax,%eax
c00350a5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00350a8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00350ab:	7e 45                	jle    c00350f2 <_dtoa_r+0x1072>
c00350ad:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00350b0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c00350b7:	00 
c00350b8:	89 34 24             	mov    %esi,(%esp)
c00350bb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00350bf:	e8 8c 11 00 00       	call   c0036250 <__lshift>
c00350c4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c00350c7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00350cb:	89 04 24             	mov    %eax,(%esp)
c00350ce:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00350d1:	e8 9a 12 00 00       	call   c0036370 <__mcmp>
c00350d6:	83 f8 00             	cmp    $0x0,%eax
c00350d9:	0f 8e 5b 01 00 00    	jle    c003523a <_dtoa_r+0x11ba>
c00350df:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00350e3:	0f 84 0c 01 00 00    	je     c00351f5 <_dtoa_r+0x1175>
c00350e9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00350ec:	83 c0 31             	add    $0x31,%eax
c00350ef:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00350f2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00350f5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00350f9:	89 cb                	mov    %ecx,%ebx
c00350fb:	88 03                	mov    %al,(%ebx)
c00350fd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035100:	89 fb                	mov    %edi,%ebx
c0035102:	8d 79 01             	lea    0x1(%ecx),%edi
c0035105:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035108:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003510b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003510e:	e9 8f f7 ff ff       	jmp    c00348a2 <_dtoa_r+0x822>
c0035113:	dd d8                	fstp   %st(0)
c0035115:	dd d8                	fstp   %st(0)
c0035117:	dd d8                	fstp   %st(0)
c0035119:	eb 0d                	jmp    c0035128 <_dtoa_r+0x10a8>
c003511b:	90                   	nop
c003511c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035120:	dd d8                	fstp   %st(0)
c0035122:	dd d8                	fstp   %st(0)
c0035124:	dd d8                	fstp   %st(0)
c0035126:	dd d8                	fstp   %st(0)
c0035128:	89 fb                	mov    %edi,%ebx
c003512a:	89 d7                	mov    %edx,%edi
c003512c:	e9 8d f5 ff ff       	jmp    c00346be <_dtoa_r+0x63e>
c0035131:	29 cb                	sub    %ecx,%ebx
c0035133:	31 c0                	xor    %eax,%eax
c0035135:	e9 74 f8 ff ff       	jmp    c00349ae <_dtoa_r+0x92e>
c003513a:	75 0e                	jne    c003514a <_dtoa_r+0x10ca>
c003513c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035140:	74 08                	je     c003514a <_dtoa_r+0x10ca>
c0035142:	e9 b2 f9 ff ff       	jmp    c0034af9 <_dtoa_r+0xa79>
c0035147:	90                   	nop
c0035148:	89 c2                	mov    %eax,%edx
c003514a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003514e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035151:	74 f5                	je     c0035148 <_dtoa_r+0x10c8>
c0035153:	89 fb                	mov    %edi,%ebx
c0035155:	89 d7                	mov    %edx,%edi
c0035157:	e9 46 f7 ff ff       	jmp    c00348a2 <_dtoa_r+0x822>
c003515c:	8b 40 04             	mov    0x4(%eax),%eax
c003515f:	89 34 24             	mov    %esi,(%esp)
c0035162:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035166:	e8 45 0a 00 00       	call   c0035bb0 <_Balloc>
c003516b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003516e:	89 c3                	mov    %eax,%ebx
c0035170:	8b 41 10             	mov    0x10(%ecx),%eax
c0035173:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003517a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003517e:	89 c8                	mov    %ecx,%eax
c0035180:	83 c0 0c             	add    $0xc,%eax
c0035183:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035187:	8d 43 0c             	lea    0xc(%ebx),%eax
c003518a:	89 04 24             	mov    %eax,(%esp)
c003518d:	e8 62 cc ff ff       	call   c0031df4 <memcpy>
c0035192:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035199:	00 
c003519a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003519e:	89 34 24             	mov    %esi,(%esp)
c00351a1:	e8 aa 10 00 00       	call   c0036250 <__lshift>
c00351a6:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00351a9:	e9 9d fc ff ff       	jmp    c0034e4b <_dtoa_r+0xdcb>
c00351ae:	b8 36 00 00 00       	mov    $0x36,%eax
c00351b3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00351b6:	2b 45 e0             	sub    -0x20(%ebp),%eax
c00351b9:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00351bc:	e9 ed f7 ff ff       	jmp    c00349ae <_dtoa_r+0x92e>
c00351c1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00351c5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351c8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351cb:	74 28                	je     c00351f5 <_dtoa_r+0x1175>
c00351cd:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00351d1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00351d4:	83 c0 01             	add    $0x1,%eax
c00351d7:	89 cb                	mov    %ecx,%ebx
c00351d9:	e9 1d ff ff ff       	jmp    c00350fb <_dtoa_r+0x107b>
c00351de:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351e1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351e4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351e7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351ea:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351ed:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351f0:	e9 cc f8 ff ff       	jmp    c0034ac1 <_dtoa_r+0xa41>
c00351f5:	8b 45 98             	mov    -0x68(%ebp),%eax
c00351f8:	b9 39 00 00 00       	mov    $0x39,%ecx
c00351fd:	8d 50 01             	lea    0x1(%eax),%edx
c0035200:	c6 00 39             	movb   $0x39,(%eax)
c0035203:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035206:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035209:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003520c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003520f:	e9 fa f8 ff ff       	jmp    c0034b0e <_dtoa_r+0xa8e>
c0035214:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0035217:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c003521a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003521d:	83 fb 39             	cmp    $0x39,%ebx
c0035220:	74 d3                	je     c00351f5 <_dtoa_r+0x1175>
c0035222:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035225:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0035228:	83 c0 31             	add    $0x31,%eax
c003522b:	85 c9                	test   %ecx,%ecx
c003522d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035230:	0f 4e c3             	cmovle %ebx,%eax
c0035233:	89 cb                	mov    %ecx,%ebx
c0035235:	e9 c1 fe ff ff       	jmp    c00350fb <_dtoa_r+0x107b>
c003523a:	0f 85 b2 fe ff ff    	jne    c00350f2 <_dtoa_r+0x1072>
c0035240:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035244:	0f 84 a8 fe ff ff    	je     c00350f2 <_dtoa_r+0x1072>
c003524a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035250:	e9 8a fe ff ff       	jmp    c00350df <_dtoa_r+0x105f>
c0035255:	0f 85 c7 f3 ff ff    	jne    c0034622 <_dtoa_r+0x5a2>
c003525b:	dd d8                	fstp   %st(0)
c003525d:	dd d8                	fstp   %st(0)
c003525f:	90                   	nop
c0035260:	e9 65 fd ff ff       	jmp    c0034fca <_dtoa_r+0xf4a>
c0035265:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035268:	e9 dd f5 ff ff       	jmp    c003484a <_dtoa_r+0x7ca>
c003526d:	8d 76 00             	lea    0x0(%esi),%esi
c0035270:	0f 84 7a f5 ff ff    	je     c00347f0 <_dtoa_r+0x770>
c0035276:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003527b:	29 d0                	sub    %edx,%eax
c003527d:	e9 ab f8 ff ff       	jmp    c0034b2d <_dtoa_r+0xaad>
c0035282:	b8 01 00 00 00       	mov    $0x1,%eax
c0035287:	e9 d9 ef ff ff       	jmp    c0034265 <_dtoa_r+0x1e5>
c003528c:	31 d2                	xor    %edx,%edx
c003528e:	e9 36 f1 ff ff       	jmp    c00343c9 <_dtoa_r+0x349>
c0035293:	66 90                	xchg   %ax,%ax
c0035295:	66 90                	xchg   %ax,%ax
c0035297:	66 90                	xchg   %ax,%ax
c0035299:	66 90                	xchg   %ax,%ax
c003529b:	66 90                	xchg   %ax,%ax
c003529d:	66 90                	xchg   %ax,%ax
c003529f:	90                   	nop

c00352a0 <_setlocale_r>:
c00352a0:	55                   	push   %ebp
c00352a1:	89 e5                	mov    %esp,%ebp
c00352a3:	53                   	push   %ebx
c00352a4:	83 ec 14             	sub    $0x14,%esp
c00352a7:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00352aa:	85 db                	test   %ebx,%ebx
c00352ac:	74 14                	je     c00352c2 <_setlocale_r+0x22>
c00352ae:	c7 44 24 04 00 9a 03 	movl   $0xc0039a00,0x4(%esp)
c00352b5:	c0 
c00352b6:	89 1c 24             	mov    %ebx,(%esp)
c00352b9:	e8 82 17 00 00       	call   c0036a40 <strcmp>
c00352be:	85 c0                	test   %eax,%eax
c00352c0:	75 0e                	jne    c00352d0 <_setlocale_r+0x30>
c00352c2:	83 c4 14             	add    $0x14,%esp
c00352c5:	b8 fc 97 03 c0       	mov    $0xc00397fc,%eax
c00352ca:	5b                   	pop    %ebx
c00352cb:	5d                   	pop    %ebp
c00352cc:	c3                   	ret    
c00352cd:	8d 76 00             	lea    0x0(%esi),%esi
c00352d0:	c7 44 24 04 fc 97 03 	movl   $0xc00397fc,0x4(%esp)
c00352d7:	c0 
c00352d8:	89 1c 24             	mov    %ebx,(%esp)
c00352db:	e8 60 17 00 00       	call   c0036a40 <strcmp>
c00352e0:	85 c0                	test   %eax,%eax
c00352e2:	74 de                	je     c00352c2 <_setlocale_r+0x22>
c00352e4:	89 1c 24             	mov    %ebx,(%esp)
c00352e7:	c7 44 24 04 36 98 03 	movl   $0xc0039836,0x4(%esp)
c00352ee:	c0 
c00352ef:	e8 4c 17 00 00       	call   c0036a40 <strcmp>
c00352f4:	89 c2                	mov    %eax,%edx
c00352f6:	31 c0                	xor    %eax,%eax
c00352f8:	85 d2                	test   %edx,%edx
c00352fa:	ba fc 97 03 c0       	mov    $0xc00397fc,%edx
c00352ff:	0f 44 c2             	cmove  %edx,%eax
c0035302:	83 c4 14             	add    $0x14,%esp
c0035305:	5b                   	pop    %ebx
c0035306:	5d                   	pop    %ebp
c0035307:	c3                   	ret    
c0035308:	90                   	nop
c0035309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035310 <__locale_charset>:
c0035310:	55                   	push   %ebp
c0035311:	b8 c0 d4 03 c0       	mov    $0xc003d4c0,%eax
c0035316:	89 e5                	mov    %esp,%ebp
c0035318:	5d                   	pop    %ebp
c0035319:	c3                   	ret    
c003531a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035320 <__locale_mb_cur_max>:
c0035320:	55                   	push   %ebp
c0035321:	a1 18 d5 03 c0       	mov    0xc003d518,%eax
c0035326:	89 e5                	mov    %esp,%ebp
c0035328:	5d                   	pop    %ebp
c0035329:	c3                   	ret    
c003532a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035330 <__locale_msgcharset>:
c0035330:	55                   	push   %ebp
c0035331:	b8 a0 d4 03 c0       	mov    $0xc003d4a0,%eax
c0035336:	89 e5                	mov    %esp,%ebp
c0035338:	5d                   	pop    %ebp
c0035339:	c3                   	ret    
c003533a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035340 <__locale_cjk_lang>:
c0035340:	55                   	push   %ebp
c0035341:	31 c0                	xor    %eax,%eax
c0035343:	89 e5                	mov    %esp,%ebp
c0035345:	5d                   	pop    %ebp
c0035346:	c3                   	ret    
c0035347:	89 f6                	mov    %esi,%esi
c0035349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035350 <_localeconv_r>:
c0035350:	55                   	push   %ebp
c0035351:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035356:	89 e5                	mov    %esp,%ebp
c0035358:	5d                   	pop    %ebp
c0035359:	c3                   	ret    
c003535a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035360 <setlocale>:
c0035360:	55                   	push   %ebp
c0035361:	89 e5                	mov    %esp,%ebp
c0035363:	83 ec 18             	sub    $0x18,%esp
c0035366:	e8 35 cc ff ff       	call   c0031fa0 <__getreent>
c003536b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003536e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035372:	8b 55 08             	mov    0x8(%ebp),%edx
c0035375:	89 04 24             	mov    %eax,(%esp)
c0035378:	89 54 24 04          	mov    %edx,0x4(%esp)
c003537c:	e8 1f ff ff ff       	call   c00352a0 <_setlocale_r>
c0035381:	c9                   	leave  
c0035382:	c3                   	ret    
c0035383:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035390 <localeconv>:
c0035390:	55                   	push   %ebp
c0035391:	89 e5                	mov    %esp,%ebp
c0035393:	83 ec 08             	sub    $0x8,%esp
c0035396:	e8 05 cc ff ff       	call   c0031fa0 <__getreent>
c003539b:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c00353a0:	c9                   	leave  
c00353a1:	c3                   	ret    
c00353a2:	66 90                	xchg   %ax,%ax
c00353a4:	66 90                	xchg   %ax,%ax
c00353a6:	66 90                	xchg   %ax,%ax
c00353a8:	66 90                	xchg   %ax,%ax
c00353aa:	66 90                	xchg   %ax,%ax
c00353ac:	66 90                	xchg   %ax,%ax
c00353ae:	66 90                	xchg   %ax,%ax

c00353b0 <_malloc_r>:
c00353b0:	55                   	push   %ebp
c00353b1:	89 e5                	mov    %esp,%ebp
c00353b3:	57                   	push   %edi
c00353b4:	56                   	push   %esi
c00353b5:	53                   	push   %ebx
c00353b6:	83 ec 2c             	sub    $0x2c,%esp
c00353b9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00353bc:	8d 50 0b             	lea    0xb(%eax),%edx
c00353bf:	83 fa 16             	cmp    $0x16,%edx
c00353c2:	76 6c                	jbe    c0035430 <_malloc_r+0x80>
c00353c4:	89 d7                	mov    %edx,%edi
c00353c6:	83 e7 f8             	and    $0xfffffff8,%edi
c00353c9:	89 fe                	mov    %edi,%esi
c00353cb:	c1 ee 1f             	shr    $0x1f,%esi
c00353ce:	39 c7                	cmp    %eax,%edi
c00353d0:	8b 45 08             	mov    0x8(%ebp),%eax
c00353d3:	89 f2                	mov    %esi,%edx
c00353d5:	72 67                	jb     c003543e <_malloc_r+0x8e>
c00353d7:	84 d2                	test   %dl,%dl
c00353d9:	75 63                	jne    c003543e <_malloc_r+0x8e>
c00353db:	89 04 24             	mov    %eax,(%esp)
c00353de:	e8 ad 07 00 00       	call   c0035b90 <__malloc_lock>
c00353e3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c00353e9:	77 65                	ja     c0035450 <_malloc_r+0xa0>
c00353eb:	89 fa                	mov    %edi,%edx
c00353ed:	c1 ea 03             	shr    $0x3,%edx
c00353f0:	8d 04 d5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%edx,8),%eax
c00353f7:	8b 58 0c             	mov    0xc(%eax),%ebx
c00353fa:	39 c3                	cmp    %eax,%ebx
c00353fc:	0f 84 3e 05 00 00    	je     c0035940 <_malloc_r+0x590>
c0035402:	8b 43 04             	mov    0x4(%ebx),%eax
c0035405:	83 e0 fc             	and    $0xfffffffc,%eax
c0035408:	8b 53 0c             	mov    0xc(%ebx),%edx
c003540b:	8b 4b 08             	mov    0x8(%ebx),%ecx
c003540e:	89 51 0c             	mov    %edx,0xc(%ecx)
c0035411:	89 4a 08             	mov    %ecx,0x8(%edx)
c0035414:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035419:	8b 45 08             	mov    0x8(%ebp),%eax
c003541c:	89 04 24             	mov    %eax,(%esp)
c003541f:	e8 7c 07 00 00       	call   c0035ba0 <__malloc_unlock>
c0035424:	8d 43 08             	lea    0x8(%ebx),%eax
c0035427:	83 c4 2c             	add    $0x2c,%esp
c003542a:	5b                   	pop    %ebx
c003542b:	5e                   	pop    %esi
c003542c:	5f                   	pop    %edi
c003542d:	5d                   	pop    %ebp
c003542e:	c3                   	ret    
c003542f:	90                   	nop
c0035430:	bf 10 00 00 00       	mov    $0x10,%edi
c0035435:	31 d2                	xor    %edx,%edx
c0035437:	39 c7                	cmp    %eax,%edi
c0035439:	8b 45 08             	mov    0x8(%ebp),%eax
c003543c:	73 99                	jae    c00353d7 <_malloc_r+0x27>
c003543e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035444:	83 c4 2c             	add    $0x2c,%esp
c0035447:	31 c0                	xor    %eax,%eax
c0035449:	5b                   	pop    %ebx
c003544a:	5e                   	pop    %esi
c003544b:	5f                   	pop    %edi
c003544c:	5d                   	pop    %ebp
c003544d:	c3                   	ret    
c003544e:	66 90                	xchg   %ax,%ax
c0035450:	89 fe                	mov    %edi,%esi
c0035452:	c1 ee 09             	shr    $0x9,%esi
c0035455:	85 f6                	test   %esi,%esi
c0035457:	0f 84 ab 01 00 00    	je     c0035608 <_malloc_r+0x258>
c003545d:	83 fe 04             	cmp    $0x4,%esi
c0035460:	0f 87 8a 03 00 00    	ja     c00357f0 <_malloc_r+0x440>
c0035466:	89 fe                	mov    %edi,%esi
c0035468:	c1 ee 06             	shr    $0x6,%esi
c003546b:	83 c6 38             	add    $0x38,%esi
c003546e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035471:	8d 0c 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%ecx
c0035478:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003547b:	39 d9                	cmp    %ebx,%ecx
c003547d:	75 18                	jne    c0035497 <_malloc_r+0xe7>
c003547f:	eb 28                	jmp    c00354a9 <_malloc_r+0xf9>
c0035481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035488:	85 d2                	test   %edx,%edx
c003548a:	0f 89 78 ff ff ff    	jns    c0035408 <_malloc_r+0x58>
c0035490:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035493:	39 d9                	cmp    %ebx,%ecx
c0035495:	74 12                	je     c00354a9 <_malloc_r+0xf9>
c0035497:	8b 43 04             	mov    0x4(%ebx),%eax
c003549a:	83 e0 fc             	and    $0xfffffffc,%eax
c003549d:	89 c2                	mov    %eax,%edx
c003549f:	29 fa                	sub    %edi,%edx
c00354a1:	83 fa 0f             	cmp    $0xf,%edx
c00354a4:	7e e2                	jle    c0035488 <_malloc_r+0xd8>
c00354a6:	83 ee 01             	sub    $0x1,%esi
c00354a9:	8d 46 01             	lea    0x1(%esi),%eax
c00354ac:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00354af:	8b 1d 50 d5 03 c0    	mov    0xc003d550,%ebx
c00354b5:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c00354ba:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c00354c0:	74 6b                	je     c003552d <_malloc_r+0x17d>
c00354c2:	8b 73 04             	mov    0x4(%ebx),%esi
c00354c5:	83 e6 fc             	and    $0xfffffffc,%esi
c00354c8:	89 f0                	mov    %esi,%eax
c00354ca:	29 f8                	sub    %edi,%eax
c00354cc:	83 f8 0f             	cmp    $0xf,%eax
c00354cf:	0f 8f a3 03 00 00    	jg     c0035878 <_malloc_r+0x4c8>
c00354d5:	85 c0                	test   %eax,%eax
c00354d7:	c7 05 54 d5 03 c0 48 	movl   $0xc003d548,0xc003d554
c00354de:	d5 03 c0 
c00354e1:	c7 05 50 d5 03 c0 48 	movl   $0xc003d548,0xc003d550
c00354e8:	d5 03 c0 
c00354eb:	0f 89 27 01 00 00    	jns    c0035618 <_malloc_r+0x268>
c00354f1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c00354f7:	0f 87 1b 03 00 00    	ja     c0035818 <_malloc_r+0x468>
c00354fd:	c1 ee 03             	shr    $0x3,%esi
c0035500:	b8 01 00 00 00       	mov    $0x1,%eax
c0035505:	89 f1                	mov    %esi,%ecx
c0035507:	8d 14 f5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%esi,8),%edx
c003550e:	c1 f9 02             	sar    $0x2,%ecx
c0035511:	d3 e0                	shl    %cl,%eax
c0035513:	8b 4a 08             	mov    0x8(%edx),%ecx
c0035516:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c003551c:	89 53 0c             	mov    %edx,0xc(%ebx)
c003551f:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0035522:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035527:	89 5a 08             	mov    %ebx,0x8(%edx)
c003552a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c003552d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035530:	be 01 00 00 00       	mov    $0x1,%esi
c0035535:	c1 f9 02             	sar    $0x2,%ecx
c0035538:	d3 e6                	shl    %cl,%esi
c003553a:	39 c6                	cmp    %eax,%esi
c003553c:	0f 87 f6 00 00 00    	ja     c0035638 <_malloc_r+0x288>
c0035542:	85 f0                	test   %esi,%eax
c0035544:	0f 85 76 03 00 00    	jne    c00358c0 <_malloc_r+0x510>
c003554a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003554d:	01 f6                	add    %esi,%esi
c003554f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035552:	85 f0                	test   %esi,%eax
c0035554:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035557:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003555a:	0f 85 60 03 00 00    	jne    c00358c0 <_malloc_r+0x510>
c0035560:	89 ca                	mov    %ecx,%edx
c0035562:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035568:	01 f6                	add    %esi,%esi
c003556a:	83 c2 04             	add    $0x4,%edx
c003556d:	85 f0                	test   %esi,%eax
c003556f:	74 f7                	je     c0035568 <_malloc_r+0x1b8>
c0035571:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035574:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035577:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003557a:	8d 34 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%esi
c0035581:	89 f1                	mov    %esi,%ecx
c0035583:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035586:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035589:	39 d9                	cmp    %ebx,%ecx
c003558b:	75 1e                	jne    c00355ab <_malloc_r+0x1fb>
c003558d:	e9 36 03 00 00       	jmp    c00358c8 <_malloc_r+0x518>
c0035592:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035598:	85 d2                	test   %edx,%edx
c003559a:	0f 89 c0 03 00 00    	jns    c0035960 <_malloc_r+0x5b0>
c00355a0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c00355a3:	39 d9                	cmp    %ebx,%ecx
c00355a5:	0f 84 1d 03 00 00    	je     c00358c8 <_malloc_r+0x518>
c00355ab:	8b 43 04             	mov    0x4(%ebx),%eax
c00355ae:	83 e0 fc             	and    $0xfffffffc,%eax
c00355b1:	89 c2                	mov    %eax,%edx
c00355b3:	29 fa                	sub    %edi,%edx
c00355b5:	83 fa 0f             	cmp    $0xf,%edx
c00355b8:	7e de                	jle    c0035598 <_malloc_r+0x1e8>
c00355ba:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c00355bd:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c00355c0:	83 cf 01             	or     $0x1,%edi
c00355c3:	8b 73 08             	mov    0x8(%ebx),%esi
c00355c6:	89 7b 04             	mov    %edi,0x4(%ebx)
c00355c9:	89 4e 0c             	mov    %ecx,0xc(%esi)
c00355cc:	89 71 08             	mov    %esi,0x8(%ecx)
c00355cf:	89 d1                	mov    %edx,%ecx
c00355d1:	83 c9 01             	or     $0x1,%ecx
c00355d4:	a3 54 d5 03 c0       	mov    %eax,0xc003d554
c00355d9:	a3 50 d5 03 c0       	mov    %eax,0xc003d550
c00355de:	c7 40 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%eax)
c00355e5:	c7 40 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%eax)
c00355ec:	89 48 04             	mov    %ecx,0x4(%eax)
c00355ef:	89 14 10             	mov    %edx,(%eax,%edx,1)
c00355f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00355f5:	89 04 24             	mov    %eax,(%esp)
c00355f8:	e8 a3 05 00 00       	call   c0035ba0 <__malloc_unlock>
c00355fd:	8d 43 08             	lea    0x8(%ebx),%eax
c0035600:	e9 22 fe ff ff       	jmp    c0035427 <_malloc_r+0x77>
c0035605:	8d 76 00             	lea    0x0(%esi),%esi
c0035608:	b8 7e 00 00 00       	mov    $0x7e,%eax
c003560d:	be 3f 00 00 00       	mov    $0x3f,%esi
c0035612:	e9 5a fe ff ff       	jmp    c0035471 <_malloc_r+0xc1>
c0035617:	90                   	nop
c0035618:	8b 45 08             	mov    0x8(%ebp),%eax
c003561b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0035620:	89 04 24             	mov    %eax,(%esp)
c0035623:	e8 78 05 00 00       	call   c0035ba0 <__malloc_unlock>
c0035628:	83 c4 2c             	add    $0x2c,%esp
c003562b:	8d 43 08             	lea    0x8(%ebx),%eax
c003562e:	5b                   	pop    %ebx
c003562f:	5e                   	pop    %esi
c0035630:	5f                   	pop    %edi
c0035631:	5d                   	pop    %ebp
c0035632:	c3                   	ret    
c0035633:	90                   	nop
c0035634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035638:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c003563e:	8b 73 04             	mov    0x4(%ebx),%esi
c0035641:	83 e6 fc             	and    $0xfffffffc,%esi
c0035644:	39 f7                	cmp    %esi,%edi
c0035646:	77 0d                	ja     c0035655 <_malloc_r+0x2a5>
c0035648:	89 f0                	mov    %esi,%eax
c003564a:	29 f8                	sub    %edi,%eax
c003564c:	83 f8 0f             	cmp    $0xf,%eax
c003564f:	0f 8f 6b 01 00 00    	jg     c00357c0 <_malloc_r+0x410>
c0035655:	8b 0d 50 00 07 c0    	mov    0xc0070050,%ecx
c003565b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003565e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035661:	01 f9                	add    %edi,%ecx
c0035663:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035669:	83 c1 10             	add    $0x10,%ecx
c003566c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035671:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035678:	0f 44 c1             	cmove  %ecx,%eax
c003567b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003567e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035682:	8b 45 08             	mov    0x8(%ebp),%eax
c0035685:	89 04 24             	mov    %eax,(%esp)
c0035688:	e8 03 13 00 00       	call   c0036990 <_sbrk_r>
c003568d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035690:	89 c1                	mov    %eax,%ecx
c0035692:	0f 84 17 03 00 00    	je     c00359af <_malloc_r+0x5ff>
c0035698:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c003569b:	0f 87 02 03 00 00    	ja     c00359a3 <_malloc_r+0x5f3>
c00356a1:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00356a4:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c00356aa:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c00356ad:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c00356b3:	0f 84 a9 03 00 00    	je     c0035a62 <_malloc_r+0x6b2>
c00356b9:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c00356c0:	0f 84 ca 03 00 00    	je     c0035a90 <_malloc_r+0x6e0>
c00356c6:	89 c8                	mov    %ecx,%eax
c00356c8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c00356cb:	01 d0                	add    %edx,%eax
c00356cd:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c00356d2:	89 c8                	mov    %ecx,%eax
c00356d4:	ba 00 10 00 00       	mov    $0x1000,%edx
c00356d9:	83 e0 07             	and    $0x7,%eax
c00356dc:	74 0c                	je     c00356ea <_malloc_r+0x33a>
c00356de:	29 c1                	sub    %eax,%ecx
c00356e0:	ba 08 10 00 00       	mov    $0x1008,%edx
c00356e5:	8d 49 08             	lea    0x8(%ecx),%ecx
c00356e8:	29 c2                	sub    %eax,%edx
c00356ea:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00356ed:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00356f0:	01 c8                	add    %ecx,%eax
c00356f2:	25 ff 0f 00 00       	and    $0xfff,%eax
c00356f7:	29 c2                	sub    %eax,%edx
c00356f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00356fc:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035700:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0035703:	89 04 24             	mov    %eax,(%esp)
c0035706:	e8 85 12 00 00       	call   c0036990 <_sbrk_r>
c003570b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003570e:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035711:	0f 84 6d 03 00 00    	je     c0035a84 <_malloc_r+0x6d4>
c0035717:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003571a:	29 c8                	sub    %ecx,%eax
c003571c:	01 d0                	add    %edx,%eax
c003571e:	83 c8 01             	or     $0x1,%eax
c0035721:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c0035727:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c003572d:	89 0d 48 d5 03 c0    	mov    %ecx,0xc003d548
c0035733:	89 41 04             	mov    %eax,0x4(%ecx)
c0035736:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c003573c:	0f 84 f2 02 00 00    	je     c0035a34 <_malloc_r+0x684>
c0035742:	83 fe 0f             	cmp    $0xf,%esi
c0035745:	0f 86 8d 02 00 00    	jbe    c00359d8 <_malloc_r+0x628>
c003574b:	8b 43 04             	mov    0x4(%ebx),%eax
c003574e:	83 ee 0c             	sub    $0xc,%esi
c0035751:	83 e6 f8             	and    $0xfffffff8,%esi
c0035754:	83 e0 01             	and    $0x1,%eax
c0035757:	09 f0                	or     %esi,%eax
c0035759:	83 fe 0f             	cmp    $0xf,%esi
c003575c:	89 43 04             	mov    %eax,0x4(%ebx)
c003575f:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035764:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003576b:	00 
c003576c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035773:	00 
c0035774:	0f 87 a2 02 00 00    	ja     c0035a1c <_malloc_r+0x66c>
c003577a:	3b 15 4c 00 07 c0    	cmp    0xc007004c,%edx
c0035780:	76 06                	jbe    c0035788 <_malloc_r+0x3d8>
c0035782:	89 15 4c 00 07 c0    	mov    %edx,0xc007004c
c0035788:	3b 15 48 00 07 c0    	cmp    0xc0070048,%edx
c003578e:	76 06                	jbe    c0035796 <_malloc_r+0x3e6>
c0035790:	89 15 48 00 07 c0    	mov    %edx,0xc0070048
c0035796:	8b 50 04             	mov    0x4(%eax),%edx
c0035799:	89 c3                	mov    %eax,%ebx
c003579b:	83 e2 fc             	and    $0xfffffffc,%edx
c003579e:	89 d0                	mov    %edx,%eax
c00357a0:	29 f8                	sub    %edi,%eax
c00357a2:	39 d7                	cmp    %edx,%edi
c00357a4:	77 05                	ja     c00357ab <_malloc_r+0x3fb>
c00357a6:	83 f8 0f             	cmp    $0xf,%eax
c00357a9:	7f 15                	jg     c00357c0 <_malloc_r+0x410>
c00357ab:	8b 45 08             	mov    0x8(%ebp),%eax
c00357ae:	89 04 24             	mov    %eax,(%esp)
c00357b1:	e8 ea 03 00 00       	call   c0035ba0 <__malloc_unlock>
c00357b6:	31 c0                	xor    %eax,%eax
c00357b8:	e9 6a fc ff ff       	jmp    c0035427 <_malloc_r+0x77>
c00357bd:	8d 76 00             	lea    0x0(%esi),%esi
c00357c0:	89 fa                	mov    %edi,%edx
c00357c2:	83 c8 01             	or     $0x1,%eax
c00357c5:	83 ca 01             	or     $0x1,%edx
c00357c8:	89 53 04             	mov    %edx,0x4(%ebx)
c00357cb:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c00357ce:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c00357d4:	89 42 04             	mov    %eax,0x4(%edx)
c00357d7:	8b 45 08             	mov    0x8(%ebp),%eax
c00357da:	89 04 24             	mov    %eax,(%esp)
c00357dd:	e8 be 03 00 00       	call   c0035ba0 <__malloc_unlock>
c00357e2:	83 c4 2c             	add    $0x2c,%esp
c00357e5:	8d 43 08             	lea    0x8(%ebx),%eax
c00357e8:	5b                   	pop    %ebx
c00357e9:	5e                   	pop    %esi
c00357ea:	5f                   	pop    %edi
c00357eb:	5d                   	pop    %ebp
c00357ec:	c3                   	ret    
c00357ed:	8d 76 00             	lea    0x0(%esi),%esi
c00357f0:	83 fe 14             	cmp    $0x14,%esi
c00357f3:	0f 86 8f 01 00 00    	jbe    c0035988 <_malloc_r+0x5d8>
c00357f9:	83 fe 54             	cmp    $0x54,%esi
c00357fc:	0f 87 be 01 00 00    	ja     c00359c0 <_malloc_r+0x610>
c0035802:	89 fe                	mov    %edi,%esi
c0035804:	c1 ee 0c             	shr    $0xc,%esi
c0035807:	83 c6 6e             	add    $0x6e,%esi
c003580a:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003580d:	e9 5f fc ff ff       	jmp    c0035471 <_malloc_r+0xc1>
c0035812:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035818:	89 f1                	mov    %esi,%ecx
c003581a:	c1 e9 09             	shr    $0x9,%ecx
c003581d:	83 f9 04             	cmp    $0x4,%ecx
c0035820:	0f 86 6d 01 00 00    	jbe    c0035993 <_malloc_r+0x5e3>
c0035826:	83 f9 14             	cmp    $0x14,%ecx
c0035829:	0f 87 0f 02 00 00    	ja     c0035a3e <_malloc_r+0x68e>
c003582f:	83 c1 5b             	add    $0x5b,%ecx
c0035832:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035835:	8d 04 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%eax
c003583c:	8b 50 08             	mov    0x8(%eax),%edx
c003583f:	39 c2                	cmp    %eax,%edx
c0035841:	0f 84 a1 01 00 00    	je     c00359e8 <_malloc_r+0x638>
c0035847:	90                   	nop
c0035848:	8b 4a 04             	mov    0x4(%edx),%ecx
c003584b:	83 e1 fc             	and    $0xfffffffc,%ecx
c003584e:	39 ce                	cmp    %ecx,%esi
c0035850:	73 07                	jae    c0035859 <_malloc_r+0x4a9>
c0035852:	8b 52 08             	mov    0x8(%edx),%edx
c0035855:	39 d0                	cmp    %edx,%eax
c0035857:	75 ef                	jne    c0035848 <_malloc_r+0x498>
c0035859:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003585c:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035861:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035864:	89 53 08             	mov    %edx,0x8(%ebx)
c0035867:	89 59 08             	mov    %ebx,0x8(%ecx)
c003586a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003586d:	e9 bb fc ff ff       	jmp    c003552d <_malloc_r+0x17d>
c0035872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035878:	89 c1                	mov    %eax,%ecx
c003587a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003587d:	83 c9 01             	or     $0x1,%ecx
c0035880:	83 cf 01             	or     $0x1,%edi
c0035883:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035886:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c003588c:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0035892:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0035899:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c00358a0:	89 4a 04             	mov    %ecx,0x4(%edx)
c00358a3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c00358a6:	8b 45 08             	mov    0x8(%ebp),%eax
c00358a9:	89 04 24             	mov    %eax,(%esp)
c00358ac:	e8 ef 02 00 00       	call   c0035ba0 <__malloc_unlock>
c00358b1:	8d 43 08             	lea    0x8(%ebx),%eax
c00358b4:	e9 6e fb ff ff       	jmp    c0035427 <_malloc_r+0x77>
c00358b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00358c0:	89 75 dc             	mov    %esi,-0x24(%ebp)
c00358c3:	e9 af fc ff ff       	jmp    c0035577 <_malloc_r+0x1c7>
c00358c8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c00358cc:	83 c1 08             	add    $0x8,%ecx
c00358cf:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c00358d3:	0f 85 ad fc ff ff    	jne    c0035586 <_malloc_r+0x1d6>
c00358d9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00358dc:	eb 12                	jmp    c00358f0 <_malloc_r+0x540>
c00358de:	66 90                	xchg   %ax,%ax
c00358e0:	8d 56 f8             	lea    -0x8(%esi),%edx
c00358e3:	8b 36                	mov    (%esi),%esi
c00358e5:	83 e8 01             	sub    $0x1,%eax
c00358e8:	39 d6                	cmp    %edx,%esi
c00358ea:	0f 85 ea 01 00 00    	jne    c0035ada <_malloc_r+0x72a>
c00358f0:	a8 03                	test   $0x3,%al
c00358f2:	75 ec                	jne    c00358e0 <_malloc_r+0x530>
c00358f4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00358f7:	f7 d0                	not    %eax
c00358f9:	23 05 44 d5 03 c0    	and    0xc003d544,%eax
c00358ff:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035904:	d1 65 dc             	shll   -0x24(%ebp)
c0035907:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003590a:	39 c2                	cmp    %eax,%edx
c003590c:	0f 87 26 fd ff ff    	ja     c0035638 <_malloc_r+0x288>
c0035912:	85 d2                	test   %edx,%edx
c0035914:	0f 84 1e fd ff ff    	je     c0035638 <_malloc_r+0x288>
c003591a:	85 c2                	test   %eax,%edx
c003591c:	0f 85 c2 01 00 00    	jne    c0035ae4 <_malloc_r+0x734>
c0035922:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0035925:	89 f1                	mov    %esi,%ecx
c0035927:	01 d2                	add    %edx,%edx
c0035929:	83 c1 04             	add    $0x4,%ecx
c003592c:	85 d0                	test   %edx,%eax
c003592e:	74 f7                	je     c0035927 <_malloc_r+0x577>
c0035930:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035933:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0035936:	e9 3c fc ff ff       	jmp    c0035577 <_malloc_r+0x1c7>
c003593b:	90                   	nop
c003593c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035940:	8d 43 08             	lea    0x8(%ebx),%eax
c0035943:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035946:	39 d8                	cmp    %ebx,%eax
c0035948:	0f 85 b4 fa ff ff    	jne    c0035402 <_malloc_r+0x52>
c003594e:	8d 42 02             	lea    0x2(%edx),%eax
c0035951:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035954:	e9 56 fb ff ff       	jmp    c00354af <_malloc_r+0xff>
c0035959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035960:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035965:	8b 53 08             	mov    0x8(%ebx),%edx
c0035968:	8b 43 0c             	mov    0xc(%ebx),%eax
c003596b:	89 42 0c             	mov    %eax,0xc(%edx)
c003596e:	89 50 08             	mov    %edx,0x8(%eax)
c0035971:	8b 45 08             	mov    0x8(%ebp),%eax
c0035974:	89 04 24             	mov    %eax,(%esp)
c0035977:	e8 24 02 00 00       	call   c0035ba0 <__malloc_unlock>
c003597c:	8d 43 08             	lea    0x8(%ebx),%eax
c003597f:	e9 a3 fa ff ff       	jmp    c0035427 <_malloc_r+0x77>
c0035984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035988:	83 c6 5b             	add    $0x5b,%esi
c003598b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003598e:	e9 de fa ff ff       	jmp    c0035471 <_malloc_r+0xc1>
c0035993:	89 f1                	mov    %esi,%ecx
c0035995:	c1 e9 06             	shr    $0x6,%ecx
c0035998:	83 c1 38             	add    $0x38,%ecx
c003599b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003599e:	e9 92 fe ff ff       	jmp    c0035835 <_malloc_r+0x485>
c00359a3:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c00359a9:	0f 84 f2 fc ff ff    	je     c00356a1 <_malloc_r+0x2f1>
c00359af:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c00359b5:	8b 53 04             	mov    0x4(%ebx),%edx
c00359b8:	83 e2 fc             	and    $0xfffffffc,%edx
c00359bb:	e9 de fd ff ff       	jmp    c003579e <_malloc_r+0x3ee>
c00359c0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c00359c6:	77 3c                	ja     c0035a04 <_malloc_r+0x654>
c00359c8:	89 fe                	mov    %edi,%esi
c00359ca:	c1 ee 0f             	shr    $0xf,%esi
c00359cd:	83 c6 77             	add    $0x77,%esi
c00359d0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359d3:	e9 99 fa ff ff       	jmp    c0035471 <_malloc_r+0xc1>
c00359d8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c00359df:	89 cb                	mov    %ecx,%ebx
c00359e1:	31 d2                	xor    %edx,%edx
c00359e3:	e9 b6 fd ff ff       	jmp    c003579e <_malloc_r+0x3ee>
c00359e8:	c1 f9 02             	sar    $0x2,%ecx
c00359eb:	b8 01 00 00 00       	mov    $0x1,%eax
c00359f0:	d3 e0                	shl    %cl,%eax
c00359f2:	89 d1                	mov    %edx,%ecx
c00359f4:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c00359fa:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00359ff:	e9 5d fe ff ff       	jmp    c0035861 <_malloc_r+0x4b1>
c0035a04:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c0035a0a:	77 47                	ja     c0035a53 <_malloc_r+0x6a3>
c0035a0c:	89 fe                	mov    %edi,%esi
c0035a0e:	c1 ee 12             	shr    $0x12,%esi
c0035a11:	83 c6 7c             	add    $0x7c,%esi
c0035a14:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a17:	e9 55 fa ff ff       	jmp    c0035471 <_malloc_r+0xc1>
c0035a1c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035a1f:	83 c3 08             	add    $0x8,%ebx
c0035a22:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035a26:	89 04 24             	mov    %eax,(%esp)
c0035a29:	e8 c2 22 00 00       	call   c0037cf0 <_free_r>
c0035a2e:	8b 15 20 00 07 c0    	mov    0xc0070020,%edx
c0035a34:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035a39:	e9 3c fd ff ff       	jmp    c003577a <_malloc_r+0x3ca>
c0035a3e:	83 f9 54             	cmp    $0x54,%ecx
c0035a41:	77 58                	ja     c0035a9b <_malloc_r+0x6eb>
c0035a43:	89 f1                	mov    %esi,%ecx
c0035a45:	c1 e9 0c             	shr    $0xc,%ecx
c0035a48:	83 c1 6e             	add    $0x6e,%ecx
c0035a4b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a4e:	e9 e2 fd ff ff       	jmp    c0035835 <_malloc_r+0x485>
c0035a53:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a58:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035a5d:	e9 0f fa ff ff       	jmp    c0035471 <_malloc_r+0xc1>
c0035a62:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035a69:	0f 85 4a fc ff ff    	jne    c00356b9 <_malloc_r+0x309>
c0035a6f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035a72:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035a77:	01 f1                	add    %esi,%ecx
c0035a79:	83 c9 01             	or     $0x1,%ecx
c0035a7c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035a7f:	e9 f6 fc ff ff       	jmp    c003577a <_malloc_r+0x3ca>
c0035a84:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a89:	31 d2                	xor    %edx,%edx
c0035a8b:	e9 91 fc ff ff       	jmp    c0035721 <_malloc_r+0x371>
c0035a90:	89 0d 20 d5 03 c0    	mov    %ecx,0xc003d520
c0035a96:	e9 37 fc ff ff       	jmp    c00356d2 <_malloc_r+0x322>
c0035a9b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035aa1:	77 10                	ja     c0035ab3 <_malloc_r+0x703>
c0035aa3:	89 f1                	mov    %esi,%ecx
c0035aa5:	c1 e9 0f             	shr    $0xf,%ecx
c0035aa8:	83 c1 77             	add    $0x77,%ecx
c0035aab:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035aae:	e9 82 fd ff ff       	jmp    c0035835 <_malloc_r+0x485>
c0035ab3:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035ab9:	77 10                	ja     c0035acb <_malloc_r+0x71b>
c0035abb:	89 f1                	mov    %esi,%ecx
c0035abd:	c1 e9 12             	shr    $0x12,%ecx
c0035ac0:	83 c1 7c             	add    $0x7c,%ecx
c0035ac3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035ac6:	e9 6a fd ff ff       	jmp    c0035835 <_malloc_r+0x485>
c0035acb:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035ad0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035ad5:	e9 5b fd ff ff       	jmp    c0035835 <_malloc_r+0x485>
c0035ada:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035adf:	e9 20 fe ff ff       	jmp    c0035904 <_malloc_r+0x554>
c0035ae4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035ae7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035aea:	e9 88 fa ff ff       	jmp    c0035577 <_malloc_r+0x1c7>
c0035aef:	90                   	nop

c0035af0 <memchr>:
c0035af0:	55                   	push   %ebp
c0035af1:	89 e5                	mov    %esp,%ebp
c0035af3:	57                   	push   %edi
c0035af4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035af8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035afb:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035afe:	31 d2                	xor    %edx,%edx
c0035b00:	85 c9                	test   %ecx,%ecx
c0035b02:	74 79                	je     c0035b7d <L20>
c0035b04:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b0a:	74 28                	je     c0035b34 <L5>
c0035b0c:	3a 07                	cmp    (%edi),%al
c0035b0e:	74 6a                	je     c0035b7a <L15>
c0035b10:	47                   	inc    %edi
c0035b11:	49                   	dec    %ecx
c0035b12:	74 69                	je     c0035b7d <L20>
c0035b14:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b1a:	74 18                	je     c0035b34 <L5>
c0035b1c:	3a 07                	cmp    (%edi),%al
c0035b1e:	74 5a                	je     c0035b7a <L15>
c0035b20:	47                   	inc    %edi
c0035b21:	49                   	dec    %ecx
c0035b22:	74 59                	je     c0035b7d <L20>
c0035b24:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b2a:	74 08                	je     c0035b34 <L5>
c0035b2c:	3a 07                	cmp    (%edi),%al
c0035b2e:	74 4a                	je     c0035b7a <L15>
c0035b30:	47                   	inc    %edi
c0035b31:	49                   	dec    %ecx
c0035b32:	74 49                	je     c0035b7d <L20>

c0035b34 <L5>:
c0035b34:	88 c4                	mov    %al,%ah
c0035b36:	89 c2                	mov    %eax,%edx
c0035b38:	c1 e2 10             	shl    $0x10,%edx
c0035b3b:	09 d0                	or     %edx,%eax
c0035b3d:	53                   	push   %ebx
c0035b3e:	66 90                	xchg   %ax,%ax

c0035b40 <L8>:
c0035b40:	83 e9 04             	sub    $0x4,%ecx
c0035b43:	72 1c                	jb     c0035b61 <L9>
c0035b45:	8b 17                	mov    (%edi),%edx
c0035b47:	83 c7 04             	add    $0x4,%edi
c0035b4a:	31 c2                	xor    %eax,%edx
c0035b4c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035b52:	f7 d2                	not    %edx
c0035b54:	21 d3                	and    %edx,%ebx
c0035b56:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035b5c:	74 e2                	je     c0035b40 <L8>
c0035b5e:	83 ef 04             	sub    $0x4,%edi

c0035b61 <L9>:
c0035b61:	5b                   	pop    %ebx
c0035b62:	31 d2                	xor    %edx,%edx
c0035b64:	83 c1 04             	add    $0x4,%ecx
c0035b67:	74 14                	je     c0035b7d <L20>
c0035b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035b70 <L10>:
c0035b70:	3a 07                	cmp    (%edi),%al
c0035b72:	74 06                	je     c0035b7a <L15>
c0035b74:	47                   	inc    %edi
c0035b75:	49                   	dec    %ecx
c0035b76:	75 f8                	jne    c0035b70 <L10>
c0035b78:	31 ff                	xor    %edi,%edi

c0035b7a <L15>:
c0035b7a:	4a                   	dec    %edx
c0035b7b:	21 fa                	and    %edi,%edx

c0035b7d <L20>:
c0035b7d:	89 d0                	mov    %edx,%eax
c0035b7f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035b82:	5f                   	pop    %edi
c0035b83:	c9                   	leave  
c0035b84:	c3                   	ret    
c0035b85:	66 90                	xchg   %ax,%ax
c0035b87:	66 90                	xchg   %ax,%ax
c0035b89:	66 90                	xchg   %ax,%ax
c0035b8b:	66 90                	xchg   %ax,%ax
c0035b8d:	66 90                	xchg   %ax,%ax
c0035b8f:	90                   	nop

c0035b90 <__malloc_lock>:
c0035b90:	55                   	push   %ebp
c0035b91:	89 e5                	mov    %esp,%ebp
c0035b93:	5d                   	pop    %ebp
c0035b94:	c3                   	ret    
c0035b95:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035b99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035ba0 <__malloc_unlock>:
c0035ba0:	55                   	push   %ebp
c0035ba1:	89 e5                	mov    %esp,%ebp
c0035ba3:	5d                   	pop    %ebp
c0035ba4:	c3                   	ret    
c0035ba5:	66 90                	xchg   %ax,%ax
c0035ba7:	66 90                	xchg   %ax,%ax
c0035ba9:	66 90                	xchg   %ax,%ax
c0035bab:	66 90                	xchg   %ax,%ax
c0035bad:	66 90                	xchg   %ax,%ax
c0035baf:	90                   	nop

c0035bb0 <_Balloc>:
c0035bb0:	55                   	push   %ebp
c0035bb1:	89 e5                	mov    %esp,%ebp
c0035bb3:	57                   	push   %edi
c0035bb4:	56                   	push   %esi
c0035bb5:	53                   	push   %ebx
c0035bb6:	83 ec 1c             	sub    $0x1c,%esp
c0035bb9:	8b 75 08             	mov    0x8(%ebp),%esi
c0035bbc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035bbf:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035bc2:	85 c0                	test   %eax,%eax
c0035bc4:	74 2a                	je     c0035bf0 <_Balloc+0x40>
c0035bc6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035bc9:	8b 02                	mov    (%edx),%eax
c0035bcb:	85 c0                	test   %eax,%eax
c0035bcd:	74 49                	je     c0035c18 <_Balloc+0x68>
c0035bcf:	8b 08                	mov    (%eax),%ecx
c0035bd1:	89 0a                	mov    %ecx,(%edx)
c0035bd3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035bda:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035be1:	83 c4 1c             	add    $0x1c,%esp
c0035be4:	5b                   	pop    %ebx
c0035be5:	5e                   	pop    %esi
c0035be6:	5f                   	pop    %edi
c0035be7:	5d                   	pop    %ebp
c0035be8:	c3                   	ret    
c0035be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035bf0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035bf7:	00 
c0035bf8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035bff:	00 
c0035c00:	89 34 24             	mov    %esi,(%esp)
c0035c03:	e8 38 1f 00 00       	call   c0037b40 <_calloc_r>
c0035c08:	85 c0                	test   %eax,%eax
c0035c0a:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035c0d:	75 b7                	jne    c0035bc6 <_Balloc+0x16>
c0035c0f:	31 c0                	xor    %eax,%eax
c0035c11:	eb ce                	jmp    c0035be1 <_Balloc+0x31>
c0035c13:	90                   	nop
c0035c14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035c18:	89 d9                	mov    %ebx,%ecx
c0035c1a:	bf 01 00 00 00       	mov    $0x1,%edi
c0035c1f:	d3 e7                	shl    %cl,%edi
c0035c21:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035c28:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035c2c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035c33:	00 
c0035c34:	89 34 24             	mov    %esi,(%esp)
c0035c37:	e8 04 1f 00 00       	call   c0037b40 <_calloc_r>
c0035c3c:	85 c0                	test   %eax,%eax
c0035c3e:	74 cf                	je     c0035c0f <_Balloc+0x5f>
c0035c40:	89 58 04             	mov    %ebx,0x4(%eax)
c0035c43:	89 78 08             	mov    %edi,0x8(%eax)
c0035c46:	eb 8b                	jmp    c0035bd3 <_Balloc+0x23>
c0035c48:	90                   	nop
c0035c49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035c50 <_Bfree>:
c0035c50:	55                   	push   %ebp
c0035c51:	89 e5                	mov    %esp,%ebp
c0035c53:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c56:	85 c0                	test   %eax,%eax
c0035c58:	74 12                	je     c0035c6c <_Bfree+0x1c>
c0035c5a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035c5d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035c60:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035c63:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035c66:	8b 0a                	mov    (%edx),%ecx
c0035c68:	89 08                	mov    %ecx,(%eax)
c0035c6a:	89 02                	mov    %eax,(%edx)
c0035c6c:	5d                   	pop    %ebp
c0035c6d:	c3                   	ret    
c0035c6e:	66 90                	xchg   %ax,%ax

c0035c70 <__multadd>:
c0035c70:	55                   	push   %ebp
c0035c71:	89 e5                	mov    %esp,%ebp
c0035c73:	57                   	push   %edi
c0035c74:	56                   	push   %esi
c0035c75:	53                   	push   %ebx
c0035c76:	83 ec 2c             	sub    $0x2c,%esp
c0035c79:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c7c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035c7f:	8b 40 10             	mov    0x10(%eax),%eax
c0035c82:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035c85:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c88:	8d 78 14             	lea    0x14(%eax),%edi
c0035c8b:	31 c0                	xor    %eax,%eax
c0035c8d:	8d 76 00             	lea    0x0(%esi),%esi
c0035c90:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035c93:	0f b7 d1             	movzwl %cx,%edx
c0035c96:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035c9a:	c1 e9 10             	shr    $0x10,%ecx
c0035c9d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035ca1:	01 da                	add    %ebx,%edx
c0035ca3:	89 d3                	mov    %edx,%ebx
c0035ca5:	0f b7 d2             	movzwl %dx,%edx
c0035ca8:	c1 eb 10             	shr    $0x10,%ebx
c0035cab:	01 d9                	add    %ebx,%ecx
c0035cad:	89 ce                	mov    %ecx,%esi
c0035caf:	c1 e1 10             	shl    $0x10,%ecx
c0035cb2:	01 d1                	add    %edx,%ecx
c0035cb4:	c1 ee 10             	shr    $0x10,%esi
c0035cb7:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035cba:	83 c0 01             	add    $0x1,%eax
c0035cbd:	89 f3                	mov    %esi,%ebx
c0035cbf:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035cc2:	7f cc                	jg     c0035c90 <__multadd+0x20>
c0035cc4:	85 f6                	test   %esi,%esi
c0035cc6:	74 1b                	je     c0035ce3 <__multadd+0x73>
c0035cc8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035ccb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035cce:	3b 78 08             	cmp    0x8(%eax),%edi
c0035cd1:	7d 1d                	jge    c0035cf0 <__multadd+0x80>
c0035cd3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035cd6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035cd9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035cdd:	83 c0 01             	add    $0x1,%eax
c0035ce0:	89 47 10             	mov    %eax,0x10(%edi)
c0035ce3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035ce6:	83 c4 2c             	add    $0x2c,%esp
c0035ce9:	5b                   	pop    %ebx
c0035cea:	5e                   	pop    %esi
c0035ceb:	5f                   	pop    %edi
c0035cec:	5d                   	pop    %ebp
c0035ced:	c3                   	ret    
c0035cee:	66 90                	xchg   %ax,%ax
c0035cf0:	8b 40 04             	mov    0x4(%eax),%eax
c0035cf3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035cf6:	83 c0 01             	add    $0x1,%eax
c0035cf9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035cfd:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d00:	89 04 24             	mov    %eax,(%esp)
c0035d03:	e8 a8 fe ff ff       	call   c0035bb0 <_Balloc>
c0035d08:	89 c3                	mov    %eax,%ebx
c0035d0a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d0d:	8b 40 10             	mov    0x10(%eax),%eax
c0035d10:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035d17:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035d1b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d1e:	83 c0 0c             	add    $0xc,%eax
c0035d21:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d25:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035d28:	89 04 24             	mov    %eax,(%esp)
c0035d2b:	e8 c4 c0 ff ff       	call   c0031df4 <memcpy>
c0035d30:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d33:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035d36:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035d39:	8b 50 04             	mov    0x4(%eax),%edx
c0035d3c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d3f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035d42:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035d45:	8b 10                	mov    (%eax),%edx
c0035d47:	89 17                	mov    %edx,(%edi)
c0035d49:	89 38                	mov    %edi,(%eax)
c0035d4b:	eb 86                	jmp    c0035cd3 <__multadd+0x63>
c0035d4d:	8d 76 00             	lea    0x0(%esi),%esi

c0035d50 <__s2b>:
c0035d50:	55                   	push   %ebp
c0035d51:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035d56:	89 e5                	mov    %esp,%ebp
c0035d58:	57                   	push   %edi
c0035d59:	56                   	push   %esi
c0035d5a:	53                   	push   %ebx
c0035d5b:	83 ec 2c             	sub    $0x2c,%esp
c0035d5e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035d61:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035d64:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035d67:	8d 48 08             	lea    0x8(%eax),%ecx
c0035d6a:	89 c8                	mov    %ecx,%eax
c0035d6c:	f7 ea                	imul   %edx
c0035d6e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035d71:	d1 fa                	sar    %edx
c0035d73:	29 ca                	sub    %ecx,%edx
c0035d75:	83 fa 01             	cmp    $0x1,%edx
c0035d78:	0f 8e be 00 00 00    	jle    c0035e3c <__s2b+0xec>
c0035d7e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035d83:	31 c9                	xor    %ecx,%ecx
c0035d85:	8d 76 00             	lea    0x0(%esi),%esi
c0035d88:	01 c0                	add    %eax,%eax
c0035d8a:	83 c1 01             	add    $0x1,%ecx
c0035d8d:	39 c2                	cmp    %eax,%edx
c0035d8f:	7f f7                	jg     c0035d88 <__s2b+0x38>
c0035d91:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035d95:	89 1c 24             	mov    %ebx,(%esp)
c0035d98:	e8 13 fe ff ff       	call   c0035bb0 <_Balloc>
c0035d9d:	8b 55 18             	mov    0x18(%ebp),%edx
c0035da0:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035da4:	89 50 14             	mov    %edx,0x14(%eax)
c0035da7:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035dae:	0f 8e 7c 00 00 00    	jle    c0035e30 <__s2b+0xe0>
c0035db4:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035db7:	03 75 10             	add    0x10(%ebp),%esi
c0035dba:	89 cf                	mov    %ecx,%edi
c0035dbc:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035dbf:	90                   	nop
c0035dc0:	83 c7 01             	add    $0x1,%edi
c0035dc3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035dc7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dce:	00 
c0035dcf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035dd3:	89 1c 24             	mov    %ebx,(%esp)
c0035dd6:	83 ea 30             	sub    $0x30,%edx
c0035dd9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035ddd:	e8 8e fe ff ff       	call   c0035c70 <__multadd>
c0035de2:	39 f7                	cmp    %esi,%edi
c0035de4:	75 da                	jne    c0035dc0 <__s2b+0x70>
c0035de6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035de9:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035dec:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035df0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035df3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035df6:	7e 2e                	jle    c0035e26 <__s2b+0xd6>
c0035df8:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035dfb:	29 cf                	sub    %ecx,%edi
c0035dfd:	01 f7                	add    %esi,%edi
c0035dff:	90                   	nop
c0035e00:	83 c6 01             	add    $0x1,%esi
c0035e03:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035e07:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035e0e:	00 
c0035e0f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e13:	89 1c 24             	mov    %ebx,(%esp)
c0035e16:	83 ea 30             	sub    $0x30,%edx
c0035e19:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035e1d:	e8 4e fe ff ff       	call   c0035c70 <__multadd>
c0035e22:	39 fe                	cmp    %edi,%esi
c0035e24:	75 da                	jne    c0035e00 <__s2b+0xb0>
c0035e26:	83 c4 2c             	add    $0x2c,%esp
c0035e29:	5b                   	pop    %ebx
c0035e2a:	5e                   	pop    %esi
c0035e2b:	5f                   	pop    %edi
c0035e2c:	5d                   	pop    %ebp
c0035e2d:	c3                   	ret    
c0035e2e:	66 90                	xchg   %ax,%ax
c0035e30:	83 c6 0a             	add    $0xa,%esi
c0035e33:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035e3a:	eb b4                	jmp    c0035df0 <__s2b+0xa0>
c0035e3c:	31 c9                	xor    %ecx,%ecx
c0035e3e:	e9 4e ff ff ff       	jmp    c0035d91 <__s2b+0x41>
c0035e43:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035e49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035e50 <__hi0bits>:
c0035e50:	55                   	push   %ebp
c0035e51:	31 c9                	xor    %ecx,%ecx
c0035e53:	89 e5                	mov    %esp,%ebp
c0035e55:	8b 55 08             	mov    0x8(%ebp),%edx
c0035e58:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035e5e:	75 05                	jne    c0035e65 <__hi0bits+0x15>
c0035e60:	c1 e2 10             	shl    $0x10,%edx
c0035e63:	b1 10                	mov    $0x10,%cl
c0035e65:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035e6b:	75 06                	jne    c0035e73 <__hi0bits+0x23>
c0035e6d:	83 c1 08             	add    $0x8,%ecx
c0035e70:	c1 e2 08             	shl    $0x8,%edx
c0035e73:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035e79:	75 06                	jne    c0035e81 <__hi0bits+0x31>
c0035e7b:	83 c1 04             	add    $0x4,%ecx
c0035e7e:	c1 e2 04             	shl    $0x4,%edx
c0035e81:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035e87:	75 06                	jne    c0035e8f <__hi0bits+0x3f>
c0035e89:	83 c1 02             	add    $0x2,%ecx
c0035e8c:	c1 e2 02             	shl    $0x2,%edx
c0035e8f:	85 d2                	test   %edx,%edx
c0035e91:	89 c8                	mov    %ecx,%eax
c0035e93:	78 0d                	js     c0035ea2 <__hi0bits+0x52>
c0035e95:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035e9b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035ea0:	75 06                	jne    c0035ea8 <__hi0bits+0x58>
c0035ea2:	5d                   	pop    %ebp
c0035ea3:	c3                   	ret    
c0035ea4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035ea8:	8d 41 01             	lea    0x1(%ecx),%eax
c0035eab:	5d                   	pop    %ebp
c0035eac:	c3                   	ret    
c0035ead:	8d 76 00             	lea    0x0(%esi),%esi

c0035eb0 <__lo0bits>:
c0035eb0:	55                   	push   %ebp
c0035eb1:	89 e5                	mov    %esp,%ebp
c0035eb3:	53                   	push   %ebx
c0035eb4:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035eb7:	8b 13                	mov    (%ebx),%edx
c0035eb9:	f6 c2 07             	test   $0x7,%dl
c0035ebc:	74 1a                	je     c0035ed8 <__lo0bits+0x28>
c0035ebe:	31 c0                	xor    %eax,%eax
c0035ec0:	f6 c2 01             	test   $0x1,%dl
c0035ec3:	75 0f                	jne    c0035ed4 <__lo0bits+0x24>
c0035ec5:	f6 c2 02             	test   $0x2,%dl
c0035ec8:	75 56                	jne    c0035f20 <__lo0bits+0x70>
c0035eca:	c1 ea 02             	shr    $0x2,%edx
c0035ecd:	b8 02 00 00 00       	mov    $0x2,%eax
c0035ed2:	89 13                	mov    %edx,(%ebx)
c0035ed4:	5b                   	pop    %ebx
c0035ed5:	5d                   	pop    %ebp
c0035ed6:	c3                   	ret    
c0035ed7:	90                   	nop
c0035ed8:	31 c9                	xor    %ecx,%ecx
c0035eda:	66 85 d2             	test   %dx,%dx
c0035edd:	75 05                	jne    c0035ee4 <__lo0bits+0x34>
c0035edf:	c1 ea 10             	shr    $0x10,%edx
c0035ee2:	b1 10                	mov    $0x10,%cl
c0035ee4:	84 d2                	test   %dl,%dl
c0035ee6:	75 06                	jne    c0035eee <__lo0bits+0x3e>
c0035ee8:	83 c1 08             	add    $0x8,%ecx
c0035eeb:	c1 ea 08             	shr    $0x8,%edx
c0035eee:	f6 c2 0f             	test   $0xf,%dl
c0035ef1:	75 06                	jne    c0035ef9 <__lo0bits+0x49>
c0035ef3:	83 c1 04             	add    $0x4,%ecx
c0035ef6:	c1 ea 04             	shr    $0x4,%edx
c0035ef9:	f6 c2 03             	test   $0x3,%dl
c0035efc:	75 06                	jne    c0035f04 <__lo0bits+0x54>
c0035efe:	83 c1 02             	add    $0x2,%ecx
c0035f01:	c1 ea 02             	shr    $0x2,%edx
c0035f04:	f6 c2 01             	test   $0x1,%dl
c0035f07:	75 0c                	jne    c0035f15 <__lo0bits+0x65>
c0035f09:	d1 ea                	shr    %edx
c0035f0b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035f10:	74 c2                	je     c0035ed4 <__lo0bits+0x24>
c0035f12:	83 c1 01             	add    $0x1,%ecx
c0035f15:	89 13                	mov    %edx,(%ebx)
c0035f17:	89 c8                	mov    %ecx,%eax
c0035f19:	5b                   	pop    %ebx
c0035f1a:	5d                   	pop    %ebp
c0035f1b:	c3                   	ret    
c0035f1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f20:	d1 ea                	shr    %edx
c0035f22:	b0 01                	mov    $0x1,%al
c0035f24:	89 13                	mov    %edx,(%ebx)
c0035f26:	5b                   	pop    %ebx
c0035f27:	5d                   	pop    %ebp
c0035f28:	c3                   	ret    
c0035f29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f30 <__i2b>:
c0035f30:	55                   	push   %ebp
c0035f31:	89 e5                	mov    %esp,%ebp
c0035f33:	83 ec 18             	sub    $0x18,%esp
c0035f36:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f39:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035f40:	00 
c0035f41:	89 04 24             	mov    %eax,(%esp)
c0035f44:	e8 67 fc ff ff       	call   c0035bb0 <_Balloc>
c0035f49:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035f4c:	89 50 14             	mov    %edx,0x14(%eax)
c0035f4f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035f56:	c9                   	leave  
c0035f57:	c3                   	ret    
c0035f58:	90                   	nop
c0035f59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f60 <__multiply>:
c0035f60:	55                   	push   %ebp
c0035f61:	89 e5                	mov    %esp,%ebp
c0035f63:	57                   	push   %edi
c0035f64:	56                   	push   %esi
c0035f65:	53                   	push   %ebx
c0035f66:	83 ec 3c             	sub    $0x3c,%esp
c0035f69:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035f6c:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f6f:	8b 7e 10             	mov    0x10(%esi),%edi
c0035f72:	8b 58 10             	mov    0x10(%eax),%ebx
c0035f75:	39 df                	cmp    %ebx,%edi
c0035f77:	7d 0e                	jge    c0035f87 <__multiply+0x27>
c0035f79:	89 f8                	mov    %edi,%eax
c0035f7b:	89 df                	mov    %ebx,%edi
c0035f7d:	89 c3                	mov    %eax,%ebx
c0035f7f:	89 f0                	mov    %esi,%eax
c0035f81:	8b 75 10             	mov    0x10(%ebp),%esi
c0035f84:	89 45 10             	mov    %eax,0x10(%ebp)
c0035f87:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035f8a:	3b 46 08             	cmp    0x8(%esi),%eax
c0035f8d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0035f90:	0f 9f c0             	setg   %al
c0035f93:	0f b6 c0             	movzbl %al,%eax
c0035f96:	03 46 04             	add    0x4(%esi),%eax
c0035f99:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035f9d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035fa0:	89 04 24             	mov    %eax,(%esp)
c0035fa3:	e8 08 fc ff ff       	call   c0035bb0 <_Balloc>
c0035fa8:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035fab:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035fae:	8d 40 14             	lea    0x14(%eax),%eax
c0035fb1:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0035fb4:	89 d1                	mov    %edx,%ecx
c0035fb6:	39 c8                	cmp    %ecx,%eax
c0035fb8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035fbb:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c0035fbe:	73 15                	jae    c0035fd5 <__multiply+0x75>
c0035fc0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0035fc3:	90                   	nop
c0035fc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035fc8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0035fce:	83 c0 04             	add    $0x4,%eax
c0035fd1:	39 c2                	cmp    %eax,%edx
c0035fd3:	77 f3                	ja     c0035fc8 <__multiply+0x68>
c0035fd5:	8d 46 14             	lea    0x14(%esi),%eax
c0035fd8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0035fdb:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c0035fde:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0035fe1:	8b 45 10             	mov    0x10(%ebp),%eax
c0035fe4:	83 c0 14             	add    $0x14,%eax
c0035fe7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c0035fea:	39 f8                	cmp    %edi,%eax
c0035fec:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0035fef:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0035ff2:	0f 83 e8 00 00 00    	jae    c00360e0 <__multiply+0x180>
c0035ff8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0035ffb:	8b 00                	mov    (%eax),%eax
c0035ffd:	0f b7 f8             	movzwl %ax,%edi
c0036000:	85 ff                	test   %edi,%edi
c0036002:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036005:	74 5a                	je     c0036061 <__multiply+0x101>
c0036007:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003600a:	31 db                	xor    %ebx,%ebx
c003600c:	8b 75 d0             	mov    -0x30(%ebp),%esi
c003600f:	eb 09                	jmp    c003601a <__multiply+0xba>
c0036011:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036018:	89 fa                	mov    %edi,%edx
c003601a:	8b 0e                	mov    (%esi),%ecx
c003601c:	83 c6 04             	add    $0x4,%esi
c003601f:	0f b7 3a             	movzwl (%edx),%edi
c0036022:	0f b7 c1             	movzwl %cx,%eax
c0036025:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0036029:	c1 e9 10             	shr    $0x10,%ecx
c003602c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036030:	01 f8                	add    %edi,%eax
c0036032:	01 d8                	add    %ebx,%eax
c0036034:	8b 1a                	mov    (%edx),%ebx
c0036036:	8d 7a 04             	lea    0x4(%edx),%edi
c0036039:	c1 eb 10             	shr    $0x10,%ebx
c003603c:	01 d9                	add    %ebx,%ecx
c003603e:	89 c3                	mov    %eax,%ebx
c0036040:	c1 eb 10             	shr    $0x10,%ebx
c0036043:	0f b7 c0             	movzwl %ax,%eax
c0036046:	01 d9                	add    %ebx,%ecx
c0036048:	89 cb                	mov    %ecx,%ebx
c003604a:	c1 e1 10             	shl    $0x10,%ecx
c003604d:	09 c1                	or     %eax,%ecx
c003604f:	c1 eb 10             	shr    $0x10,%ebx
c0036052:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036055:	89 0a                	mov    %ecx,(%edx)
c0036057:	77 bf                	ja     c0036018 <__multiply+0xb8>
c0036059:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003605c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003605f:	8b 00                	mov    (%eax),%eax
c0036061:	c1 e8 10             	shr    $0x10,%eax
c0036064:	85 c0                	test   %eax,%eax
c0036066:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036069:	74 61                	je     c00360cc <__multiply+0x16c>
c003606b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003606e:	31 ff                	xor    %edi,%edi
c0036070:	89 fe                	mov    %edi,%esi
c0036072:	8b 10                	mov    (%eax),%edx
c0036074:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036077:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003607a:	89 d3                	mov    %edx,%ebx
c003607c:	eb 05                	jmp    c0036083 <__multiply+0x123>
c003607e:	66 90                	xchg   %ax,%ax
c0036080:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036083:	0f b7 08             	movzwl (%eax),%ecx
c0036086:	c1 eb 10             	shr    $0x10,%ebx
c0036089:	0f b7 d2             	movzwl %dx,%edx
c003608c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036090:	83 c0 04             	add    $0x4,%eax
c0036093:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036096:	01 f7                	add    %esi,%edi
c0036098:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003609b:	89 fb                	mov    %edi,%ebx
c003609d:	c1 e3 10             	shl    $0x10,%ebx
c00360a0:	09 d3                	or     %edx,%ebx
c00360a2:	89 1e                	mov    %ebx,(%esi)
c00360a4:	8b 5e 04             	mov    0x4(%esi),%ebx
c00360a7:	8d 4e 04             	lea    0x4(%esi),%ecx
c00360aa:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c00360ae:	c1 ef 10             	shr    $0x10,%edi
c00360b1:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c00360b5:	0f b7 f3             	movzwl %bx,%esi
c00360b8:	01 f2                	add    %esi,%edx
c00360ba:	01 fa                	add    %edi,%edx
c00360bc:	89 d6                	mov    %edx,%esi
c00360be:	c1 ee 10             	shr    $0x10,%esi
c00360c1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c00360c4:	77 ba                	ja     c0036080 <__multiply+0x120>
c00360c6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00360c9:	89 50 04             	mov    %edx,0x4(%eax)
c00360cc:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c00360d0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00360d3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c00360d7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c00360da:	0f 87 18 ff ff ff    	ja     c0035ff8 <__multiply+0x98>
c00360e0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c00360e3:	85 f6                	test   %esi,%esi
c00360e5:	7e 29                	jle    c0036110 <__multiply+0x1b0>
c00360e7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00360ea:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00360ed:	85 db                	test   %ebx,%ebx
c00360ef:	75 1f                	jne    c0036110 <__multiply+0x1b0>
c00360f1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c00360f4:	89 d0                	mov    %edx,%eax
c00360f6:	c1 e0 02             	shl    $0x2,%eax
c00360f9:	29 c7                	sub    %eax,%edi
c00360fb:	89 f8                	mov    %edi,%eax
c00360fd:	eb 09                	jmp    c0036108 <__multiply+0x1a8>
c00360ff:	90                   	nop
c0036100:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0036104:	85 c9                	test   %ecx,%ecx
c0036106:	75 05                	jne    c003610d <__multiply+0x1ad>
c0036108:	83 ea 01             	sub    $0x1,%edx
c003610b:	75 f3                	jne    c0036100 <__multiply+0x1a0>
c003610d:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0036110:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0036113:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0036116:	89 78 10             	mov    %edi,0x10(%eax)
c0036119:	83 c4 3c             	add    $0x3c,%esp
c003611c:	5b                   	pop    %ebx
c003611d:	5e                   	pop    %esi
c003611e:	5f                   	pop    %edi
c003611f:	5d                   	pop    %ebp
c0036120:	c3                   	ret    
c0036121:	eb 0d                	jmp    c0036130 <__pow5mult>
c0036123:	90                   	nop
c0036124:	90                   	nop
c0036125:	90                   	nop
c0036126:	90                   	nop
c0036127:	90                   	nop
c0036128:	90                   	nop
c0036129:	90                   	nop
c003612a:	90                   	nop
c003612b:	90                   	nop
c003612c:	90                   	nop
c003612d:	90                   	nop
c003612e:	90                   	nop
c003612f:	90                   	nop

c0036130 <__pow5mult>:
c0036130:	55                   	push   %ebp
c0036131:	89 e5                	mov    %esp,%ebp
c0036133:	57                   	push   %edi
c0036134:	56                   	push   %esi
c0036135:	53                   	push   %ebx
c0036136:	83 ec 2c             	sub    $0x2c,%esp
c0036139:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003613c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003613f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036142:	89 d8                	mov    %ebx,%eax
c0036144:	83 e0 03             	and    $0x3,%eax
c0036147:	0f 85 a3 00 00 00    	jne    c00361f0 <__pow5mult+0xc0>
c003614d:	c1 fb 02             	sar    $0x2,%ebx
c0036150:	85 db                	test   %ebx,%ebx
c0036152:	74 5c                	je     c00361b0 <__pow5mult+0x80>
c0036154:	8b 71 48             	mov    0x48(%ecx),%esi
c0036157:	85 f6                	test   %esi,%esi
c0036159:	0f 84 bd 00 00 00    	je     c003621c <__pow5mult+0xec>
c003615f:	f6 c3 01             	test   $0x1,%bl
c0036162:	75 15                	jne    c0036179 <__pow5mult+0x49>
c0036164:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036168:	d1 fb                	sar    %ebx
c003616a:	74 44                	je     c00361b0 <__pow5mult+0x80>
c003616c:	8b 06                	mov    (%esi),%eax
c003616e:	85 c0                	test   %eax,%eax
c0036170:	74 4e                	je     c00361c0 <__pow5mult+0x90>
c0036172:	89 c6                	mov    %eax,%esi
c0036174:	f6 c3 01             	test   $0x1,%bl
c0036177:	74 ef                	je     c0036168 <__pow5mult+0x38>
c0036179:	89 0c 24             	mov    %ecx,(%esp)
c003617c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036180:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036184:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036187:	e8 d4 fd ff ff       	call   c0035f60 <__multiply>
c003618c:	85 ff                	test   %edi,%edi
c003618e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036191:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036194:	74 52                	je     c00361e8 <__pow5mult+0xb8>
c0036196:	8b 57 04             	mov    0x4(%edi),%edx
c0036199:	d1 fb                	sar    %ebx
c003619b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003619e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00361a1:	8b 10                	mov    (%eax),%edx
c00361a3:	89 17                	mov    %edx,(%edi)
c00361a5:	89 38                	mov    %edi,(%eax)
c00361a7:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00361aa:	75 c0                	jne    c003616c <__pow5mult+0x3c>
c00361ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00361b0:	83 c4 2c             	add    $0x2c,%esp
c00361b3:	89 f8                	mov    %edi,%eax
c00361b5:	5b                   	pop    %ebx
c00361b6:	5e                   	pop    %esi
c00361b7:	5f                   	pop    %edi
c00361b8:	5d                   	pop    %ebp
c00361b9:	c3                   	ret    
c00361ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361c0:	89 74 24 08          	mov    %esi,0x8(%esp)
c00361c4:	89 74 24 04          	mov    %esi,0x4(%esp)
c00361c8:	89 0c 24             	mov    %ecx,(%esp)
c00361cb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361ce:	e8 8d fd ff ff       	call   c0035f60 <__multiply>
c00361d3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361d6:	89 06                	mov    %eax,(%esi)
c00361d8:	89 c6                	mov    %eax,%esi
c00361da:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00361e0:	eb 92                	jmp    c0036174 <__pow5mult+0x44>
c00361e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361e8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00361eb:	e9 78 ff ff ff       	jmp    c0036168 <__pow5mult+0x38>
c00361f0:	8b 04 85 1c 9a 03 c0 	mov    -0x3ffc65e4(,%eax,4),%eax
c00361f7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00361fb:	89 0c 24             	mov    %ecx,(%esp)
c00361fe:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0036205:	00 
c0036206:	89 44 24 08          	mov    %eax,0x8(%esp)
c003620a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003620d:	e8 5e fa ff ff       	call   c0035c70 <__multadd>
c0036212:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036215:	89 c7                	mov    %eax,%edi
c0036217:	e9 31 ff ff ff       	jmp    c003614d <__pow5mult+0x1d>
c003621c:	89 0c 24             	mov    %ecx,(%esp)
c003621f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036226:	00 
c0036227:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003622a:	e8 81 f9 ff ff       	call   c0035bb0 <_Balloc>
c003622f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036232:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0036239:	89 c6                	mov    %eax,%esi
c003623b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036242:	89 41 48             	mov    %eax,0x48(%ecx)
c0036245:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003624b:	e9 0f ff ff ff       	jmp    c003615f <__pow5mult+0x2f>

c0036250 <__lshift>:
c0036250:	55                   	push   %ebp
c0036251:	89 e5                	mov    %esp,%ebp
c0036253:	57                   	push   %edi
c0036254:	56                   	push   %esi
c0036255:	53                   	push   %ebx
c0036256:	83 ec 2c             	sub    $0x2c,%esp
c0036259:	8b 45 0c             	mov    0xc(%ebp),%eax
c003625c:	8b 75 10             	mov    0x10(%ebp),%esi
c003625f:	89 c7                	mov    %eax,%edi
c0036261:	8b 50 04             	mov    0x4(%eax),%edx
c0036264:	8b 40 10             	mov    0x10(%eax),%eax
c0036267:	89 f3                	mov    %esi,%ebx
c0036269:	c1 fb 05             	sar    $0x5,%ebx
c003626c:	01 d8                	add    %ebx,%eax
c003626e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036271:	83 c0 01             	add    $0x1,%eax
c0036274:	89 c1                	mov    %eax,%ecx
c0036276:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036279:	8b 47 08             	mov    0x8(%edi),%eax
c003627c:	39 c1                	cmp    %eax,%ecx
c003627e:	7e 09                	jle    c0036289 <__lshift+0x39>
c0036280:	01 c0                	add    %eax,%eax
c0036282:	83 c2 01             	add    $0x1,%edx
c0036285:	39 c1                	cmp    %eax,%ecx
c0036287:	7f f7                	jg     c0036280 <__lshift+0x30>
c0036289:	8b 45 08             	mov    0x8(%ebp),%eax
c003628c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036290:	89 04 24             	mov    %eax,(%esp)
c0036293:	e8 18 f9 ff ff       	call   c0035bb0 <_Balloc>
c0036298:	85 db                	test   %ebx,%ebx
c003629a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003629d:	8d 50 14             	lea    0x14(%eax),%edx
c00362a0:	7e 17                	jle    c00362b9 <__lshift+0x69>
c00362a2:	31 c0                	xor    %eax,%eax
c00362a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00362a8:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c00362af:	83 c0 01             	add    $0x1,%eax
c00362b2:	39 d8                	cmp    %ebx,%eax
c00362b4:	75 f2                	jne    c00362a8 <__lshift+0x58>
c00362b6:	8d 14 82             	lea    (%edx,%eax,4),%edx
c00362b9:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00362bc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00362bf:	8b 4f 10             	mov    0x10(%edi),%ecx
c00362c2:	83 c0 14             	add    $0x14,%eax
c00362c5:	83 e6 1f             	and    $0x1f,%esi
c00362c8:	89 75 e0             	mov    %esi,-0x20(%ebp)
c00362cb:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c00362ce:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00362d1:	74 7d                	je     c0036350 <__lshift+0x100>
c00362d3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c00362da:	29 75 dc             	sub    %esi,-0x24(%ebp)
c00362dd:	31 f6                	xor    %esi,%esi
c00362df:	eb 09                	jmp    c00362ea <__lshift+0x9a>
c00362e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00362e8:	89 fa                	mov    %edi,%edx
c00362ea:	8b 18                	mov    (%eax),%ebx
c00362ec:	83 c0 04             	add    $0x4,%eax
c00362ef:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00362f3:	8d 7a 04             	lea    0x4(%edx),%edi
c00362f6:	d3 e3                	shl    %cl,%ebx
c00362f8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c00362fc:	09 f3                	or     %esi,%ebx
c00362fe:	89 1a                	mov    %ebx,(%edx)
c0036300:	8b 70 fc             	mov    -0x4(%eax),%esi
c0036303:	d3 ee                	shr    %cl,%esi
c0036305:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036308:	77 de                	ja     c00362e8 <__lshift+0x98>
c003630a:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003630d:	89 72 04             	mov    %esi,0x4(%edx)
c0036310:	83 c0 02             	add    $0x2,%eax
c0036313:	85 f6                	test   %esi,%esi
c0036315:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0036319:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003631c:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003631f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0036322:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036325:	83 e8 01             	sub    $0x1,%eax
c0036328:	89 47 10             	mov    %eax,0x10(%edi)
c003632b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003632e:	8b 50 04             	mov    0x4(%eax),%edx
c0036331:	8b 45 08             	mov    0x8(%ebp),%eax
c0036334:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036337:	8d 04 90             	lea    (%eax,%edx,4),%eax
c003633a:	8b 10                	mov    (%eax),%edx
c003633c:	89 16                	mov    %edx,(%esi)
c003633e:	89 30                	mov    %esi,(%eax)
c0036340:	83 c4 2c             	add    $0x2c,%esp
c0036343:	89 f8                	mov    %edi,%eax
c0036345:	5b                   	pop    %ebx
c0036346:	5e                   	pop    %esi
c0036347:	5f                   	pop    %edi
c0036348:	5d                   	pop    %ebp
c0036349:	c3                   	ret    
c003634a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036350:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036353:	90                   	nop
c0036354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036358:	83 c0 04             	add    $0x4,%eax
c003635b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003635e:	83 c2 04             	add    $0x4,%edx
c0036361:	39 c3                	cmp    %eax,%ebx
c0036363:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036366:	77 f0                	ja     c0036358 <__lshift+0x108>
c0036368:	eb b2                	jmp    c003631c <__lshift+0xcc>
c003636a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036370 <__mcmp>:
c0036370:	55                   	push   %ebp
c0036371:	89 e5                	mov    %esp,%ebp
c0036373:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036376:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036379:	53                   	push   %ebx
c003637a:	8b 41 10             	mov    0x10(%ecx),%eax
c003637d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036380:	29 d8                	sub    %ebx,%eax
c0036382:	85 c0                	test   %eax,%eax
c0036384:	75 27                	jne    c00363ad <__mcmp+0x3d>
c0036386:	c1 e3 02             	shl    $0x2,%ebx
c0036389:	83 c1 14             	add    $0x14,%ecx
c003638c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003638f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036393:	eb 07                	jmp    c003639c <__mcmp+0x2c>
c0036395:	8d 76 00             	lea    0x0(%esi),%esi
c0036398:	39 c1                	cmp    %eax,%ecx
c003639a:	73 14                	jae    c00363b0 <__mcmp+0x40>
c003639c:	83 ea 04             	sub    $0x4,%edx
c003639f:	83 e8 04             	sub    $0x4,%eax
c00363a2:	8b 1a                	mov    (%edx),%ebx
c00363a4:	39 18                	cmp    %ebx,(%eax)
c00363a6:	74 f0                	je     c0036398 <__mcmp+0x28>
c00363a8:	19 c0                	sbb    %eax,%eax
c00363aa:	83 c8 01             	or     $0x1,%eax
c00363ad:	5b                   	pop    %ebx
c00363ae:	5d                   	pop    %ebp
c00363af:	c3                   	ret    
c00363b0:	31 c0                	xor    %eax,%eax
c00363b2:	5b                   	pop    %ebx
c00363b3:	5d                   	pop    %ebp
c00363b4:	c3                   	ret    
c00363b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00363b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00363c0 <__mdiff>:
c00363c0:	55                   	push   %ebp
c00363c1:	89 e5                	mov    %esp,%ebp
c00363c3:	57                   	push   %edi
c00363c4:	56                   	push   %esi
c00363c5:	53                   	push   %ebx
c00363c6:	83 ec 2c             	sub    $0x2c,%esp
c00363c9:	8b 75 0c             	mov    0xc(%ebp),%esi
c00363cc:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00363cf:	89 34 24             	mov    %esi,(%esp)
c00363d2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00363d6:	e8 95 ff ff ff       	call   c0036370 <__mcmp>
c00363db:	85 c0                	test   %eax,%eax
c00363dd:	0f 84 25 01 00 00    	je     c0036508 <__mdiff+0x148>
c00363e3:	0f 88 0f 01 00 00    	js     c00364f8 <__mdiff+0x138>
c00363e9:	31 ff                	xor    %edi,%edi
c00363eb:	8b 46 04             	mov    0x4(%esi),%eax
c00363ee:	83 c6 14             	add    $0x14,%esi
c00363f1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00363f5:	8b 45 08             	mov    0x8(%ebp),%eax
c00363f8:	89 04 24             	mov    %eax,(%esp)
c00363fb:	e8 b0 f7 ff ff       	call   c0035bb0 <_Balloc>
c0036400:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0036403:	89 c2                	mov    %eax,%edx
c0036405:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0036408:	89 78 0c             	mov    %edi,0xc(%eax)
c003640b:	8b 46 fc             	mov    -0x4(%esi),%eax
c003640e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0036411:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036414:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0036417:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003641a:	8b 43 10             	mov    0x10(%ebx),%eax
c003641d:	31 db                	xor    %ebx,%ebx
c003641f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0036422:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036425:	89 d0                	mov    %edx,%eax
c0036427:	83 c0 14             	add    $0x14,%eax
c003642a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036430:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036433:	83 c0 04             	add    $0x4,%eax
c0036436:	83 c1 04             	add    $0x4,%ecx
c0036439:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c003643d:	8b 3e                	mov    (%esi),%edi
c003643f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036442:	0f b7 d7             	movzwl %di,%edx
c0036445:	01 da                	add    %ebx,%edx
c0036447:	0f b7 de             	movzwl %si,%ebx
c003644a:	29 da                	sub    %ebx,%edx
c003644c:	c1 ef 10             	shr    $0x10,%edi
c003644f:	89 d3                	mov    %edx,%ebx
c0036451:	c1 ee 10             	shr    $0x10,%esi
c0036454:	0f b7 d2             	movzwl %dx,%edx
c0036457:	c1 fb 10             	sar    $0x10,%ebx
c003645a:	29 f7                	sub    %esi,%edi
c003645c:	01 df                	add    %ebx,%edi
c003645e:	89 fb                	mov    %edi,%ebx
c0036460:	c1 e7 10             	shl    $0x10,%edi
c0036463:	09 d7                	or     %edx,%edi
c0036465:	c1 fb 10             	sar    $0x10,%ebx
c0036468:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003646b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003646e:	77 c0                	ja     c0036430 <__mdiff+0x70>
c0036470:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036473:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036476:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036479:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003647c:	39 f1                	cmp    %esi,%ecx
c003647e:	76 3f                	jbe    c00364bf <__mdiff+0xff>
c0036480:	8b 3e                	mov    (%esi),%edi
c0036482:	83 c6 04             	add    $0x4,%esi
c0036485:	83 c0 04             	add    $0x4,%eax
c0036488:	0f b7 d7             	movzwl %di,%edx
c003648b:	01 da                	add    %ebx,%edx
c003648d:	89 d3                	mov    %edx,%ebx
c003648f:	0f b7 d2             	movzwl %dx,%edx
c0036492:	c1 fb 10             	sar    $0x10,%ebx
c0036495:	c1 ef 10             	shr    $0x10,%edi
c0036498:	01 df                	add    %ebx,%edi
c003649a:	89 fb                	mov    %edi,%ebx
c003649c:	c1 e7 10             	shl    $0x10,%edi
c003649f:	09 d7                	or     %edx,%edi
c00364a1:	c1 fb 10             	sar    $0x10,%ebx
c00364a4:	39 f1                	cmp    %esi,%ecx
c00364a6:	89 78 fc             	mov    %edi,-0x4(%eax)
c00364a9:	77 d5                	ja     c0036480 <__mdiff+0xc0>
c00364ab:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00364ae:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00364b1:	f7 d0                	not    %eax
c00364b3:	01 c8                	add    %ecx,%eax
c00364b5:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00364b8:	c1 e8 02             	shr    $0x2,%eax
c00364bb:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c00364bf:	85 ff                	test   %edi,%edi
c00364c1:	75 23                	jne    c00364e6 <__mdiff+0x126>
c00364c3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364c6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c00364cd:	29 d0                	sub    %edx,%eax
c00364cf:	89 ca                	mov    %ecx,%edx
c00364d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00364d8:	83 ea 01             	sub    $0x1,%edx
c00364db:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00364df:	85 c9                	test   %ecx,%ecx
c00364e1:	74 f5                	je     c00364d8 <__mdiff+0x118>
c00364e3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00364e6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00364e9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364ec:	89 48 10             	mov    %ecx,0x10(%eax)
c00364ef:	83 c4 2c             	add    $0x2c,%esp
c00364f2:	5b                   	pop    %ebx
c00364f3:	5e                   	pop    %esi
c00364f4:	5f                   	pop    %edi
c00364f5:	5d                   	pop    %ebp
c00364f6:	c3                   	ret    
c00364f7:	90                   	nop
c00364f8:	89 f0                	mov    %esi,%eax
c00364fa:	bf 01 00 00 00       	mov    $0x1,%edi
c00364ff:	89 de                	mov    %ebx,%esi
c0036501:	89 c3                	mov    %eax,%ebx
c0036503:	e9 e3 fe ff ff       	jmp    c00363eb <__mdiff+0x2b>
c0036508:	8b 45 08             	mov    0x8(%ebp),%eax
c003650b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0036512:	00 
c0036513:	89 04 24             	mov    %eax,(%esp)
c0036516:	e8 95 f6 ff ff       	call   c0035bb0 <_Balloc>
c003651b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036522:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0036529:	83 c4 2c             	add    $0x2c,%esp
c003652c:	5b                   	pop    %ebx
c003652d:	5e                   	pop    %esi
c003652e:	5f                   	pop    %edi
c003652f:	5d                   	pop    %ebp
c0036530:	c3                   	ret    
c0036531:	eb 0d                	jmp    c0036540 <__ulp>
c0036533:	90                   	nop
c0036534:	90                   	nop
c0036535:	90                   	nop
c0036536:	90                   	nop
c0036537:	90                   	nop
c0036538:	90                   	nop
c0036539:	90                   	nop
c003653a:	90                   	nop
c003653b:	90                   	nop
c003653c:	90                   	nop
c003653d:	90                   	nop
c003653e:	90                   	nop
c003653f:	90                   	nop

c0036540 <__ulp>:
c0036540:	55                   	push   %ebp
c0036541:	89 e5                	mov    %esp,%ebp
c0036543:	83 ec 08             	sub    $0x8,%esp
c0036546:	dd 45 08             	fldl   0x8(%ebp)
c0036549:	dd 5d f8             	fstpl  -0x8(%ebp)
c003654c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003654f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036555:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003655b:	85 c9                	test   %ecx,%ecx
c003655d:	7e 11                	jle    c0036570 <__ulp+0x30>
c003655f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036562:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036569:	dd 45 f8             	fldl   -0x8(%ebp)
c003656c:	c9                   	leave  
c003656d:	c3                   	ret    
c003656e:	66 90                	xchg   %ax,%ax
c0036570:	f7 d9                	neg    %ecx
c0036572:	c1 f9 14             	sar    $0x14,%ecx
c0036575:	83 f9 13             	cmp    $0x13,%ecx
c0036578:	7e 26                	jle    c00365a0 <__ulp+0x60>
c003657a:	83 f9 32             	cmp    $0x32,%ecx
c003657d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036582:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036589:	7f 0b                	jg     c0036596 <__ulp+0x56>
c003658b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036590:	29 ca                	sub    %ecx,%edx
c0036592:	89 d1                	mov    %edx,%ecx
c0036594:	d3 e0                	shl    %cl,%eax
c0036596:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036599:	dd 45 f8             	fldl   -0x8(%ebp)
c003659c:	c9                   	leave  
c003659d:	c3                   	ret    
c003659e:	66 90                	xchg   %ax,%ax
c00365a0:	b8 00 00 08 00       	mov    $0x80000,%eax
c00365a5:	d3 f8                	sar    %cl,%eax
c00365a7:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00365aa:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00365b1:	dd 45 f8             	fldl   -0x8(%ebp)
c00365b4:	c9                   	leave  
c00365b5:	c3                   	ret    
c00365b6:	8d 76 00             	lea    0x0(%esi),%esi
c00365b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00365c0 <__b2d>:
c00365c0:	55                   	push   %ebp
c00365c1:	89 e5                	mov    %esp,%ebp
c00365c3:	57                   	push   %edi
c00365c4:	56                   	push   %esi
c00365c5:	53                   	push   %ebx
c00365c6:	83 ec 18             	sub    $0x18,%esp
c00365c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00365cc:	8d 78 14             	lea    0x14(%eax),%edi
c00365cf:	8b 40 10             	mov    0x10(%eax),%eax
c00365d2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c00365d5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c00365d8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00365db:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00365de:	89 34 24             	mov    %esi,(%esp)
c00365e1:	e8 6a f8 ff ff       	call   c0035e50 <__hi0bits>
c00365e6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00365e9:	ba 20 00 00 00       	mov    $0x20,%edx
c00365ee:	29 c2                	sub    %eax,%edx
c00365f0:	83 f8 0a             	cmp    $0xa,%eax
c00365f3:	89 11                	mov    %edx,(%ecx)
c00365f5:	7f 41                	jg     c0036638 <__b2d+0x78>
c00365f7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c00365fc:	89 f2                	mov    %esi,%edx
c00365fe:	29 c1                	sub    %eax,%ecx
c0036600:	d3 ea                	shr    %cl,%edx
c0036602:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0036608:	89 55 ec             	mov    %edx,-0x14(%ebp)
c003660b:	31 d2                	xor    %edx,%edx
c003660d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036610:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036617:	73 05                	jae    c003661e <__b2d+0x5e>
c0036619:	8b 53 f8             	mov    -0x8(%ebx),%edx
c003661c:	d3 ea                	shr    %cl,%edx
c003661e:	8d 48 15             	lea    0x15(%eax),%ecx
c0036621:	d3 e6                	shl    %cl,%esi
c0036623:	09 f2                	or     %esi,%edx
c0036625:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036628:	dd 45 e8             	fldl   -0x18(%ebp)
c003662b:	83 c4 18             	add    $0x18,%esp
c003662e:	5b                   	pop    %ebx
c003662f:	5e                   	pop    %esi
c0036630:	5f                   	pop    %edi
c0036631:	5d                   	pop    %ebp
c0036632:	c3                   	ret    
c0036633:	90                   	nop
c0036634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036638:	31 d2                	xor    %edx,%edx
c003663a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c003663d:	73 09                	jae    c0036648 <__b2d+0x88>
c003663f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036642:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036645:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036648:	89 c3                	mov    %eax,%ebx
c003664a:	83 eb 0b             	sub    $0xb,%ebx
c003664d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036650:	74 4e                	je     c00366a0 <__b2d+0xe0>
c0036652:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036656:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003665b:	29 c3                	sub    %eax,%ebx
c003665d:	89 d0                	mov    %edx,%eax
c003665f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036666:	d3 e6                	shl    %cl,%esi
c0036668:	89 d9                	mov    %ebx,%ecx
c003666a:	d3 e8                	shr    %cl,%eax
c003666c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003666f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036675:	09 c6                	or     %eax,%esi
c0036677:	31 c0                	xor    %eax,%eax
c0036679:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003667c:	39 f9                	cmp    %edi,%ecx
c003667e:	76 07                	jbe    c0036687 <__b2d+0xc7>
c0036680:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036683:	89 d9                	mov    %ebx,%ecx
c0036685:	d3 e8                	shr    %cl,%eax
c0036687:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003668b:	d3 e2                	shl    %cl,%edx
c003668d:	09 d0                	or     %edx,%eax
c003668f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036692:	dd 45 e8             	fldl   -0x18(%ebp)
c0036695:	83 c4 18             	add    $0x18,%esp
c0036698:	5b                   	pop    %ebx
c0036699:	5e                   	pop    %esi
c003669a:	5f                   	pop    %edi
c003669b:	5d                   	pop    %ebp
c003669c:	c3                   	ret    
c003669d:	8d 76 00             	lea    0x0(%esi),%esi
c00366a0:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c00366a6:	89 75 ec             	mov    %esi,-0x14(%ebp)
c00366a9:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00366ac:	dd 45 e8             	fldl   -0x18(%ebp)
c00366af:	83 c4 18             	add    $0x18,%esp
c00366b2:	5b                   	pop    %ebx
c00366b3:	5e                   	pop    %esi
c00366b4:	5f                   	pop    %edi
c00366b5:	5d                   	pop    %ebp
c00366b6:	c3                   	ret    
c00366b7:	89 f6                	mov    %esi,%esi
c00366b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00366c0 <__d2b>:
c00366c0:	55                   	push   %ebp
c00366c1:	89 e5                	mov    %esp,%ebp
c00366c3:	57                   	push   %edi
c00366c4:	56                   	push   %esi
c00366c5:	53                   	push   %ebx
c00366c6:	83 ec 2c             	sub    $0x2c,%esp
c00366c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00366cc:	dd 45 0c             	fldl   0xc(%ebp)
c00366cf:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00366d6:	00 
c00366d7:	dd 5d d0             	fstpl  -0x30(%ebp)
c00366da:	89 04 24             	mov    %eax,(%esp)
c00366dd:	e8 ce f4 ff ff       	call   c0035bb0 <_Balloc>
c00366e2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c00366e5:	89 c6                	mov    %eax,%esi
c00366e7:	89 d8                	mov    %ebx,%eax
c00366e9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c00366ef:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00366f4:	c1 eb 14             	shr    $0x14,%ebx
c00366f7:	85 db                	test   %ebx,%ebx
c00366f9:	74 05                	je     c0036700 <__d2b+0x40>
c00366fb:	0d 00 00 10 00       	or     $0x100000,%eax
c0036700:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036703:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036706:	85 c0                	test   %eax,%eax
c0036708:	74 56                	je     c0036760 <__d2b+0xa0>
c003670a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003670d:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0036710:	89 04 24             	mov    %eax,(%esp)
c0036713:	e8 98 f7 ff ff       	call   c0035eb0 <__lo0bits>
c0036718:	85 c0                	test   %eax,%eax
c003671a:	0f 85 90 00 00 00    	jne    c00367b0 <__d2b+0xf0>
c0036720:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036723:	89 56 14             	mov    %edx,0x14(%esi)
c0036726:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036729:	83 fa 01             	cmp    $0x1,%edx
c003672c:	19 ff                	sbb    %edi,%edi
c003672e:	83 c7 02             	add    $0x2,%edi
c0036731:	85 db                	test   %ebx,%ebx
c0036733:	89 56 18             	mov    %edx,0x18(%esi)
c0036736:	89 7e 10             	mov    %edi,0x10(%esi)
c0036739:	74 49                	je     c0036784 <__d2b+0xc4>
c003673b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c003673e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036745:	89 11                	mov    %edx,(%ecx)
c0036747:	ba 35 00 00 00       	mov    $0x35,%edx
c003674c:	29 c2                	sub    %eax,%edx
c003674e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036751:	89 10                	mov    %edx,(%eax)
c0036753:	83 c4 2c             	add    $0x2c,%esp
c0036756:	89 f0                	mov    %esi,%eax
c0036758:	5b                   	pop    %ebx
c0036759:	5e                   	pop    %esi
c003675a:	5f                   	pop    %edi
c003675b:	5d                   	pop    %ebp
c003675c:	c3                   	ret    
c003675d:	8d 76 00             	lea    0x0(%esi),%esi
c0036760:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036763:	bf 01 00 00 00       	mov    $0x1,%edi
c0036768:	89 04 24             	mov    %eax,(%esp)
c003676b:	e8 40 f7 ff ff       	call   c0035eb0 <__lo0bits>
c0036770:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036773:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003677a:	89 56 14             	mov    %edx,0x14(%esi)
c003677d:	83 c0 20             	add    $0x20,%eax
c0036780:	85 db                	test   %ebx,%ebx
c0036782:	75 b7                	jne    c003673b <__d2b+0x7b>
c0036784:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036787:	2d 32 04 00 00       	sub    $0x432,%eax
c003678c:	89 01                	mov    %eax,(%ecx)
c003678e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036792:	c1 e7 05             	shl    $0x5,%edi
c0036795:	89 04 24             	mov    %eax,(%esp)
c0036798:	e8 b3 f6 ff ff       	call   c0035e50 <__hi0bits>
c003679d:	29 c7                	sub    %eax,%edi
c003679f:	8b 45 18             	mov    0x18(%ebp),%eax
c00367a2:	89 38                	mov    %edi,(%eax)
c00367a4:	83 c4 2c             	add    $0x2c,%esp
c00367a7:	89 f0                	mov    %esi,%eax
c00367a9:	5b                   	pop    %ebx
c00367aa:	5e                   	pop    %esi
c00367ab:	5f                   	pop    %edi
c00367ac:	5d                   	pop    %ebp
c00367ad:	c3                   	ret    
c00367ae:	66 90                	xchg   %ax,%ax
c00367b0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00367b3:	b9 20 00 00 00       	mov    $0x20,%ecx
c00367b8:	29 c1                	sub    %eax,%ecx
c00367ba:	89 d7                	mov    %edx,%edi
c00367bc:	d3 e7                	shl    %cl,%edi
c00367be:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00367c1:	09 f9                	or     %edi,%ecx
c00367c3:	89 4e 14             	mov    %ecx,0x14(%esi)
c00367c6:	89 c1                	mov    %eax,%ecx
c00367c8:	d3 ea                	shr    %cl,%edx
c00367ca:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00367cd:	e9 57 ff ff ff       	jmp    c0036729 <__d2b+0x69>
c00367d2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00367d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00367e0 <__ratio>:
c00367e0:	55                   	push   %ebp
c00367e1:	89 e5                	mov    %esp,%ebp
c00367e3:	56                   	push   %esi
c00367e4:	53                   	push   %ebx
c00367e5:	83 ec 30             	sub    $0x30,%esp
c00367e8:	8b 75 08             	mov    0x8(%ebp),%esi
c00367eb:	8d 45 f0             	lea    -0x10(%ebp),%eax
c00367ee:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00367f1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367f5:	89 34 24             	mov    %esi,(%esp)
c00367f8:	e8 c3 fd ff ff       	call   c00365c0 <__b2d>
c00367fd:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0036800:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036804:	89 1c 24             	mov    %ebx,(%esp)
c0036807:	dd 55 e0             	fstl   -0x20(%ebp)
c003680a:	dd 5d d8             	fstpl  -0x28(%ebp)
c003680d:	e8 ae fd ff ff       	call   c00365c0 <__b2d>
c0036812:	8b 46 10             	mov    0x10(%esi),%eax
c0036815:	2b 43 10             	sub    0x10(%ebx),%eax
c0036818:	8b 55 f0             	mov    -0x10(%ebp),%edx
c003681b:	2b 55 f4             	sub    -0xc(%ebp),%edx
c003681e:	c1 e0 05             	shl    $0x5,%eax
c0036821:	01 d0                	add    %edx,%eax
c0036823:	dd 55 d0             	fstl   -0x30(%ebp)
c0036826:	85 c0                	test   %eax,%eax
c0036828:	dd 45 d8             	fldl   -0x28(%ebp)
c003682b:	7e 1b                	jle    c0036848 <__ratio+0x68>
c003682d:	dd d8                	fstp   %st(0)
c003682f:	c1 e0 14             	shl    $0x14,%eax
c0036832:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036835:	dd 45 e0             	fldl   -0x20(%ebp)
c0036838:	83 c4 30             	add    $0x30,%esp
c003683b:	5b                   	pop    %ebx
c003683c:	de f1                	fdivp  %st,%st(1)
c003683e:	5e                   	pop    %esi
c003683f:	5d                   	pop    %ebp
c0036840:	c3                   	ret    
c0036841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036848:	dd d9                	fstp   %st(1)
c003684a:	c1 e0 14             	shl    $0x14,%eax
c003684d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036850:	dd 45 d0             	fldl   -0x30(%ebp)
c0036853:	83 c4 30             	add    $0x30,%esp
c0036856:	5b                   	pop    %ebx
c0036857:	de f9                	fdivrp %st,%st(1)
c0036859:	5e                   	pop    %esi
c003685a:	5d                   	pop    %ebp
c003685b:	c3                   	ret    
c003685c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036860 <_mprec_log10>:
c0036860:	55                   	push   %ebp
c0036861:	89 e5                	mov    %esp,%ebp
c0036863:	8b 45 08             	mov    0x8(%ebp),%eax
c0036866:	83 f8 17             	cmp    $0x17,%eax
c0036869:	7e 1d                	jle    c0036888 <_mprec_log10+0x28>
c003686b:	d9 e8                	fld1   
c003686d:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c0036873:	90                   	nop
c0036874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036878:	83 e8 01             	sub    $0x1,%eax
c003687b:	dc c9                	fmul   %st,%st(1)
c003687d:	75 f9                	jne    c0036878 <_mprec_log10+0x18>
c003687f:	dd d8                	fstp   %st(0)
c0036881:	5d                   	pop    %ebp
c0036882:	c3                   	ret    
c0036883:	90                   	nop
c0036884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036888:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c003688f:	5d                   	pop    %ebp
c0036890:	c3                   	ret    
c0036891:	eb 0d                	jmp    c00368a0 <__copybits>
c0036893:	90                   	nop
c0036894:	90                   	nop
c0036895:	90                   	nop
c0036896:	90                   	nop
c0036897:	90                   	nop
c0036898:	90                   	nop
c0036899:	90                   	nop
c003689a:	90                   	nop
c003689b:	90                   	nop
c003689c:	90                   	nop
c003689d:	90                   	nop
c003689e:	90                   	nop
c003689f:	90                   	nop

c00368a0 <__copybits>:
c00368a0:	55                   	push   %ebp
c00368a1:	89 e5                	mov    %esp,%ebp
c00368a3:	57                   	push   %edi
c00368a4:	8b 7d 10             	mov    0x10(%ebp),%edi
c00368a7:	56                   	push   %esi
c00368a8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00368ab:	8b 45 08             	mov    0x8(%ebp),%eax
c00368ae:	53                   	push   %ebx
c00368af:	8b 4f 10             	mov    0x10(%edi),%ecx
c00368b2:	8d 56 ff             	lea    -0x1(%esi),%edx
c00368b5:	c1 fa 05             	sar    $0x5,%edx
c00368b8:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c00368bc:	8d 57 14             	lea    0x14(%edi),%edx
c00368bf:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c00368c2:	39 da                	cmp    %ebx,%edx
c00368c4:	73 34                	jae    c00368fa <__copybits+0x5a>
c00368c6:	89 c1                	mov    %eax,%ecx
c00368c8:	83 c2 04             	add    $0x4,%edx
c00368cb:	8b 42 fc             	mov    -0x4(%edx),%eax
c00368ce:	83 c1 04             	add    $0x4,%ecx
c00368d1:	39 d3                	cmp    %edx,%ebx
c00368d3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c00368d6:	77 f0                	ja     c00368c8 <__copybits+0x28>
c00368d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00368db:	29 fb                	sub    %edi,%ebx
c00368dd:	8d 53 eb             	lea    -0x15(%ebx),%edx
c00368e0:	c1 ea 02             	shr    $0x2,%edx
c00368e3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c00368e7:	39 c6                	cmp    %eax,%esi
c00368e9:	76 13                	jbe    c00368fe <__copybits+0x5e>
c00368eb:	90                   	nop
c00368ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368f0:	83 c0 04             	add    $0x4,%eax
c00368f3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c00368fa:	39 c6                	cmp    %eax,%esi
c00368fc:	77 f2                	ja     c00368f0 <__copybits+0x50>
c00368fe:	5b                   	pop    %ebx
c00368ff:	5e                   	pop    %esi
c0036900:	5f                   	pop    %edi
c0036901:	5d                   	pop    %ebp
c0036902:	c3                   	ret    
c0036903:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036910 <__any_on>:
c0036910:	55                   	push   %ebp
c0036911:	89 e5                	mov    %esp,%ebp
c0036913:	8b 45 08             	mov    0x8(%ebp),%eax
c0036916:	57                   	push   %edi
c0036917:	56                   	push   %esi
c0036918:	53                   	push   %ebx
c0036919:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003691c:	8d 50 14             	lea    0x14(%eax),%edx
c003691f:	8b 40 10             	mov    0x10(%eax),%eax
c0036922:	c1 fb 05             	sar    $0x5,%ebx
c0036925:	39 d8                	cmp    %ebx,%eax
c0036927:	7d 2f                	jge    c0036958 <__any_on+0x48>
c0036929:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c003692c:	39 da                	cmp    %ebx,%edx
c003692e:	73 1d                	jae    c003694d <__any_on+0x3d>
c0036930:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036933:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0036936:	85 db                	test   %ebx,%ebx
c0036938:	74 0f                	je     c0036949 <__any_on+0x39>
c003693a:	eb 44                	jmp    c0036980 <__any_on+0x70>
c003693c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036940:	83 e8 04             	sub    $0x4,%eax
c0036943:	8b 08                	mov    (%eax),%ecx
c0036945:	85 c9                	test   %ecx,%ecx
c0036947:	75 37                	jne    c0036980 <__any_on+0x70>
c0036949:	39 c2                	cmp    %eax,%edx
c003694b:	72 f3                	jb     c0036940 <__any_on+0x30>
c003694d:	31 c0                	xor    %eax,%eax
c003694f:	5b                   	pop    %ebx
c0036950:	5e                   	pop    %esi
c0036951:	5f                   	pop    %edi
c0036952:	5d                   	pop    %ebp
c0036953:	c3                   	ret    
c0036954:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036958:	7e 1e                	jle    c0036978 <__any_on+0x68>
c003695a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003695d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036960:	83 e1 1f             	and    $0x1f,%ecx
c0036963:	74 c7                	je     c003692c <__any_on+0x1c>
c0036965:	8b 3b                	mov    (%ebx),%edi
c0036967:	b8 01 00 00 00       	mov    $0x1,%eax
c003696c:	89 fe                	mov    %edi,%esi
c003696e:	d3 ee                	shr    %cl,%esi
c0036970:	d3 e6                	shl    %cl,%esi
c0036972:	39 fe                	cmp    %edi,%esi
c0036974:	75 d9                	jne    c003694f <__any_on+0x3f>
c0036976:	eb b4                	jmp    c003692c <__any_on+0x1c>
c0036978:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c003697b:	eb af                	jmp    c003692c <__any_on+0x1c>
c003697d:	8d 76 00             	lea    0x0(%esi),%esi
c0036980:	5b                   	pop    %ebx
c0036981:	b8 01 00 00 00       	mov    $0x1,%eax
c0036986:	5e                   	pop    %esi
c0036987:	5f                   	pop    %edi
c0036988:	5d                   	pop    %ebp
c0036989:	c3                   	ret    
c003698a:	66 90                	xchg   %ax,%ax
c003698c:	66 90                	xchg   %ax,%ax
c003698e:	66 90                	xchg   %ax,%ax

c0036990 <_sbrk_r>:
c0036990:	55                   	push   %ebp
c0036991:	89 e5                	mov    %esp,%ebp
c0036993:	83 ec 18             	sub    $0x18,%esp
c0036996:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036999:	c7 05 00 50 09 c0 00 	movl   $0x0,0xc0095000
c00369a0:	00 00 00 
c00369a3:	89 04 24             	mov    %eax,(%esp)
c00369a6:	e8 4d a0 ff ff       	call   c00309f8 <sbrk>
c00369ab:	83 f8 ff             	cmp    $0xffffffff,%eax
c00369ae:	74 08                	je     c00369b8 <_sbrk_r+0x28>
c00369b0:	c9                   	leave  
c00369b1:	c3                   	ret    
c00369b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00369b8:	8b 15 00 50 09 c0    	mov    0xc0095000,%edx
c00369be:	85 d2                	test   %edx,%edx
c00369c0:	74 ee                	je     c00369b0 <_sbrk_r+0x20>
c00369c2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00369c5:	89 11                	mov    %edx,(%ecx)
c00369c7:	c9                   	leave  
c00369c8:	c3                   	ret    
c00369c9:	66 90                	xchg   %ax,%ax
c00369cb:	66 90                	xchg   %ax,%ax
c00369cd:	66 90                	xchg   %ax,%ax
c00369cf:	90                   	nop

c00369d0 <__fpclassifyd>:
c00369d0:	55                   	push   %ebp
c00369d1:	b8 02 00 00 00       	mov    $0x2,%eax
c00369d6:	89 e5                	mov    %esp,%ebp
c00369d8:	53                   	push   %ebx
c00369d9:	83 ec 0c             	sub    $0xc,%esp
c00369dc:	dd 45 08             	fldl   0x8(%ebp)
c00369df:	dd 5d f0             	fstpl  -0x10(%ebp)
c00369e2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00369e5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c00369e8:	89 d3                	mov    %edx,%ebx
c00369ea:	09 cb                	or     %ecx,%ebx
c00369ec:	75 0a                	jne    c00369f8 <__fpclassifyd+0x28>
c00369ee:	83 c4 0c             	add    $0xc,%esp
c00369f1:	5b                   	pop    %ebx
c00369f2:	5d                   	pop    %ebp
c00369f3:	c3                   	ret    
c00369f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369f8:	85 d2                	test   %edx,%edx
c00369fa:	0f 94 c2             	sete   %dl
c00369fd:	75 08                	jne    c0036a07 <__fpclassifyd+0x37>
c00369ff:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0036a05:	74 e7                	je     c00369ee <__fpclassifyd+0x1e>
c0036a07:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c0036a0d:	b8 04 00 00 00       	mov    $0x4,%eax
c0036a12:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0036a18:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c0036a1e:	76 ce                	jbe    c00369ee <__fpclassifyd+0x1e>
c0036a20:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036a26:	b0 03                	mov    $0x3,%al
c0036a28:	76 c4                	jbe    c00369ee <__fpclassifyd+0x1e>
c0036a2a:	31 c0                	xor    %eax,%eax
c0036a2c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036a32:	0f 94 c0             	sete   %al
c0036a35:	21 d0                	and    %edx,%eax
c0036a37:	eb b5                	jmp    c00369ee <__fpclassifyd+0x1e>
c0036a39:	66 90                	xchg   %ax,%ax
c0036a3b:	66 90                	xchg   %ax,%ax
c0036a3d:	66 90                	xchg   %ax,%ax
c0036a3f:	90                   	nop

c0036a40 <strcmp>:
c0036a40:	55                   	push   %ebp
c0036a41:	89 e5                	mov    %esp,%ebp
c0036a43:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a46:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036a49:	53                   	push   %ebx
c0036a4a:	89 c1                	mov    %eax,%ecx
c0036a4c:	09 d1                	or     %edx,%ecx
c0036a4e:	83 e1 03             	and    $0x3,%ecx
c0036a51:	75 17                	jne    c0036a6a <strcmp+0x2a>
c0036a53:	8b 08                	mov    (%eax),%ecx
c0036a55:	3b 0a                	cmp    (%edx),%ecx
c0036a57:	74 33                	je     c0036a8c <strcmp+0x4c>
c0036a59:	eb 0f                	jmp    c0036a6a <strcmp+0x2a>
c0036a5b:	90                   	nop
c0036a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a60:	3a 0a                	cmp    (%edx),%cl
c0036a62:	75 0d                	jne    c0036a71 <strcmp+0x31>
c0036a64:	83 c0 01             	add    $0x1,%eax
c0036a67:	83 c2 01             	add    $0x1,%edx
c0036a6a:	0f b6 08             	movzbl (%eax),%ecx
c0036a6d:	84 c9                	test   %cl,%cl
c0036a6f:	75 ef                	jne    c0036a60 <strcmp+0x20>
c0036a71:	0f b6 00             	movzbl (%eax),%eax
c0036a74:	0f b6 12             	movzbl (%edx),%edx
c0036a77:	5b                   	pop    %ebx
c0036a78:	5d                   	pop    %ebp
c0036a79:	29 d0                	sub    %edx,%eax
c0036a7b:	c3                   	ret    
c0036a7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a80:	83 c0 04             	add    $0x4,%eax
c0036a83:	83 c2 04             	add    $0x4,%edx
c0036a86:	8b 08                	mov    (%eax),%ecx
c0036a88:	3b 0a                	cmp    (%edx),%ecx
c0036a8a:	75 de                	jne    c0036a6a <strcmp+0x2a>
c0036a8c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036a92:	f7 d1                	not    %ecx
c0036a94:	21 cb                	and    %ecx,%ebx
c0036a96:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036a9c:	74 e2                	je     c0036a80 <strcmp+0x40>
c0036a9e:	31 c0                	xor    %eax,%eax
c0036aa0:	5b                   	pop    %ebx
c0036aa1:	5d                   	pop    %ebp
c0036aa2:	c3                   	ret    
c0036aa3:	66 90                	xchg   %ax,%ax
c0036aa5:	66 90                	xchg   %ax,%ax
c0036aa7:	66 90                	xchg   %ax,%ax
c0036aa9:	66 90                	xchg   %ax,%ax
c0036aab:	66 90                	xchg   %ax,%ax
c0036aad:	66 90                	xchg   %ax,%ax
c0036aaf:	90                   	nop

c0036ab0 <strlen>:
c0036ab0:	55                   	push   %ebp
c0036ab1:	89 e5                	mov    %esp,%ebp
c0036ab3:	57                   	push   %edi
c0036ab4:	8b 55 08             	mov    0x8(%ebp),%edx
c0036ab7:	89 d7                	mov    %edx,%edi
c0036ab9:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036abf:	74 25                	je     c0036ae6 <L5>
c0036ac1:	8a 0f                	mov    (%edi),%cl
c0036ac3:	47                   	inc    %edi
c0036ac4:	84 c9                	test   %cl,%cl
c0036ac6:	74 56                	je     c0036b1e <L15>
c0036ac8:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036ace:	74 16                	je     c0036ae6 <L5>
c0036ad0:	8a 0f                	mov    (%edi),%cl
c0036ad2:	47                   	inc    %edi
c0036ad3:	84 c9                	test   %cl,%cl
c0036ad5:	74 47                	je     c0036b1e <L15>
c0036ad7:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036add:	74 07                	je     c0036ae6 <L5>
c0036adf:	8a 0f                	mov    (%edi),%cl
c0036ae1:	47                   	inc    %edi
c0036ae2:	84 c9                	test   %cl,%cl
c0036ae4:	74 38                	je     c0036b1e <L15>

c0036ae6 <L5>:
c0036ae6:	83 ef 04             	sub    $0x4,%edi
c0036ae9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036af0 <L10>:
c0036af0:	83 c7 04             	add    $0x4,%edi
c0036af3:	8b 0f                	mov    (%edi),%ecx
c0036af5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036afb:	f7 d1                	not    %ecx
c0036afd:	21 c8                	and    %ecx,%eax
c0036aff:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036b04:	74 ea                	je     c0036af0 <L10>
c0036b06:	f7 d1                	not    %ecx
c0036b08:	47                   	inc    %edi
c0036b09:	84 c9                	test   %cl,%cl
c0036b0b:	74 11                	je     c0036b1e <L15>
c0036b0d:	47                   	inc    %edi
c0036b0e:	c1 e9 08             	shr    $0x8,%ecx
c0036b11:	84 c9                	test   %cl,%cl
c0036b13:	74 09                	je     c0036b1e <L15>
c0036b15:	47                   	inc    %edi
c0036b16:	c1 e9 08             	shr    $0x8,%ecx
c0036b19:	84 c9                	test   %cl,%cl
c0036b1b:	74 01                	je     c0036b1e <L15>
c0036b1d:	47                   	inc    %edi

c0036b1e <L15>:
c0036b1e:	29 d7                	sub    %edx,%edi
c0036b20:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036b23:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036b26:	5f                   	pop    %edi
c0036b27:	c9                   	leave  
c0036b28:	c3                   	ret    
c0036b29:	66 90                	xchg   %ax,%ax
c0036b2b:	66 90                	xchg   %ax,%ax
c0036b2d:	66 90                	xchg   %ax,%ax
c0036b2f:	90                   	nop

c0036b30 <__ssprint_r>:
c0036b30:	55                   	push   %ebp
c0036b31:	89 e5                	mov    %esp,%ebp
c0036b33:	57                   	push   %edi
c0036b34:	56                   	push   %esi
c0036b35:	53                   	push   %ebx
c0036b36:	83 ec 2c             	sub    $0x2c,%esp
c0036b39:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b3c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036b3f:	8b 00                	mov    (%eax),%eax
c0036b41:	89 c7                	mov    %eax,%edi
c0036b43:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b46:	8b 40 08             	mov    0x8(%eax),%eax
c0036b49:	85 c0                	test   %eax,%eax
c0036b4b:	0f 84 af 01 00 00    	je     c0036d00 <__ssprint_r+0x1d0>
c0036b51:	31 c9                	xor    %ecx,%ecx
c0036b53:	31 d2                	xor    %edx,%edx
c0036b55:	8b 03                	mov    (%ebx),%eax
c0036b57:	89 ce                	mov    %ecx,%esi
c0036b59:	85 f6                	test   %esi,%esi
c0036b5b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036b5e:	0f 84 ec 00 00 00    	je     c0036c50 <__ssprint_r+0x120>
c0036b64:	8b 53 08             	mov    0x8(%ebx),%edx
c0036b67:	39 d6                	cmp    %edx,%esi
c0036b69:	0f 82 fc 00 00 00    	jb     c0036c6b <__ssprint_r+0x13b>
c0036b6f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036b73:	66 f7 c1 80 04       	test   $0x480,%cx
c0036b78:	0f 84 fa 00 00 00    	je     c0036c78 <__ssprint_r+0x148>
c0036b7e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036b81:	29 d0                	sub    %edx,%eax
c0036b83:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036b86:	8b 43 14             	mov    0x14(%ebx),%eax
c0036b89:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036b8c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036b8f:	89 c2                	mov    %eax,%edx
c0036b91:	c1 ea 1f             	shr    $0x1f,%edx
c0036b94:	01 d0                	add    %edx,%eax
c0036b96:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b99:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036b9c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036b9f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036ba3:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036ba6:	0f 83 34 01 00 00    	jae    c0036ce0 <__ssprint_r+0x1b0>
c0036bac:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036baf:	80 e5 04             	and    $0x4,%ch
c0036bb2:	0f 84 c8 00 00 00    	je     c0036c80 <__ssprint_r+0x150>
c0036bb8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036bbc:	8b 45 08             	mov    0x8(%ebp),%eax
c0036bbf:	89 04 24             	mov    %eax,(%esp)
c0036bc2:	e8 e9 e7 ff ff       	call   c00353b0 <_malloc_r>
c0036bc7:	85 c0                	test   %eax,%eax
c0036bc9:	89 c2                	mov    %eax,%edx
c0036bcb:	0f 84 e1 00 00 00    	je     c0036cb2 <__ssprint_r+0x182>
c0036bd1:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036bd4:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036bd7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036bdb:	8b 43 10             	mov    0x10(%ebx),%eax
c0036bde:	89 14 24             	mov    %edx,(%esp)
c0036be1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036be5:	e8 0a b2 ff ff       	call   c0031df4 <memcpy>
c0036bea:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036bee:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036bf1:	66 25 7f fb          	and    $0xfb7f,%ax
c0036bf5:	0c 80                	or     $0x80,%al
c0036bf7:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036bfb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036bfe:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c01:	89 53 10             	mov    %edx,0x10(%ebx)
c0036c04:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036c07:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036c0a:	01 d0                	add    %edx,%eax
c0036c0c:	89 03                	mov    %eax,(%ebx)
c0036c0e:	89 f2                	mov    %esi,%edx
c0036c10:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036c13:	89 f1                	mov    %esi,%ecx
c0036c15:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036c19:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036c1c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036c1f:	89 04 24             	mov    %eax,(%esp)
c0036c22:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036c25:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036c29:	e8 22 13 00 00       	call   c0037f50 <memmove>
c0036c2e:	8b 03                	mov    (%ebx),%eax
c0036c30:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c33:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036c36:	29 53 08             	sub    %edx,0x8(%ebx)
c0036c39:	01 c8                	add    %ecx,%eax
c0036c3b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036c3e:	89 03                	mov    %eax,(%ebx)
c0036c40:	8b 51 08             	mov    0x8(%ecx),%edx
c0036c43:	29 f2                	sub    %esi,%edx
c0036c45:	85 d2                	test   %edx,%edx
c0036c47:	89 51 08             	mov    %edx,0x8(%ecx)
c0036c4a:	0f 84 98 00 00 00    	je     c0036ce8 <__ssprint_r+0x1b8>
c0036c50:	8b 77 04             	mov    0x4(%edi),%esi
c0036c53:	83 c7 08             	add    $0x8,%edi
c0036c56:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036c59:	85 f6                	test   %esi,%esi
c0036c5b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036c5e:	74 f0                	je     c0036c50 <__ssprint_r+0x120>
c0036c60:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c63:	39 d6                	cmp    %edx,%esi
c0036c65:	0f 83 04 ff ff ff    	jae    c0036b6f <__ssprint_r+0x3f>
c0036c6b:	89 f2                	mov    %esi,%edx
c0036c6d:	89 f1                	mov    %esi,%ecx
c0036c6f:	eb a4                	jmp    c0036c15 <__ssprint_r+0xe5>
c0036c71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c78:	89 d1                	mov    %edx,%ecx
c0036c7a:	eb 99                	jmp    c0036c15 <__ssprint_r+0xe5>
c0036c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c80:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c84:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036c87:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c8e:	89 04 24             	mov    %eax,(%esp)
c0036c91:	e8 4a 13 00 00       	call   c0037fe0 <_realloc_r>
c0036c96:	85 c0                	test   %eax,%eax
c0036c98:	89 c2                	mov    %eax,%edx
c0036c9a:	0f 85 5b ff ff ff    	jne    c0036bfb <__ssprint_r+0xcb>
c0036ca0:	8b 43 10             	mov    0x10(%ebx),%eax
c0036ca3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036ca7:	8b 45 08             	mov    0x8(%ebp),%eax
c0036caa:	89 04 24             	mov    %eax,(%esp)
c0036cad:	e8 3e 10 00 00       	call   c0037cf0 <_free_r>
c0036cb2:	8b 45 08             	mov    0x8(%ebp),%eax
c0036cb5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036cbb:	8b 45 10             	mov    0x10(%ebp),%eax
c0036cbe:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036cc3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036cca:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036cd1:	83 c4 2c             	add    $0x2c,%esp
c0036cd4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036cd9:	5b                   	pop    %ebx
c0036cda:	5e                   	pop    %esi
c0036cdb:	5f                   	pop    %edi
c0036cdc:	5d                   	pop    %ebp
c0036cdd:	c3                   	ret    
c0036cde:	66 90                	xchg   %ax,%ax
c0036ce0:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036ce3:	e9 c7 fe ff ff       	jmp    c0036baf <__ssprint_r+0x7f>
c0036ce8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036cef:	83 c4 2c             	add    $0x2c,%esp
c0036cf2:	31 c0                	xor    %eax,%eax
c0036cf4:	5b                   	pop    %ebx
c0036cf5:	5e                   	pop    %esi
c0036cf6:	5f                   	pop    %edi
c0036cf7:	5d                   	pop    %ebp
c0036cf8:	c3                   	ret    
c0036cf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d00:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d03:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036d0a:	83 c4 2c             	add    $0x2c,%esp
c0036d0d:	31 c0                	xor    %eax,%eax
c0036d0f:	5b                   	pop    %ebx
c0036d10:	5e                   	pop    %esi
c0036d11:	5f                   	pop    %edi
c0036d12:	5d                   	pop    %ebp
c0036d13:	c3                   	ret    
c0036d14:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d1a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036d20 <_svfiprintf_r>:
c0036d20:	55                   	push   %ebp
c0036d21:	89 e5                	mov    %esp,%ebp
c0036d23:	57                   	push   %edi
c0036d24:	56                   	push   %esi
c0036d25:	53                   	push   %ebx
c0036d26:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036d2c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036d2f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036d33:	74 0b                	je     c0036d40 <_svfiprintf_r+0x20>
c0036d35:	8b 50 10             	mov    0x10(%eax),%edx
c0036d38:	85 d2                	test   %edx,%edx
c0036d3a:	0f 84 1c 0d 00 00    	je     c0037a5c <_svfiprintf_r+0xd3c>
c0036d40:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036d43:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036d46:	89 c6                	mov    %eax,%esi
c0036d48:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036d4e:	29 d8                	sub    %ebx,%eax
c0036d50:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036d57:	00 00 00 
c0036d5a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036d61:	00 00 00 
c0036d64:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036d6b:	00 00 00 
c0036d6e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036d75:	00 00 00 
c0036d78:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036d7e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d81:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036d84:	0f b6 00             	movzbl (%eax),%eax
c0036d87:	84 c0                	test   %al,%al
c0036d89:	74 58                	je     c0036de3 <_svfiprintf_r+0xc3>
c0036d8b:	3c 25                	cmp    $0x25,%al
c0036d8d:	75 13                	jne    c0036da2 <_svfiprintf_r+0x82>
c0036d8f:	eb 52                	jmp    c0036de3 <_svfiprintf_r+0xc3>
c0036d91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d98:	84 c0                	test   %al,%al
c0036d9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036da0:	74 0a                	je     c0036dac <_svfiprintf_r+0x8c>
c0036da2:	83 c3 01             	add    $0x1,%ebx
c0036da5:	0f b6 03             	movzbl (%ebx),%eax
c0036da8:	3c 25                	cmp    $0x25,%al
c0036daa:	75 ec                	jne    c0036d98 <_svfiprintf_r+0x78>
c0036dac:	89 df                	mov    %ebx,%edi
c0036dae:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036db1:	74 30                	je     c0036de3 <_svfiprintf_r+0xc3>
c0036db3:	8b 45 10             	mov    0x10(%ebp),%eax
c0036db6:	83 c6 08             	add    $0x8,%esi
c0036db9:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036dbc:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036dc2:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036dc5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036dcb:	83 c0 01             	add    $0x1,%eax
c0036dce:	83 f8 07             	cmp    $0x7,%eax
c0036dd1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036dd7:	0f 8f eb 0a 00 00    	jg     c00378c8 <_svfiprintf_r+0xba8>
c0036ddd:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036de3:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036de6:	0f 84 11 09 00 00    	je     c00376fd <_svfiprintf_r+0x9dd>
c0036dec:	8d 43 01             	lea    0x1(%ebx),%eax
c0036def:	31 ff                	xor    %edi,%edi
c0036df1:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036df8:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036dff:	ff ff ff 
c0036e02:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036e09:	00 00 00 
c0036e0c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036e13:	00 00 00 
c0036e16:	8d 50 01             	lea    0x1(%eax),%edx
c0036e19:	0f be 00             	movsbl (%eax),%eax
c0036e1c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036e1f:	83 f9 58             	cmp    $0x58,%ecx
c0036e22:	0f 87 63 03 00 00    	ja     c003718b <_svfiprintf_r+0x46b>
c0036e28:	ff 24 8d 88 9b 03 c0 	jmp    *-0x3ffc6478(,%ecx,4)
c0036e2f:	90                   	nop
c0036e30:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036e37:	89 d0                	mov    %edx,%eax
c0036e39:	eb db                	jmp    c0036e16 <_svfiprintf_r+0xf6>
c0036e3b:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e3e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036e41:	8b 00                	mov    (%eax),%eax
c0036e43:	83 c3 04             	add    $0x4,%ebx
c0036e46:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036e49:	85 c0                	test   %eax,%eax
c0036e4b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036e51:	79 e4                	jns    c0036e37 <_svfiprintf_r+0x117>
c0036e53:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036e59:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036e60:	89 d0                	mov    %edx,%eax
c0036e62:	eb b2                	jmp    c0036e16 <_svfiprintf_r+0xf6>
c0036e64:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036e69:	89 d0                	mov    %edx,%eax
c0036e6b:	eb a9                	jmp    c0036e16 <_svfiprintf_r+0xf6>
c0036e6d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e70:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036e77:	89 55 10             	mov    %edx,0x10(%ebp)
c0036e7a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036e7f:	8b 08                	mov    (%eax),%ecx
c0036e81:	83 c0 04             	add    $0x4,%eax
c0036e84:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036e8b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036e92:	89 45 14             	mov    %eax,0x14(%ebp)
c0036e95:	c7 85 44 ff ff ff 1f 	movl   $0xc003981f,-0xbc(%ebp)
c0036e9c:	98 03 c0 
c0036e9f:	90                   	nop
c0036ea0:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036ea7:	31 ff                	xor    %edi,%edi
c0036ea9:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036eaf:	89 d8                	mov    %ebx,%eax
c0036eb1:	24 7f                	and    $0x7f,%al
c0036eb3:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036eba:	0f 48 c3             	cmovs  %ebx,%eax
c0036ebd:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036ec3:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036ec9:	85 c0                	test   %eax,%eax
c0036ecb:	75 08                	jne    c0036ed5 <_svfiprintf_r+0x1b5>
c0036ecd:	85 c9                	test   %ecx,%ecx
c0036ecf:	0f 84 03 08 00 00    	je     c00376d8 <_svfiprintf_r+0x9b8>
c0036ed5:	80 fa 01             	cmp    $0x1,%dl
c0036ed8:	0f 84 8a 0a 00 00    	je     c0037968 <_svfiprintf_r+0xc48>
c0036ede:	80 fa 02             	cmp    $0x2,%dl
c0036ee1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036ee4:	0f 85 86 01 00 00    	jne    c0037070 <_svfiprintf_r+0x350>
c0036eea:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036ef0:	89 c8                	mov    %ecx,%eax
c0036ef2:	83 eb 01             	sub    $0x1,%ebx
c0036ef5:	83 e0 0f             	and    $0xf,%eax
c0036ef8:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036efc:	c1 e9 04             	shr    $0x4,%ecx
c0036eff:	85 c9                	test   %ecx,%ecx
c0036f01:	88 03                	mov    %al,(%ebx)
c0036f03:	75 eb                	jne    c0036ef0 <_svfiprintf_r+0x1d0>
c0036f05:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036f08:	29 d8                	sub    %ebx,%eax
c0036f0a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036f10:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036f16:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036f1c:	39 c1                	cmp    %eax,%ecx
c0036f1e:	0f 4d c1             	cmovge %ecx,%eax
c0036f21:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f27:	89 f8                	mov    %edi,%eax
c0036f29:	3c 01                	cmp    $0x1,%al
c0036f2b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036f32:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036f38:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036f3e:	89 d0                	mov    %edx,%eax
c0036f40:	89 cf                	mov    %ecx,%edi
c0036f42:	83 c0 02             	add    $0x2,%eax
c0036f45:	83 e7 02             	and    $0x2,%edi
c0036f48:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036f4e:	89 cf                	mov    %ecx,%edi
c0036f50:	0f 44 c2             	cmove  %edx,%eax
c0036f53:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036f59:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f5f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036f65:	0f 85 cd 04 00 00    	jne    c0037438 <_svfiprintf_r+0x718>
c0036f6b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036f71:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036f77:	85 ff                	test   %edi,%edi
c0036f79:	0f 8e b9 04 00 00    	jle    c0037438 <_svfiprintf_r+0x718>
c0036f7f:	83 ff 10             	cmp    $0x10,%edi
c0036f82:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036f88:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036f8e:	7e 7c                	jle    c003700c <_svfiprintf_r+0x2ec>
c0036f90:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0036f96:	89 f1                	mov    %esi,%ecx
c0036f98:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036f9b:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036f9e:	eb 08                	jmp    c0036fa8 <_svfiprintf_r+0x288>
c0036fa0:	83 ef 10             	sub    $0x10,%edi
c0036fa3:	83 ff 10             	cmp    $0x10,%edi
c0036fa6:	7e 5c                	jle    c0037004 <_svfiprintf_r+0x2e4>
c0036fa8:	83 c0 01             	add    $0x1,%eax
c0036fab:	83 c2 10             	add    $0x10,%edx
c0036fae:	c7 01 fc 9c 03 c0    	movl   $0xc0039cfc,(%ecx)
c0036fb4:	83 c1 08             	add    $0x8,%ecx
c0036fb7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0036fbe:	83 f8 07             	cmp    $0x7,%eax
c0036fc1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036fc7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036fcd:	7e d1                	jle    c0036fa0 <_svfiprintf_r+0x280>
c0036fcf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036fd5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036fd9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036fdd:	89 1c 24             	mov    %ebx,(%esp)
c0036fe0:	e8 4b fb ff ff       	call   c0036b30 <__ssprint_r>
c0036fe5:	85 c0                	test   %eax,%eax
c0036fe7:	0f 85 3b 07 00 00    	jne    c0037728 <_svfiprintf_r+0xa08>
c0036fed:	83 ef 10             	sub    $0x10,%edi
c0036ff0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036ff6:	83 ff 10             	cmp    $0x10,%edi
c0036ff9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036fff:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037002:	7f a4                	jg     c0036fa8 <_svfiprintf_r+0x288>
c0037004:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c003700a:	89 ce                	mov    %ecx,%esi
c003700c:	83 c0 01             	add    $0x1,%eax
c003700f:	01 fa                	add    %edi,%edx
c0037011:	c7 06 fc 9c 03 c0    	movl   $0xc0039cfc,(%esi)
c0037017:	83 c6 08             	add    $0x8,%esi
c003701a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003701d:	83 f8 07             	cmp    $0x7,%eax
c0037020:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037026:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003702c:	0f 8e 12 04 00 00    	jle    c0037444 <_svfiprintf_r+0x724>
c0037032:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037038:	89 44 24 08          	mov    %eax,0x8(%esp)
c003703c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003703f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037043:	8b 45 08             	mov    0x8(%ebp),%eax
c0037046:	89 04 24             	mov    %eax,(%esp)
c0037049:	e8 e2 fa ff ff       	call   c0036b30 <__ssprint_r>
c003704e:	85 c0                	test   %eax,%eax
c0037050:	0f 85 d2 06 00 00    	jne    c0037728 <_svfiprintf_r+0xa08>
c0037056:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003705c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003705f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037065:	e9 da 03 00 00       	jmp    c0037444 <_svfiprintf_r+0x724>
c003706a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037070:	89 c8                	mov    %ecx,%eax
c0037072:	83 eb 01             	sub    $0x1,%ebx
c0037075:	83 e0 07             	and    $0x7,%eax
c0037078:	c1 e9 03             	shr    $0x3,%ecx
c003707b:	83 c0 30             	add    $0x30,%eax
c003707e:	85 c9                	test   %ecx,%ecx
c0037080:	88 03                	mov    %al,(%ebx)
c0037082:	75 ec                	jne    c0037070 <_svfiprintf_r+0x350>
c0037084:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003708b:	89 da                	mov    %ebx,%edx
c003708d:	0f 84 72 fe ff ff    	je     c0036f05 <_svfiprintf_r+0x1e5>
c0037093:	3c 30                	cmp    $0x30,%al
c0037095:	0f 84 6a fe ff ff    	je     c0036f05 <_svfiprintf_r+0x1e5>
c003709b:	83 eb 01             	sub    $0x1,%ebx
c003709e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00370a1:	29 d8                	sub    %ebx,%eax
c00370a3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c00370a7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00370ad:	e9 5e fe ff ff       	jmp    c0036f10 <_svfiprintf_r+0x1f0>
c00370b2:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00370b9:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370c0:	89 55 10             	mov    %edx,0x10(%ebp)
c00370c3:	8b 45 14             	mov    0x14(%ebp),%eax
c00370c6:	0f 85 48 01 00 00    	jne    c0037214 <_svfiprintf_r+0x4f4>
c00370cc:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370d3:	0f 84 3b 01 00 00    	je     c0037214 <_svfiprintf_r+0x4f4>
c00370d9:	0f b7 08             	movzwl (%eax),%ecx
c00370dc:	83 c0 04             	add    $0x4,%eax
c00370df:	31 d2                	xor    %edx,%edx
c00370e1:	89 45 14             	mov    %eax,0x14(%ebp)
c00370e4:	e9 b7 fd ff ff       	jmp    c0036ea0 <_svfiprintf_r+0x180>
c00370e9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00370f0:	89 f8                	mov    %edi,%eax
c00370f2:	89 55 10             	mov    %edx,0x10(%ebp)
c00370f5:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00370fb:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037102:	8b 45 14             	mov    0x14(%ebp),%eax
c0037105:	75 0d                	jne    c0037114 <_svfiprintf_r+0x3f4>
c0037107:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003710e:	0f 85 f2 08 00 00    	jne    c0037a06 <_svfiprintf_r+0xce6>
c0037114:	8b 08                	mov    (%eax),%ecx
c0037116:	83 c0 04             	add    $0x4,%eax
c0037119:	89 45 14             	mov    %eax,0x14(%ebp)
c003711c:	85 c9                	test   %ecx,%ecx
c003711e:	0f 88 f3 08 00 00    	js     c0037a17 <_svfiprintf_r+0xcf7>
c0037124:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003712b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037130:	e9 74 fd ff ff       	jmp    c0036ea9 <_svfiprintf_r+0x189>
c0037135:	0f be 02             	movsbl (%edx),%eax
c0037138:	8d 5a 01             	lea    0x1(%edx),%ebx
c003713b:	83 f8 2a             	cmp    $0x2a,%eax
c003713e:	0f 84 af 09 00 00    	je     c0037af3 <_svfiprintf_r+0xdd3>
c0037144:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037147:	31 d2                	xor    %edx,%edx
c0037149:	83 f9 09             	cmp    $0x9,%ecx
c003714c:	0f 87 90 09 00 00    	ja     c0037ae2 <_svfiprintf_r+0xdc2>
c0037152:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037158:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003715b:	83 c3 01             	add    $0x1,%ebx
c003715e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037161:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037165:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037168:	83 f9 09             	cmp    $0x9,%ecx
c003716b:	76 eb                	jbe    c0037158 <_svfiprintf_r+0x438>
c003716d:	85 d2                	test   %edx,%edx
c003716f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037174:	0f 48 d1             	cmovs  %ecx,%edx
c0037177:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003717a:	83 f9 58             	cmp    $0x58,%ecx
c003717d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037183:	89 da                	mov    %ebx,%edx
c0037185:	0f 86 9d fc ff ff    	jbe    c0036e28 <_svfiprintf_r+0x108>
c003718b:	89 fb                	mov    %edi,%ebx
c003718d:	85 c0                	test   %eax,%eax
c003718f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037192:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037198:	0f 84 5f 05 00 00    	je     c00376fd <_svfiprintf_r+0x9dd>
c003719e:	88 45 80             	mov    %al,-0x80(%ebp)
c00371a1:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00371a4:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00371ab:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00371b2:	00 00 00 
c00371b5:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00371bc:	00 00 00 
c00371bf:	e9 5a 01 00 00       	jmp    c003731e <_svfiprintf_r+0x5fe>
c00371c4:	31 db                	xor    %ebx,%ebx
c00371c6:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00371d0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c00371d3:	83 c2 01             	add    $0x1,%edx
c00371d6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c00371d9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c00371dd:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371e0:	83 f9 09             	cmp    $0x9,%ecx
c00371e3:	76 eb                	jbe    c00371d0 <_svfiprintf_r+0x4b0>
c00371e5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c00371eb:	e9 2c fc ff ff       	jmp    c0036e1c <_svfiprintf_r+0xfc>
c00371f0:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c00371f7:	00 00 00 
c00371fa:	89 d0                	mov    %edx,%eax
c00371fc:	e9 15 fc ff ff       	jmp    c0036e16 <_svfiprintf_r+0xf6>
c0037201:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037208:	89 55 10             	mov    %edx,0x10(%ebp)
c003720b:	8b 45 14             	mov    0x14(%ebp),%eax
c003720e:	0f 84 b8 fe ff ff    	je     c00370cc <_svfiprintf_r+0x3ac>
c0037214:	8b 08                	mov    (%eax),%ecx
c0037216:	83 c0 04             	add    $0x4,%eax
c0037219:	31 d2                	xor    %edx,%edx
c003721b:	89 45 14             	mov    %eax,0x14(%ebp)
c003721e:	e9 7d fc ff ff       	jmp    c0036ea0 <_svfiprintf_r+0x180>
c0037223:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003722a:	89 f8                	mov    %edi,%eax
c003722c:	89 55 10             	mov    %edx,0x10(%ebp)
c003722f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037235:	0f 85 a2 07 00 00    	jne    c00379dd <_svfiprintf_r+0xcbd>
c003723b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037242:	0f 84 95 07 00 00    	je     c00379dd <_svfiprintf_r+0xcbd>
c0037248:	8b 45 14             	mov    0x14(%ebp),%eax
c003724b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037252:	8b 00                	mov    (%eax),%eax
c0037254:	66 89 18             	mov    %bx,(%eax)
c0037257:	8b 45 14             	mov    0x14(%ebp),%eax
c003725a:	83 c0 04             	add    $0x4,%eax
c003725d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037260:	e9 19 fb ff ff       	jmp    c0036d7e <_svfiprintf_r+0x5e>
c0037265:	89 fb                	mov    %edi,%ebx
c0037267:	89 55 10             	mov    %edx,0x10(%ebp)
c003726a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037270:	c7 85 44 ff ff ff 1f 	movl   $0xc003981f,-0xbc(%ebp)
c0037277:	98 03 c0 
c003727a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037281:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037284:	75 0d                	jne    c0037293 <_svfiprintf_r+0x573>
c0037286:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003728d:	0f 85 65 07 00 00    	jne    c00379f8 <_svfiprintf_r+0xcd8>
c0037293:	8b 0b                	mov    (%ebx),%ecx
c0037295:	83 c3 04             	add    $0x4,%ebx
c0037298:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003729b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00372a2:	ba 02 00 00 00       	mov    $0x2,%edx
c00372a7:	0f 84 f3 fb ff ff    	je     c0036ea0 <_svfiprintf_r+0x180>
c00372ad:	85 c9                	test   %ecx,%ecx
c00372af:	0f 84 eb fb ff ff    	je     c0036ea0 <_svfiprintf_r+0x180>
c00372b5:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c00372bc:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c00372c2:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c00372c9:	e9 d2 fb ff ff       	jmp    c0036ea0 <_svfiprintf_r+0x180>
c00372ce:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c00372d5:	89 d0                	mov    %edx,%eax
c00372d7:	e9 3a fb ff ff       	jmp    c0036e16 <_svfiprintf_r+0xf6>
c00372dc:	89 f8                	mov    %edi,%eax
c00372de:	89 55 10             	mov    %edx,0x10(%ebp)
c00372e1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00372e7:	e9 0f fe ff ff       	jmp    c00370fb <_svfiprintf_r+0x3db>
c00372ec:	8b 45 14             	mov    0x14(%ebp),%eax
c00372ef:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00372f2:	89 55 10             	mov    %edx,0x10(%ebp)
c00372f5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00372fc:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037303:	00 00 00 
c0037306:	8b 00                	mov    (%eax),%eax
c0037308:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003730f:	00 00 00 
c0037312:	88 45 80             	mov    %al,-0x80(%ebp)
c0037315:	8b 45 14             	mov    0x14(%ebp),%eax
c0037318:	83 c0 04             	add    $0x4,%eax
c003731b:	89 45 14             	mov    %eax,0x14(%ebp)
c003731e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037325:	00 00 00 
c0037328:	e9 05 fc ff ff       	jmp    c0036f32 <_svfiprintf_r+0x212>
c003732d:	89 fb                	mov    %edi,%ebx
c003732f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037332:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037338:	c7 85 44 ff ff ff 0e 	movl   $0xc003980e,-0xbc(%ebp)
c003733f:	98 03 c0 
c0037342:	e9 33 ff ff ff       	jmp    c003727a <_svfiprintf_r+0x55a>
c0037347:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c003734e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037355:	89 55 10             	mov    %edx,0x10(%ebp)
c0037358:	8b 45 14             	mov    0x14(%ebp),%eax
c003735b:	75 39                	jne    c0037396 <_svfiprintf_r+0x676>
c003735d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037364:	74 30                	je     c0037396 <_svfiprintf_r+0x676>
c0037366:	0f b7 08             	movzwl (%eax),%ecx
c0037369:	83 c0 04             	add    $0x4,%eax
c003736c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037371:	89 45 14             	mov    %eax,0x14(%ebp)
c0037374:	e9 27 fb ff ff       	jmp    c0036ea0 <_svfiprintf_r+0x180>
c0037379:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037380:	89 d0                	mov    %edx,%eax
c0037382:	e9 8f fa ff ff       	jmp    c0036e16 <_svfiprintf_r+0xf6>
c0037387:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003738e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037391:	8b 45 14             	mov    0x14(%ebp),%eax
c0037394:	74 c7                	je     c003735d <_svfiprintf_r+0x63d>
c0037396:	8b 08                	mov    (%eax),%ecx
c0037398:	83 c0 04             	add    $0x4,%eax
c003739b:	ba 01 00 00 00       	mov    $0x1,%edx
c00373a0:	89 45 14             	mov    %eax,0x14(%ebp)
c00373a3:	e9 f8 fa ff ff       	jmp    c0036ea0 <_svfiprintf_r+0x180>
c00373a8:	8b 45 14             	mov    0x14(%ebp),%eax
c00373ab:	89 55 10             	mov    %edx,0x10(%ebp)
c00373ae:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00373b5:	8b 18                	mov    (%eax),%ebx
c00373b7:	8d 50 04             	lea    0x4(%eax),%edx
c00373ba:	85 db                	test   %ebx,%ebx
c00373bc:	0f 84 cc 06 00 00    	je     c0037a8e <_svfiprintf_r+0xd6e>
c00373c2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00373c8:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c00373ce:	85 ff                	test   %edi,%edi
c00373d0:	0f 88 59 06 00 00    	js     c0037a2f <_svfiprintf_r+0xd0f>
c00373d6:	89 7c 24 08          	mov    %edi,0x8(%esp)
c00373da:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00373e1:	00 
c00373e2:	89 1c 24             	mov    %ebx,(%esp)
c00373e5:	e8 06 e7 ff ff       	call   c0035af0 <memchr>
c00373ea:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00373f0:	85 c0                	test   %eax,%eax
c00373f2:	0f 84 c5 06 00 00    	je     c0037abd <_svfiprintf_r+0xd9d>
c00373f8:	29 d8                	sub    %ebx,%eax
c00373fa:	39 f8                	cmp    %edi,%eax
c00373fc:	0f 4f c7             	cmovg  %edi,%eax
c00373ff:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037406:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003740c:	89 55 14             	mov    %edx,0x14(%ebp)
c003740f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037416:	00 00 00 
c0037419:	e9 f2 fa ff ff       	jmp    c0036f10 <_svfiprintf_r+0x1f0>
c003741e:	89 f8                	mov    %edi,%eax
c0037420:	84 c0                	test   %al,%al
c0037422:	b8 20 00 00 00       	mov    $0x20,%eax
c0037427:	0f 44 f8             	cmove  %eax,%edi
c003742a:	89 d0                	mov    %edx,%eax
c003742c:	e9 e5 f9 ff ff       	jmp    c0036e16 <_svfiprintf_r+0xf6>
c0037431:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037438:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003743e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037444:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c003744b:	74 2e                	je     c003747b <_svfiprintf_r+0x75b>
c003744d:	83 c0 01             	add    $0x1,%eax
c0037450:	83 c2 01             	add    $0x1,%edx
c0037453:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037459:	83 c6 08             	add    $0x8,%esi
c003745c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003745f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037466:	83 f8 07             	cmp    $0x7,%eax
c0037469:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003746f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037475:	0f 8f b5 04 00 00    	jg     c0037930 <_svfiprintf_r+0xc10>
c003747b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037481:	85 c9                	test   %ecx,%ecx
c0037483:	74 2e                	je     c00374b3 <_svfiprintf_r+0x793>
c0037485:	83 c0 01             	add    $0x1,%eax
c0037488:	83 c2 02             	add    $0x2,%edx
c003748b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037491:	83 c6 08             	add    $0x8,%esi
c0037494:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037497:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003749e:	83 f8 07             	cmp    $0x7,%eax
c00374a1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00374a7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374ad:	0f 8f 45 04 00 00    	jg     c00378f8 <_svfiprintf_r+0xbd8>
c00374b3:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c00374ba:	00 00 00 
c00374bd:	0f 84 9d 02 00 00    	je     c0037760 <_svfiprintf_r+0xa40>
c00374c3:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00374c9:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c00374cf:	85 ff                	test   %edi,%edi
c00374d1:	0f 8e e1 00 00 00    	jle    c00375b8 <_svfiprintf_r+0x898>
c00374d7:	83 ff 10             	cmp    $0x10,%edi
c00374da:	0f 8e 7c 00 00 00    	jle    c003755c <_svfiprintf_r+0x83c>
c00374e0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c00374e6:	89 f1                	mov    %esi,%ecx
c00374e8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00374eb:	8b 75 0c             	mov    0xc(%ebp),%esi
c00374ee:	eb 08                	jmp    c00374f8 <_svfiprintf_r+0x7d8>
c00374f0:	83 ef 10             	sub    $0x10,%edi
c00374f3:	83 ff 10             	cmp    $0x10,%edi
c00374f6:	7e 5c                	jle    c0037554 <_svfiprintf_r+0x834>
c00374f8:	83 c0 01             	add    $0x1,%eax
c00374fb:	83 c2 10             	add    $0x10,%edx
c00374fe:	c7 01 ec 9c 03 c0    	movl   $0xc0039cec,(%ecx)
c0037504:	83 c1 08             	add    $0x8,%ecx
c0037507:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003750e:	83 f8 07             	cmp    $0x7,%eax
c0037511:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037517:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003751d:	7e d1                	jle    c00374f0 <_svfiprintf_r+0x7d0>
c003751f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037525:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037529:	89 74 24 04          	mov    %esi,0x4(%esp)
c003752d:	89 1c 24             	mov    %ebx,(%esp)
c0037530:	e8 fb f5 ff ff       	call   c0036b30 <__ssprint_r>
c0037535:	85 c0                	test   %eax,%eax
c0037537:	0f 85 eb 01 00 00    	jne    c0037728 <_svfiprintf_r+0xa08>
c003753d:	83 ef 10             	sub    $0x10,%edi
c0037540:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037546:	83 ff 10             	cmp    $0x10,%edi
c0037549:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003754f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037552:	7f a4                	jg     c00374f8 <_svfiprintf_r+0x7d8>
c0037554:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003755a:	89 ce                	mov    %ecx,%esi
c003755c:	83 c0 01             	add    $0x1,%eax
c003755f:	01 fa                	add    %edi,%edx
c0037561:	c7 06 ec 9c 03 c0    	movl   $0xc0039cec,(%esi)
c0037567:	83 c6 08             	add    $0x8,%esi
c003756a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003756d:	83 f8 07             	cmp    $0x7,%eax
c0037570:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037576:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003757c:	7e 3a                	jle    c00375b8 <_svfiprintf_r+0x898>
c003757e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037584:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037588:	8b 45 0c             	mov    0xc(%ebp),%eax
c003758b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003758f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037592:	89 04 24             	mov    %eax,(%esp)
c0037595:	e8 96 f5 ff ff       	call   c0036b30 <__ssprint_r>
c003759a:	85 c0                	test   %eax,%eax
c003759c:	0f 85 86 01 00 00    	jne    c0037728 <_svfiprintf_r+0xa08>
c00375a2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00375a8:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00375ab:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00375b8:	89 1e                	mov    %ebx,(%esi)
c00375ba:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c00375c0:	83 c0 01             	add    $0x1,%eax
c00375c3:	83 c6 08             	add    $0x8,%esi
c00375c6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375cc:	89 5e fc             	mov    %ebx,-0x4(%esi)
c00375cf:	01 da                	add    %ebx,%edx
c00375d1:	83 f8 07             	cmp    $0x7,%eax
c00375d4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375da:	0f 8f 80 02 00 00    	jg     c0037860 <_svfiprintf_r+0xb40>
c00375e0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c00375e7:	0f 84 b9 00 00 00    	je     c00376a6 <_svfiprintf_r+0x986>
c00375ed:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c00375f3:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c00375f9:	85 ff                	test   %edi,%edi
c00375fb:	0f 8e a5 00 00 00    	jle    c00376a6 <_svfiprintf_r+0x986>
c0037601:	83 ff 10             	cmp    $0x10,%edi
c0037604:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003760a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0037610:	7e 71                	jle    c0037683 <_svfiprintf_r+0x963>
c0037612:	89 f1                	mov    %esi,%ecx
c0037614:	8b 75 08             	mov    0x8(%ebp),%esi
c0037617:	eb 0f                	jmp    c0037628 <_svfiprintf_r+0x908>
c0037619:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037620:	83 ef 10             	sub    $0x10,%edi
c0037623:	83 ff 10             	cmp    $0x10,%edi
c0037626:	7e 59                	jle    c0037681 <_svfiprintf_r+0x961>
c0037628:	83 c0 01             	add    $0x1,%eax
c003762b:	83 c2 10             	add    $0x10,%edx
c003762e:	c7 01 fc 9c 03 c0    	movl   $0xc0039cfc,(%ecx)
c0037634:	83 c1 08             	add    $0x8,%ecx
c0037637:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003763e:	83 f8 07             	cmp    $0x7,%eax
c0037641:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037647:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003764d:	7e d1                	jle    c0037620 <_svfiprintf_r+0x900>
c003764f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037652:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037656:	89 34 24             	mov    %esi,(%esp)
c0037659:	89 44 24 04          	mov    %eax,0x4(%esp)
c003765d:	e8 ce f4 ff ff       	call   c0036b30 <__ssprint_r>
c0037662:	85 c0                	test   %eax,%eax
c0037664:	0f 85 be 00 00 00    	jne    c0037728 <_svfiprintf_r+0xa08>
c003766a:	83 ef 10             	sub    $0x10,%edi
c003766d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037673:	83 ff 10             	cmp    $0x10,%edi
c0037676:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003767c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003767f:	7f a7                	jg     c0037628 <_svfiprintf_r+0x908>
c0037681:	89 ce                	mov    %ecx,%esi
c0037683:	83 c0 01             	add    $0x1,%eax
c0037686:	01 fa                	add    %edi,%edx
c0037688:	83 f8 07             	cmp    $0x7,%eax
c003768b:	c7 06 fc 9c 03 c0    	movl   $0xc0039cfc,(%esi)
c0037691:	89 7e 04             	mov    %edi,0x4(%esi)
c0037694:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003769a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00376a0:	0f 8f ee 02 00 00    	jg     c0037994 <_svfiprintf_r+0xc74>
c00376a6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c00376ac:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c00376b2:	39 c6                	cmp    %eax,%esi
c00376b4:	0f 4d c6             	cmovge %esi,%eax
c00376b7:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c00376bd:	85 d2                	test   %edx,%edx
c00376bf:	0f 85 d3 01 00 00    	jne    c0037898 <_svfiprintf_r+0xb78>
c00376c5:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00376cc:	00 00 00 
c00376cf:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00376d2:	e9 a7 f6 ff ff       	jmp    c0036d7e <_svfiprintf_r+0x5e>
c00376d7:	90                   	nop
c00376d8:	84 d2                	test   %dl,%dl
c00376da:	75 6c                	jne    c0037748 <_svfiprintf_r+0xa28>
c00376dc:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00376e3:	74 63                	je     c0037748 <_svfiprintf_r+0xa28>
c00376e5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00376eb:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00376ee:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c00376f2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00376f8:	e9 13 f8 ff ff       	jmp    c0036f10 <_svfiprintf_r+0x1f0>
c00376fd:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0037703:	85 c0                	test   %eax,%eax
c0037705:	74 21                	je     c0037728 <_svfiprintf_r+0xa08>
c0037707:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003770d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037711:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037714:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037718:	8b 45 08             	mov    0x8(%ebp),%eax
c003771b:	89 04 24             	mov    %eax,(%esp)
c003771e:	e8 0d f4 ff ff       	call   c0036b30 <__ssprint_r>
c0037723:	90                   	nop
c0037724:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037728:	8b 75 0c             	mov    0xc(%ebp),%esi
c003772b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037730:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037734:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c003773b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037741:	5b                   	pop    %ebx
c0037742:	5e                   	pop    %esi
c0037743:	5f                   	pop    %edi
c0037744:	5d                   	pop    %ebp
c0037745:	c3                   	ret    
c0037746:	66 90                	xchg   %ax,%ax
c0037748:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c003774f:	00 00 00 
c0037752:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037755:	e9 b6 f7 ff ff       	jmp    c0036f10 <_svfiprintf_r+0x1f0>
c003775a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037760:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037766:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003776c:	85 ff                	test   %edi,%edi
c003776e:	0f 8e 4f fd ff ff    	jle    c00374c3 <_svfiprintf_r+0x7a3>
c0037774:	83 ff 10             	cmp    $0x10,%edi
c0037777:	0f 8e 7f 00 00 00    	jle    c00377fc <_svfiprintf_r+0xadc>
c003777d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037783:	89 f1                	mov    %esi,%ecx
c0037785:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037788:	8b 75 0c             	mov    0xc(%ebp),%esi
c003778b:	eb 0b                	jmp    c0037798 <_svfiprintf_r+0xa78>
c003778d:	8d 76 00             	lea    0x0(%esi),%esi
c0037790:	83 ef 10             	sub    $0x10,%edi
c0037793:	83 ff 10             	cmp    $0x10,%edi
c0037796:	7e 5c                	jle    c00377f4 <_svfiprintf_r+0xad4>
c0037798:	83 c0 01             	add    $0x1,%eax
c003779b:	83 c2 10             	add    $0x10,%edx
c003779e:	c7 01 ec 9c 03 c0    	movl   $0xc0039cec,(%ecx)
c00377a4:	83 c1 08             	add    $0x8,%ecx
c00377a7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00377ae:	83 f8 07             	cmp    $0x7,%eax
c00377b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377bd:	7e d1                	jle    c0037790 <_svfiprintf_r+0xa70>
c00377bf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377c5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377c9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00377cd:	89 1c 24             	mov    %ebx,(%esp)
c00377d0:	e8 5b f3 ff ff       	call   c0036b30 <__ssprint_r>
c00377d5:	85 c0                	test   %eax,%eax
c00377d7:	0f 85 4b ff ff ff    	jne    c0037728 <_svfiprintf_r+0xa08>
c00377dd:	83 ef 10             	sub    $0x10,%edi
c00377e0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00377e6:	83 ff 10             	cmp    $0x10,%edi
c00377e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00377ef:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00377f2:	7f a4                	jg     c0037798 <_svfiprintf_r+0xa78>
c00377f4:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c00377fa:	89 ce                	mov    %ecx,%esi
c00377fc:	83 c0 01             	add    $0x1,%eax
c00377ff:	01 fa                	add    %edi,%edx
c0037801:	c7 06 ec 9c 03 c0    	movl   $0xc0039cec,(%esi)
c0037807:	83 c6 08             	add    $0x8,%esi
c003780a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003780d:	83 f8 07             	cmp    $0x7,%eax
c0037810:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037816:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003781c:	0f 8e a1 fc ff ff    	jle    c00374c3 <_svfiprintf_r+0x7a3>
c0037822:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037828:	89 44 24 08          	mov    %eax,0x8(%esp)
c003782c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003782f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037833:	8b 45 08             	mov    0x8(%ebp),%eax
c0037836:	89 04 24             	mov    %eax,(%esp)
c0037839:	e8 f2 f2 ff ff       	call   c0036b30 <__ssprint_r>
c003783e:	85 c0                	test   %eax,%eax
c0037840:	0f 85 e2 fe ff ff    	jne    c0037728 <_svfiprintf_r+0xa08>
c0037846:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003784c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003784f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037855:	e9 69 fc ff ff       	jmp    c00374c3 <_svfiprintf_r+0x7a3>
c003785a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037860:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037866:	89 44 24 08          	mov    %eax,0x8(%esp)
c003786a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003786d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037871:	8b 45 08             	mov    0x8(%ebp),%eax
c0037874:	89 04 24             	mov    %eax,(%esp)
c0037877:	e8 b4 f2 ff ff       	call   c0036b30 <__ssprint_r>
c003787c:	85 c0                	test   %eax,%eax
c003787e:	0f 85 a4 fe ff ff    	jne    c0037728 <_svfiprintf_r+0xa08>
c0037884:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003788a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003788d:	e9 4e fd ff ff       	jmp    c00375e0 <_svfiprintf_r+0x8c0>
c0037892:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037898:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003789e:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378a2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378a5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378ac:	89 04 24             	mov    %eax,(%esp)
c00378af:	e8 7c f2 ff ff       	call   c0036b30 <__ssprint_r>
c00378b4:	85 c0                	test   %eax,%eax
c00378b6:	0f 84 09 fe ff ff    	je     c00376c5 <_svfiprintf_r+0x9a5>
c00378bc:	e9 67 fe ff ff       	jmp    c0037728 <_svfiprintf_r+0xa08>
c00378c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00378c8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378ce:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378d2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378d5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378dc:	89 04 24             	mov    %eax,(%esp)
c00378df:	e8 4c f2 ff ff       	call   c0036b30 <__ssprint_r>
c00378e4:	85 c0                	test   %eax,%eax
c00378e6:	0f 85 3c fe ff ff    	jne    c0037728 <_svfiprintf_r+0xa08>
c00378ec:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378ef:	e9 e9 f4 ff ff       	jmp    c0036ddd <_svfiprintf_r+0xbd>
c00378f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00378f8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378fe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037902:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037905:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037909:	8b 45 08             	mov    0x8(%ebp),%eax
c003790c:	89 04 24             	mov    %eax,(%esp)
c003790f:	e8 1c f2 ff ff       	call   c0036b30 <__ssprint_r>
c0037914:	85 c0                	test   %eax,%eax
c0037916:	0f 85 0c fe ff ff    	jne    c0037728 <_svfiprintf_r+0xa08>
c003791c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037922:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037925:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003792b:	e9 83 fb ff ff       	jmp    c00374b3 <_svfiprintf_r+0x793>
c0037930:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037936:	89 44 24 08          	mov    %eax,0x8(%esp)
c003793a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003793d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037941:	8b 45 08             	mov    0x8(%ebp),%eax
c0037944:	89 04 24             	mov    %eax,(%esp)
c0037947:	e8 e4 f1 ff ff       	call   c0036b30 <__ssprint_r>
c003794c:	85 c0                	test   %eax,%eax
c003794e:	0f 85 d4 fd ff ff    	jne    c0037728 <_svfiprintf_r+0xa08>
c0037954:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003795a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003795d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037963:	e9 13 fb ff ff       	jmp    c003747b <_svfiprintf_r+0x75b>
c0037968:	83 f9 09             	cmp    $0x9,%ecx
c003796b:	76 56                	jbe    c00379c3 <_svfiprintf_r+0xca3>
c003796d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037970:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037975:	83 eb 01             	sub    $0x1,%ebx
c0037978:	f7 e1                	mul    %ecx
c003797a:	c1 ea 03             	shr    $0x3,%edx
c003797d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037980:	01 c0                	add    %eax,%eax
c0037982:	29 c1                	sub    %eax,%ecx
c0037984:	83 c1 30             	add    $0x30,%ecx
c0037987:	85 d2                	test   %edx,%edx
c0037989:	88 0b                	mov    %cl,(%ebx)
c003798b:	89 d1                	mov    %edx,%ecx
c003798d:	75 e1                	jne    c0037970 <_svfiprintf_r+0xc50>
c003798f:	e9 71 f5 ff ff       	jmp    c0036f05 <_svfiprintf_r+0x1e5>
c0037994:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003799a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003799e:	8b 45 0c             	mov    0xc(%ebp),%eax
c00379a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00379a5:	8b 45 08             	mov    0x8(%ebp),%eax
c00379a8:	89 04 24             	mov    %eax,(%esp)
c00379ab:	e8 80 f1 ff ff       	call   c0036b30 <__ssprint_r>
c00379b0:	85 c0                	test   %eax,%eax
c00379b2:	0f 85 70 fd ff ff    	jne    c0037728 <_svfiprintf_r+0xa08>
c00379b8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00379be:	e9 e3 fc ff ff       	jmp    c00376a6 <_svfiprintf_r+0x986>
c00379c3:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00379c9:	83 c1 30             	add    $0x30,%ecx
c00379cc:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00379cf:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00379d2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00379d8:	e9 33 f5 ff ff       	jmp    c0036f10 <_svfiprintf_r+0x1f0>
c00379dd:	8b 45 14             	mov    0x14(%ebp),%eax
c00379e0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c00379e6:	8b 00                	mov    (%eax),%eax
c00379e8:	89 18                	mov    %ebx,(%eax)
c00379ea:	8b 45 14             	mov    0x14(%ebp),%eax
c00379ed:	83 c0 04             	add    $0x4,%eax
c00379f0:	89 45 14             	mov    %eax,0x14(%ebp)
c00379f3:	e9 86 f3 ff ff       	jmp    c0036d7e <_svfiprintf_r+0x5e>
c00379f8:	0f b7 0b             	movzwl (%ebx),%ecx
c00379fb:	83 c3 04             	add    $0x4,%ebx
c00379fe:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037a01:	e9 95 f8 ff ff       	jmp    c003729b <_svfiprintf_r+0x57b>
c0037a06:	0f bf 08             	movswl (%eax),%ecx
c0037a09:	83 c0 04             	add    $0x4,%eax
c0037a0c:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a0f:	85 c9                	test   %ecx,%ecx
c0037a11:	0f 89 0d f7 ff ff    	jns    c0037124 <_svfiprintf_r+0x404>
c0037a17:	f7 d9                	neg    %ecx
c0037a19:	bf 2d 00 00 00       	mov    $0x2d,%edi
c0037a1e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037a25:	ba 01 00 00 00       	mov    $0x1,%edx
c0037a2a:	e9 7a f4 ff ff       	jmp    c0036ea9 <_svfiprintf_r+0x189>
c0037a2f:	89 1c 24             	mov    %ebx,(%esp)
c0037a32:	e8 79 f0 ff ff       	call   c0036ab0 <strlen>
c0037a37:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037a3d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a44:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a4b:	00 00 00 
c0037a4e:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a51:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a57:	e9 b4 f4 ff ff       	jmp    c0036f10 <_svfiprintf_r+0x1f0>
c0037a5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a5f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037a66:	00 
c0037a67:	89 04 24             	mov    %eax,(%esp)
c0037a6a:	e8 41 d9 ff ff       	call   c00353b0 <_malloc_r>
c0037a6f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037a72:	85 c0                	test   %eax,%eax
c0037a74:	89 06                	mov    %eax,(%esi)
c0037a76:	89 46 10             	mov    %eax,0x10(%esi)
c0037a79:	0f 84 a3 00 00 00    	je     c0037b22 <_svfiprintf_r+0xe02>
c0037a7f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a82:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037a89:	e9 b2 f2 ff ff       	jmp    c0036d40 <_svfiprintf_r+0x20>
c0037a8e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037a94:	b8 06 00 00 00       	mov    $0x6,%eax
c0037a99:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a9c:	83 ff 06             	cmp    $0x6,%edi
c0037a9f:	0f 46 c7             	cmovbe %edi,%eax
c0037aa2:	85 c0                	test   %eax,%eax
c0037aa4:	0f 49 d8             	cmovns %eax,%ebx
c0037aa7:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037aad:	bb 30 98 03 c0       	mov    $0xc0039830,%ebx
c0037ab2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037ab8:	e9 61 f8 ff ff       	jmp    c003731e <_svfiprintf_r+0x5fe>
c0037abd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037ac3:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037aca:	89 55 14             	mov    %edx,0x14(%ebp)
c0037acd:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037ad4:	00 00 00 
c0037ad7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037add:	e9 2e f4 ff ff       	jmp    c0036f10 <_svfiprintf_r+0x1f0>
c0037ae2:	89 da                	mov    %ebx,%edx
c0037ae4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037aeb:	00 00 00 
c0037aee:	e9 29 f3 ff ff       	jmp    c0036e1c <_svfiprintf_r+0xfc>
c0037af3:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037af6:	89 da                	mov    %ebx,%edx
c0037af8:	8b 45 14             	mov    0x14(%ebp),%eax
c0037afb:	8b 09                	mov    (%ecx),%ecx
c0037afd:	83 c0 04             	add    $0x4,%eax
c0037b00:	89 45 14             	mov    %eax,0x14(%ebp)
c0037b03:	85 c9                	test   %ecx,%ecx
c0037b05:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037b0b:	0f 89 26 f3 ff ff    	jns    c0036e37 <_svfiprintf_r+0x117>
c0037b11:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037b18:	ff ff ff 
c0037b1b:	89 d0                	mov    %edx,%eax
c0037b1d:	e9 f4 f2 ff ff       	jmp    c0036e16 <_svfiprintf_r+0xf6>
c0037b22:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b25:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037b2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037b30:	e9 06 fc ff ff       	jmp    c003773b <_svfiprintf_r+0xa1b>
c0037b35:	66 90                	xchg   %ax,%ax
c0037b37:	66 90                	xchg   %ax,%ax
c0037b39:	66 90                	xchg   %ax,%ax
c0037b3b:	66 90                	xchg   %ax,%ax
c0037b3d:	66 90                	xchg   %ax,%ax
c0037b3f:	90                   	nop

c0037b40 <_calloc_r>:
c0037b40:	55                   	push   %ebp
c0037b41:	89 e5                	mov    %esp,%ebp
c0037b43:	53                   	push   %ebx
c0037b44:	83 ec 14             	sub    $0x14,%esp
c0037b47:	8b 45 10             	mov    0x10(%ebp),%eax
c0037b4a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037b4e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b52:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b55:	89 04 24             	mov    %eax,(%esp)
c0037b58:	e8 53 d8 ff ff       	call   c00353b0 <_malloc_r>
c0037b5d:	85 c0                	test   %eax,%eax
c0037b5f:	89 c3                	mov    %eax,%ebx
c0037b61:	0f 84 91 00 00 00    	je     c0037bf8 <_calloc_r+0xb8>
c0037b67:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037b6a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037b6d:	83 e8 04             	sub    $0x4,%eax
c0037b70:	83 f8 24             	cmp    $0x24,%eax
c0037b73:	77 63                	ja     c0037bd8 <_calloc_r+0x98>
c0037b75:	83 f8 13             	cmp    $0x13,%eax
c0037b78:	89 da                	mov    %ebx,%edx
c0037b7a:	77 1c                	ja     c0037b98 <_calloc_r+0x58>
c0037b7c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037b82:	89 d8                	mov    %ebx,%eax
c0037b84:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037b8b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037b92:	83 c4 14             	add    $0x14,%esp
c0037b95:	5b                   	pop    %ebx
c0037b96:	5d                   	pop    %ebp
c0037b97:	c3                   	ret    
c0037b98:	83 f8 1b             	cmp    $0x1b,%eax
c0037b9b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037ba1:	8d 53 08             	lea    0x8(%ebx),%edx
c0037ba4:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037bab:	76 cf                	jbe    c0037b7c <_calloc_r+0x3c>
c0037bad:	83 f8 24             	cmp    $0x24,%eax
c0037bb0:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037bb7:	8d 53 10             	lea    0x10(%ebx),%edx
c0037bba:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037bc1:	75 b9                	jne    c0037b7c <_calloc_r+0x3c>
c0037bc3:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037bca:	8d 53 18             	lea    0x18(%ebx),%edx
c0037bcd:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037bd4:	eb a6                	jmp    c0037b7c <_calloc_r+0x3c>
c0037bd6:	66 90                	xchg   %ax,%ax
c0037bd8:	89 1c 24             	mov    %ebx,(%esp)
c0037bdb:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037bdf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037be6:	00 
c0037be7:	e8 50 a2 ff ff       	call   c0031e3c <memset>
c0037bec:	83 c4 14             	add    $0x14,%esp
c0037bef:	89 d8                	mov    %ebx,%eax
c0037bf1:	5b                   	pop    %ebx
c0037bf2:	5d                   	pop    %ebp
c0037bf3:	c3                   	ret    
c0037bf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037bf8:	31 c0                	xor    %eax,%eax
c0037bfa:	eb 96                	jmp    c0037b92 <_calloc_r+0x52>
c0037bfc:	66 90                	xchg   %ax,%ax
c0037bfe:	66 90                	xchg   %ax,%ax

c0037c00 <_malloc_trim_r>:
c0037c00:	55                   	push   %ebp
c0037c01:	89 e5                	mov    %esp,%ebp
c0037c03:	57                   	push   %edi
c0037c04:	56                   	push   %esi
c0037c05:	53                   	push   %ebx
c0037c06:	83 ec 1c             	sub    $0x1c,%esp
c0037c09:	8b 75 08             	mov    0x8(%ebp),%esi
c0037c0c:	89 34 24             	mov    %esi,(%esp)
c0037c0f:	e8 7c df ff ff       	call   c0035b90 <__malloc_lock>
c0037c14:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037c19:	8b 58 04             	mov    0x4(%eax),%ebx
c0037c1c:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037c1f:	89 d8                	mov    %ebx,%eax
c0037c21:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037c24:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037c29:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037c2e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037c34:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037c3a:	7e 1c                	jle    c0037c58 <_malloc_trim_r+0x58>
c0037c3c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c43:	00 
c0037c44:	89 34 24             	mov    %esi,(%esp)
c0037c47:	e8 44 ed ff ff       	call   c0036990 <_sbrk_r>
c0037c4c:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037c52:	01 da                	add    %ebx,%edx
c0037c54:	39 d0                	cmp    %edx,%eax
c0037c56:	74 18                	je     c0037c70 <_malloc_trim_r+0x70>
c0037c58:	89 34 24             	mov    %esi,(%esp)
c0037c5b:	e8 40 df ff ff       	call   c0035ba0 <__malloc_unlock>
c0037c60:	83 c4 1c             	add    $0x1c,%esp
c0037c63:	31 c0                	xor    %eax,%eax
c0037c65:	5b                   	pop    %ebx
c0037c66:	5e                   	pop    %esi
c0037c67:	5f                   	pop    %edi
c0037c68:	5d                   	pop    %ebp
c0037c69:	c3                   	ret    
c0037c6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037c70:	89 f8                	mov    %edi,%eax
c0037c72:	f7 d8                	neg    %eax
c0037c74:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c78:	89 34 24             	mov    %esi,(%esp)
c0037c7b:	e8 10 ed ff ff       	call   c0036990 <_sbrk_r>
c0037c80:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037c83:	74 2b                	je     c0037cb0 <_malloc_trim_r+0xb0>
c0037c85:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037c8a:	29 fb                	sub    %edi,%ebx
c0037c8c:	83 cb 01             	or     $0x1,%ebx
c0037c8f:	29 3d 20 00 07 c0    	sub    %edi,0xc0070020
c0037c95:	89 58 04             	mov    %ebx,0x4(%eax)
c0037c98:	89 34 24             	mov    %esi,(%esp)
c0037c9b:	e8 00 df ff ff       	call   c0035ba0 <__malloc_unlock>
c0037ca0:	83 c4 1c             	add    $0x1c,%esp
c0037ca3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037ca8:	5b                   	pop    %ebx
c0037ca9:	5e                   	pop    %esi
c0037caa:	5f                   	pop    %edi
c0037cab:	5d                   	pop    %ebp
c0037cac:	c3                   	ret    
c0037cad:	8d 76 00             	lea    0x0(%esi),%esi
c0037cb0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037cb7:	00 
c0037cb8:	89 34 24             	mov    %esi,(%esp)
c0037cbb:	e8 d0 ec ff ff       	call   c0036990 <_sbrk_r>
c0037cc0:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037cc6:	89 c1                	mov    %eax,%ecx
c0037cc8:	29 d1                	sub    %edx,%ecx
c0037cca:	83 f9 0f             	cmp    $0xf,%ecx
c0037ccd:	7e 89                	jle    c0037c58 <_malloc_trim_r+0x58>
c0037ccf:	2b 05 20 d5 03 c0    	sub    0xc003d520,%eax
c0037cd5:	83 c9 01             	or     $0x1,%ecx
c0037cd8:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037cdb:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0037ce0:	e9 73 ff ff ff       	jmp    c0037c58 <_malloc_trim_r+0x58>
c0037ce5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037ce9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037cf0 <_free_r>:
c0037cf0:	55                   	push   %ebp
c0037cf1:	89 e5                	mov    %esp,%ebp
c0037cf3:	57                   	push   %edi
c0037cf4:	56                   	push   %esi
c0037cf5:	53                   	push   %ebx
c0037cf6:	83 ec 1c             	sub    $0x1c,%esp
c0037cf9:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037cfc:	8b 45 08             	mov    0x8(%ebp),%eax
c0037cff:	85 f6                	test   %esi,%esi
c0037d01:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037d04:	0f 84 fe 00 00 00    	je     c0037e08 <_free_r+0x118>
c0037d0a:	89 04 24             	mov    %eax,(%esp)
c0037d0d:	e8 7e de ff ff       	call   c0035b90 <__malloc_lock>
c0037d12:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037d15:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037d18:	89 f8                	mov    %edi,%eax
c0037d1a:	83 e0 fe             	and    $0xfffffffe,%eax
c0037d1d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037d20:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037d23:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037d26:	39 0d 48 d5 03 c0    	cmp    %ecx,0xc003d548
c0037d2c:	0f 84 0e 01 00 00    	je     c0037e40 <_free_r+0x150>
c0037d32:	83 e7 01             	and    $0x1,%edi
c0037d35:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037d38:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037d3f:	75 1f                	jne    c0037d60 <_free_r+0x70>
c0037d41:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037d44:	29 f2                	sub    %esi,%edx
c0037d46:	01 f0                	add    %esi,%eax
c0037d48:	8b 72 08             	mov    0x8(%edx),%esi
c0037d4b:	81 fe 48 d5 03 c0    	cmp    $0xc003d548,%esi
c0037d51:	0f 84 39 01 00 00    	je     c0037e90 <_free_r+0x1a0>
c0037d57:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037d5a:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037d5d:	89 77 08             	mov    %esi,0x8(%edi)
c0037d60:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037d65:	75 21                	jne    c0037d88 <_free_r+0x98>
c0037d67:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037d6a:	01 d8                	add    %ebx,%eax
c0037d6c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037d6f:	85 f6                	test   %esi,%esi
c0037d71:	75 0c                	jne    c0037d7f <_free_r+0x8f>
c0037d73:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0037d79:	0f 84 21 01 00 00    	je     c0037ea0 <_free_r+0x1b0>
c0037d7f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037d82:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037d85:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037d88:	89 c1                	mov    %eax,%ecx
c0037d8a:	83 c9 01             	or     $0x1,%ecx
c0037d8d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d90:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037d93:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037d96:	85 c9                	test   %ecx,%ecx
c0037d98:	75 56                	jne    c0037df0 <_free_r+0x100>
c0037d9a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037d9f:	76 6f                	jbe    c0037e10 <_free_r+0x120>
c0037da1:	89 c1                	mov    %eax,%ecx
c0037da3:	c1 e9 09             	shr    $0x9,%ecx
c0037da6:	83 f9 04             	cmp    $0x4,%ecx
c0037da9:	0f 87 21 01 00 00    	ja     c0037ed0 <_free_r+0x1e0>
c0037daf:	89 c1                	mov    %eax,%ecx
c0037db1:	c1 e9 06             	shr    $0x6,%ecx
c0037db4:	83 c1 38             	add    $0x38,%ecx
c0037db7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037dba:	8d 34 9d 40 d5 03 c0 	lea    -0x3ffc2ac0(,%ebx,4),%esi
c0037dc1:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037dc4:	39 f3                	cmp    %esi,%ebx
c0037dc6:	0f 84 14 01 00 00    	je     c0037ee0 <_free_r+0x1f0>
c0037dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037dd0:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037dd3:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037dd6:	39 c8                	cmp    %ecx,%eax
c0037dd8:	73 07                	jae    c0037de1 <_free_r+0xf1>
c0037dda:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037ddd:	39 de                	cmp    %ebx,%esi
c0037ddf:	75 ef                	jne    c0037dd0 <_free_r+0xe0>
c0037de1:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037de4:	89 42 0c             	mov    %eax,0xc(%edx)
c0037de7:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037dea:	89 50 08             	mov    %edx,0x8(%eax)
c0037ded:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037df0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037df3:	89 45 08             	mov    %eax,0x8(%ebp)
c0037df6:	83 c4 1c             	add    $0x1c,%esp
c0037df9:	5b                   	pop    %ebx
c0037dfa:	5e                   	pop    %esi
c0037dfb:	5f                   	pop    %edi
c0037dfc:	5d                   	pop    %ebp
c0037dfd:	e9 9e dd ff ff       	jmp    c0035ba0 <__malloc_unlock>
c0037e02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037e08:	83 c4 1c             	add    $0x1c,%esp
c0037e0b:	5b                   	pop    %ebx
c0037e0c:	5e                   	pop    %esi
c0037e0d:	5f                   	pop    %edi
c0037e0e:	5d                   	pop    %ebp
c0037e0f:	c3                   	ret    
c0037e10:	c1 e8 03             	shr    $0x3,%eax
c0037e13:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037e18:	89 c1                	mov    %eax,%ecx
c0037e1a:	c1 f9 02             	sar    $0x2,%ecx
c0037e1d:	8d 04 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%eax
c0037e24:	d3 e3                	shl    %cl,%ebx
c0037e26:	8b 48 08             	mov    0x8(%eax),%ecx
c0037e29:	09 1d 44 d5 03 c0    	or     %ebx,0xc003d544
c0037e2f:	89 42 0c             	mov    %eax,0xc(%edx)
c0037e32:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037e35:	89 50 08             	mov    %edx,0x8(%eax)
c0037e38:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037e3b:	eb b3                	jmp    c0037df0 <_free_r+0x100>
c0037e3d:	8d 76 00             	lea    0x0(%esi),%esi
c0037e40:	01 d8                	add    %ebx,%eax
c0037e42:	83 e7 01             	and    $0x1,%edi
c0037e45:	75 13                	jne    c0037e5a <_free_r+0x16a>
c0037e47:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037e4a:	29 ca                	sub    %ecx,%edx
c0037e4c:	01 c8                	add    %ecx,%eax
c0037e4e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037e51:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037e54:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037e57:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037e5a:	89 c1                	mov    %eax,%ecx
c0037e5c:	83 c9 01             	or     $0x1,%ecx
c0037e5f:	3b 05 24 d5 03 c0    	cmp    0xc003d524,%eax
c0037e65:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e68:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0037e6e:	72 80                	jb     c0037df0 <_free_r+0x100>
c0037e70:	a1 50 00 07 c0       	mov    0xc0070050,%eax
c0037e75:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e79:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e7c:	89 04 24             	mov    %eax,(%esp)
c0037e7f:	e8 7c fd ff ff       	call   c0037c00 <_malloc_trim_r>
c0037e84:	e9 67 ff ff ff       	jmp    c0037df0 <_free_r+0x100>
c0037e89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037e90:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037e97:	e9 c4 fe ff ff       	jmp    c0037d60 <_free_r+0x70>
c0037e9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037ea0:	89 c1                	mov    %eax,%ecx
c0037ea2:	83 c9 01             	or     $0x1,%ecx
c0037ea5:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c0037eab:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0037eb1:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0037eb8:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0037ebf:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037ec2:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037ec5:	e9 26 ff ff ff       	jmp    c0037df0 <_free_r+0x100>
c0037eca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037ed0:	83 f9 14             	cmp    $0x14,%ecx
c0037ed3:	77 23                	ja     c0037ef8 <_free_r+0x208>
c0037ed5:	83 c1 5b             	add    $0x5b,%ecx
c0037ed8:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037edb:	e9 da fe ff ff       	jmp    c0037dba <_free_r+0xca>
c0037ee0:	c1 f9 02             	sar    $0x2,%ecx
c0037ee3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037ee8:	d3 e0                	shl    %cl,%eax
c0037eea:	09 05 44 d5 03 c0    	or     %eax,0xc003d544
c0037ef0:	89 d8                	mov    %ebx,%eax
c0037ef2:	e9 ed fe ff ff       	jmp    c0037de4 <_free_r+0xf4>
c0037ef7:	90                   	nop
c0037ef8:	83 f9 54             	cmp    $0x54,%ecx
c0037efb:	77 10                	ja     c0037f0d <_free_r+0x21d>
c0037efd:	89 c1                	mov    %eax,%ecx
c0037eff:	c1 e9 0c             	shr    $0xc,%ecx
c0037f02:	83 c1 6e             	add    $0x6e,%ecx
c0037f05:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f08:	e9 ad fe ff ff       	jmp    c0037dba <_free_r+0xca>
c0037f0d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037f13:	77 10                	ja     c0037f25 <_free_r+0x235>
c0037f15:	89 c1                	mov    %eax,%ecx
c0037f17:	c1 e9 0f             	shr    $0xf,%ecx
c0037f1a:	83 c1 77             	add    $0x77,%ecx
c0037f1d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f20:	e9 95 fe ff ff       	jmp    c0037dba <_free_r+0xca>
c0037f25:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037f2b:	77 10                	ja     c0037f3d <_free_r+0x24d>
c0037f2d:	89 c1                	mov    %eax,%ecx
c0037f2f:	c1 e9 12             	shr    $0x12,%ecx
c0037f32:	83 c1 7c             	add    $0x7c,%ecx
c0037f35:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f38:	e9 7d fe ff ff       	jmp    c0037dba <_free_r+0xca>
c0037f3d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037f42:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037f47:	e9 6e fe ff ff       	jmp    c0037dba <_free_r+0xca>
c0037f4c:	66 90                	xchg   %ax,%ax
c0037f4e:	66 90                	xchg   %ax,%ax

c0037f50 <memmove>:
c0037f50:	55                   	push   %ebp
c0037f51:	89 e5                	mov    %esp,%ebp
c0037f53:	56                   	push   %esi
c0037f54:	57                   	push   %edi
c0037f55:	53                   	push   %ebx
c0037f56:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037f59:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037f5c:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037f5f:	fc                   	cld    
c0037f60:	39 fe                	cmp    %edi,%esi
c0037f62:	73 43                	jae    c0037fa7 <memmove+0x57>
c0037f64:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037f68:	39 df                	cmp    %ebx,%edi
c0037f6a:	77 3b                	ja     c0037fa7 <memmove+0x57>
c0037f6c:	01 ce                	add    %ecx,%esi
c0037f6e:	01 cf                	add    %ecx,%edi
c0037f70:	fd                   	std    
c0037f71:	83 f9 08             	cmp    $0x8,%ecx
c0037f74:	76 2b                	jbe    c0037fa1 <memmove+0x51>
c0037f76:	89 fa                	mov    %edi,%edx
c0037f78:	89 cb                	mov    %ecx,%ebx
c0037f7a:	83 e2 03             	and    $0x3,%edx
c0037f7d:	74 0c                	je     c0037f8b <memmove+0x3b>
c0037f7f:	89 d1                	mov    %edx,%ecx
c0037f81:	4e                   	dec    %esi
c0037f82:	4f                   	dec    %edi
c0037f83:	29 cb                	sub    %ecx,%ebx
c0037f85:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f87:	89 d9                	mov    %ebx,%ecx
c0037f89:	46                   	inc    %esi
c0037f8a:	47                   	inc    %edi
c0037f8b:	c1 e9 02             	shr    $0x2,%ecx
c0037f8e:	83 ee 04             	sub    $0x4,%esi
c0037f91:	83 ef 04             	sub    $0x4,%edi
c0037f94:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037f96:	83 c6 04             	add    $0x4,%esi
c0037f99:	83 c7 04             	add    $0x4,%edi
c0037f9c:	89 d9                	mov    %ebx,%ecx
c0037f9e:	83 e1 03             	and    $0x3,%ecx
c0037fa1:	4e                   	dec    %esi
c0037fa2:	4f                   	dec    %edi
c0037fa3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fa5:	eb 2a                	jmp    c0037fd1 <memmove+0x81>
c0037fa7:	83 f9 08             	cmp    $0x8,%ecx
c0037faa:	76 23                	jbe    c0037fcf <memmove+0x7f>
c0037fac:	89 fa                	mov    %edi,%edx
c0037fae:	89 cb                	mov    %ecx,%ebx
c0037fb0:	83 e2 03             	and    $0x3,%edx
c0037fb3:	74 10                	je     c0037fc5 <memmove+0x75>
c0037fb5:	b9 04 00 00 00       	mov    $0x4,%ecx
c0037fba:	29 d1                	sub    %edx,%ecx
c0037fbc:	83 e1 03             	and    $0x3,%ecx
c0037fbf:	29 cb                	sub    %ecx,%ebx
c0037fc1:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fc3:	89 d9                	mov    %ebx,%ecx
c0037fc5:	c1 e9 02             	shr    $0x2,%ecx
c0037fc8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037fca:	89 d9                	mov    %ebx,%ecx
c0037fcc:	83 e1 03             	and    $0x3,%ecx
c0037fcf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fd1:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fd4:	fc                   	cld    
c0037fd5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0037fd8:	5b                   	pop    %ebx
c0037fd9:	5f                   	pop    %edi
c0037fda:	5e                   	pop    %esi
c0037fdb:	c9                   	leave  
c0037fdc:	c3                   	ret    
c0037fdd:	66 90                	xchg   %ax,%ax
c0037fdf:	90                   	nop

c0037fe0 <_realloc_r>:
c0037fe0:	55                   	push   %ebp
c0037fe1:	89 e5                	mov    %esp,%ebp
c0037fe3:	57                   	push   %edi
c0037fe4:	56                   	push   %esi
c0037fe5:	53                   	push   %ebx
c0037fe6:	83 ec 3c             	sub    $0x3c,%esp
c0037fe9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fec:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0037fef:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037ff2:	8b 45 10             	mov    0x10(%ebp),%eax
c0037ff5:	85 ff                	test   %edi,%edi
c0037ff7:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0037ffa:	0f 84 50 02 00 00    	je     c0038250 <_realloc_r+0x270>
c0038000:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038003:	8d 77 f8             	lea    -0x8(%edi),%esi
c0038006:	89 04 24             	mov    %eax,(%esp)
c0038009:	e8 82 db ff ff       	call   c0035b90 <__malloc_lock>
c003800e:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038011:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038014:	89 c3                	mov    %eax,%ebx
c0038016:	8d 51 0b             	lea    0xb(%ecx),%edx
c0038019:	83 e3 fc             	and    $0xfffffffc,%ebx
c003801c:	83 fa 16             	cmp    $0x16,%edx
c003801f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038022:	0f 87 00 01 00 00    	ja     c0038128 <_realloc_r+0x148>
c0038028:	31 d2                	xor    %edx,%edx
c003802a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0038031:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0038038:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003803b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c003803e:	0f 82 1c 02 00 00    	jb     c0038260 <_realloc_r+0x280>
c0038044:	84 d2                	test   %dl,%dl
c0038046:	0f 85 14 02 00 00    	jne    c0038260 <_realloc_r+0x280>
c003804c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003804f:	0f 8d eb 00 00 00    	jge    c0038140 <_realloc_r+0x160>
c0038055:	8b 0d 48 d5 03 c0    	mov    0xc003d548,%ecx
c003805b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003805e:	39 d1                	cmp    %edx,%ecx
c0038060:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038063:	0f 84 6f 02 00 00    	je     c00382d8 <_realloc_r+0x2f8>
c0038069:	8b 4a 04             	mov    0x4(%edx),%ecx
c003806c:	89 c8                	mov    %ecx,%eax
c003806e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038071:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038076:	0f 84 f4 00 00 00    	je     c0038170 <_realloc_r+0x190>
c003807c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038083:	31 d2                	xor    %edx,%edx
c0038085:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038089:	0f 85 39 01 00 00    	jne    c00381c8 <_realloc_r+0x1e8>
c003808f:	89 f1                	mov    %esi,%ecx
c0038091:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038094:	8b 41 04             	mov    0x4(%ecx),%eax
c0038097:	83 e0 fc             	and    $0xfffffffc,%eax
c003809a:	85 d2                	test   %edx,%edx
c003809c:	0f 84 f6 02 00 00    	je     c0038398 <_realloc_r+0x3b8>
c00380a2:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c00380a5:	0f 84 f5 02 00 00    	je     c00383a0 <_realloc_r+0x3c0>
c00380ab:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00380ae:	8b 55 d0             	mov    -0x30(%ebp),%edx
c00380b1:	01 d8                	add    %ebx,%eax
c00380b3:	01 c2                	add    %eax,%edx
c00380b5:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00380b8:	89 55 d0             	mov    %edx,-0x30(%ebp)
c00380bb:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00380be:	0f 8c ac 01 00 00    	jl     c0038270 <_realloc_r+0x290>
c00380c4:	8b 42 0c             	mov    0xc(%edx),%eax
c00380c7:	83 eb 04             	sub    $0x4,%ebx
c00380ca:	8b 52 08             	mov    0x8(%edx),%edx
c00380cd:	83 fb 24             	cmp    $0x24,%ebx
c00380d0:	8d 71 08             	lea    0x8(%ecx),%esi
c00380d3:	89 42 0c             	mov    %eax,0xc(%edx)
c00380d6:	89 50 08             	mov    %edx,0x8(%eax)
c00380d9:	8b 41 0c             	mov    0xc(%ecx),%eax
c00380dc:	8b 51 08             	mov    0x8(%ecx),%edx
c00380df:	89 42 0c             	mov    %eax,0xc(%edx)
c00380e2:	89 50 08             	mov    %edx,0x8(%eax)
c00380e5:	0f 87 85 03 00 00    	ja     c0038470 <_realloc_r+0x490>
c00380eb:	83 fb 13             	cmp    $0x13,%ebx
c00380ee:	89 f0                	mov    %esi,%eax
c00380f0:	76 1a                	jbe    c003810c <_realloc_r+0x12c>
c00380f2:	8b 07                	mov    (%edi),%eax
c00380f4:	83 fb 1b             	cmp    $0x1b,%ebx
c00380f7:	89 41 08             	mov    %eax,0x8(%ecx)
c00380fa:	8b 47 04             	mov    0x4(%edi),%eax
c00380fd:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038100:	0f 87 8f 03 00 00    	ja     c0038495 <_realloc_r+0x4b5>
c0038106:	8d 41 10             	lea    0x10(%ecx),%eax
c0038109:	83 c7 08             	add    $0x8,%edi
c003810c:	8b 17                	mov    (%edi),%edx
c003810e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038111:	89 10                	mov    %edx,(%eax)
c0038113:	8b 57 04             	mov    0x4(%edi),%edx
c0038116:	89 50 04             	mov    %edx,0x4(%eax)
c0038119:	8b 57 08             	mov    0x8(%edi),%edx
c003811c:	89 f7                	mov    %esi,%edi
c003811e:	89 ce                	mov    %ecx,%esi
c0038120:	89 50 08             	mov    %edx,0x8(%eax)
c0038123:	8b 41 04             	mov    0x4(%ecx),%eax
c0038126:	eb 1b                	jmp    c0038143 <_realloc_r+0x163>
c0038128:	83 e2 f8             	and    $0xfffffff8,%edx
c003812b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c003812e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038131:	c1 ea 1f             	shr    $0x1f,%edx
c0038134:	e9 ff fe ff ff       	jmp    c0038038 <_realloc_r+0x58>
c0038139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038140:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038143:	89 da                	mov    %ebx,%edx
c0038145:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038148:	83 fa 0f             	cmp    $0xf,%edx
c003814b:	77 4b                	ja     c0038198 <_realloc_r+0x1b8>
c003814d:	83 e0 01             	and    $0x1,%eax
c0038150:	09 d8                	or     %ebx,%eax
c0038152:	89 46 04             	mov    %eax,0x4(%esi)
c0038155:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003815a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003815d:	89 04 24             	mov    %eax,(%esp)
c0038160:	e8 3b da ff ff       	call   c0035ba0 <__malloc_unlock>
c0038165:	89 f8                	mov    %edi,%eax
c0038167:	83 c4 3c             	add    $0x3c,%esp
c003816a:	5b                   	pop    %ebx
c003816b:	5e                   	pop    %esi
c003816c:	5f                   	pop    %edi
c003816d:	5d                   	pop    %ebp
c003816e:	c3                   	ret    
c003816f:	90                   	nop
c0038170:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038173:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038176:	01 d9                	add    %ebx,%ecx
c0038178:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003817b:	0f 8c 04 ff ff ff    	jl     c0038085 <_realloc_r+0xa5>
c0038181:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038184:	8b 52 08             	mov    0x8(%edx),%edx
c0038187:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003818a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003818d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038190:	89 cb                	mov    %ecx,%ebx
c0038192:	eb af                	jmp    c0038143 <_realloc_r+0x163>
c0038194:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038198:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003819b:	83 e0 01             	and    $0x1,%eax
c003819e:	09 d8                	or     %ebx,%eax
c00381a0:	89 46 04             	mov    %eax,0x4(%esi)
c00381a3:	89 d0                	mov    %edx,%eax
c00381a5:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c00381a8:	83 c8 01             	or     $0x1,%eax
c00381ab:	89 41 04             	mov    %eax,0x4(%ecx)
c00381ae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381b1:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c00381b6:	83 c1 08             	add    $0x8,%ecx
c00381b9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00381bd:	89 04 24             	mov    %eax,(%esp)
c00381c0:	e8 2b fb ff ff       	call   c0037cf0 <_free_r>
c00381c5:	eb 93                	jmp    c003815a <_realloc_r+0x17a>
c00381c7:	90                   	nop
c00381c8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00381cb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00381cf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381d2:	89 04 24             	mov    %eax,(%esp)
c00381d5:	e8 d6 d1 ff ff       	call   c00353b0 <_malloc_r>
c00381da:	85 c0                	test   %eax,%eax
c00381dc:	89 c1                	mov    %eax,%ecx
c00381de:	0f 84 65 03 00 00    	je     c0038549 <_realloc_r+0x569>
c00381e4:	8b 47 fc             	mov    -0x4(%edi),%eax
c00381e7:	8d 51 f8             	lea    -0x8(%ecx),%edx
c00381ea:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00381ed:	89 c2                	mov    %eax,%edx
c00381ef:	83 e2 fe             	and    $0xfffffffe,%edx
c00381f2:	01 f2                	add    %esi,%edx
c00381f4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c00381f7:	0f 84 63 02 00 00    	je     c0038460 <_realloc_r+0x480>
c00381fd:	83 eb 04             	sub    $0x4,%ebx
c0038200:	83 fb 24             	cmp    $0x24,%ebx
c0038203:	0f 87 6f 01 00 00    	ja     c0038378 <_realloc_r+0x398>
c0038209:	83 fb 13             	cmp    $0x13,%ebx
c003820c:	0f 87 ee 00 00 00    	ja     c0038300 <_realloc_r+0x320>
c0038212:	89 c8                	mov    %ecx,%eax
c0038214:	89 fa                	mov    %edi,%edx
c0038216:	8b 1a                	mov    (%edx),%ebx
c0038218:	89 18                	mov    %ebx,(%eax)
c003821a:	8b 5a 04             	mov    0x4(%edx),%ebx
c003821d:	89 58 04             	mov    %ebx,0x4(%eax)
c0038220:	8b 52 08             	mov    0x8(%edx),%edx
c0038223:	89 50 08             	mov    %edx,0x8(%eax)
c0038226:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0038229:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003822d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038230:	89 34 24             	mov    %esi,(%esp)
c0038233:	e8 b8 fa ff ff       	call   c0037cf0 <_free_r>
c0038238:	89 34 24             	mov    %esi,(%esp)
c003823b:	e8 60 d9 ff ff       	call   c0035ba0 <__malloc_unlock>
c0038240:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038243:	83 c4 3c             	add    $0x3c,%esp
c0038246:	5b                   	pop    %ebx
c0038247:	5e                   	pop    %esi
c0038248:	5f                   	pop    %edi
c0038249:	89 c8                	mov    %ecx,%eax
c003824b:	5d                   	pop    %ebp
c003824c:	c3                   	ret    
c003824d:	8d 76 00             	lea    0x0(%esi),%esi
c0038250:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038253:	83 c4 3c             	add    $0x3c,%esp
c0038256:	5b                   	pop    %ebx
c0038257:	5e                   	pop    %esi
c0038258:	5f                   	pop    %edi
c0038259:	5d                   	pop    %ebp
c003825a:	e9 51 d1 ff ff       	jmp    c00353b0 <_malloc_r>
c003825f:	90                   	nop
c0038260:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038263:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038269:	31 c0                	xor    %eax,%eax
c003826b:	e9 f7 fe ff ff       	jmp    c0038167 <_realloc_r+0x187>
c0038270:	89 c2                	mov    %eax,%edx
c0038272:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038275:	0f 8c 4d ff ff ff    	jl     c00381c8 <_realloc_r+0x1e8>
c003827b:	8b 71 08             	mov    0x8(%ecx),%esi
c003827e:	83 eb 04             	sub    $0x4,%ebx
c0038281:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038284:	83 fb 24             	cmp    $0x24,%ebx
c0038287:	89 46 0c             	mov    %eax,0xc(%esi)
c003828a:	89 70 08             	mov    %esi,0x8(%eax)
c003828d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038290:	0f 87 88 00 00 00    	ja     c003831e <_realloc_r+0x33e>
c0038296:	83 fb 13             	cmp    $0x13,%ebx
c0038299:	89 f0                	mov    %esi,%eax
c003829b:	76 1a                	jbe    c00382b7 <_realloc_r+0x2d7>
c003829d:	8b 07                	mov    (%edi),%eax
c003829f:	83 fb 1b             	cmp    $0x1b,%ebx
c00382a2:	89 41 08             	mov    %eax,0x8(%ecx)
c00382a5:	8b 47 04             	mov    0x4(%edi),%eax
c00382a8:	89 41 0c             	mov    %eax,0xc(%ecx)
c00382ab:	0f 87 17 02 00 00    	ja     c00384c8 <_realloc_r+0x4e8>
c00382b1:	8d 41 10             	lea    0x10(%ecx),%eax
c00382b4:	83 c7 08             	add    $0x8,%edi
c00382b7:	8b 1f                	mov    (%edi),%ebx
c00382b9:	89 18                	mov    %ebx,(%eax)
c00382bb:	8b 5f 04             	mov    0x4(%edi),%ebx
c00382be:	89 58 04             	mov    %ebx,0x4(%eax)
c00382c1:	8b 5f 08             	mov    0x8(%edi),%ebx
c00382c4:	89 f7                	mov    %esi,%edi
c00382c6:	89 ce                	mov    %ecx,%esi
c00382c8:	89 58 08             	mov    %ebx,0x8(%eax)
c00382cb:	89 d3                	mov    %edx,%ebx
c00382cd:	8b 41 04             	mov    0x4(%ecx),%eax
c00382d0:	e9 6e fe ff ff       	jmp    c0038143 <_realloc_r+0x163>
c00382d5:	8d 76 00             	lea    0x0(%esi),%esi
c00382d8:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00382db:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00382de:	8b 48 04             	mov    0x4(%eax),%ecx
c00382e1:	83 c2 10             	add    $0x10,%edx
c00382e4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00382e7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c00382eb:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c00382ee:	01 d9                	add    %ebx,%ecx
c00382f0:	39 d1                	cmp    %edx,%ecx
c00382f2:	7d 54                	jge    c0038348 <_realloc_r+0x368>
c00382f4:	89 c2                	mov    %eax,%edx
c00382f6:	e9 8a fd ff ff       	jmp    c0038085 <_realloc_r+0xa5>
c00382fb:	90                   	nop
c00382fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038300:	8b 07                	mov    (%edi),%eax
c0038302:	83 fb 1b             	cmp    $0x1b,%ebx
c0038305:	89 01                	mov    %eax,(%ecx)
c0038307:	8b 47 04             	mov    0x4(%edi),%eax
c003830a:	89 41 04             	mov    %eax,0x4(%ecx)
c003830d:	0f 87 2d 01 00 00    	ja     c0038440 <_realloc_r+0x460>
c0038313:	8d 41 08             	lea    0x8(%ecx),%eax
c0038316:	8d 57 08             	lea    0x8(%edi),%edx
c0038319:	e9 f8 fe ff ff       	jmp    c0038216 <_realloc_r+0x236>
c003831e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038322:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038326:	89 f7                	mov    %esi,%edi
c0038328:	89 34 24             	mov    %esi,(%esp)
c003832b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c003832e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038331:	e8 1a fc ff ff       	call   c0037f50 <memmove>
c0038336:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038339:	8b 55 d8             	mov    -0x28(%ebp),%edx
c003833c:	8b 41 04             	mov    0x4(%ecx),%eax
c003833f:	89 ce                	mov    %ecx,%esi
c0038341:	89 d3                	mov    %edx,%ebx
c0038343:	e9 fb fd ff ff       	jmp    c0038143 <_realloc_r+0x163>
c0038348:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003834b:	29 d9                	sub    %ebx,%ecx
c003834d:	01 de                	add    %ebx,%esi
c003834f:	83 c9 01             	or     $0x1,%ecx
c0038352:	89 35 48 d5 03 c0    	mov    %esi,0xc003d548
c0038358:	89 4e 04             	mov    %ecx,0x4(%esi)
c003835b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003835e:	83 e0 01             	and    $0x1,%eax
c0038361:	09 d8                	or     %ebx,%eax
c0038363:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038366:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038369:	89 04 24             	mov    %eax,(%esp)
c003836c:	e8 2f d8 ff ff       	call   c0035ba0 <__malloc_unlock>
c0038371:	89 f8                	mov    %edi,%eax
c0038373:	e9 ef fd ff ff       	jmp    c0038167 <_realloc_r+0x187>
c0038378:	89 0c 24             	mov    %ecx,(%esp)
c003837b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003837f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038383:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038386:	e8 c5 fb ff ff       	call   c0037f50 <memmove>
c003838b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003838e:	e9 93 fe ff ff       	jmp    c0038226 <_realloc_r+0x246>
c0038393:	90                   	nop
c0038394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038398:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003839b:	e9 d2 fe ff ff       	jmp    c0038272 <_realloc_r+0x292>
c00383a0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c00383a3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00383a6:	01 d0                	add    %edx,%eax
c00383a8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00383ab:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00383ae:	83 c0 10             	add    $0x10,%eax
c00383b1:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c00383b4:	0f 8c b8 fe ff ff    	jl     c0038272 <_realloc_r+0x292>
c00383ba:	8b 41 0c             	mov    0xc(%ecx),%eax
c00383bd:	83 eb 04             	sub    $0x4,%ebx
c00383c0:	8b 51 08             	mov    0x8(%ecx),%edx
c00383c3:	83 fb 24             	cmp    $0x24,%ebx
c00383c6:	8d 71 08             	lea    0x8(%ecx),%esi
c00383c9:	89 42 0c             	mov    %eax,0xc(%edx)
c00383cc:	89 50 08             	mov    %edx,0x8(%eax)
c00383cf:	0f 87 3d 01 00 00    	ja     c0038512 <_realloc_r+0x532>
c00383d5:	83 fb 13             	cmp    $0x13,%ebx
c00383d8:	89 f0                	mov    %esi,%eax
c00383da:	76 1a                	jbe    c00383f6 <_realloc_r+0x416>
c00383dc:	8b 07                	mov    (%edi),%eax
c00383de:	83 fb 1b             	cmp    $0x1b,%ebx
c00383e1:	89 41 08             	mov    %eax,0x8(%ecx)
c00383e4:	8b 47 04             	mov    0x4(%edi),%eax
c00383e7:	89 41 0c             	mov    %eax,0xc(%ecx)
c00383ea:	0f 87 3d 01 00 00    	ja     c003852d <_realloc_r+0x54d>
c00383f0:	8d 41 10             	lea    0x10(%ecx),%eax
c00383f3:	83 c7 08             	add    $0x8,%edi
c00383f6:	8b 17                	mov    (%edi),%edx
c00383f8:	89 10                	mov    %edx,(%eax)
c00383fa:	8b 57 04             	mov    0x4(%edi),%edx
c00383fd:	89 50 04             	mov    %edx,0x4(%eax)
c0038400:	8b 57 08             	mov    0x8(%edi),%edx
c0038403:	89 50 08             	mov    %edx,0x8(%eax)
c0038406:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0038409:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c003840c:	89 d8                	mov    %ebx,%eax
c003840e:	29 df                	sub    %ebx,%edi
c0038410:	01 c8                	add    %ecx,%eax
c0038412:	83 cf 01             	or     $0x1,%edi
c0038415:	a3 48 d5 03 c0       	mov    %eax,0xc003d548
c003841a:	89 78 04             	mov    %edi,0x4(%eax)
c003841d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038420:	83 e0 01             	and    $0x1,%eax
c0038423:	09 d8                	or     %ebx,%eax
c0038425:	89 41 04             	mov    %eax,0x4(%ecx)
c0038428:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003842b:	89 04 24             	mov    %eax,(%esp)
c003842e:	e8 6d d7 ff ff       	call   c0035ba0 <__malloc_unlock>
c0038433:	89 f0                	mov    %esi,%eax
c0038435:	e9 2d fd ff ff       	jmp    c0038167 <_realloc_r+0x187>
c003843a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038440:	8b 47 08             	mov    0x8(%edi),%eax
c0038443:	83 fb 24             	cmp    $0x24,%ebx
c0038446:	89 41 08             	mov    %eax,0x8(%ecx)
c0038449:	8b 47 0c             	mov    0xc(%edi),%eax
c003844c:	89 41 0c             	mov    %eax,0xc(%ecx)
c003844f:	74 60                	je     c00384b1 <_realloc_r+0x4d1>
c0038451:	8d 41 10             	lea    0x10(%ecx),%eax
c0038454:	8d 57 10             	lea    0x10(%edi),%edx
c0038457:	e9 ba fd ff ff       	jmp    c0038216 <_realloc_r+0x236>
c003845c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038460:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038463:	83 e2 fc             	and    $0xfffffffc,%edx
c0038466:	01 d3                	add    %edx,%ebx
c0038468:	e9 d6 fc ff ff       	jmp    c0038143 <_realloc_r+0x163>
c003846d:	8d 76 00             	lea    0x0(%esi),%esi
c0038470:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038474:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038478:	89 f7                	mov    %esi,%edi
c003847a:	89 34 24             	mov    %esi,(%esp)
c003847d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038480:	e8 cb fa ff ff       	call   c0037f50 <memmove>
c0038485:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038488:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003848b:	8b 41 04             	mov    0x4(%ecx),%eax
c003848e:	89 ce                	mov    %ecx,%esi
c0038490:	e9 ae fc ff ff       	jmp    c0038143 <_realloc_r+0x163>
c0038495:	8b 47 08             	mov    0x8(%edi),%eax
c0038498:	83 fb 24             	cmp    $0x24,%ebx
c003849b:	89 41 10             	mov    %eax,0x10(%ecx)
c003849e:	8b 47 0c             	mov    0xc(%edi),%eax
c00384a1:	89 41 14             	mov    %eax,0x14(%ecx)
c00384a4:	74 3e                	je     c00384e4 <_realloc_r+0x504>
c00384a6:	8d 41 18             	lea    0x18(%ecx),%eax
c00384a9:	83 c7 10             	add    $0x10,%edi
c00384ac:	e9 5b fc ff ff       	jmp    c003810c <_realloc_r+0x12c>
c00384b1:	8b 47 10             	mov    0x10(%edi),%eax
c00384b4:	8d 57 18             	lea    0x18(%edi),%edx
c00384b7:	89 41 10             	mov    %eax,0x10(%ecx)
c00384ba:	8b 5f 14             	mov    0x14(%edi),%ebx
c00384bd:	8d 41 18             	lea    0x18(%ecx),%eax
c00384c0:	89 59 14             	mov    %ebx,0x14(%ecx)
c00384c3:	e9 4e fd ff ff       	jmp    c0038216 <_realloc_r+0x236>
c00384c8:	8b 47 08             	mov    0x8(%edi),%eax
c00384cb:	83 fb 24             	cmp    $0x24,%ebx
c00384ce:	89 41 10             	mov    %eax,0x10(%ecx)
c00384d1:	8b 47 0c             	mov    0xc(%edi),%eax
c00384d4:	89 41 14             	mov    %eax,0x14(%ecx)
c00384d7:	74 22                	je     c00384fb <_realloc_r+0x51b>
c00384d9:	8d 41 18             	lea    0x18(%ecx),%eax
c00384dc:	83 c7 10             	add    $0x10,%edi
c00384df:	e9 d3 fd ff ff       	jmp    c00382b7 <_realloc_r+0x2d7>
c00384e4:	8b 47 10             	mov    0x10(%edi),%eax
c00384e7:	83 c7 18             	add    $0x18,%edi
c00384ea:	89 41 18             	mov    %eax,0x18(%ecx)
c00384ed:	8b 57 fc             	mov    -0x4(%edi),%edx
c00384f0:	8d 41 20             	lea    0x20(%ecx),%eax
c00384f3:	89 51 1c             	mov    %edx,0x1c(%ecx)
c00384f6:	e9 11 fc ff ff       	jmp    c003810c <_realloc_r+0x12c>
c00384fb:	8b 47 10             	mov    0x10(%edi),%eax
c00384fe:	83 c7 18             	add    $0x18,%edi
c0038501:	89 41 18             	mov    %eax,0x18(%ecx)
c0038504:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0038507:	8d 41 20             	lea    0x20(%ecx),%eax
c003850a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c003850d:	e9 a5 fd ff ff       	jmp    c00382b7 <_realloc_r+0x2d7>
c0038512:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038516:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003851a:	89 34 24             	mov    %esi,(%esp)
c003851d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038520:	e8 2b fa ff ff       	call   c0037f50 <memmove>
c0038525:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038528:	e9 d9 fe ff ff       	jmp    c0038406 <_realloc_r+0x426>
c003852d:	8b 47 08             	mov    0x8(%edi),%eax
c0038530:	83 fb 24             	cmp    $0x24,%ebx
c0038533:	89 41 10             	mov    %eax,0x10(%ecx)
c0038536:	8b 47 0c             	mov    0xc(%edi),%eax
c0038539:	89 41 14             	mov    %eax,0x14(%ecx)
c003853c:	74 1d                	je     c003855b <_realloc_r+0x57b>
c003853e:	8d 41 18             	lea    0x18(%ecx),%eax
c0038541:	83 c7 10             	add    $0x10,%edi
c0038544:	e9 ad fe ff ff       	jmp    c00383f6 <_realloc_r+0x416>
c0038549:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003854c:	89 04 24             	mov    %eax,(%esp)
c003854f:	e8 4c d6 ff ff       	call   c0035ba0 <__malloc_unlock>
c0038554:	31 c0                	xor    %eax,%eax
c0038556:	e9 0c fc ff ff       	jmp    c0038167 <_realloc_r+0x187>
c003855b:	8b 47 10             	mov    0x10(%edi),%eax
c003855e:	83 c7 18             	add    $0x18,%edi
c0038561:	89 41 18             	mov    %eax,0x18(%ecx)
c0038564:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038567:	8d 41 20             	lea    0x20(%ecx),%eax
c003856a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003856d:	e9 84 fe ff ff       	jmp    c00383f6 <_realloc_r+0x416>
c0038572:	66 90                	xchg   %ax,%ax
c0038574:	66 90                	xchg   %ax,%ax
c0038576:	66 90                	xchg   %ax,%ax
c0038578:	66 90                	xchg   %ax,%ax
c003857a:	66 90                	xchg   %ax,%ax
c003857c:	66 90                	xchg   %ax,%ax
c003857e:	66 90                	xchg   %ax,%ax

c0038580 <cleanup_glue>:
c0038580:	55                   	push   %ebp
c0038581:	89 e5                	mov    %esp,%ebp
c0038583:	56                   	push   %esi
c0038584:	53                   	push   %ebx
c0038585:	83 ec 10             	sub    $0x10,%esp
c0038588:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003858b:	8b 75 08             	mov    0x8(%ebp),%esi
c003858e:	8b 03                	mov    (%ebx),%eax
c0038590:	85 c0                	test   %eax,%eax
c0038592:	74 0c                	je     c00385a0 <cleanup_glue+0x20>
c0038594:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038598:	89 34 24             	mov    %esi,(%esp)
c003859b:	e8 e0 ff ff ff       	call   c0038580 <cleanup_glue>
c00385a0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00385a3:	89 75 08             	mov    %esi,0x8(%ebp)
c00385a6:	83 c4 10             	add    $0x10,%esp
c00385a9:	5b                   	pop    %ebx
c00385aa:	5e                   	pop    %esi
c00385ab:	5d                   	pop    %ebp
c00385ac:	e9 3f f7 ff ff       	jmp    c0037cf0 <_free_r>
c00385b1:	eb 0d                	jmp    c00385c0 <_reclaim_reent>
c00385b3:	90                   	nop
c00385b4:	90                   	nop
c00385b5:	90                   	nop
c00385b6:	90                   	nop
c00385b7:	90                   	nop
c00385b8:	90                   	nop
c00385b9:	90                   	nop
c00385ba:	90                   	nop
c00385bb:	90                   	nop
c00385bc:	90                   	nop
c00385bd:	90                   	nop
c00385be:	90                   	nop
c00385bf:	90                   	nop

c00385c0 <_reclaim_reent>:
c00385c0:	55                   	push   %ebp
c00385c1:	89 e5                	mov    %esp,%ebp
c00385c3:	57                   	push   %edi
c00385c4:	56                   	push   %esi
c00385c5:	53                   	push   %ebx
c00385c6:	83 ec 1c             	sub    $0x1c,%esp
c00385c9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00385cc:	3b 1d 40 d0 03 c0    	cmp    0xc003d040,%ebx
c00385d2:	0f 84 a6 00 00 00    	je     c003867e <_reclaim_reent+0xbe>
c00385d8:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385db:	85 d2                	test   %edx,%edx
c00385dd:	74 46                	je     c0038625 <_reclaim_reent+0x65>
c00385df:	31 c0                	xor    %eax,%eax
c00385e1:	31 f6                	xor    %esi,%esi
c00385e3:	90                   	nop
c00385e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00385e8:	8b 04 82             	mov    (%edx,%eax,4),%eax
c00385eb:	85 c0                	test   %eax,%eax
c00385ed:	75 0b                	jne    c00385fa <_reclaim_reent+0x3a>
c00385ef:	eb 1e                	jmp    c003860f <_reclaim_reent+0x4f>
c00385f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00385f8:	89 f8                	mov    %edi,%eax
c00385fa:	8b 38                	mov    (%eax),%edi
c00385fc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038600:	89 1c 24             	mov    %ebx,(%esp)
c0038603:	e8 e8 f6 ff ff       	call   c0037cf0 <_free_r>
c0038608:	85 ff                	test   %edi,%edi
c003860a:	75 ec                	jne    c00385f8 <_reclaim_reent+0x38>
c003860c:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003860f:	83 c6 01             	add    $0x1,%esi
c0038612:	83 fe 20             	cmp    $0x20,%esi
c0038615:	89 f0                	mov    %esi,%eax
c0038617:	75 cf                	jne    c00385e8 <_reclaim_reent+0x28>
c0038619:	89 54 24 04          	mov    %edx,0x4(%esp)
c003861d:	89 1c 24             	mov    %ebx,(%esp)
c0038620:	e8 cb f6 ff ff       	call   c0037cf0 <_free_r>
c0038625:	8b 43 40             	mov    0x40(%ebx),%eax
c0038628:	85 c0                	test   %eax,%eax
c003862a:	74 0c                	je     c0038638 <_reclaim_reent+0x78>
c003862c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038630:	89 1c 24             	mov    %ebx,(%esp)
c0038633:	e8 b8 f6 ff ff       	call   c0037cf0 <_free_r>
c0038638:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c003863e:	85 c0                	test   %eax,%eax
c0038640:	74 22                	je     c0038664 <_reclaim_reent+0xa4>
c0038642:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038648:	39 f0                	cmp    %esi,%eax
c003864a:	75 06                	jne    c0038652 <_reclaim_reent+0x92>
c003864c:	eb 16                	jmp    c0038664 <_reclaim_reent+0xa4>
c003864e:	66 90                	xchg   %ax,%ax
c0038650:	89 f8                	mov    %edi,%eax
c0038652:	8b 38                	mov    (%eax),%edi
c0038654:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038658:	89 1c 24             	mov    %ebx,(%esp)
c003865b:	e8 90 f6 ff ff       	call   c0037cf0 <_free_r>
c0038660:	39 fe                	cmp    %edi,%esi
c0038662:	75 ec                	jne    c0038650 <_reclaim_reent+0x90>
c0038664:	8b 43 54             	mov    0x54(%ebx),%eax
c0038667:	85 c0                	test   %eax,%eax
c0038669:	74 0c                	je     c0038677 <_reclaim_reent+0xb7>
c003866b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003866f:	89 1c 24             	mov    %ebx,(%esp)
c0038672:	e8 79 f6 ff ff       	call   c0037cf0 <_free_r>
c0038677:	8b 43 38             	mov    0x38(%ebx),%eax
c003867a:	85 c0                	test   %eax,%eax
c003867c:	75 08                	jne    c0038686 <_reclaim_reent+0xc6>
c003867e:	83 c4 1c             	add    $0x1c,%esp
c0038681:	5b                   	pop    %ebx
c0038682:	5e                   	pop    %esi
c0038683:	5f                   	pop    %edi
c0038684:	5d                   	pop    %ebp
c0038685:	c3                   	ret    
c0038686:	89 1c 24             	mov    %ebx,(%esp)
c0038689:	ff 53 3c             	call   *0x3c(%ebx)
c003868c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038692:	85 c0                	test   %eax,%eax
c0038694:	74 e8                	je     c003867e <_reclaim_reent+0xbe>
c0038696:	89 1c 24             	mov    %ebx,(%esp)
c0038699:	89 44 24 04          	mov    %eax,0x4(%esp)
c003869d:	e8 de fe ff ff       	call   c0038580 <cleanup_glue>
c00386a2:	83 c4 1c             	add    $0x1c,%esp
c00386a5:	5b                   	pop    %ebx
c00386a6:	5e                   	pop    %esi
c00386a7:	5f                   	pop    %edi
c00386a8:	5d                   	pop    %ebp
c00386a9:	c3                   	ret    
