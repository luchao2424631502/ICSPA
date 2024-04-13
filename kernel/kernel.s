
kernel:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
   30007:	ea 0e 00 03 00 08 00 	ljmp   $0x8,$0x3000e

0003000e <start_cond>:
   3000e:	66 b8 10 00          	mov    $0x10,%ax
   30012:	8e d8                	mov    %eax,%ds
   30014:	8e c0                	mov    %eax,%es
   30016:	8e d0                	mov    %eax,%ss
   30018:	0f 20 c0             	mov    %cr0,%eax
   3001b:	83 c8 01             	or     $0x1,%eax
   3001e:	0f 22 c0             	mov    %eax,%cr0
   30021:	bd 00 00 00 00       	mov    $0x0,%ebp
   30026:	bc 00 00 00 08       	mov    $0x8000000,%esp
   3002b:	83 ec 10             	sub    $0x10,%esp
   3002e:	e9 af 00 00 00       	jmp    300e2 <init>
   30033:	90                   	nop

00030034 <gdt>:
	...
   3003c:	ff                   	(bad)  
   3003d:	ff 00                	incl   (%eax)
   3003f:	00 00                	add    %al,(%eax)
   30041:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
   30048:	00                   	.byte 0x0
   30049:	92                   	xchg   %eax,%edx
   3004a:	cf                   	iret   
	...

0003004c <gdtdesc>:
   3004c:	17                   	pop    %ss
   3004d:	00 34 00             	add    %dh,(%eax,%eax,1)
   30050:	03 00                	add    (%eax),%eax

00030052 <vec0>:
   30052:	6a 00                	push   $0x0
   30054:	6a 00                	push   $0x0
   30056:	eb 7b                	jmp    300d3 <asm_do_irq>

00030058 <vec1>:
   30058:	6a 00                	push   $0x0
   3005a:	6a 01                	push   $0x1
   3005c:	eb 75                	jmp    300d3 <asm_do_irq>

0003005e <vec2>:
   3005e:	6a 00                	push   $0x0
   30060:	6a 02                	push   $0x2
   30062:	eb 6f                	jmp    300d3 <asm_do_irq>

00030064 <vec3>:
   30064:	6a 00                	push   $0x0
   30066:	6a 03                	push   $0x3
   30068:	eb 69                	jmp    300d3 <asm_do_irq>

0003006a <vec4>:
   3006a:	6a 00                	push   $0x0
   3006c:	6a 04                	push   $0x4
   3006e:	eb 63                	jmp    300d3 <asm_do_irq>

00030070 <vec5>:
   30070:	6a 00                	push   $0x0
   30072:	6a 05                	push   $0x5
   30074:	eb 5d                	jmp    300d3 <asm_do_irq>

00030076 <vec6>:
   30076:	6a 00                	push   $0x0
   30078:	6a 06                	push   $0x6
   3007a:	eb 57                	jmp    300d3 <asm_do_irq>

0003007c <vec7>:
   3007c:	6a 00                	push   $0x0
   3007e:	6a 07                	push   $0x7
   30080:	eb 51                	jmp    300d3 <asm_do_irq>

00030082 <vec8>:
   30082:	6a 08                	push   $0x8
   30084:	eb 4d                	jmp    300d3 <asm_do_irq>

00030086 <vec9>:
   30086:	6a 00                	push   $0x0
   30088:	6a 09                	push   $0x9
   3008a:	eb 47                	jmp    300d3 <asm_do_irq>

0003008c <vec10>:
   3008c:	6a 0a                	push   $0xa
   3008e:	eb 43                	jmp    300d3 <asm_do_irq>

00030090 <vec11>:
   30090:	6a 0b                	push   $0xb
   30092:	eb 3f                	jmp    300d3 <asm_do_irq>

00030094 <vec12>:
   30094:	6a 0c                	push   $0xc
   30096:	eb 3b                	jmp    300d3 <asm_do_irq>

00030098 <vec13>:
   30098:	6a 0d                	push   $0xd
   3009a:	eb 37                	jmp    300d3 <asm_do_irq>

0003009c <vec14>:
   3009c:	6a 0e                	push   $0xe
   3009e:	eb 33                	jmp    300d3 <asm_do_irq>

000300a0 <vecsys>:
   300a0:	6a 00                	push   $0x0
   300a2:	68 80 00 00 00       	push   $0x80
   300a7:	eb 2a                	jmp    300d3 <asm_do_irq>

000300a9 <irq0>:
   300a9:	6a 00                	push   $0x0
   300ab:	68 e8 03 00 00       	push   $0x3e8
   300b0:	eb 21                	jmp    300d3 <asm_do_irq>

000300b2 <irq1>:
   300b2:	6a 00                	push   $0x0
   300b4:	68 e9 03 00 00       	push   $0x3e9
   300b9:	eb 18                	jmp    300d3 <asm_do_irq>

000300bb <irq2>:
   300bb:	6a 00                	push   $0x0
   300bd:	68 ea 03 00 00       	push   $0x3ea
   300c2:	eb 0f                	jmp    300d3 <asm_do_irq>

000300c4 <irq14>:
   300c4:	6a 00                	push   $0x0
   300c6:	68 f6 03 00 00       	push   $0x3f6
   300cb:	eb 06                	jmp    300d3 <asm_do_irq>

000300cd <irq_empty>:
   300cd:	6a 00                	push   $0x0
   300cf:	6a ff                	push   $0xffffffff
   300d1:	eb 00                	jmp    300d3 <asm_do_irq>

000300d3 <asm_do_irq>:
   300d3:	60                   	pusha  
   300d4:	54                   	push   %esp
   300d5:	e8 7d 0a 00 00       	call   30b57 <irq_handle>
   300da:	83 c4 04             	add    $0x4,%esp
   300dd:	61                   	popa   
   300de:	83 c4 08             	add    $0x8,%esp
   300e1:	cf                   	iret   

000300e2 <init>:
   300e2:	55                   	push   %ebp
   300e3:	89 e5                	mov    %esp,%ebp
   300e5:	e8 5a 00 00 00       	call   30144 <__x86.get_pc_thunk.ax>
   300ea:	05 16 cf 00 00       	add    $0xcf16,%eax
   300ef:	8d 80 00 31 ff ff    	lea    -0xcf00(%eax),%eax
   300f5:	ff e0                	jmp    *%eax
   300f7:	b8 01 00 00 00       	mov    $0x1,%eax
   300fc:	82                   	nemu_trap 
   300fd:	90                   	nop
   300fe:	5d                   	pop    %ebp
   300ff:	c3                   	ret    

00030100 <init_cond>:
   30100:	55                   	push   %ebp
   30101:	89 e5                	mov    %esp,%ebp
   30103:	53                   	push   %ebx
   30104:	83 ec 14             	sub    $0x14,%esp
   30107:	e8 3c 00 00 00       	call   30148 <__x86.get_pc_thunk.bx>
   3010c:	81 c3 f4 ce 00 00    	add    $0xcef4,%ebx
   30112:	8d 83 40 c0 ff ff    	lea    -0x3fc0(%ebx),%eax
   30118:	50                   	push   %eax
   30119:	6a 52                	push   $0x52
   3011b:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
   30121:	50                   	push   %eax
   30122:	8d 83 0c c0 ff ff    	lea    -0x3ff4(%ebx),%eax
   30128:	50                   	push   %eax
   30129:	e8 08 09 00 00       	call   30a36 <printk>
   3012e:	83 c4 10             	add    $0x10,%esp
   30131:	e8 0b 07 00 00       	call   30841 <loader>
   30136:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30139:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3013c:	ff d0                	call   *%eax
   3013e:	90                   	nop
   3013f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30142:	c9                   	leave  
   30143:	c3                   	ret    

00030144 <__x86.get_pc_thunk.ax>:
   30144:	8b 04 24             	mov    (%esp),%eax
   30147:	c3                   	ret    

00030148 <__x86.get_pc_thunk.bx>:
   30148:	8b 1c 24             	mov    (%esp),%ebx
   3014b:	c3                   	ret    

0003014c <in_byte>:
   3014c:	55                   	push   %ebp
   3014d:	89 e5                	mov    %esp,%ebp
   3014f:	83 ec 14             	sub    $0x14,%esp
   30152:	e8 ed ff ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30157:	05 a9 ce 00 00       	add    $0xcea9,%eax
   3015c:	8b 45 08             	mov    0x8(%ebp),%eax
   3015f:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
   30163:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30166:	89 c2                	mov    %eax,%edx
   30168:	ec                   	in     (%dx),%al
   30169:	88 45 ff             	mov    %al,-0x1(%ebp)
   3016c:	8a 45 ff             	mov    -0x1(%ebp),%al
   3016f:	c9                   	leave  
   30170:	c3                   	ret    

00030171 <out_byte>:
   30171:	55                   	push   %ebp
   30172:	89 e5                	mov    %esp,%ebp
   30174:	83 ec 08             	sub    $0x8,%esp
   30177:	e8 c8 ff ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   3017c:	05 84 ce 00 00       	add    $0xce84,%eax
   30181:	8b 45 08             	mov    0x8(%ebp),%eax
   30184:	8b 55 0c             	mov    0xc(%ebp),%edx
   30187:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   3018b:	88 d0                	mov    %dl,%al
   3018d:	88 45 f8             	mov    %al,-0x8(%ebp)
   30190:	8a 45 f8             	mov    -0x8(%ebp),%al
   30193:	8b 55 fc             	mov    -0x4(%ebp),%edx
   30196:	ee                   	out    %al,(%dx)
   30197:	90                   	nop
   30198:	c9                   	leave  
   30199:	c3                   	ret    

0003019a <out_long>:
   3019a:	55                   	push   %ebp
   3019b:	89 e5                	mov    %esp,%ebp
   3019d:	83 ec 04             	sub    $0x4,%esp
   301a0:	e8 9f ff ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   301a5:	05 5b ce 00 00       	add    $0xce5b,%eax
   301aa:	8b 45 08             	mov    0x8(%ebp),%eax
   301ad:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   301b1:	8b 45 0c             	mov    0xc(%ebp),%eax
   301b4:	8b 55 fc             	mov    -0x4(%ebp),%edx
   301b7:	ef                   	out    %eax,(%dx)
   301b8:	90                   	nop
   301b9:	c9                   	leave  
   301ba:	c3                   	ret    

000301bb <dma_prepare>:
   301bb:	55                   	push   %ebp
   301bc:	89 e5                	mov    %esp,%ebp
   301be:	83 ec 10             	sub    $0x10,%esp
   301c1:	e8 7e ff ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   301c6:	05 3a ce 00 00       	add    $0xce3a,%eax
   301cb:	8b 55 08             	mov    0x8(%ebp),%edx
   301ce:	89 55 fc             	mov    %edx,-0x4(%ebp)
   301d1:	c7 c2 54 00 07 00    	mov    $0x70054,%edx
   301d7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
   301da:	89 0a                	mov    %ecx,(%edx)
   301dc:	c7 c2 54 00 07 00    	mov    $0x70054,%edx
   301e2:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
   301e8:	c7 c2 54 00 07 00    	mov    $0x70054,%edx
   301ee:	8a 4a 07             	mov    0x7(%edx),%cl
   301f1:	83 c9 80             	or     $0xffffff80,%ecx
   301f4:	88 4a 07             	mov    %cl,0x7(%edx)
   301f7:	c7 c1 54 00 07 00    	mov    $0x70054,%ecx
   301fd:	66 8b 51 06          	mov    0x6(%ecx),%dx
   30201:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
   30207:	66 89 51 06          	mov    %dx,0x6(%ecx)
   3020b:	c7 c0 54 00 07 00    	mov    $0x70054,%eax
   30211:	89 45 f8             	mov    %eax,-0x8(%ebp)
   30214:	ff 75 f8             	pushl  -0x8(%ebp)
   30217:	68 44 c0 00 00       	push   $0xc044
   3021c:	e8 79 ff ff ff       	call   3019a <out_long>
   30221:	83 c4 08             	add    $0x8,%esp
   30224:	90                   	nop
   30225:	c9                   	leave  
   30226:	c3                   	ret    

00030227 <dma_issue_read>:
   30227:	55                   	push   %ebp
   30228:	89 e5                	mov    %esp,%ebp
   3022a:	e8 15 ff ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   3022f:	05 d1 cd 00 00       	add    $0xcdd1,%eax
   30234:	68 40 c0 00 00       	push   $0xc040
   30239:	e8 0e ff ff ff       	call   3014c <in_byte>
   3023e:	83 c4 04             	add    $0x4,%esp
   30241:	83 c8 09             	or     $0x9,%eax
   30244:	0f b6 c0             	movzbl %al,%eax
   30247:	50                   	push   %eax
   30248:	68 40 c0 00 00       	push   $0xc040
   3024d:	e8 1f ff ff ff       	call   30171 <out_byte>
   30252:	83 c4 08             	add    $0x8,%esp
   30255:	90                   	nop
   30256:	c9                   	leave  
   30257:	c3                   	ret    

00030258 <wait_intr>:
   30258:	55                   	push   %ebp
   30259:	89 e5                	mov    %esp,%ebp
   3025b:	e8 e4 fe ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30260:	05 a0 cd 00 00       	add    $0xcda0,%eax
   30265:	f4                   	hlt    
   30266:	90                   	nop
   30267:	5d                   	pop    %ebp
   30268:	c3                   	ret    

00030269 <ide_read>:
   30269:	55                   	push   %ebp
   3026a:	89 e5                	mov    %esp,%ebp
   3026c:	56                   	push   %esi
   3026d:	53                   	push   %ebx
   3026e:	83 ec 10             	sub    $0x10,%esp
   30271:	e8 d2 fe ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   30276:	81 c3 8a cd 00 00    	add    $0xcd8a,%ebx
   3027c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   30283:	eb 22                	jmp    302a7 <ide_read+0x3e>
   30285:	8b 55 0c             	mov    0xc(%ebp),%edx
   30288:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3028b:	01 d0                	add    %edx,%eax
   3028d:	8b 4d 08             	mov    0x8(%ebp),%ecx
   30290:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30293:	8d 34 11             	lea    (%ecx,%edx,1),%esi
   30296:	83 ec 0c             	sub    $0xc,%esp
   30299:	50                   	push   %eax
   3029a:	e8 c6 02 00 00       	call   30565 <read_byte>
   3029f:	83 c4 10             	add    $0x10,%esp
   302a2:	88 06                	mov    %al,(%esi)
   302a4:	ff 45 f4             	incl   -0xc(%ebp)
   302a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   302aa:	3b 45 10             	cmp    0x10(%ebp),%eax
   302ad:	72 d6                	jb     30285 <ide_read+0x1c>
   302af:	90                   	nop
   302b0:	8d 65 f8             	lea    -0x8(%ebp),%esp
   302b3:	5b                   	pop    %ebx
   302b4:	5e                   	pop    %esi
   302b5:	5d                   	pop    %ebp
   302b6:	c3                   	ret    

000302b7 <ide_write>:
   302b7:	55                   	push   %ebp
   302b8:	89 e5                	mov    %esp,%ebp
   302ba:	53                   	push   %ebx
   302bb:	83 ec 14             	sub    $0x14,%esp
   302be:	e8 85 fe ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   302c3:	81 c3 3d cd 00 00    	add    $0xcd3d,%ebx
   302c9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   302d0:	eb 25                	jmp    302f7 <ide_write+0x40>
   302d2:	8b 55 08             	mov    0x8(%ebp),%edx
   302d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
   302d8:	01 d0                	add    %edx,%eax
   302da:	8a 00                	mov    (%eax),%al
   302dc:	0f b6 c0             	movzbl %al,%eax
   302df:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   302e2:	8b 55 f4             	mov    -0xc(%ebp),%edx
   302e5:	01 ca                	add    %ecx,%edx
   302e7:	83 ec 08             	sub    $0x8,%esp
   302ea:	50                   	push   %eax
   302eb:	52                   	push   %edx
   302ec:	e8 b1 02 00 00       	call   305a2 <write_byte>
   302f1:	83 c4 10             	add    $0x10,%esp
   302f4:	ff 45 f4             	incl   -0xc(%ebp)
   302f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   302fa:	3b 45 10             	cmp    0x10(%ebp),%eax
   302fd:	72 d3                	jb     302d2 <ide_write+0x1b>
   302ff:	90                   	nop
   30300:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30303:	c9                   	leave  
   30304:	c3                   	ret    

00030305 <ide_writeback>:
   30305:	55                   	push   %ebp
   30306:	89 e5                	mov    %esp,%ebp
   30308:	53                   	push   %ebx
   30309:	83 ec 04             	sub    $0x4,%esp
   3030c:	e8 37 fe ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   30311:	81 c3 ef cc 00 00    	add    $0xccef,%ebx
   30317:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
   3031d:	40                   	inc    %eax
   3031e:	89 83 04 10 00 00    	mov    %eax,0x1004(%ebx)
   30324:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
   3032a:	83 f8 64             	cmp    $0x64,%eax
   3032d:	75 0f                	jne    3033e <ide_writeback+0x39>
   3032f:	e8 f6 00 00 00       	call   3042a <cache_writeback>
   30334:	c7 83 04 10 00 00 00 	movl   $0x0,0x1004(%ebx)
   3033b:	00 00 00 
   3033e:	90                   	nop
   3033f:	83 c4 04             	add    $0x4,%esp
   30342:	5b                   	pop    %ebx
   30343:	5d                   	pop    %ebp
   30344:	c3                   	ret    

00030345 <ide_intr>:
   30345:	55                   	push   %ebp
   30346:	89 e5                	mov    %esp,%ebp
   30348:	e8 f7 fd ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   3034d:	05 b3 cc 00 00       	add    $0xccb3,%eax
   30352:	c7 80 00 10 00 00 01 	movl   $0x1,0x1000(%eax)
   30359:	00 00 00 
   3035c:	90                   	nop
   3035d:	5d                   	pop    %ebp
   3035e:	c3                   	ret    

0003035f <clear_ide_intr>:
   3035f:	55                   	push   %ebp
   30360:	89 e5                	mov    %esp,%ebp
   30362:	e8 dd fd ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30367:	05 99 cc 00 00       	add    $0xcc99,%eax
   3036c:	c7 80 00 10 00 00 00 	movl   $0x0,0x1000(%eax)
   30373:	00 00 00 
   30376:	90                   	nop
   30377:	5d                   	pop    %ebp
   30378:	c3                   	ret    

00030379 <wait_ide_intr>:
   30379:	55                   	push   %ebp
   3037a:	89 e5                	mov    %esp,%ebp
   3037c:	53                   	push   %ebx
   3037d:	e8 c6 fd ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   30382:	81 c3 7e cc 00 00    	add    $0xcc7e,%ebx
   30388:	eb 05                	jmp    3038f <wait_ide_intr+0x16>
   3038a:	e8 c9 fe ff ff       	call   30258 <wait_intr>
   3038f:	8b 83 00 10 00 00    	mov    0x1000(%ebx),%eax
   30395:	85 c0                	test   %eax,%eax
   30397:	74 f1                	je     3038a <wait_ide_intr+0x11>
   30399:	e8 c1 ff ff ff       	call   3035f <clear_ide_intr>
   3039e:	90                   	nop
   3039f:	5b                   	pop    %ebx
   303a0:	5d                   	pop    %ebp
   303a1:	c3                   	ret    

000303a2 <init_ide>:
   303a2:	55                   	push   %ebp
   303a3:	89 e5                	mov    %esp,%ebp
   303a5:	53                   	push   %ebx
   303a6:	83 ec 04             	sub    $0x4,%esp
   303a9:	e8 9a fd ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   303ae:	81 c3 52 cc 00 00    	add    $0xcc52,%ebx
   303b4:	e8 2e 00 00 00       	call   303e7 <cache_init>
   303b9:	83 ec 08             	sub    $0x8,%esp
   303bc:	8d 83 05 33 ff ff    	lea    -0xccfb(%ebx),%eax
   303c2:	50                   	push   %eax
   303c3:	6a 00                	push   $0x0
   303c5:	e8 c0 06 00 00       	call   30a8a <add_irq_handle>
   303ca:	83 c4 10             	add    $0x10,%esp
   303cd:	83 ec 08             	sub    $0x8,%esp
   303d0:	8d 83 45 33 ff ff    	lea    -0xccbb(%ebx),%eax
   303d6:	50                   	push   %eax
   303d7:	6a 0e                	push   $0xe
   303d9:	e8 ac 06 00 00       	call   30a8a <add_irq_handle>
   303de:	83 c4 10             	add    $0x10,%esp
   303e1:	90                   	nop
   303e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   303e5:	c9                   	leave  
   303e6:	c3                   	ret    

000303e7 <cache_init>:
   303e7:	55                   	push   %ebp
   303e8:	89 e5                	mov    %esp,%ebp
   303ea:	53                   	push   %ebx
   303eb:	83 ec 10             	sub    $0x10,%esp
   303ee:	e8 fd 01 00 00       	call   305f0 <__x86.get_pc_thunk.dx>
   303f3:	81 c2 0d cc 00 00    	add    $0xcc0d,%edx
   303f9:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   30400:	eb 1b                	jmp    3041d <cache_init+0x36>
   30402:	8b 4d f8             	mov    -0x8(%ebp),%ecx
   30405:	8d 9a 24 10 00 00    	lea    0x1024(%edx),%ebx
   3040b:	89 c8                	mov    %ecx,%eax
   3040d:	c1 e0 06             	shl    $0x6,%eax
   30410:	01 c8                	add    %ecx,%eax
   30412:	c1 e0 03             	shl    $0x3,%eax
   30415:	01 d8                	add    %ebx,%eax
   30417:	c6 00 00             	movb   $0x0,(%eax)
   3041a:	ff 45 f8             	incl   -0x8(%ebp)
   3041d:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
   30421:	7e df                	jle    30402 <cache_init+0x1b>
   30423:	90                   	nop
   30424:	83 c4 10             	add    $0x10,%esp
   30427:	5b                   	pop    %ebx
   30428:	5d                   	pop    %ebp
   30429:	c3                   	ret    

0003042a <cache_writeback>:
   3042a:	55                   	push   %ebp
   3042b:	89 e5                	mov    %esp,%ebp
   3042d:	53                   	push   %ebx
   3042e:	83 ec 14             	sub    $0x14,%esp
   30431:	e8 12 fd ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   30436:	81 c3 ca cb 00 00    	add    $0xcbca,%ebx
   3043c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   30443:	eb 72                	jmp    304b7 <cache_writeback+0x8d>
   30445:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30448:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
   3044e:	89 d0                	mov    %edx,%eax
   30450:	c1 e0 06             	shl    $0x6,%eax
   30453:	01 d0                	add    %edx,%eax
   30455:	c1 e0 03             	shl    $0x3,%eax
   30458:	01 c8                	add    %ecx,%eax
   3045a:	8a 00                	mov    (%eax),%al
   3045c:	3c 01                	cmp    $0x1,%al
   3045e:	75 54                	jne    304b4 <cache_writeback+0x8a>
   30460:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30463:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
   30469:	89 d0                	mov    %edx,%eax
   3046b:	c1 e0 06             	shl    $0x6,%eax
   3046e:	01 d0                	add    %edx,%eax
   30470:	c1 e0 03             	shl    $0x3,%eax
   30473:	01 c8                	add    %ecx,%eax
   30475:	8b 10                	mov    (%eax),%edx
   30477:	8b 4d f4             	mov    -0xc(%ebp),%ecx
   3047a:	89 c8                	mov    %ecx,%eax
   3047c:	c1 e0 06             	shl    $0x6,%eax
   3047f:	01 c8                	add    %ecx,%eax
   30481:	c1 e0 03             	shl    $0x3,%eax
   30484:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
   3048a:	01 c8                	add    %ecx,%eax
   3048c:	83 c0 06             	add    $0x6,%eax
   3048f:	83 ec 08             	sub    $0x8,%esp
   30492:	52                   	push   %edx
   30493:	50                   	push   %eax
   30494:	e8 52 03 00 00       	call   307eb <disk_do_write>
   30499:	83 c4 10             	add    $0x10,%esp
   3049c:	8b 55 f4             	mov    -0xc(%ebp),%edx
   3049f:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
   304a5:	89 d0                	mov    %edx,%eax
   304a7:	c1 e0 06             	shl    $0x6,%eax
   304aa:	01 d0                	add    %edx,%eax
   304ac:	c1 e0 03             	shl    $0x3,%eax
   304af:	01 c8                	add    %ecx,%eax
   304b1:	c6 00 00             	movb   $0x0,(%eax)
   304b4:	ff 45 f4             	incl   -0xc(%ebp)
   304b7:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
   304bb:	7e 88                	jle    30445 <cache_writeback+0x1b>
   304bd:	90                   	nop
   304be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   304c1:	c9                   	leave  
   304c2:	c3                   	ret    

000304c3 <cache_fetch>:
   304c3:	55                   	push   %ebp
   304c4:	89 e5                	mov    %esp,%ebp
   304c6:	53                   	push   %ebx
   304c7:	83 ec 14             	sub    $0x14,%esp
   304ca:	e8 79 fc ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   304cf:	81 c3 31 cb 00 00    	add    $0xcb31,%ebx
   304d5:	8b 45 08             	mov    0x8(%ebp),%eax
   304d8:	83 e0 7f             	and    $0x7f,%eax
   304db:	89 c2                	mov    %eax,%edx
   304dd:	89 d0                	mov    %edx,%eax
   304df:	c1 e0 06             	shl    $0x6,%eax
   304e2:	01 d0                	add    %edx,%eax
   304e4:	c1 e0 03             	shl    $0x3,%eax
   304e7:	8d 93 20 10 00 00    	lea    0x1020(%ebx),%edx
   304ed:	01 d0                	add    %edx,%eax
   304ef:	89 45 f4             	mov    %eax,-0xc(%ebp)
   304f2:	8b 45 f4             	mov    -0xc(%ebp),%eax
   304f5:	8a 40 04             	mov    0x4(%eax),%al
   304f8:	3c 01                	cmp    $0x1,%al
   304fa:	75 0a                	jne    30506 <cache_fetch+0x43>
   304fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
   304ff:	8b 00                	mov    (%eax),%eax
   30501:	39 45 08             	cmp    %eax,0x8(%ebp)
   30504:	74 57                	je     3055d <cache_fetch+0x9a>
   30506:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30509:	8a 40 04             	mov    0x4(%eax),%al
   3050c:	3c 01                	cmp    $0x1,%al
   3050e:	75 22                	jne    30532 <cache_fetch+0x6f>
   30510:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30513:	8a 40 05             	mov    0x5(%eax),%al
   30516:	3c 01                	cmp    $0x1,%al
   30518:	75 18                	jne    30532 <cache_fetch+0x6f>
   3051a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3051d:	8b 00                	mov    (%eax),%eax
   3051f:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30522:	83 c2 06             	add    $0x6,%edx
   30525:	83 ec 08             	sub    $0x8,%esp
   30528:	50                   	push   %eax
   30529:	52                   	push   %edx
   3052a:	e8 bc 02 00 00       	call   307eb <disk_do_write>
   3052f:	83 c4 10             	add    $0x10,%esp
   30532:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30535:	83 c0 06             	add    $0x6,%eax
   30538:	83 ec 08             	sub    $0x8,%esp
   3053b:	ff 75 08             	pushl  0x8(%ebp)
   3053e:	50                   	push   %eax
   3053f:	e8 3c 02 00 00       	call   30780 <disk_do_read>
   30544:	83 c4 10             	add    $0x10,%esp
   30547:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3054a:	c6 40 04 01          	movb   $0x1,0x4(%eax)
   3054e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30551:	8b 55 08             	mov    0x8(%ebp),%edx
   30554:	89 10                	mov    %edx,(%eax)
   30556:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30559:	c6 40 05 00          	movb   $0x0,0x5(%eax)
   3055d:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30560:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30563:	c9                   	leave  
   30564:	c3                   	ret    

00030565 <read_byte>:
   30565:	55                   	push   %ebp
   30566:	89 e5                	mov    %esp,%ebp
   30568:	83 ec 18             	sub    $0x18,%esp
   3056b:	e8 d4 fb ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30570:	05 90 ca 00 00       	add    $0xca90,%eax
   30575:	8b 45 08             	mov    0x8(%ebp),%eax
   30578:	c1 e8 09             	shr    $0x9,%eax
   3057b:	89 45 f4             	mov    %eax,-0xc(%ebp)
   3057e:	83 ec 0c             	sub    $0xc,%esp
   30581:	ff 75 f4             	pushl  -0xc(%ebp)
   30584:	e8 3a ff ff ff       	call   304c3 <cache_fetch>
   30589:	83 c4 10             	add    $0x10,%esp
   3058c:	89 45 f0             	mov    %eax,-0x10(%ebp)
   3058f:	8b 45 08             	mov    0x8(%ebp),%eax
   30592:	25 ff 01 00 00       	and    $0x1ff,%eax
   30597:	89 c2                	mov    %eax,%edx
   30599:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3059c:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
   305a0:	c9                   	leave  
   305a1:	c3                   	ret    

000305a2 <write_byte>:
   305a2:	55                   	push   %ebp
   305a3:	89 e5                	mov    %esp,%ebp
   305a5:	83 ec 28             	sub    $0x28,%esp
   305a8:	e8 97 fb ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   305ad:	05 53 ca 00 00       	add    $0xca53,%eax
   305b2:	8b 45 0c             	mov    0xc(%ebp),%eax
   305b5:	88 45 e4             	mov    %al,-0x1c(%ebp)
   305b8:	8b 45 08             	mov    0x8(%ebp),%eax
   305bb:	c1 e8 09             	shr    $0x9,%eax
   305be:	89 45 f4             	mov    %eax,-0xc(%ebp)
   305c1:	83 ec 0c             	sub    $0xc,%esp
   305c4:	ff 75 f4             	pushl  -0xc(%ebp)
   305c7:	e8 f7 fe ff ff       	call   304c3 <cache_fetch>
   305cc:	83 c4 10             	add    $0x10,%esp
   305cf:	89 45 f0             	mov    %eax,-0x10(%ebp)
   305d2:	8b 45 08             	mov    0x8(%ebp),%eax
   305d5:	25 ff 01 00 00       	and    $0x1ff,%eax
   305da:	89 c1                	mov    %eax,%ecx
   305dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
   305df:	8a 55 e4             	mov    -0x1c(%ebp),%dl
   305e2:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
   305e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
   305e9:	c6 40 05 01          	movb   $0x1,0x5(%eax)
   305ed:	90                   	nop
   305ee:	c9                   	leave  
   305ef:	c3                   	ret    

000305f0 <__x86.get_pc_thunk.dx>:
   305f0:	8b 14 24             	mov    (%esp),%edx
   305f3:	c3                   	ret    

000305f4 <in_byte>:
   305f4:	55                   	push   %ebp
   305f5:	89 e5                	mov    %esp,%ebp
   305f7:	83 ec 14             	sub    $0x14,%esp
   305fa:	e8 45 fb ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   305ff:	05 01 ca 00 00       	add    $0xca01,%eax
   30604:	8b 45 08             	mov    0x8(%ebp),%eax
   30607:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
   3060b:	8b 45 ec             	mov    -0x14(%ebp),%eax
   3060e:	89 c2                	mov    %eax,%edx
   30610:	ec                   	in     (%dx),%al
   30611:	88 45 ff             	mov    %al,-0x1(%ebp)
   30614:	8a 45 ff             	mov    -0x1(%ebp),%al
   30617:	c9                   	leave  
   30618:	c3                   	ret    

00030619 <in_long>:
   30619:	55                   	push   %ebp
   3061a:	89 e5                	mov    %esp,%ebp
   3061c:	83 ec 14             	sub    $0x14,%esp
   3061f:	e8 20 fb ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30624:	05 dc c9 00 00       	add    $0xc9dc,%eax
   30629:	8b 45 08             	mov    0x8(%ebp),%eax
   3062c:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
   30630:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30633:	89 c2                	mov    %eax,%edx
   30635:	ed                   	in     (%dx),%eax
   30636:	89 45 fc             	mov    %eax,-0x4(%ebp)
   30639:	8b 45 fc             	mov    -0x4(%ebp),%eax
   3063c:	c9                   	leave  
   3063d:	c3                   	ret    

0003063e <out_byte>:
   3063e:	55                   	push   %ebp
   3063f:	89 e5                	mov    %esp,%ebp
   30641:	83 ec 08             	sub    $0x8,%esp
   30644:	e8 fb fa ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30649:	05 b7 c9 00 00       	add    $0xc9b7,%eax
   3064e:	8b 45 08             	mov    0x8(%ebp),%eax
   30651:	8b 55 0c             	mov    0xc(%ebp),%edx
   30654:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   30658:	88 d0                	mov    %dl,%al
   3065a:	88 45 f8             	mov    %al,-0x8(%ebp)
   3065d:	8a 45 f8             	mov    -0x8(%ebp),%al
   30660:	8b 55 fc             	mov    -0x4(%ebp),%edx
   30663:	ee                   	out    %al,(%dx)
   30664:	90                   	nop
   30665:	c9                   	leave  
   30666:	c3                   	ret    

00030667 <out_long>:
   30667:	55                   	push   %ebp
   30668:	89 e5                	mov    %esp,%ebp
   3066a:	83 ec 04             	sub    $0x4,%esp
   3066d:	e8 d2 fa ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30672:	05 8e c9 00 00       	add    $0xc98e,%eax
   30677:	8b 45 08             	mov    0x8(%ebp),%eax
   3067a:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   3067e:	8b 45 0c             	mov    0xc(%ebp),%eax
   30681:	8b 55 fc             	mov    -0x4(%ebp),%edx
   30684:	ef                   	out    %eax,(%dx)
   30685:	90                   	nop
   30686:	c9                   	leave  
   30687:	c3                   	ret    

00030688 <waitdisk>:
   30688:	55                   	push   %ebp
   30689:	89 e5                	mov    %esp,%ebp
   3068b:	e8 b4 fa ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30690:	05 70 c9 00 00       	add    $0xc970,%eax
   30695:	90                   	nop
   30696:	68 f7 01 00 00       	push   $0x1f7
   3069b:	e8 54 ff ff ff       	call   305f4 <in_byte>
   306a0:	83 c4 04             	add    $0x4,%esp
   306a3:	0f b6 c0             	movzbl %al,%eax
   306a6:	25 c0 00 00 00       	and    $0xc0,%eax
   306ab:	83 f8 40             	cmp    $0x40,%eax
   306ae:	75 e6                	jne    30696 <waitdisk+0xe>
   306b0:	90                   	nop
   306b1:	c9                   	leave  
   306b2:	c3                   	ret    

000306b3 <ide_prepare>:
   306b3:	55                   	push   %ebp
   306b4:	89 e5                	mov    %esp,%ebp
   306b6:	e8 89 fa ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   306bb:	05 45 c9 00 00       	add    $0xc945,%eax
   306c0:	e8 c3 ff ff ff       	call   30688 <waitdisk>
   306c5:	6a 00                	push   $0x0
   306c7:	68 f1 01 00 00       	push   $0x1f1
   306cc:	e8 6d ff ff ff       	call   3063e <out_byte>
   306d1:	83 c4 08             	add    $0x8,%esp
   306d4:	6a 01                	push   $0x1
   306d6:	68 f2 01 00 00       	push   $0x1f2
   306db:	e8 5e ff ff ff       	call   3063e <out_byte>
   306e0:	83 c4 08             	add    $0x8,%esp
   306e3:	8b 45 08             	mov    0x8(%ebp),%eax
   306e6:	0f b6 c0             	movzbl %al,%eax
   306e9:	50                   	push   %eax
   306ea:	68 f3 01 00 00       	push   $0x1f3
   306ef:	e8 4a ff ff ff       	call   3063e <out_byte>
   306f4:	83 c4 08             	add    $0x8,%esp
   306f7:	8b 45 08             	mov    0x8(%ebp),%eax
   306fa:	c1 e8 08             	shr    $0x8,%eax
   306fd:	0f b6 c0             	movzbl %al,%eax
   30700:	50                   	push   %eax
   30701:	68 f4 01 00 00       	push   $0x1f4
   30706:	e8 33 ff ff ff       	call   3063e <out_byte>
   3070b:	83 c4 08             	add    $0x8,%esp
   3070e:	8b 45 08             	mov    0x8(%ebp),%eax
   30711:	c1 e8 10             	shr    $0x10,%eax
   30714:	0f b6 c0             	movzbl %al,%eax
   30717:	50                   	push   %eax
   30718:	68 f5 01 00 00       	push   $0x1f5
   3071d:	e8 1c ff ff ff       	call   3063e <out_byte>
   30722:	83 c4 08             	add    $0x8,%esp
   30725:	8b 45 08             	mov    0x8(%ebp),%eax
   30728:	c1 e8 18             	shr    $0x18,%eax
   3072b:	83 c8 e0             	or     $0xffffffe0,%eax
   3072e:	0f b6 c0             	movzbl %al,%eax
   30731:	50                   	push   %eax
   30732:	68 f6 01 00 00       	push   $0x1f6
   30737:	e8 02 ff ff ff       	call   3063e <out_byte>
   3073c:	83 c4 08             	add    $0x8,%esp
   3073f:	90                   	nop
   30740:	c9                   	leave  
   30741:	c3                   	ret    

00030742 <issue_read>:
   30742:	55                   	push   %ebp
   30743:	89 e5                	mov    %esp,%ebp
   30745:	e8 fa f9 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   3074a:	05 b6 c8 00 00       	add    $0xc8b6,%eax
   3074f:	6a 20                	push   $0x20
   30751:	68 f7 01 00 00       	push   $0x1f7
   30756:	e8 e3 fe ff ff       	call   3063e <out_byte>
   3075b:	83 c4 08             	add    $0x8,%esp
   3075e:	90                   	nop
   3075f:	c9                   	leave  
   30760:	c3                   	ret    

00030761 <issue_write>:
   30761:	55                   	push   %ebp
   30762:	89 e5                	mov    %esp,%ebp
   30764:	e8 db f9 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30769:	05 97 c8 00 00       	add    $0xc897,%eax
   3076e:	6a 30                	push   $0x30
   30770:	68 f7 01 00 00       	push   $0x1f7
   30775:	e8 c4 fe ff ff       	call   3063e <out_byte>
   3077a:	83 c4 08             	add    $0x8,%esp
   3077d:	90                   	nop
   3077e:	c9                   	leave  
   3077f:	c3                   	ret    

00030780 <disk_do_read>:
   30780:	55                   	push   %ebp
   30781:	89 e5                	mov    %esp,%ebp
   30783:	53                   	push   %ebx
   30784:	83 ec 14             	sub    $0x14,%esp
   30787:	e8 bc f9 ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   3078c:	81 c3 74 c8 00 00    	add    $0xc874,%ebx
   30792:	e8 c8 fb ff ff       	call   3035f <clear_ide_intr>
   30797:	83 ec 0c             	sub    $0xc,%esp
   3079a:	ff 75 0c             	pushl  0xc(%ebp)
   3079d:	e8 11 ff ff ff       	call   306b3 <ide_prepare>
   307a2:	83 c4 10             	add    $0x10,%esp
   307a5:	e8 98 ff ff ff       	call   30742 <issue_read>
   307aa:	e8 ca fb ff ff       	call   30379 <wait_ide_intr>
   307af:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   307b6:	eb 25                	jmp    307dd <disk_do_read+0x5d>
   307b8:	8b 45 f4             	mov    -0xc(%ebp),%eax
   307bb:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   307c2:	8b 45 08             	mov    0x8(%ebp),%eax
   307c5:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
   307c8:	83 ec 0c             	sub    $0xc,%esp
   307cb:	68 f0 01 00 00       	push   $0x1f0
   307d0:	e8 44 fe ff ff       	call   30619 <in_long>
   307d5:	83 c4 10             	add    $0x10,%esp
   307d8:	89 03                	mov    %eax,(%ebx)
   307da:	ff 45 f4             	incl   -0xc(%ebp)
   307dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
   307e0:	83 f8 7f             	cmp    $0x7f,%eax
   307e3:	76 d3                	jbe    307b8 <disk_do_read+0x38>
   307e5:	90                   	nop
   307e6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   307e9:	c9                   	leave  
   307ea:	c3                   	ret    

000307eb <disk_do_write>:
   307eb:	55                   	push   %ebp
   307ec:	89 e5                	mov    %esp,%ebp
   307ee:	83 ec 10             	sub    $0x10,%esp
   307f1:	e8 4e f9 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   307f6:	05 0a c8 00 00       	add    $0xc80a,%eax
   307fb:	ff 75 0c             	pushl  0xc(%ebp)
   307fe:	e8 b0 fe ff ff       	call   306b3 <ide_prepare>
   30803:	83 c4 04             	add    $0x4,%esp
   30806:	e8 56 ff ff ff       	call   30761 <issue_write>
   3080b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   30812:	eb 22                	jmp    30836 <disk_do_write+0x4b>
   30814:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30817:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   3081e:	8b 45 08             	mov    0x8(%ebp),%eax
   30821:	01 d0                	add    %edx,%eax
   30823:	8b 00                	mov    (%eax),%eax
   30825:	50                   	push   %eax
   30826:	68 f0 01 00 00       	push   $0x1f0
   3082b:	e8 37 fe ff ff       	call   30667 <out_long>
   30830:	83 c4 08             	add    $0x8,%esp
   30833:	ff 45 fc             	incl   -0x4(%ebp)
   30836:	8b 45 fc             	mov    -0x4(%ebp),%eax
   30839:	83 f8 7f             	cmp    $0x7f,%eax
   3083c:	76 d6                	jbe    30814 <disk_do_write+0x29>
   3083e:	90                   	nop
   3083f:	c9                   	leave  
   30840:	c3                   	ret    

00030841 <loader>:
   30841:	55                   	push   %ebp
   30842:	89 e5                	mov    %esp,%ebp
   30844:	56                   	push   %esi
   30845:	53                   	push   %ebx
   30846:	83 ec 10             	sub    $0x10,%esp
   30849:	e8 fa f8 ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   3084e:	81 c3 b2 c7 00 00    	add    $0xc7b2,%ebx
   30854:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   3085b:	8d 83 cc c0 ff ff    	lea    -0x3f34(%ebx),%eax
   30861:	50                   	push   %eax
   30862:	6a 1d                	push   $0x1d
   30864:	8d 83 4c c0 ff ff    	lea    -0x3fb4(%ebx),%eax
   3086a:	50                   	push   %eax
   3086b:	8d 83 5c c0 ff ff    	lea    -0x3fa4(%ebx),%eax
   30871:	50                   	push   %eax
   30872:	e8 bf 01 00 00       	call   30a36 <printk>
   30877:	83 c4 10             	add    $0x10,%esp
   3087a:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3087d:	8b 50 1c             	mov    0x1c(%eax),%edx
   30880:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30883:	01 d0                	add    %edx,%eax
   30885:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30888:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3088b:	8b 40 2c             	mov    0x2c(%eax),%eax
   3088e:	0f b7 c0             	movzwl %ax,%eax
   30891:	c1 e0 05             	shl    $0x5,%eax
   30894:	89 c2                	mov    %eax,%edx
   30896:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30899:	01 d0                	add    %edx,%eax
   3089b:	89 45 ec             	mov    %eax,-0x14(%ebp)
   3089e:	e9 a0 00 00 00       	jmp    30943 <loader+0x102>
   308a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308a6:	8b 00                	mov    (%eax),%eax
   308a8:	83 f8 01             	cmp    $0x1,%eax
   308ab:	0f 85 8e 00 00 00    	jne    3093f <loader+0xfe>
   308b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308b4:	8b 70 14             	mov    0x14(%eax),%esi
   308b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308ba:	8b 48 10             	mov    0x10(%eax),%ecx
   308bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308c0:	8b 50 08             	mov    0x8(%eax),%edx
   308c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308c6:	8b 40 04             	mov    0x4(%eax),%eax
   308c9:	83 ec 0c             	sub    $0xc,%esp
   308cc:	56                   	push   %esi
   308cd:	51                   	push   %ecx
   308ce:	52                   	push   %edx
   308cf:	50                   	push   %eax
   308d0:	8d 83 98 c0 ff ff    	lea    -0x3f68(%ebx),%eax
   308d6:	50                   	push   %eax
   308d7:	e8 5a 01 00 00       	call   30a36 <printk>
   308dc:	83 c4 20             	add    $0x20,%esp
   308df:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308e2:	8b 40 10             	mov    0x10(%eax),%eax
   308e5:	8b 55 f4             	mov    -0xc(%ebp),%edx
   308e8:	8b 4a 04             	mov    0x4(%edx),%ecx
   308eb:	8b 55 f0             	mov    -0x10(%ebp),%edx
   308ee:	01 d1                	add    %edx,%ecx
   308f0:	8b 55 f4             	mov    -0xc(%ebp),%edx
   308f3:	8b 52 08             	mov    0x8(%edx),%edx
   308f6:	83 ec 04             	sub    $0x4,%esp
   308f9:	50                   	push   %eax
   308fa:	51                   	push   %ecx
   308fb:	52                   	push   %edx
   308fc:	e8 03 14 00 00       	call   31d04 <memcpy>
   30901:	83 c4 10             	add    $0x10,%esp
   30904:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30907:	8b 50 10             	mov    0x10(%eax),%edx
   3090a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3090d:	8b 40 14             	mov    0x14(%eax),%eax
   30910:	39 c2                	cmp    %eax,%edx
   30912:	73 2b                	jae    3093f <loader+0xfe>
   30914:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30917:	8b 50 14             	mov    0x14(%eax),%edx
   3091a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3091d:	8b 40 10             	mov    0x10(%eax),%eax
   30920:	29 c2                	sub    %eax,%edx
   30922:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30925:	8b 48 10             	mov    0x10(%eax),%ecx
   30928:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3092b:	8b 40 08             	mov    0x8(%eax),%eax
   3092e:	01 c8                	add    %ecx,%eax
   30930:	83 ec 04             	sub    $0x4,%esp
   30933:	52                   	push   %edx
   30934:	6a 00                	push   $0x0
   30936:	50                   	push   %eax
   30937:	e8 10 14 00 00       	call   31d4c <memset>
   3093c:	83 c4 10             	add    $0x10,%esp
   3093f:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
   30943:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30946:	3b 45 ec             	cmp    -0x14(%ebp),%eax
   30949:	0f 82 54 ff ff ff    	jb     308a3 <loader+0x62>
   3094f:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30952:	8b 40 18             	mov    0x18(%eax),%eax
   30955:	89 45 e8             	mov    %eax,-0x18(%ebp)
   30958:	8b 45 e8             	mov    -0x18(%ebp),%eax
   3095b:	8d 65 f8             	lea    -0x8(%ebp),%esp
   3095e:	5b                   	pop    %ebx
   3095f:	5e                   	pop    %esi
   30960:	5d                   	pop    %ebp
   30961:	c3                   	ret    

00030962 <sbrk>:
   30962:	55                   	push   %ebp
   30963:	89 e5                	mov    %esp,%ebp
   30965:	53                   	push   %ebx
   30966:	83 ec 04             	sub    $0x4,%esp
   30969:	e8 d6 f7 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   3096e:	05 92 c6 00 00       	add    $0xc692,%eax
   30973:	83 ec 0c             	sub    $0xc,%esp
   30976:	8d 90 d4 c0 ff ff    	lea    -0x3f2c(%eax),%edx
   3097c:	52                   	push   %edx
   3097d:	8d 90 34 c1 ff ff    	lea    -0x3ecc(%eax),%edx
   30983:	52                   	push   %edx
   30984:	6a 09                	push   $0x9
   30986:	8d 90 d6 c0 ff ff    	lea    -0x3f2a(%eax),%edx
   3098c:	52                   	push   %edx
   3098d:	8d 90 e8 c0 ff ff    	lea    -0x3f18(%eax),%edx
   30993:	52                   	push   %edx
   30994:	89 c3                	mov    %eax,%ebx
   30996:	e8 9b 00 00 00       	call   30a36 <printk>
   3099b:	83 c4 20             	add    $0x20,%esp
   3099e:	b8 01 00 00 00       	mov    $0x1,%eax
   309a3:	82                   	nemu_trap 
   309a4:	b8 00 00 00 00       	mov    $0x0,%eax
   309a9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   309ac:	c9                   	leave  
   309ad:	c3                   	ret    

000309ae <in_byte>:
   309ae:	55                   	push   %ebp
   309af:	89 e5                	mov    %esp,%ebp
   309b1:	83 ec 14             	sub    $0x14,%esp
   309b4:	e8 8b f7 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   309b9:	05 47 c6 00 00       	add    $0xc647,%eax
   309be:	8b 45 08             	mov    0x8(%ebp),%eax
   309c1:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
   309c5:	8b 45 ec             	mov    -0x14(%ebp),%eax
   309c8:	89 c2                	mov    %eax,%edx
   309ca:	ec                   	in     (%dx),%al
   309cb:	88 45 ff             	mov    %al,-0x1(%ebp)
   309ce:	8a 45 ff             	mov    -0x1(%ebp),%al
   309d1:	c9                   	leave  
   309d2:	c3                   	ret    

000309d3 <init_serial>:
   309d3:	55                   	push   %ebp
   309d4:	89 e5                	mov    %esp,%ebp
   309d6:	e8 69 f7 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   309db:	05 25 c6 00 00       	add    $0xc625,%eax
   309e0:	90                   	nop
   309e1:	5d                   	pop    %ebp
   309e2:	c3                   	ret    

000309e3 <serial_idle>:
   309e3:	55                   	push   %ebp
   309e4:	89 e5                	mov    %esp,%ebp
   309e6:	e8 59 f7 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   309eb:	05 15 c6 00 00       	add    $0xc615,%eax
   309f0:	68 fd 03 00 00       	push   $0x3fd
   309f5:	e8 b4 ff ff ff       	call   309ae <in_byte>
   309fa:	83 c4 04             	add    $0x4,%esp
   309fd:	0f b6 c0             	movzbl %al,%eax
   30a00:	83 e0 20             	and    $0x20,%eax
   30a03:	85 c0                	test   %eax,%eax
   30a05:	0f 95 c0             	setne  %al
   30a08:	0f b6 c0             	movzbl %al,%eax
   30a0b:	c9                   	leave  
   30a0c:	c3                   	ret    

00030a0d <serial_printc>:
   30a0d:	55                   	push   %ebp
   30a0e:	89 e5                	mov    %esp,%ebp
   30a10:	83 ec 04             	sub    $0x4,%esp
   30a13:	e8 2c f7 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30a18:	05 e8 c5 00 00       	add    $0xc5e8,%eax
   30a1d:	8b 45 08             	mov    0x8(%ebp),%eax
   30a20:	88 45 fc             	mov    %al,-0x4(%ebp)
   30a23:	90                   	nop
   30a24:	e8 ba ff ff ff       	call   309e3 <serial_idle>
   30a29:	85 c0                	test   %eax,%eax
   30a2b:	74 f7                	je     30a24 <serial_printc+0x17>
   30a2d:	b8 01 00 00 00       	mov    $0x1,%eax
   30a32:	82                   	nemu_trap 
   30a33:	90                   	nop
   30a34:	c9                   	leave  
   30a35:	c3                   	ret    

00030a36 <printk>:
   30a36:	55                   	push   %ebp
   30a37:	89 e5                	mov    %esp,%ebp
   30a39:	53                   	push   %ebx
   30a3a:	83 ec 14             	sub    $0x14,%esp
   30a3d:	e8 06 f7 ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   30a42:	81 c3 be c5 00 00    	add    $0xc5be,%ebx
   30a48:	8d 45 0c             	lea    0xc(%ebp),%eax
   30a4b:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30a4e:	8b 45 08             	mov    0x8(%ebp),%eax
   30a51:	ff 75 f4             	pushl  -0xc(%ebp)
   30a54:	50                   	push   %eax
   30a55:	68 00 01 00 00       	push   $0x100
   30a5a:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
   30a60:	50                   	push   %eax
   30a61:	e8 0a 14 00 00       	call   31e70 <vsnprintf>
   30a66:	83 c4 10             	add    $0x10,%esp
   30a69:	89 45 f0             	mov    %eax,-0x10(%ebp)
   30a6c:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a6f:	83 ec 04             	sub    $0x4,%esp
   30a72:	50                   	push   %eax
   30a73:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
   30a79:	50                   	push   %eax
   30a7a:	6a 01                	push   $0x1
   30a7c:	e8 b1 07 00 00       	call   31232 <fs_write>
   30a81:	83 c4 10             	add    $0x10,%esp
   30a84:	90                   	nop
   30a85:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30a88:	c9                   	leave  
   30a89:	c3                   	ret    

00030a8a <add_irq_handle>:
   30a8a:	55                   	push   %ebp
   30a8b:	89 e5                	mov    %esp,%ebp
   30a8d:	53                   	push   %ebx
   30a8e:	83 ec 14             	sub    $0x14,%esp
   30a91:	e8 b2 f6 ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   30a96:	81 c3 6a c5 00 00    	add    $0xc56a,%ebx
   30a9c:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
   30aa0:	7e 2f                	jle    30ad1 <add_irq_handle+0x47>
   30aa2:	83 ec 0c             	sub    $0xc,%esp
   30aa5:	8d 83 3c c1 ff ff    	lea    -0x3ec4(%ebx),%eax
   30aab:	50                   	push   %eax
   30aac:	8d 83 28 c3 ff ff    	lea    -0x3cd8(%ebx),%eax
   30ab2:	50                   	push   %eax
   30ab3:	6a 17                	push   $0x17
   30ab5:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30abb:	50                   	push   %eax
   30abc:	8d 83 64 c1 ff ff    	lea    -0x3e9c(%ebx),%eax
   30ac2:	50                   	push   %eax
   30ac3:	e8 6e ff ff ff       	call   30a36 <printk>
   30ac8:	83 c4 20             	add    $0x20,%esp
   30acb:	b8 01 00 00 00       	mov    $0x1,%eax
   30ad0:	82                   	nemu_trap 
   30ad1:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
   30ad7:	83 f8 20             	cmp    $0x20,%eax
   30ada:	7e 2f                	jle    30b0b <add_irq_handle+0x81>
   30adc:	83 ec 0c             	sub    $0xc,%esp
   30adf:	8d 83 ae c1 ff ff    	lea    -0x3e52(%ebx),%eax
   30ae5:	50                   	push   %eax
   30ae6:	8d 83 28 c3 ff ff    	lea    -0x3cd8(%ebx),%eax
   30aec:	50                   	push   %eax
   30aed:	6a 18                	push   $0x18
   30aef:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30af5:	50                   	push   %eax
   30af6:	8d 83 64 c1 ff ff    	lea    -0x3e9c(%ebx),%eax
   30afc:	50                   	push   %eax
   30afd:	e8 34 ff ff ff       	call   30a36 <printk>
   30b02:	83 c4 20             	add    $0x20,%esp
   30b05:	b8 01 00 00 00       	mov    $0x1,%eax
   30b0a:	82                   	nemu_trap 
   30b0b:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
   30b11:	8d 50 01             	lea    0x1(%eax),%edx
   30b14:	89 93 60 16 01 00    	mov    %edx,0x11660(%ebx)
   30b1a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
   30b21:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
   30b27:	01 d0                	add    %edx,%eax
   30b29:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30b2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30b2f:	8b 55 0c             	mov    0xc(%ebp),%edx
   30b32:	89 10                	mov    %edx,(%eax)
   30b34:	8b 45 08             	mov    0x8(%ebp),%eax
   30b37:	8b 94 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%edx
   30b3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30b41:	89 50 04             	mov    %edx,0x4(%eax)
   30b44:	8b 45 08             	mov    0x8(%ebp),%eax
   30b47:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30b4a:	89 94 83 20 16 01 00 	mov    %edx,0x11620(%ebx,%eax,4)
   30b51:	90                   	nop
   30b52:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30b55:	c9                   	leave  
   30b56:	c3                   	ret    

00030b57 <irq_handle>:
   30b57:	55                   	push   %ebp
   30b58:	89 e5                	mov    %esp,%ebp
   30b5a:	53                   	push   %ebx
   30b5b:	83 ec 14             	sub    $0x14,%esp
   30b5e:	e8 e5 f5 ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   30b63:	81 c3 9d c4 00 00    	add    $0xc49d,%ebx
   30b69:	8b 45 08             	mov    0x8(%ebp),%eax
   30b6c:	8b 40 20             	mov    0x20(%eax),%eax
   30b6f:	89 45 f0             	mov    %eax,-0x10(%ebp)
   30b72:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   30b76:	79 2a                	jns    30ba2 <irq_handle+0x4b>
   30b78:	8d 83 38 c3 ff ff    	lea    -0x3cc8(%ebx),%eax
   30b7e:	50                   	push   %eax
   30b7f:	6a 27                	push   $0x27
   30b81:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30b87:	50                   	push   %eax
   30b88:	8d 83 cc c1 ff ff    	lea    -0x3e34(%ebx),%eax
   30b8e:	50                   	push   %eax
   30b8f:	e8 a2 fe ff ff       	call   30a36 <printk>
   30b94:	83 c4 10             	add    $0x10,%esp
   30b97:	b8 01 00 00 00       	mov    $0x1,%eax
   30b9c:	82                   	nemu_trap 
   30b9d:	e9 f9 00 00 00       	jmp    30c9b <irq_handle+0x144>
   30ba2:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
   30ba9:	75 13                	jne    30bbe <irq_handle+0x67>
   30bab:	83 ec 0c             	sub    $0xc,%esp
   30bae:	ff 75 08             	pushl  0x8(%ebp)
   30bb1:	e8 d8 08 00 00       	call   3148e <do_syscall>
   30bb6:	83 c4 10             	add    $0x10,%esp
   30bb9:	e9 dd 00 00 00       	jmp    30c9b <irq_handle+0x144>
   30bbe:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
   30bc5:	7f 37                	jg     30bfe <irq_handle+0xa7>
   30bc7:	8b 45 08             	mov    0x8(%ebp),%eax
   30bca:	8b 40 28             	mov    0x28(%eax),%eax
   30bcd:	83 ec 08             	sub    $0x8,%esp
   30bd0:	50                   	push   %eax
   30bd1:	ff 75 f0             	pushl  -0x10(%ebp)
   30bd4:	8d 83 38 c3 ff ff    	lea    -0x3cc8(%ebx),%eax
   30bda:	50                   	push   %eax
   30bdb:	6a 2f                	push   $0x2f
   30bdd:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30be3:	50                   	push   %eax
   30be4:	8d 83 18 c2 ff ff    	lea    -0x3de8(%ebx),%eax
   30bea:	50                   	push   %eax
   30beb:	e8 46 fe ff ff       	call   30a36 <printk>
   30bf0:	83 c4 20             	add    $0x20,%esp
   30bf3:	b8 01 00 00 00       	mov    $0x1,%eax
   30bf8:	82                   	nemu_trap 
   30bf9:	e9 9d 00 00 00       	jmp    30c9b <irq_handle+0x144>
   30bfe:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
   30c05:	0f 8e 90 00 00 00    	jle    30c9b <irq_handle+0x144>
   30c0b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30c0e:	2d e8 03 00 00       	sub    $0x3e8,%eax
   30c13:	89 45 ec             	mov    %eax,-0x14(%ebp)
   30c16:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
   30c1a:	7e 2f                	jle    30c4b <irq_handle+0xf4>
   30c1c:	83 ec 0c             	sub    $0xc,%esp
   30c1f:	8d 83 72 c2 ff ff    	lea    -0x3d8e(%ebx),%eax
   30c25:	50                   	push   %eax
   30c26:	8d 83 38 c3 ff ff    	lea    -0x3cc8(%ebx),%eax
   30c2c:	50                   	push   %eax
   30c2d:	6a 34                	push   $0x34
   30c2f:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30c35:	50                   	push   %eax
   30c36:	8d 83 64 c1 ff ff    	lea    -0x3e9c(%ebx),%eax
   30c3c:	50                   	push   %eax
   30c3d:	e8 f4 fd ff ff       	call   30a36 <printk>
   30c42:	83 c4 20             	add    $0x20,%esp
   30c45:	b8 01 00 00 00       	mov    $0x1,%eax
   30c4a:	82                   	nemu_trap 
   30c4b:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
   30c4f:	75 25                	jne    30c76 <irq_handle+0x11f>
   30c51:	8d 83 38 c3 ff ff    	lea    -0x3cc8(%ebx),%eax
   30c57:	50                   	push   %eax
   30c58:	6a 36                	push   $0x36
   30c5a:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30c60:	50                   	push   %eax
   30c61:	8d 83 88 c2 ff ff    	lea    -0x3d78(%ebx),%eax
   30c67:	50                   	push   %eax
   30c68:	e8 c9 fd ff ff       	call   30a36 <printk>
   30c6d:	83 c4 10             	add    $0x10,%esp
   30c70:	b8 01 00 00 00       	mov    $0x1,%eax
   30c75:	82                   	nemu_trap 
   30c76:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30c79:	8b 84 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%eax
   30c80:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30c83:	eb 10                	jmp    30c95 <irq_handle+0x13e>
   30c85:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30c88:	8b 00                	mov    (%eax),%eax
   30c8a:	ff d0                	call   *%eax
   30c8c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30c8f:	8b 40 04             	mov    0x4(%eax),%eax
   30c92:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30c95:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   30c99:	75 ea                	jne    30c85 <irq_handle+0x12e>
   30c9b:	90                   	nop
   30c9c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30c9f:	c9                   	leave  
   30ca0:	c3                   	ret    

00030ca1 <out_byte>:
   30ca1:	55                   	push   %ebp
   30ca2:	89 e5                	mov    %esp,%ebp
   30ca4:	83 ec 08             	sub    $0x8,%esp
   30ca7:	e8 98 f4 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30cac:	05 54 c3 00 00       	add    $0xc354,%eax
   30cb1:	8b 45 08             	mov    0x8(%ebp),%eax
   30cb4:	8b 55 0c             	mov    0xc(%ebp),%edx
   30cb7:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   30cbb:	88 d0                	mov    %dl,%al
   30cbd:	88 45 f8             	mov    %al,-0x8(%ebp)
   30cc0:	8a 45 f8             	mov    -0x8(%ebp),%al
   30cc3:	8b 55 fc             	mov    -0x4(%ebp),%edx
   30cc6:	ee                   	out    %al,(%dx)
   30cc7:	90                   	nop
   30cc8:	c9                   	leave  
   30cc9:	c3                   	ret    

00030cca <init_i8259>:
   30cca:	55                   	push   %ebp
   30ccb:	89 e5                	mov    %esp,%ebp
   30ccd:	e8 72 f4 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30cd2:	05 2e c3 00 00       	add    $0xc32e,%eax
   30cd7:	68 ff 00 00 00       	push   $0xff
   30cdc:	6a 21                	push   $0x21
   30cde:	e8 be ff ff ff       	call   30ca1 <out_byte>
   30ce3:	83 c4 08             	add    $0x8,%esp
   30ce6:	68 ff 00 00 00       	push   $0xff
   30ceb:	68 a1 00 00 00       	push   $0xa1
   30cf0:	e8 ac ff ff ff       	call   30ca1 <out_byte>
   30cf5:	83 c4 08             	add    $0x8,%esp
   30cf8:	6a 11                	push   $0x11
   30cfa:	6a 20                	push   $0x20
   30cfc:	e8 a0 ff ff ff       	call   30ca1 <out_byte>
   30d01:	83 c4 08             	add    $0x8,%esp
   30d04:	6a 20                	push   $0x20
   30d06:	6a 21                	push   $0x21
   30d08:	e8 94 ff ff ff       	call   30ca1 <out_byte>
   30d0d:	83 c4 08             	add    $0x8,%esp
   30d10:	6a 04                	push   $0x4
   30d12:	6a 21                	push   $0x21
   30d14:	e8 88 ff ff ff       	call   30ca1 <out_byte>
   30d19:	83 c4 08             	add    $0x8,%esp
   30d1c:	6a 03                	push   $0x3
   30d1e:	6a 21                	push   $0x21
   30d20:	e8 7c ff ff ff       	call   30ca1 <out_byte>
   30d25:	83 c4 08             	add    $0x8,%esp
   30d28:	6a 11                	push   $0x11
   30d2a:	68 a0 00 00 00       	push   $0xa0
   30d2f:	e8 6d ff ff ff       	call   30ca1 <out_byte>
   30d34:	83 c4 08             	add    $0x8,%esp
   30d37:	6a 28                	push   $0x28
   30d39:	68 a1 00 00 00       	push   $0xa1
   30d3e:	e8 5e ff ff ff       	call   30ca1 <out_byte>
   30d43:	83 c4 08             	add    $0x8,%esp
   30d46:	6a 02                	push   $0x2
   30d48:	68 a1 00 00 00       	push   $0xa1
   30d4d:	e8 4f ff ff ff       	call   30ca1 <out_byte>
   30d52:	83 c4 08             	add    $0x8,%esp
   30d55:	6a 03                	push   $0x3
   30d57:	68 a1 00 00 00       	push   $0xa1
   30d5c:	e8 40 ff ff ff       	call   30ca1 <out_byte>
   30d61:	83 c4 08             	add    $0x8,%esp
   30d64:	6a 68                	push   $0x68
   30d66:	6a 20                	push   $0x20
   30d68:	e8 34 ff ff ff       	call   30ca1 <out_byte>
   30d6d:	83 c4 08             	add    $0x8,%esp
   30d70:	6a 0a                	push   $0xa
   30d72:	6a 20                	push   $0x20
   30d74:	e8 28 ff ff ff       	call   30ca1 <out_byte>
   30d79:	83 c4 08             	add    $0x8,%esp
   30d7c:	6a 68                	push   $0x68
   30d7e:	68 a0 00 00 00       	push   $0xa0
   30d83:	e8 19 ff ff ff       	call   30ca1 <out_byte>
   30d88:	83 c4 08             	add    $0x8,%esp
   30d8b:	6a 0a                	push   $0xa
   30d8d:	68 a0 00 00 00       	push   $0xa0
   30d92:	e8 0a ff ff ff       	call   30ca1 <out_byte>
   30d97:	83 c4 08             	add    $0x8,%esp
   30d9a:	90                   	nop
   30d9b:	c9                   	leave  
   30d9c:	c3                   	ret    

00030d9d <write_idtr>:
   30d9d:	55                   	push   %ebp
   30d9e:	89 e5                	mov    %esp,%ebp
   30da0:	e8 9f f3 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30da5:	05 5b c2 00 00       	add    $0xc25b,%eax
   30daa:	8b 55 0c             	mov    0xc(%ebp),%edx
   30dad:	4a                   	dec    %edx
   30dae:	66 89 90 80 1e 01 00 	mov    %dx,0x11e80(%eax)
   30db5:	8b 55 08             	mov    0x8(%ebp),%edx
   30db8:	66 89 90 82 1e 01 00 	mov    %dx,0x11e82(%eax)
   30dbf:	8b 55 08             	mov    0x8(%ebp),%edx
   30dc2:	c1 ea 10             	shr    $0x10,%edx
   30dc5:	66 89 90 84 1e 01 00 	mov    %dx,0x11e84(%eax)
   30dcc:	8d 80 80 1e 01 00    	lea    0x11e80(%eax),%eax
   30dd2:	0f 01 18             	lidtl  (%eax)
   30dd5:	90                   	nop
   30dd6:	5d                   	pop    %ebp
   30dd7:	c3                   	ret    

00030dd8 <sti>:
   30dd8:	55                   	push   %ebp
   30dd9:	89 e5                	mov    %esp,%ebp
   30ddb:	e8 64 f3 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30de0:	05 20 c2 00 00       	add    $0xc220,%eax
   30de5:	fb                   	sti    
   30de6:	90                   	nop
   30de7:	5d                   	pop    %ebp
   30de8:	c3                   	ret    

00030de9 <set_intr>:
   30de9:	55                   	push   %ebp
   30dea:	89 e5                	mov    %esp,%ebp
   30dec:	e8 53 f3 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30df1:	05 0f c2 00 00       	add    $0xc20f,%eax
   30df6:	8b 45 10             	mov    0x10(%ebp),%eax
   30df9:	8b 55 08             	mov    0x8(%ebp),%edx
   30dfc:	66 89 02             	mov    %ax,(%edx)
   30dff:	8b 45 0c             	mov    0xc(%ebp),%eax
   30e02:	8b 55 08             	mov    0x8(%ebp),%edx
   30e05:	66 89 42 02          	mov    %ax,0x2(%edx)
   30e09:	8b 45 08             	mov    0x8(%ebp),%eax
   30e0c:	c6 40 04 00          	movb   $0x0,0x4(%eax)
   30e10:	8b 45 08             	mov    0x8(%ebp),%eax
   30e13:	8a 50 05             	mov    0x5(%eax),%dl
   30e16:	83 e2 f0             	and    $0xfffffff0,%edx
   30e19:	83 ca 0e             	or     $0xe,%edx
   30e1c:	88 50 05             	mov    %dl,0x5(%eax)
   30e1f:	8b 45 08             	mov    0x8(%ebp),%eax
   30e22:	8a 50 05             	mov    0x5(%eax),%dl
   30e25:	83 e2 ef             	and    $0xffffffef,%edx
   30e28:	88 50 05             	mov    %dl,0x5(%eax)
   30e2b:	8b 45 14             	mov    0x14(%ebp),%eax
   30e2e:	88 c2                	mov    %al,%dl
   30e30:	83 e2 03             	and    $0x3,%edx
   30e33:	8b 45 08             	mov    0x8(%ebp),%eax
   30e36:	83 e2 03             	and    $0x3,%edx
   30e39:	88 d1                	mov    %dl,%cl
   30e3b:	c1 e1 05             	shl    $0x5,%ecx
   30e3e:	8a 50 05             	mov    0x5(%eax),%dl
   30e41:	83 e2 9f             	and    $0xffffff9f,%edx
   30e44:	09 ca                	or     %ecx,%edx
   30e46:	88 50 05             	mov    %dl,0x5(%eax)
   30e49:	8b 45 08             	mov    0x8(%ebp),%eax
   30e4c:	8a 50 05             	mov    0x5(%eax),%dl
   30e4f:	83 ca 80             	or     $0xffffff80,%edx
   30e52:	88 50 05             	mov    %dl,0x5(%eax)
   30e55:	8b 45 10             	mov    0x10(%ebp),%eax
   30e58:	c1 e8 10             	shr    $0x10,%eax
   30e5b:	8b 55 08             	mov    0x8(%ebp),%edx
   30e5e:	66 89 42 06          	mov    %ax,0x6(%edx)
   30e62:	90                   	nop
   30e63:	5d                   	pop    %ebp
   30e64:	c3                   	ret    

00030e65 <set_trap>:
   30e65:	55                   	push   %ebp
   30e66:	89 e5                	mov    %esp,%ebp
   30e68:	e8 d7 f2 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   30e6d:	05 93 c1 00 00       	add    $0xc193,%eax
   30e72:	8b 45 10             	mov    0x10(%ebp),%eax
   30e75:	8b 55 08             	mov    0x8(%ebp),%edx
   30e78:	66 89 02             	mov    %ax,(%edx)
   30e7b:	8b 45 0c             	mov    0xc(%ebp),%eax
   30e7e:	8b 55 08             	mov    0x8(%ebp),%edx
   30e81:	66 89 42 02          	mov    %ax,0x2(%edx)
   30e85:	8b 45 08             	mov    0x8(%ebp),%eax
   30e88:	c6 40 04 00          	movb   $0x0,0x4(%eax)
   30e8c:	8b 45 08             	mov    0x8(%ebp),%eax
   30e8f:	8a 50 05             	mov    0x5(%eax),%dl
   30e92:	83 ca 0f             	or     $0xf,%edx
   30e95:	88 50 05             	mov    %dl,0x5(%eax)
   30e98:	8b 45 08             	mov    0x8(%ebp),%eax
   30e9b:	8a 50 05             	mov    0x5(%eax),%dl
   30e9e:	83 e2 ef             	and    $0xffffffef,%edx
   30ea1:	88 50 05             	mov    %dl,0x5(%eax)
   30ea4:	8b 45 14             	mov    0x14(%ebp),%eax
   30ea7:	88 c2                	mov    %al,%dl
   30ea9:	83 e2 03             	and    $0x3,%edx
   30eac:	8b 45 08             	mov    0x8(%ebp),%eax
   30eaf:	83 e2 03             	and    $0x3,%edx
   30eb2:	88 d1                	mov    %dl,%cl
   30eb4:	c1 e1 05             	shl    $0x5,%ecx
   30eb7:	8a 50 05             	mov    0x5(%eax),%dl
   30eba:	83 e2 9f             	and    $0xffffff9f,%edx
   30ebd:	09 ca                	or     %ecx,%edx
   30ebf:	88 50 05             	mov    %dl,0x5(%eax)
   30ec2:	8b 45 08             	mov    0x8(%ebp),%eax
   30ec5:	8a 50 05             	mov    0x5(%eax),%dl
   30ec8:	83 ca 80             	or     $0xffffff80,%edx
   30ecb:	88 50 05             	mov    %dl,0x5(%eax)
   30ece:	8b 45 10             	mov    0x10(%ebp),%eax
   30ed1:	c1 e8 10             	shr    $0x10,%eax
   30ed4:	8b 55 08             	mov    0x8(%ebp),%edx
   30ed7:	66 89 42 06          	mov    %ax,0x6(%edx)
   30edb:	90                   	nop
   30edc:	5d                   	pop    %ebp
   30edd:	c3                   	ret    

00030ede <init_idt>:
   30ede:	55                   	push   %ebp
   30edf:	89 e5                	mov    %esp,%ebp
   30ee1:	53                   	push   %ebx
   30ee2:	83 ec 10             	sub    $0x10,%esp
   30ee5:	e8 5e f2 ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   30eea:	81 c3 16 c1 00 00    	add    $0xc116,%ebx
   30ef0:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   30ef7:	eb 2b                	jmp    30f24 <init_idt+0x46>
   30ef9:	c7 c0 cd 00 03 00    	mov    $0x300cd,%eax
   30eff:	89 c2                	mov    %eax,%edx
   30f01:	8b 45 f8             	mov    -0x8(%ebp),%eax
   30f04:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
   30f0b:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
   30f11:	01 c8                	add    %ecx,%eax
   30f13:	6a 00                	push   $0x0
   30f15:	52                   	push   %edx
   30f16:	6a 08                	push   $0x8
   30f18:	50                   	push   %eax
   30f19:	e8 47 ff ff ff       	call   30e65 <set_trap>
   30f1e:	83 c4 10             	add    $0x10,%esp
   30f21:	ff 45 f8             	incl   -0x8(%ebp)
   30f24:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
   30f2b:	7e cc                	jle    30ef9 <init_idt+0x1b>
   30f2d:	c7 c0 52 00 03 00    	mov    $0x30052,%eax
   30f33:	6a 00                	push   $0x0
   30f35:	50                   	push   %eax
   30f36:	6a 08                	push   $0x8
   30f38:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
   30f3e:	50                   	push   %eax
   30f3f:	e8 21 ff ff ff       	call   30e65 <set_trap>
   30f44:	83 c4 10             	add    $0x10,%esp
   30f47:	c7 c0 58 00 03 00    	mov    $0x30058,%eax
   30f4d:	89 c2                	mov    %eax,%edx
   30f4f:	8d 83 88 16 01 00    	lea    0x11688(%ebx),%eax
   30f55:	6a 00                	push   $0x0
   30f57:	52                   	push   %edx
   30f58:	6a 08                	push   $0x8
   30f5a:	50                   	push   %eax
   30f5b:	e8 05 ff ff ff       	call   30e65 <set_trap>
   30f60:	83 c4 10             	add    $0x10,%esp
   30f63:	c7 c0 5e 00 03 00    	mov    $0x3005e,%eax
   30f69:	89 c2                	mov    %eax,%edx
   30f6b:	8d 83 90 16 01 00    	lea    0x11690(%ebx),%eax
   30f71:	6a 00                	push   $0x0
   30f73:	52                   	push   %edx
   30f74:	6a 08                	push   $0x8
   30f76:	50                   	push   %eax
   30f77:	e8 e9 fe ff ff       	call   30e65 <set_trap>
   30f7c:	83 c4 10             	add    $0x10,%esp
   30f7f:	c7 c0 64 00 03 00    	mov    $0x30064,%eax
   30f85:	89 c2                	mov    %eax,%edx
   30f87:	8d 83 98 16 01 00    	lea    0x11698(%ebx),%eax
   30f8d:	6a 00                	push   $0x0
   30f8f:	52                   	push   %edx
   30f90:	6a 08                	push   $0x8
   30f92:	50                   	push   %eax
   30f93:	e8 cd fe ff ff       	call   30e65 <set_trap>
   30f98:	83 c4 10             	add    $0x10,%esp
   30f9b:	c7 c0 6a 00 03 00    	mov    $0x3006a,%eax
   30fa1:	89 c2                	mov    %eax,%edx
   30fa3:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
   30fa9:	6a 00                	push   $0x0
   30fab:	52                   	push   %edx
   30fac:	6a 08                	push   $0x8
   30fae:	50                   	push   %eax
   30faf:	e8 b1 fe ff ff       	call   30e65 <set_trap>
   30fb4:	83 c4 10             	add    $0x10,%esp
   30fb7:	c7 c0 70 00 03 00    	mov    $0x30070,%eax
   30fbd:	89 c2                	mov    %eax,%edx
   30fbf:	8d 83 a8 16 01 00    	lea    0x116a8(%ebx),%eax
   30fc5:	6a 00                	push   $0x0
   30fc7:	52                   	push   %edx
   30fc8:	6a 08                	push   $0x8
   30fca:	50                   	push   %eax
   30fcb:	e8 95 fe ff ff       	call   30e65 <set_trap>
   30fd0:	83 c4 10             	add    $0x10,%esp
   30fd3:	c7 c0 76 00 03 00    	mov    $0x30076,%eax
   30fd9:	89 c2                	mov    %eax,%edx
   30fdb:	8d 83 b0 16 01 00    	lea    0x116b0(%ebx),%eax
   30fe1:	6a 00                	push   $0x0
   30fe3:	52                   	push   %edx
   30fe4:	6a 08                	push   $0x8
   30fe6:	50                   	push   %eax
   30fe7:	e8 79 fe ff ff       	call   30e65 <set_trap>
   30fec:	83 c4 10             	add    $0x10,%esp
   30fef:	c7 c0 7c 00 03 00    	mov    $0x3007c,%eax
   30ff5:	89 c2                	mov    %eax,%edx
   30ff7:	8d 83 b8 16 01 00    	lea    0x116b8(%ebx),%eax
   30ffd:	6a 00                	push   $0x0
   30fff:	52                   	push   %edx
   31000:	6a 08                	push   $0x8
   31002:	50                   	push   %eax
   31003:	e8 5d fe ff ff       	call   30e65 <set_trap>
   31008:	83 c4 10             	add    $0x10,%esp
   3100b:	c7 c0 82 00 03 00    	mov    $0x30082,%eax
   31011:	89 c2                	mov    %eax,%edx
   31013:	8d 83 c0 16 01 00    	lea    0x116c0(%ebx),%eax
   31019:	6a 00                	push   $0x0
   3101b:	52                   	push   %edx
   3101c:	6a 08                	push   $0x8
   3101e:	50                   	push   %eax
   3101f:	e8 41 fe ff ff       	call   30e65 <set_trap>
   31024:	83 c4 10             	add    $0x10,%esp
   31027:	c7 c0 86 00 03 00    	mov    $0x30086,%eax
   3102d:	89 c2                	mov    %eax,%edx
   3102f:	8d 83 c8 16 01 00    	lea    0x116c8(%ebx),%eax
   31035:	6a 00                	push   $0x0
   31037:	52                   	push   %edx
   31038:	6a 08                	push   $0x8
   3103a:	50                   	push   %eax
   3103b:	e8 25 fe ff ff       	call   30e65 <set_trap>
   31040:	83 c4 10             	add    $0x10,%esp
   31043:	c7 c0 8c 00 03 00    	mov    $0x3008c,%eax
   31049:	89 c2                	mov    %eax,%edx
   3104b:	8d 83 d0 16 01 00    	lea    0x116d0(%ebx),%eax
   31051:	6a 00                	push   $0x0
   31053:	52                   	push   %edx
   31054:	6a 08                	push   $0x8
   31056:	50                   	push   %eax
   31057:	e8 09 fe ff ff       	call   30e65 <set_trap>
   3105c:	83 c4 10             	add    $0x10,%esp
   3105f:	c7 c0 90 00 03 00    	mov    $0x30090,%eax
   31065:	89 c2                	mov    %eax,%edx
   31067:	8d 83 d8 16 01 00    	lea    0x116d8(%ebx),%eax
   3106d:	6a 00                	push   $0x0
   3106f:	52                   	push   %edx
   31070:	6a 08                	push   $0x8
   31072:	50                   	push   %eax
   31073:	e8 ed fd ff ff       	call   30e65 <set_trap>
   31078:	83 c4 10             	add    $0x10,%esp
   3107b:	c7 c0 94 00 03 00    	mov    $0x30094,%eax
   31081:	89 c2                	mov    %eax,%edx
   31083:	8d 83 e0 16 01 00    	lea    0x116e0(%ebx),%eax
   31089:	6a 00                	push   $0x0
   3108b:	52                   	push   %edx
   3108c:	6a 08                	push   $0x8
   3108e:	50                   	push   %eax
   3108f:	e8 d1 fd ff ff       	call   30e65 <set_trap>
   31094:	83 c4 10             	add    $0x10,%esp
   31097:	c7 c0 98 00 03 00    	mov    $0x30098,%eax
   3109d:	89 c2                	mov    %eax,%edx
   3109f:	8d 83 e8 16 01 00    	lea    0x116e8(%ebx),%eax
   310a5:	6a 00                	push   $0x0
   310a7:	52                   	push   %edx
   310a8:	6a 08                	push   $0x8
   310aa:	50                   	push   %eax
   310ab:	e8 b5 fd ff ff       	call   30e65 <set_trap>
   310b0:	83 c4 10             	add    $0x10,%esp
   310b3:	c7 c0 9c 00 03 00    	mov    $0x3009c,%eax
   310b9:	89 c2                	mov    %eax,%edx
   310bb:	8d 83 f0 16 01 00    	lea    0x116f0(%ebx),%eax
   310c1:	6a 00                	push   $0x0
   310c3:	52                   	push   %edx
   310c4:	6a 08                	push   $0x8
   310c6:	50                   	push   %eax
   310c7:	e8 99 fd ff ff       	call   30e65 <set_trap>
   310cc:	83 c4 10             	add    $0x10,%esp
   310cf:	c7 c0 a0 00 03 00    	mov    $0x300a0,%eax
   310d5:	89 c2                	mov    %eax,%edx
   310d7:	8d 83 80 1a 01 00    	lea    0x11a80(%ebx),%eax
   310dd:	6a 03                	push   $0x3
   310df:	52                   	push   %edx
   310e0:	6a 08                	push   $0x8
   310e2:	50                   	push   %eax
   310e3:	e8 7d fd ff ff       	call   30e65 <set_trap>
   310e8:	83 c4 10             	add    $0x10,%esp
   310eb:	c7 c0 a9 00 03 00    	mov    $0x300a9,%eax
   310f1:	89 c2                	mov    %eax,%edx
   310f3:	8d 83 80 17 01 00    	lea    0x11780(%ebx),%eax
   310f9:	6a 00                	push   $0x0
   310fb:	52                   	push   %edx
   310fc:	6a 08                	push   $0x8
   310fe:	50                   	push   %eax
   310ff:	e8 e5 fc ff ff       	call   30de9 <set_intr>
   31104:	83 c4 10             	add    $0x10,%esp
   31107:	c7 c0 b2 00 03 00    	mov    $0x300b2,%eax
   3110d:	89 c2                	mov    %eax,%edx
   3110f:	8d 83 88 17 01 00    	lea    0x11788(%ebx),%eax
   31115:	6a 00                	push   $0x0
   31117:	52                   	push   %edx
   31118:	6a 08                	push   $0x8
   3111a:	50                   	push   %eax
   3111b:	e8 c9 fc ff ff       	call   30de9 <set_intr>
   31120:	83 c4 10             	add    $0x10,%esp
   31123:	c7 c0 bb 00 03 00    	mov    $0x300bb,%eax
   31129:	89 c2                	mov    %eax,%edx
   3112b:	8d 83 90 17 01 00    	lea    0x11790(%ebx),%eax
   31131:	6a 00                	push   $0x0
   31133:	52                   	push   %edx
   31134:	6a 08                	push   $0x8
   31136:	50                   	push   %eax
   31137:	e8 ad fc ff ff       	call   30de9 <set_intr>
   3113c:	83 c4 10             	add    $0x10,%esp
   3113f:	c7 c0 c4 00 03 00    	mov    $0x300c4,%eax
   31145:	89 c2                	mov    %eax,%edx
   31147:	8d 83 f0 17 01 00    	lea    0x117f0(%ebx),%eax
   3114d:	6a 00                	push   $0x0
   3114f:	52                   	push   %edx
   31150:	6a 08                	push   $0x8
   31152:	50                   	push   %eax
   31153:	e8 91 fc ff ff       	call   30de9 <set_intr>
   31158:	83 c4 10             	add    $0x10,%esp
   3115b:	68 00 08 00 00       	push   $0x800
   31160:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
   31166:	50                   	push   %eax
   31167:	e8 31 fc ff ff       	call   30d9d <write_idtr>
   3116c:	83 c4 08             	add    $0x8,%esp
   3116f:	e8 64 fc ff ff       	call   30dd8 <sti>
   31174:	90                   	nop
   31175:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31178:	c9                   	leave  
   31179:	c3                   	ret    

0003117a <fs_open>:
   3117a:	55                   	push   %ebp
   3117b:	89 e5                	mov    %esp,%ebp
   3117d:	53                   	push   %ebx
   3117e:	83 ec 04             	sub    $0x4,%esp
   31181:	e8 be ef ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31186:	05 7a be 00 00       	add    $0xbe7a,%eax
   3118b:	8d 90 e0 c5 ff ff    	lea    -0x3a20(%eax),%edx
   31191:	52                   	push   %edx
   31192:	6a 28                	push   $0x28
   31194:	8d 90 17 c4 ff ff    	lea    -0x3be9(%eax),%edx
   3119a:	52                   	push   %edx
   3119b:	8d 90 24 c4 ff ff    	lea    -0x3bdc(%eax),%edx
   311a1:	52                   	push   %edx
   311a2:	89 c3                	mov    %eax,%ebx
   311a4:	e8 8d f8 ff ff       	call   30a36 <printk>
   311a9:	83 c4 10             	add    $0x10,%esp
   311ac:	b8 01 00 00 00       	mov    $0x1,%eax
   311b1:	82                   	nemu_trap 
   311b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   311b7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   311ba:	c9                   	leave  
   311bb:	c3                   	ret    

000311bc <fs_read>:
   311bc:	55                   	push   %ebp
   311bd:	89 e5                	mov    %esp,%ebp
   311bf:	53                   	push   %ebx
   311c0:	83 ec 04             	sub    $0x4,%esp
   311c3:	e8 80 ef ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   311c8:	81 c3 38 be 00 00    	add    $0xbe38,%ebx
   311ce:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   311d2:	7f 2f                	jg     31203 <fs_read+0x47>
   311d4:	83 ec 0c             	sub    $0xc,%esp
   311d7:	8d 83 7a c4 ff ff    	lea    -0x3b86(%ebx),%eax
   311dd:	50                   	push   %eax
   311de:	8d 83 e8 c5 ff ff    	lea    -0x3a18(%ebx),%eax
   311e4:	50                   	push   %eax
   311e5:	6a 2e                	push   $0x2e
   311e7:	8d 83 17 c4 ff ff    	lea    -0x3be9(%ebx),%eax
   311ed:	50                   	push   %eax
   311ee:	8d 83 84 c4 ff ff    	lea    -0x3b7c(%ebx),%eax
   311f4:	50                   	push   %eax
   311f5:	e8 3c f8 ff ff       	call   30a36 <printk>
   311fa:	83 c4 20             	add    $0x20,%esp
   311fd:	b8 01 00 00 00       	mov    $0x1,%eax
   31202:	82                   	nemu_trap 
   31203:	8d 83 e8 c5 ff ff    	lea    -0x3a18(%ebx),%eax
   31209:	50                   	push   %eax
   3120a:	6a 2f                	push   $0x2f
   3120c:	8d 83 17 c4 ff ff    	lea    -0x3be9(%ebx),%eax
   31212:	50                   	push   %eax
   31213:	8d 83 d0 c4 ff ff    	lea    -0x3b30(%ebx),%eax
   31219:	50                   	push   %eax
   3121a:	e8 17 f8 ff ff       	call   30a36 <printk>
   3121f:	83 c4 10             	add    $0x10,%esp
   31222:	b8 01 00 00 00       	mov    $0x1,%eax
   31227:	82                   	nemu_trap 
   31228:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   3122d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31230:	c9                   	leave  
   31231:	c3                   	ret    

00031232 <fs_write>:
   31232:	55                   	push   %ebp
   31233:	89 e5                	mov    %esp,%ebp
   31235:	53                   	push   %ebx
   31236:	83 ec 04             	sub    $0x4,%esp
   31239:	e8 06 ef ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   3123e:	05 c2 bd 00 00       	add    $0xbdc2,%eax
   31243:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   31247:	7e 31                	jle    3127a <fs_write+0x48>
   31249:	83 ec 0c             	sub    $0xc,%esp
   3124c:	8d 90 26 c5 ff ff    	lea    -0x3ada(%eax),%edx
   31252:	52                   	push   %edx
   31253:	8d 90 f0 c5 ff ff    	lea    -0x3a10(%eax),%edx
   31259:	52                   	push   %edx
   3125a:	6a 35                	push   $0x35
   3125c:	8d 90 17 c4 ff ff    	lea    -0x3be9(%eax),%edx
   31262:	52                   	push   %edx
   31263:	8d 90 84 c4 ff ff    	lea    -0x3b7c(%eax),%edx
   31269:	52                   	push   %edx
   3126a:	89 c3                	mov    %eax,%ebx
   3126c:	e8 c5 f7 ff ff       	call   30a36 <printk>
   31271:	83 c4 20             	add    $0x20,%esp
   31274:	b8 01 00 00 00       	mov    $0x1,%eax
   31279:	82                   	nemu_trap 
   3127a:	b8 04 00 00 00       	mov    $0x4,%eax
   3127f:	8b 5d 08             	mov    0x8(%ebp),%ebx
   31282:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   31285:	8b 55 10             	mov    0x10(%ebp),%edx
   31288:	82                   	nemu_trap 
   31289:	89 45 10             	mov    %eax,0x10(%ebp)
   3128c:	8b 45 10             	mov    0x10(%ebp),%eax
   3128f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31292:	c9                   	leave  
   31293:	c3                   	ret    

00031294 <fs_lseek>:
   31294:	55                   	push   %ebp
   31295:	89 e5                	mov    %esp,%ebp
   31297:	53                   	push   %ebx
   31298:	83 ec 04             	sub    $0x4,%esp
   3129b:	e8 a4 ee ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   312a0:	05 60 bd 00 00       	add    $0xbd60,%eax
   312a5:	8d 90 fc c5 ff ff    	lea    -0x3a04(%eax),%edx
   312ab:	52                   	push   %edx
   312ac:	6a 48                	push   $0x48
   312ae:	8d 90 17 c4 ff ff    	lea    -0x3be9(%eax),%edx
   312b4:	52                   	push   %edx
   312b5:	8d 90 30 c5 ff ff    	lea    -0x3ad0(%eax),%edx
   312bb:	52                   	push   %edx
   312bc:	89 c3                	mov    %eax,%ebx
   312be:	e8 73 f7 ff ff       	call   30a36 <printk>
   312c3:	83 c4 10             	add    $0x10,%esp
   312c6:	b8 01 00 00 00       	mov    $0x1,%eax
   312cb:	82                   	nemu_trap 
   312cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   312d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   312d4:	c9                   	leave  
   312d5:	c3                   	ret    

000312d6 <fs_close>:
   312d6:	55                   	push   %ebp
   312d7:	89 e5                	mov    %esp,%ebp
   312d9:	53                   	push   %ebx
   312da:	83 ec 04             	sub    $0x4,%esp
   312dd:	e8 62 ee ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   312e2:	05 1e bd 00 00       	add    $0xbd1e,%eax
   312e7:	8d 90 08 c6 ff ff    	lea    -0x39f8(%eax),%edx
   312ed:	52                   	push   %edx
   312ee:	6a 4e                	push   $0x4e
   312f0:	8d 90 17 c4 ff ff    	lea    -0x3be9(%eax),%edx
   312f6:	52                   	push   %edx
   312f7:	8d 90 88 c5 ff ff    	lea    -0x3a78(%eax),%edx
   312fd:	52                   	push   %edx
   312fe:	89 c3                	mov    %eax,%ebx
   31300:	e8 31 f7 ff ff       	call   30a36 <printk>
   31305:	83 c4 10             	add    $0x10,%esp
   31308:	b8 01 00 00 00       	mov    $0x1,%eax
   3130d:	82                   	nemu_trap 
   3130e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   31313:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31316:	c9                   	leave  
   31317:	c3                   	ret    

00031318 <sti>:
   31318:	55                   	push   %ebp
   31319:	89 e5                	mov    %esp,%ebp
   3131b:	e8 24 ee ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31320:	05 e0 bc 00 00       	add    $0xbce0,%eax
   31325:	fb                   	sti    
   31326:	90                   	nop
   31327:	5d                   	pop    %ebp
   31328:	c3                   	ret    

00031329 <cli>:
   31329:	55                   	push   %ebp
   3132a:	89 e5                	mov    %esp,%ebp
   3132c:	e8 13 ee ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31331:	05 cf bc 00 00       	add    $0xbccf,%eax
   31336:	fa                   	cli    
   31337:	90                   	nop
   31338:	5d                   	pop    %ebp
   31339:	c3                   	ret    

0003133a <sys_brk>:
   3133a:	55                   	push   %ebp
   3133b:	89 e5                	mov    %esp,%ebp
   3133d:	e8 02 ee ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31342:	05 be bc 00 00       	add    $0xbcbe,%eax
   31347:	8b 45 08             	mov    0x8(%ebp),%eax
   3134a:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
   31351:	90                   	nop
   31352:	5d                   	pop    %ebp
   31353:	c3                   	ret    

00031354 <sys_open>:
   31354:	55                   	push   %ebp
   31355:	89 e5                	mov    %esp,%ebp
   31357:	53                   	push   %ebx
   31358:	83 ec 04             	sub    $0x4,%esp
   3135b:	e8 e4 ed ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31360:	05 a0 bc 00 00       	add    $0xbca0,%eax
   31365:	8b 55 08             	mov    0x8(%ebp),%edx
   31368:	8b 52 18             	mov    0x18(%edx),%edx
   3136b:	89 d1                	mov    %edx,%ecx
   3136d:	8b 55 08             	mov    0x8(%ebp),%edx
   31370:	8b 52 10             	mov    0x10(%edx),%edx
   31373:	83 ec 08             	sub    $0x8,%esp
   31376:	51                   	push   %ecx
   31377:	52                   	push   %edx
   31378:	89 c3                	mov    %eax,%ebx
   3137a:	e8 fb fd ff ff       	call   3117a <fs_open>
   3137f:	83 c4 10             	add    $0x10,%esp
   31382:	89 c2                	mov    %eax,%edx
   31384:	8b 45 08             	mov    0x8(%ebp),%eax
   31387:	89 50 1c             	mov    %edx,0x1c(%eax)
   3138a:	90                   	nop
   3138b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3138e:	c9                   	leave  
   3138f:	c3                   	ret    

00031390 <sys_read>:
   31390:	55                   	push   %ebp
   31391:	89 e5                	mov    %esp,%ebp
   31393:	53                   	push   %ebx
   31394:	83 ec 04             	sub    $0x4,%esp
   31397:	e8 a8 ed ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   3139c:	05 64 bc 00 00       	add    $0xbc64,%eax
   313a1:	8b 55 08             	mov    0x8(%ebp),%edx
   313a4:	8b 52 14             	mov    0x14(%edx),%edx
   313a7:	8b 4d 08             	mov    0x8(%ebp),%ecx
   313aa:	8b 49 18             	mov    0x18(%ecx),%ecx
   313ad:	89 cb                	mov    %ecx,%ebx
   313af:	8b 4d 08             	mov    0x8(%ebp),%ecx
   313b2:	8b 49 10             	mov    0x10(%ecx),%ecx
   313b5:	83 ec 04             	sub    $0x4,%esp
   313b8:	52                   	push   %edx
   313b9:	53                   	push   %ebx
   313ba:	51                   	push   %ecx
   313bb:	89 c3                	mov    %eax,%ebx
   313bd:	e8 fa fd ff ff       	call   311bc <fs_read>
   313c2:	83 c4 10             	add    $0x10,%esp
   313c5:	89 c2                	mov    %eax,%edx
   313c7:	8b 45 08             	mov    0x8(%ebp),%eax
   313ca:	89 50 1c             	mov    %edx,0x1c(%eax)
   313cd:	90                   	nop
   313ce:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   313d1:	c9                   	leave  
   313d2:	c3                   	ret    

000313d3 <sys_write>:
   313d3:	55                   	push   %ebp
   313d4:	89 e5                	mov    %esp,%ebp
   313d6:	53                   	push   %ebx
   313d7:	83 ec 04             	sub    $0x4,%esp
   313da:	e8 65 ed ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   313df:	05 21 bc 00 00       	add    $0xbc21,%eax
   313e4:	8b 55 08             	mov    0x8(%ebp),%edx
   313e7:	8b 52 14             	mov    0x14(%edx),%edx
   313ea:	8b 4d 08             	mov    0x8(%ebp),%ecx
   313ed:	8b 49 18             	mov    0x18(%ecx),%ecx
   313f0:	89 cb                	mov    %ecx,%ebx
   313f2:	8b 4d 08             	mov    0x8(%ebp),%ecx
   313f5:	8b 49 10             	mov    0x10(%ecx),%ecx
   313f8:	83 ec 04             	sub    $0x4,%esp
   313fb:	52                   	push   %edx
   313fc:	53                   	push   %ebx
   313fd:	51                   	push   %ecx
   313fe:	89 c3                	mov    %eax,%ebx
   31400:	e8 2d fe ff ff       	call   31232 <fs_write>
   31405:	83 c4 10             	add    $0x10,%esp
   31408:	89 c2                	mov    %eax,%edx
   3140a:	8b 45 08             	mov    0x8(%ebp),%eax
   3140d:	89 50 1c             	mov    %edx,0x1c(%eax)
   31410:	90                   	nop
   31411:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31414:	c9                   	leave  
   31415:	c3                   	ret    

00031416 <sys_lseek>:
   31416:	55                   	push   %ebp
   31417:	89 e5                	mov    %esp,%ebp
   31419:	53                   	push   %ebx
   3141a:	83 ec 04             	sub    $0x4,%esp
   3141d:	e8 22 ed ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31422:	05 de bb 00 00       	add    $0xbbde,%eax
   31427:	8b 55 08             	mov    0x8(%ebp),%edx
   3142a:	8b 52 14             	mov    0x14(%edx),%edx
   3142d:	89 d3                	mov    %edx,%ebx
   3142f:	8b 55 08             	mov    0x8(%ebp),%edx
   31432:	8b 52 18             	mov    0x18(%edx),%edx
   31435:	89 d1                	mov    %edx,%ecx
   31437:	8b 55 08             	mov    0x8(%ebp),%edx
   3143a:	8b 52 10             	mov    0x10(%edx),%edx
   3143d:	83 ec 04             	sub    $0x4,%esp
   31440:	53                   	push   %ebx
   31441:	51                   	push   %ecx
   31442:	52                   	push   %edx
   31443:	89 c3                	mov    %eax,%ebx
   31445:	e8 4a fe ff ff       	call   31294 <fs_lseek>
   3144a:	83 c4 10             	add    $0x10,%esp
   3144d:	89 c2                	mov    %eax,%edx
   3144f:	8b 45 08             	mov    0x8(%ebp),%eax
   31452:	89 50 1c             	mov    %edx,0x1c(%eax)
   31455:	90                   	nop
   31456:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31459:	c9                   	leave  
   3145a:	c3                   	ret    

0003145b <sys_close>:
   3145b:	55                   	push   %ebp
   3145c:	89 e5                	mov    %esp,%ebp
   3145e:	53                   	push   %ebx
   3145f:	83 ec 04             	sub    $0x4,%esp
   31462:	e8 dd ec ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31467:	05 99 bb 00 00       	add    $0xbb99,%eax
   3146c:	8b 55 08             	mov    0x8(%ebp),%edx
   3146f:	8b 52 10             	mov    0x10(%edx),%edx
   31472:	83 ec 0c             	sub    $0xc,%esp
   31475:	52                   	push   %edx
   31476:	89 c3                	mov    %eax,%ebx
   31478:	e8 59 fe ff ff       	call   312d6 <fs_close>
   3147d:	83 c4 10             	add    $0x10,%esp
   31480:	89 c2                	mov    %eax,%edx
   31482:	8b 45 08             	mov    0x8(%ebp),%eax
   31485:	89 50 1c             	mov    %edx,0x1c(%eax)
   31488:	90                   	nop
   31489:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3148c:	c9                   	leave  
   3148d:	c3                   	ret    

0003148e <do_syscall>:
   3148e:	55                   	push   %ebp
   3148f:	89 e5                	mov    %esp,%ebp
   31491:	53                   	push   %ebx
   31492:	83 ec 04             	sub    $0x4,%esp
   31495:	e8 ae ec ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   3149a:	81 c3 66 bb 00 00    	add    $0xbb66,%ebx
   314a0:	8b 45 08             	mov    0x8(%ebp),%eax
   314a3:	8b 40 1c             	mov    0x1c(%eax),%eax
   314a6:	83 f8 2d             	cmp    $0x2d,%eax
   314a9:	0f 87 98 00 00 00    	ja     31547 <.L10>
   314af:	c1 e0 02             	shl    $0x2,%eax
   314b2:	8b 84 18 84 c6 ff ff 	mov    -0x397c(%eax,%ebx,1),%eax
   314b9:	01 d8                	add    %ebx,%eax
   314bb:	ff e0                	jmp    *%eax

000314bd <.L18>:
   314bd:	e8 67 fe ff ff       	call   31329 <cli>
   314c2:	8b 45 08             	mov    0x8(%ebp),%eax
   314c5:	8b 40 18             	mov    0x18(%eax),%eax
   314c8:	89 c2                	mov    %eax,%edx
   314ca:	8b 45 08             	mov    0x8(%ebp),%eax
   314cd:	8b 40 10             	mov    0x10(%eax),%eax
   314d0:	83 ec 08             	sub    $0x8,%esp
   314d3:	52                   	push   %edx
   314d4:	50                   	push   %eax
   314d5:	e8 b0 f5 ff ff       	call   30a8a <add_irq_handle>
   314da:	83 c4 10             	add    $0x10,%esp
   314dd:	e8 36 fe ff ff       	call   31318 <sti>
   314e2:	e9 8f 00 00 00       	jmp    31576 <.L10+0x2f>

000314e7 <.L11>:
   314e7:	83 ec 0c             	sub    $0xc,%esp
   314ea:	ff 75 08             	pushl  0x8(%ebp)
   314ed:	e8 48 fe ff ff       	call   3133a <sys_brk>
   314f2:	83 c4 10             	add    $0x10,%esp
   314f5:	eb 7f                	jmp    31576 <.L10+0x2f>

000314f7 <.L15>:
   314f7:	83 ec 0c             	sub    $0xc,%esp
   314fa:	ff 75 08             	pushl  0x8(%ebp)
   314fd:	e8 52 fe ff ff       	call   31354 <sys_open>
   31502:	83 c4 10             	add    $0x10,%esp
   31505:	eb 6f                	jmp    31576 <.L10+0x2f>

00031507 <.L17>:
   31507:	83 ec 0c             	sub    $0xc,%esp
   3150a:	ff 75 08             	pushl  0x8(%ebp)
   3150d:	e8 7e fe ff ff       	call   31390 <sys_read>
   31512:	83 c4 10             	add    $0x10,%esp
   31515:	eb 5f                	jmp    31576 <.L10+0x2f>

00031517 <.L16>:
   31517:	83 ec 0c             	sub    $0xc,%esp
   3151a:	ff 75 08             	pushl  0x8(%ebp)
   3151d:	e8 b1 fe ff ff       	call   313d3 <sys_write>
   31522:	83 c4 10             	add    $0x10,%esp
   31525:	eb 4f                	jmp    31576 <.L10+0x2f>

00031527 <.L13>:
   31527:	83 ec 0c             	sub    $0xc,%esp
   3152a:	ff 75 08             	pushl  0x8(%ebp)
   3152d:	e8 e4 fe ff ff       	call   31416 <sys_lseek>
   31532:	83 c4 10             	add    $0x10,%esp
   31535:	eb 3f                	jmp    31576 <.L10+0x2f>

00031537 <.L14>:
   31537:	83 ec 0c             	sub    $0xc,%esp
   3153a:	ff 75 08             	pushl  0x8(%ebp)
   3153d:	e8 19 ff ff ff       	call   3145b <sys_close>
   31542:	83 c4 10             	add    $0x10,%esp
   31545:	eb 2f                	jmp    31576 <.L10+0x2f>

00031547 <.L10>:
   31547:	8b 45 08             	mov    0x8(%ebp),%eax
   3154a:	8b 40 1c             	mov    0x1c(%eax),%eax
   3154d:	83 ec 0c             	sub    $0xc,%esp
   31550:	50                   	push   %eax
   31551:	8d 83 3c c7 ff ff    	lea    -0x38c4(%ebx),%eax
   31557:	50                   	push   %eax
   31558:	6a 4a                	push   $0x4a
   3155a:	8d 83 14 c6 ff ff    	lea    -0x39ec(%ebx),%eax
   31560:	50                   	push   %eax
   31561:	8d 83 30 c6 ff ff    	lea    -0x39d0(%ebx),%eax
   31567:	50                   	push   %eax
   31568:	e8 c9 f4 ff ff       	call   30a36 <printk>
   3156d:	83 c4 20             	add    $0x20,%esp
   31570:	b8 01 00 00 00       	mov    $0x1,%eax
   31575:	82                   	nemu_trap 
   31576:	90                   	nop
   31577:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3157a:	c9                   	leave  
   3157b:	c3                   	ret    

0003157c <get_updir>:
   3157c:	55                   	push   %ebp
   3157d:	89 e5                	mov    %esp,%ebp
   3157f:	e8 c0 eb ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31584:	05 7c ba 00 00       	add    $0xba7c,%eax
   31589:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   3158f:	5d                   	pop    %ebp
   31590:	c3                   	ret    

00031591 <get_ucr3>:
   31591:	55                   	push   %ebp
   31592:	89 e5                	mov    %esp,%ebp
   31594:	e8 ab eb ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31599:	05 67 ba 00 00       	add    $0xba67,%eax
   3159e:	c7 c0 00 20 07 00    	mov    $0x72000,%eax
   315a4:	8b 00                	mov    (%eax),%eax
   315a6:	5d                   	pop    %ebp
   315a7:	c3                   	ret    

000315a8 <mm_brk>:
   315a8:	55                   	push   %ebp
   315a9:	89 e5                	mov    %esp,%ebp
   315ab:	53                   	push   %ebx
   315ac:	83 ec 04             	sub    $0x4,%esp
   315af:	e8 94 eb ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   315b4:	81 c3 4c ba 00 00    	add    $0xba4c,%ebx
   315ba:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
   315c0:	39 45 08             	cmp    %eax,0x8(%ebp)
   315c3:	76 22                	jbe    315e7 <mm_brk+0x3f>
   315c5:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
   315cb:	8b 55 08             	mov    0x8(%ebp),%edx
   315ce:	29 c2                	sub    %eax,%edx
   315d0:	89 d0                	mov    %edx,%eax
   315d2:	89 c2                	mov    %eax,%edx
   315d4:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
   315da:	83 ec 08             	sub    $0x8,%esp
   315dd:	52                   	push   %edx
   315de:	50                   	push   %eax
   315df:	e8 8c 04 00 00       	call   31a70 <mm_malloc>
   315e4:	83 c4 10             	add    $0x10,%esp
   315e7:	8b 45 08             	mov    0x8(%ebp),%eax
   315ea:	89 83 88 1e 01 00    	mov    %eax,0x11e88(%ebx)
   315f0:	90                   	nop
   315f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   315f4:	c9                   	leave  
   315f5:	c3                   	ret    

000315f6 <init_mm>:
   315f6:	55                   	push   %ebp
   315f7:	89 e5                	mov    %esp,%ebp
   315f9:	53                   	push   %ebx
   315fa:	83 ec 14             	sub    $0x14,%esp
   315fd:	e8 46 eb ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   31602:	81 c3 fe b9 00 00    	add    $0xb9fe,%ebx
   31608:	e8 ff 01 00 00       	call   3180c <get_kpdir>
   3160d:	89 45 f4             	mov    %eax,-0xc(%ebp)
   31610:	83 ec 04             	sub    $0x4,%esp
   31613:	68 00 10 00 00       	push   $0x1000
   31618:	6a 00                	push   $0x0
   3161a:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   31620:	50                   	push   %eax
   31621:	e8 26 07 00 00       	call   31d4c <memset>
   31626:	83 c4 10             	add    $0x10,%esp
   31629:	83 ec 04             	sub    $0x4,%esp
   3162c:	68 80 00 00 00       	push   $0x80
   31631:	ff 75 f4             	pushl  -0xc(%ebp)
   31634:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   3163a:	50                   	push   %eax
   3163b:	e8 c4 06 00 00       	call   31d04 <memcpy>
   31640:	83 c4 10             	add    $0x10,%esp
   31643:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   31649:	25 00 fc ff ff       	and    $0xfffffc00,%eax
   3164e:	89 c2                	mov    %eax,%edx
   31650:	c7 c0 00 20 07 00    	mov    $0x72000,%eax
   31656:	89 10                	mov    %edx,(%eax)
   31658:	90                   	nop
   31659:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3165c:	c9                   	leave  
   3165d:	c3                   	ret    

0003165e <create_video_mapping>:
   3165e:	55                   	push   %ebp
   3165f:	89 e5                	mov    %esp,%ebp
   31661:	53                   	push   %ebx
   31662:	83 ec 04             	sub    $0x4,%esp
   31665:	e8 da ea ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   3166a:	05 96 b9 00 00       	add    $0xb996,%eax
   3166f:	8d 90 00 c8 ff ff    	lea    -0x3800(%eax),%edx
   31675:	52                   	push   %edx
   31676:	6a 14                	push   $0x14
   31678:	8d 90 48 c7 ff ff    	lea    -0x38b8(%eax),%edx
   3167e:	52                   	push   %edx
   3167f:	8d 90 5c c7 ff ff    	lea    -0x38a4(%eax),%edx
   31685:	52                   	push   %edx
   31686:	89 c3                	mov    %eax,%ebx
   31688:	e8 a9 f3 ff ff       	call   30a36 <printk>
   3168d:	83 c4 10             	add    $0x10,%esp
   31690:	b8 01 00 00 00       	mov    $0x1,%eax
   31695:	82                   	nemu_trap 
   31696:	90                   	nop
   31697:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3169a:	c9                   	leave  
   3169b:	c3                   	ret    

0003169c <video_mapping_write_test>:
   3169c:	55                   	push   %ebp
   3169d:	89 e5                	mov    %esp,%ebp
   3169f:	83 ec 10             	sub    $0x10,%esp
   316a2:	e8 9d ea ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   316a7:	05 59 b9 00 00       	add    $0xb959,%eax
   316ac:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
   316b3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   316ba:	eb 17                	jmp    316d3 <video_mapping_write_test+0x37>
   316bc:	8b 45 fc             	mov    -0x4(%ebp),%eax
   316bf:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   316c6:	8b 45 f8             	mov    -0x8(%ebp),%eax
   316c9:	01 c2                	add    %eax,%edx
   316cb:	8b 45 fc             	mov    -0x4(%ebp),%eax
   316ce:	89 02                	mov    %eax,(%edx)
   316d0:	ff 45 fc             	incl   -0x4(%ebp)
   316d3:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
   316da:	7e e0                	jle    316bc <video_mapping_write_test+0x20>
   316dc:	90                   	nop
   316dd:	c9                   	leave  
   316de:	c3                   	ret    

000316df <video_mapping_read_test>:
   316df:	55                   	push   %ebp
   316e0:	89 e5                	mov    %esp,%ebp
   316e2:	53                   	push   %ebx
   316e3:	83 ec 14             	sub    $0x14,%esp
   316e6:	e8 5d ea ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   316eb:	81 c3 15 b9 00 00    	add    $0xb915,%ebx
   316f1:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
   316f8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   316ff:	eb 4a                	jmp    3174b <video_mapping_read_test+0x6c>
   31701:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31704:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   3170b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3170e:	01 d0                	add    %edx,%eax
   31710:	8b 10                	mov    (%eax),%edx
   31712:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31715:	39 c2                	cmp    %eax,%edx
   31717:	74 2f                	je     31748 <video_mapping_read_test+0x69>
   31719:	83 ec 0c             	sub    $0xc,%esp
   3171c:	8d 83 a5 c7 ff ff    	lea    -0x385b(%ebx),%eax
   31722:	50                   	push   %eax
   31723:	8d 83 18 c8 ff ff    	lea    -0x37e8(%ebx),%eax
   31729:	50                   	push   %eax
   3172a:	6a 27                	push   $0x27
   3172c:	8d 83 48 c7 ff ff    	lea    -0x38b8(%ebx),%eax
   31732:	50                   	push   %eax
   31733:	8d 83 b4 c7 ff ff    	lea    -0x384c(%ebx),%eax
   31739:	50                   	push   %eax
   3173a:	e8 f7 f2 ff ff       	call   30a36 <printk>
   3173f:	83 c4 20             	add    $0x20,%esp
   31742:	b8 01 00 00 00       	mov    $0x1,%eax
   31747:	82                   	nemu_trap 
   31748:	ff 45 f4             	incl   -0xc(%ebp)
   3174b:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
   31752:	7e ad                	jle    31701 <video_mapping_read_test+0x22>
   31754:	90                   	nop
   31755:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31758:	c9                   	leave  
   31759:	c3                   	ret    

0003175a <video_mapping_clear>:
   3175a:	55                   	push   %ebp
   3175b:	89 e5                	mov    %esp,%ebp
   3175d:	53                   	push   %ebx
   3175e:	83 ec 04             	sub    $0x4,%esp
   31761:	e8 de e9 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31766:	05 9a b8 00 00       	add    $0xb89a,%eax
   3176b:	83 ec 04             	sub    $0x4,%esp
   3176e:	68 00 fa 00 00       	push   $0xfa00
   31773:	6a 00                	push   $0x0
   31775:	68 00 00 0a 00       	push   $0xa0000
   3177a:	89 c3                	mov    %eax,%ebx
   3177c:	e8 cb 05 00 00       	call   31d4c <memset>
   31781:	83 c4 10             	add    $0x10,%esp
   31784:	90                   	nop
   31785:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31788:	c9                   	leave  
   31789:	c3                   	ret    

0003178a <read_cr0>:
   3178a:	55                   	push   %ebp
   3178b:	89 e5                	mov    %esp,%ebp
   3178d:	83 ec 10             	sub    $0x10,%esp
   31790:	e8 af e9 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31795:	05 6b b8 00 00       	add    $0xb86b,%eax
   3179a:	0f 20 c0             	mov    %cr0,%eax
   3179d:	89 45 fc             	mov    %eax,-0x4(%ebp)
   317a0:	8b 45 fc             	mov    -0x4(%ebp),%eax
   317a3:	c9                   	leave  
   317a4:	c3                   	ret    

000317a5 <write_cr0>:
   317a5:	55                   	push   %ebp
   317a6:	89 e5                	mov    %esp,%ebp
   317a8:	e8 97 e9 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   317ad:	05 53 b8 00 00       	add    $0xb853,%eax
   317b2:	8b 45 08             	mov    0x8(%ebp),%eax
   317b5:	0f 22 c0             	mov    %eax,%cr0
   317b8:	90                   	nop
   317b9:	5d                   	pop    %ebp
   317ba:	c3                   	ret    

000317bb <write_cr3>:
   317bb:	55                   	push   %ebp
   317bc:	89 e5                	mov    %esp,%ebp
   317be:	e8 81 e9 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   317c3:	05 3d b8 00 00       	add    $0xb83d,%eax
   317c8:	8b 45 08             	mov    0x8(%ebp),%eax
   317cb:	0f 22 d8             	mov    %eax,%cr3
   317ce:	90                   	nop
   317cf:	5d                   	pop    %ebp
   317d0:	c3                   	ret    

000317d1 <write_gdtr>:
   317d1:	55                   	push   %ebp
   317d2:	89 e5                	mov    %esp,%ebp
   317d4:	e8 6b e9 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   317d9:	05 27 b8 00 00       	add    $0xb827,%eax
   317de:	8b 55 0c             	mov    0xc(%ebp),%edx
   317e1:	4a                   	dec    %edx
   317e2:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
   317e9:	8b 55 08             	mov    0x8(%ebp),%edx
   317ec:	66 89 90 8e 1e 01 00 	mov    %dx,0x11e8e(%eax)
   317f3:	8b 55 08             	mov    0x8(%ebp),%edx
   317f6:	c1 ea 10             	shr    $0x10,%edx
   317f9:	66 89 90 90 1e 01 00 	mov    %dx,0x11e90(%eax)
   31800:	8d 80 8c 1e 01 00    	lea    0x11e8c(%eax),%eax
   31806:	0f 01 10             	lgdtl  (%eax)
   31809:	90                   	nop
   3180a:	5d                   	pop    %ebp
   3180b:	c3                   	ret    

0003180c <get_kpdir>:
   3180c:	55                   	push   %ebp
   3180d:	89 e5                	mov    %esp,%ebp
   3180f:	e8 30 e9 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   31814:	05 ec b7 00 00       	add    $0xb7ec,%eax
   31819:	c7 c0 00 40 07 00    	mov    $0x74000,%eax
   3181f:	5d                   	pop    %ebp
   31820:	c3                   	ret    

00031821 <init_page>:
   31821:	55                   	push   %ebp
   31822:	89 e5                	mov    %esp,%ebp
   31824:	53                   	push   %ebx
   31825:	83 ec 24             	sub    $0x24,%esp
   31828:	e8 17 e9 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   3182d:	05 d3 b7 00 00       	add    $0xb7d3,%eax
   31832:	c7 c2 00 40 07 00    	mov    $0x74000,%edx
   31838:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   3183b:	c7 c2 00 50 07 00    	mov    $0x75000,%edx
   31841:	89 55 f4             	mov    %edx,-0xc(%ebp)
   31844:	83 ec 04             	sub    $0x4,%esp
   31847:	68 00 10 00 00       	push   $0x1000
   3184c:	6a 00                	push   $0x0
   3184e:	ff 75 e4             	pushl  -0x1c(%ebp)
   31851:	89 c3                	mov    %eax,%ebx
   31853:	e8 f4 04 00 00       	call   31d4c <memset>
   31858:	83 c4 10             	add    $0x10,%esp
   3185b:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   31862:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   31869:	eb 6b                	jmp    318d6 <init_page+0xb5>
   3186b:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3186e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31873:	89 c2                	mov    %eax,%edx
   31875:	8b 45 f0             	mov    -0x10(%ebp),%eax
   31878:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   3187f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   31882:	01 c8                	add    %ecx,%eax
   31884:	83 ca 07             	or     $0x7,%edx
   31887:	89 10                	mov    %edx,(%eax)
   31889:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3188c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31891:	89 c2                	mov    %eax,%edx
   31893:	8b 45 f0             	mov    -0x10(%ebp),%eax
   31896:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   3189d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   318a0:	01 c8                	add    %ecx,%eax
   318a2:	83 ca 07             	or     $0x7,%edx
   318a5:	89 10                	mov    %edx,(%eax)
   318a7:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
   318ae:	eb 1a                	jmp    318ca <init_page+0xa9>
   318b0:	8b 45 e8             	mov    -0x18(%ebp),%eax
   318b3:	c1 e0 0c             	shl    $0xc,%eax
   318b6:	83 c8 07             	or     $0x7,%eax
   318b9:	89 c2                	mov    %eax,%edx
   318bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
   318be:	89 10                	mov    %edx,(%eax)
   318c0:	ff 45 e8             	incl   -0x18(%ebp)
   318c3:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
   318c7:	ff 45 ec             	incl   -0x14(%ebp)
   318ca:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
   318d1:	76 dd                	jbe    318b0 <init_page+0x8f>
   318d3:	ff 45 f0             	incl   -0x10(%ebp)
   318d6:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
   318da:	76 8f                	jbe    3186b <init_page+0x4a>
   318dc:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
   318e3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   318e6:	c1 e8 0c             	shr    $0xc,%eax
   318e9:	25 ff ff 0f 00       	and    $0xfffff,%eax
   318ee:	c1 e0 0c             	shl    $0xc,%eax
   318f1:	89 c2                	mov    %eax,%edx
   318f3:	8b 45 dc             	mov    -0x24(%ebp),%eax
   318f6:	25 ff 0f 00 00       	and    $0xfff,%eax
   318fb:	09 d0                	or     %edx,%eax
   318fd:	89 45 dc             	mov    %eax,-0x24(%ebp)
   31900:	8b 45 dc             	mov    -0x24(%ebp),%eax
   31903:	83 ec 0c             	sub    $0xc,%esp
   31906:	50                   	push   %eax
   31907:	e8 af fe ff ff       	call   317bb <write_cr3>
   3190c:	83 c4 10             	add    $0x10,%esp
   3190f:	e8 76 fe ff ff       	call   3178a <read_cr0>
   31914:	89 45 e0             	mov    %eax,-0x20(%ebp)
   31917:	8a 45 e3             	mov    -0x1d(%ebp),%al
   3191a:	83 c8 80             	or     $0xffffff80,%eax
   3191d:	88 45 e3             	mov    %al,-0x1d(%ebp)
   31920:	8b 45 e0             	mov    -0x20(%ebp),%eax
   31923:	83 ec 0c             	sub    $0xc,%esp
   31926:	50                   	push   %eax
   31927:	e8 79 fe ff ff       	call   317a5 <write_cr0>
   3192c:	83 c4 10             	add    $0x10,%esp
   3192f:	90                   	nop
   31930:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31933:	c9                   	leave  
   31934:	c3                   	ret    

00031935 <set_segment>:
   31935:	55                   	push   %ebp
   31936:	89 e5                	mov    %esp,%ebp
   31938:	e8 07 e8 ff ff       	call   30144 <__x86.get_pc_thunk.ax>
   3193d:	05 c3 b6 00 00       	add    $0xb6c3,%eax
   31942:	8b 45 08             	mov    0x8(%ebp),%eax
   31945:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
   3194a:	8b 45 08             	mov    0x8(%ebp),%eax
   3194d:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
   31953:	8b 45 08             	mov    0x8(%ebp),%eax
   31956:	c6 40 04 00          	movb   $0x0,0x4(%eax)
   3195a:	8b 45 10             	mov    0x10(%ebp),%eax
   3195d:	88 c2                	mov    %al,%dl
   3195f:	83 e2 0f             	and    $0xf,%edx
   31962:	8b 45 08             	mov    0x8(%ebp),%eax
   31965:	88 d1                	mov    %dl,%cl
   31967:	83 e1 0f             	and    $0xf,%ecx
   3196a:	8a 50 05             	mov    0x5(%eax),%dl
   3196d:	83 e2 f0             	and    $0xfffffff0,%edx
   31970:	09 ca                	or     %ecx,%edx
   31972:	88 50 05             	mov    %dl,0x5(%eax)
   31975:	8b 45 08             	mov    0x8(%ebp),%eax
   31978:	8a 50 05             	mov    0x5(%eax),%dl
   3197b:	83 ca 10             	or     $0x10,%edx
   3197e:	88 50 05             	mov    %dl,0x5(%eax)
   31981:	8b 45 0c             	mov    0xc(%ebp),%eax
   31984:	88 c2                	mov    %al,%dl
   31986:	83 e2 03             	and    $0x3,%edx
   31989:	8b 45 08             	mov    0x8(%ebp),%eax
   3198c:	83 e2 03             	and    $0x3,%edx
   3198f:	88 d1                	mov    %dl,%cl
   31991:	c1 e1 05             	shl    $0x5,%ecx
   31994:	8a 50 05             	mov    0x5(%eax),%dl
   31997:	83 e2 9f             	and    $0xffffff9f,%edx
   3199a:	09 ca                	or     %ecx,%edx
   3199c:	88 50 05             	mov    %dl,0x5(%eax)
   3199f:	8b 45 08             	mov    0x8(%ebp),%eax
   319a2:	8a 50 05             	mov    0x5(%eax),%dl
   319a5:	83 ca 80             	or     $0xffffff80,%edx
   319a8:	88 50 05             	mov    %dl,0x5(%eax)
   319ab:	8b 45 08             	mov    0x8(%ebp),%eax
   319ae:	8a 50 06             	mov    0x6(%eax),%dl
   319b1:	83 ca 0f             	or     $0xf,%edx
   319b4:	88 50 06             	mov    %dl,0x6(%eax)
   319b7:	8b 45 08             	mov    0x8(%ebp),%eax
   319ba:	8a 50 06             	mov    0x6(%eax),%dl
   319bd:	83 e2 ef             	and    $0xffffffef,%edx
   319c0:	88 50 06             	mov    %dl,0x6(%eax)
   319c3:	8b 45 08             	mov    0x8(%ebp),%eax
   319c6:	8a 50 06             	mov    0x6(%eax),%dl
   319c9:	83 e2 df             	and    $0xffffffdf,%edx
   319cc:	88 50 06             	mov    %dl,0x6(%eax)
   319cf:	8b 45 08             	mov    0x8(%ebp),%eax
   319d2:	8a 50 06             	mov    0x6(%eax),%dl
   319d5:	83 ca 40             	or     $0x40,%edx
   319d8:	88 50 06             	mov    %dl,0x6(%eax)
   319db:	8b 45 08             	mov    0x8(%ebp),%eax
   319de:	8a 50 06             	mov    0x6(%eax),%dl
   319e1:	83 ca 80             	or     $0xffffff80,%edx
   319e4:	88 50 06             	mov    %dl,0x6(%eax)
   319e7:	8b 45 08             	mov    0x8(%ebp),%eax
   319ea:	c6 40 07 00          	movb   $0x0,0x7(%eax)
   319ee:	90                   	nop
   319ef:	5d                   	pop    %ebp
   319f0:	c3                   	ret    

000319f1 <init_segment>:
   319f1:	55                   	push   %ebp
   319f2:	89 e5                	mov    %esp,%ebp
   319f4:	53                   	push   %ebx
   319f5:	83 ec 04             	sub    $0x4,%esp
   319f8:	e8 4b e7 ff ff       	call   30148 <__x86.get_pc_thunk.bx>
   319fd:	81 c3 03 b6 00 00    	add    $0xb603,%ebx
   31a03:	83 ec 04             	sub    $0x4,%esp
   31a06:	6a 18                	push   $0x18
   31a08:	6a 00                	push   $0x0
   31a0a:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   31a10:	50                   	push   %eax
   31a11:	e8 36 03 00 00       	call   31d4c <memset>
   31a16:	83 c4 10             	add    $0x10,%esp
   31a19:	83 ec 04             	sub    $0x4,%esp
   31a1c:	6a 0a                	push   $0xa
   31a1e:	6a 00                	push   $0x0
   31a20:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   31a26:	8d 40 08             	lea    0x8(%eax),%eax
   31a29:	50                   	push   %eax
   31a2a:	e8 06 ff ff ff       	call   31935 <set_segment>
   31a2f:	83 c4 10             	add    $0x10,%esp
   31a32:	83 ec 04             	sub    $0x4,%esp
   31a35:	6a 02                	push   $0x2
   31a37:	6a 00                	push   $0x0
   31a39:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   31a3f:	8d 40 10             	lea    0x10(%eax),%eax
   31a42:	50                   	push   %eax
   31a43:	e8 ed fe ff ff       	call   31935 <set_segment>
   31a48:	83 c4 10             	add    $0x10,%esp
   31a4b:	83 ec 08             	sub    $0x8,%esp
   31a4e:	6a 18                	push   $0x18
   31a50:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   31a56:	50                   	push   %eax
   31a57:	e8 75 fd ff ff       	call   317d1 <write_gdtr>
   31a5c:	83 c4 10             	add    $0x10,%esp
   31a5f:	90                   	nop
   31a60:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31a63:	c9                   	leave  
   31a64:	c3                   	ret    
   31a65:	66 90                	xchg   %ax,%ax
   31a67:	66 90                	xchg   %ax,%ax
   31a69:	66 90                	xchg   %ax,%ax
   31a6b:	66 90                	xchg   %ax,%ax
   31a6d:	66 90                	xchg   %ax,%ax
   31a6f:	90                   	nop

00031a70 <mm_malloc>:
   31a70:	55                   	push   %ebp
   31a71:	31 c0                	xor    %eax,%eax
   31a73:	89 e5                	mov    %esp,%ebp
   31a75:	57                   	push   %edi
   31a76:	56                   	push   %esi
   31a77:	53                   	push   %ebx
   31a78:	83 ec 3c             	sub    $0x3c,%esp
   31a7b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   31a7e:	85 db                	test   %ebx,%ebx
   31a80:	0f 8e 36 02 00 00    	jle    31cbc <mm_malloc+0x24c>
   31a86:	e8 f1 fa ff ff       	call   3157c <get_updir>
   31a8b:	89 c6                	mov    %eax,%esi
   31a8d:	e8 ff fa ff ff       	call   31591 <get_ucr3>
   31a92:	8b 55 08             	mov    0x8(%ebp),%edx
   31a95:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
   31a99:	89 5d e0             	mov    %ebx,-0x20(%ebp)
   31a9c:	89 45 dc             	mov    %eax,-0x24(%ebp)
   31a9f:	b8 00 10 00 00       	mov    $0x1000,%eax
   31aa4:	29 d0                	sub    %edx,%eax
   31aa6:	89 da                	mov    %ebx,%edx
   31aa8:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
   31aae:	01 d0                	add    %edx,%eax
   31ab0:	85 c0                	test   %eax,%eax
   31ab2:	0f 8e c0 00 00 00    	jle    31b78 <mm_malloc+0x108>
   31ab8:	8b 55 08             	mov    0x8(%ebp),%edx
   31abb:	83 e8 01             	sub    $0x1,%eax
   31abe:	89 f7                	mov    %esi,%edi
   31ac0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31ac5:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
   31acc:	89 d3                	mov    %edx,%ebx
   31ace:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   31ad1:	eb 51                	jmp    31b24 <mm_malloc+0xb4>
   31ad3:	90                   	nop
   31ad4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   31ad8:	8b 31                	mov    (%ecx),%esi
   31ada:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
   31ae0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
   31ae6:	89 d8                	mov    %ebx,%eax
   31ae8:	c1 e8 0a             	shr    $0xa,%eax
   31aeb:	25 fc 0f 00 00       	and    $0xffc,%eax
   31af0:	01 c6                	add    %eax,%esi
   31af2:	f6 06 01             	testb  $0x1,(%esi)
   31af5:	75 22                	jne    31b19 <mm_malloc+0xa9>
   31af7:	a1 20 d0 03 00       	mov    0x3d020,%eax
   31afc:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
   31b01:	0f 8f c1 01 00 00    	jg     31cc8 <mm_malloc+0x258>
   31b07:	89 c1                	mov    %eax,%ecx
   31b09:	83 c0 01             	add    $0x1,%eax
   31b0c:	c1 e1 0c             	shl    $0xc,%ecx
   31b0f:	83 c9 07             	or     $0x7,%ecx
   31b12:	89 0e                	mov    %ecx,(%esi)
   31b14:	a3 20 d0 03 00       	mov    %eax,0x3d020
   31b19:	81 c3 00 10 00 00    	add    $0x1000,%ebx
   31b1f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
   31b22:	74 54                	je     31b78 <mm_malloc+0x108>
   31b24:	89 d8                	mov    %ebx,%eax
   31b26:	c1 e8 16             	shr    $0x16,%eax
   31b29:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
   31b2c:	f6 01 01             	testb  $0x1,(%ecx)
   31b2f:	75 a7                	jne    31ad8 <mm_malloc+0x68>
   31b31:	a1 00 f0 04 00       	mov    0x4f000,%eax
   31b36:	89 c6                	mov    %eax,%esi
   31b38:	83 c0 01             	add    $0x1,%eax
   31b3b:	c1 e6 0c             	shl    $0xc,%esi
   31b3e:	81 c6 00 00 05 00    	add    $0x50000,%esi
   31b44:	a3 00 f0 04 00       	mov    %eax,0x4f000
   31b49:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
   31b4f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31b54:	83 c8 07             	or     $0x7,%eax
   31b57:	89 01                	mov    %eax,(%ecx)
   31b59:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
   31b60:	00 
   31b61:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   31b68:	00 
   31b69:	89 34 24             	mov    %esi,(%esp)
   31b6c:	e8 db 01 00 00       	call   31d4c <memset>
   31b71:	e9 70 ff ff ff       	jmp    31ae6 <mm_malloc+0x76>
   31b76:	66 90                	xchg   %ax,%ax
   31b78:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   31b7b:	8b 45 e0             	mov    -0x20(%ebp),%eax
   31b7e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
   31b84:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
   31b8a:	c1 e8 16             	shr    $0x16,%eax
   31b8d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
   31b90:	f7 c6 01 00 00 00    	test   $0x1,%esi
   31b96:	75 32                	jne    31bca <mm_malloc+0x15a>
   31b98:	c7 44 24 10 54 98 03 	movl   $0x39854,0x10(%esp)
   31b9f:	00 
   31ba0:	c7 44 24 0c ba 98 03 	movl   $0x398ba,0xc(%esp)
   31ba7:	00 
   31ba8:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
   31baf:	00 
   31bb0:	c7 44 24 04 43 98 03 	movl   $0x39843,0x4(%esp)
   31bb7:	00 
   31bb8:	c7 04 24 64 98 03 00 	movl   $0x39864,(%esp)
   31bbf:	e8 72 ee ff ff       	call   30a36 <printk>
   31bc4:	b8 01 00 00 00       	mov    $0x1,%eax
   31bc9:	82                   	nemu_trap 
   31bca:	8b 55 e0             	mov    -0x20(%ebp),%edx
   31bcd:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
   31bd3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31bd8:	c1 ea 0c             	shr    $0xc,%edx
   31bdb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
   31be1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
   31be5:	75 32                	jne    31c19 <mm_malloc+0x1a9>
   31be7:	c7 44 24 10 5c 98 03 	movl   $0x3985c,0x10(%esp)
   31bee:	00 
   31bef:	c7 44 24 0c ba 98 03 	movl   $0x398ba,0xc(%esp)
   31bf6:	00 
   31bf7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
   31bfe:	00 
   31bff:	c7 44 24 04 43 98 03 	movl   $0x39843,0x4(%esp)
   31c06:	00 
   31c07:	c7 04 24 64 98 03 00 	movl   $0x39864,(%esp)
   31c0e:	e8 23 ee ff ff       	call   30a36 <printk>
   31c13:	b8 01 00 00 00       	mov    $0x1,%eax
   31c18:	82                   	nemu_trap 
   31c19:	8b 45 08             	mov    0x8(%ebp),%eax
   31c1c:	c1 e8 16             	shr    $0x16,%eax
   31c1f:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
   31c22:	f6 c3 01             	test   $0x1,%bl
   31c25:	75 32                	jne    31c59 <mm_malloc+0x1e9>
   31c27:	c7 44 24 10 54 98 03 	movl   $0x39854,0x10(%esp)
   31c2e:	00 
   31c2f:	c7 44 24 0c ba 98 03 	movl   $0x398ba,0xc(%esp)
   31c36:	00 
   31c37:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
   31c3e:	00 
   31c3f:	c7 44 24 04 43 98 03 	movl   $0x39843,0x4(%esp)
   31c46:	00 
   31c47:	c7 04 24 64 98 03 00 	movl   $0x39864,(%esp)
   31c4e:	e8 e3 ed ff ff       	call   30a36 <printk>
   31c53:	b8 01 00 00 00       	mov    $0x1,%eax
   31c58:	82                   	nemu_trap 
   31c59:	8b 55 08             	mov    0x8(%ebp),%edx
   31c5c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
   31c62:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31c67:	c1 ea 0c             	shr    $0xc,%edx
   31c6a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
   31c70:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
   31c73:	f6 c3 01             	test   $0x1,%bl
   31c76:	75 32                	jne    31caa <mm_malloc+0x23a>
   31c78:	c7 44 24 10 5c 98 03 	movl   $0x3985c,0x10(%esp)
   31c7f:	00 
   31c80:	c7 44 24 0c ba 98 03 	movl   $0x398ba,0xc(%esp)
   31c87:	00 
   31c88:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
   31c8f:	00 
   31c90:	c7 44 24 04 43 98 03 	movl   $0x39843,0x4(%esp)
   31c97:	00 
   31c98:	c7 04 24 64 98 03 00 	movl   $0x39864,(%esp)
   31c9f:	e8 92 ed ff ff       	call   30a36 <printk>
   31ca4:	b8 01 00 00 00       	mov    $0x1,%eax
   31ca9:	82                   	nemu_trap 
   31caa:	8b 55 08             	mov    0x8(%ebp),%edx
   31cad:	89 d8                	mov    %ebx,%eax
   31caf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31cb4:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
   31cba:	09 d0                	or     %edx,%eax
   31cbc:	83 c4 3c             	add    $0x3c,%esp
   31cbf:	5b                   	pop    %ebx
   31cc0:	5e                   	pop    %esi
   31cc1:	5f                   	pop    %edi
   31cc2:	5d                   	pop    %ebp
   31cc3:	c3                   	ret    
   31cc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   31cc8:	c7 44 24 10 30 98 03 	movl   $0x39830,0x10(%esp)
   31ccf:	00 
   31cd0:	c7 44 24 0c b0 98 03 	movl   $0x398b0,0xc(%esp)
   31cd7:	00 
   31cd8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
   31cdf:	00 
   31ce0:	c7 44 24 04 43 98 03 	movl   $0x39843,0x4(%esp)
   31ce7:	00 
   31ce8:	c7 04 24 64 98 03 00 	movl   $0x39864,(%esp)
   31cef:	e8 42 ed ff ff       	call   30a36 <printk>
   31cf4:	b8 01 00 00 00       	mov    $0x1,%eax
   31cf9:	82                   	nemu_trap 
   31cfa:	a1 20 d0 03 00       	mov    0x3d020,%eax
   31cff:	e9 03 fe ff ff       	jmp    31b07 <mm_malloc+0x97>

00031d04 <memcpy>:
   31d04:	55                   	push   %ebp
   31d05:	89 e5                	mov    %esp,%ebp
   31d07:	56                   	push   %esi
   31d08:	57                   	push   %edi
   31d09:	53                   	push   %ebx
   31d0a:	8b 7d 08             	mov    0x8(%ebp),%edi
   31d0d:	8b 4d 10             	mov    0x10(%ebp),%ecx
   31d10:	8b 75 0c             	mov    0xc(%ebp),%esi
   31d13:	fc                   	cld    
   31d14:	83 f9 08             	cmp    $0x8,%ecx
   31d17:	76 26                	jbe    31d3f <memcpy+0x3b>
   31d19:	89 fa                	mov    %edi,%edx
   31d1b:	89 cb                	mov    %ecx,%ebx
   31d1d:	83 e2 03             	and    $0x3,%edx
   31d20:	74 10                	je     31d32 <memcpy+0x2e>
   31d22:	b9 04 00 00 00       	mov    $0x4,%ecx
   31d27:	29 d1                	sub    %edx,%ecx
   31d29:	83 e1 03             	and    $0x3,%ecx
   31d2c:	29 cb                	sub    %ecx,%ebx
   31d2e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   31d30:	89 d9                	mov    %ebx,%ecx
   31d32:	c1 e9 02             	shr    $0x2,%ecx
   31d35:	8d 76 00             	lea    0x0(%esi),%esi
   31d38:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   31d3a:	89 d9                	mov    %ebx,%ecx
   31d3c:	83 e1 03             	and    $0x3,%ecx
   31d3f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   31d41:	8b 45 08             	mov    0x8(%ebp),%eax
   31d44:	8d 65 f4             	lea    -0xc(%ebp),%esp
   31d47:	5b                   	pop    %ebx
   31d48:	5f                   	pop    %edi
   31d49:	5e                   	pop    %esi
   31d4a:	c9                   	leave  
   31d4b:	c3                   	ret    

00031d4c <memset>:
   31d4c:	55                   	push   %ebp
   31d4d:	89 e5                	mov    %esp,%ebp
   31d4f:	57                   	push   %edi
   31d50:	8b 7d 08             	mov    0x8(%ebp),%edi
   31d53:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
   31d57:	8b 4d 10             	mov    0x10(%ebp),%ecx
   31d5a:	fc                   	cld    
   31d5b:	83 f9 10             	cmp    $0x10,%ecx
   31d5e:	76 69                	jbe    31dc9 <memset+0x7d>
   31d60:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d66:	74 4c                	je     31db4 <memset+0x68>
   31d68:	88 07                	mov    %al,(%edi)
   31d6a:	47                   	inc    %edi
   31d6b:	49                   	dec    %ecx
   31d6c:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d72:	74 40                	je     31db4 <memset+0x68>
   31d74:	88 07                	mov    %al,(%edi)
   31d76:	47                   	inc    %edi
   31d77:	49                   	dec    %ecx
   31d78:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d7e:	74 34                	je     31db4 <memset+0x68>
   31d80:	88 07                	mov    %al,(%edi)
   31d82:	47                   	inc    %edi
   31d83:	49                   	dec    %ecx
   31d84:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d8a:	74 28                	je     31db4 <memset+0x68>
   31d8c:	88 07                	mov    %al,(%edi)
   31d8e:	47                   	inc    %edi
   31d8f:	49                   	dec    %ecx
   31d90:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d96:	74 1c                	je     31db4 <memset+0x68>
   31d98:	88 07                	mov    %al,(%edi)
   31d9a:	47                   	inc    %edi
   31d9b:	49                   	dec    %ecx
   31d9c:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31da2:	74 10                	je     31db4 <memset+0x68>
   31da4:	88 07                	mov    %al,(%edi)
   31da6:	47                   	inc    %edi
   31da7:	49                   	dec    %ecx
   31da8:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31dae:	74 04                	je     31db4 <memset+0x68>
   31db0:	88 07                	mov    %al,(%edi)
   31db2:	47                   	inc    %edi
   31db3:	49                   	dec    %ecx
   31db4:	88 c4                	mov    %al,%ah
   31db6:	89 c2                	mov    %eax,%edx
   31db8:	c1 e2 10             	shl    $0x10,%edx
   31dbb:	09 d0                	or     %edx,%eax
   31dbd:	89 ca                	mov    %ecx,%edx
   31dbf:	c1 e9 02             	shr    $0x2,%ecx
   31dc2:	83 e2 03             	and    $0x3,%edx
   31dc5:	f3 ab                	rep stos %eax,%es:(%edi)
   31dc7:	89 d1                	mov    %edx,%ecx
   31dc9:	f3 aa                	rep stos %al,%es:(%edi)
   31dcb:	8b 45 08             	mov    0x8(%ebp),%eax
   31dce:	8d 65 fc             	lea    -0x4(%ebp),%esp
   31dd1:	5f                   	pop    %edi
   31dd2:	c9                   	leave  
   31dd3:	c3                   	ret    
   31dd4:	66 90                	xchg   %ax,%ax
   31dd6:	66 90                	xchg   %ax,%ax
   31dd8:	66 90                	xchg   %ax,%ax
   31dda:	66 90                	xchg   %ax,%ax
   31ddc:	66 90                	xchg   %ax,%ax
   31dde:	66 90                	xchg   %ax,%ax

00031de0 <_vsnprintf_r>:
   31de0:	55                   	push   %ebp
   31de1:	89 e5                	mov    %esp,%ebp
   31de3:	56                   	push   %esi
   31de4:	53                   	push   %ebx
   31de5:	83 c4 80             	add    $0xffffff80,%esp
   31de8:	8b 5d 10             	mov    0x10(%ebp),%ebx
   31deb:	8b 75 08             	mov    0x8(%ebp),%esi
   31dee:	8b 45 0c             	mov    0xc(%ebp),%eax
   31df1:	85 db                	test   %ebx,%ebx
   31df3:	78 63                	js     31e58 <_vsnprintf_r+0x78>
   31df5:	ba 08 02 00 00       	mov    $0x208,%edx
   31dfa:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   31dff:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
   31e03:	8d 53 ff             	lea    -0x1(%ebx),%edx
   31e06:	89 45 90             	mov    %eax,-0x70(%ebp)
   31e09:	89 45 a0             	mov    %eax,-0x60(%ebp)
   31e0c:	31 c0                	xor    %eax,%eax
   31e0e:	85 db                	test   %ebx,%ebx
   31e10:	0f 45 c2             	cmovne %edx,%eax
   31e13:	89 45 98             	mov    %eax,-0x68(%ebp)
   31e16:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   31e19:	8b 45 18             	mov    0x18(%ebp),%eax
   31e1c:	89 34 24             	mov    %esi,(%esp)
   31e1f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
   31e23:	89 44 24 0c          	mov    %eax,0xc(%esp)
   31e27:	8b 45 14             	mov    0x14(%ebp),%eax
   31e2a:	89 44 24 08          	mov    %eax,0x8(%esp)
   31e2e:	8d 45 90             	lea    -0x70(%ebp),%eax
   31e31:	89 44 24 04          	mov    %eax,0x4(%esp)
   31e35:	e8 86 00 00 00       	call   31ec0 <_svfprintf_r>
   31e3a:	83 f8 ff             	cmp    $0xffffffff,%eax
   31e3d:	7c 11                	jl     31e50 <_vsnprintf_r+0x70>
   31e3f:	85 db                	test   %ebx,%ebx
   31e41:	74 06                	je     31e49 <_vsnprintf_r+0x69>
   31e43:	8b 55 90             	mov    -0x70(%ebp),%edx
   31e46:	c6 02 00             	movb   $0x0,(%edx)
   31e49:	83 ec 80             	sub    $0xffffff80,%esp
   31e4c:	5b                   	pop    %ebx
   31e4d:	5e                   	pop    %esi
   31e4e:	5d                   	pop    %ebp
   31e4f:	c3                   	ret    
   31e50:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
   31e56:	eb e7                	jmp    31e3f <_vsnprintf_r+0x5f>
   31e58:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
   31e5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   31e63:	eb e4                	jmp    31e49 <_vsnprintf_r+0x69>
   31e65:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   31e69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00031e70 <vsnprintf>:
   31e70:	55                   	push   %ebp
   31e71:	89 e5                	mov    %esp,%ebp
   31e73:	83 ec 28             	sub    $0x28,%esp
   31e76:	e8 35 00 00 00       	call   31eb0 <__getreent>
   31e7b:	8b 55 14             	mov    0x14(%ebp),%edx
   31e7e:	89 54 24 10          	mov    %edx,0x10(%esp)
   31e82:	8b 55 10             	mov    0x10(%ebp),%edx
   31e85:	89 04 24             	mov    %eax,(%esp)
   31e88:	89 54 24 0c          	mov    %edx,0xc(%esp)
   31e8c:	8b 55 0c             	mov    0xc(%ebp),%edx
   31e8f:	89 54 24 08          	mov    %edx,0x8(%esp)
   31e93:	8b 55 08             	mov    0x8(%ebp),%edx
   31e96:	89 54 24 04          	mov    %edx,0x4(%esp)
   31e9a:	e8 41 ff ff ff       	call   31de0 <_vsnprintf_r>
   31e9f:	c9                   	leave  
   31ea0:	c3                   	ret    
   31ea1:	66 90                	xchg   %ax,%ax
   31ea3:	66 90                	xchg   %ax,%ax
   31ea5:	66 90                	xchg   %ax,%ax
   31ea7:	66 90                	xchg   %ax,%ax
   31ea9:	66 90                	xchg   %ax,%ax
   31eab:	66 90                	xchg   %ax,%ax
   31ead:	66 90                	xchg   %ax,%ax
   31eaf:	90                   	nop

00031eb0 <__getreent>:
   31eb0:	55                   	push   %ebp
   31eb1:	a1 40 d0 03 00       	mov    0x3d040,%eax
   31eb6:	89 e5                	mov    %esp,%ebp
   31eb8:	5d                   	pop    %ebp
   31eb9:	c3                   	ret    
   31eba:	66 90                	xchg   %ax,%ax
   31ebc:	66 90                	xchg   %ax,%ax
   31ebe:	66 90                	xchg   %ax,%ax

00031ec0 <_svfprintf_r>:
   31ec0:	55                   	push   %ebp
   31ec1:	89 e5                	mov    %esp,%ebp
   31ec3:	57                   	push   %edi
   31ec4:	56                   	push   %esi
   31ec5:	53                   	push   %ebx
   31ec6:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
   31ecc:	8b 45 08             	mov    0x8(%ebp),%eax
   31ecf:	89 04 24             	mov    %eax,(%esp)
   31ed2:	e8 89 33 00 00       	call   35260 <_localeconv_r>
   31ed7:	8b 00                	mov    (%eax),%eax
   31ed9:	89 04 24             	mov    %eax,(%esp)
   31edc:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
   31ee2:	e8 d9 4a 00 00       	call   369c0 <strlen>
   31ee7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
   31eed:	8b 45 0c             	mov    0xc(%ebp),%eax
   31ef0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
   31ef4:	74 0b                	je     31f01 <_svfprintf_r+0x41>
   31ef6:	8b 40 10             	mov    0x10(%eax),%eax
   31ef9:	85 c0                	test   %eax,%eax
   31efb:	0f 84 62 18 00 00    	je     33763 <_svfprintf_r+0x18a3>
   31f01:	8d 45 a8             	lea    -0x58(%ebp),%eax
   31f04:	8d 55 a7             	lea    -0x59(%ebp),%edx
   31f07:	89 c7                	mov    %eax,%edi
   31f09:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
   31f0f:	d9 ee                	fldz   
   31f11:	29 d0                	sub    %edx,%eax
   31f13:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
   31f1a:	00 00 00 
   31f1d:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
   31f23:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   31f2a:	00 00 00 
   31f2d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
   31f34:	00 00 00 
   31f37:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
   31f3e:	00 00 00 
   31f41:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
   31f48:	00 00 00 
   31f4b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
   31f52:	00 00 00 
   31f55:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
   31f5b:	8b 45 10             	mov    0x10(%ebp),%eax
   31f5e:	8b 5d 10             	mov    0x10(%ebp),%ebx
   31f61:	0f b6 00             	movzbl (%eax),%eax
   31f64:	3c 25                	cmp    $0x25,%al
   31f66:	74 4d                	je     31fb5 <_svfprintf_r+0xf5>
   31f68:	84 c0                	test   %al,%al
   31f6a:	75 08                	jne    31f74 <_svfprintf_r+0xb4>
   31f6c:	eb 47                	jmp    31fb5 <_svfprintf_r+0xf5>
   31f6e:	66 90                	xchg   %ax,%ax
   31f70:	84 c0                	test   %al,%al
   31f72:	74 0a                	je     31f7e <_svfprintf_r+0xbe>
   31f74:	83 c3 01             	add    $0x1,%ebx
   31f77:	0f b6 03             	movzbl (%ebx),%eax
   31f7a:	3c 25                	cmp    $0x25,%al
   31f7c:	75 f2                	jne    31f70 <_svfprintf_r+0xb0>
   31f7e:	89 de                	mov    %ebx,%esi
   31f80:	2b 75 10             	sub    0x10(%ebp),%esi
   31f83:	74 30                	je     31fb5 <_svfprintf_r+0xf5>
   31f85:	8b 45 10             	mov    0x10(%ebp),%eax
   31f88:	83 c7 08             	add    $0x8,%edi
   31f8b:	89 77 fc             	mov    %esi,-0x4(%edi)
   31f8e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
   31f94:	89 47 f8             	mov    %eax,-0x8(%edi)
   31f97:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   31f9d:	83 c0 01             	add    $0x1,%eax
   31fa0:	83 f8 07             	cmp    $0x7,%eax
   31fa3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   31fa9:	0f 8f 91 00 00 00    	jg     32040 <_svfprintf_r+0x180>
   31faf:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
   31fb5:	80 3b 00             	cmpb   $0x0,(%ebx)
   31fb8:	0f 84 aa 00 00 00    	je     32068 <_svfprintf_r+0x1a8>
   31fbe:	8d 43 01             	lea    0x1(%ebx),%eax
   31fc1:	be 20 00 00 00       	mov    $0x20,%esi
   31fc6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   31fcd:	31 db                	xor    %ebx,%ebx
   31fcf:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
   31fd6:	ff ff ff 
   31fd9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
   31fe0:	00 00 00 
   31fe3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
   31fea:	00 00 00 
   31fed:	8d 48 01             	lea    0x1(%eax),%ecx
   31ff0:	0f be 00             	movsbl (%eax),%eax
   31ff3:	8d 50 e0             	lea    -0x20(%eax),%edx
   31ff6:	83 fa 58             	cmp    $0x58,%edx
   31ff9:	0f 87 8f 07 00 00    	ja     3278e <_svfprintf_r+0x8ce>
   31fff:	ff 24 95 04 99 03 00 	jmp    *0x39904(,%edx,4)
   32006:	66 90                	xchg   %ax,%ax
   32008:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   3200f:	89 c8                	mov    %ecx,%eax
   32011:	eb da                	jmp    31fed <_svfprintf_r+0x12d>
   32013:	8b 45 14             	mov    0x14(%ebp),%eax
   32016:	8b 55 14             	mov    0x14(%ebp),%edx
   32019:	8b 00                	mov    (%eax),%eax
   3201b:	83 c2 04             	add    $0x4,%edx
   3201e:	89 55 14             	mov    %edx,0x14(%ebp)
   32021:	85 c0                	test   %eax,%eax
   32023:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
   32029:	79 e4                	jns    3200f <_svfprintf_r+0x14f>
   3202b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
   32031:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
   32038:	89 c8                	mov    %ecx,%eax
   3203a:	eb b1                	jmp    31fed <_svfprintf_r+0x12d>
   3203c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32040:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32046:	89 44 24 08          	mov    %eax,0x8(%esp)
   3204a:	8b 45 0c             	mov    0xc(%ebp),%eax
   3204d:	89 44 24 04          	mov    %eax,0x4(%esp)
   32051:	8b 45 08             	mov    0x8(%ebp),%eax
   32054:	89 04 24             	mov    %eax,(%esp)
   32057:	e8 e4 49 00 00       	call   36a40 <__ssprint_r>
   3205c:	85 c0                	test   %eax,%eax
   3205e:	75 30                	jne    32090 <_svfprintf_r+0x1d0>
   32060:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32063:	e9 47 ff ff ff       	jmp    31faf <_svfprintf_r+0xef>
   32068:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
   3206e:	85 c0                	test   %eax,%eax
   32070:	74 1e                	je     32090 <_svfprintf_r+0x1d0>
   32072:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32078:	89 44 24 08          	mov    %eax,0x8(%esp)
   3207c:	8b 45 0c             	mov    0xc(%ebp),%eax
   3207f:	89 44 24 04          	mov    %eax,0x4(%esp)
   32083:	8b 45 08             	mov    0x8(%ebp),%eax
   32086:	89 04 24             	mov    %eax,(%esp)
   32089:	e8 b2 49 00 00       	call   36a40 <__ssprint_r>
   3208e:	66 90                	xchg   %ax,%ax
   32090:	8b 55 0c             	mov    0xc(%ebp),%edx
   32093:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   32098:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
   3209c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
   320a3:	81 c4 1c 01 00 00    	add    $0x11c,%esp
   320a9:	5b                   	pop    %ebx
   320aa:	5e                   	pop    %esi
   320ab:	5f                   	pop    %edi
   320ac:	5d                   	pop    %ebp
   320ad:	c3                   	ret    
   320ae:	bb 2b 00 00 00       	mov    $0x2b,%ebx
   320b3:	89 c8                	mov    %ecx,%eax
   320b5:	e9 33 ff ff ff       	jmp    31fed <_svfprintf_r+0x12d>
   320ba:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   320c0:	8b 45 14             	mov    0x14(%ebp),%eax
   320c3:	89 4d 10             	mov    %ecx,0x10(%ebp)
   320c6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   320cd:	8d 70 04             	lea    0x4(%eax),%esi
   320d0:	8b 00                	mov    (%eax),%eax
   320d2:	85 c0                	test   %eax,%eax
   320d4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   320da:	0f 84 7f 18 00 00    	je     3395f <_svfprintf_r+0x1a9f>
   320e0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   320e6:	85 c0                	test   %eax,%eax
   320e8:	0f 88 b6 17 00 00    	js     338a4 <_svfprintf_r+0x19e4>
   320ee:	89 44 24 08          	mov    %eax,0x8(%esp)
   320f2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   320f8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   320ff:	00 
   32100:	89 04 24             	mov    %eax,(%esp)
   32103:	e8 f8 38 00 00       	call   35a00 <memchr>
   32108:	85 c0                	test   %eax,%eax
   3210a:	0f 84 a0 19 00 00    	je     33ab0 <_svfprintf_r+0x1bf0>
   32110:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   32116:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
   3211c:	39 d0                	cmp    %edx,%eax
   3211e:	0f 4f c2             	cmovg  %edx,%eax
   32121:	89 c2                	mov    %eax,%edx
   32123:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   3212a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   32130:	31 c0                	xor    %eax,%eax
   32132:	85 d2                	test   %edx,%edx
   32134:	0f 49 c2             	cmovns %edx,%eax
   32137:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   3213d:	89 75 14             	mov    %esi,0x14(%ebp)
   32140:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   32147:	00 00 00 
   3214a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   32151:	00 00 00 
   32154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32158:	84 db                	test   %bl,%bl
   3215a:	74 07                	je     32163 <_svfprintf_r+0x2a3>
   3215c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
   32163:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   32169:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
   3216f:	89 c8                	mov    %ecx,%eax
   32171:	89 f2                	mov    %esi,%edx
   32173:	83 c0 02             	add    $0x2,%eax
   32176:	83 e2 02             	and    $0x2,%edx
   32179:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
   3217f:	89 f2                	mov    %esi,%edx
   32181:	0f 44 c1             	cmove  %ecx,%eax
   32184:	81 e2 84 00 00 00    	and    $0x84,%edx
   3218a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   32190:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
   32196:	0f 85 1c 06 00 00    	jne    327b8 <_svfprintf_r+0x8f8>
   3219c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
   321a2:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
   321a8:	85 f6                	test   %esi,%esi
   321aa:	0f 8e 08 06 00 00    	jle    327b8 <_svfprintf_r+0x8f8>
   321b0:	83 fe 10             	cmp    $0x10,%esi
   321b3:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   321b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   321bf:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   321c5:	7f 11                	jg     321d8 <_svfprintf_r+0x318>
   321c7:	eb 6b                	jmp    32234 <_svfprintf_r+0x374>
   321c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   321d0:	83 ee 10             	sub    $0x10,%esi
   321d3:	83 fe 10             	cmp    $0x10,%esi
   321d6:	7e 5c                	jle    32234 <_svfprintf_r+0x374>
   321d8:	83 c0 01             	add    $0x1,%eax
   321db:	83 c1 10             	add    $0x10,%ecx
   321de:	c7 07 78 9a 03 00    	movl   $0x39a78,(%edi)
   321e4:	83 c7 08             	add    $0x8,%edi
   321e7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   321ee:	83 f8 07             	cmp    $0x7,%eax
   321f1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   321f7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   321fd:	7e d1                	jle    321d0 <_svfprintf_r+0x310>
   321ff:	8b 45 0c             	mov    0xc(%ebp),%eax
   32202:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32206:	89 44 24 04          	mov    %eax,0x4(%esp)
   3220a:	8b 45 08             	mov    0x8(%ebp),%eax
   3220d:	89 04 24             	mov    %eax,(%esp)
   32210:	e8 2b 48 00 00       	call   36a40 <__ssprint_r>
   32215:	85 c0                	test   %eax,%eax
   32217:	0f 85 73 fe ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   3221d:	83 ee 10             	sub    $0x10,%esi
   32220:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32226:	83 fe 10             	cmp    $0x10,%esi
   32229:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3222f:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32232:	7f a4                	jg     321d8 <_svfprintf_r+0x318>
   32234:	83 c0 01             	add    $0x1,%eax
   32237:	01 f1                	add    %esi,%ecx
   32239:	83 f8 07             	cmp    $0x7,%eax
   3223c:	c7 07 78 9a 03 00    	movl   $0x39a78,(%edi)
   32242:	89 77 04             	mov    %esi,0x4(%edi)
   32245:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   3224b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32251:	0f 8f 16 0e 00 00    	jg     3306d <_svfprintf_r+0x11ad>
   32257:	83 c7 08             	add    $0x8,%edi
   3225a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   32261:	e9 58 05 00 00       	jmp    327be <_svfprintf_r+0x8fe>
   32266:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   3226d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32273:	8b 45 14             	mov    0x14(%ebp),%eax
   32276:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32279:	0f 85 fd 04 00 00    	jne    3277c <_svfprintf_r+0x8bc>
   3227f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   32286:	0f 84 f0 04 00 00    	je     3277c <_svfprintf_r+0x8bc>
   3228c:	0f b7 08             	movzwl (%eax),%ecx
   3228f:	83 c0 04             	add    $0x4,%eax
   32292:	89 45 14             	mov    %eax,0x14(%ebp)
   32295:	b8 01 00 00 00       	mov    $0x1,%eax
   3229a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   322a0:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   322a7:	31 db                	xor    %ebx,%ebx
   322a9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
   322af:	89 f2                	mov    %esi,%edx
   322b1:	80 e2 7f             	and    $0x7f,%dl
   322b4:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
   322bb:	0f 48 d6             	cmovs  %esi,%edx
   322be:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
   322c4:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   322ca:	85 d2                	test   %edx,%edx
   322cc:	75 08                	jne    322d6 <_svfprintf_r+0x416>
   322ce:	85 c9                	test   %ecx,%ecx
   322d0:	0f 84 ea 08 00 00    	je     32bc0 <_svfprintf_r+0xd00>
   322d6:	3c 01                	cmp    $0x1,%al
   322d8:	0f 84 6a 0d 00 00    	je     33048 <_svfprintf_r+0x1188>
   322de:	3c 02                	cmp    $0x2,%al
   322e0:	8d 45 a8             	lea    -0x58(%ebp),%eax
   322e3:	0f 85 bf 0b 00 00    	jne    32ea8 <_svfprintf_r+0xfe8>
   322e9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
   322ef:	90                   	nop
   322f0:	89 ca                	mov    %ecx,%edx
   322f2:	83 e8 01             	sub    $0x1,%eax
   322f5:	83 e2 0f             	and    $0xf,%edx
   322f8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
   322fc:	c1 e9 04             	shr    $0x4,%ecx
   322ff:	85 c9                	test   %ecx,%ecx
   32301:	88 10                	mov    %dl,(%eax)
   32303:	75 eb                	jne    322f0 <_svfprintf_r+0x430>
   32305:	8d 55 a8             	lea    -0x58(%ebp),%edx
   32308:	29 c2                	sub    %eax,%edx
   3230a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32310:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   32316:	66 90                	xchg   %ax,%ax
   32318:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   3231e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
   32324:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   3232b:	00 00 00 
   3232e:	39 c2                	cmp    %eax,%edx
   32330:	0f 4d c2             	cmovge %edx,%eax
   32333:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   32339:	e9 1a fe ff ff       	jmp    32158 <_svfprintf_r+0x298>
   3233e:	84 db                	test   %bl,%bl
   32340:	89 c8                	mov    %ecx,%eax
   32342:	0f 44 de             	cmove  %esi,%ebx
   32345:	e9 a3 fc ff ff       	jmp    31fed <_svfprintf_r+0x12d>
   3234a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
   32351:	89 c8                	mov    %ecx,%eax
   32353:	e9 95 fc ff ff       	jmp    31fed <_svfprintf_r+0x12d>
   32358:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
   3235f:	00 00 00 
   32362:	89 c8                	mov    %ecx,%eax
   32364:	e9 84 fc ff ff       	jmp    31fed <_svfprintf_r+0x12d>
   32369:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   3236f:	8d 50 d0             	lea    -0x30(%eax),%edx
   32372:	31 ff                	xor    %edi,%edi
   32374:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
   3237b:	00 00 00 
   3237e:	66 90                	xchg   %ax,%ax
   32380:	8d 04 bf             	lea    (%edi,%edi,4),%eax
   32383:	83 c1 01             	add    $0x1,%ecx
   32386:	8d 3c 42             	lea    (%edx,%eax,2),%edi
   32389:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
   3238d:	8d 50 d0             	lea    -0x30(%eax),%edx
   32390:	83 fa 09             	cmp    $0x9,%edx
   32393:	76 eb                	jbe    32380 <_svfprintf_r+0x4c0>
   32395:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
   3239b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
   323a1:	e9 4d fc ff ff       	jmp    31ff3 <_svfprintf_r+0x133>
   323a6:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   323ad:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   323b4:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   323ba:	8b 45 14             	mov    0x14(%ebp),%eax
   323bd:	89 4d 10             	mov    %ecx,0x10(%ebp)
   323c0:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   323c6:	0f 85 61 02 00 00    	jne    3262d <_svfprintf_r+0x76d>
   323cc:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   323d3:	0f 84 54 02 00 00    	je     3262d <_svfprintf_r+0x76d>
   323d9:	0f bf 08             	movswl (%eax),%ecx
   323dc:	83 c0 04             	add    $0x4,%eax
   323df:	89 45 14             	mov    %eax,0x14(%ebp)
   323e2:	85 c9                	test   %ecx,%ecx
   323e4:	0f 88 53 02 00 00    	js     3263d <_svfprintf_r+0x77d>
   323ea:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   323f1:	b8 01 00 00 00       	mov    $0x1,%eax
   323f6:	e9 ae fe ff ff       	jmp    322a9 <_svfprintf_r+0x3e9>
   323fb:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
   32402:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32408:	8b 45 14             	mov    0x14(%ebp),%eax
   3240b:	89 4d 10             	mov    %ecx,0x10(%ebp)
   3240e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   32414:	0f 84 15 10 00 00    	je     3342f <_svfprintf_r+0x156f>
   3241a:	db 28                	fldt   (%eax)
   3241c:	83 c0 0c             	add    $0xc,%eax
   3241f:	89 45 14             	mov    %eax,0x14(%ebp)
   32422:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
   32428:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   3242e:	dd 1c 24             	fstpl  (%esp)
   32431:	e8 aa 44 00 00       	call   368e0 <__fpclassifyd>
   32436:	83 f8 01             	cmp    $0x1,%eax
   32439:	0f 85 82 0f 00 00    	jne    333c1 <_svfprintf_r+0x1501>
   3243f:	d9 ee                	fldz   
   32441:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   32447:	d9 c9                	fxch   %st(1)
   32449:	df e9                	fucomip %st(1),%st
   3244b:	dd d8                	fstp   %st(0)
   3244d:	0f 87 59 15 00 00    	ja     339ac <_svfprintf_r+0x1aec>
   32453:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   3245a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
   32461:	ba c6 98 03 00       	mov    $0x398c6,%edx
   32466:	b8 ca 98 03 00       	mov    $0x398ca,%eax
   3246b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
   32472:	00 00 00 
   32475:	0f 4e c2             	cmovle %edx,%eax
   32478:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   3247e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
   32485:	ff ff ff 
   32488:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
   3248f:	00 00 00 
   32492:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   32499:	00 00 00 
   3249c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   324a3:	00 00 00 
   324a6:	e9 ad fc ff ff       	jmp    32158 <_svfprintf_r+0x298>
   324ab:	8d 41 01             	lea    0x1(%ecx),%eax
   324ae:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   324b4:	0f be 01             	movsbl (%ecx),%eax
   324b7:	83 f8 2a             	cmp    $0x2a,%eax
   324ba:	0f 84 84 18 00 00    	je     33d44 <_svfprintf_r+0x1e84>
   324c0:	8d 50 d0             	lea    -0x30(%eax),%edx
   324c3:	31 c9                	xor    %ecx,%ecx
   324c5:	83 fa 09             	cmp    $0x9,%edx
   324c8:	0f 87 a8 16 00 00    	ja     33b76 <_svfprintf_r+0x1cb6>
   324ce:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
   324d4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
   324da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   324e0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
   324e3:	83 c7 01             	add    $0x1,%edi
   324e6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
   324e9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
   324ed:	8d 50 d0             	lea    -0x30(%eax),%edx
   324f0:	83 fa 09             	cmp    $0x9,%edx
   324f3:	76 eb                	jbe    324e0 <_svfprintf_r+0x620>
   324f5:	85 c9                	test   %ecx,%ecx
   324f7:	89 ca                	mov    %ecx,%edx
   324f9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   324fe:	0f 48 d1             	cmovs  %ecx,%edx
   32501:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   32507:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
   3250d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   32513:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
   32519:	e9 d5 fa ff ff       	jmp    31ff3 <_svfprintf_r+0x133>
   3251e:	8b 45 14             	mov    0x14(%ebp),%eax
   32521:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32524:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
   3252b:	8b 08                	mov    (%eax),%ecx
   3252d:	83 c0 04             	add    $0x4,%eax
   32530:	89 45 14             	mov    %eax,0x14(%ebp)
   32533:	b8 02 00 00 00       	mov    $0x2,%eax
   32538:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
   3253f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
   32546:	c7 85 18 ff ff ff e7 	movl   $0x398e7,-0xe8(%ebp)
   3254d:	98 03 00 
   32550:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
   32557:	00 00 00 
   3255a:	e9 41 fd ff ff       	jmp    322a0 <_svfprintf_r+0x3e0>
   3255f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   32566:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   3256c:	8b 45 14             	mov    0x14(%ebp),%eax
   3256f:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32572:	0f 85 87 00 00 00    	jne    325ff <_svfprintf_r+0x73f>
   32578:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   3257f:	74 7e                	je     325ff <_svfprintf_r+0x73f>
   32581:	0f b7 08             	movzwl (%eax),%ecx
   32584:	83 c0 04             	add    $0x4,%eax
   32587:	89 45 14             	mov    %eax,0x14(%ebp)
   3258a:	31 c0                	xor    %eax,%eax
   3258c:	e9 0f fd ff ff       	jmp    322a0 <_svfprintf_r+0x3e0>
   32591:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
   32598:	89 c8                	mov    %ecx,%eax
   3259a:	e9 4e fa ff ff       	jmp    31fed <_svfprintf_r+0x12d>
   3259f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   325a6:	89 4d 10             	mov    %ecx,0x10(%ebp)
   325a9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   325af:	0f 85 97 0b 00 00    	jne    3314c <_svfprintf_r+0x128c>
   325b5:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   325bc:	0f 84 8a 0b 00 00    	je     3314c <_svfprintf_r+0x128c>
   325c2:	8b 45 14             	mov    0x14(%ebp),%eax
   325c5:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
   325cc:	8b 00                	mov    (%eax),%eax
   325ce:	66 89 10             	mov    %dx,(%eax)
   325d1:	8b 45 14             	mov    0x14(%ebp),%eax
   325d4:	83 c0 04             	add    $0x4,%eax
   325d7:	89 45 14             	mov    %eax,0x14(%ebp)
   325da:	e9 7c f9 ff ff       	jmp    31f5b <_svfprintf_r+0x9b>
   325df:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   325e6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   325ed:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   325f3:	8b 45 14             	mov    0x14(%ebp),%eax
   325f6:	89 4d 10             	mov    %ecx,0x10(%ebp)
   325f9:	0f 84 79 ff ff ff    	je     32578 <_svfprintf_r+0x6b8>
   325ff:	8b 08                	mov    (%eax),%ecx
   32601:	83 c0 04             	add    $0x4,%eax
   32604:	89 45 14             	mov    %eax,0x14(%ebp)
   32607:	31 c0                	xor    %eax,%eax
   32609:	e9 92 fc ff ff       	jmp    322a0 <_svfprintf_r+0x3e0>
   3260e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   32615:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   3261b:	8b 45 14             	mov    0x14(%ebp),%eax
   3261e:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32621:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   32627:	0f 84 9f fd ff ff    	je     323cc <_svfprintf_r+0x50c>
   3262d:	8b 08                	mov    (%eax),%ecx
   3262f:	83 c0 04             	add    $0x4,%eax
   32632:	89 45 14             	mov    %eax,0x14(%ebp)
   32635:	85 c9                	test   %ecx,%ecx
   32637:	0f 89 ad fd ff ff    	jns    323ea <_svfprintf_r+0x52a>
   3263d:	f7 d9                	neg    %ecx
   3263f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
   32644:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
   3264b:	b8 01 00 00 00       	mov    $0x1,%eax
   32650:	e9 54 fc ff ff       	jmp    322a9 <_svfprintf_r+0x3e9>
   32655:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
   3265c:	89 c8                	mov    %ecx,%eax
   3265e:	e9 8a f9 ff ff       	jmp    31fed <_svfprintf_r+0x12d>
   32663:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   3266a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32670:	8b 45 14             	mov    0x14(%ebp),%eax
   32673:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32676:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   3267c:	c7 85 18 ff ff ff e7 	movl   $0x398e7,-0xe8(%ebp)
   32683:	98 03 00 
   32686:	75 71                	jne    326f9 <_svfprintf_r+0x839>
   32688:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   3268f:	74 68                	je     326f9 <_svfprintf_r+0x839>
   32691:	0f b7 08             	movzwl (%eax),%ecx
   32694:	83 c0 04             	add    $0x4,%eax
   32697:	89 45 14             	mov    %eax,0x14(%ebp)
   3269a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   326a1:	b8 02 00 00 00       	mov    $0x2,%eax
   326a6:	0f 84 f4 fb ff ff    	je     322a0 <_svfprintf_r+0x3e0>
   326ac:	85 c9                	test   %ecx,%ecx
   326ae:	0f 84 ec fb ff ff    	je     322a0 <_svfprintf_r+0x3e0>
   326b4:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
   326bb:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
   326c2:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
   326c9:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
   326cf:	e9 cc fb ff ff       	jmp    322a0 <_svfprintf_r+0x3e0>
   326d4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   326db:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   326e1:	8b 45 14             	mov    0x14(%ebp),%eax
   326e4:	89 4d 10             	mov    %ecx,0x10(%ebp)
   326e7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   326ed:	c7 85 18 ff ff ff d6 	movl   $0x398d6,-0xe8(%ebp)
   326f4:	98 03 00 
   326f7:	74 8f                	je     32688 <_svfprintf_r+0x7c8>
   326f9:	8b 08                	mov    (%eax),%ecx
   326fb:	83 c0 04             	add    $0x4,%eax
   326fe:	89 45 14             	mov    %eax,0x14(%ebp)
   32701:	eb 97                	jmp    3269a <_svfprintf_r+0x7da>
   32703:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32709:	8b 45 14             	mov    0x14(%ebp),%eax
   3270c:	89 4d 10             	mov    %ecx,0x10(%ebp)
   3270f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   32716:	8b 00                	mov    (%eax),%eax
   32718:	88 45 80             	mov    %al,-0x80(%ebp)
   3271b:	8b 45 14             	mov    0x14(%ebp),%eax
   3271e:	83 c0 04             	add    $0x4,%eax
   32721:	89 45 14             	mov    %eax,0x14(%ebp)
   32724:	8d 45 80             	lea    -0x80(%ebp),%eax
   32727:	31 db                	xor    %ebx,%ebx
   32729:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
   32730:	00 00 00 
   32733:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
   3273a:	00 00 00 
   3273d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   32744:	00 00 00 
   32747:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   3274e:	00 00 00 
   32751:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32757:	e9 07 fa ff ff       	jmp    32163 <_svfprintf_r+0x2a3>
   3275c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   32763:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   3276a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32770:	8b 45 14             	mov    0x14(%ebp),%eax
   32773:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32776:	0f 84 03 fb ff ff    	je     3227f <_svfprintf_r+0x3bf>
   3277c:	8b 08                	mov    (%eax),%ecx
   3277e:	83 c0 04             	add    $0x4,%eax
   32781:	89 45 14             	mov    %eax,0x14(%ebp)
   32784:	b8 01 00 00 00       	mov    $0x1,%eax
   32789:	e9 12 fb ff ff       	jmp    322a0 <_svfprintf_r+0x3e0>
   3278e:	85 c0                	test   %eax,%eax
   32790:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32796:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32799:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   3279f:	0f 84 c3 f8 ff ff    	je     32068 <_svfprintf_r+0x1a8>
   327a5:	88 45 80             	mov    %al,-0x80(%ebp)
   327a8:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   327af:	e9 70 ff ff ff       	jmp    32724 <_svfprintf_r+0x864>
   327b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   327b8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   327be:	84 db                	test   %bl,%bl
   327c0:	74 33                	je     327f5 <_svfprintf_r+0x935>
   327c2:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
   327c8:	83 c1 01             	add    $0x1,%ecx
   327cb:	89 07                	mov    %eax,(%edi)
   327cd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   327d3:	83 c7 08             	add    $0x8,%edi
   327d6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
   327dd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   327e3:	83 c0 01             	add    $0x1,%eax
   327e6:	83 f8 07             	cmp    $0x7,%eax
   327e9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   327ef:	0f 8f 7b 06 00 00    	jg     32e70 <_svfprintf_r+0xfb0>
   327f5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
   327fb:	85 db                	test   %ebx,%ebx
   327fd:	74 33                	je     32832 <_svfprintf_r+0x972>
   327ff:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
   32805:	83 c1 02             	add    $0x2,%ecx
   32808:	89 07                	mov    %eax,(%edi)
   3280a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32810:	83 c7 08             	add    $0x8,%edi
   32813:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
   3281a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32820:	83 c0 01             	add    $0x1,%eax
   32823:	83 f8 07             	cmp    $0x7,%eax
   32826:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3282c:	0f 8f 06 06 00 00    	jg     32e38 <_svfprintf_r+0xf78>
   32832:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
   32839:	00 00 00 
   3283c:	0f 84 c6 03 00 00    	je     32c08 <_svfprintf_r+0xd48>
   32842:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
   32848:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
   3284e:	85 f6                	test   %esi,%esi
   32850:	0f 8e d2 00 00 00    	jle    32928 <_svfprintf_r+0xa68>
   32856:	83 fe 10             	cmp    $0x10,%esi
   32859:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3285f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32865:	7f 11                	jg     32878 <_svfprintf_r+0x9b8>
   32867:	eb 6b                	jmp    328d4 <_svfprintf_r+0xa14>
   32869:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   32870:	83 ee 10             	sub    $0x10,%esi
   32873:	83 fe 10             	cmp    $0x10,%esi
   32876:	7e 5c                	jle    328d4 <_svfprintf_r+0xa14>
   32878:	83 c0 01             	add    $0x1,%eax
   3287b:	83 c1 10             	add    $0x10,%ecx
   3287e:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   32884:	83 c7 08             	add    $0x8,%edi
   32887:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   3288e:	83 f8 07             	cmp    $0x7,%eax
   32891:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32897:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3289d:	7e d1                	jle    32870 <_svfprintf_r+0x9b0>
   3289f:	8b 45 0c             	mov    0xc(%ebp),%eax
   328a2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   328a6:	89 44 24 04          	mov    %eax,0x4(%esp)
   328aa:	8b 45 08             	mov    0x8(%ebp),%eax
   328ad:	89 04 24             	mov    %eax,(%esp)
   328b0:	e8 8b 41 00 00       	call   36a40 <__ssprint_r>
   328b5:	85 c0                	test   %eax,%eax
   328b7:	0f 85 d3 f7 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   328bd:	83 ee 10             	sub    $0x10,%esi
   328c0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   328c6:	83 fe 10             	cmp    $0x10,%esi
   328c9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   328cf:	8d 7d a8             	lea    -0x58(%ebp),%edi
   328d2:	7f a4                	jg     32878 <_svfprintf_r+0x9b8>
   328d4:	83 c0 01             	add    $0x1,%eax
   328d7:	01 f1                	add    %esi,%ecx
   328d9:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   328df:	83 c7 08             	add    $0x8,%edi
   328e2:	89 77 fc             	mov    %esi,-0x4(%edi)
   328e5:	83 f8 07             	cmp    $0x7,%eax
   328e8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   328ee:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   328f4:	7e 32                	jle    32928 <_svfprintf_r+0xa68>
   328f6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   328fc:	89 44 24 08          	mov    %eax,0x8(%esp)
   32900:	8b 45 0c             	mov    0xc(%ebp),%eax
   32903:	89 44 24 04          	mov    %eax,0x4(%esp)
   32907:	8b 45 08             	mov    0x8(%ebp),%eax
   3290a:	89 04 24             	mov    %eax,(%esp)
   3290d:	e8 2e 41 00 00       	call   36a40 <__ssprint_r>
   32912:	85 c0                	test   %eax,%eax
   32914:	0f 85 76 f7 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   3291a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32920:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32923:	90                   	nop
   32924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32928:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
   3292f:	01 00 00 
   32932:	0f 85 50 01 00 00    	jne    32a88 <_svfprintf_r+0xbc8>
   32938:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   3293e:	89 07                	mov    %eax,(%edi)
   32940:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
   32946:	01 c1                	add    %eax,%ecx
   32948:	89 47 04             	mov    %eax,0x4(%edi)
   3294b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32951:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32957:	83 c0 01             	add    $0x1,%eax
   3295a:	83 f8 07             	cmp    $0x7,%eax
   3295d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32963:	0f 8f 6a 04 00 00    	jg     32dd3 <_svfprintf_r+0xf13>
   32969:	83 c7 08             	add    $0x8,%edi
   3296c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
   32973:	0f 84 d7 00 00 00    	je     32a50 <_svfprintf_r+0xb90>
   32979:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
   3297f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
   32985:	85 f6                	test   %esi,%esi
   32987:	0f 8e c3 00 00 00    	jle    32a50 <_svfprintf_r+0xb90>
   3298d:	83 fe 10             	cmp    $0x10,%esi
   32990:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32996:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   3299c:	7f 0a                	jg     329a8 <_svfprintf_r+0xae8>
   3299e:	eb 64                	jmp    32a04 <_svfprintf_r+0xb44>
   329a0:	83 ee 10             	sub    $0x10,%esi
   329a3:	83 fe 10             	cmp    $0x10,%esi
   329a6:	7e 5c                	jle    32a04 <_svfprintf_r+0xb44>
   329a8:	83 c0 01             	add    $0x1,%eax
   329ab:	83 c1 10             	add    $0x10,%ecx
   329ae:	c7 07 78 9a 03 00    	movl   $0x39a78,(%edi)
   329b4:	83 c7 08             	add    $0x8,%edi
   329b7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   329be:	83 f8 07             	cmp    $0x7,%eax
   329c1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   329c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   329cd:	7e d1                	jle    329a0 <_svfprintf_r+0xae0>
   329cf:	8b 45 0c             	mov    0xc(%ebp),%eax
   329d2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   329d6:	89 44 24 04          	mov    %eax,0x4(%esp)
   329da:	8b 45 08             	mov    0x8(%ebp),%eax
   329dd:	89 04 24             	mov    %eax,(%esp)
   329e0:	e8 5b 40 00 00       	call   36a40 <__ssprint_r>
   329e5:	85 c0                	test   %eax,%eax
   329e7:	0f 85 a3 f6 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   329ed:	83 ee 10             	sub    $0x10,%esi
   329f0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   329f6:	83 fe 10             	cmp    $0x10,%esi
   329f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   329ff:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32a02:	7f a4                	jg     329a8 <_svfprintf_r+0xae8>
   32a04:	83 c0 01             	add    $0x1,%eax
   32a07:	01 f1                	add    %esi,%ecx
   32a09:	83 f8 07             	cmp    $0x7,%eax
   32a0c:	c7 07 78 9a 03 00    	movl   $0x39a78,(%edi)
   32a12:	89 77 04             	mov    %esi,0x4(%edi)
   32a15:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32a1b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32a21:	7e 2d                	jle    32a50 <_svfprintf_r+0xb90>
   32a23:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32a29:	89 44 24 08          	mov    %eax,0x8(%esp)
   32a2d:	8b 45 0c             	mov    0xc(%ebp),%eax
   32a30:	89 44 24 04          	mov    %eax,0x4(%esp)
   32a34:	8b 45 08             	mov    0x8(%ebp),%eax
   32a37:	89 04 24             	mov    %eax,(%esp)
   32a3a:	e8 01 40 00 00       	call   36a40 <__ssprint_r>
   32a3f:	85 c0                	test   %eax,%eax
   32a41:	0f 85 49 f6 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   32a47:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32a4d:	8d 76 00             	lea    0x0(%esi),%esi
   32a50:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
   32a56:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
   32a5c:	39 c2                	cmp    %eax,%edx
   32a5e:	0f 4d c2             	cmovge %edx,%eax
   32a61:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
   32a67:	85 c9                	test   %ecx,%ecx
   32a69:	0f 85 99 03 00 00    	jne    32e08 <_svfprintf_r+0xf48>
   32a6f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   32a76:	00 00 00 
   32a79:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32a7c:	e9 da f4 ff ff       	jmp    31f5b <_svfprintf_r+0x9b>
   32a81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   32a88:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
   32a8f:	0f 8e 5b 02 00 00    	jle    32cf0 <_svfprintf_r+0xe30>
   32a95:	d9 ee                	fldz   
   32a97:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   32a9d:	df e9                	fucomip %st(1),%st
   32a9f:	dd d8                	fstp   %st(0)
   32aa1:	0f 8a 59 04 00 00    	jp     32f00 <_svfprintf_r+0x1040>
   32aa7:	0f 85 53 04 00 00    	jne    32f00 <_svfprintf_r+0x1040>
   32aad:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32ab3:	83 c1 01             	add    $0x1,%ecx
   32ab6:	83 c7 08             	add    $0x8,%edi
   32ab9:	c7 47 f8 ff 98 03 00 	movl   $0x398ff,-0x8(%edi)
   32ac0:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
   32ac7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32acd:	83 c0 01             	add    $0x1,%eax
   32ad0:	83 f8 07             	cmp    $0x7,%eax
   32ad3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32ad9:	0f 8f 63 09 00 00    	jg     33442 <_svfprintf_r+0x1582>
   32adf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
   32ae5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
   32aeb:	7c 0d                	jl     32afa <_svfprintf_r+0xc3a>
   32aed:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   32af4:	0f 84 72 fe ff ff    	je     3296c <_svfprintf_r+0xaac>
   32afa:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
   32b00:	83 c7 08             	add    $0x8,%edi
   32b03:	89 47 f8             	mov    %eax,-0x8(%edi)
   32b06:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
   32b0c:	89 47 fc             	mov    %eax,-0x4(%edi)
   32b0f:	01 c1                	add    %eax,%ecx
   32b11:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32b17:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32b1d:	83 c0 01             	add    $0x1,%eax
   32b20:	83 f8 07             	cmp    $0x7,%eax
   32b23:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32b29:	0f 8f dc 0b 00 00    	jg     3370b <_svfprintf_r+0x184b>
   32b2f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
   32b35:	8d 70 ff             	lea    -0x1(%eax),%esi
   32b38:	85 f6                	test   %esi,%esi
   32b3a:	0f 8e 2c fe ff ff    	jle    3296c <_svfprintf_r+0xaac>
   32b40:	83 fe 10             	cmp    $0x10,%esi
   32b43:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32b49:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32b4f:	7f 13                	jg     32b64 <_svfprintf_r+0xca4>
   32b51:	e9 e6 05 00 00       	jmp    3313c <_svfprintf_r+0x127c>
   32b56:	66 90                	xchg   %ax,%ax
   32b58:	83 ee 10             	sub    $0x10,%esi
   32b5b:	83 fe 10             	cmp    $0x10,%esi
   32b5e:	0f 8e d8 05 00 00    	jle    3313c <_svfprintf_r+0x127c>
   32b64:	83 c0 01             	add    $0x1,%eax
   32b67:	83 c1 10             	add    $0x10,%ecx
   32b6a:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   32b70:	83 c7 08             	add    $0x8,%edi
   32b73:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   32b7a:	83 f8 07             	cmp    $0x7,%eax
   32b7d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32b83:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32b89:	7e cd                	jle    32b58 <_svfprintf_r+0xc98>
   32b8b:	8b 45 0c             	mov    0xc(%ebp),%eax
   32b8e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32b92:	89 44 24 04          	mov    %eax,0x4(%esp)
   32b96:	8b 45 08             	mov    0x8(%ebp),%eax
   32b99:	89 04 24             	mov    %eax,(%esp)
   32b9c:	e8 9f 3e 00 00       	call   36a40 <__ssprint_r>
   32ba1:	85 c0                	test   %eax,%eax
   32ba3:	0f 85 e7 f4 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   32ba9:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32baf:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32bb2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32bb8:	eb 9e                	jmp    32b58 <_svfprintf_r+0xc98>
   32bba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32bc0:	84 c0                	test   %al,%al
   32bc2:	75 2c                	jne    32bf0 <_svfprintf_r+0xd30>
   32bc4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   32bcb:	74 23                	je     32bf0 <_svfprintf_r+0xd30>
   32bcd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
   32bd3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
   32bd7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   32bdd:	8d 45 a7             	lea    -0x59(%ebp),%eax
   32be0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32be6:	e9 2d f7 ff ff       	jmp    32318 <_svfprintf_r+0x458>
   32beb:	90                   	nop
   32bec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32bf0:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32bf3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
   32bfa:	00 00 00 
   32bfd:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32c03:	e9 10 f7 ff ff       	jmp    32318 <_svfprintf_r+0x458>
   32c08:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
   32c0e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
   32c14:	85 f6                	test   %esi,%esi
   32c16:	0f 8e 26 fc ff ff    	jle    32842 <_svfprintf_r+0x982>
   32c1c:	83 fe 10             	cmp    $0x10,%esi
   32c1f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32c25:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32c2b:	7f 0b                	jg     32c38 <_svfprintf_r+0xd78>
   32c2d:	eb 65                	jmp    32c94 <_svfprintf_r+0xdd4>
   32c2f:	90                   	nop
   32c30:	83 ee 10             	sub    $0x10,%esi
   32c33:	83 fe 10             	cmp    $0x10,%esi
   32c36:	7e 5c                	jle    32c94 <_svfprintf_r+0xdd4>
   32c38:	83 c0 01             	add    $0x1,%eax
   32c3b:	83 c1 10             	add    $0x10,%ecx
   32c3e:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   32c44:	83 c7 08             	add    $0x8,%edi
   32c47:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   32c4e:	83 f8 07             	cmp    $0x7,%eax
   32c51:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32c57:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32c5d:	7e d1                	jle    32c30 <_svfprintf_r+0xd70>
   32c5f:	8b 45 0c             	mov    0xc(%ebp),%eax
   32c62:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32c66:	89 44 24 04          	mov    %eax,0x4(%esp)
   32c6a:	8b 45 08             	mov    0x8(%ebp),%eax
   32c6d:	89 04 24             	mov    %eax,(%esp)
   32c70:	e8 cb 3d 00 00       	call   36a40 <__ssprint_r>
   32c75:	85 c0                	test   %eax,%eax
   32c77:	0f 85 13 f4 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   32c7d:	83 ee 10             	sub    $0x10,%esi
   32c80:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32c86:	83 fe 10             	cmp    $0x10,%esi
   32c89:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32c8f:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32c92:	7f a4                	jg     32c38 <_svfprintf_r+0xd78>
   32c94:	83 c0 01             	add    $0x1,%eax
   32c97:	01 f1                	add    %esi,%ecx
   32c99:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   32c9f:	83 c7 08             	add    $0x8,%edi
   32ca2:	89 77 fc             	mov    %esi,-0x4(%edi)
   32ca5:	83 f8 07             	cmp    $0x7,%eax
   32ca8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32cae:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32cb4:	0f 8e 88 fb ff ff    	jle    32842 <_svfprintf_r+0x982>
   32cba:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32cc0:	89 44 24 08          	mov    %eax,0x8(%esp)
   32cc4:	8b 45 0c             	mov    0xc(%ebp),%eax
   32cc7:	89 44 24 04          	mov    %eax,0x4(%esp)
   32ccb:	8b 45 08             	mov    0x8(%ebp),%eax
   32cce:	89 04 24             	mov    %eax,(%esp)
   32cd1:	e8 6a 3d 00 00       	call   36a40 <__ssprint_r>
   32cd6:	85 c0                	test   %eax,%eax
   32cd8:	0f 85 b2 f3 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   32cde:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32ce4:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32ce7:	e9 56 fb ff ff       	jmp    32842 <_svfprintf_r+0x982>
   32cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32cf0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
   32cf7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   32cfd:	0f 8e df 05 00 00    	jle    332e2 <_svfprintf_r+0x1422>
   32d03:	89 07                	mov    %eax,(%edi)
   32d05:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32d0b:	8d 51 01             	lea    0x1(%ecx),%edx
   32d0e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
   32d15:	83 c7 08             	add    $0x8,%edi
   32d18:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   32d1e:	83 c0 01             	add    $0x1,%eax
   32d21:	83 f8 07             	cmp    $0x7,%eax
   32d24:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32d2a:	0f 8f 59 06 00 00    	jg     33389 <_svfprintf_r+0x14c9>
   32d30:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
   32d36:	83 c0 01             	add    $0x1,%eax
   32d39:	83 c7 08             	add    $0x8,%edi
   32d3c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32d42:	89 5f f8             	mov    %ebx,-0x8(%edi)
   32d45:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
   32d4b:	89 5f fc             	mov    %ebx,-0x4(%edi)
   32d4e:	01 da                	add    %ebx,%edx
   32d50:	83 f8 07             	cmp    $0x7,%eax
   32d53:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   32d59:	0f 8f f2 05 00 00    	jg     33351 <_svfprintf_r+0x1491>
   32d5f:	d9 ee                	fldz   
   32d61:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   32d67:	df e9                	fucomip %st(1),%st
   32d69:	dd d8                	fstp   %st(0)
   32d6b:	7a 06                	jp     32d73 <_svfprintf_r+0xeb3>
   32d6d:	0f 84 33 03 00 00    	je     330a6 <_svfprintf_r+0x11e6>
   32d73:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
   32d79:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   32d7f:	83 c1 01             	add    $0x1,%ecx
   32d82:	89 0f                	mov    %ecx,(%edi)
   32d84:	8d 4b ff             	lea    -0x1(%ebx),%ecx
   32d87:	89 4f 04             	mov    %ecx,0x4(%edi)
   32d8a:	01 ca                	add    %ecx,%edx
   32d8c:	83 c0 01             	add    $0x1,%eax
   32d8f:	83 f8 07             	cmp    $0x7,%eax
   32d92:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   32d98:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32d9e:	0f 8f 75 05 00 00    	jg     33319 <_svfprintf_r+0x1459>
   32da4:	83 c7 08             	add    $0x8,%edi
   32da7:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
   32dad:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
   32db3:	89 0f                	mov    %ecx,(%edi)
   32db5:	89 5f 04             	mov    %ebx,0x4(%edi)
   32db8:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
   32dbb:	83 c0 01             	add    $0x1,%eax
   32dbe:	83 f8 07             	cmp    $0x7,%eax
   32dc1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32dc7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32dcd:	0f 8e 96 fb ff ff    	jle    32969 <_svfprintf_r+0xaa9>
   32dd3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32dd9:	89 44 24 08          	mov    %eax,0x8(%esp)
   32ddd:	8b 45 0c             	mov    0xc(%ebp),%eax
   32de0:	89 44 24 04          	mov    %eax,0x4(%esp)
   32de4:	8b 45 08             	mov    0x8(%ebp),%eax
   32de7:	89 04 24             	mov    %eax,(%esp)
   32dea:	e8 51 3c 00 00       	call   36a40 <__ssprint_r>
   32def:	85 c0                	test   %eax,%eax
   32df1:	0f 85 99 f2 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   32df7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32dfd:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32e00:	e9 67 fb ff ff       	jmp    3296c <_svfprintf_r+0xaac>
   32e05:	8d 76 00             	lea    0x0(%esi),%esi
   32e08:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32e0e:	89 44 24 08          	mov    %eax,0x8(%esp)
   32e12:	8b 45 0c             	mov    0xc(%ebp),%eax
   32e15:	89 44 24 04          	mov    %eax,0x4(%esp)
   32e19:	8b 45 08             	mov    0x8(%ebp),%eax
   32e1c:	89 04 24             	mov    %eax,(%esp)
   32e1f:	e8 1c 3c 00 00       	call   36a40 <__ssprint_r>
   32e24:	85 c0                	test   %eax,%eax
   32e26:	0f 84 43 fc ff ff    	je     32a6f <_svfprintf_r+0xbaf>
   32e2c:	e9 5f f2 ff ff       	jmp    32090 <_svfprintf_r+0x1d0>
   32e31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   32e38:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32e3e:	89 44 24 08          	mov    %eax,0x8(%esp)
   32e42:	8b 45 0c             	mov    0xc(%ebp),%eax
   32e45:	89 44 24 04          	mov    %eax,0x4(%esp)
   32e49:	8b 45 08             	mov    0x8(%ebp),%eax
   32e4c:	89 04 24             	mov    %eax,(%esp)
   32e4f:	e8 ec 3b 00 00       	call   36a40 <__ssprint_r>
   32e54:	85 c0                	test   %eax,%eax
   32e56:	0f 85 34 f2 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   32e5c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32e62:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32e65:	e9 c8 f9 ff ff       	jmp    32832 <_svfprintf_r+0x972>
   32e6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32e70:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32e76:	89 44 24 08          	mov    %eax,0x8(%esp)
   32e7a:	8b 45 0c             	mov    0xc(%ebp),%eax
   32e7d:	89 44 24 04          	mov    %eax,0x4(%esp)
   32e81:	8b 45 08             	mov    0x8(%ebp),%eax
   32e84:	89 04 24             	mov    %eax,(%esp)
   32e87:	e8 b4 3b 00 00       	call   36a40 <__ssprint_r>
   32e8c:	85 c0                	test   %eax,%eax
   32e8e:	0f 85 fc f1 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   32e94:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32e9a:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32e9d:	e9 53 f9 ff ff       	jmp    327f5 <_svfprintf_r+0x935>
   32ea2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32ea8:	89 c2                	mov    %eax,%edx
   32eaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32eb0:	89 c8                	mov    %ecx,%eax
   32eb2:	83 ea 01             	sub    $0x1,%edx
   32eb5:	83 e0 07             	and    $0x7,%eax
   32eb8:	c1 e9 03             	shr    $0x3,%ecx
   32ebb:	83 c0 30             	add    $0x30,%eax
   32ebe:	85 c9                	test   %ecx,%ecx
   32ec0:	88 02                	mov    %al,(%edx)
   32ec2:	75 ec                	jne    32eb0 <_svfprintf_r+0xff0>
   32ec4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   32ecb:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
   32ed1:	0f 84 5b 01 00 00    	je     33032 <_svfprintf_r+0x1172>
   32ed7:	3c 30                	cmp    $0x30,%al
   32ed9:	74 0b                	je     32ee6 <_svfprintf_r+0x1026>
   32edb:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
   32ee2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
   32ee6:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32ee9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
   32eef:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   32ef5:	e9 1e f4 ff ff       	jmp    32318 <_svfprintf_r+0x458>
   32efa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32f00:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   32f06:	85 db                	test   %ebx,%ebx
   32f08:	0f 8e 66 05 00 00    	jle    33474 <_svfprintf_r+0x15b4>
   32f0e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
   32f14:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
   32f1a:	01 d0                	add    %edx,%eax
   32f1c:	89 c3                	mov    %eax,%ebx
   32f1e:	29 d3                	sub    %edx,%ebx
   32f20:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
   32f26:	89 d0                	mov    %edx,%eax
   32f28:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   32f2e:	39 d3                	cmp    %edx,%ebx
   32f30:	0f 4f da             	cmovg  %edx,%ebx
   32f33:	85 db                	test   %ebx,%ebx
   32f35:	7e 28                	jle    32f5f <_svfprintf_r+0x109f>
   32f37:	89 07                	mov    %eax,(%edi)
   32f39:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32f3f:	01 d9                	add    %ebx,%ecx
   32f41:	89 5f 04             	mov    %ebx,0x4(%edi)
   32f44:	83 c7 08             	add    $0x8,%edi
   32f47:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32f4d:	83 c0 01             	add    $0x1,%eax
   32f50:	83 f8 07             	cmp    $0x7,%eax
   32f53:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32f59:	0f 8f 58 09 00 00    	jg     338b7 <_svfprintf_r+0x19f7>
   32f5f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
   32f65:	31 c0                	xor    %eax,%eax
   32f67:	85 db                	test   %ebx,%ebx
   32f69:	0f 49 c3             	cmovns %ebx,%eax
   32f6c:	29 c6                	sub    %eax,%esi
   32f6e:	85 f6                	test   %esi,%esi
   32f70:	0f 8e 40 02 00 00    	jle    331b6 <_svfprintf_r+0x12f6>
   32f76:	83 fe 10             	cmp    $0x10,%esi
   32f79:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32f7f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32f85:	7f 15                	jg     32f9c <_svfprintf_r+0x10dc>
   32f87:	e9 db 01 00 00       	jmp    33167 <_svfprintf_r+0x12a7>
   32f8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32f90:	83 ee 10             	sub    $0x10,%esi
   32f93:	83 fe 10             	cmp    $0x10,%esi
   32f96:	0f 8e cb 01 00 00    	jle    33167 <_svfprintf_r+0x12a7>
   32f9c:	83 c0 01             	add    $0x1,%eax
   32f9f:	83 c1 10             	add    $0x10,%ecx
   32fa2:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   32fa8:	83 c7 08             	add    $0x8,%edi
   32fab:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   32fb2:	83 f8 07             	cmp    $0x7,%eax
   32fb5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32fbb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32fc1:	7e cd                	jle    32f90 <_svfprintf_r+0x10d0>
   32fc3:	8b 45 0c             	mov    0xc(%ebp),%eax
   32fc6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32fca:	89 44 24 04          	mov    %eax,0x4(%esp)
   32fce:	8b 45 08             	mov    0x8(%ebp),%eax
   32fd1:	89 04 24             	mov    %eax,(%esp)
   32fd4:	e8 67 3a 00 00       	call   36a40 <__ssprint_r>
   32fd9:	85 c0                	test   %eax,%eax
   32fdb:	0f 85 af f0 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   32fe1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32fe7:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32fea:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32ff0:	eb 9e                	jmp    32f90 <_svfprintf_r+0x10d0>
   32ff2:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32ff5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
   32ffa:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   33000:	89 c7                	mov    %eax,%edi
   33002:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   33008:	89 c8                	mov    %ecx,%eax
   3300a:	83 ef 01             	sub    $0x1,%edi
   3300d:	f7 e6                	mul    %esi
   3300f:	c1 ea 03             	shr    $0x3,%edx
   33012:	8d 04 92             	lea    (%edx,%edx,4),%eax
   33015:	01 c0                	add    %eax,%eax
   33017:	29 c1                	sub    %eax,%ecx
   33019:	83 c1 30             	add    $0x30,%ecx
   3301c:	85 d2                	test   %edx,%edx
   3301e:	88 0f                	mov    %cl,(%edi)
   33020:	89 d1                	mov    %edx,%ecx
   33022:	75 e4                	jne    33008 <_svfprintf_r+0x1148>
   33024:	89 fa                	mov    %edi,%edx
   33026:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
   3302c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
   33032:	8d 45 a8             	lea    -0x58(%ebp),%eax
   33035:	29 d0                	sub    %edx,%eax
   33037:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   3303d:	e9 d6 f2 ff ff       	jmp    32318 <_svfprintf_r+0x458>
   33042:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   33048:	83 f9 09             	cmp    $0x9,%ecx
   3304b:	77 a5                	ja     32ff2 <_svfprintf_r+0x1132>
   3304d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
   33053:	83 c1 30             	add    $0x30,%ecx
   33056:	88 4d a7             	mov    %cl,-0x59(%ebp)
   33059:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   3305f:	8d 45 a7             	lea    -0x59(%ebp),%eax
   33062:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   33068:	e9 ab f2 ff ff       	jmp    32318 <_svfprintf_r+0x458>
   3306d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33073:	89 44 24 08          	mov    %eax,0x8(%esp)
   33077:	8b 45 0c             	mov    0xc(%ebp),%eax
   3307a:	89 44 24 04          	mov    %eax,0x4(%esp)
   3307e:	8b 45 08             	mov    0x8(%ebp),%eax
   33081:	89 04 24             	mov    %eax,(%esp)
   33084:	e8 b7 39 00 00       	call   36a40 <__ssprint_r>
   33089:	85 c0                	test   %eax,%eax
   3308b:	0f 85 ff ef ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   33091:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   33098:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3309b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   330a1:	e9 18 f7 ff ff       	jmp    327be <_svfprintf_r+0x8fe>
   330a6:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   330ac:	8d 73 ff             	lea    -0x1(%ebx),%esi
   330af:	85 f6                	test   %esi,%esi
   330b1:	0f 8e f0 fc ff ff    	jle    32da7 <_svfprintf_r+0xee7>
   330b7:	83 fe 10             	cmp    $0x10,%esi
   330ba:	7e 70                	jle    3312c <_svfprintf_r+0x126c>
   330bc:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   330c2:	eb 0c                	jmp    330d0 <_svfprintf_r+0x1210>
   330c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   330c8:	83 ee 10             	sub    $0x10,%esi
   330cb:	83 fe 10             	cmp    $0x10,%esi
   330ce:	7e 5c                	jle    3312c <_svfprintf_r+0x126c>
   330d0:	83 c0 01             	add    $0x1,%eax
   330d3:	83 c2 10             	add    $0x10,%edx
   330d6:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   330dc:	83 c7 08             	add    $0x8,%edi
   330df:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   330e6:	83 f8 07             	cmp    $0x7,%eax
   330e9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   330ef:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   330f5:	7e d1                	jle    330c8 <_svfprintf_r+0x1208>
   330f7:	8b 45 0c             	mov    0xc(%ebp),%eax
   330fa:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   330fe:	89 44 24 04          	mov    %eax,0x4(%esp)
   33102:	8b 45 08             	mov    0x8(%ebp),%eax
   33105:	89 04 24             	mov    %eax,(%esp)
   33108:	e8 33 39 00 00       	call   36a40 <__ssprint_r>
   3310d:	85 c0                	test   %eax,%eax
   3310f:	0f 85 7b ef ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   33115:	83 ee 10             	sub    $0x10,%esi
   33118:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3311e:	83 fe 10             	cmp    $0x10,%esi
   33121:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33127:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3312a:	7f a4                	jg     330d0 <_svfprintf_r+0x1210>
   3312c:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   33132:	01 f2                	add    %esi,%edx
   33134:	89 77 04             	mov    %esi,0x4(%edi)
   33137:	e9 50 fc ff ff       	jmp    32d8c <_svfprintf_r+0xecc>
   3313c:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   33142:	01 f1                	add    %esi,%ecx
   33144:	89 77 04             	mov    %esi,0x4(%edi)
   33147:	e9 6f fc ff ff       	jmp    32dbb <_svfprintf_r+0xefb>
   3314c:	8b 45 14             	mov    0x14(%ebp),%eax
   3314f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
   33155:	8b 00                	mov    (%eax),%eax
   33157:	89 10                	mov    %edx,(%eax)
   33159:	8b 45 14             	mov    0x14(%ebp),%eax
   3315c:	83 c0 04             	add    $0x4,%eax
   3315f:	89 45 14             	mov    %eax,0x14(%ebp)
   33162:	e9 f4 ed ff ff       	jmp    31f5b <_svfprintf_r+0x9b>
   33167:	83 c0 01             	add    $0x1,%eax
   3316a:	01 f1                	add    %esi,%ecx
   3316c:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   33172:	83 c7 08             	add    $0x8,%edi
   33175:	89 77 fc             	mov    %esi,-0x4(%edi)
   33178:	83 f8 07             	cmp    $0x7,%eax
   3317b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   33181:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33187:	7e 2d                	jle    331b6 <_svfprintf_r+0x12f6>
   33189:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3318f:	89 44 24 08          	mov    %eax,0x8(%esp)
   33193:	8b 45 0c             	mov    0xc(%ebp),%eax
   33196:	89 44 24 04          	mov    %eax,0x4(%esp)
   3319a:	8b 45 08             	mov    0x8(%ebp),%eax
   3319d:	89 04 24             	mov    %eax,(%esp)
   331a0:	e8 9b 38 00 00       	call   36a40 <__ssprint_r>
   331a5:	85 c0                	test   %eax,%eax
   331a7:	0f 85 e3 ee ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   331ad:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   331b3:	8d 7d a8             	lea    -0x58(%ebp),%edi
   331b6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   331bc:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
   331c2:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
   331c8:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
   331ce:	89 c6                	mov    %eax,%esi
   331d0:	7c 0d                	jl     331df <_svfprintf_r+0x131f>
   331d2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   331d9:	0f 84 5e 05 00 00    	je     3373d <_svfprintf_r+0x187d>
   331df:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
   331e5:	89 07                	mov    %eax,(%edi)
   331e7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
   331ed:	01 c1                	add    %eax,%ecx
   331ef:	89 47 04             	mov    %eax,0x4(%edi)
   331f2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   331f8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   331fe:	83 c0 01             	add    $0x1,%eax
   33201:	83 f8 07             	cmp    $0x7,%eax
   33204:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3320a:	0f 8f d9 06 00 00    	jg     338e9 <_svfprintf_r+0x1a29>
   33210:	83 c7 08             	add    $0x8,%edi
   33213:	89 d0                	mov    %edx,%eax
   33215:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
   3321b:	89 f2                	mov    %esi,%edx
   3321d:	29 f3                	sub    %esi,%ebx
   3321f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
   33225:	29 c6                	sub    %eax,%esi
   33227:	39 de                	cmp    %ebx,%esi
   33229:	0f 4e de             	cmovle %esi,%ebx
   3322c:	85 db                	test   %ebx,%ebx
   3322e:	7e 29                	jle    33259 <_svfprintf_r+0x1399>
   33230:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33236:	01 d9                	add    %ebx,%ecx
   33238:	83 c7 08             	add    $0x8,%edi
   3323b:	89 57 f8             	mov    %edx,-0x8(%edi)
   3323e:	89 5f fc             	mov    %ebx,-0x4(%edi)
   33241:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   33247:	83 c0 01             	add    $0x1,%eax
   3324a:	83 f8 07             	cmp    $0x7,%eax
   3324d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33253:	0f 8f c8 06 00 00    	jg     33921 <_svfprintf_r+0x1a61>
   33259:	31 c0                	xor    %eax,%eax
   3325b:	85 db                	test   %ebx,%ebx
   3325d:	0f 49 c3             	cmovns %ebx,%eax
   33260:	29 c6                	sub    %eax,%esi
   33262:	85 f6                	test   %esi,%esi
   33264:	0f 8e 02 f7 ff ff    	jle    3296c <_svfprintf_r+0xaac>
   3326a:	83 fe 10             	cmp    $0x10,%esi
   3326d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33273:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   33279:	7f 11                	jg     3328c <_svfprintf_r+0x13cc>
   3327b:	e9 bc fe ff ff       	jmp    3313c <_svfprintf_r+0x127c>
   33280:	83 ee 10             	sub    $0x10,%esi
   33283:	83 fe 10             	cmp    $0x10,%esi
   33286:	0f 8e b0 fe ff ff    	jle    3313c <_svfprintf_r+0x127c>
   3328c:	83 c0 01             	add    $0x1,%eax
   3328f:	83 c1 10             	add    $0x10,%ecx
   33292:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   33298:	83 c7 08             	add    $0x8,%edi
   3329b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   332a2:	83 f8 07             	cmp    $0x7,%eax
   332a5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   332ab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   332b1:	7e cd                	jle    33280 <_svfprintf_r+0x13c0>
   332b3:	8b 45 0c             	mov    0xc(%ebp),%eax
   332b6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   332ba:	89 44 24 04          	mov    %eax,0x4(%esp)
   332be:	8b 45 08             	mov    0x8(%ebp),%eax
   332c1:	89 04 24             	mov    %eax,(%esp)
   332c4:	e8 77 37 00 00       	call   36a40 <__ssprint_r>
   332c9:	85 c0                	test   %eax,%eax
   332cb:	0f 85 bf ed ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   332d1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   332d7:	8d 7d a8             	lea    -0x58(%ebp),%edi
   332da:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   332e0:	eb 9e                	jmp    33280 <_svfprintf_r+0x13c0>
   332e2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   332e9:	0f 85 14 fa ff ff    	jne    32d03 <_svfprintf_r+0xe43>
   332ef:	89 07                	mov    %eax,(%edi)
   332f1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   332f7:	8d 51 01             	lea    0x1(%ecx),%edx
   332fa:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
   33301:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   33307:	83 c0 01             	add    $0x1,%eax
   3330a:	83 f8 07             	cmp    $0x7,%eax
   3330d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33313:	0f 8e 8b fa ff ff    	jle    32da4 <_svfprintf_r+0xee4>
   33319:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3331f:	89 44 24 08          	mov    %eax,0x8(%esp)
   33323:	8b 45 0c             	mov    0xc(%ebp),%eax
   33326:	89 44 24 04          	mov    %eax,0x4(%esp)
   3332a:	8b 45 08             	mov    0x8(%ebp),%eax
   3332d:	89 04 24             	mov    %eax,(%esp)
   33330:	e8 0b 37 00 00       	call   36a40 <__ssprint_r>
   33335:	85 c0                	test   %eax,%eax
   33337:	0f 85 53 ed ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   3333d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   33343:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33346:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3334c:	e9 56 fa ff ff       	jmp    32da7 <_svfprintf_r+0xee7>
   33351:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33357:	89 44 24 08          	mov    %eax,0x8(%esp)
   3335b:	8b 45 0c             	mov    0xc(%ebp),%eax
   3335e:	89 44 24 04          	mov    %eax,0x4(%esp)
   33362:	8b 45 08             	mov    0x8(%ebp),%eax
   33365:	89 04 24             	mov    %eax,(%esp)
   33368:	e8 d3 36 00 00       	call   36a40 <__ssprint_r>
   3336d:	85 c0                	test   %eax,%eax
   3336f:	0f 85 1b ed ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   33375:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3337b:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3337e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33384:	e9 d6 f9 ff ff       	jmp    32d5f <_svfprintf_r+0xe9f>
   33389:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3338f:	89 44 24 08          	mov    %eax,0x8(%esp)
   33393:	8b 45 0c             	mov    0xc(%ebp),%eax
   33396:	89 44 24 04          	mov    %eax,0x4(%esp)
   3339a:	8b 45 08             	mov    0x8(%ebp),%eax
   3339d:	89 04 24             	mov    %eax,(%esp)
   333a0:	e8 9b 36 00 00       	call   36a40 <__ssprint_r>
   333a5:	85 c0                	test   %eax,%eax
   333a7:	0f 85 e3 ec ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   333ad:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   333b3:	8d 7d a8             	lea    -0x58(%ebp),%edi
   333b6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   333bc:	e9 6f f9 ff ff       	jmp    32d30 <_svfprintf_r+0xe70>
   333c1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   333c7:	dd 1c 24             	fstpl  (%esp)
   333ca:	e8 11 35 00 00       	call   368e0 <__fpclassifyd>
   333cf:	85 c0                	test   %eax,%eax
   333d1:	0f 85 a3 01 00 00    	jne    3357a <_svfprintf_r+0x16ba>
   333d7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
   333de:	ba ce 98 03 00       	mov    $0x398ce,%edx
   333e3:	b8 d2 98 03 00       	mov    $0x398d2,%eax
   333e8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   333ef:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
   333f6:	00 00 00 
   333f9:	0f 4e c2             	cmovle %edx,%eax
   333fc:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   33402:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
   33409:	ff ff ff 
   3340c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
   33413:	00 00 00 
   33416:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   3341d:	00 00 00 
   33420:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   33427:	00 00 00 
   3342a:	e9 29 ed ff ff       	jmp    32158 <_svfprintf_r+0x298>
   3342f:	dd 00                	fldl   (%eax)
   33431:	83 c0 08             	add    $0x8,%eax
   33434:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
   3343a:	89 45 14             	mov    %eax,0x14(%ebp)
   3343d:	e9 e6 ef ff ff       	jmp    32428 <_svfprintf_r+0x568>
   33442:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33448:	89 44 24 08          	mov    %eax,0x8(%esp)
   3344c:	8b 45 0c             	mov    0xc(%ebp),%eax
   3344f:	89 44 24 04          	mov    %eax,0x4(%esp)
   33453:	8b 45 08             	mov    0x8(%ebp),%eax
   33456:	89 04 24             	mov    %eax,(%esp)
   33459:	e8 e2 35 00 00       	call   36a40 <__ssprint_r>
   3345e:	85 c0                	test   %eax,%eax
   33460:	0f 85 2a ec ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   33466:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   3346c:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3346f:	e9 6b f6 ff ff       	jmp    32adf <_svfprintf_r+0xc1f>
   33474:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3347a:	83 c1 01             	add    $0x1,%ecx
   3347d:	83 c7 08             	add    $0x8,%edi
   33480:	c7 47 f8 ff 98 03 00 	movl   $0x398ff,-0x8(%edi)
   33487:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
   3348e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   33494:	83 c0 01             	add    $0x1,%eax
   33497:	83 f8 07             	cmp    $0x7,%eax
   3349a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   334a0:	0f 8f ef 02 00 00    	jg     33795 <_svfprintf_r+0x18d5>
   334a6:	85 db                	test   %ebx,%ebx
   334a8:	75 17                	jne    334c1 <_svfprintf_r+0x1601>
   334aa:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
   334b0:	85 d2                	test   %edx,%edx
   334b2:	75 0d                	jne    334c1 <_svfprintf_r+0x1601>
   334b4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   334bb:	0f 84 ab f4 ff ff    	je     3296c <_svfprintf_r+0xaac>
   334c1:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
   334c7:	83 c7 08             	add    $0x8,%edi
   334ca:	89 47 f8             	mov    %eax,-0x8(%edi)
   334cd:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
   334d3:	89 47 fc             	mov    %eax,-0x4(%edi)
   334d6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
   334d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   334df:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   334e5:	83 c0 01             	add    $0x1,%eax
   334e8:	83 f8 07             	cmp    $0x7,%eax
   334eb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   334f1:	0f 8f 60 03 00 00    	jg     33857 <_svfprintf_r+0x1997>
   334f7:	f7 db                	neg    %ebx
   334f9:	85 db                	test   %ebx,%ebx
   334fb:	0f 8e 21 03 00 00    	jle    33822 <_svfprintf_r+0x1962>
   33501:	83 fb 10             	cmp    $0x10,%ebx
   33504:	0f 8e c3 02 00 00    	jle    337cd <_svfprintf_r+0x190d>
   3350a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
   33510:	eb 12                	jmp    33524 <_svfprintf_r+0x1664>
   33512:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   33518:	83 eb 10             	sub    $0x10,%ebx
   3351b:	83 fb 10             	cmp    $0x10,%ebx
   3351e:	0f 8e a9 02 00 00    	jle    337cd <_svfprintf_r+0x190d>
   33524:	83 c0 01             	add    $0x1,%eax
   33527:	83 c2 10             	add    $0x10,%edx
   3352a:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   33530:	83 c7 08             	add    $0x8,%edi
   33533:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   3353a:	83 f8 07             	cmp    $0x7,%eax
   3353d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   33543:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33549:	7e cd                	jle    33518 <_svfprintf_r+0x1658>
   3354b:	8b 45 0c             	mov    0xc(%ebp),%eax
   3354e:	89 74 24 08          	mov    %esi,0x8(%esp)
   33552:	89 44 24 04          	mov    %eax,0x4(%esp)
   33556:	8b 45 08             	mov    0x8(%ebp),%eax
   33559:	89 04 24             	mov    %eax,(%esp)
   3355c:	e8 df 34 00 00       	call   36a40 <__ssprint_r>
   33561:	85 c0                	test   %eax,%eax
   33563:	0f 85 27 eb ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   33569:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3356f:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33572:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33578:	eb 9e                	jmp    33518 <_svfprintf_r+0x1658>
   3357a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
   33580:	83 e3 df             	and    $0xffffffdf,%ebx
   33583:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
   3358a:	0f 84 05 03 00 00    	je     33895 <_svfprintf_r+0x19d5>
   33590:	83 fb 47             	cmp    $0x47,%ebx
   33593:	75 16                	jne    335ab <_svfprintf_r+0x16eb>
   33595:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   3359b:	b8 01 00 00 00       	mov    $0x1,%eax
   335a0:	85 d2                	test   %edx,%edx
   335a2:	0f 45 c2             	cmovne %edx,%eax
   335a5:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
   335ab:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
   335b1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   335b7:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
   335bd:	80 cc 01             	or     $0x1,%ah
   335c0:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
   335c6:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
   335cc:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
   335d3:	85 c0                	test   %eax,%eax
   335d5:	0f 88 ba 05 00 00    	js     33b95 <_svfprintf_r+0x1cd5>
   335db:	83 fb 46             	cmp    $0x46,%ebx
   335de:	0f 94 c0             	sete   %al
   335e1:	89 c6                	mov    %eax,%esi
   335e3:	0f 84 d4 03 00 00    	je     339bd <_svfprintf_r+0x1afd>
   335e9:	83 fb 45             	cmp    $0x45,%ebx
   335ec:	0f 85 99 05 00 00    	jne    33b8b <_svfprintf_r+0x1ccb>
   335f2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   335f8:	dd 54 24 04          	fstl   0x4(%esp)
   335fc:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
   33603:	00 
   33604:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
   3360a:	8d 70 01             	lea    0x1(%eax),%esi
   3360d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
   33613:	89 44 24 1c          	mov    %eax,0x1c(%esp)
   33617:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
   3361d:	89 44 24 18          	mov    %eax,0x18(%esp)
   33621:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
   33627:	89 44 24 14          	mov    %eax,0x14(%esp)
   3362b:	8b 45 08             	mov    0x8(%ebp),%eax
   3362e:	89 74 24 10          	mov    %esi,0x10(%esp)
   33632:	89 04 24             	mov    %eax,(%esp)
   33635:	e8 56 09 00 00       	call   33f90 <_dtoa_r>
   3363a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   33640:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
   33643:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
   33649:	d9 ee                	fldz   
   3364b:	d9 c9                	fxch   %st(1)
   3364d:	df e9                	fucomip %st(1),%st
   3364f:	dd d8                	fstp   %st(0)
   33651:	0f 8a fd 00 00 00    	jp     33754 <_svfprintf_r+0x1894>
   33657:	89 c8                	mov    %ecx,%eax
   33659:	0f 85 f5 00 00 00    	jne    33754 <_svfprintf_r+0x1894>
   3365f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
   33665:	83 fb 47             	cmp    $0x47,%ebx
   33668:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
   3366e:	0f 84 1e 04 00 00    	je     33a92 <_svfprintf_r+0x1bd2>
   33674:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
   3367b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   33681:	0f 8e 65 04 00 00    	jle    33aec <_svfprintf_r+0x1c2c>
   33687:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
   3368e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
   33694:	0f 84 3c 05 00 00    	je     33bd6 <_svfprintf_r+0x1d16>
   3369a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
   336a0:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
   336a6:	0f 8f f7 04 00 00    	jg     33ba3 <_svfprintf_r+0x1ce3>
   336ac:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
   336b2:	83 e0 01             	and    $0x1,%eax
   336b5:	0f 85 e2 05 00 00    	jne    33c9d <_svfprintf_r+0x1ddd>
   336bb:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   336c1:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
   336c8:	00 00 00 
   336cb:	85 d2                	test   %edx,%edx
   336cd:	0f 49 c2             	cmovns %edx,%eax
   336d0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   336d6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
   336dd:	0f 85 68 03 00 00    	jne    33a4b <_svfprintf_r+0x1b8b>
   336e3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   336e9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
   336ef:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   336f6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   336fd:	00 00 00 
   33700:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
   33706:	e9 4d ea ff ff       	jmp    32158 <_svfprintf_r+0x298>
   3370b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33711:	89 44 24 08          	mov    %eax,0x8(%esp)
   33715:	8b 45 0c             	mov    0xc(%ebp),%eax
   33718:	89 44 24 04          	mov    %eax,0x4(%esp)
   3371c:	8b 45 08             	mov    0x8(%ebp),%eax
   3371f:	89 04 24             	mov    %eax,(%esp)
   33722:	e8 19 33 00 00       	call   36a40 <__ssprint_r>
   33727:	85 c0                	test   %eax,%eax
   33729:	0f 85 61 e9 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   3372f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   33735:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33738:	e9 f2 f3 ff ff       	jmp    32b2f <_svfprintf_r+0xc6f>
   3373d:	89 d0                	mov    %edx,%eax
   3373f:	e9 d1 fa ff ff       	jmp    33215 <_svfprintf_r+0x1355>
   33744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33748:	8d 50 01             	lea    0x1(%eax),%edx
   3374b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
   33751:	c6 00 30             	movb   $0x30,(%eax)
   33754:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
   3375a:	39 c1                	cmp    %eax,%ecx
   3375c:	77 ea                	ja     33748 <_svfprintf_r+0x1888>
   3375e:	e9 fc fe ff ff       	jmp    3365f <_svfprintf_r+0x179f>
   33763:	8b 45 08             	mov    0x8(%ebp),%eax
   33766:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
   3376d:	00 
   3376e:	89 04 24             	mov    %eax,(%esp)
   33771:	e8 4a 1b 00 00       	call   352c0 <_malloc_r>
   33776:	8b 55 0c             	mov    0xc(%ebp),%edx
   33779:	85 c0                	test   %eax,%eax
   3377b:	89 02                	mov    %eax,(%edx)
   3377d:	89 42 10             	mov    %eax,0x10(%edx)
   33780:	0f 84 15 06 00 00    	je     33d9b <_svfprintf_r+0x1edb>
   33786:	8b 45 0c             	mov    0xc(%ebp),%eax
   33789:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
   33790:	e9 6c e7 ff ff       	jmp    31f01 <_svfprintf_r+0x41>
   33795:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3379b:	89 44 24 08          	mov    %eax,0x8(%esp)
   3379f:	8b 45 0c             	mov    0xc(%ebp),%eax
   337a2:	89 44 24 04          	mov    %eax,0x4(%esp)
   337a6:	8b 45 08             	mov    0x8(%ebp),%eax
   337a9:	89 04 24             	mov    %eax,(%esp)
   337ac:	e8 8f 32 00 00       	call   36a40 <__ssprint_r>
   337b1:	85 c0                	test   %eax,%eax
   337b3:	0f 85 d7 e8 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   337b9:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   337bf:	8d 7d a8             	lea    -0x58(%ebp),%edi
   337c2:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   337c8:	e9 d9 fc ff ff       	jmp    334a6 <_svfprintf_r+0x15e6>
   337cd:	83 c0 01             	add    $0x1,%eax
   337d0:	01 da                	add    %ebx,%edx
   337d2:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   337d8:	83 c7 08             	add    $0x8,%edi
   337db:	89 5f fc             	mov    %ebx,-0x4(%edi)
   337de:	83 f8 07             	cmp    $0x7,%eax
   337e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   337e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   337ed:	7e 33                	jle    33822 <_svfprintf_r+0x1962>
   337ef:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   337f5:	89 44 24 08          	mov    %eax,0x8(%esp)
   337f9:	8b 45 0c             	mov    0xc(%ebp),%eax
   337fc:	89 44 24 04          	mov    %eax,0x4(%esp)
   33800:	8b 45 08             	mov    0x8(%ebp),%eax
   33803:	89 04 24             	mov    %eax,(%esp)
   33806:	e8 35 32 00 00       	call   36a40 <__ssprint_r>
   3380b:	85 c0                	test   %eax,%eax
   3380d:	0f 85 7d e8 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   33813:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   33819:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3381c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33822:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
   33828:	83 c0 01             	add    $0x1,%eax
   3382b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33831:	89 1f                	mov    %ebx,(%edi)
   33833:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   33839:	01 da                	add    %ebx,%edx
   3383b:	83 f8 07             	cmp    $0x7,%eax
   3383e:	89 5f 04             	mov    %ebx,0x4(%edi)
   33841:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   33847:	0f 8f 86 f5 ff ff    	jg     32dd3 <_svfprintf_r+0xf13>
   3384d:	83 c7 08             	add    $0x8,%edi
   33850:	89 d1                	mov    %edx,%ecx
   33852:	e9 15 f1 ff ff       	jmp    3296c <_svfprintf_r+0xaac>
   33857:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3385d:	89 44 24 08          	mov    %eax,0x8(%esp)
   33861:	8b 45 0c             	mov    0xc(%ebp),%eax
   33864:	89 44 24 04          	mov    %eax,0x4(%esp)
   33868:	8b 45 08             	mov    0x8(%ebp),%eax
   3386b:	89 04 24             	mov    %eax,(%esp)
   3386e:	e8 cd 31 00 00       	call   36a40 <__ssprint_r>
   33873:	85 c0                	test   %eax,%eax
   33875:	0f 85 15 e8 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   3387b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   33881:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33884:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3388a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33890:	e9 62 fc ff ff       	jmp    334f7 <_svfprintf_r+0x1637>
   33895:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
   3389c:	00 00 00 
   3389f:	e9 07 fd ff ff       	jmp    335ab <_svfprintf_r+0x16eb>
   338a4:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   338aa:	89 04 24             	mov    %eax,(%esp)
   338ad:	e8 0e 31 00 00       	call   369c0 <strlen>
   338b2:	e9 6a e8 ff ff       	jmp    32121 <_svfprintf_r+0x261>
   338b7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   338bd:	89 44 24 08          	mov    %eax,0x8(%esp)
   338c1:	8b 45 0c             	mov    0xc(%ebp),%eax
   338c4:	89 44 24 04          	mov    %eax,0x4(%esp)
   338c8:	8b 45 08             	mov    0x8(%ebp),%eax
   338cb:	89 04 24             	mov    %eax,(%esp)
   338ce:	e8 6d 31 00 00       	call   36a40 <__ssprint_r>
   338d3:	85 c0                	test   %eax,%eax
   338d5:	0f 85 b5 e7 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   338db:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   338e1:	8d 7d a8             	lea    -0x58(%ebp),%edi
   338e4:	e9 76 f6 ff ff       	jmp    32f5f <_svfprintf_r+0x109f>
   338e9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   338ef:	89 44 24 08          	mov    %eax,0x8(%esp)
   338f3:	8b 45 0c             	mov    0xc(%ebp),%eax
   338f6:	89 44 24 04          	mov    %eax,0x4(%esp)
   338fa:	8b 45 08             	mov    0x8(%ebp),%eax
   338fd:	89 04 24             	mov    %eax,(%esp)
   33900:	e8 3b 31 00 00       	call   36a40 <__ssprint_r>
   33905:	85 c0                	test   %eax,%eax
   33907:	0f 85 83 e7 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   3390d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   33913:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33916:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   3391c:	e9 f4 f8 ff ff       	jmp    33215 <_svfprintf_r+0x1355>
   33921:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33927:	89 44 24 08          	mov    %eax,0x8(%esp)
   3392b:	8b 45 0c             	mov    0xc(%ebp),%eax
   3392e:	89 44 24 04          	mov    %eax,0x4(%esp)
   33932:	8b 45 08             	mov    0x8(%ebp),%eax
   33935:	89 04 24             	mov    %eax,(%esp)
   33938:	e8 03 31 00 00       	call   36a40 <__ssprint_r>
   3393d:	85 c0                	test   %eax,%eax
   3393f:	0f 85 4b e7 ff ff    	jne    32090 <_svfprintf_r+0x1d0>
   33945:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
   3394b:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3394e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
   33954:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   3395a:	e9 fa f8 ff ff       	jmp    33259 <_svfprintf_r+0x1399>
   3395f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   33965:	b0 06                	mov    $0x6,%al
   33967:	89 75 14             	mov    %esi,0x14(%ebp)
   3396a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   33971:	00 00 00 
   33974:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   3397b:	00 00 00 
   3397e:	83 fa 06             	cmp    $0x6,%edx
   33981:	0f 46 c2             	cmovbe %edx,%eax
   33984:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
   3398a:	85 c0                	test   %eax,%eax
   3398c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   33992:	c7 85 28 ff ff ff f8 	movl   $0x398f8,-0xd8(%ebp)
   33999:	98 03 00 
   3399c:	0f 49 d0             	cmovns %eax,%edx
   3399f:	31 db                	xor    %ebx,%ebx
   339a1:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
   339a7:	e9 b7 e7 ff ff       	jmp    32163 <_svfprintf_r+0x2a3>
   339ac:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
   339b3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
   339b8:	e9 9d ea ff ff       	jmp    3245a <_svfprintf_r+0x59a>
   339bd:	ba 03 00 00 00       	mov    $0x3,%edx
   339c2:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
   339c8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
   339cc:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
   339d2:	89 44 24 18          	mov    %eax,0x18(%esp)
   339d6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
   339dc:	89 44 24 14          	mov    %eax,0x14(%esp)
   339e0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   339e6:	dd 54 24 04          	fstl   0x4(%esp)
   339ea:	89 54 24 0c          	mov    %edx,0xc(%esp)
   339ee:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
   339f4:	89 44 24 10          	mov    %eax,0x10(%esp)
   339f8:	8b 45 08             	mov    0x8(%ebp),%eax
   339fb:	89 04 24             	mov    %eax,(%esp)
   339fe:	e8 8d 05 00 00       	call   33f90 <_dtoa_r>
   33a03:	83 fb 47             	cmp    $0x47,%ebx
   33a06:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   33a0c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
   33a12:	75 09                	jne    33a1d <_svfprintf_r+0x1b5d>
   33a14:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   33a1b:	74 5b                	je     33a78 <_svfprintf_r+0x1bb8>
   33a1d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
   33a23:	89 f0                	mov    %esi,%eax
   33a25:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
   33a2b:	01 d1                	add    %edx,%ecx
   33a2d:	84 c0                	test   %al,%al
   33a2f:	0f 84 14 fc ff ff    	je     33649 <_svfprintf_r+0x1789>
   33a35:	80 3a 30             	cmpb   $0x30,(%edx)
   33a38:	0f 84 37 02 00 00    	je     33c75 <_svfprintf_r+0x1db5>
   33a3e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   33a44:	01 c1                	add    %eax,%ecx
   33a46:	e9 fe fb ff ff       	jmp    33649 <_svfprintf_r+0x1789>
   33a4b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   33a51:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
   33a57:	bb 2d 00 00 00       	mov    $0x2d,%ebx
   33a5c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
   33a63:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   33a6a:	00 00 00 
   33a6d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
   33a73:	e9 e4 e6 ff ff       	jmp    3215c <_svfprintf_r+0x29c>
   33a78:	dd d8                	fstp   %st(0)
   33a7a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
   33a80:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
   33a86:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   33a8c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
   33a92:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   33a98:	83 f8 fd             	cmp    $0xfffffffd,%eax
   33a9b:	7c 48                	jl     33ae5 <_svfprintf_r+0x1c25>
   33a9d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
   33aa3:	7c 40                	jl     33ae5 <_svfprintf_r+0x1c25>
   33aa5:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
   33aab:	e9 ea fb ff ff       	jmp    3369a <_svfprintf_r+0x17da>
   33ab0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   33ab6:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   33abd:	89 75 14             	mov    %esi,0x14(%ebp)
   33ac0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   33ac7:	00 00 00 
   33aca:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   33ad0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   33ad6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   33add:	00 00 00 
   33ae0:	e9 73 e6 ff ff       	jmp    32158 <_svfprintf_r+0x298>
   33ae5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
   33aec:	8d 48 ff             	lea    -0x1(%eax),%ecx
   33aef:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
   33af6:	85 c9                	test   %ecx,%ecx
   33af8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
   33afe:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
   33b04:	0f 88 2c 02 00 00    	js     33d36 <_svfprintf_r+0x1e76>
   33b0a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
   33b11:	83 f9 09             	cmp    $0x9,%ecx
   33b14:	0f 8f ea 00 00 00    	jg     33c04 <_svfprintf_r+0x1d44>
   33b1a:	83 c1 30             	add    $0x30,%ecx
   33b1d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
   33b24:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
   33b2a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
   33b30:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   33b36:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
   33b3c:	29 d0                	sub    %edx,%eax
   33b3e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
   33b44:	89 da                	mov    %ebx,%edx
   33b46:	01 c2                	add    %eax,%edx
   33b48:	83 fb 01             	cmp    $0x1,%ebx
   33b4b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33b51:	0f 8e 21 02 00 00    	jle    33d78 <_svfprintf_r+0x1eb8>
   33b57:	31 c0                	xor    %eax,%eax
   33b59:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
   33b60:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
   33b67:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   33b6e:	00 00 00 
   33b71:	e9 60 fb ff ff       	jmp    336d6 <_svfprintf_r+0x1816>
   33b76:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   33b7c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   33b83:	00 00 00 
   33b86:	e9 68 e4 ff ff       	jmp    31ff3 <_svfprintf_r+0x133>
   33b8b:	ba 02 00 00 00       	mov    $0x2,%edx
   33b90:	e9 2d fe ff ff       	jmp    339c2 <_svfprintf_r+0x1b02>
   33b95:	d9 e0                	fchs   
   33b97:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
   33b9e:	e9 38 fa ff ff       	jmp    335db <_svfprintf_r+0x171b>
   33ba3:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
   33ba9:	ba 01 00 00 00       	mov    $0x1,%edx
   33bae:	85 c9                	test   %ecx,%ecx
   33bb0:	0f 8e 5a 01 00 00    	jle    33d10 <_svfprintf_r+0x1e50>
   33bb6:	31 c0                	xor    %eax,%eax
   33bb8:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
   33bbe:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
   33bc5:	00 00 00 
   33bc8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33bce:	0f 49 c2             	cmovns %edx,%eax
   33bd1:	e9 00 fb ff ff       	jmp    336d6 <_svfprintf_r+0x1816>
   33bd6:	85 c0                	test   %eax,%eax
   33bd8:	0f 8e 06 01 00 00    	jle    33ce4 <_svfprintf_r+0x1e24>
   33bde:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
   33be4:	85 f6                	test   %esi,%esi
   33be6:	0f 85 d4 00 00 00    	jne    33cc0 <_svfprintf_r+0x1e00>
   33bec:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   33bf3:	0f 85 c7 00 00 00    	jne    33cc0 <_svfprintf_r+0x1e00>
   33bf9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   33bff:	e9 d2 fa ff ff       	jmp    336d6 <_svfprintf_r+0x1816>
   33c04:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
   33c0a:	89 f3                	mov    %esi,%ebx
   33c0c:	b8 67 66 66 66       	mov    $0x66666667,%eax
   33c11:	83 eb 01             	sub    $0x1,%ebx
   33c14:	f7 e9                	imul   %ecx
   33c16:	89 c8                	mov    %ecx,%eax
   33c18:	c1 f8 1f             	sar    $0x1f,%eax
   33c1b:	c1 fa 02             	sar    $0x2,%edx
   33c1e:	29 c2                	sub    %eax,%edx
   33c20:	8d 04 92             	lea    (%edx,%edx,4),%eax
   33c23:	01 c0                	add    %eax,%eax
   33c25:	29 c1                	sub    %eax,%ecx
   33c27:	83 fa 09             	cmp    $0x9,%edx
   33c2a:	8d 41 30             	lea    0x30(%ecx),%eax
   33c2d:	89 d1                	mov    %edx,%ecx
   33c2f:	88 03                	mov    %al,(%ebx)
   33c31:	7f d9                	jg     33c0c <_svfprintf_r+0x1d4c>
   33c33:	8d 43 ff             	lea    -0x1(%ebx),%eax
   33c36:	83 c1 30             	add    $0x30,%ecx
   33c39:	39 f0                	cmp    %esi,%eax
   33c3b:	88 4b ff             	mov    %cl,-0x1(%ebx)
   33c3e:	0f 83 6a 01 00 00    	jae    33dae <_svfprintf_r+0x1eee>
   33c44:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
   33c4a:	eb 07                	jmp    33c53 <_svfprintf_r+0x1d93>
   33c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33c50:	0f b6 08             	movzbl (%eax),%ecx
   33c53:	83 c0 01             	add    $0x1,%eax
   33c56:	83 c2 01             	add    $0x1,%edx
   33c59:	39 f0                	cmp    %esi,%eax
   33c5b:	88 4a ff             	mov    %cl,-0x1(%edx)
   33c5e:	75 f0                	jne    33c50 <_svfprintf_r+0x1d90>
   33c60:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33c66:	29 d8                	sub    %ebx,%eax
   33c68:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
   33c6e:	01 d0                	add    %edx,%eax
   33c70:	e9 bb fe ff ff       	jmp    33b30 <_svfprintf_r+0x1c70>
   33c75:	d9 ee                	fldz   
   33c77:	d9 c9                	fxch   %st(1)
   33c79:	db e9                	fucomi %st(1),%st
   33c7b:	dd d9                	fstp   %st(1)
   33c7d:	7a 06                	jp     33c85 <_svfprintf_r+0x1dc5>
   33c7f:	0f 84 b9 fd ff ff    	je     33a3e <_svfprintf_r+0x1b7e>
   33c85:	b8 01 00 00 00       	mov    $0x1,%eax
   33c8a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
   33c90:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
   33c96:	01 c1                	add    %eax,%ecx
   33c98:	e9 ac f9 ff ff       	jmp    33649 <_svfprintf_r+0x1789>
   33c9d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   33ca3:	31 c0                	xor    %eax,%eax
   33ca5:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
   33cac:	00 00 00 
   33caf:	83 c2 01             	add    $0x1,%edx
   33cb2:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33cb8:	0f 49 c2             	cmovns %edx,%eax
   33cbb:	e9 16 fa ff ff       	jmp    336d6 <_svfprintf_r+0x1816>
   33cc0:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   33cc6:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   33ccc:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
   33cd0:	89 c2                	mov    %eax,%edx
   33cd2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   33cd8:	31 c0                	xor    %eax,%eax
   33cda:	85 d2                	test   %edx,%edx
   33cdc:	0f 49 c2             	cmovns %edx,%eax
   33cdf:	e9 f2 f9 ff ff       	jmp    336d6 <_svfprintf_r+0x1816>
   33ce4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
   33cea:	85 db                	test   %ebx,%ebx
   33cec:	75 2f                	jne    33d1d <_svfprintf_r+0x1e5d>
   33cee:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   33cf5:	75 26                	jne    33d1d <_svfprintf_r+0x1e5d>
   33cf7:	b8 01 00 00 00       	mov    $0x1,%eax
   33cfc:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
   33d03:	00 00 00 
   33d06:	e9 cb f9 ff ff       	jmp    336d6 <_svfprintf_r+0x1816>
   33d0b:	90                   	nop
   33d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33d10:	b2 02                	mov    $0x2,%dl
   33d12:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
   33d18:	e9 99 fe ff ff       	jmp    33bb6 <_svfprintf_r+0x1cf6>
   33d1d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   33d23:	31 c0                	xor    %eax,%eax
   33d25:	83 c2 02             	add    $0x2,%edx
   33d28:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33d2e:	0f 49 c2             	cmovns %edx,%eax
   33d31:	e9 a0 f9 ff ff       	jmp    336d6 <_svfprintf_r+0x1816>
   33d36:	f7 d9                	neg    %ecx
   33d38:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
   33d3f:	e9 cd fd ff ff       	jmp    33b11 <_svfprintf_r+0x1c51>
   33d44:	8b 55 14             	mov    0x14(%ebp),%edx
   33d47:	8b 45 14             	mov    0x14(%ebp),%eax
   33d4a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   33d50:	8b 12                	mov    (%edx),%edx
   33d52:	83 c0 04             	add    $0x4,%eax
   33d55:	89 45 14             	mov    %eax,0x14(%ebp)
   33d58:	85 d2                	test   %edx,%edx
   33d5a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
   33d60:	0f 89 a9 e2 ff ff    	jns    3200f <_svfprintf_r+0x14f>
   33d66:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
   33d6d:	ff ff ff 
   33d70:	89 c8                	mov    %ecx,%eax
   33d72:	e9 76 e2 ff ff       	jmp    31fed <_svfprintf_r+0x12d>
   33d77:	90                   	nop
   33d78:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
   33d7e:	83 e0 01             	and    $0x1,%eax
   33d81:	0f 85 d0 fd ff ff    	jne    33b57 <_svfprintf_r+0x1c97>
   33d87:	85 d2                	test   %edx,%edx
   33d89:	0f 49 c2             	cmovns %edx,%eax
   33d8c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   33d93:	00 00 00 
   33d96:	e9 3b f9 ff ff       	jmp    336d6 <_svfprintf_r+0x1816>
   33d9b:	8b 45 08             	mov    0x8(%ebp),%eax
   33d9e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   33da4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   33da9:	e9 f5 e2 ff ff       	jmp    320a3 <_svfprintf_r+0x1e3>
   33dae:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
   33db4:	e9 77 fd ff ff       	jmp    33b30 <_svfprintf_r+0x1c70>
   33db9:	66 90                	xchg   %ax,%ax
   33dbb:	66 90                	xchg   %ax,%ax
   33dbd:	66 90                	xchg   %ax,%ax
   33dbf:	90                   	nop

00033dc0 <quorem>:
   33dc0:	55                   	push   %ebp
   33dc1:	89 c1                	mov    %eax,%ecx
   33dc3:	89 e5                	mov    %esp,%ebp
   33dc5:	57                   	push   %edi
   33dc6:	89 d7                	mov    %edx,%edi
   33dc8:	56                   	push   %esi
   33dc9:	53                   	push   %ebx
   33dca:	83 ec 3c             	sub    $0x3c,%esp
   33dcd:	89 45 d0             	mov    %eax,-0x30(%ebp)
   33dd0:	8b 42 10             	mov    0x10(%edx),%eax
   33dd3:	3b 41 10             	cmp    0x10(%ecx),%eax
   33dd6:	89 55 c8             	mov    %edx,-0x38(%ebp)
   33dd9:	89 ca                	mov    %ecx,%edx
   33ddb:	0f 8f 9f 01 00 00    	jg     33f80 <quorem+0x1c0>
   33de1:	83 e8 01             	sub    $0x1,%eax
   33de4:	83 c7 14             	add    $0x14,%edi
   33de7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   33dea:	c1 e0 02             	shl    $0x2,%eax
   33ded:	83 c2 14             	add    $0x14,%edx
   33df0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
   33df3:	01 d0                	add    %edx,%eax
   33df5:	89 55 d8             	mov    %edx,-0x28(%ebp)
   33df8:	8b 13                	mov    (%ebx),%edx
   33dfa:	89 45 c4             	mov    %eax,-0x3c(%ebp)
   33dfd:	8b 00                	mov    (%eax),%eax
   33dff:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
   33e02:	8d 4a 01             	lea    0x1(%edx),%ecx
   33e05:	31 d2                	xor    %edx,%edx
   33e07:	f7 f1                	div    %ecx
   33e09:	85 c0                	test   %eax,%eax
   33e0b:	89 45 e0             	mov    %eax,-0x20(%ebp)
   33e0e:	89 45 cc             	mov    %eax,-0x34(%ebp)
   33e11:	0f 84 b5 00 00 00    	je     33ecc <quorem+0x10c>
   33e17:	8b 45 d8             	mov    -0x28(%ebp),%eax
   33e1a:	31 f6                	xor    %esi,%esi
   33e1c:	89 fa                	mov    %edi,%edx
   33e1e:	89 7d c0             	mov    %edi,-0x40(%ebp)
   33e21:	89 f7                	mov    %esi,%edi
   33e23:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
   33e2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   33e30:	83 c2 04             	add    $0x4,%edx
   33e33:	8b 72 fc             	mov    -0x4(%edx),%esi
   33e36:	83 c0 04             	add    $0x4,%eax
   33e39:	0f b7 ce             	movzwl %si,%ecx
   33e3c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
   33e40:	03 4d dc             	add    -0x24(%ebp),%ecx
   33e43:	c1 ee 10             	shr    $0x10,%esi
   33e46:	0f af 75 e0          	imul   -0x20(%ebp),%esi
   33e4a:	89 cb                	mov    %ecx,%ebx
   33e4c:	0f b7 c9             	movzwl %cx,%ecx
   33e4f:	c1 eb 10             	shr    $0x10,%ebx
   33e52:	29 cf                	sub    %ecx,%edi
   33e54:	01 f3                	add    %esi,%ebx
   33e56:	89 de                	mov    %ebx,%esi
   33e58:	0f b7 db             	movzwl %bx,%ebx
   33e5b:	c1 ee 10             	shr    $0x10,%esi
   33e5e:	89 75 dc             	mov    %esi,-0x24(%ebp)
   33e61:	8b 70 fc             	mov    -0x4(%eax),%esi
   33e64:	0f b7 ce             	movzwl %si,%ecx
   33e67:	01 f9                	add    %edi,%ecx
   33e69:	c1 ee 10             	shr    $0x10,%esi
   33e6c:	29 de                	sub    %ebx,%esi
   33e6e:	89 cb                	mov    %ecx,%ebx
   33e70:	c1 fb 10             	sar    $0x10,%ebx
   33e73:	0f b7 c9             	movzwl %cx,%ecx
   33e76:	01 de                	add    %ebx,%esi
   33e78:	89 f7                	mov    %esi,%edi
   33e7a:	c1 e6 10             	shl    $0x10,%esi
   33e7d:	09 ce                	or     %ecx,%esi
   33e7f:	c1 ff 10             	sar    $0x10,%edi
   33e82:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
   33e85:	89 70 fc             	mov    %esi,-0x4(%eax)
   33e88:	73 a6                	jae    33e30 <quorem+0x70>
   33e8a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
   33e8d:	8b 7d c0             	mov    -0x40(%ebp),%edi
   33e90:	8b 10                	mov    (%eax),%edx
   33e92:	85 d2                	test   %edx,%edx
   33e94:	75 36                	jne    33ecc <quorem+0x10c>
   33e96:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   33e99:	89 c2                	mov    %eax,%edx
   33e9b:	83 e8 04             	sub    $0x4,%eax
   33e9e:	39 c1                	cmp    %eax,%ecx
   33ea0:	73 21                	jae    33ec3 <quorem+0x103>
   33ea2:	8b 72 fc             	mov    -0x4(%edx),%esi
   33ea5:	85 f6                	test   %esi,%esi
   33ea7:	75 1a                	jne    33ec3 <quorem+0x103>
   33ea9:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   33eac:	eb 08                	jmp    33eb6 <quorem+0xf6>
   33eae:	66 90                	xchg   %ax,%ax
   33eb0:	8b 18                	mov    (%eax),%ebx
   33eb2:	85 db                	test   %ebx,%ebx
   33eb4:	75 0a                	jne    33ec0 <quorem+0x100>
   33eb6:	83 e8 04             	sub    $0x4,%eax
   33eb9:	83 ea 01             	sub    $0x1,%edx
   33ebc:	39 c1                	cmp    %eax,%ecx
   33ebe:	72 f0                	jb     33eb0 <quorem+0xf0>
   33ec0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   33ec3:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33ec6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   33ec9:	89 50 10             	mov    %edx,0x10(%eax)
   33ecc:	8b 45 c8             	mov    -0x38(%ebp),%eax
   33ecf:	89 44 24 04          	mov    %eax,0x4(%esp)
   33ed3:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33ed6:	89 04 24             	mov    %eax,(%esp)
   33ed9:	e8 a2 23 00 00       	call   36280 <__mcmp>
   33ede:	85 c0                	test   %eax,%eax
   33ee0:	0f 88 8e 00 00 00    	js     33f74 <quorem+0x1b4>
   33ee6:	8b 45 e0             	mov    -0x20(%ebp),%eax
   33ee9:	31 f6                	xor    %esi,%esi
   33eeb:	83 c0 01             	add    $0x1,%eax
   33eee:	89 45 cc             	mov    %eax,-0x34(%ebp)
   33ef1:	8b 45 d8             	mov    -0x28(%ebp),%eax
   33ef4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33ef8:	83 c7 04             	add    $0x4,%edi
   33efb:	8b 4f fc             	mov    -0x4(%edi),%ecx
   33efe:	83 c0 04             	add    $0x4,%eax
   33f01:	8b 58 fc             	mov    -0x4(%eax),%ebx
   33f04:	0f b7 d1             	movzwl %cx,%edx
   33f07:	29 d6                	sub    %edx,%esi
   33f09:	0f b7 d3             	movzwl %bx,%edx
   33f0c:	01 f2                	add    %esi,%edx
   33f0e:	c1 e9 10             	shr    $0x10,%ecx
   33f11:	c1 eb 10             	shr    $0x10,%ebx
   33f14:	29 cb                	sub    %ecx,%ebx
   33f16:	89 d1                	mov    %edx,%ecx
   33f18:	c1 f9 10             	sar    $0x10,%ecx
   33f1b:	0f b7 d2             	movzwl %dx,%edx
   33f1e:	01 cb                	add    %ecx,%ebx
   33f20:	89 de                	mov    %ebx,%esi
   33f22:	c1 e3 10             	shl    $0x10,%ebx
   33f25:	09 d3                	or     %edx,%ebx
   33f27:	c1 fe 10             	sar    $0x10,%esi
   33f2a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
   33f2d:	89 58 fc             	mov    %ebx,-0x4(%eax)
   33f30:	73 c6                	jae    33ef8 <quorem+0x138>
   33f32:	8b 45 d8             	mov    -0x28(%ebp),%eax
   33f35:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   33f38:	8d 14 b8             	lea    (%eax,%edi,4),%edx
   33f3b:	8b 02                	mov    (%edx),%eax
   33f3d:	85 c0                	test   %eax,%eax
   33f3f:	75 33                	jne    33f74 <quorem+0x1b4>
   33f41:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   33f44:	8d 42 fc             	lea    -0x4(%edx),%eax
   33f47:	39 c1                	cmp    %eax,%ecx
   33f49:	73 20                	jae    33f6b <quorem+0x1ab>
   33f4b:	8b 72 fc             	mov    -0x4(%edx),%esi
   33f4e:	85 f6                	test   %esi,%esi
   33f50:	75 19                	jne    33f6b <quorem+0x1ab>
   33f52:	89 fa                	mov    %edi,%edx
   33f54:	eb 08                	jmp    33f5e <quorem+0x19e>
   33f56:	66 90                	xchg   %ax,%ax
   33f58:	8b 18                	mov    (%eax),%ebx
   33f5a:	85 db                	test   %ebx,%ebx
   33f5c:	75 0a                	jne    33f68 <quorem+0x1a8>
   33f5e:	83 e8 04             	sub    $0x4,%eax
   33f61:	83 ea 01             	sub    $0x1,%edx
   33f64:	39 c1                	cmp    %eax,%ecx
   33f66:	72 f0                	jb     33f58 <quorem+0x198>
   33f68:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   33f6b:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33f6e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   33f71:	89 78 10             	mov    %edi,0x10(%eax)
   33f74:	8b 45 cc             	mov    -0x34(%ebp),%eax
   33f77:	83 c4 3c             	add    $0x3c,%esp
   33f7a:	5b                   	pop    %ebx
   33f7b:	5e                   	pop    %esi
   33f7c:	5f                   	pop    %edi
   33f7d:	5d                   	pop    %ebp
   33f7e:	c3                   	ret    
   33f7f:	90                   	nop
   33f80:	83 c4 3c             	add    $0x3c,%esp
   33f83:	31 c0                	xor    %eax,%eax
   33f85:	5b                   	pop    %ebx
   33f86:	5e                   	pop    %esi
   33f87:	5f                   	pop    %edi
   33f88:	5d                   	pop    %ebp
   33f89:	c3                   	ret    
   33f8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00033f90 <_dtoa_r>:
   33f90:	55                   	push   %ebp
   33f91:	89 e5                	mov    %esp,%ebp
   33f93:	57                   	push   %edi
   33f94:	56                   	push   %esi
   33f95:	53                   	push   %ebx
   33f96:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
   33f9c:	8b 75 08             	mov    0x8(%ebp),%esi
   33f9f:	dd 45 0c             	fldl   0xc(%ebp)
   33fa2:	8b 5d 20             	mov    0x20(%ebp),%ebx
   33fa5:	dd 5d c0             	fstpl  -0x40(%ebp)
   33fa8:	8b 46 40             	mov    0x40(%esi),%eax
   33fab:	85 c0                	test   %eax,%eax
   33fad:	74 23                	je     33fd2 <_dtoa_r+0x42>
   33faf:	8b 4e 44             	mov    0x44(%esi),%ecx
   33fb2:	ba 01 00 00 00       	mov    $0x1,%edx
   33fb7:	d3 e2                	shl    %cl,%edx
   33fb9:	89 48 04             	mov    %ecx,0x4(%eax)
   33fbc:	89 50 08             	mov    %edx,0x8(%eax)
   33fbf:	89 44 24 04          	mov    %eax,0x4(%esp)
   33fc3:	89 34 24             	mov    %esi,(%esp)
   33fc6:	e8 95 1b 00 00       	call   35b60 <_Bfree>
   33fcb:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
   33fd2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
   33fd5:	85 ff                	test   %edi,%edi
   33fd7:	0f 88 3b 02 00 00    	js     34218 <_dtoa_r+0x288>
   33fdd:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
   33fe3:	89 f8                	mov    %edi,%eax
   33fe5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
   33fea:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
   33fef:	0f 84 e3 01 00 00    	je     341d8 <_dtoa_r+0x248>
   33ff5:	dd 45 c0             	fldl   -0x40(%ebp)
   33ff8:	d9 ee                	fldz   
   33ffa:	d9 c9                	fxch   %st(1)
   33ffc:	db e9                	fucomi %st(1),%st
   33ffe:	dd d9                	fstp   %st(1)
   34000:	7a 36                	jp     34038 <_dtoa_r+0xa8>
   34002:	75 34                	jne    34038 <_dtoa_r+0xa8>
   34004:	dd d8                	fstp   %st(0)
   34006:	8b 4d 24             	mov    0x24(%ebp),%ecx
   34009:	8b 45 1c             	mov    0x1c(%ebp),%eax
   3400c:	85 c9                	test   %ecx,%ecx
   3400e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
   34014:	0f 84 4e 02 00 00    	je     34268 <_dtoa_r+0x2d8>
   3401a:	8b 45 24             	mov    0x24(%ebp),%eax
   3401d:	c7 00 00 99 03 00    	movl   $0x39900,(%eax)
   34023:	b8 ff 98 03 00       	mov    $0x398ff,%eax
   34028:	81 c4 8c 00 00 00    	add    $0x8c,%esp
   3402e:	5b                   	pop    %ebx
   3402f:	5e                   	pop    %esi
   34030:	5f                   	pop    %edi
   34031:	5d                   	pop    %ebp
   34032:	c3                   	ret    
   34033:	90                   	nop
   34034:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34038:	8d 45 e0             	lea    -0x20(%ebp),%eax
   3403b:	89 fb                	mov    %edi,%ebx
   3403d:	89 44 24 10          	mov    %eax,0x10(%esp)
   34041:	8d 45 e4             	lea    -0x1c(%ebp),%eax
   34044:	dd 54 24 04          	fstl   0x4(%esp)
   34048:	89 44 24 0c          	mov    %eax,0xc(%esp)
   3404c:	dd 5d b8             	fstpl  -0x48(%ebp)
   3404f:	89 34 24             	mov    %esi,(%esp)
   34052:	c1 eb 14             	shr    $0x14,%ebx
   34055:	e8 76 25 00 00       	call   365d0 <__d2b>
   3405a:	85 db                	test   %ebx,%ebx
   3405c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   3405f:	0f 85 db 01 00 00    	jne    34240 <_dtoa_r+0x2b0>
   34065:	8b 45 e0             	mov    -0x20(%ebp),%eax
   34068:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
   3406b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   3406e:	01 c3                	add    %eax,%ebx
   34070:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
   34076:	0f 8c ec 07 00 00    	jl     34868 <_dtoa_r+0x8d8>
   3407c:	8b 55 c0             	mov    -0x40(%ebp),%edx
   3407f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
   34084:	89 f8                	mov    %edi,%eax
   34086:	29 d9                	sub    %ebx,%ecx
   34088:	d3 e0                	shl    %cl,%eax
   3408a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
   34090:	d3 ea                	shr    %cl,%edx
   34092:	09 d0                	or     %edx,%eax
   34094:	31 d2                	xor    %edx,%edx
   34096:	83 eb 01             	sub    $0x1,%ebx
   34099:	89 55 cc             	mov    %edx,-0x34(%ebp)
   3409c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
   3409f:	89 45 c8             	mov    %eax,-0x38(%ebp)
   340a2:	df 6d c8             	fildll -0x38(%ebp)
   340a5:	dd 5d b8             	fstpl  -0x48(%ebp)
   340a8:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
   340af:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
   340b6:	dd 45 b8             	fldl   -0x48(%ebp)
   340b9:	d8 25 98 9a 03 00    	fsubs  0x39a98
   340bf:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
   340c2:	d9 7d d2             	fnstcw -0x2e(%ebp)
   340c5:	dc 0d b0 9a 03 00    	fmull  0x39ab0
   340cb:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   340cf:	b4 0c                	mov    $0xc,%ah
   340d1:	dc 05 b8 9a 03 00    	faddl  0x39ab8
   340d7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   340db:	db 45 d4             	fildl  -0x2c(%ebp)
   340de:	dc 0d c0 9a 03 00    	fmull  0x39ac0
   340e4:	de c1                	faddp  %st,%st(1)
   340e6:	d9 6d d0             	fldcw  -0x30(%ebp)
   340e9:	db 55 b8             	fistl  -0x48(%ebp)
   340ec:	d9 6d d2             	fldcw  -0x2e(%ebp)
   340ef:	d9 ee                	fldz   
   340f1:	df e9                	fucomip %st(1),%st
   340f3:	0f 87 27 07 00 00    	ja     34820 <_dtoa_r+0x890>
   340f9:	dd d8                	fstp   %st(0)
   340fb:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
   340ff:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
   34106:	77 24                	ja     3412c <_dtoa_r+0x19c>
   34108:	8b 45 b8             	mov    -0x48(%ebp),%eax
   3410b:	dd 04 c5 80 9b 03 00 	fldl   0x39b80(,%eax,8)
   34112:	dd 45 c0             	fldl   -0x40(%ebp)
   34115:	d9 c9                	fxch   %st(1)
   34117:	df e9                	fucomip %st(1),%st
   34119:	dd d8                	fstp   %st(0)
   3411b:	0f 86 5f 07 00 00    	jbe    34880 <_dtoa_r+0x8f0>
   34121:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
   34125:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
   3412c:	89 d0                	mov    %edx,%eax
   3412e:	29 d8                	sub    %ebx,%eax
   34130:	83 e8 01             	sub    $0x1,%eax
   34133:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
   3413a:	89 45 ac             	mov    %eax,-0x54(%ebp)
   3413d:	0f 88 0d 07 00 00    	js     34850 <_dtoa_r+0x8c0>
   34143:	8b 45 b8             	mov    -0x48(%ebp),%eax
   34146:	85 c0                	test   %eax,%eax
   34148:	0f 88 ea 06 00 00    	js     34838 <_dtoa_r+0x8a8>
   3414e:	01 45 ac             	add    %eax,-0x54(%ebp)
   34151:	89 45 94             	mov    %eax,-0x6c(%ebp)
   34154:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   3415b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
   3415f:	0f 87 0b 03 00 00    	ja     34470 <_dtoa_r+0x4e0>
   34165:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
   34169:	0f 8e 23 10 00 00    	jle    35192 <_dtoa_r+0x1202>
   3416f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
   34173:	31 c0                	xor    %eax,%eax
   34175:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
   34179:	0f 84 43 0d 00 00    	je     34ec2 <_dtoa_r+0xf32>
   3417f:	0f 8e f3 00 00 00    	jle    34278 <_dtoa_r+0x2e8>
   34185:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
   34189:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
   34190:	0f 84 f3 00 00 00    	je     34289 <_dtoa_r+0x2f9>
   34196:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
   3419a:	0f 85 d7 02 00 00    	jne    34477 <_dtoa_r+0x4e7>
   341a0:	8b 5d b8             	mov    -0x48(%ebp),%ebx
   341a3:	03 5d 18             	add    0x18(%ebp),%ebx
   341a6:	89 5d 90             	mov    %ebx,-0x70(%ebp)
   341a9:	83 c3 01             	add    $0x1,%ebx
   341ac:	83 fb 0e             	cmp    $0xe,%ebx
   341af:	0f 96 c2             	setbe  %dl
   341b2:	85 db                	test   %ebx,%ebx
   341b4:	89 5d a8             	mov    %ebx,-0x58(%ebp)
   341b7:	0f 8e a7 08 00 00    	jle    34a64 <_dtoa_r+0xad4>
   341bd:	8b 5d a8             	mov    -0x58(%ebp),%ebx
   341c0:	83 fb 0e             	cmp    $0xe,%ebx
   341c3:	89 df                	mov    %ebx,%edi
   341c5:	0f 96 45 b4          	setbe  -0x4c(%ebp)
   341c9:	20 45 b4             	and    %al,-0x4c(%ebp)
   341cc:	e9 d6 00 00 00       	jmp    342a7 <_dtoa_r+0x317>
   341d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   341d8:	8b 55 c0             	mov    -0x40(%ebp),%edx
   341db:	8b 45 1c             	mov    0x1c(%ebp),%eax
   341de:	85 d2                	test   %edx,%edx
   341e0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
   341e6:	b8 91 9a 03 00       	mov    $0x39a91,%eax
   341eb:	74 43                	je     34230 <_dtoa_r+0x2a0>
   341ed:	8b 5d 24             	mov    0x24(%ebp),%ebx
   341f0:	85 db                	test   %ebx,%ebx
   341f2:	0f 84 30 fe ff ff    	je     34028 <_dtoa_r+0x98>
   341f8:	8b 75 24             	mov    0x24(%ebp),%esi
   341fb:	8d 50 08             	lea    0x8(%eax),%edx
   341fe:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
   34202:	8d 48 03             	lea    0x3(%eax),%ecx
   34205:	0f 44 d1             	cmove  %ecx,%edx
   34208:	89 16                	mov    %edx,(%esi)
   3420a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
   34210:	5b                   	pop    %ebx
   34211:	5e                   	pop    %esi
   34212:	5f                   	pop    %edi
   34213:	5d                   	pop    %ebp
   34214:	c3                   	ret    
   34215:	8d 76 00             	lea    0x0(%esi),%esi
   34218:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
   3421e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
   34224:	89 7d c4             	mov    %edi,-0x3c(%ebp)
   34227:	e9 b7 fd ff ff       	jmp    33fe3 <_dtoa_r+0x53>
   3422c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34230:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
   34236:	ba 88 9a 03 00       	mov    $0x39a88,%edx
   3423b:	0f 44 c2             	cmove  %edx,%eax
   3423e:	eb ad                	jmp    341ed <_dtoa_r+0x25d>
   34240:	8b 45 bc             	mov    -0x44(%ebp),%eax
   34243:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
   34249:	8b 55 e0             	mov    -0x20(%ebp),%edx
   3424c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
   34253:	25 ff ff 0f 00       	and    $0xfffff,%eax
   34258:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   3425d:	89 45 bc             	mov    %eax,-0x44(%ebp)
   34260:	e9 51 fe ff ff       	jmp    340b6 <_dtoa_r+0x126>
   34265:	8d 76 00             	lea    0x0(%esi),%esi
   34268:	b8 ff 98 03 00       	mov    $0x398ff,%eax
   3426d:	e9 b6 fd ff ff       	jmp    34028 <_dtoa_r+0x98>
   34272:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34278:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   3427c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
   34283:	0f 85 ee 01 00 00    	jne    34477 <_dtoa_r+0x4e7>
   34289:	8b 55 18             	mov    0x18(%ebp),%edx
   3428c:	85 d2                	test   %edx,%edx
   3428e:	0f 8e b6 07 00 00    	jle    34a4a <_dtoa_r+0xaba>
   34294:	8b 7d 18             	mov    0x18(%ebp),%edi
   34297:	83 ff 0e             	cmp    $0xe,%edi
   3429a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
   3429e:	20 45 b4             	and    %al,-0x4c(%ebp)
   342a1:	89 7d 90             	mov    %edi,-0x70(%ebp)
   342a4:	89 7d a8             	mov    %edi,-0x58(%ebp)
   342a7:	83 ff 17             	cmp    $0x17,%edi
   342aa:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
   342b1:	0f 86 e5 0e 00 00    	jbe    3519c <_dtoa_r+0x120c>
   342b7:	b9 01 00 00 00       	mov    $0x1,%ecx
   342bc:	b8 04 00 00 00       	mov    $0x4,%eax
   342c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   342c8:	01 c0                	add    %eax,%eax
   342ca:	89 ca                	mov    %ecx,%edx
   342cc:	8d 58 14             	lea    0x14(%eax),%ebx
   342cf:	39 fb                	cmp    %edi,%ebx
   342d1:	8d 49 01             	lea    0x1(%ecx),%ecx
   342d4:	76 f2                	jbe    342c8 <_dtoa_r+0x338>
   342d6:	89 56 44             	mov    %edx,0x44(%esi)
   342d9:	89 54 24 04          	mov    %edx,0x4(%esp)
   342dd:	89 34 24             	mov    %esi,(%esp)
   342e0:	e8 db 17 00 00       	call   35ac0 <_Balloc>
   342e5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
   342e9:	89 c7                	mov    %eax,%edi
   342eb:	89 46 40             	mov    %eax,0x40(%esi)
   342ee:	0f 84 bb 01 00 00    	je     344af <_dtoa_r+0x51f>
   342f4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
   342f7:	dd 45 c0             	fldl   -0x40(%ebp)
   342fa:	85 db                	test   %ebx,%ebx
   342fc:	0f 8e de 07 00 00    	jle    34ae0 <_dtoa_r+0xb50>
   34302:	89 d8                	mov    %ebx,%eax
   34304:	83 e0 0f             	and    $0xf,%eax
   34307:	dd 04 c5 80 9b 03 00 	fldl   0x39b80(,%eax,8)
   3430e:	89 d8                	mov    %ebx,%eax
   34310:	c1 f8 04             	sar    $0x4,%eax
   34313:	a8 10                	test   $0x10,%al
   34315:	0f 84 cd 05 00 00    	je     348e8 <_dtoa_r+0x958>
   3431b:	dd 05 60 9b 03 00    	fldl   0x39b60
   34321:	83 e0 0f             	and    $0xf,%eax
   34324:	b9 03 00 00 00       	mov    $0x3,%ecx
   34329:	d8 fa                	fdivr  %st(2),%st
   3432b:	85 c0                	test   %eax,%eax
   3432d:	74 22                	je     34351 <_dtoa_r+0x3c1>
   3432f:	31 d2                	xor    %edx,%edx
   34331:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34338:	a8 01                	test   $0x1,%al
   3433a:	74 0e                	je     3434a <_dtoa_r+0x3ba>
   3433c:	d9 c9                	fxch   %st(1)
   3433e:	dc 0c d5 40 9b 03 00 	fmull  0x39b40(,%edx,8)
   34345:	d9 c9                	fxch   %st(1)
   34347:	83 c1 01             	add    $0x1,%ecx
   3434a:	83 c2 01             	add    $0x1,%edx
   3434d:	d1 f8                	sar    %eax
   3434f:	75 e7                	jne    34338 <_dtoa_r+0x3a8>
   34351:	de f1                	fdivp  %st,%st(1)
   34353:	8b 45 9c             	mov    -0x64(%ebp),%eax
   34356:	85 c0                	test   %eax,%eax
   34358:	74 0a                	je     34364 <_dtoa_r+0x3d4>
   3435a:	d9 e8                	fld1   
   3435c:	df e9                	fucomip %st(1),%st
   3435e:	0f 87 92 0b 00 00    	ja     34ef6 <_dtoa_r+0xf66>
   34364:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   34367:	8b 45 a8             	mov    -0x58(%ebp),%eax
   3436a:	db 45 d4             	fildl  -0x2c(%ebp)
   3436d:	d8 c9                	fmul   %st(1),%st
   3436f:	d8 05 a4 9a 03 00    	fadds  0x39aa4
   34375:	dd 5d c0             	fstpl  -0x40(%ebp)
   34378:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
   3437f:	85 c0                	test   %eax,%eax
   34381:	0f 84 89 05 00 00    	je     34910 <_dtoa_r+0x980>
   34387:	8b 45 b8             	mov    -0x48(%ebp),%eax
   3438a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
   3438d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34390:	8b 45 98             	mov    -0x68(%ebp),%eax
   34393:	85 c0                	test   %eax,%eax
   34395:	0f 84 b5 07 00 00    	je     34b50 <_dtoa_r+0xbc0>
   3439b:	d9 05 ac 9a 03 00    	flds   0x39aac
   343a1:	8d 57 01             	lea    0x1(%edi),%edx
   343a4:	dc 34 cd 78 9b 03 00 	fdivl  0x39b78(,%ecx,8)
   343ab:	d9 7d d2             	fnstcw -0x2e(%ebp)
   343ae:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   343b2:	b4 0c                	mov    $0xc,%ah
   343b4:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   343b8:	dc 65 c0             	fsubl  -0x40(%ebp)
   343bb:	d9 c9                	fxch   %st(1)
   343bd:	d9 6d d0             	fldcw  -0x30(%ebp)
   343c0:	db 55 d4             	fistl  -0x2c(%ebp)
   343c3:	d9 6d d2             	fldcw  -0x2e(%ebp)
   343c6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   343c9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   343cc:	83 c0 30             	add    $0x30,%eax
   343cf:	db 45 d4             	fildl  -0x2c(%ebp)
   343d2:	de e9                	fsubrp %st,%st(1)
   343d4:	d9 c9                	fxch   %st(1)
   343d6:	88 07                	mov    %al,(%edi)
   343d8:	db e9                	fucomi %st(1),%st
   343da:	77 7f                	ja     3445b <_dtoa_r+0x4cb>
   343dc:	d9 c1                	fld    %st(1)
   343de:	d8 2d 9c 9a 03 00    	fsubrs 0x39a9c
   343e4:	d9 c9                	fxch   %st(1)
   343e6:	db e9                	fucomi %st(1),%st
   343e8:	dd d9                	fstp   %st(1)
   343ea:	0f 87 33 0c 00 00    	ja     35023 <_dtoa_r+0x1093>
   343f0:	83 f9 01             	cmp    $0x1,%ecx
   343f3:	0f 8e c4 06 00 00    	jle    34abd <_dtoa_r+0xb2d>
   343f9:	01 f9                	add    %edi,%ecx
   343fb:	d9 05 a0 9a 03 00    	flds   0x39aa0
   34401:	eb 25                	jmp    34428 <_dtoa_r+0x498>
   34403:	90                   	nop
   34404:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34408:	d9 c1                	fld    %st(1)
   3440a:	d8 2d 9c 9a 03 00    	fsubrs 0x39a9c
   34410:	d9 c9                	fxch   %st(1)
   34412:	db e9                	fucomi %st(1),%st
   34414:	dd d9                	fstp   %st(1)
   34416:	0f 87 14 0c 00 00    	ja     35030 <_dtoa_r+0x10a0>
   3441c:	39 ca                	cmp    %ecx,%edx
   3441e:	0f 84 a4 06 00 00    	je     34ac8 <_dtoa_r+0xb38>
   34424:	d9 c9                	fxch   %st(1)
   34426:	d9 ca                	fxch   %st(2)
   34428:	dc c9                	fmul   %st,%st(1)
   3442a:	83 c2 01             	add    $0x1,%edx
   3442d:	dc ca                	fmul   %st,%st(2)
   3442f:	d9 ca                	fxch   %st(2)
   34431:	d9 6d d0             	fldcw  -0x30(%ebp)
   34434:	db 55 d4             	fistl  -0x2c(%ebp)
   34437:	d9 6d d2             	fldcw  -0x2e(%ebp)
   3443a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   3443d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   34440:	83 c0 30             	add    $0x30,%eax
   34443:	db 45 d4             	fildl  -0x2c(%ebp)
   34446:	de e9                	fsubrp %st,%st(1)
   34448:	d9 c9                	fxch   %st(1)
   3444a:	88 42 ff             	mov    %al,-0x1(%edx)
   3444d:	db e9                	fucomi %st(1),%st
   3444f:	76 b7                	jbe    34408 <_dtoa_r+0x478>
   34451:	dd d8                	fstp   %st(0)
   34453:	dd d8                	fstp   %st(0)
   34455:	dd d8                	fstp   %st(0)
   34457:	dd d8                	fstp   %st(0)
   34459:	eb 06                	jmp    34461 <_dtoa_r+0x4d1>
   3445b:	dd d8                	fstp   %st(0)
   3445d:	dd d8                	fstp   %st(0)
   3445f:	dd d8                	fstp   %st(0)
   34461:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34464:	89 fb                	mov    %edi,%ebx
   34466:	89 d7                	mov    %edx,%edi
   34468:	89 45 b8             	mov    %eax,-0x48(%ebp)
   3446b:	e9 70 03 00 00       	jmp    347e0 <_dtoa_r+0x850>
   34470:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
   34477:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
   3447e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   34485:	00 
   34486:	89 34 24             	mov    %esi,(%esp)
   34489:	e8 32 16 00 00       	call   35ac0 <_Balloc>
   3448e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
   34495:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
   3449c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
   344a3:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
   344aa:	89 c7                	mov    %eax,%edi
   344ac:	89 46 40             	mov    %eax,0x40(%esi)
   344af:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   344b2:	85 c0                	test   %eax,%eax
   344b4:	0f 88 2e 01 00 00    	js     345e8 <_dtoa_r+0x658>
   344ba:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
   344be:	0f 8f 24 01 00 00    	jg     345e8 <_dtoa_r+0x658>
   344c4:	8b 45 b8             	mov    -0x48(%ebp),%eax
   344c7:	dd 04 c5 80 9b 03 00 	fldl   0x39b80(,%eax,8)
   344ce:	8b 45 a8             	mov    -0x58(%ebp),%eax
   344d1:	85 c0                	test   %eax,%eax
   344d3:	7f 0e                	jg     344e3 <_dtoa_r+0x553>
   344d5:	8b 45 18             	mov    0x18(%ebp),%eax
   344d8:	c1 e8 1f             	shr    $0x1f,%eax
   344db:	84 c0                	test   %al,%al
   344dd:	0f 85 9d 07 00 00    	jne    34c80 <_dtoa_r+0xcf0>
   344e3:	dd 45 c0             	fldl   -0x40(%ebp)
   344e6:	d9 c0                	fld    %st(0)
   344e8:	d8 f2                	fdiv   %st(2),%st
   344ea:	d9 7d d2             	fnstcw -0x2e(%ebp)
   344ed:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
   344f1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   344f5:	b4 0c                	mov    $0xc,%ah
   344f7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   344fb:	8d 47 01             	lea    0x1(%edi),%eax
   344fe:	89 45 c0             	mov    %eax,-0x40(%ebp)
   34501:	d9 6d d0             	fldcw  -0x30(%ebp)
   34504:	db 5d d4             	fistpl -0x2c(%ebp)
   34507:	d9 6d d2             	fldcw  -0x2e(%ebp)
   3450a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   3450d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   34510:	8d 42 30             	lea    0x30(%edx),%eax
   34513:	db 45 d4             	fildl  -0x2c(%ebp)
   34516:	d8 ca                	fmul   %st(2),%st
   34518:	88 07                	mov    %al,(%edi)
   3451a:	de e9                	fsubrp %st,%st(1)
   3451c:	74 66                	je     34584 <_dtoa_r+0x5f4>
   3451e:	d8 0d a0 9a 03 00    	fmuls  0x39aa0
   34524:	d9 ee                	fldz   
   34526:	d9 c9                	fxch   %st(1)
   34528:	db e9                	fucomi %st(1),%st
   3452a:	dd d9                	fstp   %st(1)
   3452c:	0f 8b 33 0c 00 00    	jnp    35165 <_dtoa_r+0x11d5>
   34532:	8b 5d a8             	mov    -0x58(%ebp),%ebx
   34535:	8d 47 02             	lea    0x2(%edi),%eax
   34538:	d9 05 a0 9a 03 00    	flds   0x39aa0
   3453e:	01 fb                	add    %edi,%ebx
   34540:	eb 19                	jmp    3455b <_dtoa_r+0x5cb>
   34542:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34548:	dc c9                	fmul   %st,%st(1)
   3454a:	83 c0 01             	add    $0x1,%eax
   3454d:	d9 ee                	fldz   
   3454f:	d9 ca                	fxch   %st(2)
   34551:	db ea                	fucomi %st(2),%st
   34553:	dd da                	fstp   %st(2)
   34555:	0f 8b 73 09 00 00    	jnp    34ece <_dtoa_r+0xf3e>
   3455b:	d9 c1                	fld    %st(1)
   3455d:	39 d8                	cmp    %ebx,%eax
   3455f:	d8 f3                	fdiv   %st(3),%st
   34561:	89 45 c0             	mov    %eax,-0x40(%ebp)
   34564:	d9 6d d0             	fldcw  -0x30(%ebp)
   34567:	db 5d d4             	fistpl -0x2c(%ebp)
   3456a:	d9 6d d2             	fldcw  -0x2e(%ebp)
   3456d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   34570:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   34573:	8d 4a 30             	lea    0x30(%edx),%ecx
   34576:	db 45 d4             	fildl  -0x2c(%ebp)
   34579:	d8 cb                	fmul   %st(3),%st
   3457b:	88 48 ff             	mov    %cl,-0x1(%eax)
   3457e:	de ea                	fsubrp %st,%st(2)
   34580:	75 c6                	jne    34548 <_dtoa_r+0x5b8>
   34582:	dd d8                	fstp   %st(0)
   34584:	d8 c0                	fadd   %st(0),%st
   34586:	db e9                	fucomi %st(1),%st
   34588:	77 1e                	ja     345a8 <_dtoa_r+0x618>
   3458a:	d9 c9                	fxch   %st(1)
   3458c:	df e9                	fucomip %st(1),%st
   3458e:	dd d8                	fstp   %st(0)
   34590:	0f 8a 44 09 00 00    	jp     34eda <_dtoa_r+0xf4a>
   34596:	0f 85 3e 09 00 00    	jne    34eda <_dtoa_r+0xf4a>
   3459c:	83 e2 01             	and    $0x1,%edx
   3459f:	90                   	nop
   345a0:	0f 84 34 09 00 00    	je     34eda <_dtoa_r+0xf4a>
   345a6:	eb 04                	jmp    345ac <_dtoa_r+0x61c>
   345a8:	dd d8                	fstp   %st(0)
   345aa:	dd d8                	fstp   %st(0)
   345ac:	8b 4d c0             	mov    -0x40(%ebp),%ecx
   345af:	89 fb                	mov    %edi,%ebx
   345b1:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
   345b5:	89 cf                	mov    %ecx,%edi
   345b7:	8b 4d b8             	mov    -0x48(%ebp),%ecx
   345ba:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
   345bd:	eb 0f                	jmp    345ce <_dtoa_r+0x63e>
   345bf:	90                   	nop
   345c0:	39 d3                	cmp    %edx,%ebx
   345c2:	0f 84 75 09 00 00    	je     34f3d <_dtoa_r+0xfad>
   345c8:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
   345cc:	89 d7                	mov    %edx,%edi
   345ce:	3c 39                	cmp    $0x39,%al
   345d0:	8d 57 ff             	lea    -0x1(%edi),%edx
   345d3:	74 eb                	je     345c0 <_dtoa_r+0x630>
   345d5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
   345d8:	83 c0 01             	add    $0x1,%eax
   345db:	88 02                	mov    %al,(%edx)
   345dd:	89 4d b8             	mov    %ecx,-0x48(%ebp)
   345e0:	e9 fb 01 00 00       	jmp    347e0 <_dtoa_r+0x850>
   345e5:	8d 76 00             	lea    0x0(%esi),%esi
   345e8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   345eb:	85 c9                	test   %ecx,%ecx
   345ed:	0f 85 9d 02 00 00    	jne    34890 <_dtoa_r+0x900>
   345f3:	8b 55 b0             	mov    -0x50(%ebp),%edx
   345f6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   345f9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   34600:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34603:	85 c0                	test   %eax,%eax
   34605:	7e 14                	jle    3461b <_dtoa_r+0x68b>
   34607:	85 db                	test   %ebx,%ebx
   34609:	7e 10                	jle    3461b <_dtoa_r+0x68b>
   3460b:	8b 45 ac             	mov    -0x54(%ebp),%eax
   3460e:	39 d8                	cmp    %ebx,%eax
   34610:	0f 4f c3             	cmovg  %ebx,%eax
   34613:	29 45 a0             	sub    %eax,-0x60(%ebp)
   34616:	29 c3                	sub    %eax,%ebx
   34618:	29 45 ac             	sub    %eax,-0x54(%ebp)
   3461b:	8b 45 b0             	mov    -0x50(%ebp),%eax
   3461e:	85 c0                	test   %eax,%eax
   34620:	7e 61                	jle    34683 <_dtoa_r+0x6f3>
   34622:	8b 45 98             	mov    -0x68(%ebp),%eax
   34625:	85 c0                	test   %eax,%eax
   34627:	0f 84 72 04 00 00    	je     34a9f <_dtoa_r+0xb0f>
   3462d:	85 d2                	test   %edx,%edx
   3462f:	7e 47                	jle    34678 <_dtoa_r+0x6e8>
   34631:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34634:	89 54 24 08          	mov    %edx,0x8(%esp)
   34638:	89 34 24             	mov    %esi,(%esp)
   3463b:	89 55 88             	mov    %edx,-0x78(%ebp)
   3463e:	89 44 24 04          	mov    %eax,0x4(%esp)
   34642:	e8 f9 19 00 00       	call   36040 <__pow5mult>
   34647:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
   3464a:	89 34 24             	mov    %esi,(%esp)
   3464d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   34651:	89 44 24 04          	mov    %eax,0x4(%esp)
   34655:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34658:	e8 13 18 00 00       	call   35e70 <__multiply>
   3465d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
   34660:	89 34 24             	mov    %esi,(%esp)
   34663:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   34667:	89 45 8c             	mov    %eax,-0x74(%ebp)
   3466a:	e8 f1 14 00 00       	call   35b60 <_Bfree>
   3466f:	8b 45 8c             	mov    -0x74(%ebp),%eax
   34672:	8b 55 88             	mov    -0x78(%ebp),%edx
   34675:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   34678:	8b 45 b0             	mov    -0x50(%ebp),%eax
   3467b:	29 d0                	sub    %edx,%eax
   3467d:	0f 85 1f 04 00 00    	jne    34aa2 <_dtoa_r+0xb12>
   34683:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   3468a:	00 
   3468b:	89 34 24             	mov    %esi,(%esp)
   3468e:	e8 ad 17 00 00       	call   35e40 <__i2b>
   34693:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
   34696:	85 c9                	test   %ecx,%ecx
   34698:	89 45 b0             	mov    %eax,-0x50(%ebp)
   3469b:	7e 13                	jle    346b0 <_dtoa_r+0x720>
   3469d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   346a1:	89 44 24 04          	mov    %eax,0x4(%esp)
   346a5:	89 34 24             	mov    %esi,(%esp)
   346a8:	e8 93 19 00 00       	call   36040 <__pow5mult>
   346ad:	89 45 b0             	mov    %eax,-0x50(%ebp)
   346b0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
   346b4:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
   346bb:	0f 8e f7 05 00 00    	jle    34cb8 <_dtoa_r+0xd28>
   346c1:	8b 45 94             	mov    -0x6c(%ebp),%eax
   346c4:	ba 01 00 00 00       	mov    $0x1,%edx
   346c9:	85 c0                	test   %eax,%eax
   346cb:	0f 85 27 05 00 00    	jne    34bf8 <_dtoa_r+0xc68>
   346d1:	8b 45 ac             	mov    -0x54(%ebp),%eax
   346d4:	01 d0                	add    %edx,%eax
   346d6:	83 e0 1f             	and    $0x1f,%eax
   346d9:	89 c2                	mov    %eax,%edx
   346db:	0f 84 57 03 00 00    	je     34a38 <_dtoa_r+0xaa8>
   346e1:	b8 20 00 00 00       	mov    $0x20,%eax
   346e6:	29 d0                	sub    %edx,%eax
   346e8:	83 f8 04             	cmp    $0x4,%eax
   346eb:	0f 8e 8c 0a 00 00    	jle    3517d <_dtoa_r+0x11ed>
   346f1:	b8 1c 00 00 00       	mov    $0x1c,%eax
   346f6:	29 d0                	sub    %edx,%eax
   346f8:	01 45 a0             	add    %eax,-0x60(%ebp)
   346fb:	01 c3                	add    %eax,%ebx
   346fd:	01 45 ac             	add    %eax,-0x54(%ebp)
   34700:	8b 45 a0             	mov    -0x60(%ebp),%eax
   34703:	85 c0                	test   %eax,%eax
   34705:	7e 16                	jle    3471d <_dtoa_r+0x78d>
   34707:	89 44 24 08          	mov    %eax,0x8(%esp)
   3470b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   3470e:	89 34 24             	mov    %esi,(%esp)
   34711:	89 44 24 04          	mov    %eax,0x4(%esp)
   34715:	e8 46 1a 00 00       	call   36160 <__lshift>
   3471a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   3471d:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34720:	85 c0                	test   %eax,%eax
   34722:	7e 16                	jle    3473a <_dtoa_r+0x7aa>
   34724:	89 44 24 08          	mov    %eax,0x8(%esp)
   34728:	8b 45 b0             	mov    -0x50(%ebp),%eax
   3472b:	89 34 24             	mov    %esi,(%esp)
   3472e:	89 44 24 04          	mov    %eax,0x4(%esp)
   34732:	e8 29 1a 00 00       	call   36160 <__lshift>
   34737:	89 45 b0             	mov    %eax,-0x50(%ebp)
   3473a:	8b 45 9c             	mov    -0x64(%ebp),%eax
   3473d:	85 c0                	test   %eax,%eax
   3473f:	0f 85 d3 04 00 00    	jne    34c18 <_dtoa_r+0xc88>
   34745:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   34749:	0f 8e 11 02 00 00    	jle    34960 <_dtoa_r+0x9d0>
   3474f:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34752:	85 c0                	test   %eax,%eax
   34754:	0f 8f 06 02 00 00    	jg     34960 <_dtoa_r+0x9d0>
   3475a:	8b 45 a8             	mov    -0x58(%ebp),%eax
   3475d:	85 c0                	test   %eax,%eax
   3475f:	0f 85 e0 01 00 00    	jne    34945 <_dtoa_r+0x9b5>
   34765:	8b 45 b0             	mov    -0x50(%ebp),%eax
   34768:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   3476f:	00 
   34770:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
   34777:	00 
   34778:	89 34 24             	mov    %esi,(%esp)
   3477b:	89 44 24 04          	mov    %eax,0x4(%esp)
   3477f:	e8 fc 13 00 00       	call   35b80 <__multadd>
   34784:	89 45 b0             	mov    %eax,-0x50(%ebp)
   34787:	89 44 24 04          	mov    %eax,0x4(%esp)
   3478b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   3478e:	89 04 24             	mov    %eax,(%esp)
   34791:	e8 ea 1a 00 00       	call   36280 <__mcmp>
   34796:	85 c0                	test   %eax,%eax
   34798:	0f 8e a7 01 00 00    	jle    34945 <_dtoa_r+0x9b5>
   3479e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
   347a2:	89 fb                	mov    %edi,%ebx
   347a4:	83 c7 01             	add    $0x1,%edi
   347a7:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
   347ab:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
   347b2:	8b 45 b0             	mov    -0x50(%ebp),%eax
   347b5:	89 34 24             	mov    %esi,(%esp)
   347b8:	89 44 24 04          	mov    %eax,0x4(%esp)
   347bc:	e8 9f 13 00 00       	call   35b60 <_Bfree>
   347c1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   347c4:	85 c0                	test   %eax,%eax
   347c6:	74 18                	je     347e0 <_dtoa_r+0x850>
   347c8:	39 45 c0             	cmp    %eax,-0x40(%ebp)
   347cb:	0f 85 a7 02 00 00    	jne    34a78 <_dtoa_r+0xae8>
   347d1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   347d4:	89 34 24             	mov    %esi,(%esp)
   347d7:	89 44 24 04          	mov    %eax,0x4(%esp)
   347db:	e8 80 13 00 00       	call   35b60 <_Bfree>
   347e0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   347e3:	89 34 24             	mov    %esi,(%esp)
   347e6:	89 44 24 04          	mov    %eax,0x4(%esp)
   347ea:	e8 71 13 00 00       	call   35b60 <_Bfree>
   347ef:	8b 45 b8             	mov    -0x48(%ebp),%eax
   347f2:	8b 75 1c             	mov    0x1c(%ebp),%esi
   347f5:	c6 07 00             	movb   $0x0,(%edi)
   347f8:	83 c0 01             	add    $0x1,%eax
   347fb:	89 06                	mov    %eax,(%esi)
   347fd:	8b 45 24             	mov    0x24(%ebp),%eax
   34800:	85 c0                	test   %eax,%eax
   34802:	0f 84 90 02 00 00    	je     34a98 <_dtoa_r+0xb08>
   34808:	8b 45 24             	mov    0x24(%ebp),%eax
   3480b:	89 38                	mov    %edi,(%eax)
   3480d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
   34813:	89 d8                	mov    %ebx,%eax
   34815:	5b                   	pop    %ebx
   34816:	5e                   	pop    %esi
   34817:	5f                   	pop    %edi
   34818:	5d                   	pop    %ebp
   34819:	c3                   	ret    
   3481a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34820:	db 45 b8             	fildl  -0x48(%ebp)
   34823:	df e9                	fucomip %st(1),%st
   34825:	dd d8                	fstp   %st(0)
   34827:	7a 06                	jp     3482f <_dtoa_r+0x89f>
   34829:	0f 84 cc f8 ff ff    	je     340fb <_dtoa_r+0x16b>
   3482f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
   34833:	e9 c3 f8 ff ff       	jmp    340fb <_dtoa_r+0x16b>
   34838:	8b 45 b8             	mov    -0x48(%ebp),%eax
   3483b:	29 45 a0             	sub    %eax,-0x60(%ebp)
   3483e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
   34845:	f7 d8                	neg    %eax
   34847:	89 45 b0             	mov    %eax,-0x50(%ebp)
   3484a:	e9 0c f9 ff ff       	jmp    3415b <_dtoa_r+0x1cb>
   3484f:	90                   	nop
   34850:	f7 d8                	neg    %eax
   34852:	89 45 a0             	mov    %eax,-0x60(%ebp)
   34855:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
   3485c:	e9 e2 f8 ff ff       	jmp    34143 <_dtoa_r+0x1b3>
   34861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34868:	8b 45 c0             	mov    -0x40(%ebp),%eax
   3486b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
   34870:	29 d9                	sub    %ebx,%ecx
   34872:	d3 e0                	shl    %cl,%eax
   34874:	e9 1b f8 ff ff       	jmp    34094 <_dtoa_r+0x104>
   34879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34880:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
   34887:	e9 a0 f8 ff ff       	jmp    3412c <_dtoa_r+0x19c>
   3488c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34890:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
   34894:	0f 8e fe 06 00 00    	jle    34f98 <_dtoa_r+0x1008>
   3489a:	8b 45 a8             	mov    -0x58(%ebp),%eax
   3489d:	83 e8 01             	sub    $0x1,%eax
   348a0:	39 45 b0             	cmp    %eax,-0x50(%ebp)
   348a3:	0f 8c 3b 06 00 00    	jl     34ee4 <_dtoa_r+0xf54>
   348a9:	8b 55 b0             	mov    -0x50(%ebp),%edx
   348ac:	29 c2                	sub    %eax,%edx
   348ae:	8b 4d a8             	mov    -0x58(%ebp),%ecx
   348b1:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   348b4:	85 c9                	test   %ecx,%ecx
   348b6:	89 c8                	mov    %ecx,%eax
   348b8:	0f 88 83 07 00 00    	js     35041 <_dtoa_r+0x10b1>
   348be:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   348c5:	00 
   348c6:	89 34 24             	mov    %esi,(%esp)
   348c9:	89 55 8c             	mov    %edx,-0x74(%ebp)
   348cc:	01 45 a0             	add    %eax,-0x60(%ebp)
   348cf:	01 45 ac             	add    %eax,-0x54(%ebp)
   348d2:	e8 69 15 00 00       	call   35e40 <__i2b>
   348d7:	8b 55 8c             	mov    -0x74(%ebp),%edx
   348da:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   348dd:	e9 1e fd ff ff       	jmp    34600 <_dtoa_r+0x670>
   348e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   348e8:	d9 c1                	fld    %st(1)
   348ea:	b9 02 00 00 00       	mov    $0x2,%ecx
   348ef:	e9 37 fa ff ff       	jmp    3432b <_dtoa_r+0x39b>
   348f4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   348f7:	db 45 d4             	fildl  -0x2c(%ebp)
   348fa:	d8 c9                	fmul   %st(1),%st
   348fc:	d8 05 a4 9a 03 00    	fadds  0x39aa4
   34902:	dd 5d c0             	fstpl  -0x40(%ebp)
   34905:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
   3490c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34910:	d8 25 a8 9a 03 00    	fsubs  0x39aa8
   34916:	dd 45 c0             	fldl   -0x40(%ebp)
   34919:	d9 c9                	fxch   %st(1)
   3491b:	db e9                	fucomi %st(1),%st
   3491d:	0f 87 0d 02 00 00    	ja     34b30 <_dtoa_r+0xba0>
   34923:	d9 c9                	fxch   %st(1)
   34925:	d9 e0                	fchs   
   34927:	df e9                	fucomip %st(1),%st
   34929:	dd d8                	fstp   %st(0)
   3492b:	0f 86 a7 01 00 00    	jbe    34ad8 <_dtoa_r+0xb48>
   34931:	dd d8                	fstp   %st(0)
   34933:	eb 02                	jmp    34937 <_dtoa_r+0x9a7>
   34935:	dd d8                	fstp   %st(0)
   34937:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   3493e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   34945:	8b 45 18             	mov    0x18(%ebp),%eax
   34948:	89 fb                	mov    %edi,%ebx
   3494a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
   34951:	f7 d0                	not    %eax
   34953:	89 45 b8             	mov    %eax,-0x48(%ebp)
   34956:	e9 57 fe ff ff       	jmp    347b2 <_dtoa_r+0x822>
   3495b:	90                   	nop
   3495c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34960:	8b 45 98             	mov    -0x68(%ebp),%eax
   34963:	85 c0                	test   %eax,%eax
   34965:	0f 85 c5 03 00 00    	jne    34d30 <_dtoa_r+0xda0>
   3496b:	89 75 08             	mov    %esi,0x8(%ebp)
   3496e:	bb 01 00 00 00       	mov    $0x1,%ebx
   34973:	8b 75 a4             	mov    -0x5c(%ebp),%esi
   34976:	eb 24                	jmp    3499c <_dtoa_r+0xa0c>
   34978:	8b 45 08             	mov    0x8(%ebp),%eax
   3497b:	83 c3 01             	add    $0x1,%ebx
   3497e:	89 74 24 04          	mov    %esi,0x4(%esp)
   34982:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34989:	00 
   3498a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34991:	00 
   34992:	89 04 24             	mov    %eax,(%esp)
   34995:	e8 e6 11 00 00       	call   35b80 <__multadd>
   3499a:	89 c6                	mov    %eax,%esi
   3499c:	8b 55 b0             	mov    -0x50(%ebp),%edx
   3499f:	89 f0                	mov    %esi,%eax
   349a1:	e8 1a f4 ff ff       	call   33dc0 <quorem>
   349a6:	83 c0 30             	add    $0x30,%eax
   349a9:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
   349ac:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
   349b0:	7c c6                	jl     34978 <_dtoa_r+0x9e8>
   349b2:	89 45 a0             	mov    %eax,-0x60(%ebp)
   349b5:	8b 45 a8             	mov    -0x58(%ebp),%eax
   349b8:	ba 01 00 00 00       	mov    $0x1,%edx
   349bd:	89 75 a4             	mov    %esi,-0x5c(%ebp)
   349c0:	8b 75 08             	mov    0x8(%ebp),%esi
   349c3:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
   349ca:	85 c0                	test   %eax,%eax
   349cc:	0f 4f d0             	cmovg  %eax,%edx
   349cf:	01 fa                	add    %edi,%edx
   349d1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   349d4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   349db:	00 
   349dc:	89 34 24             	mov    %esi,(%esp)
   349df:	89 55 ac             	mov    %edx,-0x54(%ebp)
   349e2:	89 44 24 04          	mov    %eax,0x4(%esp)
   349e6:	e8 75 17 00 00       	call   36160 <__lshift>
   349eb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
   349ee:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   349f2:	89 04 24             	mov    %eax,(%esp)
   349f5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   349f8:	e8 83 18 00 00       	call   36280 <__mcmp>
   349fd:	8b 55 ac             	mov    -0x54(%ebp),%edx
   34a00:	83 f8 00             	cmp    $0x0,%eax
   34a03:	0f 8e 41 06 00 00    	jle    3504a <_dtoa_r+0x10ba>
   34a09:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
   34a0d:	eb 0f                	jmp    34a1e <_dtoa_r+0xa8e>
   34a0f:	90                   	nop
   34a10:	39 c7                	cmp    %eax,%edi
   34a12:	0f 84 70 05 00 00    	je     34f88 <_dtoa_r+0xff8>
   34a18:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
   34a1c:	89 c2                	mov    %eax,%edx
   34a1e:	80 f9 39             	cmp    $0x39,%cl
   34a21:	8d 42 ff             	lea    -0x1(%edx),%eax
   34a24:	74 ea                	je     34a10 <_dtoa_r+0xa80>
   34a26:	83 c1 01             	add    $0x1,%ecx
   34a29:	89 fb                	mov    %edi,%ebx
   34a2b:	88 08                	mov    %cl,(%eax)
   34a2d:	89 d7                	mov    %edx,%edi
   34a2f:	e9 7e fd ff ff       	jmp    347b2 <_dtoa_r+0x822>
   34a34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34a38:	b8 1c 00 00 00       	mov    $0x1c,%eax
   34a3d:	01 45 a0             	add    %eax,-0x60(%ebp)
   34a40:	01 c3                	add    %eax,%ebx
   34a42:	01 45 ac             	add    %eax,-0x54(%ebp)
   34a45:	e9 b6 fc ff ff       	jmp    34700 <_dtoa_r+0x770>
   34a4a:	ba 01 00 00 00       	mov    $0x1,%edx
   34a4f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
   34a56:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
   34a5d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
   34a64:	21 c2                	and    %eax,%edx
   34a66:	88 55 b4             	mov    %dl,-0x4c(%ebp)
   34a69:	31 d2                	xor    %edx,%edx
   34a6b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
   34a72:	e9 62 f8 ff ff       	jmp    342d9 <_dtoa_r+0x349>
   34a77:	90                   	nop
   34a78:	8b 55 c0             	mov    -0x40(%ebp),%edx
   34a7b:	85 d2                	test   %edx,%edx
   34a7d:	0f 84 4e fd ff ff    	je     347d1 <_dtoa_r+0x841>
   34a83:	8b 45 c0             	mov    -0x40(%ebp),%eax
   34a86:	89 34 24             	mov    %esi,(%esp)
   34a89:	89 44 24 04          	mov    %eax,0x4(%esp)
   34a8d:	e8 ce 10 00 00       	call   35b60 <_Bfree>
   34a92:	e9 3a fd ff ff       	jmp    347d1 <_dtoa_r+0x841>
   34a97:	90                   	nop
   34a98:	89 d8                	mov    %ebx,%eax
   34a9a:	e9 89 f5 ff ff       	jmp    34028 <_dtoa_r+0x98>
   34a9f:	8b 45 b0             	mov    -0x50(%ebp),%eax
   34aa2:	89 44 24 08          	mov    %eax,0x8(%esp)
   34aa6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34aa9:	89 34 24             	mov    %esi,(%esp)
   34aac:	89 44 24 04          	mov    %eax,0x4(%esp)
   34ab0:	e8 8b 15 00 00       	call   36040 <__pow5mult>
   34ab5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   34ab8:	e9 c6 fb ff ff       	jmp    34683 <_dtoa_r+0x6f3>
   34abd:	dd d8                	fstp   %st(0)
   34abf:	dd d8                	fstp   %st(0)
   34ac1:	eb 15                	jmp    34ad8 <_dtoa_r+0xb48>
   34ac3:	90                   	nop
   34ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34ac8:	dd d8                	fstp   %st(0)
   34aca:	dd d8                	fstp   %st(0)
   34acc:	dd d8                	fstp   %st(0)
   34ace:	eb 08                	jmp    34ad8 <_dtoa_r+0xb48>
   34ad0:	dd d8                	fstp   %st(0)
   34ad2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34ad8:	dd 5d c0             	fstpl  -0x40(%ebp)
   34adb:	e9 cf f9 ff ff       	jmp    344af <_dtoa_r+0x51f>
   34ae0:	8b 45 b8             	mov    -0x48(%ebp),%eax
   34ae3:	f7 d8                	neg    %eax
   34ae5:	0f 84 6a 04 00 00    	je     34f55 <_dtoa_r+0xfc5>
   34aeb:	89 c2                	mov    %eax,%edx
   34aed:	b9 02 00 00 00       	mov    $0x2,%ecx
   34af2:	83 e2 0f             	and    $0xf,%edx
   34af5:	c1 f8 04             	sar    $0x4,%eax
   34af8:	dd 04 d5 80 9b 03 00 	fldl   0x39b80(,%edx,8)
   34aff:	85 c0                	test   %eax,%eax
   34b01:	d8 c9                	fmul   %st(1),%st
   34b03:	0f 84 4a f8 ff ff    	je     34353 <_dtoa_r+0x3c3>
   34b09:	31 d2                	xor    %edx,%edx
   34b0b:	90                   	nop
   34b0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34b10:	a8 01                	test   $0x1,%al
   34b12:	74 0a                	je     34b1e <_dtoa_r+0xb8e>
   34b14:	dc 0c d5 40 9b 03 00 	fmull  0x39b40(,%edx,8)
   34b1b:	83 c1 01             	add    $0x1,%ecx
   34b1e:	83 c2 01             	add    $0x1,%edx
   34b21:	d1 f8                	sar    %eax
   34b23:	75 eb                	jne    34b10 <_dtoa_r+0xb80>
   34b25:	e9 29 f8 ff ff       	jmp    34353 <_dtoa_r+0x3c3>
   34b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34b30:	dd d8                	fstp   %st(0)
   34b32:	dd d8                	fstp   %st(0)
   34b34:	dd d8                	fstp   %st(0)
   34b36:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   34b3d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   34b44:	e9 55 fc ff ff       	jmp    3479e <_dtoa_r+0x80e>
   34b49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34b50:	d9 7d d2             	fnstcw -0x2e(%ebp)
   34b53:	8d 41 ff             	lea    -0x1(%ecx),%eax
   34b56:	dd 45 c0             	fldl   -0x40(%ebp)
   34b59:	dc 0c c5 80 9b 03 00 	fmull  0x39b80(,%eax,8)
   34b60:	d9 c9                	fxch   %st(1)
   34b62:	89 45 88             	mov    %eax,-0x78(%ebp)
   34b65:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   34b69:	8d 57 01             	lea    0x1(%edi),%edx
   34b6c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
   34b6f:	b4 0c                	mov    $0xc,%ah
   34b71:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   34b75:	d9 6d d0             	fldcw  -0x30(%ebp)
   34b78:	db 55 d4             	fistl  -0x2c(%ebp)
   34b7b:	d9 6d d2             	fldcw  -0x2e(%ebp)
   34b7e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   34b81:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   34b84:	83 c0 30             	add    $0x30,%eax
   34b87:	83 f9 01             	cmp    $0x1,%ecx
   34b8a:	db 45 d4             	fildl  -0x2c(%ebp)
   34b8d:	de e9                	fsubrp %st,%st(1)
   34b8f:	88 07                	mov    %al,(%edi)
   34b91:	89 d0                	mov    %edx,%eax
   34b93:	74 37                	je     34bcc <_dtoa_r+0xc3c>
   34b95:	d9 05 a0 9a 03 00    	flds   0x39aa0
   34b9b:	eb 05                	jmp    34ba2 <_dtoa_r+0xc12>
   34b9d:	8d 76 00             	lea    0x0(%esi),%esi
   34ba0:	d9 c9                	fxch   %st(1)
   34ba2:	dc c9                	fmul   %st,%st(1)
   34ba4:	d9 c9                	fxch   %st(1)
   34ba6:	83 c0 01             	add    $0x1,%eax
   34ba9:	d9 6d d0             	fldcw  -0x30(%ebp)
   34bac:	db 55 d4             	fistl  -0x2c(%ebp)
   34baf:	d9 6d d2             	fldcw  -0x2e(%ebp)
   34bb2:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
   34bb5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   34bb8:	83 c1 30             	add    $0x30,%ecx
   34bbb:	39 d8                	cmp    %ebx,%eax
   34bbd:	db 45 d4             	fildl  -0x2c(%ebp)
   34bc0:	de e9                	fsubrp %st,%st(1)
   34bc2:	88 48 ff             	mov    %cl,-0x1(%eax)
   34bc5:	75 d9                	jne    34ba0 <_dtoa_r+0xc10>
   34bc7:	dd d9                	fstp   %st(1)
   34bc9:	03 55 88             	add    -0x78(%ebp),%edx
   34bcc:	d9 05 ac 9a 03 00    	flds   0x39aac
   34bd2:	d9 c2                	fld    %st(2)
   34bd4:	d8 c1                	fadd   %st(1),%st
   34bd6:	d9 ca                	fxch   %st(2)
   34bd8:	db ea                	fucomi %st(2),%st
   34bda:	dd da                	fstp   %st(2)
   34bdc:	0f 86 7f 03 00 00    	jbe    34f61 <_dtoa_r+0xfd1>
   34be2:	dd d8                	fstp   %st(0)
   34be4:	dd d8                	fstp   %st(0)
   34be6:	dd d8                	fstp   %st(0)
   34be8:	dd d8                	fstp   %st(0)
   34bea:	89 fb                	mov    %edi,%ebx
   34bec:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
   34bf0:	89 d7                	mov    %edx,%edi
   34bf2:	e9 d7 f9 ff ff       	jmp    345ce <_dtoa_r+0x63e>
   34bf7:	90                   	nop
   34bf8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
   34bfb:	8b 41 10             	mov    0x10(%ecx),%eax
   34bfe:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
   34c02:	89 04 24             	mov    %eax,(%esp)
   34c05:	e8 56 11 00 00       	call   35d60 <__hi0bits>
   34c0a:	ba 20 00 00 00       	mov    $0x20,%edx
   34c0f:	29 c2                	sub    %eax,%edx
   34c11:	e9 bb fa ff ff       	jmp    346d1 <_dtoa_r+0x741>
   34c16:	66 90                	xchg   %ax,%ax
   34c18:	8b 45 b0             	mov    -0x50(%ebp),%eax
   34c1b:	89 44 24 04          	mov    %eax,0x4(%esp)
   34c1f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34c22:	89 04 24             	mov    %eax,(%esp)
   34c25:	e8 56 16 00 00       	call   36280 <__mcmp>
   34c2a:	85 c0                	test   %eax,%eax
   34c2c:	0f 89 13 fb ff ff    	jns    34745 <_dtoa_r+0x7b5>
   34c32:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34c35:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34c3c:	00 
   34c3d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34c44:	00 
   34c45:	89 34 24             	mov    %esi,(%esp)
   34c48:	89 44 24 04          	mov    %eax,0x4(%esp)
   34c4c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
   34c50:	e8 2b 0f 00 00       	call   35b80 <__multadd>
   34c55:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   34c58:	85 c9                	test   %ecx,%ecx
   34c5a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   34c5d:	0f 85 8d 00 00 00    	jne    34cf0 <_dtoa_r+0xd60>
   34c63:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
   34c67:	8b 45 90             	mov    -0x70(%ebp),%eax
   34c6a:	7f 0a                	jg     34c76 <_dtoa_r+0xce6>
   34c6c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   34c70:	0f 8f ff 04 00 00    	jg     35175 <_dtoa_r+0x11e5>
   34c76:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34c79:	e9 ed fc ff ff       	jmp    3496b <_dtoa_r+0x9db>
   34c7e:	66 90                	xchg   %ax,%ax
   34c80:	8b 5d a8             	mov    -0x58(%ebp),%ebx
   34c83:	85 db                	test   %ebx,%ebx
   34c85:	0f 85 aa fc ff ff    	jne    34935 <_dtoa_r+0x9a5>
   34c8b:	d8 0d a8 9a 03 00    	fmuls  0x39aa8
   34c91:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   34c98:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   34c9f:	dd 45 c0             	fldl   -0x40(%ebp)
   34ca2:	d9 c9                	fxch   %st(1)
   34ca4:	df e9                	fucomip %st(1),%st
   34ca6:	dd d8                	fstp   %st(0)
   34ca8:	0f 83 97 fc ff ff    	jae    34945 <_dtoa_r+0x9b5>
   34cae:	e9 eb fa ff ff       	jmp    3479e <_dtoa_r+0x80e>
   34cb3:	90                   	nop
   34cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34cb8:	8b 45 c0             	mov    -0x40(%ebp),%eax
   34cbb:	85 c0                	test   %eax,%eax
   34cbd:	0f 85 fe f9 ff ff    	jne    346c1 <_dtoa_r+0x731>
   34cc3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
   34cc6:	a9 ff ff 0f 00       	test   $0xfffff,%eax
   34ccb:	0f 85 f0 f9 ff ff    	jne    346c1 <_dtoa_r+0x731>
   34cd1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
   34cd6:	0f 84 e5 f9 ff ff    	je     346c1 <_dtoa_r+0x731>
   34cdc:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
   34ce0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
   34ce4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
   34ceb:	e9 d1 f9 ff ff       	jmp    346c1 <_dtoa_r+0x731>
   34cf0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34cf3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34cfa:	00 
   34cfb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34d02:	00 
   34d03:	89 34 24             	mov    %esi,(%esp)
   34d06:	89 44 24 04          	mov    %eax,0x4(%esp)
   34d0a:	e8 71 0e 00 00       	call   35b80 <__multadd>
   34d0f:	8b 55 90             	mov    -0x70(%ebp),%edx
   34d12:	85 d2                	test   %edx,%edx
   34d14:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34d17:	8b 45 90             	mov    -0x70(%ebp),%eax
   34d1a:	7f 0a                	jg     34d26 <_dtoa_r+0xd96>
   34d1c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   34d20:	0f 8f 4f 04 00 00    	jg     35175 <_dtoa_r+0x11e5>
   34d26:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34d29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34d30:	85 db                	test   %ebx,%ebx
   34d32:	7e 16                	jle    34d4a <_dtoa_r+0xdba>
   34d34:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34d37:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   34d3b:	89 34 24             	mov    %esi,(%esp)
   34d3e:	89 44 24 04          	mov    %eax,0x4(%esp)
   34d42:	e8 19 14 00 00       	call   36160 <__lshift>
   34d47:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34d4a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
   34d4d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34d50:	85 db                	test   %ebx,%ebx
   34d52:	89 45 ac             	mov    %eax,-0x54(%ebp)
   34d55:	0f 85 11 03 00 00    	jne    3506c <_dtoa_r+0x10dc>
   34d5b:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34d5e:	8d 5f 01             	lea    0x1(%edi),%ebx
   34d61:	89 7d 8c             	mov    %edi,-0x74(%ebp)
   34d64:	01 f8                	add    %edi,%eax
   34d66:	8b 7d a4             	mov    -0x5c(%ebp),%edi
   34d69:	89 45 90             	mov    %eax,-0x70(%ebp)
   34d6c:	8b 45 c0             	mov    -0x40(%ebp),%eax
   34d6f:	83 e0 01             	and    $0x1,%eax
   34d72:	89 45 9c             	mov    %eax,-0x64(%ebp)
   34d75:	eb 2e                	jmp    34da5 <_dtoa_r+0xe15>
   34d77:	90                   	nop
   34d78:	e8 03 0e 00 00       	call   35b80 <__multadd>
   34d7d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34d84:	00 
   34d85:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34d8c:	00 
   34d8d:	89 34 24             	mov    %esi,(%esp)
   34d90:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34d93:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34d96:	89 44 24 04          	mov    %eax,0x4(%esp)
   34d9a:	e8 e1 0d 00 00       	call   35b80 <__multadd>
   34d9f:	89 45 ac             	mov    %eax,-0x54(%ebp)
   34da2:	83 c3 01             	add    $0x1,%ebx
   34da5:	8b 55 b0             	mov    -0x50(%ebp),%edx
   34da8:	8d 43 ff             	lea    -0x1(%ebx),%eax
   34dab:	89 45 98             	mov    %eax,-0x68(%ebp)
   34dae:	89 f8                	mov    %edi,%eax
   34db0:	e8 0b f0 ff ff       	call   33dc0 <quorem>
   34db5:	89 3c 24             	mov    %edi,(%esp)
   34db8:	8d 48 30             	lea    0x30(%eax),%ecx
   34dbb:	89 4d a0             	mov    %ecx,-0x60(%ebp)
   34dbe:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
   34dc1:	89 45 94             	mov    %eax,-0x6c(%ebp)
   34dc4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   34dc8:	e8 b3 14 00 00       	call   36280 <__mcmp>
   34dcd:	8b 4d ac             	mov    -0x54(%ebp),%ecx
   34dd0:	89 34 24             	mov    %esi,(%esp)
   34dd3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   34dd7:	89 45 c0             	mov    %eax,-0x40(%ebp)
   34dda:	8b 45 b0             	mov    -0x50(%ebp),%eax
   34ddd:	89 44 24 04          	mov    %eax,0x4(%esp)
   34de1:	e8 ea 14 00 00       	call   362d0 <__mdiff>
   34de6:	8b 48 0c             	mov    0xc(%eax),%ecx
   34de9:	89 c2                	mov    %eax,%edx
   34deb:	85 c9                	test   %ecx,%ecx
   34ded:	0f 85 c5 00 00 00    	jne    34eb8 <_dtoa_r+0xf28>
   34df3:	89 44 24 04          	mov    %eax,0x4(%esp)
   34df7:	89 3c 24             	mov    %edi,(%esp)
   34dfa:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34dfd:	e8 7e 14 00 00       	call   36280 <__mcmp>
   34e02:	8b 55 a8             	mov    -0x58(%ebp),%edx
   34e05:	89 54 24 04          	mov    %edx,0x4(%esp)
   34e09:	89 34 24             	mov    %esi,(%esp)
   34e0c:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34e0f:	e8 4c 0d 00 00       	call   35b60 <_Bfree>
   34e14:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34e17:	89 c1                	mov    %eax,%ecx
   34e19:	0b 4d 14             	or     0x14(%ebp),%ecx
   34e1c:	75 0b                	jne    34e29 <_dtoa_r+0xe99>
   34e1e:	8b 55 9c             	mov    -0x64(%ebp),%edx
   34e21:	85 d2                	test   %edx,%edx
   34e23:	0f 84 fb 02 00 00    	je     35124 <_dtoa_r+0x1194>
   34e29:	8b 55 c0             	mov    -0x40(%ebp),%edx
   34e2c:	85 d2                	test   %edx,%edx
   34e2e:	0f 88 7f 01 00 00    	js     34fb3 <_dtoa_r+0x1023>
   34e34:	8b 4d c0             	mov    -0x40(%ebp),%ecx
   34e37:	0b 4d 14             	or     0x14(%ebp),%ecx
   34e3a:	75 0b                	jne    34e47 <_dtoa_r+0xeb7>
   34e3c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
   34e3f:	85 c9                	test   %ecx,%ecx
   34e41:	0f 84 6c 01 00 00    	je     34fb3 <_dtoa_r+0x1023>
   34e47:	85 c0                	test   %eax,%eax
   34e49:	0f 8f 82 02 00 00    	jg     350d1 <_dtoa_r+0x1141>
   34e4f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
   34e53:	89 da                	mov    %ebx,%edx
   34e55:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
   34e58:	88 43 ff             	mov    %al,-0x1(%ebx)
   34e5b:	0f 84 8d 02 00 00    	je     350ee <_dtoa_r+0x115e>
   34e61:	89 7c 24 04          	mov    %edi,0x4(%esp)
   34e65:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34e6c:	00 
   34e6d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34e74:	00 
   34e75:	89 34 24             	mov    %esi,(%esp)
   34e78:	e8 03 0d 00 00       	call   35b80 <__multadd>
   34e7d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34e84:	00 
   34e85:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34e8c:	00 
   34e8d:	89 34 24             	mov    %esi,(%esp)
   34e90:	89 c7                	mov    %eax,%edi
   34e92:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34e95:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
   34e98:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34e9b:	89 44 24 04          	mov    %eax,0x4(%esp)
   34e9f:	0f 85 d3 fe ff ff    	jne    34d78 <_dtoa_r+0xde8>
   34ea5:	e8 d6 0c 00 00       	call   35b80 <__multadd>
   34eaa:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34ead:	89 45 ac             	mov    %eax,-0x54(%ebp)
   34eb0:	e9 ed fe ff ff       	jmp    34da2 <_dtoa_r+0xe12>
   34eb5:	8d 76 00             	lea    0x0(%esi),%esi
   34eb8:	b8 01 00 00 00       	mov    $0x1,%eax
   34ebd:	e9 43 ff ff ff       	jmp    34e05 <_dtoa_r+0xe75>
   34ec2:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
   34ec9:	e9 d2 f2 ff ff       	jmp    341a0 <_dtoa_r+0x210>
   34ece:	0f 85 87 f6 ff ff    	jne    3455b <_dtoa_r+0x5cb>
   34ed4:	dd d8                	fstp   %st(0)
   34ed6:	dd d8                	fstp   %st(0)
   34ed8:	dd d8                	fstp   %st(0)
   34eda:	89 fb                	mov    %edi,%ebx
   34edc:	8b 7d c0             	mov    -0x40(%ebp),%edi
   34edf:	e9 fc f8 ff ff       	jmp    347e0 <_dtoa_r+0x850>
   34ee4:	89 c2                	mov    %eax,%edx
   34ee6:	2b 55 b0             	sub    -0x50(%ebp),%edx
   34ee9:	89 45 b0             	mov    %eax,-0x50(%ebp)
   34eec:	01 55 94             	add    %edx,-0x6c(%ebp)
   34eef:	31 d2                	xor    %edx,%edx
   34ef1:	e9 b8 f9 ff ff       	jmp    348ae <_dtoa_r+0x91e>
   34ef6:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34ef9:	85 c0                	test   %eax,%eax
   34efb:	0f 84 f3 f9 ff ff    	je     348f4 <_dtoa_r+0x964>
   34f01:	8b 45 90             	mov    -0x70(%ebp),%eax
   34f04:	85 c0                	test   %eax,%eax
   34f06:	0f 8e c4 fb ff ff    	jle    34ad0 <_dtoa_r+0xb40>
   34f0c:	d8 0d a0 9a 03 00    	fmuls  0x39aa0
   34f12:	83 c1 01             	add    $0x1,%ecx
   34f15:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   34f18:	8b 5d b8             	mov    -0x48(%ebp),%ebx
   34f1b:	89 c1                	mov    %eax,%ecx
   34f1d:	83 eb 01             	sub    $0x1,%ebx
   34f20:	db 45 d4             	fildl  -0x2c(%ebp)
   34f23:	d8 c9                	fmul   %st(1),%st
   34f25:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
   34f28:	d8 05 a4 9a 03 00    	fadds  0x39aa4
   34f2e:	dd 5d c0             	fstpl  -0x40(%ebp)
   34f31:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
   34f38:	e9 53 f4 ff ff       	jmp    34390 <_dtoa_r+0x400>
   34f3d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34f40:	c6 03 30             	movb   $0x30,(%ebx)
   34f43:	83 c0 01             	add    $0x1,%eax
   34f46:	89 45 b8             	mov    %eax,-0x48(%ebp)
   34f49:	b8 31 00 00 00       	mov    $0x31,%eax
   34f4e:	88 02                	mov    %al,(%edx)
   34f50:	e9 8b f8 ff ff       	jmp    347e0 <_dtoa_r+0x850>
   34f55:	d9 c0                	fld    %st(0)
   34f57:	b9 02 00 00 00       	mov    $0x2,%ecx
   34f5c:	e9 f2 f3 ff ff       	jmp    34353 <_dtoa_r+0x3c3>
   34f61:	de e2                	fsubp  %st,%st(2)
   34f63:	d9 c9                	fxch   %st(1)
   34f65:	df e9                	fucomip %st(1),%st
   34f67:	dd d8                	fstp   %st(0)
   34f69:	0f 86 69 fb ff ff    	jbe    34ad8 <_dtoa_r+0xb48>
   34f6f:	dd d8                	fstp   %st(0)
   34f71:	eb 07                	jmp    34f7a <_dtoa_r+0xfea>
   34f73:	90                   	nop
   34f74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34f78:	89 c2                	mov    %eax,%edx
   34f7a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
   34f7e:	8d 42 ff             	lea    -0x1(%edx),%eax
   34f81:	74 f5                	je     34f78 <_dtoa_r+0xfe8>
   34f83:	e9 d9 f4 ff ff       	jmp    34461 <_dtoa_r+0x4d1>
   34f88:	c6 07 31             	movb   $0x31,(%edi)
   34f8b:	89 fb                	mov    %edi,%ebx
   34f8d:	89 d7                	mov    %edx,%edi
   34f8f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
   34f93:	e9 1a f8 ff ff       	jmp    347b2 <_dtoa_r+0x822>
   34f98:	8b 55 8c             	mov    -0x74(%ebp),%edx
   34f9b:	85 d2                	test   %edx,%edx
   34f9d:	0f 84 1b 01 00 00    	je     350be <_dtoa_r+0x112e>
   34fa3:	05 33 04 00 00       	add    $0x433,%eax
   34fa8:	8b 55 b0             	mov    -0x50(%ebp),%edx
   34fab:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   34fae:	e9 0b f9 ff ff       	jmp    348be <_dtoa_r+0x92e>
   34fb3:	85 c0                	test   %eax,%eax
   34fb5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   34fb8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   34fbb:	7e 45                	jle    35002 <_dtoa_r+0x1072>
   34fbd:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34fc0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   34fc7:	00 
   34fc8:	89 34 24             	mov    %esi,(%esp)
   34fcb:	89 44 24 04          	mov    %eax,0x4(%esp)
   34fcf:	e8 8c 11 00 00       	call   36160 <__lshift>
   34fd4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
   34fd7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   34fdb:	89 04 24             	mov    %eax,(%esp)
   34fde:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   34fe1:	e8 9a 12 00 00       	call   36280 <__mcmp>
   34fe6:	83 f8 00             	cmp    $0x0,%eax
   34fe9:	0f 8e 5b 01 00 00    	jle    3514a <_dtoa_r+0x11ba>
   34fef:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
   34ff3:	0f 84 0c 01 00 00    	je     35105 <_dtoa_r+0x1175>
   34ff9:	8b 45 94             	mov    -0x6c(%ebp),%eax
   34ffc:	83 c0 31             	add    $0x31,%eax
   34fff:	89 45 a0             	mov    %eax,-0x60(%ebp)
   35002:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   35005:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
   35009:	89 cb                	mov    %ecx,%ebx
   3500b:	88 03                	mov    %al,(%ebx)
   3500d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   35010:	89 fb                	mov    %edi,%ebx
   35012:	8d 79 01             	lea    0x1(%ecx),%edi
   35015:	89 45 c0             	mov    %eax,-0x40(%ebp)
   35018:	8b 45 ac             	mov    -0x54(%ebp),%eax
   3501b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   3501e:	e9 8f f7 ff ff       	jmp    347b2 <_dtoa_r+0x822>
   35023:	dd d8                	fstp   %st(0)
   35025:	dd d8                	fstp   %st(0)
   35027:	dd d8                	fstp   %st(0)
   35029:	eb 0d                	jmp    35038 <_dtoa_r+0x10a8>
   3502b:	90                   	nop
   3502c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35030:	dd d8                	fstp   %st(0)
   35032:	dd d8                	fstp   %st(0)
   35034:	dd d8                	fstp   %st(0)
   35036:	dd d8                	fstp   %st(0)
   35038:	89 fb                	mov    %edi,%ebx
   3503a:	89 d7                	mov    %edx,%edi
   3503c:	e9 8d f5 ff ff       	jmp    345ce <_dtoa_r+0x63e>
   35041:	29 cb                	sub    %ecx,%ebx
   35043:	31 c0                	xor    %eax,%eax
   35045:	e9 74 f8 ff ff       	jmp    348be <_dtoa_r+0x92e>
   3504a:	75 0e                	jne    3505a <_dtoa_r+0x10ca>
   3504c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
   35050:	74 08                	je     3505a <_dtoa_r+0x10ca>
   35052:	e9 b2 f9 ff ff       	jmp    34a09 <_dtoa_r+0xa79>
   35057:	90                   	nop
   35058:	89 c2                	mov    %eax,%edx
   3505a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
   3505e:	8d 42 ff             	lea    -0x1(%edx),%eax
   35061:	74 f5                	je     35058 <_dtoa_r+0x10c8>
   35063:	89 fb                	mov    %edi,%ebx
   35065:	89 d7                	mov    %edx,%edi
   35067:	e9 46 f7 ff ff       	jmp    347b2 <_dtoa_r+0x822>
   3506c:	8b 40 04             	mov    0x4(%eax),%eax
   3506f:	89 34 24             	mov    %esi,(%esp)
   35072:	89 44 24 04          	mov    %eax,0x4(%esp)
   35076:	e8 45 0a 00 00       	call   35ac0 <_Balloc>
   3507b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
   3507e:	89 c3                	mov    %eax,%ebx
   35080:	8b 41 10             	mov    0x10(%ecx),%eax
   35083:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
   3508a:	89 44 24 08          	mov    %eax,0x8(%esp)
   3508e:	89 c8                	mov    %ecx,%eax
   35090:	83 c0 0c             	add    $0xc,%eax
   35093:	89 44 24 04          	mov    %eax,0x4(%esp)
   35097:	8d 43 0c             	lea    0xc(%ebx),%eax
   3509a:	89 04 24             	mov    %eax,(%esp)
   3509d:	e8 62 cc ff ff       	call   31d04 <memcpy>
   350a2:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   350a9:	00 
   350aa:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   350ae:	89 34 24             	mov    %esi,(%esp)
   350b1:	e8 aa 10 00 00       	call   36160 <__lshift>
   350b6:	89 45 ac             	mov    %eax,-0x54(%ebp)
   350b9:	e9 9d fc ff ff       	jmp    34d5b <_dtoa_r+0xdcb>
   350be:	b8 36 00 00 00       	mov    $0x36,%eax
   350c3:	8b 55 b0             	mov    -0x50(%ebp),%edx
   350c6:	2b 45 e0             	sub    -0x20(%ebp),%eax
   350c9:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   350cc:	e9 ed f7 ff ff       	jmp    348be <_dtoa_r+0x92e>
   350d1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
   350d5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   350d8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   350db:	74 28                	je     35105 <_dtoa_r+0x1175>
   350dd:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
   350e1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   350e4:	83 c0 01             	add    $0x1,%eax
   350e7:	89 cb                	mov    %ecx,%ebx
   350e9:	e9 1d ff ff ff       	jmp    3500b <_dtoa_r+0x107b>
   350ee:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   350f1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   350f4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   350f7:	89 45 c0             	mov    %eax,-0x40(%ebp)
   350fa:	8b 45 ac             	mov    -0x54(%ebp),%eax
   350fd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   35100:	e9 cc f8 ff ff       	jmp    349d1 <_dtoa_r+0xa41>
   35105:	8b 45 98             	mov    -0x68(%ebp),%eax
   35108:	b9 39 00 00 00       	mov    $0x39,%ecx
   3510d:	8d 50 01             	lea    0x1(%eax),%edx
   35110:	c6 00 39             	movb   $0x39,(%eax)
   35113:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   35116:	89 45 c0             	mov    %eax,-0x40(%ebp)
   35119:	8b 45 ac             	mov    -0x54(%ebp),%eax
   3511c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   3511f:	e9 fa f8 ff ff       	jmp    34a1e <_dtoa_r+0xa8e>
   35124:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   35127:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   3512a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   3512d:	83 fb 39             	cmp    $0x39,%ebx
   35130:	74 d3                	je     35105 <_dtoa_r+0x1175>
   35132:	8b 4d c0             	mov    -0x40(%ebp),%ecx
   35135:	8b 45 94             	mov    -0x6c(%ebp),%eax
   35138:	83 c0 31             	add    $0x31,%eax
   3513b:	85 c9                	test   %ecx,%ecx
   3513d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   35140:	0f 4e c3             	cmovle %ebx,%eax
   35143:	89 cb                	mov    %ecx,%ebx
   35145:	e9 c1 fe ff ff       	jmp    3500b <_dtoa_r+0x107b>
   3514a:	0f 85 b2 fe ff ff    	jne    35002 <_dtoa_r+0x1072>
   35150:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
   35154:	0f 84 a8 fe ff ff    	je     35002 <_dtoa_r+0x1072>
   3515a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35160:	e9 8a fe ff ff       	jmp    34fef <_dtoa_r+0x105f>
   35165:	0f 85 c7 f3 ff ff    	jne    34532 <_dtoa_r+0x5a2>
   3516b:	dd d8                	fstp   %st(0)
   3516d:	dd d8                	fstp   %st(0)
   3516f:	90                   	nop
   35170:	e9 65 fd ff ff       	jmp    34eda <_dtoa_r+0xf4a>
   35175:	89 45 a8             	mov    %eax,-0x58(%ebp)
   35178:	e9 dd f5 ff ff       	jmp    3475a <_dtoa_r+0x7ca>
   3517d:	8d 76 00             	lea    0x0(%esi),%esi
   35180:	0f 84 7a f5 ff ff    	je     34700 <_dtoa_r+0x770>
   35186:	b8 3c 00 00 00       	mov    $0x3c,%eax
   3518b:	29 d0                	sub    %edx,%eax
   3518d:	e9 ab f8 ff ff       	jmp    34a3d <_dtoa_r+0xaad>
   35192:	b8 01 00 00 00       	mov    $0x1,%eax
   35197:	e9 d9 ef ff ff       	jmp    34175 <_dtoa_r+0x1e5>
   3519c:	31 d2                	xor    %edx,%edx
   3519e:	e9 36 f1 ff ff       	jmp    342d9 <_dtoa_r+0x349>
   351a3:	66 90                	xchg   %ax,%ax
   351a5:	66 90                	xchg   %ax,%ax
   351a7:	66 90                	xchg   %ax,%ax
   351a9:	66 90                	xchg   %ax,%ax
   351ab:	66 90                	xchg   %ax,%ax
   351ad:	66 90                	xchg   %ax,%ax
   351af:	90                   	nop

000351b0 <_setlocale_r>:
   351b0:	55                   	push   %ebp
   351b1:	89 e5                	mov    %esp,%ebp
   351b3:	53                   	push   %ebx
   351b4:	83 ec 14             	sub    $0x14,%esp
   351b7:	8b 5d 10             	mov    0x10(%ebp),%ebx
   351ba:	85 db                	test   %ebx,%ebx
   351bc:	74 14                	je     351d2 <_setlocale_r+0x22>
   351be:	c7 44 24 04 c8 9a 03 	movl   $0x39ac8,0x4(%esp)
   351c5:	00 
   351c6:	89 1c 24             	mov    %ebx,(%esp)
   351c9:	e8 82 17 00 00       	call   36950 <strcmp>
   351ce:	85 c0                	test   %eax,%eax
   351d0:	75 0e                	jne    351e0 <_setlocale_r+0x30>
   351d2:	83 c4 14             	add    $0x14,%esp
   351d5:	b8 c4 98 03 00       	mov    $0x398c4,%eax
   351da:	5b                   	pop    %ebx
   351db:	5d                   	pop    %ebp
   351dc:	c3                   	ret    
   351dd:	8d 76 00             	lea    0x0(%esi),%esi
   351e0:	c7 44 24 04 c4 98 03 	movl   $0x398c4,0x4(%esp)
   351e7:	00 
   351e8:	89 1c 24             	mov    %ebx,(%esp)
   351eb:	e8 60 17 00 00       	call   36950 <strcmp>
   351f0:	85 c0                	test   %eax,%eax
   351f2:	74 de                	je     351d2 <_setlocale_r+0x22>
   351f4:	89 1c 24             	mov    %ebx,(%esp)
   351f7:	c7 44 24 04 fe 98 03 	movl   $0x398fe,0x4(%esp)
   351fe:	00 
   351ff:	e8 4c 17 00 00       	call   36950 <strcmp>
   35204:	89 c2                	mov    %eax,%edx
   35206:	31 c0                	xor    %eax,%eax
   35208:	85 d2                	test   %edx,%edx
   3520a:	ba c4 98 03 00       	mov    $0x398c4,%edx
   3520f:	0f 44 c2             	cmove  %edx,%eax
   35212:	83 c4 14             	add    $0x14,%esp
   35215:	5b                   	pop    %ebx
   35216:	5d                   	pop    %ebp
   35217:	c3                   	ret    
   35218:	90                   	nop
   35219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035220 <__locale_charset>:
   35220:	55                   	push   %ebp
   35221:	b8 c0 d4 03 00       	mov    $0x3d4c0,%eax
   35226:	89 e5                	mov    %esp,%ebp
   35228:	5d                   	pop    %ebp
   35229:	c3                   	ret    
   3522a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00035230 <__locale_mb_cur_max>:
   35230:	55                   	push   %ebp
   35231:	a1 18 d5 03 00       	mov    0x3d518,%eax
   35236:	89 e5                	mov    %esp,%ebp
   35238:	5d                   	pop    %ebp
   35239:	c3                   	ret    
   3523a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00035240 <__locale_msgcharset>:
   35240:	55                   	push   %ebp
   35241:	b8 a0 d4 03 00       	mov    $0x3d4a0,%eax
   35246:	89 e5                	mov    %esp,%ebp
   35248:	5d                   	pop    %ebp
   35249:	c3                   	ret    
   3524a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00035250 <__locale_cjk_lang>:
   35250:	55                   	push   %ebp
   35251:	31 c0                	xor    %eax,%eax
   35253:	89 e5                	mov    %esp,%ebp
   35255:	5d                   	pop    %ebp
   35256:	c3                   	ret    
   35257:	89 f6                	mov    %esi,%esi
   35259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00035260 <_localeconv_r>:
   35260:	55                   	push   %ebp
   35261:	b8 e0 d4 03 00       	mov    $0x3d4e0,%eax
   35266:	89 e5                	mov    %esp,%ebp
   35268:	5d                   	pop    %ebp
   35269:	c3                   	ret    
   3526a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00035270 <setlocale>:
   35270:	55                   	push   %ebp
   35271:	89 e5                	mov    %esp,%ebp
   35273:	83 ec 18             	sub    $0x18,%esp
   35276:	e8 35 cc ff ff       	call   31eb0 <__getreent>
   3527b:	8b 55 0c             	mov    0xc(%ebp),%edx
   3527e:	89 54 24 08          	mov    %edx,0x8(%esp)
   35282:	8b 55 08             	mov    0x8(%ebp),%edx
   35285:	89 04 24             	mov    %eax,(%esp)
   35288:	89 54 24 04          	mov    %edx,0x4(%esp)
   3528c:	e8 1f ff ff ff       	call   351b0 <_setlocale_r>
   35291:	c9                   	leave  
   35292:	c3                   	ret    
   35293:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35299:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000352a0 <localeconv>:
   352a0:	55                   	push   %ebp
   352a1:	89 e5                	mov    %esp,%ebp
   352a3:	83 ec 08             	sub    $0x8,%esp
   352a6:	e8 05 cc ff ff       	call   31eb0 <__getreent>
   352ab:	b8 e0 d4 03 00       	mov    $0x3d4e0,%eax
   352b0:	c9                   	leave  
   352b1:	c3                   	ret    
   352b2:	66 90                	xchg   %ax,%ax
   352b4:	66 90                	xchg   %ax,%ax
   352b6:	66 90                	xchg   %ax,%ax
   352b8:	66 90                	xchg   %ax,%ax
   352ba:	66 90                	xchg   %ax,%ax
   352bc:	66 90                	xchg   %ax,%ax
   352be:	66 90                	xchg   %ax,%ax

000352c0 <_malloc_r>:
   352c0:	55                   	push   %ebp
   352c1:	89 e5                	mov    %esp,%ebp
   352c3:	57                   	push   %edi
   352c4:	56                   	push   %esi
   352c5:	53                   	push   %ebx
   352c6:	83 ec 2c             	sub    $0x2c,%esp
   352c9:	8b 45 0c             	mov    0xc(%ebp),%eax
   352cc:	8d 50 0b             	lea    0xb(%eax),%edx
   352cf:	83 fa 16             	cmp    $0x16,%edx
   352d2:	76 6c                	jbe    35340 <_malloc_r+0x80>
   352d4:	89 d7                	mov    %edx,%edi
   352d6:	83 e7 f8             	and    $0xfffffff8,%edi
   352d9:	89 fe                	mov    %edi,%esi
   352db:	c1 ee 1f             	shr    $0x1f,%esi
   352de:	39 c7                	cmp    %eax,%edi
   352e0:	8b 45 08             	mov    0x8(%ebp),%eax
   352e3:	89 f2                	mov    %esi,%edx
   352e5:	72 67                	jb     3534e <_malloc_r+0x8e>
   352e7:	84 d2                	test   %dl,%dl
   352e9:	75 63                	jne    3534e <_malloc_r+0x8e>
   352eb:	89 04 24             	mov    %eax,(%esp)
   352ee:	e8 ad 07 00 00       	call   35aa0 <__malloc_lock>
   352f3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
   352f9:	77 65                	ja     35360 <_malloc_r+0xa0>
   352fb:	89 fa                	mov    %edi,%edx
   352fd:	c1 ea 03             	shr    $0x3,%edx
   35300:	8d 04 d5 40 d5 03 00 	lea    0x3d540(,%edx,8),%eax
   35307:	8b 58 0c             	mov    0xc(%eax),%ebx
   3530a:	39 c3                	cmp    %eax,%ebx
   3530c:	0f 84 3e 05 00 00    	je     35850 <_malloc_r+0x590>
   35312:	8b 43 04             	mov    0x4(%ebx),%eax
   35315:	83 e0 fc             	and    $0xfffffffc,%eax
   35318:	8b 53 0c             	mov    0xc(%ebx),%edx
   3531b:	8b 4b 08             	mov    0x8(%ebx),%ecx
   3531e:	89 51 0c             	mov    %edx,0xc(%ecx)
   35321:	89 4a 08             	mov    %ecx,0x8(%edx)
   35324:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
   35329:	8b 45 08             	mov    0x8(%ebp),%eax
   3532c:	89 04 24             	mov    %eax,(%esp)
   3532f:	e8 7c 07 00 00       	call   35ab0 <__malloc_unlock>
   35334:	8d 43 08             	lea    0x8(%ebx),%eax
   35337:	83 c4 2c             	add    $0x2c,%esp
   3533a:	5b                   	pop    %ebx
   3533b:	5e                   	pop    %esi
   3533c:	5f                   	pop    %edi
   3533d:	5d                   	pop    %ebp
   3533e:	c3                   	ret    
   3533f:	90                   	nop
   35340:	bf 10 00 00 00       	mov    $0x10,%edi
   35345:	31 d2                	xor    %edx,%edx
   35347:	39 c7                	cmp    %eax,%edi
   35349:	8b 45 08             	mov    0x8(%ebp),%eax
   3534c:	73 99                	jae    352e7 <_malloc_r+0x27>
   3534e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   35354:	83 c4 2c             	add    $0x2c,%esp
   35357:	31 c0                	xor    %eax,%eax
   35359:	5b                   	pop    %ebx
   3535a:	5e                   	pop    %esi
   3535b:	5f                   	pop    %edi
   3535c:	5d                   	pop    %ebp
   3535d:	c3                   	ret    
   3535e:	66 90                	xchg   %ax,%ax
   35360:	89 fe                	mov    %edi,%esi
   35362:	c1 ee 09             	shr    $0x9,%esi
   35365:	85 f6                	test   %esi,%esi
   35367:	0f 84 ab 01 00 00    	je     35518 <_malloc_r+0x258>
   3536d:	83 fe 04             	cmp    $0x4,%esi
   35370:	0f 87 8a 03 00 00    	ja     35700 <_malloc_r+0x440>
   35376:	89 fe                	mov    %edi,%esi
   35378:	c1 ee 06             	shr    $0x6,%esi
   3537b:	83 c6 38             	add    $0x38,%esi
   3537e:	8d 04 36             	lea    (%esi,%esi,1),%eax
   35381:	8d 0c 85 40 d5 03 00 	lea    0x3d540(,%eax,4),%ecx
   35388:	8b 59 0c             	mov    0xc(%ecx),%ebx
   3538b:	39 d9                	cmp    %ebx,%ecx
   3538d:	75 18                	jne    353a7 <_malloc_r+0xe7>
   3538f:	eb 28                	jmp    353b9 <_malloc_r+0xf9>
   35391:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35398:	85 d2                	test   %edx,%edx
   3539a:	0f 89 78 ff ff ff    	jns    35318 <_malloc_r+0x58>
   353a0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
   353a3:	39 d9                	cmp    %ebx,%ecx
   353a5:	74 12                	je     353b9 <_malloc_r+0xf9>
   353a7:	8b 43 04             	mov    0x4(%ebx),%eax
   353aa:	83 e0 fc             	and    $0xfffffffc,%eax
   353ad:	89 c2                	mov    %eax,%edx
   353af:	29 fa                	sub    %edi,%edx
   353b1:	83 fa 0f             	cmp    $0xf,%edx
   353b4:	7e e2                	jle    35398 <_malloc_r+0xd8>
   353b6:	83 ee 01             	sub    $0x1,%esi
   353b9:	8d 46 01             	lea    0x1(%esi),%eax
   353bc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   353bf:	8b 1d 50 d5 03 00    	mov    0x3d550,%ebx
   353c5:	a1 44 d5 03 00       	mov    0x3d544,%eax
   353ca:	81 fb 48 d5 03 00    	cmp    $0x3d548,%ebx
   353d0:	74 6b                	je     3543d <_malloc_r+0x17d>
   353d2:	8b 73 04             	mov    0x4(%ebx),%esi
   353d5:	83 e6 fc             	and    $0xfffffffc,%esi
   353d8:	89 f0                	mov    %esi,%eax
   353da:	29 f8                	sub    %edi,%eax
   353dc:	83 f8 0f             	cmp    $0xf,%eax
   353df:	0f 8f a3 03 00 00    	jg     35788 <_malloc_r+0x4c8>
   353e5:	85 c0                	test   %eax,%eax
   353e7:	c7 05 54 d5 03 00 48 	movl   $0x3d548,0x3d554
   353ee:	d5 03 00 
   353f1:	c7 05 50 d5 03 00 48 	movl   $0x3d548,0x3d550
   353f8:	d5 03 00 
   353fb:	0f 89 27 01 00 00    	jns    35528 <_malloc_r+0x268>
   35401:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
   35407:	0f 87 1b 03 00 00    	ja     35728 <_malloc_r+0x468>
   3540d:	c1 ee 03             	shr    $0x3,%esi
   35410:	b8 01 00 00 00       	mov    $0x1,%eax
   35415:	89 f1                	mov    %esi,%ecx
   35417:	8d 14 f5 40 d5 03 00 	lea    0x3d540(,%esi,8),%edx
   3541e:	c1 f9 02             	sar    $0x2,%ecx
   35421:	d3 e0                	shl    %cl,%eax
   35423:	8b 4a 08             	mov    0x8(%edx),%ecx
   35426:	0b 05 44 d5 03 00    	or     0x3d544,%eax
   3542c:	89 53 0c             	mov    %edx,0xc(%ebx)
   3542f:	89 4b 08             	mov    %ecx,0x8(%ebx)
   35432:	a3 44 d5 03 00       	mov    %eax,0x3d544
   35437:	89 5a 08             	mov    %ebx,0x8(%edx)
   3543a:	89 59 0c             	mov    %ebx,0xc(%ecx)
   3543d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   35440:	be 01 00 00 00       	mov    $0x1,%esi
   35445:	c1 f9 02             	sar    $0x2,%ecx
   35448:	d3 e6                	shl    %cl,%esi
   3544a:	39 c6                	cmp    %eax,%esi
   3544c:	0f 87 f6 00 00 00    	ja     35548 <_malloc_r+0x288>
   35452:	85 f0                	test   %esi,%eax
   35454:	0f 85 76 03 00 00    	jne    357d0 <_malloc_r+0x510>
   3545a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   3545d:	01 f6                	add    %esi,%esi
   3545f:	83 e2 fc             	and    $0xfffffffc,%edx
   35462:	85 f0                	test   %esi,%eax
   35464:	8d 4a 04             	lea    0x4(%edx),%ecx
   35467:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   3546a:	0f 85 60 03 00 00    	jne    357d0 <_malloc_r+0x510>
   35470:	89 ca                	mov    %ecx,%edx
   35472:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35478:	01 f6                	add    %esi,%esi
   3547a:	83 c2 04             	add    $0x4,%edx
   3547d:	85 f0                	test   %esi,%eax
   3547f:	74 f7                	je     35478 <_malloc_r+0x1b8>
   35481:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   35484:	89 75 dc             	mov    %esi,-0x24(%ebp)
   35487:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3548a:	8d 34 c5 40 d5 03 00 	lea    0x3d540(,%eax,8),%esi
   35491:	89 f1                	mov    %esi,%ecx
   35493:	89 45 e0             	mov    %eax,-0x20(%ebp)
   35496:	8b 59 0c             	mov    0xc(%ecx),%ebx
   35499:	39 d9                	cmp    %ebx,%ecx
   3549b:	75 1e                	jne    354bb <_malloc_r+0x1fb>
   3549d:	e9 36 03 00 00       	jmp    357d8 <_malloc_r+0x518>
   354a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   354a8:	85 d2                	test   %edx,%edx
   354aa:	0f 89 c0 03 00 00    	jns    35870 <_malloc_r+0x5b0>
   354b0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
   354b3:	39 d9                	cmp    %ebx,%ecx
   354b5:	0f 84 1d 03 00 00    	je     357d8 <_malloc_r+0x518>
   354bb:	8b 43 04             	mov    0x4(%ebx),%eax
   354be:	83 e0 fc             	and    $0xfffffffc,%eax
   354c1:	89 c2                	mov    %eax,%edx
   354c3:	29 fa                	sub    %edi,%edx
   354c5:	83 fa 0f             	cmp    $0xf,%edx
   354c8:	7e de                	jle    354a8 <_malloc_r+0x1e8>
   354ca:	8b 4b 0c             	mov    0xc(%ebx),%ecx
   354cd:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
   354d0:	83 cf 01             	or     $0x1,%edi
   354d3:	8b 73 08             	mov    0x8(%ebx),%esi
   354d6:	89 7b 04             	mov    %edi,0x4(%ebx)
   354d9:	89 4e 0c             	mov    %ecx,0xc(%esi)
   354dc:	89 71 08             	mov    %esi,0x8(%ecx)
   354df:	89 d1                	mov    %edx,%ecx
   354e1:	83 c9 01             	or     $0x1,%ecx
   354e4:	a3 54 d5 03 00       	mov    %eax,0x3d554
   354e9:	a3 50 d5 03 00       	mov    %eax,0x3d550
   354ee:	c7 40 0c 48 d5 03 00 	movl   $0x3d548,0xc(%eax)
   354f5:	c7 40 08 48 d5 03 00 	movl   $0x3d548,0x8(%eax)
   354fc:	89 48 04             	mov    %ecx,0x4(%eax)
   354ff:	89 14 10             	mov    %edx,(%eax,%edx,1)
   35502:	8b 45 08             	mov    0x8(%ebp),%eax
   35505:	89 04 24             	mov    %eax,(%esp)
   35508:	e8 a3 05 00 00       	call   35ab0 <__malloc_unlock>
   3550d:	8d 43 08             	lea    0x8(%ebx),%eax
   35510:	e9 22 fe ff ff       	jmp    35337 <_malloc_r+0x77>
   35515:	8d 76 00             	lea    0x0(%esi),%esi
   35518:	b8 7e 00 00 00       	mov    $0x7e,%eax
   3551d:	be 3f 00 00 00       	mov    $0x3f,%esi
   35522:	e9 5a fe ff ff       	jmp    35381 <_malloc_r+0xc1>
   35527:	90                   	nop
   35528:	8b 45 08             	mov    0x8(%ebp),%eax
   3552b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
   35530:	89 04 24             	mov    %eax,(%esp)
   35533:	e8 78 05 00 00       	call   35ab0 <__malloc_unlock>
   35538:	83 c4 2c             	add    $0x2c,%esp
   3553b:	8d 43 08             	lea    0x8(%ebx),%eax
   3553e:	5b                   	pop    %ebx
   3553f:	5e                   	pop    %esi
   35540:	5f                   	pop    %edi
   35541:	5d                   	pop    %ebp
   35542:	c3                   	ret    
   35543:	90                   	nop
   35544:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35548:	8b 1d 48 d5 03 00    	mov    0x3d548,%ebx
   3554e:	8b 73 04             	mov    0x4(%ebx),%esi
   35551:	83 e6 fc             	and    $0xfffffffc,%esi
   35554:	39 f7                	cmp    %esi,%edi
   35556:	77 0d                	ja     35565 <_malloc_r+0x2a5>
   35558:	89 f0                	mov    %esi,%eax
   3555a:	29 f8                	sub    %edi,%eax
   3555c:	83 f8 0f             	cmp    $0xf,%eax
   3555f:	0f 8f 6b 01 00 00    	jg     356d0 <_malloc_r+0x410>
   35565:	8b 0d 50 00 07 00    	mov    0x70050,%ecx
   3556b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
   3556e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   35571:	01 f9                	add    %edi,%ecx
   35573:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
   35579:	83 c1 10             	add    $0x10,%ecx
   3557c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   35581:	83 3d 20 d5 03 00 ff 	cmpl   $0xffffffff,0x3d520
   35588:	0f 44 c1             	cmove  %ecx,%eax
   3558b:	89 45 e0             	mov    %eax,-0x20(%ebp)
   3558e:	89 44 24 04          	mov    %eax,0x4(%esp)
   35592:	8b 45 08             	mov    0x8(%ebp),%eax
   35595:	89 04 24             	mov    %eax,(%esp)
   35598:	e8 03 13 00 00       	call   368a0 <_sbrk_r>
   3559d:	83 f8 ff             	cmp    $0xffffffff,%eax
   355a0:	89 c1                	mov    %eax,%ecx
   355a2:	0f 84 17 03 00 00    	je     358bf <_malloc_r+0x5ff>
   355a8:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
   355ab:	0f 87 02 03 00 00    	ja     358b3 <_malloc_r+0x5f3>
   355b1:	8b 55 e0             	mov    -0x20(%ebp),%edx
   355b4:	03 15 20 00 07 00    	add    0x70020,%edx
   355ba:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
   355bd:	89 15 20 00 07 00    	mov    %edx,0x70020
   355c3:	0f 84 a9 03 00 00    	je     35972 <_malloc_r+0x6b2>
   355c9:	83 3d 20 d5 03 00 ff 	cmpl   $0xffffffff,0x3d520
   355d0:	0f 84 ca 03 00 00    	je     359a0 <_malloc_r+0x6e0>
   355d6:	89 c8                	mov    %ecx,%eax
   355d8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
   355db:	01 d0                	add    %edx,%eax
   355dd:	a3 20 00 07 00       	mov    %eax,0x70020
   355e2:	89 c8                	mov    %ecx,%eax
   355e4:	ba 00 10 00 00       	mov    $0x1000,%edx
   355e9:	83 e0 07             	and    $0x7,%eax
   355ec:	74 0c                	je     355fa <_malloc_r+0x33a>
   355ee:	29 c1                	sub    %eax,%ecx
   355f0:	ba 08 10 00 00       	mov    $0x1008,%edx
   355f5:	8d 49 08             	lea    0x8(%ecx),%ecx
   355f8:	29 c2                	sub    %eax,%edx
   355fa:	8b 45 e0             	mov    -0x20(%ebp),%eax
   355fd:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   35600:	01 c8                	add    %ecx,%eax
   35602:	25 ff 0f 00 00       	and    $0xfff,%eax
   35607:	29 c2                	sub    %eax,%edx
   35609:	8b 45 08             	mov    0x8(%ebp),%eax
   3560c:	89 54 24 04          	mov    %edx,0x4(%esp)
   35610:	89 55 e0             	mov    %edx,-0x20(%ebp)
   35613:	89 04 24             	mov    %eax,(%esp)
   35616:	e8 85 12 00 00       	call   368a0 <_sbrk_r>
   3561b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   3561e:	83 f8 ff             	cmp    $0xffffffff,%eax
   35621:	0f 84 6d 03 00 00    	je     35994 <_malloc_r+0x6d4>
   35627:	8b 55 e0             	mov    -0x20(%ebp),%edx
   3562a:	29 c8                	sub    %ecx,%eax
   3562c:	01 d0                	add    %edx,%eax
   3562e:	83 c8 01             	or     $0x1,%eax
   35631:	03 15 20 00 07 00    	add    0x70020,%edx
   35637:	81 fb 40 d5 03 00    	cmp    $0x3d540,%ebx
   3563d:	89 0d 48 d5 03 00    	mov    %ecx,0x3d548
   35643:	89 41 04             	mov    %eax,0x4(%ecx)
   35646:	89 15 20 00 07 00    	mov    %edx,0x70020
   3564c:	0f 84 f2 02 00 00    	je     35944 <_malloc_r+0x684>
   35652:	83 fe 0f             	cmp    $0xf,%esi
   35655:	0f 86 8d 02 00 00    	jbe    358e8 <_malloc_r+0x628>
   3565b:	8b 43 04             	mov    0x4(%ebx),%eax
   3565e:	83 ee 0c             	sub    $0xc,%esi
   35661:	83 e6 f8             	and    $0xfffffff8,%esi
   35664:	83 e0 01             	and    $0x1,%eax
   35667:	09 f0                	or     %esi,%eax
   35669:	83 fe 0f             	cmp    $0xf,%esi
   3566c:	89 43 04             	mov    %eax,0x4(%ebx)
   3566f:	a1 48 d5 03 00       	mov    0x3d548,%eax
   35674:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
   3567b:	00 
   3567c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
   35683:	00 
   35684:	0f 87 a2 02 00 00    	ja     3592c <_malloc_r+0x66c>
   3568a:	3b 15 4c 00 07 00    	cmp    0x7004c,%edx
   35690:	76 06                	jbe    35698 <_malloc_r+0x3d8>
   35692:	89 15 4c 00 07 00    	mov    %edx,0x7004c
   35698:	3b 15 48 00 07 00    	cmp    0x70048,%edx
   3569e:	76 06                	jbe    356a6 <_malloc_r+0x3e6>
   356a0:	89 15 48 00 07 00    	mov    %edx,0x70048
   356a6:	8b 50 04             	mov    0x4(%eax),%edx
   356a9:	89 c3                	mov    %eax,%ebx
   356ab:	83 e2 fc             	and    $0xfffffffc,%edx
   356ae:	89 d0                	mov    %edx,%eax
   356b0:	29 f8                	sub    %edi,%eax
   356b2:	39 d7                	cmp    %edx,%edi
   356b4:	77 05                	ja     356bb <_malloc_r+0x3fb>
   356b6:	83 f8 0f             	cmp    $0xf,%eax
   356b9:	7f 15                	jg     356d0 <_malloc_r+0x410>
   356bb:	8b 45 08             	mov    0x8(%ebp),%eax
   356be:	89 04 24             	mov    %eax,(%esp)
   356c1:	e8 ea 03 00 00       	call   35ab0 <__malloc_unlock>
   356c6:	31 c0                	xor    %eax,%eax
   356c8:	e9 6a fc ff ff       	jmp    35337 <_malloc_r+0x77>
   356cd:	8d 76 00             	lea    0x0(%esi),%esi
   356d0:	89 fa                	mov    %edi,%edx
   356d2:	83 c8 01             	or     $0x1,%eax
   356d5:	83 ca 01             	or     $0x1,%edx
   356d8:	89 53 04             	mov    %edx,0x4(%ebx)
   356db:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
   356de:	89 15 48 d5 03 00    	mov    %edx,0x3d548
   356e4:	89 42 04             	mov    %eax,0x4(%edx)
   356e7:	8b 45 08             	mov    0x8(%ebp),%eax
   356ea:	89 04 24             	mov    %eax,(%esp)
   356ed:	e8 be 03 00 00       	call   35ab0 <__malloc_unlock>
   356f2:	83 c4 2c             	add    $0x2c,%esp
   356f5:	8d 43 08             	lea    0x8(%ebx),%eax
   356f8:	5b                   	pop    %ebx
   356f9:	5e                   	pop    %esi
   356fa:	5f                   	pop    %edi
   356fb:	5d                   	pop    %ebp
   356fc:	c3                   	ret    
   356fd:	8d 76 00             	lea    0x0(%esi),%esi
   35700:	83 fe 14             	cmp    $0x14,%esi
   35703:	0f 86 8f 01 00 00    	jbe    35898 <_malloc_r+0x5d8>
   35709:	83 fe 54             	cmp    $0x54,%esi
   3570c:	0f 87 be 01 00 00    	ja     358d0 <_malloc_r+0x610>
   35712:	89 fe                	mov    %edi,%esi
   35714:	c1 ee 0c             	shr    $0xc,%esi
   35717:	83 c6 6e             	add    $0x6e,%esi
   3571a:	8d 04 36             	lea    (%esi,%esi,1),%eax
   3571d:	e9 5f fc ff ff       	jmp    35381 <_malloc_r+0xc1>
   35722:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35728:	89 f1                	mov    %esi,%ecx
   3572a:	c1 e9 09             	shr    $0x9,%ecx
   3572d:	83 f9 04             	cmp    $0x4,%ecx
   35730:	0f 86 6d 01 00 00    	jbe    358a3 <_malloc_r+0x5e3>
   35736:	83 f9 14             	cmp    $0x14,%ecx
   35739:	0f 87 0f 02 00 00    	ja     3594e <_malloc_r+0x68e>
   3573f:	83 c1 5b             	add    $0x5b,%ecx
   35742:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   35745:	8d 04 85 40 d5 03 00 	lea    0x3d540(,%eax,4),%eax
   3574c:	8b 50 08             	mov    0x8(%eax),%edx
   3574f:	39 c2                	cmp    %eax,%edx
   35751:	0f 84 a1 01 00 00    	je     358f8 <_malloc_r+0x638>
   35757:	90                   	nop
   35758:	8b 4a 04             	mov    0x4(%edx),%ecx
   3575b:	83 e1 fc             	and    $0xfffffffc,%ecx
   3575e:	39 ce                	cmp    %ecx,%esi
   35760:	73 07                	jae    35769 <_malloc_r+0x4a9>
   35762:	8b 52 08             	mov    0x8(%edx),%edx
   35765:	39 d0                	cmp    %edx,%eax
   35767:	75 ef                	jne    35758 <_malloc_r+0x498>
   35769:	8b 4a 0c             	mov    0xc(%edx),%ecx
   3576c:	a1 44 d5 03 00       	mov    0x3d544,%eax
   35771:	89 4b 0c             	mov    %ecx,0xc(%ebx)
   35774:	89 53 08             	mov    %edx,0x8(%ebx)
   35777:	89 59 08             	mov    %ebx,0x8(%ecx)
   3577a:	89 5a 0c             	mov    %ebx,0xc(%edx)
   3577d:	e9 bb fc ff ff       	jmp    3543d <_malloc_r+0x17d>
   35782:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35788:	89 c1                	mov    %eax,%ecx
   3578a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
   3578d:	83 c9 01             	or     $0x1,%ecx
   35790:	83 cf 01             	or     $0x1,%edi
   35793:	89 7b 04             	mov    %edi,0x4(%ebx)
   35796:	89 15 54 d5 03 00    	mov    %edx,0x3d554
   3579c:	89 15 50 d5 03 00    	mov    %edx,0x3d550
   357a2:	c7 42 0c 48 d5 03 00 	movl   $0x3d548,0xc(%edx)
   357a9:	c7 42 08 48 d5 03 00 	movl   $0x3d548,0x8(%edx)
   357b0:	89 4a 04             	mov    %ecx,0x4(%edx)
   357b3:	89 04 02             	mov    %eax,(%edx,%eax,1)
   357b6:	8b 45 08             	mov    0x8(%ebp),%eax
   357b9:	89 04 24             	mov    %eax,(%esp)
   357bc:	e8 ef 02 00 00       	call   35ab0 <__malloc_unlock>
   357c1:	8d 43 08             	lea    0x8(%ebx),%eax
   357c4:	e9 6e fb ff ff       	jmp    35337 <_malloc_r+0x77>
   357c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   357d0:	89 75 dc             	mov    %esi,-0x24(%ebp)
   357d3:	e9 af fc ff ff       	jmp    35487 <_malloc_r+0x1c7>
   357d8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
   357dc:	83 c1 08             	add    $0x8,%ecx
   357df:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
   357e3:	0f 85 ad fc ff ff    	jne    35496 <_malloc_r+0x1d6>
   357e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   357ec:	eb 12                	jmp    35800 <_malloc_r+0x540>
   357ee:	66 90                	xchg   %ax,%ax
   357f0:	8d 56 f8             	lea    -0x8(%esi),%edx
   357f3:	8b 36                	mov    (%esi),%esi
   357f5:	83 e8 01             	sub    $0x1,%eax
   357f8:	39 d6                	cmp    %edx,%esi
   357fa:	0f 85 ea 01 00 00    	jne    359ea <_malloc_r+0x72a>
   35800:	a8 03                	test   $0x3,%al
   35802:	75 ec                	jne    357f0 <_malloc_r+0x530>
   35804:	8b 45 dc             	mov    -0x24(%ebp),%eax
   35807:	f7 d0                	not    %eax
   35809:	23 05 44 d5 03 00    	and    0x3d544,%eax
   3580f:	a3 44 d5 03 00       	mov    %eax,0x3d544
   35814:	d1 65 dc             	shll   -0x24(%ebp)
   35817:	8b 55 dc             	mov    -0x24(%ebp),%edx
   3581a:	39 c2                	cmp    %eax,%edx
   3581c:	0f 87 26 fd ff ff    	ja     35548 <_malloc_r+0x288>
   35822:	85 d2                	test   %edx,%edx
   35824:	0f 84 1e fd ff ff    	je     35548 <_malloc_r+0x288>
   3582a:	85 c2                	test   %eax,%edx
   3582c:	0f 85 c2 01 00 00    	jne    359f4 <_malloc_r+0x734>
   35832:	8b 75 e0             	mov    -0x20(%ebp),%esi
   35835:	89 f1                	mov    %esi,%ecx
   35837:	01 d2                	add    %edx,%edx
   35839:	83 c1 04             	add    $0x4,%ecx
   3583c:	85 d0                	test   %edx,%eax
   3583e:	74 f7                	je     35837 <_malloc_r+0x577>
   35840:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   35843:	89 55 dc             	mov    %edx,-0x24(%ebp)
   35846:	e9 3c fc ff ff       	jmp    35487 <_malloc_r+0x1c7>
   3584b:	90                   	nop
   3584c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35850:	8d 43 08             	lea    0x8(%ebx),%eax
   35853:	8b 5b 14             	mov    0x14(%ebx),%ebx
   35856:	39 d8                	cmp    %ebx,%eax
   35858:	0f 85 b4 fa ff ff    	jne    35312 <_malloc_r+0x52>
   3585e:	8d 42 02             	lea    0x2(%edx),%eax
   35861:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   35864:	e9 56 fb ff ff       	jmp    353bf <_malloc_r+0xff>
   35869:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35870:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
   35875:	8b 53 08             	mov    0x8(%ebx),%edx
   35878:	8b 43 0c             	mov    0xc(%ebx),%eax
   3587b:	89 42 0c             	mov    %eax,0xc(%edx)
   3587e:	89 50 08             	mov    %edx,0x8(%eax)
   35881:	8b 45 08             	mov    0x8(%ebp),%eax
   35884:	89 04 24             	mov    %eax,(%esp)
   35887:	e8 24 02 00 00       	call   35ab0 <__malloc_unlock>
   3588c:	8d 43 08             	lea    0x8(%ebx),%eax
   3588f:	e9 a3 fa ff ff       	jmp    35337 <_malloc_r+0x77>
   35894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35898:	83 c6 5b             	add    $0x5b,%esi
   3589b:	8d 04 36             	lea    (%esi,%esi,1),%eax
   3589e:	e9 de fa ff ff       	jmp    35381 <_malloc_r+0xc1>
   358a3:	89 f1                	mov    %esi,%ecx
   358a5:	c1 e9 06             	shr    $0x6,%ecx
   358a8:	83 c1 38             	add    $0x38,%ecx
   358ab:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   358ae:	e9 92 fe ff ff       	jmp    35745 <_malloc_r+0x485>
   358b3:	81 fb 40 d5 03 00    	cmp    $0x3d540,%ebx
   358b9:	0f 84 f2 fc ff ff    	je     355b1 <_malloc_r+0x2f1>
   358bf:	8b 1d 48 d5 03 00    	mov    0x3d548,%ebx
   358c5:	8b 53 04             	mov    0x4(%ebx),%edx
   358c8:	83 e2 fc             	and    $0xfffffffc,%edx
   358cb:	e9 de fd ff ff       	jmp    356ae <_malloc_r+0x3ee>
   358d0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
   358d6:	77 3c                	ja     35914 <_malloc_r+0x654>
   358d8:	89 fe                	mov    %edi,%esi
   358da:	c1 ee 0f             	shr    $0xf,%esi
   358dd:	83 c6 77             	add    $0x77,%esi
   358e0:	8d 04 36             	lea    (%esi,%esi,1),%eax
   358e3:	e9 99 fa ff ff       	jmp    35381 <_malloc_r+0xc1>
   358e8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
   358ef:	89 cb                	mov    %ecx,%ebx
   358f1:	31 d2                	xor    %edx,%edx
   358f3:	e9 b6 fd ff ff       	jmp    356ae <_malloc_r+0x3ee>
   358f8:	c1 f9 02             	sar    $0x2,%ecx
   358fb:	b8 01 00 00 00       	mov    $0x1,%eax
   35900:	d3 e0                	shl    %cl,%eax
   35902:	89 d1                	mov    %edx,%ecx
   35904:	0b 05 44 d5 03 00    	or     0x3d544,%eax
   3590a:	a3 44 d5 03 00       	mov    %eax,0x3d544
   3590f:	e9 5d fe ff ff       	jmp    35771 <_malloc_r+0x4b1>
   35914:	81 fe 54 05 00 00    	cmp    $0x554,%esi
   3591a:	77 47                	ja     35963 <_malloc_r+0x6a3>
   3591c:	89 fe                	mov    %edi,%esi
   3591e:	c1 ee 12             	shr    $0x12,%esi
   35921:	83 c6 7c             	add    $0x7c,%esi
   35924:	8d 04 36             	lea    (%esi,%esi,1),%eax
   35927:	e9 55 fa ff ff       	jmp    35381 <_malloc_r+0xc1>
   3592c:	8b 45 08             	mov    0x8(%ebp),%eax
   3592f:	83 c3 08             	add    $0x8,%ebx
   35932:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   35936:	89 04 24             	mov    %eax,(%esp)
   35939:	e8 c2 22 00 00       	call   37c00 <_free_r>
   3593e:	8b 15 20 00 07 00    	mov    0x70020,%edx
   35944:	a1 48 d5 03 00       	mov    0x3d548,%eax
   35949:	e9 3c fd ff ff       	jmp    3568a <_malloc_r+0x3ca>
   3594e:	83 f9 54             	cmp    $0x54,%ecx
   35951:	77 58                	ja     359ab <_malloc_r+0x6eb>
   35953:	89 f1                	mov    %esi,%ecx
   35955:	c1 e9 0c             	shr    $0xc,%ecx
   35958:	83 c1 6e             	add    $0x6e,%ecx
   3595b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   3595e:	e9 e2 fd ff ff       	jmp    35745 <_malloc_r+0x485>
   35963:	b8 fc 00 00 00       	mov    $0xfc,%eax
   35968:	be 7e 00 00 00       	mov    $0x7e,%esi
   3596d:	e9 0f fa ff ff       	jmp    35381 <_malloc_r+0xc1>
   35972:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
   35979:	0f 85 4a fc ff ff    	jne    355c9 <_malloc_r+0x309>
   3597f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   35982:	a1 48 d5 03 00       	mov    0x3d548,%eax
   35987:	01 f1                	add    %esi,%ecx
   35989:	83 c9 01             	or     $0x1,%ecx
   3598c:	89 48 04             	mov    %ecx,0x4(%eax)
   3598f:	e9 f6 fc ff ff       	jmp    3568a <_malloc_r+0x3ca>
   35994:	b8 01 00 00 00       	mov    $0x1,%eax
   35999:	31 d2                	xor    %edx,%edx
   3599b:	e9 91 fc ff ff       	jmp    35631 <_malloc_r+0x371>
   359a0:	89 0d 20 d5 03 00    	mov    %ecx,0x3d520
   359a6:	e9 37 fc ff ff       	jmp    355e2 <_malloc_r+0x322>
   359ab:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
   359b1:	77 10                	ja     359c3 <_malloc_r+0x703>
   359b3:	89 f1                	mov    %esi,%ecx
   359b5:	c1 e9 0f             	shr    $0xf,%ecx
   359b8:	83 c1 77             	add    $0x77,%ecx
   359bb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   359be:	e9 82 fd ff ff       	jmp    35745 <_malloc_r+0x485>
   359c3:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
   359c9:	77 10                	ja     359db <_malloc_r+0x71b>
   359cb:	89 f1                	mov    %esi,%ecx
   359cd:	c1 e9 12             	shr    $0x12,%ecx
   359d0:	83 c1 7c             	add    $0x7c,%ecx
   359d3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   359d6:	e9 6a fd ff ff       	jmp    35745 <_malloc_r+0x485>
   359db:	b8 fc 00 00 00       	mov    $0xfc,%eax
   359e0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
   359e5:	e9 5b fd ff ff       	jmp    35745 <_malloc_r+0x485>
   359ea:	a1 44 d5 03 00       	mov    0x3d544,%eax
   359ef:	e9 20 fe ff ff       	jmp    35814 <_malloc_r+0x554>
   359f4:	8b 45 e0             	mov    -0x20(%ebp),%eax
   359f7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   359fa:	e9 88 fa ff ff       	jmp    35487 <_malloc_r+0x1c7>
   359ff:	90                   	nop

00035a00 <memchr>:
   35a00:	55                   	push   %ebp
   35a01:	89 e5                	mov    %esp,%ebp
   35a03:	57                   	push   %edi
   35a04:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
   35a08:	8b 4d 10             	mov    0x10(%ebp),%ecx
   35a0b:	8b 7d 08             	mov    0x8(%ebp),%edi
   35a0e:	31 d2                	xor    %edx,%edx
   35a10:	85 c9                	test   %ecx,%ecx
   35a12:	74 79                	je     35a8d <L20>
   35a14:	f7 c7 03 00 00 00    	test   $0x3,%edi
   35a1a:	74 28                	je     35a44 <L5>
   35a1c:	3a 07                	cmp    (%edi),%al
   35a1e:	74 6a                	je     35a8a <L15>
   35a20:	47                   	inc    %edi
   35a21:	49                   	dec    %ecx
   35a22:	74 69                	je     35a8d <L20>
   35a24:	f7 c7 03 00 00 00    	test   $0x3,%edi
   35a2a:	74 18                	je     35a44 <L5>
   35a2c:	3a 07                	cmp    (%edi),%al
   35a2e:	74 5a                	je     35a8a <L15>
   35a30:	47                   	inc    %edi
   35a31:	49                   	dec    %ecx
   35a32:	74 59                	je     35a8d <L20>
   35a34:	f7 c7 03 00 00 00    	test   $0x3,%edi
   35a3a:	74 08                	je     35a44 <L5>
   35a3c:	3a 07                	cmp    (%edi),%al
   35a3e:	74 4a                	je     35a8a <L15>
   35a40:	47                   	inc    %edi
   35a41:	49                   	dec    %ecx
   35a42:	74 49                	je     35a8d <L20>

00035a44 <L5>:
   35a44:	88 c4                	mov    %al,%ah
   35a46:	89 c2                	mov    %eax,%edx
   35a48:	c1 e2 10             	shl    $0x10,%edx
   35a4b:	09 d0                	or     %edx,%eax
   35a4d:	53                   	push   %ebx
   35a4e:	66 90                	xchg   %ax,%ax

00035a50 <L8>:
   35a50:	83 e9 04             	sub    $0x4,%ecx
   35a53:	72 1c                	jb     35a71 <L9>
   35a55:	8b 17                	mov    (%edi),%edx
   35a57:	83 c7 04             	add    $0x4,%edi
   35a5a:	31 c2                	xor    %eax,%edx
   35a5c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
   35a62:	f7 d2                	not    %edx
   35a64:	21 d3                	and    %edx,%ebx
   35a66:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
   35a6c:	74 e2                	je     35a50 <L8>
   35a6e:	83 ef 04             	sub    $0x4,%edi

00035a71 <L9>:
   35a71:	5b                   	pop    %ebx
   35a72:	31 d2                	xor    %edx,%edx
   35a74:	83 c1 04             	add    $0x4,%ecx
   35a77:	74 14                	je     35a8d <L20>
   35a79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035a80 <L10>:
   35a80:	3a 07                	cmp    (%edi),%al
   35a82:	74 06                	je     35a8a <L15>
   35a84:	47                   	inc    %edi
   35a85:	49                   	dec    %ecx
   35a86:	75 f8                	jne    35a80 <L10>
   35a88:	31 ff                	xor    %edi,%edi

00035a8a <L15>:
   35a8a:	4a                   	dec    %edx
   35a8b:	21 fa                	and    %edi,%edx

00035a8d <L20>:
   35a8d:	89 d0                	mov    %edx,%eax
   35a8f:	8d 65 fc             	lea    -0x4(%ebp),%esp
   35a92:	5f                   	pop    %edi
   35a93:	c9                   	leave  
   35a94:	c3                   	ret    
   35a95:	66 90                	xchg   %ax,%ax
   35a97:	66 90                	xchg   %ax,%ax
   35a99:	66 90                	xchg   %ax,%ax
   35a9b:	66 90                	xchg   %ax,%ax
   35a9d:	66 90                	xchg   %ax,%ax
   35a9f:	90                   	nop

00035aa0 <__malloc_lock>:
   35aa0:	55                   	push   %ebp
   35aa1:	89 e5                	mov    %esp,%ebp
   35aa3:	5d                   	pop    %ebp
   35aa4:	c3                   	ret    
   35aa5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35aa9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00035ab0 <__malloc_unlock>:
   35ab0:	55                   	push   %ebp
   35ab1:	89 e5                	mov    %esp,%ebp
   35ab3:	5d                   	pop    %ebp
   35ab4:	c3                   	ret    
   35ab5:	66 90                	xchg   %ax,%ax
   35ab7:	66 90                	xchg   %ax,%ax
   35ab9:	66 90                	xchg   %ax,%ax
   35abb:	66 90                	xchg   %ax,%ax
   35abd:	66 90                	xchg   %ax,%ax
   35abf:	90                   	nop

00035ac0 <_Balloc>:
   35ac0:	55                   	push   %ebp
   35ac1:	89 e5                	mov    %esp,%ebp
   35ac3:	57                   	push   %edi
   35ac4:	56                   	push   %esi
   35ac5:	53                   	push   %ebx
   35ac6:	83 ec 1c             	sub    $0x1c,%esp
   35ac9:	8b 75 08             	mov    0x8(%ebp),%esi
   35acc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   35acf:	8b 46 4c             	mov    0x4c(%esi),%eax
   35ad2:	85 c0                	test   %eax,%eax
   35ad4:	74 2a                	je     35b00 <_Balloc+0x40>
   35ad6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
   35ad9:	8b 02                	mov    (%edx),%eax
   35adb:	85 c0                	test   %eax,%eax
   35add:	74 49                	je     35b28 <_Balloc+0x68>
   35adf:	8b 08                	mov    (%eax),%ecx
   35ae1:	89 0a                	mov    %ecx,(%edx)
   35ae3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
   35aea:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
   35af1:	83 c4 1c             	add    $0x1c,%esp
   35af4:	5b                   	pop    %ebx
   35af5:	5e                   	pop    %esi
   35af6:	5f                   	pop    %edi
   35af7:	5d                   	pop    %ebp
   35af8:	c3                   	ret    
   35af9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35b00:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
   35b07:	00 
   35b08:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
   35b0f:	00 
   35b10:	89 34 24             	mov    %esi,(%esp)
   35b13:	e8 38 1f 00 00       	call   37a50 <_calloc_r>
   35b18:	85 c0                	test   %eax,%eax
   35b1a:	89 46 4c             	mov    %eax,0x4c(%esi)
   35b1d:	75 b7                	jne    35ad6 <_Balloc+0x16>
   35b1f:	31 c0                	xor    %eax,%eax
   35b21:	eb ce                	jmp    35af1 <_Balloc+0x31>
   35b23:	90                   	nop
   35b24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35b28:	89 d9                	mov    %ebx,%ecx
   35b2a:	bf 01 00 00 00       	mov    $0x1,%edi
   35b2f:	d3 e7                	shl    %cl,%edi
   35b31:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
   35b38:	89 44 24 08          	mov    %eax,0x8(%esp)
   35b3c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   35b43:	00 
   35b44:	89 34 24             	mov    %esi,(%esp)
   35b47:	e8 04 1f 00 00       	call   37a50 <_calloc_r>
   35b4c:	85 c0                	test   %eax,%eax
   35b4e:	74 cf                	je     35b1f <_Balloc+0x5f>
   35b50:	89 58 04             	mov    %ebx,0x4(%eax)
   35b53:	89 78 08             	mov    %edi,0x8(%eax)
   35b56:	eb 8b                	jmp    35ae3 <_Balloc+0x23>
   35b58:	90                   	nop
   35b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035b60 <_Bfree>:
   35b60:	55                   	push   %ebp
   35b61:	89 e5                	mov    %esp,%ebp
   35b63:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b66:	85 c0                	test   %eax,%eax
   35b68:	74 12                	je     35b7c <_Bfree+0x1c>
   35b6a:	8b 55 08             	mov    0x8(%ebp),%edx
   35b6d:	8b 48 04             	mov    0x4(%eax),%ecx
   35b70:	8b 52 4c             	mov    0x4c(%edx),%edx
   35b73:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
   35b76:	8b 0a                	mov    (%edx),%ecx
   35b78:	89 08                	mov    %ecx,(%eax)
   35b7a:	89 02                	mov    %eax,(%edx)
   35b7c:	5d                   	pop    %ebp
   35b7d:	c3                   	ret    
   35b7e:	66 90                	xchg   %ax,%ax

00035b80 <__multadd>:
   35b80:	55                   	push   %ebp
   35b81:	89 e5                	mov    %esp,%ebp
   35b83:	57                   	push   %edi
   35b84:	56                   	push   %esi
   35b85:	53                   	push   %ebx
   35b86:	83 ec 2c             	sub    $0x2c,%esp
   35b89:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b8c:	8b 5d 14             	mov    0x14(%ebp),%ebx
   35b8f:	8b 40 10             	mov    0x10(%eax),%eax
   35b92:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   35b95:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b98:	8d 78 14             	lea    0x14(%eax),%edi
   35b9b:	31 c0                	xor    %eax,%eax
   35b9d:	8d 76 00             	lea    0x0(%esi),%esi
   35ba0:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
   35ba3:	0f b7 d1             	movzwl %cx,%edx
   35ba6:	0f af 55 10          	imul   0x10(%ebp),%edx
   35baa:	c1 e9 10             	shr    $0x10,%ecx
   35bad:	0f af 4d 10          	imul   0x10(%ebp),%ecx
   35bb1:	01 da                	add    %ebx,%edx
   35bb3:	89 d3                	mov    %edx,%ebx
   35bb5:	0f b7 d2             	movzwl %dx,%edx
   35bb8:	c1 eb 10             	shr    $0x10,%ebx
   35bbb:	01 d9                	add    %ebx,%ecx
   35bbd:	89 ce                	mov    %ecx,%esi
   35bbf:	c1 e1 10             	shl    $0x10,%ecx
   35bc2:	01 d1                	add    %edx,%ecx
   35bc4:	c1 ee 10             	shr    $0x10,%esi
   35bc7:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
   35bca:	83 c0 01             	add    $0x1,%eax
   35bcd:	89 f3                	mov    %esi,%ebx
   35bcf:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
   35bd2:	7f cc                	jg     35ba0 <__multadd+0x20>
   35bd4:	85 f6                	test   %esi,%esi
   35bd6:	74 1b                	je     35bf3 <__multadd+0x73>
   35bd8:	8b 45 0c             	mov    0xc(%ebp),%eax
   35bdb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
   35bde:	3b 78 08             	cmp    0x8(%eax),%edi
   35be1:	7d 1d                	jge    35c00 <__multadd+0x80>
   35be3:	8b 7d 0c             	mov    0xc(%ebp),%edi
   35be6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   35be9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
   35bed:	83 c0 01             	add    $0x1,%eax
   35bf0:	89 47 10             	mov    %eax,0x10(%edi)
   35bf3:	8b 45 0c             	mov    0xc(%ebp),%eax
   35bf6:	83 c4 2c             	add    $0x2c,%esp
   35bf9:	5b                   	pop    %ebx
   35bfa:	5e                   	pop    %esi
   35bfb:	5f                   	pop    %edi
   35bfc:	5d                   	pop    %ebp
   35bfd:	c3                   	ret    
   35bfe:	66 90                	xchg   %ax,%ax
   35c00:	8b 40 04             	mov    0x4(%eax),%eax
   35c03:	89 45 e0             	mov    %eax,-0x20(%ebp)
   35c06:	83 c0 01             	add    $0x1,%eax
   35c09:	89 44 24 04          	mov    %eax,0x4(%esp)
   35c0d:	8b 45 08             	mov    0x8(%ebp),%eax
   35c10:	89 04 24             	mov    %eax,(%esp)
   35c13:	e8 a8 fe ff ff       	call   35ac0 <_Balloc>
   35c18:	89 c3                	mov    %eax,%ebx
   35c1a:	8b 45 0c             	mov    0xc(%ebp),%eax
   35c1d:	8b 40 10             	mov    0x10(%eax),%eax
   35c20:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
   35c27:	89 44 24 08          	mov    %eax,0x8(%esp)
   35c2b:	8b 45 0c             	mov    0xc(%ebp),%eax
   35c2e:	83 c0 0c             	add    $0xc,%eax
   35c31:	89 44 24 04          	mov    %eax,0x4(%esp)
   35c35:	8d 43 0c             	lea    0xc(%ebx),%eax
   35c38:	89 04 24             	mov    %eax,(%esp)
   35c3b:	e8 c4 c0 ff ff       	call   31d04 <memcpy>
   35c40:	8b 45 0c             	mov    0xc(%ebp),%eax
   35c43:	8b 7d 0c             	mov    0xc(%ebp),%edi
   35c46:	89 5d 0c             	mov    %ebx,0xc(%ebp)
   35c49:	8b 50 04             	mov    0x4(%eax),%edx
   35c4c:	8b 45 08             	mov    0x8(%ebp),%eax
   35c4f:	8b 40 4c             	mov    0x4c(%eax),%eax
   35c52:	8d 04 90             	lea    (%eax,%edx,4),%eax
   35c55:	8b 10                	mov    (%eax),%edx
   35c57:	89 17                	mov    %edx,(%edi)
   35c59:	89 38                	mov    %edi,(%eax)
   35c5b:	eb 86                	jmp    35be3 <__multadd+0x63>
   35c5d:	8d 76 00             	lea    0x0(%esi),%esi

00035c60 <__s2b>:
   35c60:	55                   	push   %ebp
   35c61:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
   35c66:	89 e5                	mov    %esp,%ebp
   35c68:	57                   	push   %edi
   35c69:	56                   	push   %esi
   35c6a:	53                   	push   %ebx
   35c6b:	83 ec 2c             	sub    $0x2c,%esp
   35c6e:	8b 45 14             	mov    0x14(%ebp),%eax
   35c71:	8b 5d 08             	mov    0x8(%ebp),%ebx
   35c74:	8b 75 0c             	mov    0xc(%ebp),%esi
   35c77:	8d 48 08             	lea    0x8(%eax),%ecx
   35c7a:	89 c8                	mov    %ecx,%eax
   35c7c:	f7 ea                	imul   %edx
   35c7e:	c1 f9 1f             	sar    $0x1f,%ecx
   35c81:	d1 fa                	sar    %edx
   35c83:	29 ca                	sub    %ecx,%edx
   35c85:	83 fa 01             	cmp    $0x1,%edx
   35c88:	0f 8e be 00 00 00    	jle    35d4c <__s2b+0xec>
   35c8e:	b8 01 00 00 00       	mov    $0x1,%eax
   35c93:	31 c9                	xor    %ecx,%ecx
   35c95:	8d 76 00             	lea    0x0(%esi),%esi
   35c98:	01 c0                	add    %eax,%eax
   35c9a:	83 c1 01             	add    $0x1,%ecx
   35c9d:	39 c2                	cmp    %eax,%edx
   35c9f:	7f f7                	jg     35c98 <__s2b+0x38>
   35ca1:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   35ca5:	89 1c 24             	mov    %ebx,(%esp)
   35ca8:	e8 13 fe ff ff       	call   35ac0 <_Balloc>
   35cad:	8b 55 18             	mov    0x18(%ebp),%edx
   35cb0:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
   35cb4:	89 50 14             	mov    %edx,0x14(%eax)
   35cb7:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   35cbe:	0f 8e 7c 00 00 00    	jle    35d40 <__s2b+0xe0>
   35cc4:	8d 4e 09             	lea    0x9(%esi),%ecx
   35cc7:	03 75 10             	add    0x10(%ebp),%esi
   35cca:	89 cf                	mov    %ecx,%edi
   35ccc:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   35ccf:	90                   	nop
   35cd0:	83 c7 01             	add    $0x1,%edi
   35cd3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
   35cd7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   35cde:	00 
   35cdf:	89 44 24 04          	mov    %eax,0x4(%esp)
   35ce3:	89 1c 24             	mov    %ebx,(%esp)
   35ce6:	83 ea 30             	sub    $0x30,%edx
   35ce9:	89 54 24 0c          	mov    %edx,0xc(%esp)
   35ced:	e8 8e fe ff ff       	call   35b80 <__multadd>
   35cf2:	39 f7                	cmp    %esi,%edi
   35cf4:	75 da                	jne    35cd0 <__s2b+0x70>
   35cf6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   35cf9:	8b 7d 10             	mov    0x10(%ebp),%edi
   35cfc:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
   35d00:	8b 4d 10             	mov    0x10(%ebp),%ecx
   35d03:	39 4d 14             	cmp    %ecx,0x14(%ebp)
   35d06:	7e 2e                	jle    35d36 <__s2b+0xd6>
   35d08:	8b 7d 14             	mov    0x14(%ebp),%edi
   35d0b:	29 cf                	sub    %ecx,%edi
   35d0d:	01 f7                	add    %esi,%edi
   35d0f:	90                   	nop
   35d10:	83 c6 01             	add    $0x1,%esi
   35d13:	0f be 56 ff          	movsbl -0x1(%esi),%edx
   35d17:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   35d1e:	00 
   35d1f:	89 44 24 04          	mov    %eax,0x4(%esp)
   35d23:	89 1c 24             	mov    %ebx,(%esp)
   35d26:	83 ea 30             	sub    $0x30,%edx
   35d29:	89 54 24 0c          	mov    %edx,0xc(%esp)
   35d2d:	e8 4e fe ff ff       	call   35b80 <__multadd>
   35d32:	39 fe                	cmp    %edi,%esi
   35d34:	75 da                	jne    35d10 <__s2b+0xb0>
   35d36:	83 c4 2c             	add    $0x2c,%esp
   35d39:	5b                   	pop    %ebx
   35d3a:	5e                   	pop    %esi
   35d3b:	5f                   	pop    %edi
   35d3c:	5d                   	pop    %ebp
   35d3d:	c3                   	ret    
   35d3e:	66 90                	xchg   %ax,%ax
   35d40:	83 c6 0a             	add    $0xa,%esi
   35d43:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
   35d4a:	eb b4                	jmp    35d00 <__s2b+0xa0>
   35d4c:	31 c9                	xor    %ecx,%ecx
   35d4e:	e9 4e ff ff ff       	jmp    35ca1 <__s2b+0x41>
   35d53:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35d59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00035d60 <__hi0bits>:
   35d60:	55                   	push   %ebp
   35d61:	31 c9                	xor    %ecx,%ecx
   35d63:	89 e5                	mov    %esp,%ebp
   35d65:	8b 55 08             	mov    0x8(%ebp),%edx
   35d68:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
   35d6e:	75 05                	jne    35d75 <__hi0bits+0x15>
   35d70:	c1 e2 10             	shl    $0x10,%edx
   35d73:	b1 10                	mov    $0x10,%cl
   35d75:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
   35d7b:	75 06                	jne    35d83 <__hi0bits+0x23>
   35d7d:	83 c1 08             	add    $0x8,%ecx
   35d80:	c1 e2 08             	shl    $0x8,%edx
   35d83:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
   35d89:	75 06                	jne    35d91 <__hi0bits+0x31>
   35d8b:	83 c1 04             	add    $0x4,%ecx
   35d8e:	c1 e2 04             	shl    $0x4,%edx
   35d91:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
   35d97:	75 06                	jne    35d9f <__hi0bits+0x3f>
   35d99:	83 c1 02             	add    $0x2,%ecx
   35d9c:	c1 e2 02             	shl    $0x2,%edx
   35d9f:	85 d2                	test   %edx,%edx
   35da1:	89 c8                	mov    %ecx,%eax
   35da3:	78 0d                	js     35db2 <__hi0bits+0x52>
   35da5:	81 e2 00 00 00 40    	and    $0x40000000,%edx
   35dab:	b8 20 00 00 00       	mov    $0x20,%eax
   35db0:	75 06                	jne    35db8 <__hi0bits+0x58>
   35db2:	5d                   	pop    %ebp
   35db3:	c3                   	ret    
   35db4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35db8:	8d 41 01             	lea    0x1(%ecx),%eax
   35dbb:	5d                   	pop    %ebp
   35dbc:	c3                   	ret    
   35dbd:	8d 76 00             	lea    0x0(%esi),%esi

00035dc0 <__lo0bits>:
   35dc0:	55                   	push   %ebp
   35dc1:	89 e5                	mov    %esp,%ebp
   35dc3:	53                   	push   %ebx
   35dc4:	8b 5d 08             	mov    0x8(%ebp),%ebx
   35dc7:	8b 13                	mov    (%ebx),%edx
   35dc9:	f6 c2 07             	test   $0x7,%dl
   35dcc:	74 1a                	je     35de8 <__lo0bits+0x28>
   35dce:	31 c0                	xor    %eax,%eax
   35dd0:	f6 c2 01             	test   $0x1,%dl
   35dd3:	75 0f                	jne    35de4 <__lo0bits+0x24>
   35dd5:	f6 c2 02             	test   $0x2,%dl
   35dd8:	75 56                	jne    35e30 <__lo0bits+0x70>
   35dda:	c1 ea 02             	shr    $0x2,%edx
   35ddd:	b8 02 00 00 00       	mov    $0x2,%eax
   35de2:	89 13                	mov    %edx,(%ebx)
   35de4:	5b                   	pop    %ebx
   35de5:	5d                   	pop    %ebp
   35de6:	c3                   	ret    
   35de7:	90                   	nop
   35de8:	31 c9                	xor    %ecx,%ecx
   35dea:	66 85 d2             	test   %dx,%dx
   35ded:	75 05                	jne    35df4 <__lo0bits+0x34>
   35def:	c1 ea 10             	shr    $0x10,%edx
   35df2:	b1 10                	mov    $0x10,%cl
   35df4:	84 d2                	test   %dl,%dl
   35df6:	75 06                	jne    35dfe <__lo0bits+0x3e>
   35df8:	83 c1 08             	add    $0x8,%ecx
   35dfb:	c1 ea 08             	shr    $0x8,%edx
   35dfe:	f6 c2 0f             	test   $0xf,%dl
   35e01:	75 06                	jne    35e09 <__lo0bits+0x49>
   35e03:	83 c1 04             	add    $0x4,%ecx
   35e06:	c1 ea 04             	shr    $0x4,%edx
   35e09:	f6 c2 03             	test   $0x3,%dl
   35e0c:	75 06                	jne    35e14 <__lo0bits+0x54>
   35e0e:	83 c1 02             	add    $0x2,%ecx
   35e11:	c1 ea 02             	shr    $0x2,%edx
   35e14:	f6 c2 01             	test   $0x1,%dl
   35e17:	75 0c                	jne    35e25 <__lo0bits+0x65>
   35e19:	d1 ea                	shr    %edx
   35e1b:	b8 20 00 00 00       	mov    $0x20,%eax
   35e20:	74 c2                	je     35de4 <__lo0bits+0x24>
   35e22:	83 c1 01             	add    $0x1,%ecx
   35e25:	89 13                	mov    %edx,(%ebx)
   35e27:	89 c8                	mov    %ecx,%eax
   35e29:	5b                   	pop    %ebx
   35e2a:	5d                   	pop    %ebp
   35e2b:	c3                   	ret    
   35e2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35e30:	d1 ea                	shr    %edx
   35e32:	b0 01                	mov    $0x1,%al
   35e34:	89 13                	mov    %edx,(%ebx)
   35e36:	5b                   	pop    %ebx
   35e37:	5d                   	pop    %ebp
   35e38:	c3                   	ret    
   35e39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035e40 <__i2b>:
   35e40:	55                   	push   %ebp
   35e41:	89 e5                	mov    %esp,%ebp
   35e43:	83 ec 18             	sub    $0x18,%esp
   35e46:	8b 45 08             	mov    0x8(%ebp),%eax
   35e49:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   35e50:	00 
   35e51:	89 04 24             	mov    %eax,(%esp)
   35e54:	e8 67 fc ff ff       	call   35ac0 <_Balloc>
   35e59:	8b 55 0c             	mov    0xc(%ebp),%edx
   35e5c:	89 50 14             	mov    %edx,0x14(%eax)
   35e5f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   35e66:	c9                   	leave  
   35e67:	c3                   	ret    
   35e68:	90                   	nop
   35e69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035e70 <__multiply>:
   35e70:	55                   	push   %ebp
   35e71:	89 e5                	mov    %esp,%ebp
   35e73:	57                   	push   %edi
   35e74:	56                   	push   %esi
   35e75:	53                   	push   %ebx
   35e76:	83 ec 3c             	sub    $0x3c,%esp
   35e79:	8b 75 0c             	mov    0xc(%ebp),%esi
   35e7c:	8b 45 10             	mov    0x10(%ebp),%eax
   35e7f:	8b 7e 10             	mov    0x10(%esi),%edi
   35e82:	8b 58 10             	mov    0x10(%eax),%ebx
   35e85:	39 df                	cmp    %ebx,%edi
   35e87:	7d 0e                	jge    35e97 <__multiply+0x27>
   35e89:	89 f8                	mov    %edi,%eax
   35e8b:	89 df                	mov    %ebx,%edi
   35e8d:	89 c3                	mov    %eax,%ebx
   35e8f:	89 f0                	mov    %esi,%eax
   35e91:	8b 75 10             	mov    0x10(%ebp),%esi
   35e94:	89 45 10             	mov    %eax,0x10(%ebp)
   35e97:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
   35e9a:	3b 46 08             	cmp    0x8(%esi),%eax
   35e9d:	89 45 c8             	mov    %eax,-0x38(%ebp)
   35ea0:	0f 9f c0             	setg   %al
   35ea3:	0f b6 c0             	movzbl %al,%eax
   35ea6:	03 46 04             	add    0x4(%esi),%eax
   35ea9:	89 44 24 04          	mov    %eax,0x4(%esp)
   35ead:	8b 45 08             	mov    0x8(%ebp),%eax
   35eb0:	89 04 24             	mov    %eax,(%esp)
   35eb3:	e8 08 fc ff ff       	call   35ac0 <_Balloc>
   35eb8:	8b 55 c8             	mov    -0x38(%ebp),%edx
   35ebb:	89 45 c0             	mov    %eax,-0x40(%ebp)
   35ebe:	8d 40 14             	lea    0x14(%eax),%eax
   35ec1:	8d 14 90             	lea    (%eax,%edx,4),%edx
   35ec4:	89 d1                	mov    %edx,%ecx
   35ec6:	39 c8                	cmp    %ecx,%eax
   35ec8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   35ecb:	89 55 c4             	mov    %edx,-0x3c(%ebp)
   35ece:	73 15                	jae    35ee5 <__multiply+0x75>
   35ed0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
   35ed3:	90                   	nop
   35ed4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35ed8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   35ede:	83 c0 04             	add    $0x4,%eax
   35ee1:	39 c2                	cmp    %eax,%edx
   35ee3:	77 f3                	ja     35ed8 <__multiply+0x68>
   35ee5:	8d 46 14             	lea    0x14(%esi),%eax
   35ee8:	89 45 d0             	mov    %eax,-0x30(%ebp)
   35eeb:	8d 04 b8             	lea    (%eax,%edi,4),%eax
   35eee:	89 45 dc             	mov    %eax,-0x24(%ebp)
   35ef1:	8b 45 10             	mov    0x10(%ebp),%eax
   35ef4:	83 c0 14             	add    $0x14,%eax
   35ef7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
   35efa:	39 f8                	cmp    %edi,%eax
   35efc:	89 45 d8             	mov    %eax,-0x28(%ebp)
   35eff:	89 7d cc             	mov    %edi,-0x34(%ebp)
   35f02:	0f 83 e8 00 00 00    	jae    35ff0 <__multiply+0x180>
   35f08:	8b 45 d8             	mov    -0x28(%ebp),%eax
   35f0b:	8b 00                	mov    (%eax),%eax
   35f0d:	0f b7 f8             	movzwl %ax,%edi
   35f10:	85 ff                	test   %edi,%edi
   35f12:	89 7d e4             	mov    %edi,-0x1c(%ebp)
   35f15:	74 5a                	je     35f71 <__multiply+0x101>
   35f17:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   35f1a:	31 db                	xor    %ebx,%ebx
   35f1c:	8b 75 d0             	mov    -0x30(%ebp),%esi
   35f1f:	eb 09                	jmp    35f2a <__multiply+0xba>
   35f21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35f28:	89 fa                	mov    %edi,%edx
   35f2a:	8b 0e                	mov    (%esi),%ecx
   35f2c:	83 c6 04             	add    $0x4,%esi
   35f2f:	0f b7 3a             	movzwl (%edx),%edi
   35f32:	0f b7 c1             	movzwl %cx,%eax
   35f35:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
   35f39:	c1 e9 10             	shr    $0x10,%ecx
   35f3c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
   35f40:	01 f8                	add    %edi,%eax
   35f42:	01 d8                	add    %ebx,%eax
   35f44:	8b 1a                	mov    (%edx),%ebx
   35f46:	8d 7a 04             	lea    0x4(%edx),%edi
   35f49:	c1 eb 10             	shr    $0x10,%ebx
   35f4c:	01 d9                	add    %ebx,%ecx
   35f4e:	89 c3                	mov    %eax,%ebx
   35f50:	c1 eb 10             	shr    $0x10,%ebx
   35f53:	0f b7 c0             	movzwl %ax,%eax
   35f56:	01 d9                	add    %ebx,%ecx
   35f58:	89 cb                	mov    %ecx,%ebx
   35f5a:	c1 e1 10             	shl    $0x10,%ecx
   35f5d:	09 c1                	or     %eax,%ecx
   35f5f:	c1 eb 10             	shr    $0x10,%ebx
   35f62:	39 75 dc             	cmp    %esi,-0x24(%ebp)
   35f65:	89 0a                	mov    %ecx,(%edx)
   35f67:	77 bf                	ja     35f28 <__multiply+0xb8>
   35f69:	8b 45 d8             	mov    -0x28(%ebp),%eax
   35f6c:	89 5a 04             	mov    %ebx,0x4(%edx)
   35f6f:	8b 00                	mov    (%eax),%eax
   35f71:	c1 e8 10             	shr    $0x10,%eax
   35f74:	85 c0                	test   %eax,%eax
   35f76:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   35f79:	74 61                	je     35fdc <__multiply+0x16c>
   35f7b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   35f7e:	31 ff                	xor    %edi,%edi
   35f80:	89 fe                	mov    %edi,%esi
   35f82:	8b 10                	mov    (%eax),%edx
   35f84:	89 45 e0             	mov    %eax,-0x20(%ebp)
   35f87:	8b 45 d0             	mov    -0x30(%ebp),%eax
   35f8a:	89 d3                	mov    %edx,%ebx
   35f8c:	eb 05                	jmp    35f93 <__multiply+0x123>
   35f8e:	66 90                	xchg   %ax,%ax
   35f90:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   35f93:	0f b7 08             	movzwl (%eax),%ecx
   35f96:	c1 eb 10             	shr    $0x10,%ebx
   35f99:	0f b7 d2             	movzwl %dx,%edx
   35f9c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
   35fa0:	83 c0 04             	add    $0x4,%eax
   35fa3:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
   35fa6:	01 f7                	add    %esi,%edi
   35fa8:	8b 75 e0             	mov    -0x20(%ebp),%esi
   35fab:	89 fb                	mov    %edi,%ebx
   35fad:	c1 e3 10             	shl    $0x10,%ebx
   35fb0:	09 d3                	or     %edx,%ebx
   35fb2:	89 1e                	mov    %ebx,(%esi)
   35fb4:	8b 5e 04             	mov    0x4(%esi),%ebx
   35fb7:	8d 4e 04             	lea    0x4(%esi),%ecx
   35fba:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
   35fbe:	c1 ef 10             	shr    $0x10,%edi
   35fc1:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
   35fc5:	0f b7 f3             	movzwl %bx,%esi
   35fc8:	01 f2                	add    %esi,%edx
   35fca:	01 fa                	add    %edi,%edx
   35fcc:	89 d6                	mov    %edx,%esi
   35fce:	c1 ee 10             	shr    $0x10,%esi
   35fd1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
   35fd4:	77 ba                	ja     35f90 <__multiply+0x120>
   35fd6:	8b 45 e0             	mov    -0x20(%ebp),%eax
   35fd9:	89 50 04             	mov    %edx,0x4(%eax)
   35fdc:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
   35fe0:	8b 45 d8             	mov    -0x28(%ebp),%eax
   35fe3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
   35fe7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
   35fea:	0f 87 18 ff ff ff    	ja     35f08 <__multiply+0x98>
   35ff0:	8b 75 c8             	mov    -0x38(%ebp),%esi
   35ff3:	85 f6                	test   %esi,%esi
   35ff5:	7e 29                	jle    36020 <__multiply+0x1b0>
   35ff7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
   35ffa:	8b 5f fc             	mov    -0x4(%edi),%ebx
   35ffd:	85 db                	test   %ebx,%ebx
   35fff:	75 1f                	jne    36020 <__multiply+0x1b0>
   36001:	8b 55 c8             	mov    -0x38(%ebp),%edx
   36004:	89 d0                	mov    %edx,%eax
   36006:	c1 e0 02             	shl    $0x2,%eax
   36009:	29 c7                	sub    %eax,%edi
   3600b:	89 f8                	mov    %edi,%eax
   3600d:	eb 09                	jmp    36018 <__multiply+0x1a8>
   3600f:	90                   	nop
   36010:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
   36014:	85 c9                	test   %ecx,%ecx
   36016:	75 05                	jne    3601d <__multiply+0x1ad>
   36018:	83 ea 01             	sub    $0x1,%edx
   3601b:	75 f3                	jne    36010 <__multiply+0x1a0>
   3601d:	89 55 c8             	mov    %edx,-0x38(%ebp)
   36020:	8b 45 c0             	mov    -0x40(%ebp),%eax
   36023:	8b 7d c8             	mov    -0x38(%ebp),%edi
   36026:	89 78 10             	mov    %edi,0x10(%eax)
   36029:	83 c4 3c             	add    $0x3c,%esp
   3602c:	5b                   	pop    %ebx
   3602d:	5e                   	pop    %esi
   3602e:	5f                   	pop    %edi
   3602f:	5d                   	pop    %ebp
   36030:	c3                   	ret    
   36031:	eb 0d                	jmp    36040 <__pow5mult>
   36033:	90                   	nop
   36034:	90                   	nop
   36035:	90                   	nop
   36036:	90                   	nop
   36037:	90                   	nop
   36038:	90                   	nop
   36039:	90                   	nop
   3603a:	90                   	nop
   3603b:	90                   	nop
   3603c:	90                   	nop
   3603d:	90                   	nop
   3603e:	90                   	nop
   3603f:	90                   	nop

00036040 <__pow5mult>:
   36040:	55                   	push   %ebp
   36041:	89 e5                	mov    %esp,%ebp
   36043:	57                   	push   %edi
   36044:	56                   	push   %esi
   36045:	53                   	push   %ebx
   36046:	83 ec 2c             	sub    $0x2c,%esp
   36049:	8b 5d 10             	mov    0x10(%ebp),%ebx
   3604c:	8b 4d 08             	mov    0x8(%ebp),%ecx
   3604f:	8b 7d 0c             	mov    0xc(%ebp),%edi
   36052:	89 d8                	mov    %ebx,%eax
   36054:	83 e0 03             	and    $0x3,%eax
   36057:	0f 85 a3 00 00 00    	jne    36100 <__pow5mult+0xc0>
   3605d:	c1 fb 02             	sar    $0x2,%ebx
   36060:	85 db                	test   %ebx,%ebx
   36062:	74 5c                	je     360c0 <__pow5mult+0x80>
   36064:	8b 71 48             	mov    0x48(%ecx),%esi
   36067:	85 f6                	test   %esi,%esi
   36069:	0f 84 bd 00 00 00    	je     3612c <__pow5mult+0xec>
   3606f:	f6 c3 01             	test   $0x1,%bl
   36072:	75 15                	jne    36089 <__pow5mult+0x49>
   36074:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36078:	d1 fb                	sar    %ebx
   3607a:	74 44                	je     360c0 <__pow5mult+0x80>
   3607c:	8b 06                	mov    (%esi),%eax
   3607e:	85 c0                	test   %eax,%eax
   36080:	74 4e                	je     360d0 <__pow5mult+0x90>
   36082:	89 c6                	mov    %eax,%esi
   36084:	f6 c3 01             	test   $0x1,%bl
   36087:	74 ef                	je     36078 <__pow5mult+0x38>
   36089:	89 0c 24             	mov    %ecx,(%esp)
   3608c:	89 74 24 08          	mov    %esi,0x8(%esp)
   36090:	89 7c 24 04          	mov    %edi,0x4(%esp)
   36094:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   36097:	e8 d4 fd ff ff       	call   35e70 <__multiply>
   3609c:	85 ff                	test   %edi,%edi
   3609e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   360a1:	89 45 e0             	mov    %eax,-0x20(%ebp)
   360a4:	74 52                	je     360f8 <__pow5mult+0xb8>
   360a6:	8b 57 04             	mov    0x4(%edi),%edx
   360a9:	d1 fb                	sar    %ebx
   360ab:	8b 41 4c             	mov    0x4c(%ecx),%eax
   360ae:	8d 04 90             	lea    (%eax,%edx,4),%eax
   360b1:	8b 10                	mov    (%eax),%edx
   360b3:	89 17                	mov    %edx,(%edi)
   360b5:	89 38                	mov    %edi,(%eax)
   360b7:	8b 7d e0             	mov    -0x20(%ebp),%edi
   360ba:	75 c0                	jne    3607c <__pow5mult+0x3c>
   360bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   360c0:	83 c4 2c             	add    $0x2c,%esp
   360c3:	89 f8                	mov    %edi,%eax
   360c5:	5b                   	pop    %ebx
   360c6:	5e                   	pop    %esi
   360c7:	5f                   	pop    %edi
   360c8:	5d                   	pop    %ebp
   360c9:	c3                   	ret    
   360ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   360d0:	89 74 24 08          	mov    %esi,0x8(%esp)
   360d4:	89 74 24 04          	mov    %esi,0x4(%esp)
   360d8:	89 0c 24             	mov    %ecx,(%esp)
   360db:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   360de:	e8 8d fd ff ff       	call   35e70 <__multiply>
   360e3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   360e6:	89 06                	mov    %eax,(%esi)
   360e8:	89 c6                	mov    %eax,%esi
   360ea:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   360f0:	eb 92                	jmp    36084 <__pow5mult+0x44>
   360f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   360f8:	8b 7d e0             	mov    -0x20(%ebp),%edi
   360fb:	e9 78 ff ff ff       	jmp    36078 <__pow5mult+0x38>
   36100:	8b 04 85 dc 9a 03 00 	mov    0x39adc(,%eax,4),%eax
   36107:	89 7c 24 04          	mov    %edi,0x4(%esp)
   3610b:	89 0c 24             	mov    %ecx,(%esp)
   3610e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   36115:	00 
   36116:	89 44 24 08          	mov    %eax,0x8(%esp)
   3611a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   3611d:	e8 5e fa ff ff       	call   35b80 <__multadd>
   36122:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36125:	89 c7                	mov    %eax,%edi
   36127:	e9 31 ff ff ff       	jmp    3605d <__pow5mult+0x1d>
   3612c:	89 0c 24             	mov    %ecx,(%esp)
   3612f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   36136:	00 
   36137:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   3613a:	e8 81 f9 ff ff       	call   35ac0 <_Balloc>
   3613f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36142:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
   36149:	89 c6                	mov    %eax,%esi
   3614b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   36152:	89 41 48             	mov    %eax,0x48(%ecx)
   36155:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   3615b:	e9 0f ff ff ff       	jmp    3606f <__pow5mult+0x2f>

00036160 <__lshift>:
   36160:	55                   	push   %ebp
   36161:	89 e5                	mov    %esp,%ebp
   36163:	57                   	push   %edi
   36164:	56                   	push   %esi
   36165:	53                   	push   %ebx
   36166:	83 ec 2c             	sub    $0x2c,%esp
   36169:	8b 45 0c             	mov    0xc(%ebp),%eax
   3616c:	8b 75 10             	mov    0x10(%ebp),%esi
   3616f:	89 c7                	mov    %eax,%edi
   36171:	8b 50 04             	mov    0x4(%eax),%edx
   36174:	8b 40 10             	mov    0x10(%eax),%eax
   36177:	89 f3                	mov    %esi,%ebx
   36179:	c1 fb 05             	sar    $0x5,%ebx
   3617c:	01 d8                	add    %ebx,%eax
   3617e:	89 45 d0             	mov    %eax,-0x30(%ebp)
   36181:	83 c0 01             	add    $0x1,%eax
   36184:	89 c1                	mov    %eax,%ecx
   36186:	89 45 d8             	mov    %eax,-0x28(%ebp)
   36189:	8b 47 08             	mov    0x8(%edi),%eax
   3618c:	39 c1                	cmp    %eax,%ecx
   3618e:	7e 09                	jle    36199 <__lshift+0x39>
   36190:	01 c0                	add    %eax,%eax
   36192:	83 c2 01             	add    $0x1,%edx
   36195:	39 c1                	cmp    %eax,%ecx
   36197:	7f f7                	jg     36190 <__lshift+0x30>
   36199:	8b 45 08             	mov    0x8(%ebp),%eax
   3619c:	89 54 24 04          	mov    %edx,0x4(%esp)
   361a0:	89 04 24             	mov    %eax,(%esp)
   361a3:	e8 18 f9 ff ff       	call   35ac0 <_Balloc>
   361a8:	85 db                	test   %ebx,%ebx
   361aa:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   361ad:	8d 50 14             	lea    0x14(%eax),%edx
   361b0:	7e 17                	jle    361c9 <__lshift+0x69>
   361b2:	31 c0                	xor    %eax,%eax
   361b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   361b8:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
   361bf:	83 c0 01             	add    $0x1,%eax
   361c2:	39 d8                	cmp    %ebx,%eax
   361c4:	75 f2                	jne    361b8 <__lshift+0x58>
   361c6:	8d 14 82             	lea    (%edx,%eax,4),%edx
   361c9:	8b 7d 0c             	mov    0xc(%ebp),%edi
   361cc:	8b 45 0c             	mov    0xc(%ebp),%eax
   361cf:	8b 4f 10             	mov    0x10(%edi),%ecx
   361d2:	83 c0 14             	add    $0x14,%eax
   361d5:	83 e6 1f             	and    $0x1f,%esi
   361d8:	89 75 e0             	mov    %esi,-0x20(%ebp)
   361db:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
   361de:	89 7d e4             	mov    %edi,-0x1c(%ebp)
   361e1:	74 7d                	je     36260 <__lshift+0x100>
   361e3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
   361ea:	29 75 dc             	sub    %esi,-0x24(%ebp)
   361ed:	31 f6                	xor    %esi,%esi
   361ef:	eb 09                	jmp    361fa <__lshift+0x9a>
   361f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   361f8:	89 fa                	mov    %edi,%edx
   361fa:	8b 18                	mov    (%eax),%ebx
   361fc:	83 c0 04             	add    $0x4,%eax
   361ff:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
   36203:	8d 7a 04             	lea    0x4(%edx),%edi
   36206:	d3 e3                	shl    %cl,%ebx
   36208:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
   3620c:	09 f3                	or     %esi,%ebx
   3620e:	89 1a                	mov    %ebx,(%edx)
   36210:	8b 70 fc             	mov    -0x4(%eax),%esi
   36213:	d3 ee                	shr    %cl,%esi
   36215:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
   36218:	77 de                	ja     361f8 <__lshift+0x98>
   3621a:	8b 45 d0             	mov    -0x30(%ebp),%eax
   3621d:	89 72 04             	mov    %esi,0x4(%edx)
   36220:	83 c0 02             	add    $0x2,%eax
   36223:	85 f6                	test   %esi,%esi
   36225:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
   36229:	89 45 d8             	mov    %eax,-0x28(%ebp)
   3622c:	8b 45 d8             	mov    -0x28(%ebp),%eax
   3622f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   36232:	8b 75 0c             	mov    0xc(%ebp),%esi
   36235:	83 e8 01             	sub    $0x1,%eax
   36238:	89 47 10             	mov    %eax,0x10(%edi)
   3623b:	8b 45 0c             	mov    0xc(%ebp),%eax
   3623e:	8b 50 04             	mov    0x4(%eax),%edx
   36241:	8b 45 08             	mov    0x8(%ebp),%eax
   36244:	8b 40 4c             	mov    0x4c(%eax),%eax
   36247:	8d 04 90             	lea    (%eax,%edx,4),%eax
   3624a:	8b 10                	mov    (%eax),%edx
   3624c:	89 16                	mov    %edx,(%esi)
   3624e:	89 30                	mov    %esi,(%eax)
   36250:	83 c4 2c             	add    $0x2c,%esp
   36253:	89 f8                	mov    %edi,%eax
   36255:	5b                   	pop    %ebx
   36256:	5e                   	pop    %esi
   36257:	5f                   	pop    %edi
   36258:	5d                   	pop    %ebp
   36259:	c3                   	ret    
   3625a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36260:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
   36263:	90                   	nop
   36264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36268:	83 c0 04             	add    $0x4,%eax
   3626b:	8b 48 fc             	mov    -0x4(%eax),%ecx
   3626e:	83 c2 04             	add    $0x4,%edx
   36271:	39 c3                	cmp    %eax,%ebx
   36273:	89 4a fc             	mov    %ecx,-0x4(%edx)
   36276:	77 f0                	ja     36268 <__lshift+0x108>
   36278:	eb b2                	jmp    3622c <__lshift+0xcc>
   3627a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00036280 <__mcmp>:
   36280:	55                   	push   %ebp
   36281:	89 e5                	mov    %esp,%ebp
   36283:	8b 4d 08             	mov    0x8(%ebp),%ecx
   36286:	8b 55 0c             	mov    0xc(%ebp),%edx
   36289:	53                   	push   %ebx
   3628a:	8b 41 10             	mov    0x10(%ecx),%eax
   3628d:	8b 5a 10             	mov    0x10(%edx),%ebx
   36290:	29 d8                	sub    %ebx,%eax
   36292:	85 c0                	test   %eax,%eax
   36294:	75 27                	jne    362bd <__mcmp+0x3d>
   36296:	c1 e3 02             	shl    $0x2,%ebx
   36299:	83 c1 14             	add    $0x14,%ecx
   3629c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
   3629f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
   362a3:	eb 07                	jmp    362ac <__mcmp+0x2c>
   362a5:	8d 76 00             	lea    0x0(%esi),%esi
   362a8:	39 c1                	cmp    %eax,%ecx
   362aa:	73 14                	jae    362c0 <__mcmp+0x40>
   362ac:	83 ea 04             	sub    $0x4,%edx
   362af:	83 e8 04             	sub    $0x4,%eax
   362b2:	8b 1a                	mov    (%edx),%ebx
   362b4:	39 18                	cmp    %ebx,(%eax)
   362b6:	74 f0                	je     362a8 <__mcmp+0x28>
   362b8:	19 c0                	sbb    %eax,%eax
   362ba:	83 c8 01             	or     $0x1,%eax
   362bd:	5b                   	pop    %ebx
   362be:	5d                   	pop    %ebp
   362bf:	c3                   	ret    
   362c0:	31 c0                	xor    %eax,%eax
   362c2:	5b                   	pop    %ebx
   362c3:	5d                   	pop    %ebp
   362c4:	c3                   	ret    
   362c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   362c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000362d0 <__mdiff>:
   362d0:	55                   	push   %ebp
   362d1:	89 e5                	mov    %esp,%ebp
   362d3:	57                   	push   %edi
   362d4:	56                   	push   %esi
   362d5:	53                   	push   %ebx
   362d6:	83 ec 2c             	sub    $0x2c,%esp
   362d9:	8b 75 0c             	mov    0xc(%ebp),%esi
   362dc:	8b 5d 10             	mov    0x10(%ebp),%ebx
   362df:	89 34 24             	mov    %esi,(%esp)
   362e2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   362e6:	e8 95 ff ff ff       	call   36280 <__mcmp>
   362eb:	85 c0                	test   %eax,%eax
   362ed:	0f 84 25 01 00 00    	je     36418 <__mdiff+0x148>
   362f3:	0f 88 0f 01 00 00    	js     36408 <__mdiff+0x138>
   362f9:	31 ff                	xor    %edi,%edi
   362fb:	8b 46 04             	mov    0x4(%esi),%eax
   362fe:	83 c6 14             	add    $0x14,%esi
   36301:	89 44 24 04          	mov    %eax,0x4(%esp)
   36305:	8b 45 08             	mov    0x8(%ebp),%eax
   36308:	89 04 24             	mov    %eax,(%esp)
   3630b:	e8 b0 f7 ff ff       	call   35ac0 <_Balloc>
   36310:	8d 4b 14             	lea    0x14(%ebx),%ecx
   36313:	89 c2                	mov    %eax,%edx
   36315:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   36318:	89 78 0c             	mov    %edi,0xc(%eax)
   3631b:	8b 46 fc             	mov    -0x4(%esi),%eax
   3631e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
   36321:	89 45 dc             	mov    %eax,-0x24(%ebp)
   36324:	8d 04 86             	lea    (%esi,%eax,4),%eax
   36327:	89 45 d8             	mov    %eax,-0x28(%ebp)
   3632a:	8b 43 10             	mov    0x10(%ebx),%eax
   3632d:	31 db                	xor    %ebx,%ebx
   3632f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
   36332:	89 45 e0             	mov    %eax,-0x20(%ebp)
   36335:	89 d0                	mov    %edx,%eax
   36337:	83 c0 14             	add    $0x14,%eax
   3633a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36340:	8b 75 e4             	mov    -0x1c(%ebp),%esi
   36343:	83 c0 04             	add    $0x4,%eax
   36346:	83 c1 04             	add    $0x4,%ecx
   36349:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
   3634d:	8b 3e                	mov    (%esi),%edi
   3634f:	8b 71 fc             	mov    -0x4(%ecx),%esi
   36352:	0f b7 d7             	movzwl %di,%edx
   36355:	01 da                	add    %ebx,%edx
   36357:	0f b7 de             	movzwl %si,%ebx
   3635a:	29 da                	sub    %ebx,%edx
   3635c:	c1 ef 10             	shr    $0x10,%edi
   3635f:	89 d3                	mov    %edx,%ebx
   36361:	c1 ee 10             	shr    $0x10,%esi
   36364:	0f b7 d2             	movzwl %dx,%edx
   36367:	c1 fb 10             	sar    $0x10,%ebx
   3636a:	29 f7                	sub    %esi,%edi
   3636c:	01 df                	add    %ebx,%edi
   3636e:	89 fb                	mov    %edi,%ebx
   36370:	c1 e7 10             	shl    $0x10,%edi
   36373:	09 d7                	or     %edx,%edi
   36375:	c1 fb 10             	sar    $0x10,%ebx
   36378:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
   3637b:	89 78 fc             	mov    %edi,-0x4(%eax)
   3637e:	77 c0                	ja     36340 <__mdiff+0x70>
   36380:	8b 75 e4             	mov    -0x1c(%ebp),%esi
   36383:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   36386:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   36389:	89 75 e0             	mov    %esi,-0x20(%ebp)
   3638c:	39 f1                	cmp    %esi,%ecx
   3638e:	76 3f                	jbe    363cf <__mdiff+0xff>
   36390:	8b 3e                	mov    (%esi),%edi
   36392:	83 c6 04             	add    $0x4,%esi
   36395:	83 c0 04             	add    $0x4,%eax
   36398:	0f b7 d7             	movzwl %di,%edx
   3639b:	01 da                	add    %ebx,%edx
   3639d:	89 d3                	mov    %edx,%ebx
   3639f:	0f b7 d2             	movzwl %dx,%edx
   363a2:	c1 fb 10             	sar    $0x10,%ebx
   363a5:	c1 ef 10             	shr    $0x10,%edi
   363a8:	01 df                	add    %ebx,%edi
   363aa:	89 fb                	mov    %edi,%ebx
   363ac:	c1 e7 10             	shl    $0x10,%edi
   363af:	09 d7                	or     %edx,%edi
   363b1:	c1 fb 10             	sar    $0x10,%ebx
   363b4:	39 f1                	cmp    %esi,%ecx
   363b6:	89 78 fc             	mov    %edi,-0x4(%eax)
   363b9:	77 d5                	ja     36390 <__mdiff+0xc0>
   363bb:	8b 45 e0             	mov    -0x20(%ebp),%eax
   363be:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   363c1:	f7 d0                	not    %eax
   363c3:	01 c8                	add    %ecx,%eax
   363c5:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   363c8:	c1 e8 02             	shr    $0x2,%eax
   363cb:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
   363cf:	85 ff                	test   %edi,%edi
   363d1:	75 23                	jne    363f6 <__mdiff+0x126>
   363d3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
   363d6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
   363dd:	29 d0                	sub    %edx,%eax
   363df:	89 ca                	mov    %ecx,%edx
   363e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   363e8:	83 ea 01             	sub    $0x1,%edx
   363eb:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
   363ef:	85 c9                	test   %ecx,%ecx
   363f1:	74 f5                	je     363e8 <__mdiff+0x118>
   363f3:	89 55 dc             	mov    %edx,-0x24(%ebp)
   363f6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   363f9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
   363fc:	89 48 10             	mov    %ecx,0x10(%eax)
   363ff:	83 c4 2c             	add    $0x2c,%esp
   36402:	5b                   	pop    %ebx
   36403:	5e                   	pop    %esi
   36404:	5f                   	pop    %edi
   36405:	5d                   	pop    %ebp
   36406:	c3                   	ret    
   36407:	90                   	nop
   36408:	89 f0                	mov    %esi,%eax
   3640a:	bf 01 00 00 00       	mov    $0x1,%edi
   3640f:	89 de                	mov    %ebx,%esi
   36411:	89 c3                	mov    %eax,%ebx
   36413:	e9 e3 fe ff ff       	jmp    362fb <__mdiff+0x2b>
   36418:	8b 45 08             	mov    0x8(%ebp),%eax
   3641b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   36422:	00 
   36423:	89 04 24             	mov    %eax,(%esp)
   36426:	e8 95 f6 ff ff       	call   35ac0 <_Balloc>
   3642b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   36432:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
   36439:	83 c4 2c             	add    $0x2c,%esp
   3643c:	5b                   	pop    %ebx
   3643d:	5e                   	pop    %esi
   3643e:	5f                   	pop    %edi
   3643f:	5d                   	pop    %ebp
   36440:	c3                   	ret    
   36441:	eb 0d                	jmp    36450 <__ulp>
   36443:	90                   	nop
   36444:	90                   	nop
   36445:	90                   	nop
   36446:	90                   	nop
   36447:	90                   	nop
   36448:	90                   	nop
   36449:	90                   	nop
   3644a:	90                   	nop
   3644b:	90                   	nop
   3644c:	90                   	nop
   3644d:	90                   	nop
   3644e:	90                   	nop
   3644f:	90                   	nop

00036450 <__ulp>:
   36450:	55                   	push   %ebp
   36451:	89 e5                	mov    %esp,%ebp
   36453:	83 ec 08             	sub    $0x8,%esp
   36456:	dd 45 08             	fldl   0x8(%ebp)
   36459:	dd 5d f8             	fstpl  -0x8(%ebp)
   3645c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
   3645f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
   36465:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
   3646b:	85 c9                	test   %ecx,%ecx
   3646d:	7e 11                	jle    36480 <__ulp+0x30>
   3646f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   36472:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   36479:	dd 45 f8             	fldl   -0x8(%ebp)
   3647c:	c9                   	leave  
   3647d:	c3                   	ret    
   3647e:	66 90                	xchg   %ax,%ax
   36480:	f7 d9                	neg    %ecx
   36482:	c1 f9 14             	sar    $0x14,%ecx
   36485:	83 f9 13             	cmp    $0x13,%ecx
   36488:	7e 26                	jle    364b0 <__ulp+0x60>
   3648a:	83 f9 32             	cmp    $0x32,%ecx
   3648d:	b8 01 00 00 00       	mov    $0x1,%eax
   36492:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   36499:	7f 0b                	jg     364a6 <__ulp+0x56>
   3649b:	ba 33 00 00 00       	mov    $0x33,%edx
   364a0:	29 ca                	sub    %ecx,%edx
   364a2:	89 d1                	mov    %edx,%ecx
   364a4:	d3 e0                	shl    %cl,%eax
   364a6:	89 45 f8             	mov    %eax,-0x8(%ebp)
   364a9:	dd 45 f8             	fldl   -0x8(%ebp)
   364ac:	c9                   	leave  
   364ad:	c3                   	ret    
   364ae:	66 90                	xchg   %ax,%ax
   364b0:	b8 00 00 08 00       	mov    $0x80000,%eax
   364b5:	d3 f8                	sar    %cl,%eax
   364b7:	89 45 fc             	mov    %eax,-0x4(%ebp)
   364ba:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   364c1:	dd 45 f8             	fldl   -0x8(%ebp)
   364c4:	c9                   	leave  
   364c5:	c3                   	ret    
   364c6:	8d 76 00             	lea    0x0(%esi),%esi
   364c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000364d0 <__b2d>:
   364d0:	55                   	push   %ebp
   364d1:	89 e5                	mov    %esp,%ebp
   364d3:	57                   	push   %edi
   364d4:	56                   	push   %esi
   364d5:	53                   	push   %ebx
   364d6:	83 ec 18             	sub    $0x18,%esp
   364d9:	8b 45 08             	mov    0x8(%ebp),%eax
   364dc:	8d 78 14             	lea    0x14(%eax),%edi
   364df:	8b 40 10             	mov    0x10(%eax),%eax
   364e2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
   364e5:	8b 73 fc             	mov    -0x4(%ebx),%esi
   364e8:	8d 43 fc             	lea    -0x4(%ebx),%eax
   364eb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   364ee:	89 34 24             	mov    %esi,(%esp)
   364f1:	e8 6a f8 ff ff       	call   35d60 <__hi0bits>
   364f6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   364f9:	ba 20 00 00 00       	mov    $0x20,%edx
   364fe:	29 c2                	sub    %eax,%edx
   36500:	83 f8 0a             	cmp    $0xa,%eax
   36503:	89 11                	mov    %edx,(%ecx)
   36505:	7f 41                	jg     36548 <__b2d+0x78>
   36507:	b9 0b 00 00 00       	mov    $0xb,%ecx
   3650c:	89 f2                	mov    %esi,%edx
   3650e:	29 c1                	sub    %eax,%ecx
   36510:	d3 ea                	shr    %cl,%edx
   36512:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
   36518:	89 55 ec             	mov    %edx,-0x14(%ebp)
   3651b:	31 d2                	xor    %edx,%edx
   3651d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
   36520:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   36527:	73 05                	jae    3652e <__b2d+0x5e>
   36529:	8b 53 f8             	mov    -0x8(%ebx),%edx
   3652c:	d3 ea                	shr    %cl,%edx
   3652e:	8d 48 15             	lea    0x15(%eax),%ecx
   36531:	d3 e6                	shl    %cl,%esi
   36533:	09 f2                	or     %esi,%edx
   36535:	89 55 e8             	mov    %edx,-0x18(%ebp)
   36538:	dd 45 e8             	fldl   -0x18(%ebp)
   3653b:	83 c4 18             	add    $0x18,%esp
   3653e:	5b                   	pop    %ebx
   3653f:	5e                   	pop    %esi
   36540:	5f                   	pop    %edi
   36541:	5d                   	pop    %ebp
   36542:	c3                   	ret    
   36543:	90                   	nop
   36544:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36548:	31 d2                	xor    %edx,%edx
   3654a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
   3654d:	73 09                	jae    36558 <__b2d+0x88>
   3654f:	8b 53 f8             	mov    -0x8(%ebx),%edx
   36552:	8d 4b f8             	lea    -0x8(%ebx),%ecx
   36555:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   36558:	89 c3                	mov    %eax,%ebx
   3655a:	83 eb 0b             	sub    $0xb,%ebx
   3655d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
   36560:	74 4e                	je     365b0 <__b2d+0xe0>
   36562:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
   36566:	bb 2b 00 00 00       	mov    $0x2b,%ebx
   3656b:	29 c3                	sub    %eax,%ebx
   3656d:	89 d0                	mov    %edx,%eax
   3656f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   36576:	d3 e6                	shl    %cl,%esi
   36578:	89 d9                	mov    %ebx,%ecx
   3657a:	d3 e8                	shr    %cl,%eax
   3657c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   3657f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
   36585:	09 c6                	or     %eax,%esi
   36587:	31 c0                	xor    %eax,%eax
   36589:	89 75 ec             	mov    %esi,-0x14(%ebp)
   3658c:	39 f9                	cmp    %edi,%ecx
   3658e:	76 07                	jbe    36597 <__b2d+0xc7>
   36590:	8b 41 fc             	mov    -0x4(%ecx),%eax
   36593:	89 d9                	mov    %ebx,%ecx
   36595:	d3 e8                	shr    %cl,%eax
   36597:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
   3659b:	d3 e2                	shl    %cl,%edx
   3659d:	09 d0                	or     %edx,%eax
   3659f:	89 45 e8             	mov    %eax,-0x18(%ebp)
   365a2:	dd 45 e8             	fldl   -0x18(%ebp)
   365a5:	83 c4 18             	add    $0x18,%esp
   365a8:	5b                   	pop    %ebx
   365a9:	5e                   	pop    %esi
   365aa:	5f                   	pop    %edi
   365ab:	5d                   	pop    %ebp
   365ac:	c3                   	ret    
   365ad:	8d 76 00             	lea    0x0(%esi),%esi
   365b0:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
   365b6:	89 75 ec             	mov    %esi,-0x14(%ebp)
   365b9:	89 55 e8             	mov    %edx,-0x18(%ebp)
   365bc:	dd 45 e8             	fldl   -0x18(%ebp)
   365bf:	83 c4 18             	add    $0x18,%esp
   365c2:	5b                   	pop    %ebx
   365c3:	5e                   	pop    %esi
   365c4:	5f                   	pop    %edi
   365c5:	5d                   	pop    %ebp
   365c6:	c3                   	ret    
   365c7:	89 f6                	mov    %esi,%esi
   365c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000365d0 <__d2b>:
   365d0:	55                   	push   %ebp
   365d1:	89 e5                	mov    %esp,%ebp
   365d3:	57                   	push   %edi
   365d4:	56                   	push   %esi
   365d5:	53                   	push   %ebx
   365d6:	83 ec 2c             	sub    $0x2c,%esp
   365d9:	8b 45 08             	mov    0x8(%ebp),%eax
   365dc:	dd 45 0c             	fldl   0xc(%ebp)
   365df:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   365e6:	00 
   365e7:	dd 5d d0             	fstpl  -0x30(%ebp)
   365ea:	89 04 24             	mov    %eax,(%esp)
   365ed:	e8 ce f4 ff ff       	call   35ac0 <_Balloc>
   365f2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
   365f5:	89 c6                	mov    %eax,%esi
   365f7:	89 d8                	mov    %ebx,%eax
   365f9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
   365ff:	25 ff ff 0f 00       	and    $0xfffff,%eax
   36604:	c1 eb 14             	shr    $0x14,%ebx
   36607:	85 db                	test   %ebx,%ebx
   36609:	74 05                	je     36610 <__d2b+0x40>
   3660b:	0d 00 00 10 00       	or     $0x100000,%eax
   36610:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   36613:	8b 45 d0             	mov    -0x30(%ebp),%eax
   36616:	85 c0                	test   %eax,%eax
   36618:	74 56                	je     36670 <__d2b+0xa0>
   3661a:	89 45 e0             	mov    %eax,-0x20(%ebp)
   3661d:	8d 45 e0             	lea    -0x20(%ebp),%eax
   36620:	89 04 24             	mov    %eax,(%esp)
   36623:	e8 98 f7 ff ff       	call   35dc0 <__lo0bits>
   36628:	85 c0                	test   %eax,%eax
   3662a:	0f 85 90 00 00 00    	jne    366c0 <__d2b+0xf0>
   36630:	8b 55 e0             	mov    -0x20(%ebp),%edx
   36633:	89 56 14             	mov    %edx,0x14(%esi)
   36636:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   36639:	83 fa 01             	cmp    $0x1,%edx
   3663c:	19 ff                	sbb    %edi,%edi
   3663e:	83 c7 02             	add    $0x2,%edi
   36641:	85 db                	test   %ebx,%ebx
   36643:	89 56 18             	mov    %edx,0x18(%esi)
   36646:	89 7e 10             	mov    %edi,0x10(%esi)
   36649:	74 49                	je     36694 <__d2b+0xc4>
   3664b:	8b 4d 14             	mov    0x14(%ebp),%ecx
   3664e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
   36655:	89 11                	mov    %edx,(%ecx)
   36657:	ba 35 00 00 00       	mov    $0x35,%edx
   3665c:	29 c2                	sub    %eax,%edx
   3665e:	8b 45 18             	mov    0x18(%ebp),%eax
   36661:	89 10                	mov    %edx,(%eax)
   36663:	83 c4 2c             	add    $0x2c,%esp
   36666:	89 f0                	mov    %esi,%eax
   36668:	5b                   	pop    %ebx
   36669:	5e                   	pop    %esi
   3666a:	5f                   	pop    %edi
   3666b:	5d                   	pop    %ebp
   3666c:	c3                   	ret    
   3666d:	8d 76 00             	lea    0x0(%esi),%esi
   36670:	8d 45 e4             	lea    -0x1c(%ebp),%eax
   36673:	bf 01 00 00 00       	mov    $0x1,%edi
   36678:	89 04 24             	mov    %eax,(%esp)
   3667b:	e8 40 f7 ff ff       	call   35dc0 <__lo0bits>
   36680:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   36683:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
   3668a:	89 56 14             	mov    %edx,0x14(%esi)
   3668d:	83 c0 20             	add    $0x20,%eax
   36690:	85 db                	test   %ebx,%ebx
   36692:	75 b7                	jne    3664b <__d2b+0x7b>
   36694:	8b 4d 14             	mov    0x14(%ebp),%ecx
   36697:	2d 32 04 00 00       	sub    $0x432,%eax
   3669c:	89 01                	mov    %eax,(%ecx)
   3669e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
   366a2:	c1 e7 05             	shl    $0x5,%edi
   366a5:	89 04 24             	mov    %eax,(%esp)
   366a8:	e8 b3 f6 ff ff       	call   35d60 <__hi0bits>
   366ad:	29 c7                	sub    %eax,%edi
   366af:	8b 45 18             	mov    0x18(%ebp),%eax
   366b2:	89 38                	mov    %edi,(%eax)
   366b4:	83 c4 2c             	add    $0x2c,%esp
   366b7:	89 f0                	mov    %esi,%eax
   366b9:	5b                   	pop    %ebx
   366ba:	5e                   	pop    %esi
   366bb:	5f                   	pop    %edi
   366bc:	5d                   	pop    %ebp
   366bd:	c3                   	ret    
   366be:	66 90                	xchg   %ax,%ax
   366c0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   366c3:	b9 20 00 00 00       	mov    $0x20,%ecx
   366c8:	29 c1                	sub    %eax,%ecx
   366ca:	89 d7                	mov    %edx,%edi
   366cc:	d3 e7                	shl    %cl,%edi
   366ce:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   366d1:	09 f9                	or     %edi,%ecx
   366d3:	89 4e 14             	mov    %ecx,0x14(%esi)
   366d6:	89 c1                	mov    %eax,%ecx
   366d8:	d3 ea                	shr    %cl,%edx
   366da:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   366dd:	e9 57 ff ff ff       	jmp    36639 <__d2b+0x69>
   366e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   366e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000366f0 <__ratio>:
   366f0:	55                   	push   %ebp
   366f1:	89 e5                	mov    %esp,%ebp
   366f3:	56                   	push   %esi
   366f4:	53                   	push   %ebx
   366f5:	83 ec 30             	sub    $0x30,%esp
   366f8:	8b 75 08             	mov    0x8(%ebp),%esi
   366fb:	8d 45 f0             	lea    -0x10(%ebp),%eax
   366fe:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   36701:	89 44 24 04          	mov    %eax,0x4(%esp)
   36705:	89 34 24             	mov    %esi,(%esp)
   36708:	e8 c3 fd ff ff       	call   364d0 <__b2d>
   3670d:	8d 45 f4             	lea    -0xc(%ebp),%eax
   36710:	89 44 24 04          	mov    %eax,0x4(%esp)
   36714:	89 1c 24             	mov    %ebx,(%esp)
   36717:	dd 55 e0             	fstl   -0x20(%ebp)
   3671a:	dd 5d d8             	fstpl  -0x28(%ebp)
   3671d:	e8 ae fd ff ff       	call   364d0 <__b2d>
   36722:	8b 46 10             	mov    0x10(%esi),%eax
   36725:	2b 43 10             	sub    0x10(%ebx),%eax
   36728:	8b 55 f0             	mov    -0x10(%ebp),%edx
   3672b:	2b 55 f4             	sub    -0xc(%ebp),%edx
   3672e:	c1 e0 05             	shl    $0x5,%eax
   36731:	01 d0                	add    %edx,%eax
   36733:	dd 55 d0             	fstl   -0x30(%ebp)
   36736:	85 c0                	test   %eax,%eax
   36738:	dd 45 d8             	fldl   -0x28(%ebp)
   3673b:	7e 1b                	jle    36758 <__ratio+0x68>
   3673d:	dd d8                	fstp   %st(0)
   3673f:	c1 e0 14             	shl    $0x14,%eax
   36742:	01 45 e4             	add    %eax,-0x1c(%ebp)
   36745:	dd 45 e0             	fldl   -0x20(%ebp)
   36748:	83 c4 30             	add    $0x30,%esp
   3674b:	5b                   	pop    %ebx
   3674c:	de f1                	fdivp  %st,%st(1)
   3674e:	5e                   	pop    %esi
   3674f:	5d                   	pop    %ebp
   36750:	c3                   	ret    
   36751:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36758:	dd d9                	fstp   %st(1)
   3675a:	c1 e0 14             	shl    $0x14,%eax
   3675d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
   36760:	dd 45 d0             	fldl   -0x30(%ebp)
   36763:	83 c4 30             	add    $0x30,%esp
   36766:	5b                   	pop    %ebx
   36767:	de f9                	fdivrp %st,%st(1)
   36769:	5e                   	pop    %esi
   3676a:	5d                   	pop    %ebp
   3676b:	c3                   	ret    
   3676c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00036770 <_mprec_log10>:
   36770:	55                   	push   %ebp
   36771:	89 e5                	mov    %esp,%ebp
   36773:	8b 45 08             	mov    0x8(%ebp),%eax
   36776:	83 f8 17             	cmp    $0x17,%eax
   36779:	7e 1d                	jle    36798 <_mprec_log10+0x28>
   3677b:	d9 e8                	fld1   
   3677d:	d9 05 a0 9a 03 00    	flds   0x39aa0
   36783:	90                   	nop
   36784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36788:	83 e8 01             	sub    $0x1,%eax
   3678b:	dc c9                	fmul   %st,%st(1)
   3678d:	75 f9                	jne    36788 <_mprec_log10+0x18>
   3678f:	dd d8                	fstp   %st(0)
   36791:	5d                   	pop    %ebp
   36792:	c3                   	ret    
   36793:	90                   	nop
   36794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36798:	dd 04 c5 80 9b 03 00 	fldl   0x39b80(,%eax,8)
   3679f:	5d                   	pop    %ebp
   367a0:	c3                   	ret    
   367a1:	eb 0d                	jmp    367b0 <__copybits>
   367a3:	90                   	nop
   367a4:	90                   	nop
   367a5:	90                   	nop
   367a6:	90                   	nop
   367a7:	90                   	nop
   367a8:	90                   	nop
   367a9:	90                   	nop
   367aa:	90                   	nop
   367ab:	90                   	nop
   367ac:	90                   	nop
   367ad:	90                   	nop
   367ae:	90                   	nop
   367af:	90                   	nop

000367b0 <__copybits>:
   367b0:	55                   	push   %ebp
   367b1:	89 e5                	mov    %esp,%ebp
   367b3:	57                   	push   %edi
   367b4:	8b 7d 10             	mov    0x10(%ebp),%edi
   367b7:	56                   	push   %esi
   367b8:	8b 75 0c             	mov    0xc(%ebp),%esi
   367bb:	8b 45 08             	mov    0x8(%ebp),%eax
   367be:	53                   	push   %ebx
   367bf:	8b 4f 10             	mov    0x10(%edi),%ecx
   367c2:	8d 56 ff             	lea    -0x1(%esi),%edx
   367c5:	c1 fa 05             	sar    $0x5,%edx
   367c8:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
   367cc:	8d 57 14             	lea    0x14(%edi),%edx
   367cf:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
   367d2:	39 da                	cmp    %ebx,%edx
   367d4:	73 34                	jae    3680a <__copybits+0x5a>
   367d6:	89 c1                	mov    %eax,%ecx
   367d8:	83 c2 04             	add    $0x4,%edx
   367db:	8b 42 fc             	mov    -0x4(%edx),%eax
   367de:	83 c1 04             	add    $0x4,%ecx
   367e1:	39 d3                	cmp    %edx,%ebx
   367e3:	89 41 fc             	mov    %eax,-0x4(%ecx)
   367e6:	77 f0                	ja     367d8 <__copybits+0x28>
   367e8:	8b 45 08             	mov    0x8(%ebp),%eax
   367eb:	29 fb                	sub    %edi,%ebx
   367ed:	8d 53 eb             	lea    -0x15(%ebx),%edx
   367f0:	c1 ea 02             	shr    $0x2,%edx
   367f3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
   367f7:	39 c6                	cmp    %eax,%esi
   367f9:	76 13                	jbe    3680e <__copybits+0x5e>
   367fb:	90                   	nop
   367fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36800:	83 c0 04             	add    $0x4,%eax
   36803:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
   3680a:	39 c6                	cmp    %eax,%esi
   3680c:	77 f2                	ja     36800 <__copybits+0x50>
   3680e:	5b                   	pop    %ebx
   3680f:	5e                   	pop    %esi
   36810:	5f                   	pop    %edi
   36811:	5d                   	pop    %ebp
   36812:	c3                   	ret    
   36813:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36819:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00036820 <__any_on>:
   36820:	55                   	push   %ebp
   36821:	89 e5                	mov    %esp,%ebp
   36823:	8b 45 08             	mov    0x8(%ebp),%eax
   36826:	57                   	push   %edi
   36827:	56                   	push   %esi
   36828:	53                   	push   %ebx
   36829:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   3682c:	8d 50 14             	lea    0x14(%eax),%edx
   3682f:	8b 40 10             	mov    0x10(%eax),%eax
   36832:	c1 fb 05             	sar    $0x5,%ebx
   36835:	39 d8                	cmp    %ebx,%eax
   36837:	7d 2f                	jge    36868 <__any_on+0x48>
   36839:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
   3683c:	39 da                	cmp    %ebx,%edx
   3683e:	73 1d                	jae    3685d <__any_on+0x3d>
   36840:	8d 43 fc             	lea    -0x4(%ebx),%eax
   36843:	8b 5b fc             	mov    -0x4(%ebx),%ebx
   36846:	85 db                	test   %ebx,%ebx
   36848:	74 0f                	je     36859 <__any_on+0x39>
   3684a:	eb 44                	jmp    36890 <__any_on+0x70>
   3684c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36850:	83 e8 04             	sub    $0x4,%eax
   36853:	8b 08                	mov    (%eax),%ecx
   36855:	85 c9                	test   %ecx,%ecx
   36857:	75 37                	jne    36890 <__any_on+0x70>
   36859:	39 c2                	cmp    %eax,%edx
   3685b:	72 f3                	jb     36850 <__any_on+0x30>
   3685d:	31 c0                	xor    %eax,%eax
   3685f:	5b                   	pop    %ebx
   36860:	5e                   	pop    %esi
   36861:	5f                   	pop    %edi
   36862:	5d                   	pop    %ebp
   36863:	c3                   	ret    
   36864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36868:	7e 1e                	jle    36888 <__any_on+0x68>
   3686a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   3686d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
   36870:	83 e1 1f             	and    $0x1f,%ecx
   36873:	74 c7                	je     3683c <__any_on+0x1c>
   36875:	8b 3b                	mov    (%ebx),%edi
   36877:	b8 01 00 00 00       	mov    $0x1,%eax
   3687c:	89 fe                	mov    %edi,%esi
   3687e:	d3 ee                	shr    %cl,%esi
   36880:	d3 e6                	shl    %cl,%esi
   36882:	39 fe                	cmp    %edi,%esi
   36884:	75 d9                	jne    3685f <__any_on+0x3f>
   36886:	eb b4                	jmp    3683c <__any_on+0x1c>
   36888:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
   3688b:	eb af                	jmp    3683c <__any_on+0x1c>
   3688d:	8d 76 00             	lea    0x0(%esi),%esi
   36890:	5b                   	pop    %ebx
   36891:	b8 01 00 00 00       	mov    $0x1,%eax
   36896:	5e                   	pop    %esi
   36897:	5f                   	pop    %edi
   36898:	5d                   	pop    %ebp
   36899:	c3                   	ret    
   3689a:	66 90                	xchg   %ax,%ax
   3689c:	66 90                	xchg   %ax,%ax
   3689e:	66 90                	xchg   %ax,%ax

000368a0 <_sbrk_r>:
   368a0:	55                   	push   %ebp
   368a1:	89 e5                	mov    %esp,%ebp
   368a3:	83 ec 18             	sub    $0x18,%esp
   368a6:	8b 45 0c             	mov    0xc(%ebp),%eax
   368a9:	c7 05 00 50 09 00 00 	movl   $0x0,0x95000
   368b0:	00 00 00 
   368b3:	89 04 24             	mov    %eax,(%esp)
   368b6:	e8 a7 a0 ff ff       	call   30962 <sbrk>
   368bb:	83 f8 ff             	cmp    $0xffffffff,%eax
   368be:	74 08                	je     368c8 <_sbrk_r+0x28>
   368c0:	c9                   	leave  
   368c1:	c3                   	ret    
   368c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   368c8:	8b 15 00 50 09 00    	mov    0x95000,%edx
   368ce:	85 d2                	test   %edx,%edx
   368d0:	74 ee                	je     368c0 <_sbrk_r+0x20>
   368d2:	8b 4d 08             	mov    0x8(%ebp),%ecx
   368d5:	89 11                	mov    %edx,(%ecx)
   368d7:	c9                   	leave  
   368d8:	c3                   	ret    
   368d9:	66 90                	xchg   %ax,%ax
   368db:	66 90                	xchg   %ax,%ax
   368dd:	66 90                	xchg   %ax,%ax
   368df:	90                   	nop

000368e0 <__fpclassifyd>:
   368e0:	55                   	push   %ebp
   368e1:	b8 02 00 00 00       	mov    $0x2,%eax
   368e6:	89 e5                	mov    %esp,%ebp
   368e8:	53                   	push   %ebx
   368e9:	83 ec 0c             	sub    $0xc,%esp
   368ec:	dd 45 08             	fldl   0x8(%ebp)
   368ef:	dd 5d f0             	fstpl  -0x10(%ebp)
   368f2:	8b 55 f0             	mov    -0x10(%ebp),%edx
   368f5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
   368f8:	89 d3                	mov    %edx,%ebx
   368fa:	09 cb                	or     %ecx,%ebx
   368fc:	75 0a                	jne    36908 <__fpclassifyd+0x28>
   368fe:	83 c4 0c             	add    $0xc,%esp
   36901:	5b                   	pop    %ebx
   36902:	5d                   	pop    %ebp
   36903:	c3                   	ret    
   36904:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36908:	85 d2                	test   %edx,%edx
   3690a:	0f 94 c2             	sete   %dl
   3690d:	75 08                	jne    36917 <__fpclassifyd+0x37>
   3690f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
   36915:	74 e7                	je     368fe <__fpclassifyd+0x1e>
   36917:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
   3691d:	b8 04 00 00 00       	mov    $0x4,%eax
   36922:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
   36928:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
   3692e:	76 ce                	jbe    368fe <__fpclassifyd+0x1e>
   36930:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
   36936:	b0 03                	mov    $0x3,%al
   36938:	76 c4                	jbe    368fe <__fpclassifyd+0x1e>
   3693a:	31 c0                	xor    %eax,%eax
   3693c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
   36942:	0f 94 c0             	sete   %al
   36945:	21 d0                	and    %edx,%eax
   36947:	eb b5                	jmp    368fe <__fpclassifyd+0x1e>
   36949:	66 90                	xchg   %ax,%ax
   3694b:	66 90                	xchg   %ax,%ax
   3694d:	66 90                	xchg   %ax,%ax
   3694f:	90                   	nop

00036950 <strcmp>:
   36950:	55                   	push   %ebp
   36951:	89 e5                	mov    %esp,%ebp
   36953:	8b 45 08             	mov    0x8(%ebp),%eax
   36956:	8b 55 0c             	mov    0xc(%ebp),%edx
   36959:	53                   	push   %ebx
   3695a:	89 c1                	mov    %eax,%ecx
   3695c:	09 d1                	or     %edx,%ecx
   3695e:	83 e1 03             	and    $0x3,%ecx
   36961:	75 17                	jne    3697a <strcmp+0x2a>
   36963:	8b 08                	mov    (%eax),%ecx
   36965:	3b 0a                	cmp    (%edx),%ecx
   36967:	74 33                	je     3699c <strcmp+0x4c>
   36969:	eb 0f                	jmp    3697a <strcmp+0x2a>
   3696b:	90                   	nop
   3696c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36970:	3a 0a                	cmp    (%edx),%cl
   36972:	75 0d                	jne    36981 <strcmp+0x31>
   36974:	83 c0 01             	add    $0x1,%eax
   36977:	83 c2 01             	add    $0x1,%edx
   3697a:	0f b6 08             	movzbl (%eax),%ecx
   3697d:	84 c9                	test   %cl,%cl
   3697f:	75 ef                	jne    36970 <strcmp+0x20>
   36981:	0f b6 00             	movzbl (%eax),%eax
   36984:	0f b6 12             	movzbl (%edx),%edx
   36987:	5b                   	pop    %ebx
   36988:	5d                   	pop    %ebp
   36989:	29 d0                	sub    %edx,%eax
   3698b:	c3                   	ret    
   3698c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36990:	83 c0 04             	add    $0x4,%eax
   36993:	83 c2 04             	add    $0x4,%edx
   36996:	8b 08                	mov    (%eax),%ecx
   36998:	3b 0a                	cmp    (%edx),%ecx
   3699a:	75 de                	jne    3697a <strcmp+0x2a>
   3699c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
   369a2:	f7 d1                	not    %ecx
   369a4:	21 cb                	and    %ecx,%ebx
   369a6:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
   369ac:	74 e2                	je     36990 <strcmp+0x40>
   369ae:	31 c0                	xor    %eax,%eax
   369b0:	5b                   	pop    %ebx
   369b1:	5d                   	pop    %ebp
   369b2:	c3                   	ret    
   369b3:	66 90                	xchg   %ax,%ax
   369b5:	66 90                	xchg   %ax,%ax
   369b7:	66 90                	xchg   %ax,%ax
   369b9:	66 90                	xchg   %ax,%ax
   369bb:	66 90                	xchg   %ax,%ax
   369bd:	66 90                	xchg   %ax,%ax
   369bf:	90                   	nop

000369c0 <strlen>:
   369c0:	55                   	push   %ebp
   369c1:	89 e5                	mov    %esp,%ebp
   369c3:	57                   	push   %edi
   369c4:	8b 55 08             	mov    0x8(%ebp),%edx
   369c7:	89 d7                	mov    %edx,%edi
   369c9:	f7 c7 03 00 00 00    	test   $0x3,%edi
   369cf:	74 25                	je     369f6 <L5>
   369d1:	8a 0f                	mov    (%edi),%cl
   369d3:	47                   	inc    %edi
   369d4:	84 c9                	test   %cl,%cl
   369d6:	74 56                	je     36a2e <L15>
   369d8:	f7 c7 03 00 00 00    	test   $0x3,%edi
   369de:	74 16                	je     369f6 <L5>
   369e0:	8a 0f                	mov    (%edi),%cl
   369e2:	47                   	inc    %edi
   369e3:	84 c9                	test   %cl,%cl
   369e5:	74 47                	je     36a2e <L15>
   369e7:	f7 c7 03 00 00 00    	test   $0x3,%edi
   369ed:	74 07                	je     369f6 <L5>
   369ef:	8a 0f                	mov    (%edi),%cl
   369f1:	47                   	inc    %edi
   369f2:	84 c9                	test   %cl,%cl
   369f4:	74 38                	je     36a2e <L15>

000369f6 <L5>:
   369f6:	83 ef 04             	sub    $0x4,%edi
   369f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00036a00 <L10>:
   36a00:	83 c7 04             	add    $0x4,%edi
   36a03:	8b 0f                	mov    (%edi),%ecx
   36a05:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
   36a0b:	f7 d1                	not    %ecx
   36a0d:	21 c8                	and    %ecx,%eax
   36a0f:	a9 80 80 80 80       	test   $0x80808080,%eax
   36a14:	74 ea                	je     36a00 <L10>
   36a16:	f7 d1                	not    %ecx
   36a18:	47                   	inc    %edi
   36a19:	84 c9                	test   %cl,%cl
   36a1b:	74 11                	je     36a2e <L15>
   36a1d:	47                   	inc    %edi
   36a1e:	c1 e9 08             	shr    $0x8,%ecx
   36a21:	84 c9                	test   %cl,%cl
   36a23:	74 09                	je     36a2e <L15>
   36a25:	47                   	inc    %edi
   36a26:	c1 e9 08             	shr    $0x8,%ecx
   36a29:	84 c9                	test   %cl,%cl
   36a2b:	74 01                	je     36a2e <L15>
   36a2d:	47                   	inc    %edi

00036a2e <L15>:
   36a2e:	29 d7                	sub    %edx,%edi
   36a30:	8d 47 ff             	lea    -0x1(%edi),%eax
   36a33:	8d 65 fc             	lea    -0x4(%ebp),%esp
   36a36:	5f                   	pop    %edi
   36a37:	c9                   	leave  
   36a38:	c3                   	ret    
   36a39:	66 90                	xchg   %ax,%ax
   36a3b:	66 90                	xchg   %ax,%ax
   36a3d:	66 90                	xchg   %ax,%ax
   36a3f:	90                   	nop

00036a40 <__ssprint_r>:
   36a40:	55                   	push   %ebp
   36a41:	89 e5                	mov    %esp,%ebp
   36a43:	57                   	push   %edi
   36a44:	56                   	push   %esi
   36a45:	53                   	push   %ebx
   36a46:	83 ec 2c             	sub    $0x2c,%esp
   36a49:	8b 45 10             	mov    0x10(%ebp),%eax
   36a4c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   36a4f:	8b 00                	mov    (%eax),%eax
   36a51:	89 c7                	mov    %eax,%edi
   36a53:	8b 45 10             	mov    0x10(%ebp),%eax
   36a56:	8b 40 08             	mov    0x8(%eax),%eax
   36a59:	85 c0                	test   %eax,%eax
   36a5b:	0f 84 af 01 00 00    	je     36c10 <__ssprint_r+0x1d0>
   36a61:	31 c9                	xor    %ecx,%ecx
   36a63:	31 d2                	xor    %edx,%edx
   36a65:	8b 03                	mov    (%ebx),%eax
   36a67:	89 ce                	mov    %ecx,%esi
   36a69:	85 f6                	test   %esi,%esi
   36a6b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   36a6e:	0f 84 ec 00 00 00    	je     36b60 <__ssprint_r+0x120>
   36a74:	8b 53 08             	mov    0x8(%ebx),%edx
   36a77:	39 d6                	cmp    %edx,%esi
   36a79:	0f 82 fc 00 00 00    	jb     36b7b <__ssprint_r+0x13b>
   36a7f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
   36a83:	66 f7 c1 80 04       	test   $0x480,%cx
   36a88:	0f 84 fa 00 00 00    	je     36b88 <__ssprint_r+0x148>
   36a8e:	8b 53 10             	mov    0x10(%ebx),%edx
   36a91:	29 d0                	sub    %edx,%eax
   36a93:	89 45 dc             	mov    %eax,-0x24(%ebp)
   36a96:	8b 43 14             	mov    0x14(%ebx),%eax
   36a99:	89 55 d8             	mov    %edx,-0x28(%ebp)
   36a9c:	8d 04 40             	lea    (%eax,%eax,2),%eax
   36a9f:	89 c2                	mov    %eax,%edx
   36aa1:	c1 ea 1f             	shr    $0x1f,%edx
   36aa4:	01 d0                	add    %edx,%eax
   36aa6:	89 45 e0             	mov    %eax,-0x20(%ebp)
   36aa9:	8b 45 dc             	mov    -0x24(%ebp),%eax
   36aac:	d1 7d e0             	sarl   -0x20(%ebp)
   36aaf:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
   36ab3:	39 45 e0             	cmp    %eax,-0x20(%ebp)
   36ab6:	0f 83 34 01 00 00    	jae    36bf0 <__ssprint_r+0x1b0>
   36abc:	89 45 e0             	mov    %eax,-0x20(%ebp)
   36abf:	80 e5 04             	and    $0x4,%ch
   36ac2:	0f 84 c8 00 00 00    	je     36b90 <__ssprint_r+0x150>
   36ac8:	89 44 24 04          	mov    %eax,0x4(%esp)
   36acc:	8b 45 08             	mov    0x8(%ebp),%eax
   36acf:	89 04 24             	mov    %eax,(%esp)
   36ad2:	e8 e9 e7 ff ff       	call   352c0 <_malloc_r>
   36ad7:	85 c0                	test   %eax,%eax
   36ad9:	89 c2                	mov    %eax,%edx
   36adb:	0f 84 e1 00 00 00    	je     36bc2 <__ssprint_r+0x182>
   36ae1:	8b 45 dc             	mov    -0x24(%ebp),%eax
   36ae4:	89 55 d8             	mov    %edx,-0x28(%ebp)
   36ae7:	89 44 24 08          	mov    %eax,0x8(%esp)
   36aeb:	8b 43 10             	mov    0x10(%ebx),%eax
   36aee:	89 14 24             	mov    %edx,(%esp)
   36af1:	89 44 24 04          	mov    %eax,0x4(%esp)
   36af5:	e8 0a b2 ff ff       	call   31d04 <memcpy>
   36afa:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
   36afe:	8b 55 d8             	mov    -0x28(%ebp),%edx
   36b01:	66 25 7f fb          	and    $0xfb7f,%ax
   36b05:	0c 80                	or     $0x80,%al
   36b07:	66 89 43 0c          	mov    %ax,0xc(%ebx)
   36b0b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   36b0e:	8b 45 dc             	mov    -0x24(%ebp),%eax
   36b11:	89 53 10             	mov    %edx,0x10(%ebx)
   36b14:	89 4b 14             	mov    %ecx,0x14(%ebx)
   36b17:	2b 4d dc             	sub    -0x24(%ebp),%ecx
   36b1a:	01 d0                	add    %edx,%eax
   36b1c:	89 03                	mov    %eax,(%ebx)
   36b1e:	89 f2                	mov    %esi,%edx
   36b20:	89 4b 08             	mov    %ecx,0x8(%ebx)
   36b23:	89 f1                	mov    %esi,%ecx
   36b25:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   36b29:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   36b2c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36b2f:	89 04 24             	mov    %eax,(%esp)
   36b32:	89 55 dc             	mov    %edx,-0x24(%ebp)
   36b35:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   36b39:	e8 22 13 00 00       	call   37e60 <memmove>
   36b3e:	8b 03                	mov    (%ebx),%eax
   36b40:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   36b43:	8b 55 dc             	mov    -0x24(%ebp),%edx
   36b46:	29 53 08             	sub    %edx,0x8(%ebx)
   36b49:	01 c8                	add    %ecx,%eax
   36b4b:	8b 4d 10             	mov    0x10(%ebp),%ecx
   36b4e:	89 03                	mov    %eax,(%ebx)
   36b50:	8b 51 08             	mov    0x8(%ecx),%edx
   36b53:	29 f2                	sub    %esi,%edx
   36b55:	85 d2                	test   %edx,%edx
   36b57:	89 51 08             	mov    %edx,0x8(%ecx)
   36b5a:	0f 84 98 00 00 00    	je     36bf8 <__ssprint_r+0x1b8>
   36b60:	8b 77 04             	mov    0x4(%edi),%esi
   36b63:	83 c7 08             	add    $0x8,%edi
   36b66:	8b 4f f8             	mov    -0x8(%edi),%ecx
   36b69:	85 f6                	test   %esi,%esi
   36b6b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   36b6e:	74 f0                	je     36b60 <__ssprint_r+0x120>
   36b70:	8b 53 08             	mov    0x8(%ebx),%edx
   36b73:	39 d6                	cmp    %edx,%esi
   36b75:	0f 83 04 ff ff ff    	jae    36a7f <__ssprint_r+0x3f>
   36b7b:	89 f2                	mov    %esi,%edx
   36b7d:	89 f1                	mov    %esi,%ecx
   36b7f:	eb a4                	jmp    36b25 <__ssprint_r+0xe5>
   36b81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36b88:	89 d1                	mov    %edx,%ecx
   36b8a:	eb 99                	jmp    36b25 <__ssprint_r+0xe5>
   36b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36b90:	89 44 24 08          	mov    %eax,0x8(%esp)
   36b94:	8b 45 d8             	mov    -0x28(%ebp),%eax
   36b97:	89 44 24 04          	mov    %eax,0x4(%esp)
   36b9b:	8b 45 08             	mov    0x8(%ebp),%eax
   36b9e:	89 04 24             	mov    %eax,(%esp)
   36ba1:	e8 4a 13 00 00       	call   37ef0 <_realloc_r>
   36ba6:	85 c0                	test   %eax,%eax
   36ba8:	89 c2                	mov    %eax,%edx
   36baa:	0f 85 5b ff ff ff    	jne    36b0b <__ssprint_r+0xcb>
   36bb0:	8b 43 10             	mov    0x10(%ebx),%eax
   36bb3:	89 44 24 04          	mov    %eax,0x4(%esp)
   36bb7:	8b 45 08             	mov    0x8(%ebp),%eax
   36bba:	89 04 24             	mov    %eax,(%esp)
   36bbd:	e8 3e 10 00 00       	call   37c00 <_free_r>
   36bc2:	8b 45 08             	mov    0x8(%ebp),%eax
   36bc5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   36bcb:	8b 45 10             	mov    0x10(%ebp),%eax
   36bce:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
   36bd3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   36bda:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   36be1:	83 c4 2c             	add    $0x2c,%esp
   36be4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   36be9:	5b                   	pop    %ebx
   36bea:	5e                   	pop    %esi
   36beb:	5f                   	pop    %edi
   36bec:	5d                   	pop    %ebp
   36bed:	c3                   	ret    
   36bee:	66 90                	xchg   %ax,%ax
   36bf0:	8b 45 e0             	mov    -0x20(%ebp),%eax
   36bf3:	e9 c7 fe ff ff       	jmp    36abf <__ssprint_r+0x7f>
   36bf8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
   36bff:	83 c4 2c             	add    $0x2c,%esp
   36c02:	31 c0                	xor    %eax,%eax
   36c04:	5b                   	pop    %ebx
   36c05:	5e                   	pop    %esi
   36c06:	5f                   	pop    %edi
   36c07:	5d                   	pop    %ebp
   36c08:	c3                   	ret    
   36c09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36c10:	8b 45 10             	mov    0x10(%ebp),%eax
   36c13:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   36c1a:	83 c4 2c             	add    $0x2c,%esp
   36c1d:	31 c0                	xor    %eax,%eax
   36c1f:	5b                   	pop    %ebx
   36c20:	5e                   	pop    %esi
   36c21:	5f                   	pop    %edi
   36c22:	5d                   	pop    %ebp
   36c23:	c3                   	ret    
   36c24:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36c2a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00036c30 <_svfiprintf_r>:
   36c30:	55                   	push   %ebp
   36c31:	89 e5                	mov    %esp,%ebp
   36c33:	57                   	push   %edi
   36c34:	56                   	push   %esi
   36c35:	53                   	push   %ebx
   36c36:	81 ec cc 00 00 00    	sub    $0xcc,%esp
   36c3c:	8b 45 0c             	mov    0xc(%ebp),%eax
   36c3f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
   36c43:	74 0b                	je     36c50 <_svfiprintf_r+0x20>
   36c45:	8b 50 10             	mov    0x10(%eax),%edx
   36c48:	85 d2                	test   %edx,%edx
   36c4a:	0f 84 1c 0d 00 00    	je     3796c <_svfiprintf_r+0xd3c>
   36c50:	8d 45 a8             	lea    -0x58(%ebp),%eax
   36c53:	8d 5d a7             	lea    -0x59(%ebp),%ebx
   36c56:	89 c6                	mov    %eax,%esi
   36c58:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
   36c5e:	29 d8                	sub    %ebx,%eax
   36c60:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
   36c67:	00 00 00 
   36c6a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   36c71:	00 00 00 
   36c74:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   36c7b:	00 00 00 
   36c7e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
   36c85:	00 00 00 
   36c88:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
   36c8e:	8b 45 10             	mov    0x10(%ebp),%eax
   36c91:	8b 5d 10             	mov    0x10(%ebp),%ebx
   36c94:	0f b6 00             	movzbl (%eax),%eax
   36c97:	84 c0                	test   %al,%al
   36c99:	74 58                	je     36cf3 <_svfiprintf_r+0xc3>
   36c9b:	3c 25                	cmp    $0x25,%al
   36c9d:	75 13                	jne    36cb2 <_svfiprintf_r+0x82>
   36c9f:	eb 52                	jmp    36cf3 <_svfiprintf_r+0xc3>
   36ca1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36ca8:	84 c0                	test   %al,%al
   36caa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36cb0:	74 0a                	je     36cbc <_svfiprintf_r+0x8c>
   36cb2:	83 c3 01             	add    $0x1,%ebx
   36cb5:	0f b6 03             	movzbl (%ebx),%eax
   36cb8:	3c 25                	cmp    $0x25,%al
   36cba:	75 ec                	jne    36ca8 <_svfiprintf_r+0x78>
   36cbc:	89 df                	mov    %ebx,%edi
   36cbe:	2b 7d 10             	sub    0x10(%ebp),%edi
   36cc1:	74 30                	je     36cf3 <_svfiprintf_r+0xc3>
   36cc3:	8b 45 10             	mov    0x10(%ebp),%eax
   36cc6:	83 c6 08             	add    $0x8,%esi
   36cc9:	89 7e fc             	mov    %edi,-0x4(%esi)
   36ccc:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
   36cd2:	89 46 f8             	mov    %eax,-0x8(%esi)
   36cd5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36cdb:	83 c0 01             	add    $0x1,%eax
   36cde:	83 f8 07             	cmp    $0x7,%eax
   36ce1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   36ce7:	0f 8f eb 0a 00 00    	jg     377d8 <_svfiprintf_r+0xba8>
   36ced:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
   36cf3:	80 3b 00             	cmpb   $0x0,(%ebx)
   36cf6:	0f 84 11 09 00 00    	je     3760d <_svfiprintf_r+0x9dd>
   36cfc:	8d 43 01             	lea    0x1(%ebx),%eax
   36cff:	31 ff                	xor    %edi,%edi
   36d01:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   36d08:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
   36d0f:	ff ff ff 
   36d12:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
   36d19:	00 00 00 
   36d1c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
   36d23:	00 00 00 
   36d26:	8d 50 01             	lea    0x1(%eax),%edx
   36d29:	0f be 00             	movsbl (%eax),%eax
   36d2c:	8d 48 e0             	lea    -0x20(%eax),%ecx
   36d2f:	83 f9 58             	cmp    $0x58,%ecx
   36d32:	0f 87 63 03 00 00    	ja     3709b <_svfiprintf_r+0x46b>
   36d38:	ff 24 8d 48 9c 03 00 	jmp    *0x39c48(,%ecx,4)
   36d3f:	90                   	nop
   36d40:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   36d47:	89 d0                	mov    %edx,%eax
   36d49:	eb db                	jmp    36d26 <_svfiprintf_r+0xf6>
   36d4b:	8b 45 14             	mov    0x14(%ebp),%eax
   36d4e:	8b 5d 14             	mov    0x14(%ebp),%ebx
   36d51:	8b 00                	mov    (%eax),%eax
   36d53:	83 c3 04             	add    $0x4,%ebx
   36d56:	89 5d 14             	mov    %ebx,0x14(%ebp)
   36d59:	85 c0                	test   %eax,%eax
   36d5b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
   36d61:	79 e4                	jns    36d47 <_svfiprintf_r+0x117>
   36d63:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
   36d69:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
   36d70:	89 d0                	mov    %edx,%eax
   36d72:	eb b2                	jmp    36d26 <_svfiprintf_r+0xf6>
   36d74:	bf 2b 00 00 00       	mov    $0x2b,%edi
   36d79:	89 d0                	mov    %edx,%eax
   36d7b:	eb a9                	jmp    36d26 <_svfiprintf_r+0xf6>
   36d7d:	8b 45 14             	mov    0x14(%ebp),%eax
   36d80:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
   36d87:	89 55 10             	mov    %edx,0x10(%ebp)
   36d8a:	ba 02 00 00 00       	mov    $0x2,%edx
   36d8f:	8b 08                	mov    (%eax),%ecx
   36d91:	83 c0 04             	add    $0x4,%eax
   36d94:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
   36d9b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
   36da2:	89 45 14             	mov    %eax,0x14(%ebp)
   36da5:	c7 85 44 ff ff ff e7 	movl   $0x398e7,-0xbc(%ebp)
   36dac:	98 03 00 
   36daf:	90                   	nop
   36db0:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   36db7:	31 ff                	xor    %edi,%edi
   36db9:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
   36dbf:	89 d8                	mov    %ebx,%eax
   36dc1:	24 7f                	and    $0x7f,%al
   36dc3:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
   36dca:	0f 48 c3             	cmovs  %ebx,%eax
   36dcd:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
   36dd3:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   36dd9:	85 c0                	test   %eax,%eax
   36ddb:	75 08                	jne    36de5 <_svfiprintf_r+0x1b5>
   36ddd:	85 c9                	test   %ecx,%ecx
   36ddf:	0f 84 03 08 00 00    	je     375e8 <_svfiprintf_r+0x9b8>
   36de5:	80 fa 01             	cmp    $0x1,%dl
   36de8:	0f 84 8a 0a 00 00    	je     37878 <_svfiprintf_r+0xc48>
   36dee:	80 fa 02             	cmp    $0x2,%dl
   36df1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
   36df4:	0f 85 86 01 00 00    	jne    36f80 <_svfiprintf_r+0x350>
   36dfa:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   36e00:	89 c8                	mov    %ecx,%eax
   36e02:	83 eb 01             	sub    $0x1,%ebx
   36e05:	83 e0 0f             	and    $0xf,%eax
   36e08:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
   36e0c:	c1 e9 04             	shr    $0x4,%ecx
   36e0f:	85 c9                	test   %ecx,%ecx
   36e11:	88 03                	mov    %al,(%ebx)
   36e13:	75 eb                	jne    36e00 <_svfiprintf_r+0x1d0>
   36e15:	8d 45 a8             	lea    -0x58(%ebp),%eax
   36e18:	29 d8                	sub    %ebx,%eax
   36e1a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   36e20:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   36e26:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
   36e2c:	39 c1                	cmp    %eax,%ecx
   36e2e:	0f 4d c1             	cmovge %ecx,%eax
   36e31:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
   36e37:	89 f8                	mov    %edi,%eax
   36e39:	3c 01                	cmp    $0x1,%al
   36e3b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
   36e42:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
   36e48:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
   36e4e:	89 d0                	mov    %edx,%eax
   36e50:	89 cf                	mov    %ecx,%edi
   36e52:	83 c0 02             	add    $0x2,%eax
   36e55:	83 e7 02             	and    $0x2,%edi
   36e58:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
   36e5e:	89 cf                	mov    %ecx,%edi
   36e60:	0f 44 c2             	cmove  %edx,%eax
   36e63:	81 e7 84 00 00 00    	and    $0x84,%edi
   36e69:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
   36e6f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   36e75:	0f 85 cd 04 00 00    	jne    37348 <_svfiprintf_r+0x718>
   36e7b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
   36e81:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
   36e87:	85 ff                	test   %edi,%edi
   36e89:	0f 8e b9 04 00 00    	jle    37348 <_svfiprintf_r+0x718>
   36e8f:	83 ff 10             	cmp    $0x10,%edi
   36e92:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   36e98:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36e9e:	7e 7c                	jle    36f1c <_svfiprintf_r+0x2ec>
   36ea0:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
   36ea6:	89 f1                	mov    %esi,%ecx
   36ea8:	8b 5d 08             	mov    0x8(%ebp),%ebx
   36eab:	8b 75 0c             	mov    0xc(%ebp),%esi
   36eae:	eb 08                	jmp    36eb8 <_svfiprintf_r+0x288>
   36eb0:	83 ef 10             	sub    $0x10,%edi
   36eb3:	83 ff 10             	cmp    $0x10,%edi
   36eb6:	7e 5c                	jle    36f14 <_svfiprintf_r+0x2e4>
   36eb8:	83 c0 01             	add    $0x1,%eax
   36ebb:	83 c2 10             	add    $0x10,%edx
   36ebe:	c7 01 bc 9d 03 00    	movl   $0x39dbc,(%ecx)
   36ec4:	83 c1 08             	add    $0x8,%ecx
   36ec7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   36ece:	83 f8 07             	cmp    $0x7,%eax
   36ed1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   36ed7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   36edd:	7e d1                	jle    36eb0 <_svfiprintf_r+0x280>
   36edf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   36ee5:	89 44 24 08          	mov    %eax,0x8(%esp)
   36ee9:	89 74 24 04          	mov    %esi,0x4(%esp)
   36eed:	89 1c 24             	mov    %ebx,(%esp)
   36ef0:	e8 4b fb ff ff       	call   36a40 <__ssprint_r>
   36ef5:	85 c0                	test   %eax,%eax
   36ef7:	0f 85 3b 07 00 00    	jne    37638 <_svfiprintf_r+0xa08>
   36efd:	83 ef 10             	sub    $0x10,%edi
   36f00:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   36f06:	83 ff 10             	cmp    $0x10,%edi
   36f09:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36f0f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   36f12:	7f a4                	jg     36eb8 <_svfiprintf_r+0x288>
   36f14:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
   36f1a:	89 ce                	mov    %ecx,%esi
   36f1c:	83 c0 01             	add    $0x1,%eax
   36f1f:	01 fa                	add    %edi,%edx
   36f21:	c7 06 bc 9d 03 00    	movl   $0x39dbc,(%esi)
   36f27:	83 c6 08             	add    $0x8,%esi
   36f2a:	89 7e fc             	mov    %edi,-0x4(%esi)
   36f2d:	83 f8 07             	cmp    $0x7,%eax
   36f30:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   36f36:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   36f3c:	0f 8e 12 04 00 00    	jle    37354 <_svfiprintf_r+0x724>
   36f42:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   36f48:	89 44 24 08          	mov    %eax,0x8(%esp)
   36f4c:	8b 45 0c             	mov    0xc(%ebp),%eax
   36f4f:	89 44 24 04          	mov    %eax,0x4(%esp)
   36f53:	8b 45 08             	mov    0x8(%ebp),%eax
   36f56:	89 04 24             	mov    %eax,(%esp)
   36f59:	e8 e2 fa ff ff       	call   36a40 <__ssprint_r>
   36f5e:	85 c0                	test   %eax,%eax
   36f60:	0f 85 d2 06 00 00    	jne    37638 <_svfiprintf_r+0xa08>
   36f66:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   36f6c:	8d 75 a8             	lea    -0x58(%ebp),%esi
   36f6f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36f75:	e9 da 03 00 00       	jmp    37354 <_svfiprintf_r+0x724>
   36f7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36f80:	89 c8                	mov    %ecx,%eax
   36f82:	83 eb 01             	sub    $0x1,%ebx
   36f85:	83 e0 07             	and    $0x7,%eax
   36f88:	c1 e9 03             	shr    $0x3,%ecx
   36f8b:	83 c0 30             	add    $0x30,%eax
   36f8e:	85 c9                	test   %ecx,%ecx
   36f90:	88 03                	mov    %al,(%ebx)
   36f92:	75 ec                	jne    36f80 <_svfiprintf_r+0x350>
   36f94:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
   36f9b:	89 da                	mov    %ebx,%edx
   36f9d:	0f 84 72 fe ff ff    	je     36e15 <_svfiprintf_r+0x1e5>
   36fa3:	3c 30                	cmp    $0x30,%al
   36fa5:	0f 84 6a fe ff ff    	je     36e15 <_svfiprintf_r+0x1e5>
   36fab:	83 eb 01             	sub    $0x1,%ebx
   36fae:	8d 45 a8             	lea    -0x58(%ebp),%eax
   36fb1:	29 d8                	sub    %ebx,%eax
   36fb3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
   36fb7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   36fbd:	e9 5e fe ff ff       	jmp    36e20 <_svfiprintf_r+0x1f0>
   36fc2:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   36fc9:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   36fd0:	89 55 10             	mov    %edx,0x10(%ebp)
   36fd3:	8b 45 14             	mov    0x14(%ebp),%eax
   36fd6:	0f 85 48 01 00 00    	jne    37124 <_svfiprintf_r+0x4f4>
   36fdc:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   36fe3:	0f 84 3b 01 00 00    	je     37124 <_svfiprintf_r+0x4f4>
   36fe9:	0f b7 08             	movzwl (%eax),%ecx
   36fec:	83 c0 04             	add    $0x4,%eax
   36fef:	31 d2                	xor    %edx,%edx
   36ff1:	89 45 14             	mov    %eax,0x14(%ebp)
   36ff4:	e9 b7 fd ff ff       	jmp    36db0 <_svfiprintf_r+0x180>
   36ff9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   37000:	89 f8                	mov    %edi,%eax
   37002:	89 55 10             	mov    %edx,0x10(%ebp)
   37005:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
   3700b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   37012:	8b 45 14             	mov    0x14(%ebp),%eax
   37015:	75 0d                	jne    37024 <_svfiprintf_r+0x3f4>
   37017:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   3701e:	0f 85 f2 08 00 00    	jne    37916 <_svfiprintf_r+0xce6>
   37024:	8b 08                	mov    (%eax),%ecx
   37026:	83 c0 04             	add    $0x4,%eax
   37029:	89 45 14             	mov    %eax,0x14(%ebp)
   3702c:	85 c9                	test   %ecx,%ecx
   3702e:	0f 88 f3 08 00 00    	js     37927 <_svfiprintf_r+0xcf7>
   37034:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   3703b:	ba 01 00 00 00       	mov    $0x1,%edx
   37040:	e9 74 fd ff ff       	jmp    36db9 <_svfiprintf_r+0x189>
   37045:	0f be 02             	movsbl (%edx),%eax
   37048:	8d 5a 01             	lea    0x1(%edx),%ebx
   3704b:	83 f8 2a             	cmp    $0x2a,%eax
   3704e:	0f 84 af 09 00 00    	je     37a03 <_svfiprintf_r+0xdd3>
   37054:	8d 48 d0             	lea    -0x30(%eax),%ecx
   37057:	31 d2                	xor    %edx,%edx
   37059:	83 f9 09             	cmp    $0x9,%ecx
   3705c:	0f 87 90 09 00 00    	ja     379f2 <_svfiprintf_r+0xdc2>
   37062:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37068:	8d 04 92             	lea    (%edx,%edx,4),%eax
   3706b:	83 c3 01             	add    $0x1,%ebx
   3706e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
   37071:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
   37075:	8d 48 d0             	lea    -0x30(%eax),%ecx
   37078:	83 f9 09             	cmp    $0x9,%ecx
   3707b:	76 eb                	jbe    37068 <_svfiprintf_r+0x438>
   3707d:	85 d2                	test   %edx,%edx
   3707f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   37084:	0f 48 d1             	cmovs  %ecx,%edx
   37087:	8d 48 e0             	lea    -0x20(%eax),%ecx
   3708a:	83 f9 58             	cmp    $0x58,%ecx
   3708d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
   37093:	89 da                	mov    %ebx,%edx
   37095:	0f 86 9d fc ff ff    	jbe    36d38 <_svfiprintf_r+0x108>
   3709b:	89 fb                	mov    %edi,%ebx
   3709d:	85 c0                	test   %eax,%eax
   3709f:	89 55 10             	mov    %edx,0x10(%ebp)
   370a2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
   370a8:	0f 84 5f 05 00 00    	je     3760d <_svfiprintf_r+0x9dd>
   370ae:	88 45 80             	mov    %al,-0x80(%ebp)
   370b1:	8d 5d 80             	lea    -0x80(%ebp),%ebx
   370b4:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   370bb:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
   370c2:	00 00 00 
   370c5:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
   370cc:	00 00 00 
   370cf:	e9 5a 01 00 00       	jmp    3722e <_svfiprintf_r+0x5fe>
   370d4:	31 db                	xor    %ebx,%ebx
   370d6:	8d 48 d0             	lea    -0x30(%eax),%ecx
   370d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   370e0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
   370e3:	83 c2 01             	add    $0x1,%edx
   370e6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
   370e9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
   370ed:	8d 48 d0             	lea    -0x30(%eax),%ecx
   370f0:	83 f9 09             	cmp    $0x9,%ecx
   370f3:	76 eb                	jbe    370e0 <_svfiprintf_r+0x4b0>
   370f5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
   370fb:	e9 2c fc ff ff       	jmp    36d2c <_svfiprintf_r+0xfc>
   37100:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
   37107:	00 00 00 
   3710a:	89 d0                	mov    %edx,%eax
   3710c:	e9 15 fc ff ff       	jmp    36d26 <_svfiprintf_r+0xf6>
   37111:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   37118:	89 55 10             	mov    %edx,0x10(%ebp)
   3711b:	8b 45 14             	mov    0x14(%ebp),%eax
   3711e:	0f 84 b8 fe ff ff    	je     36fdc <_svfiprintf_r+0x3ac>
   37124:	8b 08                	mov    (%eax),%ecx
   37126:	83 c0 04             	add    $0x4,%eax
   37129:	31 d2                	xor    %edx,%edx
   3712b:	89 45 14             	mov    %eax,0x14(%ebp)
   3712e:	e9 7d fc ff ff       	jmp    36db0 <_svfiprintf_r+0x180>
   37133:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   3713a:	89 f8                	mov    %edi,%eax
   3713c:	89 55 10             	mov    %edx,0x10(%ebp)
   3713f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
   37145:	0f 85 a2 07 00 00    	jne    378ed <_svfiprintf_r+0xcbd>
   3714b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   37152:	0f 84 95 07 00 00    	je     378ed <_svfiprintf_r+0xcbd>
   37158:	8b 45 14             	mov    0x14(%ebp),%eax
   3715b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
   37162:	8b 00                	mov    (%eax),%eax
   37164:	66 89 18             	mov    %bx,(%eax)
   37167:	8b 45 14             	mov    0x14(%ebp),%eax
   3716a:	83 c0 04             	add    $0x4,%eax
   3716d:	89 45 14             	mov    %eax,0x14(%ebp)
   37170:	e9 19 fb ff ff       	jmp    36c8e <_svfiprintf_r+0x5e>
   37175:	89 fb                	mov    %edi,%ebx
   37177:	89 55 10             	mov    %edx,0x10(%ebp)
   3717a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
   37180:	c7 85 44 ff ff ff e7 	movl   $0x398e7,-0xbc(%ebp)
   37187:	98 03 00 
   3718a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   37191:	8b 5d 14             	mov    0x14(%ebp),%ebx
   37194:	75 0d                	jne    371a3 <_svfiprintf_r+0x573>
   37196:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   3719d:	0f 85 65 07 00 00    	jne    37908 <_svfiprintf_r+0xcd8>
   371a3:	8b 0b                	mov    (%ebx),%ecx
   371a5:	83 c3 04             	add    $0x4,%ebx
   371a8:	89 5d 14             	mov    %ebx,0x14(%ebp)
   371ab:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
   371b2:	ba 02 00 00 00       	mov    $0x2,%edx
   371b7:	0f 84 f3 fb ff ff    	je     36db0 <_svfiprintf_r+0x180>
   371bd:	85 c9                	test   %ecx,%ecx
   371bf:	0f 84 eb fb ff ff    	je     36db0 <_svfiprintf_r+0x180>
   371c5:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
   371cc:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
   371d2:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
   371d9:	e9 d2 fb ff ff       	jmp    36db0 <_svfiprintf_r+0x180>
   371de:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
   371e5:	89 d0                	mov    %edx,%eax
   371e7:	e9 3a fb ff ff       	jmp    36d26 <_svfiprintf_r+0xf6>
   371ec:	89 f8                	mov    %edi,%eax
   371ee:	89 55 10             	mov    %edx,0x10(%ebp)
   371f1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
   371f7:	e9 0f fe ff ff       	jmp    3700b <_svfiprintf_r+0x3db>
   371fc:	8b 45 14             	mov    0x14(%ebp),%eax
   371ff:	8d 5d 80             	lea    -0x80(%ebp),%ebx
   37202:	89 55 10             	mov    %edx,0x10(%ebp)
   37205:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   3720c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
   37213:	00 00 00 
   37216:	8b 00                	mov    (%eax),%eax
   37218:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
   3721f:	00 00 00 
   37222:	88 45 80             	mov    %al,-0x80(%ebp)
   37225:	8b 45 14             	mov    0x14(%ebp),%eax
   37228:	83 c0 04             	add    $0x4,%eax
   3722b:	89 45 14             	mov    %eax,0x14(%ebp)
   3722e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   37235:	00 00 00 
   37238:	e9 05 fc ff ff       	jmp    36e42 <_svfiprintf_r+0x212>
   3723d:	89 fb                	mov    %edi,%ebx
   3723f:	89 55 10             	mov    %edx,0x10(%ebp)
   37242:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
   37248:	c7 85 44 ff ff ff d6 	movl   $0x398d6,-0xbc(%ebp)
   3724f:	98 03 00 
   37252:	e9 33 ff ff ff       	jmp    3718a <_svfiprintf_r+0x55a>
   37257:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   3725e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   37265:	89 55 10             	mov    %edx,0x10(%ebp)
   37268:	8b 45 14             	mov    0x14(%ebp),%eax
   3726b:	75 39                	jne    372a6 <_svfiprintf_r+0x676>
   3726d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   37274:	74 30                	je     372a6 <_svfiprintf_r+0x676>
   37276:	0f b7 08             	movzwl (%eax),%ecx
   37279:	83 c0 04             	add    $0x4,%eax
   3727c:	ba 01 00 00 00       	mov    $0x1,%edx
   37281:	89 45 14             	mov    %eax,0x14(%ebp)
   37284:	e9 27 fb ff ff       	jmp    36db0 <_svfiprintf_r+0x180>
   37289:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
   37290:	89 d0                	mov    %edx,%eax
   37292:	e9 8f fa ff ff       	jmp    36d26 <_svfiprintf_r+0xf6>
   37297:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   3729e:	89 55 10             	mov    %edx,0x10(%ebp)
   372a1:	8b 45 14             	mov    0x14(%ebp),%eax
   372a4:	74 c7                	je     3726d <_svfiprintf_r+0x63d>
   372a6:	8b 08                	mov    (%eax),%ecx
   372a8:	83 c0 04             	add    $0x4,%eax
   372ab:	ba 01 00 00 00       	mov    $0x1,%edx
   372b0:	89 45 14             	mov    %eax,0x14(%ebp)
   372b3:	e9 f8 fa ff ff       	jmp    36db0 <_svfiprintf_r+0x180>
   372b8:	8b 45 14             	mov    0x14(%ebp),%eax
   372bb:	89 55 10             	mov    %edx,0x10(%ebp)
   372be:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   372c5:	8b 18                	mov    (%eax),%ebx
   372c7:	8d 50 04             	lea    0x4(%eax),%edx
   372ca:	85 db                	test   %ebx,%ebx
   372cc:	0f 84 cc 06 00 00    	je     3799e <_svfiprintf_r+0xd6e>
   372d2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
   372d8:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
   372de:	85 ff                	test   %edi,%edi
   372e0:	0f 88 59 06 00 00    	js     3793f <_svfiprintf_r+0xd0f>
   372e6:	89 7c 24 08          	mov    %edi,0x8(%esp)
   372ea:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   372f1:	00 
   372f2:	89 1c 24             	mov    %ebx,(%esp)
   372f5:	e8 06 e7 ff ff       	call   35a00 <memchr>
   372fa:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
   37300:	85 c0                	test   %eax,%eax
   37302:	0f 84 c5 06 00 00    	je     379cd <_svfiprintf_r+0xd9d>
   37308:	29 d8                	sub    %ebx,%eax
   3730a:	39 f8                	cmp    %edi,%eax
   3730c:	0f 4f c7             	cmovg  %edi,%eax
   3730f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   37316:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   3731c:	89 55 14             	mov    %edx,0x14(%ebp)
   3731f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   37326:	00 00 00 
   37329:	e9 f2 fa ff ff       	jmp    36e20 <_svfiprintf_r+0x1f0>
   3732e:	89 f8                	mov    %edi,%eax
   37330:	84 c0                	test   %al,%al
   37332:	b8 20 00 00 00       	mov    $0x20,%eax
   37337:	0f 44 f8             	cmove  %eax,%edi
   3733a:	89 d0                	mov    %edx,%eax
   3733c:	e9 e5 f9 ff ff       	jmp    36d26 <_svfiprintf_r+0xf6>
   37341:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37348:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3734e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   37354:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
   3735b:	74 2e                	je     3738b <_svfiprintf_r+0x75b>
   3735d:	83 c0 01             	add    $0x1,%eax
   37360:	83 c2 01             	add    $0x1,%edx
   37363:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
   37369:	83 c6 08             	add    $0x8,%esi
   3736c:	89 4e f8             	mov    %ecx,-0x8(%esi)
   3736f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
   37376:	83 f8 07             	cmp    $0x7,%eax
   37379:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   3737f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   37385:	0f 8f b5 04 00 00    	jg     37840 <_svfiprintf_r+0xc10>
   3738b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
   37391:	85 c9                	test   %ecx,%ecx
   37393:	74 2e                	je     373c3 <_svfiprintf_r+0x793>
   37395:	83 c0 01             	add    $0x1,%eax
   37398:	83 c2 02             	add    $0x2,%edx
   3739b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
   373a1:	83 c6 08             	add    $0x8,%esi
   373a4:	89 4e f8             	mov    %ecx,-0x8(%esi)
   373a7:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
   373ae:	83 f8 07             	cmp    $0x7,%eax
   373b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   373b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   373bd:	0f 8f 45 04 00 00    	jg     37808 <_svfiprintf_r+0xbd8>
   373c3:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
   373ca:	00 00 00 
   373cd:	0f 84 9d 02 00 00    	je     37670 <_svfiprintf_r+0xa40>
   373d3:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
   373d9:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
   373df:	85 ff                	test   %edi,%edi
   373e1:	0f 8e e1 00 00 00    	jle    374c8 <_svfiprintf_r+0x898>
   373e7:	83 ff 10             	cmp    $0x10,%edi
   373ea:	0f 8e 7c 00 00 00    	jle    3746c <_svfiprintf_r+0x83c>
   373f0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
   373f6:	89 f1                	mov    %esi,%ecx
   373f8:	8b 5d 08             	mov    0x8(%ebp),%ebx
   373fb:	8b 75 0c             	mov    0xc(%ebp),%esi
   373fe:	eb 08                	jmp    37408 <_svfiprintf_r+0x7d8>
   37400:	83 ef 10             	sub    $0x10,%edi
   37403:	83 ff 10             	cmp    $0x10,%edi
   37406:	7e 5c                	jle    37464 <_svfiprintf_r+0x834>
   37408:	83 c0 01             	add    $0x1,%eax
   3740b:	83 c2 10             	add    $0x10,%edx
   3740e:	c7 01 ac 9d 03 00    	movl   $0x39dac,(%ecx)
   37414:	83 c1 08             	add    $0x8,%ecx
   37417:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   3741e:	83 f8 07             	cmp    $0x7,%eax
   37421:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37427:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3742d:	7e d1                	jle    37400 <_svfiprintf_r+0x7d0>
   3742f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37435:	89 44 24 08          	mov    %eax,0x8(%esp)
   37439:	89 74 24 04          	mov    %esi,0x4(%esp)
   3743d:	89 1c 24             	mov    %ebx,(%esp)
   37440:	e8 fb f5 ff ff       	call   36a40 <__ssprint_r>
   37445:	85 c0                	test   %eax,%eax
   37447:	0f 85 eb 01 00 00    	jne    37638 <_svfiprintf_r+0xa08>
   3744d:	83 ef 10             	sub    $0x10,%edi
   37450:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   37456:	83 ff 10             	cmp    $0x10,%edi
   37459:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3745f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   37462:	7f a4                	jg     37408 <_svfiprintf_r+0x7d8>
   37464:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   3746a:	89 ce                	mov    %ecx,%esi
   3746c:	83 c0 01             	add    $0x1,%eax
   3746f:	01 fa                	add    %edi,%edx
   37471:	c7 06 ac 9d 03 00    	movl   $0x39dac,(%esi)
   37477:	83 c6 08             	add    $0x8,%esi
   3747a:	89 7e fc             	mov    %edi,-0x4(%esi)
   3747d:	83 f8 07             	cmp    $0x7,%eax
   37480:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37486:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3748c:	7e 3a                	jle    374c8 <_svfiprintf_r+0x898>
   3748e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37494:	89 44 24 08          	mov    %eax,0x8(%esp)
   37498:	8b 45 0c             	mov    0xc(%ebp),%eax
   3749b:	89 44 24 04          	mov    %eax,0x4(%esp)
   3749f:	8b 45 08             	mov    0x8(%ebp),%eax
   374a2:	89 04 24             	mov    %eax,(%esp)
   374a5:	e8 96 f5 ff ff       	call   36a40 <__ssprint_r>
   374aa:	85 c0                	test   %eax,%eax
   374ac:	0f 85 86 01 00 00    	jne    37638 <_svfiprintf_r+0xa08>
   374b2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   374b8:	8d 75 a8             	lea    -0x58(%ebp),%esi
   374bb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   374c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   374c8:	89 1e                	mov    %ebx,(%esi)
   374ca:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
   374d0:	83 c0 01             	add    $0x1,%eax
   374d3:	83 c6 08             	add    $0x8,%esi
   374d6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   374dc:	89 5e fc             	mov    %ebx,-0x4(%esi)
   374df:	01 da                	add    %ebx,%edx
   374e1:	83 f8 07             	cmp    $0x7,%eax
   374e4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   374ea:	0f 8f 80 02 00 00    	jg     37770 <_svfiprintf_r+0xb40>
   374f0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
   374f7:	0f 84 b9 00 00 00    	je     375b6 <_svfiprintf_r+0x986>
   374fd:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
   37503:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
   37509:	85 ff                	test   %edi,%edi
   3750b:	0f 8e a5 00 00 00    	jle    375b6 <_svfiprintf_r+0x986>
   37511:	83 ff 10             	cmp    $0x10,%edi
   37514:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3751a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   37520:	7e 71                	jle    37593 <_svfiprintf_r+0x963>
   37522:	89 f1                	mov    %esi,%ecx
   37524:	8b 75 08             	mov    0x8(%ebp),%esi
   37527:	eb 0f                	jmp    37538 <_svfiprintf_r+0x908>
   37529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37530:	83 ef 10             	sub    $0x10,%edi
   37533:	83 ff 10             	cmp    $0x10,%edi
   37536:	7e 59                	jle    37591 <_svfiprintf_r+0x961>
   37538:	83 c0 01             	add    $0x1,%eax
   3753b:	83 c2 10             	add    $0x10,%edx
   3753e:	c7 01 bc 9d 03 00    	movl   $0x39dbc,(%ecx)
   37544:	83 c1 08             	add    $0x8,%ecx
   37547:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   3754e:	83 f8 07             	cmp    $0x7,%eax
   37551:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37557:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3755d:	7e d1                	jle    37530 <_svfiprintf_r+0x900>
   3755f:	8b 45 0c             	mov    0xc(%ebp),%eax
   37562:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   37566:	89 34 24             	mov    %esi,(%esp)
   37569:	89 44 24 04          	mov    %eax,0x4(%esp)
   3756d:	e8 ce f4 ff ff       	call   36a40 <__ssprint_r>
   37572:	85 c0                	test   %eax,%eax
   37574:	0f 85 be 00 00 00    	jne    37638 <_svfiprintf_r+0xa08>
   3757a:	83 ef 10             	sub    $0x10,%edi
   3757d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   37583:	83 ff 10             	cmp    $0x10,%edi
   37586:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3758c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   3758f:	7f a7                	jg     37538 <_svfiprintf_r+0x908>
   37591:	89 ce                	mov    %ecx,%esi
   37593:	83 c0 01             	add    $0x1,%eax
   37596:	01 fa                	add    %edi,%edx
   37598:	83 f8 07             	cmp    $0x7,%eax
   3759b:	c7 06 bc 9d 03 00    	movl   $0x39dbc,(%esi)
   375a1:	89 7e 04             	mov    %edi,0x4(%esi)
   375a4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   375aa:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   375b0:	0f 8f ee 02 00 00    	jg     378a4 <_svfiprintf_r+0xc74>
   375b6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
   375bc:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
   375c2:	39 c6                	cmp    %eax,%esi
   375c4:	0f 4d c6             	cmovge %esi,%eax
   375c7:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
   375cd:	85 d2                	test   %edx,%edx
   375cf:	0f 85 d3 01 00 00    	jne    377a8 <_svfiprintf_r+0xb78>
   375d5:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   375dc:	00 00 00 
   375df:	8d 75 a8             	lea    -0x58(%ebp),%esi
   375e2:	e9 a7 f6 ff ff       	jmp    36c8e <_svfiprintf_r+0x5e>
   375e7:	90                   	nop
   375e8:	84 d2                	test   %dl,%dl
   375ea:	75 6c                	jne    37658 <_svfiprintf_r+0xa28>
   375ec:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
   375f3:	74 63                	je     37658 <_svfiprintf_r+0xa28>
   375f5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
   375fb:	8d 5d a7             	lea    -0x59(%ebp),%ebx
   375fe:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
   37602:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   37608:	e9 13 f8 ff ff       	jmp    36e20 <_svfiprintf_r+0x1f0>
   3760d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
   37613:	85 c0                	test   %eax,%eax
   37615:	74 21                	je     37638 <_svfiprintf_r+0xa08>
   37617:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3761d:	89 44 24 08          	mov    %eax,0x8(%esp)
   37621:	8b 45 0c             	mov    0xc(%ebp),%eax
   37624:	89 44 24 04          	mov    %eax,0x4(%esp)
   37628:	8b 45 08             	mov    0x8(%ebp),%eax
   3762b:	89 04 24             	mov    %eax,(%esp)
   3762e:	e8 0d f4 ff ff       	call   36a40 <__ssprint_r>
   37633:	90                   	nop
   37634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37638:	8b 75 0c             	mov    0xc(%ebp),%esi
   3763b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   37640:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
   37644:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
   3764b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
   37651:	5b                   	pop    %ebx
   37652:	5e                   	pop    %esi
   37653:	5f                   	pop    %edi
   37654:	5d                   	pop    %ebp
   37655:	c3                   	ret    
   37656:	66 90                	xchg   %ax,%ax
   37658:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
   3765f:	00 00 00 
   37662:	8d 5d a8             	lea    -0x58(%ebp),%ebx
   37665:	e9 b6 f7 ff ff       	jmp    36e20 <_svfiprintf_r+0x1f0>
   3766a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37670:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
   37676:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
   3767c:	85 ff                	test   %edi,%edi
   3767e:	0f 8e 4f fd ff ff    	jle    373d3 <_svfiprintf_r+0x7a3>
   37684:	83 ff 10             	cmp    $0x10,%edi
   37687:	0f 8e 7f 00 00 00    	jle    3770c <_svfiprintf_r+0xadc>
   3768d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
   37693:	89 f1                	mov    %esi,%ecx
   37695:	8b 5d 08             	mov    0x8(%ebp),%ebx
   37698:	8b 75 0c             	mov    0xc(%ebp),%esi
   3769b:	eb 0b                	jmp    376a8 <_svfiprintf_r+0xa78>
   3769d:	8d 76 00             	lea    0x0(%esi),%esi
   376a0:	83 ef 10             	sub    $0x10,%edi
   376a3:	83 ff 10             	cmp    $0x10,%edi
   376a6:	7e 5c                	jle    37704 <_svfiprintf_r+0xad4>
   376a8:	83 c0 01             	add    $0x1,%eax
   376ab:	83 c2 10             	add    $0x10,%edx
   376ae:	c7 01 ac 9d 03 00    	movl   $0x39dac,(%ecx)
   376b4:	83 c1 08             	add    $0x8,%ecx
   376b7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   376be:	83 f8 07             	cmp    $0x7,%eax
   376c1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   376c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   376cd:	7e d1                	jle    376a0 <_svfiprintf_r+0xa70>
   376cf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   376d5:	89 44 24 08          	mov    %eax,0x8(%esp)
   376d9:	89 74 24 04          	mov    %esi,0x4(%esp)
   376dd:	89 1c 24             	mov    %ebx,(%esp)
   376e0:	e8 5b f3 ff ff       	call   36a40 <__ssprint_r>
   376e5:	85 c0                	test   %eax,%eax
   376e7:	0f 85 4b ff ff ff    	jne    37638 <_svfiprintf_r+0xa08>
   376ed:	83 ef 10             	sub    $0x10,%edi
   376f0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   376f6:	83 ff 10             	cmp    $0x10,%edi
   376f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   376ff:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   37702:	7f a4                	jg     376a8 <_svfiprintf_r+0xa78>
   37704:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
   3770a:	89 ce                	mov    %ecx,%esi
   3770c:	83 c0 01             	add    $0x1,%eax
   3770f:	01 fa                	add    %edi,%edx
   37711:	c7 06 ac 9d 03 00    	movl   $0x39dac,(%esi)
   37717:	83 c6 08             	add    $0x8,%esi
   3771a:	89 7e fc             	mov    %edi,-0x4(%esi)
   3771d:	83 f8 07             	cmp    $0x7,%eax
   37720:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37726:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3772c:	0f 8e a1 fc ff ff    	jle    373d3 <_svfiprintf_r+0x7a3>
   37732:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37738:	89 44 24 08          	mov    %eax,0x8(%esp)
   3773c:	8b 45 0c             	mov    0xc(%ebp),%eax
   3773f:	89 44 24 04          	mov    %eax,0x4(%esp)
   37743:	8b 45 08             	mov    0x8(%ebp),%eax
   37746:	89 04 24             	mov    %eax,(%esp)
   37749:	e8 f2 f2 ff ff       	call   36a40 <__ssprint_r>
   3774e:	85 c0                	test   %eax,%eax
   37750:	0f 85 e2 fe ff ff    	jne    37638 <_svfiprintf_r+0xa08>
   37756:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3775c:	8d 75 a8             	lea    -0x58(%ebp),%esi
   3775f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   37765:	e9 69 fc ff ff       	jmp    373d3 <_svfiprintf_r+0x7a3>
   3776a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37770:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37776:	89 44 24 08          	mov    %eax,0x8(%esp)
   3777a:	8b 45 0c             	mov    0xc(%ebp),%eax
   3777d:	89 44 24 04          	mov    %eax,0x4(%esp)
   37781:	8b 45 08             	mov    0x8(%ebp),%eax
   37784:	89 04 24             	mov    %eax,(%esp)
   37787:	e8 b4 f2 ff ff       	call   36a40 <__ssprint_r>
   3778c:	85 c0                	test   %eax,%eax
   3778e:	0f 85 a4 fe ff ff    	jne    37638 <_svfiprintf_r+0xa08>
   37794:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3779a:	8d 75 a8             	lea    -0x58(%ebp),%esi
   3779d:	e9 4e fd ff ff       	jmp    374f0 <_svfiprintf_r+0x8c0>
   377a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   377a8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   377ae:	89 44 24 08          	mov    %eax,0x8(%esp)
   377b2:	8b 45 0c             	mov    0xc(%ebp),%eax
   377b5:	89 44 24 04          	mov    %eax,0x4(%esp)
   377b9:	8b 45 08             	mov    0x8(%ebp),%eax
   377bc:	89 04 24             	mov    %eax,(%esp)
   377bf:	e8 7c f2 ff ff       	call   36a40 <__ssprint_r>
   377c4:	85 c0                	test   %eax,%eax
   377c6:	0f 84 09 fe ff ff    	je     375d5 <_svfiprintf_r+0x9a5>
   377cc:	e9 67 fe ff ff       	jmp    37638 <_svfiprintf_r+0xa08>
   377d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   377d8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   377de:	89 44 24 08          	mov    %eax,0x8(%esp)
   377e2:	8b 45 0c             	mov    0xc(%ebp),%eax
   377e5:	89 44 24 04          	mov    %eax,0x4(%esp)
   377e9:	8b 45 08             	mov    0x8(%ebp),%eax
   377ec:	89 04 24             	mov    %eax,(%esp)
   377ef:	e8 4c f2 ff ff       	call   36a40 <__ssprint_r>
   377f4:	85 c0                	test   %eax,%eax
   377f6:	0f 85 3c fe ff ff    	jne    37638 <_svfiprintf_r+0xa08>
   377fc:	8d 75 a8             	lea    -0x58(%ebp),%esi
   377ff:	e9 e9 f4 ff ff       	jmp    36ced <_svfiprintf_r+0xbd>
   37804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37808:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3780e:	89 44 24 08          	mov    %eax,0x8(%esp)
   37812:	8b 45 0c             	mov    0xc(%ebp),%eax
   37815:	89 44 24 04          	mov    %eax,0x4(%esp)
   37819:	8b 45 08             	mov    0x8(%ebp),%eax
   3781c:	89 04 24             	mov    %eax,(%esp)
   3781f:	e8 1c f2 ff ff       	call   36a40 <__ssprint_r>
   37824:	85 c0                	test   %eax,%eax
   37826:	0f 85 0c fe ff ff    	jne    37638 <_svfiprintf_r+0xa08>
   3782c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   37832:	8d 75 a8             	lea    -0x58(%ebp),%esi
   37835:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3783b:	e9 83 fb ff ff       	jmp    373c3 <_svfiprintf_r+0x793>
   37840:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37846:	89 44 24 08          	mov    %eax,0x8(%esp)
   3784a:	8b 45 0c             	mov    0xc(%ebp),%eax
   3784d:	89 44 24 04          	mov    %eax,0x4(%esp)
   37851:	8b 45 08             	mov    0x8(%ebp),%eax
   37854:	89 04 24             	mov    %eax,(%esp)
   37857:	e8 e4 f1 ff ff       	call   36a40 <__ssprint_r>
   3785c:	85 c0                	test   %eax,%eax
   3785e:	0f 85 d4 fd ff ff    	jne    37638 <_svfiprintf_r+0xa08>
   37864:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3786a:	8d 75 a8             	lea    -0x58(%ebp),%esi
   3786d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   37873:	e9 13 fb ff ff       	jmp    3738b <_svfiprintf_r+0x75b>
   37878:	83 f9 09             	cmp    $0x9,%ecx
   3787b:	76 56                	jbe    378d3 <_svfiprintf_r+0xca3>
   3787d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
   37880:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
   37885:	83 eb 01             	sub    $0x1,%ebx
   37888:	f7 e1                	mul    %ecx
   3788a:	c1 ea 03             	shr    $0x3,%edx
   3788d:	8d 04 92             	lea    (%edx,%edx,4),%eax
   37890:	01 c0                	add    %eax,%eax
   37892:	29 c1                	sub    %eax,%ecx
   37894:	83 c1 30             	add    $0x30,%ecx
   37897:	85 d2                	test   %edx,%edx
   37899:	88 0b                	mov    %cl,(%ebx)
   3789b:	89 d1                	mov    %edx,%ecx
   3789d:	75 e1                	jne    37880 <_svfiprintf_r+0xc50>
   3789f:	e9 71 f5 ff ff       	jmp    36e15 <_svfiprintf_r+0x1e5>
   378a4:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   378aa:	89 44 24 08          	mov    %eax,0x8(%esp)
   378ae:	8b 45 0c             	mov    0xc(%ebp),%eax
   378b1:	89 44 24 04          	mov    %eax,0x4(%esp)
   378b5:	8b 45 08             	mov    0x8(%ebp),%eax
   378b8:	89 04 24             	mov    %eax,(%esp)
   378bb:	e8 80 f1 ff ff       	call   36a40 <__ssprint_r>
   378c0:	85 c0                	test   %eax,%eax
   378c2:	0f 85 70 fd ff ff    	jne    37638 <_svfiprintf_r+0xa08>
   378c8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   378ce:	e9 e3 fc ff ff       	jmp    375b6 <_svfiprintf_r+0x986>
   378d3:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
   378d9:	83 c1 30             	add    $0x30,%ecx
   378dc:	88 4d a7             	mov    %cl,-0x59(%ebp)
   378df:	8d 5d a7             	lea    -0x59(%ebp),%ebx
   378e2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   378e8:	e9 33 f5 ff ff       	jmp    36e20 <_svfiprintf_r+0x1f0>
   378ed:	8b 45 14             	mov    0x14(%ebp),%eax
   378f0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
   378f6:	8b 00                	mov    (%eax),%eax
   378f8:	89 18                	mov    %ebx,(%eax)
   378fa:	8b 45 14             	mov    0x14(%ebp),%eax
   378fd:	83 c0 04             	add    $0x4,%eax
   37900:	89 45 14             	mov    %eax,0x14(%ebp)
   37903:	e9 86 f3 ff ff       	jmp    36c8e <_svfiprintf_r+0x5e>
   37908:	0f b7 0b             	movzwl (%ebx),%ecx
   3790b:	83 c3 04             	add    $0x4,%ebx
   3790e:	89 5d 14             	mov    %ebx,0x14(%ebp)
   37911:	e9 95 f8 ff ff       	jmp    371ab <_svfiprintf_r+0x57b>
   37916:	0f bf 08             	movswl (%eax),%ecx
   37919:	83 c0 04             	add    $0x4,%eax
   3791c:	89 45 14             	mov    %eax,0x14(%ebp)
   3791f:	85 c9                	test   %ecx,%ecx
   37921:	0f 89 0d f7 ff ff    	jns    37034 <_svfiprintf_r+0x404>
   37927:	f7 d9                	neg    %ecx
   37929:	bf 2d 00 00 00       	mov    $0x2d,%edi
   3792e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
   37935:	ba 01 00 00 00       	mov    $0x1,%edx
   3793a:	e9 7a f4 ff ff       	jmp    36db9 <_svfiprintf_r+0x189>
   3793f:	89 1c 24             	mov    %ebx,(%esp)
   37942:	e8 79 f0 ff ff       	call   369c0 <strlen>
   37947:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
   3794d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   37954:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   3795b:	00 00 00 
   3795e:	89 55 14             	mov    %edx,0x14(%ebp)
   37961:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   37967:	e9 b4 f4 ff ff       	jmp    36e20 <_svfiprintf_r+0x1f0>
   3796c:	8b 45 08             	mov    0x8(%ebp),%eax
   3796f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
   37976:	00 
   37977:	89 04 24             	mov    %eax,(%esp)
   3797a:	e8 41 d9 ff ff       	call   352c0 <_malloc_r>
   3797f:	8b 75 0c             	mov    0xc(%ebp),%esi
   37982:	85 c0                	test   %eax,%eax
   37984:	89 06                	mov    %eax,(%esi)
   37986:	89 46 10             	mov    %eax,0x10(%esi)
   37989:	0f 84 a3 00 00 00    	je     37a32 <_svfiprintf_r+0xe02>
   3798f:	8b 45 0c             	mov    0xc(%ebp),%eax
   37992:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
   37999:	e9 b2 f2 ff ff       	jmp    36c50 <_svfiprintf_r+0x20>
   3799e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
   379a4:	b8 06 00 00 00       	mov    $0x6,%eax
   379a9:	89 55 14             	mov    %edx,0x14(%ebp)
   379ac:	83 ff 06             	cmp    $0x6,%edi
   379af:	0f 46 c7             	cmovbe %edi,%eax
   379b2:	85 c0                	test   %eax,%eax
   379b4:	0f 49 d8             	cmovns %eax,%ebx
   379b7:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
   379bd:	bb f8 98 03 00       	mov    $0x398f8,%ebx
   379c2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   379c8:	e9 61 f8 ff ff       	jmp    3722e <_svfiprintf_r+0x5fe>
   379cd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   379d3:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   379da:	89 55 14             	mov    %edx,0x14(%ebp)
   379dd:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   379e4:	00 00 00 
   379e7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   379ed:	e9 2e f4 ff ff       	jmp    36e20 <_svfiprintf_r+0x1f0>
   379f2:	89 da                	mov    %ebx,%edx
   379f4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   379fb:	00 00 00 
   379fe:	e9 29 f3 ff ff       	jmp    36d2c <_svfiprintf_r+0xfc>
   37a03:	8b 4d 14             	mov    0x14(%ebp),%ecx
   37a06:	89 da                	mov    %ebx,%edx
   37a08:	8b 45 14             	mov    0x14(%ebp),%eax
   37a0b:	8b 09                	mov    (%ecx),%ecx
   37a0d:	83 c0 04             	add    $0x4,%eax
   37a10:	89 45 14             	mov    %eax,0x14(%ebp)
   37a13:	85 c9                	test   %ecx,%ecx
   37a15:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
   37a1b:	0f 89 26 f3 ff ff    	jns    36d47 <_svfiprintf_r+0x117>
   37a21:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
   37a28:	ff ff ff 
   37a2b:	89 d0                	mov    %edx,%eax
   37a2d:	e9 f4 f2 ff ff       	jmp    36d26 <_svfiprintf_r+0xf6>
   37a32:	8b 45 08             	mov    0x8(%ebp),%eax
   37a35:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   37a3b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   37a40:	e9 06 fc ff ff       	jmp    3764b <_svfiprintf_r+0xa1b>
   37a45:	66 90                	xchg   %ax,%ax
   37a47:	66 90                	xchg   %ax,%ax
   37a49:	66 90                	xchg   %ax,%ax
   37a4b:	66 90                	xchg   %ax,%ax
   37a4d:	66 90                	xchg   %ax,%ax
   37a4f:	90                   	nop

00037a50 <_calloc_r>:
   37a50:	55                   	push   %ebp
   37a51:	89 e5                	mov    %esp,%ebp
   37a53:	53                   	push   %ebx
   37a54:	83 ec 14             	sub    $0x14,%esp
   37a57:	8b 45 10             	mov    0x10(%ebp),%eax
   37a5a:	0f af 45 0c          	imul   0xc(%ebp),%eax
   37a5e:	89 44 24 04          	mov    %eax,0x4(%esp)
   37a62:	8b 45 08             	mov    0x8(%ebp),%eax
   37a65:	89 04 24             	mov    %eax,(%esp)
   37a68:	e8 53 d8 ff ff       	call   352c0 <_malloc_r>
   37a6d:	85 c0                	test   %eax,%eax
   37a6f:	89 c3                	mov    %eax,%ebx
   37a71:	0f 84 91 00 00 00    	je     37b08 <_calloc_r+0xb8>
   37a77:	8b 40 fc             	mov    -0x4(%eax),%eax
   37a7a:	83 e0 fc             	and    $0xfffffffc,%eax
   37a7d:	83 e8 04             	sub    $0x4,%eax
   37a80:	83 f8 24             	cmp    $0x24,%eax
   37a83:	77 63                	ja     37ae8 <_calloc_r+0x98>
   37a85:	83 f8 13             	cmp    $0x13,%eax
   37a88:	89 da                	mov    %ebx,%edx
   37a8a:	77 1c                	ja     37aa8 <_calloc_r+0x58>
   37a8c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
   37a92:	89 d8                	mov    %ebx,%eax
   37a94:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
   37a9b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
   37aa2:	83 c4 14             	add    $0x14,%esp
   37aa5:	5b                   	pop    %ebx
   37aa6:	5d                   	pop    %ebp
   37aa7:	c3                   	ret    
   37aa8:	83 f8 1b             	cmp    $0x1b,%eax
   37aab:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
   37ab1:	8d 53 08             	lea    0x8(%ebx),%edx
   37ab4:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
   37abb:	76 cf                	jbe    37a8c <_calloc_r+0x3c>
   37abd:	83 f8 24             	cmp    $0x24,%eax
   37ac0:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
   37ac7:	8d 53 10             	lea    0x10(%ebx),%edx
   37aca:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
   37ad1:	75 b9                	jne    37a8c <_calloc_r+0x3c>
   37ad3:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
   37ada:	8d 53 18             	lea    0x18(%ebx),%edx
   37add:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
   37ae4:	eb a6                	jmp    37a8c <_calloc_r+0x3c>
   37ae6:	66 90                	xchg   %ax,%ax
   37ae8:	89 1c 24             	mov    %ebx,(%esp)
   37aeb:	89 44 24 08          	mov    %eax,0x8(%esp)
   37aef:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   37af6:	00 
   37af7:	e8 50 a2 ff ff       	call   31d4c <memset>
   37afc:	83 c4 14             	add    $0x14,%esp
   37aff:	89 d8                	mov    %ebx,%eax
   37b01:	5b                   	pop    %ebx
   37b02:	5d                   	pop    %ebp
   37b03:	c3                   	ret    
   37b04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37b08:	31 c0                	xor    %eax,%eax
   37b0a:	eb 96                	jmp    37aa2 <_calloc_r+0x52>
   37b0c:	66 90                	xchg   %ax,%ax
   37b0e:	66 90                	xchg   %ax,%ax

00037b10 <_malloc_trim_r>:
   37b10:	55                   	push   %ebp
   37b11:	89 e5                	mov    %esp,%ebp
   37b13:	57                   	push   %edi
   37b14:	56                   	push   %esi
   37b15:	53                   	push   %ebx
   37b16:	83 ec 1c             	sub    $0x1c,%esp
   37b19:	8b 75 08             	mov    0x8(%ebp),%esi
   37b1c:	89 34 24             	mov    %esi,(%esp)
   37b1f:	e8 7c df ff ff       	call   35aa0 <__malloc_lock>
   37b24:	a1 48 d5 03 00       	mov    0x3d548,%eax
   37b29:	8b 58 04             	mov    0x4(%eax),%ebx
   37b2c:	83 e3 fc             	and    $0xfffffffc,%ebx
   37b2f:	89 d8                	mov    %ebx,%eax
   37b31:	2b 45 0c             	sub    0xc(%ebp),%eax
   37b34:	05 ef 0f 00 00       	add    $0xfef,%eax
   37b39:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   37b3e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
   37b44:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
   37b4a:	7e 1c                	jle    37b68 <_malloc_trim_r+0x58>
   37b4c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   37b53:	00 
   37b54:	89 34 24             	mov    %esi,(%esp)
   37b57:	e8 44 ed ff ff       	call   368a0 <_sbrk_r>
   37b5c:	8b 15 48 d5 03 00    	mov    0x3d548,%edx
   37b62:	01 da                	add    %ebx,%edx
   37b64:	39 d0                	cmp    %edx,%eax
   37b66:	74 18                	je     37b80 <_malloc_trim_r+0x70>
   37b68:	89 34 24             	mov    %esi,(%esp)
   37b6b:	e8 40 df ff ff       	call   35ab0 <__malloc_unlock>
   37b70:	83 c4 1c             	add    $0x1c,%esp
   37b73:	31 c0                	xor    %eax,%eax
   37b75:	5b                   	pop    %ebx
   37b76:	5e                   	pop    %esi
   37b77:	5f                   	pop    %edi
   37b78:	5d                   	pop    %ebp
   37b79:	c3                   	ret    
   37b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37b80:	89 f8                	mov    %edi,%eax
   37b82:	f7 d8                	neg    %eax
   37b84:	89 44 24 04          	mov    %eax,0x4(%esp)
   37b88:	89 34 24             	mov    %esi,(%esp)
   37b8b:	e8 10 ed ff ff       	call   368a0 <_sbrk_r>
   37b90:	83 f8 ff             	cmp    $0xffffffff,%eax
   37b93:	74 2b                	je     37bc0 <_malloc_trim_r+0xb0>
   37b95:	a1 48 d5 03 00       	mov    0x3d548,%eax
   37b9a:	29 fb                	sub    %edi,%ebx
   37b9c:	83 cb 01             	or     $0x1,%ebx
   37b9f:	29 3d 20 00 07 00    	sub    %edi,0x70020
   37ba5:	89 58 04             	mov    %ebx,0x4(%eax)
   37ba8:	89 34 24             	mov    %esi,(%esp)
   37bab:	e8 00 df ff ff       	call   35ab0 <__malloc_unlock>
   37bb0:	83 c4 1c             	add    $0x1c,%esp
   37bb3:	b8 01 00 00 00       	mov    $0x1,%eax
   37bb8:	5b                   	pop    %ebx
   37bb9:	5e                   	pop    %esi
   37bba:	5f                   	pop    %edi
   37bbb:	5d                   	pop    %ebp
   37bbc:	c3                   	ret    
   37bbd:	8d 76 00             	lea    0x0(%esi),%esi
   37bc0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   37bc7:	00 
   37bc8:	89 34 24             	mov    %esi,(%esp)
   37bcb:	e8 d0 ec ff ff       	call   368a0 <_sbrk_r>
   37bd0:	8b 15 48 d5 03 00    	mov    0x3d548,%edx
   37bd6:	89 c1                	mov    %eax,%ecx
   37bd8:	29 d1                	sub    %edx,%ecx
   37bda:	83 f9 0f             	cmp    $0xf,%ecx
   37bdd:	7e 89                	jle    37b68 <_malloc_trim_r+0x58>
   37bdf:	2b 05 20 d5 03 00    	sub    0x3d520,%eax
   37be5:	83 c9 01             	or     $0x1,%ecx
   37be8:	89 4a 04             	mov    %ecx,0x4(%edx)
   37beb:	a3 20 00 07 00       	mov    %eax,0x70020
   37bf0:	e9 73 ff ff ff       	jmp    37b68 <_malloc_trim_r+0x58>
   37bf5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37bf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00037c00 <_free_r>:
   37c00:	55                   	push   %ebp
   37c01:	89 e5                	mov    %esp,%ebp
   37c03:	57                   	push   %edi
   37c04:	56                   	push   %esi
   37c05:	53                   	push   %ebx
   37c06:	83 ec 1c             	sub    $0x1c,%esp
   37c09:	8b 75 0c             	mov    0xc(%ebp),%esi
   37c0c:	8b 45 08             	mov    0x8(%ebp),%eax
   37c0f:	85 f6                	test   %esi,%esi
   37c11:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   37c14:	0f 84 fe 00 00 00    	je     37d18 <_free_r+0x118>
   37c1a:	89 04 24             	mov    %eax,(%esp)
   37c1d:	e8 7e de ff ff       	call   35aa0 <__malloc_lock>
   37c22:	8b 7e fc             	mov    -0x4(%esi),%edi
   37c25:	8d 56 f8             	lea    -0x8(%esi),%edx
   37c28:	89 f8                	mov    %edi,%eax
   37c2a:	83 e0 fe             	and    $0xfffffffe,%eax
   37c2d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
   37c30:	8b 59 04             	mov    0x4(%ecx),%ebx
   37c33:	83 e3 fc             	and    $0xfffffffc,%ebx
   37c36:	39 0d 48 d5 03 00    	cmp    %ecx,0x3d548
   37c3c:	0f 84 0e 01 00 00    	je     37d50 <_free_r+0x150>
   37c42:	83 e7 01             	and    $0x1,%edi
   37c45:	89 59 04             	mov    %ebx,0x4(%ecx)
   37c48:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
   37c4f:	75 1f                	jne    37c70 <_free_r+0x70>
   37c51:	8b 76 f8             	mov    -0x8(%esi),%esi
   37c54:	29 f2                	sub    %esi,%edx
   37c56:	01 f0                	add    %esi,%eax
   37c58:	8b 72 08             	mov    0x8(%edx),%esi
   37c5b:	81 fe 48 d5 03 00    	cmp    $0x3d548,%esi
   37c61:	0f 84 39 01 00 00    	je     37da0 <_free_r+0x1a0>
   37c67:	8b 7a 0c             	mov    0xc(%edx),%edi
   37c6a:	89 7e 0c             	mov    %edi,0xc(%esi)
   37c6d:	89 77 08             	mov    %esi,0x8(%edi)
   37c70:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
   37c75:	75 21                	jne    37c98 <_free_r+0x98>
   37c77:	8b 75 e0             	mov    -0x20(%ebp),%esi
   37c7a:	01 d8                	add    %ebx,%eax
   37c7c:	8b 59 08             	mov    0x8(%ecx),%ebx
   37c7f:	85 f6                	test   %esi,%esi
   37c81:	75 0c                	jne    37c8f <_free_r+0x8f>
   37c83:	81 fb 48 d5 03 00    	cmp    $0x3d548,%ebx
   37c89:	0f 84 21 01 00 00    	je     37db0 <_free_r+0x1b0>
   37c8f:	8b 49 0c             	mov    0xc(%ecx),%ecx
   37c92:	89 4b 0c             	mov    %ecx,0xc(%ebx)
   37c95:	89 59 08             	mov    %ebx,0x8(%ecx)
   37c98:	89 c1                	mov    %eax,%ecx
   37c9a:	83 c9 01             	or     $0x1,%ecx
   37c9d:	89 4a 04             	mov    %ecx,0x4(%edx)
   37ca0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   37ca3:	89 04 02             	mov    %eax,(%edx,%eax,1)
   37ca6:	85 c9                	test   %ecx,%ecx
   37ca8:	75 56                	jne    37d00 <_free_r+0x100>
   37caa:	3d ff 01 00 00       	cmp    $0x1ff,%eax
   37caf:	76 6f                	jbe    37d20 <_free_r+0x120>
   37cb1:	89 c1                	mov    %eax,%ecx
   37cb3:	c1 e9 09             	shr    $0x9,%ecx
   37cb6:	83 f9 04             	cmp    $0x4,%ecx
   37cb9:	0f 87 21 01 00 00    	ja     37de0 <_free_r+0x1e0>
   37cbf:	89 c1                	mov    %eax,%ecx
   37cc1:	c1 e9 06             	shr    $0x6,%ecx
   37cc4:	83 c1 38             	add    $0x38,%ecx
   37cc7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37cca:	8d 34 9d 40 d5 03 00 	lea    0x3d540(,%ebx,4),%esi
   37cd1:	8b 5e 08             	mov    0x8(%esi),%ebx
   37cd4:	39 f3                	cmp    %esi,%ebx
   37cd6:	0f 84 14 01 00 00    	je     37df0 <_free_r+0x1f0>
   37cdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37ce0:	8b 4b 04             	mov    0x4(%ebx),%ecx
   37ce3:	83 e1 fc             	and    $0xfffffffc,%ecx
   37ce6:	39 c8                	cmp    %ecx,%eax
   37ce8:	73 07                	jae    37cf1 <_free_r+0xf1>
   37cea:	8b 5b 08             	mov    0x8(%ebx),%ebx
   37ced:	39 de                	cmp    %ebx,%esi
   37cef:	75 ef                	jne    37ce0 <_free_r+0xe0>
   37cf1:	8b 43 0c             	mov    0xc(%ebx),%eax
   37cf4:	89 42 0c             	mov    %eax,0xc(%edx)
   37cf7:	89 5a 08             	mov    %ebx,0x8(%edx)
   37cfa:	89 50 08             	mov    %edx,0x8(%eax)
   37cfd:	89 53 0c             	mov    %edx,0xc(%ebx)
   37d00:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   37d03:	89 45 08             	mov    %eax,0x8(%ebp)
   37d06:	83 c4 1c             	add    $0x1c,%esp
   37d09:	5b                   	pop    %ebx
   37d0a:	5e                   	pop    %esi
   37d0b:	5f                   	pop    %edi
   37d0c:	5d                   	pop    %ebp
   37d0d:	e9 9e dd ff ff       	jmp    35ab0 <__malloc_unlock>
   37d12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37d18:	83 c4 1c             	add    $0x1c,%esp
   37d1b:	5b                   	pop    %ebx
   37d1c:	5e                   	pop    %esi
   37d1d:	5f                   	pop    %edi
   37d1e:	5d                   	pop    %ebp
   37d1f:	c3                   	ret    
   37d20:	c1 e8 03             	shr    $0x3,%eax
   37d23:	bb 01 00 00 00       	mov    $0x1,%ebx
   37d28:	89 c1                	mov    %eax,%ecx
   37d2a:	c1 f9 02             	sar    $0x2,%ecx
   37d2d:	8d 04 c5 40 d5 03 00 	lea    0x3d540(,%eax,8),%eax
   37d34:	d3 e3                	shl    %cl,%ebx
   37d36:	8b 48 08             	mov    0x8(%eax),%ecx
   37d39:	09 1d 44 d5 03 00    	or     %ebx,0x3d544
   37d3f:	89 42 0c             	mov    %eax,0xc(%edx)
   37d42:	89 4a 08             	mov    %ecx,0x8(%edx)
   37d45:	89 50 08             	mov    %edx,0x8(%eax)
   37d48:	89 51 0c             	mov    %edx,0xc(%ecx)
   37d4b:	eb b3                	jmp    37d00 <_free_r+0x100>
   37d4d:	8d 76 00             	lea    0x0(%esi),%esi
   37d50:	01 d8                	add    %ebx,%eax
   37d52:	83 e7 01             	and    $0x1,%edi
   37d55:	75 13                	jne    37d6a <_free_r+0x16a>
   37d57:	8b 4e f8             	mov    -0x8(%esi),%ecx
   37d5a:	29 ca                	sub    %ecx,%edx
   37d5c:	01 c8                	add    %ecx,%eax
   37d5e:	8b 5a 08             	mov    0x8(%edx),%ebx
   37d61:	8b 4a 0c             	mov    0xc(%edx),%ecx
   37d64:	89 4b 0c             	mov    %ecx,0xc(%ebx)
   37d67:	89 59 08             	mov    %ebx,0x8(%ecx)
   37d6a:	89 c1                	mov    %eax,%ecx
   37d6c:	83 c9 01             	or     $0x1,%ecx
   37d6f:	3b 05 24 d5 03 00    	cmp    0x3d524,%eax
   37d75:	89 4a 04             	mov    %ecx,0x4(%edx)
   37d78:	89 15 48 d5 03 00    	mov    %edx,0x3d548
   37d7e:	72 80                	jb     37d00 <_free_r+0x100>
   37d80:	a1 50 00 07 00       	mov    0x70050,%eax
   37d85:	89 44 24 04          	mov    %eax,0x4(%esp)
   37d89:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   37d8c:	89 04 24             	mov    %eax,(%esp)
   37d8f:	e8 7c fd ff ff       	call   37b10 <_malloc_trim_r>
   37d94:	e9 67 ff ff ff       	jmp    37d00 <_free_r+0x100>
   37d99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37da0:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
   37da7:	e9 c4 fe ff ff       	jmp    37c70 <_free_r+0x70>
   37dac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37db0:	89 c1                	mov    %eax,%ecx
   37db2:	83 c9 01             	or     $0x1,%ecx
   37db5:	89 15 54 d5 03 00    	mov    %edx,0x3d554
   37dbb:	89 15 50 d5 03 00    	mov    %edx,0x3d550
   37dc1:	c7 42 0c 48 d5 03 00 	movl   $0x3d548,0xc(%edx)
   37dc8:	c7 42 08 48 d5 03 00 	movl   $0x3d548,0x8(%edx)
   37dcf:	89 4a 04             	mov    %ecx,0x4(%edx)
   37dd2:	89 04 02             	mov    %eax,(%edx,%eax,1)
   37dd5:	e9 26 ff ff ff       	jmp    37d00 <_free_r+0x100>
   37dda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37de0:	83 f9 14             	cmp    $0x14,%ecx
   37de3:	77 23                	ja     37e08 <_free_r+0x208>
   37de5:	83 c1 5b             	add    $0x5b,%ecx
   37de8:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37deb:	e9 da fe ff ff       	jmp    37cca <_free_r+0xca>
   37df0:	c1 f9 02             	sar    $0x2,%ecx
   37df3:	b8 01 00 00 00       	mov    $0x1,%eax
   37df8:	d3 e0                	shl    %cl,%eax
   37dfa:	09 05 44 d5 03 00    	or     %eax,0x3d544
   37e00:	89 d8                	mov    %ebx,%eax
   37e02:	e9 ed fe ff ff       	jmp    37cf4 <_free_r+0xf4>
   37e07:	90                   	nop
   37e08:	83 f9 54             	cmp    $0x54,%ecx
   37e0b:	77 10                	ja     37e1d <_free_r+0x21d>
   37e0d:	89 c1                	mov    %eax,%ecx
   37e0f:	c1 e9 0c             	shr    $0xc,%ecx
   37e12:	83 c1 6e             	add    $0x6e,%ecx
   37e15:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37e18:	e9 ad fe ff ff       	jmp    37cca <_free_r+0xca>
   37e1d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
   37e23:	77 10                	ja     37e35 <_free_r+0x235>
   37e25:	89 c1                	mov    %eax,%ecx
   37e27:	c1 e9 0f             	shr    $0xf,%ecx
   37e2a:	83 c1 77             	add    $0x77,%ecx
   37e2d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37e30:	e9 95 fe ff ff       	jmp    37cca <_free_r+0xca>
   37e35:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
   37e3b:	77 10                	ja     37e4d <_free_r+0x24d>
   37e3d:	89 c1                	mov    %eax,%ecx
   37e3f:	c1 e9 12             	shr    $0x12,%ecx
   37e42:	83 c1 7c             	add    $0x7c,%ecx
   37e45:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37e48:	e9 7d fe ff ff       	jmp    37cca <_free_r+0xca>
   37e4d:	bb fc 00 00 00       	mov    $0xfc,%ebx
   37e52:	b9 7e 00 00 00       	mov    $0x7e,%ecx
   37e57:	e9 6e fe ff ff       	jmp    37cca <_free_r+0xca>
   37e5c:	66 90                	xchg   %ax,%ax
   37e5e:	66 90                	xchg   %ax,%ax

00037e60 <memmove>:
   37e60:	55                   	push   %ebp
   37e61:	89 e5                	mov    %esp,%ebp
   37e63:	56                   	push   %esi
   37e64:	57                   	push   %edi
   37e65:	53                   	push   %ebx
   37e66:	8b 7d 08             	mov    0x8(%ebp),%edi
   37e69:	8b 4d 10             	mov    0x10(%ebp),%ecx
   37e6c:	8b 75 0c             	mov    0xc(%ebp),%esi
   37e6f:	fc                   	cld    
   37e70:	39 fe                	cmp    %edi,%esi
   37e72:	73 43                	jae    37eb7 <memmove+0x57>
   37e74:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
   37e78:	39 df                	cmp    %ebx,%edi
   37e7a:	77 3b                	ja     37eb7 <memmove+0x57>
   37e7c:	01 ce                	add    %ecx,%esi
   37e7e:	01 cf                	add    %ecx,%edi
   37e80:	fd                   	std    
   37e81:	83 f9 08             	cmp    $0x8,%ecx
   37e84:	76 2b                	jbe    37eb1 <memmove+0x51>
   37e86:	89 fa                	mov    %edi,%edx
   37e88:	89 cb                	mov    %ecx,%ebx
   37e8a:	83 e2 03             	and    $0x3,%edx
   37e8d:	74 0c                	je     37e9b <memmove+0x3b>
   37e8f:	89 d1                	mov    %edx,%ecx
   37e91:	4e                   	dec    %esi
   37e92:	4f                   	dec    %edi
   37e93:	29 cb                	sub    %ecx,%ebx
   37e95:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37e97:	89 d9                	mov    %ebx,%ecx
   37e99:	46                   	inc    %esi
   37e9a:	47                   	inc    %edi
   37e9b:	c1 e9 02             	shr    $0x2,%ecx
   37e9e:	83 ee 04             	sub    $0x4,%esi
   37ea1:	83 ef 04             	sub    $0x4,%edi
   37ea4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   37ea6:	83 c6 04             	add    $0x4,%esi
   37ea9:	83 c7 04             	add    $0x4,%edi
   37eac:	89 d9                	mov    %ebx,%ecx
   37eae:	83 e1 03             	and    $0x3,%ecx
   37eb1:	4e                   	dec    %esi
   37eb2:	4f                   	dec    %edi
   37eb3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37eb5:	eb 2a                	jmp    37ee1 <memmove+0x81>
   37eb7:	83 f9 08             	cmp    $0x8,%ecx
   37eba:	76 23                	jbe    37edf <memmove+0x7f>
   37ebc:	89 fa                	mov    %edi,%edx
   37ebe:	89 cb                	mov    %ecx,%ebx
   37ec0:	83 e2 03             	and    $0x3,%edx
   37ec3:	74 10                	je     37ed5 <memmove+0x75>
   37ec5:	b9 04 00 00 00       	mov    $0x4,%ecx
   37eca:	29 d1                	sub    %edx,%ecx
   37ecc:	83 e1 03             	and    $0x3,%ecx
   37ecf:	29 cb                	sub    %ecx,%ebx
   37ed1:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37ed3:	89 d9                	mov    %ebx,%ecx
   37ed5:	c1 e9 02             	shr    $0x2,%ecx
   37ed8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   37eda:	89 d9                	mov    %ebx,%ecx
   37edc:	83 e1 03             	and    $0x3,%ecx
   37edf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37ee1:	8b 45 08             	mov    0x8(%ebp),%eax
   37ee4:	fc                   	cld    
   37ee5:	8d 65 f4             	lea    -0xc(%ebp),%esp
   37ee8:	5b                   	pop    %ebx
   37ee9:	5f                   	pop    %edi
   37eea:	5e                   	pop    %esi
   37eeb:	c9                   	leave  
   37eec:	c3                   	ret    
   37eed:	66 90                	xchg   %ax,%ax
   37eef:	90                   	nop

00037ef0 <_realloc_r>:
   37ef0:	55                   	push   %ebp
   37ef1:	89 e5                	mov    %esp,%ebp
   37ef3:	57                   	push   %edi
   37ef4:	56                   	push   %esi
   37ef5:	53                   	push   %ebx
   37ef6:	83 ec 3c             	sub    $0x3c,%esp
   37ef9:	8b 45 08             	mov    0x8(%ebp),%eax
   37efc:	8b 7d 0c             	mov    0xc(%ebp),%edi
   37eff:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   37f02:	8b 45 10             	mov    0x10(%ebp),%eax
   37f05:	85 ff                	test   %edi,%edi
   37f07:	89 45 e0             	mov    %eax,-0x20(%ebp)
   37f0a:	0f 84 50 02 00 00    	je     38160 <_realloc_r+0x270>
   37f10:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   37f13:	8d 77 f8             	lea    -0x8(%edi),%esi
   37f16:	89 04 24             	mov    %eax,(%esp)
   37f19:	e8 82 db ff ff       	call   35aa0 <__malloc_lock>
   37f1e:	8b 47 fc             	mov    -0x4(%edi),%eax
   37f21:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   37f24:	89 c3                	mov    %eax,%ebx
   37f26:	8d 51 0b             	lea    0xb(%ecx),%edx
   37f29:	83 e3 fc             	and    $0xfffffffc,%ebx
   37f2c:	83 fa 16             	cmp    $0x16,%edx
   37f2f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   37f32:	0f 87 00 01 00 00    	ja     38038 <_realloc_r+0x148>
   37f38:	31 d2                	xor    %edx,%edx
   37f3a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
   37f41:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
   37f48:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   37f4b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
   37f4e:	0f 82 1c 02 00 00    	jb     38170 <_realloc_r+0x280>
   37f54:	84 d2                	test   %dl,%dl
   37f56:	0f 85 14 02 00 00    	jne    38170 <_realloc_r+0x280>
   37f5c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
   37f5f:	0f 8d eb 00 00 00    	jge    38050 <_realloc_r+0x160>
   37f65:	8b 0d 48 d5 03 00    	mov    0x3d548,%ecx
   37f6b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
   37f6e:	39 d1                	cmp    %edx,%ecx
   37f70:	89 4d cc             	mov    %ecx,-0x34(%ebp)
   37f73:	0f 84 6f 02 00 00    	je     381e8 <_realloc_r+0x2f8>
   37f79:	8b 4a 04             	mov    0x4(%edx),%ecx
   37f7c:	89 c8                	mov    %ecx,%eax
   37f7e:	83 e0 fe             	and    $0xfffffffe,%eax
   37f81:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
   37f86:	0f 84 f4 00 00 00    	je     38080 <_realloc_r+0x190>
   37f8c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
   37f93:	31 d2                	xor    %edx,%edx
   37f95:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
   37f99:	0f 85 39 01 00 00    	jne    380d8 <_realloc_r+0x1e8>
   37f9f:	89 f1                	mov    %esi,%ecx
   37fa1:	2b 4f f8             	sub    -0x8(%edi),%ecx
   37fa4:	8b 41 04             	mov    0x4(%ecx),%eax
   37fa7:	83 e0 fc             	and    $0xfffffffc,%eax
   37faa:	85 d2                	test   %edx,%edx
   37fac:	0f 84 f6 02 00 00    	je     382a8 <_realloc_r+0x3b8>
   37fb2:	3b 55 cc             	cmp    -0x34(%ebp),%edx
   37fb5:	0f 84 f5 02 00 00    	je     382b0 <_realloc_r+0x3c0>
   37fbb:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   37fbe:	8b 55 d0             	mov    -0x30(%ebp),%edx
   37fc1:	01 d8                	add    %ebx,%eax
   37fc3:	01 c2                	add    %eax,%edx
   37fc5:	3b 55 d8             	cmp    -0x28(%ebp),%edx
   37fc8:	89 55 d0             	mov    %edx,-0x30(%ebp)
   37fcb:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   37fce:	0f 8c ac 01 00 00    	jl     38180 <_realloc_r+0x290>
   37fd4:	8b 42 0c             	mov    0xc(%edx),%eax
   37fd7:	83 eb 04             	sub    $0x4,%ebx
   37fda:	8b 52 08             	mov    0x8(%edx),%edx
   37fdd:	83 fb 24             	cmp    $0x24,%ebx
   37fe0:	8d 71 08             	lea    0x8(%ecx),%esi
   37fe3:	89 42 0c             	mov    %eax,0xc(%edx)
   37fe6:	89 50 08             	mov    %edx,0x8(%eax)
   37fe9:	8b 41 0c             	mov    0xc(%ecx),%eax
   37fec:	8b 51 08             	mov    0x8(%ecx),%edx
   37fef:	89 42 0c             	mov    %eax,0xc(%edx)
   37ff2:	89 50 08             	mov    %edx,0x8(%eax)
   37ff5:	0f 87 85 03 00 00    	ja     38380 <_realloc_r+0x490>
   37ffb:	83 fb 13             	cmp    $0x13,%ebx
   37ffe:	89 f0                	mov    %esi,%eax
   38000:	76 1a                	jbe    3801c <_realloc_r+0x12c>
   38002:	8b 07                	mov    (%edi),%eax
   38004:	83 fb 1b             	cmp    $0x1b,%ebx
   38007:	89 41 08             	mov    %eax,0x8(%ecx)
   3800a:	8b 47 04             	mov    0x4(%edi),%eax
   3800d:	89 41 0c             	mov    %eax,0xc(%ecx)
   38010:	0f 87 8f 03 00 00    	ja     383a5 <_realloc_r+0x4b5>
   38016:	8d 41 10             	lea    0x10(%ecx),%eax
   38019:	83 c7 08             	add    $0x8,%edi
   3801c:	8b 17                	mov    (%edi),%edx
   3801e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
   38021:	89 10                	mov    %edx,(%eax)
   38023:	8b 57 04             	mov    0x4(%edi),%edx
   38026:	89 50 04             	mov    %edx,0x4(%eax)
   38029:	8b 57 08             	mov    0x8(%edi),%edx
   3802c:	89 f7                	mov    %esi,%edi
   3802e:	89 ce                	mov    %ecx,%esi
   38030:	89 50 08             	mov    %edx,0x8(%eax)
   38033:	8b 41 04             	mov    0x4(%ecx),%eax
   38036:	eb 1b                	jmp    38053 <_realloc_r+0x163>
   38038:	83 e2 f8             	and    $0xfffffff8,%edx
   3803b:	89 55 dc             	mov    %edx,-0x24(%ebp)
   3803e:	89 55 d8             	mov    %edx,-0x28(%ebp)
   38041:	c1 ea 1f             	shr    $0x1f,%edx
   38044:	e9 ff fe ff ff       	jmp    37f48 <_realloc_r+0x58>
   38049:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   38050:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   38053:	89 da                	mov    %ebx,%edx
   38055:	2b 55 dc             	sub    -0x24(%ebp),%edx
   38058:	83 fa 0f             	cmp    $0xf,%edx
   3805b:	77 4b                	ja     380a8 <_realloc_r+0x1b8>
   3805d:	83 e0 01             	and    $0x1,%eax
   38060:	09 d8                	or     %ebx,%eax
   38062:	89 46 04             	mov    %eax,0x4(%esi)
   38065:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
   3806a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3806d:	89 04 24             	mov    %eax,(%esp)
   38070:	e8 3b da ff ff       	call   35ab0 <__malloc_unlock>
   38075:	89 f8                	mov    %edi,%eax
   38077:	83 c4 3c             	add    $0x3c,%esp
   3807a:	5b                   	pop    %ebx
   3807b:	5e                   	pop    %esi
   3807c:	5f                   	pop    %edi
   3807d:	5d                   	pop    %ebp
   3807e:	c3                   	ret    
   3807f:	90                   	nop
   38080:	83 e1 fc             	and    $0xfffffffc,%ecx
   38083:	89 4d d0             	mov    %ecx,-0x30(%ebp)
   38086:	01 d9                	add    %ebx,%ecx
   38088:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
   3808b:	0f 8c 04 ff ff ff    	jl     37f95 <_realloc_r+0xa5>
   38091:	8b 5a 0c             	mov    0xc(%edx),%ebx
   38094:	8b 52 08             	mov    0x8(%edx),%edx
   38097:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   3809a:	89 5a 0c             	mov    %ebx,0xc(%edx)
   3809d:	89 53 08             	mov    %edx,0x8(%ebx)
   380a0:	89 cb                	mov    %ecx,%ebx
   380a2:	eb af                	jmp    38053 <_realloc_r+0x163>
   380a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   380a8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   380ab:	83 e0 01             	and    $0x1,%eax
   380ae:	09 d8                	or     %ebx,%eax
   380b0:	89 46 04             	mov    %eax,0x4(%esi)
   380b3:	89 d0                	mov    %edx,%eax
   380b5:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
   380b8:	83 c8 01             	or     $0x1,%eax
   380bb:	89 41 04             	mov    %eax,0x4(%ecx)
   380be:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   380c1:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
   380c6:	83 c1 08             	add    $0x8,%ecx
   380c9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   380cd:	89 04 24             	mov    %eax,(%esp)
   380d0:	e8 2b fb ff ff       	call   37c00 <_free_r>
   380d5:	eb 93                	jmp    3806a <_realloc_r+0x17a>
   380d7:	90                   	nop
   380d8:	8b 45 e0             	mov    -0x20(%ebp),%eax
   380db:	89 44 24 04          	mov    %eax,0x4(%esp)
   380df:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   380e2:	89 04 24             	mov    %eax,(%esp)
   380e5:	e8 d6 d1 ff ff       	call   352c0 <_malloc_r>
   380ea:	85 c0                	test   %eax,%eax
   380ec:	89 c1                	mov    %eax,%ecx
   380ee:	0f 84 65 03 00 00    	je     38459 <_realloc_r+0x569>
   380f4:	8b 47 fc             	mov    -0x4(%edi),%eax
   380f7:	8d 51 f8             	lea    -0x8(%ecx),%edx
   380fa:	89 55 e0             	mov    %edx,-0x20(%ebp)
   380fd:	89 c2                	mov    %eax,%edx
   380ff:	83 e2 fe             	and    $0xfffffffe,%edx
   38102:	01 f2                	add    %esi,%edx
   38104:	39 55 e0             	cmp    %edx,-0x20(%ebp)
   38107:	0f 84 63 02 00 00    	je     38370 <_realloc_r+0x480>
   3810d:	83 eb 04             	sub    $0x4,%ebx
   38110:	83 fb 24             	cmp    $0x24,%ebx
   38113:	0f 87 6f 01 00 00    	ja     38288 <_realloc_r+0x398>
   38119:	83 fb 13             	cmp    $0x13,%ebx
   3811c:	0f 87 ee 00 00 00    	ja     38210 <_realloc_r+0x320>
   38122:	89 c8                	mov    %ecx,%eax
   38124:	89 fa                	mov    %edi,%edx
   38126:	8b 1a                	mov    (%edx),%ebx
   38128:	89 18                	mov    %ebx,(%eax)
   3812a:	8b 5a 04             	mov    0x4(%edx),%ebx
   3812d:	89 58 04             	mov    %ebx,0x4(%eax)
   38130:	8b 52 08             	mov    0x8(%edx),%edx
   38133:	89 50 08             	mov    %edx,0x8(%eax)
   38136:	8b 75 e4             	mov    -0x1c(%ebp),%esi
   38139:	89 7c 24 04          	mov    %edi,0x4(%esp)
   3813d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   38140:	89 34 24             	mov    %esi,(%esp)
   38143:	e8 b8 fa ff ff       	call   37c00 <_free_r>
   38148:	89 34 24             	mov    %esi,(%esp)
   3814b:	e8 60 d9 ff ff       	call   35ab0 <__malloc_unlock>
   38150:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   38153:	83 c4 3c             	add    $0x3c,%esp
   38156:	5b                   	pop    %ebx
   38157:	5e                   	pop    %esi
   38158:	5f                   	pop    %edi
   38159:	89 c8                	mov    %ecx,%eax
   3815b:	5d                   	pop    %ebp
   3815c:	c3                   	ret    
   3815d:	8d 76 00             	lea    0x0(%esi),%esi
   38160:	89 45 0c             	mov    %eax,0xc(%ebp)
   38163:	83 c4 3c             	add    $0x3c,%esp
   38166:	5b                   	pop    %ebx
   38167:	5e                   	pop    %esi
   38168:	5f                   	pop    %edi
   38169:	5d                   	pop    %ebp
   3816a:	e9 51 d1 ff ff       	jmp    352c0 <_malloc_r>
   3816f:	90                   	nop
   38170:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   38173:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   38179:	31 c0                	xor    %eax,%eax
   3817b:	e9 f7 fe ff ff       	jmp    38077 <_realloc_r+0x187>
   38180:	89 c2                	mov    %eax,%edx
   38182:	3b 55 d8             	cmp    -0x28(%ebp),%edx
   38185:	0f 8c 4d ff ff ff    	jl     380d8 <_realloc_r+0x1e8>
   3818b:	8b 71 08             	mov    0x8(%ecx),%esi
   3818e:	83 eb 04             	sub    $0x4,%ebx
   38191:	8b 41 0c             	mov    0xc(%ecx),%eax
   38194:	83 fb 24             	cmp    $0x24,%ebx
   38197:	89 46 0c             	mov    %eax,0xc(%esi)
   3819a:	89 70 08             	mov    %esi,0x8(%eax)
   3819d:	8d 71 08             	lea    0x8(%ecx),%esi
   381a0:	0f 87 88 00 00 00    	ja     3822e <_realloc_r+0x33e>
   381a6:	83 fb 13             	cmp    $0x13,%ebx
   381a9:	89 f0                	mov    %esi,%eax
   381ab:	76 1a                	jbe    381c7 <_realloc_r+0x2d7>
   381ad:	8b 07                	mov    (%edi),%eax
   381af:	83 fb 1b             	cmp    $0x1b,%ebx
   381b2:	89 41 08             	mov    %eax,0x8(%ecx)
   381b5:	8b 47 04             	mov    0x4(%edi),%eax
   381b8:	89 41 0c             	mov    %eax,0xc(%ecx)
   381bb:	0f 87 17 02 00 00    	ja     383d8 <_realloc_r+0x4e8>
   381c1:	8d 41 10             	lea    0x10(%ecx),%eax
   381c4:	83 c7 08             	add    $0x8,%edi
   381c7:	8b 1f                	mov    (%edi),%ebx
   381c9:	89 18                	mov    %ebx,(%eax)
   381cb:	8b 5f 04             	mov    0x4(%edi),%ebx
   381ce:	89 58 04             	mov    %ebx,0x4(%eax)
   381d1:	8b 5f 08             	mov    0x8(%edi),%ebx
   381d4:	89 f7                	mov    %esi,%edi
   381d6:	89 ce                	mov    %ecx,%esi
   381d8:	89 58 08             	mov    %ebx,0x8(%eax)
   381db:	89 d3                	mov    %edx,%ebx
   381dd:	8b 41 04             	mov    0x4(%ecx),%eax
   381e0:	e9 6e fe ff ff       	jmp    38053 <_realloc_r+0x163>
   381e5:	8d 76 00             	lea    0x0(%esi),%esi
   381e8:	8b 45 cc             	mov    -0x34(%ebp),%eax
   381eb:	8b 55 dc             	mov    -0x24(%ebp),%edx
   381ee:	8b 48 04             	mov    0x4(%eax),%ecx
   381f1:	83 c2 10             	add    $0x10,%edx
   381f4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
   381f7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
   381fb:	8b 4d d0             	mov    -0x30(%ebp),%ecx
   381fe:	01 d9                	add    %ebx,%ecx
   38200:	39 d1                	cmp    %edx,%ecx
   38202:	7d 54                	jge    38258 <_realloc_r+0x368>
   38204:	89 c2                	mov    %eax,%edx
   38206:	e9 8a fd ff ff       	jmp    37f95 <_realloc_r+0xa5>
   3820b:	90                   	nop
   3820c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   38210:	8b 07                	mov    (%edi),%eax
   38212:	83 fb 1b             	cmp    $0x1b,%ebx
   38215:	89 01                	mov    %eax,(%ecx)
   38217:	8b 47 04             	mov    0x4(%edi),%eax
   3821a:	89 41 04             	mov    %eax,0x4(%ecx)
   3821d:	0f 87 2d 01 00 00    	ja     38350 <_realloc_r+0x460>
   38223:	8d 41 08             	lea    0x8(%ecx),%eax
   38226:	8d 57 08             	lea    0x8(%edi),%edx
   38229:	e9 f8 fe ff ff       	jmp    38126 <_realloc_r+0x236>
   3822e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   38232:	89 7c 24 04          	mov    %edi,0x4(%esp)
   38236:	89 f7                	mov    %esi,%edi
   38238:	89 34 24             	mov    %esi,(%esp)
   3823b:	89 55 d8             	mov    %edx,-0x28(%ebp)
   3823e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   38241:	e8 1a fc ff ff       	call   37e60 <memmove>
   38246:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   38249:	8b 55 d8             	mov    -0x28(%ebp),%edx
   3824c:	8b 41 04             	mov    0x4(%ecx),%eax
   3824f:	89 ce                	mov    %ecx,%esi
   38251:	89 d3                	mov    %edx,%ebx
   38253:	e9 fb fd ff ff       	jmp    38053 <_realloc_r+0x163>
   38258:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   3825b:	29 d9                	sub    %ebx,%ecx
   3825d:	01 de                	add    %ebx,%esi
   3825f:	83 c9 01             	or     $0x1,%ecx
   38262:	89 35 48 d5 03 00    	mov    %esi,0x3d548
   38268:	89 4e 04             	mov    %ecx,0x4(%esi)
   3826b:	8b 47 fc             	mov    -0x4(%edi),%eax
   3826e:	83 e0 01             	and    $0x1,%eax
   38271:	09 d8                	or     %ebx,%eax
   38273:	89 47 fc             	mov    %eax,-0x4(%edi)
   38276:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   38279:	89 04 24             	mov    %eax,(%esp)
   3827c:	e8 2f d8 ff ff       	call   35ab0 <__malloc_unlock>
   38281:	89 f8                	mov    %edi,%eax
   38283:	e9 ef fd ff ff       	jmp    38077 <_realloc_r+0x187>
   38288:	89 0c 24             	mov    %ecx,(%esp)
   3828b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   3828f:	89 7c 24 04          	mov    %edi,0x4(%esp)
   38293:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   38296:	e8 c5 fb ff ff       	call   37e60 <memmove>
   3829b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   3829e:	e9 93 fe ff ff       	jmp    38136 <_realloc_r+0x246>
   382a3:	90                   	nop
   382a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   382a8:	8d 14 18             	lea    (%eax,%ebx,1),%edx
   382ab:	e9 d2 fe ff ff       	jmp    38182 <_realloc_r+0x292>
   382b0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
   382b3:	8b 45 d0             	mov    -0x30(%ebp),%eax
   382b6:	01 d0                	add    %edx,%eax
   382b8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   382bb:	8b 45 dc             	mov    -0x24(%ebp),%eax
   382be:	83 c0 10             	add    $0x10,%eax
   382c1:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
   382c4:	0f 8c b8 fe ff ff    	jl     38182 <_realloc_r+0x292>
   382ca:	8b 41 0c             	mov    0xc(%ecx),%eax
   382cd:	83 eb 04             	sub    $0x4,%ebx
   382d0:	8b 51 08             	mov    0x8(%ecx),%edx
   382d3:	83 fb 24             	cmp    $0x24,%ebx
   382d6:	8d 71 08             	lea    0x8(%ecx),%esi
   382d9:	89 42 0c             	mov    %eax,0xc(%edx)
   382dc:	89 50 08             	mov    %edx,0x8(%eax)
   382df:	0f 87 3d 01 00 00    	ja     38422 <_realloc_r+0x532>
   382e5:	83 fb 13             	cmp    $0x13,%ebx
   382e8:	89 f0                	mov    %esi,%eax
   382ea:	76 1a                	jbe    38306 <_realloc_r+0x416>
   382ec:	8b 07                	mov    (%edi),%eax
   382ee:	83 fb 1b             	cmp    $0x1b,%ebx
   382f1:	89 41 08             	mov    %eax,0x8(%ecx)
   382f4:	8b 47 04             	mov    0x4(%edi),%eax
   382f7:	89 41 0c             	mov    %eax,0xc(%ecx)
   382fa:	0f 87 3d 01 00 00    	ja     3843d <_realloc_r+0x54d>
   38300:	8d 41 10             	lea    0x10(%ecx),%eax
   38303:	83 c7 08             	add    $0x8,%edi
   38306:	8b 17                	mov    (%edi),%edx
   38308:	89 10                	mov    %edx,(%eax)
   3830a:	8b 57 04             	mov    0x4(%edi),%edx
   3830d:	89 50 04             	mov    %edx,0x4(%eax)
   38310:	8b 57 08             	mov    0x8(%edi),%edx
   38313:	89 50 08             	mov    %edx,0x8(%eax)
   38316:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   38319:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   3831c:	89 d8                	mov    %ebx,%eax
   3831e:	29 df                	sub    %ebx,%edi
   38320:	01 c8                	add    %ecx,%eax
   38322:	83 cf 01             	or     $0x1,%edi
   38325:	a3 48 d5 03 00       	mov    %eax,0x3d548
   3832a:	89 78 04             	mov    %edi,0x4(%eax)
   3832d:	8b 41 04             	mov    0x4(%ecx),%eax
   38330:	83 e0 01             	and    $0x1,%eax
   38333:	09 d8                	or     %ebx,%eax
   38335:	89 41 04             	mov    %eax,0x4(%ecx)
   38338:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3833b:	89 04 24             	mov    %eax,(%esp)
   3833e:	e8 6d d7 ff ff       	call   35ab0 <__malloc_unlock>
   38343:	89 f0                	mov    %esi,%eax
   38345:	e9 2d fd ff ff       	jmp    38077 <_realloc_r+0x187>
   3834a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   38350:	8b 47 08             	mov    0x8(%edi),%eax
   38353:	83 fb 24             	cmp    $0x24,%ebx
   38356:	89 41 08             	mov    %eax,0x8(%ecx)
   38359:	8b 47 0c             	mov    0xc(%edi),%eax
   3835c:	89 41 0c             	mov    %eax,0xc(%ecx)
   3835f:	74 60                	je     383c1 <_realloc_r+0x4d1>
   38361:	8d 41 10             	lea    0x10(%ecx),%eax
   38364:	8d 57 10             	lea    0x10(%edi),%edx
   38367:	e9 ba fd ff ff       	jmp    38126 <_realloc_r+0x236>
   3836c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   38370:	8b 51 fc             	mov    -0x4(%ecx),%edx
   38373:	83 e2 fc             	and    $0xfffffffc,%edx
   38376:	01 d3                	add    %edx,%ebx
   38378:	e9 d6 fc ff ff       	jmp    38053 <_realloc_r+0x163>
   3837d:	8d 76 00             	lea    0x0(%esi),%esi
   38380:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   38384:	89 7c 24 04          	mov    %edi,0x4(%esp)
   38388:	89 f7                	mov    %esi,%edi
   3838a:	89 34 24             	mov    %esi,(%esp)
   3838d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   38390:	e8 cb fa ff ff       	call   37e60 <memmove>
   38395:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   38398:	8b 5d d0             	mov    -0x30(%ebp),%ebx
   3839b:	8b 41 04             	mov    0x4(%ecx),%eax
   3839e:	89 ce                	mov    %ecx,%esi
   383a0:	e9 ae fc ff ff       	jmp    38053 <_realloc_r+0x163>
   383a5:	8b 47 08             	mov    0x8(%edi),%eax
   383a8:	83 fb 24             	cmp    $0x24,%ebx
   383ab:	89 41 10             	mov    %eax,0x10(%ecx)
   383ae:	8b 47 0c             	mov    0xc(%edi),%eax
   383b1:	89 41 14             	mov    %eax,0x14(%ecx)
   383b4:	74 3e                	je     383f4 <_realloc_r+0x504>
   383b6:	8d 41 18             	lea    0x18(%ecx),%eax
   383b9:	83 c7 10             	add    $0x10,%edi
   383bc:	e9 5b fc ff ff       	jmp    3801c <_realloc_r+0x12c>
   383c1:	8b 47 10             	mov    0x10(%edi),%eax
   383c4:	8d 57 18             	lea    0x18(%edi),%edx
   383c7:	89 41 10             	mov    %eax,0x10(%ecx)
   383ca:	8b 5f 14             	mov    0x14(%edi),%ebx
   383cd:	8d 41 18             	lea    0x18(%ecx),%eax
   383d0:	89 59 14             	mov    %ebx,0x14(%ecx)
   383d3:	e9 4e fd ff ff       	jmp    38126 <_realloc_r+0x236>
   383d8:	8b 47 08             	mov    0x8(%edi),%eax
   383db:	83 fb 24             	cmp    $0x24,%ebx
   383de:	89 41 10             	mov    %eax,0x10(%ecx)
   383e1:	8b 47 0c             	mov    0xc(%edi),%eax
   383e4:	89 41 14             	mov    %eax,0x14(%ecx)
   383e7:	74 22                	je     3840b <_realloc_r+0x51b>
   383e9:	8d 41 18             	lea    0x18(%ecx),%eax
   383ec:	83 c7 10             	add    $0x10,%edi
   383ef:	e9 d3 fd ff ff       	jmp    381c7 <_realloc_r+0x2d7>
   383f4:	8b 47 10             	mov    0x10(%edi),%eax
   383f7:	83 c7 18             	add    $0x18,%edi
   383fa:	89 41 18             	mov    %eax,0x18(%ecx)
   383fd:	8b 57 fc             	mov    -0x4(%edi),%edx
   38400:	8d 41 20             	lea    0x20(%ecx),%eax
   38403:	89 51 1c             	mov    %edx,0x1c(%ecx)
   38406:	e9 11 fc ff ff       	jmp    3801c <_realloc_r+0x12c>
   3840b:	8b 47 10             	mov    0x10(%edi),%eax
   3840e:	83 c7 18             	add    $0x18,%edi
   38411:	89 41 18             	mov    %eax,0x18(%ecx)
   38414:	8b 5f fc             	mov    -0x4(%edi),%ebx
   38417:	8d 41 20             	lea    0x20(%ecx),%eax
   3841a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
   3841d:	e9 a5 fd ff ff       	jmp    381c7 <_realloc_r+0x2d7>
   38422:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   38426:	89 7c 24 04          	mov    %edi,0x4(%esp)
   3842a:	89 34 24             	mov    %esi,(%esp)
   3842d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   38430:	e8 2b fa ff ff       	call   37e60 <memmove>
   38435:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   38438:	e9 d9 fe ff ff       	jmp    38316 <_realloc_r+0x426>
   3843d:	8b 47 08             	mov    0x8(%edi),%eax
   38440:	83 fb 24             	cmp    $0x24,%ebx
   38443:	89 41 10             	mov    %eax,0x10(%ecx)
   38446:	8b 47 0c             	mov    0xc(%edi),%eax
   38449:	89 41 14             	mov    %eax,0x14(%ecx)
   3844c:	74 1d                	je     3846b <_realloc_r+0x57b>
   3844e:	8d 41 18             	lea    0x18(%ecx),%eax
   38451:	83 c7 10             	add    $0x10,%edi
   38454:	e9 ad fe ff ff       	jmp    38306 <_realloc_r+0x416>
   38459:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3845c:	89 04 24             	mov    %eax,(%esp)
   3845f:	e8 4c d6 ff ff       	call   35ab0 <__malloc_unlock>
   38464:	31 c0                	xor    %eax,%eax
   38466:	e9 0c fc ff ff       	jmp    38077 <_realloc_r+0x187>
   3846b:	8b 47 10             	mov    0x10(%edi),%eax
   3846e:	83 c7 18             	add    $0x18,%edi
   38471:	89 41 18             	mov    %eax,0x18(%ecx)
   38474:	8b 57 fc             	mov    -0x4(%edi),%edx
   38477:	8d 41 20             	lea    0x20(%ecx),%eax
   3847a:	89 51 1c             	mov    %edx,0x1c(%ecx)
   3847d:	e9 84 fe ff ff       	jmp    38306 <_realloc_r+0x416>
   38482:	66 90                	xchg   %ax,%ax
   38484:	66 90                	xchg   %ax,%ax
   38486:	66 90                	xchg   %ax,%ax
   38488:	66 90                	xchg   %ax,%ax
   3848a:	66 90                	xchg   %ax,%ax
   3848c:	66 90                	xchg   %ax,%ax
   3848e:	66 90                	xchg   %ax,%ax

00038490 <cleanup_glue>:
   38490:	55                   	push   %ebp
   38491:	89 e5                	mov    %esp,%ebp
   38493:	56                   	push   %esi
   38494:	53                   	push   %ebx
   38495:	83 ec 10             	sub    $0x10,%esp
   38498:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   3849b:	8b 75 08             	mov    0x8(%ebp),%esi
   3849e:	8b 03                	mov    (%ebx),%eax
   384a0:	85 c0                	test   %eax,%eax
   384a2:	74 0c                	je     384b0 <cleanup_glue+0x20>
   384a4:	89 44 24 04          	mov    %eax,0x4(%esp)
   384a8:	89 34 24             	mov    %esi,(%esp)
   384ab:	e8 e0 ff ff ff       	call   38490 <cleanup_glue>
   384b0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
   384b3:	89 75 08             	mov    %esi,0x8(%ebp)
   384b6:	83 c4 10             	add    $0x10,%esp
   384b9:	5b                   	pop    %ebx
   384ba:	5e                   	pop    %esi
   384bb:	5d                   	pop    %ebp
   384bc:	e9 3f f7 ff ff       	jmp    37c00 <_free_r>
   384c1:	eb 0d                	jmp    384d0 <_reclaim_reent>
   384c3:	90                   	nop
   384c4:	90                   	nop
   384c5:	90                   	nop
   384c6:	90                   	nop
   384c7:	90                   	nop
   384c8:	90                   	nop
   384c9:	90                   	nop
   384ca:	90                   	nop
   384cb:	90                   	nop
   384cc:	90                   	nop
   384cd:	90                   	nop
   384ce:	90                   	nop
   384cf:	90                   	nop

000384d0 <_reclaim_reent>:
   384d0:	55                   	push   %ebp
   384d1:	89 e5                	mov    %esp,%ebp
   384d3:	57                   	push   %edi
   384d4:	56                   	push   %esi
   384d5:	53                   	push   %ebx
   384d6:	83 ec 1c             	sub    $0x1c,%esp
   384d9:	8b 5d 08             	mov    0x8(%ebp),%ebx
   384dc:	3b 1d 40 d0 03 00    	cmp    0x3d040,%ebx
   384e2:	0f 84 a6 00 00 00    	je     3858e <_reclaim_reent+0xbe>
   384e8:	8b 53 4c             	mov    0x4c(%ebx),%edx
   384eb:	85 d2                	test   %edx,%edx
   384ed:	74 46                	je     38535 <_reclaim_reent+0x65>
   384ef:	31 c0                	xor    %eax,%eax
   384f1:	31 f6                	xor    %esi,%esi
   384f3:	90                   	nop
   384f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   384f8:	8b 04 82             	mov    (%edx,%eax,4),%eax
   384fb:	85 c0                	test   %eax,%eax
   384fd:	75 0b                	jne    3850a <_reclaim_reent+0x3a>
   384ff:	eb 1e                	jmp    3851f <_reclaim_reent+0x4f>
   38501:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   38508:	89 f8                	mov    %edi,%eax
   3850a:	8b 38                	mov    (%eax),%edi
   3850c:	89 44 24 04          	mov    %eax,0x4(%esp)
   38510:	89 1c 24             	mov    %ebx,(%esp)
   38513:	e8 e8 f6 ff ff       	call   37c00 <_free_r>
   38518:	85 ff                	test   %edi,%edi
   3851a:	75 ec                	jne    38508 <_reclaim_reent+0x38>
   3851c:	8b 53 4c             	mov    0x4c(%ebx),%edx
   3851f:	83 c6 01             	add    $0x1,%esi
   38522:	83 fe 20             	cmp    $0x20,%esi
   38525:	89 f0                	mov    %esi,%eax
   38527:	75 cf                	jne    384f8 <_reclaim_reent+0x28>
   38529:	89 54 24 04          	mov    %edx,0x4(%esp)
   3852d:	89 1c 24             	mov    %ebx,(%esp)
   38530:	e8 cb f6 ff ff       	call   37c00 <_free_r>
   38535:	8b 43 40             	mov    0x40(%ebx),%eax
   38538:	85 c0                	test   %eax,%eax
   3853a:	74 0c                	je     38548 <_reclaim_reent+0x78>
   3853c:	89 44 24 04          	mov    %eax,0x4(%esp)
   38540:	89 1c 24             	mov    %ebx,(%esp)
   38543:	e8 b8 f6 ff ff       	call   37c00 <_free_r>
   38548:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
   3854e:	85 c0                	test   %eax,%eax
   38550:	74 22                	je     38574 <_reclaim_reent+0xa4>
   38552:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
   38558:	39 f0                	cmp    %esi,%eax
   3855a:	75 06                	jne    38562 <_reclaim_reent+0x92>
   3855c:	eb 16                	jmp    38574 <_reclaim_reent+0xa4>
   3855e:	66 90                	xchg   %ax,%ax
   38560:	89 f8                	mov    %edi,%eax
   38562:	8b 38                	mov    (%eax),%edi
   38564:	89 44 24 04          	mov    %eax,0x4(%esp)
   38568:	89 1c 24             	mov    %ebx,(%esp)
   3856b:	e8 90 f6 ff ff       	call   37c00 <_free_r>
   38570:	39 fe                	cmp    %edi,%esi
   38572:	75 ec                	jne    38560 <_reclaim_reent+0x90>
   38574:	8b 43 54             	mov    0x54(%ebx),%eax
   38577:	85 c0                	test   %eax,%eax
   38579:	74 0c                	je     38587 <_reclaim_reent+0xb7>
   3857b:	89 44 24 04          	mov    %eax,0x4(%esp)
   3857f:	89 1c 24             	mov    %ebx,(%esp)
   38582:	e8 79 f6 ff ff       	call   37c00 <_free_r>
   38587:	8b 43 38             	mov    0x38(%ebx),%eax
   3858a:	85 c0                	test   %eax,%eax
   3858c:	75 08                	jne    38596 <_reclaim_reent+0xc6>
   3858e:	83 c4 1c             	add    $0x1c,%esp
   38591:	5b                   	pop    %ebx
   38592:	5e                   	pop    %esi
   38593:	5f                   	pop    %edi
   38594:	5d                   	pop    %ebp
   38595:	c3                   	ret    
   38596:	89 1c 24             	mov    %ebx,(%esp)
   38599:	ff 53 3c             	call   *0x3c(%ebx)
   3859c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
   385a2:	85 c0                	test   %eax,%eax
   385a4:	74 e8                	je     3858e <_reclaim_reent+0xbe>
   385a6:	89 1c 24             	mov    %ebx,(%esp)
   385a9:	89 44 24 04          	mov    %eax,0x4(%esp)
   385ad:	e8 de fe ff ff       	call   38490 <cleanup_glue>
   385b2:	83 c4 1c             	add    $0x1c,%esp
   385b5:	5b                   	pop    %ebx
   385b6:	5e                   	pop    %esi
   385b7:	5f                   	pop    %edi
   385b8:	5d                   	pop    %ebp
   385b9:	c3                   	ret    
