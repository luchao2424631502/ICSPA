
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
c0030105:	e8 dd 17 00 00       	call   c00318e7 <init_page>
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
c0030137:	e8 8c 19 00 00       	call   c0031ac8 <init_segment>
c003013c:	e8 37 0e 00 00       	call   c0030f78 <init_idt>
c0030141:	e8 9c ff ff ff       	call   c00300e2 <sti>
c0030146:	e8 60 15 00 00       	call   c00316ab <init_mm>
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
c0030922:	e8 19 12 00 00       	call   c0031b40 <mm_malloc>
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
c0030947:	e8 88 14 00 00       	call   c0031dd4 <memcpy>
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
c003097f:	e8 98 14 00 00       	call   c0031e1c <memset>
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
c00309d7:	e8 64 11 00 00       	call   c0031b40 <mm_malloc>
c00309dc:	83 c4 10             	add    $0x10,%esp
c00309df:	e8 62 0c 00 00       	call   c0031646 <get_ucr3>
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
c0030af7:	e8 44 14 00 00       	call   c0031f40 <vsnprintf>
c0030afc:	83 c4 10             	add    $0x10,%esp
c0030aff:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030b02:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030b05:	83 ec 04             	sub    $0x4,%esp
c0030b08:	50                   	push   %eax
c0030b09:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030b0f:	50                   	push   %eax
c0030b10:	6a 01                	push   $0x1
c0030b12:	e8 b5 07 00 00       	call   c00312cc <fs_write>
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
c0030b42:	8d 83 00 c3 ff ff    	lea    -0x3d00(%ebx),%eax
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
c0030b7c:	8d 83 00 c3 ff ff    	lea    -0x3d00(%ebx),%eax
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
c0030c0e:	8d 83 10 c3 ff ff    	lea    -0x3cf0(%ebx),%eax
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
c0030c33:	e9 fd 00 00 00       	jmp    c0030d35 <irq_handle+0x148>
c0030c38:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
c0030c3f:	75 13                	jne    c0030c54 <irq_handle+0x67>
c0030c41:	83 ec 0c             	sub    $0xc,%esp
c0030c44:	ff 75 08             	pushl  0x8(%ebp)
c0030c47:	e8 f7 08 00 00       	call   c0031543 <do_syscall>
c0030c4c:	83 c4 10             	add    $0x10,%esp
c0030c4f:	e9 e1 00 00 00       	jmp    c0030d35 <irq_handle+0x148>
c0030c54:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030c5b:	7f 3b                	jg     c0030c98 <irq_handle+0xab>
c0030c5d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030c60:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c63:	8b 40 28             	mov    0x28(%eax),%eax
c0030c66:	83 ec 04             	sub    $0x4,%esp
c0030c69:	52                   	push   %edx
c0030c6a:	50                   	push   %eax
c0030c6b:	ff 75 f0             	pushl  -0x10(%ebp)
c0030c6e:	8d 83 10 c3 ff ff    	lea    -0x3cf0(%ebx),%eax
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
c0030c93:	e9 9d 00 00 00       	jmp    c0030d35 <irq_handle+0x148>
c0030c98:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030c9f:	0f 8e 90 00 00 00    	jle    c0030d35 <irq_handle+0x148>
c0030ca5:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030ca8:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0030cad:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0030cb0:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c0030cb4:	7e 2f                	jle    c0030ce5 <irq_handle+0xf8>
c0030cb6:	83 ec 0c             	sub    $0xc,%esp
c0030cb9:	8d 83 47 c2 ff ff    	lea    -0x3db9(%ebx),%eax
c0030cbf:	50                   	push   %eax
c0030cc0:	8d 83 10 c3 ff ff    	lea    -0x3cf0(%ebx),%eax
c0030cc6:	50                   	push   %eax
c0030cc7:	6a 34                	push   $0x34
c0030cc9:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030ccf:	50                   	push   %eax
c0030cd0:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030cd6:	50                   	push   %eax
c0030cd7:	e8 f0 fd ff ff       	call   c0030acc <printk>
c0030cdc:	83 c4 20             	add    $0x20,%esp
c0030cdf:	b8 01 00 00 00       	mov    $0x1,%eax
c0030ce4:	82                   	nemu_trap 
c0030ce5:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0030ce9:	75 25                	jne    c0030d10 <irq_handle+0x123>
c0030ceb:	8d 83 10 c3 ff ff    	lea    -0x3cf0(%ebx),%eax
c0030cf1:	50                   	push   %eax
c0030cf2:	6a 36                	push   $0x36
c0030cf4:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030cfa:	50                   	push   %eax
c0030cfb:	8d 83 60 c2 ff ff    	lea    -0x3da0(%ebx),%eax
c0030d01:	50                   	push   %eax
c0030d02:	e8 c5 fd ff ff       	call   c0030acc <printk>
c0030d07:	83 c4 10             	add    $0x10,%esp
c0030d0a:	b8 01 00 00 00       	mov    $0x1,%eax
c0030d0f:	82                   	nemu_trap 
c0030d10:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030d13:	8b 84 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%eax
c0030d1a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030d1d:	eb 10                	jmp    c0030d2f <irq_handle+0x142>
c0030d1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d22:	8b 00                	mov    (%eax),%eax
c0030d24:	ff d0                	call   *%eax
c0030d26:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d29:	8b 40 04             	mov    0x4(%eax),%eax
c0030d2c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030d2f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0030d33:	75 ea                	jne    c0030d1f <irq_handle+0x132>
c0030d35:	90                   	nop
c0030d36:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030d39:	c9                   	leave  
c0030d3a:	c3                   	ret    

c0030d3b <out_byte>:
c0030d3b:	55                   	push   %ebp
c0030d3c:	89 e5                	mov    %esp,%ebp
c0030d3e:	83 ec 08             	sub    $0x8,%esp
c0030d41:	e8 3c f4 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030d46:	05 ba c2 00 00       	add    $0xc2ba,%eax
c0030d4b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d4e:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030d51:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030d55:	88 d0                	mov    %dl,%al
c0030d57:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030d5a:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030d5d:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030d60:	ee                   	out    %al,(%dx)
c0030d61:	90                   	nop
c0030d62:	c9                   	leave  
c0030d63:	c3                   	ret    

c0030d64 <init_i8259>:
c0030d64:	55                   	push   %ebp
c0030d65:	89 e5                	mov    %esp,%ebp
c0030d67:	e8 16 f4 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030d6c:	05 94 c2 00 00       	add    $0xc294,%eax
c0030d71:	68 ff 00 00 00       	push   $0xff
c0030d76:	6a 21                	push   $0x21
c0030d78:	e8 be ff ff ff       	call   c0030d3b <out_byte>
c0030d7d:	83 c4 08             	add    $0x8,%esp
c0030d80:	68 ff 00 00 00       	push   $0xff
c0030d85:	68 a1 00 00 00       	push   $0xa1
c0030d8a:	e8 ac ff ff ff       	call   c0030d3b <out_byte>
c0030d8f:	83 c4 08             	add    $0x8,%esp
c0030d92:	6a 11                	push   $0x11
c0030d94:	6a 20                	push   $0x20
c0030d96:	e8 a0 ff ff ff       	call   c0030d3b <out_byte>
c0030d9b:	83 c4 08             	add    $0x8,%esp
c0030d9e:	6a 20                	push   $0x20
c0030da0:	6a 21                	push   $0x21
c0030da2:	e8 94 ff ff ff       	call   c0030d3b <out_byte>
c0030da7:	83 c4 08             	add    $0x8,%esp
c0030daa:	6a 04                	push   $0x4
c0030dac:	6a 21                	push   $0x21
c0030dae:	e8 88 ff ff ff       	call   c0030d3b <out_byte>
c0030db3:	83 c4 08             	add    $0x8,%esp
c0030db6:	6a 03                	push   $0x3
c0030db8:	6a 21                	push   $0x21
c0030dba:	e8 7c ff ff ff       	call   c0030d3b <out_byte>
c0030dbf:	83 c4 08             	add    $0x8,%esp
c0030dc2:	6a 11                	push   $0x11
c0030dc4:	68 a0 00 00 00       	push   $0xa0
c0030dc9:	e8 6d ff ff ff       	call   c0030d3b <out_byte>
c0030dce:	83 c4 08             	add    $0x8,%esp
c0030dd1:	6a 28                	push   $0x28
c0030dd3:	68 a1 00 00 00       	push   $0xa1
c0030dd8:	e8 5e ff ff ff       	call   c0030d3b <out_byte>
c0030ddd:	83 c4 08             	add    $0x8,%esp
c0030de0:	6a 02                	push   $0x2
c0030de2:	68 a1 00 00 00       	push   $0xa1
c0030de7:	e8 4f ff ff ff       	call   c0030d3b <out_byte>
c0030dec:	83 c4 08             	add    $0x8,%esp
c0030def:	6a 03                	push   $0x3
c0030df1:	68 a1 00 00 00       	push   $0xa1
c0030df6:	e8 40 ff ff ff       	call   c0030d3b <out_byte>
c0030dfb:	83 c4 08             	add    $0x8,%esp
c0030dfe:	6a 68                	push   $0x68
c0030e00:	6a 20                	push   $0x20
c0030e02:	e8 34 ff ff ff       	call   c0030d3b <out_byte>
c0030e07:	83 c4 08             	add    $0x8,%esp
c0030e0a:	6a 0a                	push   $0xa
c0030e0c:	6a 20                	push   $0x20
c0030e0e:	e8 28 ff ff ff       	call   c0030d3b <out_byte>
c0030e13:	83 c4 08             	add    $0x8,%esp
c0030e16:	6a 68                	push   $0x68
c0030e18:	68 a0 00 00 00       	push   $0xa0
c0030e1d:	e8 19 ff ff ff       	call   c0030d3b <out_byte>
c0030e22:	83 c4 08             	add    $0x8,%esp
c0030e25:	6a 0a                	push   $0xa
c0030e27:	68 a0 00 00 00       	push   $0xa0
c0030e2c:	e8 0a ff ff ff       	call   c0030d3b <out_byte>
c0030e31:	83 c4 08             	add    $0x8,%esp
c0030e34:	90                   	nop
c0030e35:	c9                   	leave  
c0030e36:	c3                   	ret    

c0030e37 <write_idtr>:
c0030e37:	55                   	push   %ebp
c0030e38:	89 e5                	mov    %esp,%ebp
c0030e3a:	e8 43 f3 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030e3f:	05 c1 c1 00 00       	add    $0xc1c1,%eax
c0030e44:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030e47:	4a                   	dec    %edx
c0030e48:	66 89 90 80 1e 01 00 	mov    %dx,0x11e80(%eax)
c0030e4f:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e52:	66 89 90 82 1e 01 00 	mov    %dx,0x11e82(%eax)
c0030e59:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e5c:	c1 ea 10             	shr    $0x10,%edx
c0030e5f:	66 89 90 84 1e 01 00 	mov    %dx,0x11e84(%eax)
c0030e66:	8d 80 80 1e 01 00    	lea    0x11e80(%eax),%eax
c0030e6c:	0f 01 18             	lidtl  (%eax)
c0030e6f:	90                   	nop
c0030e70:	5d                   	pop    %ebp
c0030e71:	c3                   	ret    

c0030e72 <sti>:
c0030e72:	55                   	push   %ebp
c0030e73:	89 e5                	mov    %esp,%ebp
c0030e75:	e8 08 f3 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030e7a:	05 86 c1 00 00       	add    $0xc186,%eax
c0030e7f:	fb                   	sti    
c0030e80:	90                   	nop
c0030e81:	5d                   	pop    %ebp
c0030e82:	c3                   	ret    

c0030e83 <set_intr>:
c0030e83:	55                   	push   %ebp
c0030e84:	89 e5                	mov    %esp,%ebp
c0030e86:	e8 f7 f2 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030e8b:	05 75 c1 00 00       	add    $0xc175,%eax
c0030e90:	8b 45 10             	mov    0x10(%ebp),%eax
c0030e93:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e96:	66 89 02             	mov    %ax,(%edx)
c0030e99:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030e9c:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e9f:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030ea3:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ea6:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030eaa:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ead:	8a 50 05             	mov    0x5(%eax),%dl
c0030eb0:	83 e2 f0             	and    $0xfffffff0,%edx
c0030eb3:	83 ca 0e             	or     $0xe,%edx
c0030eb6:	88 50 05             	mov    %dl,0x5(%eax)
c0030eb9:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ebc:	8a 50 05             	mov    0x5(%eax),%dl
c0030ebf:	83 e2 ef             	and    $0xffffffef,%edx
c0030ec2:	88 50 05             	mov    %dl,0x5(%eax)
c0030ec5:	8b 45 14             	mov    0x14(%ebp),%eax
c0030ec8:	88 c2                	mov    %al,%dl
c0030eca:	83 e2 03             	and    $0x3,%edx
c0030ecd:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ed0:	83 e2 03             	and    $0x3,%edx
c0030ed3:	88 d1                	mov    %dl,%cl
c0030ed5:	c1 e1 05             	shl    $0x5,%ecx
c0030ed8:	8a 50 05             	mov    0x5(%eax),%dl
c0030edb:	83 e2 9f             	and    $0xffffff9f,%edx
c0030ede:	09 ca                	or     %ecx,%edx
c0030ee0:	88 50 05             	mov    %dl,0x5(%eax)
c0030ee3:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ee6:	8a 50 05             	mov    0x5(%eax),%dl
c0030ee9:	83 ca 80             	or     $0xffffff80,%edx
c0030eec:	88 50 05             	mov    %dl,0x5(%eax)
c0030eef:	8b 45 10             	mov    0x10(%ebp),%eax
c0030ef2:	c1 e8 10             	shr    $0x10,%eax
c0030ef5:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ef8:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030efc:	90                   	nop
c0030efd:	5d                   	pop    %ebp
c0030efe:	c3                   	ret    

c0030eff <set_trap>:
c0030eff:	55                   	push   %ebp
c0030f00:	89 e5                	mov    %esp,%ebp
c0030f02:	e8 7b f2 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0030f07:	05 f9 c0 00 00       	add    $0xc0f9,%eax
c0030f0c:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f0f:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f12:	66 89 02             	mov    %ax,(%edx)
c0030f15:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030f18:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f1b:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030f1f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f22:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030f26:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f29:	8a 50 05             	mov    0x5(%eax),%dl
c0030f2c:	83 ca 0f             	or     $0xf,%edx
c0030f2f:	88 50 05             	mov    %dl,0x5(%eax)
c0030f32:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f35:	8a 50 05             	mov    0x5(%eax),%dl
c0030f38:	83 e2 ef             	and    $0xffffffef,%edx
c0030f3b:	88 50 05             	mov    %dl,0x5(%eax)
c0030f3e:	8b 45 14             	mov    0x14(%ebp),%eax
c0030f41:	88 c2                	mov    %al,%dl
c0030f43:	83 e2 03             	and    $0x3,%edx
c0030f46:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f49:	83 e2 03             	and    $0x3,%edx
c0030f4c:	88 d1                	mov    %dl,%cl
c0030f4e:	c1 e1 05             	shl    $0x5,%ecx
c0030f51:	8a 50 05             	mov    0x5(%eax),%dl
c0030f54:	83 e2 9f             	and    $0xffffff9f,%edx
c0030f57:	09 ca                	or     %ecx,%edx
c0030f59:	88 50 05             	mov    %dl,0x5(%eax)
c0030f5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f5f:	8a 50 05             	mov    0x5(%eax),%dl
c0030f62:	83 ca 80             	or     $0xffffff80,%edx
c0030f65:	88 50 05             	mov    %dl,0x5(%eax)
c0030f68:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f6b:	c1 e8 10             	shr    $0x10,%eax
c0030f6e:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f71:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030f75:	90                   	nop
c0030f76:	5d                   	pop    %ebp
c0030f77:	c3                   	ret    

c0030f78 <init_idt>:
c0030f78:	55                   	push   %ebp
c0030f79:	89 e5                	mov    %esp,%ebp
c0030f7b:	53                   	push   %ebx
c0030f7c:	83 ec 10             	sub    $0x10,%esp
c0030f7f:	e8 02 f2 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0030f84:	81 c3 7c c0 00 00    	add    $0xc07c,%ebx
c0030f8a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030f91:	eb 2b                	jmp    c0030fbe <init_idt+0x46>
c0030f93:	c7 c0 cd 00 03 c0    	mov    $0xc00300cd,%eax
c0030f99:	89 c2                	mov    %eax,%edx
c0030f9b:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030f9e:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0030fa5:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0030fab:	01 c8                	add    %ecx,%eax
c0030fad:	6a 00                	push   $0x0
c0030faf:	52                   	push   %edx
c0030fb0:	6a 08                	push   $0x8
c0030fb2:	50                   	push   %eax
c0030fb3:	e8 47 ff ff ff       	call   c0030eff <set_trap>
c0030fb8:	83 c4 10             	add    $0x10,%esp
c0030fbb:	ff 45 f8             	incl   -0x8(%ebp)
c0030fbe:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0030fc5:	7e cc                	jle    c0030f93 <init_idt+0x1b>
c0030fc7:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030fcd:	6a 00                	push   $0x0
c0030fcf:	50                   	push   %eax
c0030fd0:	6a 08                	push   $0x8
c0030fd2:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0030fd8:	50                   	push   %eax
c0030fd9:	e8 21 ff ff ff       	call   c0030eff <set_trap>
c0030fde:	83 c4 10             	add    $0x10,%esp
c0030fe1:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c0030fe7:	89 c2                	mov    %eax,%edx
c0030fe9:	8d 83 88 16 01 00    	lea    0x11688(%ebx),%eax
c0030fef:	6a 00                	push   $0x0
c0030ff1:	52                   	push   %edx
c0030ff2:	6a 08                	push   $0x8
c0030ff4:	50                   	push   %eax
c0030ff5:	e8 05 ff ff ff       	call   c0030eff <set_trap>
c0030ffa:	83 c4 10             	add    $0x10,%esp
c0030ffd:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c0031003:	89 c2                	mov    %eax,%edx
c0031005:	8d 83 90 16 01 00    	lea    0x11690(%ebx),%eax
c003100b:	6a 00                	push   $0x0
c003100d:	52                   	push   %edx
c003100e:	6a 08                	push   $0x8
c0031010:	50                   	push   %eax
c0031011:	e8 e9 fe ff ff       	call   c0030eff <set_trap>
c0031016:	83 c4 10             	add    $0x10,%esp
c0031019:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c003101f:	89 c2                	mov    %eax,%edx
c0031021:	8d 83 98 16 01 00    	lea    0x11698(%ebx),%eax
c0031027:	6a 00                	push   $0x0
c0031029:	52                   	push   %edx
c003102a:	6a 08                	push   $0x8
c003102c:	50                   	push   %eax
c003102d:	e8 cd fe ff ff       	call   c0030eff <set_trap>
c0031032:	83 c4 10             	add    $0x10,%esp
c0031035:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c003103b:	89 c2                	mov    %eax,%edx
c003103d:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
c0031043:	6a 00                	push   $0x0
c0031045:	52                   	push   %edx
c0031046:	6a 08                	push   $0x8
c0031048:	50                   	push   %eax
c0031049:	e8 b1 fe ff ff       	call   c0030eff <set_trap>
c003104e:	83 c4 10             	add    $0x10,%esp
c0031051:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c0031057:	89 c2                	mov    %eax,%edx
c0031059:	8d 83 a8 16 01 00    	lea    0x116a8(%ebx),%eax
c003105f:	6a 00                	push   $0x0
c0031061:	52                   	push   %edx
c0031062:	6a 08                	push   $0x8
c0031064:	50                   	push   %eax
c0031065:	e8 95 fe ff ff       	call   c0030eff <set_trap>
c003106a:	83 c4 10             	add    $0x10,%esp
c003106d:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0031073:	89 c2                	mov    %eax,%edx
c0031075:	8d 83 b0 16 01 00    	lea    0x116b0(%ebx),%eax
c003107b:	6a 00                	push   $0x0
c003107d:	52                   	push   %edx
c003107e:	6a 08                	push   $0x8
c0031080:	50                   	push   %eax
c0031081:	e8 79 fe ff ff       	call   c0030eff <set_trap>
c0031086:	83 c4 10             	add    $0x10,%esp
c0031089:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c003108f:	89 c2                	mov    %eax,%edx
c0031091:	8d 83 b8 16 01 00    	lea    0x116b8(%ebx),%eax
c0031097:	6a 00                	push   $0x0
c0031099:	52                   	push   %edx
c003109a:	6a 08                	push   $0x8
c003109c:	50                   	push   %eax
c003109d:	e8 5d fe ff ff       	call   c0030eff <set_trap>
c00310a2:	83 c4 10             	add    $0x10,%esp
c00310a5:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c00310ab:	89 c2                	mov    %eax,%edx
c00310ad:	8d 83 c0 16 01 00    	lea    0x116c0(%ebx),%eax
c00310b3:	6a 00                	push   $0x0
c00310b5:	52                   	push   %edx
c00310b6:	6a 08                	push   $0x8
c00310b8:	50                   	push   %eax
c00310b9:	e8 41 fe ff ff       	call   c0030eff <set_trap>
c00310be:	83 c4 10             	add    $0x10,%esp
c00310c1:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c00310c7:	89 c2                	mov    %eax,%edx
c00310c9:	8d 83 c8 16 01 00    	lea    0x116c8(%ebx),%eax
c00310cf:	6a 00                	push   $0x0
c00310d1:	52                   	push   %edx
c00310d2:	6a 08                	push   $0x8
c00310d4:	50                   	push   %eax
c00310d5:	e8 25 fe ff ff       	call   c0030eff <set_trap>
c00310da:	83 c4 10             	add    $0x10,%esp
c00310dd:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c00310e3:	89 c2                	mov    %eax,%edx
c00310e5:	8d 83 d0 16 01 00    	lea    0x116d0(%ebx),%eax
c00310eb:	6a 00                	push   $0x0
c00310ed:	52                   	push   %edx
c00310ee:	6a 08                	push   $0x8
c00310f0:	50                   	push   %eax
c00310f1:	e8 09 fe ff ff       	call   c0030eff <set_trap>
c00310f6:	83 c4 10             	add    $0x10,%esp
c00310f9:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c00310ff:	89 c2                	mov    %eax,%edx
c0031101:	8d 83 d8 16 01 00    	lea    0x116d8(%ebx),%eax
c0031107:	6a 00                	push   $0x0
c0031109:	52                   	push   %edx
c003110a:	6a 08                	push   $0x8
c003110c:	50                   	push   %eax
c003110d:	e8 ed fd ff ff       	call   c0030eff <set_trap>
c0031112:	83 c4 10             	add    $0x10,%esp
c0031115:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c003111b:	89 c2                	mov    %eax,%edx
c003111d:	8d 83 e0 16 01 00    	lea    0x116e0(%ebx),%eax
c0031123:	6a 00                	push   $0x0
c0031125:	52                   	push   %edx
c0031126:	6a 08                	push   $0x8
c0031128:	50                   	push   %eax
c0031129:	e8 d1 fd ff ff       	call   c0030eff <set_trap>
c003112e:	83 c4 10             	add    $0x10,%esp
c0031131:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0031137:	89 c2                	mov    %eax,%edx
c0031139:	8d 83 e8 16 01 00    	lea    0x116e8(%ebx),%eax
c003113f:	6a 00                	push   $0x0
c0031141:	52                   	push   %edx
c0031142:	6a 08                	push   $0x8
c0031144:	50                   	push   %eax
c0031145:	e8 b5 fd ff ff       	call   c0030eff <set_trap>
c003114a:	83 c4 10             	add    $0x10,%esp
c003114d:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0031153:	89 c2                	mov    %eax,%edx
c0031155:	8d 83 f0 16 01 00    	lea    0x116f0(%ebx),%eax
c003115b:	6a 00                	push   $0x0
c003115d:	52                   	push   %edx
c003115e:	6a 08                	push   $0x8
c0031160:	50                   	push   %eax
c0031161:	e8 99 fd ff ff       	call   c0030eff <set_trap>
c0031166:	83 c4 10             	add    $0x10,%esp
c0031169:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c003116f:	89 c2                	mov    %eax,%edx
c0031171:	8d 83 80 1a 01 00    	lea    0x11a80(%ebx),%eax
c0031177:	6a 03                	push   $0x3
c0031179:	52                   	push   %edx
c003117a:	6a 08                	push   $0x8
c003117c:	50                   	push   %eax
c003117d:	e8 7d fd ff ff       	call   c0030eff <set_trap>
c0031182:	83 c4 10             	add    $0x10,%esp
c0031185:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c003118b:	89 c2                	mov    %eax,%edx
c003118d:	8d 83 80 17 01 00    	lea    0x11780(%ebx),%eax
c0031193:	6a 00                	push   $0x0
c0031195:	52                   	push   %edx
c0031196:	6a 08                	push   $0x8
c0031198:	50                   	push   %eax
c0031199:	e8 e5 fc ff ff       	call   c0030e83 <set_intr>
c003119e:	83 c4 10             	add    $0x10,%esp
c00311a1:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c00311a7:	89 c2                	mov    %eax,%edx
c00311a9:	8d 83 88 17 01 00    	lea    0x11788(%ebx),%eax
c00311af:	6a 00                	push   $0x0
c00311b1:	52                   	push   %edx
c00311b2:	6a 08                	push   $0x8
c00311b4:	50                   	push   %eax
c00311b5:	e8 c9 fc ff ff       	call   c0030e83 <set_intr>
c00311ba:	83 c4 10             	add    $0x10,%esp
c00311bd:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c00311c3:	89 c2                	mov    %eax,%edx
c00311c5:	8d 83 90 17 01 00    	lea    0x11790(%ebx),%eax
c00311cb:	6a 00                	push   $0x0
c00311cd:	52                   	push   %edx
c00311ce:	6a 08                	push   $0x8
c00311d0:	50                   	push   %eax
c00311d1:	e8 ad fc ff ff       	call   c0030e83 <set_intr>
c00311d6:	83 c4 10             	add    $0x10,%esp
c00311d9:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c00311df:	89 c2                	mov    %eax,%edx
c00311e1:	8d 83 f0 17 01 00    	lea    0x117f0(%ebx),%eax
c00311e7:	6a 00                	push   $0x0
c00311e9:	52                   	push   %edx
c00311ea:	6a 08                	push   $0x8
c00311ec:	50                   	push   %eax
c00311ed:	e8 91 fc ff ff       	call   c0030e83 <set_intr>
c00311f2:	83 c4 10             	add    $0x10,%esp
c00311f5:	68 00 08 00 00       	push   $0x800
c00311fa:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0031200:	50                   	push   %eax
c0031201:	e8 31 fc ff ff       	call   c0030e37 <write_idtr>
c0031206:	83 c4 08             	add    $0x8,%esp
c0031209:	e8 64 fc ff ff       	call   c0030e72 <sti>
c003120e:	90                   	nop
c003120f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031212:	c9                   	leave  
c0031213:	c3                   	ret    

c0031214 <fs_open>:
c0031214:	55                   	push   %ebp
c0031215:	89 e5                	mov    %esp,%ebp
c0031217:	53                   	push   %ebx
c0031218:	83 ec 04             	sub    $0x4,%esp
c003121b:	e8 62 ef ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031220:	05 e0 bd 00 00       	add    $0xbde0,%eax
c0031225:	8d 90 b8 c5 ff ff    	lea    -0x3a48(%eax),%edx
c003122b:	52                   	push   %edx
c003122c:	6a 28                	push   $0x28
c003122e:	8d 90 ef c3 ff ff    	lea    -0x3c11(%eax),%edx
c0031234:	52                   	push   %edx
c0031235:	8d 90 fc c3 ff ff    	lea    -0x3c04(%eax),%edx
c003123b:	52                   	push   %edx
c003123c:	89 c3                	mov    %eax,%ebx
c003123e:	e8 89 f8 ff ff       	call   c0030acc <printk>
c0031243:	83 c4 10             	add    $0x10,%esp
c0031246:	b8 01 00 00 00       	mov    $0x1,%eax
c003124b:	82                   	nemu_trap 
c003124c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031251:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031254:	c9                   	leave  
c0031255:	c3                   	ret    

c0031256 <fs_read>:
c0031256:	55                   	push   %ebp
c0031257:	89 e5                	mov    %esp,%ebp
c0031259:	53                   	push   %ebx
c003125a:	83 ec 04             	sub    $0x4,%esp
c003125d:	e8 24 ef ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0031262:	81 c3 9e bd 00 00    	add    $0xbd9e,%ebx
c0031268:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c003126c:	7f 2f                	jg     c003129d <fs_read+0x47>
c003126e:	83 ec 0c             	sub    $0xc,%esp
c0031271:	8d 83 52 c4 ff ff    	lea    -0x3bae(%ebx),%eax
c0031277:	50                   	push   %eax
c0031278:	8d 83 c0 c5 ff ff    	lea    -0x3a40(%ebx),%eax
c003127e:	50                   	push   %eax
c003127f:	6a 2e                	push   $0x2e
c0031281:	8d 83 ef c3 ff ff    	lea    -0x3c11(%ebx),%eax
c0031287:	50                   	push   %eax
c0031288:	8d 83 5c c4 ff ff    	lea    -0x3ba4(%ebx),%eax
c003128e:	50                   	push   %eax
c003128f:	e8 38 f8 ff ff       	call   c0030acc <printk>
c0031294:	83 c4 20             	add    $0x20,%esp
c0031297:	b8 01 00 00 00       	mov    $0x1,%eax
c003129c:	82                   	nemu_trap 
c003129d:	8d 83 c0 c5 ff ff    	lea    -0x3a40(%ebx),%eax
c00312a3:	50                   	push   %eax
c00312a4:	6a 2f                	push   $0x2f
c00312a6:	8d 83 ef c3 ff ff    	lea    -0x3c11(%ebx),%eax
c00312ac:	50                   	push   %eax
c00312ad:	8d 83 a8 c4 ff ff    	lea    -0x3b58(%ebx),%eax
c00312b3:	50                   	push   %eax
c00312b4:	e8 13 f8 ff ff       	call   c0030acc <printk>
c00312b9:	83 c4 10             	add    $0x10,%esp
c00312bc:	b8 01 00 00 00       	mov    $0x1,%eax
c00312c1:	82                   	nemu_trap 
c00312c2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00312c7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312ca:	c9                   	leave  
c00312cb:	c3                   	ret    

c00312cc <fs_write>:
c00312cc:	55                   	push   %ebp
c00312cd:	89 e5                	mov    %esp,%ebp
c00312cf:	53                   	push   %ebx
c00312d0:	83 ec 04             	sub    $0x4,%esp
c00312d3:	e8 aa ee ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00312d8:	05 28 bd 00 00       	add    $0xbd28,%eax
c00312dd:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00312e1:	7e 31                	jle    c0031314 <fs_write+0x48>
c00312e3:	83 ec 0c             	sub    $0xc,%esp
c00312e6:	8d 90 fe c4 ff ff    	lea    -0x3b02(%eax),%edx
c00312ec:	52                   	push   %edx
c00312ed:	8d 90 c8 c5 ff ff    	lea    -0x3a38(%eax),%edx
c00312f3:	52                   	push   %edx
c00312f4:	6a 35                	push   $0x35
c00312f6:	8d 90 ef c3 ff ff    	lea    -0x3c11(%eax),%edx
c00312fc:	52                   	push   %edx
c00312fd:	8d 90 5c c4 ff ff    	lea    -0x3ba4(%eax),%edx
c0031303:	52                   	push   %edx
c0031304:	89 c3                	mov    %eax,%ebx
c0031306:	e8 c1 f7 ff ff       	call   c0030acc <printk>
c003130b:	83 c4 20             	add    $0x20,%esp
c003130e:	b8 01 00 00 00       	mov    $0x1,%eax
c0031313:	82                   	nemu_trap 
c0031314:	b8 04 00 00 00       	mov    $0x4,%eax
c0031319:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003131c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003131f:	8b 55 10             	mov    0x10(%ebp),%edx
c0031322:	82                   	nemu_trap 
c0031323:	89 45 10             	mov    %eax,0x10(%ebp)
c0031326:	8b 45 10             	mov    0x10(%ebp),%eax
c0031329:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003132c:	c9                   	leave  
c003132d:	c3                   	ret    

c003132e <fs_lseek>:
c003132e:	55                   	push   %ebp
c003132f:	89 e5                	mov    %esp,%ebp
c0031331:	53                   	push   %ebx
c0031332:	83 ec 04             	sub    $0x4,%esp
c0031335:	e8 48 ee ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003133a:	05 c6 bc 00 00       	add    $0xbcc6,%eax
c003133f:	8d 90 d4 c5 ff ff    	lea    -0x3a2c(%eax),%edx
c0031345:	52                   	push   %edx
c0031346:	6a 48                	push   $0x48
c0031348:	8d 90 ef c3 ff ff    	lea    -0x3c11(%eax),%edx
c003134e:	52                   	push   %edx
c003134f:	8d 90 08 c5 ff ff    	lea    -0x3af8(%eax),%edx
c0031355:	52                   	push   %edx
c0031356:	89 c3                	mov    %eax,%ebx
c0031358:	e8 6f f7 ff ff       	call   c0030acc <printk>
c003135d:	83 c4 10             	add    $0x10,%esp
c0031360:	b8 01 00 00 00       	mov    $0x1,%eax
c0031365:	82                   	nemu_trap 
c0031366:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c003136b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003136e:	c9                   	leave  
c003136f:	c3                   	ret    

c0031370 <fs_close>:
c0031370:	55                   	push   %ebp
c0031371:	89 e5                	mov    %esp,%ebp
c0031373:	53                   	push   %ebx
c0031374:	83 ec 04             	sub    $0x4,%esp
c0031377:	e8 06 ee ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003137c:	05 84 bc 00 00       	add    $0xbc84,%eax
c0031381:	8d 90 e0 c5 ff ff    	lea    -0x3a20(%eax),%edx
c0031387:	52                   	push   %edx
c0031388:	6a 4e                	push   $0x4e
c003138a:	8d 90 ef c3 ff ff    	lea    -0x3c11(%eax),%edx
c0031390:	52                   	push   %edx
c0031391:	8d 90 60 c5 ff ff    	lea    -0x3aa0(%eax),%edx
c0031397:	52                   	push   %edx
c0031398:	89 c3                	mov    %eax,%ebx
c003139a:	e8 2d f7 ff ff       	call   c0030acc <printk>
c003139f:	83 c4 10             	add    $0x10,%esp
c00313a2:	b8 01 00 00 00       	mov    $0x1,%eax
c00313a7:	82                   	nemu_trap 
c00313a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00313ad:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00313b0:	c9                   	leave  
c00313b1:	c3                   	ret    

c00313b2 <sti>:
c00313b2:	55                   	push   %ebp
c00313b3:	89 e5                	mov    %esp,%ebp
c00313b5:	e8 c8 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00313ba:	05 46 bc 00 00       	add    $0xbc46,%eax
c00313bf:	fb                   	sti    
c00313c0:	90                   	nop
c00313c1:	5d                   	pop    %ebp
c00313c2:	c3                   	ret    

c00313c3 <cli>:
c00313c3:	55                   	push   %ebp
c00313c4:	89 e5                	mov    %esp,%ebp
c00313c6:	e8 b7 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00313cb:	05 35 bc 00 00       	add    $0xbc35,%eax
c00313d0:	fa                   	cli    
c00313d1:	90                   	nop
c00313d2:	5d                   	pop    %ebp
c00313d3:	c3                   	ret    

c00313d4 <sys_brk>:
c00313d4:	55                   	push   %ebp
c00313d5:	89 e5                	mov    %esp,%ebp
c00313d7:	53                   	push   %ebx
c00313d8:	83 ec 04             	sub    $0x4,%esp
c00313db:	e8 a2 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00313e0:	05 20 bc 00 00       	add    $0xbc20,%eax
c00313e5:	8b 55 08             	mov    0x8(%ebp),%edx
c00313e8:	8b 52 10             	mov    0x10(%edx),%edx
c00313eb:	83 ec 0c             	sub    $0xc,%esp
c00313ee:	52                   	push   %edx
c00313ef:	89 c3                	mov    %eax,%ebx
c00313f1:	e8 67 02 00 00       	call   c003165d <mm_brk>
c00313f6:	83 c4 10             	add    $0x10,%esp
c00313f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00313fc:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c0031403:	90                   	nop
c0031404:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031407:	c9                   	leave  
c0031408:	c3                   	ret    

c0031409 <sys_open>:
c0031409:	55                   	push   %ebp
c003140a:	89 e5                	mov    %esp,%ebp
c003140c:	53                   	push   %ebx
c003140d:	83 ec 04             	sub    $0x4,%esp
c0031410:	e8 6d ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031415:	05 eb bb 00 00       	add    $0xbbeb,%eax
c003141a:	8b 55 08             	mov    0x8(%ebp),%edx
c003141d:	8b 52 18             	mov    0x18(%edx),%edx
c0031420:	89 d1                	mov    %edx,%ecx
c0031422:	8b 55 08             	mov    0x8(%ebp),%edx
c0031425:	8b 52 10             	mov    0x10(%edx),%edx
c0031428:	83 ec 08             	sub    $0x8,%esp
c003142b:	51                   	push   %ecx
c003142c:	52                   	push   %edx
c003142d:	89 c3                	mov    %eax,%ebx
c003142f:	e8 e0 fd ff ff       	call   c0031214 <fs_open>
c0031434:	83 c4 10             	add    $0x10,%esp
c0031437:	89 c2                	mov    %eax,%edx
c0031439:	8b 45 08             	mov    0x8(%ebp),%eax
c003143c:	89 50 1c             	mov    %edx,0x1c(%eax)
c003143f:	90                   	nop
c0031440:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031443:	c9                   	leave  
c0031444:	c3                   	ret    

c0031445 <sys_read>:
c0031445:	55                   	push   %ebp
c0031446:	89 e5                	mov    %esp,%ebp
c0031448:	53                   	push   %ebx
c0031449:	83 ec 04             	sub    $0x4,%esp
c003144c:	e8 31 ed ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031451:	05 af bb 00 00       	add    $0xbbaf,%eax
c0031456:	8b 55 08             	mov    0x8(%ebp),%edx
c0031459:	8b 52 14             	mov    0x14(%edx),%edx
c003145c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003145f:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031462:	89 cb                	mov    %ecx,%ebx
c0031464:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031467:	8b 49 10             	mov    0x10(%ecx),%ecx
c003146a:	83 ec 04             	sub    $0x4,%esp
c003146d:	52                   	push   %edx
c003146e:	53                   	push   %ebx
c003146f:	51                   	push   %ecx
c0031470:	89 c3                	mov    %eax,%ebx
c0031472:	e8 df fd ff ff       	call   c0031256 <fs_read>
c0031477:	83 c4 10             	add    $0x10,%esp
c003147a:	89 c2                	mov    %eax,%edx
c003147c:	8b 45 08             	mov    0x8(%ebp),%eax
c003147f:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031482:	90                   	nop
c0031483:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031486:	c9                   	leave  
c0031487:	c3                   	ret    

c0031488 <sys_write>:
c0031488:	55                   	push   %ebp
c0031489:	89 e5                	mov    %esp,%ebp
c003148b:	53                   	push   %ebx
c003148c:	83 ec 04             	sub    $0x4,%esp
c003148f:	e8 ee ec ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031494:	05 6c bb 00 00       	add    $0xbb6c,%eax
c0031499:	8b 55 08             	mov    0x8(%ebp),%edx
c003149c:	8b 52 14             	mov    0x14(%edx),%edx
c003149f:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314a2:	8b 49 18             	mov    0x18(%ecx),%ecx
c00314a5:	89 cb                	mov    %ecx,%ebx
c00314a7:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314aa:	8b 49 10             	mov    0x10(%ecx),%ecx
c00314ad:	83 ec 04             	sub    $0x4,%esp
c00314b0:	52                   	push   %edx
c00314b1:	53                   	push   %ebx
c00314b2:	51                   	push   %ecx
c00314b3:	89 c3                	mov    %eax,%ebx
c00314b5:	e8 12 fe ff ff       	call   c00312cc <fs_write>
c00314ba:	83 c4 10             	add    $0x10,%esp
c00314bd:	89 c2                	mov    %eax,%edx
c00314bf:	8b 45 08             	mov    0x8(%ebp),%eax
c00314c2:	89 50 1c             	mov    %edx,0x1c(%eax)
c00314c5:	90                   	nop
c00314c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00314c9:	c9                   	leave  
c00314ca:	c3                   	ret    

c00314cb <sys_lseek>:
c00314cb:	55                   	push   %ebp
c00314cc:	89 e5                	mov    %esp,%ebp
c00314ce:	53                   	push   %ebx
c00314cf:	83 ec 04             	sub    $0x4,%esp
c00314d2:	e8 ab ec ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00314d7:	05 29 bb 00 00       	add    $0xbb29,%eax
c00314dc:	8b 55 08             	mov    0x8(%ebp),%edx
c00314df:	8b 52 14             	mov    0x14(%edx),%edx
c00314e2:	89 d3                	mov    %edx,%ebx
c00314e4:	8b 55 08             	mov    0x8(%ebp),%edx
c00314e7:	8b 52 18             	mov    0x18(%edx),%edx
c00314ea:	89 d1                	mov    %edx,%ecx
c00314ec:	8b 55 08             	mov    0x8(%ebp),%edx
c00314ef:	8b 52 10             	mov    0x10(%edx),%edx
c00314f2:	83 ec 04             	sub    $0x4,%esp
c00314f5:	53                   	push   %ebx
c00314f6:	51                   	push   %ecx
c00314f7:	52                   	push   %edx
c00314f8:	89 c3                	mov    %eax,%ebx
c00314fa:	e8 2f fe ff ff       	call   c003132e <fs_lseek>
c00314ff:	83 c4 10             	add    $0x10,%esp
c0031502:	89 c2                	mov    %eax,%edx
c0031504:	8b 45 08             	mov    0x8(%ebp),%eax
c0031507:	89 50 1c             	mov    %edx,0x1c(%eax)
c003150a:	90                   	nop
c003150b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003150e:	c9                   	leave  
c003150f:	c3                   	ret    

c0031510 <sys_close>:
c0031510:	55                   	push   %ebp
c0031511:	89 e5                	mov    %esp,%ebp
c0031513:	53                   	push   %ebx
c0031514:	83 ec 04             	sub    $0x4,%esp
c0031517:	e8 66 ec ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003151c:	05 e4 ba 00 00       	add    $0xbae4,%eax
c0031521:	8b 55 08             	mov    0x8(%ebp),%edx
c0031524:	8b 52 10             	mov    0x10(%edx),%edx
c0031527:	83 ec 0c             	sub    $0xc,%esp
c003152a:	52                   	push   %edx
c003152b:	89 c3                	mov    %eax,%ebx
c003152d:	e8 3e fe ff ff       	call   c0031370 <fs_close>
c0031532:	83 c4 10             	add    $0x10,%esp
c0031535:	89 c2                	mov    %eax,%edx
c0031537:	8b 45 08             	mov    0x8(%ebp),%eax
c003153a:	89 50 1c             	mov    %edx,0x1c(%eax)
c003153d:	90                   	nop
c003153e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031541:	c9                   	leave  
c0031542:	c3                   	ret    

c0031543 <do_syscall>:
c0031543:	55                   	push   %ebp
c0031544:	89 e5                	mov    %esp,%ebp
c0031546:	53                   	push   %ebx
c0031547:	83 ec 04             	sub    $0x4,%esp
c003154a:	e8 37 ec ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c003154f:	81 c3 b1 ba 00 00    	add    $0xbab1,%ebx
c0031555:	8b 45 08             	mov    0x8(%ebp),%eax
c0031558:	8b 40 1c             	mov    0x1c(%eax),%eax
c003155b:	83 f8 2d             	cmp    $0x2d,%eax
c003155e:	0f 87 98 00 00 00    	ja     c00315fc <.L10>
c0031564:	c1 e0 02             	shl    $0x2,%eax
c0031567:	8b 84 18 5c c6 ff ff 	mov    -0x39a4(%eax,%ebx,1),%eax
c003156e:	01 d8                	add    %ebx,%eax
c0031570:	ff e0                	jmp    *%eax

c0031572 <.L18>:
c0031572:	e8 4c fe ff ff       	call   c00313c3 <cli>
c0031577:	8b 45 08             	mov    0x8(%ebp),%eax
c003157a:	8b 40 18             	mov    0x18(%eax),%eax
c003157d:	89 c2                	mov    %eax,%edx
c003157f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031582:	8b 40 10             	mov    0x10(%eax),%eax
c0031585:	83 ec 08             	sub    $0x8,%esp
c0031588:	52                   	push   %edx
c0031589:	50                   	push   %eax
c003158a:	e8 91 f5 ff ff       	call   c0030b20 <add_irq_handle>
c003158f:	83 c4 10             	add    $0x10,%esp
c0031592:	e8 1b fe ff ff       	call   c00313b2 <sti>
c0031597:	e9 8f 00 00 00       	jmp    c003162b <.L10+0x2f>

c003159c <.L11>:
c003159c:	83 ec 0c             	sub    $0xc,%esp
c003159f:	ff 75 08             	pushl  0x8(%ebp)
c00315a2:	e8 2d fe ff ff       	call   c00313d4 <sys_brk>
c00315a7:	83 c4 10             	add    $0x10,%esp
c00315aa:	eb 7f                	jmp    c003162b <.L10+0x2f>

c00315ac <.L15>:
c00315ac:	83 ec 0c             	sub    $0xc,%esp
c00315af:	ff 75 08             	pushl  0x8(%ebp)
c00315b2:	e8 52 fe ff ff       	call   c0031409 <sys_open>
c00315b7:	83 c4 10             	add    $0x10,%esp
c00315ba:	eb 6f                	jmp    c003162b <.L10+0x2f>

c00315bc <.L17>:
c00315bc:	83 ec 0c             	sub    $0xc,%esp
c00315bf:	ff 75 08             	pushl  0x8(%ebp)
c00315c2:	e8 7e fe ff ff       	call   c0031445 <sys_read>
c00315c7:	83 c4 10             	add    $0x10,%esp
c00315ca:	eb 5f                	jmp    c003162b <.L10+0x2f>

c00315cc <.L16>:
c00315cc:	83 ec 0c             	sub    $0xc,%esp
c00315cf:	ff 75 08             	pushl  0x8(%ebp)
c00315d2:	e8 b1 fe ff ff       	call   c0031488 <sys_write>
c00315d7:	83 c4 10             	add    $0x10,%esp
c00315da:	eb 4f                	jmp    c003162b <.L10+0x2f>

c00315dc <.L13>:
c00315dc:	83 ec 0c             	sub    $0xc,%esp
c00315df:	ff 75 08             	pushl  0x8(%ebp)
c00315e2:	e8 e4 fe ff ff       	call   c00314cb <sys_lseek>
c00315e7:	83 c4 10             	add    $0x10,%esp
c00315ea:	eb 3f                	jmp    c003162b <.L10+0x2f>

c00315ec <.L14>:
c00315ec:	83 ec 0c             	sub    $0xc,%esp
c00315ef:	ff 75 08             	pushl  0x8(%ebp)
c00315f2:	e8 19 ff ff ff       	call   c0031510 <sys_close>
c00315f7:	83 c4 10             	add    $0x10,%esp
c00315fa:	eb 2f                	jmp    c003162b <.L10+0x2f>

c00315fc <.L10>:
c00315fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00315ff:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031602:	83 ec 0c             	sub    $0xc,%esp
c0031605:	50                   	push   %eax
c0031606:	8d 83 14 c7 ff ff    	lea    -0x38ec(%ebx),%eax
c003160c:	50                   	push   %eax
c003160d:	6a 4a                	push   $0x4a
c003160f:	8d 83 ec c5 ff ff    	lea    -0x3a14(%ebx),%eax
c0031615:	50                   	push   %eax
c0031616:	8d 83 08 c6 ff ff    	lea    -0x39f8(%ebx),%eax
c003161c:	50                   	push   %eax
c003161d:	e8 aa f4 ff ff       	call   c0030acc <printk>
c0031622:	83 c4 20             	add    $0x20,%esp
c0031625:	b8 01 00 00 00       	mov    $0x1,%eax
c003162a:	82                   	nemu_trap 
c003162b:	90                   	nop
c003162c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003162f:	c9                   	leave  
c0031630:	c3                   	ret    

c0031631 <get_updir>:
c0031631:	55                   	push   %ebp
c0031632:	89 e5                	mov    %esp,%ebp
c0031634:	e8 49 eb ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031639:	05 c7 b9 00 00       	add    $0xb9c7,%eax
c003163e:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031644:	5d                   	pop    %ebp
c0031645:	c3                   	ret    

c0031646 <get_ucr3>:
c0031646:	55                   	push   %ebp
c0031647:	89 e5                	mov    %esp,%ebp
c0031649:	e8 34 eb ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003164e:	05 b2 b9 00 00       	add    $0xb9b2,%eax
c0031653:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031659:	8b 00                	mov    (%eax),%eax
c003165b:	5d                   	pop    %ebp
c003165c:	c3                   	ret    

c003165d <mm_brk>:
c003165d:	55                   	push   %ebp
c003165e:	89 e5                	mov    %esp,%ebp
c0031660:	53                   	push   %ebx
c0031661:	83 ec 04             	sub    $0x4,%esp
c0031664:	e8 1d eb ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0031669:	81 c3 97 b9 00 00    	add    $0xb997,%ebx
c003166f:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c0031675:	39 45 08             	cmp    %eax,0x8(%ebp)
c0031678:	76 22                	jbe    c003169c <mm_brk+0x3f>
c003167a:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c0031680:	8b 55 08             	mov    0x8(%ebp),%edx
c0031683:	29 c2                	sub    %eax,%edx
c0031685:	89 d0                	mov    %edx,%eax
c0031687:	89 c2                	mov    %eax,%edx
c0031689:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c003168f:	83 ec 08             	sub    $0x8,%esp
c0031692:	52                   	push   %edx
c0031693:	50                   	push   %eax
c0031694:	e8 a7 04 00 00       	call   c0031b40 <mm_malloc>
c0031699:	83 c4 10             	add    $0x10,%esp
c003169c:	8b 45 08             	mov    0x8(%ebp),%eax
c003169f:	89 83 88 1e 01 00    	mov    %eax,0x11e88(%ebx)
c00316a5:	90                   	nop
c00316a6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00316a9:	c9                   	leave  
c00316aa:	c3                   	ret    

c00316ab <init_mm>:
c00316ab:	55                   	push   %ebp
c00316ac:	89 e5                	mov    %esp,%ebp
c00316ae:	53                   	push   %ebx
c00316af:	83 ec 14             	sub    $0x14,%esp
c00316b2:	e8 cf ea ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c00316b7:	81 c3 49 b9 00 00    	add    $0xb949,%ebx
c00316bd:	e8 10 02 00 00       	call   c00318d2 <get_kpdir>
c00316c2:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00316c5:	83 ec 04             	sub    $0x4,%esp
c00316c8:	68 00 10 00 00       	push   $0x1000
c00316cd:	6a 00                	push   $0x0
c00316cf:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00316d5:	50                   	push   %eax
c00316d6:	e8 41 07 00 00       	call   c0031e1c <memset>
c00316db:	83 c4 10             	add    $0x10,%esp
c00316de:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00316e1:	05 00 0c 00 00       	add    $0xc00,%eax
c00316e6:	83 ec 04             	sub    $0x4,%esp
c00316e9:	68 80 00 00 00       	push   $0x80
c00316ee:	50                   	push   %eax
c00316ef:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00316f5:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c00316fb:	50                   	push   %eax
c00316fc:	e8 d3 06 00 00       	call   c0031dd4 <memcpy>
c0031701:	83 c4 10             	add    $0x10,%esp
c0031704:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003170a:	05 00 00 00 40       	add    $0x40000000,%eax
c003170f:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0031714:	89 c2                	mov    %eax,%edx
c0031716:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c003171c:	89 10                	mov    %edx,(%eax)
c003171e:	90                   	nop
c003171f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031722:	c9                   	leave  
c0031723:	c3                   	ret    

c0031724 <create_video_mapping>:
c0031724:	55                   	push   %ebp
c0031725:	89 e5                	mov    %esp,%ebp
c0031727:	53                   	push   %ebx
c0031728:	83 ec 04             	sub    $0x4,%esp
c003172b:	e8 52 ea ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031730:	05 d0 b8 00 00       	add    $0xb8d0,%eax
c0031735:	8d 90 d8 c7 ff ff    	lea    -0x3828(%eax),%edx
c003173b:	52                   	push   %edx
c003173c:	6a 14                	push   $0x14
c003173e:	8d 90 20 c7 ff ff    	lea    -0x38e0(%eax),%edx
c0031744:	52                   	push   %edx
c0031745:	8d 90 34 c7 ff ff    	lea    -0x38cc(%eax),%edx
c003174b:	52                   	push   %edx
c003174c:	89 c3                	mov    %eax,%ebx
c003174e:	e8 79 f3 ff ff       	call   c0030acc <printk>
c0031753:	83 c4 10             	add    $0x10,%esp
c0031756:	b8 01 00 00 00       	mov    $0x1,%eax
c003175b:	82                   	nemu_trap 
c003175c:	90                   	nop
c003175d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031760:	c9                   	leave  
c0031761:	c3                   	ret    

c0031762 <video_mapping_write_test>:
c0031762:	55                   	push   %ebp
c0031763:	89 e5                	mov    %esp,%ebp
c0031765:	83 ec 10             	sub    $0x10,%esp
c0031768:	e8 15 ea ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003176d:	05 93 b8 00 00       	add    $0xb893,%eax
c0031772:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c0031779:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0031780:	eb 17                	jmp    c0031799 <video_mapping_write_test+0x37>
c0031782:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031785:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003178c:	8b 45 f8             	mov    -0x8(%ebp),%eax
c003178f:	01 c2                	add    %eax,%edx
c0031791:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031794:	89 02                	mov    %eax,(%edx)
c0031796:	ff 45 fc             	incl   -0x4(%ebp)
c0031799:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c00317a0:	7e e0                	jle    c0031782 <video_mapping_write_test+0x20>
c00317a2:	90                   	nop
c00317a3:	c9                   	leave  
c00317a4:	c3                   	ret    

c00317a5 <video_mapping_read_test>:
c00317a5:	55                   	push   %ebp
c00317a6:	89 e5                	mov    %esp,%ebp
c00317a8:	53                   	push   %ebx
c00317a9:	83 ec 14             	sub    $0x14,%esp
c00317ac:	e8 d5 e9 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c00317b1:	81 c3 4f b8 00 00    	add    $0xb84f,%ebx
c00317b7:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c00317be:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00317c5:	eb 4a                	jmp    c0031811 <video_mapping_read_test+0x6c>
c00317c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317ca:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00317d1:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00317d4:	01 d0                	add    %edx,%eax
c00317d6:	8b 10                	mov    (%eax),%edx
c00317d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317db:	39 c2                	cmp    %eax,%edx
c00317dd:	74 2f                	je     c003180e <video_mapping_read_test+0x69>
c00317df:	83 ec 0c             	sub    $0xc,%esp
c00317e2:	8d 83 7d c7 ff ff    	lea    -0x3883(%ebx),%eax
c00317e8:	50                   	push   %eax
c00317e9:	8d 83 f0 c7 ff ff    	lea    -0x3810(%ebx),%eax
c00317ef:	50                   	push   %eax
c00317f0:	6a 27                	push   $0x27
c00317f2:	8d 83 20 c7 ff ff    	lea    -0x38e0(%ebx),%eax
c00317f8:	50                   	push   %eax
c00317f9:	8d 83 8c c7 ff ff    	lea    -0x3874(%ebx),%eax
c00317ff:	50                   	push   %eax
c0031800:	e8 c7 f2 ff ff       	call   c0030acc <printk>
c0031805:	83 c4 20             	add    $0x20,%esp
c0031808:	b8 01 00 00 00       	mov    $0x1,%eax
c003180d:	82                   	nemu_trap 
c003180e:	ff 45 f4             	incl   -0xc(%ebp)
c0031811:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0031818:	7e ad                	jle    c00317c7 <video_mapping_read_test+0x22>
c003181a:	90                   	nop
c003181b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003181e:	c9                   	leave  
c003181f:	c3                   	ret    

c0031820 <video_mapping_clear>:
c0031820:	55                   	push   %ebp
c0031821:	89 e5                	mov    %esp,%ebp
c0031823:	53                   	push   %ebx
c0031824:	83 ec 04             	sub    $0x4,%esp
c0031827:	e8 56 e9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003182c:	05 d4 b7 00 00       	add    $0xb7d4,%eax
c0031831:	83 ec 04             	sub    $0x4,%esp
c0031834:	68 00 fa 00 00       	push   $0xfa00
c0031839:	6a 00                	push   $0x0
c003183b:	68 00 00 0a 00       	push   $0xa0000
c0031840:	89 c3                	mov    %eax,%ebx
c0031842:	e8 d5 05 00 00       	call   c0031e1c <memset>
c0031847:	83 c4 10             	add    $0x10,%esp
c003184a:	90                   	nop
c003184b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003184e:	c9                   	leave  
c003184f:	c3                   	ret    

c0031850 <read_cr0>:
c0031850:	55                   	push   %ebp
c0031851:	89 e5                	mov    %esp,%ebp
c0031853:	83 ec 10             	sub    $0x10,%esp
c0031856:	e8 27 e9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003185b:	05 a5 b7 00 00       	add    $0xb7a5,%eax
c0031860:	0f 20 c0             	mov    %cr0,%eax
c0031863:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031866:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031869:	c9                   	leave  
c003186a:	c3                   	ret    

c003186b <write_cr0>:
c003186b:	55                   	push   %ebp
c003186c:	89 e5                	mov    %esp,%ebp
c003186e:	e8 0f e9 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031873:	05 8d b7 00 00       	add    $0xb78d,%eax
c0031878:	8b 45 08             	mov    0x8(%ebp),%eax
c003187b:	0f 22 c0             	mov    %eax,%cr0
c003187e:	90                   	nop
c003187f:	5d                   	pop    %ebp
c0031880:	c3                   	ret    

c0031881 <write_cr3>:
c0031881:	55                   	push   %ebp
c0031882:	89 e5                	mov    %esp,%ebp
c0031884:	e8 f9 e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031889:	05 77 b7 00 00       	add    $0xb777,%eax
c003188e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031891:	0f 22 d8             	mov    %eax,%cr3
c0031894:	90                   	nop
c0031895:	5d                   	pop    %ebp
c0031896:	c3                   	ret    

c0031897 <write_gdtr>:
c0031897:	55                   	push   %ebp
c0031898:	89 e5                	mov    %esp,%ebp
c003189a:	e8 e3 e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c003189f:	05 61 b7 00 00       	add    $0xb761,%eax
c00318a4:	8b 55 0c             	mov    0xc(%ebp),%edx
c00318a7:	4a                   	dec    %edx
c00318a8:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
c00318af:	8b 55 08             	mov    0x8(%ebp),%edx
c00318b2:	66 89 90 8e 1e 01 00 	mov    %dx,0x11e8e(%eax)
c00318b9:	8b 55 08             	mov    0x8(%ebp),%edx
c00318bc:	c1 ea 10             	shr    $0x10,%edx
c00318bf:	66 89 90 90 1e 01 00 	mov    %dx,0x11e90(%eax)
c00318c6:	8d 80 8c 1e 01 00    	lea    0x11e8c(%eax),%eax
c00318cc:	0f 01 10             	lgdtl  (%eax)
c00318cf:	90                   	nop
c00318d0:	5d                   	pop    %ebp
c00318d1:	c3                   	ret    

c00318d2 <get_kpdir>:
c00318d2:	55                   	push   %ebp
c00318d3:	89 e5                	mov    %esp,%ebp
c00318d5:	e8 a8 e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00318da:	05 26 b7 00 00       	add    $0xb726,%eax
c00318df:	c7 c0 00 40 07 c0    	mov    $0xc0074000,%eax
c00318e5:	5d                   	pop    %ebp
c00318e6:	c3                   	ret    

c00318e7 <init_page>:
c00318e7:	55                   	push   %ebp
c00318e8:	89 e5                	mov    %esp,%ebp
c00318ea:	53                   	push   %ebx
c00318eb:	83 ec 24             	sub    $0x24,%esp
c00318ee:	e8 8f e8 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c00318f3:	05 0d b7 00 00       	add    $0xb70d,%eax
c00318f8:	c7 c2 00 40 07 c0    	mov    $0xc0074000,%edx
c00318fe:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031904:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0031907:	c7 c2 00 50 07 c0    	mov    $0xc0075000,%edx
c003190d:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031913:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0031916:	83 ec 04             	sub    $0x4,%esp
c0031919:	68 00 10 00 00       	push   $0x1000
c003191e:	6a 00                	push   $0x0
c0031920:	ff 75 e4             	pushl  -0x1c(%ebp)
c0031923:	89 c3                	mov    %eax,%ebx
c0031925:	e8 f2 04 00 00       	call   c0031e1c <memset>
c003192a:	83 c4 10             	add    $0x10,%esp
c003192d:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031934:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c003193b:	eb 70                	jmp    c00319ad <init_page+0xc6>
c003193d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031940:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031945:	89 c2                	mov    %eax,%edx
c0031947:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003194a:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031951:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031954:	01 c8                	add    %ecx,%eax
c0031956:	83 ca 07             	or     $0x7,%edx
c0031959:	89 10                	mov    %edx,(%eax)
c003195b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003195e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031963:	89 c2                	mov    %eax,%edx
c0031965:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031968:	05 00 03 00 00       	add    $0x300,%eax
c003196d:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031974:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031977:	01 c8                	add    %ecx,%eax
c0031979:	83 ca 07             	or     $0x7,%edx
c003197c:	89 10                	mov    %edx,(%eax)
c003197e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0031985:	eb 1a                	jmp    c00319a1 <init_page+0xba>
c0031987:	8b 45 e8             	mov    -0x18(%ebp),%eax
c003198a:	c1 e0 0c             	shl    $0xc,%eax
c003198d:	83 c8 07             	or     $0x7,%eax
c0031990:	89 c2                	mov    %eax,%edx
c0031992:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031995:	89 10                	mov    %edx,(%eax)
c0031997:	ff 45 e8             	incl   -0x18(%ebp)
c003199a:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c003199e:	ff 45 ec             	incl   -0x14(%ebp)
c00319a1:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c00319a8:	76 dd                	jbe    c0031987 <init_page+0xa0>
c00319aa:	ff 45 f0             	incl   -0x10(%ebp)
c00319ad:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c00319b1:	76 8a                	jbe    c003193d <init_page+0x56>
c00319b3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00319ba:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00319bd:	c1 e8 0c             	shr    $0xc,%eax
c00319c0:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00319c5:	c1 e0 0c             	shl    $0xc,%eax
c00319c8:	89 c2                	mov    %eax,%edx
c00319ca:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00319cd:	25 ff 0f 00 00       	and    $0xfff,%eax
c00319d2:	09 d0                	or     %edx,%eax
c00319d4:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00319d7:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00319da:	83 ec 0c             	sub    $0xc,%esp
c00319dd:	50                   	push   %eax
c00319de:	e8 9e fe ff ff       	call   c0031881 <write_cr3>
c00319e3:	83 c4 10             	add    $0x10,%esp
c00319e6:	e8 65 fe ff ff       	call   c0031850 <read_cr0>
c00319eb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00319ee:	8a 45 e3             	mov    -0x1d(%ebp),%al
c00319f1:	83 c8 80             	or     $0xffffff80,%eax
c00319f4:	88 45 e3             	mov    %al,-0x1d(%ebp)
c00319f7:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00319fa:	83 ec 0c             	sub    $0xc,%esp
c00319fd:	50                   	push   %eax
c00319fe:	e8 68 fe ff ff       	call   c003186b <write_cr0>
c0031a03:	83 c4 10             	add    $0x10,%esp
c0031a06:	90                   	nop
c0031a07:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a0a:	c9                   	leave  
c0031a0b:	c3                   	ret    

c0031a0c <set_segment>:
c0031a0c:	55                   	push   %ebp
c0031a0d:	89 e5                	mov    %esp,%ebp
c0031a0f:	e8 6e e7 ff ff       	call   c0030182 <__x86.get_pc_thunk.ax>
c0031a14:	05 ec b5 00 00       	add    $0xb5ec,%eax
c0031a19:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a1c:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031a21:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a24:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0031a2a:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a2d:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031a31:	8b 45 10             	mov    0x10(%ebp),%eax
c0031a34:	88 c2                	mov    %al,%dl
c0031a36:	83 e2 0f             	and    $0xf,%edx
c0031a39:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a3c:	88 d1                	mov    %dl,%cl
c0031a3e:	83 e1 0f             	and    $0xf,%ecx
c0031a41:	8a 50 05             	mov    0x5(%eax),%dl
c0031a44:	83 e2 f0             	and    $0xfffffff0,%edx
c0031a47:	09 ca                	or     %ecx,%edx
c0031a49:	88 50 05             	mov    %dl,0x5(%eax)
c0031a4c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a4f:	8a 50 05             	mov    0x5(%eax),%dl
c0031a52:	83 ca 10             	or     $0x10,%edx
c0031a55:	88 50 05             	mov    %dl,0x5(%eax)
c0031a58:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031a5b:	88 c2                	mov    %al,%dl
c0031a5d:	83 e2 03             	and    $0x3,%edx
c0031a60:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a63:	83 e2 03             	and    $0x3,%edx
c0031a66:	88 d1                	mov    %dl,%cl
c0031a68:	c1 e1 05             	shl    $0x5,%ecx
c0031a6b:	8a 50 05             	mov    0x5(%eax),%dl
c0031a6e:	83 e2 9f             	and    $0xffffff9f,%edx
c0031a71:	09 ca                	or     %ecx,%edx
c0031a73:	88 50 05             	mov    %dl,0x5(%eax)
c0031a76:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a79:	8a 50 05             	mov    0x5(%eax),%dl
c0031a7c:	83 ca 80             	or     $0xffffff80,%edx
c0031a7f:	88 50 05             	mov    %dl,0x5(%eax)
c0031a82:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a85:	8a 50 06             	mov    0x6(%eax),%dl
c0031a88:	83 ca 0f             	or     $0xf,%edx
c0031a8b:	88 50 06             	mov    %dl,0x6(%eax)
c0031a8e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a91:	8a 50 06             	mov    0x6(%eax),%dl
c0031a94:	83 e2 ef             	and    $0xffffffef,%edx
c0031a97:	88 50 06             	mov    %dl,0x6(%eax)
c0031a9a:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a9d:	8a 50 06             	mov    0x6(%eax),%dl
c0031aa0:	83 e2 df             	and    $0xffffffdf,%edx
c0031aa3:	88 50 06             	mov    %dl,0x6(%eax)
c0031aa6:	8b 45 08             	mov    0x8(%ebp),%eax
c0031aa9:	8a 50 06             	mov    0x6(%eax),%dl
c0031aac:	83 ca 40             	or     $0x40,%edx
c0031aaf:	88 50 06             	mov    %dl,0x6(%eax)
c0031ab2:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ab5:	8a 50 06             	mov    0x6(%eax),%dl
c0031ab8:	83 ca 80             	or     $0xffffff80,%edx
c0031abb:	88 50 06             	mov    %dl,0x6(%eax)
c0031abe:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ac1:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0031ac5:	90                   	nop
c0031ac6:	5d                   	pop    %ebp
c0031ac7:	c3                   	ret    

c0031ac8 <init_segment>:
c0031ac8:	55                   	push   %ebp
c0031ac9:	89 e5                	mov    %esp,%ebp
c0031acb:	53                   	push   %ebx
c0031acc:	83 ec 04             	sub    $0x4,%esp
c0031acf:	e8 b2 e6 ff ff       	call   c0030186 <__x86.get_pc_thunk.bx>
c0031ad4:	81 c3 2c b5 00 00    	add    $0xb52c,%ebx
c0031ada:	83 ec 04             	sub    $0x4,%esp
c0031add:	6a 18                	push   $0x18
c0031adf:	6a 00                	push   $0x0
c0031ae1:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031ae7:	50                   	push   %eax
c0031ae8:	e8 2f 03 00 00       	call   c0031e1c <memset>
c0031aed:	83 c4 10             	add    $0x10,%esp
c0031af0:	83 ec 04             	sub    $0x4,%esp
c0031af3:	6a 0a                	push   $0xa
c0031af5:	6a 00                	push   $0x0
c0031af7:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031afd:	8d 40 08             	lea    0x8(%eax),%eax
c0031b00:	50                   	push   %eax
c0031b01:	e8 06 ff ff ff       	call   c0031a0c <set_segment>
c0031b06:	83 c4 10             	add    $0x10,%esp
c0031b09:	83 ec 04             	sub    $0x4,%esp
c0031b0c:	6a 02                	push   $0x2
c0031b0e:	6a 00                	push   $0x0
c0031b10:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b16:	8d 40 10             	lea    0x10(%eax),%eax
c0031b19:	50                   	push   %eax
c0031b1a:	e8 ed fe ff ff       	call   c0031a0c <set_segment>
c0031b1f:	83 c4 10             	add    $0x10,%esp
c0031b22:	83 ec 08             	sub    $0x8,%esp
c0031b25:	6a 18                	push   $0x18
c0031b27:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b2d:	50                   	push   %eax
c0031b2e:	e8 64 fd ff ff       	call   c0031897 <write_gdtr>
c0031b33:	83 c4 10             	add    $0x10,%esp
c0031b36:	90                   	nop
c0031b37:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b3a:	c9                   	leave  
c0031b3b:	c3                   	ret    
c0031b3c:	66 90                	xchg   %ax,%ax
c0031b3e:	66 90                	xchg   %ax,%ax

c0031b40 <mm_malloc>:
c0031b40:	55                   	push   %ebp
c0031b41:	31 c0                	xor    %eax,%eax
c0031b43:	89 e5                	mov    %esp,%ebp
c0031b45:	57                   	push   %edi
c0031b46:	56                   	push   %esi
c0031b47:	53                   	push   %ebx
c0031b48:	83 ec 3c             	sub    $0x3c,%esp
c0031b4b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031b4e:	85 db                	test   %ebx,%ebx
c0031b50:	0f 8e 36 02 00 00    	jle    c0031d8c <mm_malloc+0x24c>
c0031b56:	e8 d6 fa ff ff       	call   c0031631 <get_updir>
c0031b5b:	89 c6                	mov    %eax,%esi
c0031b5d:	e8 e4 fa ff ff       	call   c0031646 <get_ucr3>
c0031b62:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b65:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031b69:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031b6c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031b6f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031b74:	29 d0                	sub    %edx,%eax
c0031b76:	89 da                	mov    %ebx,%edx
c0031b78:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031b7e:	01 d0                	add    %edx,%eax
c0031b80:	85 c0                	test   %eax,%eax
c0031b82:	0f 8e c0 00 00 00    	jle    c0031c48 <mm_malloc+0x108>
c0031b88:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b8b:	83 e8 01             	sub    $0x1,%eax
c0031b8e:	89 f7                	mov    %esi,%edi
c0031b90:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031b95:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031b9c:	89 d3                	mov    %edx,%ebx
c0031b9e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031ba1:	eb 51                	jmp    c0031bf4 <mm_malloc+0xb4>
c0031ba3:	90                   	nop
c0031ba4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031ba8:	8b 31                	mov    (%ecx),%esi
c0031baa:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031bb0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031bb6:	89 d8                	mov    %ebx,%eax
c0031bb8:	c1 e8 0a             	shr    $0xa,%eax
c0031bbb:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031bc0:	01 c6                	add    %eax,%esi
c0031bc2:	f6 06 01             	testb  $0x1,(%esi)
c0031bc5:	75 22                	jne    c0031be9 <mm_malloc+0xa9>
c0031bc7:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031bcc:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031bd1:	0f 8f c1 01 00 00    	jg     c0031d98 <mm_malloc+0x258>
c0031bd7:	89 c1                	mov    %eax,%ecx
c0031bd9:	83 c0 01             	add    $0x1,%eax
c0031bdc:	c1 e1 0c             	shl    $0xc,%ecx
c0031bdf:	83 c9 07             	or     $0x7,%ecx
c0031be2:	89 0e                	mov    %ecx,(%esi)
c0031be4:	a3 20 d0 03 c0       	mov    %eax,0xc003d020
c0031be9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031bef:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031bf2:	74 54                	je     c0031c48 <mm_malloc+0x108>
c0031bf4:	89 d8                	mov    %ebx,%eax
c0031bf6:	c1 e8 16             	shr    $0x16,%eax
c0031bf9:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031bfc:	f6 01 01             	testb  $0x1,(%ecx)
c0031bff:	75 a7                	jne    c0031ba8 <mm_malloc+0x68>
c0031c01:	a1 00 f0 04 c0       	mov    0xc004f000,%eax
c0031c06:	89 c6                	mov    %eax,%esi
c0031c08:	83 c0 01             	add    $0x1,%eax
c0031c0b:	c1 e6 0c             	shl    $0xc,%esi
c0031c0e:	81 c6 00 00 05 c0    	add    $0xc0050000,%esi
c0031c14:	a3 00 f0 04 c0       	mov    %eax,0xc004f000
c0031c19:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031c1f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c24:	83 c8 07             	or     $0x7,%eax
c0031c27:	89 01                	mov    %eax,(%ecx)
c0031c29:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031c30:	00 
c0031c31:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031c38:	00 
c0031c39:	89 34 24             	mov    %esi,(%esp)
c0031c3c:	e8 db 01 00 00       	call   c0031e1c <memset>
c0031c41:	e9 70 ff ff ff       	jmp    c0031bb6 <mm_malloc+0x76>
c0031c46:	66 90                	xchg   %ax,%ax
c0031c48:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031c4b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031c4e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031c54:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031c5a:	c1 e8 16             	shr    $0x16,%eax
c0031c5d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031c60:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031c66:	75 32                	jne    c0031c9a <mm_malloc+0x15a>
c0031c68:	c7 44 24 10 2c 98 03 	movl   $0xc003982c,0x10(%esp)
c0031c6f:	c0 
c0031c70:	c7 44 24 0c 92 98 03 	movl   $0xc0039892,0xc(%esp)
c0031c77:	c0 
c0031c78:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031c7f:	00 
c0031c80:	c7 44 24 04 1b 98 03 	movl   $0xc003981b,0x4(%esp)
c0031c87:	c0 
c0031c88:	c7 04 24 3c 98 03 c0 	movl   $0xc003983c,(%esp)
c0031c8f:	e8 38 ee ff ff       	call   c0030acc <printk>
c0031c94:	b8 01 00 00 00       	mov    $0x1,%eax
c0031c99:	82                   	nemu_trap 
c0031c9a:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0031c9d:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c0031ca3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031ca8:	c1 ea 0c             	shr    $0xc,%edx
c0031cab:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031cb1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c0031cb5:	75 32                	jne    c0031ce9 <mm_malloc+0x1a9>
c0031cb7:	c7 44 24 10 34 98 03 	movl   $0xc0039834,0x10(%esp)
c0031cbe:	c0 
c0031cbf:	c7 44 24 0c 92 98 03 	movl   $0xc0039892,0xc(%esp)
c0031cc6:	c0 
c0031cc7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031cce:	00 
c0031ccf:	c7 44 24 04 1b 98 03 	movl   $0xc003981b,0x4(%esp)
c0031cd6:	c0 
c0031cd7:	c7 04 24 3c 98 03 c0 	movl   $0xc003983c,(%esp)
c0031cde:	e8 e9 ed ff ff       	call   c0030acc <printk>
c0031ce3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031ce8:	82                   	nemu_trap 
c0031ce9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031cec:	c1 e8 16             	shr    $0x16,%eax
c0031cef:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031cf2:	f6 c3 01             	test   $0x1,%bl
c0031cf5:	75 32                	jne    c0031d29 <mm_malloc+0x1e9>
c0031cf7:	c7 44 24 10 2c 98 03 	movl   $0xc003982c,0x10(%esp)
c0031cfe:	c0 
c0031cff:	c7 44 24 0c 92 98 03 	movl   $0xc0039892,0xc(%esp)
c0031d06:	c0 
c0031d07:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031d0e:	00 
c0031d0f:	c7 44 24 04 1b 98 03 	movl   $0xc003981b,0x4(%esp)
c0031d16:	c0 
c0031d17:	c7 04 24 3c 98 03 c0 	movl   $0xc003983c,(%esp)
c0031d1e:	e8 a9 ed ff ff       	call   c0030acc <printk>
c0031d23:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d28:	82                   	nemu_trap 
c0031d29:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d2c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
c0031d32:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d37:	c1 ea 0c             	shr    $0xc,%edx
c0031d3a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031d40:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
c0031d43:	f6 c3 01             	test   $0x1,%bl
c0031d46:	75 32                	jne    c0031d7a <mm_malloc+0x23a>
c0031d48:	c7 44 24 10 34 98 03 	movl   $0xc0039834,0x10(%esp)
c0031d4f:	c0 
c0031d50:	c7 44 24 0c 92 98 03 	movl   $0xc0039892,0xc(%esp)
c0031d57:	c0 
c0031d58:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d5f:	00 
c0031d60:	c7 44 24 04 1b 98 03 	movl   $0xc003981b,0x4(%esp)
c0031d67:	c0 
c0031d68:	c7 04 24 3c 98 03 c0 	movl   $0xc003983c,(%esp)
c0031d6f:	e8 58 ed ff ff       	call   c0030acc <printk>
c0031d74:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d79:	82                   	nemu_trap 
c0031d7a:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d7d:	89 d8                	mov    %ebx,%eax
c0031d7f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d84:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c0031d8a:	09 d0                	or     %edx,%eax
c0031d8c:	83 c4 3c             	add    $0x3c,%esp
c0031d8f:	5b                   	pop    %ebx
c0031d90:	5e                   	pop    %esi
c0031d91:	5f                   	pop    %edi
c0031d92:	5d                   	pop    %ebp
c0031d93:	c3                   	ret    
c0031d94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031d98:	c7 44 24 10 08 98 03 	movl   $0xc0039808,0x10(%esp)
c0031d9f:	c0 
c0031da0:	c7 44 24 0c 88 98 03 	movl   $0xc0039888,0xc(%esp)
c0031da7:	c0 
c0031da8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031daf:	00 
c0031db0:	c7 44 24 04 1b 98 03 	movl   $0xc003981b,0x4(%esp)
c0031db7:	c0 
c0031db8:	c7 04 24 3c 98 03 c0 	movl   $0xc003983c,(%esp)
c0031dbf:	e8 08 ed ff ff       	call   c0030acc <printk>
c0031dc4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031dc9:	82                   	nemu_trap 
c0031dca:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031dcf:	e9 03 fe ff ff       	jmp    c0031bd7 <mm_malloc+0x97>

c0031dd4 <memcpy>:
c0031dd4:	55                   	push   %ebp
c0031dd5:	89 e5                	mov    %esp,%ebp
c0031dd7:	56                   	push   %esi
c0031dd8:	57                   	push   %edi
c0031dd9:	53                   	push   %ebx
c0031dda:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031ddd:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031de0:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031de3:	fc                   	cld    
c0031de4:	83 f9 08             	cmp    $0x8,%ecx
c0031de7:	76 26                	jbe    c0031e0f <memcpy+0x3b>
c0031de9:	89 fa                	mov    %edi,%edx
c0031deb:	89 cb                	mov    %ecx,%ebx
c0031ded:	83 e2 03             	and    $0x3,%edx
c0031df0:	74 10                	je     c0031e02 <memcpy+0x2e>
c0031df2:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031df7:	29 d1                	sub    %edx,%ecx
c0031df9:	83 e1 03             	and    $0x3,%ecx
c0031dfc:	29 cb                	sub    %ecx,%ebx
c0031dfe:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e00:	89 d9                	mov    %ebx,%ecx
c0031e02:	c1 e9 02             	shr    $0x2,%ecx
c0031e05:	8d 76 00             	lea    0x0(%esi),%esi
c0031e08:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031e0a:	89 d9                	mov    %ebx,%ecx
c0031e0c:	83 e1 03             	and    $0x3,%ecx
c0031e0f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e11:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e14:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031e17:	5b                   	pop    %ebx
c0031e18:	5f                   	pop    %edi
c0031e19:	5e                   	pop    %esi
c0031e1a:	c9                   	leave  
c0031e1b:	c3                   	ret    

c0031e1c <memset>:
c0031e1c:	55                   	push   %ebp
c0031e1d:	89 e5                	mov    %esp,%ebp
c0031e1f:	57                   	push   %edi
c0031e20:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e23:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031e27:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e2a:	fc                   	cld    
c0031e2b:	83 f9 10             	cmp    $0x10,%ecx
c0031e2e:	76 69                	jbe    c0031e99 <memset+0x7d>
c0031e30:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e36:	74 4c                	je     c0031e84 <memset+0x68>
c0031e38:	88 07                	mov    %al,(%edi)
c0031e3a:	47                   	inc    %edi
c0031e3b:	49                   	dec    %ecx
c0031e3c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e42:	74 40                	je     c0031e84 <memset+0x68>
c0031e44:	88 07                	mov    %al,(%edi)
c0031e46:	47                   	inc    %edi
c0031e47:	49                   	dec    %ecx
c0031e48:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e4e:	74 34                	je     c0031e84 <memset+0x68>
c0031e50:	88 07                	mov    %al,(%edi)
c0031e52:	47                   	inc    %edi
c0031e53:	49                   	dec    %ecx
c0031e54:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e5a:	74 28                	je     c0031e84 <memset+0x68>
c0031e5c:	88 07                	mov    %al,(%edi)
c0031e5e:	47                   	inc    %edi
c0031e5f:	49                   	dec    %ecx
c0031e60:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e66:	74 1c                	je     c0031e84 <memset+0x68>
c0031e68:	88 07                	mov    %al,(%edi)
c0031e6a:	47                   	inc    %edi
c0031e6b:	49                   	dec    %ecx
c0031e6c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e72:	74 10                	je     c0031e84 <memset+0x68>
c0031e74:	88 07                	mov    %al,(%edi)
c0031e76:	47                   	inc    %edi
c0031e77:	49                   	dec    %ecx
c0031e78:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e7e:	74 04                	je     c0031e84 <memset+0x68>
c0031e80:	88 07                	mov    %al,(%edi)
c0031e82:	47                   	inc    %edi
c0031e83:	49                   	dec    %ecx
c0031e84:	88 c4                	mov    %al,%ah
c0031e86:	89 c2                	mov    %eax,%edx
c0031e88:	c1 e2 10             	shl    $0x10,%edx
c0031e8b:	09 d0                	or     %edx,%eax
c0031e8d:	89 ca                	mov    %ecx,%edx
c0031e8f:	c1 e9 02             	shr    $0x2,%ecx
c0031e92:	83 e2 03             	and    $0x3,%edx
c0031e95:	f3 ab                	rep stos %eax,%es:(%edi)
c0031e97:	89 d1                	mov    %edx,%ecx
c0031e99:	f3 aa                	rep stos %al,%es:(%edi)
c0031e9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e9e:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031ea1:	5f                   	pop    %edi
c0031ea2:	c9                   	leave  
c0031ea3:	c3                   	ret    
c0031ea4:	66 90                	xchg   %ax,%ax
c0031ea6:	66 90                	xchg   %ax,%ax
c0031ea8:	66 90                	xchg   %ax,%ax
c0031eaa:	66 90                	xchg   %ax,%ax
c0031eac:	66 90                	xchg   %ax,%ax
c0031eae:	66 90                	xchg   %ax,%ax

c0031eb0 <_vsnprintf_r>:
c0031eb0:	55                   	push   %ebp
c0031eb1:	89 e5                	mov    %esp,%ebp
c0031eb3:	56                   	push   %esi
c0031eb4:	53                   	push   %ebx
c0031eb5:	83 c4 80             	add    $0xffffff80,%esp
c0031eb8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031ebb:	8b 75 08             	mov    0x8(%ebp),%esi
c0031ebe:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031ec1:	85 db                	test   %ebx,%ebx
c0031ec3:	78 63                	js     c0031f28 <_vsnprintf_r+0x78>
c0031ec5:	ba 08 02 00 00       	mov    $0x208,%edx
c0031eca:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031ecf:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031ed3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031ed6:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031ed9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031edc:	31 c0                	xor    %eax,%eax
c0031ede:	85 db                	test   %ebx,%ebx
c0031ee0:	0f 45 c2             	cmovne %edx,%eax
c0031ee3:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031ee6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031ee9:	8b 45 18             	mov    0x18(%ebp),%eax
c0031eec:	89 34 24             	mov    %esi,(%esp)
c0031eef:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031ef3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031ef7:	8b 45 14             	mov    0x14(%ebp),%eax
c0031efa:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031efe:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031f01:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031f05:	e8 86 00 00 00       	call   c0031f90 <_svfprintf_r>
c0031f0a:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031f0d:	7c 11                	jl     c0031f20 <_vsnprintf_r+0x70>
c0031f0f:	85 db                	test   %ebx,%ebx
c0031f11:	74 06                	je     c0031f19 <_vsnprintf_r+0x69>
c0031f13:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031f16:	c6 02 00             	movb   $0x0,(%edx)
c0031f19:	83 ec 80             	sub    $0xffffff80,%esp
c0031f1c:	5b                   	pop    %ebx
c0031f1d:	5e                   	pop    %esi
c0031f1e:	5d                   	pop    %ebp
c0031f1f:	c3                   	ret    
c0031f20:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f26:	eb e7                	jmp    c0031f0f <_vsnprintf_r+0x5f>
c0031f28:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f2e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031f33:	eb e4                	jmp    c0031f19 <_vsnprintf_r+0x69>
c0031f35:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031f39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031f40 <vsnprintf>:
c0031f40:	55                   	push   %ebp
c0031f41:	89 e5                	mov    %esp,%ebp
c0031f43:	83 ec 28             	sub    $0x28,%esp
c0031f46:	e8 35 00 00 00       	call   c0031f80 <__getreent>
c0031f4b:	8b 55 14             	mov    0x14(%ebp),%edx
c0031f4e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031f52:	8b 55 10             	mov    0x10(%ebp),%edx
c0031f55:	89 04 24             	mov    %eax,(%esp)
c0031f58:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031f5c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031f5f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031f63:	8b 55 08             	mov    0x8(%ebp),%edx
c0031f66:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031f6a:	e8 41 ff ff ff       	call   c0031eb0 <_vsnprintf_r>
c0031f6f:	c9                   	leave  
c0031f70:	c3                   	ret    
c0031f71:	66 90                	xchg   %ax,%ax
c0031f73:	66 90                	xchg   %ax,%ax
c0031f75:	66 90                	xchg   %ax,%ax
c0031f77:	66 90                	xchg   %ax,%ax
c0031f79:	66 90                	xchg   %ax,%ax
c0031f7b:	66 90                	xchg   %ax,%ax
c0031f7d:	66 90                	xchg   %ax,%ax
c0031f7f:	90                   	nop

c0031f80 <__getreent>:
c0031f80:	55                   	push   %ebp
c0031f81:	a1 40 d0 03 c0       	mov    0xc003d040,%eax
c0031f86:	89 e5                	mov    %esp,%ebp
c0031f88:	5d                   	pop    %ebp
c0031f89:	c3                   	ret    
c0031f8a:	66 90                	xchg   %ax,%ax
c0031f8c:	66 90                	xchg   %ax,%ax
c0031f8e:	66 90                	xchg   %ax,%ax

c0031f90 <_svfprintf_r>:
c0031f90:	55                   	push   %ebp
c0031f91:	89 e5                	mov    %esp,%ebp
c0031f93:	57                   	push   %edi
c0031f94:	56                   	push   %esi
c0031f95:	53                   	push   %ebx
c0031f96:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c0031f9c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031f9f:	89 04 24             	mov    %eax,(%esp)
c0031fa2:	e8 89 33 00 00       	call   c0035330 <_localeconv_r>
c0031fa7:	8b 00                	mov    (%eax),%eax
c0031fa9:	89 04 24             	mov    %eax,(%esp)
c0031fac:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0031fb2:	e8 d9 4a 00 00       	call   c0036a90 <strlen>
c0031fb7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c0031fbd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031fc0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0031fc4:	74 0b                	je     c0031fd1 <_svfprintf_r+0x41>
c0031fc6:	8b 40 10             	mov    0x10(%eax),%eax
c0031fc9:	85 c0                	test   %eax,%eax
c0031fcb:	0f 84 62 18 00 00    	je     c0033833 <_svfprintf_r+0x18a3>
c0031fd1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0031fd4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0031fd7:	89 c7                	mov    %eax,%edi
c0031fd9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0031fdf:	d9 ee                	fldz   
c0031fe1:	29 d0                	sub    %edx,%eax
c0031fe3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0031fea:	00 00 00 
c0031fed:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0031ff3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0031ffa:	00 00 00 
c0031ffd:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0032004:	00 00 00 
c0032007:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c003200e:	00 00 00 
c0032011:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0032018:	00 00 00 
c003201b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0032022:	00 00 00 
c0032025:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c003202b:	8b 45 10             	mov    0x10(%ebp),%eax
c003202e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032031:	0f b6 00             	movzbl (%eax),%eax
c0032034:	3c 25                	cmp    $0x25,%al
c0032036:	74 4d                	je     c0032085 <_svfprintf_r+0xf5>
c0032038:	84 c0                	test   %al,%al
c003203a:	75 08                	jne    c0032044 <_svfprintf_r+0xb4>
c003203c:	eb 47                	jmp    c0032085 <_svfprintf_r+0xf5>
c003203e:	66 90                	xchg   %ax,%ax
c0032040:	84 c0                	test   %al,%al
c0032042:	74 0a                	je     c003204e <_svfprintf_r+0xbe>
c0032044:	83 c3 01             	add    $0x1,%ebx
c0032047:	0f b6 03             	movzbl (%ebx),%eax
c003204a:	3c 25                	cmp    $0x25,%al
c003204c:	75 f2                	jne    c0032040 <_svfprintf_r+0xb0>
c003204e:	89 de                	mov    %ebx,%esi
c0032050:	2b 75 10             	sub    0x10(%ebp),%esi
c0032053:	74 30                	je     c0032085 <_svfprintf_r+0xf5>
c0032055:	8b 45 10             	mov    0x10(%ebp),%eax
c0032058:	83 c7 08             	add    $0x8,%edi
c003205b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003205e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032064:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032067:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003206d:	83 c0 01             	add    $0x1,%eax
c0032070:	83 f8 07             	cmp    $0x7,%eax
c0032073:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032079:	0f 8f 91 00 00 00    	jg     c0032110 <_svfprintf_r+0x180>
c003207f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032085:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032088:	0f 84 aa 00 00 00    	je     c0032138 <_svfprintf_r+0x1a8>
c003208e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032091:	be 20 00 00 00       	mov    $0x20,%esi
c0032096:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003209d:	31 db                	xor    %ebx,%ebx
c003209f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c00320a6:	ff ff ff 
c00320a9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c00320b0:	00 00 00 
c00320b3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c00320ba:	00 00 00 
c00320bd:	8d 48 01             	lea    0x1(%eax),%ecx
c00320c0:	0f be 00             	movsbl (%eax),%eax
c00320c3:	8d 50 e0             	lea    -0x20(%eax),%edx
c00320c6:	83 fa 58             	cmp    $0x58,%edx
c00320c9:	0f 87 8f 07 00 00    	ja     c003285e <_svfprintf_r+0x8ce>
c00320cf:	ff 24 95 dc 98 03 c0 	jmp    *-0x3ffc6724(,%edx,4)
c00320d6:	66 90                	xchg   %ax,%ax
c00320d8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00320df:	89 c8                	mov    %ecx,%eax
c00320e1:	eb da                	jmp    c00320bd <_svfprintf_r+0x12d>
c00320e3:	8b 45 14             	mov    0x14(%ebp),%eax
c00320e6:	8b 55 14             	mov    0x14(%ebp),%edx
c00320e9:	8b 00                	mov    (%eax),%eax
c00320eb:	83 c2 04             	add    $0x4,%edx
c00320ee:	89 55 14             	mov    %edx,0x14(%ebp)
c00320f1:	85 c0                	test   %eax,%eax
c00320f3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c00320f9:	79 e4                	jns    c00320df <_svfprintf_r+0x14f>
c00320fb:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0032101:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0032108:	89 c8                	mov    %ecx,%eax
c003210a:	eb b1                	jmp    c00320bd <_svfprintf_r+0x12d>
c003210c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032110:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032116:	89 44 24 08          	mov    %eax,0x8(%esp)
c003211a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003211d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032121:	8b 45 08             	mov    0x8(%ebp),%eax
c0032124:	89 04 24             	mov    %eax,(%esp)
c0032127:	e8 e4 49 00 00       	call   c0036b10 <__ssprint_r>
c003212c:	85 c0                	test   %eax,%eax
c003212e:	75 30                	jne    c0032160 <_svfprintf_r+0x1d0>
c0032130:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032133:	e9 47 ff ff ff       	jmp    c003207f <_svfprintf_r+0xef>
c0032138:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003213e:	85 c0                	test   %eax,%eax
c0032140:	74 1e                	je     c0032160 <_svfprintf_r+0x1d0>
c0032142:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032148:	89 44 24 08          	mov    %eax,0x8(%esp)
c003214c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003214f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032153:	8b 45 08             	mov    0x8(%ebp),%eax
c0032156:	89 04 24             	mov    %eax,(%esp)
c0032159:	e8 b2 49 00 00       	call   c0036b10 <__ssprint_r>
c003215e:	66 90                	xchg   %ax,%ax
c0032160:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032163:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032168:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003216c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032173:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032179:	5b                   	pop    %ebx
c003217a:	5e                   	pop    %esi
c003217b:	5f                   	pop    %edi
c003217c:	5d                   	pop    %ebp
c003217d:	c3                   	ret    
c003217e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032183:	89 c8                	mov    %ecx,%eax
c0032185:	e9 33 ff ff ff       	jmp    c00320bd <_svfprintf_r+0x12d>
c003218a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032190:	8b 45 14             	mov    0x14(%ebp),%eax
c0032193:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032196:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003219d:	8d 70 04             	lea    0x4(%eax),%esi
c00321a0:	8b 00                	mov    (%eax),%eax
c00321a2:	85 c0                	test   %eax,%eax
c00321a4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00321aa:	0f 84 7f 18 00 00    	je     c0033a2f <_svfprintf_r+0x1a9f>
c00321b0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00321b6:	85 c0                	test   %eax,%eax
c00321b8:	0f 88 b6 17 00 00    	js     c0033974 <_svfprintf_r+0x19e4>
c00321be:	89 44 24 08          	mov    %eax,0x8(%esp)
c00321c2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00321c8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00321cf:	00 
c00321d0:	89 04 24             	mov    %eax,(%esp)
c00321d3:	e8 f8 38 00 00       	call   c0035ad0 <memchr>
c00321d8:	85 c0                	test   %eax,%eax
c00321da:	0f 84 a0 19 00 00    	je     c0033b80 <_svfprintf_r+0x1bf0>
c00321e0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00321e6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00321ec:	39 d0                	cmp    %edx,%eax
c00321ee:	0f 4f c2             	cmovg  %edx,%eax
c00321f1:	89 c2                	mov    %eax,%edx
c00321f3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00321fa:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032200:	31 c0                	xor    %eax,%eax
c0032202:	85 d2                	test   %edx,%edx
c0032204:	0f 49 c2             	cmovns %edx,%eax
c0032207:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c003220d:	89 75 14             	mov    %esi,0x14(%ebp)
c0032210:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032217:	00 00 00 
c003221a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032221:	00 00 00 
c0032224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032228:	84 db                	test   %bl,%bl
c003222a:	74 07                	je     c0032233 <_svfprintf_r+0x2a3>
c003222c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032233:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032239:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003223f:	89 c8                	mov    %ecx,%eax
c0032241:	89 f2                	mov    %esi,%edx
c0032243:	83 c0 02             	add    $0x2,%eax
c0032246:	83 e2 02             	and    $0x2,%edx
c0032249:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003224f:	89 f2                	mov    %esi,%edx
c0032251:	0f 44 c1             	cmove  %ecx,%eax
c0032254:	81 e2 84 00 00 00    	and    $0x84,%edx
c003225a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032260:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032266:	0f 85 1c 06 00 00    	jne    c0032888 <_svfprintf_r+0x8f8>
c003226c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032272:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032278:	85 f6                	test   %esi,%esi
c003227a:	0f 8e 08 06 00 00    	jle    c0032888 <_svfprintf_r+0x8f8>
c0032280:	83 fe 10             	cmp    $0x10,%esi
c0032283:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032289:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003228f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032295:	7f 11                	jg     c00322a8 <_svfprintf_r+0x318>
c0032297:	eb 6b                	jmp    c0032304 <_svfprintf_r+0x374>
c0032299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00322a0:	83 ee 10             	sub    $0x10,%esi
c00322a3:	83 fe 10             	cmp    $0x10,%esi
c00322a6:	7e 5c                	jle    c0032304 <_svfprintf_r+0x374>
c00322a8:	83 c0 01             	add    $0x1,%eax
c00322ab:	83 c1 10             	add    $0x10,%ecx
c00322ae:	c7 07 50 9a 03 c0    	movl   $0xc0039a50,(%edi)
c00322b4:	83 c7 08             	add    $0x8,%edi
c00322b7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00322be:	83 f8 07             	cmp    $0x7,%eax
c00322c1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00322c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00322cd:	7e d1                	jle    c00322a0 <_svfprintf_r+0x310>
c00322cf:	8b 45 0c             	mov    0xc(%ebp),%eax
c00322d2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00322d6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00322da:	8b 45 08             	mov    0x8(%ebp),%eax
c00322dd:	89 04 24             	mov    %eax,(%esp)
c00322e0:	e8 2b 48 00 00       	call   c0036b10 <__ssprint_r>
c00322e5:	85 c0                	test   %eax,%eax
c00322e7:	0f 85 73 fe ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c00322ed:	83 ee 10             	sub    $0x10,%esi
c00322f0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00322f6:	83 fe 10             	cmp    $0x10,%esi
c00322f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00322ff:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032302:	7f a4                	jg     c00322a8 <_svfprintf_r+0x318>
c0032304:	83 c0 01             	add    $0x1,%eax
c0032307:	01 f1                	add    %esi,%ecx
c0032309:	83 f8 07             	cmp    $0x7,%eax
c003230c:	c7 07 50 9a 03 c0    	movl   $0xc0039a50,(%edi)
c0032312:	89 77 04             	mov    %esi,0x4(%edi)
c0032315:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003231b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032321:	0f 8f 16 0e 00 00    	jg     c003313d <_svfprintf_r+0x11ad>
c0032327:	83 c7 08             	add    $0x8,%edi
c003232a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032331:	e9 58 05 00 00       	jmp    c003288e <_svfprintf_r+0x8fe>
c0032336:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003233d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032343:	8b 45 14             	mov    0x14(%ebp),%eax
c0032346:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032349:	0f 85 fd 04 00 00    	jne    c003284c <_svfprintf_r+0x8bc>
c003234f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032356:	0f 84 f0 04 00 00    	je     c003284c <_svfprintf_r+0x8bc>
c003235c:	0f b7 08             	movzwl (%eax),%ecx
c003235f:	83 c0 04             	add    $0x4,%eax
c0032362:	89 45 14             	mov    %eax,0x14(%ebp)
c0032365:	b8 01 00 00 00       	mov    $0x1,%eax
c003236a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032370:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032377:	31 db                	xor    %ebx,%ebx
c0032379:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003237f:	89 f2                	mov    %esi,%edx
c0032381:	80 e2 7f             	and    $0x7f,%dl
c0032384:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003238b:	0f 48 d6             	cmovs  %esi,%edx
c003238e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032394:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003239a:	85 d2                	test   %edx,%edx
c003239c:	75 08                	jne    c00323a6 <_svfprintf_r+0x416>
c003239e:	85 c9                	test   %ecx,%ecx
c00323a0:	0f 84 ea 08 00 00    	je     c0032c90 <_svfprintf_r+0xd00>
c00323a6:	3c 01                	cmp    $0x1,%al
c00323a8:	0f 84 6a 0d 00 00    	je     c0033118 <_svfprintf_r+0x1188>
c00323ae:	3c 02                	cmp    $0x2,%al
c00323b0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00323b3:	0f 85 bf 0b 00 00    	jne    c0032f78 <_svfprintf_r+0xfe8>
c00323b9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c00323bf:	90                   	nop
c00323c0:	89 ca                	mov    %ecx,%edx
c00323c2:	83 e8 01             	sub    $0x1,%eax
c00323c5:	83 e2 0f             	and    $0xf,%edx
c00323c8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c00323cc:	c1 e9 04             	shr    $0x4,%ecx
c00323cf:	85 c9                	test   %ecx,%ecx
c00323d1:	88 10                	mov    %dl,(%eax)
c00323d3:	75 eb                	jne    c00323c0 <_svfprintf_r+0x430>
c00323d5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c00323d8:	29 c2                	sub    %eax,%edx
c00323da:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00323e0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00323e6:	66 90                	xchg   %ax,%ax
c00323e8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00323ee:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c00323f4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00323fb:	00 00 00 
c00323fe:	39 c2                	cmp    %eax,%edx
c0032400:	0f 4d c2             	cmovge %edx,%eax
c0032403:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032409:	e9 1a fe ff ff       	jmp    c0032228 <_svfprintf_r+0x298>
c003240e:	84 db                	test   %bl,%bl
c0032410:	89 c8                	mov    %ecx,%eax
c0032412:	0f 44 de             	cmove  %esi,%ebx
c0032415:	e9 a3 fc ff ff       	jmp    c00320bd <_svfprintf_r+0x12d>
c003241a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032421:	89 c8                	mov    %ecx,%eax
c0032423:	e9 95 fc ff ff       	jmp    c00320bd <_svfprintf_r+0x12d>
c0032428:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003242f:	00 00 00 
c0032432:	89 c8                	mov    %ecx,%eax
c0032434:	e9 84 fc ff ff       	jmp    c00320bd <_svfprintf_r+0x12d>
c0032439:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003243f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032442:	31 ff                	xor    %edi,%edi
c0032444:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003244b:	00 00 00 
c003244e:	66 90                	xchg   %ax,%ax
c0032450:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032453:	83 c1 01             	add    $0x1,%ecx
c0032456:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032459:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003245d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032460:	83 fa 09             	cmp    $0x9,%edx
c0032463:	76 eb                	jbe    c0032450 <_svfprintf_r+0x4c0>
c0032465:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003246b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032471:	e9 4d fc ff ff       	jmp    c00320c3 <_svfprintf_r+0x133>
c0032476:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003247d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032484:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003248a:	8b 45 14             	mov    0x14(%ebp),%eax
c003248d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032490:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032496:	0f 85 61 02 00 00    	jne    c00326fd <_svfprintf_r+0x76d>
c003249c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00324a3:	0f 84 54 02 00 00    	je     c00326fd <_svfprintf_r+0x76d>
c00324a9:	0f bf 08             	movswl (%eax),%ecx
c00324ac:	83 c0 04             	add    $0x4,%eax
c00324af:	89 45 14             	mov    %eax,0x14(%ebp)
c00324b2:	85 c9                	test   %ecx,%ecx
c00324b4:	0f 88 53 02 00 00    	js     c003270d <_svfprintf_r+0x77d>
c00324ba:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00324c1:	b8 01 00 00 00       	mov    $0x1,%eax
c00324c6:	e9 ae fe ff ff       	jmp    c0032379 <_svfprintf_r+0x3e9>
c00324cb:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c00324d2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00324d8:	8b 45 14             	mov    0x14(%ebp),%eax
c00324db:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324de:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00324e4:	0f 84 15 10 00 00    	je     c00334ff <_svfprintf_r+0x156f>
c00324ea:	db 28                	fldt   (%eax)
c00324ec:	83 c0 0c             	add    $0xc,%eax
c00324ef:	89 45 14             	mov    %eax,0x14(%ebp)
c00324f2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00324f8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00324fe:	dd 1c 24             	fstpl  (%esp)
c0032501:	e8 aa 44 00 00       	call   c00369b0 <__fpclassifyd>
c0032506:	83 f8 01             	cmp    $0x1,%eax
c0032509:	0f 85 82 0f 00 00    	jne    c0033491 <_svfprintf_r+0x1501>
c003250f:	d9 ee                	fldz   
c0032511:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032517:	d9 c9                	fxch   %st(1)
c0032519:	df e9                	fucomip %st(1),%st
c003251b:	dd d8                	fstp   %st(0)
c003251d:	0f 87 59 15 00 00    	ja     c0033a7c <_svfprintf_r+0x1aec>
c0032523:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003252a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032531:	ba 9e 98 03 c0       	mov    $0xc003989e,%edx
c0032536:	b8 a2 98 03 c0       	mov    $0xc00398a2,%eax
c003253b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032542:	00 00 00 
c0032545:	0f 4e c2             	cmovle %edx,%eax
c0032548:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003254e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032555:	ff ff ff 
c0032558:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003255f:	00 00 00 
c0032562:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032569:	00 00 00 
c003256c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032573:	00 00 00 
c0032576:	e9 ad fc ff ff       	jmp    c0032228 <_svfprintf_r+0x298>
c003257b:	8d 41 01             	lea    0x1(%ecx),%eax
c003257e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032584:	0f be 01             	movsbl (%ecx),%eax
c0032587:	83 f8 2a             	cmp    $0x2a,%eax
c003258a:	0f 84 84 18 00 00    	je     c0033e14 <_svfprintf_r+0x1e84>
c0032590:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032593:	31 c9                	xor    %ecx,%ecx
c0032595:	83 fa 09             	cmp    $0x9,%edx
c0032598:	0f 87 a8 16 00 00    	ja     c0033c46 <_svfprintf_r+0x1cb6>
c003259e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c00325a4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00325aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00325b0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c00325b3:	83 c7 01             	add    $0x1,%edi
c00325b6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c00325b9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c00325bd:	8d 50 d0             	lea    -0x30(%eax),%edx
c00325c0:	83 fa 09             	cmp    $0x9,%edx
c00325c3:	76 eb                	jbe    c00325b0 <_svfprintf_r+0x620>
c00325c5:	85 c9                	test   %ecx,%ecx
c00325c7:	89 ca                	mov    %ecx,%edx
c00325c9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00325ce:	0f 48 d1             	cmovs  %ecx,%edx
c00325d1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00325d7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c00325dd:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00325e3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c00325e9:	e9 d5 fa ff ff       	jmp    c00320c3 <_svfprintf_r+0x133>
c00325ee:	8b 45 14             	mov    0x14(%ebp),%eax
c00325f1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00325f4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00325fb:	8b 08                	mov    (%eax),%ecx
c00325fd:	83 c0 04             	add    $0x4,%eax
c0032600:	89 45 14             	mov    %eax,0x14(%ebp)
c0032603:	b8 02 00 00 00       	mov    $0x2,%eax
c0032608:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c003260f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032616:	c7 85 18 ff ff ff bf 	movl   $0xc00398bf,-0xe8(%ebp)
c003261d:	98 03 c0 
c0032620:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032627:	00 00 00 
c003262a:	e9 41 fd ff ff       	jmp    c0032370 <_svfprintf_r+0x3e0>
c003262f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032636:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003263c:	8b 45 14             	mov    0x14(%ebp),%eax
c003263f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032642:	0f 85 87 00 00 00    	jne    c00326cf <_svfprintf_r+0x73f>
c0032648:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003264f:	74 7e                	je     c00326cf <_svfprintf_r+0x73f>
c0032651:	0f b7 08             	movzwl (%eax),%ecx
c0032654:	83 c0 04             	add    $0x4,%eax
c0032657:	89 45 14             	mov    %eax,0x14(%ebp)
c003265a:	31 c0                	xor    %eax,%eax
c003265c:	e9 0f fd ff ff       	jmp    c0032370 <_svfprintf_r+0x3e0>
c0032661:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032668:	89 c8                	mov    %ecx,%eax
c003266a:	e9 4e fa ff ff       	jmp    c00320bd <_svfprintf_r+0x12d>
c003266f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032676:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032679:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003267f:	0f 85 97 0b 00 00    	jne    c003321c <_svfprintf_r+0x128c>
c0032685:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003268c:	0f 84 8a 0b 00 00    	je     c003321c <_svfprintf_r+0x128c>
c0032692:	8b 45 14             	mov    0x14(%ebp),%eax
c0032695:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c003269c:	8b 00                	mov    (%eax),%eax
c003269e:	66 89 10             	mov    %dx,(%eax)
c00326a1:	8b 45 14             	mov    0x14(%ebp),%eax
c00326a4:	83 c0 04             	add    $0x4,%eax
c00326a7:	89 45 14             	mov    %eax,0x14(%ebp)
c00326aa:	e9 7c f9 ff ff       	jmp    c003202b <_svfprintf_r+0x9b>
c00326af:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00326b6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326bd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326c3:	8b 45 14             	mov    0x14(%ebp),%eax
c00326c6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326c9:	0f 84 79 ff ff ff    	je     c0032648 <_svfprintf_r+0x6b8>
c00326cf:	8b 08                	mov    (%eax),%ecx
c00326d1:	83 c0 04             	add    $0x4,%eax
c00326d4:	89 45 14             	mov    %eax,0x14(%ebp)
c00326d7:	31 c0                	xor    %eax,%eax
c00326d9:	e9 92 fc ff ff       	jmp    c0032370 <_svfprintf_r+0x3e0>
c00326de:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326e5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326eb:	8b 45 14             	mov    0x14(%ebp),%eax
c00326ee:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326f1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00326f7:	0f 84 9f fd ff ff    	je     c003249c <_svfprintf_r+0x50c>
c00326fd:	8b 08                	mov    (%eax),%ecx
c00326ff:	83 c0 04             	add    $0x4,%eax
c0032702:	89 45 14             	mov    %eax,0x14(%ebp)
c0032705:	85 c9                	test   %ecx,%ecx
c0032707:	0f 89 ad fd ff ff    	jns    c00324ba <_svfprintf_r+0x52a>
c003270d:	f7 d9                	neg    %ecx
c003270f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032714:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c003271b:	b8 01 00 00 00       	mov    $0x1,%eax
c0032720:	e9 54 fc ff ff       	jmp    c0032379 <_svfprintf_r+0x3e9>
c0032725:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c003272c:	89 c8                	mov    %ecx,%eax
c003272e:	e9 8a f9 ff ff       	jmp    c00320bd <_svfprintf_r+0x12d>
c0032733:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003273a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032740:	8b 45 14             	mov    0x14(%ebp),%eax
c0032743:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032746:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003274c:	c7 85 18 ff ff ff bf 	movl   $0xc00398bf,-0xe8(%ebp)
c0032753:	98 03 c0 
c0032756:	75 71                	jne    c00327c9 <_svfprintf_r+0x839>
c0032758:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003275f:	74 68                	je     c00327c9 <_svfprintf_r+0x839>
c0032761:	0f b7 08             	movzwl (%eax),%ecx
c0032764:	83 c0 04             	add    $0x4,%eax
c0032767:	89 45 14             	mov    %eax,0x14(%ebp)
c003276a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032771:	b8 02 00 00 00       	mov    $0x2,%eax
c0032776:	0f 84 f4 fb ff ff    	je     c0032370 <_svfprintf_r+0x3e0>
c003277c:	85 c9                	test   %ecx,%ecx
c003277e:	0f 84 ec fb ff ff    	je     c0032370 <_svfprintf_r+0x3e0>
c0032784:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c003278b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032792:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032799:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c003279f:	e9 cc fb ff ff       	jmp    c0032370 <_svfprintf_r+0x3e0>
c00327a4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00327ab:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327b1:	8b 45 14             	mov    0x14(%ebp),%eax
c00327b4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327b7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00327bd:	c7 85 18 ff ff ff ae 	movl   $0xc00398ae,-0xe8(%ebp)
c00327c4:	98 03 c0 
c00327c7:	74 8f                	je     c0032758 <_svfprintf_r+0x7c8>
c00327c9:	8b 08                	mov    (%eax),%ecx
c00327cb:	83 c0 04             	add    $0x4,%eax
c00327ce:	89 45 14             	mov    %eax,0x14(%ebp)
c00327d1:	eb 97                	jmp    c003276a <_svfprintf_r+0x7da>
c00327d3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327d9:	8b 45 14             	mov    0x14(%ebp),%eax
c00327dc:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327df:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00327e6:	8b 00                	mov    (%eax),%eax
c00327e8:	88 45 80             	mov    %al,-0x80(%ebp)
c00327eb:	8b 45 14             	mov    0x14(%ebp),%eax
c00327ee:	83 c0 04             	add    $0x4,%eax
c00327f1:	89 45 14             	mov    %eax,0x14(%ebp)
c00327f4:	8d 45 80             	lea    -0x80(%ebp),%eax
c00327f7:	31 db                	xor    %ebx,%ebx
c00327f9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032800:	00 00 00 
c0032803:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c003280a:	00 00 00 
c003280d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032814:	00 00 00 
c0032817:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003281e:	00 00 00 
c0032821:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032827:	e9 07 fa ff ff       	jmp    c0032233 <_svfprintf_r+0x2a3>
c003282c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032833:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003283a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032840:	8b 45 14             	mov    0x14(%ebp),%eax
c0032843:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032846:	0f 84 03 fb ff ff    	je     c003234f <_svfprintf_r+0x3bf>
c003284c:	8b 08                	mov    (%eax),%ecx
c003284e:	83 c0 04             	add    $0x4,%eax
c0032851:	89 45 14             	mov    %eax,0x14(%ebp)
c0032854:	b8 01 00 00 00       	mov    $0x1,%eax
c0032859:	e9 12 fb ff ff       	jmp    c0032370 <_svfprintf_r+0x3e0>
c003285e:	85 c0                	test   %eax,%eax
c0032860:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032866:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032869:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003286f:	0f 84 c3 f8 ff ff    	je     c0032138 <_svfprintf_r+0x1a8>
c0032875:	88 45 80             	mov    %al,-0x80(%ebp)
c0032878:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003287f:	e9 70 ff ff ff       	jmp    c00327f4 <_svfprintf_r+0x864>
c0032884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032888:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003288e:	84 db                	test   %bl,%bl
c0032890:	74 33                	je     c00328c5 <_svfprintf_r+0x935>
c0032892:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032898:	83 c1 01             	add    $0x1,%ecx
c003289b:	89 07                	mov    %eax,(%edi)
c003289d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328a3:	83 c7 08             	add    $0x8,%edi
c00328a6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c00328ad:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328b3:	83 c0 01             	add    $0x1,%eax
c00328b6:	83 f8 07             	cmp    $0x7,%eax
c00328b9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328bf:	0f 8f 7b 06 00 00    	jg     c0032f40 <_svfprintf_r+0xfb0>
c00328c5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c00328cb:	85 db                	test   %ebx,%ebx
c00328cd:	74 33                	je     c0032902 <_svfprintf_r+0x972>
c00328cf:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c00328d5:	83 c1 02             	add    $0x2,%ecx
c00328d8:	89 07                	mov    %eax,(%edi)
c00328da:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328e0:	83 c7 08             	add    $0x8,%edi
c00328e3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c00328ea:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328f0:	83 c0 01             	add    $0x1,%eax
c00328f3:	83 f8 07             	cmp    $0x7,%eax
c00328f6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328fc:	0f 8f 06 06 00 00    	jg     c0032f08 <_svfprintf_r+0xf78>
c0032902:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0032909:	00 00 00 
c003290c:	0f 84 c6 03 00 00    	je     c0032cd8 <_svfprintf_r+0xd48>
c0032912:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0032918:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c003291e:	85 f6                	test   %esi,%esi
c0032920:	0f 8e d2 00 00 00    	jle    c00329f8 <_svfprintf_r+0xa68>
c0032926:	83 fe 10             	cmp    $0x10,%esi
c0032929:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003292f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032935:	7f 11                	jg     c0032948 <_svfprintf_r+0x9b8>
c0032937:	eb 6b                	jmp    c00329a4 <_svfprintf_r+0xa14>
c0032939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032940:	83 ee 10             	sub    $0x10,%esi
c0032943:	83 fe 10             	cmp    $0x10,%esi
c0032946:	7e 5c                	jle    c00329a4 <_svfprintf_r+0xa14>
c0032948:	83 c0 01             	add    $0x1,%eax
c003294b:	83 c1 10             	add    $0x10,%ecx
c003294e:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c0032954:	83 c7 08             	add    $0x8,%edi
c0032957:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003295e:	83 f8 07             	cmp    $0x7,%eax
c0032961:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032967:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003296d:	7e d1                	jle    c0032940 <_svfprintf_r+0x9b0>
c003296f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032972:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032976:	89 44 24 04          	mov    %eax,0x4(%esp)
c003297a:	8b 45 08             	mov    0x8(%ebp),%eax
c003297d:	89 04 24             	mov    %eax,(%esp)
c0032980:	e8 8b 41 00 00       	call   c0036b10 <__ssprint_r>
c0032985:	85 c0                	test   %eax,%eax
c0032987:	0f 85 d3 f7 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c003298d:	83 ee 10             	sub    $0x10,%esi
c0032990:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032996:	83 fe 10             	cmp    $0x10,%esi
c0032999:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003299f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329a2:	7f a4                	jg     c0032948 <_svfprintf_r+0x9b8>
c00329a4:	83 c0 01             	add    $0x1,%eax
c00329a7:	01 f1                	add    %esi,%ecx
c00329a9:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c00329af:	83 c7 08             	add    $0x8,%edi
c00329b2:	89 77 fc             	mov    %esi,-0x4(%edi)
c00329b5:	83 f8 07             	cmp    $0x7,%eax
c00329b8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329be:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329c4:	7e 32                	jle    c00329f8 <_svfprintf_r+0xa68>
c00329c6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00329cc:	89 44 24 08          	mov    %eax,0x8(%esp)
c00329d0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00329d3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00329d7:	8b 45 08             	mov    0x8(%ebp),%eax
c00329da:	89 04 24             	mov    %eax,(%esp)
c00329dd:	e8 2e 41 00 00       	call   c0036b10 <__ssprint_r>
c00329e2:	85 c0                	test   %eax,%eax
c00329e4:	0f 85 76 f7 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c00329ea:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00329f0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329f3:	90                   	nop
c00329f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00329f8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c00329ff:	01 00 00 
c0032a02:	0f 85 50 01 00 00    	jne    c0032b58 <_svfprintf_r+0xbc8>
c0032a08:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032a0e:	89 07                	mov    %eax,(%edi)
c0032a10:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032a16:	01 c1                	add    %eax,%ecx
c0032a18:	89 47 04             	mov    %eax,0x4(%edi)
c0032a1b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a21:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a27:	83 c0 01             	add    $0x1,%eax
c0032a2a:	83 f8 07             	cmp    $0x7,%eax
c0032a2d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a33:	0f 8f 6a 04 00 00    	jg     c0032ea3 <_svfprintf_r+0xf13>
c0032a39:	83 c7 08             	add    $0x8,%edi
c0032a3c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032a43:	0f 84 d7 00 00 00    	je     c0032b20 <_svfprintf_r+0xb90>
c0032a49:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a4f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032a55:	85 f6                	test   %esi,%esi
c0032a57:	0f 8e c3 00 00 00    	jle    c0032b20 <_svfprintf_r+0xb90>
c0032a5d:	83 fe 10             	cmp    $0x10,%esi
c0032a60:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a66:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032a6c:	7f 0a                	jg     c0032a78 <_svfprintf_r+0xae8>
c0032a6e:	eb 64                	jmp    c0032ad4 <_svfprintf_r+0xb44>
c0032a70:	83 ee 10             	sub    $0x10,%esi
c0032a73:	83 fe 10             	cmp    $0x10,%esi
c0032a76:	7e 5c                	jle    c0032ad4 <_svfprintf_r+0xb44>
c0032a78:	83 c0 01             	add    $0x1,%eax
c0032a7b:	83 c1 10             	add    $0x10,%ecx
c0032a7e:	c7 07 50 9a 03 c0    	movl   $0xc0039a50,(%edi)
c0032a84:	83 c7 08             	add    $0x8,%edi
c0032a87:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032a8e:	83 f8 07             	cmp    $0x7,%eax
c0032a91:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a97:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a9d:	7e d1                	jle    c0032a70 <_svfprintf_r+0xae0>
c0032a9f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032aa2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032aa6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032aaa:	8b 45 08             	mov    0x8(%ebp),%eax
c0032aad:	89 04 24             	mov    %eax,(%esp)
c0032ab0:	e8 5b 40 00 00       	call   c0036b10 <__ssprint_r>
c0032ab5:	85 c0                	test   %eax,%eax
c0032ab7:	0f 85 a3 f6 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0032abd:	83 ee 10             	sub    $0x10,%esi
c0032ac0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ac6:	83 fe 10             	cmp    $0x10,%esi
c0032ac9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032acf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ad2:	7f a4                	jg     c0032a78 <_svfprintf_r+0xae8>
c0032ad4:	83 c0 01             	add    $0x1,%eax
c0032ad7:	01 f1                	add    %esi,%ecx
c0032ad9:	83 f8 07             	cmp    $0x7,%eax
c0032adc:	c7 07 50 9a 03 c0    	movl   $0xc0039a50,(%edi)
c0032ae2:	89 77 04             	mov    %esi,0x4(%edi)
c0032ae5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032aeb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032af1:	7e 2d                	jle    c0032b20 <_svfprintf_r+0xb90>
c0032af3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032af9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032afd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032b00:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032b04:	8b 45 08             	mov    0x8(%ebp),%eax
c0032b07:	89 04 24             	mov    %eax,(%esp)
c0032b0a:	e8 01 40 00 00       	call   c0036b10 <__ssprint_r>
c0032b0f:	85 c0                	test   %eax,%eax
c0032b11:	0f 85 49 f6 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0032b17:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b1d:	8d 76 00             	lea    0x0(%esi),%esi
c0032b20:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032b26:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032b2c:	39 c2                	cmp    %eax,%edx
c0032b2e:	0f 4d c2             	cmovge %edx,%eax
c0032b31:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032b37:	85 c9                	test   %ecx,%ecx
c0032b39:	0f 85 99 03 00 00    	jne    c0032ed8 <_svfprintf_r+0xf48>
c0032b3f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032b46:	00 00 00 
c0032b49:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b4c:	e9 da f4 ff ff       	jmp    c003202b <_svfprintf_r+0x9b>
c0032b51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032b58:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032b5f:	0f 8e 5b 02 00 00    	jle    c0032dc0 <_svfprintf_r+0xe30>
c0032b65:	d9 ee                	fldz   
c0032b67:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032b6d:	df e9                	fucomip %st(1),%st
c0032b6f:	dd d8                	fstp   %st(0)
c0032b71:	0f 8a 59 04 00 00    	jp     c0032fd0 <_svfprintf_r+0x1040>
c0032b77:	0f 85 53 04 00 00    	jne    c0032fd0 <_svfprintf_r+0x1040>
c0032b7d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b83:	83 c1 01             	add    $0x1,%ecx
c0032b86:	83 c7 08             	add    $0x8,%edi
c0032b89:	c7 47 f8 d7 98 03 c0 	movl   $0xc00398d7,-0x8(%edi)
c0032b90:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032b97:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b9d:	83 c0 01             	add    $0x1,%eax
c0032ba0:	83 f8 07             	cmp    $0x7,%eax
c0032ba3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ba9:	0f 8f 63 09 00 00    	jg     c0033512 <_svfprintf_r+0x1582>
c0032baf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032bb5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032bbb:	7c 0d                	jl     c0032bca <_svfprintf_r+0xc3a>
c0032bbd:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032bc4:	0f 84 72 fe ff ff    	je     c0032a3c <_svfprintf_r+0xaac>
c0032bca:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032bd0:	83 c7 08             	add    $0x8,%edi
c0032bd3:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032bd6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032bdc:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032bdf:	01 c1                	add    %eax,%ecx
c0032be1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032be7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bed:	83 c0 01             	add    $0x1,%eax
c0032bf0:	83 f8 07             	cmp    $0x7,%eax
c0032bf3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032bf9:	0f 8f dc 0b 00 00    	jg     c00337db <_svfprintf_r+0x184b>
c0032bff:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032c05:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032c08:	85 f6                	test   %esi,%esi
c0032c0a:	0f 8e 2c fe ff ff    	jle    c0032a3c <_svfprintf_r+0xaac>
c0032c10:	83 fe 10             	cmp    $0x10,%esi
c0032c13:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c19:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032c1f:	7f 13                	jg     c0032c34 <_svfprintf_r+0xca4>
c0032c21:	e9 e6 05 00 00       	jmp    c003320c <_svfprintf_r+0x127c>
c0032c26:	66 90                	xchg   %ax,%ax
c0032c28:	83 ee 10             	sub    $0x10,%esi
c0032c2b:	83 fe 10             	cmp    $0x10,%esi
c0032c2e:	0f 8e d8 05 00 00    	jle    c003320c <_svfprintf_r+0x127c>
c0032c34:	83 c0 01             	add    $0x1,%eax
c0032c37:	83 c1 10             	add    $0x10,%ecx
c0032c3a:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c0032c40:	83 c7 08             	add    $0x8,%edi
c0032c43:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032c4a:	83 f8 07             	cmp    $0x7,%eax
c0032c4d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c53:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c59:	7e cd                	jle    c0032c28 <_svfprintf_r+0xc98>
c0032c5b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c5e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032c62:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032c66:	8b 45 08             	mov    0x8(%ebp),%eax
c0032c69:	89 04 24             	mov    %eax,(%esp)
c0032c6c:	e8 9f 3e 00 00       	call   c0036b10 <__ssprint_r>
c0032c71:	85 c0                	test   %eax,%eax
c0032c73:	0f 85 e7 f4 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0032c79:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032c7f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032c82:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c88:	eb 9e                	jmp    c0032c28 <_svfprintf_r+0xc98>
c0032c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032c90:	84 c0                	test   %al,%al
c0032c92:	75 2c                	jne    c0032cc0 <_svfprintf_r+0xd30>
c0032c94:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032c9b:	74 23                	je     c0032cc0 <_svfprintf_r+0xd30>
c0032c9d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032ca3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032ca7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032cad:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032cb0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032cb6:	e9 2d f7 ff ff       	jmp    c00323e8 <_svfprintf_r+0x458>
c0032cbb:	90                   	nop
c0032cbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032cc0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032cc3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032cca:	00 00 00 
c0032ccd:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032cd3:	e9 10 f7 ff ff       	jmp    c00323e8 <_svfprintf_r+0x458>
c0032cd8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032cde:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032ce4:	85 f6                	test   %esi,%esi
c0032ce6:	0f 8e 26 fc ff ff    	jle    c0032912 <_svfprintf_r+0x982>
c0032cec:	83 fe 10             	cmp    $0x10,%esi
c0032cef:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cf5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032cfb:	7f 0b                	jg     c0032d08 <_svfprintf_r+0xd78>
c0032cfd:	eb 65                	jmp    c0032d64 <_svfprintf_r+0xdd4>
c0032cff:	90                   	nop
c0032d00:	83 ee 10             	sub    $0x10,%esi
c0032d03:	83 fe 10             	cmp    $0x10,%esi
c0032d06:	7e 5c                	jle    c0032d64 <_svfprintf_r+0xdd4>
c0032d08:	83 c0 01             	add    $0x1,%eax
c0032d0b:	83 c1 10             	add    $0x10,%ecx
c0032d0e:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c0032d14:	83 c7 08             	add    $0x8,%edi
c0032d17:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032d1e:	83 f8 07             	cmp    $0x7,%eax
c0032d21:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d27:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d2d:	7e d1                	jle    c0032d00 <_svfprintf_r+0xd70>
c0032d2f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d32:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d36:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d3a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d3d:	89 04 24             	mov    %eax,(%esp)
c0032d40:	e8 cb 3d 00 00       	call   c0036b10 <__ssprint_r>
c0032d45:	85 c0                	test   %eax,%eax
c0032d47:	0f 85 13 f4 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0032d4d:	83 ee 10             	sub    $0x10,%esi
c0032d50:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d56:	83 fe 10             	cmp    $0x10,%esi
c0032d59:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d5f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d62:	7f a4                	jg     c0032d08 <_svfprintf_r+0xd78>
c0032d64:	83 c0 01             	add    $0x1,%eax
c0032d67:	01 f1                	add    %esi,%ecx
c0032d69:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c0032d6f:	83 c7 08             	add    $0x8,%edi
c0032d72:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032d75:	83 f8 07             	cmp    $0x7,%eax
c0032d78:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d7e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d84:	0f 8e 88 fb ff ff    	jle    c0032912 <_svfprintf_r+0x982>
c0032d8a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032d90:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032d94:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d97:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d9b:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d9e:	89 04 24             	mov    %eax,(%esp)
c0032da1:	e8 6a 3d 00 00       	call   c0036b10 <__ssprint_r>
c0032da6:	85 c0                	test   %eax,%eax
c0032da8:	0f 85 b2 f3 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0032dae:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032db4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032db7:	e9 56 fb ff ff       	jmp    c0032912 <_svfprintf_r+0x982>
c0032dbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032dc0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032dc7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032dcd:	0f 8e df 05 00 00    	jle    c00333b2 <_svfprintf_r+0x1422>
c0032dd3:	89 07                	mov    %eax,(%edi)
c0032dd5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ddb:	8d 51 01             	lea    0x1(%ecx),%edx
c0032dde:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032de5:	83 c7 08             	add    $0x8,%edi
c0032de8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032dee:	83 c0 01             	add    $0x1,%eax
c0032df1:	83 f8 07             	cmp    $0x7,%eax
c0032df4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dfa:	0f 8f 59 06 00 00    	jg     c0033459 <_svfprintf_r+0x14c9>
c0032e00:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032e06:	83 c0 01             	add    $0x1,%eax
c0032e09:	83 c7 08             	add    $0x8,%edi
c0032e0c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e12:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032e15:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032e1b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032e1e:	01 da                	add    %ebx,%edx
c0032e20:	83 f8 07             	cmp    $0x7,%eax
c0032e23:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e29:	0f 8f f2 05 00 00    	jg     c0033421 <_svfprintf_r+0x1491>
c0032e2f:	d9 ee                	fldz   
c0032e31:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032e37:	df e9                	fucomip %st(1),%st
c0032e39:	dd d8                	fstp   %st(0)
c0032e3b:	7a 06                	jp     c0032e43 <_svfprintf_r+0xeb3>
c0032e3d:	0f 84 33 03 00 00    	je     c0033176 <_svfprintf_r+0x11e6>
c0032e43:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032e49:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032e4f:	83 c1 01             	add    $0x1,%ecx
c0032e52:	89 0f                	mov    %ecx,(%edi)
c0032e54:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032e57:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032e5a:	01 ca                	add    %ecx,%edx
c0032e5c:	83 c0 01             	add    $0x1,%eax
c0032e5f:	83 f8 07             	cmp    $0x7,%eax
c0032e62:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e68:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e6e:	0f 8f 75 05 00 00    	jg     c00333e9 <_svfprintf_r+0x1459>
c0032e74:	83 c7 08             	add    $0x8,%edi
c0032e77:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032e7d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032e83:	89 0f                	mov    %ecx,(%edi)
c0032e85:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032e88:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032e8b:	83 c0 01             	add    $0x1,%eax
c0032e8e:	83 f8 07             	cmp    $0x7,%eax
c0032e91:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e97:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e9d:	0f 8e 96 fb ff ff    	jle    c0032a39 <_svfprintf_r+0xaa9>
c0032ea3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ea9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ead:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032eb0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032eb4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032eb7:	89 04 24             	mov    %eax,(%esp)
c0032eba:	e8 51 3c 00 00       	call   c0036b10 <__ssprint_r>
c0032ebf:	85 c0                	test   %eax,%eax
c0032ec1:	0f 85 99 f2 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0032ec7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ecd:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ed0:	e9 67 fb ff ff       	jmp    c0032a3c <_svfprintf_r+0xaac>
c0032ed5:	8d 76 00             	lea    0x0(%esi),%esi
c0032ed8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ede:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ee2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ee5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ee9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032eec:	89 04 24             	mov    %eax,(%esp)
c0032eef:	e8 1c 3c 00 00       	call   c0036b10 <__ssprint_r>
c0032ef4:	85 c0                	test   %eax,%eax
c0032ef6:	0f 84 43 fc ff ff    	je     c0032b3f <_svfprintf_r+0xbaf>
c0032efc:	e9 5f f2 ff ff       	jmp    c0032160 <_svfprintf_r+0x1d0>
c0032f01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032f08:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f0e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f12:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f15:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f19:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f1c:	89 04 24             	mov    %eax,(%esp)
c0032f1f:	e8 ec 3b 00 00       	call   c0036b10 <__ssprint_r>
c0032f24:	85 c0                	test   %eax,%eax
c0032f26:	0f 85 34 f2 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0032f2c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f32:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f35:	e9 c8 f9 ff ff       	jmp    c0032902 <_svfprintf_r+0x972>
c0032f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f40:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f46:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f4a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f4d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f51:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f54:	89 04 24             	mov    %eax,(%esp)
c0032f57:	e8 b4 3b 00 00       	call   c0036b10 <__ssprint_r>
c0032f5c:	85 c0                	test   %eax,%eax
c0032f5e:	0f 85 fc f1 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0032f64:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f6a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f6d:	e9 53 f9 ff ff       	jmp    c00328c5 <_svfprintf_r+0x935>
c0032f72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f78:	89 c2                	mov    %eax,%edx
c0032f7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f80:	89 c8                	mov    %ecx,%eax
c0032f82:	83 ea 01             	sub    $0x1,%edx
c0032f85:	83 e0 07             	and    $0x7,%eax
c0032f88:	c1 e9 03             	shr    $0x3,%ecx
c0032f8b:	83 c0 30             	add    $0x30,%eax
c0032f8e:	85 c9                	test   %ecx,%ecx
c0032f90:	88 02                	mov    %al,(%edx)
c0032f92:	75 ec                	jne    c0032f80 <_svfprintf_r+0xff0>
c0032f94:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032f9b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0032fa1:	0f 84 5b 01 00 00    	je     c0033102 <_svfprintf_r+0x1172>
c0032fa7:	3c 30                	cmp    $0x30,%al
c0032fa9:	74 0b                	je     c0032fb6 <_svfprintf_r+0x1026>
c0032fab:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0032fb2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0032fb6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032fb9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0032fbf:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032fc5:	e9 1e f4 ff ff       	jmp    c00323e8 <_svfprintf_r+0x458>
c0032fca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fd0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0032fd6:	85 db                	test   %ebx,%ebx
c0032fd8:	0f 8e 66 05 00 00    	jle    c0033544 <_svfprintf_r+0x15b4>
c0032fde:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0032fe4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032fea:	01 d0                	add    %edx,%eax
c0032fec:	89 c3                	mov    %eax,%ebx
c0032fee:	29 d3                	sub    %edx,%ebx
c0032ff0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0032ff6:	89 d0                	mov    %edx,%eax
c0032ff8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0032ffe:	39 d3                	cmp    %edx,%ebx
c0033000:	0f 4f da             	cmovg  %edx,%ebx
c0033003:	85 db                	test   %ebx,%ebx
c0033005:	7e 28                	jle    c003302f <_svfprintf_r+0x109f>
c0033007:	89 07                	mov    %eax,(%edi)
c0033009:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003300f:	01 d9                	add    %ebx,%ecx
c0033011:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033014:	83 c7 08             	add    $0x8,%edi
c0033017:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003301d:	83 c0 01             	add    $0x1,%eax
c0033020:	83 f8 07             	cmp    $0x7,%eax
c0033023:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033029:	0f 8f 58 09 00 00    	jg     c0033987 <_svfprintf_r+0x19f7>
c003302f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033035:	31 c0                	xor    %eax,%eax
c0033037:	85 db                	test   %ebx,%ebx
c0033039:	0f 49 c3             	cmovns %ebx,%eax
c003303c:	29 c6                	sub    %eax,%esi
c003303e:	85 f6                	test   %esi,%esi
c0033040:	0f 8e 40 02 00 00    	jle    c0033286 <_svfprintf_r+0x12f6>
c0033046:	83 fe 10             	cmp    $0x10,%esi
c0033049:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003304f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033055:	7f 15                	jg     c003306c <_svfprintf_r+0x10dc>
c0033057:	e9 db 01 00 00       	jmp    c0033237 <_svfprintf_r+0x12a7>
c003305c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033060:	83 ee 10             	sub    $0x10,%esi
c0033063:	83 fe 10             	cmp    $0x10,%esi
c0033066:	0f 8e cb 01 00 00    	jle    c0033237 <_svfprintf_r+0x12a7>
c003306c:	83 c0 01             	add    $0x1,%eax
c003306f:	83 c1 10             	add    $0x10,%ecx
c0033072:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c0033078:	83 c7 08             	add    $0x8,%edi
c003307b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033082:	83 f8 07             	cmp    $0x7,%eax
c0033085:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003308b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033091:	7e cd                	jle    c0033060 <_svfprintf_r+0x10d0>
c0033093:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033096:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003309a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003309e:	8b 45 08             	mov    0x8(%ebp),%eax
c00330a1:	89 04 24             	mov    %eax,(%esp)
c00330a4:	e8 67 3a 00 00       	call   c0036b10 <__ssprint_r>
c00330a9:	85 c0                	test   %eax,%eax
c00330ab:	0f 85 af f0 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c00330b1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00330b7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00330ba:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330c0:	eb 9e                	jmp    c0033060 <_svfprintf_r+0x10d0>
c00330c2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00330c5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c00330ca:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00330d0:	89 c7                	mov    %eax,%edi
c00330d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00330d8:	89 c8                	mov    %ecx,%eax
c00330da:	83 ef 01             	sub    $0x1,%edi
c00330dd:	f7 e6                	mul    %esi
c00330df:	c1 ea 03             	shr    $0x3,%edx
c00330e2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00330e5:	01 c0                	add    %eax,%eax
c00330e7:	29 c1                	sub    %eax,%ecx
c00330e9:	83 c1 30             	add    $0x30,%ecx
c00330ec:	85 d2                	test   %edx,%edx
c00330ee:	88 0f                	mov    %cl,(%edi)
c00330f0:	89 d1                	mov    %edx,%ecx
c00330f2:	75 e4                	jne    c00330d8 <_svfprintf_r+0x1148>
c00330f4:	89 fa                	mov    %edi,%edx
c00330f6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c00330fc:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0033102:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033105:	29 d0                	sub    %edx,%eax
c0033107:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003310d:	e9 d6 f2 ff ff       	jmp    c00323e8 <_svfprintf_r+0x458>
c0033112:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033118:	83 f9 09             	cmp    $0x9,%ecx
c003311b:	77 a5                	ja     c00330c2 <_svfprintf_r+0x1132>
c003311d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033123:	83 c1 30             	add    $0x30,%ecx
c0033126:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033129:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003312f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033132:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033138:	e9 ab f2 ff ff       	jmp    c00323e8 <_svfprintf_r+0x458>
c003313d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033143:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033147:	8b 45 0c             	mov    0xc(%ebp),%eax
c003314a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003314e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033151:	89 04 24             	mov    %eax,(%esp)
c0033154:	e8 b7 39 00 00       	call   c0036b10 <__ssprint_r>
c0033159:	85 c0                	test   %eax,%eax
c003315b:	0f 85 ff ef ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0033161:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033168:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003316b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033171:	e9 18 f7 ff ff       	jmp    c003288e <_svfprintf_r+0x8fe>
c0033176:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003317c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003317f:	85 f6                	test   %esi,%esi
c0033181:	0f 8e f0 fc ff ff    	jle    c0032e77 <_svfprintf_r+0xee7>
c0033187:	83 fe 10             	cmp    $0x10,%esi
c003318a:	7e 70                	jle    c00331fc <_svfprintf_r+0x126c>
c003318c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033192:	eb 0c                	jmp    c00331a0 <_svfprintf_r+0x1210>
c0033194:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033198:	83 ee 10             	sub    $0x10,%esi
c003319b:	83 fe 10             	cmp    $0x10,%esi
c003319e:	7e 5c                	jle    c00331fc <_svfprintf_r+0x126c>
c00331a0:	83 c0 01             	add    $0x1,%eax
c00331a3:	83 c2 10             	add    $0x10,%edx
c00331a6:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c00331ac:	83 c7 08             	add    $0x8,%edi
c00331af:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00331b6:	83 f8 07             	cmp    $0x7,%eax
c00331b9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00331bf:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00331c5:	7e d1                	jle    c0033198 <_svfprintf_r+0x1208>
c00331c7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00331ca:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00331ce:	89 44 24 04          	mov    %eax,0x4(%esp)
c00331d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00331d5:	89 04 24             	mov    %eax,(%esp)
c00331d8:	e8 33 39 00 00       	call   c0036b10 <__ssprint_r>
c00331dd:	85 c0                	test   %eax,%eax
c00331df:	0f 85 7b ef ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c00331e5:	83 ee 10             	sub    $0x10,%esi
c00331e8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00331ee:	83 fe 10             	cmp    $0x10,%esi
c00331f1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331f7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00331fa:	7f a4                	jg     c00331a0 <_svfprintf_r+0x1210>
c00331fc:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c0033202:	01 f2                	add    %esi,%edx
c0033204:	89 77 04             	mov    %esi,0x4(%edi)
c0033207:	e9 50 fc ff ff       	jmp    c0032e5c <_svfprintf_r+0xecc>
c003320c:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c0033212:	01 f1                	add    %esi,%ecx
c0033214:	89 77 04             	mov    %esi,0x4(%edi)
c0033217:	e9 6f fc ff ff       	jmp    c0032e8b <_svfprintf_r+0xefb>
c003321c:	8b 45 14             	mov    0x14(%ebp),%eax
c003321f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033225:	8b 00                	mov    (%eax),%eax
c0033227:	89 10                	mov    %edx,(%eax)
c0033229:	8b 45 14             	mov    0x14(%ebp),%eax
c003322c:	83 c0 04             	add    $0x4,%eax
c003322f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033232:	e9 f4 ed ff ff       	jmp    c003202b <_svfprintf_r+0x9b>
c0033237:	83 c0 01             	add    $0x1,%eax
c003323a:	01 f1                	add    %esi,%ecx
c003323c:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c0033242:	83 c7 08             	add    $0x8,%edi
c0033245:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033248:	83 f8 07             	cmp    $0x7,%eax
c003324b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033251:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033257:	7e 2d                	jle    c0033286 <_svfprintf_r+0x12f6>
c0033259:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003325f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033263:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033266:	89 44 24 04          	mov    %eax,0x4(%esp)
c003326a:	8b 45 08             	mov    0x8(%ebp),%eax
c003326d:	89 04 24             	mov    %eax,(%esp)
c0033270:	e8 9b 38 00 00       	call   c0036b10 <__ssprint_r>
c0033275:	85 c0                	test   %eax,%eax
c0033277:	0f 85 e3 ee ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c003327d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033283:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033286:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003328c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033292:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033298:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c003329e:	89 c6                	mov    %eax,%esi
c00332a0:	7c 0d                	jl     c00332af <_svfprintf_r+0x131f>
c00332a2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00332a9:	0f 84 5e 05 00 00    	je     c003380d <_svfprintf_r+0x187d>
c00332af:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00332b5:	89 07                	mov    %eax,(%edi)
c00332b7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00332bd:	01 c1                	add    %eax,%ecx
c00332bf:	89 47 04             	mov    %eax,0x4(%edi)
c00332c2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332c8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332ce:	83 c0 01             	add    $0x1,%eax
c00332d1:	83 f8 07             	cmp    $0x7,%eax
c00332d4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332da:	0f 8f d9 06 00 00    	jg     c00339b9 <_svfprintf_r+0x1a29>
c00332e0:	83 c7 08             	add    $0x8,%edi
c00332e3:	89 d0                	mov    %edx,%eax
c00332e5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c00332eb:	89 f2                	mov    %esi,%edx
c00332ed:	29 f3                	sub    %esi,%ebx
c00332ef:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00332f5:	29 c6                	sub    %eax,%esi
c00332f7:	39 de                	cmp    %ebx,%esi
c00332f9:	0f 4e de             	cmovle %esi,%ebx
c00332fc:	85 db                	test   %ebx,%ebx
c00332fe:	7e 29                	jle    c0033329 <_svfprintf_r+0x1399>
c0033300:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033306:	01 d9                	add    %ebx,%ecx
c0033308:	83 c7 08             	add    $0x8,%edi
c003330b:	89 57 f8             	mov    %edx,-0x8(%edi)
c003330e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033311:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033317:	83 c0 01             	add    $0x1,%eax
c003331a:	83 f8 07             	cmp    $0x7,%eax
c003331d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033323:	0f 8f c8 06 00 00    	jg     c00339f1 <_svfprintf_r+0x1a61>
c0033329:	31 c0                	xor    %eax,%eax
c003332b:	85 db                	test   %ebx,%ebx
c003332d:	0f 49 c3             	cmovns %ebx,%eax
c0033330:	29 c6                	sub    %eax,%esi
c0033332:	85 f6                	test   %esi,%esi
c0033334:	0f 8e 02 f7 ff ff    	jle    c0032a3c <_svfprintf_r+0xaac>
c003333a:	83 fe 10             	cmp    $0x10,%esi
c003333d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033343:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033349:	7f 11                	jg     c003335c <_svfprintf_r+0x13cc>
c003334b:	e9 bc fe ff ff       	jmp    c003320c <_svfprintf_r+0x127c>
c0033350:	83 ee 10             	sub    $0x10,%esi
c0033353:	83 fe 10             	cmp    $0x10,%esi
c0033356:	0f 8e b0 fe ff ff    	jle    c003320c <_svfprintf_r+0x127c>
c003335c:	83 c0 01             	add    $0x1,%eax
c003335f:	83 c1 10             	add    $0x10,%ecx
c0033362:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c0033368:	83 c7 08             	add    $0x8,%edi
c003336b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033372:	83 f8 07             	cmp    $0x7,%eax
c0033375:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003337b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033381:	7e cd                	jle    c0033350 <_svfprintf_r+0x13c0>
c0033383:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033386:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003338a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003338e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033391:	89 04 24             	mov    %eax,(%esp)
c0033394:	e8 77 37 00 00       	call   c0036b10 <__ssprint_r>
c0033399:	85 c0                	test   %eax,%eax
c003339b:	0f 85 bf ed ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c00333a1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00333a7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00333aa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333b0:	eb 9e                	jmp    c0033350 <_svfprintf_r+0x13c0>
c00333b2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00333b9:	0f 85 14 fa ff ff    	jne    c0032dd3 <_svfprintf_r+0xe43>
c00333bf:	89 07                	mov    %eax,(%edi)
c00333c1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333c7:	8d 51 01             	lea    0x1(%ecx),%edx
c00333ca:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c00333d1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00333d7:	83 c0 01             	add    $0x1,%eax
c00333da:	83 f8 07             	cmp    $0x7,%eax
c00333dd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333e3:	0f 8e 8b fa ff ff    	jle    c0032e74 <_svfprintf_r+0xee4>
c00333e9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00333ef:	89 44 24 08          	mov    %eax,0x8(%esp)
c00333f3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333fa:	8b 45 08             	mov    0x8(%ebp),%eax
c00333fd:	89 04 24             	mov    %eax,(%esp)
c0033400:	e8 0b 37 00 00       	call   c0036b10 <__ssprint_r>
c0033405:	85 c0                	test   %eax,%eax
c0033407:	0f 85 53 ed ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c003340d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033413:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033416:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003341c:	e9 56 fa ff ff       	jmp    c0032e77 <_svfprintf_r+0xee7>
c0033421:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033427:	89 44 24 08          	mov    %eax,0x8(%esp)
c003342b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003342e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033432:	8b 45 08             	mov    0x8(%ebp),%eax
c0033435:	89 04 24             	mov    %eax,(%esp)
c0033438:	e8 d3 36 00 00       	call   c0036b10 <__ssprint_r>
c003343d:	85 c0                	test   %eax,%eax
c003343f:	0f 85 1b ed ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0033445:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003344b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003344e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033454:	e9 d6 f9 ff ff       	jmp    c0032e2f <_svfprintf_r+0xe9f>
c0033459:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003345f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033463:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033466:	89 44 24 04          	mov    %eax,0x4(%esp)
c003346a:	8b 45 08             	mov    0x8(%ebp),%eax
c003346d:	89 04 24             	mov    %eax,(%esp)
c0033470:	e8 9b 36 00 00       	call   c0036b10 <__ssprint_r>
c0033475:	85 c0                	test   %eax,%eax
c0033477:	0f 85 e3 ec ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c003347d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033483:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033486:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003348c:	e9 6f f9 ff ff       	jmp    c0032e00 <_svfprintf_r+0xe70>
c0033491:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033497:	dd 1c 24             	fstpl  (%esp)
c003349a:	e8 11 35 00 00       	call   c00369b0 <__fpclassifyd>
c003349f:	85 c0                	test   %eax,%eax
c00334a1:	0f 85 a3 01 00 00    	jne    c003364a <_svfprintf_r+0x16ba>
c00334a7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00334ae:	ba a6 98 03 c0       	mov    $0xc00398a6,%edx
c00334b3:	b8 aa 98 03 c0       	mov    $0xc00398aa,%eax
c00334b8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00334bf:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00334c6:	00 00 00 
c00334c9:	0f 4e c2             	cmovle %edx,%eax
c00334cc:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00334d2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c00334d9:	ff ff ff 
c00334dc:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00334e3:	00 00 00 
c00334e6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00334ed:	00 00 00 
c00334f0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00334f7:	00 00 00 
c00334fa:	e9 29 ed ff ff       	jmp    c0032228 <_svfprintf_r+0x298>
c00334ff:	dd 00                	fldl   (%eax)
c0033501:	83 c0 08             	add    $0x8,%eax
c0033504:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c003350a:	89 45 14             	mov    %eax,0x14(%ebp)
c003350d:	e9 e6 ef ff ff       	jmp    c00324f8 <_svfprintf_r+0x568>
c0033512:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033518:	89 44 24 08          	mov    %eax,0x8(%esp)
c003351c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003351f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033523:	8b 45 08             	mov    0x8(%ebp),%eax
c0033526:	89 04 24             	mov    %eax,(%esp)
c0033529:	e8 e2 35 00 00       	call   c0036b10 <__ssprint_r>
c003352e:	85 c0                	test   %eax,%eax
c0033530:	0f 85 2a ec ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0033536:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003353c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003353f:	e9 6b f6 ff ff       	jmp    c0032baf <_svfprintf_r+0xc1f>
c0033544:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003354a:	83 c1 01             	add    $0x1,%ecx
c003354d:	83 c7 08             	add    $0x8,%edi
c0033550:	c7 47 f8 d7 98 03 c0 	movl   $0xc00398d7,-0x8(%edi)
c0033557:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003355e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033564:	83 c0 01             	add    $0x1,%eax
c0033567:	83 f8 07             	cmp    $0x7,%eax
c003356a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033570:	0f 8f ef 02 00 00    	jg     c0033865 <_svfprintf_r+0x18d5>
c0033576:	85 db                	test   %ebx,%ebx
c0033578:	75 17                	jne    c0033591 <_svfprintf_r+0x1601>
c003357a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033580:	85 d2                	test   %edx,%edx
c0033582:	75 0d                	jne    c0033591 <_svfprintf_r+0x1601>
c0033584:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003358b:	0f 84 ab f4 ff ff    	je     c0032a3c <_svfprintf_r+0xaac>
c0033591:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033597:	83 c7 08             	add    $0x8,%edi
c003359a:	89 47 f8             	mov    %eax,-0x8(%edi)
c003359d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00335a3:	89 47 fc             	mov    %eax,-0x4(%edi)
c00335a6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c00335a9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335af:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335b5:	83 c0 01             	add    $0x1,%eax
c00335b8:	83 f8 07             	cmp    $0x7,%eax
c00335bb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335c1:	0f 8f 60 03 00 00    	jg     c0033927 <_svfprintf_r+0x1997>
c00335c7:	f7 db                	neg    %ebx
c00335c9:	85 db                	test   %ebx,%ebx
c00335cb:	0f 8e 21 03 00 00    	jle    c00338f2 <_svfprintf_r+0x1962>
c00335d1:	83 fb 10             	cmp    $0x10,%ebx
c00335d4:	0f 8e c3 02 00 00    	jle    c003389d <_svfprintf_r+0x190d>
c00335da:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c00335e0:	eb 12                	jmp    c00335f4 <_svfprintf_r+0x1664>
c00335e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00335e8:	83 eb 10             	sub    $0x10,%ebx
c00335eb:	83 fb 10             	cmp    $0x10,%ebx
c00335ee:	0f 8e a9 02 00 00    	jle    c003389d <_svfprintf_r+0x190d>
c00335f4:	83 c0 01             	add    $0x1,%eax
c00335f7:	83 c2 10             	add    $0x10,%edx
c00335fa:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c0033600:	83 c7 08             	add    $0x8,%edi
c0033603:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003360a:	83 f8 07             	cmp    $0x7,%eax
c003360d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033613:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033619:	7e cd                	jle    c00335e8 <_svfprintf_r+0x1658>
c003361b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003361e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033622:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033626:	8b 45 08             	mov    0x8(%ebp),%eax
c0033629:	89 04 24             	mov    %eax,(%esp)
c003362c:	e8 df 34 00 00       	call   c0036b10 <__ssprint_r>
c0033631:	85 c0                	test   %eax,%eax
c0033633:	0f 85 27 eb ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0033639:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003363f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033642:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033648:	eb 9e                	jmp    c00335e8 <_svfprintf_r+0x1658>
c003364a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033650:	83 e3 df             	and    $0xffffffdf,%ebx
c0033653:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003365a:	0f 84 05 03 00 00    	je     c0033965 <_svfprintf_r+0x19d5>
c0033660:	83 fb 47             	cmp    $0x47,%ebx
c0033663:	75 16                	jne    c003367b <_svfprintf_r+0x16eb>
c0033665:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003366b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033670:	85 d2                	test   %edx,%edx
c0033672:	0f 45 c2             	cmovne %edx,%eax
c0033675:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c003367b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033681:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033687:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c003368d:	80 cc 01             	or     $0x1,%ah
c0033690:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033696:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003369c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c00336a3:	85 c0                	test   %eax,%eax
c00336a5:	0f 88 ba 05 00 00    	js     c0033c65 <_svfprintf_r+0x1cd5>
c00336ab:	83 fb 46             	cmp    $0x46,%ebx
c00336ae:	0f 94 c0             	sete   %al
c00336b1:	89 c6                	mov    %eax,%esi
c00336b3:	0f 84 d4 03 00 00    	je     c0033a8d <_svfprintf_r+0x1afd>
c00336b9:	83 fb 45             	cmp    $0x45,%ebx
c00336bc:	0f 85 99 05 00 00    	jne    c0033c5b <_svfprintf_r+0x1ccb>
c00336c2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00336c8:	dd 54 24 04          	fstl   0x4(%esp)
c00336cc:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c00336d3:	00 
c00336d4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c00336da:	8d 70 01             	lea    0x1(%eax),%esi
c00336dd:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c00336e3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c00336e7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c00336ed:	89 44 24 18          	mov    %eax,0x18(%esp)
c00336f1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c00336f7:	89 44 24 14          	mov    %eax,0x14(%esp)
c00336fb:	8b 45 08             	mov    0x8(%ebp),%eax
c00336fe:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033702:	89 04 24             	mov    %eax,(%esp)
c0033705:	e8 56 09 00 00       	call   c0034060 <_dtoa_r>
c003370a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033710:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033713:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033719:	d9 ee                	fldz   
c003371b:	d9 c9                	fxch   %st(1)
c003371d:	df e9                	fucomip %st(1),%st
c003371f:	dd d8                	fstp   %st(0)
c0033721:	0f 8a fd 00 00 00    	jp     c0033824 <_svfprintf_r+0x1894>
c0033727:	89 c8                	mov    %ecx,%eax
c0033729:	0f 85 f5 00 00 00    	jne    c0033824 <_svfprintf_r+0x1894>
c003372f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033735:	83 fb 47             	cmp    $0x47,%ebx
c0033738:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003373e:	0f 84 1e 04 00 00    	je     c0033b62 <_svfprintf_r+0x1bd2>
c0033744:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003374b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033751:	0f 8e 65 04 00 00    	jle    c0033bbc <_svfprintf_r+0x1c2c>
c0033757:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003375e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033764:	0f 84 3c 05 00 00    	je     c0033ca6 <_svfprintf_r+0x1d16>
c003376a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033770:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033776:	0f 8f f7 04 00 00    	jg     c0033c73 <_svfprintf_r+0x1ce3>
c003377c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033782:	83 e0 01             	and    $0x1,%eax
c0033785:	0f 85 e2 05 00 00    	jne    c0033d6d <_svfprintf_r+0x1ddd>
c003378b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033791:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033798:	00 00 00 
c003379b:	85 d2                	test   %edx,%edx
c003379d:	0f 49 c2             	cmovns %edx,%eax
c00337a0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00337a6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c00337ad:	0f 85 68 03 00 00    	jne    c0033b1b <_svfprintf_r+0x1b8b>
c00337b3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00337b9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c00337bf:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00337c6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00337cd:	00 00 00 
c00337d0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c00337d6:	e9 4d ea ff ff       	jmp    c0032228 <_svfprintf_r+0x298>
c00337db:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00337e1:	89 44 24 08          	mov    %eax,0x8(%esp)
c00337e5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00337e8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00337ec:	8b 45 08             	mov    0x8(%ebp),%eax
c00337ef:	89 04 24             	mov    %eax,(%esp)
c00337f2:	e8 19 33 00 00       	call   c0036b10 <__ssprint_r>
c00337f7:	85 c0                	test   %eax,%eax
c00337f9:	0f 85 61 e9 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c00337ff:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033805:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033808:	e9 f2 f3 ff ff       	jmp    c0032bff <_svfprintf_r+0xc6f>
c003380d:	89 d0                	mov    %edx,%eax
c003380f:	e9 d1 fa ff ff       	jmp    c00332e5 <_svfprintf_r+0x1355>
c0033814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033818:	8d 50 01             	lea    0x1(%eax),%edx
c003381b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033821:	c6 00 30             	movb   $0x30,(%eax)
c0033824:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c003382a:	39 c1                	cmp    %eax,%ecx
c003382c:	77 ea                	ja     c0033818 <_svfprintf_r+0x1888>
c003382e:	e9 fc fe ff ff       	jmp    c003372f <_svfprintf_r+0x179f>
c0033833:	8b 45 08             	mov    0x8(%ebp),%eax
c0033836:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003383d:	00 
c003383e:	89 04 24             	mov    %eax,(%esp)
c0033841:	e8 4a 1b 00 00       	call   c0035390 <_malloc_r>
c0033846:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033849:	85 c0                	test   %eax,%eax
c003384b:	89 02                	mov    %eax,(%edx)
c003384d:	89 42 10             	mov    %eax,0x10(%edx)
c0033850:	0f 84 15 06 00 00    	je     c0033e6b <_svfprintf_r+0x1edb>
c0033856:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033859:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033860:	e9 6c e7 ff ff       	jmp    c0031fd1 <_svfprintf_r+0x41>
c0033865:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003386b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003386f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033872:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033876:	8b 45 08             	mov    0x8(%ebp),%eax
c0033879:	89 04 24             	mov    %eax,(%esp)
c003387c:	e8 8f 32 00 00       	call   c0036b10 <__ssprint_r>
c0033881:	85 c0                	test   %eax,%eax
c0033883:	0f 85 d7 e8 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0033889:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003388f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033892:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033898:	e9 d9 fc ff ff       	jmp    c0033576 <_svfprintf_r+0x15e6>
c003389d:	83 c0 01             	add    $0x1,%eax
c00338a0:	01 da                	add    %ebx,%edx
c00338a2:	c7 07 40 9a 03 c0    	movl   $0xc0039a40,(%edi)
c00338a8:	83 c7 08             	add    $0x8,%edi
c00338ab:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00338ae:	83 f8 07             	cmp    $0x7,%eax
c00338b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00338b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00338bd:	7e 33                	jle    c00338f2 <_svfprintf_r+0x1962>
c00338bf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338c5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338c9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338cc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338d0:	8b 45 08             	mov    0x8(%ebp),%eax
c00338d3:	89 04 24             	mov    %eax,(%esp)
c00338d6:	e8 35 32 00 00       	call   c0036b10 <__ssprint_r>
c00338db:	85 c0                	test   %eax,%eax
c00338dd:	0f 85 7d e8 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c00338e3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00338e9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338ec:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00338f2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c00338f8:	83 c0 01             	add    $0x1,%eax
c00338fb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033901:	89 1f                	mov    %ebx,(%edi)
c0033903:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033909:	01 da                	add    %ebx,%edx
c003390b:	83 f8 07             	cmp    $0x7,%eax
c003390e:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033911:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033917:	0f 8f 86 f5 ff ff    	jg     c0032ea3 <_svfprintf_r+0xf13>
c003391d:	83 c7 08             	add    $0x8,%edi
c0033920:	89 d1                	mov    %edx,%ecx
c0033922:	e9 15 f1 ff ff       	jmp    c0032a3c <_svfprintf_r+0xaac>
c0033927:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003392d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033931:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033934:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033938:	8b 45 08             	mov    0x8(%ebp),%eax
c003393b:	89 04 24             	mov    %eax,(%esp)
c003393e:	e8 cd 31 00 00       	call   c0036b10 <__ssprint_r>
c0033943:	85 c0                	test   %eax,%eax
c0033945:	0f 85 15 e8 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c003394b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033951:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033954:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003395a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033960:	e9 62 fc ff ff       	jmp    c00335c7 <_svfprintf_r+0x1637>
c0033965:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c003396c:	00 00 00 
c003396f:	e9 07 fd ff ff       	jmp    c003367b <_svfprintf_r+0x16eb>
c0033974:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003397a:	89 04 24             	mov    %eax,(%esp)
c003397d:	e8 0e 31 00 00       	call   c0036a90 <strlen>
c0033982:	e9 6a e8 ff ff       	jmp    c00321f1 <_svfprintf_r+0x261>
c0033987:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003398d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033991:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033994:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033998:	8b 45 08             	mov    0x8(%ebp),%eax
c003399b:	89 04 24             	mov    %eax,(%esp)
c003399e:	e8 6d 31 00 00       	call   c0036b10 <__ssprint_r>
c00339a3:	85 c0                	test   %eax,%eax
c00339a5:	0f 85 b5 e7 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c00339ab:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339b1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339b4:	e9 76 f6 ff ff       	jmp    c003302f <_svfprintf_r+0x109f>
c00339b9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339bf:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339c3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339c6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339ca:	8b 45 08             	mov    0x8(%ebp),%eax
c00339cd:	89 04 24             	mov    %eax,(%esp)
c00339d0:	e8 3b 31 00 00       	call   c0036b10 <__ssprint_r>
c00339d5:	85 c0                	test   %eax,%eax
c00339d7:	0f 85 83 e7 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c00339dd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00339e3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339e6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339ec:	e9 f4 f8 ff ff       	jmp    c00332e5 <_svfprintf_r+0x1355>
c00339f1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339f7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339fb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339fe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a02:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a05:	89 04 24             	mov    %eax,(%esp)
c0033a08:	e8 03 31 00 00       	call   c0036b10 <__ssprint_r>
c0033a0d:	85 c0                	test   %eax,%eax
c0033a0f:	0f 85 4b e7 ff ff    	jne    c0032160 <_svfprintf_r+0x1d0>
c0033a15:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033a1b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a1e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033a24:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a2a:	e9 fa f8 ff ff       	jmp    c0033329 <_svfprintf_r+0x1399>
c0033a2f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033a35:	b0 06                	mov    $0x6,%al
c0033a37:	89 75 14             	mov    %esi,0x14(%ebp)
c0033a3a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a41:	00 00 00 
c0033a44:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033a4b:	00 00 00 
c0033a4e:	83 fa 06             	cmp    $0x6,%edx
c0033a51:	0f 46 c2             	cmovbe %edx,%eax
c0033a54:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033a5a:	85 c0                	test   %eax,%eax
c0033a5c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033a62:	c7 85 28 ff ff ff d0 	movl   $0xc00398d0,-0xd8(%ebp)
c0033a69:	98 03 c0 
c0033a6c:	0f 49 d0             	cmovns %eax,%edx
c0033a6f:	31 db                	xor    %ebx,%ebx
c0033a71:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033a77:	e9 b7 e7 ff ff       	jmp    c0032233 <_svfprintf_r+0x2a3>
c0033a7c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033a83:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033a88:	e9 9d ea ff ff       	jmp    c003252a <_svfprintf_r+0x59a>
c0033a8d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033a92:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033a98:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033a9c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033aa2:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033aa6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033aac:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033ab0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033ab6:	dd 54 24 04          	fstl   0x4(%esp)
c0033aba:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033abe:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033ac4:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033ac8:	8b 45 08             	mov    0x8(%ebp),%eax
c0033acb:	89 04 24             	mov    %eax,(%esp)
c0033ace:	e8 8d 05 00 00       	call   c0034060 <_dtoa_r>
c0033ad3:	83 fb 47             	cmp    $0x47,%ebx
c0033ad6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033adc:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033ae2:	75 09                	jne    c0033aed <_svfprintf_r+0x1b5d>
c0033ae4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033aeb:	74 5b                	je     c0033b48 <_svfprintf_r+0x1bb8>
c0033aed:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033af3:	89 f0                	mov    %esi,%eax
c0033af5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033afb:	01 d1                	add    %edx,%ecx
c0033afd:	84 c0                	test   %al,%al
c0033aff:	0f 84 14 fc ff ff    	je     c0033719 <_svfprintf_r+0x1789>
c0033b05:	80 3a 30             	cmpb   $0x30,(%edx)
c0033b08:	0f 84 37 02 00 00    	je     c0033d45 <_svfprintf_r+0x1db5>
c0033b0e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b14:	01 c1                	add    %eax,%ecx
c0033b16:	e9 fe fb ff ff       	jmp    c0033719 <_svfprintf_r+0x1789>
c0033b1b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b21:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033b27:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033b2c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b33:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b3a:	00 00 00 
c0033b3d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033b43:	e9 e4 e6 ff ff       	jmp    c003222c <_svfprintf_r+0x29c>
c0033b48:	dd d8                	fstp   %st(0)
c0033b4a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033b50:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033b56:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033b5c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033b62:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b68:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033b6b:	7c 48                	jl     c0033bb5 <_svfprintf_r+0x1c25>
c0033b6d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033b73:	7c 40                	jl     c0033bb5 <_svfprintf_r+0x1c25>
c0033b75:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033b7b:	e9 ea fb ff ff       	jmp    c003376a <_svfprintf_r+0x17da>
c0033b80:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033b86:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033b8d:	89 75 14             	mov    %esi,0x14(%ebp)
c0033b90:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b97:	00 00 00 
c0033b9a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033ba0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033ba6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033bad:	00 00 00 
c0033bb0:	e9 73 e6 ff ff       	jmp    c0032228 <_svfprintf_r+0x298>
c0033bb5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033bbc:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033bbf:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033bc6:	85 c9                	test   %ecx,%ecx
c0033bc8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033bce:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033bd4:	0f 88 2c 02 00 00    	js     c0033e06 <_svfprintf_r+0x1e76>
c0033bda:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033be1:	83 f9 09             	cmp    $0x9,%ecx
c0033be4:	0f 8f ea 00 00 00    	jg     c0033cd4 <_svfprintf_r+0x1d44>
c0033bea:	83 c1 30             	add    $0x30,%ecx
c0033bed:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033bf4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033bfa:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033c00:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033c06:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033c0c:	29 d0                	sub    %edx,%eax
c0033c0e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033c14:	89 da                	mov    %ebx,%edx
c0033c16:	01 c2                	add    %eax,%edx
c0033c18:	83 fb 01             	cmp    $0x1,%ebx
c0033c1b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c21:	0f 8e 21 02 00 00    	jle    c0033e48 <_svfprintf_r+0x1eb8>
c0033c27:	31 c0                	xor    %eax,%eax
c0033c29:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033c30:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033c37:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c3e:	00 00 00 
c0033c41:	e9 60 fb ff ff       	jmp    c00337a6 <_svfprintf_r+0x1816>
c0033c46:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033c4c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c53:	00 00 00 
c0033c56:	e9 68 e4 ff ff       	jmp    c00320c3 <_svfprintf_r+0x133>
c0033c5b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033c60:	e9 2d fe ff ff       	jmp    c0033a92 <_svfprintf_r+0x1b02>
c0033c65:	d9 e0                	fchs   
c0033c67:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033c6e:	e9 38 fa ff ff       	jmp    c00336ab <_svfprintf_r+0x171b>
c0033c73:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033c79:	ba 01 00 00 00       	mov    $0x1,%edx
c0033c7e:	85 c9                	test   %ecx,%ecx
c0033c80:	0f 8e 5a 01 00 00    	jle    c0033de0 <_svfprintf_r+0x1e50>
c0033c86:	31 c0                	xor    %eax,%eax
c0033c88:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033c8e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033c95:	00 00 00 
c0033c98:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c9e:	0f 49 c2             	cmovns %edx,%eax
c0033ca1:	e9 00 fb ff ff       	jmp    c00337a6 <_svfprintf_r+0x1816>
c0033ca6:	85 c0                	test   %eax,%eax
c0033ca8:	0f 8e 06 01 00 00    	jle    c0033db4 <_svfprintf_r+0x1e24>
c0033cae:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033cb4:	85 f6                	test   %esi,%esi
c0033cb6:	0f 85 d4 00 00 00    	jne    c0033d90 <_svfprintf_r+0x1e00>
c0033cbc:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033cc3:	0f 85 c7 00 00 00    	jne    c0033d90 <_svfprintf_r+0x1e00>
c0033cc9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033ccf:	e9 d2 fa ff ff       	jmp    c00337a6 <_svfprintf_r+0x1816>
c0033cd4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033cda:	89 f3                	mov    %esi,%ebx
c0033cdc:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033ce1:	83 eb 01             	sub    $0x1,%ebx
c0033ce4:	f7 e9                	imul   %ecx
c0033ce6:	89 c8                	mov    %ecx,%eax
c0033ce8:	c1 f8 1f             	sar    $0x1f,%eax
c0033ceb:	c1 fa 02             	sar    $0x2,%edx
c0033cee:	29 c2                	sub    %eax,%edx
c0033cf0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033cf3:	01 c0                	add    %eax,%eax
c0033cf5:	29 c1                	sub    %eax,%ecx
c0033cf7:	83 fa 09             	cmp    $0x9,%edx
c0033cfa:	8d 41 30             	lea    0x30(%ecx),%eax
c0033cfd:	89 d1                	mov    %edx,%ecx
c0033cff:	88 03                	mov    %al,(%ebx)
c0033d01:	7f d9                	jg     c0033cdc <_svfprintf_r+0x1d4c>
c0033d03:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033d06:	83 c1 30             	add    $0x30,%ecx
c0033d09:	39 f0                	cmp    %esi,%eax
c0033d0b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033d0e:	0f 83 6a 01 00 00    	jae    c0033e7e <_svfprintf_r+0x1eee>
c0033d14:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d1a:	eb 07                	jmp    c0033d23 <_svfprintf_r+0x1d93>
c0033d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033d20:	0f b6 08             	movzbl (%eax),%ecx
c0033d23:	83 c0 01             	add    $0x1,%eax
c0033d26:	83 c2 01             	add    $0x1,%edx
c0033d29:	39 f0                	cmp    %esi,%eax
c0033d2b:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033d2e:	75 f0                	jne    c0033d20 <_svfprintf_r+0x1d90>
c0033d30:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d36:	29 d8                	sub    %ebx,%eax
c0033d38:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d3e:	01 d0                	add    %edx,%eax
c0033d40:	e9 bb fe ff ff       	jmp    c0033c00 <_svfprintf_r+0x1c70>
c0033d45:	d9 ee                	fldz   
c0033d47:	d9 c9                	fxch   %st(1)
c0033d49:	db e9                	fucomi %st(1),%st
c0033d4b:	dd d9                	fstp   %st(1)
c0033d4d:	7a 06                	jp     c0033d55 <_svfprintf_r+0x1dc5>
c0033d4f:	0f 84 b9 fd ff ff    	je     c0033b0e <_svfprintf_r+0x1b7e>
c0033d55:	b8 01 00 00 00       	mov    $0x1,%eax
c0033d5a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033d60:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033d66:	01 c1                	add    %eax,%ecx
c0033d68:	e9 ac f9 ff ff       	jmp    c0033719 <_svfprintf_r+0x1789>
c0033d6d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d73:	31 c0                	xor    %eax,%eax
c0033d75:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033d7c:	00 00 00 
c0033d7f:	83 c2 01             	add    $0x1,%edx
c0033d82:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033d88:	0f 49 c2             	cmovns %edx,%eax
c0033d8b:	e9 16 fa ff ff       	jmp    c00337a6 <_svfprintf_r+0x1816>
c0033d90:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d96:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033d9c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033da0:	89 c2                	mov    %eax,%edx
c0033da2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033da8:	31 c0                	xor    %eax,%eax
c0033daa:	85 d2                	test   %edx,%edx
c0033dac:	0f 49 c2             	cmovns %edx,%eax
c0033daf:	e9 f2 f9 ff ff       	jmp    c00337a6 <_svfprintf_r+0x1816>
c0033db4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033dba:	85 db                	test   %ebx,%ebx
c0033dbc:	75 2f                	jne    c0033ded <_svfprintf_r+0x1e5d>
c0033dbe:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033dc5:	75 26                	jne    c0033ded <_svfprintf_r+0x1e5d>
c0033dc7:	b8 01 00 00 00       	mov    $0x1,%eax
c0033dcc:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033dd3:	00 00 00 
c0033dd6:	e9 cb f9 ff ff       	jmp    c00337a6 <_svfprintf_r+0x1816>
c0033ddb:	90                   	nop
c0033ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033de0:	b2 02                	mov    $0x2,%dl
c0033de2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033de8:	e9 99 fe ff ff       	jmp    c0033c86 <_svfprintf_r+0x1cf6>
c0033ded:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033df3:	31 c0                	xor    %eax,%eax
c0033df5:	83 c2 02             	add    $0x2,%edx
c0033df8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033dfe:	0f 49 c2             	cmovns %edx,%eax
c0033e01:	e9 a0 f9 ff ff       	jmp    c00337a6 <_svfprintf_r+0x1816>
c0033e06:	f7 d9                	neg    %ecx
c0033e08:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033e0f:	e9 cd fd ff ff       	jmp    c0033be1 <_svfprintf_r+0x1c51>
c0033e14:	8b 55 14             	mov    0x14(%ebp),%edx
c0033e17:	8b 45 14             	mov    0x14(%ebp),%eax
c0033e1a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033e20:	8b 12                	mov    (%edx),%edx
c0033e22:	83 c0 04             	add    $0x4,%eax
c0033e25:	89 45 14             	mov    %eax,0x14(%ebp)
c0033e28:	85 d2                	test   %edx,%edx
c0033e2a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033e30:	0f 89 a9 e2 ff ff    	jns    c00320df <_svfprintf_r+0x14f>
c0033e36:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033e3d:	ff ff ff 
c0033e40:	89 c8                	mov    %ecx,%eax
c0033e42:	e9 76 e2 ff ff       	jmp    c00320bd <_svfprintf_r+0x12d>
c0033e47:	90                   	nop
c0033e48:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e4e:	83 e0 01             	and    $0x1,%eax
c0033e51:	0f 85 d0 fd ff ff    	jne    c0033c27 <_svfprintf_r+0x1c97>
c0033e57:	85 d2                	test   %edx,%edx
c0033e59:	0f 49 c2             	cmovns %edx,%eax
c0033e5c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033e63:	00 00 00 
c0033e66:	e9 3b f9 ff ff       	jmp    c00337a6 <_svfprintf_r+0x1816>
c0033e6b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e6e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033e74:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033e79:	e9 f5 e2 ff ff       	jmp    c0032173 <_svfprintf_r+0x1e3>
c0033e7e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033e84:	e9 77 fd ff ff       	jmp    c0033c00 <_svfprintf_r+0x1c70>
c0033e89:	66 90                	xchg   %ax,%ax
c0033e8b:	66 90                	xchg   %ax,%ax
c0033e8d:	66 90                	xchg   %ax,%ax
c0033e8f:	90                   	nop

c0033e90 <quorem>:
c0033e90:	55                   	push   %ebp
c0033e91:	89 c1                	mov    %eax,%ecx
c0033e93:	89 e5                	mov    %esp,%ebp
c0033e95:	57                   	push   %edi
c0033e96:	89 d7                	mov    %edx,%edi
c0033e98:	56                   	push   %esi
c0033e99:	53                   	push   %ebx
c0033e9a:	83 ec 3c             	sub    $0x3c,%esp
c0033e9d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033ea0:	8b 42 10             	mov    0x10(%edx),%eax
c0033ea3:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033ea6:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033ea9:	89 ca                	mov    %ecx,%edx
c0033eab:	0f 8f 9f 01 00 00    	jg     c0034050 <quorem+0x1c0>
c0033eb1:	83 e8 01             	sub    $0x1,%eax
c0033eb4:	83 c7 14             	add    $0x14,%edi
c0033eb7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033eba:	c1 e0 02             	shl    $0x2,%eax
c0033ebd:	83 c2 14             	add    $0x14,%edx
c0033ec0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033ec3:	01 d0                	add    %edx,%eax
c0033ec5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033ec8:	8b 13                	mov    (%ebx),%edx
c0033eca:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033ecd:	8b 00                	mov    (%eax),%eax
c0033ecf:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033ed2:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033ed5:	31 d2                	xor    %edx,%edx
c0033ed7:	f7 f1                	div    %ecx
c0033ed9:	85 c0                	test   %eax,%eax
c0033edb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033ede:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033ee1:	0f 84 b5 00 00 00    	je     c0033f9c <quorem+0x10c>
c0033ee7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033eea:	31 f6                	xor    %esi,%esi
c0033eec:	89 fa                	mov    %edi,%edx
c0033eee:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033ef1:	89 f7                	mov    %esi,%edi
c0033ef3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033efa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033f00:	83 c2 04             	add    $0x4,%edx
c0033f03:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f06:	83 c0 04             	add    $0x4,%eax
c0033f09:	0f b7 ce             	movzwl %si,%ecx
c0033f0c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033f10:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033f13:	c1 ee 10             	shr    $0x10,%esi
c0033f16:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033f1a:	89 cb                	mov    %ecx,%ebx
c0033f1c:	0f b7 c9             	movzwl %cx,%ecx
c0033f1f:	c1 eb 10             	shr    $0x10,%ebx
c0033f22:	29 cf                	sub    %ecx,%edi
c0033f24:	01 f3                	add    %esi,%ebx
c0033f26:	89 de                	mov    %ebx,%esi
c0033f28:	0f b7 db             	movzwl %bx,%ebx
c0033f2b:	c1 ee 10             	shr    $0x10,%esi
c0033f2e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033f31:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033f34:	0f b7 ce             	movzwl %si,%ecx
c0033f37:	01 f9                	add    %edi,%ecx
c0033f39:	c1 ee 10             	shr    $0x10,%esi
c0033f3c:	29 de                	sub    %ebx,%esi
c0033f3e:	89 cb                	mov    %ecx,%ebx
c0033f40:	c1 fb 10             	sar    $0x10,%ebx
c0033f43:	0f b7 c9             	movzwl %cx,%ecx
c0033f46:	01 de                	add    %ebx,%esi
c0033f48:	89 f7                	mov    %esi,%edi
c0033f4a:	c1 e6 10             	shl    $0x10,%esi
c0033f4d:	09 ce                	or     %ecx,%esi
c0033f4f:	c1 ff 10             	sar    $0x10,%edi
c0033f52:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033f55:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033f58:	73 a6                	jae    c0033f00 <quorem+0x70>
c0033f5a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033f5d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033f60:	8b 10                	mov    (%eax),%edx
c0033f62:	85 d2                	test   %edx,%edx
c0033f64:	75 36                	jne    c0033f9c <quorem+0x10c>
c0033f66:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033f69:	89 c2                	mov    %eax,%edx
c0033f6b:	83 e8 04             	sub    $0x4,%eax
c0033f6e:	39 c1                	cmp    %eax,%ecx
c0033f70:	73 21                	jae    c0033f93 <quorem+0x103>
c0033f72:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f75:	85 f6                	test   %esi,%esi
c0033f77:	75 1a                	jne    c0033f93 <quorem+0x103>
c0033f79:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f7c:	eb 08                	jmp    c0033f86 <quorem+0xf6>
c0033f7e:	66 90                	xchg   %ax,%ax
c0033f80:	8b 18                	mov    (%eax),%ebx
c0033f82:	85 db                	test   %ebx,%ebx
c0033f84:	75 0a                	jne    c0033f90 <quorem+0x100>
c0033f86:	83 e8 04             	sub    $0x4,%eax
c0033f89:	83 ea 01             	sub    $0x1,%edx
c0033f8c:	39 c1                	cmp    %eax,%ecx
c0033f8e:	72 f0                	jb     c0033f80 <quorem+0xf0>
c0033f90:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033f93:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033f96:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f99:	89 50 10             	mov    %edx,0x10(%eax)
c0033f9c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c0033f9f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033fa3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033fa6:	89 04 24             	mov    %eax,(%esp)
c0033fa9:	e8 a2 23 00 00       	call   c0036350 <__mcmp>
c0033fae:	85 c0                	test   %eax,%eax
c0033fb0:	0f 88 8e 00 00 00    	js     c0034044 <quorem+0x1b4>
c0033fb6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0033fb9:	31 f6                	xor    %esi,%esi
c0033fbb:	83 c0 01             	add    $0x1,%eax
c0033fbe:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033fc1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033fc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033fc8:	83 c7 04             	add    $0x4,%edi
c0033fcb:	8b 4f fc             	mov    -0x4(%edi),%ecx
c0033fce:	83 c0 04             	add    $0x4,%eax
c0033fd1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0033fd4:	0f b7 d1             	movzwl %cx,%edx
c0033fd7:	29 d6                	sub    %edx,%esi
c0033fd9:	0f b7 d3             	movzwl %bx,%edx
c0033fdc:	01 f2                	add    %esi,%edx
c0033fde:	c1 e9 10             	shr    $0x10,%ecx
c0033fe1:	c1 eb 10             	shr    $0x10,%ebx
c0033fe4:	29 cb                	sub    %ecx,%ebx
c0033fe6:	89 d1                	mov    %edx,%ecx
c0033fe8:	c1 f9 10             	sar    $0x10,%ecx
c0033feb:	0f b7 d2             	movzwl %dx,%edx
c0033fee:	01 cb                	add    %ecx,%ebx
c0033ff0:	89 de                	mov    %ebx,%esi
c0033ff2:	c1 e3 10             	shl    $0x10,%ebx
c0033ff5:	09 d3                	or     %edx,%ebx
c0033ff7:	c1 fe 10             	sar    $0x10,%esi
c0033ffa:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c0033ffd:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0034000:	73 c6                	jae    c0033fc8 <quorem+0x138>
c0034002:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034005:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034008:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c003400b:	8b 02                	mov    (%edx),%eax
c003400d:	85 c0                	test   %eax,%eax
c003400f:	75 33                	jne    c0034044 <quorem+0x1b4>
c0034011:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034014:	8d 42 fc             	lea    -0x4(%edx),%eax
c0034017:	39 c1                	cmp    %eax,%ecx
c0034019:	73 20                	jae    c003403b <quorem+0x1ab>
c003401b:	8b 72 fc             	mov    -0x4(%edx),%esi
c003401e:	85 f6                	test   %esi,%esi
c0034020:	75 19                	jne    c003403b <quorem+0x1ab>
c0034022:	89 fa                	mov    %edi,%edx
c0034024:	eb 08                	jmp    c003402e <quorem+0x19e>
c0034026:	66 90                	xchg   %ax,%ax
c0034028:	8b 18                	mov    (%eax),%ebx
c003402a:	85 db                	test   %ebx,%ebx
c003402c:	75 0a                	jne    c0034038 <quorem+0x1a8>
c003402e:	83 e8 04             	sub    $0x4,%eax
c0034031:	83 ea 01             	sub    $0x1,%edx
c0034034:	39 c1                	cmp    %eax,%ecx
c0034036:	72 f0                	jb     c0034028 <quorem+0x198>
c0034038:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003403b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003403e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034041:	89 78 10             	mov    %edi,0x10(%eax)
c0034044:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034047:	83 c4 3c             	add    $0x3c,%esp
c003404a:	5b                   	pop    %ebx
c003404b:	5e                   	pop    %esi
c003404c:	5f                   	pop    %edi
c003404d:	5d                   	pop    %ebp
c003404e:	c3                   	ret    
c003404f:	90                   	nop
c0034050:	83 c4 3c             	add    $0x3c,%esp
c0034053:	31 c0                	xor    %eax,%eax
c0034055:	5b                   	pop    %ebx
c0034056:	5e                   	pop    %esi
c0034057:	5f                   	pop    %edi
c0034058:	5d                   	pop    %ebp
c0034059:	c3                   	ret    
c003405a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034060 <_dtoa_r>:
c0034060:	55                   	push   %ebp
c0034061:	89 e5                	mov    %esp,%ebp
c0034063:	57                   	push   %edi
c0034064:	56                   	push   %esi
c0034065:	53                   	push   %ebx
c0034066:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003406c:	8b 75 08             	mov    0x8(%ebp),%esi
c003406f:	dd 45 0c             	fldl   0xc(%ebp)
c0034072:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034075:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034078:	8b 46 40             	mov    0x40(%esi),%eax
c003407b:	85 c0                	test   %eax,%eax
c003407d:	74 23                	je     c00340a2 <_dtoa_r+0x42>
c003407f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034082:	ba 01 00 00 00       	mov    $0x1,%edx
c0034087:	d3 e2                	shl    %cl,%edx
c0034089:	89 48 04             	mov    %ecx,0x4(%eax)
c003408c:	89 50 08             	mov    %edx,0x8(%eax)
c003408f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034093:	89 34 24             	mov    %esi,(%esp)
c0034096:	e8 95 1b 00 00       	call   c0035c30 <_Bfree>
c003409b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c00340a2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00340a5:	85 ff                	test   %edi,%edi
c00340a7:	0f 88 3b 02 00 00    	js     c00342e8 <_dtoa_r+0x288>
c00340ad:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c00340b3:	89 f8                	mov    %edi,%eax
c00340b5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c00340ba:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c00340bf:	0f 84 e3 01 00 00    	je     c00342a8 <_dtoa_r+0x248>
c00340c5:	dd 45 c0             	fldl   -0x40(%ebp)
c00340c8:	d9 ee                	fldz   
c00340ca:	d9 c9                	fxch   %st(1)
c00340cc:	db e9                	fucomi %st(1),%st
c00340ce:	dd d9                	fstp   %st(1)
c00340d0:	7a 36                	jp     c0034108 <_dtoa_r+0xa8>
c00340d2:	75 34                	jne    c0034108 <_dtoa_r+0xa8>
c00340d4:	dd d8                	fstp   %st(0)
c00340d6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c00340d9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00340dc:	85 c9                	test   %ecx,%ecx
c00340de:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c00340e4:	0f 84 4e 02 00 00    	je     c0034338 <_dtoa_r+0x2d8>
c00340ea:	8b 45 24             	mov    0x24(%ebp),%eax
c00340ed:	c7 00 d8 98 03 c0    	movl   $0xc00398d8,(%eax)
c00340f3:	b8 d7 98 03 c0       	mov    $0xc00398d7,%eax
c00340f8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00340fe:	5b                   	pop    %ebx
c00340ff:	5e                   	pop    %esi
c0034100:	5f                   	pop    %edi
c0034101:	5d                   	pop    %ebp
c0034102:	c3                   	ret    
c0034103:	90                   	nop
c0034104:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034108:	8d 45 e0             	lea    -0x20(%ebp),%eax
c003410b:	89 fb                	mov    %edi,%ebx
c003410d:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034111:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0034114:	dd 54 24 04          	fstl   0x4(%esp)
c0034118:	89 44 24 0c          	mov    %eax,0xc(%esp)
c003411c:	dd 5d b8             	fstpl  -0x48(%ebp)
c003411f:	89 34 24             	mov    %esi,(%esp)
c0034122:	c1 eb 14             	shr    $0x14,%ebx
c0034125:	e8 76 25 00 00       	call   c00366a0 <__d2b>
c003412a:	85 db                	test   %ebx,%ebx
c003412c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003412f:	0f 85 db 01 00 00    	jne    c0034310 <_dtoa_r+0x2b0>
c0034135:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034138:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003413b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003413e:	01 c3                	add    %eax,%ebx
c0034140:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034146:	0f 8c ec 07 00 00    	jl     c0034938 <_dtoa_r+0x8d8>
c003414c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003414f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034154:	89 f8                	mov    %edi,%eax
c0034156:	29 d9                	sub    %ebx,%ecx
c0034158:	d3 e0                	shl    %cl,%eax
c003415a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034160:	d3 ea                	shr    %cl,%edx
c0034162:	09 d0                	or     %edx,%eax
c0034164:	31 d2                	xor    %edx,%edx
c0034166:	83 eb 01             	sub    $0x1,%ebx
c0034169:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003416c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003416f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034172:	df 6d c8             	fildll -0x38(%ebp)
c0034175:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034178:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003417f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034186:	dd 45 b8             	fldl   -0x48(%ebp)
c0034189:	d8 25 70 9a 03 c0    	fsubs  0xc0039a70
c003418f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034192:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034195:	dc 0d 88 9a 03 c0    	fmull  0xc0039a88
c003419b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003419f:	b4 0c                	mov    $0xc,%ah
c00341a1:	dc 05 90 9a 03 c0    	faddl  0xc0039a90
c00341a7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00341ab:	db 45 d4             	fildl  -0x2c(%ebp)
c00341ae:	dc 0d 98 9a 03 c0    	fmull  0xc0039a98
c00341b4:	de c1                	faddp  %st,%st(1)
c00341b6:	d9 6d d0             	fldcw  -0x30(%ebp)
c00341b9:	db 55 b8             	fistl  -0x48(%ebp)
c00341bc:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00341bf:	d9 ee                	fldz   
c00341c1:	df e9                	fucomip %st(1),%st
c00341c3:	0f 87 27 07 00 00    	ja     c00348f0 <_dtoa_r+0x890>
c00341c9:	dd d8                	fstp   %st(0)
c00341cb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c00341cf:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c00341d6:	77 24                	ja     c00341fc <_dtoa_r+0x19c>
c00341d8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00341db:	dd 04 c5 60 9b 03 c0 	fldl   -0x3ffc64a0(,%eax,8)
c00341e2:	dd 45 c0             	fldl   -0x40(%ebp)
c00341e5:	d9 c9                	fxch   %st(1)
c00341e7:	df e9                	fucomip %st(1),%st
c00341e9:	dd d8                	fstp   %st(0)
c00341eb:	0f 86 5f 07 00 00    	jbe    c0034950 <_dtoa_r+0x8f0>
c00341f1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00341f5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00341fc:	89 d0                	mov    %edx,%eax
c00341fe:	29 d8                	sub    %ebx,%eax
c0034200:	83 e8 01             	sub    $0x1,%eax
c0034203:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c003420a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c003420d:	0f 88 0d 07 00 00    	js     c0034920 <_dtoa_r+0x8c0>
c0034213:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034216:	85 c0                	test   %eax,%eax
c0034218:	0f 88 ea 06 00 00    	js     c0034908 <_dtoa_r+0x8a8>
c003421e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034221:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034224:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003422b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003422f:	0f 87 0b 03 00 00    	ja     c0034540 <_dtoa_r+0x4e0>
c0034235:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034239:	0f 8e 23 10 00 00    	jle    c0035262 <_dtoa_r+0x1202>
c003423f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034243:	31 c0                	xor    %eax,%eax
c0034245:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034249:	0f 84 43 0d 00 00    	je     c0034f92 <_dtoa_r+0xf32>
c003424f:	0f 8e f3 00 00 00    	jle    c0034348 <_dtoa_r+0x2e8>
c0034255:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034259:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034260:	0f 84 f3 00 00 00    	je     c0034359 <_dtoa_r+0x2f9>
c0034266:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003426a:	0f 85 d7 02 00 00    	jne    c0034547 <_dtoa_r+0x4e7>
c0034270:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034273:	03 5d 18             	add    0x18(%ebp),%ebx
c0034276:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034279:	83 c3 01             	add    $0x1,%ebx
c003427c:	83 fb 0e             	cmp    $0xe,%ebx
c003427f:	0f 96 c2             	setbe  %dl
c0034282:	85 db                	test   %ebx,%ebx
c0034284:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034287:	0f 8e a7 08 00 00    	jle    c0034b34 <_dtoa_r+0xad4>
c003428d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034290:	83 fb 0e             	cmp    $0xe,%ebx
c0034293:	89 df                	mov    %ebx,%edi
c0034295:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034299:	20 45 b4             	and    %al,-0x4c(%ebp)
c003429c:	e9 d6 00 00 00       	jmp    c0034377 <_dtoa_r+0x317>
c00342a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00342a8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00342ab:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00342ae:	85 d2                	test   %edx,%edx
c00342b0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c00342b6:	b8 69 9a 03 c0       	mov    $0xc0039a69,%eax
c00342bb:	74 43                	je     c0034300 <_dtoa_r+0x2a0>
c00342bd:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00342c0:	85 db                	test   %ebx,%ebx
c00342c2:	0f 84 30 fe ff ff    	je     c00340f8 <_dtoa_r+0x98>
c00342c8:	8b 75 24             	mov    0x24(%ebp),%esi
c00342cb:	8d 50 08             	lea    0x8(%eax),%edx
c00342ce:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c00342d2:	8d 48 03             	lea    0x3(%eax),%ecx
c00342d5:	0f 44 d1             	cmove  %ecx,%edx
c00342d8:	89 16                	mov    %edx,(%esi)
c00342da:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00342e0:	5b                   	pop    %ebx
c00342e1:	5e                   	pop    %esi
c00342e2:	5f                   	pop    %edi
c00342e3:	5d                   	pop    %ebp
c00342e4:	c3                   	ret    
c00342e5:	8d 76 00             	lea    0x0(%esi),%esi
c00342e8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c00342ee:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c00342f4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c00342f7:	e9 b7 fd ff ff       	jmp    c00340b3 <_dtoa_r+0x53>
c00342fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034300:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0034306:	ba 60 9a 03 c0       	mov    $0xc0039a60,%edx
c003430b:	0f 44 c2             	cmove  %edx,%eax
c003430e:	eb ad                	jmp    c00342bd <_dtoa_r+0x25d>
c0034310:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034313:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034319:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003431c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034323:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034328:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003432d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034330:	e9 51 fe ff ff       	jmp    c0034186 <_dtoa_r+0x126>
c0034335:	8d 76 00             	lea    0x0(%esi),%esi
c0034338:	b8 d7 98 03 c0       	mov    $0xc00398d7,%eax
c003433d:	e9 b6 fd ff ff       	jmp    c00340f8 <_dtoa_r+0x98>
c0034342:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034348:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003434c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034353:	0f 85 ee 01 00 00    	jne    c0034547 <_dtoa_r+0x4e7>
c0034359:	8b 55 18             	mov    0x18(%ebp),%edx
c003435c:	85 d2                	test   %edx,%edx
c003435e:	0f 8e b6 07 00 00    	jle    c0034b1a <_dtoa_r+0xaba>
c0034364:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034367:	83 ff 0e             	cmp    $0xe,%edi
c003436a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003436e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034371:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034374:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034377:	83 ff 17             	cmp    $0x17,%edi
c003437a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034381:	0f 86 e5 0e 00 00    	jbe    c003526c <_dtoa_r+0x120c>
c0034387:	b9 01 00 00 00       	mov    $0x1,%ecx
c003438c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034391:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034398:	01 c0                	add    %eax,%eax
c003439a:	89 ca                	mov    %ecx,%edx
c003439c:	8d 58 14             	lea    0x14(%eax),%ebx
c003439f:	39 fb                	cmp    %edi,%ebx
c00343a1:	8d 49 01             	lea    0x1(%ecx),%ecx
c00343a4:	76 f2                	jbe    c0034398 <_dtoa_r+0x338>
c00343a6:	89 56 44             	mov    %edx,0x44(%esi)
c00343a9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00343ad:	89 34 24             	mov    %esi,(%esp)
c00343b0:	e8 db 17 00 00       	call   c0035b90 <_Balloc>
c00343b5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c00343b9:	89 c7                	mov    %eax,%edi
c00343bb:	89 46 40             	mov    %eax,0x40(%esi)
c00343be:	0f 84 bb 01 00 00    	je     c003457f <_dtoa_r+0x51f>
c00343c4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00343c7:	dd 45 c0             	fldl   -0x40(%ebp)
c00343ca:	85 db                	test   %ebx,%ebx
c00343cc:	0f 8e de 07 00 00    	jle    c0034bb0 <_dtoa_r+0xb50>
c00343d2:	89 d8                	mov    %ebx,%eax
c00343d4:	83 e0 0f             	and    $0xf,%eax
c00343d7:	dd 04 c5 60 9b 03 c0 	fldl   -0x3ffc64a0(,%eax,8)
c00343de:	89 d8                	mov    %ebx,%eax
c00343e0:	c1 f8 04             	sar    $0x4,%eax
c00343e3:	a8 10                	test   $0x10,%al
c00343e5:	0f 84 cd 05 00 00    	je     c00349b8 <_dtoa_r+0x958>
c00343eb:	dd 05 40 9b 03 c0    	fldl   0xc0039b40
c00343f1:	83 e0 0f             	and    $0xf,%eax
c00343f4:	b9 03 00 00 00       	mov    $0x3,%ecx
c00343f9:	d8 fa                	fdivr  %st(2),%st
c00343fb:	85 c0                	test   %eax,%eax
c00343fd:	74 22                	je     c0034421 <_dtoa_r+0x3c1>
c00343ff:	31 d2                	xor    %edx,%edx
c0034401:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034408:	a8 01                	test   $0x1,%al
c003440a:	74 0e                	je     c003441a <_dtoa_r+0x3ba>
c003440c:	d9 c9                	fxch   %st(1)
c003440e:	dc 0c d5 20 9b 03 c0 	fmull  -0x3ffc64e0(,%edx,8)
c0034415:	d9 c9                	fxch   %st(1)
c0034417:	83 c1 01             	add    $0x1,%ecx
c003441a:	83 c2 01             	add    $0x1,%edx
c003441d:	d1 f8                	sar    %eax
c003441f:	75 e7                	jne    c0034408 <_dtoa_r+0x3a8>
c0034421:	de f1                	fdivp  %st,%st(1)
c0034423:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034426:	85 c0                	test   %eax,%eax
c0034428:	74 0a                	je     c0034434 <_dtoa_r+0x3d4>
c003442a:	d9 e8                	fld1   
c003442c:	df e9                	fucomip %st(1),%st
c003442e:	0f 87 92 0b 00 00    	ja     c0034fc6 <_dtoa_r+0xf66>
c0034434:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034437:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003443a:	db 45 d4             	fildl  -0x2c(%ebp)
c003443d:	d8 c9                	fmul   %st(1),%st
c003443f:	d8 05 7c 9a 03 c0    	fadds  0xc0039a7c
c0034445:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034448:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003444f:	85 c0                	test   %eax,%eax
c0034451:	0f 84 89 05 00 00    	je     c00349e0 <_dtoa_r+0x980>
c0034457:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003445a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003445d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034460:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034463:	85 c0                	test   %eax,%eax
c0034465:	0f 84 b5 07 00 00    	je     c0034c20 <_dtoa_r+0xbc0>
c003446b:	d9 05 84 9a 03 c0    	flds   0xc0039a84
c0034471:	8d 57 01             	lea    0x1(%edi),%edx
c0034474:	dc 34 cd 58 9b 03 c0 	fdivl  -0x3ffc64a8(,%ecx,8)
c003447b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003447e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034482:	b4 0c                	mov    $0xc,%ah
c0034484:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034488:	dc 65 c0             	fsubl  -0x40(%ebp)
c003448b:	d9 c9                	fxch   %st(1)
c003448d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034490:	db 55 d4             	fistl  -0x2c(%ebp)
c0034493:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034496:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034499:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003449c:	83 c0 30             	add    $0x30,%eax
c003449f:	db 45 d4             	fildl  -0x2c(%ebp)
c00344a2:	de e9                	fsubrp %st,%st(1)
c00344a4:	d9 c9                	fxch   %st(1)
c00344a6:	88 07                	mov    %al,(%edi)
c00344a8:	db e9                	fucomi %st(1),%st
c00344aa:	77 7f                	ja     c003452b <_dtoa_r+0x4cb>
c00344ac:	d9 c1                	fld    %st(1)
c00344ae:	d8 2d 74 9a 03 c0    	fsubrs 0xc0039a74
c00344b4:	d9 c9                	fxch   %st(1)
c00344b6:	db e9                	fucomi %st(1),%st
c00344b8:	dd d9                	fstp   %st(1)
c00344ba:	0f 87 33 0c 00 00    	ja     c00350f3 <_dtoa_r+0x1093>
c00344c0:	83 f9 01             	cmp    $0x1,%ecx
c00344c3:	0f 8e c4 06 00 00    	jle    c0034b8d <_dtoa_r+0xb2d>
c00344c9:	01 f9                	add    %edi,%ecx
c00344cb:	d9 05 78 9a 03 c0    	flds   0xc0039a78
c00344d1:	eb 25                	jmp    c00344f8 <_dtoa_r+0x498>
c00344d3:	90                   	nop
c00344d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00344d8:	d9 c1                	fld    %st(1)
c00344da:	d8 2d 74 9a 03 c0    	fsubrs 0xc0039a74
c00344e0:	d9 c9                	fxch   %st(1)
c00344e2:	db e9                	fucomi %st(1),%st
c00344e4:	dd d9                	fstp   %st(1)
c00344e6:	0f 87 14 0c 00 00    	ja     c0035100 <_dtoa_r+0x10a0>
c00344ec:	39 ca                	cmp    %ecx,%edx
c00344ee:	0f 84 a4 06 00 00    	je     c0034b98 <_dtoa_r+0xb38>
c00344f4:	d9 c9                	fxch   %st(1)
c00344f6:	d9 ca                	fxch   %st(2)
c00344f8:	dc c9                	fmul   %st,%st(1)
c00344fa:	83 c2 01             	add    $0x1,%edx
c00344fd:	dc ca                	fmul   %st,%st(2)
c00344ff:	d9 ca                	fxch   %st(2)
c0034501:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034504:	db 55 d4             	fistl  -0x2c(%ebp)
c0034507:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003450a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003450d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034510:	83 c0 30             	add    $0x30,%eax
c0034513:	db 45 d4             	fildl  -0x2c(%ebp)
c0034516:	de e9                	fsubrp %st,%st(1)
c0034518:	d9 c9                	fxch   %st(1)
c003451a:	88 42 ff             	mov    %al,-0x1(%edx)
c003451d:	db e9                	fucomi %st(1),%st
c003451f:	76 b7                	jbe    c00344d8 <_dtoa_r+0x478>
c0034521:	dd d8                	fstp   %st(0)
c0034523:	dd d8                	fstp   %st(0)
c0034525:	dd d8                	fstp   %st(0)
c0034527:	dd d8                	fstp   %st(0)
c0034529:	eb 06                	jmp    c0034531 <_dtoa_r+0x4d1>
c003452b:	dd d8                	fstp   %st(0)
c003452d:	dd d8                	fstp   %st(0)
c003452f:	dd d8                	fstp   %st(0)
c0034531:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034534:	89 fb                	mov    %edi,%ebx
c0034536:	89 d7                	mov    %edx,%edi
c0034538:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003453b:	e9 70 03 00 00       	jmp    c00348b0 <_dtoa_r+0x850>
c0034540:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034547:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003454e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034555:	00 
c0034556:	89 34 24             	mov    %esi,(%esp)
c0034559:	e8 32 16 00 00       	call   c0035b90 <_Balloc>
c003455e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034565:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003456c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034573:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003457a:	89 c7                	mov    %eax,%edi
c003457c:	89 46 40             	mov    %eax,0x40(%esi)
c003457f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034582:	85 c0                	test   %eax,%eax
c0034584:	0f 88 2e 01 00 00    	js     c00346b8 <_dtoa_r+0x658>
c003458a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c003458e:	0f 8f 24 01 00 00    	jg     c00346b8 <_dtoa_r+0x658>
c0034594:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034597:	dd 04 c5 60 9b 03 c0 	fldl   -0x3ffc64a0(,%eax,8)
c003459e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00345a1:	85 c0                	test   %eax,%eax
c00345a3:	7f 0e                	jg     c00345b3 <_dtoa_r+0x553>
c00345a5:	8b 45 18             	mov    0x18(%ebp),%eax
c00345a8:	c1 e8 1f             	shr    $0x1f,%eax
c00345ab:	84 c0                	test   %al,%al
c00345ad:	0f 85 9d 07 00 00    	jne    c0034d50 <_dtoa_r+0xcf0>
c00345b3:	dd 45 c0             	fldl   -0x40(%ebp)
c00345b6:	d9 c0                	fld    %st(0)
c00345b8:	d8 f2                	fdiv   %st(2),%st
c00345ba:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00345bd:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c00345c1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00345c5:	b4 0c                	mov    $0xc,%ah
c00345c7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00345cb:	8d 47 01             	lea    0x1(%edi),%eax
c00345ce:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00345d1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00345d4:	db 5d d4             	fistpl -0x2c(%ebp)
c00345d7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00345da:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00345dd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00345e0:	8d 42 30             	lea    0x30(%edx),%eax
c00345e3:	db 45 d4             	fildl  -0x2c(%ebp)
c00345e6:	d8 ca                	fmul   %st(2),%st
c00345e8:	88 07                	mov    %al,(%edi)
c00345ea:	de e9                	fsubrp %st,%st(1)
c00345ec:	74 66                	je     c0034654 <_dtoa_r+0x5f4>
c00345ee:	d8 0d 78 9a 03 c0    	fmuls  0xc0039a78
c00345f4:	d9 ee                	fldz   
c00345f6:	d9 c9                	fxch   %st(1)
c00345f8:	db e9                	fucomi %st(1),%st
c00345fa:	dd d9                	fstp   %st(1)
c00345fc:	0f 8b 33 0c 00 00    	jnp    c0035235 <_dtoa_r+0x11d5>
c0034602:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034605:	8d 47 02             	lea    0x2(%edi),%eax
c0034608:	d9 05 78 9a 03 c0    	flds   0xc0039a78
c003460e:	01 fb                	add    %edi,%ebx
c0034610:	eb 19                	jmp    c003462b <_dtoa_r+0x5cb>
c0034612:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034618:	dc c9                	fmul   %st,%st(1)
c003461a:	83 c0 01             	add    $0x1,%eax
c003461d:	d9 ee                	fldz   
c003461f:	d9 ca                	fxch   %st(2)
c0034621:	db ea                	fucomi %st(2),%st
c0034623:	dd da                	fstp   %st(2)
c0034625:	0f 8b 73 09 00 00    	jnp    c0034f9e <_dtoa_r+0xf3e>
c003462b:	d9 c1                	fld    %st(1)
c003462d:	39 d8                	cmp    %ebx,%eax
c003462f:	d8 f3                	fdiv   %st(3),%st
c0034631:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034634:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034637:	db 5d d4             	fistpl -0x2c(%ebp)
c003463a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003463d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034640:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034643:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034646:	db 45 d4             	fildl  -0x2c(%ebp)
c0034649:	d8 cb                	fmul   %st(3),%st
c003464b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003464e:	de ea                	fsubrp %st,%st(2)
c0034650:	75 c6                	jne    c0034618 <_dtoa_r+0x5b8>
c0034652:	dd d8                	fstp   %st(0)
c0034654:	d8 c0                	fadd   %st(0),%st
c0034656:	db e9                	fucomi %st(1),%st
c0034658:	77 1e                	ja     c0034678 <_dtoa_r+0x618>
c003465a:	d9 c9                	fxch   %st(1)
c003465c:	df e9                	fucomip %st(1),%st
c003465e:	dd d8                	fstp   %st(0)
c0034660:	0f 8a 44 09 00 00    	jp     c0034faa <_dtoa_r+0xf4a>
c0034666:	0f 85 3e 09 00 00    	jne    c0034faa <_dtoa_r+0xf4a>
c003466c:	83 e2 01             	and    $0x1,%edx
c003466f:	90                   	nop
c0034670:	0f 84 34 09 00 00    	je     c0034faa <_dtoa_r+0xf4a>
c0034676:	eb 04                	jmp    c003467c <_dtoa_r+0x61c>
c0034678:	dd d8                	fstp   %st(0)
c003467a:	dd d8                	fstp   %st(0)
c003467c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c003467f:	89 fb                	mov    %edi,%ebx
c0034681:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034685:	89 cf                	mov    %ecx,%edi
c0034687:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c003468a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c003468d:	eb 0f                	jmp    c003469e <_dtoa_r+0x63e>
c003468f:	90                   	nop
c0034690:	39 d3                	cmp    %edx,%ebx
c0034692:	0f 84 75 09 00 00    	je     c003500d <_dtoa_r+0xfad>
c0034698:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c003469c:	89 d7                	mov    %edx,%edi
c003469e:	3c 39                	cmp    $0x39,%al
c00346a0:	8d 57 ff             	lea    -0x1(%edi),%edx
c00346a3:	74 eb                	je     c0034690 <_dtoa_r+0x630>
c00346a5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c00346a8:	83 c0 01             	add    $0x1,%eax
c00346ab:	88 02                	mov    %al,(%edx)
c00346ad:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c00346b0:	e9 fb 01 00 00       	jmp    c00348b0 <_dtoa_r+0x850>
c00346b5:	8d 76 00             	lea    0x0(%esi),%esi
c00346b8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00346bb:	85 c9                	test   %ecx,%ecx
c00346bd:	0f 85 9d 02 00 00    	jne    c0034960 <_dtoa_r+0x900>
c00346c3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00346c6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00346c9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00346d0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346d3:	85 c0                	test   %eax,%eax
c00346d5:	7e 14                	jle    c00346eb <_dtoa_r+0x68b>
c00346d7:	85 db                	test   %ebx,%ebx
c00346d9:	7e 10                	jle    c00346eb <_dtoa_r+0x68b>
c00346db:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346de:	39 d8                	cmp    %ebx,%eax
c00346e0:	0f 4f c3             	cmovg  %ebx,%eax
c00346e3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00346e6:	29 c3                	sub    %eax,%ebx
c00346e8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c00346eb:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00346ee:	85 c0                	test   %eax,%eax
c00346f0:	7e 61                	jle    c0034753 <_dtoa_r+0x6f3>
c00346f2:	8b 45 98             	mov    -0x68(%ebp),%eax
c00346f5:	85 c0                	test   %eax,%eax
c00346f7:	0f 84 72 04 00 00    	je     c0034b6f <_dtoa_r+0xb0f>
c00346fd:	85 d2                	test   %edx,%edx
c00346ff:	7e 47                	jle    c0034748 <_dtoa_r+0x6e8>
c0034701:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034704:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034708:	89 34 24             	mov    %esi,(%esp)
c003470b:	89 55 88             	mov    %edx,-0x78(%ebp)
c003470e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034712:	e8 f9 19 00 00       	call   c0036110 <__pow5mult>
c0034717:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c003471a:	89 34 24             	mov    %esi,(%esp)
c003471d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034721:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034725:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034728:	e8 13 18 00 00       	call   c0035f40 <__multiply>
c003472d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034730:	89 34 24             	mov    %esi,(%esp)
c0034733:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034737:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003473a:	e8 f1 14 00 00       	call   c0035c30 <_Bfree>
c003473f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034742:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034745:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034748:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003474b:	29 d0                	sub    %edx,%eax
c003474d:	0f 85 1f 04 00 00    	jne    c0034b72 <_dtoa_r+0xb12>
c0034753:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003475a:	00 
c003475b:	89 34 24             	mov    %esi,(%esp)
c003475e:	e8 ad 17 00 00       	call   c0035f10 <__i2b>
c0034763:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034766:	85 c9                	test   %ecx,%ecx
c0034768:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003476b:	7e 13                	jle    c0034780 <_dtoa_r+0x720>
c003476d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034771:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034775:	89 34 24             	mov    %esi,(%esp)
c0034778:	e8 93 19 00 00       	call   c0036110 <__pow5mult>
c003477d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034780:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034784:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c003478b:	0f 8e f7 05 00 00    	jle    c0034d88 <_dtoa_r+0xd28>
c0034791:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034794:	ba 01 00 00 00       	mov    $0x1,%edx
c0034799:	85 c0                	test   %eax,%eax
c003479b:	0f 85 27 05 00 00    	jne    c0034cc8 <_dtoa_r+0xc68>
c00347a1:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347a4:	01 d0                	add    %edx,%eax
c00347a6:	83 e0 1f             	and    $0x1f,%eax
c00347a9:	89 c2                	mov    %eax,%edx
c00347ab:	0f 84 57 03 00 00    	je     c0034b08 <_dtoa_r+0xaa8>
c00347b1:	b8 20 00 00 00       	mov    $0x20,%eax
c00347b6:	29 d0                	sub    %edx,%eax
c00347b8:	83 f8 04             	cmp    $0x4,%eax
c00347bb:	0f 8e 8c 0a 00 00    	jle    c003524d <_dtoa_r+0x11ed>
c00347c1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c00347c6:	29 d0                	sub    %edx,%eax
c00347c8:	01 45 a0             	add    %eax,-0x60(%ebp)
c00347cb:	01 c3                	add    %eax,%ebx
c00347cd:	01 45 ac             	add    %eax,-0x54(%ebp)
c00347d0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c00347d3:	85 c0                	test   %eax,%eax
c00347d5:	7e 16                	jle    c00347ed <_dtoa_r+0x78d>
c00347d7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00347db:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00347de:	89 34 24             	mov    %esi,(%esp)
c00347e1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347e5:	e8 46 1a 00 00       	call   c0036230 <__lshift>
c00347ea:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00347ed:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347f0:	85 c0                	test   %eax,%eax
c00347f2:	7e 16                	jle    c003480a <_dtoa_r+0x7aa>
c00347f4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00347f8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00347fb:	89 34 24             	mov    %esi,(%esp)
c00347fe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034802:	e8 29 1a 00 00       	call   c0036230 <__lshift>
c0034807:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003480a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c003480d:	85 c0                	test   %eax,%eax
c003480f:	0f 85 d3 04 00 00    	jne    c0034ce8 <_dtoa_r+0xc88>
c0034815:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034819:	0f 8e 11 02 00 00    	jle    c0034a30 <_dtoa_r+0x9d0>
c003481f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034822:	85 c0                	test   %eax,%eax
c0034824:	0f 8f 06 02 00 00    	jg     c0034a30 <_dtoa_r+0x9d0>
c003482a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003482d:	85 c0                	test   %eax,%eax
c003482f:	0f 85 e0 01 00 00    	jne    c0034a15 <_dtoa_r+0x9b5>
c0034835:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034838:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003483f:	00 
c0034840:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034847:	00 
c0034848:	89 34 24             	mov    %esi,(%esp)
c003484b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003484f:	e8 fc 13 00 00       	call   c0035c50 <__multadd>
c0034854:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034857:	89 44 24 04          	mov    %eax,0x4(%esp)
c003485b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003485e:	89 04 24             	mov    %eax,(%esp)
c0034861:	e8 ea 1a 00 00       	call   c0036350 <__mcmp>
c0034866:	85 c0                	test   %eax,%eax
c0034868:	0f 8e a7 01 00 00    	jle    c0034a15 <_dtoa_r+0x9b5>
c003486e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034872:	89 fb                	mov    %edi,%ebx
c0034874:	83 c7 01             	add    $0x1,%edi
c0034877:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003487b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034882:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034885:	89 34 24             	mov    %esi,(%esp)
c0034888:	89 44 24 04          	mov    %eax,0x4(%esp)
c003488c:	e8 9f 13 00 00       	call   c0035c30 <_Bfree>
c0034891:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034894:	85 c0                	test   %eax,%eax
c0034896:	74 18                	je     c00348b0 <_dtoa_r+0x850>
c0034898:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c003489b:	0f 85 a7 02 00 00    	jne    c0034b48 <_dtoa_r+0xae8>
c00348a1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348a4:	89 34 24             	mov    %esi,(%esp)
c00348a7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348ab:	e8 80 13 00 00       	call   c0035c30 <_Bfree>
c00348b0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00348b3:	89 34 24             	mov    %esi,(%esp)
c00348b6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348ba:	e8 71 13 00 00       	call   c0035c30 <_Bfree>
c00348bf:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00348c2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c00348c5:	c6 07 00             	movb   $0x0,(%edi)
c00348c8:	83 c0 01             	add    $0x1,%eax
c00348cb:	89 06                	mov    %eax,(%esi)
c00348cd:	8b 45 24             	mov    0x24(%ebp),%eax
c00348d0:	85 c0                	test   %eax,%eax
c00348d2:	0f 84 90 02 00 00    	je     c0034b68 <_dtoa_r+0xb08>
c00348d8:	8b 45 24             	mov    0x24(%ebp),%eax
c00348db:	89 38                	mov    %edi,(%eax)
c00348dd:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00348e3:	89 d8                	mov    %ebx,%eax
c00348e5:	5b                   	pop    %ebx
c00348e6:	5e                   	pop    %esi
c00348e7:	5f                   	pop    %edi
c00348e8:	5d                   	pop    %ebp
c00348e9:	c3                   	ret    
c00348ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00348f0:	db 45 b8             	fildl  -0x48(%ebp)
c00348f3:	df e9                	fucomip %st(1),%st
c00348f5:	dd d8                	fstp   %st(0)
c00348f7:	7a 06                	jp     c00348ff <_dtoa_r+0x89f>
c00348f9:	0f 84 cc f8 ff ff    	je     c00341cb <_dtoa_r+0x16b>
c00348ff:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034903:	e9 c3 f8 ff ff       	jmp    c00341cb <_dtoa_r+0x16b>
c0034908:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003490b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c003490e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0034915:	f7 d8                	neg    %eax
c0034917:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003491a:	e9 0c f9 ff ff       	jmp    c003422b <_dtoa_r+0x1cb>
c003491f:	90                   	nop
c0034920:	f7 d8                	neg    %eax
c0034922:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034925:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c003492c:	e9 e2 f8 ff ff       	jmp    c0034213 <_dtoa_r+0x1b3>
c0034931:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034938:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003493b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034940:	29 d9                	sub    %ebx,%ecx
c0034942:	d3 e0                	shl    %cl,%eax
c0034944:	e9 1b f8 ff ff       	jmp    c0034164 <_dtoa_r+0x104>
c0034949:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034950:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034957:	e9 a0 f8 ff ff       	jmp    c00341fc <_dtoa_r+0x19c>
c003495c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034960:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034964:	0f 8e fe 06 00 00    	jle    c0035068 <_dtoa_r+0x1008>
c003496a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003496d:	83 e8 01             	sub    $0x1,%eax
c0034970:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034973:	0f 8c 3b 06 00 00    	jl     c0034fb4 <_dtoa_r+0xf54>
c0034979:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003497c:	29 c2                	sub    %eax,%edx
c003497e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034981:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034984:	85 c9                	test   %ecx,%ecx
c0034986:	89 c8                	mov    %ecx,%eax
c0034988:	0f 88 83 07 00 00    	js     c0035111 <_dtoa_r+0x10b1>
c003498e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034995:	00 
c0034996:	89 34 24             	mov    %esi,(%esp)
c0034999:	89 55 8c             	mov    %edx,-0x74(%ebp)
c003499c:	01 45 a0             	add    %eax,-0x60(%ebp)
c003499f:	01 45 ac             	add    %eax,-0x54(%ebp)
c00349a2:	e8 69 15 00 00       	call   c0035f10 <__i2b>
c00349a7:	8b 55 8c             	mov    -0x74(%ebp),%edx
c00349aa:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00349ad:	e9 1e fd ff ff       	jmp    c00346d0 <_dtoa_r+0x670>
c00349b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00349b8:	d9 c1                	fld    %st(1)
c00349ba:	b9 02 00 00 00       	mov    $0x2,%ecx
c00349bf:	e9 37 fa ff ff       	jmp    c00343fb <_dtoa_r+0x39b>
c00349c4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00349c7:	db 45 d4             	fildl  -0x2c(%ebp)
c00349ca:	d8 c9                	fmul   %st(1),%st
c00349cc:	d8 05 7c 9a 03 c0    	fadds  0xc0039a7c
c00349d2:	dd 5d c0             	fstpl  -0x40(%ebp)
c00349d5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00349dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349e0:	d8 25 80 9a 03 c0    	fsubs  0xc0039a80
c00349e6:	dd 45 c0             	fldl   -0x40(%ebp)
c00349e9:	d9 c9                	fxch   %st(1)
c00349eb:	db e9                	fucomi %st(1),%st
c00349ed:	0f 87 0d 02 00 00    	ja     c0034c00 <_dtoa_r+0xba0>
c00349f3:	d9 c9                	fxch   %st(1)
c00349f5:	d9 e0                	fchs   
c00349f7:	df e9                	fucomip %st(1),%st
c00349f9:	dd d8                	fstp   %st(0)
c00349fb:	0f 86 a7 01 00 00    	jbe    c0034ba8 <_dtoa_r+0xb48>
c0034a01:	dd d8                	fstp   %st(0)
c0034a03:	eb 02                	jmp    c0034a07 <_dtoa_r+0x9a7>
c0034a05:	dd d8                	fstp   %st(0)
c0034a07:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034a0e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034a15:	8b 45 18             	mov    0x18(%ebp),%eax
c0034a18:	89 fb                	mov    %edi,%ebx
c0034a1a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a21:	f7 d0                	not    %eax
c0034a23:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034a26:	e9 57 fe ff ff       	jmp    c0034882 <_dtoa_r+0x822>
c0034a2b:	90                   	nop
c0034a2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a30:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034a33:	85 c0                	test   %eax,%eax
c0034a35:	0f 85 c5 03 00 00    	jne    c0034e00 <_dtoa_r+0xda0>
c0034a3b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034a3e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034a43:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034a46:	eb 24                	jmp    c0034a6c <_dtoa_r+0xa0c>
c0034a48:	8b 45 08             	mov    0x8(%ebp),%eax
c0034a4b:	83 c3 01             	add    $0x1,%ebx
c0034a4e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034a52:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034a59:	00 
c0034a5a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034a61:	00 
c0034a62:	89 04 24             	mov    %eax,(%esp)
c0034a65:	e8 e6 11 00 00       	call   c0035c50 <__multadd>
c0034a6a:	89 c6                	mov    %eax,%esi
c0034a6c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a6f:	89 f0                	mov    %esi,%eax
c0034a71:	e8 1a f4 ff ff       	call   c0033e90 <quorem>
c0034a76:	83 c0 30             	add    $0x30,%eax
c0034a79:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034a7c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034a80:	7c c6                	jl     c0034a48 <_dtoa_r+0x9e8>
c0034a82:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034a85:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034a88:	ba 01 00 00 00       	mov    $0x1,%edx
c0034a8d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034a90:	8b 75 08             	mov    0x8(%ebp),%esi
c0034a93:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a9a:	85 c0                	test   %eax,%eax
c0034a9c:	0f 4f d0             	cmovg  %eax,%edx
c0034a9f:	01 fa                	add    %edi,%edx
c0034aa1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034aa4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034aab:	00 
c0034aac:	89 34 24             	mov    %esi,(%esp)
c0034aaf:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034ab2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ab6:	e8 75 17 00 00       	call   c0036230 <__lshift>
c0034abb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034abe:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034ac2:	89 04 24             	mov    %eax,(%esp)
c0034ac5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034ac8:	e8 83 18 00 00       	call   c0036350 <__mcmp>
c0034acd:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034ad0:	83 f8 00             	cmp    $0x0,%eax
c0034ad3:	0f 8e 41 06 00 00    	jle    c003511a <_dtoa_r+0x10ba>
c0034ad9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034add:	eb 0f                	jmp    c0034aee <_dtoa_r+0xa8e>
c0034adf:	90                   	nop
c0034ae0:	39 c7                	cmp    %eax,%edi
c0034ae2:	0f 84 70 05 00 00    	je     c0035058 <_dtoa_r+0xff8>
c0034ae8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034aec:	89 c2                	mov    %eax,%edx
c0034aee:	80 f9 39             	cmp    $0x39,%cl
c0034af1:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034af4:	74 ea                	je     c0034ae0 <_dtoa_r+0xa80>
c0034af6:	83 c1 01             	add    $0x1,%ecx
c0034af9:	89 fb                	mov    %edi,%ebx
c0034afb:	88 08                	mov    %cl,(%eax)
c0034afd:	89 d7                	mov    %edx,%edi
c0034aff:	e9 7e fd ff ff       	jmp    c0034882 <_dtoa_r+0x822>
c0034b04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b08:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034b0d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034b10:	01 c3                	add    %eax,%ebx
c0034b12:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034b15:	e9 b6 fc ff ff       	jmp    c00347d0 <_dtoa_r+0x770>
c0034b1a:	ba 01 00 00 00       	mov    $0x1,%edx
c0034b1f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034b26:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034b2d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034b34:	21 c2                	and    %eax,%edx
c0034b36:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034b39:	31 d2                	xor    %edx,%edx
c0034b3b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b42:	e9 62 f8 ff ff       	jmp    c00343a9 <_dtoa_r+0x349>
c0034b47:	90                   	nop
c0034b48:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034b4b:	85 d2                	test   %edx,%edx
c0034b4d:	0f 84 4e fd ff ff    	je     c00348a1 <_dtoa_r+0x841>
c0034b53:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034b56:	89 34 24             	mov    %esi,(%esp)
c0034b59:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b5d:	e8 ce 10 00 00       	call   c0035c30 <_Bfree>
c0034b62:	e9 3a fd ff ff       	jmp    c00348a1 <_dtoa_r+0x841>
c0034b67:	90                   	nop
c0034b68:	89 d8                	mov    %ebx,%eax
c0034b6a:	e9 89 f5 ff ff       	jmp    c00340f8 <_dtoa_r+0x98>
c0034b6f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034b72:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034b76:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034b79:	89 34 24             	mov    %esi,(%esp)
c0034b7c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b80:	e8 8b 15 00 00       	call   c0036110 <__pow5mult>
c0034b85:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034b88:	e9 c6 fb ff ff       	jmp    c0034753 <_dtoa_r+0x6f3>
c0034b8d:	dd d8                	fstp   %st(0)
c0034b8f:	dd d8                	fstp   %st(0)
c0034b91:	eb 15                	jmp    c0034ba8 <_dtoa_r+0xb48>
c0034b93:	90                   	nop
c0034b94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b98:	dd d8                	fstp   %st(0)
c0034b9a:	dd d8                	fstp   %st(0)
c0034b9c:	dd d8                	fstp   %st(0)
c0034b9e:	eb 08                	jmp    c0034ba8 <_dtoa_r+0xb48>
c0034ba0:	dd d8                	fstp   %st(0)
c0034ba2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034ba8:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034bab:	e9 cf f9 ff ff       	jmp    c003457f <_dtoa_r+0x51f>
c0034bb0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034bb3:	f7 d8                	neg    %eax
c0034bb5:	0f 84 6a 04 00 00    	je     c0035025 <_dtoa_r+0xfc5>
c0034bbb:	89 c2                	mov    %eax,%edx
c0034bbd:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034bc2:	83 e2 0f             	and    $0xf,%edx
c0034bc5:	c1 f8 04             	sar    $0x4,%eax
c0034bc8:	dd 04 d5 60 9b 03 c0 	fldl   -0x3ffc64a0(,%edx,8)
c0034bcf:	85 c0                	test   %eax,%eax
c0034bd1:	d8 c9                	fmul   %st(1),%st
c0034bd3:	0f 84 4a f8 ff ff    	je     c0034423 <_dtoa_r+0x3c3>
c0034bd9:	31 d2                	xor    %edx,%edx
c0034bdb:	90                   	nop
c0034bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034be0:	a8 01                	test   $0x1,%al
c0034be2:	74 0a                	je     c0034bee <_dtoa_r+0xb8e>
c0034be4:	dc 0c d5 20 9b 03 c0 	fmull  -0x3ffc64e0(,%edx,8)
c0034beb:	83 c1 01             	add    $0x1,%ecx
c0034bee:	83 c2 01             	add    $0x1,%edx
c0034bf1:	d1 f8                	sar    %eax
c0034bf3:	75 eb                	jne    c0034be0 <_dtoa_r+0xb80>
c0034bf5:	e9 29 f8 ff ff       	jmp    c0034423 <_dtoa_r+0x3c3>
c0034bfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034c00:	dd d8                	fstp   %st(0)
c0034c02:	dd d8                	fstp   %st(0)
c0034c04:	dd d8                	fstp   %st(0)
c0034c06:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034c0d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034c14:	e9 55 fc ff ff       	jmp    c003486e <_dtoa_r+0x80e>
c0034c19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034c20:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034c23:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034c26:	dd 45 c0             	fldl   -0x40(%ebp)
c0034c29:	dc 0c c5 60 9b 03 c0 	fmull  -0x3ffc64a0(,%eax,8)
c0034c30:	d9 c9                	fxch   %st(1)
c0034c32:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034c35:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034c39:	8d 57 01             	lea    0x1(%edi),%edx
c0034c3c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034c3f:	b4 0c                	mov    $0xc,%ah
c0034c41:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c45:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c48:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c4b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c4e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c51:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034c54:	83 c0 30             	add    $0x30,%eax
c0034c57:	83 f9 01             	cmp    $0x1,%ecx
c0034c5a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c5d:	de e9                	fsubrp %st,%st(1)
c0034c5f:	88 07                	mov    %al,(%edi)
c0034c61:	89 d0                	mov    %edx,%eax
c0034c63:	74 37                	je     c0034c9c <_dtoa_r+0xc3c>
c0034c65:	d9 05 78 9a 03 c0    	flds   0xc0039a78
c0034c6b:	eb 05                	jmp    c0034c72 <_dtoa_r+0xc12>
c0034c6d:	8d 76 00             	lea    0x0(%esi),%esi
c0034c70:	d9 c9                	fxch   %st(1)
c0034c72:	dc c9                	fmul   %st,%st(1)
c0034c74:	d9 c9                	fxch   %st(1)
c0034c76:	83 c0 01             	add    $0x1,%eax
c0034c79:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c7c:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c7f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c82:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034c85:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034c88:	83 c1 30             	add    $0x30,%ecx
c0034c8b:	39 d8                	cmp    %ebx,%eax
c0034c8d:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c90:	de e9                	fsubrp %st,%st(1)
c0034c92:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034c95:	75 d9                	jne    c0034c70 <_dtoa_r+0xc10>
c0034c97:	dd d9                	fstp   %st(1)
c0034c99:	03 55 88             	add    -0x78(%ebp),%edx
c0034c9c:	d9 05 84 9a 03 c0    	flds   0xc0039a84
c0034ca2:	d9 c2                	fld    %st(2)
c0034ca4:	d8 c1                	fadd   %st(1),%st
c0034ca6:	d9 ca                	fxch   %st(2)
c0034ca8:	db ea                	fucomi %st(2),%st
c0034caa:	dd da                	fstp   %st(2)
c0034cac:	0f 86 7f 03 00 00    	jbe    c0035031 <_dtoa_r+0xfd1>
c0034cb2:	dd d8                	fstp   %st(0)
c0034cb4:	dd d8                	fstp   %st(0)
c0034cb6:	dd d8                	fstp   %st(0)
c0034cb8:	dd d8                	fstp   %st(0)
c0034cba:	89 fb                	mov    %edi,%ebx
c0034cbc:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034cc0:	89 d7                	mov    %edx,%edi
c0034cc2:	e9 d7 f9 ff ff       	jmp    c003469e <_dtoa_r+0x63e>
c0034cc7:	90                   	nop
c0034cc8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034ccb:	8b 41 10             	mov    0x10(%ecx),%eax
c0034cce:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034cd2:	89 04 24             	mov    %eax,(%esp)
c0034cd5:	e8 56 11 00 00       	call   c0035e30 <__hi0bits>
c0034cda:	ba 20 00 00 00       	mov    $0x20,%edx
c0034cdf:	29 c2                	sub    %eax,%edx
c0034ce1:	e9 bb fa ff ff       	jmp    c00347a1 <_dtoa_r+0x741>
c0034ce6:	66 90                	xchg   %ax,%ax
c0034ce8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034ceb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034cef:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034cf2:	89 04 24             	mov    %eax,(%esp)
c0034cf5:	e8 56 16 00 00       	call   c0036350 <__mcmp>
c0034cfa:	85 c0                	test   %eax,%eax
c0034cfc:	0f 89 13 fb ff ff    	jns    c0034815 <_dtoa_r+0x7b5>
c0034d02:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d05:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034d0c:	00 
c0034d0d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034d14:	00 
c0034d15:	89 34 24             	mov    %esi,(%esp)
c0034d18:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d1c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034d20:	e8 2b 0f 00 00       	call   c0035c50 <__multadd>
c0034d25:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034d28:	85 c9                	test   %ecx,%ecx
c0034d2a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034d2d:	0f 85 8d 00 00 00    	jne    c0034dc0 <_dtoa_r+0xd60>
c0034d33:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034d37:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034d3a:	7f 0a                	jg     c0034d46 <_dtoa_r+0xce6>
c0034d3c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034d40:	0f 8f ff 04 00 00    	jg     c0035245 <_dtoa_r+0x11e5>
c0034d46:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034d49:	e9 ed fc ff ff       	jmp    c0034a3b <_dtoa_r+0x9db>
c0034d4e:	66 90                	xchg   %ax,%ax
c0034d50:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034d53:	85 db                	test   %ebx,%ebx
c0034d55:	0f 85 aa fc ff ff    	jne    c0034a05 <_dtoa_r+0x9a5>
c0034d5b:	d8 0d 80 9a 03 c0    	fmuls  0xc0039a80
c0034d61:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034d68:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034d6f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034d72:	d9 c9                	fxch   %st(1)
c0034d74:	df e9                	fucomip %st(1),%st
c0034d76:	dd d8                	fstp   %st(0)
c0034d78:	0f 83 97 fc ff ff    	jae    c0034a15 <_dtoa_r+0x9b5>
c0034d7e:	e9 eb fa ff ff       	jmp    c003486e <_dtoa_r+0x80e>
c0034d83:	90                   	nop
c0034d84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034d88:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034d8b:	85 c0                	test   %eax,%eax
c0034d8d:	0f 85 fe f9 ff ff    	jne    c0034791 <_dtoa_r+0x731>
c0034d93:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034d96:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034d9b:	0f 85 f0 f9 ff ff    	jne    c0034791 <_dtoa_r+0x731>
c0034da1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034da6:	0f 84 e5 f9 ff ff    	je     c0034791 <_dtoa_r+0x731>
c0034dac:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034db0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034db4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034dbb:	e9 d1 f9 ff ff       	jmp    c0034791 <_dtoa_r+0x731>
c0034dc0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034dc3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034dca:	00 
c0034dcb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034dd2:	00 
c0034dd3:	89 34 24             	mov    %esi,(%esp)
c0034dd6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034dda:	e8 71 0e 00 00       	call   c0035c50 <__multadd>
c0034ddf:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034de2:	85 d2                	test   %edx,%edx
c0034de4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034de7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034dea:	7f 0a                	jg     c0034df6 <_dtoa_r+0xd96>
c0034dec:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034df0:	0f 8f 4f 04 00 00    	jg     c0035245 <_dtoa_r+0x11e5>
c0034df6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034df9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034e00:	85 db                	test   %ebx,%ebx
c0034e02:	7e 16                	jle    c0034e1a <_dtoa_r+0xdba>
c0034e04:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e07:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034e0b:	89 34 24             	mov    %esi,(%esp)
c0034e0e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e12:	e8 19 14 00 00       	call   c0036230 <__lshift>
c0034e17:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e1a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034e1d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e20:	85 db                	test   %ebx,%ebx
c0034e22:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e25:	0f 85 11 03 00 00    	jne    c003513c <_dtoa_r+0x10dc>
c0034e2b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034e2e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034e31:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034e34:	01 f8                	add    %edi,%eax
c0034e36:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034e39:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034e3c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e3f:	83 e0 01             	and    $0x1,%eax
c0034e42:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034e45:	eb 2e                	jmp    c0034e75 <_dtoa_r+0xe15>
c0034e47:	90                   	nop
c0034e48:	e8 03 0e 00 00       	call   c0035c50 <__multadd>
c0034e4d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e54:	00 
c0034e55:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e5c:	00 
c0034e5d:	89 34 24             	mov    %esi,(%esp)
c0034e60:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e63:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034e66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e6a:	e8 e1 0d 00 00       	call   c0035c50 <__multadd>
c0034e6f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e72:	83 c3 01             	add    $0x1,%ebx
c0034e75:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034e78:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034e7b:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034e7e:	89 f8                	mov    %edi,%eax
c0034e80:	e8 0b f0 ff ff       	call   c0033e90 <quorem>
c0034e85:	89 3c 24             	mov    %edi,(%esp)
c0034e88:	8d 48 30             	lea    0x30(%eax),%ecx
c0034e8b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034e8e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034e91:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034e94:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034e98:	e8 b3 14 00 00       	call   c0036350 <__mcmp>
c0034e9d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034ea0:	89 34 24             	mov    %esi,(%esp)
c0034ea3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034ea7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034eaa:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034ead:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034eb1:	e8 ea 14 00 00       	call   c00363a0 <__mdiff>
c0034eb6:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034eb9:	89 c2                	mov    %eax,%edx
c0034ebb:	85 c9                	test   %ecx,%ecx
c0034ebd:	0f 85 c5 00 00 00    	jne    c0034f88 <_dtoa_r+0xf28>
c0034ec3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ec7:	89 3c 24             	mov    %edi,(%esp)
c0034eca:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034ecd:	e8 7e 14 00 00       	call   c0036350 <__mcmp>
c0034ed2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034ed5:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034ed9:	89 34 24             	mov    %esi,(%esp)
c0034edc:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034edf:	e8 4c 0d 00 00       	call   c0035c30 <_Bfree>
c0034ee4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ee7:	89 c1                	mov    %eax,%ecx
c0034ee9:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034eec:	75 0b                	jne    c0034ef9 <_dtoa_r+0xe99>
c0034eee:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034ef1:	85 d2                	test   %edx,%edx
c0034ef3:	0f 84 fb 02 00 00    	je     c00351f4 <_dtoa_r+0x1194>
c0034ef9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034efc:	85 d2                	test   %edx,%edx
c0034efe:	0f 88 7f 01 00 00    	js     c0035083 <_dtoa_r+0x1023>
c0034f04:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034f07:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f0a:	75 0b                	jne    c0034f17 <_dtoa_r+0xeb7>
c0034f0c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034f0f:	85 c9                	test   %ecx,%ecx
c0034f11:	0f 84 6c 01 00 00    	je     c0035083 <_dtoa_r+0x1023>
c0034f17:	85 c0                	test   %eax,%eax
c0034f19:	0f 8f 82 02 00 00    	jg     c00351a1 <_dtoa_r+0x1141>
c0034f1f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034f23:	89 da                	mov    %ebx,%edx
c0034f25:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034f28:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034f2b:	0f 84 8d 02 00 00    	je     c00351be <_dtoa_r+0x115e>
c0034f31:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034f35:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f3c:	00 
c0034f3d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f44:	00 
c0034f45:	89 34 24             	mov    %esi,(%esp)
c0034f48:	e8 03 0d 00 00       	call   c0035c50 <__multadd>
c0034f4d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f54:	00 
c0034f55:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f5c:	00 
c0034f5d:	89 34 24             	mov    %esi,(%esp)
c0034f60:	89 c7                	mov    %eax,%edi
c0034f62:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f65:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034f68:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034f6b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f6f:	0f 85 d3 fe ff ff    	jne    c0034e48 <_dtoa_r+0xde8>
c0034f75:	e8 d6 0c 00 00       	call   c0035c50 <__multadd>
c0034f7a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034f7d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034f80:	e9 ed fe ff ff       	jmp    c0034e72 <_dtoa_r+0xe12>
c0034f85:	8d 76 00             	lea    0x0(%esi),%esi
c0034f88:	b8 01 00 00 00       	mov    $0x1,%eax
c0034f8d:	e9 43 ff ff ff       	jmp    c0034ed5 <_dtoa_r+0xe75>
c0034f92:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034f99:	e9 d2 f2 ff ff       	jmp    c0034270 <_dtoa_r+0x210>
c0034f9e:	0f 85 87 f6 ff ff    	jne    c003462b <_dtoa_r+0x5cb>
c0034fa4:	dd d8                	fstp   %st(0)
c0034fa6:	dd d8                	fstp   %st(0)
c0034fa8:	dd d8                	fstp   %st(0)
c0034faa:	89 fb                	mov    %edi,%ebx
c0034fac:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034faf:	e9 fc f8 ff ff       	jmp    c00348b0 <_dtoa_r+0x850>
c0034fb4:	89 c2                	mov    %eax,%edx
c0034fb6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0034fb9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034fbc:	01 55 94             	add    %edx,-0x6c(%ebp)
c0034fbf:	31 d2                	xor    %edx,%edx
c0034fc1:	e9 b8 f9 ff ff       	jmp    c003497e <_dtoa_r+0x91e>
c0034fc6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034fc9:	85 c0                	test   %eax,%eax
c0034fcb:	0f 84 f3 f9 ff ff    	je     c00349c4 <_dtoa_r+0x964>
c0034fd1:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034fd4:	85 c0                	test   %eax,%eax
c0034fd6:	0f 8e c4 fb ff ff    	jle    c0034ba0 <_dtoa_r+0xb40>
c0034fdc:	d8 0d 78 9a 03 c0    	fmuls  0xc0039a78
c0034fe2:	83 c1 01             	add    $0x1,%ecx
c0034fe5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034fe8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034feb:	89 c1                	mov    %eax,%ecx
c0034fed:	83 eb 01             	sub    $0x1,%ebx
c0034ff0:	db 45 d4             	fildl  -0x2c(%ebp)
c0034ff3:	d8 c9                	fmul   %st(1),%st
c0034ff5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0034ff8:	d8 05 7c 9a 03 c0    	fadds  0xc0039a7c
c0034ffe:	dd 5d c0             	fstpl  -0x40(%ebp)
c0035001:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0035008:	e9 53 f4 ff ff       	jmp    c0034460 <_dtoa_r+0x400>
c003500d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035010:	c6 03 30             	movb   $0x30,(%ebx)
c0035013:	83 c0 01             	add    $0x1,%eax
c0035016:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0035019:	b8 31 00 00 00       	mov    $0x31,%eax
c003501e:	88 02                	mov    %al,(%edx)
c0035020:	e9 8b f8 ff ff       	jmp    c00348b0 <_dtoa_r+0x850>
c0035025:	d9 c0                	fld    %st(0)
c0035027:	b9 02 00 00 00       	mov    $0x2,%ecx
c003502c:	e9 f2 f3 ff ff       	jmp    c0034423 <_dtoa_r+0x3c3>
c0035031:	de e2                	fsubp  %st,%st(2)
c0035033:	d9 c9                	fxch   %st(1)
c0035035:	df e9                	fucomip %st(1),%st
c0035037:	dd d8                	fstp   %st(0)
c0035039:	0f 86 69 fb ff ff    	jbe    c0034ba8 <_dtoa_r+0xb48>
c003503f:	dd d8                	fstp   %st(0)
c0035041:	eb 07                	jmp    c003504a <_dtoa_r+0xfea>
c0035043:	90                   	nop
c0035044:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035048:	89 c2                	mov    %eax,%edx
c003504a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003504e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035051:	74 f5                	je     c0035048 <_dtoa_r+0xfe8>
c0035053:	e9 d9 f4 ff ff       	jmp    c0034531 <_dtoa_r+0x4d1>
c0035058:	c6 07 31             	movb   $0x31,(%edi)
c003505b:	89 fb                	mov    %edi,%ebx
c003505d:	89 d7                	mov    %edx,%edi
c003505f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035063:	e9 1a f8 ff ff       	jmp    c0034882 <_dtoa_r+0x822>
c0035068:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003506b:	85 d2                	test   %edx,%edx
c003506d:	0f 84 1b 01 00 00    	je     c003518e <_dtoa_r+0x112e>
c0035073:	05 33 04 00 00       	add    $0x433,%eax
c0035078:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003507b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003507e:	e9 0b f9 ff ff       	jmp    c003498e <_dtoa_r+0x92e>
c0035083:	85 c0                	test   %eax,%eax
c0035085:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035088:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003508b:	7e 45                	jle    c00350d2 <_dtoa_r+0x1072>
c003508d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035090:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035097:	00 
c0035098:	89 34 24             	mov    %esi,(%esp)
c003509b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003509f:	e8 8c 11 00 00       	call   c0036230 <__lshift>
c00350a4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c00350a7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00350ab:	89 04 24             	mov    %eax,(%esp)
c00350ae:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00350b1:	e8 9a 12 00 00       	call   c0036350 <__mcmp>
c00350b6:	83 f8 00             	cmp    $0x0,%eax
c00350b9:	0f 8e 5b 01 00 00    	jle    c003521a <_dtoa_r+0x11ba>
c00350bf:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00350c3:	0f 84 0c 01 00 00    	je     c00351d5 <_dtoa_r+0x1175>
c00350c9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00350cc:	83 c0 31             	add    $0x31,%eax
c00350cf:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00350d2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00350d5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00350d9:	89 cb                	mov    %ecx,%ebx
c00350db:	88 03                	mov    %al,(%ebx)
c00350dd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00350e0:	89 fb                	mov    %edi,%ebx
c00350e2:	8d 79 01             	lea    0x1(%ecx),%edi
c00350e5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00350e8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00350eb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00350ee:	e9 8f f7 ff ff       	jmp    c0034882 <_dtoa_r+0x822>
c00350f3:	dd d8                	fstp   %st(0)
c00350f5:	dd d8                	fstp   %st(0)
c00350f7:	dd d8                	fstp   %st(0)
c00350f9:	eb 0d                	jmp    c0035108 <_dtoa_r+0x10a8>
c00350fb:	90                   	nop
c00350fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035100:	dd d8                	fstp   %st(0)
c0035102:	dd d8                	fstp   %st(0)
c0035104:	dd d8                	fstp   %st(0)
c0035106:	dd d8                	fstp   %st(0)
c0035108:	89 fb                	mov    %edi,%ebx
c003510a:	89 d7                	mov    %edx,%edi
c003510c:	e9 8d f5 ff ff       	jmp    c003469e <_dtoa_r+0x63e>
c0035111:	29 cb                	sub    %ecx,%ebx
c0035113:	31 c0                	xor    %eax,%eax
c0035115:	e9 74 f8 ff ff       	jmp    c003498e <_dtoa_r+0x92e>
c003511a:	75 0e                	jne    c003512a <_dtoa_r+0x10ca>
c003511c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035120:	74 08                	je     c003512a <_dtoa_r+0x10ca>
c0035122:	e9 b2 f9 ff ff       	jmp    c0034ad9 <_dtoa_r+0xa79>
c0035127:	90                   	nop
c0035128:	89 c2                	mov    %eax,%edx
c003512a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003512e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035131:	74 f5                	je     c0035128 <_dtoa_r+0x10c8>
c0035133:	89 fb                	mov    %edi,%ebx
c0035135:	89 d7                	mov    %edx,%edi
c0035137:	e9 46 f7 ff ff       	jmp    c0034882 <_dtoa_r+0x822>
c003513c:	8b 40 04             	mov    0x4(%eax),%eax
c003513f:	89 34 24             	mov    %esi,(%esp)
c0035142:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035146:	e8 45 0a 00 00       	call   c0035b90 <_Balloc>
c003514b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003514e:	89 c3                	mov    %eax,%ebx
c0035150:	8b 41 10             	mov    0x10(%ecx),%eax
c0035153:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003515a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003515e:	89 c8                	mov    %ecx,%eax
c0035160:	83 c0 0c             	add    $0xc,%eax
c0035163:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035167:	8d 43 0c             	lea    0xc(%ebx),%eax
c003516a:	89 04 24             	mov    %eax,(%esp)
c003516d:	e8 62 cc ff ff       	call   c0031dd4 <memcpy>
c0035172:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035179:	00 
c003517a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003517e:	89 34 24             	mov    %esi,(%esp)
c0035181:	e8 aa 10 00 00       	call   c0036230 <__lshift>
c0035186:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035189:	e9 9d fc ff ff       	jmp    c0034e2b <_dtoa_r+0xdcb>
c003518e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035193:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035196:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035199:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003519c:	e9 ed f7 ff ff       	jmp    c003498e <_dtoa_r+0x92e>
c00351a1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00351a5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351a8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351ab:	74 28                	je     c00351d5 <_dtoa_r+0x1175>
c00351ad:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00351b1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00351b4:	83 c0 01             	add    $0x1,%eax
c00351b7:	89 cb                	mov    %ecx,%ebx
c00351b9:	e9 1d ff ff ff       	jmp    c00350db <_dtoa_r+0x107b>
c00351be:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351c1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351c4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351c7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351ca:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351cd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351d0:	e9 cc f8 ff ff       	jmp    c0034aa1 <_dtoa_r+0xa41>
c00351d5:	8b 45 98             	mov    -0x68(%ebp),%eax
c00351d8:	b9 39 00 00 00       	mov    $0x39,%ecx
c00351dd:	8d 50 01             	lea    0x1(%eax),%edx
c00351e0:	c6 00 39             	movb   $0x39,(%eax)
c00351e3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351e6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351e9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351ec:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351ef:	e9 fa f8 ff ff       	jmp    c0034aee <_dtoa_r+0xa8e>
c00351f4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00351f7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351fa:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351fd:	83 fb 39             	cmp    $0x39,%ebx
c0035200:	74 d3                	je     c00351d5 <_dtoa_r+0x1175>
c0035202:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035205:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0035208:	83 c0 31             	add    $0x31,%eax
c003520b:	85 c9                	test   %ecx,%ecx
c003520d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035210:	0f 4e c3             	cmovle %ebx,%eax
c0035213:	89 cb                	mov    %ecx,%ebx
c0035215:	e9 c1 fe ff ff       	jmp    c00350db <_dtoa_r+0x107b>
c003521a:	0f 85 b2 fe ff ff    	jne    c00350d2 <_dtoa_r+0x1072>
c0035220:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035224:	0f 84 a8 fe ff ff    	je     c00350d2 <_dtoa_r+0x1072>
c003522a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035230:	e9 8a fe ff ff       	jmp    c00350bf <_dtoa_r+0x105f>
c0035235:	0f 85 c7 f3 ff ff    	jne    c0034602 <_dtoa_r+0x5a2>
c003523b:	dd d8                	fstp   %st(0)
c003523d:	dd d8                	fstp   %st(0)
c003523f:	90                   	nop
c0035240:	e9 65 fd ff ff       	jmp    c0034faa <_dtoa_r+0xf4a>
c0035245:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035248:	e9 dd f5 ff ff       	jmp    c003482a <_dtoa_r+0x7ca>
c003524d:	8d 76 00             	lea    0x0(%esi),%esi
c0035250:	0f 84 7a f5 ff ff    	je     c00347d0 <_dtoa_r+0x770>
c0035256:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003525b:	29 d0                	sub    %edx,%eax
c003525d:	e9 ab f8 ff ff       	jmp    c0034b0d <_dtoa_r+0xaad>
c0035262:	b8 01 00 00 00       	mov    $0x1,%eax
c0035267:	e9 d9 ef ff ff       	jmp    c0034245 <_dtoa_r+0x1e5>
c003526c:	31 d2                	xor    %edx,%edx
c003526e:	e9 36 f1 ff ff       	jmp    c00343a9 <_dtoa_r+0x349>
c0035273:	66 90                	xchg   %ax,%ax
c0035275:	66 90                	xchg   %ax,%ax
c0035277:	66 90                	xchg   %ax,%ax
c0035279:	66 90                	xchg   %ax,%ax
c003527b:	66 90                	xchg   %ax,%ax
c003527d:	66 90                	xchg   %ax,%ax
c003527f:	90                   	nop

c0035280 <_setlocale_r>:
c0035280:	55                   	push   %ebp
c0035281:	89 e5                	mov    %esp,%ebp
c0035283:	53                   	push   %ebx
c0035284:	83 ec 14             	sub    $0x14,%esp
c0035287:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003528a:	85 db                	test   %ebx,%ebx
c003528c:	74 14                	je     c00352a2 <_setlocale_r+0x22>
c003528e:	c7 44 24 04 a0 9a 03 	movl   $0xc0039aa0,0x4(%esp)
c0035295:	c0 
c0035296:	89 1c 24             	mov    %ebx,(%esp)
c0035299:	e8 82 17 00 00       	call   c0036a20 <strcmp>
c003529e:	85 c0                	test   %eax,%eax
c00352a0:	75 0e                	jne    c00352b0 <_setlocale_r+0x30>
c00352a2:	83 c4 14             	add    $0x14,%esp
c00352a5:	b8 9c 98 03 c0       	mov    $0xc003989c,%eax
c00352aa:	5b                   	pop    %ebx
c00352ab:	5d                   	pop    %ebp
c00352ac:	c3                   	ret    
c00352ad:	8d 76 00             	lea    0x0(%esi),%esi
c00352b0:	c7 44 24 04 9c 98 03 	movl   $0xc003989c,0x4(%esp)
c00352b7:	c0 
c00352b8:	89 1c 24             	mov    %ebx,(%esp)
c00352bb:	e8 60 17 00 00       	call   c0036a20 <strcmp>
c00352c0:	85 c0                	test   %eax,%eax
c00352c2:	74 de                	je     c00352a2 <_setlocale_r+0x22>
c00352c4:	89 1c 24             	mov    %ebx,(%esp)
c00352c7:	c7 44 24 04 d6 98 03 	movl   $0xc00398d6,0x4(%esp)
c00352ce:	c0 
c00352cf:	e8 4c 17 00 00       	call   c0036a20 <strcmp>
c00352d4:	89 c2                	mov    %eax,%edx
c00352d6:	31 c0                	xor    %eax,%eax
c00352d8:	85 d2                	test   %edx,%edx
c00352da:	ba 9c 98 03 c0       	mov    $0xc003989c,%edx
c00352df:	0f 44 c2             	cmove  %edx,%eax
c00352e2:	83 c4 14             	add    $0x14,%esp
c00352e5:	5b                   	pop    %ebx
c00352e6:	5d                   	pop    %ebp
c00352e7:	c3                   	ret    
c00352e8:	90                   	nop
c00352e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00352f0 <__locale_charset>:
c00352f0:	55                   	push   %ebp
c00352f1:	b8 c0 d4 03 c0       	mov    $0xc003d4c0,%eax
c00352f6:	89 e5                	mov    %esp,%ebp
c00352f8:	5d                   	pop    %ebp
c00352f9:	c3                   	ret    
c00352fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035300 <__locale_mb_cur_max>:
c0035300:	55                   	push   %ebp
c0035301:	a1 18 d5 03 c0       	mov    0xc003d518,%eax
c0035306:	89 e5                	mov    %esp,%ebp
c0035308:	5d                   	pop    %ebp
c0035309:	c3                   	ret    
c003530a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035310 <__locale_msgcharset>:
c0035310:	55                   	push   %ebp
c0035311:	b8 a0 d4 03 c0       	mov    $0xc003d4a0,%eax
c0035316:	89 e5                	mov    %esp,%ebp
c0035318:	5d                   	pop    %ebp
c0035319:	c3                   	ret    
c003531a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035320 <__locale_cjk_lang>:
c0035320:	55                   	push   %ebp
c0035321:	31 c0                	xor    %eax,%eax
c0035323:	89 e5                	mov    %esp,%ebp
c0035325:	5d                   	pop    %ebp
c0035326:	c3                   	ret    
c0035327:	89 f6                	mov    %esi,%esi
c0035329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035330 <_localeconv_r>:
c0035330:	55                   	push   %ebp
c0035331:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035336:	89 e5                	mov    %esp,%ebp
c0035338:	5d                   	pop    %ebp
c0035339:	c3                   	ret    
c003533a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035340 <setlocale>:
c0035340:	55                   	push   %ebp
c0035341:	89 e5                	mov    %esp,%ebp
c0035343:	83 ec 18             	sub    $0x18,%esp
c0035346:	e8 35 cc ff ff       	call   c0031f80 <__getreent>
c003534b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003534e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035352:	8b 55 08             	mov    0x8(%ebp),%edx
c0035355:	89 04 24             	mov    %eax,(%esp)
c0035358:	89 54 24 04          	mov    %edx,0x4(%esp)
c003535c:	e8 1f ff ff ff       	call   c0035280 <_setlocale_r>
c0035361:	c9                   	leave  
c0035362:	c3                   	ret    
c0035363:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035370 <localeconv>:
c0035370:	55                   	push   %ebp
c0035371:	89 e5                	mov    %esp,%ebp
c0035373:	83 ec 08             	sub    $0x8,%esp
c0035376:	e8 05 cc ff ff       	call   c0031f80 <__getreent>
c003537b:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035380:	c9                   	leave  
c0035381:	c3                   	ret    
c0035382:	66 90                	xchg   %ax,%ax
c0035384:	66 90                	xchg   %ax,%ax
c0035386:	66 90                	xchg   %ax,%ax
c0035388:	66 90                	xchg   %ax,%ax
c003538a:	66 90                	xchg   %ax,%ax
c003538c:	66 90                	xchg   %ax,%ax
c003538e:	66 90                	xchg   %ax,%ax

c0035390 <_malloc_r>:
c0035390:	55                   	push   %ebp
c0035391:	89 e5                	mov    %esp,%ebp
c0035393:	57                   	push   %edi
c0035394:	56                   	push   %esi
c0035395:	53                   	push   %ebx
c0035396:	83 ec 2c             	sub    $0x2c,%esp
c0035399:	8b 45 0c             	mov    0xc(%ebp),%eax
c003539c:	8d 50 0b             	lea    0xb(%eax),%edx
c003539f:	83 fa 16             	cmp    $0x16,%edx
c00353a2:	76 6c                	jbe    c0035410 <_malloc_r+0x80>
c00353a4:	89 d7                	mov    %edx,%edi
c00353a6:	83 e7 f8             	and    $0xfffffff8,%edi
c00353a9:	89 fe                	mov    %edi,%esi
c00353ab:	c1 ee 1f             	shr    $0x1f,%esi
c00353ae:	39 c7                	cmp    %eax,%edi
c00353b0:	8b 45 08             	mov    0x8(%ebp),%eax
c00353b3:	89 f2                	mov    %esi,%edx
c00353b5:	72 67                	jb     c003541e <_malloc_r+0x8e>
c00353b7:	84 d2                	test   %dl,%dl
c00353b9:	75 63                	jne    c003541e <_malloc_r+0x8e>
c00353bb:	89 04 24             	mov    %eax,(%esp)
c00353be:	e8 ad 07 00 00       	call   c0035b70 <__malloc_lock>
c00353c3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c00353c9:	77 65                	ja     c0035430 <_malloc_r+0xa0>
c00353cb:	89 fa                	mov    %edi,%edx
c00353cd:	c1 ea 03             	shr    $0x3,%edx
c00353d0:	8d 04 d5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%edx,8),%eax
c00353d7:	8b 58 0c             	mov    0xc(%eax),%ebx
c00353da:	39 c3                	cmp    %eax,%ebx
c00353dc:	0f 84 3e 05 00 00    	je     c0035920 <_malloc_r+0x590>
c00353e2:	8b 43 04             	mov    0x4(%ebx),%eax
c00353e5:	83 e0 fc             	and    $0xfffffffc,%eax
c00353e8:	8b 53 0c             	mov    0xc(%ebx),%edx
c00353eb:	8b 4b 08             	mov    0x8(%ebx),%ecx
c00353ee:	89 51 0c             	mov    %edx,0xc(%ecx)
c00353f1:	89 4a 08             	mov    %ecx,0x8(%edx)
c00353f4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00353f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00353fc:	89 04 24             	mov    %eax,(%esp)
c00353ff:	e8 7c 07 00 00       	call   c0035b80 <__malloc_unlock>
c0035404:	8d 43 08             	lea    0x8(%ebx),%eax
c0035407:	83 c4 2c             	add    $0x2c,%esp
c003540a:	5b                   	pop    %ebx
c003540b:	5e                   	pop    %esi
c003540c:	5f                   	pop    %edi
c003540d:	5d                   	pop    %ebp
c003540e:	c3                   	ret    
c003540f:	90                   	nop
c0035410:	bf 10 00 00 00       	mov    $0x10,%edi
c0035415:	31 d2                	xor    %edx,%edx
c0035417:	39 c7                	cmp    %eax,%edi
c0035419:	8b 45 08             	mov    0x8(%ebp),%eax
c003541c:	73 99                	jae    c00353b7 <_malloc_r+0x27>
c003541e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035424:	83 c4 2c             	add    $0x2c,%esp
c0035427:	31 c0                	xor    %eax,%eax
c0035429:	5b                   	pop    %ebx
c003542a:	5e                   	pop    %esi
c003542b:	5f                   	pop    %edi
c003542c:	5d                   	pop    %ebp
c003542d:	c3                   	ret    
c003542e:	66 90                	xchg   %ax,%ax
c0035430:	89 fe                	mov    %edi,%esi
c0035432:	c1 ee 09             	shr    $0x9,%esi
c0035435:	85 f6                	test   %esi,%esi
c0035437:	0f 84 ab 01 00 00    	je     c00355e8 <_malloc_r+0x258>
c003543d:	83 fe 04             	cmp    $0x4,%esi
c0035440:	0f 87 8a 03 00 00    	ja     c00357d0 <_malloc_r+0x440>
c0035446:	89 fe                	mov    %edi,%esi
c0035448:	c1 ee 06             	shr    $0x6,%esi
c003544b:	83 c6 38             	add    $0x38,%esi
c003544e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035451:	8d 0c 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%ecx
c0035458:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003545b:	39 d9                	cmp    %ebx,%ecx
c003545d:	75 18                	jne    c0035477 <_malloc_r+0xe7>
c003545f:	eb 28                	jmp    c0035489 <_malloc_r+0xf9>
c0035461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035468:	85 d2                	test   %edx,%edx
c003546a:	0f 89 78 ff ff ff    	jns    c00353e8 <_malloc_r+0x58>
c0035470:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035473:	39 d9                	cmp    %ebx,%ecx
c0035475:	74 12                	je     c0035489 <_malloc_r+0xf9>
c0035477:	8b 43 04             	mov    0x4(%ebx),%eax
c003547a:	83 e0 fc             	and    $0xfffffffc,%eax
c003547d:	89 c2                	mov    %eax,%edx
c003547f:	29 fa                	sub    %edi,%edx
c0035481:	83 fa 0f             	cmp    $0xf,%edx
c0035484:	7e e2                	jle    c0035468 <_malloc_r+0xd8>
c0035486:	83 ee 01             	sub    $0x1,%esi
c0035489:	8d 46 01             	lea    0x1(%esi),%eax
c003548c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003548f:	8b 1d 50 d5 03 c0    	mov    0xc003d550,%ebx
c0035495:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c003549a:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c00354a0:	74 6b                	je     c003550d <_malloc_r+0x17d>
c00354a2:	8b 73 04             	mov    0x4(%ebx),%esi
c00354a5:	83 e6 fc             	and    $0xfffffffc,%esi
c00354a8:	89 f0                	mov    %esi,%eax
c00354aa:	29 f8                	sub    %edi,%eax
c00354ac:	83 f8 0f             	cmp    $0xf,%eax
c00354af:	0f 8f a3 03 00 00    	jg     c0035858 <_malloc_r+0x4c8>
c00354b5:	85 c0                	test   %eax,%eax
c00354b7:	c7 05 54 d5 03 c0 48 	movl   $0xc003d548,0xc003d554
c00354be:	d5 03 c0 
c00354c1:	c7 05 50 d5 03 c0 48 	movl   $0xc003d548,0xc003d550
c00354c8:	d5 03 c0 
c00354cb:	0f 89 27 01 00 00    	jns    c00355f8 <_malloc_r+0x268>
c00354d1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c00354d7:	0f 87 1b 03 00 00    	ja     c00357f8 <_malloc_r+0x468>
c00354dd:	c1 ee 03             	shr    $0x3,%esi
c00354e0:	b8 01 00 00 00       	mov    $0x1,%eax
c00354e5:	89 f1                	mov    %esi,%ecx
c00354e7:	8d 14 f5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%esi,8),%edx
c00354ee:	c1 f9 02             	sar    $0x2,%ecx
c00354f1:	d3 e0                	shl    %cl,%eax
c00354f3:	8b 4a 08             	mov    0x8(%edx),%ecx
c00354f6:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c00354fc:	89 53 0c             	mov    %edx,0xc(%ebx)
c00354ff:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0035502:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035507:	89 5a 08             	mov    %ebx,0x8(%edx)
c003550a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c003550d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035510:	be 01 00 00 00       	mov    $0x1,%esi
c0035515:	c1 f9 02             	sar    $0x2,%ecx
c0035518:	d3 e6                	shl    %cl,%esi
c003551a:	39 c6                	cmp    %eax,%esi
c003551c:	0f 87 f6 00 00 00    	ja     c0035618 <_malloc_r+0x288>
c0035522:	85 f0                	test   %esi,%eax
c0035524:	0f 85 76 03 00 00    	jne    c00358a0 <_malloc_r+0x510>
c003552a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003552d:	01 f6                	add    %esi,%esi
c003552f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035532:	85 f0                	test   %esi,%eax
c0035534:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035537:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003553a:	0f 85 60 03 00 00    	jne    c00358a0 <_malloc_r+0x510>
c0035540:	89 ca                	mov    %ecx,%edx
c0035542:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035548:	01 f6                	add    %esi,%esi
c003554a:	83 c2 04             	add    $0x4,%edx
c003554d:	85 f0                	test   %esi,%eax
c003554f:	74 f7                	je     c0035548 <_malloc_r+0x1b8>
c0035551:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035554:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035557:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003555a:	8d 34 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%esi
c0035561:	89 f1                	mov    %esi,%ecx
c0035563:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035566:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035569:	39 d9                	cmp    %ebx,%ecx
c003556b:	75 1e                	jne    c003558b <_malloc_r+0x1fb>
c003556d:	e9 36 03 00 00       	jmp    c00358a8 <_malloc_r+0x518>
c0035572:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035578:	85 d2                	test   %edx,%edx
c003557a:	0f 89 c0 03 00 00    	jns    c0035940 <_malloc_r+0x5b0>
c0035580:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035583:	39 d9                	cmp    %ebx,%ecx
c0035585:	0f 84 1d 03 00 00    	je     c00358a8 <_malloc_r+0x518>
c003558b:	8b 43 04             	mov    0x4(%ebx),%eax
c003558e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035591:	89 c2                	mov    %eax,%edx
c0035593:	29 fa                	sub    %edi,%edx
c0035595:	83 fa 0f             	cmp    $0xf,%edx
c0035598:	7e de                	jle    c0035578 <_malloc_r+0x1e8>
c003559a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c003559d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c00355a0:	83 cf 01             	or     $0x1,%edi
c00355a3:	8b 73 08             	mov    0x8(%ebx),%esi
c00355a6:	89 7b 04             	mov    %edi,0x4(%ebx)
c00355a9:	89 4e 0c             	mov    %ecx,0xc(%esi)
c00355ac:	89 71 08             	mov    %esi,0x8(%ecx)
c00355af:	89 d1                	mov    %edx,%ecx
c00355b1:	83 c9 01             	or     $0x1,%ecx
c00355b4:	a3 54 d5 03 c0       	mov    %eax,0xc003d554
c00355b9:	a3 50 d5 03 c0       	mov    %eax,0xc003d550
c00355be:	c7 40 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%eax)
c00355c5:	c7 40 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%eax)
c00355cc:	89 48 04             	mov    %ecx,0x4(%eax)
c00355cf:	89 14 10             	mov    %edx,(%eax,%edx,1)
c00355d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00355d5:	89 04 24             	mov    %eax,(%esp)
c00355d8:	e8 a3 05 00 00       	call   c0035b80 <__malloc_unlock>
c00355dd:	8d 43 08             	lea    0x8(%ebx),%eax
c00355e0:	e9 22 fe ff ff       	jmp    c0035407 <_malloc_r+0x77>
c00355e5:	8d 76 00             	lea    0x0(%esi),%esi
c00355e8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c00355ed:	be 3f 00 00 00       	mov    $0x3f,%esi
c00355f2:	e9 5a fe ff ff       	jmp    c0035451 <_malloc_r+0xc1>
c00355f7:	90                   	nop
c00355f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00355fb:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0035600:	89 04 24             	mov    %eax,(%esp)
c0035603:	e8 78 05 00 00       	call   c0035b80 <__malloc_unlock>
c0035608:	83 c4 2c             	add    $0x2c,%esp
c003560b:	8d 43 08             	lea    0x8(%ebx),%eax
c003560e:	5b                   	pop    %ebx
c003560f:	5e                   	pop    %esi
c0035610:	5f                   	pop    %edi
c0035611:	5d                   	pop    %ebp
c0035612:	c3                   	ret    
c0035613:	90                   	nop
c0035614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035618:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c003561e:	8b 73 04             	mov    0x4(%ebx),%esi
c0035621:	83 e6 fc             	and    $0xfffffffc,%esi
c0035624:	39 f7                	cmp    %esi,%edi
c0035626:	77 0d                	ja     c0035635 <_malloc_r+0x2a5>
c0035628:	89 f0                	mov    %esi,%eax
c003562a:	29 f8                	sub    %edi,%eax
c003562c:	83 f8 0f             	cmp    $0xf,%eax
c003562f:	0f 8f 6b 01 00 00    	jg     c00357a0 <_malloc_r+0x410>
c0035635:	8b 0d 50 00 07 c0    	mov    0xc0070050,%ecx
c003563b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003563e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035641:	01 f9                	add    %edi,%ecx
c0035643:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035649:	83 c1 10             	add    $0x10,%ecx
c003564c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035651:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035658:	0f 44 c1             	cmove  %ecx,%eax
c003565b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003565e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035662:	8b 45 08             	mov    0x8(%ebp),%eax
c0035665:	89 04 24             	mov    %eax,(%esp)
c0035668:	e8 03 13 00 00       	call   c0036970 <_sbrk_r>
c003566d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035670:	89 c1                	mov    %eax,%ecx
c0035672:	0f 84 17 03 00 00    	je     c003598f <_malloc_r+0x5ff>
c0035678:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c003567b:	0f 87 02 03 00 00    	ja     c0035983 <_malloc_r+0x5f3>
c0035681:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035684:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c003568a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c003568d:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c0035693:	0f 84 a9 03 00 00    	je     c0035a42 <_malloc_r+0x6b2>
c0035699:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c00356a0:	0f 84 ca 03 00 00    	je     c0035a70 <_malloc_r+0x6e0>
c00356a6:	89 c8                	mov    %ecx,%eax
c00356a8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c00356ab:	01 d0                	add    %edx,%eax
c00356ad:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c00356b2:	89 c8                	mov    %ecx,%eax
c00356b4:	ba 00 10 00 00       	mov    $0x1000,%edx
c00356b9:	83 e0 07             	and    $0x7,%eax
c00356bc:	74 0c                	je     c00356ca <_malloc_r+0x33a>
c00356be:	29 c1                	sub    %eax,%ecx
c00356c0:	ba 08 10 00 00       	mov    $0x1008,%edx
c00356c5:	8d 49 08             	lea    0x8(%ecx),%ecx
c00356c8:	29 c2                	sub    %eax,%edx
c00356ca:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00356cd:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00356d0:	01 c8                	add    %ecx,%eax
c00356d2:	25 ff 0f 00 00       	and    $0xfff,%eax
c00356d7:	29 c2                	sub    %eax,%edx
c00356d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00356dc:	89 54 24 04          	mov    %edx,0x4(%esp)
c00356e0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00356e3:	89 04 24             	mov    %eax,(%esp)
c00356e6:	e8 85 12 00 00       	call   c0036970 <_sbrk_r>
c00356eb:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00356ee:	83 f8 ff             	cmp    $0xffffffff,%eax
c00356f1:	0f 84 6d 03 00 00    	je     c0035a64 <_malloc_r+0x6d4>
c00356f7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00356fa:	29 c8                	sub    %ecx,%eax
c00356fc:	01 d0                	add    %edx,%eax
c00356fe:	83 c8 01             	or     $0x1,%eax
c0035701:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c0035707:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c003570d:	89 0d 48 d5 03 c0    	mov    %ecx,0xc003d548
c0035713:	89 41 04             	mov    %eax,0x4(%ecx)
c0035716:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c003571c:	0f 84 f2 02 00 00    	je     c0035a14 <_malloc_r+0x684>
c0035722:	83 fe 0f             	cmp    $0xf,%esi
c0035725:	0f 86 8d 02 00 00    	jbe    c00359b8 <_malloc_r+0x628>
c003572b:	8b 43 04             	mov    0x4(%ebx),%eax
c003572e:	83 ee 0c             	sub    $0xc,%esi
c0035731:	83 e6 f8             	and    $0xfffffff8,%esi
c0035734:	83 e0 01             	and    $0x1,%eax
c0035737:	09 f0                	or     %esi,%eax
c0035739:	83 fe 0f             	cmp    $0xf,%esi
c003573c:	89 43 04             	mov    %eax,0x4(%ebx)
c003573f:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035744:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003574b:	00 
c003574c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035753:	00 
c0035754:	0f 87 a2 02 00 00    	ja     c00359fc <_malloc_r+0x66c>
c003575a:	3b 15 4c 00 07 c0    	cmp    0xc007004c,%edx
c0035760:	76 06                	jbe    c0035768 <_malloc_r+0x3d8>
c0035762:	89 15 4c 00 07 c0    	mov    %edx,0xc007004c
c0035768:	3b 15 48 00 07 c0    	cmp    0xc0070048,%edx
c003576e:	76 06                	jbe    c0035776 <_malloc_r+0x3e6>
c0035770:	89 15 48 00 07 c0    	mov    %edx,0xc0070048
c0035776:	8b 50 04             	mov    0x4(%eax),%edx
c0035779:	89 c3                	mov    %eax,%ebx
c003577b:	83 e2 fc             	and    $0xfffffffc,%edx
c003577e:	89 d0                	mov    %edx,%eax
c0035780:	29 f8                	sub    %edi,%eax
c0035782:	39 d7                	cmp    %edx,%edi
c0035784:	77 05                	ja     c003578b <_malloc_r+0x3fb>
c0035786:	83 f8 0f             	cmp    $0xf,%eax
c0035789:	7f 15                	jg     c00357a0 <_malloc_r+0x410>
c003578b:	8b 45 08             	mov    0x8(%ebp),%eax
c003578e:	89 04 24             	mov    %eax,(%esp)
c0035791:	e8 ea 03 00 00       	call   c0035b80 <__malloc_unlock>
c0035796:	31 c0                	xor    %eax,%eax
c0035798:	e9 6a fc ff ff       	jmp    c0035407 <_malloc_r+0x77>
c003579d:	8d 76 00             	lea    0x0(%esi),%esi
c00357a0:	89 fa                	mov    %edi,%edx
c00357a2:	83 c8 01             	or     $0x1,%eax
c00357a5:	83 ca 01             	or     $0x1,%edx
c00357a8:	89 53 04             	mov    %edx,0x4(%ebx)
c00357ab:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c00357ae:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c00357b4:	89 42 04             	mov    %eax,0x4(%edx)
c00357b7:	8b 45 08             	mov    0x8(%ebp),%eax
c00357ba:	89 04 24             	mov    %eax,(%esp)
c00357bd:	e8 be 03 00 00       	call   c0035b80 <__malloc_unlock>
c00357c2:	83 c4 2c             	add    $0x2c,%esp
c00357c5:	8d 43 08             	lea    0x8(%ebx),%eax
c00357c8:	5b                   	pop    %ebx
c00357c9:	5e                   	pop    %esi
c00357ca:	5f                   	pop    %edi
c00357cb:	5d                   	pop    %ebp
c00357cc:	c3                   	ret    
c00357cd:	8d 76 00             	lea    0x0(%esi),%esi
c00357d0:	83 fe 14             	cmp    $0x14,%esi
c00357d3:	0f 86 8f 01 00 00    	jbe    c0035968 <_malloc_r+0x5d8>
c00357d9:	83 fe 54             	cmp    $0x54,%esi
c00357dc:	0f 87 be 01 00 00    	ja     c00359a0 <_malloc_r+0x610>
c00357e2:	89 fe                	mov    %edi,%esi
c00357e4:	c1 ee 0c             	shr    $0xc,%esi
c00357e7:	83 c6 6e             	add    $0x6e,%esi
c00357ea:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00357ed:	e9 5f fc ff ff       	jmp    c0035451 <_malloc_r+0xc1>
c00357f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00357f8:	89 f1                	mov    %esi,%ecx
c00357fa:	c1 e9 09             	shr    $0x9,%ecx
c00357fd:	83 f9 04             	cmp    $0x4,%ecx
c0035800:	0f 86 6d 01 00 00    	jbe    c0035973 <_malloc_r+0x5e3>
c0035806:	83 f9 14             	cmp    $0x14,%ecx
c0035809:	0f 87 0f 02 00 00    	ja     c0035a1e <_malloc_r+0x68e>
c003580f:	83 c1 5b             	add    $0x5b,%ecx
c0035812:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035815:	8d 04 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%eax
c003581c:	8b 50 08             	mov    0x8(%eax),%edx
c003581f:	39 c2                	cmp    %eax,%edx
c0035821:	0f 84 a1 01 00 00    	je     c00359c8 <_malloc_r+0x638>
c0035827:	90                   	nop
c0035828:	8b 4a 04             	mov    0x4(%edx),%ecx
c003582b:	83 e1 fc             	and    $0xfffffffc,%ecx
c003582e:	39 ce                	cmp    %ecx,%esi
c0035830:	73 07                	jae    c0035839 <_malloc_r+0x4a9>
c0035832:	8b 52 08             	mov    0x8(%edx),%edx
c0035835:	39 d0                	cmp    %edx,%eax
c0035837:	75 ef                	jne    c0035828 <_malloc_r+0x498>
c0035839:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003583c:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035841:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035844:	89 53 08             	mov    %edx,0x8(%ebx)
c0035847:	89 59 08             	mov    %ebx,0x8(%ecx)
c003584a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003584d:	e9 bb fc ff ff       	jmp    c003550d <_malloc_r+0x17d>
c0035852:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035858:	89 c1                	mov    %eax,%ecx
c003585a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003585d:	83 c9 01             	or     $0x1,%ecx
c0035860:	83 cf 01             	or     $0x1,%edi
c0035863:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035866:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c003586c:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0035872:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0035879:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0035880:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035883:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035886:	8b 45 08             	mov    0x8(%ebp),%eax
c0035889:	89 04 24             	mov    %eax,(%esp)
c003588c:	e8 ef 02 00 00       	call   c0035b80 <__malloc_unlock>
c0035891:	8d 43 08             	lea    0x8(%ebx),%eax
c0035894:	e9 6e fb ff ff       	jmp    c0035407 <_malloc_r+0x77>
c0035899:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00358a0:	89 75 dc             	mov    %esi,-0x24(%ebp)
c00358a3:	e9 af fc ff ff       	jmp    c0035557 <_malloc_r+0x1c7>
c00358a8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c00358ac:	83 c1 08             	add    $0x8,%ecx
c00358af:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c00358b3:	0f 85 ad fc ff ff    	jne    c0035566 <_malloc_r+0x1d6>
c00358b9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00358bc:	eb 12                	jmp    c00358d0 <_malloc_r+0x540>
c00358be:	66 90                	xchg   %ax,%ax
c00358c0:	8d 56 f8             	lea    -0x8(%esi),%edx
c00358c3:	8b 36                	mov    (%esi),%esi
c00358c5:	83 e8 01             	sub    $0x1,%eax
c00358c8:	39 d6                	cmp    %edx,%esi
c00358ca:	0f 85 ea 01 00 00    	jne    c0035aba <_malloc_r+0x72a>
c00358d0:	a8 03                	test   $0x3,%al
c00358d2:	75 ec                	jne    c00358c0 <_malloc_r+0x530>
c00358d4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00358d7:	f7 d0                	not    %eax
c00358d9:	23 05 44 d5 03 c0    	and    0xc003d544,%eax
c00358df:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00358e4:	d1 65 dc             	shll   -0x24(%ebp)
c00358e7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00358ea:	39 c2                	cmp    %eax,%edx
c00358ec:	0f 87 26 fd ff ff    	ja     c0035618 <_malloc_r+0x288>
c00358f2:	85 d2                	test   %edx,%edx
c00358f4:	0f 84 1e fd ff ff    	je     c0035618 <_malloc_r+0x288>
c00358fa:	85 c2                	test   %eax,%edx
c00358fc:	0f 85 c2 01 00 00    	jne    c0035ac4 <_malloc_r+0x734>
c0035902:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0035905:	89 f1                	mov    %esi,%ecx
c0035907:	01 d2                	add    %edx,%edx
c0035909:	83 c1 04             	add    $0x4,%ecx
c003590c:	85 d0                	test   %edx,%eax
c003590e:	74 f7                	je     c0035907 <_malloc_r+0x577>
c0035910:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035913:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0035916:	e9 3c fc ff ff       	jmp    c0035557 <_malloc_r+0x1c7>
c003591b:	90                   	nop
c003591c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035920:	8d 43 08             	lea    0x8(%ebx),%eax
c0035923:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035926:	39 d8                	cmp    %ebx,%eax
c0035928:	0f 85 b4 fa ff ff    	jne    c00353e2 <_malloc_r+0x52>
c003592e:	8d 42 02             	lea    0x2(%edx),%eax
c0035931:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035934:	e9 56 fb ff ff       	jmp    c003548f <_malloc_r+0xff>
c0035939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035940:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035945:	8b 53 08             	mov    0x8(%ebx),%edx
c0035948:	8b 43 0c             	mov    0xc(%ebx),%eax
c003594b:	89 42 0c             	mov    %eax,0xc(%edx)
c003594e:	89 50 08             	mov    %edx,0x8(%eax)
c0035951:	8b 45 08             	mov    0x8(%ebp),%eax
c0035954:	89 04 24             	mov    %eax,(%esp)
c0035957:	e8 24 02 00 00       	call   c0035b80 <__malloc_unlock>
c003595c:	8d 43 08             	lea    0x8(%ebx),%eax
c003595f:	e9 a3 fa ff ff       	jmp    c0035407 <_malloc_r+0x77>
c0035964:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035968:	83 c6 5b             	add    $0x5b,%esi
c003596b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003596e:	e9 de fa ff ff       	jmp    c0035451 <_malloc_r+0xc1>
c0035973:	89 f1                	mov    %esi,%ecx
c0035975:	c1 e9 06             	shr    $0x6,%ecx
c0035978:	83 c1 38             	add    $0x38,%ecx
c003597b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003597e:	e9 92 fe ff ff       	jmp    c0035815 <_malloc_r+0x485>
c0035983:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c0035989:	0f 84 f2 fc ff ff    	je     c0035681 <_malloc_r+0x2f1>
c003598f:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c0035995:	8b 53 04             	mov    0x4(%ebx),%edx
c0035998:	83 e2 fc             	and    $0xfffffffc,%edx
c003599b:	e9 de fd ff ff       	jmp    c003577e <_malloc_r+0x3ee>
c00359a0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c00359a6:	77 3c                	ja     c00359e4 <_malloc_r+0x654>
c00359a8:	89 fe                	mov    %edi,%esi
c00359aa:	c1 ee 0f             	shr    $0xf,%esi
c00359ad:	83 c6 77             	add    $0x77,%esi
c00359b0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359b3:	e9 99 fa ff ff       	jmp    c0035451 <_malloc_r+0xc1>
c00359b8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c00359bf:	89 cb                	mov    %ecx,%ebx
c00359c1:	31 d2                	xor    %edx,%edx
c00359c3:	e9 b6 fd ff ff       	jmp    c003577e <_malloc_r+0x3ee>
c00359c8:	c1 f9 02             	sar    $0x2,%ecx
c00359cb:	b8 01 00 00 00       	mov    $0x1,%eax
c00359d0:	d3 e0                	shl    %cl,%eax
c00359d2:	89 d1                	mov    %edx,%ecx
c00359d4:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c00359da:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00359df:	e9 5d fe ff ff       	jmp    c0035841 <_malloc_r+0x4b1>
c00359e4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c00359ea:	77 47                	ja     c0035a33 <_malloc_r+0x6a3>
c00359ec:	89 fe                	mov    %edi,%esi
c00359ee:	c1 ee 12             	shr    $0x12,%esi
c00359f1:	83 c6 7c             	add    $0x7c,%esi
c00359f4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359f7:	e9 55 fa ff ff       	jmp    c0035451 <_malloc_r+0xc1>
c00359fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00359ff:	83 c3 08             	add    $0x8,%ebx
c0035a02:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035a06:	89 04 24             	mov    %eax,(%esp)
c0035a09:	e8 c2 22 00 00       	call   c0037cd0 <_free_r>
c0035a0e:	8b 15 20 00 07 c0    	mov    0xc0070020,%edx
c0035a14:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035a19:	e9 3c fd ff ff       	jmp    c003575a <_malloc_r+0x3ca>
c0035a1e:	83 f9 54             	cmp    $0x54,%ecx
c0035a21:	77 58                	ja     c0035a7b <_malloc_r+0x6eb>
c0035a23:	89 f1                	mov    %esi,%ecx
c0035a25:	c1 e9 0c             	shr    $0xc,%ecx
c0035a28:	83 c1 6e             	add    $0x6e,%ecx
c0035a2b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a2e:	e9 e2 fd ff ff       	jmp    c0035815 <_malloc_r+0x485>
c0035a33:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a38:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035a3d:	e9 0f fa ff ff       	jmp    c0035451 <_malloc_r+0xc1>
c0035a42:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035a49:	0f 85 4a fc ff ff    	jne    c0035699 <_malloc_r+0x309>
c0035a4f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035a52:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035a57:	01 f1                	add    %esi,%ecx
c0035a59:	83 c9 01             	or     $0x1,%ecx
c0035a5c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035a5f:	e9 f6 fc ff ff       	jmp    c003575a <_malloc_r+0x3ca>
c0035a64:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a69:	31 d2                	xor    %edx,%edx
c0035a6b:	e9 91 fc ff ff       	jmp    c0035701 <_malloc_r+0x371>
c0035a70:	89 0d 20 d5 03 c0    	mov    %ecx,0xc003d520
c0035a76:	e9 37 fc ff ff       	jmp    c00356b2 <_malloc_r+0x322>
c0035a7b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035a81:	77 10                	ja     c0035a93 <_malloc_r+0x703>
c0035a83:	89 f1                	mov    %esi,%ecx
c0035a85:	c1 e9 0f             	shr    $0xf,%ecx
c0035a88:	83 c1 77             	add    $0x77,%ecx
c0035a8b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a8e:	e9 82 fd ff ff       	jmp    c0035815 <_malloc_r+0x485>
c0035a93:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035a99:	77 10                	ja     c0035aab <_malloc_r+0x71b>
c0035a9b:	89 f1                	mov    %esi,%ecx
c0035a9d:	c1 e9 12             	shr    $0x12,%ecx
c0035aa0:	83 c1 7c             	add    $0x7c,%ecx
c0035aa3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035aa6:	e9 6a fd ff ff       	jmp    c0035815 <_malloc_r+0x485>
c0035aab:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035ab0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035ab5:	e9 5b fd ff ff       	jmp    c0035815 <_malloc_r+0x485>
c0035aba:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035abf:	e9 20 fe ff ff       	jmp    c00358e4 <_malloc_r+0x554>
c0035ac4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035ac7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035aca:	e9 88 fa ff ff       	jmp    c0035557 <_malloc_r+0x1c7>
c0035acf:	90                   	nop

c0035ad0 <memchr>:
c0035ad0:	55                   	push   %ebp
c0035ad1:	89 e5                	mov    %esp,%ebp
c0035ad3:	57                   	push   %edi
c0035ad4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035ad8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035adb:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035ade:	31 d2                	xor    %edx,%edx
c0035ae0:	85 c9                	test   %ecx,%ecx
c0035ae2:	74 79                	je     c0035b5d <L20>
c0035ae4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035aea:	74 28                	je     c0035b14 <L5>
c0035aec:	3a 07                	cmp    (%edi),%al
c0035aee:	74 6a                	je     c0035b5a <L15>
c0035af0:	47                   	inc    %edi
c0035af1:	49                   	dec    %ecx
c0035af2:	74 69                	je     c0035b5d <L20>
c0035af4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035afa:	74 18                	je     c0035b14 <L5>
c0035afc:	3a 07                	cmp    (%edi),%al
c0035afe:	74 5a                	je     c0035b5a <L15>
c0035b00:	47                   	inc    %edi
c0035b01:	49                   	dec    %ecx
c0035b02:	74 59                	je     c0035b5d <L20>
c0035b04:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b0a:	74 08                	je     c0035b14 <L5>
c0035b0c:	3a 07                	cmp    (%edi),%al
c0035b0e:	74 4a                	je     c0035b5a <L15>
c0035b10:	47                   	inc    %edi
c0035b11:	49                   	dec    %ecx
c0035b12:	74 49                	je     c0035b5d <L20>

c0035b14 <L5>:
c0035b14:	88 c4                	mov    %al,%ah
c0035b16:	89 c2                	mov    %eax,%edx
c0035b18:	c1 e2 10             	shl    $0x10,%edx
c0035b1b:	09 d0                	or     %edx,%eax
c0035b1d:	53                   	push   %ebx
c0035b1e:	66 90                	xchg   %ax,%ax

c0035b20 <L8>:
c0035b20:	83 e9 04             	sub    $0x4,%ecx
c0035b23:	72 1c                	jb     c0035b41 <L9>
c0035b25:	8b 17                	mov    (%edi),%edx
c0035b27:	83 c7 04             	add    $0x4,%edi
c0035b2a:	31 c2                	xor    %eax,%edx
c0035b2c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035b32:	f7 d2                	not    %edx
c0035b34:	21 d3                	and    %edx,%ebx
c0035b36:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035b3c:	74 e2                	je     c0035b20 <L8>
c0035b3e:	83 ef 04             	sub    $0x4,%edi

c0035b41 <L9>:
c0035b41:	5b                   	pop    %ebx
c0035b42:	31 d2                	xor    %edx,%edx
c0035b44:	83 c1 04             	add    $0x4,%ecx
c0035b47:	74 14                	je     c0035b5d <L20>
c0035b49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035b50 <L10>:
c0035b50:	3a 07                	cmp    (%edi),%al
c0035b52:	74 06                	je     c0035b5a <L15>
c0035b54:	47                   	inc    %edi
c0035b55:	49                   	dec    %ecx
c0035b56:	75 f8                	jne    c0035b50 <L10>
c0035b58:	31 ff                	xor    %edi,%edi

c0035b5a <L15>:
c0035b5a:	4a                   	dec    %edx
c0035b5b:	21 fa                	and    %edi,%edx

c0035b5d <L20>:
c0035b5d:	89 d0                	mov    %edx,%eax
c0035b5f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035b62:	5f                   	pop    %edi
c0035b63:	c9                   	leave  
c0035b64:	c3                   	ret    
c0035b65:	66 90                	xchg   %ax,%ax
c0035b67:	66 90                	xchg   %ax,%ax
c0035b69:	66 90                	xchg   %ax,%ax
c0035b6b:	66 90                	xchg   %ax,%ax
c0035b6d:	66 90                	xchg   %ax,%ax
c0035b6f:	90                   	nop

c0035b70 <__malloc_lock>:
c0035b70:	55                   	push   %ebp
c0035b71:	89 e5                	mov    %esp,%ebp
c0035b73:	5d                   	pop    %ebp
c0035b74:	c3                   	ret    
c0035b75:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035b79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035b80 <__malloc_unlock>:
c0035b80:	55                   	push   %ebp
c0035b81:	89 e5                	mov    %esp,%ebp
c0035b83:	5d                   	pop    %ebp
c0035b84:	c3                   	ret    
c0035b85:	66 90                	xchg   %ax,%ax
c0035b87:	66 90                	xchg   %ax,%ax
c0035b89:	66 90                	xchg   %ax,%ax
c0035b8b:	66 90                	xchg   %ax,%ax
c0035b8d:	66 90                	xchg   %ax,%ax
c0035b8f:	90                   	nop

c0035b90 <_Balloc>:
c0035b90:	55                   	push   %ebp
c0035b91:	89 e5                	mov    %esp,%ebp
c0035b93:	57                   	push   %edi
c0035b94:	56                   	push   %esi
c0035b95:	53                   	push   %ebx
c0035b96:	83 ec 1c             	sub    $0x1c,%esp
c0035b99:	8b 75 08             	mov    0x8(%ebp),%esi
c0035b9c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035b9f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035ba2:	85 c0                	test   %eax,%eax
c0035ba4:	74 2a                	je     c0035bd0 <_Balloc+0x40>
c0035ba6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035ba9:	8b 02                	mov    (%edx),%eax
c0035bab:	85 c0                	test   %eax,%eax
c0035bad:	74 49                	je     c0035bf8 <_Balloc+0x68>
c0035baf:	8b 08                	mov    (%eax),%ecx
c0035bb1:	89 0a                	mov    %ecx,(%edx)
c0035bb3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035bba:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035bc1:	83 c4 1c             	add    $0x1c,%esp
c0035bc4:	5b                   	pop    %ebx
c0035bc5:	5e                   	pop    %esi
c0035bc6:	5f                   	pop    %edi
c0035bc7:	5d                   	pop    %ebp
c0035bc8:	c3                   	ret    
c0035bc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035bd0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035bd7:	00 
c0035bd8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035bdf:	00 
c0035be0:	89 34 24             	mov    %esi,(%esp)
c0035be3:	e8 38 1f 00 00       	call   c0037b20 <_calloc_r>
c0035be8:	85 c0                	test   %eax,%eax
c0035bea:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035bed:	75 b7                	jne    c0035ba6 <_Balloc+0x16>
c0035bef:	31 c0                	xor    %eax,%eax
c0035bf1:	eb ce                	jmp    c0035bc1 <_Balloc+0x31>
c0035bf3:	90                   	nop
c0035bf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035bf8:	89 d9                	mov    %ebx,%ecx
c0035bfa:	bf 01 00 00 00       	mov    $0x1,%edi
c0035bff:	d3 e7                	shl    %cl,%edi
c0035c01:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035c08:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035c0c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035c13:	00 
c0035c14:	89 34 24             	mov    %esi,(%esp)
c0035c17:	e8 04 1f 00 00       	call   c0037b20 <_calloc_r>
c0035c1c:	85 c0                	test   %eax,%eax
c0035c1e:	74 cf                	je     c0035bef <_Balloc+0x5f>
c0035c20:	89 58 04             	mov    %ebx,0x4(%eax)
c0035c23:	89 78 08             	mov    %edi,0x8(%eax)
c0035c26:	eb 8b                	jmp    c0035bb3 <_Balloc+0x23>
c0035c28:	90                   	nop
c0035c29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035c30 <_Bfree>:
c0035c30:	55                   	push   %ebp
c0035c31:	89 e5                	mov    %esp,%ebp
c0035c33:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c36:	85 c0                	test   %eax,%eax
c0035c38:	74 12                	je     c0035c4c <_Bfree+0x1c>
c0035c3a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035c3d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035c40:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035c43:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035c46:	8b 0a                	mov    (%edx),%ecx
c0035c48:	89 08                	mov    %ecx,(%eax)
c0035c4a:	89 02                	mov    %eax,(%edx)
c0035c4c:	5d                   	pop    %ebp
c0035c4d:	c3                   	ret    
c0035c4e:	66 90                	xchg   %ax,%ax

c0035c50 <__multadd>:
c0035c50:	55                   	push   %ebp
c0035c51:	89 e5                	mov    %esp,%ebp
c0035c53:	57                   	push   %edi
c0035c54:	56                   	push   %esi
c0035c55:	53                   	push   %ebx
c0035c56:	83 ec 2c             	sub    $0x2c,%esp
c0035c59:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c5c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035c5f:	8b 40 10             	mov    0x10(%eax),%eax
c0035c62:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035c65:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c68:	8d 78 14             	lea    0x14(%eax),%edi
c0035c6b:	31 c0                	xor    %eax,%eax
c0035c6d:	8d 76 00             	lea    0x0(%esi),%esi
c0035c70:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035c73:	0f b7 d1             	movzwl %cx,%edx
c0035c76:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035c7a:	c1 e9 10             	shr    $0x10,%ecx
c0035c7d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035c81:	01 da                	add    %ebx,%edx
c0035c83:	89 d3                	mov    %edx,%ebx
c0035c85:	0f b7 d2             	movzwl %dx,%edx
c0035c88:	c1 eb 10             	shr    $0x10,%ebx
c0035c8b:	01 d9                	add    %ebx,%ecx
c0035c8d:	89 ce                	mov    %ecx,%esi
c0035c8f:	c1 e1 10             	shl    $0x10,%ecx
c0035c92:	01 d1                	add    %edx,%ecx
c0035c94:	c1 ee 10             	shr    $0x10,%esi
c0035c97:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035c9a:	83 c0 01             	add    $0x1,%eax
c0035c9d:	89 f3                	mov    %esi,%ebx
c0035c9f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035ca2:	7f cc                	jg     c0035c70 <__multadd+0x20>
c0035ca4:	85 f6                	test   %esi,%esi
c0035ca6:	74 1b                	je     c0035cc3 <__multadd+0x73>
c0035ca8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cab:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035cae:	3b 78 08             	cmp    0x8(%eax),%edi
c0035cb1:	7d 1d                	jge    c0035cd0 <__multadd+0x80>
c0035cb3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035cb6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035cb9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035cbd:	83 c0 01             	add    $0x1,%eax
c0035cc0:	89 47 10             	mov    %eax,0x10(%edi)
c0035cc3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cc6:	83 c4 2c             	add    $0x2c,%esp
c0035cc9:	5b                   	pop    %ebx
c0035cca:	5e                   	pop    %esi
c0035ccb:	5f                   	pop    %edi
c0035ccc:	5d                   	pop    %ebp
c0035ccd:	c3                   	ret    
c0035cce:	66 90                	xchg   %ax,%ax
c0035cd0:	8b 40 04             	mov    0x4(%eax),%eax
c0035cd3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035cd6:	83 c0 01             	add    $0x1,%eax
c0035cd9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035cdd:	8b 45 08             	mov    0x8(%ebp),%eax
c0035ce0:	89 04 24             	mov    %eax,(%esp)
c0035ce3:	e8 a8 fe ff ff       	call   c0035b90 <_Balloc>
c0035ce8:	89 c3                	mov    %eax,%ebx
c0035cea:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035ced:	8b 40 10             	mov    0x10(%eax),%eax
c0035cf0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035cf7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035cfb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cfe:	83 c0 0c             	add    $0xc,%eax
c0035d01:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d05:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035d08:	89 04 24             	mov    %eax,(%esp)
c0035d0b:	e8 c4 c0 ff ff       	call   c0031dd4 <memcpy>
c0035d10:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d13:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035d16:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035d19:	8b 50 04             	mov    0x4(%eax),%edx
c0035d1c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d1f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035d22:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035d25:	8b 10                	mov    (%eax),%edx
c0035d27:	89 17                	mov    %edx,(%edi)
c0035d29:	89 38                	mov    %edi,(%eax)
c0035d2b:	eb 86                	jmp    c0035cb3 <__multadd+0x63>
c0035d2d:	8d 76 00             	lea    0x0(%esi),%esi

c0035d30 <__s2b>:
c0035d30:	55                   	push   %ebp
c0035d31:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035d36:	89 e5                	mov    %esp,%ebp
c0035d38:	57                   	push   %edi
c0035d39:	56                   	push   %esi
c0035d3a:	53                   	push   %ebx
c0035d3b:	83 ec 2c             	sub    $0x2c,%esp
c0035d3e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035d41:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035d44:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035d47:	8d 48 08             	lea    0x8(%eax),%ecx
c0035d4a:	89 c8                	mov    %ecx,%eax
c0035d4c:	f7 ea                	imul   %edx
c0035d4e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035d51:	d1 fa                	sar    %edx
c0035d53:	29 ca                	sub    %ecx,%edx
c0035d55:	83 fa 01             	cmp    $0x1,%edx
c0035d58:	0f 8e be 00 00 00    	jle    c0035e1c <__s2b+0xec>
c0035d5e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035d63:	31 c9                	xor    %ecx,%ecx
c0035d65:	8d 76 00             	lea    0x0(%esi),%esi
c0035d68:	01 c0                	add    %eax,%eax
c0035d6a:	83 c1 01             	add    $0x1,%ecx
c0035d6d:	39 c2                	cmp    %eax,%edx
c0035d6f:	7f f7                	jg     c0035d68 <__s2b+0x38>
c0035d71:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035d75:	89 1c 24             	mov    %ebx,(%esp)
c0035d78:	e8 13 fe ff ff       	call   c0035b90 <_Balloc>
c0035d7d:	8b 55 18             	mov    0x18(%ebp),%edx
c0035d80:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035d84:	89 50 14             	mov    %edx,0x14(%eax)
c0035d87:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035d8e:	0f 8e 7c 00 00 00    	jle    c0035e10 <__s2b+0xe0>
c0035d94:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035d97:	03 75 10             	add    0x10(%ebp),%esi
c0035d9a:	89 cf                	mov    %ecx,%edi
c0035d9c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035d9f:	90                   	nop
c0035da0:	83 c7 01             	add    $0x1,%edi
c0035da3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035da7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dae:	00 
c0035daf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035db3:	89 1c 24             	mov    %ebx,(%esp)
c0035db6:	83 ea 30             	sub    $0x30,%edx
c0035db9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035dbd:	e8 8e fe ff ff       	call   c0035c50 <__multadd>
c0035dc2:	39 f7                	cmp    %esi,%edi
c0035dc4:	75 da                	jne    c0035da0 <__s2b+0x70>
c0035dc6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035dc9:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035dcc:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035dd0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035dd3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035dd6:	7e 2e                	jle    c0035e06 <__s2b+0xd6>
c0035dd8:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035ddb:	29 cf                	sub    %ecx,%edi
c0035ddd:	01 f7                	add    %esi,%edi
c0035ddf:	90                   	nop
c0035de0:	83 c6 01             	add    $0x1,%esi
c0035de3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035de7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dee:	00 
c0035def:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035df3:	89 1c 24             	mov    %ebx,(%esp)
c0035df6:	83 ea 30             	sub    $0x30,%edx
c0035df9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035dfd:	e8 4e fe ff ff       	call   c0035c50 <__multadd>
c0035e02:	39 fe                	cmp    %edi,%esi
c0035e04:	75 da                	jne    c0035de0 <__s2b+0xb0>
c0035e06:	83 c4 2c             	add    $0x2c,%esp
c0035e09:	5b                   	pop    %ebx
c0035e0a:	5e                   	pop    %esi
c0035e0b:	5f                   	pop    %edi
c0035e0c:	5d                   	pop    %ebp
c0035e0d:	c3                   	ret    
c0035e0e:	66 90                	xchg   %ax,%ax
c0035e10:	83 c6 0a             	add    $0xa,%esi
c0035e13:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035e1a:	eb b4                	jmp    c0035dd0 <__s2b+0xa0>
c0035e1c:	31 c9                	xor    %ecx,%ecx
c0035e1e:	e9 4e ff ff ff       	jmp    c0035d71 <__s2b+0x41>
c0035e23:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035e29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035e30 <__hi0bits>:
c0035e30:	55                   	push   %ebp
c0035e31:	31 c9                	xor    %ecx,%ecx
c0035e33:	89 e5                	mov    %esp,%ebp
c0035e35:	8b 55 08             	mov    0x8(%ebp),%edx
c0035e38:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035e3e:	75 05                	jne    c0035e45 <__hi0bits+0x15>
c0035e40:	c1 e2 10             	shl    $0x10,%edx
c0035e43:	b1 10                	mov    $0x10,%cl
c0035e45:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035e4b:	75 06                	jne    c0035e53 <__hi0bits+0x23>
c0035e4d:	83 c1 08             	add    $0x8,%ecx
c0035e50:	c1 e2 08             	shl    $0x8,%edx
c0035e53:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035e59:	75 06                	jne    c0035e61 <__hi0bits+0x31>
c0035e5b:	83 c1 04             	add    $0x4,%ecx
c0035e5e:	c1 e2 04             	shl    $0x4,%edx
c0035e61:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035e67:	75 06                	jne    c0035e6f <__hi0bits+0x3f>
c0035e69:	83 c1 02             	add    $0x2,%ecx
c0035e6c:	c1 e2 02             	shl    $0x2,%edx
c0035e6f:	85 d2                	test   %edx,%edx
c0035e71:	89 c8                	mov    %ecx,%eax
c0035e73:	78 0d                	js     c0035e82 <__hi0bits+0x52>
c0035e75:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035e7b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035e80:	75 06                	jne    c0035e88 <__hi0bits+0x58>
c0035e82:	5d                   	pop    %ebp
c0035e83:	c3                   	ret    
c0035e84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035e88:	8d 41 01             	lea    0x1(%ecx),%eax
c0035e8b:	5d                   	pop    %ebp
c0035e8c:	c3                   	ret    
c0035e8d:	8d 76 00             	lea    0x0(%esi),%esi

c0035e90 <__lo0bits>:
c0035e90:	55                   	push   %ebp
c0035e91:	89 e5                	mov    %esp,%ebp
c0035e93:	53                   	push   %ebx
c0035e94:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035e97:	8b 13                	mov    (%ebx),%edx
c0035e99:	f6 c2 07             	test   $0x7,%dl
c0035e9c:	74 1a                	je     c0035eb8 <__lo0bits+0x28>
c0035e9e:	31 c0                	xor    %eax,%eax
c0035ea0:	f6 c2 01             	test   $0x1,%dl
c0035ea3:	75 0f                	jne    c0035eb4 <__lo0bits+0x24>
c0035ea5:	f6 c2 02             	test   $0x2,%dl
c0035ea8:	75 56                	jne    c0035f00 <__lo0bits+0x70>
c0035eaa:	c1 ea 02             	shr    $0x2,%edx
c0035ead:	b8 02 00 00 00       	mov    $0x2,%eax
c0035eb2:	89 13                	mov    %edx,(%ebx)
c0035eb4:	5b                   	pop    %ebx
c0035eb5:	5d                   	pop    %ebp
c0035eb6:	c3                   	ret    
c0035eb7:	90                   	nop
c0035eb8:	31 c9                	xor    %ecx,%ecx
c0035eba:	66 85 d2             	test   %dx,%dx
c0035ebd:	75 05                	jne    c0035ec4 <__lo0bits+0x34>
c0035ebf:	c1 ea 10             	shr    $0x10,%edx
c0035ec2:	b1 10                	mov    $0x10,%cl
c0035ec4:	84 d2                	test   %dl,%dl
c0035ec6:	75 06                	jne    c0035ece <__lo0bits+0x3e>
c0035ec8:	83 c1 08             	add    $0x8,%ecx
c0035ecb:	c1 ea 08             	shr    $0x8,%edx
c0035ece:	f6 c2 0f             	test   $0xf,%dl
c0035ed1:	75 06                	jne    c0035ed9 <__lo0bits+0x49>
c0035ed3:	83 c1 04             	add    $0x4,%ecx
c0035ed6:	c1 ea 04             	shr    $0x4,%edx
c0035ed9:	f6 c2 03             	test   $0x3,%dl
c0035edc:	75 06                	jne    c0035ee4 <__lo0bits+0x54>
c0035ede:	83 c1 02             	add    $0x2,%ecx
c0035ee1:	c1 ea 02             	shr    $0x2,%edx
c0035ee4:	f6 c2 01             	test   $0x1,%dl
c0035ee7:	75 0c                	jne    c0035ef5 <__lo0bits+0x65>
c0035ee9:	d1 ea                	shr    %edx
c0035eeb:	b8 20 00 00 00       	mov    $0x20,%eax
c0035ef0:	74 c2                	je     c0035eb4 <__lo0bits+0x24>
c0035ef2:	83 c1 01             	add    $0x1,%ecx
c0035ef5:	89 13                	mov    %edx,(%ebx)
c0035ef7:	89 c8                	mov    %ecx,%eax
c0035ef9:	5b                   	pop    %ebx
c0035efa:	5d                   	pop    %ebp
c0035efb:	c3                   	ret    
c0035efc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f00:	d1 ea                	shr    %edx
c0035f02:	b0 01                	mov    $0x1,%al
c0035f04:	89 13                	mov    %edx,(%ebx)
c0035f06:	5b                   	pop    %ebx
c0035f07:	5d                   	pop    %ebp
c0035f08:	c3                   	ret    
c0035f09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f10 <__i2b>:
c0035f10:	55                   	push   %ebp
c0035f11:	89 e5                	mov    %esp,%ebp
c0035f13:	83 ec 18             	sub    $0x18,%esp
c0035f16:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f19:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035f20:	00 
c0035f21:	89 04 24             	mov    %eax,(%esp)
c0035f24:	e8 67 fc ff ff       	call   c0035b90 <_Balloc>
c0035f29:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035f2c:	89 50 14             	mov    %edx,0x14(%eax)
c0035f2f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035f36:	c9                   	leave  
c0035f37:	c3                   	ret    
c0035f38:	90                   	nop
c0035f39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f40 <__multiply>:
c0035f40:	55                   	push   %ebp
c0035f41:	89 e5                	mov    %esp,%ebp
c0035f43:	57                   	push   %edi
c0035f44:	56                   	push   %esi
c0035f45:	53                   	push   %ebx
c0035f46:	83 ec 3c             	sub    $0x3c,%esp
c0035f49:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035f4c:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f4f:	8b 7e 10             	mov    0x10(%esi),%edi
c0035f52:	8b 58 10             	mov    0x10(%eax),%ebx
c0035f55:	39 df                	cmp    %ebx,%edi
c0035f57:	7d 0e                	jge    c0035f67 <__multiply+0x27>
c0035f59:	89 f8                	mov    %edi,%eax
c0035f5b:	89 df                	mov    %ebx,%edi
c0035f5d:	89 c3                	mov    %eax,%ebx
c0035f5f:	89 f0                	mov    %esi,%eax
c0035f61:	8b 75 10             	mov    0x10(%ebp),%esi
c0035f64:	89 45 10             	mov    %eax,0x10(%ebp)
c0035f67:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035f6a:	3b 46 08             	cmp    0x8(%esi),%eax
c0035f6d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0035f70:	0f 9f c0             	setg   %al
c0035f73:	0f b6 c0             	movzbl %al,%eax
c0035f76:	03 46 04             	add    0x4(%esi),%eax
c0035f79:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035f7d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f80:	89 04 24             	mov    %eax,(%esp)
c0035f83:	e8 08 fc ff ff       	call   c0035b90 <_Balloc>
c0035f88:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035f8b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035f8e:	8d 40 14             	lea    0x14(%eax),%eax
c0035f91:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0035f94:	89 d1                	mov    %edx,%ecx
c0035f96:	39 c8                	cmp    %ecx,%eax
c0035f98:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035f9b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c0035f9e:	73 15                	jae    c0035fb5 <__multiply+0x75>
c0035fa0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0035fa3:	90                   	nop
c0035fa4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035fa8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0035fae:	83 c0 04             	add    $0x4,%eax
c0035fb1:	39 c2                	cmp    %eax,%edx
c0035fb3:	77 f3                	ja     c0035fa8 <__multiply+0x68>
c0035fb5:	8d 46 14             	lea    0x14(%esi),%eax
c0035fb8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0035fbb:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c0035fbe:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0035fc1:	8b 45 10             	mov    0x10(%ebp),%eax
c0035fc4:	83 c0 14             	add    $0x14,%eax
c0035fc7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c0035fca:	39 f8                	cmp    %edi,%eax
c0035fcc:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0035fcf:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0035fd2:	0f 83 e8 00 00 00    	jae    c00360c0 <__multiply+0x180>
c0035fd8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0035fdb:	8b 00                	mov    (%eax),%eax
c0035fdd:	0f b7 f8             	movzwl %ax,%edi
c0035fe0:	85 ff                	test   %edi,%edi
c0035fe2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0035fe5:	74 5a                	je     c0036041 <__multiply+0x101>
c0035fe7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0035fea:	31 db                	xor    %ebx,%ebx
c0035fec:	8b 75 d0             	mov    -0x30(%ebp),%esi
c0035fef:	eb 09                	jmp    c0035ffa <__multiply+0xba>
c0035ff1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035ff8:	89 fa                	mov    %edi,%edx
c0035ffa:	8b 0e                	mov    (%esi),%ecx
c0035ffc:	83 c6 04             	add    $0x4,%esi
c0035fff:	0f b7 3a             	movzwl (%edx),%edi
c0036002:	0f b7 c1             	movzwl %cx,%eax
c0036005:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0036009:	c1 e9 10             	shr    $0x10,%ecx
c003600c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036010:	01 f8                	add    %edi,%eax
c0036012:	01 d8                	add    %ebx,%eax
c0036014:	8b 1a                	mov    (%edx),%ebx
c0036016:	8d 7a 04             	lea    0x4(%edx),%edi
c0036019:	c1 eb 10             	shr    $0x10,%ebx
c003601c:	01 d9                	add    %ebx,%ecx
c003601e:	89 c3                	mov    %eax,%ebx
c0036020:	c1 eb 10             	shr    $0x10,%ebx
c0036023:	0f b7 c0             	movzwl %ax,%eax
c0036026:	01 d9                	add    %ebx,%ecx
c0036028:	89 cb                	mov    %ecx,%ebx
c003602a:	c1 e1 10             	shl    $0x10,%ecx
c003602d:	09 c1                	or     %eax,%ecx
c003602f:	c1 eb 10             	shr    $0x10,%ebx
c0036032:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036035:	89 0a                	mov    %ecx,(%edx)
c0036037:	77 bf                	ja     c0035ff8 <__multiply+0xb8>
c0036039:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003603c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003603f:	8b 00                	mov    (%eax),%eax
c0036041:	c1 e8 10             	shr    $0x10,%eax
c0036044:	85 c0                	test   %eax,%eax
c0036046:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036049:	74 61                	je     c00360ac <__multiply+0x16c>
c003604b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003604e:	31 ff                	xor    %edi,%edi
c0036050:	89 fe                	mov    %edi,%esi
c0036052:	8b 10                	mov    (%eax),%edx
c0036054:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036057:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003605a:	89 d3                	mov    %edx,%ebx
c003605c:	eb 05                	jmp    c0036063 <__multiply+0x123>
c003605e:	66 90                	xchg   %ax,%ax
c0036060:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036063:	0f b7 08             	movzwl (%eax),%ecx
c0036066:	c1 eb 10             	shr    $0x10,%ebx
c0036069:	0f b7 d2             	movzwl %dx,%edx
c003606c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036070:	83 c0 04             	add    $0x4,%eax
c0036073:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036076:	01 f7                	add    %esi,%edi
c0036078:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003607b:	89 fb                	mov    %edi,%ebx
c003607d:	c1 e3 10             	shl    $0x10,%ebx
c0036080:	09 d3                	or     %edx,%ebx
c0036082:	89 1e                	mov    %ebx,(%esi)
c0036084:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036087:	8d 4e 04             	lea    0x4(%esi),%ecx
c003608a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003608e:	c1 ef 10             	shr    $0x10,%edi
c0036091:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036095:	0f b7 f3             	movzwl %bx,%esi
c0036098:	01 f2                	add    %esi,%edx
c003609a:	01 fa                	add    %edi,%edx
c003609c:	89 d6                	mov    %edx,%esi
c003609e:	c1 ee 10             	shr    $0x10,%esi
c00360a1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c00360a4:	77 ba                	ja     c0036060 <__multiply+0x120>
c00360a6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00360a9:	89 50 04             	mov    %edx,0x4(%eax)
c00360ac:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c00360b0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00360b3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c00360b7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c00360ba:	0f 87 18 ff ff ff    	ja     c0035fd8 <__multiply+0x98>
c00360c0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c00360c3:	85 f6                	test   %esi,%esi
c00360c5:	7e 29                	jle    c00360f0 <__multiply+0x1b0>
c00360c7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00360ca:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00360cd:	85 db                	test   %ebx,%ebx
c00360cf:	75 1f                	jne    c00360f0 <__multiply+0x1b0>
c00360d1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c00360d4:	89 d0                	mov    %edx,%eax
c00360d6:	c1 e0 02             	shl    $0x2,%eax
c00360d9:	29 c7                	sub    %eax,%edi
c00360db:	89 f8                	mov    %edi,%eax
c00360dd:	eb 09                	jmp    c00360e8 <__multiply+0x1a8>
c00360df:	90                   	nop
c00360e0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00360e4:	85 c9                	test   %ecx,%ecx
c00360e6:	75 05                	jne    c00360ed <__multiply+0x1ad>
c00360e8:	83 ea 01             	sub    $0x1,%edx
c00360eb:	75 f3                	jne    c00360e0 <__multiply+0x1a0>
c00360ed:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00360f0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00360f3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c00360f6:	89 78 10             	mov    %edi,0x10(%eax)
c00360f9:	83 c4 3c             	add    $0x3c,%esp
c00360fc:	5b                   	pop    %ebx
c00360fd:	5e                   	pop    %esi
c00360fe:	5f                   	pop    %edi
c00360ff:	5d                   	pop    %ebp
c0036100:	c3                   	ret    
c0036101:	eb 0d                	jmp    c0036110 <__pow5mult>
c0036103:	90                   	nop
c0036104:	90                   	nop
c0036105:	90                   	nop
c0036106:	90                   	nop
c0036107:	90                   	nop
c0036108:	90                   	nop
c0036109:	90                   	nop
c003610a:	90                   	nop
c003610b:	90                   	nop
c003610c:	90                   	nop
c003610d:	90                   	nop
c003610e:	90                   	nop
c003610f:	90                   	nop

c0036110 <__pow5mult>:
c0036110:	55                   	push   %ebp
c0036111:	89 e5                	mov    %esp,%ebp
c0036113:	57                   	push   %edi
c0036114:	56                   	push   %esi
c0036115:	53                   	push   %ebx
c0036116:	83 ec 2c             	sub    $0x2c,%esp
c0036119:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003611c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003611f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036122:	89 d8                	mov    %ebx,%eax
c0036124:	83 e0 03             	and    $0x3,%eax
c0036127:	0f 85 a3 00 00 00    	jne    c00361d0 <__pow5mult+0xc0>
c003612d:	c1 fb 02             	sar    $0x2,%ebx
c0036130:	85 db                	test   %ebx,%ebx
c0036132:	74 5c                	je     c0036190 <__pow5mult+0x80>
c0036134:	8b 71 48             	mov    0x48(%ecx),%esi
c0036137:	85 f6                	test   %esi,%esi
c0036139:	0f 84 bd 00 00 00    	je     c00361fc <__pow5mult+0xec>
c003613f:	f6 c3 01             	test   $0x1,%bl
c0036142:	75 15                	jne    c0036159 <__pow5mult+0x49>
c0036144:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036148:	d1 fb                	sar    %ebx
c003614a:	74 44                	je     c0036190 <__pow5mult+0x80>
c003614c:	8b 06                	mov    (%esi),%eax
c003614e:	85 c0                	test   %eax,%eax
c0036150:	74 4e                	je     c00361a0 <__pow5mult+0x90>
c0036152:	89 c6                	mov    %eax,%esi
c0036154:	f6 c3 01             	test   $0x1,%bl
c0036157:	74 ef                	je     c0036148 <__pow5mult+0x38>
c0036159:	89 0c 24             	mov    %ecx,(%esp)
c003615c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036160:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036164:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036167:	e8 d4 fd ff ff       	call   c0035f40 <__multiply>
c003616c:	85 ff                	test   %edi,%edi
c003616e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036171:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036174:	74 52                	je     c00361c8 <__pow5mult+0xb8>
c0036176:	8b 57 04             	mov    0x4(%edi),%edx
c0036179:	d1 fb                	sar    %ebx
c003617b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003617e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036181:	8b 10                	mov    (%eax),%edx
c0036183:	89 17                	mov    %edx,(%edi)
c0036185:	89 38                	mov    %edi,(%eax)
c0036187:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003618a:	75 c0                	jne    c003614c <__pow5mult+0x3c>
c003618c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036190:	83 c4 2c             	add    $0x2c,%esp
c0036193:	89 f8                	mov    %edi,%eax
c0036195:	5b                   	pop    %ebx
c0036196:	5e                   	pop    %esi
c0036197:	5f                   	pop    %edi
c0036198:	5d                   	pop    %ebp
c0036199:	c3                   	ret    
c003619a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361a0:	89 74 24 08          	mov    %esi,0x8(%esp)
c00361a4:	89 74 24 04          	mov    %esi,0x4(%esp)
c00361a8:	89 0c 24             	mov    %ecx,(%esp)
c00361ab:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361ae:	e8 8d fd ff ff       	call   c0035f40 <__multiply>
c00361b3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361b6:	89 06                	mov    %eax,(%esi)
c00361b8:	89 c6                	mov    %eax,%esi
c00361ba:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00361c0:	eb 92                	jmp    c0036154 <__pow5mult+0x44>
c00361c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361c8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00361cb:	e9 78 ff ff ff       	jmp    c0036148 <__pow5mult+0x38>
c00361d0:	8b 04 85 bc 9a 03 c0 	mov    -0x3ffc6544(,%eax,4),%eax
c00361d7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00361db:	89 0c 24             	mov    %ecx,(%esp)
c00361de:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00361e5:	00 
c00361e6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00361ea:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361ed:	e8 5e fa ff ff       	call   c0035c50 <__multadd>
c00361f2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361f5:	89 c7                	mov    %eax,%edi
c00361f7:	e9 31 ff ff ff       	jmp    c003612d <__pow5mult+0x1d>
c00361fc:	89 0c 24             	mov    %ecx,(%esp)
c00361ff:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036206:	00 
c0036207:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003620a:	e8 81 f9 ff ff       	call   c0035b90 <_Balloc>
c003620f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036212:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0036219:	89 c6                	mov    %eax,%esi
c003621b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036222:	89 41 48             	mov    %eax,0x48(%ecx)
c0036225:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003622b:	e9 0f ff ff ff       	jmp    c003613f <__pow5mult+0x2f>

c0036230 <__lshift>:
c0036230:	55                   	push   %ebp
c0036231:	89 e5                	mov    %esp,%ebp
c0036233:	57                   	push   %edi
c0036234:	56                   	push   %esi
c0036235:	53                   	push   %ebx
c0036236:	83 ec 2c             	sub    $0x2c,%esp
c0036239:	8b 45 0c             	mov    0xc(%ebp),%eax
c003623c:	8b 75 10             	mov    0x10(%ebp),%esi
c003623f:	89 c7                	mov    %eax,%edi
c0036241:	8b 50 04             	mov    0x4(%eax),%edx
c0036244:	8b 40 10             	mov    0x10(%eax),%eax
c0036247:	89 f3                	mov    %esi,%ebx
c0036249:	c1 fb 05             	sar    $0x5,%ebx
c003624c:	01 d8                	add    %ebx,%eax
c003624e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036251:	83 c0 01             	add    $0x1,%eax
c0036254:	89 c1                	mov    %eax,%ecx
c0036256:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036259:	8b 47 08             	mov    0x8(%edi),%eax
c003625c:	39 c1                	cmp    %eax,%ecx
c003625e:	7e 09                	jle    c0036269 <__lshift+0x39>
c0036260:	01 c0                	add    %eax,%eax
c0036262:	83 c2 01             	add    $0x1,%edx
c0036265:	39 c1                	cmp    %eax,%ecx
c0036267:	7f f7                	jg     c0036260 <__lshift+0x30>
c0036269:	8b 45 08             	mov    0x8(%ebp),%eax
c003626c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036270:	89 04 24             	mov    %eax,(%esp)
c0036273:	e8 18 f9 ff ff       	call   c0035b90 <_Balloc>
c0036278:	85 db                	test   %ebx,%ebx
c003627a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003627d:	8d 50 14             	lea    0x14(%eax),%edx
c0036280:	7e 17                	jle    c0036299 <__lshift+0x69>
c0036282:	31 c0                	xor    %eax,%eax
c0036284:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036288:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003628f:	83 c0 01             	add    $0x1,%eax
c0036292:	39 d8                	cmp    %ebx,%eax
c0036294:	75 f2                	jne    c0036288 <__lshift+0x58>
c0036296:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036299:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003629c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003629f:	8b 4f 10             	mov    0x10(%edi),%ecx
c00362a2:	83 c0 14             	add    $0x14,%eax
c00362a5:	83 e6 1f             	and    $0x1f,%esi
c00362a8:	89 75 e0             	mov    %esi,-0x20(%ebp)
c00362ab:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c00362ae:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00362b1:	74 7d                	je     c0036330 <__lshift+0x100>
c00362b3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c00362ba:	29 75 dc             	sub    %esi,-0x24(%ebp)
c00362bd:	31 f6                	xor    %esi,%esi
c00362bf:	eb 09                	jmp    c00362ca <__lshift+0x9a>
c00362c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00362c8:	89 fa                	mov    %edi,%edx
c00362ca:	8b 18                	mov    (%eax),%ebx
c00362cc:	83 c0 04             	add    $0x4,%eax
c00362cf:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00362d3:	8d 7a 04             	lea    0x4(%edx),%edi
c00362d6:	d3 e3                	shl    %cl,%ebx
c00362d8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c00362dc:	09 f3                	or     %esi,%ebx
c00362de:	89 1a                	mov    %ebx,(%edx)
c00362e0:	8b 70 fc             	mov    -0x4(%eax),%esi
c00362e3:	d3 ee                	shr    %cl,%esi
c00362e5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00362e8:	77 de                	ja     c00362c8 <__lshift+0x98>
c00362ea:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00362ed:	89 72 04             	mov    %esi,0x4(%edx)
c00362f0:	83 c0 02             	add    $0x2,%eax
c00362f3:	85 f6                	test   %esi,%esi
c00362f5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c00362f9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00362fc:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00362ff:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0036302:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036305:	83 e8 01             	sub    $0x1,%eax
c0036308:	89 47 10             	mov    %eax,0x10(%edi)
c003630b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003630e:	8b 50 04             	mov    0x4(%eax),%edx
c0036311:	8b 45 08             	mov    0x8(%ebp),%eax
c0036314:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036317:	8d 04 90             	lea    (%eax,%edx,4),%eax
c003631a:	8b 10                	mov    (%eax),%edx
c003631c:	89 16                	mov    %edx,(%esi)
c003631e:	89 30                	mov    %esi,(%eax)
c0036320:	83 c4 2c             	add    $0x2c,%esp
c0036323:	89 f8                	mov    %edi,%eax
c0036325:	5b                   	pop    %ebx
c0036326:	5e                   	pop    %esi
c0036327:	5f                   	pop    %edi
c0036328:	5d                   	pop    %ebp
c0036329:	c3                   	ret    
c003632a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036330:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036333:	90                   	nop
c0036334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036338:	83 c0 04             	add    $0x4,%eax
c003633b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003633e:	83 c2 04             	add    $0x4,%edx
c0036341:	39 c3                	cmp    %eax,%ebx
c0036343:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036346:	77 f0                	ja     c0036338 <__lshift+0x108>
c0036348:	eb b2                	jmp    c00362fc <__lshift+0xcc>
c003634a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036350 <__mcmp>:
c0036350:	55                   	push   %ebp
c0036351:	89 e5                	mov    %esp,%ebp
c0036353:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036356:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036359:	53                   	push   %ebx
c003635a:	8b 41 10             	mov    0x10(%ecx),%eax
c003635d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036360:	29 d8                	sub    %ebx,%eax
c0036362:	85 c0                	test   %eax,%eax
c0036364:	75 27                	jne    c003638d <__mcmp+0x3d>
c0036366:	c1 e3 02             	shl    $0x2,%ebx
c0036369:	83 c1 14             	add    $0x14,%ecx
c003636c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003636f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036373:	eb 07                	jmp    c003637c <__mcmp+0x2c>
c0036375:	8d 76 00             	lea    0x0(%esi),%esi
c0036378:	39 c1                	cmp    %eax,%ecx
c003637a:	73 14                	jae    c0036390 <__mcmp+0x40>
c003637c:	83 ea 04             	sub    $0x4,%edx
c003637f:	83 e8 04             	sub    $0x4,%eax
c0036382:	8b 1a                	mov    (%edx),%ebx
c0036384:	39 18                	cmp    %ebx,(%eax)
c0036386:	74 f0                	je     c0036378 <__mcmp+0x28>
c0036388:	19 c0                	sbb    %eax,%eax
c003638a:	83 c8 01             	or     $0x1,%eax
c003638d:	5b                   	pop    %ebx
c003638e:	5d                   	pop    %ebp
c003638f:	c3                   	ret    
c0036390:	31 c0                	xor    %eax,%eax
c0036392:	5b                   	pop    %ebx
c0036393:	5d                   	pop    %ebp
c0036394:	c3                   	ret    
c0036395:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00363a0 <__mdiff>:
c00363a0:	55                   	push   %ebp
c00363a1:	89 e5                	mov    %esp,%ebp
c00363a3:	57                   	push   %edi
c00363a4:	56                   	push   %esi
c00363a5:	53                   	push   %ebx
c00363a6:	83 ec 2c             	sub    $0x2c,%esp
c00363a9:	8b 75 0c             	mov    0xc(%ebp),%esi
c00363ac:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00363af:	89 34 24             	mov    %esi,(%esp)
c00363b2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00363b6:	e8 95 ff ff ff       	call   c0036350 <__mcmp>
c00363bb:	85 c0                	test   %eax,%eax
c00363bd:	0f 84 25 01 00 00    	je     c00364e8 <__mdiff+0x148>
c00363c3:	0f 88 0f 01 00 00    	js     c00364d8 <__mdiff+0x138>
c00363c9:	31 ff                	xor    %edi,%edi
c00363cb:	8b 46 04             	mov    0x4(%esi),%eax
c00363ce:	83 c6 14             	add    $0x14,%esi
c00363d1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00363d5:	8b 45 08             	mov    0x8(%ebp),%eax
c00363d8:	89 04 24             	mov    %eax,(%esp)
c00363db:	e8 b0 f7 ff ff       	call   c0035b90 <_Balloc>
c00363e0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c00363e3:	89 c2                	mov    %eax,%edx
c00363e5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00363e8:	89 78 0c             	mov    %edi,0xc(%eax)
c00363eb:	8b 46 fc             	mov    -0x4(%esi),%eax
c00363ee:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c00363f1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00363f4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c00363f7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00363fa:	8b 43 10             	mov    0x10(%ebx),%eax
c00363fd:	31 db                	xor    %ebx,%ebx
c00363ff:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0036402:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036405:	89 d0                	mov    %edx,%eax
c0036407:	83 c0 14             	add    $0x14,%eax
c003640a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036410:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036413:	83 c0 04             	add    $0x4,%eax
c0036416:	83 c1 04             	add    $0x4,%ecx
c0036419:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c003641d:	8b 3e                	mov    (%esi),%edi
c003641f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036422:	0f b7 d7             	movzwl %di,%edx
c0036425:	01 da                	add    %ebx,%edx
c0036427:	0f b7 de             	movzwl %si,%ebx
c003642a:	29 da                	sub    %ebx,%edx
c003642c:	c1 ef 10             	shr    $0x10,%edi
c003642f:	89 d3                	mov    %edx,%ebx
c0036431:	c1 ee 10             	shr    $0x10,%esi
c0036434:	0f b7 d2             	movzwl %dx,%edx
c0036437:	c1 fb 10             	sar    $0x10,%ebx
c003643a:	29 f7                	sub    %esi,%edi
c003643c:	01 df                	add    %ebx,%edi
c003643e:	89 fb                	mov    %edi,%ebx
c0036440:	c1 e7 10             	shl    $0x10,%edi
c0036443:	09 d7                	or     %edx,%edi
c0036445:	c1 fb 10             	sar    $0x10,%ebx
c0036448:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003644b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003644e:	77 c0                	ja     c0036410 <__mdiff+0x70>
c0036450:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036453:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036456:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036459:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003645c:	39 f1                	cmp    %esi,%ecx
c003645e:	76 3f                	jbe    c003649f <__mdiff+0xff>
c0036460:	8b 3e                	mov    (%esi),%edi
c0036462:	83 c6 04             	add    $0x4,%esi
c0036465:	83 c0 04             	add    $0x4,%eax
c0036468:	0f b7 d7             	movzwl %di,%edx
c003646b:	01 da                	add    %ebx,%edx
c003646d:	89 d3                	mov    %edx,%ebx
c003646f:	0f b7 d2             	movzwl %dx,%edx
c0036472:	c1 fb 10             	sar    $0x10,%ebx
c0036475:	c1 ef 10             	shr    $0x10,%edi
c0036478:	01 df                	add    %ebx,%edi
c003647a:	89 fb                	mov    %edi,%ebx
c003647c:	c1 e7 10             	shl    $0x10,%edi
c003647f:	09 d7                	or     %edx,%edi
c0036481:	c1 fb 10             	sar    $0x10,%ebx
c0036484:	39 f1                	cmp    %esi,%ecx
c0036486:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036489:	77 d5                	ja     c0036460 <__mdiff+0xc0>
c003648b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003648e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036491:	f7 d0                	not    %eax
c0036493:	01 c8                	add    %ecx,%eax
c0036495:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036498:	c1 e8 02             	shr    $0x2,%eax
c003649b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c003649f:	85 ff                	test   %edi,%edi
c00364a1:	75 23                	jne    c00364c6 <__mdiff+0x126>
c00364a3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364a6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c00364ad:	29 d0                	sub    %edx,%eax
c00364af:	89 ca                	mov    %ecx,%edx
c00364b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00364b8:	83 ea 01             	sub    $0x1,%edx
c00364bb:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00364bf:	85 c9                	test   %ecx,%ecx
c00364c1:	74 f5                	je     c00364b8 <__mdiff+0x118>
c00364c3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00364c6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00364c9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364cc:	89 48 10             	mov    %ecx,0x10(%eax)
c00364cf:	83 c4 2c             	add    $0x2c,%esp
c00364d2:	5b                   	pop    %ebx
c00364d3:	5e                   	pop    %esi
c00364d4:	5f                   	pop    %edi
c00364d5:	5d                   	pop    %ebp
c00364d6:	c3                   	ret    
c00364d7:	90                   	nop
c00364d8:	89 f0                	mov    %esi,%eax
c00364da:	bf 01 00 00 00       	mov    $0x1,%edi
c00364df:	89 de                	mov    %ebx,%esi
c00364e1:	89 c3                	mov    %eax,%ebx
c00364e3:	e9 e3 fe ff ff       	jmp    c00363cb <__mdiff+0x2b>
c00364e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00364eb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00364f2:	00 
c00364f3:	89 04 24             	mov    %eax,(%esp)
c00364f6:	e8 95 f6 ff ff       	call   c0035b90 <_Balloc>
c00364fb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036502:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0036509:	83 c4 2c             	add    $0x2c,%esp
c003650c:	5b                   	pop    %ebx
c003650d:	5e                   	pop    %esi
c003650e:	5f                   	pop    %edi
c003650f:	5d                   	pop    %ebp
c0036510:	c3                   	ret    
c0036511:	eb 0d                	jmp    c0036520 <__ulp>
c0036513:	90                   	nop
c0036514:	90                   	nop
c0036515:	90                   	nop
c0036516:	90                   	nop
c0036517:	90                   	nop
c0036518:	90                   	nop
c0036519:	90                   	nop
c003651a:	90                   	nop
c003651b:	90                   	nop
c003651c:	90                   	nop
c003651d:	90                   	nop
c003651e:	90                   	nop
c003651f:	90                   	nop

c0036520 <__ulp>:
c0036520:	55                   	push   %ebp
c0036521:	89 e5                	mov    %esp,%ebp
c0036523:	83 ec 08             	sub    $0x8,%esp
c0036526:	dd 45 08             	fldl   0x8(%ebp)
c0036529:	dd 5d f8             	fstpl  -0x8(%ebp)
c003652c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003652f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036535:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003653b:	85 c9                	test   %ecx,%ecx
c003653d:	7e 11                	jle    c0036550 <__ulp+0x30>
c003653f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036542:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036549:	dd 45 f8             	fldl   -0x8(%ebp)
c003654c:	c9                   	leave  
c003654d:	c3                   	ret    
c003654e:	66 90                	xchg   %ax,%ax
c0036550:	f7 d9                	neg    %ecx
c0036552:	c1 f9 14             	sar    $0x14,%ecx
c0036555:	83 f9 13             	cmp    $0x13,%ecx
c0036558:	7e 26                	jle    c0036580 <__ulp+0x60>
c003655a:	83 f9 32             	cmp    $0x32,%ecx
c003655d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036562:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036569:	7f 0b                	jg     c0036576 <__ulp+0x56>
c003656b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036570:	29 ca                	sub    %ecx,%edx
c0036572:	89 d1                	mov    %edx,%ecx
c0036574:	d3 e0                	shl    %cl,%eax
c0036576:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036579:	dd 45 f8             	fldl   -0x8(%ebp)
c003657c:	c9                   	leave  
c003657d:	c3                   	ret    
c003657e:	66 90                	xchg   %ax,%ax
c0036580:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036585:	d3 f8                	sar    %cl,%eax
c0036587:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003658a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036591:	dd 45 f8             	fldl   -0x8(%ebp)
c0036594:	c9                   	leave  
c0036595:	c3                   	ret    
c0036596:	8d 76 00             	lea    0x0(%esi),%esi
c0036599:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00365a0 <__b2d>:
c00365a0:	55                   	push   %ebp
c00365a1:	89 e5                	mov    %esp,%ebp
c00365a3:	57                   	push   %edi
c00365a4:	56                   	push   %esi
c00365a5:	53                   	push   %ebx
c00365a6:	83 ec 18             	sub    $0x18,%esp
c00365a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00365ac:	8d 78 14             	lea    0x14(%eax),%edi
c00365af:	8b 40 10             	mov    0x10(%eax),%eax
c00365b2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c00365b5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c00365b8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00365bb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00365be:	89 34 24             	mov    %esi,(%esp)
c00365c1:	e8 6a f8 ff ff       	call   c0035e30 <__hi0bits>
c00365c6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00365c9:	ba 20 00 00 00       	mov    $0x20,%edx
c00365ce:	29 c2                	sub    %eax,%edx
c00365d0:	83 f8 0a             	cmp    $0xa,%eax
c00365d3:	89 11                	mov    %edx,(%ecx)
c00365d5:	7f 41                	jg     c0036618 <__b2d+0x78>
c00365d7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c00365dc:	89 f2                	mov    %esi,%edx
c00365de:	29 c1                	sub    %eax,%ecx
c00365e0:	d3 ea                	shr    %cl,%edx
c00365e2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c00365e8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c00365eb:	31 d2                	xor    %edx,%edx
c00365ed:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00365f0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00365f7:	73 05                	jae    c00365fe <__b2d+0x5e>
c00365f9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00365fc:	d3 ea                	shr    %cl,%edx
c00365fe:	8d 48 15             	lea    0x15(%eax),%ecx
c0036601:	d3 e6                	shl    %cl,%esi
c0036603:	09 f2                	or     %esi,%edx
c0036605:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036608:	dd 45 e8             	fldl   -0x18(%ebp)
c003660b:	83 c4 18             	add    $0x18,%esp
c003660e:	5b                   	pop    %ebx
c003660f:	5e                   	pop    %esi
c0036610:	5f                   	pop    %edi
c0036611:	5d                   	pop    %ebp
c0036612:	c3                   	ret    
c0036613:	90                   	nop
c0036614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036618:	31 d2                	xor    %edx,%edx
c003661a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c003661d:	73 09                	jae    c0036628 <__b2d+0x88>
c003661f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036622:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036625:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036628:	89 c3                	mov    %eax,%ebx
c003662a:	83 eb 0b             	sub    $0xb,%ebx
c003662d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036630:	74 4e                	je     c0036680 <__b2d+0xe0>
c0036632:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036636:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003663b:	29 c3                	sub    %eax,%ebx
c003663d:	89 d0                	mov    %edx,%eax
c003663f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036646:	d3 e6                	shl    %cl,%esi
c0036648:	89 d9                	mov    %ebx,%ecx
c003664a:	d3 e8                	shr    %cl,%eax
c003664c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003664f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036655:	09 c6                	or     %eax,%esi
c0036657:	31 c0                	xor    %eax,%eax
c0036659:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003665c:	39 f9                	cmp    %edi,%ecx
c003665e:	76 07                	jbe    c0036667 <__b2d+0xc7>
c0036660:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036663:	89 d9                	mov    %ebx,%ecx
c0036665:	d3 e8                	shr    %cl,%eax
c0036667:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003666b:	d3 e2                	shl    %cl,%edx
c003666d:	09 d0                	or     %edx,%eax
c003666f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036672:	dd 45 e8             	fldl   -0x18(%ebp)
c0036675:	83 c4 18             	add    $0x18,%esp
c0036678:	5b                   	pop    %ebx
c0036679:	5e                   	pop    %esi
c003667a:	5f                   	pop    %edi
c003667b:	5d                   	pop    %ebp
c003667c:	c3                   	ret    
c003667d:	8d 76 00             	lea    0x0(%esi),%esi
c0036680:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036686:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036689:	89 55 e8             	mov    %edx,-0x18(%ebp)
c003668c:	dd 45 e8             	fldl   -0x18(%ebp)
c003668f:	83 c4 18             	add    $0x18,%esp
c0036692:	5b                   	pop    %ebx
c0036693:	5e                   	pop    %esi
c0036694:	5f                   	pop    %edi
c0036695:	5d                   	pop    %ebp
c0036696:	c3                   	ret    
c0036697:	89 f6                	mov    %esi,%esi
c0036699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00366a0 <__d2b>:
c00366a0:	55                   	push   %ebp
c00366a1:	89 e5                	mov    %esp,%ebp
c00366a3:	57                   	push   %edi
c00366a4:	56                   	push   %esi
c00366a5:	53                   	push   %ebx
c00366a6:	83 ec 2c             	sub    $0x2c,%esp
c00366a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00366ac:	dd 45 0c             	fldl   0xc(%ebp)
c00366af:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00366b6:	00 
c00366b7:	dd 5d d0             	fstpl  -0x30(%ebp)
c00366ba:	89 04 24             	mov    %eax,(%esp)
c00366bd:	e8 ce f4 ff ff       	call   c0035b90 <_Balloc>
c00366c2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c00366c5:	89 c6                	mov    %eax,%esi
c00366c7:	89 d8                	mov    %ebx,%eax
c00366c9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c00366cf:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00366d4:	c1 eb 14             	shr    $0x14,%ebx
c00366d7:	85 db                	test   %ebx,%ebx
c00366d9:	74 05                	je     c00366e0 <__d2b+0x40>
c00366db:	0d 00 00 10 00       	or     $0x100000,%eax
c00366e0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00366e3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00366e6:	85 c0                	test   %eax,%eax
c00366e8:	74 56                	je     c0036740 <__d2b+0xa0>
c00366ea:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00366ed:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00366f0:	89 04 24             	mov    %eax,(%esp)
c00366f3:	e8 98 f7 ff ff       	call   c0035e90 <__lo0bits>
c00366f8:	85 c0                	test   %eax,%eax
c00366fa:	0f 85 90 00 00 00    	jne    c0036790 <__d2b+0xf0>
c0036700:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036703:	89 56 14             	mov    %edx,0x14(%esi)
c0036706:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036709:	83 fa 01             	cmp    $0x1,%edx
c003670c:	19 ff                	sbb    %edi,%edi
c003670e:	83 c7 02             	add    $0x2,%edi
c0036711:	85 db                	test   %ebx,%ebx
c0036713:	89 56 18             	mov    %edx,0x18(%esi)
c0036716:	89 7e 10             	mov    %edi,0x10(%esi)
c0036719:	74 49                	je     c0036764 <__d2b+0xc4>
c003671b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c003671e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036725:	89 11                	mov    %edx,(%ecx)
c0036727:	ba 35 00 00 00       	mov    $0x35,%edx
c003672c:	29 c2                	sub    %eax,%edx
c003672e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036731:	89 10                	mov    %edx,(%eax)
c0036733:	83 c4 2c             	add    $0x2c,%esp
c0036736:	89 f0                	mov    %esi,%eax
c0036738:	5b                   	pop    %ebx
c0036739:	5e                   	pop    %esi
c003673a:	5f                   	pop    %edi
c003673b:	5d                   	pop    %ebp
c003673c:	c3                   	ret    
c003673d:	8d 76 00             	lea    0x0(%esi),%esi
c0036740:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036743:	bf 01 00 00 00       	mov    $0x1,%edi
c0036748:	89 04 24             	mov    %eax,(%esp)
c003674b:	e8 40 f7 ff ff       	call   c0035e90 <__lo0bits>
c0036750:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036753:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003675a:	89 56 14             	mov    %edx,0x14(%esi)
c003675d:	83 c0 20             	add    $0x20,%eax
c0036760:	85 db                	test   %ebx,%ebx
c0036762:	75 b7                	jne    c003671b <__d2b+0x7b>
c0036764:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036767:	2d 32 04 00 00       	sub    $0x432,%eax
c003676c:	89 01                	mov    %eax,(%ecx)
c003676e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036772:	c1 e7 05             	shl    $0x5,%edi
c0036775:	89 04 24             	mov    %eax,(%esp)
c0036778:	e8 b3 f6 ff ff       	call   c0035e30 <__hi0bits>
c003677d:	29 c7                	sub    %eax,%edi
c003677f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036782:	89 38                	mov    %edi,(%eax)
c0036784:	83 c4 2c             	add    $0x2c,%esp
c0036787:	89 f0                	mov    %esi,%eax
c0036789:	5b                   	pop    %ebx
c003678a:	5e                   	pop    %esi
c003678b:	5f                   	pop    %edi
c003678c:	5d                   	pop    %ebp
c003678d:	c3                   	ret    
c003678e:	66 90                	xchg   %ax,%ax
c0036790:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036793:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036798:	29 c1                	sub    %eax,%ecx
c003679a:	89 d7                	mov    %edx,%edi
c003679c:	d3 e7                	shl    %cl,%edi
c003679e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00367a1:	09 f9                	or     %edi,%ecx
c00367a3:	89 4e 14             	mov    %ecx,0x14(%esi)
c00367a6:	89 c1                	mov    %eax,%ecx
c00367a8:	d3 ea                	shr    %cl,%edx
c00367aa:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00367ad:	e9 57 ff ff ff       	jmp    c0036709 <__d2b+0x69>
c00367b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00367b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00367c0 <__ratio>:
c00367c0:	55                   	push   %ebp
c00367c1:	89 e5                	mov    %esp,%ebp
c00367c3:	56                   	push   %esi
c00367c4:	53                   	push   %ebx
c00367c5:	83 ec 30             	sub    $0x30,%esp
c00367c8:	8b 75 08             	mov    0x8(%ebp),%esi
c00367cb:	8d 45 f0             	lea    -0x10(%ebp),%eax
c00367ce:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00367d1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367d5:	89 34 24             	mov    %esi,(%esp)
c00367d8:	e8 c3 fd ff ff       	call   c00365a0 <__b2d>
c00367dd:	8d 45 f4             	lea    -0xc(%ebp),%eax
c00367e0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367e4:	89 1c 24             	mov    %ebx,(%esp)
c00367e7:	dd 55 e0             	fstl   -0x20(%ebp)
c00367ea:	dd 5d d8             	fstpl  -0x28(%ebp)
c00367ed:	e8 ae fd ff ff       	call   c00365a0 <__b2d>
c00367f2:	8b 46 10             	mov    0x10(%esi),%eax
c00367f5:	2b 43 10             	sub    0x10(%ebx),%eax
c00367f8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00367fb:	2b 55 f4             	sub    -0xc(%ebp),%edx
c00367fe:	c1 e0 05             	shl    $0x5,%eax
c0036801:	01 d0                	add    %edx,%eax
c0036803:	dd 55 d0             	fstl   -0x30(%ebp)
c0036806:	85 c0                	test   %eax,%eax
c0036808:	dd 45 d8             	fldl   -0x28(%ebp)
c003680b:	7e 1b                	jle    c0036828 <__ratio+0x68>
c003680d:	dd d8                	fstp   %st(0)
c003680f:	c1 e0 14             	shl    $0x14,%eax
c0036812:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036815:	dd 45 e0             	fldl   -0x20(%ebp)
c0036818:	83 c4 30             	add    $0x30,%esp
c003681b:	5b                   	pop    %ebx
c003681c:	de f1                	fdivp  %st,%st(1)
c003681e:	5e                   	pop    %esi
c003681f:	5d                   	pop    %ebp
c0036820:	c3                   	ret    
c0036821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036828:	dd d9                	fstp   %st(1)
c003682a:	c1 e0 14             	shl    $0x14,%eax
c003682d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036830:	dd 45 d0             	fldl   -0x30(%ebp)
c0036833:	83 c4 30             	add    $0x30,%esp
c0036836:	5b                   	pop    %ebx
c0036837:	de f9                	fdivrp %st,%st(1)
c0036839:	5e                   	pop    %esi
c003683a:	5d                   	pop    %ebp
c003683b:	c3                   	ret    
c003683c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036840 <_mprec_log10>:
c0036840:	55                   	push   %ebp
c0036841:	89 e5                	mov    %esp,%ebp
c0036843:	8b 45 08             	mov    0x8(%ebp),%eax
c0036846:	83 f8 17             	cmp    $0x17,%eax
c0036849:	7e 1d                	jle    c0036868 <_mprec_log10+0x28>
c003684b:	d9 e8                	fld1   
c003684d:	d9 05 78 9a 03 c0    	flds   0xc0039a78
c0036853:	90                   	nop
c0036854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036858:	83 e8 01             	sub    $0x1,%eax
c003685b:	dc c9                	fmul   %st,%st(1)
c003685d:	75 f9                	jne    c0036858 <_mprec_log10+0x18>
c003685f:	dd d8                	fstp   %st(0)
c0036861:	5d                   	pop    %ebp
c0036862:	c3                   	ret    
c0036863:	90                   	nop
c0036864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036868:	dd 04 c5 60 9b 03 c0 	fldl   -0x3ffc64a0(,%eax,8)
c003686f:	5d                   	pop    %ebp
c0036870:	c3                   	ret    
c0036871:	eb 0d                	jmp    c0036880 <__copybits>
c0036873:	90                   	nop
c0036874:	90                   	nop
c0036875:	90                   	nop
c0036876:	90                   	nop
c0036877:	90                   	nop
c0036878:	90                   	nop
c0036879:	90                   	nop
c003687a:	90                   	nop
c003687b:	90                   	nop
c003687c:	90                   	nop
c003687d:	90                   	nop
c003687e:	90                   	nop
c003687f:	90                   	nop

c0036880 <__copybits>:
c0036880:	55                   	push   %ebp
c0036881:	89 e5                	mov    %esp,%ebp
c0036883:	57                   	push   %edi
c0036884:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036887:	56                   	push   %esi
c0036888:	8b 75 0c             	mov    0xc(%ebp),%esi
c003688b:	8b 45 08             	mov    0x8(%ebp),%eax
c003688e:	53                   	push   %ebx
c003688f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036892:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036895:	c1 fa 05             	sar    $0x5,%edx
c0036898:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c003689c:	8d 57 14             	lea    0x14(%edi),%edx
c003689f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c00368a2:	39 da                	cmp    %ebx,%edx
c00368a4:	73 34                	jae    c00368da <__copybits+0x5a>
c00368a6:	89 c1                	mov    %eax,%ecx
c00368a8:	83 c2 04             	add    $0x4,%edx
c00368ab:	8b 42 fc             	mov    -0x4(%edx),%eax
c00368ae:	83 c1 04             	add    $0x4,%ecx
c00368b1:	39 d3                	cmp    %edx,%ebx
c00368b3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c00368b6:	77 f0                	ja     c00368a8 <__copybits+0x28>
c00368b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00368bb:	29 fb                	sub    %edi,%ebx
c00368bd:	8d 53 eb             	lea    -0x15(%ebx),%edx
c00368c0:	c1 ea 02             	shr    $0x2,%edx
c00368c3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c00368c7:	39 c6                	cmp    %eax,%esi
c00368c9:	76 13                	jbe    c00368de <__copybits+0x5e>
c00368cb:	90                   	nop
c00368cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368d0:	83 c0 04             	add    $0x4,%eax
c00368d3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c00368da:	39 c6                	cmp    %eax,%esi
c00368dc:	77 f2                	ja     c00368d0 <__copybits+0x50>
c00368de:	5b                   	pop    %ebx
c00368df:	5e                   	pop    %esi
c00368e0:	5f                   	pop    %edi
c00368e1:	5d                   	pop    %ebp
c00368e2:	c3                   	ret    
c00368e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00368e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00368f0 <__any_on>:
c00368f0:	55                   	push   %ebp
c00368f1:	89 e5                	mov    %esp,%ebp
c00368f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00368f6:	57                   	push   %edi
c00368f7:	56                   	push   %esi
c00368f8:	53                   	push   %ebx
c00368f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00368fc:	8d 50 14             	lea    0x14(%eax),%edx
c00368ff:	8b 40 10             	mov    0x10(%eax),%eax
c0036902:	c1 fb 05             	sar    $0x5,%ebx
c0036905:	39 d8                	cmp    %ebx,%eax
c0036907:	7d 2f                	jge    c0036938 <__any_on+0x48>
c0036909:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c003690c:	39 da                	cmp    %ebx,%edx
c003690e:	73 1d                	jae    c003692d <__any_on+0x3d>
c0036910:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036913:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0036916:	85 db                	test   %ebx,%ebx
c0036918:	74 0f                	je     c0036929 <__any_on+0x39>
c003691a:	eb 44                	jmp    c0036960 <__any_on+0x70>
c003691c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036920:	83 e8 04             	sub    $0x4,%eax
c0036923:	8b 08                	mov    (%eax),%ecx
c0036925:	85 c9                	test   %ecx,%ecx
c0036927:	75 37                	jne    c0036960 <__any_on+0x70>
c0036929:	39 c2                	cmp    %eax,%edx
c003692b:	72 f3                	jb     c0036920 <__any_on+0x30>
c003692d:	31 c0                	xor    %eax,%eax
c003692f:	5b                   	pop    %ebx
c0036930:	5e                   	pop    %esi
c0036931:	5f                   	pop    %edi
c0036932:	5d                   	pop    %ebp
c0036933:	c3                   	ret    
c0036934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036938:	7e 1e                	jle    c0036958 <__any_on+0x68>
c003693a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003693d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036940:	83 e1 1f             	and    $0x1f,%ecx
c0036943:	74 c7                	je     c003690c <__any_on+0x1c>
c0036945:	8b 3b                	mov    (%ebx),%edi
c0036947:	b8 01 00 00 00       	mov    $0x1,%eax
c003694c:	89 fe                	mov    %edi,%esi
c003694e:	d3 ee                	shr    %cl,%esi
c0036950:	d3 e6                	shl    %cl,%esi
c0036952:	39 fe                	cmp    %edi,%esi
c0036954:	75 d9                	jne    c003692f <__any_on+0x3f>
c0036956:	eb b4                	jmp    c003690c <__any_on+0x1c>
c0036958:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c003695b:	eb af                	jmp    c003690c <__any_on+0x1c>
c003695d:	8d 76 00             	lea    0x0(%esi),%esi
c0036960:	5b                   	pop    %ebx
c0036961:	b8 01 00 00 00       	mov    $0x1,%eax
c0036966:	5e                   	pop    %esi
c0036967:	5f                   	pop    %edi
c0036968:	5d                   	pop    %ebp
c0036969:	c3                   	ret    
c003696a:	66 90                	xchg   %ax,%ax
c003696c:	66 90                	xchg   %ax,%ax
c003696e:	66 90                	xchg   %ax,%ax

c0036970 <_sbrk_r>:
c0036970:	55                   	push   %ebp
c0036971:	89 e5                	mov    %esp,%ebp
c0036973:	83 ec 18             	sub    $0x18,%esp
c0036976:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036979:	c7 05 00 50 09 c0 00 	movl   $0x0,0xc0095000
c0036980:	00 00 00 
c0036983:	89 04 24             	mov    %eax,(%esp)
c0036986:	e8 6d a0 ff ff       	call   c00309f8 <sbrk>
c003698b:	83 f8 ff             	cmp    $0xffffffff,%eax
c003698e:	74 08                	je     c0036998 <_sbrk_r+0x28>
c0036990:	c9                   	leave  
c0036991:	c3                   	ret    
c0036992:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036998:	8b 15 00 50 09 c0    	mov    0xc0095000,%edx
c003699e:	85 d2                	test   %edx,%edx
c00369a0:	74 ee                	je     c0036990 <_sbrk_r+0x20>
c00369a2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00369a5:	89 11                	mov    %edx,(%ecx)
c00369a7:	c9                   	leave  
c00369a8:	c3                   	ret    
c00369a9:	66 90                	xchg   %ax,%ax
c00369ab:	66 90                	xchg   %ax,%ax
c00369ad:	66 90                	xchg   %ax,%ax
c00369af:	90                   	nop

c00369b0 <__fpclassifyd>:
c00369b0:	55                   	push   %ebp
c00369b1:	b8 02 00 00 00       	mov    $0x2,%eax
c00369b6:	89 e5                	mov    %esp,%ebp
c00369b8:	53                   	push   %ebx
c00369b9:	83 ec 0c             	sub    $0xc,%esp
c00369bc:	dd 45 08             	fldl   0x8(%ebp)
c00369bf:	dd 5d f0             	fstpl  -0x10(%ebp)
c00369c2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00369c5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c00369c8:	89 d3                	mov    %edx,%ebx
c00369ca:	09 cb                	or     %ecx,%ebx
c00369cc:	75 0a                	jne    c00369d8 <__fpclassifyd+0x28>
c00369ce:	83 c4 0c             	add    $0xc,%esp
c00369d1:	5b                   	pop    %ebx
c00369d2:	5d                   	pop    %ebp
c00369d3:	c3                   	ret    
c00369d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369d8:	85 d2                	test   %edx,%edx
c00369da:	0f 94 c2             	sete   %dl
c00369dd:	75 08                	jne    c00369e7 <__fpclassifyd+0x37>
c00369df:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c00369e5:	74 e7                	je     c00369ce <__fpclassifyd+0x1e>
c00369e7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c00369ed:	b8 04 00 00 00       	mov    $0x4,%eax
c00369f2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c00369f8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c00369fe:	76 ce                	jbe    c00369ce <__fpclassifyd+0x1e>
c0036a00:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036a06:	b0 03                	mov    $0x3,%al
c0036a08:	76 c4                	jbe    c00369ce <__fpclassifyd+0x1e>
c0036a0a:	31 c0                	xor    %eax,%eax
c0036a0c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036a12:	0f 94 c0             	sete   %al
c0036a15:	21 d0                	and    %edx,%eax
c0036a17:	eb b5                	jmp    c00369ce <__fpclassifyd+0x1e>
c0036a19:	66 90                	xchg   %ax,%ax
c0036a1b:	66 90                	xchg   %ax,%ax
c0036a1d:	66 90                	xchg   %ax,%ax
c0036a1f:	90                   	nop

c0036a20 <strcmp>:
c0036a20:	55                   	push   %ebp
c0036a21:	89 e5                	mov    %esp,%ebp
c0036a23:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a26:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036a29:	53                   	push   %ebx
c0036a2a:	89 c1                	mov    %eax,%ecx
c0036a2c:	09 d1                	or     %edx,%ecx
c0036a2e:	83 e1 03             	and    $0x3,%ecx
c0036a31:	75 17                	jne    c0036a4a <strcmp+0x2a>
c0036a33:	8b 08                	mov    (%eax),%ecx
c0036a35:	3b 0a                	cmp    (%edx),%ecx
c0036a37:	74 33                	je     c0036a6c <strcmp+0x4c>
c0036a39:	eb 0f                	jmp    c0036a4a <strcmp+0x2a>
c0036a3b:	90                   	nop
c0036a3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a40:	3a 0a                	cmp    (%edx),%cl
c0036a42:	75 0d                	jne    c0036a51 <strcmp+0x31>
c0036a44:	83 c0 01             	add    $0x1,%eax
c0036a47:	83 c2 01             	add    $0x1,%edx
c0036a4a:	0f b6 08             	movzbl (%eax),%ecx
c0036a4d:	84 c9                	test   %cl,%cl
c0036a4f:	75 ef                	jne    c0036a40 <strcmp+0x20>
c0036a51:	0f b6 00             	movzbl (%eax),%eax
c0036a54:	0f b6 12             	movzbl (%edx),%edx
c0036a57:	5b                   	pop    %ebx
c0036a58:	5d                   	pop    %ebp
c0036a59:	29 d0                	sub    %edx,%eax
c0036a5b:	c3                   	ret    
c0036a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a60:	83 c0 04             	add    $0x4,%eax
c0036a63:	83 c2 04             	add    $0x4,%edx
c0036a66:	8b 08                	mov    (%eax),%ecx
c0036a68:	3b 0a                	cmp    (%edx),%ecx
c0036a6a:	75 de                	jne    c0036a4a <strcmp+0x2a>
c0036a6c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036a72:	f7 d1                	not    %ecx
c0036a74:	21 cb                	and    %ecx,%ebx
c0036a76:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036a7c:	74 e2                	je     c0036a60 <strcmp+0x40>
c0036a7e:	31 c0                	xor    %eax,%eax
c0036a80:	5b                   	pop    %ebx
c0036a81:	5d                   	pop    %ebp
c0036a82:	c3                   	ret    
c0036a83:	66 90                	xchg   %ax,%ax
c0036a85:	66 90                	xchg   %ax,%ax
c0036a87:	66 90                	xchg   %ax,%ax
c0036a89:	66 90                	xchg   %ax,%ax
c0036a8b:	66 90                	xchg   %ax,%ax
c0036a8d:	66 90                	xchg   %ax,%ax
c0036a8f:	90                   	nop

c0036a90 <strlen>:
c0036a90:	55                   	push   %ebp
c0036a91:	89 e5                	mov    %esp,%ebp
c0036a93:	57                   	push   %edi
c0036a94:	8b 55 08             	mov    0x8(%ebp),%edx
c0036a97:	89 d7                	mov    %edx,%edi
c0036a99:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a9f:	74 25                	je     c0036ac6 <L5>
c0036aa1:	8a 0f                	mov    (%edi),%cl
c0036aa3:	47                   	inc    %edi
c0036aa4:	84 c9                	test   %cl,%cl
c0036aa6:	74 56                	je     c0036afe <L15>
c0036aa8:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036aae:	74 16                	je     c0036ac6 <L5>
c0036ab0:	8a 0f                	mov    (%edi),%cl
c0036ab2:	47                   	inc    %edi
c0036ab3:	84 c9                	test   %cl,%cl
c0036ab5:	74 47                	je     c0036afe <L15>
c0036ab7:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036abd:	74 07                	je     c0036ac6 <L5>
c0036abf:	8a 0f                	mov    (%edi),%cl
c0036ac1:	47                   	inc    %edi
c0036ac2:	84 c9                	test   %cl,%cl
c0036ac4:	74 38                	je     c0036afe <L15>

c0036ac6 <L5>:
c0036ac6:	83 ef 04             	sub    $0x4,%edi
c0036ac9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036ad0 <L10>:
c0036ad0:	83 c7 04             	add    $0x4,%edi
c0036ad3:	8b 0f                	mov    (%edi),%ecx
c0036ad5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036adb:	f7 d1                	not    %ecx
c0036add:	21 c8                	and    %ecx,%eax
c0036adf:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036ae4:	74 ea                	je     c0036ad0 <L10>
c0036ae6:	f7 d1                	not    %ecx
c0036ae8:	47                   	inc    %edi
c0036ae9:	84 c9                	test   %cl,%cl
c0036aeb:	74 11                	je     c0036afe <L15>
c0036aed:	47                   	inc    %edi
c0036aee:	c1 e9 08             	shr    $0x8,%ecx
c0036af1:	84 c9                	test   %cl,%cl
c0036af3:	74 09                	je     c0036afe <L15>
c0036af5:	47                   	inc    %edi
c0036af6:	c1 e9 08             	shr    $0x8,%ecx
c0036af9:	84 c9                	test   %cl,%cl
c0036afb:	74 01                	je     c0036afe <L15>
c0036afd:	47                   	inc    %edi

c0036afe <L15>:
c0036afe:	29 d7                	sub    %edx,%edi
c0036b00:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036b03:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036b06:	5f                   	pop    %edi
c0036b07:	c9                   	leave  
c0036b08:	c3                   	ret    
c0036b09:	66 90                	xchg   %ax,%ax
c0036b0b:	66 90                	xchg   %ax,%ax
c0036b0d:	66 90                	xchg   %ax,%ax
c0036b0f:	90                   	nop

c0036b10 <__ssprint_r>:
c0036b10:	55                   	push   %ebp
c0036b11:	89 e5                	mov    %esp,%ebp
c0036b13:	57                   	push   %edi
c0036b14:	56                   	push   %esi
c0036b15:	53                   	push   %ebx
c0036b16:	83 ec 2c             	sub    $0x2c,%esp
c0036b19:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b1c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036b1f:	8b 00                	mov    (%eax),%eax
c0036b21:	89 c7                	mov    %eax,%edi
c0036b23:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b26:	8b 40 08             	mov    0x8(%eax),%eax
c0036b29:	85 c0                	test   %eax,%eax
c0036b2b:	0f 84 af 01 00 00    	je     c0036ce0 <__ssprint_r+0x1d0>
c0036b31:	31 c9                	xor    %ecx,%ecx
c0036b33:	31 d2                	xor    %edx,%edx
c0036b35:	8b 03                	mov    (%ebx),%eax
c0036b37:	89 ce                	mov    %ecx,%esi
c0036b39:	85 f6                	test   %esi,%esi
c0036b3b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036b3e:	0f 84 ec 00 00 00    	je     c0036c30 <__ssprint_r+0x120>
c0036b44:	8b 53 08             	mov    0x8(%ebx),%edx
c0036b47:	39 d6                	cmp    %edx,%esi
c0036b49:	0f 82 fc 00 00 00    	jb     c0036c4b <__ssprint_r+0x13b>
c0036b4f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036b53:	66 f7 c1 80 04       	test   $0x480,%cx
c0036b58:	0f 84 fa 00 00 00    	je     c0036c58 <__ssprint_r+0x148>
c0036b5e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036b61:	29 d0                	sub    %edx,%eax
c0036b63:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036b66:	8b 43 14             	mov    0x14(%ebx),%eax
c0036b69:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036b6c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036b6f:	89 c2                	mov    %eax,%edx
c0036b71:	c1 ea 1f             	shr    $0x1f,%edx
c0036b74:	01 d0                	add    %edx,%eax
c0036b76:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b79:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036b7c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036b7f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036b83:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036b86:	0f 83 34 01 00 00    	jae    c0036cc0 <__ssprint_r+0x1b0>
c0036b8c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b8f:	80 e5 04             	and    $0x4,%ch
c0036b92:	0f 84 c8 00 00 00    	je     c0036c60 <__ssprint_r+0x150>
c0036b98:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b9c:	8b 45 08             	mov    0x8(%ebp),%eax
c0036b9f:	89 04 24             	mov    %eax,(%esp)
c0036ba2:	e8 e9 e7 ff ff       	call   c0035390 <_malloc_r>
c0036ba7:	85 c0                	test   %eax,%eax
c0036ba9:	89 c2                	mov    %eax,%edx
c0036bab:	0f 84 e1 00 00 00    	je     c0036c92 <__ssprint_r+0x182>
c0036bb1:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036bb4:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036bb7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036bbb:	8b 43 10             	mov    0x10(%ebx),%eax
c0036bbe:	89 14 24             	mov    %edx,(%esp)
c0036bc1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036bc5:	e8 0a b2 ff ff       	call   c0031dd4 <memcpy>
c0036bca:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036bce:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036bd1:	66 25 7f fb          	and    $0xfb7f,%ax
c0036bd5:	0c 80                	or     $0x80,%al
c0036bd7:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036bdb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036bde:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036be1:	89 53 10             	mov    %edx,0x10(%ebx)
c0036be4:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036be7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036bea:	01 d0                	add    %edx,%eax
c0036bec:	89 03                	mov    %eax,(%ebx)
c0036bee:	89 f2                	mov    %esi,%edx
c0036bf0:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036bf3:	89 f1                	mov    %esi,%ecx
c0036bf5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036bf9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036bfc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036bff:	89 04 24             	mov    %eax,(%esp)
c0036c02:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036c05:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036c09:	e8 22 13 00 00       	call   c0037f30 <memmove>
c0036c0e:	8b 03                	mov    (%ebx),%eax
c0036c10:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c13:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036c16:	29 53 08             	sub    %edx,0x8(%ebx)
c0036c19:	01 c8                	add    %ecx,%eax
c0036c1b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036c1e:	89 03                	mov    %eax,(%ebx)
c0036c20:	8b 51 08             	mov    0x8(%ecx),%edx
c0036c23:	29 f2                	sub    %esi,%edx
c0036c25:	85 d2                	test   %edx,%edx
c0036c27:	89 51 08             	mov    %edx,0x8(%ecx)
c0036c2a:	0f 84 98 00 00 00    	je     c0036cc8 <__ssprint_r+0x1b8>
c0036c30:	8b 77 04             	mov    0x4(%edi),%esi
c0036c33:	83 c7 08             	add    $0x8,%edi
c0036c36:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036c39:	85 f6                	test   %esi,%esi
c0036c3b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036c3e:	74 f0                	je     c0036c30 <__ssprint_r+0x120>
c0036c40:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c43:	39 d6                	cmp    %edx,%esi
c0036c45:	0f 83 04 ff ff ff    	jae    c0036b4f <__ssprint_r+0x3f>
c0036c4b:	89 f2                	mov    %esi,%edx
c0036c4d:	89 f1                	mov    %esi,%ecx
c0036c4f:	eb a4                	jmp    c0036bf5 <__ssprint_r+0xe5>
c0036c51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c58:	89 d1                	mov    %edx,%ecx
c0036c5a:	eb 99                	jmp    c0036bf5 <__ssprint_r+0xe5>
c0036c5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c60:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c64:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036c67:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c6b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c6e:	89 04 24             	mov    %eax,(%esp)
c0036c71:	e8 4a 13 00 00       	call   c0037fc0 <_realloc_r>
c0036c76:	85 c0                	test   %eax,%eax
c0036c78:	89 c2                	mov    %eax,%edx
c0036c7a:	0f 85 5b ff ff ff    	jne    c0036bdb <__ssprint_r+0xcb>
c0036c80:	8b 43 10             	mov    0x10(%ebx),%eax
c0036c83:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c87:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c8a:	89 04 24             	mov    %eax,(%esp)
c0036c8d:	e8 3e 10 00 00       	call   c0037cd0 <_free_r>
c0036c92:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c95:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036c9b:	8b 45 10             	mov    0x10(%ebp),%eax
c0036c9e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036ca3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036caa:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036cb1:	83 c4 2c             	add    $0x2c,%esp
c0036cb4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036cb9:	5b                   	pop    %ebx
c0036cba:	5e                   	pop    %esi
c0036cbb:	5f                   	pop    %edi
c0036cbc:	5d                   	pop    %ebp
c0036cbd:	c3                   	ret    
c0036cbe:	66 90                	xchg   %ax,%ax
c0036cc0:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036cc3:	e9 c7 fe ff ff       	jmp    c0036b8f <__ssprint_r+0x7f>
c0036cc8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036ccf:	83 c4 2c             	add    $0x2c,%esp
c0036cd2:	31 c0                	xor    %eax,%eax
c0036cd4:	5b                   	pop    %ebx
c0036cd5:	5e                   	pop    %esi
c0036cd6:	5f                   	pop    %edi
c0036cd7:	5d                   	pop    %ebp
c0036cd8:	c3                   	ret    
c0036cd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036ce0:	8b 45 10             	mov    0x10(%ebp),%eax
c0036ce3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036cea:	83 c4 2c             	add    $0x2c,%esp
c0036ced:	31 c0                	xor    %eax,%eax
c0036cef:	5b                   	pop    %ebx
c0036cf0:	5e                   	pop    %esi
c0036cf1:	5f                   	pop    %edi
c0036cf2:	5d                   	pop    %ebp
c0036cf3:	c3                   	ret    
c0036cf4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036cfa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036d00 <_svfiprintf_r>:
c0036d00:	55                   	push   %ebp
c0036d01:	89 e5                	mov    %esp,%ebp
c0036d03:	57                   	push   %edi
c0036d04:	56                   	push   %esi
c0036d05:	53                   	push   %ebx
c0036d06:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036d0c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036d0f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036d13:	74 0b                	je     c0036d20 <_svfiprintf_r+0x20>
c0036d15:	8b 50 10             	mov    0x10(%eax),%edx
c0036d18:	85 d2                	test   %edx,%edx
c0036d1a:	0f 84 1c 0d 00 00    	je     c0037a3c <_svfiprintf_r+0xd3c>
c0036d20:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036d23:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036d26:	89 c6                	mov    %eax,%esi
c0036d28:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036d2e:	29 d8                	sub    %ebx,%eax
c0036d30:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036d37:	00 00 00 
c0036d3a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036d41:	00 00 00 
c0036d44:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036d4b:	00 00 00 
c0036d4e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036d55:	00 00 00 
c0036d58:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036d5e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d61:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036d64:	0f b6 00             	movzbl (%eax),%eax
c0036d67:	84 c0                	test   %al,%al
c0036d69:	74 58                	je     c0036dc3 <_svfiprintf_r+0xc3>
c0036d6b:	3c 25                	cmp    $0x25,%al
c0036d6d:	75 13                	jne    c0036d82 <_svfiprintf_r+0x82>
c0036d6f:	eb 52                	jmp    c0036dc3 <_svfiprintf_r+0xc3>
c0036d71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d78:	84 c0                	test   %al,%al
c0036d7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d80:	74 0a                	je     c0036d8c <_svfiprintf_r+0x8c>
c0036d82:	83 c3 01             	add    $0x1,%ebx
c0036d85:	0f b6 03             	movzbl (%ebx),%eax
c0036d88:	3c 25                	cmp    $0x25,%al
c0036d8a:	75 ec                	jne    c0036d78 <_svfiprintf_r+0x78>
c0036d8c:	89 df                	mov    %ebx,%edi
c0036d8e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036d91:	74 30                	je     c0036dc3 <_svfiprintf_r+0xc3>
c0036d93:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d96:	83 c6 08             	add    $0x8,%esi
c0036d99:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036d9c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036da2:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036da5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036dab:	83 c0 01             	add    $0x1,%eax
c0036dae:	83 f8 07             	cmp    $0x7,%eax
c0036db1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036db7:	0f 8f eb 0a 00 00    	jg     c00378a8 <_svfiprintf_r+0xba8>
c0036dbd:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036dc3:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036dc6:	0f 84 11 09 00 00    	je     c00376dd <_svfiprintf_r+0x9dd>
c0036dcc:	8d 43 01             	lea    0x1(%ebx),%eax
c0036dcf:	31 ff                	xor    %edi,%edi
c0036dd1:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036dd8:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036ddf:	ff ff ff 
c0036de2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036de9:	00 00 00 
c0036dec:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036df3:	00 00 00 
c0036df6:	8d 50 01             	lea    0x1(%eax),%edx
c0036df9:	0f be 00             	movsbl (%eax),%eax
c0036dfc:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036dff:	83 f9 58             	cmp    $0x58,%ecx
c0036e02:	0f 87 63 03 00 00    	ja     c003716b <_svfiprintf_r+0x46b>
c0036e08:	ff 24 8d 28 9c 03 c0 	jmp    *-0x3ffc63d8(,%ecx,4)
c0036e0f:	90                   	nop
c0036e10:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036e17:	89 d0                	mov    %edx,%eax
c0036e19:	eb db                	jmp    c0036df6 <_svfiprintf_r+0xf6>
c0036e1b:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e1e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036e21:	8b 00                	mov    (%eax),%eax
c0036e23:	83 c3 04             	add    $0x4,%ebx
c0036e26:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036e29:	85 c0                	test   %eax,%eax
c0036e2b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036e31:	79 e4                	jns    c0036e17 <_svfiprintf_r+0x117>
c0036e33:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036e39:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036e40:	89 d0                	mov    %edx,%eax
c0036e42:	eb b2                	jmp    c0036df6 <_svfiprintf_r+0xf6>
c0036e44:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036e49:	89 d0                	mov    %edx,%eax
c0036e4b:	eb a9                	jmp    c0036df6 <_svfiprintf_r+0xf6>
c0036e4d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e50:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036e57:	89 55 10             	mov    %edx,0x10(%ebp)
c0036e5a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036e5f:	8b 08                	mov    (%eax),%ecx
c0036e61:	83 c0 04             	add    $0x4,%eax
c0036e64:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036e6b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036e72:	89 45 14             	mov    %eax,0x14(%ebp)
c0036e75:	c7 85 44 ff ff ff bf 	movl   $0xc00398bf,-0xbc(%ebp)
c0036e7c:	98 03 c0 
c0036e7f:	90                   	nop
c0036e80:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036e87:	31 ff                	xor    %edi,%edi
c0036e89:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036e8f:	89 d8                	mov    %ebx,%eax
c0036e91:	24 7f                	and    $0x7f,%al
c0036e93:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036e9a:	0f 48 c3             	cmovs  %ebx,%eax
c0036e9d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036ea3:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036ea9:	85 c0                	test   %eax,%eax
c0036eab:	75 08                	jne    c0036eb5 <_svfiprintf_r+0x1b5>
c0036ead:	85 c9                	test   %ecx,%ecx
c0036eaf:	0f 84 03 08 00 00    	je     c00376b8 <_svfiprintf_r+0x9b8>
c0036eb5:	80 fa 01             	cmp    $0x1,%dl
c0036eb8:	0f 84 8a 0a 00 00    	je     c0037948 <_svfiprintf_r+0xc48>
c0036ebe:	80 fa 02             	cmp    $0x2,%dl
c0036ec1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036ec4:	0f 85 86 01 00 00    	jne    c0037050 <_svfiprintf_r+0x350>
c0036eca:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036ed0:	89 c8                	mov    %ecx,%eax
c0036ed2:	83 eb 01             	sub    $0x1,%ebx
c0036ed5:	83 e0 0f             	and    $0xf,%eax
c0036ed8:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036edc:	c1 e9 04             	shr    $0x4,%ecx
c0036edf:	85 c9                	test   %ecx,%ecx
c0036ee1:	88 03                	mov    %al,(%ebx)
c0036ee3:	75 eb                	jne    c0036ed0 <_svfiprintf_r+0x1d0>
c0036ee5:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036ee8:	29 d8                	sub    %ebx,%eax
c0036eea:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036ef0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036ef6:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036efc:	39 c1                	cmp    %eax,%ecx
c0036efe:	0f 4d c1             	cmovge %ecx,%eax
c0036f01:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f07:	89 f8                	mov    %edi,%eax
c0036f09:	3c 01                	cmp    $0x1,%al
c0036f0b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036f12:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036f18:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036f1e:	89 d0                	mov    %edx,%eax
c0036f20:	89 cf                	mov    %ecx,%edi
c0036f22:	83 c0 02             	add    $0x2,%eax
c0036f25:	83 e7 02             	and    $0x2,%edi
c0036f28:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036f2e:	89 cf                	mov    %ecx,%edi
c0036f30:	0f 44 c2             	cmove  %edx,%eax
c0036f33:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036f39:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f3f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036f45:	0f 85 cd 04 00 00    	jne    c0037418 <_svfiprintf_r+0x718>
c0036f4b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036f51:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036f57:	85 ff                	test   %edi,%edi
c0036f59:	0f 8e b9 04 00 00    	jle    c0037418 <_svfiprintf_r+0x718>
c0036f5f:	83 ff 10             	cmp    $0x10,%edi
c0036f62:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036f68:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036f6e:	7e 7c                	jle    c0036fec <_svfiprintf_r+0x2ec>
c0036f70:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0036f76:	89 f1                	mov    %esi,%ecx
c0036f78:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036f7b:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036f7e:	eb 08                	jmp    c0036f88 <_svfiprintf_r+0x288>
c0036f80:	83 ef 10             	sub    $0x10,%edi
c0036f83:	83 ff 10             	cmp    $0x10,%edi
c0036f86:	7e 5c                	jle    c0036fe4 <_svfiprintf_r+0x2e4>
c0036f88:	83 c0 01             	add    $0x1,%eax
c0036f8b:	83 c2 10             	add    $0x10,%edx
c0036f8e:	c7 01 9c 9d 03 c0    	movl   $0xc0039d9c,(%ecx)
c0036f94:	83 c1 08             	add    $0x8,%ecx
c0036f97:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0036f9e:	83 f8 07             	cmp    $0x7,%eax
c0036fa1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036fa7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036fad:	7e d1                	jle    c0036f80 <_svfiprintf_r+0x280>
c0036faf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036fb5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036fb9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036fbd:	89 1c 24             	mov    %ebx,(%esp)
c0036fc0:	e8 4b fb ff ff       	call   c0036b10 <__ssprint_r>
c0036fc5:	85 c0                	test   %eax,%eax
c0036fc7:	0f 85 3b 07 00 00    	jne    c0037708 <_svfiprintf_r+0xa08>
c0036fcd:	83 ef 10             	sub    $0x10,%edi
c0036fd0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036fd6:	83 ff 10             	cmp    $0x10,%edi
c0036fd9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036fdf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0036fe2:	7f a4                	jg     c0036f88 <_svfiprintf_r+0x288>
c0036fe4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c0036fea:	89 ce                	mov    %ecx,%esi
c0036fec:	83 c0 01             	add    $0x1,%eax
c0036fef:	01 fa                	add    %edi,%edx
c0036ff1:	c7 06 9c 9d 03 c0    	movl   $0xc0039d9c,(%esi)
c0036ff7:	83 c6 08             	add    $0x8,%esi
c0036ffa:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036ffd:	83 f8 07             	cmp    $0x7,%eax
c0037000:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037006:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003700c:	0f 8e 12 04 00 00    	jle    c0037424 <_svfiprintf_r+0x724>
c0037012:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037018:	89 44 24 08          	mov    %eax,0x8(%esp)
c003701c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003701f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037023:	8b 45 08             	mov    0x8(%ebp),%eax
c0037026:	89 04 24             	mov    %eax,(%esp)
c0037029:	e8 e2 fa ff ff       	call   c0036b10 <__ssprint_r>
c003702e:	85 c0                	test   %eax,%eax
c0037030:	0f 85 d2 06 00 00    	jne    c0037708 <_svfiprintf_r+0xa08>
c0037036:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003703c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003703f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037045:	e9 da 03 00 00       	jmp    c0037424 <_svfiprintf_r+0x724>
c003704a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037050:	89 c8                	mov    %ecx,%eax
c0037052:	83 eb 01             	sub    $0x1,%ebx
c0037055:	83 e0 07             	and    $0x7,%eax
c0037058:	c1 e9 03             	shr    $0x3,%ecx
c003705b:	83 c0 30             	add    $0x30,%eax
c003705e:	85 c9                	test   %ecx,%ecx
c0037060:	88 03                	mov    %al,(%ebx)
c0037062:	75 ec                	jne    c0037050 <_svfiprintf_r+0x350>
c0037064:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003706b:	89 da                	mov    %ebx,%edx
c003706d:	0f 84 72 fe ff ff    	je     c0036ee5 <_svfiprintf_r+0x1e5>
c0037073:	3c 30                	cmp    $0x30,%al
c0037075:	0f 84 6a fe ff ff    	je     c0036ee5 <_svfiprintf_r+0x1e5>
c003707b:	83 eb 01             	sub    $0x1,%ebx
c003707e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037081:	29 d8                	sub    %ebx,%eax
c0037083:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0037087:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003708d:	e9 5e fe ff ff       	jmp    c0036ef0 <_svfiprintf_r+0x1f0>
c0037092:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037099:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370a0:	89 55 10             	mov    %edx,0x10(%ebp)
c00370a3:	8b 45 14             	mov    0x14(%ebp),%eax
c00370a6:	0f 85 48 01 00 00    	jne    c00371f4 <_svfiprintf_r+0x4f4>
c00370ac:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370b3:	0f 84 3b 01 00 00    	je     c00371f4 <_svfiprintf_r+0x4f4>
c00370b9:	0f b7 08             	movzwl (%eax),%ecx
c00370bc:	83 c0 04             	add    $0x4,%eax
c00370bf:	31 d2                	xor    %edx,%edx
c00370c1:	89 45 14             	mov    %eax,0x14(%ebp)
c00370c4:	e9 b7 fd ff ff       	jmp    c0036e80 <_svfiprintf_r+0x180>
c00370c9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00370d0:	89 f8                	mov    %edi,%eax
c00370d2:	89 55 10             	mov    %edx,0x10(%ebp)
c00370d5:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00370db:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370e2:	8b 45 14             	mov    0x14(%ebp),%eax
c00370e5:	75 0d                	jne    c00370f4 <_svfiprintf_r+0x3f4>
c00370e7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370ee:	0f 85 f2 08 00 00    	jne    c00379e6 <_svfiprintf_r+0xce6>
c00370f4:	8b 08                	mov    (%eax),%ecx
c00370f6:	83 c0 04             	add    $0x4,%eax
c00370f9:	89 45 14             	mov    %eax,0x14(%ebp)
c00370fc:	85 c9                	test   %ecx,%ecx
c00370fe:	0f 88 f3 08 00 00    	js     c00379f7 <_svfiprintf_r+0xcf7>
c0037104:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003710b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037110:	e9 74 fd ff ff       	jmp    c0036e89 <_svfiprintf_r+0x189>
c0037115:	0f be 02             	movsbl (%edx),%eax
c0037118:	8d 5a 01             	lea    0x1(%edx),%ebx
c003711b:	83 f8 2a             	cmp    $0x2a,%eax
c003711e:	0f 84 af 09 00 00    	je     c0037ad3 <_svfiprintf_r+0xdd3>
c0037124:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037127:	31 d2                	xor    %edx,%edx
c0037129:	83 f9 09             	cmp    $0x9,%ecx
c003712c:	0f 87 90 09 00 00    	ja     c0037ac2 <_svfiprintf_r+0xdc2>
c0037132:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037138:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003713b:	83 c3 01             	add    $0x1,%ebx
c003713e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037141:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037145:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037148:	83 f9 09             	cmp    $0x9,%ecx
c003714b:	76 eb                	jbe    c0037138 <_svfiprintf_r+0x438>
c003714d:	85 d2                	test   %edx,%edx
c003714f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037154:	0f 48 d1             	cmovs  %ecx,%edx
c0037157:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003715a:	83 f9 58             	cmp    $0x58,%ecx
c003715d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037163:	89 da                	mov    %ebx,%edx
c0037165:	0f 86 9d fc ff ff    	jbe    c0036e08 <_svfiprintf_r+0x108>
c003716b:	89 fb                	mov    %edi,%ebx
c003716d:	85 c0                	test   %eax,%eax
c003716f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037172:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037178:	0f 84 5f 05 00 00    	je     c00376dd <_svfiprintf_r+0x9dd>
c003717e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037181:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037184:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003718b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037192:	00 00 00 
c0037195:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003719c:	00 00 00 
c003719f:	e9 5a 01 00 00       	jmp    c00372fe <_svfiprintf_r+0x5fe>
c00371a4:	31 db                	xor    %ebx,%ebx
c00371a6:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00371b0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c00371b3:	83 c2 01             	add    $0x1,%edx
c00371b6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c00371b9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c00371bd:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371c0:	83 f9 09             	cmp    $0x9,%ecx
c00371c3:	76 eb                	jbe    c00371b0 <_svfiprintf_r+0x4b0>
c00371c5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c00371cb:	e9 2c fc ff ff       	jmp    c0036dfc <_svfiprintf_r+0xfc>
c00371d0:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c00371d7:	00 00 00 
c00371da:	89 d0                	mov    %edx,%eax
c00371dc:	e9 15 fc ff ff       	jmp    c0036df6 <_svfiprintf_r+0xf6>
c00371e1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371e8:	89 55 10             	mov    %edx,0x10(%ebp)
c00371eb:	8b 45 14             	mov    0x14(%ebp),%eax
c00371ee:	0f 84 b8 fe ff ff    	je     c00370ac <_svfiprintf_r+0x3ac>
c00371f4:	8b 08                	mov    (%eax),%ecx
c00371f6:	83 c0 04             	add    $0x4,%eax
c00371f9:	31 d2                	xor    %edx,%edx
c00371fb:	89 45 14             	mov    %eax,0x14(%ebp)
c00371fe:	e9 7d fc ff ff       	jmp    c0036e80 <_svfiprintf_r+0x180>
c0037203:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003720a:	89 f8                	mov    %edi,%eax
c003720c:	89 55 10             	mov    %edx,0x10(%ebp)
c003720f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037215:	0f 85 a2 07 00 00    	jne    c00379bd <_svfiprintf_r+0xcbd>
c003721b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037222:	0f 84 95 07 00 00    	je     c00379bd <_svfiprintf_r+0xcbd>
c0037228:	8b 45 14             	mov    0x14(%ebp),%eax
c003722b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037232:	8b 00                	mov    (%eax),%eax
c0037234:	66 89 18             	mov    %bx,(%eax)
c0037237:	8b 45 14             	mov    0x14(%ebp),%eax
c003723a:	83 c0 04             	add    $0x4,%eax
c003723d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037240:	e9 19 fb ff ff       	jmp    c0036d5e <_svfiprintf_r+0x5e>
c0037245:	89 fb                	mov    %edi,%ebx
c0037247:	89 55 10             	mov    %edx,0x10(%ebp)
c003724a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037250:	c7 85 44 ff ff ff bf 	movl   $0xc00398bf,-0xbc(%ebp)
c0037257:	98 03 c0 
c003725a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037261:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037264:	75 0d                	jne    c0037273 <_svfiprintf_r+0x573>
c0037266:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003726d:	0f 85 65 07 00 00    	jne    c00379d8 <_svfiprintf_r+0xcd8>
c0037273:	8b 0b                	mov    (%ebx),%ecx
c0037275:	83 c3 04             	add    $0x4,%ebx
c0037278:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003727b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037282:	ba 02 00 00 00       	mov    $0x2,%edx
c0037287:	0f 84 f3 fb ff ff    	je     c0036e80 <_svfiprintf_r+0x180>
c003728d:	85 c9                	test   %ecx,%ecx
c003728f:	0f 84 eb fb ff ff    	je     c0036e80 <_svfiprintf_r+0x180>
c0037295:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003729c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c00372a2:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c00372a9:	e9 d2 fb ff ff       	jmp    c0036e80 <_svfiprintf_r+0x180>
c00372ae:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c00372b5:	89 d0                	mov    %edx,%eax
c00372b7:	e9 3a fb ff ff       	jmp    c0036df6 <_svfiprintf_r+0xf6>
c00372bc:	89 f8                	mov    %edi,%eax
c00372be:	89 55 10             	mov    %edx,0x10(%ebp)
c00372c1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00372c7:	e9 0f fe ff ff       	jmp    c00370db <_svfiprintf_r+0x3db>
c00372cc:	8b 45 14             	mov    0x14(%ebp),%eax
c00372cf:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00372d2:	89 55 10             	mov    %edx,0x10(%ebp)
c00372d5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00372dc:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00372e3:	00 00 00 
c00372e6:	8b 00                	mov    (%eax),%eax
c00372e8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00372ef:	00 00 00 
c00372f2:	88 45 80             	mov    %al,-0x80(%ebp)
c00372f5:	8b 45 14             	mov    0x14(%ebp),%eax
c00372f8:	83 c0 04             	add    $0x4,%eax
c00372fb:	89 45 14             	mov    %eax,0x14(%ebp)
c00372fe:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037305:	00 00 00 
c0037308:	e9 05 fc ff ff       	jmp    c0036f12 <_svfiprintf_r+0x212>
c003730d:	89 fb                	mov    %edi,%ebx
c003730f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037312:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037318:	c7 85 44 ff ff ff ae 	movl   $0xc00398ae,-0xbc(%ebp)
c003731f:	98 03 c0 
c0037322:	e9 33 ff ff ff       	jmp    c003725a <_svfiprintf_r+0x55a>
c0037327:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c003732e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037335:	89 55 10             	mov    %edx,0x10(%ebp)
c0037338:	8b 45 14             	mov    0x14(%ebp),%eax
c003733b:	75 39                	jne    c0037376 <_svfiprintf_r+0x676>
c003733d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037344:	74 30                	je     c0037376 <_svfiprintf_r+0x676>
c0037346:	0f b7 08             	movzwl (%eax),%ecx
c0037349:	83 c0 04             	add    $0x4,%eax
c003734c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037351:	89 45 14             	mov    %eax,0x14(%ebp)
c0037354:	e9 27 fb ff ff       	jmp    c0036e80 <_svfiprintf_r+0x180>
c0037359:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037360:	89 d0                	mov    %edx,%eax
c0037362:	e9 8f fa ff ff       	jmp    c0036df6 <_svfiprintf_r+0xf6>
c0037367:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003736e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037371:	8b 45 14             	mov    0x14(%ebp),%eax
c0037374:	74 c7                	je     c003733d <_svfiprintf_r+0x63d>
c0037376:	8b 08                	mov    (%eax),%ecx
c0037378:	83 c0 04             	add    $0x4,%eax
c003737b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037380:	89 45 14             	mov    %eax,0x14(%ebp)
c0037383:	e9 f8 fa ff ff       	jmp    c0036e80 <_svfiprintf_r+0x180>
c0037388:	8b 45 14             	mov    0x14(%ebp),%eax
c003738b:	89 55 10             	mov    %edx,0x10(%ebp)
c003738e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037395:	8b 18                	mov    (%eax),%ebx
c0037397:	8d 50 04             	lea    0x4(%eax),%edx
c003739a:	85 db                	test   %ebx,%ebx
c003739c:	0f 84 cc 06 00 00    	je     c0037a6e <_svfiprintf_r+0xd6e>
c00373a2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00373a8:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c00373ae:	85 ff                	test   %edi,%edi
c00373b0:	0f 88 59 06 00 00    	js     c0037a0f <_svfiprintf_r+0xd0f>
c00373b6:	89 7c 24 08          	mov    %edi,0x8(%esp)
c00373ba:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00373c1:	00 
c00373c2:	89 1c 24             	mov    %ebx,(%esp)
c00373c5:	e8 06 e7 ff ff       	call   c0035ad0 <memchr>
c00373ca:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00373d0:	85 c0                	test   %eax,%eax
c00373d2:	0f 84 c5 06 00 00    	je     c0037a9d <_svfiprintf_r+0xd9d>
c00373d8:	29 d8                	sub    %ebx,%eax
c00373da:	39 f8                	cmp    %edi,%eax
c00373dc:	0f 4f c7             	cmovg  %edi,%eax
c00373df:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00373e6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00373ec:	89 55 14             	mov    %edx,0x14(%ebp)
c00373ef:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00373f6:	00 00 00 
c00373f9:	e9 f2 fa ff ff       	jmp    c0036ef0 <_svfiprintf_r+0x1f0>
c00373fe:	89 f8                	mov    %edi,%eax
c0037400:	84 c0                	test   %al,%al
c0037402:	b8 20 00 00 00       	mov    $0x20,%eax
c0037407:	0f 44 f8             	cmove  %eax,%edi
c003740a:	89 d0                	mov    %edx,%eax
c003740c:	e9 e5 f9 ff ff       	jmp    c0036df6 <_svfiprintf_r+0xf6>
c0037411:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037418:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003741e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037424:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c003742b:	74 2e                	je     c003745b <_svfiprintf_r+0x75b>
c003742d:	83 c0 01             	add    $0x1,%eax
c0037430:	83 c2 01             	add    $0x1,%edx
c0037433:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037439:	83 c6 08             	add    $0x8,%esi
c003743c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003743f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037446:	83 f8 07             	cmp    $0x7,%eax
c0037449:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003744f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037455:	0f 8f b5 04 00 00    	jg     c0037910 <_svfiprintf_r+0xc10>
c003745b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037461:	85 c9                	test   %ecx,%ecx
c0037463:	74 2e                	je     c0037493 <_svfiprintf_r+0x793>
c0037465:	83 c0 01             	add    $0x1,%eax
c0037468:	83 c2 02             	add    $0x2,%edx
c003746b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037471:	83 c6 08             	add    $0x8,%esi
c0037474:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037477:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003747e:	83 f8 07             	cmp    $0x7,%eax
c0037481:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037487:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003748d:	0f 8f 45 04 00 00    	jg     c00378d8 <_svfiprintf_r+0xbd8>
c0037493:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c003749a:	00 00 00 
c003749d:	0f 84 9d 02 00 00    	je     c0037740 <_svfiprintf_r+0xa40>
c00374a3:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00374a9:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c00374af:	85 ff                	test   %edi,%edi
c00374b1:	0f 8e e1 00 00 00    	jle    c0037598 <_svfiprintf_r+0x898>
c00374b7:	83 ff 10             	cmp    $0x10,%edi
c00374ba:	0f 8e 7c 00 00 00    	jle    c003753c <_svfiprintf_r+0x83c>
c00374c0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c00374c6:	89 f1                	mov    %esi,%ecx
c00374c8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00374cb:	8b 75 0c             	mov    0xc(%ebp),%esi
c00374ce:	eb 08                	jmp    c00374d8 <_svfiprintf_r+0x7d8>
c00374d0:	83 ef 10             	sub    $0x10,%edi
c00374d3:	83 ff 10             	cmp    $0x10,%edi
c00374d6:	7e 5c                	jle    c0037534 <_svfiprintf_r+0x834>
c00374d8:	83 c0 01             	add    $0x1,%eax
c00374db:	83 c2 10             	add    $0x10,%edx
c00374de:	c7 01 8c 9d 03 c0    	movl   $0xc0039d8c,(%ecx)
c00374e4:	83 c1 08             	add    $0x8,%ecx
c00374e7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00374ee:	83 f8 07             	cmp    $0x7,%eax
c00374f1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00374f7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374fd:	7e d1                	jle    c00374d0 <_svfiprintf_r+0x7d0>
c00374ff:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037505:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037509:	89 74 24 04          	mov    %esi,0x4(%esp)
c003750d:	89 1c 24             	mov    %ebx,(%esp)
c0037510:	e8 fb f5 ff ff       	call   c0036b10 <__ssprint_r>
c0037515:	85 c0                	test   %eax,%eax
c0037517:	0f 85 eb 01 00 00    	jne    c0037708 <_svfiprintf_r+0xa08>
c003751d:	83 ef 10             	sub    $0x10,%edi
c0037520:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037526:	83 ff 10             	cmp    $0x10,%edi
c0037529:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003752f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037532:	7f a4                	jg     c00374d8 <_svfiprintf_r+0x7d8>
c0037534:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003753a:	89 ce                	mov    %ecx,%esi
c003753c:	83 c0 01             	add    $0x1,%eax
c003753f:	01 fa                	add    %edi,%edx
c0037541:	c7 06 8c 9d 03 c0    	movl   $0xc0039d8c,(%esi)
c0037547:	83 c6 08             	add    $0x8,%esi
c003754a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003754d:	83 f8 07             	cmp    $0x7,%eax
c0037550:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037556:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003755c:	7e 3a                	jle    c0037598 <_svfiprintf_r+0x898>
c003755e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037564:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037568:	8b 45 0c             	mov    0xc(%ebp),%eax
c003756b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003756f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037572:	89 04 24             	mov    %eax,(%esp)
c0037575:	e8 96 f5 ff ff       	call   c0036b10 <__ssprint_r>
c003757a:	85 c0                	test   %eax,%eax
c003757c:	0f 85 86 01 00 00    	jne    c0037708 <_svfiprintf_r+0xa08>
c0037582:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037588:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003758b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037591:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037598:	89 1e                	mov    %ebx,(%esi)
c003759a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c00375a0:	83 c0 01             	add    $0x1,%eax
c00375a3:	83 c6 08             	add    $0x8,%esi
c00375a6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375ac:	89 5e fc             	mov    %ebx,-0x4(%esi)
c00375af:	01 da                	add    %ebx,%edx
c00375b1:	83 f8 07             	cmp    $0x7,%eax
c00375b4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375ba:	0f 8f 80 02 00 00    	jg     c0037840 <_svfiprintf_r+0xb40>
c00375c0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c00375c7:	0f 84 b9 00 00 00    	je     c0037686 <_svfiprintf_r+0x986>
c00375cd:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c00375d3:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c00375d9:	85 ff                	test   %edi,%edi
c00375db:	0f 8e a5 00 00 00    	jle    c0037686 <_svfiprintf_r+0x986>
c00375e1:	83 ff 10             	cmp    $0x10,%edi
c00375e4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375ea:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00375f0:	7e 71                	jle    c0037663 <_svfiprintf_r+0x963>
c00375f2:	89 f1                	mov    %esi,%ecx
c00375f4:	8b 75 08             	mov    0x8(%ebp),%esi
c00375f7:	eb 0f                	jmp    c0037608 <_svfiprintf_r+0x908>
c00375f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037600:	83 ef 10             	sub    $0x10,%edi
c0037603:	83 ff 10             	cmp    $0x10,%edi
c0037606:	7e 59                	jle    c0037661 <_svfiprintf_r+0x961>
c0037608:	83 c0 01             	add    $0x1,%eax
c003760b:	83 c2 10             	add    $0x10,%edx
c003760e:	c7 01 9c 9d 03 c0    	movl   $0xc0039d9c,(%ecx)
c0037614:	83 c1 08             	add    $0x8,%ecx
c0037617:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003761e:	83 f8 07             	cmp    $0x7,%eax
c0037621:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037627:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003762d:	7e d1                	jle    c0037600 <_svfiprintf_r+0x900>
c003762f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037632:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037636:	89 34 24             	mov    %esi,(%esp)
c0037639:	89 44 24 04          	mov    %eax,0x4(%esp)
c003763d:	e8 ce f4 ff ff       	call   c0036b10 <__ssprint_r>
c0037642:	85 c0                	test   %eax,%eax
c0037644:	0f 85 be 00 00 00    	jne    c0037708 <_svfiprintf_r+0xa08>
c003764a:	83 ef 10             	sub    $0x10,%edi
c003764d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037653:	83 ff 10             	cmp    $0x10,%edi
c0037656:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003765c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003765f:	7f a7                	jg     c0037608 <_svfiprintf_r+0x908>
c0037661:	89 ce                	mov    %ecx,%esi
c0037663:	83 c0 01             	add    $0x1,%eax
c0037666:	01 fa                	add    %edi,%edx
c0037668:	83 f8 07             	cmp    $0x7,%eax
c003766b:	c7 06 9c 9d 03 c0    	movl   $0xc0039d9c,(%esi)
c0037671:	89 7e 04             	mov    %edi,0x4(%esi)
c0037674:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003767a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037680:	0f 8f ee 02 00 00    	jg     c0037974 <_svfiprintf_r+0xc74>
c0037686:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c003768c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037692:	39 c6                	cmp    %eax,%esi
c0037694:	0f 4d c6             	cmovge %esi,%eax
c0037697:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c003769d:	85 d2                	test   %edx,%edx
c003769f:	0f 85 d3 01 00 00    	jne    c0037878 <_svfiprintf_r+0xb78>
c00376a5:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00376ac:	00 00 00 
c00376af:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00376b2:	e9 a7 f6 ff ff       	jmp    c0036d5e <_svfiprintf_r+0x5e>
c00376b7:	90                   	nop
c00376b8:	84 d2                	test   %dl,%dl
c00376ba:	75 6c                	jne    c0037728 <_svfiprintf_r+0xa28>
c00376bc:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00376c3:	74 63                	je     c0037728 <_svfiprintf_r+0xa28>
c00376c5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00376cb:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00376ce:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c00376d2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00376d8:	e9 13 f8 ff ff       	jmp    c0036ef0 <_svfiprintf_r+0x1f0>
c00376dd:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00376e3:	85 c0                	test   %eax,%eax
c00376e5:	74 21                	je     c0037708 <_svfiprintf_r+0xa08>
c00376e7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00376ed:	89 44 24 08          	mov    %eax,0x8(%esp)
c00376f1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00376f4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00376f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00376fb:	89 04 24             	mov    %eax,(%esp)
c00376fe:	e8 0d f4 ff ff       	call   c0036b10 <__ssprint_r>
c0037703:	90                   	nop
c0037704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037708:	8b 75 0c             	mov    0xc(%ebp),%esi
c003770b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037710:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037714:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c003771b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037721:	5b                   	pop    %ebx
c0037722:	5e                   	pop    %esi
c0037723:	5f                   	pop    %edi
c0037724:	5d                   	pop    %ebp
c0037725:	c3                   	ret    
c0037726:	66 90                	xchg   %ax,%ax
c0037728:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c003772f:	00 00 00 
c0037732:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037735:	e9 b6 f7 ff ff       	jmp    c0036ef0 <_svfiprintf_r+0x1f0>
c003773a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037740:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037746:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003774c:	85 ff                	test   %edi,%edi
c003774e:	0f 8e 4f fd ff ff    	jle    c00374a3 <_svfiprintf_r+0x7a3>
c0037754:	83 ff 10             	cmp    $0x10,%edi
c0037757:	0f 8e 7f 00 00 00    	jle    c00377dc <_svfiprintf_r+0xadc>
c003775d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037763:	89 f1                	mov    %esi,%ecx
c0037765:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037768:	8b 75 0c             	mov    0xc(%ebp),%esi
c003776b:	eb 0b                	jmp    c0037778 <_svfiprintf_r+0xa78>
c003776d:	8d 76 00             	lea    0x0(%esi),%esi
c0037770:	83 ef 10             	sub    $0x10,%edi
c0037773:	83 ff 10             	cmp    $0x10,%edi
c0037776:	7e 5c                	jle    c00377d4 <_svfiprintf_r+0xad4>
c0037778:	83 c0 01             	add    $0x1,%eax
c003777b:	83 c2 10             	add    $0x10,%edx
c003777e:	c7 01 8c 9d 03 c0    	movl   $0xc0039d8c,(%ecx)
c0037784:	83 c1 08             	add    $0x8,%ecx
c0037787:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003778e:	83 f8 07             	cmp    $0x7,%eax
c0037791:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037797:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003779d:	7e d1                	jle    c0037770 <_svfiprintf_r+0xa70>
c003779f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377a5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377a9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00377ad:	89 1c 24             	mov    %ebx,(%esp)
c00377b0:	e8 5b f3 ff ff       	call   c0036b10 <__ssprint_r>
c00377b5:	85 c0                	test   %eax,%eax
c00377b7:	0f 85 4b ff ff ff    	jne    c0037708 <_svfiprintf_r+0xa08>
c00377bd:	83 ef 10             	sub    $0x10,%edi
c00377c0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00377c6:	83 ff 10             	cmp    $0x10,%edi
c00377c9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00377cf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00377d2:	7f a4                	jg     c0037778 <_svfiprintf_r+0xa78>
c00377d4:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c00377da:	89 ce                	mov    %ecx,%esi
c00377dc:	83 c0 01             	add    $0x1,%eax
c00377df:	01 fa                	add    %edi,%edx
c00377e1:	c7 06 8c 9d 03 c0    	movl   $0xc0039d8c,(%esi)
c00377e7:	83 c6 08             	add    $0x8,%esi
c00377ea:	89 7e fc             	mov    %edi,-0x4(%esi)
c00377ed:	83 f8 07             	cmp    $0x7,%eax
c00377f0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377f6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377fc:	0f 8e a1 fc ff ff    	jle    c00374a3 <_svfiprintf_r+0x7a3>
c0037802:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037808:	89 44 24 08          	mov    %eax,0x8(%esp)
c003780c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003780f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037813:	8b 45 08             	mov    0x8(%ebp),%eax
c0037816:	89 04 24             	mov    %eax,(%esp)
c0037819:	e8 f2 f2 ff ff       	call   c0036b10 <__ssprint_r>
c003781e:	85 c0                	test   %eax,%eax
c0037820:	0f 85 e2 fe ff ff    	jne    c0037708 <_svfiprintf_r+0xa08>
c0037826:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003782c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003782f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037835:	e9 69 fc ff ff       	jmp    c00374a3 <_svfiprintf_r+0x7a3>
c003783a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037840:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037846:	89 44 24 08          	mov    %eax,0x8(%esp)
c003784a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003784d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037851:	8b 45 08             	mov    0x8(%ebp),%eax
c0037854:	89 04 24             	mov    %eax,(%esp)
c0037857:	e8 b4 f2 ff ff       	call   c0036b10 <__ssprint_r>
c003785c:	85 c0                	test   %eax,%eax
c003785e:	0f 85 a4 fe ff ff    	jne    c0037708 <_svfiprintf_r+0xa08>
c0037864:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003786a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003786d:	e9 4e fd ff ff       	jmp    c00375c0 <_svfiprintf_r+0x8c0>
c0037872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037878:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003787e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037882:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037885:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037889:	8b 45 08             	mov    0x8(%ebp),%eax
c003788c:	89 04 24             	mov    %eax,(%esp)
c003788f:	e8 7c f2 ff ff       	call   c0036b10 <__ssprint_r>
c0037894:	85 c0                	test   %eax,%eax
c0037896:	0f 84 09 fe ff ff    	je     c00376a5 <_svfiprintf_r+0x9a5>
c003789c:	e9 67 fe ff ff       	jmp    c0037708 <_svfiprintf_r+0xa08>
c00378a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00378a8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378ae:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378b2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378b5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378bc:	89 04 24             	mov    %eax,(%esp)
c00378bf:	e8 4c f2 ff ff       	call   c0036b10 <__ssprint_r>
c00378c4:	85 c0                	test   %eax,%eax
c00378c6:	0f 85 3c fe ff ff    	jne    c0037708 <_svfiprintf_r+0xa08>
c00378cc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378cf:	e9 e9 f4 ff ff       	jmp    c0036dbd <_svfiprintf_r+0xbd>
c00378d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00378d8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378de:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378e2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378e5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378ec:	89 04 24             	mov    %eax,(%esp)
c00378ef:	e8 1c f2 ff ff       	call   c0036b10 <__ssprint_r>
c00378f4:	85 c0                	test   %eax,%eax
c00378f6:	0f 85 0c fe ff ff    	jne    c0037708 <_svfiprintf_r+0xa08>
c00378fc:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037902:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037905:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003790b:	e9 83 fb ff ff       	jmp    c0037493 <_svfiprintf_r+0x793>
c0037910:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037916:	89 44 24 08          	mov    %eax,0x8(%esp)
c003791a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003791d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037921:	8b 45 08             	mov    0x8(%ebp),%eax
c0037924:	89 04 24             	mov    %eax,(%esp)
c0037927:	e8 e4 f1 ff ff       	call   c0036b10 <__ssprint_r>
c003792c:	85 c0                	test   %eax,%eax
c003792e:	0f 85 d4 fd ff ff    	jne    c0037708 <_svfiprintf_r+0xa08>
c0037934:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003793a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003793d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037943:	e9 13 fb ff ff       	jmp    c003745b <_svfiprintf_r+0x75b>
c0037948:	83 f9 09             	cmp    $0x9,%ecx
c003794b:	76 56                	jbe    c00379a3 <_svfiprintf_r+0xca3>
c003794d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037950:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037955:	83 eb 01             	sub    $0x1,%ebx
c0037958:	f7 e1                	mul    %ecx
c003795a:	c1 ea 03             	shr    $0x3,%edx
c003795d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037960:	01 c0                	add    %eax,%eax
c0037962:	29 c1                	sub    %eax,%ecx
c0037964:	83 c1 30             	add    $0x30,%ecx
c0037967:	85 d2                	test   %edx,%edx
c0037969:	88 0b                	mov    %cl,(%ebx)
c003796b:	89 d1                	mov    %edx,%ecx
c003796d:	75 e1                	jne    c0037950 <_svfiprintf_r+0xc50>
c003796f:	e9 71 f5 ff ff       	jmp    c0036ee5 <_svfiprintf_r+0x1e5>
c0037974:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003797a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003797e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037981:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037985:	8b 45 08             	mov    0x8(%ebp),%eax
c0037988:	89 04 24             	mov    %eax,(%esp)
c003798b:	e8 80 f1 ff ff       	call   c0036b10 <__ssprint_r>
c0037990:	85 c0                	test   %eax,%eax
c0037992:	0f 85 70 fd ff ff    	jne    c0037708 <_svfiprintf_r+0xa08>
c0037998:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003799e:	e9 e3 fc ff ff       	jmp    c0037686 <_svfiprintf_r+0x986>
c00379a3:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00379a9:	83 c1 30             	add    $0x30,%ecx
c00379ac:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00379af:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00379b2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00379b8:	e9 33 f5 ff ff       	jmp    c0036ef0 <_svfiprintf_r+0x1f0>
c00379bd:	8b 45 14             	mov    0x14(%ebp),%eax
c00379c0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c00379c6:	8b 00                	mov    (%eax),%eax
c00379c8:	89 18                	mov    %ebx,(%eax)
c00379ca:	8b 45 14             	mov    0x14(%ebp),%eax
c00379cd:	83 c0 04             	add    $0x4,%eax
c00379d0:	89 45 14             	mov    %eax,0x14(%ebp)
c00379d3:	e9 86 f3 ff ff       	jmp    c0036d5e <_svfiprintf_r+0x5e>
c00379d8:	0f b7 0b             	movzwl (%ebx),%ecx
c00379db:	83 c3 04             	add    $0x4,%ebx
c00379de:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00379e1:	e9 95 f8 ff ff       	jmp    c003727b <_svfiprintf_r+0x57b>
c00379e6:	0f bf 08             	movswl (%eax),%ecx
c00379e9:	83 c0 04             	add    $0x4,%eax
c00379ec:	89 45 14             	mov    %eax,0x14(%ebp)
c00379ef:	85 c9                	test   %ecx,%ecx
c00379f1:	0f 89 0d f7 ff ff    	jns    c0037104 <_svfiprintf_r+0x404>
c00379f7:	f7 d9                	neg    %ecx
c00379f9:	bf 2d 00 00 00       	mov    $0x2d,%edi
c00379fe:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037a05:	ba 01 00 00 00       	mov    $0x1,%edx
c0037a0a:	e9 7a f4 ff ff       	jmp    c0036e89 <_svfiprintf_r+0x189>
c0037a0f:	89 1c 24             	mov    %ebx,(%esp)
c0037a12:	e8 79 f0 ff ff       	call   c0036a90 <strlen>
c0037a17:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037a1d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a24:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a2b:	00 00 00 
c0037a2e:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a31:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a37:	e9 b4 f4 ff ff       	jmp    c0036ef0 <_svfiprintf_r+0x1f0>
c0037a3c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a3f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037a46:	00 
c0037a47:	89 04 24             	mov    %eax,(%esp)
c0037a4a:	e8 41 d9 ff ff       	call   c0035390 <_malloc_r>
c0037a4f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037a52:	85 c0                	test   %eax,%eax
c0037a54:	89 06                	mov    %eax,(%esi)
c0037a56:	89 46 10             	mov    %eax,0x10(%esi)
c0037a59:	0f 84 a3 00 00 00    	je     c0037b02 <_svfiprintf_r+0xe02>
c0037a5f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a62:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037a69:	e9 b2 f2 ff ff       	jmp    c0036d20 <_svfiprintf_r+0x20>
c0037a6e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037a74:	b8 06 00 00 00       	mov    $0x6,%eax
c0037a79:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a7c:	83 ff 06             	cmp    $0x6,%edi
c0037a7f:	0f 46 c7             	cmovbe %edi,%eax
c0037a82:	85 c0                	test   %eax,%eax
c0037a84:	0f 49 d8             	cmovns %eax,%ebx
c0037a87:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037a8d:	bb d0 98 03 c0       	mov    $0xc00398d0,%ebx
c0037a92:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a98:	e9 61 f8 ff ff       	jmp    c00372fe <_svfiprintf_r+0x5fe>
c0037a9d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037aa3:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037aaa:	89 55 14             	mov    %edx,0x14(%ebp)
c0037aad:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037ab4:	00 00 00 
c0037ab7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037abd:	e9 2e f4 ff ff       	jmp    c0036ef0 <_svfiprintf_r+0x1f0>
c0037ac2:	89 da                	mov    %ebx,%edx
c0037ac4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037acb:	00 00 00 
c0037ace:	e9 29 f3 ff ff       	jmp    c0036dfc <_svfiprintf_r+0xfc>
c0037ad3:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037ad6:	89 da                	mov    %ebx,%edx
c0037ad8:	8b 45 14             	mov    0x14(%ebp),%eax
c0037adb:	8b 09                	mov    (%ecx),%ecx
c0037add:	83 c0 04             	add    $0x4,%eax
c0037ae0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037ae3:	85 c9                	test   %ecx,%ecx
c0037ae5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037aeb:	0f 89 26 f3 ff ff    	jns    c0036e17 <_svfiprintf_r+0x117>
c0037af1:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037af8:	ff ff ff 
c0037afb:	89 d0                	mov    %edx,%eax
c0037afd:	e9 f4 f2 ff ff       	jmp    c0036df6 <_svfiprintf_r+0xf6>
c0037b02:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b05:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037b0b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037b10:	e9 06 fc ff ff       	jmp    c003771b <_svfiprintf_r+0xa1b>
c0037b15:	66 90                	xchg   %ax,%ax
c0037b17:	66 90                	xchg   %ax,%ax
c0037b19:	66 90                	xchg   %ax,%ax
c0037b1b:	66 90                	xchg   %ax,%ax
c0037b1d:	66 90                	xchg   %ax,%ax
c0037b1f:	90                   	nop

c0037b20 <_calloc_r>:
c0037b20:	55                   	push   %ebp
c0037b21:	89 e5                	mov    %esp,%ebp
c0037b23:	53                   	push   %ebx
c0037b24:	83 ec 14             	sub    $0x14,%esp
c0037b27:	8b 45 10             	mov    0x10(%ebp),%eax
c0037b2a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037b2e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b32:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b35:	89 04 24             	mov    %eax,(%esp)
c0037b38:	e8 53 d8 ff ff       	call   c0035390 <_malloc_r>
c0037b3d:	85 c0                	test   %eax,%eax
c0037b3f:	89 c3                	mov    %eax,%ebx
c0037b41:	0f 84 91 00 00 00    	je     c0037bd8 <_calloc_r+0xb8>
c0037b47:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037b4a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037b4d:	83 e8 04             	sub    $0x4,%eax
c0037b50:	83 f8 24             	cmp    $0x24,%eax
c0037b53:	77 63                	ja     c0037bb8 <_calloc_r+0x98>
c0037b55:	83 f8 13             	cmp    $0x13,%eax
c0037b58:	89 da                	mov    %ebx,%edx
c0037b5a:	77 1c                	ja     c0037b78 <_calloc_r+0x58>
c0037b5c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037b62:	89 d8                	mov    %ebx,%eax
c0037b64:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037b6b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037b72:	83 c4 14             	add    $0x14,%esp
c0037b75:	5b                   	pop    %ebx
c0037b76:	5d                   	pop    %ebp
c0037b77:	c3                   	ret    
c0037b78:	83 f8 1b             	cmp    $0x1b,%eax
c0037b7b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037b81:	8d 53 08             	lea    0x8(%ebx),%edx
c0037b84:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037b8b:	76 cf                	jbe    c0037b5c <_calloc_r+0x3c>
c0037b8d:	83 f8 24             	cmp    $0x24,%eax
c0037b90:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037b97:	8d 53 10             	lea    0x10(%ebx),%edx
c0037b9a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037ba1:	75 b9                	jne    c0037b5c <_calloc_r+0x3c>
c0037ba3:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037baa:	8d 53 18             	lea    0x18(%ebx),%edx
c0037bad:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037bb4:	eb a6                	jmp    c0037b5c <_calloc_r+0x3c>
c0037bb6:	66 90                	xchg   %ax,%ax
c0037bb8:	89 1c 24             	mov    %ebx,(%esp)
c0037bbb:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037bbf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037bc6:	00 
c0037bc7:	e8 50 a2 ff ff       	call   c0031e1c <memset>
c0037bcc:	83 c4 14             	add    $0x14,%esp
c0037bcf:	89 d8                	mov    %ebx,%eax
c0037bd1:	5b                   	pop    %ebx
c0037bd2:	5d                   	pop    %ebp
c0037bd3:	c3                   	ret    
c0037bd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037bd8:	31 c0                	xor    %eax,%eax
c0037bda:	eb 96                	jmp    c0037b72 <_calloc_r+0x52>
c0037bdc:	66 90                	xchg   %ax,%ax
c0037bde:	66 90                	xchg   %ax,%ax

c0037be0 <_malloc_trim_r>:
c0037be0:	55                   	push   %ebp
c0037be1:	89 e5                	mov    %esp,%ebp
c0037be3:	57                   	push   %edi
c0037be4:	56                   	push   %esi
c0037be5:	53                   	push   %ebx
c0037be6:	83 ec 1c             	sub    $0x1c,%esp
c0037be9:	8b 75 08             	mov    0x8(%ebp),%esi
c0037bec:	89 34 24             	mov    %esi,(%esp)
c0037bef:	e8 7c df ff ff       	call   c0035b70 <__malloc_lock>
c0037bf4:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037bf9:	8b 58 04             	mov    0x4(%eax),%ebx
c0037bfc:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037bff:	89 d8                	mov    %ebx,%eax
c0037c01:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037c04:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037c09:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037c0e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037c14:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037c1a:	7e 1c                	jle    c0037c38 <_malloc_trim_r+0x58>
c0037c1c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c23:	00 
c0037c24:	89 34 24             	mov    %esi,(%esp)
c0037c27:	e8 44 ed ff ff       	call   c0036970 <_sbrk_r>
c0037c2c:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037c32:	01 da                	add    %ebx,%edx
c0037c34:	39 d0                	cmp    %edx,%eax
c0037c36:	74 18                	je     c0037c50 <_malloc_trim_r+0x70>
c0037c38:	89 34 24             	mov    %esi,(%esp)
c0037c3b:	e8 40 df ff ff       	call   c0035b80 <__malloc_unlock>
c0037c40:	83 c4 1c             	add    $0x1c,%esp
c0037c43:	31 c0                	xor    %eax,%eax
c0037c45:	5b                   	pop    %ebx
c0037c46:	5e                   	pop    %esi
c0037c47:	5f                   	pop    %edi
c0037c48:	5d                   	pop    %ebp
c0037c49:	c3                   	ret    
c0037c4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037c50:	89 f8                	mov    %edi,%eax
c0037c52:	f7 d8                	neg    %eax
c0037c54:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c58:	89 34 24             	mov    %esi,(%esp)
c0037c5b:	e8 10 ed ff ff       	call   c0036970 <_sbrk_r>
c0037c60:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037c63:	74 2b                	je     c0037c90 <_malloc_trim_r+0xb0>
c0037c65:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037c6a:	29 fb                	sub    %edi,%ebx
c0037c6c:	83 cb 01             	or     $0x1,%ebx
c0037c6f:	29 3d 20 00 07 c0    	sub    %edi,0xc0070020
c0037c75:	89 58 04             	mov    %ebx,0x4(%eax)
c0037c78:	89 34 24             	mov    %esi,(%esp)
c0037c7b:	e8 00 df ff ff       	call   c0035b80 <__malloc_unlock>
c0037c80:	83 c4 1c             	add    $0x1c,%esp
c0037c83:	b8 01 00 00 00       	mov    $0x1,%eax
c0037c88:	5b                   	pop    %ebx
c0037c89:	5e                   	pop    %esi
c0037c8a:	5f                   	pop    %edi
c0037c8b:	5d                   	pop    %ebp
c0037c8c:	c3                   	ret    
c0037c8d:	8d 76 00             	lea    0x0(%esi),%esi
c0037c90:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c97:	00 
c0037c98:	89 34 24             	mov    %esi,(%esp)
c0037c9b:	e8 d0 ec ff ff       	call   c0036970 <_sbrk_r>
c0037ca0:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037ca6:	89 c1                	mov    %eax,%ecx
c0037ca8:	29 d1                	sub    %edx,%ecx
c0037caa:	83 f9 0f             	cmp    $0xf,%ecx
c0037cad:	7e 89                	jle    c0037c38 <_malloc_trim_r+0x58>
c0037caf:	2b 05 20 d5 03 c0    	sub    0xc003d520,%eax
c0037cb5:	83 c9 01             	or     $0x1,%ecx
c0037cb8:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037cbb:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0037cc0:	e9 73 ff ff ff       	jmp    c0037c38 <_malloc_trim_r+0x58>
c0037cc5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037cc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037cd0 <_free_r>:
c0037cd0:	55                   	push   %ebp
c0037cd1:	89 e5                	mov    %esp,%ebp
c0037cd3:	57                   	push   %edi
c0037cd4:	56                   	push   %esi
c0037cd5:	53                   	push   %ebx
c0037cd6:	83 ec 1c             	sub    $0x1c,%esp
c0037cd9:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037cdc:	8b 45 08             	mov    0x8(%ebp),%eax
c0037cdf:	85 f6                	test   %esi,%esi
c0037ce1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037ce4:	0f 84 fe 00 00 00    	je     c0037de8 <_free_r+0x118>
c0037cea:	89 04 24             	mov    %eax,(%esp)
c0037ced:	e8 7e de ff ff       	call   c0035b70 <__malloc_lock>
c0037cf2:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037cf5:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037cf8:	89 f8                	mov    %edi,%eax
c0037cfa:	83 e0 fe             	and    $0xfffffffe,%eax
c0037cfd:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037d00:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037d03:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037d06:	39 0d 48 d5 03 c0    	cmp    %ecx,0xc003d548
c0037d0c:	0f 84 0e 01 00 00    	je     c0037e20 <_free_r+0x150>
c0037d12:	83 e7 01             	and    $0x1,%edi
c0037d15:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037d18:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037d1f:	75 1f                	jne    c0037d40 <_free_r+0x70>
c0037d21:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037d24:	29 f2                	sub    %esi,%edx
c0037d26:	01 f0                	add    %esi,%eax
c0037d28:	8b 72 08             	mov    0x8(%edx),%esi
c0037d2b:	81 fe 48 d5 03 c0    	cmp    $0xc003d548,%esi
c0037d31:	0f 84 39 01 00 00    	je     c0037e70 <_free_r+0x1a0>
c0037d37:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037d3a:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037d3d:	89 77 08             	mov    %esi,0x8(%edi)
c0037d40:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037d45:	75 21                	jne    c0037d68 <_free_r+0x98>
c0037d47:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037d4a:	01 d8                	add    %ebx,%eax
c0037d4c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037d4f:	85 f6                	test   %esi,%esi
c0037d51:	75 0c                	jne    c0037d5f <_free_r+0x8f>
c0037d53:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0037d59:	0f 84 21 01 00 00    	je     c0037e80 <_free_r+0x1b0>
c0037d5f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037d62:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037d65:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037d68:	89 c1                	mov    %eax,%ecx
c0037d6a:	83 c9 01             	or     $0x1,%ecx
c0037d6d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d70:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037d73:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037d76:	85 c9                	test   %ecx,%ecx
c0037d78:	75 56                	jne    c0037dd0 <_free_r+0x100>
c0037d7a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037d7f:	76 6f                	jbe    c0037df0 <_free_r+0x120>
c0037d81:	89 c1                	mov    %eax,%ecx
c0037d83:	c1 e9 09             	shr    $0x9,%ecx
c0037d86:	83 f9 04             	cmp    $0x4,%ecx
c0037d89:	0f 87 21 01 00 00    	ja     c0037eb0 <_free_r+0x1e0>
c0037d8f:	89 c1                	mov    %eax,%ecx
c0037d91:	c1 e9 06             	shr    $0x6,%ecx
c0037d94:	83 c1 38             	add    $0x38,%ecx
c0037d97:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037d9a:	8d 34 9d 40 d5 03 c0 	lea    -0x3ffc2ac0(,%ebx,4),%esi
c0037da1:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037da4:	39 f3                	cmp    %esi,%ebx
c0037da6:	0f 84 14 01 00 00    	je     c0037ec0 <_free_r+0x1f0>
c0037dac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037db0:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037db3:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037db6:	39 c8                	cmp    %ecx,%eax
c0037db8:	73 07                	jae    c0037dc1 <_free_r+0xf1>
c0037dba:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037dbd:	39 de                	cmp    %ebx,%esi
c0037dbf:	75 ef                	jne    c0037db0 <_free_r+0xe0>
c0037dc1:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037dc4:	89 42 0c             	mov    %eax,0xc(%edx)
c0037dc7:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037dca:	89 50 08             	mov    %edx,0x8(%eax)
c0037dcd:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037dd0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037dd3:	89 45 08             	mov    %eax,0x8(%ebp)
c0037dd6:	83 c4 1c             	add    $0x1c,%esp
c0037dd9:	5b                   	pop    %ebx
c0037dda:	5e                   	pop    %esi
c0037ddb:	5f                   	pop    %edi
c0037ddc:	5d                   	pop    %ebp
c0037ddd:	e9 9e dd ff ff       	jmp    c0035b80 <__malloc_unlock>
c0037de2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037de8:	83 c4 1c             	add    $0x1c,%esp
c0037deb:	5b                   	pop    %ebx
c0037dec:	5e                   	pop    %esi
c0037ded:	5f                   	pop    %edi
c0037dee:	5d                   	pop    %ebp
c0037def:	c3                   	ret    
c0037df0:	c1 e8 03             	shr    $0x3,%eax
c0037df3:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037df8:	89 c1                	mov    %eax,%ecx
c0037dfa:	c1 f9 02             	sar    $0x2,%ecx
c0037dfd:	8d 04 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%eax
c0037e04:	d3 e3                	shl    %cl,%ebx
c0037e06:	8b 48 08             	mov    0x8(%eax),%ecx
c0037e09:	09 1d 44 d5 03 c0    	or     %ebx,0xc003d544
c0037e0f:	89 42 0c             	mov    %eax,0xc(%edx)
c0037e12:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037e15:	89 50 08             	mov    %edx,0x8(%eax)
c0037e18:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037e1b:	eb b3                	jmp    c0037dd0 <_free_r+0x100>
c0037e1d:	8d 76 00             	lea    0x0(%esi),%esi
c0037e20:	01 d8                	add    %ebx,%eax
c0037e22:	83 e7 01             	and    $0x1,%edi
c0037e25:	75 13                	jne    c0037e3a <_free_r+0x16a>
c0037e27:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037e2a:	29 ca                	sub    %ecx,%edx
c0037e2c:	01 c8                	add    %ecx,%eax
c0037e2e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037e31:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037e34:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037e37:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037e3a:	89 c1                	mov    %eax,%ecx
c0037e3c:	83 c9 01             	or     $0x1,%ecx
c0037e3f:	3b 05 24 d5 03 c0    	cmp    0xc003d524,%eax
c0037e45:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e48:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0037e4e:	72 80                	jb     c0037dd0 <_free_r+0x100>
c0037e50:	a1 50 00 07 c0       	mov    0xc0070050,%eax
c0037e55:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e59:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e5c:	89 04 24             	mov    %eax,(%esp)
c0037e5f:	e8 7c fd ff ff       	call   c0037be0 <_malloc_trim_r>
c0037e64:	e9 67 ff ff ff       	jmp    c0037dd0 <_free_r+0x100>
c0037e69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037e70:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037e77:	e9 c4 fe ff ff       	jmp    c0037d40 <_free_r+0x70>
c0037e7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e80:	89 c1                	mov    %eax,%ecx
c0037e82:	83 c9 01             	or     $0x1,%ecx
c0037e85:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c0037e8b:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0037e91:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0037e98:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0037e9f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037ea2:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037ea5:	e9 26 ff ff ff       	jmp    c0037dd0 <_free_r+0x100>
c0037eaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037eb0:	83 f9 14             	cmp    $0x14,%ecx
c0037eb3:	77 23                	ja     c0037ed8 <_free_r+0x208>
c0037eb5:	83 c1 5b             	add    $0x5b,%ecx
c0037eb8:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ebb:	e9 da fe ff ff       	jmp    c0037d9a <_free_r+0xca>
c0037ec0:	c1 f9 02             	sar    $0x2,%ecx
c0037ec3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037ec8:	d3 e0                	shl    %cl,%eax
c0037eca:	09 05 44 d5 03 c0    	or     %eax,0xc003d544
c0037ed0:	89 d8                	mov    %ebx,%eax
c0037ed2:	e9 ed fe ff ff       	jmp    c0037dc4 <_free_r+0xf4>
c0037ed7:	90                   	nop
c0037ed8:	83 f9 54             	cmp    $0x54,%ecx
c0037edb:	77 10                	ja     c0037eed <_free_r+0x21d>
c0037edd:	89 c1                	mov    %eax,%ecx
c0037edf:	c1 e9 0c             	shr    $0xc,%ecx
c0037ee2:	83 c1 6e             	add    $0x6e,%ecx
c0037ee5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ee8:	e9 ad fe ff ff       	jmp    c0037d9a <_free_r+0xca>
c0037eed:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037ef3:	77 10                	ja     c0037f05 <_free_r+0x235>
c0037ef5:	89 c1                	mov    %eax,%ecx
c0037ef7:	c1 e9 0f             	shr    $0xf,%ecx
c0037efa:	83 c1 77             	add    $0x77,%ecx
c0037efd:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f00:	e9 95 fe ff ff       	jmp    c0037d9a <_free_r+0xca>
c0037f05:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037f0b:	77 10                	ja     c0037f1d <_free_r+0x24d>
c0037f0d:	89 c1                	mov    %eax,%ecx
c0037f0f:	c1 e9 12             	shr    $0x12,%ecx
c0037f12:	83 c1 7c             	add    $0x7c,%ecx
c0037f15:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f18:	e9 7d fe ff ff       	jmp    c0037d9a <_free_r+0xca>
c0037f1d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037f22:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037f27:	e9 6e fe ff ff       	jmp    c0037d9a <_free_r+0xca>
c0037f2c:	66 90                	xchg   %ax,%ax
c0037f2e:	66 90                	xchg   %ax,%ax

c0037f30 <memmove>:
c0037f30:	55                   	push   %ebp
c0037f31:	89 e5                	mov    %esp,%ebp
c0037f33:	56                   	push   %esi
c0037f34:	57                   	push   %edi
c0037f35:	53                   	push   %ebx
c0037f36:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037f39:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037f3c:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037f3f:	fc                   	cld    
c0037f40:	39 fe                	cmp    %edi,%esi
c0037f42:	73 43                	jae    c0037f87 <memmove+0x57>
c0037f44:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037f48:	39 df                	cmp    %ebx,%edi
c0037f4a:	77 3b                	ja     c0037f87 <memmove+0x57>
c0037f4c:	01 ce                	add    %ecx,%esi
c0037f4e:	01 cf                	add    %ecx,%edi
c0037f50:	fd                   	std    
c0037f51:	83 f9 08             	cmp    $0x8,%ecx
c0037f54:	76 2b                	jbe    c0037f81 <memmove+0x51>
c0037f56:	89 fa                	mov    %edi,%edx
c0037f58:	89 cb                	mov    %ecx,%ebx
c0037f5a:	83 e2 03             	and    $0x3,%edx
c0037f5d:	74 0c                	je     c0037f6b <memmove+0x3b>
c0037f5f:	89 d1                	mov    %edx,%ecx
c0037f61:	4e                   	dec    %esi
c0037f62:	4f                   	dec    %edi
c0037f63:	29 cb                	sub    %ecx,%ebx
c0037f65:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f67:	89 d9                	mov    %ebx,%ecx
c0037f69:	46                   	inc    %esi
c0037f6a:	47                   	inc    %edi
c0037f6b:	c1 e9 02             	shr    $0x2,%ecx
c0037f6e:	83 ee 04             	sub    $0x4,%esi
c0037f71:	83 ef 04             	sub    $0x4,%edi
c0037f74:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037f76:	83 c6 04             	add    $0x4,%esi
c0037f79:	83 c7 04             	add    $0x4,%edi
c0037f7c:	89 d9                	mov    %ebx,%ecx
c0037f7e:	83 e1 03             	and    $0x3,%ecx
c0037f81:	4e                   	dec    %esi
c0037f82:	4f                   	dec    %edi
c0037f83:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f85:	eb 2a                	jmp    c0037fb1 <memmove+0x81>
c0037f87:	83 f9 08             	cmp    $0x8,%ecx
c0037f8a:	76 23                	jbe    c0037faf <memmove+0x7f>
c0037f8c:	89 fa                	mov    %edi,%edx
c0037f8e:	89 cb                	mov    %ecx,%ebx
c0037f90:	83 e2 03             	and    $0x3,%edx
c0037f93:	74 10                	je     c0037fa5 <memmove+0x75>
c0037f95:	b9 04 00 00 00       	mov    $0x4,%ecx
c0037f9a:	29 d1                	sub    %edx,%ecx
c0037f9c:	83 e1 03             	and    $0x3,%ecx
c0037f9f:	29 cb                	sub    %ecx,%ebx
c0037fa1:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fa3:	89 d9                	mov    %ebx,%ecx
c0037fa5:	c1 e9 02             	shr    $0x2,%ecx
c0037fa8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037faa:	89 d9                	mov    %ebx,%ecx
c0037fac:	83 e1 03             	and    $0x3,%ecx
c0037faf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fb1:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fb4:	fc                   	cld    
c0037fb5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0037fb8:	5b                   	pop    %ebx
c0037fb9:	5f                   	pop    %edi
c0037fba:	5e                   	pop    %esi
c0037fbb:	c9                   	leave  
c0037fbc:	c3                   	ret    
c0037fbd:	66 90                	xchg   %ax,%ax
c0037fbf:	90                   	nop

c0037fc0 <_realloc_r>:
c0037fc0:	55                   	push   %ebp
c0037fc1:	89 e5                	mov    %esp,%ebp
c0037fc3:	57                   	push   %edi
c0037fc4:	56                   	push   %esi
c0037fc5:	53                   	push   %ebx
c0037fc6:	83 ec 3c             	sub    $0x3c,%esp
c0037fc9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fcc:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0037fcf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037fd2:	8b 45 10             	mov    0x10(%ebp),%eax
c0037fd5:	85 ff                	test   %edi,%edi
c0037fd7:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0037fda:	0f 84 50 02 00 00    	je     c0038230 <_realloc_r+0x270>
c0037fe0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037fe3:	8d 77 f8             	lea    -0x8(%edi),%esi
c0037fe6:	89 04 24             	mov    %eax,(%esp)
c0037fe9:	e8 82 db ff ff       	call   c0035b70 <__malloc_lock>
c0037fee:	8b 47 fc             	mov    -0x4(%edi),%eax
c0037ff1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037ff4:	89 c3                	mov    %eax,%ebx
c0037ff6:	8d 51 0b             	lea    0xb(%ecx),%edx
c0037ff9:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037ffc:	83 fa 16             	cmp    $0x16,%edx
c0037fff:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038002:	0f 87 00 01 00 00    	ja     c0038108 <_realloc_r+0x148>
c0038008:	31 d2                	xor    %edx,%edx
c003800a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0038011:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0038018:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003801b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c003801e:	0f 82 1c 02 00 00    	jb     c0038240 <_realloc_r+0x280>
c0038024:	84 d2                	test   %dl,%dl
c0038026:	0f 85 14 02 00 00    	jne    c0038240 <_realloc_r+0x280>
c003802c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003802f:	0f 8d eb 00 00 00    	jge    c0038120 <_realloc_r+0x160>
c0038035:	8b 0d 48 d5 03 c0    	mov    0xc003d548,%ecx
c003803b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003803e:	39 d1                	cmp    %edx,%ecx
c0038040:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038043:	0f 84 6f 02 00 00    	je     c00382b8 <_realloc_r+0x2f8>
c0038049:	8b 4a 04             	mov    0x4(%edx),%ecx
c003804c:	89 c8                	mov    %ecx,%eax
c003804e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038051:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038056:	0f 84 f4 00 00 00    	je     c0038150 <_realloc_r+0x190>
c003805c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038063:	31 d2                	xor    %edx,%edx
c0038065:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038069:	0f 85 39 01 00 00    	jne    c00381a8 <_realloc_r+0x1e8>
c003806f:	89 f1                	mov    %esi,%ecx
c0038071:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038074:	8b 41 04             	mov    0x4(%ecx),%eax
c0038077:	83 e0 fc             	and    $0xfffffffc,%eax
c003807a:	85 d2                	test   %edx,%edx
c003807c:	0f 84 f6 02 00 00    	je     c0038378 <_realloc_r+0x3b8>
c0038082:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0038085:	0f 84 f5 02 00 00    	je     c0038380 <_realloc_r+0x3c0>
c003808b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003808e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0038091:	01 d8                	add    %ebx,%eax
c0038093:	01 c2                	add    %eax,%edx
c0038095:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038098:	89 55 d0             	mov    %edx,-0x30(%ebp)
c003809b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003809e:	0f 8c ac 01 00 00    	jl     c0038250 <_realloc_r+0x290>
c00380a4:	8b 42 0c             	mov    0xc(%edx),%eax
c00380a7:	83 eb 04             	sub    $0x4,%ebx
c00380aa:	8b 52 08             	mov    0x8(%edx),%edx
c00380ad:	83 fb 24             	cmp    $0x24,%ebx
c00380b0:	8d 71 08             	lea    0x8(%ecx),%esi
c00380b3:	89 42 0c             	mov    %eax,0xc(%edx)
c00380b6:	89 50 08             	mov    %edx,0x8(%eax)
c00380b9:	8b 41 0c             	mov    0xc(%ecx),%eax
c00380bc:	8b 51 08             	mov    0x8(%ecx),%edx
c00380bf:	89 42 0c             	mov    %eax,0xc(%edx)
c00380c2:	89 50 08             	mov    %edx,0x8(%eax)
c00380c5:	0f 87 85 03 00 00    	ja     c0038450 <_realloc_r+0x490>
c00380cb:	83 fb 13             	cmp    $0x13,%ebx
c00380ce:	89 f0                	mov    %esi,%eax
c00380d0:	76 1a                	jbe    c00380ec <_realloc_r+0x12c>
c00380d2:	8b 07                	mov    (%edi),%eax
c00380d4:	83 fb 1b             	cmp    $0x1b,%ebx
c00380d7:	89 41 08             	mov    %eax,0x8(%ecx)
c00380da:	8b 47 04             	mov    0x4(%edi),%eax
c00380dd:	89 41 0c             	mov    %eax,0xc(%ecx)
c00380e0:	0f 87 8f 03 00 00    	ja     c0038475 <_realloc_r+0x4b5>
c00380e6:	8d 41 10             	lea    0x10(%ecx),%eax
c00380e9:	83 c7 08             	add    $0x8,%edi
c00380ec:	8b 17                	mov    (%edi),%edx
c00380ee:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00380f1:	89 10                	mov    %edx,(%eax)
c00380f3:	8b 57 04             	mov    0x4(%edi),%edx
c00380f6:	89 50 04             	mov    %edx,0x4(%eax)
c00380f9:	8b 57 08             	mov    0x8(%edi),%edx
c00380fc:	89 f7                	mov    %esi,%edi
c00380fe:	89 ce                	mov    %ecx,%esi
c0038100:	89 50 08             	mov    %edx,0x8(%eax)
c0038103:	8b 41 04             	mov    0x4(%ecx),%eax
c0038106:	eb 1b                	jmp    c0038123 <_realloc_r+0x163>
c0038108:	83 e2 f8             	and    $0xfffffff8,%edx
c003810b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c003810e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038111:	c1 ea 1f             	shr    $0x1f,%edx
c0038114:	e9 ff fe ff ff       	jmp    c0038018 <_realloc_r+0x58>
c0038119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038120:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038123:	89 da                	mov    %ebx,%edx
c0038125:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038128:	83 fa 0f             	cmp    $0xf,%edx
c003812b:	77 4b                	ja     c0038178 <_realloc_r+0x1b8>
c003812d:	83 e0 01             	and    $0x1,%eax
c0038130:	09 d8                	or     %ebx,%eax
c0038132:	89 46 04             	mov    %eax,0x4(%esi)
c0038135:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003813a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003813d:	89 04 24             	mov    %eax,(%esp)
c0038140:	e8 3b da ff ff       	call   c0035b80 <__malloc_unlock>
c0038145:	89 f8                	mov    %edi,%eax
c0038147:	83 c4 3c             	add    $0x3c,%esp
c003814a:	5b                   	pop    %ebx
c003814b:	5e                   	pop    %esi
c003814c:	5f                   	pop    %edi
c003814d:	5d                   	pop    %ebp
c003814e:	c3                   	ret    
c003814f:	90                   	nop
c0038150:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038153:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038156:	01 d9                	add    %ebx,%ecx
c0038158:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003815b:	0f 8c 04 ff ff ff    	jl     c0038065 <_realloc_r+0xa5>
c0038161:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038164:	8b 52 08             	mov    0x8(%edx),%edx
c0038167:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003816a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003816d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038170:	89 cb                	mov    %ecx,%ebx
c0038172:	eb af                	jmp    c0038123 <_realloc_r+0x163>
c0038174:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038178:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003817b:	83 e0 01             	and    $0x1,%eax
c003817e:	09 d8                	or     %ebx,%eax
c0038180:	89 46 04             	mov    %eax,0x4(%esi)
c0038183:	89 d0                	mov    %edx,%eax
c0038185:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038188:	83 c8 01             	or     $0x1,%eax
c003818b:	89 41 04             	mov    %eax,0x4(%ecx)
c003818e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038191:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0038196:	83 c1 08             	add    $0x8,%ecx
c0038199:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c003819d:	89 04 24             	mov    %eax,(%esp)
c00381a0:	e8 2b fb ff ff       	call   c0037cd0 <_free_r>
c00381a5:	eb 93                	jmp    c003813a <_realloc_r+0x17a>
c00381a7:	90                   	nop
c00381a8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00381ab:	89 44 24 04          	mov    %eax,0x4(%esp)
c00381af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381b2:	89 04 24             	mov    %eax,(%esp)
c00381b5:	e8 d6 d1 ff ff       	call   c0035390 <_malloc_r>
c00381ba:	85 c0                	test   %eax,%eax
c00381bc:	89 c1                	mov    %eax,%ecx
c00381be:	0f 84 65 03 00 00    	je     c0038529 <_realloc_r+0x569>
c00381c4:	8b 47 fc             	mov    -0x4(%edi),%eax
c00381c7:	8d 51 f8             	lea    -0x8(%ecx),%edx
c00381ca:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00381cd:	89 c2                	mov    %eax,%edx
c00381cf:	83 e2 fe             	and    $0xfffffffe,%edx
c00381d2:	01 f2                	add    %esi,%edx
c00381d4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c00381d7:	0f 84 63 02 00 00    	je     c0038440 <_realloc_r+0x480>
c00381dd:	83 eb 04             	sub    $0x4,%ebx
c00381e0:	83 fb 24             	cmp    $0x24,%ebx
c00381e3:	0f 87 6f 01 00 00    	ja     c0038358 <_realloc_r+0x398>
c00381e9:	83 fb 13             	cmp    $0x13,%ebx
c00381ec:	0f 87 ee 00 00 00    	ja     c00382e0 <_realloc_r+0x320>
c00381f2:	89 c8                	mov    %ecx,%eax
c00381f4:	89 fa                	mov    %edi,%edx
c00381f6:	8b 1a                	mov    (%edx),%ebx
c00381f8:	89 18                	mov    %ebx,(%eax)
c00381fa:	8b 5a 04             	mov    0x4(%edx),%ebx
c00381fd:	89 58 04             	mov    %ebx,0x4(%eax)
c0038200:	8b 52 08             	mov    0x8(%edx),%edx
c0038203:	89 50 08             	mov    %edx,0x8(%eax)
c0038206:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0038209:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003820d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038210:	89 34 24             	mov    %esi,(%esp)
c0038213:	e8 b8 fa ff ff       	call   c0037cd0 <_free_r>
c0038218:	89 34 24             	mov    %esi,(%esp)
c003821b:	e8 60 d9 ff ff       	call   c0035b80 <__malloc_unlock>
c0038220:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038223:	83 c4 3c             	add    $0x3c,%esp
c0038226:	5b                   	pop    %ebx
c0038227:	5e                   	pop    %esi
c0038228:	5f                   	pop    %edi
c0038229:	89 c8                	mov    %ecx,%eax
c003822b:	5d                   	pop    %ebp
c003822c:	c3                   	ret    
c003822d:	8d 76 00             	lea    0x0(%esi),%esi
c0038230:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038233:	83 c4 3c             	add    $0x3c,%esp
c0038236:	5b                   	pop    %ebx
c0038237:	5e                   	pop    %esi
c0038238:	5f                   	pop    %edi
c0038239:	5d                   	pop    %ebp
c003823a:	e9 51 d1 ff ff       	jmp    c0035390 <_malloc_r>
c003823f:	90                   	nop
c0038240:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038243:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038249:	31 c0                	xor    %eax,%eax
c003824b:	e9 f7 fe ff ff       	jmp    c0038147 <_realloc_r+0x187>
c0038250:	89 c2                	mov    %eax,%edx
c0038252:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038255:	0f 8c 4d ff ff ff    	jl     c00381a8 <_realloc_r+0x1e8>
c003825b:	8b 71 08             	mov    0x8(%ecx),%esi
c003825e:	83 eb 04             	sub    $0x4,%ebx
c0038261:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038264:	83 fb 24             	cmp    $0x24,%ebx
c0038267:	89 46 0c             	mov    %eax,0xc(%esi)
c003826a:	89 70 08             	mov    %esi,0x8(%eax)
c003826d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038270:	0f 87 88 00 00 00    	ja     c00382fe <_realloc_r+0x33e>
c0038276:	83 fb 13             	cmp    $0x13,%ebx
c0038279:	89 f0                	mov    %esi,%eax
c003827b:	76 1a                	jbe    c0038297 <_realloc_r+0x2d7>
c003827d:	8b 07                	mov    (%edi),%eax
c003827f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038282:	89 41 08             	mov    %eax,0x8(%ecx)
c0038285:	8b 47 04             	mov    0x4(%edi),%eax
c0038288:	89 41 0c             	mov    %eax,0xc(%ecx)
c003828b:	0f 87 17 02 00 00    	ja     c00384a8 <_realloc_r+0x4e8>
c0038291:	8d 41 10             	lea    0x10(%ecx),%eax
c0038294:	83 c7 08             	add    $0x8,%edi
c0038297:	8b 1f                	mov    (%edi),%ebx
c0038299:	89 18                	mov    %ebx,(%eax)
c003829b:	8b 5f 04             	mov    0x4(%edi),%ebx
c003829e:	89 58 04             	mov    %ebx,0x4(%eax)
c00382a1:	8b 5f 08             	mov    0x8(%edi),%ebx
c00382a4:	89 f7                	mov    %esi,%edi
c00382a6:	89 ce                	mov    %ecx,%esi
c00382a8:	89 58 08             	mov    %ebx,0x8(%eax)
c00382ab:	89 d3                	mov    %edx,%ebx
c00382ad:	8b 41 04             	mov    0x4(%ecx),%eax
c00382b0:	e9 6e fe ff ff       	jmp    c0038123 <_realloc_r+0x163>
c00382b5:	8d 76 00             	lea    0x0(%esi),%esi
c00382b8:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00382bb:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00382be:	8b 48 04             	mov    0x4(%eax),%ecx
c00382c1:	83 c2 10             	add    $0x10,%edx
c00382c4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00382c7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c00382cb:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c00382ce:	01 d9                	add    %ebx,%ecx
c00382d0:	39 d1                	cmp    %edx,%ecx
c00382d2:	7d 54                	jge    c0038328 <_realloc_r+0x368>
c00382d4:	89 c2                	mov    %eax,%edx
c00382d6:	e9 8a fd ff ff       	jmp    c0038065 <_realloc_r+0xa5>
c00382db:	90                   	nop
c00382dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00382e0:	8b 07                	mov    (%edi),%eax
c00382e2:	83 fb 1b             	cmp    $0x1b,%ebx
c00382e5:	89 01                	mov    %eax,(%ecx)
c00382e7:	8b 47 04             	mov    0x4(%edi),%eax
c00382ea:	89 41 04             	mov    %eax,0x4(%ecx)
c00382ed:	0f 87 2d 01 00 00    	ja     c0038420 <_realloc_r+0x460>
c00382f3:	8d 41 08             	lea    0x8(%ecx),%eax
c00382f6:	8d 57 08             	lea    0x8(%edi),%edx
c00382f9:	e9 f8 fe ff ff       	jmp    c00381f6 <_realloc_r+0x236>
c00382fe:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038302:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038306:	89 f7                	mov    %esi,%edi
c0038308:	89 34 24             	mov    %esi,(%esp)
c003830b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c003830e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038311:	e8 1a fc ff ff       	call   c0037f30 <memmove>
c0038316:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038319:	8b 55 d8             	mov    -0x28(%ebp),%edx
c003831c:	8b 41 04             	mov    0x4(%ecx),%eax
c003831f:	89 ce                	mov    %ecx,%esi
c0038321:	89 d3                	mov    %edx,%ebx
c0038323:	e9 fb fd ff ff       	jmp    c0038123 <_realloc_r+0x163>
c0038328:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003832b:	29 d9                	sub    %ebx,%ecx
c003832d:	01 de                	add    %ebx,%esi
c003832f:	83 c9 01             	or     $0x1,%ecx
c0038332:	89 35 48 d5 03 c0    	mov    %esi,0xc003d548
c0038338:	89 4e 04             	mov    %ecx,0x4(%esi)
c003833b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003833e:	83 e0 01             	and    $0x1,%eax
c0038341:	09 d8                	or     %ebx,%eax
c0038343:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038346:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038349:	89 04 24             	mov    %eax,(%esp)
c003834c:	e8 2f d8 ff ff       	call   c0035b80 <__malloc_unlock>
c0038351:	89 f8                	mov    %edi,%eax
c0038353:	e9 ef fd ff ff       	jmp    c0038147 <_realloc_r+0x187>
c0038358:	89 0c 24             	mov    %ecx,(%esp)
c003835b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003835f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038363:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038366:	e8 c5 fb ff ff       	call   c0037f30 <memmove>
c003836b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003836e:	e9 93 fe ff ff       	jmp    c0038206 <_realloc_r+0x246>
c0038373:	90                   	nop
c0038374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038378:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003837b:	e9 d2 fe ff ff       	jmp    c0038252 <_realloc_r+0x292>
c0038380:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038383:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038386:	01 d0                	add    %edx,%eax
c0038388:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003838b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003838e:	83 c0 10             	add    $0x10,%eax
c0038391:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038394:	0f 8c b8 fe ff ff    	jl     c0038252 <_realloc_r+0x292>
c003839a:	8b 41 0c             	mov    0xc(%ecx),%eax
c003839d:	83 eb 04             	sub    $0x4,%ebx
c00383a0:	8b 51 08             	mov    0x8(%ecx),%edx
c00383a3:	83 fb 24             	cmp    $0x24,%ebx
c00383a6:	8d 71 08             	lea    0x8(%ecx),%esi
c00383a9:	89 42 0c             	mov    %eax,0xc(%edx)
c00383ac:	89 50 08             	mov    %edx,0x8(%eax)
c00383af:	0f 87 3d 01 00 00    	ja     c00384f2 <_realloc_r+0x532>
c00383b5:	83 fb 13             	cmp    $0x13,%ebx
c00383b8:	89 f0                	mov    %esi,%eax
c00383ba:	76 1a                	jbe    c00383d6 <_realloc_r+0x416>
c00383bc:	8b 07                	mov    (%edi),%eax
c00383be:	83 fb 1b             	cmp    $0x1b,%ebx
c00383c1:	89 41 08             	mov    %eax,0x8(%ecx)
c00383c4:	8b 47 04             	mov    0x4(%edi),%eax
c00383c7:	89 41 0c             	mov    %eax,0xc(%ecx)
c00383ca:	0f 87 3d 01 00 00    	ja     c003850d <_realloc_r+0x54d>
c00383d0:	8d 41 10             	lea    0x10(%ecx),%eax
c00383d3:	83 c7 08             	add    $0x8,%edi
c00383d6:	8b 17                	mov    (%edi),%edx
c00383d8:	89 10                	mov    %edx,(%eax)
c00383da:	8b 57 04             	mov    0x4(%edi),%edx
c00383dd:	89 50 04             	mov    %edx,0x4(%eax)
c00383e0:	8b 57 08             	mov    0x8(%edi),%edx
c00383e3:	89 50 08             	mov    %edx,0x8(%eax)
c00383e6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00383e9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00383ec:	89 d8                	mov    %ebx,%eax
c00383ee:	29 df                	sub    %ebx,%edi
c00383f0:	01 c8                	add    %ecx,%eax
c00383f2:	83 cf 01             	or     $0x1,%edi
c00383f5:	a3 48 d5 03 c0       	mov    %eax,0xc003d548
c00383fa:	89 78 04             	mov    %edi,0x4(%eax)
c00383fd:	8b 41 04             	mov    0x4(%ecx),%eax
c0038400:	83 e0 01             	and    $0x1,%eax
c0038403:	09 d8                	or     %ebx,%eax
c0038405:	89 41 04             	mov    %eax,0x4(%ecx)
c0038408:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003840b:	89 04 24             	mov    %eax,(%esp)
c003840e:	e8 6d d7 ff ff       	call   c0035b80 <__malloc_unlock>
c0038413:	89 f0                	mov    %esi,%eax
c0038415:	e9 2d fd ff ff       	jmp    c0038147 <_realloc_r+0x187>
c003841a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038420:	8b 47 08             	mov    0x8(%edi),%eax
c0038423:	83 fb 24             	cmp    $0x24,%ebx
c0038426:	89 41 08             	mov    %eax,0x8(%ecx)
c0038429:	8b 47 0c             	mov    0xc(%edi),%eax
c003842c:	89 41 0c             	mov    %eax,0xc(%ecx)
c003842f:	74 60                	je     c0038491 <_realloc_r+0x4d1>
c0038431:	8d 41 10             	lea    0x10(%ecx),%eax
c0038434:	8d 57 10             	lea    0x10(%edi),%edx
c0038437:	e9 ba fd ff ff       	jmp    c00381f6 <_realloc_r+0x236>
c003843c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038440:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038443:	83 e2 fc             	and    $0xfffffffc,%edx
c0038446:	01 d3                	add    %edx,%ebx
c0038448:	e9 d6 fc ff ff       	jmp    c0038123 <_realloc_r+0x163>
c003844d:	8d 76 00             	lea    0x0(%esi),%esi
c0038450:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038454:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038458:	89 f7                	mov    %esi,%edi
c003845a:	89 34 24             	mov    %esi,(%esp)
c003845d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038460:	e8 cb fa ff ff       	call   c0037f30 <memmove>
c0038465:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038468:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003846b:	8b 41 04             	mov    0x4(%ecx),%eax
c003846e:	89 ce                	mov    %ecx,%esi
c0038470:	e9 ae fc ff ff       	jmp    c0038123 <_realloc_r+0x163>
c0038475:	8b 47 08             	mov    0x8(%edi),%eax
c0038478:	83 fb 24             	cmp    $0x24,%ebx
c003847b:	89 41 10             	mov    %eax,0x10(%ecx)
c003847e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038481:	89 41 14             	mov    %eax,0x14(%ecx)
c0038484:	74 3e                	je     c00384c4 <_realloc_r+0x504>
c0038486:	8d 41 18             	lea    0x18(%ecx),%eax
c0038489:	83 c7 10             	add    $0x10,%edi
c003848c:	e9 5b fc ff ff       	jmp    c00380ec <_realloc_r+0x12c>
c0038491:	8b 47 10             	mov    0x10(%edi),%eax
c0038494:	8d 57 18             	lea    0x18(%edi),%edx
c0038497:	89 41 10             	mov    %eax,0x10(%ecx)
c003849a:	8b 5f 14             	mov    0x14(%edi),%ebx
c003849d:	8d 41 18             	lea    0x18(%ecx),%eax
c00384a0:	89 59 14             	mov    %ebx,0x14(%ecx)
c00384a3:	e9 4e fd ff ff       	jmp    c00381f6 <_realloc_r+0x236>
c00384a8:	8b 47 08             	mov    0x8(%edi),%eax
c00384ab:	83 fb 24             	cmp    $0x24,%ebx
c00384ae:	89 41 10             	mov    %eax,0x10(%ecx)
c00384b1:	8b 47 0c             	mov    0xc(%edi),%eax
c00384b4:	89 41 14             	mov    %eax,0x14(%ecx)
c00384b7:	74 22                	je     c00384db <_realloc_r+0x51b>
c00384b9:	8d 41 18             	lea    0x18(%ecx),%eax
c00384bc:	83 c7 10             	add    $0x10,%edi
c00384bf:	e9 d3 fd ff ff       	jmp    c0038297 <_realloc_r+0x2d7>
c00384c4:	8b 47 10             	mov    0x10(%edi),%eax
c00384c7:	83 c7 18             	add    $0x18,%edi
c00384ca:	89 41 18             	mov    %eax,0x18(%ecx)
c00384cd:	8b 57 fc             	mov    -0x4(%edi),%edx
c00384d0:	8d 41 20             	lea    0x20(%ecx),%eax
c00384d3:	89 51 1c             	mov    %edx,0x1c(%ecx)
c00384d6:	e9 11 fc ff ff       	jmp    c00380ec <_realloc_r+0x12c>
c00384db:	8b 47 10             	mov    0x10(%edi),%eax
c00384de:	83 c7 18             	add    $0x18,%edi
c00384e1:	89 41 18             	mov    %eax,0x18(%ecx)
c00384e4:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00384e7:	8d 41 20             	lea    0x20(%ecx),%eax
c00384ea:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c00384ed:	e9 a5 fd ff ff       	jmp    c0038297 <_realloc_r+0x2d7>
c00384f2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00384f6:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00384fa:	89 34 24             	mov    %esi,(%esp)
c00384fd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038500:	e8 2b fa ff ff       	call   c0037f30 <memmove>
c0038505:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038508:	e9 d9 fe ff ff       	jmp    c00383e6 <_realloc_r+0x426>
c003850d:	8b 47 08             	mov    0x8(%edi),%eax
c0038510:	83 fb 24             	cmp    $0x24,%ebx
c0038513:	89 41 10             	mov    %eax,0x10(%ecx)
c0038516:	8b 47 0c             	mov    0xc(%edi),%eax
c0038519:	89 41 14             	mov    %eax,0x14(%ecx)
c003851c:	74 1d                	je     c003853b <_realloc_r+0x57b>
c003851e:	8d 41 18             	lea    0x18(%ecx),%eax
c0038521:	83 c7 10             	add    $0x10,%edi
c0038524:	e9 ad fe ff ff       	jmp    c00383d6 <_realloc_r+0x416>
c0038529:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003852c:	89 04 24             	mov    %eax,(%esp)
c003852f:	e8 4c d6 ff ff       	call   c0035b80 <__malloc_unlock>
c0038534:	31 c0                	xor    %eax,%eax
c0038536:	e9 0c fc ff ff       	jmp    c0038147 <_realloc_r+0x187>
c003853b:	8b 47 10             	mov    0x10(%edi),%eax
c003853e:	83 c7 18             	add    $0x18,%edi
c0038541:	89 41 18             	mov    %eax,0x18(%ecx)
c0038544:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038547:	8d 41 20             	lea    0x20(%ecx),%eax
c003854a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003854d:	e9 84 fe ff ff       	jmp    c00383d6 <_realloc_r+0x416>
c0038552:	66 90                	xchg   %ax,%ax
c0038554:	66 90                	xchg   %ax,%ax
c0038556:	66 90                	xchg   %ax,%ax
c0038558:	66 90                	xchg   %ax,%ax
c003855a:	66 90                	xchg   %ax,%ax
c003855c:	66 90                	xchg   %ax,%ax
c003855e:	66 90                	xchg   %ax,%ax

c0038560 <cleanup_glue>:
c0038560:	55                   	push   %ebp
c0038561:	89 e5                	mov    %esp,%ebp
c0038563:	56                   	push   %esi
c0038564:	53                   	push   %ebx
c0038565:	83 ec 10             	sub    $0x10,%esp
c0038568:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003856b:	8b 75 08             	mov    0x8(%ebp),%esi
c003856e:	8b 03                	mov    (%ebx),%eax
c0038570:	85 c0                	test   %eax,%eax
c0038572:	74 0c                	je     c0038580 <cleanup_glue+0x20>
c0038574:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038578:	89 34 24             	mov    %esi,(%esp)
c003857b:	e8 e0 ff ff ff       	call   c0038560 <cleanup_glue>
c0038580:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038583:	89 75 08             	mov    %esi,0x8(%ebp)
c0038586:	83 c4 10             	add    $0x10,%esp
c0038589:	5b                   	pop    %ebx
c003858a:	5e                   	pop    %esi
c003858b:	5d                   	pop    %ebp
c003858c:	e9 3f f7 ff ff       	jmp    c0037cd0 <_free_r>
c0038591:	eb 0d                	jmp    c00385a0 <_reclaim_reent>
c0038593:	90                   	nop
c0038594:	90                   	nop
c0038595:	90                   	nop
c0038596:	90                   	nop
c0038597:	90                   	nop
c0038598:	90                   	nop
c0038599:	90                   	nop
c003859a:	90                   	nop
c003859b:	90                   	nop
c003859c:	90                   	nop
c003859d:	90                   	nop
c003859e:	90                   	nop
c003859f:	90                   	nop

c00385a0 <_reclaim_reent>:
c00385a0:	55                   	push   %ebp
c00385a1:	89 e5                	mov    %esp,%ebp
c00385a3:	57                   	push   %edi
c00385a4:	56                   	push   %esi
c00385a5:	53                   	push   %ebx
c00385a6:	83 ec 1c             	sub    $0x1c,%esp
c00385a9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00385ac:	3b 1d 40 d0 03 c0    	cmp    0xc003d040,%ebx
c00385b2:	0f 84 a6 00 00 00    	je     c003865e <_reclaim_reent+0xbe>
c00385b8:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385bb:	85 d2                	test   %edx,%edx
c00385bd:	74 46                	je     c0038605 <_reclaim_reent+0x65>
c00385bf:	31 c0                	xor    %eax,%eax
c00385c1:	31 f6                	xor    %esi,%esi
c00385c3:	90                   	nop
c00385c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00385c8:	8b 04 82             	mov    (%edx,%eax,4),%eax
c00385cb:	85 c0                	test   %eax,%eax
c00385cd:	75 0b                	jne    c00385da <_reclaim_reent+0x3a>
c00385cf:	eb 1e                	jmp    c00385ef <_reclaim_reent+0x4f>
c00385d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00385d8:	89 f8                	mov    %edi,%eax
c00385da:	8b 38                	mov    (%eax),%edi
c00385dc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385e0:	89 1c 24             	mov    %ebx,(%esp)
c00385e3:	e8 e8 f6 ff ff       	call   c0037cd0 <_free_r>
c00385e8:	85 ff                	test   %edi,%edi
c00385ea:	75 ec                	jne    c00385d8 <_reclaim_reent+0x38>
c00385ec:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385ef:	83 c6 01             	add    $0x1,%esi
c00385f2:	83 fe 20             	cmp    $0x20,%esi
c00385f5:	89 f0                	mov    %esi,%eax
c00385f7:	75 cf                	jne    c00385c8 <_reclaim_reent+0x28>
c00385f9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00385fd:	89 1c 24             	mov    %ebx,(%esp)
c0038600:	e8 cb f6 ff ff       	call   c0037cd0 <_free_r>
c0038605:	8b 43 40             	mov    0x40(%ebx),%eax
c0038608:	85 c0                	test   %eax,%eax
c003860a:	74 0c                	je     c0038618 <_reclaim_reent+0x78>
c003860c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038610:	89 1c 24             	mov    %ebx,(%esp)
c0038613:	e8 b8 f6 ff ff       	call   c0037cd0 <_free_r>
c0038618:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c003861e:	85 c0                	test   %eax,%eax
c0038620:	74 22                	je     c0038644 <_reclaim_reent+0xa4>
c0038622:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038628:	39 f0                	cmp    %esi,%eax
c003862a:	75 06                	jne    c0038632 <_reclaim_reent+0x92>
c003862c:	eb 16                	jmp    c0038644 <_reclaim_reent+0xa4>
c003862e:	66 90                	xchg   %ax,%ax
c0038630:	89 f8                	mov    %edi,%eax
c0038632:	8b 38                	mov    (%eax),%edi
c0038634:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038638:	89 1c 24             	mov    %ebx,(%esp)
c003863b:	e8 90 f6 ff ff       	call   c0037cd0 <_free_r>
c0038640:	39 fe                	cmp    %edi,%esi
c0038642:	75 ec                	jne    c0038630 <_reclaim_reent+0x90>
c0038644:	8b 43 54             	mov    0x54(%ebx),%eax
c0038647:	85 c0                	test   %eax,%eax
c0038649:	74 0c                	je     c0038657 <_reclaim_reent+0xb7>
c003864b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003864f:	89 1c 24             	mov    %ebx,(%esp)
c0038652:	e8 79 f6 ff ff       	call   c0037cd0 <_free_r>
c0038657:	8b 43 38             	mov    0x38(%ebx),%eax
c003865a:	85 c0                	test   %eax,%eax
c003865c:	75 08                	jne    c0038666 <_reclaim_reent+0xc6>
c003865e:	83 c4 1c             	add    $0x1c,%esp
c0038661:	5b                   	pop    %ebx
c0038662:	5e                   	pop    %esi
c0038663:	5f                   	pop    %edi
c0038664:	5d                   	pop    %ebp
c0038665:	c3                   	ret    
c0038666:	89 1c 24             	mov    %ebx,(%esp)
c0038669:	ff 53 3c             	call   *0x3c(%ebx)
c003866c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038672:	85 c0                	test   %eax,%eax
c0038674:	74 e8                	je     c003865e <_reclaim_reent+0xbe>
c0038676:	89 1c 24             	mov    %ebx,(%esp)
c0038679:	89 44 24 04          	mov    %eax,0x4(%esp)
c003867d:	e8 de fe ff ff       	call   c0038560 <cleanup_glue>
c0038682:	83 c4 1c             	add    $0x1c,%esp
c0038685:	5b                   	pop    %ebx
c0038686:	5e                   	pop    %esi
c0038687:	5f                   	pop    %edi
c0038688:	5d                   	pop    %ebp
c0038689:	c3                   	ret    
