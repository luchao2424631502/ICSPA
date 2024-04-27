
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
c00300d5:	e8 13 0b 00 00       	call   c0030bed <irq_handle>
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
c0030105:	e8 c5 17 00 00       	call   c00318cf <init_page>
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
c0030137:	e8 74 19 00 00       	call   c0031ab0 <init_segment>
c003013c:	e8 05 0e 00 00       	call   c0030f46 <init_idt>
c0030141:	e8 9c ff ff ff       	call   c00300e2 <sti>
c0030146:	e8 48 15 00 00       	call   c0031693 <init_mm>
c003014b:	8d 83 40 c0 ff ff    	lea    -0x3fc0(%ebx),%eax
c0030151:	50                   	push   %eax
c0030152:	6a 52                	push   $0x52
c0030154:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
c003015a:	50                   	push   %eax
c003015b:	8d 83 0c c0 ff ff    	lea    -0x3ff4(%ebx),%eax
c0030161:	50                   	push   %eax
c0030162:	e8 65 09 00 00       	call   c0030acc <printk>
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
c003040e:	e8 0d 07 00 00       	call   c0030b20 <add_irq_handle>
c0030413:	83 c4 10             	add    $0x10,%esp
c0030416:	83 ec 08             	sub    $0x8,%esp
c0030419:	8d 83 8e 33 ff ff    	lea    -0xcc72(%ebx),%eax
c003041f:	50                   	push   %eax
c0030420:	6a 0e                	push   $0xe
c0030422:	e8 f9 06 00 00       	call   c0030b20 <add_irq_handle>
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
c00308d0:	e8 f7 01 00 00       	call   c0030acc <printk>
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
c0030922:	e8 09 12 00 00       	call   c0031b30 <mm_malloc>
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
c0030947:	e8 78 14 00 00       	call   c0031dc4 <memcpy>
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
c003097f:	e8 88 14 00 00       	call   c0031e0c <memset>
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
c00309d7:	e8 54 11 00 00       	call   c0031b30 <mm_malloc>
c00309dc:	83 c4 10             	add    $0x10,%esp
c00309df:	e8 4a 0c 00 00       	call   c003162e <get_ucr3>
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
c0030a2c:	e8 9b 00 00 00       	call   c0030acc <printk>
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

c0030a69 <init_serial>:
c0030a69:	55                   	push   %ebp
c0030a6a:	89 e5                	mov    %esp,%ebp
c0030a6c:	e8 11 f7 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030a71:	05 8f c5 00 00       	add    $0xc58f,%eax
c0030a76:	90                   	nop
c0030a77:	5d                   	pop    %ebp
c0030a78:	c3                   	ret    

c0030a79 <serial_idle>:
c0030a79:	55                   	push   %ebp
c0030a7a:	89 e5                	mov    %esp,%ebp
c0030a7c:	e8 01 f7 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030a81:	05 7f c5 00 00       	add    $0xc57f,%eax
c0030a86:	68 fd 03 00 00       	push   $0x3fd
c0030a8b:	e8 b4 ff ff ff       	call   c0030a44 <in_byte>
c0030a90:	83 c4 04             	add    $0x4,%esp
c0030a93:	0f b6 c0             	movzbl %al,%eax
c0030a96:	83 e0 20             	and    $0x20,%eax
c0030a99:	85 c0                	test   %eax,%eax
c0030a9b:	0f 95 c0             	setne  %al
c0030a9e:	0f b6 c0             	movzbl %al,%eax
c0030aa1:	c9                   	leave  
c0030aa2:	c3                   	ret    

c0030aa3 <serial_printc>:
c0030aa3:	55                   	push   %ebp
c0030aa4:	89 e5                	mov    %esp,%ebp
c0030aa6:	83 ec 04             	sub    $0x4,%esp
c0030aa9:	e8 d4 f6 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030aae:	05 52 c5 00 00       	add    $0xc552,%eax
c0030ab3:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ab6:	88 45 fc             	mov    %al,-0x4(%ebp)
c0030ab9:	90                   	nop
c0030aba:	e8 ba ff ff ff       	call   c0030a79 <serial_idle>
c0030abf:	85 c0                	test   %eax,%eax
c0030ac1:	74 f7                	je     c0030aba <serial_printc+0x17>
c0030ac3:	b8 01 00 00 00       	mov    $0x1,%eax
c0030ac8:	82                   	nemu_trap 
c0030ac9:	90                   	nop
c0030aca:	c9                   	leave  
c0030acb:	c3                   	ret    

c0030acc <printk>:
c0030acc:	55                   	push   %ebp
c0030acd:	89 e5                	mov    %esp,%ebp
c0030acf:	53                   	push   %ebx
c0030ad0:	83 ec 14             	sub    $0x14,%esp
c0030ad3:	e8 ae f6 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0030ad8:	81 c3 28 c5 00 00    	add    $0xc528,%ebx
c0030ade:	8d 45 0c             	lea    0xc(%ebp),%eax
c0030ae1:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030ae4:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ae7:	ff 75 f4             	pushl  -0xc(%ebp)
c0030aea:	50                   	push   %eax
c0030aeb:	68 00 01 00 00       	push   $0x100
c0030af0:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030af6:	50                   	push   %eax
c0030af7:	e8 34 14 00 00       	call   c0031f30 <vsnprintf>
c0030afc:	83 c4 10             	add    $0x10,%esp
c0030aff:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030b02:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030b05:	83 ec 04             	sub    $0x4,%esp
c0030b08:	50                   	push   %eax
c0030b09:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030b0f:	50                   	push   %eax
c0030b10:	6a 01                	push   $0x1
c0030b12:	e8 83 07 00 00       	call   c003129a <fs_write>
c0030b17:	83 c4 10             	add    $0x10,%esp
c0030b1a:	90                   	nop
c0030b1b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b1e:	c9                   	leave  
c0030b1f:	c3                   	ret    

c0030b20 <add_irq_handle>:
c0030b20:	55                   	push   %ebp
c0030b21:	89 e5                	mov    %esp,%ebp
c0030b23:	53                   	push   %ebx
c0030b24:	83 ec 14             	sub    $0x14,%esp
c0030b27:	e8 5a f6 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0030b2c:	81 c3 d4 c4 00 00    	add    $0xc4d4,%ebx
c0030b32:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0030b36:	7e 2f                	jle    c0030b67 <add_irq_handle+0x47>
c0030b38:	83 ec 0c             	sub    $0xc,%esp
c0030b3b:	8d 83 08 c1 ff ff    	lea    -0x3ef8(%ebx),%eax
c0030b41:	50                   	push   %eax
c0030b42:	8d 83 60 c2 ff ff    	lea    -0x3da0(%ebx),%eax
c0030b48:	50                   	push   %eax
c0030b49:	6a 17                	push   $0x17
c0030b4b:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030b51:	50                   	push   %eax
c0030b52:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030b58:	50                   	push   %eax
c0030b59:	e8 6e ff ff ff       	call   c0030acc <printk>
c0030b5e:	83 c4 20             	add    $0x20,%esp
c0030b61:	b8 01 00 00 00       	mov    $0x1,%eax
c0030b66:	82                   	nemu_trap 
c0030b67:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
c0030b6d:	83 f8 20             	cmp    $0x20,%eax
c0030b70:	7e 2f                	jle    c0030ba1 <add_irq_handle+0x81>
c0030b72:	83 ec 0c             	sub    $0xc,%esp
c0030b75:	8d 83 7a c1 ff ff    	lea    -0x3e86(%ebx),%eax
c0030b7b:	50                   	push   %eax
c0030b7c:	8d 83 60 c2 ff ff    	lea    -0x3da0(%ebx),%eax
c0030b82:	50                   	push   %eax
c0030b83:	6a 18                	push   $0x18
c0030b85:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030b8b:	50                   	push   %eax
c0030b8c:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030b92:	50                   	push   %eax
c0030b93:	e8 34 ff ff ff       	call   c0030acc <printk>
c0030b98:	83 c4 20             	add    $0x20,%esp
c0030b9b:	b8 01 00 00 00       	mov    $0x1,%eax
c0030ba0:	82                   	nemu_trap 
c0030ba1:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
c0030ba7:	8d 50 01             	lea    0x1(%eax),%edx
c0030baa:	89 93 60 16 01 00    	mov    %edx,0x11660(%ebx)
c0030bb0:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0030bb7:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
c0030bbd:	01 d0                	add    %edx,%eax
c0030bbf:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030bc2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030bc5:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030bc8:	89 10                	mov    %edx,(%eax)
c0030bca:	8b 45 08             	mov    0x8(%ebp),%eax
c0030bcd:	8b 94 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%edx
c0030bd4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030bd7:	89 50 04             	mov    %edx,0x4(%eax)
c0030bda:	8b 45 08             	mov    0x8(%ebp),%eax
c0030bdd:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030be0:	89 94 83 20 16 01 00 	mov    %edx,0x11620(%ebx,%eax,4)
c0030be7:	90                   	nop
c0030be8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030beb:	c9                   	leave  
c0030bec:	c3                   	ret    

c0030bed <irq_handle>:
c0030bed:	55                   	push   %ebp
c0030bee:	89 e5                	mov    %esp,%ebp
c0030bf0:	53                   	push   %ebx
c0030bf1:	83 ec 14             	sub    $0x14,%esp
c0030bf4:	e8 8d f5 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0030bf9:	81 c3 07 c4 00 00    	add    $0xc407,%ebx
c0030bff:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c02:	8b 40 20             	mov    0x20(%eax),%eax
c0030c05:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030c08:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0030c0c:	79 2a                	jns    c0030c38 <irq_handle+0x4b>
c0030c0e:	8d 83 70 c2 ff ff    	lea    -0x3d90(%ebx),%eax
c0030c14:	50                   	push   %eax
c0030c15:	6a 27                	push   $0x27
c0030c17:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030c1d:	50                   	push   %eax
c0030c1e:	8d 83 98 c1 ff ff    	lea    -0x3e68(%ebx),%eax
c0030c24:	50                   	push   %eax
c0030c25:	e8 a2 fe ff ff       	call   c0030acc <printk>
c0030c2a:	83 c4 10             	add    $0x10,%esp
c0030c2d:	b8 01 00 00 00       	mov    $0x1,%eax
c0030c32:	82                   	nemu_trap 
c0030c33:	e9 cb 00 00 00       	jmp    c0030d03 <irq_handle+0x116>
c0030c38:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
c0030c3f:	75 13                	jne    c0030c54 <irq_handle+0x67>
c0030c41:	83 ec 0c             	sub    $0xc,%esp
c0030c44:	ff 75 08             	pushl  0x8(%ebp)
c0030c47:	e8 df 08 00 00       	call   c003152b <do_syscall>
c0030c4c:	83 c4 10             	add    $0x10,%esp
c0030c4f:	e9 af 00 00 00       	jmp    c0030d03 <irq_handle+0x116>
c0030c54:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030c5b:	7f 38                	jg     c0030c95 <irq_handle+0xa8>
c0030c5d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c60:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c63:	8b 40 28             	mov    0x28(%eax),%eax
c0030c66:	83 ec 04             	sub    $0x4,%esp
c0030c69:	52                   	push   %edx
c0030c6a:	50                   	push   %eax
c0030c6b:	ff 75 f0             	pushl  -0x10(%ebp)
c0030c6e:	8d 83 70 c2 ff ff    	lea    -0x3d90(%ebx),%eax
c0030c74:	50                   	push   %eax
c0030c75:	6a 2f                	push   $0x2f
c0030c77:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030c7d:	50                   	push   %eax
c0030c7e:	8d 83 e4 c1 ff ff    	lea    -0x3e1c(%ebx),%eax
c0030c84:	50                   	push   %eax
c0030c85:	e8 42 fe ff ff       	call   c0030acc <printk>
c0030c8a:	83 c4 20             	add    $0x20,%esp
c0030c8d:	b8 01 00 00 00       	mov    $0x1,%eax
c0030c92:	82                   	nemu_trap 
c0030c93:	eb 6e                	jmp    c0030d03 <irq_handle+0x116>
c0030c95:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030c9c:	7e 65                	jle    c0030d03 <irq_handle+0x116>
c0030c9e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030ca1:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0030ca6:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0030ca9:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c0030cad:	7e 2f                	jle    c0030cde <irq_handle+0xf1>
c0030caf:	83 ec 0c             	sub    $0xc,%esp
c0030cb2:	8d 83 47 c2 ff ff    	lea    -0x3db9(%ebx),%eax
c0030cb8:	50                   	push   %eax
c0030cb9:	8d 83 70 c2 ff ff    	lea    -0x3d90(%ebx),%eax
c0030cbf:	50                   	push   %eax
c0030cc0:	6a 34                	push   $0x34
c0030cc2:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030cc8:	50                   	push   %eax
c0030cc9:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030ccf:	50                   	push   %eax
c0030cd0:	e8 f7 fd ff ff       	call   c0030acc <printk>
c0030cd5:	83 c4 20             	add    $0x20,%esp
c0030cd8:	b8 01 00 00 00       	mov    $0x1,%eax
c0030cdd:	82                   	nemu_trap 
c0030cde:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030ce1:	8b 84 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%eax
c0030ce8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030ceb:	eb 10                	jmp    c0030cfd <irq_handle+0x110>
c0030ced:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030cf0:	8b 00                	mov    (%eax),%eax
c0030cf2:	ff d0                	call   *%eax
c0030cf4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030cf7:	8b 40 04             	mov    0x4(%eax),%eax
c0030cfa:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030cfd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0030d01:	75 ea                	jne    c0030ced <irq_handle+0x100>
c0030d03:	90                   	nop
c0030d04:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030d07:	c9                   	leave  
c0030d08:	c3                   	ret    

c0030d09 <out_byte>:
c0030d09:	55                   	push   %ebp
c0030d0a:	89 e5                	mov    %esp,%ebp
c0030d0c:	83 ec 08             	sub    $0x8,%esp
c0030d0f:	e8 6e f4 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030d14:	05 ec c2 00 00       	add    $0xc2ec,%eax
c0030d19:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d1c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030d1f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030d23:	88 d0                	mov    %dl,%al
c0030d25:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030d28:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030d2b:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030d2e:	ee                   	out    %al,(%dx)
c0030d2f:	90                   	nop
c0030d30:	c9                   	leave  
c0030d31:	c3                   	ret    

c0030d32 <init_i8259>:
c0030d32:	55                   	push   %ebp
c0030d33:	89 e5                	mov    %esp,%ebp
c0030d35:	e8 48 f4 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030d3a:	05 c6 c2 00 00       	add    $0xc2c6,%eax
c0030d3f:	68 ff 00 00 00       	push   $0xff
c0030d44:	6a 21                	push   $0x21
c0030d46:	e8 be ff ff ff       	call   c0030d09 <out_byte>
c0030d4b:	83 c4 08             	add    $0x8,%esp
c0030d4e:	68 ff 00 00 00       	push   $0xff
c0030d53:	68 a1 00 00 00       	push   $0xa1
c0030d58:	e8 ac ff ff ff       	call   c0030d09 <out_byte>
c0030d5d:	83 c4 08             	add    $0x8,%esp
c0030d60:	6a 11                	push   $0x11
c0030d62:	6a 20                	push   $0x20
c0030d64:	e8 a0 ff ff ff       	call   c0030d09 <out_byte>
c0030d69:	83 c4 08             	add    $0x8,%esp
c0030d6c:	6a 20                	push   $0x20
c0030d6e:	6a 21                	push   $0x21
c0030d70:	e8 94 ff ff ff       	call   c0030d09 <out_byte>
c0030d75:	83 c4 08             	add    $0x8,%esp
c0030d78:	6a 04                	push   $0x4
c0030d7a:	6a 21                	push   $0x21
c0030d7c:	e8 88 ff ff ff       	call   c0030d09 <out_byte>
c0030d81:	83 c4 08             	add    $0x8,%esp
c0030d84:	6a 03                	push   $0x3
c0030d86:	6a 21                	push   $0x21
c0030d88:	e8 7c ff ff ff       	call   c0030d09 <out_byte>
c0030d8d:	83 c4 08             	add    $0x8,%esp
c0030d90:	6a 11                	push   $0x11
c0030d92:	68 a0 00 00 00       	push   $0xa0
c0030d97:	e8 6d ff ff ff       	call   c0030d09 <out_byte>
c0030d9c:	83 c4 08             	add    $0x8,%esp
c0030d9f:	6a 28                	push   $0x28
c0030da1:	68 a1 00 00 00       	push   $0xa1
c0030da6:	e8 5e ff ff ff       	call   c0030d09 <out_byte>
c0030dab:	83 c4 08             	add    $0x8,%esp
c0030dae:	6a 02                	push   $0x2
c0030db0:	68 a1 00 00 00       	push   $0xa1
c0030db5:	e8 4f ff ff ff       	call   c0030d09 <out_byte>
c0030dba:	83 c4 08             	add    $0x8,%esp
c0030dbd:	6a 03                	push   $0x3
c0030dbf:	68 a1 00 00 00       	push   $0xa1
c0030dc4:	e8 40 ff ff ff       	call   c0030d09 <out_byte>
c0030dc9:	83 c4 08             	add    $0x8,%esp
c0030dcc:	6a 68                	push   $0x68
c0030dce:	6a 20                	push   $0x20
c0030dd0:	e8 34 ff ff ff       	call   c0030d09 <out_byte>
c0030dd5:	83 c4 08             	add    $0x8,%esp
c0030dd8:	6a 0a                	push   $0xa
c0030dda:	6a 20                	push   $0x20
c0030ddc:	e8 28 ff ff ff       	call   c0030d09 <out_byte>
c0030de1:	83 c4 08             	add    $0x8,%esp
c0030de4:	6a 68                	push   $0x68
c0030de6:	68 a0 00 00 00       	push   $0xa0
c0030deb:	e8 19 ff ff ff       	call   c0030d09 <out_byte>
c0030df0:	83 c4 08             	add    $0x8,%esp
c0030df3:	6a 0a                	push   $0xa
c0030df5:	68 a0 00 00 00       	push   $0xa0
c0030dfa:	e8 0a ff ff ff       	call   c0030d09 <out_byte>
c0030dff:	83 c4 08             	add    $0x8,%esp
c0030e02:	90                   	nop
c0030e03:	c9                   	leave  
c0030e04:	c3                   	ret    

c0030e05 <write_idtr>:
c0030e05:	55                   	push   %ebp
c0030e06:	89 e5                	mov    %esp,%ebp
c0030e08:	e8 75 f3 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030e0d:	05 f3 c1 00 00       	add    $0xc1f3,%eax
c0030e12:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030e15:	4a                   	dec    %edx
c0030e16:	66 89 90 80 1e 01 00 	mov    %dx,0x11e80(%eax)
c0030e1d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e20:	66 89 90 82 1e 01 00 	mov    %dx,0x11e82(%eax)
c0030e27:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e2a:	c1 ea 10             	shr    $0x10,%edx
c0030e2d:	66 89 90 84 1e 01 00 	mov    %dx,0x11e84(%eax)
c0030e34:	8d 80 80 1e 01 00    	lea    0x11e80(%eax),%eax
c0030e3a:	0f 01 18             	lidtl  (%eax)
c0030e3d:	90                   	nop
c0030e3e:	5d                   	pop    %ebp
c0030e3f:	c3                   	ret    

c0030e40 <sti>:
c0030e40:	55                   	push   %ebp
c0030e41:	89 e5                	mov    %esp,%ebp
c0030e43:	e8 3a f3 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030e48:	05 b8 c1 00 00       	add    $0xc1b8,%eax
c0030e4d:	fb                   	sti    
c0030e4e:	90                   	nop
c0030e4f:	5d                   	pop    %ebp
c0030e50:	c3                   	ret    

c0030e51 <set_intr>:
c0030e51:	55                   	push   %ebp
c0030e52:	89 e5                	mov    %esp,%ebp
c0030e54:	e8 29 f3 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030e59:	05 a7 c1 00 00       	add    $0xc1a7,%eax
c0030e5e:	8b 45 10             	mov    0x10(%ebp),%eax
c0030e61:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e64:	66 89 02             	mov    %ax,(%edx)
c0030e67:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030e6a:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e6d:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030e71:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e74:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030e78:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e7b:	8a 50 05             	mov    0x5(%eax),%dl
c0030e7e:	83 e2 f0             	and    $0xfffffff0,%edx
c0030e81:	83 ca 0e             	or     $0xe,%edx
c0030e84:	88 50 05             	mov    %dl,0x5(%eax)
c0030e87:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e8a:	8a 50 05             	mov    0x5(%eax),%dl
c0030e8d:	83 e2 ef             	and    $0xffffffef,%edx
c0030e90:	88 50 05             	mov    %dl,0x5(%eax)
c0030e93:	8b 45 14             	mov    0x14(%ebp),%eax
c0030e96:	88 c2                	mov    %al,%dl
c0030e98:	83 e2 03             	and    $0x3,%edx
c0030e9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e9e:	83 e2 03             	and    $0x3,%edx
c0030ea1:	88 d1                	mov    %dl,%cl
c0030ea3:	c1 e1 05             	shl    $0x5,%ecx
c0030ea6:	8a 50 05             	mov    0x5(%eax),%dl
c0030ea9:	83 e2 9f             	and    $0xffffff9f,%edx
c0030eac:	09 ca                	or     %ecx,%edx
c0030eae:	88 50 05             	mov    %dl,0x5(%eax)
c0030eb1:	8b 45 08             	mov    0x8(%ebp),%eax
c0030eb4:	8a 50 05             	mov    0x5(%eax),%dl
c0030eb7:	83 ca 80             	or     $0xffffff80,%edx
c0030eba:	88 50 05             	mov    %dl,0x5(%eax)
c0030ebd:	8b 45 10             	mov    0x10(%ebp),%eax
c0030ec0:	c1 e8 10             	shr    $0x10,%eax
c0030ec3:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ec6:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030eca:	90                   	nop
c0030ecb:	5d                   	pop    %ebp
c0030ecc:	c3                   	ret    

c0030ecd <set_trap>:
c0030ecd:	55                   	push   %ebp
c0030ece:	89 e5                	mov    %esp,%ebp
c0030ed0:	e8 ad f2 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030ed5:	05 2b c1 00 00       	add    $0xc12b,%eax
c0030eda:	8b 45 10             	mov    0x10(%ebp),%eax
c0030edd:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ee0:	66 89 02             	mov    %ax,(%edx)
c0030ee3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030ee6:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ee9:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030eed:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ef0:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030ef4:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ef7:	8a 50 05             	mov    0x5(%eax),%dl
c0030efa:	83 ca 0f             	or     $0xf,%edx
c0030efd:	88 50 05             	mov    %dl,0x5(%eax)
c0030f00:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f03:	8a 50 05             	mov    0x5(%eax),%dl
c0030f06:	83 e2 ef             	and    $0xffffffef,%edx
c0030f09:	88 50 05             	mov    %dl,0x5(%eax)
c0030f0c:	8b 45 14             	mov    0x14(%ebp),%eax
c0030f0f:	88 c2                	mov    %al,%dl
c0030f11:	83 e2 03             	and    $0x3,%edx
c0030f14:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f17:	83 e2 03             	and    $0x3,%edx
c0030f1a:	88 d1                	mov    %dl,%cl
c0030f1c:	c1 e1 05             	shl    $0x5,%ecx
c0030f1f:	8a 50 05             	mov    0x5(%eax),%dl
c0030f22:	83 e2 9f             	and    $0xffffff9f,%edx
c0030f25:	09 ca                	or     %ecx,%edx
c0030f27:	88 50 05             	mov    %dl,0x5(%eax)
c0030f2a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f2d:	8a 50 05             	mov    0x5(%eax),%dl
c0030f30:	83 ca 80             	or     $0xffffff80,%edx
c0030f33:	88 50 05             	mov    %dl,0x5(%eax)
c0030f36:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f39:	c1 e8 10             	shr    $0x10,%eax
c0030f3c:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f3f:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030f43:	90                   	nop
c0030f44:	5d                   	pop    %ebp
c0030f45:	c3                   	ret    

c0030f46 <init_idt>:
c0030f46:	55                   	push   %ebp
c0030f47:	89 e5                	mov    %esp,%ebp
c0030f49:	53                   	push   %ebx
c0030f4a:	83 ec 10             	sub    $0x10,%esp
c0030f4d:	e8 34 f2 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0030f52:	81 c3 ae c0 00 00    	add    $0xc0ae,%ebx
c0030f58:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030f5f:	eb 2b                	jmp    c0030f8c <init_idt+0x46>
c0030f61:	c7 c0 cd 00 03 c0    	mov    $0xc00300cd,%eax
c0030f67:	89 c2                	mov    %eax,%edx
c0030f69:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030f6c:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0030f73:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0030f79:	01 c8                	add    %ecx,%eax
c0030f7b:	6a 00                	push   $0x0
c0030f7d:	52                   	push   %edx
c0030f7e:	6a 08                	push   $0x8
c0030f80:	50                   	push   %eax
c0030f81:	e8 47 ff ff ff       	call   c0030ecd <set_trap>
c0030f86:	83 c4 10             	add    $0x10,%esp
c0030f89:	ff 45 f8             	incl   -0x8(%ebp)
c0030f8c:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0030f93:	7e cc                	jle    c0030f61 <init_idt+0x1b>
c0030f95:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030f9b:	6a 00                	push   $0x0
c0030f9d:	50                   	push   %eax
c0030f9e:	6a 08                	push   $0x8
c0030fa0:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0030fa6:	50                   	push   %eax
c0030fa7:	e8 21 ff ff ff       	call   c0030ecd <set_trap>
c0030fac:	83 c4 10             	add    $0x10,%esp
c0030faf:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c0030fb5:	89 c2                	mov    %eax,%edx
c0030fb7:	8d 83 88 16 01 00    	lea    0x11688(%ebx),%eax
c0030fbd:	6a 00                	push   $0x0
c0030fbf:	52                   	push   %edx
c0030fc0:	6a 08                	push   $0x8
c0030fc2:	50                   	push   %eax
c0030fc3:	e8 05 ff ff ff       	call   c0030ecd <set_trap>
c0030fc8:	83 c4 10             	add    $0x10,%esp
c0030fcb:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c0030fd1:	89 c2                	mov    %eax,%edx
c0030fd3:	8d 83 90 16 01 00    	lea    0x11690(%ebx),%eax
c0030fd9:	6a 00                	push   $0x0
c0030fdb:	52                   	push   %edx
c0030fdc:	6a 08                	push   $0x8
c0030fde:	50                   	push   %eax
c0030fdf:	e8 e9 fe ff ff       	call   c0030ecd <set_trap>
c0030fe4:	83 c4 10             	add    $0x10,%esp
c0030fe7:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c0030fed:	89 c2                	mov    %eax,%edx
c0030fef:	8d 83 98 16 01 00    	lea    0x11698(%ebx),%eax
c0030ff5:	6a 00                	push   $0x0
c0030ff7:	52                   	push   %edx
c0030ff8:	6a 08                	push   $0x8
c0030ffa:	50                   	push   %eax
c0030ffb:	e8 cd fe ff ff       	call   c0030ecd <set_trap>
c0031000:	83 c4 10             	add    $0x10,%esp
c0031003:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c0031009:	89 c2                	mov    %eax,%edx
c003100b:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
c0031011:	6a 00                	push   $0x0
c0031013:	52                   	push   %edx
c0031014:	6a 08                	push   $0x8
c0031016:	50                   	push   %eax
c0031017:	e8 b1 fe ff ff       	call   c0030ecd <set_trap>
c003101c:	83 c4 10             	add    $0x10,%esp
c003101f:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c0031025:	89 c2                	mov    %eax,%edx
c0031027:	8d 83 a8 16 01 00    	lea    0x116a8(%ebx),%eax
c003102d:	6a 00                	push   $0x0
c003102f:	52                   	push   %edx
c0031030:	6a 08                	push   $0x8
c0031032:	50                   	push   %eax
c0031033:	e8 95 fe ff ff       	call   c0030ecd <set_trap>
c0031038:	83 c4 10             	add    $0x10,%esp
c003103b:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0031041:	89 c2                	mov    %eax,%edx
c0031043:	8d 83 b0 16 01 00    	lea    0x116b0(%ebx),%eax
c0031049:	6a 00                	push   $0x0
c003104b:	52                   	push   %edx
c003104c:	6a 08                	push   $0x8
c003104e:	50                   	push   %eax
c003104f:	e8 79 fe ff ff       	call   c0030ecd <set_trap>
c0031054:	83 c4 10             	add    $0x10,%esp
c0031057:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c003105d:	89 c2                	mov    %eax,%edx
c003105f:	8d 83 b8 16 01 00    	lea    0x116b8(%ebx),%eax
c0031065:	6a 00                	push   $0x0
c0031067:	52                   	push   %edx
c0031068:	6a 08                	push   $0x8
c003106a:	50                   	push   %eax
c003106b:	e8 5d fe ff ff       	call   c0030ecd <set_trap>
c0031070:	83 c4 10             	add    $0x10,%esp
c0031073:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0031079:	89 c2                	mov    %eax,%edx
c003107b:	8d 83 c0 16 01 00    	lea    0x116c0(%ebx),%eax
c0031081:	6a 00                	push   $0x0
c0031083:	52                   	push   %edx
c0031084:	6a 08                	push   $0x8
c0031086:	50                   	push   %eax
c0031087:	e8 41 fe ff ff       	call   c0030ecd <set_trap>
c003108c:	83 c4 10             	add    $0x10,%esp
c003108f:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c0031095:	89 c2                	mov    %eax,%edx
c0031097:	8d 83 c8 16 01 00    	lea    0x116c8(%ebx),%eax
c003109d:	6a 00                	push   $0x0
c003109f:	52                   	push   %edx
c00310a0:	6a 08                	push   $0x8
c00310a2:	50                   	push   %eax
c00310a3:	e8 25 fe ff ff       	call   c0030ecd <set_trap>
c00310a8:	83 c4 10             	add    $0x10,%esp
c00310ab:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c00310b1:	89 c2                	mov    %eax,%edx
c00310b3:	8d 83 d0 16 01 00    	lea    0x116d0(%ebx),%eax
c00310b9:	6a 00                	push   $0x0
c00310bb:	52                   	push   %edx
c00310bc:	6a 08                	push   $0x8
c00310be:	50                   	push   %eax
c00310bf:	e8 09 fe ff ff       	call   c0030ecd <set_trap>
c00310c4:	83 c4 10             	add    $0x10,%esp
c00310c7:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c00310cd:	89 c2                	mov    %eax,%edx
c00310cf:	8d 83 d8 16 01 00    	lea    0x116d8(%ebx),%eax
c00310d5:	6a 00                	push   $0x0
c00310d7:	52                   	push   %edx
c00310d8:	6a 08                	push   $0x8
c00310da:	50                   	push   %eax
c00310db:	e8 ed fd ff ff       	call   c0030ecd <set_trap>
c00310e0:	83 c4 10             	add    $0x10,%esp
c00310e3:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c00310e9:	89 c2                	mov    %eax,%edx
c00310eb:	8d 83 e0 16 01 00    	lea    0x116e0(%ebx),%eax
c00310f1:	6a 00                	push   $0x0
c00310f3:	52                   	push   %edx
c00310f4:	6a 08                	push   $0x8
c00310f6:	50                   	push   %eax
c00310f7:	e8 d1 fd ff ff       	call   c0030ecd <set_trap>
c00310fc:	83 c4 10             	add    $0x10,%esp
c00310ff:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0031105:	89 c2                	mov    %eax,%edx
c0031107:	8d 83 e8 16 01 00    	lea    0x116e8(%ebx),%eax
c003110d:	6a 00                	push   $0x0
c003110f:	52                   	push   %edx
c0031110:	6a 08                	push   $0x8
c0031112:	50                   	push   %eax
c0031113:	e8 b5 fd ff ff       	call   c0030ecd <set_trap>
c0031118:	83 c4 10             	add    $0x10,%esp
c003111b:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0031121:	89 c2                	mov    %eax,%edx
c0031123:	8d 83 f0 16 01 00    	lea    0x116f0(%ebx),%eax
c0031129:	6a 00                	push   $0x0
c003112b:	52                   	push   %edx
c003112c:	6a 08                	push   $0x8
c003112e:	50                   	push   %eax
c003112f:	e8 99 fd ff ff       	call   c0030ecd <set_trap>
c0031134:	83 c4 10             	add    $0x10,%esp
c0031137:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c003113d:	89 c2                	mov    %eax,%edx
c003113f:	8d 83 80 1a 01 00    	lea    0x11a80(%ebx),%eax
c0031145:	6a 03                	push   $0x3
c0031147:	52                   	push   %edx
c0031148:	6a 08                	push   $0x8
c003114a:	50                   	push   %eax
c003114b:	e8 7d fd ff ff       	call   c0030ecd <set_trap>
c0031150:	83 c4 10             	add    $0x10,%esp
c0031153:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0031159:	89 c2                	mov    %eax,%edx
c003115b:	8d 83 80 17 01 00    	lea    0x11780(%ebx),%eax
c0031161:	6a 00                	push   $0x0
c0031163:	52                   	push   %edx
c0031164:	6a 08                	push   $0x8
c0031166:	50                   	push   %eax
c0031167:	e8 e5 fc ff ff       	call   c0030e51 <set_intr>
c003116c:	83 c4 10             	add    $0x10,%esp
c003116f:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c0031175:	89 c2                	mov    %eax,%edx
c0031177:	8d 83 88 17 01 00    	lea    0x11788(%ebx),%eax
c003117d:	6a 00                	push   $0x0
c003117f:	52                   	push   %edx
c0031180:	6a 08                	push   $0x8
c0031182:	50                   	push   %eax
c0031183:	e8 c9 fc ff ff       	call   c0030e51 <set_intr>
c0031188:	83 c4 10             	add    $0x10,%esp
c003118b:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c0031191:	89 c2                	mov    %eax,%edx
c0031193:	8d 83 90 17 01 00    	lea    0x11790(%ebx),%eax
c0031199:	6a 00                	push   $0x0
c003119b:	52                   	push   %edx
c003119c:	6a 08                	push   $0x8
c003119e:	50                   	push   %eax
c003119f:	e8 ad fc ff ff       	call   c0030e51 <set_intr>
c00311a4:	83 c4 10             	add    $0x10,%esp
c00311a7:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c00311ad:	89 c2                	mov    %eax,%edx
c00311af:	8d 83 f0 17 01 00    	lea    0x117f0(%ebx),%eax
c00311b5:	6a 00                	push   $0x0
c00311b7:	52                   	push   %edx
c00311b8:	6a 08                	push   $0x8
c00311ba:	50                   	push   %eax
c00311bb:	e8 91 fc ff ff       	call   c0030e51 <set_intr>
c00311c0:	83 c4 10             	add    $0x10,%esp
c00311c3:	68 00 08 00 00       	push   $0x800
c00311c8:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c00311ce:	50                   	push   %eax
c00311cf:	e8 31 fc ff ff       	call   c0030e05 <write_idtr>
c00311d4:	83 c4 08             	add    $0x8,%esp
c00311d7:	e8 64 fc ff ff       	call   c0030e40 <sti>
c00311dc:	90                   	nop
c00311dd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00311e0:	c9                   	leave  
c00311e1:	c3                   	ret    

c00311e2 <fs_open>:
c00311e2:	55                   	push   %ebp
c00311e3:	89 e5                	mov    %esp,%ebp
c00311e5:	53                   	push   %ebx
c00311e6:	83 ec 04             	sub    $0x4,%esp
c00311e9:	e8 94 ef ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00311ee:	05 12 be 00 00       	add    $0xbe12,%eax
c00311f3:	8d 90 18 c5 ff ff    	lea    -0x3ae8(%eax),%edx
c00311f9:	52                   	push   %edx
c00311fa:	6a 28                	push   $0x28
c00311fc:	8d 90 4f c3 ff ff    	lea    -0x3cb1(%eax),%edx
c0031202:	52                   	push   %edx
c0031203:	8d 90 5c c3 ff ff    	lea    -0x3ca4(%eax),%edx
c0031209:	52                   	push   %edx
c003120a:	89 c3                	mov    %eax,%ebx
c003120c:	e8 bb f8 ff ff       	call   c0030acc <printk>
c0031211:	83 c4 10             	add    $0x10,%esp
c0031214:	b8 01 00 00 00       	mov    $0x1,%eax
c0031219:	82                   	nemu_trap 
c003121a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c003121f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031222:	c9                   	leave  
c0031223:	c3                   	ret    

c0031224 <fs_read>:
c0031224:	55                   	push   %ebp
c0031225:	89 e5                	mov    %esp,%ebp
c0031227:	53                   	push   %ebx
c0031228:	83 ec 04             	sub    $0x4,%esp
c003122b:	e8 56 ef ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0031230:	81 c3 d0 bd 00 00    	add    $0xbdd0,%ebx
c0031236:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c003123a:	7f 2f                	jg     c003126b <fs_read+0x47>
c003123c:	83 ec 0c             	sub    $0xc,%esp
c003123f:	8d 83 b2 c3 ff ff    	lea    -0x3c4e(%ebx),%eax
c0031245:	50                   	push   %eax
c0031246:	8d 83 20 c5 ff ff    	lea    -0x3ae0(%ebx),%eax
c003124c:	50                   	push   %eax
c003124d:	6a 2e                	push   $0x2e
c003124f:	8d 83 4f c3 ff ff    	lea    -0x3cb1(%ebx),%eax
c0031255:	50                   	push   %eax
c0031256:	8d 83 bc c3 ff ff    	lea    -0x3c44(%ebx),%eax
c003125c:	50                   	push   %eax
c003125d:	e8 6a f8 ff ff       	call   c0030acc <printk>
c0031262:	83 c4 20             	add    $0x20,%esp
c0031265:	b8 01 00 00 00       	mov    $0x1,%eax
c003126a:	82                   	nemu_trap 
c003126b:	8d 83 20 c5 ff ff    	lea    -0x3ae0(%ebx),%eax
c0031271:	50                   	push   %eax
c0031272:	6a 2f                	push   $0x2f
c0031274:	8d 83 4f c3 ff ff    	lea    -0x3cb1(%ebx),%eax
c003127a:	50                   	push   %eax
c003127b:	8d 83 08 c4 ff ff    	lea    -0x3bf8(%ebx),%eax
c0031281:	50                   	push   %eax
c0031282:	e8 45 f8 ff ff       	call   c0030acc <printk>
c0031287:	83 c4 10             	add    $0x10,%esp
c003128a:	b8 01 00 00 00       	mov    $0x1,%eax
c003128f:	82                   	nemu_trap 
c0031290:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031295:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031298:	c9                   	leave  
c0031299:	c3                   	ret    

c003129a <fs_write>:
c003129a:	55                   	push   %ebp
c003129b:	89 e5                	mov    %esp,%ebp
c003129d:	53                   	push   %ebx
c003129e:	83 ec 14             	sub    $0x14,%esp
c00312a1:	e8 e0 ee ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c00312a6:	81 c3 5a bd 00 00    	add    $0xbd5a,%ebx
c00312ac:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00312b0:	7e 2f                	jle    c00312e1 <fs_write+0x47>
c00312b2:	83 ec 0c             	sub    $0xc,%esp
c00312b5:	8d 83 5e c4 ff ff    	lea    -0x3ba2(%ebx),%eax
c00312bb:	50                   	push   %eax
c00312bc:	8d 83 28 c5 ff ff    	lea    -0x3ad8(%ebx),%eax
c00312c2:	50                   	push   %eax
c00312c3:	6a 35                	push   $0x35
c00312c5:	8d 83 4f c3 ff ff    	lea    -0x3cb1(%ebx),%eax
c00312cb:	50                   	push   %eax
c00312cc:	8d 83 bc c3 ff ff    	lea    -0x3c44(%ebx),%eax
c00312d2:	50                   	push   %eax
c00312d3:	e8 f4 f7 ff ff       	call   c0030acc <printk>
c00312d8:	83 c4 20             	add    $0x20,%esp
c00312db:	b8 01 00 00 00       	mov    $0x1,%eax
c00312e0:	82                   	nemu_trap 
c00312e1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00312e8:	eb 1c                	jmp    c0031306 <fs_write+0x6c>
c00312ea:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00312ed:	8b 45 0c             	mov    0xc(%ebp),%eax
c00312f0:	01 d0                	add    %edx,%eax
c00312f2:	8a 00                	mov    (%eax),%al
c00312f4:	0f be c0             	movsbl %al,%eax
c00312f7:	83 ec 0c             	sub    $0xc,%esp
c00312fa:	50                   	push   %eax
c00312fb:	e8 a3 f7 ff ff       	call   c0030aa3 <serial_printc>
c0031300:	83 c4 10             	add    $0x10,%esp
c0031303:	ff 45 f4             	incl   -0xc(%ebp)
c0031306:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031309:	39 45 10             	cmp    %eax,0x10(%ebp)
c003130c:	77 dc                	ja     c00312ea <fs_write+0x50>
c003130e:	8b 45 10             	mov    0x10(%ebp),%eax
c0031311:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031314:	c9                   	leave  
c0031315:	c3                   	ret    

c0031316 <fs_lseek>:
c0031316:	55                   	push   %ebp
c0031317:	89 e5                	mov    %esp,%ebp
c0031319:	53                   	push   %ebx
c003131a:	83 ec 04             	sub    $0x4,%esp
c003131d:	e8 60 ee ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031322:	05 de bc 00 00       	add    $0xbcde,%eax
c0031327:	8d 90 34 c5 ff ff    	lea    -0x3acc(%eax),%edx
c003132d:	52                   	push   %edx
c003132e:	6a 48                	push   $0x48
c0031330:	8d 90 4f c3 ff ff    	lea    -0x3cb1(%eax),%edx
c0031336:	52                   	push   %edx
c0031337:	8d 90 68 c4 ff ff    	lea    -0x3b98(%eax),%edx
c003133d:	52                   	push   %edx
c003133e:	89 c3                	mov    %eax,%ebx
c0031340:	e8 87 f7 ff ff       	call   c0030acc <printk>
c0031345:	83 c4 10             	add    $0x10,%esp
c0031348:	b8 01 00 00 00       	mov    $0x1,%eax
c003134d:	82                   	nemu_trap 
c003134e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031353:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031356:	c9                   	leave  
c0031357:	c3                   	ret    

c0031358 <fs_close>:
c0031358:	55                   	push   %ebp
c0031359:	89 e5                	mov    %esp,%ebp
c003135b:	53                   	push   %ebx
c003135c:	83 ec 04             	sub    $0x4,%esp
c003135f:	e8 1e ee ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031364:	05 9c bc 00 00       	add    $0xbc9c,%eax
c0031369:	8d 90 40 c5 ff ff    	lea    -0x3ac0(%eax),%edx
c003136f:	52                   	push   %edx
c0031370:	6a 4e                	push   $0x4e
c0031372:	8d 90 4f c3 ff ff    	lea    -0x3cb1(%eax),%edx
c0031378:	52                   	push   %edx
c0031379:	8d 90 c0 c4 ff ff    	lea    -0x3b40(%eax),%edx
c003137f:	52                   	push   %edx
c0031380:	89 c3                	mov    %eax,%ebx
c0031382:	e8 45 f7 ff ff       	call   c0030acc <printk>
c0031387:	83 c4 10             	add    $0x10,%esp
c003138a:	b8 01 00 00 00       	mov    $0x1,%eax
c003138f:	82                   	nemu_trap 
c0031390:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031395:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031398:	c9                   	leave  
c0031399:	c3                   	ret    

c003139a <sti>:
c003139a:	55                   	push   %ebp
c003139b:	89 e5                	mov    %esp,%ebp
c003139d:	e8 e0 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00313a2:	05 5e bc 00 00       	add    $0xbc5e,%eax
c00313a7:	fb                   	sti    
c00313a8:	90                   	nop
c00313a9:	5d                   	pop    %ebp
c00313aa:	c3                   	ret    

c00313ab <cli>:
c00313ab:	55                   	push   %ebp
c00313ac:	89 e5                	mov    %esp,%ebp
c00313ae:	e8 cf ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00313b3:	05 4d bc 00 00       	add    $0xbc4d,%eax
c00313b8:	fa                   	cli    
c00313b9:	90                   	nop
c00313ba:	5d                   	pop    %ebp
c00313bb:	c3                   	ret    

c00313bc <sys_brk>:
c00313bc:	55                   	push   %ebp
c00313bd:	89 e5                	mov    %esp,%ebp
c00313bf:	53                   	push   %ebx
c00313c0:	83 ec 04             	sub    $0x4,%esp
c00313c3:	e8 ba ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00313c8:	05 38 bc 00 00       	add    $0xbc38,%eax
c00313cd:	8b 55 08             	mov    0x8(%ebp),%edx
c00313d0:	8b 52 10             	mov    0x10(%edx),%edx
c00313d3:	83 ec 0c             	sub    $0xc,%esp
c00313d6:	52                   	push   %edx
c00313d7:	89 c3                	mov    %eax,%ebx
c00313d9:	e8 67 02 00 00       	call   c0031645 <mm_brk>
c00313de:	83 c4 10             	add    $0x10,%esp
c00313e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00313e4:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c00313eb:	90                   	nop
c00313ec:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00313ef:	c9                   	leave  
c00313f0:	c3                   	ret    

c00313f1 <sys_open>:
c00313f1:	55                   	push   %ebp
c00313f2:	89 e5                	mov    %esp,%ebp
c00313f4:	53                   	push   %ebx
c00313f5:	83 ec 04             	sub    $0x4,%esp
c00313f8:	e8 85 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00313fd:	05 03 bc 00 00       	add    $0xbc03,%eax
c0031402:	8b 55 08             	mov    0x8(%ebp),%edx
c0031405:	8b 52 18             	mov    0x18(%edx),%edx
c0031408:	89 d1                	mov    %edx,%ecx
c003140a:	8b 55 08             	mov    0x8(%ebp),%edx
c003140d:	8b 52 10             	mov    0x10(%edx),%edx
c0031410:	83 ec 08             	sub    $0x8,%esp
c0031413:	51                   	push   %ecx
c0031414:	52                   	push   %edx
c0031415:	89 c3                	mov    %eax,%ebx
c0031417:	e8 c6 fd ff ff       	call   c00311e2 <fs_open>
c003141c:	83 c4 10             	add    $0x10,%esp
c003141f:	89 c2                	mov    %eax,%edx
c0031421:	8b 45 08             	mov    0x8(%ebp),%eax
c0031424:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031427:	90                   	nop
c0031428:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003142b:	c9                   	leave  
c003142c:	c3                   	ret    

c003142d <sys_read>:
c003142d:	55                   	push   %ebp
c003142e:	89 e5                	mov    %esp,%ebp
c0031430:	53                   	push   %ebx
c0031431:	83 ec 04             	sub    $0x4,%esp
c0031434:	e8 49 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031439:	05 c7 bb 00 00       	add    $0xbbc7,%eax
c003143e:	8b 55 08             	mov    0x8(%ebp),%edx
c0031441:	8b 52 14             	mov    0x14(%edx),%edx
c0031444:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031447:	8b 49 18             	mov    0x18(%ecx),%ecx
c003144a:	89 cb                	mov    %ecx,%ebx
c003144c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003144f:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031452:	83 ec 04             	sub    $0x4,%esp
c0031455:	52                   	push   %edx
c0031456:	53                   	push   %ebx
c0031457:	51                   	push   %ecx
c0031458:	89 c3                	mov    %eax,%ebx
c003145a:	e8 c5 fd ff ff       	call   c0031224 <fs_read>
c003145f:	83 c4 10             	add    $0x10,%esp
c0031462:	89 c2                	mov    %eax,%edx
c0031464:	8b 45 08             	mov    0x8(%ebp),%eax
c0031467:	89 50 1c             	mov    %edx,0x1c(%eax)
c003146a:	90                   	nop
c003146b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003146e:	c9                   	leave  
c003146f:	c3                   	ret    

c0031470 <sys_write>:
c0031470:	55                   	push   %ebp
c0031471:	89 e5                	mov    %esp,%ebp
c0031473:	53                   	push   %ebx
c0031474:	83 ec 04             	sub    $0x4,%esp
c0031477:	e8 06 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003147c:	05 84 bb 00 00       	add    $0xbb84,%eax
c0031481:	8b 55 08             	mov    0x8(%ebp),%edx
c0031484:	8b 52 14             	mov    0x14(%edx),%edx
c0031487:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003148a:	8b 49 18             	mov    0x18(%ecx),%ecx
c003148d:	89 cb                	mov    %ecx,%ebx
c003148f:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031492:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031495:	83 ec 04             	sub    $0x4,%esp
c0031498:	52                   	push   %edx
c0031499:	53                   	push   %ebx
c003149a:	51                   	push   %ecx
c003149b:	89 c3                	mov    %eax,%ebx
c003149d:	e8 f8 fd ff ff       	call   c003129a <fs_write>
c00314a2:	83 c4 10             	add    $0x10,%esp
c00314a5:	89 c2                	mov    %eax,%edx
c00314a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00314aa:	89 50 1c             	mov    %edx,0x1c(%eax)
c00314ad:	90                   	nop
c00314ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00314b1:	c9                   	leave  
c00314b2:	c3                   	ret    

c00314b3 <sys_lseek>:
c00314b3:	55                   	push   %ebp
c00314b4:	89 e5                	mov    %esp,%ebp
c00314b6:	53                   	push   %ebx
c00314b7:	83 ec 04             	sub    $0x4,%esp
c00314ba:	e8 c3 ec ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00314bf:	05 41 bb 00 00       	add    $0xbb41,%eax
c00314c4:	8b 55 08             	mov    0x8(%ebp),%edx
c00314c7:	8b 52 14             	mov    0x14(%edx),%edx
c00314ca:	89 d3                	mov    %edx,%ebx
c00314cc:	8b 55 08             	mov    0x8(%ebp),%edx
c00314cf:	8b 52 18             	mov    0x18(%edx),%edx
c00314d2:	89 d1                	mov    %edx,%ecx
c00314d4:	8b 55 08             	mov    0x8(%ebp),%edx
c00314d7:	8b 52 10             	mov    0x10(%edx),%edx
c00314da:	83 ec 04             	sub    $0x4,%esp
c00314dd:	53                   	push   %ebx
c00314de:	51                   	push   %ecx
c00314df:	52                   	push   %edx
c00314e0:	89 c3                	mov    %eax,%ebx
c00314e2:	e8 2f fe ff ff       	call   c0031316 <fs_lseek>
c00314e7:	83 c4 10             	add    $0x10,%esp
c00314ea:	89 c2                	mov    %eax,%edx
c00314ec:	8b 45 08             	mov    0x8(%ebp),%eax
c00314ef:	89 50 1c             	mov    %edx,0x1c(%eax)
c00314f2:	90                   	nop
c00314f3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00314f6:	c9                   	leave  
c00314f7:	c3                   	ret    

c00314f8 <sys_close>:
c00314f8:	55                   	push   %ebp
c00314f9:	89 e5                	mov    %esp,%ebp
c00314fb:	53                   	push   %ebx
c00314fc:	83 ec 04             	sub    $0x4,%esp
c00314ff:	e8 7e ec ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031504:	05 fc ba 00 00       	add    $0xbafc,%eax
c0031509:	8b 55 08             	mov    0x8(%ebp),%edx
c003150c:	8b 52 10             	mov    0x10(%edx),%edx
c003150f:	83 ec 0c             	sub    $0xc,%esp
c0031512:	52                   	push   %edx
c0031513:	89 c3                	mov    %eax,%ebx
c0031515:	e8 3e fe ff ff       	call   c0031358 <fs_close>
c003151a:	83 c4 10             	add    $0x10,%esp
c003151d:	89 c2                	mov    %eax,%edx
c003151f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031522:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031525:	90                   	nop
c0031526:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031529:	c9                   	leave  
c003152a:	c3                   	ret    

c003152b <do_syscall>:
c003152b:	55                   	push   %ebp
c003152c:	89 e5                	mov    %esp,%ebp
c003152e:	53                   	push   %ebx
c003152f:	83 ec 04             	sub    $0x4,%esp
c0031532:	e8 4f ec ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0031537:	81 c3 c9 ba 00 00    	add    $0xbac9,%ebx
c003153d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031540:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031543:	83 f8 2d             	cmp    $0x2d,%eax
c0031546:	0f 87 98 00 00 00    	ja     c00315e4 <.L10>
c003154c:	c1 e0 02             	shl    $0x2,%eax
c003154f:	8b 84 18 bc c5 ff ff 	mov    -0x3a44(%eax,%ebx,1),%eax
c0031556:	01 d8                	add    %ebx,%eax
c0031558:	ff e0                	jmp    *%eax

c003155a <.L18>:
c003155a:	e8 4c fe ff ff       	call   c00313ab <cli>
c003155f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031562:	8b 40 18             	mov    0x18(%eax),%eax
c0031565:	89 c2                	mov    %eax,%edx
c0031567:	8b 45 08             	mov    0x8(%ebp),%eax
c003156a:	8b 40 10             	mov    0x10(%eax),%eax
c003156d:	83 ec 08             	sub    $0x8,%esp
c0031570:	52                   	push   %edx
c0031571:	50                   	push   %eax
c0031572:	e8 a9 f5 ff ff       	call   c0030b20 <add_irq_handle>
c0031577:	83 c4 10             	add    $0x10,%esp
c003157a:	e8 1b fe ff ff       	call   c003139a <sti>
c003157f:	e9 8f 00 00 00       	jmp    c0031613 <.L10+0x2f>

c0031584 <.L11>:
c0031584:	83 ec 0c             	sub    $0xc,%esp
c0031587:	ff 75 08             	pushl  0x8(%ebp)
c003158a:	e8 2d fe ff ff       	call   c00313bc <sys_brk>
c003158f:	83 c4 10             	add    $0x10,%esp
c0031592:	eb 7f                	jmp    c0031613 <.L10+0x2f>

c0031594 <.L15>:
c0031594:	83 ec 0c             	sub    $0xc,%esp
c0031597:	ff 75 08             	pushl  0x8(%ebp)
c003159a:	e8 52 fe ff ff       	call   c00313f1 <sys_open>
c003159f:	83 c4 10             	add    $0x10,%esp
c00315a2:	eb 6f                	jmp    c0031613 <.L10+0x2f>

c00315a4 <.L17>:
c00315a4:	83 ec 0c             	sub    $0xc,%esp
c00315a7:	ff 75 08             	pushl  0x8(%ebp)
c00315aa:	e8 7e fe ff ff       	call   c003142d <sys_read>
c00315af:	83 c4 10             	add    $0x10,%esp
c00315b2:	eb 5f                	jmp    c0031613 <.L10+0x2f>

c00315b4 <.L16>:
c00315b4:	83 ec 0c             	sub    $0xc,%esp
c00315b7:	ff 75 08             	pushl  0x8(%ebp)
c00315ba:	e8 b1 fe ff ff       	call   c0031470 <sys_write>
c00315bf:	83 c4 10             	add    $0x10,%esp
c00315c2:	eb 4f                	jmp    c0031613 <.L10+0x2f>

c00315c4 <.L13>:
c00315c4:	83 ec 0c             	sub    $0xc,%esp
c00315c7:	ff 75 08             	pushl  0x8(%ebp)
c00315ca:	e8 e4 fe ff ff       	call   c00314b3 <sys_lseek>
c00315cf:	83 c4 10             	add    $0x10,%esp
c00315d2:	eb 3f                	jmp    c0031613 <.L10+0x2f>

c00315d4 <.L14>:
c00315d4:	83 ec 0c             	sub    $0xc,%esp
c00315d7:	ff 75 08             	pushl  0x8(%ebp)
c00315da:	e8 19 ff ff ff       	call   c00314f8 <sys_close>
c00315df:	83 c4 10             	add    $0x10,%esp
c00315e2:	eb 2f                	jmp    c0031613 <.L10+0x2f>

c00315e4 <.L10>:
c00315e4:	8b 45 08             	mov    0x8(%ebp),%eax
c00315e7:	8b 40 1c             	mov    0x1c(%eax),%eax
c00315ea:	83 ec 0c             	sub    $0xc,%esp
c00315ed:	50                   	push   %eax
c00315ee:	8d 83 74 c6 ff ff    	lea    -0x398c(%ebx),%eax
c00315f4:	50                   	push   %eax
c00315f5:	6a 4a                	push   $0x4a
c00315f7:	8d 83 4c c5 ff ff    	lea    -0x3ab4(%ebx),%eax
c00315fd:	50                   	push   %eax
c00315fe:	8d 83 68 c5 ff ff    	lea    -0x3a98(%ebx),%eax
c0031604:	50                   	push   %eax
c0031605:	e8 c2 f4 ff ff       	call   c0030acc <printk>
c003160a:	83 c4 20             	add    $0x20,%esp
c003160d:	b8 01 00 00 00       	mov    $0x1,%eax
c0031612:	82                   	nemu_trap 
c0031613:	90                   	nop
c0031614:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031617:	c9                   	leave  
c0031618:	c3                   	ret    

c0031619 <get_updir>:
c0031619:	55                   	push   %ebp
c003161a:	89 e5                	mov    %esp,%ebp
c003161c:	e8 61 eb ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031621:	05 df b9 00 00       	add    $0xb9df,%eax
c0031626:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003162c:	5d                   	pop    %ebp
c003162d:	c3                   	ret    

c003162e <get_ucr3>:
c003162e:	55                   	push   %ebp
c003162f:	89 e5                	mov    %esp,%ebp
c0031631:	e8 4c eb ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031636:	05 ca b9 00 00       	add    $0xb9ca,%eax
c003163b:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031641:	8b 00                	mov    (%eax),%eax
c0031643:	5d                   	pop    %ebp
c0031644:	c3                   	ret    

c0031645 <mm_brk>:
c0031645:	55                   	push   %ebp
c0031646:	89 e5                	mov    %esp,%ebp
c0031648:	53                   	push   %ebx
c0031649:	83 ec 04             	sub    $0x4,%esp
c003164c:	e8 35 eb ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0031651:	81 c3 af b9 00 00    	add    $0xb9af,%ebx
c0031657:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c003165d:	39 45 08             	cmp    %eax,0x8(%ebp)
c0031660:	76 22                	jbe    c0031684 <mm_brk+0x3f>
c0031662:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c0031668:	8b 55 08             	mov    0x8(%ebp),%edx
c003166b:	29 c2                	sub    %eax,%edx
c003166d:	89 d0                	mov    %edx,%eax
c003166f:	89 c2                	mov    %eax,%edx
c0031671:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c0031677:	83 ec 08             	sub    $0x8,%esp
c003167a:	52                   	push   %edx
c003167b:	50                   	push   %eax
c003167c:	e8 af 04 00 00       	call   c0031b30 <mm_malloc>
c0031681:	83 c4 10             	add    $0x10,%esp
c0031684:	8b 45 08             	mov    0x8(%ebp),%eax
c0031687:	89 83 88 1e 01 00    	mov    %eax,0x11e88(%ebx)
c003168d:	90                   	nop
c003168e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031691:	c9                   	leave  
c0031692:	c3                   	ret    

c0031693 <init_mm>:
c0031693:	55                   	push   %ebp
c0031694:	89 e5                	mov    %esp,%ebp
c0031696:	53                   	push   %ebx
c0031697:	83 ec 14             	sub    $0x14,%esp
c003169a:	e8 e7 ea ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c003169f:	81 c3 61 b9 00 00    	add    $0xb961,%ebx
c00316a5:	e8 10 02 00 00       	call   c00318ba <get_kpdir>
c00316aa:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00316ad:	83 ec 04             	sub    $0x4,%esp
c00316b0:	68 00 10 00 00       	push   $0x1000
c00316b5:	6a 00                	push   $0x0
c00316b7:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00316bd:	50                   	push   %eax
c00316be:	e8 49 07 00 00       	call   c0031e0c <memset>
c00316c3:	83 c4 10             	add    $0x10,%esp
c00316c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00316c9:	05 00 0c 00 00       	add    $0xc00,%eax
c00316ce:	83 ec 04             	sub    $0x4,%esp
c00316d1:	68 80 00 00 00       	push   $0x80
c00316d6:	50                   	push   %eax
c00316d7:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00316dd:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c00316e3:	50                   	push   %eax
c00316e4:	e8 db 06 00 00       	call   c0031dc4 <memcpy>
c00316e9:	83 c4 10             	add    $0x10,%esp
c00316ec:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00316f2:	05 00 00 00 40       	add    $0x40000000,%eax
c00316f7:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c00316fc:	89 c2                	mov    %eax,%edx
c00316fe:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031704:	89 10                	mov    %edx,(%eax)
c0031706:	90                   	nop
c0031707:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003170a:	c9                   	leave  
c003170b:	c3                   	ret    

c003170c <create_video_mapping>:
c003170c:	55                   	push   %ebp
c003170d:	89 e5                	mov    %esp,%ebp
c003170f:	53                   	push   %ebx
c0031710:	83 ec 04             	sub    $0x4,%esp
c0031713:	e8 6a ea ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031718:	05 e8 b8 00 00       	add    $0xb8e8,%eax
c003171d:	8d 90 38 c7 ff ff    	lea    -0x38c8(%eax),%edx
c0031723:	52                   	push   %edx
c0031724:	6a 14                	push   $0x14
c0031726:	8d 90 80 c6 ff ff    	lea    -0x3980(%eax),%edx
c003172c:	52                   	push   %edx
c003172d:	8d 90 94 c6 ff ff    	lea    -0x396c(%eax),%edx
c0031733:	52                   	push   %edx
c0031734:	89 c3                	mov    %eax,%ebx
c0031736:	e8 91 f3 ff ff       	call   c0030acc <printk>
c003173b:	83 c4 10             	add    $0x10,%esp
c003173e:	b8 01 00 00 00       	mov    $0x1,%eax
c0031743:	82                   	nemu_trap 
c0031744:	90                   	nop
c0031745:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031748:	c9                   	leave  
c0031749:	c3                   	ret    

c003174a <video_mapping_write_test>:
c003174a:	55                   	push   %ebp
c003174b:	89 e5                	mov    %esp,%ebp
c003174d:	83 ec 10             	sub    $0x10,%esp
c0031750:	e8 2d ea ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031755:	05 ab b8 00 00       	add    $0xb8ab,%eax
c003175a:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c0031761:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0031768:	eb 17                	jmp    c0031781 <video_mapping_write_test+0x37>
c003176a:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003176d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031774:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0031777:	01 c2                	add    %eax,%edx
c0031779:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003177c:	89 02                	mov    %eax,(%edx)
c003177e:	ff 45 fc             	incl   -0x4(%ebp)
c0031781:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c0031788:	7e e0                	jle    c003176a <video_mapping_write_test+0x20>
c003178a:	90                   	nop
c003178b:	c9                   	leave  
c003178c:	c3                   	ret    

c003178d <video_mapping_read_test>:
c003178d:	55                   	push   %ebp
c003178e:	89 e5                	mov    %esp,%ebp
c0031790:	53                   	push   %ebx
c0031791:	83 ec 14             	sub    $0x14,%esp
c0031794:	e8 ed e9 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0031799:	81 c3 67 b8 00 00    	add    $0xb867,%ebx
c003179f:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c00317a6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00317ad:	eb 4a                	jmp    c00317f9 <video_mapping_read_test+0x6c>
c00317af:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317b2:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00317b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00317bc:	01 d0                	add    %edx,%eax
c00317be:	8b 10                	mov    (%eax),%edx
c00317c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317c3:	39 c2                	cmp    %eax,%edx
c00317c5:	74 2f                	je     c00317f6 <video_mapping_read_test+0x69>
c00317c7:	83 ec 0c             	sub    $0xc,%esp
c00317ca:	8d 83 dd c6 ff ff    	lea    -0x3923(%ebx),%eax
c00317d0:	50                   	push   %eax
c00317d1:	8d 83 50 c7 ff ff    	lea    -0x38b0(%ebx),%eax
c00317d7:	50                   	push   %eax
c00317d8:	6a 27                	push   $0x27
c00317da:	8d 83 80 c6 ff ff    	lea    -0x3980(%ebx),%eax
c00317e0:	50                   	push   %eax
c00317e1:	8d 83 ec c6 ff ff    	lea    -0x3914(%ebx),%eax
c00317e7:	50                   	push   %eax
c00317e8:	e8 df f2 ff ff       	call   c0030acc <printk>
c00317ed:	83 c4 20             	add    $0x20,%esp
c00317f0:	b8 01 00 00 00       	mov    $0x1,%eax
c00317f5:	82                   	nemu_trap 
c00317f6:	ff 45 f4             	incl   -0xc(%ebp)
c00317f9:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0031800:	7e ad                	jle    c00317af <video_mapping_read_test+0x22>
c0031802:	90                   	nop
c0031803:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031806:	c9                   	leave  
c0031807:	c3                   	ret    

c0031808 <video_mapping_clear>:
c0031808:	55                   	push   %ebp
c0031809:	89 e5                	mov    %esp,%ebp
c003180b:	53                   	push   %ebx
c003180c:	83 ec 04             	sub    $0x4,%esp
c003180f:	e8 6e e9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031814:	05 ec b7 00 00       	add    $0xb7ec,%eax
c0031819:	83 ec 04             	sub    $0x4,%esp
c003181c:	68 00 fa 00 00       	push   $0xfa00
c0031821:	6a 00                	push   $0x0
c0031823:	68 00 00 0a 00       	push   $0xa0000
c0031828:	89 c3                	mov    %eax,%ebx
c003182a:	e8 dd 05 00 00       	call   c0031e0c <memset>
c003182f:	83 c4 10             	add    $0x10,%esp
c0031832:	90                   	nop
c0031833:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031836:	c9                   	leave  
c0031837:	c3                   	ret    

c0031838 <read_cr0>:
c0031838:	55                   	push   %ebp
c0031839:	89 e5                	mov    %esp,%ebp
c003183b:	83 ec 10             	sub    $0x10,%esp
c003183e:	e8 3f e9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031843:	05 bd b7 00 00       	add    $0xb7bd,%eax
c0031848:	0f 20 c0             	mov    %cr0,%eax
c003184b:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003184e:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031851:	c9                   	leave  
c0031852:	c3                   	ret    

c0031853 <write_cr0>:
c0031853:	55                   	push   %ebp
c0031854:	89 e5                	mov    %esp,%ebp
c0031856:	e8 27 e9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003185b:	05 a5 b7 00 00       	add    $0xb7a5,%eax
c0031860:	8b 45 08             	mov    0x8(%ebp),%eax
c0031863:	0f 22 c0             	mov    %eax,%cr0
c0031866:	90                   	nop
c0031867:	5d                   	pop    %ebp
c0031868:	c3                   	ret    

c0031869 <write_cr3>:
c0031869:	55                   	push   %ebp
c003186a:	89 e5                	mov    %esp,%ebp
c003186c:	e8 11 e9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031871:	05 8f b7 00 00       	add    $0xb78f,%eax
c0031876:	8b 45 08             	mov    0x8(%ebp),%eax
c0031879:	0f 22 d8             	mov    %eax,%cr3
c003187c:	90                   	nop
c003187d:	5d                   	pop    %ebp
c003187e:	c3                   	ret    

c003187f <write_gdtr>:
c003187f:	55                   	push   %ebp
c0031880:	89 e5                	mov    %esp,%ebp
c0031882:	e8 fb e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031887:	05 79 b7 00 00       	add    $0xb779,%eax
c003188c:	8b 55 0c             	mov    0xc(%ebp),%edx
c003188f:	4a                   	dec    %edx
c0031890:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
c0031897:	8b 55 08             	mov    0x8(%ebp),%edx
c003189a:	66 89 90 8e 1e 01 00 	mov    %dx,0x11e8e(%eax)
c00318a1:	8b 55 08             	mov    0x8(%ebp),%edx
c00318a4:	c1 ea 10             	shr    $0x10,%edx
c00318a7:	66 89 90 90 1e 01 00 	mov    %dx,0x11e90(%eax)
c00318ae:	8d 80 8c 1e 01 00    	lea    0x11e8c(%eax),%eax
c00318b4:	0f 01 10             	lgdtl  (%eax)
c00318b7:	90                   	nop
c00318b8:	5d                   	pop    %ebp
c00318b9:	c3                   	ret    

c00318ba <get_kpdir>:
c00318ba:	55                   	push   %ebp
c00318bb:	89 e5                	mov    %esp,%ebp
c00318bd:	e8 c0 e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00318c2:	05 3e b7 00 00       	add    $0xb73e,%eax
c00318c7:	c7 c0 00 40 07 c0    	mov    $0xc0074000,%eax
c00318cd:	5d                   	pop    %ebp
c00318ce:	c3                   	ret    

c00318cf <init_page>:
c00318cf:	55                   	push   %ebp
c00318d0:	89 e5                	mov    %esp,%ebp
c00318d2:	53                   	push   %ebx
c00318d3:	83 ec 24             	sub    $0x24,%esp
c00318d6:	e8 a7 e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00318db:	05 25 b7 00 00       	add    $0xb725,%eax
c00318e0:	c7 c2 00 40 07 c0    	mov    $0xc0074000,%edx
c00318e6:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00318ec:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00318ef:	c7 c2 00 50 07 c0    	mov    $0xc0075000,%edx
c00318f5:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00318fb:	89 55 f4             	mov    %edx,-0xc(%ebp)
c00318fe:	83 ec 04             	sub    $0x4,%esp
c0031901:	68 00 10 00 00       	push   $0x1000
c0031906:	6a 00                	push   $0x0
c0031908:	ff 75 e4             	pushl  -0x1c(%ebp)
c003190b:	89 c3                	mov    %eax,%ebx
c003190d:	e8 fa 04 00 00       	call   c0031e0c <memset>
c0031912:	83 c4 10             	add    $0x10,%esp
c0031915:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c003191c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0031923:	eb 70                	jmp    c0031995 <init_page+0xc6>
c0031925:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031928:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c003192d:	89 c2                	mov    %eax,%edx
c003192f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031932:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031939:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003193c:	01 c8                	add    %ecx,%eax
c003193e:	83 ca 07             	or     $0x7,%edx
c0031941:	89 10                	mov    %edx,(%eax)
c0031943:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031946:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c003194b:	89 c2                	mov    %eax,%edx
c003194d:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031950:	05 00 03 00 00       	add    $0x300,%eax
c0031955:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c003195c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003195f:	01 c8                	add    %ecx,%eax
c0031961:	83 ca 07             	or     $0x7,%edx
c0031964:	89 10                	mov    %edx,(%eax)
c0031966:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c003196d:	eb 1a                	jmp    c0031989 <init_page+0xba>
c003196f:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031972:	c1 e0 0c             	shl    $0xc,%eax
c0031975:	83 c8 07             	or     $0x7,%eax
c0031978:	89 c2                	mov    %eax,%edx
c003197a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003197d:	89 10                	mov    %edx,(%eax)
c003197f:	ff 45 e8             	incl   -0x18(%ebp)
c0031982:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0031986:	ff 45 ec             	incl   -0x14(%ebp)
c0031989:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c0031990:	76 dd                	jbe    c003196f <init_page+0xa0>
c0031992:	ff 45 f0             	incl   -0x10(%ebp)
c0031995:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c0031999:	76 8a                	jbe    c0031925 <init_page+0x56>
c003199b:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00319a2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00319a5:	c1 e8 0c             	shr    $0xc,%eax
c00319a8:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00319ad:	c1 e0 0c             	shl    $0xc,%eax
c00319b0:	89 c2                	mov    %eax,%edx
c00319b2:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00319b5:	25 ff 0f 00 00       	and    $0xfff,%eax
c00319ba:	09 d0                	or     %edx,%eax
c00319bc:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00319bf:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00319c2:	83 ec 0c             	sub    $0xc,%esp
c00319c5:	50                   	push   %eax
c00319c6:	e8 9e fe ff ff       	call   c0031869 <write_cr3>
c00319cb:	83 c4 10             	add    $0x10,%esp
c00319ce:	e8 65 fe ff ff       	call   c0031838 <read_cr0>
c00319d3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00319d6:	8a 45 e3             	mov    -0x1d(%ebp),%al
c00319d9:	83 c8 80             	or     $0xffffff80,%eax
c00319dc:	88 45 e3             	mov    %al,-0x1d(%ebp)
c00319df:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00319e2:	83 ec 0c             	sub    $0xc,%esp
c00319e5:	50                   	push   %eax
c00319e6:	e8 68 fe ff ff       	call   c0031853 <write_cr0>
c00319eb:	83 c4 10             	add    $0x10,%esp
c00319ee:	90                   	nop
c00319ef:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00319f2:	c9                   	leave  
c00319f3:	c3                   	ret    

c00319f4 <set_segment>:
c00319f4:	55                   	push   %ebp
c00319f5:	89 e5                	mov    %esp,%ebp
c00319f7:	e8 86 e7 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00319fc:	05 04 b6 00 00       	add    $0xb604,%eax
c0031a01:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a04:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031a09:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a0c:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0031a12:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a15:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031a19:	8b 45 10             	mov    0x10(%ebp),%eax
c0031a1c:	88 c2                	mov    %al,%dl
c0031a1e:	83 e2 0f             	and    $0xf,%edx
c0031a21:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a24:	88 d1                	mov    %dl,%cl
c0031a26:	83 e1 0f             	and    $0xf,%ecx
c0031a29:	8a 50 05             	mov    0x5(%eax),%dl
c0031a2c:	83 e2 f0             	and    $0xfffffff0,%edx
c0031a2f:	09 ca                	or     %ecx,%edx
c0031a31:	88 50 05             	mov    %dl,0x5(%eax)
c0031a34:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a37:	8a 50 05             	mov    0x5(%eax),%dl
c0031a3a:	83 ca 10             	or     $0x10,%edx
c0031a3d:	88 50 05             	mov    %dl,0x5(%eax)
c0031a40:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031a43:	88 c2                	mov    %al,%dl
c0031a45:	83 e2 03             	and    $0x3,%edx
c0031a48:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a4b:	83 e2 03             	and    $0x3,%edx
c0031a4e:	88 d1                	mov    %dl,%cl
c0031a50:	c1 e1 05             	shl    $0x5,%ecx
c0031a53:	8a 50 05             	mov    0x5(%eax),%dl
c0031a56:	83 e2 9f             	and    $0xffffff9f,%edx
c0031a59:	09 ca                	or     %ecx,%edx
c0031a5b:	88 50 05             	mov    %dl,0x5(%eax)
c0031a5e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a61:	8a 50 05             	mov    0x5(%eax),%dl
c0031a64:	83 ca 80             	or     $0xffffff80,%edx
c0031a67:	88 50 05             	mov    %dl,0x5(%eax)
c0031a6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a6d:	8a 50 06             	mov    0x6(%eax),%dl
c0031a70:	83 ca 0f             	or     $0xf,%edx
c0031a73:	88 50 06             	mov    %dl,0x6(%eax)
c0031a76:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a79:	8a 50 06             	mov    0x6(%eax),%dl
c0031a7c:	83 e2 ef             	and    $0xffffffef,%edx
c0031a7f:	88 50 06             	mov    %dl,0x6(%eax)
c0031a82:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a85:	8a 50 06             	mov    0x6(%eax),%dl
c0031a88:	83 e2 df             	and    $0xffffffdf,%edx
c0031a8b:	88 50 06             	mov    %dl,0x6(%eax)
c0031a8e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a91:	8a 50 06             	mov    0x6(%eax),%dl
c0031a94:	83 ca 40             	or     $0x40,%edx
c0031a97:	88 50 06             	mov    %dl,0x6(%eax)
c0031a9a:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a9d:	8a 50 06             	mov    0x6(%eax),%dl
c0031aa0:	83 ca 80             	or     $0xffffff80,%edx
c0031aa3:	88 50 06             	mov    %dl,0x6(%eax)
c0031aa6:	8b 45 08             	mov    0x8(%ebp),%eax
c0031aa9:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0031aad:	90                   	nop
c0031aae:	5d                   	pop    %ebp
c0031aaf:	c3                   	ret    

c0031ab0 <init_segment>:
c0031ab0:	55                   	push   %ebp
c0031ab1:	89 e5                	mov    %esp,%ebp
c0031ab3:	53                   	push   %ebx
c0031ab4:	83 ec 04             	sub    $0x4,%esp
c0031ab7:	e8 ca e6 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0031abc:	81 c3 44 b5 00 00    	add    $0xb544,%ebx
c0031ac2:	83 ec 04             	sub    $0x4,%esp
c0031ac5:	6a 18                	push   $0x18
c0031ac7:	6a 00                	push   $0x0
c0031ac9:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031acf:	50                   	push   %eax
c0031ad0:	e8 37 03 00 00       	call   c0031e0c <memset>
c0031ad5:	83 c4 10             	add    $0x10,%esp
c0031ad8:	83 ec 04             	sub    $0x4,%esp
c0031adb:	6a 0a                	push   $0xa
c0031add:	6a 00                	push   $0x0
c0031adf:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031ae5:	8d 40 08             	lea    0x8(%eax),%eax
c0031ae8:	50                   	push   %eax
c0031ae9:	e8 06 ff ff ff       	call   c00319f4 <set_segment>
c0031aee:	83 c4 10             	add    $0x10,%esp
c0031af1:	83 ec 04             	sub    $0x4,%esp
c0031af4:	6a 02                	push   $0x2
c0031af6:	6a 00                	push   $0x0
c0031af8:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031afe:	8d 40 10             	lea    0x10(%eax),%eax
c0031b01:	50                   	push   %eax
c0031b02:	e8 ed fe ff ff       	call   c00319f4 <set_segment>
c0031b07:	83 c4 10             	add    $0x10,%esp
c0031b0a:	83 ec 08             	sub    $0x8,%esp
c0031b0d:	6a 18                	push   $0x18
c0031b0f:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b15:	50                   	push   %eax
c0031b16:	e8 64 fd ff ff       	call   c003187f <write_gdtr>
c0031b1b:	83 c4 10             	add    $0x10,%esp
c0031b1e:	90                   	nop
c0031b1f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b22:	c9                   	leave  
c0031b23:	c3                   	ret    
c0031b24:	66 90                	xchg   %ax,%ax
c0031b26:	66 90                	xchg   %ax,%ax
c0031b28:	66 90                	xchg   %ax,%ax
c0031b2a:	66 90                	xchg   %ax,%ax
c0031b2c:	66 90                	xchg   %ax,%ax
c0031b2e:	66 90                	xchg   %ax,%ax

c0031b30 <mm_malloc>:
c0031b30:	55                   	push   %ebp
c0031b31:	31 c0                	xor    %eax,%eax
c0031b33:	89 e5                	mov    %esp,%ebp
c0031b35:	57                   	push   %edi
c0031b36:	56                   	push   %esi
c0031b37:	53                   	push   %ebx
c0031b38:	83 ec 3c             	sub    $0x3c,%esp
c0031b3b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031b3e:	85 db                	test   %ebx,%ebx
c0031b40:	0f 8e 36 02 00 00    	jle    c0031d7c <mm_malloc+0x24c>
c0031b46:	e8 ce fa ff ff       	call   c0031619 <get_updir>
c0031b4b:	89 c6                	mov    %eax,%esi
c0031b4d:	e8 dc fa ff ff       	call   c003162e <get_ucr3>
c0031b52:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b55:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031b59:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031b5c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031b5f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031b64:	29 d0                	sub    %edx,%eax
c0031b66:	89 da                	mov    %ebx,%edx
c0031b68:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031b6e:	01 d0                	add    %edx,%eax
c0031b70:	85 c0                	test   %eax,%eax
c0031b72:	0f 8e c0 00 00 00    	jle    c0031c38 <mm_malloc+0x108>
c0031b78:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b7b:	83 e8 01             	sub    $0x1,%eax
c0031b7e:	89 f7                	mov    %esi,%edi
c0031b80:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031b85:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031b8c:	89 d3                	mov    %edx,%ebx
c0031b8e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031b91:	eb 51                	jmp    c0031be4 <mm_malloc+0xb4>
c0031b93:	90                   	nop
c0031b94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031b98:	8b 31                	mov    (%ecx),%esi
c0031b9a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031ba0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031ba6:	89 d8                	mov    %ebx,%eax
c0031ba8:	c1 e8 0a             	shr    $0xa,%eax
c0031bab:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031bb0:	01 c6                	add    %eax,%esi
c0031bb2:	f6 06 01             	testb  $0x1,(%esi)
c0031bb5:	75 22                	jne    c0031bd9 <mm_malloc+0xa9>
c0031bb7:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031bbc:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031bc1:	0f 8f c1 01 00 00    	jg     c0031d88 <mm_malloc+0x258>
c0031bc7:	89 c1                	mov    %eax,%ecx
c0031bc9:	83 c0 01             	add    $0x1,%eax
c0031bcc:	c1 e1 0c             	shl    $0xc,%ecx
c0031bcf:	83 c9 07             	or     $0x7,%ecx
c0031bd2:	89 0e                	mov    %ecx,(%esi)
c0031bd4:	a3 20 d0 03 c0       	mov    %eax,0xc003d020
c0031bd9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031bdf:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031be2:	74 54                	je     c0031c38 <mm_malloc+0x108>
c0031be4:	89 d8                	mov    %ebx,%eax
c0031be6:	c1 e8 16             	shr    $0x16,%eax
c0031be9:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031bec:	f6 01 01             	testb  $0x1,(%ecx)
c0031bef:	75 a7                	jne    c0031b98 <mm_malloc+0x68>
c0031bf1:	a1 00 f0 04 c0       	mov    0xc004f000,%eax
c0031bf6:	89 c6                	mov    %eax,%esi
c0031bf8:	83 c0 01             	add    $0x1,%eax
c0031bfb:	c1 e6 0c             	shl    $0xc,%esi
c0031bfe:	81 c6 00 00 05 c0    	add    $0xc0050000,%esi
c0031c04:	a3 00 f0 04 c0       	mov    %eax,0xc004f000
c0031c09:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031c0f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c14:	83 c8 07             	or     $0x7,%eax
c0031c17:	89 01                	mov    %eax,(%ecx)
c0031c19:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031c20:	00 
c0031c21:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031c28:	00 
c0031c29:	89 34 24             	mov    %esi,(%esp)
c0031c2c:	e8 db 01 00 00       	call   c0031e0c <memset>
c0031c31:	e9 70 ff ff ff       	jmp    c0031ba6 <mm_malloc+0x76>
c0031c36:	66 90                	xchg   %ax,%ax
c0031c38:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031c3b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031c3e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031c44:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031c4a:	c1 e8 16             	shr    $0x16,%eax
c0031c4d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031c50:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031c56:	75 32                	jne    c0031c8a <mm_malloc+0x15a>
c0031c58:	c7 44 24 10 8c 97 03 	movl   $0xc003978c,0x10(%esp)
c0031c5f:	c0 
c0031c60:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031c67:	c0 
c0031c68:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031c6f:	00 
c0031c70:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031c77:	c0 
c0031c78:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031c7f:	e8 48 ee ff ff       	call   c0030acc <printk>
c0031c84:	b8 01 00 00 00       	mov    $0x1,%eax
c0031c89:	82                   	nemu_trap 
c0031c8a:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0031c8d:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c0031c93:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c98:	c1 ea 0c             	shr    $0xc,%edx
c0031c9b:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031ca1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c0031ca5:	75 32                	jne    c0031cd9 <mm_malloc+0x1a9>
c0031ca7:	c7 44 24 10 94 97 03 	movl   $0xc0039794,0x10(%esp)
c0031cae:	c0 
c0031caf:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031cb6:	c0 
c0031cb7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031cbe:	00 
c0031cbf:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031cc6:	c0 
c0031cc7:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031cce:	e8 f9 ed ff ff       	call   c0030acc <printk>
c0031cd3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031cd8:	82                   	nemu_trap 
c0031cd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031cdc:	c1 e8 16             	shr    $0x16,%eax
c0031cdf:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031ce2:	f6 c3 01             	test   $0x1,%bl
c0031ce5:	75 32                	jne    c0031d19 <mm_malloc+0x1e9>
c0031ce7:	c7 44 24 10 8c 97 03 	movl   $0xc003978c,0x10(%esp)
c0031cee:	c0 
c0031cef:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031cf6:	c0 
c0031cf7:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031cfe:	00 
c0031cff:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031d06:	c0 
c0031d07:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031d0e:	e8 b9 ed ff ff       	call   c0030acc <printk>
c0031d13:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d18:	82                   	nemu_trap 
c0031d19:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d1c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
c0031d22:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d27:	c1 ea 0c             	shr    $0xc,%edx
c0031d2a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031d30:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
c0031d33:	f6 c3 01             	test   $0x1,%bl
c0031d36:	75 32                	jne    c0031d6a <mm_malloc+0x23a>
c0031d38:	c7 44 24 10 94 97 03 	movl   $0xc0039794,0x10(%esp)
c0031d3f:	c0 
c0031d40:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031d47:	c0 
c0031d48:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d4f:	00 
c0031d50:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031d57:	c0 
c0031d58:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031d5f:	e8 68 ed ff ff       	call   c0030acc <printk>
c0031d64:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d69:	82                   	nemu_trap 
c0031d6a:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d6d:	89 d8                	mov    %ebx,%eax
c0031d6f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d74:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c0031d7a:	09 d0                	or     %edx,%eax
c0031d7c:	83 c4 3c             	add    $0x3c,%esp
c0031d7f:	5b                   	pop    %ebx
c0031d80:	5e                   	pop    %esi
c0031d81:	5f                   	pop    %edi
c0031d82:	5d                   	pop    %ebp
c0031d83:	c3                   	ret    
c0031d84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031d88:	c7 44 24 10 68 97 03 	movl   $0xc0039768,0x10(%esp)
c0031d8f:	c0 
c0031d90:	c7 44 24 0c e8 97 03 	movl   $0xc00397e8,0xc(%esp)
c0031d97:	c0 
c0031d98:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031d9f:	00 
c0031da0:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031da7:	c0 
c0031da8:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031daf:	e8 18 ed ff ff       	call   c0030acc <printk>
c0031db4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031db9:	82                   	nemu_trap 
c0031dba:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031dbf:	e9 03 fe ff ff       	jmp    c0031bc7 <mm_malloc+0x97>

c0031dc4 <memcpy>:
c0031dc4:	55                   	push   %ebp
c0031dc5:	89 e5                	mov    %esp,%ebp
c0031dc7:	56                   	push   %esi
c0031dc8:	57                   	push   %edi
c0031dc9:	53                   	push   %ebx
c0031dca:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031dcd:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031dd0:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031dd3:	fc                   	cld    
c0031dd4:	83 f9 08             	cmp    $0x8,%ecx
c0031dd7:	76 26                	jbe    c0031dff <memcpy+0x3b>
c0031dd9:	89 fa                	mov    %edi,%edx
c0031ddb:	89 cb                	mov    %ecx,%ebx
c0031ddd:	83 e2 03             	and    $0x3,%edx
c0031de0:	74 10                	je     c0031df2 <memcpy+0x2e>
c0031de2:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031de7:	29 d1                	sub    %edx,%ecx
c0031de9:	83 e1 03             	and    $0x3,%ecx
c0031dec:	29 cb                	sub    %ecx,%ebx
c0031dee:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031df0:	89 d9                	mov    %ebx,%ecx
c0031df2:	c1 e9 02             	shr    $0x2,%ecx
c0031df5:	8d 76 00             	lea    0x0(%esi),%esi
c0031df8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031dfa:	89 d9                	mov    %ebx,%ecx
c0031dfc:	83 e1 03             	and    $0x3,%ecx
c0031dff:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e01:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e04:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031e07:	5b                   	pop    %ebx
c0031e08:	5f                   	pop    %edi
c0031e09:	5e                   	pop    %esi
c0031e0a:	c9                   	leave  
c0031e0b:	c3                   	ret    

c0031e0c <memset>:
c0031e0c:	55                   	push   %ebp
c0031e0d:	89 e5                	mov    %esp,%ebp
c0031e0f:	57                   	push   %edi
c0031e10:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e13:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031e17:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e1a:	fc                   	cld    
c0031e1b:	83 f9 10             	cmp    $0x10,%ecx
c0031e1e:	76 69                	jbe    c0031e89 <memset+0x7d>
c0031e20:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e26:	74 4c                	je     c0031e74 <memset+0x68>
c0031e28:	88 07                	mov    %al,(%edi)
c0031e2a:	47                   	inc    %edi
c0031e2b:	49                   	dec    %ecx
c0031e2c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e32:	74 40                	je     c0031e74 <memset+0x68>
c0031e34:	88 07                	mov    %al,(%edi)
c0031e36:	47                   	inc    %edi
c0031e37:	49                   	dec    %ecx
c0031e38:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e3e:	74 34                	je     c0031e74 <memset+0x68>
c0031e40:	88 07                	mov    %al,(%edi)
c0031e42:	47                   	inc    %edi
c0031e43:	49                   	dec    %ecx
c0031e44:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e4a:	74 28                	je     c0031e74 <memset+0x68>
c0031e4c:	88 07                	mov    %al,(%edi)
c0031e4e:	47                   	inc    %edi
c0031e4f:	49                   	dec    %ecx
c0031e50:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e56:	74 1c                	je     c0031e74 <memset+0x68>
c0031e58:	88 07                	mov    %al,(%edi)
c0031e5a:	47                   	inc    %edi
c0031e5b:	49                   	dec    %ecx
c0031e5c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e62:	74 10                	je     c0031e74 <memset+0x68>
c0031e64:	88 07                	mov    %al,(%edi)
c0031e66:	47                   	inc    %edi
c0031e67:	49                   	dec    %ecx
c0031e68:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e6e:	74 04                	je     c0031e74 <memset+0x68>
c0031e70:	88 07                	mov    %al,(%edi)
c0031e72:	47                   	inc    %edi
c0031e73:	49                   	dec    %ecx
c0031e74:	88 c4                	mov    %al,%ah
c0031e76:	89 c2                	mov    %eax,%edx
c0031e78:	c1 e2 10             	shl    $0x10,%edx
c0031e7b:	09 d0                	or     %edx,%eax
c0031e7d:	89 ca                	mov    %ecx,%edx
c0031e7f:	c1 e9 02             	shr    $0x2,%ecx
c0031e82:	83 e2 03             	and    $0x3,%edx
c0031e85:	f3 ab                	rep stos %eax,%es:(%edi)
c0031e87:	89 d1                	mov    %edx,%ecx
c0031e89:	f3 aa                	rep stos %al,%es:(%edi)
c0031e8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e8e:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031e91:	5f                   	pop    %edi
c0031e92:	c9                   	leave  
c0031e93:	c3                   	ret    
c0031e94:	66 90                	xchg   %ax,%ax
c0031e96:	66 90                	xchg   %ax,%ax
c0031e98:	66 90                	xchg   %ax,%ax
c0031e9a:	66 90                	xchg   %ax,%ax
c0031e9c:	66 90                	xchg   %ax,%ax
c0031e9e:	66 90                	xchg   %ax,%ax

c0031ea0 <_vsnprintf_r>:
c0031ea0:	55                   	push   %ebp
c0031ea1:	89 e5                	mov    %esp,%ebp
c0031ea3:	56                   	push   %esi
c0031ea4:	53                   	push   %ebx
c0031ea5:	83 c4 80             	add    $0xffffff80,%esp
c0031ea8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031eab:	8b 75 08             	mov    0x8(%ebp),%esi
c0031eae:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031eb1:	85 db                	test   %ebx,%ebx
c0031eb3:	78 63                	js     c0031f18 <_vsnprintf_r+0x78>
c0031eb5:	ba 08 02 00 00       	mov    $0x208,%edx
c0031eba:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031ebf:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031ec3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031ec6:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031ec9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031ecc:	31 c0                	xor    %eax,%eax
c0031ece:	85 db                	test   %ebx,%ebx
c0031ed0:	0f 45 c2             	cmovne %edx,%eax
c0031ed3:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031ed6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031ed9:	8b 45 18             	mov    0x18(%ebp),%eax
c0031edc:	89 34 24             	mov    %esi,(%esp)
c0031edf:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031ee3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031ee7:	8b 45 14             	mov    0x14(%ebp),%eax
c0031eea:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031eee:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031ef1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031ef5:	e8 86 00 00 00       	call   c0031f80 <_svfprintf_r>
c0031efa:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031efd:	7c 11                	jl     c0031f10 <_vsnprintf_r+0x70>
c0031eff:	85 db                	test   %ebx,%ebx
c0031f01:	74 06                	je     c0031f09 <_vsnprintf_r+0x69>
c0031f03:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031f06:	c6 02 00             	movb   $0x0,(%edx)
c0031f09:	83 ec 80             	sub    $0xffffff80,%esp
c0031f0c:	5b                   	pop    %ebx
c0031f0d:	5e                   	pop    %esi
c0031f0e:	5d                   	pop    %ebp
c0031f0f:	c3                   	ret    
c0031f10:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f16:	eb e7                	jmp    c0031eff <_vsnprintf_r+0x5f>
c0031f18:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f1e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031f23:	eb e4                	jmp    c0031f09 <_vsnprintf_r+0x69>
c0031f25:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031f29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031f30 <vsnprintf>:
c0031f30:	55                   	push   %ebp
c0031f31:	89 e5                	mov    %esp,%ebp
c0031f33:	83 ec 28             	sub    $0x28,%esp
c0031f36:	e8 35 00 00 00       	call   c0031f70 <__getreent>
c0031f3b:	8b 55 14             	mov    0x14(%ebp),%edx
c0031f3e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031f42:	8b 55 10             	mov    0x10(%ebp),%edx
c0031f45:	89 04 24             	mov    %eax,(%esp)
c0031f48:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031f4c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031f4f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031f53:	8b 55 08             	mov    0x8(%ebp),%edx
c0031f56:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031f5a:	e8 41 ff ff ff       	call   c0031ea0 <_vsnprintf_r>
c0031f5f:	c9                   	leave  
c0031f60:	c3                   	ret    
c0031f61:	66 90                	xchg   %ax,%ax
c0031f63:	66 90                	xchg   %ax,%ax
c0031f65:	66 90                	xchg   %ax,%ax
c0031f67:	66 90                	xchg   %ax,%ax
c0031f69:	66 90                	xchg   %ax,%ax
c0031f6b:	66 90                	xchg   %ax,%ax
c0031f6d:	66 90                	xchg   %ax,%ax
c0031f6f:	90                   	nop

c0031f70 <__getreent>:
c0031f70:	55                   	push   %ebp
c0031f71:	a1 40 d0 03 c0       	mov    0xc003d040,%eax
c0031f76:	89 e5                	mov    %esp,%ebp
c0031f78:	5d                   	pop    %ebp
c0031f79:	c3                   	ret    
c0031f7a:	66 90                	xchg   %ax,%ax
c0031f7c:	66 90                	xchg   %ax,%ax
c0031f7e:	66 90                	xchg   %ax,%ax

c0031f80 <_svfprintf_r>:
c0031f80:	55                   	push   %ebp
c0031f81:	89 e5                	mov    %esp,%ebp
c0031f83:	57                   	push   %edi
c0031f84:	56                   	push   %esi
c0031f85:	53                   	push   %ebx
c0031f86:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c0031f8c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031f8f:	89 04 24             	mov    %eax,(%esp)
c0031f92:	e8 89 33 00 00       	call   c0035320 <_localeconv_r>
c0031f97:	8b 00                	mov    (%eax),%eax
c0031f99:	89 04 24             	mov    %eax,(%esp)
c0031f9c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0031fa2:	e8 d9 4a 00 00       	call   c0036a80 <strlen>
c0031fa7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c0031fad:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031fb0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0031fb4:	74 0b                	je     c0031fc1 <_svfprintf_r+0x41>
c0031fb6:	8b 40 10             	mov    0x10(%eax),%eax
c0031fb9:	85 c0                	test   %eax,%eax
c0031fbb:	0f 84 62 18 00 00    	je     c0033823 <_svfprintf_r+0x18a3>
c0031fc1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0031fc4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0031fc7:	89 c7                	mov    %eax,%edi
c0031fc9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0031fcf:	d9 ee                	fldz   
c0031fd1:	29 d0                	sub    %edx,%eax
c0031fd3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0031fda:	00 00 00 
c0031fdd:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0031fe3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0031fea:	00 00 00 
c0031fed:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0031ff4:	00 00 00 
c0031ff7:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c0031ffe:	00 00 00 
c0032001:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0032008:	00 00 00 
c003200b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0032012:	00 00 00 
c0032015:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c003201b:	8b 45 10             	mov    0x10(%ebp),%eax
c003201e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032021:	0f b6 00             	movzbl (%eax),%eax
c0032024:	3c 25                	cmp    $0x25,%al
c0032026:	74 4d                	je     c0032075 <_svfprintf_r+0xf5>
c0032028:	84 c0                	test   %al,%al
c003202a:	75 08                	jne    c0032034 <_svfprintf_r+0xb4>
c003202c:	eb 47                	jmp    c0032075 <_svfprintf_r+0xf5>
c003202e:	66 90                	xchg   %ax,%ax
c0032030:	84 c0                	test   %al,%al
c0032032:	74 0a                	je     c003203e <_svfprintf_r+0xbe>
c0032034:	83 c3 01             	add    $0x1,%ebx
c0032037:	0f b6 03             	movzbl (%ebx),%eax
c003203a:	3c 25                	cmp    $0x25,%al
c003203c:	75 f2                	jne    c0032030 <_svfprintf_r+0xb0>
c003203e:	89 de                	mov    %ebx,%esi
c0032040:	2b 75 10             	sub    0x10(%ebp),%esi
c0032043:	74 30                	je     c0032075 <_svfprintf_r+0xf5>
c0032045:	8b 45 10             	mov    0x10(%ebp),%eax
c0032048:	83 c7 08             	add    $0x8,%edi
c003204b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003204e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032054:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032057:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003205d:	83 c0 01             	add    $0x1,%eax
c0032060:	83 f8 07             	cmp    $0x7,%eax
c0032063:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032069:	0f 8f 91 00 00 00    	jg     c0032100 <_svfprintf_r+0x180>
c003206f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032075:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032078:	0f 84 aa 00 00 00    	je     c0032128 <_svfprintf_r+0x1a8>
c003207e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032081:	be 20 00 00 00       	mov    $0x20,%esi
c0032086:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003208d:	31 db                	xor    %ebx,%ebx
c003208f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0032096:	ff ff ff 
c0032099:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c00320a0:	00 00 00 
c00320a3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c00320aa:	00 00 00 
c00320ad:	8d 48 01             	lea    0x1(%eax),%ecx
c00320b0:	0f be 00             	movsbl (%eax),%eax
c00320b3:	8d 50 e0             	lea    -0x20(%eax),%edx
c00320b6:	83 fa 58             	cmp    $0x58,%edx
c00320b9:	0f 87 8f 07 00 00    	ja     c003284e <_svfprintf_r+0x8ce>
c00320bf:	ff 24 95 3c 98 03 c0 	jmp    *-0x3ffc67c4(,%edx,4)
c00320c6:	66 90                	xchg   %ax,%ax
c00320c8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00320cf:	89 c8                	mov    %ecx,%eax
c00320d1:	eb da                	jmp    c00320ad <_svfprintf_r+0x12d>
c00320d3:	8b 45 14             	mov    0x14(%ebp),%eax
c00320d6:	8b 55 14             	mov    0x14(%ebp),%edx
c00320d9:	8b 00                	mov    (%eax),%eax
c00320db:	83 c2 04             	add    $0x4,%edx
c00320de:	89 55 14             	mov    %edx,0x14(%ebp)
c00320e1:	85 c0                	test   %eax,%eax
c00320e3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c00320e9:	79 e4                	jns    c00320cf <_svfprintf_r+0x14f>
c00320eb:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c00320f1:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c00320f8:	89 c8                	mov    %ecx,%eax
c00320fa:	eb b1                	jmp    c00320ad <_svfprintf_r+0x12d>
c00320fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032100:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032106:	89 44 24 08          	mov    %eax,0x8(%esp)
c003210a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003210d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032111:	8b 45 08             	mov    0x8(%ebp),%eax
c0032114:	89 04 24             	mov    %eax,(%esp)
c0032117:	e8 e4 49 00 00       	call   c0036b00 <__ssprint_r>
c003211c:	85 c0                	test   %eax,%eax
c003211e:	75 30                	jne    c0032150 <_svfprintf_r+0x1d0>
c0032120:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032123:	e9 47 ff ff ff       	jmp    c003206f <_svfprintf_r+0xef>
c0032128:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003212e:	85 c0                	test   %eax,%eax
c0032130:	74 1e                	je     c0032150 <_svfprintf_r+0x1d0>
c0032132:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032138:	89 44 24 08          	mov    %eax,0x8(%esp)
c003213c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003213f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032143:	8b 45 08             	mov    0x8(%ebp),%eax
c0032146:	89 04 24             	mov    %eax,(%esp)
c0032149:	e8 b2 49 00 00       	call   c0036b00 <__ssprint_r>
c003214e:	66 90                	xchg   %ax,%ax
c0032150:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032153:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032158:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003215c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032163:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032169:	5b                   	pop    %ebx
c003216a:	5e                   	pop    %esi
c003216b:	5f                   	pop    %edi
c003216c:	5d                   	pop    %ebp
c003216d:	c3                   	ret    
c003216e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032173:	89 c8                	mov    %ecx,%eax
c0032175:	e9 33 ff ff ff       	jmp    c00320ad <_svfprintf_r+0x12d>
c003217a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032180:	8b 45 14             	mov    0x14(%ebp),%eax
c0032183:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032186:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003218d:	8d 70 04             	lea    0x4(%eax),%esi
c0032190:	8b 00                	mov    (%eax),%eax
c0032192:	85 c0                	test   %eax,%eax
c0032194:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003219a:	0f 84 7f 18 00 00    	je     c0033a1f <_svfprintf_r+0x1a9f>
c00321a0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00321a6:	85 c0                	test   %eax,%eax
c00321a8:	0f 88 b6 17 00 00    	js     c0033964 <_svfprintf_r+0x19e4>
c00321ae:	89 44 24 08          	mov    %eax,0x8(%esp)
c00321b2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00321b8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00321bf:	00 
c00321c0:	89 04 24             	mov    %eax,(%esp)
c00321c3:	e8 f8 38 00 00       	call   c0035ac0 <memchr>
c00321c8:	85 c0                	test   %eax,%eax
c00321ca:	0f 84 a0 19 00 00    	je     c0033b70 <_svfprintf_r+0x1bf0>
c00321d0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00321d6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00321dc:	39 d0                	cmp    %edx,%eax
c00321de:	0f 4f c2             	cmovg  %edx,%eax
c00321e1:	89 c2                	mov    %eax,%edx
c00321e3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00321ea:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00321f0:	31 c0                	xor    %eax,%eax
c00321f2:	85 d2                	test   %edx,%edx
c00321f4:	0f 49 c2             	cmovns %edx,%eax
c00321f7:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00321fd:	89 75 14             	mov    %esi,0x14(%ebp)
c0032200:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032207:	00 00 00 
c003220a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032211:	00 00 00 
c0032214:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032218:	84 db                	test   %bl,%bl
c003221a:	74 07                	je     c0032223 <_svfprintf_r+0x2a3>
c003221c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032223:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032229:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003222f:	89 c8                	mov    %ecx,%eax
c0032231:	89 f2                	mov    %esi,%edx
c0032233:	83 c0 02             	add    $0x2,%eax
c0032236:	83 e2 02             	and    $0x2,%edx
c0032239:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003223f:	89 f2                	mov    %esi,%edx
c0032241:	0f 44 c1             	cmove  %ecx,%eax
c0032244:	81 e2 84 00 00 00    	and    $0x84,%edx
c003224a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032250:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032256:	0f 85 1c 06 00 00    	jne    c0032878 <_svfprintf_r+0x8f8>
c003225c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032262:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032268:	85 f6                	test   %esi,%esi
c003226a:	0f 8e 08 06 00 00    	jle    c0032878 <_svfprintf_r+0x8f8>
c0032270:	83 fe 10             	cmp    $0x10,%esi
c0032273:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032279:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003227f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032285:	7f 11                	jg     c0032298 <_svfprintf_r+0x318>
c0032287:	eb 6b                	jmp    c00322f4 <_svfprintf_r+0x374>
c0032289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032290:	83 ee 10             	sub    $0x10,%esi
c0032293:	83 fe 10             	cmp    $0x10,%esi
c0032296:	7e 5c                	jle    c00322f4 <_svfprintf_r+0x374>
c0032298:	83 c0 01             	add    $0x1,%eax
c003229b:	83 c1 10             	add    $0x10,%ecx
c003229e:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c00322a4:	83 c7 08             	add    $0x8,%edi
c00322a7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00322ae:	83 f8 07             	cmp    $0x7,%eax
c00322b1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00322b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00322bd:	7e d1                	jle    c0032290 <_svfprintf_r+0x310>
c00322bf:	8b 45 0c             	mov    0xc(%ebp),%eax
c00322c2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00322c6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00322ca:	8b 45 08             	mov    0x8(%ebp),%eax
c00322cd:	89 04 24             	mov    %eax,(%esp)
c00322d0:	e8 2b 48 00 00       	call   c0036b00 <__ssprint_r>
c00322d5:	85 c0                	test   %eax,%eax
c00322d7:	0f 85 73 fe ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c00322dd:	83 ee 10             	sub    $0x10,%esi
c00322e0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00322e6:	83 fe 10             	cmp    $0x10,%esi
c00322e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00322ef:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00322f2:	7f a4                	jg     c0032298 <_svfprintf_r+0x318>
c00322f4:	83 c0 01             	add    $0x1,%eax
c00322f7:	01 f1                	add    %esi,%ecx
c00322f9:	83 f8 07             	cmp    $0x7,%eax
c00322fc:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c0032302:	89 77 04             	mov    %esi,0x4(%edi)
c0032305:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003230b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032311:	0f 8f 16 0e 00 00    	jg     c003312d <_svfprintf_r+0x11ad>
c0032317:	83 c7 08             	add    $0x8,%edi
c003231a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032321:	e9 58 05 00 00       	jmp    c003287e <_svfprintf_r+0x8fe>
c0032326:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003232d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032333:	8b 45 14             	mov    0x14(%ebp),%eax
c0032336:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032339:	0f 85 fd 04 00 00    	jne    c003283c <_svfprintf_r+0x8bc>
c003233f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032346:	0f 84 f0 04 00 00    	je     c003283c <_svfprintf_r+0x8bc>
c003234c:	0f b7 08             	movzwl (%eax),%ecx
c003234f:	83 c0 04             	add    $0x4,%eax
c0032352:	89 45 14             	mov    %eax,0x14(%ebp)
c0032355:	b8 01 00 00 00       	mov    $0x1,%eax
c003235a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032360:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032367:	31 db                	xor    %ebx,%ebx
c0032369:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003236f:	89 f2                	mov    %esi,%edx
c0032371:	80 e2 7f             	and    $0x7f,%dl
c0032374:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003237b:	0f 48 d6             	cmovs  %esi,%edx
c003237e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032384:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003238a:	85 d2                	test   %edx,%edx
c003238c:	75 08                	jne    c0032396 <_svfprintf_r+0x416>
c003238e:	85 c9                	test   %ecx,%ecx
c0032390:	0f 84 ea 08 00 00    	je     c0032c80 <_svfprintf_r+0xd00>
c0032396:	3c 01                	cmp    $0x1,%al
c0032398:	0f 84 6a 0d 00 00    	je     c0033108 <_svfprintf_r+0x1188>
c003239e:	3c 02                	cmp    $0x2,%al
c00323a0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00323a3:	0f 85 bf 0b 00 00    	jne    c0032f68 <_svfprintf_r+0xfe8>
c00323a9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c00323af:	90                   	nop
c00323b0:	89 ca                	mov    %ecx,%edx
c00323b2:	83 e8 01             	sub    $0x1,%eax
c00323b5:	83 e2 0f             	and    $0xf,%edx
c00323b8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c00323bc:	c1 e9 04             	shr    $0x4,%ecx
c00323bf:	85 c9                	test   %ecx,%ecx
c00323c1:	88 10                	mov    %dl,(%eax)
c00323c3:	75 eb                	jne    c00323b0 <_svfprintf_r+0x430>
c00323c5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c00323c8:	29 c2                	sub    %eax,%edx
c00323ca:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00323d0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00323d6:	66 90                	xchg   %ax,%ax
c00323d8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00323de:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c00323e4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00323eb:	00 00 00 
c00323ee:	39 c2                	cmp    %eax,%edx
c00323f0:	0f 4d c2             	cmovge %edx,%eax
c00323f3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00323f9:	e9 1a fe ff ff       	jmp    c0032218 <_svfprintf_r+0x298>
c00323fe:	84 db                	test   %bl,%bl
c0032400:	89 c8                	mov    %ecx,%eax
c0032402:	0f 44 de             	cmove  %esi,%ebx
c0032405:	e9 a3 fc ff ff       	jmp    c00320ad <_svfprintf_r+0x12d>
c003240a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032411:	89 c8                	mov    %ecx,%eax
c0032413:	e9 95 fc ff ff       	jmp    c00320ad <_svfprintf_r+0x12d>
c0032418:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003241f:	00 00 00 
c0032422:	89 c8                	mov    %ecx,%eax
c0032424:	e9 84 fc ff ff       	jmp    c00320ad <_svfprintf_r+0x12d>
c0032429:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003242f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032432:	31 ff                	xor    %edi,%edi
c0032434:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003243b:	00 00 00 
c003243e:	66 90                	xchg   %ax,%ax
c0032440:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032443:	83 c1 01             	add    $0x1,%ecx
c0032446:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032449:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003244d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032450:	83 fa 09             	cmp    $0x9,%edx
c0032453:	76 eb                	jbe    c0032440 <_svfprintf_r+0x4c0>
c0032455:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003245b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032461:	e9 4d fc ff ff       	jmp    c00320b3 <_svfprintf_r+0x133>
c0032466:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003246d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032474:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003247a:	8b 45 14             	mov    0x14(%ebp),%eax
c003247d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032480:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032486:	0f 85 61 02 00 00    	jne    c00326ed <_svfprintf_r+0x76d>
c003248c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032493:	0f 84 54 02 00 00    	je     c00326ed <_svfprintf_r+0x76d>
c0032499:	0f bf 08             	movswl (%eax),%ecx
c003249c:	83 c0 04             	add    $0x4,%eax
c003249f:	89 45 14             	mov    %eax,0x14(%ebp)
c00324a2:	85 c9                	test   %ecx,%ecx
c00324a4:	0f 88 53 02 00 00    	js     c00326fd <_svfprintf_r+0x77d>
c00324aa:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00324b1:	b8 01 00 00 00       	mov    $0x1,%eax
c00324b6:	e9 ae fe ff ff       	jmp    c0032369 <_svfprintf_r+0x3e9>
c00324bb:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c00324c2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00324c8:	8b 45 14             	mov    0x14(%ebp),%eax
c00324cb:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324ce:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00324d4:	0f 84 15 10 00 00    	je     c00334ef <_svfprintf_r+0x156f>
c00324da:	db 28                	fldt   (%eax)
c00324dc:	83 c0 0c             	add    $0xc,%eax
c00324df:	89 45 14             	mov    %eax,0x14(%ebp)
c00324e2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00324e8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00324ee:	dd 1c 24             	fstpl  (%esp)
c00324f1:	e8 aa 44 00 00       	call   c00369a0 <__fpclassifyd>
c00324f6:	83 f8 01             	cmp    $0x1,%eax
c00324f9:	0f 85 82 0f 00 00    	jne    c0033481 <_svfprintf_r+0x1501>
c00324ff:	d9 ee                	fldz   
c0032501:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032507:	d9 c9                	fxch   %st(1)
c0032509:	df e9                	fucomip %st(1),%st
c003250b:	dd d8                	fstp   %st(0)
c003250d:	0f 87 59 15 00 00    	ja     c0033a6c <_svfprintf_r+0x1aec>
c0032513:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003251a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032521:	ba fe 97 03 c0       	mov    $0xc00397fe,%edx
c0032526:	b8 02 98 03 c0       	mov    $0xc0039802,%eax
c003252b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032532:	00 00 00 
c0032535:	0f 4e c2             	cmovle %edx,%eax
c0032538:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003253e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032545:	ff ff ff 
c0032548:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003254f:	00 00 00 
c0032552:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032559:	00 00 00 
c003255c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032563:	00 00 00 
c0032566:	e9 ad fc ff ff       	jmp    c0032218 <_svfprintf_r+0x298>
c003256b:	8d 41 01             	lea    0x1(%ecx),%eax
c003256e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032574:	0f be 01             	movsbl (%ecx),%eax
c0032577:	83 f8 2a             	cmp    $0x2a,%eax
c003257a:	0f 84 84 18 00 00    	je     c0033e04 <_svfprintf_r+0x1e84>
c0032580:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032583:	31 c9                	xor    %ecx,%ecx
c0032585:	83 fa 09             	cmp    $0x9,%edx
c0032588:	0f 87 a8 16 00 00    	ja     c0033c36 <_svfprintf_r+0x1cb6>
c003258e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032594:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c003259a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00325a0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c00325a3:	83 c7 01             	add    $0x1,%edi
c00325a6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c00325a9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c00325ad:	8d 50 d0             	lea    -0x30(%eax),%edx
c00325b0:	83 fa 09             	cmp    $0x9,%edx
c00325b3:	76 eb                	jbe    c00325a0 <_svfprintf_r+0x620>
c00325b5:	85 c9                	test   %ecx,%ecx
c00325b7:	89 ca                	mov    %ecx,%edx
c00325b9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00325be:	0f 48 d1             	cmovs  %ecx,%edx
c00325c1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00325c7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c00325cd:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00325d3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c00325d9:	e9 d5 fa ff ff       	jmp    c00320b3 <_svfprintf_r+0x133>
c00325de:	8b 45 14             	mov    0x14(%ebp),%eax
c00325e1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00325e4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00325eb:	8b 08                	mov    (%eax),%ecx
c00325ed:	83 c0 04             	add    $0x4,%eax
c00325f0:	89 45 14             	mov    %eax,0x14(%ebp)
c00325f3:	b8 02 00 00 00       	mov    $0x2,%eax
c00325f8:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00325ff:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032606:	c7 85 18 ff ff ff 1f 	movl   $0xc003981f,-0xe8(%ebp)
c003260d:	98 03 c0 
c0032610:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032617:	00 00 00 
c003261a:	e9 41 fd ff ff       	jmp    c0032360 <_svfprintf_r+0x3e0>
c003261f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032626:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003262c:	8b 45 14             	mov    0x14(%ebp),%eax
c003262f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032632:	0f 85 87 00 00 00    	jne    c00326bf <_svfprintf_r+0x73f>
c0032638:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003263f:	74 7e                	je     c00326bf <_svfprintf_r+0x73f>
c0032641:	0f b7 08             	movzwl (%eax),%ecx
c0032644:	83 c0 04             	add    $0x4,%eax
c0032647:	89 45 14             	mov    %eax,0x14(%ebp)
c003264a:	31 c0                	xor    %eax,%eax
c003264c:	e9 0f fd ff ff       	jmp    c0032360 <_svfprintf_r+0x3e0>
c0032651:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032658:	89 c8                	mov    %ecx,%eax
c003265a:	e9 4e fa ff ff       	jmp    c00320ad <_svfprintf_r+0x12d>
c003265f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032666:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032669:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003266f:	0f 85 97 0b 00 00    	jne    c003320c <_svfprintf_r+0x128c>
c0032675:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003267c:	0f 84 8a 0b 00 00    	je     c003320c <_svfprintf_r+0x128c>
c0032682:	8b 45 14             	mov    0x14(%ebp),%eax
c0032685:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c003268c:	8b 00                	mov    (%eax),%eax
c003268e:	66 89 10             	mov    %dx,(%eax)
c0032691:	8b 45 14             	mov    0x14(%ebp),%eax
c0032694:	83 c0 04             	add    $0x4,%eax
c0032697:	89 45 14             	mov    %eax,0x14(%ebp)
c003269a:	e9 7c f9 ff ff       	jmp    c003201b <_svfprintf_r+0x9b>
c003269f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00326a6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326ad:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326b3:	8b 45 14             	mov    0x14(%ebp),%eax
c00326b6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326b9:	0f 84 79 ff ff ff    	je     c0032638 <_svfprintf_r+0x6b8>
c00326bf:	8b 08                	mov    (%eax),%ecx
c00326c1:	83 c0 04             	add    $0x4,%eax
c00326c4:	89 45 14             	mov    %eax,0x14(%ebp)
c00326c7:	31 c0                	xor    %eax,%eax
c00326c9:	e9 92 fc ff ff       	jmp    c0032360 <_svfprintf_r+0x3e0>
c00326ce:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326d5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326db:	8b 45 14             	mov    0x14(%ebp),%eax
c00326de:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326e1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00326e7:	0f 84 9f fd ff ff    	je     c003248c <_svfprintf_r+0x50c>
c00326ed:	8b 08                	mov    (%eax),%ecx
c00326ef:	83 c0 04             	add    $0x4,%eax
c00326f2:	89 45 14             	mov    %eax,0x14(%ebp)
c00326f5:	85 c9                	test   %ecx,%ecx
c00326f7:	0f 89 ad fd ff ff    	jns    c00324aa <_svfprintf_r+0x52a>
c00326fd:	f7 d9                	neg    %ecx
c00326ff:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032704:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c003270b:	b8 01 00 00 00       	mov    $0x1,%eax
c0032710:	e9 54 fc ff ff       	jmp    c0032369 <_svfprintf_r+0x3e9>
c0032715:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c003271c:	89 c8                	mov    %ecx,%eax
c003271e:	e9 8a f9 ff ff       	jmp    c00320ad <_svfprintf_r+0x12d>
c0032723:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003272a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032730:	8b 45 14             	mov    0x14(%ebp),%eax
c0032733:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032736:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003273c:	c7 85 18 ff ff ff 1f 	movl   $0xc003981f,-0xe8(%ebp)
c0032743:	98 03 c0 
c0032746:	75 71                	jne    c00327b9 <_svfprintf_r+0x839>
c0032748:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003274f:	74 68                	je     c00327b9 <_svfprintf_r+0x839>
c0032751:	0f b7 08             	movzwl (%eax),%ecx
c0032754:	83 c0 04             	add    $0x4,%eax
c0032757:	89 45 14             	mov    %eax,0x14(%ebp)
c003275a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032761:	b8 02 00 00 00       	mov    $0x2,%eax
c0032766:	0f 84 f4 fb ff ff    	je     c0032360 <_svfprintf_r+0x3e0>
c003276c:	85 c9                	test   %ecx,%ecx
c003276e:	0f 84 ec fb ff ff    	je     c0032360 <_svfprintf_r+0x3e0>
c0032774:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c003277b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032782:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032789:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c003278f:	e9 cc fb ff ff       	jmp    c0032360 <_svfprintf_r+0x3e0>
c0032794:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003279b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327a1:	8b 45 14             	mov    0x14(%ebp),%eax
c00327a4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327a7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00327ad:	c7 85 18 ff ff ff 0e 	movl   $0xc003980e,-0xe8(%ebp)
c00327b4:	98 03 c0 
c00327b7:	74 8f                	je     c0032748 <_svfprintf_r+0x7c8>
c00327b9:	8b 08                	mov    (%eax),%ecx
c00327bb:	83 c0 04             	add    $0x4,%eax
c00327be:	89 45 14             	mov    %eax,0x14(%ebp)
c00327c1:	eb 97                	jmp    c003275a <_svfprintf_r+0x7da>
c00327c3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327c9:	8b 45 14             	mov    0x14(%ebp),%eax
c00327cc:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327cf:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00327d6:	8b 00                	mov    (%eax),%eax
c00327d8:	88 45 80             	mov    %al,-0x80(%ebp)
c00327db:	8b 45 14             	mov    0x14(%ebp),%eax
c00327de:	83 c0 04             	add    $0x4,%eax
c00327e1:	89 45 14             	mov    %eax,0x14(%ebp)
c00327e4:	8d 45 80             	lea    -0x80(%ebp),%eax
c00327e7:	31 db                	xor    %ebx,%ebx
c00327e9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c00327f0:	00 00 00 
c00327f3:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c00327fa:	00 00 00 
c00327fd:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032804:	00 00 00 
c0032807:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003280e:	00 00 00 
c0032811:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032817:	e9 07 fa ff ff       	jmp    c0032223 <_svfprintf_r+0x2a3>
c003281c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032823:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003282a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032830:	8b 45 14             	mov    0x14(%ebp),%eax
c0032833:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032836:	0f 84 03 fb ff ff    	je     c003233f <_svfprintf_r+0x3bf>
c003283c:	8b 08                	mov    (%eax),%ecx
c003283e:	83 c0 04             	add    $0x4,%eax
c0032841:	89 45 14             	mov    %eax,0x14(%ebp)
c0032844:	b8 01 00 00 00       	mov    $0x1,%eax
c0032849:	e9 12 fb ff ff       	jmp    c0032360 <_svfprintf_r+0x3e0>
c003284e:	85 c0                	test   %eax,%eax
c0032850:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032856:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032859:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003285f:	0f 84 c3 f8 ff ff    	je     c0032128 <_svfprintf_r+0x1a8>
c0032865:	88 45 80             	mov    %al,-0x80(%ebp)
c0032868:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003286f:	e9 70 ff ff ff       	jmp    c00327e4 <_svfprintf_r+0x864>
c0032874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032878:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003287e:	84 db                	test   %bl,%bl
c0032880:	74 33                	je     c00328b5 <_svfprintf_r+0x935>
c0032882:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032888:	83 c1 01             	add    $0x1,%ecx
c003288b:	89 07                	mov    %eax,(%edi)
c003288d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032893:	83 c7 08             	add    $0x8,%edi
c0032896:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003289d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328a3:	83 c0 01             	add    $0x1,%eax
c00328a6:	83 f8 07             	cmp    $0x7,%eax
c00328a9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328af:	0f 8f 7b 06 00 00    	jg     c0032f30 <_svfprintf_r+0xfb0>
c00328b5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c00328bb:	85 db                	test   %ebx,%ebx
c00328bd:	74 33                	je     c00328f2 <_svfprintf_r+0x972>
c00328bf:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c00328c5:	83 c1 02             	add    $0x2,%ecx
c00328c8:	89 07                	mov    %eax,(%edi)
c00328ca:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328d0:	83 c7 08             	add    $0x8,%edi
c00328d3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c00328da:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328e0:	83 c0 01             	add    $0x1,%eax
c00328e3:	83 f8 07             	cmp    $0x7,%eax
c00328e6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328ec:	0f 8f 06 06 00 00    	jg     c0032ef8 <_svfprintf_r+0xf78>
c00328f2:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c00328f9:	00 00 00 
c00328fc:	0f 84 c6 03 00 00    	je     c0032cc8 <_svfprintf_r+0xd48>
c0032902:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0032908:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c003290e:	85 f6                	test   %esi,%esi
c0032910:	0f 8e d2 00 00 00    	jle    c00329e8 <_svfprintf_r+0xa68>
c0032916:	83 fe 10             	cmp    $0x10,%esi
c0032919:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003291f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032925:	7f 11                	jg     c0032938 <_svfprintf_r+0x9b8>
c0032927:	eb 6b                	jmp    c0032994 <_svfprintf_r+0xa14>
c0032929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032930:	83 ee 10             	sub    $0x10,%esi
c0032933:	83 fe 10             	cmp    $0x10,%esi
c0032936:	7e 5c                	jle    c0032994 <_svfprintf_r+0xa14>
c0032938:	83 c0 01             	add    $0x1,%eax
c003293b:	83 c1 10             	add    $0x10,%ecx
c003293e:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0032944:	83 c7 08             	add    $0x8,%edi
c0032947:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003294e:	83 f8 07             	cmp    $0x7,%eax
c0032951:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032957:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003295d:	7e d1                	jle    c0032930 <_svfprintf_r+0x9b0>
c003295f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032962:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032966:	89 44 24 04          	mov    %eax,0x4(%esp)
c003296a:	8b 45 08             	mov    0x8(%ebp),%eax
c003296d:	89 04 24             	mov    %eax,(%esp)
c0032970:	e8 8b 41 00 00       	call   c0036b00 <__ssprint_r>
c0032975:	85 c0                	test   %eax,%eax
c0032977:	0f 85 d3 f7 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c003297d:	83 ee 10             	sub    $0x10,%esi
c0032980:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032986:	83 fe 10             	cmp    $0x10,%esi
c0032989:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003298f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032992:	7f a4                	jg     c0032938 <_svfprintf_r+0x9b8>
c0032994:	83 c0 01             	add    $0x1,%eax
c0032997:	01 f1                	add    %esi,%ecx
c0032999:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c003299f:	83 c7 08             	add    $0x8,%edi
c00329a2:	89 77 fc             	mov    %esi,-0x4(%edi)
c00329a5:	83 f8 07             	cmp    $0x7,%eax
c00329a8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329ae:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329b4:	7e 32                	jle    c00329e8 <_svfprintf_r+0xa68>
c00329b6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00329bc:	89 44 24 08          	mov    %eax,0x8(%esp)
c00329c0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00329c3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00329c7:	8b 45 08             	mov    0x8(%ebp),%eax
c00329ca:	89 04 24             	mov    %eax,(%esp)
c00329cd:	e8 2e 41 00 00       	call   c0036b00 <__ssprint_r>
c00329d2:	85 c0                	test   %eax,%eax
c00329d4:	0f 85 76 f7 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c00329da:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00329e0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329e3:	90                   	nop
c00329e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00329e8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c00329ef:	01 00 00 
c00329f2:	0f 85 50 01 00 00    	jne    c0032b48 <_svfprintf_r+0xbc8>
c00329f8:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00329fe:	89 07                	mov    %eax,(%edi)
c0032a00:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032a06:	01 c1                	add    %eax,%ecx
c0032a08:	89 47 04             	mov    %eax,0x4(%edi)
c0032a0b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a11:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a17:	83 c0 01             	add    $0x1,%eax
c0032a1a:	83 f8 07             	cmp    $0x7,%eax
c0032a1d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a23:	0f 8f 6a 04 00 00    	jg     c0032e93 <_svfprintf_r+0xf13>
c0032a29:	83 c7 08             	add    $0x8,%edi
c0032a2c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032a33:	0f 84 d7 00 00 00    	je     c0032b10 <_svfprintf_r+0xb90>
c0032a39:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a3f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032a45:	85 f6                	test   %esi,%esi
c0032a47:	0f 8e c3 00 00 00    	jle    c0032b10 <_svfprintf_r+0xb90>
c0032a4d:	83 fe 10             	cmp    $0x10,%esi
c0032a50:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a56:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032a5c:	7f 0a                	jg     c0032a68 <_svfprintf_r+0xae8>
c0032a5e:	eb 64                	jmp    c0032ac4 <_svfprintf_r+0xb44>
c0032a60:	83 ee 10             	sub    $0x10,%esi
c0032a63:	83 fe 10             	cmp    $0x10,%esi
c0032a66:	7e 5c                	jle    c0032ac4 <_svfprintf_r+0xb44>
c0032a68:	83 c0 01             	add    $0x1,%eax
c0032a6b:	83 c1 10             	add    $0x10,%ecx
c0032a6e:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c0032a74:	83 c7 08             	add    $0x8,%edi
c0032a77:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032a7e:	83 f8 07             	cmp    $0x7,%eax
c0032a81:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a87:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a8d:	7e d1                	jle    c0032a60 <_svfprintf_r+0xae0>
c0032a8f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a92:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032a96:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a9a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a9d:	89 04 24             	mov    %eax,(%esp)
c0032aa0:	e8 5b 40 00 00       	call   c0036b00 <__ssprint_r>
c0032aa5:	85 c0                	test   %eax,%eax
c0032aa7:	0f 85 a3 f6 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0032aad:	83 ee 10             	sub    $0x10,%esi
c0032ab0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ab6:	83 fe 10             	cmp    $0x10,%esi
c0032ab9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032abf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ac2:	7f a4                	jg     c0032a68 <_svfprintf_r+0xae8>
c0032ac4:	83 c0 01             	add    $0x1,%eax
c0032ac7:	01 f1                	add    %esi,%ecx
c0032ac9:	83 f8 07             	cmp    $0x7,%eax
c0032acc:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c0032ad2:	89 77 04             	mov    %esi,0x4(%edi)
c0032ad5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032adb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ae1:	7e 2d                	jle    c0032b10 <_svfprintf_r+0xb90>
c0032ae3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ae9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032aed:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032af0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032af4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032af7:	89 04 24             	mov    %eax,(%esp)
c0032afa:	e8 01 40 00 00       	call   c0036b00 <__ssprint_r>
c0032aff:	85 c0                	test   %eax,%eax
c0032b01:	0f 85 49 f6 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0032b07:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b0d:	8d 76 00             	lea    0x0(%esi),%esi
c0032b10:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032b16:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032b1c:	39 c2                	cmp    %eax,%edx
c0032b1e:	0f 4d c2             	cmovge %edx,%eax
c0032b21:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032b27:	85 c9                	test   %ecx,%ecx
c0032b29:	0f 85 99 03 00 00    	jne    c0032ec8 <_svfprintf_r+0xf48>
c0032b2f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032b36:	00 00 00 
c0032b39:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b3c:	e9 da f4 ff ff       	jmp    c003201b <_svfprintf_r+0x9b>
c0032b41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032b48:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032b4f:	0f 8e 5b 02 00 00    	jle    c0032db0 <_svfprintf_r+0xe30>
c0032b55:	d9 ee                	fldz   
c0032b57:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032b5d:	df e9                	fucomip %st(1),%st
c0032b5f:	dd d8                	fstp   %st(0)
c0032b61:	0f 8a 59 04 00 00    	jp     c0032fc0 <_svfprintf_r+0x1040>
c0032b67:	0f 85 53 04 00 00    	jne    c0032fc0 <_svfprintf_r+0x1040>
c0032b6d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b73:	83 c1 01             	add    $0x1,%ecx
c0032b76:	83 c7 08             	add    $0x8,%edi
c0032b79:	c7 47 f8 37 98 03 c0 	movl   $0xc0039837,-0x8(%edi)
c0032b80:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032b87:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b8d:	83 c0 01             	add    $0x1,%eax
c0032b90:	83 f8 07             	cmp    $0x7,%eax
c0032b93:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b99:	0f 8f 63 09 00 00    	jg     c0033502 <_svfprintf_r+0x1582>
c0032b9f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032ba5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032bab:	7c 0d                	jl     c0032bba <_svfprintf_r+0xc3a>
c0032bad:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032bb4:	0f 84 72 fe ff ff    	je     c0032a2c <_svfprintf_r+0xaac>
c0032bba:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032bc0:	83 c7 08             	add    $0x8,%edi
c0032bc3:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032bc6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032bcc:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032bcf:	01 c1                	add    %eax,%ecx
c0032bd1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032bd7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bdd:	83 c0 01             	add    $0x1,%eax
c0032be0:	83 f8 07             	cmp    $0x7,%eax
c0032be3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032be9:	0f 8f dc 0b 00 00    	jg     c00337cb <_svfprintf_r+0x184b>
c0032bef:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032bf5:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032bf8:	85 f6                	test   %esi,%esi
c0032bfa:	0f 8e 2c fe ff ff    	jle    c0032a2c <_svfprintf_r+0xaac>
c0032c00:	83 fe 10             	cmp    $0x10,%esi
c0032c03:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c09:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032c0f:	7f 13                	jg     c0032c24 <_svfprintf_r+0xca4>
c0032c11:	e9 e6 05 00 00       	jmp    c00331fc <_svfprintf_r+0x127c>
c0032c16:	66 90                	xchg   %ax,%ax
c0032c18:	83 ee 10             	sub    $0x10,%esi
c0032c1b:	83 fe 10             	cmp    $0x10,%esi
c0032c1e:	0f 8e d8 05 00 00    	jle    c00331fc <_svfprintf_r+0x127c>
c0032c24:	83 c0 01             	add    $0x1,%eax
c0032c27:	83 c1 10             	add    $0x10,%ecx
c0032c2a:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0032c30:	83 c7 08             	add    $0x8,%edi
c0032c33:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032c3a:	83 f8 07             	cmp    $0x7,%eax
c0032c3d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c43:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c49:	7e cd                	jle    c0032c18 <_svfprintf_r+0xc98>
c0032c4b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c4e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032c52:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032c56:	8b 45 08             	mov    0x8(%ebp),%eax
c0032c59:	89 04 24             	mov    %eax,(%esp)
c0032c5c:	e8 9f 3e 00 00       	call   c0036b00 <__ssprint_r>
c0032c61:	85 c0                	test   %eax,%eax
c0032c63:	0f 85 e7 f4 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0032c69:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032c6f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032c72:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c78:	eb 9e                	jmp    c0032c18 <_svfprintf_r+0xc98>
c0032c7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032c80:	84 c0                	test   %al,%al
c0032c82:	75 2c                	jne    c0032cb0 <_svfprintf_r+0xd30>
c0032c84:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032c8b:	74 23                	je     c0032cb0 <_svfprintf_r+0xd30>
c0032c8d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032c93:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032c97:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032c9d:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032ca0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032ca6:	e9 2d f7 ff ff       	jmp    c00323d8 <_svfprintf_r+0x458>
c0032cab:	90                   	nop
c0032cac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032cb0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032cb3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032cba:	00 00 00 
c0032cbd:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032cc3:	e9 10 f7 ff ff       	jmp    c00323d8 <_svfprintf_r+0x458>
c0032cc8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032cce:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032cd4:	85 f6                	test   %esi,%esi
c0032cd6:	0f 8e 26 fc ff ff    	jle    c0032902 <_svfprintf_r+0x982>
c0032cdc:	83 fe 10             	cmp    $0x10,%esi
c0032cdf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ce5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032ceb:	7f 0b                	jg     c0032cf8 <_svfprintf_r+0xd78>
c0032ced:	eb 65                	jmp    c0032d54 <_svfprintf_r+0xdd4>
c0032cef:	90                   	nop
c0032cf0:	83 ee 10             	sub    $0x10,%esi
c0032cf3:	83 fe 10             	cmp    $0x10,%esi
c0032cf6:	7e 5c                	jle    c0032d54 <_svfprintf_r+0xdd4>
c0032cf8:	83 c0 01             	add    $0x1,%eax
c0032cfb:	83 c1 10             	add    $0x10,%ecx
c0032cfe:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0032d04:	83 c7 08             	add    $0x8,%edi
c0032d07:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032d0e:	83 f8 07             	cmp    $0x7,%eax
c0032d11:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d17:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d1d:	7e d1                	jle    c0032cf0 <_svfprintf_r+0xd70>
c0032d1f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d22:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d26:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d2a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d2d:	89 04 24             	mov    %eax,(%esp)
c0032d30:	e8 cb 3d 00 00       	call   c0036b00 <__ssprint_r>
c0032d35:	85 c0                	test   %eax,%eax
c0032d37:	0f 85 13 f4 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0032d3d:	83 ee 10             	sub    $0x10,%esi
c0032d40:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d46:	83 fe 10             	cmp    $0x10,%esi
c0032d49:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d4f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d52:	7f a4                	jg     c0032cf8 <_svfprintf_r+0xd78>
c0032d54:	83 c0 01             	add    $0x1,%eax
c0032d57:	01 f1                	add    %esi,%ecx
c0032d59:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0032d5f:	83 c7 08             	add    $0x8,%edi
c0032d62:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032d65:	83 f8 07             	cmp    $0x7,%eax
c0032d68:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d6e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d74:	0f 8e 88 fb ff ff    	jle    c0032902 <_svfprintf_r+0x982>
c0032d7a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032d80:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032d84:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d87:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d8e:	89 04 24             	mov    %eax,(%esp)
c0032d91:	e8 6a 3d 00 00       	call   c0036b00 <__ssprint_r>
c0032d96:	85 c0                	test   %eax,%eax
c0032d98:	0f 85 b2 f3 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0032d9e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032da4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032da7:	e9 56 fb ff ff       	jmp    c0032902 <_svfprintf_r+0x982>
c0032dac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032db0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032db7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032dbd:	0f 8e df 05 00 00    	jle    c00333a2 <_svfprintf_r+0x1422>
c0032dc3:	89 07                	mov    %eax,(%edi)
c0032dc5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032dcb:	8d 51 01             	lea    0x1(%ecx),%edx
c0032dce:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032dd5:	83 c7 08             	add    $0x8,%edi
c0032dd8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032dde:	83 c0 01             	add    $0x1,%eax
c0032de1:	83 f8 07             	cmp    $0x7,%eax
c0032de4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dea:	0f 8f 59 06 00 00    	jg     c0033449 <_svfprintf_r+0x14c9>
c0032df0:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032df6:	83 c0 01             	add    $0x1,%eax
c0032df9:	83 c7 08             	add    $0x8,%edi
c0032dfc:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e02:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032e05:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032e0b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032e0e:	01 da                	add    %ebx,%edx
c0032e10:	83 f8 07             	cmp    $0x7,%eax
c0032e13:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e19:	0f 8f f2 05 00 00    	jg     c0033411 <_svfprintf_r+0x1491>
c0032e1f:	d9 ee                	fldz   
c0032e21:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032e27:	df e9                	fucomip %st(1),%st
c0032e29:	dd d8                	fstp   %st(0)
c0032e2b:	7a 06                	jp     c0032e33 <_svfprintf_r+0xeb3>
c0032e2d:	0f 84 33 03 00 00    	je     c0033166 <_svfprintf_r+0x11e6>
c0032e33:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032e39:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032e3f:	83 c1 01             	add    $0x1,%ecx
c0032e42:	89 0f                	mov    %ecx,(%edi)
c0032e44:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032e47:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032e4a:	01 ca                	add    %ecx,%edx
c0032e4c:	83 c0 01             	add    $0x1,%eax
c0032e4f:	83 f8 07             	cmp    $0x7,%eax
c0032e52:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e58:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e5e:	0f 8f 75 05 00 00    	jg     c00333d9 <_svfprintf_r+0x1459>
c0032e64:	83 c7 08             	add    $0x8,%edi
c0032e67:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032e6d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032e73:	89 0f                	mov    %ecx,(%edi)
c0032e75:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032e78:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032e7b:	83 c0 01             	add    $0x1,%eax
c0032e7e:	83 f8 07             	cmp    $0x7,%eax
c0032e81:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e87:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e8d:	0f 8e 96 fb ff ff    	jle    c0032a29 <_svfprintf_r+0xaa9>
c0032e93:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032e99:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032e9d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ea0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ea4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ea7:	89 04 24             	mov    %eax,(%esp)
c0032eaa:	e8 51 3c 00 00       	call   c0036b00 <__ssprint_r>
c0032eaf:	85 c0                	test   %eax,%eax
c0032eb1:	0f 85 99 f2 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0032eb7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ebd:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ec0:	e9 67 fb ff ff       	jmp    c0032a2c <_svfprintf_r+0xaac>
c0032ec5:	8d 76 00             	lea    0x0(%esi),%esi
c0032ec8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ece:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ed2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ed5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ed9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032edc:	89 04 24             	mov    %eax,(%esp)
c0032edf:	e8 1c 3c 00 00       	call   c0036b00 <__ssprint_r>
c0032ee4:	85 c0                	test   %eax,%eax
c0032ee6:	0f 84 43 fc ff ff    	je     c0032b2f <_svfprintf_r+0xbaf>
c0032eec:	e9 5f f2 ff ff       	jmp    c0032150 <_svfprintf_r+0x1d0>
c0032ef1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032ef8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032efe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f02:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f05:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f09:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f0c:	89 04 24             	mov    %eax,(%esp)
c0032f0f:	e8 ec 3b 00 00       	call   c0036b00 <__ssprint_r>
c0032f14:	85 c0                	test   %eax,%eax
c0032f16:	0f 85 34 f2 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0032f1c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f22:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f25:	e9 c8 f9 ff ff       	jmp    c00328f2 <_svfprintf_r+0x972>
c0032f2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f30:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f36:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f3a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f3d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f41:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f44:	89 04 24             	mov    %eax,(%esp)
c0032f47:	e8 b4 3b 00 00       	call   c0036b00 <__ssprint_r>
c0032f4c:	85 c0                	test   %eax,%eax
c0032f4e:	0f 85 fc f1 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0032f54:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f5a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f5d:	e9 53 f9 ff ff       	jmp    c00328b5 <_svfprintf_r+0x935>
c0032f62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f68:	89 c2                	mov    %eax,%edx
c0032f6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f70:	89 c8                	mov    %ecx,%eax
c0032f72:	83 ea 01             	sub    $0x1,%edx
c0032f75:	83 e0 07             	and    $0x7,%eax
c0032f78:	c1 e9 03             	shr    $0x3,%ecx
c0032f7b:	83 c0 30             	add    $0x30,%eax
c0032f7e:	85 c9                	test   %ecx,%ecx
c0032f80:	88 02                	mov    %al,(%edx)
c0032f82:	75 ec                	jne    c0032f70 <_svfprintf_r+0xff0>
c0032f84:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032f8b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0032f91:	0f 84 5b 01 00 00    	je     c00330f2 <_svfprintf_r+0x1172>
c0032f97:	3c 30                	cmp    $0x30,%al
c0032f99:	74 0b                	je     c0032fa6 <_svfprintf_r+0x1026>
c0032f9b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0032fa2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0032fa6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032fa9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0032faf:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032fb5:	e9 1e f4 ff ff       	jmp    c00323d8 <_svfprintf_r+0x458>
c0032fba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fc0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0032fc6:	85 db                	test   %ebx,%ebx
c0032fc8:	0f 8e 66 05 00 00    	jle    c0033534 <_svfprintf_r+0x15b4>
c0032fce:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0032fd4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032fda:	01 d0                	add    %edx,%eax
c0032fdc:	89 c3                	mov    %eax,%ebx
c0032fde:	29 d3                	sub    %edx,%ebx
c0032fe0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0032fe6:	89 d0                	mov    %edx,%eax
c0032fe8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0032fee:	39 d3                	cmp    %edx,%ebx
c0032ff0:	0f 4f da             	cmovg  %edx,%ebx
c0032ff3:	85 db                	test   %ebx,%ebx
c0032ff5:	7e 28                	jle    c003301f <_svfprintf_r+0x109f>
c0032ff7:	89 07                	mov    %eax,(%edi)
c0032ff9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032fff:	01 d9                	add    %ebx,%ecx
c0033001:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033004:	83 c7 08             	add    $0x8,%edi
c0033007:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003300d:	83 c0 01             	add    $0x1,%eax
c0033010:	83 f8 07             	cmp    $0x7,%eax
c0033013:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033019:	0f 8f 58 09 00 00    	jg     c0033977 <_svfprintf_r+0x19f7>
c003301f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033025:	31 c0                	xor    %eax,%eax
c0033027:	85 db                	test   %ebx,%ebx
c0033029:	0f 49 c3             	cmovns %ebx,%eax
c003302c:	29 c6                	sub    %eax,%esi
c003302e:	85 f6                	test   %esi,%esi
c0033030:	0f 8e 40 02 00 00    	jle    c0033276 <_svfprintf_r+0x12f6>
c0033036:	83 fe 10             	cmp    $0x10,%esi
c0033039:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003303f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033045:	7f 15                	jg     c003305c <_svfprintf_r+0x10dc>
c0033047:	e9 db 01 00 00       	jmp    c0033227 <_svfprintf_r+0x12a7>
c003304c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033050:	83 ee 10             	sub    $0x10,%esi
c0033053:	83 fe 10             	cmp    $0x10,%esi
c0033056:	0f 8e cb 01 00 00    	jle    c0033227 <_svfprintf_r+0x12a7>
c003305c:	83 c0 01             	add    $0x1,%eax
c003305f:	83 c1 10             	add    $0x10,%ecx
c0033062:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033068:	83 c7 08             	add    $0x8,%edi
c003306b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033072:	83 f8 07             	cmp    $0x7,%eax
c0033075:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003307b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033081:	7e cd                	jle    c0033050 <_svfprintf_r+0x10d0>
c0033083:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033086:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003308a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003308e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033091:	89 04 24             	mov    %eax,(%esp)
c0033094:	e8 67 3a 00 00       	call   c0036b00 <__ssprint_r>
c0033099:	85 c0                	test   %eax,%eax
c003309b:	0f 85 af f0 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c00330a1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00330a7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00330aa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330b0:	eb 9e                	jmp    c0033050 <_svfprintf_r+0x10d0>
c00330b2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00330b5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c00330ba:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00330c0:	89 c7                	mov    %eax,%edi
c00330c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00330c8:	89 c8                	mov    %ecx,%eax
c00330ca:	83 ef 01             	sub    $0x1,%edi
c00330cd:	f7 e6                	mul    %esi
c00330cf:	c1 ea 03             	shr    $0x3,%edx
c00330d2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00330d5:	01 c0                	add    %eax,%eax
c00330d7:	29 c1                	sub    %eax,%ecx
c00330d9:	83 c1 30             	add    $0x30,%ecx
c00330dc:	85 d2                	test   %edx,%edx
c00330de:	88 0f                	mov    %cl,(%edi)
c00330e0:	89 d1                	mov    %edx,%ecx
c00330e2:	75 e4                	jne    c00330c8 <_svfprintf_r+0x1148>
c00330e4:	89 fa                	mov    %edi,%edx
c00330e6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c00330ec:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00330f2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00330f5:	29 d0                	sub    %edx,%eax
c00330f7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00330fd:	e9 d6 f2 ff ff       	jmp    c00323d8 <_svfprintf_r+0x458>
c0033102:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033108:	83 f9 09             	cmp    $0x9,%ecx
c003310b:	77 a5                	ja     c00330b2 <_svfprintf_r+0x1132>
c003310d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033113:	83 c1 30             	add    $0x30,%ecx
c0033116:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033119:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003311f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033122:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033128:	e9 ab f2 ff ff       	jmp    c00323d8 <_svfprintf_r+0x458>
c003312d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033133:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033137:	8b 45 0c             	mov    0xc(%ebp),%eax
c003313a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003313e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033141:	89 04 24             	mov    %eax,(%esp)
c0033144:	e8 b7 39 00 00       	call   c0036b00 <__ssprint_r>
c0033149:	85 c0                	test   %eax,%eax
c003314b:	0f 85 ff ef ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0033151:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033158:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003315b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033161:	e9 18 f7 ff ff       	jmp    c003287e <_svfprintf_r+0x8fe>
c0033166:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003316c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003316f:	85 f6                	test   %esi,%esi
c0033171:	0f 8e f0 fc ff ff    	jle    c0032e67 <_svfprintf_r+0xee7>
c0033177:	83 fe 10             	cmp    $0x10,%esi
c003317a:	7e 70                	jle    c00331ec <_svfprintf_r+0x126c>
c003317c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033182:	eb 0c                	jmp    c0033190 <_svfprintf_r+0x1210>
c0033184:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033188:	83 ee 10             	sub    $0x10,%esi
c003318b:	83 fe 10             	cmp    $0x10,%esi
c003318e:	7e 5c                	jle    c00331ec <_svfprintf_r+0x126c>
c0033190:	83 c0 01             	add    $0x1,%eax
c0033193:	83 c2 10             	add    $0x10,%edx
c0033196:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c003319c:	83 c7 08             	add    $0x8,%edi
c003319f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00331a6:	83 f8 07             	cmp    $0x7,%eax
c00331a9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00331af:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00331b5:	7e d1                	jle    c0033188 <_svfprintf_r+0x1208>
c00331b7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00331ba:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00331be:	89 44 24 04          	mov    %eax,0x4(%esp)
c00331c2:	8b 45 08             	mov    0x8(%ebp),%eax
c00331c5:	89 04 24             	mov    %eax,(%esp)
c00331c8:	e8 33 39 00 00       	call   c0036b00 <__ssprint_r>
c00331cd:	85 c0                	test   %eax,%eax
c00331cf:	0f 85 7b ef ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c00331d5:	83 ee 10             	sub    $0x10,%esi
c00331d8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00331de:	83 fe 10             	cmp    $0x10,%esi
c00331e1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331e7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00331ea:	7f a4                	jg     c0033190 <_svfprintf_r+0x1210>
c00331ec:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c00331f2:	01 f2                	add    %esi,%edx
c00331f4:	89 77 04             	mov    %esi,0x4(%edi)
c00331f7:	e9 50 fc ff ff       	jmp    c0032e4c <_svfprintf_r+0xecc>
c00331fc:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033202:	01 f1                	add    %esi,%ecx
c0033204:	89 77 04             	mov    %esi,0x4(%edi)
c0033207:	e9 6f fc ff ff       	jmp    c0032e7b <_svfprintf_r+0xefb>
c003320c:	8b 45 14             	mov    0x14(%ebp),%eax
c003320f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033215:	8b 00                	mov    (%eax),%eax
c0033217:	89 10                	mov    %edx,(%eax)
c0033219:	8b 45 14             	mov    0x14(%ebp),%eax
c003321c:	83 c0 04             	add    $0x4,%eax
c003321f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033222:	e9 f4 ed ff ff       	jmp    c003201b <_svfprintf_r+0x9b>
c0033227:	83 c0 01             	add    $0x1,%eax
c003322a:	01 f1                	add    %esi,%ecx
c003322c:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033232:	83 c7 08             	add    $0x8,%edi
c0033235:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033238:	83 f8 07             	cmp    $0x7,%eax
c003323b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033241:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033247:	7e 2d                	jle    c0033276 <_svfprintf_r+0x12f6>
c0033249:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003324f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033253:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033256:	89 44 24 04          	mov    %eax,0x4(%esp)
c003325a:	8b 45 08             	mov    0x8(%ebp),%eax
c003325d:	89 04 24             	mov    %eax,(%esp)
c0033260:	e8 9b 38 00 00       	call   c0036b00 <__ssprint_r>
c0033265:	85 c0                	test   %eax,%eax
c0033267:	0f 85 e3 ee ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c003326d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033273:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033276:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003327c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033282:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033288:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c003328e:	89 c6                	mov    %eax,%esi
c0033290:	7c 0d                	jl     c003329f <_svfprintf_r+0x131f>
c0033292:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033299:	0f 84 5e 05 00 00    	je     c00337fd <_svfprintf_r+0x187d>
c003329f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00332a5:	89 07                	mov    %eax,(%edi)
c00332a7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00332ad:	01 c1                	add    %eax,%ecx
c00332af:	89 47 04             	mov    %eax,0x4(%edi)
c00332b2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332b8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332be:	83 c0 01             	add    $0x1,%eax
c00332c1:	83 f8 07             	cmp    $0x7,%eax
c00332c4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332ca:	0f 8f d9 06 00 00    	jg     c00339a9 <_svfprintf_r+0x1a29>
c00332d0:	83 c7 08             	add    $0x8,%edi
c00332d3:	89 d0                	mov    %edx,%eax
c00332d5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c00332db:	89 f2                	mov    %esi,%edx
c00332dd:	29 f3                	sub    %esi,%ebx
c00332df:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00332e5:	29 c6                	sub    %eax,%esi
c00332e7:	39 de                	cmp    %ebx,%esi
c00332e9:	0f 4e de             	cmovle %esi,%ebx
c00332ec:	85 db                	test   %ebx,%ebx
c00332ee:	7e 29                	jle    c0033319 <_svfprintf_r+0x1399>
c00332f0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332f6:	01 d9                	add    %ebx,%ecx
c00332f8:	83 c7 08             	add    $0x8,%edi
c00332fb:	89 57 f8             	mov    %edx,-0x8(%edi)
c00332fe:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033301:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033307:	83 c0 01             	add    $0x1,%eax
c003330a:	83 f8 07             	cmp    $0x7,%eax
c003330d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033313:	0f 8f c8 06 00 00    	jg     c00339e1 <_svfprintf_r+0x1a61>
c0033319:	31 c0                	xor    %eax,%eax
c003331b:	85 db                	test   %ebx,%ebx
c003331d:	0f 49 c3             	cmovns %ebx,%eax
c0033320:	29 c6                	sub    %eax,%esi
c0033322:	85 f6                	test   %esi,%esi
c0033324:	0f 8e 02 f7 ff ff    	jle    c0032a2c <_svfprintf_r+0xaac>
c003332a:	83 fe 10             	cmp    $0x10,%esi
c003332d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033333:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033339:	7f 11                	jg     c003334c <_svfprintf_r+0x13cc>
c003333b:	e9 bc fe ff ff       	jmp    c00331fc <_svfprintf_r+0x127c>
c0033340:	83 ee 10             	sub    $0x10,%esi
c0033343:	83 fe 10             	cmp    $0x10,%esi
c0033346:	0f 8e b0 fe ff ff    	jle    c00331fc <_svfprintf_r+0x127c>
c003334c:	83 c0 01             	add    $0x1,%eax
c003334f:	83 c1 10             	add    $0x10,%ecx
c0033352:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033358:	83 c7 08             	add    $0x8,%edi
c003335b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033362:	83 f8 07             	cmp    $0x7,%eax
c0033365:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003336b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033371:	7e cd                	jle    c0033340 <_svfprintf_r+0x13c0>
c0033373:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033376:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003337a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003337e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033381:	89 04 24             	mov    %eax,(%esp)
c0033384:	e8 77 37 00 00       	call   c0036b00 <__ssprint_r>
c0033389:	85 c0                	test   %eax,%eax
c003338b:	0f 85 bf ed ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0033391:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033397:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003339a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333a0:	eb 9e                	jmp    c0033340 <_svfprintf_r+0x13c0>
c00333a2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00333a9:	0f 85 14 fa ff ff    	jne    c0032dc3 <_svfprintf_r+0xe43>
c00333af:	89 07                	mov    %eax,(%edi)
c00333b1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333b7:	8d 51 01             	lea    0x1(%ecx),%edx
c00333ba:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c00333c1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00333c7:	83 c0 01             	add    $0x1,%eax
c00333ca:	83 f8 07             	cmp    $0x7,%eax
c00333cd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333d3:	0f 8e 8b fa ff ff    	jle    c0032e64 <_svfprintf_r+0xee4>
c00333d9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00333df:	89 44 24 08          	mov    %eax,0x8(%esp)
c00333e3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333e6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333ea:	8b 45 08             	mov    0x8(%ebp),%eax
c00333ed:	89 04 24             	mov    %eax,(%esp)
c00333f0:	e8 0b 37 00 00       	call   c0036b00 <__ssprint_r>
c00333f5:	85 c0                	test   %eax,%eax
c00333f7:	0f 85 53 ed ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c00333fd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033403:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033406:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003340c:	e9 56 fa ff ff       	jmp    c0032e67 <_svfprintf_r+0xee7>
c0033411:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033417:	89 44 24 08          	mov    %eax,0x8(%esp)
c003341b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003341e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033422:	8b 45 08             	mov    0x8(%ebp),%eax
c0033425:	89 04 24             	mov    %eax,(%esp)
c0033428:	e8 d3 36 00 00       	call   c0036b00 <__ssprint_r>
c003342d:	85 c0                	test   %eax,%eax
c003342f:	0f 85 1b ed ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0033435:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003343b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003343e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033444:	e9 d6 f9 ff ff       	jmp    c0032e1f <_svfprintf_r+0xe9f>
c0033449:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003344f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033453:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033456:	89 44 24 04          	mov    %eax,0x4(%esp)
c003345a:	8b 45 08             	mov    0x8(%ebp),%eax
c003345d:	89 04 24             	mov    %eax,(%esp)
c0033460:	e8 9b 36 00 00       	call   c0036b00 <__ssprint_r>
c0033465:	85 c0                	test   %eax,%eax
c0033467:	0f 85 e3 ec ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c003346d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033473:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033476:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003347c:	e9 6f f9 ff ff       	jmp    c0032df0 <_svfprintf_r+0xe70>
c0033481:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033487:	dd 1c 24             	fstpl  (%esp)
c003348a:	e8 11 35 00 00       	call   c00369a0 <__fpclassifyd>
c003348f:	85 c0                	test   %eax,%eax
c0033491:	0f 85 a3 01 00 00    	jne    c003363a <_svfprintf_r+0x16ba>
c0033497:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c003349e:	ba 06 98 03 c0       	mov    $0xc0039806,%edx
c00334a3:	b8 0a 98 03 c0       	mov    $0xc003980a,%eax
c00334a8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00334af:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00334b6:	00 00 00 
c00334b9:	0f 4e c2             	cmovle %edx,%eax
c00334bc:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00334c2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c00334c9:	ff ff ff 
c00334cc:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00334d3:	00 00 00 
c00334d6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00334dd:	00 00 00 
c00334e0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00334e7:	00 00 00 
c00334ea:	e9 29 ed ff ff       	jmp    c0032218 <_svfprintf_r+0x298>
c00334ef:	dd 00                	fldl   (%eax)
c00334f1:	83 c0 08             	add    $0x8,%eax
c00334f4:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00334fa:	89 45 14             	mov    %eax,0x14(%ebp)
c00334fd:	e9 e6 ef ff ff       	jmp    c00324e8 <_svfprintf_r+0x568>
c0033502:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033508:	89 44 24 08          	mov    %eax,0x8(%esp)
c003350c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003350f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033513:	8b 45 08             	mov    0x8(%ebp),%eax
c0033516:	89 04 24             	mov    %eax,(%esp)
c0033519:	e8 e2 35 00 00       	call   c0036b00 <__ssprint_r>
c003351e:	85 c0                	test   %eax,%eax
c0033520:	0f 85 2a ec ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0033526:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003352c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003352f:	e9 6b f6 ff ff       	jmp    c0032b9f <_svfprintf_r+0xc1f>
c0033534:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003353a:	83 c1 01             	add    $0x1,%ecx
c003353d:	83 c7 08             	add    $0x8,%edi
c0033540:	c7 47 f8 37 98 03 c0 	movl   $0xc0039837,-0x8(%edi)
c0033547:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003354e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033554:	83 c0 01             	add    $0x1,%eax
c0033557:	83 f8 07             	cmp    $0x7,%eax
c003355a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033560:	0f 8f ef 02 00 00    	jg     c0033855 <_svfprintf_r+0x18d5>
c0033566:	85 db                	test   %ebx,%ebx
c0033568:	75 17                	jne    c0033581 <_svfprintf_r+0x1601>
c003356a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033570:	85 d2                	test   %edx,%edx
c0033572:	75 0d                	jne    c0033581 <_svfprintf_r+0x1601>
c0033574:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003357b:	0f 84 ab f4 ff ff    	je     c0032a2c <_svfprintf_r+0xaac>
c0033581:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033587:	83 c7 08             	add    $0x8,%edi
c003358a:	89 47 f8             	mov    %eax,-0x8(%edi)
c003358d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033593:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033596:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033599:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003359f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335a5:	83 c0 01             	add    $0x1,%eax
c00335a8:	83 f8 07             	cmp    $0x7,%eax
c00335ab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335b1:	0f 8f 60 03 00 00    	jg     c0033917 <_svfprintf_r+0x1997>
c00335b7:	f7 db                	neg    %ebx
c00335b9:	85 db                	test   %ebx,%ebx
c00335bb:	0f 8e 21 03 00 00    	jle    c00338e2 <_svfprintf_r+0x1962>
c00335c1:	83 fb 10             	cmp    $0x10,%ebx
c00335c4:	0f 8e c3 02 00 00    	jle    c003388d <_svfprintf_r+0x190d>
c00335ca:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c00335d0:	eb 12                	jmp    c00335e4 <_svfprintf_r+0x1664>
c00335d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00335d8:	83 eb 10             	sub    $0x10,%ebx
c00335db:	83 fb 10             	cmp    $0x10,%ebx
c00335de:	0f 8e a9 02 00 00    	jle    c003388d <_svfprintf_r+0x190d>
c00335e4:	83 c0 01             	add    $0x1,%eax
c00335e7:	83 c2 10             	add    $0x10,%edx
c00335ea:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c00335f0:	83 c7 08             	add    $0x8,%edi
c00335f3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00335fa:	83 f8 07             	cmp    $0x7,%eax
c00335fd:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033603:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033609:	7e cd                	jle    c00335d8 <_svfprintf_r+0x1658>
c003360b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003360e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033612:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033616:	8b 45 08             	mov    0x8(%ebp),%eax
c0033619:	89 04 24             	mov    %eax,(%esp)
c003361c:	e8 df 34 00 00       	call   c0036b00 <__ssprint_r>
c0033621:	85 c0                	test   %eax,%eax
c0033623:	0f 85 27 eb ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0033629:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003362f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033632:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033638:	eb 9e                	jmp    c00335d8 <_svfprintf_r+0x1658>
c003363a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033640:	83 e3 df             	and    $0xffffffdf,%ebx
c0033643:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003364a:	0f 84 05 03 00 00    	je     c0033955 <_svfprintf_r+0x19d5>
c0033650:	83 fb 47             	cmp    $0x47,%ebx
c0033653:	75 16                	jne    c003366b <_svfprintf_r+0x16eb>
c0033655:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003365b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033660:	85 d2                	test   %edx,%edx
c0033662:	0f 45 c2             	cmovne %edx,%eax
c0033665:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c003366b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033671:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033677:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c003367d:	80 cc 01             	or     $0x1,%ah
c0033680:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033686:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003368c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033693:	85 c0                	test   %eax,%eax
c0033695:	0f 88 ba 05 00 00    	js     c0033c55 <_svfprintf_r+0x1cd5>
c003369b:	83 fb 46             	cmp    $0x46,%ebx
c003369e:	0f 94 c0             	sete   %al
c00336a1:	89 c6                	mov    %eax,%esi
c00336a3:	0f 84 d4 03 00 00    	je     c0033a7d <_svfprintf_r+0x1afd>
c00336a9:	83 fb 45             	cmp    $0x45,%ebx
c00336ac:	0f 85 99 05 00 00    	jne    c0033c4b <_svfprintf_r+0x1ccb>
c00336b2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00336b8:	dd 54 24 04          	fstl   0x4(%esp)
c00336bc:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c00336c3:	00 
c00336c4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c00336ca:	8d 70 01             	lea    0x1(%eax),%esi
c00336cd:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c00336d3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c00336d7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c00336dd:	89 44 24 18          	mov    %eax,0x18(%esp)
c00336e1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c00336e7:	89 44 24 14          	mov    %eax,0x14(%esp)
c00336eb:	8b 45 08             	mov    0x8(%ebp),%eax
c00336ee:	89 74 24 10          	mov    %esi,0x10(%esp)
c00336f2:	89 04 24             	mov    %eax,(%esp)
c00336f5:	e8 56 09 00 00       	call   c0034050 <_dtoa_r>
c00336fa:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033700:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033703:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033709:	d9 ee                	fldz   
c003370b:	d9 c9                	fxch   %st(1)
c003370d:	df e9                	fucomip %st(1),%st
c003370f:	dd d8                	fstp   %st(0)
c0033711:	0f 8a fd 00 00 00    	jp     c0033814 <_svfprintf_r+0x1894>
c0033717:	89 c8                	mov    %ecx,%eax
c0033719:	0f 85 f5 00 00 00    	jne    c0033814 <_svfprintf_r+0x1894>
c003371f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033725:	83 fb 47             	cmp    $0x47,%ebx
c0033728:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003372e:	0f 84 1e 04 00 00    	je     c0033b52 <_svfprintf_r+0x1bd2>
c0033734:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003373b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033741:	0f 8e 65 04 00 00    	jle    c0033bac <_svfprintf_r+0x1c2c>
c0033747:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003374e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033754:	0f 84 3c 05 00 00    	je     c0033c96 <_svfprintf_r+0x1d16>
c003375a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033760:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033766:	0f 8f f7 04 00 00    	jg     c0033c63 <_svfprintf_r+0x1ce3>
c003376c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033772:	83 e0 01             	and    $0x1,%eax
c0033775:	0f 85 e2 05 00 00    	jne    c0033d5d <_svfprintf_r+0x1ddd>
c003377b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033781:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033788:	00 00 00 
c003378b:	85 d2                	test   %edx,%edx
c003378d:	0f 49 c2             	cmovns %edx,%eax
c0033790:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033796:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c003379d:	0f 85 68 03 00 00    	jne    c0033b0b <_svfprintf_r+0x1b8b>
c00337a3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00337a9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c00337af:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00337b6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00337bd:	00 00 00 
c00337c0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c00337c6:	e9 4d ea ff ff       	jmp    c0032218 <_svfprintf_r+0x298>
c00337cb:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00337d1:	89 44 24 08          	mov    %eax,0x8(%esp)
c00337d5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00337d8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00337dc:	8b 45 08             	mov    0x8(%ebp),%eax
c00337df:	89 04 24             	mov    %eax,(%esp)
c00337e2:	e8 19 33 00 00       	call   c0036b00 <__ssprint_r>
c00337e7:	85 c0                	test   %eax,%eax
c00337e9:	0f 85 61 e9 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c00337ef:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00337f5:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00337f8:	e9 f2 f3 ff ff       	jmp    c0032bef <_svfprintf_r+0xc6f>
c00337fd:	89 d0                	mov    %edx,%eax
c00337ff:	e9 d1 fa ff ff       	jmp    c00332d5 <_svfprintf_r+0x1355>
c0033804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033808:	8d 50 01             	lea    0x1(%eax),%edx
c003380b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033811:	c6 00 30             	movb   $0x30,(%eax)
c0033814:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c003381a:	39 c1                	cmp    %eax,%ecx
c003381c:	77 ea                	ja     c0033808 <_svfprintf_r+0x1888>
c003381e:	e9 fc fe ff ff       	jmp    c003371f <_svfprintf_r+0x179f>
c0033823:	8b 45 08             	mov    0x8(%ebp),%eax
c0033826:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003382d:	00 
c003382e:	89 04 24             	mov    %eax,(%esp)
c0033831:	e8 4a 1b 00 00       	call   c0035380 <_malloc_r>
c0033836:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033839:	85 c0                	test   %eax,%eax
c003383b:	89 02                	mov    %eax,(%edx)
c003383d:	89 42 10             	mov    %eax,0x10(%edx)
c0033840:	0f 84 15 06 00 00    	je     c0033e5b <_svfprintf_r+0x1edb>
c0033846:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033849:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033850:	e9 6c e7 ff ff       	jmp    c0031fc1 <_svfprintf_r+0x41>
c0033855:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003385b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003385f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033862:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033866:	8b 45 08             	mov    0x8(%ebp),%eax
c0033869:	89 04 24             	mov    %eax,(%esp)
c003386c:	e8 8f 32 00 00       	call   c0036b00 <__ssprint_r>
c0033871:	85 c0                	test   %eax,%eax
c0033873:	0f 85 d7 e8 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0033879:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003387f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033882:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033888:	e9 d9 fc ff ff       	jmp    c0033566 <_svfprintf_r+0x15e6>
c003388d:	83 c0 01             	add    $0x1,%eax
c0033890:	01 da                	add    %ebx,%edx
c0033892:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033898:	83 c7 08             	add    $0x8,%edi
c003389b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003389e:	83 f8 07             	cmp    $0x7,%eax
c00338a1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00338a7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00338ad:	7e 33                	jle    c00338e2 <_svfprintf_r+0x1962>
c00338af:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338b5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338b9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338bc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338c0:	8b 45 08             	mov    0x8(%ebp),%eax
c00338c3:	89 04 24             	mov    %eax,(%esp)
c00338c6:	e8 35 32 00 00       	call   c0036b00 <__ssprint_r>
c00338cb:	85 c0                	test   %eax,%eax
c00338cd:	0f 85 7d e8 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c00338d3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00338d9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338dc:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00338e2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c00338e8:	83 c0 01             	add    $0x1,%eax
c00338eb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00338f1:	89 1f                	mov    %ebx,(%edi)
c00338f3:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00338f9:	01 da                	add    %ebx,%edx
c00338fb:	83 f8 07             	cmp    $0x7,%eax
c00338fe:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033901:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033907:	0f 8f 86 f5 ff ff    	jg     c0032e93 <_svfprintf_r+0xf13>
c003390d:	83 c7 08             	add    $0x8,%edi
c0033910:	89 d1                	mov    %edx,%ecx
c0033912:	e9 15 f1 ff ff       	jmp    c0032a2c <_svfprintf_r+0xaac>
c0033917:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003391d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033921:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033924:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033928:	8b 45 08             	mov    0x8(%ebp),%eax
c003392b:	89 04 24             	mov    %eax,(%esp)
c003392e:	e8 cd 31 00 00       	call   c0036b00 <__ssprint_r>
c0033933:	85 c0                	test   %eax,%eax
c0033935:	0f 85 15 e8 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c003393b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033941:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033944:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003394a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033950:	e9 62 fc ff ff       	jmp    c00335b7 <_svfprintf_r+0x1637>
c0033955:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c003395c:	00 00 00 
c003395f:	e9 07 fd ff ff       	jmp    c003366b <_svfprintf_r+0x16eb>
c0033964:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003396a:	89 04 24             	mov    %eax,(%esp)
c003396d:	e8 0e 31 00 00       	call   c0036a80 <strlen>
c0033972:	e9 6a e8 ff ff       	jmp    c00321e1 <_svfprintf_r+0x261>
c0033977:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003397d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033981:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033984:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033988:	8b 45 08             	mov    0x8(%ebp),%eax
c003398b:	89 04 24             	mov    %eax,(%esp)
c003398e:	e8 6d 31 00 00       	call   c0036b00 <__ssprint_r>
c0033993:	85 c0                	test   %eax,%eax
c0033995:	0f 85 b5 e7 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c003399b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339a1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339a4:	e9 76 f6 ff ff       	jmp    c003301f <_svfprintf_r+0x109f>
c00339a9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339af:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339b3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339b6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00339bd:	89 04 24             	mov    %eax,(%esp)
c00339c0:	e8 3b 31 00 00       	call   c0036b00 <__ssprint_r>
c00339c5:	85 c0                	test   %eax,%eax
c00339c7:	0f 85 83 e7 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c00339cd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00339d3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339d6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339dc:	e9 f4 f8 ff ff       	jmp    c00332d5 <_svfprintf_r+0x1355>
c00339e1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339e7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339eb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00339f5:	89 04 24             	mov    %eax,(%esp)
c00339f8:	e8 03 31 00 00       	call   c0036b00 <__ssprint_r>
c00339fd:	85 c0                	test   %eax,%eax
c00339ff:	0f 85 4b e7 ff ff    	jne    c0032150 <_svfprintf_r+0x1d0>
c0033a05:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033a0b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a0e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033a14:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a1a:	e9 fa f8 ff ff       	jmp    c0033319 <_svfprintf_r+0x1399>
c0033a1f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033a25:	b0 06                	mov    $0x6,%al
c0033a27:	89 75 14             	mov    %esi,0x14(%ebp)
c0033a2a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a31:	00 00 00 
c0033a34:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033a3b:	00 00 00 
c0033a3e:	83 fa 06             	cmp    $0x6,%edx
c0033a41:	0f 46 c2             	cmovbe %edx,%eax
c0033a44:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033a4a:	85 c0                	test   %eax,%eax
c0033a4c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033a52:	c7 85 28 ff ff ff 30 	movl   $0xc0039830,-0xd8(%ebp)
c0033a59:	98 03 c0 
c0033a5c:	0f 49 d0             	cmovns %eax,%edx
c0033a5f:	31 db                	xor    %ebx,%ebx
c0033a61:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033a67:	e9 b7 e7 ff ff       	jmp    c0032223 <_svfprintf_r+0x2a3>
c0033a6c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033a73:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033a78:	e9 9d ea ff ff       	jmp    c003251a <_svfprintf_r+0x59a>
c0033a7d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033a82:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033a88:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033a8c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033a92:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033a96:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033a9c:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033aa0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033aa6:	dd 54 24 04          	fstl   0x4(%esp)
c0033aaa:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033aae:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033ab4:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033ab8:	8b 45 08             	mov    0x8(%ebp),%eax
c0033abb:	89 04 24             	mov    %eax,(%esp)
c0033abe:	e8 8d 05 00 00       	call   c0034050 <_dtoa_r>
c0033ac3:	83 fb 47             	cmp    $0x47,%ebx
c0033ac6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033acc:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033ad2:	75 09                	jne    c0033add <_svfprintf_r+0x1b5d>
c0033ad4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033adb:	74 5b                	je     c0033b38 <_svfprintf_r+0x1bb8>
c0033add:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033ae3:	89 f0                	mov    %esi,%eax
c0033ae5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033aeb:	01 d1                	add    %edx,%ecx
c0033aed:	84 c0                	test   %al,%al
c0033aef:	0f 84 14 fc ff ff    	je     c0033709 <_svfprintf_r+0x1789>
c0033af5:	80 3a 30             	cmpb   $0x30,(%edx)
c0033af8:	0f 84 37 02 00 00    	je     c0033d35 <_svfprintf_r+0x1db5>
c0033afe:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b04:	01 c1                	add    %eax,%ecx
c0033b06:	e9 fe fb ff ff       	jmp    c0033709 <_svfprintf_r+0x1789>
c0033b0b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b11:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033b17:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033b1c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b23:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b2a:	00 00 00 
c0033b2d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033b33:	e9 e4 e6 ff ff       	jmp    c003221c <_svfprintf_r+0x29c>
c0033b38:	dd d8                	fstp   %st(0)
c0033b3a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033b40:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033b46:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033b4c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033b52:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b58:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033b5b:	7c 48                	jl     c0033ba5 <_svfprintf_r+0x1c25>
c0033b5d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033b63:	7c 40                	jl     c0033ba5 <_svfprintf_r+0x1c25>
c0033b65:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033b6b:	e9 ea fb ff ff       	jmp    c003375a <_svfprintf_r+0x17da>
c0033b70:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033b76:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033b7d:	89 75 14             	mov    %esi,0x14(%ebp)
c0033b80:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b87:	00 00 00 
c0033b8a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b90:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033b96:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033b9d:	00 00 00 
c0033ba0:	e9 73 e6 ff ff       	jmp    c0032218 <_svfprintf_r+0x298>
c0033ba5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033bac:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033baf:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033bb6:	85 c9                	test   %ecx,%ecx
c0033bb8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033bbe:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033bc4:	0f 88 2c 02 00 00    	js     c0033df6 <_svfprintf_r+0x1e76>
c0033bca:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033bd1:	83 f9 09             	cmp    $0x9,%ecx
c0033bd4:	0f 8f ea 00 00 00    	jg     c0033cc4 <_svfprintf_r+0x1d44>
c0033bda:	83 c1 30             	add    $0x30,%ecx
c0033bdd:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033be4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033bea:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033bf0:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033bf6:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033bfc:	29 d0                	sub    %edx,%eax
c0033bfe:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033c04:	89 da                	mov    %ebx,%edx
c0033c06:	01 c2                	add    %eax,%edx
c0033c08:	83 fb 01             	cmp    $0x1,%ebx
c0033c0b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c11:	0f 8e 21 02 00 00    	jle    c0033e38 <_svfprintf_r+0x1eb8>
c0033c17:	31 c0                	xor    %eax,%eax
c0033c19:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033c20:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033c27:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c2e:	00 00 00 
c0033c31:	e9 60 fb ff ff       	jmp    c0033796 <_svfprintf_r+0x1816>
c0033c36:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033c3c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c43:	00 00 00 
c0033c46:	e9 68 e4 ff ff       	jmp    c00320b3 <_svfprintf_r+0x133>
c0033c4b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033c50:	e9 2d fe ff ff       	jmp    c0033a82 <_svfprintf_r+0x1b02>
c0033c55:	d9 e0                	fchs   
c0033c57:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033c5e:	e9 38 fa ff ff       	jmp    c003369b <_svfprintf_r+0x171b>
c0033c63:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033c69:	ba 01 00 00 00       	mov    $0x1,%edx
c0033c6e:	85 c9                	test   %ecx,%ecx
c0033c70:	0f 8e 5a 01 00 00    	jle    c0033dd0 <_svfprintf_r+0x1e50>
c0033c76:	31 c0                	xor    %eax,%eax
c0033c78:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033c7e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033c85:	00 00 00 
c0033c88:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c8e:	0f 49 c2             	cmovns %edx,%eax
c0033c91:	e9 00 fb ff ff       	jmp    c0033796 <_svfprintf_r+0x1816>
c0033c96:	85 c0                	test   %eax,%eax
c0033c98:	0f 8e 06 01 00 00    	jle    c0033da4 <_svfprintf_r+0x1e24>
c0033c9e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033ca4:	85 f6                	test   %esi,%esi
c0033ca6:	0f 85 d4 00 00 00    	jne    c0033d80 <_svfprintf_r+0x1e00>
c0033cac:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033cb3:	0f 85 c7 00 00 00    	jne    c0033d80 <_svfprintf_r+0x1e00>
c0033cb9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033cbf:	e9 d2 fa ff ff       	jmp    c0033796 <_svfprintf_r+0x1816>
c0033cc4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033cca:	89 f3                	mov    %esi,%ebx
c0033ccc:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033cd1:	83 eb 01             	sub    $0x1,%ebx
c0033cd4:	f7 e9                	imul   %ecx
c0033cd6:	89 c8                	mov    %ecx,%eax
c0033cd8:	c1 f8 1f             	sar    $0x1f,%eax
c0033cdb:	c1 fa 02             	sar    $0x2,%edx
c0033cde:	29 c2                	sub    %eax,%edx
c0033ce0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033ce3:	01 c0                	add    %eax,%eax
c0033ce5:	29 c1                	sub    %eax,%ecx
c0033ce7:	83 fa 09             	cmp    $0x9,%edx
c0033cea:	8d 41 30             	lea    0x30(%ecx),%eax
c0033ced:	89 d1                	mov    %edx,%ecx
c0033cef:	88 03                	mov    %al,(%ebx)
c0033cf1:	7f d9                	jg     c0033ccc <_svfprintf_r+0x1d4c>
c0033cf3:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033cf6:	83 c1 30             	add    $0x30,%ecx
c0033cf9:	39 f0                	cmp    %esi,%eax
c0033cfb:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033cfe:	0f 83 6a 01 00 00    	jae    c0033e6e <_svfprintf_r+0x1eee>
c0033d04:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d0a:	eb 07                	jmp    c0033d13 <_svfprintf_r+0x1d93>
c0033d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033d10:	0f b6 08             	movzbl (%eax),%ecx
c0033d13:	83 c0 01             	add    $0x1,%eax
c0033d16:	83 c2 01             	add    $0x1,%edx
c0033d19:	39 f0                	cmp    %esi,%eax
c0033d1b:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033d1e:	75 f0                	jne    c0033d10 <_svfprintf_r+0x1d90>
c0033d20:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d26:	29 d8                	sub    %ebx,%eax
c0033d28:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d2e:	01 d0                	add    %edx,%eax
c0033d30:	e9 bb fe ff ff       	jmp    c0033bf0 <_svfprintf_r+0x1c70>
c0033d35:	d9 ee                	fldz   
c0033d37:	d9 c9                	fxch   %st(1)
c0033d39:	db e9                	fucomi %st(1),%st
c0033d3b:	dd d9                	fstp   %st(1)
c0033d3d:	7a 06                	jp     c0033d45 <_svfprintf_r+0x1dc5>
c0033d3f:	0f 84 b9 fd ff ff    	je     c0033afe <_svfprintf_r+0x1b7e>
c0033d45:	b8 01 00 00 00       	mov    $0x1,%eax
c0033d4a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033d50:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033d56:	01 c1                	add    %eax,%ecx
c0033d58:	e9 ac f9 ff ff       	jmp    c0033709 <_svfprintf_r+0x1789>
c0033d5d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d63:	31 c0                	xor    %eax,%eax
c0033d65:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033d6c:	00 00 00 
c0033d6f:	83 c2 01             	add    $0x1,%edx
c0033d72:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033d78:	0f 49 c2             	cmovns %edx,%eax
c0033d7b:	e9 16 fa ff ff       	jmp    c0033796 <_svfprintf_r+0x1816>
c0033d80:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d86:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033d8c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033d90:	89 c2                	mov    %eax,%edx
c0033d92:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033d98:	31 c0                	xor    %eax,%eax
c0033d9a:	85 d2                	test   %edx,%edx
c0033d9c:	0f 49 c2             	cmovns %edx,%eax
c0033d9f:	e9 f2 f9 ff ff       	jmp    c0033796 <_svfprintf_r+0x1816>
c0033da4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033daa:	85 db                	test   %ebx,%ebx
c0033dac:	75 2f                	jne    c0033ddd <_svfprintf_r+0x1e5d>
c0033dae:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033db5:	75 26                	jne    c0033ddd <_svfprintf_r+0x1e5d>
c0033db7:	b8 01 00 00 00       	mov    $0x1,%eax
c0033dbc:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033dc3:	00 00 00 
c0033dc6:	e9 cb f9 ff ff       	jmp    c0033796 <_svfprintf_r+0x1816>
c0033dcb:	90                   	nop
c0033dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033dd0:	b2 02                	mov    $0x2,%dl
c0033dd2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033dd8:	e9 99 fe ff ff       	jmp    c0033c76 <_svfprintf_r+0x1cf6>
c0033ddd:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033de3:	31 c0                	xor    %eax,%eax
c0033de5:	83 c2 02             	add    $0x2,%edx
c0033de8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033dee:	0f 49 c2             	cmovns %edx,%eax
c0033df1:	e9 a0 f9 ff ff       	jmp    c0033796 <_svfprintf_r+0x1816>
c0033df6:	f7 d9                	neg    %ecx
c0033df8:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033dff:	e9 cd fd ff ff       	jmp    c0033bd1 <_svfprintf_r+0x1c51>
c0033e04:	8b 55 14             	mov    0x14(%ebp),%edx
c0033e07:	8b 45 14             	mov    0x14(%ebp),%eax
c0033e0a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033e10:	8b 12                	mov    (%edx),%edx
c0033e12:	83 c0 04             	add    $0x4,%eax
c0033e15:	89 45 14             	mov    %eax,0x14(%ebp)
c0033e18:	85 d2                	test   %edx,%edx
c0033e1a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033e20:	0f 89 a9 e2 ff ff    	jns    c00320cf <_svfprintf_r+0x14f>
c0033e26:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033e2d:	ff ff ff 
c0033e30:	89 c8                	mov    %ecx,%eax
c0033e32:	e9 76 e2 ff ff       	jmp    c00320ad <_svfprintf_r+0x12d>
c0033e37:	90                   	nop
c0033e38:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e3e:	83 e0 01             	and    $0x1,%eax
c0033e41:	0f 85 d0 fd ff ff    	jne    c0033c17 <_svfprintf_r+0x1c97>
c0033e47:	85 d2                	test   %edx,%edx
c0033e49:	0f 49 c2             	cmovns %edx,%eax
c0033e4c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033e53:	00 00 00 
c0033e56:	e9 3b f9 ff ff       	jmp    c0033796 <_svfprintf_r+0x1816>
c0033e5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e5e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033e64:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033e69:	e9 f5 e2 ff ff       	jmp    c0032163 <_svfprintf_r+0x1e3>
c0033e6e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033e74:	e9 77 fd ff ff       	jmp    c0033bf0 <_svfprintf_r+0x1c70>
c0033e79:	66 90                	xchg   %ax,%ax
c0033e7b:	66 90                	xchg   %ax,%ax
c0033e7d:	66 90                	xchg   %ax,%ax
c0033e7f:	90                   	nop

c0033e80 <quorem>:
c0033e80:	55                   	push   %ebp
c0033e81:	89 c1                	mov    %eax,%ecx
c0033e83:	89 e5                	mov    %esp,%ebp
c0033e85:	57                   	push   %edi
c0033e86:	89 d7                	mov    %edx,%edi
c0033e88:	56                   	push   %esi
c0033e89:	53                   	push   %ebx
c0033e8a:	83 ec 3c             	sub    $0x3c,%esp
c0033e8d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033e90:	8b 42 10             	mov    0x10(%edx),%eax
c0033e93:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033e96:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033e99:	89 ca                	mov    %ecx,%edx
c0033e9b:	0f 8f 9f 01 00 00    	jg     c0034040 <quorem+0x1c0>
c0033ea1:	83 e8 01             	sub    $0x1,%eax
c0033ea4:	83 c7 14             	add    $0x14,%edi
c0033ea7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033eaa:	c1 e0 02             	shl    $0x2,%eax
c0033ead:	83 c2 14             	add    $0x14,%edx
c0033eb0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033eb3:	01 d0                	add    %edx,%eax
c0033eb5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033eb8:	8b 13                	mov    (%ebx),%edx
c0033eba:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033ebd:	8b 00                	mov    (%eax),%eax
c0033ebf:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033ec2:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033ec5:	31 d2                	xor    %edx,%edx
c0033ec7:	f7 f1                	div    %ecx
c0033ec9:	85 c0                	test   %eax,%eax
c0033ecb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033ece:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033ed1:	0f 84 b5 00 00 00    	je     c0033f8c <quorem+0x10c>
c0033ed7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033eda:	31 f6                	xor    %esi,%esi
c0033edc:	89 fa                	mov    %edi,%edx
c0033ede:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033ee1:	89 f7                	mov    %esi,%edi
c0033ee3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033eea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033ef0:	83 c2 04             	add    $0x4,%edx
c0033ef3:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033ef6:	83 c0 04             	add    $0x4,%eax
c0033ef9:	0f b7 ce             	movzwl %si,%ecx
c0033efc:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033f00:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033f03:	c1 ee 10             	shr    $0x10,%esi
c0033f06:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033f0a:	89 cb                	mov    %ecx,%ebx
c0033f0c:	0f b7 c9             	movzwl %cx,%ecx
c0033f0f:	c1 eb 10             	shr    $0x10,%ebx
c0033f12:	29 cf                	sub    %ecx,%edi
c0033f14:	01 f3                	add    %esi,%ebx
c0033f16:	89 de                	mov    %ebx,%esi
c0033f18:	0f b7 db             	movzwl %bx,%ebx
c0033f1b:	c1 ee 10             	shr    $0x10,%esi
c0033f1e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033f21:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033f24:	0f b7 ce             	movzwl %si,%ecx
c0033f27:	01 f9                	add    %edi,%ecx
c0033f29:	c1 ee 10             	shr    $0x10,%esi
c0033f2c:	29 de                	sub    %ebx,%esi
c0033f2e:	89 cb                	mov    %ecx,%ebx
c0033f30:	c1 fb 10             	sar    $0x10,%ebx
c0033f33:	0f b7 c9             	movzwl %cx,%ecx
c0033f36:	01 de                	add    %ebx,%esi
c0033f38:	89 f7                	mov    %esi,%edi
c0033f3a:	c1 e6 10             	shl    $0x10,%esi
c0033f3d:	09 ce                	or     %ecx,%esi
c0033f3f:	c1 ff 10             	sar    $0x10,%edi
c0033f42:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033f45:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033f48:	73 a6                	jae    c0033ef0 <quorem+0x70>
c0033f4a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033f4d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033f50:	8b 10                	mov    (%eax),%edx
c0033f52:	85 d2                	test   %edx,%edx
c0033f54:	75 36                	jne    c0033f8c <quorem+0x10c>
c0033f56:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033f59:	89 c2                	mov    %eax,%edx
c0033f5b:	83 e8 04             	sub    $0x4,%eax
c0033f5e:	39 c1                	cmp    %eax,%ecx
c0033f60:	73 21                	jae    c0033f83 <quorem+0x103>
c0033f62:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f65:	85 f6                	test   %esi,%esi
c0033f67:	75 1a                	jne    c0033f83 <quorem+0x103>
c0033f69:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f6c:	eb 08                	jmp    c0033f76 <quorem+0xf6>
c0033f6e:	66 90                	xchg   %ax,%ax
c0033f70:	8b 18                	mov    (%eax),%ebx
c0033f72:	85 db                	test   %ebx,%ebx
c0033f74:	75 0a                	jne    c0033f80 <quorem+0x100>
c0033f76:	83 e8 04             	sub    $0x4,%eax
c0033f79:	83 ea 01             	sub    $0x1,%edx
c0033f7c:	39 c1                	cmp    %eax,%ecx
c0033f7e:	72 f0                	jb     c0033f70 <quorem+0xf0>
c0033f80:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033f83:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033f86:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f89:	89 50 10             	mov    %edx,0x10(%eax)
c0033f8c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c0033f8f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033f93:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033f96:	89 04 24             	mov    %eax,(%esp)
c0033f99:	e8 a2 23 00 00       	call   c0036340 <__mcmp>
c0033f9e:	85 c0                	test   %eax,%eax
c0033fa0:	0f 88 8e 00 00 00    	js     c0034034 <quorem+0x1b4>
c0033fa6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0033fa9:	31 f6                	xor    %esi,%esi
c0033fab:	83 c0 01             	add    $0x1,%eax
c0033fae:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033fb1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033fb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033fb8:	83 c7 04             	add    $0x4,%edi
c0033fbb:	8b 4f fc             	mov    -0x4(%edi),%ecx
c0033fbe:	83 c0 04             	add    $0x4,%eax
c0033fc1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0033fc4:	0f b7 d1             	movzwl %cx,%edx
c0033fc7:	29 d6                	sub    %edx,%esi
c0033fc9:	0f b7 d3             	movzwl %bx,%edx
c0033fcc:	01 f2                	add    %esi,%edx
c0033fce:	c1 e9 10             	shr    $0x10,%ecx
c0033fd1:	c1 eb 10             	shr    $0x10,%ebx
c0033fd4:	29 cb                	sub    %ecx,%ebx
c0033fd6:	89 d1                	mov    %edx,%ecx
c0033fd8:	c1 f9 10             	sar    $0x10,%ecx
c0033fdb:	0f b7 d2             	movzwl %dx,%edx
c0033fde:	01 cb                	add    %ecx,%ebx
c0033fe0:	89 de                	mov    %ebx,%esi
c0033fe2:	c1 e3 10             	shl    $0x10,%ebx
c0033fe5:	09 d3                	or     %edx,%ebx
c0033fe7:	c1 fe 10             	sar    $0x10,%esi
c0033fea:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c0033fed:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0033ff0:	73 c6                	jae    c0033fb8 <quorem+0x138>
c0033ff2:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033ff5:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0033ff8:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c0033ffb:	8b 02                	mov    (%edx),%eax
c0033ffd:	85 c0                	test   %eax,%eax
c0033fff:	75 33                	jne    c0034034 <quorem+0x1b4>
c0034001:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034004:	8d 42 fc             	lea    -0x4(%edx),%eax
c0034007:	39 c1                	cmp    %eax,%ecx
c0034009:	73 20                	jae    c003402b <quorem+0x1ab>
c003400b:	8b 72 fc             	mov    -0x4(%edx),%esi
c003400e:	85 f6                	test   %esi,%esi
c0034010:	75 19                	jne    c003402b <quorem+0x1ab>
c0034012:	89 fa                	mov    %edi,%edx
c0034014:	eb 08                	jmp    c003401e <quorem+0x19e>
c0034016:	66 90                	xchg   %ax,%ax
c0034018:	8b 18                	mov    (%eax),%ebx
c003401a:	85 db                	test   %ebx,%ebx
c003401c:	75 0a                	jne    c0034028 <quorem+0x1a8>
c003401e:	83 e8 04             	sub    $0x4,%eax
c0034021:	83 ea 01             	sub    $0x1,%edx
c0034024:	39 c1                	cmp    %eax,%ecx
c0034026:	72 f0                	jb     c0034018 <quorem+0x198>
c0034028:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003402b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003402e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034031:	89 78 10             	mov    %edi,0x10(%eax)
c0034034:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034037:	83 c4 3c             	add    $0x3c,%esp
c003403a:	5b                   	pop    %ebx
c003403b:	5e                   	pop    %esi
c003403c:	5f                   	pop    %edi
c003403d:	5d                   	pop    %ebp
c003403e:	c3                   	ret    
c003403f:	90                   	nop
c0034040:	83 c4 3c             	add    $0x3c,%esp
c0034043:	31 c0                	xor    %eax,%eax
c0034045:	5b                   	pop    %ebx
c0034046:	5e                   	pop    %esi
c0034047:	5f                   	pop    %edi
c0034048:	5d                   	pop    %ebp
c0034049:	c3                   	ret    
c003404a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034050 <_dtoa_r>:
c0034050:	55                   	push   %ebp
c0034051:	89 e5                	mov    %esp,%ebp
c0034053:	57                   	push   %edi
c0034054:	56                   	push   %esi
c0034055:	53                   	push   %ebx
c0034056:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003405c:	8b 75 08             	mov    0x8(%ebp),%esi
c003405f:	dd 45 0c             	fldl   0xc(%ebp)
c0034062:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034065:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034068:	8b 46 40             	mov    0x40(%esi),%eax
c003406b:	85 c0                	test   %eax,%eax
c003406d:	74 23                	je     c0034092 <_dtoa_r+0x42>
c003406f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034072:	ba 01 00 00 00       	mov    $0x1,%edx
c0034077:	d3 e2                	shl    %cl,%edx
c0034079:	89 48 04             	mov    %ecx,0x4(%eax)
c003407c:	89 50 08             	mov    %edx,0x8(%eax)
c003407f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034083:	89 34 24             	mov    %esi,(%esp)
c0034086:	e8 95 1b 00 00       	call   c0035c20 <_Bfree>
c003408b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0034092:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0034095:	85 ff                	test   %edi,%edi
c0034097:	0f 88 3b 02 00 00    	js     c00342d8 <_dtoa_r+0x288>
c003409d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c00340a3:	89 f8                	mov    %edi,%eax
c00340a5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c00340aa:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c00340af:	0f 84 e3 01 00 00    	je     c0034298 <_dtoa_r+0x248>
c00340b5:	dd 45 c0             	fldl   -0x40(%ebp)
c00340b8:	d9 ee                	fldz   
c00340ba:	d9 c9                	fxch   %st(1)
c00340bc:	db e9                	fucomi %st(1),%st
c00340be:	dd d9                	fstp   %st(1)
c00340c0:	7a 36                	jp     c00340f8 <_dtoa_r+0xa8>
c00340c2:	75 34                	jne    c00340f8 <_dtoa_r+0xa8>
c00340c4:	dd d8                	fstp   %st(0)
c00340c6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c00340c9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00340cc:	85 c9                	test   %ecx,%ecx
c00340ce:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c00340d4:	0f 84 4e 02 00 00    	je     c0034328 <_dtoa_r+0x2d8>
c00340da:	8b 45 24             	mov    0x24(%ebp),%eax
c00340dd:	c7 00 38 98 03 c0    	movl   $0xc0039838,(%eax)
c00340e3:	b8 37 98 03 c0       	mov    $0xc0039837,%eax
c00340e8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00340ee:	5b                   	pop    %ebx
c00340ef:	5e                   	pop    %esi
c00340f0:	5f                   	pop    %edi
c00340f1:	5d                   	pop    %ebp
c00340f2:	c3                   	ret    
c00340f3:	90                   	nop
c00340f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00340f8:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00340fb:	89 fb                	mov    %edi,%ebx
c00340fd:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034101:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0034104:	dd 54 24 04          	fstl   0x4(%esp)
c0034108:	89 44 24 0c          	mov    %eax,0xc(%esp)
c003410c:	dd 5d b8             	fstpl  -0x48(%ebp)
c003410f:	89 34 24             	mov    %esi,(%esp)
c0034112:	c1 eb 14             	shr    $0x14,%ebx
c0034115:	e8 76 25 00 00       	call   c0036690 <__d2b>
c003411a:	85 db                	test   %ebx,%ebx
c003411c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003411f:	0f 85 db 01 00 00    	jne    c0034300 <_dtoa_r+0x2b0>
c0034125:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034128:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003412b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003412e:	01 c3                	add    %eax,%ebx
c0034130:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034136:	0f 8c ec 07 00 00    	jl     c0034928 <_dtoa_r+0x8d8>
c003413c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003413f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034144:	89 f8                	mov    %edi,%eax
c0034146:	29 d9                	sub    %ebx,%ecx
c0034148:	d3 e0                	shl    %cl,%eax
c003414a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034150:	d3 ea                	shr    %cl,%edx
c0034152:	09 d0                	or     %edx,%eax
c0034154:	31 d2                	xor    %edx,%edx
c0034156:	83 eb 01             	sub    $0x1,%ebx
c0034159:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003415c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003415f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034162:	df 6d c8             	fildll -0x38(%ebp)
c0034165:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034168:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003416f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034176:	dd 45 b8             	fldl   -0x48(%ebp)
c0034179:	d8 25 d0 99 03 c0    	fsubs  0xc00399d0
c003417f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034182:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034185:	dc 0d e8 99 03 c0    	fmull  0xc00399e8
c003418b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003418f:	b4 0c                	mov    $0xc,%ah
c0034191:	dc 05 f0 99 03 c0    	faddl  0xc00399f0
c0034197:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003419b:	db 45 d4             	fildl  -0x2c(%ebp)
c003419e:	dc 0d f8 99 03 c0    	fmull  0xc00399f8
c00341a4:	de c1                	faddp  %st,%st(1)
c00341a6:	d9 6d d0             	fldcw  -0x30(%ebp)
c00341a9:	db 55 b8             	fistl  -0x48(%ebp)
c00341ac:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00341af:	d9 ee                	fldz   
c00341b1:	df e9                	fucomip %st(1),%st
c00341b3:	0f 87 27 07 00 00    	ja     c00348e0 <_dtoa_r+0x890>
c00341b9:	dd d8                	fstp   %st(0)
c00341bb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c00341bf:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c00341c6:	77 24                	ja     c00341ec <_dtoa_r+0x19c>
c00341c8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00341cb:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c00341d2:	dd 45 c0             	fldl   -0x40(%ebp)
c00341d5:	d9 c9                	fxch   %st(1)
c00341d7:	df e9                	fucomip %st(1),%st
c00341d9:	dd d8                	fstp   %st(0)
c00341db:	0f 86 5f 07 00 00    	jbe    c0034940 <_dtoa_r+0x8f0>
c00341e1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00341e5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00341ec:	89 d0                	mov    %edx,%eax
c00341ee:	29 d8                	sub    %ebx,%eax
c00341f0:	83 e8 01             	sub    $0x1,%eax
c00341f3:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c00341fa:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00341fd:	0f 88 0d 07 00 00    	js     c0034910 <_dtoa_r+0x8c0>
c0034203:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034206:	85 c0                	test   %eax,%eax
c0034208:	0f 88 ea 06 00 00    	js     c00348f8 <_dtoa_r+0x8a8>
c003420e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034211:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034214:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003421b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003421f:	0f 87 0b 03 00 00    	ja     c0034530 <_dtoa_r+0x4e0>
c0034225:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034229:	0f 8e 23 10 00 00    	jle    c0035252 <_dtoa_r+0x1202>
c003422f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034233:	31 c0                	xor    %eax,%eax
c0034235:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034239:	0f 84 43 0d 00 00    	je     c0034f82 <_dtoa_r+0xf32>
c003423f:	0f 8e f3 00 00 00    	jle    c0034338 <_dtoa_r+0x2e8>
c0034245:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034249:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034250:	0f 84 f3 00 00 00    	je     c0034349 <_dtoa_r+0x2f9>
c0034256:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003425a:	0f 85 d7 02 00 00    	jne    c0034537 <_dtoa_r+0x4e7>
c0034260:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034263:	03 5d 18             	add    0x18(%ebp),%ebx
c0034266:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034269:	83 c3 01             	add    $0x1,%ebx
c003426c:	83 fb 0e             	cmp    $0xe,%ebx
c003426f:	0f 96 c2             	setbe  %dl
c0034272:	85 db                	test   %ebx,%ebx
c0034274:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034277:	0f 8e a7 08 00 00    	jle    c0034b24 <_dtoa_r+0xad4>
c003427d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034280:	83 fb 0e             	cmp    $0xe,%ebx
c0034283:	89 df                	mov    %ebx,%edi
c0034285:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034289:	20 45 b4             	and    %al,-0x4c(%ebp)
c003428c:	e9 d6 00 00 00       	jmp    c0034367 <_dtoa_r+0x317>
c0034291:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034298:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003429b:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003429e:	85 d2                	test   %edx,%edx
c00342a0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c00342a6:	b8 c9 99 03 c0       	mov    $0xc00399c9,%eax
c00342ab:	74 43                	je     c00342f0 <_dtoa_r+0x2a0>
c00342ad:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00342b0:	85 db                	test   %ebx,%ebx
c00342b2:	0f 84 30 fe ff ff    	je     c00340e8 <_dtoa_r+0x98>
c00342b8:	8b 75 24             	mov    0x24(%ebp),%esi
c00342bb:	8d 50 08             	lea    0x8(%eax),%edx
c00342be:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c00342c2:	8d 48 03             	lea    0x3(%eax),%ecx
c00342c5:	0f 44 d1             	cmove  %ecx,%edx
c00342c8:	89 16                	mov    %edx,(%esi)
c00342ca:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00342d0:	5b                   	pop    %ebx
c00342d1:	5e                   	pop    %esi
c00342d2:	5f                   	pop    %edi
c00342d3:	5d                   	pop    %ebp
c00342d4:	c3                   	ret    
c00342d5:	8d 76 00             	lea    0x0(%esi),%esi
c00342d8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c00342de:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c00342e4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c00342e7:	e9 b7 fd ff ff       	jmp    c00340a3 <_dtoa_r+0x53>
c00342ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00342f0:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c00342f6:	ba c0 99 03 c0       	mov    $0xc00399c0,%edx
c00342fb:	0f 44 c2             	cmove  %edx,%eax
c00342fe:	eb ad                	jmp    c00342ad <_dtoa_r+0x25d>
c0034300:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034303:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034309:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003430c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034313:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034318:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003431d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034320:	e9 51 fe ff ff       	jmp    c0034176 <_dtoa_r+0x126>
c0034325:	8d 76 00             	lea    0x0(%esi),%esi
c0034328:	b8 37 98 03 c0       	mov    $0xc0039837,%eax
c003432d:	e9 b6 fd ff ff       	jmp    c00340e8 <_dtoa_r+0x98>
c0034332:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034338:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003433c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034343:	0f 85 ee 01 00 00    	jne    c0034537 <_dtoa_r+0x4e7>
c0034349:	8b 55 18             	mov    0x18(%ebp),%edx
c003434c:	85 d2                	test   %edx,%edx
c003434e:	0f 8e b6 07 00 00    	jle    c0034b0a <_dtoa_r+0xaba>
c0034354:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034357:	83 ff 0e             	cmp    $0xe,%edi
c003435a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003435e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034361:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034364:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034367:	83 ff 17             	cmp    $0x17,%edi
c003436a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034371:	0f 86 e5 0e 00 00    	jbe    c003525c <_dtoa_r+0x120c>
c0034377:	b9 01 00 00 00       	mov    $0x1,%ecx
c003437c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034388:	01 c0                	add    %eax,%eax
c003438a:	89 ca                	mov    %ecx,%edx
c003438c:	8d 58 14             	lea    0x14(%eax),%ebx
c003438f:	39 fb                	cmp    %edi,%ebx
c0034391:	8d 49 01             	lea    0x1(%ecx),%ecx
c0034394:	76 f2                	jbe    c0034388 <_dtoa_r+0x338>
c0034396:	89 56 44             	mov    %edx,0x44(%esi)
c0034399:	89 54 24 04          	mov    %edx,0x4(%esp)
c003439d:	89 34 24             	mov    %esi,(%esp)
c00343a0:	e8 db 17 00 00       	call   c0035b80 <_Balloc>
c00343a5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c00343a9:	89 c7                	mov    %eax,%edi
c00343ab:	89 46 40             	mov    %eax,0x40(%esi)
c00343ae:	0f 84 bb 01 00 00    	je     c003456f <_dtoa_r+0x51f>
c00343b4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00343b7:	dd 45 c0             	fldl   -0x40(%ebp)
c00343ba:	85 db                	test   %ebx,%ebx
c00343bc:	0f 8e de 07 00 00    	jle    c0034ba0 <_dtoa_r+0xb50>
c00343c2:	89 d8                	mov    %ebx,%eax
c00343c4:	83 e0 0f             	and    $0xf,%eax
c00343c7:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c00343ce:	89 d8                	mov    %ebx,%eax
c00343d0:	c1 f8 04             	sar    $0x4,%eax
c00343d3:	a8 10                	test   $0x10,%al
c00343d5:	0f 84 cd 05 00 00    	je     c00349a8 <_dtoa_r+0x958>
c00343db:	dd 05 a0 9a 03 c0    	fldl   0xc0039aa0
c00343e1:	83 e0 0f             	and    $0xf,%eax
c00343e4:	b9 03 00 00 00       	mov    $0x3,%ecx
c00343e9:	d8 fa                	fdivr  %st(2),%st
c00343eb:	85 c0                	test   %eax,%eax
c00343ed:	74 22                	je     c0034411 <_dtoa_r+0x3c1>
c00343ef:	31 d2                	xor    %edx,%edx
c00343f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00343f8:	a8 01                	test   $0x1,%al
c00343fa:	74 0e                	je     c003440a <_dtoa_r+0x3ba>
c00343fc:	d9 c9                	fxch   %st(1)
c00343fe:	dc 0c d5 80 9a 03 c0 	fmull  -0x3ffc6580(,%edx,8)
c0034405:	d9 c9                	fxch   %st(1)
c0034407:	83 c1 01             	add    $0x1,%ecx
c003440a:	83 c2 01             	add    $0x1,%edx
c003440d:	d1 f8                	sar    %eax
c003440f:	75 e7                	jne    c00343f8 <_dtoa_r+0x3a8>
c0034411:	de f1                	fdivp  %st,%st(1)
c0034413:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034416:	85 c0                	test   %eax,%eax
c0034418:	74 0a                	je     c0034424 <_dtoa_r+0x3d4>
c003441a:	d9 e8                	fld1   
c003441c:	df e9                	fucomip %st(1),%st
c003441e:	0f 87 92 0b 00 00    	ja     c0034fb6 <_dtoa_r+0xf66>
c0034424:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034427:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003442a:	db 45 d4             	fildl  -0x2c(%ebp)
c003442d:	d8 c9                	fmul   %st(1),%st
c003442f:	d8 05 dc 99 03 c0    	fadds  0xc00399dc
c0034435:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034438:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003443f:	85 c0                	test   %eax,%eax
c0034441:	0f 84 89 05 00 00    	je     c00349d0 <_dtoa_r+0x980>
c0034447:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003444a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003444d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034450:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034453:	85 c0                	test   %eax,%eax
c0034455:	0f 84 b5 07 00 00    	je     c0034c10 <_dtoa_r+0xbc0>
c003445b:	d9 05 e4 99 03 c0    	flds   0xc00399e4
c0034461:	8d 57 01             	lea    0x1(%edi),%edx
c0034464:	dc 34 cd b8 9a 03 c0 	fdivl  -0x3ffc6548(,%ecx,8)
c003446b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003446e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034472:	b4 0c                	mov    $0xc,%ah
c0034474:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034478:	dc 65 c0             	fsubl  -0x40(%ebp)
c003447b:	d9 c9                	fxch   %st(1)
c003447d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034480:	db 55 d4             	fistl  -0x2c(%ebp)
c0034483:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034486:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034489:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003448c:	83 c0 30             	add    $0x30,%eax
c003448f:	db 45 d4             	fildl  -0x2c(%ebp)
c0034492:	de e9                	fsubrp %st,%st(1)
c0034494:	d9 c9                	fxch   %st(1)
c0034496:	88 07                	mov    %al,(%edi)
c0034498:	db e9                	fucomi %st(1),%st
c003449a:	77 7f                	ja     c003451b <_dtoa_r+0x4cb>
c003449c:	d9 c1                	fld    %st(1)
c003449e:	d8 2d d4 99 03 c0    	fsubrs 0xc00399d4
c00344a4:	d9 c9                	fxch   %st(1)
c00344a6:	db e9                	fucomi %st(1),%st
c00344a8:	dd d9                	fstp   %st(1)
c00344aa:	0f 87 33 0c 00 00    	ja     c00350e3 <_dtoa_r+0x1093>
c00344b0:	83 f9 01             	cmp    $0x1,%ecx
c00344b3:	0f 8e c4 06 00 00    	jle    c0034b7d <_dtoa_r+0xb2d>
c00344b9:	01 f9                	add    %edi,%ecx
c00344bb:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c00344c1:	eb 25                	jmp    c00344e8 <_dtoa_r+0x498>
c00344c3:	90                   	nop
c00344c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00344c8:	d9 c1                	fld    %st(1)
c00344ca:	d8 2d d4 99 03 c0    	fsubrs 0xc00399d4
c00344d0:	d9 c9                	fxch   %st(1)
c00344d2:	db e9                	fucomi %st(1),%st
c00344d4:	dd d9                	fstp   %st(1)
c00344d6:	0f 87 14 0c 00 00    	ja     c00350f0 <_dtoa_r+0x10a0>
c00344dc:	39 ca                	cmp    %ecx,%edx
c00344de:	0f 84 a4 06 00 00    	je     c0034b88 <_dtoa_r+0xb38>
c00344e4:	d9 c9                	fxch   %st(1)
c00344e6:	d9 ca                	fxch   %st(2)
c00344e8:	dc c9                	fmul   %st,%st(1)
c00344ea:	83 c2 01             	add    $0x1,%edx
c00344ed:	dc ca                	fmul   %st,%st(2)
c00344ef:	d9 ca                	fxch   %st(2)
c00344f1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00344f4:	db 55 d4             	fistl  -0x2c(%ebp)
c00344f7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00344fa:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00344fd:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034500:	83 c0 30             	add    $0x30,%eax
c0034503:	db 45 d4             	fildl  -0x2c(%ebp)
c0034506:	de e9                	fsubrp %st,%st(1)
c0034508:	d9 c9                	fxch   %st(1)
c003450a:	88 42 ff             	mov    %al,-0x1(%edx)
c003450d:	db e9                	fucomi %st(1),%st
c003450f:	76 b7                	jbe    c00344c8 <_dtoa_r+0x478>
c0034511:	dd d8                	fstp   %st(0)
c0034513:	dd d8                	fstp   %st(0)
c0034515:	dd d8                	fstp   %st(0)
c0034517:	dd d8                	fstp   %st(0)
c0034519:	eb 06                	jmp    c0034521 <_dtoa_r+0x4d1>
c003451b:	dd d8                	fstp   %st(0)
c003451d:	dd d8                	fstp   %st(0)
c003451f:	dd d8                	fstp   %st(0)
c0034521:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034524:	89 fb                	mov    %edi,%ebx
c0034526:	89 d7                	mov    %edx,%edi
c0034528:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003452b:	e9 70 03 00 00       	jmp    c00348a0 <_dtoa_r+0x850>
c0034530:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034537:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003453e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034545:	00 
c0034546:	89 34 24             	mov    %esi,(%esp)
c0034549:	e8 32 16 00 00       	call   c0035b80 <_Balloc>
c003454e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034555:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003455c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034563:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003456a:	89 c7                	mov    %eax,%edi
c003456c:	89 46 40             	mov    %eax,0x40(%esi)
c003456f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034572:	85 c0                	test   %eax,%eax
c0034574:	0f 88 2e 01 00 00    	js     c00346a8 <_dtoa_r+0x658>
c003457a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c003457e:	0f 8f 24 01 00 00    	jg     c00346a8 <_dtoa_r+0x658>
c0034584:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034587:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c003458e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034591:	85 c0                	test   %eax,%eax
c0034593:	7f 0e                	jg     c00345a3 <_dtoa_r+0x553>
c0034595:	8b 45 18             	mov    0x18(%ebp),%eax
c0034598:	c1 e8 1f             	shr    $0x1f,%eax
c003459b:	84 c0                	test   %al,%al
c003459d:	0f 85 9d 07 00 00    	jne    c0034d40 <_dtoa_r+0xcf0>
c00345a3:	dd 45 c0             	fldl   -0x40(%ebp)
c00345a6:	d9 c0                	fld    %st(0)
c00345a8:	d8 f2                	fdiv   %st(2),%st
c00345aa:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00345ad:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c00345b1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00345b5:	b4 0c                	mov    $0xc,%ah
c00345b7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00345bb:	8d 47 01             	lea    0x1(%edi),%eax
c00345be:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00345c1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00345c4:	db 5d d4             	fistpl -0x2c(%ebp)
c00345c7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00345ca:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00345cd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00345d0:	8d 42 30             	lea    0x30(%edx),%eax
c00345d3:	db 45 d4             	fildl  -0x2c(%ebp)
c00345d6:	d8 ca                	fmul   %st(2),%st
c00345d8:	88 07                	mov    %al,(%edi)
c00345da:	de e9                	fsubrp %st,%st(1)
c00345dc:	74 66                	je     c0034644 <_dtoa_r+0x5f4>
c00345de:	d8 0d d8 99 03 c0    	fmuls  0xc00399d8
c00345e4:	d9 ee                	fldz   
c00345e6:	d9 c9                	fxch   %st(1)
c00345e8:	db e9                	fucomi %st(1),%st
c00345ea:	dd d9                	fstp   %st(1)
c00345ec:	0f 8b 33 0c 00 00    	jnp    c0035225 <_dtoa_r+0x11d5>
c00345f2:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00345f5:	8d 47 02             	lea    0x2(%edi),%eax
c00345f8:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c00345fe:	01 fb                	add    %edi,%ebx
c0034600:	eb 19                	jmp    c003461b <_dtoa_r+0x5cb>
c0034602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034608:	dc c9                	fmul   %st,%st(1)
c003460a:	83 c0 01             	add    $0x1,%eax
c003460d:	d9 ee                	fldz   
c003460f:	d9 ca                	fxch   %st(2)
c0034611:	db ea                	fucomi %st(2),%st
c0034613:	dd da                	fstp   %st(2)
c0034615:	0f 8b 73 09 00 00    	jnp    c0034f8e <_dtoa_r+0xf3e>
c003461b:	d9 c1                	fld    %st(1)
c003461d:	39 d8                	cmp    %ebx,%eax
c003461f:	d8 f3                	fdiv   %st(3),%st
c0034621:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034624:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034627:	db 5d d4             	fistpl -0x2c(%ebp)
c003462a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003462d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034630:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034633:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034636:	db 45 d4             	fildl  -0x2c(%ebp)
c0034639:	d8 cb                	fmul   %st(3),%st
c003463b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003463e:	de ea                	fsubrp %st,%st(2)
c0034640:	75 c6                	jne    c0034608 <_dtoa_r+0x5b8>
c0034642:	dd d8                	fstp   %st(0)
c0034644:	d8 c0                	fadd   %st(0),%st
c0034646:	db e9                	fucomi %st(1),%st
c0034648:	77 1e                	ja     c0034668 <_dtoa_r+0x618>
c003464a:	d9 c9                	fxch   %st(1)
c003464c:	df e9                	fucomip %st(1),%st
c003464e:	dd d8                	fstp   %st(0)
c0034650:	0f 8a 44 09 00 00    	jp     c0034f9a <_dtoa_r+0xf4a>
c0034656:	0f 85 3e 09 00 00    	jne    c0034f9a <_dtoa_r+0xf4a>
c003465c:	83 e2 01             	and    $0x1,%edx
c003465f:	90                   	nop
c0034660:	0f 84 34 09 00 00    	je     c0034f9a <_dtoa_r+0xf4a>
c0034666:	eb 04                	jmp    c003466c <_dtoa_r+0x61c>
c0034668:	dd d8                	fstp   %st(0)
c003466a:	dd d8                	fstp   %st(0)
c003466c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c003466f:	89 fb                	mov    %edi,%ebx
c0034671:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034675:	89 cf                	mov    %ecx,%edi
c0034677:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c003467a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c003467d:	eb 0f                	jmp    c003468e <_dtoa_r+0x63e>
c003467f:	90                   	nop
c0034680:	39 d3                	cmp    %edx,%ebx
c0034682:	0f 84 75 09 00 00    	je     c0034ffd <_dtoa_r+0xfad>
c0034688:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c003468c:	89 d7                	mov    %edx,%edi
c003468e:	3c 39                	cmp    $0x39,%al
c0034690:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034693:	74 eb                	je     c0034680 <_dtoa_r+0x630>
c0034695:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034698:	83 c0 01             	add    $0x1,%eax
c003469b:	88 02                	mov    %al,(%edx)
c003469d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c00346a0:	e9 fb 01 00 00       	jmp    c00348a0 <_dtoa_r+0x850>
c00346a5:	8d 76 00             	lea    0x0(%esi),%esi
c00346a8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00346ab:	85 c9                	test   %ecx,%ecx
c00346ad:	0f 85 9d 02 00 00    	jne    c0034950 <_dtoa_r+0x900>
c00346b3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00346b6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00346b9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00346c0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346c3:	85 c0                	test   %eax,%eax
c00346c5:	7e 14                	jle    c00346db <_dtoa_r+0x68b>
c00346c7:	85 db                	test   %ebx,%ebx
c00346c9:	7e 10                	jle    c00346db <_dtoa_r+0x68b>
c00346cb:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346ce:	39 d8                	cmp    %ebx,%eax
c00346d0:	0f 4f c3             	cmovg  %ebx,%eax
c00346d3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00346d6:	29 c3                	sub    %eax,%ebx
c00346d8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c00346db:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00346de:	85 c0                	test   %eax,%eax
c00346e0:	7e 61                	jle    c0034743 <_dtoa_r+0x6f3>
c00346e2:	8b 45 98             	mov    -0x68(%ebp),%eax
c00346e5:	85 c0                	test   %eax,%eax
c00346e7:	0f 84 72 04 00 00    	je     c0034b5f <_dtoa_r+0xb0f>
c00346ed:	85 d2                	test   %edx,%edx
c00346ef:	7e 47                	jle    c0034738 <_dtoa_r+0x6e8>
c00346f1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00346f4:	89 54 24 08          	mov    %edx,0x8(%esp)
c00346f8:	89 34 24             	mov    %esi,(%esp)
c00346fb:	89 55 88             	mov    %edx,-0x78(%ebp)
c00346fe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034702:	e8 f9 19 00 00       	call   c0036100 <__pow5mult>
c0034707:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c003470a:	89 34 24             	mov    %esi,(%esp)
c003470d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034711:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034715:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034718:	e8 13 18 00 00       	call   c0035f30 <__multiply>
c003471d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034720:	89 34 24             	mov    %esi,(%esp)
c0034723:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034727:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003472a:	e8 f1 14 00 00       	call   c0035c20 <_Bfree>
c003472f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034732:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034735:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034738:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003473b:	29 d0                	sub    %edx,%eax
c003473d:	0f 85 1f 04 00 00    	jne    c0034b62 <_dtoa_r+0xb12>
c0034743:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003474a:	00 
c003474b:	89 34 24             	mov    %esi,(%esp)
c003474e:	e8 ad 17 00 00       	call   c0035f00 <__i2b>
c0034753:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034756:	85 c9                	test   %ecx,%ecx
c0034758:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003475b:	7e 13                	jle    c0034770 <_dtoa_r+0x720>
c003475d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034761:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034765:	89 34 24             	mov    %esi,(%esp)
c0034768:	e8 93 19 00 00       	call   c0036100 <__pow5mult>
c003476d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034770:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034774:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c003477b:	0f 8e f7 05 00 00    	jle    c0034d78 <_dtoa_r+0xd28>
c0034781:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034784:	ba 01 00 00 00       	mov    $0x1,%edx
c0034789:	85 c0                	test   %eax,%eax
c003478b:	0f 85 27 05 00 00    	jne    c0034cb8 <_dtoa_r+0xc68>
c0034791:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034794:	01 d0                	add    %edx,%eax
c0034796:	83 e0 1f             	and    $0x1f,%eax
c0034799:	89 c2                	mov    %eax,%edx
c003479b:	0f 84 57 03 00 00    	je     c0034af8 <_dtoa_r+0xaa8>
c00347a1:	b8 20 00 00 00       	mov    $0x20,%eax
c00347a6:	29 d0                	sub    %edx,%eax
c00347a8:	83 f8 04             	cmp    $0x4,%eax
c00347ab:	0f 8e 8c 0a 00 00    	jle    c003523d <_dtoa_r+0x11ed>
c00347b1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c00347b6:	29 d0                	sub    %edx,%eax
c00347b8:	01 45 a0             	add    %eax,-0x60(%ebp)
c00347bb:	01 c3                	add    %eax,%ebx
c00347bd:	01 45 ac             	add    %eax,-0x54(%ebp)
c00347c0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c00347c3:	85 c0                	test   %eax,%eax
c00347c5:	7e 16                	jle    c00347dd <_dtoa_r+0x78d>
c00347c7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00347cb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00347ce:	89 34 24             	mov    %esi,(%esp)
c00347d1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347d5:	e8 46 1a 00 00       	call   c0036220 <__lshift>
c00347da:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00347dd:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347e0:	85 c0                	test   %eax,%eax
c00347e2:	7e 16                	jle    c00347fa <_dtoa_r+0x7aa>
c00347e4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00347e8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00347eb:	89 34 24             	mov    %esi,(%esp)
c00347ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347f2:	e8 29 1a 00 00       	call   c0036220 <__lshift>
c00347f7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00347fa:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00347fd:	85 c0                	test   %eax,%eax
c00347ff:	0f 85 d3 04 00 00    	jne    c0034cd8 <_dtoa_r+0xc88>
c0034805:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034809:	0f 8e 11 02 00 00    	jle    c0034a20 <_dtoa_r+0x9d0>
c003480f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034812:	85 c0                	test   %eax,%eax
c0034814:	0f 8f 06 02 00 00    	jg     c0034a20 <_dtoa_r+0x9d0>
c003481a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003481d:	85 c0                	test   %eax,%eax
c003481f:	0f 85 e0 01 00 00    	jne    c0034a05 <_dtoa_r+0x9b5>
c0034825:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034828:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003482f:	00 
c0034830:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034837:	00 
c0034838:	89 34 24             	mov    %esi,(%esp)
c003483b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003483f:	e8 fc 13 00 00       	call   c0035c40 <__multadd>
c0034844:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034847:	89 44 24 04          	mov    %eax,0x4(%esp)
c003484b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003484e:	89 04 24             	mov    %eax,(%esp)
c0034851:	e8 ea 1a 00 00       	call   c0036340 <__mcmp>
c0034856:	85 c0                	test   %eax,%eax
c0034858:	0f 8e a7 01 00 00    	jle    c0034a05 <_dtoa_r+0x9b5>
c003485e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034862:	89 fb                	mov    %edi,%ebx
c0034864:	83 c7 01             	add    $0x1,%edi
c0034867:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003486b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034872:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034875:	89 34 24             	mov    %esi,(%esp)
c0034878:	89 44 24 04          	mov    %eax,0x4(%esp)
c003487c:	e8 9f 13 00 00       	call   c0035c20 <_Bfree>
c0034881:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034884:	85 c0                	test   %eax,%eax
c0034886:	74 18                	je     c00348a0 <_dtoa_r+0x850>
c0034888:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c003488b:	0f 85 a7 02 00 00    	jne    c0034b38 <_dtoa_r+0xae8>
c0034891:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034894:	89 34 24             	mov    %esi,(%esp)
c0034897:	89 44 24 04          	mov    %eax,0x4(%esp)
c003489b:	e8 80 13 00 00       	call   c0035c20 <_Bfree>
c00348a0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00348a3:	89 34 24             	mov    %esi,(%esp)
c00348a6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348aa:	e8 71 13 00 00       	call   c0035c20 <_Bfree>
c00348af:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00348b2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c00348b5:	c6 07 00             	movb   $0x0,(%edi)
c00348b8:	83 c0 01             	add    $0x1,%eax
c00348bb:	89 06                	mov    %eax,(%esi)
c00348bd:	8b 45 24             	mov    0x24(%ebp),%eax
c00348c0:	85 c0                	test   %eax,%eax
c00348c2:	0f 84 90 02 00 00    	je     c0034b58 <_dtoa_r+0xb08>
c00348c8:	8b 45 24             	mov    0x24(%ebp),%eax
c00348cb:	89 38                	mov    %edi,(%eax)
c00348cd:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00348d3:	89 d8                	mov    %ebx,%eax
c00348d5:	5b                   	pop    %ebx
c00348d6:	5e                   	pop    %esi
c00348d7:	5f                   	pop    %edi
c00348d8:	5d                   	pop    %ebp
c00348d9:	c3                   	ret    
c00348da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00348e0:	db 45 b8             	fildl  -0x48(%ebp)
c00348e3:	df e9                	fucomip %st(1),%st
c00348e5:	dd d8                	fstp   %st(0)
c00348e7:	7a 06                	jp     c00348ef <_dtoa_r+0x89f>
c00348e9:	0f 84 cc f8 ff ff    	je     c00341bb <_dtoa_r+0x16b>
c00348ef:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00348f3:	e9 c3 f8 ff ff       	jmp    c00341bb <_dtoa_r+0x16b>
c00348f8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00348fb:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00348fe:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0034905:	f7 d8                	neg    %eax
c0034907:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003490a:	e9 0c f9 ff ff       	jmp    c003421b <_dtoa_r+0x1cb>
c003490f:	90                   	nop
c0034910:	f7 d8                	neg    %eax
c0034912:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034915:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c003491c:	e9 e2 f8 ff ff       	jmp    c0034203 <_dtoa_r+0x1b3>
c0034921:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034928:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003492b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034930:	29 d9                	sub    %ebx,%ecx
c0034932:	d3 e0                	shl    %cl,%eax
c0034934:	e9 1b f8 ff ff       	jmp    c0034154 <_dtoa_r+0x104>
c0034939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034940:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034947:	e9 a0 f8 ff ff       	jmp    c00341ec <_dtoa_r+0x19c>
c003494c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034950:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034954:	0f 8e fe 06 00 00    	jle    c0035058 <_dtoa_r+0x1008>
c003495a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003495d:	83 e8 01             	sub    $0x1,%eax
c0034960:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034963:	0f 8c 3b 06 00 00    	jl     c0034fa4 <_dtoa_r+0xf54>
c0034969:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003496c:	29 c2                	sub    %eax,%edx
c003496e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034971:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034974:	85 c9                	test   %ecx,%ecx
c0034976:	89 c8                	mov    %ecx,%eax
c0034978:	0f 88 83 07 00 00    	js     c0035101 <_dtoa_r+0x10b1>
c003497e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034985:	00 
c0034986:	89 34 24             	mov    %esi,(%esp)
c0034989:	89 55 8c             	mov    %edx,-0x74(%ebp)
c003498c:	01 45 a0             	add    %eax,-0x60(%ebp)
c003498f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034992:	e8 69 15 00 00       	call   c0035f00 <__i2b>
c0034997:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003499a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003499d:	e9 1e fd ff ff       	jmp    c00346c0 <_dtoa_r+0x670>
c00349a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00349a8:	d9 c1                	fld    %st(1)
c00349aa:	b9 02 00 00 00       	mov    $0x2,%ecx
c00349af:	e9 37 fa ff ff       	jmp    c00343eb <_dtoa_r+0x39b>
c00349b4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00349b7:	db 45 d4             	fildl  -0x2c(%ebp)
c00349ba:	d8 c9                	fmul   %st(1),%st
c00349bc:	d8 05 dc 99 03 c0    	fadds  0xc00399dc
c00349c2:	dd 5d c0             	fstpl  -0x40(%ebp)
c00349c5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00349cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349d0:	d8 25 e0 99 03 c0    	fsubs  0xc00399e0
c00349d6:	dd 45 c0             	fldl   -0x40(%ebp)
c00349d9:	d9 c9                	fxch   %st(1)
c00349db:	db e9                	fucomi %st(1),%st
c00349dd:	0f 87 0d 02 00 00    	ja     c0034bf0 <_dtoa_r+0xba0>
c00349e3:	d9 c9                	fxch   %st(1)
c00349e5:	d9 e0                	fchs   
c00349e7:	df e9                	fucomip %st(1),%st
c00349e9:	dd d8                	fstp   %st(0)
c00349eb:	0f 86 a7 01 00 00    	jbe    c0034b98 <_dtoa_r+0xb48>
c00349f1:	dd d8                	fstp   %st(0)
c00349f3:	eb 02                	jmp    c00349f7 <_dtoa_r+0x9a7>
c00349f5:	dd d8                	fstp   %st(0)
c00349f7:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00349fe:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034a05:	8b 45 18             	mov    0x18(%ebp),%eax
c0034a08:	89 fb                	mov    %edi,%ebx
c0034a0a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a11:	f7 d0                	not    %eax
c0034a13:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034a16:	e9 57 fe ff ff       	jmp    c0034872 <_dtoa_r+0x822>
c0034a1b:	90                   	nop
c0034a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a20:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034a23:	85 c0                	test   %eax,%eax
c0034a25:	0f 85 c5 03 00 00    	jne    c0034df0 <_dtoa_r+0xda0>
c0034a2b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034a2e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034a33:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034a36:	eb 24                	jmp    c0034a5c <_dtoa_r+0xa0c>
c0034a38:	8b 45 08             	mov    0x8(%ebp),%eax
c0034a3b:	83 c3 01             	add    $0x1,%ebx
c0034a3e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034a42:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034a49:	00 
c0034a4a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034a51:	00 
c0034a52:	89 04 24             	mov    %eax,(%esp)
c0034a55:	e8 e6 11 00 00       	call   c0035c40 <__multadd>
c0034a5a:	89 c6                	mov    %eax,%esi
c0034a5c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a5f:	89 f0                	mov    %esi,%eax
c0034a61:	e8 1a f4 ff ff       	call   c0033e80 <quorem>
c0034a66:	83 c0 30             	add    $0x30,%eax
c0034a69:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034a6c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034a70:	7c c6                	jl     c0034a38 <_dtoa_r+0x9e8>
c0034a72:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034a75:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034a78:	ba 01 00 00 00       	mov    $0x1,%edx
c0034a7d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034a80:	8b 75 08             	mov    0x8(%ebp),%esi
c0034a83:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a8a:	85 c0                	test   %eax,%eax
c0034a8c:	0f 4f d0             	cmovg  %eax,%edx
c0034a8f:	01 fa                	add    %edi,%edx
c0034a91:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034a94:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034a9b:	00 
c0034a9c:	89 34 24             	mov    %esi,(%esp)
c0034a9f:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034aa2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034aa6:	e8 75 17 00 00       	call   c0036220 <__lshift>
c0034aab:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034aae:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034ab2:	89 04 24             	mov    %eax,(%esp)
c0034ab5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034ab8:	e8 83 18 00 00       	call   c0036340 <__mcmp>
c0034abd:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034ac0:	83 f8 00             	cmp    $0x0,%eax
c0034ac3:	0f 8e 41 06 00 00    	jle    c003510a <_dtoa_r+0x10ba>
c0034ac9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034acd:	eb 0f                	jmp    c0034ade <_dtoa_r+0xa8e>
c0034acf:	90                   	nop
c0034ad0:	39 c7                	cmp    %eax,%edi
c0034ad2:	0f 84 70 05 00 00    	je     c0035048 <_dtoa_r+0xff8>
c0034ad8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034adc:	89 c2                	mov    %eax,%edx
c0034ade:	80 f9 39             	cmp    $0x39,%cl
c0034ae1:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034ae4:	74 ea                	je     c0034ad0 <_dtoa_r+0xa80>
c0034ae6:	83 c1 01             	add    $0x1,%ecx
c0034ae9:	89 fb                	mov    %edi,%ebx
c0034aeb:	88 08                	mov    %cl,(%eax)
c0034aed:	89 d7                	mov    %edx,%edi
c0034aef:	e9 7e fd ff ff       	jmp    c0034872 <_dtoa_r+0x822>
c0034af4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034af8:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034afd:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034b00:	01 c3                	add    %eax,%ebx
c0034b02:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034b05:	e9 b6 fc ff ff       	jmp    c00347c0 <_dtoa_r+0x770>
c0034b0a:	ba 01 00 00 00       	mov    $0x1,%edx
c0034b0f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034b16:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034b1d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034b24:	21 c2                	and    %eax,%edx
c0034b26:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034b29:	31 d2                	xor    %edx,%edx
c0034b2b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b32:	e9 62 f8 ff ff       	jmp    c0034399 <_dtoa_r+0x349>
c0034b37:	90                   	nop
c0034b38:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034b3b:	85 d2                	test   %edx,%edx
c0034b3d:	0f 84 4e fd ff ff    	je     c0034891 <_dtoa_r+0x841>
c0034b43:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034b46:	89 34 24             	mov    %esi,(%esp)
c0034b49:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b4d:	e8 ce 10 00 00       	call   c0035c20 <_Bfree>
c0034b52:	e9 3a fd ff ff       	jmp    c0034891 <_dtoa_r+0x841>
c0034b57:	90                   	nop
c0034b58:	89 d8                	mov    %ebx,%eax
c0034b5a:	e9 89 f5 ff ff       	jmp    c00340e8 <_dtoa_r+0x98>
c0034b5f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034b62:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034b66:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034b69:	89 34 24             	mov    %esi,(%esp)
c0034b6c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b70:	e8 8b 15 00 00       	call   c0036100 <__pow5mult>
c0034b75:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034b78:	e9 c6 fb ff ff       	jmp    c0034743 <_dtoa_r+0x6f3>
c0034b7d:	dd d8                	fstp   %st(0)
c0034b7f:	dd d8                	fstp   %st(0)
c0034b81:	eb 15                	jmp    c0034b98 <_dtoa_r+0xb48>
c0034b83:	90                   	nop
c0034b84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b88:	dd d8                	fstp   %st(0)
c0034b8a:	dd d8                	fstp   %st(0)
c0034b8c:	dd d8                	fstp   %st(0)
c0034b8e:	eb 08                	jmp    c0034b98 <_dtoa_r+0xb48>
c0034b90:	dd d8                	fstp   %st(0)
c0034b92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034b98:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034b9b:	e9 cf f9 ff ff       	jmp    c003456f <_dtoa_r+0x51f>
c0034ba0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034ba3:	f7 d8                	neg    %eax
c0034ba5:	0f 84 6a 04 00 00    	je     c0035015 <_dtoa_r+0xfc5>
c0034bab:	89 c2                	mov    %eax,%edx
c0034bad:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034bb2:	83 e2 0f             	and    $0xf,%edx
c0034bb5:	c1 f8 04             	sar    $0x4,%eax
c0034bb8:	dd 04 d5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%edx,8)
c0034bbf:	85 c0                	test   %eax,%eax
c0034bc1:	d8 c9                	fmul   %st(1),%st
c0034bc3:	0f 84 4a f8 ff ff    	je     c0034413 <_dtoa_r+0x3c3>
c0034bc9:	31 d2                	xor    %edx,%edx
c0034bcb:	90                   	nop
c0034bcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034bd0:	a8 01                	test   $0x1,%al
c0034bd2:	74 0a                	je     c0034bde <_dtoa_r+0xb8e>
c0034bd4:	dc 0c d5 80 9a 03 c0 	fmull  -0x3ffc6580(,%edx,8)
c0034bdb:	83 c1 01             	add    $0x1,%ecx
c0034bde:	83 c2 01             	add    $0x1,%edx
c0034be1:	d1 f8                	sar    %eax
c0034be3:	75 eb                	jne    c0034bd0 <_dtoa_r+0xb80>
c0034be5:	e9 29 f8 ff ff       	jmp    c0034413 <_dtoa_r+0x3c3>
c0034bea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034bf0:	dd d8                	fstp   %st(0)
c0034bf2:	dd d8                	fstp   %st(0)
c0034bf4:	dd d8                	fstp   %st(0)
c0034bf6:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034bfd:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034c04:	e9 55 fc ff ff       	jmp    c003485e <_dtoa_r+0x80e>
c0034c09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034c10:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034c13:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034c16:	dd 45 c0             	fldl   -0x40(%ebp)
c0034c19:	dc 0c c5 c0 9a 03 c0 	fmull  -0x3ffc6540(,%eax,8)
c0034c20:	d9 c9                	fxch   %st(1)
c0034c22:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034c25:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034c29:	8d 57 01             	lea    0x1(%edi),%edx
c0034c2c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034c2f:	b4 0c                	mov    $0xc,%ah
c0034c31:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c35:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c38:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c3b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c3e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c41:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034c44:	83 c0 30             	add    $0x30,%eax
c0034c47:	83 f9 01             	cmp    $0x1,%ecx
c0034c4a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c4d:	de e9                	fsubrp %st,%st(1)
c0034c4f:	88 07                	mov    %al,(%edi)
c0034c51:	89 d0                	mov    %edx,%eax
c0034c53:	74 37                	je     c0034c8c <_dtoa_r+0xc3c>
c0034c55:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c0034c5b:	eb 05                	jmp    c0034c62 <_dtoa_r+0xc12>
c0034c5d:	8d 76 00             	lea    0x0(%esi),%esi
c0034c60:	d9 c9                	fxch   %st(1)
c0034c62:	dc c9                	fmul   %st,%st(1)
c0034c64:	d9 c9                	fxch   %st(1)
c0034c66:	83 c0 01             	add    $0x1,%eax
c0034c69:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c6c:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c6f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c72:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034c75:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034c78:	83 c1 30             	add    $0x30,%ecx
c0034c7b:	39 d8                	cmp    %ebx,%eax
c0034c7d:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c80:	de e9                	fsubrp %st,%st(1)
c0034c82:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034c85:	75 d9                	jne    c0034c60 <_dtoa_r+0xc10>
c0034c87:	dd d9                	fstp   %st(1)
c0034c89:	03 55 88             	add    -0x78(%ebp),%edx
c0034c8c:	d9 05 e4 99 03 c0    	flds   0xc00399e4
c0034c92:	d9 c2                	fld    %st(2)
c0034c94:	d8 c1                	fadd   %st(1),%st
c0034c96:	d9 ca                	fxch   %st(2)
c0034c98:	db ea                	fucomi %st(2),%st
c0034c9a:	dd da                	fstp   %st(2)
c0034c9c:	0f 86 7f 03 00 00    	jbe    c0035021 <_dtoa_r+0xfd1>
c0034ca2:	dd d8                	fstp   %st(0)
c0034ca4:	dd d8                	fstp   %st(0)
c0034ca6:	dd d8                	fstp   %st(0)
c0034ca8:	dd d8                	fstp   %st(0)
c0034caa:	89 fb                	mov    %edi,%ebx
c0034cac:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034cb0:	89 d7                	mov    %edx,%edi
c0034cb2:	e9 d7 f9 ff ff       	jmp    c003468e <_dtoa_r+0x63e>
c0034cb7:	90                   	nop
c0034cb8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034cbb:	8b 41 10             	mov    0x10(%ecx),%eax
c0034cbe:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034cc2:	89 04 24             	mov    %eax,(%esp)
c0034cc5:	e8 56 11 00 00       	call   c0035e20 <__hi0bits>
c0034cca:	ba 20 00 00 00       	mov    $0x20,%edx
c0034ccf:	29 c2                	sub    %eax,%edx
c0034cd1:	e9 bb fa ff ff       	jmp    c0034791 <_dtoa_r+0x741>
c0034cd6:	66 90                	xchg   %ax,%ax
c0034cd8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034cdb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034cdf:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034ce2:	89 04 24             	mov    %eax,(%esp)
c0034ce5:	e8 56 16 00 00       	call   c0036340 <__mcmp>
c0034cea:	85 c0                	test   %eax,%eax
c0034cec:	0f 89 13 fb ff ff    	jns    c0034805 <_dtoa_r+0x7b5>
c0034cf2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034cf5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034cfc:	00 
c0034cfd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034d04:	00 
c0034d05:	89 34 24             	mov    %esi,(%esp)
c0034d08:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d0c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034d10:	e8 2b 0f 00 00       	call   c0035c40 <__multadd>
c0034d15:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034d18:	85 c9                	test   %ecx,%ecx
c0034d1a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034d1d:	0f 85 8d 00 00 00    	jne    c0034db0 <_dtoa_r+0xd60>
c0034d23:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034d27:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034d2a:	7f 0a                	jg     c0034d36 <_dtoa_r+0xce6>
c0034d2c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034d30:	0f 8f ff 04 00 00    	jg     c0035235 <_dtoa_r+0x11e5>
c0034d36:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034d39:	e9 ed fc ff ff       	jmp    c0034a2b <_dtoa_r+0x9db>
c0034d3e:	66 90                	xchg   %ax,%ax
c0034d40:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034d43:	85 db                	test   %ebx,%ebx
c0034d45:	0f 85 aa fc ff ff    	jne    c00349f5 <_dtoa_r+0x9a5>
c0034d4b:	d8 0d e0 99 03 c0    	fmuls  0xc00399e0
c0034d51:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034d58:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034d5f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034d62:	d9 c9                	fxch   %st(1)
c0034d64:	df e9                	fucomip %st(1),%st
c0034d66:	dd d8                	fstp   %st(0)
c0034d68:	0f 83 97 fc ff ff    	jae    c0034a05 <_dtoa_r+0x9b5>
c0034d6e:	e9 eb fa ff ff       	jmp    c003485e <_dtoa_r+0x80e>
c0034d73:	90                   	nop
c0034d74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034d78:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034d7b:	85 c0                	test   %eax,%eax
c0034d7d:	0f 85 fe f9 ff ff    	jne    c0034781 <_dtoa_r+0x731>
c0034d83:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034d86:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034d8b:	0f 85 f0 f9 ff ff    	jne    c0034781 <_dtoa_r+0x731>
c0034d91:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034d96:	0f 84 e5 f9 ff ff    	je     c0034781 <_dtoa_r+0x731>
c0034d9c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034da0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034da4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034dab:	e9 d1 f9 ff ff       	jmp    c0034781 <_dtoa_r+0x731>
c0034db0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034db3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034dba:	00 
c0034dbb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034dc2:	00 
c0034dc3:	89 34 24             	mov    %esi,(%esp)
c0034dc6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034dca:	e8 71 0e 00 00       	call   c0035c40 <__multadd>
c0034dcf:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034dd2:	85 d2                	test   %edx,%edx
c0034dd4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034dd7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034dda:	7f 0a                	jg     c0034de6 <_dtoa_r+0xd96>
c0034ddc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034de0:	0f 8f 4f 04 00 00    	jg     c0035235 <_dtoa_r+0x11e5>
c0034de6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034de9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034df0:	85 db                	test   %ebx,%ebx
c0034df2:	7e 16                	jle    c0034e0a <_dtoa_r+0xdba>
c0034df4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034df7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034dfb:	89 34 24             	mov    %esi,(%esp)
c0034dfe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e02:	e8 19 14 00 00       	call   c0036220 <__lshift>
c0034e07:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e0a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034e0d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e10:	85 db                	test   %ebx,%ebx
c0034e12:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e15:	0f 85 11 03 00 00    	jne    c003512c <_dtoa_r+0x10dc>
c0034e1b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034e1e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034e21:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034e24:	01 f8                	add    %edi,%eax
c0034e26:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034e29:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034e2c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e2f:	83 e0 01             	and    $0x1,%eax
c0034e32:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034e35:	eb 2e                	jmp    c0034e65 <_dtoa_r+0xe15>
c0034e37:	90                   	nop
c0034e38:	e8 03 0e 00 00       	call   c0035c40 <__multadd>
c0034e3d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e44:	00 
c0034e45:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e4c:	00 
c0034e4d:	89 34 24             	mov    %esi,(%esp)
c0034e50:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e53:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034e56:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e5a:	e8 e1 0d 00 00       	call   c0035c40 <__multadd>
c0034e5f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e62:	83 c3 01             	add    $0x1,%ebx
c0034e65:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034e68:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034e6b:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034e6e:	89 f8                	mov    %edi,%eax
c0034e70:	e8 0b f0 ff ff       	call   c0033e80 <quorem>
c0034e75:	89 3c 24             	mov    %edi,(%esp)
c0034e78:	8d 48 30             	lea    0x30(%eax),%ecx
c0034e7b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034e7e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034e81:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034e84:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034e88:	e8 b3 14 00 00       	call   c0036340 <__mcmp>
c0034e8d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034e90:	89 34 24             	mov    %esi,(%esp)
c0034e93:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034e97:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034e9a:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034e9d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ea1:	e8 ea 14 00 00       	call   c0036390 <__mdiff>
c0034ea6:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034ea9:	89 c2                	mov    %eax,%edx
c0034eab:	85 c9                	test   %ecx,%ecx
c0034ead:	0f 85 c5 00 00 00    	jne    c0034f78 <_dtoa_r+0xf28>
c0034eb3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034eb7:	89 3c 24             	mov    %edi,(%esp)
c0034eba:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034ebd:	e8 7e 14 00 00       	call   c0036340 <__mcmp>
c0034ec2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034ec5:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034ec9:	89 34 24             	mov    %esi,(%esp)
c0034ecc:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034ecf:	e8 4c 0d 00 00       	call   c0035c20 <_Bfree>
c0034ed4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ed7:	89 c1                	mov    %eax,%ecx
c0034ed9:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034edc:	75 0b                	jne    c0034ee9 <_dtoa_r+0xe99>
c0034ede:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034ee1:	85 d2                	test   %edx,%edx
c0034ee3:	0f 84 fb 02 00 00    	je     c00351e4 <_dtoa_r+0x1194>
c0034ee9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034eec:	85 d2                	test   %edx,%edx
c0034eee:	0f 88 7f 01 00 00    	js     c0035073 <_dtoa_r+0x1023>
c0034ef4:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034ef7:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034efa:	75 0b                	jne    c0034f07 <_dtoa_r+0xeb7>
c0034efc:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034eff:	85 c9                	test   %ecx,%ecx
c0034f01:	0f 84 6c 01 00 00    	je     c0035073 <_dtoa_r+0x1023>
c0034f07:	85 c0                	test   %eax,%eax
c0034f09:	0f 8f 82 02 00 00    	jg     c0035191 <_dtoa_r+0x1141>
c0034f0f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034f13:	89 da                	mov    %ebx,%edx
c0034f15:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034f18:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034f1b:	0f 84 8d 02 00 00    	je     c00351ae <_dtoa_r+0x115e>
c0034f21:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034f25:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f2c:	00 
c0034f2d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f34:	00 
c0034f35:	89 34 24             	mov    %esi,(%esp)
c0034f38:	e8 03 0d 00 00       	call   c0035c40 <__multadd>
c0034f3d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f44:	00 
c0034f45:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f4c:	00 
c0034f4d:	89 34 24             	mov    %esi,(%esp)
c0034f50:	89 c7                	mov    %eax,%edi
c0034f52:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f55:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034f58:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034f5b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f5f:	0f 85 d3 fe ff ff    	jne    c0034e38 <_dtoa_r+0xde8>
c0034f65:	e8 d6 0c 00 00       	call   c0035c40 <__multadd>
c0034f6a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034f6d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034f70:	e9 ed fe ff ff       	jmp    c0034e62 <_dtoa_r+0xe12>
c0034f75:	8d 76 00             	lea    0x0(%esi),%esi
c0034f78:	b8 01 00 00 00       	mov    $0x1,%eax
c0034f7d:	e9 43 ff ff ff       	jmp    c0034ec5 <_dtoa_r+0xe75>
c0034f82:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034f89:	e9 d2 f2 ff ff       	jmp    c0034260 <_dtoa_r+0x210>
c0034f8e:	0f 85 87 f6 ff ff    	jne    c003461b <_dtoa_r+0x5cb>
c0034f94:	dd d8                	fstp   %st(0)
c0034f96:	dd d8                	fstp   %st(0)
c0034f98:	dd d8                	fstp   %st(0)
c0034f9a:	89 fb                	mov    %edi,%ebx
c0034f9c:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034f9f:	e9 fc f8 ff ff       	jmp    c00348a0 <_dtoa_r+0x850>
c0034fa4:	89 c2                	mov    %eax,%edx
c0034fa6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0034fa9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034fac:	01 55 94             	add    %edx,-0x6c(%ebp)
c0034faf:	31 d2                	xor    %edx,%edx
c0034fb1:	e9 b8 f9 ff ff       	jmp    c003496e <_dtoa_r+0x91e>
c0034fb6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034fb9:	85 c0                	test   %eax,%eax
c0034fbb:	0f 84 f3 f9 ff ff    	je     c00349b4 <_dtoa_r+0x964>
c0034fc1:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034fc4:	85 c0                	test   %eax,%eax
c0034fc6:	0f 8e c4 fb ff ff    	jle    c0034b90 <_dtoa_r+0xb40>
c0034fcc:	d8 0d d8 99 03 c0    	fmuls  0xc00399d8
c0034fd2:	83 c1 01             	add    $0x1,%ecx
c0034fd5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034fd8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034fdb:	89 c1                	mov    %eax,%ecx
c0034fdd:	83 eb 01             	sub    $0x1,%ebx
c0034fe0:	db 45 d4             	fildl  -0x2c(%ebp)
c0034fe3:	d8 c9                	fmul   %st(1),%st
c0034fe5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0034fe8:	d8 05 dc 99 03 c0    	fadds  0xc00399dc
c0034fee:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034ff1:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034ff8:	e9 53 f4 ff ff       	jmp    c0034450 <_dtoa_r+0x400>
c0034ffd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035000:	c6 03 30             	movb   $0x30,(%ebx)
c0035003:	83 c0 01             	add    $0x1,%eax
c0035006:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0035009:	b8 31 00 00 00       	mov    $0x31,%eax
c003500e:	88 02                	mov    %al,(%edx)
c0035010:	e9 8b f8 ff ff       	jmp    c00348a0 <_dtoa_r+0x850>
c0035015:	d9 c0                	fld    %st(0)
c0035017:	b9 02 00 00 00       	mov    $0x2,%ecx
c003501c:	e9 f2 f3 ff ff       	jmp    c0034413 <_dtoa_r+0x3c3>
c0035021:	de e2                	fsubp  %st,%st(2)
c0035023:	d9 c9                	fxch   %st(1)
c0035025:	df e9                	fucomip %st(1),%st
c0035027:	dd d8                	fstp   %st(0)
c0035029:	0f 86 69 fb ff ff    	jbe    c0034b98 <_dtoa_r+0xb48>
c003502f:	dd d8                	fstp   %st(0)
c0035031:	eb 07                	jmp    c003503a <_dtoa_r+0xfea>
c0035033:	90                   	nop
c0035034:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035038:	89 c2                	mov    %eax,%edx
c003503a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003503e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035041:	74 f5                	je     c0035038 <_dtoa_r+0xfe8>
c0035043:	e9 d9 f4 ff ff       	jmp    c0034521 <_dtoa_r+0x4d1>
c0035048:	c6 07 31             	movb   $0x31,(%edi)
c003504b:	89 fb                	mov    %edi,%ebx
c003504d:	89 d7                	mov    %edx,%edi
c003504f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035053:	e9 1a f8 ff ff       	jmp    c0034872 <_dtoa_r+0x822>
c0035058:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003505b:	85 d2                	test   %edx,%edx
c003505d:	0f 84 1b 01 00 00    	je     c003517e <_dtoa_r+0x112e>
c0035063:	05 33 04 00 00       	add    $0x433,%eax
c0035068:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003506b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003506e:	e9 0b f9 ff ff       	jmp    c003497e <_dtoa_r+0x92e>
c0035073:	85 c0                	test   %eax,%eax
c0035075:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035078:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003507b:	7e 45                	jle    c00350c2 <_dtoa_r+0x1072>
c003507d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035080:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035087:	00 
c0035088:	89 34 24             	mov    %esi,(%esp)
c003508b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003508f:	e8 8c 11 00 00       	call   c0036220 <__lshift>
c0035094:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0035097:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003509b:	89 04 24             	mov    %eax,(%esp)
c003509e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00350a1:	e8 9a 12 00 00       	call   c0036340 <__mcmp>
c00350a6:	83 f8 00             	cmp    $0x0,%eax
c00350a9:	0f 8e 5b 01 00 00    	jle    c003520a <_dtoa_r+0x11ba>
c00350af:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00350b3:	0f 84 0c 01 00 00    	je     c00351c5 <_dtoa_r+0x1175>
c00350b9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00350bc:	83 c0 31             	add    $0x31,%eax
c00350bf:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00350c2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00350c5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00350c9:	89 cb                	mov    %ecx,%ebx
c00350cb:	88 03                	mov    %al,(%ebx)
c00350cd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00350d0:	89 fb                	mov    %edi,%ebx
c00350d2:	8d 79 01             	lea    0x1(%ecx),%edi
c00350d5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00350d8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00350db:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00350de:	e9 8f f7 ff ff       	jmp    c0034872 <_dtoa_r+0x822>
c00350e3:	dd d8                	fstp   %st(0)
c00350e5:	dd d8                	fstp   %st(0)
c00350e7:	dd d8                	fstp   %st(0)
c00350e9:	eb 0d                	jmp    c00350f8 <_dtoa_r+0x10a8>
c00350eb:	90                   	nop
c00350ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00350f0:	dd d8                	fstp   %st(0)
c00350f2:	dd d8                	fstp   %st(0)
c00350f4:	dd d8                	fstp   %st(0)
c00350f6:	dd d8                	fstp   %st(0)
c00350f8:	89 fb                	mov    %edi,%ebx
c00350fa:	89 d7                	mov    %edx,%edi
c00350fc:	e9 8d f5 ff ff       	jmp    c003468e <_dtoa_r+0x63e>
c0035101:	29 cb                	sub    %ecx,%ebx
c0035103:	31 c0                	xor    %eax,%eax
c0035105:	e9 74 f8 ff ff       	jmp    c003497e <_dtoa_r+0x92e>
c003510a:	75 0e                	jne    c003511a <_dtoa_r+0x10ca>
c003510c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035110:	74 08                	je     c003511a <_dtoa_r+0x10ca>
c0035112:	e9 b2 f9 ff ff       	jmp    c0034ac9 <_dtoa_r+0xa79>
c0035117:	90                   	nop
c0035118:	89 c2                	mov    %eax,%edx
c003511a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003511e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035121:	74 f5                	je     c0035118 <_dtoa_r+0x10c8>
c0035123:	89 fb                	mov    %edi,%ebx
c0035125:	89 d7                	mov    %edx,%edi
c0035127:	e9 46 f7 ff ff       	jmp    c0034872 <_dtoa_r+0x822>
c003512c:	8b 40 04             	mov    0x4(%eax),%eax
c003512f:	89 34 24             	mov    %esi,(%esp)
c0035132:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035136:	e8 45 0a 00 00       	call   c0035b80 <_Balloc>
c003513b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003513e:	89 c3                	mov    %eax,%ebx
c0035140:	8b 41 10             	mov    0x10(%ecx),%eax
c0035143:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003514a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003514e:	89 c8                	mov    %ecx,%eax
c0035150:	83 c0 0c             	add    $0xc,%eax
c0035153:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035157:	8d 43 0c             	lea    0xc(%ebx),%eax
c003515a:	89 04 24             	mov    %eax,(%esp)
c003515d:	e8 62 cc ff ff       	call   c0031dc4 <memcpy>
c0035162:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035169:	00 
c003516a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003516e:	89 34 24             	mov    %esi,(%esp)
c0035171:	e8 aa 10 00 00       	call   c0036220 <__lshift>
c0035176:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035179:	e9 9d fc ff ff       	jmp    c0034e1b <_dtoa_r+0xdcb>
c003517e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035183:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035186:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035189:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003518c:	e9 ed f7 ff ff       	jmp    c003497e <_dtoa_r+0x92e>
c0035191:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035195:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035198:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003519b:	74 28                	je     c00351c5 <_dtoa_r+0x1175>
c003519d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00351a1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00351a4:	83 c0 01             	add    $0x1,%eax
c00351a7:	89 cb                	mov    %ecx,%ebx
c00351a9:	e9 1d ff ff ff       	jmp    c00350cb <_dtoa_r+0x107b>
c00351ae:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351b1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351b4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351b7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351ba:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351bd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351c0:	e9 cc f8 ff ff       	jmp    c0034a91 <_dtoa_r+0xa41>
c00351c5:	8b 45 98             	mov    -0x68(%ebp),%eax
c00351c8:	b9 39 00 00 00       	mov    $0x39,%ecx
c00351cd:	8d 50 01             	lea    0x1(%eax),%edx
c00351d0:	c6 00 39             	movb   $0x39,(%eax)
c00351d3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351d6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351d9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351dc:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351df:	e9 fa f8 ff ff       	jmp    c0034ade <_dtoa_r+0xa8e>
c00351e4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00351e7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351ea:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351ed:	83 fb 39             	cmp    $0x39,%ebx
c00351f0:	74 d3                	je     c00351c5 <_dtoa_r+0x1175>
c00351f2:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00351f5:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00351f8:	83 c0 31             	add    $0x31,%eax
c00351fb:	85 c9                	test   %ecx,%ecx
c00351fd:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035200:	0f 4e c3             	cmovle %ebx,%eax
c0035203:	89 cb                	mov    %ecx,%ebx
c0035205:	e9 c1 fe ff ff       	jmp    c00350cb <_dtoa_r+0x107b>
c003520a:	0f 85 b2 fe ff ff    	jne    c00350c2 <_dtoa_r+0x1072>
c0035210:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035214:	0f 84 a8 fe ff ff    	je     c00350c2 <_dtoa_r+0x1072>
c003521a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035220:	e9 8a fe ff ff       	jmp    c00350af <_dtoa_r+0x105f>
c0035225:	0f 85 c7 f3 ff ff    	jne    c00345f2 <_dtoa_r+0x5a2>
c003522b:	dd d8                	fstp   %st(0)
c003522d:	dd d8                	fstp   %st(0)
c003522f:	90                   	nop
c0035230:	e9 65 fd ff ff       	jmp    c0034f9a <_dtoa_r+0xf4a>
c0035235:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035238:	e9 dd f5 ff ff       	jmp    c003481a <_dtoa_r+0x7ca>
c003523d:	8d 76 00             	lea    0x0(%esi),%esi
c0035240:	0f 84 7a f5 ff ff    	je     c00347c0 <_dtoa_r+0x770>
c0035246:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003524b:	29 d0                	sub    %edx,%eax
c003524d:	e9 ab f8 ff ff       	jmp    c0034afd <_dtoa_r+0xaad>
c0035252:	b8 01 00 00 00       	mov    $0x1,%eax
c0035257:	e9 d9 ef ff ff       	jmp    c0034235 <_dtoa_r+0x1e5>
c003525c:	31 d2                	xor    %edx,%edx
c003525e:	e9 36 f1 ff ff       	jmp    c0034399 <_dtoa_r+0x349>
c0035263:	66 90                	xchg   %ax,%ax
c0035265:	66 90                	xchg   %ax,%ax
c0035267:	66 90                	xchg   %ax,%ax
c0035269:	66 90                	xchg   %ax,%ax
c003526b:	66 90                	xchg   %ax,%ax
c003526d:	66 90                	xchg   %ax,%ax
c003526f:	90                   	nop

c0035270 <_setlocale_r>:
c0035270:	55                   	push   %ebp
c0035271:	89 e5                	mov    %esp,%ebp
c0035273:	53                   	push   %ebx
c0035274:	83 ec 14             	sub    $0x14,%esp
c0035277:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003527a:	85 db                	test   %ebx,%ebx
c003527c:	74 14                	je     c0035292 <_setlocale_r+0x22>
c003527e:	c7 44 24 04 00 9a 03 	movl   $0xc0039a00,0x4(%esp)
c0035285:	c0 
c0035286:	89 1c 24             	mov    %ebx,(%esp)
c0035289:	e8 82 17 00 00       	call   c0036a10 <strcmp>
c003528e:	85 c0                	test   %eax,%eax
c0035290:	75 0e                	jne    c00352a0 <_setlocale_r+0x30>
c0035292:	83 c4 14             	add    $0x14,%esp
c0035295:	b8 fc 97 03 c0       	mov    $0xc00397fc,%eax
c003529a:	5b                   	pop    %ebx
c003529b:	5d                   	pop    %ebp
c003529c:	c3                   	ret    
c003529d:	8d 76 00             	lea    0x0(%esi),%esi
c00352a0:	c7 44 24 04 fc 97 03 	movl   $0xc00397fc,0x4(%esp)
c00352a7:	c0 
c00352a8:	89 1c 24             	mov    %ebx,(%esp)
c00352ab:	e8 60 17 00 00       	call   c0036a10 <strcmp>
c00352b0:	85 c0                	test   %eax,%eax
c00352b2:	74 de                	je     c0035292 <_setlocale_r+0x22>
c00352b4:	89 1c 24             	mov    %ebx,(%esp)
c00352b7:	c7 44 24 04 36 98 03 	movl   $0xc0039836,0x4(%esp)
c00352be:	c0 
c00352bf:	e8 4c 17 00 00       	call   c0036a10 <strcmp>
c00352c4:	89 c2                	mov    %eax,%edx
c00352c6:	31 c0                	xor    %eax,%eax
c00352c8:	85 d2                	test   %edx,%edx
c00352ca:	ba fc 97 03 c0       	mov    $0xc00397fc,%edx
c00352cf:	0f 44 c2             	cmove  %edx,%eax
c00352d2:	83 c4 14             	add    $0x14,%esp
c00352d5:	5b                   	pop    %ebx
c00352d6:	5d                   	pop    %ebp
c00352d7:	c3                   	ret    
c00352d8:	90                   	nop
c00352d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00352e0 <__locale_charset>:
c00352e0:	55                   	push   %ebp
c00352e1:	b8 c0 d4 03 c0       	mov    $0xc003d4c0,%eax
c00352e6:	89 e5                	mov    %esp,%ebp
c00352e8:	5d                   	pop    %ebp
c00352e9:	c3                   	ret    
c00352ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00352f0 <__locale_mb_cur_max>:
c00352f0:	55                   	push   %ebp
c00352f1:	a1 18 d5 03 c0       	mov    0xc003d518,%eax
c00352f6:	89 e5                	mov    %esp,%ebp
c00352f8:	5d                   	pop    %ebp
c00352f9:	c3                   	ret    
c00352fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035300 <__locale_msgcharset>:
c0035300:	55                   	push   %ebp
c0035301:	b8 a0 d4 03 c0       	mov    $0xc003d4a0,%eax
c0035306:	89 e5                	mov    %esp,%ebp
c0035308:	5d                   	pop    %ebp
c0035309:	c3                   	ret    
c003530a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035310 <__locale_cjk_lang>:
c0035310:	55                   	push   %ebp
c0035311:	31 c0                	xor    %eax,%eax
c0035313:	89 e5                	mov    %esp,%ebp
c0035315:	5d                   	pop    %ebp
c0035316:	c3                   	ret    
c0035317:	89 f6                	mov    %esi,%esi
c0035319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035320 <_localeconv_r>:
c0035320:	55                   	push   %ebp
c0035321:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035326:	89 e5                	mov    %esp,%ebp
c0035328:	5d                   	pop    %ebp
c0035329:	c3                   	ret    
c003532a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035330 <setlocale>:
c0035330:	55                   	push   %ebp
c0035331:	89 e5                	mov    %esp,%ebp
c0035333:	83 ec 18             	sub    $0x18,%esp
c0035336:	e8 35 cc ff ff       	call   c0031f70 <__getreent>
c003533b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003533e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035342:	8b 55 08             	mov    0x8(%ebp),%edx
c0035345:	89 04 24             	mov    %eax,(%esp)
c0035348:	89 54 24 04          	mov    %edx,0x4(%esp)
c003534c:	e8 1f ff ff ff       	call   c0035270 <_setlocale_r>
c0035351:	c9                   	leave  
c0035352:	c3                   	ret    
c0035353:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035359:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035360 <localeconv>:
c0035360:	55                   	push   %ebp
c0035361:	89 e5                	mov    %esp,%ebp
c0035363:	83 ec 08             	sub    $0x8,%esp
c0035366:	e8 05 cc ff ff       	call   c0031f70 <__getreent>
c003536b:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035370:	c9                   	leave  
c0035371:	c3                   	ret    
c0035372:	66 90                	xchg   %ax,%ax
c0035374:	66 90                	xchg   %ax,%ax
c0035376:	66 90                	xchg   %ax,%ax
c0035378:	66 90                	xchg   %ax,%ax
c003537a:	66 90                	xchg   %ax,%ax
c003537c:	66 90                	xchg   %ax,%ax
c003537e:	66 90                	xchg   %ax,%ax

c0035380 <_malloc_r>:
c0035380:	55                   	push   %ebp
c0035381:	89 e5                	mov    %esp,%ebp
c0035383:	57                   	push   %edi
c0035384:	56                   	push   %esi
c0035385:	53                   	push   %ebx
c0035386:	83 ec 2c             	sub    $0x2c,%esp
c0035389:	8b 45 0c             	mov    0xc(%ebp),%eax
c003538c:	8d 50 0b             	lea    0xb(%eax),%edx
c003538f:	83 fa 16             	cmp    $0x16,%edx
c0035392:	76 6c                	jbe    c0035400 <_malloc_r+0x80>
c0035394:	89 d7                	mov    %edx,%edi
c0035396:	83 e7 f8             	and    $0xfffffff8,%edi
c0035399:	89 fe                	mov    %edi,%esi
c003539b:	c1 ee 1f             	shr    $0x1f,%esi
c003539e:	39 c7                	cmp    %eax,%edi
c00353a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00353a3:	89 f2                	mov    %esi,%edx
c00353a5:	72 67                	jb     c003540e <_malloc_r+0x8e>
c00353a7:	84 d2                	test   %dl,%dl
c00353a9:	75 63                	jne    c003540e <_malloc_r+0x8e>
c00353ab:	89 04 24             	mov    %eax,(%esp)
c00353ae:	e8 ad 07 00 00       	call   c0035b60 <__malloc_lock>
c00353b3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c00353b9:	77 65                	ja     c0035420 <_malloc_r+0xa0>
c00353bb:	89 fa                	mov    %edi,%edx
c00353bd:	c1 ea 03             	shr    $0x3,%edx
c00353c0:	8d 04 d5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%edx,8),%eax
c00353c7:	8b 58 0c             	mov    0xc(%eax),%ebx
c00353ca:	39 c3                	cmp    %eax,%ebx
c00353cc:	0f 84 3e 05 00 00    	je     c0035910 <_malloc_r+0x590>
c00353d2:	8b 43 04             	mov    0x4(%ebx),%eax
c00353d5:	83 e0 fc             	and    $0xfffffffc,%eax
c00353d8:	8b 53 0c             	mov    0xc(%ebx),%edx
c00353db:	8b 4b 08             	mov    0x8(%ebx),%ecx
c00353de:	89 51 0c             	mov    %edx,0xc(%ecx)
c00353e1:	89 4a 08             	mov    %ecx,0x8(%edx)
c00353e4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00353e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00353ec:	89 04 24             	mov    %eax,(%esp)
c00353ef:	e8 7c 07 00 00       	call   c0035b70 <__malloc_unlock>
c00353f4:	8d 43 08             	lea    0x8(%ebx),%eax
c00353f7:	83 c4 2c             	add    $0x2c,%esp
c00353fa:	5b                   	pop    %ebx
c00353fb:	5e                   	pop    %esi
c00353fc:	5f                   	pop    %edi
c00353fd:	5d                   	pop    %ebp
c00353fe:	c3                   	ret    
c00353ff:	90                   	nop
c0035400:	bf 10 00 00 00       	mov    $0x10,%edi
c0035405:	31 d2                	xor    %edx,%edx
c0035407:	39 c7                	cmp    %eax,%edi
c0035409:	8b 45 08             	mov    0x8(%ebp),%eax
c003540c:	73 99                	jae    c00353a7 <_malloc_r+0x27>
c003540e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035414:	83 c4 2c             	add    $0x2c,%esp
c0035417:	31 c0                	xor    %eax,%eax
c0035419:	5b                   	pop    %ebx
c003541a:	5e                   	pop    %esi
c003541b:	5f                   	pop    %edi
c003541c:	5d                   	pop    %ebp
c003541d:	c3                   	ret    
c003541e:	66 90                	xchg   %ax,%ax
c0035420:	89 fe                	mov    %edi,%esi
c0035422:	c1 ee 09             	shr    $0x9,%esi
c0035425:	85 f6                	test   %esi,%esi
c0035427:	0f 84 ab 01 00 00    	je     c00355d8 <_malloc_r+0x258>
c003542d:	83 fe 04             	cmp    $0x4,%esi
c0035430:	0f 87 8a 03 00 00    	ja     c00357c0 <_malloc_r+0x440>
c0035436:	89 fe                	mov    %edi,%esi
c0035438:	c1 ee 06             	shr    $0x6,%esi
c003543b:	83 c6 38             	add    $0x38,%esi
c003543e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035441:	8d 0c 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%ecx
c0035448:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003544b:	39 d9                	cmp    %ebx,%ecx
c003544d:	75 18                	jne    c0035467 <_malloc_r+0xe7>
c003544f:	eb 28                	jmp    c0035479 <_malloc_r+0xf9>
c0035451:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035458:	85 d2                	test   %edx,%edx
c003545a:	0f 89 78 ff ff ff    	jns    c00353d8 <_malloc_r+0x58>
c0035460:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035463:	39 d9                	cmp    %ebx,%ecx
c0035465:	74 12                	je     c0035479 <_malloc_r+0xf9>
c0035467:	8b 43 04             	mov    0x4(%ebx),%eax
c003546a:	83 e0 fc             	and    $0xfffffffc,%eax
c003546d:	89 c2                	mov    %eax,%edx
c003546f:	29 fa                	sub    %edi,%edx
c0035471:	83 fa 0f             	cmp    $0xf,%edx
c0035474:	7e e2                	jle    c0035458 <_malloc_r+0xd8>
c0035476:	83 ee 01             	sub    $0x1,%esi
c0035479:	8d 46 01             	lea    0x1(%esi),%eax
c003547c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003547f:	8b 1d 50 d5 03 c0    	mov    0xc003d550,%ebx
c0035485:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c003548a:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0035490:	74 6b                	je     c00354fd <_malloc_r+0x17d>
c0035492:	8b 73 04             	mov    0x4(%ebx),%esi
c0035495:	83 e6 fc             	and    $0xfffffffc,%esi
c0035498:	89 f0                	mov    %esi,%eax
c003549a:	29 f8                	sub    %edi,%eax
c003549c:	83 f8 0f             	cmp    $0xf,%eax
c003549f:	0f 8f a3 03 00 00    	jg     c0035848 <_malloc_r+0x4c8>
c00354a5:	85 c0                	test   %eax,%eax
c00354a7:	c7 05 54 d5 03 c0 48 	movl   $0xc003d548,0xc003d554
c00354ae:	d5 03 c0 
c00354b1:	c7 05 50 d5 03 c0 48 	movl   $0xc003d548,0xc003d550
c00354b8:	d5 03 c0 
c00354bb:	0f 89 27 01 00 00    	jns    c00355e8 <_malloc_r+0x268>
c00354c1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c00354c7:	0f 87 1b 03 00 00    	ja     c00357e8 <_malloc_r+0x468>
c00354cd:	c1 ee 03             	shr    $0x3,%esi
c00354d0:	b8 01 00 00 00       	mov    $0x1,%eax
c00354d5:	89 f1                	mov    %esi,%ecx
c00354d7:	8d 14 f5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%esi,8),%edx
c00354de:	c1 f9 02             	sar    $0x2,%ecx
c00354e1:	d3 e0                	shl    %cl,%eax
c00354e3:	8b 4a 08             	mov    0x8(%edx),%ecx
c00354e6:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c00354ec:	89 53 0c             	mov    %edx,0xc(%ebx)
c00354ef:	89 4b 08             	mov    %ecx,0x8(%ebx)
c00354f2:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00354f7:	89 5a 08             	mov    %ebx,0x8(%edx)
c00354fa:	89 59 0c             	mov    %ebx,0xc(%ecx)
c00354fd:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035500:	be 01 00 00 00       	mov    $0x1,%esi
c0035505:	c1 f9 02             	sar    $0x2,%ecx
c0035508:	d3 e6                	shl    %cl,%esi
c003550a:	39 c6                	cmp    %eax,%esi
c003550c:	0f 87 f6 00 00 00    	ja     c0035608 <_malloc_r+0x288>
c0035512:	85 f0                	test   %esi,%eax
c0035514:	0f 85 76 03 00 00    	jne    c0035890 <_malloc_r+0x510>
c003551a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003551d:	01 f6                	add    %esi,%esi
c003551f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035522:	85 f0                	test   %esi,%eax
c0035524:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035527:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003552a:	0f 85 60 03 00 00    	jne    c0035890 <_malloc_r+0x510>
c0035530:	89 ca                	mov    %ecx,%edx
c0035532:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035538:	01 f6                	add    %esi,%esi
c003553a:	83 c2 04             	add    $0x4,%edx
c003553d:	85 f0                	test   %esi,%eax
c003553f:	74 f7                	je     c0035538 <_malloc_r+0x1b8>
c0035541:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035544:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035547:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003554a:	8d 34 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%esi
c0035551:	89 f1                	mov    %esi,%ecx
c0035553:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035556:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035559:	39 d9                	cmp    %ebx,%ecx
c003555b:	75 1e                	jne    c003557b <_malloc_r+0x1fb>
c003555d:	e9 36 03 00 00       	jmp    c0035898 <_malloc_r+0x518>
c0035562:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035568:	85 d2                	test   %edx,%edx
c003556a:	0f 89 c0 03 00 00    	jns    c0035930 <_malloc_r+0x5b0>
c0035570:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035573:	39 d9                	cmp    %ebx,%ecx
c0035575:	0f 84 1d 03 00 00    	je     c0035898 <_malloc_r+0x518>
c003557b:	8b 43 04             	mov    0x4(%ebx),%eax
c003557e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035581:	89 c2                	mov    %eax,%edx
c0035583:	29 fa                	sub    %edi,%edx
c0035585:	83 fa 0f             	cmp    $0xf,%edx
c0035588:	7e de                	jle    c0035568 <_malloc_r+0x1e8>
c003558a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c003558d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035590:	83 cf 01             	or     $0x1,%edi
c0035593:	8b 73 08             	mov    0x8(%ebx),%esi
c0035596:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035599:	89 4e 0c             	mov    %ecx,0xc(%esi)
c003559c:	89 71 08             	mov    %esi,0x8(%ecx)
c003559f:	89 d1                	mov    %edx,%ecx
c00355a1:	83 c9 01             	or     $0x1,%ecx
c00355a4:	a3 54 d5 03 c0       	mov    %eax,0xc003d554
c00355a9:	a3 50 d5 03 c0       	mov    %eax,0xc003d550
c00355ae:	c7 40 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%eax)
c00355b5:	c7 40 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%eax)
c00355bc:	89 48 04             	mov    %ecx,0x4(%eax)
c00355bf:	89 14 10             	mov    %edx,(%eax,%edx,1)
c00355c2:	8b 45 08             	mov    0x8(%ebp),%eax
c00355c5:	89 04 24             	mov    %eax,(%esp)
c00355c8:	e8 a3 05 00 00       	call   c0035b70 <__malloc_unlock>
c00355cd:	8d 43 08             	lea    0x8(%ebx),%eax
c00355d0:	e9 22 fe ff ff       	jmp    c00353f7 <_malloc_r+0x77>
c00355d5:	8d 76 00             	lea    0x0(%esi),%esi
c00355d8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c00355dd:	be 3f 00 00 00       	mov    $0x3f,%esi
c00355e2:	e9 5a fe ff ff       	jmp    c0035441 <_malloc_r+0xc1>
c00355e7:	90                   	nop
c00355e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00355eb:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c00355f0:	89 04 24             	mov    %eax,(%esp)
c00355f3:	e8 78 05 00 00       	call   c0035b70 <__malloc_unlock>
c00355f8:	83 c4 2c             	add    $0x2c,%esp
c00355fb:	8d 43 08             	lea    0x8(%ebx),%eax
c00355fe:	5b                   	pop    %ebx
c00355ff:	5e                   	pop    %esi
c0035600:	5f                   	pop    %edi
c0035601:	5d                   	pop    %ebp
c0035602:	c3                   	ret    
c0035603:	90                   	nop
c0035604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035608:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c003560e:	8b 73 04             	mov    0x4(%ebx),%esi
c0035611:	83 e6 fc             	and    $0xfffffffc,%esi
c0035614:	39 f7                	cmp    %esi,%edi
c0035616:	77 0d                	ja     c0035625 <_malloc_r+0x2a5>
c0035618:	89 f0                	mov    %esi,%eax
c003561a:	29 f8                	sub    %edi,%eax
c003561c:	83 f8 0f             	cmp    $0xf,%eax
c003561f:	0f 8f 6b 01 00 00    	jg     c0035790 <_malloc_r+0x410>
c0035625:	8b 0d 50 00 07 c0    	mov    0xc0070050,%ecx
c003562b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003562e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035631:	01 f9                	add    %edi,%ecx
c0035633:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035639:	83 c1 10             	add    $0x10,%ecx
c003563c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035641:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035648:	0f 44 c1             	cmove  %ecx,%eax
c003564b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003564e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035652:	8b 45 08             	mov    0x8(%ebp),%eax
c0035655:	89 04 24             	mov    %eax,(%esp)
c0035658:	e8 03 13 00 00       	call   c0036960 <_sbrk_r>
c003565d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035660:	89 c1                	mov    %eax,%ecx
c0035662:	0f 84 17 03 00 00    	je     c003597f <_malloc_r+0x5ff>
c0035668:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c003566b:	0f 87 02 03 00 00    	ja     c0035973 <_malloc_r+0x5f3>
c0035671:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035674:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c003567a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c003567d:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c0035683:	0f 84 a9 03 00 00    	je     c0035a32 <_malloc_r+0x6b2>
c0035689:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035690:	0f 84 ca 03 00 00    	je     c0035a60 <_malloc_r+0x6e0>
c0035696:	89 c8                	mov    %ecx,%eax
c0035698:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c003569b:	01 d0                	add    %edx,%eax
c003569d:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c00356a2:	89 c8                	mov    %ecx,%eax
c00356a4:	ba 00 10 00 00       	mov    $0x1000,%edx
c00356a9:	83 e0 07             	and    $0x7,%eax
c00356ac:	74 0c                	je     c00356ba <_malloc_r+0x33a>
c00356ae:	29 c1                	sub    %eax,%ecx
c00356b0:	ba 08 10 00 00       	mov    $0x1008,%edx
c00356b5:	8d 49 08             	lea    0x8(%ecx),%ecx
c00356b8:	29 c2                	sub    %eax,%edx
c00356ba:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00356bd:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00356c0:	01 c8                	add    %ecx,%eax
c00356c2:	25 ff 0f 00 00       	and    $0xfff,%eax
c00356c7:	29 c2                	sub    %eax,%edx
c00356c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00356cc:	89 54 24 04          	mov    %edx,0x4(%esp)
c00356d0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00356d3:	89 04 24             	mov    %eax,(%esp)
c00356d6:	e8 85 12 00 00       	call   c0036960 <_sbrk_r>
c00356db:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00356de:	83 f8 ff             	cmp    $0xffffffff,%eax
c00356e1:	0f 84 6d 03 00 00    	je     c0035a54 <_malloc_r+0x6d4>
c00356e7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00356ea:	29 c8                	sub    %ecx,%eax
c00356ec:	01 d0                	add    %edx,%eax
c00356ee:	83 c8 01             	or     $0x1,%eax
c00356f1:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c00356f7:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c00356fd:	89 0d 48 d5 03 c0    	mov    %ecx,0xc003d548
c0035703:	89 41 04             	mov    %eax,0x4(%ecx)
c0035706:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c003570c:	0f 84 f2 02 00 00    	je     c0035a04 <_malloc_r+0x684>
c0035712:	83 fe 0f             	cmp    $0xf,%esi
c0035715:	0f 86 8d 02 00 00    	jbe    c00359a8 <_malloc_r+0x628>
c003571b:	8b 43 04             	mov    0x4(%ebx),%eax
c003571e:	83 ee 0c             	sub    $0xc,%esi
c0035721:	83 e6 f8             	and    $0xfffffff8,%esi
c0035724:	83 e0 01             	and    $0x1,%eax
c0035727:	09 f0                	or     %esi,%eax
c0035729:	83 fe 0f             	cmp    $0xf,%esi
c003572c:	89 43 04             	mov    %eax,0x4(%ebx)
c003572f:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035734:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003573b:	00 
c003573c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035743:	00 
c0035744:	0f 87 a2 02 00 00    	ja     c00359ec <_malloc_r+0x66c>
c003574a:	3b 15 4c 00 07 c0    	cmp    0xc007004c,%edx
c0035750:	76 06                	jbe    c0035758 <_malloc_r+0x3d8>
c0035752:	89 15 4c 00 07 c0    	mov    %edx,0xc007004c
c0035758:	3b 15 48 00 07 c0    	cmp    0xc0070048,%edx
c003575e:	76 06                	jbe    c0035766 <_malloc_r+0x3e6>
c0035760:	89 15 48 00 07 c0    	mov    %edx,0xc0070048
c0035766:	8b 50 04             	mov    0x4(%eax),%edx
c0035769:	89 c3                	mov    %eax,%ebx
c003576b:	83 e2 fc             	and    $0xfffffffc,%edx
c003576e:	89 d0                	mov    %edx,%eax
c0035770:	29 f8                	sub    %edi,%eax
c0035772:	39 d7                	cmp    %edx,%edi
c0035774:	77 05                	ja     c003577b <_malloc_r+0x3fb>
c0035776:	83 f8 0f             	cmp    $0xf,%eax
c0035779:	7f 15                	jg     c0035790 <_malloc_r+0x410>
c003577b:	8b 45 08             	mov    0x8(%ebp),%eax
c003577e:	89 04 24             	mov    %eax,(%esp)
c0035781:	e8 ea 03 00 00       	call   c0035b70 <__malloc_unlock>
c0035786:	31 c0                	xor    %eax,%eax
c0035788:	e9 6a fc ff ff       	jmp    c00353f7 <_malloc_r+0x77>
c003578d:	8d 76 00             	lea    0x0(%esi),%esi
c0035790:	89 fa                	mov    %edi,%edx
c0035792:	83 c8 01             	or     $0x1,%eax
c0035795:	83 ca 01             	or     $0x1,%edx
c0035798:	89 53 04             	mov    %edx,0x4(%ebx)
c003579b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003579e:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c00357a4:	89 42 04             	mov    %eax,0x4(%edx)
c00357a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00357aa:	89 04 24             	mov    %eax,(%esp)
c00357ad:	e8 be 03 00 00       	call   c0035b70 <__malloc_unlock>
c00357b2:	83 c4 2c             	add    $0x2c,%esp
c00357b5:	8d 43 08             	lea    0x8(%ebx),%eax
c00357b8:	5b                   	pop    %ebx
c00357b9:	5e                   	pop    %esi
c00357ba:	5f                   	pop    %edi
c00357bb:	5d                   	pop    %ebp
c00357bc:	c3                   	ret    
c00357bd:	8d 76 00             	lea    0x0(%esi),%esi
c00357c0:	83 fe 14             	cmp    $0x14,%esi
c00357c3:	0f 86 8f 01 00 00    	jbe    c0035958 <_malloc_r+0x5d8>
c00357c9:	83 fe 54             	cmp    $0x54,%esi
c00357cc:	0f 87 be 01 00 00    	ja     c0035990 <_malloc_r+0x610>
c00357d2:	89 fe                	mov    %edi,%esi
c00357d4:	c1 ee 0c             	shr    $0xc,%esi
c00357d7:	83 c6 6e             	add    $0x6e,%esi
c00357da:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00357dd:	e9 5f fc ff ff       	jmp    c0035441 <_malloc_r+0xc1>
c00357e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00357e8:	89 f1                	mov    %esi,%ecx
c00357ea:	c1 e9 09             	shr    $0x9,%ecx
c00357ed:	83 f9 04             	cmp    $0x4,%ecx
c00357f0:	0f 86 6d 01 00 00    	jbe    c0035963 <_malloc_r+0x5e3>
c00357f6:	83 f9 14             	cmp    $0x14,%ecx
c00357f9:	0f 87 0f 02 00 00    	ja     c0035a0e <_malloc_r+0x68e>
c00357ff:	83 c1 5b             	add    $0x5b,%ecx
c0035802:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035805:	8d 04 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%eax
c003580c:	8b 50 08             	mov    0x8(%eax),%edx
c003580f:	39 c2                	cmp    %eax,%edx
c0035811:	0f 84 a1 01 00 00    	je     c00359b8 <_malloc_r+0x638>
c0035817:	90                   	nop
c0035818:	8b 4a 04             	mov    0x4(%edx),%ecx
c003581b:	83 e1 fc             	and    $0xfffffffc,%ecx
c003581e:	39 ce                	cmp    %ecx,%esi
c0035820:	73 07                	jae    c0035829 <_malloc_r+0x4a9>
c0035822:	8b 52 08             	mov    0x8(%edx),%edx
c0035825:	39 d0                	cmp    %edx,%eax
c0035827:	75 ef                	jne    c0035818 <_malloc_r+0x498>
c0035829:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003582c:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035831:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035834:	89 53 08             	mov    %edx,0x8(%ebx)
c0035837:	89 59 08             	mov    %ebx,0x8(%ecx)
c003583a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003583d:	e9 bb fc ff ff       	jmp    c00354fd <_malloc_r+0x17d>
c0035842:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035848:	89 c1                	mov    %eax,%ecx
c003584a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003584d:	83 c9 01             	or     $0x1,%ecx
c0035850:	83 cf 01             	or     $0x1,%edi
c0035853:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035856:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c003585c:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0035862:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0035869:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0035870:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035873:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035876:	8b 45 08             	mov    0x8(%ebp),%eax
c0035879:	89 04 24             	mov    %eax,(%esp)
c003587c:	e8 ef 02 00 00       	call   c0035b70 <__malloc_unlock>
c0035881:	8d 43 08             	lea    0x8(%ebx),%eax
c0035884:	e9 6e fb ff ff       	jmp    c00353f7 <_malloc_r+0x77>
c0035889:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035890:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035893:	e9 af fc ff ff       	jmp    c0035547 <_malloc_r+0x1c7>
c0035898:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c003589c:	83 c1 08             	add    $0x8,%ecx
c003589f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c00358a3:	0f 85 ad fc ff ff    	jne    c0035556 <_malloc_r+0x1d6>
c00358a9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00358ac:	eb 12                	jmp    c00358c0 <_malloc_r+0x540>
c00358ae:	66 90                	xchg   %ax,%ax
c00358b0:	8d 56 f8             	lea    -0x8(%esi),%edx
c00358b3:	8b 36                	mov    (%esi),%esi
c00358b5:	83 e8 01             	sub    $0x1,%eax
c00358b8:	39 d6                	cmp    %edx,%esi
c00358ba:	0f 85 ea 01 00 00    	jne    c0035aaa <_malloc_r+0x72a>
c00358c0:	a8 03                	test   $0x3,%al
c00358c2:	75 ec                	jne    c00358b0 <_malloc_r+0x530>
c00358c4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00358c7:	f7 d0                	not    %eax
c00358c9:	23 05 44 d5 03 c0    	and    0xc003d544,%eax
c00358cf:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00358d4:	d1 65 dc             	shll   -0x24(%ebp)
c00358d7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00358da:	39 c2                	cmp    %eax,%edx
c00358dc:	0f 87 26 fd ff ff    	ja     c0035608 <_malloc_r+0x288>
c00358e2:	85 d2                	test   %edx,%edx
c00358e4:	0f 84 1e fd ff ff    	je     c0035608 <_malloc_r+0x288>
c00358ea:	85 c2                	test   %eax,%edx
c00358ec:	0f 85 c2 01 00 00    	jne    c0035ab4 <_malloc_r+0x734>
c00358f2:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00358f5:	89 f1                	mov    %esi,%ecx
c00358f7:	01 d2                	add    %edx,%edx
c00358f9:	83 c1 04             	add    $0x4,%ecx
c00358fc:	85 d0                	test   %edx,%eax
c00358fe:	74 f7                	je     c00358f7 <_malloc_r+0x577>
c0035900:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035903:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0035906:	e9 3c fc ff ff       	jmp    c0035547 <_malloc_r+0x1c7>
c003590b:	90                   	nop
c003590c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035910:	8d 43 08             	lea    0x8(%ebx),%eax
c0035913:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035916:	39 d8                	cmp    %ebx,%eax
c0035918:	0f 85 b4 fa ff ff    	jne    c00353d2 <_malloc_r+0x52>
c003591e:	8d 42 02             	lea    0x2(%edx),%eax
c0035921:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035924:	e9 56 fb ff ff       	jmp    c003547f <_malloc_r+0xff>
c0035929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035930:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035935:	8b 53 08             	mov    0x8(%ebx),%edx
c0035938:	8b 43 0c             	mov    0xc(%ebx),%eax
c003593b:	89 42 0c             	mov    %eax,0xc(%edx)
c003593e:	89 50 08             	mov    %edx,0x8(%eax)
c0035941:	8b 45 08             	mov    0x8(%ebp),%eax
c0035944:	89 04 24             	mov    %eax,(%esp)
c0035947:	e8 24 02 00 00       	call   c0035b70 <__malloc_unlock>
c003594c:	8d 43 08             	lea    0x8(%ebx),%eax
c003594f:	e9 a3 fa ff ff       	jmp    c00353f7 <_malloc_r+0x77>
c0035954:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035958:	83 c6 5b             	add    $0x5b,%esi
c003595b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003595e:	e9 de fa ff ff       	jmp    c0035441 <_malloc_r+0xc1>
c0035963:	89 f1                	mov    %esi,%ecx
c0035965:	c1 e9 06             	shr    $0x6,%ecx
c0035968:	83 c1 38             	add    $0x38,%ecx
c003596b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003596e:	e9 92 fe ff ff       	jmp    c0035805 <_malloc_r+0x485>
c0035973:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c0035979:	0f 84 f2 fc ff ff    	je     c0035671 <_malloc_r+0x2f1>
c003597f:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c0035985:	8b 53 04             	mov    0x4(%ebx),%edx
c0035988:	83 e2 fc             	and    $0xfffffffc,%edx
c003598b:	e9 de fd ff ff       	jmp    c003576e <_malloc_r+0x3ee>
c0035990:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0035996:	77 3c                	ja     c00359d4 <_malloc_r+0x654>
c0035998:	89 fe                	mov    %edi,%esi
c003599a:	c1 ee 0f             	shr    $0xf,%esi
c003599d:	83 c6 77             	add    $0x77,%esi
c00359a0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359a3:	e9 99 fa ff ff       	jmp    c0035441 <_malloc_r+0xc1>
c00359a8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c00359af:	89 cb                	mov    %ecx,%ebx
c00359b1:	31 d2                	xor    %edx,%edx
c00359b3:	e9 b6 fd ff ff       	jmp    c003576e <_malloc_r+0x3ee>
c00359b8:	c1 f9 02             	sar    $0x2,%ecx
c00359bb:	b8 01 00 00 00       	mov    $0x1,%eax
c00359c0:	d3 e0                	shl    %cl,%eax
c00359c2:	89 d1                	mov    %edx,%ecx
c00359c4:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c00359ca:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00359cf:	e9 5d fe ff ff       	jmp    c0035831 <_malloc_r+0x4b1>
c00359d4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c00359da:	77 47                	ja     c0035a23 <_malloc_r+0x6a3>
c00359dc:	89 fe                	mov    %edi,%esi
c00359de:	c1 ee 12             	shr    $0x12,%esi
c00359e1:	83 c6 7c             	add    $0x7c,%esi
c00359e4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359e7:	e9 55 fa ff ff       	jmp    c0035441 <_malloc_r+0xc1>
c00359ec:	8b 45 08             	mov    0x8(%ebp),%eax
c00359ef:	83 c3 08             	add    $0x8,%ebx
c00359f2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00359f6:	89 04 24             	mov    %eax,(%esp)
c00359f9:	e8 c2 22 00 00       	call   c0037cc0 <_free_r>
c00359fe:	8b 15 20 00 07 c0    	mov    0xc0070020,%edx
c0035a04:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035a09:	e9 3c fd ff ff       	jmp    c003574a <_malloc_r+0x3ca>
c0035a0e:	83 f9 54             	cmp    $0x54,%ecx
c0035a11:	77 58                	ja     c0035a6b <_malloc_r+0x6eb>
c0035a13:	89 f1                	mov    %esi,%ecx
c0035a15:	c1 e9 0c             	shr    $0xc,%ecx
c0035a18:	83 c1 6e             	add    $0x6e,%ecx
c0035a1b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a1e:	e9 e2 fd ff ff       	jmp    c0035805 <_malloc_r+0x485>
c0035a23:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a28:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035a2d:	e9 0f fa ff ff       	jmp    c0035441 <_malloc_r+0xc1>
c0035a32:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035a39:	0f 85 4a fc ff ff    	jne    c0035689 <_malloc_r+0x309>
c0035a3f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035a42:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035a47:	01 f1                	add    %esi,%ecx
c0035a49:	83 c9 01             	or     $0x1,%ecx
c0035a4c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035a4f:	e9 f6 fc ff ff       	jmp    c003574a <_malloc_r+0x3ca>
c0035a54:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a59:	31 d2                	xor    %edx,%edx
c0035a5b:	e9 91 fc ff ff       	jmp    c00356f1 <_malloc_r+0x371>
c0035a60:	89 0d 20 d5 03 c0    	mov    %ecx,0xc003d520
c0035a66:	e9 37 fc ff ff       	jmp    c00356a2 <_malloc_r+0x322>
c0035a6b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035a71:	77 10                	ja     c0035a83 <_malloc_r+0x703>
c0035a73:	89 f1                	mov    %esi,%ecx
c0035a75:	c1 e9 0f             	shr    $0xf,%ecx
c0035a78:	83 c1 77             	add    $0x77,%ecx
c0035a7b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a7e:	e9 82 fd ff ff       	jmp    c0035805 <_malloc_r+0x485>
c0035a83:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035a89:	77 10                	ja     c0035a9b <_malloc_r+0x71b>
c0035a8b:	89 f1                	mov    %esi,%ecx
c0035a8d:	c1 e9 12             	shr    $0x12,%ecx
c0035a90:	83 c1 7c             	add    $0x7c,%ecx
c0035a93:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a96:	e9 6a fd ff ff       	jmp    c0035805 <_malloc_r+0x485>
c0035a9b:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035aa0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035aa5:	e9 5b fd ff ff       	jmp    c0035805 <_malloc_r+0x485>
c0035aaa:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035aaf:	e9 20 fe ff ff       	jmp    c00358d4 <_malloc_r+0x554>
c0035ab4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035ab7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035aba:	e9 88 fa ff ff       	jmp    c0035547 <_malloc_r+0x1c7>
c0035abf:	90                   	nop

c0035ac0 <memchr>:
c0035ac0:	55                   	push   %ebp
c0035ac1:	89 e5                	mov    %esp,%ebp
c0035ac3:	57                   	push   %edi
c0035ac4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035ac8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035acb:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035ace:	31 d2                	xor    %edx,%edx
c0035ad0:	85 c9                	test   %ecx,%ecx
c0035ad2:	74 79                	je     c0035b4d <L20>
c0035ad4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035ada:	74 28                	je     c0035b04 <L5>
c0035adc:	3a 07                	cmp    (%edi),%al
c0035ade:	74 6a                	je     c0035b4a <L15>
c0035ae0:	47                   	inc    %edi
c0035ae1:	49                   	dec    %ecx
c0035ae2:	74 69                	je     c0035b4d <L20>
c0035ae4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035aea:	74 18                	je     c0035b04 <L5>
c0035aec:	3a 07                	cmp    (%edi),%al
c0035aee:	74 5a                	je     c0035b4a <L15>
c0035af0:	47                   	inc    %edi
c0035af1:	49                   	dec    %ecx
c0035af2:	74 59                	je     c0035b4d <L20>
c0035af4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035afa:	74 08                	je     c0035b04 <L5>
c0035afc:	3a 07                	cmp    (%edi),%al
c0035afe:	74 4a                	je     c0035b4a <L15>
c0035b00:	47                   	inc    %edi
c0035b01:	49                   	dec    %ecx
c0035b02:	74 49                	je     c0035b4d <L20>

c0035b04 <L5>:
c0035b04:	88 c4                	mov    %al,%ah
c0035b06:	89 c2                	mov    %eax,%edx
c0035b08:	c1 e2 10             	shl    $0x10,%edx
c0035b0b:	09 d0                	or     %edx,%eax
c0035b0d:	53                   	push   %ebx
c0035b0e:	66 90                	xchg   %ax,%ax

c0035b10 <L8>:
c0035b10:	83 e9 04             	sub    $0x4,%ecx
c0035b13:	72 1c                	jb     c0035b31 <L9>
c0035b15:	8b 17                	mov    (%edi),%edx
c0035b17:	83 c7 04             	add    $0x4,%edi
c0035b1a:	31 c2                	xor    %eax,%edx
c0035b1c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035b22:	f7 d2                	not    %edx
c0035b24:	21 d3                	and    %edx,%ebx
c0035b26:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035b2c:	74 e2                	je     c0035b10 <L8>
c0035b2e:	83 ef 04             	sub    $0x4,%edi

c0035b31 <L9>:
c0035b31:	5b                   	pop    %ebx
c0035b32:	31 d2                	xor    %edx,%edx
c0035b34:	83 c1 04             	add    $0x4,%ecx
c0035b37:	74 14                	je     c0035b4d <L20>
c0035b39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035b40 <L10>:
c0035b40:	3a 07                	cmp    (%edi),%al
c0035b42:	74 06                	je     c0035b4a <L15>
c0035b44:	47                   	inc    %edi
c0035b45:	49                   	dec    %ecx
c0035b46:	75 f8                	jne    c0035b40 <L10>
c0035b48:	31 ff                	xor    %edi,%edi

c0035b4a <L15>:
c0035b4a:	4a                   	dec    %edx
c0035b4b:	21 fa                	and    %edi,%edx

c0035b4d <L20>:
c0035b4d:	89 d0                	mov    %edx,%eax
c0035b4f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035b52:	5f                   	pop    %edi
c0035b53:	c9                   	leave  
c0035b54:	c3                   	ret    
c0035b55:	66 90                	xchg   %ax,%ax
c0035b57:	66 90                	xchg   %ax,%ax
c0035b59:	66 90                	xchg   %ax,%ax
c0035b5b:	66 90                	xchg   %ax,%ax
c0035b5d:	66 90                	xchg   %ax,%ax
c0035b5f:	90                   	nop

c0035b60 <__malloc_lock>:
c0035b60:	55                   	push   %ebp
c0035b61:	89 e5                	mov    %esp,%ebp
c0035b63:	5d                   	pop    %ebp
c0035b64:	c3                   	ret    
c0035b65:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035b69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035b70 <__malloc_unlock>:
c0035b70:	55                   	push   %ebp
c0035b71:	89 e5                	mov    %esp,%ebp
c0035b73:	5d                   	pop    %ebp
c0035b74:	c3                   	ret    
c0035b75:	66 90                	xchg   %ax,%ax
c0035b77:	66 90                	xchg   %ax,%ax
c0035b79:	66 90                	xchg   %ax,%ax
c0035b7b:	66 90                	xchg   %ax,%ax
c0035b7d:	66 90                	xchg   %ax,%ax
c0035b7f:	90                   	nop

c0035b80 <_Balloc>:
c0035b80:	55                   	push   %ebp
c0035b81:	89 e5                	mov    %esp,%ebp
c0035b83:	57                   	push   %edi
c0035b84:	56                   	push   %esi
c0035b85:	53                   	push   %ebx
c0035b86:	83 ec 1c             	sub    $0x1c,%esp
c0035b89:	8b 75 08             	mov    0x8(%ebp),%esi
c0035b8c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035b8f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035b92:	85 c0                	test   %eax,%eax
c0035b94:	74 2a                	je     c0035bc0 <_Balloc+0x40>
c0035b96:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035b99:	8b 02                	mov    (%edx),%eax
c0035b9b:	85 c0                	test   %eax,%eax
c0035b9d:	74 49                	je     c0035be8 <_Balloc+0x68>
c0035b9f:	8b 08                	mov    (%eax),%ecx
c0035ba1:	89 0a                	mov    %ecx,(%edx)
c0035ba3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035baa:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035bb1:	83 c4 1c             	add    $0x1c,%esp
c0035bb4:	5b                   	pop    %ebx
c0035bb5:	5e                   	pop    %esi
c0035bb6:	5f                   	pop    %edi
c0035bb7:	5d                   	pop    %ebp
c0035bb8:	c3                   	ret    
c0035bb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035bc0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035bc7:	00 
c0035bc8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035bcf:	00 
c0035bd0:	89 34 24             	mov    %esi,(%esp)
c0035bd3:	e8 38 1f 00 00       	call   c0037b10 <_calloc_r>
c0035bd8:	85 c0                	test   %eax,%eax
c0035bda:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035bdd:	75 b7                	jne    c0035b96 <_Balloc+0x16>
c0035bdf:	31 c0                	xor    %eax,%eax
c0035be1:	eb ce                	jmp    c0035bb1 <_Balloc+0x31>
c0035be3:	90                   	nop
c0035be4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035be8:	89 d9                	mov    %ebx,%ecx
c0035bea:	bf 01 00 00 00       	mov    $0x1,%edi
c0035bef:	d3 e7                	shl    %cl,%edi
c0035bf1:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035bf8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035bfc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035c03:	00 
c0035c04:	89 34 24             	mov    %esi,(%esp)
c0035c07:	e8 04 1f 00 00       	call   c0037b10 <_calloc_r>
c0035c0c:	85 c0                	test   %eax,%eax
c0035c0e:	74 cf                	je     c0035bdf <_Balloc+0x5f>
c0035c10:	89 58 04             	mov    %ebx,0x4(%eax)
c0035c13:	89 78 08             	mov    %edi,0x8(%eax)
c0035c16:	eb 8b                	jmp    c0035ba3 <_Balloc+0x23>
c0035c18:	90                   	nop
c0035c19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035c20 <_Bfree>:
c0035c20:	55                   	push   %ebp
c0035c21:	89 e5                	mov    %esp,%ebp
c0035c23:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c26:	85 c0                	test   %eax,%eax
c0035c28:	74 12                	je     c0035c3c <_Bfree+0x1c>
c0035c2a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035c2d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035c30:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035c33:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035c36:	8b 0a                	mov    (%edx),%ecx
c0035c38:	89 08                	mov    %ecx,(%eax)
c0035c3a:	89 02                	mov    %eax,(%edx)
c0035c3c:	5d                   	pop    %ebp
c0035c3d:	c3                   	ret    
c0035c3e:	66 90                	xchg   %ax,%ax

c0035c40 <__multadd>:
c0035c40:	55                   	push   %ebp
c0035c41:	89 e5                	mov    %esp,%ebp
c0035c43:	57                   	push   %edi
c0035c44:	56                   	push   %esi
c0035c45:	53                   	push   %ebx
c0035c46:	83 ec 2c             	sub    $0x2c,%esp
c0035c49:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c4c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035c4f:	8b 40 10             	mov    0x10(%eax),%eax
c0035c52:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035c55:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c58:	8d 78 14             	lea    0x14(%eax),%edi
c0035c5b:	31 c0                	xor    %eax,%eax
c0035c5d:	8d 76 00             	lea    0x0(%esi),%esi
c0035c60:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035c63:	0f b7 d1             	movzwl %cx,%edx
c0035c66:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035c6a:	c1 e9 10             	shr    $0x10,%ecx
c0035c6d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035c71:	01 da                	add    %ebx,%edx
c0035c73:	89 d3                	mov    %edx,%ebx
c0035c75:	0f b7 d2             	movzwl %dx,%edx
c0035c78:	c1 eb 10             	shr    $0x10,%ebx
c0035c7b:	01 d9                	add    %ebx,%ecx
c0035c7d:	89 ce                	mov    %ecx,%esi
c0035c7f:	c1 e1 10             	shl    $0x10,%ecx
c0035c82:	01 d1                	add    %edx,%ecx
c0035c84:	c1 ee 10             	shr    $0x10,%esi
c0035c87:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035c8a:	83 c0 01             	add    $0x1,%eax
c0035c8d:	89 f3                	mov    %esi,%ebx
c0035c8f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035c92:	7f cc                	jg     c0035c60 <__multadd+0x20>
c0035c94:	85 f6                	test   %esi,%esi
c0035c96:	74 1b                	je     c0035cb3 <__multadd+0x73>
c0035c98:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c9b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035c9e:	3b 78 08             	cmp    0x8(%eax),%edi
c0035ca1:	7d 1d                	jge    c0035cc0 <__multadd+0x80>
c0035ca3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035ca6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035ca9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035cad:	83 c0 01             	add    $0x1,%eax
c0035cb0:	89 47 10             	mov    %eax,0x10(%edi)
c0035cb3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cb6:	83 c4 2c             	add    $0x2c,%esp
c0035cb9:	5b                   	pop    %ebx
c0035cba:	5e                   	pop    %esi
c0035cbb:	5f                   	pop    %edi
c0035cbc:	5d                   	pop    %ebp
c0035cbd:	c3                   	ret    
c0035cbe:	66 90                	xchg   %ax,%ax
c0035cc0:	8b 40 04             	mov    0x4(%eax),%eax
c0035cc3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035cc6:	83 c0 01             	add    $0x1,%eax
c0035cc9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035ccd:	8b 45 08             	mov    0x8(%ebp),%eax
c0035cd0:	89 04 24             	mov    %eax,(%esp)
c0035cd3:	e8 a8 fe ff ff       	call   c0035b80 <_Balloc>
c0035cd8:	89 c3                	mov    %eax,%ebx
c0035cda:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cdd:	8b 40 10             	mov    0x10(%eax),%eax
c0035ce0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035ce7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035ceb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cee:	83 c0 0c             	add    $0xc,%eax
c0035cf1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035cf5:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035cf8:	89 04 24             	mov    %eax,(%esp)
c0035cfb:	e8 c4 c0 ff ff       	call   c0031dc4 <memcpy>
c0035d00:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d03:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035d06:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035d09:	8b 50 04             	mov    0x4(%eax),%edx
c0035d0c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d0f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035d12:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035d15:	8b 10                	mov    (%eax),%edx
c0035d17:	89 17                	mov    %edx,(%edi)
c0035d19:	89 38                	mov    %edi,(%eax)
c0035d1b:	eb 86                	jmp    c0035ca3 <__multadd+0x63>
c0035d1d:	8d 76 00             	lea    0x0(%esi),%esi

c0035d20 <__s2b>:
c0035d20:	55                   	push   %ebp
c0035d21:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035d26:	89 e5                	mov    %esp,%ebp
c0035d28:	57                   	push   %edi
c0035d29:	56                   	push   %esi
c0035d2a:	53                   	push   %ebx
c0035d2b:	83 ec 2c             	sub    $0x2c,%esp
c0035d2e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035d31:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035d34:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035d37:	8d 48 08             	lea    0x8(%eax),%ecx
c0035d3a:	89 c8                	mov    %ecx,%eax
c0035d3c:	f7 ea                	imul   %edx
c0035d3e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035d41:	d1 fa                	sar    %edx
c0035d43:	29 ca                	sub    %ecx,%edx
c0035d45:	83 fa 01             	cmp    $0x1,%edx
c0035d48:	0f 8e be 00 00 00    	jle    c0035e0c <__s2b+0xec>
c0035d4e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035d53:	31 c9                	xor    %ecx,%ecx
c0035d55:	8d 76 00             	lea    0x0(%esi),%esi
c0035d58:	01 c0                	add    %eax,%eax
c0035d5a:	83 c1 01             	add    $0x1,%ecx
c0035d5d:	39 c2                	cmp    %eax,%edx
c0035d5f:	7f f7                	jg     c0035d58 <__s2b+0x38>
c0035d61:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035d65:	89 1c 24             	mov    %ebx,(%esp)
c0035d68:	e8 13 fe ff ff       	call   c0035b80 <_Balloc>
c0035d6d:	8b 55 18             	mov    0x18(%ebp),%edx
c0035d70:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035d74:	89 50 14             	mov    %edx,0x14(%eax)
c0035d77:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035d7e:	0f 8e 7c 00 00 00    	jle    c0035e00 <__s2b+0xe0>
c0035d84:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035d87:	03 75 10             	add    0x10(%ebp),%esi
c0035d8a:	89 cf                	mov    %ecx,%edi
c0035d8c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035d8f:	90                   	nop
c0035d90:	83 c7 01             	add    $0x1,%edi
c0035d93:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035d97:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035d9e:	00 
c0035d9f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035da3:	89 1c 24             	mov    %ebx,(%esp)
c0035da6:	83 ea 30             	sub    $0x30,%edx
c0035da9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035dad:	e8 8e fe ff ff       	call   c0035c40 <__multadd>
c0035db2:	39 f7                	cmp    %esi,%edi
c0035db4:	75 da                	jne    c0035d90 <__s2b+0x70>
c0035db6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035db9:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035dbc:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035dc0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035dc3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035dc6:	7e 2e                	jle    c0035df6 <__s2b+0xd6>
c0035dc8:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035dcb:	29 cf                	sub    %ecx,%edi
c0035dcd:	01 f7                	add    %esi,%edi
c0035dcf:	90                   	nop
c0035dd0:	83 c6 01             	add    $0x1,%esi
c0035dd3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035dd7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dde:	00 
c0035ddf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035de3:	89 1c 24             	mov    %ebx,(%esp)
c0035de6:	83 ea 30             	sub    $0x30,%edx
c0035de9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035ded:	e8 4e fe ff ff       	call   c0035c40 <__multadd>
c0035df2:	39 fe                	cmp    %edi,%esi
c0035df4:	75 da                	jne    c0035dd0 <__s2b+0xb0>
c0035df6:	83 c4 2c             	add    $0x2c,%esp
c0035df9:	5b                   	pop    %ebx
c0035dfa:	5e                   	pop    %esi
c0035dfb:	5f                   	pop    %edi
c0035dfc:	5d                   	pop    %ebp
c0035dfd:	c3                   	ret    
c0035dfe:	66 90                	xchg   %ax,%ax
c0035e00:	83 c6 0a             	add    $0xa,%esi
c0035e03:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035e0a:	eb b4                	jmp    c0035dc0 <__s2b+0xa0>
c0035e0c:	31 c9                	xor    %ecx,%ecx
c0035e0e:	e9 4e ff ff ff       	jmp    c0035d61 <__s2b+0x41>
c0035e13:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035e19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035e20 <__hi0bits>:
c0035e20:	55                   	push   %ebp
c0035e21:	31 c9                	xor    %ecx,%ecx
c0035e23:	89 e5                	mov    %esp,%ebp
c0035e25:	8b 55 08             	mov    0x8(%ebp),%edx
c0035e28:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035e2e:	75 05                	jne    c0035e35 <__hi0bits+0x15>
c0035e30:	c1 e2 10             	shl    $0x10,%edx
c0035e33:	b1 10                	mov    $0x10,%cl
c0035e35:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035e3b:	75 06                	jne    c0035e43 <__hi0bits+0x23>
c0035e3d:	83 c1 08             	add    $0x8,%ecx
c0035e40:	c1 e2 08             	shl    $0x8,%edx
c0035e43:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035e49:	75 06                	jne    c0035e51 <__hi0bits+0x31>
c0035e4b:	83 c1 04             	add    $0x4,%ecx
c0035e4e:	c1 e2 04             	shl    $0x4,%edx
c0035e51:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035e57:	75 06                	jne    c0035e5f <__hi0bits+0x3f>
c0035e59:	83 c1 02             	add    $0x2,%ecx
c0035e5c:	c1 e2 02             	shl    $0x2,%edx
c0035e5f:	85 d2                	test   %edx,%edx
c0035e61:	89 c8                	mov    %ecx,%eax
c0035e63:	78 0d                	js     c0035e72 <__hi0bits+0x52>
c0035e65:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035e6b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035e70:	75 06                	jne    c0035e78 <__hi0bits+0x58>
c0035e72:	5d                   	pop    %ebp
c0035e73:	c3                   	ret    
c0035e74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035e78:	8d 41 01             	lea    0x1(%ecx),%eax
c0035e7b:	5d                   	pop    %ebp
c0035e7c:	c3                   	ret    
c0035e7d:	8d 76 00             	lea    0x0(%esi),%esi

c0035e80 <__lo0bits>:
c0035e80:	55                   	push   %ebp
c0035e81:	89 e5                	mov    %esp,%ebp
c0035e83:	53                   	push   %ebx
c0035e84:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035e87:	8b 13                	mov    (%ebx),%edx
c0035e89:	f6 c2 07             	test   $0x7,%dl
c0035e8c:	74 1a                	je     c0035ea8 <__lo0bits+0x28>
c0035e8e:	31 c0                	xor    %eax,%eax
c0035e90:	f6 c2 01             	test   $0x1,%dl
c0035e93:	75 0f                	jne    c0035ea4 <__lo0bits+0x24>
c0035e95:	f6 c2 02             	test   $0x2,%dl
c0035e98:	75 56                	jne    c0035ef0 <__lo0bits+0x70>
c0035e9a:	c1 ea 02             	shr    $0x2,%edx
c0035e9d:	b8 02 00 00 00       	mov    $0x2,%eax
c0035ea2:	89 13                	mov    %edx,(%ebx)
c0035ea4:	5b                   	pop    %ebx
c0035ea5:	5d                   	pop    %ebp
c0035ea6:	c3                   	ret    
c0035ea7:	90                   	nop
c0035ea8:	31 c9                	xor    %ecx,%ecx
c0035eaa:	66 85 d2             	test   %dx,%dx
c0035ead:	75 05                	jne    c0035eb4 <__lo0bits+0x34>
c0035eaf:	c1 ea 10             	shr    $0x10,%edx
c0035eb2:	b1 10                	mov    $0x10,%cl
c0035eb4:	84 d2                	test   %dl,%dl
c0035eb6:	75 06                	jne    c0035ebe <__lo0bits+0x3e>
c0035eb8:	83 c1 08             	add    $0x8,%ecx
c0035ebb:	c1 ea 08             	shr    $0x8,%edx
c0035ebe:	f6 c2 0f             	test   $0xf,%dl
c0035ec1:	75 06                	jne    c0035ec9 <__lo0bits+0x49>
c0035ec3:	83 c1 04             	add    $0x4,%ecx
c0035ec6:	c1 ea 04             	shr    $0x4,%edx
c0035ec9:	f6 c2 03             	test   $0x3,%dl
c0035ecc:	75 06                	jne    c0035ed4 <__lo0bits+0x54>
c0035ece:	83 c1 02             	add    $0x2,%ecx
c0035ed1:	c1 ea 02             	shr    $0x2,%edx
c0035ed4:	f6 c2 01             	test   $0x1,%dl
c0035ed7:	75 0c                	jne    c0035ee5 <__lo0bits+0x65>
c0035ed9:	d1 ea                	shr    %edx
c0035edb:	b8 20 00 00 00       	mov    $0x20,%eax
c0035ee0:	74 c2                	je     c0035ea4 <__lo0bits+0x24>
c0035ee2:	83 c1 01             	add    $0x1,%ecx
c0035ee5:	89 13                	mov    %edx,(%ebx)
c0035ee7:	89 c8                	mov    %ecx,%eax
c0035ee9:	5b                   	pop    %ebx
c0035eea:	5d                   	pop    %ebp
c0035eeb:	c3                   	ret    
c0035eec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035ef0:	d1 ea                	shr    %edx
c0035ef2:	b0 01                	mov    $0x1,%al
c0035ef4:	89 13                	mov    %edx,(%ebx)
c0035ef6:	5b                   	pop    %ebx
c0035ef7:	5d                   	pop    %ebp
c0035ef8:	c3                   	ret    
c0035ef9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f00 <__i2b>:
c0035f00:	55                   	push   %ebp
c0035f01:	89 e5                	mov    %esp,%ebp
c0035f03:	83 ec 18             	sub    $0x18,%esp
c0035f06:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f09:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035f10:	00 
c0035f11:	89 04 24             	mov    %eax,(%esp)
c0035f14:	e8 67 fc ff ff       	call   c0035b80 <_Balloc>
c0035f19:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035f1c:	89 50 14             	mov    %edx,0x14(%eax)
c0035f1f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035f26:	c9                   	leave  
c0035f27:	c3                   	ret    
c0035f28:	90                   	nop
c0035f29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f30 <__multiply>:
c0035f30:	55                   	push   %ebp
c0035f31:	89 e5                	mov    %esp,%ebp
c0035f33:	57                   	push   %edi
c0035f34:	56                   	push   %esi
c0035f35:	53                   	push   %ebx
c0035f36:	83 ec 3c             	sub    $0x3c,%esp
c0035f39:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035f3c:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f3f:	8b 7e 10             	mov    0x10(%esi),%edi
c0035f42:	8b 58 10             	mov    0x10(%eax),%ebx
c0035f45:	39 df                	cmp    %ebx,%edi
c0035f47:	7d 0e                	jge    c0035f57 <__multiply+0x27>
c0035f49:	89 f8                	mov    %edi,%eax
c0035f4b:	89 df                	mov    %ebx,%edi
c0035f4d:	89 c3                	mov    %eax,%ebx
c0035f4f:	89 f0                	mov    %esi,%eax
c0035f51:	8b 75 10             	mov    0x10(%ebp),%esi
c0035f54:	89 45 10             	mov    %eax,0x10(%ebp)
c0035f57:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035f5a:	3b 46 08             	cmp    0x8(%esi),%eax
c0035f5d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0035f60:	0f 9f c0             	setg   %al
c0035f63:	0f b6 c0             	movzbl %al,%eax
c0035f66:	03 46 04             	add    0x4(%esi),%eax
c0035f69:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035f6d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f70:	89 04 24             	mov    %eax,(%esp)
c0035f73:	e8 08 fc ff ff       	call   c0035b80 <_Balloc>
c0035f78:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035f7b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035f7e:	8d 40 14             	lea    0x14(%eax),%eax
c0035f81:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0035f84:	89 d1                	mov    %edx,%ecx
c0035f86:	39 c8                	cmp    %ecx,%eax
c0035f88:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035f8b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c0035f8e:	73 15                	jae    c0035fa5 <__multiply+0x75>
c0035f90:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0035f93:	90                   	nop
c0035f94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f98:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0035f9e:	83 c0 04             	add    $0x4,%eax
c0035fa1:	39 c2                	cmp    %eax,%edx
c0035fa3:	77 f3                	ja     c0035f98 <__multiply+0x68>
c0035fa5:	8d 46 14             	lea    0x14(%esi),%eax
c0035fa8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0035fab:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c0035fae:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0035fb1:	8b 45 10             	mov    0x10(%ebp),%eax
c0035fb4:	83 c0 14             	add    $0x14,%eax
c0035fb7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c0035fba:	39 f8                	cmp    %edi,%eax
c0035fbc:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0035fbf:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0035fc2:	0f 83 e8 00 00 00    	jae    c00360b0 <__multiply+0x180>
c0035fc8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0035fcb:	8b 00                	mov    (%eax),%eax
c0035fcd:	0f b7 f8             	movzwl %ax,%edi
c0035fd0:	85 ff                	test   %edi,%edi
c0035fd2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0035fd5:	74 5a                	je     c0036031 <__multiply+0x101>
c0035fd7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0035fda:	31 db                	xor    %ebx,%ebx
c0035fdc:	8b 75 d0             	mov    -0x30(%ebp),%esi
c0035fdf:	eb 09                	jmp    c0035fea <__multiply+0xba>
c0035fe1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035fe8:	89 fa                	mov    %edi,%edx
c0035fea:	8b 0e                	mov    (%esi),%ecx
c0035fec:	83 c6 04             	add    $0x4,%esi
c0035fef:	0f b7 3a             	movzwl (%edx),%edi
c0035ff2:	0f b7 c1             	movzwl %cx,%eax
c0035ff5:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0035ff9:	c1 e9 10             	shr    $0x10,%ecx
c0035ffc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036000:	01 f8                	add    %edi,%eax
c0036002:	01 d8                	add    %ebx,%eax
c0036004:	8b 1a                	mov    (%edx),%ebx
c0036006:	8d 7a 04             	lea    0x4(%edx),%edi
c0036009:	c1 eb 10             	shr    $0x10,%ebx
c003600c:	01 d9                	add    %ebx,%ecx
c003600e:	89 c3                	mov    %eax,%ebx
c0036010:	c1 eb 10             	shr    $0x10,%ebx
c0036013:	0f b7 c0             	movzwl %ax,%eax
c0036016:	01 d9                	add    %ebx,%ecx
c0036018:	89 cb                	mov    %ecx,%ebx
c003601a:	c1 e1 10             	shl    $0x10,%ecx
c003601d:	09 c1                	or     %eax,%ecx
c003601f:	c1 eb 10             	shr    $0x10,%ebx
c0036022:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036025:	89 0a                	mov    %ecx,(%edx)
c0036027:	77 bf                	ja     c0035fe8 <__multiply+0xb8>
c0036029:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003602c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003602f:	8b 00                	mov    (%eax),%eax
c0036031:	c1 e8 10             	shr    $0x10,%eax
c0036034:	85 c0                	test   %eax,%eax
c0036036:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036039:	74 61                	je     c003609c <__multiply+0x16c>
c003603b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003603e:	31 ff                	xor    %edi,%edi
c0036040:	89 fe                	mov    %edi,%esi
c0036042:	8b 10                	mov    (%eax),%edx
c0036044:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036047:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003604a:	89 d3                	mov    %edx,%ebx
c003604c:	eb 05                	jmp    c0036053 <__multiply+0x123>
c003604e:	66 90                	xchg   %ax,%ax
c0036050:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036053:	0f b7 08             	movzwl (%eax),%ecx
c0036056:	c1 eb 10             	shr    $0x10,%ebx
c0036059:	0f b7 d2             	movzwl %dx,%edx
c003605c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036060:	83 c0 04             	add    $0x4,%eax
c0036063:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036066:	01 f7                	add    %esi,%edi
c0036068:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003606b:	89 fb                	mov    %edi,%ebx
c003606d:	c1 e3 10             	shl    $0x10,%ebx
c0036070:	09 d3                	or     %edx,%ebx
c0036072:	89 1e                	mov    %ebx,(%esi)
c0036074:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036077:	8d 4e 04             	lea    0x4(%esi),%ecx
c003607a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003607e:	c1 ef 10             	shr    $0x10,%edi
c0036081:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036085:	0f b7 f3             	movzwl %bx,%esi
c0036088:	01 f2                	add    %esi,%edx
c003608a:	01 fa                	add    %edi,%edx
c003608c:	89 d6                	mov    %edx,%esi
c003608e:	c1 ee 10             	shr    $0x10,%esi
c0036091:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0036094:	77 ba                	ja     c0036050 <__multiply+0x120>
c0036096:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036099:	89 50 04             	mov    %edx,0x4(%eax)
c003609c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c00360a0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00360a3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c00360a7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c00360aa:	0f 87 18 ff ff ff    	ja     c0035fc8 <__multiply+0x98>
c00360b0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c00360b3:	85 f6                	test   %esi,%esi
c00360b5:	7e 29                	jle    c00360e0 <__multiply+0x1b0>
c00360b7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00360ba:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00360bd:	85 db                	test   %ebx,%ebx
c00360bf:	75 1f                	jne    c00360e0 <__multiply+0x1b0>
c00360c1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c00360c4:	89 d0                	mov    %edx,%eax
c00360c6:	c1 e0 02             	shl    $0x2,%eax
c00360c9:	29 c7                	sub    %eax,%edi
c00360cb:	89 f8                	mov    %edi,%eax
c00360cd:	eb 09                	jmp    c00360d8 <__multiply+0x1a8>
c00360cf:	90                   	nop
c00360d0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00360d4:	85 c9                	test   %ecx,%ecx
c00360d6:	75 05                	jne    c00360dd <__multiply+0x1ad>
c00360d8:	83 ea 01             	sub    $0x1,%edx
c00360db:	75 f3                	jne    c00360d0 <__multiply+0x1a0>
c00360dd:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00360e0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00360e3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c00360e6:	89 78 10             	mov    %edi,0x10(%eax)
c00360e9:	83 c4 3c             	add    $0x3c,%esp
c00360ec:	5b                   	pop    %ebx
c00360ed:	5e                   	pop    %esi
c00360ee:	5f                   	pop    %edi
c00360ef:	5d                   	pop    %ebp
c00360f0:	c3                   	ret    
c00360f1:	eb 0d                	jmp    c0036100 <__pow5mult>
c00360f3:	90                   	nop
c00360f4:	90                   	nop
c00360f5:	90                   	nop
c00360f6:	90                   	nop
c00360f7:	90                   	nop
c00360f8:	90                   	nop
c00360f9:	90                   	nop
c00360fa:	90                   	nop
c00360fb:	90                   	nop
c00360fc:	90                   	nop
c00360fd:	90                   	nop
c00360fe:	90                   	nop
c00360ff:	90                   	nop

c0036100 <__pow5mult>:
c0036100:	55                   	push   %ebp
c0036101:	89 e5                	mov    %esp,%ebp
c0036103:	57                   	push   %edi
c0036104:	56                   	push   %esi
c0036105:	53                   	push   %ebx
c0036106:	83 ec 2c             	sub    $0x2c,%esp
c0036109:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003610c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003610f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036112:	89 d8                	mov    %ebx,%eax
c0036114:	83 e0 03             	and    $0x3,%eax
c0036117:	0f 85 a3 00 00 00    	jne    c00361c0 <__pow5mult+0xc0>
c003611d:	c1 fb 02             	sar    $0x2,%ebx
c0036120:	85 db                	test   %ebx,%ebx
c0036122:	74 5c                	je     c0036180 <__pow5mult+0x80>
c0036124:	8b 71 48             	mov    0x48(%ecx),%esi
c0036127:	85 f6                	test   %esi,%esi
c0036129:	0f 84 bd 00 00 00    	je     c00361ec <__pow5mult+0xec>
c003612f:	f6 c3 01             	test   $0x1,%bl
c0036132:	75 15                	jne    c0036149 <__pow5mult+0x49>
c0036134:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036138:	d1 fb                	sar    %ebx
c003613a:	74 44                	je     c0036180 <__pow5mult+0x80>
c003613c:	8b 06                	mov    (%esi),%eax
c003613e:	85 c0                	test   %eax,%eax
c0036140:	74 4e                	je     c0036190 <__pow5mult+0x90>
c0036142:	89 c6                	mov    %eax,%esi
c0036144:	f6 c3 01             	test   $0x1,%bl
c0036147:	74 ef                	je     c0036138 <__pow5mult+0x38>
c0036149:	89 0c 24             	mov    %ecx,(%esp)
c003614c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036150:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036154:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036157:	e8 d4 fd ff ff       	call   c0035f30 <__multiply>
c003615c:	85 ff                	test   %edi,%edi
c003615e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036161:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036164:	74 52                	je     c00361b8 <__pow5mult+0xb8>
c0036166:	8b 57 04             	mov    0x4(%edi),%edx
c0036169:	d1 fb                	sar    %ebx
c003616b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003616e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036171:	8b 10                	mov    (%eax),%edx
c0036173:	89 17                	mov    %edx,(%edi)
c0036175:	89 38                	mov    %edi,(%eax)
c0036177:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003617a:	75 c0                	jne    c003613c <__pow5mult+0x3c>
c003617c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036180:	83 c4 2c             	add    $0x2c,%esp
c0036183:	89 f8                	mov    %edi,%eax
c0036185:	5b                   	pop    %ebx
c0036186:	5e                   	pop    %esi
c0036187:	5f                   	pop    %edi
c0036188:	5d                   	pop    %ebp
c0036189:	c3                   	ret    
c003618a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036190:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036194:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036198:	89 0c 24             	mov    %ecx,(%esp)
c003619b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003619e:	e8 8d fd ff ff       	call   c0035f30 <__multiply>
c00361a3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361a6:	89 06                	mov    %eax,(%esi)
c00361a8:	89 c6                	mov    %eax,%esi
c00361aa:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00361b0:	eb 92                	jmp    c0036144 <__pow5mult+0x44>
c00361b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361b8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00361bb:	e9 78 ff ff ff       	jmp    c0036138 <__pow5mult+0x38>
c00361c0:	8b 04 85 1c 9a 03 c0 	mov    -0x3ffc65e4(,%eax,4),%eax
c00361c7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00361cb:	89 0c 24             	mov    %ecx,(%esp)
c00361ce:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00361d5:	00 
c00361d6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00361da:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361dd:	e8 5e fa ff ff       	call   c0035c40 <__multadd>
c00361e2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361e5:	89 c7                	mov    %eax,%edi
c00361e7:	e9 31 ff ff ff       	jmp    c003611d <__pow5mult+0x1d>
c00361ec:	89 0c 24             	mov    %ecx,(%esp)
c00361ef:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00361f6:	00 
c00361f7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361fa:	e8 81 f9 ff ff       	call   c0035b80 <_Balloc>
c00361ff:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036202:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0036209:	89 c6                	mov    %eax,%esi
c003620b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036212:	89 41 48             	mov    %eax,0x48(%ecx)
c0036215:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003621b:	e9 0f ff ff ff       	jmp    c003612f <__pow5mult+0x2f>

c0036220 <__lshift>:
c0036220:	55                   	push   %ebp
c0036221:	89 e5                	mov    %esp,%ebp
c0036223:	57                   	push   %edi
c0036224:	56                   	push   %esi
c0036225:	53                   	push   %ebx
c0036226:	83 ec 2c             	sub    $0x2c,%esp
c0036229:	8b 45 0c             	mov    0xc(%ebp),%eax
c003622c:	8b 75 10             	mov    0x10(%ebp),%esi
c003622f:	89 c7                	mov    %eax,%edi
c0036231:	8b 50 04             	mov    0x4(%eax),%edx
c0036234:	8b 40 10             	mov    0x10(%eax),%eax
c0036237:	89 f3                	mov    %esi,%ebx
c0036239:	c1 fb 05             	sar    $0x5,%ebx
c003623c:	01 d8                	add    %ebx,%eax
c003623e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036241:	83 c0 01             	add    $0x1,%eax
c0036244:	89 c1                	mov    %eax,%ecx
c0036246:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036249:	8b 47 08             	mov    0x8(%edi),%eax
c003624c:	39 c1                	cmp    %eax,%ecx
c003624e:	7e 09                	jle    c0036259 <__lshift+0x39>
c0036250:	01 c0                	add    %eax,%eax
c0036252:	83 c2 01             	add    $0x1,%edx
c0036255:	39 c1                	cmp    %eax,%ecx
c0036257:	7f f7                	jg     c0036250 <__lshift+0x30>
c0036259:	8b 45 08             	mov    0x8(%ebp),%eax
c003625c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036260:	89 04 24             	mov    %eax,(%esp)
c0036263:	e8 18 f9 ff ff       	call   c0035b80 <_Balloc>
c0036268:	85 db                	test   %ebx,%ebx
c003626a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003626d:	8d 50 14             	lea    0x14(%eax),%edx
c0036270:	7e 17                	jle    c0036289 <__lshift+0x69>
c0036272:	31 c0                	xor    %eax,%eax
c0036274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036278:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003627f:	83 c0 01             	add    $0x1,%eax
c0036282:	39 d8                	cmp    %ebx,%eax
c0036284:	75 f2                	jne    c0036278 <__lshift+0x58>
c0036286:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036289:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003628c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003628f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036292:	83 c0 14             	add    $0x14,%eax
c0036295:	83 e6 1f             	and    $0x1f,%esi
c0036298:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003629b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c003629e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00362a1:	74 7d                	je     c0036320 <__lshift+0x100>
c00362a3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c00362aa:	29 75 dc             	sub    %esi,-0x24(%ebp)
c00362ad:	31 f6                	xor    %esi,%esi
c00362af:	eb 09                	jmp    c00362ba <__lshift+0x9a>
c00362b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00362b8:	89 fa                	mov    %edi,%edx
c00362ba:	8b 18                	mov    (%eax),%ebx
c00362bc:	83 c0 04             	add    $0x4,%eax
c00362bf:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00362c3:	8d 7a 04             	lea    0x4(%edx),%edi
c00362c6:	d3 e3                	shl    %cl,%ebx
c00362c8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c00362cc:	09 f3                	or     %esi,%ebx
c00362ce:	89 1a                	mov    %ebx,(%edx)
c00362d0:	8b 70 fc             	mov    -0x4(%eax),%esi
c00362d3:	d3 ee                	shr    %cl,%esi
c00362d5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00362d8:	77 de                	ja     c00362b8 <__lshift+0x98>
c00362da:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00362dd:	89 72 04             	mov    %esi,0x4(%edx)
c00362e0:	83 c0 02             	add    $0x2,%eax
c00362e3:	85 f6                	test   %esi,%esi
c00362e5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c00362e9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00362ec:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00362ef:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00362f2:	8b 75 0c             	mov    0xc(%ebp),%esi
c00362f5:	83 e8 01             	sub    $0x1,%eax
c00362f8:	89 47 10             	mov    %eax,0x10(%edi)
c00362fb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00362fe:	8b 50 04             	mov    0x4(%eax),%edx
c0036301:	8b 45 08             	mov    0x8(%ebp),%eax
c0036304:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036307:	8d 04 90             	lea    (%eax,%edx,4),%eax
c003630a:	8b 10                	mov    (%eax),%edx
c003630c:	89 16                	mov    %edx,(%esi)
c003630e:	89 30                	mov    %esi,(%eax)
c0036310:	83 c4 2c             	add    $0x2c,%esp
c0036313:	89 f8                	mov    %edi,%eax
c0036315:	5b                   	pop    %ebx
c0036316:	5e                   	pop    %esi
c0036317:	5f                   	pop    %edi
c0036318:	5d                   	pop    %ebp
c0036319:	c3                   	ret    
c003631a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036320:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036323:	90                   	nop
c0036324:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036328:	83 c0 04             	add    $0x4,%eax
c003632b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003632e:	83 c2 04             	add    $0x4,%edx
c0036331:	39 c3                	cmp    %eax,%ebx
c0036333:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036336:	77 f0                	ja     c0036328 <__lshift+0x108>
c0036338:	eb b2                	jmp    c00362ec <__lshift+0xcc>
c003633a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036340 <__mcmp>:
c0036340:	55                   	push   %ebp
c0036341:	89 e5                	mov    %esp,%ebp
c0036343:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036346:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036349:	53                   	push   %ebx
c003634a:	8b 41 10             	mov    0x10(%ecx),%eax
c003634d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036350:	29 d8                	sub    %ebx,%eax
c0036352:	85 c0                	test   %eax,%eax
c0036354:	75 27                	jne    c003637d <__mcmp+0x3d>
c0036356:	c1 e3 02             	shl    $0x2,%ebx
c0036359:	83 c1 14             	add    $0x14,%ecx
c003635c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003635f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036363:	eb 07                	jmp    c003636c <__mcmp+0x2c>
c0036365:	8d 76 00             	lea    0x0(%esi),%esi
c0036368:	39 c1                	cmp    %eax,%ecx
c003636a:	73 14                	jae    c0036380 <__mcmp+0x40>
c003636c:	83 ea 04             	sub    $0x4,%edx
c003636f:	83 e8 04             	sub    $0x4,%eax
c0036372:	8b 1a                	mov    (%edx),%ebx
c0036374:	39 18                	cmp    %ebx,(%eax)
c0036376:	74 f0                	je     c0036368 <__mcmp+0x28>
c0036378:	19 c0                	sbb    %eax,%eax
c003637a:	83 c8 01             	or     $0x1,%eax
c003637d:	5b                   	pop    %ebx
c003637e:	5d                   	pop    %ebp
c003637f:	c3                   	ret    
c0036380:	31 c0                	xor    %eax,%eax
c0036382:	5b                   	pop    %ebx
c0036383:	5d                   	pop    %ebp
c0036384:	c3                   	ret    
c0036385:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036390 <__mdiff>:
c0036390:	55                   	push   %ebp
c0036391:	89 e5                	mov    %esp,%ebp
c0036393:	57                   	push   %edi
c0036394:	56                   	push   %esi
c0036395:	53                   	push   %ebx
c0036396:	83 ec 2c             	sub    $0x2c,%esp
c0036399:	8b 75 0c             	mov    0xc(%ebp),%esi
c003639c:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003639f:	89 34 24             	mov    %esi,(%esp)
c00363a2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00363a6:	e8 95 ff ff ff       	call   c0036340 <__mcmp>
c00363ab:	85 c0                	test   %eax,%eax
c00363ad:	0f 84 25 01 00 00    	je     c00364d8 <__mdiff+0x148>
c00363b3:	0f 88 0f 01 00 00    	js     c00364c8 <__mdiff+0x138>
c00363b9:	31 ff                	xor    %edi,%edi
c00363bb:	8b 46 04             	mov    0x4(%esi),%eax
c00363be:	83 c6 14             	add    $0x14,%esi
c00363c1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00363c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00363c8:	89 04 24             	mov    %eax,(%esp)
c00363cb:	e8 b0 f7 ff ff       	call   c0035b80 <_Balloc>
c00363d0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c00363d3:	89 c2                	mov    %eax,%edx
c00363d5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00363d8:	89 78 0c             	mov    %edi,0xc(%eax)
c00363db:	8b 46 fc             	mov    -0x4(%esi),%eax
c00363de:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c00363e1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00363e4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c00363e7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00363ea:	8b 43 10             	mov    0x10(%ebx),%eax
c00363ed:	31 db                	xor    %ebx,%ebx
c00363ef:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c00363f2:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00363f5:	89 d0                	mov    %edx,%eax
c00363f7:	83 c0 14             	add    $0x14,%eax
c00363fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036400:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036403:	83 c0 04             	add    $0x4,%eax
c0036406:	83 c1 04             	add    $0x4,%ecx
c0036409:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c003640d:	8b 3e                	mov    (%esi),%edi
c003640f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036412:	0f b7 d7             	movzwl %di,%edx
c0036415:	01 da                	add    %ebx,%edx
c0036417:	0f b7 de             	movzwl %si,%ebx
c003641a:	29 da                	sub    %ebx,%edx
c003641c:	c1 ef 10             	shr    $0x10,%edi
c003641f:	89 d3                	mov    %edx,%ebx
c0036421:	c1 ee 10             	shr    $0x10,%esi
c0036424:	0f b7 d2             	movzwl %dx,%edx
c0036427:	c1 fb 10             	sar    $0x10,%ebx
c003642a:	29 f7                	sub    %esi,%edi
c003642c:	01 df                	add    %ebx,%edi
c003642e:	89 fb                	mov    %edi,%ebx
c0036430:	c1 e7 10             	shl    $0x10,%edi
c0036433:	09 d7                	or     %edx,%edi
c0036435:	c1 fb 10             	sar    $0x10,%ebx
c0036438:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003643b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003643e:	77 c0                	ja     c0036400 <__mdiff+0x70>
c0036440:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036443:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036446:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036449:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003644c:	39 f1                	cmp    %esi,%ecx
c003644e:	76 3f                	jbe    c003648f <__mdiff+0xff>
c0036450:	8b 3e                	mov    (%esi),%edi
c0036452:	83 c6 04             	add    $0x4,%esi
c0036455:	83 c0 04             	add    $0x4,%eax
c0036458:	0f b7 d7             	movzwl %di,%edx
c003645b:	01 da                	add    %ebx,%edx
c003645d:	89 d3                	mov    %edx,%ebx
c003645f:	0f b7 d2             	movzwl %dx,%edx
c0036462:	c1 fb 10             	sar    $0x10,%ebx
c0036465:	c1 ef 10             	shr    $0x10,%edi
c0036468:	01 df                	add    %ebx,%edi
c003646a:	89 fb                	mov    %edi,%ebx
c003646c:	c1 e7 10             	shl    $0x10,%edi
c003646f:	09 d7                	or     %edx,%edi
c0036471:	c1 fb 10             	sar    $0x10,%ebx
c0036474:	39 f1                	cmp    %esi,%ecx
c0036476:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036479:	77 d5                	ja     c0036450 <__mdiff+0xc0>
c003647b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003647e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036481:	f7 d0                	not    %eax
c0036483:	01 c8                	add    %ecx,%eax
c0036485:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036488:	c1 e8 02             	shr    $0x2,%eax
c003648b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c003648f:	85 ff                	test   %edi,%edi
c0036491:	75 23                	jne    c00364b6 <__mdiff+0x126>
c0036493:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036496:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c003649d:	29 d0                	sub    %edx,%eax
c003649f:	89 ca                	mov    %ecx,%edx
c00364a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00364a8:	83 ea 01             	sub    $0x1,%edx
c00364ab:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00364af:	85 c9                	test   %ecx,%ecx
c00364b1:	74 f5                	je     c00364a8 <__mdiff+0x118>
c00364b3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00364b6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00364b9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364bc:	89 48 10             	mov    %ecx,0x10(%eax)
c00364bf:	83 c4 2c             	add    $0x2c,%esp
c00364c2:	5b                   	pop    %ebx
c00364c3:	5e                   	pop    %esi
c00364c4:	5f                   	pop    %edi
c00364c5:	5d                   	pop    %ebp
c00364c6:	c3                   	ret    
c00364c7:	90                   	nop
c00364c8:	89 f0                	mov    %esi,%eax
c00364ca:	bf 01 00 00 00       	mov    $0x1,%edi
c00364cf:	89 de                	mov    %ebx,%esi
c00364d1:	89 c3                	mov    %eax,%ebx
c00364d3:	e9 e3 fe ff ff       	jmp    c00363bb <__mdiff+0x2b>
c00364d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00364db:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00364e2:	00 
c00364e3:	89 04 24             	mov    %eax,(%esp)
c00364e6:	e8 95 f6 ff ff       	call   c0035b80 <_Balloc>
c00364eb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00364f2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c00364f9:	83 c4 2c             	add    $0x2c,%esp
c00364fc:	5b                   	pop    %ebx
c00364fd:	5e                   	pop    %esi
c00364fe:	5f                   	pop    %edi
c00364ff:	5d                   	pop    %ebp
c0036500:	c3                   	ret    
c0036501:	eb 0d                	jmp    c0036510 <__ulp>
c0036503:	90                   	nop
c0036504:	90                   	nop
c0036505:	90                   	nop
c0036506:	90                   	nop
c0036507:	90                   	nop
c0036508:	90                   	nop
c0036509:	90                   	nop
c003650a:	90                   	nop
c003650b:	90                   	nop
c003650c:	90                   	nop
c003650d:	90                   	nop
c003650e:	90                   	nop
c003650f:	90                   	nop

c0036510 <__ulp>:
c0036510:	55                   	push   %ebp
c0036511:	89 e5                	mov    %esp,%ebp
c0036513:	83 ec 08             	sub    $0x8,%esp
c0036516:	dd 45 08             	fldl   0x8(%ebp)
c0036519:	dd 5d f8             	fstpl  -0x8(%ebp)
c003651c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003651f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036525:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003652b:	85 c9                	test   %ecx,%ecx
c003652d:	7e 11                	jle    c0036540 <__ulp+0x30>
c003652f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036532:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036539:	dd 45 f8             	fldl   -0x8(%ebp)
c003653c:	c9                   	leave  
c003653d:	c3                   	ret    
c003653e:	66 90                	xchg   %ax,%ax
c0036540:	f7 d9                	neg    %ecx
c0036542:	c1 f9 14             	sar    $0x14,%ecx
c0036545:	83 f9 13             	cmp    $0x13,%ecx
c0036548:	7e 26                	jle    c0036570 <__ulp+0x60>
c003654a:	83 f9 32             	cmp    $0x32,%ecx
c003654d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036552:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036559:	7f 0b                	jg     c0036566 <__ulp+0x56>
c003655b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036560:	29 ca                	sub    %ecx,%edx
c0036562:	89 d1                	mov    %edx,%ecx
c0036564:	d3 e0                	shl    %cl,%eax
c0036566:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036569:	dd 45 f8             	fldl   -0x8(%ebp)
c003656c:	c9                   	leave  
c003656d:	c3                   	ret    
c003656e:	66 90                	xchg   %ax,%ax
c0036570:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036575:	d3 f8                	sar    %cl,%eax
c0036577:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003657a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036581:	dd 45 f8             	fldl   -0x8(%ebp)
c0036584:	c9                   	leave  
c0036585:	c3                   	ret    
c0036586:	8d 76 00             	lea    0x0(%esi),%esi
c0036589:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036590 <__b2d>:
c0036590:	55                   	push   %ebp
c0036591:	89 e5                	mov    %esp,%ebp
c0036593:	57                   	push   %edi
c0036594:	56                   	push   %esi
c0036595:	53                   	push   %ebx
c0036596:	83 ec 18             	sub    $0x18,%esp
c0036599:	8b 45 08             	mov    0x8(%ebp),%eax
c003659c:	8d 78 14             	lea    0x14(%eax),%edi
c003659f:	8b 40 10             	mov    0x10(%eax),%eax
c00365a2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c00365a5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c00365a8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00365ab:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00365ae:	89 34 24             	mov    %esi,(%esp)
c00365b1:	e8 6a f8 ff ff       	call   c0035e20 <__hi0bits>
c00365b6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00365b9:	ba 20 00 00 00       	mov    $0x20,%edx
c00365be:	29 c2                	sub    %eax,%edx
c00365c0:	83 f8 0a             	cmp    $0xa,%eax
c00365c3:	89 11                	mov    %edx,(%ecx)
c00365c5:	7f 41                	jg     c0036608 <__b2d+0x78>
c00365c7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c00365cc:	89 f2                	mov    %esi,%edx
c00365ce:	29 c1                	sub    %eax,%ecx
c00365d0:	d3 ea                	shr    %cl,%edx
c00365d2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c00365d8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c00365db:	31 d2                	xor    %edx,%edx
c00365dd:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00365e0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00365e7:	73 05                	jae    c00365ee <__b2d+0x5e>
c00365e9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00365ec:	d3 ea                	shr    %cl,%edx
c00365ee:	8d 48 15             	lea    0x15(%eax),%ecx
c00365f1:	d3 e6                	shl    %cl,%esi
c00365f3:	09 f2                	or     %esi,%edx
c00365f5:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00365f8:	dd 45 e8             	fldl   -0x18(%ebp)
c00365fb:	83 c4 18             	add    $0x18,%esp
c00365fe:	5b                   	pop    %ebx
c00365ff:	5e                   	pop    %esi
c0036600:	5f                   	pop    %edi
c0036601:	5d                   	pop    %ebp
c0036602:	c3                   	ret    
c0036603:	90                   	nop
c0036604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036608:	31 d2                	xor    %edx,%edx
c003660a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c003660d:	73 09                	jae    c0036618 <__b2d+0x88>
c003660f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036612:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036615:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036618:	89 c3                	mov    %eax,%ebx
c003661a:	83 eb 0b             	sub    $0xb,%ebx
c003661d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036620:	74 4e                	je     c0036670 <__b2d+0xe0>
c0036622:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036626:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003662b:	29 c3                	sub    %eax,%ebx
c003662d:	89 d0                	mov    %edx,%eax
c003662f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036636:	d3 e6                	shl    %cl,%esi
c0036638:	89 d9                	mov    %ebx,%ecx
c003663a:	d3 e8                	shr    %cl,%eax
c003663c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003663f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036645:	09 c6                	or     %eax,%esi
c0036647:	31 c0                	xor    %eax,%eax
c0036649:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003664c:	39 f9                	cmp    %edi,%ecx
c003664e:	76 07                	jbe    c0036657 <__b2d+0xc7>
c0036650:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036653:	89 d9                	mov    %ebx,%ecx
c0036655:	d3 e8                	shr    %cl,%eax
c0036657:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003665b:	d3 e2                	shl    %cl,%edx
c003665d:	09 d0                	or     %edx,%eax
c003665f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036662:	dd 45 e8             	fldl   -0x18(%ebp)
c0036665:	83 c4 18             	add    $0x18,%esp
c0036668:	5b                   	pop    %ebx
c0036669:	5e                   	pop    %esi
c003666a:	5f                   	pop    %edi
c003666b:	5d                   	pop    %ebp
c003666c:	c3                   	ret    
c003666d:	8d 76 00             	lea    0x0(%esi),%esi
c0036670:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036676:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036679:	89 55 e8             	mov    %edx,-0x18(%ebp)
c003667c:	dd 45 e8             	fldl   -0x18(%ebp)
c003667f:	83 c4 18             	add    $0x18,%esp
c0036682:	5b                   	pop    %ebx
c0036683:	5e                   	pop    %esi
c0036684:	5f                   	pop    %edi
c0036685:	5d                   	pop    %ebp
c0036686:	c3                   	ret    
c0036687:	89 f6                	mov    %esi,%esi
c0036689:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036690 <__d2b>:
c0036690:	55                   	push   %ebp
c0036691:	89 e5                	mov    %esp,%ebp
c0036693:	57                   	push   %edi
c0036694:	56                   	push   %esi
c0036695:	53                   	push   %ebx
c0036696:	83 ec 2c             	sub    $0x2c,%esp
c0036699:	8b 45 08             	mov    0x8(%ebp),%eax
c003669c:	dd 45 0c             	fldl   0xc(%ebp)
c003669f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00366a6:	00 
c00366a7:	dd 5d d0             	fstpl  -0x30(%ebp)
c00366aa:	89 04 24             	mov    %eax,(%esp)
c00366ad:	e8 ce f4 ff ff       	call   c0035b80 <_Balloc>
c00366b2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c00366b5:	89 c6                	mov    %eax,%esi
c00366b7:	89 d8                	mov    %ebx,%eax
c00366b9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c00366bf:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00366c4:	c1 eb 14             	shr    $0x14,%ebx
c00366c7:	85 db                	test   %ebx,%ebx
c00366c9:	74 05                	je     c00366d0 <__d2b+0x40>
c00366cb:	0d 00 00 10 00       	or     $0x100000,%eax
c00366d0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00366d3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00366d6:	85 c0                	test   %eax,%eax
c00366d8:	74 56                	je     c0036730 <__d2b+0xa0>
c00366da:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00366dd:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00366e0:	89 04 24             	mov    %eax,(%esp)
c00366e3:	e8 98 f7 ff ff       	call   c0035e80 <__lo0bits>
c00366e8:	85 c0                	test   %eax,%eax
c00366ea:	0f 85 90 00 00 00    	jne    c0036780 <__d2b+0xf0>
c00366f0:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00366f3:	89 56 14             	mov    %edx,0x14(%esi)
c00366f6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00366f9:	83 fa 01             	cmp    $0x1,%edx
c00366fc:	19 ff                	sbb    %edi,%edi
c00366fe:	83 c7 02             	add    $0x2,%edi
c0036701:	85 db                	test   %ebx,%ebx
c0036703:	89 56 18             	mov    %edx,0x18(%esi)
c0036706:	89 7e 10             	mov    %edi,0x10(%esi)
c0036709:	74 49                	je     c0036754 <__d2b+0xc4>
c003670b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c003670e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036715:	89 11                	mov    %edx,(%ecx)
c0036717:	ba 35 00 00 00       	mov    $0x35,%edx
c003671c:	29 c2                	sub    %eax,%edx
c003671e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036721:	89 10                	mov    %edx,(%eax)
c0036723:	83 c4 2c             	add    $0x2c,%esp
c0036726:	89 f0                	mov    %esi,%eax
c0036728:	5b                   	pop    %ebx
c0036729:	5e                   	pop    %esi
c003672a:	5f                   	pop    %edi
c003672b:	5d                   	pop    %ebp
c003672c:	c3                   	ret    
c003672d:	8d 76 00             	lea    0x0(%esi),%esi
c0036730:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036733:	bf 01 00 00 00       	mov    $0x1,%edi
c0036738:	89 04 24             	mov    %eax,(%esp)
c003673b:	e8 40 f7 ff ff       	call   c0035e80 <__lo0bits>
c0036740:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036743:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003674a:	89 56 14             	mov    %edx,0x14(%esi)
c003674d:	83 c0 20             	add    $0x20,%eax
c0036750:	85 db                	test   %ebx,%ebx
c0036752:	75 b7                	jne    c003670b <__d2b+0x7b>
c0036754:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036757:	2d 32 04 00 00       	sub    $0x432,%eax
c003675c:	89 01                	mov    %eax,(%ecx)
c003675e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036762:	c1 e7 05             	shl    $0x5,%edi
c0036765:	89 04 24             	mov    %eax,(%esp)
c0036768:	e8 b3 f6 ff ff       	call   c0035e20 <__hi0bits>
c003676d:	29 c7                	sub    %eax,%edi
c003676f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036772:	89 38                	mov    %edi,(%eax)
c0036774:	83 c4 2c             	add    $0x2c,%esp
c0036777:	89 f0                	mov    %esi,%eax
c0036779:	5b                   	pop    %ebx
c003677a:	5e                   	pop    %esi
c003677b:	5f                   	pop    %edi
c003677c:	5d                   	pop    %ebp
c003677d:	c3                   	ret    
c003677e:	66 90                	xchg   %ax,%ax
c0036780:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036783:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036788:	29 c1                	sub    %eax,%ecx
c003678a:	89 d7                	mov    %edx,%edi
c003678c:	d3 e7                	shl    %cl,%edi
c003678e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036791:	09 f9                	or     %edi,%ecx
c0036793:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036796:	89 c1                	mov    %eax,%ecx
c0036798:	d3 ea                	shr    %cl,%edx
c003679a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003679d:	e9 57 ff ff ff       	jmp    c00366f9 <__d2b+0x69>
c00367a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00367a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00367b0 <__ratio>:
c00367b0:	55                   	push   %ebp
c00367b1:	89 e5                	mov    %esp,%ebp
c00367b3:	56                   	push   %esi
c00367b4:	53                   	push   %ebx
c00367b5:	83 ec 30             	sub    $0x30,%esp
c00367b8:	8b 75 08             	mov    0x8(%ebp),%esi
c00367bb:	8d 45 f0             	lea    -0x10(%ebp),%eax
c00367be:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00367c1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367c5:	89 34 24             	mov    %esi,(%esp)
c00367c8:	e8 c3 fd ff ff       	call   c0036590 <__b2d>
c00367cd:	8d 45 f4             	lea    -0xc(%ebp),%eax
c00367d0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367d4:	89 1c 24             	mov    %ebx,(%esp)
c00367d7:	dd 55 e0             	fstl   -0x20(%ebp)
c00367da:	dd 5d d8             	fstpl  -0x28(%ebp)
c00367dd:	e8 ae fd ff ff       	call   c0036590 <__b2d>
c00367e2:	8b 46 10             	mov    0x10(%esi),%eax
c00367e5:	2b 43 10             	sub    0x10(%ebx),%eax
c00367e8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00367eb:	2b 55 f4             	sub    -0xc(%ebp),%edx
c00367ee:	c1 e0 05             	shl    $0x5,%eax
c00367f1:	01 d0                	add    %edx,%eax
c00367f3:	dd 55 d0             	fstl   -0x30(%ebp)
c00367f6:	85 c0                	test   %eax,%eax
c00367f8:	dd 45 d8             	fldl   -0x28(%ebp)
c00367fb:	7e 1b                	jle    c0036818 <__ratio+0x68>
c00367fd:	dd d8                	fstp   %st(0)
c00367ff:	c1 e0 14             	shl    $0x14,%eax
c0036802:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036805:	dd 45 e0             	fldl   -0x20(%ebp)
c0036808:	83 c4 30             	add    $0x30,%esp
c003680b:	5b                   	pop    %ebx
c003680c:	de f1                	fdivp  %st,%st(1)
c003680e:	5e                   	pop    %esi
c003680f:	5d                   	pop    %ebp
c0036810:	c3                   	ret    
c0036811:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036818:	dd d9                	fstp   %st(1)
c003681a:	c1 e0 14             	shl    $0x14,%eax
c003681d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036820:	dd 45 d0             	fldl   -0x30(%ebp)
c0036823:	83 c4 30             	add    $0x30,%esp
c0036826:	5b                   	pop    %ebx
c0036827:	de f9                	fdivrp %st,%st(1)
c0036829:	5e                   	pop    %esi
c003682a:	5d                   	pop    %ebp
c003682b:	c3                   	ret    
c003682c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036830 <_mprec_log10>:
c0036830:	55                   	push   %ebp
c0036831:	89 e5                	mov    %esp,%ebp
c0036833:	8b 45 08             	mov    0x8(%ebp),%eax
c0036836:	83 f8 17             	cmp    $0x17,%eax
c0036839:	7e 1d                	jle    c0036858 <_mprec_log10+0x28>
c003683b:	d9 e8                	fld1   
c003683d:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c0036843:	90                   	nop
c0036844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036848:	83 e8 01             	sub    $0x1,%eax
c003684b:	dc c9                	fmul   %st,%st(1)
c003684d:	75 f9                	jne    c0036848 <_mprec_log10+0x18>
c003684f:	dd d8                	fstp   %st(0)
c0036851:	5d                   	pop    %ebp
c0036852:	c3                   	ret    
c0036853:	90                   	nop
c0036854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036858:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c003685f:	5d                   	pop    %ebp
c0036860:	c3                   	ret    
c0036861:	eb 0d                	jmp    c0036870 <__copybits>
c0036863:	90                   	nop
c0036864:	90                   	nop
c0036865:	90                   	nop
c0036866:	90                   	nop
c0036867:	90                   	nop
c0036868:	90                   	nop
c0036869:	90                   	nop
c003686a:	90                   	nop
c003686b:	90                   	nop
c003686c:	90                   	nop
c003686d:	90                   	nop
c003686e:	90                   	nop
c003686f:	90                   	nop

c0036870 <__copybits>:
c0036870:	55                   	push   %ebp
c0036871:	89 e5                	mov    %esp,%ebp
c0036873:	57                   	push   %edi
c0036874:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036877:	56                   	push   %esi
c0036878:	8b 75 0c             	mov    0xc(%ebp),%esi
c003687b:	8b 45 08             	mov    0x8(%ebp),%eax
c003687e:	53                   	push   %ebx
c003687f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036882:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036885:	c1 fa 05             	sar    $0x5,%edx
c0036888:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c003688c:	8d 57 14             	lea    0x14(%edi),%edx
c003688f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0036892:	39 da                	cmp    %ebx,%edx
c0036894:	73 34                	jae    c00368ca <__copybits+0x5a>
c0036896:	89 c1                	mov    %eax,%ecx
c0036898:	83 c2 04             	add    $0x4,%edx
c003689b:	8b 42 fc             	mov    -0x4(%edx),%eax
c003689e:	83 c1 04             	add    $0x4,%ecx
c00368a1:	39 d3                	cmp    %edx,%ebx
c00368a3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c00368a6:	77 f0                	ja     c0036898 <__copybits+0x28>
c00368a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00368ab:	29 fb                	sub    %edi,%ebx
c00368ad:	8d 53 eb             	lea    -0x15(%ebx),%edx
c00368b0:	c1 ea 02             	shr    $0x2,%edx
c00368b3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c00368b7:	39 c6                	cmp    %eax,%esi
c00368b9:	76 13                	jbe    c00368ce <__copybits+0x5e>
c00368bb:	90                   	nop
c00368bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368c0:	83 c0 04             	add    $0x4,%eax
c00368c3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c00368ca:	39 c6                	cmp    %eax,%esi
c00368cc:	77 f2                	ja     c00368c0 <__copybits+0x50>
c00368ce:	5b                   	pop    %ebx
c00368cf:	5e                   	pop    %esi
c00368d0:	5f                   	pop    %edi
c00368d1:	5d                   	pop    %ebp
c00368d2:	c3                   	ret    
c00368d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00368d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00368e0 <__any_on>:
c00368e0:	55                   	push   %ebp
c00368e1:	89 e5                	mov    %esp,%ebp
c00368e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00368e6:	57                   	push   %edi
c00368e7:	56                   	push   %esi
c00368e8:	53                   	push   %ebx
c00368e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00368ec:	8d 50 14             	lea    0x14(%eax),%edx
c00368ef:	8b 40 10             	mov    0x10(%eax),%eax
c00368f2:	c1 fb 05             	sar    $0x5,%ebx
c00368f5:	39 d8                	cmp    %ebx,%eax
c00368f7:	7d 2f                	jge    c0036928 <__any_on+0x48>
c00368f9:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c00368fc:	39 da                	cmp    %ebx,%edx
c00368fe:	73 1d                	jae    c003691d <__any_on+0x3d>
c0036900:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036903:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0036906:	85 db                	test   %ebx,%ebx
c0036908:	74 0f                	je     c0036919 <__any_on+0x39>
c003690a:	eb 44                	jmp    c0036950 <__any_on+0x70>
c003690c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036910:	83 e8 04             	sub    $0x4,%eax
c0036913:	8b 08                	mov    (%eax),%ecx
c0036915:	85 c9                	test   %ecx,%ecx
c0036917:	75 37                	jne    c0036950 <__any_on+0x70>
c0036919:	39 c2                	cmp    %eax,%edx
c003691b:	72 f3                	jb     c0036910 <__any_on+0x30>
c003691d:	31 c0                	xor    %eax,%eax
c003691f:	5b                   	pop    %ebx
c0036920:	5e                   	pop    %esi
c0036921:	5f                   	pop    %edi
c0036922:	5d                   	pop    %ebp
c0036923:	c3                   	ret    
c0036924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036928:	7e 1e                	jle    c0036948 <__any_on+0x68>
c003692a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003692d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036930:	83 e1 1f             	and    $0x1f,%ecx
c0036933:	74 c7                	je     c00368fc <__any_on+0x1c>
c0036935:	8b 3b                	mov    (%ebx),%edi
c0036937:	b8 01 00 00 00       	mov    $0x1,%eax
c003693c:	89 fe                	mov    %edi,%esi
c003693e:	d3 ee                	shr    %cl,%esi
c0036940:	d3 e6                	shl    %cl,%esi
c0036942:	39 fe                	cmp    %edi,%esi
c0036944:	75 d9                	jne    c003691f <__any_on+0x3f>
c0036946:	eb b4                	jmp    c00368fc <__any_on+0x1c>
c0036948:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c003694b:	eb af                	jmp    c00368fc <__any_on+0x1c>
c003694d:	8d 76 00             	lea    0x0(%esi),%esi
c0036950:	5b                   	pop    %ebx
c0036951:	b8 01 00 00 00       	mov    $0x1,%eax
c0036956:	5e                   	pop    %esi
c0036957:	5f                   	pop    %edi
c0036958:	5d                   	pop    %ebp
c0036959:	c3                   	ret    
c003695a:	66 90                	xchg   %ax,%ax
c003695c:	66 90                	xchg   %ax,%ax
c003695e:	66 90                	xchg   %ax,%ax

c0036960 <_sbrk_r>:
c0036960:	55                   	push   %ebp
c0036961:	89 e5                	mov    %esp,%ebp
c0036963:	83 ec 18             	sub    $0x18,%esp
c0036966:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036969:	c7 05 00 50 09 c0 00 	movl   $0x0,0xc0095000
c0036970:	00 00 00 
c0036973:	89 04 24             	mov    %eax,(%esp)
c0036976:	e8 7d a0 ff ff       	call   c00309f8 <sbrk>
c003697b:	83 f8 ff             	cmp    $0xffffffff,%eax
c003697e:	74 08                	je     c0036988 <_sbrk_r+0x28>
c0036980:	c9                   	leave  
c0036981:	c3                   	ret    
c0036982:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036988:	8b 15 00 50 09 c0    	mov    0xc0095000,%edx
c003698e:	85 d2                	test   %edx,%edx
c0036990:	74 ee                	je     c0036980 <_sbrk_r+0x20>
c0036992:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036995:	89 11                	mov    %edx,(%ecx)
c0036997:	c9                   	leave  
c0036998:	c3                   	ret    
c0036999:	66 90                	xchg   %ax,%ax
c003699b:	66 90                	xchg   %ax,%ax
c003699d:	66 90                	xchg   %ax,%ax
c003699f:	90                   	nop

c00369a0 <__fpclassifyd>:
c00369a0:	55                   	push   %ebp
c00369a1:	b8 02 00 00 00       	mov    $0x2,%eax
c00369a6:	89 e5                	mov    %esp,%ebp
c00369a8:	53                   	push   %ebx
c00369a9:	83 ec 0c             	sub    $0xc,%esp
c00369ac:	dd 45 08             	fldl   0x8(%ebp)
c00369af:	dd 5d f0             	fstpl  -0x10(%ebp)
c00369b2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00369b5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c00369b8:	89 d3                	mov    %edx,%ebx
c00369ba:	09 cb                	or     %ecx,%ebx
c00369bc:	75 0a                	jne    c00369c8 <__fpclassifyd+0x28>
c00369be:	83 c4 0c             	add    $0xc,%esp
c00369c1:	5b                   	pop    %ebx
c00369c2:	5d                   	pop    %ebp
c00369c3:	c3                   	ret    
c00369c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369c8:	85 d2                	test   %edx,%edx
c00369ca:	0f 94 c2             	sete   %dl
c00369cd:	75 08                	jne    c00369d7 <__fpclassifyd+0x37>
c00369cf:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c00369d5:	74 e7                	je     c00369be <__fpclassifyd+0x1e>
c00369d7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c00369dd:	b8 04 00 00 00       	mov    $0x4,%eax
c00369e2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c00369e8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c00369ee:	76 ce                	jbe    c00369be <__fpclassifyd+0x1e>
c00369f0:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c00369f6:	b0 03                	mov    $0x3,%al
c00369f8:	76 c4                	jbe    c00369be <__fpclassifyd+0x1e>
c00369fa:	31 c0                	xor    %eax,%eax
c00369fc:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036a02:	0f 94 c0             	sete   %al
c0036a05:	21 d0                	and    %edx,%eax
c0036a07:	eb b5                	jmp    c00369be <__fpclassifyd+0x1e>
c0036a09:	66 90                	xchg   %ax,%ax
c0036a0b:	66 90                	xchg   %ax,%ax
c0036a0d:	66 90                	xchg   %ax,%ax
c0036a0f:	90                   	nop

c0036a10 <strcmp>:
c0036a10:	55                   	push   %ebp
c0036a11:	89 e5                	mov    %esp,%ebp
c0036a13:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a16:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036a19:	53                   	push   %ebx
c0036a1a:	89 c1                	mov    %eax,%ecx
c0036a1c:	09 d1                	or     %edx,%ecx
c0036a1e:	83 e1 03             	and    $0x3,%ecx
c0036a21:	75 17                	jne    c0036a3a <strcmp+0x2a>
c0036a23:	8b 08                	mov    (%eax),%ecx
c0036a25:	3b 0a                	cmp    (%edx),%ecx
c0036a27:	74 33                	je     c0036a5c <strcmp+0x4c>
c0036a29:	eb 0f                	jmp    c0036a3a <strcmp+0x2a>
c0036a2b:	90                   	nop
c0036a2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a30:	3a 0a                	cmp    (%edx),%cl
c0036a32:	75 0d                	jne    c0036a41 <strcmp+0x31>
c0036a34:	83 c0 01             	add    $0x1,%eax
c0036a37:	83 c2 01             	add    $0x1,%edx
c0036a3a:	0f b6 08             	movzbl (%eax),%ecx
c0036a3d:	84 c9                	test   %cl,%cl
c0036a3f:	75 ef                	jne    c0036a30 <strcmp+0x20>
c0036a41:	0f b6 00             	movzbl (%eax),%eax
c0036a44:	0f b6 12             	movzbl (%edx),%edx
c0036a47:	5b                   	pop    %ebx
c0036a48:	5d                   	pop    %ebp
c0036a49:	29 d0                	sub    %edx,%eax
c0036a4b:	c3                   	ret    
c0036a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a50:	83 c0 04             	add    $0x4,%eax
c0036a53:	83 c2 04             	add    $0x4,%edx
c0036a56:	8b 08                	mov    (%eax),%ecx
c0036a58:	3b 0a                	cmp    (%edx),%ecx
c0036a5a:	75 de                	jne    c0036a3a <strcmp+0x2a>
c0036a5c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036a62:	f7 d1                	not    %ecx
c0036a64:	21 cb                	and    %ecx,%ebx
c0036a66:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036a6c:	74 e2                	je     c0036a50 <strcmp+0x40>
c0036a6e:	31 c0                	xor    %eax,%eax
c0036a70:	5b                   	pop    %ebx
c0036a71:	5d                   	pop    %ebp
c0036a72:	c3                   	ret    
c0036a73:	66 90                	xchg   %ax,%ax
c0036a75:	66 90                	xchg   %ax,%ax
c0036a77:	66 90                	xchg   %ax,%ax
c0036a79:	66 90                	xchg   %ax,%ax
c0036a7b:	66 90                	xchg   %ax,%ax
c0036a7d:	66 90                	xchg   %ax,%ax
c0036a7f:	90                   	nop

c0036a80 <strlen>:
c0036a80:	55                   	push   %ebp
c0036a81:	89 e5                	mov    %esp,%ebp
c0036a83:	57                   	push   %edi
c0036a84:	8b 55 08             	mov    0x8(%ebp),%edx
c0036a87:	89 d7                	mov    %edx,%edi
c0036a89:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a8f:	74 25                	je     c0036ab6 <L5>
c0036a91:	8a 0f                	mov    (%edi),%cl
c0036a93:	47                   	inc    %edi
c0036a94:	84 c9                	test   %cl,%cl
c0036a96:	74 56                	je     c0036aee <L15>
c0036a98:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a9e:	74 16                	je     c0036ab6 <L5>
c0036aa0:	8a 0f                	mov    (%edi),%cl
c0036aa2:	47                   	inc    %edi
c0036aa3:	84 c9                	test   %cl,%cl
c0036aa5:	74 47                	je     c0036aee <L15>
c0036aa7:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036aad:	74 07                	je     c0036ab6 <L5>
c0036aaf:	8a 0f                	mov    (%edi),%cl
c0036ab1:	47                   	inc    %edi
c0036ab2:	84 c9                	test   %cl,%cl
c0036ab4:	74 38                	je     c0036aee <L15>

c0036ab6 <L5>:
c0036ab6:	83 ef 04             	sub    $0x4,%edi
c0036ab9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036ac0 <L10>:
c0036ac0:	83 c7 04             	add    $0x4,%edi
c0036ac3:	8b 0f                	mov    (%edi),%ecx
c0036ac5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036acb:	f7 d1                	not    %ecx
c0036acd:	21 c8                	and    %ecx,%eax
c0036acf:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036ad4:	74 ea                	je     c0036ac0 <L10>
c0036ad6:	f7 d1                	not    %ecx
c0036ad8:	47                   	inc    %edi
c0036ad9:	84 c9                	test   %cl,%cl
c0036adb:	74 11                	je     c0036aee <L15>
c0036add:	47                   	inc    %edi
c0036ade:	c1 e9 08             	shr    $0x8,%ecx
c0036ae1:	84 c9                	test   %cl,%cl
c0036ae3:	74 09                	je     c0036aee <L15>
c0036ae5:	47                   	inc    %edi
c0036ae6:	c1 e9 08             	shr    $0x8,%ecx
c0036ae9:	84 c9                	test   %cl,%cl
c0036aeb:	74 01                	je     c0036aee <L15>
c0036aed:	47                   	inc    %edi

c0036aee <L15>:
c0036aee:	29 d7                	sub    %edx,%edi
c0036af0:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036af3:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036af6:	5f                   	pop    %edi
c0036af7:	c9                   	leave  
c0036af8:	c3                   	ret    
c0036af9:	66 90                	xchg   %ax,%ax
c0036afb:	66 90                	xchg   %ax,%ax
c0036afd:	66 90                	xchg   %ax,%ax
c0036aff:	90                   	nop

c0036b00 <__ssprint_r>:
c0036b00:	55                   	push   %ebp
c0036b01:	89 e5                	mov    %esp,%ebp
c0036b03:	57                   	push   %edi
c0036b04:	56                   	push   %esi
c0036b05:	53                   	push   %ebx
c0036b06:	83 ec 2c             	sub    $0x2c,%esp
c0036b09:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b0c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036b0f:	8b 00                	mov    (%eax),%eax
c0036b11:	89 c7                	mov    %eax,%edi
c0036b13:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b16:	8b 40 08             	mov    0x8(%eax),%eax
c0036b19:	85 c0                	test   %eax,%eax
c0036b1b:	0f 84 af 01 00 00    	je     c0036cd0 <__ssprint_r+0x1d0>
c0036b21:	31 c9                	xor    %ecx,%ecx
c0036b23:	31 d2                	xor    %edx,%edx
c0036b25:	8b 03                	mov    (%ebx),%eax
c0036b27:	89 ce                	mov    %ecx,%esi
c0036b29:	85 f6                	test   %esi,%esi
c0036b2b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036b2e:	0f 84 ec 00 00 00    	je     c0036c20 <__ssprint_r+0x120>
c0036b34:	8b 53 08             	mov    0x8(%ebx),%edx
c0036b37:	39 d6                	cmp    %edx,%esi
c0036b39:	0f 82 fc 00 00 00    	jb     c0036c3b <__ssprint_r+0x13b>
c0036b3f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036b43:	66 f7 c1 80 04       	test   $0x480,%cx
c0036b48:	0f 84 fa 00 00 00    	je     c0036c48 <__ssprint_r+0x148>
c0036b4e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036b51:	29 d0                	sub    %edx,%eax
c0036b53:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036b56:	8b 43 14             	mov    0x14(%ebx),%eax
c0036b59:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036b5c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036b5f:	89 c2                	mov    %eax,%edx
c0036b61:	c1 ea 1f             	shr    $0x1f,%edx
c0036b64:	01 d0                	add    %edx,%eax
c0036b66:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b69:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036b6c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036b6f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036b73:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036b76:	0f 83 34 01 00 00    	jae    c0036cb0 <__ssprint_r+0x1b0>
c0036b7c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b7f:	80 e5 04             	and    $0x4,%ch
c0036b82:	0f 84 c8 00 00 00    	je     c0036c50 <__ssprint_r+0x150>
c0036b88:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b8c:	8b 45 08             	mov    0x8(%ebp),%eax
c0036b8f:	89 04 24             	mov    %eax,(%esp)
c0036b92:	e8 e9 e7 ff ff       	call   c0035380 <_malloc_r>
c0036b97:	85 c0                	test   %eax,%eax
c0036b99:	89 c2                	mov    %eax,%edx
c0036b9b:	0f 84 e1 00 00 00    	je     c0036c82 <__ssprint_r+0x182>
c0036ba1:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036ba4:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036ba7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036bab:	8b 43 10             	mov    0x10(%ebx),%eax
c0036bae:	89 14 24             	mov    %edx,(%esp)
c0036bb1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036bb5:	e8 0a b2 ff ff       	call   c0031dc4 <memcpy>
c0036bba:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036bbe:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036bc1:	66 25 7f fb          	and    $0xfb7f,%ax
c0036bc5:	0c 80                	or     $0x80,%al
c0036bc7:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036bcb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036bce:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036bd1:	89 53 10             	mov    %edx,0x10(%ebx)
c0036bd4:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036bd7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036bda:	01 d0                	add    %edx,%eax
c0036bdc:	89 03                	mov    %eax,(%ebx)
c0036bde:	89 f2                	mov    %esi,%edx
c0036be0:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036be3:	89 f1                	mov    %esi,%ecx
c0036be5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036be9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036bec:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036bef:	89 04 24             	mov    %eax,(%esp)
c0036bf2:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036bf5:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036bf9:	e8 22 13 00 00       	call   c0037f20 <memmove>
c0036bfe:	8b 03                	mov    (%ebx),%eax
c0036c00:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c03:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036c06:	29 53 08             	sub    %edx,0x8(%ebx)
c0036c09:	01 c8                	add    %ecx,%eax
c0036c0b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036c0e:	89 03                	mov    %eax,(%ebx)
c0036c10:	8b 51 08             	mov    0x8(%ecx),%edx
c0036c13:	29 f2                	sub    %esi,%edx
c0036c15:	85 d2                	test   %edx,%edx
c0036c17:	89 51 08             	mov    %edx,0x8(%ecx)
c0036c1a:	0f 84 98 00 00 00    	je     c0036cb8 <__ssprint_r+0x1b8>
c0036c20:	8b 77 04             	mov    0x4(%edi),%esi
c0036c23:	83 c7 08             	add    $0x8,%edi
c0036c26:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036c29:	85 f6                	test   %esi,%esi
c0036c2b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036c2e:	74 f0                	je     c0036c20 <__ssprint_r+0x120>
c0036c30:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c33:	39 d6                	cmp    %edx,%esi
c0036c35:	0f 83 04 ff ff ff    	jae    c0036b3f <__ssprint_r+0x3f>
c0036c3b:	89 f2                	mov    %esi,%edx
c0036c3d:	89 f1                	mov    %esi,%ecx
c0036c3f:	eb a4                	jmp    c0036be5 <__ssprint_r+0xe5>
c0036c41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c48:	89 d1                	mov    %edx,%ecx
c0036c4a:	eb 99                	jmp    c0036be5 <__ssprint_r+0xe5>
c0036c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c50:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c54:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036c57:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c5e:	89 04 24             	mov    %eax,(%esp)
c0036c61:	e8 4a 13 00 00       	call   c0037fb0 <_realloc_r>
c0036c66:	85 c0                	test   %eax,%eax
c0036c68:	89 c2                	mov    %eax,%edx
c0036c6a:	0f 85 5b ff ff ff    	jne    c0036bcb <__ssprint_r+0xcb>
c0036c70:	8b 43 10             	mov    0x10(%ebx),%eax
c0036c73:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c77:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c7a:	89 04 24             	mov    %eax,(%esp)
c0036c7d:	e8 3e 10 00 00       	call   c0037cc0 <_free_r>
c0036c82:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c85:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036c8b:	8b 45 10             	mov    0x10(%ebp),%eax
c0036c8e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036c93:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036c9a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036ca1:	83 c4 2c             	add    $0x2c,%esp
c0036ca4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036ca9:	5b                   	pop    %ebx
c0036caa:	5e                   	pop    %esi
c0036cab:	5f                   	pop    %edi
c0036cac:	5d                   	pop    %ebp
c0036cad:	c3                   	ret    
c0036cae:	66 90                	xchg   %ax,%ax
c0036cb0:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036cb3:	e9 c7 fe ff ff       	jmp    c0036b7f <__ssprint_r+0x7f>
c0036cb8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036cbf:	83 c4 2c             	add    $0x2c,%esp
c0036cc2:	31 c0                	xor    %eax,%eax
c0036cc4:	5b                   	pop    %ebx
c0036cc5:	5e                   	pop    %esi
c0036cc6:	5f                   	pop    %edi
c0036cc7:	5d                   	pop    %ebp
c0036cc8:	c3                   	ret    
c0036cc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036cd0:	8b 45 10             	mov    0x10(%ebp),%eax
c0036cd3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036cda:	83 c4 2c             	add    $0x2c,%esp
c0036cdd:	31 c0                	xor    %eax,%eax
c0036cdf:	5b                   	pop    %ebx
c0036ce0:	5e                   	pop    %esi
c0036ce1:	5f                   	pop    %edi
c0036ce2:	5d                   	pop    %ebp
c0036ce3:	c3                   	ret    
c0036ce4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036cea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036cf0 <_svfiprintf_r>:
c0036cf0:	55                   	push   %ebp
c0036cf1:	89 e5                	mov    %esp,%ebp
c0036cf3:	57                   	push   %edi
c0036cf4:	56                   	push   %esi
c0036cf5:	53                   	push   %ebx
c0036cf6:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036cfc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036cff:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036d03:	74 0b                	je     c0036d10 <_svfiprintf_r+0x20>
c0036d05:	8b 50 10             	mov    0x10(%eax),%edx
c0036d08:	85 d2                	test   %edx,%edx
c0036d0a:	0f 84 1c 0d 00 00    	je     c0037a2c <_svfiprintf_r+0xd3c>
c0036d10:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036d13:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036d16:	89 c6                	mov    %eax,%esi
c0036d18:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036d1e:	29 d8                	sub    %ebx,%eax
c0036d20:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036d27:	00 00 00 
c0036d2a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036d31:	00 00 00 
c0036d34:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036d3b:	00 00 00 
c0036d3e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036d45:	00 00 00 
c0036d48:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036d4e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d51:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036d54:	0f b6 00             	movzbl (%eax),%eax
c0036d57:	84 c0                	test   %al,%al
c0036d59:	74 58                	je     c0036db3 <_svfiprintf_r+0xc3>
c0036d5b:	3c 25                	cmp    $0x25,%al
c0036d5d:	75 13                	jne    c0036d72 <_svfiprintf_r+0x82>
c0036d5f:	eb 52                	jmp    c0036db3 <_svfiprintf_r+0xc3>
c0036d61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d68:	84 c0                	test   %al,%al
c0036d6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d70:	74 0a                	je     c0036d7c <_svfiprintf_r+0x8c>
c0036d72:	83 c3 01             	add    $0x1,%ebx
c0036d75:	0f b6 03             	movzbl (%ebx),%eax
c0036d78:	3c 25                	cmp    $0x25,%al
c0036d7a:	75 ec                	jne    c0036d68 <_svfiprintf_r+0x78>
c0036d7c:	89 df                	mov    %ebx,%edi
c0036d7e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036d81:	74 30                	je     c0036db3 <_svfiprintf_r+0xc3>
c0036d83:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d86:	83 c6 08             	add    $0x8,%esi
c0036d89:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036d8c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036d92:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036d95:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036d9b:	83 c0 01             	add    $0x1,%eax
c0036d9e:	83 f8 07             	cmp    $0x7,%eax
c0036da1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036da7:	0f 8f eb 0a 00 00    	jg     c0037898 <_svfiprintf_r+0xba8>
c0036dad:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036db3:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036db6:	0f 84 11 09 00 00    	je     c00376cd <_svfiprintf_r+0x9dd>
c0036dbc:	8d 43 01             	lea    0x1(%ebx),%eax
c0036dbf:	31 ff                	xor    %edi,%edi
c0036dc1:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036dc8:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036dcf:	ff ff ff 
c0036dd2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036dd9:	00 00 00 
c0036ddc:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036de3:	00 00 00 
c0036de6:	8d 50 01             	lea    0x1(%eax),%edx
c0036de9:	0f be 00             	movsbl (%eax),%eax
c0036dec:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036def:	83 f9 58             	cmp    $0x58,%ecx
c0036df2:	0f 87 63 03 00 00    	ja     c003715b <_svfiprintf_r+0x46b>
c0036df8:	ff 24 8d 88 9b 03 c0 	jmp    *-0x3ffc6478(,%ecx,4)
c0036dff:	90                   	nop
c0036e00:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036e07:	89 d0                	mov    %edx,%eax
c0036e09:	eb db                	jmp    c0036de6 <_svfiprintf_r+0xf6>
c0036e0b:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e0e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036e11:	8b 00                	mov    (%eax),%eax
c0036e13:	83 c3 04             	add    $0x4,%ebx
c0036e16:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036e19:	85 c0                	test   %eax,%eax
c0036e1b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036e21:	79 e4                	jns    c0036e07 <_svfiprintf_r+0x117>
c0036e23:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036e29:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036e30:	89 d0                	mov    %edx,%eax
c0036e32:	eb b2                	jmp    c0036de6 <_svfiprintf_r+0xf6>
c0036e34:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036e39:	89 d0                	mov    %edx,%eax
c0036e3b:	eb a9                	jmp    c0036de6 <_svfiprintf_r+0xf6>
c0036e3d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e40:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036e47:	89 55 10             	mov    %edx,0x10(%ebp)
c0036e4a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036e4f:	8b 08                	mov    (%eax),%ecx
c0036e51:	83 c0 04             	add    $0x4,%eax
c0036e54:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036e5b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036e62:	89 45 14             	mov    %eax,0x14(%ebp)
c0036e65:	c7 85 44 ff ff ff 1f 	movl   $0xc003981f,-0xbc(%ebp)
c0036e6c:	98 03 c0 
c0036e6f:	90                   	nop
c0036e70:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036e77:	31 ff                	xor    %edi,%edi
c0036e79:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036e7f:	89 d8                	mov    %ebx,%eax
c0036e81:	24 7f                	and    $0x7f,%al
c0036e83:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036e8a:	0f 48 c3             	cmovs  %ebx,%eax
c0036e8d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036e93:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036e99:	85 c0                	test   %eax,%eax
c0036e9b:	75 08                	jne    c0036ea5 <_svfiprintf_r+0x1b5>
c0036e9d:	85 c9                	test   %ecx,%ecx
c0036e9f:	0f 84 03 08 00 00    	je     c00376a8 <_svfiprintf_r+0x9b8>
c0036ea5:	80 fa 01             	cmp    $0x1,%dl
c0036ea8:	0f 84 8a 0a 00 00    	je     c0037938 <_svfiprintf_r+0xc48>
c0036eae:	80 fa 02             	cmp    $0x2,%dl
c0036eb1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036eb4:	0f 85 86 01 00 00    	jne    c0037040 <_svfiprintf_r+0x350>
c0036eba:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036ec0:	89 c8                	mov    %ecx,%eax
c0036ec2:	83 eb 01             	sub    $0x1,%ebx
c0036ec5:	83 e0 0f             	and    $0xf,%eax
c0036ec8:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036ecc:	c1 e9 04             	shr    $0x4,%ecx
c0036ecf:	85 c9                	test   %ecx,%ecx
c0036ed1:	88 03                	mov    %al,(%ebx)
c0036ed3:	75 eb                	jne    c0036ec0 <_svfiprintf_r+0x1d0>
c0036ed5:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036ed8:	29 d8                	sub    %ebx,%eax
c0036eda:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036ee0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036ee6:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036eec:	39 c1                	cmp    %eax,%ecx
c0036eee:	0f 4d c1             	cmovge %ecx,%eax
c0036ef1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036ef7:	89 f8                	mov    %edi,%eax
c0036ef9:	3c 01                	cmp    $0x1,%al
c0036efb:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036f02:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036f08:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036f0e:	89 d0                	mov    %edx,%eax
c0036f10:	89 cf                	mov    %ecx,%edi
c0036f12:	83 c0 02             	add    $0x2,%eax
c0036f15:	83 e7 02             	and    $0x2,%edi
c0036f18:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036f1e:	89 cf                	mov    %ecx,%edi
c0036f20:	0f 44 c2             	cmove  %edx,%eax
c0036f23:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036f29:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f2f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036f35:	0f 85 cd 04 00 00    	jne    c0037408 <_svfiprintf_r+0x718>
c0036f3b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036f41:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036f47:	85 ff                	test   %edi,%edi
c0036f49:	0f 8e b9 04 00 00    	jle    c0037408 <_svfiprintf_r+0x718>
c0036f4f:	83 ff 10             	cmp    $0x10,%edi
c0036f52:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036f58:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036f5e:	7e 7c                	jle    c0036fdc <_svfiprintf_r+0x2ec>
c0036f60:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0036f66:	89 f1                	mov    %esi,%ecx
c0036f68:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036f6b:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036f6e:	eb 08                	jmp    c0036f78 <_svfiprintf_r+0x288>
c0036f70:	83 ef 10             	sub    $0x10,%edi
c0036f73:	83 ff 10             	cmp    $0x10,%edi
c0036f76:	7e 5c                	jle    c0036fd4 <_svfiprintf_r+0x2e4>
c0036f78:	83 c0 01             	add    $0x1,%eax
c0036f7b:	83 c2 10             	add    $0x10,%edx
c0036f7e:	c7 01 fc 9c 03 c0    	movl   $0xc0039cfc,(%ecx)
c0036f84:	83 c1 08             	add    $0x8,%ecx
c0036f87:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0036f8e:	83 f8 07             	cmp    $0x7,%eax
c0036f91:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036f97:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036f9d:	7e d1                	jle    c0036f70 <_svfiprintf_r+0x280>
c0036f9f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036fa5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036fa9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036fad:	89 1c 24             	mov    %ebx,(%esp)
c0036fb0:	e8 4b fb ff ff       	call   c0036b00 <__ssprint_r>
c0036fb5:	85 c0                	test   %eax,%eax
c0036fb7:	0f 85 3b 07 00 00    	jne    c00376f8 <_svfiprintf_r+0xa08>
c0036fbd:	83 ef 10             	sub    $0x10,%edi
c0036fc0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036fc6:	83 ff 10             	cmp    $0x10,%edi
c0036fc9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036fcf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0036fd2:	7f a4                	jg     c0036f78 <_svfiprintf_r+0x288>
c0036fd4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c0036fda:	89 ce                	mov    %ecx,%esi
c0036fdc:	83 c0 01             	add    $0x1,%eax
c0036fdf:	01 fa                	add    %edi,%edx
c0036fe1:	c7 06 fc 9c 03 c0    	movl   $0xc0039cfc,(%esi)
c0036fe7:	83 c6 08             	add    $0x8,%esi
c0036fea:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036fed:	83 f8 07             	cmp    $0x7,%eax
c0036ff0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036ff6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036ffc:	0f 8e 12 04 00 00    	jle    c0037414 <_svfiprintf_r+0x724>
c0037002:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037008:	89 44 24 08          	mov    %eax,0x8(%esp)
c003700c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003700f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037013:	8b 45 08             	mov    0x8(%ebp),%eax
c0037016:	89 04 24             	mov    %eax,(%esp)
c0037019:	e8 e2 fa ff ff       	call   c0036b00 <__ssprint_r>
c003701e:	85 c0                	test   %eax,%eax
c0037020:	0f 85 d2 06 00 00    	jne    c00376f8 <_svfiprintf_r+0xa08>
c0037026:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003702c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003702f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037035:	e9 da 03 00 00       	jmp    c0037414 <_svfiprintf_r+0x724>
c003703a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037040:	89 c8                	mov    %ecx,%eax
c0037042:	83 eb 01             	sub    $0x1,%ebx
c0037045:	83 e0 07             	and    $0x7,%eax
c0037048:	c1 e9 03             	shr    $0x3,%ecx
c003704b:	83 c0 30             	add    $0x30,%eax
c003704e:	85 c9                	test   %ecx,%ecx
c0037050:	88 03                	mov    %al,(%ebx)
c0037052:	75 ec                	jne    c0037040 <_svfiprintf_r+0x350>
c0037054:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003705b:	89 da                	mov    %ebx,%edx
c003705d:	0f 84 72 fe ff ff    	je     c0036ed5 <_svfiprintf_r+0x1e5>
c0037063:	3c 30                	cmp    $0x30,%al
c0037065:	0f 84 6a fe ff ff    	je     c0036ed5 <_svfiprintf_r+0x1e5>
c003706b:	83 eb 01             	sub    $0x1,%ebx
c003706e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037071:	29 d8                	sub    %ebx,%eax
c0037073:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0037077:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003707d:	e9 5e fe ff ff       	jmp    c0036ee0 <_svfiprintf_r+0x1f0>
c0037082:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037089:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037090:	89 55 10             	mov    %edx,0x10(%ebp)
c0037093:	8b 45 14             	mov    0x14(%ebp),%eax
c0037096:	0f 85 48 01 00 00    	jne    c00371e4 <_svfiprintf_r+0x4f4>
c003709c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370a3:	0f 84 3b 01 00 00    	je     c00371e4 <_svfiprintf_r+0x4f4>
c00370a9:	0f b7 08             	movzwl (%eax),%ecx
c00370ac:	83 c0 04             	add    $0x4,%eax
c00370af:	31 d2                	xor    %edx,%edx
c00370b1:	89 45 14             	mov    %eax,0x14(%ebp)
c00370b4:	e9 b7 fd ff ff       	jmp    c0036e70 <_svfiprintf_r+0x180>
c00370b9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00370c0:	89 f8                	mov    %edi,%eax
c00370c2:	89 55 10             	mov    %edx,0x10(%ebp)
c00370c5:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00370cb:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370d2:	8b 45 14             	mov    0x14(%ebp),%eax
c00370d5:	75 0d                	jne    c00370e4 <_svfiprintf_r+0x3f4>
c00370d7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370de:	0f 85 f2 08 00 00    	jne    c00379d6 <_svfiprintf_r+0xce6>
c00370e4:	8b 08                	mov    (%eax),%ecx
c00370e6:	83 c0 04             	add    $0x4,%eax
c00370e9:	89 45 14             	mov    %eax,0x14(%ebp)
c00370ec:	85 c9                	test   %ecx,%ecx
c00370ee:	0f 88 f3 08 00 00    	js     c00379e7 <_svfiprintf_r+0xcf7>
c00370f4:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00370fb:	ba 01 00 00 00       	mov    $0x1,%edx
c0037100:	e9 74 fd ff ff       	jmp    c0036e79 <_svfiprintf_r+0x189>
c0037105:	0f be 02             	movsbl (%edx),%eax
c0037108:	8d 5a 01             	lea    0x1(%edx),%ebx
c003710b:	83 f8 2a             	cmp    $0x2a,%eax
c003710e:	0f 84 af 09 00 00    	je     c0037ac3 <_svfiprintf_r+0xdd3>
c0037114:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037117:	31 d2                	xor    %edx,%edx
c0037119:	83 f9 09             	cmp    $0x9,%ecx
c003711c:	0f 87 90 09 00 00    	ja     c0037ab2 <_svfiprintf_r+0xdc2>
c0037122:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037128:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003712b:	83 c3 01             	add    $0x1,%ebx
c003712e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037131:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037135:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037138:	83 f9 09             	cmp    $0x9,%ecx
c003713b:	76 eb                	jbe    c0037128 <_svfiprintf_r+0x438>
c003713d:	85 d2                	test   %edx,%edx
c003713f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037144:	0f 48 d1             	cmovs  %ecx,%edx
c0037147:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003714a:	83 f9 58             	cmp    $0x58,%ecx
c003714d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037153:	89 da                	mov    %ebx,%edx
c0037155:	0f 86 9d fc ff ff    	jbe    c0036df8 <_svfiprintf_r+0x108>
c003715b:	89 fb                	mov    %edi,%ebx
c003715d:	85 c0                	test   %eax,%eax
c003715f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037162:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037168:	0f 84 5f 05 00 00    	je     c00376cd <_svfiprintf_r+0x9dd>
c003716e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037171:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037174:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003717b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037182:	00 00 00 
c0037185:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003718c:	00 00 00 
c003718f:	e9 5a 01 00 00       	jmp    c00372ee <_svfiprintf_r+0x5fe>
c0037194:	31 db                	xor    %ebx,%ebx
c0037196:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037199:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00371a0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c00371a3:	83 c2 01             	add    $0x1,%edx
c00371a6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c00371a9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c00371ad:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371b0:	83 f9 09             	cmp    $0x9,%ecx
c00371b3:	76 eb                	jbe    c00371a0 <_svfiprintf_r+0x4b0>
c00371b5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c00371bb:	e9 2c fc ff ff       	jmp    c0036dec <_svfiprintf_r+0xfc>
c00371c0:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c00371c7:	00 00 00 
c00371ca:	89 d0                	mov    %edx,%eax
c00371cc:	e9 15 fc ff ff       	jmp    c0036de6 <_svfiprintf_r+0xf6>
c00371d1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371d8:	89 55 10             	mov    %edx,0x10(%ebp)
c00371db:	8b 45 14             	mov    0x14(%ebp),%eax
c00371de:	0f 84 b8 fe ff ff    	je     c003709c <_svfiprintf_r+0x3ac>
c00371e4:	8b 08                	mov    (%eax),%ecx
c00371e6:	83 c0 04             	add    $0x4,%eax
c00371e9:	31 d2                	xor    %edx,%edx
c00371eb:	89 45 14             	mov    %eax,0x14(%ebp)
c00371ee:	e9 7d fc ff ff       	jmp    c0036e70 <_svfiprintf_r+0x180>
c00371f3:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371fa:	89 f8                	mov    %edi,%eax
c00371fc:	89 55 10             	mov    %edx,0x10(%ebp)
c00371ff:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037205:	0f 85 a2 07 00 00    	jne    c00379ad <_svfiprintf_r+0xcbd>
c003720b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037212:	0f 84 95 07 00 00    	je     c00379ad <_svfiprintf_r+0xcbd>
c0037218:	8b 45 14             	mov    0x14(%ebp),%eax
c003721b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037222:	8b 00                	mov    (%eax),%eax
c0037224:	66 89 18             	mov    %bx,(%eax)
c0037227:	8b 45 14             	mov    0x14(%ebp),%eax
c003722a:	83 c0 04             	add    $0x4,%eax
c003722d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037230:	e9 19 fb ff ff       	jmp    c0036d4e <_svfiprintf_r+0x5e>
c0037235:	89 fb                	mov    %edi,%ebx
c0037237:	89 55 10             	mov    %edx,0x10(%ebp)
c003723a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037240:	c7 85 44 ff ff ff 1f 	movl   $0xc003981f,-0xbc(%ebp)
c0037247:	98 03 c0 
c003724a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037251:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037254:	75 0d                	jne    c0037263 <_svfiprintf_r+0x573>
c0037256:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003725d:	0f 85 65 07 00 00    	jne    c00379c8 <_svfiprintf_r+0xcd8>
c0037263:	8b 0b                	mov    (%ebx),%ecx
c0037265:	83 c3 04             	add    $0x4,%ebx
c0037268:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003726b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037272:	ba 02 00 00 00       	mov    $0x2,%edx
c0037277:	0f 84 f3 fb ff ff    	je     c0036e70 <_svfiprintf_r+0x180>
c003727d:	85 c9                	test   %ecx,%ecx
c003727f:	0f 84 eb fb ff ff    	je     c0036e70 <_svfiprintf_r+0x180>
c0037285:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003728c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0037292:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037299:	e9 d2 fb ff ff       	jmp    c0036e70 <_svfiprintf_r+0x180>
c003729e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c00372a5:	89 d0                	mov    %edx,%eax
c00372a7:	e9 3a fb ff ff       	jmp    c0036de6 <_svfiprintf_r+0xf6>
c00372ac:	89 f8                	mov    %edi,%eax
c00372ae:	89 55 10             	mov    %edx,0x10(%ebp)
c00372b1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00372b7:	e9 0f fe ff ff       	jmp    c00370cb <_svfiprintf_r+0x3db>
c00372bc:	8b 45 14             	mov    0x14(%ebp),%eax
c00372bf:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00372c2:	89 55 10             	mov    %edx,0x10(%ebp)
c00372c5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00372cc:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00372d3:	00 00 00 
c00372d6:	8b 00                	mov    (%eax),%eax
c00372d8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00372df:	00 00 00 
c00372e2:	88 45 80             	mov    %al,-0x80(%ebp)
c00372e5:	8b 45 14             	mov    0x14(%ebp),%eax
c00372e8:	83 c0 04             	add    $0x4,%eax
c00372eb:	89 45 14             	mov    %eax,0x14(%ebp)
c00372ee:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00372f5:	00 00 00 
c00372f8:	e9 05 fc ff ff       	jmp    c0036f02 <_svfiprintf_r+0x212>
c00372fd:	89 fb                	mov    %edi,%ebx
c00372ff:	89 55 10             	mov    %edx,0x10(%ebp)
c0037302:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037308:	c7 85 44 ff ff ff 0e 	movl   $0xc003980e,-0xbc(%ebp)
c003730f:	98 03 c0 
c0037312:	e9 33 ff ff ff       	jmp    c003724a <_svfiprintf_r+0x55a>
c0037317:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c003731e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037325:	89 55 10             	mov    %edx,0x10(%ebp)
c0037328:	8b 45 14             	mov    0x14(%ebp),%eax
c003732b:	75 39                	jne    c0037366 <_svfiprintf_r+0x676>
c003732d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037334:	74 30                	je     c0037366 <_svfiprintf_r+0x676>
c0037336:	0f b7 08             	movzwl (%eax),%ecx
c0037339:	83 c0 04             	add    $0x4,%eax
c003733c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037341:	89 45 14             	mov    %eax,0x14(%ebp)
c0037344:	e9 27 fb ff ff       	jmp    c0036e70 <_svfiprintf_r+0x180>
c0037349:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037350:	89 d0                	mov    %edx,%eax
c0037352:	e9 8f fa ff ff       	jmp    c0036de6 <_svfiprintf_r+0xf6>
c0037357:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003735e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037361:	8b 45 14             	mov    0x14(%ebp),%eax
c0037364:	74 c7                	je     c003732d <_svfiprintf_r+0x63d>
c0037366:	8b 08                	mov    (%eax),%ecx
c0037368:	83 c0 04             	add    $0x4,%eax
c003736b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037370:	89 45 14             	mov    %eax,0x14(%ebp)
c0037373:	e9 f8 fa ff ff       	jmp    c0036e70 <_svfiprintf_r+0x180>
c0037378:	8b 45 14             	mov    0x14(%ebp),%eax
c003737b:	89 55 10             	mov    %edx,0x10(%ebp)
c003737e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037385:	8b 18                	mov    (%eax),%ebx
c0037387:	8d 50 04             	lea    0x4(%eax),%edx
c003738a:	85 db                	test   %ebx,%ebx
c003738c:	0f 84 cc 06 00 00    	je     c0037a5e <_svfiprintf_r+0xd6e>
c0037392:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037398:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c003739e:	85 ff                	test   %edi,%edi
c00373a0:	0f 88 59 06 00 00    	js     c00379ff <_svfiprintf_r+0xd0f>
c00373a6:	89 7c 24 08          	mov    %edi,0x8(%esp)
c00373aa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00373b1:	00 
c00373b2:	89 1c 24             	mov    %ebx,(%esp)
c00373b5:	e8 06 e7 ff ff       	call   c0035ac0 <memchr>
c00373ba:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00373c0:	85 c0                	test   %eax,%eax
c00373c2:	0f 84 c5 06 00 00    	je     c0037a8d <_svfiprintf_r+0xd9d>
c00373c8:	29 d8                	sub    %ebx,%eax
c00373ca:	39 f8                	cmp    %edi,%eax
c00373cc:	0f 4f c7             	cmovg  %edi,%eax
c00373cf:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00373d6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00373dc:	89 55 14             	mov    %edx,0x14(%ebp)
c00373df:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00373e6:	00 00 00 
c00373e9:	e9 f2 fa ff ff       	jmp    c0036ee0 <_svfiprintf_r+0x1f0>
c00373ee:	89 f8                	mov    %edi,%eax
c00373f0:	84 c0                	test   %al,%al
c00373f2:	b8 20 00 00 00       	mov    $0x20,%eax
c00373f7:	0f 44 f8             	cmove  %eax,%edi
c00373fa:	89 d0                	mov    %edx,%eax
c00373fc:	e9 e5 f9 ff ff       	jmp    c0036de6 <_svfiprintf_r+0xf6>
c0037401:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037408:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003740e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037414:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c003741b:	74 2e                	je     c003744b <_svfiprintf_r+0x75b>
c003741d:	83 c0 01             	add    $0x1,%eax
c0037420:	83 c2 01             	add    $0x1,%edx
c0037423:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037429:	83 c6 08             	add    $0x8,%esi
c003742c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003742f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037436:	83 f8 07             	cmp    $0x7,%eax
c0037439:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003743f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037445:	0f 8f b5 04 00 00    	jg     c0037900 <_svfiprintf_r+0xc10>
c003744b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037451:	85 c9                	test   %ecx,%ecx
c0037453:	74 2e                	je     c0037483 <_svfiprintf_r+0x793>
c0037455:	83 c0 01             	add    $0x1,%eax
c0037458:	83 c2 02             	add    $0x2,%edx
c003745b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037461:	83 c6 08             	add    $0x8,%esi
c0037464:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037467:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003746e:	83 f8 07             	cmp    $0x7,%eax
c0037471:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037477:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003747d:	0f 8f 45 04 00 00    	jg     c00378c8 <_svfiprintf_r+0xbd8>
c0037483:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c003748a:	00 00 00 
c003748d:	0f 84 9d 02 00 00    	je     c0037730 <_svfiprintf_r+0xa40>
c0037493:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037499:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c003749f:	85 ff                	test   %edi,%edi
c00374a1:	0f 8e e1 00 00 00    	jle    c0037588 <_svfiprintf_r+0x898>
c00374a7:	83 ff 10             	cmp    $0x10,%edi
c00374aa:	0f 8e 7c 00 00 00    	jle    c003752c <_svfiprintf_r+0x83c>
c00374b0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c00374b6:	89 f1                	mov    %esi,%ecx
c00374b8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00374bb:	8b 75 0c             	mov    0xc(%ebp),%esi
c00374be:	eb 08                	jmp    c00374c8 <_svfiprintf_r+0x7d8>
c00374c0:	83 ef 10             	sub    $0x10,%edi
c00374c3:	83 ff 10             	cmp    $0x10,%edi
c00374c6:	7e 5c                	jle    c0037524 <_svfiprintf_r+0x834>
c00374c8:	83 c0 01             	add    $0x1,%eax
c00374cb:	83 c2 10             	add    $0x10,%edx
c00374ce:	c7 01 ec 9c 03 c0    	movl   $0xc0039cec,(%ecx)
c00374d4:	83 c1 08             	add    $0x8,%ecx
c00374d7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00374de:	83 f8 07             	cmp    $0x7,%eax
c00374e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00374e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374ed:	7e d1                	jle    c00374c0 <_svfiprintf_r+0x7d0>
c00374ef:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00374f5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00374f9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00374fd:	89 1c 24             	mov    %ebx,(%esp)
c0037500:	e8 fb f5 ff ff       	call   c0036b00 <__ssprint_r>
c0037505:	85 c0                	test   %eax,%eax
c0037507:	0f 85 eb 01 00 00    	jne    c00376f8 <_svfiprintf_r+0xa08>
c003750d:	83 ef 10             	sub    $0x10,%edi
c0037510:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037516:	83 ff 10             	cmp    $0x10,%edi
c0037519:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003751f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037522:	7f a4                	jg     c00374c8 <_svfiprintf_r+0x7d8>
c0037524:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003752a:	89 ce                	mov    %ecx,%esi
c003752c:	83 c0 01             	add    $0x1,%eax
c003752f:	01 fa                	add    %edi,%edx
c0037531:	c7 06 ec 9c 03 c0    	movl   $0xc0039cec,(%esi)
c0037537:	83 c6 08             	add    $0x8,%esi
c003753a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003753d:	83 f8 07             	cmp    $0x7,%eax
c0037540:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037546:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003754c:	7e 3a                	jle    c0037588 <_svfiprintf_r+0x898>
c003754e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037554:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037558:	8b 45 0c             	mov    0xc(%ebp),%eax
c003755b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003755f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037562:	89 04 24             	mov    %eax,(%esp)
c0037565:	e8 96 f5 ff ff       	call   c0036b00 <__ssprint_r>
c003756a:	85 c0                	test   %eax,%eax
c003756c:	0f 85 86 01 00 00    	jne    c00376f8 <_svfiprintf_r+0xa08>
c0037572:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037578:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003757b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037581:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037588:	89 1e                	mov    %ebx,(%esi)
c003758a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037590:	83 c0 01             	add    $0x1,%eax
c0037593:	83 c6 08             	add    $0x8,%esi
c0037596:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003759c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c003759f:	01 da                	add    %ebx,%edx
c00375a1:	83 f8 07             	cmp    $0x7,%eax
c00375a4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375aa:	0f 8f 80 02 00 00    	jg     c0037830 <_svfiprintf_r+0xb40>
c00375b0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c00375b7:	0f 84 b9 00 00 00    	je     c0037676 <_svfiprintf_r+0x986>
c00375bd:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c00375c3:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c00375c9:	85 ff                	test   %edi,%edi
c00375cb:	0f 8e a5 00 00 00    	jle    c0037676 <_svfiprintf_r+0x986>
c00375d1:	83 ff 10             	cmp    $0x10,%edi
c00375d4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375da:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00375e0:	7e 71                	jle    c0037653 <_svfiprintf_r+0x963>
c00375e2:	89 f1                	mov    %esi,%ecx
c00375e4:	8b 75 08             	mov    0x8(%ebp),%esi
c00375e7:	eb 0f                	jmp    c00375f8 <_svfiprintf_r+0x908>
c00375e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00375f0:	83 ef 10             	sub    $0x10,%edi
c00375f3:	83 ff 10             	cmp    $0x10,%edi
c00375f6:	7e 59                	jle    c0037651 <_svfiprintf_r+0x961>
c00375f8:	83 c0 01             	add    $0x1,%eax
c00375fb:	83 c2 10             	add    $0x10,%edx
c00375fe:	c7 01 fc 9c 03 c0    	movl   $0xc0039cfc,(%ecx)
c0037604:	83 c1 08             	add    $0x8,%ecx
c0037607:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003760e:	83 f8 07             	cmp    $0x7,%eax
c0037611:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037617:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003761d:	7e d1                	jle    c00375f0 <_svfiprintf_r+0x900>
c003761f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037622:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037626:	89 34 24             	mov    %esi,(%esp)
c0037629:	89 44 24 04          	mov    %eax,0x4(%esp)
c003762d:	e8 ce f4 ff ff       	call   c0036b00 <__ssprint_r>
c0037632:	85 c0                	test   %eax,%eax
c0037634:	0f 85 be 00 00 00    	jne    c00376f8 <_svfiprintf_r+0xa08>
c003763a:	83 ef 10             	sub    $0x10,%edi
c003763d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037643:	83 ff 10             	cmp    $0x10,%edi
c0037646:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003764c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003764f:	7f a7                	jg     c00375f8 <_svfiprintf_r+0x908>
c0037651:	89 ce                	mov    %ecx,%esi
c0037653:	83 c0 01             	add    $0x1,%eax
c0037656:	01 fa                	add    %edi,%edx
c0037658:	83 f8 07             	cmp    $0x7,%eax
c003765b:	c7 06 fc 9c 03 c0    	movl   $0xc0039cfc,(%esi)
c0037661:	89 7e 04             	mov    %edi,0x4(%esi)
c0037664:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003766a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037670:	0f 8f ee 02 00 00    	jg     c0037964 <_svfiprintf_r+0xc74>
c0037676:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c003767c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037682:	39 c6                	cmp    %eax,%esi
c0037684:	0f 4d c6             	cmovge %esi,%eax
c0037687:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c003768d:	85 d2                	test   %edx,%edx
c003768f:	0f 85 d3 01 00 00    	jne    c0037868 <_svfiprintf_r+0xb78>
c0037695:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003769c:	00 00 00 
c003769f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00376a2:	e9 a7 f6 ff ff       	jmp    c0036d4e <_svfiprintf_r+0x5e>
c00376a7:	90                   	nop
c00376a8:	84 d2                	test   %dl,%dl
c00376aa:	75 6c                	jne    c0037718 <_svfiprintf_r+0xa28>
c00376ac:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00376b3:	74 63                	je     c0037718 <_svfiprintf_r+0xa28>
c00376b5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00376bb:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00376be:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c00376c2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00376c8:	e9 13 f8 ff ff       	jmp    c0036ee0 <_svfiprintf_r+0x1f0>
c00376cd:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00376d3:	85 c0                	test   %eax,%eax
c00376d5:	74 21                	je     c00376f8 <_svfiprintf_r+0xa08>
c00376d7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00376dd:	89 44 24 08          	mov    %eax,0x8(%esp)
c00376e1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00376e4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00376e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00376eb:	89 04 24             	mov    %eax,(%esp)
c00376ee:	e8 0d f4 ff ff       	call   c0036b00 <__ssprint_r>
c00376f3:	90                   	nop
c00376f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00376f8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00376fb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037700:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037704:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c003770b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037711:	5b                   	pop    %ebx
c0037712:	5e                   	pop    %esi
c0037713:	5f                   	pop    %edi
c0037714:	5d                   	pop    %ebp
c0037715:	c3                   	ret    
c0037716:	66 90                	xchg   %ax,%ax
c0037718:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c003771f:	00 00 00 
c0037722:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037725:	e9 b6 f7 ff ff       	jmp    c0036ee0 <_svfiprintf_r+0x1f0>
c003772a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037730:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037736:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003773c:	85 ff                	test   %edi,%edi
c003773e:	0f 8e 4f fd ff ff    	jle    c0037493 <_svfiprintf_r+0x7a3>
c0037744:	83 ff 10             	cmp    $0x10,%edi
c0037747:	0f 8e 7f 00 00 00    	jle    c00377cc <_svfiprintf_r+0xadc>
c003774d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037753:	89 f1                	mov    %esi,%ecx
c0037755:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037758:	8b 75 0c             	mov    0xc(%ebp),%esi
c003775b:	eb 0b                	jmp    c0037768 <_svfiprintf_r+0xa78>
c003775d:	8d 76 00             	lea    0x0(%esi),%esi
c0037760:	83 ef 10             	sub    $0x10,%edi
c0037763:	83 ff 10             	cmp    $0x10,%edi
c0037766:	7e 5c                	jle    c00377c4 <_svfiprintf_r+0xad4>
c0037768:	83 c0 01             	add    $0x1,%eax
c003776b:	83 c2 10             	add    $0x10,%edx
c003776e:	c7 01 ec 9c 03 c0    	movl   $0xc0039cec,(%ecx)
c0037774:	83 c1 08             	add    $0x8,%ecx
c0037777:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003777e:	83 f8 07             	cmp    $0x7,%eax
c0037781:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037787:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003778d:	7e d1                	jle    c0037760 <_svfiprintf_r+0xa70>
c003778f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037795:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037799:	89 74 24 04          	mov    %esi,0x4(%esp)
c003779d:	89 1c 24             	mov    %ebx,(%esp)
c00377a0:	e8 5b f3 ff ff       	call   c0036b00 <__ssprint_r>
c00377a5:	85 c0                	test   %eax,%eax
c00377a7:	0f 85 4b ff ff ff    	jne    c00376f8 <_svfiprintf_r+0xa08>
c00377ad:	83 ef 10             	sub    $0x10,%edi
c00377b0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00377b6:	83 ff 10             	cmp    $0x10,%edi
c00377b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00377bf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00377c2:	7f a4                	jg     c0037768 <_svfiprintf_r+0xa78>
c00377c4:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c00377ca:	89 ce                	mov    %ecx,%esi
c00377cc:	83 c0 01             	add    $0x1,%eax
c00377cf:	01 fa                	add    %edi,%edx
c00377d1:	c7 06 ec 9c 03 c0    	movl   $0xc0039cec,(%esi)
c00377d7:	83 c6 08             	add    $0x8,%esi
c00377da:	89 7e fc             	mov    %edi,-0x4(%esi)
c00377dd:	83 f8 07             	cmp    $0x7,%eax
c00377e0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377e6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377ec:	0f 8e a1 fc ff ff    	jle    c0037493 <_svfiprintf_r+0x7a3>
c00377f2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377f8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377fc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00377ff:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037803:	8b 45 08             	mov    0x8(%ebp),%eax
c0037806:	89 04 24             	mov    %eax,(%esp)
c0037809:	e8 f2 f2 ff ff       	call   c0036b00 <__ssprint_r>
c003780e:	85 c0                	test   %eax,%eax
c0037810:	0f 85 e2 fe ff ff    	jne    c00376f8 <_svfiprintf_r+0xa08>
c0037816:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003781c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003781f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037825:	e9 69 fc ff ff       	jmp    c0037493 <_svfiprintf_r+0x7a3>
c003782a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037830:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037836:	89 44 24 08          	mov    %eax,0x8(%esp)
c003783a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003783d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037841:	8b 45 08             	mov    0x8(%ebp),%eax
c0037844:	89 04 24             	mov    %eax,(%esp)
c0037847:	e8 b4 f2 ff ff       	call   c0036b00 <__ssprint_r>
c003784c:	85 c0                	test   %eax,%eax
c003784e:	0f 85 a4 fe ff ff    	jne    c00376f8 <_svfiprintf_r+0xa08>
c0037854:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003785a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003785d:	e9 4e fd ff ff       	jmp    c00375b0 <_svfiprintf_r+0x8c0>
c0037862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037868:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003786e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037872:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037875:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037879:	8b 45 08             	mov    0x8(%ebp),%eax
c003787c:	89 04 24             	mov    %eax,(%esp)
c003787f:	e8 7c f2 ff ff       	call   c0036b00 <__ssprint_r>
c0037884:	85 c0                	test   %eax,%eax
c0037886:	0f 84 09 fe ff ff    	je     c0037695 <_svfiprintf_r+0x9a5>
c003788c:	e9 67 fe ff ff       	jmp    c00376f8 <_svfiprintf_r+0xa08>
c0037891:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037898:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003789e:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378a2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378a5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378ac:	89 04 24             	mov    %eax,(%esp)
c00378af:	e8 4c f2 ff ff       	call   c0036b00 <__ssprint_r>
c00378b4:	85 c0                	test   %eax,%eax
c00378b6:	0f 85 3c fe ff ff    	jne    c00376f8 <_svfiprintf_r+0xa08>
c00378bc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378bf:	e9 e9 f4 ff ff       	jmp    c0036dad <_svfiprintf_r+0xbd>
c00378c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00378c8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378ce:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378d2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378d5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378dc:	89 04 24             	mov    %eax,(%esp)
c00378df:	e8 1c f2 ff ff       	call   c0036b00 <__ssprint_r>
c00378e4:	85 c0                	test   %eax,%eax
c00378e6:	0f 85 0c fe ff ff    	jne    c00376f8 <_svfiprintf_r+0xa08>
c00378ec:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378f2:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378f5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00378fb:	e9 83 fb ff ff       	jmp    c0037483 <_svfiprintf_r+0x793>
c0037900:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037906:	89 44 24 08          	mov    %eax,0x8(%esp)
c003790a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003790d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037911:	8b 45 08             	mov    0x8(%ebp),%eax
c0037914:	89 04 24             	mov    %eax,(%esp)
c0037917:	e8 e4 f1 ff ff       	call   c0036b00 <__ssprint_r>
c003791c:	85 c0                	test   %eax,%eax
c003791e:	0f 85 d4 fd ff ff    	jne    c00376f8 <_svfiprintf_r+0xa08>
c0037924:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003792a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003792d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037933:	e9 13 fb ff ff       	jmp    c003744b <_svfiprintf_r+0x75b>
c0037938:	83 f9 09             	cmp    $0x9,%ecx
c003793b:	76 56                	jbe    c0037993 <_svfiprintf_r+0xca3>
c003793d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037940:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037945:	83 eb 01             	sub    $0x1,%ebx
c0037948:	f7 e1                	mul    %ecx
c003794a:	c1 ea 03             	shr    $0x3,%edx
c003794d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037950:	01 c0                	add    %eax,%eax
c0037952:	29 c1                	sub    %eax,%ecx
c0037954:	83 c1 30             	add    $0x30,%ecx
c0037957:	85 d2                	test   %edx,%edx
c0037959:	88 0b                	mov    %cl,(%ebx)
c003795b:	89 d1                	mov    %edx,%ecx
c003795d:	75 e1                	jne    c0037940 <_svfiprintf_r+0xc50>
c003795f:	e9 71 f5 ff ff       	jmp    c0036ed5 <_svfiprintf_r+0x1e5>
c0037964:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003796a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003796e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037971:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037975:	8b 45 08             	mov    0x8(%ebp),%eax
c0037978:	89 04 24             	mov    %eax,(%esp)
c003797b:	e8 80 f1 ff ff       	call   c0036b00 <__ssprint_r>
c0037980:	85 c0                	test   %eax,%eax
c0037982:	0f 85 70 fd ff ff    	jne    c00376f8 <_svfiprintf_r+0xa08>
c0037988:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003798e:	e9 e3 fc ff ff       	jmp    c0037676 <_svfiprintf_r+0x986>
c0037993:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037999:	83 c1 30             	add    $0x30,%ecx
c003799c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c003799f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00379a2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00379a8:	e9 33 f5 ff ff       	jmp    c0036ee0 <_svfiprintf_r+0x1f0>
c00379ad:	8b 45 14             	mov    0x14(%ebp),%eax
c00379b0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c00379b6:	8b 00                	mov    (%eax),%eax
c00379b8:	89 18                	mov    %ebx,(%eax)
c00379ba:	8b 45 14             	mov    0x14(%ebp),%eax
c00379bd:	83 c0 04             	add    $0x4,%eax
c00379c0:	89 45 14             	mov    %eax,0x14(%ebp)
c00379c3:	e9 86 f3 ff ff       	jmp    c0036d4e <_svfiprintf_r+0x5e>
c00379c8:	0f b7 0b             	movzwl (%ebx),%ecx
c00379cb:	83 c3 04             	add    $0x4,%ebx
c00379ce:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00379d1:	e9 95 f8 ff ff       	jmp    c003726b <_svfiprintf_r+0x57b>
c00379d6:	0f bf 08             	movswl (%eax),%ecx
c00379d9:	83 c0 04             	add    $0x4,%eax
c00379dc:	89 45 14             	mov    %eax,0x14(%ebp)
c00379df:	85 c9                	test   %ecx,%ecx
c00379e1:	0f 89 0d f7 ff ff    	jns    c00370f4 <_svfiprintf_r+0x404>
c00379e7:	f7 d9                	neg    %ecx
c00379e9:	bf 2d 00 00 00       	mov    $0x2d,%edi
c00379ee:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c00379f5:	ba 01 00 00 00       	mov    $0x1,%edx
c00379fa:	e9 7a f4 ff ff       	jmp    c0036e79 <_svfiprintf_r+0x189>
c00379ff:	89 1c 24             	mov    %ebx,(%esp)
c0037a02:	e8 79 f0 ff ff       	call   c0036a80 <strlen>
c0037a07:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037a0d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a14:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a1b:	00 00 00 
c0037a1e:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a21:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a27:	e9 b4 f4 ff ff       	jmp    c0036ee0 <_svfiprintf_r+0x1f0>
c0037a2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a2f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037a36:	00 
c0037a37:	89 04 24             	mov    %eax,(%esp)
c0037a3a:	e8 41 d9 ff ff       	call   c0035380 <_malloc_r>
c0037a3f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037a42:	85 c0                	test   %eax,%eax
c0037a44:	89 06                	mov    %eax,(%esi)
c0037a46:	89 46 10             	mov    %eax,0x10(%esi)
c0037a49:	0f 84 a3 00 00 00    	je     c0037af2 <_svfiprintf_r+0xe02>
c0037a4f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a52:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037a59:	e9 b2 f2 ff ff       	jmp    c0036d10 <_svfiprintf_r+0x20>
c0037a5e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037a64:	b8 06 00 00 00       	mov    $0x6,%eax
c0037a69:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a6c:	83 ff 06             	cmp    $0x6,%edi
c0037a6f:	0f 46 c7             	cmovbe %edi,%eax
c0037a72:	85 c0                	test   %eax,%eax
c0037a74:	0f 49 d8             	cmovns %eax,%ebx
c0037a77:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037a7d:	bb 30 98 03 c0       	mov    $0xc0039830,%ebx
c0037a82:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a88:	e9 61 f8 ff ff       	jmp    c00372ee <_svfiprintf_r+0x5fe>
c0037a8d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037a93:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a9a:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a9d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037aa4:	00 00 00 
c0037aa7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037aad:	e9 2e f4 ff ff       	jmp    c0036ee0 <_svfiprintf_r+0x1f0>
c0037ab2:	89 da                	mov    %ebx,%edx
c0037ab4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037abb:	00 00 00 
c0037abe:	e9 29 f3 ff ff       	jmp    c0036dec <_svfiprintf_r+0xfc>
c0037ac3:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037ac6:	89 da                	mov    %ebx,%edx
c0037ac8:	8b 45 14             	mov    0x14(%ebp),%eax
c0037acb:	8b 09                	mov    (%ecx),%ecx
c0037acd:	83 c0 04             	add    $0x4,%eax
c0037ad0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037ad3:	85 c9                	test   %ecx,%ecx
c0037ad5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037adb:	0f 89 26 f3 ff ff    	jns    c0036e07 <_svfiprintf_r+0x117>
c0037ae1:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037ae8:	ff ff ff 
c0037aeb:	89 d0                	mov    %edx,%eax
c0037aed:	e9 f4 f2 ff ff       	jmp    c0036de6 <_svfiprintf_r+0xf6>
c0037af2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037af5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037afb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037b00:	e9 06 fc ff ff       	jmp    c003770b <_svfiprintf_r+0xa1b>
c0037b05:	66 90                	xchg   %ax,%ax
c0037b07:	66 90                	xchg   %ax,%ax
c0037b09:	66 90                	xchg   %ax,%ax
c0037b0b:	66 90                	xchg   %ax,%ax
c0037b0d:	66 90                	xchg   %ax,%ax
c0037b0f:	90                   	nop

c0037b10 <_calloc_r>:
c0037b10:	55                   	push   %ebp
c0037b11:	89 e5                	mov    %esp,%ebp
c0037b13:	53                   	push   %ebx
c0037b14:	83 ec 14             	sub    $0x14,%esp
c0037b17:	8b 45 10             	mov    0x10(%ebp),%eax
c0037b1a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037b1e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b22:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b25:	89 04 24             	mov    %eax,(%esp)
c0037b28:	e8 53 d8 ff ff       	call   c0035380 <_malloc_r>
c0037b2d:	85 c0                	test   %eax,%eax
c0037b2f:	89 c3                	mov    %eax,%ebx
c0037b31:	0f 84 91 00 00 00    	je     c0037bc8 <_calloc_r+0xb8>
c0037b37:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037b3a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037b3d:	83 e8 04             	sub    $0x4,%eax
c0037b40:	83 f8 24             	cmp    $0x24,%eax
c0037b43:	77 63                	ja     c0037ba8 <_calloc_r+0x98>
c0037b45:	83 f8 13             	cmp    $0x13,%eax
c0037b48:	89 da                	mov    %ebx,%edx
c0037b4a:	77 1c                	ja     c0037b68 <_calloc_r+0x58>
c0037b4c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037b52:	89 d8                	mov    %ebx,%eax
c0037b54:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037b5b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037b62:	83 c4 14             	add    $0x14,%esp
c0037b65:	5b                   	pop    %ebx
c0037b66:	5d                   	pop    %ebp
c0037b67:	c3                   	ret    
c0037b68:	83 f8 1b             	cmp    $0x1b,%eax
c0037b6b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037b71:	8d 53 08             	lea    0x8(%ebx),%edx
c0037b74:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037b7b:	76 cf                	jbe    c0037b4c <_calloc_r+0x3c>
c0037b7d:	83 f8 24             	cmp    $0x24,%eax
c0037b80:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037b87:	8d 53 10             	lea    0x10(%ebx),%edx
c0037b8a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037b91:	75 b9                	jne    c0037b4c <_calloc_r+0x3c>
c0037b93:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037b9a:	8d 53 18             	lea    0x18(%ebx),%edx
c0037b9d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037ba4:	eb a6                	jmp    c0037b4c <_calloc_r+0x3c>
c0037ba6:	66 90                	xchg   %ax,%ax
c0037ba8:	89 1c 24             	mov    %ebx,(%esp)
c0037bab:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037baf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037bb6:	00 
c0037bb7:	e8 50 a2 ff ff       	call   c0031e0c <memset>
c0037bbc:	83 c4 14             	add    $0x14,%esp
c0037bbf:	89 d8                	mov    %ebx,%eax
c0037bc1:	5b                   	pop    %ebx
c0037bc2:	5d                   	pop    %ebp
c0037bc3:	c3                   	ret    
c0037bc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037bc8:	31 c0                	xor    %eax,%eax
c0037bca:	eb 96                	jmp    c0037b62 <_calloc_r+0x52>
c0037bcc:	66 90                	xchg   %ax,%ax
c0037bce:	66 90                	xchg   %ax,%ax

c0037bd0 <_malloc_trim_r>:
c0037bd0:	55                   	push   %ebp
c0037bd1:	89 e5                	mov    %esp,%ebp
c0037bd3:	57                   	push   %edi
c0037bd4:	56                   	push   %esi
c0037bd5:	53                   	push   %ebx
c0037bd6:	83 ec 1c             	sub    $0x1c,%esp
c0037bd9:	8b 75 08             	mov    0x8(%ebp),%esi
c0037bdc:	89 34 24             	mov    %esi,(%esp)
c0037bdf:	e8 7c df ff ff       	call   c0035b60 <__malloc_lock>
c0037be4:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037be9:	8b 58 04             	mov    0x4(%eax),%ebx
c0037bec:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037bef:	89 d8                	mov    %ebx,%eax
c0037bf1:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037bf4:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037bf9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037bfe:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037c04:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037c0a:	7e 1c                	jle    c0037c28 <_malloc_trim_r+0x58>
c0037c0c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c13:	00 
c0037c14:	89 34 24             	mov    %esi,(%esp)
c0037c17:	e8 44 ed ff ff       	call   c0036960 <_sbrk_r>
c0037c1c:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037c22:	01 da                	add    %ebx,%edx
c0037c24:	39 d0                	cmp    %edx,%eax
c0037c26:	74 18                	je     c0037c40 <_malloc_trim_r+0x70>
c0037c28:	89 34 24             	mov    %esi,(%esp)
c0037c2b:	e8 40 df ff ff       	call   c0035b70 <__malloc_unlock>
c0037c30:	83 c4 1c             	add    $0x1c,%esp
c0037c33:	31 c0                	xor    %eax,%eax
c0037c35:	5b                   	pop    %ebx
c0037c36:	5e                   	pop    %esi
c0037c37:	5f                   	pop    %edi
c0037c38:	5d                   	pop    %ebp
c0037c39:	c3                   	ret    
c0037c3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037c40:	89 f8                	mov    %edi,%eax
c0037c42:	f7 d8                	neg    %eax
c0037c44:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c48:	89 34 24             	mov    %esi,(%esp)
c0037c4b:	e8 10 ed ff ff       	call   c0036960 <_sbrk_r>
c0037c50:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037c53:	74 2b                	je     c0037c80 <_malloc_trim_r+0xb0>
c0037c55:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037c5a:	29 fb                	sub    %edi,%ebx
c0037c5c:	83 cb 01             	or     $0x1,%ebx
c0037c5f:	29 3d 20 00 07 c0    	sub    %edi,0xc0070020
c0037c65:	89 58 04             	mov    %ebx,0x4(%eax)
c0037c68:	89 34 24             	mov    %esi,(%esp)
c0037c6b:	e8 00 df ff ff       	call   c0035b70 <__malloc_unlock>
c0037c70:	83 c4 1c             	add    $0x1c,%esp
c0037c73:	b8 01 00 00 00       	mov    $0x1,%eax
c0037c78:	5b                   	pop    %ebx
c0037c79:	5e                   	pop    %esi
c0037c7a:	5f                   	pop    %edi
c0037c7b:	5d                   	pop    %ebp
c0037c7c:	c3                   	ret    
c0037c7d:	8d 76 00             	lea    0x0(%esi),%esi
c0037c80:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c87:	00 
c0037c88:	89 34 24             	mov    %esi,(%esp)
c0037c8b:	e8 d0 ec ff ff       	call   c0036960 <_sbrk_r>
c0037c90:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037c96:	89 c1                	mov    %eax,%ecx
c0037c98:	29 d1                	sub    %edx,%ecx
c0037c9a:	83 f9 0f             	cmp    $0xf,%ecx
c0037c9d:	7e 89                	jle    c0037c28 <_malloc_trim_r+0x58>
c0037c9f:	2b 05 20 d5 03 c0    	sub    0xc003d520,%eax
c0037ca5:	83 c9 01             	or     $0x1,%ecx
c0037ca8:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037cab:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0037cb0:	e9 73 ff ff ff       	jmp    c0037c28 <_malloc_trim_r+0x58>
c0037cb5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037cb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037cc0 <_free_r>:
c0037cc0:	55                   	push   %ebp
c0037cc1:	89 e5                	mov    %esp,%ebp
c0037cc3:	57                   	push   %edi
c0037cc4:	56                   	push   %esi
c0037cc5:	53                   	push   %ebx
c0037cc6:	83 ec 1c             	sub    $0x1c,%esp
c0037cc9:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037ccc:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ccf:	85 f6                	test   %esi,%esi
c0037cd1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037cd4:	0f 84 fe 00 00 00    	je     c0037dd8 <_free_r+0x118>
c0037cda:	89 04 24             	mov    %eax,(%esp)
c0037cdd:	e8 7e de ff ff       	call   c0035b60 <__malloc_lock>
c0037ce2:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037ce5:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037ce8:	89 f8                	mov    %edi,%eax
c0037cea:	83 e0 fe             	and    $0xfffffffe,%eax
c0037ced:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037cf0:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037cf3:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037cf6:	39 0d 48 d5 03 c0    	cmp    %ecx,0xc003d548
c0037cfc:	0f 84 0e 01 00 00    	je     c0037e10 <_free_r+0x150>
c0037d02:	83 e7 01             	and    $0x1,%edi
c0037d05:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037d08:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037d0f:	75 1f                	jne    c0037d30 <_free_r+0x70>
c0037d11:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037d14:	29 f2                	sub    %esi,%edx
c0037d16:	01 f0                	add    %esi,%eax
c0037d18:	8b 72 08             	mov    0x8(%edx),%esi
c0037d1b:	81 fe 48 d5 03 c0    	cmp    $0xc003d548,%esi
c0037d21:	0f 84 39 01 00 00    	je     c0037e60 <_free_r+0x1a0>
c0037d27:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037d2a:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037d2d:	89 77 08             	mov    %esi,0x8(%edi)
c0037d30:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037d35:	75 21                	jne    c0037d58 <_free_r+0x98>
c0037d37:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037d3a:	01 d8                	add    %ebx,%eax
c0037d3c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037d3f:	85 f6                	test   %esi,%esi
c0037d41:	75 0c                	jne    c0037d4f <_free_r+0x8f>
c0037d43:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0037d49:	0f 84 21 01 00 00    	je     c0037e70 <_free_r+0x1b0>
c0037d4f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037d52:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037d55:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037d58:	89 c1                	mov    %eax,%ecx
c0037d5a:	83 c9 01             	or     $0x1,%ecx
c0037d5d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d60:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037d63:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037d66:	85 c9                	test   %ecx,%ecx
c0037d68:	75 56                	jne    c0037dc0 <_free_r+0x100>
c0037d6a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037d6f:	76 6f                	jbe    c0037de0 <_free_r+0x120>
c0037d71:	89 c1                	mov    %eax,%ecx
c0037d73:	c1 e9 09             	shr    $0x9,%ecx
c0037d76:	83 f9 04             	cmp    $0x4,%ecx
c0037d79:	0f 87 21 01 00 00    	ja     c0037ea0 <_free_r+0x1e0>
c0037d7f:	89 c1                	mov    %eax,%ecx
c0037d81:	c1 e9 06             	shr    $0x6,%ecx
c0037d84:	83 c1 38             	add    $0x38,%ecx
c0037d87:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037d8a:	8d 34 9d 40 d5 03 c0 	lea    -0x3ffc2ac0(,%ebx,4),%esi
c0037d91:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037d94:	39 f3                	cmp    %esi,%ebx
c0037d96:	0f 84 14 01 00 00    	je     c0037eb0 <_free_r+0x1f0>
c0037d9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037da0:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037da3:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037da6:	39 c8                	cmp    %ecx,%eax
c0037da8:	73 07                	jae    c0037db1 <_free_r+0xf1>
c0037daa:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037dad:	39 de                	cmp    %ebx,%esi
c0037daf:	75 ef                	jne    c0037da0 <_free_r+0xe0>
c0037db1:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037db4:	89 42 0c             	mov    %eax,0xc(%edx)
c0037db7:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037dba:	89 50 08             	mov    %edx,0x8(%eax)
c0037dbd:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037dc0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037dc3:	89 45 08             	mov    %eax,0x8(%ebp)
c0037dc6:	83 c4 1c             	add    $0x1c,%esp
c0037dc9:	5b                   	pop    %ebx
c0037dca:	5e                   	pop    %esi
c0037dcb:	5f                   	pop    %edi
c0037dcc:	5d                   	pop    %ebp
c0037dcd:	e9 9e dd ff ff       	jmp    c0035b70 <__malloc_unlock>
c0037dd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037dd8:	83 c4 1c             	add    $0x1c,%esp
c0037ddb:	5b                   	pop    %ebx
c0037ddc:	5e                   	pop    %esi
c0037ddd:	5f                   	pop    %edi
c0037dde:	5d                   	pop    %ebp
c0037ddf:	c3                   	ret    
c0037de0:	c1 e8 03             	shr    $0x3,%eax
c0037de3:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037de8:	89 c1                	mov    %eax,%ecx
c0037dea:	c1 f9 02             	sar    $0x2,%ecx
c0037ded:	8d 04 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%eax
c0037df4:	d3 e3                	shl    %cl,%ebx
c0037df6:	8b 48 08             	mov    0x8(%eax),%ecx
c0037df9:	09 1d 44 d5 03 c0    	or     %ebx,0xc003d544
c0037dff:	89 42 0c             	mov    %eax,0xc(%edx)
c0037e02:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037e05:	89 50 08             	mov    %edx,0x8(%eax)
c0037e08:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037e0b:	eb b3                	jmp    c0037dc0 <_free_r+0x100>
c0037e0d:	8d 76 00             	lea    0x0(%esi),%esi
c0037e10:	01 d8                	add    %ebx,%eax
c0037e12:	83 e7 01             	and    $0x1,%edi
c0037e15:	75 13                	jne    c0037e2a <_free_r+0x16a>
c0037e17:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037e1a:	29 ca                	sub    %ecx,%edx
c0037e1c:	01 c8                	add    %ecx,%eax
c0037e1e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037e21:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037e24:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037e27:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037e2a:	89 c1                	mov    %eax,%ecx
c0037e2c:	83 c9 01             	or     $0x1,%ecx
c0037e2f:	3b 05 24 d5 03 c0    	cmp    0xc003d524,%eax
c0037e35:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e38:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0037e3e:	72 80                	jb     c0037dc0 <_free_r+0x100>
c0037e40:	a1 50 00 07 c0       	mov    0xc0070050,%eax
c0037e45:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e49:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e4c:	89 04 24             	mov    %eax,(%esp)
c0037e4f:	e8 7c fd ff ff       	call   c0037bd0 <_malloc_trim_r>
c0037e54:	e9 67 ff ff ff       	jmp    c0037dc0 <_free_r+0x100>
c0037e59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037e60:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037e67:	e9 c4 fe ff ff       	jmp    c0037d30 <_free_r+0x70>
c0037e6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e70:	89 c1                	mov    %eax,%ecx
c0037e72:	83 c9 01             	or     $0x1,%ecx
c0037e75:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c0037e7b:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0037e81:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0037e88:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0037e8f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e92:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037e95:	e9 26 ff ff ff       	jmp    c0037dc0 <_free_r+0x100>
c0037e9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037ea0:	83 f9 14             	cmp    $0x14,%ecx
c0037ea3:	77 23                	ja     c0037ec8 <_free_r+0x208>
c0037ea5:	83 c1 5b             	add    $0x5b,%ecx
c0037ea8:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037eab:	e9 da fe ff ff       	jmp    c0037d8a <_free_r+0xca>
c0037eb0:	c1 f9 02             	sar    $0x2,%ecx
c0037eb3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037eb8:	d3 e0                	shl    %cl,%eax
c0037eba:	09 05 44 d5 03 c0    	or     %eax,0xc003d544
c0037ec0:	89 d8                	mov    %ebx,%eax
c0037ec2:	e9 ed fe ff ff       	jmp    c0037db4 <_free_r+0xf4>
c0037ec7:	90                   	nop
c0037ec8:	83 f9 54             	cmp    $0x54,%ecx
c0037ecb:	77 10                	ja     c0037edd <_free_r+0x21d>
c0037ecd:	89 c1                	mov    %eax,%ecx
c0037ecf:	c1 e9 0c             	shr    $0xc,%ecx
c0037ed2:	83 c1 6e             	add    $0x6e,%ecx
c0037ed5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ed8:	e9 ad fe ff ff       	jmp    c0037d8a <_free_r+0xca>
c0037edd:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037ee3:	77 10                	ja     c0037ef5 <_free_r+0x235>
c0037ee5:	89 c1                	mov    %eax,%ecx
c0037ee7:	c1 e9 0f             	shr    $0xf,%ecx
c0037eea:	83 c1 77             	add    $0x77,%ecx
c0037eed:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ef0:	e9 95 fe ff ff       	jmp    c0037d8a <_free_r+0xca>
c0037ef5:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037efb:	77 10                	ja     c0037f0d <_free_r+0x24d>
c0037efd:	89 c1                	mov    %eax,%ecx
c0037eff:	c1 e9 12             	shr    $0x12,%ecx
c0037f02:	83 c1 7c             	add    $0x7c,%ecx
c0037f05:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f08:	e9 7d fe ff ff       	jmp    c0037d8a <_free_r+0xca>
c0037f0d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037f12:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037f17:	e9 6e fe ff ff       	jmp    c0037d8a <_free_r+0xca>
c0037f1c:	66 90                	xchg   %ax,%ax
c0037f1e:	66 90                	xchg   %ax,%ax

c0037f20 <memmove>:
c0037f20:	55                   	push   %ebp
c0037f21:	89 e5                	mov    %esp,%ebp
c0037f23:	56                   	push   %esi
c0037f24:	57                   	push   %edi
c0037f25:	53                   	push   %ebx
c0037f26:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037f29:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037f2c:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037f2f:	fc                   	cld    
c0037f30:	39 fe                	cmp    %edi,%esi
c0037f32:	73 43                	jae    c0037f77 <memmove+0x57>
c0037f34:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037f38:	39 df                	cmp    %ebx,%edi
c0037f3a:	77 3b                	ja     c0037f77 <memmove+0x57>
c0037f3c:	01 ce                	add    %ecx,%esi
c0037f3e:	01 cf                	add    %ecx,%edi
c0037f40:	fd                   	std    
c0037f41:	83 f9 08             	cmp    $0x8,%ecx
c0037f44:	76 2b                	jbe    c0037f71 <memmove+0x51>
c0037f46:	89 fa                	mov    %edi,%edx
c0037f48:	89 cb                	mov    %ecx,%ebx
c0037f4a:	83 e2 03             	and    $0x3,%edx
c0037f4d:	74 0c                	je     c0037f5b <memmove+0x3b>
c0037f4f:	89 d1                	mov    %edx,%ecx
c0037f51:	4e                   	dec    %esi
c0037f52:	4f                   	dec    %edi
c0037f53:	29 cb                	sub    %ecx,%ebx
c0037f55:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f57:	89 d9                	mov    %ebx,%ecx
c0037f59:	46                   	inc    %esi
c0037f5a:	47                   	inc    %edi
c0037f5b:	c1 e9 02             	shr    $0x2,%ecx
c0037f5e:	83 ee 04             	sub    $0x4,%esi
c0037f61:	83 ef 04             	sub    $0x4,%edi
c0037f64:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037f66:	83 c6 04             	add    $0x4,%esi
c0037f69:	83 c7 04             	add    $0x4,%edi
c0037f6c:	89 d9                	mov    %ebx,%ecx
c0037f6e:	83 e1 03             	and    $0x3,%ecx
c0037f71:	4e                   	dec    %esi
c0037f72:	4f                   	dec    %edi
c0037f73:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f75:	eb 2a                	jmp    c0037fa1 <memmove+0x81>
c0037f77:	83 f9 08             	cmp    $0x8,%ecx
c0037f7a:	76 23                	jbe    c0037f9f <memmove+0x7f>
c0037f7c:	89 fa                	mov    %edi,%edx
c0037f7e:	89 cb                	mov    %ecx,%ebx
c0037f80:	83 e2 03             	and    $0x3,%edx
c0037f83:	74 10                	je     c0037f95 <memmove+0x75>
c0037f85:	b9 04 00 00 00       	mov    $0x4,%ecx
c0037f8a:	29 d1                	sub    %edx,%ecx
c0037f8c:	83 e1 03             	and    $0x3,%ecx
c0037f8f:	29 cb                	sub    %ecx,%ebx
c0037f91:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f93:	89 d9                	mov    %ebx,%ecx
c0037f95:	c1 e9 02             	shr    $0x2,%ecx
c0037f98:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037f9a:	89 d9                	mov    %ebx,%ecx
c0037f9c:	83 e1 03             	and    $0x3,%ecx
c0037f9f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fa1:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fa4:	fc                   	cld    
c0037fa5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0037fa8:	5b                   	pop    %ebx
c0037fa9:	5f                   	pop    %edi
c0037faa:	5e                   	pop    %esi
c0037fab:	c9                   	leave  
c0037fac:	c3                   	ret    
c0037fad:	66 90                	xchg   %ax,%ax
c0037faf:	90                   	nop

c0037fb0 <_realloc_r>:
c0037fb0:	55                   	push   %ebp
c0037fb1:	89 e5                	mov    %esp,%ebp
c0037fb3:	57                   	push   %edi
c0037fb4:	56                   	push   %esi
c0037fb5:	53                   	push   %ebx
c0037fb6:	83 ec 3c             	sub    $0x3c,%esp
c0037fb9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fbc:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0037fbf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037fc2:	8b 45 10             	mov    0x10(%ebp),%eax
c0037fc5:	85 ff                	test   %edi,%edi
c0037fc7:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0037fca:	0f 84 50 02 00 00    	je     c0038220 <_realloc_r+0x270>
c0037fd0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037fd3:	8d 77 f8             	lea    -0x8(%edi),%esi
c0037fd6:	89 04 24             	mov    %eax,(%esp)
c0037fd9:	e8 82 db ff ff       	call   c0035b60 <__malloc_lock>
c0037fde:	8b 47 fc             	mov    -0x4(%edi),%eax
c0037fe1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037fe4:	89 c3                	mov    %eax,%ebx
c0037fe6:	8d 51 0b             	lea    0xb(%ecx),%edx
c0037fe9:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037fec:	83 fa 16             	cmp    $0x16,%edx
c0037fef:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0037ff2:	0f 87 00 01 00 00    	ja     c00380f8 <_realloc_r+0x148>
c0037ff8:	31 d2                	xor    %edx,%edx
c0037ffa:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0038001:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0038008:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003800b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c003800e:	0f 82 1c 02 00 00    	jb     c0038230 <_realloc_r+0x280>
c0038014:	84 d2                	test   %dl,%dl
c0038016:	0f 85 14 02 00 00    	jne    c0038230 <_realloc_r+0x280>
c003801c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003801f:	0f 8d eb 00 00 00    	jge    c0038110 <_realloc_r+0x160>
c0038025:	8b 0d 48 d5 03 c0    	mov    0xc003d548,%ecx
c003802b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003802e:	39 d1                	cmp    %edx,%ecx
c0038030:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038033:	0f 84 6f 02 00 00    	je     c00382a8 <_realloc_r+0x2f8>
c0038039:	8b 4a 04             	mov    0x4(%edx),%ecx
c003803c:	89 c8                	mov    %ecx,%eax
c003803e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038041:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038046:	0f 84 f4 00 00 00    	je     c0038140 <_realloc_r+0x190>
c003804c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038053:	31 d2                	xor    %edx,%edx
c0038055:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038059:	0f 85 39 01 00 00    	jne    c0038198 <_realloc_r+0x1e8>
c003805f:	89 f1                	mov    %esi,%ecx
c0038061:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038064:	8b 41 04             	mov    0x4(%ecx),%eax
c0038067:	83 e0 fc             	and    $0xfffffffc,%eax
c003806a:	85 d2                	test   %edx,%edx
c003806c:	0f 84 f6 02 00 00    	je     c0038368 <_realloc_r+0x3b8>
c0038072:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0038075:	0f 84 f5 02 00 00    	je     c0038370 <_realloc_r+0x3c0>
c003807b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003807e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0038081:	01 d8                	add    %ebx,%eax
c0038083:	01 c2                	add    %eax,%edx
c0038085:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038088:	89 55 d0             	mov    %edx,-0x30(%ebp)
c003808b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003808e:	0f 8c ac 01 00 00    	jl     c0038240 <_realloc_r+0x290>
c0038094:	8b 42 0c             	mov    0xc(%edx),%eax
c0038097:	83 eb 04             	sub    $0x4,%ebx
c003809a:	8b 52 08             	mov    0x8(%edx),%edx
c003809d:	83 fb 24             	cmp    $0x24,%ebx
c00380a0:	8d 71 08             	lea    0x8(%ecx),%esi
c00380a3:	89 42 0c             	mov    %eax,0xc(%edx)
c00380a6:	89 50 08             	mov    %edx,0x8(%eax)
c00380a9:	8b 41 0c             	mov    0xc(%ecx),%eax
c00380ac:	8b 51 08             	mov    0x8(%ecx),%edx
c00380af:	89 42 0c             	mov    %eax,0xc(%edx)
c00380b2:	89 50 08             	mov    %edx,0x8(%eax)
c00380b5:	0f 87 85 03 00 00    	ja     c0038440 <_realloc_r+0x490>
c00380bb:	83 fb 13             	cmp    $0x13,%ebx
c00380be:	89 f0                	mov    %esi,%eax
c00380c0:	76 1a                	jbe    c00380dc <_realloc_r+0x12c>
c00380c2:	8b 07                	mov    (%edi),%eax
c00380c4:	83 fb 1b             	cmp    $0x1b,%ebx
c00380c7:	89 41 08             	mov    %eax,0x8(%ecx)
c00380ca:	8b 47 04             	mov    0x4(%edi),%eax
c00380cd:	89 41 0c             	mov    %eax,0xc(%ecx)
c00380d0:	0f 87 8f 03 00 00    	ja     c0038465 <_realloc_r+0x4b5>
c00380d6:	8d 41 10             	lea    0x10(%ecx),%eax
c00380d9:	83 c7 08             	add    $0x8,%edi
c00380dc:	8b 17                	mov    (%edi),%edx
c00380de:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00380e1:	89 10                	mov    %edx,(%eax)
c00380e3:	8b 57 04             	mov    0x4(%edi),%edx
c00380e6:	89 50 04             	mov    %edx,0x4(%eax)
c00380e9:	8b 57 08             	mov    0x8(%edi),%edx
c00380ec:	89 f7                	mov    %esi,%edi
c00380ee:	89 ce                	mov    %ecx,%esi
c00380f0:	89 50 08             	mov    %edx,0x8(%eax)
c00380f3:	8b 41 04             	mov    0x4(%ecx),%eax
c00380f6:	eb 1b                	jmp    c0038113 <_realloc_r+0x163>
c00380f8:	83 e2 f8             	and    $0xfffffff8,%edx
c00380fb:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00380fe:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038101:	c1 ea 1f             	shr    $0x1f,%edx
c0038104:	e9 ff fe ff ff       	jmp    c0038008 <_realloc_r+0x58>
c0038109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038110:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038113:	89 da                	mov    %ebx,%edx
c0038115:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038118:	83 fa 0f             	cmp    $0xf,%edx
c003811b:	77 4b                	ja     c0038168 <_realloc_r+0x1b8>
c003811d:	83 e0 01             	and    $0x1,%eax
c0038120:	09 d8                	or     %ebx,%eax
c0038122:	89 46 04             	mov    %eax,0x4(%esi)
c0038125:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003812a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003812d:	89 04 24             	mov    %eax,(%esp)
c0038130:	e8 3b da ff ff       	call   c0035b70 <__malloc_unlock>
c0038135:	89 f8                	mov    %edi,%eax
c0038137:	83 c4 3c             	add    $0x3c,%esp
c003813a:	5b                   	pop    %ebx
c003813b:	5e                   	pop    %esi
c003813c:	5f                   	pop    %edi
c003813d:	5d                   	pop    %ebp
c003813e:	c3                   	ret    
c003813f:	90                   	nop
c0038140:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038143:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038146:	01 d9                	add    %ebx,%ecx
c0038148:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003814b:	0f 8c 04 ff ff ff    	jl     c0038055 <_realloc_r+0xa5>
c0038151:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038154:	8b 52 08             	mov    0x8(%edx),%edx
c0038157:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003815a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003815d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038160:	89 cb                	mov    %ecx,%ebx
c0038162:	eb af                	jmp    c0038113 <_realloc_r+0x163>
c0038164:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038168:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003816b:	83 e0 01             	and    $0x1,%eax
c003816e:	09 d8                	or     %ebx,%eax
c0038170:	89 46 04             	mov    %eax,0x4(%esi)
c0038173:	89 d0                	mov    %edx,%eax
c0038175:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038178:	83 c8 01             	or     $0x1,%eax
c003817b:	89 41 04             	mov    %eax,0x4(%ecx)
c003817e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038181:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0038186:	83 c1 08             	add    $0x8,%ecx
c0038189:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c003818d:	89 04 24             	mov    %eax,(%esp)
c0038190:	e8 2b fb ff ff       	call   c0037cc0 <_free_r>
c0038195:	eb 93                	jmp    c003812a <_realloc_r+0x17a>
c0038197:	90                   	nop
c0038198:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003819b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003819f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381a2:	89 04 24             	mov    %eax,(%esp)
c00381a5:	e8 d6 d1 ff ff       	call   c0035380 <_malloc_r>
c00381aa:	85 c0                	test   %eax,%eax
c00381ac:	89 c1                	mov    %eax,%ecx
c00381ae:	0f 84 65 03 00 00    	je     c0038519 <_realloc_r+0x569>
c00381b4:	8b 47 fc             	mov    -0x4(%edi),%eax
c00381b7:	8d 51 f8             	lea    -0x8(%ecx),%edx
c00381ba:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00381bd:	89 c2                	mov    %eax,%edx
c00381bf:	83 e2 fe             	and    $0xfffffffe,%edx
c00381c2:	01 f2                	add    %esi,%edx
c00381c4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c00381c7:	0f 84 63 02 00 00    	je     c0038430 <_realloc_r+0x480>
c00381cd:	83 eb 04             	sub    $0x4,%ebx
c00381d0:	83 fb 24             	cmp    $0x24,%ebx
c00381d3:	0f 87 6f 01 00 00    	ja     c0038348 <_realloc_r+0x398>
c00381d9:	83 fb 13             	cmp    $0x13,%ebx
c00381dc:	0f 87 ee 00 00 00    	ja     c00382d0 <_realloc_r+0x320>
c00381e2:	89 c8                	mov    %ecx,%eax
c00381e4:	89 fa                	mov    %edi,%edx
c00381e6:	8b 1a                	mov    (%edx),%ebx
c00381e8:	89 18                	mov    %ebx,(%eax)
c00381ea:	8b 5a 04             	mov    0x4(%edx),%ebx
c00381ed:	89 58 04             	mov    %ebx,0x4(%eax)
c00381f0:	8b 52 08             	mov    0x8(%edx),%edx
c00381f3:	89 50 08             	mov    %edx,0x8(%eax)
c00381f6:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00381f9:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00381fd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038200:	89 34 24             	mov    %esi,(%esp)
c0038203:	e8 b8 fa ff ff       	call   c0037cc0 <_free_r>
c0038208:	89 34 24             	mov    %esi,(%esp)
c003820b:	e8 60 d9 ff ff       	call   c0035b70 <__malloc_unlock>
c0038210:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038213:	83 c4 3c             	add    $0x3c,%esp
c0038216:	5b                   	pop    %ebx
c0038217:	5e                   	pop    %esi
c0038218:	5f                   	pop    %edi
c0038219:	89 c8                	mov    %ecx,%eax
c003821b:	5d                   	pop    %ebp
c003821c:	c3                   	ret    
c003821d:	8d 76 00             	lea    0x0(%esi),%esi
c0038220:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038223:	83 c4 3c             	add    $0x3c,%esp
c0038226:	5b                   	pop    %ebx
c0038227:	5e                   	pop    %esi
c0038228:	5f                   	pop    %edi
c0038229:	5d                   	pop    %ebp
c003822a:	e9 51 d1 ff ff       	jmp    c0035380 <_malloc_r>
c003822f:	90                   	nop
c0038230:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038233:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038239:	31 c0                	xor    %eax,%eax
c003823b:	e9 f7 fe ff ff       	jmp    c0038137 <_realloc_r+0x187>
c0038240:	89 c2                	mov    %eax,%edx
c0038242:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038245:	0f 8c 4d ff ff ff    	jl     c0038198 <_realloc_r+0x1e8>
c003824b:	8b 71 08             	mov    0x8(%ecx),%esi
c003824e:	83 eb 04             	sub    $0x4,%ebx
c0038251:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038254:	83 fb 24             	cmp    $0x24,%ebx
c0038257:	89 46 0c             	mov    %eax,0xc(%esi)
c003825a:	89 70 08             	mov    %esi,0x8(%eax)
c003825d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038260:	0f 87 88 00 00 00    	ja     c00382ee <_realloc_r+0x33e>
c0038266:	83 fb 13             	cmp    $0x13,%ebx
c0038269:	89 f0                	mov    %esi,%eax
c003826b:	76 1a                	jbe    c0038287 <_realloc_r+0x2d7>
c003826d:	8b 07                	mov    (%edi),%eax
c003826f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038272:	89 41 08             	mov    %eax,0x8(%ecx)
c0038275:	8b 47 04             	mov    0x4(%edi),%eax
c0038278:	89 41 0c             	mov    %eax,0xc(%ecx)
c003827b:	0f 87 17 02 00 00    	ja     c0038498 <_realloc_r+0x4e8>
c0038281:	8d 41 10             	lea    0x10(%ecx),%eax
c0038284:	83 c7 08             	add    $0x8,%edi
c0038287:	8b 1f                	mov    (%edi),%ebx
c0038289:	89 18                	mov    %ebx,(%eax)
c003828b:	8b 5f 04             	mov    0x4(%edi),%ebx
c003828e:	89 58 04             	mov    %ebx,0x4(%eax)
c0038291:	8b 5f 08             	mov    0x8(%edi),%ebx
c0038294:	89 f7                	mov    %esi,%edi
c0038296:	89 ce                	mov    %ecx,%esi
c0038298:	89 58 08             	mov    %ebx,0x8(%eax)
c003829b:	89 d3                	mov    %edx,%ebx
c003829d:	8b 41 04             	mov    0x4(%ecx),%eax
c00382a0:	e9 6e fe ff ff       	jmp    c0038113 <_realloc_r+0x163>
c00382a5:	8d 76 00             	lea    0x0(%esi),%esi
c00382a8:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00382ab:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00382ae:	8b 48 04             	mov    0x4(%eax),%ecx
c00382b1:	83 c2 10             	add    $0x10,%edx
c00382b4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00382b7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c00382bb:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c00382be:	01 d9                	add    %ebx,%ecx
c00382c0:	39 d1                	cmp    %edx,%ecx
c00382c2:	7d 54                	jge    c0038318 <_realloc_r+0x368>
c00382c4:	89 c2                	mov    %eax,%edx
c00382c6:	e9 8a fd ff ff       	jmp    c0038055 <_realloc_r+0xa5>
c00382cb:	90                   	nop
c00382cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00382d0:	8b 07                	mov    (%edi),%eax
c00382d2:	83 fb 1b             	cmp    $0x1b,%ebx
c00382d5:	89 01                	mov    %eax,(%ecx)
c00382d7:	8b 47 04             	mov    0x4(%edi),%eax
c00382da:	89 41 04             	mov    %eax,0x4(%ecx)
c00382dd:	0f 87 2d 01 00 00    	ja     c0038410 <_realloc_r+0x460>
c00382e3:	8d 41 08             	lea    0x8(%ecx),%eax
c00382e6:	8d 57 08             	lea    0x8(%edi),%edx
c00382e9:	e9 f8 fe ff ff       	jmp    c00381e6 <_realloc_r+0x236>
c00382ee:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00382f2:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00382f6:	89 f7                	mov    %esi,%edi
c00382f8:	89 34 24             	mov    %esi,(%esp)
c00382fb:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00382fe:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038301:	e8 1a fc ff ff       	call   c0037f20 <memmove>
c0038306:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038309:	8b 55 d8             	mov    -0x28(%ebp),%edx
c003830c:	8b 41 04             	mov    0x4(%ecx),%eax
c003830f:	89 ce                	mov    %ecx,%esi
c0038311:	89 d3                	mov    %edx,%ebx
c0038313:	e9 fb fd ff ff       	jmp    c0038113 <_realloc_r+0x163>
c0038318:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003831b:	29 d9                	sub    %ebx,%ecx
c003831d:	01 de                	add    %ebx,%esi
c003831f:	83 c9 01             	or     $0x1,%ecx
c0038322:	89 35 48 d5 03 c0    	mov    %esi,0xc003d548
c0038328:	89 4e 04             	mov    %ecx,0x4(%esi)
c003832b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003832e:	83 e0 01             	and    $0x1,%eax
c0038331:	09 d8                	or     %ebx,%eax
c0038333:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038336:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038339:	89 04 24             	mov    %eax,(%esp)
c003833c:	e8 2f d8 ff ff       	call   c0035b70 <__malloc_unlock>
c0038341:	89 f8                	mov    %edi,%eax
c0038343:	e9 ef fd ff ff       	jmp    c0038137 <_realloc_r+0x187>
c0038348:	89 0c 24             	mov    %ecx,(%esp)
c003834b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003834f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038353:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038356:	e8 c5 fb ff ff       	call   c0037f20 <memmove>
c003835b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003835e:	e9 93 fe ff ff       	jmp    c00381f6 <_realloc_r+0x246>
c0038363:	90                   	nop
c0038364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038368:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003836b:	e9 d2 fe ff ff       	jmp    c0038242 <_realloc_r+0x292>
c0038370:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038373:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038376:	01 d0                	add    %edx,%eax
c0038378:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003837b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003837e:	83 c0 10             	add    $0x10,%eax
c0038381:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038384:	0f 8c b8 fe ff ff    	jl     c0038242 <_realloc_r+0x292>
c003838a:	8b 41 0c             	mov    0xc(%ecx),%eax
c003838d:	83 eb 04             	sub    $0x4,%ebx
c0038390:	8b 51 08             	mov    0x8(%ecx),%edx
c0038393:	83 fb 24             	cmp    $0x24,%ebx
c0038396:	8d 71 08             	lea    0x8(%ecx),%esi
c0038399:	89 42 0c             	mov    %eax,0xc(%edx)
c003839c:	89 50 08             	mov    %edx,0x8(%eax)
c003839f:	0f 87 3d 01 00 00    	ja     c00384e2 <_realloc_r+0x532>
c00383a5:	83 fb 13             	cmp    $0x13,%ebx
c00383a8:	89 f0                	mov    %esi,%eax
c00383aa:	76 1a                	jbe    c00383c6 <_realloc_r+0x416>
c00383ac:	8b 07                	mov    (%edi),%eax
c00383ae:	83 fb 1b             	cmp    $0x1b,%ebx
c00383b1:	89 41 08             	mov    %eax,0x8(%ecx)
c00383b4:	8b 47 04             	mov    0x4(%edi),%eax
c00383b7:	89 41 0c             	mov    %eax,0xc(%ecx)
c00383ba:	0f 87 3d 01 00 00    	ja     c00384fd <_realloc_r+0x54d>
c00383c0:	8d 41 10             	lea    0x10(%ecx),%eax
c00383c3:	83 c7 08             	add    $0x8,%edi
c00383c6:	8b 17                	mov    (%edi),%edx
c00383c8:	89 10                	mov    %edx,(%eax)
c00383ca:	8b 57 04             	mov    0x4(%edi),%edx
c00383cd:	89 50 04             	mov    %edx,0x4(%eax)
c00383d0:	8b 57 08             	mov    0x8(%edi),%edx
c00383d3:	89 50 08             	mov    %edx,0x8(%eax)
c00383d6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00383d9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00383dc:	89 d8                	mov    %ebx,%eax
c00383de:	29 df                	sub    %ebx,%edi
c00383e0:	01 c8                	add    %ecx,%eax
c00383e2:	83 cf 01             	or     $0x1,%edi
c00383e5:	a3 48 d5 03 c0       	mov    %eax,0xc003d548
c00383ea:	89 78 04             	mov    %edi,0x4(%eax)
c00383ed:	8b 41 04             	mov    0x4(%ecx),%eax
c00383f0:	83 e0 01             	and    $0x1,%eax
c00383f3:	09 d8                	or     %ebx,%eax
c00383f5:	89 41 04             	mov    %eax,0x4(%ecx)
c00383f8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00383fb:	89 04 24             	mov    %eax,(%esp)
c00383fe:	e8 6d d7 ff ff       	call   c0035b70 <__malloc_unlock>
c0038403:	89 f0                	mov    %esi,%eax
c0038405:	e9 2d fd ff ff       	jmp    c0038137 <_realloc_r+0x187>
c003840a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038410:	8b 47 08             	mov    0x8(%edi),%eax
c0038413:	83 fb 24             	cmp    $0x24,%ebx
c0038416:	89 41 08             	mov    %eax,0x8(%ecx)
c0038419:	8b 47 0c             	mov    0xc(%edi),%eax
c003841c:	89 41 0c             	mov    %eax,0xc(%ecx)
c003841f:	74 60                	je     c0038481 <_realloc_r+0x4d1>
c0038421:	8d 41 10             	lea    0x10(%ecx),%eax
c0038424:	8d 57 10             	lea    0x10(%edi),%edx
c0038427:	e9 ba fd ff ff       	jmp    c00381e6 <_realloc_r+0x236>
c003842c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038430:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038433:	83 e2 fc             	and    $0xfffffffc,%edx
c0038436:	01 d3                	add    %edx,%ebx
c0038438:	e9 d6 fc ff ff       	jmp    c0038113 <_realloc_r+0x163>
c003843d:	8d 76 00             	lea    0x0(%esi),%esi
c0038440:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038444:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038448:	89 f7                	mov    %esi,%edi
c003844a:	89 34 24             	mov    %esi,(%esp)
c003844d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038450:	e8 cb fa ff ff       	call   c0037f20 <memmove>
c0038455:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038458:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003845b:	8b 41 04             	mov    0x4(%ecx),%eax
c003845e:	89 ce                	mov    %ecx,%esi
c0038460:	e9 ae fc ff ff       	jmp    c0038113 <_realloc_r+0x163>
c0038465:	8b 47 08             	mov    0x8(%edi),%eax
c0038468:	83 fb 24             	cmp    $0x24,%ebx
c003846b:	89 41 10             	mov    %eax,0x10(%ecx)
c003846e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038471:	89 41 14             	mov    %eax,0x14(%ecx)
c0038474:	74 3e                	je     c00384b4 <_realloc_r+0x504>
c0038476:	8d 41 18             	lea    0x18(%ecx),%eax
c0038479:	83 c7 10             	add    $0x10,%edi
c003847c:	e9 5b fc ff ff       	jmp    c00380dc <_realloc_r+0x12c>
c0038481:	8b 47 10             	mov    0x10(%edi),%eax
c0038484:	8d 57 18             	lea    0x18(%edi),%edx
c0038487:	89 41 10             	mov    %eax,0x10(%ecx)
c003848a:	8b 5f 14             	mov    0x14(%edi),%ebx
c003848d:	8d 41 18             	lea    0x18(%ecx),%eax
c0038490:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038493:	e9 4e fd ff ff       	jmp    c00381e6 <_realloc_r+0x236>
c0038498:	8b 47 08             	mov    0x8(%edi),%eax
c003849b:	83 fb 24             	cmp    $0x24,%ebx
c003849e:	89 41 10             	mov    %eax,0x10(%ecx)
c00384a1:	8b 47 0c             	mov    0xc(%edi),%eax
c00384a4:	89 41 14             	mov    %eax,0x14(%ecx)
c00384a7:	74 22                	je     c00384cb <_realloc_r+0x51b>
c00384a9:	8d 41 18             	lea    0x18(%ecx),%eax
c00384ac:	83 c7 10             	add    $0x10,%edi
c00384af:	e9 d3 fd ff ff       	jmp    c0038287 <_realloc_r+0x2d7>
c00384b4:	8b 47 10             	mov    0x10(%edi),%eax
c00384b7:	83 c7 18             	add    $0x18,%edi
c00384ba:	89 41 18             	mov    %eax,0x18(%ecx)
c00384bd:	8b 57 fc             	mov    -0x4(%edi),%edx
c00384c0:	8d 41 20             	lea    0x20(%ecx),%eax
c00384c3:	89 51 1c             	mov    %edx,0x1c(%ecx)
c00384c6:	e9 11 fc ff ff       	jmp    c00380dc <_realloc_r+0x12c>
c00384cb:	8b 47 10             	mov    0x10(%edi),%eax
c00384ce:	83 c7 18             	add    $0x18,%edi
c00384d1:	89 41 18             	mov    %eax,0x18(%ecx)
c00384d4:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00384d7:	8d 41 20             	lea    0x20(%ecx),%eax
c00384da:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c00384dd:	e9 a5 fd ff ff       	jmp    c0038287 <_realloc_r+0x2d7>
c00384e2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00384e6:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00384ea:	89 34 24             	mov    %esi,(%esp)
c00384ed:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00384f0:	e8 2b fa ff ff       	call   c0037f20 <memmove>
c00384f5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00384f8:	e9 d9 fe ff ff       	jmp    c00383d6 <_realloc_r+0x426>
c00384fd:	8b 47 08             	mov    0x8(%edi),%eax
c0038500:	83 fb 24             	cmp    $0x24,%ebx
c0038503:	89 41 10             	mov    %eax,0x10(%ecx)
c0038506:	8b 47 0c             	mov    0xc(%edi),%eax
c0038509:	89 41 14             	mov    %eax,0x14(%ecx)
c003850c:	74 1d                	je     c003852b <_realloc_r+0x57b>
c003850e:	8d 41 18             	lea    0x18(%ecx),%eax
c0038511:	83 c7 10             	add    $0x10,%edi
c0038514:	e9 ad fe ff ff       	jmp    c00383c6 <_realloc_r+0x416>
c0038519:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003851c:	89 04 24             	mov    %eax,(%esp)
c003851f:	e8 4c d6 ff ff       	call   c0035b70 <__malloc_unlock>
c0038524:	31 c0                	xor    %eax,%eax
c0038526:	e9 0c fc ff ff       	jmp    c0038137 <_realloc_r+0x187>
c003852b:	8b 47 10             	mov    0x10(%edi),%eax
c003852e:	83 c7 18             	add    $0x18,%edi
c0038531:	89 41 18             	mov    %eax,0x18(%ecx)
c0038534:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038537:	8d 41 20             	lea    0x20(%ecx),%eax
c003853a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003853d:	e9 84 fe ff ff       	jmp    c00383c6 <_realloc_r+0x416>
c0038542:	66 90                	xchg   %ax,%ax
c0038544:	66 90                	xchg   %ax,%ax
c0038546:	66 90                	xchg   %ax,%ax
c0038548:	66 90                	xchg   %ax,%ax
c003854a:	66 90                	xchg   %ax,%ax
c003854c:	66 90                	xchg   %ax,%ax
c003854e:	66 90                	xchg   %ax,%ax

c0038550 <cleanup_glue>:
c0038550:	55                   	push   %ebp
c0038551:	89 e5                	mov    %esp,%ebp
c0038553:	56                   	push   %esi
c0038554:	53                   	push   %ebx
c0038555:	83 ec 10             	sub    $0x10,%esp
c0038558:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003855b:	8b 75 08             	mov    0x8(%ebp),%esi
c003855e:	8b 03                	mov    (%ebx),%eax
c0038560:	85 c0                	test   %eax,%eax
c0038562:	74 0c                	je     c0038570 <cleanup_glue+0x20>
c0038564:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038568:	89 34 24             	mov    %esi,(%esp)
c003856b:	e8 e0 ff ff ff       	call   c0038550 <cleanup_glue>
c0038570:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038573:	89 75 08             	mov    %esi,0x8(%ebp)
c0038576:	83 c4 10             	add    $0x10,%esp
c0038579:	5b                   	pop    %ebx
c003857a:	5e                   	pop    %esi
c003857b:	5d                   	pop    %ebp
c003857c:	e9 3f f7 ff ff       	jmp    c0037cc0 <_free_r>
c0038581:	eb 0d                	jmp    c0038590 <_reclaim_reent>
c0038583:	90                   	nop
c0038584:	90                   	nop
c0038585:	90                   	nop
c0038586:	90                   	nop
c0038587:	90                   	nop
c0038588:	90                   	nop
c0038589:	90                   	nop
c003858a:	90                   	nop
c003858b:	90                   	nop
c003858c:	90                   	nop
c003858d:	90                   	nop
c003858e:	90                   	nop
c003858f:	90                   	nop

c0038590 <_reclaim_reent>:
c0038590:	55                   	push   %ebp
c0038591:	89 e5                	mov    %esp,%ebp
c0038593:	57                   	push   %edi
c0038594:	56                   	push   %esi
c0038595:	53                   	push   %ebx
c0038596:	83 ec 1c             	sub    $0x1c,%esp
c0038599:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003859c:	3b 1d 40 d0 03 c0    	cmp    0xc003d040,%ebx
c00385a2:	0f 84 a6 00 00 00    	je     c003864e <_reclaim_reent+0xbe>
c00385a8:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385ab:	85 d2                	test   %edx,%edx
c00385ad:	74 46                	je     c00385f5 <_reclaim_reent+0x65>
c00385af:	31 c0                	xor    %eax,%eax
c00385b1:	31 f6                	xor    %esi,%esi
c00385b3:	90                   	nop
c00385b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00385b8:	8b 04 82             	mov    (%edx,%eax,4),%eax
c00385bb:	85 c0                	test   %eax,%eax
c00385bd:	75 0b                	jne    c00385ca <_reclaim_reent+0x3a>
c00385bf:	eb 1e                	jmp    c00385df <_reclaim_reent+0x4f>
c00385c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00385c8:	89 f8                	mov    %edi,%eax
c00385ca:	8b 38                	mov    (%eax),%edi
c00385cc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385d0:	89 1c 24             	mov    %ebx,(%esp)
c00385d3:	e8 e8 f6 ff ff       	call   c0037cc0 <_free_r>
c00385d8:	85 ff                	test   %edi,%edi
c00385da:	75 ec                	jne    c00385c8 <_reclaim_reent+0x38>
c00385dc:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385df:	83 c6 01             	add    $0x1,%esi
c00385e2:	83 fe 20             	cmp    $0x20,%esi
c00385e5:	89 f0                	mov    %esi,%eax
c00385e7:	75 cf                	jne    c00385b8 <_reclaim_reent+0x28>
c00385e9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00385ed:	89 1c 24             	mov    %ebx,(%esp)
c00385f0:	e8 cb f6 ff ff       	call   c0037cc0 <_free_r>
c00385f5:	8b 43 40             	mov    0x40(%ebx),%eax
c00385f8:	85 c0                	test   %eax,%eax
c00385fa:	74 0c                	je     c0038608 <_reclaim_reent+0x78>
c00385fc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038600:	89 1c 24             	mov    %ebx,(%esp)
c0038603:	e8 b8 f6 ff ff       	call   c0037cc0 <_free_r>
c0038608:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c003860e:	85 c0                	test   %eax,%eax
c0038610:	74 22                	je     c0038634 <_reclaim_reent+0xa4>
c0038612:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038618:	39 f0                	cmp    %esi,%eax
c003861a:	75 06                	jne    c0038622 <_reclaim_reent+0x92>
c003861c:	eb 16                	jmp    c0038634 <_reclaim_reent+0xa4>
c003861e:	66 90                	xchg   %ax,%ax
c0038620:	89 f8                	mov    %edi,%eax
c0038622:	8b 38                	mov    (%eax),%edi
c0038624:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038628:	89 1c 24             	mov    %ebx,(%esp)
c003862b:	e8 90 f6 ff ff       	call   c0037cc0 <_free_r>
c0038630:	39 fe                	cmp    %edi,%esi
c0038632:	75 ec                	jne    c0038620 <_reclaim_reent+0x90>
c0038634:	8b 43 54             	mov    0x54(%ebx),%eax
c0038637:	85 c0                	test   %eax,%eax
c0038639:	74 0c                	je     c0038647 <_reclaim_reent+0xb7>
c003863b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003863f:	89 1c 24             	mov    %ebx,(%esp)
c0038642:	e8 79 f6 ff ff       	call   c0037cc0 <_free_r>
c0038647:	8b 43 38             	mov    0x38(%ebx),%eax
c003864a:	85 c0                	test   %eax,%eax
c003864c:	75 08                	jne    c0038656 <_reclaim_reent+0xc6>
c003864e:	83 c4 1c             	add    $0x1c,%esp
c0038651:	5b                   	pop    %ebx
c0038652:	5e                   	pop    %esi
c0038653:	5f                   	pop    %edi
c0038654:	5d                   	pop    %ebp
c0038655:	c3                   	ret    
c0038656:	89 1c 24             	mov    %ebx,(%esp)
c0038659:	ff 53 3c             	call   *0x3c(%ebx)
c003865c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038662:	85 c0                	test   %eax,%eax
c0038664:	74 e8                	je     c003864e <_reclaim_reent+0xbe>
c0038666:	89 1c 24             	mov    %ebx,(%esp)
c0038669:	89 44 24 04          	mov    %eax,0x4(%esp)
c003866d:	e8 de fe ff ff       	call   c0038550 <cleanup_glue>
c0038672:	83 c4 1c             	add    $0x1c,%esp
c0038675:	5b                   	pop    %ebx
c0038676:	5e                   	pop    %esi
c0038677:	5f                   	pop    %edi
c0038678:	5d                   	pop    %ebp
c0038679:	c3                   	ret    
