
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
c00300d5:	e8 73 0b 00 00       	call   c0030c4d <irq_handle>
c00300da:	83 c4 04             	add    $0x4,%esp
c00300dd:	61                   	popa   
c00300de:	83 c4 08             	add    $0x8,%esp
c00300e1:	cf                   	iret   

c00300e2 <sti>:
c00300e2:	55                   	push   %ebp
c00300e3:	89 e5                	mov    %esp,%ebp
c00300e5:	e8 9d 00 00 00       	call   c0030187 <__x86.get_pc_thunk.ax>
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
c00300fa:	e8 8c 00 00 00       	call   c003018b <__x86.get_pc_thunk.bx>
c00300ff:	81 c3 01 cf 00 00    	add    $0xcf01,%ebx
c0030105:	e8 25 18 00 00       	call   c003192f <init_page>
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
c003012c:	e8 5a 00 00 00       	call   c003018b <__x86.get_pc_thunk.bx>
c0030131:	81 c3 cf ce 00 00    	add    $0xcecf,%ebx
c0030137:	e8 d4 19 00 00       	call   c0031b10 <init_segment>
c003013c:	e8 65 0e 00 00       	call   c0030fa6 <init_idt>
c0030141:	e8 9c ff ff ff       	call   c00300e2 <sti>
c0030146:	e8 a5 02 00 00       	call   c00303f0 <init_ide>
c003014b:	e8 a3 15 00 00       	call   c00316f3 <init_mm>
c0030150:	8d 83 40 c0 ff ff    	lea    -0x3fc0(%ebx),%eax
c0030156:	50                   	push   %eax
c0030157:	6a 52                	push   $0x52
c0030159:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
c003015f:	50                   	push   %eax
c0030160:	8d 83 0c c0 ff ff    	lea    -0x3ff4(%ebx),%eax
c0030166:	50                   	push   %eax
c0030167:	e8 c0 09 00 00       	call   c0030b2c <printk>
c003016c:	83 c4 10             	add    $0x10,%esp
c003016f:	e8 31 07 00 00       	call   c00308a5 <loader>
c0030174:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030177:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c003017c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003017f:	ff d0                	call   *%eax
c0030181:	90                   	nop
c0030182:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030185:	c9                   	leave  
c0030186:	c3                   	ret    

c0030187 <__x86.get_pc_thunk.ax>:
c0030187:	8b 04 24             	mov    (%esp),%eax
c003018a:	c3                   	ret    

c003018b <__x86.get_pc_thunk.bx>:
c003018b:	8b 1c 24             	mov    (%esp),%ebx
c003018e:	c3                   	ret    

c003018f <in_byte>:
c003018f:	55                   	push   %ebp
c0030190:	89 e5                	mov    %esp,%ebp
c0030192:	83 ec 14             	sub    $0x14,%esp
c0030195:	e8 ed ff ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003019a:	05 66 ce 00 00       	add    $0xce66,%eax
c003019f:	8b 45 08             	mov    0x8(%ebp),%eax
c00301a2:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00301a6:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00301a9:	89 c2                	mov    %eax,%edx
c00301ab:	ec                   	in     (%dx),%al
c00301ac:	88 45 ff             	mov    %al,-0x1(%ebp)
c00301af:	8a 45 ff             	mov    -0x1(%ebp),%al
c00301b2:	c9                   	leave  
c00301b3:	c3                   	ret    

c00301b4 <out_byte>:
c00301b4:	55                   	push   %ebp
c00301b5:	89 e5                	mov    %esp,%ebp
c00301b7:	83 ec 08             	sub    $0x8,%esp
c00301ba:	e8 c8 ff ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00301bf:	05 41 ce 00 00       	add    $0xce41,%eax
c00301c4:	8b 45 08             	mov    0x8(%ebp),%eax
c00301c7:	8b 55 0c             	mov    0xc(%ebp),%edx
c00301ca:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00301ce:	88 d0                	mov    %dl,%al
c00301d0:	88 45 f8             	mov    %al,-0x8(%ebp)
c00301d3:	8a 45 f8             	mov    -0x8(%ebp),%al
c00301d6:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00301d9:	ee                   	out    %al,(%dx)
c00301da:	90                   	nop
c00301db:	c9                   	leave  
c00301dc:	c3                   	ret    

c00301dd <out_long>:
c00301dd:	55                   	push   %ebp
c00301de:	89 e5                	mov    %esp,%ebp
c00301e0:	83 ec 04             	sub    $0x4,%esp
c00301e3:	e8 9f ff ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00301e8:	05 18 ce 00 00       	add    $0xce18,%eax
c00301ed:	8b 45 08             	mov    0x8(%ebp),%eax
c00301f0:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00301f4:	8b 45 0c             	mov    0xc(%ebp),%eax
c00301f7:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00301fa:	ef                   	out    %eax,(%dx)
c00301fb:	90                   	nop
c00301fc:	c9                   	leave  
c00301fd:	c3                   	ret    

c00301fe <dma_prepare>:
c00301fe:	55                   	push   %ebp
c00301ff:	89 e5                	mov    %esp,%ebp
c0030201:	83 ec 10             	sub    $0x10,%esp
c0030204:	e8 7e ff ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030209:	05 f7 cd 00 00       	add    $0xcdf7,%eax
c003020e:	8b 55 08             	mov    0x8(%ebp),%edx
c0030211:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0030217:	89 55 fc             	mov    %edx,-0x4(%ebp)
c003021a:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c0030220:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0030223:	89 0a                	mov    %ecx,(%edx)
c0030225:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c003022b:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c0030231:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c0030237:	8a 4a 07             	mov    0x7(%edx),%cl
c003023a:	83 c9 80             	or     $0xffffff80,%ecx
c003023d:	88 4a 07             	mov    %cl,0x7(%edx)
c0030240:	c7 c1 54 00 07 c0    	mov    $0xc0070054,%ecx
c0030246:	66 8b 51 06          	mov    0x6(%ecx),%dx
c003024a:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c0030250:	66 89 51 06          	mov    %dx,0x6(%ecx)
c0030254:	c7 c0 54 00 07 c0    	mov    $0xc0070054,%eax
c003025a:	05 00 00 00 40       	add    $0x40000000,%eax
c003025f:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0030262:	ff 75 f8             	pushl  -0x8(%ebp)
c0030265:	68 44 c0 00 00       	push   $0xc044
c003026a:	e8 6e ff ff ff       	call   c00301dd <out_long>
c003026f:	83 c4 08             	add    $0x8,%esp
c0030272:	90                   	nop
c0030273:	c9                   	leave  
c0030274:	c3                   	ret    

c0030275 <dma_issue_read>:
c0030275:	55                   	push   %ebp
c0030276:	89 e5                	mov    %esp,%ebp
c0030278:	e8 0a ff ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003027d:	05 83 cd 00 00       	add    $0xcd83,%eax
c0030282:	68 40 c0 00 00       	push   $0xc040
c0030287:	e8 03 ff ff ff       	call   c003018f <in_byte>
c003028c:	83 c4 04             	add    $0x4,%esp
c003028f:	83 c8 09             	or     $0x9,%eax
c0030292:	0f b6 c0             	movzbl %al,%eax
c0030295:	50                   	push   %eax
c0030296:	68 40 c0 00 00       	push   $0xc040
c003029b:	e8 14 ff ff ff       	call   c00301b4 <out_byte>
c00302a0:	83 c4 08             	add    $0x8,%esp
c00302a3:	90                   	nop
c00302a4:	c9                   	leave  
c00302a5:	c3                   	ret    

c00302a6 <wait_intr>:
c00302a6:	55                   	push   %ebp
c00302a7:	89 e5                	mov    %esp,%ebp
c00302a9:	e8 d9 fe ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00302ae:	05 52 cd 00 00       	add    $0xcd52,%eax
c00302b3:	f4                   	hlt    
c00302b4:	90                   	nop
c00302b5:	5d                   	pop    %ebp
c00302b6:	c3                   	ret    

c00302b7 <ide_read>:
c00302b7:	55                   	push   %ebp
c00302b8:	89 e5                	mov    %esp,%ebp
c00302ba:	56                   	push   %esi
c00302bb:	53                   	push   %ebx
c00302bc:	83 ec 10             	sub    $0x10,%esp
c00302bf:	e8 c7 fe ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00302c4:	81 c3 3c cd 00 00    	add    $0xcd3c,%ebx
c00302ca:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00302d1:	eb 22                	jmp    c00302f5 <ide_read+0x3e>
c00302d3:	8b 55 0c             	mov    0xc(%ebp),%edx
c00302d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302d9:	01 d0                	add    %edx,%eax
c00302db:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00302de:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00302e1:	8d 34 11             	lea    (%ecx,%edx,1),%esi
c00302e4:	83 ec 0c             	sub    $0xc,%esp
c00302e7:	50                   	push   %eax
c00302e8:	e8 c6 02 00 00       	call   c00305b3 <read_byte>
c00302ed:	83 c4 10             	add    $0x10,%esp
c00302f0:	88 06                	mov    %al,(%esi)
c00302f2:	ff 45 f4             	incl   -0xc(%ebp)
c00302f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302f8:	3b 45 10             	cmp    0x10(%ebp),%eax
c00302fb:	72 d6                	jb     c00302d3 <ide_read+0x1c>
c00302fd:	90                   	nop
c00302fe:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0030301:	5b                   	pop    %ebx
c0030302:	5e                   	pop    %esi
c0030303:	5d                   	pop    %ebp
c0030304:	c3                   	ret    

c0030305 <ide_write>:
c0030305:	55                   	push   %ebp
c0030306:	89 e5                	mov    %esp,%ebp
c0030308:	53                   	push   %ebx
c0030309:	83 ec 14             	sub    $0x14,%esp
c003030c:	e8 7a fe ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030311:	81 c3 ef cc 00 00    	add    $0xccef,%ebx
c0030317:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003031e:	eb 25                	jmp    c0030345 <ide_write+0x40>
c0030320:	8b 55 08             	mov    0x8(%ebp),%edx
c0030323:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030326:	01 d0                	add    %edx,%eax
c0030328:	8a 00                	mov    (%eax),%al
c003032a:	0f b6 c0             	movzbl %al,%eax
c003032d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0030330:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030333:	01 ca                	add    %ecx,%edx
c0030335:	83 ec 08             	sub    $0x8,%esp
c0030338:	50                   	push   %eax
c0030339:	52                   	push   %edx
c003033a:	e8 b1 02 00 00       	call   c00305f0 <write_byte>
c003033f:	83 c4 10             	add    $0x10,%esp
c0030342:	ff 45 f4             	incl   -0xc(%ebp)
c0030345:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030348:	3b 45 10             	cmp    0x10(%ebp),%eax
c003034b:	72 d3                	jb     c0030320 <ide_write+0x1b>
c003034d:	90                   	nop
c003034e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030351:	c9                   	leave  
c0030352:	c3                   	ret    

c0030353 <ide_writeback>:
c0030353:	55                   	push   %ebp
c0030354:	89 e5                	mov    %esp,%ebp
c0030356:	53                   	push   %ebx
c0030357:	83 ec 04             	sub    $0x4,%esp
c003035a:	e8 2c fe ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c003035f:	81 c3 a1 cc 00 00    	add    $0xcca1,%ebx
c0030365:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
c003036b:	40                   	inc    %eax
c003036c:	89 83 04 10 00 00    	mov    %eax,0x1004(%ebx)
c0030372:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
c0030378:	83 f8 64             	cmp    $0x64,%eax
c003037b:	75 0f                	jne    c003038c <ide_writeback+0x39>
c003037d:	e8 f6 00 00 00       	call   c0030478 <cache_writeback>
c0030382:	c7 83 04 10 00 00 00 	movl   $0x0,0x1004(%ebx)
c0030389:	00 00 00 
c003038c:	90                   	nop
c003038d:	83 c4 04             	add    $0x4,%esp
c0030390:	5b                   	pop    %ebx
c0030391:	5d                   	pop    %ebp
c0030392:	c3                   	ret    

c0030393 <ide_intr>:
c0030393:	55                   	push   %ebp
c0030394:	89 e5                	mov    %esp,%ebp
c0030396:	e8 ec fd ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003039b:	05 65 cc 00 00       	add    $0xcc65,%eax
c00303a0:	c7 80 00 10 00 00 01 	movl   $0x1,0x1000(%eax)
c00303a7:	00 00 00 
c00303aa:	90                   	nop
c00303ab:	5d                   	pop    %ebp
c00303ac:	c3                   	ret    

c00303ad <clear_ide_intr>:
c00303ad:	55                   	push   %ebp
c00303ae:	89 e5                	mov    %esp,%ebp
c00303b0:	e8 d2 fd ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00303b5:	05 4b cc 00 00       	add    $0xcc4b,%eax
c00303ba:	c7 80 00 10 00 00 00 	movl   $0x0,0x1000(%eax)
c00303c1:	00 00 00 
c00303c4:	90                   	nop
c00303c5:	5d                   	pop    %ebp
c00303c6:	c3                   	ret    

c00303c7 <wait_ide_intr>:
c00303c7:	55                   	push   %ebp
c00303c8:	89 e5                	mov    %esp,%ebp
c00303ca:	53                   	push   %ebx
c00303cb:	e8 bb fd ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00303d0:	81 c3 30 cc 00 00    	add    $0xcc30,%ebx
c00303d6:	eb 05                	jmp    c00303dd <wait_ide_intr+0x16>
c00303d8:	e8 c9 fe ff ff       	call   c00302a6 <wait_intr>
c00303dd:	8b 83 00 10 00 00    	mov    0x1000(%ebx),%eax
c00303e3:	85 c0                	test   %eax,%eax
c00303e5:	74 f1                	je     c00303d8 <wait_ide_intr+0x11>
c00303e7:	e8 c1 ff ff ff       	call   c00303ad <clear_ide_intr>
c00303ec:	90                   	nop
c00303ed:	5b                   	pop    %ebx
c00303ee:	5d                   	pop    %ebp
c00303ef:	c3                   	ret    

c00303f0 <init_ide>:
c00303f0:	55                   	push   %ebp
c00303f1:	89 e5                	mov    %esp,%ebp
c00303f3:	53                   	push   %ebx
c00303f4:	83 ec 04             	sub    $0x4,%esp
c00303f7:	e8 8f fd ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00303fc:	81 c3 04 cc 00 00    	add    $0xcc04,%ebx
c0030402:	e8 2e 00 00 00       	call   c0030435 <cache_init>
c0030407:	83 ec 08             	sub    $0x8,%esp
c003040a:	8d 83 53 33 ff ff    	lea    -0xccad(%ebx),%eax
c0030410:	50                   	push   %eax
c0030411:	6a 00                	push   $0x0
c0030413:	e8 68 07 00 00       	call   c0030b80 <add_irq_handle>
c0030418:	83 c4 10             	add    $0x10,%esp
c003041b:	83 ec 08             	sub    $0x8,%esp
c003041e:	8d 83 93 33 ff ff    	lea    -0xcc6d(%ebx),%eax
c0030424:	50                   	push   %eax
c0030425:	6a 0e                	push   $0xe
c0030427:	e8 54 07 00 00       	call   c0030b80 <add_irq_handle>
c003042c:	83 c4 10             	add    $0x10,%esp
c003042f:	90                   	nop
c0030430:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030433:	c9                   	leave  
c0030434:	c3                   	ret    

c0030435 <cache_init>:
c0030435:	55                   	push   %ebp
c0030436:	89 e5                	mov    %esp,%ebp
c0030438:	53                   	push   %ebx
c0030439:	83 ec 10             	sub    $0x10,%esp
c003043c:	e8 fd 01 00 00       	call   c003063e <__x86.get_pc_thunk.dx>
c0030441:	81 c2 bf cb 00 00    	add    $0xcbbf,%edx
c0030447:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c003044e:	eb 1b                	jmp    c003046b <cache_init+0x36>
c0030450:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0030453:	8d 9a 24 10 00 00    	lea    0x1024(%edx),%ebx
c0030459:	89 c8                	mov    %ecx,%eax
c003045b:	c1 e0 06             	shl    $0x6,%eax
c003045e:	01 c8                	add    %ecx,%eax
c0030460:	c1 e0 03             	shl    $0x3,%eax
c0030463:	01 d8                	add    %ebx,%eax
c0030465:	c6 00 00             	movb   $0x0,(%eax)
c0030468:	ff 45 f8             	incl   -0x8(%ebp)
c003046b:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c003046f:	7e df                	jle    c0030450 <cache_init+0x1b>
c0030471:	90                   	nop
c0030472:	83 c4 10             	add    $0x10,%esp
c0030475:	5b                   	pop    %ebx
c0030476:	5d                   	pop    %ebp
c0030477:	c3                   	ret    

c0030478 <cache_writeback>:
c0030478:	55                   	push   %ebp
c0030479:	89 e5                	mov    %esp,%ebp
c003047b:	53                   	push   %ebx
c003047c:	83 ec 14             	sub    $0x14,%esp
c003047f:	e8 07 fd ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030484:	81 c3 7c cb 00 00    	add    $0xcb7c,%ebx
c003048a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030491:	eb 72                	jmp    c0030505 <cache_writeback+0x8d>
c0030493:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030496:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
c003049c:	89 d0                	mov    %edx,%eax
c003049e:	c1 e0 06             	shl    $0x6,%eax
c00304a1:	01 d0                	add    %edx,%eax
c00304a3:	c1 e0 03             	shl    $0x3,%eax
c00304a6:	01 c8                	add    %ecx,%eax
c00304a8:	8a 00                	mov    (%eax),%al
c00304aa:	3c 01                	cmp    $0x1,%al
c00304ac:	75 54                	jne    c0030502 <cache_writeback+0x8a>
c00304ae:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00304b1:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
c00304b7:	89 d0                	mov    %edx,%eax
c00304b9:	c1 e0 06             	shl    $0x6,%eax
c00304bc:	01 d0                	add    %edx,%eax
c00304be:	c1 e0 03             	shl    $0x3,%eax
c00304c1:	01 c8                	add    %ecx,%eax
c00304c3:	8b 10                	mov    (%eax),%edx
c00304c5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c00304c8:	89 c8                	mov    %ecx,%eax
c00304ca:	c1 e0 06             	shl    $0x6,%eax
c00304cd:	01 c8                	add    %ecx,%eax
c00304cf:	c1 e0 03             	shl    $0x3,%eax
c00304d2:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
c00304d8:	01 c8                	add    %ecx,%eax
c00304da:	83 c0 06             	add    $0x6,%eax
c00304dd:	83 ec 08             	sub    $0x8,%esp
c00304e0:	52                   	push   %edx
c00304e1:	50                   	push   %eax
c00304e2:	e8 52 03 00 00       	call   c0030839 <disk_do_write>
c00304e7:	83 c4 10             	add    $0x10,%esp
c00304ea:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00304ed:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
c00304f3:	89 d0                	mov    %edx,%eax
c00304f5:	c1 e0 06             	shl    $0x6,%eax
c00304f8:	01 d0                	add    %edx,%eax
c00304fa:	c1 e0 03             	shl    $0x3,%eax
c00304fd:	01 c8                	add    %ecx,%eax
c00304ff:	c6 00 00             	movb   $0x0,(%eax)
c0030502:	ff 45 f4             	incl   -0xc(%ebp)
c0030505:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c0030509:	7e 88                	jle    c0030493 <cache_writeback+0x1b>
c003050b:	90                   	nop
c003050c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003050f:	c9                   	leave  
c0030510:	c3                   	ret    

c0030511 <cache_fetch>:
c0030511:	55                   	push   %ebp
c0030512:	89 e5                	mov    %esp,%ebp
c0030514:	53                   	push   %ebx
c0030515:	83 ec 14             	sub    $0x14,%esp
c0030518:	e8 6e fc ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c003051d:	81 c3 e3 ca 00 00    	add    $0xcae3,%ebx
c0030523:	8b 45 08             	mov    0x8(%ebp),%eax
c0030526:	83 e0 7f             	and    $0x7f,%eax
c0030529:	89 c2                	mov    %eax,%edx
c003052b:	89 d0                	mov    %edx,%eax
c003052d:	c1 e0 06             	shl    $0x6,%eax
c0030530:	01 d0                	add    %edx,%eax
c0030532:	c1 e0 03             	shl    $0x3,%eax
c0030535:	8d 93 20 10 00 00    	lea    0x1020(%ebx),%edx
c003053b:	01 d0                	add    %edx,%eax
c003053d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030540:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030543:	8a 40 04             	mov    0x4(%eax),%al
c0030546:	3c 01                	cmp    $0x1,%al
c0030548:	75 0a                	jne    c0030554 <cache_fetch+0x43>
c003054a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003054d:	8b 00                	mov    (%eax),%eax
c003054f:	39 45 08             	cmp    %eax,0x8(%ebp)
c0030552:	74 57                	je     c00305ab <cache_fetch+0x9a>
c0030554:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030557:	8a 40 04             	mov    0x4(%eax),%al
c003055a:	3c 01                	cmp    $0x1,%al
c003055c:	75 22                	jne    c0030580 <cache_fetch+0x6f>
c003055e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030561:	8a 40 05             	mov    0x5(%eax),%al
c0030564:	3c 01                	cmp    $0x1,%al
c0030566:	75 18                	jne    c0030580 <cache_fetch+0x6f>
c0030568:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003056b:	8b 00                	mov    (%eax),%eax
c003056d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030570:	83 c2 06             	add    $0x6,%edx
c0030573:	83 ec 08             	sub    $0x8,%esp
c0030576:	50                   	push   %eax
c0030577:	52                   	push   %edx
c0030578:	e8 bc 02 00 00       	call   c0030839 <disk_do_write>
c003057d:	83 c4 10             	add    $0x10,%esp
c0030580:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030583:	83 c0 06             	add    $0x6,%eax
c0030586:	83 ec 08             	sub    $0x8,%esp
c0030589:	ff 75 08             	pushl  0x8(%ebp)
c003058c:	50                   	push   %eax
c003058d:	e8 3c 02 00 00       	call   c00307ce <disk_do_read>
c0030592:	83 c4 10             	add    $0x10,%esp
c0030595:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030598:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c003059c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003059f:	8b 55 08             	mov    0x8(%ebp),%edx
c00305a2:	89 10                	mov    %edx,(%eax)
c00305a4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00305a7:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c00305ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00305ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00305b1:	c9                   	leave  
c00305b2:	c3                   	ret    

c00305b3 <read_byte>:
c00305b3:	55                   	push   %ebp
c00305b4:	89 e5                	mov    %esp,%ebp
c00305b6:	83 ec 18             	sub    $0x18,%esp
c00305b9:	e8 c9 fb ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00305be:	05 42 ca 00 00       	add    $0xca42,%eax
c00305c3:	8b 45 08             	mov    0x8(%ebp),%eax
c00305c6:	c1 e8 09             	shr    $0x9,%eax
c00305c9:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00305cc:	83 ec 0c             	sub    $0xc,%esp
c00305cf:	ff 75 f4             	pushl  -0xc(%ebp)
c00305d2:	e8 3a ff ff ff       	call   c0030511 <cache_fetch>
c00305d7:	83 c4 10             	add    $0x10,%esp
c00305da:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00305dd:	8b 45 08             	mov    0x8(%ebp),%eax
c00305e0:	25 ff 01 00 00       	and    $0x1ff,%eax
c00305e5:	89 c2                	mov    %eax,%edx
c00305e7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00305ea:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c00305ee:	c9                   	leave  
c00305ef:	c3                   	ret    

c00305f0 <write_byte>:
c00305f0:	55                   	push   %ebp
c00305f1:	89 e5                	mov    %esp,%ebp
c00305f3:	83 ec 28             	sub    $0x28,%esp
c00305f6:	e8 8c fb ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00305fb:	05 05 ca 00 00       	add    $0xca05,%eax
c0030600:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030603:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0030606:	8b 45 08             	mov    0x8(%ebp),%eax
c0030609:	c1 e8 09             	shr    $0x9,%eax
c003060c:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003060f:	83 ec 0c             	sub    $0xc,%esp
c0030612:	ff 75 f4             	pushl  -0xc(%ebp)
c0030615:	e8 f7 fe ff ff       	call   c0030511 <cache_fetch>
c003061a:	83 c4 10             	add    $0x10,%esp
c003061d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030620:	8b 45 08             	mov    0x8(%ebp),%eax
c0030623:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030628:	89 c1                	mov    %eax,%ecx
c003062a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003062d:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c0030630:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c0030634:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030637:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c003063b:	90                   	nop
c003063c:	c9                   	leave  
c003063d:	c3                   	ret    

c003063e <__x86.get_pc_thunk.dx>:
c003063e:	8b 14 24             	mov    (%esp),%edx
c0030641:	c3                   	ret    

c0030642 <in_byte>:
c0030642:	55                   	push   %ebp
c0030643:	89 e5                	mov    %esp,%ebp
c0030645:	83 ec 14             	sub    $0x14,%esp
c0030648:	e8 3a fb ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003064d:	05 b3 c9 00 00       	add    $0xc9b3,%eax
c0030652:	8b 45 08             	mov    0x8(%ebp),%eax
c0030655:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030659:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003065c:	89 c2                	mov    %eax,%edx
c003065e:	ec                   	in     (%dx),%al
c003065f:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030662:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030665:	c9                   	leave  
c0030666:	c3                   	ret    

c0030667 <in_long>:
c0030667:	55                   	push   %ebp
c0030668:	89 e5                	mov    %esp,%ebp
c003066a:	83 ec 14             	sub    $0x14,%esp
c003066d:	e8 15 fb ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030672:	05 8e c9 00 00       	add    $0xc98e,%eax
c0030677:	8b 45 08             	mov    0x8(%ebp),%eax
c003067a:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c003067e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030681:	89 c2                	mov    %eax,%edx
c0030683:	ed                   	in     (%dx),%eax
c0030684:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0030687:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003068a:	c9                   	leave  
c003068b:	c3                   	ret    

c003068c <out_byte>:
c003068c:	55                   	push   %ebp
c003068d:	89 e5                	mov    %esp,%ebp
c003068f:	83 ec 08             	sub    $0x8,%esp
c0030692:	e8 f0 fa ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030697:	05 69 c9 00 00       	add    $0xc969,%eax
c003069c:	8b 45 08             	mov    0x8(%ebp),%eax
c003069f:	8b 55 0c             	mov    0xc(%ebp),%edx
c00306a2:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00306a6:	88 d0                	mov    %dl,%al
c00306a8:	88 45 f8             	mov    %al,-0x8(%ebp)
c00306ab:	8a 45 f8             	mov    -0x8(%ebp),%al
c00306ae:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00306b1:	ee                   	out    %al,(%dx)
c00306b2:	90                   	nop
c00306b3:	c9                   	leave  
c00306b4:	c3                   	ret    

c00306b5 <out_long>:
c00306b5:	55                   	push   %ebp
c00306b6:	89 e5                	mov    %esp,%ebp
c00306b8:	83 ec 04             	sub    $0x4,%esp
c00306bb:	e8 c7 fa ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00306c0:	05 40 c9 00 00       	add    $0xc940,%eax
c00306c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00306c8:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00306cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00306cf:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00306d2:	ef                   	out    %eax,(%dx)
c00306d3:	90                   	nop
c00306d4:	c9                   	leave  
c00306d5:	c3                   	ret    

c00306d6 <waitdisk>:
c00306d6:	55                   	push   %ebp
c00306d7:	89 e5                	mov    %esp,%ebp
c00306d9:	e8 a9 fa ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00306de:	05 22 c9 00 00       	add    $0xc922,%eax
c00306e3:	90                   	nop
c00306e4:	68 f7 01 00 00       	push   $0x1f7
c00306e9:	e8 54 ff ff ff       	call   c0030642 <in_byte>
c00306ee:	83 c4 04             	add    $0x4,%esp
c00306f1:	0f b6 c0             	movzbl %al,%eax
c00306f4:	25 c0 00 00 00       	and    $0xc0,%eax
c00306f9:	83 f8 40             	cmp    $0x40,%eax
c00306fc:	75 e6                	jne    c00306e4 <waitdisk+0xe>
c00306fe:	90                   	nop
c00306ff:	c9                   	leave  
c0030700:	c3                   	ret    

c0030701 <ide_prepare>:
c0030701:	55                   	push   %ebp
c0030702:	89 e5                	mov    %esp,%ebp
c0030704:	e8 7e fa ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030709:	05 f7 c8 00 00       	add    $0xc8f7,%eax
c003070e:	e8 c3 ff ff ff       	call   c00306d6 <waitdisk>
c0030713:	6a 00                	push   $0x0
c0030715:	68 f1 01 00 00       	push   $0x1f1
c003071a:	e8 6d ff ff ff       	call   c003068c <out_byte>
c003071f:	83 c4 08             	add    $0x8,%esp
c0030722:	6a 01                	push   $0x1
c0030724:	68 f2 01 00 00       	push   $0x1f2
c0030729:	e8 5e ff ff ff       	call   c003068c <out_byte>
c003072e:	83 c4 08             	add    $0x8,%esp
c0030731:	8b 45 08             	mov    0x8(%ebp),%eax
c0030734:	0f b6 c0             	movzbl %al,%eax
c0030737:	50                   	push   %eax
c0030738:	68 f3 01 00 00       	push   $0x1f3
c003073d:	e8 4a ff ff ff       	call   c003068c <out_byte>
c0030742:	83 c4 08             	add    $0x8,%esp
c0030745:	8b 45 08             	mov    0x8(%ebp),%eax
c0030748:	c1 e8 08             	shr    $0x8,%eax
c003074b:	0f b6 c0             	movzbl %al,%eax
c003074e:	50                   	push   %eax
c003074f:	68 f4 01 00 00       	push   $0x1f4
c0030754:	e8 33 ff ff ff       	call   c003068c <out_byte>
c0030759:	83 c4 08             	add    $0x8,%esp
c003075c:	8b 45 08             	mov    0x8(%ebp),%eax
c003075f:	c1 e8 10             	shr    $0x10,%eax
c0030762:	0f b6 c0             	movzbl %al,%eax
c0030765:	50                   	push   %eax
c0030766:	68 f5 01 00 00       	push   $0x1f5
c003076b:	e8 1c ff ff ff       	call   c003068c <out_byte>
c0030770:	83 c4 08             	add    $0x8,%esp
c0030773:	8b 45 08             	mov    0x8(%ebp),%eax
c0030776:	c1 e8 18             	shr    $0x18,%eax
c0030779:	83 c8 e0             	or     $0xffffffe0,%eax
c003077c:	0f b6 c0             	movzbl %al,%eax
c003077f:	50                   	push   %eax
c0030780:	68 f6 01 00 00       	push   $0x1f6
c0030785:	e8 02 ff ff ff       	call   c003068c <out_byte>
c003078a:	83 c4 08             	add    $0x8,%esp
c003078d:	90                   	nop
c003078e:	c9                   	leave  
c003078f:	c3                   	ret    

c0030790 <issue_read>:
c0030790:	55                   	push   %ebp
c0030791:	89 e5                	mov    %esp,%ebp
c0030793:	e8 ef f9 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030798:	05 68 c8 00 00       	add    $0xc868,%eax
c003079d:	6a 20                	push   $0x20
c003079f:	68 f7 01 00 00       	push   $0x1f7
c00307a4:	e8 e3 fe ff ff       	call   c003068c <out_byte>
c00307a9:	83 c4 08             	add    $0x8,%esp
c00307ac:	90                   	nop
c00307ad:	c9                   	leave  
c00307ae:	c3                   	ret    

c00307af <issue_write>:
c00307af:	55                   	push   %ebp
c00307b0:	89 e5                	mov    %esp,%ebp
c00307b2:	e8 d0 f9 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00307b7:	05 49 c8 00 00       	add    $0xc849,%eax
c00307bc:	6a 30                	push   $0x30
c00307be:	68 f7 01 00 00       	push   $0x1f7
c00307c3:	e8 c4 fe ff ff       	call   c003068c <out_byte>
c00307c8:	83 c4 08             	add    $0x8,%esp
c00307cb:	90                   	nop
c00307cc:	c9                   	leave  
c00307cd:	c3                   	ret    

c00307ce <disk_do_read>:
c00307ce:	55                   	push   %ebp
c00307cf:	89 e5                	mov    %esp,%ebp
c00307d1:	53                   	push   %ebx
c00307d2:	83 ec 14             	sub    $0x14,%esp
c00307d5:	e8 b1 f9 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00307da:	81 c3 26 c8 00 00    	add    $0xc826,%ebx
c00307e0:	e8 c8 fb ff ff       	call   c00303ad <clear_ide_intr>
c00307e5:	83 ec 0c             	sub    $0xc,%esp
c00307e8:	ff 75 0c             	pushl  0xc(%ebp)
c00307eb:	e8 11 ff ff ff       	call   c0030701 <ide_prepare>
c00307f0:	83 c4 10             	add    $0x10,%esp
c00307f3:	e8 98 ff ff ff       	call   c0030790 <issue_read>
c00307f8:	e8 ca fb ff ff       	call   c00303c7 <wait_ide_intr>
c00307fd:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030804:	eb 25                	jmp    c003082b <disk_do_read+0x5d>
c0030806:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030809:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030810:	8b 45 08             	mov    0x8(%ebp),%eax
c0030813:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0030816:	83 ec 0c             	sub    $0xc,%esp
c0030819:	68 f0 01 00 00       	push   $0x1f0
c003081e:	e8 44 fe ff ff       	call   c0030667 <in_long>
c0030823:	83 c4 10             	add    $0x10,%esp
c0030826:	89 03                	mov    %eax,(%ebx)
c0030828:	ff 45 f4             	incl   -0xc(%ebp)
c003082b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003082e:	83 f8 7f             	cmp    $0x7f,%eax
c0030831:	76 d3                	jbe    c0030806 <disk_do_read+0x38>
c0030833:	90                   	nop
c0030834:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030837:	c9                   	leave  
c0030838:	c3                   	ret    

c0030839 <disk_do_write>:
c0030839:	55                   	push   %ebp
c003083a:	89 e5                	mov    %esp,%ebp
c003083c:	83 ec 10             	sub    $0x10,%esp
c003083f:	e8 43 f9 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030844:	05 bc c7 00 00       	add    $0xc7bc,%eax
c0030849:	ff 75 0c             	pushl  0xc(%ebp)
c003084c:	e8 b0 fe ff ff       	call   c0030701 <ide_prepare>
c0030851:	83 c4 04             	add    $0x4,%esp
c0030854:	e8 56 ff ff ff       	call   c00307af <issue_write>
c0030859:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0030860:	eb 22                	jmp    c0030884 <disk_do_write+0x4b>
c0030862:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030865:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003086c:	8b 45 08             	mov    0x8(%ebp),%eax
c003086f:	01 d0                	add    %edx,%eax
c0030871:	8b 00                	mov    (%eax),%eax
c0030873:	50                   	push   %eax
c0030874:	68 f0 01 00 00       	push   $0x1f0
c0030879:	e8 37 fe ff ff       	call   c00306b5 <out_long>
c003087e:	83 c4 08             	add    $0x8,%esp
c0030881:	ff 45 fc             	incl   -0x4(%ebp)
c0030884:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030887:	83 f8 7f             	cmp    $0x7f,%eax
c003088a:	76 d6                	jbe    c0030862 <disk_do_write+0x29>
c003088c:	90                   	nop
c003088d:	c9                   	leave  
c003088e:	c3                   	ret    

c003088f <write_cr3>:
c003088f:	55                   	push   %ebp
c0030890:	89 e5                	mov    %esp,%ebp
c0030892:	e8 f0 f8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030897:	05 69 c7 00 00       	add    $0xc769,%eax
c003089c:	8b 45 08             	mov    0x8(%ebp),%eax
c003089f:	0f 22 d8             	mov    %eax,%cr3
c00308a2:	90                   	nop
c00308a3:	5d                   	pop    %ebp
c00308a4:	c3                   	ret    

c00308a5 <loader>:
c00308a5:	55                   	push   %ebp
c00308a6:	89 e5                	mov    %esp,%ebp
c00308a8:	53                   	push   %ebx
c00308a9:	81 ec 24 10 00 00    	sub    $0x1024,%esp
c00308af:	e8 d7 f8 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00308b4:	81 c3 4c c7 00 00    	add    $0xc74c,%ebx
c00308ba:	83 ec 04             	sub    $0x4,%esp
c00308bd:	68 00 10 00 00       	push   $0x1000
c00308c2:	6a 00                	push   $0x0
c00308c4:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c00308ca:	50                   	push   %eax
c00308cb:	e8 e7 f9 ff ff       	call   c00302b7 <ide_read>
c00308d0:	83 c4 10             	add    $0x10,%esp
c00308d3:	8d 85 e4 ef ff ff    	lea    -0x101c(%ebp),%eax
c00308d9:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00308dc:	8d 83 98 c0 ff ff    	lea    -0x3f68(%ebx),%eax
c00308e2:	50                   	push   %eax
c00308e3:	6a 1a                	push   $0x1a
c00308e5:	8d 83 4c c0 ff ff    	lea    -0x3fb4(%ebx),%eax
c00308eb:	50                   	push   %eax
c00308ec:	8d 83 5c c0 ff ff    	lea    -0x3fa4(%ebx),%eax
c00308f2:	50                   	push   %eax
c00308f3:	e8 34 02 00 00       	call   c0030b2c <printk>
c00308f8:	83 c4 10             	add    $0x10,%esp
c00308fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308fe:	8b 50 1c             	mov    0x1c(%eax),%edx
c0030901:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030904:	01 d0                	add    %edx,%eax
c0030906:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030909:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003090c:	8b 40 2c             	mov    0x2c(%eax),%eax
c003090f:	0f b7 c0             	movzwl %ax,%eax
c0030912:	c1 e0 05             	shl    $0x5,%eax
c0030915:	89 c2                	mov    %eax,%edx
c0030917:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003091a:	01 d0                	add    %edx,%eax
c003091c:	89 45 ec             	mov    %eax,-0x14(%ebp)
c003091f:	e9 b4 00 00 00       	jmp    c00309d8 <loader+0x133>
c0030924:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030927:	8b 00                	mov    (%eax),%eax
c0030929:	83 f8 01             	cmp    $0x1,%eax
c003092c:	0f 85 a2 00 00 00    	jne    c00309d4 <loader+0x12f>
c0030932:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030935:	8b 40 14             	mov    0x14(%eax),%eax
c0030938:	89 c2                	mov    %eax,%edx
c003093a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003093d:	8b 40 08             	mov    0x8(%eax),%eax
c0030940:	83 ec 08             	sub    $0x8,%esp
c0030943:	52                   	push   %edx
c0030944:	50                   	push   %eax
c0030945:	e8 46 12 00 00       	call   c0031b90 <mm_malloc>
c003094a:	83 c4 10             	add    $0x10,%esp
c003094d:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0030950:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030953:	8b 50 10             	mov    0x10(%eax),%edx
c0030956:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030959:	8b 48 04             	mov    0x4(%eax),%ecx
c003095c:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003095f:	01 c1                	add    %eax,%ecx
c0030961:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030964:	83 ec 04             	sub    $0x4,%esp
c0030967:	52                   	push   %edx
c0030968:	51                   	push   %ecx
c0030969:	50                   	push   %eax
c003096a:	e8 b5 14 00 00       	call   c0031e24 <memcpy>
c003096f:	83 c4 10             	add    $0x10,%esp
c0030972:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030975:	8b 50 10             	mov    0x10(%eax),%edx
c0030978:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003097b:	8b 40 14             	mov    0x14(%eax),%eax
c003097e:	39 c2                	cmp    %eax,%edx
c0030980:	73 28                	jae    c00309aa <loader+0x105>
c0030982:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030985:	8b 50 14             	mov    0x14(%eax),%edx
c0030988:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003098b:	8b 40 10             	mov    0x10(%eax),%eax
c003098e:	29 c2                	sub    %eax,%edx
c0030990:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030993:	8b 48 10             	mov    0x10(%eax),%ecx
c0030996:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030999:	01 c8                	add    %ecx,%eax
c003099b:	83 ec 04             	sub    $0x4,%esp
c003099e:	52                   	push   %edx
c003099f:	6a 00                	push   $0x0
c00309a1:	50                   	push   %eax
c00309a2:	e8 c5 14 00 00       	call   c0031e6c <memset>
c00309a7:	83 c4 10             	add    $0x10,%esp
c00309aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309ad:	8b 50 08             	mov    0x8(%eax),%edx
c00309b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309b3:	8b 40 14             	mov    0x14(%eax),%eax
c00309b6:	01 d0                	add    %edx,%eax
c00309b8:	48                   	dec    %eax
c00309b9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00309bc:	c7 c0 88 ee 04 c0    	mov    $0xc004ee88,%eax
c00309c2:	8b 00                	mov    (%eax),%eax
c00309c4:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00309c7:	76 0b                	jbe    c00309d4 <loader+0x12f>
c00309c9:	c7 c0 88 ee 04 c0    	mov    $0xc004ee88,%eax
c00309cf:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00309d2:	89 10                	mov    %edx,(%eax)
c00309d4:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c00309d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309db:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c00309de:	0f 82 40 ff ff ff    	jb     c0030924 <loader+0x7f>
c00309e4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00309e7:	8b 40 18             	mov    0x18(%eax),%eax
c00309ea:	89 85 e0 ef ff ff    	mov    %eax,-0x1020(%ebp)
c00309f0:	83 ec 08             	sub    $0x8,%esp
c00309f3:	68 00 00 10 00       	push   $0x100000
c00309f8:	68 00 00 f0 bf       	push   $0xbff00000
c00309fd:	e8 8e 11 00 00       	call   c0031b90 <mm_malloc>
c0030a02:	83 c4 10             	add    $0x10,%esp
c0030a05:	e8 84 0c 00 00       	call   c003168e <get_ucr3>
c0030a0a:	83 ec 0c             	sub    $0xc,%esp
c0030a0d:	50                   	push   %eax
c0030a0e:	e8 7c fe ff ff       	call   c003088f <write_cr3>
c0030a13:	83 c4 10             	add    $0x10,%esp
c0030a16:	8b 85 e0 ef ff ff    	mov    -0x1020(%ebp),%eax
c0030a1c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a1f:	c9                   	leave  
c0030a20:	c3                   	ret    

c0030a21 <sbrk>:
c0030a21:	55                   	push   %ebp
c0030a22:	89 e5                	mov    %esp,%ebp
c0030a24:	53                   	push   %ebx
c0030a25:	83 ec 04             	sub    $0x4,%esp
c0030a28:	e8 5a f7 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030a2d:	05 d3 c5 00 00       	add    $0xc5d3,%eax
c0030a32:	83 ec 0c             	sub    $0xc,%esp
c0030a35:	8d 90 a0 c0 ff ff    	lea    -0x3f60(%eax),%edx
c0030a3b:	52                   	push   %edx
c0030a3c:	8d 90 00 c1 ff ff    	lea    -0x3f00(%eax),%edx
c0030a42:	52                   	push   %edx
c0030a43:	6a 09                	push   $0x9
c0030a45:	8d 90 a2 c0 ff ff    	lea    -0x3f5e(%eax),%edx
c0030a4b:	52                   	push   %edx
c0030a4c:	8d 90 b4 c0 ff ff    	lea    -0x3f4c(%eax),%edx
c0030a52:	52                   	push   %edx
c0030a53:	89 c3                	mov    %eax,%ebx
c0030a55:	e8 d2 00 00 00       	call   c0030b2c <printk>
c0030a5a:	83 c4 20             	add    $0x20,%esp
c0030a5d:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a62:	82                   	nemu_trap 
c0030a63:	b8 00 00 00 00       	mov    $0x0,%eax
c0030a68:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a6b:	c9                   	leave  
c0030a6c:	c3                   	ret    

c0030a6d <in_byte>:
c0030a6d:	55                   	push   %ebp
c0030a6e:	89 e5                	mov    %esp,%ebp
c0030a70:	83 ec 14             	sub    $0x14,%esp
c0030a73:	e8 0f f7 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030a78:	05 88 c5 00 00       	add    $0xc588,%eax
c0030a7d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a80:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030a84:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030a87:	89 c2                	mov    %eax,%edx
c0030a89:	ec                   	in     (%dx),%al
c0030a8a:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030a8d:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030a90:	c9                   	leave  
c0030a91:	c3                   	ret    

c0030a92 <out_byte>:
c0030a92:	55                   	push   %ebp
c0030a93:	89 e5                	mov    %esp,%ebp
c0030a95:	83 ec 08             	sub    $0x8,%esp
c0030a98:	e8 ea f6 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030a9d:	05 63 c5 00 00       	add    $0xc563,%eax
c0030aa2:	8b 45 08             	mov    0x8(%ebp),%eax
c0030aa5:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030aa8:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030aac:	88 d0                	mov    %dl,%al
c0030aae:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030ab1:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030ab4:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030ab7:	ee                   	out    %al,(%dx)
c0030ab8:	90                   	nop
c0030ab9:	c9                   	leave  
c0030aba:	c3                   	ret    

c0030abb <init_serial>:
c0030abb:	55                   	push   %ebp
c0030abc:	89 e5                	mov    %esp,%ebp
c0030abe:	e8 c4 f6 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030ac3:	05 3d c5 00 00       	add    $0xc53d,%eax
c0030ac8:	90                   	nop
c0030ac9:	5d                   	pop    %ebp
c0030aca:	c3                   	ret    

c0030acb <serial_idle>:
c0030acb:	55                   	push   %ebp
c0030acc:	89 e5                	mov    %esp,%ebp
c0030ace:	e8 b4 f6 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030ad3:	05 2d c5 00 00       	add    $0xc52d,%eax
c0030ad8:	68 fd 03 00 00       	push   $0x3fd
c0030add:	e8 8b ff ff ff       	call   c0030a6d <in_byte>
c0030ae2:	83 c4 04             	add    $0x4,%esp
c0030ae5:	0f b6 c0             	movzbl %al,%eax
c0030ae8:	83 e0 20             	and    $0x20,%eax
c0030aeb:	85 c0                	test   %eax,%eax
c0030aed:	0f 95 c0             	setne  %al
c0030af0:	0f b6 c0             	movzbl %al,%eax
c0030af3:	c9                   	leave  
c0030af4:	c3                   	ret    

c0030af5 <serial_printc>:
c0030af5:	55                   	push   %ebp
c0030af6:	89 e5                	mov    %esp,%ebp
c0030af8:	83 ec 04             	sub    $0x4,%esp
c0030afb:	e8 87 f6 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030b00:	05 00 c5 00 00       	add    $0xc500,%eax
c0030b05:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b08:	88 45 fc             	mov    %al,-0x4(%ebp)
c0030b0b:	90                   	nop
c0030b0c:	e8 ba ff ff ff       	call   c0030acb <serial_idle>
c0030b11:	85 c0                	test   %eax,%eax
c0030b13:	74 f7                	je     c0030b0c <serial_printc+0x17>
c0030b15:	8a 45 fc             	mov    -0x4(%ebp),%al
c0030b18:	0f b6 c0             	movzbl %al,%eax
c0030b1b:	50                   	push   %eax
c0030b1c:	68 f8 03 00 00       	push   $0x3f8
c0030b21:	e8 6c ff ff ff       	call   c0030a92 <out_byte>
c0030b26:	83 c4 08             	add    $0x8,%esp
c0030b29:	90                   	nop
c0030b2a:	c9                   	leave  
c0030b2b:	c3                   	ret    

c0030b2c <printk>:
c0030b2c:	55                   	push   %ebp
c0030b2d:	89 e5                	mov    %esp,%ebp
c0030b2f:	53                   	push   %ebx
c0030b30:	83 ec 14             	sub    $0x14,%esp
c0030b33:	e8 53 f6 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030b38:	81 c3 c8 c4 00 00    	add    $0xc4c8,%ebx
c0030b3e:	8d 45 0c             	lea    0xc(%ebp),%eax
c0030b41:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030b44:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b47:	ff 75 f4             	pushl  -0xc(%ebp)
c0030b4a:	50                   	push   %eax
c0030b4b:	68 00 01 00 00       	push   $0x100
c0030b50:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030b56:	50                   	push   %eax
c0030b57:	e8 34 14 00 00       	call   c0031f90 <vsnprintf>
c0030b5c:	83 c4 10             	add    $0x10,%esp
c0030b5f:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030b62:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030b65:	83 ec 04             	sub    $0x4,%esp
c0030b68:	50                   	push   %eax
c0030b69:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030b6f:	50                   	push   %eax
c0030b70:	6a 01                	push   $0x1
c0030b72:	e8 83 07 00 00       	call   c00312fa <fs_write>
c0030b77:	83 c4 10             	add    $0x10,%esp
c0030b7a:	90                   	nop
c0030b7b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b7e:	c9                   	leave  
c0030b7f:	c3                   	ret    

c0030b80 <add_irq_handle>:
c0030b80:	55                   	push   %ebp
c0030b81:	89 e5                	mov    %esp,%ebp
c0030b83:	53                   	push   %ebx
c0030b84:	83 ec 14             	sub    $0x14,%esp
c0030b87:	e8 ff f5 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030b8c:	81 c3 74 c4 00 00    	add    $0xc474,%ebx
c0030b92:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0030b96:	7e 2f                	jle    c0030bc7 <add_irq_handle+0x47>
c0030b98:	83 ec 0c             	sub    $0xc,%esp
c0030b9b:	8d 83 08 c1 ff ff    	lea    -0x3ef8(%ebx),%eax
c0030ba1:	50                   	push   %eax
c0030ba2:	8d 83 60 c2 ff ff    	lea    -0x3da0(%ebx),%eax
c0030ba8:	50                   	push   %eax
c0030ba9:	6a 17                	push   $0x17
c0030bab:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030bb1:	50                   	push   %eax
c0030bb2:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030bb8:	50                   	push   %eax
c0030bb9:	e8 6e ff ff ff       	call   c0030b2c <printk>
c0030bbe:	83 c4 20             	add    $0x20,%esp
c0030bc1:	b8 01 00 00 00       	mov    $0x1,%eax
c0030bc6:	82                   	nemu_trap 
c0030bc7:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
c0030bcd:	83 f8 20             	cmp    $0x20,%eax
c0030bd0:	7e 2f                	jle    c0030c01 <add_irq_handle+0x81>
c0030bd2:	83 ec 0c             	sub    $0xc,%esp
c0030bd5:	8d 83 7a c1 ff ff    	lea    -0x3e86(%ebx),%eax
c0030bdb:	50                   	push   %eax
c0030bdc:	8d 83 60 c2 ff ff    	lea    -0x3da0(%ebx),%eax
c0030be2:	50                   	push   %eax
c0030be3:	6a 18                	push   $0x18
c0030be5:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030beb:	50                   	push   %eax
c0030bec:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030bf2:	50                   	push   %eax
c0030bf3:	e8 34 ff ff ff       	call   c0030b2c <printk>
c0030bf8:	83 c4 20             	add    $0x20,%esp
c0030bfb:	b8 01 00 00 00       	mov    $0x1,%eax
c0030c00:	82                   	nemu_trap 
c0030c01:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
c0030c07:	8d 50 01             	lea    0x1(%eax),%edx
c0030c0a:	89 93 60 16 01 00    	mov    %edx,0x11660(%ebx)
c0030c10:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0030c17:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
c0030c1d:	01 d0                	add    %edx,%eax
c0030c1f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030c22:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c25:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030c28:	89 10                	mov    %edx,(%eax)
c0030c2a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c2d:	8b 94 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%edx
c0030c34:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c37:	89 50 04             	mov    %edx,0x4(%eax)
c0030c3a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c3d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030c40:	89 94 83 20 16 01 00 	mov    %edx,0x11620(%ebx,%eax,4)
c0030c47:	90                   	nop
c0030c48:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030c4b:	c9                   	leave  
c0030c4c:	c3                   	ret    

c0030c4d <irq_handle>:
c0030c4d:	55                   	push   %ebp
c0030c4e:	89 e5                	mov    %esp,%ebp
c0030c50:	53                   	push   %ebx
c0030c51:	83 ec 14             	sub    $0x14,%esp
c0030c54:	e8 32 f5 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030c59:	81 c3 a7 c3 00 00    	add    $0xc3a7,%ebx
c0030c5f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c62:	8b 40 20             	mov    0x20(%eax),%eax
c0030c65:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030c68:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0030c6c:	79 2a                	jns    c0030c98 <irq_handle+0x4b>
c0030c6e:	8d 83 70 c2 ff ff    	lea    -0x3d90(%ebx),%eax
c0030c74:	50                   	push   %eax
c0030c75:	6a 27                	push   $0x27
c0030c77:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030c7d:	50                   	push   %eax
c0030c7e:	8d 83 98 c1 ff ff    	lea    -0x3e68(%ebx),%eax
c0030c84:	50                   	push   %eax
c0030c85:	e8 a2 fe ff ff       	call   c0030b2c <printk>
c0030c8a:	83 c4 10             	add    $0x10,%esp
c0030c8d:	b8 01 00 00 00       	mov    $0x1,%eax
c0030c92:	82                   	nemu_trap 
c0030c93:	e9 cb 00 00 00       	jmp    c0030d63 <irq_handle+0x116>
c0030c98:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
c0030c9f:	75 13                	jne    c0030cb4 <irq_handle+0x67>
c0030ca1:	83 ec 0c             	sub    $0xc,%esp
c0030ca4:	ff 75 08             	pushl  0x8(%ebp)
c0030ca7:	e8 df 08 00 00       	call   c003158b <do_syscall>
c0030cac:	83 c4 10             	add    $0x10,%esp
c0030caf:	e9 af 00 00 00       	jmp    c0030d63 <irq_handle+0x116>
c0030cb4:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030cbb:	7f 38                	jg     c0030cf5 <irq_handle+0xa8>
c0030cbd:	8b 55 08             	mov    0x8(%ebp),%edx
c0030cc0:	8b 45 08             	mov    0x8(%ebp),%eax
c0030cc3:	8b 40 28             	mov    0x28(%eax),%eax
c0030cc6:	83 ec 04             	sub    $0x4,%esp
c0030cc9:	52                   	push   %edx
c0030cca:	50                   	push   %eax
c0030ccb:	ff 75 f0             	pushl  -0x10(%ebp)
c0030cce:	8d 83 70 c2 ff ff    	lea    -0x3d90(%ebx),%eax
c0030cd4:	50                   	push   %eax
c0030cd5:	6a 2f                	push   $0x2f
c0030cd7:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030cdd:	50                   	push   %eax
c0030cde:	8d 83 e4 c1 ff ff    	lea    -0x3e1c(%ebx),%eax
c0030ce4:	50                   	push   %eax
c0030ce5:	e8 42 fe ff ff       	call   c0030b2c <printk>
c0030cea:	83 c4 20             	add    $0x20,%esp
c0030ced:	b8 01 00 00 00       	mov    $0x1,%eax
c0030cf2:	82                   	nemu_trap 
c0030cf3:	eb 6e                	jmp    c0030d63 <irq_handle+0x116>
c0030cf5:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030cfc:	7e 65                	jle    c0030d63 <irq_handle+0x116>
c0030cfe:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030d01:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0030d06:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0030d09:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c0030d0d:	7e 2f                	jle    c0030d3e <irq_handle+0xf1>
c0030d0f:	83 ec 0c             	sub    $0xc,%esp
c0030d12:	8d 83 47 c2 ff ff    	lea    -0x3db9(%ebx),%eax
c0030d18:	50                   	push   %eax
c0030d19:	8d 83 70 c2 ff ff    	lea    -0x3d90(%ebx),%eax
c0030d1f:	50                   	push   %eax
c0030d20:	6a 34                	push   $0x34
c0030d22:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030d28:	50                   	push   %eax
c0030d29:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030d2f:	50                   	push   %eax
c0030d30:	e8 f7 fd ff ff       	call   c0030b2c <printk>
c0030d35:	83 c4 20             	add    $0x20,%esp
c0030d38:	b8 01 00 00 00       	mov    $0x1,%eax
c0030d3d:	82                   	nemu_trap 
c0030d3e:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030d41:	8b 84 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%eax
c0030d48:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030d4b:	eb 10                	jmp    c0030d5d <irq_handle+0x110>
c0030d4d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d50:	8b 00                	mov    (%eax),%eax
c0030d52:	ff d0                	call   *%eax
c0030d54:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d57:	8b 40 04             	mov    0x4(%eax),%eax
c0030d5a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030d5d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0030d61:	75 ea                	jne    c0030d4d <irq_handle+0x100>
c0030d63:	90                   	nop
c0030d64:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030d67:	c9                   	leave  
c0030d68:	c3                   	ret    

c0030d69 <out_byte>:
c0030d69:	55                   	push   %ebp
c0030d6a:	89 e5                	mov    %esp,%ebp
c0030d6c:	83 ec 08             	sub    $0x8,%esp
c0030d6f:	e8 13 f4 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030d74:	05 8c c2 00 00       	add    $0xc28c,%eax
c0030d79:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d7c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030d7f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030d83:	88 d0                	mov    %dl,%al
c0030d85:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030d88:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030d8b:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030d8e:	ee                   	out    %al,(%dx)
c0030d8f:	90                   	nop
c0030d90:	c9                   	leave  
c0030d91:	c3                   	ret    

c0030d92 <init_i8259>:
c0030d92:	55                   	push   %ebp
c0030d93:	89 e5                	mov    %esp,%ebp
c0030d95:	e8 ed f3 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030d9a:	05 66 c2 00 00       	add    $0xc266,%eax
c0030d9f:	68 ff 00 00 00       	push   $0xff
c0030da4:	6a 21                	push   $0x21
c0030da6:	e8 be ff ff ff       	call   c0030d69 <out_byte>
c0030dab:	83 c4 08             	add    $0x8,%esp
c0030dae:	68 ff 00 00 00       	push   $0xff
c0030db3:	68 a1 00 00 00       	push   $0xa1
c0030db8:	e8 ac ff ff ff       	call   c0030d69 <out_byte>
c0030dbd:	83 c4 08             	add    $0x8,%esp
c0030dc0:	6a 11                	push   $0x11
c0030dc2:	6a 20                	push   $0x20
c0030dc4:	e8 a0 ff ff ff       	call   c0030d69 <out_byte>
c0030dc9:	83 c4 08             	add    $0x8,%esp
c0030dcc:	6a 20                	push   $0x20
c0030dce:	6a 21                	push   $0x21
c0030dd0:	e8 94 ff ff ff       	call   c0030d69 <out_byte>
c0030dd5:	83 c4 08             	add    $0x8,%esp
c0030dd8:	6a 04                	push   $0x4
c0030dda:	6a 21                	push   $0x21
c0030ddc:	e8 88 ff ff ff       	call   c0030d69 <out_byte>
c0030de1:	83 c4 08             	add    $0x8,%esp
c0030de4:	6a 03                	push   $0x3
c0030de6:	6a 21                	push   $0x21
c0030de8:	e8 7c ff ff ff       	call   c0030d69 <out_byte>
c0030ded:	83 c4 08             	add    $0x8,%esp
c0030df0:	6a 11                	push   $0x11
c0030df2:	68 a0 00 00 00       	push   $0xa0
c0030df7:	e8 6d ff ff ff       	call   c0030d69 <out_byte>
c0030dfc:	83 c4 08             	add    $0x8,%esp
c0030dff:	6a 28                	push   $0x28
c0030e01:	68 a1 00 00 00       	push   $0xa1
c0030e06:	e8 5e ff ff ff       	call   c0030d69 <out_byte>
c0030e0b:	83 c4 08             	add    $0x8,%esp
c0030e0e:	6a 02                	push   $0x2
c0030e10:	68 a1 00 00 00       	push   $0xa1
c0030e15:	e8 4f ff ff ff       	call   c0030d69 <out_byte>
c0030e1a:	83 c4 08             	add    $0x8,%esp
c0030e1d:	6a 03                	push   $0x3
c0030e1f:	68 a1 00 00 00       	push   $0xa1
c0030e24:	e8 40 ff ff ff       	call   c0030d69 <out_byte>
c0030e29:	83 c4 08             	add    $0x8,%esp
c0030e2c:	6a 68                	push   $0x68
c0030e2e:	6a 20                	push   $0x20
c0030e30:	e8 34 ff ff ff       	call   c0030d69 <out_byte>
c0030e35:	83 c4 08             	add    $0x8,%esp
c0030e38:	6a 0a                	push   $0xa
c0030e3a:	6a 20                	push   $0x20
c0030e3c:	e8 28 ff ff ff       	call   c0030d69 <out_byte>
c0030e41:	83 c4 08             	add    $0x8,%esp
c0030e44:	6a 68                	push   $0x68
c0030e46:	68 a0 00 00 00       	push   $0xa0
c0030e4b:	e8 19 ff ff ff       	call   c0030d69 <out_byte>
c0030e50:	83 c4 08             	add    $0x8,%esp
c0030e53:	6a 0a                	push   $0xa
c0030e55:	68 a0 00 00 00       	push   $0xa0
c0030e5a:	e8 0a ff ff ff       	call   c0030d69 <out_byte>
c0030e5f:	83 c4 08             	add    $0x8,%esp
c0030e62:	90                   	nop
c0030e63:	c9                   	leave  
c0030e64:	c3                   	ret    

c0030e65 <write_idtr>:
c0030e65:	55                   	push   %ebp
c0030e66:	89 e5                	mov    %esp,%ebp
c0030e68:	e8 1a f3 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030e6d:	05 93 c1 00 00       	add    $0xc193,%eax
c0030e72:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030e75:	4a                   	dec    %edx
c0030e76:	66 89 90 80 1e 01 00 	mov    %dx,0x11e80(%eax)
c0030e7d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e80:	66 89 90 82 1e 01 00 	mov    %dx,0x11e82(%eax)
c0030e87:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e8a:	c1 ea 10             	shr    $0x10,%edx
c0030e8d:	66 89 90 84 1e 01 00 	mov    %dx,0x11e84(%eax)
c0030e94:	8d 80 80 1e 01 00    	lea    0x11e80(%eax),%eax
c0030e9a:	0f 01 18             	lidtl  (%eax)
c0030e9d:	90                   	nop
c0030e9e:	5d                   	pop    %ebp
c0030e9f:	c3                   	ret    

c0030ea0 <sti>:
c0030ea0:	55                   	push   %ebp
c0030ea1:	89 e5                	mov    %esp,%ebp
c0030ea3:	e8 df f2 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030ea8:	05 58 c1 00 00       	add    $0xc158,%eax
c0030ead:	fb                   	sti    
c0030eae:	90                   	nop
c0030eaf:	5d                   	pop    %ebp
c0030eb0:	c3                   	ret    

c0030eb1 <set_intr>:
c0030eb1:	55                   	push   %ebp
c0030eb2:	89 e5                	mov    %esp,%ebp
c0030eb4:	e8 ce f2 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030eb9:	05 47 c1 00 00       	add    $0xc147,%eax
c0030ebe:	8b 45 10             	mov    0x10(%ebp),%eax
c0030ec1:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ec4:	66 89 02             	mov    %ax,(%edx)
c0030ec7:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030eca:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ecd:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030ed1:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ed4:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030ed8:	8b 45 08             	mov    0x8(%ebp),%eax
c0030edb:	8a 50 05             	mov    0x5(%eax),%dl
c0030ede:	83 e2 f0             	and    $0xfffffff0,%edx
c0030ee1:	83 ca 0e             	or     $0xe,%edx
c0030ee4:	88 50 05             	mov    %dl,0x5(%eax)
c0030ee7:	8b 45 08             	mov    0x8(%ebp),%eax
c0030eea:	8a 50 05             	mov    0x5(%eax),%dl
c0030eed:	83 e2 ef             	and    $0xffffffef,%edx
c0030ef0:	88 50 05             	mov    %dl,0x5(%eax)
c0030ef3:	8b 45 14             	mov    0x14(%ebp),%eax
c0030ef6:	88 c2                	mov    %al,%dl
c0030ef8:	83 e2 03             	and    $0x3,%edx
c0030efb:	8b 45 08             	mov    0x8(%ebp),%eax
c0030efe:	83 e2 03             	and    $0x3,%edx
c0030f01:	88 d1                	mov    %dl,%cl
c0030f03:	c1 e1 05             	shl    $0x5,%ecx
c0030f06:	8a 50 05             	mov    0x5(%eax),%dl
c0030f09:	83 e2 9f             	and    $0xffffff9f,%edx
c0030f0c:	09 ca                	or     %ecx,%edx
c0030f0e:	88 50 05             	mov    %dl,0x5(%eax)
c0030f11:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f14:	8a 50 05             	mov    0x5(%eax),%dl
c0030f17:	83 ca 80             	or     $0xffffff80,%edx
c0030f1a:	88 50 05             	mov    %dl,0x5(%eax)
c0030f1d:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f20:	c1 e8 10             	shr    $0x10,%eax
c0030f23:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f26:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030f2a:	90                   	nop
c0030f2b:	5d                   	pop    %ebp
c0030f2c:	c3                   	ret    

c0030f2d <set_trap>:
c0030f2d:	55                   	push   %ebp
c0030f2e:	89 e5                	mov    %esp,%ebp
c0030f30:	e8 52 f2 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0030f35:	05 cb c0 00 00       	add    $0xc0cb,%eax
c0030f3a:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f3d:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f40:	66 89 02             	mov    %ax,(%edx)
c0030f43:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030f46:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f49:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030f4d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f50:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030f54:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f57:	8a 50 05             	mov    0x5(%eax),%dl
c0030f5a:	83 ca 0f             	or     $0xf,%edx
c0030f5d:	88 50 05             	mov    %dl,0x5(%eax)
c0030f60:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f63:	8a 50 05             	mov    0x5(%eax),%dl
c0030f66:	83 e2 ef             	and    $0xffffffef,%edx
c0030f69:	88 50 05             	mov    %dl,0x5(%eax)
c0030f6c:	8b 45 14             	mov    0x14(%ebp),%eax
c0030f6f:	88 c2                	mov    %al,%dl
c0030f71:	83 e2 03             	and    $0x3,%edx
c0030f74:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f77:	83 e2 03             	and    $0x3,%edx
c0030f7a:	88 d1                	mov    %dl,%cl
c0030f7c:	c1 e1 05             	shl    $0x5,%ecx
c0030f7f:	8a 50 05             	mov    0x5(%eax),%dl
c0030f82:	83 e2 9f             	and    $0xffffff9f,%edx
c0030f85:	09 ca                	or     %ecx,%edx
c0030f87:	88 50 05             	mov    %dl,0x5(%eax)
c0030f8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f8d:	8a 50 05             	mov    0x5(%eax),%dl
c0030f90:	83 ca 80             	or     $0xffffff80,%edx
c0030f93:	88 50 05             	mov    %dl,0x5(%eax)
c0030f96:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f99:	c1 e8 10             	shr    $0x10,%eax
c0030f9c:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f9f:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030fa3:	90                   	nop
c0030fa4:	5d                   	pop    %ebp
c0030fa5:	c3                   	ret    

c0030fa6 <init_idt>:
c0030fa6:	55                   	push   %ebp
c0030fa7:	89 e5                	mov    %esp,%ebp
c0030fa9:	53                   	push   %ebx
c0030faa:	83 ec 10             	sub    $0x10,%esp
c0030fad:	e8 d9 f1 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0030fb2:	81 c3 4e c0 00 00    	add    $0xc04e,%ebx
c0030fb8:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030fbf:	eb 2b                	jmp    c0030fec <init_idt+0x46>
c0030fc1:	c7 c0 cd 00 03 c0    	mov    $0xc00300cd,%eax
c0030fc7:	89 c2                	mov    %eax,%edx
c0030fc9:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030fcc:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0030fd3:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0030fd9:	01 c8                	add    %ecx,%eax
c0030fdb:	6a 00                	push   $0x0
c0030fdd:	52                   	push   %edx
c0030fde:	6a 08                	push   $0x8
c0030fe0:	50                   	push   %eax
c0030fe1:	e8 47 ff ff ff       	call   c0030f2d <set_trap>
c0030fe6:	83 c4 10             	add    $0x10,%esp
c0030fe9:	ff 45 f8             	incl   -0x8(%ebp)
c0030fec:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0030ff3:	7e cc                	jle    c0030fc1 <init_idt+0x1b>
c0030ff5:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030ffb:	6a 00                	push   $0x0
c0030ffd:	50                   	push   %eax
c0030ffe:	6a 08                	push   $0x8
c0031000:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0031006:	50                   	push   %eax
c0031007:	e8 21 ff ff ff       	call   c0030f2d <set_trap>
c003100c:	83 c4 10             	add    $0x10,%esp
c003100f:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c0031015:	89 c2                	mov    %eax,%edx
c0031017:	8d 83 88 16 01 00    	lea    0x11688(%ebx),%eax
c003101d:	6a 00                	push   $0x0
c003101f:	52                   	push   %edx
c0031020:	6a 08                	push   $0x8
c0031022:	50                   	push   %eax
c0031023:	e8 05 ff ff ff       	call   c0030f2d <set_trap>
c0031028:	83 c4 10             	add    $0x10,%esp
c003102b:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c0031031:	89 c2                	mov    %eax,%edx
c0031033:	8d 83 90 16 01 00    	lea    0x11690(%ebx),%eax
c0031039:	6a 00                	push   $0x0
c003103b:	52                   	push   %edx
c003103c:	6a 08                	push   $0x8
c003103e:	50                   	push   %eax
c003103f:	e8 e9 fe ff ff       	call   c0030f2d <set_trap>
c0031044:	83 c4 10             	add    $0x10,%esp
c0031047:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c003104d:	89 c2                	mov    %eax,%edx
c003104f:	8d 83 98 16 01 00    	lea    0x11698(%ebx),%eax
c0031055:	6a 00                	push   $0x0
c0031057:	52                   	push   %edx
c0031058:	6a 08                	push   $0x8
c003105a:	50                   	push   %eax
c003105b:	e8 cd fe ff ff       	call   c0030f2d <set_trap>
c0031060:	83 c4 10             	add    $0x10,%esp
c0031063:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c0031069:	89 c2                	mov    %eax,%edx
c003106b:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
c0031071:	6a 00                	push   $0x0
c0031073:	52                   	push   %edx
c0031074:	6a 08                	push   $0x8
c0031076:	50                   	push   %eax
c0031077:	e8 b1 fe ff ff       	call   c0030f2d <set_trap>
c003107c:	83 c4 10             	add    $0x10,%esp
c003107f:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c0031085:	89 c2                	mov    %eax,%edx
c0031087:	8d 83 a8 16 01 00    	lea    0x116a8(%ebx),%eax
c003108d:	6a 00                	push   $0x0
c003108f:	52                   	push   %edx
c0031090:	6a 08                	push   $0x8
c0031092:	50                   	push   %eax
c0031093:	e8 95 fe ff ff       	call   c0030f2d <set_trap>
c0031098:	83 c4 10             	add    $0x10,%esp
c003109b:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c00310a1:	89 c2                	mov    %eax,%edx
c00310a3:	8d 83 b0 16 01 00    	lea    0x116b0(%ebx),%eax
c00310a9:	6a 00                	push   $0x0
c00310ab:	52                   	push   %edx
c00310ac:	6a 08                	push   $0x8
c00310ae:	50                   	push   %eax
c00310af:	e8 79 fe ff ff       	call   c0030f2d <set_trap>
c00310b4:	83 c4 10             	add    $0x10,%esp
c00310b7:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c00310bd:	89 c2                	mov    %eax,%edx
c00310bf:	8d 83 b8 16 01 00    	lea    0x116b8(%ebx),%eax
c00310c5:	6a 00                	push   $0x0
c00310c7:	52                   	push   %edx
c00310c8:	6a 08                	push   $0x8
c00310ca:	50                   	push   %eax
c00310cb:	e8 5d fe ff ff       	call   c0030f2d <set_trap>
c00310d0:	83 c4 10             	add    $0x10,%esp
c00310d3:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c00310d9:	89 c2                	mov    %eax,%edx
c00310db:	8d 83 c0 16 01 00    	lea    0x116c0(%ebx),%eax
c00310e1:	6a 00                	push   $0x0
c00310e3:	52                   	push   %edx
c00310e4:	6a 08                	push   $0x8
c00310e6:	50                   	push   %eax
c00310e7:	e8 41 fe ff ff       	call   c0030f2d <set_trap>
c00310ec:	83 c4 10             	add    $0x10,%esp
c00310ef:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c00310f5:	89 c2                	mov    %eax,%edx
c00310f7:	8d 83 c8 16 01 00    	lea    0x116c8(%ebx),%eax
c00310fd:	6a 00                	push   $0x0
c00310ff:	52                   	push   %edx
c0031100:	6a 08                	push   $0x8
c0031102:	50                   	push   %eax
c0031103:	e8 25 fe ff ff       	call   c0030f2d <set_trap>
c0031108:	83 c4 10             	add    $0x10,%esp
c003110b:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c0031111:	89 c2                	mov    %eax,%edx
c0031113:	8d 83 d0 16 01 00    	lea    0x116d0(%ebx),%eax
c0031119:	6a 00                	push   $0x0
c003111b:	52                   	push   %edx
c003111c:	6a 08                	push   $0x8
c003111e:	50                   	push   %eax
c003111f:	e8 09 fe ff ff       	call   c0030f2d <set_trap>
c0031124:	83 c4 10             	add    $0x10,%esp
c0031127:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c003112d:	89 c2                	mov    %eax,%edx
c003112f:	8d 83 d8 16 01 00    	lea    0x116d8(%ebx),%eax
c0031135:	6a 00                	push   $0x0
c0031137:	52                   	push   %edx
c0031138:	6a 08                	push   $0x8
c003113a:	50                   	push   %eax
c003113b:	e8 ed fd ff ff       	call   c0030f2d <set_trap>
c0031140:	83 c4 10             	add    $0x10,%esp
c0031143:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c0031149:	89 c2                	mov    %eax,%edx
c003114b:	8d 83 e0 16 01 00    	lea    0x116e0(%ebx),%eax
c0031151:	6a 00                	push   $0x0
c0031153:	52                   	push   %edx
c0031154:	6a 08                	push   $0x8
c0031156:	50                   	push   %eax
c0031157:	e8 d1 fd ff ff       	call   c0030f2d <set_trap>
c003115c:	83 c4 10             	add    $0x10,%esp
c003115f:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0031165:	89 c2                	mov    %eax,%edx
c0031167:	8d 83 e8 16 01 00    	lea    0x116e8(%ebx),%eax
c003116d:	6a 00                	push   $0x0
c003116f:	52                   	push   %edx
c0031170:	6a 08                	push   $0x8
c0031172:	50                   	push   %eax
c0031173:	e8 b5 fd ff ff       	call   c0030f2d <set_trap>
c0031178:	83 c4 10             	add    $0x10,%esp
c003117b:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0031181:	89 c2                	mov    %eax,%edx
c0031183:	8d 83 f0 16 01 00    	lea    0x116f0(%ebx),%eax
c0031189:	6a 00                	push   $0x0
c003118b:	52                   	push   %edx
c003118c:	6a 08                	push   $0x8
c003118e:	50                   	push   %eax
c003118f:	e8 99 fd ff ff       	call   c0030f2d <set_trap>
c0031194:	83 c4 10             	add    $0x10,%esp
c0031197:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c003119d:	89 c2                	mov    %eax,%edx
c003119f:	8d 83 80 1a 01 00    	lea    0x11a80(%ebx),%eax
c00311a5:	6a 03                	push   $0x3
c00311a7:	52                   	push   %edx
c00311a8:	6a 08                	push   $0x8
c00311aa:	50                   	push   %eax
c00311ab:	e8 7d fd ff ff       	call   c0030f2d <set_trap>
c00311b0:	83 c4 10             	add    $0x10,%esp
c00311b3:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c00311b9:	89 c2                	mov    %eax,%edx
c00311bb:	8d 83 80 17 01 00    	lea    0x11780(%ebx),%eax
c00311c1:	6a 00                	push   $0x0
c00311c3:	52                   	push   %edx
c00311c4:	6a 08                	push   $0x8
c00311c6:	50                   	push   %eax
c00311c7:	e8 e5 fc ff ff       	call   c0030eb1 <set_intr>
c00311cc:	83 c4 10             	add    $0x10,%esp
c00311cf:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c00311d5:	89 c2                	mov    %eax,%edx
c00311d7:	8d 83 88 17 01 00    	lea    0x11788(%ebx),%eax
c00311dd:	6a 00                	push   $0x0
c00311df:	52                   	push   %edx
c00311e0:	6a 08                	push   $0x8
c00311e2:	50                   	push   %eax
c00311e3:	e8 c9 fc ff ff       	call   c0030eb1 <set_intr>
c00311e8:	83 c4 10             	add    $0x10,%esp
c00311eb:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c00311f1:	89 c2                	mov    %eax,%edx
c00311f3:	8d 83 90 17 01 00    	lea    0x11790(%ebx),%eax
c00311f9:	6a 00                	push   $0x0
c00311fb:	52                   	push   %edx
c00311fc:	6a 08                	push   $0x8
c00311fe:	50                   	push   %eax
c00311ff:	e8 ad fc ff ff       	call   c0030eb1 <set_intr>
c0031204:	83 c4 10             	add    $0x10,%esp
c0031207:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c003120d:	89 c2                	mov    %eax,%edx
c003120f:	8d 83 f0 17 01 00    	lea    0x117f0(%ebx),%eax
c0031215:	6a 00                	push   $0x0
c0031217:	52                   	push   %edx
c0031218:	6a 08                	push   $0x8
c003121a:	50                   	push   %eax
c003121b:	e8 91 fc ff ff       	call   c0030eb1 <set_intr>
c0031220:	83 c4 10             	add    $0x10,%esp
c0031223:	68 00 08 00 00       	push   $0x800
c0031228:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c003122e:	50                   	push   %eax
c003122f:	e8 31 fc ff ff       	call   c0030e65 <write_idtr>
c0031234:	83 c4 08             	add    $0x8,%esp
c0031237:	e8 64 fc ff ff       	call   c0030ea0 <sti>
c003123c:	90                   	nop
c003123d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031240:	c9                   	leave  
c0031241:	c3                   	ret    

c0031242 <fs_open>:
c0031242:	55                   	push   %ebp
c0031243:	89 e5                	mov    %esp,%ebp
c0031245:	53                   	push   %ebx
c0031246:	83 ec 04             	sub    $0x4,%esp
c0031249:	e8 39 ef ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003124e:	05 b2 bd 00 00       	add    $0xbdb2,%eax
c0031253:	8d 90 18 c5 ff ff    	lea    -0x3ae8(%eax),%edx
c0031259:	52                   	push   %edx
c003125a:	6a 28                	push   $0x28
c003125c:	8d 90 4f c3 ff ff    	lea    -0x3cb1(%eax),%edx
c0031262:	52                   	push   %edx
c0031263:	8d 90 5c c3 ff ff    	lea    -0x3ca4(%eax),%edx
c0031269:	52                   	push   %edx
c003126a:	89 c3                	mov    %eax,%ebx
c003126c:	e8 bb f8 ff ff       	call   c0030b2c <printk>
c0031271:	83 c4 10             	add    $0x10,%esp
c0031274:	b8 01 00 00 00       	mov    $0x1,%eax
c0031279:	82                   	nemu_trap 
c003127a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c003127f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031282:	c9                   	leave  
c0031283:	c3                   	ret    

c0031284 <fs_read>:
c0031284:	55                   	push   %ebp
c0031285:	89 e5                	mov    %esp,%ebp
c0031287:	53                   	push   %ebx
c0031288:	83 ec 04             	sub    $0x4,%esp
c003128b:	e8 fb ee ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0031290:	81 c3 70 bd 00 00    	add    $0xbd70,%ebx
c0031296:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c003129a:	7f 2f                	jg     c00312cb <fs_read+0x47>
c003129c:	83 ec 0c             	sub    $0xc,%esp
c003129f:	8d 83 b2 c3 ff ff    	lea    -0x3c4e(%ebx),%eax
c00312a5:	50                   	push   %eax
c00312a6:	8d 83 20 c5 ff ff    	lea    -0x3ae0(%ebx),%eax
c00312ac:	50                   	push   %eax
c00312ad:	6a 2e                	push   $0x2e
c00312af:	8d 83 4f c3 ff ff    	lea    -0x3cb1(%ebx),%eax
c00312b5:	50                   	push   %eax
c00312b6:	8d 83 bc c3 ff ff    	lea    -0x3c44(%ebx),%eax
c00312bc:	50                   	push   %eax
c00312bd:	e8 6a f8 ff ff       	call   c0030b2c <printk>
c00312c2:	83 c4 20             	add    $0x20,%esp
c00312c5:	b8 01 00 00 00       	mov    $0x1,%eax
c00312ca:	82                   	nemu_trap 
c00312cb:	8d 83 20 c5 ff ff    	lea    -0x3ae0(%ebx),%eax
c00312d1:	50                   	push   %eax
c00312d2:	6a 2f                	push   $0x2f
c00312d4:	8d 83 4f c3 ff ff    	lea    -0x3cb1(%ebx),%eax
c00312da:	50                   	push   %eax
c00312db:	8d 83 08 c4 ff ff    	lea    -0x3bf8(%ebx),%eax
c00312e1:	50                   	push   %eax
c00312e2:	e8 45 f8 ff ff       	call   c0030b2c <printk>
c00312e7:	83 c4 10             	add    $0x10,%esp
c00312ea:	b8 01 00 00 00       	mov    $0x1,%eax
c00312ef:	82                   	nemu_trap 
c00312f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00312f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312f8:	c9                   	leave  
c00312f9:	c3                   	ret    

c00312fa <fs_write>:
c00312fa:	55                   	push   %ebp
c00312fb:	89 e5                	mov    %esp,%ebp
c00312fd:	53                   	push   %ebx
c00312fe:	83 ec 14             	sub    $0x14,%esp
c0031301:	e8 85 ee ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0031306:	81 c3 fa bc 00 00    	add    $0xbcfa,%ebx
c003130c:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0031310:	7e 2f                	jle    c0031341 <fs_write+0x47>
c0031312:	83 ec 0c             	sub    $0xc,%esp
c0031315:	8d 83 5e c4 ff ff    	lea    -0x3ba2(%ebx),%eax
c003131b:	50                   	push   %eax
c003131c:	8d 83 28 c5 ff ff    	lea    -0x3ad8(%ebx),%eax
c0031322:	50                   	push   %eax
c0031323:	6a 35                	push   $0x35
c0031325:	8d 83 4f c3 ff ff    	lea    -0x3cb1(%ebx),%eax
c003132b:	50                   	push   %eax
c003132c:	8d 83 bc c3 ff ff    	lea    -0x3c44(%ebx),%eax
c0031332:	50                   	push   %eax
c0031333:	e8 f4 f7 ff ff       	call   c0030b2c <printk>
c0031338:	83 c4 20             	add    $0x20,%esp
c003133b:	b8 01 00 00 00       	mov    $0x1,%eax
c0031340:	82                   	nemu_trap 
c0031341:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031348:	eb 1c                	jmp    c0031366 <fs_write+0x6c>
c003134a:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003134d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031350:	01 d0                	add    %edx,%eax
c0031352:	8a 00                	mov    (%eax),%al
c0031354:	0f be c0             	movsbl %al,%eax
c0031357:	83 ec 0c             	sub    $0xc,%esp
c003135a:	50                   	push   %eax
c003135b:	e8 95 f7 ff ff       	call   c0030af5 <serial_printc>
c0031360:	83 c4 10             	add    $0x10,%esp
c0031363:	ff 45 f4             	incl   -0xc(%ebp)
c0031366:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031369:	39 45 10             	cmp    %eax,0x10(%ebp)
c003136c:	77 dc                	ja     c003134a <fs_write+0x50>
c003136e:	8b 45 10             	mov    0x10(%ebp),%eax
c0031371:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031374:	c9                   	leave  
c0031375:	c3                   	ret    

c0031376 <fs_lseek>:
c0031376:	55                   	push   %ebp
c0031377:	89 e5                	mov    %esp,%ebp
c0031379:	53                   	push   %ebx
c003137a:	83 ec 04             	sub    $0x4,%esp
c003137d:	e8 05 ee ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031382:	05 7e bc 00 00       	add    $0xbc7e,%eax
c0031387:	8d 90 34 c5 ff ff    	lea    -0x3acc(%eax),%edx
c003138d:	52                   	push   %edx
c003138e:	6a 48                	push   $0x48
c0031390:	8d 90 4f c3 ff ff    	lea    -0x3cb1(%eax),%edx
c0031396:	52                   	push   %edx
c0031397:	8d 90 68 c4 ff ff    	lea    -0x3b98(%eax),%edx
c003139d:	52                   	push   %edx
c003139e:	89 c3                	mov    %eax,%ebx
c00313a0:	e8 87 f7 ff ff       	call   c0030b2c <printk>
c00313a5:	83 c4 10             	add    $0x10,%esp
c00313a8:	b8 01 00 00 00       	mov    $0x1,%eax
c00313ad:	82                   	nemu_trap 
c00313ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00313b3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00313b6:	c9                   	leave  
c00313b7:	c3                   	ret    

c00313b8 <fs_close>:
c00313b8:	55                   	push   %ebp
c00313b9:	89 e5                	mov    %esp,%ebp
c00313bb:	53                   	push   %ebx
c00313bc:	83 ec 04             	sub    $0x4,%esp
c00313bf:	e8 c3 ed ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00313c4:	05 3c bc 00 00       	add    $0xbc3c,%eax
c00313c9:	8d 90 40 c5 ff ff    	lea    -0x3ac0(%eax),%edx
c00313cf:	52                   	push   %edx
c00313d0:	6a 4e                	push   $0x4e
c00313d2:	8d 90 4f c3 ff ff    	lea    -0x3cb1(%eax),%edx
c00313d8:	52                   	push   %edx
c00313d9:	8d 90 c0 c4 ff ff    	lea    -0x3b40(%eax),%edx
c00313df:	52                   	push   %edx
c00313e0:	89 c3                	mov    %eax,%ebx
c00313e2:	e8 45 f7 ff ff       	call   c0030b2c <printk>
c00313e7:	83 c4 10             	add    $0x10,%esp
c00313ea:	b8 01 00 00 00       	mov    $0x1,%eax
c00313ef:	82                   	nemu_trap 
c00313f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00313f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00313f8:	c9                   	leave  
c00313f9:	c3                   	ret    

c00313fa <sti>:
c00313fa:	55                   	push   %ebp
c00313fb:	89 e5                	mov    %esp,%ebp
c00313fd:	e8 85 ed ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031402:	05 fe bb 00 00       	add    $0xbbfe,%eax
c0031407:	fb                   	sti    
c0031408:	90                   	nop
c0031409:	5d                   	pop    %ebp
c003140a:	c3                   	ret    

c003140b <cli>:
c003140b:	55                   	push   %ebp
c003140c:	89 e5                	mov    %esp,%ebp
c003140e:	e8 74 ed ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031413:	05 ed bb 00 00       	add    $0xbbed,%eax
c0031418:	fa                   	cli    
c0031419:	90                   	nop
c003141a:	5d                   	pop    %ebp
c003141b:	c3                   	ret    

c003141c <sys_brk>:
c003141c:	55                   	push   %ebp
c003141d:	89 e5                	mov    %esp,%ebp
c003141f:	53                   	push   %ebx
c0031420:	83 ec 04             	sub    $0x4,%esp
c0031423:	e8 5f ed ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031428:	05 d8 bb 00 00       	add    $0xbbd8,%eax
c003142d:	8b 55 08             	mov    0x8(%ebp),%edx
c0031430:	8b 52 10             	mov    0x10(%edx),%edx
c0031433:	83 ec 0c             	sub    $0xc,%esp
c0031436:	52                   	push   %edx
c0031437:	89 c3                	mov    %eax,%ebx
c0031439:	e8 67 02 00 00       	call   c00316a5 <mm_brk>
c003143e:	83 c4 10             	add    $0x10,%esp
c0031441:	8b 45 08             	mov    0x8(%ebp),%eax
c0031444:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c003144b:	90                   	nop
c003144c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003144f:	c9                   	leave  
c0031450:	c3                   	ret    

c0031451 <sys_open>:
c0031451:	55                   	push   %ebp
c0031452:	89 e5                	mov    %esp,%ebp
c0031454:	53                   	push   %ebx
c0031455:	83 ec 04             	sub    $0x4,%esp
c0031458:	e8 2a ed ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003145d:	05 a3 bb 00 00       	add    $0xbba3,%eax
c0031462:	8b 55 08             	mov    0x8(%ebp),%edx
c0031465:	8b 52 18             	mov    0x18(%edx),%edx
c0031468:	89 d1                	mov    %edx,%ecx
c003146a:	8b 55 08             	mov    0x8(%ebp),%edx
c003146d:	8b 52 10             	mov    0x10(%edx),%edx
c0031470:	83 ec 08             	sub    $0x8,%esp
c0031473:	51                   	push   %ecx
c0031474:	52                   	push   %edx
c0031475:	89 c3                	mov    %eax,%ebx
c0031477:	e8 c6 fd ff ff       	call   c0031242 <fs_open>
c003147c:	83 c4 10             	add    $0x10,%esp
c003147f:	89 c2                	mov    %eax,%edx
c0031481:	8b 45 08             	mov    0x8(%ebp),%eax
c0031484:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031487:	90                   	nop
c0031488:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003148b:	c9                   	leave  
c003148c:	c3                   	ret    

c003148d <sys_read>:
c003148d:	55                   	push   %ebp
c003148e:	89 e5                	mov    %esp,%ebp
c0031490:	53                   	push   %ebx
c0031491:	83 ec 04             	sub    $0x4,%esp
c0031494:	e8 ee ec ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031499:	05 67 bb 00 00       	add    $0xbb67,%eax
c003149e:	8b 55 08             	mov    0x8(%ebp),%edx
c00314a1:	8b 52 14             	mov    0x14(%edx),%edx
c00314a4:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314a7:	8b 49 18             	mov    0x18(%ecx),%ecx
c00314aa:	89 cb                	mov    %ecx,%ebx
c00314ac:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314af:	8b 49 10             	mov    0x10(%ecx),%ecx
c00314b2:	83 ec 04             	sub    $0x4,%esp
c00314b5:	52                   	push   %edx
c00314b6:	53                   	push   %ebx
c00314b7:	51                   	push   %ecx
c00314b8:	89 c3                	mov    %eax,%ebx
c00314ba:	e8 c5 fd ff ff       	call   c0031284 <fs_read>
c00314bf:	83 c4 10             	add    $0x10,%esp
c00314c2:	89 c2                	mov    %eax,%edx
c00314c4:	8b 45 08             	mov    0x8(%ebp),%eax
c00314c7:	89 50 1c             	mov    %edx,0x1c(%eax)
c00314ca:	90                   	nop
c00314cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00314ce:	c9                   	leave  
c00314cf:	c3                   	ret    

c00314d0 <sys_write>:
c00314d0:	55                   	push   %ebp
c00314d1:	89 e5                	mov    %esp,%ebp
c00314d3:	53                   	push   %ebx
c00314d4:	83 ec 04             	sub    $0x4,%esp
c00314d7:	e8 ab ec ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00314dc:	05 24 bb 00 00       	add    $0xbb24,%eax
c00314e1:	8b 55 08             	mov    0x8(%ebp),%edx
c00314e4:	8b 52 14             	mov    0x14(%edx),%edx
c00314e7:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314ea:	8b 49 18             	mov    0x18(%ecx),%ecx
c00314ed:	89 cb                	mov    %ecx,%ebx
c00314ef:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314f2:	8b 49 10             	mov    0x10(%ecx),%ecx
c00314f5:	83 ec 04             	sub    $0x4,%esp
c00314f8:	52                   	push   %edx
c00314f9:	53                   	push   %ebx
c00314fa:	51                   	push   %ecx
c00314fb:	89 c3                	mov    %eax,%ebx
c00314fd:	e8 f8 fd ff ff       	call   c00312fa <fs_write>
c0031502:	83 c4 10             	add    $0x10,%esp
c0031505:	89 c2                	mov    %eax,%edx
c0031507:	8b 45 08             	mov    0x8(%ebp),%eax
c003150a:	89 50 1c             	mov    %edx,0x1c(%eax)
c003150d:	90                   	nop
c003150e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031511:	c9                   	leave  
c0031512:	c3                   	ret    

c0031513 <sys_lseek>:
c0031513:	55                   	push   %ebp
c0031514:	89 e5                	mov    %esp,%ebp
c0031516:	53                   	push   %ebx
c0031517:	83 ec 04             	sub    $0x4,%esp
c003151a:	e8 68 ec ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003151f:	05 e1 ba 00 00       	add    $0xbae1,%eax
c0031524:	8b 55 08             	mov    0x8(%ebp),%edx
c0031527:	8b 52 14             	mov    0x14(%edx),%edx
c003152a:	89 d3                	mov    %edx,%ebx
c003152c:	8b 55 08             	mov    0x8(%ebp),%edx
c003152f:	8b 52 18             	mov    0x18(%edx),%edx
c0031532:	89 d1                	mov    %edx,%ecx
c0031534:	8b 55 08             	mov    0x8(%ebp),%edx
c0031537:	8b 52 10             	mov    0x10(%edx),%edx
c003153a:	83 ec 04             	sub    $0x4,%esp
c003153d:	53                   	push   %ebx
c003153e:	51                   	push   %ecx
c003153f:	52                   	push   %edx
c0031540:	89 c3                	mov    %eax,%ebx
c0031542:	e8 2f fe ff ff       	call   c0031376 <fs_lseek>
c0031547:	83 c4 10             	add    $0x10,%esp
c003154a:	89 c2                	mov    %eax,%edx
c003154c:	8b 45 08             	mov    0x8(%ebp),%eax
c003154f:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031552:	90                   	nop
c0031553:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031556:	c9                   	leave  
c0031557:	c3                   	ret    

c0031558 <sys_close>:
c0031558:	55                   	push   %ebp
c0031559:	89 e5                	mov    %esp,%ebp
c003155b:	53                   	push   %ebx
c003155c:	83 ec 04             	sub    $0x4,%esp
c003155f:	e8 23 ec ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031564:	05 9c ba 00 00       	add    $0xba9c,%eax
c0031569:	8b 55 08             	mov    0x8(%ebp),%edx
c003156c:	8b 52 10             	mov    0x10(%edx),%edx
c003156f:	83 ec 0c             	sub    $0xc,%esp
c0031572:	52                   	push   %edx
c0031573:	89 c3                	mov    %eax,%ebx
c0031575:	e8 3e fe ff ff       	call   c00313b8 <fs_close>
c003157a:	83 c4 10             	add    $0x10,%esp
c003157d:	89 c2                	mov    %eax,%edx
c003157f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031582:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031585:	90                   	nop
c0031586:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031589:	c9                   	leave  
c003158a:	c3                   	ret    

c003158b <do_syscall>:
c003158b:	55                   	push   %ebp
c003158c:	89 e5                	mov    %esp,%ebp
c003158e:	53                   	push   %ebx
c003158f:	83 ec 04             	sub    $0x4,%esp
c0031592:	e8 f4 eb ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0031597:	81 c3 69 ba 00 00    	add    $0xba69,%ebx
c003159d:	8b 45 08             	mov    0x8(%ebp),%eax
c00315a0:	8b 40 1c             	mov    0x1c(%eax),%eax
c00315a3:	83 f8 2d             	cmp    $0x2d,%eax
c00315a6:	0f 87 98 00 00 00    	ja     c0031644 <.L10>
c00315ac:	c1 e0 02             	shl    $0x2,%eax
c00315af:	8b 84 18 bc c5 ff ff 	mov    -0x3a44(%eax,%ebx,1),%eax
c00315b6:	01 d8                	add    %ebx,%eax
c00315b8:	ff e0                	jmp    *%eax

c00315ba <.L18>:
c00315ba:	e8 4c fe ff ff       	call   c003140b <cli>
c00315bf:	8b 45 08             	mov    0x8(%ebp),%eax
c00315c2:	8b 40 18             	mov    0x18(%eax),%eax
c00315c5:	89 c2                	mov    %eax,%edx
c00315c7:	8b 45 08             	mov    0x8(%ebp),%eax
c00315ca:	8b 40 10             	mov    0x10(%eax),%eax
c00315cd:	83 ec 08             	sub    $0x8,%esp
c00315d0:	52                   	push   %edx
c00315d1:	50                   	push   %eax
c00315d2:	e8 a9 f5 ff ff       	call   c0030b80 <add_irq_handle>
c00315d7:	83 c4 10             	add    $0x10,%esp
c00315da:	e8 1b fe ff ff       	call   c00313fa <sti>
c00315df:	e9 8f 00 00 00       	jmp    c0031673 <.L10+0x2f>

c00315e4 <.L11>:
c00315e4:	83 ec 0c             	sub    $0xc,%esp
c00315e7:	ff 75 08             	pushl  0x8(%ebp)
c00315ea:	e8 2d fe ff ff       	call   c003141c <sys_brk>
c00315ef:	83 c4 10             	add    $0x10,%esp
c00315f2:	eb 7f                	jmp    c0031673 <.L10+0x2f>

c00315f4 <.L15>:
c00315f4:	83 ec 0c             	sub    $0xc,%esp
c00315f7:	ff 75 08             	pushl  0x8(%ebp)
c00315fa:	e8 52 fe ff ff       	call   c0031451 <sys_open>
c00315ff:	83 c4 10             	add    $0x10,%esp
c0031602:	eb 6f                	jmp    c0031673 <.L10+0x2f>

c0031604 <.L17>:
c0031604:	83 ec 0c             	sub    $0xc,%esp
c0031607:	ff 75 08             	pushl  0x8(%ebp)
c003160a:	e8 7e fe ff ff       	call   c003148d <sys_read>
c003160f:	83 c4 10             	add    $0x10,%esp
c0031612:	eb 5f                	jmp    c0031673 <.L10+0x2f>

c0031614 <.L16>:
c0031614:	83 ec 0c             	sub    $0xc,%esp
c0031617:	ff 75 08             	pushl  0x8(%ebp)
c003161a:	e8 b1 fe ff ff       	call   c00314d0 <sys_write>
c003161f:	83 c4 10             	add    $0x10,%esp
c0031622:	eb 4f                	jmp    c0031673 <.L10+0x2f>

c0031624 <.L13>:
c0031624:	83 ec 0c             	sub    $0xc,%esp
c0031627:	ff 75 08             	pushl  0x8(%ebp)
c003162a:	e8 e4 fe ff ff       	call   c0031513 <sys_lseek>
c003162f:	83 c4 10             	add    $0x10,%esp
c0031632:	eb 3f                	jmp    c0031673 <.L10+0x2f>

c0031634 <.L14>:
c0031634:	83 ec 0c             	sub    $0xc,%esp
c0031637:	ff 75 08             	pushl  0x8(%ebp)
c003163a:	e8 19 ff ff ff       	call   c0031558 <sys_close>
c003163f:	83 c4 10             	add    $0x10,%esp
c0031642:	eb 2f                	jmp    c0031673 <.L10+0x2f>

c0031644 <.L10>:
c0031644:	8b 45 08             	mov    0x8(%ebp),%eax
c0031647:	8b 40 1c             	mov    0x1c(%eax),%eax
c003164a:	83 ec 0c             	sub    $0xc,%esp
c003164d:	50                   	push   %eax
c003164e:	8d 83 74 c6 ff ff    	lea    -0x398c(%ebx),%eax
c0031654:	50                   	push   %eax
c0031655:	6a 4a                	push   $0x4a
c0031657:	8d 83 4c c5 ff ff    	lea    -0x3ab4(%ebx),%eax
c003165d:	50                   	push   %eax
c003165e:	8d 83 68 c5 ff ff    	lea    -0x3a98(%ebx),%eax
c0031664:	50                   	push   %eax
c0031665:	e8 c2 f4 ff ff       	call   c0030b2c <printk>
c003166a:	83 c4 20             	add    $0x20,%esp
c003166d:	b8 01 00 00 00       	mov    $0x1,%eax
c0031672:	82                   	nemu_trap 
c0031673:	90                   	nop
c0031674:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031677:	c9                   	leave  
c0031678:	c3                   	ret    

c0031679 <get_updir>:
c0031679:	55                   	push   %ebp
c003167a:	89 e5                	mov    %esp,%ebp
c003167c:	e8 06 eb ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031681:	05 7f b9 00 00       	add    $0xb97f,%eax
c0031686:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003168c:	5d                   	pop    %ebp
c003168d:	c3                   	ret    

c003168e <get_ucr3>:
c003168e:	55                   	push   %ebp
c003168f:	89 e5                	mov    %esp,%ebp
c0031691:	e8 f1 ea ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031696:	05 6a b9 00 00       	add    $0xb96a,%eax
c003169b:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c00316a1:	8b 00                	mov    (%eax),%eax
c00316a3:	5d                   	pop    %ebp
c00316a4:	c3                   	ret    

c00316a5 <mm_brk>:
c00316a5:	55                   	push   %ebp
c00316a6:	89 e5                	mov    %esp,%ebp
c00316a8:	53                   	push   %ebx
c00316a9:	83 ec 04             	sub    $0x4,%esp
c00316ac:	e8 da ea ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00316b1:	81 c3 4f b9 00 00    	add    $0xb94f,%ebx
c00316b7:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c00316bd:	39 45 08             	cmp    %eax,0x8(%ebp)
c00316c0:	76 22                	jbe    c00316e4 <mm_brk+0x3f>
c00316c2:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c00316c8:	8b 55 08             	mov    0x8(%ebp),%edx
c00316cb:	29 c2                	sub    %eax,%edx
c00316cd:	89 d0                	mov    %edx,%eax
c00316cf:	89 c2                	mov    %eax,%edx
c00316d1:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c00316d7:	83 ec 08             	sub    $0x8,%esp
c00316da:	52                   	push   %edx
c00316db:	50                   	push   %eax
c00316dc:	e8 af 04 00 00       	call   c0031b90 <mm_malloc>
c00316e1:	83 c4 10             	add    $0x10,%esp
c00316e4:	8b 45 08             	mov    0x8(%ebp),%eax
c00316e7:	89 83 88 1e 01 00    	mov    %eax,0x11e88(%ebx)
c00316ed:	90                   	nop
c00316ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00316f1:	c9                   	leave  
c00316f2:	c3                   	ret    

c00316f3 <init_mm>:
c00316f3:	55                   	push   %ebp
c00316f4:	89 e5                	mov    %esp,%ebp
c00316f6:	53                   	push   %ebx
c00316f7:	83 ec 14             	sub    $0x14,%esp
c00316fa:	e8 8c ea ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00316ff:	81 c3 01 b9 00 00    	add    $0xb901,%ebx
c0031705:	e8 10 02 00 00       	call   c003191a <get_kpdir>
c003170a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003170d:	83 ec 04             	sub    $0x4,%esp
c0031710:	68 00 10 00 00       	push   $0x1000
c0031715:	6a 00                	push   $0x0
c0031717:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003171d:	50                   	push   %eax
c003171e:	e8 49 07 00 00       	call   c0031e6c <memset>
c0031723:	83 c4 10             	add    $0x10,%esp
c0031726:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031729:	05 00 0c 00 00       	add    $0xc00,%eax
c003172e:	83 ec 04             	sub    $0x4,%esp
c0031731:	68 80 00 00 00       	push   $0x80
c0031736:	50                   	push   %eax
c0031737:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003173d:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c0031743:	50                   	push   %eax
c0031744:	e8 db 06 00 00       	call   c0031e24 <memcpy>
c0031749:	83 c4 10             	add    $0x10,%esp
c003174c:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031752:	05 00 00 00 40       	add    $0x40000000,%eax
c0031757:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c003175c:	89 c2                	mov    %eax,%edx
c003175e:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031764:	89 10                	mov    %edx,(%eax)
c0031766:	90                   	nop
c0031767:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003176a:	c9                   	leave  
c003176b:	c3                   	ret    

c003176c <create_video_mapping>:
c003176c:	55                   	push   %ebp
c003176d:	89 e5                	mov    %esp,%ebp
c003176f:	53                   	push   %ebx
c0031770:	83 ec 04             	sub    $0x4,%esp
c0031773:	e8 0f ea ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031778:	05 88 b8 00 00       	add    $0xb888,%eax
c003177d:	8d 90 38 c7 ff ff    	lea    -0x38c8(%eax),%edx
c0031783:	52                   	push   %edx
c0031784:	6a 14                	push   $0x14
c0031786:	8d 90 80 c6 ff ff    	lea    -0x3980(%eax),%edx
c003178c:	52                   	push   %edx
c003178d:	8d 90 94 c6 ff ff    	lea    -0x396c(%eax),%edx
c0031793:	52                   	push   %edx
c0031794:	89 c3                	mov    %eax,%ebx
c0031796:	e8 91 f3 ff ff       	call   c0030b2c <printk>
c003179b:	83 c4 10             	add    $0x10,%esp
c003179e:	b8 01 00 00 00       	mov    $0x1,%eax
c00317a3:	82                   	nemu_trap 
c00317a4:	90                   	nop
c00317a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00317a8:	c9                   	leave  
c00317a9:	c3                   	ret    

c00317aa <video_mapping_write_test>:
c00317aa:	55                   	push   %ebp
c00317ab:	89 e5                	mov    %esp,%ebp
c00317ad:	83 ec 10             	sub    $0x10,%esp
c00317b0:	e8 d2 e9 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00317b5:	05 4b b8 00 00       	add    $0xb84b,%eax
c00317ba:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c00317c1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00317c8:	eb 17                	jmp    c00317e1 <video_mapping_write_test+0x37>
c00317ca:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00317cd:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00317d4:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00317d7:	01 c2                	add    %eax,%edx
c00317d9:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00317dc:	89 02                	mov    %eax,(%edx)
c00317de:	ff 45 fc             	incl   -0x4(%ebp)
c00317e1:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c00317e8:	7e e0                	jle    c00317ca <video_mapping_write_test+0x20>
c00317ea:	90                   	nop
c00317eb:	c9                   	leave  
c00317ec:	c3                   	ret    

c00317ed <video_mapping_read_test>:
c00317ed:	55                   	push   %ebp
c00317ee:	89 e5                	mov    %esp,%ebp
c00317f0:	53                   	push   %ebx
c00317f1:	83 ec 14             	sub    $0x14,%esp
c00317f4:	e8 92 e9 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c00317f9:	81 c3 07 b8 00 00    	add    $0xb807,%ebx
c00317ff:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c0031806:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003180d:	eb 4a                	jmp    c0031859 <video_mapping_read_test+0x6c>
c003180f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031812:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031819:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003181c:	01 d0                	add    %edx,%eax
c003181e:	8b 10                	mov    (%eax),%edx
c0031820:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031823:	39 c2                	cmp    %eax,%edx
c0031825:	74 2f                	je     c0031856 <video_mapping_read_test+0x69>
c0031827:	83 ec 0c             	sub    $0xc,%esp
c003182a:	8d 83 dd c6 ff ff    	lea    -0x3923(%ebx),%eax
c0031830:	50                   	push   %eax
c0031831:	8d 83 50 c7 ff ff    	lea    -0x38b0(%ebx),%eax
c0031837:	50                   	push   %eax
c0031838:	6a 27                	push   $0x27
c003183a:	8d 83 80 c6 ff ff    	lea    -0x3980(%ebx),%eax
c0031840:	50                   	push   %eax
c0031841:	8d 83 ec c6 ff ff    	lea    -0x3914(%ebx),%eax
c0031847:	50                   	push   %eax
c0031848:	e8 df f2 ff ff       	call   c0030b2c <printk>
c003184d:	83 c4 20             	add    $0x20,%esp
c0031850:	b8 01 00 00 00       	mov    $0x1,%eax
c0031855:	82                   	nemu_trap 
c0031856:	ff 45 f4             	incl   -0xc(%ebp)
c0031859:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0031860:	7e ad                	jle    c003180f <video_mapping_read_test+0x22>
c0031862:	90                   	nop
c0031863:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031866:	c9                   	leave  
c0031867:	c3                   	ret    

c0031868 <video_mapping_clear>:
c0031868:	55                   	push   %ebp
c0031869:	89 e5                	mov    %esp,%ebp
c003186b:	53                   	push   %ebx
c003186c:	83 ec 04             	sub    $0x4,%esp
c003186f:	e8 13 e9 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031874:	05 8c b7 00 00       	add    $0xb78c,%eax
c0031879:	83 ec 04             	sub    $0x4,%esp
c003187c:	68 00 fa 00 00       	push   $0xfa00
c0031881:	6a 00                	push   $0x0
c0031883:	68 00 00 0a 00       	push   $0xa0000
c0031888:	89 c3                	mov    %eax,%ebx
c003188a:	e8 dd 05 00 00       	call   c0031e6c <memset>
c003188f:	83 c4 10             	add    $0x10,%esp
c0031892:	90                   	nop
c0031893:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031896:	c9                   	leave  
c0031897:	c3                   	ret    

c0031898 <read_cr0>:
c0031898:	55                   	push   %ebp
c0031899:	89 e5                	mov    %esp,%ebp
c003189b:	83 ec 10             	sub    $0x10,%esp
c003189e:	e8 e4 e8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00318a3:	05 5d b7 00 00       	add    $0xb75d,%eax
c00318a8:	0f 20 c0             	mov    %cr0,%eax
c00318ab:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00318ae:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00318b1:	c9                   	leave  
c00318b2:	c3                   	ret    

c00318b3 <write_cr0>:
c00318b3:	55                   	push   %ebp
c00318b4:	89 e5                	mov    %esp,%ebp
c00318b6:	e8 cc e8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00318bb:	05 45 b7 00 00       	add    $0xb745,%eax
c00318c0:	8b 45 08             	mov    0x8(%ebp),%eax
c00318c3:	0f 22 c0             	mov    %eax,%cr0
c00318c6:	90                   	nop
c00318c7:	5d                   	pop    %ebp
c00318c8:	c3                   	ret    

c00318c9 <write_cr3>:
c00318c9:	55                   	push   %ebp
c00318ca:	89 e5                	mov    %esp,%ebp
c00318cc:	e8 b6 e8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00318d1:	05 2f b7 00 00       	add    $0xb72f,%eax
c00318d6:	8b 45 08             	mov    0x8(%ebp),%eax
c00318d9:	0f 22 d8             	mov    %eax,%cr3
c00318dc:	90                   	nop
c00318dd:	5d                   	pop    %ebp
c00318de:	c3                   	ret    

c00318df <write_gdtr>:
c00318df:	55                   	push   %ebp
c00318e0:	89 e5                	mov    %esp,%ebp
c00318e2:	e8 a0 e8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c00318e7:	05 19 b7 00 00       	add    $0xb719,%eax
c00318ec:	8b 55 0c             	mov    0xc(%ebp),%edx
c00318ef:	4a                   	dec    %edx
c00318f0:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
c00318f7:	8b 55 08             	mov    0x8(%ebp),%edx
c00318fa:	66 89 90 8e 1e 01 00 	mov    %dx,0x11e8e(%eax)
c0031901:	8b 55 08             	mov    0x8(%ebp),%edx
c0031904:	c1 ea 10             	shr    $0x10,%edx
c0031907:	66 89 90 90 1e 01 00 	mov    %dx,0x11e90(%eax)
c003190e:	8d 80 8c 1e 01 00    	lea    0x11e8c(%eax),%eax
c0031914:	0f 01 10             	lgdtl  (%eax)
c0031917:	90                   	nop
c0031918:	5d                   	pop    %ebp
c0031919:	c3                   	ret    

c003191a <get_kpdir>:
c003191a:	55                   	push   %ebp
c003191b:	89 e5                	mov    %esp,%ebp
c003191d:	e8 65 e8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031922:	05 de b6 00 00       	add    $0xb6de,%eax
c0031927:	c7 c0 00 40 07 c0    	mov    $0xc0074000,%eax
c003192d:	5d                   	pop    %ebp
c003192e:	c3                   	ret    

c003192f <init_page>:
c003192f:	55                   	push   %ebp
c0031930:	89 e5                	mov    %esp,%ebp
c0031932:	53                   	push   %ebx
c0031933:	83 ec 24             	sub    $0x24,%esp
c0031936:	e8 4c e8 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c003193b:	05 c5 b6 00 00       	add    $0xb6c5,%eax
c0031940:	c7 c2 00 40 07 c0    	mov    $0xc0074000,%edx
c0031946:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c003194c:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003194f:	c7 c2 00 50 07 c0    	mov    $0xc0075000,%edx
c0031955:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c003195b:	89 55 f4             	mov    %edx,-0xc(%ebp)
c003195e:	83 ec 04             	sub    $0x4,%esp
c0031961:	68 00 10 00 00       	push   $0x1000
c0031966:	6a 00                	push   $0x0
c0031968:	ff 75 e4             	pushl  -0x1c(%ebp)
c003196b:	89 c3                	mov    %eax,%ebx
c003196d:	e8 fa 04 00 00       	call   c0031e6c <memset>
c0031972:	83 c4 10             	add    $0x10,%esp
c0031975:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c003197c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c0031983:	eb 70                	jmp    c00319f5 <init_page+0xc6>
c0031985:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031988:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c003198d:	89 c2                	mov    %eax,%edx
c003198f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031992:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031999:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003199c:	01 c8                	add    %ecx,%eax
c003199e:	83 ca 07             	or     $0x7,%edx
c00319a1:	89 10                	mov    %edx,(%eax)
c00319a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00319a6:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00319ab:	89 c2                	mov    %eax,%edx
c00319ad:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00319b0:	05 00 03 00 00       	add    $0x300,%eax
c00319b5:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c00319bc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00319bf:	01 c8                	add    %ecx,%eax
c00319c1:	83 ca 07             	or     $0x7,%edx
c00319c4:	89 10                	mov    %edx,(%eax)
c00319c6:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c00319cd:	eb 1a                	jmp    c00319e9 <init_page+0xba>
c00319cf:	8b 45 e8             	mov    -0x18(%ebp),%eax
c00319d2:	c1 e0 0c             	shl    $0xc,%eax
c00319d5:	83 c8 07             	or     $0x7,%eax
c00319d8:	89 c2                	mov    %eax,%edx
c00319da:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00319dd:	89 10                	mov    %edx,(%eax)
c00319df:	ff 45 e8             	incl   -0x18(%ebp)
c00319e2:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c00319e6:	ff 45 ec             	incl   -0x14(%ebp)
c00319e9:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c00319f0:	76 dd                	jbe    c00319cf <init_page+0xa0>
c00319f2:	ff 45 f0             	incl   -0x10(%ebp)
c00319f5:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c00319f9:	76 8a                	jbe    c0031985 <init_page+0x56>
c00319fb:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0031a02:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031a05:	c1 e8 0c             	shr    $0xc,%eax
c0031a08:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0031a0d:	c1 e0 0c             	shl    $0xc,%eax
c0031a10:	89 c2                	mov    %eax,%edx
c0031a12:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0031a15:	25 ff 0f 00 00       	and    $0xfff,%eax
c0031a1a:	09 d0                	or     %edx,%eax
c0031a1c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031a1f:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0031a22:	83 ec 0c             	sub    $0xc,%esp
c0031a25:	50                   	push   %eax
c0031a26:	e8 9e fe ff ff       	call   c00318c9 <write_cr3>
c0031a2b:	83 c4 10             	add    $0x10,%esp
c0031a2e:	e8 65 fe ff ff       	call   c0031898 <read_cr0>
c0031a33:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0031a36:	8a 45 e3             	mov    -0x1d(%ebp),%al
c0031a39:	83 c8 80             	or     $0xffffff80,%eax
c0031a3c:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0031a3f:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031a42:	83 ec 0c             	sub    $0xc,%esp
c0031a45:	50                   	push   %eax
c0031a46:	e8 68 fe ff ff       	call   c00318b3 <write_cr0>
c0031a4b:	83 c4 10             	add    $0x10,%esp
c0031a4e:	90                   	nop
c0031a4f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a52:	c9                   	leave  
c0031a53:	c3                   	ret    

c0031a54 <set_segment>:
c0031a54:	55                   	push   %ebp
c0031a55:	89 e5                	mov    %esp,%ebp
c0031a57:	e8 2b e7 ff ff       	call   c0030187 <__x86.get_pc_thunk.ax>
c0031a5c:	05 a4 b5 00 00       	add    $0xb5a4,%eax
c0031a61:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a64:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031a69:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a6c:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0031a72:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a75:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031a79:	8b 45 10             	mov    0x10(%ebp),%eax
c0031a7c:	88 c2                	mov    %al,%dl
c0031a7e:	83 e2 0f             	and    $0xf,%edx
c0031a81:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a84:	88 d1                	mov    %dl,%cl
c0031a86:	83 e1 0f             	and    $0xf,%ecx
c0031a89:	8a 50 05             	mov    0x5(%eax),%dl
c0031a8c:	83 e2 f0             	and    $0xfffffff0,%edx
c0031a8f:	09 ca                	or     %ecx,%edx
c0031a91:	88 50 05             	mov    %dl,0x5(%eax)
c0031a94:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a97:	8a 50 05             	mov    0x5(%eax),%dl
c0031a9a:	83 ca 10             	or     $0x10,%edx
c0031a9d:	88 50 05             	mov    %dl,0x5(%eax)
c0031aa0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031aa3:	88 c2                	mov    %al,%dl
c0031aa5:	83 e2 03             	and    $0x3,%edx
c0031aa8:	8b 45 08             	mov    0x8(%ebp),%eax
c0031aab:	83 e2 03             	and    $0x3,%edx
c0031aae:	88 d1                	mov    %dl,%cl
c0031ab0:	c1 e1 05             	shl    $0x5,%ecx
c0031ab3:	8a 50 05             	mov    0x5(%eax),%dl
c0031ab6:	83 e2 9f             	and    $0xffffff9f,%edx
c0031ab9:	09 ca                	or     %ecx,%edx
c0031abb:	88 50 05             	mov    %dl,0x5(%eax)
c0031abe:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ac1:	8a 50 05             	mov    0x5(%eax),%dl
c0031ac4:	83 ca 80             	or     $0xffffff80,%edx
c0031ac7:	88 50 05             	mov    %dl,0x5(%eax)
c0031aca:	8b 45 08             	mov    0x8(%ebp),%eax
c0031acd:	8a 50 06             	mov    0x6(%eax),%dl
c0031ad0:	83 ca 0f             	or     $0xf,%edx
c0031ad3:	88 50 06             	mov    %dl,0x6(%eax)
c0031ad6:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ad9:	8a 50 06             	mov    0x6(%eax),%dl
c0031adc:	83 e2 ef             	and    $0xffffffef,%edx
c0031adf:	88 50 06             	mov    %dl,0x6(%eax)
c0031ae2:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ae5:	8a 50 06             	mov    0x6(%eax),%dl
c0031ae8:	83 e2 df             	and    $0xffffffdf,%edx
c0031aeb:	88 50 06             	mov    %dl,0x6(%eax)
c0031aee:	8b 45 08             	mov    0x8(%ebp),%eax
c0031af1:	8a 50 06             	mov    0x6(%eax),%dl
c0031af4:	83 ca 40             	or     $0x40,%edx
c0031af7:	88 50 06             	mov    %dl,0x6(%eax)
c0031afa:	8b 45 08             	mov    0x8(%ebp),%eax
c0031afd:	8a 50 06             	mov    0x6(%eax),%dl
c0031b00:	83 ca 80             	or     $0xffffff80,%edx
c0031b03:	88 50 06             	mov    %dl,0x6(%eax)
c0031b06:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b09:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0031b0d:	90                   	nop
c0031b0e:	5d                   	pop    %ebp
c0031b0f:	c3                   	ret    

c0031b10 <init_segment>:
c0031b10:	55                   	push   %ebp
c0031b11:	89 e5                	mov    %esp,%ebp
c0031b13:	53                   	push   %ebx
c0031b14:	83 ec 04             	sub    $0x4,%esp
c0031b17:	e8 6f e6 ff ff       	call   c003018b <__x86.get_pc_thunk.bx>
c0031b1c:	81 c3 e4 b4 00 00    	add    $0xb4e4,%ebx
c0031b22:	83 ec 04             	sub    $0x4,%esp
c0031b25:	6a 18                	push   $0x18
c0031b27:	6a 00                	push   $0x0
c0031b29:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b2f:	50                   	push   %eax
c0031b30:	e8 37 03 00 00       	call   c0031e6c <memset>
c0031b35:	83 c4 10             	add    $0x10,%esp
c0031b38:	83 ec 04             	sub    $0x4,%esp
c0031b3b:	6a 0a                	push   $0xa
c0031b3d:	6a 00                	push   $0x0
c0031b3f:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b45:	8d 40 08             	lea    0x8(%eax),%eax
c0031b48:	50                   	push   %eax
c0031b49:	e8 06 ff ff ff       	call   c0031a54 <set_segment>
c0031b4e:	83 c4 10             	add    $0x10,%esp
c0031b51:	83 ec 04             	sub    $0x4,%esp
c0031b54:	6a 02                	push   $0x2
c0031b56:	6a 00                	push   $0x0
c0031b58:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b5e:	8d 40 10             	lea    0x10(%eax),%eax
c0031b61:	50                   	push   %eax
c0031b62:	e8 ed fe ff ff       	call   c0031a54 <set_segment>
c0031b67:	83 c4 10             	add    $0x10,%esp
c0031b6a:	83 ec 08             	sub    $0x8,%esp
c0031b6d:	6a 18                	push   $0x18
c0031b6f:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b75:	50                   	push   %eax
c0031b76:	e8 64 fd ff ff       	call   c00318df <write_gdtr>
c0031b7b:	83 c4 10             	add    $0x10,%esp
c0031b7e:	90                   	nop
c0031b7f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b82:	c9                   	leave  
c0031b83:	c3                   	ret    
c0031b84:	66 90                	xchg   %ax,%ax
c0031b86:	66 90                	xchg   %ax,%ax
c0031b88:	66 90                	xchg   %ax,%ax
c0031b8a:	66 90                	xchg   %ax,%ax
c0031b8c:	66 90                	xchg   %ax,%ax
c0031b8e:	66 90                	xchg   %ax,%ax

c0031b90 <mm_malloc>:
c0031b90:	55                   	push   %ebp
c0031b91:	31 c0                	xor    %eax,%eax
c0031b93:	89 e5                	mov    %esp,%ebp
c0031b95:	57                   	push   %edi
c0031b96:	56                   	push   %esi
c0031b97:	53                   	push   %ebx
c0031b98:	83 ec 3c             	sub    $0x3c,%esp
c0031b9b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031b9e:	85 db                	test   %ebx,%ebx
c0031ba0:	0f 8e 36 02 00 00    	jle    c0031ddc <mm_malloc+0x24c>
c0031ba6:	e8 ce fa ff ff       	call   c0031679 <get_updir>
c0031bab:	89 c6                	mov    %eax,%esi
c0031bad:	e8 dc fa ff ff       	call   c003168e <get_ucr3>
c0031bb2:	8b 55 08             	mov    0x8(%ebp),%edx
c0031bb5:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031bb9:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031bbc:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031bbf:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031bc4:	29 d0                	sub    %edx,%eax
c0031bc6:	89 da                	mov    %ebx,%edx
c0031bc8:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031bce:	01 d0                	add    %edx,%eax
c0031bd0:	85 c0                	test   %eax,%eax
c0031bd2:	0f 8e c0 00 00 00    	jle    c0031c98 <mm_malloc+0x108>
c0031bd8:	8b 55 08             	mov    0x8(%ebp),%edx
c0031bdb:	83 e8 01             	sub    $0x1,%eax
c0031bde:	89 f7                	mov    %esi,%edi
c0031be0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031be5:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031bec:	89 d3                	mov    %edx,%ebx
c0031bee:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031bf1:	eb 51                	jmp    c0031c44 <mm_malloc+0xb4>
c0031bf3:	90                   	nop
c0031bf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031bf8:	8b 31                	mov    (%ecx),%esi
c0031bfa:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031c00:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031c06:	89 d8                	mov    %ebx,%eax
c0031c08:	c1 e8 0a             	shr    $0xa,%eax
c0031c0b:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031c10:	01 c6                	add    %eax,%esi
c0031c12:	f6 06 01             	testb  $0x1,(%esi)
c0031c15:	75 22                	jne    c0031c39 <mm_malloc+0xa9>
c0031c17:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031c1c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031c21:	0f 8f c1 01 00 00    	jg     c0031de8 <mm_malloc+0x258>
c0031c27:	89 c1                	mov    %eax,%ecx
c0031c29:	83 c0 01             	add    $0x1,%eax
c0031c2c:	c1 e1 0c             	shl    $0xc,%ecx
c0031c2f:	83 c9 07             	or     $0x7,%ecx
c0031c32:	89 0e                	mov    %ecx,(%esi)
c0031c34:	a3 20 d0 03 c0       	mov    %eax,0xc003d020
c0031c39:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031c3f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031c42:	74 54                	je     c0031c98 <mm_malloc+0x108>
c0031c44:	89 d8                	mov    %ebx,%eax
c0031c46:	c1 e8 16             	shr    $0x16,%eax
c0031c49:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031c4c:	f6 01 01             	testb  $0x1,(%ecx)
c0031c4f:	75 a7                	jne    c0031bf8 <mm_malloc+0x68>
c0031c51:	a1 00 f0 04 c0       	mov    0xc004f000,%eax
c0031c56:	89 c6                	mov    %eax,%esi
c0031c58:	83 c0 01             	add    $0x1,%eax
c0031c5b:	c1 e6 0c             	shl    $0xc,%esi
c0031c5e:	81 c6 00 00 05 c0    	add    $0xc0050000,%esi
c0031c64:	a3 00 f0 04 c0       	mov    %eax,0xc004f000
c0031c69:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031c6f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c74:	83 c8 07             	or     $0x7,%eax
c0031c77:	89 01                	mov    %eax,(%ecx)
c0031c79:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031c80:	00 
c0031c81:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031c88:	00 
c0031c89:	89 34 24             	mov    %esi,(%esp)
c0031c8c:	e8 db 01 00 00       	call   c0031e6c <memset>
c0031c91:	e9 70 ff ff ff       	jmp    c0031c06 <mm_malloc+0x76>
c0031c96:	66 90                	xchg   %ax,%ax
c0031c98:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031c9b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031c9e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031ca4:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031caa:	c1 e8 16             	shr    $0x16,%eax
c0031cad:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031cb0:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031cb6:	75 32                	jne    c0031cea <mm_malloc+0x15a>
c0031cb8:	c7 44 24 10 8c 97 03 	movl   $0xc003978c,0x10(%esp)
c0031cbf:	c0 
c0031cc0:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031cc7:	c0 
c0031cc8:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031ccf:	00 
c0031cd0:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031cd7:	c0 
c0031cd8:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031cdf:	e8 48 ee ff ff       	call   c0030b2c <printk>
c0031ce4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031ce9:	82                   	nemu_trap 
c0031cea:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0031ced:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c0031cf3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031cf8:	c1 ea 0c             	shr    $0xc,%edx
c0031cfb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031d01:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c0031d05:	75 32                	jne    c0031d39 <mm_malloc+0x1a9>
c0031d07:	c7 44 24 10 94 97 03 	movl   $0xc0039794,0x10(%esp)
c0031d0e:	c0 
c0031d0f:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031d16:	c0 
c0031d17:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d1e:	00 
c0031d1f:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031d26:	c0 
c0031d27:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031d2e:	e8 f9 ed ff ff       	call   c0030b2c <printk>
c0031d33:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d38:	82                   	nemu_trap 
c0031d39:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d3c:	c1 e8 16             	shr    $0x16,%eax
c0031d3f:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031d42:	f6 c3 01             	test   $0x1,%bl
c0031d45:	75 32                	jne    c0031d79 <mm_malloc+0x1e9>
c0031d47:	c7 44 24 10 8c 97 03 	movl   $0xc003978c,0x10(%esp)
c0031d4e:	c0 
c0031d4f:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031d56:	c0 
c0031d57:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031d5e:	00 
c0031d5f:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031d66:	c0 
c0031d67:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031d6e:	e8 b9 ed ff ff       	call   c0030b2c <printk>
c0031d73:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d78:	82                   	nemu_trap 
c0031d79:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d7c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
c0031d82:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d87:	c1 ea 0c             	shr    $0xc,%edx
c0031d8a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031d90:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
c0031d93:	f6 c3 01             	test   $0x1,%bl
c0031d96:	75 32                	jne    c0031dca <mm_malloc+0x23a>
c0031d98:	c7 44 24 10 94 97 03 	movl   $0xc0039794,0x10(%esp)
c0031d9f:	c0 
c0031da0:	c7 44 24 0c f2 97 03 	movl   $0xc00397f2,0xc(%esp)
c0031da7:	c0 
c0031da8:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031daf:	00 
c0031db0:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031db7:	c0 
c0031db8:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031dbf:	e8 68 ed ff ff       	call   c0030b2c <printk>
c0031dc4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031dc9:	82                   	nemu_trap 
c0031dca:	8b 55 08             	mov    0x8(%ebp),%edx
c0031dcd:	89 d8                	mov    %ebx,%eax
c0031dcf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031dd4:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c0031dda:	09 d0                	or     %edx,%eax
c0031ddc:	83 c4 3c             	add    $0x3c,%esp
c0031ddf:	5b                   	pop    %ebx
c0031de0:	5e                   	pop    %esi
c0031de1:	5f                   	pop    %edi
c0031de2:	5d                   	pop    %ebp
c0031de3:	c3                   	ret    
c0031de4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031de8:	c7 44 24 10 68 97 03 	movl   $0xc0039768,0x10(%esp)
c0031def:	c0 
c0031df0:	c7 44 24 0c e8 97 03 	movl   $0xc00397e8,0xc(%esp)
c0031df7:	c0 
c0031df8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031dff:	00 
c0031e00:	c7 44 24 04 7b 97 03 	movl   $0xc003977b,0x4(%esp)
c0031e07:	c0 
c0031e08:	c7 04 24 9c 97 03 c0 	movl   $0xc003979c,(%esp)
c0031e0f:	e8 18 ed ff ff       	call   c0030b2c <printk>
c0031e14:	b8 01 00 00 00       	mov    $0x1,%eax
c0031e19:	82                   	nemu_trap 
c0031e1a:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031e1f:	e9 03 fe ff ff       	jmp    c0031c27 <mm_malloc+0x97>

c0031e24 <memcpy>:
c0031e24:	55                   	push   %ebp
c0031e25:	89 e5                	mov    %esp,%ebp
c0031e27:	56                   	push   %esi
c0031e28:	57                   	push   %edi
c0031e29:	53                   	push   %ebx
c0031e2a:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e2d:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e30:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031e33:	fc                   	cld    
c0031e34:	83 f9 08             	cmp    $0x8,%ecx
c0031e37:	76 26                	jbe    c0031e5f <memcpy+0x3b>
c0031e39:	89 fa                	mov    %edi,%edx
c0031e3b:	89 cb                	mov    %ecx,%ebx
c0031e3d:	83 e2 03             	and    $0x3,%edx
c0031e40:	74 10                	je     c0031e52 <memcpy+0x2e>
c0031e42:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031e47:	29 d1                	sub    %edx,%ecx
c0031e49:	83 e1 03             	and    $0x3,%ecx
c0031e4c:	29 cb                	sub    %ecx,%ebx
c0031e4e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e50:	89 d9                	mov    %ebx,%ecx
c0031e52:	c1 e9 02             	shr    $0x2,%ecx
c0031e55:	8d 76 00             	lea    0x0(%esi),%esi
c0031e58:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031e5a:	89 d9                	mov    %ebx,%ecx
c0031e5c:	83 e1 03             	and    $0x3,%ecx
c0031e5f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e61:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e64:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031e67:	5b                   	pop    %ebx
c0031e68:	5f                   	pop    %edi
c0031e69:	5e                   	pop    %esi
c0031e6a:	c9                   	leave  
c0031e6b:	c3                   	ret    

c0031e6c <memset>:
c0031e6c:	55                   	push   %ebp
c0031e6d:	89 e5                	mov    %esp,%ebp
c0031e6f:	57                   	push   %edi
c0031e70:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e73:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031e77:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e7a:	fc                   	cld    
c0031e7b:	83 f9 10             	cmp    $0x10,%ecx
c0031e7e:	76 69                	jbe    c0031ee9 <memset+0x7d>
c0031e80:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e86:	74 4c                	je     c0031ed4 <memset+0x68>
c0031e88:	88 07                	mov    %al,(%edi)
c0031e8a:	47                   	inc    %edi
c0031e8b:	49                   	dec    %ecx
c0031e8c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e92:	74 40                	je     c0031ed4 <memset+0x68>
c0031e94:	88 07                	mov    %al,(%edi)
c0031e96:	47                   	inc    %edi
c0031e97:	49                   	dec    %ecx
c0031e98:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e9e:	74 34                	je     c0031ed4 <memset+0x68>
c0031ea0:	88 07                	mov    %al,(%edi)
c0031ea2:	47                   	inc    %edi
c0031ea3:	49                   	dec    %ecx
c0031ea4:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031eaa:	74 28                	je     c0031ed4 <memset+0x68>
c0031eac:	88 07                	mov    %al,(%edi)
c0031eae:	47                   	inc    %edi
c0031eaf:	49                   	dec    %ecx
c0031eb0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031eb6:	74 1c                	je     c0031ed4 <memset+0x68>
c0031eb8:	88 07                	mov    %al,(%edi)
c0031eba:	47                   	inc    %edi
c0031ebb:	49                   	dec    %ecx
c0031ebc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031ec2:	74 10                	je     c0031ed4 <memset+0x68>
c0031ec4:	88 07                	mov    %al,(%edi)
c0031ec6:	47                   	inc    %edi
c0031ec7:	49                   	dec    %ecx
c0031ec8:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031ece:	74 04                	je     c0031ed4 <memset+0x68>
c0031ed0:	88 07                	mov    %al,(%edi)
c0031ed2:	47                   	inc    %edi
c0031ed3:	49                   	dec    %ecx
c0031ed4:	88 c4                	mov    %al,%ah
c0031ed6:	89 c2                	mov    %eax,%edx
c0031ed8:	c1 e2 10             	shl    $0x10,%edx
c0031edb:	09 d0                	or     %edx,%eax
c0031edd:	89 ca                	mov    %ecx,%edx
c0031edf:	c1 e9 02             	shr    $0x2,%ecx
c0031ee2:	83 e2 03             	and    $0x3,%edx
c0031ee5:	f3 ab                	rep stos %eax,%es:(%edi)
c0031ee7:	89 d1                	mov    %edx,%ecx
c0031ee9:	f3 aa                	rep stos %al,%es:(%edi)
c0031eeb:	8b 45 08             	mov    0x8(%ebp),%eax
c0031eee:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031ef1:	5f                   	pop    %edi
c0031ef2:	c9                   	leave  
c0031ef3:	c3                   	ret    
c0031ef4:	66 90                	xchg   %ax,%ax
c0031ef6:	66 90                	xchg   %ax,%ax
c0031ef8:	66 90                	xchg   %ax,%ax
c0031efa:	66 90                	xchg   %ax,%ax
c0031efc:	66 90                	xchg   %ax,%ax
c0031efe:	66 90                	xchg   %ax,%ax

c0031f00 <_vsnprintf_r>:
c0031f00:	55                   	push   %ebp
c0031f01:	89 e5                	mov    %esp,%ebp
c0031f03:	56                   	push   %esi
c0031f04:	53                   	push   %ebx
c0031f05:	83 c4 80             	add    $0xffffff80,%esp
c0031f08:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031f0b:	8b 75 08             	mov    0x8(%ebp),%esi
c0031f0e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031f11:	85 db                	test   %ebx,%ebx
c0031f13:	78 63                	js     c0031f78 <_vsnprintf_r+0x78>
c0031f15:	ba 08 02 00 00       	mov    $0x208,%edx
c0031f1a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031f1f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031f23:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031f26:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031f29:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031f2c:	31 c0                	xor    %eax,%eax
c0031f2e:	85 db                	test   %ebx,%ebx
c0031f30:	0f 45 c2             	cmovne %edx,%eax
c0031f33:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031f36:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031f39:	8b 45 18             	mov    0x18(%ebp),%eax
c0031f3c:	89 34 24             	mov    %esi,(%esp)
c0031f3f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031f43:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031f47:	8b 45 14             	mov    0x14(%ebp),%eax
c0031f4a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031f4e:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031f51:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031f55:	e8 86 00 00 00       	call   c0031fe0 <_svfprintf_r>
c0031f5a:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031f5d:	7c 11                	jl     c0031f70 <_vsnprintf_r+0x70>
c0031f5f:	85 db                	test   %ebx,%ebx
c0031f61:	74 06                	je     c0031f69 <_vsnprintf_r+0x69>
c0031f63:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031f66:	c6 02 00             	movb   $0x0,(%edx)
c0031f69:	83 ec 80             	sub    $0xffffff80,%esp
c0031f6c:	5b                   	pop    %ebx
c0031f6d:	5e                   	pop    %esi
c0031f6e:	5d                   	pop    %ebp
c0031f6f:	c3                   	ret    
c0031f70:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f76:	eb e7                	jmp    c0031f5f <_vsnprintf_r+0x5f>
c0031f78:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f7e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031f83:	eb e4                	jmp    c0031f69 <_vsnprintf_r+0x69>
c0031f85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031f89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031f90 <vsnprintf>:
c0031f90:	55                   	push   %ebp
c0031f91:	89 e5                	mov    %esp,%ebp
c0031f93:	83 ec 28             	sub    $0x28,%esp
c0031f96:	e8 35 00 00 00       	call   c0031fd0 <__getreent>
c0031f9b:	8b 55 14             	mov    0x14(%ebp),%edx
c0031f9e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031fa2:	8b 55 10             	mov    0x10(%ebp),%edx
c0031fa5:	89 04 24             	mov    %eax,(%esp)
c0031fa8:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031fac:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031faf:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031fb3:	8b 55 08             	mov    0x8(%ebp),%edx
c0031fb6:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031fba:	e8 41 ff ff ff       	call   c0031f00 <_vsnprintf_r>
c0031fbf:	c9                   	leave  
c0031fc0:	c3                   	ret    
c0031fc1:	66 90                	xchg   %ax,%ax
c0031fc3:	66 90                	xchg   %ax,%ax
c0031fc5:	66 90                	xchg   %ax,%ax
c0031fc7:	66 90                	xchg   %ax,%ax
c0031fc9:	66 90                	xchg   %ax,%ax
c0031fcb:	66 90                	xchg   %ax,%ax
c0031fcd:	66 90                	xchg   %ax,%ax
c0031fcf:	90                   	nop

c0031fd0 <__getreent>:
c0031fd0:	55                   	push   %ebp
c0031fd1:	a1 40 d0 03 c0       	mov    0xc003d040,%eax
c0031fd6:	89 e5                	mov    %esp,%ebp
c0031fd8:	5d                   	pop    %ebp
c0031fd9:	c3                   	ret    
c0031fda:	66 90                	xchg   %ax,%ax
c0031fdc:	66 90                	xchg   %ax,%ax
c0031fde:	66 90                	xchg   %ax,%ax

c0031fe0 <_svfprintf_r>:
c0031fe0:	55                   	push   %ebp
c0031fe1:	89 e5                	mov    %esp,%ebp
c0031fe3:	57                   	push   %edi
c0031fe4:	56                   	push   %esi
c0031fe5:	53                   	push   %ebx
c0031fe6:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c0031fec:	8b 45 08             	mov    0x8(%ebp),%eax
c0031fef:	89 04 24             	mov    %eax,(%esp)
c0031ff2:	e8 89 33 00 00       	call   c0035380 <_localeconv_r>
c0031ff7:	8b 00                	mov    (%eax),%eax
c0031ff9:	89 04 24             	mov    %eax,(%esp)
c0031ffc:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0032002:	e8 d9 4a 00 00       	call   c0036ae0 <strlen>
c0032007:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c003200d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032010:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0032014:	74 0b                	je     c0032021 <_svfprintf_r+0x41>
c0032016:	8b 40 10             	mov    0x10(%eax),%eax
c0032019:	85 c0                	test   %eax,%eax
c003201b:	0f 84 62 18 00 00    	je     c0033883 <_svfprintf_r+0x18a3>
c0032021:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032024:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0032027:	89 c7                	mov    %eax,%edi
c0032029:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c003202f:	d9 ee                	fldz   
c0032031:	29 d0                	sub    %edx,%eax
c0032033:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c003203a:	00 00 00 
c003203d:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032043:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003204a:	00 00 00 
c003204d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0032054:	00 00 00 
c0032057:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c003205e:	00 00 00 
c0032061:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0032068:	00 00 00 
c003206b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0032072:	00 00 00 
c0032075:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c003207b:	8b 45 10             	mov    0x10(%ebp),%eax
c003207e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032081:	0f b6 00             	movzbl (%eax),%eax
c0032084:	3c 25                	cmp    $0x25,%al
c0032086:	74 4d                	je     c00320d5 <_svfprintf_r+0xf5>
c0032088:	84 c0                	test   %al,%al
c003208a:	75 08                	jne    c0032094 <_svfprintf_r+0xb4>
c003208c:	eb 47                	jmp    c00320d5 <_svfprintf_r+0xf5>
c003208e:	66 90                	xchg   %ax,%ax
c0032090:	84 c0                	test   %al,%al
c0032092:	74 0a                	je     c003209e <_svfprintf_r+0xbe>
c0032094:	83 c3 01             	add    $0x1,%ebx
c0032097:	0f b6 03             	movzbl (%ebx),%eax
c003209a:	3c 25                	cmp    $0x25,%al
c003209c:	75 f2                	jne    c0032090 <_svfprintf_r+0xb0>
c003209e:	89 de                	mov    %ebx,%esi
c00320a0:	2b 75 10             	sub    0x10(%ebp),%esi
c00320a3:	74 30                	je     c00320d5 <_svfprintf_r+0xf5>
c00320a5:	8b 45 10             	mov    0x10(%ebp),%eax
c00320a8:	83 c7 08             	add    $0x8,%edi
c00320ab:	89 77 fc             	mov    %esi,-0x4(%edi)
c00320ae:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c00320b4:	89 47 f8             	mov    %eax,-0x8(%edi)
c00320b7:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00320bd:	83 c0 01             	add    $0x1,%eax
c00320c0:	83 f8 07             	cmp    $0x7,%eax
c00320c3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00320c9:	0f 8f 91 00 00 00    	jg     c0032160 <_svfprintf_r+0x180>
c00320cf:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c00320d5:	80 3b 00             	cmpb   $0x0,(%ebx)
c00320d8:	0f 84 aa 00 00 00    	je     c0032188 <_svfprintf_r+0x1a8>
c00320de:	8d 43 01             	lea    0x1(%ebx),%eax
c00320e1:	be 20 00 00 00       	mov    $0x20,%esi
c00320e6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00320ed:	31 db                	xor    %ebx,%ebx
c00320ef:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c00320f6:	ff ff ff 
c00320f9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032100:	00 00 00 
c0032103:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c003210a:	00 00 00 
c003210d:	8d 48 01             	lea    0x1(%eax),%ecx
c0032110:	0f be 00             	movsbl (%eax),%eax
c0032113:	8d 50 e0             	lea    -0x20(%eax),%edx
c0032116:	83 fa 58             	cmp    $0x58,%edx
c0032119:	0f 87 8f 07 00 00    	ja     c00328ae <_svfprintf_r+0x8ce>
c003211f:	ff 24 95 3c 98 03 c0 	jmp    *-0x3ffc67c4(,%edx,4)
c0032126:	66 90                	xchg   %ax,%ax
c0032128:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003212f:	89 c8                	mov    %ecx,%eax
c0032131:	eb da                	jmp    c003210d <_svfprintf_r+0x12d>
c0032133:	8b 45 14             	mov    0x14(%ebp),%eax
c0032136:	8b 55 14             	mov    0x14(%ebp),%edx
c0032139:	8b 00                	mov    (%eax),%eax
c003213b:	83 c2 04             	add    $0x4,%edx
c003213e:	89 55 14             	mov    %edx,0x14(%ebp)
c0032141:	85 c0                	test   %eax,%eax
c0032143:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0032149:	79 e4                	jns    c003212f <_svfprintf_r+0x14f>
c003214b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0032151:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0032158:	89 c8                	mov    %ecx,%eax
c003215a:	eb b1                	jmp    c003210d <_svfprintf_r+0x12d>
c003215c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032160:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032166:	89 44 24 08          	mov    %eax,0x8(%esp)
c003216a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003216d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032171:	8b 45 08             	mov    0x8(%ebp),%eax
c0032174:	89 04 24             	mov    %eax,(%esp)
c0032177:	e8 e4 49 00 00       	call   c0036b60 <__ssprint_r>
c003217c:	85 c0                	test   %eax,%eax
c003217e:	75 30                	jne    c00321b0 <_svfprintf_r+0x1d0>
c0032180:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032183:	e9 47 ff ff ff       	jmp    c00320cf <_svfprintf_r+0xef>
c0032188:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003218e:	85 c0                	test   %eax,%eax
c0032190:	74 1e                	je     c00321b0 <_svfprintf_r+0x1d0>
c0032192:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032198:	89 44 24 08          	mov    %eax,0x8(%esp)
c003219c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003219f:	89 44 24 04          	mov    %eax,0x4(%esp)
c00321a3:	8b 45 08             	mov    0x8(%ebp),%eax
c00321a6:	89 04 24             	mov    %eax,(%esp)
c00321a9:	e8 b2 49 00 00       	call   c0036b60 <__ssprint_r>
c00321ae:	66 90                	xchg   %ax,%ax
c00321b0:	8b 55 0c             	mov    0xc(%ebp),%edx
c00321b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00321b8:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c00321bc:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c00321c3:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c00321c9:	5b                   	pop    %ebx
c00321ca:	5e                   	pop    %esi
c00321cb:	5f                   	pop    %edi
c00321cc:	5d                   	pop    %ebp
c00321cd:	c3                   	ret    
c00321ce:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c00321d3:	89 c8                	mov    %ecx,%eax
c00321d5:	e9 33 ff ff ff       	jmp    c003210d <_svfprintf_r+0x12d>
c00321da:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00321e0:	8b 45 14             	mov    0x14(%ebp),%eax
c00321e3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00321e6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00321ed:	8d 70 04             	lea    0x4(%eax),%esi
c00321f0:	8b 00                	mov    (%eax),%eax
c00321f2:	85 c0                	test   %eax,%eax
c00321f4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00321fa:	0f 84 7f 18 00 00    	je     c0033a7f <_svfprintf_r+0x1a9f>
c0032200:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032206:	85 c0                	test   %eax,%eax
c0032208:	0f 88 b6 17 00 00    	js     c00339c4 <_svfprintf_r+0x19e4>
c003220e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032212:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032218:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c003221f:	00 
c0032220:	89 04 24             	mov    %eax,(%esp)
c0032223:	e8 f8 38 00 00       	call   c0035b20 <memchr>
c0032228:	85 c0                	test   %eax,%eax
c003222a:	0f 84 a0 19 00 00    	je     c0033bd0 <_svfprintf_r+0x1bf0>
c0032230:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0032236:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003223c:	39 d0                	cmp    %edx,%eax
c003223e:	0f 4f c2             	cmovg  %edx,%eax
c0032241:	89 c2                	mov    %eax,%edx
c0032243:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003224a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032250:	31 c0                	xor    %eax,%eax
c0032252:	85 d2                	test   %edx,%edx
c0032254:	0f 49 c2             	cmovns %edx,%eax
c0032257:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c003225d:	89 75 14             	mov    %esi,0x14(%ebp)
c0032260:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032267:	00 00 00 
c003226a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032271:	00 00 00 
c0032274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032278:	84 db                	test   %bl,%bl
c003227a:	74 07                	je     c0032283 <_svfprintf_r+0x2a3>
c003227c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032283:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032289:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003228f:	89 c8                	mov    %ecx,%eax
c0032291:	89 f2                	mov    %esi,%edx
c0032293:	83 c0 02             	add    $0x2,%eax
c0032296:	83 e2 02             	and    $0x2,%edx
c0032299:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003229f:	89 f2                	mov    %esi,%edx
c00322a1:	0f 44 c1             	cmove  %ecx,%eax
c00322a4:	81 e2 84 00 00 00    	and    $0x84,%edx
c00322aa:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00322b0:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c00322b6:	0f 85 1c 06 00 00    	jne    c00328d8 <_svfprintf_r+0x8f8>
c00322bc:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c00322c2:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c00322c8:	85 f6                	test   %esi,%esi
c00322ca:	0f 8e 08 06 00 00    	jle    c00328d8 <_svfprintf_r+0x8f8>
c00322d0:	83 fe 10             	cmp    $0x10,%esi
c00322d3:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00322d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00322df:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00322e5:	7f 11                	jg     c00322f8 <_svfprintf_r+0x318>
c00322e7:	eb 6b                	jmp    c0032354 <_svfprintf_r+0x374>
c00322e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00322f0:	83 ee 10             	sub    $0x10,%esi
c00322f3:	83 fe 10             	cmp    $0x10,%esi
c00322f6:	7e 5c                	jle    c0032354 <_svfprintf_r+0x374>
c00322f8:	83 c0 01             	add    $0x1,%eax
c00322fb:	83 c1 10             	add    $0x10,%ecx
c00322fe:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c0032304:	83 c7 08             	add    $0x8,%edi
c0032307:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003230e:	83 f8 07             	cmp    $0x7,%eax
c0032311:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032317:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003231d:	7e d1                	jle    c00322f0 <_svfprintf_r+0x310>
c003231f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032322:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032326:	89 44 24 04          	mov    %eax,0x4(%esp)
c003232a:	8b 45 08             	mov    0x8(%ebp),%eax
c003232d:	89 04 24             	mov    %eax,(%esp)
c0032330:	e8 2b 48 00 00       	call   c0036b60 <__ssprint_r>
c0032335:	85 c0                	test   %eax,%eax
c0032337:	0f 85 73 fe ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c003233d:	83 ee 10             	sub    $0x10,%esi
c0032340:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032346:	83 fe 10             	cmp    $0x10,%esi
c0032349:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003234f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032352:	7f a4                	jg     c00322f8 <_svfprintf_r+0x318>
c0032354:	83 c0 01             	add    $0x1,%eax
c0032357:	01 f1                	add    %esi,%ecx
c0032359:	83 f8 07             	cmp    $0x7,%eax
c003235c:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c0032362:	89 77 04             	mov    %esi,0x4(%edi)
c0032365:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003236b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032371:	0f 8f 16 0e 00 00    	jg     c003318d <_svfprintf_r+0x11ad>
c0032377:	83 c7 08             	add    $0x8,%edi
c003237a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032381:	e9 58 05 00 00       	jmp    c00328de <_svfprintf_r+0x8fe>
c0032386:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003238d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032393:	8b 45 14             	mov    0x14(%ebp),%eax
c0032396:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032399:	0f 85 fd 04 00 00    	jne    c003289c <_svfprintf_r+0x8bc>
c003239f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00323a6:	0f 84 f0 04 00 00    	je     c003289c <_svfprintf_r+0x8bc>
c00323ac:	0f b7 08             	movzwl (%eax),%ecx
c00323af:	83 c0 04             	add    $0x4,%eax
c00323b2:	89 45 14             	mov    %eax,0x14(%ebp)
c00323b5:	b8 01 00 00 00       	mov    $0x1,%eax
c00323ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00323c0:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00323c7:	31 db                	xor    %ebx,%ebx
c00323c9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c00323cf:	89 f2                	mov    %esi,%edx
c00323d1:	80 e2 7f             	and    $0x7f,%dl
c00323d4:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c00323db:	0f 48 d6             	cmovs  %esi,%edx
c00323de:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c00323e4:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00323ea:	85 d2                	test   %edx,%edx
c00323ec:	75 08                	jne    c00323f6 <_svfprintf_r+0x416>
c00323ee:	85 c9                	test   %ecx,%ecx
c00323f0:	0f 84 ea 08 00 00    	je     c0032ce0 <_svfprintf_r+0xd00>
c00323f6:	3c 01                	cmp    $0x1,%al
c00323f8:	0f 84 6a 0d 00 00    	je     c0033168 <_svfprintf_r+0x1188>
c00323fe:	3c 02                	cmp    $0x2,%al
c0032400:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032403:	0f 85 bf 0b 00 00    	jne    c0032fc8 <_svfprintf_r+0xfe8>
c0032409:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c003240f:	90                   	nop
c0032410:	89 ca                	mov    %ecx,%edx
c0032412:	83 e8 01             	sub    $0x1,%eax
c0032415:	83 e2 0f             	and    $0xf,%edx
c0032418:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c003241c:	c1 e9 04             	shr    $0x4,%ecx
c003241f:	85 c9                	test   %ecx,%ecx
c0032421:	88 10                	mov    %dl,(%eax)
c0032423:	75 eb                	jne    c0032410 <_svfprintf_r+0x430>
c0032425:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0032428:	29 c2                	sub    %eax,%edx
c003242a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032430:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0032436:	66 90                	xchg   %ax,%ax
c0032438:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c003243e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0032444:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003244b:	00 00 00 
c003244e:	39 c2                	cmp    %eax,%edx
c0032450:	0f 4d c2             	cmovge %edx,%eax
c0032453:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032459:	e9 1a fe ff ff       	jmp    c0032278 <_svfprintf_r+0x298>
c003245e:	84 db                	test   %bl,%bl
c0032460:	89 c8                	mov    %ecx,%eax
c0032462:	0f 44 de             	cmove  %esi,%ebx
c0032465:	e9 a3 fc ff ff       	jmp    c003210d <_svfprintf_r+0x12d>
c003246a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032471:	89 c8                	mov    %ecx,%eax
c0032473:	e9 95 fc ff ff       	jmp    c003210d <_svfprintf_r+0x12d>
c0032478:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003247f:	00 00 00 
c0032482:	89 c8                	mov    %ecx,%eax
c0032484:	e9 84 fc ff ff       	jmp    c003210d <_svfprintf_r+0x12d>
c0032489:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003248f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032492:	31 ff                	xor    %edi,%edi
c0032494:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003249b:	00 00 00 
c003249e:	66 90                	xchg   %ax,%ax
c00324a0:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c00324a3:	83 c1 01             	add    $0x1,%ecx
c00324a6:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c00324a9:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c00324ad:	8d 50 d0             	lea    -0x30(%eax),%edx
c00324b0:	83 fa 09             	cmp    $0x9,%edx
c00324b3:	76 eb                	jbe    c00324a0 <_svfprintf_r+0x4c0>
c00324b5:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c00324bb:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00324c1:	e9 4d fc ff ff       	jmp    c0032113 <_svfprintf_r+0x133>
c00324c6:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00324cd:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00324d4:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00324da:	8b 45 14             	mov    0x14(%ebp),%eax
c00324dd:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324e0:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00324e6:	0f 85 61 02 00 00    	jne    c003274d <_svfprintf_r+0x76d>
c00324ec:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00324f3:	0f 84 54 02 00 00    	je     c003274d <_svfprintf_r+0x76d>
c00324f9:	0f bf 08             	movswl (%eax),%ecx
c00324fc:	83 c0 04             	add    $0x4,%eax
c00324ff:	89 45 14             	mov    %eax,0x14(%ebp)
c0032502:	85 c9                	test   %ecx,%ecx
c0032504:	0f 88 53 02 00 00    	js     c003275d <_svfprintf_r+0x77d>
c003250a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032511:	b8 01 00 00 00       	mov    $0x1,%eax
c0032516:	e9 ae fe ff ff       	jmp    c00323c9 <_svfprintf_r+0x3e9>
c003251b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0032522:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032528:	8b 45 14             	mov    0x14(%ebp),%eax
c003252b:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003252e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032534:	0f 84 15 10 00 00    	je     c003354f <_svfprintf_r+0x156f>
c003253a:	db 28                	fldt   (%eax)
c003253c:	83 c0 0c             	add    $0xc,%eax
c003253f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032542:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032548:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c003254e:	dd 1c 24             	fstpl  (%esp)
c0032551:	e8 aa 44 00 00       	call   c0036a00 <__fpclassifyd>
c0032556:	83 f8 01             	cmp    $0x1,%eax
c0032559:	0f 85 82 0f 00 00    	jne    c00334e1 <_svfprintf_r+0x1501>
c003255f:	d9 ee                	fldz   
c0032561:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032567:	d9 c9                	fxch   %st(1)
c0032569:	df e9                	fucomip %st(1),%st
c003256b:	dd d8                	fstp   %st(0)
c003256d:	0f 87 59 15 00 00    	ja     c0033acc <_svfprintf_r+0x1aec>
c0032573:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003257a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032581:	ba fe 97 03 c0       	mov    $0xc00397fe,%edx
c0032586:	b8 02 98 03 c0       	mov    $0xc0039802,%eax
c003258b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032592:	00 00 00 
c0032595:	0f 4e c2             	cmovle %edx,%eax
c0032598:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003259e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c00325a5:	ff ff ff 
c00325a8:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00325af:	00 00 00 
c00325b2:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00325b9:	00 00 00 
c00325bc:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00325c3:	00 00 00 
c00325c6:	e9 ad fc ff ff       	jmp    c0032278 <_svfprintf_r+0x298>
c00325cb:	8d 41 01             	lea    0x1(%ecx),%eax
c00325ce:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00325d4:	0f be 01             	movsbl (%ecx),%eax
c00325d7:	83 f8 2a             	cmp    $0x2a,%eax
c00325da:	0f 84 84 18 00 00    	je     c0033e64 <_svfprintf_r+0x1e84>
c00325e0:	8d 50 d0             	lea    -0x30(%eax),%edx
c00325e3:	31 c9                	xor    %ecx,%ecx
c00325e5:	83 fa 09             	cmp    $0x9,%edx
c00325e8:	0f 87 a8 16 00 00    	ja     c0033c96 <_svfprintf_r+0x1cb6>
c00325ee:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c00325f4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00325fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032600:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0032603:	83 c7 01             	add    $0x1,%edi
c0032606:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0032609:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c003260d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032610:	83 fa 09             	cmp    $0x9,%edx
c0032613:	76 eb                	jbe    c0032600 <_svfprintf_r+0x620>
c0032615:	85 c9                	test   %ecx,%ecx
c0032617:	89 ca                	mov    %ecx,%edx
c0032619:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c003261e:	0f 48 d1             	cmovs  %ecx,%edx
c0032621:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032627:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c003262d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032633:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0032639:	e9 d5 fa ff ff       	jmp    c0032113 <_svfprintf_r+0x133>
c003263e:	8b 45 14             	mov    0x14(%ebp),%eax
c0032641:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032644:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c003264b:	8b 08                	mov    (%eax),%ecx
c003264d:	83 c0 04             	add    $0x4,%eax
c0032650:	89 45 14             	mov    %eax,0x14(%ebp)
c0032653:	b8 02 00 00 00       	mov    $0x2,%eax
c0032658:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c003265f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032666:	c7 85 18 ff ff ff 1f 	movl   $0xc003981f,-0xe8(%ebp)
c003266d:	98 03 c0 
c0032670:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032677:	00 00 00 
c003267a:	e9 41 fd ff ff       	jmp    c00323c0 <_svfprintf_r+0x3e0>
c003267f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032686:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003268c:	8b 45 14             	mov    0x14(%ebp),%eax
c003268f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032692:	0f 85 87 00 00 00    	jne    c003271f <_svfprintf_r+0x73f>
c0032698:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003269f:	74 7e                	je     c003271f <_svfprintf_r+0x73f>
c00326a1:	0f b7 08             	movzwl (%eax),%ecx
c00326a4:	83 c0 04             	add    $0x4,%eax
c00326a7:	89 45 14             	mov    %eax,0x14(%ebp)
c00326aa:	31 c0                	xor    %eax,%eax
c00326ac:	e9 0f fd ff ff       	jmp    c00323c0 <_svfprintf_r+0x3e0>
c00326b1:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c00326b8:	89 c8                	mov    %ecx,%eax
c00326ba:	e9 4e fa ff ff       	jmp    c003210d <_svfprintf_r+0x12d>
c00326bf:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326c6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326c9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00326cf:	0f 85 97 0b 00 00    	jne    c003326c <_svfprintf_r+0x128c>
c00326d5:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00326dc:	0f 84 8a 0b 00 00    	je     c003326c <_svfprintf_r+0x128c>
c00326e2:	8b 45 14             	mov    0x14(%ebp),%eax
c00326e5:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c00326ec:	8b 00                	mov    (%eax),%eax
c00326ee:	66 89 10             	mov    %dx,(%eax)
c00326f1:	8b 45 14             	mov    0x14(%ebp),%eax
c00326f4:	83 c0 04             	add    $0x4,%eax
c00326f7:	89 45 14             	mov    %eax,0x14(%ebp)
c00326fa:	e9 7c f9 ff ff       	jmp    c003207b <_svfprintf_r+0x9b>
c00326ff:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032706:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003270d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032713:	8b 45 14             	mov    0x14(%ebp),%eax
c0032716:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032719:	0f 84 79 ff ff ff    	je     c0032698 <_svfprintf_r+0x6b8>
c003271f:	8b 08                	mov    (%eax),%ecx
c0032721:	83 c0 04             	add    $0x4,%eax
c0032724:	89 45 14             	mov    %eax,0x14(%ebp)
c0032727:	31 c0                	xor    %eax,%eax
c0032729:	e9 92 fc ff ff       	jmp    c00323c0 <_svfprintf_r+0x3e0>
c003272e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032735:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003273b:	8b 45 14             	mov    0x14(%ebp),%eax
c003273e:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032741:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032747:	0f 84 9f fd ff ff    	je     c00324ec <_svfprintf_r+0x50c>
c003274d:	8b 08                	mov    (%eax),%ecx
c003274f:	83 c0 04             	add    $0x4,%eax
c0032752:	89 45 14             	mov    %eax,0x14(%ebp)
c0032755:	85 c9                	test   %ecx,%ecx
c0032757:	0f 89 ad fd ff ff    	jns    c003250a <_svfprintf_r+0x52a>
c003275d:	f7 d9                	neg    %ecx
c003275f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032764:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c003276b:	b8 01 00 00 00       	mov    $0x1,%eax
c0032770:	e9 54 fc ff ff       	jmp    c00323c9 <_svfprintf_r+0x3e9>
c0032775:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c003277c:	89 c8                	mov    %ecx,%eax
c003277e:	e9 8a f9 ff ff       	jmp    c003210d <_svfprintf_r+0x12d>
c0032783:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003278a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032790:	8b 45 14             	mov    0x14(%ebp),%eax
c0032793:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032796:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003279c:	c7 85 18 ff ff ff 1f 	movl   $0xc003981f,-0xe8(%ebp)
c00327a3:	98 03 c0 
c00327a6:	75 71                	jne    c0032819 <_svfprintf_r+0x839>
c00327a8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00327af:	74 68                	je     c0032819 <_svfprintf_r+0x839>
c00327b1:	0f b7 08             	movzwl (%eax),%ecx
c00327b4:	83 c0 04             	add    $0x4,%eax
c00327b7:	89 45 14             	mov    %eax,0x14(%ebp)
c00327ba:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00327c1:	b8 02 00 00 00       	mov    $0x2,%eax
c00327c6:	0f 84 f4 fb ff ff    	je     c00323c0 <_svfprintf_r+0x3e0>
c00327cc:	85 c9                	test   %ecx,%ecx
c00327ce:	0f 84 ec fb ff ff    	je     c00323c0 <_svfprintf_r+0x3e0>
c00327d4:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c00327db:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00327e2:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00327e9:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c00327ef:	e9 cc fb ff ff       	jmp    c00323c0 <_svfprintf_r+0x3e0>
c00327f4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00327fb:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032801:	8b 45 14             	mov    0x14(%ebp),%eax
c0032804:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032807:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003280d:	c7 85 18 ff ff ff 0e 	movl   $0xc003980e,-0xe8(%ebp)
c0032814:	98 03 c0 
c0032817:	74 8f                	je     c00327a8 <_svfprintf_r+0x7c8>
c0032819:	8b 08                	mov    (%eax),%ecx
c003281b:	83 c0 04             	add    $0x4,%eax
c003281e:	89 45 14             	mov    %eax,0x14(%ebp)
c0032821:	eb 97                	jmp    c00327ba <_svfprintf_r+0x7da>
c0032823:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032829:	8b 45 14             	mov    0x14(%ebp),%eax
c003282c:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003282f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032836:	8b 00                	mov    (%eax),%eax
c0032838:	88 45 80             	mov    %al,-0x80(%ebp)
c003283b:	8b 45 14             	mov    0x14(%ebp),%eax
c003283e:	83 c0 04             	add    $0x4,%eax
c0032841:	89 45 14             	mov    %eax,0x14(%ebp)
c0032844:	8d 45 80             	lea    -0x80(%ebp),%eax
c0032847:	31 db                	xor    %ebx,%ebx
c0032849:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032850:	00 00 00 
c0032853:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c003285a:	00 00 00 
c003285d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032864:	00 00 00 
c0032867:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003286e:	00 00 00 
c0032871:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032877:	e9 07 fa ff ff       	jmp    c0032283 <_svfprintf_r+0x2a3>
c003287c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032883:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003288a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032890:	8b 45 14             	mov    0x14(%ebp),%eax
c0032893:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032896:	0f 84 03 fb ff ff    	je     c003239f <_svfprintf_r+0x3bf>
c003289c:	8b 08                	mov    (%eax),%ecx
c003289e:	83 c0 04             	add    $0x4,%eax
c00328a1:	89 45 14             	mov    %eax,0x14(%ebp)
c00328a4:	b8 01 00 00 00       	mov    $0x1,%eax
c00328a9:	e9 12 fb ff ff       	jmp    c00323c0 <_svfprintf_r+0x3e0>
c00328ae:	85 c0                	test   %eax,%eax
c00328b0:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00328b6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00328b9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00328bf:	0f 84 c3 f8 ff ff    	je     c0032188 <_svfprintf_r+0x1a8>
c00328c5:	88 45 80             	mov    %al,-0x80(%ebp)
c00328c8:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00328cf:	e9 70 ff ff ff       	jmp    c0032844 <_svfprintf_r+0x864>
c00328d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00328d8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00328de:	84 db                	test   %bl,%bl
c00328e0:	74 33                	je     c0032915 <_svfprintf_r+0x935>
c00328e2:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c00328e8:	83 c1 01             	add    $0x1,%ecx
c00328eb:	89 07                	mov    %eax,(%edi)
c00328ed:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328f3:	83 c7 08             	add    $0x8,%edi
c00328f6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c00328fd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032903:	83 c0 01             	add    $0x1,%eax
c0032906:	83 f8 07             	cmp    $0x7,%eax
c0032909:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003290f:	0f 8f 7b 06 00 00    	jg     c0032f90 <_svfprintf_r+0xfb0>
c0032915:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c003291b:	85 db                	test   %ebx,%ebx
c003291d:	74 33                	je     c0032952 <_svfprintf_r+0x972>
c003291f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0032925:	83 c1 02             	add    $0x2,%ecx
c0032928:	89 07                	mov    %eax,(%edi)
c003292a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032930:	83 c7 08             	add    $0x8,%edi
c0032933:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c003293a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032940:	83 c0 01             	add    $0x1,%eax
c0032943:	83 f8 07             	cmp    $0x7,%eax
c0032946:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003294c:	0f 8f 06 06 00 00    	jg     c0032f58 <_svfprintf_r+0xf78>
c0032952:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0032959:	00 00 00 
c003295c:	0f 84 c6 03 00 00    	je     c0032d28 <_svfprintf_r+0xd48>
c0032962:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0032968:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c003296e:	85 f6                	test   %esi,%esi
c0032970:	0f 8e d2 00 00 00    	jle    c0032a48 <_svfprintf_r+0xa68>
c0032976:	83 fe 10             	cmp    $0x10,%esi
c0032979:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003297f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032985:	7f 11                	jg     c0032998 <_svfprintf_r+0x9b8>
c0032987:	eb 6b                	jmp    c00329f4 <_svfprintf_r+0xa14>
c0032989:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032990:	83 ee 10             	sub    $0x10,%esi
c0032993:	83 fe 10             	cmp    $0x10,%esi
c0032996:	7e 5c                	jle    c00329f4 <_svfprintf_r+0xa14>
c0032998:	83 c0 01             	add    $0x1,%eax
c003299b:	83 c1 10             	add    $0x10,%ecx
c003299e:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c00329a4:	83 c7 08             	add    $0x8,%edi
c00329a7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00329ae:	83 f8 07             	cmp    $0x7,%eax
c00329b1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329bd:	7e d1                	jle    c0032990 <_svfprintf_r+0x9b0>
c00329bf:	8b 45 0c             	mov    0xc(%ebp),%eax
c00329c2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00329c6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00329ca:	8b 45 08             	mov    0x8(%ebp),%eax
c00329cd:	89 04 24             	mov    %eax,(%esp)
c00329d0:	e8 8b 41 00 00       	call   c0036b60 <__ssprint_r>
c00329d5:	85 c0                	test   %eax,%eax
c00329d7:	0f 85 d3 f7 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c00329dd:	83 ee 10             	sub    $0x10,%esi
c00329e0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00329e6:	83 fe 10             	cmp    $0x10,%esi
c00329e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329ef:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329f2:	7f a4                	jg     c0032998 <_svfprintf_r+0x9b8>
c00329f4:	83 c0 01             	add    $0x1,%eax
c00329f7:	01 f1                	add    %esi,%ecx
c00329f9:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c00329ff:	83 c7 08             	add    $0x8,%edi
c0032a02:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032a05:	83 f8 07             	cmp    $0x7,%eax
c0032a08:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a0e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a14:	7e 32                	jle    c0032a48 <_svfprintf_r+0xa68>
c0032a16:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032a1c:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032a20:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a23:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a27:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a2a:	89 04 24             	mov    %eax,(%esp)
c0032a2d:	e8 2e 41 00 00       	call   c0036b60 <__ssprint_r>
c0032a32:	85 c0                	test   %eax,%eax
c0032a34:	0f 85 76 f7 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0032a3a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a40:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a43:	90                   	nop
c0032a44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032a48:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c0032a4f:	01 00 00 
c0032a52:	0f 85 50 01 00 00    	jne    c0032ba8 <_svfprintf_r+0xbc8>
c0032a58:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032a5e:	89 07                	mov    %eax,(%edi)
c0032a60:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032a66:	01 c1                	add    %eax,%ecx
c0032a68:	89 47 04             	mov    %eax,0x4(%edi)
c0032a6b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a71:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a77:	83 c0 01             	add    $0x1,%eax
c0032a7a:	83 f8 07             	cmp    $0x7,%eax
c0032a7d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a83:	0f 8f 6a 04 00 00    	jg     c0032ef3 <_svfprintf_r+0xf13>
c0032a89:	83 c7 08             	add    $0x8,%edi
c0032a8c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032a93:	0f 84 d7 00 00 00    	je     c0032b70 <_svfprintf_r+0xb90>
c0032a99:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a9f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032aa5:	85 f6                	test   %esi,%esi
c0032aa7:	0f 8e c3 00 00 00    	jle    c0032b70 <_svfprintf_r+0xb90>
c0032aad:	83 fe 10             	cmp    $0x10,%esi
c0032ab0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ab6:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032abc:	7f 0a                	jg     c0032ac8 <_svfprintf_r+0xae8>
c0032abe:	eb 64                	jmp    c0032b24 <_svfprintf_r+0xb44>
c0032ac0:	83 ee 10             	sub    $0x10,%esi
c0032ac3:	83 fe 10             	cmp    $0x10,%esi
c0032ac6:	7e 5c                	jle    c0032b24 <_svfprintf_r+0xb44>
c0032ac8:	83 c0 01             	add    $0x1,%eax
c0032acb:	83 c1 10             	add    $0x10,%ecx
c0032ace:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c0032ad4:	83 c7 08             	add    $0x8,%edi
c0032ad7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032ade:	83 f8 07             	cmp    $0x7,%eax
c0032ae1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ae7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032aed:	7e d1                	jle    c0032ac0 <_svfprintf_r+0xae0>
c0032aef:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032af2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032af6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032afa:	8b 45 08             	mov    0x8(%ebp),%eax
c0032afd:	89 04 24             	mov    %eax,(%esp)
c0032b00:	e8 5b 40 00 00       	call   c0036b60 <__ssprint_r>
c0032b05:	85 c0                	test   %eax,%eax
c0032b07:	0f 85 a3 f6 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0032b0d:	83 ee 10             	sub    $0x10,%esi
c0032b10:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b16:	83 fe 10             	cmp    $0x10,%esi
c0032b19:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b1f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b22:	7f a4                	jg     c0032ac8 <_svfprintf_r+0xae8>
c0032b24:	83 c0 01             	add    $0x1,%eax
c0032b27:	01 f1                	add    %esi,%ecx
c0032b29:	83 f8 07             	cmp    $0x7,%eax
c0032b2c:	c7 07 b0 99 03 c0    	movl   $0xc00399b0,(%edi)
c0032b32:	89 77 04             	mov    %esi,0x4(%edi)
c0032b35:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b3b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b41:	7e 2d                	jle    c0032b70 <_svfprintf_r+0xb90>
c0032b43:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032b49:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032b4d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032b50:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032b54:	8b 45 08             	mov    0x8(%ebp),%eax
c0032b57:	89 04 24             	mov    %eax,(%esp)
c0032b5a:	e8 01 40 00 00       	call   c0036b60 <__ssprint_r>
c0032b5f:	85 c0                	test   %eax,%eax
c0032b61:	0f 85 49 f6 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0032b67:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b6d:	8d 76 00             	lea    0x0(%esi),%esi
c0032b70:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032b76:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032b7c:	39 c2                	cmp    %eax,%edx
c0032b7e:	0f 4d c2             	cmovge %edx,%eax
c0032b81:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032b87:	85 c9                	test   %ecx,%ecx
c0032b89:	0f 85 99 03 00 00    	jne    c0032f28 <_svfprintf_r+0xf48>
c0032b8f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032b96:	00 00 00 
c0032b99:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b9c:	e9 da f4 ff ff       	jmp    c003207b <_svfprintf_r+0x9b>
c0032ba1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032ba8:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032baf:	0f 8e 5b 02 00 00    	jle    c0032e10 <_svfprintf_r+0xe30>
c0032bb5:	d9 ee                	fldz   
c0032bb7:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032bbd:	df e9                	fucomip %st(1),%st
c0032bbf:	dd d8                	fstp   %st(0)
c0032bc1:	0f 8a 59 04 00 00    	jp     c0033020 <_svfprintf_r+0x1040>
c0032bc7:	0f 85 53 04 00 00    	jne    c0033020 <_svfprintf_r+0x1040>
c0032bcd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032bd3:	83 c1 01             	add    $0x1,%ecx
c0032bd6:	83 c7 08             	add    $0x8,%edi
c0032bd9:	c7 47 f8 37 98 03 c0 	movl   $0xc0039837,-0x8(%edi)
c0032be0:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032be7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bed:	83 c0 01             	add    $0x1,%eax
c0032bf0:	83 f8 07             	cmp    $0x7,%eax
c0032bf3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032bf9:	0f 8f 63 09 00 00    	jg     c0033562 <_svfprintf_r+0x1582>
c0032bff:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032c05:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032c0b:	7c 0d                	jl     c0032c1a <_svfprintf_r+0xc3a>
c0032c0d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032c14:	0f 84 72 fe ff ff    	je     c0032a8c <_svfprintf_r+0xaac>
c0032c1a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032c20:	83 c7 08             	add    $0x8,%edi
c0032c23:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032c26:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032c2c:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032c2f:	01 c1                	add    %eax,%ecx
c0032c31:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c37:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c3d:	83 c0 01             	add    $0x1,%eax
c0032c40:	83 f8 07             	cmp    $0x7,%eax
c0032c43:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c49:	0f 8f dc 0b 00 00    	jg     c003382b <_svfprintf_r+0x184b>
c0032c4f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032c55:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032c58:	85 f6                	test   %esi,%esi
c0032c5a:	0f 8e 2c fe ff ff    	jle    c0032a8c <_svfprintf_r+0xaac>
c0032c60:	83 fe 10             	cmp    $0x10,%esi
c0032c63:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c69:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032c6f:	7f 13                	jg     c0032c84 <_svfprintf_r+0xca4>
c0032c71:	e9 e6 05 00 00       	jmp    c003325c <_svfprintf_r+0x127c>
c0032c76:	66 90                	xchg   %ax,%ax
c0032c78:	83 ee 10             	sub    $0x10,%esi
c0032c7b:	83 fe 10             	cmp    $0x10,%esi
c0032c7e:	0f 8e d8 05 00 00    	jle    c003325c <_svfprintf_r+0x127c>
c0032c84:	83 c0 01             	add    $0x1,%eax
c0032c87:	83 c1 10             	add    $0x10,%ecx
c0032c8a:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0032c90:	83 c7 08             	add    $0x8,%edi
c0032c93:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032c9a:	83 f8 07             	cmp    $0x7,%eax
c0032c9d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ca3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ca9:	7e cd                	jle    c0032c78 <_svfprintf_r+0xc98>
c0032cab:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032cae:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032cb2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032cb6:	8b 45 08             	mov    0x8(%ebp),%eax
c0032cb9:	89 04 24             	mov    %eax,(%esp)
c0032cbc:	e8 9f 3e 00 00       	call   c0036b60 <__ssprint_r>
c0032cc1:	85 c0                	test   %eax,%eax
c0032cc3:	0f 85 e7 f4 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0032cc9:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ccf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032cd2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cd8:	eb 9e                	jmp    c0032c78 <_svfprintf_r+0xc98>
c0032cda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032ce0:	84 c0                	test   %al,%al
c0032ce2:	75 2c                	jne    c0032d10 <_svfprintf_r+0xd30>
c0032ce4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032ceb:	74 23                	je     c0032d10 <_svfprintf_r+0xd30>
c0032ced:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032cf3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032cf7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032cfd:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032d00:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032d06:	e9 2d f7 ff ff       	jmp    c0032438 <_svfprintf_r+0x458>
c0032d0b:	90                   	nop
c0032d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032d10:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032d13:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032d1a:	00 00 00 
c0032d1d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032d23:	e9 10 f7 ff ff       	jmp    c0032438 <_svfprintf_r+0x458>
c0032d28:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032d2e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032d34:	85 f6                	test   %esi,%esi
c0032d36:	0f 8e 26 fc ff ff    	jle    c0032962 <_svfprintf_r+0x982>
c0032d3c:	83 fe 10             	cmp    $0x10,%esi
c0032d3f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d45:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032d4b:	7f 0b                	jg     c0032d58 <_svfprintf_r+0xd78>
c0032d4d:	eb 65                	jmp    c0032db4 <_svfprintf_r+0xdd4>
c0032d4f:	90                   	nop
c0032d50:	83 ee 10             	sub    $0x10,%esi
c0032d53:	83 fe 10             	cmp    $0x10,%esi
c0032d56:	7e 5c                	jle    c0032db4 <_svfprintf_r+0xdd4>
c0032d58:	83 c0 01             	add    $0x1,%eax
c0032d5b:	83 c1 10             	add    $0x10,%ecx
c0032d5e:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0032d64:	83 c7 08             	add    $0x8,%edi
c0032d67:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032d6e:	83 f8 07             	cmp    $0x7,%eax
c0032d71:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d77:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d7d:	7e d1                	jle    c0032d50 <_svfprintf_r+0xd70>
c0032d7f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d82:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d86:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d8a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d8d:	89 04 24             	mov    %eax,(%esp)
c0032d90:	e8 cb 3d 00 00       	call   c0036b60 <__ssprint_r>
c0032d95:	85 c0                	test   %eax,%eax
c0032d97:	0f 85 13 f4 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0032d9d:	83 ee 10             	sub    $0x10,%esi
c0032da0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032da6:	83 fe 10             	cmp    $0x10,%esi
c0032da9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032daf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032db2:	7f a4                	jg     c0032d58 <_svfprintf_r+0xd78>
c0032db4:	83 c0 01             	add    $0x1,%eax
c0032db7:	01 f1                	add    %esi,%ecx
c0032db9:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0032dbf:	83 c7 08             	add    $0x8,%edi
c0032dc2:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032dc5:	83 f8 07             	cmp    $0x7,%eax
c0032dc8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032dce:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dd4:	0f 8e 88 fb ff ff    	jle    c0032962 <_svfprintf_r+0x982>
c0032dda:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032de0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032de4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032de7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032deb:	8b 45 08             	mov    0x8(%ebp),%eax
c0032dee:	89 04 24             	mov    %eax,(%esp)
c0032df1:	e8 6a 3d 00 00       	call   c0036b60 <__ssprint_r>
c0032df6:	85 c0                	test   %eax,%eax
c0032df8:	0f 85 b2 f3 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0032dfe:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e04:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032e07:	e9 56 fb ff ff       	jmp    c0032962 <_svfprintf_r+0x982>
c0032e0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032e10:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032e17:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032e1d:	0f 8e df 05 00 00    	jle    c0033402 <_svfprintf_r+0x1422>
c0032e23:	89 07                	mov    %eax,(%edi)
c0032e25:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e2b:	8d 51 01             	lea    0x1(%ecx),%edx
c0032e2e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032e35:	83 c7 08             	add    $0x8,%edi
c0032e38:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e3e:	83 c0 01             	add    $0x1,%eax
c0032e41:	83 f8 07             	cmp    $0x7,%eax
c0032e44:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e4a:	0f 8f 59 06 00 00    	jg     c00334a9 <_svfprintf_r+0x14c9>
c0032e50:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032e56:	83 c0 01             	add    $0x1,%eax
c0032e59:	83 c7 08             	add    $0x8,%edi
c0032e5c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e62:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032e65:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032e6b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032e6e:	01 da                	add    %ebx,%edx
c0032e70:	83 f8 07             	cmp    $0x7,%eax
c0032e73:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e79:	0f 8f f2 05 00 00    	jg     c0033471 <_svfprintf_r+0x1491>
c0032e7f:	d9 ee                	fldz   
c0032e81:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032e87:	df e9                	fucomip %st(1),%st
c0032e89:	dd d8                	fstp   %st(0)
c0032e8b:	7a 06                	jp     c0032e93 <_svfprintf_r+0xeb3>
c0032e8d:	0f 84 33 03 00 00    	je     c00331c6 <_svfprintf_r+0x11e6>
c0032e93:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032e99:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032e9f:	83 c1 01             	add    $0x1,%ecx
c0032ea2:	89 0f                	mov    %ecx,(%edi)
c0032ea4:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032ea7:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032eaa:	01 ca                	add    %ecx,%edx
c0032eac:	83 c0 01             	add    $0x1,%eax
c0032eaf:	83 f8 07             	cmp    $0x7,%eax
c0032eb2:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032eb8:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ebe:	0f 8f 75 05 00 00    	jg     c0033439 <_svfprintf_r+0x1459>
c0032ec4:	83 c7 08             	add    $0x8,%edi
c0032ec7:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032ecd:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032ed3:	89 0f                	mov    %ecx,(%edi)
c0032ed5:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032ed8:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032edb:	83 c0 01             	add    $0x1,%eax
c0032ede:	83 f8 07             	cmp    $0x7,%eax
c0032ee1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ee7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032eed:	0f 8e 96 fb ff ff    	jle    c0032a89 <_svfprintf_r+0xaa9>
c0032ef3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ef9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032efd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f00:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f04:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f07:	89 04 24             	mov    %eax,(%esp)
c0032f0a:	e8 51 3c 00 00       	call   c0036b60 <__ssprint_r>
c0032f0f:	85 c0                	test   %eax,%eax
c0032f11:	0f 85 99 f2 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0032f17:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f1d:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f20:	e9 67 fb ff ff       	jmp    c0032a8c <_svfprintf_r+0xaac>
c0032f25:	8d 76 00             	lea    0x0(%esi),%esi
c0032f28:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f2e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f32:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f35:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f39:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f3c:	89 04 24             	mov    %eax,(%esp)
c0032f3f:	e8 1c 3c 00 00       	call   c0036b60 <__ssprint_r>
c0032f44:	85 c0                	test   %eax,%eax
c0032f46:	0f 84 43 fc ff ff    	je     c0032b8f <_svfprintf_r+0xbaf>
c0032f4c:	e9 5f f2 ff ff       	jmp    c00321b0 <_svfprintf_r+0x1d0>
c0032f51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032f58:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f5e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f62:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f65:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f69:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f6c:	89 04 24             	mov    %eax,(%esp)
c0032f6f:	e8 ec 3b 00 00       	call   c0036b60 <__ssprint_r>
c0032f74:	85 c0                	test   %eax,%eax
c0032f76:	0f 85 34 f2 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0032f7c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f82:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f85:	e9 c8 f9 ff ff       	jmp    c0032952 <_svfprintf_r+0x972>
c0032f8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f90:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f96:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f9a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f9d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032fa1:	8b 45 08             	mov    0x8(%ebp),%eax
c0032fa4:	89 04 24             	mov    %eax,(%esp)
c0032fa7:	e8 b4 3b 00 00       	call   c0036b60 <__ssprint_r>
c0032fac:	85 c0                	test   %eax,%eax
c0032fae:	0f 85 fc f1 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0032fb4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032fba:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032fbd:	e9 53 f9 ff ff       	jmp    c0032915 <_svfprintf_r+0x935>
c0032fc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fc8:	89 c2                	mov    %eax,%edx
c0032fca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fd0:	89 c8                	mov    %ecx,%eax
c0032fd2:	83 ea 01             	sub    $0x1,%edx
c0032fd5:	83 e0 07             	and    $0x7,%eax
c0032fd8:	c1 e9 03             	shr    $0x3,%ecx
c0032fdb:	83 c0 30             	add    $0x30,%eax
c0032fde:	85 c9                	test   %ecx,%ecx
c0032fe0:	88 02                	mov    %al,(%edx)
c0032fe2:	75 ec                	jne    c0032fd0 <_svfprintf_r+0xff0>
c0032fe4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032feb:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0032ff1:	0f 84 5b 01 00 00    	je     c0033152 <_svfprintf_r+0x1172>
c0032ff7:	3c 30                	cmp    $0x30,%al
c0032ff9:	74 0b                	je     c0033006 <_svfprintf_r+0x1026>
c0032ffb:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0033002:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0033006:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033009:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003300f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033015:	e9 1e f4 ff ff       	jmp    c0032438 <_svfprintf_r+0x458>
c003301a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033020:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033026:	85 db                	test   %ebx,%ebx
c0033028:	0f 8e 66 05 00 00    	jle    c0033594 <_svfprintf_r+0x15b4>
c003302e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033034:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c003303a:	01 d0                	add    %edx,%eax
c003303c:	89 c3                	mov    %eax,%ebx
c003303e:	29 d3                	sub    %edx,%ebx
c0033040:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033046:	89 d0                	mov    %edx,%eax
c0033048:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c003304e:	39 d3                	cmp    %edx,%ebx
c0033050:	0f 4f da             	cmovg  %edx,%ebx
c0033053:	85 db                	test   %ebx,%ebx
c0033055:	7e 28                	jle    c003307f <_svfprintf_r+0x109f>
c0033057:	89 07                	mov    %eax,(%edi)
c0033059:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003305f:	01 d9                	add    %ebx,%ecx
c0033061:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033064:	83 c7 08             	add    $0x8,%edi
c0033067:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003306d:	83 c0 01             	add    $0x1,%eax
c0033070:	83 f8 07             	cmp    $0x7,%eax
c0033073:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033079:	0f 8f 58 09 00 00    	jg     c00339d7 <_svfprintf_r+0x19f7>
c003307f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033085:	31 c0                	xor    %eax,%eax
c0033087:	85 db                	test   %ebx,%ebx
c0033089:	0f 49 c3             	cmovns %ebx,%eax
c003308c:	29 c6                	sub    %eax,%esi
c003308e:	85 f6                	test   %esi,%esi
c0033090:	0f 8e 40 02 00 00    	jle    c00332d6 <_svfprintf_r+0x12f6>
c0033096:	83 fe 10             	cmp    $0x10,%esi
c0033099:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003309f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00330a5:	7f 15                	jg     c00330bc <_svfprintf_r+0x10dc>
c00330a7:	e9 db 01 00 00       	jmp    c0033287 <_svfprintf_r+0x12a7>
c00330ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00330b0:	83 ee 10             	sub    $0x10,%esi
c00330b3:	83 fe 10             	cmp    $0x10,%esi
c00330b6:	0f 8e cb 01 00 00    	jle    c0033287 <_svfprintf_r+0x12a7>
c00330bc:	83 c0 01             	add    $0x1,%eax
c00330bf:	83 c1 10             	add    $0x10,%ecx
c00330c2:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c00330c8:	83 c7 08             	add    $0x8,%edi
c00330cb:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00330d2:	83 f8 07             	cmp    $0x7,%eax
c00330d5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330db:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330e1:	7e cd                	jle    c00330b0 <_svfprintf_r+0x10d0>
c00330e3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00330e6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00330ea:	89 44 24 04          	mov    %eax,0x4(%esp)
c00330ee:	8b 45 08             	mov    0x8(%ebp),%eax
c00330f1:	89 04 24             	mov    %eax,(%esp)
c00330f4:	e8 67 3a 00 00       	call   c0036b60 <__ssprint_r>
c00330f9:	85 c0                	test   %eax,%eax
c00330fb:	0f 85 af f0 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0033101:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033107:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003310a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033110:	eb 9e                	jmp    c00330b0 <_svfprintf_r+0x10d0>
c0033112:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033115:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c003311a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0033120:	89 c7                	mov    %eax,%edi
c0033122:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033128:	89 c8                	mov    %ecx,%eax
c003312a:	83 ef 01             	sub    $0x1,%edi
c003312d:	f7 e6                	mul    %esi
c003312f:	c1 ea 03             	shr    $0x3,%edx
c0033132:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033135:	01 c0                	add    %eax,%eax
c0033137:	29 c1                	sub    %eax,%ecx
c0033139:	83 c1 30             	add    $0x30,%ecx
c003313c:	85 d2                	test   %edx,%edx
c003313e:	88 0f                	mov    %cl,(%edi)
c0033140:	89 d1                	mov    %edx,%ecx
c0033142:	75 e4                	jne    c0033128 <_svfprintf_r+0x1148>
c0033144:	89 fa                	mov    %edi,%edx
c0033146:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c003314c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0033152:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033155:	29 d0                	sub    %edx,%eax
c0033157:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003315d:	e9 d6 f2 ff ff       	jmp    c0032438 <_svfprintf_r+0x458>
c0033162:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033168:	83 f9 09             	cmp    $0x9,%ecx
c003316b:	77 a5                	ja     c0033112 <_svfprintf_r+0x1132>
c003316d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033173:	83 c1 30             	add    $0x30,%ecx
c0033176:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033179:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003317f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033182:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033188:	e9 ab f2 ff ff       	jmp    c0032438 <_svfprintf_r+0x458>
c003318d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033193:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033197:	8b 45 0c             	mov    0xc(%ebp),%eax
c003319a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003319e:	8b 45 08             	mov    0x8(%ebp),%eax
c00331a1:	89 04 24             	mov    %eax,(%esp)
c00331a4:	e8 b7 39 00 00       	call   c0036b60 <__ssprint_r>
c00331a9:	85 c0                	test   %eax,%eax
c00331ab:	0f 85 ff ef ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c00331b1:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00331b8:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00331bb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00331c1:	e9 18 f7 ff ff       	jmp    c00328de <_svfprintf_r+0x8fe>
c00331c6:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00331cc:	8d 73 ff             	lea    -0x1(%ebx),%esi
c00331cf:	85 f6                	test   %esi,%esi
c00331d1:	0f 8e f0 fc ff ff    	jle    c0032ec7 <_svfprintf_r+0xee7>
c00331d7:	83 fe 10             	cmp    $0x10,%esi
c00331da:	7e 70                	jle    c003324c <_svfprintf_r+0x126c>
c00331dc:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00331e2:	eb 0c                	jmp    c00331f0 <_svfprintf_r+0x1210>
c00331e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00331e8:	83 ee 10             	sub    $0x10,%esi
c00331eb:	83 fe 10             	cmp    $0x10,%esi
c00331ee:	7e 5c                	jle    c003324c <_svfprintf_r+0x126c>
c00331f0:	83 c0 01             	add    $0x1,%eax
c00331f3:	83 c2 10             	add    $0x10,%edx
c00331f6:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c00331fc:	83 c7 08             	add    $0x8,%edi
c00331ff:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033206:	83 f8 07             	cmp    $0x7,%eax
c0033209:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003320f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033215:	7e d1                	jle    c00331e8 <_svfprintf_r+0x1208>
c0033217:	8b 45 0c             	mov    0xc(%ebp),%eax
c003321a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003321e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033222:	8b 45 08             	mov    0x8(%ebp),%eax
c0033225:	89 04 24             	mov    %eax,(%esp)
c0033228:	e8 33 39 00 00       	call   c0036b60 <__ssprint_r>
c003322d:	85 c0                	test   %eax,%eax
c003322f:	0f 85 7b ef ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0033235:	83 ee 10             	sub    $0x10,%esi
c0033238:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003323e:	83 fe 10             	cmp    $0x10,%esi
c0033241:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033247:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003324a:	7f a4                	jg     c00331f0 <_svfprintf_r+0x1210>
c003324c:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033252:	01 f2                	add    %esi,%edx
c0033254:	89 77 04             	mov    %esi,0x4(%edi)
c0033257:	e9 50 fc ff ff       	jmp    c0032eac <_svfprintf_r+0xecc>
c003325c:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033262:	01 f1                	add    %esi,%ecx
c0033264:	89 77 04             	mov    %esi,0x4(%edi)
c0033267:	e9 6f fc ff ff       	jmp    c0032edb <_svfprintf_r+0xefb>
c003326c:	8b 45 14             	mov    0x14(%ebp),%eax
c003326f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033275:	8b 00                	mov    (%eax),%eax
c0033277:	89 10                	mov    %edx,(%eax)
c0033279:	8b 45 14             	mov    0x14(%ebp),%eax
c003327c:	83 c0 04             	add    $0x4,%eax
c003327f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033282:	e9 f4 ed ff ff       	jmp    c003207b <_svfprintf_r+0x9b>
c0033287:	83 c0 01             	add    $0x1,%eax
c003328a:	01 f1                	add    %esi,%ecx
c003328c:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033292:	83 c7 08             	add    $0x8,%edi
c0033295:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033298:	83 f8 07             	cmp    $0x7,%eax
c003329b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332a1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332a7:	7e 2d                	jle    c00332d6 <_svfprintf_r+0x12f6>
c00332a9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00332af:	89 44 24 08          	mov    %eax,0x8(%esp)
c00332b3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00332b6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00332ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00332bd:	89 04 24             	mov    %eax,(%esp)
c00332c0:	e8 9b 38 00 00       	call   c0036b60 <__ssprint_r>
c00332c5:	85 c0                	test   %eax,%eax
c00332c7:	0f 85 e3 ee ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c00332cd:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00332d3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00332d6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00332dc:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c00332e2:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c00332e8:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c00332ee:	89 c6                	mov    %eax,%esi
c00332f0:	7c 0d                	jl     c00332ff <_svfprintf_r+0x131f>
c00332f2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00332f9:	0f 84 5e 05 00 00    	je     c003385d <_svfprintf_r+0x187d>
c00332ff:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033305:	89 07                	mov    %eax,(%edi)
c0033307:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c003330d:	01 c1                	add    %eax,%ecx
c003330f:	89 47 04             	mov    %eax,0x4(%edi)
c0033312:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033318:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003331e:	83 c0 01             	add    $0x1,%eax
c0033321:	83 f8 07             	cmp    $0x7,%eax
c0033324:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003332a:	0f 8f d9 06 00 00    	jg     c0033a09 <_svfprintf_r+0x1a29>
c0033330:	83 c7 08             	add    $0x8,%edi
c0033333:	89 d0                	mov    %edx,%eax
c0033335:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c003333b:	89 f2                	mov    %esi,%edx
c003333d:	29 f3                	sub    %esi,%ebx
c003333f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033345:	29 c6                	sub    %eax,%esi
c0033347:	39 de                	cmp    %ebx,%esi
c0033349:	0f 4e de             	cmovle %esi,%ebx
c003334c:	85 db                	test   %ebx,%ebx
c003334e:	7e 29                	jle    c0033379 <_svfprintf_r+0x1399>
c0033350:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033356:	01 d9                	add    %ebx,%ecx
c0033358:	83 c7 08             	add    $0x8,%edi
c003335b:	89 57 f8             	mov    %edx,-0x8(%edi)
c003335e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033361:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033367:	83 c0 01             	add    $0x1,%eax
c003336a:	83 f8 07             	cmp    $0x7,%eax
c003336d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033373:	0f 8f c8 06 00 00    	jg     c0033a41 <_svfprintf_r+0x1a61>
c0033379:	31 c0                	xor    %eax,%eax
c003337b:	85 db                	test   %ebx,%ebx
c003337d:	0f 49 c3             	cmovns %ebx,%eax
c0033380:	29 c6                	sub    %eax,%esi
c0033382:	85 f6                	test   %esi,%esi
c0033384:	0f 8e 02 f7 ff ff    	jle    c0032a8c <_svfprintf_r+0xaac>
c003338a:	83 fe 10             	cmp    $0x10,%esi
c003338d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033393:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033399:	7f 11                	jg     c00333ac <_svfprintf_r+0x13cc>
c003339b:	e9 bc fe ff ff       	jmp    c003325c <_svfprintf_r+0x127c>
c00333a0:	83 ee 10             	sub    $0x10,%esi
c00333a3:	83 fe 10             	cmp    $0x10,%esi
c00333a6:	0f 8e b0 fe ff ff    	jle    c003325c <_svfprintf_r+0x127c>
c00333ac:	83 c0 01             	add    $0x1,%eax
c00333af:	83 c1 10             	add    $0x10,%ecx
c00333b2:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c00333b8:	83 c7 08             	add    $0x8,%edi
c00333bb:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00333c2:	83 f8 07             	cmp    $0x7,%eax
c00333c5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00333cb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333d1:	7e cd                	jle    c00333a0 <_svfprintf_r+0x13c0>
c00333d3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333d6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00333da:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333de:	8b 45 08             	mov    0x8(%ebp),%eax
c00333e1:	89 04 24             	mov    %eax,(%esp)
c00333e4:	e8 77 37 00 00       	call   c0036b60 <__ssprint_r>
c00333e9:	85 c0                	test   %eax,%eax
c00333eb:	0f 85 bf ed ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c00333f1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00333f7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00333fa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033400:	eb 9e                	jmp    c00333a0 <_svfprintf_r+0x13c0>
c0033402:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033409:	0f 85 14 fa ff ff    	jne    c0032e23 <_svfprintf_r+0xe43>
c003340f:	89 07                	mov    %eax,(%edi)
c0033411:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033417:	8d 51 01             	lea    0x1(%ecx),%edx
c003341a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033421:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033427:	83 c0 01             	add    $0x1,%eax
c003342a:	83 f8 07             	cmp    $0x7,%eax
c003342d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033433:	0f 8e 8b fa ff ff    	jle    c0032ec4 <_svfprintf_r+0xee4>
c0033439:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003343f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033443:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033446:	89 44 24 04          	mov    %eax,0x4(%esp)
c003344a:	8b 45 08             	mov    0x8(%ebp),%eax
c003344d:	89 04 24             	mov    %eax,(%esp)
c0033450:	e8 0b 37 00 00       	call   c0036b60 <__ssprint_r>
c0033455:	85 c0                	test   %eax,%eax
c0033457:	0f 85 53 ed ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c003345d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033463:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033466:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003346c:	e9 56 fa ff ff       	jmp    c0032ec7 <_svfprintf_r+0xee7>
c0033471:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033477:	89 44 24 08          	mov    %eax,0x8(%esp)
c003347b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003347e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033482:	8b 45 08             	mov    0x8(%ebp),%eax
c0033485:	89 04 24             	mov    %eax,(%esp)
c0033488:	e8 d3 36 00 00       	call   c0036b60 <__ssprint_r>
c003348d:	85 c0                	test   %eax,%eax
c003348f:	0f 85 1b ed ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0033495:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003349b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003349e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334a4:	e9 d6 f9 ff ff       	jmp    c0032e7f <_svfprintf_r+0xe9f>
c00334a9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00334af:	89 44 24 08          	mov    %eax,0x8(%esp)
c00334b3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334b6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00334ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00334bd:	89 04 24             	mov    %eax,(%esp)
c00334c0:	e8 9b 36 00 00       	call   c0036b60 <__ssprint_r>
c00334c5:	85 c0                	test   %eax,%eax
c00334c7:	0f 85 e3 ec ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c00334cd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00334d3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00334d6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334dc:	e9 6f f9 ff ff       	jmp    c0032e50 <_svfprintf_r+0xe70>
c00334e1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00334e7:	dd 1c 24             	fstpl  (%esp)
c00334ea:	e8 11 35 00 00       	call   c0036a00 <__fpclassifyd>
c00334ef:	85 c0                	test   %eax,%eax
c00334f1:	0f 85 a3 01 00 00    	jne    c003369a <_svfprintf_r+0x16ba>
c00334f7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00334fe:	ba 06 98 03 c0       	mov    $0xc0039806,%edx
c0033503:	b8 0a 98 03 c0       	mov    $0xc003980a,%eax
c0033508:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003350f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0033516:	00 00 00 
c0033519:	0f 4e c2             	cmovle %edx,%eax
c003351c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033522:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0033529:	ff ff ff 
c003352c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0033533:	00 00 00 
c0033536:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003353d:	00 00 00 
c0033540:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033547:	00 00 00 
c003354a:	e9 29 ed ff ff       	jmp    c0032278 <_svfprintf_r+0x298>
c003354f:	dd 00                	fldl   (%eax)
c0033551:	83 c0 08             	add    $0x8,%eax
c0033554:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c003355a:	89 45 14             	mov    %eax,0x14(%ebp)
c003355d:	e9 e6 ef ff ff       	jmp    c0032548 <_svfprintf_r+0x568>
c0033562:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033568:	89 44 24 08          	mov    %eax,0x8(%esp)
c003356c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003356f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033573:	8b 45 08             	mov    0x8(%ebp),%eax
c0033576:	89 04 24             	mov    %eax,(%esp)
c0033579:	e8 e2 35 00 00       	call   c0036b60 <__ssprint_r>
c003357e:	85 c0                	test   %eax,%eax
c0033580:	0f 85 2a ec ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0033586:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003358c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003358f:	e9 6b f6 ff ff       	jmp    c0032bff <_svfprintf_r+0xc1f>
c0033594:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003359a:	83 c1 01             	add    $0x1,%ecx
c003359d:	83 c7 08             	add    $0x8,%edi
c00335a0:	c7 47 f8 37 98 03 c0 	movl   $0xc0039837,-0x8(%edi)
c00335a7:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c00335ae:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00335b4:	83 c0 01             	add    $0x1,%eax
c00335b7:	83 f8 07             	cmp    $0x7,%eax
c00335ba:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335c0:	0f 8f ef 02 00 00    	jg     c00338b5 <_svfprintf_r+0x18d5>
c00335c6:	85 db                	test   %ebx,%ebx
c00335c8:	75 17                	jne    c00335e1 <_svfprintf_r+0x1601>
c00335ca:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c00335d0:	85 d2                	test   %edx,%edx
c00335d2:	75 0d                	jne    c00335e1 <_svfprintf_r+0x1601>
c00335d4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00335db:	0f 84 ab f4 ff ff    	je     c0032a8c <_svfprintf_r+0xaac>
c00335e1:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00335e7:	83 c7 08             	add    $0x8,%edi
c00335ea:	89 47 f8             	mov    %eax,-0x8(%edi)
c00335ed:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00335f3:	89 47 fc             	mov    %eax,-0x4(%edi)
c00335f6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c00335f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335ff:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033605:	83 c0 01             	add    $0x1,%eax
c0033608:	83 f8 07             	cmp    $0x7,%eax
c003360b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033611:	0f 8f 60 03 00 00    	jg     c0033977 <_svfprintf_r+0x1997>
c0033617:	f7 db                	neg    %ebx
c0033619:	85 db                	test   %ebx,%ebx
c003361b:	0f 8e 21 03 00 00    	jle    c0033942 <_svfprintf_r+0x1962>
c0033621:	83 fb 10             	cmp    $0x10,%ebx
c0033624:	0f 8e c3 02 00 00    	jle    c00338ed <_svfprintf_r+0x190d>
c003362a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0033630:	eb 12                	jmp    c0033644 <_svfprintf_r+0x1664>
c0033632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033638:	83 eb 10             	sub    $0x10,%ebx
c003363b:	83 fb 10             	cmp    $0x10,%ebx
c003363e:	0f 8e a9 02 00 00    	jle    c00338ed <_svfprintf_r+0x190d>
c0033644:	83 c0 01             	add    $0x1,%eax
c0033647:	83 c2 10             	add    $0x10,%edx
c003364a:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c0033650:	83 c7 08             	add    $0x8,%edi
c0033653:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003365a:	83 f8 07             	cmp    $0x7,%eax
c003365d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033663:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033669:	7e cd                	jle    c0033638 <_svfprintf_r+0x1658>
c003366b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003366e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033672:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033676:	8b 45 08             	mov    0x8(%ebp),%eax
c0033679:	89 04 24             	mov    %eax,(%esp)
c003367c:	e8 df 34 00 00       	call   c0036b60 <__ssprint_r>
c0033681:	85 c0                	test   %eax,%eax
c0033683:	0f 85 27 eb ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0033689:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003368f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033692:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033698:	eb 9e                	jmp    c0033638 <_svfprintf_r+0x1658>
c003369a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c00336a0:	83 e3 df             	and    $0xffffffdf,%ebx
c00336a3:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c00336aa:	0f 84 05 03 00 00    	je     c00339b5 <_svfprintf_r+0x19d5>
c00336b0:	83 fb 47             	cmp    $0x47,%ebx
c00336b3:	75 16                	jne    c00336cb <_svfprintf_r+0x16eb>
c00336b5:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00336bb:	b8 01 00 00 00       	mov    $0x1,%eax
c00336c0:	85 d2                	test   %edx,%edx
c00336c2:	0f 45 c2             	cmovne %edx,%eax
c00336c5:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c00336cb:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00336d1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00336d7:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c00336dd:	80 cc 01             	or     $0x1,%ah
c00336e0:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c00336e6:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00336ec:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c00336f3:	85 c0                	test   %eax,%eax
c00336f5:	0f 88 ba 05 00 00    	js     c0033cb5 <_svfprintf_r+0x1cd5>
c00336fb:	83 fb 46             	cmp    $0x46,%ebx
c00336fe:	0f 94 c0             	sete   %al
c0033701:	89 c6                	mov    %eax,%esi
c0033703:	0f 84 d4 03 00 00    	je     c0033add <_svfprintf_r+0x1afd>
c0033709:	83 fb 45             	cmp    $0x45,%ebx
c003370c:	0f 85 99 05 00 00    	jne    c0033cab <_svfprintf_r+0x1ccb>
c0033712:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033718:	dd 54 24 04          	fstl   0x4(%esp)
c003371c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0033723:	00 
c0033724:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c003372a:	8d 70 01             	lea    0x1(%eax),%esi
c003372d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033733:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033737:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c003373d:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033741:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033747:	89 44 24 14          	mov    %eax,0x14(%esp)
c003374b:	8b 45 08             	mov    0x8(%ebp),%eax
c003374e:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033752:	89 04 24             	mov    %eax,(%esp)
c0033755:	e8 56 09 00 00       	call   c00340b0 <_dtoa_r>
c003375a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033760:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033763:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033769:	d9 ee                	fldz   
c003376b:	d9 c9                	fxch   %st(1)
c003376d:	df e9                	fucomip %st(1),%st
c003376f:	dd d8                	fstp   %st(0)
c0033771:	0f 8a fd 00 00 00    	jp     c0033874 <_svfprintf_r+0x1894>
c0033777:	89 c8                	mov    %ecx,%eax
c0033779:	0f 85 f5 00 00 00    	jne    c0033874 <_svfprintf_r+0x1894>
c003377f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033785:	83 fb 47             	cmp    $0x47,%ebx
c0033788:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003378e:	0f 84 1e 04 00 00    	je     c0033bb2 <_svfprintf_r+0x1bd2>
c0033794:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003379b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00337a1:	0f 8e 65 04 00 00    	jle    c0033c0c <_svfprintf_r+0x1c2c>
c00337a7:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c00337ae:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c00337b4:	0f 84 3c 05 00 00    	je     c0033cf6 <_svfprintf_r+0x1d16>
c00337ba:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c00337c0:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c00337c6:	0f 8f f7 04 00 00    	jg     c0033cc3 <_svfprintf_r+0x1ce3>
c00337cc:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00337d2:	83 e0 01             	and    $0x1,%eax
c00337d5:	0f 85 e2 05 00 00    	jne    c0033dbd <_svfprintf_r+0x1ddd>
c00337db:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c00337e1:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c00337e8:	00 00 00 
c00337eb:	85 d2                	test   %edx,%edx
c00337ed:	0f 49 c2             	cmovns %edx,%eax
c00337f0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00337f6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c00337fd:	0f 85 68 03 00 00    	jne    c0033b6b <_svfprintf_r+0x1b8b>
c0033803:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033809:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c003380f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033816:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003381d:	00 00 00 
c0033820:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033826:	e9 4d ea ff ff       	jmp    c0032278 <_svfprintf_r+0x298>
c003382b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033831:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033835:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033838:	89 44 24 04          	mov    %eax,0x4(%esp)
c003383c:	8b 45 08             	mov    0x8(%ebp),%eax
c003383f:	89 04 24             	mov    %eax,(%esp)
c0033842:	e8 19 33 00 00       	call   c0036b60 <__ssprint_r>
c0033847:	85 c0                	test   %eax,%eax
c0033849:	0f 85 61 e9 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c003384f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033855:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033858:	e9 f2 f3 ff ff       	jmp    c0032c4f <_svfprintf_r+0xc6f>
c003385d:	89 d0                	mov    %edx,%eax
c003385f:	e9 d1 fa ff ff       	jmp    c0033335 <_svfprintf_r+0x1355>
c0033864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033868:	8d 50 01             	lea    0x1(%eax),%edx
c003386b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033871:	c6 00 30             	movb   $0x30,(%eax)
c0033874:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c003387a:	39 c1                	cmp    %eax,%ecx
c003387c:	77 ea                	ja     c0033868 <_svfprintf_r+0x1888>
c003387e:	e9 fc fe ff ff       	jmp    c003377f <_svfprintf_r+0x179f>
c0033883:	8b 45 08             	mov    0x8(%ebp),%eax
c0033886:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003388d:	00 
c003388e:	89 04 24             	mov    %eax,(%esp)
c0033891:	e8 4a 1b 00 00       	call   c00353e0 <_malloc_r>
c0033896:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033899:	85 c0                	test   %eax,%eax
c003389b:	89 02                	mov    %eax,(%edx)
c003389d:	89 42 10             	mov    %eax,0x10(%edx)
c00338a0:	0f 84 15 06 00 00    	je     c0033ebb <_svfprintf_r+0x1edb>
c00338a6:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338a9:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c00338b0:	e9 6c e7 ff ff       	jmp    c0032021 <_svfprintf_r+0x41>
c00338b5:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338bb:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338bf:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338c2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338c6:	8b 45 08             	mov    0x8(%ebp),%eax
c00338c9:	89 04 24             	mov    %eax,(%esp)
c00338cc:	e8 8f 32 00 00       	call   c0036b60 <__ssprint_r>
c00338d1:	85 c0                	test   %eax,%eax
c00338d3:	0f 85 d7 e8 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c00338d9:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00338df:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338e2:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00338e8:	e9 d9 fc ff ff       	jmp    c00335c6 <_svfprintf_r+0x15e6>
c00338ed:	83 c0 01             	add    $0x1,%eax
c00338f0:	01 da                	add    %ebx,%edx
c00338f2:	c7 07 a0 99 03 c0    	movl   $0xc00399a0,(%edi)
c00338f8:	83 c7 08             	add    $0x8,%edi
c00338fb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00338fe:	83 f8 07             	cmp    $0x7,%eax
c0033901:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033907:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003390d:	7e 33                	jle    c0033942 <_svfprintf_r+0x1962>
c003390f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033915:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033919:	8b 45 0c             	mov    0xc(%ebp),%eax
c003391c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033920:	8b 45 08             	mov    0x8(%ebp),%eax
c0033923:	89 04 24             	mov    %eax,(%esp)
c0033926:	e8 35 32 00 00       	call   c0036b60 <__ssprint_r>
c003392b:	85 c0                	test   %eax,%eax
c003392d:	0f 85 7d e8 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0033933:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033939:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003393c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033942:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0033948:	83 c0 01             	add    $0x1,%eax
c003394b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033951:	89 1f                	mov    %ebx,(%edi)
c0033953:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033959:	01 da                	add    %ebx,%edx
c003395b:	83 f8 07             	cmp    $0x7,%eax
c003395e:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033961:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033967:	0f 8f 86 f5 ff ff    	jg     c0032ef3 <_svfprintf_r+0xf13>
c003396d:	83 c7 08             	add    $0x8,%edi
c0033970:	89 d1                	mov    %edx,%ecx
c0033972:	e9 15 f1 ff ff       	jmp    c0032a8c <_svfprintf_r+0xaac>
c0033977:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003397d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033981:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033984:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033988:	8b 45 08             	mov    0x8(%ebp),%eax
c003398b:	89 04 24             	mov    %eax,(%esp)
c003398e:	e8 cd 31 00 00       	call   c0036b60 <__ssprint_r>
c0033993:	85 c0                	test   %eax,%eax
c0033995:	0f 85 15 e8 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c003399b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00339a1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339a4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00339aa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00339b0:	e9 62 fc ff ff       	jmp    c0033617 <_svfprintf_r+0x1637>
c00339b5:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c00339bc:	00 00 00 
c00339bf:	e9 07 fd ff ff       	jmp    c00336cb <_svfprintf_r+0x16eb>
c00339c4:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00339ca:	89 04 24             	mov    %eax,(%esp)
c00339cd:	e8 0e 31 00 00       	call   c0036ae0 <strlen>
c00339d2:	e9 6a e8 ff ff       	jmp    c0032241 <_svfprintf_r+0x261>
c00339d7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339dd:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339e1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339e4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00339eb:	89 04 24             	mov    %eax,(%esp)
c00339ee:	e8 6d 31 00 00       	call   c0036b60 <__ssprint_r>
c00339f3:	85 c0                	test   %eax,%eax
c00339f5:	0f 85 b5 e7 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c00339fb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a01:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a04:	e9 76 f6 ff ff       	jmp    c003307f <_svfprintf_r+0x109f>
c0033a09:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a0f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a13:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a16:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a1d:	89 04 24             	mov    %eax,(%esp)
c0033a20:	e8 3b 31 00 00       	call   c0036b60 <__ssprint_r>
c0033a25:	85 c0                	test   %eax,%eax
c0033a27:	0f 85 83 e7 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0033a2d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033a33:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a36:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a3c:	e9 f4 f8 ff ff       	jmp    c0033335 <_svfprintf_r+0x1355>
c0033a41:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a47:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a4b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a4e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a52:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a55:	89 04 24             	mov    %eax,(%esp)
c0033a58:	e8 03 31 00 00       	call   c0036b60 <__ssprint_r>
c0033a5d:	85 c0                	test   %eax,%eax
c0033a5f:	0f 85 4b e7 ff ff    	jne    c00321b0 <_svfprintf_r+0x1d0>
c0033a65:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033a6b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a6e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033a74:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a7a:	e9 fa f8 ff ff       	jmp    c0033379 <_svfprintf_r+0x1399>
c0033a7f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033a85:	b0 06                	mov    $0x6,%al
c0033a87:	89 75 14             	mov    %esi,0x14(%ebp)
c0033a8a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a91:	00 00 00 
c0033a94:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033a9b:	00 00 00 
c0033a9e:	83 fa 06             	cmp    $0x6,%edx
c0033aa1:	0f 46 c2             	cmovbe %edx,%eax
c0033aa4:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033aaa:	85 c0                	test   %eax,%eax
c0033aac:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033ab2:	c7 85 28 ff ff ff 30 	movl   $0xc0039830,-0xd8(%ebp)
c0033ab9:	98 03 c0 
c0033abc:	0f 49 d0             	cmovns %eax,%edx
c0033abf:	31 db                	xor    %ebx,%ebx
c0033ac1:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033ac7:	e9 b7 e7 ff ff       	jmp    c0032283 <_svfprintf_r+0x2a3>
c0033acc:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033ad3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033ad8:	e9 9d ea ff ff       	jmp    c003257a <_svfprintf_r+0x59a>
c0033add:	ba 03 00 00 00       	mov    $0x3,%edx
c0033ae2:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033ae8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033aec:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033af2:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033af6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033afc:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033b00:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033b06:	dd 54 24 04          	fstl   0x4(%esp)
c0033b0a:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033b0e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033b14:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033b18:	8b 45 08             	mov    0x8(%ebp),%eax
c0033b1b:	89 04 24             	mov    %eax,(%esp)
c0033b1e:	e8 8d 05 00 00       	call   c00340b0 <_dtoa_r>
c0033b23:	83 fb 47             	cmp    $0x47,%ebx
c0033b26:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033b2c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033b32:	75 09                	jne    c0033b3d <_svfprintf_r+0x1b5d>
c0033b34:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033b3b:	74 5b                	je     c0033b98 <_svfprintf_r+0x1bb8>
c0033b3d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033b43:	89 f0                	mov    %esi,%eax
c0033b45:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033b4b:	01 d1                	add    %edx,%ecx
c0033b4d:	84 c0                	test   %al,%al
c0033b4f:	0f 84 14 fc ff ff    	je     c0033769 <_svfprintf_r+0x1789>
c0033b55:	80 3a 30             	cmpb   $0x30,(%edx)
c0033b58:	0f 84 37 02 00 00    	je     c0033d95 <_svfprintf_r+0x1db5>
c0033b5e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b64:	01 c1                	add    %eax,%ecx
c0033b66:	e9 fe fb ff ff       	jmp    c0033769 <_svfprintf_r+0x1789>
c0033b6b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b71:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033b77:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033b7c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b83:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b8a:	00 00 00 
c0033b8d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033b93:	e9 e4 e6 ff ff       	jmp    c003227c <_svfprintf_r+0x29c>
c0033b98:	dd d8                	fstp   %st(0)
c0033b9a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033ba0:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033ba6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033bac:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033bb2:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033bb8:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033bbb:	7c 48                	jl     c0033c05 <_svfprintf_r+0x1c25>
c0033bbd:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033bc3:	7c 40                	jl     c0033c05 <_svfprintf_r+0x1c25>
c0033bc5:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033bcb:	e9 ea fb ff ff       	jmp    c00337ba <_svfprintf_r+0x17da>
c0033bd0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033bd6:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033bdd:	89 75 14             	mov    %esi,0x14(%ebp)
c0033be0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033be7:	00 00 00 
c0033bea:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033bf0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033bf6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033bfd:	00 00 00 
c0033c00:	e9 73 e6 ff ff       	jmp    c0032278 <_svfprintf_r+0x298>
c0033c05:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033c0c:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033c0f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033c16:	85 c9                	test   %ecx,%ecx
c0033c18:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033c1e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033c24:	0f 88 2c 02 00 00    	js     c0033e56 <_svfprintf_r+0x1e76>
c0033c2a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033c31:	83 f9 09             	cmp    $0x9,%ecx
c0033c34:	0f 8f ea 00 00 00    	jg     c0033d24 <_svfprintf_r+0x1d44>
c0033c3a:	83 c1 30             	add    $0x30,%ecx
c0033c3d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033c44:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033c4a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033c50:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033c56:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033c5c:	29 d0                	sub    %edx,%eax
c0033c5e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033c64:	89 da                	mov    %ebx,%edx
c0033c66:	01 c2                	add    %eax,%edx
c0033c68:	83 fb 01             	cmp    $0x1,%ebx
c0033c6b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c71:	0f 8e 21 02 00 00    	jle    c0033e98 <_svfprintf_r+0x1eb8>
c0033c77:	31 c0                	xor    %eax,%eax
c0033c79:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033c80:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033c87:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c8e:	00 00 00 
c0033c91:	e9 60 fb ff ff       	jmp    c00337f6 <_svfprintf_r+0x1816>
c0033c96:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033c9c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033ca3:	00 00 00 
c0033ca6:	e9 68 e4 ff ff       	jmp    c0032113 <_svfprintf_r+0x133>
c0033cab:	ba 02 00 00 00       	mov    $0x2,%edx
c0033cb0:	e9 2d fe ff ff       	jmp    c0033ae2 <_svfprintf_r+0x1b02>
c0033cb5:	d9 e0                	fchs   
c0033cb7:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033cbe:	e9 38 fa ff ff       	jmp    c00336fb <_svfprintf_r+0x171b>
c0033cc3:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033cc9:	ba 01 00 00 00       	mov    $0x1,%edx
c0033cce:	85 c9                	test   %ecx,%ecx
c0033cd0:	0f 8e 5a 01 00 00    	jle    c0033e30 <_svfprintf_r+0x1e50>
c0033cd6:	31 c0                	xor    %eax,%eax
c0033cd8:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033cde:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033ce5:	00 00 00 
c0033ce8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033cee:	0f 49 c2             	cmovns %edx,%eax
c0033cf1:	e9 00 fb ff ff       	jmp    c00337f6 <_svfprintf_r+0x1816>
c0033cf6:	85 c0                	test   %eax,%eax
c0033cf8:	0f 8e 06 01 00 00    	jle    c0033e04 <_svfprintf_r+0x1e24>
c0033cfe:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033d04:	85 f6                	test   %esi,%esi
c0033d06:	0f 85 d4 00 00 00    	jne    c0033de0 <_svfprintf_r+0x1e00>
c0033d0c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033d13:	0f 85 c7 00 00 00    	jne    c0033de0 <_svfprintf_r+0x1e00>
c0033d19:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033d1f:	e9 d2 fa ff ff       	jmp    c00337f6 <_svfprintf_r+0x1816>
c0033d24:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033d2a:	89 f3                	mov    %esi,%ebx
c0033d2c:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033d31:	83 eb 01             	sub    $0x1,%ebx
c0033d34:	f7 e9                	imul   %ecx
c0033d36:	89 c8                	mov    %ecx,%eax
c0033d38:	c1 f8 1f             	sar    $0x1f,%eax
c0033d3b:	c1 fa 02             	sar    $0x2,%edx
c0033d3e:	29 c2                	sub    %eax,%edx
c0033d40:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033d43:	01 c0                	add    %eax,%eax
c0033d45:	29 c1                	sub    %eax,%ecx
c0033d47:	83 fa 09             	cmp    $0x9,%edx
c0033d4a:	8d 41 30             	lea    0x30(%ecx),%eax
c0033d4d:	89 d1                	mov    %edx,%ecx
c0033d4f:	88 03                	mov    %al,(%ebx)
c0033d51:	7f d9                	jg     c0033d2c <_svfprintf_r+0x1d4c>
c0033d53:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033d56:	83 c1 30             	add    $0x30,%ecx
c0033d59:	39 f0                	cmp    %esi,%eax
c0033d5b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033d5e:	0f 83 6a 01 00 00    	jae    c0033ece <_svfprintf_r+0x1eee>
c0033d64:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d6a:	eb 07                	jmp    c0033d73 <_svfprintf_r+0x1d93>
c0033d6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033d70:	0f b6 08             	movzbl (%eax),%ecx
c0033d73:	83 c0 01             	add    $0x1,%eax
c0033d76:	83 c2 01             	add    $0x1,%edx
c0033d79:	39 f0                	cmp    %esi,%eax
c0033d7b:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033d7e:	75 f0                	jne    c0033d70 <_svfprintf_r+0x1d90>
c0033d80:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d86:	29 d8                	sub    %ebx,%eax
c0033d88:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d8e:	01 d0                	add    %edx,%eax
c0033d90:	e9 bb fe ff ff       	jmp    c0033c50 <_svfprintf_r+0x1c70>
c0033d95:	d9 ee                	fldz   
c0033d97:	d9 c9                	fxch   %st(1)
c0033d99:	db e9                	fucomi %st(1),%st
c0033d9b:	dd d9                	fstp   %st(1)
c0033d9d:	7a 06                	jp     c0033da5 <_svfprintf_r+0x1dc5>
c0033d9f:	0f 84 b9 fd ff ff    	je     c0033b5e <_svfprintf_r+0x1b7e>
c0033da5:	b8 01 00 00 00       	mov    $0x1,%eax
c0033daa:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033db0:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033db6:	01 c1                	add    %eax,%ecx
c0033db8:	e9 ac f9 ff ff       	jmp    c0033769 <_svfprintf_r+0x1789>
c0033dbd:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033dc3:	31 c0                	xor    %eax,%eax
c0033dc5:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033dcc:	00 00 00 
c0033dcf:	83 c2 01             	add    $0x1,%edx
c0033dd2:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033dd8:	0f 49 c2             	cmovns %edx,%eax
c0033ddb:	e9 16 fa ff ff       	jmp    c00337f6 <_svfprintf_r+0x1816>
c0033de0:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033de6:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033dec:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033df0:	89 c2                	mov    %eax,%edx
c0033df2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033df8:	31 c0                	xor    %eax,%eax
c0033dfa:	85 d2                	test   %edx,%edx
c0033dfc:	0f 49 c2             	cmovns %edx,%eax
c0033dff:	e9 f2 f9 ff ff       	jmp    c00337f6 <_svfprintf_r+0x1816>
c0033e04:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033e0a:	85 db                	test   %ebx,%ebx
c0033e0c:	75 2f                	jne    c0033e3d <_svfprintf_r+0x1e5d>
c0033e0e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033e15:	75 26                	jne    c0033e3d <_svfprintf_r+0x1e5d>
c0033e17:	b8 01 00 00 00       	mov    $0x1,%eax
c0033e1c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033e23:	00 00 00 
c0033e26:	e9 cb f9 ff ff       	jmp    c00337f6 <_svfprintf_r+0x1816>
c0033e2b:	90                   	nop
c0033e2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033e30:	b2 02                	mov    $0x2,%dl
c0033e32:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033e38:	e9 99 fe ff ff       	jmp    c0033cd6 <_svfprintf_r+0x1cf6>
c0033e3d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033e43:	31 c0                	xor    %eax,%eax
c0033e45:	83 c2 02             	add    $0x2,%edx
c0033e48:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033e4e:	0f 49 c2             	cmovns %edx,%eax
c0033e51:	e9 a0 f9 ff ff       	jmp    c00337f6 <_svfprintf_r+0x1816>
c0033e56:	f7 d9                	neg    %ecx
c0033e58:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033e5f:	e9 cd fd ff ff       	jmp    c0033c31 <_svfprintf_r+0x1c51>
c0033e64:	8b 55 14             	mov    0x14(%ebp),%edx
c0033e67:	8b 45 14             	mov    0x14(%ebp),%eax
c0033e6a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033e70:	8b 12                	mov    (%edx),%edx
c0033e72:	83 c0 04             	add    $0x4,%eax
c0033e75:	89 45 14             	mov    %eax,0x14(%ebp)
c0033e78:	85 d2                	test   %edx,%edx
c0033e7a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033e80:	0f 89 a9 e2 ff ff    	jns    c003212f <_svfprintf_r+0x14f>
c0033e86:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033e8d:	ff ff ff 
c0033e90:	89 c8                	mov    %ecx,%eax
c0033e92:	e9 76 e2 ff ff       	jmp    c003210d <_svfprintf_r+0x12d>
c0033e97:	90                   	nop
c0033e98:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e9e:	83 e0 01             	and    $0x1,%eax
c0033ea1:	0f 85 d0 fd ff ff    	jne    c0033c77 <_svfprintf_r+0x1c97>
c0033ea7:	85 d2                	test   %edx,%edx
c0033ea9:	0f 49 c2             	cmovns %edx,%eax
c0033eac:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033eb3:	00 00 00 
c0033eb6:	e9 3b f9 ff ff       	jmp    c00337f6 <_svfprintf_r+0x1816>
c0033ebb:	8b 45 08             	mov    0x8(%ebp),%eax
c0033ebe:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033ec4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033ec9:	e9 f5 e2 ff ff       	jmp    c00321c3 <_svfprintf_r+0x1e3>
c0033ece:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033ed4:	e9 77 fd ff ff       	jmp    c0033c50 <_svfprintf_r+0x1c70>
c0033ed9:	66 90                	xchg   %ax,%ax
c0033edb:	66 90                	xchg   %ax,%ax
c0033edd:	66 90                	xchg   %ax,%ax
c0033edf:	90                   	nop

c0033ee0 <quorem>:
c0033ee0:	55                   	push   %ebp
c0033ee1:	89 c1                	mov    %eax,%ecx
c0033ee3:	89 e5                	mov    %esp,%ebp
c0033ee5:	57                   	push   %edi
c0033ee6:	89 d7                	mov    %edx,%edi
c0033ee8:	56                   	push   %esi
c0033ee9:	53                   	push   %ebx
c0033eea:	83 ec 3c             	sub    $0x3c,%esp
c0033eed:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033ef0:	8b 42 10             	mov    0x10(%edx),%eax
c0033ef3:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033ef6:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033ef9:	89 ca                	mov    %ecx,%edx
c0033efb:	0f 8f 9f 01 00 00    	jg     c00340a0 <quorem+0x1c0>
c0033f01:	83 e8 01             	sub    $0x1,%eax
c0033f04:	83 c7 14             	add    $0x14,%edi
c0033f07:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033f0a:	c1 e0 02             	shl    $0x2,%eax
c0033f0d:	83 c2 14             	add    $0x14,%edx
c0033f10:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033f13:	01 d0                	add    %edx,%eax
c0033f15:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033f18:	8b 13                	mov    (%ebx),%edx
c0033f1a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033f1d:	8b 00                	mov    (%eax),%eax
c0033f1f:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033f22:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033f25:	31 d2                	xor    %edx,%edx
c0033f27:	f7 f1                	div    %ecx
c0033f29:	85 c0                	test   %eax,%eax
c0033f2b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033f2e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033f31:	0f 84 b5 00 00 00    	je     c0033fec <quorem+0x10c>
c0033f37:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033f3a:	31 f6                	xor    %esi,%esi
c0033f3c:	89 fa                	mov    %edi,%edx
c0033f3e:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033f41:	89 f7                	mov    %esi,%edi
c0033f43:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033f4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033f50:	83 c2 04             	add    $0x4,%edx
c0033f53:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f56:	83 c0 04             	add    $0x4,%eax
c0033f59:	0f b7 ce             	movzwl %si,%ecx
c0033f5c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033f60:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033f63:	c1 ee 10             	shr    $0x10,%esi
c0033f66:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033f6a:	89 cb                	mov    %ecx,%ebx
c0033f6c:	0f b7 c9             	movzwl %cx,%ecx
c0033f6f:	c1 eb 10             	shr    $0x10,%ebx
c0033f72:	29 cf                	sub    %ecx,%edi
c0033f74:	01 f3                	add    %esi,%ebx
c0033f76:	89 de                	mov    %ebx,%esi
c0033f78:	0f b7 db             	movzwl %bx,%ebx
c0033f7b:	c1 ee 10             	shr    $0x10,%esi
c0033f7e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033f81:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033f84:	0f b7 ce             	movzwl %si,%ecx
c0033f87:	01 f9                	add    %edi,%ecx
c0033f89:	c1 ee 10             	shr    $0x10,%esi
c0033f8c:	29 de                	sub    %ebx,%esi
c0033f8e:	89 cb                	mov    %ecx,%ebx
c0033f90:	c1 fb 10             	sar    $0x10,%ebx
c0033f93:	0f b7 c9             	movzwl %cx,%ecx
c0033f96:	01 de                	add    %ebx,%esi
c0033f98:	89 f7                	mov    %esi,%edi
c0033f9a:	c1 e6 10             	shl    $0x10,%esi
c0033f9d:	09 ce                	or     %ecx,%esi
c0033f9f:	c1 ff 10             	sar    $0x10,%edi
c0033fa2:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033fa5:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033fa8:	73 a6                	jae    c0033f50 <quorem+0x70>
c0033faa:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033fad:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033fb0:	8b 10                	mov    (%eax),%edx
c0033fb2:	85 d2                	test   %edx,%edx
c0033fb4:	75 36                	jne    c0033fec <quorem+0x10c>
c0033fb6:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033fb9:	89 c2                	mov    %eax,%edx
c0033fbb:	83 e8 04             	sub    $0x4,%eax
c0033fbe:	39 c1                	cmp    %eax,%ecx
c0033fc0:	73 21                	jae    c0033fe3 <quorem+0x103>
c0033fc2:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033fc5:	85 f6                	test   %esi,%esi
c0033fc7:	75 1a                	jne    c0033fe3 <quorem+0x103>
c0033fc9:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033fcc:	eb 08                	jmp    c0033fd6 <quorem+0xf6>
c0033fce:	66 90                	xchg   %ax,%ax
c0033fd0:	8b 18                	mov    (%eax),%ebx
c0033fd2:	85 db                	test   %ebx,%ebx
c0033fd4:	75 0a                	jne    c0033fe0 <quorem+0x100>
c0033fd6:	83 e8 04             	sub    $0x4,%eax
c0033fd9:	83 ea 01             	sub    $0x1,%edx
c0033fdc:	39 c1                	cmp    %eax,%ecx
c0033fde:	72 f0                	jb     c0033fd0 <quorem+0xf0>
c0033fe0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033fe3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033fe6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033fe9:	89 50 10             	mov    %edx,0x10(%eax)
c0033fec:	8b 45 c8             	mov    -0x38(%ebp),%eax
c0033fef:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033ff3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033ff6:	89 04 24             	mov    %eax,(%esp)
c0033ff9:	e8 a2 23 00 00       	call   c00363a0 <__mcmp>
c0033ffe:	85 c0                	test   %eax,%eax
c0034000:	0f 88 8e 00 00 00    	js     c0034094 <quorem+0x1b4>
c0034006:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034009:	31 f6                	xor    %esi,%esi
c003400b:	83 c0 01             	add    $0x1,%eax
c003400e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0034011:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034014:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034018:	83 c7 04             	add    $0x4,%edi
c003401b:	8b 4f fc             	mov    -0x4(%edi),%ecx
c003401e:	83 c0 04             	add    $0x4,%eax
c0034021:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0034024:	0f b7 d1             	movzwl %cx,%edx
c0034027:	29 d6                	sub    %edx,%esi
c0034029:	0f b7 d3             	movzwl %bx,%edx
c003402c:	01 f2                	add    %esi,%edx
c003402e:	c1 e9 10             	shr    $0x10,%ecx
c0034031:	c1 eb 10             	shr    $0x10,%ebx
c0034034:	29 cb                	sub    %ecx,%ebx
c0034036:	89 d1                	mov    %edx,%ecx
c0034038:	c1 f9 10             	sar    $0x10,%ecx
c003403b:	0f b7 d2             	movzwl %dx,%edx
c003403e:	01 cb                	add    %ecx,%ebx
c0034040:	89 de                	mov    %ebx,%esi
c0034042:	c1 e3 10             	shl    $0x10,%ebx
c0034045:	09 d3                	or     %edx,%ebx
c0034047:	c1 fe 10             	sar    $0x10,%esi
c003404a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c003404d:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0034050:	73 c6                	jae    c0034018 <quorem+0x138>
c0034052:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034055:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034058:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c003405b:	8b 02                	mov    (%edx),%eax
c003405d:	85 c0                	test   %eax,%eax
c003405f:	75 33                	jne    c0034094 <quorem+0x1b4>
c0034061:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034064:	8d 42 fc             	lea    -0x4(%edx),%eax
c0034067:	39 c1                	cmp    %eax,%ecx
c0034069:	73 20                	jae    c003408b <quorem+0x1ab>
c003406b:	8b 72 fc             	mov    -0x4(%edx),%esi
c003406e:	85 f6                	test   %esi,%esi
c0034070:	75 19                	jne    c003408b <quorem+0x1ab>
c0034072:	89 fa                	mov    %edi,%edx
c0034074:	eb 08                	jmp    c003407e <quorem+0x19e>
c0034076:	66 90                	xchg   %ax,%ax
c0034078:	8b 18                	mov    (%eax),%ebx
c003407a:	85 db                	test   %ebx,%ebx
c003407c:	75 0a                	jne    c0034088 <quorem+0x1a8>
c003407e:	83 e8 04             	sub    $0x4,%eax
c0034081:	83 ea 01             	sub    $0x1,%edx
c0034084:	39 c1                	cmp    %eax,%ecx
c0034086:	72 f0                	jb     c0034078 <quorem+0x198>
c0034088:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003408b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003408e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034091:	89 78 10             	mov    %edi,0x10(%eax)
c0034094:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034097:	83 c4 3c             	add    $0x3c,%esp
c003409a:	5b                   	pop    %ebx
c003409b:	5e                   	pop    %esi
c003409c:	5f                   	pop    %edi
c003409d:	5d                   	pop    %ebp
c003409e:	c3                   	ret    
c003409f:	90                   	nop
c00340a0:	83 c4 3c             	add    $0x3c,%esp
c00340a3:	31 c0                	xor    %eax,%eax
c00340a5:	5b                   	pop    %ebx
c00340a6:	5e                   	pop    %esi
c00340a7:	5f                   	pop    %edi
c00340a8:	5d                   	pop    %ebp
c00340a9:	c3                   	ret    
c00340aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00340b0 <_dtoa_r>:
c00340b0:	55                   	push   %ebp
c00340b1:	89 e5                	mov    %esp,%ebp
c00340b3:	57                   	push   %edi
c00340b4:	56                   	push   %esi
c00340b5:	53                   	push   %ebx
c00340b6:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c00340bc:	8b 75 08             	mov    0x8(%ebp),%esi
c00340bf:	dd 45 0c             	fldl   0xc(%ebp)
c00340c2:	8b 5d 20             	mov    0x20(%ebp),%ebx
c00340c5:	dd 5d c0             	fstpl  -0x40(%ebp)
c00340c8:	8b 46 40             	mov    0x40(%esi),%eax
c00340cb:	85 c0                	test   %eax,%eax
c00340cd:	74 23                	je     c00340f2 <_dtoa_r+0x42>
c00340cf:	8b 4e 44             	mov    0x44(%esi),%ecx
c00340d2:	ba 01 00 00 00       	mov    $0x1,%edx
c00340d7:	d3 e2                	shl    %cl,%edx
c00340d9:	89 48 04             	mov    %ecx,0x4(%eax)
c00340dc:	89 50 08             	mov    %edx,0x8(%eax)
c00340df:	89 44 24 04          	mov    %eax,0x4(%esp)
c00340e3:	89 34 24             	mov    %esi,(%esp)
c00340e6:	e8 95 1b 00 00       	call   c0035c80 <_Bfree>
c00340eb:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c00340f2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00340f5:	85 ff                	test   %edi,%edi
c00340f7:	0f 88 3b 02 00 00    	js     c0034338 <_dtoa_r+0x288>
c00340fd:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0034103:	89 f8                	mov    %edi,%eax
c0034105:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c003410a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c003410f:	0f 84 e3 01 00 00    	je     c00342f8 <_dtoa_r+0x248>
c0034115:	dd 45 c0             	fldl   -0x40(%ebp)
c0034118:	d9 ee                	fldz   
c003411a:	d9 c9                	fxch   %st(1)
c003411c:	db e9                	fucomi %st(1),%st
c003411e:	dd d9                	fstp   %st(1)
c0034120:	7a 36                	jp     c0034158 <_dtoa_r+0xa8>
c0034122:	75 34                	jne    c0034158 <_dtoa_r+0xa8>
c0034124:	dd d8                	fstp   %st(0)
c0034126:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0034129:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003412c:	85 c9                	test   %ecx,%ecx
c003412e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0034134:	0f 84 4e 02 00 00    	je     c0034388 <_dtoa_r+0x2d8>
c003413a:	8b 45 24             	mov    0x24(%ebp),%eax
c003413d:	c7 00 38 98 03 c0    	movl   $0xc0039838,(%eax)
c0034143:	b8 37 98 03 c0       	mov    $0xc0039837,%eax
c0034148:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c003414e:	5b                   	pop    %ebx
c003414f:	5e                   	pop    %esi
c0034150:	5f                   	pop    %edi
c0034151:	5d                   	pop    %ebp
c0034152:	c3                   	ret    
c0034153:	90                   	nop
c0034154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034158:	8d 45 e0             	lea    -0x20(%ebp),%eax
c003415b:	89 fb                	mov    %edi,%ebx
c003415d:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034161:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0034164:	dd 54 24 04          	fstl   0x4(%esp)
c0034168:	89 44 24 0c          	mov    %eax,0xc(%esp)
c003416c:	dd 5d b8             	fstpl  -0x48(%ebp)
c003416f:	89 34 24             	mov    %esi,(%esp)
c0034172:	c1 eb 14             	shr    $0x14,%ebx
c0034175:	e8 76 25 00 00       	call   c00366f0 <__d2b>
c003417a:	85 db                	test   %ebx,%ebx
c003417c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003417f:	0f 85 db 01 00 00    	jne    c0034360 <_dtoa_r+0x2b0>
c0034185:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034188:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003418b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003418e:	01 c3                	add    %eax,%ebx
c0034190:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034196:	0f 8c ec 07 00 00    	jl     c0034988 <_dtoa_r+0x8d8>
c003419c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003419f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c00341a4:	89 f8                	mov    %edi,%eax
c00341a6:	29 d9                	sub    %ebx,%ecx
c00341a8:	d3 e0                	shl    %cl,%eax
c00341aa:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c00341b0:	d3 ea                	shr    %cl,%edx
c00341b2:	09 d0                	or     %edx,%eax
c00341b4:	31 d2                	xor    %edx,%edx
c00341b6:	83 eb 01             	sub    $0x1,%ebx
c00341b9:	89 55 cc             	mov    %edx,-0x34(%ebp)
c00341bc:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c00341bf:	89 45 c8             	mov    %eax,-0x38(%ebp)
c00341c2:	df 6d c8             	fildll -0x38(%ebp)
c00341c5:	dd 5d b8             	fstpl  -0x48(%ebp)
c00341c8:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c00341cf:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c00341d6:	dd 45 b8             	fldl   -0x48(%ebp)
c00341d9:	d8 25 d0 99 03 c0    	fsubs  0xc00399d0
c00341df:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c00341e2:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00341e5:	dc 0d e8 99 03 c0    	fmull  0xc00399e8
c00341eb:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00341ef:	b4 0c                	mov    $0xc,%ah
c00341f1:	dc 05 f0 99 03 c0    	faddl  0xc00399f0
c00341f7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00341fb:	db 45 d4             	fildl  -0x2c(%ebp)
c00341fe:	dc 0d f8 99 03 c0    	fmull  0xc00399f8
c0034204:	de c1                	faddp  %st,%st(1)
c0034206:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034209:	db 55 b8             	fistl  -0x48(%ebp)
c003420c:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003420f:	d9 ee                	fldz   
c0034211:	df e9                	fucomip %st(1),%st
c0034213:	0f 87 27 07 00 00    	ja     c0034940 <_dtoa_r+0x890>
c0034219:	dd d8                	fstp   %st(0)
c003421b:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c003421f:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c0034226:	77 24                	ja     c003424c <_dtoa_r+0x19c>
c0034228:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003422b:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c0034232:	dd 45 c0             	fldl   -0x40(%ebp)
c0034235:	d9 c9                	fxch   %st(1)
c0034237:	df e9                	fucomip %st(1),%st
c0034239:	dd d8                	fstp   %st(0)
c003423b:	0f 86 5f 07 00 00    	jbe    c00349a0 <_dtoa_r+0x8f0>
c0034241:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034245:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c003424c:	89 d0                	mov    %edx,%eax
c003424e:	29 d8                	sub    %ebx,%eax
c0034250:	83 e8 01             	sub    $0x1,%eax
c0034253:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c003425a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c003425d:	0f 88 0d 07 00 00    	js     c0034970 <_dtoa_r+0x8c0>
c0034263:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034266:	85 c0                	test   %eax,%eax
c0034268:	0f 88 ea 06 00 00    	js     c0034958 <_dtoa_r+0x8a8>
c003426e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034271:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034274:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003427b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003427f:	0f 87 0b 03 00 00    	ja     c0034590 <_dtoa_r+0x4e0>
c0034285:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034289:	0f 8e 23 10 00 00    	jle    c00352b2 <_dtoa_r+0x1202>
c003428f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034293:	31 c0                	xor    %eax,%eax
c0034295:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034299:	0f 84 43 0d 00 00    	je     c0034fe2 <_dtoa_r+0xf32>
c003429f:	0f 8e f3 00 00 00    	jle    c0034398 <_dtoa_r+0x2e8>
c00342a5:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c00342a9:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c00342b0:	0f 84 f3 00 00 00    	je     c00343a9 <_dtoa_r+0x2f9>
c00342b6:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c00342ba:	0f 85 d7 02 00 00    	jne    c0034597 <_dtoa_r+0x4e7>
c00342c0:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00342c3:	03 5d 18             	add    0x18(%ebp),%ebx
c00342c6:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c00342c9:	83 c3 01             	add    $0x1,%ebx
c00342cc:	83 fb 0e             	cmp    $0xe,%ebx
c00342cf:	0f 96 c2             	setbe  %dl
c00342d2:	85 db                	test   %ebx,%ebx
c00342d4:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c00342d7:	0f 8e a7 08 00 00    	jle    c0034b84 <_dtoa_r+0xad4>
c00342dd:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00342e0:	83 fb 0e             	cmp    $0xe,%ebx
c00342e3:	89 df                	mov    %ebx,%edi
c00342e5:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c00342e9:	20 45 b4             	and    %al,-0x4c(%ebp)
c00342ec:	e9 d6 00 00 00       	jmp    c00343c7 <_dtoa_r+0x317>
c00342f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00342f8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00342fb:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00342fe:	85 d2                	test   %edx,%edx
c0034300:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0034306:	b8 c9 99 03 c0       	mov    $0xc00399c9,%eax
c003430b:	74 43                	je     c0034350 <_dtoa_r+0x2a0>
c003430d:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0034310:	85 db                	test   %ebx,%ebx
c0034312:	0f 84 30 fe ff ff    	je     c0034148 <_dtoa_r+0x98>
c0034318:	8b 75 24             	mov    0x24(%ebp),%esi
c003431b:	8d 50 08             	lea    0x8(%eax),%edx
c003431e:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0034322:	8d 48 03             	lea    0x3(%eax),%ecx
c0034325:	0f 44 d1             	cmove  %ecx,%edx
c0034328:	89 16                	mov    %edx,(%esi)
c003432a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034330:	5b                   	pop    %ebx
c0034331:	5e                   	pop    %esi
c0034332:	5f                   	pop    %edi
c0034333:	5d                   	pop    %ebp
c0034334:	c3                   	ret    
c0034335:	8d 76 00             	lea    0x0(%esi),%esi
c0034338:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c003433e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0034344:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0034347:	e9 b7 fd ff ff       	jmp    c0034103 <_dtoa_r+0x53>
c003434c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034350:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0034356:	ba c0 99 03 c0       	mov    $0xc00399c0,%edx
c003435b:	0f 44 c2             	cmove  %edx,%eax
c003435e:	eb ad                	jmp    c003430d <_dtoa_r+0x25d>
c0034360:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034363:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034369:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003436c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034373:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034378:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003437d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034380:	e9 51 fe ff ff       	jmp    c00341d6 <_dtoa_r+0x126>
c0034385:	8d 76 00             	lea    0x0(%esi),%esi
c0034388:	b8 37 98 03 c0       	mov    $0xc0039837,%eax
c003438d:	e9 b6 fd ff ff       	jmp    c0034148 <_dtoa_r+0x98>
c0034392:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034398:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003439c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c00343a3:	0f 85 ee 01 00 00    	jne    c0034597 <_dtoa_r+0x4e7>
c00343a9:	8b 55 18             	mov    0x18(%ebp),%edx
c00343ac:	85 d2                	test   %edx,%edx
c00343ae:	0f 8e b6 07 00 00    	jle    c0034b6a <_dtoa_r+0xaba>
c00343b4:	8b 7d 18             	mov    0x18(%ebp),%edi
c00343b7:	83 ff 0e             	cmp    $0xe,%edi
c00343ba:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c00343be:	20 45 b4             	and    %al,-0x4c(%ebp)
c00343c1:	89 7d 90             	mov    %edi,-0x70(%ebp)
c00343c4:	89 7d a8             	mov    %edi,-0x58(%ebp)
c00343c7:	83 ff 17             	cmp    $0x17,%edi
c00343ca:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c00343d1:	0f 86 e5 0e 00 00    	jbe    c00352bc <_dtoa_r+0x120c>
c00343d7:	b9 01 00 00 00       	mov    $0x1,%ecx
c00343dc:	b8 04 00 00 00       	mov    $0x4,%eax
c00343e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00343e8:	01 c0                	add    %eax,%eax
c00343ea:	89 ca                	mov    %ecx,%edx
c00343ec:	8d 58 14             	lea    0x14(%eax),%ebx
c00343ef:	39 fb                	cmp    %edi,%ebx
c00343f1:	8d 49 01             	lea    0x1(%ecx),%ecx
c00343f4:	76 f2                	jbe    c00343e8 <_dtoa_r+0x338>
c00343f6:	89 56 44             	mov    %edx,0x44(%esi)
c00343f9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00343fd:	89 34 24             	mov    %esi,(%esp)
c0034400:	e8 db 17 00 00       	call   c0035be0 <_Balloc>
c0034405:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0034409:	89 c7                	mov    %eax,%edi
c003440b:	89 46 40             	mov    %eax,0x40(%esi)
c003440e:	0f 84 bb 01 00 00    	je     c00345cf <_dtoa_r+0x51f>
c0034414:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034417:	dd 45 c0             	fldl   -0x40(%ebp)
c003441a:	85 db                	test   %ebx,%ebx
c003441c:	0f 8e de 07 00 00    	jle    c0034c00 <_dtoa_r+0xb50>
c0034422:	89 d8                	mov    %ebx,%eax
c0034424:	83 e0 0f             	and    $0xf,%eax
c0034427:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c003442e:	89 d8                	mov    %ebx,%eax
c0034430:	c1 f8 04             	sar    $0x4,%eax
c0034433:	a8 10                	test   $0x10,%al
c0034435:	0f 84 cd 05 00 00    	je     c0034a08 <_dtoa_r+0x958>
c003443b:	dd 05 a0 9a 03 c0    	fldl   0xc0039aa0
c0034441:	83 e0 0f             	and    $0xf,%eax
c0034444:	b9 03 00 00 00       	mov    $0x3,%ecx
c0034449:	d8 fa                	fdivr  %st(2),%st
c003444b:	85 c0                	test   %eax,%eax
c003444d:	74 22                	je     c0034471 <_dtoa_r+0x3c1>
c003444f:	31 d2                	xor    %edx,%edx
c0034451:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034458:	a8 01                	test   $0x1,%al
c003445a:	74 0e                	je     c003446a <_dtoa_r+0x3ba>
c003445c:	d9 c9                	fxch   %st(1)
c003445e:	dc 0c d5 80 9a 03 c0 	fmull  -0x3ffc6580(,%edx,8)
c0034465:	d9 c9                	fxch   %st(1)
c0034467:	83 c1 01             	add    $0x1,%ecx
c003446a:	83 c2 01             	add    $0x1,%edx
c003446d:	d1 f8                	sar    %eax
c003446f:	75 e7                	jne    c0034458 <_dtoa_r+0x3a8>
c0034471:	de f1                	fdivp  %st,%st(1)
c0034473:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034476:	85 c0                	test   %eax,%eax
c0034478:	74 0a                	je     c0034484 <_dtoa_r+0x3d4>
c003447a:	d9 e8                	fld1   
c003447c:	df e9                	fucomip %st(1),%st
c003447e:	0f 87 92 0b 00 00    	ja     c0035016 <_dtoa_r+0xf66>
c0034484:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034487:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003448a:	db 45 d4             	fildl  -0x2c(%ebp)
c003448d:	d8 c9                	fmul   %st(1),%st
c003448f:	d8 05 dc 99 03 c0    	fadds  0xc00399dc
c0034495:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034498:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003449f:	85 c0                	test   %eax,%eax
c00344a1:	0f 84 89 05 00 00    	je     c0034a30 <_dtoa_r+0x980>
c00344a7:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00344aa:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c00344ad:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00344b0:	8b 45 98             	mov    -0x68(%ebp),%eax
c00344b3:	85 c0                	test   %eax,%eax
c00344b5:	0f 84 b5 07 00 00    	je     c0034c70 <_dtoa_r+0xbc0>
c00344bb:	d9 05 e4 99 03 c0    	flds   0xc00399e4
c00344c1:	8d 57 01             	lea    0x1(%edi),%edx
c00344c4:	dc 34 cd b8 9a 03 c0 	fdivl  -0x3ffc6548(,%ecx,8)
c00344cb:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00344ce:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00344d2:	b4 0c                	mov    $0xc,%ah
c00344d4:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00344d8:	dc 65 c0             	fsubl  -0x40(%ebp)
c00344db:	d9 c9                	fxch   %st(1)
c00344dd:	d9 6d d0             	fldcw  -0x30(%ebp)
c00344e0:	db 55 d4             	fistl  -0x2c(%ebp)
c00344e3:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00344e6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00344e9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00344ec:	83 c0 30             	add    $0x30,%eax
c00344ef:	db 45 d4             	fildl  -0x2c(%ebp)
c00344f2:	de e9                	fsubrp %st,%st(1)
c00344f4:	d9 c9                	fxch   %st(1)
c00344f6:	88 07                	mov    %al,(%edi)
c00344f8:	db e9                	fucomi %st(1),%st
c00344fa:	77 7f                	ja     c003457b <_dtoa_r+0x4cb>
c00344fc:	d9 c1                	fld    %st(1)
c00344fe:	d8 2d d4 99 03 c0    	fsubrs 0xc00399d4
c0034504:	d9 c9                	fxch   %st(1)
c0034506:	db e9                	fucomi %st(1),%st
c0034508:	dd d9                	fstp   %st(1)
c003450a:	0f 87 33 0c 00 00    	ja     c0035143 <_dtoa_r+0x1093>
c0034510:	83 f9 01             	cmp    $0x1,%ecx
c0034513:	0f 8e c4 06 00 00    	jle    c0034bdd <_dtoa_r+0xb2d>
c0034519:	01 f9                	add    %edi,%ecx
c003451b:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c0034521:	eb 25                	jmp    c0034548 <_dtoa_r+0x498>
c0034523:	90                   	nop
c0034524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034528:	d9 c1                	fld    %st(1)
c003452a:	d8 2d d4 99 03 c0    	fsubrs 0xc00399d4
c0034530:	d9 c9                	fxch   %st(1)
c0034532:	db e9                	fucomi %st(1),%st
c0034534:	dd d9                	fstp   %st(1)
c0034536:	0f 87 14 0c 00 00    	ja     c0035150 <_dtoa_r+0x10a0>
c003453c:	39 ca                	cmp    %ecx,%edx
c003453e:	0f 84 a4 06 00 00    	je     c0034be8 <_dtoa_r+0xb38>
c0034544:	d9 c9                	fxch   %st(1)
c0034546:	d9 ca                	fxch   %st(2)
c0034548:	dc c9                	fmul   %st,%st(1)
c003454a:	83 c2 01             	add    $0x1,%edx
c003454d:	dc ca                	fmul   %st,%st(2)
c003454f:	d9 ca                	fxch   %st(2)
c0034551:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034554:	db 55 d4             	fistl  -0x2c(%ebp)
c0034557:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003455a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003455d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034560:	83 c0 30             	add    $0x30,%eax
c0034563:	db 45 d4             	fildl  -0x2c(%ebp)
c0034566:	de e9                	fsubrp %st,%st(1)
c0034568:	d9 c9                	fxch   %st(1)
c003456a:	88 42 ff             	mov    %al,-0x1(%edx)
c003456d:	db e9                	fucomi %st(1),%st
c003456f:	76 b7                	jbe    c0034528 <_dtoa_r+0x478>
c0034571:	dd d8                	fstp   %st(0)
c0034573:	dd d8                	fstp   %st(0)
c0034575:	dd d8                	fstp   %st(0)
c0034577:	dd d8                	fstp   %st(0)
c0034579:	eb 06                	jmp    c0034581 <_dtoa_r+0x4d1>
c003457b:	dd d8                	fstp   %st(0)
c003457d:	dd d8                	fstp   %st(0)
c003457f:	dd d8                	fstp   %st(0)
c0034581:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034584:	89 fb                	mov    %edi,%ebx
c0034586:	89 d7                	mov    %edx,%edi
c0034588:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003458b:	e9 70 03 00 00       	jmp    c0034900 <_dtoa_r+0x850>
c0034590:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034597:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003459e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00345a5:	00 
c00345a6:	89 34 24             	mov    %esi,(%esp)
c00345a9:	e8 32 16 00 00       	call   c0035be0 <_Balloc>
c00345ae:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c00345b5:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c00345bc:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c00345c3:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c00345ca:	89 c7                	mov    %eax,%edi
c00345cc:	89 46 40             	mov    %eax,0x40(%esi)
c00345cf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00345d2:	85 c0                	test   %eax,%eax
c00345d4:	0f 88 2e 01 00 00    	js     c0034708 <_dtoa_r+0x658>
c00345da:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c00345de:	0f 8f 24 01 00 00    	jg     c0034708 <_dtoa_r+0x658>
c00345e4:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00345e7:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c00345ee:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00345f1:	85 c0                	test   %eax,%eax
c00345f3:	7f 0e                	jg     c0034603 <_dtoa_r+0x553>
c00345f5:	8b 45 18             	mov    0x18(%ebp),%eax
c00345f8:	c1 e8 1f             	shr    $0x1f,%eax
c00345fb:	84 c0                	test   %al,%al
c00345fd:	0f 85 9d 07 00 00    	jne    c0034da0 <_dtoa_r+0xcf0>
c0034603:	dd 45 c0             	fldl   -0x40(%ebp)
c0034606:	d9 c0                	fld    %st(0)
c0034608:	d8 f2                	fdiv   %st(2),%st
c003460a:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003460d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0034611:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034615:	b4 0c                	mov    $0xc,%ah
c0034617:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003461b:	8d 47 01             	lea    0x1(%edi),%eax
c003461e:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034621:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034624:	db 5d d4             	fistpl -0x2c(%ebp)
c0034627:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003462a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003462d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034630:	8d 42 30             	lea    0x30(%edx),%eax
c0034633:	db 45 d4             	fildl  -0x2c(%ebp)
c0034636:	d8 ca                	fmul   %st(2),%st
c0034638:	88 07                	mov    %al,(%edi)
c003463a:	de e9                	fsubrp %st,%st(1)
c003463c:	74 66                	je     c00346a4 <_dtoa_r+0x5f4>
c003463e:	d8 0d d8 99 03 c0    	fmuls  0xc00399d8
c0034644:	d9 ee                	fldz   
c0034646:	d9 c9                	fxch   %st(1)
c0034648:	db e9                	fucomi %st(1),%st
c003464a:	dd d9                	fstp   %st(1)
c003464c:	0f 8b 33 0c 00 00    	jnp    c0035285 <_dtoa_r+0x11d5>
c0034652:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034655:	8d 47 02             	lea    0x2(%edi),%eax
c0034658:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c003465e:	01 fb                	add    %edi,%ebx
c0034660:	eb 19                	jmp    c003467b <_dtoa_r+0x5cb>
c0034662:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034668:	dc c9                	fmul   %st,%st(1)
c003466a:	83 c0 01             	add    $0x1,%eax
c003466d:	d9 ee                	fldz   
c003466f:	d9 ca                	fxch   %st(2)
c0034671:	db ea                	fucomi %st(2),%st
c0034673:	dd da                	fstp   %st(2)
c0034675:	0f 8b 73 09 00 00    	jnp    c0034fee <_dtoa_r+0xf3e>
c003467b:	d9 c1                	fld    %st(1)
c003467d:	39 d8                	cmp    %ebx,%eax
c003467f:	d8 f3                	fdiv   %st(3),%st
c0034681:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034684:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034687:	db 5d d4             	fistpl -0x2c(%ebp)
c003468a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003468d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034690:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034693:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034696:	db 45 d4             	fildl  -0x2c(%ebp)
c0034699:	d8 cb                	fmul   %st(3),%st
c003469b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003469e:	de ea                	fsubrp %st,%st(2)
c00346a0:	75 c6                	jne    c0034668 <_dtoa_r+0x5b8>
c00346a2:	dd d8                	fstp   %st(0)
c00346a4:	d8 c0                	fadd   %st(0),%st
c00346a6:	db e9                	fucomi %st(1),%st
c00346a8:	77 1e                	ja     c00346c8 <_dtoa_r+0x618>
c00346aa:	d9 c9                	fxch   %st(1)
c00346ac:	df e9                	fucomip %st(1),%st
c00346ae:	dd d8                	fstp   %st(0)
c00346b0:	0f 8a 44 09 00 00    	jp     c0034ffa <_dtoa_r+0xf4a>
c00346b6:	0f 85 3e 09 00 00    	jne    c0034ffa <_dtoa_r+0xf4a>
c00346bc:	83 e2 01             	and    $0x1,%edx
c00346bf:	90                   	nop
c00346c0:	0f 84 34 09 00 00    	je     c0034ffa <_dtoa_r+0xf4a>
c00346c6:	eb 04                	jmp    c00346cc <_dtoa_r+0x61c>
c00346c8:	dd d8                	fstp   %st(0)
c00346ca:	dd d8                	fstp   %st(0)
c00346cc:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00346cf:	89 fb                	mov    %edi,%ebx
c00346d1:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c00346d5:	89 cf                	mov    %ecx,%edi
c00346d7:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c00346da:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c00346dd:	eb 0f                	jmp    c00346ee <_dtoa_r+0x63e>
c00346df:	90                   	nop
c00346e0:	39 d3                	cmp    %edx,%ebx
c00346e2:	0f 84 75 09 00 00    	je     c003505d <_dtoa_r+0xfad>
c00346e8:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c00346ec:	89 d7                	mov    %edx,%edi
c00346ee:	3c 39                	cmp    $0x39,%al
c00346f0:	8d 57 ff             	lea    -0x1(%edi),%edx
c00346f3:	74 eb                	je     c00346e0 <_dtoa_r+0x630>
c00346f5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c00346f8:	83 c0 01             	add    $0x1,%eax
c00346fb:	88 02                	mov    %al,(%edx)
c00346fd:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0034700:	e9 fb 01 00 00       	jmp    c0034900 <_dtoa_r+0x850>
c0034705:	8d 76 00             	lea    0x0(%esi),%esi
c0034708:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c003470b:	85 c9                	test   %ecx,%ecx
c003470d:	0f 85 9d 02 00 00    	jne    c00349b0 <_dtoa_r+0x900>
c0034713:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034716:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034719:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034720:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034723:	85 c0                	test   %eax,%eax
c0034725:	7e 14                	jle    c003473b <_dtoa_r+0x68b>
c0034727:	85 db                	test   %ebx,%ebx
c0034729:	7e 10                	jle    c003473b <_dtoa_r+0x68b>
c003472b:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003472e:	39 d8                	cmp    %ebx,%eax
c0034730:	0f 4f c3             	cmovg  %ebx,%eax
c0034733:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034736:	29 c3                	sub    %eax,%ebx
c0034738:	29 45 ac             	sub    %eax,-0x54(%ebp)
c003473b:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003473e:	85 c0                	test   %eax,%eax
c0034740:	7e 61                	jle    c00347a3 <_dtoa_r+0x6f3>
c0034742:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034745:	85 c0                	test   %eax,%eax
c0034747:	0f 84 72 04 00 00    	je     c0034bbf <_dtoa_r+0xb0f>
c003474d:	85 d2                	test   %edx,%edx
c003474f:	7e 47                	jle    c0034798 <_dtoa_r+0x6e8>
c0034751:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034754:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034758:	89 34 24             	mov    %esi,(%esp)
c003475b:	89 55 88             	mov    %edx,-0x78(%ebp)
c003475e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034762:	e8 f9 19 00 00       	call   c0036160 <__pow5mult>
c0034767:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c003476a:	89 34 24             	mov    %esi,(%esp)
c003476d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034771:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034775:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034778:	e8 13 18 00 00       	call   c0035f90 <__multiply>
c003477d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034780:	89 34 24             	mov    %esi,(%esp)
c0034783:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034787:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003478a:	e8 f1 14 00 00       	call   c0035c80 <_Bfree>
c003478f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034792:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034795:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034798:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003479b:	29 d0                	sub    %edx,%eax
c003479d:	0f 85 1f 04 00 00    	jne    c0034bc2 <_dtoa_r+0xb12>
c00347a3:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00347aa:	00 
c00347ab:	89 34 24             	mov    %esi,(%esp)
c00347ae:	e8 ad 17 00 00       	call   c0035f60 <__i2b>
c00347b3:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c00347b6:	85 c9                	test   %ecx,%ecx
c00347b8:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00347bb:	7e 13                	jle    c00347d0 <_dtoa_r+0x720>
c00347bd:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c00347c1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347c5:	89 34 24             	mov    %esi,(%esp)
c00347c8:	e8 93 19 00 00       	call   c0036160 <__pow5mult>
c00347cd:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00347d0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c00347d4:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c00347db:	0f 8e f7 05 00 00    	jle    c0034dd8 <_dtoa_r+0xd28>
c00347e1:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00347e4:	ba 01 00 00 00       	mov    $0x1,%edx
c00347e9:	85 c0                	test   %eax,%eax
c00347eb:	0f 85 27 05 00 00    	jne    c0034d18 <_dtoa_r+0xc68>
c00347f1:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347f4:	01 d0                	add    %edx,%eax
c00347f6:	83 e0 1f             	and    $0x1f,%eax
c00347f9:	89 c2                	mov    %eax,%edx
c00347fb:	0f 84 57 03 00 00    	je     c0034b58 <_dtoa_r+0xaa8>
c0034801:	b8 20 00 00 00       	mov    $0x20,%eax
c0034806:	29 d0                	sub    %edx,%eax
c0034808:	83 f8 04             	cmp    $0x4,%eax
c003480b:	0f 8e 8c 0a 00 00    	jle    c003529d <_dtoa_r+0x11ed>
c0034811:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034816:	29 d0                	sub    %edx,%eax
c0034818:	01 45 a0             	add    %eax,-0x60(%ebp)
c003481b:	01 c3                	add    %eax,%ebx
c003481d:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034820:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0034823:	85 c0                	test   %eax,%eax
c0034825:	7e 16                	jle    c003483d <_dtoa_r+0x78d>
c0034827:	89 44 24 08          	mov    %eax,0x8(%esp)
c003482b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003482e:	89 34 24             	mov    %esi,(%esp)
c0034831:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034835:	e8 46 1a 00 00       	call   c0036280 <__lshift>
c003483a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003483d:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034840:	85 c0                	test   %eax,%eax
c0034842:	7e 16                	jle    c003485a <_dtoa_r+0x7aa>
c0034844:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034848:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003484b:	89 34 24             	mov    %esi,(%esp)
c003484e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034852:	e8 29 1a 00 00       	call   c0036280 <__lshift>
c0034857:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003485a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c003485d:	85 c0                	test   %eax,%eax
c003485f:	0f 85 d3 04 00 00    	jne    c0034d38 <_dtoa_r+0xc88>
c0034865:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034869:	0f 8e 11 02 00 00    	jle    c0034a80 <_dtoa_r+0x9d0>
c003486f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034872:	85 c0                	test   %eax,%eax
c0034874:	0f 8f 06 02 00 00    	jg     c0034a80 <_dtoa_r+0x9d0>
c003487a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003487d:	85 c0                	test   %eax,%eax
c003487f:	0f 85 e0 01 00 00    	jne    c0034a65 <_dtoa_r+0x9b5>
c0034885:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034888:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003488f:	00 
c0034890:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034897:	00 
c0034898:	89 34 24             	mov    %esi,(%esp)
c003489b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003489f:	e8 fc 13 00 00       	call   c0035ca0 <__multadd>
c00348a4:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00348a7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348ab:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00348ae:	89 04 24             	mov    %eax,(%esp)
c00348b1:	e8 ea 1a 00 00       	call   c00363a0 <__mcmp>
c00348b6:	85 c0                	test   %eax,%eax
c00348b8:	0f 8e a7 01 00 00    	jle    c0034a65 <_dtoa_r+0x9b5>
c00348be:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c00348c2:	89 fb                	mov    %edi,%ebx
c00348c4:	83 c7 01             	add    $0x1,%edi
c00348c7:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c00348cb:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c00348d2:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00348d5:	89 34 24             	mov    %esi,(%esp)
c00348d8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348dc:	e8 9f 13 00 00       	call   c0035c80 <_Bfree>
c00348e1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348e4:	85 c0                	test   %eax,%eax
c00348e6:	74 18                	je     c0034900 <_dtoa_r+0x850>
c00348e8:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c00348eb:	0f 85 a7 02 00 00    	jne    c0034b98 <_dtoa_r+0xae8>
c00348f1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348f4:	89 34 24             	mov    %esi,(%esp)
c00348f7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348fb:	e8 80 13 00 00       	call   c0035c80 <_Bfree>
c0034900:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034903:	89 34 24             	mov    %esi,(%esp)
c0034906:	89 44 24 04          	mov    %eax,0x4(%esp)
c003490a:	e8 71 13 00 00       	call   c0035c80 <_Bfree>
c003490f:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034912:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0034915:	c6 07 00             	movb   $0x0,(%edi)
c0034918:	83 c0 01             	add    $0x1,%eax
c003491b:	89 06                	mov    %eax,(%esi)
c003491d:	8b 45 24             	mov    0x24(%ebp),%eax
c0034920:	85 c0                	test   %eax,%eax
c0034922:	0f 84 90 02 00 00    	je     c0034bb8 <_dtoa_r+0xb08>
c0034928:	8b 45 24             	mov    0x24(%ebp),%eax
c003492b:	89 38                	mov    %edi,(%eax)
c003492d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034933:	89 d8                	mov    %ebx,%eax
c0034935:	5b                   	pop    %ebx
c0034936:	5e                   	pop    %esi
c0034937:	5f                   	pop    %edi
c0034938:	5d                   	pop    %ebp
c0034939:	c3                   	ret    
c003493a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034940:	db 45 b8             	fildl  -0x48(%ebp)
c0034943:	df e9                	fucomip %st(1),%st
c0034945:	dd d8                	fstp   %st(0)
c0034947:	7a 06                	jp     c003494f <_dtoa_r+0x89f>
c0034949:	0f 84 cc f8 ff ff    	je     c003421b <_dtoa_r+0x16b>
c003494f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034953:	e9 c3 f8 ff ff       	jmp    c003421b <_dtoa_r+0x16b>
c0034958:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003495b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c003495e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0034965:	f7 d8                	neg    %eax
c0034967:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003496a:	e9 0c f9 ff ff       	jmp    c003427b <_dtoa_r+0x1cb>
c003496f:	90                   	nop
c0034970:	f7 d8                	neg    %eax
c0034972:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034975:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c003497c:	e9 e2 f8 ff ff       	jmp    c0034263 <_dtoa_r+0x1b3>
c0034981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034988:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003498b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034990:	29 d9                	sub    %ebx,%ecx
c0034992:	d3 e0                	shl    %cl,%eax
c0034994:	e9 1b f8 ff ff       	jmp    c00341b4 <_dtoa_r+0x104>
c0034999:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00349a0:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00349a7:	e9 a0 f8 ff ff       	jmp    c003424c <_dtoa_r+0x19c>
c00349ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349b0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c00349b4:	0f 8e fe 06 00 00    	jle    c00350b8 <_dtoa_r+0x1008>
c00349ba:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00349bd:	83 e8 01             	sub    $0x1,%eax
c00349c0:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c00349c3:	0f 8c 3b 06 00 00    	jl     c0035004 <_dtoa_r+0xf54>
c00349c9:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00349cc:	29 c2                	sub    %eax,%edx
c00349ce:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c00349d1:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00349d4:	85 c9                	test   %ecx,%ecx
c00349d6:	89 c8                	mov    %ecx,%eax
c00349d8:	0f 88 83 07 00 00    	js     c0035161 <_dtoa_r+0x10b1>
c00349de:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00349e5:	00 
c00349e6:	89 34 24             	mov    %esi,(%esp)
c00349e9:	89 55 8c             	mov    %edx,-0x74(%ebp)
c00349ec:	01 45 a0             	add    %eax,-0x60(%ebp)
c00349ef:	01 45 ac             	add    %eax,-0x54(%ebp)
c00349f2:	e8 69 15 00 00       	call   c0035f60 <__i2b>
c00349f7:	8b 55 8c             	mov    -0x74(%ebp),%edx
c00349fa:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00349fd:	e9 1e fd ff ff       	jmp    c0034720 <_dtoa_r+0x670>
c0034a02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034a08:	d9 c1                	fld    %st(1)
c0034a0a:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034a0f:	e9 37 fa ff ff       	jmp    c003444b <_dtoa_r+0x39b>
c0034a14:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034a17:	db 45 d4             	fildl  -0x2c(%ebp)
c0034a1a:	d8 c9                	fmul   %st(1),%st
c0034a1c:	d8 05 dc 99 03 c0    	fadds  0xc00399dc
c0034a22:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034a25:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034a2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a30:	d8 25 e0 99 03 c0    	fsubs  0xc00399e0
c0034a36:	dd 45 c0             	fldl   -0x40(%ebp)
c0034a39:	d9 c9                	fxch   %st(1)
c0034a3b:	db e9                	fucomi %st(1),%st
c0034a3d:	0f 87 0d 02 00 00    	ja     c0034c50 <_dtoa_r+0xba0>
c0034a43:	d9 c9                	fxch   %st(1)
c0034a45:	d9 e0                	fchs   
c0034a47:	df e9                	fucomip %st(1),%st
c0034a49:	dd d8                	fstp   %st(0)
c0034a4b:	0f 86 a7 01 00 00    	jbe    c0034bf8 <_dtoa_r+0xb48>
c0034a51:	dd d8                	fstp   %st(0)
c0034a53:	eb 02                	jmp    c0034a57 <_dtoa_r+0x9a7>
c0034a55:	dd d8                	fstp   %st(0)
c0034a57:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034a5e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034a65:	8b 45 18             	mov    0x18(%ebp),%eax
c0034a68:	89 fb                	mov    %edi,%ebx
c0034a6a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a71:	f7 d0                	not    %eax
c0034a73:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034a76:	e9 57 fe ff ff       	jmp    c00348d2 <_dtoa_r+0x822>
c0034a7b:	90                   	nop
c0034a7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a80:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034a83:	85 c0                	test   %eax,%eax
c0034a85:	0f 85 c5 03 00 00    	jne    c0034e50 <_dtoa_r+0xda0>
c0034a8b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034a8e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034a93:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034a96:	eb 24                	jmp    c0034abc <_dtoa_r+0xa0c>
c0034a98:	8b 45 08             	mov    0x8(%ebp),%eax
c0034a9b:	83 c3 01             	add    $0x1,%ebx
c0034a9e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034aa2:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034aa9:	00 
c0034aaa:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034ab1:	00 
c0034ab2:	89 04 24             	mov    %eax,(%esp)
c0034ab5:	e8 e6 11 00 00       	call   c0035ca0 <__multadd>
c0034aba:	89 c6                	mov    %eax,%esi
c0034abc:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034abf:	89 f0                	mov    %esi,%eax
c0034ac1:	e8 1a f4 ff ff       	call   c0033ee0 <quorem>
c0034ac6:	83 c0 30             	add    $0x30,%eax
c0034ac9:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034acc:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034ad0:	7c c6                	jl     c0034a98 <_dtoa_r+0x9e8>
c0034ad2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034ad5:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ad8:	ba 01 00 00 00       	mov    $0x1,%edx
c0034add:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034ae0:	8b 75 08             	mov    0x8(%ebp),%esi
c0034ae3:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034aea:	85 c0                	test   %eax,%eax
c0034aec:	0f 4f d0             	cmovg  %eax,%edx
c0034aef:	01 fa                	add    %edi,%edx
c0034af1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034af4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034afb:	00 
c0034afc:	89 34 24             	mov    %esi,(%esp)
c0034aff:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034b02:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b06:	e8 75 17 00 00       	call   c0036280 <__lshift>
c0034b0b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034b0e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034b12:	89 04 24             	mov    %eax,(%esp)
c0034b15:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034b18:	e8 83 18 00 00       	call   c00363a0 <__mcmp>
c0034b1d:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034b20:	83 f8 00             	cmp    $0x0,%eax
c0034b23:	0f 8e 41 06 00 00    	jle    c003516a <_dtoa_r+0x10ba>
c0034b29:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034b2d:	eb 0f                	jmp    c0034b3e <_dtoa_r+0xa8e>
c0034b2f:	90                   	nop
c0034b30:	39 c7                	cmp    %eax,%edi
c0034b32:	0f 84 70 05 00 00    	je     c00350a8 <_dtoa_r+0xff8>
c0034b38:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034b3c:	89 c2                	mov    %eax,%edx
c0034b3e:	80 f9 39             	cmp    $0x39,%cl
c0034b41:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034b44:	74 ea                	je     c0034b30 <_dtoa_r+0xa80>
c0034b46:	83 c1 01             	add    $0x1,%ecx
c0034b49:	89 fb                	mov    %edi,%ebx
c0034b4b:	88 08                	mov    %cl,(%eax)
c0034b4d:	89 d7                	mov    %edx,%edi
c0034b4f:	e9 7e fd ff ff       	jmp    c00348d2 <_dtoa_r+0x822>
c0034b54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b58:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034b5d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034b60:	01 c3                	add    %eax,%ebx
c0034b62:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034b65:	e9 b6 fc ff ff       	jmp    c0034820 <_dtoa_r+0x770>
c0034b6a:	ba 01 00 00 00       	mov    $0x1,%edx
c0034b6f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034b76:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034b7d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034b84:	21 c2                	and    %eax,%edx
c0034b86:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034b89:	31 d2                	xor    %edx,%edx
c0034b8b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b92:	e9 62 f8 ff ff       	jmp    c00343f9 <_dtoa_r+0x349>
c0034b97:	90                   	nop
c0034b98:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034b9b:	85 d2                	test   %edx,%edx
c0034b9d:	0f 84 4e fd ff ff    	je     c00348f1 <_dtoa_r+0x841>
c0034ba3:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034ba6:	89 34 24             	mov    %esi,(%esp)
c0034ba9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034bad:	e8 ce 10 00 00       	call   c0035c80 <_Bfree>
c0034bb2:	e9 3a fd ff ff       	jmp    c00348f1 <_dtoa_r+0x841>
c0034bb7:	90                   	nop
c0034bb8:	89 d8                	mov    %ebx,%eax
c0034bba:	e9 89 f5 ff ff       	jmp    c0034148 <_dtoa_r+0x98>
c0034bbf:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034bc2:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034bc6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034bc9:	89 34 24             	mov    %esi,(%esp)
c0034bcc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034bd0:	e8 8b 15 00 00       	call   c0036160 <__pow5mult>
c0034bd5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034bd8:	e9 c6 fb ff ff       	jmp    c00347a3 <_dtoa_r+0x6f3>
c0034bdd:	dd d8                	fstp   %st(0)
c0034bdf:	dd d8                	fstp   %st(0)
c0034be1:	eb 15                	jmp    c0034bf8 <_dtoa_r+0xb48>
c0034be3:	90                   	nop
c0034be4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034be8:	dd d8                	fstp   %st(0)
c0034bea:	dd d8                	fstp   %st(0)
c0034bec:	dd d8                	fstp   %st(0)
c0034bee:	eb 08                	jmp    c0034bf8 <_dtoa_r+0xb48>
c0034bf0:	dd d8                	fstp   %st(0)
c0034bf2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034bf8:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034bfb:	e9 cf f9 ff ff       	jmp    c00345cf <_dtoa_r+0x51f>
c0034c00:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034c03:	f7 d8                	neg    %eax
c0034c05:	0f 84 6a 04 00 00    	je     c0035075 <_dtoa_r+0xfc5>
c0034c0b:	89 c2                	mov    %eax,%edx
c0034c0d:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034c12:	83 e2 0f             	and    $0xf,%edx
c0034c15:	c1 f8 04             	sar    $0x4,%eax
c0034c18:	dd 04 d5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%edx,8)
c0034c1f:	85 c0                	test   %eax,%eax
c0034c21:	d8 c9                	fmul   %st(1),%st
c0034c23:	0f 84 4a f8 ff ff    	je     c0034473 <_dtoa_r+0x3c3>
c0034c29:	31 d2                	xor    %edx,%edx
c0034c2b:	90                   	nop
c0034c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c30:	a8 01                	test   $0x1,%al
c0034c32:	74 0a                	je     c0034c3e <_dtoa_r+0xb8e>
c0034c34:	dc 0c d5 80 9a 03 c0 	fmull  -0x3ffc6580(,%edx,8)
c0034c3b:	83 c1 01             	add    $0x1,%ecx
c0034c3e:	83 c2 01             	add    $0x1,%edx
c0034c41:	d1 f8                	sar    %eax
c0034c43:	75 eb                	jne    c0034c30 <_dtoa_r+0xb80>
c0034c45:	e9 29 f8 ff ff       	jmp    c0034473 <_dtoa_r+0x3c3>
c0034c4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034c50:	dd d8                	fstp   %st(0)
c0034c52:	dd d8                	fstp   %st(0)
c0034c54:	dd d8                	fstp   %st(0)
c0034c56:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034c5d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034c64:	e9 55 fc ff ff       	jmp    c00348be <_dtoa_r+0x80e>
c0034c69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034c70:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034c73:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034c76:	dd 45 c0             	fldl   -0x40(%ebp)
c0034c79:	dc 0c c5 c0 9a 03 c0 	fmull  -0x3ffc6540(,%eax,8)
c0034c80:	d9 c9                	fxch   %st(1)
c0034c82:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034c85:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034c89:	8d 57 01             	lea    0x1(%edi),%edx
c0034c8c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034c8f:	b4 0c                	mov    $0xc,%ah
c0034c91:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c95:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c98:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c9b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c9e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034ca1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034ca4:	83 c0 30             	add    $0x30,%eax
c0034ca7:	83 f9 01             	cmp    $0x1,%ecx
c0034caa:	db 45 d4             	fildl  -0x2c(%ebp)
c0034cad:	de e9                	fsubrp %st,%st(1)
c0034caf:	88 07                	mov    %al,(%edi)
c0034cb1:	89 d0                	mov    %edx,%eax
c0034cb3:	74 37                	je     c0034cec <_dtoa_r+0xc3c>
c0034cb5:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c0034cbb:	eb 05                	jmp    c0034cc2 <_dtoa_r+0xc12>
c0034cbd:	8d 76 00             	lea    0x0(%esi),%esi
c0034cc0:	d9 c9                	fxch   %st(1)
c0034cc2:	dc c9                	fmul   %st,%st(1)
c0034cc4:	d9 c9                	fxch   %st(1)
c0034cc6:	83 c0 01             	add    $0x1,%eax
c0034cc9:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034ccc:	db 55 d4             	fistl  -0x2c(%ebp)
c0034ccf:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034cd2:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034cd5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034cd8:	83 c1 30             	add    $0x30,%ecx
c0034cdb:	39 d8                	cmp    %ebx,%eax
c0034cdd:	db 45 d4             	fildl  -0x2c(%ebp)
c0034ce0:	de e9                	fsubrp %st,%st(1)
c0034ce2:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034ce5:	75 d9                	jne    c0034cc0 <_dtoa_r+0xc10>
c0034ce7:	dd d9                	fstp   %st(1)
c0034ce9:	03 55 88             	add    -0x78(%ebp),%edx
c0034cec:	d9 05 e4 99 03 c0    	flds   0xc00399e4
c0034cf2:	d9 c2                	fld    %st(2)
c0034cf4:	d8 c1                	fadd   %st(1),%st
c0034cf6:	d9 ca                	fxch   %st(2)
c0034cf8:	db ea                	fucomi %st(2),%st
c0034cfa:	dd da                	fstp   %st(2)
c0034cfc:	0f 86 7f 03 00 00    	jbe    c0035081 <_dtoa_r+0xfd1>
c0034d02:	dd d8                	fstp   %st(0)
c0034d04:	dd d8                	fstp   %st(0)
c0034d06:	dd d8                	fstp   %st(0)
c0034d08:	dd d8                	fstp   %st(0)
c0034d0a:	89 fb                	mov    %edi,%ebx
c0034d0c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034d10:	89 d7                	mov    %edx,%edi
c0034d12:	e9 d7 f9 ff ff       	jmp    c00346ee <_dtoa_r+0x63e>
c0034d17:	90                   	nop
c0034d18:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034d1b:	8b 41 10             	mov    0x10(%ecx),%eax
c0034d1e:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034d22:	89 04 24             	mov    %eax,(%esp)
c0034d25:	e8 56 11 00 00       	call   c0035e80 <__hi0bits>
c0034d2a:	ba 20 00 00 00       	mov    $0x20,%edx
c0034d2f:	29 c2                	sub    %eax,%edx
c0034d31:	e9 bb fa ff ff       	jmp    c00347f1 <_dtoa_r+0x741>
c0034d36:	66 90                	xchg   %ax,%ax
c0034d38:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034d3b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d3f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d42:	89 04 24             	mov    %eax,(%esp)
c0034d45:	e8 56 16 00 00       	call   c00363a0 <__mcmp>
c0034d4a:	85 c0                	test   %eax,%eax
c0034d4c:	0f 89 13 fb ff ff    	jns    c0034865 <_dtoa_r+0x7b5>
c0034d52:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d55:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034d5c:	00 
c0034d5d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034d64:	00 
c0034d65:	89 34 24             	mov    %esi,(%esp)
c0034d68:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d6c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034d70:	e8 2b 0f 00 00       	call   c0035ca0 <__multadd>
c0034d75:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034d78:	85 c9                	test   %ecx,%ecx
c0034d7a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034d7d:	0f 85 8d 00 00 00    	jne    c0034e10 <_dtoa_r+0xd60>
c0034d83:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034d87:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034d8a:	7f 0a                	jg     c0034d96 <_dtoa_r+0xce6>
c0034d8c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034d90:	0f 8f ff 04 00 00    	jg     c0035295 <_dtoa_r+0x11e5>
c0034d96:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034d99:	e9 ed fc ff ff       	jmp    c0034a8b <_dtoa_r+0x9db>
c0034d9e:	66 90                	xchg   %ax,%ax
c0034da0:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034da3:	85 db                	test   %ebx,%ebx
c0034da5:	0f 85 aa fc ff ff    	jne    c0034a55 <_dtoa_r+0x9a5>
c0034dab:	d8 0d e0 99 03 c0    	fmuls  0xc00399e0
c0034db1:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034db8:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034dbf:	dd 45 c0             	fldl   -0x40(%ebp)
c0034dc2:	d9 c9                	fxch   %st(1)
c0034dc4:	df e9                	fucomip %st(1),%st
c0034dc6:	dd d8                	fstp   %st(0)
c0034dc8:	0f 83 97 fc ff ff    	jae    c0034a65 <_dtoa_r+0x9b5>
c0034dce:	e9 eb fa ff ff       	jmp    c00348be <_dtoa_r+0x80e>
c0034dd3:	90                   	nop
c0034dd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034dd8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034ddb:	85 c0                	test   %eax,%eax
c0034ddd:	0f 85 fe f9 ff ff    	jne    c00347e1 <_dtoa_r+0x731>
c0034de3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034de6:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034deb:	0f 85 f0 f9 ff ff    	jne    c00347e1 <_dtoa_r+0x731>
c0034df1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034df6:	0f 84 e5 f9 ff ff    	je     c00347e1 <_dtoa_r+0x731>
c0034dfc:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034e00:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034e04:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034e0b:	e9 d1 f9 ff ff       	jmp    c00347e1 <_dtoa_r+0x731>
c0034e10:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e13:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e1a:	00 
c0034e1b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e22:	00 
c0034e23:	89 34 24             	mov    %esi,(%esp)
c0034e26:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e2a:	e8 71 0e 00 00       	call   c0035ca0 <__multadd>
c0034e2f:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034e32:	85 d2                	test   %edx,%edx
c0034e34:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e37:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034e3a:	7f 0a                	jg     c0034e46 <_dtoa_r+0xd96>
c0034e3c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034e40:	0f 8f 4f 04 00 00    	jg     c0035295 <_dtoa_r+0x11e5>
c0034e46:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034e49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034e50:	85 db                	test   %ebx,%ebx
c0034e52:	7e 16                	jle    c0034e6a <_dtoa_r+0xdba>
c0034e54:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e57:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034e5b:	89 34 24             	mov    %esi,(%esp)
c0034e5e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e62:	e8 19 14 00 00       	call   c0036280 <__lshift>
c0034e67:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e6a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034e6d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e70:	85 db                	test   %ebx,%ebx
c0034e72:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e75:	0f 85 11 03 00 00    	jne    c003518c <_dtoa_r+0x10dc>
c0034e7b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034e7e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034e81:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034e84:	01 f8                	add    %edi,%eax
c0034e86:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034e89:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034e8c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e8f:	83 e0 01             	and    $0x1,%eax
c0034e92:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034e95:	eb 2e                	jmp    c0034ec5 <_dtoa_r+0xe15>
c0034e97:	90                   	nop
c0034e98:	e8 03 0e 00 00       	call   c0035ca0 <__multadd>
c0034e9d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034ea4:	00 
c0034ea5:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034eac:	00 
c0034ead:	89 34 24             	mov    %esi,(%esp)
c0034eb0:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034eb3:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034eb6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034eba:	e8 e1 0d 00 00       	call   c0035ca0 <__multadd>
c0034ebf:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034ec2:	83 c3 01             	add    $0x1,%ebx
c0034ec5:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034ec8:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034ecb:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034ece:	89 f8                	mov    %edi,%eax
c0034ed0:	e8 0b f0 ff ff       	call   c0033ee0 <quorem>
c0034ed5:	89 3c 24             	mov    %edi,(%esp)
c0034ed8:	8d 48 30             	lea    0x30(%eax),%ecx
c0034edb:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034ede:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034ee1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034ee4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034ee8:	e8 b3 14 00 00       	call   c00363a0 <__mcmp>
c0034eed:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034ef0:	89 34 24             	mov    %esi,(%esp)
c0034ef3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034ef7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034efa:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034efd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f01:	e8 ea 14 00 00       	call   c00363f0 <__mdiff>
c0034f06:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034f09:	89 c2                	mov    %eax,%edx
c0034f0b:	85 c9                	test   %ecx,%ecx
c0034f0d:	0f 85 c5 00 00 00    	jne    c0034fd8 <_dtoa_r+0xf28>
c0034f13:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f17:	89 3c 24             	mov    %edi,(%esp)
c0034f1a:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034f1d:	e8 7e 14 00 00       	call   c00363a0 <__mcmp>
c0034f22:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034f25:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034f29:	89 34 24             	mov    %esi,(%esp)
c0034f2c:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034f2f:	e8 4c 0d 00 00       	call   c0035c80 <_Bfree>
c0034f34:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034f37:	89 c1                	mov    %eax,%ecx
c0034f39:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f3c:	75 0b                	jne    c0034f49 <_dtoa_r+0xe99>
c0034f3e:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034f41:	85 d2                	test   %edx,%edx
c0034f43:	0f 84 fb 02 00 00    	je     c0035244 <_dtoa_r+0x1194>
c0034f49:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034f4c:	85 d2                	test   %edx,%edx
c0034f4e:	0f 88 7f 01 00 00    	js     c00350d3 <_dtoa_r+0x1023>
c0034f54:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034f57:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f5a:	75 0b                	jne    c0034f67 <_dtoa_r+0xeb7>
c0034f5c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034f5f:	85 c9                	test   %ecx,%ecx
c0034f61:	0f 84 6c 01 00 00    	je     c00350d3 <_dtoa_r+0x1023>
c0034f67:	85 c0                	test   %eax,%eax
c0034f69:	0f 8f 82 02 00 00    	jg     c00351f1 <_dtoa_r+0x1141>
c0034f6f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034f73:	89 da                	mov    %ebx,%edx
c0034f75:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034f78:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034f7b:	0f 84 8d 02 00 00    	je     c003520e <_dtoa_r+0x115e>
c0034f81:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034f85:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f8c:	00 
c0034f8d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f94:	00 
c0034f95:	89 34 24             	mov    %esi,(%esp)
c0034f98:	e8 03 0d 00 00       	call   c0035ca0 <__multadd>
c0034f9d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034fa4:	00 
c0034fa5:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034fac:	00 
c0034fad:	89 34 24             	mov    %esi,(%esp)
c0034fb0:	89 c7                	mov    %eax,%edi
c0034fb2:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034fb5:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034fb8:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034fbb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034fbf:	0f 85 d3 fe ff ff    	jne    c0034e98 <_dtoa_r+0xde8>
c0034fc5:	e8 d6 0c 00 00       	call   c0035ca0 <__multadd>
c0034fca:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034fcd:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034fd0:	e9 ed fe ff ff       	jmp    c0034ec2 <_dtoa_r+0xe12>
c0034fd5:	8d 76 00             	lea    0x0(%esi),%esi
c0034fd8:	b8 01 00 00 00       	mov    $0x1,%eax
c0034fdd:	e9 43 ff ff ff       	jmp    c0034f25 <_dtoa_r+0xe75>
c0034fe2:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034fe9:	e9 d2 f2 ff ff       	jmp    c00342c0 <_dtoa_r+0x210>
c0034fee:	0f 85 87 f6 ff ff    	jne    c003467b <_dtoa_r+0x5cb>
c0034ff4:	dd d8                	fstp   %st(0)
c0034ff6:	dd d8                	fstp   %st(0)
c0034ff8:	dd d8                	fstp   %st(0)
c0034ffa:	89 fb                	mov    %edi,%ebx
c0034ffc:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034fff:	e9 fc f8 ff ff       	jmp    c0034900 <_dtoa_r+0x850>
c0035004:	89 c2                	mov    %eax,%edx
c0035006:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0035009:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003500c:	01 55 94             	add    %edx,-0x6c(%ebp)
c003500f:	31 d2                	xor    %edx,%edx
c0035011:	e9 b8 f9 ff ff       	jmp    c00349ce <_dtoa_r+0x91e>
c0035016:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035019:	85 c0                	test   %eax,%eax
c003501b:	0f 84 f3 f9 ff ff    	je     c0034a14 <_dtoa_r+0x964>
c0035021:	8b 45 90             	mov    -0x70(%ebp),%eax
c0035024:	85 c0                	test   %eax,%eax
c0035026:	0f 8e c4 fb ff ff    	jle    c0034bf0 <_dtoa_r+0xb40>
c003502c:	d8 0d d8 99 03 c0    	fmuls  0xc00399d8
c0035032:	83 c1 01             	add    $0x1,%ecx
c0035035:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035038:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c003503b:	89 c1                	mov    %eax,%ecx
c003503d:	83 eb 01             	sub    $0x1,%ebx
c0035040:	db 45 d4             	fildl  -0x2c(%ebp)
c0035043:	d8 c9                	fmul   %st(1),%st
c0035045:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0035048:	d8 05 dc 99 03 c0    	fadds  0xc00399dc
c003504e:	dd 5d c0             	fstpl  -0x40(%ebp)
c0035051:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0035058:	e9 53 f4 ff ff       	jmp    c00344b0 <_dtoa_r+0x400>
c003505d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035060:	c6 03 30             	movb   $0x30,(%ebx)
c0035063:	83 c0 01             	add    $0x1,%eax
c0035066:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0035069:	b8 31 00 00 00       	mov    $0x31,%eax
c003506e:	88 02                	mov    %al,(%edx)
c0035070:	e9 8b f8 ff ff       	jmp    c0034900 <_dtoa_r+0x850>
c0035075:	d9 c0                	fld    %st(0)
c0035077:	b9 02 00 00 00       	mov    $0x2,%ecx
c003507c:	e9 f2 f3 ff ff       	jmp    c0034473 <_dtoa_r+0x3c3>
c0035081:	de e2                	fsubp  %st,%st(2)
c0035083:	d9 c9                	fxch   %st(1)
c0035085:	df e9                	fucomip %st(1),%st
c0035087:	dd d8                	fstp   %st(0)
c0035089:	0f 86 69 fb ff ff    	jbe    c0034bf8 <_dtoa_r+0xb48>
c003508f:	dd d8                	fstp   %st(0)
c0035091:	eb 07                	jmp    c003509a <_dtoa_r+0xfea>
c0035093:	90                   	nop
c0035094:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035098:	89 c2                	mov    %eax,%edx
c003509a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003509e:	8d 42 ff             	lea    -0x1(%edx),%eax
c00350a1:	74 f5                	je     c0035098 <_dtoa_r+0xfe8>
c00350a3:	e9 d9 f4 ff ff       	jmp    c0034581 <_dtoa_r+0x4d1>
c00350a8:	c6 07 31             	movb   $0x31,(%edi)
c00350ab:	89 fb                	mov    %edi,%ebx
c00350ad:	89 d7                	mov    %edx,%edi
c00350af:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c00350b3:	e9 1a f8 ff ff       	jmp    c00348d2 <_dtoa_r+0x822>
c00350b8:	8b 55 8c             	mov    -0x74(%ebp),%edx
c00350bb:	85 d2                	test   %edx,%edx
c00350bd:	0f 84 1b 01 00 00    	je     c00351de <_dtoa_r+0x112e>
c00350c3:	05 33 04 00 00       	add    $0x433,%eax
c00350c8:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00350cb:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00350ce:	e9 0b f9 ff ff       	jmp    c00349de <_dtoa_r+0x92e>
c00350d3:	85 c0                	test   %eax,%eax
c00350d5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00350d8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00350db:	7e 45                	jle    c0035122 <_dtoa_r+0x1072>
c00350dd:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00350e0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c00350e7:	00 
c00350e8:	89 34 24             	mov    %esi,(%esp)
c00350eb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00350ef:	e8 8c 11 00 00       	call   c0036280 <__lshift>
c00350f4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c00350f7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00350fb:	89 04 24             	mov    %eax,(%esp)
c00350fe:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035101:	e8 9a 12 00 00       	call   c00363a0 <__mcmp>
c0035106:	83 f8 00             	cmp    $0x0,%eax
c0035109:	0f 8e 5b 01 00 00    	jle    c003526a <_dtoa_r+0x11ba>
c003510f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035113:	0f 84 0c 01 00 00    	je     c0035225 <_dtoa_r+0x1175>
c0035119:	8b 45 94             	mov    -0x6c(%ebp),%eax
c003511c:	83 c0 31             	add    $0x31,%eax
c003511f:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0035122:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035125:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035129:	89 cb                	mov    %ecx,%ebx
c003512b:	88 03                	mov    %al,(%ebx)
c003512d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035130:	89 fb                	mov    %edi,%ebx
c0035132:	8d 79 01             	lea    0x1(%ecx),%edi
c0035135:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035138:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003513b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003513e:	e9 8f f7 ff ff       	jmp    c00348d2 <_dtoa_r+0x822>
c0035143:	dd d8                	fstp   %st(0)
c0035145:	dd d8                	fstp   %st(0)
c0035147:	dd d8                	fstp   %st(0)
c0035149:	eb 0d                	jmp    c0035158 <_dtoa_r+0x10a8>
c003514b:	90                   	nop
c003514c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035150:	dd d8                	fstp   %st(0)
c0035152:	dd d8                	fstp   %st(0)
c0035154:	dd d8                	fstp   %st(0)
c0035156:	dd d8                	fstp   %st(0)
c0035158:	89 fb                	mov    %edi,%ebx
c003515a:	89 d7                	mov    %edx,%edi
c003515c:	e9 8d f5 ff ff       	jmp    c00346ee <_dtoa_r+0x63e>
c0035161:	29 cb                	sub    %ecx,%ebx
c0035163:	31 c0                	xor    %eax,%eax
c0035165:	e9 74 f8 ff ff       	jmp    c00349de <_dtoa_r+0x92e>
c003516a:	75 0e                	jne    c003517a <_dtoa_r+0x10ca>
c003516c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035170:	74 08                	je     c003517a <_dtoa_r+0x10ca>
c0035172:	e9 b2 f9 ff ff       	jmp    c0034b29 <_dtoa_r+0xa79>
c0035177:	90                   	nop
c0035178:	89 c2                	mov    %eax,%edx
c003517a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003517e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035181:	74 f5                	je     c0035178 <_dtoa_r+0x10c8>
c0035183:	89 fb                	mov    %edi,%ebx
c0035185:	89 d7                	mov    %edx,%edi
c0035187:	e9 46 f7 ff ff       	jmp    c00348d2 <_dtoa_r+0x822>
c003518c:	8b 40 04             	mov    0x4(%eax),%eax
c003518f:	89 34 24             	mov    %esi,(%esp)
c0035192:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035196:	e8 45 0a 00 00       	call   c0035be0 <_Balloc>
c003519b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003519e:	89 c3                	mov    %eax,%ebx
c00351a0:	8b 41 10             	mov    0x10(%ecx),%eax
c00351a3:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c00351aa:	89 44 24 08          	mov    %eax,0x8(%esp)
c00351ae:	89 c8                	mov    %ecx,%eax
c00351b0:	83 c0 0c             	add    $0xc,%eax
c00351b3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00351b7:	8d 43 0c             	lea    0xc(%ebx),%eax
c00351ba:	89 04 24             	mov    %eax,(%esp)
c00351bd:	e8 62 cc ff ff       	call   c0031e24 <memcpy>
c00351c2:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c00351c9:	00 
c00351ca:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00351ce:	89 34 24             	mov    %esi,(%esp)
c00351d1:	e8 aa 10 00 00       	call   c0036280 <__lshift>
c00351d6:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00351d9:	e9 9d fc ff ff       	jmp    c0034e7b <_dtoa_r+0xdcb>
c00351de:	b8 36 00 00 00       	mov    $0x36,%eax
c00351e3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00351e6:	2b 45 e0             	sub    -0x20(%ebp),%eax
c00351e9:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00351ec:	e9 ed f7 ff ff       	jmp    c00349de <_dtoa_r+0x92e>
c00351f1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00351f5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351f8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351fb:	74 28                	je     c0035225 <_dtoa_r+0x1175>
c00351fd:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035201:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035204:	83 c0 01             	add    $0x1,%eax
c0035207:	89 cb                	mov    %ecx,%ebx
c0035209:	e9 1d ff ff ff       	jmp    c003512b <_dtoa_r+0x107b>
c003520e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035211:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035214:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0035217:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003521a:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003521d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035220:	e9 cc f8 ff ff       	jmp    c0034af1 <_dtoa_r+0xa41>
c0035225:	8b 45 98             	mov    -0x68(%ebp),%eax
c0035228:	b9 39 00 00 00       	mov    $0x39,%ecx
c003522d:	8d 50 01             	lea    0x1(%eax),%edx
c0035230:	c6 00 39             	movb   $0x39,(%eax)
c0035233:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035236:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035239:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003523c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003523f:	e9 fa f8 ff ff       	jmp    c0034b3e <_dtoa_r+0xa8e>
c0035244:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0035247:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c003524a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003524d:	83 fb 39             	cmp    $0x39,%ebx
c0035250:	74 d3                	je     c0035225 <_dtoa_r+0x1175>
c0035252:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035255:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0035258:	83 c0 31             	add    $0x31,%eax
c003525b:	85 c9                	test   %ecx,%ecx
c003525d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035260:	0f 4e c3             	cmovle %ebx,%eax
c0035263:	89 cb                	mov    %ecx,%ebx
c0035265:	e9 c1 fe ff ff       	jmp    c003512b <_dtoa_r+0x107b>
c003526a:	0f 85 b2 fe ff ff    	jne    c0035122 <_dtoa_r+0x1072>
c0035270:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035274:	0f 84 a8 fe ff ff    	je     c0035122 <_dtoa_r+0x1072>
c003527a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035280:	e9 8a fe ff ff       	jmp    c003510f <_dtoa_r+0x105f>
c0035285:	0f 85 c7 f3 ff ff    	jne    c0034652 <_dtoa_r+0x5a2>
c003528b:	dd d8                	fstp   %st(0)
c003528d:	dd d8                	fstp   %st(0)
c003528f:	90                   	nop
c0035290:	e9 65 fd ff ff       	jmp    c0034ffa <_dtoa_r+0xf4a>
c0035295:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035298:	e9 dd f5 ff ff       	jmp    c003487a <_dtoa_r+0x7ca>
c003529d:	8d 76 00             	lea    0x0(%esi),%esi
c00352a0:	0f 84 7a f5 ff ff    	je     c0034820 <_dtoa_r+0x770>
c00352a6:	b8 3c 00 00 00       	mov    $0x3c,%eax
c00352ab:	29 d0                	sub    %edx,%eax
c00352ad:	e9 ab f8 ff ff       	jmp    c0034b5d <_dtoa_r+0xaad>
c00352b2:	b8 01 00 00 00       	mov    $0x1,%eax
c00352b7:	e9 d9 ef ff ff       	jmp    c0034295 <_dtoa_r+0x1e5>
c00352bc:	31 d2                	xor    %edx,%edx
c00352be:	e9 36 f1 ff ff       	jmp    c00343f9 <_dtoa_r+0x349>
c00352c3:	66 90                	xchg   %ax,%ax
c00352c5:	66 90                	xchg   %ax,%ax
c00352c7:	66 90                	xchg   %ax,%ax
c00352c9:	66 90                	xchg   %ax,%ax
c00352cb:	66 90                	xchg   %ax,%ax
c00352cd:	66 90                	xchg   %ax,%ax
c00352cf:	90                   	nop

c00352d0 <_setlocale_r>:
c00352d0:	55                   	push   %ebp
c00352d1:	89 e5                	mov    %esp,%ebp
c00352d3:	53                   	push   %ebx
c00352d4:	83 ec 14             	sub    $0x14,%esp
c00352d7:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00352da:	85 db                	test   %ebx,%ebx
c00352dc:	74 14                	je     c00352f2 <_setlocale_r+0x22>
c00352de:	c7 44 24 04 00 9a 03 	movl   $0xc0039a00,0x4(%esp)
c00352e5:	c0 
c00352e6:	89 1c 24             	mov    %ebx,(%esp)
c00352e9:	e8 82 17 00 00       	call   c0036a70 <strcmp>
c00352ee:	85 c0                	test   %eax,%eax
c00352f0:	75 0e                	jne    c0035300 <_setlocale_r+0x30>
c00352f2:	83 c4 14             	add    $0x14,%esp
c00352f5:	b8 fc 97 03 c0       	mov    $0xc00397fc,%eax
c00352fa:	5b                   	pop    %ebx
c00352fb:	5d                   	pop    %ebp
c00352fc:	c3                   	ret    
c00352fd:	8d 76 00             	lea    0x0(%esi),%esi
c0035300:	c7 44 24 04 fc 97 03 	movl   $0xc00397fc,0x4(%esp)
c0035307:	c0 
c0035308:	89 1c 24             	mov    %ebx,(%esp)
c003530b:	e8 60 17 00 00       	call   c0036a70 <strcmp>
c0035310:	85 c0                	test   %eax,%eax
c0035312:	74 de                	je     c00352f2 <_setlocale_r+0x22>
c0035314:	89 1c 24             	mov    %ebx,(%esp)
c0035317:	c7 44 24 04 36 98 03 	movl   $0xc0039836,0x4(%esp)
c003531e:	c0 
c003531f:	e8 4c 17 00 00       	call   c0036a70 <strcmp>
c0035324:	89 c2                	mov    %eax,%edx
c0035326:	31 c0                	xor    %eax,%eax
c0035328:	85 d2                	test   %edx,%edx
c003532a:	ba fc 97 03 c0       	mov    $0xc00397fc,%edx
c003532f:	0f 44 c2             	cmove  %edx,%eax
c0035332:	83 c4 14             	add    $0x14,%esp
c0035335:	5b                   	pop    %ebx
c0035336:	5d                   	pop    %ebp
c0035337:	c3                   	ret    
c0035338:	90                   	nop
c0035339:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035340 <__locale_charset>:
c0035340:	55                   	push   %ebp
c0035341:	b8 c0 d4 03 c0       	mov    $0xc003d4c0,%eax
c0035346:	89 e5                	mov    %esp,%ebp
c0035348:	5d                   	pop    %ebp
c0035349:	c3                   	ret    
c003534a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035350 <__locale_mb_cur_max>:
c0035350:	55                   	push   %ebp
c0035351:	a1 18 d5 03 c0       	mov    0xc003d518,%eax
c0035356:	89 e5                	mov    %esp,%ebp
c0035358:	5d                   	pop    %ebp
c0035359:	c3                   	ret    
c003535a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035360 <__locale_msgcharset>:
c0035360:	55                   	push   %ebp
c0035361:	b8 a0 d4 03 c0       	mov    $0xc003d4a0,%eax
c0035366:	89 e5                	mov    %esp,%ebp
c0035368:	5d                   	pop    %ebp
c0035369:	c3                   	ret    
c003536a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035370 <__locale_cjk_lang>:
c0035370:	55                   	push   %ebp
c0035371:	31 c0                	xor    %eax,%eax
c0035373:	89 e5                	mov    %esp,%ebp
c0035375:	5d                   	pop    %ebp
c0035376:	c3                   	ret    
c0035377:	89 f6                	mov    %esi,%esi
c0035379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035380 <_localeconv_r>:
c0035380:	55                   	push   %ebp
c0035381:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035386:	89 e5                	mov    %esp,%ebp
c0035388:	5d                   	pop    %ebp
c0035389:	c3                   	ret    
c003538a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035390 <setlocale>:
c0035390:	55                   	push   %ebp
c0035391:	89 e5                	mov    %esp,%ebp
c0035393:	83 ec 18             	sub    $0x18,%esp
c0035396:	e8 35 cc ff ff       	call   c0031fd0 <__getreent>
c003539b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003539e:	89 54 24 08          	mov    %edx,0x8(%esp)
c00353a2:	8b 55 08             	mov    0x8(%ebp),%edx
c00353a5:	89 04 24             	mov    %eax,(%esp)
c00353a8:	89 54 24 04          	mov    %edx,0x4(%esp)
c00353ac:	e8 1f ff ff ff       	call   c00352d0 <_setlocale_r>
c00353b1:	c9                   	leave  
c00353b2:	c3                   	ret    
c00353b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00353b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00353c0 <localeconv>:
c00353c0:	55                   	push   %ebp
c00353c1:	89 e5                	mov    %esp,%ebp
c00353c3:	83 ec 08             	sub    $0x8,%esp
c00353c6:	e8 05 cc ff ff       	call   c0031fd0 <__getreent>
c00353cb:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c00353d0:	c9                   	leave  
c00353d1:	c3                   	ret    
c00353d2:	66 90                	xchg   %ax,%ax
c00353d4:	66 90                	xchg   %ax,%ax
c00353d6:	66 90                	xchg   %ax,%ax
c00353d8:	66 90                	xchg   %ax,%ax
c00353da:	66 90                	xchg   %ax,%ax
c00353dc:	66 90                	xchg   %ax,%ax
c00353de:	66 90                	xchg   %ax,%ax

c00353e0 <_malloc_r>:
c00353e0:	55                   	push   %ebp
c00353e1:	89 e5                	mov    %esp,%ebp
c00353e3:	57                   	push   %edi
c00353e4:	56                   	push   %esi
c00353e5:	53                   	push   %ebx
c00353e6:	83 ec 2c             	sub    $0x2c,%esp
c00353e9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00353ec:	8d 50 0b             	lea    0xb(%eax),%edx
c00353ef:	83 fa 16             	cmp    $0x16,%edx
c00353f2:	76 6c                	jbe    c0035460 <_malloc_r+0x80>
c00353f4:	89 d7                	mov    %edx,%edi
c00353f6:	83 e7 f8             	and    $0xfffffff8,%edi
c00353f9:	89 fe                	mov    %edi,%esi
c00353fb:	c1 ee 1f             	shr    $0x1f,%esi
c00353fe:	39 c7                	cmp    %eax,%edi
c0035400:	8b 45 08             	mov    0x8(%ebp),%eax
c0035403:	89 f2                	mov    %esi,%edx
c0035405:	72 67                	jb     c003546e <_malloc_r+0x8e>
c0035407:	84 d2                	test   %dl,%dl
c0035409:	75 63                	jne    c003546e <_malloc_r+0x8e>
c003540b:	89 04 24             	mov    %eax,(%esp)
c003540e:	e8 ad 07 00 00       	call   c0035bc0 <__malloc_lock>
c0035413:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c0035419:	77 65                	ja     c0035480 <_malloc_r+0xa0>
c003541b:	89 fa                	mov    %edi,%edx
c003541d:	c1 ea 03             	shr    $0x3,%edx
c0035420:	8d 04 d5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%edx,8),%eax
c0035427:	8b 58 0c             	mov    0xc(%eax),%ebx
c003542a:	39 c3                	cmp    %eax,%ebx
c003542c:	0f 84 3e 05 00 00    	je     c0035970 <_malloc_r+0x590>
c0035432:	8b 43 04             	mov    0x4(%ebx),%eax
c0035435:	83 e0 fc             	and    $0xfffffffc,%eax
c0035438:	8b 53 0c             	mov    0xc(%ebx),%edx
c003543b:	8b 4b 08             	mov    0x8(%ebx),%ecx
c003543e:	89 51 0c             	mov    %edx,0xc(%ecx)
c0035441:	89 4a 08             	mov    %ecx,0x8(%edx)
c0035444:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035449:	8b 45 08             	mov    0x8(%ebp),%eax
c003544c:	89 04 24             	mov    %eax,(%esp)
c003544f:	e8 7c 07 00 00       	call   c0035bd0 <__malloc_unlock>
c0035454:	8d 43 08             	lea    0x8(%ebx),%eax
c0035457:	83 c4 2c             	add    $0x2c,%esp
c003545a:	5b                   	pop    %ebx
c003545b:	5e                   	pop    %esi
c003545c:	5f                   	pop    %edi
c003545d:	5d                   	pop    %ebp
c003545e:	c3                   	ret    
c003545f:	90                   	nop
c0035460:	bf 10 00 00 00       	mov    $0x10,%edi
c0035465:	31 d2                	xor    %edx,%edx
c0035467:	39 c7                	cmp    %eax,%edi
c0035469:	8b 45 08             	mov    0x8(%ebp),%eax
c003546c:	73 99                	jae    c0035407 <_malloc_r+0x27>
c003546e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035474:	83 c4 2c             	add    $0x2c,%esp
c0035477:	31 c0                	xor    %eax,%eax
c0035479:	5b                   	pop    %ebx
c003547a:	5e                   	pop    %esi
c003547b:	5f                   	pop    %edi
c003547c:	5d                   	pop    %ebp
c003547d:	c3                   	ret    
c003547e:	66 90                	xchg   %ax,%ax
c0035480:	89 fe                	mov    %edi,%esi
c0035482:	c1 ee 09             	shr    $0x9,%esi
c0035485:	85 f6                	test   %esi,%esi
c0035487:	0f 84 ab 01 00 00    	je     c0035638 <_malloc_r+0x258>
c003548d:	83 fe 04             	cmp    $0x4,%esi
c0035490:	0f 87 8a 03 00 00    	ja     c0035820 <_malloc_r+0x440>
c0035496:	89 fe                	mov    %edi,%esi
c0035498:	c1 ee 06             	shr    $0x6,%esi
c003549b:	83 c6 38             	add    $0x38,%esi
c003549e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00354a1:	8d 0c 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%ecx
c00354a8:	8b 59 0c             	mov    0xc(%ecx),%ebx
c00354ab:	39 d9                	cmp    %ebx,%ecx
c00354ad:	75 18                	jne    c00354c7 <_malloc_r+0xe7>
c00354af:	eb 28                	jmp    c00354d9 <_malloc_r+0xf9>
c00354b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00354b8:	85 d2                	test   %edx,%edx
c00354ba:	0f 89 78 ff ff ff    	jns    c0035438 <_malloc_r+0x58>
c00354c0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c00354c3:	39 d9                	cmp    %ebx,%ecx
c00354c5:	74 12                	je     c00354d9 <_malloc_r+0xf9>
c00354c7:	8b 43 04             	mov    0x4(%ebx),%eax
c00354ca:	83 e0 fc             	and    $0xfffffffc,%eax
c00354cd:	89 c2                	mov    %eax,%edx
c00354cf:	29 fa                	sub    %edi,%edx
c00354d1:	83 fa 0f             	cmp    $0xf,%edx
c00354d4:	7e e2                	jle    c00354b8 <_malloc_r+0xd8>
c00354d6:	83 ee 01             	sub    $0x1,%esi
c00354d9:	8d 46 01             	lea    0x1(%esi),%eax
c00354dc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00354df:	8b 1d 50 d5 03 c0    	mov    0xc003d550,%ebx
c00354e5:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c00354ea:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c00354f0:	74 6b                	je     c003555d <_malloc_r+0x17d>
c00354f2:	8b 73 04             	mov    0x4(%ebx),%esi
c00354f5:	83 e6 fc             	and    $0xfffffffc,%esi
c00354f8:	89 f0                	mov    %esi,%eax
c00354fa:	29 f8                	sub    %edi,%eax
c00354fc:	83 f8 0f             	cmp    $0xf,%eax
c00354ff:	0f 8f a3 03 00 00    	jg     c00358a8 <_malloc_r+0x4c8>
c0035505:	85 c0                	test   %eax,%eax
c0035507:	c7 05 54 d5 03 c0 48 	movl   $0xc003d548,0xc003d554
c003550e:	d5 03 c0 
c0035511:	c7 05 50 d5 03 c0 48 	movl   $0xc003d548,0xc003d550
c0035518:	d5 03 c0 
c003551b:	0f 89 27 01 00 00    	jns    c0035648 <_malloc_r+0x268>
c0035521:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0035527:	0f 87 1b 03 00 00    	ja     c0035848 <_malloc_r+0x468>
c003552d:	c1 ee 03             	shr    $0x3,%esi
c0035530:	b8 01 00 00 00       	mov    $0x1,%eax
c0035535:	89 f1                	mov    %esi,%ecx
c0035537:	8d 14 f5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%esi,8),%edx
c003553e:	c1 f9 02             	sar    $0x2,%ecx
c0035541:	d3 e0                	shl    %cl,%eax
c0035543:	8b 4a 08             	mov    0x8(%edx),%ecx
c0035546:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c003554c:	89 53 0c             	mov    %edx,0xc(%ebx)
c003554f:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0035552:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035557:	89 5a 08             	mov    %ebx,0x8(%edx)
c003555a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c003555d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035560:	be 01 00 00 00       	mov    $0x1,%esi
c0035565:	c1 f9 02             	sar    $0x2,%ecx
c0035568:	d3 e6                	shl    %cl,%esi
c003556a:	39 c6                	cmp    %eax,%esi
c003556c:	0f 87 f6 00 00 00    	ja     c0035668 <_malloc_r+0x288>
c0035572:	85 f0                	test   %esi,%eax
c0035574:	0f 85 76 03 00 00    	jne    c00358f0 <_malloc_r+0x510>
c003557a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003557d:	01 f6                	add    %esi,%esi
c003557f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035582:	85 f0                	test   %esi,%eax
c0035584:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035587:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003558a:	0f 85 60 03 00 00    	jne    c00358f0 <_malloc_r+0x510>
c0035590:	89 ca                	mov    %ecx,%edx
c0035592:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035598:	01 f6                	add    %esi,%esi
c003559a:	83 c2 04             	add    $0x4,%edx
c003559d:	85 f0                	test   %esi,%eax
c003559f:	74 f7                	je     c0035598 <_malloc_r+0x1b8>
c00355a1:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00355a4:	89 75 dc             	mov    %esi,-0x24(%ebp)
c00355a7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00355aa:	8d 34 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%esi
c00355b1:	89 f1                	mov    %esi,%ecx
c00355b3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00355b6:	8b 59 0c             	mov    0xc(%ecx),%ebx
c00355b9:	39 d9                	cmp    %ebx,%ecx
c00355bb:	75 1e                	jne    c00355db <_malloc_r+0x1fb>
c00355bd:	e9 36 03 00 00       	jmp    c00358f8 <_malloc_r+0x518>
c00355c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00355c8:	85 d2                	test   %edx,%edx
c00355ca:	0f 89 c0 03 00 00    	jns    c0035990 <_malloc_r+0x5b0>
c00355d0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c00355d3:	39 d9                	cmp    %ebx,%ecx
c00355d5:	0f 84 1d 03 00 00    	je     c00358f8 <_malloc_r+0x518>
c00355db:	8b 43 04             	mov    0x4(%ebx),%eax
c00355de:	83 e0 fc             	and    $0xfffffffc,%eax
c00355e1:	89 c2                	mov    %eax,%edx
c00355e3:	29 fa                	sub    %edi,%edx
c00355e5:	83 fa 0f             	cmp    $0xf,%edx
c00355e8:	7e de                	jle    c00355c8 <_malloc_r+0x1e8>
c00355ea:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c00355ed:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c00355f0:	83 cf 01             	or     $0x1,%edi
c00355f3:	8b 73 08             	mov    0x8(%ebx),%esi
c00355f6:	89 7b 04             	mov    %edi,0x4(%ebx)
c00355f9:	89 4e 0c             	mov    %ecx,0xc(%esi)
c00355fc:	89 71 08             	mov    %esi,0x8(%ecx)
c00355ff:	89 d1                	mov    %edx,%ecx
c0035601:	83 c9 01             	or     $0x1,%ecx
c0035604:	a3 54 d5 03 c0       	mov    %eax,0xc003d554
c0035609:	a3 50 d5 03 c0       	mov    %eax,0xc003d550
c003560e:	c7 40 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%eax)
c0035615:	c7 40 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%eax)
c003561c:	89 48 04             	mov    %ecx,0x4(%eax)
c003561f:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0035622:	8b 45 08             	mov    0x8(%ebp),%eax
c0035625:	89 04 24             	mov    %eax,(%esp)
c0035628:	e8 a3 05 00 00       	call   c0035bd0 <__malloc_unlock>
c003562d:	8d 43 08             	lea    0x8(%ebx),%eax
c0035630:	e9 22 fe ff ff       	jmp    c0035457 <_malloc_r+0x77>
c0035635:	8d 76 00             	lea    0x0(%esi),%esi
c0035638:	b8 7e 00 00 00       	mov    $0x7e,%eax
c003563d:	be 3f 00 00 00       	mov    $0x3f,%esi
c0035642:	e9 5a fe ff ff       	jmp    c00354a1 <_malloc_r+0xc1>
c0035647:	90                   	nop
c0035648:	8b 45 08             	mov    0x8(%ebp),%eax
c003564b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0035650:	89 04 24             	mov    %eax,(%esp)
c0035653:	e8 78 05 00 00       	call   c0035bd0 <__malloc_unlock>
c0035658:	83 c4 2c             	add    $0x2c,%esp
c003565b:	8d 43 08             	lea    0x8(%ebx),%eax
c003565e:	5b                   	pop    %ebx
c003565f:	5e                   	pop    %esi
c0035660:	5f                   	pop    %edi
c0035661:	5d                   	pop    %ebp
c0035662:	c3                   	ret    
c0035663:	90                   	nop
c0035664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035668:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c003566e:	8b 73 04             	mov    0x4(%ebx),%esi
c0035671:	83 e6 fc             	and    $0xfffffffc,%esi
c0035674:	39 f7                	cmp    %esi,%edi
c0035676:	77 0d                	ja     c0035685 <_malloc_r+0x2a5>
c0035678:	89 f0                	mov    %esi,%eax
c003567a:	29 f8                	sub    %edi,%eax
c003567c:	83 f8 0f             	cmp    $0xf,%eax
c003567f:	0f 8f 6b 01 00 00    	jg     c00357f0 <_malloc_r+0x410>
c0035685:	8b 0d 50 00 07 c0    	mov    0xc0070050,%ecx
c003568b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003568e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035691:	01 f9                	add    %edi,%ecx
c0035693:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035699:	83 c1 10             	add    $0x10,%ecx
c003569c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c00356a1:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c00356a8:	0f 44 c1             	cmove  %ecx,%eax
c00356ab:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00356ae:	89 44 24 04          	mov    %eax,0x4(%esp)
c00356b2:	8b 45 08             	mov    0x8(%ebp),%eax
c00356b5:	89 04 24             	mov    %eax,(%esp)
c00356b8:	e8 03 13 00 00       	call   c00369c0 <_sbrk_r>
c00356bd:	83 f8 ff             	cmp    $0xffffffff,%eax
c00356c0:	89 c1                	mov    %eax,%ecx
c00356c2:	0f 84 17 03 00 00    	je     c00359df <_malloc_r+0x5ff>
c00356c8:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00356cb:	0f 87 02 03 00 00    	ja     c00359d3 <_malloc_r+0x5f3>
c00356d1:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00356d4:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c00356da:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c00356dd:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c00356e3:	0f 84 a9 03 00 00    	je     c0035a92 <_malloc_r+0x6b2>
c00356e9:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c00356f0:	0f 84 ca 03 00 00    	je     c0035ac0 <_malloc_r+0x6e0>
c00356f6:	89 c8                	mov    %ecx,%eax
c00356f8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c00356fb:	01 d0                	add    %edx,%eax
c00356fd:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0035702:	89 c8                	mov    %ecx,%eax
c0035704:	ba 00 10 00 00       	mov    $0x1000,%edx
c0035709:	83 e0 07             	and    $0x7,%eax
c003570c:	74 0c                	je     c003571a <_malloc_r+0x33a>
c003570e:	29 c1                	sub    %eax,%ecx
c0035710:	ba 08 10 00 00       	mov    $0x1008,%edx
c0035715:	8d 49 08             	lea    0x8(%ecx),%ecx
c0035718:	29 c2                	sub    %eax,%edx
c003571a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003571d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035720:	01 c8                	add    %ecx,%eax
c0035722:	25 ff 0f 00 00       	and    $0xfff,%eax
c0035727:	29 c2                	sub    %eax,%edx
c0035729:	8b 45 08             	mov    0x8(%ebp),%eax
c003572c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035730:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0035733:	89 04 24             	mov    %eax,(%esp)
c0035736:	e8 85 12 00 00       	call   c00369c0 <_sbrk_r>
c003573b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003573e:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035741:	0f 84 6d 03 00 00    	je     c0035ab4 <_malloc_r+0x6d4>
c0035747:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003574a:	29 c8                	sub    %ecx,%eax
c003574c:	01 d0                	add    %edx,%eax
c003574e:	83 c8 01             	or     $0x1,%eax
c0035751:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c0035757:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c003575d:	89 0d 48 d5 03 c0    	mov    %ecx,0xc003d548
c0035763:	89 41 04             	mov    %eax,0x4(%ecx)
c0035766:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c003576c:	0f 84 f2 02 00 00    	je     c0035a64 <_malloc_r+0x684>
c0035772:	83 fe 0f             	cmp    $0xf,%esi
c0035775:	0f 86 8d 02 00 00    	jbe    c0035a08 <_malloc_r+0x628>
c003577b:	8b 43 04             	mov    0x4(%ebx),%eax
c003577e:	83 ee 0c             	sub    $0xc,%esi
c0035781:	83 e6 f8             	and    $0xfffffff8,%esi
c0035784:	83 e0 01             	and    $0x1,%eax
c0035787:	09 f0                	or     %esi,%eax
c0035789:	83 fe 0f             	cmp    $0xf,%esi
c003578c:	89 43 04             	mov    %eax,0x4(%ebx)
c003578f:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035794:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003579b:	00 
c003579c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c00357a3:	00 
c00357a4:	0f 87 a2 02 00 00    	ja     c0035a4c <_malloc_r+0x66c>
c00357aa:	3b 15 4c 00 07 c0    	cmp    0xc007004c,%edx
c00357b0:	76 06                	jbe    c00357b8 <_malloc_r+0x3d8>
c00357b2:	89 15 4c 00 07 c0    	mov    %edx,0xc007004c
c00357b8:	3b 15 48 00 07 c0    	cmp    0xc0070048,%edx
c00357be:	76 06                	jbe    c00357c6 <_malloc_r+0x3e6>
c00357c0:	89 15 48 00 07 c0    	mov    %edx,0xc0070048
c00357c6:	8b 50 04             	mov    0x4(%eax),%edx
c00357c9:	89 c3                	mov    %eax,%ebx
c00357cb:	83 e2 fc             	and    $0xfffffffc,%edx
c00357ce:	89 d0                	mov    %edx,%eax
c00357d0:	29 f8                	sub    %edi,%eax
c00357d2:	39 d7                	cmp    %edx,%edi
c00357d4:	77 05                	ja     c00357db <_malloc_r+0x3fb>
c00357d6:	83 f8 0f             	cmp    $0xf,%eax
c00357d9:	7f 15                	jg     c00357f0 <_malloc_r+0x410>
c00357db:	8b 45 08             	mov    0x8(%ebp),%eax
c00357de:	89 04 24             	mov    %eax,(%esp)
c00357e1:	e8 ea 03 00 00       	call   c0035bd0 <__malloc_unlock>
c00357e6:	31 c0                	xor    %eax,%eax
c00357e8:	e9 6a fc ff ff       	jmp    c0035457 <_malloc_r+0x77>
c00357ed:	8d 76 00             	lea    0x0(%esi),%esi
c00357f0:	89 fa                	mov    %edi,%edx
c00357f2:	83 c8 01             	or     $0x1,%eax
c00357f5:	83 ca 01             	or     $0x1,%edx
c00357f8:	89 53 04             	mov    %edx,0x4(%ebx)
c00357fb:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c00357fe:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0035804:	89 42 04             	mov    %eax,0x4(%edx)
c0035807:	8b 45 08             	mov    0x8(%ebp),%eax
c003580a:	89 04 24             	mov    %eax,(%esp)
c003580d:	e8 be 03 00 00       	call   c0035bd0 <__malloc_unlock>
c0035812:	83 c4 2c             	add    $0x2c,%esp
c0035815:	8d 43 08             	lea    0x8(%ebx),%eax
c0035818:	5b                   	pop    %ebx
c0035819:	5e                   	pop    %esi
c003581a:	5f                   	pop    %edi
c003581b:	5d                   	pop    %ebp
c003581c:	c3                   	ret    
c003581d:	8d 76 00             	lea    0x0(%esi),%esi
c0035820:	83 fe 14             	cmp    $0x14,%esi
c0035823:	0f 86 8f 01 00 00    	jbe    c00359b8 <_malloc_r+0x5d8>
c0035829:	83 fe 54             	cmp    $0x54,%esi
c003582c:	0f 87 be 01 00 00    	ja     c00359f0 <_malloc_r+0x610>
c0035832:	89 fe                	mov    %edi,%esi
c0035834:	c1 ee 0c             	shr    $0xc,%esi
c0035837:	83 c6 6e             	add    $0x6e,%esi
c003583a:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003583d:	e9 5f fc ff ff       	jmp    c00354a1 <_malloc_r+0xc1>
c0035842:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035848:	89 f1                	mov    %esi,%ecx
c003584a:	c1 e9 09             	shr    $0x9,%ecx
c003584d:	83 f9 04             	cmp    $0x4,%ecx
c0035850:	0f 86 6d 01 00 00    	jbe    c00359c3 <_malloc_r+0x5e3>
c0035856:	83 f9 14             	cmp    $0x14,%ecx
c0035859:	0f 87 0f 02 00 00    	ja     c0035a6e <_malloc_r+0x68e>
c003585f:	83 c1 5b             	add    $0x5b,%ecx
c0035862:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035865:	8d 04 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%eax
c003586c:	8b 50 08             	mov    0x8(%eax),%edx
c003586f:	39 c2                	cmp    %eax,%edx
c0035871:	0f 84 a1 01 00 00    	je     c0035a18 <_malloc_r+0x638>
c0035877:	90                   	nop
c0035878:	8b 4a 04             	mov    0x4(%edx),%ecx
c003587b:	83 e1 fc             	and    $0xfffffffc,%ecx
c003587e:	39 ce                	cmp    %ecx,%esi
c0035880:	73 07                	jae    c0035889 <_malloc_r+0x4a9>
c0035882:	8b 52 08             	mov    0x8(%edx),%edx
c0035885:	39 d0                	cmp    %edx,%eax
c0035887:	75 ef                	jne    c0035878 <_malloc_r+0x498>
c0035889:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003588c:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035891:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035894:	89 53 08             	mov    %edx,0x8(%ebx)
c0035897:	89 59 08             	mov    %ebx,0x8(%ecx)
c003589a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003589d:	e9 bb fc ff ff       	jmp    c003555d <_malloc_r+0x17d>
c00358a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00358a8:	89 c1                	mov    %eax,%ecx
c00358aa:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c00358ad:	83 c9 01             	or     $0x1,%ecx
c00358b0:	83 cf 01             	or     $0x1,%edi
c00358b3:	89 7b 04             	mov    %edi,0x4(%ebx)
c00358b6:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c00358bc:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c00358c2:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c00358c9:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c00358d0:	89 4a 04             	mov    %ecx,0x4(%edx)
c00358d3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c00358d6:	8b 45 08             	mov    0x8(%ebp),%eax
c00358d9:	89 04 24             	mov    %eax,(%esp)
c00358dc:	e8 ef 02 00 00       	call   c0035bd0 <__malloc_unlock>
c00358e1:	8d 43 08             	lea    0x8(%ebx),%eax
c00358e4:	e9 6e fb ff ff       	jmp    c0035457 <_malloc_r+0x77>
c00358e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00358f0:	89 75 dc             	mov    %esi,-0x24(%ebp)
c00358f3:	e9 af fc ff ff       	jmp    c00355a7 <_malloc_r+0x1c7>
c00358f8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c00358fc:	83 c1 08             	add    $0x8,%ecx
c00358ff:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0035903:	0f 85 ad fc ff ff    	jne    c00355b6 <_malloc_r+0x1d6>
c0035909:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003590c:	eb 12                	jmp    c0035920 <_malloc_r+0x540>
c003590e:	66 90                	xchg   %ax,%ax
c0035910:	8d 56 f8             	lea    -0x8(%esi),%edx
c0035913:	8b 36                	mov    (%esi),%esi
c0035915:	83 e8 01             	sub    $0x1,%eax
c0035918:	39 d6                	cmp    %edx,%esi
c003591a:	0f 85 ea 01 00 00    	jne    c0035b0a <_malloc_r+0x72a>
c0035920:	a8 03                	test   $0x3,%al
c0035922:	75 ec                	jne    c0035910 <_malloc_r+0x530>
c0035924:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0035927:	f7 d0                	not    %eax
c0035929:	23 05 44 d5 03 c0    	and    0xc003d544,%eax
c003592f:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035934:	d1 65 dc             	shll   -0x24(%ebp)
c0035937:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003593a:	39 c2                	cmp    %eax,%edx
c003593c:	0f 87 26 fd ff ff    	ja     c0035668 <_malloc_r+0x288>
c0035942:	85 d2                	test   %edx,%edx
c0035944:	0f 84 1e fd ff ff    	je     c0035668 <_malloc_r+0x288>
c003594a:	85 c2                	test   %eax,%edx
c003594c:	0f 85 c2 01 00 00    	jne    c0035b14 <_malloc_r+0x734>
c0035952:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0035955:	89 f1                	mov    %esi,%ecx
c0035957:	01 d2                	add    %edx,%edx
c0035959:	83 c1 04             	add    $0x4,%ecx
c003595c:	85 d0                	test   %edx,%eax
c003595e:	74 f7                	je     c0035957 <_malloc_r+0x577>
c0035960:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035963:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0035966:	e9 3c fc ff ff       	jmp    c00355a7 <_malloc_r+0x1c7>
c003596b:	90                   	nop
c003596c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035970:	8d 43 08             	lea    0x8(%ebx),%eax
c0035973:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035976:	39 d8                	cmp    %ebx,%eax
c0035978:	0f 85 b4 fa ff ff    	jne    c0035432 <_malloc_r+0x52>
c003597e:	8d 42 02             	lea    0x2(%edx),%eax
c0035981:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035984:	e9 56 fb ff ff       	jmp    c00354df <_malloc_r+0xff>
c0035989:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035990:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035995:	8b 53 08             	mov    0x8(%ebx),%edx
c0035998:	8b 43 0c             	mov    0xc(%ebx),%eax
c003599b:	89 42 0c             	mov    %eax,0xc(%edx)
c003599e:	89 50 08             	mov    %edx,0x8(%eax)
c00359a1:	8b 45 08             	mov    0x8(%ebp),%eax
c00359a4:	89 04 24             	mov    %eax,(%esp)
c00359a7:	e8 24 02 00 00       	call   c0035bd0 <__malloc_unlock>
c00359ac:	8d 43 08             	lea    0x8(%ebx),%eax
c00359af:	e9 a3 fa ff ff       	jmp    c0035457 <_malloc_r+0x77>
c00359b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00359b8:	83 c6 5b             	add    $0x5b,%esi
c00359bb:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359be:	e9 de fa ff ff       	jmp    c00354a1 <_malloc_r+0xc1>
c00359c3:	89 f1                	mov    %esi,%ecx
c00359c5:	c1 e9 06             	shr    $0x6,%ecx
c00359c8:	83 c1 38             	add    $0x38,%ecx
c00359cb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00359ce:	e9 92 fe ff ff       	jmp    c0035865 <_malloc_r+0x485>
c00359d3:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c00359d9:	0f 84 f2 fc ff ff    	je     c00356d1 <_malloc_r+0x2f1>
c00359df:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c00359e5:	8b 53 04             	mov    0x4(%ebx),%edx
c00359e8:	83 e2 fc             	and    $0xfffffffc,%edx
c00359eb:	e9 de fd ff ff       	jmp    c00357ce <_malloc_r+0x3ee>
c00359f0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c00359f6:	77 3c                	ja     c0035a34 <_malloc_r+0x654>
c00359f8:	89 fe                	mov    %edi,%esi
c00359fa:	c1 ee 0f             	shr    $0xf,%esi
c00359fd:	83 c6 77             	add    $0x77,%esi
c0035a00:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a03:	e9 99 fa ff ff       	jmp    c00354a1 <_malloc_r+0xc1>
c0035a08:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c0035a0f:	89 cb                	mov    %ecx,%ebx
c0035a11:	31 d2                	xor    %edx,%edx
c0035a13:	e9 b6 fd ff ff       	jmp    c00357ce <_malloc_r+0x3ee>
c0035a18:	c1 f9 02             	sar    $0x2,%ecx
c0035a1b:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a20:	d3 e0                	shl    %cl,%eax
c0035a22:	89 d1                	mov    %edx,%ecx
c0035a24:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c0035a2a:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035a2f:	e9 5d fe ff ff       	jmp    c0035891 <_malloc_r+0x4b1>
c0035a34:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c0035a3a:	77 47                	ja     c0035a83 <_malloc_r+0x6a3>
c0035a3c:	89 fe                	mov    %edi,%esi
c0035a3e:	c1 ee 12             	shr    $0x12,%esi
c0035a41:	83 c6 7c             	add    $0x7c,%esi
c0035a44:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a47:	e9 55 fa ff ff       	jmp    c00354a1 <_malloc_r+0xc1>
c0035a4c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035a4f:	83 c3 08             	add    $0x8,%ebx
c0035a52:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035a56:	89 04 24             	mov    %eax,(%esp)
c0035a59:	e8 c2 22 00 00       	call   c0037d20 <_free_r>
c0035a5e:	8b 15 20 00 07 c0    	mov    0xc0070020,%edx
c0035a64:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035a69:	e9 3c fd ff ff       	jmp    c00357aa <_malloc_r+0x3ca>
c0035a6e:	83 f9 54             	cmp    $0x54,%ecx
c0035a71:	77 58                	ja     c0035acb <_malloc_r+0x6eb>
c0035a73:	89 f1                	mov    %esi,%ecx
c0035a75:	c1 e9 0c             	shr    $0xc,%ecx
c0035a78:	83 c1 6e             	add    $0x6e,%ecx
c0035a7b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a7e:	e9 e2 fd ff ff       	jmp    c0035865 <_malloc_r+0x485>
c0035a83:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a88:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035a8d:	e9 0f fa ff ff       	jmp    c00354a1 <_malloc_r+0xc1>
c0035a92:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035a99:	0f 85 4a fc ff ff    	jne    c00356e9 <_malloc_r+0x309>
c0035a9f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035aa2:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035aa7:	01 f1                	add    %esi,%ecx
c0035aa9:	83 c9 01             	or     $0x1,%ecx
c0035aac:	89 48 04             	mov    %ecx,0x4(%eax)
c0035aaf:	e9 f6 fc ff ff       	jmp    c00357aa <_malloc_r+0x3ca>
c0035ab4:	b8 01 00 00 00       	mov    $0x1,%eax
c0035ab9:	31 d2                	xor    %edx,%edx
c0035abb:	e9 91 fc ff ff       	jmp    c0035751 <_malloc_r+0x371>
c0035ac0:	89 0d 20 d5 03 c0    	mov    %ecx,0xc003d520
c0035ac6:	e9 37 fc ff ff       	jmp    c0035702 <_malloc_r+0x322>
c0035acb:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035ad1:	77 10                	ja     c0035ae3 <_malloc_r+0x703>
c0035ad3:	89 f1                	mov    %esi,%ecx
c0035ad5:	c1 e9 0f             	shr    $0xf,%ecx
c0035ad8:	83 c1 77             	add    $0x77,%ecx
c0035adb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035ade:	e9 82 fd ff ff       	jmp    c0035865 <_malloc_r+0x485>
c0035ae3:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035ae9:	77 10                	ja     c0035afb <_malloc_r+0x71b>
c0035aeb:	89 f1                	mov    %esi,%ecx
c0035aed:	c1 e9 12             	shr    $0x12,%ecx
c0035af0:	83 c1 7c             	add    $0x7c,%ecx
c0035af3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035af6:	e9 6a fd ff ff       	jmp    c0035865 <_malloc_r+0x485>
c0035afb:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035b00:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035b05:	e9 5b fd ff ff       	jmp    c0035865 <_malloc_r+0x485>
c0035b0a:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035b0f:	e9 20 fe ff ff       	jmp    c0035934 <_malloc_r+0x554>
c0035b14:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035b17:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035b1a:	e9 88 fa ff ff       	jmp    c00355a7 <_malloc_r+0x1c7>
c0035b1f:	90                   	nop

c0035b20 <memchr>:
c0035b20:	55                   	push   %ebp
c0035b21:	89 e5                	mov    %esp,%ebp
c0035b23:	57                   	push   %edi
c0035b24:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035b28:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035b2b:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035b2e:	31 d2                	xor    %edx,%edx
c0035b30:	85 c9                	test   %ecx,%ecx
c0035b32:	74 79                	je     c0035bad <L20>
c0035b34:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b3a:	74 28                	je     c0035b64 <L5>
c0035b3c:	3a 07                	cmp    (%edi),%al
c0035b3e:	74 6a                	je     c0035baa <L15>
c0035b40:	47                   	inc    %edi
c0035b41:	49                   	dec    %ecx
c0035b42:	74 69                	je     c0035bad <L20>
c0035b44:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b4a:	74 18                	je     c0035b64 <L5>
c0035b4c:	3a 07                	cmp    (%edi),%al
c0035b4e:	74 5a                	je     c0035baa <L15>
c0035b50:	47                   	inc    %edi
c0035b51:	49                   	dec    %ecx
c0035b52:	74 59                	je     c0035bad <L20>
c0035b54:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b5a:	74 08                	je     c0035b64 <L5>
c0035b5c:	3a 07                	cmp    (%edi),%al
c0035b5e:	74 4a                	je     c0035baa <L15>
c0035b60:	47                   	inc    %edi
c0035b61:	49                   	dec    %ecx
c0035b62:	74 49                	je     c0035bad <L20>

c0035b64 <L5>:
c0035b64:	88 c4                	mov    %al,%ah
c0035b66:	89 c2                	mov    %eax,%edx
c0035b68:	c1 e2 10             	shl    $0x10,%edx
c0035b6b:	09 d0                	or     %edx,%eax
c0035b6d:	53                   	push   %ebx
c0035b6e:	66 90                	xchg   %ax,%ax

c0035b70 <L8>:
c0035b70:	83 e9 04             	sub    $0x4,%ecx
c0035b73:	72 1c                	jb     c0035b91 <L9>
c0035b75:	8b 17                	mov    (%edi),%edx
c0035b77:	83 c7 04             	add    $0x4,%edi
c0035b7a:	31 c2                	xor    %eax,%edx
c0035b7c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035b82:	f7 d2                	not    %edx
c0035b84:	21 d3                	and    %edx,%ebx
c0035b86:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035b8c:	74 e2                	je     c0035b70 <L8>
c0035b8e:	83 ef 04             	sub    $0x4,%edi

c0035b91 <L9>:
c0035b91:	5b                   	pop    %ebx
c0035b92:	31 d2                	xor    %edx,%edx
c0035b94:	83 c1 04             	add    $0x4,%ecx
c0035b97:	74 14                	je     c0035bad <L20>
c0035b99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035ba0 <L10>:
c0035ba0:	3a 07                	cmp    (%edi),%al
c0035ba2:	74 06                	je     c0035baa <L15>
c0035ba4:	47                   	inc    %edi
c0035ba5:	49                   	dec    %ecx
c0035ba6:	75 f8                	jne    c0035ba0 <L10>
c0035ba8:	31 ff                	xor    %edi,%edi

c0035baa <L15>:
c0035baa:	4a                   	dec    %edx
c0035bab:	21 fa                	and    %edi,%edx

c0035bad <L20>:
c0035bad:	89 d0                	mov    %edx,%eax
c0035baf:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035bb2:	5f                   	pop    %edi
c0035bb3:	c9                   	leave  
c0035bb4:	c3                   	ret    
c0035bb5:	66 90                	xchg   %ax,%ax
c0035bb7:	66 90                	xchg   %ax,%ax
c0035bb9:	66 90                	xchg   %ax,%ax
c0035bbb:	66 90                	xchg   %ax,%ax
c0035bbd:	66 90                	xchg   %ax,%ax
c0035bbf:	90                   	nop

c0035bc0 <__malloc_lock>:
c0035bc0:	55                   	push   %ebp
c0035bc1:	89 e5                	mov    %esp,%ebp
c0035bc3:	5d                   	pop    %ebp
c0035bc4:	c3                   	ret    
c0035bc5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035bc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035bd0 <__malloc_unlock>:
c0035bd0:	55                   	push   %ebp
c0035bd1:	89 e5                	mov    %esp,%ebp
c0035bd3:	5d                   	pop    %ebp
c0035bd4:	c3                   	ret    
c0035bd5:	66 90                	xchg   %ax,%ax
c0035bd7:	66 90                	xchg   %ax,%ax
c0035bd9:	66 90                	xchg   %ax,%ax
c0035bdb:	66 90                	xchg   %ax,%ax
c0035bdd:	66 90                	xchg   %ax,%ax
c0035bdf:	90                   	nop

c0035be0 <_Balloc>:
c0035be0:	55                   	push   %ebp
c0035be1:	89 e5                	mov    %esp,%ebp
c0035be3:	57                   	push   %edi
c0035be4:	56                   	push   %esi
c0035be5:	53                   	push   %ebx
c0035be6:	83 ec 1c             	sub    $0x1c,%esp
c0035be9:	8b 75 08             	mov    0x8(%ebp),%esi
c0035bec:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035bef:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035bf2:	85 c0                	test   %eax,%eax
c0035bf4:	74 2a                	je     c0035c20 <_Balloc+0x40>
c0035bf6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035bf9:	8b 02                	mov    (%edx),%eax
c0035bfb:	85 c0                	test   %eax,%eax
c0035bfd:	74 49                	je     c0035c48 <_Balloc+0x68>
c0035bff:	8b 08                	mov    (%eax),%ecx
c0035c01:	89 0a                	mov    %ecx,(%edx)
c0035c03:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035c0a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035c11:	83 c4 1c             	add    $0x1c,%esp
c0035c14:	5b                   	pop    %ebx
c0035c15:	5e                   	pop    %esi
c0035c16:	5f                   	pop    %edi
c0035c17:	5d                   	pop    %ebp
c0035c18:	c3                   	ret    
c0035c19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035c20:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035c27:	00 
c0035c28:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035c2f:	00 
c0035c30:	89 34 24             	mov    %esi,(%esp)
c0035c33:	e8 38 1f 00 00       	call   c0037b70 <_calloc_r>
c0035c38:	85 c0                	test   %eax,%eax
c0035c3a:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035c3d:	75 b7                	jne    c0035bf6 <_Balloc+0x16>
c0035c3f:	31 c0                	xor    %eax,%eax
c0035c41:	eb ce                	jmp    c0035c11 <_Balloc+0x31>
c0035c43:	90                   	nop
c0035c44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035c48:	89 d9                	mov    %ebx,%ecx
c0035c4a:	bf 01 00 00 00       	mov    $0x1,%edi
c0035c4f:	d3 e7                	shl    %cl,%edi
c0035c51:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035c58:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035c5c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035c63:	00 
c0035c64:	89 34 24             	mov    %esi,(%esp)
c0035c67:	e8 04 1f 00 00       	call   c0037b70 <_calloc_r>
c0035c6c:	85 c0                	test   %eax,%eax
c0035c6e:	74 cf                	je     c0035c3f <_Balloc+0x5f>
c0035c70:	89 58 04             	mov    %ebx,0x4(%eax)
c0035c73:	89 78 08             	mov    %edi,0x8(%eax)
c0035c76:	eb 8b                	jmp    c0035c03 <_Balloc+0x23>
c0035c78:	90                   	nop
c0035c79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035c80 <_Bfree>:
c0035c80:	55                   	push   %ebp
c0035c81:	89 e5                	mov    %esp,%ebp
c0035c83:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c86:	85 c0                	test   %eax,%eax
c0035c88:	74 12                	je     c0035c9c <_Bfree+0x1c>
c0035c8a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035c8d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035c90:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035c93:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035c96:	8b 0a                	mov    (%edx),%ecx
c0035c98:	89 08                	mov    %ecx,(%eax)
c0035c9a:	89 02                	mov    %eax,(%edx)
c0035c9c:	5d                   	pop    %ebp
c0035c9d:	c3                   	ret    
c0035c9e:	66 90                	xchg   %ax,%ax

c0035ca0 <__multadd>:
c0035ca0:	55                   	push   %ebp
c0035ca1:	89 e5                	mov    %esp,%ebp
c0035ca3:	57                   	push   %edi
c0035ca4:	56                   	push   %esi
c0035ca5:	53                   	push   %ebx
c0035ca6:	83 ec 2c             	sub    $0x2c,%esp
c0035ca9:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cac:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035caf:	8b 40 10             	mov    0x10(%eax),%eax
c0035cb2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035cb5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cb8:	8d 78 14             	lea    0x14(%eax),%edi
c0035cbb:	31 c0                	xor    %eax,%eax
c0035cbd:	8d 76 00             	lea    0x0(%esi),%esi
c0035cc0:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035cc3:	0f b7 d1             	movzwl %cx,%edx
c0035cc6:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035cca:	c1 e9 10             	shr    $0x10,%ecx
c0035ccd:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035cd1:	01 da                	add    %ebx,%edx
c0035cd3:	89 d3                	mov    %edx,%ebx
c0035cd5:	0f b7 d2             	movzwl %dx,%edx
c0035cd8:	c1 eb 10             	shr    $0x10,%ebx
c0035cdb:	01 d9                	add    %ebx,%ecx
c0035cdd:	89 ce                	mov    %ecx,%esi
c0035cdf:	c1 e1 10             	shl    $0x10,%ecx
c0035ce2:	01 d1                	add    %edx,%ecx
c0035ce4:	c1 ee 10             	shr    $0x10,%esi
c0035ce7:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035cea:	83 c0 01             	add    $0x1,%eax
c0035ced:	89 f3                	mov    %esi,%ebx
c0035cef:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035cf2:	7f cc                	jg     c0035cc0 <__multadd+0x20>
c0035cf4:	85 f6                	test   %esi,%esi
c0035cf6:	74 1b                	je     c0035d13 <__multadd+0x73>
c0035cf8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cfb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035cfe:	3b 78 08             	cmp    0x8(%eax),%edi
c0035d01:	7d 1d                	jge    c0035d20 <__multadd+0x80>
c0035d03:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035d06:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035d09:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035d0d:	83 c0 01             	add    $0x1,%eax
c0035d10:	89 47 10             	mov    %eax,0x10(%edi)
c0035d13:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d16:	83 c4 2c             	add    $0x2c,%esp
c0035d19:	5b                   	pop    %ebx
c0035d1a:	5e                   	pop    %esi
c0035d1b:	5f                   	pop    %edi
c0035d1c:	5d                   	pop    %ebp
c0035d1d:	c3                   	ret    
c0035d1e:	66 90                	xchg   %ax,%ax
c0035d20:	8b 40 04             	mov    0x4(%eax),%eax
c0035d23:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035d26:	83 c0 01             	add    $0x1,%eax
c0035d29:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d2d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d30:	89 04 24             	mov    %eax,(%esp)
c0035d33:	e8 a8 fe ff ff       	call   c0035be0 <_Balloc>
c0035d38:	89 c3                	mov    %eax,%ebx
c0035d3a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d3d:	8b 40 10             	mov    0x10(%eax),%eax
c0035d40:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035d47:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035d4b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d4e:	83 c0 0c             	add    $0xc,%eax
c0035d51:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d55:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035d58:	89 04 24             	mov    %eax,(%esp)
c0035d5b:	e8 c4 c0 ff ff       	call   c0031e24 <memcpy>
c0035d60:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d63:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035d66:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035d69:	8b 50 04             	mov    0x4(%eax),%edx
c0035d6c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d6f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035d72:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035d75:	8b 10                	mov    (%eax),%edx
c0035d77:	89 17                	mov    %edx,(%edi)
c0035d79:	89 38                	mov    %edi,(%eax)
c0035d7b:	eb 86                	jmp    c0035d03 <__multadd+0x63>
c0035d7d:	8d 76 00             	lea    0x0(%esi),%esi

c0035d80 <__s2b>:
c0035d80:	55                   	push   %ebp
c0035d81:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035d86:	89 e5                	mov    %esp,%ebp
c0035d88:	57                   	push   %edi
c0035d89:	56                   	push   %esi
c0035d8a:	53                   	push   %ebx
c0035d8b:	83 ec 2c             	sub    $0x2c,%esp
c0035d8e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035d91:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035d94:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035d97:	8d 48 08             	lea    0x8(%eax),%ecx
c0035d9a:	89 c8                	mov    %ecx,%eax
c0035d9c:	f7 ea                	imul   %edx
c0035d9e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035da1:	d1 fa                	sar    %edx
c0035da3:	29 ca                	sub    %ecx,%edx
c0035da5:	83 fa 01             	cmp    $0x1,%edx
c0035da8:	0f 8e be 00 00 00    	jle    c0035e6c <__s2b+0xec>
c0035dae:	b8 01 00 00 00       	mov    $0x1,%eax
c0035db3:	31 c9                	xor    %ecx,%ecx
c0035db5:	8d 76 00             	lea    0x0(%esi),%esi
c0035db8:	01 c0                	add    %eax,%eax
c0035dba:	83 c1 01             	add    $0x1,%ecx
c0035dbd:	39 c2                	cmp    %eax,%edx
c0035dbf:	7f f7                	jg     c0035db8 <__s2b+0x38>
c0035dc1:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035dc5:	89 1c 24             	mov    %ebx,(%esp)
c0035dc8:	e8 13 fe ff ff       	call   c0035be0 <_Balloc>
c0035dcd:	8b 55 18             	mov    0x18(%ebp),%edx
c0035dd0:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035dd4:	89 50 14             	mov    %edx,0x14(%eax)
c0035dd7:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035dde:	0f 8e 7c 00 00 00    	jle    c0035e60 <__s2b+0xe0>
c0035de4:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035de7:	03 75 10             	add    0x10(%ebp),%esi
c0035dea:	89 cf                	mov    %ecx,%edi
c0035dec:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035def:	90                   	nop
c0035df0:	83 c7 01             	add    $0x1,%edi
c0035df3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035df7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dfe:	00 
c0035dff:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e03:	89 1c 24             	mov    %ebx,(%esp)
c0035e06:	83 ea 30             	sub    $0x30,%edx
c0035e09:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035e0d:	e8 8e fe ff ff       	call   c0035ca0 <__multadd>
c0035e12:	39 f7                	cmp    %esi,%edi
c0035e14:	75 da                	jne    c0035df0 <__s2b+0x70>
c0035e16:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035e19:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035e1c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035e20:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035e23:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035e26:	7e 2e                	jle    c0035e56 <__s2b+0xd6>
c0035e28:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035e2b:	29 cf                	sub    %ecx,%edi
c0035e2d:	01 f7                	add    %esi,%edi
c0035e2f:	90                   	nop
c0035e30:	83 c6 01             	add    $0x1,%esi
c0035e33:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035e37:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035e3e:	00 
c0035e3f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e43:	89 1c 24             	mov    %ebx,(%esp)
c0035e46:	83 ea 30             	sub    $0x30,%edx
c0035e49:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035e4d:	e8 4e fe ff ff       	call   c0035ca0 <__multadd>
c0035e52:	39 fe                	cmp    %edi,%esi
c0035e54:	75 da                	jne    c0035e30 <__s2b+0xb0>
c0035e56:	83 c4 2c             	add    $0x2c,%esp
c0035e59:	5b                   	pop    %ebx
c0035e5a:	5e                   	pop    %esi
c0035e5b:	5f                   	pop    %edi
c0035e5c:	5d                   	pop    %ebp
c0035e5d:	c3                   	ret    
c0035e5e:	66 90                	xchg   %ax,%ax
c0035e60:	83 c6 0a             	add    $0xa,%esi
c0035e63:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035e6a:	eb b4                	jmp    c0035e20 <__s2b+0xa0>
c0035e6c:	31 c9                	xor    %ecx,%ecx
c0035e6e:	e9 4e ff ff ff       	jmp    c0035dc1 <__s2b+0x41>
c0035e73:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035e79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035e80 <__hi0bits>:
c0035e80:	55                   	push   %ebp
c0035e81:	31 c9                	xor    %ecx,%ecx
c0035e83:	89 e5                	mov    %esp,%ebp
c0035e85:	8b 55 08             	mov    0x8(%ebp),%edx
c0035e88:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035e8e:	75 05                	jne    c0035e95 <__hi0bits+0x15>
c0035e90:	c1 e2 10             	shl    $0x10,%edx
c0035e93:	b1 10                	mov    $0x10,%cl
c0035e95:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035e9b:	75 06                	jne    c0035ea3 <__hi0bits+0x23>
c0035e9d:	83 c1 08             	add    $0x8,%ecx
c0035ea0:	c1 e2 08             	shl    $0x8,%edx
c0035ea3:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035ea9:	75 06                	jne    c0035eb1 <__hi0bits+0x31>
c0035eab:	83 c1 04             	add    $0x4,%ecx
c0035eae:	c1 e2 04             	shl    $0x4,%edx
c0035eb1:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035eb7:	75 06                	jne    c0035ebf <__hi0bits+0x3f>
c0035eb9:	83 c1 02             	add    $0x2,%ecx
c0035ebc:	c1 e2 02             	shl    $0x2,%edx
c0035ebf:	85 d2                	test   %edx,%edx
c0035ec1:	89 c8                	mov    %ecx,%eax
c0035ec3:	78 0d                	js     c0035ed2 <__hi0bits+0x52>
c0035ec5:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035ecb:	b8 20 00 00 00       	mov    $0x20,%eax
c0035ed0:	75 06                	jne    c0035ed8 <__hi0bits+0x58>
c0035ed2:	5d                   	pop    %ebp
c0035ed3:	c3                   	ret    
c0035ed4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035ed8:	8d 41 01             	lea    0x1(%ecx),%eax
c0035edb:	5d                   	pop    %ebp
c0035edc:	c3                   	ret    
c0035edd:	8d 76 00             	lea    0x0(%esi),%esi

c0035ee0 <__lo0bits>:
c0035ee0:	55                   	push   %ebp
c0035ee1:	89 e5                	mov    %esp,%ebp
c0035ee3:	53                   	push   %ebx
c0035ee4:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035ee7:	8b 13                	mov    (%ebx),%edx
c0035ee9:	f6 c2 07             	test   $0x7,%dl
c0035eec:	74 1a                	je     c0035f08 <__lo0bits+0x28>
c0035eee:	31 c0                	xor    %eax,%eax
c0035ef0:	f6 c2 01             	test   $0x1,%dl
c0035ef3:	75 0f                	jne    c0035f04 <__lo0bits+0x24>
c0035ef5:	f6 c2 02             	test   $0x2,%dl
c0035ef8:	75 56                	jne    c0035f50 <__lo0bits+0x70>
c0035efa:	c1 ea 02             	shr    $0x2,%edx
c0035efd:	b8 02 00 00 00       	mov    $0x2,%eax
c0035f02:	89 13                	mov    %edx,(%ebx)
c0035f04:	5b                   	pop    %ebx
c0035f05:	5d                   	pop    %ebp
c0035f06:	c3                   	ret    
c0035f07:	90                   	nop
c0035f08:	31 c9                	xor    %ecx,%ecx
c0035f0a:	66 85 d2             	test   %dx,%dx
c0035f0d:	75 05                	jne    c0035f14 <__lo0bits+0x34>
c0035f0f:	c1 ea 10             	shr    $0x10,%edx
c0035f12:	b1 10                	mov    $0x10,%cl
c0035f14:	84 d2                	test   %dl,%dl
c0035f16:	75 06                	jne    c0035f1e <__lo0bits+0x3e>
c0035f18:	83 c1 08             	add    $0x8,%ecx
c0035f1b:	c1 ea 08             	shr    $0x8,%edx
c0035f1e:	f6 c2 0f             	test   $0xf,%dl
c0035f21:	75 06                	jne    c0035f29 <__lo0bits+0x49>
c0035f23:	83 c1 04             	add    $0x4,%ecx
c0035f26:	c1 ea 04             	shr    $0x4,%edx
c0035f29:	f6 c2 03             	test   $0x3,%dl
c0035f2c:	75 06                	jne    c0035f34 <__lo0bits+0x54>
c0035f2e:	83 c1 02             	add    $0x2,%ecx
c0035f31:	c1 ea 02             	shr    $0x2,%edx
c0035f34:	f6 c2 01             	test   $0x1,%dl
c0035f37:	75 0c                	jne    c0035f45 <__lo0bits+0x65>
c0035f39:	d1 ea                	shr    %edx
c0035f3b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035f40:	74 c2                	je     c0035f04 <__lo0bits+0x24>
c0035f42:	83 c1 01             	add    $0x1,%ecx
c0035f45:	89 13                	mov    %edx,(%ebx)
c0035f47:	89 c8                	mov    %ecx,%eax
c0035f49:	5b                   	pop    %ebx
c0035f4a:	5d                   	pop    %ebp
c0035f4b:	c3                   	ret    
c0035f4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f50:	d1 ea                	shr    %edx
c0035f52:	b0 01                	mov    $0x1,%al
c0035f54:	89 13                	mov    %edx,(%ebx)
c0035f56:	5b                   	pop    %ebx
c0035f57:	5d                   	pop    %ebp
c0035f58:	c3                   	ret    
c0035f59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f60 <__i2b>:
c0035f60:	55                   	push   %ebp
c0035f61:	89 e5                	mov    %esp,%ebp
c0035f63:	83 ec 18             	sub    $0x18,%esp
c0035f66:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f69:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035f70:	00 
c0035f71:	89 04 24             	mov    %eax,(%esp)
c0035f74:	e8 67 fc ff ff       	call   c0035be0 <_Balloc>
c0035f79:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035f7c:	89 50 14             	mov    %edx,0x14(%eax)
c0035f7f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035f86:	c9                   	leave  
c0035f87:	c3                   	ret    
c0035f88:	90                   	nop
c0035f89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f90 <__multiply>:
c0035f90:	55                   	push   %ebp
c0035f91:	89 e5                	mov    %esp,%ebp
c0035f93:	57                   	push   %edi
c0035f94:	56                   	push   %esi
c0035f95:	53                   	push   %ebx
c0035f96:	83 ec 3c             	sub    $0x3c,%esp
c0035f99:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035f9c:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f9f:	8b 7e 10             	mov    0x10(%esi),%edi
c0035fa2:	8b 58 10             	mov    0x10(%eax),%ebx
c0035fa5:	39 df                	cmp    %ebx,%edi
c0035fa7:	7d 0e                	jge    c0035fb7 <__multiply+0x27>
c0035fa9:	89 f8                	mov    %edi,%eax
c0035fab:	89 df                	mov    %ebx,%edi
c0035fad:	89 c3                	mov    %eax,%ebx
c0035faf:	89 f0                	mov    %esi,%eax
c0035fb1:	8b 75 10             	mov    0x10(%ebp),%esi
c0035fb4:	89 45 10             	mov    %eax,0x10(%ebp)
c0035fb7:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035fba:	3b 46 08             	cmp    0x8(%esi),%eax
c0035fbd:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0035fc0:	0f 9f c0             	setg   %al
c0035fc3:	0f b6 c0             	movzbl %al,%eax
c0035fc6:	03 46 04             	add    0x4(%esi),%eax
c0035fc9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035fcd:	8b 45 08             	mov    0x8(%ebp),%eax
c0035fd0:	89 04 24             	mov    %eax,(%esp)
c0035fd3:	e8 08 fc ff ff       	call   c0035be0 <_Balloc>
c0035fd8:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035fdb:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035fde:	8d 40 14             	lea    0x14(%eax),%eax
c0035fe1:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0035fe4:	89 d1                	mov    %edx,%ecx
c0035fe6:	39 c8                	cmp    %ecx,%eax
c0035fe8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035feb:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c0035fee:	73 15                	jae    c0036005 <__multiply+0x75>
c0035ff0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0035ff3:	90                   	nop
c0035ff4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035ff8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0035ffe:	83 c0 04             	add    $0x4,%eax
c0036001:	39 c2                	cmp    %eax,%edx
c0036003:	77 f3                	ja     c0035ff8 <__multiply+0x68>
c0036005:	8d 46 14             	lea    0x14(%esi),%eax
c0036008:	89 45 d0             	mov    %eax,-0x30(%ebp)
c003600b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c003600e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036011:	8b 45 10             	mov    0x10(%ebp),%eax
c0036014:	83 c0 14             	add    $0x14,%eax
c0036017:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c003601a:	39 f8                	cmp    %edi,%eax
c003601c:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003601f:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0036022:	0f 83 e8 00 00 00    	jae    c0036110 <__multiply+0x180>
c0036028:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003602b:	8b 00                	mov    (%eax),%eax
c003602d:	0f b7 f8             	movzwl %ax,%edi
c0036030:	85 ff                	test   %edi,%edi
c0036032:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036035:	74 5a                	je     c0036091 <__multiply+0x101>
c0036037:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003603a:	31 db                	xor    %ebx,%ebx
c003603c:	8b 75 d0             	mov    -0x30(%ebp),%esi
c003603f:	eb 09                	jmp    c003604a <__multiply+0xba>
c0036041:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036048:	89 fa                	mov    %edi,%edx
c003604a:	8b 0e                	mov    (%esi),%ecx
c003604c:	83 c6 04             	add    $0x4,%esi
c003604f:	0f b7 3a             	movzwl (%edx),%edi
c0036052:	0f b7 c1             	movzwl %cx,%eax
c0036055:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0036059:	c1 e9 10             	shr    $0x10,%ecx
c003605c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036060:	01 f8                	add    %edi,%eax
c0036062:	01 d8                	add    %ebx,%eax
c0036064:	8b 1a                	mov    (%edx),%ebx
c0036066:	8d 7a 04             	lea    0x4(%edx),%edi
c0036069:	c1 eb 10             	shr    $0x10,%ebx
c003606c:	01 d9                	add    %ebx,%ecx
c003606e:	89 c3                	mov    %eax,%ebx
c0036070:	c1 eb 10             	shr    $0x10,%ebx
c0036073:	0f b7 c0             	movzwl %ax,%eax
c0036076:	01 d9                	add    %ebx,%ecx
c0036078:	89 cb                	mov    %ecx,%ebx
c003607a:	c1 e1 10             	shl    $0x10,%ecx
c003607d:	09 c1                	or     %eax,%ecx
c003607f:	c1 eb 10             	shr    $0x10,%ebx
c0036082:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036085:	89 0a                	mov    %ecx,(%edx)
c0036087:	77 bf                	ja     c0036048 <__multiply+0xb8>
c0036089:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003608c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003608f:	8b 00                	mov    (%eax),%eax
c0036091:	c1 e8 10             	shr    $0x10,%eax
c0036094:	85 c0                	test   %eax,%eax
c0036096:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036099:	74 61                	je     c00360fc <__multiply+0x16c>
c003609b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003609e:	31 ff                	xor    %edi,%edi
c00360a0:	89 fe                	mov    %edi,%esi
c00360a2:	8b 10                	mov    (%eax),%edx
c00360a4:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00360a7:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00360aa:	89 d3                	mov    %edx,%ebx
c00360ac:	eb 05                	jmp    c00360b3 <__multiply+0x123>
c00360ae:	66 90                	xchg   %ax,%ax
c00360b0:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00360b3:	0f b7 08             	movzwl (%eax),%ecx
c00360b6:	c1 eb 10             	shr    $0x10,%ebx
c00360b9:	0f b7 d2             	movzwl %dx,%edx
c00360bc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c00360c0:	83 c0 04             	add    $0x4,%eax
c00360c3:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c00360c6:	01 f7                	add    %esi,%edi
c00360c8:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00360cb:	89 fb                	mov    %edi,%ebx
c00360cd:	c1 e3 10             	shl    $0x10,%ebx
c00360d0:	09 d3                	or     %edx,%ebx
c00360d2:	89 1e                	mov    %ebx,(%esi)
c00360d4:	8b 5e 04             	mov    0x4(%esi),%ebx
c00360d7:	8d 4e 04             	lea    0x4(%esi),%ecx
c00360da:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c00360de:	c1 ef 10             	shr    $0x10,%edi
c00360e1:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c00360e5:	0f b7 f3             	movzwl %bx,%esi
c00360e8:	01 f2                	add    %esi,%edx
c00360ea:	01 fa                	add    %edi,%edx
c00360ec:	89 d6                	mov    %edx,%esi
c00360ee:	c1 ee 10             	shr    $0x10,%esi
c00360f1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c00360f4:	77 ba                	ja     c00360b0 <__multiply+0x120>
c00360f6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00360f9:	89 50 04             	mov    %edx,0x4(%eax)
c00360fc:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0036100:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036103:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0036107:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c003610a:	0f 87 18 ff ff ff    	ja     c0036028 <__multiply+0x98>
c0036110:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0036113:	85 f6                	test   %esi,%esi
c0036115:	7e 29                	jle    c0036140 <__multiply+0x1b0>
c0036117:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c003611a:	8b 5f fc             	mov    -0x4(%edi),%ebx
c003611d:	85 db                	test   %ebx,%ebx
c003611f:	75 1f                	jne    c0036140 <__multiply+0x1b0>
c0036121:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0036124:	89 d0                	mov    %edx,%eax
c0036126:	c1 e0 02             	shl    $0x2,%eax
c0036129:	29 c7                	sub    %eax,%edi
c003612b:	89 f8                	mov    %edi,%eax
c003612d:	eb 09                	jmp    c0036138 <__multiply+0x1a8>
c003612f:	90                   	nop
c0036130:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0036134:	85 c9                	test   %ecx,%ecx
c0036136:	75 05                	jne    c003613d <__multiply+0x1ad>
c0036138:	83 ea 01             	sub    $0x1,%edx
c003613b:	75 f3                	jne    c0036130 <__multiply+0x1a0>
c003613d:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0036140:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0036143:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0036146:	89 78 10             	mov    %edi,0x10(%eax)
c0036149:	83 c4 3c             	add    $0x3c,%esp
c003614c:	5b                   	pop    %ebx
c003614d:	5e                   	pop    %esi
c003614e:	5f                   	pop    %edi
c003614f:	5d                   	pop    %ebp
c0036150:	c3                   	ret    
c0036151:	eb 0d                	jmp    c0036160 <__pow5mult>
c0036153:	90                   	nop
c0036154:	90                   	nop
c0036155:	90                   	nop
c0036156:	90                   	nop
c0036157:	90                   	nop
c0036158:	90                   	nop
c0036159:	90                   	nop
c003615a:	90                   	nop
c003615b:	90                   	nop
c003615c:	90                   	nop
c003615d:	90                   	nop
c003615e:	90                   	nop
c003615f:	90                   	nop

c0036160 <__pow5mult>:
c0036160:	55                   	push   %ebp
c0036161:	89 e5                	mov    %esp,%ebp
c0036163:	57                   	push   %edi
c0036164:	56                   	push   %esi
c0036165:	53                   	push   %ebx
c0036166:	83 ec 2c             	sub    $0x2c,%esp
c0036169:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003616c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003616f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036172:	89 d8                	mov    %ebx,%eax
c0036174:	83 e0 03             	and    $0x3,%eax
c0036177:	0f 85 a3 00 00 00    	jne    c0036220 <__pow5mult+0xc0>
c003617d:	c1 fb 02             	sar    $0x2,%ebx
c0036180:	85 db                	test   %ebx,%ebx
c0036182:	74 5c                	je     c00361e0 <__pow5mult+0x80>
c0036184:	8b 71 48             	mov    0x48(%ecx),%esi
c0036187:	85 f6                	test   %esi,%esi
c0036189:	0f 84 bd 00 00 00    	je     c003624c <__pow5mult+0xec>
c003618f:	f6 c3 01             	test   $0x1,%bl
c0036192:	75 15                	jne    c00361a9 <__pow5mult+0x49>
c0036194:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036198:	d1 fb                	sar    %ebx
c003619a:	74 44                	je     c00361e0 <__pow5mult+0x80>
c003619c:	8b 06                	mov    (%esi),%eax
c003619e:	85 c0                	test   %eax,%eax
c00361a0:	74 4e                	je     c00361f0 <__pow5mult+0x90>
c00361a2:	89 c6                	mov    %eax,%esi
c00361a4:	f6 c3 01             	test   $0x1,%bl
c00361a7:	74 ef                	je     c0036198 <__pow5mult+0x38>
c00361a9:	89 0c 24             	mov    %ecx,(%esp)
c00361ac:	89 74 24 08          	mov    %esi,0x8(%esp)
c00361b0:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00361b4:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361b7:	e8 d4 fd ff ff       	call   c0035f90 <__multiply>
c00361bc:	85 ff                	test   %edi,%edi
c00361be:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361c1:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00361c4:	74 52                	je     c0036218 <__pow5mult+0xb8>
c00361c6:	8b 57 04             	mov    0x4(%edi),%edx
c00361c9:	d1 fb                	sar    %ebx
c00361cb:	8b 41 4c             	mov    0x4c(%ecx),%eax
c00361ce:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00361d1:	8b 10                	mov    (%eax),%edx
c00361d3:	89 17                	mov    %edx,(%edi)
c00361d5:	89 38                	mov    %edi,(%eax)
c00361d7:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00361da:	75 c0                	jne    c003619c <__pow5mult+0x3c>
c00361dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00361e0:	83 c4 2c             	add    $0x2c,%esp
c00361e3:	89 f8                	mov    %edi,%eax
c00361e5:	5b                   	pop    %ebx
c00361e6:	5e                   	pop    %esi
c00361e7:	5f                   	pop    %edi
c00361e8:	5d                   	pop    %ebp
c00361e9:	c3                   	ret    
c00361ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361f0:	89 74 24 08          	mov    %esi,0x8(%esp)
c00361f4:	89 74 24 04          	mov    %esi,0x4(%esp)
c00361f8:	89 0c 24             	mov    %ecx,(%esp)
c00361fb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361fe:	e8 8d fd ff ff       	call   c0035f90 <__multiply>
c0036203:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036206:	89 06                	mov    %eax,(%esi)
c0036208:	89 c6                	mov    %eax,%esi
c003620a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0036210:	eb 92                	jmp    c00361a4 <__pow5mult+0x44>
c0036212:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036218:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003621b:	e9 78 ff ff ff       	jmp    c0036198 <__pow5mult+0x38>
c0036220:	8b 04 85 1c 9a 03 c0 	mov    -0x3ffc65e4(,%eax,4),%eax
c0036227:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003622b:	89 0c 24             	mov    %ecx,(%esp)
c003622e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0036235:	00 
c0036236:	89 44 24 08          	mov    %eax,0x8(%esp)
c003623a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003623d:	e8 5e fa ff ff       	call   c0035ca0 <__multadd>
c0036242:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036245:	89 c7                	mov    %eax,%edi
c0036247:	e9 31 ff ff ff       	jmp    c003617d <__pow5mult+0x1d>
c003624c:	89 0c 24             	mov    %ecx,(%esp)
c003624f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036256:	00 
c0036257:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003625a:	e8 81 f9 ff ff       	call   c0035be0 <_Balloc>
c003625f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036262:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0036269:	89 c6                	mov    %eax,%esi
c003626b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036272:	89 41 48             	mov    %eax,0x48(%ecx)
c0036275:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003627b:	e9 0f ff ff ff       	jmp    c003618f <__pow5mult+0x2f>

c0036280 <__lshift>:
c0036280:	55                   	push   %ebp
c0036281:	89 e5                	mov    %esp,%ebp
c0036283:	57                   	push   %edi
c0036284:	56                   	push   %esi
c0036285:	53                   	push   %ebx
c0036286:	83 ec 2c             	sub    $0x2c,%esp
c0036289:	8b 45 0c             	mov    0xc(%ebp),%eax
c003628c:	8b 75 10             	mov    0x10(%ebp),%esi
c003628f:	89 c7                	mov    %eax,%edi
c0036291:	8b 50 04             	mov    0x4(%eax),%edx
c0036294:	8b 40 10             	mov    0x10(%eax),%eax
c0036297:	89 f3                	mov    %esi,%ebx
c0036299:	c1 fb 05             	sar    $0x5,%ebx
c003629c:	01 d8                	add    %ebx,%eax
c003629e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c00362a1:	83 c0 01             	add    $0x1,%eax
c00362a4:	89 c1                	mov    %eax,%ecx
c00362a6:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00362a9:	8b 47 08             	mov    0x8(%edi),%eax
c00362ac:	39 c1                	cmp    %eax,%ecx
c00362ae:	7e 09                	jle    c00362b9 <__lshift+0x39>
c00362b0:	01 c0                	add    %eax,%eax
c00362b2:	83 c2 01             	add    $0x1,%edx
c00362b5:	39 c1                	cmp    %eax,%ecx
c00362b7:	7f f7                	jg     c00362b0 <__lshift+0x30>
c00362b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00362bc:	89 54 24 04          	mov    %edx,0x4(%esp)
c00362c0:	89 04 24             	mov    %eax,(%esp)
c00362c3:	e8 18 f9 ff ff       	call   c0035be0 <_Balloc>
c00362c8:	85 db                	test   %ebx,%ebx
c00362ca:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00362cd:	8d 50 14             	lea    0x14(%eax),%edx
c00362d0:	7e 17                	jle    c00362e9 <__lshift+0x69>
c00362d2:	31 c0                	xor    %eax,%eax
c00362d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00362d8:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c00362df:	83 c0 01             	add    $0x1,%eax
c00362e2:	39 d8                	cmp    %ebx,%eax
c00362e4:	75 f2                	jne    c00362d8 <__lshift+0x58>
c00362e6:	8d 14 82             	lea    (%edx,%eax,4),%edx
c00362e9:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00362ec:	8b 45 0c             	mov    0xc(%ebp),%eax
c00362ef:	8b 4f 10             	mov    0x10(%edi),%ecx
c00362f2:	83 c0 14             	add    $0x14,%eax
c00362f5:	83 e6 1f             	and    $0x1f,%esi
c00362f8:	89 75 e0             	mov    %esi,-0x20(%ebp)
c00362fb:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c00362fe:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036301:	74 7d                	je     c0036380 <__lshift+0x100>
c0036303:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c003630a:	29 75 dc             	sub    %esi,-0x24(%ebp)
c003630d:	31 f6                	xor    %esi,%esi
c003630f:	eb 09                	jmp    c003631a <__lshift+0x9a>
c0036311:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036318:	89 fa                	mov    %edi,%edx
c003631a:	8b 18                	mov    (%eax),%ebx
c003631c:	83 c0 04             	add    $0x4,%eax
c003631f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036323:	8d 7a 04             	lea    0x4(%edx),%edi
c0036326:	d3 e3                	shl    %cl,%ebx
c0036328:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c003632c:	09 f3                	or     %esi,%ebx
c003632e:	89 1a                	mov    %ebx,(%edx)
c0036330:	8b 70 fc             	mov    -0x4(%eax),%esi
c0036333:	d3 ee                	shr    %cl,%esi
c0036335:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036338:	77 de                	ja     c0036318 <__lshift+0x98>
c003633a:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003633d:	89 72 04             	mov    %esi,0x4(%edx)
c0036340:	83 c0 02             	add    $0x2,%eax
c0036343:	85 f6                	test   %esi,%esi
c0036345:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0036349:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003634c:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003634f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0036352:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036355:	83 e8 01             	sub    $0x1,%eax
c0036358:	89 47 10             	mov    %eax,0x10(%edi)
c003635b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003635e:	8b 50 04             	mov    0x4(%eax),%edx
c0036361:	8b 45 08             	mov    0x8(%ebp),%eax
c0036364:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036367:	8d 04 90             	lea    (%eax,%edx,4),%eax
c003636a:	8b 10                	mov    (%eax),%edx
c003636c:	89 16                	mov    %edx,(%esi)
c003636e:	89 30                	mov    %esi,(%eax)
c0036370:	83 c4 2c             	add    $0x2c,%esp
c0036373:	89 f8                	mov    %edi,%eax
c0036375:	5b                   	pop    %ebx
c0036376:	5e                   	pop    %esi
c0036377:	5f                   	pop    %edi
c0036378:	5d                   	pop    %ebp
c0036379:	c3                   	ret    
c003637a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036380:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036383:	90                   	nop
c0036384:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036388:	83 c0 04             	add    $0x4,%eax
c003638b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003638e:	83 c2 04             	add    $0x4,%edx
c0036391:	39 c3                	cmp    %eax,%ebx
c0036393:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036396:	77 f0                	ja     c0036388 <__lshift+0x108>
c0036398:	eb b2                	jmp    c003634c <__lshift+0xcc>
c003639a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00363a0 <__mcmp>:
c00363a0:	55                   	push   %ebp
c00363a1:	89 e5                	mov    %esp,%ebp
c00363a3:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00363a6:	8b 55 0c             	mov    0xc(%ebp),%edx
c00363a9:	53                   	push   %ebx
c00363aa:	8b 41 10             	mov    0x10(%ecx),%eax
c00363ad:	8b 5a 10             	mov    0x10(%edx),%ebx
c00363b0:	29 d8                	sub    %ebx,%eax
c00363b2:	85 c0                	test   %eax,%eax
c00363b4:	75 27                	jne    c00363dd <__mcmp+0x3d>
c00363b6:	c1 e3 02             	shl    $0x2,%ebx
c00363b9:	83 c1 14             	add    $0x14,%ecx
c00363bc:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c00363bf:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c00363c3:	eb 07                	jmp    c00363cc <__mcmp+0x2c>
c00363c5:	8d 76 00             	lea    0x0(%esi),%esi
c00363c8:	39 c1                	cmp    %eax,%ecx
c00363ca:	73 14                	jae    c00363e0 <__mcmp+0x40>
c00363cc:	83 ea 04             	sub    $0x4,%edx
c00363cf:	83 e8 04             	sub    $0x4,%eax
c00363d2:	8b 1a                	mov    (%edx),%ebx
c00363d4:	39 18                	cmp    %ebx,(%eax)
c00363d6:	74 f0                	je     c00363c8 <__mcmp+0x28>
c00363d8:	19 c0                	sbb    %eax,%eax
c00363da:	83 c8 01             	or     $0x1,%eax
c00363dd:	5b                   	pop    %ebx
c00363de:	5d                   	pop    %ebp
c00363df:	c3                   	ret    
c00363e0:	31 c0                	xor    %eax,%eax
c00363e2:	5b                   	pop    %ebx
c00363e3:	5d                   	pop    %ebp
c00363e4:	c3                   	ret    
c00363e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00363e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00363f0 <__mdiff>:
c00363f0:	55                   	push   %ebp
c00363f1:	89 e5                	mov    %esp,%ebp
c00363f3:	57                   	push   %edi
c00363f4:	56                   	push   %esi
c00363f5:	53                   	push   %ebx
c00363f6:	83 ec 2c             	sub    $0x2c,%esp
c00363f9:	8b 75 0c             	mov    0xc(%ebp),%esi
c00363fc:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00363ff:	89 34 24             	mov    %esi,(%esp)
c0036402:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0036406:	e8 95 ff ff ff       	call   c00363a0 <__mcmp>
c003640b:	85 c0                	test   %eax,%eax
c003640d:	0f 84 25 01 00 00    	je     c0036538 <__mdiff+0x148>
c0036413:	0f 88 0f 01 00 00    	js     c0036528 <__mdiff+0x138>
c0036419:	31 ff                	xor    %edi,%edi
c003641b:	8b 46 04             	mov    0x4(%esi),%eax
c003641e:	83 c6 14             	add    $0x14,%esi
c0036421:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036425:	8b 45 08             	mov    0x8(%ebp),%eax
c0036428:	89 04 24             	mov    %eax,(%esp)
c003642b:	e8 b0 f7 ff ff       	call   c0035be0 <_Balloc>
c0036430:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0036433:	89 c2                	mov    %eax,%edx
c0036435:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0036438:	89 78 0c             	mov    %edi,0xc(%eax)
c003643b:	8b 46 fc             	mov    -0x4(%esi),%eax
c003643e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0036441:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036444:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0036447:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003644a:	8b 43 10             	mov    0x10(%ebx),%eax
c003644d:	31 db                	xor    %ebx,%ebx
c003644f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0036452:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036455:	89 d0                	mov    %edx,%eax
c0036457:	83 c0 14             	add    $0x14,%eax
c003645a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036460:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036463:	83 c0 04             	add    $0x4,%eax
c0036466:	83 c1 04             	add    $0x4,%ecx
c0036469:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c003646d:	8b 3e                	mov    (%esi),%edi
c003646f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036472:	0f b7 d7             	movzwl %di,%edx
c0036475:	01 da                	add    %ebx,%edx
c0036477:	0f b7 de             	movzwl %si,%ebx
c003647a:	29 da                	sub    %ebx,%edx
c003647c:	c1 ef 10             	shr    $0x10,%edi
c003647f:	89 d3                	mov    %edx,%ebx
c0036481:	c1 ee 10             	shr    $0x10,%esi
c0036484:	0f b7 d2             	movzwl %dx,%edx
c0036487:	c1 fb 10             	sar    $0x10,%ebx
c003648a:	29 f7                	sub    %esi,%edi
c003648c:	01 df                	add    %ebx,%edi
c003648e:	89 fb                	mov    %edi,%ebx
c0036490:	c1 e7 10             	shl    $0x10,%edi
c0036493:	09 d7                	or     %edx,%edi
c0036495:	c1 fb 10             	sar    $0x10,%ebx
c0036498:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003649b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003649e:	77 c0                	ja     c0036460 <__mdiff+0x70>
c00364a0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00364a3:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00364a6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00364a9:	89 75 e0             	mov    %esi,-0x20(%ebp)
c00364ac:	39 f1                	cmp    %esi,%ecx
c00364ae:	76 3f                	jbe    c00364ef <__mdiff+0xff>
c00364b0:	8b 3e                	mov    (%esi),%edi
c00364b2:	83 c6 04             	add    $0x4,%esi
c00364b5:	83 c0 04             	add    $0x4,%eax
c00364b8:	0f b7 d7             	movzwl %di,%edx
c00364bb:	01 da                	add    %ebx,%edx
c00364bd:	89 d3                	mov    %edx,%ebx
c00364bf:	0f b7 d2             	movzwl %dx,%edx
c00364c2:	c1 fb 10             	sar    $0x10,%ebx
c00364c5:	c1 ef 10             	shr    $0x10,%edi
c00364c8:	01 df                	add    %ebx,%edi
c00364ca:	89 fb                	mov    %edi,%ebx
c00364cc:	c1 e7 10             	shl    $0x10,%edi
c00364cf:	09 d7                	or     %edx,%edi
c00364d1:	c1 fb 10             	sar    $0x10,%ebx
c00364d4:	39 f1                	cmp    %esi,%ecx
c00364d6:	89 78 fc             	mov    %edi,-0x4(%eax)
c00364d9:	77 d5                	ja     c00364b0 <__mdiff+0xc0>
c00364db:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00364de:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00364e1:	f7 d0                	not    %eax
c00364e3:	01 c8                	add    %ecx,%eax
c00364e5:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00364e8:	c1 e8 02             	shr    $0x2,%eax
c00364eb:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c00364ef:	85 ff                	test   %edi,%edi
c00364f1:	75 23                	jne    c0036516 <__mdiff+0x126>
c00364f3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364f6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c00364fd:	29 d0                	sub    %edx,%eax
c00364ff:	89 ca                	mov    %ecx,%edx
c0036501:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036508:	83 ea 01             	sub    $0x1,%edx
c003650b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c003650f:	85 c9                	test   %ecx,%ecx
c0036511:	74 f5                	je     c0036508 <__mdiff+0x118>
c0036513:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036516:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0036519:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c003651c:	89 48 10             	mov    %ecx,0x10(%eax)
c003651f:	83 c4 2c             	add    $0x2c,%esp
c0036522:	5b                   	pop    %ebx
c0036523:	5e                   	pop    %esi
c0036524:	5f                   	pop    %edi
c0036525:	5d                   	pop    %ebp
c0036526:	c3                   	ret    
c0036527:	90                   	nop
c0036528:	89 f0                	mov    %esi,%eax
c003652a:	bf 01 00 00 00       	mov    $0x1,%edi
c003652f:	89 de                	mov    %ebx,%esi
c0036531:	89 c3                	mov    %eax,%ebx
c0036533:	e9 e3 fe ff ff       	jmp    c003641b <__mdiff+0x2b>
c0036538:	8b 45 08             	mov    0x8(%ebp),%eax
c003653b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0036542:	00 
c0036543:	89 04 24             	mov    %eax,(%esp)
c0036546:	e8 95 f6 ff ff       	call   c0035be0 <_Balloc>
c003654b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036552:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0036559:	83 c4 2c             	add    $0x2c,%esp
c003655c:	5b                   	pop    %ebx
c003655d:	5e                   	pop    %esi
c003655e:	5f                   	pop    %edi
c003655f:	5d                   	pop    %ebp
c0036560:	c3                   	ret    
c0036561:	eb 0d                	jmp    c0036570 <__ulp>
c0036563:	90                   	nop
c0036564:	90                   	nop
c0036565:	90                   	nop
c0036566:	90                   	nop
c0036567:	90                   	nop
c0036568:	90                   	nop
c0036569:	90                   	nop
c003656a:	90                   	nop
c003656b:	90                   	nop
c003656c:	90                   	nop
c003656d:	90                   	nop
c003656e:	90                   	nop
c003656f:	90                   	nop

c0036570 <__ulp>:
c0036570:	55                   	push   %ebp
c0036571:	89 e5                	mov    %esp,%ebp
c0036573:	83 ec 08             	sub    $0x8,%esp
c0036576:	dd 45 08             	fldl   0x8(%ebp)
c0036579:	dd 5d f8             	fstpl  -0x8(%ebp)
c003657c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003657f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036585:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003658b:	85 c9                	test   %ecx,%ecx
c003658d:	7e 11                	jle    c00365a0 <__ulp+0x30>
c003658f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036592:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036599:	dd 45 f8             	fldl   -0x8(%ebp)
c003659c:	c9                   	leave  
c003659d:	c3                   	ret    
c003659e:	66 90                	xchg   %ax,%ax
c00365a0:	f7 d9                	neg    %ecx
c00365a2:	c1 f9 14             	sar    $0x14,%ecx
c00365a5:	83 f9 13             	cmp    $0x13,%ecx
c00365a8:	7e 26                	jle    c00365d0 <__ulp+0x60>
c00365aa:	83 f9 32             	cmp    $0x32,%ecx
c00365ad:	b8 01 00 00 00       	mov    $0x1,%eax
c00365b2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00365b9:	7f 0b                	jg     c00365c6 <__ulp+0x56>
c00365bb:	ba 33 00 00 00       	mov    $0x33,%edx
c00365c0:	29 ca                	sub    %ecx,%edx
c00365c2:	89 d1                	mov    %edx,%ecx
c00365c4:	d3 e0                	shl    %cl,%eax
c00365c6:	89 45 f8             	mov    %eax,-0x8(%ebp)
c00365c9:	dd 45 f8             	fldl   -0x8(%ebp)
c00365cc:	c9                   	leave  
c00365cd:	c3                   	ret    
c00365ce:	66 90                	xchg   %ax,%ax
c00365d0:	b8 00 00 08 00       	mov    $0x80000,%eax
c00365d5:	d3 f8                	sar    %cl,%eax
c00365d7:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00365da:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00365e1:	dd 45 f8             	fldl   -0x8(%ebp)
c00365e4:	c9                   	leave  
c00365e5:	c3                   	ret    
c00365e6:	8d 76 00             	lea    0x0(%esi),%esi
c00365e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00365f0 <__b2d>:
c00365f0:	55                   	push   %ebp
c00365f1:	89 e5                	mov    %esp,%ebp
c00365f3:	57                   	push   %edi
c00365f4:	56                   	push   %esi
c00365f5:	53                   	push   %ebx
c00365f6:	83 ec 18             	sub    $0x18,%esp
c00365f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00365fc:	8d 78 14             	lea    0x14(%eax),%edi
c00365ff:	8b 40 10             	mov    0x10(%eax),%eax
c0036602:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0036605:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0036608:	8d 43 fc             	lea    -0x4(%ebx),%eax
c003660b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003660e:	89 34 24             	mov    %esi,(%esp)
c0036611:	e8 6a f8 ff ff       	call   c0035e80 <__hi0bits>
c0036616:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036619:	ba 20 00 00 00       	mov    $0x20,%edx
c003661e:	29 c2                	sub    %eax,%edx
c0036620:	83 f8 0a             	cmp    $0xa,%eax
c0036623:	89 11                	mov    %edx,(%ecx)
c0036625:	7f 41                	jg     c0036668 <__b2d+0x78>
c0036627:	b9 0b 00 00 00       	mov    $0xb,%ecx
c003662c:	89 f2                	mov    %esi,%edx
c003662e:	29 c1                	sub    %eax,%ecx
c0036630:	d3 ea                	shr    %cl,%edx
c0036632:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0036638:	89 55 ec             	mov    %edx,-0x14(%ebp)
c003663b:	31 d2                	xor    %edx,%edx
c003663d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036640:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036647:	73 05                	jae    c003664e <__b2d+0x5e>
c0036649:	8b 53 f8             	mov    -0x8(%ebx),%edx
c003664c:	d3 ea                	shr    %cl,%edx
c003664e:	8d 48 15             	lea    0x15(%eax),%ecx
c0036651:	d3 e6                	shl    %cl,%esi
c0036653:	09 f2                	or     %esi,%edx
c0036655:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036658:	dd 45 e8             	fldl   -0x18(%ebp)
c003665b:	83 c4 18             	add    $0x18,%esp
c003665e:	5b                   	pop    %ebx
c003665f:	5e                   	pop    %esi
c0036660:	5f                   	pop    %edi
c0036661:	5d                   	pop    %ebp
c0036662:	c3                   	ret    
c0036663:	90                   	nop
c0036664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036668:	31 d2                	xor    %edx,%edx
c003666a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c003666d:	73 09                	jae    c0036678 <__b2d+0x88>
c003666f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036672:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036675:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036678:	89 c3                	mov    %eax,%ebx
c003667a:	83 eb 0b             	sub    $0xb,%ebx
c003667d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036680:	74 4e                	je     c00366d0 <__b2d+0xe0>
c0036682:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036686:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003668b:	29 c3                	sub    %eax,%ebx
c003668d:	89 d0                	mov    %edx,%eax
c003668f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036696:	d3 e6                	shl    %cl,%esi
c0036698:	89 d9                	mov    %ebx,%ecx
c003669a:	d3 e8                	shr    %cl,%eax
c003669c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003669f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c00366a5:	09 c6                	or     %eax,%esi
c00366a7:	31 c0                	xor    %eax,%eax
c00366a9:	89 75 ec             	mov    %esi,-0x14(%ebp)
c00366ac:	39 f9                	cmp    %edi,%ecx
c00366ae:	76 07                	jbe    c00366b7 <__b2d+0xc7>
c00366b0:	8b 41 fc             	mov    -0x4(%ecx),%eax
c00366b3:	89 d9                	mov    %ebx,%ecx
c00366b5:	d3 e8                	shr    %cl,%eax
c00366b7:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00366bb:	d3 e2                	shl    %cl,%edx
c00366bd:	09 d0                	or     %edx,%eax
c00366bf:	89 45 e8             	mov    %eax,-0x18(%ebp)
c00366c2:	dd 45 e8             	fldl   -0x18(%ebp)
c00366c5:	83 c4 18             	add    $0x18,%esp
c00366c8:	5b                   	pop    %ebx
c00366c9:	5e                   	pop    %esi
c00366ca:	5f                   	pop    %edi
c00366cb:	5d                   	pop    %ebp
c00366cc:	c3                   	ret    
c00366cd:	8d 76 00             	lea    0x0(%esi),%esi
c00366d0:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c00366d6:	89 75 ec             	mov    %esi,-0x14(%ebp)
c00366d9:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00366dc:	dd 45 e8             	fldl   -0x18(%ebp)
c00366df:	83 c4 18             	add    $0x18,%esp
c00366e2:	5b                   	pop    %ebx
c00366e3:	5e                   	pop    %esi
c00366e4:	5f                   	pop    %edi
c00366e5:	5d                   	pop    %ebp
c00366e6:	c3                   	ret    
c00366e7:	89 f6                	mov    %esi,%esi
c00366e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00366f0 <__d2b>:
c00366f0:	55                   	push   %ebp
c00366f1:	89 e5                	mov    %esp,%ebp
c00366f3:	57                   	push   %edi
c00366f4:	56                   	push   %esi
c00366f5:	53                   	push   %ebx
c00366f6:	83 ec 2c             	sub    $0x2c,%esp
c00366f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00366fc:	dd 45 0c             	fldl   0xc(%ebp)
c00366ff:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036706:	00 
c0036707:	dd 5d d0             	fstpl  -0x30(%ebp)
c003670a:	89 04 24             	mov    %eax,(%esp)
c003670d:	e8 ce f4 ff ff       	call   c0035be0 <_Balloc>
c0036712:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c0036715:	89 c6                	mov    %eax,%esi
c0036717:	89 d8                	mov    %ebx,%eax
c0036719:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c003671f:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0036724:	c1 eb 14             	shr    $0x14,%ebx
c0036727:	85 db                	test   %ebx,%ebx
c0036729:	74 05                	je     c0036730 <__d2b+0x40>
c003672b:	0d 00 00 10 00       	or     $0x100000,%eax
c0036730:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036733:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036736:	85 c0                	test   %eax,%eax
c0036738:	74 56                	je     c0036790 <__d2b+0xa0>
c003673a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003673d:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0036740:	89 04 24             	mov    %eax,(%esp)
c0036743:	e8 98 f7 ff ff       	call   c0035ee0 <__lo0bits>
c0036748:	85 c0                	test   %eax,%eax
c003674a:	0f 85 90 00 00 00    	jne    c00367e0 <__d2b+0xf0>
c0036750:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036753:	89 56 14             	mov    %edx,0x14(%esi)
c0036756:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036759:	83 fa 01             	cmp    $0x1,%edx
c003675c:	19 ff                	sbb    %edi,%edi
c003675e:	83 c7 02             	add    $0x2,%edi
c0036761:	85 db                	test   %ebx,%ebx
c0036763:	89 56 18             	mov    %edx,0x18(%esi)
c0036766:	89 7e 10             	mov    %edi,0x10(%esi)
c0036769:	74 49                	je     c00367b4 <__d2b+0xc4>
c003676b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c003676e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036775:	89 11                	mov    %edx,(%ecx)
c0036777:	ba 35 00 00 00       	mov    $0x35,%edx
c003677c:	29 c2                	sub    %eax,%edx
c003677e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036781:	89 10                	mov    %edx,(%eax)
c0036783:	83 c4 2c             	add    $0x2c,%esp
c0036786:	89 f0                	mov    %esi,%eax
c0036788:	5b                   	pop    %ebx
c0036789:	5e                   	pop    %esi
c003678a:	5f                   	pop    %edi
c003678b:	5d                   	pop    %ebp
c003678c:	c3                   	ret    
c003678d:	8d 76 00             	lea    0x0(%esi),%esi
c0036790:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036793:	bf 01 00 00 00       	mov    $0x1,%edi
c0036798:	89 04 24             	mov    %eax,(%esp)
c003679b:	e8 40 f7 ff ff       	call   c0035ee0 <__lo0bits>
c00367a0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00367a3:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c00367aa:	89 56 14             	mov    %edx,0x14(%esi)
c00367ad:	83 c0 20             	add    $0x20,%eax
c00367b0:	85 db                	test   %ebx,%ebx
c00367b2:	75 b7                	jne    c003676b <__d2b+0x7b>
c00367b4:	8b 4d 14             	mov    0x14(%ebp),%ecx
c00367b7:	2d 32 04 00 00       	sub    $0x432,%eax
c00367bc:	89 01                	mov    %eax,(%ecx)
c00367be:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c00367c2:	c1 e7 05             	shl    $0x5,%edi
c00367c5:	89 04 24             	mov    %eax,(%esp)
c00367c8:	e8 b3 f6 ff ff       	call   c0035e80 <__hi0bits>
c00367cd:	29 c7                	sub    %eax,%edi
c00367cf:	8b 45 18             	mov    0x18(%ebp),%eax
c00367d2:	89 38                	mov    %edi,(%eax)
c00367d4:	83 c4 2c             	add    $0x2c,%esp
c00367d7:	89 f0                	mov    %esi,%eax
c00367d9:	5b                   	pop    %ebx
c00367da:	5e                   	pop    %esi
c00367db:	5f                   	pop    %edi
c00367dc:	5d                   	pop    %ebp
c00367dd:	c3                   	ret    
c00367de:	66 90                	xchg   %ax,%ax
c00367e0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00367e3:	b9 20 00 00 00       	mov    $0x20,%ecx
c00367e8:	29 c1                	sub    %eax,%ecx
c00367ea:	89 d7                	mov    %edx,%edi
c00367ec:	d3 e7                	shl    %cl,%edi
c00367ee:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00367f1:	09 f9                	or     %edi,%ecx
c00367f3:	89 4e 14             	mov    %ecx,0x14(%esi)
c00367f6:	89 c1                	mov    %eax,%ecx
c00367f8:	d3 ea                	shr    %cl,%edx
c00367fa:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00367fd:	e9 57 ff ff ff       	jmp    c0036759 <__d2b+0x69>
c0036802:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036809:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036810 <__ratio>:
c0036810:	55                   	push   %ebp
c0036811:	89 e5                	mov    %esp,%ebp
c0036813:	56                   	push   %esi
c0036814:	53                   	push   %ebx
c0036815:	83 ec 30             	sub    $0x30,%esp
c0036818:	8b 75 08             	mov    0x8(%ebp),%esi
c003681b:	8d 45 f0             	lea    -0x10(%ebp),%eax
c003681e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036821:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036825:	89 34 24             	mov    %esi,(%esp)
c0036828:	e8 c3 fd ff ff       	call   c00365f0 <__b2d>
c003682d:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0036830:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036834:	89 1c 24             	mov    %ebx,(%esp)
c0036837:	dd 55 e0             	fstl   -0x20(%ebp)
c003683a:	dd 5d d8             	fstpl  -0x28(%ebp)
c003683d:	e8 ae fd ff ff       	call   c00365f0 <__b2d>
c0036842:	8b 46 10             	mov    0x10(%esi),%eax
c0036845:	2b 43 10             	sub    0x10(%ebx),%eax
c0036848:	8b 55 f0             	mov    -0x10(%ebp),%edx
c003684b:	2b 55 f4             	sub    -0xc(%ebp),%edx
c003684e:	c1 e0 05             	shl    $0x5,%eax
c0036851:	01 d0                	add    %edx,%eax
c0036853:	dd 55 d0             	fstl   -0x30(%ebp)
c0036856:	85 c0                	test   %eax,%eax
c0036858:	dd 45 d8             	fldl   -0x28(%ebp)
c003685b:	7e 1b                	jle    c0036878 <__ratio+0x68>
c003685d:	dd d8                	fstp   %st(0)
c003685f:	c1 e0 14             	shl    $0x14,%eax
c0036862:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036865:	dd 45 e0             	fldl   -0x20(%ebp)
c0036868:	83 c4 30             	add    $0x30,%esp
c003686b:	5b                   	pop    %ebx
c003686c:	de f1                	fdivp  %st,%st(1)
c003686e:	5e                   	pop    %esi
c003686f:	5d                   	pop    %ebp
c0036870:	c3                   	ret    
c0036871:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036878:	dd d9                	fstp   %st(1)
c003687a:	c1 e0 14             	shl    $0x14,%eax
c003687d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036880:	dd 45 d0             	fldl   -0x30(%ebp)
c0036883:	83 c4 30             	add    $0x30,%esp
c0036886:	5b                   	pop    %ebx
c0036887:	de f9                	fdivrp %st,%st(1)
c0036889:	5e                   	pop    %esi
c003688a:	5d                   	pop    %ebp
c003688b:	c3                   	ret    
c003688c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036890 <_mprec_log10>:
c0036890:	55                   	push   %ebp
c0036891:	89 e5                	mov    %esp,%ebp
c0036893:	8b 45 08             	mov    0x8(%ebp),%eax
c0036896:	83 f8 17             	cmp    $0x17,%eax
c0036899:	7e 1d                	jle    c00368b8 <_mprec_log10+0x28>
c003689b:	d9 e8                	fld1   
c003689d:	d9 05 d8 99 03 c0    	flds   0xc00399d8
c00368a3:	90                   	nop
c00368a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368a8:	83 e8 01             	sub    $0x1,%eax
c00368ab:	dc c9                	fmul   %st,%st(1)
c00368ad:	75 f9                	jne    c00368a8 <_mprec_log10+0x18>
c00368af:	dd d8                	fstp   %st(0)
c00368b1:	5d                   	pop    %ebp
c00368b2:	c3                   	ret    
c00368b3:	90                   	nop
c00368b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368b8:	dd 04 c5 c0 9a 03 c0 	fldl   -0x3ffc6540(,%eax,8)
c00368bf:	5d                   	pop    %ebp
c00368c0:	c3                   	ret    
c00368c1:	eb 0d                	jmp    c00368d0 <__copybits>
c00368c3:	90                   	nop
c00368c4:	90                   	nop
c00368c5:	90                   	nop
c00368c6:	90                   	nop
c00368c7:	90                   	nop
c00368c8:	90                   	nop
c00368c9:	90                   	nop
c00368ca:	90                   	nop
c00368cb:	90                   	nop
c00368cc:	90                   	nop
c00368cd:	90                   	nop
c00368ce:	90                   	nop
c00368cf:	90                   	nop

c00368d0 <__copybits>:
c00368d0:	55                   	push   %ebp
c00368d1:	89 e5                	mov    %esp,%ebp
c00368d3:	57                   	push   %edi
c00368d4:	8b 7d 10             	mov    0x10(%ebp),%edi
c00368d7:	56                   	push   %esi
c00368d8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00368db:	8b 45 08             	mov    0x8(%ebp),%eax
c00368de:	53                   	push   %ebx
c00368df:	8b 4f 10             	mov    0x10(%edi),%ecx
c00368e2:	8d 56 ff             	lea    -0x1(%esi),%edx
c00368e5:	c1 fa 05             	sar    $0x5,%edx
c00368e8:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c00368ec:	8d 57 14             	lea    0x14(%edi),%edx
c00368ef:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c00368f2:	39 da                	cmp    %ebx,%edx
c00368f4:	73 34                	jae    c003692a <__copybits+0x5a>
c00368f6:	89 c1                	mov    %eax,%ecx
c00368f8:	83 c2 04             	add    $0x4,%edx
c00368fb:	8b 42 fc             	mov    -0x4(%edx),%eax
c00368fe:	83 c1 04             	add    $0x4,%ecx
c0036901:	39 d3                	cmp    %edx,%ebx
c0036903:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0036906:	77 f0                	ja     c00368f8 <__copybits+0x28>
c0036908:	8b 45 08             	mov    0x8(%ebp),%eax
c003690b:	29 fb                	sub    %edi,%ebx
c003690d:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0036910:	c1 ea 02             	shr    $0x2,%edx
c0036913:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0036917:	39 c6                	cmp    %eax,%esi
c0036919:	76 13                	jbe    c003692e <__copybits+0x5e>
c003691b:	90                   	nop
c003691c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036920:	83 c0 04             	add    $0x4,%eax
c0036923:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c003692a:	39 c6                	cmp    %eax,%esi
c003692c:	77 f2                	ja     c0036920 <__copybits+0x50>
c003692e:	5b                   	pop    %ebx
c003692f:	5e                   	pop    %esi
c0036930:	5f                   	pop    %edi
c0036931:	5d                   	pop    %ebp
c0036932:	c3                   	ret    
c0036933:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036939:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036940 <__any_on>:
c0036940:	55                   	push   %ebp
c0036941:	89 e5                	mov    %esp,%ebp
c0036943:	8b 45 08             	mov    0x8(%ebp),%eax
c0036946:	57                   	push   %edi
c0036947:	56                   	push   %esi
c0036948:	53                   	push   %ebx
c0036949:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003694c:	8d 50 14             	lea    0x14(%eax),%edx
c003694f:	8b 40 10             	mov    0x10(%eax),%eax
c0036952:	c1 fb 05             	sar    $0x5,%ebx
c0036955:	39 d8                	cmp    %ebx,%eax
c0036957:	7d 2f                	jge    c0036988 <__any_on+0x48>
c0036959:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c003695c:	39 da                	cmp    %ebx,%edx
c003695e:	73 1d                	jae    c003697d <__any_on+0x3d>
c0036960:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036963:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0036966:	85 db                	test   %ebx,%ebx
c0036968:	74 0f                	je     c0036979 <__any_on+0x39>
c003696a:	eb 44                	jmp    c00369b0 <__any_on+0x70>
c003696c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036970:	83 e8 04             	sub    $0x4,%eax
c0036973:	8b 08                	mov    (%eax),%ecx
c0036975:	85 c9                	test   %ecx,%ecx
c0036977:	75 37                	jne    c00369b0 <__any_on+0x70>
c0036979:	39 c2                	cmp    %eax,%edx
c003697b:	72 f3                	jb     c0036970 <__any_on+0x30>
c003697d:	31 c0                	xor    %eax,%eax
c003697f:	5b                   	pop    %ebx
c0036980:	5e                   	pop    %esi
c0036981:	5f                   	pop    %edi
c0036982:	5d                   	pop    %ebp
c0036983:	c3                   	ret    
c0036984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036988:	7e 1e                	jle    c00369a8 <__any_on+0x68>
c003698a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003698d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036990:	83 e1 1f             	and    $0x1f,%ecx
c0036993:	74 c7                	je     c003695c <__any_on+0x1c>
c0036995:	8b 3b                	mov    (%ebx),%edi
c0036997:	b8 01 00 00 00       	mov    $0x1,%eax
c003699c:	89 fe                	mov    %edi,%esi
c003699e:	d3 ee                	shr    %cl,%esi
c00369a0:	d3 e6                	shl    %cl,%esi
c00369a2:	39 fe                	cmp    %edi,%esi
c00369a4:	75 d9                	jne    c003697f <__any_on+0x3f>
c00369a6:	eb b4                	jmp    c003695c <__any_on+0x1c>
c00369a8:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c00369ab:	eb af                	jmp    c003695c <__any_on+0x1c>
c00369ad:	8d 76 00             	lea    0x0(%esi),%esi
c00369b0:	5b                   	pop    %ebx
c00369b1:	b8 01 00 00 00       	mov    $0x1,%eax
c00369b6:	5e                   	pop    %esi
c00369b7:	5f                   	pop    %edi
c00369b8:	5d                   	pop    %ebp
c00369b9:	c3                   	ret    
c00369ba:	66 90                	xchg   %ax,%ax
c00369bc:	66 90                	xchg   %ax,%ax
c00369be:	66 90                	xchg   %ax,%ax

c00369c0 <_sbrk_r>:
c00369c0:	55                   	push   %ebp
c00369c1:	89 e5                	mov    %esp,%ebp
c00369c3:	83 ec 18             	sub    $0x18,%esp
c00369c6:	8b 45 0c             	mov    0xc(%ebp),%eax
c00369c9:	c7 05 00 50 09 c0 00 	movl   $0x0,0xc0095000
c00369d0:	00 00 00 
c00369d3:	89 04 24             	mov    %eax,(%esp)
c00369d6:	e8 46 a0 ff ff       	call   c0030a21 <sbrk>
c00369db:	83 f8 ff             	cmp    $0xffffffff,%eax
c00369de:	74 08                	je     c00369e8 <_sbrk_r+0x28>
c00369e0:	c9                   	leave  
c00369e1:	c3                   	ret    
c00369e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00369e8:	8b 15 00 50 09 c0    	mov    0xc0095000,%edx
c00369ee:	85 d2                	test   %edx,%edx
c00369f0:	74 ee                	je     c00369e0 <_sbrk_r+0x20>
c00369f2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00369f5:	89 11                	mov    %edx,(%ecx)
c00369f7:	c9                   	leave  
c00369f8:	c3                   	ret    
c00369f9:	66 90                	xchg   %ax,%ax
c00369fb:	66 90                	xchg   %ax,%ax
c00369fd:	66 90                	xchg   %ax,%ax
c00369ff:	90                   	nop

c0036a00 <__fpclassifyd>:
c0036a00:	55                   	push   %ebp
c0036a01:	b8 02 00 00 00       	mov    $0x2,%eax
c0036a06:	89 e5                	mov    %esp,%ebp
c0036a08:	53                   	push   %ebx
c0036a09:	83 ec 0c             	sub    $0xc,%esp
c0036a0c:	dd 45 08             	fldl   0x8(%ebp)
c0036a0f:	dd 5d f0             	fstpl  -0x10(%ebp)
c0036a12:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036a15:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0036a18:	89 d3                	mov    %edx,%ebx
c0036a1a:	09 cb                	or     %ecx,%ebx
c0036a1c:	75 0a                	jne    c0036a28 <__fpclassifyd+0x28>
c0036a1e:	83 c4 0c             	add    $0xc,%esp
c0036a21:	5b                   	pop    %ebx
c0036a22:	5d                   	pop    %ebp
c0036a23:	c3                   	ret    
c0036a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a28:	85 d2                	test   %edx,%edx
c0036a2a:	0f 94 c2             	sete   %dl
c0036a2d:	75 08                	jne    c0036a37 <__fpclassifyd+0x37>
c0036a2f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0036a35:	74 e7                	je     c0036a1e <__fpclassifyd+0x1e>
c0036a37:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c0036a3d:	b8 04 00 00 00       	mov    $0x4,%eax
c0036a42:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0036a48:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c0036a4e:	76 ce                	jbe    c0036a1e <__fpclassifyd+0x1e>
c0036a50:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036a56:	b0 03                	mov    $0x3,%al
c0036a58:	76 c4                	jbe    c0036a1e <__fpclassifyd+0x1e>
c0036a5a:	31 c0                	xor    %eax,%eax
c0036a5c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036a62:	0f 94 c0             	sete   %al
c0036a65:	21 d0                	and    %edx,%eax
c0036a67:	eb b5                	jmp    c0036a1e <__fpclassifyd+0x1e>
c0036a69:	66 90                	xchg   %ax,%ax
c0036a6b:	66 90                	xchg   %ax,%ax
c0036a6d:	66 90                	xchg   %ax,%ax
c0036a6f:	90                   	nop

c0036a70 <strcmp>:
c0036a70:	55                   	push   %ebp
c0036a71:	89 e5                	mov    %esp,%ebp
c0036a73:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a76:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036a79:	53                   	push   %ebx
c0036a7a:	89 c1                	mov    %eax,%ecx
c0036a7c:	09 d1                	or     %edx,%ecx
c0036a7e:	83 e1 03             	and    $0x3,%ecx
c0036a81:	75 17                	jne    c0036a9a <strcmp+0x2a>
c0036a83:	8b 08                	mov    (%eax),%ecx
c0036a85:	3b 0a                	cmp    (%edx),%ecx
c0036a87:	74 33                	je     c0036abc <strcmp+0x4c>
c0036a89:	eb 0f                	jmp    c0036a9a <strcmp+0x2a>
c0036a8b:	90                   	nop
c0036a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a90:	3a 0a                	cmp    (%edx),%cl
c0036a92:	75 0d                	jne    c0036aa1 <strcmp+0x31>
c0036a94:	83 c0 01             	add    $0x1,%eax
c0036a97:	83 c2 01             	add    $0x1,%edx
c0036a9a:	0f b6 08             	movzbl (%eax),%ecx
c0036a9d:	84 c9                	test   %cl,%cl
c0036a9f:	75 ef                	jne    c0036a90 <strcmp+0x20>
c0036aa1:	0f b6 00             	movzbl (%eax),%eax
c0036aa4:	0f b6 12             	movzbl (%edx),%edx
c0036aa7:	5b                   	pop    %ebx
c0036aa8:	5d                   	pop    %ebp
c0036aa9:	29 d0                	sub    %edx,%eax
c0036aab:	c3                   	ret    
c0036aac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036ab0:	83 c0 04             	add    $0x4,%eax
c0036ab3:	83 c2 04             	add    $0x4,%edx
c0036ab6:	8b 08                	mov    (%eax),%ecx
c0036ab8:	3b 0a                	cmp    (%edx),%ecx
c0036aba:	75 de                	jne    c0036a9a <strcmp+0x2a>
c0036abc:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036ac2:	f7 d1                	not    %ecx
c0036ac4:	21 cb                	and    %ecx,%ebx
c0036ac6:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036acc:	74 e2                	je     c0036ab0 <strcmp+0x40>
c0036ace:	31 c0                	xor    %eax,%eax
c0036ad0:	5b                   	pop    %ebx
c0036ad1:	5d                   	pop    %ebp
c0036ad2:	c3                   	ret    
c0036ad3:	66 90                	xchg   %ax,%ax
c0036ad5:	66 90                	xchg   %ax,%ax
c0036ad7:	66 90                	xchg   %ax,%ax
c0036ad9:	66 90                	xchg   %ax,%ax
c0036adb:	66 90                	xchg   %ax,%ax
c0036add:	66 90                	xchg   %ax,%ax
c0036adf:	90                   	nop

c0036ae0 <strlen>:
c0036ae0:	55                   	push   %ebp
c0036ae1:	89 e5                	mov    %esp,%ebp
c0036ae3:	57                   	push   %edi
c0036ae4:	8b 55 08             	mov    0x8(%ebp),%edx
c0036ae7:	89 d7                	mov    %edx,%edi
c0036ae9:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036aef:	74 25                	je     c0036b16 <L5>
c0036af1:	8a 0f                	mov    (%edi),%cl
c0036af3:	47                   	inc    %edi
c0036af4:	84 c9                	test   %cl,%cl
c0036af6:	74 56                	je     c0036b4e <L15>
c0036af8:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036afe:	74 16                	je     c0036b16 <L5>
c0036b00:	8a 0f                	mov    (%edi),%cl
c0036b02:	47                   	inc    %edi
c0036b03:	84 c9                	test   %cl,%cl
c0036b05:	74 47                	je     c0036b4e <L15>
c0036b07:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036b0d:	74 07                	je     c0036b16 <L5>
c0036b0f:	8a 0f                	mov    (%edi),%cl
c0036b11:	47                   	inc    %edi
c0036b12:	84 c9                	test   %cl,%cl
c0036b14:	74 38                	je     c0036b4e <L15>

c0036b16 <L5>:
c0036b16:	83 ef 04             	sub    $0x4,%edi
c0036b19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036b20 <L10>:
c0036b20:	83 c7 04             	add    $0x4,%edi
c0036b23:	8b 0f                	mov    (%edi),%ecx
c0036b25:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036b2b:	f7 d1                	not    %ecx
c0036b2d:	21 c8                	and    %ecx,%eax
c0036b2f:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036b34:	74 ea                	je     c0036b20 <L10>
c0036b36:	f7 d1                	not    %ecx
c0036b38:	47                   	inc    %edi
c0036b39:	84 c9                	test   %cl,%cl
c0036b3b:	74 11                	je     c0036b4e <L15>
c0036b3d:	47                   	inc    %edi
c0036b3e:	c1 e9 08             	shr    $0x8,%ecx
c0036b41:	84 c9                	test   %cl,%cl
c0036b43:	74 09                	je     c0036b4e <L15>
c0036b45:	47                   	inc    %edi
c0036b46:	c1 e9 08             	shr    $0x8,%ecx
c0036b49:	84 c9                	test   %cl,%cl
c0036b4b:	74 01                	je     c0036b4e <L15>
c0036b4d:	47                   	inc    %edi

c0036b4e <L15>:
c0036b4e:	29 d7                	sub    %edx,%edi
c0036b50:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036b53:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036b56:	5f                   	pop    %edi
c0036b57:	c9                   	leave  
c0036b58:	c3                   	ret    
c0036b59:	66 90                	xchg   %ax,%ax
c0036b5b:	66 90                	xchg   %ax,%ax
c0036b5d:	66 90                	xchg   %ax,%ax
c0036b5f:	90                   	nop

c0036b60 <__ssprint_r>:
c0036b60:	55                   	push   %ebp
c0036b61:	89 e5                	mov    %esp,%ebp
c0036b63:	57                   	push   %edi
c0036b64:	56                   	push   %esi
c0036b65:	53                   	push   %ebx
c0036b66:	83 ec 2c             	sub    $0x2c,%esp
c0036b69:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b6c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036b6f:	8b 00                	mov    (%eax),%eax
c0036b71:	89 c7                	mov    %eax,%edi
c0036b73:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b76:	8b 40 08             	mov    0x8(%eax),%eax
c0036b79:	85 c0                	test   %eax,%eax
c0036b7b:	0f 84 af 01 00 00    	je     c0036d30 <__ssprint_r+0x1d0>
c0036b81:	31 c9                	xor    %ecx,%ecx
c0036b83:	31 d2                	xor    %edx,%edx
c0036b85:	8b 03                	mov    (%ebx),%eax
c0036b87:	89 ce                	mov    %ecx,%esi
c0036b89:	85 f6                	test   %esi,%esi
c0036b8b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036b8e:	0f 84 ec 00 00 00    	je     c0036c80 <__ssprint_r+0x120>
c0036b94:	8b 53 08             	mov    0x8(%ebx),%edx
c0036b97:	39 d6                	cmp    %edx,%esi
c0036b99:	0f 82 fc 00 00 00    	jb     c0036c9b <__ssprint_r+0x13b>
c0036b9f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036ba3:	66 f7 c1 80 04       	test   $0x480,%cx
c0036ba8:	0f 84 fa 00 00 00    	je     c0036ca8 <__ssprint_r+0x148>
c0036bae:	8b 53 10             	mov    0x10(%ebx),%edx
c0036bb1:	29 d0                	sub    %edx,%eax
c0036bb3:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036bb6:	8b 43 14             	mov    0x14(%ebx),%eax
c0036bb9:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036bbc:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036bbf:	89 c2                	mov    %eax,%edx
c0036bc1:	c1 ea 1f             	shr    $0x1f,%edx
c0036bc4:	01 d0                	add    %edx,%eax
c0036bc6:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036bc9:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036bcc:	d1 7d e0             	sarl   -0x20(%ebp)
c0036bcf:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036bd3:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036bd6:	0f 83 34 01 00 00    	jae    c0036d10 <__ssprint_r+0x1b0>
c0036bdc:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036bdf:	80 e5 04             	and    $0x4,%ch
c0036be2:	0f 84 c8 00 00 00    	je     c0036cb0 <__ssprint_r+0x150>
c0036be8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036bec:	8b 45 08             	mov    0x8(%ebp),%eax
c0036bef:	89 04 24             	mov    %eax,(%esp)
c0036bf2:	e8 e9 e7 ff ff       	call   c00353e0 <_malloc_r>
c0036bf7:	85 c0                	test   %eax,%eax
c0036bf9:	89 c2                	mov    %eax,%edx
c0036bfb:	0f 84 e1 00 00 00    	je     c0036ce2 <__ssprint_r+0x182>
c0036c01:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c04:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036c07:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c0b:	8b 43 10             	mov    0x10(%ebx),%eax
c0036c0e:	89 14 24             	mov    %edx,(%esp)
c0036c11:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c15:	e8 0a b2 ff ff       	call   c0031e24 <memcpy>
c0036c1a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036c1e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036c21:	66 25 7f fb          	and    $0xfb7f,%ax
c0036c25:	0c 80                	or     $0x80,%al
c0036c27:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036c2b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c2e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c31:	89 53 10             	mov    %edx,0x10(%ebx)
c0036c34:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036c37:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036c3a:	01 d0                	add    %edx,%eax
c0036c3c:	89 03                	mov    %eax,(%ebx)
c0036c3e:	89 f2                	mov    %esi,%edx
c0036c40:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036c43:	89 f1                	mov    %esi,%ecx
c0036c45:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036c49:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036c4c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036c4f:	89 04 24             	mov    %eax,(%esp)
c0036c52:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036c55:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036c59:	e8 22 13 00 00       	call   c0037f80 <memmove>
c0036c5e:	8b 03                	mov    (%ebx),%eax
c0036c60:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c63:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036c66:	29 53 08             	sub    %edx,0x8(%ebx)
c0036c69:	01 c8                	add    %ecx,%eax
c0036c6b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036c6e:	89 03                	mov    %eax,(%ebx)
c0036c70:	8b 51 08             	mov    0x8(%ecx),%edx
c0036c73:	29 f2                	sub    %esi,%edx
c0036c75:	85 d2                	test   %edx,%edx
c0036c77:	89 51 08             	mov    %edx,0x8(%ecx)
c0036c7a:	0f 84 98 00 00 00    	je     c0036d18 <__ssprint_r+0x1b8>
c0036c80:	8b 77 04             	mov    0x4(%edi),%esi
c0036c83:	83 c7 08             	add    $0x8,%edi
c0036c86:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036c89:	85 f6                	test   %esi,%esi
c0036c8b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036c8e:	74 f0                	je     c0036c80 <__ssprint_r+0x120>
c0036c90:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c93:	39 d6                	cmp    %edx,%esi
c0036c95:	0f 83 04 ff ff ff    	jae    c0036b9f <__ssprint_r+0x3f>
c0036c9b:	89 f2                	mov    %esi,%edx
c0036c9d:	89 f1                	mov    %esi,%ecx
c0036c9f:	eb a4                	jmp    c0036c45 <__ssprint_r+0xe5>
c0036ca1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036ca8:	89 d1                	mov    %edx,%ecx
c0036caa:	eb 99                	jmp    c0036c45 <__ssprint_r+0xe5>
c0036cac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036cb0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036cb4:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036cb7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036cbb:	8b 45 08             	mov    0x8(%ebp),%eax
c0036cbe:	89 04 24             	mov    %eax,(%esp)
c0036cc1:	e8 4a 13 00 00       	call   c0038010 <_realloc_r>
c0036cc6:	85 c0                	test   %eax,%eax
c0036cc8:	89 c2                	mov    %eax,%edx
c0036cca:	0f 85 5b ff ff ff    	jne    c0036c2b <__ssprint_r+0xcb>
c0036cd0:	8b 43 10             	mov    0x10(%ebx),%eax
c0036cd3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036cd7:	8b 45 08             	mov    0x8(%ebp),%eax
c0036cda:	89 04 24             	mov    %eax,(%esp)
c0036cdd:	e8 3e 10 00 00       	call   c0037d20 <_free_r>
c0036ce2:	8b 45 08             	mov    0x8(%ebp),%eax
c0036ce5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036ceb:	8b 45 10             	mov    0x10(%ebp),%eax
c0036cee:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036cf3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036cfa:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036d01:	83 c4 2c             	add    $0x2c,%esp
c0036d04:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036d09:	5b                   	pop    %ebx
c0036d0a:	5e                   	pop    %esi
c0036d0b:	5f                   	pop    %edi
c0036d0c:	5d                   	pop    %ebp
c0036d0d:	c3                   	ret    
c0036d0e:	66 90                	xchg   %ax,%ax
c0036d10:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036d13:	e9 c7 fe ff ff       	jmp    c0036bdf <__ssprint_r+0x7f>
c0036d18:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036d1f:	83 c4 2c             	add    $0x2c,%esp
c0036d22:	31 c0                	xor    %eax,%eax
c0036d24:	5b                   	pop    %ebx
c0036d25:	5e                   	pop    %esi
c0036d26:	5f                   	pop    %edi
c0036d27:	5d                   	pop    %ebp
c0036d28:	c3                   	ret    
c0036d29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d30:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d33:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036d3a:	83 c4 2c             	add    $0x2c,%esp
c0036d3d:	31 c0                	xor    %eax,%eax
c0036d3f:	5b                   	pop    %ebx
c0036d40:	5e                   	pop    %esi
c0036d41:	5f                   	pop    %edi
c0036d42:	5d                   	pop    %ebp
c0036d43:	c3                   	ret    
c0036d44:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d4a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036d50 <_svfiprintf_r>:
c0036d50:	55                   	push   %ebp
c0036d51:	89 e5                	mov    %esp,%ebp
c0036d53:	57                   	push   %edi
c0036d54:	56                   	push   %esi
c0036d55:	53                   	push   %ebx
c0036d56:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036d5c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036d5f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036d63:	74 0b                	je     c0036d70 <_svfiprintf_r+0x20>
c0036d65:	8b 50 10             	mov    0x10(%eax),%edx
c0036d68:	85 d2                	test   %edx,%edx
c0036d6a:	0f 84 1c 0d 00 00    	je     c0037a8c <_svfiprintf_r+0xd3c>
c0036d70:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036d73:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036d76:	89 c6                	mov    %eax,%esi
c0036d78:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036d7e:	29 d8                	sub    %ebx,%eax
c0036d80:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036d87:	00 00 00 
c0036d8a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036d91:	00 00 00 
c0036d94:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036d9b:	00 00 00 
c0036d9e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036da5:	00 00 00 
c0036da8:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036dae:	8b 45 10             	mov    0x10(%ebp),%eax
c0036db1:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036db4:	0f b6 00             	movzbl (%eax),%eax
c0036db7:	84 c0                	test   %al,%al
c0036db9:	74 58                	je     c0036e13 <_svfiprintf_r+0xc3>
c0036dbb:	3c 25                	cmp    $0x25,%al
c0036dbd:	75 13                	jne    c0036dd2 <_svfiprintf_r+0x82>
c0036dbf:	eb 52                	jmp    c0036e13 <_svfiprintf_r+0xc3>
c0036dc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036dc8:	84 c0                	test   %al,%al
c0036dca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036dd0:	74 0a                	je     c0036ddc <_svfiprintf_r+0x8c>
c0036dd2:	83 c3 01             	add    $0x1,%ebx
c0036dd5:	0f b6 03             	movzbl (%ebx),%eax
c0036dd8:	3c 25                	cmp    $0x25,%al
c0036dda:	75 ec                	jne    c0036dc8 <_svfiprintf_r+0x78>
c0036ddc:	89 df                	mov    %ebx,%edi
c0036dde:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036de1:	74 30                	je     c0036e13 <_svfiprintf_r+0xc3>
c0036de3:	8b 45 10             	mov    0x10(%ebp),%eax
c0036de6:	83 c6 08             	add    $0x8,%esi
c0036de9:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036dec:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036df2:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036df5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036dfb:	83 c0 01             	add    $0x1,%eax
c0036dfe:	83 f8 07             	cmp    $0x7,%eax
c0036e01:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036e07:	0f 8f eb 0a 00 00    	jg     c00378f8 <_svfiprintf_r+0xba8>
c0036e0d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036e13:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036e16:	0f 84 11 09 00 00    	je     c003772d <_svfiprintf_r+0x9dd>
c0036e1c:	8d 43 01             	lea    0x1(%ebx),%eax
c0036e1f:	31 ff                	xor    %edi,%edi
c0036e21:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036e28:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036e2f:	ff ff ff 
c0036e32:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036e39:	00 00 00 
c0036e3c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036e43:	00 00 00 
c0036e46:	8d 50 01             	lea    0x1(%eax),%edx
c0036e49:	0f be 00             	movsbl (%eax),%eax
c0036e4c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036e4f:	83 f9 58             	cmp    $0x58,%ecx
c0036e52:	0f 87 63 03 00 00    	ja     c00371bb <_svfiprintf_r+0x46b>
c0036e58:	ff 24 8d 88 9b 03 c0 	jmp    *-0x3ffc6478(,%ecx,4)
c0036e5f:	90                   	nop
c0036e60:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036e67:	89 d0                	mov    %edx,%eax
c0036e69:	eb db                	jmp    c0036e46 <_svfiprintf_r+0xf6>
c0036e6b:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e6e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036e71:	8b 00                	mov    (%eax),%eax
c0036e73:	83 c3 04             	add    $0x4,%ebx
c0036e76:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036e79:	85 c0                	test   %eax,%eax
c0036e7b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036e81:	79 e4                	jns    c0036e67 <_svfiprintf_r+0x117>
c0036e83:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036e89:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036e90:	89 d0                	mov    %edx,%eax
c0036e92:	eb b2                	jmp    c0036e46 <_svfiprintf_r+0xf6>
c0036e94:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036e99:	89 d0                	mov    %edx,%eax
c0036e9b:	eb a9                	jmp    c0036e46 <_svfiprintf_r+0xf6>
c0036e9d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036ea0:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036ea7:	89 55 10             	mov    %edx,0x10(%ebp)
c0036eaa:	ba 02 00 00 00       	mov    $0x2,%edx
c0036eaf:	8b 08                	mov    (%eax),%ecx
c0036eb1:	83 c0 04             	add    $0x4,%eax
c0036eb4:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036ebb:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036ec2:	89 45 14             	mov    %eax,0x14(%ebp)
c0036ec5:	c7 85 44 ff ff ff 1f 	movl   $0xc003981f,-0xbc(%ebp)
c0036ecc:	98 03 c0 
c0036ecf:	90                   	nop
c0036ed0:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036ed7:	31 ff                	xor    %edi,%edi
c0036ed9:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036edf:	89 d8                	mov    %ebx,%eax
c0036ee1:	24 7f                	and    $0x7f,%al
c0036ee3:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036eea:	0f 48 c3             	cmovs  %ebx,%eax
c0036eed:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036ef3:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036ef9:	85 c0                	test   %eax,%eax
c0036efb:	75 08                	jne    c0036f05 <_svfiprintf_r+0x1b5>
c0036efd:	85 c9                	test   %ecx,%ecx
c0036eff:	0f 84 03 08 00 00    	je     c0037708 <_svfiprintf_r+0x9b8>
c0036f05:	80 fa 01             	cmp    $0x1,%dl
c0036f08:	0f 84 8a 0a 00 00    	je     c0037998 <_svfiprintf_r+0xc48>
c0036f0e:	80 fa 02             	cmp    $0x2,%dl
c0036f11:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036f14:	0f 85 86 01 00 00    	jne    c00370a0 <_svfiprintf_r+0x350>
c0036f1a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036f20:	89 c8                	mov    %ecx,%eax
c0036f22:	83 eb 01             	sub    $0x1,%ebx
c0036f25:	83 e0 0f             	and    $0xf,%eax
c0036f28:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036f2c:	c1 e9 04             	shr    $0x4,%ecx
c0036f2f:	85 c9                	test   %ecx,%ecx
c0036f31:	88 03                	mov    %al,(%ebx)
c0036f33:	75 eb                	jne    c0036f20 <_svfiprintf_r+0x1d0>
c0036f35:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036f38:	29 d8                	sub    %ebx,%eax
c0036f3a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036f40:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036f46:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036f4c:	39 c1                	cmp    %eax,%ecx
c0036f4e:	0f 4d c1             	cmovge %ecx,%eax
c0036f51:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f57:	89 f8                	mov    %edi,%eax
c0036f59:	3c 01                	cmp    $0x1,%al
c0036f5b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036f62:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036f68:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036f6e:	89 d0                	mov    %edx,%eax
c0036f70:	89 cf                	mov    %ecx,%edi
c0036f72:	83 c0 02             	add    $0x2,%eax
c0036f75:	83 e7 02             	and    $0x2,%edi
c0036f78:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036f7e:	89 cf                	mov    %ecx,%edi
c0036f80:	0f 44 c2             	cmove  %edx,%eax
c0036f83:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036f89:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f8f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036f95:	0f 85 cd 04 00 00    	jne    c0037468 <_svfiprintf_r+0x718>
c0036f9b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036fa1:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036fa7:	85 ff                	test   %edi,%edi
c0036fa9:	0f 8e b9 04 00 00    	jle    c0037468 <_svfiprintf_r+0x718>
c0036faf:	83 ff 10             	cmp    $0x10,%edi
c0036fb2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036fb8:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036fbe:	7e 7c                	jle    c003703c <_svfiprintf_r+0x2ec>
c0036fc0:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0036fc6:	89 f1                	mov    %esi,%ecx
c0036fc8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036fcb:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036fce:	eb 08                	jmp    c0036fd8 <_svfiprintf_r+0x288>
c0036fd0:	83 ef 10             	sub    $0x10,%edi
c0036fd3:	83 ff 10             	cmp    $0x10,%edi
c0036fd6:	7e 5c                	jle    c0037034 <_svfiprintf_r+0x2e4>
c0036fd8:	83 c0 01             	add    $0x1,%eax
c0036fdb:	83 c2 10             	add    $0x10,%edx
c0036fde:	c7 01 fc 9c 03 c0    	movl   $0xc0039cfc,(%ecx)
c0036fe4:	83 c1 08             	add    $0x8,%ecx
c0036fe7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0036fee:	83 f8 07             	cmp    $0x7,%eax
c0036ff1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036ff7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036ffd:	7e d1                	jle    c0036fd0 <_svfiprintf_r+0x280>
c0036fff:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037005:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037009:	89 74 24 04          	mov    %esi,0x4(%esp)
c003700d:	89 1c 24             	mov    %ebx,(%esp)
c0037010:	e8 4b fb ff ff       	call   c0036b60 <__ssprint_r>
c0037015:	85 c0                	test   %eax,%eax
c0037017:	0f 85 3b 07 00 00    	jne    c0037758 <_svfiprintf_r+0xa08>
c003701d:	83 ef 10             	sub    $0x10,%edi
c0037020:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037026:	83 ff 10             	cmp    $0x10,%edi
c0037029:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003702f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037032:	7f a4                	jg     c0036fd8 <_svfiprintf_r+0x288>
c0037034:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c003703a:	89 ce                	mov    %ecx,%esi
c003703c:	83 c0 01             	add    $0x1,%eax
c003703f:	01 fa                	add    %edi,%edx
c0037041:	c7 06 fc 9c 03 c0    	movl   $0xc0039cfc,(%esi)
c0037047:	83 c6 08             	add    $0x8,%esi
c003704a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003704d:	83 f8 07             	cmp    $0x7,%eax
c0037050:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037056:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003705c:	0f 8e 12 04 00 00    	jle    c0037474 <_svfiprintf_r+0x724>
c0037062:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037068:	89 44 24 08          	mov    %eax,0x8(%esp)
c003706c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003706f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037073:	8b 45 08             	mov    0x8(%ebp),%eax
c0037076:	89 04 24             	mov    %eax,(%esp)
c0037079:	e8 e2 fa ff ff       	call   c0036b60 <__ssprint_r>
c003707e:	85 c0                	test   %eax,%eax
c0037080:	0f 85 d2 06 00 00    	jne    c0037758 <_svfiprintf_r+0xa08>
c0037086:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003708c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003708f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037095:	e9 da 03 00 00       	jmp    c0037474 <_svfiprintf_r+0x724>
c003709a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00370a0:	89 c8                	mov    %ecx,%eax
c00370a2:	83 eb 01             	sub    $0x1,%ebx
c00370a5:	83 e0 07             	and    $0x7,%eax
c00370a8:	c1 e9 03             	shr    $0x3,%ecx
c00370ab:	83 c0 30             	add    $0x30,%eax
c00370ae:	85 c9                	test   %ecx,%ecx
c00370b0:	88 03                	mov    %al,(%ebx)
c00370b2:	75 ec                	jne    c00370a0 <_svfiprintf_r+0x350>
c00370b4:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00370bb:	89 da                	mov    %ebx,%edx
c00370bd:	0f 84 72 fe ff ff    	je     c0036f35 <_svfiprintf_r+0x1e5>
c00370c3:	3c 30                	cmp    $0x30,%al
c00370c5:	0f 84 6a fe ff ff    	je     c0036f35 <_svfiprintf_r+0x1e5>
c00370cb:	83 eb 01             	sub    $0x1,%ebx
c00370ce:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00370d1:	29 d8                	sub    %ebx,%eax
c00370d3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c00370d7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00370dd:	e9 5e fe ff ff       	jmp    c0036f40 <_svfiprintf_r+0x1f0>
c00370e2:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00370e9:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370f0:	89 55 10             	mov    %edx,0x10(%ebp)
c00370f3:	8b 45 14             	mov    0x14(%ebp),%eax
c00370f6:	0f 85 48 01 00 00    	jne    c0037244 <_svfiprintf_r+0x4f4>
c00370fc:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037103:	0f 84 3b 01 00 00    	je     c0037244 <_svfiprintf_r+0x4f4>
c0037109:	0f b7 08             	movzwl (%eax),%ecx
c003710c:	83 c0 04             	add    $0x4,%eax
c003710f:	31 d2                	xor    %edx,%edx
c0037111:	89 45 14             	mov    %eax,0x14(%ebp)
c0037114:	e9 b7 fd ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x180>
c0037119:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037120:	89 f8                	mov    %edi,%eax
c0037122:	89 55 10             	mov    %edx,0x10(%ebp)
c0037125:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c003712b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037132:	8b 45 14             	mov    0x14(%ebp),%eax
c0037135:	75 0d                	jne    c0037144 <_svfiprintf_r+0x3f4>
c0037137:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003713e:	0f 85 f2 08 00 00    	jne    c0037a36 <_svfiprintf_r+0xce6>
c0037144:	8b 08                	mov    (%eax),%ecx
c0037146:	83 c0 04             	add    $0x4,%eax
c0037149:	89 45 14             	mov    %eax,0x14(%ebp)
c003714c:	85 c9                	test   %ecx,%ecx
c003714e:	0f 88 f3 08 00 00    	js     c0037a47 <_svfiprintf_r+0xcf7>
c0037154:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003715b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037160:	e9 74 fd ff ff       	jmp    c0036ed9 <_svfiprintf_r+0x189>
c0037165:	0f be 02             	movsbl (%edx),%eax
c0037168:	8d 5a 01             	lea    0x1(%edx),%ebx
c003716b:	83 f8 2a             	cmp    $0x2a,%eax
c003716e:	0f 84 af 09 00 00    	je     c0037b23 <_svfiprintf_r+0xdd3>
c0037174:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037177:	31 d2                	xor    %edx,%edx
c0037179:	83 f9 09             	cmp    $0x9,%ecx
c003717c:	0f 87 90 09 00 00    	ja     c0037b12 <_svfiprintf_r+0xdc2>
c0037182:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037188:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003718b:	83 c3 01             	add    $0x1,%ebx
c003718e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037191:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037195:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037198:	83 f9 09             	cmp    $0x9,%ecx
c003719b:	76 eb                	jbe    c0037188 <_svfiprintf_r+0x438>
c003719d:	85 d2                	test   %edx,%edx
c003719f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00371a4:	0f 48 d1             	cmovs  %ecx,%edx
c00371a7:	8d 48 e0             	lea    -0x20(%eax),%ecx
c00371aa:	83 f9 58             	cmp    $0x58,%ecx
c00371ad:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c00371b3:	89 da                	mov    %ebx,%edx
c00371b5:	0f 86 9d fc ff ff    	jbe    c0036e58 <_svfiprintf_r+0x108>
c00371bb:	89 fb                	mov    %edi,%ebx
c00371bd:	85 c0                	test   %eax,%eax
c00371bf:	89 55 10             	mov    %edx,0x10(%ebp)
c00371c2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00371c8:	0f 84 5f 05 00 00    	je     c003772d <_svfiprintf_r+0x9dd>
c00371ce:	88 45 80             	mov    %al,-0x80(%ebp)
c00371d1:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00371d4:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00371db:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00371e2:	00 00 00 
c00371e5:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00371ec:	00 00 00 
c00371ef:	e9 5a 01 00 00       	jmp    c003734e <_svfiprintf_r+0x5fe>
c00371f4:	31 db                	xor    %ebx,%ebx
c00371f6:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037200:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0037203:	83 c2 01             	add    $0x1,%edx
c0037206:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0037209:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c003720d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037210:	83 f9 09             	cmp    $0x9,%ecx
c0037213:	76 eb                	jbe    c0037200 <_svfiprintf_r+0x4b0>
c0037215:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c003721b:	e9 2c fc ff ff       	jmp    c0036e4c <_svfiprintf_r+0xfc>
c0037220:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0037227:	00 00 00 
c003722a:	89 d0                	mov    %edx,%eax
c003722c:	e9 15 fc ff ff       	jmp    c0036e46 <_svfiprintf_r+0xf6>
c0037231:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037238:	89 55 10             	mov    %edx,0x10(%ebp)
c003723b:	8b 45 14             	mov    0x14(%ebp),%eax
c003723e:	0f 84 b8 fe ff ff    	je     c00370fc <_svfiprintf_r+0x3ac>
c0037244:	8b 08                	mov    (%eax),%ecx
c0037246:	83 c0 04             	add    $0x4,%eax
c0037249:	31 d2                	xor    %edx,%edx
c003724b:	89 45 14             	mov    %eax,0x14(%ebp)
c003724e:	e9 7d fc ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x180>
c0037253:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003725a:	89 f8                	mov    %edi,%eax
c003725c:	89 55 10             	mov    %edx,0x10(%ebp)
c003725f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037265:	0f 85 a2 07 00 00    	jne    c0037a0d <_svfiprintf_r+0xcbd>
c003726b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037272:	0f 84 95 07 00 00    	je     c0037a0d <_svfiprintf_r+0xcbd>
c0037278:	8b 45 14             	mov    0x14(%ebp),%eax
c003727b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037282:	8b 00                	mov    (%eax),%eax
c0037284:	66 89 18             	mov    %bx,(%eax)
c0037287:	8b 45 14             	mov    0x14(%ebp),%eax
c003728a:	83 c0 04             	add    $0x4,%eax
c003728d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037290:	e9 19 fb ff ff       	jmp    c0036dae <_svfiprintf_r+0x5e>
c0037295:	89 fb                	mov    %edi,%ebx
c0037297:	89 55 10             	mov    %edx,0x10(%ebp)
c003729a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00372a0:	c7 85 44 ff ff ff 1f 	movl   $0xc003981f,-0xbc(%ebp)
c00372a7:	98 03 c0 
c00372aa:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00372b1:	8b 5d 14             	mov    0x14(%ebp),%ebx
c00372b4:	75 0d                	jne    c00372c3 <_svfiprintf_r+0x573>
c00372b6:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00372bd:	0f 85 65 07 00 00    	jne    c0037a28 <_svfiprintf_r+0xcd8>
c00372c3:	8b 0b                	mov    (%ebx),%ecx
c00372c5:	83 c3 04             	add    $0x4,%ebx
c00372c8:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00372cb:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00372d2:	ba 02 00 00 00       	mov    $0x2,%edx
c00372d7:	0f 84 f3 fb ff ff    	je     c0036ed0 <_svfiprintf_r+0x180>
c00372dd:	85 c9                	test   %ecx,%ecx
c00372df:	0f 84 eb fb ff ff    	je     c0036ed0 <_svfiprintf_r+0x180>
c00372e5:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c00372ec:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c00372f2:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c00372f9:	e9 d2 fb ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x180>
c00372fe:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0037305:	89 d0                	mov    %edx,%eax
c0037307:	e9 3a fb ff ff       	jmp    c0036e46 <_svfiprintf_r+0xf6>
c003730c:	89 f8                	mov    %edi,%eax
c003730e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037311:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037317:	e9 0f fe ff ff       	jmp    c003712b <_svfiprintf_r+0x3db>
c003731c:	8b 45 14             	mov    0x14(%ebp),%eax
c003731f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037322:	89 55 10             	mov    %edx,0x10(%ebp)
c0037325:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003732c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037333:	00 00 00 
c0037336:	8b 00                	mov    (%eax),%eax
c0037338:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003733f:	00 00 00 
c0037342:	88 45 80             	mov    %al,-0x80(%ebp)
c0037345:	8b 45 14             	mov    0x14(%ebp),%eax
c0037348:	83 c0 04             	add    $0x4,%eax
c003734b:	89 45 14             	mov    %eax,0x14(%ebp)
c003734e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037355:	00 00 00 
c0037358:	e9 05 fc ff ff       	jmp    c0036f62 <_svfiprintf_r+0x212>
c003735d:	89 fb                	mov    %edi,%ebx
c003735f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037362:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037368:	c7 85 44 ff ff ff 0e 	movl   $0xc003980e,-0xbc(%ebp)
c003736f:	98 03 c0 
c0037372:	e9 33 ff ff ff       	jmp    c00372aa <_svfiprintf_r+0x55a>
c0037377:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c003737e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037385:	89 55 10             	mov    %edx,0x10(%ebp)
c0037388:	8b 45 14             	mov    0x14(%ebp),%eax
c003738b:	75 39                	jne    c00373c6 <_svfiprintf_r+0x676>
c003738d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037394:	74 30                	je     c00373c6 <_svfiprintf_r+0x676>
c0037396:	0f b7 08             	movzwl (%eax),%ecx
c0037399:	83 c0 04             	add    $0x4,%eax
c003739c:	ba 01 00 00 00       	mov    $0x1,%edx
c00373a1:	89 45 14             	mov    %eax,0x14(%ebp)
c00373a4:	e9 27 fb ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x180>
c00373a9:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c00373b0:	89 d0                	mov    %edx,%eax
c00373b2:	e9 8f fa ff ff       	jmp    c0036e46 <_svfiprintf_r+0xf6>
c00373b7:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00373be:	89 55 10             	mov    %edx,0x10(%ebp)
c00373c1:	8b 45 14             	mov    0x14(%ebp),%eax
c00373c4:	74 c7                	je     c003738d <_svfiprintf_r+0x63d>
c00373c6:	8b 08                	mov    (%eax),%ecx
c00373c8:	83 c0 04             	add    $0x4,%eax
c00373cb:	ba 01 00 00 00       	mov    $0x1,%edx
c00373d0:	89 45 14             	mov    %eax,0x14(%ebp)
c00373d3:	e9 f8 fa ff ff       	jmp    c0036ed0 <_svfiprintf_r+0x180>
c00373d8:	8b 45 14             	mov    0x14(%ebp),%eax
c00373db:	89 55 10             	mov    %edx,0x10(%ebp)
c00373de:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00373e5:	8b 18                	mov    (%eax),%ebx
c00373e7:	8d 50 04             	lea    0x4(%eax),%edx
c00373ea:	85 db                	test   %ebx,%ebx
c00373ec:	0f 84 cc 06 00 00    	je     c0037abe <_svfiprintf_r+0xd6e>
c00373f2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00373f8:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c00373fe:	85 ff                	test   %edi,%edi
c0037400:	0f 88 59 06 00 00    	js     c0037a5f <_svfiprintf_r+0xd0f>
c0037406:	89 7c 24 08          	mov    %edi,0x8(%esp)
c003740a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037411:	00 
c0037412:	89 1c 24             	mov    %ebx,(%esp)
c0037415:	e8 06 e7 ff ff       	call   c0035b20 <memchr>
c003741a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037420:	85 c0                	test   %eax,%eax
c0037422:	0f 84 c5 06 00 00    	je     c0037aed <_svfiprintf_r+0xd9d>
c0037428:	29 d8                	sub    %ebx,%eax
c003742a:	39 f8                	cmp    %edi,%eax
c003742c:	0f 4f c7             	cmovg  %edi,%eax
c003742f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037436:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003743c:	89 55 14             	mov    %edx,0x14(%ebp)
c003743f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037446:	00 00 00 
c0037449:	e9 f2 fa ff ff       	jmp    c0036f40 <_svfiprintf_r+0x1f0>
c003744e:	89 f8                	mov    %edi,%eax
c0037450:	84 c0                	test   %al,%al
c0037452:	b8 20 00 00 00       	mov    $0x20,%eax
c0037457:	0f 44 f8             	cmove  %eax,%edi
c003745a:	89 d0                	mov    %edx,%eax
c003745c:	e9 e5 f9 ff ff       	jmp    c0036e46 <_svfiprintf_r+0xf6>
c0037461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037468:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003746e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037474:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c003747b:	74 2e                	je     c00374ab <_svfiprintf_r+0x75b>
c003747d:	83 c0 01             	add    $0x1,%eax
c0037480:	83 c2 01             	add    $0x1,%edx
c0037483:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037489:	83 c6 08             	add    $0x8,%esi
c003748c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003748f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037496:	83 f8 07             	cmp    $0x7,%eax
c0037499:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003749f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374a5:	0f 8f b5 04 00 00    	jg     c0037960 <_svfiprintf_r+0xc10>
c00374ab:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c00374b1:	85 c9                	test   %ecx,%ecx
c00374b3:	74 2e                	je     c00374e3 <_svfiprintf_r+0x793>
c00374b5:	83 c0 01             	add    $0x1,%eax
c00374b8:	83 c2 02             	add    $0x2,%edx
c00374bb:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c00374c1:	83 c6 08             	add    $0x8,%esi
c00374c4:	89 4e f8             	mov    %ecx,-0x8(%esi)
c00374c7:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c00374ce:	83 f8 07             	cmp    $0x7,%eax
c00374d1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00374d7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374dd:	0f 8f 45 04 00 00    	jg     c0037928 <_svfiprintf_r+0xbd8>
c00374e3:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c00374ea:	00 00 00 
c00374ed:	0f 84 9d 02 00 00    	je     c0037790 <_svfiprintf_r+0xa40>
c00374f3:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00374f9:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c00374ff:	85 ff                	test   %edi,%edi
c0037501:	0f 8e e1 00 00 00    	jle    c00375e8 <_svfiprintf_r+0x898>
c0037507:	83 ff 10             	cmp    $0x10,%edi
c003750a:	0f 8e 7c 00 00 00    	jle    c003758c <_svfiprintf_r+0x83c>
c0037510:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0037516:	89 f1                	mov    %esi,%ecx
c0037518:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003751b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003751e:	eb 08                	jmp    c0037528 <_svfiprintf_r+0x7d8>
c0037520:	83 ef 10             	sub    $0x10,%edi
c0037523:	83 ff 10             	cmp    $0x10,%edi
c0037526:	7e 5c                	jle    c0037584 <_svfiprintf_r+0x834>
c0037528:	83 c0 01             	add    $0x1,%eax
c003752b:	83 c2 10             	add    $0x10,%edx
c003752e:	c7 01 ec 9c 03 c0    	movl   $0xc0039cec,(%ecx)
c0037534:	83 c1 08             	add    $0x8,%ecx
c0037537:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003753e:	83 f8 07             	cmp    $0x7,%eax
c0037541:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037547:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003754d:	7e d1                	jle    c0037520 <_svfiprintf_r+0x7d0>
c003754f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037555:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037559:	89 74 24 04          	mov    %esi,0x4(%esp)
c003755d:	89 1c 24             	mov    %ebx,(%esp)
c0037560:	e8 fb f5 ff ff       	call   c0036b60 <__ssprint_r>
c0037565:	85 c0                	test   %eax,%eax
c0037567:	0f 85 eb 01 00 00    	jne    c0037758 <_svfiprintf_r+0xa08>
c003756d:	83 ef 10             	sub    $0x10,%edi
c0037570:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037576:	83 ff 10             	cmp    $0x10,%edi
c0037579:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003757f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037582:	7f a4                	jg     c0037528 <_svfiprintf_r+0x7d8>
c0037584:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003758a:	89 ce                	mov    %ecx,%esi
c003758c:	83 c0 01             	add    $0x1,%eax
c003758f:	01 fa                	add    %edi,%edx
c0037591:	c7 06 ec 9c 03 c0    	movl   $0xc0039cec,(%esi)
c0037597:	83 c6 08             	add    $0x8,%esi
c003759a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003759d:	83 f8 07             	cmp    $0x7,%eax
c00375a0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375a6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375ac:	7e 3a                	jle    c00375e8 <_svfiprintf_r+0x898>
c00375ae:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00375b4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00375b8:	8b 45 0c             	mov    0xc(%ebp),%eax
c00375bb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00375bf:	8b 45 08             	mov    0x8(%ebp),%eax
c00375c2:	89 04 24             	mov    %eax,(%esp)
c00375c5:	e8 96 f5 ff ff       	call   c0036b60 <__ssprint_r>
c00375ca:	85 c0                	test   %eax,%eax
c00375cc:	0f 85 86 01 00 00    	jne    c0037758 <_svfiprintf_r+0xa08>
c00375d2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00375d8:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00375db:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00375e8:	89 1e                	mov    %ebx,(%esi)
c00375ea:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c00375f0:	83 c0 01             	add    $0x1,%eax
c00375f3:	83 c6 08             	add    $0x8,%esi
c00375f6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375fc:	89 5e fc             	mov    %ebx,-0x4(%esi)
c00375ff:	01 da                	add    %ebx,%edx
c0037601:	83 f8 07             	cmp    $0x7,%eax
c0037604:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003760a:	0f 8f 80 02 00 00    	jg     c0037890 <_svfiprintf_r+0xb40>
c0037610:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0037617:	0f 84 b9 00 00 00    	je     c00376d6 <_svfiprintf_r+0x986>
c003761d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037623:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037629:	85 ff                	test   %edi,%edi
c003762b:	0f 8e a5 00 00 00    	jle    c00376d6 <_svfiprintf_r+0x986>
c0037631:	83 ff 10             	cmp    $0x10,%edi
c0037634:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003763a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0037640:	7e 71                	jle    c00376b3 <_svfiprintf_r+0x963>
c0037642:	89 f1                	mov    %esi,%ecx
c0037644:	8b 75 08             	mov    0x8(%ebp),%esi
c0037647:	eb 0f                	jmp    c0037658 <_svfiprintf_r+0x908>
c0037649:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037650:	83 ef 10             	sub    $0x10,%edi
c0037653:	83 ff 10             	cmp    $0x10,%edi
c0037656:	7e 59                	jle    c00376b1 <_svfiprintf_r+0x961>
c0037658:	83 c0 01             	add    $0x1,%eax
c003765b:	83 c2 10             	add    $0x10,%edx
c003765e:	c7 01 fc 9c 03 c0    	movl   $0xc0039cfc,(%ecx)
c0037664:	83 c1 08             	add    $0x8,%ecx
c0037667:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003766e:	83 f8 07             	cmp    $0x7,%eax
c0037671:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037677:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003767d:	7e d1                	jle    c0037650 <_svfiprintf_r+0x900>
c003767f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037682:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037686:	89 34 24             	mov    %esi,(%esp)
c0037689:	89 44 24 04          	mov    %eax,0x4(%esp)
c003768d:	e8 ce f4 ff ff       	call   c0036b60 <__ssprint_r>
c0037692:	85 c0                	test   %eax,%eax
c0037694:	0f 85 be 00 00 00    	jne    c0037758 <_svfiprintf_r+0xa08>
c003769a:	83 ef 10             	sub    $0x10,%edi
c003769d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00376a3:	83 ff 10             	cmp    $0x10,%edi
c00376a6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00376ac:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00376af:	7f a7                	jg     c0037658 <_svfiprintf_r+0x908>
c00376b1:	89 ce                	mov    %ecx,%esi
c00376b3:	83 c0 01             	add    $0x1,%eax
c00376b6:	01 fa                	add    %edi,%edx
c00376b8:	83 f8 07             	cmp    $0x7,%eax
c00376bb:	c7 06 fc 9c 03 c0    	movl   $0xc0039cfc,(%esi)
c00376c1:	89 7e 04             	mov    %edi,0x4(%esi)
c00376c4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00376ca:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00376d0:	0f 8f ee 02 00 00    	jg     c00379c4 <_svfiprintf_r+0xc74>
c00376d6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c00376dc:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c00376e2:	39 c6                	cmp    %eax,%esi
c00376e4:	0f 4d c6             	cmovge %esi,%eax
c00376e7:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c00376ed:	85 d2                	test   %edx,%edx
c00376ef:	0f 85 d3 01 00 00    	jne    c00378c8 <_svfiprintf_r+0xb78>
c00376f5:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00376fc:	00 00 00 
c00376ff:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037702:	e9 a7 f6 ff ff       	jmp    c0036dae <_svfiprintf_r+0x5e>
c0037707:	90                   	nop
c0037708:	84 d2                	test   %dl,%dl
c003770a:	75 6c                	jne    c0037778 <_svfiprintf_r+0xa28>
c003770c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037713:	74 63                	je     c0037778 <_svfiprintf_r+0xa28>
c0037715:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003771b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c003771e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0037722:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037728:	e9 13 f8 ff ff       	jmp    c0036f40 <_svfiprintf_r+0x1f0>
c003772d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0037733:	85 c0                	test   %eax,%eax
c0037735:	74 21                	je     c0037758 <_svfiprintf_r+0xa08>
c0037737:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003773d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037741:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037744:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037748:	8b 45 08             	mov    0x8(%ebp),%eax
c003774b:	89 04 24             	mov    %eax,(%esp)
c003774e:	e8 0d f4 ff ff       	call   c0036b60 <__ssprint_r>
c0037753:	90                   	nop
c0037754:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037758:	8b 75 0c             	mov    0xc(%ebp),%esi
c003775b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037760:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037764:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c003776b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037771:	5b                   	pop    %ebx
c0037772:	5e                   	pop    %esi
c0037773:	5f                   	pop    %edi
c0037774:	5d                   	pop    %ebp
c0037775:	c3                   	ret    
c0037776:	66 90                	xchg   %ax,%ax
c0037778:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c003777f:	00 00 00 
c0037782:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037785:	e9 b6 f7 ff ff       	jmp    c0036f40 <_svfiprintf_r+0x1f0>
c003778a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037790:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037796:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003779c:	85 ff                	test   %edi,%edi
c003779e:	0f 8e 4f fd ff ff    	jle    c00374f3 <_svfiprintf_r+0x7a3>
c00377a4:	83 ff 10             	cmp    $0x10,%edi
c00377a7:	0f 8e 7f 00 00 00    	jle    c003782c <_svfiprintf_r+0xadc>
c00377ad:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c00377b3:	89 f1                	mov    %esi,%ecx
c00377b5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00377b8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00377bb:	eb 0b                	jmp    c00377c8 <_svfiprintf_r+0xa78>
c00377bd:	8d 76 00             	lea    0x0(%esi),%esi
c00377c0:	83 ef 10             	sub    $0x10,%edi
c00377c3:	83 ff 10             	cmp    $0x10,%edi
c00377c6:	7e 5c                	jle    c0037824 <_svfiprintf_r+0xad4>
c00377c8:	83 c0 01             	add    $0x1,%eax
c00377cb:	83 c2 10             	add    $0x10,%edx
c00377ce:	c7 01 ec 9c 03 c0    	movl   $0xc0039cec,(%ecx)
c00377d4:	83 c1 08             	add    $0x8,%ecx
c00377d7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00377de:	83 f8 07             	cmp    $0x7,%eax
c00377e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377ed:	7e d1                	jle    c00377c0 <_svfiprintf_r+0xa70>
c00377ef:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377f5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377f9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00377fd:	89 1c 24             	mov    %ebx,(%esp)
c0037800:	e8 5b f3 ff ff       	call   c0036b60 <__ssprint_r>
c0037805:	85 c0                	test   %eax,%eax
c0037807:	0f 85 4b ff ff ff    	jne    c0037758 <_svfiprintf_r+0xa08>
c003780d:	83 ef 10             	sub    $0x10,%edi
c0037810:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037816:	83 ff 10             	cmp    $0x10,%edi
c0037819:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003781f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037822:	7f a4                	jg     c00377c8 <_svfiprintf_r+0xa78>
c0037824:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c003782a:	89 ce                	mov    %ecx,%esi
c003782c:	83 c0 01             	add    $0x1,%eax
c003782f:	01 fa                	add    %edi,%edx
c0037831:	c7 06 ec 9c 03 c0    	movl   $0xc0039cec,(%esi)
c0037837:	83 c6 08             	add    $0x8,%esi
c003783a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003783d:	83 f8 07             	cmp    $0x7,%eax
c0037840:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037846:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003784c:	0f 8e a1 fc ff ff    	jle    c00374f3 <_svfiprintf_r+0x7a3>
c0037852:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037858:	89 44 24 08          	mov    %eax,0x8(%esp)
c003785c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003785f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037863:	8b 45 08             	mov    0x8(%ebp),%eax
c0037866:	89 04 24             	mov    %eax,(%esp)
c0037869:	e8 f2 f2 ff ff       	call   c0036b60 <__ssprint_r>
c003786e:	85 c0                	test   %eax,%eax
c0037870:	0f 85 e2 fe ff ff    	jne    c0037758 <_svfiprintf_r+0xa08>
c0037876:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003787c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003787f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037885:	e9 69 fc ff ff       	jmp    c00374f3 <_svfiprintf_r+0x7a3>
c003788a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037890:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037896:	89 44 24 08          	mov    %eax,0x8(%esp)
c003789a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003789d:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378a1:	8b 45 08             	mov    0x8(%ebp),%eax
c00378a4:	89 04 24             	mov    %eax,(%esp)
c00378a7:	e8 b4 f2 ff ff       	call   c0036b60 <__ssprint_r>
c00378ac:	85 c0                	test   %eax,%eax
c00378ae:	0f 85 a4 fe ff ff    	jne    c0037758 <_svfiprintf_r+0xa08>
c00378b4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378ba:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378bd:	e9 4e fd ff ff       	jmp    c0037610 <_svfiprintf_r+0x8c0>
c00378c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00378c8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378ce:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378d2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378d5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378dc:	89 04 24             	mov    %eax,(%esp)
c00378df:	e8 7c f2 ff ff       	call   c0036b60 <__ssprint_r>
c00378e4:	85 c0                	test   %eax,%eax
c00378e6:	0f 84 09 fe ff ff    	je     c00376f5 <_svfiprintf_r+0x9a5>
c00378ec:	e9 67 fe ff ff       	jmp    c0037758 <_svfiprintf_r+0xa08>
c00378f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00378f8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378fe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037902:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037905:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037909:	8b 45 08             	mov    0x8(%ebp),%eax
c003790c:	89 04 24             	mov    %eax,(%esp)
c003790f:	e8 4c f2 ff ff       	call   c0036b60 <__ssprint_r>
c0037914:	85 c0                	test   %eax,%eax
c0037916:	0f 85 3c fe ff ff    	jne    c0037758 <_svfiprintf_r+0xa08>
c003791c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003791f:	e9 e9 f4 ff ff       	jmp    c0036e0d <_svfiprintf_r+0xbd>
c0037924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037928:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003792e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037932:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037935:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037939:	8b 45 08             	mov    0x8(%ebp),%eax
c003793c:	89 04 24             	mov    %eax,(%esp)
c003793f:	e8 1c f2 ff ff       	call   c0036b60 <__ssprint_r>
c0037944:	85 c0                	test   %eax,%eax
c0037946:	0f 85 0c fe ff ff    	jne    c0037758 <_svfiprintf_r+0xa08>
c003794c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037952:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037955:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003795b:	e9 83 fb ff ff       	jmp    c00374e3 <_svfiprintf_r+0x793>
c0037960:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037966:	89 44 24 08          	mov    %eax,0x8(%esp)
c003796a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003796d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037971:	8b 45 08             	mov    0x8(%ebp),%eax
c0037974:	89 04 24             	mov    %eax,(%esp)
c0037977:	e8 e4 f1 ff ff       	call   c0036b60 <__ssprint_r>
c003797c:	85 c0                	test   %eax,%eax
c003797e:	0f 85 d4 fd ff ff    	jne    c0037758 <_svfiprintf_r+0xa08>
c0037984:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003798a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003798d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037993:	e9 13 fb ff ff       	jmp    c00374ab <_svfiprintf_r+0x75b>
c0037998:	83 f9 09             	cmp    $0x9,%ecx
c003799b:	76 56                	jbe    c00379f3 <_svfiprintf_r+0xca3>
c003799d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c00379a0:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c00379a5:	83 eb 01             	sub    $0x1,%ebx
c00379a8:	f7 e1                	mul    %ecx
c00379aa:	c1 ea 03             	shr    $0x3,%edx
c00379ad:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00379b0:	01 c0                	add    %eax,%eax
c00379b2:	29 c1                	sub    %eax,%ecx
c00379b4:	83 c1 30             	add    $0x30,%ecx
c00379b7:	85 d2                	test   %edx,%edx
c00379b9:	88 0b                	mov    %cl,(%ebx)
c00379bb:	89 d1                	mov    %edx,%ecx
c00379bd:	75 e1                	jne    c00379a0 <_svfiprintf_r+0xc50>
c00379bf:	e9 71 f5 ff ff       	jmp    c0036f35 <_svfiprintf_r+0x1e5>
c00379c4:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00379ca:	89 44 24 08          	mov    %eax,0x8(%esp)
c00379ce:	8b 45 0c             	mov    0xc(%ebp),%eax
c00379d1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00379d5:	8b 45 08             	mov    0x8(%ebp),%eax
c00379d8:	89 04 24             	mov    %eax,(%esp)
c00379db:	e8 80 f1 ff ff       	call   c0036b60 <__ssprint_r>
c00379e0:	85 c0                	test   %eax,%eax
c00379e2:	0f 85 70 fd ff ff    	jne    c0037758 <_svfiprintf_r+0xa08>
c00379e8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00379ee:	e9 e3 fc ff ff       	jmp    c00376d6 <_svfiprintf_r+0x986>
c00379f3:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00379f9:	83 c1 30             	add    $0x30,%ecx
c00379fc:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00379ff:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037a02:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a08:	e9 33 f5 ff ff       	jmp    c0036f40 <_svfiprintf_r+0x1f0>
c0037a0d:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a10:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0037a16:	8b 00                	mov    (%eax),%eax
c0037a18:	89 18                	mov    %ebx,(%eax)
c0037a1a:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a1d:	83 c0 04             	add    $0x4,%eax
c0037a20:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a23:	e9 86 f3 ff ff       	jmp    c0036dae <_svfiprintf_r+0x5e>
c0037a28:	0f b7 0b             	movzwl (%ebx),%ecx
c0037a2b:	83 c3 04             	add    $0x4,%ebx
c0037a2e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037a31:	e9 95 f8 ff ff       	jmp    c00372cb <_svfiprintf_r+0x57b>
c0037a36:	0f bf 08             	movswl (%eax),%ecx
c0037a39:	83 c0 04             	add    $0x4,%eax
c0037a3c:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a3f:	85 c9                	test   %ecx,%ecx
c0037a41:	0f 89 0d f7 ff ff    	jns    c0037154 <_svfiprintf_r+0x404>
c0037a47:	f7 d9                	neg    %ecx
c0037a49:	bf 2d 00 00 00       	mov    $0x2d,%edi
c0037a4e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037a55:	ba 01 00 00 00       	mov    $0x1,%edx
c0037a5a:	e9 7a f4 ff ff       	jmp    c0036ed9 <_svfiprintf_r+0x189>
c0037a5f:	89 1c 24             	mov    %ebx,(%esp)
c0037a62:	e8 79 f0 ff ff       	call   c0036ae0 <strlen>
c0037a67:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037a6d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a74:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a7b:	00 00 00 
c0037a7e:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a81:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a87:	e9 b4 f4 ff ff       	jmp    c0036f40 <_svfiprintf_r+0x1f0>
c0037a8c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a8f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037a96:	00 
c0037a97:	89 04 24             	mov    %eax,(%esp)
c0037a9a:	e8 41 d9 ff ff       	call   c00353e0 <_malloc_r>
c0037a9f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037aa2:	85 c0                	test   %eax,%eax
c0037aa4:	89 06                	mov    %eax,(%esi)
c0037aa6:	89 46 10             	mov    %eax,0x10(%esi)
c0037aa9:	0f 84 a3 00 00 00    	je     c0037b52 <_svfiprintf_r+0xe02>
c0037aaf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037ab2:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037ab9:	e9 b2 f2 ff ff       	jmp    c0036d70 <_svfiprintf_r+0x20>
c0037abe:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037ac4:	b8 06 00 00 00       	mov    $0x6,%eax
c0037ac9:	89 55 14             	mov    %edx,0x14(%ebp)
c0037acc:	83 ff 06             	cmp    $0x6,%edi
c0037acf:	0f 46 c7             	cmovbe %edi,%eax
c0037ad2:	85 c0                	test   %eax,%eax
c0037ad4:	0f 49 d8             	cmovns %eax,%ebx
c0037ad7:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037add:	bb 30 98 03 c0       	mov    $0xc0039830,%ebx
c0037ae2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037ae8:	e9 61 f8 ff ff       	jmp    c003734e <_svfiprintf_r+0x5fe>
c0037aed:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037af3:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037afa:	89 55 14             	mov    %edx,0x14(%ebp)
c0037afd:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037b04:	00 00 00 
c0037b07:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037b0d:	e9 2e f4 ff ff       	jmp    c0036f40 <_svfiprintf_r+0x1f0>
c0037b12:	89 da                	mov    %ebx,%edx
c0037b14:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037b1b:	00 00 00 
c0037b1e:	e9 29 f3 ff ff       	jmp    c0036e4c <_svfiprintf_r+0xfc>
c0037b23:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037b26:	89 da                	mov    %ebx,%edx
c0037b28:	8b 45 14             	mov    0x14(%ebp),%eax
c0037b2b:	8b 09                	mov    (%ecx),%ecx
c0037b2d:	83 c0 04             	add    $0x4,%eax
c0037b30:	89 45 14             	mov    %eax,0x14(%ebp)
c0037b33:	85 c9                	test   %ecx,%ecx
c0037b35:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037b3b:	0f 89 26 f3 ff ff    	jns    c0036e67 <_svfiprintf_r+0x117>
c0037b41:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037b48:	ff ff ff 
c0037b4b:	89 d0                	mov    %edx,%eax
c0037b4d:	e9 f4 f2 ff ff       	jmp    c0036e46 <_svfiprintf_r+0xf6>
c0037b52:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b55:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037b5b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037b60:	e9 06 fc ff ff       	jmp    c003776b <_svfiprintf_r+0xa1b>
c0037b65:	66 90                	xchg   %ax,%ax
c0037b67:	66 90                	xchg   %ax,%ax
c0037b69:	66 90                	xchg   %ax,%ax
c0037b6b:	66 90                	xchg   %ax,%ax
c0037b6d:	66 90                	xchg   %ax,%ax
c0037b6f:	90                   	nop

c0037b70 <_calloc_r>:
c0037b70:	55                   	push   %ebp
c0037b71:	89 e5                	mov    %esp,%ebp
c0037b73:	53                   	push   %ebx
c0037b74:	83 ec 14             	sub    $0x14,%esp
c0037b77:	8b 45 10             	mov    0x10(%ebp),%eax
c0037b7a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037b7e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b82:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b85:	89 04 24             	mov    %eax,(%esp)
c0037b88:	e8 53 d8 ff ff       	call   c00353e0 <_malloc_r>
c0037b8d:	85 c0                	test   %eax,%eax
c0037b8f:	89 c3                	mov    %eax,%ebx
c0037b91:	0f 84 91 00 00 00    	je     c0037c28 <_calloc_r+0xb8>
c0037b97:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037b9a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037b9d:	83 e8 04             	sub    $0x4,%eax
c0037ba0:	83 f8 24             	cmp    $0x24,%eax
c0037ba3:	77 63                	ja     c0037c08 <_calloc_r+0x98>
c0037ba5:	83 f8 13             	cmp    $0x13,%eax
c0037ba8:	89 da                	mov    %ebx,%edx
c0037baa:	77 1c                	ja     c0037bc8 <_calloc_r+0x58>
c0037bac:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037bb2:	89 d8                	mov    %ebx,%eax
c0037bb4:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037bbb:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037bc2:	83 c4 14             	add    $0x14,%esp
c0037bc5:	5b                   	pop    %ebx
c0037bc6:	5d                   	pop    %ebp
c0037bc7:	c3                   	ret    
c0037bc8:	83 f8 1b             	cmp    $0x1b,%eax
c0037bcb:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037bd1:	8d 53 08             	lea    0x8(%ebx),%edx
c0037bd4:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037bdb:	76 cf                	jbe    c0037bac <_calloc_r+0x3c>
c0037bdd:	83 f8 24             	cmp    $0x24,%eax
c0037be0:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037be7:	8d 53 10             	lea    0x10(%ebx),%edx
c0037bea:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037bf1:	75 b9                	jne    c0037bac <_calloc_r+0x3c>
c0037bf3:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037bfa:	8d 53 18             	lea    0x18(%ebx),%edx
c0037bfd:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037c04:	eb a6                	jmp    c0037bac <_calloc_r+0x3c>
c0037c06:	66 90                	xchg   %ax,%ax
c0037c08:	89 1c 24             	mov    %ebx,(%esp)
c0037c0b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037c0f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c16:	00 
c0037c17:	e8 50 a2 ff ff       	call   c0031e6c <memset>
c0037c1c:	83 c4 14             	add    $0x14,%esp
c0037c1f:	89 d8                	mov    %ebx,%eax
c0037c21:	5b                   	pop    %ebx
c0037c22:	5d                   	pop    %ebp
c0037c23:	c3                   	ret    
c0037c24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037c28:	31 c0                	xor    %eax,%eax
c0037c2a:	eb 96                	jmp    c0037bc2 <_calloc_r+0x52>
c0037c2c:	66 90                	xchg   %ax,%ax
c0037c2e:	66 90                	xchg   %ax,%ax

c0037c30 <_malloc_trim_r>:
c0037c30:	55                   	push   %ebp
c0037c31:	89 e5                	mov    %esp,%ebp
c0037c33:	57                   	push   %edi
c0037c34:	56                   	push   %esi
c0037c35:	53                   	push   %ebx
c0037c36:	83 ec 1c             	sub    $0x1c,%esp
c0037c39:	8b 75 08             	mov    0x8(%ebp),%esi
c0037c3c:	89 34 24             	mov    %esi,(%esp)
c0037c3f:	e8 7c df ff ff       	call   c0035bc0 <__malloc_lock>
c0037c44:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037c49:	8b 58 04             	mov    0x4(%eax),%ebx
c0037c4c:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037c4f:	89 d8                	mov    %ebx,%eax
c0037c51:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037c54:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037c59:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037c5e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037c64:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037c6a:	7e 1c                	jle    c0037c88 <_malloc_trim_r+0x58>
c0037c6c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c73:	00 
c0037c74:	89 34 24             	mov    %esi,(%esp)
c0037c77:	e8 44 ed ff ff       	call   c00369c0 <_sbrk_r>
c0037c7c:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037c82:	01 da                	add    %ebx,%edx
c0037c84:	39 d0                	cmp    %edx,%eax
c0037c86:	74 18                	je     c0037ca0 <_malloc_trim_r+0x70>
c0037c88:	89 34 24             	mov    %esi,(%esp)
c0037c8b:	e8 40 df ff ff       	call   c0035bd0 <__malloc_unlock>
c0037c90:	83 c4 1c             	add    $0x1c,%esp
c0037c93:	31 c0                	xor    %eax,%eax
c0037c95:	5b                   	pop    %ebx
c0037c96:	5e                   	pop    %esi
c0037c97:	5f                   	pop    %edi
c0037c98:	5d                   	pop    %ebp
c0037c99:	c3                   	ret    
c0037c9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037ca0:	89 f8                	mov    %edi,%eax
c0037ca2:	f7 d8                	neg    %eax
c0037ca4:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037ca8:	89 34 24             	mov    %esi,(%esp)
c0037cab:	e8 10 ed ff ff       	call   c00369c0 <_sbrk_r>
c0037cb0:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037cb3:	74 2b                	je     c0037ce0 <_malloc_trim_r+0xb0>
c0037cb5:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037cba:	29 fb                	sub    %edi,%ebx
c0037cbc:	83 cb 01             	or     $0x1,%ebx
c0037cbf:	29 3d 20 00 07 c0    	sub    %edi,0xc0070020
c0037cc5:	89 58 04             	mov    %ebx,0x4(%eax)
c0037cc8:	89 34 24             	mov    %esi,(%esp)
c0037ccb:	e8 00 df ff ff       	call   c0035bd0 <__malloc_unlock>
c0037cd0:	83 c4 1c             	add    $0x1c,%esp
c0037cd3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037cd8:	5b                   	pop    %ebx
c0037cd9:	5e                   	pop    %esi
c0037cda:	5f                   	pop    %edi
c0037cdb:	5d                   	pop    %ebp
c0037cdc:	c3                   	ret    
c0037cdd:	8d 76 00             	lea    0x0(%esi),%esi
c0037ce0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037ce7:	00 
c0037ce8:	89 34 24             	mov    %esi,(%esp)
c0037ceb:	e8 d0 ec ff ff       	call   c00369c0 <_sbrk_r>
c0037cf0:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037cf6:	89 c1                	mov    %eax,%ecx
c0037cf8:	29 d1                	sub    %edx,%ecx
c0037cfa:	83 f9 0f             	cmp    $0xf,%ecx
c0037cfd:	7e 89                	jle    c0037c88 <_malloc_trim_r+0x58>
c0037cff:	2b 05 20 d5 03 c0    	sub    0xc003d520,%eax
c0037d05:	83 c9 01             	or     $0x1,%ecx
c0037d08:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d0b:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0037d10:	e9 73 ff ff ff       	jmp    c0037c88 <_malloc_trim_r+0x58>
c0037d15:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037d19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037d20 <_free_r>:
c0037d20:	55                   	push   %ebp
c0037d21:	89 e5                	mov    %esp,%ebp
c0037d23:	57                   	push   %edi
c0037d24:	56                   	push   %esi
c0037d25:	53                   	push   %ebx
c0037d26:	83 ec 1c             	sub    $0x1c,%esp
c0037d29:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037d2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037d2f:	85 f6                	test   %esi,%esi
c0037d31:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037d34:	0f 84 fe 00 00 00    	je     c0037e38 <_free_r+0x118>
c0037d3a:	89 04 24             	mov    %eax,(%esp)
c0037d3d:	e8 7e de ff ff       	call   c0035bc0 <__malloc_lock>
c0037d42:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037d45:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037d48:	89 f8                	mov    %edi,%eax
c0037d4a:	83 e0 fe             	and    $0xfffffffe,%eax
c0037d4d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037d50:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037d53:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037d56:	39 0d 48 d5 03 c0    	cmp    %ecx,0xc003d548
c0037d5c:	0f 84 0e 01 00 00    	je     c0037e70 <_free_r+0x150>
c0037d62:	83 e7 01             	and    $0x1,%edi
c0037d65:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037d68:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037d6f:	75 1f                	jne    c0037d90 <_free_r+0x70>
c0037d71:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037d74:	29 f2                	sub    %esi,%edx
c0037d76:	01 f0                	add    %esi,%eax
c0037d78:	8b 72 08             	mov    0x8(%edx),%esi
c0037d7b:	81 fe 48 d5 03 c0    	cmp    $0xc003d548,%esi
c0037d81:	0f 84 39 01 00 00    	je     c0037ec0 <_free_r+0x1a0>
c0037d87:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037d8a:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037d8d:	89 77 08             	mov    %esi,0x8(%edi)
c0037d90:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037d95:	75 21                	jne    c0037db8 <_free_r+0x98>
c0037d97:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037d9a:	01 d8                	add    %ebx,%eax
c0037d9c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037d9f:	85 f6                	test   %esi,%esi
c0037da1:	75 0c                	jne    c0037daf <_free_r+0x8f>
c0037da3:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0037da9:	0f 84 21 01 00 00    	je     c0037ed0 <_free_r+0x1b0>
c0037daf:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037db2:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037db5:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037db8:	89 c1                	mov    %eax,%ecx
c0037dba:	83 c9 01             	or     $0x1,%ecx
c0037dbd:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037dc0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037dc3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037dc6:	85 c9                	test   %ecx,%ecx
c0037dc8:	75 56                	jne    c0037e20 <_free_r+0x100>
c0037dca:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037dcf:	76 6f                	jbe    c0037e40 <_free_r+0x120>
c0037dd1:	89 c1                	mov    %eax,%ecx
c0037dd3:	c1 e9 09             	shr    $0x9,%ecx
c0037dd6:	83 f9 04             	cmp    $0x4,%ecx
c0037dd9:	0f 87 21 01 00 00    	ja     c0037f00 <_free_r+0x1e0>
c0037ddf:	89 c1                	mov    %eax,%ecx
c0037de1:	c1 e9 06             	shr    $0x6,%ecx
c0037de4:	83 c1 38             	add    $0x38,%ecx
c0037de7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037dea:	8d 34 9d 40 d5 03 c0 	lea    -0x3ffc2ac0(,%ebx,4),%esi
c0037df1:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037df4:	39 f3                	cmp    %esi,%ebx
c0037df6:	0f 84 14 01 00 00    	je     c0037f10 <_free_r+0x1f0>
c0037dfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e00:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037e03:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037e06:	39 c8                	cmp    %ecx,%eax
c0037e08:	73 07                	jae    c0037e11 <_free_r+0xf1>
c0037e0a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037e0d:	39 de                	cmp    %ebx,%esi
c0037e0f:	75 ef                	jne    c0037e00 <_free_r+0xe0>
c0037e11:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037e14:	89 42 0c             	mov    %eax,0xc(%edx)
c0037e17:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037e1a:	89 50 08             	mov    %edx,0x8(%eax)
c0037e1d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037e20:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e23:	89 45 08             	mov    %eax,0x8(%ebp)
c0037e26:	83 c4 1c             	add    $0x1c,%esp
c0037e29:	5b                   	pop    %ebx
c0037e2a:	5e                   	pop    %esi
c0037e2b:	5f                   	pop    %edi
c0037e2c:	5d                   	pop    %ebp
c0037e2d:	e9 9e dd ff ff       	jmp    c0035bd0 <__malloc_unlock>
c0037e32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037e38:	83 c4 1c             	add    $0x1c,%esp
c0037e3b:	5b                   	pop    %ebx
c0037e3c:	5e                   	pop    %esi
c0037e3d:	5f                   	pop    %edi
c0037e3e:	5d                   	pop    %ebp
c0037e3f:	c3                   	ret    
c0037e40:	c1 e8 03             	shr    $0x3,%eax
c0037e43:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037e48:	89 c1                	mov    %eax,%ecx
c0037e4a:	c1 f9 02             	sar    $0x2,%ecx
c0037e4d:	8d 04 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%eax
c0037e54:	d3 e3                	shl    %cl,%ebx
c0037e56:	8b 48 08             	mov    0x8(%eax),%ecx
c0037e59:	09 1d 44 d5 03 c0    	or     %ebx,0xc003d544
c0037e5f:	89 42 0c             	mov    %eax,0xc(%edx)
c0037e62:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037e65:	89 50 08             	mov    %edx,0x8(%eax)
c0037e68:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037e6b:	eb b3                	jmp    c0037e20 <_free_r+0x100>
c0037e6d:	8d 76 00             	lea    0x0(%esi),%esi
c0037e70:	01 d8                	add    %ebx,%eax
c0037e72:	83 e7 01             	and    $0x1,%edi
c0037e75:	75 13                	jne    c0037e8a <_free_r+0x16a>
c0037e77:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037e7a:	29 ca                	sub    %ecx,%edx
c0037e7c:	01 c8                	add    %ecx,%eax
c0037e7e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037e81:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037e84:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037e87:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037e8a:	89 c1                	mov    %eax,%ecx
c0037e8c:	83 c9 01             	or     $0x1,%ecx
c0037e8f:	3b 05 24 d5 03 c0    	cmp    0xc003d524,%eax
c0037e95:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e98:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0037e9e:	72 80                	jb     c0037e20 <_free_r+0x100>
c0037ea0:	a1 50 00 07 c0       	mov    0xc0070050,%eax
c0037ea5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037ea9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037eac:	89 04 24             	mov    %eax,(%esp)
c0037eaf:	e8 7c fd ff ff       	call   c0037c30 <_malloc_trim_r>
c0037eb4:	e9 67 ff ff ff       	jmp    c0037e20 <_free_r+0x100>
c0037eb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037ec0:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037ec7:	e9 c4 fe ff ff       	jmp    c0037d90 <_free_r+0x70>
c0037ecc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037ed0:	89 c1                	mov    %eax,%ecx
c0037ed2:	83 c9 01             	or     $0x1,%ecx
c0037ed5:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c0037edb:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0037ee1:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0037ee8:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0037eef:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037ef2:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037ef5:	e9 26 ff ff ff       	jmp    c0037e20 <_free_r+0x100>
c0037efa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037f00:	83 f9 14             	cmp    $0x14,%ecx
c0037f03:	77 23                	ja     c0037f28 <_free_r+0x208>
c0037f05:	83 c1 5b             	add    $0x5b,%ecx
c0037f08:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f0b:	e9 da fe ff ff       	jmp    c0037dea <_free_r+0xca>
c0037f10:	c1 f9 02             	sar    $0x2,%ecx
c0037f13:	b8 01 00 00 00       	mov    $0x1,%eax
c0037f18:	d3 e0                	shl    %cl,%eax
c0037f1a:	09 05 44 d5 03 c0    	or     %eax,0xc003d544
c0037f20:	89 d8                	mov    %ebx,%eax
c0037f22:	e9 ed fe ff ff       	jmp    c0037e14 <_free_r+0xf4>
c0037f27:	90                   	nop
c0037f28:	83 f9 54             	cmp    $0x54,%ecx
c0037f2b:	77 10                	ja     c0037f3d <_free_r+0x21d>
c0037f2d:	89 c1                	mov    %eax,%ecx
c0037f2f:	c1 e9 0c             	shr    $0xc,%ecx
c0037f32:	83 c1 6e             	add    $0x6e,%ecx
c0037f35:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f38:	e9 ad fe ff ff       	jmp    c0037dea <_free_r+0xca>
c0037f3d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037f43:	77 10                	ja     c0037f55 <_free_r+0x235>
c0037f45:	89 c1                	mov    %eax,%ecx
c0037f47:	c1 e9 0f             	shr    $0xf,%ecx
c0037f4a:	83 c1 77             	add    $0x77,%ecx
c0037f4d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f50:	e9 95 fe ff ff       	jmp    c0037dea <_free_r+0xca>
c0037f55:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037f5b:	77 10                	ja     c0037f6d <_free_r+0x24d>
c0037f5d:	89 c1                	mov    %eax,%ecx
c0037f5f:	c1 e9 12             	shr    $0x12,%ecx
c0037f62:	83 c1 7c             	add    $0x7c,%ecx
c0037f65:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f68:	e9 7d fe ff ff       	jmp    c0037dea <_free_r+0xca>
c0037f6d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037f72:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037f77:	e9 6e fe ff ff       	jmp    c0037dea <_free_r+0xca>
c0037f7c:	66 90                	xchg   %ax,%ax
c0037f7e:	66 90                	xchg   %ax,%ax

c0037f80 <memmove>:
c0037f80:	55                   	push   %ebp
c0037f81:	89 e5                	mov    %esp,%ebp
c0037f83:	56                   	push   %esi
c0037f84:	57                   	push   %edi
c0037f85:	53                   	push   %ebx
c0037f86:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037f89:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037f8c:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037f8f:	fc                   	cld    
c0037f90:	39 fe                	cmp    %edi,%esi
c0037f92:	73 43                	jae    c0037fd7 <memmove+0x57>
c0037f94:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037f98:	39 df                	cmp    %ebx,%edi
c0037f9a:	77 3b                	ja     c0037fd7 <memmove+0x57>
c0037f9c:	01 ce                	add    %ecx,%esi
c0037f9e:	01 cf                	add    %ecx,%edi
c0037fa0:	fd                   	std    
c0037fa1:	83 f9 08             	cmp    $0x8,%ecx
c0037fa4:	76 2b                	jbe    c0037fd1 <memmove+0x51>
c0037fa6:	89 fa                	mov    %edi,%edx
c0037fa8:	89 cb                	mov    %ecx,%ebx
c0037faa:	83 e2 03             	and    $0x3,%edx
c0037fad:	74 0c                	je     c0037fbb <memmove+0x3b>
c0037faf:	89 d1                	mov    %edx,%ecx
c0037fb1:	4e                   	dec    %esi
c0037fb2:	4f                   	dec    %edi
c0037fb3:	29 cb                	sub    %ecx,%ebx
c0037fb5:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fb7:	89 d9                	mov    %ebx,%ecx
c0037fb9:	46                   	inc    %esi
c0037fba:	47                   	inc    %edi
c0037fbb:	c1 e9 02             	shr    $0x2,%ecx
c0037fbe:	83 ee 04             	sub    $0x4,%esi
c0037fc1:	83 ef 04             	sub    $0x4,%edi
c0037fc4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037fc6:	83 c6 04             	add    $0x4,%esi
c0037fc9:	83 c7 04             	add    $0x4,%edi
c0037fcc:	89 d9                	mov    %ebx,%ecx
c0037fce:	83 e1 03             	and    $0x3,%ecx
c0037fd1:	4e                   	dec    %esi
c0037fd2:	4f                   	dec    %edi
c0037fd3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fd5:	eb 2a                	jmp    c0038001 <memmove+0x81>
c0037fd7:	83 f9 08             	cmp    $0x8,%ecx
c0037fda:	76 23                	jbe    c0037fff <memmove+0x7f>
c0037fdc:	89 fa                	mov    %edi,%edx
c0037fde:	89 cb                	mov    %ecx,%ebx
c0037fe0:	83 e2 03             	and    $0x3,%edx
c0037fe3:	74 10                	je     c0037ff5 <memmove+0x75>
c0037fe5:	b9 04 00 00 00       	mov    $0x4,%ecx
c0037fea:	29 d1                	sub    %edx,%ecx
c0037fec:	83 e1 03             	and    $0x3,%ecx
c0037fef:	29 cb                	sub    %ecx,%ebx
c0037ff1:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037ff3:	89 d9                	mov    %ebx,%ecx
c0037ff5:	c1 e9 02             	shr    $0x2,%ecx
c0037ff8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037ffa:	89 d9                	mov    %ebx,%ecx
c0037ffc:	83 e1 03             	and    $0x3,%ecx
c0037fff:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0038001:	8b 45 08             	mov    0x8(%ebp),%eax
c0038004:	fc                   	cld    
c0038005:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0038008:	5b                   	pop    %ebx
c0038009:	5f                   	pop    %edi
c003800a:	5e                   	pop    %esi
c003800b:	c9                   	leave  
c003800c:	c3                   	ret    
c003800d:	66 90                	xchg   %ax,%ax
c003800f:	90                   	nop

c0038010 <_realloc_r>:
c0038010:	55                   	push   %ebp
c0038011:	89 e5                	mov    %esp,%ebp
c0038013:	57                   	push   %edi
c0038014:	56                   	push   %esi
c0038015:	53                   	push   %ebx
c0038016:	83 ec 3c             	sub    $0x3c,%esp
c0038019:	8b 45 08             	mov    0x8(%ebp),%eax
c003801c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003801f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038022:	8b 45 10             	mov    0x10(%ebp),%eax
c0038025:	85 ff                	test   %edi,%edi
c0038027:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003802a:	0f 84 50 02 00 00    	je     c0038280 <_realloc_r+0x270>
c0038030:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038033:	8d 77 f8             	lea    -0x8(%edi),%esi
c0038036:	89 04 24             	mov    %eax,(%esp)
c0038039:	e8 82 db ff ff       	call   c0035bc0 <__malloc_lock>
c003803e:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038041:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038044:	89 c3                	mov    %eax,%ebx
c0038046:	8d 51 0b             	lea    0xb(%ecx),%edx
c0038049:	83 e3 fc             	and    $0xfffffffc,%ebx
c003804c:	83 fa 16             	cmp    $0x16,%edx
c003804f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038052:	0f 87 00 01 00 00    	ja     c0038158 <_realloc_r+0x148>
c0038058:	31 d2                	xor    %edx,%edx
c003805a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0038061:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0038068:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003806b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c003806e:	0f 82 1c 02 00 00    	jb     c0038290 <_realloc_r+0x280>
c0038074:	84 d2                	test   %dl,%dl
c0038076:	0f 85 14 02 00 00    	jne    c0038290 <_realloc_r+0x280>
c003807c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003807f:	0f 8d eb 00 00 00    	jge    c0038170 <_realloc_r+0x160>
c0038085:	8b 0d 48 d5 03 c0    	mov    0xc003d548,%ecx
c003808b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003808e:	39 d1                	cmp    %edx,%ecx
c0038090:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038093:	0f 84 6f 02 00 00    	je     c0038308 <_realloc_r+0x2f8>
c0038099:	8b 4a 04             	mov    0x4(%edx),%ecx
c003809c:	89 c8                	mov    %ecx,%eax
c003809e:	83 e0 fe             	and    $0xfffffffe,%eax
c00380a1:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c00380a6:	0f 84 f4 00 00 00    	je     c00381a0 <_realloc_r+0x190>
c00380ac:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c00380b3:	31 d2                	xor    %edx,%edx
c00380b5:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c00380b9:	0f 85 39 01 00 00    	jne    c00381f8 <_realloc_r+0x1e8>
c00380bf:	89 f1                	mov    %esi,%ecx
c00380c1:	2b 4f f8             	sub    -0x8(%edi),%ecx
c00380c4:	8b 41 04             	mov    0x4(%ecx),%eax
c00380c7:	83 e0 fc             	and    $0xfffffffc,%eax
c00380ca:	85 d2                	test   %edx,%edx
c00380cc:	0f 84 f6 02 00 00    	je     c00383c8 <_realloc_r+0x3b8>
c00380d2:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c00380d5:	0f 84 f5 02 00 00    	je     c00383d0 <_realloc_r+0x3c0>
c00380db:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00380de:	8b 55 d0             	mov    -0x30(%ebp),%edx
c00380e1:	01 d8                	add    %ebx,%eax
c00380e3:	01 c2                	add    %eax,%edx
c00380e5:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00380e8:	89 55 d0             	mov    %edx,-0x30(%ebp)
c00380eb:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00380ee:	0f 8c ac 01 00 00    	jl     c00382a0 <_realloc_r+0x290>
c00380f4:	8b 42 0c             	mov    0xc(%edx),%eax
c00380f7:	83 eb 04             	sub    $0x4,%ebx
c00380fa:	8b 52 08             	mov    0x8(%edx),%edx
c00380fd:	83 fb 24             	cmp    $0x24,%ebx
c0038100:	8d 71 08             	lea    0x8(%ecx),%esi
c0038103:	89 42 0c             	mov    %eax,0xc(%edx)
c0038106:	89 50 08             	mov    %edx,0x8(%eax)
c0038109:	8b 41 0c             	mov    0xc(%ecx),%eax
c003810c:	8b 51 08             	mov    0x8(%ecx),%edx
c003810f:	89 42 0c             	mov    %eax,0xc(%edx)
c0038112:	89 50 08             	mov    %edx,0x8(%eax)
c0038115:	0f 87 85 03 00 00    	ja     c00384a0 <_realloc_r+0x490>
c003811b:	83 fb 13             	cmp    $0x13,%ebx
c003811e:	89 f0                	mov    %esi,%eax
c0038120:	76 1a                	jbe    c003813c <_realloc_r+0x12c>
c0038122:	8b 07                	mov    (%edi),%eax
c0038124:	83 fb 1b             	cmp    $0x1b,%ebx
c0038127:	89 41 08             	mov    %eax,0x8(%ecx)
c003812a:	8b 47 04             	mov    0x4(%edi),%eax
c003812d:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038130:	0f 87 8f 03 00 00    	ja     c00384c5 <_realloc_r+0x4b5>
c0038136:	8d 41 10             	lea    0x10(%ecx),%eax
c0038139:	83 c7 08             	add    $0x8,%edi
c003813c:	8b 17                	mov    (%edi),%edx
c003813e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038141:	89 10                	mov    %edx,(%eax)
c0038143:	8b 57 04             	mov    0x4(%edi),%edx
c0038146:	89 50 04             	mov    %edx,0x4(%eax)
c0038149:	8b 57 08             	mov    0x8(%edi),%edx
c003814c:	89 f7                	mov    %esi,%edi
c003814e:	89 ce                	mov    %ecx,%esi
c0038150:	89 50 08             	mov    %edx,0x8(%eax)
c0038153:	8b 41 04             	mov    0x4(%ecx),%eax
c0038156:	eb 1b                	jmp    c0038173 <_realloc_r+0x163>
c0038158:	83 e2 f8             	and    $0xfffffff8,%edx
c003815b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c003815e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038161:	c1 ea 1f             	shr    $0x1f,%edx
c0038164:	e9 ff fe ff ff       	jmp    c0038068 <_realloc_r+0x58>
c0038169:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038170:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038173:	89 da                	mov    %ebx,%edx
c0038175:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038178:	83 fa 0f             	cmp    $0xf,%edx
c003817b:	77 4b                	ja     c00381c8 <_realloc_r+0x1b8>
c003817d:	83 e0 01             	and    $0x1,%eax
c0038180:	09 d8                	or     %ebx,%eax
c0038182:	89 46 04             	mov    %eax,0x4(%esi)
c0038185:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003818a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003818d:	89 04 24             	mov    %eax,(%esp)
c0038190:	e8 3b da ff ff       	call   c0035bd0 <__malloc_unlock>
c0038195:	89 f8                	mov    %edi,%eax
c0038197:	83 c4 3c             	add    $0x3c,%esp
c003819a:	5b                   	pop    %ebx
c003819b:	5e                   	pop    %esi
c003819c:	5f                   	pop    %edi
c003819d:	5d                   	pop    %ebp
c003819e:	c3                   	ret    
c003819f:	90                   	nop
c00381a0:	83 e1 fc             	and    $0xfffffffc,%ecx
c00381a3:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00381a6:	01 d9                	add    %ebx,%ecx
c00381a8:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c00381ab:	0f 8c 04 ff ff ff    	jl     c00380b5 <_realloc_r+0xa5>
c00381b1:	8b 5a 0c             	mov    0xc(%edx),%ebx
c00381b4:	8b 52 08             	mov    0x8(%edx),%edx
c00381b7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00381ba:	89 5a 0c             	mov    %ebx,0xc(%edx)
c00381bd:	89 53 08             	mov    %edx,0x8(%ebx)
c00381c0:	89 cb                	mov    %ecx,%ebx
c00381c2:	eb af                	jmp    c0038173 <_realloc_r+0x163>
c00381c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00381c8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00381cb:	83 e0 01             	and    $0x1,%eax
c00381ce:	09 d8                	or     %ebx,%eax
c00381d0:	89 46 04             	mov    %eax,0x4(%esi)
c00381d3:	89 d0                	mov    %edx,%eax
c00381d5:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c00381d8:	83 c8 01             	or     $0x1,%eax
c00381db:	89 41 04             	mov    %eax,0x4(%ecx)
c00381de:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381e1:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c00381e6:	83 c1 08             	add    $0x8,%ecx
c00381e9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00381ed:	89 04 24             	mov    %eax,(%esp)
c00381f0:	e8 2b fb ff ff       	call   c0037d20 <_free_r>
c00381f5:	eb 93                	jmp    c003818a <_realloc_r+0x17a>
c00381f7:	90                   	nop
c00381f8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00381fb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00381ff:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038202:	89 04 24             	mov    %eax,(%esp)
c0038205:	e8 d6 d1 ff ff       	call   c00353e0 <_malloc_r>
c003820a:	85 c0                	test   %eax,%eax
c003820c:	89 c1                	mov    %eax,%ecx
c003820e:	0f 84 65 03 00 00    	je     c0038579 <_realloc_r+0x569>
c0038214:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038217:	8d 51 f8             	lea    -0x8(%ecx),%edx
c003821a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c003821d:	89 c2                	mov    %eax,%edx
c003821f:	83 e2 fe             	and    $0xfffffffe,%edx
c0038222:	01 f2                	add    %esi,%edx
c0038224:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0038227:	0f 84 63 02 00 00    	je     c0038490 <_realloc_r+0x480>
c003822d:	83 eb 04             	sub    $0x4,%ebx
c0038230:	83 fb 24             	cmp    $0x24,%ebx
c0038233:	0f 87 6f 01 00 00    	ja     c00383a8 <_realloc_r+0x398>
c0038239:	83 fb 13             	cmp    $0x13,%ebx
c003823c:	0f 87 ee 00 00 00    	ja     c0038330 <_realloc_r+0x320>
c0038242:	89 c8                	mov    %ecx,%eax
c0038244:	89 fa                	mov    %edi,%edx
c0038246:	8b 1a                	mov    (%edx),%ebx
c0038248:	89 18                	mov    %ebx,(%eax)
c003824a:	8b 5a 04             	mov    0x4(%edx),%ebx
c003824d:	89 58 04             	mov    %ebx,0x4(%eax)
c0038250:	8b 52 08             	mov    0x8(%edx),%edx
c0038253:	89 50 08             	mov    %edx,0x8(%eax)
c0038256:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0038259:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003825d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038260:	89 34 24             	mov    %esi,(%esp)
c0038263:	e8 b8 fa ff ff       	call   c0037d20 <_free_r>
c0038268:	89 34 24             	mov    %esi,(%esp)
c003826b:	e8 60 d9 ff ff       	call   c0035bd0 <__malloc_unlock>
c0038270:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038273:	83 c4 3c             	add    $0x3c,%esp
c0038276:	5b                   	pop    %ebx
c0038277:	5e                   	pop    %esi
c0038278:	5f                   	pop    %edi
c0038279:	89 c8                	mov    %ecx,%eax
c003827b:	5d                   	pop    %ebp
c003827c:	c3                   	ret    
c003827d:	8d 76 00             	lea    0x0(%esi),%esi
c0038280:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038283:	83 c4 3c             	add    $0x3c,%esp
c0038286:	5b                   	pop    %ebx
c0038287:	5e                   	pop    %esi
c0038288:	5f                   	pop    %edi
c0038289:	5d                   	pop    %ebp
c003828a:	e9 51 d1 ff ff       	jmp    c00353e0 <_malloc_r>
c003828f:	90                   	nop
c0038290:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038293:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038299:	31 c0                	xor    %eax,%eax
c003829b:	e9 f7 fe ff ff       	jmp    c0038197 <_realloc_r+0x187>
c00382a0:	89 c2                	mov    %eax,%edx
c00382a2:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00382a5:	0f 8c 4d ff ff ff    	jl     c00381f8 <_realloc_r+0x1e8>
c00382ab:	8b 71 08             	mov    0x8(%ecx),%esi
c00382ae:	83 eb 04             	sub    $0x4,%ebx
c00382b1:	8b 41 0c             	mov    0xc(%ecx),%eax
c00382b4:	83 fb 24             	cmp    $0x24,%ebx
c00382b7:	89 46 0c             	mov    %eax,0xc(%esi)
c00382ba:	89 70 08             	mov    %esi,0x8(%eax)
c00382bd:	8d 71 08             	lea    0x8(%ecx),%esi
c00382c0:	0f 87 88 00 00 00    	ja     c003834e <_realloc_r+0x33e>
c00382c6:	83 fb 13             	cmp    $0x13,%ebx
c00382c9:	89 f0                	mov    %esi,%eax
c00382cb:	76 1a                	jbe    c00382e7 <_realloc_r+0x2d7>
c00382cd:	8b 07                	mov    (%edi),%eax
c00382cf:	83 fb 1b             	cmp    $0x1b,%ebx
c00382d2:	89 41 08             	mov    %eax,0x8(%ecx)
c00382d5:	8b 47 04             	mov    0x4(%edi),%eax
c00382d8:	89 41 0c             	mov    %eax,0xc(%ecx)
c00382db:	0f 87 17 02 00 00    	ja     c00384f8 <_realloc_r+0x4e8>
c00382e1:	8d 41 10             	lea    0x10(%ecx),%eax
c00382e4:	83 c7 08             	add    $0x8,%edi
c00382e7:	8b 1f                	mov    (%edi),%ebx
c00382e9:	89 18                	mov    %ebx,(%eax)
c00382eb:	8b 5f 04             	mov    0x4(%edi),%ebx
c00382ee:	89 58 04             	mov    %ebx,0x4(%eax)
c00382f1:	8b 5f 08             	mov    0x8(%edi),%ebx
c00382f4:	89 f7                	mov    %esi,%edi
c00382f6:	89 ce                	mov    %ecx,%esi
c00382f8:	89 58 08             	mov    %ebx,0x8(%eax)
c00382fb:	89 d3                	mov    %edx,%ebx
c00382fd:	8b 41 04             	mov    0x4(%ecx),%eax
c0038300:	e9 6e fe ff ff       	jmp    c0038173 <_realloc_r+0x163>
c0038305:	8d 76 00             	lea    0x0(%esi),%esi
c0038308:	8b 45 cc             	mov    -0x34(%ebp),%eax
c003830b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003830e:	8b 48 04             	mov    0x4(%eax),%ecx
c0038311:	83 c2 10             	add    $0x10,%edx
c0038314:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038317:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c003831b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c003831e:	01 d9                	add    %ebx,%ecx
c0038320:	39 d1                	cmp    %edx,%ecx
c0038322:	7d 54                	jge    c0038378 <_realloc_r+0x368>
c0038324:	89 c2                	mov    %eax,%edx
c0038326:	e9 8a fd ff ff       	jmp    c00380b5 <_realloc_r+0xa5>
c003832b:	90                   	nop
c003832c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038330:	8b 07                	mov    (%edi),%eax
c0038332:	83 fb 1b             	cmp    $0x1b,%ebx
c0038335:	89 01                	mov    %eax,(%ecx)
c0038337:	8b 47 04             	mov    0x4(%edi),%eax
c003833a:	89 41 04             	mov    %eax,0x4(%ecx)
c003833d:	0f 87 2d 01 00 00    	ja     c0038470 <_realloc_r+0x460>
c0038343:	8d 41 08             	lea    0x8(%ecx),%eax
c0038346:	8d 57 08             	lea    0x8(%edi),%edx
c0038349:	e9 f8 fe ff ff       	jmp    c0038246 <_realloc_r+0x236>
c003834e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038352:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038356:	89 f7                	mov    %esi,%edi
c0038358:	89 34 24             	mov    %esi,(%esp)
c003835b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c003835e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038361:	e8 1a fc ff ff       	call   c0037f80 <memmove>
c0038366:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038369:	8b 55 d8             	mov    -0x28(%ebp),%edx
c003836c:	8b 41 04             	mov    0x4(%ecx),%eax
c003836f:	89 ce                	mov    %ecx,%esi
c0038371:	89 d3                	mov    %edx,%ebx
c0038373:	e9 fb fd ff ff       	jmp    c0038173 <_realloc_r+0x163>
c0038378:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003837b:	29 d9                	sub    %ebx,%ecx
c003837d:	01 de                	add    %ebx,%esi
c003837f:	83 c9 01             	or     $0x1,%ecx
c0038382:	89 35 48 d5 03 c0    	mov    %esi,0xc003d548
c0038388:	89 4e 04             	mov    %ecx,0x4(%esi)
c003838b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003838e:	83 e0 01             	and    $0x1,%eax
c0038391:	09 d8                	or     %ebx,%eax
c0038393:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038396:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038399:	89 04 24             	mov    %eax,(%esp)
c003839c:	e8 2f d8 ff ff       	call   c0035bd0 <__malloc_unlock>
c00383a1:	89 f8                	mov    %edi,%eax
c00383a3:	e9 ef fd ff ff       	jmp    c0038197 <_realloc_r+0x187>
c00383a8:	89 0c 24             	mov    %ecx,(%esp)
c00383ab:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00383af:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00383b3:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00383b6:	e8 c5 fb ff ff       	call   c0037f80 <memmove>
c00383bb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00383be:	e9 93 fe ff ff       	jmp    c0038256 <_realloc_r+0x246>
c00383c3:	90                   	nop
c00383c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00383c8:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c00383cb:	e9 d2 fe ff ff       	jmp    c00382a2 <_realloc_r+0x292>
c00383d0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c00383d3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00383d6:	01 d0                	add    %edx,%eax
c00383d8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00383db:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00383de:	83 c0 10             	add    $0x10,%eax
c00383e1:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c00383e4:	0f 8c b8 fe ff ff    	jl     c00382a2 <_realloc_r+0x292>
c00383ea:	8b 41 0c             	mov    0xc(%ecx),%eax
c00383ed:	83 eb 04             	sub    $0x4,%ebx
c00383f0:	8b 51 08             	mov    0x8(%ecx),%edx
c00383f3:	83 fb 24             	cmp    $0x24,%ebx
c00383f6:	8d 71 08             	lea    0x8(%ecx),%esi
c00383f9:	89 42 0c             	mov    %eax,0xc(%edx)
c00383fc:	89 50 08             	mov    %edx,0x8(%eax)
c00383ff:	0f 87 3d 01 00 00    	ja     c0038542 <_realloc_r+0x532>
c0038405:	83 fb 13             	cmp    $0x13,%ebx
c0038408:	89 f0                	mov    %esi,%eax
c003840a:	76 1a                	jbe    c0038426 <_realloc_r+0x416>
c003840c:	8b 07                	mov    (%edi),%eax
c003840e:	83 fb 1b             	cmp    $0x1b,%ebx
c0038411:	89 41 08             	mov    %eax,0x8(%ecx)
c0038414:	8b 47 04             	mov    0x4(%edi),%eax
c0038417:	89 41 0c             	mov    %eax,0xc(%ecx)
c003841a:	0f 87 3d 01 00 00    	ja     c003855d <_realloc_r+0x54d>
c0038420:	8d 41 10             	lea    0x10(%ecx),%eax
c0038423:	83 c7 08             	add    $0x8,%edi
c0038426:	8b 17                	mov    (%edi),%edx
c0038428:	89 10                	mov    %edx,(%eax)
c003842a:	8b 57 04             	mov    0x4(%edi),%edx
c003842d:	89 50 04             	mov    %edx,0x4(%eax)
c0038430:	8b 57 08             	mov    0x8(%edi),%edx
c0038433:	89 50 08             	mov    %edx,0x8(%eax)
c0038436:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0038439:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c003843c:	89 d8                	mov    %ebx,%eax
c003843e:	29 df                	sub    %ebx,%edi
c0038440:	01 c8                	add    %ecx,%eax
c0038442:	83 cf 01             	or     $0x1,%edi
c0038445:	a3 48 d5 03 c0       	mov    %eax,0xc003d548
c003844a:	89 78 04             	mov    %edi,0x4(%eax)
c003844d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038450:	83 e0 01             	and    $0x1,%eax
c0038453:	09 d8                	or     %ebx,%eax
c0038455:	89 41 04             	mov    %eax,0x4(%ecx)
c0038458:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003845b:	89 04 24             	mov    %eax,(%esp)
c003845e:	e8 6d d7 ff ff       	call   c0035bd0 <__malloc_unlock>
c0038463:	89 f0                	mov    %esi,%eax
c0038465:	e9 2d fd ff ff       	jmp    c0038197 <_realloc_r+0x187>
c003846a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038470:	8b 47 08             	mov    0x8(%edi),%eax
c0038473:	83 fb 24             	cmp    $0x24,%ebx
c0038476:	89 41 08             	mov    %eax,0x8(%ecx)
c0038479:	8b 47 0c             	mov    0xc(%edi),%eax
c003847c:	89 41 0c             	mov    %eax,0xc(%ecx)
c003847f:	74 60                	je     c00384e1 <_realloc_r+0x4d1>
c0038481:	8d 41 10             	lea    0x10(%ecx),%eax
c0038484:	8d 57 10             	lea    0x10(%edi),%edx
c0038487:	e9 ba fd ff ff       	jmp    c0038246 <_realloc_r+0x236>
c003848c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038490:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038493:	83 e2 fc             	and    $0xfffffffc,%edx
c0038496:	01 d3                	add    %edx,%ebx
c0038498:	e9 d6 fc ff ff       	jmp    c0038173 <_realloc_r+0x163>
c003849d:	8d 76 00             	lea    0x0(%esi),%esi
c00384a0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00384a4:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00384a8:	89 f7                	mov    %esi,%edi
c00384aa:	89 34 24             	mov    %esi,(%esp)
c00384ad:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00384b0:	e8 cb fa ff ff       	call   c0037f80 <memmove>
c00384b5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00384b8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00384bb:	8b 41 04             	mov    0x4(%ecx),%eax
c00384be:	89 ce                	mov    %ecx,%esi
c00384c0:	e9 ae fc ff ff       	jmp    c0038173 <_realloc_r+0x163>
c00384c5:	8b 47 08             	mov    0x8(%edi),%eax
c00384c8:	83 fb 24             	cmp    $0x24,%ebx
c00384cb:	89 41 10             	mov    %eax,0x10(%ecx)
c00384ce:	8b 47 0c             	mov    0xc(%edi),%eax
c00384d1:	89 41 14             	mov    %eax,0x14(%ecx)
c00384d4:	74 3e                	je     c0038514 <_realloc_r+0x504>
c00384d6:	8d 41 18             	lea    0x18(%ecx),%eax
c00384d9:	83 c7 10             	add    $0x10,%edi
c00384dc:	e9 5b fc ff ff       	jmp    c003813c <_realloc_r+0x12c>
c00384e1:	8b 47 10             	mov    0x10(%edi),%eax
c00384e4:	8d 57 18             	lea    0x18(%edi),%edx
c00384e7:	89 41 10             	mov    %eax,0x10(%ecx)
c00384ea:	8b 5f 14             	mov    0x14(%edi),%ebx
c00384ed:	8d 41 18             	lea    0x18(%ecx),%eax
c00384f0:	89 59 14             	mov    %ebx,0x14(%ecx)
c00384f3:	e9 4e fd ff ff       	jmp    c0038246 <_realloc_r+0x236>
c00384f8:	8b 47 08             	mov    0x8(%edi),%eax
c00384fb:	83 fb 24             	cmp    $0x24,%ebx
c00384fe:	89 41 10             	mov    %eax,0x10(%ecx)
c0038501:	8b 47 0c             	mov    0xc(%edi),%eax
c0038504:	89 41 14             	mov    %eax,0x14(%ecx)
c0038507:	74 22                	je     c003852b <_realloc_r+0x51b>
c0038509:	8d 41 18             	lea    0x18(%ecx),%eax
c003850c:	83 c7 10             	add    $0x10,%edi
c003850f:	e9 d3 fd ff ff       	jmp    c00382e7 <_realloc_r+0x2d7>
c0038514:	8b 47 10             	mov    0x10(%edi),%eax
c0038517:	83 c7 18             	add    $0x18,%edi
c003851a:	89 41 18             	mov    %eax,0x18(%ecx)
c003851d:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038520:	8d 41 20             	lea    0x20(%ecx),%eax
c0038523:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038526:	e9 11 fc ff ff       	jmp    c003813c <_realloc_r+0x12c>
c003852b:	8b 47 10             	mov    0x10(%edi),%eax
c003852e:	83 c7 18             	add    $0x18,%edi
c0038531:	89 41 18             	mov    %eax,0x18(%ecx)
c0038534:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0038537:	8d 41 20             	lea    0x20(%ecx),%eax
c003853a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c003853d:	e9 a5 fd ff ff       	jmp    c00382e7 <_realloc_r+0x2d7>
c0038542:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038546:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003854a:	89 34 24             	mov    %esi,(%esp)
c003854d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038550:	e8 2b fa ff ff       	call   c0037f80 <memmove>
c0038555:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038558:	e9 d9 fe ff ff       	jmp    c0038436 <_realloc_r+0x426>
c003855d:	8b 47 08             	mov    0x8(%edi),%eax
c0038560:	83 fb 24             	cmp    $0x24,%ebx
c0038563:	89 41 10             	mov    %eax,0x10(%ecx)
c0038566:	8b 47 0c             	mov    0xc(%edi),%eax
c0038569:	89 41 14             	mov    %eax,0x14(%ecx)
c003856c:	74 1d                	je     c003858b <_realloc_r+0x57b>
c003856e:	8d 41 18             	lea    0x18(%ecx),%eax
c0038571:	83 c7 10             	add    $0x10,%edi
c0038574:	e9 ad fe ff ff       	jmp    c0038426 <_realloc_r+0x416>
c0038579:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003857c:	89 04 24             	mov    %eax,(%esp)
c003857f:	e8 4c d6 ff ff       	call   c0035bd0 <__malloc_unlock>
c0038584:	31 c0                	xor    %eax,%eax
c0038586:	e9 0c fc ff ff       	jmp    c0038197 <_realloc_r+0x187>
c003858b:	8b 47 10             	mov    0x10(%edi),%eax
c003858e:	83 c7 18             	add    $0x18,%edi
c0038591:	89 41 18             	mov    %eax,0x18(%ecx)
c0038594:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038597:	8d 41 20             	lea    0x20(%ecx),%eax
c003859a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003859d:	e9 84 fe ff ff       	jmp    c0038426 <_realloc_r+0x416>
c00385a2:	66 90                	xchg   %ax,%ax
c00385a4:	66 90                	xchg   %ax,%ax
c00385a6:	66 90                	xchg   %ax,%ax
c00385a8:	66 90                	xchg   %ax,%ax
c00385aa:	66 90                	xchg   %ax,%ax
c00385ac:	66 90                	xchg   %ax,%ax
c00385ae:	66 90                	xchg   %ax,%ax

c00385b0 <cleanup_glue>:
c00385b0:	55                   	push   %ebp
c00385b1:	89 e5                	mov    %esp,%ebp
c00385b3:	56                   	push   %esi
c00385b4:	53                   	push   %ebx
c00385b5:	83 ec 10             	sub    $0x10,%esp
c00385b8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00385bb:	8b 75 08             	mov    0x8(%ebp),%esi
c00385be:	8b 03                	mov    (%ebx),%eax
c00385c0:	85 c0                	test   %eax,%eax
c00385c2:	74 0c                	je     c00385d0 <cleanup_glue+0x20>
c00385c4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385c8:	89 34 24             	mov    %esi,(%esp)
c00385cb:	e8 e0 ff ff ff       	call   c00385b0 <cleanup_glue>
c00385d0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00385d3:	89 75 08             	mov    %esi,0x8(%ebp)
c00385d6:	83 c4 10             	add    $0x10,%esp
c00385d9:	5b                   	pop    %ebx
c00385da:	5e                   	pop    %esi
c00385db:	5d                   	pop    %ebp
c00385dc:	e9 3f f7 ff ff       	jmp    c0037d20 <_free_r>
c00385e1:	eb 0d                	jmp    c00385f0 <_reclaim_reent>
c00385e3:	90                   	nop
c00385e4:	90                   	nop
c00385e5:	90                   	nop
c00385e6:	90                   	nop
c00385e7:	90                   	nop
c00385e8:	90                   	nop
c00385e9:	90                   	nop
c00385ea:	90                   	nop
c00385eb:	90                   	nop
c00385ec:	90                   	nop
c00385ed:	90                   	nop
c00385ee:	90                   	nop
c00385ef:	90                   	nop

c00385f0 <_reclaim_reent>:
c00385f0:	55                   	push   %ebp
c00385f1:	89 e5                	mov    %esp,%ebp
c00385f3:	57                   	push   %edi
c00385f4:	56                   	push   %esi
c00385f5:	53                   	push   %ebx
c00385f6:	83 ec 1c             	sub    $0x1c,%esp
c00385f9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00385fc:	3b 1d 40 d0 03 c0    	cmp    0xc003d040,%ebx
c0038602:	0f 84 a6 00 00 00    	je     c00386ae <_reclaim_reent+0xbe>
c0038608:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003860b:	85 d2                	test   %edx,%edx
c003860d:	74 46                	je     c0038655 <_reclaim_reent+0x65>
c003860f:	31 c0                	xor    %eax,%eax
c0038611:	31 f6                	xor    %esi,%esi
c0038613:	90                   	nop
c0038614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038618:	8b 04 82             	mov    (%edx,%eax,4),%eax
c003861b:	85 c0                	test   %eax,%eax
c003861d:	75 0b                	jne    c003862a <_reclaim_reent+0x3a>
c003861f:	eb 1e                	jmp    c003863f <_reclaim_reent+0x4f>
c0038621:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038628:	89 f8                	mov    %edi,%eax
c003862a:	8b 38                	mov    (%eax),%edi
c003862c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038630:	89 1c 24             	mov    %ebx,(%esp)
c0038633:	e8 e8 f6 ff ff       	call   c0037d20 <_free_r>
c0038638:	85 ff                	test   %edi,%edi
c003863a:	75 ec                	jne    c0038628 <_reclaim_reent+0x38>
c003863c:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003863f:	83 c6 01             	add    $0x1,%esi
c0038642:	83 fe 20             	cmp    $0x20,%esi
c0038645:	89 f0                	mov    %esi,%eax
c0038647:	75 cf                	jne    c0038618 <_reclaim_reent+0x28>
c0038649:	89 54 24 04          	mov    %edx,0x4(%esp)
c003864d:	89 1c 24             	mov    %ebx,(%esp)
c0038650:	e8 cb f6 ff ff       	call   c0037d20 <_free_r>
c0038655:	8b 43 40             	mov    0x40(%ebx),%eax
c0038658:	85 c0                	test   %eax,%eax
c003865a:	74 0c                	je     c0038668 <_reclaim_reent+0x78>
c003865c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038660:	89 1c 24             	mov    %ebx,(%esp)
c0038663:	e8 b8 f6 ff ff       	call   c0037d20 <_free_r>
c0038668:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c003866e:	85 c0                	test   %eax,%eax
c0038670:	74 22                	je     c0038694 <_reclaim_reent+0xa4>
c0038672:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038678:	39 f0                	cmp    %esi,%eax
c003867a:	75 06                	jne    c0038682 <_reclaim_reent+0x92>
c003867c:	eb 16                	jmp    c0038694 <_reclaim_reent+0xa4>
c003867e:	66 90                	xchg   %ax,%ax
c0038680:	89 f8                	mov    %edi,%eax
c0038682:	8b 38                	mov    (%eax),%edi
c0038684:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038688:	89 1c 24             	mov    %ebx,(%esp)
c003868b:	e8 90 f6 ff ff       	call   c0037d20 <_free_r>
c0038690:	39 fe                	cmp    %edi,%esi
c0038692:	75 ec                	jne    c0038680 <_reclaim_reent+0x90>
c0038694:	8b 43 54             	mov    0x54(%ebx),%eax
c0038697:	85 c0                	test   %eax,%eax
c0038699:	74 0c                	je     c00386a7 <_reclaim_reent+0xb7>
c003869b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003869f:	89 1c 24             	mov    %ebx,(%esp)
c00386a2:	e8 79 f6 ff ff       	call   c0037d20 <_free_r>
c00386a7:	8b 43 38             	mov    0x38(%ebx),%eax
c00386aa:	85 c0                	test   %eax,%eax
c00386ac:	75 08                	jne    c00386b6 <_reclaim_reent+0xc6>
c00386ae:	83 c4 1c             	add    $0x1c,%esp
c00386b1:	5b                   	pop    %ebx
c00386b2:	5e                   	pop    %esi
c00386b3:	5f                   	pop    %edi
c00386b4:	5d                   	pop    %ebp
c00386b5:	c3                   	ret    
c00386b6:	89 1c 24             	mov    %ebx,(%esp)
c00386b9:	ff 53 3c             	call   *0x3c(%ebx)
c00386bc:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c00386c2:	85 c0                	test   %eax,%eax
c00386c4:	74 e8                	je     c00386ae <_reclaim_reent+0xbe>
c00386c6:	89 1c 24             	mov    %ebx,(%esp)
c00386c9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00386cd:	e8 de fe ff ff       	call   c00385b0 <cleanup_glue>
c00386d2:	83 c4 1c             	add    $0x1c,%esp
c00386d5:	5b                   	pop    %ebx
c00386d6:	5e                   	pop    %esi
c00386d7:	5f                   	pop    %edi
c00386d8:	5d                   	pop    %ebp
c00386d9:	c3                   	ret    
