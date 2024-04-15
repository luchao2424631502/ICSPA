
kernel:     file format elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	0f 01 15 4c 00 03 c0 	lgdtl  0xc003004c
c0030007:	ea 0e 00 03 c0 08 00 	ljmp   $0x8,$0xc003000e

c003000e <start_cond>:
c003000e:	66 b8 10 00          	mov    $0x10,%ax
c0030012:	8e d8                	mov    %eax,%ds
c0030014:	8e c0                	mov    %eax,%es
c0030016:	8e d0                	mov    %eax,%ss
c0030018:	0f 20 c0             	mov    %cr0,%eax
c003001b:	83 c8 01             	or     $0x1,%eax
c003001e:	0f 22 c0             	mov    %eax,%cr0
c0030021:	bd 00 00 00 00       	mov    $0x0,%ebp
c0030026:	bc 00 00 00 08       	mov    $0x8000000,%esp
c003002b:	83 ec 10             	sub    $0x10,%esp
c003002e:	e9 af 00 00 00       	jmp    c00300e2 <init>
c0030033:	90                   	nop

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
c0030050:	03 c0                	add    %eax,%eax

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
c00300d5:	e8 41 0a 00 00       	call   c0030b1b <irq_handle>
c00300da:	83 c4 04             	add    $0x4,%esp
c00300dd:	61                   	popa   
c00300de:	83 c4 08             	add    $0x8,%esp
c00300e1:	cf                   	iret   

c00300e2 <init>:
c00300e2:	55                   	push   %ebp
c00300e3:	89 e5                	mov    %esp,%ebp
c00300e5:	e8 5a 00 00 00       	call   c0030144 <__x86.get_pc_thunk.ax>
c00300ea:	05 16 cf 00 00       	add    $0xcf16,%eax
c00300ef:	8d 80 00 31 ff ff    	lea    -0xcf00(%eax),%eax
c00300f5:	ff e0                	jmp    *%eax
c00300f7:	b8 01 00 00 00       	mov    $0x1,%eax
c00300fc:	82                   	nemu_trap 
c00300fd:	90                   	nop
c00300fe:	5d                   	pop    %ebp
c00300ff:	c3                   	ret    

c0030100 <init_cond>:
c0030100:	55                   	push   %ebp
c0030101:	89 e5                	mov    %esp,%ebp
c0030103:	53                   	push   %ebx
c0030104:	83 ec 14             	sub    $0x14,%esp
c0030107:	e8 3c 00 00 00       	call   c0030148 <__x86.get_pc_thunk.bx>
c003010c:	81 c3 f4 ce 00 00    	add    $0xcef4,%ebx
c0030112:	8d 83 40 c0 ff ff    	lea    -0x3fc0(%ebx),%eax
c0030118:	50                   	push   %eax
c0030119:	6a 52                	push   $0x52
c003011b:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
c0030121:	50                   	push   %eax
c0030122:	8d 83 0c c0 ff ff    	lea    -0x3ff4(%ebx),%eax
c0030128:	50                   	push   %eax
c0030129:	e8 cc 08 00 00       	call   c00309fa <printk>
c003012e:	83 c4 10             	add    $0x10,%esp
c0030131:	e8 0b 07 00 00       	call   c0030841 <loader>
c0030136:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030139:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003013c:	ff d0                	call   *%eax
c003013e:	90                   	nop
c003013f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030142:	c9                   	leave  
c0030143:	c3                   	ret    

c0030144 <__x86.get_pc_thunk.ax>:
c0030144:	8b 04 24             	mov    (%esp),%eax
c0030147:	c3                   	ret    

c0030148 <__x86.get_pc_thunk.bx>:
c0030148:	8b 1c 24             	mov    (%esp),%ebx
c003014b:	c3                   	ret    

c003014c <in_byte>:
c003014c:	55                   	push   %ebp
c003014d:	89 e5                	mov    %esp,%ebp
c003014f:	83 ec 14             	sub    $0x14,%esp
c0030152:	e8 ed ff ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030157:	05 a9 ce 00 00       	add    $0xcea9,%eax
c003015c:	8b 45 08             	mov    0x8(%ebp),%eax
c003015f:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030163:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030166:	89 c2                	mov    %eax,%edx
c0030168:	ec                   	in     (%dx),%al
c0030169:	88 45 ff             	mov    %al,-0x1(%ebp)
c003016c:	8a 45 ff             	mov    -0x1(%ebp),%al
c003016f:	c9                   	leave  
c0030170:	c3                   	ret    

c0030171 <out_byte>:
c0030171:	55                   	push   %ebp
c0030172:	89 e5                	mov    %esp,%ebp
c0030174:	83 ec 08             	sub    $0x8,%esp
c0030177:	e8 c8 ff ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003017c:	05 84 ce 00 00       	add    $0xce84,%eax
c0030181:	8b 45 08             	mov    0x8(%ebp),%eax
c0030184:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030187:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c003018b:	88 d0                	mov    %dl,%al
c003018d:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030190:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030193:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030196:	ee                   	out    %al,(%dx)
c0030197:	90                   	nop
c0030198:	c9                   	leave  
c0030199:	c3                   	ret    

c003019a <out_long>:
c003019a:	55                   	push   %ebp
c003019b:	89 e5                	mov    %esp,%ebp
c003019d:	83 ec 04             	sub    $0x4,%esp
c00301a0:	e8 9f ff ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00301a5:	05 5b ce 00 00       	add    $0xce5b,%eax
c00301aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00301ad:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00301b1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00301b4:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00301b7:	ef                   	out    %eax,(%dx)
c00301b8:	90                   	nop
c00301b9:	c9                   	leave  
c00301ba:	c3                   	ret    

c00301bb <dma_prepare>:
c00301bb:	55                   	push   %ebp
c00301bc:	89 e5                	mov    %esp,%ebp
c00301be:	83 ec 10             	sub    $0x10,%esp
c00301c1:	e8 7e ff ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00301c6:	05 3a ce 00 00       	add    $0xce3a,%eax
c00301cb:	8b 55 08             	mov    0x8(%ebp),%edx
c00301ce:	89 55 fc             	mov    %edx,-0x4(%ebp)
c00301d1:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c00301d7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c00301da:	89 0a                	mov    %ecx,(%edx)
c00301dc:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c00301e2:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c00301e8:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c00301ee:	8a 4a 07             	mov    0x7(%edx),%cl
c00301f1:	83 c9 80             	or     $0xffffff80,%ecx
c00301f4:	88 4a 07             	mov    %cl,0x7(%edx)
c00301f7:	c7 c1 54 00 07 c0    	mov    $0xc0070054,%ecx
c00301fd:	66 8b 51 06          	mov    0x6(%ecx),%dx
c0030201:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c0030207:	66 89 51 06          	mov    %dx,0x6(%ecx)
c003020b:	c7 c0 54 00 07 c0    	mov    $0xc0070054,%eax
c0030211:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0030214:	ff 75 f8             	pushl  -0x8(%ebp)
c0030217:	68 44 c0 00 00       	push   $0xc044
c003021c:	e8 79 ff ff ff       	call   c003019a <out_long>
c0030221:	83 c4 08             	add    $0x8,%esp
c0030224:	90                   	nop
c0030225:	c9                   	leave  
c0030226:	c3                   	ret    

c0030227 <dma_issue_read>:
c0030227:	55                   	push   %ebp
c0030228:	89 e5                	mov    %esp,%ebp
c003022a:	e8 15 ff ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003022f:	05 d1 cd 00 00       	add    $0xcdd1,%eax
c0030234:	68 40 c0 00 00       	push   $0xc040
c0030239:	e8 0e ff ff ff       	call   c003014c <in_byte>
c003023e:	83 c4 04             	add    $0x4,%esp
c0030241:	83 c8 09             	or     $0x9,%eax
c0030244:	0f b6 c0             	movzbl %al,%eax
c0030247:	50                   	push   %eax
c0030248:	68 40 c0 00 00       	push   $0xc040
c003024d:	e8 1f ff ff ff       	call   c0030171 <out_byte>
c0030252:	83 c4 08             	add    $0x8,%esp
c0030255:	90                   	nop
c0030256:	c9                   	leave  
c0030257:	c3                   	ret    

c0030258 <wait_intr>:
c0030258:	55                   	push   %ebp
c0030259:	89 e5                	mov    %esp,%ebp
c003025b:	e8 e4 fe ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030260:	05 a0 cd 00 00       	add    $0xcda0,%eax
c0030265:	f4                   	hlt    
c0030266:	90                   	nop
c0030267:	5d                   	pop    %ebp
c0030268:	c3                   	ret    

c0030269 <ide_read>:
c0030269:	55                   	push   %ebp
c003026a:	89 e5                	mov    %esp,%ebp
c003026c:	56                   	push   %esi
c003026d:	53                   	push   %ebx
c003026e:	83 ec 10             	sub    $0x10,%esp
c0030271:	e8 d2 fe ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c0030276:	81 c3 8a cd 00 00    	add    $0xcd8a,%ebx
c003027c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030283:	eb 22                	jmp    c00302a7 <ide_read+0x3e>
c0030285:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030288:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003028b:	01 d0                	add    %edx,%eax
c003028d:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0030290:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030293:	8d 34 11             	lea    (%ecx,%edx,1),%esi
c0030296:	83 ec 0c             	sub    $0xc,%esp
c0030299:	50                   	push   %eax
c003029a:	e8 c6 02 00 00       	call   c0030565 <read_byte>
c003029f:	83 c4 10             	add    $0x10,%esp
c00302a2:	88 06                	mov    %al,(%esi)
c00302a4:	ff 45 f4             	incl   -0xc(%ebp)
c00302a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302aa:	3b 45 10             	cmp    0x10(%ebp),%eax
c00302ad:	72 d6                	jb     c0030285 <ide_read+0x1c>
c00302af:	90                   	nop
c00302b0:	8d 65 f8             	lea    -0x8(%ebp),%esp
c00302b3:	5b                   	pop    %ebx
c00302b4:	5e                   	pop    %esi
c00302b5:	5d                   	pop    %ebp
c00302b6:	c3                   	ret    

c00302b7 <ide_write>:
c00302b7:	55                   	push   %ebp
c00302b8:	89 e5                	mov    %esp,%ebp
c00302ba:	53                   	push   %ebx
c00302bb:	83 ec 14             	sub    $0x14,%esp
c00302be:	e8 85 fe ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c00302c3:	81 c3 3d cd 00 00    	add    $0xcd3d,%ebx
c00302c9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00302d0:	eb 25                	jmp    c00302f7 <ide_write+0x40>
c00302d2:	8b 55 08             	mov    0x8(%ebp),%edx
c00302d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302d8:	01 d0                	add    %edx,%eax
c00302da:	8a 00                	mov    (%eax),%al
c00302dc:	0f b6 c0             	movzbl %al,%eax
c00302df:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00302e2:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00302e5:	01 ca                	add    %ecx,%edx
c00302e7:	83 ec 08             	sub    $0x8,%esp
c00302ea:	50                   	push   %eax
c00302eb:	52                   	push   %edx
c00302ec:	e8 b1 02 00 00       	call   c00305a2 <write_byte>
c00302f1:	83 c4 10             	add    $0x10,%esp
c00302f4:	ff 45 f4             	incl   -0xc(%ebp)
c00302f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302fa:	3b 45 10             	cmp    0x10(%ebp),%eax
c00302fd:	72 d3                	jb     c00302d2 <ide_write+0x1b>
c00302ff:	90                   	nop
c0030300:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030303:	c9                   	leave  
c0030304:	c3                   	ret    

c0030305 <ide_writeback>:
c0030305:	55                   	push   %ebp
c0030306:	89 e5                	mov    %esp,%ebp
c0030308:	53                   	push   %ebx
c0030309:	83 ec 04             	sub    $0x4,%esp
c003030c:	e8 37 fe ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c0030311:	81 c3 ef cc 00 00    	add    $0xccef,%ebx
c0030317:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
c003031d:	40                   	inc    %eax
c003031e:	89 83 04 10 00 00    	mov    %eax,0x1004(%ebx)
c0030324:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
c003032a:	83 f8 64             	cmp    $0x64,%eax
c003032d:	75 0f                	jne    c003033e <ide_writeback+0x39>
c003032f:	e8 f6 00 00 00       	call   c003042a <cache_writeback>
c0030334:	c7 83 04 10 00 00 00 	movl   $0x0,0x1004(%ebx)
c003033b:	00 00 00 
c003033e:	90                   	nop
c003033f:	83 c4 04             	add    $0x4,%esp
c0030342:	5b                   	pop    %ebx
c0030343:	5d                   	pop    %ebp
c0030344:	c3                   	ret    

c0030345 <ide_intr>:
c0030345:	55                   	push   %ebp
c0030346:	89 e5                	mov    %esp,%ebp
c0030348:	e8 f7 fd ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003034d:	05 b3 cc 00 00       	add    $0xccb3,%eax
c0030352:	c7 80 00 10 00 00 01 	movl   $0x1,0x1000(%eax)
c0030359:	00 00 00 
c003035c:	90                   	nop
c003035d:	5d                   	pop    %ebp
c003035e:	c3                   	ret    

c003035f <clear_ide_intr>:
c003035f:	55                   	push   %ebp
c0030360:	89 e5                	mov    %esp,%ebp
c0030362:	e8 dd fd ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030367:	05 99 cc 00 00       	add    $0xcc99,%eax
c003036c:	c7 80 00 10 00 00 00 	movl   $0x0,0x1000(%eax)
c0030373:	00 00 00 
c0030376:	90                   	nop
c0030377:	5d                   	pop    %ebp
c0030378:	c3                   	ret    

c0030379 <wait_ide_intr>:
c0030379:	55                   	push   %ebp
c003037a:	89 e5                	mov    %esp,%ebp
c003037c:	53                   	push   %ebx
c003037d:	e8 c6 fd ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c0030382:	81 c3 7e cc 00 00    	add    $0xcc7e,%ebx
c0030388:	eb 05                	jmp    c003038f <wait_ide_intr+0x16>
c003038a:	e8 c9 fe ff ff       	call   c0030258 <wait_intr>
c003038f:	8b 83 00 10 00 00    	mov    0x1000(%ebx),%eax
c0030395:	85 c0                	test   %eax,%eax
c0030397:	74 f1                	je     c003038a <wait_ide_intr+0x11>
c0030399:	e8 c1 ff ff ff       	call   c003035f <clear_ide_intr>
c003039e:	90                   	nop
c003039f:	5b                   	pop    %ebx
c00303a0:	5d                   	pop    %ebp
c00303a1:	c3                   	ret    

c00303a2 <init_ide>:
c00303a2:	55                   	push   %ebp
c00303a3:	89 e5                	mov    %esp,%ebp
c00303a5:	53                   	push   %ebx
c00303a6:	83 ec 04             	sub    $0x4,%esp
c00303a9:	e8 9a fd ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c00303ae:	81 c3 52 cc 00 00    	add    $0xcc52,%ebx
c00303b4:	e8 2e 00 00 00       	call   c00303e7 <cache_init>
c00303b9:	83 ec 08             	sub    $0x8,%esp
c00303bc:	8d 83 05 33 ff ff    	lea    -0xccfb(%ebx),%eax
c00303c2:	50                   	push   %eax
c00303c3:	6a 00                	push   $0x0
c00303c5:	e8 84 06 00 00       	call   c0030a4e <add_irq_handle>
c00303ca:	83 c4 10             	add    $0x10,%esp
c00303cd:	83 ec 08             	sub    $0x8,%esp
c00303d0:	8d 83 45 33 ff ff    	lea    -0xccbb(%ebx),%eax
c00303d6:	50                   	push   %eax
c00303d7:	6a 0e                	push   $0xe
c00303d9:	e8 70 06 00 00       	call   c0030a4e <add_irq_handle>
c00303de:	83 c4 10             	add    $0x10,%esp
c00303e1:	90                   	nop
c00303e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00303e5:	c9                   	leave  
c00303e6:	c3                   	ret    

c00303e7 <cache_init>:
c00303e7:	55                   	push   %ebp
c00303e8:	89 e5                	mov    %esp,%ebp
c00303ea:	53                   	push   %ebx
c00303eb:	83 ec 10             	sub    $0x10,%esp
c00303ee:	e8 fd 01 00 00       	call   c00305f0 <__x86.get_pc_thunk.dx>
c00303f3:	81 c2 0d cc 00 00    	add    $0xcc0d,%edx
c00303f9:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030400:	eb 1b                	jmp    c003041d <cache_init+0x36>
c0030402:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c0030405:	8d 9a 24 10 00 00    	lea    0x1024(%edx),%ebx
c003040b:	89 c8                	mov    %ecx,%eax
c003040d:	c1 e0 06             	shl    $0x6,%eax
c0030410:	01 c8                	add    %ecx,%eax
c0030412:	c1 e0 03             	shl    $0x3,%eax
c0030415:	01 d8                	add    %ebx,%eax
c0030417:	c6 00 00             	movb   $0x0,(%eax)
c003041a:	ff 45 f8             	incl   -0x8(%ebp)
c003041d:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c0030421:	7e df                	jle    c0030402 <cache_init+0x1b>
c0030423:	90                   	nop
c0030424:	83 c4 10             	add    $0x10,%esp
c0030427:	5b                   	pop    %ebx
c0030428:	5d                   	pop    %ebp
c0030429:	c3                   	ret    

c003042a <cache_writeback>:
c003042a:	55                   	push   %ebp
c003042b:	89 e5                	mov    %esp,%ebp
c003042d:	53                   	push   %ebx
c003042e:	83 ec 14             	sub    $0x14,%esp
c0030431:	e8 12 fd ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c0030436:	81 c3 ca cb 00 00    	add    $0xcbca,%ebx
c003043c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030443:	eb 72                	jmp    c00304b7 <cache_writeback+0x8d>
c0030445:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030448:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
c003044e:	89 d0                	mov    %edx,%eax
c0030450:	c1 e0 06             	shl    $0x6,%eax
c0030453:	01 d0                	add    %edx,%eax
c0030455:	c1 e0 03             	shl    $0x3,%eax
c0030458:	01 c8                	add    %ecx,%eax
c003045a:	8a 00                	mov    (%eax),%al
c003045c:	3c 01                	cmp    $0x1,%al
c003045e:	75 54                	jne    c00304b4 <cache_writeback+0x8a>
c0030460:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030463:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
c0030469:	89 d0                	mov    %edx,%eax
c003046b:	c1 e0 06             	shl    $0x6,%eax
c003046e:	01 d0                	add    %edx,%eax
c0030470:	c1 e0 03             	shl    $0x3,%eax
c0030473:	01 c8                	add    %ecx,%eax
c0030475:	8b 10                	mov    (%eax),%edx
c0030477:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c003047a:	89 c8                	mov    %ecx,%eax
c003047c:	c1 e0 06             	shl    $0x6,%eax
c003047f:	01 c8                	add    %ecx,%eax
c0030481:	c1 e0 03             	shl    $0x3,%eax
c0030484:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
c003048a:	01 c8                	add    %ecx,%eax
c003048c:	83 c0 06             	add    $0x6,%eax
c003048f:	83 ec 08             	sub    $0x8,%esp
c0030492:	52                   	push   %edx
c0030493:	50                   	push   %eax
c0030494:	e8 52 03 00 00       	call   c00307eb <disk_do_write>
c0030499:	83 c4 10             	add    $0x10,%esp
c003049c:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003049f:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
c00304a5:	89 d0                	mov    %edx,%eax
c00304a7:	c1 e0 06             	shl    $0x6,%eax
c00304aa:	01 d0                	add    %edx,%eax
c00304ac:	c1 e0 03             	shl    $0x3,%eax
c00304af:	01 c8                	add    %ecx,%eax
c00304b1:	c6 00 00             	movb   $0x0,(%eax)
c00304b4:	ff 45 f4             	incl   -0xc(%ebp)
c00304b7:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c00304bb:	7e 88                	jle    c0030445 <cache_writeback+0x1b>
c00304bd:	90                   	nop
c00304be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00304c1:	c9                   	leave  
c00304c2:	c3                   	ret    

c00304c3 <cache_fetch>:
c00304c3:	55                   	push   %ebp
c00304c4:	89 e5                	mov    %esp,%ebp
c00304c6:	53                   	push   %ebx
c00304c7:	83 ec 14             	sub    $0x14,%esp
c00304ca:	e8 79 fc ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c00304cf:	81 c3 31 cb 00 00    	add    $0xcb31,%ebx
c00304d5:	8b 45 08             	mov    0x8(%ebp),%eax
c00304d8:	83 e0 7f             	and    $0x7f,%eax
c00304db:	89 c2                	mov    %eax,%edx
c00304dd:	89 d0                	mov    %edx,%eax
c00304df:	c1 e0 06             	shl    $0x6,%eax
c00304e2:	01 d0                	add    %edx,%eax
c00304e4:	c1 e0 03             	shl    $0x3,%eax
c00304e7:	8d 93 20 10 00 00    	lea    0x1020(%ebx),%edx
c00304ed:	01 d0                	add    %edx,%eax
c00304ef:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00304f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00304f5:	8a 40 04             	mov    0x4(%eax),%al
c00304f8:	3c 01                	cmp    $0x1,%al
c00304fa:	75 0a                	jne    c0030506 <cache_fetch+0x43>
c00304fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00304ff:	8b 00                	mov    (%eax),%eax
c0030501:	39 45 08             	cmp    %eax,0x8(%ebp)
c0030504:	74 57                	je     c003055d <cache_fetch+0x9a>
c0030506:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030509:	8a 40 04             	mov    0x4(%eax),%al
c003050c:	3c 01                	cmp    $0x1,%al
c003050e:	75 22                	jne    c0030532 <cache_fetch+0x6f>
c0030510:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030513:	8a 40 05             	mov    0x5(%eax),%al
c0030516:	3c 01                	cmp    $0x1,%al
c0030518:	75 18                	jne    c0030532 <cache_fetch+0x6f>
c003051a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003051d:	8b 00                	mov    (%eax),%eax
c003051f:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030522:	83 c2 06             	add    $0x6,%edx
c0030525:	83 ec 08             	sub    $0x8,%esp
c0030528:	50                   	push   %eax
c0030529:	52                   	push   %edx
c003052a:	e8 bc 02 00 00       	call   c00307eb <disk_do_write>
c003052f:	83 c4 10             	add    $0x10,%esp
c0030532:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030535:	83 c0 06             	add    $0x6,%eax
c0030538:	83 ec 08             	sub    $0x8,%esp
c003053b:	ff 75 08             	pushl  0x8(%ebp)
c003053e:	50                   	push   %eax
c003053f:	e8 3c 02 00 00       	call   c0030780 <disk_do_read>
c0030544:	83 c4 10             	add    $0x10,%esp
c0030547:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003054a:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c003054e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030551:	8b 55 08             	mov    0x8(%ebp),%edx
c0030554:	89 10                	mov    %edx,(%eax)
c0030556:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030559:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c003055d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030560:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030563:	c9                   	leave  
c0030564:	c3                   	ret    

c0030565 <read_byte>:
c0030565:	55                   	push   %ebp
c0030566:	89 e5                	mov    %esp,%ebp
c0030568:	83 ec 18             	sub    $0x18,%esp
c003056b:	e8 d4 fb ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030570:	05 90 ca 00 00       	add    $0xca90,%eax
c0030575:	8b 45 08             	mov    0x8(%ebp),%eax
c0030578:	c1 e8 09             	shr    $0x9,%eax
c003057b:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003057e:	83 ec 0c             	sub    $0xc,%esp
c0030581:	ff 75 f4             	pushl  -0xc(%ebp)
c0030584:	e8 3a ff ff ff       	call   c00304c3 <cache_fetch>
c0030589:	83 c4 10             	add    $0x10,%esp
c003058c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003058f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030592:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030597:	89 c2                	mov    %eax,%edx
c0030599:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003059c:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c00305a0:	c9                   	leave  
c00305a1:	c3                   	ret    

c00305a2 <write_byte>:
c00305a2:	55                   	push   %ebp
c00305a3:	89 e5                	mov    %esp,%ebp
c00305a5:	83 ec 28             	sub    $0x28,%esp
c00305a8:	e8 97 fb ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00305ad:	05 53 ca 00 00       	add    $0xca53,%eax
c00305b2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00305b5:	88 45 e4             	mov    %al,-0x1c(%ebp)
c00305b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00305bb:	c1 e8 09             	shr    $0x9,%eax
c00305be:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00305c1:	83 ec 0c             	sub    $0xc,%esp
c00305c4:	ff 75 f4             	pushl  -0xc(%ebp)
c00305c7:	e8 f7 fe ff ff       	call   c00304c3 <cache_fetch>
c00305cc:	83 c4 10             	add    $0x10,%esp
c00305cf:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00305d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00305d5:	25 ff 01 00 00       	and    $0x1ff,%eax
c00305da:	89 c1                	mov    %eax,%ecx
c00305dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00305df:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c00305e2:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c00305e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00305e9:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c00305ed:	90                   	nop
c00305ee:	c9                   	leave  
c00305ef:	c3                   	ret    

c00305f0 <__x86.get_pc_thunk.dx>:
c00305f0:	8b 14 24             	mov    (%esp),%edx
c00305f3:	c3                   	ret    

c00305f4 <in_byte>:
c00305f4:	55                   	push   %ebp
c00305f5:	89 e5                	mov    %esp,%ebp
c00305f7:	83 ec 14             	sub    $0x14,%esp
c00305fa:	e8 45 fb ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00305ff:	05 01 ca 00 00       	add    $0xca01,%eax
c0030604:	8b 45 08             	mov    0x8(%ebp),%eax
c0030607:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c003060b:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003060e:	89 c2                	mov    %eax,%edx
c0030610:	ec                   	in     (%dx),%al
c0030611:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030614:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030617:	c9                   	leave  
c0030618:	c3                   	ret    

c0030619 <in_long>:
c0030619:	55                   	push   %ebp
c003061a:	89 e5                	mov    %esp,%ebp
c003061c:	83 ec 14             	sub    $0x14,%esp
c003061f:	e8 20 fb ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030624:	05 dc c9 00 00       	add    $0xc9dc,%eax
c0030629:	8b 45 08             	mov    0x8(%ebp),%eax
c003062c:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030630:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030633:	89 c2                	mov    %eax,%edx
c0030635:	ed                   	in     (%dx),%eax
c0030636:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0030639:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003063c:	c9                   	leave  
c003063d:	c3                   	ret    

c003063e <out_byte>:
c003063e:	55                   	push   %ebp
c003063f:	89 e5                	mov    %esp,%ebp
c0030641:	83 ec 08             	sub    $0x8,%esp
c0030644:	e8 fb fa ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030649:	05 b7 c9 00 00       	add    $0xc9b7,%eax
c003064e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030651:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030654:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030658:	88 d0                	mov    %dl,%al
c003065a:	88 45 f8             	mov    %al,-0x8(%ebp)
c003065d:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030660:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030663:	ee                   	out    %al,(%dx)
c0030664:	90                   	nop
c0030665:	c9                   	leave  
c0030666:	c3                   	ret    

c0030667 <out_long>:
c0030667:	55                   	push   %ebp
c0030668:	89 e5                	mov    %esp,%ebp
c003066a:	83 ec 04             	sub    $0x4,%esp
c003066d:	e8 d2 fa ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030672:	05 8e c9 00 00       	add    $0xc98e,%eax
c0030677:	8b 45 08             	mov    0x8(%ebp),%eax
c003067a:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c003067e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030681:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030684:	ef                   	out    %eax,(%dx)
c0030685:	90                   	nop
c0030686:	c9                   	leave  
c0030687:	c3                   	ret    

c0030688 <waitdisk>:
c0030688:	55                   	push   %ebp
c0030689:	89 e5                	mov    %esp,%ebp
c003068b:	e8 b4 fa ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030690:	05 70 c9 00 00       	add    $0xc970,%eax
c0030695:	90                   	nop
c0030696:	68 f7 01 00 00       	push   $0x1f7
c003069b:	e8 54 ff ff ff       	call   c00305f4 <in_byte>
c00306a0:	83 c4 04             	add    $0x4,%esp
c00306a3:	0f b6 c0             	movzbl %al,%eax
c00306a6:	25 c0 00 00 00       	and    $0xc0,%eax
c00306ab:	83 f8 40             	cmp    $0x40,%eax
c00306ae:	75 e6                	jne    c0030696 <waitdisk+0xe>
c00306b0:	90                   	nop
c00306b1:	c9                   	leave  
c00306b2:	c3                   	ret    

c00306b3 <ide_prepare>:
c00306b3:	55                   	push   %ebp
c00306b4:	89 e5                	mov    %esp,%ebp
c00306b6:	e8 89 fa ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00306bb:	05 45 c9 00 00       	add    $0xc945,%eax
c00306c0:	e8 c3 ff ff ff       	call   c0030688 <waitdisk>
c00306c5:	6a 00                	push   $0x0
c00306c7:	68 f1 01 00 00       	push   $0x1f1
c00306cc:	e8 6d ff ff ff       	call   c003063e <out_byte>
c00306d1:	83 c4 08             	add    $0x8,%esp
c00306d4:	6a 01                	push   $0x1
c00306d6:	68 f2 01 00 00       	push   $0x1f2
c00306db:	e8 5e ff ff ff       	call   c003063e <out_byte>
c00306e0:	83 c4 08             	add    $0x8,%esp
c00306e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00306e6:	0f b6 c0             	movzbl %al,%eax
c00306e9:	50                   	push   %eax
c00306ea:	68 f3 01 00 00       	push   $0x1f3
c00306ef:	e8 4a ff ff ff       	call   c003063e <out_byte>
c00306f4:	83 c4 08             	add    $0x8,%esp
c00306f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00306fa:	c1 e8 08             	shr    $0x8,%eax
c00306fd:	0f b6 c0             	movzbl %al,%eax
c0030700:	50                   	push   %eax
c0030701:	68 f4 01 00 00       	push   $0x1f4
c0030706:	e8 33 ff ff ff       	call   c003063e <out_byte>
c003070b:	83 c4 08             	add    $0x8,%esp
c003070e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030711:	c1 e8 10             	shr    $0x10,%eax
c0030714:	0f b6 c0             	movzbl %al,%eax
c0030717:	50                   	push   %eax
c0030718:	68 f5 01 00 00       	push   $0x1f5
c003071d:	e8 1c ff ff ff       	call   c003063e <out_byte>
c0030722:	83 c4 08             	add    $0x8,%esp
c0030725:	8b 45 08             	mov    0x8(%ebp),%eax
c0030728:	c1 e8 18             	shr    $0x18,%eax
c003072b:	83 c8 e0             	or     $0xffffffe0,%eax
c003072e:	0f b6 c0             	movzbl %al,%eax
c0030731:	50                   	push   %eax
c0030732:	68 f6 01 00 00       	push   $0x1f6
c0030737:	e8 02 ff ff ff       	call   c003063e <out_byte>
c003073c:	83 c4 08             	add    $0x8,%esp
c003073f:	90                   	nop
c0030740:	c9                   	leave  
c0030741:	c3                   	ret    

c0030742 <issue_read>:
c0030742:	55                   	push   %ebp
c0030743:	89 e5                	mov    %esp,%ebp
c0030745:	e8 fa f9 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003074a:	05 b6 c8 00 00       	add    $0xc8b6,%eax
c003074f:	6a 20                	push   $0x20
c0030751:	68 f7 01 00 00       	push   $0x1f7
c0030756:	e8 e3 fe ff ff       	call   c003063e <out_byte>
c003075b:	83 c4 08             	add    $0x8,%esp
c003075e:	90                   	nop
c003075f:	c9                   	leave  
c0030760:	c3                   	ret    

c0030761 <issue_write>:
c0030761:	55                   	push   %ebp
c0030762:	89 e5                	mov    %esp,%ebp
c0030764:	e8 db f9 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030769:	05 97 c8 00 00       	add    $0xc897,%eax
c003076e:	6a 30                	push   $0x30
c0030770:	68 f7 01 00 00       	push   $0x1f7
c0030775:	e8 c4 fe ff ff       	call   c003063e <out_byte>
c003077a:	83 c4 08             	add    $0x8,%esp
c003077d:	90                   	nop
c003077e:	c9                   	leave  
c003077f:	c3                   	ret    

c0030780 <disk_do_read>:
c0030780:	55                   	push   %ebp
c0030781:	89 e5                	mov    %esp,%ebp
c0030783:	53                   	push   %ebx
c0030784:	83 ec 14             	sub    $0x14,%esp
c0030787:	e8 bc f9 ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c003078c:	81 c3 74 c8 00 00    	add    $0xc874,%ebx
c0030792:	e8 c8 fb ff ff       	call   c003035f <clear_ide_intr>
c0030797:	83 ec 0c             	sub    $0xc,%esp
c003079a:	ff 75 0c             	pushl  0xc(%ebp)
c003079d:	e8 11 ff ff ff       	call   c00306b3 <ide_prepare>
c00307a2:	83 c4 10             	add    $0x10,%esp
c00307a5:	e8 98 ff ff ff       	call   c0030742 <issue_read>
c00307aa:	e8 ca fb ff ff       	call   c0030379 <wait_ide_intr>
c00307af:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00307b6:	eb 25                	jmp    c00307dd <disk_do_read+0x5d>
c00307b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00307bb:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00307c2:	8b 45 08             	mov    0x8(%ebp),%eax
c00307c5:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c00307c8:	83 ec 0c             	sub    $0xc,%esp
c00307cb:	68 f0 01 00 00       	push   $0x1f0
c00307d0:	e8 44 fe ff ff       	call   c0030619 <in_long>
c00307d5:	83 c4 10             	add    $0x10,%esp
c00307d8:	89 03                	mov    %eax,(%ebx)
c00307da:	ff 45 f4             	incl   -0xc(%ebp)
c00307dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00307e0:	83 f8 7f             	cmp    $0x7f,%eax
c00307e3:	76 d3                	jbe    c00307b8 <disk_do_read+0x38>
c00307e5:	90                   	nop
c00307e6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00307e9:	c9                   	leave  
c00307ea:	c3                   	ret    

c00307eb <disk_do_write>:
c00307eb:	55                   	push   %ebp
c00307ec:	89 e5                	mov    %esp,%ebp
c00307ee:	83 ec 10             	sub    $0x10,%esp
c00307f1:	e8 4e f9 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00307f6:	05 0a c8 00 00       	add    $0xc80a,%eax
c00307fb:	ff 75 0c             	pushl  0xc(%ebp)
c00307fe:	e8 b0 fe ff ff       	call   c00306b3 <ide_prepare>
c0030803:	83 c4 04             	add    $0x4,%esp
c0030806:	e8 56 ff ff ff       	call   c0030761 <issue_write>
c003080b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0030812:	eb 22                	jmp    c0030836 <disk_do_write+0x4b>
c0030814:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030817:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003081e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030821:	01 d0                	add    %edx,%eax
c0030823:	8b 00                	mov    (%eax),%eax
c0030825:	50                   	push   %eax
c0030826:	68 f0 01 00 00       	push   $0x1f0
c003082b:	e8 37 fe ff ff       	call   c0030667 <out_long>
c0030830:	83 c4 08             	add    $0x8,%esp
c0030833:	ff 45 fc             	incl   -0x4(%ebp)
c0030836:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030839:	83 f8 7f             	cmp    $0x7f,%eax
c003083c:	76 d6                	jbe    c0030814 <disk_do_write+0x29>
c003083e:	90                   	nop
c003083f:	c9                   	leave  
c0030840:	c3                   	ret    

c0030841 <loader>:
c0030841:	55                   	push   %ebp
c0030842:	89 e5                	mov    %esp,%ebp
c0030844:	53                   	push   %ebx
c0030845:	83 ec 14             	sub    $0x14,%esp
c0030848:	e8 fb f8 ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c003084d:	81 c3 b3 c7 00 00    	add    $0xc7b3,%ebx
c0030853:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c003085a:	8d 83 98 c0 ff ff    	lea    -0x3f68(%ebx),%eax
c0030860:	50                   	push   %eax
c0030861:	6a 1d                	push   $0x1d
c0030863:	8d 83 4c c0 ff ff    	lea    -0x3fb4(%ebx),%eax
c0030869:	50                   	push   %eax
c003086a:	8d 83 5c c0 ff ff    	lea    -0x3fa4(%ebx),%eax
c0030870:	50                   	push   %eax
c0030871:	e8 84 01 00 00       	call   c00309fa <printk>
c0030876:	83 c4 10             	add    $0x10,%esp
c0030879:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003087c:	8b 50 1c             	mov    0x1c(%eax),%edx
c003087f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030882:	01 d0                	add    %edx,%eax
c0030884:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030887:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003088a:	8b 40 2c             	mov    0x2c(%eax),%eax
c003088d:	0f b7 c0             	movzwl %ax,%eax
c0030890:	c1 e0 05             	shl    $0x5,%eax
c0030893:	89 c2                	mov    %eax,%edx
c0030895:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030898:	01 d0                	add    %edx,%eax
c003089a:	89 45 ec             	mov    %eax,-0x14(%ebp)
c003089d:	eb 6e                	jmp    c003090d <loader+0xcc>
c003089f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308a2:	8b 00                	mov    (%eax),%eax
c00308a4:	83 f8 01             	cmp    $0x1,%eax
c00308a7:	75 60                	jne    c0030909 <loader+0xc8>
c00308a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308ac:	8b 40 10             	mov    0x10(%eax),%eax
c00308af:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00308b2:	8b 4a 04             	mov    0x4(%edx),%ecx
c00308b5:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00308b8:	01 d1                	add    %edx,%ecx
c00308ba:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00308bd:	8b 52 08             	mov    0x8(%edx),%edx
c00308c0:	83 ec 04             	sub    $0x4,%esp
c00308c3:	50                   	push   %eax
c00308c4:	51                   	push   %ecx
c00308c5:	52                   	push   %edx
c00308c6:	e8 f9 13 00 00       	call   c0031cc4 <memcpy>
c00308cb:	83 c4 10             	add    $0x10,%esp
c00308ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308d1:	8b 50 10             	mov    0x10(%eax),%edx
c00308d4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308d7:	8b 40 14             	mov    0x14(%eax),%eax
c00308da:	39 c2                	cmp    %eax,%edx
c00308dc:	73 2b                	jae    c0030909 <loader+0xc8>
c00308de:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308e1:	8b 50 14             	mov    0x14(%eax),%edx
c00308e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308e7:	8b 40 10             	mov    0x10(%eax),%eax
c00308ea:	29 c2                	sub    %eax,%edx
c00308ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308ef:	8b 48 10             	mov    0x10(%eax),%ecx
c00308f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308f5:	8b 40 08             	mov    0x8(%eax),%eax
c00308f8:	01 c8                	add    %ecx,%eax
c00308fa:	83 ec 04             	sub    $0x4,%esp
c00308fd:	52                   	push   %edx
c00308fe:	6a 00                	push   $0x0
c0030900:	50                   	push   %eax
c0030901:	e8 06 14 00 00       	call   c0031d0c <memset>
c0030906:	83 c4 10             	add    $0x10,%esp
c0030909:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c003090d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030910:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c0030913:	72 8a                	jb     c003089f <loader+0x5e>
c0030915:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030918:	8b 40 18             	mov    0x18(%eax),%eax
c003091b:	89 45 e8             	mov    %eax,-0x18(%ebp)
c003091e:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030921:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030924:	c9                   	leave  
c0030925:	c3                   	ret    

c0030926 <sbrk>:
c0030926:	55                   	push   %ebp
c0030927:	89 e5                	mov    %esp,%ebp
c0030929:	53                   	push   %ebx
c003092a:	83 ec 04             	sub    $0x4,%esp
c003092d:	e8 12 f8 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030932:	05 ce c6 00 00       	add    $0xc6ce,%eax
c0030937:	83 ec 0c             	sub    $0xc,%esp
c003093a:	8d 90 a0 c0 ff ff    	lea    -0x3f60(%eax),%edx
c0030940:	52                   	push   %edx
c0030941:	8d 90 00 c1 ff ff    	lea    -0x3f00(%eax),%edx
c0030947:	52                   	push   %edx
c0030948:	6a 09                	push   $0x9
c003094a:	8d 90 a2 c0 ff ff    	lea    -0x3f5e(%eax),%edx
c0030950:	52                   	push   %edx
c0030951:	8d 90 b4 c0 ff ff    	lea    -0x3f4c(%eax),%edx
c0030957:	52                   	push   %edx
c0030958:	89 c3                	mov    %eax,%ebx
c003095a:	e8 9b 00 00 00       	call   c00309fa <printk>
c003095f:	83 c4 20             	add    $0x20,%esp
c0030962:	b8 01 00 00 00       	mov    $0x1,%eax
c0030967:	82                   	nemu_trap 
c0030968:	b8 00 00 00 00       	mov    $0x0,%eax
c003096d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030970:	c9                   	leave  
c0030971:	c3                   	ret    

c0030972 <in_byte>:
c0030972:	55                   	push   %ebp
c0030973:	89 e5                	mov    %esp,%ebp
c0030975:	83 ec 14             	sub    $0x14,%esp
c0030978:	e8 c7 f7 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003097d:	05 83 c6 00 00       	add    $0xc683,%eax
c0030982:	8b 45 08             	mov    0x8(%ebp),%eax
c0030985:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030989:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003098c:	89 c2                	mov    %eax,%edx
c003098e:	ec                   	in     (%dx),%al
c003098f:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030992:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030995:	c9                   	leave  
c0030996:	c3                   	ret    

c0030997 <init_serial>:
c0030997:	55                   	push   %ebp
c0030998:	89 e5                	mov    %esp,%ebp
c003099a:	e8 a5 f7 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003099f:	05 61 c6 00 00       	add    $0xc661,%eax
c00309a4:	90                   	nop
c00309a5:	5d                   	pop    %ebp
c00309a6:	c3                   	ret    

c00309a7 <serial_idle>:
c00309a7:	55                   	push   %ebp
c00309a8:	89 e5                	mov    %esp,%ebp
c00309aa:	e8 95 f7 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00309af:	05 51 c6 00 00       	add    $0xc651,%eax
c00309b4:	68 fd 03 00 00       	push   $0x3fd
c00309b9:	e8 b4 ff ff ff       	call   c0030972 <in_byte>
c00309be:	83 c4 04             	add    $0x4,%esp
c00309c1:	0f b6 c0             	movzbl %al,%eax
c00309c4:	83 e0 20             	and    $0x20,%eax
c00309c7:	85 c0                	test   %eax,%eax
c00309c9:	0f 95 c0             	setne  %al
c00309cc:	0f b6 c0             	movzbl %al,%eax
c00309cf:	c9                   	leave  
c00309d0:	c3                   	ret    

c00309d1 <serial_printc>:
c00309d1:	55                   	push   %ebp
c00309d2:	89 e5                	mov    %esp,%ebp
c00309d4:	83 ec 04             	sub    $0x4,%esp
c00309d7:	e8 68 f7 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00309dc:	05 24 c6 00 00       	add    $0xc624,%eax
c00309e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00309e4:	88 45 fc             	mov    %al,-0x4(%ebp)
c00309e7:	90                   	nop
c00309e8:	e8 ba ff ff ff       	call   c00309a7 <serial_idle>
c00309ed:	85 c0                	test   %eax,%eax
c00309ef:	74 f7                	je     c00309e8 <serial_printc+0x17>
c00309f1:	b8 01 00 00 00       	mov    $0x1,%eax
c00309f6:	82                   	nemu_trap 
c00309f7:	90                   	nop
c00309f8:	c9                   	leave  
c00309f9:	c3                   	ret    

c00309fa <printk>:
c00309fa:	55                   	push   %ebp
c00309fb:	89 e5                	mov    %esp,%ebp
c00309fd:	53                   	push   %ebx
c00309fe:	83 ec 14             	sub    $0x14,%esp
c0030a01:	e8 42 f7 ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c0030a06:	81 c3 fa c5 00 00    	add    $0xc5fa,%ebx
c0030a0c:	8d 45 0c             	lea    0xc(%ebp),%eax
c0030a0f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030a12:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a15:	ff 75 f4             	pushl  -0xc(%ebp)
c0030a18:	50                   	push   %eax
c0030a19:	68 00 01 00 00       	push   $0x100
c0030a1e:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030a24:	50                   	push   %eax
c0030a25:	e8 06 14 00 00       	call   c0031e30 <vsnprintf>
c0030a2a:	83 c4 10             	add    $0x10,%esp
c0030a2d:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030a30:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030a33:	83 ec 04             	sub    $0x4,%esp
c0030a36:	50                   	push   %eax
c0030a37:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030a3d:	50                   	push   %eax
c0030a3e:	6a 01                	push   $0x1
c0030a40:	e8 b1 07 00 00       	call   c00311f6 <fs_write>
c0030a45:	83 c4 10             	add    $0x10,%esp
c0030a48:	90                   	nop
c0030a49:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a4c:	c9                   	leave  
c0030a4d:	c3                   	ret    

c0030a4e <add_irq_handle>:
c0030a4e:	55                   	push   %ebp
c0030a4f:	89 e5                	mov    %esp,%ebp
c0030a51:	53                   	push   %ebx
c0030a52:	83 ec 14             	sub    $0x14,%esp
c0030a55:	e8 ee f6 ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c0030a5a:	81 c3 a6 c5 00 00    	add    $0xc5a6,%ebx
c0030a60:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0030a64:	7e 2f                	jle    c0030a95 <add_irq_handle+0x47>
c0030a66:	83 ec 0c             	sub    $0xc,%esp
c0030a69:	8d 83 08 c1 ff ff    	lea    -0x3ef8(%ebx),%eax
c0030a6f:	50                   	push   %eax
c0030a70:	8d 83 f4 c2 ff ff    	lea    -0x3d0c(%ebx),%eax
c0030a76:	50                   	push   %eax
c0030a77:	6a 17                	push   $0x17
c0030a79:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030a7f:	50                   	push   %eax
c0030a80:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030a86:	50                   	push   %eax
c0030a87:	e8 6e ff ff ff       	call   c00309fa <printk>
c0030a8c:	83 c4 20             	add    $0x20,%esp
c0030a8f:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a94:	82                   	nemu_trap 
c0030a95:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
c0030a9b:	83 f8 20             	cmp    $0x20,%eax
c0030a9e:	7e 2f                	jle    c0030acf <add_irq_handle+0x81>
c0030aa0:	83 ec 0c             	sub    $0xc,%esp
c0030aa3:	8d 83 7a c1 ff ff    	lea    -0x3e86(%ebx),%eax
c0030aa9:	50                   	push   %eax
c0030aaa:	8d 83 f4 c2 ff ff    	lea    -0x3d0c(%ebx),%eax
c0030ab0:	50                   	push   %eax
c0030ab1:	6a 18                	push   $0x18
c0030ab3:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030ab9:	50                   	push   %eax
c0030aba:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030ac0:	50                   	push   %eax
c0030ac1:	e8 34 ff ff ff       	call   c00309fa <printk>
c0030ac6:	83 c4 20             	add    $0x20,%esp
c0030ac9:	b8 01 00 00 00       	mov    $0x1,%eax
c0030ace:	82                   	nemu_trap 
c0030acf:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
c0030ad5:	8d 50 01             	lea    0x1(%eax),%edx
c0030ad8:	89 93 60 16 01 00    	mov    %edx,0x11660(%ebx)
c0030ade:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0030ae5:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
c0030aeb:	01 d0                	add    %edx,%eax
c0030aed:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030af0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030af3:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030af6:	89 10                	mov    %edx,(%eax)
c0030af8:	8b 45 08             	mov    0x8(%ebp),%eax
c0030afb:	8b 94 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%edx
c0030b02:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030b05:	89 50 04             	mov    %edx,0x4(%eax)
c0030b08:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b0b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030b0e:	89 94 83 20 16 01 00 	mov    %edx,0x11620(%ebx,%eax,4)
c0030b15:	90                   	nop
c0030b16:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b19:	c9                   	leave  
c0030b1a:	c3                   	ret    

c0030b1b <irq_handle>:
c0030b1b:	55                   	push   %ebp
c0030b1c:	89 e5                	mov    %esp,%ebp
c0030b1e:	53                   	push   %ebx
c0030b1f:	83 ec 14             	sub    $0x14,%esp
c0030b22:	e8 21 f6 ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c0030b27:	81 c3 d9 c4 00 00    	add    $0xc4d9,%ebx
c0030b2d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b30:	8b 40 20             	mov    0x20(%eax),%eax
c0030b33:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030b36:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0030b3a:	79 2a                	jns    c0030b66 <irq_handle+0x4b>
c0030b3c:	8d 83 04 c3 ff ff    	lea    -0x3cfc(%ebx),%eax
c0030b42:	50                   	push   %eax
c0030b43:	6a 27                	push   $0x27
c0030b45:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030b4b:	50                   	push   %eax
c0030b4c:	8d 83 98 c1 ff ff    	lea    -0x3e68(%ebx),%eax
c0030b52:	50                   	push   %eax
c0030b53:	e8 a2 fe ff ff       	call   c00309fa <printk>
c0030b58:	83 c4 10             	add    $0x10,%esp
c0030b5b:	b8 01 00 00 00       	mov    $0x1,%eax
c0030b60:	82                   	nemu_trap 
c0030b61:	e9 f9 00 00 00       	jmp    c0030c5f <irq_handle+0x144>
c0030b66:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
c0030b6d:	75 13                	jne    c0030b82 <irq_handle+0x67>
c0030b6f:	83 ec 0c             	sub    $0xc,%esp
c0030b72:	ff 75 08             	pushl  0x8(%ebp)
c0030b75:	e8 d8 08 00 00       	call   c0031452 <do_syscall>
c0030b7a:	83 c4 10             	add    $0x10,%esp
c0030b7d:	e9 dd 00 00 00       	jmp    c0030c5f <irq_handle+0x144>
c0030b82:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030b89:	7f 37                	jg     c0030bc2 <irq_handle+0xa7>
c0030b8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030b8e:	8b 40 28             	mov    0x28(%eax),%eax
c0030b91:	83 ec 08             	sub    $0x8,%esp
c0030b94:	50                   	push   %eax
c0030b95:	ff 75 f0             	pushl  -0x10(%ebp)
c0030b98:	8d 83 04 c3 ff ff    	lea    -0x3cfc(%ebx),%eax
c0030b9e:	50                   	push   %eax
c0030b9f:	6a 2f                	push   $0x2f
c0030ba1:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030ba7:	50                   	push   %eax
c0030ba8:	8d 83 e4 c1 ff ff    	lea    -0x3e1c(%ebx),%eax
c0030bae:	50                   	push   %eax
c0030baf:	e8 46 fe ff ff       	call   c00309fa <printk>
c0030bb4:	83 c4 20             	add    $0x20,%esp
c0030bb7:	b8 01 00 00 00       	mov    $0x1,%eax
c0030bbc:	82                   	nemu_trap 
c0030bbd:	e9 9d 00 00 00       	jmp    c0030c5f <irq_handle+0x144>
c0030bc2:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030bc9:	0f 8e 90 00 00 00    	jle    c0030c5f <irq_handle+0x144>
c0030bcf:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030bd2:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0030bd7:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0030bda:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c0030bde:	7e 2f                	jle    c0030c0f <irq_handle+0xf4>
c0030be0:	83 ec 0c             	sub    $0xc,%esp
c0030be3:	8d 83 3e c2 ff ff    	lea    -0x3dc2(%ebx),%eax
c0030be9:	50                   	push   %eax
c0030bea:	8d 83 04 c3 ff ff    	lea    -0x3cfc(%ebx),%eax
c0030bf0:	50                   	push   %eax
c0030bf1:	6a 34                	push   $0x34
c0030bf3:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030bf9:	50                   	push   %eax
c0030bfa:	8d 83 30 c1 ff ff    	lea    -0x3ed0(%ebx),%eax
c0030c00:	50                   	push   %eax
c0030c01:	e8 f4 fd ff ff       	call   c00309fa <printk>
c0030c06:	83 c4 20             	add    $0x20,%esp
c0030c09:	b8 01 00 00 00       	mov    $0x1,%eax
c0030c0e:	82                   	nemu_trap 
c0030c0f:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0030c13:	75 25                	jne    c0030c3a <irq_handle+0x11f>
c0030c15:	8d 83 04 c3 ff ff    	lea    -0x3cfc(%ebx),%eax
c0030c1b:	50                   	push   %eax
c0030c1c:	6a 36                	push   $0x36
c0030c1e:	8d 83 1b c1 ff ff    	lea    -0x3ee5(%ebx),%eax
c0030c24:	50                   	push   %eax
c0030c25:	8d 83 54 c2 ff ff    	lea    -0x3dac(%ebx),%eax
c0030c2b:	50                   	push   %eax
c0030c2c:	e8 c9 fd ff ff       	call   c00309fa <printk>
c0030c31:	83 c4 10             	add    $0x10,%esp
c0030c34:	b8 01 00 00 00       	mov    $0x1,%eax
c0030c39:	82                   	nemu_trap 
c0030c3a:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030c3d:	8b 84 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%eax
c0030c44:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030c47:	eb 10                	jmp    c0030c59 <irq_handle+0x13e>
c0030c49:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c4c:	8b 00                	mov    (%eax),%eax
c0030c4e:	ff d0                	call   *%eax
c0030c50:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030c53:	8b 40 04             	mov    0x4(%eax),%eax
c0030c56:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030c59:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0030c5d:	75 ea                	jne    c0030c49 <irq_handle+0x12e>
c0030c5f:	90                   	nop
c0030c60:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030c63:	c9                   	leave  
c0030c64:	c3                   	ret    

c0030c65 <out_byte>:
c0030c65:	55                   	push   %ebp
c0030c66:	89 e5                	mov    %esp,%ebp
c0030c68:	83 ec 08             	sub    $0x8,%esp
c0030c6b:	e8 d4 f4 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030c70:	05 90 c3 00 00       	add    $0xc390,%eax
c0030c75:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c78:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030c7b:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030c7f:	88 d0                	mov    %dl,%al
c0030c81:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030c84:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030c87:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030c8a:	ee                   	out    %al,(%dx)
c0030c8b:	90                   	nop
c0030c8c:	c9                   	leave  
c0030c8d:	c3                   	ret    

c0030c8e <init_i8259>:
c0030c8e:	55                   	push   %ebp
c0030c8f:	89 e5                	mov    %esp,%ebp
c0030c91:	e8 ae f4 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030c96:	05 6a c3 00 00       	add    $0xc36a,%eax
c0030c9b:	68 ff 00 00 00       	push   $0xff
c0030ca0:	6a 21                	push   $0x21
c0030ca2:	e8 be ff ff ff       	call   c0030c65 <out_byte>
c0030ca7:	83 c4 08             	add    $0x8,%esp
c0030caa:	68 ff 00 00 00       	push   $0xff
c0030caf:	68 a1 00 00 00       	push   $0xa1
c0030cb4:	e8 ac ff ff ff       	call   c0030c65 <out_byte>
c0030cb9:	83 c4 08             	add    $0x8,%esp
c0030cbc:	6a 11                	push   $0x11
c0030cbe:	6a 20                	push   $0x20
c0030cc0:	e8 a0 ff ff ff       	call   c0030c65 <out_byte>
c0030cc5:	83 c4 08             	add    $0x8,%esp
c0030cc8:	6a 20                	push   $0x20
c0030cca:	6a 21                	push   $0x21
c0030ccc:	e8 94 ff ff ff       	call   c0030c65 <out_byte>
c0030cd1:	83 c4 08             	add    $0x8,%esp
c0030cd4:	6a 04                	push   $0x4
c0030cd6:	6a 21                	push   $0x21
c0030cd8:	e8 88 ff ff ff       	call   c0030c65 <out_byte>
c0030cdd:	83 c4 08             	add    $0x8,%esp
c0030ce0:	6a 03                	push   $0x3
c0030ce2:	6a 21                	push   $0x21
c0030ce4:	e8 7c ff ff ff       	call   c0030c65 <out_byte>
c0030ce9:	83 c4 08             	add    $0x8,%esp
c0030cec:	6a 11                	push   $0x11
c0030cee:	68 a0 00 00 00       	push   $0xa0
c0030cf3:	e8 6d ff ff ff       	call   c0030c65 <out_byte>
c0030cf8:	83 c4 08             	add    $0x8,%esp
c0030cfb:	6a 28                	push   $0x28
c0030cfd:	68 a1 00 00 00       	push   $0xa1
c0030d02:	e8 5e ff ff ff       	call   c0030c65 <out_byte>
c0030d07:	83 c4 08             	add    $0x8,%esp
c0030d0a:	6a 02                	push   $0x2
c0030d0c:	68 a1 00 00 00       	push   $0xa1
c0030d11:	e8 4f ff ff ff       	call   c0030c65 <out_byte>
c0030d16:	83 c4 08             	add    $0x8,%esp
c0030d19:	6a 03                	push   $0x3
c0030d1b:	68 a1 00 00 00       	push   $0xa1
c0030d20:	e8 40 ff ff ff       	call   c0030c65 <out_byte>
c0030d25:	83 c4 08             	add    $0x8,%esp
c0030d28:	6a 68                	push   $0x68
c0030d2a:	6a 20                	push   $0x20
c0030d2c:	e8 34 ff ff ff       	call   c0030c65 <out_byte>
c0030d31:	83 c4 08             	add    $0x8,%esp
c0030d34:	6a 0a                	push   $0xa
c0030d36:	6a 20                	push   $0x20
c0030d38:	e8 28 ff ff ff       	call   c0030c65 <out_byte>
c0030d3d:	83 c4 08             	add    $0x8,%esp
c0030d40:	6a 68                	push   $0x68
c0030d42:	68 a0 00 00 00       	push   $0xa0
c0030d47:	e8 19 ff ff ff       	call   c0030c65 <out_byte>
c0030d4c:	83 c4 08             	add    $0x8,%esp
c0030d4f:	6a 0a                	push   $0xa
c0030d51:	68 a0 00 00 00       	push   $0xa0
c0030d56:	e8 0a ff ff ff       	call   c0030c65 <out_byte>
c0030d5b:	83 c4 08             	add    $0x8,%esp
c0030d5e:	90                   	nop
c0030d5f:	c9                   	leave  
c0030d60:	c3                   	ret    

c0030d61 <write_idtr>:
c0030d61:	55                   	push   %ebp
c0030d62:	89 e5                	mov    %esp,%ebp
c0030d64:	e8 db f3 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030d69:	05 97 c2 00 00       	add    $0xc297,%eax
c0030d6e:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030d71:	4a                   	dec    %edx
c0030d72:	66 89 90 80 1e 01 00 	mov    %dx,0x11e80(%eax)
c0030d79:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d7c:	66 89 90 82 1e 01 00 	mov    %dx,0x11e82(%eax)
c0030d83:	8b 55 08             	mov    0x8(%ebp),%edx
c0030d86:	c1 ea 10             	shr    $0x10,%edx
c0030d89:	66 89 90 84 1e 01 00 	mov    %dx,0x11e84(%eax)
c0030d90:	8d 80 80 1e 01 00    	lea    0x11e80(%eax),%eax
c0030d96:	0f 01 18             	lidtl  (%eax)
c0030d99:	90                   	nop
c0030d9a:	5d                   	pop    %ebp
c0030d9b:	c3                   	ret    

c0030d9c <sti>:
c0030d9c:	55                   	push   %ebp
c0030d9d:	89 e5                	mov    %esp,%ebp
c0030d9f:	e8 a0 f3 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030da4:	05 5c c2 00 00       	add    $0xc25c,%eax
c0030da9:	fb                   	sti    
c0030daa:	90                   	nop
c0030dab:	5d                   	pop    %ebp
c0030dac:	c3                   	ret    

c0030dad <set_intr>:
c0030dad:	55                   	push   %ebp
c0030dae:	89 e5                	mov    %esp,%ebp
c0030db0:	e8 8f f3 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030db5:	05 4b c2 00 00       	add    $0xc24b,%eax
c0030dba:	8b 45 10             	mov    0x10(%ebp),%eax
c0030dbd:	8b 55 08             	mov    0x8(%ebp),%edx
c0030dc0:	66 89 02             	mov    %ax,(%edx)
c0030dc3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030dc6:	8b 55 08             	mov    0x8(%ebp),%edx
c0030dc9:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030dcd:	8b 45 08             	mov    0x8(%ebp),%eax
c0030dd0:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030dd4:	8b 45 08             	mov    0x8(%ebp),%eax
c0030dd7:	8a 50 05             	mov    0x5(%eax),%dl
c0030dda:	83 e2 f0             	and    $0xfffffff0,%edx
c0030ddd:	83 ca 0e             	or     $0xe,%edx
c0030de0:	88 50 05             	mov    %dl,0x5(%eax)
c0030de3:	8b 45 08             	mov    0x8(%ebp),%eax
c0030de6:	8a 50 05             	mov    0x5(%eax),%dl
c0030de9:	83 e2 ef             	and    $0xffffffef,%edx
c0030dec:	88 50 05             	mov    %dl,0x5(%eax)
c0030def:	8b 45 14             	mov    0x14(%ebp),%eax
c0030df2:	88 c2                	mov    %al,%dl
c0030df4:	83 e2 03             	and    $0x3,%edx
c0030df7:	8b 45 08             	mov    0x8(%ebp),%eax
c0030dfa:	83 e2 03             	and    $0x3,%edx
c0030dfd:	88 d1                	mov    %dl,%cl
c0030dff:	c1 e1 05             	shl    $0x5,%ecx
c0030e02:	8a 50 05             	mov    0x5(%eax),%dl
c0030e05:	83 e2 9f             	and    $0xffffff9f,%edx
c0030e08:	09 ca                	or     %ecx,%edx
c0030e0a:	88 50 05             	mov    %dl,0x5(%eax)
c0030e0d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e10:	8a 50 05             	mov    0x5(%eax),%dl
c0030e13:	83 ca 80             	or     $0xffffff80,%edx
c0030e16:	88 50 05             	mov    %dl,0x5(%eax)
c0030e19:	8b 45 10             	mov    0x10(%ebp),%eax
c0030e1c:	c1 e8 10             	shr    $0x10,%eax
c0030e1f:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e22:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030e26:	90                   	nop
c0030e27:	5d                   	pop    %ebp
c0030e28:	c3                   	ret    

c0030e29 <set_trap>:
c0030e29:	55                   	push   %ebp
c0030e2a:	89 e5                	mov    %esp,%ebp
c0030e2c:	e8 13 f3 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0030e31:	05 cf c1 00 00       	add    $0xc1cf,%eax
c0030e36:	8b 45 10             	mov    0x10(%ebp),%eax
c0030e39:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e3c:	66 89 02             	mov    %ax,(%edx)
c0030e3f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030e42:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e45:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030e49:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e4c:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030e50:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e53:	8a 50 05             	mov    0x5(%eax),%dl
c0030e56:	83 ca 0f             	or     $0xf,%edx
c0030e59:	88 50 05             	mov    %dl,0x5(%eax)
c0030e5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e5f:	8a 50 05             	mov    0x5(%eax),%dl
c0030e62:	83 e2 ef             	and    $0xffffffef,%edx
c0030e65:	88 50 05             	mov    %dl,0x5(%eax)
c0030e68:	8b 45 14             	mov    0x14(%ebp),%eax
c0030e6b:	88 c2                	mov    %al,%dl
c0030e6d:	83 e2 03             	and    $0x3,%edx
c0030e70:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e73:	83 e2 03             	and    $0x3,%edx
c0030e76:	88 d1                	mov    %dl,%cl
c0030e78:	c1 e1 05             	shl    $0x5,%ecx
c0030e7b:	8a 50 05             	mov    0x5(%eax),%dl
c0030e7e:	83 e2 9f             	and    $0xffffff9f,%edx
c0030e81:	09 ca                	or     %ecx,%edx
c0030e83:	88 50 05             	mov    %dl,0x5(%eax)
c0030e86:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e89:	8a 50 05             	mov    0x5(%eax),%dl
c0030e8c:	83 ca 80             	or     $0xffffff80,%edx
c0030e8f:	88 50 05             	mov    %dl,0x5(%eax)
c0030e92:	8b 45 10             	mov    0x10(%ebp),%eax
c0030e95:	c1 e8 10             	shr    $0x10,%eax
c0030e98:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e9b:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030e9f:	90                   	nop
c0030ea0:	5d                   	pop    %ebp
c0030ea1:	c3                   	ret    

c0030ea2 <init_idt>:
c0030ea2:	55                   	push   %ebp
c0030ea3:	89 e5                	mov    %esp,%ebp
c0030ea5:	53                   	push   %ebx
c0030ea6:	83 ec 10             	sub    $0x10,%esp
c0030ea9:	e8 9a f2 ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c0030eae:	81 c3 52 c1 00 00    	add    $0xc152,%ebx
c0030eb4:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030ebb:	eb 2b                	jmp    c0030ee8 <init_idt+0x46>
c0030ebd:	c7 c0 cd 00 03 c0    	mov    $0xc00300cd,%eax
c0030ec3:	89 c2                	mov    %eax,%edx
c0030ec5:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030ec8:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0030ecf:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0030ed5:	01 c8                	add    %ecx,%eax
c0030ed7:	6a 00                	push   $0x0
c0030ed9:	52                   	push   %edx
c0030eda:	6a 08                	push   $0x8
c0030edc:	50                   	push   %eax
c0030edd:	e8 47 ff ff ff       	call   c0030e29 <set_trap>
c0030ee2:	83 c4 10             	add    $0x10,%esp
c0030ee5:	ff 45 f8             	incl   -0x8(%ebp)
c0030ee8:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0030eef:	7e cc                	jle    c0030ebd <init_idt+0x1b>
c0030ef1:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030ef7:	6a 00                	push   $0x0
c0030ef9:	50                   	push   %eax
c0030efa:	6a 08                	push   $0x8
c0030efc:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0030f02:	50                   	push   %eax
c0030f03:	e8 21 ff ff ff       	call   c0030e29 <set_trap>
c0030f08:	83 c4 10             	add    $0x10,%esp
c0030f0b:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c0030f11:	89 c2                	mov    %eax,%edx
c0030f13:	8d 83 88 16 01 00    	lea    0x11688(%ebx),%eax
c0030f19:	6a 00                	push   $0x0
c0030f1b:	52                   	push   %edx
c0030f1c:	6a 08                	push   $0x8
c0030f1e:	50                   	push   %eax
c0030f1f:	e8 05 ff ff ff       	call   c0030e29 <set_trap>
c0030f24:	83 c4 10             	add    $0x10,%esp
c0030f27:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c0030f2d:	89 c2                	mov    %eax,%edx
c0030f2f:	8d 83 90 16 01 00    	lea    0x11690(%ebx),%eax
c0030f35:	6a 00                	push   $0x0
c0030f37:	52                   	push   %edx
c0030f38:	6a 08                	push   $0x8
c0030f3a:	50                   	push   %eax
c0030f3b:	e8 e9 fe ff ff       	call   c0030e29 <set_trap>
c0030f40:	83 c4 10             	add    $0x10,%esp
c0030f43:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c0030f49:	89 c2                	mov    %eax,%edx
c0030f4b:	8d 83 98 16 01 00    	lea    0x11698(%ebx),%eax
c0030f51:	6a 00                	push   $0x0
c0030f53:	52                   	push   %edx
c0030f54:	6a 08                	push   $0x8
c0030f56:	50                   	push   %eax
c0030f57:	e8 cd fe ff ff       	call   c0030e29 <set_trap>
c0030f5c:	83 c4 10             	add    $0x10,%esp
c0030f5f:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c0030f65:	89 c2                	mov    %eax,%edx
c0030f67:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
c0030f6d:	6a 00                	push   $0x0
c0030f6f:	52                   	push   %edx
c0030f70:	6a 08                	push   $0x8
c0030f72:	50                   	push   %eax
c0030f73:	e8 b1 fe ff ff       	call   c0030e29 <set_trap>
c0030f78:	83 c4 10             	add    $0x10,%esp
c0030f7b:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c0030f81:	89 c2                	mov    %eax,%edx
c0030f83:	8d 83 a8 16 01 00    	lea    0x116a8(%ebx),%eax
c0030f89:	6a 00                	push   $0x0
c0030f8b:	52                   	push   %edx
c0030f8c:	6a 08                	push   $0x8
c0030f8e:	50                   	push   %eax
c0030f8f:	e8 95 fe ff ff       	call   c0030e29 <set_trap>
c0030f94:	83 c4 10             	add    $0x10,%esp
c0030f97:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0030f9d:	89 c2                	mov    %eax,%edx
c0030f9f:	8d 83 b0 16 01 00    	lea    0x116b0(%ebx),%eax
c0030fa5:	6a 00                	push   $0x0
c0030fa7:	52                   	push   %edx
c0030fa8:	6a 08                	push   $0x8
c0030faa:	50                   	push   %eax
c0030fab:	e8 79 fe ff ff       	call   c0030e29 <set_trap>
c0030fb0:	83 c4 10             	add    $0x10,%esp
c0030fb3:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0030fb9:	89 c2                	mov    %eax,%edx
c0030fbb:	8d 83 b8 16 01 00    	lea    0x116b8(%ebx),%eax
c0030fc1:	6a 00                	push   $0x0
c0030fc3:	52                   	push   %edx
c0030fc4:	6a 08                	push   $0x8
c0030fc6:	50                   	push   %eax
c0030fc7:	e8 5d fe ff ff       	call   c0030e29 <set_trap>
c0030fcc:	83 c4 10             	add    $0x10,%esp
c0030fcf:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0030fd5:	89 c2                	mov    %eax,%edx
c0030fd7:	8d 83 c0 16 01 00    	lea    0x116c0(%ebx),%eax
c0030fdd:	6a 00                	push   $0x0
c0030fdf:	52                   	push   %edx
c0030fe0:	6a 08                	push   $0x8
c0030fe2:	50                   	push   %eax
c0030fe3:	e8 41 fe ff ff       	call   c0030e29 <set_trap>
c0030fe8:	83 c4 10             	add    $0x10,%esp
c0030feb:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c0030ff1:	89 c2                	mov    %eax,%edx
c0030ff3:	8d 83 c8 16 01 00    	lea    0x116c8(%ebx),%eax
c0030ff9:	6a 00                	push   $0x0
c0030ffb:	52                   	push   %edx
c0030ffc:	6a 08                	push   $0x8
c0030ffe:	50                   	push   %eax
c0030fff:	e8 25 fe ff ff       	call   c0030e29 <set_trap>
c0031004:	83 c4 10             	add    $0x10,%esp
c0031007:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c003100d:	89 c2                	mov    %eax,%edx
c003100f:	8d 83 d0 16 01 00    	lea    0x116d0(%ebx),%eax
c0031015:	6a 00                	push   $0x0
c0031017:	52                   	push   %edx
c0031018:	6a 08                	push   $0x8
c003101a:	50                   	push   %eax
c003101b:	e8 09 fe ff ff       	call   c0030e29 <set_trap>
c0031020:	83 c4 10             	add    $0x10,%esp
c0031023:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c0031029:	89 c2                	mov    %eax,%edx
c003102b:	8d 83 d8 16 01 00    	lea    0x116d8(%ebx),%eax
c0031031:	6a 00                	push   $0x0
c0031033:	52                   	push   %edx
c0031034:	6a 08                	push   $0x8
c0031036:	50                   	push   %eax
c0031037:	e8 ed fd ff ff       	call   c0030e29 <set_trap>
c003103c:	83 c4 10             	add    $0x10,%esp
c003103f:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c0031045:	89 c2                	mov    %eax,%edx
c0031047:	8d 83 e0 16 01 00    	lea    0x116e0(%ebx),%eax
c003104d:	6a 00                	push   $0x0
c003104f:	52                   	push   %edx
c0031050:	6a 08                	push   $0x8
c0031052:	50                   	push   %eax
c0031053:	e8 d1 fd ff ff       	call   c0030e29 <set_trap>
c0031058:	83 c4 10             	add    $0x10,%esp
c003105b:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c0031061:	89 c2                	mov    %eax,%edx
c0031063:	8d 83 e8 16 01 00    	lea    0x116e8(%ebx),%eax
c0031069:	6a 00                	push   $0x0
c003106b:	52                   	push   %edx
c003106c:	6a 08                	push   $0x8
c003106e:	50                   	push   %eax
c003106f:	e8 b5 fd ff ff       	call   c0030e29 <set_trap>
c0031074:	83 c4 10             	add    $0x10,%esp
c0031077:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c003107d:	89 c2                	mov    %eax,%edx
c003107f:	8d 83 f0 16 01 00    	lea    0x116f0(%ebx),%eax
c0031085:	6a 00                	push   $0x0
c0031087:	52                   	push   %edx
c0031088:	6a 08                	push   $0x8
c003108a:	50                   	push   %eax
c003108b:	e8 99 fd ff ff       	call   c0030e29 <set_trap>
c0031090:	83 c4 10             	add    $0x10,%esp
c0031093:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0031099:	89 c2                	mov    %eax,%edx
c003109b:	8d 83 80 1a 01 00    	lea    0x11a80(%ebx),%eax
c00310a1:	6a 03                	push   $0x3
c00310a3:	52                   	push   %edx
c00310a4:	6a 08                	push   $0x8
c00310a6:	50                   	push   %eax
c00310a7:	e8 7d fd ff ff       	call   c0030e29 <set_trap>
c00310ac:	83 c4 10             	add    $0x10,%esp
c00310af:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c00310b5:	89 c2                	mov    %eax,%edx
c00310b7:	8d 83 80 17 01 00    	lea    0x11780(%ebx),%eax
c00310bd:	6a 00                	push   $0x0
c00310bf:	52                   	push   %edx
c00310c0:	6a 08                	push   $0x8
c00310c2:	50                   	push   %eax
c00310c3:	e8 e5 fc ff ff       	call   c0030dad <set_intr>
c00310c8:	83 c4 10             	add    $0x10,%esp
c00310cb:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c00310d1:	89 c2                	mov    %eax,%edx
c00310d3:	8d 83 88 17 01 00    	lea    0x11788(%ebx),%eax
c00310d9:	6a 00                	push   $0x0
c00310db:	52                   	push   %edx
c00310dc:	6a 08                	push   $0x8
c00310de:	50                   	push   %eax
c00310df:	e8 c9 fc ff ff       	call   c0030dad <set_intr>
c00310e4:	83 c4 10             	add    $0x10,%esp
c00310e7:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c00310ed:	89 c2                	mov    %eax,%edx
c00310ef:	8d 83 90 17 01 00    	lea    0x11790(%ebx),%eax
c00310f5:	6a 00                	push   $0x0
c00310f7:	52                   	push   %edx
c00310f8:	6a 08                	push   $0x8
c00310fa:	50                   	push   %eax
c00310fb:	e8 ad fc ff ff       	call   c0030dad <set_intr>
c0031100:	83 c4 10             	add    $0x10,%esp
c0031103:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c0031109:	89 c2                	mov    %eax,%edx
c003110b:	8d 83 f0 17 01 00    	lea    0x117f0(%ebx),%eax
c0031111:	6a 00                	push   $0x0
c0031113:	52                   	push   %edx
c0031114:	6a 08                	push   $0x8
c0031116:	50                   	push   %eax
c0031117:	e8 91 fc ff ff       	call   c0030dad <set_intr>
c003111c:	83 c4 10             	add    $0x10,%esp
c003111f:	68 00 08 00 00       	push   $0x800
c0031124:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c003112a:	50                   	push   %eax
c003112b:	e8 31 fc ff ff       	call   c0030d61 <write_idtr>
c0031130:	83 c4 08             	add    $0x8,%esp
c0031133:	e8 64 fc ff ff       	call   c0030d9c <sti>
c0031138:	90                   	nop
c0031139:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003113c:	c9                   	leave  
c003113d:	c3                   	ret    

c003113e <fs_open>:
c003113e:	55                   	push   %ebp
c003113f:	89 e5                	mov    %esp,%ebp
c0031141:	53                   	push   %ebx
c0031142:	83 ec 04             	sub    $0x4,%esp
c0031145:	e8 fa ef ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003114a:	05 b6 be 00 00       	add    $0xbeb6,%eax
c003114f:	8d 90 ac c5 ff ff    	lea    -0x3a54(%eax),%edx
c0031155:	52                   	push   %edx
c0031156:	6a 28                	push   $0x28
c0031158:	8d 90 e3 c3 ff ff    	lea    -0x3c1d(%eax),%edx
c003115e:	52                   	push   %edx
c003115f:	8d 90 f0 c3 ff ff    	lea    -0x3c10(%eax),%edx
c0031165:	52                   	push   %edx
c0031166:	89 c3                	mov    %eax,%ebx
c0031168:	e8 8d f8 ff ff       	call   c00309fa <printk>
c003116d:	83 c4 10             	add    $0x10,%esp
c0031170:	b8 01 00 00 00       	mov    $0x1,%eax
c0031175:	82                   	nemu_trap 
c0031176:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c003117b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003117e:	c9                   	leave  
c003117f:	c3                   	ret    

c0031180 <fs_read>:
c0031180:	55                   	push   %ebp
c0031181:	89 e5                	mov    %esp,%ebp
c0031183:	53                   	push   %ebx
c0031184:	83 ec 04             	sub    $0x4,%esp
c0031187:	e8 bc ef ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c003118c:	81 c3 74 be 00 00    	add    $0xbe74,%ebx
c0031192:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0031196:	7f 2f                	jg     c00311c7 <fs_read+0x47>
c0031198:	83 ec 0c             	sub    $0xc,%esp
c003119b:	8d 83 46 c4 ff ff    	lea    -0x3bba(%ebx),%eax
c00311a1:	50                   	push   %eax
c00311a2:	8d 83 b4 c5 ff ff    	lea    -0x3a4c(%ebx),%eax
c00311a8:	50                   	push   %eax
c00311a9:	6a 2e                	push   $0x2e
c00311ab:	8d 83 e3 c3 ff ff    	lea    -0x3c1d(%ebx),%eax
c00311b1:	50                   	push   %eax
c00311b2:	8d 83 50 c4 ff ff    	lea    -0x3bb0(%ebx),%eax
c00311b8:	50                   	push   %eax
c00311b9:	e8 3c f8 ff ff       	call   c00309fa <printk>
c00311be:	83 c4 20             	add    $0x20,%esp
c00311c1:	b8 01 00 00 00       	mov    $0x1,%eax
c00311c6:	82                   	nemu_trap 
c00311c7:	8d 83 b4 c5 ff ff    	lea    -0x3a4c(%ebx),%eax
c00311cd:	50                   	push   %eax
c00311ce:	6a 2f                	push   $0x2f
c00311d0:	8d 83 e3 c3 ff ff    	lea    -0x3c1d(%ebx),%eax
c00311d6:	50                   	push   %eax
c00311d7:	8d 83 9c c4 ff ff    	lea    -0x3b64(%ebx),%eax
c00311dd:	50                   	push   %eax
c00311de:	e8 17 f8 ff ff       	call   c00309fa <printk>
c00311e3:	83 c4 10             	add    $0x10,%esp
c00311e6:	b8 01 00 00 00       	mov    $0x1,%eax
c00311eb:	82                   	nemu_trap 
c00311ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00311f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00311f4:	c9                   	leave  
c00311f5:	c3                   	ret    

c00311f6 <fs_write>:
c00311f6:	55                   	push   %ebp
c00311f7:	89 e5                	mov    %esp,%ebp
c00311f9:	53                   	push   %ebx
c00311fa:	83 ec 04             	sub    $0x4,%esp
c00311fd:	e8 42 ef ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0031202:	05 fe bd 00 00       	add    $0xbdfe,%eax
c0031207:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c003120b:	7e 31                	jle    c003123e <fs_write+0x48>
c003120d:	83 ec 0c             	sub    $0xc,%esp
c0031210:	8d 90 f2 c4 ff ff    	lea    -0x3b0e(%eax),%edx
c0031216:	52                   	push   %edx
c0031217:	8d 90 bc c5 ff ff    	lea    -0x3a44(%eax),%edx
c003121d:	52                   	push   %edx
c003121e:	6a 35                	push   $0x35
c0031220:	8d 90 e3 c3 ff ff    	lea    -0x3c1d(%eax),%edx
c0031226:	52                   	push   %edx
c0031227:	8d 90 50 c4 ff ff    	lea    -0x3bb0(%eax),%edx
c003122d:	52                   	push   %edx
c003122e:	89 c3                	mov    %eax,%ebx
c0031230:	e8 c5 f7 ff ff       	call   c00309fa <printk>
c0031235:	83 c4 20             	add    $0x20,%esp
c0031238:	b8 01 00 00 00       	mov    $0x1,%eax
c003123d:	82                   	nemu_trap 
c003123e:	b8 04 00 00 00       	mov    $0x4,%eax
c0031243:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0031246:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0031249:	8b 55 10             	mov    0x10(%ebp),%edx
c003124c:	82                   	nemu_trap 
c003124d:	89 45 10             	mov    %eax,0x10(%ebp)
c0031250:	8b 45 10             	mov    0x10(%ebp),%eax
c0031253:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031256:	c9                   	leave  
c0031257:	c3                   	ret    

c0031258 <fs_lseek>:
c0031258:	55                   	push   %ebp
c0031259:	89 e5                	mov    %esp,%ebp
c003125b:	53                   	push   %ebx
c003125c:	83 ec 04             	sub    $0x4,%esp
c003125f:	e8 e0 ee ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0031264:	05 9c bd 00 00       	add    $0xbd9c,%eax
c0031269:	8d 90 c8 c5 ff ff    	lea    -0x3a38(%eax),%edx
c003126f:	52                   	push   %edx
c0031270:	6a 48                	push   $0x48
c0031272:	8d 90 e3 c3 ff ff    	lea    -0x3c1d(%eax),%edx
c0031278:	52                   	push   %edx
c0031279:	8d 90 fc c4 ff ff    	lea    -0x3b04(%eax),%edx
c003127f:	52                   	push   %edx
c0031280:	89 c3                	mov    %eax,%ebx
c0031282:	e8 73 f7 ff ff       	call   c00309fa <printk>
c0031287:	83 c4 10             	add    $0x10,%esp
c003128a:	b8 01 00 00 00       	mov    $0x1,%eax
c003128f:	82                   	nemu_trap 
c0031290:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031295:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031298:	c9                   	leave  
c0031299:	c3                   	ret    

c003129a <fs_close>:
c003129a:	55                   	push   %ebp
c003129b:	89 e5                	mov    %esp,%ebp
c003129d:	53                   	push   %ebx
c003129e:	83 ec 04             	sub    $0x4,%esp
c00312a1:	e8 9e ee ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00312a6:	05 5a bd 00 00       	add    $0xbd5a,%eax
c00312ab:	8d 90 d4 c5 ff ff    	lea    -0x3a2c(%eax),%edx
c00312b1:	52                   	push   %edx
c00312b2:	6a 4e                	push   $0x4e
c00312b4:	8d 90 e3 c3 ff ff    	lea    -0x3c1d(%eax),%edx
c00312ba:	52                   	push   %edx
c00312bb:	8d 90 54 c5 ff ff    	lea    -0x3aac(%eax),%edx
c00312c1:	52                   	push   %edx
c00312c2:	89 c3                	mov    %eax,%ebx
c00312c4:	e8 31 f7 ff ff       	call   c00309fa <printk>
c00312c9:	83 c4 10             	add    $0x10,%esp
c00312cc:	b8 01 00 00 00       	mov    $0x1,%eax
c00312d1:	82                   	nemu_trap 
c00312d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00312d7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312da:	c9                   	leave  
c00312db:	c3                   	ret    

c00312dc <sti>:
c00312dc:	55                   	push   %ebp
c00312dd:	89 e5                	mov    %esp,%ebp
c00312df:	e8 60 ee ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00312e4:	05 1c bd 00 00       	add    $0xbd1c,%eax
c00312e9:	fb                   	sti    
c00312ea:	90                   	nop
c00312eb:	5d                   	pop    %ebp
c00312ec:	c3                   	ret    

c00312ed <cli>:
c00312ed:	55                   	push   %ebp
c00312ee:	89 e5                	mov    %esp,%ebp
c00312f0:	e8 4f ee ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00312f5:	05 0b bd 00 00       	add    $0xbd0b,%eax
c00312fa:	fa                   	cli    
c00312fb:	90                   	nop
c00312fc:	5d                   	pop    %ebp
c00312fd:	c3                   	ret    

c00312fe <sys_brk>:
c00312fe:	55                   	push   %ebp
c00312ff:	89 e5                	mov    %esp,%ebp
c0031301:	e8 3e ee ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0031306:	05 fa bc 00 00       	add    $0xbcfa,%eax
c003130b:	8b 45 08             	mov    0x8(%ebp),%eax
c003130e:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c0031315:	90                   	nop
c0031316:	5d                   	pop    %ebp
c0031317:	c3                   	ret    

c0031318 <sys_open>:
c0031318:	55                   	push   %ebp
c0031319:	89 e5                	mov    %esp,%ebp
c003131b:	53                   	push   %ebx
c003131c:	83 ec 04             	sub    $0x4,%esp
c003131f:	e8 20 ee ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0031324:	05 dc bc 00 00       	add    $0xbcdc,%eax
c0031329:	8b 55 08             	mov    0x8(%ebp),%edx
c003132c:	8b 52 18             	mov    0x18(%edx),%edx
c003132f:	89 d1                	mov    %edx,%ecx
c0031331:	8b 55 08             	mov    0x8(%ebp),%edx
c0031334:	8b 52 10             	mov    0x10(%edx),%edx
c0031337:	83 ec 08             	sub    $0x8,%esp
c003133a:	51                   	push   %ecx
c003133b:	52                   	push   %edx
c003133c:	89 c3                	mov    %eax,%ebx
c003133e:	e8 fb fd ff ff       	call   c003113e <fs_open>
c0031343:	83 c4 10             	add    $0x10,%esp
c0031346:	89 c2                	mov    %eax,%edx
c0031348:	8b 45 08             	mov    0x8(%ebp),%eax
c003134b:	89 50 1c             	mov    %edx,0x1c(%eax)
c003134e:	90                   	nop
c003134f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031352:	c9                   	leave  
c0031353:	c3                   	ret    

c0031354 <sys_read>:
c0031354:	55                   	push   %ebp
c0031355:	89 e5                	mov    %esp,%ebp
c0031357:	53                   	push   %ebx
c0031358:	83 ec 04             	sub    $0x4,%esp
c003135b:	e8 e4 ed ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0031360:	05 a0 bc 00 00       	add    $0xbca0,%eax
c0031365:	8b 55 08             	mov    0x8(%ebp),%edx
c0031368:	8b 52 14             	mov    0x14(%edx),%edx
c003136b:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003136e:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031371:	89 cb                	mov    %ecx,%ebx
c0031373:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031376:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031379:	83 ec 04             	sub    $0x4,%esp
c003137c:	52                   	push   %edx
c003137d:	53                   	push   %ebx
c003137e:	51                   	push   %ecx
c003137f:	89 c3                	mov    %eax,%ebx
c0031381:	e8 fa fd ff ff       	call   c0031180 <fs_read>
c0031386:	83 c4 10             	add    $0x10,%esp
c0031389:	89 c2                	mov    %eax,%edx
c003138b:	8b 45 08             	mov    0x8(%ebp),%eax
c003138e:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031391:	90                   	nop
c0031392:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031395:	c9                   	leave  
c0031396:	c3                   	ret    

c0031397 <sys_write>:
c0031397:	55                   	push   %ebp
c0031398:	89 e5                	mov    %esp,%ebp
c003139a:	53                   	push   %ebx
c003139b:	83 ec 04             	sub    $0x4,%esp
c003139e:	e8 a1 ed ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00313a3:	05 5d bc 00 00       	add    $0xbc5d,%eax
c00313a8:	8b 55 08             	mov    0x8(%ebp),%edx
c00313ab:	8b 52 14             	mov    0x14(%edx),%edx
c00313ae:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00313b1:	8b 49 18             	mov    0x18(%ecx),%ecx
c00313b4:	89 cb                	mov    %ecx,%ebx
c00313b6:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00313b9:	8b 49 10             	mov    0x10(%ecx),%ecx
c00313bc:	83 ec 04             	sub    $0x4,%esp
c00313bf:	52                   	push   %edx
c00313c0:	53                   	push   %ebx
c00313c1:	51                   	push   %ecx
c00313c2:	89 c3                	mov    %eax,%ebx
c00313c4:	e8 2d fe ff ff       	call   c00311f6 <fs_write>
c00313c9:	83 c4 10             	add    $0x10,%esp
c00313cc:	89 c2                	mov    %eax,%edx
c00313ce:	8b 45 08             	mov    0x8(%ebp),%eax
c00313d1:	89 50 1c             	mov    %edx,0x1c(%eax)
c00313d4:	90                   	nop
c00313d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00313d8:	c9                   	leave  
c00313d9:	c3                   	ret    

c00313da <sys_lseek>:
c00313da:	55                   	push   %ebp
c00313db:	89 e5                	mov    %esp,%ebp
c00313dd:	53                   	push   %ebx
c00313de:	83 ec 04             	sub    $0x4,%esp
c00313e1:	e8 5e ed ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00313e6:	05 1a bc 00 00       	add    $0xbc1a,%eax
c00313eb:	8b 55 08             	mov    0x8(%ebp),%edx
c00313ee:	8b 52 14             	mov    0x14(%edx),%edx
c00313f1:	89 d3                	mov    %edx,%ebx
c00313f3:	8b 55 08             	mov    0x8(%ebp),%edx
c00313f6:	8b 52 18             	mov    0x18(%edx),%edx
c00313f9:	89 d1                	mov    %edx,%ecx
c00313fb:	8b 55 08             	mov    0x8(%ebp),%edx
c00313fe:	8b 52 10             	mov    0x10(%edx),%edx
c0031401:	83 ec 04             	sub    $0x4,%esp
c0031404:	53                   	push   %ebx
c0031405:	51                   	push   %ecx
c0031406:	52                   	push   %edx
c0031407:	89 c3                	mov    %eax,%ebx
c0031409:	e8 4a fe ff ff       	call   c0031258 <fs_lseek>
c003140e:	83 c4 10             	add    $0x10,%esp
c0031411:	89 c2                	mov    %eax,%edx
c0031413:	8b 45 08             	mov    0x8(%ebp),%eax
c0031416:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031419:	90                   	nop
c003141a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003141d:	c9                   	leave  
c003141e:	c3                   	ret    

c003141f <sys_close>:
c003141f:	55                   	push   %ebp
c0031420:	89 e5                	mov    %esp,%ebp
c0031422:	53                   	push   %ebx
c0031423:	83 ec 04             	sub    $0x4,%esp
c0031426:	e8 19 ed ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003142b:	05 d5 bb 00 00       	add    $0xbbd5,%eax
c0031430:	8b 55 08             	mov    0x8(%ebp),%edx
c0031433:	8b 52 10             	mov    0x10(%edx),%edx
c0031436:	83 ec 0c             	sub    $0xc,%esp
c0031439:	52                   	push   %edx
c003143a:	89 c3                	mov    %eax,%ebx
c003143c:	e8 59 fe ff ff       	call   c003129a <fs_close>
c0031441:	83 c4 10             	add    $0x10,%esp
c0031444:	89 c2                	mov    %eax,%edx
c0031446:	8b 45 08             	mov    0x8(%ebp),%eax
c0031449:	89 50 1c             	mov    %edx,0x1c(%eax)
c003144c:	90                   	nop
c003144d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031450:	c9                   	leave  
c0031451:	c3                   	ret    

c0031452 <do_syscall>:
c0031452:	55                   	push   %ebp
c0031453:	89 e5                	mov    %esp,%ebp
c0031455:	53                   	push   %ebx
c0031456:	83 ec 04             	sub    $0x4,%esp
c0031459:	e8 ea ec ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c003145e:	81 c3 a2 bb 00 00    	add    $0xbba2,%ebx
c0031464:	8b 45 08             	mov    0x8(%ebp),%eax
c0031467:	8b 40 1c             	mov    0x1c(%eax),%eax
c003146a:	83 f8 2d             	cmp    $0x2d,%eax
c003146d:	0f 87 98 00 00 00    	ja     c003150b <.L10>
c0031473:	c1 e0 02             	shl    $0x2,%eax
c0031476:	8b 84 18 50 c6 ff ff 	mov    -0x39b0(%eax,%ebx,1),%eax
c003147d:	01 d8                	add    %ebx,%eax
c003147f:	ff e0                	jmp    *%eax

c0031481 <.L18>:
c0031481:	e8 67 fe ff ff       	call   c00312ed <cli>
c0031486:	8b 45 08             	mov    0x8(%ebp),%eax
c0031489:	8b 40 18             	mov    0x18(%eax),%eax
c003148c:	89 c2                	mov    %eax,%edx
c003148e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031491:	8b 40 10             	mov    0x10(%eax),%eax
c0031494:	83 ec 08             	sub    $0x8,%esp
c0031497:	52                   	push   %edx
c0031498:	50                   	push   %eax
c0031499:	e8 b0 f5 ff ff       	call   c0030a4e <add_irq_handle>
c003149e:	83 c4 10             	add    $0x10,%esp
c00314a1:	e8 36 fe ff ff       	call   c00312dc <sti>
c00314a6:	e9 8f 00 00 00       	jmp    c003153a <.L10+0x2f>

c00314ab <.L11>:
c00314ab:	83 ec 0c             	sub    $0xc,%esp
c00314ae:	ff 75 08             	pushl  0x8(%ebp)
c00314b1:	e8 48 fe ff ff       	call   c00312fe <sys_brk>
c00314b6:	83 c4 10             	add    $0x10,%esp
c00314b9:	eb 7f                	jmp    c003153a <.L10+0x2f>

c00314bb <.L15>:
c00314bb:	83 ec 0c             	sub    $0xc,%esp
c00314be:	ff 75 08             	pushl  0x8(%ebp)
c00314c1:	e8 52 fe ff ff       	call   c0031318 <sys_open>
c00314c6:	83 c4 10             	add    $0x10,%esp
c00314c9:	eb 6f                	jmp    c003153a <.L10+0x2f>

c00314cb <.L17>:
c00314cb:	83 ec 0c             	sub    $0xc,%esp
c00314ce:	ff 75 08             	pushl  0x8(%ebp)
c00314d1:	e8 7e fe ff ff       	call   c0031354 <sys_read>
c00314d6:	83 c4 10             	add    $0x10,%esp
c00314d9:	eb 5f                	jmp    c003153a <.L10+0x2f>

c00314db <.L16>:
c00314db:	83 ec 0c             	sub    $0xc,%esp
c00314de:	ff 75 08             	pushl  0x8(%ebp)
c00314e1:	e8 b1 fe ff ff       	call   c0031397 <sys_write>
c00314e6:	83 c4 10             	add    $0x10,%esp
c00314e9:	eb 4f                	jmp    c003153a <.L10+0x2f>

c00314eb <.L13>:
c00314eb:	83 ec 0c             	sub    $0xc,%esp
c00314ee:	ff 75 08             	pushl  0x8(%ebp)
c00314f1:	e8 e4 fe ff ff       	call   c00313da <sys_lseek>
c00314f6:	83 c4 10             	add    $0x10,%esp
c00314f9:	eb 3f                	jmp    c003153a <.L10+0x2f>

c00314fb <.L14>:
c00314fb:	83 ec 0c             	sub    $0xc,%esp
c00314fe:	ff 75 08             	pushl  0x8(%ebp)
c0031501:	e8 19 ff ff ff       	call   c003141f <sys_close>
c0031506:	83 c4 10             	add    $0x10,%esp
c0031509:	eb 2f                	jmp    c003153a <.L10+0x2f>

c003150b <.L10>:
c003150b:	8b 45 08             	mov    0x8(%ebp),%eax
c003150e:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031511:	83 ec 0c             	sub    $0xc,%esp
c0031514:	50                   	push   %eax
c0031515:	8d 83 08 c7 ff ff    	lea    -0x38f8(%ebx),%eax
c003151b:	50                   	push   %eax
c003151c:	6a 4a                	push   $0x4a
c003151e:	8d 83 e0 c5 ff ff    	lea    -0x3a20(%ebx),%eax
c0031524:	50                   	push   %eax
c0031525:	8d 83 fc c5 ff ff    	lea    -0x3a04(%ebx),%eax
c003152b:	50                   	push   %eax
c003152c:	e8 c9 f4 ff ff       	call   c00309fa <printk>
c0031531:	83 c4 20             	add    $0x20,%esp
c0031534:	b8 01 00 00 00       	mov    $0x1,%eax
c0031539:	82                   	nemu_trap 
c003153a:	90                   	nop
c003153b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003153e:	c9                   	leave  
c003153f:	c3                   	ret    

c0031540 <get_updir>:
c0031540:	55                   	push   %ebp
c0031541:	89 e5                	mov    %esp,%ebp
c0031543:	e8 fc eb ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0031548:	05 b8 ba 00 00       	add    $0xbab8,%eax
c003154d:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031553:	5d                   	pop    %ebp
c0031554:	c3                   	ret    

c0031555 <get_ucr3>:
c0031555:	55                   	push   %ebp
c0031556:	89 e5                	mov    %esp,%ebp
c0031558:	e8 e7 eb ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003155d:	05 a3 ba 00 00       	add    $0xbaa3,%eax
c0031562:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c0031568:	8b 00                	mov    (%eax),%eax
c003156a:	5d                   	pop    %ebp
c003156b:	c3                   	ret    

c003156c <mm_brk>:
c003156c:	55                   	push   %ebp
c003156d:	89 e5                	mov    %esp,%ebp
c003156f:	53                   	push   %ebx
c0031570:	83 ec 04             	sub    $0x4,%esp
c0031573:	e8 d0 eb ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c0031578:	81 c3 88 ba 00 00    	add    $0xba88,%ebx
c003157e:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c0031584:	39 45 08             	cmp    %eax,0x8(%ebp)
c0031587:	76 22                	jbe    c00315ab <mm_brk+0x3f>
c0031589:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c003158f:	8b 55 08             	mov    0x8(%ebp),%edx
c0031592:	29 c2                	sub    %eax,%edx
c0031594:	89 d0                	mov    %edx,%eax
c0031596:	89 c2                	mov    %eax,%edx
c0031598:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c003159e:	83 ec 08             	sub    $0x8,%esp
c00315a1:	52                   	push   %edx
c00315a2:	50                   	push   %eax
c00315a3:	e8 88 04 00 00       	call   c0031a30 <mm_malloc>
c00315a8:	83 c4 10             	add    $0x10,%esp
c00315ab:	8b 45 08             	mov    0x8(%ebp),%eax
c00315ae:	89 83 88 1e 01 00    	mov    %eax,0x11e88(%ebx)
c00315b4:	90                   	nop
c00315b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00315b8:	c9                   	leave  
c00315b9:	c3                   	ret    

c00315ba <init_mm>:
c00315ba:	55                   	push   %ebp
c00315bb:	89 e5                	mov    %esp,%ebp
c00315bd:	53                   	push   %ebx
c00315be:	83 ec 14             	sub    $0x14,%esp
c00315c1:	e8 82 eb ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c00315c6:	81 c3 3a ba 00 00    	add    $0xba3a,%ebx
c00315cc:	e8 ff 01 00 00       	call   c00317d0 <get_kpdir>
c00315d1:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00315d4:	83 ec 04             	sub    $0x4,%esp
c00315d7:	68 00 10 00 00       	push   $0x1000
c00315dc:	6a 00                	push   $0x0
c00315de:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00315e4:	50                   	push   %eax
c00315e5:	e8 22 07 00 00       	call   c0031d0c <memset>
c00315ea:	83 c4 10             	add    $0x10,%esp
c00315ed:	83 ec 04             	sub    $0x4,%esp
c00315f0:	68 80 00 00 00       	push   $0x80
c00315f5:	ff 75 f4             	pushl  -0xc(%ebp)
c00315f8:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00315fe:	50                   	push   %eax
c00315ff:	e8 c0 06 00 00       	call   c0031cc4 <memcpy>
c0031604:	83 c4 10             	add    $0x10,%esp
c0031607:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003160d:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0031612:	89 c2                	mov    %eax,%edx
c0031614:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c003161a:	89 10                	mov    %edx,(%eax)
c003161c:	90                   	nop
c003161d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031620:	c9                   	leave  
c0031621:	c3                   	ret    

c0031622 <create_video_mapping>:
c0031622:	55                   	push   %ebp
c0031623:	89 e5                	mov    %esp,%ebp
c0031625:	53                   	push   %ebx
c0031626:	83 ec 04             	sub    $0x4,%esp
c0031629:	e8 16 eb ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003162e:	05 d2 b9 00 00       	add    $0xb9d2,%eax
c0031633:	8d 90 cc c7 ff ff    	lea    -0x3834(%eax),%edx
c0031639:	52                   	push   %edx
c003163a:	6a 14                	push   $0x14
c003163c:	8d 90 14 c7 ff ff    	lea    -0x38ec(%eax),%edx
c0031642:	52                   	push   %edx
c0031643:	8d 90 28 c7 ff ff    	lea    -0x38d8(%eax),%edx
c0031649:	52                   	push   %edx
c003164a:	89 c3                	mov    %eax,%ebx
c003164c:	e8 a9 f3 ff ff       	call   c00309fa <printk>
c0031651:	83 c4 10             	add    $0x10,%esp
c0031654:	b8 01 00 00 00       	mov    $0x1,%eax
c0031659:	82                   	nemu_trap 
c003165a:	90                   	nop
c003165b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003165e:	c9                   	leave  
c003165f:	c3                   	ret    

c0031660 <video_mapping_write_test>:
c0031660:	55                   	push   %ebp
c0031661:	89 e5                	mov    %esp,%ebp
c0031663:	83 ec 10             	sub    $0x10,%esp
c0031666:	e8 d9 ea ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003166b:	05 95 b9 00 00       	add    $0xb995,%eax
c0031670:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c0031677:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c003167e:	eb 17                	jmp    c0031697 <video_mapping_write_test+0x37>
c0031680:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031683:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003168a:	8b 45 f8             	mov    -0x8(%ebp),%eax
c003168d:	01 c2                	add    %eax,%edx
c003168f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031692:	89 02                	mov    %eax,(%edx)
c0031694:	ff 45 fc             	incl   -0x4(%ebp)
c0031697:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c003169e:	7e e0                	jle    c0031680 <video_mapping_write_test+0x20>
c00316a0:	90                   	nop
c00316a1:	c9                   	leave  
c00316a2:	c3                   	ret    

c00316a3 <video_mapping_read_test>:
c00316a3:	55                   	push   %ebp
c00316a4:	89 e5                	mov    %esp,%ebp
c00316a6:	53                   	push   %ebx
c00316a7:	83 ec 14             	sub    $0x14,%esp
c00316aa:	e8 99 ea ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c00316af:	81 c3 51 b9 00 00    	add    $0xb951,%ebx
c00316b5:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c00316bc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00316c3:	eb 4a                	jmp    c003170f <video_mapping_read_test+0x6c>
c00316c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00316c8:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00316cf:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00316d2:	01 d0                	add    %edx,%eax
c00316d4:	8b 10                	mov    (%eax),%edx
c00316d6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00316d9:	39 c2                	cmp    %eax,%edx
c00316db:	74 2f                	je     c003170c <video_mapping_read_test+0x69>
c00316dd:	83 ec 0c             	sub    $0xc,%esp
c00316e0:	8d 83 71 c7 ff ff    	lea    -0x388f(%ebx),%eax
c00316e6:	50                   	push   %eax
c00316e7:	8d 83 e4 c7 ff ff    	lea    -0x381c(%ebx),%eax
c00316ed:	50                   	push   %eax
c00316ee:	6a 27                	push   $0x27
c00316f0:	8d 83 14 c7 ff ff    	lea    -0x38ec(%ebx),%eax
c00316f6:	50                   	push   %eax
c00316f7:	8d 83 80 c7 ff ff    	lea    -0x3880(%ebx),%eax
c00316fd:	50                   	push   %eax
c00316fe:	e8 f7 f2 ff ff       	call   c00309fa <printk>
c0031703:	83 c4 20             	add    $0x20,%esp
c0031706:	b8 01 00 00 00       	mov    $0x1,%eax
c003170b:	82                   	nemu_trap 
c003170c:	ff 45 f4             	incl   -0xc(%ebp)
c003170f:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c0031716:	7e ad                	jle    c00316c5 <video_mapping_read_test+0x22>
c0031718:	90                   	nop
c0031719:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003171c:	c9                   	leave  
c003171d:	c3                   	ret    

c003171e <video_mapping_clear>:
c003171e:	55                   	push   %ebp
c003171f:	89 e5                	mov    %esp,%ebp
c0031721:	53                   	push   %ebx
c0031722:	83 ec 04             	sub    $0x4,%esp
c0031725:	e8 1a ea ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003172a:	05 d6 b8 00 00       	add    $0xb8d6,%eax
c003172f:	83 ec 04             	sub    $0x4,%esp
c0031732:	68 00 fa 00 00       	push   $0xfa00
c0031737:	6a 00                	push   $0x0
c0031739:	68 00 00 0a 00       	push   $0xa0000
c003173e:	89 c3                	mov    %eax,%ebx
c0031740:	e8 c7 05 00 00       	call   c0031d0c <memset>
c0031745:	83 c4 10             	add    $0x10,%esp
c0031748:	90                   	nop
c0031749:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003174c:	c9                   	leave  
c003174d:	c3                   	ret    

c003174e <read_cr0>:
c003174e:	55                   	push   %ebp
c003174f:	89 e5                	mov    %esp,%ebp
c0031751:	83 ec 10             	sub    $0x10,%esp
c0031754:	e8 eb e9 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0031759:	05 a7 b8 00 00       	add    $0xb8a7,%eax
c003175e:	0f 20 c0             	mov    %cr0,%eax
c0031761:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031764:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031767:	c9                   	leave  
c0031768:	c3                   	ret    

c0031769 <write_cr0>:
c0031769:	55                   	push   %ebp
c003176a:	89 e5                	mov    %esp,%ebp
c003176c:	e8 d3 e9 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0031771:	05 8f b8 00 00       	add    $0xb88f,%eax
c0031776:	8b 45 08             	mov    0x8(%ebp),%eax
c0031779:	0f 22 c0             	mov    %eax,%cr0
c003177c:	90                   	nop
c003177d:	5d                   	pop    %ebp
c003177e:	c3                   	ret    

c003177f <write_cr3>:
c003177f:	55                   	push   %ebp
c0031780:	89 e5                	mov    %esp,%ebp
c0031782:	e8 bd e9 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0031787:	05 79 b8 00 00       	add    $0xb879,%eax
c003178c:	8b 45 08             	mov    0x8(%ebp),%eax
c003178f:	0f 22 d8             	mov    %eax,%cr3
c0031792:	90                   	nop
c0031793:	5d                   	pop    %ebp
c0031794:	c3                   	ret    

c0031795 <write_gdtr>:
c0031795:	55                   	push   %ebp
c0031796:	89 e5                	mov    %esp,%ebp
c0031798:	e8 a7 e9 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c003179d:	05 63 b8 00 00       	add    $0xb863,%eax
c00317a2:	8b 55 0c             	mov    0xc(%ebp),%edx
c00317a5:	4a                   	dec    %edx
c00317a6:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
c00317ad:	8b 55 08             	mov    0x8(%ebp),%edx
c00317b0:	66 89 90 8e 1e 01 00 	mov    %dx,0x11e8e(%eax)
c00317b7:	8b 55 08             	mov    0x8(%ebp),%edx
c00317ba:	c1 ea 10             	shr    $0x10,%edx
c00317bd:	66 89 90 90 1e 01 00 	mov    %dx,0x11e90(%eax)
c00317c4:	8d 80 8c 1e 01 00    	lea    0x11e8c(%eax),%eax
c00317ca:	0f 01 10             	lgdtl  (%eax)
c00317cd:	90                   	nop
c00317ce:	5d                   	pop    %ebp
c00317cf:	c3                   	ret    

c00317d0 <get_kpdir>:
c00317d0:	55                   	push   %ebp
c00317d1:	89 e5                	mov    %esp,%ebp
c00317d3:	e8 6c e9 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00317d8:	05 28 b8 00 00       	add    $0xb828,%eax
c00317dd:	c7 c0 00 40 07 c0    	mov    $0xc0074000,%eax
c00317e3:	5d                   	pop    %ebp
c00317e4:	c3                   	ret    

c00317e5 <init_page>:
c00317e5:	55                   	push   %ebp
c00317e6:	89 e5                	mov    %esp,%ebp
c00317e8:	53                   	push   %ebx
c00317e9:	83 ec 24             	sub    $0x24,%esp
c00317ec:	e8 53 e9 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c00317f1:	05 0f b8 00 00       	add    $0xb80f,%eax
c00317f6:	c7 c2 00 40 07 c0    	mov    $0xc0074000,%edx
c00317fc:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00317ff:	c7 c2 00 50 07 c0    	mov    $0xc0075000,%edx
c0031805:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0031808:	83 ec 04             	sub    $0x4,%esp
c003180b:	68 00 10 00 00       	push   $0x1000
c0031810:	6a 00                	push   $0x0
c0031812:	ff 75 e4             	pushl  -0x1c(%ebp)
c0031815:	89 c3                	mov    %eax,%ebx
c0031817:	e8 f0 04 00 00       	call   c0031d0c <memset>
c003181c:	83 c4 10             	add    $0x10,%esp
c003181f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031826:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c003182d:	eb 6b                	jmp    c003189a <init_page+0xb5>
c003182f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031832:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031837:	89 c2                	mov    %eax,%edx
c0031839:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003183c:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031843:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031846:	01 c8                	add    %ecx,%eax
c0031848:	83 ca 07             	or     $0x7,%edx
c003184b:	89 10                	mov    %edx,(%eax)
c003184d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031850:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031855:	89 c2                	mov    %eax,%edx
c0031857:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003185a:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031861:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031864:	01 c8                	add    %ecx,%eax
c0031866:	83 ca 07             	or     $0x7,%edx
c0031869:	89 10                	mov    %edx,(%eax)
c003186b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0031872:	eb 1a                	jmp    c003188e <init_page+0xa9>
c0031874:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031877:	c1 e0 0c             	shl    $0xc,%eax
c003187a:	83 c8 07             	or     $0x7,%eax
c003187d:	89 c2                	mov    %eax,%edx
c003187f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031882:	89 10                	mov    %edx,(%eax)
c0031884:	ff 45 e8             	incl   -0x18(%ebp)
c0031887:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c003188b:	ff 45 ec             	incl   -0x14(%ebp)
c003188e:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c0031895:	76 dd                	jbe    c0031874 <init_page+0x8f>
c0031897:	ff 45 f0             	incl   -0x10(%ebp)
c003189a:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c003189e:	76 8f                	jbe    c003182f <init_page+0x4a>
c00318a0:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00318a7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00318aa:	c1 e8 0c             	shr    $0xc,%eax
c00318ad:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00318b2:	c1 e0 0c             	shl    $0xc,%eax
c00318b5:	89 c2                	mov    %eax,%edx
c00318b7:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00318ba:	25 ff 0f 00 00       	and    $0xfff,%eax
c00318bf:	09 d0                	or     %edx,%eax
c00318c1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00318c4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00318c7:	83 ec 0c             	sub    $0xc,%esp
c00318ca:	50                   	push   %eax
c00318cb:	e8 af fe ff ff       	call   c003177f <write_cr3>
c00318d0:	83 c4 10             	add    $0x10,%esp
c00318d3:	e8 76 fe ff ff       	call   c003174e <read_cr0>
c00318d8:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00318db:	8a 45 e3             	mov    -0x1d(%ebp),%al
c00318de:	83 c8 80             	or     $0xffffff80,%eax
c00318e1:	88 45 e3             	mov    %al,-0x1d(%ebp)
c00318e4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00318e7:	83 ec 0c             	sub    $0xc,%esp
c00318ea:	50                   	push   %eax
c00318eb:	e8 79 fe ff ff       	call   c0031769 <write_cr0>
c00318f0:	83 c4 10             	add    $0x10,%esp
c00318f3:	90                   	nop
c00318f4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00318f7:	c9                   	leave  
c00318f8:	c3                   	ret    

c00318f9 <set_segment>:
c00318f9:	55                   	push   %ebp
c00318fa:	89 e5                	mov    %esp,%ebp
c00318fc:	e8 43 e8 ff ff       	call   c0030144 <__x86.get_pc_thunk.ax>
c0031901:	05 ff b6 00 00       	add    $0xb6ff,%eax
c0031906:	8b 45 08             	mov    0x8(%ebp),%eax
c0031909:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c003190e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031911:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0031917:	8b 45 08             	mov    0x8(%ebp),%eax
c003191a:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c003191e:	8b 45 10             	mov    0x10(%ebp),%eax
c0031921:	88 c2                	mov    %al,%dl
c0031923:	83 e2 0f             	and    $0xf,%edx
c0031926:	8b 45 08             	mov    0x8(%ebp),%eax
c0031929:	88 d1                	mov    %dl,%cl
c003192b:	83 e1 0f             	and    $0xf,%ecx
c003192e:	8a 50 05             	mov    0x5(%eax),%dl
c0031931:	83 e2 f0             	and    $0xfffffff0,%edx
c0031934:	09 ca                	or     %ecx,%edx
c0031936:	88 50 05             	mov    %dl,0x5(%eax)
c0031939:	8b 45 08             	mov    0x8(%ebp),%eax
c003193c:	8a 50 05             	mov    0x5(%eax),%dl
c003193f:	83 ca 10             	or     $0x10,%edx
c0031942:	88 50 05             	mov    %dl,0x5(%eax)
c0031945:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031948:	88 c2                	mov    %al,%dl
c003194a:	83 e2 03             	and    $0x3,%edx
c003194d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031950:	83 e2 03             	and    $0x3,%edx
c0031953:	88 d1                	mov    %dl,%cl
c0031955:	c1 e1 05             	shl    $0x5,%ecx
c0031958:	8a 50 05             	mov    0x5(%eax),%dl
c003195b:	83 e2 9f             	and    $0xffffff9f,%edx
c003195e:	09 ca                	or     %ecx,%edx
c0031960:	88 50 05             	mov    %dl,0x5(%eax)
c0031963:	8b 45 08             	mov    0x8(%ebp),%eax
c0031966:	8a 50 05             	mov    0x5(%eax),%dl
c0031969:	83 ca 80             	or     $0xffffff80,%edx
c003196c:	88 50 05             	mov    %dl,0x5(%eax)
c003196f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031972:	8a 50 06             	mov    0x6(%eax),%dl
c0031975:	83 ca 0f             	or     $0xf,%edx
c0031978:	88 50 06             	mov    %dl,0x6(%eax)
c003197b:	8b 45 08             	mov    0x8(%ebp),%eax
c003197e:	8a 50 06             	mov    0x6(%eax),%dl
c0031981:	83 e2 ef             	and    $0xffffffef,%edx
c0031984:	88 50 06             	mov    %dl,0x6(%eax)
c0031987:	8b 45 08             	mov    0x8(%ebp),%eax
c003198a:	8a 50 06             	mov    0x6(%eax),%dl
c003198d:	83 e2 df             	and    $0xffffffdf,%edx
c0031990:	88 50 06             	mov    %dl,0x6(%eax)
c0031993:	8b 45 08             	mov    0x8(%ebp),%eax
c0031996:	8a 50 06             	mov    0x6(%eax),%dl
c0031999:	83 ca 40             	or     $0x40,%edx
c003199c:	88 50 06             	mov    %dl,0x6(%eax)
c003199f:	8b 45 08             	mov    0x8(%ebp),%eax
c00319a2:	8a 50 06             	mov    0x6(%eax),%dl
c00319a5:	83 ca 80             	or     $0xffffff80,%edx
c00319a8:	88 50 06             	mov    %dl,0x6(%eax)
c00319ab:	8b 45 08             	mov    0x8(%ebp),%eax
c00319ae:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c00319b2:	90                   	nop
c00319b3:	5d                   	pop    %ebp
c00319b4:	c3                   	ret    

c00319b5 <init_segment>:
c00319b5:	55                   	push   %ebp
c00319b6:	89 e5                	mov    %esp,%ebp
c00319b8:	53                   	push   %ebx
c00319b9:	83 ec 04             	sub    $0x4,%esp
c00319bc:	e8 87 e7 ff ff       	call   c0030148 <__x86.get_pc_thunk.bx>
c00319c1:	81 c3 3f b6 00 00    	add    $0xb63f,%ebx
c00319c7:	83 ec 04             	sub    $0x4,%esp
c00319ca:	6a 18                	push   $0x18
c00319cc:	6a 00                	push   $0x0
c00319ce:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c00319d4:	50                   	push   %eax
c00319d5:	e8 32 03 00 00       	call   c0031d0c <memset>
c00319da:	83 c4 10             	add    $0x10,%esp
c00319dd:	83 ec 04             	sub    $0x4,%esp
c00319e0:	6a 0a                	push   $0xa
c00319e2:	6a 00                	push   $0x0
c00319e4:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c00319ea:	8d 40 08             	lea    0x8(%eax),%eax
c00319ed:	50                   	push   %eax
c00319ee:	e8 06 ff ff ff       	call   c00318f9 <set_segment>
c00319f3:	83 c4 10             	add    $0x10,%esp
c00319f6:	83 ec 04             	sub    $0x4,%esp
c00319f9:	6a 02                	push   $0x2
c00319fb:	6a 00                	push   $0x0
c00319fd:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031a03:	8d 40 10             	lea    0x10(%eax),%eax
c0031a06:	50                   	push   %eax
c0031a07:	e8 ed fe ff ff       	call   c00318f9 <set_segment>
c0031a0c:	83 c4 10             	add    $0x10,%esp
c0031a0f:	83 ec 08             	sub    $0x8,%esp
c0031a12:	6a 18                	push   $0x18
c0031a14:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031a1a:	50                   	push   %eax
c0031a1b:	e8 75 fd ff ff       	call   c0031795 <write_gdtr>
c0031a20:	83 c4 10             	add    $0x10,%esp
c0031a23:	90                   	nop
c0031a24:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a27:	c9                   	leave  
c0031a28:	c3                   	ret    
c0031a29:	66 90                	xchg   %ax,%ax
c0031a2b:	66 90                	xchg   %ax,%ax
c0031a2d:	66 90                	xchg   %ax,%ax
c0031a2f:	90                   	nop

c0031a30 <mm_malloc>:
c0031a30:	55                   	push   %ebp
c0031a31:	31 c0                	xor    %eax,%eax
c0031a33:	89 e5                	mov    %esp,%ebp
c0031a35:	57                   	push   %edi
c0031a36:	56                   	push   %esi
c0031a37:	53                   	push   %ebx
c0031a38:	83 ec 3c             	sub    $0x3c,%esp
c0031a3b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031a3e:	85 db                	test   %ebx,%ebx
c0031a40:	0f 8e 36 02 00 00    	jle    c0031c7c <mm_malloc+0x24c>
c0031a46:	e8 f5 fa ff ff       	call   c0031540 <get_updir>
c0031a4b:	89 c6                	mov    %eax,%esi
c0031a4d:	e8 03 fb ff ff       	call   c0031555 <get_ucr3>
c0031a52:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a55:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031a59:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031a5c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031a5f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031a64:	29 d0                	sub    %edx,%eax
c0031a66:	89 da                	mov    %ebx,%edx
c0031a68:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031a6e:	01 d0                	add    %edx,%eax
c0031a70:	85 c0                	test   %eax,%eax
c0031a72:	0f 8e c0 00 00 00    	jle    c0031b38 <mm_malloc+0x108>
c0031a78:	8b 55 08             	mov    0x8(%ebp),%edx
c0031a7b:	83 e8 01             	sub    $0x1,%eax
c0031a7e:	89 f7                	mov    %esi,%edi
c0031a80:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031a85:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031a8c:	89 d3                	mov    %edx,%ebx
c0031a8e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031a91:	eb 51                	jmp    c0031ae4 <mm_malloc+0xb4>
c0031a93:	90                   	nop
c0031a94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031a98:	8b 31                	mov    (%ecx),%esi
c0031a9a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031aa0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031aa6:	89 d8                	mov    %ebx,%eax
c0031aa8:	c1 e8 0a             	shr    $0xa,%eax
c0031aab:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031ab0:	01 c6                	add    %eax,%esi
c0031ab2:	f6 06 01             	testb  $0x1,(%esi)
c0031ab5:	75 22                	jne    c0031ad9 <mm_malloc+0xa9>
c0031ab7:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031abc:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031ac1:	0f 8f c1 01 00 00    	jg     c0031c88 <mm_malloc+0x258>
c0031ac7:	89 c1                	mov    %eax,%ecx
c0031ac9:	83 c0 01             	add    $0x1,%eax
c0031acc:	c1 e1 0c             	shl    $0xc,%ecx
c0031acf:	83 c9 07             	or     $0x7,%ecx
c0031ad2:	89 0e                	mov    %ecx,(%esi)
c0031ad4:	a3 20 d0 03 c0       	mov    %eax,0xc003d020
c0031ad9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031adf:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031ae2:	74 54                	je     c0031b38 <mm_malloc+0x108>
c0031ae4:	89 d8                	mov    %ebx,%eax
c0031ae6:	c1 e8 16             	shr    $0x16,%eax
c0031ae9:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031aec:	f6 01 01             	testb  $0x1,(%ecx)
c0031aef:	75 a7                	jne    c0031a98 <mm_malloc+0x68>
c0031af1:	a1 00 f0 04 c0       	mov    0xc004f000,%eax
c0031af6:	89 c6                	mov    %eax,%esi
c0031af8:	83 c0 01             	add    $0x1,%eax
c0031afb:	c1 e6 0c             	shl    $0xc,%esi
c0031afe:	81 c6 00 00 05 c0    	add    $0xc0050000,%esi
c0031b04:	a3 00 f0 04 c0       	mov    %eax,0xc004f000
c0031b09:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031b0f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031b14:	83 c8 07             	or     $0x7,%eax
c0031b17:	89 01                	mov    %eax,(%ecx)
c0031b19:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031b20:	00 
c0031b21:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031b28:	00 
c0031b29:	89 34 24             	mov    %esi,(%esp)
c0031b2c:	e8 db 01 00 00       	call   c0031d0c <memset>
c0031b31:	e9 70 ff ff ff       	jmp    c0031aa6 <mm_malloc+0x76>
c0031b36:	66 90                	xchg   %ax,%ax
c0031b38:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031b3b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031b3e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031b44:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031b4a:	c1 e8 16             	shr    $0x16,%eax
c0031b4d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031b50:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031b56:	75 32                	jne    c0031b8a <mm_malloc+0x15a>
c0031b58:	c7 44 24 10 20 98 03 	movl   $0xc0039820,0x10(%esp)
c0031b5f:	c0 
c0031b60:	c7 44 24 0c 86 98 03 	movl   $0xc0039886,0xc(%esp)
c0031b67:	c0 
c0031b68:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031b6f:	00 
c0031b70:	c7 44 24 04 0f 98 03 	movl   $0xc003980f,0x4(%esp)
c0031b77:	c0 
c0031b78:	c7 04 24 30 98 03 c0 	movl   $0xc0039830,(%esp)
c0031b7f:	e8 76 ee ff ff       	call   c00309fa <printk>
c0031b84:	b8 01 00 00 00       	mov    $0x1,%eax
c0031b89:	82                   	nemu_trap 
c0031b8a:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0031b8d:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c0031b93:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031b98:	c1 ea 0c             	shr    $0xc,%edx
c0031b9b:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031ba1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c0031ba5:	75 32                	jne    c0031bd9 <mm_malloc+0x1a9>
c0031ba7:	c7 44 24 10 28 98 03 	movl   $0xc0039828,0x10(%esp)
c0031bae:	c0 
c0031baf:	c7 44 24 0c 86 98 03 	movl   $0xc0039886,0xc(%esp)
c0031bb6:	c0 
c0031bb7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031bbe:	00 
c0031bbf:	c7 44 24 04 0f 98 03 	movl   $0xc003980f,0x4(%esp)
c0031bc6:	c0 
c0031bc7:	c7 04 24 30 98 03 c0 	movl   $0xc0039830,(%esp)
c0031bce:	e8 27 ee ff ff       	call   c00309fa <printk>
c0031bd3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031bd8:	82                   	nemu_trap 
c0031bd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031bdc:	c1 e8 16             	shr    $0x16,%eax
c0031bdf:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031be2:	f6 c3 01             	test   $0x1,%bl
c0031be5:	75 32                	jne    c0031c19 <mm_malloc+0x1e9>
c0031be7:	c7 44 24 10 20 98 03 	movl   $0xc0039820,0x10(%esp)
c0031bee:	c0 
c0031bef:	c7 44 24 0c 86 98 03 	movl   $0xc0039886,0xc(%esp)
c0031bf6:	c0 
c0031bf7:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031bfe:	00 
c0031bff:	c7 44 24 04 0f 98 03 	movl   $0xc003980f,0x4(%esp)
c0031c06:	c0 
c0031c07:	c7 04 24 30 98 03 c0 	movl   $0xc0039830,(%esp)
c0031c0e:	e8 e7 ed ff ff       	call   c00309fa <printk>
c0031c13:	b8 01 00 00 00       	mov    $0x1,%eax
c0031c18:	82                   	nemu_trap 
c0031c19:	8b 55 08             	mov    0x8(%ebp),%edx
c0031c1c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
c0031c22:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c27:	c1 ea 0c             	shr    $0xc,%edx
c0031c2a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031c30:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
c0031c33:	f6 c3 01             	test   $0x1,%bl
c0031c36:	75 32                	jne    c0031c6a <mm_malloc+0x23a>
c0031c38:	c7 44 24 10 28 98 03 	movl   $0xc0039828,0x10(%esp)
c0031c3f:	c0 
c0031c40:	c7 44 24 0c 86 98 03 	movl   $0xc0039886,0xc(%esp)
c0031c47:	c0 
c0031c48:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031c4f:	00 
c0031c50:	c7 44 24 04 0f 98 03 	movl   $0xc003980f,0x4(%esp)
c0031c57:	c0 
c0031c58:	c7 04 24 30 98 03 c0 	movl   $0xc0039830,(%esp)
c0031c5f:	e8 96 ed ff ff       	call   c00309fa <printk>
c0031c64:	b8 01 00 00 00       	mov    $0x1,%eax
c0031c69:	82                   	nemu_trap 
c0031c6a:	8b 55 08             	mov    0x8(%ebp),%edx
c0031c6d:	89 d8                	mov    %ebx,%eax
c0031c6f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c74:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c0031c7a:	09 d0                	or     %edx,%eax
c0031c7c:	83 c4 3c             	add    $0x3c,%esp
c0031c7f:	5b                   	pop    %ebx
c0031c80:	5e                   	pop    %esi
c0031c81:	5f                   	pop    %edi
c0031c82:	5d                   	pop    %ebp
c0031c83:	c3                   	ret    
c0031c84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031c88:	c7 44 24 10 fc 97 03 	movl   $0xc00397fc,0x10(%esp)
c0031c8f:	c0 
c0031c90:	c7 44 24 0c 7c 98 03 	movl   $0xc003987c,0xc(%esp)
c0031c97:	c0 
c0031c98:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031c9f:	00 
c0031ca0:	c7 44 24 04 0f 98 03 	movl   $0xc003980f,0x4(%esp)
c0031ca7:	c0 
c0031ca8:	c7 04 24 30 98 03 c0 	movl   $0xc0039830,(%esp)
c0031caf:	e8 46 ed ff ff       	call   c00309fa <printk>
c0031cb4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031cb9:	82                   	nemu_trap 
c0031cba:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031cbf:	e9 03 fe ff ff       	jmp    c0031ac7 <mm_malloc+0x97>

c0031cc4 <memcpy>:
c0031cc4:	55                   	push   %ebp
c0031cc5:	89 e5                	mov    %esp,%ebp
c0031cc7:	56                   	push   %esi
c0031cc8:	57                   	push   %edi
c0031cc9:	53                   	push   %ebx
c0031cca:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031ccd:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031cd0:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031cd3:	fc                   	cld    
c0031cd4:	83 f9 08             	cmp    $0x8,%ecx
c0031cd7:	76 26                	jbe    c0031cff <memcpy+0x3b>
c0031cd9:	89 fa                	mov    %edi,%edx
c0031cdb:	89 cb                	mov    %ecx,%ebx
c0031cdd:	83 e2 03             	and    $0x3,%edx
c0031ce0:	74 10                	je     c0031cf2 <memcpy+0x2e>
c0031ce2:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031ce7:	29 d1                	sub    %edx,%ecx
c0031ce9:	83 e1 03             	and    $0x3,%ecx
c0031cec:	29 cb                	sub    %ecx,%ebx
c0031cee:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031cf0:	89 d9                	mov    %ebx,%ecx
c0031cf2:	c1 e9 02             	shr    $0x2,%ecx
c0031cf5:	8d 76 00             	lea    0x0(%esi),%esi
c0031cf8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031cfa:	89 d9                	mov    %ebx,%ecx
c0031cfc:	83 e1 03             	and    $0x3,%ecx
c0031cff:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031d01:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d04:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031d07:	5b                   	pop    %ebx
c0031d08:	5f                   	pop    %edi
c0031d09:	5e                   	pop    %esi
c0031d0a:	c9                   	leave  
c0031d0b:	c3                   	ret    

c0031d0c <memset>:
c0031d0c:	55                   	push   %ebp
c0031d0d:	89 e5                	mov    %esp,%ebp
c0031d0f:	57                   	push   %edi
c0031d10:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031d13:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031d17:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031d1a:	fc                   	cld    
c0031d1b:	83 f9 10             	cmp    $0x10,%ecx
c0031d1e:	76 69                	jbe    c0031d89 <memset+0x7d>
c0031d20:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031d26:	74 4c                	je     c0031d74 <memset+0x68>
c0031d28:	88 07                	mov    %al,(%edi)
c0031d2a:	47                   	inc    %edi
c0031d2b:	49                   	dec    %ecx
c0031d2c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031d32:	74 40                	je     c0031d74 <memset+0x68>
c0031d34:	88 07                	mov    %al,(%edi)
c0031d36:	47                   	inc    %edi
c0031d37:	49                   	dec    %ecx
c0031d38:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031d3e:	74 34                	je     c0031d74 <memset+0x68>
c0031d40:	88 07                	mov    %al,(%edi)
c0031d42:	47                   	inc    %edi
c0031d43:	49                   	dec    %ecx
c0031d44:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031d4a:	74 28                	je     c0031d74 <memset+0x68>
c0031d4c:	88 07                	mov    %al,(%edi)
c0031d4e:	47                   	inc    %edi
c0031d4f:	49                   	dec    %ecx
c0031d50:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031d56:	74 1c                	je     c0031d74 <memset+0x68>
c0031d58:	88 07                	mov    %al,(%edi)
c0031d5a:	47                   	inc    %edi
c0031d5b:	49                   	dec    %ecx
c0031d5c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031d62:	74 10                	je     c0031d74 <memset+0x68>
c0031d64:	88 07                	mov    %al,(%edi)
c0031d66:	47                   	inc    %edi
c0031d67:	49                   	dec    %ecx
c0031d68:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031d6e:	74 04                	je     c0031d74 <memset+0x68>
c0031d70:	88 07                	mov    %al,(%edi)
c0031d72:	47                   	inc    %edi
c0031d73:	49                   	dec    %ecx
c0031d74:	88 c4                	mov    %al,%ah
c0031d76:	89 c2                	mov    %eax,%edx
c0031d78:	c1 e2 10             	shl    $0x10,%edx
c0031d7b:	09 d0                	or     %edx,%eax
c0031d7d:	89 ca                	mov    %ecx,%edx
c0031d7f:	c1 e9 02             	shr    $0x2,%ecx
c0031d82:	83 e2 03             	and    $0x3,%edx
c0031d85:	f3 ab                	rep stos %eax,%es:(%edi)
c0031d87:	89 d1                	mov    %edx,%ecx
c0031d89:	f3 aa                	rep stos %al,%es:(%edi)
c0031d8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d8e:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031d91:	5f                   	pop    %edi
c0031d92:	c9                   	leave  
c0031d93:	c3                   	ret    
c0031d94:	66 90                	xchg   %ax,%ax
c0031d96:	66 90                	xchg   %ax,%ax
c0031d98:	66 90                	xchg   %ax,%ax
c0031d9a:	66 90                	xchg   %ax,%ax
c0031d9c:	66 90                	xchg   %ax,%ax
c0031d9e:	66 90                	xchg   %ax,%ax

c0031da0 <_vsnprintf_r>:
c0031da0:	55                   	push   %ebp
c0031da1:	89 e5                	mov    %esp,%ebp
c0031da3:	56                   	push   %esi
c0031da4:	53                   	push   %ebx
c0031da5:	83 c4 80             	add    $0xffffff80,%esp
c0031da8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031dab:	8b 75 08             	mov    0x8(%ebp),%esi
c0031dae:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031db1:	85 db                	test   %ebx,%ebx
c0031db3:	78 63                	js     c0031e18 <_vsnprintf_r+0x78>
c0031db5:	ba 08 02 00 00       	mov    $0x208,%edx
c0031dba:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031dbf:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031dc3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031dc6:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031dc9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031dcc:	31 c0                	xor    %eax,%eax
c0031dce:	85 db                	test   %ebx,%ebx
c0031dd0:	0f 45 c2             	cmovne %edx,%eax
c0031dd3:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031dd6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031dd9:	8b 45 18             	mov    0x18(%ebp),%eax
c0031ddc:	89 34 24             	mov    %esi,(%esp)
c0031ddf:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031de3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031de7:	8b 45 14             	mov    0x14(%ebp),%eax
c0031dea:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031dee:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031df1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031df5:	e8 86 00 00 00       	call   c0031e80 <_svfprintf_r>
c0031dfa:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031dfd:	7c 11                	jl     c0031e10 <_vsnprintf_r+0x70>
c0031dff:	85 db                	test   %ebx,%ebx
c0031e01:	74 06                	je     c0031e09 <_vsnprintf_r+0x69>
c0031e03:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031e06:	c6 02 00             	movb   $0x0,(%edx)
c0031e09:	83 ec 80             	sub    $0xffffff80,%esp
c0031e0c:	5b                   	pop    %ebx
c0031e0d:	5e                   	pop    %esi
c0031e0e:	5d                   	pop    %ebp
c0031e0f:	c3                   	ret    
c0031e10:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031e16:	eb e7                	jmp    c0031dff <_vsnprintf_r+0x5f>
c0031e18:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031e1e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031e23:	eb e4                	jmp    c0031e09 <_vsnprintf_r+0x69>
c0031e25:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031e29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031e30 <vsnprintf>:
c0031e30:	55                   	push   %ebp
c0031e31:	89 e5                	mov    %esp,%ebp
c0031e33:	83 ec 28             	sub    $0x28,%esp
c0031e36:	e8 35 00 00 00       	call   c0031e70 <__getreent>
c0031e3b:	8b 55 14             	mov    0x14(%ebp),%edx
c0031e3e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031e42:	8b 55 10             	mov    0x10(%ebp),%edx
c0031e45:	89 04 24             	mov    %eax,(%esp)
c0031e48:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031e4c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031e4f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031e53:	8b 55 08             	mov    0x8(%ebp),%edx
c0031e56:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031e5a:	e8 41 ff ff ff       	call   c0031da0 <_vsnprintf_r>
c0031e5f:	c9                   	leave  
c0031e60:	c3                   	ret    
c0031e61:	66 90                	xchg   %ax,%ax
c0031e63:	66 90                	xchg   %ax,%ax
c0031e65:	66 90                	xchg   %ax,%ax
c0031e67:	66 90                	xchg   %ax,%ax
c0031e69:	66 90                	xchg   %ax,%ax
c0031e6b:	66 90                	xchg   %ax,%ax
c0031e6d:	66 90                	xchg   %ax,%ax
c0031e6f:	90                   	nop

c0031e70 <__getreent>:
c0031e70:	55                   	push   %ebp
c0031e71:	a1 40 d0 03 c0       	mov    0xc003d040,%eax
c0031e76:	89 e5                	mov    %esp,%ebp
c0031e78:	5d                   	pop    %ebp
c0031e79:	c3                   	ret    
c0031e7a:	66 90                	xchg   %ax,%ax
c0031e7c:	66 90                	xchg   %ax,%ax
c0031e7e:	66 90                	xchg   %ax,%ax

c0031e80 <_svfprintf_r>:
c0031e80:	55                   	push   %ebp
c0031e81:	89 e5                	mov    %esp,%ebp
c0031e83:	57                   	push   %edi
c0031e84:	56                   	push   %esi
c0031e85:	53                   	push   %ebx
c0031e86:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c0031e8c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e8f:	89 04 24             	mov    %eax,(%esp)
c0031e92:	e8 89 33 00 00       	call   c0035220 <_localeconv_r>
c0031e97:	8b 00                	mov    (%eax),%eax
c0031e99:	89 04 24             	mov    %eax,(%esp)
c0031e9c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0031ea2:	e8 d9 4a 00 00       	call   c0036980 <strlen>
c0031ea7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c0031ead:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031eb0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0031eb4:	74 0b                	je     c0031ec1 <_svfprintf_r+0x41>
c0031eb6:	8b 40 10             	mov    0x10(%eax),%eax
c0031eb9:	85 c0                	test   %eax,%eax
c0031ebb:	0f 84 62 18 00 00    	je     c0033723 <_svfprintf_r+0x18a3>
c0031ec1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0031ec4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0031ec7:	89 c7                	mov    %eax,%edi
c0031ec9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0031ecf:	d9 ee                	fldz   
c0031ed1:	29 d0                	sub    %edx,%eax
c0031ed3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0031eda:	00 00 00 
c0031edd:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0031ee3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0031eea:	00 00 00 
c0031eed:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0031ef4:	00 00 00 
c0031ef7:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c0031efe:	00 00 00 
c0031f01:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0031f08:	00 00 00 
c0031f0b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0031f12:	00 00 00 
c0031f15:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c0031f1b:	8b 45 10             	mov    0x10(%ebp),%eax
c0031f1e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031f21:	0f b6 00             	movzbl (%eax),%eax
c0031f24:	3c 25                	cmp    $0x25,%al
c0031f26:	74 4d                	je     c0031f75 <_svfprintf_r+0xf5>
c0031f28:	84 c0                	test   %al,%al
c0031f2a:	75 08                	jne    c0031f34 <_svfprintf_r+0xb4>
c0031f2c:	eb 47                	jmp    c0031f75 <_svfprintf_r+0xf5>
c0031f2e:	66 90                	xchg   %ax,%ax
c0031f30:	84 c0                	test   %al,%al
c0031f32:	74 0a                	je     c0031f3e <_svfprintf_r+0xbe>
c0031f34:	83 c3 01             	add    $0x1,%ebx
c0031f37:	0f b6 03             	movzbl (%ebx),%eax
c0031f3a:	3c 25                	cmp    $0x25,%al
c0031f3c:	75 f2                	jne    c0031f30 <_svfprintf_r+0xb0>
c0031f3e:	89 de                	mov    %ebx,%esi
c0031f40:	2b 75 10             	sub    0x10(%ebp),%esi
c0031f43:	74 30                	je     c0031f75 <_svfprintf_r+0xf5>
c0031f45:	8b 45 10             	mov    0x10(%ebp),%eax
c0031f48:	83 c7 08             	add    $0x8,%edi
c0031f4b:	89 77 fc             	mov    %esi,-0x4(%edi)
c0031f4e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0031f54:	89 47 f8             	mov    %eax,-0x8(%edi)
c0031f57:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0031f5d:	83 c0 01             	add    $0x1,%eax
c0031f60:	83 f8 07             	cmp    $0x7,%eax
c0031f63:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0031f69:	0f 8f 91 00 00 00    	jg     c0032000 <_svfprintf_r+0x180>
c0031f6f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0031f75:	80 3b 00             	cmpb   $0x0,(%ebx)
c0031f78:	0f 84 aa 00 00 00    	je     c0032028 <_svfprintf_r+0x1a8>
c0031f7e:	8d 43 01             	lea    0x1(%ebx),%eax
c0031f81:	be 20 00 00 00       	mov    $0x20,%esi
c0031f86:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0031f8d:	31 db                	xor    %ebx,%ebx
c0031f8f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0031f96:	ff ff ff 
c0031f99:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0031fa0:	00 00 00 
c0031fa3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c0031faa:	00 00 00 
c0031fad:	8d 48 01             	lea    0x1(%eax),%ecx
c0031fb0:	0f be 00             	movsbl (%eax),%eax
c0031fb3:	8d 50 e0             	lea    -0x20(%eax),%edx
c0031fb6:	83 fa 58             	cmp    $0x58,%edx
c0031fb9:	0f 87 8f 07 00 00    	ja     c003274e <_svfprintf_r+0x8ce>
c0031fbf:	ff 24 95 d0 98 03 c0 	jmp    *-0x3ffc6730(,%edx,4)
c0031fc6:	66 90                	xchg   %ax,%ax
c0031fc8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0031fcf:	89 c8                	mov    %ecx,%eax
c0031fd1:	eb da                	jmp    c0031fad <_svfprintf_r+0x12d>
c0031fd3:	8b 45 14             	mov    0x14(%ebp),%eax
c0031fd6:	8b 55 14             	mov    0x14(%ebp),%edx
c0031fd9:	8b 00                	mov    (%eax),%eax
c0031fdb:	83 c2 04             	add    $0x4,%edx
c0031fde:	89 55 14             	mov    %edx,0x14(%ebp)
c0031fe1:	85 c0                	test   %eax,%eax
c0031fe3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0031fe9:	79 e4                	jns    c0031fcf <_svfprintf_r+0x14f>
c0031feb:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0031ff1:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0031ff8:	89 c8                	mov    %ecx,%eax
c0031ffa:	eb b1                	jmp    c0031fad <_svfprintf_r+0x12d>
c0031ffc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032000:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032006:	89 44 24 08          	mov    %eax,0x8(%esp)
c003200a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003200d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032011:	8b 45 08             	mov    0x8(%ebp),%eax
c0032014:	89 04 24             	mov    %eax,(%esp)
c0032017:	e8 e4 49 00 00       	call   c0036a00 <__ssprint_r>
c003201c:	85 c0                	test   %eax,%eax
c003201e:	75 30                	jne    c0032050 <_svfprintf_r+0x1d0>
c0032020:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032023:	e9 47 ff ff ff       	jmp    c0031f6f <_svfprintf_r+0xef>
c0032028:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003202e:	85 c0                	test   %eax,%eax
c0032030:	74 1e                	je     c0032050 <_svfprintf_r+0x1d0>
c0032032:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032038:	89 44 24 08          	mov    %eax,0x8(%esp)
c003203c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003203f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032043:	8b 45 08             	mov    0x8(%ebp),%eax
c0032046:	89 04 24             	mov    %eax,(%esp)
c0032049:	e8 b2 49 00 00       	call   c0036a00 <__ssprint_r>
c003204e:	66 90                	xchg   %ax,%ax
c0032050:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032053:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032058:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003205c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032063:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032069:	5b                   	pop    %ebx
c003206a:	5e                   	pop    %esi
c003206b:	5f                   	pop    %edi
c003206c:	5d                   	pop    %ebp
c003206d:	c3                   	ret    
c003206e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032073:	89 c8                	mov    %ecx,%eax
c0032075:	e9 33 ff ff ff       	jmp    c0031fad <_svfprintf_r+0x12d>
c003207a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032080:	8b 45 14             	mov    0x14(%ebp),%eax
c0032083:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032086:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003208d:	8d 70 04             	lea    0x4(%eax),%esi
c0032090:	8b 00                	mov    (%eax),%eax
c0032092:	85 c0                	test   %eax,%eax
c0032094:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003209a:	0f 84 7f 18 00 00    	je     c003391f <_svfprintf_r+0x1a9f>
c00320a0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00320a6:	85 c0                	test   %eax,%eax
c00320a8:	0f 88 b6 17 00 00    	js     c0033864 <_svfprintf_r+0x19e4>
c00320ae:	89 44 24 08          	mov    %eax,0x8(%esp)
c00320b2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00320b8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00320bf:	00 
c00320c0:	89 04 24             	mov    %eax,(%esp)
c00320c3:	e8 f8 38 00 00       	call   c00359c0 <memchr>
c00320c8:	85 c0                	test   %eax,%eax
c00320ca:	0f 84 a0 19 00 00    	je     c0033a70 <_svfprintf_r+0x1bf0>
c00320d0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00320d6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00320dc:	39 d0                	cmp    %edx,%eax
c00320de:	0f 4f c2             	cmovg  %edx,%eax
c00320e1:	89 c2                	mov    %eax,%edx
c00320e3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00320ea:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00320f0:	31 c0                	xor    %eax,%eax
c00320f2:	85 d2                	test   %edx,%edx
c00320f4:	0f 49 c2             	cmovns %edx,%eax
c00320f7:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00320fd:	89 75 14             	mov    %esi,0x14(%ebp)
c0032100:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032107:	00 00 00 
c003210a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032111:	00 00 00 
c0032114:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032118:	84 db                	test   %bl,%bl
c003211a:	74 07                	je     c0032123 <_svfprintf_r+0x2a3>
c003211c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032123:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032129:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003212f:	89 c8                	mov    %ecx,%eax
c0032131:	89 f2                	mov    %esi,%edx
c0032133:	83 c0 02             	add    $0x2,%eax
c0032136:	83 e2 02             	and    $0x2,%edx
c0032139:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003213f:	89 f2                	mov    %esi,%edx
c0032141:	0f 44 c1             	cmove  %ecx,%eax
c0032144:	81 e2 84 00 00 00    	and    $0x84,%edx
c003214a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032150:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032156:	0f 85 1c 06 00 00    	jne    c0032778 <_svfprintf_r+0x8f8>
c003215c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032162:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032168:	85 f6                	test   %esi,%esi
c003216a:	0f 8e 08 06 00 00    	jle    c0032778 <_svfprintf_r+0x8f8>
c0032170:	83 fe 10             	cmp    $0x10,%esi
c0032173:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032179:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003217f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032185:	7f 11                	jg     c0032198 <_svfprintf_r+0x318>
c0032187:	eb 6b                	jmp    c00321f4 <_svfprintf_r+0x374>
c0032189:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032190:	83 ee 10             	sub    $0x10,%esi
c0032193:	83 fe 10             	cmp    $0x10,%esi
c0032196:	7e 5c                	jle    c00321f4 <_svfprintf_r+0x374>
c0032198:	83 c0 01             	add    $0x1,%eax
c003219b:	83 c1 10             	add    $0x10,%ecx
c003219e:	c7 07 44 9a 03 c0    	movl   $0xc0039a44,(%edi)
c00321a4:	83 c7 08             	add    $0x8,%edi
c00321a7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00321ae:	83 f8 07             	cmp    $0x7,%eax
c00321b1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00321b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00321bd:	7e d1                	jle    c0032190 <_svfprintf_r+0x310>
c00321bf:	8b 45 0c             	mov    0xc(%ebp),%eax
c00321c2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00321c6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00321ca:	8b 45 08             	mov    0x8(%ebp),%eax
c00321cd:	89 04 24             	mov    %eax,(%esp)
c00321d0:	e8 2b 48 00 00       	call   c0036a00 <__ssprint_r>
c00321d5:	85 c0                	test   %eax,%eax
c00321d7:	0f 85 73 fe ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c00321dd:	83 ee 10             	sub    $0x10,%esi
c00321e0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00321e6:	83 fe 10             	cmp    $0x10,%esi
c00321e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00321ef:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00321f2:	7f a4                	jg     c0032198 <_svfprintf_r+0x318>
c00321f4:	83 c0 01             	add    $0x1,%eax
c00321f7:	01 f1                	add    %esi,%ecx
c00321f9:	83 f8 07             	cmp    $0x7,%eax
c00321fc:	c7 07 44 9a 03 c0    	movl   $0xc0039a44,(%edi)
c0032202:	89 77 04             	mov    %esi,0x4(%edi)
c0032205:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003220b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032211:	0f 8f 16 0e 00 00    	jg     c003302d <_svfprintf_r+0x11ad>
c0032217:	83 c7 08             	add    $0x8,%edi
c003221a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032221:	e9 58 05 00 00       	jmp    c003277e <_svfprintf_r+0x8fe>
c0032226:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003222d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032233:	8b 45 14             	mov    0x14(%ebp),%eax
c0032236:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032239:	0f 85 fd 04 00 00    	jne    c003273c <_svfprintf_r+0x8bc>
c003223f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032246:	0f 84 f0 04 00 00    	je     c003273c <_svfprintf_r+0x8bc>
c003224c:	0f b7 08             	movzwl (%eax),%ecx
c003224f:	83 c0 04             	add    $0x4,%eax
c0032252:	89 45 14             	mov    %eax,0x14(%ebp)
c0032255:	b8 01 00 00 00       	mov    $0x1,%eax
c003225a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032260:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032267:	31 db                	xor    %ebx,%ebx
c0032269:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003226f:	89 f2                	mov    %esi,%edx
c0032271:	80 e2 7f             	and    $0x7f,%dl
c0032274:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003227b:	0f 48 d6             	cmovs  %esi,%edx
c003227e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032284:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003228a:	85 d2                	test   %edx,%edx
c003228c:	75 08                	jne    c0032296 <_svfprintf_r+0x416>
c003228e:	85 c9                	test   %ecx,%ecx
c0032290:	0f 84 ea 08 00 00    	je     c0032b80 <_svfprintf_r+0xd00>
c0032296:	3c 01                	cmp    $0x1,%al
c0032298:	0f 84 6a 0d 00 00    	je     c0033008 <_svfprintf_r+0x1188>
c003229e:	3c 02                	cmp    $0x2,%al
c00322a0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00322a3:	0f 85 bf 0b 00 00    	jne    c0032e68 <_svfprintf_r+0xfe8>
c00322a9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c00322af:	90                   	nop
c00322b0:	89 ca                	mov    %ecx,%edx
c00322b2:	83 e8 01             	sub    $0x1,%eax
c00322b5:	83 e2 0f             	and    $0xf,%edx
c00322b8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c00322bc:	c1 e9 04             	shr    $0x4,%ecx
c00322bf:	85 c9                	test   %ecx,%ecx
c00322c1:	88 10                	mov    %dl,(%eax)
c00322c3:	75 eb                	jne    c00322b0 <_svfprintf_r+0x430>
c00322c5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c00322c8:	29 c2                	sub    %eax,%edx
c00322ca:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00322d0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00322d6:	66 90                	xchg   %ax,%ax
c00322d8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00322de:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c00322e4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00322eb:	00 00 00 
c00322ee:	39 c2                	cmp    %eax,%edx
c00322f0:	0f 4d c2             	cmovge %edx,%eax
c00322f3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00322f9:	e9 1a fe ff ff       	jmp    c0032118 <_svfprintf_r+0x298>
c00322fe:	84 db                	test   %bl,%bl
c0032300:	89 c8                	mov    %ecx,%eax
c0032302:	0f 44 de             	cmove  %esi,%ebx
c0032305:	e9 a3 fc ff ff       	jmp    c0031fad <_svfprintf_r+0x12d>
c003230a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032311:	89 c8                	mov    %ecx,%eax
c0032313:	e9 95 fc ff ff       	jmp    c0031fad <_svfprintf_r+0x12d>
c0032318:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003231f:	00 00 00 
c0032322:	89 c8                	mov    %ecx,%eax
c0032324:	e9 84 fc ff ff       	jmp    c0031fad <_svfprintf_r+0x12d>
c0032329:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003232f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032332:	31 ff                	xor    %edi,%edi
c0032334:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003233b:	00 00 00 
c003233e:	66 90                	xchg   %ax,%ax
c0032340:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032343:	83 c1 01             	add    $0x1,%ecx
c0032346:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032349:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003234d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032350:	83 fa 09             	cmp    $0x9,%edx
c0032353:	76 eb                	jbe    c0032340 <_svfprintf_r+0x4c0>
c0032355:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003235b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032361:	e9 4d fc ff ff       	jmp    c0031fb3 <_svfprintf_r+0x133>
c0032366:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003236d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032374:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003237a:	8b 45 14             	mov    0x14(%ebp),%eax
c003237d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032380:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032386:	0f 85 61 02 00 00    	jne    c00325ed <_svfprintf_r+0x76d>
c003238c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032393:	0f 84 54 02 00 00    	je     c00325ed <_svfprintf_r+0x76d>
c0032399:	0f bf 08             	movswl (%eax),%ecx
c003239c:	83 c0 04             	add    $0x4,%eax
c003239f:	89 45 14             	mov    %eax,0x14(%ebp)
c00323a2:	85 c9                	test   %ecx,%ecx
c00323a4:	0f 88 53 02 00 00    	js     c00325fd <_svfprintf_r+0x77d>
c00323aa:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00323b1:	b8 01 00 00 00       	mov    $0x1,%eax
c00323b6:	e9 ae fe ff ff       	jmp    c0032269 <_svfprintf_r+0x3e9>
c00323bb:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c00323c2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00323c8:	8b 45 14             	mov    0x14(%ebp),%eax
c00323cb:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00323ce:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00323d4:	0f 84 15 10 00 00    	je     c00333ef <_svfprintf_r+0x156f>
c00323da:	db 28                	fldt   (%eax)
c00323dc:	83 c0 0c             	add    $0xc,%eax
c00323df:	89 45 14             	mov    %eax,0x14(%ebp)
c00323e2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00323e8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00323ee:	dd 1c 24             	fstpl  (%esp)
c00323f1:	e8 aa 44 00 00       	call   c00368a0 <__fpclassifyd>
c00323f6:	83 f8 01             	cmp    $0x1,%eax
c00323f9:	0f 85 82 0f 00 00    	jne    c0033381 <_svfprintf_r+0x1501>
c00323ff:	d9 ee                	fldz   
c0032401:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032407:	d9 c9                	fxch   %st(1)
c0032409:	df e9                	fucomip %st(1),%st
c003240b:	dd d8                	fstp   %st(0)
c003240d:	0f 87 59 15 00 00    	ja     c003396c <_svfprintf_r+0x1aec>
c0032413:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003241a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032421:	ba 92 98 03 c0       	mov    $0xc0039892,%edx
c0032426:	b8 96 98 03 c0       	mov    $0xc0039896,%eax
c003242b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032432:	00 00 00 
c0032435:	0f 4e c2             	cmovle %edx,%eax
c0032438:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003243e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032445:	ff ff ff 
c0032448:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003244f:	00 00 00 
c0032452:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032459:	00 00 00 
c003245c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032463:	00 00 00 
c0032466:	e9 ad fc ff ff       	jmp    c0032118 <_svfprintf_r+0x298>
c003246b:	8d 41 01             	lea    0x1(%ecx),%eax
c003246e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032474:	0f be 01             	movsbl (%ecx),%eax
c0032477:	83 f8 2a             	cmp    $0x2a,%eax
c003247a:	0f 84 84 18 00 00    	je     c0033d04 <_svfprintf_r+0x1e84>
c0032480:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032483:	31 c9                	xor    %ecx,%ecx
c0032485:	83 fa 09             	cmp    $0x9,%edx
c0032488:	0f 87 a8 16 00 00    	ja     c0033b36 <_svfprintf_r+0x1cb6>
c003248e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032494:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c003249a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00324a0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c00324a3:	83 c7 01             	add    $0x1,%edi
c00324a6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c00324a9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c00324ad:	8d 50 d0             	lea    -0x30(%eax),%edx
c00324b0:	83 fa 09             	cmp    $0x9,%edx
c00324b3:	76 eb                	jbe    c00324a0 <_svfprintf_r+0x620>
c00324b5:	85 c9                	test   %ecx,%ecx
c00324b7:	89 ca                	mov    %ecx,%edx
c00324b9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00324be:	0f 48 d1             	cmovs  %ecx,%edx
c00324c1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00324c7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c00324cd:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00324d3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c00324d9:	e9 d5 fa ff ff       	jmp    c0031fb3 <_svfprintf_r+0x133>
c00324de:	8b 45 14             	mov    0x14(%ebp),%eax
c00324e1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324e4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00324eb:	8b 08                	mov    (%eax),%ecx
c00324ed:	83 c0 04             	add    $0x4,%eax
c00324f0:	89 45 14             	mov    %eax,0x14(%ebp)
c00324f3:	b8 02 00 00 00       	mov    $0x2,%eax
c00324f8:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00324ff:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032506:	c7 85 18 ff ff ff b3 	movl   $0xc00398b3,-0xe8(%ebp)
c003250d:	98 03 c0 
c0032510:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032517:	00 00 00 
c003251a:	e9 41 fd ff ff       	jmp    c0032260 <_svfprintf_r+0x3e0>
c003251f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032526:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003252c:	8b 45 14             	mov    0x14(%ebp),%eax
c003252f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032532:	0f 85 87 00 00 00    	jne    c00325bf <_svfprintf_r+0x73f>
c0032538:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003253f:	74 7e                	je     c00325bf <_svfprintf_r+0x73f>
c0032541:	0f b7 08             	movzwl (%eax),%ecx
c0032544:	83 c0 04             	add    $0x4,%eax
c0032547:	89 45 14             	mov    %eax,0x14(%ebp)
c003254a:	31 c0                	xor    %eax,%eax
c003254c:	e9 0f fd ff ff       	jmp    c0032260 <_svfprintf_r+0x3e0>
c0032551:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032558:	89 c8                	mov    %ecx,%eax
c003255a:	e9 4e fa ff ff       	jmp    c0031fad <_svfprintf_r+0x12d>
c003255f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032566:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032569:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003256f:	0f 85 97 0b 00 00    	jne    c003310c <_svfprintf_r+0x128c>
c0032575:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003257c:	0f 84 8a 0b 00 00    	je     c003310c <_svfprintf_r+0x128c>
c0032582:	8b 45 14             	mov    0x14(%ebp),%eax
c0032585:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c003258c:	8b 00                	mov    (%eax),%eax
c003258e:	66 89 10             	mov    %dx,(%eax)
c0032591:	8b 45 14             	mov    0x14(%ebp),%eax
c0032594:	83 c0 04             	add    $0x4,%eax
c0032597:	89 45 14             	mov    %eax,0x14(%ebp)
c003259a:	e9 7c f9 ff ff       	jmp    c0031f1b <_svfprintf_r+0x9b>
c003259f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00325a6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00325ad:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00325b3:	8b 45 14             	mov    0x14(%ebp),%eax
c00325b6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00325b9:	0f 84 79 ff ff ff    	je     c0032538 <_svfprintf_r+0x6b8>
c00325bf:	8b 08                	mov    (%eax),%ecx
c00325c1:	83 c0 04             	add    $0x4,%eax
c00325c4:	89 45 14             	mov    %eax,0x14(%ebp)
c00325c7:	31 c0                	xor    %eax,%eax
c00325c9:	e9 92 fc ff ff       	jmp    c0032260 <_svfprintf_r+0x3e0>
c00325ce:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00325d5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00325db:	8b 45 14             	mov    0x14(%ebp),%eax
c00325de:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00325e1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00325e7:	0f 84 9f fd ff ff    	je     c003238c <_svfprintf_r+0x50c>
c00325ed:	8b 08                	mov    (%eax),%ecx
c00325ef:	83 c0 04             	add    $0x4,%eax
c00325f2:	89 45 14             	mov    %eax,0x14(%ebp)
c00325f5:	85 c9                	test   %ecx,%ecx
c00325f7:	0f 89 ad fd ff ff    	jns    c00323aa <_svfprintf_r+0x52a>
c00325fd:	f7 d9                	neg    %ecx
c00325ff:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032604:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c003260b:	b8 01 00 00 00       	mov    $0x1,%eax
c0032610:	e9 54 fc ff ff       	jmp    c0032269 <_svfprintf_r+0x3e9>
c0032615:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c003261c:	89 c8                	mov    %ecx,%eax
c003261e:	e9 8a f9 ff ff       	jmp    c0031fad <_svfprintf_r+0x12d>
c0032623:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003262a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032630:	8b 45 14             	mov    0x14(%ebp),%eax
c0032633:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032636:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003263c:	c7 85 18 ff ff ff b3 	movl   $0xc00398b3,-0xe8(%ebp)
c0032643:	98 03 c0 
c0032646:	75 71                	jne    c00326b9 <_svfprintf_r+0x839>
c0032648:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003264f:	74 68                	je     c00326b9 <_svfprintf_r+0x839>
c0032651:	0f b7 08             	movzwl (%eax),%ecx
c0032654:	83 c0 04             	add    $0x4,%eax
c0032657:	89 45 14             	mov    %eax,0x14(%ebp)
c003265a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032661:	b8 02 00 00 00       	mov    $0x2,%eax
c0032666:	0f 84 f4 fb ff ff    	je     c0032260 <_svfprintf_r+0x3e0>
c003266c:	85 c9                	test   %ecx,%ecx
c003266e:	0f 84 ec fb ff ff    	je     c0032260 <_svfprintf_r+0x3e0>
c0032674:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c003267b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032682:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032689:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c003268f:	e9 cc fb ff ff       	jmp    c0032260 <_svfprintf_r+0x3e0>
c0032694:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003269b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326a1:	8b 45 14             	mov    0x14(%ebp),%eax
c00326a4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326a7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00326ad:	c7 85 18 ff ff ff a2 	movl   $0xc00398a2,-0xe8(%ebp)
c00326b4:	98 03 c0 
c00326b7:	74 8f                	je     c0032648 <_svfprintf_r+0x7c8>
c00326b9:	8b 08                	mov    (%eax),%ecx
c00326bb:	83 c0 04             	add    $0x4,%eax
c00326be:	89 45 14             	mov    %eax,0x14(%ebp)
c00326c1:	eb 97                	jmp    c003265a <_svfprintf_r+0x7da>
c00326c3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326c9:	8b 45 14             	mov    0x14(%ebp),%eax
c00326cc:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326cf:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00326d6:	8b 00                	mov    (%eax),%eax
c00326d8:	88 45 80             	mov    %al,-0x80(%ebp)
c00326db:	8b 45 14             	mov    0x14(%ebp),%eax
c00326de:	83 c0 04             	add    $0x4,%eax
c00326e1:	89 45 14             	mov    %eax,0x14(%ebp)
c00326e4:	8d 45 80             	lea    -0x80(%ebp),%eax
c00326e7:	31 db                	xor    %ebx,%ebx
c00326e9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c00326f0:	00 00 00 
c00326f3:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c00326fa:	00 00 00 
c00326fd:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032704:	00 00 00 
c0032707:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003270e:	00 00 00 
c0032711:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032717:	e9 07 fa ff ff       	jmp    c0032123 <_svfprintf_r+0x2a3>
c003271c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032723:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003272a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032730:	8b 45 14             	mov    0x14(%ebp),%eax
c0032733:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032736:	0f 84 03 fb ff ff    	je     c003223f <_svfprintf_r+0x3bf>
c003273c:	8b 08                	mov    (%eax),%ecx
c003273e:	83 c0 04             	add    $0x4,%eax
c0032741:	89 45 14             	mov    %eax,0x14(%ebp)
c0032744:	b8 01 00 00 00       	mov    $0x1,%eax
c0032749:	e9 12 fb ff ff       	jmp    c0032260 <_svfprintf_r+0x3e0>
c003274e:	85 c0                	test   %eax,%eax
c0032750:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032756:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032759:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003275f:	0f 84 c3 f8 ff ff    	je     c0032028 <_svfprintf_r+0x1a8>
c0032765:	88 45 80             	mov    %al,-0x80(%ebp)
c0032768:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003276f:	e9 70 ff ff ff       	jmp    c00326e4 <_svfprintf_r+0x864>
c0032774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032778:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003277e:	84 db                	test   %bl,%bl
c0032780:	74 33                	je     c00327b5 <_svfprintf_r+0x935>
c0032782:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032788:	83 c1 01             	add    $0x1,%ecx
c003278b:	89 07                	mov    %eax,(%edi)
c003278d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032793:	83 c7 08             	add    $0x8,%edi
c0032796:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003279d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00327a3:	83 c0 01             	add    $0x1,%eax
c00327a6:	83 f8 07             	cmp    $0x7,%eax
c00327a9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00327af:	0f 8f 7b 06 00 00    	jg     c0032e30 <_svfprintf_r+0xfb0>
c00327b5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c00327bb:	85 db                	test   %ebx,%ebx
c00327bd:	74 33                	je     c00327f2 <_svfprintf_r+0x972>
c00327bf:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c00327c5:	83 c1 02             	add    $0x2,%ecx
c00327c8:	89 07                	mov    %eax,(%edi)
c00327ca:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00327d0:	83 c7 08             	add    $0x8,%edi
c00327d3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c00327da:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00327e0:	83 c0 01             	add    $0x1,%eax
c00327e3:	83 f8 07             	cmp    $0x7,%eax
c00327e6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00327ec:	0f 8f 06 06 00 00    	jg     c0032df8 <_svfprintf_r+0xf78>
c00327f2:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c00327f9:	00 00 00 
c00327fc:	0f 84 c6 03 00 00    	je     c0032bc8 <_svfprintf_r+0xd48>
c0032802:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0032808:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c003280e:	85 f6                	test   %esi,%esi
c0032810:	0f 8e d2 00 00 00    	jle    c00328e8 <_svfprintf_r+0xa68>
c0032816:	83 fe 10             	cmp    $0x10,%esi
c0032819:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003281f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032825:	7f 11                	jg     c0032838 <_svfprintf_r+0x9b8>
c0032827:	eb 6b                	jmp    c0032894 <_svfprintf_r+0xa14>
c0032829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032830:	83 ee 10             	sub    $0x10,%esi
c0032833:	83 fe 10             	cmp    $0x10,%esi
c0032836:	7e 5c                	jle    c0032894 <_svfprintf_r+0xa14>
c0032838:	83 c0 01             	add    $0x1,%eax
c003283b:	83 c1 10             	add    $0x10,%ecx
c003283e:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c0032844:	83 c7 08             	add    $0x8,%edi
c0032847:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003284e:	83 f8 07             	cmp    $0x7,%eax
c0032851:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032857:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003285d:	7e d1                	jle    c0032830 <_svfprintf_r+0x9b0>
c003285f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032862:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032866:	89 44 24 04          	mov    %eax,0x4(%esp)
c003286a:	8b 45 08             	mov    0x8(%ebp),%eax
c003286d:	89 04 24             	mov    %eax,(%esp)
c0032870:	e8 8b 41 00 00       	call   c0036a00 <__ssprint_r>
c0032875:	85 c0                	test   %eax,%eax
c0032877:	0f 85 d3 f7 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c003287d:	83 ee 10             	sub    $0x10,%esi
c0032880:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032886:	83 fe 10             	cmp    $0x10,%esi
c0032889:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003288f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032892:	7f a4                	jg     c0032838 <_svfprintf_r+0x9b8>
c0032894:	83 c0 01             	add    $0x1,%eax
c0032897:	01 f1                	add    %esi,%ecx
c0032899:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c003289f:	83 c7 08             	add    $0x8,%edi
c00328a2:	89 77 fc             	mov    %esi,-0x4(%edi)
c00328a5:	83 f8 07             	cmp    $0x7,%eax
c00328a8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328ae:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328b4:	7e 32                	jle    c00328e8 <_svfprintf_r+0xa68>
c00328b6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00328bc:	89 44 24 08          	mov    %eax,0x8(%esp)
c00328c0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00328c3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00328c7:	8b 45 08             	mov    0x8(%ebp),%eax
c00328ca:	89 04 24             	mov    %eax,(%esp)
c00328cd:	e8 2e 41 00 00       	call   c0036a00 <__ssprint_r>
c00328d2:	85 c0                	test   %eax,%eax
c00328d4:	0f 85 76 f7 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c00328da:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00328e0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00328e3:	90                   	nop
c00328e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00328e8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c00328ef:	01 00 00 
c00328f2:	0f 85 50 01 00 00    	jne    c0032a48 <_svfprintf_r+0xbc8>
c00328f8:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00328fe:	89 07                	mov    %eax,(%edi)
c0032900:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032906:	01 c1                	add    %eax,%ecx
c0032908:	89 47 04             	mov    %eax,0x4(%edi)
c003290b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032911:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032917:	83 c0 01             	add    $0x1,%eax
c003291a:	83 f8 07             	cmp    $0x7,%eax
c003291d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032923:	0f 8f 6a 04 00 00    	jg     c0032d93 <_svfprintf_r+0xf13>
c0032929:	83 c7 08             	add    $0x8,%edi
c003292c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032933:	0f 84 d7 00 00 00    	je     c0032a10 <_svfprintf_r+0xb90>
c0032939:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c003293f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032945:	85 f6                	test   %esi,%esi
c0032947:	0f 8e c3 00 00 00    	jle    c0032a10 <_svfprintf_r+0xb90>
c003294d:	83 fe 10             	cmp    $0x10,%esi
c0032950:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032956:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c003295c:	7f 0a                	jg     c0032968 <_svfprintf_r+0xae8>
c003295e:	eb 64                	jmp    c00329c4 <_svfprintf_r+0xb44>
c0032960:	83 ee 10             	sub    $0x10,%esi
c0032963:	83 fe 10             	cmp    $0x10,%esi
c0032966:	7e 5c                	jle    c00329c4 <_svfprintf_r+0xb44>
c0032968:	83 c0 01             	add    $0x1,%eax
c003296b:	83 c1 10             	add    $0x10,%ecx
c003296e:	c7 07 44 9a 03 c0    	movl   $0xc0039a44,(%edi)
c0032974:	83 c7 08             	add    $0x8,%edi
c0032977:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003297e:	83 f8 07             	cmp    $0x7,%eax
c0032981:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032987:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003298d:	7e d1                	jle    c0032960 <_svfprintf_r+0xae0>
c003298f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032992:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032996:	89 44 24 04          	mov    %eax,0x4(%esp)
c003299a:	8b 45 08             	mov    0x8(%ebp),%eax
c003299d:	89 04 24             	mov    %eax,(%esp)
c00329a0:	e8 5b 40 00 00       	call   c0036a00 <__ssprint_r>
c00329a5:	85 c0                	test   %eax,%eax
c00329a7:	0f 85 a3 f6 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c00329ad:	83 ee 10             	sub    $0x10,%esi
c00329b0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00329b6:	83 fe 10             	cmp    $0x10,%esi
c00329b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329bf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329c2:	7f a4                	jg     c0032968 <_svfprintf_r+0xae8>
c00329c4:	83 c0 01             	add    $0x1,%eax
c00329c7:	01 f1                	add    %esi,%ecx
c00329c9:	83 f8 07             	cmp    $0x7,%eax
c00329cc:	c7 07 44 9a 03 c0    	movl   $0xc0039a44,(%edi)
c00329d2:	89 77 04             	mov    %esi,0x4(%edi)
c00329d5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329db:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329e1:	7e 2d                	jle    c0032a10 <_svfprintf_r+0xb90>
c00329e3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00329e9:	89 44 24 08          	mov    %eax,0x8(%esp)
c00329ed:	8b 45 0c             	mov    0xc(%ebp),%eax
c00329f0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00329f4:	8b 45 08             	mov    0x8(%ebp),%eax
c00329f7:	89 04 24             	mov    %eax,(%esp)
c00329fa:	e8 01 40 00 00       	call   c0036a00 <__ssprint_r>
c00329ff:	85 c0                	test   %eax,%eax
c0032a01:	0f 85 49 f6 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0032a07:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a0d:	8d 76 00             	lea    0x0(%esi),%esi
c0032a10:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032a16:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032a1c:	39 c2                	cmp    %eax,%edx
c0032a1e:	0f 4d c2             	cmovge %edx,%eax
c0032a21:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032a27:	85 c9                	test   %ecx,%ecx
c0032a29:	0f 85 99 03 00 00    	jne    c0032dc8 <_svfprintf_r+0xf48>
c0032a2f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032a36:	00 00 00 
c0032a39:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a3c:	e9 da f4 ff ff       	jmp    c0031f1b <_svfprintf_r+0x9b>
c0032a41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032a48:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032a4f:	0f 8e 5b 02 00 00    	jle    c0032cb0 <_svfprintf_r+0xe30>
c0032a55:	d9 ee                	fldz   
c0032a57:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032a5d:	df e9                	fucomip %st(1),%st
c0032a5f:	dd d8                	fstp   %st(0)
c0032a61:	0f 8a 59 04 00 00    	jp     c0032ec0 <_svfprintf_r+0x1040>
c0032a67:	0f 85 53 04 00 00    	jne    c0032ec0 <_svfprintf_r+0x1040>
c0032a6d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a73:	83 c1 01             	add    $0x1,%ecx
c0032a76:	83 c7 08             	add    $0x8,%edi
c0032a79:	c7 47 f8 cb 98 03 c0 	movl   $0xc00398cb,-0x8(%edi)
c0032a80:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032a87:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a8d:	83 c0 01             	add    $0x1,%eax
c0032a90:	83 f8 07             	cmp    $0x7,%eax
c0032a93:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a99:	0f 8f 63 09 00 00    	jg     c0033402 <_svfprintf_r+0x1582>
c0032a9f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032aa5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032aab:	7c 0d                	jl     c0032aba <_svfprintf_r+0xc3a>
c0032aad:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032ab4:	0f 84 72 fe ff ff    	je     c003292c <_svfprintf_r+0xaac>
c0032aba:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032ac0:	83 c7 08             	add    $0x8,%edi
c0032ac3:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032ac6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032acc:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032acf:	01 c1                	add    %eax,%ecx
c0032ad1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ad7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032add:	83 c0 01             	add    $0x1,%eax
c0032ae0:	83 f8 07             	cmp    $0x7,%eax
c0032ae3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ae9:	0f 8f dc 0b 00 00    	jg     c00336cb <_svfprintf_r+0x184b>
c0032aef:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032af5:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032af8:	85 f6                	test   %esi,%esi
c0032afa:	0f 8e 2c fe ff ff    	jle    c003292c <_svfprintf_r+0xaac>
c0032b00:	83 fe 10             	cmp    $0x10,%esi
c0032b03:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b09:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032b0f:	7f 13                	jg     c0032b24 <_svfprintf_r+0xca4>
c0032b11:	e9 e6 05 00 00       	jmp    c00330fc <_svfprintf_r+0x127c>
c0032b16:	66 90                	xchg   %ax,%ax
c0032b18:	83 ee 10             	sub    $0x10,%esi
c0032b1b:	83 fe 10             	cmp    $0x10,%esi
c0032b1e:	0f 8e d8 05 00 00    	jle    c00330fc <_svfprintf_r+0x127c>
c0032b24:	83 c0 01             	add    $0x1,%eax
c0032b27:	83 c1 10             	add    $0x10,%ecx
c0032b2a:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c0032b30:	83 c7 08             	add    $0x8,%edi
c0032b33:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032b3a:	83 f8 07             	cmp    $0x7,%eax
c0032b3d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b43:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b49:	7e cd                	jle    c0032b18 <_svfprintf_r+0xc98>
c0032b4b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032b4e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032b52:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032b56:	8b 45 08             	mov    0x8(%ebp),%eax
c0032b59:	89 04 24             	mov    %eax,(%esp)
c0032b5c:	e8 9f 3e 00 00       	call   c0036a00 <__ssprint_r>
c0032b61:	85 c0                	test   %eax,%eax
c0032b63:	0f 85 e7 f4 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0032b69:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b6f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b72:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b78:	eb 9e                	jmp    c0032b18 <_svfprintf_r+0xc98>
c0032b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032b80:	84 c0                	test   %al,%al
c0032b82:	75 2c                	jne    c0032bb0 <_svfprintf_r+0xd30>
c0032b84:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032b8b:	74 23                	je     c0032bb0 <_svfprintf_r+0xd30>
c0032b8d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032b93:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032b97:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032b9d:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032ba0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032ba6:	e9 2d f7 ff ff       	jmp    c00322d8 <_svfprintf_r+0x458>
c0032bab:	90                   	nop
c0032bac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032bb0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032bb3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032bba:	00 00 00 
c0032bbd:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032bc3:	e9 10 f7 ff ff       	jmp    c00322d8 <_svfprintf_r+0x458>
c0032bc8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032bce:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032bd4:	85 f6                	test   %esi,%esi
c0032bd6:	0f 8e 26 fc ff ff    	jle    c0032802 <_svfprintf_r+0x982>
c0032bdc:	83 fe 10             	cmp    $0x10,%esi
c0032bdf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032be5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032beb:	7f 0b                	jg     c0032bf8 <_svfprintf_r+0xd78>
c0032bed:	eb 65                	jmp    c0032c54 <_svfprintf_r+0xdd4>
c0032bef:	90                   	nop
c0032bf0:	83 ee 10             	sub    $0x10,%esi
c0032bf3:	83 fe 10             	cmp    $0x10,%esi
c0032bf6:	7e 5c                	jle    c0032c54 <_svfprintf_r+0xdd4>
c0032bf8:	83 c0 01             	add    $0x1,%eax
c0032bfb:	83 c1 10             	add    $0x10,%ecx
c0032bfe:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c0032c04:	83 c7 08             	add    $0x8,%edi
c0032c07:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032c0e:	83 f8 07             	cmp    $0x7,%eax
c0032c11:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c17:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c1d:	7e d1                	jle    c0032bf0 <_svfprintf_r+0xd70>
c0032c1f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c22:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032c26:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032c2a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032c2d:	89 04 24             	mov    %eax,(%esp)
c0032c30:	e8 cb 3d 00 00       	call   c0036a00 <__ssprint_r>
c0032c35:	85 c0                	test   %eax,%eax
c0032c37:	0f 85 13 f4 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0032c3d:	83 ee 10             	sub    $0x10,%esi
c0032c40:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032c46:	83 fe 10             	cmp    $0x10,%esi
c0032c49:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c4f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032c52:	7f a4                	jg     c0032bf8 <_svfprintf_r+0xd78>
c0032c54:	83 c0 01             	add    $0x1,%eax
c0032c57:	01 f1                	add    %esi,%ecx
c0032c59:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c0032c5f:	83 c7 08             	add    $0x8,%edi
c0032c62:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032c65:	83 f8 07             	cmp    $0x7,%eax
c0032c68:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c6e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c74:	0f 8e 88 fb ff ff    	jle    c0032802 <_svfprintf_r+0x982>
c0032c7a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032c80:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032c84:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c87:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032c8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0032c8e:	89 04 24             	mov    %eax,(%esp)
c0032c91:	e8 6a 3d 00 00       	call   c0036a00 <__ssprint_r>
c0032c96:	85 c0                	test   %eax,%eax
c0032c98:	0f 85 b2 f3 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0032c9e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ca4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ca7:	e9 56 fb ff ff       	jmp    c0032802 <_svfprintf_r+0x982>
c0032cac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032cb0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032cb7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032cbd:	0f 8e df 05 00 00    	jle    c00332a2 <_svfprintf_r+0x1422>
c0032cc3:	89 07                	mov    %eax,(%edi)
c0032cc5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ccb:	8d 51 01             	lea    0x1(%ecx),%edx
c0032cce:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032cd5:	83 c7 08             	add    $0x8,%edi
c0032cd8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032cde:	83 c0 01             	add    $0x1,%eax
c0032ce1:	83 f8 07             	cmp    $0x7,%eax
c0032ce4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032cea:	0f 8f 59 06 00 00    	jg     c0033349 <_svfprintf_r+0x14c9>
c0032cf0:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032cf6:	83 c0 01             	add    $0x1,%eax
c0032cf9:	83 c7 08             	add    $0x8,%edi
c0032cfc:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d02:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032d05:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032d0b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032d0e:	01 da                	add    %ebx,%edx
c0032d10:	83 f8 07             	cmp    $0x7,%eax
c0032d13:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032d19:	0f 8f f2 05 00 00    	jg     c0033311 <_svfprintf_r+0x1491>
c0032d1f:	d9 ee                	fldz   
c0032d21:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032d27:	df e9                	fucomip %st(1),%st
c0032d29:	dd d8                	fstp   %st(0)
c0032d2b:	7a 06                	jp     c0032d33 <_svfprintf_r+0xeb3>
c0032d2d:	0f 84 33 03 00 00    	je     c0033066 <_svfprintf_r+0x11e6>
c0032d33:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032d39:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032d3f:	83 c1 01             	add    $0x1,%ecx
c0032d42:	89 0f                	mov    %ecx,(%edi)
c0032d44:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032d47:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032d4a:	01 ca                	add    %ecx,%edx
c0032d4c:	83 c0 01             	add    $0x1,%eax
c0032d4f:	83 f8 07             	cmp    $0x7,%eax
c0032d52:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032d58:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d5e:	0f 8f 75 05 00 00    	jg     c00332d9 <_svfprintf_r+0x1459>
c0032d64:	83 c7 08             	add    $0x8,%edi
c0032d67:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032d6d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032d73:	89 0f                	mov    %ecx,(%edi)
c0032d75:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032d78:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032d7b:	83 c0 01             	add    $0x1,%eax
c0032d7e:	83 f8 07             	cmp    $0x7,%eax
c0032d81:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d87:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d8d:	0f 8e 96 fb ff ff    	jle    c0032929 <_svfprintf_r+0xaa9>
c0032d93:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032d99:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032d9d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032da0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032da4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032da7:	89 04 24             	mov    %eax,(%esp)
c0032daa:	e8 51 3c 00 00       	call   c0036a00 <__ssprint_r>
c0032daf:	85 c0                	test   %eax,%eax
c0032db1:	0f 85 99 f2 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0032db7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032dbd:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032dc0:	e9 67 fb ff ff       	jmp    c003292c <_svfprintf_r+0xaac>
c0032dc5:	8d 76 00             	lea    0x0(%esi),%esi
c0032dc8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032dce:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032dd2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032dd5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032dd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ddc:	89 04 24             	mov    %eax,(%esp)
c0032ddf:	e8 1c 3c 00 00       	call   c0036a00 <__ssprint_r>
c0032de4:	85 c0                	test   %eax,%eax
c0032de6:	0f 84 43 fc ff ff    	je     c0032a2f <_svfprintf_r+0xbaf>
c0032dec:	e9 5f f2 ff ff       	jmp    c0032050 <_svfprintf_r+0x1d0>
c0032df1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032df8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032dfe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032e02:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e05:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e09:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e0c:	89 04 24             	mov    %eax,(%esp)
c0032e0f:	e8 ec 3b 00 00       	call   c0036a00 <__ssprint_r>
c0032e14:	85 c0                	test   %eax,%eax
c0032e16:	0f 85 34 f2 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0032e1c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e22:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032e25:	e9 c8 f9 ff ff       	jmp    c00327f2 <_svfprintf_r+0x972>
c0032e2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032e30:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032e36:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032e3a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e3d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e41:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e44:	89 04 24             	mov    %eax,(%esp)
c0032e47:	e8 b4 3b 00 00       	call   c0036a00 <__ssprint_r>
c0032e4c:	85 c0                	test   %eax,%eax
c0032e4e:	0f 85 fc f1 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0032e54:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e5a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032e5d:	e9 53 f9 ff ff       	jmp    c00327b5 <_svfprintf_r+0x935>
c0032e62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032e68:	89 c2                	mov    %eax,%edx
c0032e6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032e70:	89 c8                	mov    %ecx,%eax
c0032e72:	83 ea 01             	sub    $0x1,%edx
c0032e75:	83 e0 07             	and    $0x7,%eax
c0032e78:	c1 e9 03             	shr    $0x3,%ecx
c0032e7b:	83 c0 30             	add    $0x30,%eax
c0032e7e:	85 c9                	test   %ecx,%ecx
c0032e80:	88 02                	mov    %al,(%edx)
c0032e82:	75 ec                	jne    c0032e70 <_svfprintf_r+0xff0>
c0032e84:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032e8b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0032e91:	0f 84 5b 01 00 00    	je     c0032ff2 <_svfprintf_r+0x1172>
c0032e97:	3c 30                	cmp    $0x30,%al
c0032e99:	74 0b                	je     c0032ea6 <_svfprintf_r+0x1026>
c0032e9b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0032ea2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0032ea6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032ea9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0032eaf:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032eb5:	e9 1e f4 ff ff       	jmp    c00322d8 <_svfprintf_r+0x458>
c0032eba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032ec0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0032ec6:	85 db                	test   %ebx,%ebx
c0032ec8:	0f 8e 66 05 00 00    	jle    c0033434 <_svfprintf_r+0x15b4>
c0032ece:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0032ed4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032eda:	01 d0                	add    %edx,%eax
c0032edc:	89 c3                	mov    %eax,%ebx
c0032ede:	29 d3                	sub    %edx,%ebx
c0032ee0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0032ee6:	89 d0                	mov    %edx,%eax
c0032ee8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0032eee:	39 d3                	cmp    %edx,%ebx
c0032ef0:	0f 4f da             	cmovg  %edx,%ebx
c0032ef3:	85 db                	test   %ebx,%ebx
c0032ef5:	7e 28                	jle    c0032f1f <_svfprintf_r+0x109f>
c0032ef7:	89 07                	mov    %eax,(%edi)
c0032ef9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032eff:	01 d9                	add    %ebx,%ecx
c0032f01:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032f04:	83 c7 08             	add    $0x8,%edi
c0032f07:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032f0d:	83 c0 01             	add    $0x1,%eax
c0032f10:	83 f8 07             	cmp    $0x7,%eax
c0032f13:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032f19:	0f 8f 58 09 00 00    	jg     c0033877 <_svfprintf_r+0x19f7>
c0032f1f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0032f25:	31 c0                	xor    %eax,%eax
c0032f27:	85 db                	test   %ebx,%ebx
c0032f29:	0f 49 c3             	cmovns %ebx,%eax
c0032f2c:	29 c6                	sub    %eax,%esi
c0032f2e:	85 f6                	test   %esi,%esi
c0032f30:	0f 8e 40 02 00 00    	jle    c0033176 <_svfprintf_r+0x12f6>
c0032f36:	83 fe 10             	cmp    $0x10,%esi
c0032f39:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032f3f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032f45:	7f 15                	jg     c0032f5c <_svfprintf_r+0x10dc>
c0032f47:	e9 db 01 00 00       	jmp    c0033127 <_svfprintf_r+0x12a7>
c0032f4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032f50:	83 ee 10             	sub    $0x10,%esi
c0032f53:	83 fe 10             	cmp    $0x10,%esi
c0032f56:	0f 8e cb 01 00 00    	jle    c0033127 <_svfprintf_r+0x12a7>
c0032f5c:	83 c0 01             	add    $0x1,%eax
c0032f5f:	83 c1 10             	add    $0x10,%ecx
c0032f62:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c0032f68:	83 c7 08             	add    $0x8,%edi
c0032f6b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032f72:	83 f8 07             	cmp    $0x7,%eax
c0032f75:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032f7b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032f81:	7e cd                	jle    c0032f50 <_svfprintf_r+0x10d0>
c0032f83:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f86:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032f8a:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f8e:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f91:	89 04 24             	mov    %eax,(%esp)
c0032f94:	e8 67 3a 00 00       	call   c0036a00 <__ssprint_r>
c0032f99:	85 c0                	test   %eax,%eax
c0032f9b:	0f 85 af f0 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0032fa1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032fa7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032faa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032fb0:	eb 9e                	jmp    c0032f50 <_svfprintf_r+0x10d0>
c0032fb2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032fb5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c0032fba:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032fc0:	89 c7                	mov    %eax,%edi
c0032fc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fc8:	89 c8                	mov    %ecx,%eax
c0032fca:	83 ef 01             	sub    $0x1,%edi
c0032fcd:	f7 e6                	mul    %esi
c0032fcf:	c1 ea 03             	shr    $0x3,%edx
c0032fd2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0032fd5:	01 c0                	add    %eax,%eax
c0032fd7:	29 c1                	sub    %eax,%ecx
c0032fd9:	83 c1 30             	add    $0x30,%ecx
c0032fdc:	85 d2                	test   %edx,%edx
c0032fde:	88 0f                	mov    %cl,(%edi)
c0032fe0:	89 d1                	mov    %edx,%ecx
c0032fe2:	75 e4                	jne    c0032fc8 <_svfprintf_r+0x1148>
c0032fe4:	89 fa                	mov    %edi,%edx
c0032fe6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c0032fec:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032ff2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032ff5:	29 d0                	sub    %edx,%eax
c0032ff7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032ffd:	e9 d6 f2 ff ff       	jmp    c00322d8 <_svfprintf_r+0x458>
c0033002:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033008:	83 f9 09             	cmp    $0x9,%ecx
c003300b:	77 a5                	ja     c0032fb2 <_svfprintf_r+0x1132>
c003300d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033013:	83 c1 30             	add    $0x30,%ecx
c0033016:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033019:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003301f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033022:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033028:	e9 ab f2 ff ff       	jmp    c00322d8 <_svfprintf_r+0x458>
c003302d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033033:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033037:	8b 45 0c             	mov    0xc(%ebp),%eax
c003303a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003303e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033041:	89 04 24             	mov    %eax,(%esp)
c0033044:	e8 b7 39 00 00       	call   c0036a00 <__ssprint_r>
c0033049:	85 c0                	test   %eax,%eax
c003304b:	0f 85 ff ef ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0033051:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033058:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003305b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033061:	e9 18 f7 ff ff       	jmp    c003277e <_svfprintf_r+0x8fe>
c0033066:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003306c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003306f:	85 f6                	test   %esi,%esi
c0033071:	0f 8e f0 fc ff ff    	jle    c0032d67 <_svfprintf_r+0xee7>
c0033077:	83 fe 10             	cmp    $0x10,%esi
c003307a:	7e 70                	jle    c00330ec <_svfprintf_r+0x126c>
c003307c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033082:	eb 0c                	jmp    c0033090 <_svfprintf_r+0x1210>
c0033084:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033088:	83 ee 10             	sub    $0x10,%esi
c003308b:	83 fe 10             	cmp    $0x10,%esi
c003308e:	7e 5c                	jle    c00330ec <_svfprintf_r+0x126c>
c0033090:	83 c0 01             	add    $0x1,%eax
c0033093:	83 c2 10             	add    $0x10,%edx
c0033096:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c003309c:	83 c7 08             	add    $0x8,%edi
c003309f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00330a6:	83 f8 07             	cmp    $0x7,%eax
c00330a9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00330af:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330b5:	7e d1                	jle    c0033088 <_svfprintf_r+0x1208>
c00330b7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00330ba:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00330be:	89 44 24 04          	mov    %eax,0x4(%esp)
c00330c2:	8b 45 08             	mov    0x8(%ebp),%eax
c00330c5:	89 04 24             	mov    %eax,(%esp)
c00330c8:	e8 33 39 00 00       	call   c0036a00 <__ssprint_r>
c00330cd:	85 c0                	test   %eax,%eax
c00330cf:	0f 85 7b ef ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c00330d5:	83 ee 10             	sub    $0x10,%esi
c00330d8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00330de:	83 fe 10             	cmp    $0x10,%esi
c00330e1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330e7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00330ea:	7f a4                	jg     c0033090 <_svfprintf_r+0x1210>
c00330ec:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c00330f2:	01 f2                	add    %esi,%edx
c00330f4:	89 77 04             	mov    %esi,0x4(%edi)
c00330f7:	e9 50 fc ff ff       	jmp    c0032d4c <_svfprintf_r+0xecc>
c00330fc:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c0033102:	01 f1                	add    %esi,%ecx
c0033104:	89 77 04             	mov    %esi,0x4(%edi)
c0033107:	e9 6f fc ff ff       	jmp    c0032d7b <_svfprintf_r+0xefb>
c003310c:	8b 45 14             	mov    0x14(%ebp),%eax
c003310f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033115:	8b 00                	mov    (%eax),%eax
c0033117:	89 10                	mov    %edx,(%eax)
c0033119:	8b 45 14             	mov    0x14(%ebp),%eax
c003311c:	83 c0 04             	add    $0x4,%eax
c003311f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033122:	e9 f4 ed ff ff       	jmp    c0031f1b <_svfprintf_r+0x9b>
c0033127:	83 c0 01             	add    $0x1,%eax
c003312a:	01 f1                	add    %esi,%ecx
c003312c:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c0033132:	83 c7 08             	add    $0x8,%edi
c0033135:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033138:	83 f8 07             	cmp    $0x7,%eax
c003313b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033141:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033147:	7e 2d                	jle    c0033176 <_svfprintf_r+0x12f6>
c0033149:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003314f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033153:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033156:	89 44 24 04          	mov    %eax,0x4(%esp)
c003315a:	8b 45 08             	mov    0x8(%ebp),%eax
c003315d:	89 04 24             	mov    %eax,(%esp)
c0033160:	e8 9b 38 00 00       	call   c0036a00 <__ssprint_r>
c0033165:	85 c0                	test   %eax,%eax
c0033167:	0f 85 e3 ee ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c003316d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033173:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033176:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003317c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033182:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033188:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c003318e:	89 c6                	mov    %eax,%esi
c0033190:	7c 0d                	jl     c003319f <_svfprintf_r+0x131f>
c0033192:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033199:	0f 84 5e 05 00 00    	je     c00336fd <_svfprintf_r+0x187d>
c003319f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00331a5:	89 07                	mov    %eax,(%edi)
c00331a7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00331ad:	01 c1                	add    %eax,%ecx
c00331af:	89 47 04             	mov    %eax,0x4(%edi)
c00331b2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331b8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00331be:	83 c0 01             	add    $0x1,%eax
c00331c1:	83 f8 07             	cmp    $0x7,%eax
c00331c4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00331ca:	0f 8f d9 06 00 00    	jg     c00338a9 <_svfprintf_r+0x1a29>
c00331d0:	83 c7 08             	add    $0x8,%edi
c00331d3:	89 d0                	mov    %edx,%eax
c00331d5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c00331db:	89 f2                	mov    %esi,%edx
c00331dd:	29 f3                	sub    %esi,%ebx
c00331df:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00331e5:	29 c6                	sub    %eax,%esi
c00331e7:	39 de                	cmp    %ebx,%esi
c00331e9:	0f 4e de             	cmovle %esi,%ebx
c00331ec:	85 db                	test   %ebx,%ebx
c00331ee:	7e 29                	jle    c0033219 <_svfprintf_r+0x1399>
c00331f0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331f6:	01 d9                	add    %ebx,%ecx
c00331f8:	83 c7 08             	add    $0x8,%edi
c00331fb:	89 57 f8             	mov    %edx,-0x8(%edi)
c00331fe:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033201:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033207:	83 c0 01             	add    $0x1,%eax
c003320a:	83 f8 07             	cmp    $0x7,%eax
c003320d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033213:	0f 8f c8 06 00 00    	jg     c00338e1 <_svfprintf_r+0x1a61>
c0033219:	31 c0                	xor    %eax,%eax
c003321b:	85 db                	test   %ebx,%ebx
c003321d:	0f 49 c3             	cmovns %ebx,%eax
c0033220:	29 c6                	sub    %eax,%esi
c0033222:	85 f6                	test   %esi,%esi
c0033224:	0f 8e 02 f7 ff ff    	jle    c003292c <_svfprintf_r+0xaac>
c003322a:	83 fe 10             	cmp    $0x10,%esi
c003322d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033233:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033239:	7f 11                	jg     c003324c <_svfprintf_r+0x13cc>
c003323b:	e9 bc fe ff ff       	jmp    c00330fc <_svfprintf_r+0x127c>
c0033240:	83 ee 10             	sub    $0x10,%esi
c0033243:	83 fe 10             	cmp    $0x10,%esi
c0033246:	0f 8e b0 fe ff ff    	jle    c00330fc <_svfprintf_r+0x127c>
c003324c:	83 c0 01             	add    $0x1,%eax
c003324f:	83 c1 10             	add    $0x10,%ecx
c0033252:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c0033258:	83 c7 08             	add    $0x8,%edi
c003325b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033262:	83 f8 07             	cmp    $0x7,%eax
c0033265:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003326b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033271:	7e cd                	jle    c0033240 <_svfprintf_r+0x13c0>
c0033273:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033276:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003327a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003327e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033281:	89 04 24             	mov    %eax,(%esp)
c0033284:	e8 77 37 00 00       	call   c0036a00 <__ssprint_r>
c0033289:	85 c0                	test   %eax,%eax
c003328b:	0f 85 bf ed ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0033291:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033297:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003329a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332a0:	eb 9e                	jmp    c0033240 <_svfprintf_r+0x13c0>
c00332a2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00332a9:	0f 85 14 fa ff ff    	jne    c0032cc3 <_svfprintf_r+0xe43>
c00332af:	89 07                	mov    %eax,(%edi)
c00332b1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332b7:	8d 51 01             	lea    0x1(%ecx),%edx
c00332ba:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c00332c1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00332c7:	83 c0 01             	add    $0x1,%eax
c00332ca:	83 f8 07             	cmp    $0x7,%eax
c00332cd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332d3:	0f 8e 8b fa ff ff    	jle    c0032d64 <_svfprintf_r+0xee4>
c00332d9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00332df:	89 44 24 08          	mov    %eax,0x8(%esp)
c00332e3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00332e6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00332ea:	8b 45 08             	mov    0x8(%ebp),%eax
c00332ed:	89 04 24             	mov    %eax,(%esp)
c00332f0:	e8 0b 37 00 00       	call   c0036a00 <__ssprint_r>
c00332f5:	85 c0                	test   %eax,%eax
c00332f7:	0f 85 53 ed ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c00332fd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033303:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033306:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003330c:	e9 56 fa ff ff       	jmp    c0032d67 <_svfprintf_r+0xee7>
c0033311:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033317:	89 44 24 08          	mov    %eax,0x8(%esp)
c003331b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003331e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033322:	8b 45 08             	mov    0x8(%ebp),%eax
c0033325:	89 04 24             	mov    %eax,(%esp)
c0033328:	e8 d3 36 00 00       	call   c0036a00 <__ssprint_r>
c003332d:	85 c0                	test   %eax,%eax
c003332f:	0f 85 1b ed ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0033335:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003333b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003333e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033344:	e9 d6 f9 ff ff       	jmp    c0032d1f <_svfprintf_r+0xe9f>
c0033349:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003334f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033353:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033356:	89 44 24 04          	mov    %eax,0x4(%esp)
c003335a:	8b 45 08             	mov    0x8(%ebp),%eax
c003335d:	89 04 24             	mov    %eax,(%esp)
c0033360:	e8 9b 36 00 00       	call   c0036a00 <__ssprint_r>
c0033365:	85 c0                	test   %eax,%eax
c0033367:	0f 85 e3 ec ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c003336d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033373:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033376:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003337c:	e9 6f f9 ff ff       	jmp    c0032cf0 <_svfprintf_r+0xe70>
c0033381:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033387:	dd 1c 24             	fstpl  (%esp)
c003338a:	e8 11 35 00 00       	call   c00368a0 <__fpclassifyd>
c003338f:	85 c0                	test   %eax,%eax
c0033391:	0f 85 a3 01 00 00    	jne    c003353a <_svfprintf_r+0x16ba>
c0033397:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c003339e:	ba 9a 98 03 c0       	mov    $0xc003989a,%edx
c00333a3:	b8 9e 98 03 c0       	mov    $0xc003989e,%eax
c00333a8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00333af:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00333b6:	00 00 00 
c00333b9:	0f 4e c2             	cmovle %edx,%eax
c00333bc:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00333c2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c00333c9:	ff ff ff 
c00333cc:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00333d3:	00 00 00 
c00333d6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00333dd:	00 00 00 
c00333e0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00333e7:	00 00 00 
c00333ea:	e9 29 ed ff ff       	jmp    c0032118 <_svfprintf_r+0x298>
c00333ef:	dd 00                	fldl   (%eax)
c00333f1:	83 c0 08             	add    $0x8,%eax
c00333f4:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00333fa:	89 45 14             	mov    %eax,0x14(%ebp)
c00333fd:	e9 e6 ef ff ff       	jmp    c00323e8 <_svfprintf_r+0x568>
c0033402:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033408:	89 44 24 08          	mov    %eax,0x8(%esp)
c003340c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003340f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033413:	8b 45 08             	mov    0x8(%ebp),%eax
c0033416:	89 04 24             	mov    %eax,(%esp)
c0033419:	e8 e2 35 00 00       	call   c0036a00 <__ssprint_r>
c003341e:	85 c0                	test   %eax,%eax
c0033420:	0f 85 2a ec ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0033426:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003342c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003342f:	e9 6b f6 ff ff       	jmp    c0032a9f <_svfprintf_r+0xc1f>
c0033434:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003343a:	83 c1 01             	add    $0x1,%ecx
c003343d:	83 c7 08             	add    $0x8,%edi
c0033440:	c7 47 f8 cb 98 03 c0 	movl   $0xc00398cb,-0x8(%edi)
c0033447:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003344e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033454:	83 c0 01             	add    $0x1,%eax
c0033457:	83 f8 07             	cmp    $0x7,%eax
c003345a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033460:	0f 8f ef 02 00 00    	jg     c0033755 <_svfprintf_r+0x18d5>
c0033466:	85 db                	test   %ebx,%ebx
c0033468:	75 17                	jne    c0033481 <_svfprintf_r+0x1601>
c003346a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033470:	85 d2                	test   %edx,%edx
c0033472:	75 0d                	jne    c0033481 <_svfprintf_r+0x1601>
c0033474:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003347b:	0f 84 ab f4 ff ff    	je     c003292c <_svfprintf_r+0xaac>
c0033481:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033487:	83 c7 08             	add    $0x8,%edi
c003348a:	89 47 f8             	mov    %eax,-0x8(%edi)
c003348d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033493:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033496:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033499:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003349f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00334a5:	83 c0 01             	add    $0x1,%eax
c00334a8:	83 f8 07             	cmp    $0x7,%eax
c00334ab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00334b1:	0f 8f 60 03 00 00    	jg     c0033817 <_svfprintf_r+0x1997>
c00334b7:	f7 db                	neg    %ebx
c00334b9:	85 db                	test   %ebx,%ebx
c00334bb:	0f 8e 21 03 00 00    	jle    c00337e2 <_svfprintf_r+0x1962>
c00334c1:	83 fb 10             	cmp    $0x10,%ebx
c00334c4:	0f 8e c3 02 00 00    	jle    c003378d <_svfprintf_r+0x190d>
c00334ca:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c00334d0:	eb 12                	jmp    c00334e4 <_svfprintf_r+0x1664>
c00334d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00334d8:	83 eb 10             	sub    $0x10,%ebx
c00334db:	83 fb 10             	cmp    $0x10,%ebx
c00334de:	0f 8e a9 02 00 00    	jle    c003378d <_svfprintf_r+0x190d>
c00334e4:	83 c0 01             	add    $0x1,%eax
c00334e7:	83 c2 10             	add    $0x10,%edx
c00334ea:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c00334f0:	83 c7 08             	add    $0x8,%edi
c00334f3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00334fa:	83 f8 07             	cmp    $0x7,%eax
c00334fd:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033503:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033509:	7e cd                	jle    c00334d8 <_svfprintf_r+0x1658>
c003350b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003350e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033512:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033516:	8b 45 08             	mov    0x8(%ebp),%eax
c0033519:	89 04 24             	mov    %eax,(%esp)
c003351c:	e8 df 34 00 00       	call   c0036a00 <__ssprint_r>
c0033521:	85 c0                	test   %eax,%eax
c0033523:	0f 85 27 eb ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0033529:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003352f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033532:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033538:	eb 9e                	jmp    c00334d8 <_svfprintf_r+0x1658>
c003353a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033540:	83 e3 df             	and    $0xffffffdf,%ebx
c0033543:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003354a:	0f 84 05 03 00 00    	je     c0033855 <_svfprintf_r+0x19d5>
c0033550:	83 fb 47             	cmp    $0x47,%ebx
c0033553:	75 16                	jne    c003356b <_svfprintf_r+0x16eb>
c0033555:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003355b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033560:	85 d2                	test   %edx,%edx
c0033562:	0f 45 c2             	cmovne %edx,%eax
c0033565:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c003356b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033571:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033577:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c003357d:	80 cc 01             	or     $0x1,%ah
c0033580:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033586:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003358c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033593:	85 c0                	test   %eax,%eax
c0033595:	0f 88 ba 05 00 00    	js     c0033b55 <_svfprintf_r+0x1cd5>
c003359b:	83 fb 46             	cmp    $0x46,%ebx
c003359e:	0f 94 c0             	sete   %al
c00335a1:	89 c6                	mov    %eax,%esi
c00335a3:	0f 84 d4 03 00 00    	je     c003397d <_svfprintf_r+0x1afd>
c00335a9:	83 fb 45             	cmp    $0x45,%ebx
c00335ac:	0f 85 99 05 00 00    	jne    c0033b4b <_svfprintf_r+0x1ccb>
c00335b2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00335b8:	dd 54 24 04          	fstl   0x4(%esp)
c00335bc:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c00335c3:	00 
c00335c4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c00335ca:	8d 70 01             	lea    0x1(%eax),%esi
c00335cd:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c00335d3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c00335d7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c00335dd:	89 44 24 18          	mov    %eax,0x18(%esp)
c00335e1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c00335e7:	89 44 24 14          	mov    %eax,0x14(%esp)
c00335eb:	8b 45 08             	mov    0x8(%ebp),%eax
c00335ee:	89 74 24 10          	mov    %esi,0x10(%esp)
c00335f2:	89 04 24             	mov    %eax,(%esp)
c00335f5:	e8 56 09 00 00       	call   c0033f50 <_dtoa_r>
c00335fa:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033600:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033603:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033609:	d9 ee                	fldz   
c003360b:	d9 c9                	fxch   %st(1)
c003360d:	df e9                	fucomip %st(1),%st
c003360f:	dd d8                	fstp   %st(0)
c0033611:	0f 8a fd 00 00 00    	jp     c0033714 <_svfprintf_r+0x1894>
c0033617:	89 c8                	mov    %ecx,%eax
c0033619:	0f 85 f5 00 00 00    	jne    c0033714 <_svfprintf_r+0x1894>
c003361f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033625:	83 fb 47             	cmp    $0x47,%ebx
c0033628:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003362e:	0f 84 1e 04 00 00    	je     c0033a52 <_svfprintf_r+0x1bd2>
c0033634:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003363b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033641:	0f 8e 65 04 00 00    	jle    c0033aac <_svfprintf_r+0x1c2c>
c0033647:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003364e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033654:	0f 84 3c 05 00 00    	je     c0033b96 <_svfprintf_r+0x1d16>
c003365a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033660:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033666:	0f 8f f7 04 00 00    	jg     c0033b63 <_svfprintf_r+0x1ce3>
c003366c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033672:	83 e0 01             	and    $0x1,%eax
c0033675:	0f 85 e2 05 00 00    	jne    c0033c5d <_svfprintf_r+0x1ddd>
c003367b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033681:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033688:	00 00 00 
c003368b:	85 d2                	test   %edx,%edx
c003368d:	0f 49 c2             	cmovns %edx,%eax
c0033690:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033696:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c003369d:	0f 85 68 03 00 00    	jne    c0033a0b <_svfprintf_r+0x1b8b>
c00336a3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00336a9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c00336af:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00336b6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00336bd:	00 00 00 
c00336c0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c00336c6:	e9 4d ea ff ff       	jmp    c0032118 <_svfprintf_r+0x298>
c00336cb:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00336d1:	89 44 24 08          	mov    %eax,0x8(%esp)
c00336d5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00336d8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00336dc:	8b 45 08             	mov    0x8(%ebp),%eax
c00336df:	89 04 24             	mov    %eax,(%esp)
c00336e2:	e8 19 33 00 00       	call   c0036a00 <__ssprint_r>
c00336e7:	85 c0                	test   %eax,%eax
c00336e9:	0f 85 61 e9 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c00336ef:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00336f5:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00336f8:	e9 f2 f3 ff ff       	jmp    c0032aef <_svfprintf_r+0xc6f>
c00336fd:	89 d0                	mov    %edx,%eax
c00336ff:	e9 d1 fa ff ff       	jmp    c00331d5 <_svfprintf_r+0x1355>
c0033704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033708:	8d 50 01             	lea    0x1(%eax),%edx
c003370b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033711:	c6 00 30             	movb   $0x30,(%eax)
c0033714:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c003371a:	39 c1                	cmp    %eax,%ecx
c003371c:	77 ea                	ja     c0033708 <_svfprintf_r+0x1888>
c003371e:	e9 fc fe ff ff       	jmp    c003361f <_svfprintf_r+0x179f>
c0033723:	8b 45 08             	mov    0x8(%ebp),%eax
c0033726:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003372d:	00 
c003372e:	89 04 24             	mov    %eax,(%esp)
c0033731:	e8 4a 1b 00 00       	call   c0035280 <_malloc_r>
c0033736:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033739:	85 c0                	test   %eax,%eax
c003373b:	89 02                	mov    %eax,(%edx)
c003373d:	89 42 10             	mov    %eax,0x10(%edx)
c0033740:	0f 84 15 06 00 00    	je     c0033d5b <_svfprintf_r+0x1edb>
c0033746:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033749:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033750:	e9 6c e7 ff ff       	jmp    c0031ec1 <_svfprintf_r+0x41>
c0033755:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003375b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003375f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033762:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033766:	8b 45 08             	mov    0x8(%ebp),%eax
c0033769:	89 04 24             	mov    %eax,(%esp)
c003376c:	e8 8f 32 00 00       	call   c0036a00 <__ssprint_r>
c0033771:	85 c0                	test   %eax,%eax
c0033773:	0f 85 d7 e8 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0033779:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003377f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033782:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033788:	e9 d9 fc ff ff       	jmp    c0033466 <_svfprintf_r+0x15e6>
c003378d:	83 c0 01             	add    $0x1,%eax
c0033790:	01 da                	add    %ebx,%edx
c0033792:	c7 07 34 9a 03 c0    	movl   $0xc0039a34,(%edi)
c0033798:	83 c7 08             	add    $0x8,%edi
c003379b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003379e:	83 f8 07             	cmp    $0x7,%eax
c00337a1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00337a7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00337ad:	7e 33                	jle    c00337e2 <_svfprintf_r+0x1962>
c00337af:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00337b5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00337b9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00337bc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00337c0:	8b 45 08             	mov    0x8(%ebp),%eax
c00337c3:	89 04 24             	mov    %eax,(%esp)
c00337c6:	e8 35 32 00 00       	call   c0036a00 <__ssprint_r>
c00337cb:	85 c0                	test   %eax,%eax
c00337cd:	0f 85 7d e8 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c00337d3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00337d9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00337dc:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00337e2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c00337e8:	83 c0 01             	add    $0x1,%eax
c00337eb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00337f1:	89 1f                	mov    %ebx,(%edi)
c00337f3:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00337f9:	01 da                	add    %ebx,%edx
c00337fb:	83 f8 07             	cmp    $0x7,%eax
c00337fe:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033801:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033807:	0f 8f 86 f5 ff ff    	jg     c0032d93 <_svfprintf_r+0xf13>
c003380d:	83 c7 08             	add    $0x8,%edi
c0033810:	89 d1                	mov    %edx,%ecx
c0033812:	e9 15 f1 ff ff       	jmp    c003292c <_svfprintf_r+0xaac>
c0033817:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003381d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033821:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033824:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033828:	8b 45 08             	mov    0x8(%ebp),%eax
c003382b:	89 04 24             	mov    %eax,(%esp)
c003382e:	e8 cd 31 00 00       	call   c0036a00 <__ssprint_r>
c0033833:	85 c0                	test   %eax,%eax
c0033835:	0f 85 15 e8 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c003383b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033841:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033844:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003384a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033850:	e9 62 fc ff ff       	jmp    c00334b7 <_svfprintf_r+0x1637>
c0033855:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c003385c:	00 00 00 
c003385f:	e9 07 fd ff ff       	jmp    c003356b <_svfprintf_r+0x16eb>
c0033864:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003386a:	89 04 24             	mov    %eax,(%esp)
c003386d:	e8 0e 31 00 00       	call   c0036980 <strlen>
c0033872:	e9 6a e8 ff ff       	jmp    c00320e1 <_svfprintf_r+0x261>
c0033877:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003387d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033881:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033884:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033888:	8b 45 08             	mov    0x8(%ebp),%eax
c003388b:	89 04 24             	mov    %eax,(%esp)
c003388e:	e8 6d 31 00 00       	call   c0036a00 <__ssprint_r>
c0033893:	85 c0                	test   %eax,%eax
c0033895:	0f 85 b5 e7 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c003389b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00338a1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338a4:	e9 76 f6 ff ff       	jmp    c0032f1f <_svfprintf_r+0x109f>
c00338a9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338af:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338b3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338b6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00338bd:	89 04 24             	mov    %eax,(%esp)
c00338c0:	e8 3b 31 00 00       	call   c0036a00 <__ssprint_r>
c00338c5:	85 c0                	test   %eax,%eax
c00338c7:	0f 85 83 e7 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c00338cd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00338d3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338d6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00338dc:	e9 f4 f8 ff ff       	jmp    c00331d5 <_svfprintf_r+0x1355>
c00338e1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338e7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338eb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00338f5:	89 04 24             	mov    %eax,(%esp)
c00338f8:	e8 03 31 00 00       	call   c0036a00 <__ssprint_r>
c00338fd:	85 c0                	test   %eax,%eax
c00338ff:	0f 85 4b e7 ff ff    	jne    c0032050 <_svfprintf_r+0x1d0>
c0033905:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c003390b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003390e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033914:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003391a:	e9 fa f8 ff ff       	jmp    c0033219 <_svfprintf_r+0x1399>
c003391f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033925:	b0 06                	mov    $0x6,%al
c0033927:	89 75 14             	mov    %esi,0x14(%ebp)
c003392a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033931:	00 00 00 
c0033934:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003393b:	00 00 00 
c003393e:	83 fa 06             	cmp    $0x6,%edx
c0033941:	0f 46 c2             	cmovbe %edx,%eax
c0033944:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c003394a:	85 c0                	test   %eax,%eax
c003394c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033952:	c7 85 28 ff ff ff c4 	movl   $0xc00398c4,-0xd8(%ebp)
c0033959:	98 03 c0 
c003395c:	0f 49 d0             	cmovns %eax,%edx
c003395f:	31 db                	xor    %ebx,%ebx
c0033961:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033967:	e9 b7 e7 ff ff       	jmp    c0032123 <_svfprintf_r+0x2a3>
c003396c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033973:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033978:	e9 9d ea ff ff       	jmp    c003241a <_svfprintf_r+0x59a>
c003397d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033982:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033988:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c003398c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033992:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033996:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c003399c:	89 44 24 14          	mov    %eax,0x14(%esp)
c00339a0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00339a6:	dd 54 24 04          	fstl   0x4(%esp)
c00339aa:	89 54 24 0c          	mov    %edx,0xc(%esp)
c00339ae:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c00339b4:	89 44 24 10          	mov    %eax,0x10(%esp)
c00339b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00339bb:	89 04 24             	mov    %eax,(%esp)
c00339be:	e8 8d 05 00 00       	call   c0033f50 <_dtoa_r>
c00339c3:	83 fb 47             	cmp    $0x47,%ebx
c00339c6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00339cc:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c00339d2:	75 09                	jne    c00339dd <_svfprintf_r+0x1b5d>
c00339d4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00339db:	74 5b                	je     c0033a38 <_svfprintf_r+0x1bb8>
c00339dd:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c00339e3:	89 f0                	mov    %esi,%eax
c00339e5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c00339eb:	01 d1                	add    %edx,%ecx
c00339ed:	84 c0                	test   %al,%al
c00339ef:	0f 84 14 fc ff ff    	je     c0033609 <_svfprintf_r+0x1789>
c00339f5:	80 3a 30             	cmpb   $0x30,(%edx)
c00339f8:	0f 84 37 02 00 00    	je     c0033c35 <_svfprintf_r+0x1db5>
c00339fe:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033a04:	01 c1                	add    %eax,%ecx
c0033a06:	e9 fe fb ff ff       	jmp    c0033609 <_svfprintf_r+0x1789>
c0033a0b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033a11:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033a17:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033a1c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033a23:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a2a:	00 00 00 
c0033a2d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033a33:	e9 e4 e6 ff ff       	jmp    c003211c <_svfprintf_r+0x29c>
c0033a38:	dd d8                	fstp   %st(0)
c0033a3a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033a40:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033a46:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033a4c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033a52:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033a58:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033a5b:	7c 48                	jl     c0033aa5 <_svfprintf_r+0x1c25>
c0033a5d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033a63:	7c 40                	jl     c0033aa5 <_svfprintf_r+0x1c25>
c0033a65:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033a6b:	e9 ea fb ff ff       	jmp    c003365a <_svfprintf_r+0x17da>
c0033a70:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033a76:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033a7d:	89 75 14             	mov    %esi,0x14(%ebp)
c0033a80:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a87:	00 00 00 
c0033a8a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033a90:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033a96:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033a9d:	00 00 00 
c0033aa0:	e9 73 e6 ff ff       	jmp    c0032118 <_svfprintf_r+0x298>
c0033aa5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033aac:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033aaf:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033ab6:	85 c9                	test   %ecx,%ecx
c0033ab8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033abe:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033ac4:	0f 88 2c 02 00 00    	js     c0033cf6 <_svfprintf_r+0x1e76>
c0033aca:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033ad1:	83 f9 09             	cmp    $0x9,%ecx
c0033ad4:	0f 8f ea 00 00 00    	jg     c0033bc4 <_svfprintf_r+0x1d44>
c0033ada:	83 c1 30             	add    $0x30,%ecx
c0033add:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033ae4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033aea:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033af0:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033af6:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033afc:	29 d0                	sub    %edx,%eax
c0033afe:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033b04:	89 da                	mov    %ebx,%edx
c0033b06:	01 c2                	add    %eax,%edx
c0033b08:	83 fb 01             	cmp    $0x1,%ebx
c0033b0b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033b11:	0f 8e 21 02 00 00    	jle    c0033d38 <_svfprintf_r+0x1eb8>
c0033b17:	31 c0                	xor    %eax,%eax
c0033b19:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033b20:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033b27:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033b2e:	00 00 00 
c0033b31:	e9 60 fb ff ff       	jmp    c0033696 <_svfprintf_r+0x1816>
c0033b36:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033b3c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b43:	00 00 00 
c0033b46:	e9 68 e4 ff ff       	jmp    c0031fb3 <_svfprintf_r+0x133>
c0033b4b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033b50:	e9 2d fe ff ff       	jmp    c0033982 <_svfprintf_r+0x1b02>
c0033b55:	d9 e0                	fchs   
c0033b57:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033b5e:	e9 38 fa ff ff       	jmp    c003359b <_svfprintf_r+0x171b>
c0033b63:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033b69:	ba 01 00 00 00       	mov    $0x1,%edx
c0033b6e:	85 c9                	test   %ecx,%ecx
c0033b70:	0f 8e 5a 01 00 00    	jle    c0033cd0 <_svfprintf_r+0x1e50>
c0033b76:	31 c0                	xor    %eax,%eax
c0033b78:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033b7e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033b85:	00 00 00 
c0033b88:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033b8e:	0f 49 c2             	cmovns %edx,%eax
c0033b91:	e9 00 fb ff ff       	jmp    c0033696 <_svfprintf_r+0x1816>
c0033b96:	85 c0                	test   %eax,%eax
c0033b98:	0f 8e 06 01 00 00    	jle    c0033ca4 <_svfprintf_r+0x1e24>
c0033b9e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033ba4:	85 f6                	test   %esi,%esi
c0033ba6:	0f 85 d4 00 00 00    	jne    c0033c80 <_svfprintf_r+0x1e00>
c0033bac:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033bb3:	0f 85 c7 00 00 00    	jne    c0033c80 <_svfprintf_r+0x1e00>
c0033bb9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033bbf:	e9 d2 fa ff ff       	jmp    c0033696 <_svfprintf_r+0x1816>
c0033bc4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033bca:	89 f3                	mov    %esi,%ebx
c0033bcc:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033bd1:	83 eb 01             	sub    $0x1,%ebx
c0033bd4:	f7 e9                	imul   %ecx
c0033bd6:	89 c8                	mov    %ecx,%eax
c0033bd8:	c1 f8 1f             	sar    $0x1f,%eax
c0033bdb:	c1 fa 02             	sar    $0x2,%edx
c0033bde:	29 c2                	sub    %eax,%edx
c0033be0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033be3:	01 c0                	add    %eax,%eax
c0033be5:	29 c1                	sub    %eax,%ecx
c0033be7:	83 fa 09             	cmp    $0x9,%edx
c0033bea:	8d 41 30             	lea    0x30(%ecx),%eax
c0033bed:	89 d1                	mov    %edx,%ecx
c0033bef:	88 03                	mov    %al,(%ebx)
c0033bf1:	7f d9                	jg     c0033bcc <_svfprintf_r+0x1d4c>
c0033bf3:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033bf6:	83 c1 30             	add    $0x30,%ecx
c0033bf9:	39 f0                	cmp    %esi,%eax
c0033bfb:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033bfe:	0f 83 6a 01 00 00    	jae    c0033d6e <_svfprintf_r+0x1eee>
c0033c04:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033c0a:	eb 07                	jmp    c0033c13 <_svfprintf_r+0x1d93>
c0033c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033c10:	0f b6 08             	movzbl (%eax),%ecx
c0033c13:	83 c0 01             	add    $0x1,%eax
c0033c16:	83 c2 01             	add    $0x1,%edx
c0033c19:	39 f0                	cmp    %esi,%eax
c0033c1b:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033c1e:	75 f0                	jne    c0033c10 <_svfprintf_r+0x1d90>
c0033c20:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033c26:	29 d8                	sub    %ebx,%eax
c0033c28:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033c2e:	01 d0                	add    %edx,%eax
c0033c30:	e9 bb fe ff ff       	jmp    c0033af0 <_svfprintf_r+0x1c70>
c0033c35:	d9 ee                	fldz   
c0033c37:	d9 c9                	fxch   %st(1)
c0033c39:	db e9                	fucomi %st(1),%st
c0033c3b:	dd d9                	fstp   %st(1)
c0033c3d:	7a 06                	jp     c0033c45 <_svfprintf_r+0x1dc5>
c0033c3f:	0f 84 b9 fd ff ff    	je     c00339fe <_svfprintf_r+0x1b7e>
c0033c45:	b8 01 00 00 00       	mov    $0x1,%eax
c0033c4a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033c50:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033c56:	01 c1                	add    %eax,%ecx
c0033c58:	e9 ac f9 ff ff       	jmp    c0033609 <_svfprintf_r+0x1789>
c0033c5d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033c63:	31 c0                	xor    %eax,%eax
c0033c65:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033c6c:	00 00 00 
c0033c6f:	83 c2 01             	add    $0x1,%edx
c0033c72:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c78:	0f 49 c2             	cmovns %edx,%eax
c0033c7b:	e9 16 fa ff ff       	jmp    c0033696 <_svfprintf_r+0x1816>
c0033c80:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033c86:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033c8c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033c90:	89 c2                	mov    %eax,%edx
c0033c92:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033c98:	31 c0                	xor    %eax,%eax
c0033c9a:	85 d2                	test   %edx,%edx
c0033c9c:	0f 49 c2             	cmovns %edx,%eax
c0033c9f:	e9 f2 f9 ff ff       	jmp    c0033696 <_svfprintf_r+0x1816>
c0033ca4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033caa:	85 db                	test   %ebx,%ebx
c0033cac:	75 2f                	jne    c0033cdd <_svfprintf_r+0x1e5d>
c0033cae:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033cb5:	75 26                	jne    c0033cdd <_svfprintf_r+0x1e5d>
c0033cb7:	b8 01 00 00 00       	mov    $0x1,%eax
c0033cbc:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033cc3:	00 00 00 
c0033cc6:	e9 cb f9 ff ff       	jmp    c0033696 <_svfprintf_r+0x1816>
c0033ccb:	90                   	nop
c0033ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033cd0:	b2 02                	mov    $0x2,%dl
c0033cd2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033cd8:	e9 99 fe ff ff       	jmp    c0033b76 <_svfprintf_r+0x1cf6>
c0033cdd:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033ce3:	31 c0                	xor    %eax,%eax
c0033ce5:	83 c2 02             	add    $0x2,%edx
c0033ce8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033cee:	0f 49 c2             	cmovns %edx,%eax
c0033cf1:	e9 a0 f9 ff ff       	jmp    c0033696 <_svfprintf_r+0x1816>
c0033cf6:	f7 d9                	neg    %ecx
c0033cf8:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033cff:	e9 cd fd ff ff       	jmp    c0033ad1 <_svfprintf_r+0x1c51>
c0033d04:	8b 55 14             	mov    0x14(%ebp),%edx
c0033d07:	8b 45 14             	mov    0x14(%ebp),%eax
c0033d0a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033d10:	8b 12                	mov    (%edx),%edx
c0033d12:	83 c0 04             	add    $0x4,%eax
c0033d15:	89 45 14             	mov    %eax,0x14(%ebp)
c0033d18:	85 d2                	test   %edx,%edx
c0033d1a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033d20:	0f 89 a9 e2 ff ff    	jns    c0031fcf <_svfprintf_r+0x14f>
c0033d26:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033d2d:	ff ff ff 
c0033d30:	89 c8                	mov    %ecx,%eax
c0033d32:	e9 76 e2 ff ff       	jmp    c0031fad <_svfprintf_r+0x12d>
c0033d37:	90                   	nop
c0033d38:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033d3e:	83 e0 01             	and    $0x1,%eax
c0033d41:	0f 85 d0 fd ff ff    	jne    c0033b17 <_svfprintf_r+0x1c97>
c0033d47:	85 d2                	test   %edx,%edx
c0033d49:	0f 49 c2             	cmovns %edx,%eax
c0033d4c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033d53:	00 00 00 
c0033d56:	e9 3b f9 ff ff       	jmp    c0033696 <_svfprintf_r+0x1816>
c0033d5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033d5e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033d64:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033d69:	e9 f5 e2 ff ff       	jmp    c0032063 <_svfprintf_r+0x1e3>
c0033d6e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033d74:	e9 77 fd ff ff       	jmp    c0033af0 <_svfprintf_r+0x1c70>
c0033d79:	66 90                	xchg   %ax,%ax
c0033d7b:	66 90                	xchg   %ax,%ax
c0033d7d:	66 90                	xchg   %ax,%ax
c0033d7f:	90                   	nop

c0033d80 <quorem>:
c0033d80:	55                   	push   %ebp
c0033d81:	89 c1                	mov    %eax,%ecx
c0033d83:	89 e5                	mov    %esp,%ebp
c0033d85:	57                   	push   %edi
c0033d86:	89 d7                	mov    %edx,%edi
c0033d88:	56                   	push   %esi
c0033d89:	53                   	push   %ebx
c0033d8a:	83 ec 3c             	sub    $0x3c,%esp
c0033d8d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033d90:	8b 42 10             	mov    0x10(%edx),%eax
c0033d93:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033d96:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033d99:	89 ca                	mov    %ecx,%edx
c0033d9b:	0f 8f 9f 01 00 00    	jg     c0033f40 <quorem+0x1c0>
c0033da1:	83 e8 01             	sub    $0x1,%eax
c0033da4:	83 c7 14             	add    $0x14,%edi
c0033da7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033daa:	c1 e0 02             	shl    $0x2,%eax
c0033dad:	83 c2 14             	add    $0x14,%edx
c0033db0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033db3:	01 d0                	add    %edx,%eax
c0033db5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033db8:	8b 13                	mov    (%ebx),%edx
c0033dba:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033dbd:	8b 00                	mov    (%eax),%eax
c0033dbf:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033dc2:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033dc5:	31 d2                	xor    %edx,%edx
c0033dc7:	f7 f1                	div    %ecx
c0033dc9:	85 c0                	test   %eax,%eax
c0033dcb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033dce:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033dd1:	0f 84 b5 00 00 00    	je     c0033e8c <quorem+0x10c>
c0033dd7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033dda:	31 f6                	xor    %esi,%esi
c0033ddc:	89 fa                	mov    %edi,%edx
c0033dde:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033de1:	89 f7                	mov    %esi,%edi
c0033de3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033dea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033df0:	83 c2 04             	add    $0x4,%edx
c0033df3:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033df6:	83 c0 04             	add    $0x4,%eax
c0033df9:	0f b7 ce             	movzwl %si,%ecx
c0033dfc:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033e00:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033e03:	c1 ee 10             	shr    $0x10,%esi
c0033e06:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033e0a:	89 cb                	mov    %ecx,%ebx
c0033e0c:	0f b7 c9             	movzwl %cx,%ecx
c0033e0f:	c1 eb 10             	shr    $0x10,%ebx
c0033e12:	29 cf                	sub    %ecx,%edi
c0033e14:	01 f3                	add    %esi,%ebx
c0033e16:	89 de                	mov    %ebx,%esi
c0033e18:	0f b7 db             	movzwl %bx,%ebx
c0033e1b:	c1 ee 10             	shr    $0x10,%esi
c0033e1e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033e21:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033e24:	0f b7 ce             	movzwl %si,%ecx
c0033e27:	01 f9                	add    %edi,%ecx
c0033e29:	c1 ee 10             	shr    $0x10,%esi
c0033e2c:	29 de                	sub    %ebx,%esi
c0033e2e:	89 cb                	mov    %ecx,%ebx
c0033e30:	c1 fb 10             	sar    $0x10,%ebx
c0033e33:	0f b7 c9             	movzwl %cx,%ecx
c0033e36:	01 de                	add    %ebx,%esi
c0033e38:	89 f7                	mov    %esi,%edi
c0033e3a:	c1 e6 10             	shl    $0x10,%esi
c0033e3d:	09 ce                	or     %ecx,%esi
c0033e3f:	c1 ff 10             	sar    $0x10,%edi
c0033e42:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033e45:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033e48:	73 a6                	jae    c0033df0 <quorem+0x70>
c0033e4a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033e4d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033e50:	8b 10                	mov    (%eax),%edx
c0033e52:	85 d2                	test   %edx,%edx
c0033e54:	75 36                	jne    c0033e8c <quorem+0x10c>
c0033e56:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033e59:	89 c2                	mov    %eax,%edx
c0033e5b:	83 e8 04             	sub    $0x4,%eax
c0033e5e:	39 c1                	cmp    %eax,%ecx
c0033e60:	73 21                	jae    c0033e83 <quorem+0x103>
c0033e62:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033e65:	85 f6                	test   %esi,%esi
c0033e67:	75 1a                	jne    c0033e83 <quorem+0x103>
c0033e69:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033e6c:	eb 08                	jmp    c0033e76 <quorem+0xf6>
c0033e6e:	66 90                	xchg   %ax,%ax
c0033e70:	8b 18                	mov    (%eax),%ebx
c0033e72:	85 db                	test   %ebx,%ebx
c0033e74:	75 0a                	jne    c0033e80 <quorem+0x100>
c0033e76:	83 e8 04             	sub    $0x4,%eax
c0033e79:	83 ea 01             	sub    $0x1,%edx
c0033e7c:	39 c1                	cmp    %eax,%ecx
c0033e7e:	72 f0                	jb     c0033e70 <quorem+0xf0>
c0033e80:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033e83:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033e86:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033e89:	89 50 10             	mov    %edx,0x10(%eax)
c0033e8c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c0033e8f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033e93:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033e96:	89 04 24             	mov    %eax,(%esp)
c0033e99:	e8 a2 23 00 00       	call   c0036240 <__mcmp>
c0033e9e:	85 c0                	test   %eax,%eax
c0033ea0:	0f 88 8e 00 00 00    	js     c0033f34 <quorem+0x1b4>
c0033ea6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0033ea9:	31 f6                	xor    %esi,%esi
c0033eab:	83 c0 01             	add    $0x1,%eax
c0033eae:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033eb1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033eb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033eb8:	83 c7 04             	add    $0x4,%edi
c0033ebb:	8b 4f fc             	mov    -0x4(%edi),%ecx
c0033ebe:	83 c0 04             	add    $0x4,%eax
c0033ec1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0033ec4:	0f b7 d1             	movzwl %cx,%edx
c0033ec7:	29 d6                	sub    %edx,%esi
c0033ec9:	0f b7 d3             	movzwl %bx,%edx
c0033ecc:	01 f2                	add    %esi,%edx
c0033ece:	c1 e9 10             	shr    $0x10,%ecx
c0033ed1:	c1 eb 10             	shr    $0x10,%ebx
c0033ed4:	29 cb                	sub    %ecx,%ebx
c0033ed6:	89 d1                	mov    %edx,%ecx
c0033ed8:	c1 f9 10             	sar    $0x10,%ecx
c0033edb:	0f b7 d2             	movzwl %dx,%edx
c0033ede:	01 cb                	add    %ecx,%ebx
c0033ee0:	89 de                	mov    %ebx,%esi
c0033ee2:	c1 e3 10             	shl    $0x10,%ebx
c0033ee5:	09 d3                	or     %edx,%ebx
c0033ee7:	c1 fe 10             	sar    $0x10,%esi
c0033eea:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c0033eed:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0033ef0:	73 c6                	jae    c0033eb8 <quorem+0x138>
c0033ef2:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033ef5:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0033ef8:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c0033efb:	8b 02                	mov    (%edx),%eax
c0033efd:	85 c0                	test   %eax,%eax
c0033eff:	75 33                	jne    c0033f34 <quorem+0x1b4>
c0033f01:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033f04:	8d 42 fc             	lea    -0x4(%edx),%eax
c0033f07:	39 c1                	cmp    %eax,%ecx
c0033f09:	73 20                	jae    c0033f2b <quorem+0x1ab>
c0033f0b:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f0e:	85 f6                	test   %esi,%esi
c0033f10:	75 19                	jne    c0033f2b <quorem+0x1ab>
c0033f12:	89 fa                	mov    %edi,%edx
c0033f14:	eb 08                	jmp    c0033f1e <quorem+0x19e>
c0033f16:	66 90                	xchg   %ax,%ax
c0033f18:	8b 18                	mov    (%eax),%ebx
c0033f1a:	85 db                	test   %ebx,%ebx
c0033f1c:	75 0a                	jne    c0033f28 <quorem+0x1a8>
c0033f1e:	83 e8 04             	sub    $0x4,%eax
c0033f21:	83 ea 01             	sub    $0x1,%edx
c0033f24:	39 c1                	cmp    %eax,%ecx
c0033f26:	72 f0                	jb     c0033f18 <quorem+0x198>
c0033f28:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033f2b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033f2e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0033f31:	89 78 10             	mov    %edi,0x10(%eax)
c0033f34:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0033f37:	83 c4 3c             	add    $0x3c,%esp
c0033f3a:	5b                   	pop    %ebx
c0033f3b:	5e                   	pop    %esi
c0033f3c:	5f                   	pop    %edi
c0033f3d:	5d                   	pop    %ebp
c0033f3e:	c3                   	ret    
c0033f3f:	90                   	nop
c0033f40:	83 c4 3c             	add    $0x3c,%esp
c0033f43:	31 c0                	xor    %eax,%eax
c0033f45:	5b                   	pop    %ebx
c0033f46:	5e                   	pop    %esi
c0033f47:	5f                   	pop    %edi
c0033f48:	5d                   	pop    %ebp
c0033f49:	c3                   	ret    
c0033f4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0033f50 <_dtoa_r>:
c0033f50:	55                   	push   %ebp
c0033f51:	89 e5                	mov    %esp,%ebp
c0033f53:	57                   	push   %edi
c0033f54:	56                   	push   %esi
c0033f55:	53                   	push   %ebx
c0033f56:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c0033f5c:	8b 75 08             	mov    0x8(%ebp),%esi
c0033f5f:	dd 45 0c             	fldl   0xc(%ebp)
c0033f62:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0033f65:	dd 5d c0             	fstpl  -0x40(%ebp)
c0033f68:	8b 46 40             	mov    0x40(%esi),%eax
c0033f6b:	85 c0                	test   %eax,%eax
c0033f6d:	74 23                	je     c0033f92 <_dtoa_r+0x42>
c0033f6f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0033f72:	ba 01 00 00 00       	mov    $0x1,%edx
c0033f77:	d3 e2                	shl    %cl,%edx
c0033f79:	89 48 04             	mov    %ecx,0x4(%eax)
c0033f7c:	89 50 08             	mov    %edx,0x8(%eax)
c0033f7f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033f83:	89 34 24             	mov    %esi,(%esp)
c0033f86:	e8 95 1b 00 00       	call   c0035b20 <_Bfree>
c0033f8b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0033f92:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0033f95:	85 ff                	test   %edi,%edi
c0033f97:	0f 88 3b 02 00 00    	js     c00341d8 <_dtoa_r+0x288>
c0033f9d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0033fa3:	89 f8                	mov    %edi,%eax
c0033fa5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c0033faa:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c0033faf:	0f 84 e3 01 00 00    	je     c0034198 <_dtoa_r+0x248>
c0033fb5:	dd 45 c0             	fldl   -0x40(%ebp)
c0033fb8:	d9 ee                	fldz   
c0033fba:	d9 c9                	fxch   %st(1)
c0033fbc:	db e9                	fucomi %st(1),%st
c0033fbe:	dd d9                	fstp   %st(1)
c0033fc0:	7a 36                	jp     c0033ff8 <_dtoa_r+0xa8>
c0033fc2:	75 34                	jne    c0033ff8 <_dtoa_r+0xa8>
c0033fc4:	dd d8                	fstp   %st(0)
c0033fc6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0033fc9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c0033fcc:	85 c9                	test   %ecx,%ecx
c0033fce:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0033fd4:	0f 84 4e 02 00 00    	je     c0034228 <_dtoa_r+0x2d8>
c0033fda:	8b 45 24             	mov    0x24(%ebp),%eax
c0033fdd:	c7 00 cc 98 03 c0    	movl   $0xc00398cc,(%eax)
c0033fe3:	b8 cb 98 03 c0       	mov    $0xc00398cb,%eax
c0033fe8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0033fee:	5b                   	pop    %ebx
c0033fef:	5e                   	pop    %esi
c0033ff0:	5f                   	pop    %edi
c0033ff1:	5d                   	pop    %ebp
c0033ff2:	c3                   	ret    
c0033ff3:	90                   	nop
c0033ff4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033ff8:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0033ffb:	89 fb                	mov    %edi,%ebx
c0033ffd:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034001:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0034004:	dd 54 24 04          	fstl   0x4(%esp)
c0034008:	89 44 24 0c          	mov    %eax,0xc(%esp)
c003400c:	dd 5d b8             	fstpl  -0x48(%ebp)
c003400f:	89 34 24             	mov    %esi,(%esp)
c0034012:	c1 eb 14             	shr    $0x14,%ebx
c0034015:	e8 76 25 00 00       	call   c0036590 <__d2b>
c003401a:	85 db                	test   %ebx,%ebx
c003401c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003401f:	0f 85 db 01 00 00    	jne    c0034200 <_dtoa_r+0x2b0>
c0034025:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034028:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003402b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003402e:	01 c3                	add    %eax,%ebx
c0034030:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034036:	0f 8c ec 07 00 00    	jl     c0034828 <_dtoa_r+0x8d8>
c003403c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003403f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034044:	89 f8                	mov    %edi,%eax
c0034046:	29 d9                	sub    %ebx,%ecx
c0034048:	d3 e0                	shl    %cl,%eax
c003404a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034050:	d3 ea                	shr    %cl,%edx
c0034052:	09 d0                	or     %edx,%eax
c0034054:	31 d2                	xor    %edx,%edx
c0034056:	83 eb 01             	sub    $0x1,%ebx
c0034059:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003405c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003405f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034062:	df 6d c8             	fildll -0x38(%ebp)
c0034065:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034068:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003406f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034076:	dd 45 b8             	fldl   -0x48(%ebp)
c0034079:	d8 25 64 9a 03 c0    	fsubs  0xc0039a64
c003407f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034082:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034085:	dc 0d 80 9a 03 c0    	fmull  0xc0039a80
c003408b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003408f:	b4 0c                	mov    $0xc,%ah
c0034091:	dc 05 88 9a 03 c0    	faddl  0xc0039a88
c0034097:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003409b:	db 45 d4             	fildl  -0x2c(%ebp)
c003409e:	dc 0d 90 9a 03 c0    	fmull  0xc0039a90
c00340a4:	de c1                	faddp  %st,%st(1)
c00340a6:	d9 6d d0             	fldcw  -0x30(%ebp)
c00340a9:	db 55 b8             	fistl  -0x48(%ebp)
c00340ac:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00340af:	d9 ee                	fldz   
c00340b1:	df e9                	fucomip %st(1),%st
c00340b3:	0f 87 27 07 00 00    	ja     c00347e0 <_dtoa_r+0x890>
c00340b9:	dd d8                	fstp   %st(0)
c00340bb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c00340bf:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c00340c6:	77 24                	ja     c00340ec <_dtoa_r+0x19c>
c00340c8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00340cb:	dd 04 c5 40 9b 03 c0 	fldl   -0x3ffc64c0(,%eax,8)
c00340d2:	dd 45 c0             	fldl   -0x40(%ebp)
c00340d5:	d9 c9                	fxch   %st(1)
c00340d7:	df e9                	fucomip %st(1),%st
c00340d9:	dd d8                	fstp   %st(0)
c00340db:	0f 86 5f 07 00 00    	jbe    c0034840 <_dtoa_r+0x8f0>
c00340e1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00340e5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00340ec:	89 d0                	mov    %edx,%eax
c00340ee:	29 d8                	sub    %ebx,%eax
c00340f0:	83 e8 01             	sub    $0x1,%eax
c00340f3:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c00340fa:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00340fd:	0f 88 0d 07 00 00    	js     c0034810 <_dtoa_r+0x8c0>
c0034103:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034106:	85 c0                	test   %eax,%eax
c0034108:	0f 88 ea 06 00 00    	js     c00347f8 <_dtoa_r+0x8a8>
c003410e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034111:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034114:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003411b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003411f:	0f 87 0b 03 00 00    	ja     c0034430 <_dtoa_r+0x4e0>
c0034125:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034129:	0f 8e 23 10 00 00    	jle    c0035152 <_dtoa_r+0x1202>
c003412f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034133:	31 c0                	xor    %eax,%eax
c0034135:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034139:	0f 84 43 0d 00 00    	je     c0034e82 <_dtoa_r+0xf32>
c003413f:	0f 8e f3 00 00 00    	jle    c0034238 <_dtoa_r+0x2e8>
c0034145:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034149:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034150:	0f 84 f3 00 00 00    	je     c0034249 <_dtoa_r+0x2f9>
c0034156:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003415a:	0f 85 d7 02 00 00    	jne    c0034437 <_dtoa_r+0x4e7>
c0034160:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034163:	03 5d 18             	add    0x18(%ebp),%ebx
c0034166:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034169:	83 c3 01             	add    $0x1,%ebx
c003416c:	83 fb 0e             	cmp    $0xe,%ebx
c003416f:	0f 96 c2             	setbe  %dl
c0034172:	85 db                	test   %ebx,%ebx
c0034174:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034177:	0f 8e a7 08 00 00    	jle    c0034a24 <_dtoa_r+0xad4>
c003417d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034180:	83 fb 0e             	cmp    $0xe,%ebx
c0034183:	89 df                	mov    %ebx,%edi
c0034185:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034189:	20 45 b4             	and    %al,-0x4c(%ebp)
c003418c:	e9 d6 00 00 00       	jmp    c0034267 <_dtoa_r+0x317>
c0034191:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034198:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003419b:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003419e:	85 d2                	test   %edx,%edx
c00341a0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c00341a6:	b8 5d 9a 03 c0       	mov    $0xc0039a5d,%eax
c00341ab:	74 43                	je     c00341f0 <_dtoa_r+0x2a0>
c00341ad:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00341b0:	85 db                	test   %ebx,%ebx
c00341b2:	0f 84 30 fe ff ff    	je     c0033fe8 <_dtoa_r+0x98>
c00341b8:	8b 75 24             	mov    0x24(%ebp),%esi
c00341bb:	8d 50 08             	lea    0x8(%eax),%edx
c00341be:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c00341c2:	8d 48 03             	lea    0x3(%eax),%ecx
c00341c5:	0f 44 d1             	cmove  %ecx,%edx
c00341c8:	89 16                	mov    %edx,(%esi)
c00341ca:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00341d0:	5b                   	pop    %ebx
c00341d1:	5e                   	pop    %esi
c00341d2:	5f                   	pop    %edi
c00341d3:	5d                   	pop    %ebp
c00341d4:	c3                   	ret    
c00341d5:	8d 76 00             	lea    0x0(%esi),%esi
c00341d8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c00341de:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c00341e4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c00341e7:	e9 b7 fd ff ff       	jmp    c0033fa3 <_dtoa_r+0x53>
c00341ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00341f0:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c00341f6:	ba 54 9a 03 c0       	mov    $0xc0039a54,%edx
c00341fb:	0f 44 c2             	cmove  %edx,%eax
c00341fe:	eb ad                	jmp    c00341ad <_dtoa_r+0x25d>
c0034200:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034203:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034209:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003420c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034213:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034218:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003421d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034220:	e9 51 fe ff ff       	jmp    c0034076 <_dtoa_r+0x126>
c0034225:	8d 76 00             	lea    0x0(%esi),%esi
c0034228:	b8 cb 98 03 c0       	mov    $0xc00398cb,%eax
c003422d:	e9 b6 fd ff ff       	jmp    c0033fe8 <_dtoa_r+0x98>
c0034232:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034238:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003423c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034243:	0f 85 ee 01 00 00    	jne    c0034437 <_dtoa_r+0x4e7>
c0034249:	8b 55 18             	mov    0x18(%ebp),%edx
c003424c:	85 d2                	test   %edx,%edx
c003424e:	0f 8e b6 07 00 00    	jle    c0034a0a <_dtoa_r+0xaba>
c0034254:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034257:	83 ff 0e             	cmp    $0xe,%edi
c003425a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003425e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034261:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034264:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034267:	83 ff 17             	cmp    $0x17,%edi
c003426a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034271:	0f 86 e5 0e 00 00    	jbe    c003515c <_dtoa_r+0x120c>
c0034277:	b9 01 00 00 00       	mov    $0x1,%ecx
c003427c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034281:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034288:	01 c0                	add    %eax,%eax
c003428a:	89 ca                	mov    %ecx,%edx
c003428c:	8d 58 14             	lea    0x14(%eax),%ebx
c003428f:	39 fb                	cmp    %edi,%ebx
c0034291:	8d 49 01             	lea    0x1(%ecx),%ecx
c0034294:	76 f2                	jbe    c0034288 <_dtoa_r+0x338>
c0034296:	89 56 44             	mov    %edx,0x44(%esi)
c0034299:	89 54 24 04          	mov    %edx,0x4(%esp)
c003429d:	89 34 24             	mov    %esi,(%esp)
c00342a0:	e8 db 17 00 00       	call   c0035a80 <_Balloc>
c00342a5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c00342a9:	89 c7                	mov    %eax,%edi
c00342ab:	89 46 40             	mov    %eax,0x40(%esi)
c00342ae:	0f 84 bb 01 00 00    	je     c003446f <_dtoa_r+0x51f>
c00342b4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00342b7:	dd 45 c0             	fldl   -0x40(%ebp)
c00342ba:	85 db                	test   %ebx,%ebx
c00342bc:	0f 8e de 07 00 00    	jle    c0034aa0 <_dtoa_r+0xb50>
c00342c2:	89 d8                	mov    %ebx,%eax
c00342c4:	83 e0 0f             	and    $0xf,%eax
c00342c7:	dd 04 c5 40 9b 03 c0 	fldl   -0x3ffc64c0(,%eax,8)
c00342ce:	89 d8                	mov    %ebx,%eax
c00342d0:	c1 f8 04             	sar    $0x4,%eax
c00342d3:	a8 10                	test   $0x10,%al
c00342d5:	0f 84 cd 05 00 00    	je     c00348a8 <_dtoa_r+0x958>
c00342db:	dd 05 20 9b 03 c0    	fldl   0xc0039b20
c00342e1:	83 e0 0f             	and    $0xf,%eax
c00342e4:	b9 03 00 00 00       	mov    $0x3,%ecx
c00342e9:	d8 fa                	fdivr  %st(2),%st
c00342eb:	85 c0                	test   %eax,%eax
c00342ed:	74 22                	je     c0034311 <_dtoa_r+0x3c1>
c00342ef:	31 d2                	xor    %edx,%edx
c00342f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00342f8:	a8 01                	test   $0x1,%al
c00342fa:	74 0e                	je     c003430a <_dtoa_r+0x3ba>
c00342fc:	d9 c9                	fxch   %st(1)
c00342fe:	dc 0c d5 00 9b 03 c0 	fmull  -0x3ffc6500(,%edx,8)
c0034305:	d9 c9                	fxch   %st(1)
c0034307:	83 c1 01             	add    $0x1,%ecx
c003430a:	83 c2 01             	add    $0x1,%edx
c003430d:	d1 f8                	sar    %eax
c003430f:	75 e7                	jne    c00342f8 <_dtoa_r+0x3a8>
c0034311:	de f1                	fdivp  %st,%st(1)
c0034313:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034316:	85 c0                	test   %eax,%eax
c0034318:	74 0a                	je     c0034324 <_dtoa_r+0x3d4>
c003431a:	d9 e8                	fld1   
c003431c:	df e9                	fucomip %st(1),%st
c003431e:	0f 87 92 0b 00 00    	ja     c0034eb6 <_dtoa_r+0xf66>
c0034324:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034327:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003432a:	db 45 d4             	fildl  -0x2c(%ebp)
c003432d:	d8 c9                	fmul   %st(1),%st
c003432f:	d8 05 70 9a 03 c0    	fadds  0xc0039a70
c0034335:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034338:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003433f:	85 c0                	test   %eax,%eax
c0034341:	0f 84 89 05 00 00    	je     c00348d0 <_dtoa_r+0x980>
c0034347:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003434a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003434d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034350:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034353:	85 c0                	test   %eax,%eax
c0034355:	0f 84 b5 07 00 00    	je     c0034b10 <_dtoa_r+0xbc0>
c003435b:	d9 05 78 9a 03 c0    	flds   0xc0039a78
c0034361:	8d 57 01             	lea    0x1(%edi),%edx
c0034364:	dc 34 cd 38 9b 03 c0 	fdivl  -0x3ffc64c8(,%ecx,8)
c003436b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003436e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034372:	b4 0c                	mov    $0xc,%ah
c0034374:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034378:	dc 65 c0             	fsubl  -0x40(%ebp)
c003437b:	d9 c9                	fxch   %st(1)
c003437d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034380:	db 55 d4             	fistl  -0x2c(%ebp)
c0034383:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034386:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034389:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003438c:	83 c0 30             	add    $0x30,%eax
c003438f:	db 45 d4             	fildl  -0x2c(%ebp)
c0034392:	de e9                	fsubrp %st,%st(1)
c0034394:	d9 c9                	fxch   %st(1)
c0034396:	88 07                	mov    %al,(%edi)
c0034398:	db e9                	fucomi %st(1),%st
c003439a:	77 7f                	ja     c003441b <_dtoa_r+0x4cb>
c003439c:	d9 c1                	fld    %st(1)
c003439e:	d8 2d 68 9a 03 c0    	fsubrs 0xc0039a68
c00343a4:	d9 c9                	fxch   %st(1)
c00343a6:	db e9                	fucomi %st(1),%st
c00343a8:	dd d9                	fstp   %st(1)
c00343aa:	0f 87 33 0c 00 00    	ja     c0034fe3 <_dtoa_r+0x1093>
c00343b0:	83 f9 01             	cmp    $0x1,%ecx
c00343b3:	0f 8e c4 06 00 00    	jle    c0034a7d <_dtoa_r+0xb2d>
c00343b9:	01 f9                	add    %edi,%ecx
c00343bb:	d9 05 6c 9a 03 c0    	flds   0xc0039a6c
c00343c1:	eb 25                	jmp    c00343e8 <_dtoa_r+0x498>
c00343c3:	90                   	nop
c00343c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00343c8:	d9 c1                	fld    %st(1)
c00343ca:	d8 2d 68 9a 03 c0    	fsubrs 0xc0039a68
c00343d0:	d9 c9                	fxch   %st(1)
c00343d2:	db e9                	fucomi %st(1),%st
c00343d4:	dd d9                	fstp   %st(1)
c00343d6:	0f 87 14 0c 00 00    	ja     c0034ff0 <_dtoa_r+0x10a0>
c00343dc:	39 ca                	cmp    %ecx,%edx
c00343de:	0f 84 a4 06 00 00    	je     c0034a88 <_dtoa_r+0xb38>
c00343e4:	d9 c9                	fxch   %st(1)
c00343e6:	d9 ca                	fxch   %st(2)
c00343e8:	dc c9                	fmul   %st,%st(1)
c00343ea:	83 c2 01             	add    $0x1,%edx
c00343ed:	dc ca                	fmul   %st,%st(2)
c00343ef:	d9 ca                	fxch   %st(2)
c00343f1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00343f4:	db 55 d4             	fistl  -0x2c(%ebp)
c00343f7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00343fa:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00343fd:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034400:	83 c0 30             	add    $0x30,%eax
c0034403:	db 45 d4             	fildl  -0x2c(%ebp)
c0034406:	de e9                	fsubrp %st,%st(1)
c0034408:	d9 c9                	fxch   %st(1)
c003440a:	88 42 ff             	mov    %al,-0x1(%edx)
c003440d:	db e9                	fucomi %st(1),%st
c003440f:	76 b7                	jbe    c00343c8 <_dtoa_r+0x478>
c0034411:	dd d8                	fstp   %st(0)
c0034413:	dd d8                	fstp   %st(0)
c0034415:	dd d8                	fstp   %st(0)
c0034417:	dd d8                	fstp   %st(0)
c0034419:	eb 06                	jmp    c0034421 <_dtoa_r+0x4d1>
c003441b:	dd d8                	fstp   %st(0)
c003441d:	dd d8                	fstp   %st(0)
c003441f:	dd d8                	fstp   %st(0)
c0034421:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034424:	89 fb                	mov    %edi,%ebx
c0034426:	89 d7                	mov    %edx,%edi
c0034428:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003442b:	e9 70 03 00 00       	jmp    c00347a0 <_dtoa_r+0x850>
c0034430:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034437:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003443e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034445:	00 
c0034446:	89 34 24             	mov    %esi,(%esp)
c0034449:	e8 32 16 00 00       	call   c0035a80 <_Balloc>
c003444e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034455:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003445c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034463:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003446a:	89 c7                	mov    %eax,%edi
c003446c:	89 46 40             	mov    %eax,0x40(%esi)
c003446f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034472:	85 c0                	test   %eax,%eax
c0034474:	0f 88 2e 01 00 00    	js     c00345a8 <_dtoa_r+0x658>
c003447a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c003447e:	0f 8f 24 01 00 00    	jg     c00345a8 <_dtoa_r+0x658>
c0034484:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034487:	dd 04 c5 40 9b 03 c0 	fldl   -0x3ffc64c0(,%eax,8)
c003448e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034491:	85 c0                	test   %eax,%eax
c0034493:	7f 0e                	jg     c00344a3 <_dtoa_r+0x553>
c0034495:	8b 45 18             	mov    0x18(%ebp),%eax
c0034498:	c1 e8 1f             	shr    $0x1f,%eax
c003449b:	84 c0                	test   %al,%al
c003449d:	0f 85 9d 07 00 00    	jne    c0034c40 <_dtoa_r+0xcf0>
c00344a3:	dd 45 c0             	fldl   -0x40(%ebp)
c00344a6:	d9 c0                	fld    %st(0)
c00344a8:	d8 f2                	fdiv   %st(2),%st
c00344aa:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00344ad:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c00344b1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00344b5:	b4 0c                	mov    $0xc,%ah
c00344b7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00344bb:	8d 47 01             	lea    0x1(%edi),%eax
c00344be:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00344c1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00344c4:	db 5d d4             	fistpl -0x2c(%ebp)
c00344c7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00344ca:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00344cd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00344d0:	8d 42 30             	lea    0x30(%edx),%eax
c00344d3:	db 45 d4             	fildl  -0x2c(%ebp)
c00344d6:	d8 ca                	fmul   %st(2),%st
c00344d8:	88 07                	mov    %al,(%edi)
c00344da:	de e9                	fsubrp %st,%st(1)
c00344dc:	74 66                	je     c0034544 <_dtoa_r+0x5f4>
c00344de:	d8 0d 6c 9a 03 c0    	fmuls  0xc0039a6c
c00344e4:	d9 ee                	fldz   
c00344e6:	d9 c9                	fxch   %st(1)
c00344e8:	db e9                	fucomi %st(1),%st
c00344ea:	dd d9                	fstp   %st(1)
c00344ec:	0f 8b 33 0c 00 00    	jnp    c0035125 <_dtoa_r+0x11d5>
c00344f2:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00344f5:	8d 47 02             	lea    0x2(%edi),%eax
c00344f8:	d9 05 6c 9a 03 c0    	flds   0xc0039a6c
c00344fe:	01 fb                	add    %edi,%ebx
c0034500:	eb 19                	jmp    c003451b <_dtoa_r+0x5cb>
c0034502:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034508:	dc c9                	fmul   %st,%st(1)
c003450a:	83 c0 01             	add    $0x1,%eax
c003450d:	d9 ee                	fldz   
c003450f:	d9 ca                	fxch   %st(2)
c0034511:	db ea                	fucomi %st(2),%st
c0034513:	dd da                	fstp   %st(2)
c0034515:	0f 8b 73 09 00 00    	jnp    c0034e8e <_dtoa_r+0xf3e>
c003451b:	d9 c1                	fld    %st(1)
c003451d:	39 d8                	cmp    %ebx,%eax
c003451f:	d8 f3                	fdiv   %st(3),%st
c0034521:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034524:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034527:	db 5d d4             	fistpl -0x2c(%ebp)
c003452a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003452d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034530:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034533:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034536:	db 45 d4             	fildl  -0x2c(%ebp)
c0034539:	d8 cb                	fmul   %st(3),%st
c003453b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003453e:	de ea                	fsubrp %st,%st(2)
c0034540:	75 c6                	jne    c0034508 <_dtoa_r+0x5b8>
c0034542:	dd d8                	fstp   %st(0)
c0034544:	d8 c0                	fadd   %st(0),%st
c0034546:	db e9                	fucomi %st(1),%st
c0034548:	77 1e                	ja     c0034568 <_dtoa_r+0x618>
c003454a:	d9 c9                	fxch   %st(1)
c003454c:	df e9                	fucomip %st(1),%st
c003454e:	dd d8                	fstp   %st(0)
c0034550:	0f 8a 44 09 00 00    	jp     c0034e9a <_dtoa_r+0xf4a>
c0034556:	0f 85 3e 09 00 00    	jne    c0034e9a <_dtoa_r+0xf4a>
c003455c:	83 e2 01             	and    $0x1,%edx
c003455f:	90                   	nop
c0034560:	0f 84 34 09 00 00    	je     c0034e9a <_dtoa_r+0xf4a>
c0034566:	eb 04                	jmp    c003456c <_dtoa_r+0x61c>
c0034568:	dd d8                	fstp   %st(0)
c003456a:	dd d8                	fstp   %st(0)
c003456c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c003456f:	89 fb                	mov    %edi,%ebx
c0034571:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034575:	89 cf                	mov    %ecx,%edi
c0034577:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c003457a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c003457d:	eb 0f                	jmp    c003458e <_dtoa_r+0x63e>
c003457f:	90                   	nop
c0034580:	39 d3                	cmp    %edx,%ebx
c0034582:	0f 84 75 09 00 00    	je     c0034efd <_dtoa_r+0xfad>
c0034588:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c003458c:	89 d7                	mov    %edx,%edi
c003458e:	3c 39                	cmp    $0x39,%al
c0034590:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034593:	74 eb                	je     c0034580 <_dtoa_r+0x630>
c0034595:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034598:	83 c0 01             	add    $0x1,%eax
c003459b:	88 02                	mov    %al,(%edx)
c003459d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c00345a0:	e9 fb 01 00 00       	jmp    c00347a0 <_dtoa_r+0x850>
c00345a5:	8d 76 00             	lea    0x0(%esi),%esi
c00345a8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00345ab:	85 c9                	test   %ecx,%ecx
c00345ad:	0f 85 9d 02 00 00    	jne    c0034850 <_dtoa_r+0x900>
c00345b3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00345b6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00345b9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00345c0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00345c3:	85 c0                	test   %eax,%eax
c00345c5:	7e 14                	jle    c00345db <_dtoa_r+0x68b>
c00345c7:	85 db                	test   %ebx,%ebx
c00345c9:	7e 10                	jle    c00345db <_dtoa_r+0x68b>
c00345cb:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00345ce:	39 d8                	cmp    %ebx,%eax
c00345d0:	0f 4f c3             	cmovg  %ebx,%eax
c00345d3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00345d6:	29 c3                	sub    %eax,%ebx
c00345d8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c00345db:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00345de:	85 c0                	test   %eax,%eax
c00345e0:	7e 61                	jle    c0034643 <_dtoa_r+0x6f3>
c00345e2:	8b 45 98             	mov    -0x68(%ebp),%eax
c00345e5:	85 c0                	test   %eax,%eax
c00345e7:	0f 84 72 04 00 00    	je     c0034a5f <_dtoa_r+0xb0f>
c00345ed:	85 d2                	test   %edx,%edx
c00345ef:	7e 47                	jle    c0034638 <_dtoa_r+0x6e8>
c00345f1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00345f4:	89 54 24 08          	mov    %edx,0x8(%esp)
c00345f8:	89 34 24             	mov    %esi,(%esp)
c00345fb:	89 55 88             	mov    %edx,-0x78(%ebp)
c00345fe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034602:	e8 f9 19 00 00       	call   c0036000 <__pow5mult>
c0034607:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c003460a:	89 34 24             	mov    %esi,(%esp)
c003460d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034611:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034615:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034618:	e8 13 18 00 00       	call   c0035e30 <__multiply>
c003461d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034620:	89 34 24             	mov    %esi,(%esp)
c0034623:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034627:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003462a:	e8 f1 14 00 00       	call   c0035b20 <_Bfree>
c003462f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034632:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034635:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034638:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003463b:	29 d0                	sub    %edx,%eax
c003463d:	0f 85 1f 04 00 00    	jne    c0034a62 <_dtoa_r+0xb12>
c0034643:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003464a:	00 
c003464b:	89 34 24             	mov    %esi,(%esp)
c003464e:	e8 ad 17 00 00       	call   c0035e00 <__i2b>
c0034653:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034656:	85 c9                	test   %ecx,%ecx
c0034658:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003465b:	7e 13                	jle    c0034670 <_dtoa_r+0x720>
c003465d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034661:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034665:	89 34 24             	mov    %esi,(%esp)
c0034668:	e8 93 19 00 00       	call   c0036000 <__pow5mult>
c003466d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034670:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034674:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c003467b:	0f 8e f7 05 00 00    	jle    c0034c78 <_dtoa_r+0xd28>
c0034681:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034684:	ba 01 00 00 00       	mov    $0x1,%edx
c0034689:	85 c0                	test   %eax,%eax
c003468b:	0f 85 27 05 00 00    	jne    c0034bb8 <_dtoa_r+0xc68>
c0034691:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034694:	01 d0                	add    %edx,%eax
c0034696:	83 e0 1f             	and    $0x1f,%eax
c0034699:	89 c2                	mov    %eax,%edx
c003469b:	0f 84 57 03 00 00    	je     c00349f8 <_dtoa_r+0xaa8>
c00346a1:	b8 20 00 00 00       	mov    $0x20,%eax
c00346a6:	29 d0                	sub    %edx,%eax
c00346a8:	83 f8 04             	cmp    $0x4,%eax
c00346ab:	0f 8e 8c 0a 00 00    	jle    c003513d <_dtoa_r+0x11ed>
c00346b1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c00346b6:	29 d0                	sub    %edx,%eax
c00346b8:	01 45 a0             	add    %eax,-0x60(%ebp)
c00346bb:	01 c3                	add    %eax,%ebx
c00346bd:	01 45 ac             	add    %eax,-0x54(%ebp)
c00346c0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c00346c3:	85 c0                	test   %eax,%eax
c00346c5:	7e 16                	jle    c00346dd <_dtoa_r+0x78d>
c00346c7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00346cb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00346ce:	89 34 24             	mov    %esi,(%esp)
c00346d1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00346d5:	e8 46 1a 00 00       	call   c0036120 <__lshift>
c00346da:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00346dd:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346e0:	85 c0                	test   %eax,%eax
c00346e2:	7e 16                	jle    c00346fa <_dtoa_r+0x7aa>
c00346e4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00346e8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00346eb:	89 34 24             	mov    %esi,(%esp)
c00346ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c00346f2:	e8 29 1a 00 00       	call   c0036120 <__lshift>
c00346f7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00346fa:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00346fd:	85 c0                	test   %eax,%eax
c00346ff:	0f 85 d3 04 00 00    	jne    c0034bd8 <_dtoa_r+0xc88>
c0034705:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034709:	0f 8e 11 02 00 00    	jle    c0034920 <_dtoa_r+0x9d0>
c003470f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034712:	85 c0                	test   %eax,%eax
c0034714:	0f 8f 06 02 00 00    	jg     c0034920 <_dtoa_r+0x9d0>
c003471a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003471d:	85 c0                	test   %eax,%eax
c003471f:	0f 85 e0 01 00 00    	jne    c0034905 <_dtoa_r+0x9b5>
c0034725:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034728:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003472f:	00 
c0034730:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034737:	00 
c0034738:	89 34 24             	mov    %esi,(%esp)
c003473b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003473f:	e8 fc 13 00 00       	call   c0035b40 <__multadd>
c0034744:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034747:	89 44 24 04          	mov    %eax,0x4(%esp)
c003474b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003474e:	89 04 24             	mov    %eax,(%esp)
c0034751:	e8 ea 1a 00 00       	call   c0036240 <__mcmp>
c0034756:	85 c0                	test   %eax,%eax
c0034758:	0f 8e a7 01 00 00    	jle    c0034905 <_dtoa_r+0x9b5>
c003475e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034762:	89 fb                	mov    %edi,%ebx
c0034764:	83 c7 01             	add    $0x1,%edi
c0034767:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003476b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034772:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034775:	89 34 24             	mov    %esi,(%esp)
c0034778:	89 44 24 04          	mov    %eax,0x4(%esp)
c003477c:	e8 9f 13 00 00       	call   c0035b20 <_Bfree>
c0034781:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034784:	85 c0                	test   %eax,%eax
c0034786:	74 18                	je     c00347a0 <_dtoa_r+0x850>
c0034788:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c003478b:	0f 85 a7 02 00 00    	jne    c0034a38 <_dtoa_r+0xae8>
c0034791:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034794:	89 34 24             	mov    %esi,(%esp)
c0034797:	89 44 24 04          	mov    %eax,0x4(%esp)
c003479b:	e8 80 13 00 00       	call   c0035b20 <_Bfree>
c00347a0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00347a3:	89 34 24             	mov    %esi,(%esp)
c00347a6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347aa:	e8 71 13 00 00       	call   c0035b20 <_Bfree>
c00347af:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00347b2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c00347b5:	c6 07 00             	movb   $0x0,(%edi)
c00347b8:	83 c0 01             	add    $0x1,%eax
c00347bb:	89 06                	mov    %eax,(%esi)
c00347bd:	8b 45 24             	mov    0x24(%ebp),%eax
c00347c0:	85 c0                	test   %eax,%eax
c00347c2:	0f 84 90 02 00 00    	je     c0034a58 <_dtoa_r+0xb08>
c00347c8:	8b 45 24             	mov    0x24(%ebp),%eax
c00347cb:	89 38                	mov    %edi,(%eax)
c00347cd:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00347d3:	89 d8                	mov    %ebx,%eax
c00347d5:	5b                   	pop    %ebx
c00347d6:	5e                   	pop    %esi
c00347d7:	5f                   	pop    %edi
c00347d8:	5d                   	pop    %ebp
c00347d9:	c3                   	ret    
c00347da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00347e0:	db 45 b8             	fildl  -0x48(%ebp)
c00347e3:	df e9                	fucomip %st(1),%st
c00347e5:	dd d8                	fstp   %st(0)
c00347e7:	7a 06                	jp     c00347ef <_dtoa_r+0x89f>
c00347e9:	0f 84 cc f8 ff ff    	je     c00340bb <_dtoa_r+0x16b>
c00347ef:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00347f3:	e9 c3 f8 ff ff       	jmp    c00340bb <_dtoa_r+0x16b>
c00347f8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00347fb:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00347fe:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0034805:	f7 d8                	neg    %eax
c0034807:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003480a:	e9 0c f9 ff ff       	jmp    c003411b <_dtoa_r+0x1cb>
c003480f:	90                   	nop
c0034810:	f7 d8                	neg    %eax
c0034812:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034815:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c003481c:	e9 e2 f8 ff ff       	jmp    c0034103 <_dtoa_r+0x1b3>
c0034821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034828:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003482b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034830:	29 d9                	sub    %ebx,%ecx
c0034832:	d3 e0                	shl    %cl,%eax
c0034834:	e9 1b f8 ff ff       	jmp    c0034054 <_dtoa_r+0x104>
c0034839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034840:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034847:	e9 a0 f8 ff ff       	jmp    c00340ec <_dtoa_r+0x19c>
c003484c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034850:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034854:	0f 8e fe 06 00 00    	jle    c0034f58 <_dtoa_r+0x1008>
c003485a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003485d:	83 e8 01             	sub    $0x1,%eax
c0034860:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034863:	0f 8c 3b 06 00 00    	jl     c0034ea4 <_dtoa_r+0xf54>
c0034869:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003486c:	29 c2                	sub    %eax,%edx
c003486e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034871:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034874:	85 c9                	test   %ecx,%ecx
c0034876:	89 c8                	mov    %ecx,%eax
c0034878:	0f 88 83 07 00 00    	js     c0035001 <_dtoa_r+0x10b1>
c003487e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034885:	00 
c0034886:	89 34 24             	mov    %esi,(%esp)
c0034889:	89 55 8c             	mov    %edx,-0x74(%ebp)
c003488c:	01 45 a0             	add    %eax,-0x60(%ebp)
c003488f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034892:	e8 69 15 00 00       	call   c0035e00 <__i2b>
c0034897:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003489a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003489d:	e9 1e fd ff ff       	jmp    c00345c0 <_dtoa_r+0x670>
c00348a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00348a8:	d9 c1                	fld    %st(1)
c00348aa:	b9 02 00 00 00       	mov    $0x2,%ecx
c00348af:	e9 37 fa ff ff       	jmp    c00342eb <_dtoa_r+0x39b>
c00348b4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00348b7:	db 45 d4             	fildl  -0x2c(%ebp)
c00348ba:	d8 c9                	fmul   %st(1),%st
c00348bc:	d8 05 70 9a 03 c0    	fadds  0xc0039a70
c00348c2:	dd 5d c0             	fstpl  -0x40(%ebp)
c00348c5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00348cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00348d0:	d8 25 74 9a 03 c0    	fsubs  0xc0039a74
c00348d6:	dd 45 c0             	fldl   -0x40(%ebp)
c00348d9:	d9 c9                	fxch   %st(1)
c00348db:	db e9                	fucomi %st(1),%st
c00348dd:	0f 87 0d 02 00 00    	ja     c0034af0 <_dtoa_r+0xba0>
c00348e3:	d9 c9                	fxch   %st(1)
c00348e5:	d9 e0                	fchs   
c00348e7:	df e9                	fucomip %st(1),%st
c00348e9:	dd d8                	fstp   %st(0)
c00348eb:	0f 86 a7 01 00 00    	jbe    c0034a98 <_dtoa_r+0xb48>
c00348f1:	dd d8                	fstp   %st(0)
c00348f3:	eb 02                	jmp    c00348f7 <_dtoa_r+0x9a7>
c00348f5:	dd d8                	fstp   %st(0)
c00348f7:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00348fe:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034905:	8b 45 18             	mov    0x18(%ebp),%eax
c0034908:	89 fb                	mov    %edi,%ebx
c003490a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034911:	f7 d0                	not    %eax
c0034913:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034916:	e9 57 fe ff ff       	jmp    c0034772 <_dtoa_r+0x822>
c003491b:	90                   	nop
c003491c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034920:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034923:	85 c0                	test   %eax,%eax
c0034925:	0f 85 c5 03 00 00    	jne    c0034cf0 <_dtoa_r+0xda0>
c003492b:	89 75 08             	mov    %esi,0x8(%ebp)
c003492e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034933:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034936:	eb 24                	jmp    c003495c <_dtoa_r+0xa0c>
c0034938:	8b 45 08             	mov    0x8(%ebp),%eax
c003493b:	83 c3 01             	add    $0x1,%ebx
c003493e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034942:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034949:	00 
c003494a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034951:	00 
c0034952:	89 04 24             	mov    %eax,(%esp)
c0034955:	e8 e6 11 00 00       	call   c0035b40 <__multadd>
c003495a:	89 c6                	mov    %eax,%esi
c003495c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003495f:	89 f0                	mov    %esi,%eax
c0034961:	e8 1a f4 ff ff       	call   c0033d80 <quorem>
c0034966:	83 c0 30             	add    $0x30,%eax
c0034969:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c003496c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034970:	7c c6                	jl     c0034938 <_dtoa_r+0x9e8>
c0034972:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034975:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034978:	ba 01 00 00 00       	mov    $0x1,%edx
c003497d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034980:	8b 75 08             	mov    0x8(%ebp),%esi
c0034983:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c003498a:	85 c0                	test   %eax,%eax
c003498c:	0f 4f d0             	cmovg  %eax,%edx
c003498f:	01 fa                	add    %edi,%edx
c0034991:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034994:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c003499b:	00 
c003499c:	89 34 24             	mov    %esi,(%esp)
c003499f:	89 55 ac             	mov    %edx,-0x54(%ebp)
c00349a2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00349a6:	e8 75 17 00 00       	call   c0036120 <__lshift>
c00349ab:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c00349ae:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00349b2:	89 04 24             	mov    %eax,(%esp)
c00349b5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00349b8:	e8 83 18 00 00       	call   c0036240 <__mcmp>
c00349bd:	8b 55 ac             	mov    -0x54(%ebp),%edx
c00349c0:	83 f8 00             	cmp    $0x0,%eax
c00349c3:	0f 8e 41 06 00 00    	jle    c003500a <_dtoa_r+0x10ba>
c00349c9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c00349cd:	eb 0f                	jmp    c00349de <_dtoa_r+0xa8e>
c00349cf:	90                   	nop
c00349d0:	39 c7                	cmp    %eax,%edi
c00349d2:	0f 84 70 05 00 00    	je     c0034f48 <_dtoa_r+0xff8>
c00349d8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c00349dc:	89 c2                	mov    %eax,%edx
c00349de:	80 f9 39             	cmp    $0x39,%cl
c00349e1:	8d 42 ff             	lea    -0x1(%edx),%eax
c00349e4:	74 ea                	je     c00349d0 <_dtoa_r+0xa80>
c00349e6:	83 c1 01             	add    $0x1,%ecx
c00349e9:	89 fb                	mov    %edi,%ebx
c00349eb:	88 08                	mov    %cl,(%eax)
c00349ed:	89 d7                	mov    %edx,%edi
c00349ef:	e9 7e fd ff ff       	jmp    c0034772 <_dtoa_r+0x822>
c00349f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349f8:	b8 1c 00 00 00       	mov    $0x1c,%eax
c00349fd:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034a00:	01 c3                	add    %eax,%ebx
c0034a02:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034a05:	e9 b6 fc ff ff       	jmp    c00346c0 <_dtoa_r+0x770>
c0034a0a:	ba 01 00 00 00       	mov    $0x1,%edx
c0034a0f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034a16:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034a1d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034a24:	21 c2                	and    %eax,%edx
c0034a26:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034a29:	31 d2                	xor    %edx,%edx
c0034a2b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034a32:	e9 62 f8 ff ff       	jmp    c0034299 <_dtoa_r+0x349>
c0034a37:	90                   	nop
c0034a38:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034a3b:	85 d2                	test   %edx,%edx
c0034a3d:	0f 84 4e fd ff ff    	je     c0034791 <_dtoa_r+0x841>
c0034a43:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034a46:	89 34 24             	mov    %esi,(%esp)
c0034a49:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034a4d:	e8 ce 10 00 00       	call   c0035b20 <_Bfree>
c0034a52:	e9 3a fd ff ff       	jmp    c0034791 <_dtoa_r+0x841>
c0034a57:	90                   	nop
c0034a58:	89 d8                	mov    %ebx,%eax
c0034a5a:	e9 89 f5 ff ff       	jmp    c0033fe8 <_dtoa_r+0x98>
c0034a5f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034a62:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034a66:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034a69:	89 34 24             	mov    %esi,(%esp)
c0034a6c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034a70:	e8 8b 15 00 00       	call   c0036000 <__pow5mult>
c0034a75:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034a78:	e9 c6 fb ff ff       	jmp    c0034643 <_dtoa_r+0x6f3>
c0034a7d:	dd d8                	fstp   %st(0)
c0034a7f:	dd d8                	fstp   %st(0)
c0034a81:	eb 15                	jmp    c0034a98 <_dtoa_r+0xb48>
c0034a83:	90                   	nop
c0034a84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a88:	dd d8                	fstp   %st(0)
c0034a8a:	dd d8                	fstp   %st(0)
c0034a8c:	dd d8                	fstp   %st(0)
c0034a8e:	eb 08                	jmp    c0034a98 <_dtoa_r+0xb48>
c0034a90:	dd d8                	fstp   %st(0)
c0034a92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034a98:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034a9b:	e9 cf f9 ff ff       	jmp    c003446f <_dtoa_r+0x51f>
c0034aa0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034aa3:	f7 d8                	neg    %eax
c0034aa5:	0f 84 6a 04 00 00    	je     c0034f15 <_dtoa_r+0xfc5>
c0034aab:	89 c2                	mov    %eax,%edx
c0034aad:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034ab2:	83 e2 0f             	and    $0xf,%edx
c0034ab5:	c1 f8 04             	sar    $0x4,%eax
c0034ab8:	dd 04 d5 40 9b 03 c0 	fldl   -0x3ffc64c0(,%edx,8)
c0034abf:	85 c0                	test   %eax,%eax
c0034ac1:	d8 c9                	fmul   %st(1),%st
c0034ac3:	0f 84 4a f8 ff ff    	je     c0034313 <_dtoa_r+0x3c3>
c0034ac9:	31 d2                	xor    %edx,%edx
c0034acb:	90                   	nop
c0034acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ad0:	a8 01                	test   $0x1,%al
c0034ad2:	74 0a                	je     c0034ade <_dtoa_r+0xb8e>
c0034ad4:	dc 0c d5 00 9b 03 c0 	fmull  -0x3ffc6500(,%edx,8)
c0034adb:	83 c1 01             	add    $0x1,%ecx
c0034ade:	83 c2 01             	add    $0x1,%edx
c0034ae1:	d1 f8                	sar    %eax
c0034ae3:	75 eb                	jne    c0034ad0 <_dtoa_r+0xb80>
c0034ae5:	e9 29 f8 ff ff       	jmp    c0034313 <_dtoa_r+0x3c3>
c0034aea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034af0:	dd d8                	fstp   %st(0)
c0034af2:	dd d8                	fstp   %st(0)
c0034af4:	dd d8                	fstp   %st(0)
c0034af6:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034afd:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034b04:	e9 55 fc ff ff       	jmp    c003475e <_dtoa_r+0x80e>
c0034b09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034b10:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034b13:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034b16:	dd 45 c0             	fldl   -0x40(%ebp)
c0034b19:	dc 0c c5 40 9b 03 c0 	fmull  -0x3ffc64c0(,%eax,8)
c0034b20:	d9 c9                	fxch   %st(1)
c0034b22:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034b25:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034b29:	8d 57 01             	lea    0x1(%edi),%edx
c0034b2c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034b2f:	b4 0c                	mov    $0xc,%ah
c0034b31:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034b35:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034b38:	db 55 d4             	fistl  -0x2c(%ebp)
c0034b3b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034b3e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034b41:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034b44:	83 c0 30             	add    $0x30,%eax
c0034b47:	83 f9 01             	cmp    $0x1,%ecx
c0034b4a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034b4d:	de e9                	fsubrp %st,%st(1)
c0034b4f:	88 07                	mov    %al,(%edi)
c0034b51:	89 d0                	mov    %edx,%eax
c0034b53:	74 37                	je     c0034b8c <_dtoa_r+0xc3c>
c0034b55:	d9 05 6c 9a 03 c0    	flds   0xc0039a6c
c0034b5b:	eb 05                	jmp    c0034b62 <_dtoa_r+0xc12>
c0034b5d:	8d 76 00             	lea    0x0(%esi),%esi
c0034b60:	d9 c9                	fxch   %st(1)
c0034b62:	dc c9                	fmul   %st,%st(1)
c0034b64:	d9 c9                	fxch   %st(1)
c0034b66:	83 c0 01             	add    $0x1,%eax
c0034b69:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034b6c:	db 55 d4             	fistl  -0x2c(%ebp)
c0034b6f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034b72:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034b75:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034b78:	83 c1 30             	add    $0x30,%ecx
c0034b7b:	39 d8                	cmp    %ebx,%eax
c0034b7d:	db 45 d4             	fildl  -0x2c(%ebp)
c0034b80:	de e9                	fsubrp %st,%st(1)
c0034b82:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034b85:	75 d9                	jne    c0034b60 <_dtoa_r+0xc10>
c0034b87:	dd d9                	fstp   %st(1)
c0034b89:	03 55 88             	add    -0x78(%ebp),%edx
c0034b8c:	d9 05 78 9a 03 c0    	flds   0xc0039a78
c0034b92:	d9 c2                	fld    %st(2)
c0034b94:	d8 c1                	fadd   %st(1),%st
c0034b96:	d9 ca                	fxch   %st(2)
c0034b98:	db ea                	fucomi %st(2),%st
c0034b9a:	dd da                	fstp   %st(2)
c0034b9c:	0f 86 7f 03 00 00    	jbe    c0034f21 <_dtoa_r+0xfd1>
c0034ba2:	dd d8                	fstp   %st(0)
c0034ba4:	dd d8                	fstp   %st(0)
c0034ba6:	dd d8                	fstp   %st(0)
c0034ba8:	dd d8                	fstp   %st(0)
c0034baa:	89 fb                	mov    %edi,%ebx
c0034bac:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034bb0:	89 d7                	mov    %edx,%edi
c0034bb2:	e9 d7 f9 ff ff       	jmp    c003458e <_dtoa_r+0x63e>
c0034bb7:	90                   	nop
c0034bb8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034bbb:	8b 41 10             	mov    0x10(%ecx),%eax
c0034bbe:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034bc2:	89 04 24             	mov    %eax,(%esp)
c0034bc5:	e8 56 11 00 00       	call   c0035d20 <__hi0bits>
c0034bca:	ba 20 00 00 00       	mov    $0x20,%edx
c0034bcf:	29 c2                	sub    %eax,%edx
c0034bd1:	e9 bb fa ff ff       	jmp    c0034691 <_dtoa_r+0x741>
c0034bd6:	66 90                	xchg   %ax,%ax
c0034bd8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034bdb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034bdf:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034be2:	89 04 24             	mov    %eax,(%esp)
c0034be5:	e8 56 16 00 00       	call   c0036240 <__mcmp>
c0034bea:	85 c0                	test   %eax,%eax
c0034bec:	0f 89 13 fb ff ff    	jns    c0034705 <_dtoa_r+0x7b5>
c0034bf2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034bf5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034bfc:	00 
c0034bfd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034c04:	00 
c0034c05:	89 34 24             	mov    %esi,(%esp)
c0034c08:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034c0c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034c10:	e8 2b 0f 00 00       	call   c0035b40 <__multadd>
c0034c15:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034c18:	85 c9                	test   %ecx,%ecx
c0034c1a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034c1d:	0f 85 8d 00 00 00    	jne    c0034cb0 <_dtoa_r+0xd60>
c0034c23:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034c27:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034c2a:	7f 0a                	jg     c0034c36 <_dtoa_r+0xce6>
c0034c2c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034c30:	0f 8f ff 04 00 00    	jg     c0035135 <_dtoa_r+0x11e5>
c0034c36:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034c39:	e9 ed fc ff ff       	jmp    c003492b <_dtoa_r+0x9db>
c0034c3e:	66 90                	xchg   %ax,%ax
c0034c40:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034c43:	85 db                	test   %ebx,%ebx
c0034c45:	0f 85 aa fc ff ff    	jne    c00348f5 <_dtoa_r+0x9a5>
c0034c4b:	d8 0d 74 9a 03 c0    	fmuls  0xc0039a74
c0034c51:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034c58:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034c5f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034c62:	d9 c9                	fxch   %st(1)
c0034c64:	df e9                	fucomip %st(1),%st
c0034c66:	dd d8                	fstp   %st(0)
c0034c68:	0f 83 97 fc ff ff    	jae    c0034905 <_dtoa_r+0x9b5>
c0034c6e:	e9 eb fa ff ff       	jmp    c003475e <_dtoa_r+0x80e>
c0034c73:	90                   	nop
c0034c74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c78:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034c7b:	85 c0                	test   %eax,%eax
c0034c7d:	0f 85 fe f9 ff ff    	jne    c0034681 <_dtoa_r+0x731>
c0034c83:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034c86:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034c8b:	0f 85 f0 f9 ff ff    	jne    c0034681 <_dtoa_r+0x731>
c0034c91:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034c96:	0f 84 e5 f9 ff ff    	je     c0034681 <_dtoa_r+0x731>
c0034c9c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034ca0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034ca4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034cab:	e9 d1 f9 ff ff       	jmp    c0034681 <_dtoa_r+0x731>
c0034cb0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034cb3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034cba:	00 
c0034cbb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034cc2:	00 
c0034cc3:	89 34 24             	mov    %esi,(%esp)
c0034cc6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034cca:	e8 71 0e 00 00       	call   c0035b40 <__multadd>
c0034ccf:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034cd2:	85 d2                	test   %edx,%edx
c0034cd4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034cd7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034cda:	7f 0a                	jg     c0034ce6 <_dtoa_r+0xd96>
c0034cdc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034ce0:	0f 8f 4f 04 00 00    	jg     c0035135 <_dtoa_r+0x11e5>
c0034ce6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034cf0:	85 db                	test   %ebx,%ebx
c0034cf2:	7e 16                	jle    c0034d0a <_dtoa_r+0xdba>
c0034cf4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034cf7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034cfb:	89 34 24             	mov    %esi,(%esp)
c0034cfe:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d02:	e8 19 14 00 00       	call   c0036120 <__lshift>
c0034d07:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034d0a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034d0d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034d10:	85 db                	test   %ebx,%ebx
c0034d12:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034d15:	0f 85 11 03 00 00    	jne    c003502c <_dtoa_r+0x10dc>
c0034d1b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034d1e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034d21:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034d24:	01 f8                	add    %edi,%eax
c0034d26:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034d29:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034d2c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034d2f:	83 e0 01             	and    $0x1,%eax
c0034d32:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034d35:	eb 2e                	jmp    c0034d65 <_dtoa_r+0xe15>
c0034d37:	90                   	nop
c0034d38:	e8 03 0e 00 00       	call   c0035b40 <__multadd>
c0034d3d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034d44:	00 
c0034d45:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034d4c:	00 
c0034d4d:	89 34 24             	mov    %esi,(%esp)
c0034d50:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034d53:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034d56:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d5a:	e8 e1 0d 00 00       	call   c0035b40 <__multadd>
c0034d5f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034d62:	83 c3 01             	add    $0x1,%ebx
c0034d65:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034d68:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034d6b:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034d6e:	89 f8                	mov    %edi,%eax
c0034d70:	e8 0b f0 ff ff       	call   c0033d80 <quorem>
c0034d75:	89 3c 24             	mov    %edi,(%esp)
c0034d78:	8d 48 30             	lea    0x30(%eax),%ecx
c0034d7b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034d7e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034d81:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034d84:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034d88:	e8 b3 14 00 00       	call   c0036240 <__mcmp>
c0034d8d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034d90:	89 34 24             	mov    %esi,(%esp)
c0034d93:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034d97:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034d9a:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034d9d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034da1:	e8 ea 14 00 00       	call   c0036290 <__mdiff>
c0034da6:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034da9:	89 c2                	mov    %eax,%edx
c0034dab:	85 c9                	test   %ecx,%ecx
c0034dad:	0f 85 c5 00 00 00    	jne    c0034e78 <_dtoa_r+0xf28>
c0034db3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034db7:	89 3c 24             	mov    %edi,(%esp)
c0034dba:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034dbd:	e8 7e 14 00 00       	call   c0036240 <__mcmp>
c0034dc2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034dc5:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034dc9:	89 34 24             	mov    %esi,(%esp)
c0034dcc:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034dcf:	e8 4c 0d 00 00       	call   c0035b20 <_Bfree>
c0034dd4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034dd7:	89 c1                	mov    %eax,%ecx
c0034dd9:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034ddc:	75 0b                	jne    c0034de9 <_dtoa_r+0xe99>
c0034dde:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034de1:	85 d2                	test   %edx,%edx
c0034de3:	0f 84 fb 02 00 00    	je     c00350e4 <_dtoa_r+0x1194>
c0034de9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034dec:	85 d2                	test   %edx,%edx
c0034dee:	0f 88 7f 01 00 00    	js     c0034f73 <_dtoa_r+0x1023>
c0034df4:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034df7:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034dfa:	75 0b                	jne    c0034e07 <_dtoa_r+0xeb7>
c0034dfc:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034dff:	85 c9                	test   %ecx,%ecx
c0034e01:	0f 84 6c 01 00 00    	je     c0034f73 <_dtoa_r+0x1023>
c0034e07:	85 c0                	test   %eax,%eax
c0034e09:	0f 8f 82 02 00 00    	jg     c0035091 <_dtoa_r+0x1141>
c0034e0f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034e13:	89 da                	mov    %ebx,%edx
c0034e15:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034e18:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034e1b:	0f 84 8d 02 00 00    	je     c00350ae <_dtoa_r+0x115e>
c0034e21:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034e25:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e2c:	00 
c0034e2d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e34:	00 
c0034e35:	89 34 24             	mov    %esi,(%esp)
c0034e38:	e8 03 0d 00 00       	call   c0035b40 <__multadd>
c0034e3d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e44:	00 
c0034e45:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e4c:	00 
c0034e4d:	89 34 24             	mov    %esi,(%esp)
c0034e50:	89 c7                	mov    %eax,%edi
c0034e52:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034e55:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034e58:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e5b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e5f:	0f 85 d3 fe ff ff    	jne    c0034d38 <_dtoa_r+0xde8>
c0034e65:	e8 d6 0c 00 00       	call   c0035b40 <__multadd>
c0034e6a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e6d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e70:	e9 ed fe ff ff       	jmp    c0034d62 <_dtoa_r+0xe12>
c0034e75:	8d 76 00             	lea    0x0(%esi),%esi
c0034e78:	b8 01 00 00 00       	mov    $0x1,%eax
c0034e7d:	e9 43 ff ff ff       	jmp    c0034dc5 <_dtoa_r+0xe75>
c0034e82:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034e89:	e9 d2 f2 ff ff       	jmp    c0034160 <_dtoa_r+0x210>
c0034e8e:	0f 85 87 f6 ff ff    	jne    c003451b <_dtoa_r+0x5cb>
c0034e94:	dd d8                	fstp   %st(0)
c0034e96:	dd d8                	fstp   %st(0)
c0034e98:	dd d8                	fstp   %st(0)
c0034e9a:	89 fb                	mov    %edi,%ebx
c0034e9c:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034e9f:	e9 fc f8 ff ff       	jmp    c00347a0 <_dtoa_r+0x850>
c0034ea4:	89 c2                	mov    %eax,%edx
c0034ea6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0034ea9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034eac:	01 55 94             	add    %edx,-0x6c(%ebp)
c0034eaf:	31 d2                	xor    %edx,%edx
c0034eb1:	e9 b8 f9 ff ff       	jmp    c003486e <_dtoa_r+0x91e>
c0034eb6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034eb9:	85 c0                	test   %eax,%eax
c0034ebb:	0f 84 f3 f9 ff ff    	je     c00348b4 <_dtoa_r+0x964>
c0034ec1:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034ec4:	85 c0                	test   %eax,%eax
c0034ec6:	0f 8e c4 fb ff ff    	jle    c0034a90 <_dtoa_r+0xb40>
c0034ecc:	d8 0d 6c 9a 03 c0    	fmuls  0xc0039a6c
c0034ed2:	83 c1 01             	add    $0x1,%ecx
c0034ed5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034ed8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034edb:	89 c1                	mov    %eax,%ecx
c0034edd:	83 eb 01             	sub    $0x1,%ebx
c0034ee0:	db 45 d4             	fildl  -0x2c(%ebp)
c0034ee3:	d8 c9                	fmul   %st(1),%st
c0034ee5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0034ee8:	d8 05 70 9a 03 c0    	fadds  0xc0039a70
c0034eee:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034ef1:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034ef8:	e9 53 f4 ff ff       	jmp    c0034350 <_dtoa_r+0x400>
c0034efd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034f00:	c6 03 30             	movb   $0x30,(%ebx)
c0034f03:	83 c0 01             	add    $0x1,%eax
c0034f06:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034f09:	b8 31 00 00 00       	mov    $0x31,%eax
c0034f0e:	88 02                	mov    %al,(%edx)
c0034f10:	e9 8b f8 ff ff       	jmp    c00347a0 <_dtoa_r+0x850>
c0034f15:	d9 c0                	fld    %st(0)
c0034f17:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034f1c:	e9 f2 f3 ff ff       	jmp    c0034313 <_dtoa_r+0x3c3>
c0034f21:	de e2                	fsubp  %st,%st(2)
c0034f23:	d9 c9                	fxch   %st(1)
c0034f25:	df e9                	fucomip %st(1),%st
c0034f27:	dd d8                	fstp   %st(0)
c0034f29:	0f 86 69 fb ff ff    	jbe    c0034a98 <_dtoa_r+0xb48>
c0034f2f:	dd d8                	fstp   %st(0)
c0034f31:	eb 07                	jmp    c0034f3a <_dtoa_r+0xfea>
c0034f33:	90                   	nop
c0034f34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034f38:	89 c2                	mov    %eax,%edx
c0034f3a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c0034f3e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034f41:	74 f5                	je     c0034f38 <_dtoa_r+0xfe8>
c0034f43:	e9 d9 f4 ff ff       	jmp    c0034421 <_dtoa_r+0x4d1>
c0034f48:	c6 07 31             	movb   $0x31,(%edi)
c0034f4b:	89 fb                	mov    %edi,%ebx
c0034f4d:	89 d7                	mov    %edx,%edi
c0034f4f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034f53:	e9 1a f8 ff ff       	jmp    c0034772 <_dtoa_r+0x822>
c0034f58:	8b 55 8c             	mov    -0x74(%ebp),%edx
c0034f5b:	85 d2                	test   %edx,%edx
c0034f5d:	0f 84 1b 01 00 00    	je     c003507e <_dtoa_r+0x112e>
c0034f63:	05 33 04 00 00       	add    $0x433,%eax
c0034f68:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034f6b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034f6e:	e9 0b f9 ff ff       	jmp    c003487e <_dtoa_r+0x92e>
c0034f73:	85 c0                	test   %eax,%eax
c0034f75:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0034f78:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0034f7b:	7e 45                	jle    c0034fc2 <_dtoa_r+0x1072>
c0034f7d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034f80:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034f87:	00 
c0034f88:	89 34 24             	mov    %esi,(%esp)
c0034f8b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f8f:	e8 8c 11 00 00       	call   c0036120 <__lshift>
c0034f94:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034f97:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034f9b:	89 04 24             	mov    %eax,(%esp)
c0034f9e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034fa1:	e8 9a 12 00 00       	call   c0036240 <__mcmp>
c0034fa6:	83 f8 00             	cmp    $0x0,%eax
c0034fa9:	0f 8e 5b 01 00 00    	jle    c003510a <_dtoa_r+0x11ba>
c0034faf:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0034fb3:	0f 84 0c 01 00 00    	je     c00350c5 <_dtoa_r+0x1175>
c0034fb9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034fbc:	83 c0 31             	add    $0x31,%eax
c0034fbf:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034fc2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034fc5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034fc9:	89 cb                	mov    %ecx,%ebx
c0034fcb:	88 03                	mov    %al,(%ebx)
c0034fcd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034fd0:	89 fb                	mov    %edi,%ebx
c0034fd2:	8d 79 01             	lea    0x1(%ecx),%edi
c0034fd5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034fd8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034fdb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034fde:	e9 8f f7 ff ff       	jmp    c0034772 <_dtoa_r+0x822>
c0034fe3:	dd d8                	fstp   %st(0)
c0034fe5:	dd d8                	fstp   %st(0)
c0034fe7:	dd d8                	fstp   %st(0)
c0034fe9:	eb 0d                	jmp    c0034ff8 <_dtoa_r+0x10a8>
c0034feb:	90                   	nop
c0034fec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ff0:	dd d8                	fstp   %st(0)
c0034ff2:	dd d8                	fstp   %st(0)
c0034ff4:	dd d8                	fstp   %st(0)
c0034ff6:	dd d8                	fstp   %st(0)
c0034ff8:	89 fb                	mov    %edi,%ebx
c0034ffa:	89 d7                	mov    %edx,%edi
c0034ffc:	e9 8d f5 ff ff       	jmp    c003458e <_dtoa_r+0x63e>
c0035001:	29 cb                	sub    %ecx,%ebx
c0035003:	31 c0                	xor    %eax,%eax
c0035005:	e9 74 f8 ff ff       	jmp    c003487e <_dtoa_r+0x92e>
c003500a:	75 0e                	jne    c003501a <_dtoa_r+0x10ca>
c003500c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035010:	74 08                	je     c003501a <_dtoa_r+0x10ca>
c0035012:	e9 b2 f9 ff ff       	jmp    c00349c9 <_dtoa_r+0xa79>
c0035017:	90                   	nop
c0035018:	89 c2                	mov    %eax,%edx
c003501a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003501e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035021:	74 f5                	je     c0035018 <_dtoa_r+0x10c8>
c0035023:	89 fb                	mov    %edi,%ebx
c0035025:	89 d7                	mov    %edx,%edi
c0035027:	e9 46 f7 ff ff       	jmp    c0034772 <_dtoa_r+0x822>
c003502c:	8b 40 04             	mov    0x4(%eax),%eax
c003502f:	89 34 24             	mov    %esi,(%esp)
c0035032:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035036:	e8 45 0a 00 00       	call   c0035a80 <_Balloc>
c003503b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003503e:	89 c3                	mov    %eax,%ebx
c0035040:	8b 41 10             	mov    0x10(%ecx),%eax
c0035043:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003504a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003504e:	89 c8                	mov    %ecx,%eax
c0035050:	83 c0 0c             	add    $0xc,%eax
c0035053:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035057:	8d 43 0c             	lea    0xc(%ebx),%eax
c003505a:	89 04 24             	mov    %eax,(%esp)
c003505d:	e8 62 cc ff ff       	call   c0031cc4 <memcpy>
c0035062:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035069:	00 
c003506a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003506e:	89 34 24             	mov    %esi,(%esp)
c0035071:	e8 aa 10 00 00       	call   c0036120 <__lshift>
c0035076:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035079:	e9 9d fc ff ff       	jmp    c0034d1b <_dtoa_r+0xdcb>
c003507e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035083:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035086:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035089:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003508c:	e9 ed f7 ff ff       	jmp    c003487e <_dtoa_r+0x92e>
c0035091:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035095:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035098:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003509b:	74 28                	je     c00350c5 <_dtoa_r+0x1175>
c003509d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00350a1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00350a4:	83 c0 01             	add    $0x1,%eax
c00350a7:	89 cb                	mov    %ecx,%ebx
c00350a9:	e9 1d ff ff ff       	jmp    c0034fcb <_dtoa_r+0x107b>
c00350ae:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00350b1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00350b4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00350b7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00350ba:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00350bd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00350c0:	e9 cc f8 ff ff       	jmp    c0034991 <_dtoa_r+0xa41>
c00350c5:	8b 45 98             	mov    -0x68(%ebp),%eax
c00350c8:	b9 39 00 00 00       	mov    $0x39,%ecx
c00350cd:	8d 50 01             	lea    0x1(%eax),%edx
c00350d0:	c6 00 39             	movb   $0x39,(%eax)
c00350d3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00350d6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00350d9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00350dc:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00350df:	e9 fa f8 ff ff       	jmp    c00349de <_dtoa_r+0xa8e>
c00350e4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00350e7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00350ea:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00350ed:	83 fb 39             	cmp    $0x39,%ebx
c00350f0:	74 d3                	je     c00350c5 <_dtoa_r+0x1175>
c00350f2:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00350f5:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00350f8:	83 c0 31             	add    $0x31,%eax
c00350fb:	85 c9                	test   %ecx,%ecx
c00350fd:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035100:	0f 4e c3             	cmovle %ebx,%eax
c0035103:	89 cb                	mov    %ecx,%ebx
c0035105:	e9 c1 fe ff ff       	jmp    c0034fcb <_dtoa_r+0x107b>
c003510a:	0f 85 b2 fe ff ff    	jne    c0034fc2 <_dtoa_r+0x1072>
c0035110:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035114:	0f 84 a8 fe ff ff    	je     c0034fc2 <_dtoa_r+0x1072>
c003511a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035120:	e9 8a fe ff ff       	jmp    c0034faf <_dtoa_r+0x105f>
c0035125:	0f 85 c7 f3 ff ff    	jne    c00344f2 <_dtoa_r+0x5a2>
c003512b:	dd d8                	fstp   %st(0)
c003512d:	dd d8                	fstp   %st(0)
c003512f:	90                   	nop
c0035130:	e9 65 fd ff ff       	jmp    c0034e9a <_dtoa_r+0xf4a>
c0035135:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035138:	e9 dd f5 ff ff       	jmp    c003471a <_dtoa_r+0x7ca>
c003513d:	8d 76 00             	lea    0x0(%esi),%esi
c0035140:	0f 84 7a f5 ff ff    	je     c00346c0 <_dtoa_r+0x770>
c0035146:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003514b:	29 d0                	sub    %edx,%eax
c003514d:	e9 ab f8 ff ff       	jmp    c00349fd <_dtoa_r+0xaad>
c0035152:	b8 01 00 00 00       	mov    $0x1,%eax
c0035157:	e9 d9 ef ff ff       	jmp    c0034135 <_dtoa_r+0x1e5>
c003515c:	31 d2                	xor    %edx,%edx
c003515e:	e9 36 f1 ff ff       	jmp    c0034299 <_dtoa_r+0x349>
c0035163:	66 90                	xchg   %ax,%ax
c0035165:	66 90                	xchg   %ax,%ax
c0035167:	66 90                	xchg   %ax,%ax
c0035169:	66 90                	xchg   %ax,%ax
c003516b:	66 90                	xchg   %ax,%ax
c003516d:	66 90                	xchg   %ax,%ax
c003516f:	90                   	nop

c0035170 <_setlocale_r>:
c0035170:	55                   	push   %ebp
c0035171:	89 e5                	mov    %esp,%ebp
c0035173:	53                   	push   %ebx
c0035174:	83 ec 14             	sub    $0x14,%esp
c0035177:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003517a:	85 db                	test   %ebx,%ebx
c003517c:	74 14                	je     c0035192 <_setlocale_r+0x22>
c003517e:	c7 44 24 04 98 9a 03 	movl   $0xc0039a98,0x4(%esp)
c0035185:	c0 
c0035186:	89 1c 24             	mov    %ebx,(%esp)
c0035189:	e8 82 17 00 00       	call   c0036910 <strcmp>
c003518e:	85 c0                	test   %eax,%eax
c0035190:	75 0e                	jne    c00351a0 <_setlocale_r+0x30>
c0035192:	83 c4 14             	add    $0x14,%esp
c0035195:	b8 90 98 03 c0       	mov    $0xc0039890,%eax
c003519a:	5b                   	pop    %ebx
c003519b:	5d                   	pop    %ebp
c003519c:	c3                   	ret    
c003519d:	8d 76 00             	lea    0x0(%esi),%esi
c00351a0:	c7 44 24 04 90 98 03 	movl   $0xc0039890,0x4(%esp)
c00351a7:	c0 
c00351a8:	89 1c 24             	mov    %ebx,(%esp)
c00351ab:	e8 60 17 00 00       	call   c0036910 <strcmp>
c00351b0:	85 c0                	test   %eax,%eax
c00351b2:	74 de                	je     c0035192 <_setlocale_r+0x22>
c00351b4:	89 1c 24             	mov    %ebx,(%esp)
c00351b7:	c7 44 24 04 ca 98 03 	movl   $0xc00398ca,0x4(%esp)
c00351be:	c0 
c00351bf:	e8 4c 17 00 00       	call   c0036910 <strcmp>
c00351c4:	89 c2                	mov    %eax,%edx
c00351c6:	31 c0                	xor    %eax,%eax
c00351c8:	85 d2                	test   %edx,%edx
c00351ca:	ba 90 98 03 c0       	mov    $0xc0039890,%edx
c00351cf:	0f 44 c2             	cmove  %edx,%eax
c00351d2:	83 c4 14             	add    $0x14,%esp
c00351d5:	5b                   	pop    %ebx
c00351d6:	5d                   	pop    %ebp
c00351d7:	c3                   	ret    
c00351d8:	90                   	nop
c00351d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00351e0 <__locale_charset>:
c00351e0:	55                   	push   %ebp
c00351e1:	b8 c0 d4 03 c0       	mov    $0xc003d4c0,%eax
c00351e6:	89 e5                	mov    %esp,%ebp
c00351e8:	5d                   	pop    %ebp
c00351e9:	c3                   	ret    
c00351ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00351f0 <__locale_mb_cur_max>:
c00351f0:	55                   	push   %ebp
c00351f1:	a1 18 d5 03 c0       	mov    0xc003d518,%eax
c00351f6:	89 e5                	mov    %esp,%ebp
c00351f8:	5d                   	pop    %ebp
c00351f9:	c3                   	ret    
c00351fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035200 <__locale_msgcharset>:
c0035200:	55                   	push   %ebp
c0035201:	b8 a0 d4 03 c0       	mov    $0xc003d4a0,%eax
c0035206:	89 e5                	mov    %esp,%ebp
c0035208:	5d                   	pop    %ebp
c0035209:	c3                   	ret    
c003520a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035210 <__locale_cjk_lang>:
c0035210:	55                   	push   %ebp
c0035211:	31 c0                	xor    %eax,%eax
c0035213:	89 e5                	mov    %esp,%ebp
c0035215:	5d                   	pop    %ebp
c0035216:	c3                   	ret    
c0035217:	89 f6                	mov    %esi,%esi
c0035219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035220 <_localeconv_r>:
c0035220:	55                   	push   %ebp
c0035221:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035226:	89 e5                	mov    %esp,%ebp
c0035228:	5d                   	pop    %ebp
c0035229:	c3                   	ret    
c003522a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035230 <setlocale>:
c0035230:	55                   	push   %ebp
c0035231:	89 e5                	mov    %esp,%ebp
c0035233:	83 ec 18             	sub    $0x18,%esp
c0035236:	e8 35 cc ff ff       	call   c0031e70 <__getreent>
c003523b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003523e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035242:	8b 55 08             	mov    0x8(%ebp),%edx
c0035245:	89 04 24             	mov    %eax,(%esp)
c0035248:	89 54 24 04          	mov    %edx,0x4(%esp)
c003524c:	e8 1f ff ff ff       	call   c0035170 <_setlocale_r>
c0035251:	c9                   	leave  
c0035252:	c3                   	ret    
c0035253:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035260 <localeconv>:
c0035260:	55                   	push   %ebp
c0035261:	89 e5                	mov    %esp,%ebp
c0035263:	83 ec 08             	sub    $0x8,%esp
c0035266:	e8 05 cc ff ff       	call   c0031e70 <__getreent>
c003526b:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035270:	c9                   	leave  
c0035271:	c3                   	ret    
c0035272:	66 90                	xchg   %ax,%ax
c0035274:	66 90                	xchg   %ax,%ax
c0035276:	66 90                	xchg   %ax,%ax
c0035278:	66 90                	xchg   %ax,%ax
c003527a:	66 90                	xchg   %ax,%ax
c003527c:	66 90                	xchg   %ax,%ax
c003527e:	66 90                	xchg   %ax,%ax

c0035280 <_malloc_r>:
c0035280:	55                   	push   %ebp
c0035281:	89 e5                	mov    %esp,%ebp
c0035283:	57                   	push   %edi
c0035284:	56                   	push   %esi
c0035285:	53                   	push   %ebx
c0035286:	83 ec 2c             	sub    $0x2c,%esp
c0035289:	8b 45 0c             	mov    0xc(%ebp),%eax
c003528c:	8d 50 0b             	lea    0xb(%eax),%edx
c003528f:	83 fa 16             	cmp    $0x16,%edx
c0035292:	76 6c                	jbe    c0035300 <_malloc_r+0x80>
c0035294:	89 d7                	mov    %edx,%edi
c0035296:	83 e7 f8             	and    $0xfffffff8,%edi
c0035299:	89 fe                	mov    %edi,%esi
c003529b:	c1 ee 1f             	shr    $0x1f,%esi
c003529e:	39 c7                	cmp    %eax,%edi
c00352a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00352a3:	89 f2                	mov    %esi,%edx
c00352a5:	72 67                	jb     c003530e <_malloc_r+0x8e>
c00352a7:	84 d2                	test   %dl,%dl
c00352a9:	75 63                	jne    c003530e <_malloc_r+0x8e>
c00352ab:	89 04 24             	mov    %eax,(%esp)
c00352ae:	e8 ad 07 00 00       	call   c0035a60 <__malloc_lock>
c00352b3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c00352b9:	77 65                	ja     c0035320 <_malloc_r+0xa0>
c00352bb:	89 fa                	mov    %edi,%edx
c00352bd:	c1 ea 03             	shr    $0x3,%edx
c00352c0:	8d 04 d5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%edx,8),%eax
c00352c7:	8b 58 0c             	mov    0xc(%eax),%ebx
c00352ca:	39 c3                	cmp    %eax,%ebx
c00352cc:	0f 84 3e 05 00 00    	je     c0035810 <_malloc_r+0x590>
c00352d2:	8b 43 04             	mov    0x4(%ebx),%eax
c00352d5:	83 e0 fc             	and    $0xfffffffc,%eax
c00352d8:	8b 53 0c             	mov    0xc(%ebx),%edx
c00352db:	8b 4b 08             	mov    0x8(%ebx),%ecx
c00352de:	89 51 0c             	mov    %edx,0xc(%ecx)
c00352e1:	89 4a 08             	mov    %ecx,0x8(%edx)
c00352e4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00352e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00352ec:	89 04 24             	mov    %eax,(%esp)
c00352ef:	e8 7c 07 00 00       	call   c0035a70 <__malloc_unlock>
c00352f4:	8d 43 08             	lea    0x8(%ebx),%eax
c00352f7:	83 c4 2c             	add    $0x2c,%esp
c00352fa:	5b                   	pop    %ebx
c00352fb:	5e                   	pop    %esi
c00352fc:	5f                   	pop    %edi
c00352fd:	5d                   	pop    %ebp
c00352fe:	c3                   	ret    
c00352ff:	90                   	nop
c0035300:	bf 10 00 00 00       	mov    $0x10,%edi
c0035305:	31 d2                	xor    %edx,%edx
c0035307:	39 c7                	cmp    %eax,%edi
c0035309:	8b 45 08             	mov    0x8(%ebp),%eax
c003530c:	73 99                	jae    c00352a7 <_malloc_r+0x27>
c003530e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035314:	83 c4 2c             	add    $0x2c,%esp
c0035317:	31 c0                	xor    %eax,%eax
c0035319:	5b                   	pop    %ebx
c003531a:	5e                   	pop    %esi
c003531b:	5f                   	pop    %edi
c003531c:	5d                   	pop    %ebp
c003531d:	c3                   	ret    
c003531e:	66 90                	xchg   %ax,%ax
c0035320:	89 fe                	mov    %edi,%esi
c0035322:	c1 ee 09             	shr    $0x9,%esi
c0035325:	85 f6                	test   %esi,%esi
c0035327:	0f 84 ab 01 00 00    	je     c00354d8 <_malloc_r+0x258>
c003532d:	83 fe 04             	cmp    $0x4,%esi
c0035330:	0f 87 8a 03 00 00    	ja     c00356c0 <_malloc_r+0x440>
c0035336:	89 fe                	mov    %edi,%esi
c0035338:	c1 ee 06             	shr    $0x6,%esi
c003533b:	83 c6 38             	add    $0x38,%esi
c003533e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035341:	8d 0c 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%ecx
c0035348:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003534b:	39 d9                	cmp    %ebx,%ecx
c003534d:	75 18                	jne    c0035367 <_malloc_r+0xe7>
c003534f:	eb 28                	jmp    c0035379 <_malloc_r+0xf9>
c0035351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035358:	85 d2                	test   %edx,%edx
c003535a:	0f 89 78 ff ff ff    	jns    c00352d8 <_malloc_r+0x58>
c0035360:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035363:	39 d9                	cmp    %ebx,%ecx
c0035365:	74 12                	je     c0035379 <_malloc_r+0xf9>
c0035367:	8b 43 04             	mov    0x4(%ebx),%eax
c003536a:	83 e0 fc             	and    $0xfffffffc,%eax
c003536d:	89 c2                	mov    %eax,%edx
c003536f:	29 fa                	sub    %edi,%edx
c0035371:	83 fa 0f             	cmp    $0xf,%edx
c0035374:	7e e2                	jle    c0035358 <_malloc_r+0xd8>
c0035376:	83 ee 01             	sub    $0x1,%esi
c0035379:	8d 46 01             	lea    0x1(%esi),%eax
c003537c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003537f:	8b 1d 50 d5 03 c0    	mov    0xc003d550,%ebx
c0035385:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c003538a:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0035390:	74 6b                	je     c00353fd <_malloc_r+0x17d>
c0035392:	8b 73 04             	mov    0x4(%ebx),%esi
c0035395:	83 e6 fc             	and    $0xfffffffc,%esi
c0035398:	89 f0                	mov    %esi,%eax
c003539a:	29 f8                	sub    %edi,%eax
c003539c:	83 f8 0f             	cmp    $0xf,%eax
c003539f:	0f 8f a3 03 00 00    	jg     c0035748 <_malloc_r+0x4c8>
c00353a5:	85 c0                	test   %eax,%eax
c00353a7:	c7 05 54 d5 03 c0 48 	movl   $0xc003d548,0xc003d554
c00353ae:	d5 03 c0 
c00353b1:	c7 05 50 d5 03 c0 48 	movl   $0xc003d548,0xc003d550
c00353b8:	d5 03 c0 
c00353bb:	0f 89 27 01 00 00    	jns    c00354e8 <_malloc_r+0x268>
c00353c1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c00353c7:	0f 87 1b 03 00 00    	ja     c00356e8 <_malloc_r+0x468>
c00353cd:	c1 ee 03             	shr    $0x3,%esi
c00353d0:	b8 01 00 00 00       	mov    $0x1,%eax
c00353d5:	89 f1                	mov    %esi,%ecx
c00353d7:	8d 14 f5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%esi,8),%edx
c00353de:	c1 f9 02             	sar    $0x2,%ecx
c00353e1:	d3 e0                	shl    %cl,%eax
c00353e3:	8b 4a 08             	mov    0x8(%edx),%ecx
c00353e6:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c00353ec:	89 53 0c             	mov    %edx,0xc(%ebx)
c00353ef:	89 4b 08             	mov    %ecx,0x8(%ebx)
c00353f2:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00353f7:	89 5a 08             	mov    %ebx,0x8(%edx)
c00353fa:	89 59 0c             	mov    %ebx,0xc(%ecx)
c00353fd:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035400:	be 01 00 00 00       	mov    $0x1,%esi
c0035405:	c1 f9 02             	sar    $0x2,%ecx
c0035408:	d3 e6                	shl    %cl,%esi
c003540a:	39 c6                	cmp    %eax,%esi
c003540c:	0f 87 f6 00 00 00    	ja     c0035508 <_malloc_r+0x288>
c0035412:	85 f0                	test   %esi,%eax
c0035414:	0f 85 76 03 00 00    	jne    c0035790 <_malloc_r+0x510>
c003541a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003541d:	01 f6                	add    %esi,%esi
c003541f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035422:	85 f0                	test   %esi,%eax
c0035424:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035427:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003542a:	0f 85 60 03 00 00    	jne    c0035790 <_malloc_r+0x510>
c0035430:	89 ca                	mov    %ecx,%edx
c0035432:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035438:	01 f6                	add    %esi,%esi
c003543a:	83 c2 04             	add    $0x4,%edx
c003543d:	85 f0                	test   %esi,%eax
c003543f:	74 f7                	je     c0035438 <_malloc_r+0x1b8>
c0035441:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035444:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035447:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003544a:	8d 34 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%esi
c0035451:	89 f1                	mov    %esi,%ecx
c0035453:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035456:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035459:	39 d9                	cmp    %ebx,%ecx
c003545b:	75 1e                	jne    c003547b <_malloc_r+0x1fb>
c003545d:	e9 36 03 00 00       	jmp    c0035798 <_malloc_r+0x518>
c0035462:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035468:	85 d2                	test   %edx,%edx
c003546a:	0f 89 c0 03 00 00    	jns    c0035830 <_malloc_r+0x5b0>
c0035470:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035473:	39 d9                	cmp    %ebx,%ecx
c0035475:	0f 84 1d 03 00 00    	je     c0035798 <_malloc_r+0x518>
c003547b:	8b 43 04             	mov    0x4(%ebx),%eax
c003547e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035481:	89 c2                	mov    %eax,%edx
c0035483:	29 fa                	sub    %edi,%edx
c0035485:	83 fa 0f             	cmp    $0xf,%edx
c0035488:	7e de                	jle    c0035468 <_malloc_r+0x1e8>
c003548a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c003548d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035490:	83 cf 01             	or     $0x1,%edi
c0035493:	8b 73 08             	mov    0x8(%ebx),%esi
c0035496:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035499:	89 4e 0c             	mov    %ecx,0xc(%esi)
c003549c:	89 71 08             	mov    %esi,0x8(%ecx)
c003549f:	89 d1                	mov    %edx,%ecx
c00354a1:	83 c9 01             	or     $0x1,%ecx
c00354a4:	a3 54 d5 03 c0       	mov    %eax,0xc003d554
c00354a9:	a3 50 d5 03 c0       	mov    %eax,0xc003d550
c00354ae:	c7 40 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%eax)
c00354b5:	c7 40 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%eax)
c00354bc:	89 48 04             	mov    %ecx,0x4(%eax)
c00354bf:	89 14 10             	mov    %edx,(%eax,%edx,1)
c00354c2:	8b 45 08             	mov    0x8(%ebp),%eax
c00354c5:	89 04 24             	mov    %eax,(%esp)
c00354c8:	e8 a3 05 00 00       	call   c0035a70 <__malloc_unlock>
c00354cd:	8d 43 08             	lea    0x8(%ebx),%eax
c00354d0:	e9 22 fe ff ff       	jmp    c00352f7 <_malloc_r+0x77>
c00354d5:	8d 76 00             	lea    0x0(%esi),%esi
c00354d8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c00354dd:	be 3f 00 00 00       	mov    $0x3f,%esi
c00354e2:	e9 5a fe ff ff       	jmp    c0035341 <_malloc_r+0xc1>
c00354e7:	90                   	nop
c00354e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00354eb:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c00354f0:	89 04 24             	mov    %eax,(%esp)
c00354f3:	e8 78 05 00 00       	call   c0035a70 <__malloc_unlock>
c00354f8:	83 c4 2c             	add    $0x2c,%esp
c00354fb:	8d 43 08             	lea    0x8(%ebx),%eax
c00354fe:	5b                   	pop    %ebx
c00354ff:	5e                   	pop    %esi
c0035500:	5f                   	pop    %edi
c0035501:	5d                   	pop    %ebp
c0035502:	c3                   	ret    
c0035503:	90                   	nop
c0035504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035508:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c003550e:	8b 73 04             	mov    0x4(%ebx),%esi
c0035511:	83 e6 fc             	and    $0xfffffffc,%esi
c0035514:	39 f7                	cmp    %esi,%edi
c0035516:	77 0d                	ja     c0035525 <_malloc_r+0x2a5>
c0035518:	89 f0                	mov    %esi,%eax
c003551a:	29 f8                	sub    %edi,%eax
c003551c:	83 f8 0f             	cmp    $0xf,%eax
c003551f:	0f 8f 6b 01 00 00    	jg     c0035690 <_malloc_r+0x410>
c0035525:	8b 0d 50 00 07 c0    	mov    0xc0070050,%ecx
c003552b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003552e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035531:	01 f9                	add    %edi,%ecx
c0035533:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035539:	83 c1 10             	add    $0x10,%ecx
c003553c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035541:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035548:	0f 44 c1             	cmove  %ecx,%eax
c003554b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003554e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035552:	8b 45 08             	mov    0x8(%ebp),%eax
c0035555:	89 04 24             	mov    %eax,(%esp)
c0035558:	e8 03 13 00 00       	call   c0036860 <_sbrk_r>
c003555d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035560:	89 c1                	mov    %eax,%ecx
c0035562:	0f 84 17 03 00 00    	je     c003587f <_malloc_r+0x5ff>
c0035568:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c003556b:	0f 87 02 03 00 00    	ja     c0035873 <_malloc_r+0x5f3>
c0035571:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035574:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c003557a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c003557d:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c0035583:	0f 84 a9 03 00 00    	je     c0035932 <_malloc_r+0x6b2>
c0035589:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035590:	0f 84 ca 03 00 00    	je     c0035960 <_malloc_r+0x6e0>
c0035596:	89 c8                	mov    %ecx,%eax
c0035598:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c003559b:	01 d0                	add    %edx,%eax
c003559d:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c00355a2:	89 c8                	mov    %ecx,%eax
c00355a4:	ba 00 10 00 00       	mov    $0x1000,%edx
c00355a9:	83 e0 07             	and    $0x7,%eax
c00355ac:	74 0c                	je     c00355ba <_malloc_r+0x33a>
c00355ae:	29 c1                	sub    %eax,%ecx
c00355b0:	ba 08 10 00 00       	mov    $0x1008,%edx
c00355b5:	8d 49 08             	lea    0x8(%ecx),%ecx
c00355b8:	29 c2                	sub    %eax,%edx
c00355ba:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00355bd:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00355c0:	01 c8                	add    %ecx,%eax
c00355c2:	25 ff 0f 00 00       	and    $0xfff,%eax
c00355c7:	29 c2                	sub    %eax,%edx
c00355c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00355cc:	89 54 24 04          	mov    %edx,0x4(%esp)
c00355d0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00355d3:	89 04 24             	mov    %eax,(%esp)
c00355d6:	e8 85 12 00 00       	call   c0036860 <_sbrk_r>
c00355db:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00355de:	83 f8 ff             	cmp    $0xffffffff,%eax
c00355e1:	0f 84 6d 03 00 00    	je     c0035954 <_malloc_r+0x6d4>
c00355e7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00355ea:	29 c8                	sub    %ecx,%eax
c00355ec:	01 d0                	add    %edx,%eax
c00355ee:	83 c8 01             	or     $0x1,%eax
c00355f1:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c00355f7:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c00355fd:	89 0d 48 d5 03 c0    	mov    %ecx,0xc003d548
c0035603:	89 41 04             	mov    %eax,0x4(%ecx)
c0035606:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c003560c:	0f 84 f2 02 00 00    	je     c0035904 <_malloc_r+0x684>
c0035612:	83 fe 0f             	cmp    $0xf,%esi
c0035615:	0f 86 8d 02 00 00    	jbe    c00358a8 <_malloc_r+0x628>
c003561b:	8b 43 04             	mov    0x4(%ebx),%eax
c003561e:	83 ee 0c             	sub    $0xc,%esi
c0035621:	83 e6 f8             	and    $0xfffffff8,%esi
c0035624:	83 e0 01             	and    $0x1,%eax
c0035627:	09 f0                	or     %esi,%eax
c0035629:	83 fe 0f             	cmp    $0xf,%esi
c003562c:	89 43 04             	mov    %eax,0x4(%ebx)
c003562f:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035634:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003563b:	00 
c003563c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035643:	00 
c0035644:	0f 87 a2 02 00 00    	ja     c00358ec <_malloc_r+0x66c>
c003564a:	3b 15 4c 00 07 c0    	cmp    0xc007004c,%edx
c0035650:	76 06                	jbe    c0035658 <_malloc_r+0x3d8>
c0035652:	89 15 4c 00 07 c0    	mov    %edx,0xc007004c
c0035658:	3b 15 48 00 07 c0    	cmp    0xc0070048,%edx
c003565e:	76 06                	jbe    c0035666 <_malloc_r+0x3e6>
c0035660:	89 15 48 00 07 c0    	mov    %edx,0xc0070048
c0035666:	8b 50 04             	mov    0x4(%eax),%edx
c0035669:	89 c3                	mov    %eax,%ebx
c003566b:	83 e2 fc             	and    $0xfffffffc,%edx
c003566e:	89 d0                	mov    %edx,%eax
c0035670:	29 f8                	sub    %edi,%eax
c0035672:	39 d7                	cmp    %edx,%edi
c0035674:	77 05                	ja     c003567b <_malloc_r+0x3fb>
c0035676:	83 f8 0f             	cmp    $0xf,%eax
c0035679:	7f 15                	jg     c0035690 <_malloc_r+0x410>
c003567b:	8b 45 08             	mov    0x8(%ebp),%eax
c003567e:	89 04 24             	mov    %eax,(%esp)
c0035681:	e8 ea 03 00 00       	call   c0035a70 <__malloc_unlock>
c0035686:	31 c0                	xor    %eax,%eax
c0035688:	e9 6a fc ff ff       	jmp    c00352f7 <_malloc_r+0x77>
c003568d:	8d 76 00             	lea    0x0(%esi),%esi
c0035690:	89 fa                	mov    %edi,%edx
c0035692:	83 c8 01             	or     $0x1,%eax
c0035695:	83 ca 01             	or     $0x1,%edx
c0035698:	89 53 04             	mov    %edx,0x4(%ebx)
c003569b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003569e:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c00356a4:	89 42 04             	mov    %eax,0x4(%edx)
c00356a7:	8b 45 08             	mov    0x8(%ebp),%eax
c00356aa:	89 04 24             	mov    %eax,(%esp)
c00356ad:	e8 be 03 00 00       	call   c0035a70 <__malloc_unlock>
c00356b2:	83 c4 2c             	add    $0x2c,%esp
c00356b5:	8d 43 08             	lea    0x8(%ebx),%eax
c00356b8:	5b                   	pop    %ebx
c00356b9:	5e                   	pop    %esi
c00356ba:	5f                   	pop    %edi
c00356bb:	5d                   	pop    %ebp
c00356bc:	c3                   	ret    
c00356bd:	8d 76 00             	lea    0x0(%esi),%esi
c00356c0:	83 fe 14             	cmp    $0x14,%esi
c00356c3:	0f 86 8f 01 00 00    	jbe    c0035858 <_malloc_r+0x5d8>
c00356c9:	83 fe 54             	cmp    $0x54,%esi
c00356cc:	0f 87 be 01 00 00    	ja     c0035890 <_malloc_r+0x610>
c00356d2:	89 fe                	mov    %edi,%esi
c00356d4:	c1 ee 0c             	shr    $0xc,%esi
c00356d7:	83 c6 6e             	add    $0x6e,%esi
c00356da:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00356dd:	e9 5f fc ff ff       	jmp    c0035341 <_malloc_r+0xc1>
c00356e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00356e8:	89 f1                	mov    %esi,%ecx
c00356ea:	c1 e9 09             	shr    $0x9,%ecx
c00356ed:	83 f9 04             	cmp    $0x4,%ecx
c00356f0:	0f 86 6d 01 00 00    	jbe    c0035863 <_malloc_r+0x5e3>
c00356f6:	83 f9 14             	cmp    $0x14,%ecx
c00356f9:	0f 87 0f 02 00 00    	ja     c003590e <_malloc_r+0x68e>
c00356ff:	83 c1 5b             	add    $0x5b,%ecx
c0035702:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035705:	8d 04 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%eax
c003570c:	8b 50 08             	mov    0x8(%eax),%edx
c003570f:	39 c2                	cmp    %eax,%edx
c0035711:	0f 84 a1 01 00 00    	je     c00358b8 <_malloc_r+0x638>
c0035717:	90                   	nop
c0035718:	8b 4a 04             	mov    0x4(%edx),%ecx
c003571b:	83 e1 fc             	and    $0xfffffffc,%ecx
c003571e:	39 ce                	cmp    %ecx,%esi
c0035720:	73 07                	jae    c0035729 <_malloc_r+0x4a9>
c0035722:	8b 52 08             	mov    0x8(%edx),%edx
c0035725:	39 d0                	cmp    %edx,%eax
c0035727:	75 ef                	jne    c0035718 <_malloc_r+0x498>
c0035729:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003572c:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035731:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035734:	89 53 08             	mov    %edx,0x8(%ebx)
c0035737:	89 59 08             	mov    %ebx,0x8(%ecx)
c003573a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003573d:	e9 bb fc ff ff       	jmp    c00353fd <_malloc_r+0x17d>
c0035742:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035748:	89 c1                	mov    %eax,%ecx
c003574a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003574d:	83 c9 01             	or     $0x1,%ecx
c0035750:	83 cf 01             	or     $0x1,%edi
c0035753:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035756:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c003575c:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0035762:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0035769:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0035770:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035773:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035776:	8b 45 08             	mov    0x8(%ebp),%eax
c0035779:	89 04 24             	mov    %eax,(%esp)
c003577c:	e8 ef 02 00 00       	call   c0035a70 <__malloc_unlock>
c0035781:	8d 43 08             	lea    0x8(%ebx),%eax
c0035784:	e9 6e fb ff ff       	jmp    c00352f7 <_malloc_r+0x77>
c0035789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035790:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035793:	e9 af fc ff ff       	jmp    c0035447 <_malloc_r+0x1c7>
c0035798:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c003579c:	83 c1 08             	add    $0x8,%ecx
c003579f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c00357a3:	0f 85 ad fc ff ff    	jne    c0035456 <_malloc_r+0x1d6>
c00357a9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00357ac:	eb 12                	jmp    c00357c0 <_malloc_r+0x540>
c00357ae:	66 90                	xchg   %ax,%ax
c00357b0:	8d 56 f8             	lea    -0x8(%esi),%edx
c00357b3:	8b 36                	mov    (%esi),%esi
c00357b5:	83 e8 01             	sub    $0x1,%eax
c00357b8:	39 d6                	cmp    %edx,%esi
c00357ba:	0f 85 ea 01 00 00    	jne    c00359aa <_malloc_r+0x72a>
c00357c0:	a8 03                	test   $0x3,%al
c00357c2:	75 ec                	jne    c00357b0 <_malloc_r+0x530>
c00357c4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00357c7:	f7 d0                	not    %eax
c00357c9:	23 05 44 d5 03 c0    	and    0xc003d544,%eax
c00357cf:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00357d4:	d1 65 dc             	shll   -0x24(%ebp)
c00357d7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00357da:	39 c2                	cmp    %eax,%edx
c00357dc:	0f 87 26 fd ff ff    	ja     c0035508 <_malloc_r+0x288>
c00357e2:	85 d2                	test   %edx,%edx
c00357e4:	0f 84 1e fd ff ff    	je     c0035508 <_malloc_r+0x288>
c00357ea:	85 c2                	test   %eax,%edx
c00357ec:	0f 85 c2 01 00 00    	jne    c00359b4 <_malloc_r+0x734>
c00357f2:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00357f5:	89 f1                	mov    %esi,%ecx
c00357f7:	01 d2                	add    %edx,%edx
c00357f9:	83 c1 04             	add    $0x4,%ecx
c00357fc:	85 d0                	test   %edx,%eax
c00357fe:	74 f7                	je     c00357f7 <_malloc_r+0x577>
c0035800:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035803:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0035806:	e9 3c fc ff ff       	jmp    c0035447 <_malloc_r+0x1c7>
c003580b:	90                   	nop
c003580c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035810:	8d 43 08             	lea    0x8(%ebx),%eax
c0035813:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035816:	39 d8                	cmp    %ebx,%eax
c0035818:	0f 85 b4 fa ff ff    	jne    c00352d2 <_malloc_r+0x52>
c003581e:	8d 42 02             	lea    0x2(%edx),%eax
c0035821:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035824:	e9 56 fb ff ff       	jmp    c003537f <_malloc_r+0xff>
c0035829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035830:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035835:	8b 53 08             	mov    0x8(%ebx),%edx
c0035838:	8b 43 0c             	mov    0xc(%ebx),%eax
c003583b:	89 42 0c             	mov    %eax,0xc(%edx)
c003583e:	89 50 08             	mov    %edx,0x8(%eax)
c0035841:	8b 45 08             	mov    0x8(%ebp),%eax
c0035844:	89 04 24             	mov    %eax,(%esp)
c0035847:	e8 24 02 00 00       	call   c0035a70 <__malloc_unlock>
c003584c:	8d 43 08             	lea    0x8(%ebx),%eax
c003584f:	e9 a3 fa ff ff       	jmp    c00352f7 <_malloc_r+0x77>
c0035854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035858:	83 c6 5b             	add    $0x5b,%esi
c003585b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003585e:	e9 de fa ff ff       	jmp    c0035341 <_malloc_r+0xc1>
c0035863:	89 f1                	mov    %esi,%ecx
c0035865:	c1 e9 06             	shr    $0x6,%ecx
c0035868:	83 c1 38             	add    $0x38,%ecx
c003586b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003586e:	e9 92 fe ff ff       	jmp    c0035705 <_malloc_r+0x485>
c0035873:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c0035879:	0f 84 f2 fc ff ff    	je     c0035571 <_malloc_r+0x2f1>
c003587f:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c0035885:	8b 53 04             	mov    0x4(%ebx),%edx
c0035888:	83 e2 fc             	and    $0xfffffffc,%edx
c003588b:	e9 de fd ff ff       	jmp    c003566e <_malloc_r+0x3ee>
c0035890:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0035896:	77 3c                	ja     c00358d4 <_malloc_r+0x654>
c0035898:	89 fe                	mov    %edi,%esi
c003589a:	c1 ee 0f             	shr    $0xf,%esi
c003589d:	83 c6 77             	add    $0x77,%esi
c00358a0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00358a3:	e9 99 fa ff ff       	jmp    c0035341 <_malloc_r+0xc1>
c00358a8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c00358af:	89 cb                	mov    %ecx,%ebx
c00358b1:	31 d2                	xor    %edx,%edx
c00358b3:	e9 b6 fd ff ff       	jmp    c003566e <_malloc_r+0x3ee>
c00358b8:	c1 f9 02             	sar    $0x2,%ecx
c00358bb:	b8 01 00 00 00       	mov    $0x1,%eax
c00358c0:	d3 e0                	shl    %cl,%eax
c00358c2:	89 d1                	mov    %edx,%ecx
c00358c4:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c00358ca:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00358cf:	e9 5d fe ff ff       	jmp    c0035731 <_malloc_r+0x4b1>
c00358d4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c00358da:	77 47                	ja     c0035923 <_malloc_r+0x6a3>
c00358dc:	89 fe                	mov    %edi,%esi
c00358de:	c1 ee 12             	shr    $0x12,%esi
c00358e1:	83 c6 7c             	add    $0x7c,%esi
c00358e4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00358e7:	e9 55 fa ff ff       	jmp    c0035341 <_malloc_r+0xc1>
c00358ec:	8b 45 08             	mov    0x8(%ebp),%eax
c00358ef:	83 c3 08             	add    $0x8,%ebx
c00358f2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00358f6:	89 04 24             	mov    %eax,(%esp)
c00358f9:	e8 c2 22 00 00       	call   c0037bc0 <_free_r>
c00358fe:	8b 15 20 00 07 c0    	mov    0xc0070020,%edx
c0035904:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035909:	e9 3c fd ff ff       	jmp    c003564a <_malloc_r+0x3ca>
c003590e:	83 f9 54             	cmp    $0x54,%ecx
c0035911:	77 58                	ja     c003596b <_malloc_r+0x6eb>
c0035913:	89 f1                	mov    %esi,%ecx
c0035915:	c1 e9 0c             	shr    $0xc,%ecx
c0035918:	83 c1 6e             	add    $0x6e,%ecx
c003591b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003591e:	e9 e2 fd ff ff       	jmp    c0035705 <_malloc_r+0x485>
c0035923:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035928:	be 7e 00 00 00       	mov    $0x7e,%esi
c003592d:	e9 0f fa ff ff       	jmp    c0035341 <_malloc_r+0xc1>
c0035932:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035939:	0f 85 4a fc ff ff    	jne    c0035589 <_malloc_r+0x309>
c003593f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035942:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035947:	01 f1                	add    %esi,%ecx
c0035949:	83 c9 01             	or     $0x1,%ecx
c003594c:	89 48 04             	mov    %ecx,0x4(%eax)
c003594f:	e9 f6 fc ff ff       	jmp    c003564a <_malloc_r+0x3ca>
c0035954:	b8 01 00 00 00       	mov    $0x1,%eax
c0035959:	31 d2                	xor    %edx,%edx
c003595b:	e9 91 fc ff ff       	jmp    c00355f1 <_malloc_r+0x371>
c0035960:	89 0d 20 d5 03 c0    	mov    %ecx,0xc003d520
c0035966:	e9 37 fc ff ff       	jmp    c00355a2 <_malloc_r+0x322>
c003596b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035971:	77 10                	ja     c0035983 <_malloc_r+0x703>
c0035973:	89 f1                	mov    %esi,%ecx
c0035975:	c1 e9 0f             	shr    $0xf,%ecx
c0035978:	83 c1 77             	add    $0x77,%ecx
c003597b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003597e:	e9 82 fd ff ff       	jmp    c0035705 <_malloc_r+0x485>
c0035983:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035989:	77 10                	ja     c003599b <_malloc_r+0x71b>
c003598b:	89 f1                	mov    %esi,%ecx
c003598d:	c1 e9 12             	shr    $0x12,%ecx
c0035990:	83 c1 7c             	add    $0x7c,%ecx
c0035993:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035996:	e9 6a fd ff ff       	jmp    c0035705 <_malloc_r+0x485>
c003599b:	b8 fc 00 00 00       	mov    $0xfc,%eax
c00359a0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c00359a5:	e9 5b fd ff ff       	jmp    c0035705 <_malloc_r+0x485>
c00359aa:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c00359af:	e9 20 fe ff ff       	jmp    c00357d4 <_malloc_r+0x554>
c00359b4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00359b7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00359ba:	e9 88 fa ff ff       	jmp    c0035447 <_malloc_r+0x1c7>
c00359bf:	90                   	nop

c00359c0 <memchr>:
c00359c0:	55                   	push   %ebp
c00359c1:	89 e5                	mov    %esp,%ebp
c00359c3:	57                   	push   %edi
c00359c4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c00359c8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c00359cb:	8b 7d 08             	mov    0x8(%ebp),%edi
c00359ce:	31 d2                	xor    %edx,%edx
c00359d0:	85 c9                	test   %ecx,%ecx
c00359d2:	74 79                	je     c0035a4d <L20>
c00359d4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c00359da:	74 28                	je     c0035a04 <L5>
c00359dc:	3a 07                	cmp    (%edi),%al
c00359de:	74 6a                	je     c0035a4a <L15>
c00359e0:	47                   	inc    %edi
c00359e1:	49                   	dec    %ecx
c00359e2:	74 69                	je     c0035a4d <L20>
c00359e4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c00359ea:	74 18                	je     c0035a04 <L5>
c00359ec:	3a 07                	cmp    (%edi),%al
c00359ee:	74 5a                	je     c0035a4a <L15>
c00359f0:	47                   	inc    %edi
c00359f1:	49                   	dec    %ecx
c00359f2:	74 59                	je     c0035a4d <L20>
c00359f4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c00359fa:	74 08                	je     c0035a04 <L5>
c00359fc:	3a 07                	cmp    (%edi),%al
c00359fe:	74 4a                	je     c0035a4a <L15>
c0035a00:	47                   	inc    %edi
c0035a01:	49                   	dec    %ecx
c0035a02:	74 49                	je     c0035a4d <L20>

c0035a04 <L5>:
c0035a04:	88 c4                	mov    %al,%ah
c0035a06:	89 c2                	mov    %eax,%edx
c0035a08:	c1 e2 10             	shl    $0x10,%edx
c0035a0b:	09 d0                	or     %edx,%eax
c0035a0d:	53                   	push   %ebx
c0035a0e:	66 90                	xchg   %ax,%ax

c0035a10 <L8>:
c0035a10:	83 e9 04             	sub    $0x4,%ecx
c0035a13:	72 1c                	jb     c0035a31 <L9>
c0035a15:	8b 17                	mov    (%edi),%edx
c0035a17:	83 c7 04             	add    $0x4,%edi
c0035a1a:	31 c2                	xor    %eax,%edx
c0035a1c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035a22:	f7 d2                	not    %edx
c0035a24:	21 d3                	and    %edx,%ebx
c0035a26:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035a2c:	74 e2                	je     c0035a10 <L8>
c0035a2e:	83 ef 04             	sub    $0x4,%edi

c0035a31 <L9>:
c0035a31:	5b                   	pop    %ebx
c0035a32:	31 d2                	xor    %edx,%edx
c0035a34:	83 c1 04             	add    $0x4,%ecx
c0035a37:	74 14                	je     c0035a4d <L20>
c0035a39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035a40 <L10>:
c0035a40:	3a 07                	cmp    (%edi),%al
c0035a42:	74 06                	je     c0035a4a <L15>
c0035a44:	47                   	inc    %edi
c0035a45:	49                   	dec    %ecx
c0035a46:	75 f8                	jne    c0035a40 <L10>
c0035a48:	31 ff                	xor    %edi,%edi

c0035a4a <L15>:
c0035a4a:	4a                   	dec    %edx
c0035a4b:	21 fa                	and    %edi,%edx

c0035a4d <L20>:
c0035a4d:	89 d0                	mov    %edx,%eax
c0035a4f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035a52:	5f                   	pop    %edi
c0035a53:	c9                   	leave  
c0035a54:	c3                   	ret    
c0035a55:	66 90                	xchg   %ax,%ax
c0035a57:	66 90                	xchg   %ax,%ax
c0035a59:	66 90                	xchg   %ax,%ax
c0035a5b:	66 90                	xchg   %ax,%ax
c0035a5d:	66 90                	xchg   %ax,%ax
c0035a5f:	90                   	nop

c0035a60 <__malloc_lock>:
c0035a60:	55                   	push   %ebp
c0035a61:	89 e5                	mov    %esp,%ebp
c0035a63:	5d                   	pop    %ebp
c0035a64:	c3                   	ret    
c0035a65:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035a69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035a70 <__malloc_unlock>:
c0035a70:	55                   	push   %ebp
c0035a71:	89 e5                	mov    %esp,%ebp
c0035a73:	5d                   	pop    %ebp
c0035a74:	c3                   	ret    
c0035a75:	66 90                	xchg   %ax,%ax
c0035a77:	66 90                	xchg   %ax,%ax
c0035a79:	66 90                	xchg   %ax,%ax
c0035a7b:	66 90                	xchg   %ax,%ax
c0035a7d:	66 90                	xchg   %ax,%ax
c0035a7f:	90                   	nop

c0035a80 <_Balloc>:
c0035a80:	55                   	push   %ebp
c0035a81:	89 e5                	mov    %esp,%ebp
c0035a83:	57                   	push   %edi
c0035a84:	56                   	push   %esi
c0035a85:	53                   	push   %ebx
c0035a86:	83 ec 1c             	sub    $0x1c,%esp
c0035a89:	8b 75 08             	mov    0x8(%ebp),%esi
c0035a8c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035a8f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035a92:	85 c0                	test   %eax,%eax
c0035a94:	74 2a                	je     c0035ac0 <_Balloc+0x40>
c0035a96:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035a99:	8b 02                	mov    (%edx),%eax
c0035a9b:	85 c0                	test   %eax,%eax
c0035a9d:	74 49                	je     c0035ae8 <_Balloc+0x68>
c0035a9f:	8b 08                	mov    (%eax),%ecx
c0035aa1:	89 0a                	mov    %ecx,(%edx)
c0035aa3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035aaa:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035ab1:	83 c4 1c             	add    $0x1c,%esp
c0035ab4:	5b                   	pop    %ebx
c0035ab5:	5e                   	pop    %esi
c0035ab6:	5f                   	pop    %edi
c0035ab7:	5d                   	pop    %ebp
c0035ab8:	c3                   	ret    
c0035ab9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035ac0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035ac7:	00 
c0035ac8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035acf:	00 
c0035ad0:	89 34 24             	mov    %esi,(%esp)
c0035ad3:	e8 38 1f 00 00       	call   c0037a10 <_calloc_r>
c0035ad8:	85 c0                	test   %eax,%eax
c0035ada:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035add:	75 b7                	jne    c0035a96 <_Balloc+0x16>
c0035adf:	31 c0                	xor    %eax,%eax
c0035ae1:	eb ce                	jmp    c0035ab1 <_Balloc+0x31>
c0035ae3:	90                   	nop
c0035ae4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035ae8:	89 d9                	mov    %ebx,%ecx
c0035aea:	bf 01 00 00 00       	mov    $0x1,%edi
c0035aef:	d3 e7                	shl    %cl,%edi
c0035af1:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035af8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035afc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035b03:	00 
c0035b04:	89 34 24             	mov    %esi,(%esp)
c0035b07:	e8 04 1f 00 00       	call   c0037a10 <_calloc_r>
c0035b0c:	85 c0                	test   %eax,%eax
c0035b0e:	74 cf                	je     c0035adf <_Balloc+0x5f>
c0035b10:	89 58 04             	mov    %ebx,0x4(%eax)
c0035b13:	89 78 08             	mov    %edi,0x8(%eax)
c0035b16:	eb 8b                	jmp    c0035aa3 <_Balloc+0x23>
c0035b18:	90                   	nop
c0035b19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035b20 <_Bfree>:
c0035b20:	55                   	push   %ebp
c0035b21:	89 e5                	mov    %esp,%ebp
c0035b23:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035b26:	85 c0                	test   %eax,%eax
c0035b28:	74 12                	je     c0035b3c <_Bfree+0x1c>
c0035b2a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035b2d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035b30:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035b33:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035b36:	8b 0a                	mov    (%edx),%ecx
c0035b38:	89 08                	mov    %ecx,(%eax)
c0035b3a:	89 02                	mov    %eax,(%edx)
c0035b3c:	5d                   	pop    %ebp
c0035b3d:	c3                   	ret    
c0035b3e:	66 90                	xchg   %ax,%ax

c0035b40 <__multadd>:
c0035b40:	55                   	push   %ebp
c0035b41:	89 e5                	mov    %esp,%ebp
c0035b43:	57                   	push   %edi
c0035b44:	56                   	push   %esi
c0035b45:	53                   	push   %ebx
c0035b46:	83 ec 2c             	sub    $0x2c,%esp
c0035b49:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035b4c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035b4f:	8b 40 10             	mov    0x10(%eax),%eax
c0035b52:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035b55:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035b58:	8d 78 14             	lea    0x14(%eax),%edi
c0035b5b:	31 c0                	xor    %eax,%eax
c0035b5d:	8d 76 00             	lea    0x0(%esi),%esi
c0035b60:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035b63:	0f b7 d1             	movzwl %cx,%edx
c0035b66:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035b6a:	c1 e9 10             	shr    $0x10,%ecx
c0035b6d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035b71:	01 da                	add    %ebx,%edx
c0035b73:	89 d3                	mov    %edx,%ebx
c0035b75:	0f b7 d2             	movzwl %dx,%edx
c0035b78:	c1 eb 10             	shr    $0x10,%ebx
c0035b7b:	01 d9                	add    %ebx,%ecx
c0035b7d:	89 ce                	mov    %ecx,%esi
c0035b7f:	c1 e1 10             	shl    $0x10,%ecx
c0035b82:	01 d1                	add    %edx,%ecx
c0035b84:	c1 ee 10             	shr    $0x10,%esi
c0035b87:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035b8a:	83 c0 01             	add    $0x1,%eax
c0035b8d:	89 f3                	mov    %esi,%ebx
c0035b8f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035b92:	7f cc                	jg     c0035b60 <__multadd+0x20>
c0035b94:	85 f6                	test   %esi,%esi
c0035b96:	74 1b                	je     c0035bb3 <__multadd+0x73>
c0035b98:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035b9b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035b9e:	3b 78 08             	cmp    0x8(%eax),%edi
c0035ba1:	7d 1d                	jge    c0035bc0 <__multadd+0x80>
c0035ba3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035ba6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035ba9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035bad:	83 c0 01             	add    $0x1,%eax
c0035bb0:	89 47 10             	mov    %eax,0x10(%edi)
c0035bb3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035bb6:	83 c4 2c             	add    $0x2c,%esp
c0035bb9:	5b                   	pop    %ebx
c0035bba:	5e                   	pop    %esi
c0035bbb:	5f                   	pop    %edi
c0035bbc:	5d                   	pop    %ebp
c0035bbd:	c3                   	ret    
c0035bbe:	66 90                	xchg   %ax,%ax
c0035bc0:	8b 40 04             	mov    0x4(%eax),%eax
c0035bc3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035bc6:	83 c0 01             	add    $0x1,%eax
c0035bc9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035bcd:	8b 45 08             	mov    0x8(%ebp),%eax
c0035bd0:	89 04 24             	mov    %eax,(%esp)
c0035bd3:	e8 a8 fe ff ff       	call   c0035a80 <_Balloc>
c0035bd8:	89 c3                	mov    %eax,%ebx
c0035bda:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035bdd:	8b 40 10             	mov    0x10(%eax),%eax
c0035be0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035be7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035beb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035bee:	83 c0 0c             	add    $0xc,%eax
c0035bf1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035bf5:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035bf8:	89 04 24             	mov    %eax,(%esp)
c0035bfb:	e8 c4 c0 ff ff       	call   c0031cc4 <memcpy>
c0035c00:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c03:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035c06:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035c09:	8b 50 04             	mov    0x4(%eax),%edx
c0035c0c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035c0f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035c12:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035c15:	8b 10                	mov    (%eax),%edx
c0035c17:	89 17                	mov    %edx,(%edi)
c0035c19:	89 38                	mov    %edi,(%eax)
c0035c1b:	eb 86                	jmp    c0035ba3 <__multadd+0x63>
c0035c1d:	8d 76 00             	lea    0x0(%esi),%esi

c0035c20 <__s2b>:
c0035c20:	55                   	push   %ebp
c0035c21:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035c26:	89 e5                	mov    %esp,%ebp
c0035c28:	57                   	push   %edi
c0035c29:	56                   	push   %esi
c0035c2a:	53                   	push   %ebx
c0035c2b:	83 ec 2c             	sub    $0x2c,%esp
c0035c2e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035c31:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035c34:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035c37:	8d 48 08             	lea    0x8(%eax),%ecx
c0035c3a:	89 c8                	mov    %ecx,%eax
c0035c3c:	f7 ea                	imul   %edx
c0035c3e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035c41:	d1 fa                	sar    %edx
c0035c43:	29 ca                	sub    %ecx,%edx
c0035c45:	83 fa 01             	cmp    $0x1,%edx
c0035c48:	0f 8e be 00 00 00    	jle    c0035d0c <__s2b+0xec>
c0035c4e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035c53:	31 c9                	xor    %ecx,%ecx
c0035c55:	8d 76 00             	lea    0x0(%esi),%esi
c0035c58:	01 c0                	add    %eax,%eax
c0035c5a:	83 c1 01             	add    $0x1,%ecx
c0035c5d:	39 c2                	cmp    %eax,%edx
c0035c5f:	7f f7                	jg     c0035c58 <__s2b+0x38>
c0035c61:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035c65:	89 1c 24             	mov    %ebx,(%esp)
c0035c68:	e8 13 fe ff ff       	call   c0035a80 <_Balloc>
c0035c6d:	8b 55 18             	mov    0x18(%ebp),%edx
c0035c70:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035c74:	89 50 14             	mov    %edx,0x14(%eax)
c0035c77:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035c7e:	0f 8e 7c 00 00 00    	jle    c0035d00 <__s2b+0xe0>
c0035c84:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035c87:	03 75 10             	add    0x10(%ebp),%esi
c0035c8a:	89 cf                	mov    %ecx,%edi
c0035c8c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035c8f:	90                   	nop
c0035c90:	83 c7 01             	add    $0x1,%edi
c0035c93:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035c97:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035c9e:	00 
c0035c9f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035ca3:	89 1c 24             	mov    %ebx,(%esp)
c0035ca6:	83 ea 30             	sub    $0x30,%edx
c0035ca9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035cad:	e8 8e fe ff ff       	call   c0035b40 <__multadd>
c0035cb2:	39 f7                	cmp    %esi,%edi
c0035cb4:	75 da                	jne    c0035c90 <__s2b+0x70>
c0035cb6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035cb9:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035cbc:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035cc0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035cc3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035cc6:	7e 2e                	jle    c0035cf6 <__s2b+0xd6>
c0035cc8:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035ccb:	29 cf                	sub    %ecx,%edi
c0035ccd:	01 f7                	add    %esi,%edi
c0035ccf:	90                   	nop
c0035cd0:	83 c6 01             	add    $0x1,%esi
c0035cd3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035cd7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035cde:	00 
c0035cdf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035ce3:	89 1c 24             	mov    %ebx,(%esp)
c0035ce6:	83 ea 30             	sub    $0x30,%edx
c0035ce9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035ced:	e8 4e fe ff ff       	call   c0035b40 <__multadd>
c0035cf2:	39 fe                	cmp    %edi,%esi
c0035cf4:	75 da                	jne    c0035cd0 <__s2b+0xb0>
c0035cf6:	83 c4 2c             	add    $0x2c,%esp
c0035cf9:	5b                   	pop    %ebx
c0035cfa:	5e                   	pop    %esi
c0035cfb:	5f                   	pop    %edi
c0035cfc:	5d                   	pop    %ebp
c0035cfd:	c3                   	ret    
c0035cfe:	66 90                	xchg   %ax,%ax
c0035d00:	83 c6 0a             	add    $0xa,%esi
c0035d03:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035d0a:	eb b4                	jmp    c0035cc0 <__s2b+0xa0>
c0035d0c:	31 c9                	xor    %ecx,%ecx
c0035d0e:	e9 4e ff ff ff       	jmp    c0035c61 <__s2b+0x41>
c0035d13:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035d19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035d20 <__hi0bits>:
c0035d20:	55                   	push   %ebp
c0035d21:	31 c9                	xor    %ecx,%ecx
c0035d23:	89 e5                	mov    %esp,%ebp
c0035d25:	8b 55 08             	mov    0x8(%ebp),%edx
c0035d28:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035d2e:	75 05                	jne    c0035d35 <__hi0bits+0x15>
c0035d30:	c1 e2 10             	shl    $0x10,%edx
c0035d33:	b1 10                	mov    $0x10,%cl
c0035d35:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035d3b:	75 06                	jne    c0035d43 <__hi0bits+0x23>
c0035d3d:	83 c1 08             	add    $0x8,%ecx
c0035d40:	c1 e2 08             	shl    $0x8,%edx
c0035d43:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035d49:	75 06                	jne    c0035d51 <__hi0bits+0x31>
c0035d4b:	83 c1 04             	add    $0x4,%ecx
c0035d4e:	c1 e2 04             	shl    $0x4,%edx
c0035d51:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035d57:	75 06                	jne    c0035d5f <__hi0bits+0x3f>
c0035d59:	83 c1 02             	add    $0x2,%ecx
c0035d5c:	c1 e2 02             	shl    $0x2,%edx
c0035d5f:	85 d2                	test   %edx,%edx
c0035d61:	89 c8                	mov    %ecx,%eax
c0035d63:	78 0d                	js     c0035d72 <__hi0bits+0x52>
c0035d65:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035d6b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035d70:	75 06                	jne    c0035d78 <__hi0bits+0x58>
c0035d72:	5d                   	pop    %ebp
c0035d73:	c3                   	ret    
c0035d74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035d78:	8d 41 01             	lea    0x1(%ecx),%eax
c0035d7b:	5d                   	pop    %ebp
c0035d7c:	c3                   	ret    
c0035d7d:	8d 76 00             	lea    0x0(%esi),%esi

c0035d80 <__lo0bits>:
c0035d80:	55                   	push   %ebp
c0035d81:	89 e5                	mov    %esp,%ebp
c0035d83:	53                   	push   %ebx
c0035d84:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035d87:	8b 13                	mov    (%ebx),%edx
c0035d89:	f6 c2 07             	test   $0x7,%dl
c0035d8c:	74 1a                	je     c0035da8 <__lo0bits+0x28>
c0035d8e:	31 c0                	xor    %eax,%eax
c0035d90:	f6 c2 01             	test   $0x1,%dl
c0035d93:	75 0f                	jne    c0035da4 <__lo0bits+0x24>
c0035d95:	f6 c2 02             	test   $0x2,%dl
c0035d98:	75 56                	jne    c0035df0 <__lo0bits+0x70>
c0035d9a:	c1 ea 02             	shr    $0x2,%edx
c0035d9d:	b8 02 00 00 00       	mov    $0x2,%eax
c0035da2:	89 13                	mov    %edx,(%ebx)
c0035da4:	5b                   	pop    %ebx
c0035da5:	5d                   	pop    %ebp
c0035da6:	c3                   	ret    
c0035da7:	90                   	nop
c0035da8:	31 c9                	xor    %ecx,%ecx
c0035daa:	66 85 d2             	test   %dx,%dx
c0035dad:	75 05                	jne    c0035db4 <__lo0bits+0x34>
c0035daf:	c1 ea 10             	shr    $0x10,%edx
c0035db2:	b1 10                	mov    $0x10,%cl
c0035db4:	84 d2                	test   %dl,%dl
c0035db6:	75 06                	jne    c0035dbe <__lo0bits+0x3e>
c0035db8:	83 c1 08             	add    $0x8,%ecx
c0035dbb:	c1 ea 08             	shr    $0x8,%edx
c0035dbe:	f6 c2 0f             	test   $0xf,%dl
c0035dc1:	75 06                	jne    c0035dc9 <__lo0bits+0x49>
c0035dc3:	83 c1 04             	add    $0x4,%ecx
c0035dc6:	c1 ea 04             	shr    $0x4,%edx
c0035dc9:	f6 c2 03             	test   $0x3,%dl
c0035dcc:	75 06                	jne    c0035dd4 <__lo0bits+0x54>
c0035dce:	83 c1 02             	add    $0x2,%ecx
c0035dd1:	c1 ea 02             	shr    $0x2,%edx
c0035dd4:	f6 c2 01             	test   $0x1,%dl
c0035dd7:	75 0c                	jne    c0035de5 <__lo0bits+0x65>
c0035dd9:	d1 ea                	shr    %edx
c0035ddb:	b8 20 00 00 00       	mov    $0x20,%eax
c0035de0:	74 c2                	je     c0035da4 <__lo0bits+0x24>
c0035de2:	83 c1 01             	add    $0x1,%ecx
c0035de5:	89 13                	mov    %edx,(%ebx)
c0035de7:	89 c8                	mov    %ecx,%eax
c0035de9:	5b                   	pop    %ebx
c0035dea:	5d                   	pop    %ebp
c0035deb:	c3                   	ret    
c0035dec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035df0:	d1 ea                	shr    %edx
c0035df2:	b0 01                	mov    $0x1,%al
c0035df4:	89 13                	mov    %edx,(%ebx)
c0035df6:	5b                   	pop    %ebx
c0035df7:	5d                   	pop    %ebp
c0035df8:	c3                   	ret    
c0035df9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035e00 <__i2b>:
c0035e00:	55                   	push   %ebp
c0035e01:	89 e5                	mov    %esp,%ebp
c0035e03:	83 ec 18             	sub    $0x18,%esp
c0035e06:	8b 45 08             	mov    0x8(%ebp),%eax
c0035e09:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035e10:	00 
c0035e11:	89 04 24             	mov    %eax,(%esp)
c0035e14:	e8 67 fc ff ff       	call   c0035a80 <_Balloc>
c0035e19:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035e1c:	89 50 14             	mov    %edx,0x14(%eax)
c0035e1f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035e26:	c9                   	leave  
c0035e27:	c3                   	ret    
c0035e28:	90                   	nop
c0035e29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035e30 <__multiply>:
c0035e30:	55                   	push   %ebp
c0035e31:	89 e5                	mov    %esp,%ebp
c0035e33:	57                   	push   %edi
c0035e34:	56                   	push   %esi
c0035e35:	53                   	push   %ebx
c0035e36:	83 ec 3c             	sub    $0x3c,%esp
c0035e39:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035e3c:	8b 45 10             	mov    0x10(%ebp),%eax
c0035e3f:	8b 7e 10             	mov    0x10(%esi),%edi
c0035e42:	8b 58 10             	mov    0x10(%eax),%ebx
c0035e45:	39 df                	cmp    %ebx,%edi
c0035e47:	7d 0e                	jge    c0035e57 <__multiply+0x27>
c0035e49:	89 f8                	mov    %edi,%eax
c0035e4b:	89 df                	mov    %ebx,%edi
c0035e4d:	89 c3                	mov    %eax,%ebx
c0035e4f:	89 f0                	mov    %esi,%eax
c0035e51:	8b 75 10             	mov    0x10(%ebp),%esi
c0035e54:	89 45 10             	mov    %eax,0x10(%ebp)
c0035e57:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035e5a:	3b 46 08             	cmp    0x8(%esi),%eax
c0035e5d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0035e60:	0f 9f c0             	setg   %al
c0035e63:	0f b6 c0             	movzbl %al,%eax
c0035e66:	03 46 04             	add    0x4(%esi),%eax
c0035e69:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e6d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035e70:	89 04 24             	mov    %eax,(%esp)
c0035e73:	e8 08 fc ff ff       	call   c0035a80 <_Balloc>
c0035e78:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035e7b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035e7e:	8d 40 14             	lea    0x14(%eax),%eax
c0035e81:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0035e84:	89 d1                	mov    %edx,%ecx
c0035e86:	39 c8                	cmp    %ecx,%eax
c0035e88:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035e8b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c0035e8e:	73 15                	jae    c0035ea5 <__multiply+0x75>
c0035e90:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0035e93:	90                   	nop
c0035e94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035e98:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0035e9e:	83 c0 04             	add    $0x4,%eax
c0035ea1:	39 c2                	cmp    %eax,%edx
c0035ea3:	77 f3                	ja     c0035e98 <__multiply+0x68>
c0035ea5:	8d 46 14             	lea    0x14(%esi),%eax
c0035ea8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0035eab:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c0035eae:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0035eb1:	8b 45 10             	mov    0x10(%ebp),%eax
c0035eb4:	83 c0 14             	add    $0x14,%eax
c0035eb7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c0035eba:	39 f8                	cmp    %edi,%eax
c0035ebc:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0035ebf:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0035ec2:	0f 83 e8 00 00 00    	jae    c0035fb0 <__multiply+0x180>
c0035ec8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0035ecb:	8b 00                	mov    (%eax),%eax
c0035ecd:	0f b7 f8             	movzwl %ax,%edi
c0035ed0:	85 ff                	test   %edi,%edi
c0035ed2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0035ed5:	74 5a                	je     c0035f31 <__multiply+0x101>
c0035ed7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0035eda:	31 db                	xor    %ebx,%ebx
c0035edc:	8b 75 d0             	mov    -0x30(%ebp),%esi
c0035edf:	eb 09                	jmp    c0035eea <__multiply+0xba>
c0035ee1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035ee8:	89 fa                	mov    %edi,%edx
c0035eea:	8b 0e                	mov    (%esi),%ecx
c0035eec:	83 c6 04             	add    $0x4,%esi
c0035eef:	0f b7 3a             	movzwl (%edx),%edi
c0035ef2:	0f b7 c1             	movzwl %cx,%eax
c0035ef5:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0035ef9:	c1 e9 10             	shr    $0x10,%ecx
c0035efc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0035f00:	01 f8                	add    %edi,%eax
c0035f02:	01 d8                	add    %ebx,%eax
c0035f04:	8b 1a                	mov    (%edx),%ebx
c0035f06:	8d 7a 04             	lea    0x4(%edx),%edi
c0035f09:	c1 eb 10             	shr    $0x10,%ebx
c0035f0c:	01 d9                	add    %ebx,%ecx
c0035f0e:	89 c3                	mov    %eax,%ebx
c0035f10:	c1 eb 10             	shr    $0x10,%ebx
c0035f13:	0f b7 c0             	movzwl %ax,%eax
c0035f16:	01 d9                	add    %ebx,%ecx
c0035f18:	89 cb                	mov    %ecx,%ebx
c0035f1a:	c1 e1 10             	shl    $0x10,%ecx
c0035f1d:	09 c1                	or     %eax,%ecx
c0035f1f:	c1 eb 10             	shr    $0x10,%ebx
c0035f22:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0035f25:	89 0a                	mov    %ecx,(%edx)
c0035f27:	77 bf                	ja     c0035ee8 <__multiply+0xb8>
c0035f29:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0035f2c:	89 5a 04             	mov    %ebx,0x4(%edx)
c0035f2f:	8b 00                	mov    (%eax),%eax
c0035f31:	c1 e8 10             	shr    $0x10,%eax
c0035f34:	85 c0                	test   %eax,%eax
c0035f36:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035f39:	74 61                	je     c0035f9c <__multiply+0x16c>
c0035f3b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0035f3e:	31 ff                	xor    %edi,%edi
c0035f40:	89 fe                	mov    %edi,%esi
c0035f42:	8b 10                	mov    (%eax),%edx
c0035f44:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035f47:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0035f4a:	89 d3                	mov    %edx,%ebx
c0035f4c:	eb 05                	jmp    c0035f53 <__multiply+0x123>
c0035f4e:	66 90                	xchg   %ax,%ax
c0035f50:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0035f53:	0f b7 08             	movzwl (%eax),%ecx
c0035f56:	c1 eb 10             	shr    $0x10,%ebx
c0035f59:	0f b7 d2             	movzwl %dx,%edx
c0035f5c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0035f60:	83 c0 04             	add    $0x4,%eax
c0035f63:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0035f66:	01 f7                	add    %esi,%edi
c0035f68:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0035f6b:	89 fb                	mov    %edi,%ebx
c0035f6d:	c1 e3 10             	shl    $0x10,%ebx
c0035f70:	09 d3                	or     %edx,%ebx
c0035f72:	89 1e                	mov    %ebx,(%esi)
c0035f74:	8b 5e 04             	mov    0x4(%esi),%ebx
c0035f77:	8d 4e 04             	lea    0x4(%esi),%ecx
c0035f7a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c0035f7e:	c1 ef 10             	shr    $0x10,%edi
c0035f81:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0035f85:	0f b7 f3             	movzwl %bx,%esi
c0035f88:	01 f2                	add    %esi,%edx
c0035f8a:	01 fa                	add    %edi,%edx
c0035f8c:	89 d6                	mov    %edx,%esi
c0035f8e:	c1 ee 10             	shr    $0x10,%esi
c0035f91:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0035f94:	77 ba                	ja     c0035f50 <__multiply+0x120>
c0035f96:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035f99:	89 50 04             	mov    %edx,0x4(%eax)
c0035f9c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0035fa0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0035fa3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0035fa7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c0035faa:	0f 87 18 ff ff ff    	ja     c0035ec8 <__multiply+0x98>
c0035fb0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0035fb3:	85 f6                	test   %esi,%esi
c0035fb5:	7e 29                	jle    c0035fe0 <__multiply+0x1b0>
c0035fb7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0035fba:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0035fbd:	85 db                	test   %ebx,%ebx
c0035fbf:	75 1f                	jne    c0035fe0 <__multiply+0x1b0>
c0035fc1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035fc4:	89 d0                	mov    %edx,%eax
c0035fc6:	c1 e0 02             	shl    $0x2,%eax
c0035fc9:	29 c7                	sub    %eax,%edi
c0035fcb:	89 f8                	mov    %edi,%eax
c0035fcd:	eb 09                	jmp    c0035fd8 <__multiply+0x1a8>
c0035fcf:	90                   	nop
c0035fd0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0035fd4:	85 c9                	test   %ecx,%ecx
c0035fd6:	75 05                	jne    c0035fdd <__multiply+0x1ad>
c0035fd8:	83 ea 01             	sub    $0x1,%edx
c0035fdb:	75 f3                	jne    c0035fd0 <__multiply+0x1a0>
c0035fdd:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0035fe0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0035fe3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0035fe6:	89 78 10             	mov    %edi,0x10(%eax)
c0035fe9:	83 c4 3c             	add    $0x3c,%esp
c0035fec:	5b                   	pop    %ebx
c0035fed:	5e                   	pop    %esi
c0035fee:	5f                   	pop    %edi
c0035fef:	5d                   	pop    %ebp
c0035ff0:	c3                   	ret    
c0035ff1:	eb 0d                	jmp    c0036000 <__pow5mult>
c0035ff3:	90                   	nop
c0035ff4:	90                   	nop
c0035ff5:	90                   	nop
c0035ff6:	90                   	nop
c0035ff7:	90                   	nop
c0035ff8:	90                   	nop
c0035ff9:	90                   	nop
c0035ffa:	90                   	nop
c0035ffb:	90                   	nop
c0035ffc:	90                   	nop
c0035ffd:	90                   	nop
c0035ffe:	90                   	nop
c0035fff:	90                   	nop

c0036000 <__pow5mult>:
c0036000:	55                   	push   %ebp
c0036001:	89 e5                	mov    %esp,%ebp
c0036003:	57                   	push   %edi
c0036004:	56                   	push   %esi
c0036005:	53                   	push   %ebx
c0036006:	83 ec 2c             	sub    $0x2c,%esp
c0036009:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003600c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003600f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036012:	89 d8                	mov    %ebx,%eax
c0036014:	83 e0 03             	and    $0x3,%eax
c0036017:	0f 85 a3 00 00 00    	jne    c00360c0 <__pow5mult+0xc0>
c003601d:	c1 fb 02             	sar    $0x2,%ebx
c0036020:	85 db                	test   %ebx,%ebx
c0036022:	74 5c                	je     c0036080 <__pow5mult+0x80>
c0036024:	8b 71 48             	mov    0x48(%ecx),%esi
c0036027:	85 f6                	test   %esi,%esi
c0036029:	0f 84 bd 00 00 00    	je     c00360ec <__pow5mult+0xec>
c003602f:	f6 c3 01             	test   $0x1,%bl
c0036032:	75 15                	jne    c0036049 <__pow5mult+0x49>
c0036034:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036038:	d1 fb                	sar    %ebx
c003603a:	74 44                	je     c0036080 <__pow5mult+0x80>
c003603c:	8b 06                	mov    (%esi),%eax
c003603e:	85 c0                	test   %eax,%eax
c0036040:	74 4e                	je     c0036090 <__pow5mult+0x90>
c0036042:	89 c6                	mov    %eax,%esi
c0036044:	f6 c3 01             	test   $0x1,%bl
c0036047:	74 ef                	je     c0036038 <__pow5mult+0x38>
c0036049:	89 0c 24             	mov    %ecx,(%esp)
c003604c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036050:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036054:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036057:	e8 d4 fd ff ff       	call   c0035e30 <__multiply>
c003605c:	85 ff                	test   %edi,%edi
c003605e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036061:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036064:	74 52                	je     c00360b8 <__pow5mult+0xb8>
c0036066:	8b 57 04             	mov    0x4(%edi),%edx
c0036069:	d1 fb                	sar    %ebx
c003606b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003606e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036071:	8b 10                	mov    (%eax),%edx
c0036073:	89 17                	mov    %edx,(%edi)
c0036075:	89 38                	mov    %edi,(%eax)
c0036077:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003607a:	75 c0                	jne    c003603c <__pow5mult+0x3c>
c003607c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036080:	83 c4 2c             	add    $0x2c,%esp
c0036083:	89 f8                	mov    %edi,%eax
c0036085:	5b                   	pop    %ebx
c0036086:	5e                   	pop    %esi
c0036087:	5f                   	pop    %edi
c0036088:	5d                   	pop    %ebp
c0036089:	c3                   	ret    
c003608a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036090:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036094:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036098:	89 0c 24             	mov    %ecx,(%esp)
c003609b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003609e:	e8 8d fd ff ff       	call   c0035e30 <__multiply>
c00360a3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00360a6:	89 06                	mov    %eax,(%esi)
c00360a8:	89 c6                	mov    %eax,%esi
c00360aa:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00360b0:	eb 92                	jmp    c0036044 <__pow5mult+0x44>
c00360b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00360b8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00360bb:	e9 78 ff ff ff       	jmp    c0036038 <__pow5mult+0x38>
c00360c0:	8b 04 85 9c 9a 03 c0 	mov    -0x3ffc6564(,%eax,4),%eax
c00360c7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00360cb:	89 0c 24             	mov    %ecx,(%esp)
c00360ce:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00360d5:	00 
c00360d6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00360da:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00360dd:	e8 5e fa ff ff       	call   c0035b40 <__multadd>
c00360e2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00360e5:	89 c7                	mov    %eax,%edi
c00360e7:	e9 31 ff ff ff       	jmp    c003601d <__pow5mult+0x1d>
c00360ec:	89 0c 24             	mov    %ecx,(%esp)
c00360ef:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00360f6:	00 
c00360f7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00360fa:	e8 81 f9 ff ff       	call   c0035a80 <_Balloc>
c00360ff:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036102:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0036109:	89 c6                	mov    %eax,%esi
c003610b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036112:	89 41 48             	mov    %eax,0x48(%ecx)
c0036115:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003611b:	e9 0f ff ff ff       	jmp    c003602f <__pow5mult+0x2f>

c0036120 <__lshift>:
c0036120:	55                   	push   %ebp
c0036121:	89 e5                	mov    %esp,%ebp
c0036123:	57                   	push   %edi
c0036124:	56                   	push   %esi
c0036125:	53                   	push   %ebx
c0036126:	83 ec 2c             	sub    $0x2c,%esp
c0036129:	8b 45 0c             	mov    0xc(%ebp),%eax
c003612c:	8b 75 10             	mov    0x10(%ebp),%esi
c003612f:	89 c7                	mov    %eax,%edi
c0036131:	8b 50 04             	mov    0x4(%eax),%edx
c0036134:	8b 40 10             	mov    0x10(%eax),%eax
c0036137:	89 f3                	mov    %esi,%ebx
c0036139:	c1 fb 05             	sar    $0x5,%ebx
c003613c:	01 d8                	add    %ebx,%eax
c003613e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036141:	83 c0 01             	add    $0x1,%eax
c0036144:	89 c1                	mov    %eax,%ecx
c0036146:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036149:	8b 47 08             	mov    0x8(%edi),%eax
c003614c:	39 c1                	cmp    %eax,%ecx
c003614e:	7e 09                	jle    c0036159 <__lshift+0x39>
c0036150:	01 c0                	add    %eax,%eax
c0036152:	83 c2 01             	add    $0x1,%edx
c0036155:	39 c1                	cmp    %eax,%ecx
c0036157:	7f f7                	jg     c0036150 <__lshift+0x30>
c0036159:	8b 45 08             	mov    0x8(%ebp),%eax
c003615c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036160:	89 04 24             	mov    %eax,(%esp)
c0036163:	e8 18 f9 ff ff       	call   c0035a80 <_Balloc>
c0036168:	85 db                	test   %ebx,%ebx
c003616a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003616d:	8d 50 14             	lea    0x14(%eax),%edx
c0036170:	7e 17                	jle    c0036189 <__lshift+0x69>
c0036172:	31 c0                	xor    %eax,%eax
c0036174:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036178:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003617f:	83 c0 01             	add    $0x1,%eax
c0036182:	39 d8                	cmp    %ebx,%eax
c0036184:	75 f2                	jne    c0036178 <__lshift+0x58>
c0036186:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036189:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003618c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003618f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036192:	83 c0 14             	add    $0x14,%eax
c0036195:	83 e6 1f             	and    $0x1f,%esi
c0036198:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003619b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c003619e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00361a1:	74 7d                	je     c0036220 <__lshift+0x100>
c00361a3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c00361aa:	29 75 dc             	sub    %esi,-0x24(%ebp)
c00361ad:	31 f6                	xor    %esi,%esi
c00361af:	eb 09                	jmp    c00361ba <__lshift+0x9a>
c00361b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00361b8:	89 fa                	mov    %edi,%edx
c00361ba:	8b 18                	mov    (%eax),%ebx
c00361bc:	83 c0 04             	add    $0x4,%eax
c00361bf:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00361c3:	8d 7a 04             	lea    0x4(%edx),%edi
c00361c6:	d3 e3                	shl    %cl,%ebx
c00361c8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c00361cc:	09 f3                	or     %esi,%ebx
c00361ce:	89 1a                	mov    %ebx,(%edx)
c00361d0:	8b 70 fc             	mov    -0x4(%eax),%esi
c00361d3:	d3 ee                	shr    %cl,%esi
c00361d5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00361d8:	77 de                	ja     c00361b8 <__lshift+0x98>
c00361da:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00361dd:	89 72 04             	mov    %esi,0x4(%edx)
c00361e0:	83 c0 02             	add    $0x2,%eax
c00361e3:	85 f6                	test   %esi,%esi
c00361e5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c00361e9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00361ec:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00361ef:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00361f2:	8b 75 0c             	mov    0xc(%ebp),%esi
c00361f5:	83 e8 01             	sub    $0x1,%eax
c00361f8:	89 47 10             	mov    %eax,0x10(%edi)
c00361fb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00361fe:	8b 50 04             	mov    0x4(%eax),%edx
c0036201:	8b 45 08             	mov    0x8(%ebp),%eax
c0036204:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036207:	8d 04 90             	lea    (%eax,%edx,4),%eax
c003620a:	8b 10                	mov    (%eax),%edx
c003620c:	89 16                	mov    %edx,(%esi)
c003620e:	89 30                	mov    %esi,(%eax)
c0036210:	83 c4 2c             	add    $0x2c,%esp
c0036213:	89 f8                	mov    %edi,%eax
c0036215:	5b                   	pop    %ebx
c0036216:	5e                   	pop    %esi
c0036217:	5f                   	pop    %edi
c0036218:	5d                   	pop    %ebp
c0036219:	c3                   	ret    
c003621a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036220:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036223:	90                   	nop
c0036224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036228:	83 c0 04             	add    $0x4,%eax
c003622b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003622e:	83 c2 04             	add    $0x4,%edx
c0036231:	39 c3                	cmp    %eax,%ebx
c0036233:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036236:	77 f0                	ja     c0036228 <__lshift+0x108>
c0036238:	eb b2                	jmp    c00361ec <__lshift+0xcc>
c003623a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036240 <__mcmp>:
c0036240:	55                   	push   %ebp
c0036241:	89 e5                	mov    %esp,%ebp
c0036243:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036246:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036249:	53                   	push   %ebx
c003624a:	8b 41 10             	mov    0x10(%ecx),%eax
c003624d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036250:	29 d8                	sub    %ebx,%eax
c0036252:	85 c0                	test   %eax,%eax
c0036254:	75 27                	jne    c003627d <__mcmp+0x3d>
c0036256:	c1 e3 02             	shl    $0x2,%ebx
c0036259:	83 c1 14             	add    $0x14,%ecx
c003625c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003625f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036263:	eb 07                	jmp    c003626c <__mcmp+0x2c>
c0036265:	8d 76 00             	lea    0x0(%esi),%esi
c0036268:	39 c1                	cmp    %eax,%ecx
c003626a:	73 14                	jae    c0036280 <__mcmp+0x40>
c003626c:	83 ea 04             	sub    $0x4,%edx
c003626f:	83 e8 04             	sub    $0x4,%eax
c0036272:	8b 1a                	mov    (%edx),%ebx
c0036274:	39 18                	cmp    %ebx,(%eax)
c0036276:	74 f0                	je     c0036268 <__mcmp+0x28>
c0036278:	19 c0                	sbb    %eax,%eax
c003627a:	83 c8 01             	or     $0x1,%eax
c003627d:	5b                   	pop    %ebx
c003627e:	5d                   	pop    %ebp
c003627f:	c3                   	ret    
c0036280:	31 c0                	xor    %eax,%eax
c0036282:	5b                   	pop    %ebx
c0036283:	5d                   	pop    %ebp
c0036284:	c3                   	ret    
c0036285:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036290 <__mdiff>:
c0036290:	55                   	push   %ebp
c0036291:	89 e5                	mov    %esp,%ebp
c0036293:	57                   	push   %edi
c0036294:	56                   	push   %esi
c0036295:	53                   	push   %ebx
c0036296:	83 ec 2c             	sub    $0x2c,%esp
c0036299:	8b 75 0c             	mov    0xc(%ebp),%esi
c003629c:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003629f:	89 34 24             	mov    %esi,(%esp)
c00362a2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00362a6:	e8 95 ff ff ff       	call   c0036240 <__mcmp>
c00362ab:	85 c0                	test   %eax,%eax
c00362ad:	0f 84 25 01 00 00    	je     c00363d8 <__mdiff+0x148>
c00362b3:	0f 88 0f 01 00 00    	js     c00363c8 <__mdiff+0x138>
c00362b9:	31 ff                	xor    %edi,%edi
c00362bb:	8b 46 04             	mov    0x4(%esi),%eax
c00362be:	83 c6 14             	add    $0x14,%esi
c00362c1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00362c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00362c8:	89 04 24             	mov    %eax,(%esp)
c00362cb:	e8 b0 f7 ff ff       	call   c0035a80 <_Balloc>
c00362d0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c00362d3:	89 c2                	mov    %eax,%edx
c00362d5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00362d8:	89 78 0c             	mov    %edi,0xc(%eax)
c00362db:	8b 46 fc             	mov    -0x4(%esi),%eax
c00362de:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c00362e1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00362e4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c00362e7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00362ea:	8b 43 10             	mov    0x10(%ebx),%eax
c00362ed:	31 db                	xor    %ebx,%ebx
c00362ef:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c00362f2:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00362f5:	89 d0                	mov    %edx,%eax
c00362f7:	83 c0 14             	add    $0x14,%eax
c00362fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036300:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036303:	83 c0 04             	add    $0x4,%eax
c0036306:	83 c1 04             	add    $0x4,%ecx
c0036309:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c003630d:	8b 3e                	mov    (%esi),%edi
c003630f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036312:	0f b7 d7             	movzwl %di,%edx
c0036315:	01 da                	add    %ebx,%edx
c0036317:	0f b7 de             	movzwl %si,%ebx
c003631a:	29 da                	sub    %ebx,%edx
c003631c:	c1 ef 10             	shr    $0x10,%edi
c003631f:	89 d3                	mov    %edx,%ebx
c0036321:	c1 ee 10             	shr    $0x10,%esi
c0036324:	0f b7 d2             	movzwl %dx,%edx
c0036327:	c1 fb 10             	sar    $0x10,%ebx
c003632a:	29 f7                	sub    %esi,%edi
c003632c:	01 df                	add    %ebx,%edi
c003632e:	89 fb                	mov    %edi,%ebx
c0036330:	c1 e7 10             	shl    $0x10,%edi
c0036333:	09 d7                	or     %edx,%edi
c0036335:	c1 fb 10             	sar    $0x10,%ebx
c0036338:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003633b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003633e:	77 c0                	ja     c0036300 <__mdiff+0x70>
c0036340:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036343:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036346:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036349:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003634c:	39 f1                	cmp    %esi,%ecx
c003634e:	76 3f                	jbe    c003638f <__mdiff+0xff>
c0036350:	8b 3e                	mov    (%esi),%edi
c0036352:	83 c6 04             	add    $0x4,%esi
c0036355:	83 c0 04             	add    $0x4,%eax
c0036358:	0f b7 d7             	movzwl %di,%edx
c003635b:	01 da                	add    %ebx,%edx
c003635d:	89 d3                	mov    %edx,%ebx
c003635f:	0f b7 d2             	movzwl %dx,%edx
c0036362:	c1 fb 10             	sar    $0x10,%ebx
c0036365:	c1 ef 10             	shr    $0x10,%edi
c0036368:	01 df                	add    %ebx,%edi
c003636a:	89 fb                	mov    %edi,%ebx
c003636c:	c1 e7 10             	shl    $0x10,%edi
c003636f:	09 d7                	or     %edx,%edi
c0036371:	c1 fb 10             	sar    $0x10,%ebx
c0036374:	39 f1                	cmp    %esi,%ecx
c0036376:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036379:	77 d5                	ja     c0036350 <__mdiff+0xc0>
c003637b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003637e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036381:	f7 d0                	not    %eax
c0036383:	01 c8                	add    %ecx,%eax
c0036385:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036388:	c1 e8 02             	shr    $0x2,%eax
c003638b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c003638f:	85 ff                	test   %edi,%edi
c0036391:	75 23                	jne    c00363b6 <__mdiff+0x126>
c0036393:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036396:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c003639d:	29 d0                	sub    %edx,%eax
c003639f:	89 ca                	mov    %ecx,%edx
c00363a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00363a8:	83 ea 01             	sub    $0x1,%edx
c00363ab:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00363af:	85 c9                	test   %ecx,%ecx
c00363b1:	74 f5                	je     c00363a8 <__mdiff+0x118>
c00363b3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00363b6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00363b9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00363bc:	89 48 10             	mov    %ecx,0x10(%eax)
c00363bf:	83 c4 2c             	add    $0x2c,%esp
c00363c2:	5b                   	pop    %ebx
c00363c3:	5e                   	pop    %esi
c00363c4:	5f                   	pop    %edi
c00363c5:	5d                   	pop    %ebp
c00363c6:	c3                   	ret    
c00363c7:	90                   	nop
c00363c8:	89 f0                	mov    %esi,%eax
c00363ca:	bf 01 00 00 00       	mov    $0x1,%edi
c00363cf:	89 de                	mov    %ebx,%esi
c00363d1:	89 c3                	mov    %eax,%ebx
c00363d3:	e9 e3 fe ff ff       	jmp    c00362bb <__mdiff+0x2b>
c00363d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00363db:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00363e2:	00 
c00363e3:	89 04 24             	mov    %eax,(%esp)
c00363e6:	e8 95 f6 ff ff       	call   c0035a80 <_Balloc>
c00363eb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00363f2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c00363f9:	83 c4 2c             	add    $0x2c,%esp
c00363fc:	5b                   	pop    %ebx
c00363fd:	5e                   	pop    %esi
c00363fe:	5f                   	pop    %edi
c00363ff:	5d                   	pop    %ebp
c0036400:	c3                   	ret    
c0036401:	eb 0d                	jmp    c0036410 <__ulp>
c0036403:	90                   	nop
c0036404:	90                   	nop
c0036405:	90                   	nop
c0036406:	90                   	nop
c0036407:	90                   	nop
c0036408:	90                   	nop
c0036409:	90                   	nop
c003640a:	90                   	nop
c003640b:	90                   	nop
c003640c:	90                   	nop
c003640d:	90                   	nop
c003640e:	90                   	nop
c003640f:	90                   	nop

c0036410 <__ulp>:
c0036410:	55                   	push   %ebp
c0036411:	89 e5                	mov    %esp,%ebp
c0036413:	83 ec 08             	sub    $0x8,%esp
c0036416:	dd 45 08             	fldl   0x8(%ebp)
c0036419:	dd 5d f8             	fstpl  -0x8(%ebp)
c003641c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003641f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036425:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003642b:	85 c9                	test   %ecx,%ecx
c003642d:	7e 11                	jle    c0036440 <__ulp+0x30>
c003642f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036432:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036439:	dd 45 f8             	fldl   -0x8(%ebp)
c003643c:	c9                   	leave  
c003643d:	c3                   	ret    
c003643e:	66 90                	xchg   %ax,%ax
c0036440:	f7 d9                	neg    %ecx
c0036442:	c1 f9 14             	sar    $0x14,%ecx
c0036445:	83 f9 13             	cmp    $0x13,%ecx
c0036448:	7e 26                	jle    c0036470 <__ulp+0x60>
c003644a:	83 f9 32             	cmp    $0x32,%ecx
c003644d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036452:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036459:	7f 0b                	jg     c0036466 <__ulp+0x56>
c003645b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036460:	29 ca                	sub    %ecx,%edx
c0036462:	89 d1                	mov    %edx,%ecx
c0036464:	d3 e0                	shl    %cl,%eax
c0036466:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036469:	dd 45 f8             	fldl   -0x8(%ebp)
c003646c:	c9                   	leave  
c003646d:	c3                   	ret    
c003646e:	66 90                	xchg   %ax,%ax
c0036470:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036475:	d3 f8                	sar    %cl,%eax
c0036477:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003647a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036481:	dd 45 f8             	fldl   -0x8(%ebp)
c0036484:	c9                   	leave  
c0036485:	c3                   	ret    
c0036486:	8d 76 00             	lea    0x0(%esi),%esi
c0036489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036490 <__b2d>:
c0036490:	55                   	push   %ebp
c0036491:	89 e5                	mov    %esp,%ebp
c0036493:	57                   	push   %edi
c0036494:	56                   	push   %esi
c0036495:	53                   	push   %ebx
c0036496:	83 ec 18             	sub    $0x18,%esp
c0036499:	8b 45 08             	mov    0x8(%ebp),%eax
c003649c:	8d 78 14             	lea    0x14(%eax),%edi
c003649f:	8b 40 10             	mov    0x10(%eax),%eax
c00364a2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c00364a5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c00364a8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00364ab:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00364ae:	89 34 24             	mov    %esi,(%esp)
c00364b1:	e8 6a f8 ff ff       	call   c0035d20 <__hi0bits>
c00364b6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00364b9:	ba 20 00 00 00       	mov    $0x20,%edx
c00364be:	29 c2                	sub    %eax,%edx
c00364c0:	83 f8 0a             	cmp    $0xa,%eax
c00364c3:	89 11                	mov    %edx,(%ecx)
c00364c5:	7f 41                	jg     c0036508 <__b2d+0x78>
c00364c7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c00364cc:	89 f2                	mov    %esi,%edx
c00364ce:	29 c1                	sub    %eax,%ecx
c00364d0:	d3 ea                	shr    %cl,%edx
c00364d2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c00364d8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c00364db:	31 d2                	xor    %edx,%edx
c00364dd:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00364e0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00364e7:	73 05                	jae    c00364ee <__b2d+0x5e>
c00364e9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00364ec:	d3 ea                	shr    %cl,%edx
c00364ee:	8d 48 15             	lea    0x15(%eax),%ecx
c00364f1:	d3 e6                	shl    %cl,%esi
c00364f3:	09 f2                	or     %esi,%edx
c00364f5:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00364f8:	dd 45 e8             	fldl   -0x18(%ebp)
c00364fb:	83 c4 18             	add    $0x18,%esp
c00364fe:	5b                   	pop    %ebx
c00364ff:	5e                   	pop    %esi
c0036500:	5f                   	pop    %edi
c0036501:	5d                   	pop    %ebp
c0036502:	c3                   	ret    
c0036503:	90                   	nop
c0036504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036508:	31 d2                	xor    %edx,%edx
c003650a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c003650d:	73 09                	jae    c0036518 <__b2d+0x88>
c003650f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036512:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036515:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036518:	89 c3                	mov    %eax,%ebx
c003651a:	83 eb 0b             	sub    $0xb,%ebx
c003651d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036520:	74 4e                	je     c0036570 <__b2d+0xe0>
c0036522:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036526:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003652b:	29 c3                	sub    %eax,%ebx
c003652d:	89 d0                	mov    %edx,%eax
c003652f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036536:	d3 e6                	shl    %cl,%esi
c0036538:	89 d9                	mov    %ebx,%ecx
c003653a:	d3 e8                	shr    %cl,%eax
c003653c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003653f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036545:	09 c6                	or     %eax,%esi
c0036547:	31 c0                	xor    %eax,%eax
c0036549:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003654c:	39 f9                	cmp    %edi,%ecx
c003654e:	76 07                	jbe    c0036557 <__b2d+0xc7>
c0036550:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036553:	89 d9                	mov    %ebx,%ecx
c0036555:	d3 e8                	shr    %cl,%eax
c0036557:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003655b:	d3 e2                	shl    %cl,%edx
c003655d:	09 d0                	or     %edx,%eax
c003655f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036562:	dd 45 e8             	fldl   -0x18(%ebp)
c0036565:	83 c4 18             	add    $0x18,%esp
c0036568:	5b                   	pop    %ebx
c0036569:	5e                   	pop    %esi
c003656a:	5f                   	pop    %edi
c003656b:	5d                   	pop    %ebp
c003656c:	c3                   	ret    
c003656d:	8d 76 00             	lea    0x0(%esi),%esi
c0036570:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036576:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036579:	89 55 e8             	mov    %edx,-0x18(%ebp)
c003657c:	dd 45 e8             	fldl   -0x18(%ebp)
c003657f:	83 c4 18             	add    $0x18,%esp
c0036582:	5b                   	pop    %ebx
c0036583:	5e                   	pop    %esi
c0036584:	5f                   	pop    %edi
c0036585:	5d                   	pop    %ebp
c0036586:	c3                   	ret    
c0036587:	89 f6                	mov    %esi,%esi
c0036589:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036590 <__d2b>:
c0036590:	55                   	push   %ebp
c0036591:	89 e5                	mov    %esp,%ebp
c0036593:	57                   	push   %edi
c0036594:	56                   	push   %esi
c0036595:	53                   	push   %ebx
c0036596:	83 ec 2c             	sub    $0x2c,%esp
c0036599:	8b 45 08             	mov    0x8(%ebp),%eax
c003659c:	dd 45 0c             	fldl   0xc(%ebp)
c003659f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00365a6:	00 
c00365a7:	dd 5d d0             	fstpl  -0x30(%ebp)
c00365aa:	89 04 24             	mov    %eax,(%esp)
c00365ad:	e8 ce f4 ff ff       	call   c0035a80 <_Balloc>
c00365b2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c00365b5:	89 c6                	mov    %eax,%esi
c00365b7:	89 d8                	mov    %ebx,%eax
c00365b9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c00365bf:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00365c4:	c1 eb 14             	shr    $0x14,%ebx
c00365c7:	85 db                	test   %ebx,%ebx
c00365c9:	74 05                	je     c00365d0 <__d2b+0x40>
c00365cb:	0d 00 00 10 00       	or     $0x100000,%eax
c00365d0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00365d3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00365d6:	85 c0                	test   %eax,%eax
c00365d8:	74 56                	je     c0036630 <__d2b+0xa0>
c00365da:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00365dd:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00365e0:	89 04 24             	mov    %eax,(%esp)
c00365e3:	e8 98 f7 ff ff       	call   c0035d80 <__lo0bits>
c00365e8:	85 c0                	test   %eax,%eax
c00365ea:	0f 85 90 00 00 00    	jne    c0036680 <__d2b+0xf0>
c00365f0:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00365f3:	89 56 14             	mov    %edx,0x14(%esi)
c00365f6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00365f9:	83 fa 01             	cmp    $0x1,%edx
c00365fc:	19 ff                	sbb    %edi,%edi
c00365fe:	83 c7 02             	add    $0x2,%edi
c0036601:	85 db                	test   %ebx,%ebx
c0036603:	89 56 18             	mov    %edx,0x18(%esi)
c0036606:	89 7e 10             	mov    %edi,0x10(%esi)
c0036609:	74 49                	je     c0036654 <__d2b+0xc4>
c003660b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c003660e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036615:	89 11                	mov    %edx,(%ecx)
c0036617:	ba 35 00 00 00       	mov    $0x35,%edx
c003661c:	29 c2                	sub    %eax,%edx
c003661e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036621:	89 10                	mov    %edx,(%eax)
c0036623:	83 c4 2c             	add    $0x2c,%esp
c0036626:	89 f0                	mov    %esi,%eax
c0036628:	5b                   	pop    %ebx
c0036629:	5e                   	pop    %esi
c003662a:	5f                   	pop    %edi
c003662b:	5d                   	pop    %ebp
c003662c:	c3                   	ret    
c003662d:	8d 76 00             	lea    0x0(%esi),%esi
c0036630:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036633:	bf 01 00 00 00       	mov    $0x1,%edi
c0036638:	89 04 24             	mov    %eax,(%esp)
c003663b:	e8 40 f7 ff ff       	call   c0035d80 <__lo0bits>
c0036640:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036643:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003664a:	89 56 14             	mov    %edx,0x14(%esi)
c003664d:	83 c0 20             	add    $0x20,%eax
c0036650:	85 db                	test   %ebx,%ebx
c0036652:	75 b7                	jne    c003660b <__d2b+0x7b>
c0036654:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036657:	2d 32 04 00 00       	sub    $0x432,%eax
c003665c:	89 01                	mov    %eax,(%ecx)
c003665e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036662:	c1 e7 05             	shl    $0x5,%edi
c0036665:	89 04 24             	mov    %eax,(%esp)
c0036668:	e8 b3 f6 ff ff       	call   c0035d20 <__hi0bits>
c003666d:	29 c7                	sub    %eax,%edi
c003666f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036672:	89 38                	mov    %edi,(%eax)
c0036674:	83 c4 2c             	add    $0x2c,%esp
c0036677:	89 f0                	mov    %esi,%eax
c0036679:	5b                   	pop    %ebx
c003667a:	5e                   	pop    %esi
c003667b:	5f                   	pop    %edi
c003667c:	5d                   	pop    %ebp
c003667d:	c3                   	ret    
c003667e:	66 90                	xchg   %ax,%ax
c0036680:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036683:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036688:	29 c1                	sub    %eax,%ecx
c003668a:	89 d7                	mov    %edx,%edi
c003668c:	d3 e7                	shl    %cl,%edi
c003668e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036691:	09 f9                	or     %edi,%ecx
c0036693:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036696:	89 c1                	mov    %eax,%ecx
c0036698:	d3 ea                	shr    %cl,%edx
c003669a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003669d:	e9 57 ff ff ff       	jmp    c00365f9 <__d2b+0x69>
c00366a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00366a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00366b0 <__ratio>:
c00366b0:	55                   	push   %ebp
c00366b1:	89 e5                	mov    %esp,%ebp
c00366b3:	56                   	push   %esi
c00366b4:	53                   	push   %ebx
c00366b5:	83 ec 30             	sub    $0x30,%esp
c00366b8:	8b 75 08             	mov    0x8(%ebp),%esi
c00366bb:	8d 45 f0             	lea    -0x10(%ebp),%eax
c00366be:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00366c1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00366c5:	89 34 24             	mov    %esi,(%esp)
c00366c8:	e8 c3 fd ff ff       	call   c0036490 <__b2d>
c00366cd:	8d 45 f4             	lea    -0xc(%ebp),%eax
c00366d0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00366d4:	89 1c 24             	mov    %ebx,(%esp)
c00366d7:	dd 55 e0             	fstl   -0x20(%ebp)
c00366da:	dd 5d d8             	fstpl  -0x28(%ebp)
c00366dd:	e8 ae fd ff ff       	call   c0036490 <__b2d>
c00366e2:	8b 46 10             	mov    0x10(%esi),%eax
c00366e5:	2b 43 10             	sub    0x10(%ebx),%eax
c00366e8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00366eb:	2b 55 f4             	sub    -0xc(%ebp),%edx
c00366ee:	c1 e0 05             	shl    $0x5,%eax
c00366f1:	01 d0                	add    %edx,%eax
c00366f3:	dd 55 d0             	fstl   -0x30(%ebp)
c00366f6:	85 c0                	test   %eax,%eax
c00366f8:	dd 45 d8             	fldl   -0x28(%ebp)
c00366fb:	7e 1b                	jle    c0036718 <__ratio+0x68>
c00366fd:	dd d8                	fstp   %st(0)
c00366ff:	c1 e0 14             	shl    $0x14,%eax
c0036702:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036705:	dd 45 e0             	fldl   -0x20(%ebp)
c0036708:	83 c4 30             	add    $0x30,%esp
c003670b:	5b                   	pop    %ebx
c003670c:	de f1                	fdivp  %st,%st(1)
c003670e:	5e                   	pop    %esi
c003670f:	5d                   	pop    %ebp
c0036710:	c3                   	ret    
c0036711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036718:	dd d9                	fstp   %st(1)
c003671a:	c1 e0 14             	shl    $0x14,%eax
c003671d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036720:	dd 45 d0             	fldl   -0x30(%ebp)
c0036723:	83 c4 30             	add    $0x30,%esp
c0036726:	5b                   	pop    %ebx
c0036727:	de f9                	fdivrp %st,%st(1)
c0036729:	5e                   	pop    %esi
c003672a:	5d                   	pop    %ebp
c003672b:	c3                   	ret    
c003672c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036730 <_mprec_log10>:
c0036730:	55                   	push   %ebp
c0036731:	89 e5                	mov    %esp,%ebp
c0036733:	8b 45 08             	mov    0x8(%ebp),%eax
c0036736:	83 f8 17             	cmp    $0x17,%eax
c0036739:	7e 1d                	jle    c0036758 <_mprec_log10+0x28>
c003673b:	d9 e8                	fld1   
c003673d:	d9 05 6c 9a 03 c0    	flds   0xc0039a6c
c0036743:	90                   	nop
c0036744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036748:	83 e8 01             	sub    $0x1,%eax
c003674b:	dc c9                	fmul   %st,%st(1)
c003674d:	75 f9                	jne    c0036748 <_mprec_log10+0x18>
c003674f:	dd d8                	fstp   %st(0)
c0036751:	5d                   	pop    %ebp
c0036752:	c3                   	ret    
c0036753:	90                   	nop
c0036754:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036758:	dd 04 c5 40 9b 03 c0 	fldl   -0x3ffc64c0(,%eax,8)
c003675f:	5d                   	pop    %ebp
c0036760:	c3                   	ret    
c0036761:	eb 0d                	jmp    c0036770 <__copybits>
c0036763:	90                   	nop
c0036764:	90                   	nop
c0036765:	90                   	nop
c0036766:	90                   	nop
c0036767:	90                   	nop
c0036768:	90                   	nop
c0036769:	90                   	nop
c003676a:	90                   	nop
c003676b:	90                   	nop
c003676c:	90                   	nop
c003676d:	90                   	nop
c003676e:	90                   	nop
c003676f:	90                   	nop

c0036770 <__copybits>:
c0036770:	55                   	push   %ebp
c0036771:	89 e5                	mov    %esp,%ebp
c0036773:	57                   	push   %edi
c0036774:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036777:	56                   	push   %esi
c0036778:	8b 75 0c             	mov    0xc(%ebp),%esi
c003677b:	8b 45 08             	mov    0x8(%ebp),%eax
c003677e:	53                   	push   %ebx
c003677f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036782:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036785:	c1 fa 05             	sar    $0x5,%edx
c0036788:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c003678c:	8d 57 14             	lea    0x14(%edi),%edx
c003678f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0036792:	39 da                	cmp    %ebx,%edx
c0036794:	73 34                	jae    c00367ca <__copybits+0x5a>
c0036796:	89 c1                	mov    %eax,%ecx
c0036798:	83 c2 04             	add    $0x4,%edx
c003679b:	8b 42 fc             	mov    -0x4(%edx),%eax
c003679e:	83 c1 04             	add    $0x4,%ecx
c00367a1:	39 d3                	cmp    %edx,%ebx
c00367a3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c00367a6:	77 f0                	ja     c0036798 <__copybits+0x28>
c00367a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00367ab:	29 fb                	sub    %edi,%ebx
c00367ad:	8d 53 eb             	lea    -0x15(%ebx),%edx
c00367b0:	c1 ea 02             	shr    $0x2,%edx
c00367b3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c00367b7:	39 c6                	cmp    %eax,%esi
c00367b9:	76 13                	jbe    c00367ce <__copybits+0x5e>
c00367bb:	90                   	nop
c00367bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00367c0:	83 c0 04             	add    $0x4,%eax
c00367c3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c00367ca:	39 c6                	cmp    %eax,%esi
c00367cc:	77 f2                	ja     c00367c0 <__copybits+0x50>
c00367ce:	5b                   	pop    %ebx
c00367cf:	5e                   	pop    %esi
c00367d0:	5f                   	pop    %edi
c00367d1:	5d                   	pop    %ebp
c00367d2:	c3                   	ret    
c00367d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00367d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00367e0 <__any_on>:
c00367e0:	55                   	push   %ebp
c00367e1:	89 e5                	mov    %esp,%ebp
c00367e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00367e6:	57                   	push   %edi
c00367e7:	56                   	push   %esi
c00367e8:	53                   	push   %ebx
c00367e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00367ec:	8d 50 14             	lea    0x14(%eax),%edx
c00367ef:	8b 40 10             	mov    0x10(%eax),%eax
c00367f2:	c1 fb 05             	sar    $0x5,%ebx
c00367f5:	39 d8                	cmp    %ebx,%eax
c00367f7:	7d 2f                	jge    c0036828 <__any_on+0x48>
c00367f9:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c00367fc:	39 da                	cmp    %ebx,%edx
c00367fe:	73 1d                	jae    c003681d <__any_on+0x3d>
c0036800:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036803:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0036806:	85 db                	test   %ebx,%ebx
c0036808:	74 0f                	je     c0036819 <__any_on+0x39>
c003680a:	eb 44                	jmp    c0036850 <__any_on+0x70>
c003680c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036810:	83 e8 04             	sub    $0x4,%eax
c0036813:	8b 08                	mov    (%eax),%ecx
c0036815:	85 c9                	test   %ecx,%ecx
c0036817:	75 37                	jne    c0036850 <__any_on+0x70>
c0036819:	39 c2                	cmp    %eax,%edx
c003681b:	72 f3                	jb     c0036810 <__any_on+0x30>
c003681d:	31 c0                	xor    %eax,%eax
c003681f:	5b                   	pop    %ebx
c0036820:	5e                   	pop    %esi
c0036821:	5f                   	pop    %edi
c0036822:	5d                   	pop    %ebp
c0036823:	c3                   	ret    
c0036824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036828:	7e 1e                	jle    c0036848 <__any_on+0x68>
c003682a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003682d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036830:	83 e1 1f             	and    $0x1f,%ecx
c0036833:	74 c7                	je     c00367fc <__any_on+0x1c>
c0036835:	8b 3b                	mov    (%ebx),%edi
c0036837:	b8 01 00 00 00       	mov    $0x1,%eax
c003683c:	89 fe                	mov    %edi,%esi
c003683e:	d3 ee                	shr    %cl,%esi
c0036840:	d3 e6                	shl    %cl,%esi
c0036842:	39 fe                	cmp    %edi,%esi
c0036844:	75 d9                	jne    c003681f <__any_on+0x3f>
c0036846:	eb b4                	jmp    c00367fc <__any_on+0x1c>
c0036848:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c003684b:	eb af                	jmp    c00367fc <__any_on+0x1c>
c003684d:	8d 76 00             	lea    0x0(%esi),%esi
c0036850:	5b                   	pop    %ebx
c0036851:	b8 01 00 00 00       	mov    $0x1,%eax
c0036856:	5e                   	pop    %esi
c0036857:	5f                   	pop    %edi
c0036858:	5d                   	pop    %ebp
c0036859:	c3                   	ret    
c003685a:	66 90                	xchg   %ax,%ax
c003685c:	66 90                	xchg   %ax,%ax
c003685e:	66 90                	xchg   %ax,%ax

c0036860 <_sbrk_r>:
c0036860:	55                   	push   %ebp
c0036861:	89 e5                	mov    %esp,%ebp
c0036863:	83 ec 18             	sub    $0x18,%esp
c0036866:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036869:	c7 05 00 50 09 c0 00 	movl   $0x0,0xc0095000
c0036870:	00 00 00 
c0036873:	89 04 24             	mov    %eax,(%esp)
c0036876:	e8 ab a0 ff ff       	call   c0030926 <sbrk>
c003687b:	83 f8 ff             	cmp    $0xffffffff,%eax
c003687e:	74 08                	je     c0036888 <_sbrk_r+0x28>
c0036880:	c9                   	leave  
c0036881:	c3                   	ret    
c0036882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036888:	8b 15 00 50 09 c0    	mov    0xc0095000,%edx
c003688e:	85 d2                	test   %edx,%edx
c0036890:	74 ee                	je     c0036880 <_sbrk_r+0x20>
c0036892:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036895:	89 11                	mov    %edx,(%ecx)
c0036897:	c9                   	leave  
c0036898:	c3                   	ret    
c0036899:	66 90                	xchg   %ax,%ax
c003689b:	66 90                	xchg   %ax,%ax
c003689d:	66 90                	xchg   %ax,%ax
c003689f:	90                   	nop

c00368a0 <__fpclassifyd>:
c00368a0:	55                   	push   %ebp
c00368a1:	b8 02 00 00 00       	mov    $0x2,%eax
c00368a6:	89 e5                	mov    %esp,%ebp
c00368a8:	53                   	push   %ebx
c00368a9:	83 ec 0c             	sub    $0xc,%esp
c00368ac:	dd 45 08             	fldl   0x8(%ebp)
c00368af:	dd 5d f0             	fstpl  -0x10(%ebp)
c00368b2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00368b5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c00368b8:	89 d3                	mov    %edx,%ebx
c00368ba:	09 cb                	or     %ecx,%ebx
c00368bc:	75 0a                	jne    c00368c8 <__fpclassifyd+0x28>
c00368be:	83 c4 0c             	add    $0xc,%esp
c00368c1:	5b                   	pop    %ebx
c00368c2:	5d                   	pop    %ebp
c00368c3:	c3                   	ret    
c00368c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368c8:	85 d2                	test   %edx,%edx
c00368ca:	0f 94 c2             	sete   %dl
c00368cd:	75 08                	jne    c00368d7 <__fpclassifyd+0x37>
c00368cf:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c00368d5:	74 e7                	je     c00368be <__fpclassifyd+0x1e>
c00368d7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c00368dd:	b8 04 00 00 00       	mov    $0x4,%eax
c00368e2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c00368e8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c00368ee:	76 ce                	jbe    c00368be <__fpclassifyd+0x1e>
c00368f0:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c00368f6:	b0 03                	mov    $0x3,%al
c00368f8:	76 c4                	jbe    c00368be <__fpclassifyd+0x1e>
c00368fa:	31 c0                	xor    %eax,%eax
c00368fc:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036902:	0f 94 c0             	sete   %al
c0036905:	21 d0                	and    %edx,%eax
c0036907:	eb b5                	jmp    c00368be <__fpclassifyd+0x1e>
c0036909:	66 90                	xchg   %ax,%ax
c003690b:	66 90                	xchg   %ax,%ax
c003690d:	66 90                	xchg   %ax,%ax
c003690f:	90                   	nop

c0036910 <strcmp>:
c0036910:	55                   	push   %ebp
c0036911:	89 e5                	mov    %esp,%ebp
c0036913:	8b 45 08             	mov    0x8(%ebp),%eax
c0036916:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036919:	53                   	push   %ebx
c003691a:	89 c1                	mov    %eax,%ecx
c003691c:	09 d1                	or     %edx,%ecx
c003691e:	83 e1 03             	and    $0x3,%ecx
c0036921:	75 17                	jne    c003693a <strcmp+0x2a>
c0036923:	8b 08                	mov    (%eax),%ecx
c0036925:	3b 0a                	cmp    (%edx),%ecx
c0036927:	74 33                	je     c003695c <strcmp+0x4c>
c0036929:	eb 0f                	jmp    c003693a <strcmp+0x2a>
c003692b:	90                   	nop
c003692c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036930:	3a 0a                	cmp    (%edx),%cl
c0036932:	75 0d                	jne    c0036941 <strcmp+0x31>
c0036934:	83 c0 01             	add    $0x1,%eax
c0036937:	83 c2 01             	add    $0x1,%edx
c003693a:	0f b6 08             	movzbl (%eax),%ecx
c003693d:	84 c9                	test   %cl,%cl
c003693f:	75 ef                	jne    c0036930 <strcmp+0x20>
c0036941:	0f b6 00             	movzbl (%eax),%eax
c0036944:	0f b6 12             	movzbl (%edx),%edx
c0036947:	5b                   	pop    %ebx
c0036948:	5d                   	pop    %ebp
c0036949:	29 d0                	sub    %edx,%eax
c003694b:	c3                   	ret    
c003694c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036950:	83 c0 04             	add    $0x4,%eax
c0036953:	83 c2 04             	add    $0x4,%edx
c0036956:	8b 08                	mov    (%eax),%ecx
c0036958:	3b 0a                	cmp    (%edx),%ecx
c003695a:	75 de                	jne    c003693a <strcmp+0x2a>
c003695c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036962:	f7 d1                	not    %ecx
c0036964:	21 cb                	and    %ecx,%ebx
c0036966:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c003696c:	74 e2                	je     c0036950 <strcmp+0x40>
c003696e:	31 c0                	xor    %eax,%eax
c0036970:	5b                   	pop    %ebx
c0036971:	5d                   	pop    %ebp
c0036972:	c3                   	ret    
c0036973:	66 90                	xchg   %ax,%ax
c0036975:	66 90                	xchg   %ax,%ax
c0036977:	66 90                	xchg   %ax,%ax
c0036979:	66 90                	xchg   %ax,%ax
c003697b:	66 90                	xchg   %ax,%ax
c003697d:	66 90                	xchg   %ax,%ax
c003697f:	90                   	nop

c0036980 <strlen>:
c0036980:	55                   	push   %ebp
c0036981:	89 e5                	mov    %esp,%ebp
c0036983:	57                   	push   %edi
c0036984:	8b 55 08             	mov    0x8(%ebp),%edx
c0036987:	89 d7                	mov    %edx,%edi
c0036989:	f7 c7 03 00 00 00    	test   $0x3,%edi
c003698f:	74 25                	je     c00369b6 <L5>
c0036991:	8a 0f                	mov    (%edi),%cl
c0036993:	47                   	inc    %edi
c0036994:	84 c9                	test   %cl,%cl
c0036996:	74 56                	je     c00369ee <L15>
c0036998:	f7 c7 03 00 00 00    	test   $0x3,%edi
c003699e:	74 16                	je     c00369b6 <L5>
c00369a0:	8a 0f                	mov    (%edi),%cl
c00369a2:	47                   	inc    %edi
c00369a3:	84 c9                	test   %cl,%cl
c00369a5:	74 47                	je     c00369ee <L15>
c00369a7:	f7 c7 03 00 00 00    	test   $0x3,%edi
c00369ad:	74 07                	je     c00369b6 <L5>
c00369af:	8a 0f                	mov    (%edi),%cl
c00369b1:	47                   	inc    %edi
c00369b2:	84 c9                	test   %cl,%cl
c00369b4:	74 38                	je     c00369ee <L15>

c00369b6 <L5>:
c00369b6:	83 ef 04             	sub    $0x4,%edi
c00369b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00369c0 <L10>:
c00369c0:	83 c7 04             	add    $0x4,%edi
c00369c3:	8b 0f                	mov    (%edi),%ecx
c00369c5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c00369cb:	f7 d1                	not    %ecx
c00369cd:	21 c8                	and    %ecx,%eax
c00369cf:	a9 80 80 80 80       	test   $0x80808080,%eax
c00369d4:	74 ea                	je     c00369c0 <L10>
c00369d6:	f7 d1                	not    %ecx
c00369d8:	47                   	inc    %edi
c00369d9:	84 c9                	test   %cl,%cl
c00369db:	74 11                	je     c00369ee <L15>
c00369dd:	47                   	inc    %edi
c00369de:	c1 e9 08             	shr    $0x8,%ecx
c00369e1:	84 c9                	test   %cl,%cl
c00369e3:	74 09                	je     c00369ee <L15>
c00369e5:	47                   	inc    %edi
c00369e6:	c1 e9 08             	shr    $0x8,%ecx
c00369e9:	84 c9                	test   %cl,%cl
c00369eb:	74 01                	je     c00369ee <L15>
c00369ed:	47                   	inc    %edi

c00369ee <L15>:
c00369ee:	29 d7                	sub    %edx,%edi
c00369f0:	8d 47 ff             	lea    -0x1(%edi),%eax
c00369f3:	8d 65 fc             	lea    -0x4(%ebp),%esp
c00369f6:	5f                   	pop    %edi
c00369f7:	c9                   	leave  
c00369f8:	c3                   	ret    
c00369f9:	66 90                	xchg   %ax,%ax
c00369fb:	66 90                	xchg   %ax,%ax
c00369fd:	66 90                	xchg   %ax,%ax
c00369ff:	90                   	nop

c0036a00 <__ssprint_r>:
c0036a00:	55                   	push   %ebp
c0036a01:	89 e5                	mov    %esp,%ebp
c0036a03:	57                   	push   %edi
c0036a04:	56                   	push   %esi
c0036a05:	53                   	push   %ebx
c0036a06:	83 ec 2c             	sub    $0x2c,%esp
c0036a09:	8b 45 10             	mov    0x10(%ebp),%eax
c0036a0c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036a0f:	8b 00                	mov    (%eax),%eax
c0036a11:	89 c7                	mov    %eax,%edi
c0036a13:	8b 45 10             	mov    0x10(%ebp),%eax
c0036a16:	8b 40 08             	mov    0x8(%eax),%eax
c0036a19:	85 c0                	test   %eax,%eax
c0036a1b:	0f 84 af 01 00 00    	je     c0036bd0 <__ssprint_r+0x1d0>
c0036a21:	31 c9                	xor    %ecx,%ecx
c0036a23:	31 d2                	xor    %edx,%edx
c0036a25:	8b 03                	mov    (%ebx),%eax
c0036a27:	89 ce                	mov    %ecx,%esi
c0036a29:	85 f6                	test   %esi,%esi
c0036a2b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036a2e:	0f 84 ec 00 00 00    	je     c0036b20 <__ssprint_r+0x120>
c0036a34:	8b 53 08             	mov    0x8(%ebx),%edx
c0036a37:	39 d6                	cmp    %edx,%esi
c0036a39:	0f 82 fc 00 00 00    	jb     c0036b3b <__ssprint_r+0x13b>
c0036a3f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036a43:	66 f7 c1 80 04       	test   $0x480,%cx
c0036a48:	0f 84 fa 00 00 00    	je     c0036b48 <__ssprint_r+0x148>
c0036a4e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036a51:	29 d0                	sub    %edx,%eax
c0036a53:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036a56:	8b 43 14             	mov    0x14(%ebx),%eax
c0036a59:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036a5c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036a5f:	89 c2                	mov    %eax,%edx
c0036a61:	c1 ea 1f             	shr    $0x1f,%edx
c0036a64:	01 d0                	add    %edx,%eax
c0036a66:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036a69:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036a6c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036a6f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036a73:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036a76:	0f 83 34 01 00 00    	jae    c0036bb0 <__ssprint_r+0x1b0>
c0036a7c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036a7f:	80 e5 04             	and    $0x4,%ch
c0036a82:	0f 84 c8 00 00 00    	je     c0036b50 <__ssprint_r+0x150>
c0036a88:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036a8c:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a8f:	89 04 24             	mov    %eax,(%esp)
c0036a92:	e8 e9 e7 ff ff       	call   c0035280 <_malloc_r>
c0036a97:	85 c0                	test   %eax,%eax
c0036a99:	89 c2                	mov    %eax,%edx
c0036a9b:	0f 84 e1 00 00 00    	je     c0036b82 <__ssprint_r+0x182>
c0036aa1:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036aa4:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036aa7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036aab:	8b 43 10             	mov    0x10(%ebx),%eax
c0036aae:	89 14 24             	mov    %edx,(%esp)
c0036ab1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036ab5:	e8 0a b2 ff ff       	call   c0031cc4 <memcpy>
c0036aba:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036abe:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036ac1:	66 25 7f fb          	and    $0xfb7f,%ax
c0036ac5:	0c 80                	or     $0x80,%al
c0036ac7:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036acb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036ace:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036ad1:	89 53 10             	mov    %edx,0x10(%ebx)
c0036ad4:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036ad7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036ada:	01 d0                	add    %edx,%eax
c0036adc:	89 03                	mov    %eax,(%ebx)
c0036ade:	89 f2                	mov    %esi,%edx
c0036ae0:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036ae3:	89 f1                	mov    %esi,%ecx
c0036ae5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036ae9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036aec:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036aef:	89 04 24             	mov    %eax,(%esp)
c0036af2:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036af5:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036af9:	e8 22 13 00 00       	call   c0037e20 <memmove>
c0036afe:	8b 03                	mov    (%ebx),%eax
c0036b00:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036b03:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036b06:	29 53 08             	sub    %edx,0x8(%ebx)
c0036b09:	01 c8                	add    %ecx,%eax
c0036b0b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036b0e:	89 03                	mov    %eax,(%ebx)
c0036b10:	8b 51 08             	mov    0x8(%ecx),%edx
c0036b13:	29 f2                	sub    %esi,%edx
c0036b15:	85 d2                	test   %edx,%edx
c0036b17:	89 51 08             	mov    %edx,0x8(%ecx)
c0036b1a:	0f 84 98 00 00 00    	je     c0036bb8 <__ssprint_r+0x1b8>
c0036b20:	8b 77 04             	mov    0x4(%edi),%esi
c0036b23:	83 c7 08             	add    $0x8,%edi
c0036b26:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036b29:	85 f6                	test   %esi,%esi
c0036b2b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036b2e:	74 f0                	je     c0036b20 <__ssprint_r+0x120>
c0036b30:	8b 53 08             	mov    0x8(%ebx),%edx
c0036b33:	39 d6                	cmp    %edx,%esi
c0036b35:	0f 83 04 ff ff ff    	jae    c0036a3f <__ssprint_r+0x3f>
c0036b3b:	89 f2                	mov    %esi,%edx
c0036b3d:	89 f1                	mov    %esi,%ecx
c0036b3f:	eb a4                	jmp    c0036ae5 <__ssprint_r+0xe5>
c0036b41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036b48:	89 d1                	mov    %edx,%ecx
c0036b4a:	eb 99                	jmp    c0036ae5 <__ssprint_r+0xe5>
c0036b4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036b50:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036b54:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036b57:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036b5e:	89 04 24             	mov    %eax,(%esp)
c0036b61:	e8 4a 13 00 00       	call   c0037eb0 <_realloc_r>
c0036b66:	85 c0                	test   %eax,%eax
c0036b68:	89 c2                	mov    %eax,%edx
c0036b6a:	0f 85 5b ff ff ff    	jne    c0036acb <__ssprint_r+0xcb>
c0036b70:	8b 43 10             	mov    0x10(%ebx),%eax
c0036b73:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b77:	8b 45 08             	mov    0x8(%ebp),%eax
c0036b7a:	89 04 24             	mov    %eax,(%esp)
c0036b7d:	e8 3e 10 00 00       	call   c0037bc0 <_free_r>
c0036b82:	8b 45 08             	mov    0x8(%ebp),%eax
c0036b85:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036b8b:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b8e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036b93:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036b9a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036ba1:	83 c4 2c             	add    $0x2c,%esp
c0036ba4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036ba9:	5b                   	pop    %ebx
c0036baa:	5e                   	pop    %esi
c0036bab:	5f                   	pop    %edi
c0036bac:	5d                   	pop    %ebp
c0036bad:	c3                   	ret    
c0036bae:	66 90                	xchg   %ax,%ax
c0036bb0:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036bb3:	e9 c7 fe ff ff       	jmp    c0036a7f <__ssprint_r+0x7f>
c0036bb8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036bbf:	83 c4 2c             	add    $0x2c,%esp
c0036bc2:	31 c0                	xor    %eax,%eax
c0036bc4:	5b                   	pop    %ebx
c0036bc5:	5e                   	pop    %esi
c0036bc6:	5f                   	pop    %edi
c0036bc7:	5d                   	pop    %ebp
c0036bc8:	c3                   	ret    
c0036bc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036bd0:	8b 45 10             	mov    0x10(%ebp),%eax
c0036bd3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036bda:	83 c4 2c             	add    $0x2c,%esp
c0036bdd:	31 c0                	xor    %eax,%eax
c0036bdf:	5b                   	pop    %ebx
c0036be0:	5e                   	pop    %esi
c0036be1:	5f                   	pop    %edi
c0036be2:	5d                   	pop    %ebp
c0036be3:	c3                   	ret    
c0036be4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036bea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036bf0 <_svfiprintf_r>:
c0036bf0:	55                   	push   %ebp
c0036bf1:	89 e5                	mov    %esp,%ebp
c0036bf3:	57                   	push   %edi
c0036bf4:	56                   	push   %esi
c0036bf5:	53                   	push   %ebx
c0036bf6:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036bfc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036bff:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036c03:	74 0b                	je     c0036c10 <_svfiprintf_r+0x20>
c0036c05:	8b 50 10             	mov    0x10(%eax),%edx
c0036c08:	85 d2                	test   %edx,%edx
c0036c0a:	0f 84 1c 0d 00 00    	je     c003792c <_svfiprintf_r+0xd3c>
c0036c10:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036c13:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036c16:	89 c6                	mov    %eax,%esi
c0036c18:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036c1e:	29 d8                	sub    %ebx,%eax
c0036c20:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036c27:	00 00 00 
c0036c2a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036c31:	00 00 00 
c0036c34:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036c3b:	00 00 00 
c0036c3e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036c45:	00 00 00 
c0036c48:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036c4e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036c51:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036c54:	0f b6 00             	movzbl (%eax),%eax
c0036c57:	84 c0                	test   %al,%al
c0036c59:	74 58                	je     c0036cb3 <_svfiprintf_r+0xc3>
c0036c5b:	3c 25                	cmp    $0x25,%al
c0036c5d:	75 13                	jne    c0036c72 <_svfiprintf_r+0x82>
c0036c5f:	eb 52                	jmp    c0036cb3 <_svfiprintf_r+0xc3>
c0036c61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c68:	84 c0                	test   %al,%al
c0036c6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036c70:	74 0a                	je     c0036c7c <_svfiprintf_r+0x8c>
c0036c72:	83 c3 01             	add    $0x1,%ebx
c0036c75:	0f b6 03             	movzbl (%ebx),%eax
c0036c78:	3c 25                	cmp    $0x25,%al
c0036c7a:	75 ec                	jne    c0036c68 <_svfiprintf_r+0x78>
c0036c7c:	89 df                	mov    %ebx,%edi
c0036c7e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036c81:	74 30                	je     c0036cb3 <_svfiprintf_r+0xc3>
c0036c83:	8b 45 10             	mov    0x10(%ebp),%eax
c0036c86:	83 c6 08             	add    $0x8,%esi
c0036c89:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036c8c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036c92:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036c95:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036c9b:	83 c0 01             	add    $0x1,%eax
c0036c9e:	83 f8 07             	cmp    $0x7,%eax
c0036ca1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036ca7:	0f 8f eb 0a 00 00    	jg     c0037798 <_svfiprintf_r+0xba8>
c0036cad:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036cb3:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036cb6:	0f 84 11 09 00 00    	je     c00375cd <_svfiprintf_r+0x9dd>
c0036cbc:	8d 43 01             	lea    0x1(%ebx),%eax
c0036cbf:	31 ff                	xor    %edi,%edi
c0036cc1:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036cc8:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036ccf:	ff ff ff 
c0036cd2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036cd9:	00 00 00 
c0036cdc:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036ce3:	00 00 00 
c0036ce6:	8d 50 01             	lea    0x1(%eax),%edx
c0036ce9:	0f be 00             	movsbl (%eax),%eax
c0036cec:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036cef:	83 f9 58             	cmp    $0x58,%ecx
c0036cf2:	0f 87 63 03 00 00    	ja     c003705b <_svfiprintf_r+0x46b>
c0036cf8:	ff 24 8d 08 9c 03 c0 	jmp    *-0x3ffc63f8(,%ecx,4)
c0036cff:	90                   	nop
c0036d00:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036d07:	89 d0                	mov    %edx,%eax
c0036d09:	eb db                	jmp    c0036ce6 <_svfiprintf_r+0xf6>
c0036d0b:	8b 45 14             	mov    0x14(%ebp),%eax
c0036d0e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036d11:	8b 00                	mov    (%eax),%eax
c0036d13:	83 c3 04             	add    $0x4,%ebx
c0036d16:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036d19:	85 c0                	test   %eax,%eax
c0036d1b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036d21:	79 e4                	jns    c0036d07 <_svfiprintf_r+0x117>
c0036d23:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036d29:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036d30:	89 d0                	mov    %edx,%eax
c0036d32:	eb b2                	jmp    c0036ce6 <_svfiprintf_r+0xf6>
c0036d34:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036d39:	89 d0                	mov    %edx,%eax
c0036d3b:	eb a9                	jmp    c0036ce6 <_svfiprintf_r+0xf6>
c0036d3d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036d40:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036d47:	89 55 10             	mov    %edx,0x10(%ebp)
c0036d4a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036d4f:	8b 08                	mov    (%eax),%ecx
c0036d51:	83 c0 04             	add    $0x4,%eax
c0036d54:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036d5b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036d62:	89 45 14             	mov    %eax,0x14(%ebp)
c0036d65:	c7 85 44 ff ff ff b3 	movl   $0xc00398b3,-0xbc(%ebp)
c0036d6c:	98 03 c0 
c0036d6f:	90                   	nop
c0036d70:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036d77:	31 ff                	xor    %edi,%edi
c0036d79:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036d7f:	89 d8                	mov    %ebx,%eax
c0036d81:	24 7f                	and    $0x7f,%al
c0036d83:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036d8a:	0f 48 c3             	cmovs  %ebx,%eax
c0036d8d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036d93:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036d99:	85 c0                	test   %eax,%eax
c0036d9b:	75 08                	jne    c0036da5 <_svfiprintf_r+0x1b5>
c0036d9d:	85 c9                	test   %ecx,%ecx
c0036d9f:	0f 84 03 08 00 00    	je     c00375a8 <_svfiprintf_r+0x9b8>
c0036da5:	80 fa 01             	cmp    $0x1,%dl
c0036da8:	0f 84 8a 0a 00 00    	je     c0037838 <_svfiprintf_r+0xc48>
c0036dae:	80 fa 02             	cmp    $0x2,%dl
c0036db1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036db4:	0f 85 86 01 00 00    	jne    c0036f40 <_svfiprintf_r+0x350>
c0036dba:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036dc0:	89 c8                	mov    %ecx,%eax
c0036dc2:	83 eb 01             	sub    $0x1,%ebx
c0036dc5:	83 e0 0f             	and    $0xf,%eax
c0036dc8:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036dcc:	c1 e9 04             	shr    $0x4,%ecx
c0036dcf:	85 c9                	test   %ecx,%ecx
c0036dd1:	88 03                	mov    %al,(%ebx)
c0036dd3:	75 eb                	jne    c0036dc0 <_svfiprintf_r+0x1d0>
c0036dd5:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036dd8:	29 d8                	sub    %ebx,%eax
c0036dda:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036de0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036de6:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036dec:	39 c1                	cmp    %eax,%ecx
c0036dee:	0f 4d c1             	cmovge %ecx,%eax
c0036df1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036df7:	89 f8                	mov    %edi,%eax
c0036df9:	3c 01                	cmp    $0x1,%al
c0036dfb:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036e02:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036e08:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036e0e:	89 d0                	mov    %edx,%eax
c0036e10:	89 cf                	mov    %ecx,%edi
c0036e12:	83 c0 02             	add    $0x2,%eax
c0036e15:	83 e7 02             	and    $0x2,%edi
c0036e18:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036e1e:	89 cf                	mov    %ecx,%edi
c0036e20:	0f 44 c2             	cmove  %edx,%eax
c0036e23:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036e29:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036e2f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036e35:	0f 85 cd 04 00 00    	jne    c0037308 <_svfiprintf_r+0x718>
c0036e3b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036e41:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036e47:	85 ff                	test   %edi,%edi
c0036e49:	0f 8e b9 04 00 00    	jle    c0037308 <_svfiprintf_r+0x718>
c0036e4f:	83 ff 10             	cmp    $0x10,%edi
c0036e52:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036e58:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036e5e:	7e 7c                	jle    c0036edc <_svfiprintf_r+0x2ec>
c0036e60:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0036e66:	89 f1                	mov    %esi,%ecx
c0036e68:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036e6b:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036e6e:	eb 08                	jmp    c0036e78 <_svfiprintf_r+0x288>
c0036e70:	83 ef 10             	sub    $0x10,%edi
c0036e73:	83 ff 10             	cmp    $0x10,%edi
c0036e76:	7e 5c                	jle    c0036ed4 <_svfiprintf_r+0x2e4>
c0036e78:	83 c0 01             	add    $0x1,%eax
c0036e7b:	83 c2 10             	add    $0x10,%edx
c0036e7e:	c7 01 7c 9d 03 c0    	movl   $0xc0039d7c,(%ecx)
c0036e84:	83 c1 08             	add    $0x8,%ecx
c0036e87:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0036e8e:	83 f8 07             	cmp    $0x7,%eax
c0036e91:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036e97:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036e9d:	7e d1                	jle    c0036e70 <_svfiprintf_r+0x280>
c0036e9f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036ea5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036ea9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036ead:	89 1c 24             	mov    %ebx,(%esp)
c0036eb0:	e8 4b fb ff ff       	call   c0036a00 <__ssprint_r>
c0036eb5:	85 c0                	test   %eax,%eax
c0036eb7:	0f 85 3b 07 00 00    	jne    c00375f8 <_svfiprintf_r+0xa08>
c0036ebd:	83 ef 10             	sub    $0x10,%edi
c0036ec0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036ec6:	83 ff 10             	cmp    $0x10,%edi
c0036ec9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036ecf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0036ed2:	7f a4                	jg     c0036e78 <_svfiprintf_r+0x288>
c0036ed4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c0036eda:	89 ce                	mov    %ecx,%esi
c0036edc:	83 c0 01             	add    $0x1,%eax
c0036edf:	01 fa                	add    %edi,%edx
c0036ee1:	c7 06 7c 9d 03 c0    	movl   $0xc0039d7c,(%esi)
c0036ee7:	83 c6 08             	add    $0x8,%esi
c0036eea:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036eed:	83 f8 07             	cmp    $0x7,%eax
c0036ef0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036ef6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036efc:	0f 8e 12 04 00 00    	jle    c0037314 <_svfiprintf_r+0x724>
c0036f02:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036f08:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036f0c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036f0f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036f13:	8b 45 08             	mov    0x8(%ebp),%eax
c0036f16:	89 04 24             	mov    %eax,(%esp)
c0036f19:	e8 e2 fa ff ff       	call   c0036a00 <__ssprint_r>
c0036f1e:	85 c0                	test   %eax,%eax
c0036f20:	0f 85 d2 06 00 00    	jne    c00375f8 <_svfiprintf_r+0xa08>
c0036f26:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036f2c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0036f2f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036f35:	e9 da 03 00 00       	jmp    c0037314 <_svfiprintf_r+0x724>
c0036f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036f40:	89 c8                	mov    %ecx,%eax
c0036f42:	83 eb 01             	sub    $0x1,%ebx
c0036f45:	83 e0 07             	and    $0x7,%eax
c0036f48:	c1 e9 03             	shr    $0x3,%ecx
c0036f4b:	83 c0 30             	add    $0x30,%eax
c0036f4e:	85 c9                	test   %ecx,%ecx
c0036f50:	88 03                	mov    %al,(%ebx)
c0036f52:	75 ec                	jne    c0036f40 <_svfiprintf_r+0x350>
c0036f54:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0036f5b:	89 da                	mov    %ebx,%edx
c0036f5d:	0f 84 72 fe ff ff    	je     c0036dd5 <_svfiprintf_r+0x1e5>
c0036f63:	3c 30                	cmp    $0x30,%al
c0036f65:	0f 84 6a fe ff ff    	je     c0036dd5 <_svfiprintf_r+0x1e5>
c0036f6b:	83 eb 01             	sub    $0x1,%ebx
c0036f6e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036f71:	29 d8                	sub    %ebx,%eax
c0036f73:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0036f77:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036f7d:	e9 5e fe ff ff       	jmp    c0036de0 <_svfiprintf_r+0x1f0>
c0036f82:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036f89:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0036f90:	89 55 10             	mov    %edx,0x10(%ebp)
c0036f93:	8b 45 14             	mov    0x14(%ebp),%eax
c0036f96:	0f 85 48 01 00 00    	jne    c00370e4 <_svfiprintf_r+0x4f4>
c0036f9c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0036fa3:	0f 84 3b 01 00 00    	je     c00370e4 <_svfiprintf_r+0x4f4>
c0036fa9:	0f b7 08             	movzwl (%eax),%ecx
c0036fac:	83 c0 04             	add    $0x4,%eax
c0036faf:	31 d2                	xor    %edx,%edx
c0036fb1:	89 45 14             	mov    %eax,0x14(%ebp)
c0036fb4:	e9 b7 fd ff ff       	jmp    c0036d70 <_svfiprintf_r+0x180>
c0036fb9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036fc0:	89 f8                	mov    %edi,%eax
c0036fc2:	89 55 10             	mov    %edx,0x10(%ebp)
c0036fc5:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0036fcb:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0036fd2:	8b 45 14             	mov    0x14(%ebp),%eax
c0036fd5:	75 0d                	jne    c0036fe4 <_svfiprintf_r+0x3f4>
c0036fd7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0036fde:	0f 85 f2 08 00 00    	jne    c00378d6 <_svfiprintf_r+0xce6>
c0036fe4:	8b 08                	mov    (%eax),%ecx
c0036fe6:	83 c0 04             	add    $0x4,%eax
c0036fe9:	89 45 14             	mov    %eax,0x14(%ebp)
c0036fec:	85 c9                	test   %ecx,%ecx
c0036fee:	0f 88 f3 08 00 00    	js     c00378e7 <_svfiprintf_r+0xcf7>
c0036ff4:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0036ffb:	ba 01 00 00 00       	mov    $0x1,%edx
c0037000:	e9 74 fd ff ff       	jmp    c0036d79 <_svfiprintf_r+0x189>
c0037005:	0f be 02             	movsbl (%edx),%eax
c0037008:	8d 5a 01             	lea    0x1(%edx),%ebx
c003700b:	83 f8 2a             	cmp    $0x2a,%eax
c003700e:	0f 84 af 09 00 00    	je     c00379c3 <_svfiprintf_r+0xdd3>
c0037014:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037017:	31 d2                	xor    %edx,%edx
c0037019:	83 f9 09             	cmp    $0x9,%ecx
c003701c:	0f 87 90 09 00 00    	ja     c00379b2 <_svfiprintf_r+0xdc2>
c0037022:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037028:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003702b:	83 c3 01             	add    $0x1,%ebx
c003702e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037031:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037035:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037038:	83 f9 09             	cmp    $0x9,%ecx
c003703b:	76 eb                	jbe    c0037028 <_svfiprintf_r+0x438>
c003703d:	85 d2                	test   %edx,%edx
c003703f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037044:	0f 48 d1             	cmovs  %ecx,%edx
c0037047:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003704a:	83 f9 58             	cmp    $0x58,%ecx
c003704d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037053:	89 da                	mov    %ebx,%edx
c0037055:	0f 86 9d fc ff ff    	jbe    c0036cf8 <_svfiprintf_r+0x108>
c003705b:	89 fb                	mov    %edi,%ebx
c003705d:	85 c0                	test   %eax,%eax
c003705f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037062:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037068:	0f 84 5f 05 00 00    	je     c00375cd <_svfiprintf_r+0x9dd>
c003706e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037071:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037074:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003707b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037082:	00 00 00 
c0037085:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003708c:	00 00 00 
c003708f:	e9 5a 01 00 00       	jmp    c00371ee <_svfiprintf_r+0x5fe>
c0037094:	31 db                	xor    %ebx,%ebx
c0037096:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037099:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00370a0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c00370a3:	83 c2 01             	add    $0x1,%edx
c00370a6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c00370a9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c00370ad:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00370b0:	83 f9 09             	cmp    $0x9,%ecx
c00370b3:	76 eb                	jbe    c00370a0 <_svfiprintf_r+0x4b0>
c00370b5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c00370bb:	e9 2c fc ff ff       	jmp    c0036cec <_svfiprintf_r+0xfc>
c00370c0:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c00370c7:	00 00 00 
c00370ca:	89 d0                	mov    %edx,%eax
c00370cc:	e9 15 fc ff ff       	jmp    c0036ce6 <_svfiprintf_r+0xf6>
c00370d1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370d8:	89 55 10             	mov    %edx,0x10(%ebp)
c00370db:	8b 45 14             	mov    0x14(%ebp),%eax
c00370de:	0f 84 b8 fe ff ff    	je     c0036f9c <_svfiprintf_r+0x3ac>
c00370e4:	8b 08                	mov    (%eax),%ecx
c00370e6:	83 c0 04             	add    $0x4,%eax
c00370e9:	31 d2                	xor    %edx,%edx
c00370eb:	89 45 14             	mov    %eax,0x14(%ebp)
c00370ee:	e9 7d fc ff ff       	jmp    c0036d70 <_svfiprintf_r+0x180>
c00370f3:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370fa:	89 f8                	mov    %edi,%eax
c00370fc:	89 55 10             	mov    %edx,0x10(%ebp)
c00370ff:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037105:	0f 85 a2 07 00 00    	jne    c00378ad <_svfiprintf_r+0xcbd>
c003710b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037112:	0f 84 95 07 00 00    	je     c00378ad <_svfiprintf_r+0xcbd>
c0037118:	8b 45 14             	mov    0x14(%ebp),%eax
c003711b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037122:	8b 00                	mov    (%eax),%eax
c0037124:	66 89 18             	mov    %bx,(%eax)
c0037127:	8b 45 14             	mov    0x14(%ebp),%eax
c003712a:	83 c0 04             	add    $0x4,%eax
c003712d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037130:	e9 19 fb ff ff       	jmp    c0036c4e <_svfiprintf_r+0x5e>
c0037135:	89 fb                	mov    %edi,%ebx
c0037137:	89 55 10             	mov    %edx,0x10(%ebp)
c003713a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037140:	c7 85 44 ff ff ff b3 	movl   $0xc00398b3,-0xbc(%ebp)
c0037147:	98 03 c0 
c003714a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037151:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037154:	75 0d                	jne    c0037163 <_svfiprintf_r+0x573>
c0037156:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003715d:	0f 85 65 07 00 00    	jne    c00378c8 <_svfiprintf_r+0xcd8>
c0037163:	8b 0b                	mov    (%ebx),%ecx
c0037165:	83 c3 04             	add    $0x4,%ebx
c0037168:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003716b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037172:	ba 02 00 00 00       	mov    $0x2,%edx
c0037177:	0f 84 f3 fb ff ff    	je     c0036d70 <_svfiprintf_r+0x180>
c003717d:	85 c9                	test   %ecx,%ecx
c003717f:	0f 84 eb fb ff ff    	je     c0036d70 <_svfiprintf_r+0x180>
c0037185:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003718c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0037192:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037199:	e9 d2 fb ff ff       	jmp    c0036d70 <_svfiprintf_r+0x180>
c003719e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c00371a5:	89 d0                	mov    %edx,%eax
c00371a7:	e9 3a fb ff ff       	jmp    c0036ce6 <_svfiprintf_r+0xf6>
c00371ac:	89 f8                	mov    %edi,%eax
c00371ae:	89 55 10             	mov    %edx,0x10(%ebp)
c00371b1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00371b7:	e9 0f fe ff ff       	jmp    c0036fcb <_svfiprintf_r+0x3db>
c00371bc:	8b 45 14             	mov    0x14(%ebp),%eax
c00371bf:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00371c2:	89 55 10             	mov    %edx,0x10(%ebp)
c00371c5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00371cc:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00371d3:	00 00 00 
c00371d6:	8b 00                	mov    (%eax),%eax
c00371d8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00371df:	00 00 00 
c00371e2:	88 45 80             	mov    %al,-0x80(%ebp)
c00371e5:	8b 45 14             	mov    0x14(%ebp),%eax
c00371e8:	83 c0 04             	add    $0x4,%eax
c00371eb:	89 45 14             	mov    %eax,0x14(%ebp)
c00371ee:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00371f5:	00 00 00 
c00371f8:	e9 05 fc ff ff       	jmp    c0036e02 <_svfiprintf_r+0x212>
c00371fd:	89 fb                	mov    %edi,%ebx
c00371ff:	89 55 10             	mov    %edx,0x10(%ebp)
c0037202:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037208:	c7 85 44 ff ff ff a2 	movl   $0xc00398a2,-0xbc(%ebp)
c003720f:	98 03 c0 
c0037212:	e9 33 ff ff ff       	jmp    c003714a <_svfiprintf_r+0x55a>
c0037217:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c003721e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037225:	89 55 10             	mov    %edx,0x10(%ebp)
c0037228:	8b 45 14             	mov    0x14(%ebp),%eax
c003722b:	75 39                	jne    c0037266 <_svfiprintf_r+0x676>
c003722d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037234:	74 30                	je     c0037266 <_svfiprintf_r+0x676>
c0037236:	0f b7 08             	movzwl (%eax),%ecx
c0037239:	83 c0 04             	add    $0x4,%eax
c003723c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037241:	89 45 14             	mov    %eax,0x14(%ebp)
c0037244:	e9 27 fb ff ff       	jmp    c0036d70 <_svfiprintf_r+0x180>
c0037249:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037250:	89 d0                	mov    %edx,%eax
c0037252:	e9 8f fa ff ff       	jmp    c0036ce6 <_svfiprintf_r+0xf6>
c0037257:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003725e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037261:	8b 45 14             	mov    0x14(%ebp),%eax
c0037264:	74 c7                	je     c003722d <_svfiprintf_r+0x63d>
c0037266:	8b 08                	mov    (%eax),%ecx
c0037268:	83 c0 04             	add    $0x4,%eax
c003726b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037270:	89 45 14             	mov    %eax,0x14(%ebp)
c0037273:	e9 f8 fa ff ff       	jmp    c0036d70 <_svfiprintf_r+0x180>
c0037278:	8b 45 14             	mov    0x14(%ebp),%eax
c003727b:	89 55 10             	mov    %edx,0x10(%ebp)
c003727e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037285:	8b 18                	mov    (%eax),%ebx
c0037287:	8d 50 04             	lea    0x4(%eax),%edx
c003728a:	85 db                	test   %ebx,%ebx
c003728c:	0f 84 cc 06 00 00    	je     c003795e <_svfiprintf_r+0xd6e>
c0037292:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037298:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c003729e:	85 ff                	test   %edi,%edi
c00372a0:	0f 88 59 06 00 00    	js     c00378ff <_svfiprintf_r+0xd0f>
c00372a6:	89 7c 24 08          	mov    %edi,0x8(%esp)
c00372aa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00372b1:	00 
c00372b2:	89 1c 24             	mov    %ebx,(%esp)
c00372b5:	e8 06 e7 ff ff       	call   c00359c0 <memchr>
c00372ba:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00372c0:	85 c0                	test   %eax,%eax
c00372c2:	0f 84 c5 06 00 00    	je     c003798d <_svfiprintf_r+0xd9d>
c00372c8:	29 d8                	sub    %ebx,%eax
c00372ca:	39 f8                	cmp    %edi,%eax
c00372cc:	0f 4f c7             	cmovg  %edi,%eax
c00372cf:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00372d6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00372dc:	89 55 14             	mov    %edx,0x14(%ebp)
c00372df:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00372e6:	00 00 00 
c00372e9:	e9 f2 fa ff ff       	jmp    c0036de0 <_svfiprintf_r+0x1f0>
c00372ee:	89 f8                	mov    %edi,%eax
c00372f0:	84 c0                	test   %al,%al
c00372f2:	b8 20 00 00 00       	mov    $0x20,%eax
c00372f7:	0f 44 f8             	cmove  %eax,%edi
c00372fa:	89 d0                	mov    %edx,%eax
c00372fc:	e9 e5 f9 ff ff       	jmp    c0036ce6 <_svfiprintf_r+0xf6>
c0037301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037308:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003730e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037314:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c003731b:	74 2e                	je     c003734b <_svfiprintf_r+0x75b>
c003731d:	83 c0 01             	add    $0x1,%eax
c0037320:	83 c2 01             	add    $0x1,%edx
c0037323:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037329:	83 c6 08             	add    $0x8,%esi
c003732c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003732f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037336:	83 f8 07             	cmp    $0x7,%eax
c0037339:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003733f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037345:	0f 8f b5 04 00 00    	jg     c0037800 <_svfiprintf_r+0xc10>
c003734b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037351:	85 c9                	test   %ecx,%ecx
c0037353:	74 2e                	je     c0037383 <_svfiprintf_r+0x793>
c0037355:	83 c0 01             	add    $0x1,%eax
c0037358:	83 c2 02             	add    $0x2,%edx
c003735b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037361:	83 c6 08             	add    $0x8,%esi
c0037364:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037367:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003736e:	83 f8 07             	cmp    $0x7,%eax
c0037371:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037377:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003737d:	0f 8f 45 04 00 00    	jg     c00377c8 <_svfiprintf_r+0xbd8>
c0037383:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c003738a:	00 00 00 
c003738d:	0f 84 9d 02 00 00    	je     c0037630 <_svfiprintf_r+0xa40>
c0037393:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037399:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c003739f:	85 ff                	test   %edi,%edi
c00373a1:	0f 8e e1 00 00 00    	jle    c0037488 <_svfiprintf_r+0x898>
c00373a7:	83 ff 10             	cmp    $0x10,%edi
c00373aa:	0f 8e 7c 00 00 00    	jle    c003742c <_svfiprintf_r+0x83c>
c00373b0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c00373b6:	89 f1                	mov    %esi,%ecx
c00373b8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00373bb:	8b 75 0c             	mov    0xc(%ebp),%esi
c00373be:	eb 08                	jmp    c00373c8 <_svfiprintf_r+0x7d8>
c00373c0:	83 ef 10             	sub    $0x10,%edi
c00373c3:	83 ff 10             	cmp    $0x10,%edi
c00373c6:	7e 5c                	jle    c0037424 <_svfiprintf_r+0x834>
c00373c8:	83 c0 01             	add    $0x1,%eax
c00373cb:	83 c2 10             	add    $0x10,%edx
c00373ce:	c7 01 6c 9d 03 c0    	movl   $0xc0039d6c,(%ecx)
c00373d4:	83 c1 08             	add    $0x8,%ecx
c00373d7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00373de:	83 f8 07             	cmp    $0x7,%eax
c00373e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00373e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00373ed:	7e d1                	jle    c00373c0 <_svfiprintf_r+0x7d0>
c00373ef:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00373f5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00373f9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00373fd:	89 1c 24             	mov    %ebx,(%esp)
c0037400:	e8 fb f5 ff ff       	call   c0036a00 <__ssprint_r>
c0037405:	85 c0                	test   %eax,%eax
c0037407:	0f 85 eb 01 00 00    	jne    c00375f8 <_svfiprintf_r+0xa08>
c003740d:	83 ef 10             	sub    $0x10,%edi
c0037410:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037416:	83 ff 10             	cmp    $0x10,%edi
c0037419:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003741f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037422:	7f a4                	jg     c00373c8 <_svfiprintf_r+0x7d8>
c0037424:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003742a:	89 ce                	mov    %ecx,%esi
c003742c:	83 c0 01             	add    $0x1,%eax
c003742f:	01 fa                	add    %edi,%edx
c0037431:	c7 06 6c 9d 03 c0    	movl   $0xc0039d6c,(%esi)
c0037437:	83 c6 08             	add    $0x8,%esi
c003743a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003743d:	83 f8 07             	cmp    $0x7,%eax
c0037440:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037446:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003744c:	7e 3a                	jle    c0037488 <_svfiprintf_r+0x898>
c003744e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037454:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037458:	8b 45 0c             	mov    0xc(%ebp),%eax
c003745b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003745f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037462:	89 04 24             	mov    %eax,(%esp)
c0037465:	e8 96 f5 ff ff       	call   c0036a00 <__ssprint_r>
c003746a:	85 c0                	test   %eax,%eax
c003746c:	0f 85 86 01 00 00    	jne    c00375f8 <_svfiprintf_r+0xa08>
c0037472:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037478:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003747b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037488:	89 1e                	mov    %ebx,(%esi)
c003748a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037490:	83 c0 01             	add    $0x1,%eax
c0037493:	83 c6 08             	add    $0x8,%esi
c0037496:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003749c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c003749f:	01 da                	add    %ebx,%edx
c00374a1:	83 f8 07             	cmp    $0x7,%eax
c00374a4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00374aa:	0f 8f 80 02 00 00    	jg     c0037730 <_svfiprintf_r+0xb40>
c00374b0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c00374b7:	0f 84 b9 00 00 00    	je     c0037576 <_svfiprintf_r+0x986>
c00374bd:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c00374c3:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c00374c9:	85 ff                	test   %edi,%edi
c00374cb:	0f 8e a5 00 00 00    	jle    c0037576 <_svfiprintf_r+0x986>
c00374d1:	83 ff 10             	cmp    $0x10,%edi
c00374d4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00374da:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00374e0:	7e 71                	jle    c0037553 <_svfiprintf_r+0x963>
c00374e2:	89 f1                	mov    %esi,%ecx
c00374e4:	8b 75 08             	mov    0x8(%ebp),%esi
c00374e7:	eb 0f                	jmp    c00374f8 <_svfiprintf_r+0x908>
c00374e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00374f0:	83 ef 10             	sub    $0x10,%edi
c00374f3:	83 ff 10             	cmp    $0x10,%edi
c00374f6:	7e 59                	jle    c0037551 <_svfiprintf_r+0x961>
c00374f8:	83 c0 01             	add    $0x1,%eax
c00374fb:	83 c2 10             	add    $0x10,%edx
c00374fe:	c7 01 7c 9d 03 c0    	movl   $0xc0039d7c,(%ecx)
c0037504:	83 c1 08             	add    $0x8,%ecx
c0037507:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003750e:	83 f8 07             	cmp    $0x7,%eax
c0037511:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037517:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003751d:	7e d1                	jle    c00374f0 <_svfiprintf_r+0x900>
c003751f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037522:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037526:	89 34 24             	mov    %esi,(%esp)
c0037529:	89 44 24 04          	mov    %eax,0x4(%esp)
c003752d:	e8 ce f4 ff ff       	call   c0036a00 <__ssprint_r>
c0037532:	85 c0                	test   %eax,%eax
c0037534:	0f 85 be 00 00 00    	jne    c00375f8 <_svfiprintf_r+0xa08>
c003753a:	83 ef 10             	sub    $0x10,%edi
c003753d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037543:	83 ff 10             	cmp    $0x10,%edi
c0037546:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003754c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003754f:	7f a7                	jg     c00374f8 <_svfiprintf_r+0x908>
c0037551:	89 ce                	mov    %ecx,%esi
c0037553:	83 c0 01             	add    $0x1,%eax
c0037556:	01 fa                	add    %edi,%edx
c0037558:	83 f8 07             	cmp    $0x7,%eax
c003755b:	c7 06 7c 9d 03 c0    	movl   $0xc0039d7c,(%esi)
c0037561:	89 7e 04             	mov    %edi,0x4(%esi)
c0037564:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003756a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037570:	0f 8f ee 02 00 00    	jg     c0037864 <_svfiprintf_r+0xc74>
c0037576:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c003757c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037582:	39 c6                	cmp    %eax,%esi
c0037584:	0f 4d c6             	cmovge %esi,%eax
c0037587:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c003758d:	85 d2                	test   %edx,%edx
c003758f:	0f 85 d3 01 00 00    	jne    c0037768 <_svfiprintf_r+0xb78>
c0037595:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003759c:	00 00 00 
c003759f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00375a2:	e9 a7 f6 ff ff       	jmp    c0036c4e <_svfiprintf_r+0x5e>
c00375a7:	90                   	nop
c00375a8:	84 d2                	test   %dl,%dl
c00375aa:	75 6c                	jne    c0037618 <_svfiprintf_r+0xa28>
c00375ac:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00375b3:	74 63                	je     c0037618 <_svfiprintf_r+0xa28>
c00375b5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00375bb:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00375be:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c00375c2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00375c8:	e9 13 f8 ff ff       	jmp    c0036de0 <_svfiprintf_r+0x1f0>
c00375cd:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00375d3:	85 c0                	test   %eax,%eax
c00375d5:	74 21                	je     c00375f8 <_svfiprintf_r+0xa08>
c00375d7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00375dd:	89 44 24 08          	mov    %eax,0x8(%esp)
c00375e1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00375e4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00375e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00375eb:	89 04 24             	mov    %eax,(%esp)
c00375ee:	e8 0d f4 ff ff       	call   c0036a00 <__ssprint_r>
c00375f3:	90                   	nop
c00375f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00375f8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00375fb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037600:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037604:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c003760b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037611:	5b                   	pop    %ebx
c0037612:	5e                   	pop    %esi
c0037613:	5f                   	pop    %edi
c0037614:	5d                   	pop    %ebp
c0037615:	c3                   	ret    
c0037616:	66 90                	xchg   %ax,%ax
c0037618:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c003761f:	00 00 00 
c0037622:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037625:	e9 b6 f7 ff ff       	jmp    c0036de0 <_svfiprintf_r+0x1f0>
c003762a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037630:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037636:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003763c:	85 ff                	test   %edi,%edi
c003763e:	0f 8e 4f fd ff ff    	jle    c0037393 <_svfiprintf_r+0x7a3>
c0037644:	83 ff 10             	cmp    $0x10,%edi
c0037647:	0f 8e 7f 00 00 00    	jle    c00376cc <_svfiprintf_r+0xadc>
c003764d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037653:	89 f1                	mov    %esi,%ecx
c0037655:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037658:	8b 75 0c             	mov    0xc(%ebp),%esi
c003765b:	eb 0b                	jmp    c0037668 <_svfiprintf_r+0xa78>
c003765d:	8d 76 00             	lea    0x0(%esi),%esi
c0037660:	83 ef 10             	sub    $0x10,%edi
c0037663:	83 ff 10             	cmp    $0x10,%edi
c0037666:	7e 5c                	jle    c00376c4 <_svfiprintf_r+0xad4>
c0037668:	83 c0 01             	add    $0x1,%eax
c003766b:	83 c2 10             	add    $0x10,%edx
c003766e:	c7 01 6c 9d 03 c0    	movl   $0xc0039d6c,(%ecx)
c0037674:	83 c1 08             	add    $0x8,%ecx
c0037677:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003767e:	83 f8 07             	cmp    $0x7,%eax
c0037681:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037687:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003768d:	7e d1                	jle    c0037660 <_svfiprintf_r+0xa70>
c003768f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037695:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037699:	89 74 24 04          	mov    %esi,0x4(%esp)
c003769d:	89 1c 24             	mov    %ebx,(%esp)
c00376a0:	e8 5b f3 ff ff       	call   c0036a00 <__ssprint_r>
c00376a5:	85 c0                	test   %eax,%eax
c00376a7:	0f 85 4b ff ff ff    	jne    c00375f8 <_svfiprintf_r+0xa08>
c00376ad:	83 ef 10             	sub    $0x10,%edi
c00376b0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00376b6:	83 ff 10             	cmp    $0x10,%edi
c00376b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00376bf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00376c2:	7f a4                	jg     c0037668 <_svfiprintf_r+0xa78>
c00376c4:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c00376ca:	89 ce                	mov    %ecx,%esi
c00376cc:	83 c0 01             	add    $0x1,%eax
c00376cf:	01 fa                	add    %edi,%edx
c00376d1:	c7 06 6c 9d 03 c0    	movl   $0xc0039d6c,(%esi)
c00376d7:	83 c6 08             	add    $0x8,%esi
c00376da:	89 7e fc             	mov    %edi,-0x4(%esi)
c00376dd:	83 f8 07             	cmp    $0x7,%eax
c00376e0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00376e6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00376ec:	0f 8e a1 fc ff ff    	jle    c0037393 <_svfiprintf_r+0x7a3>
c00376f2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00376f8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00376fc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00376ff:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037703:	8b 45 08             	mov    0x8(%ebp),%eax
c0037706:	89 04 24             	mov    %eax,(%esp)
c0037709:	e8 f2 f2 ff ff       	call   c0036a00 <__ssprint_r>
c003770e:	85 c0                	test   %eax,%eax
c0037710:	0f 85 e2 fe ff ff    	jne    c00375f8 <_svfiprintf_r+0xa08>
c0037716:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003771c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003771f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037725:	e9 69 fc ff ff       	jmp    c0037393 <_svfiprintf_r+0x7a3>
c003772a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037730:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037736:	89 44 24 08          	mov    %eax,0x8(%esp)
c003773a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003773d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037741:	8b 45 08             	mov    0x8(%ebp),%eax
c0037744:	89 04 24             	mov    %eax,(%esp)
c0037747:	e8 b4 f2 ff ff       	call   c0036a00 <__ssprint_r>
c003774c:	85 c0                	test   %eax,%eax
c003774e:	0f 85 a4 fe ff ff    	jne    c00375f8 <_svfiprintf_r+0xa08>
c0037754:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003775a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003775d:	e9 4e fd ff ff       	jmp    c00374b0 <_svfiprintf_r+0x8c0>
c0037762:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037768:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003776e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037772:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037775:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037779:	8b 45 08             	mov    0x8(%ebp),%eax
c003777c:	89 04 24             	mov    %eax,(%esp)
c003777f:	e8 7c f2 ff ff       	call   c0036a00 <__ssprint_r>
c0037784:	85 c0                	test   %eax,%eax
c0037786:	0f 84 09 fe ff ff    	je     c0037595 <_svfiprintf_r+0x9a5>
c003778c:	e9 67 fe ff ff       	jmp    c00375f8 <_svfiprintf_r+0xa08>
c0037791:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037798:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003779e:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377a2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00377a5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00377a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00377ac:	89 04 24             	mov    %eax,(%esp)
c00377af:	e8 4c f2 ff ff       	call   c0036a00 <__ssprint_r>
c00377b4:	85 c0                	test   %eax,%eax
c00377b6:	0f 85 3c fe ff ff    	jne    c00375f8 <_svfiprintf_r+0xa08>
c00377bc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00377bf:	e9 e9 f4 ff ff       	jmp    c0036cad <_svfiprintf_r+0xbd>
c00377c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00377c8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377ce:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377d2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00377d5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00377d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00377dc:	89 04 24             	mov    %eax,(%esp)
c00377df:	e8 1c f2 ff ff       	call   c0036a00 <__ssprint_r>
c00377e4:	85 c0                	test   %eax,%eax
c00377e6:	0f 85 0c fe ff ff    	jne    c00375f8 <_svfiprintf_r+0xa08>
c00377ec:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00377f2:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00377f5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00377fb:	e9 83 fb ff ff       	jmp    c0037383 <_svfiprintf_r+0x793>
c0037800:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037806:	89 44 24 08          	mov    %eax,0x8(%esp)
c003780a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003780d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037811:	8b 45 08             	mov    0x8(%ebp),%eax
c0037814:	89 04 24             	mov    %eax,(%esp)
c0037817:	e8 e4 f1 ff ff       	call   c0036a00 <__ssprint_r>
c003781c:	85 c0                	test   %eax,%eax
c003781e:	0f 85 d4 fd ff ff    	jne    c00375f8 <_svfiprintf_r+0xa08>
c0037824:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003782a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003782d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037833:	e9 13 fb ff ff       	jmp    c003734b <_svfiprintf_r+0x75b>
c0037838:	83 f9 09             	cmp    $0x9,%ecx
c003783b:	76 56                	jbe    c0037893 <_svfiprintf_r+0xca3>
c003783d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037840:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037845:	83 eb 01             	sub    $0x1,%ebx
c0037848:	f7 e1                	mul    %ecx
c003784a:	c1 ea 03             	shr    $0x3,%edx
c003784d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037850:	01 c0                	add    %eax,%eax
c0037852:	29 c1                	sub    %eax,%ecx
c0037854:	83 c1 30             	add    $0x30,%ecx
c0037857:	85 d2                	test   %edx,%edx
c0037859:	88 0b                	mov    %cl,(%ebx)
c003785b:	89 d1                	mov    %edx,%ecx
c003785d:	75 e1                	jne    c0037840 <_svfiprintf_r+0xc50>
c003785f:	e9 71 f5 ff ff       	jmp    c0036dd5 <_svfiprintf_r+0x1e5>
c0037864:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003786a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003786e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037871:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037875:	8b 45 08             	mov    0x8(%ebp),%eax
c0037878:	89 04 24             	mov    %eax,(%esp)
c003787b:	e8 80 f1 ff ff       	call   c0036a00 <__ssprint_r>
c0037880:	85 c0                	test   %eax,%eax
c0037882:	0f 85 70 fd ff ff    	jne    c00375f8 <_svfiprintf_r+0xa08>
c0037888:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003788e:	e9 e3 fc ff ff       	jmp    c0037576 <_svfiprintf_r+0x986>
c0037893:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037899:	83 c1 30             	add    $0x30,%ecx
c003789c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c003789f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00378a2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00378a8:	e9 33 f5 ff ff       	jmp    c0036de0 <_svfiprintf_r+0x1f0>
c00378ad:	8b 45 14             	mov    0x14(%ebp),%eax
c00378b0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c00378b6:	8b 00                	mov    (%eax),%eax
c00378b8:	89 18                	mov    %ebx,(%eax)
c00378ba:	8b 45 14             	mov    0x14(%ebp),%eax
c00378bd:	83 c0 04             	add    $0x4,%eax
c00378c0:	89 45 14             	mov    %eax,0x14(%ebp)
c00378c3:	e9 86 f3 ff ff       	jmp    c0036c4e <_svfiprintf_r+0x5e>
c00378c8:	0f b7 0b             	movzwl (%ebx),%ecx
c00378cb:	83 c3 04             	add    $0x4,%ebx
c00378ce:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00378d1:	e9 95 f8 ff ff       	jmp    c003716b <_svfiprintf_r+0x57b>
c00378d6:	0f bf 08             	movswl (%eax),%ecx
c00378d9:	83 c0 04             	add    $0x4,%eax
c00378dc:	89 45 14             	mov    %eax,0x14(%ebp)
c00378df:	85 c9                	test   %ecx,%ecx
c00378e1:	0f 89 0d f7 ff ff    	jns    c0036ff4 <_svfiprintf_r+0x404>
c00378e7:	f7 d9                	neg    %ecx
c00378e9:	bf 2d 00 00 00       	mov    $0x2d,%edi
c00378ee:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c00378f5:	ba 01 00 00 00       	mov    $0x1,%edx
c00378fa:	e9 7a f4 ff ff       	jmp    c0036d79 <_svfiprintf_r+0x189>
c00378ff:	89 1c 24             	mov    %ebx,(%esp)
c0037902:	e8 79 f0 ff ff       	call   c0036980 <strlen>
c0037907:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c003790d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037914:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c003791b:	00 00 00 
c003791e:	89 55 14             	mov    %edx,0x14(%ebp)
c0037921:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037927:	e9 b4 f4 ff ff       	jmp    c0036de0 <_svfiprintf_r+0x1f0>
c003792c:	8b 45 08             	mov    0x8(%ebp),%eax
c003792f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037936:	00 
c0037937:	89 04 24             	mov    %eax,(%esp)
c003793a:	e8 41 d9 ff ff       	call   c0035280 <_malloc_r>
c003793f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037942:	85 c0                	test   %eax,%eax
c0037944:	89 06                	mov    %eax,(%esi)
c0037946:	89 46 10             	mov    %eax,0x10(%esi)
c0037949:	0f 84 a3 00 00 00    	je     c00379f2 <_svfiprintf_r+0xe02>
c003794f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037952:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037959:	e9 b2 f2 ff ff       	jmp    c0036c10 <_svfiprintf_r+0x20>
c003795e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037964:	b8 06 00 00 00       	mov    $0x6,%eax
c0037969:	89 55 14             	mov    %edx,0x14(%ebp)
c003796c:	83 ff 06             	cmp    $0x6,%edi
c003796f:	0f 46 c7             	cmovbe %edi,%eax
c0037972:	85 c0                	test   %eax,%eax
c0037974:	0f 49 d8             	cmovns %eax,%ebx
c0037977:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c003797d:	bb c4 98 03 c0       	mov    $0xc00398c4,%ebx
c0037982:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037988:	e9 61 f8 ff ff       	jmp    c00371ee <_svfiprintf_r+0x5fe>
c003798d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037993:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003799a:	89 55 14             	mov    %edx,0x14(%ebp)
c003799d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00379a4:	00 00 00 
c00379a7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00379ad:	e9 2e f4 ff ff       	jmp    c0036de0 <_svfiprintf_r+0x1f0>
c00379b2:	89 da                	mov    %ebx,%edx
c00379b4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00379bb:	00 00 00 
c00379be:	e9 29 f3 ff ff       	jmp    c0036cec <_svfiprintf_r+0xfc>
c00379c3:	8b 4d 14             	mov    0x14(%ebp),%ecx
c00379c6:	89 da                	mov    %ebx,%edx
c00379c8:	8b 45 14             	mov    0x14(%ebp),%eax
c00379cb:	8b 09                	mov    (%ecx),%ecx
c00379cd:	83 c0 04             	add    $0x4,%eax
c00379d0:	89 45 14             	mov    %eax,0x14(%ebp)
c00379d3:	85 c9                	test   %ecx,%ecx
c00379d5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c00379db:	0f 89 26 f3 ff ff    	jns    c0036d07 <_svfiprintf_r+0x117>
c00379e1:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c00379e8:	ff ff ff 
c00379eb:	89 d0                	mov    %edx,%eax
c00379ed:	e9 f4 f2 ff ff       	jmp    c0036ce6 <_svfiprintf_r+0xf6>
c00379f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00379f5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00379fb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037a00:	e9 06 fc ff ff       	jmp    c003760b <_svfiprintf_r+0xa1b>
c0037a05:	66 90                	xchg   %ax,%ax
c0037a07:	66 90                	xchg   %ax,%ax
c0037a09:	66 90                	xchg   %ax,%ax
c0037a0b:	66 90                	xchg   %ax,%ax
c0037a0d:	66 90                	xchg   %ax,%ax
c0037a0f:	90                   	nop

c0037a10 <_calloc_r>:
c0037a10:	55                   	push   %ebp
c0037a11:	89 e5                	mov    %esp,%ebp
c0037a13:	53                   	push   %ebx
c0037a14:	83 ec 14             	sub    $0x14,%esp
c0037a17:	8b 45 10             	mov    0x10(%ebp),%eax
c0037a1a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037a1e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037a22:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a25:	89 04 24             	mov    %eax,(%esp)
c0037a28:	e8 53 d8 ff ff       	call   c0035280 <_malloc_r>
c0037a2d:	85 c0                	test   %eax,%eax
c0037a2f:	89 c3                	mov    %eax,%ebx
c0037a31:	0f 84 91 00 00 00    	je     c0037ac8 <_calloc_r+0xb8>
c0037a37:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037a3a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037a3d:	83 e8 04             	sub    $0x4,%eax
c0037a40:	83 f8 24             	cmp    $0x24,%eax
c0037a43:	77 63                	ja     c0037aa8 <_calloc_r+0x98>
c0037a45:	83 f8 13             	cmp    $0x13,%eax
c0037a48:	89 da                	mov    %ebx,%edx
c0037a4a:	77 1c                	ja     c0037a68 <_calloc_r+0x58>
c0037a4c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037a52:	89 d8                	mov    %ebx,%eax
c0037a54:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037a5b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037a62:	83 c4 14             	add    $0x14,%esp
c0037a65:	5b                   	pop    %ebx
c0037a66:	5d                   	pop    %ebp
c0037a67:	c3                   	ret    
c0037a68:	83 f8 1b             	cmp    $0x1b,%eax
c0037a6b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037a71:	8d 53 08             	lea    0x8(%ebx),%edx
c0037a74:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037a7b:	76 cf                	jbe    c0037a4c <_calloc_r+0x3c>
c0037a7d:	83 f8 24             	cmp    $0x24,%eax
c0037a80:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037a87:	8d 53 10             	lea    0x10(%ebx),%edx
c0037a8a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037a91:	75 b9                	jne    c0037a4c <_calloc_r+0x3c>
c0037a93:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037a9a:	8d 53 18             	lea    0x18(%ebx),%edx
c0037a9d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037aa4:	eb a6                	jmp    c0037a4c <_calloc_r+0x3c>
c0037aa6:	66 90                	xchg   %ax,%ax
c0037aa8:	89 1c 24             	mov    %ebx,(%esp)
c0037aab:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037aaf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037ab6:	00 
c0037ab7:	e8 50 a2 ff ff       	call   c0031d0c <memset>
c0037abc:	83 c4 14             	add    $0x14,%esp
c0037abf:	89 d8                	mov    %ebx,%eax
c0037ac1:	5b                   	pop    %ebx
c0037ac2:	5d                   	pop    %ebp
c0037ac3:	c3                   	ret    
c0037ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037ac8:	31 c0                	xor    %eax,%eax
c0037aca:	eb 96                	jmp    c0037a62 <_calloc_r+0x52>
c0037acc:	66 90                	xchg   %ax,%ax
c0037ace:	66 90                	xchg   %ax,%ax

c0037ad0 <_malloc_trim_r>:
c0037ad0:	55                   	push   %ebp
c0037ad1:	89 e5                	mov    %esp,%ebp
c0037ad3:	57                   	push   %edi
c0037ad4:	56                   	push   %esi
c0037ad5:	53                   	push   %ebx
c0037ad6:	83 ec 1c             	sub    $0x1c,%esp
c0037ad9:	8b 75 08             	mov    0x8(%ebp),%esi
c0037adc:	89 34 24             	mov    %esi,(%esp)
c0037adf:	e8 7c df ff ff       	call   c0035a60 <__malloc_lock>
c0037ae4:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037ae9:	8b 58 04             	mov    0x4(%eax),%ebx
c0037aec:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037aef:	89 d8                	mov    %ebx,%eax
c0037af1:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037af4:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037af9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037afe:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037b04:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037b0a:	7e 1c                	jle    c0037b28 <_malloc_trim_r+0x58>
c0037b0c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037b13:	00 
c0037b14:	89 34 24             	mov    %esi,(%esp)
c0037b17:	e8 44 ed ff ff       	call   c0036860 <_sbrk_r>
c0037b1c:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037b22:	01 da                	add    %ebx,%edx
c0037b24:	39 d0                	cmp    %edx,%eax
c0037b26:	74 18                	je     c0037b40 <_malloc_trim_r+0x70>
c0037b28:	89 34 24             	mov    %esi,(%esp)
c0037b2b:	e8 40 df ff ff       	call   c0035a70 <__malloc_unlock>
c0037b30:	83 c4 1c             	add    $0x1c,%esp
c0037b33:	31 c0                	xor    %eax,%eax
c0037b35:	5b                   	pop    %ebx
c0037b36:	5e                   	pop    %esi
c0037b37:	5f                   	pop    %edi
c0037b38:	5d                   	pop    %ebp
c0037b39:	c3                   	ret    
c0037b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037b40:	89 f8                	mov    %edi,%eax
c0037b42:	f7 d8                	neg    %eax
c0037b44:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b48:	89 34 24             	mov    %esi,(%esp)
c0037b4b:	e8 10 ed ff ff       	call   c0036860 <_sbrk_r>
c0037b50:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037b53:	74 2b                	je     c0037b80 <_malloc_trim_r+0xb0>
c0037b55:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037b5a:	29 fb                	sub    %edi,%ebx
c0037b5c:	83 cb 01             	or     $0x1,%ebx
c0037b5f:	29 3d 20 00 07 c0    	sub    %edi,0xc0070020
c0037b65:	89 58 04             	mov    %ebx,0x4(%eax)
c0037b68:	89 34 24             	mov    %esi,(%esp)
c0037b6b:	e8 00 df ff ff       	call   c0035a70 <__malloc_unlock>
c0037b70:	83 c4 1c             	add    $0x1c,%esp
c0037b73:	b8 01 00 00 00       	mov    $0x1,%eax
c0037b78:	5b                   	pop    %ebx
c0037b79:	5e                   	pop    %esi
c0037b7a:	5f                   	pop    %edi
c0037b7b:	5d                   	pop    %ebp
c0037b7c:	c3                   	ret    
c0037b7d:	8d 76 00             	lea    0x0(%esi),%esi
c0037b80:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037b87:	00 
c0037b88:	89 34 24             	mov    %esi,(%esp)
c0037b8b:	e8 d0 ec ff ff       	call   c0036860 <_sbrk_r>
c0037b90:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037b96:	89 c1                	mov    %eax,%ecx
c0037b98:	29 d1                	sub    %edx,%ecx
c0037b9a:	83 f9 0f             	cmp    $0xf,%ecx
c0037b9d:	7e 89                	jle    c0037b28 <_malloc_trim_r+0x58>
c0037b9f:	2b 05 20 d5 03 c0    	sub    0xc003d520,%eax
c0037ba5:	83 c9 01             	or     $0x1,%ecx
c0037ba8:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037bab:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0037bb0:	e9 73 ff ff ff       	jmp    c0037b28 <_malloc_trim_r+0x58>
c0037bb5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037bb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037bc0 <_free_r>:
c0037bc0:	55                   	push   %ebp
c0037bc1:	89 e5                	mov    %esp,%ebp
c0037bc3:	57                   	push   %edi
c0037bc4:	56                   	push   %esi
c0037bc5:	53                   	push   %ebx
c0037bc6:	83 ec 1c             	sub    $0x1c,%esp
c0037bc9:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037bcc:	8b 45 08             	mov    0x8(%ebp),%eax
c0037bcf:	85 f6                	test   %esi,%esi
c0037bd1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037bd4:	0f 84 fe 00 00 00    	je     c0037cd8 <_free_r+0x118>
c0037bda:	89 04 24             	mov    %eax,(%esp)
c0037bdd:	e8 7e de ff ff       	call   c0035a60 <__malloc_lock>
c0037be2:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037be5:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037be8:	89 f8                	mov    %edi,%eax
c0037bea:	83 e0 fe             	and    $0xfffffffe,%eax
c0037bed:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037bf0:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037bf3:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037bf6:	39 0d 48 d5 03 c0    	cmp    %ecx,0xc003d548
c0037bfc:	0f 84 0e 01 00 00    	je     c0037d10 <_free_r+0x150>
c0037c02:	83 e7 01             	and    $0x1,%edi
c0037c05:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037c08:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037c0f:	75 1f                	jne    c0037c30 <_free_r+0x70>
c0037c11:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037c14:	29 f2                	sub    %esi,%edx
c0037c16:	01 f0                	add    %esi,%eax
c0037c18:	8b 72 08             	mov    0x8(%edx),%esi
c0037c1b:	81 fe 48 d5 03 c0    	cmp    $0xc003d548,%esi
c0037c21:	0f 84 39 01 00 00    	je     c0037d60 <_free_r+0x1a0>
c0037c27:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037c2a:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037c2d:	89 77 08             	mov    %esi,0x8(%edi)
c0037c30:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037c35:	75 21                	jne    c0037c58 <_free_r+0x98>
c0037c37:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037c3a:	01 d8                	add    %ebx,%eax
c0037c3c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037c3f:	85 f6                	test   %esi,%esi
c0037c41:	75 0c                	jne    c0037c4f <_free_r+0x8f>
c0037c43:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0037c49:	0f 84 21 01 00 00    	je     c0037d70 <_free_r+0x1b0>
c0037c4f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037c52:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037c55:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037c58:	89 c1                	mov    %eax,%ecx
c0037c5a:	83 c9 01             	or     $0x1,%ecx
c0037c5d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037c60:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037c63:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037c66:	85 c9                	test   %ecx,%ecx
c0037c68:	75 56                	jne    c0037cc0 <_free_r+0x100>
c0037c6a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037c6f:	76 6f                	jbe    c0037ce0 <_free_r+0x120>
c0037c71:	89 c1                	mov    %eax,%ecx
c0037c73:	c1 e9 09             	shr    $0x9,%ecx
c0037c76:	83 f9 04             	cmp    $0x4,%ecx
c0037c79:	0f 87 21 01 00 00    	ja     c0037da0 <_free_r+0x1e0>
c0037c7f:	89 c1                	mov    %eax,%ecx
c0037c81:	c1 e9 06             	shr    $0x6,%ecx
c0037c84:	83 c1 38             	add    $0x38,%ecx
c0037c87:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037c8a:	8d 34 9d 40 d5 03 c0 	lea    -0x3ffc2ac0(,%ebx,4),%esi
c0037c91:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037c94:	39 f3                	cmp    %esi,%ebx
c0037c96:	0f 84 14 01 00 00    	je     c0037db0 <_free_r+0x1f0>
c0037c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037ca0:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037ca3:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037ca6:	39 c8                	cmp    %ecx,%eax
c0037ca8:	73 07                	jae    c0037cb1 <_free_r+0xf1>
c0037caa:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037cad:	39 de                	cmp    %ebx,%esi
c0037caf:	75 ef                	jne    c0037ca0 <_free_r+0xe0>
c0037cb1:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037cb4:	89 42 0c             	mov    %eax,0xc(%edx)
c0037cb7:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037cba:	89 50 08             	mov    %edx,0x8(%eax)
c0037cbd:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037cc0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037cc3:	89 45 08             	mov    %eax,0x8(%ebp)
c0037cc6:	83 c4 1c             	add    $0x1c,%esp
c0037cc9:	5b                   	pop    %ebx
c0037cca:	5e                   	pop    %esi
c0037ccb:	5f                   	pop    %edi
c0037ccc:	5d                   	pop    %ebp
c0037ccd:	e9 9e dd ff ff       	jmp    c0035a70 <__malloc_unlock>
c0037cd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037cd8:	83 c4 1c             	add    $0x1c,%esp
c0037cdb:	5b                   	pop    %ebx
c0037cdc:	5e                   	pop    %esi
c0037cdd:	5f                   	pop    %edi
c0037cde:	5d                   	pop    %ebp
c0037cdf:	c3                   	ret    
c0037ce0:	c1 e8 03             	shr    $0x3,%eax
c0037ce3:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037ce8:	89 c1                	mov    %eax,%ecx
c0037cea:	c1 f9 02             	sar    $0x2,%ecx
c0037ced:	8d 04 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%eax
c0037cf4:	d3 e3                	shl    %cl,%ebx
c0037cf6:	8b 48 08             	mov    0x8(%eax),%ecx
c0037cf9:	09 1d 44 d5 03 c0    	or     %ebx,0xc003d544
c0037cff:	89 42 0c             	mov    %eax,0xc(%edx)
c0037d02:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037d05:	89 50 08             	mov    %edx,0x8(%eax)
c0037d08:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037d0b:	eb b3                	jmp    c0037cc0 <_free_r+0x100>
c0037d0d:	8d 76 00             	lea    0x0(%esi),%esi
c0037d10:	01 d8                	add    %ebx,%eax
c0037d12:	83 e7 01             	and    $0x1,%edi
c0037d15:	75 13                	jne    c0037d2a <_free_r+0x16a>
c0037d17:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037d1a:	29 ca                	sub    %ecx,%edx
c0037d1c:	01 c8                	add    %ecx,%eax
c0037d1e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037d21:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037d24:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037d27:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037d2a:	89 c1                	mov    %eax,%ecx
c0037d2c:	83 c9 01             	or     $0x1,%ecx
c0037d2f:	3b 05 24 d5 03 c0    	cmp    0xc003d524,%eax
c0037d35:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d38:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0037d3e:	72 80                	jb     c0037cc0 <_free_r+0x100>
c0037d40:	a1 50 00 07 c0       	mov    0xc0070050,%eax
c0037d45:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037d49:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037d4c:	89 04 24             	mov    %eax,(%esp)
c0037d4f:	e8 7c fd ff ff       	call   c0037ad0 <_malloc_trim_r>
c0037d54:	e9 67 ff ff ff       	jmp    c0037cc0 <_free_r+0x100>
c0037d59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037d60:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037d67:	e9 c4 fe ff ff       	jmp    c0037c30 <_free_r+0x70>
c0037d6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037d70:	89 c1                	mov    %eax,%ecx
c0037d72:	83 c9 01             	or     $0x1,%ecx
c0037d75:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c0037d7b:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0037d81:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0037d88:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0037d8f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d92:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037d95:	e9 26 ff ff ff       	jmp    c0037cc0 <_free_r+0x100>
c0037d9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037da0:	83 f9 14             	cmp    $0x14,%ecx
c0037da3:	77 23                	ja     c0037dc8 <_free_r+0x208>
c0037da5:	83 c1 5b             	add    $0x5b,%ecx
c0037da8:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037dab:	e9 da fe ff ff       	jmp    c0037c8a <_free_r+0xca>
c0037db0:	c1 f9 02             	sar    $0x2,%ecx
c0037db3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037db8:	d3 e0                	shl    %cl,%eax
c0037dba:	09 05 44 d5 03 c0    	or     %eax,0xc003d544
c0037dc0:	89 d8                	mov    %ebx,%eax
c0037dc2:	e9 ed fe ff ff       	jmp    c0037cb4 <_free_r+0xf4>
c0037dc7:	90                   	nop
c0037dc8:	83 f9 54             	cmp    $0x54,%ecx
c0037dcb:	77 10                	ja     c0037ddd <_free_r+0x21d>
c0037dcd:	89 c1                	mov    %eax,%ecx
c0037dcf:	c1 e9 0c             	shr    $0xc,%ecx
c0037dd2:	83 c1 6e             	add    $0x6e,%ecx
c0037dd5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037dd8:	e9 ad fe ff ff       	jmp    c0037c8a <_free_r+0xca>
c0037ddd:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037de3:	77 10                	ja     c0037df5 <_free_r+0x235>
c0037de5:	89 c1                	mov    %eax,%ecx
c0037de7:	c1 e9 0f             	shr    $0xf,%ecx
c0037dea:	83 c1 77             	add    $0x77,%ecx
c0037ded:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037df0:	e9 95 fe ff ff       	jmp    c0037c8a <_free_r+0xca>
c0037df5:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037dfb:	77 10                	ja     c0037e0d <_free_r+0x24d>
c0037dfd:	89 c1                	mov    %eax,%ecx
c0037dff:	c1 e9 12             	shr    $0x12,%ecx
c0037e02:	83 c1 7c             	add    $0x7c,%ecx
c0037e05:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037e08:	e9 7d fe ff ff       	jmp    c0037c8a <_free_r+0xca>
c0037e0d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037e12:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037e17:	e9 6e fe ff ff       	jmp    c0037c8a <_free_r+0xca>
c0037e1c:	66 90                	xchg   %ax,%ax
c0037e1e:	66 90                	xchg   %ax,%ax

c0037e20 <memmove>:
c0037e20:	55                   	push   %ebp
c0037e21:	89 e5                	mov    %esp,%ebp
c0037e23:	56                   	push   %esi
c0037e24:	57                   	push   %edi
c0037e25:	53                   	push   %ebx
c0037e26:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037e29:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037e2c:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037e2f:	fc                   	cld    
c0037e30:	39 fe                	cmp    %edi,%esi
c0037e32:	73 43                	jae    c0037e77 <memmove+0x57>
c0037e34:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037e38:	39 df                	cmp    %ebx,%edi
c0037e3a:	77 3b                	ja     c0037e77 <memmove+0x57>
c0037e3c:	01 ce                	add    %ecx,%esi
c0037e3e:	01 cf                	add    %ecx,%edi
c0037e40:	fd                   	std    
c0037e41:	83 f9 08             	cmp    $0x8,%ecx
c0037e44:	76 2b                	jbe    c0037e71 <memmove+0x51>
c0037e46:	89 fa                	mov    %edi,%edx
c0037e48:	89 cb                	mov    %ecx,%ebx
c0037e4a:	83 e2 03             	and    $0x3,%edx
c0037e4d:	74 0c                	je     c0037e5b <memmove+0x3b>
c0037e4f:	89 d1                	mov    %edx,%ecx
c0037e51:	4e                   	dec    %esi
c0037e52:	4f                   	dec    %edi
c0037e53:	29 cb                	sub    %ecx,%ebx
c0037e55:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037e57:	89 d9                	mov    %ebx,%ecx
c0037e59:	46                   	inc    %esi
c0037e5a:	47                   	inc    %edi
c0037e5b:	c1 e9 02             	shr    $0x2,%ecx
c0037e5e:	83 ee 04             	sub    $0x4,%esi
c0037e61:	83 ef 04             	sub    $0x4,%edi
c0037e64:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037e66:	83 c6 04             	add    $0x4,%esi
c0037e69:	83 c7 04             	add    $0x4,%edi
c0037e6c:	89 d9                	mov    %ebx,%ecx
c0037e6e:	83 e1 03             	and    $0x3,%ecx
c0037e71:	4e                   	dec    %esi
c0037e72:	4f                   	dec    %edi
c0037e73:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037e75:	eb 2a                	jmp    c0037ea1 <memmove+0x81>
c0037e77:	83 f9 08             	cmp    $0x8,%ecx
c0037e7a:	76 23                	jbe    c0037e9f <memmove+0x7f>
c0037e7c:	89 fa                	mov    %edi,%edx
c0037e7e:	89 cb                	mov    %ecx,%ebx
c0037e80:	83 e2 03             	and    $0x3,%edx
c0037e83:	74 10                	je     c0037e95 <memmove+0x75>
c0037e85:	b9 04 00 00 00       	mov    $0x4,%ecx
c0037e8a:	29 d1                	sub    %edx,%ecx
c0037e8c:	83 e1 03             	and    $0x3,%ecx
c0037e8f:	29 cb                	sub    %ecx,%ebx
c0037e91:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037e93:	89 d9                	mov    %ebx,%ecx
c0037e95:	c1 e9 02             	shr    $0x2,%ecx
c0037e98:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037e9a:	89 d9                	mov    %ebx,%ecx
c0037e9c:	83 e1 03             	and    $0x3,%ecx
c0037e9f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037ea1:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ea4:	fc                   	cld    
c0037ea5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0037ea8:	5b                   	pop    %ebx
c0037ea9:	5f                   	pop    %edi
c0037eaa:	5e                   	pop    %esi
c0037eab:	c9                   	leave  
c0037eac:	c3                   	ret    
c0037ead:	66 90                	xchg   %ax,%ax
c0037eaf:	90                   	nop

c0037eb0 <_realloc_r>:
c0037eb0:	55                   	push   %ebp
c0037eb1:	89 e5                	mov    %esp,%ebp
c0037eb3:	57                   	push   %edi
c0037eb4:	56                   	push   %esi
c0037eb5:	53                   	push   %ebx
c0037eb6:	83 ec 3c             	sub    $0x3c,%esp
c0037eb9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ebc:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0037ebf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037ec2:	8b 45 10             	mov    0x10(%ebp),%eax
c0037ec5:	85 ff                	test   %edi,%edi
c0037ec7:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0037eca:	0f 84 50 02 00 00    	je     c0038120 <_realloc_r+0x270>
c0037ed0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037ed3:	8d 77 f8             	lea    -0x8(%edi),%esi
c0037ed6:	89 04 24             	mov    %eax,(%esp)
c0037ed9:	e8 82 db ff ff       	call   c0035a60 <__malloc_lock>
c0037ede:	8b 47 fc             	mov    -0x4(%edi),%eax
c0037ee1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037ee4:	89 c3                	mov    %eax,%ebx
c0037ee6:	8d 51 0b             	lea    0xb(%ecx),%edx
c0037ee9:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037eec:	83 fa 16             	cmp    $0x16,%edx
c0037eef:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0037ef2:	0f 87 00 01 00 00    	ja     c0037ff8 <_realloc_r+0x148>
c0037ef8:	31 d2                	xor    %edx,%edx
c0037efa:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0037f01:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0037f08:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037f0b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c0037f0e:	0f 82 1c 02 00 00    	jb     c0038130 <_realloc_r+0x280>
c0037f14:	84 d2                	test   %dl,%dl
c0037f16:	0f 85 14 02 00 00    	jne    c0038130 <_realloc_r+0x280>
c0037f1c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c0037f1f:	0f 8d eb 00 00 00    	jge    c0038010 <_realloc_r+0x160>
c0037f25:	8b 0d 48 d5 03 c0    	mov    0xc003d548,%ecx
c0037f2b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c0037f2e:	39 d1                	cmp    %edx,%ecx
c0037f30:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0037f33:	0f 84 6f 02 00 00    	je     c00381a8 <_realloc_r+0x2f8>
c0037f39:	8b 4a 04             	mov    0x4(%edx),%ecx
c0037f3c:	89 c8                	mov    %ecx,%eax
c0037f3e:	83 e0 fe             	and    $0xfffffffe,%eax
c0037f41:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0037f46:	0f 84 f4 00 00 00    	je     c0038040 <_realloc_r+0x190>
c0037f4c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0037f53:	31 d2                	xor    %edx,%edx
c0037f55:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0037f59:	0f 85 39 01 00 00    	jne    c0038098 <_realloc_r+0x1e8>
c0037f5f:	89 f1                	mov    %esi,%ecx
c0037f61:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0037f64:	8b 41 04             	mov    0x4(%ecx),%eax
c0037f67:	83 e0 fc             	and    $0xfffffffc,%eax
c0037f6a:	85 d2                	test   %edx,%edx
c0037f6c:	0f 84 f6 02 00 00    	je     c0038268 <_realloc_r+0x3b8>
c0037f72:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0037f75:	0f 84 f5 02 00 00    	je     c0038270 <_realloc_r+0x3c0>
c0037f7b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0037f7e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0037f81:	01 d8                	add    %ebx,%eax
c0037f83:	01 c2                	add    %eax,%edx
c0037f85:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0037f88:	89 55 d0             	mov    %edx,-0x30(%ebp)
c0037f8b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0037f8e:	0f 8c ac 01 00 00    	jl     c0038140 <_realloc_r+0x290>
c0037f94:	8b 42 0c             	mov    0xc(%edx),%eax
c0037f97:	83 eb 04             	sub    $0x4,%ebx
c0037f9a:	8b 52 08             	mov    0x8(%edx),%edx
c0037f9d:	83 fb 24             	cmp    $0x24,%ebx
c0037fa0:	8d 71 08             	lea    0x8(%ecx),%esi
c0037fa3:	89 42 0c             	mov    %eax,0xc(%edx)
c0037fa6:	89 50 08             	mov    %edx,0x8(%eax)
c0037fa9:	8b 41 0c             	mov    0xc(%ecx),%eax
c0037fac:	8b 51 08             	mov    0x8(%ecx),%edx
c0037faf:	89 42 0c             	mov    %eax,0xc(%edx)
c0037fb2:	89 50 08             	mov    %edx,0x8(%eax)
c0037fb5:	0f 87 85 03 00 00    	ja     c0038340 <_realloc_r+0x490>
c0037fbb:	83 fb 13             	cmp    $0x13,%ebx
c0037fbe:	89 f0                	mov    %esi,%eax
c0037fc0:	76 1a                	jbe    c0037fdc <_realloc_r+0x12c>
c0037fc2:	8b 07                	mov    (%edi),%eax
c0037fc4:	83 fb 1b             	cmp    $0x1b,%ebx
c0037fc7:	89 41 08             	mov    %eax,0x8(%ecx)
c0037fca:	8b 47 04             	mov    0x4(%edi),%eax
c0037fcd:	89 41 0c             	mov    %eax,0xc(%ecx)
c0037fd0:	0f 87 8f 03 00 00    	ja     c0038365 <_realloc_r+0x4b5>
c0037fd6:	8d 41 10             	lea    0x10(%ecx),%eax
c0037fd9:	83 c7 08             	add    $0x8,%edi
c0037fdc:	8b 17                	mov    (%edi),%edx
c0037fde:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0037fe1:	89 10                	mov    %edx,(%eax)
c0037fe3:	8b 57 04             	mov    0x4(%edi),%edx
c0037fe6:	89 50 04             	mov    %edx,0x4(%eax)
c0037fe9:	8b 57 08             	mov    0x8(%edi),%edx
c0037fec:	89 f7                	mov    %esi,%edi
c0037fee:	89 ce                	mov    %ecx,%esi
c0037ff0:	89 50 08             	mov    %edx,0x8(%eax)
c0037ff3:	8b 41 04             	mov    0x4(%ecx),%eax
c0037ff6:	eb 1b                	jmp    c0038013 <_realloc_r+0x163>
c0037ff8:	83 e2 f8             	and    $0xfffffff8,%edx
c0037ffb:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0037ffe:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038001:	c1 ea 1f             	shr    $0x1f,%edx
c0038004:	e9 ff fe ff ff       	jmp    c0037f08 <_realloc_r+0x58>
c0038009:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038010:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038013:	89 da                	mov    %ebx,%edx
c0038015:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038018:	83 fa 0f             	cmp    $0xf,%edx
c003801b:	77 4b                	ja     c0038068 <_realloc_r+0x1b8>
c003801d:	83 e0 01             	and    $0x1,%eax
c0038020:	09 d8                	or     %ebx,%eax
c0038022:	89 46 04             	mov    %eax,0x4(%esi)
c0038025:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003802a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003802d:	89 04 24             	mov    %eax,(%esp)
c0038030:	e8 3b da ff ff       	call   c0035a70 <__malloc_unlock>
c0038035:	89 f8                	mov    %edi,%eax
c0038037:	83 c4 3c             	add    $0x3c,%esp
c003803a:	5b                   	pop    %ebx
c003803b:	5e                   	pop    %esi
c003803c:	5f                   	pop    %edi
c003803d:	5d                   	pop    %ebp
c003803e:	c3                   	ret    
c003803f:	90                   	nop
c0038040:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038043:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038046:	01 d9                	add    %ebx,%ecx
c0038048:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003804b:	0f 8c 04 ff ff ff    	jl     c0037f55 <_realloc_r+0xa5>
c0038051:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038054:	8b 52 08             	mov    0x8(%edx),%edx
c0038057:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003805a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003805d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038060:	89 cb                	mov    %ecx,%ebx
c0038062:	eb af                	jmp    c0038013 <_realloc_r+0x163>
c0038064:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038068:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003806b:	83 e0 01             	and    $0x1,%eax
c003806e:	09 d8                	or     %ebx,%eax
c0038070:	89 46 04             	mov    %eax,0x4(%esi)
c0038073:	89 d0                	mov    %edx,%eax
c0038075:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038078:	83 c8 01             	or     $0x1,%eax
c003807b:	89 41 04             	mov    %eax,0x4(%ecx)
c003807e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038081:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0038086:	83 c1 08             	add    $0x8,%ecx
c0038089:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c003808d:	89 04 24             	mov    %eax,(%esp)
c0038090:	e8 2b fb ff ff       	call   c0037bc0 <_free_r>
c0038095:	eb 93                	jmp    c003802a <_realloc_r+0x17a>
c0038097:	90                   	nop
c0038098:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003809b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003809f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00380a2:	89 04 24             	mov    %eax,(%esp)
c00380a5:	e8 d6 d1 ff ff       	call   c0035280 <_malloc_r>
c00380aa:	85 c0                	test   %eax,%eax
c00380ac:	89 c1                	mov    %eax,%ecx
c00380ae:	0f 84 65 03 00 00    	je     c0038419 <_realloc_r+0x569>
c00380b4:	8b 47 fc             	mov    -0x4(%edi),%eax
c00380b7:	8d 51 f8             	lea    -0x8(%ecx),%edx
c00380ba:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00380bd:	89 c2                	mov    %eax,%edx
c00380bf:	83 e2 fe             	and    $0xfffffffe,%edx
c00380c2:	01 f2                	add    %esi,%edx
c00380c4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c00380c7:	0f 84 63 02 00 00    	je     c0038330 <_realloc_r+0x480>
c00380cd:	83 eb 04             	sub    $0x4,%ebx
c00380d0:	83 fb 24             	cmp    $0x24,%ebx
c00380d3:	0f 87 6f 01 00 00    	ja     c0038248 <_realloc_r+0x398>
c00380d9:	83 fb 13             	cmp    $0x13,%ebx
c00380dc:	0f 87 ee 00 00 00    	ja     c00381d0 <_realloc_r+0x320>
c00380e2:	89 c8                	mov    %ecx,%eax
c00380e4:	89 fa                	mov    %edi,%edx
c00380e6:	8b 1a                	mov    (%edx),%ebx
c00380e8:	89 18                	mov    %ebx,(%eax)
c00380ea:	8b 5a 04             	mov    0x4(%edx),%ebx
c00380ed:	89 58 04             	mov    %ebx,0x4(%eax)
c00380f0:	8b 52 08             	mov    0x8(%edx),%edx
c00380f3:	89 50 08             	mov    %edx,0x8(%eax)
c00380f6:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00380f9:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00380fd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038100:	89 34 24             	mov    %esi,(%esp)
c0038103:	e8 b8 fa ff ff       	call   c0037bc0 <_free_r>
c0038108:	89 34 24             	mov    %esi,(%esp)
c003810b:	e8 60 d9 ff ff       	call   c0035a70 <__malloc_unlock>
c0038110:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038113:	83 c4 3c             	add    $0x3c,%esp
c0038116:	5b                   	pop    %ebx
c0038117:	5e                   	pop    %esi
c0038118:	5f                   	pop    %edi
c0038119:	89 c8                	mov    %ecx,%eax
c003811b:	5d                   	pop    %ebp
c003811c:	c3                   	ret    
c003811d:	8d 76 00             	lea    0x0(%esi),%esi
c0038120:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038123:	83 c4 3c             	add    $0x3c,%esp
c0038126:	5b                   	pop    %ebx
c0038127:	5e                   	pop    %esi
c0038128:	5f                   	pop    %edi
c0038129:	5d                   	pop    %ebp
c003812a:	e9 51 d1 ff ff       	jmp    c0035280 <_malloc_r>
c003812f:	90                   	nop
c0038130:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038133:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038139:	31 c0                	xor    %eax,%eax
c003813b:	e9 f7 fe ff ff       	jmp    c0038037 <_realloc_r+0x187>
c0038140:	89 c2                	mov    %eax,%edx
c0038142:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038145:	0f 8c 4d ff ff ff    	jl     c0038098 <_realloc_r+0x1e8>
c003814b:	8b 71 08             	mov    0x8(%ecx),%esi
c003814e:	83 eb 04             	sub    $0x4,%ebx
c0038151:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038154:	83 fb 24             	cmp    $0x24,%ebx
c0038157:	89 46 0c             	mov    %eax,0xc(%esi)
c003815a:	89 70 08             	mov    %esi,0x8(%eax)
c003815d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038160:	0f 87 88 00 00 00    	ja     c00381ee <_realloc_r+0x33e>
c0038166:	83 fb 13             	cmp    $0x13,%ebx
c0038169:	89 f0                	mov    %esi,%eax
c003816b:	76 1a                	jbe    c0038187 <_realloc_r+0x2d7>
c003816d:	8b 07                	mov    (%edi),%eax
c003816f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038172:	89 41 08             	mov    %eax,0x8(%ecx)
c0038175:	8b 47 04             	mov    0x4(%edi),%eax
c0038178:	89 41 0c             	mov    %eax,0xc(%ecx)
c003817b:	0f 87 17 02 00 00    	ja     c0038398 <_realloc_r+0x4e8>
c0038181:	8d 41 10             	lea    0x10(%ecx),%eax
c0038184:	83 c7 08             	add    $0x8,%edi
c0038187:	8b 1f                	mov    (%edi),%ebx
c0038189:	89 18                	mov    %ebx,(%eax)
c003818b:	8b 5f 04             	mov    0x4(%edi),%ebx
c003818e:	89 58 04             	mov    %ebx,0x4(%eax)
c0038191:	8b 5f 08             	mov    0x8(%edi),%ebx
c0038194:	89 f7                	mov    %esi,%edi
c0038196:	89 ce                	mov    %ecx,%esi
c0038198:	89 58 08             	mov    %ebx,0x8(%eax)
c003819b:	89 d3                	mov    %edx,%ebx
c003819d:	8b 41 04             	mov    0x4(%ecx),%eax
c00381a0:	e9 6e fe ff ff       	jmp    c0038013 <_realloc_r+0x163>
c00381a5:	8d 76 00             	lea    0x0(%esi),%esi
c00381a8:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00381ab:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00381ae:	8b 48 04             	mov    0x4(%eax),%ecx
c00381b1:	83 c2 10             	add    $0x10,%edx
c00381b4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00381b7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c00381bb:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c00381be:	01 d9                	add    %ebx,%ecx
c00381c0:	39 d1                	cmp    %edx,%ecx
c00381c2:	7d 54                	jge    c0038218 <_realloc_r+0x368>
c00381c4:	89 c2                	mov    %eax,%edx
c00381c6:	e9 8a fd ff ff       	jmp    c0037f55 <_realloc_r+0xa5>
c00381cb:	90                   	nop
c00381cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00381d0:	8b 07                	mov    (%edi),%eax
c00381d2:	83 fb 1b             	cmp    $0x1b,%ebx
c00381d5:	89 01                	mov    %eax,(%ecx)
c00381d7:	8b 47 04             	mov    0x4(%edi),%eax
c00381da:	89 41 04             	mov    %eax,0x4(%ecx)
c00381dd:	0f 87 2d 01 00 00    	ja     c0038310 <_realloc_r+0x460>
c00381e3:	8d 41 08             	lea    0x8(%ecx),%eax
c00381e6:	8d 57 08             	lea    0x8(%edi),%edx
c00381e9:	e9 f8 fe ff ff       	jmp    c00380e6 <_realloc_r+0x236>
c00381ee:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00381f2:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00381f6:	89 f7                	mov    %esi,%edi
c00381f8:	89 34 24             	mov    %esi,(%esp)
c00381fb:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00381fe:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038201:	e8 1a fc ff ff       	call   c0037e20 <memmove>
c0038206:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038209:	8b 55 d8             	mov    -0x28(%ebp),%edx
c003820c:	8b 41 04             	mov    0x4(%ecx),%eax
c003820f:	89 ce                	mov    %ecx,%esi
c0038211:	89 d3                	mov    %edx,%ebx
c0038213:	e9 fb fd ff ff       	jmp    c0038013 <_realloc_r+0x163>
c0038218:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003821b:	29 d9                	sub    %ebx,%ecx
c003821d:	01 de                	add    %ebx,%esi
c003821f:	83 c9 01             	or     $0x1,%ecx
c0038222:	89 35 48 d5 03 c0    	mov    %esi,0xc003d548
c0038228:	89 4e 04             	mov    %ecx,0x4(%esi)
c003822b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003822e:	83 e0 01             	and    $0x1,%eax
c0038231:	09 d8                	or     %ebx,%eax
c0038233:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038236:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038239:	89 04 24             	mov    %eax,(%esp)
c003823c:	e8 2f d8 ff ff       	call   c0035a70 <__malloc_unlock>
c0038241:	89 f8                	mov    %edi,%eax
c0038243:	e9 ef fd ff ff       	jmp    c0038037 <_realloc_r+0x187>
c0038248:	89 0c 24             	mov    %ecx,(%esp)
c003824b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003824f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038253:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038256:	e8 c5 fb ff ff       	call   c0037e20 <memmove>
c003825b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003825e:	e9 93 fe ff ff       	jmp    c00380f6 <_realloc_r+0x246>
c0038263:	90                   	nop
c0038264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038268:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003826b:	e9 d2 fe ff ff       	jmp    c0038142 <_realloc_r+0x292>
c0038270:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038273:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038276:	01 d0                	add    %edx,%eax
c0038278:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003827b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003827e:	83 c0 10             	add    $0x10,%eax
c0038281:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038284:	0f 8c b8 fe ff ff    	jl     c0038142 <_realloc_r+0x292>
c003828a:	8b 41 0c             	mov    0xc(%ecx),%eax
c003828d:	83 eb 04             	sub    $0x4,%ebx
c0038290:	8b 51 08             	mov    0x8(%ecx),%edx
c0038293:	83 fb 24             	cmp    $0x24,%ebx
c0038296:	8d 71 08             	lea    0x8(%ecx),%esi
c0038299:	89 42 0c             	mov    %eax,0xc(%edx)
c003829c:	89 50 08             	mov    %edx,0x8(%eax)
c003829f:	0f 87 3d 01 00 00    	ja     c00383e2 <_realloc_r+0x532>
c00382a5:	83 fb 13             	cmp    $0x13,%ebx
c00382a8:	89 f0                	mov    %esi,%eax
c00382aa:	76 1a                	jbe    c00382c6 <_realloc_r+0x416>
c00382ac:	8b 07                	mov    (%edi),%eax
c00382ae:	83 fb 1b             	cmp    $0x1b,%ebx
c00382b1:	89 41 08             	mov    %eax,0x8(%ecx)
c00382b4:	8b 47 04             	mov    0x4(%edi),%eax
c00382b7:	89 41 0c             	mov    %eax,0xc(%ecx)
c00382ba:	0f 87 3d 01 00 00    	ja     c00383fd <_realloc_r+0x54d>
c00382c0:	8d 41 10             	lea    0x10(%ecx),%eax
c00382c3:	83 c7 08             	add    $0x8,%edi
c00382c6:	8b 17                	mov    (%edi),%edx
c00382c8:	89 10                	mov    %edx,(%eax)
c00382ca:	8b 57 04             	mov    0x4(%edi),%edx
c00382cd:	89 50 04             	mov    %edx,0x4(%eax)
c00382d0:	8b 57 08             	mov    0x8(%edi),%edx
c00382d3:	89 50 08             	mov    %edx,0x8(%eax)
c00382d6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00382d9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00382dc:	89 d8                	mov    %ebx,%eax
c00382de:	29 df                	sub    %ebx,%edi
c00382e0:	01 c8                	add    %ecx,%eax
c00382e2:	83 cf 01             	or     $0x1,%edi
c00382e5:	a3 48 d5 03 c0       	mov    %eax,0xc003d548
c00382ea:	89 78 04             	mov    %edi,0x4(%eax)
c00382ed:	8b 41 04             	mov    0x4(%ecx),%eax
c00382f0:	83 e0 01             	and    $0x1,%eax
c00382f3:	09 d8                	or     %ebx,%eax
c00382f5:	89 41 04             	mov    %eax,0x4(%ecx)
c00382f8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00382fb:	89 04 24             	mov    %eax,(%esp)
c00382fe:	e8 6d d7 ff ff       	call   c0035a70 <__malloc_unlock>
c0038303:	89 f0                	mov    %esi,%eax
c0038305:	e9 2d fd ff ff       	jmp    c0038037 <_realloc_r+0x187>
c003830a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038310:	8b 47 08             	mov    0x8(%edi),%eax
c0038313:	83 fb 24             	cmp    $0x24,%ebx
c0038316:	89 41 08             	mov    %eax,0x8(%ecx)
c0038319:	8b 47 0c             	mov    0xc(%edi),%eax
c003831c:	89 41 0c             	mov    %eax,0xc(%ecx)
c003831f:	74 60                	je     c0038381 <_realloc_r+0x4d1>
c0038321:	8d 41 10             	lea    0x10(%ecx),%eax
c0038324:	8d 57 10             	lea    0x10(%edi),%edx
c0038327:	e9 ba fd ff ff       	jmp    c00380e6 <_realloc_r+0x236>
c003832c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038330:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038333:	83 e2 fc             	and    $0xfffffffc,%edx
c0038336:	01 d3                	add    %edx,%ebx
c0038338:	e9 d6 fc ff ff       	jmp    c0038013 <_realloc_r+0x163>
c003833d:	8d 76 00             	lea    0x0(%esi),%esi
c0038340:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038344:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038348:	89 f7                	mov    %esi,%edi
c003834a:	89 34 24             	mov    %esi,(%esp)
c003834d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038350:	e8 cb fa ff ff       	call   c0037e20 <memmove>
c0038355:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038358:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003835b:	8b 41 04             	mov    0x4(%ecx),%eax
c003835e:	89 ce                	mov    %ecx,%esi
c0038360:	e9 ae fc ff ff       	jmp    c0038013 <_realloc_r+0x163>
c0038365:	8b 47 08             	mov    0x8(%edi),%eax
c0038368:	83 fb 24             	cmp    $0x24,%ebx
c003836b:	89 41 10             	mov    %eax,0x10(%ecx)
c003836e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038371:	89 41 14             	mov    %eax,0x14(%ecx)
c0038374:	74 3e                	je     c00383b4 <_realloc_r+0x504>
c0038376:	8d 41 18             	lea    0x18(%ecx),%eax
c0038379:	83 c7 10             	add    $0x10,%edi
c003837c:	e9 5b fc ff ff       	jmp    c0037fdc <_realloc_r+0x12c>
c0038381:	8b 47 10             	mov    0x10(%edi),%eax
c0038384:	8d 57 18             	lea    0x18(%edi),%edx
c0038387:	89 41 10             	mov    %eax,0x10(%ecx)
c003838a:	8b 5f 14             	mov    0x14(%edi),%ebx
c003838d:	8d 41 18             	lea    0x18(%ecx),%eax
c0038390:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038393:	e9 4e fd ff ff       	jmp    c00380e6 <_realloc_r+0x236>
c0038398:	8b 47 08             	mov    0x8(%edi),%eax
c003839b:	83 fb 24             	cmp    $0x24,%ebx
c003839e:	89 41 10             	mov    %eax,0x10(%ecx)
c00383a1:	8b 47 0c             	mov    0xc(%edi),%eax
c00383a4:	89 41 14             	mov    %eax,0x14(%ecx)
c00383a7:	74 22                	je     c00383cb <_realloc_r+0x51b>
c00383a9:	8d 41 18             	lea    0x18(%ecx),%eax
c00383ac:	83 c7 10             	add    $0x10,%edi
c00383af:	e9 d3 fd ff ff       	jmp    c0038187 <_realloc_r+0x2d7>
c00383b4:	8b 47 10             	mov    0x10(%edi),%eax
c00383b7:	83 c7 18             	add    $0x18,%edi
c00383ba:	89 41 18             	mov    %eax,0x18(%ecx)
c00383bd:	8b 57 fc             	mov    -0x4(%edi),%edx
c00383c0:	8d 41 20             	lea    0x20(%ecx),%eax
c00383c3:	89 51 1c             	mov    %edx,0x1c(%ecx)
c00383c6:	e9 11 fc ff ff       	jmp    c0037fdc <_realloc_r+0x12c>
c00383cb:	8b 47 10             	mov    0x10(%edi),%eax
c00383ce:	83 c7 18             	add    $0x18,%edi
c00383d1:	89 41 18             	mov    %eax,0x18(%ecx)
c00383d4:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00383d7:	8d 41 20             	lea    0x20(%ecx),%eax
c00383da:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c00383dd:	e9 a5 fd ff ff       	jmp    c0038187 <_realloc_r+0x2d7>
c00383e2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00383e6:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00383ea:	89 34 24             	mov    %esi,(%esp)
c00383ed:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00383f0:	e8 2b fa ff ff       	call   c0037e20 <memmove>
c00383f5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00383f8:	e9 d9 fe ff ff       	jmp    c00382d6 <_realloc_r+0x426>
c00383fd:	8b 47 08             	mov    0x8(%edi),%eax
c0038400:	83 fb 24             	cmp    $0x24,%ebx
c0038403:	89 41 10             	mov    %eax,0x10(%ecx)
c0038406:	8b 47 0c             	mov    0xc(%edi),%eax
c0038409:	89 41 14             	mov    %eax,0x14(%ecx)
c003840c:	74 1d                	je     c003842b <_realloc_r+0x57b>
c003840e:	8d 41 18             	lea    0x18(%ecx),%eax
c0038411:	83 c7 10             	add    $0x10,%edi
c0038414:	e9 ad fe ff ff       	jmp    c00382c6 <_realloc_r+0x416>
c0038419:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003841c:	89 04 24             	mov    %eax,(%esp)
c003841f:	e8 4c d6 ff ff       	call   c0035a70 <__malloc_unlock>
c0038424:	31 c0                	xor    %eax,%eax
c0038426:	e9 0c fc ff ff       	jmp    c0038037 <_realloc_r+0x187>
c003842b:	8b 47 10             	mov    0x10(%edi),%eax
c003842e:	83 c7 18             	add    $0x18,%edi
c0038431:	89 41 18             	mov    %eax,0x18(%ecx)
c0038434:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038437:	8d 41 20             	lea    0x20(%ecx),%eax
c003843a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003843d:	e9 84 fe ff ff       	jmp    c00382c6 <_realloc_r+0x416>
c0038442:	66 90                	xchg   %ax,%ax
c0038444:	66 90                	xchg   %ax,%ax
c0038446:	66 90                	xchg   %ax,%ax
c0038448:	66 90                	xchg   %ax,%ax
c003844a:	66 90                	xchg   %ax,%ax
c003844c:	66 90                	xchg   %ax,%ax
c003844e:	66 90                	xchg   %ax,%ax

c0038450 <cleanup_glue>:
c0038450:	55                   	push   %ebp
c0038451:	89 e5                	mov    %esp,%ebp
c0038453:	56                   	push   %esi
c0038454:	53                   	push   %ebx
c0038455:	83 ec 10             	sub    $0x10,%esp
c0038458:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003845b:	8b 75 08             	mov    0x8(%ebp),%esi
c003845e:	8b 03                	mov    (%ebx),%eax
c0038460:	85 c0                	test   %eax,%eax
c0038462:	74 0c                	je     c0038470 <cleanup_glue+0x20>
c0038464:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038468:	89 34 24             	mov    %esi,(%esp)
c003846b:	e8 e0 ff ff ff       	call   c0038450 <cleanup_glue>
c0038470:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038473:	89 75 08             	mov    %esi,0x8(%ebp)
c0038476:	83 c4 10             	add    $0x10,%esp
c0038479:	5b                   	pop    %ebx
c003847a:	5e                   	pop    %esi
c003847b:	5d                   	pop    %ebp
c003847c:	e9 3f f7 ff ff       	jmp    c0037bc0 <_free_r>
c0038481:	eb 0d                	jmp    c0038490 <_reclaim_reent>
c0038483:	90                   	nop
c0038484:	90                   	nop
c0038485:	90                   	nop
c0038486:	90                   	nop
c0038487:	90                   	nop
c0038488:	90                   	nop
c0038489:	90                   	nop
c003848a:	90                   	nop
c003848b:	90                   	nop
c003848c:	90                   	nop
c003848d:	90                   	nop
c003848e:	90                   	nop
c003848f:	90                   	nop

c0038490 <_reclaim_reent>:
c0038490:	55                   	push   %ebp
c0038491:	89 e5                	mov    %esp,%ebp
c0038493:	57                   	push   %edi
c0038494:	56                   	push   %esi
c0038495:	53                   	push   %ebx
c0038496:	83 ec 1c             	sub    $0x1c,%esp
c0038499:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003849c:	3b 1d 40 d0 03 c0    	cmp    0xc003d040,%ebx
c00384a2:	0f 84 a6 00 00 00    	je     c003854e <_reclaim_reent+0xbe>
c00384a8:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00384ab:	85 d2                	test   %edx,%edx
c00384ad:	74 46                	je     c00384f5 <_reclaim_reent+0x65>
c00384af:	31 c0                	xor    %eax,%eax
c00384b1:	31 f6                	xor    %esi,%esi
c00384b3:	90                   	nop
c00384b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00384b8:	8b 04 82             	mov    (%edx,%eax,4),%eax
c00384bb:	85 c0                	test   %eax,%eax
c00384bd:	75 0b                	jne    c00384ca <_reclaim_reent+0x3a>
c00384bf:	eb 1e                	jmp    c00384df <_reclaim_reent+0x4f>
c00384c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00384c8:	89 f8                	mov    %edi,%eax
c00384ca:	8b 38                	mov    (%eax),%edi
c00384cc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00384d0:	89 1c 24             	mov    %ebx,(%esp)
c00384d3:	e8 e8 f6 ff ff       	call   c0037bc0 <_free_r>
c00384d8:	85 ff                	test   %edi,%edi
c00384da:	75 ec                	jne    c00384c8 <_reclaim_reent+0x38>
c00384dc:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00384df:	83 c6 01             	add    $0x1,%esi
c00384e2:	83 fe 20             	cmp    $0x20,%esi
c00384e5:	89 f0                	mov    %esi,%eax
c00384e7:	75 cf                	jne    c00384b8 <_reclaim_reent+0x28>
c00384e9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00384ed:	89 1c 24             	mov    %ebx,(%esp)
c00384f0:	e8 cb f6 ff ff       	call   c0037bc0 <_free_r>
c00384f5:	8b 43 40             	mov    0x40(%ebx),%eax
c00384f8:	85 c0                	test   %eax,%eax
c00384fa:	74 0c                	je     c0038508 <_reclaim_reent+0x78>
c00384fc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038500:	89 1c 24             	mov    %ebx,(%esp)
c0038503:	e8 b8 f6 ff ff       	call   c0037bc0 <_free_r>
c0038508:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c003850e:	85 c0                	test   %eax,%eax
c0038510:	74 22                	je     c0038534 <_reclaim_reent+0xa4>
c0038512:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038518:	39 f0                	cmp    %esi,%eax
c003851a:	75 06                	jne    c0038522 <_reclaim_reent+0x92>
c003851c:	eb 16                	jmp    c0038534 <_reclaim_reent+0xa4>
c003851e:	66 90                	xchg   %ax,%ax
c0038520:	89 f8                	mov    %edi,%eax
c0038522:	8b 38                	mov    (%eax),%edi
c0038524:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038528:	89 1c 24             	mov    %ebx,(%esp)
c003852b:	e8 90 f6 ff ff       	call   c0037bc0 <_free_r>
c0038530:	39 fe                	cmp    %edi,%esi
c0038532:	75 ec                	jne    c0038520 <_reclaim_reent+0x90>
c0038534:	8b 43 54             	mov    0x54(%ebx),%eax
c0038537:	85 c0                	test   %eax,%eax
c0038539:	74 0c                	je     c0038547 <_reclaim_reent+0xb7>
c003853b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003853f:	89 1c 24             	mov    %ebx,(%esp)
c0038542:	e8 79 f6 ff ff       	call   c0037bc0 <_free_r>
c0038547:	8b 43 38             	mov    0x38(%ebx),%eax
c003854a:	85 c0                	test   %eax,%eax
c003854c:	75 08                	jne    c0038556 <_reclaim_reent+0xc6>
c003854e:	83 c4 1c             	add    $0x1c,%esp
c0038551:	5b                   	pop    %ebx
c0038552:	5e                   	pop    %esi
c0038553:	5f                   	pop    %edi
c0038554:	5d                   	pop    %ebp
c0038555:	c3                   	ret    
c0038556:	89 1c 24             	mov    %ebx,(%esp)
c0038559:	ff 53 3c             	call   *0x3c(%ebx)
c003855c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038562:	85 c0                	test   %eax,%eax
c0038564:	74 e8                	je     c003854e <_reclaim_reent+0xbe>
c0038566:	89 1c 24             	mov    %ebx,(%esp)
c0038569:	89 44 24 04          	mov    %eax,0x4(%esp)
c003856d:	e8 de fe ff ff       	call   c0038450 <cleanup_glue>
c0038572:	83 c4 1c             	add    $0x1c,%esp
c0038575:	5b                   	pop    %ebx
c0038576:	5e                   	pop    %esi
c0038577:	5f                   	pop    %edi
c0038578:	5d                   	pop    %ebp
c0038579:	c3                   	ret    
