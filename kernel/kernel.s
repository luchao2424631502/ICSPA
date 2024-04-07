
kernel:     file format elf32-i386


Disassembly of section .text:

00030000 <start>:
   30000:	e9 90 00 00 00       	jmp    30095 <init>

00030005 <vec0>:
   30005:	6a 00                	push   $0x0
   30007:	6a 00                	push   $0x0
   30009:	eb 7b                	jmp    30086 <asm_do_irq>

0003000b <vec1>:
   3000b:	6a 00                	push   $0x0
   3000d:	6a 01                	push   $0x1
   3000f:	eb 75                	jmp    30086 <asm_do_irq>

00030011 <vec2>:
   30011:	6a 00                	push   $0x0
   30013:	6a 02                	push   $0x2
   30015:	eb 6f                	jmp    30086 <asm_do_irq>

00030017 <vec3>:
   30017:	6a 00                	push   $0x0
   30019:	6a 03                	push   $0x3
   3001b:	eb 69                	jmp    30086 <asm_do_irq>

0003001d <vec4>:
   3001d:	6a 00                	push   $0x0
   3001f:	6a 04                	push   $0x4
   30021:	eb 63                	jmp    30086 <asm_do_irq>

00030023 <vec5>:
   30023:	6a 00                	push   $0x0
   30025:	6a 05                	push   $0x5
   30027:	eb 5d                	jmp    30086 <asm_do_irq>

00030029 <vec6>:
   30029:	6a 00                	push   $0x0
   3002b:	6a 06                	push   $0x6
   3002d:	eb 57                	jmp    30086 <asm_do_irq>

0003002f <vec7>:
   3002f:	6a 00                	push   $0x0
   30031:	6a 07                	push   $0x7
   30033:	eb 51                	jmp    30086 <asm_do_irq>

00030035 <vec8>:
   30035:	6a 08                	push   $0x8
   30037:	eb 4d                	jmp    30086 <asm_do_irq>

00030039 <vec9>:
   30039:	6a 00                	push   $0x0
   3003b:	6a 09                	push   $0x9
   3003d:	eb 47                	jmp    30086 <asm_do_irq>

0003003f <vec10>:
   3003f:	6a 0a                	push   $0xa
   30041:	eb 43                	jmp    30086 <asm_do_irq>

00030043 <vec11>:
   30043:	6a 0b                	push   $0xb
   30045:	eb 3f                	jmp    30086 <asm_do_irq>

00030047 <vec12>:
   30047:	6a 0c                	push   $0xc
   30049:	eb 3b                	jmp    30086 <asm_do_irq>

0003004b <vec13>:
   3004b:	6a 0d                	push   $0xd
   3004d:	eb 37                	jmp    30086 <asm_do_irq>

0003004f <vec14>:
   3004f:	6a 0e                	push   $0xe
   30051:	eb 33                	jmp    30086 <asm_do_irq>

00030053 <vecsys>:
   30053:	6a 00                	push   $0x0
   30055:	68 80 00 00 00       	push   $0x80
   3005a:	eb 2a                	jmp    30086 <asm_do_irq>

0003005c <irq0>:
   3005c:	6a 00                	push   $0x0
   3005e:	68 e8 03 00 00       	push   $0x3e8
   30063:	eb 21                	jmp    30086 <asm_do_irq>

00030065 <irq1>:
   30065:	6a 00                	push   $0x0
   30067:	68 e9 03 00 00       	push   $0x3e9
   3006c:	eb 18                	jmp    30086 <asm_do_irq>

0003006e <irq2>:
   3006e:	6a 00                	push   $0x0
   30070:	68 ea 03 00 00       	push   $0x3ea
   30075:	eb 0f                	jmp    30086 <asm_do_irq>

00030077 <irq14>:
   30077:	6a 00                	push   $0x0
   30079:	68 f6 03 00 00       	push   $0x3f6
   3007e:	eb 06                	jmp    30086 <asm_do_irq>

00030080 <irq_empty>:
   30080:	6a 00                	push   $0x0
   30082:	6a ff                	push   $0xffffffff
   30084:	eb 00                	jmp    30086 <asm_do_irq>

00030086 <asm_do_irq>:
   30086:	60                   	pusha  
   30087:	54                   	push   %esp
   30088:	e8 06 0a 00 00       	call   30a93 <irq_handle>
   3008d:	83 c4 04             	add    $0x4,%esp
   30090:	61                   	popa   
   30091:	83 c4 08             	add    $0x8,%esp
   30094:	cf                   	iret   

00030095 <init>:
   30095:	55                   	push   %ebp
   30096:	89 e5                	mov    %esp,%ebp
   30098:	e8 5a 00 00 00       	call   300f7 <__x86.get_pc_thunk.ax>
   3009d:	05 63 cf 00 00       	add    $0xcf63,%eax
   300a2:	8d 80 b3 30 ff ff    	lea    -0xcf4d(%eax),%eax
   300a8:	ff e0                	jmp    *%eax
   300aa:	b8 01 00 00 00       	mov    $0x1,%eax
   300af:	82                   	nemu_trap 
   300b0:	90                   	nop
   300b1:	5d                   	pop    %ebp
   300b2:	c3                   	ret    

000300b3 <init_cond>:
   300b3:	55                   	push   %ebp
   300b4:	89 e5                	mov    %esp,%ebp
   300b6:	53                   	push   %ebx
   300b7:	83 ec 14             	sub    $0x14,%esp
   300ba:	e8 3c 00 00 00       	call   300fb <__x86.get_pc_thunk.bx>
   300bf:	81 c3 41 cf 00 00    	add    $0xcf41,%ebx
   300c5:	8d 83 40 c0 ff ff    	lea    -0x3fc0(%ebx),%eax
   300cb:	50                   	push   %eax
   300cc:	6a 52                	push   $0x52
   300ce:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
   300d4:	50                   	push   %eax
   300d5:	8d 83 0c c0 ff ff    	lea    -0x3ff4(%ebx),%eax
   300db:	50                   	push   %eax
   300dc:	e8 91 08 00 00       	call   30972 <printk>
   300e1:	83 c4 10             	add    $0x10,%esp
   300e4:	e8 0b 07 00 00       	call   307f4 <loader>
   300e9:	89 45 f4             	mov    %eax,-0xc(%ebp)
   300ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
   300ef:	ff d0                	call   *%eax
   300f1:	90                   	nop
   300f2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   300f5:	c9                   	leave  
   300f6:	c3                   	ret    

000300f7 <__x86.get_pc_thunk.ax>:
   300f7:	8b 04 24             	mov    (%esp),%eax
   300fa:	c3                   	ret    

000300fb <__x86.get_pc_thunk.bx>:
   300fb:	8b 1c 24             	mov    (%esp),%ebx
   300fe:	c3                   	ret    

000300ff <in_byte>:
   300ff:	55                   	push   %ebp
   30100:	89 e5                	mov    %esp,%ebp
   30102:	83 ec 14             	sub    $0x14,%esp
   30105:	e8 ed ff ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3010a:	05 f6 ce 00 00       	add    $0xcef6,%eax
   3010f:	8b 45 08             	mov    0x8(%ebp),%eax
   30112:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
   30116:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30119:	89 c2                	mov    %eax,%edx
   3011b:	ec                   	in     (%dx),%al
   3011c:	88 45 ff             	mov    %al,-0x1(%ebp)
   3011f:	8a 45 ff             	mov    -0x1(%ebp),%al
   30122:	c9                   	leave  
   30123:	c3                   	ret    

00030124 <out_byte>:
   30124:	55                   	push   %ebp
   30125:	89 e5                	mov    %esp,%ebp
   30127:	83 ec 08             	sub    $0x8,%esp
   3012a:	e8 c8 ff ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3012f:	05 d1 ce 00 00       	add    $0xced1,%eax
   30134:	8b 45 08             	mov    0x8(%ebp),%eax
   30137:	8b 55 0c             	mov    0xc(%ebp),%edx
   3013a:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   3013e:	88 d0                	mov    %dl,%al
   30140:	88 45 f8             	mov    %al,-0x8(%ebp)
   30143:	8a 45 f8             	mov    -0x8(%ebp),%al
   30146:	8b 55 fc             	mov    -0x4(%ebp),%edx
   30149:	ee                   	out    %al,(%dx)
   3014a:	90                   	nop
   3014b:	c9                   	leave  
   3014c:	c3                   	ret    

0003014d <out_long>:
   3014d:	55                   	push   %ebp
   3014e:	89 e5                	mov    %esp,%ebp
   30150:	83 ec 04             	sub    $0x4,%esp
   30153:	e8 9f ff ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30158:	05 a8 ce 00 00       	add    $0xcea8,%eax
   3015d:	8b 45 08             	mov    0x8(%ebp),%eax
   30160:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   30164:	8b 45 0c             	mov    0xc(%ebp),%eax
   30167:	8b 55 fc             	mov    -0x4(%ebp),%edx
   3016a:	ef                   	out    %eax,(%dx)
   3016b:	90                   	nop
   3016c:	c9                   	leave  
   3016d:	c3                   	ret    

0003016e <dma_prepare>:
   3016e:	55                   	push   %ebp
   3016f:	89 e5                	mov    %esp,%ebp
   30171:	83 ec 10             	sub    $0x10,%esp
   30174:	e8 7e ff ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30179:	05 87 ce 00 00       	add    $0xce87,%eax
   3017e:	8b 55 08             	mov    0x8(%ebp),%edx
   30181:	89 55 fc             	mov    %edx,-0x4(%ebp)
   30184:	c7 c2 54 00 07 00    	mov    $0x70054,%edx
   3018a:	8b 4d fc             	mov    -0x4(%ebp),%ecx
   3018d:	89 0a                	mov    %ecx,(%edx)
   3018f:	c7 c2 54 00 07 00    	mov    $0x70054,%edx
   30195:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
   3019b:	c7 c2 54 00 07 00    	mov    $0x70054,%edx
   301a1:	8a 4a 07             	mov    0x7(%edx),%cl
   301a4:	83 c9 80             	or     $0xffffff80,%ecx
   301a7:	88 4a 07             	mov    %cl,0x7(%edx)
   301aa:	c7 c1 54 00 07 00    	mov    $0x70054,%ecx
   301b0:	66 8b 51 06          	mov    0x6(%ecx),%dx
   301b4:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
   301ba:	66 89 51 06          	mov    %dx,0x6(%ecx)
   301be:	c7 c0 54 00 07 00    	mov    $0x70054,%eax
   301c4:	89 45 f8             	mov    %eax,-0x8(%ebp)
   301c7:	ff 75 f8             	pushl  -0x8(%ebp)
   301ca:	68 44 c0 00 00       	push   $0xc044
   301cf:	e8 79 ff ff ff       	call   3014d <out_long>
   301d4:	83 c4 08             	add    $0x8,%esp
   301d7:	90                   	nop
   301d8:	c9                   	leave  
   301d9:	c3                   	ret    

000301da <dma_issue_read>:
   301da:	55                   	push   %ebp
   301db:	89 e5                	mov    %esp,%ebp
   301dd:	e8 15 ff ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   301e2:	05 1e ce 00 00       	add    $0xce1e,%eax
   301e7:	68 40 c0 00 00       	push   $0xc040
   301ec:	e8 0e ff ff ff       	call   300ff <in_byte>
   301f1:	83 c4 04             	add    $0x4,%esp
   301f4:	83 c8 09             	or     $0x9,%eax
   301f7:	0f b6 c0             	movzbl %al,%eax
   301fa:	50                   	push   %eax
   301fb:	68 40 c0 00 00       	push   $0xc040
   30200:	e8 1f ff ff ff       	call   30124 <out_byte>
   30205:	83 c4 08             	add    $0x8,%esp
   30208:	90                   	nop
   30209:	c9                   	leave  
   3020a:	c3                   	ret    

0003020b <wait_intr>:
   3020b:	55                   	push   %ebp
   3020c:	89 e5                	mov    %esp,%ebp
   3020e:	e8 e4 fe ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30213:	05 ed cd 00 00       	add    $0xcded,%eax
   30218:	f4                   	hlt    
   30219:	90                   	nop
   3021a:	5d                   	pop    %ebp
   3021b:	c3                   	ret    

0003021c <ide_read>:
   3021c:	55                   	push   %ebp
   3021d:	89 e5                	mov    %esp,%ebp
   3021f:	56                   	push   %esi
   30220:	53                   	push   %ebx
   30221:	83 ec 10             	sub    $0x10,%esp
   30224:	e8 d2 fe ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30229:	81 c3 d7 cd 00 00    	add    $0xcdd7,%ebx
   3022f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   30236:	eb 22                	jmp    3025a <ide_read+0x3e>
   30238:	8b 55 0c             	mov    0xc(%ebp),%edx
   3023b:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3023e:	01 d0                	add    %edx,%eax
   30240:	8b 4d 08             	mov    0x8(%ebp),%ecx
   30243:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30246:	8d 34 11             	lea    (%ecx,%edx,1),%esi
   30249:	83 ec 0c             	sub    $0xc,%esp
   3024c:	50                   	push   %eax
   3024d:	e8 c6 02 00 00       	call   30518 <read_byte>
   30252:	83 c4 10             	add    $0x10,%esp
   30255:	88 06                	mov    %al,(%esi)
   30257:	ff 45 f4             	incl   -0xc(%ebp)
   3025a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3025d:	3b 45 10             	cmp    0x10(%ebp),%eax
   30260:	72 d6                	jb     30238 <ide_read+0x1c>
   30262:	90                   	nop
   30263:	8d 65 f8             	lea    -0x8(%ebp),%esp
   30266:	5b                   	pop    %ebx
   30267:	5e                   	pop    %esi
   30268:	5d                   	pop    %ebp
   30269:	c3                   	ret    

0003026a <ide_write>:
   3026a:	55                   	push   %ebp
   3026b:	89 e5                	mov    %esp,%ebp
   3026d:	53                   	push   %ebx
   3026e:	83 ec 14             	sub    $0x14,%esp
   30271:	e8 85 fe ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30276:	81 c3 8a cd 00 00    	add    $0xcd8a,%ebx
   3027c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   30283:	eb 25                	jmp    302aa <ide_write+0x40>
   30285:	8b 55 08             	mov    0x8(%ebp),%edx
   30288:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3028b:	01 d0                	add    %edx,%eax
   3028d:	8a 00                	mov    (%eax),%al
   3028f:	0f b6 c0             	movzbl %al,%eax
   30292:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   30295:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30298:	01 ca                	add    %ecx,%edx
   3029a:	83 ec 08             	sub    $0x8,%esp
   3029d:	50                   	push   %eax
   3029e:	52                   	push   %edx
   3029f:	e8 b1 02 00 00       	call   30555 <write_byte>
   302a4:	83 c4 10             	add    $0x10,%esp
   302a7:	ff 45 f4             	incl   -0xc(%ebp)
   302aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
   302ad:	3b 45 10             	cmp    0x10(%ebp),%eax
   302b0:	72 d3                	jb     30285 <ide_write+0x1b>
   302b2:	90                   	nop
   302b3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   302b6:	c9                   	leave  
   302b7:	c3                   	ret    

000302b8 <ide_writeback>:
   302b8:	55                   	push   %ebp
   302b9:	89 e5                	mov    %esp,%ebp
   302bb:	53                   	push   %ebx
   302bc:	83 ec 04             	sub    $0x4,%esp
   302bf:	e8 37 fe ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   302c4:	81 c3 3c cd 00 00    	add    $0xcd3c,%ebx
   302ca:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
   302d0:	40                   	inc    %eax
   302d1:	89 83 04 10 00 00    	mov    %eax,0x1004(%ebx)
   302d7:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
   302dd:	83 f8 64             	cmp    $0x64,%eax
   302e0:	75 0f                	jne    302f1 <ide_writeback+0x39>
   302e2:	e8 f6 00 00 00       	call   303dd <cache_writeback>
   302e7:	c7 83 04 10 00 00 00 	movl   $0x0,0x1004(%ebx)
   302ee:	00 00 00 
   302f1:	90                   	nop
   302f2:	83 c4 04             	add    $0x4,%esp
   302f5:	5b                   	pop    %ebx
   302f6:	5d                   	pop    %ebp
   302f7:	c3                   	ret    

000302f8 <ide_intr>:
   302f8:	55                   	push   %ebp
   302f9:	89 e5                	mov    %esp,%ebp
   302fb:	e8 f7 fd ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30300:	05 00 cd 00 00       	add    $0xcd00,%eax
   30305:	c7 80 00 10 00 00 01 	movl   $0x1,0x1000(%eax)
   3030c:	00 00 00 
   3030f:	90                   	nop
   30310:	5d                   	pop    %ebp
   30311:	c3                   	ret    

00030312 <clear_ide_intr>:
   30312:	55                   	push   %ebp
   30313:	89 e5                	mov    %esp,%ebp
   30315:	e8 dd fd ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3031a:	05 e6 cc 00 00       	add    $0xcce6,%eax
   3031f:	c7 80 00 10 00 00 00 	movl   $0x0,0x1000(%eax)
   30326:	00 00 00 
   30329:	90                   	nop
   3032a:	5d                   	pop    %ebp
   3032b:	c3                   	ret    

0003032c <wait_ide_intr>:
   3032c:	55                   	push   %ebp
   3032d:	89 e5                	mov    %esp,%ebp
   3032f:	53                   	push   %ebx
   30330:	e8 c6 fd ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30335:	81 c3 cb cc 00 00    	add    $0xcccb,%ebx
   3033b:	eb 05                	jmp    30342 <wait_ide_intr+0x16>
   3033d:	e8 c9 fe ff ff       	call   3020b <wait_intr>
   30342:	8b 83 00 10 00 00    	mov    0x1000(%ebx),%eax
   30348:	85 c0                	test   %eax,%eax
   3034a:	74 f1                	je     3033d <wait_ide_intr+0x11>
   3034c:	e8 c1 ff ff ff       	call   30312 <clear_ide_intr>
   30351:	90                   	nop
   30352:	5b                   	pop    %ebx
   30353:	5d                   	pop    %ebp
   30354:	c3                   	ret    

00030355 <init_ide>:
   30355:	55                   	push   %ebp
   30356:	89 e5                	mov    %esp,%ebp
   30358:	53                   	push   %ebx
   30359:	83 ec 04             	sub    $0x4,%esp
   3035c:	e8 9a fd ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30361:	81 c3 9f cc 00 00    	add    $0xcc9f,%ebx
   30367:	e8 2e 00 00 00       	call   3039a <cache_init>
   3036c:	83 ec 08             	sub    $0x8,%esp
   3036f:	8d 83 b8 32 ff ff    	lea    -0xcd48(%ebx),%eax
   30375:	50                   	push   %eax
   30376:	6a 00                	push   $0x0
   30378:	e8 49 06 00 00       	call   309c6 <add_irq_handle>
   3037d:	83 c4 10             	add    $0x10,%esp
   30380:	83 ec 08             	sub    $0x8,%esp
   30383:	8d 83 f8 32 ff ff    	lea    -0xcd08(%ebx),%eax
   30389:	50                   	push   %eax
   3038a:	6a 0e                	push   $0xe
   3038c:	e8 35 06 00 00       	call   309c6 <add_irq_handle>
   30391:	83 c4 10             	add    $0x10,%esp
   30394:	90                   	nop
   30395:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30398:	c9                   	leave  
   30399:	c3                   	ret    

0003039a <cache_init>:
   3039a:	55                   	push   %ebp
   3039b:	89 e5                	mov    %esp,%ebp
   3039d:	53                   	push   %ebx
   3039e:	83 ec 10             	sub    $0x10,%esp
   303a1:	e8 fd 01 00 00       	call   305a3 <__x86.get_pc_thunk.dx>
   303a6:	81 c2 5a cc 00 00    	add    $0xcc5a,%edx
   303ac:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   303b3:	eb 1b                	jmp    303d0 <cache_init+0x36>
   303b5:	8b 4d f8             	mov    -0x8(%ebp),%ecx
   303b8:	8d 9a 24 10 00 00    	lea    0x1024(%edx),%ebx
   303be:	89 c8                	mov    %ecx,%eax
   303c0:	c1 e0 06             	shl    $0x6,%eax
   303c3:	01 c8                	add    %ecx,%eax
   303c5:	c1 e0 03             	shl    $0x3,%eax
   303c8:	01 d8                	add    %ebx,%eax
   303ca:	c6 00 00             	movb   $0x0,(%eax)
   303cd:	ff 45 f8             	incl   -0x8(%ebp)
   303d0:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
   303d4:	7e df                	jle    303b5 <cache_init+0x1b>
   303d6:	90                   	nop
   303d7:	83 c4 10             	add    $0x10,%esp
   303da:	5b                   	pop    %ebx
   303db:	5d                   	pop    %ebp
   303dc:	c3                   	ret    

000303dd <cache_writeback>:
   303dd:	55                   	push   %ebp
   303de:	89 e5                	mov    %esp,%ebp
   303e0:	53                   	push   %ebx
   303e1:	83 ec 14             	sub    $0x14,%esp
   303e4:	e8 12 fd ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   303e9:	81 c3 17 cc 00 00    	add    $0xcc17,%ebx
   303ef:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   303f6:	eb 72                	jmp    3046a <cache_writeback+0x8d>
   303f8:	8b 55 f4             	mov    -0xc(%ebp),%edx
   303fb:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
   30401:	89 d0                	mov    %edx,%eax
   30403:	c1 e0 06             	shl    $0x6,%eax
   30406:	01 d0                	add    %edx,%eax
   30408:	c1 e0 03             	shl    $0x3,%eax
   3040b:	01 c8                	add    %ecx,%eax
   3040d:	8a 00                	mov    (%eax),%al
   3040f:	3c 01                	cmp    $0x1,%al
   30411:	75 54                	jne    30467 <cache_writeback+0x8a>
   30413:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30416:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
   3041c:	89 d0                	mov    %edx,%eax
   3041e:	c1 e0 06             	shl    $0x6,%eax
   30421:	01 d0                	add    %edx,%eax
   30423:	c1 e0 03             	shl    $0x3,%eax
   30426:	01 c8                	add    %ecx,%eax
   30428:	8b 10                	mov    (%eax),%edx
   3042a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
   3042d:	89 c8                	mov    %ecx,%eax
   3042f:	c1 e0 06             	shl    $0x6,%eax
   30432:	01 c8                	add    %ecx,%eax
   30434:	c1 e0 03             	shl    $0x3,%eax
   30437:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
   3043d:	01 c8                	add    %ecx,%eax
   3043f:	83 c0 06             	add    $0x6,%eax
   30442:	83 ec 08             	sub    $0x8,%esp
   30445:	52                   	push   %edx
   30446:	50                   	push   %eax
   30447:	e8 52 03 00 00       	call   3079e <disk_do_write>
   3044c:	83 c4 10             	add    $0x10,%esp
   3044f:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30452:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
   30458:	89 d0                	mov    %edx,%eax
   3045a:	c1 e0 06             	shl    $0x6,%eax
   3045d:	01 d0                	add    %edx,%eax
   3045f:	c1 e0 03             	shl    $0x3,%eax
   30462:	01 c8                	add    %ecx,%eax
   30464:	c6 00 00             	movb   $0x0,(%eax)
   30467:	ff 45 f4             	incl   -0xc(%ebp)
   3046a:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
   3046e:	7e 88                	jle    303f8 <cache_writeback+0x1b>
   30470:	90                   	nop
   30471:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30474:	c9                   	leave  
   30475:	c3                   	ret    

00030476 <cache_fetch>:
   30476:	55                   	push   %ebp
   30477:	89 e5                	mov    %esp,%ebp
   30479:	53                   	push   %ebx
   3047a:	83 ec 14             	sub    $0x14,%esp
   3047d:	e8 79 fc ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30482:	81 c3 7e cb 00 00    	add    $0xcb7e,%ebx
   30488:	8b 45 08             	mov    0x8(%ebp),%eax
   3048b:	83 e0 7f             	and    $0x7f,%eax
   3048e:	89 c2                	mov    %eax,%edx
   30490:	89 d0                	mov    %edx,%eax
   30492:	c1 e0 06             	shl    $0x6,%eax
   30495:	01 d0                	add    %edx,%eax
   30497:	c1 e0 03             	shl    $0x3,%eax
   3049a:	8d 93 20 10 00 00    	lea    0x1020(%ebx),%edx
   304a0:	01 d0                	add    %edx,%eax
   304a2:	89 45 f4             	mov    %eax,-0xc(%ebp)
   304a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
   304a8:	8a 40 04             	mov    0x4(%eax),%al
   304ab:	3c 01                	cmp    $0x1,%al
   304ad:	75 0a                	jne    304b9 <cache_fetch+0x43>
   304af:	8b 45 f4             	mov    -0xc(%ebp),%eax
   304b2:	8b 00                	mov    (%eax),%eax
   304b4:	39 45 08             	cmp    %eax,0x8(%ebp)
   304b7:	74 57                	je     30510 <cache_fetch+0x9a>
   304b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
   304bc:	8a 40 04             	mov    0x4(%eax),%al
   304bf:	3c 01                	cmp    $0x1,%al
   304c1:	75 22                	jne    304e5 <cache_fetch+0x6f>
   304c3:	8b 45 f4             	mov    -0xc(%ebp),%eax
   304c6:	8a 40 05             	mov    0x5(%eax),%al
   304c9:	3c 01                	cmp    $0x1,%al
   304cb:	75 18                	jne    304e5 <cache_fetch+0x6f>
   304cd:	8b 45 f4             	mov    -0xc(%ebp),%eax
   304d0:	8b 00                	mov    (%eax),%eax
   304d2:	8b 55 f4             	mov    -0xc(%ebp),%edx
   304d5:	83 c2 06             	add    $0x6,%edx
   304d8:	83 ec 08             	sub    $0x8,%esp
   304db:	50                   	push   %eax
   304dc:	52                   	push   %edx
   304dd:	e8 bc 02 00 00       	call   3079e <disk_do_write>
   304e2:	83 c4 10             	add    $0x10,%esp
   304e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
   304e8:	83 c0 06             	add    $0x6,%eax
   304eb:	83 ec 08             	sub    $0x8,%esp
   304ee:	ff 75 08             	pushl  0x8(%ebp)
   304f1:	50                   	push   %eax
   304f2:	e8 3c 02 00 00       	call   30733 <disk_do_read>
   304f7:	83 c4 10             	add    $0x10,%esp
   304fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
   304fd:	c6 40 04 01          	movb   $0x1,0x4(%eax)
   30501:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30504:	8b 55 08             	mov    0x8(%ebp),%edx
   30507:	89 10                	mov    %edx,(%eax)
   30509:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3050c:	c6 40 05 00          	movb   $0x0,0x5(%eax)
   30510:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30513:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30516:	c9                   	leave  
   30517:	c3                   	ret    

00030518 <read_byte>:
   30518:	55                   	push   %ebp
   30519:	89 e5                	mov    %esp,%ebp
   3051b:	83 ec 18             	sub    $0x18,%esp
   3051e:	e8 d4 fb ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30523:	05 dd ca 00 00       	add    $0xcadd,%eax
   30528:	8b 45 08             	mov    0x8(%ebp),%eax
   3052b:	c1 e8 09             	shr    $0x9,%eax
   3052e:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30531:	83 ec 0c             	sub    $0xc,%esp
   30534:	ff 75 f4             	pushl  -0xc(%ebp)
   30537:	e8 3a ff ff ff       	call   30476 <cache_fetch>
   3053c:	83 c4 10             	add    $0x10,%esp
   3053f:	89 45 f0             	mov    %eax,-0x10(%ebp)
   30542:	8b 45 08             	mov    0x8(%ebp),%eax
   30545:	25 ff 01 00 00       	and    $0x1ff,%eax
   3054a:	89 c2                	mov    %eax,%edx
   3054c:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3054f:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
   30553:	c9                   	leave  
   30554:	c3                   	ret    

00030555 <write_byte>:
   30555:	55                   	push   %ebp
   30556:	89 e5                	mov    %esp,%ebp
   30558:	83 ec 28             	sub    $0x28,%esp
   3055b:	e8 97 fb ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30560:	05 a0 ca 00 00       	add    $0xcaa0,%eax
   30565:	8b 45 0c             	mov    0xc(%ebp),%eax
   30568:	88 45 e4             	mov    %al,-0x1c(%ebp)
   3056b:	8b 45 08             	mov    0x8(%ebp),%eax
   3056e:	c1 e8 09             	shr    $0x9,%eax
   30571:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30574:	83 ec 0c             	sub    $0xc,%esp
   30577:	ff 75 f4             	pushl  -0xc(%ebp)
   3057a:	e8 f7 fe ff ff       	call   30476 <cache_fetch>
   3057f:	83 c4 10             	add    $0x10,%esp
   30582:	89 45 f0             	mov    %eax,-0x10(%ebp)
   30585:	8b 45 08             	mov    0x8(%ebp),%eax
   30588:	25 ff 01 00 00       	and    $0x1ff,%eax
   3058d:	89 c1                	mov    %eax,%ecx
   3058f:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30592:	8a 55 e4             	mov    -0x1c(%ebp),%dl
   30595:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
   30599:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3059c:	c6 40 05 01          	movb   $0x1,0x5(%eax)
   305a0:	90                   	nop
   305a1:	c9                   	leave  
   305a2:	c3                   	ret    

000305a3 <__x86.get_pc_thunk.dx>:
   305a3:	8b 14 24             	mov    (%esp),%edx
   305a6:	c3                   	ret    

000305a7 <in_byte>:
   305a7:	55                   	push   %ebp
   305a8:	89 e5                	mov    %esp,%ebp
   305aa:	83 ec 14             	sub    $0x14,%esp
   305ad:	e8 45 fb ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   305b2:	05 4e ca 00 00       	add    $0xca4e,%eax
   305b7:	8b 45 08             	mov    0x8(%ebp),%eax
   305ba:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
   305be:	8b 45 ec             	mov    -0x14(%ebp),%eax
   305c1:	89 c2                	mov    %eax,%edx
   305c3:	ec                   	in     (%dx),%al
   305c4:	88 45 ff             	mov    %al,-0x1(%ebp)
   305c7:	8a 45 ff             	mov    -0x1(%ebp),%al
   305ca:	c9                   	leave  
   305cb:	c3                   	ret    

000305cc <in_long>:
   305cc:	55                   	push   %ebp
   305cd:	89 e5                	mov    %esp,%ebp
   305cf:	83 ec 14             	sub    $0x14,%esp
   305d2:	e8 20 fb ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   305d7:	05 29 ca 00 00       	add    $0xca29,%eax
   305dc:	8b 45 08             	mov    0x8(%ebp),%eax
   305df:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
   305e3:	8b 45 ec             	mov    -0x14(%ebp),%eax
   305e6:	89 c2                	mov    %eax,%edx
   305e8:	ed                   	in     (%dx),%eax
   305e9:	89 45 fc             	mov    %eax,-0x4(%ebp)
   305ec:	8b 45 fc             	mov    -0x4(%ebp),%eax
   305ef:	c9                   	leave  
   305f0:	c3                   	ret    

000305f1 <out_byte>:
   305f1:	55                   	push   %ebp
   305f2:	89 e5                	mov    %esp,%ebp
   305f4:	83 ec 08             	sub    $0x8,%esp
   305f7:	e8 fb fa ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   305fc:	05 04 ca 00 00       	add    $0xca04,%eax
   30601:	8b 45 08             	mov    0x8(%ebp),%eax
   30604:	8b 55 0c             	mov    0xc(%ebp),%edx
   30607:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   3060b:	88 d0                	mov    %dl,%al
   3060d:	88 45 f8             	mov    %al,-0x8(%ebp)
   30610:	8a 45 f8             	mov    -0x8(%ebp),%al
   30613:	8b 55 fc             	mov    -0x4(%ebp),%edx
   30616:	ee                   	out    %al,(%dx)
   30617:	90                   	nop
   30618:	c9                   	leave  
   30619:	c3                   	ret    

0003061a <out_long>:
   3061a:	55                   	push   %ebp
   3061b:	89 e5                	mov    %esp,%ebp
   3061d:	83 ec 04             	sub    $0x4,%esp
   30620:	e8 d2 fa ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30625:	05 db c9 00 00       	add    $0xc9db,%eax
   3062a:	8b 45 08             	mov    0x8(%ebp),%eax
   3062d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   30631:	8b 45 0c             	mov    0xc(%ebp),%eax
   30634:	8b 55 fc             	mov    -0x4(%ebp),%edx
   30637:	ef                   	out    %eax,(%dx)
   30638:	90                   	nop
   30639:	c9                   	leave  
   3063a:	c3                   	ret    

0003063b <waitdisk>:
   3063b:	55                   	push   %ebp
   3063c:	89 e5                	mov    %esp,%ebp
   3063e:	e8 b4 fa ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30643:	05 bd c9 00 00       	add    $0xc9bd,%eax
   30648:	90                   	nop
   30649:	68 f7 01 00 00       	push   $0x1f7
   3064e:	e8 54 ff ff ff       	call   305a7 <in_byte>
   30653:	83 c4 04             	add    $0x4,%esp
   30656:	0f b6 c0             	movzbl %al,%eax
   30659:	25 c0 00 00 00       	and    $0xc0,%eax
   3065e:	83 f8 40             	cmp    $0x40,%eax
   30661:	75 e6                	jne    30649 <waitdisk+0xe>
   30663:	90                   	nop
   30664:	c9                   	leave  
   30665:	c3                   	ret    

00030666 <ide_prepare>:
   30666:	55                   	push   %ebp
   30667:	89 e5                	mov    %esp,%ebp
   30669:	e8 89 fa ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3066e:	05 92 c9 00 00       	add    $0xc992,%eax
   30673:	e8 c3 ff ff ff       	call   3063b <waitdisk>
   30678:	6a 00                	push   $0x0
   3067a:	68 f1 01 00 00       	push   $0x1f1
   3067f:	e8 6d ff ff ff       	call   305f1 <out_byte>
   30684:	83 c4 08             	add    $0x8,%esp
   30687:	6a 01                	push   $0x1
   30689:	68 f2 01 00 00       	push   $0x1f2
   3068e:	e8 5e ff ff ff       	call   305f1 <out_byte>
   30693:	83 c4 08             	add    $0x8,%esp
   30696:	8b 45 08             	mov    0x8(%ebp),%eax
   30699:	0f b6 c0             	movzbl %al,%eax
   3069c:	50                   	push   %eax
   3069d:	68 f3 01 00 00       	push   $0x1f3
   306a2:	e8 4a ff ff ff       	call   305f1 <out_byte>
   306a7:	83 c4 08             	add    $0x8,%esp
   306aa:	8b 45 08             	mov    0x8(%ebp),%eax
   306ad:	c1 e8 08             	shr    $0x8,%eax
   306b0:	0f b6 c0             	movzbl %al,%eax
   306b3:	50                   	push   %eax
   306b4:	68 f4 01 00 00       	push   $0x1f4
   306b9:	e8 33 ff ff ff       	call   305f1 <out_byte>
   306be:	83 c4 08             	add    $0x8,%esp
   306c1:	8b 45 08             	mov    0x8(%ebp),%eax
   306c4:	c1 e8 10             	shr    $0x10,%eax
   306c7:	0f b6 c0             	movzbl %al,%eax
   306ca:	50                   	push   %eax
   306cb:	68 f5 01 00 00       	push   $0x1f5
   306d0:	e8 1c ff ff ff       	call   305f1 <out_byte>
   306d5:	83 c4 08             	add    $0x8,%esp
   306d8:	8b 45 08             	mov    0x8(%ebp),%eax
   306db:	c1 e8 18             	shr    $0x18,%eax
   306de:	83 c8 e0             	or     $0xffffffe0,%eax
   306e1:	0f b6 c0             	movzbl %al,%eax
   306e4:	50                   	push   %eax
   306e5:	68 f6 01 00 00       	push   $0x1f6
   306ea:	e8 02 ff ff ff       	call   305f1 <out_byte>
   306ef:	83 c4 08             	add    $0x8,%esp
   306f2:	90                   	nop
   306f3:	c9                   	leave  
   306f4:	c3                   	ret    

000306f5 <issue_read>:
   306f5:	55                   	push   %ebp
   306f6:	89 e5                	mov    %esp,%ebp
   306f8:	e8 fa f9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   306fd:	05 03 c9 00 00       	add    $0xc903,%eax
   30702:	6a 20                	push   $0x20
   30704:	68 f7 01 00 00       	push   $0x1f7
   30709:	e8 e3 fe ff ff       	call   305f1 <out_byte>
   3070e:	83 c4 08             	add    $0x8,%esp
   30711:	90                   	nop
   30712:	c9                   	leave  
   30713:	c3                   	ret    

00030714 <issue_write>:
   30714:	55                   	push   %ebp
   30715:	89 e5                	mov    %esp,%ebp
   30717:	e8 db f9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3071c:	05 e4 c8 00 00       	add    $0xc8e4,%eax
   30721:	6a 30                	push   $0x30
   30723:	68 f7 01 00 00       	push   $0x1f7
   30728:	e8 c4 fe ff ff       	call   305f1 <out_byte>
   3072d:	83 c4 08             	add    $0x8,%esp
   30730:	90                   	nop
   30731:	c9                   	leave  
   30732:	c3                   	ret    

00030733 <disk_do_read>:
   30733:	55                   	push   %ebp
   30734:	89 e5                	mov    %esp,%ebp
   30736:	53                   	push   %ebx
   30737:	83 ec 14             	sub    $0x14,%esp
   3073a:	e8 bc f9 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   3073f:	81 c3 c1 c8 00 00    	add    $0xc8c1,%ebx
   30745:	e8 c8 fb ff ff       	call   30312 <clear_ide_intr>
   3074a:	83 ec 0c             	sub    $0xc,%esp
   3074d:	ff 75 0c             	pushl  0xc(%ebp)
   30750:	e8 11 ff ff ff       	call   30666 <ide_prepare>
   30755:	83 c4 10             	add    $0x10,%esp
   30758:	e8 98 ff ff ff       	call   306f5 <issue_read>
   3075d:	e8 ca fb ff ff       	call   3032c <wait_ide_intr>
   30762:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   30769:	eb 25                	jmp    30790 <disk_do_read+0x5d>
   3076b:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3076e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   30775:	8b 45 08             	mov    0x8(%ebp),%eax
   30778:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
   3077b:	83 ec 0c             	sub    $0xc,%esp
   3077e:	68 f0 01 00 00       	push   $0x1f0
   30783:	e8 44 fe ff ff       	call   305cc <in_long>
   30788:	83 c4 10             	add    $0x10,%esp
   3078b:	89 03                	mov    %eax,(%ebx)
   3078d:	ff 45 f4             	incl   -0xc(%ebp)
   30790:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30793:	83 f8 7f             	cmp    $0x7f,%eax
   30796:	76 d3                	jbe    3076b <disk_do_read+0x38>
   30798:	90                   	nop
   30799:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3079c:	c9                   	leave  
   3079d:	c3                   	ret    

0003079e <disk_do_write>:
   3079e:	55                   	push   %ebp
   3079f:	89 e5                	mov    %esp,%ebp
   307a1:	83 ec 10             	sub    $0x10,%esp
   307a4:	e8 4e f9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   307a9:	05 57 c8 00 00       	add    $0xc857,%eax
   307ae:	ff 75 0c             	pushl  0xc(%ebp)
   307b1:	e8 b0 fe ff ff       	call   30666 <ide_prepare>
   307b6:	83 c4 04             	add    $0x4,%esp
   307b9:	e8 56 ff ff ff       	call   30714 <issue_write>
   307be:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   307c5:	eb 22                	jmp    307e9 <disk_do_write+0x4b>
   307c7:	8b 45 fc             	mov    -0x4(%ebp),%eax
   307ca:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   307d1:	8b 45 08             	mov    0x8(%ebp),%eax
   307d4:	01 d0                	add    %edx,%eax
   307d6:	8b 00                	mov    (%eax),%eax
   307d8:	50                   	push   %eax
   307d9:	68 f0 01 00 00       	push   $0x1f0
   307de:	e8 37 fe ff ff       	call   3061a <out_long>
   307e3:	83 c4 08             	add    $0x8,%esp
   307e6:	ff 45 fc             	incl   -0x4(%ebp)
   307e9:	8b 45 fc             	mov    -0x4(%ebp),%eax
   307ec:	83 f8 7f             	cmp    $0x7f,%eax
   307ef:	76 d6                	jbe    307c7 <disk_do_write+0x29>
   307f1:	90                   	nop
   307f2:	c9                   	leave  
   307f3:	c3                   	ret    

000307f4 <loader>:
   307f4:	55                   	push   %ebp
   307f5:	89 e5                	mov    %esp,%ebp
   307f7:	53                   	push   %ebx
   307f8:	83 ec 14             	sub    $0x14,%esp
   307fb:	e8 fb f8 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30800:	81 c3 00 c8 00 00    	add    $0xc800,%ebx
   30806:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   3080d:	8d 83 ec c0 ff ff    	lea    -0x3f14(%ebx),%eax
   30813:	50                   	push   %eax
   30814:	6a 1d                	push   $0x1d
   30816:	8d 83 4c c0 ff ff    	lea    -0x3fb4(%ebx),%eax
   3081c:	50                   	push   %eax
   3081d:	8d 83 5c c0 ff ff    	lea    -0x3fa4(%ebx),%eax
   30823:	50                   	push   %eax
   30824:	e8 49 01 00 00       	call   30972 <printk>
   30829:	83 c4 10             	add    $0x10,%esp
   3082c:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3082f:	8b 50 1c             	mov    0x1c(%eax),%edx
   30832:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30835:	01 d0                	add    %edx,%eax
   30837:	89 45 f4             	mov    %eax,-0xc(%ebp)
   3083a:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3083d:	8b 40 2c             	mov    0x2c(%eax),%eax
   30840:	0f b7 c0             	movzwl %ax,%eax
   30843:	c1 e0 05             	shl    $0x5,%eax
   30846:	89 c2                	mov    %eax,%edx
   30848:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3084b:	01 d0                	add    %edx,%eax
   3084d:	89 45 ec             	mov    %eax,-0x14(%ebp)
   30850:	eb 33                	jmp    30885 <loader+0x91>
   30852:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30855:	8b 00                	mov    (%eax),%eax
   30857:	83 f8 01             	cmp    $0x1,%eax
   3085a:	75 25                	jne    30881 <loader+0x8d>
   3085c:	8d 83 ec c0 ff ff    	lea    -0x3f14(%ebx),%eax
   30862:	50                   	push   %eax
   30863:	6a 29                	push   $0x29
   30865:	8d 83 4c c0 ff ff    	lea    -0x3fb4(%ebx),%eax
   3086b:	50                   	push   %eax
   3086c:	8d 83 98 c0 ff ff    	lea    -0x3f68(%ebx),%eax
   30872:	50                   	push   %eax
   30873:	e8 fa 00 00 00       	call   30972 <printk>
   30878:	83 c4 10             	add    $0x10,%esp
   3087b:	b8 01 00 00 00       	mov    $0x1,%eax
   30880:	82                   	nemu_trap 
   30881:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
   30885:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30888:	3b 45 ec             	cmp    -0x14(%ebp),%eax
   3088b:	72 c5                	jb     30852 <loader+0x5e>
   3088d:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30890:	8b 40 18             	mov    0x18(%eax),%eax
   30893:	89 45 e8             	mov    %eax,-0x18(%ebp)
   30896:	8b 45 e8             	mov    -0x18(%ebp),%eax
   30899:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3089c:	c9                   	leave  
   3089d:	c3                   	ret    

0003089e <sbrk>:
   3089e:	55                   	push   %ebp
   3089f:	89 e5                	mov    %esp,%ebp
   308a1:	53                   	push   %ebx
   308a2:	83 ec 04             	sub    $0x4,%esp
   308a5:	e8 4d f8 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   308aa:	05 56 c7 00 00       	add    $0xc756,%eax
   308af:	83 ec 0c             	sub    $0xc,%esp
   308b2:	8d 90 f4 c0 ff ff    	lea    -0x3f0c(%eax),%edx
   308b8:	52                   	push   %edx
   308b9:	8d 90 54 c1 ff ff    	lea    -0x3eac(%eax),%edx
   308bf:	52                   	push   %edx
   308c0:	6a 09                	push   $0x9
   308c2:	8d 90 f6 c0 ff ff    	lea    -0x3f0a(%eax),%edx
   308c8:	52                   	push   %edx
   308c9:	8d 90 08 c1 ff ff    	lea    -0x3ef8(%eax),%edx
   308cf:	52                   	push   %edx
   308d0:	89 c3                	mov    %eax,%ebx
   308d2:	e8 9b 00 00 00       	call   30972 <printk>
   308d7:	83 c4 20             	add    $0x20,%esp
   308da:	b8 01 00 00 00       	mov    $0x1,%eax
   308df:	82                   	nemu_trap 
   308e0:	b8 00 00 00 00       	mov    $0x0,%eax
   308e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   308e8:	c9                   	leave  
   308e9:	c3                   	ret    

000308ea <in_byte>:
   308ea:	55                   	push   %ebp
   308eb:	89 e5                	mov    %esp,%ebp
   308ed:	83 ec 14             	sub    $0x14,%esp
   308f0:	e8 02 f8 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   308f5:	05 0b c7 00 00       	add    $0xc70b,%eax
   308fa:	8b 45 08             	mov    0x8(%ebp),%eax
   308fd:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
   30901:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30904:	89 c2                	mov    %eax,%edx
   30906:	ec                   	in     (%dx),%al
   30907:	88 45 ff             	mov    %al,-0x1(%ebp)
   3090a:	8a 45 ff             	mov    -0x1(%ebp),%al
   3090d:	c9                   	leave  
   3090e:	c3                   	ret    

0003090f <init_serial>:
   3090f:	55                   	push   %ebp
   30910:	89 e5                	mov    %esp,%ebp
   30912:	e8 e0 f7 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30917:	05 e9 c6 00 00       	add    $0xc6e9,%eax
   3091c:	90                   	nop
   3091d:	5d                   	pop    %ebp
   3091e:	c3                   	ret    

0003091f <serial_idle>:
   3091f:	55                   	push   %ebp
   30920:	89 e5                	mov    %esp,%ebp
   30922:	e8 d0 f7 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30927:	05 d9 c6 00 00       	add    $0xc6d9,%eax
   3092c:	68 fd 03 00 00       	push   $0x3fd
   30931:	e8 b4 ff ff ff       	call   308ea <in_byte>
   30936:	83 c4 04             	add    $0x4,%esp
   30939:	0f b6 c0             	movzbl %al,%eax
   3093c:	83 e0 20             	and    $0x20,%eax
   3093f:	85 c0                	test   %eax,%eax
   30941:	0f 95 c0             	setne  %al
   30944:	0f b6 c0             	movzbl %al,%eax
   30947:	c9                   	leave  
   30948:	c3                   	ret    

00030949 <serial_printc>:
   30949:	55                   	push   %ebp
   3094a:	89 e5                	mov    %esp,%ebp
   3094c:	83 ec 04             	sub    $0x4,%esp
   3094f:	e8 a3 f7 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30954:	05 ac c6 00 00       	add    $0xc6ac,%eax
   30959:	8b 45 08             	mov    0x8(%ebp),%eax
   3095c:	88 45 fc             	mov    %al,-0x4(%ebp)
   3095f:	90                   	nop
   30960:	e8 ba ff ff ff       	call   3091f <serial_idle>
   30965:	85 c0                	test   %eax,%eax
   30967:	74 f7                	je     30960 <serial_printc+0x17>
   30969:	b8 01 00 00 00       	mov    $0x1,%eax
   3096e:	82                   	nemu_trap 
   3096f:	90                   	nop
   30970:	c9                   	leave  
   30971:	c3                   	ret    

00030972 <printk>:
   30972:	55                   	push   %ebp
   30973:	89 e5                	mov    %esp,%ebp
   30975:	53                   	push   %ebx
   30976:	83 ec 14             	sub    $0x14,%esp
   30979:	e8 7d f7 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   3097e:	81 c3 82 c6 00 00    	add    $0xc682,%ebx
   30984:	8d 45 0c             	lea    0xc(%ebp),%eax
   30987:	89 45 f4             	mov    %eax,-0xc(%ebp)
   3098a:	8b 45 08             	mov    0x8(%ebp),%eax
   3098d:	ff 75 f4             	pushl  -0xc(%ebp)
   30990:	50                   	push   %eax
   30991:	68 00 01 00 00       	push   $0x100
   30996:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
   3099c:	50                   	push   %eax
   3099d:	e8 0e 14 00 00       	call   31db0 <vsnprintf>
   309a2:	83 c4 10             	add    $0x10,%esp
   309a5:	89 45 f0             	mov    %eax,-0x10(%ebp)
   309a8:	8b 45 f0             	mov    -0x10(%ebp),%eax
   309ab:	83 ec 04             	sub    $0x4,%esp
   309ae:	50                   	push   %eax
   309af:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
   309b5:	50                   	push   %eax
   309b6:	6a 01                	push   $0x1
   309b8:	e8 b1 07 00 00       	call   3116e <fs_write>
   309bd:	83 c4 10             	add    $0x10,%esp
   309c0:	90                   	nop
   309c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   309c4:	c9                   	leave  
   309c5:	c3                   	ret    

000309c6 <add_irq_handle>:
   309c6:	55                   	push   %ebp
   309c7:	89 e5                	mov    %esp,%ebp
   309c9:	53                   	push   %ebx
   309ca:	83 ec 14             	sub    $0x14,%esp
   309cd:	e8 29 f7 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   309d2:	81 c3 2e c6 00 00    	add    $0xc62e,%ebx
   309d8:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
   309dc:	7e 2f                	jle    30a0d <add_irq_handle+0x47>
   309de:	83 ec 0c             	sub    $0xc,%esp
   309e1:	8d 83 5c c1 ff ff    	lea    -0x3ea4(%ebx),%eax
   309e7:	50                   	push   %eax
   309e8:	8d 83 48 c3 ff ff    	lea    -0x3cb8(%ebx),%eax
   309ee:	50                   	push   %eax
   309ef:	6a 17                	push   $0x17
   309f1:	8d 83 6f c1 ff ff    	lea    -0x3e91(%ebx),%eax
   309f7:	50                   	push   %eax
   309f8:	8d 83 84 c1 ff ff    	lea    -0x3e7c(%ebx),%eax
   309fe:	50                   	push   %eax
   309ff:	e8 6e ff ff ff       	call   30972 <printk>
   30a04:	83 c4 20             	add    $0x20,%esp
   30a07:	b8 01 00 00 00       	mov    $0x1,%eax
   30a0c:	82                   	nemu_trap 
   30a0d:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
   30a13:	83 f8 20             	cmp    $0x20,%eax
   30a16:	7e 2f                	jle    30a47 <add_irq_handle+0x81>
   30a18:	83 ec 0c             	sub    $0xc,%esp
   30a1b:	8d 83 ce c1 ff ff    	lea    -0x3e32(%ebx),%eax
   30a21:	50                   	push   %eax
   30a22:	8d 83 48 c3 ff ff    	lea    -0x3cb8(%ebx),%eax
   30a28:	50                   	push   %eax
   30a29:	6a 18                	push   $0x18
   30a2b:	8d 83 6f c1 ff ff    	lea    -0x3e91(%ebx),%eax
   30a31:	50                   	push   %eax
   30a32:	8d 83 84 c1 ff ff    	lea    -0x3e7c(%ebx),%eax
   30a38:	50                   	push   %eax
   30a39:	e8 34 ff ff ff       	call   30972 <printk>
   30a3e:	83 c4 20             	add    $0x20,%esp
   30a41:	b8 01 00 00 00       	mov    $0x1,%eax
   30a46:	82                   	nemu_trap 
   30a47:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
   30a4d:	8d 50 01             	lea    0x1(%eax),%edx
   30a50:	89 93 60 16 01 00    	mov    %edx,0x11660(%ebx)
   30a56:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
   30a5d:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
   30a63:	01 d0                	add    %edx,%eax
   30a65:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30a68:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30a6b:	8b 55 0c             	mov    0xc(%ebp),%edx
   30a6e:	89 10                	mov    %edx,(%eax)
   30a70:	8b 45 08             	mov    0x8(%ebp),%eax
   30a73:	8b 94 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%edx
   30a7a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30a7d:	89 50 04             	mov    %edx,0x4(%eax)
   30a80:	8b 45 08             	mov    0x8(%ebp),%eax
   30a83:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30a86:	89 94 83 20 16 01 00 	mov    %edx,0x11620(%ebx,%eax,4)
   30a8d:	90                   	nop
   30a8e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30a91:	c9                   	leave  
   30a92:	c3                   	ret    

00030a93 <irq_handle>:
   30a93:	55                   	push   %ebp
   30a94:	89 e5                	mov    %esp,%ebp
   30a96:	53                   	push   %ebx
   30a97:	83 ec 14             	sub    $0x14,%esp
   30a9a:	e8 5c f6 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30a9f:	81 c3 61 c5 00 00    	add    $0xc561,%ebx
   30aa5:	8b 45 08             	mov    0x8(%ebp),%eax
   30aa8:	8b 40 20             	mov    0x20(%eax),%eax
   30aab:	89 45 f0             	mov    %eax,-0x10(%ebp)
   30aae:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   30ab2:	79 2a                	jns    30ade <irq_handle+0x4b>
   30ab4:	8d 83 58 c3 ff ff    	lea    -0x3ca8(%ebx),%eax
   30aba:	50                   	push   %eax
   30abb:	6a 27                	push   $0x27
   30abd:	8d 83 6f c1 ff ff    	lea    -0x3e91(%ebx),%eax
   30ac3:	50                   	push   %eax
   30ac4:	8d 83 ec c1 ff ff    	lea    -0x3e14(%ebx),%eax
   30aca:	50                   	push   %eax
   30acb:	e8 a2 fe ff ff       	call   30972 <printk>
   30ad0:	83 c4 10             	add    $0x10,%esp
   30ad3:	b8 01 00 00 00       	mov    $0x1,%eax
   30ad8:	82                   	nemu_trap 
   30ad9:	e9 f9 00 00 00       	jmp    30bd7 <irq_handle+0x144>
   30ade:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
   30ae5:	75 13                	jne    30afa <irq_handle+0x67>
   30ae7:	83 ec 0c             	sub    $0xc,%esp
   30aea:	ff 75 08             	pushl  0x8(%ebp)
   30aed:	e8 d8 08 00 00       	call   313ca <do_syscall>
   30af2:	83 c4 10             	add    $0x10,%esp
   30af5:	e9 dd 00 00 00       	jmp    30bd7 <irq_handle+0x144>
   30afa:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
   30b01:	7f 37                	jg     30b3a <irq_handle+0xa7>
   30b03:	8b 45 08             	mov    0x8(%ebp),%eax
   30b06:	8b 40 28             	mov    0x28(%eax),%eax
   30b09:	83 ec 08             	sub    $0x8,%esp
   30b0c:	50                   	push   %eax
   30b0d:	ff 75 f0             	pushl  -0x10(%ebp)
   30b10:	8d 83 58 c3 ff ff    	lea    -0x3ca8(%ebx),%eax
   30b16:	50                   	push   %eax
   30b17:	6a 2f                	push   $0x2f
   30b19:	8d 83 6f c1 ff ff    	lea    -0x3e91(%ebx),%eax
   30b1f:	50                   	push   %eax
   30b20:	8d 83 38 c2 ff ff    	lea    -0x3dc8(%ebx),%eax
   30b26:	50                   	push   %eax
   30b27:	e8 46 fe ff ff       	call   30972 <printk>
   30b2c:	83 c4 20             	add    $0x20,%esp
   30b2f:	b8 01 00 00 00       	mov    $0x1,%eax
   30b34:	82                   	nemu_trap 
   30b35:	e9 9d 00 00 00       	jmp    30bd7 <irq_handle+0x144>
   30b3a:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
   30b41:	0f 8e 90 00 00 00    	jle    30bd7 <irq_handle+0x144>
   30b47:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30b4a:	2d e8 03 00 00       	sub    $0x3e8,%eax
   30b4f:	89 45 ec             	mov    %eax,-0x14(%ebp)
   30b52:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
   30b56:	7e 2f                	jle    30b87 <irq_handle+0xf4>
   30b58:	83 ec 0c             	sub    $0xc,%esp
   30b5b:	8d 83 92 c2 ff ff    	lea    -0x3d6e(%ebx),%eax
   30b61:	50                   	push   %eax
   30b62:	8d 83 58 c3 ff ff    	lea    -0x3ca8(%ebx),%eax
   30b68:	50                   	push   %eax
   30b69:	6a 34                	push   $0x34
   30b6b:	8d 83 6f c1 ff ff    	lea    -0x3e91(%ebx),%eax
   30b71:	50                   	push   %eax
   30b72:	8d 83 84 c1 ff ff    	lea    -0x3e7c(%ebx),%eax
   30b78:	50                   	push   %eax
   30b79:	e8 f4 fd ff ff       	call   30972 <printk>
   30b7e:	83 c4 20             	add    $0x20,%esp
   30b81:	b8 01 00 00 00       	mov    $0x1,%eax
   30b86:	82                   	nemu_trap 
   30b87:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
   30b8b:	75 25                	jne    30bb2 <irq_handle+0x11f>
   30b8d:	8d 83 58 c3 ff ff    	lea    -0x3ca8(%ebx),%eax
   30b93:	50                   	push   %eax
   30b94:	6a 36                	push   $0x36
   30b96:	8d 83 6f c1 ff ff    	lea    -0x3e91(%ebx),%eax
   30b9c:	50                   	push   %eax
   30b9d:	8d 83 a8 c2 ff ff    	lea    -0x3d58(%ebx),%eax
   30ba3:	50                   	push   %eax
   30ba4:	e8 c9 fd ff ff       	call   30972 <printk>
   30ba9:	83 c4 10             	add    $0x10,%esp
   30bac:	b8 01 00 00 00       	mov    $0x1,%eax
   30bb1:	82                   	nemu_trap 
   30bb2:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30bb5:	8b 84 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%eax
   30bbc:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30bbf:	eb 10                	jmp    30bd1 <irq_handle+0x13e>
   30bc1:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30bc4:	8b 00                	mov    (%eax),%eax
   30bc6:	ff d0                	call   *%eax
   30bc8:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30bcb:	8b 40 04             	mov    0x4(%eax),%eax
   30bce:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30bd1:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   30bd5:	75 ea                	jne    30bc1 <irq_handle+0x12e>
   30bd7:	90                   	nop
   30bd8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30bdb:	c9                   	leave  
   30bdc:	c3                   	ret    

00030bdd <out_byte>:
   30bdd:	55                   	push   %ebp
   30bde:	89 e5                	mov    %esp,%ebp
   30be0:	83 ec 08             	sub    $0x8,%esp
   30be3:	e8 0f f5 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30be8:	05 18 c4 00 00       	add    $0xc418,%eax
   30bed:	8b 45 08             	mov    0x8(%ebp),%eax
   30bf0:	8b 55 0c             	mov    0xc(%ebp),%edx
   30bf3:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   30bf7:	88 d0                	mov    %dl,%al
   30bf9:	88 45 f8             	mov    %al,-0x8(%ebp)
   30bfc:	8a 45 f8             	mov    -0x8(%ebp),%al
   30bff:	8b 55 fc             	mov    -0x4(%ebp),%edx
   30c02:	ee                   	out    %al,(%dx)
   30c03:	90                   	nop
   30c04:	c9                   	leave  
   30c05:	c3                   	ret    

00030c06 <init_i8259>:
   30c06:	55                   	push   %ebp
   30c07:	89 e5                	mov    %esp,%ebp
   30c09:	e8 e9 f4 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30c0e:	05 f2 c3 00 00       	add    $0xc3f2,%eax
   30c13:	68 ff 00 00 00       	push   $0xff
   30c18:	6a 21                	push   $0x21
   30c1a:	e8 be ff ff ff       	call   30bdd <out_byte>
   30c1f:	83 c4 08             	add    $0x8,%esp
   30c22:	68 ff 00 00 00       	push   $0xff
   30c27:	68 a1 00 00 00       	push   $0xa1
   30c2c:	e8 ac ff ff ff       	call   30bdd <out_byte>
   30c31:	83 c4 08             	add    $0x8,%esp
   30c34:	6a 11                	push   $0x11
   30c36:	6a 20                	push   $0x20
   30c38:	e8 a0 ff ff ff       	call   30bdd <out_byte>
   30c3d:	83 c4 08             	add    $0x8,%esp
   30c40:	6a 20                	push   $0x20
   30c42:	6a 21                	push   $0x21
   30c44:	e8 94 ff ff ff       	call   30bdd <out_byte>
   30c49:	83 c4 08             	add    $0x8,%esp
   30c4c:	6a 04                	push   $0x4
   30c4e:	6a 21                	push   $0x21
   30c50:	e8 88 ff ff ff       	call   30bdd <out_byte>
   30c55:	83 c4 08             	add    $0x8,%esp
   30c58:	6a 03                	push   $0x3
   30c5a:	6a 21                	push   $0x21
   30c5c:	e8 7c ff ff ff       	call   30bdd <out_byte>
   30c61:	83 c4 08             	add    $0x8,%esp
   30c64:	6a 11                	push   $0x11
   30c66:	68 a0 00 00 00       	push   $0xa0
   30c6b:	e8 6d ff ff ff       	call   30bdd <out_byte>
   30c70:	83 c4 08             	add    $0x8,%esp
   30c73:	6a 28                	push   $0x28
   30c75:	68 a1 00 00 00       	push   $0xa1
   30c7a:	e8 5e ff ff ff       	call   30bdd <out_byte>
   30c7f:	83 c4 08             	add    $0x8,%esp
   30c82:	6a 02                	push   $0x2
   30c84:	68 a1 00 00 00       	push   $0xa1
   30c89:	e8 4f ff ff ff       	call   30bdd <out_byte>
   30c8e:	83 c4 08             	add    $0x8,%esp
   30c91:	6a 03                	push   $0x3
   30c93:	68 a1 00 00 00       	push   $0xa1
   30c98:	e8 40 ff ff ff       	call   30bdd <out_byte>
   30c9d:	83 c4 08             	add    $0x8,%esp
   30ca0:	6a 68                	push   $0x68
   30ca2:	6a 20                	push   $0x20
   30ca4:	e8 34 ff ff ff       	call   30bdd <out_byte>
   30ca9:	83 c4 08             	add    $0x8,%esp
   30cac:	6a 0a                	push   $0xa
   30cae:	6a 20                	push   $0x20
   30cb0:	e8 28 ff ff ff       	call   30bdd <out_byte>
   30cb5:	83 c4 08             	add    $0x8,%esp
   30cb8:	6a 68                	push   $0x68
   30cba:	68 a0 00 00 00       	push   $0xa0
   30cbf:	e8 19 ff ff ff       	call   30bdd <out_byte>
   30cc4:	83 c4 08             	add    $0x8,%esp
   30cc7:	6a 0a                	push   $0xa
   30cc9:	68 a0 00 00 00       	push   $0xa0
   30cce:	e8 0a ff ff ff       	call   30bdd <out_byte>
   30cd3:	83 c4 08             	add    $0x8,%esp
   30cd6:	90                   	nop
   30cd7:	c9                   	leave  
   30cd8:	c3                   	ret    

00030cd9 <write_idtr>:
   30cd9:	55                   	push   %ebp
   30cda:	89 e5                	mov    %esp,%ebp
   30cdc:	e8 16 f4 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30ce1:	05 1f c3 00 00       	add    $0xc31f,%eax
   30ce6:	8b 55 0c             	mov    0xc(%ebp),%edx
   30ce9:	4a                   	dec    %edx
   30cea:	66 89 90 80 1e 01 00 	mov    %dx,0x11e80(%eax)
   30cf1:	8b 55 08             	mov    0x8(%ebp),%edx
   30cf4:	66 89 90 82 1e 01 00 	mov    %dx,0x11e82(%eax)
   30cfb:	8b 55 08             	mov    0x8(%ebp),%edx
   30cfe:	c1 ea 10             	shr    $0x10,%edx
   30d01:	66 89 90 84 1e 01 00 	mov    %dx,0x11e84(%eax)
   30d08:	8d 80 80 1e 01 00    	lea    0x11e80(%eax),%eax
   30d0e:	0f 01 18             	lidtl  (%eax)
   30d11:	90                   	nop
   30d12:	5d                   	pop    %ebp
   30d13:	c3                   	ret    

00030d14 <sti>:
   30d14:	55                   	push   %ebp
   30d15:	89 e5                	mov    %esp,%ebp
   30d17:	e8 db f3 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30d1c:	05 e4 c2 00 00       	add    $0xc2e4,%eax
   30d21:	fb                   	sti    
   30d22:	90                   	nop
   30d23:	5d                   	pop    %ebp
   30d24:	c3                   	ret    

00030d25 <set_intr>:
   30d25:	55                   	push   %ebp
   30d26:	89 e5                	mov    %esp,%ebp
   30d28:	e8 ca f3 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30d2d:	05 d3 c2 00 00       	add    $0xc2d3,%eax
   30d32:	8b 45 10             	mov    0x10(%ebp),%eax
   30d35:	8b 55 08             	mov    0x8(%ebp),%edx
   30d38:	66 89 02             	mov    %ax,(%edx)
   30d3b:	8b 45 0c             	mov    0xc(%ebp),%eax
   30d3e:	8b 55 08             	mov    0x8(%ebp),%edx
   30d41:	66 89 42 02          	mov    %ax,0x2(%edx)
   30d45:	8b 45 08             	mov    0x8(%ebp),%eax
   30d48:	c6 40 04 00          	movb   $0x0,0x4(%eax)
   30d4c:	8b 45 08             	mov    0x8(%ebp),%eax
   30d4f:	8a 50 05             	mov    0x5(%eax),%dl
   30d52:	83 e2 f0             	and    $0xfffffff0,%edx
   30d55:	83 ca 0e             	or     $0xe,%edx
   30d58:	88 50 05             	mov    %dl,0x5(%eax)
   30d5b:	8b 45 08             	mov    0x8(%ebp),%eax
   30d5e:	8a 50 05             	mov    0x5(%eax),%dl
   30d61:	83 e2 ef             	and    $0xffffffef,%edx
   30d64:	88 50 05             	mov    %dl,0x5(%eax)
   30d67:	8b 45 14             	mov    0x14(%ebp),%eax
   30d6a:	88 c2                	mov    %al,%dl
   30d6c:	83 e2 03             	and    $0x3,%edx
   30d6f:	8b 45 08             	mov    0x8(%ebp),%eax
   30d72:	83 e2 03             	and    $0x3,%edx
   30d75:	88 d1                	mov    %dl,%cl
   30d77:	c1 e1 05             	shl    $0x5,%ecx
   30d7a:	8a 50 05             	mov    0x5(%eax),%dl
   30d7d:	83 e2 9f             	and    $0xffffff9f,%edx
   30d80:	09 ca                	or     %ecx,%edx
   30d82:	88 50 05             	mov    %dl,0x5(%eax)
   30d85:	8b 45 08             	mov    0x8(%ebp),%eax
   30d88:	8a 50 05             	mov    0x5(%eax),%dl
   30d8b:	83 ca 80             	or     $0xffffff80,%edx
   30d8e:	88 50 05             	mov    %dl,0x5(%eax)
   30d91:	8b 45 10             	mov    0x10(%ebp),%eax
   30d94:	c1 e8 10             	shr    $0x10,%eax
   30d97:	8b 55 08             	mov    0x8(%ebp),%edx
   30d9a:	66 89 42 06          	mov    %ax,0x6(%edx)
   30d9e:	90                   	nop
   30d9f:	5d                   	pop    %ebp
   30da0:	c3                   	ret    

00030da1 <set_trap>:
   30da1:	55                   	push   %ebp
   30da2:	89 e5                	mov    %esp,%ebp
   30da4:	e8 4e f3 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30da9:	05 57 c2 00 00       	add    $0xc257,%eax
   30dae:	8b 45 10             	mov    0x10(%ebp),%eax
   30db1:	8b 55 08             	mov    0x8(%ebp),%edx
   30db4:	66 89 02             	mov    %ax,(%edx)
   30db7:	8b 45 0c             	mov    0xc(%ebp),%eax
   30dba:	8b 55 08             	mov    0x8(%ebp),%edx
   30dbd:	66 89 42 02          	mov    %ax,0x2(%edx)
   30dc1:	8b 45 08             	mov    0x8(%ebp),%eax
   30dc4:	c6 40 04 00          	movb   $0x0,0x4(%eax)
   30dc8:	8b 45 08             	mov    0x8(%ebp),%eax
   30dcb:	8a 50 05             	mov    0x5(%eax),%dl
   30dce:	83 ca 0f             	or     $0xf,%edx
   30dd1:	88 50 05             	mov    %dl,0x5(%eax)
   30dd4:	8b 45 08             	mov    0x8(%ebp),%eax
   30dd7:	8a 50 05             	mov    0x5(%eax),%dl
   30dda:	83 e2 ef             	and    $0xffffffef,%edx
   30ddd:	88 50 05             	mov    %dl,0x5(%eax)
   30de0:	8b 45 14             	mov    0x14(%ebp),%eax
   30de3:	88 c2                	mov    %al,%dl
   30de5:	83 e2 03             	and    $0x3,%edx
   30de8:	8b 45 08             	mov    0x8(%ebp),%eax
   30deb:	83 e2 03             	and    $0x3,%edx
   30dee:	88 d1                	mov    %dl,%cl
   30df0:	c1 e1 05             	shl    $0x5,%ecx
   30df3:	8a 50 05             	mov    0x5(%eax),%dl
   30df6:	83 e2 9f             	and    $0xffffff9f,%edx
   30df9:	09 ca                	or     %ecx,%edx
   30dfb:	88 50 05             	mov    %dl,0x5(%eax)
   30dfe:	8b 45 08             	mov    0x8(%ebp),%eax
   30e01:	8a 50 05             	mov    0x5(%eax),%dl
   30e04:	83 ca 80             	or     $0xffffff80,%edx
   30e07:	88 50 05             	mov    %dl,0x5(%eax)
   30e0a:	8b 45 10             	mov    0x10(%ebp),%eax
   30e0d:	c1 e8 10             	shr    $0x10,%eax
   30e10:	8b 55 08             	mov    0x8(%ebp),%edx
   30e13:	66 89 42 06          	mov    %ax,0x6(%edx)
   30e17:	90                   	nop
   30e18:	5d                   	pop    %ebp
   30e19:	c3                   	ret    

00030e1a <init_idt>:
   30e1a:	55                   	push   %ebp
   30e1b:	89 e5                	mov    %esp,%ebp
   30e1d:	53                   	push   %ebx
   30e1e:	83 ec 10             	sub    $0x10,%esp
   30e21:	e8 d5 f2 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30e26:	81 c3 da c1 00 00    	add    $0xc1da,%ebx
   30e2c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   30e33:	eb 2b                	jmp    30e60 <init_idt+0x46>
   30e35:	c7 c0 80 00 03 00    	mov    $0x30080,%eax
   30e3b:	89 c2                	mov    %eax,%edx
   30e3d:	8b 45 f8             	mov    -0x8(%ebp),%eax
   30e40:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
   30e47:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
   30e4d:	01 c8                	add    %ecx,%eax
   30e4f:	6a 00                	push   $0x0
   30e51:	52                   	push   %edx
   30e52:	6a 08                	push   $0x8
   30e54:	50                   	push   %eax
   30e55:	e8 47 ff ff ff       	call   30da1 <set_trap>
   30e5a:	83 c4 10             	add    $0x10,%esp
   30e5d:	ff 45 f8             	incl   -0x8(%ebp)
   30e60:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
   30e67:	7e cc                	jle    30e35 <init_idt+0x1b>
   30e69:	c7 c0 05 00 03 00    	mov    $0x30005,%eax
   30e6f:	6a 00                	push   $0x0
   30e71:	50                   	push   %eax
   30e72:	6a 08                	push   $0x8
   30e74:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
   30e7a:	50                   	push   %eax
   30e7b:	e8 21 ff ff ff       	call   30da1 <set_trap>
   30e80:	83 c4 10             	add    $0x10,%esp
   30e83:	c7 c0 0b 00 03 00    	mov    $0x3000b,%eax
   30e89:	89 c2                	mov    %eax,%edx
   30e8b:	8d 83 88 16 01 00    	lea    0x11688(%ebx),%eax
   30e91:	6a 00                	push   $0x0
   30e93:	52                   	push   %edx
   30e94:	6a 08                	push   $0x8
   30e96:	50                   	push   %eax
   30e97:	e8 05 ff ff ff       	call   30da1 <set_trap>
   30e9c:	83 c4 10             	add    $0x10,%esp
   30e9f:	c7 c0 11 00 03 00    	mov    $0x30011,%eax
   30ea5:	89 c2                	mov    %eax,%edx
   30ea7:	8d 83 90 16 01 00    	lea    0x11690(%ebx),%eax
   30ead:	6a 00                	push   $0x0
   30eaf:	52                   	push   %edx
   30eb0:	6a 08                	push   $0x8
   30eb2:	50                   	push   %eax
   30eb3:	e8 e9 fe ff ff       	call   30da1 <set_trap>
   30eb8:	83 c4 10             	add    $0x10,%esp
   30ebb:	c7 c0 17 00 03 00    	mov    $0x30017,%eax
   30ec1:	89 c2                	mov    %eax,%edx
   30ec3:	8d 83 98 16 01 00    	lea    0x11698(%ebx),%eax
   30ec9:	6a 00                	push   $0x0
   30ecb:	52                   	push   %edx
   30ecc:	6a 08                	push   $0x8
   30ece:	50                   	push   %eax
   30ecf:	e8 cd fe ff ff       	call   30da1 <set_trap>
   30ed4:	83 c4 10             	add    $0x10,%esp
   30ed7:	c7 c0 1d 00 03 00    	mov    $0x3001d,%eax
   30edd:	89 c2                	mov    %eax,%edx
   30edf:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
   30ee5:	6a 00                	push   $0x0
   30ee7:	52                   	push   %edx
   30ee8:	6a 08                	push   $0x8
   30eea:	50                   	push   %eax
   30eeb:	e8 b1 fe ff ff       	call   30da1 <set_trap>
   30ef0:	83 c4 10             	add    $0x10,%esp
   30ef3:	c7 c0 23 00 03 00    	mov    $0x30023,%eax
   30ef9:	89 c2                	mov    %eax,%edx
   30efb:	8d 83 a8 16 01 00    	lea    0x116a8(%ebx),%eax
   30f01:	6a 00                	push   $0x0
   30f03:	52                   	push   %edx
   30f04:	6a 08                	push   $0x8
   30f06:	50                   	push   %eax
   30f07:	e8 95 fe ff ff       	call   30da1 <set_trap>
   30f0c:	83 c4 10             	add    $0x10,%esp
   30f0f:	c7 c0 29 00 03 00    	mov    $0x30029,%eax
   30f15:	89 c2                	mov    %eax,%edx
   30f17:	8d 83 b0 16 01 00    	lea    0x116b0(%ebx),%eax
   30f1d:	6a 00                	push   $0x0
   30f1f:	52                   	push   %edx
   30f20:	6a 08                	push   $0x8
   30f22:	50                   	push   %eax
   30f23:	e8 79 fe ff ff       	call   30da1 <set_trap>
   30f28:	83 c4 10             	add    $0x10,%esp
   30f2b:	c7 c0 2f 00 03 00    	mov    $0x3002f,%eax
   30f31:	89 c2                	mov    %eax,%edx
   30f33:	8d 83 b8 16 01 00    	lea    0x116b8(%ebx),%eax
   30f39:	6a 00                	push   $0x0
   30f3b:	52                   	push   %edx
   30f3c:	6a 08                	push   $0x8
   30f3e:	50                   	push   %eax
   30f3f:	e8 5d fe ff ff       	call   30da1 <set_trap>
   30f44:	83 c4 10             	add    $0x10,%esp
   30f47:	c7 c0 35 00 03 00    	mov    $0x30035,%eax
   30f4d:	89 c2                	mov    %eax,%edx
   30f4f:	8d 83 c0 16 01 00    	lea    0x116c0(%ebx),%eax
   30f55:	6a 00                	push   $0x0
   30f57:	52                   	push   %edx
   30f58:	6a 08                	push   $0x8
   30f5a:	50                   	push   %eax
   30f5b:	e8 41 fe ff ff       	call   30da1 <set_trap>
   30f60:	83 c4 10             	add    $0x10,%esp
   30f63:	c7 c0 39 00 03 00    	mov    $0x30039,%eax
   30f69:	89 c2                	mov    %eax,%edx
   30f6b:	8d 83 c8 16 01 00    	lea    0x116c8(%ebx),%eax
   30f71:	6a 00                	push   $0x0
   30f73:	52                   	push   %edx
   30f74:	6a 08                	push   $0x8
   30f76:	50                   	push   %eax
   30f77:	e8 25 fe ff ff       	call   30da1 <set_trap>
   30f7c:	83 c4 10             	add    $0x10,%esp
   30f7f:	c7 c0 3f 00 03 00    	mov    $0x3003f,%eax
   30f85:	89 c2                	mov    %eax,%edx
   30f87:	8d 83 d0 16 01 00    	lea    0x116d0(%ebx),%eax
   30f8d:	6a 00                	push   $0x0
   30f8f:	52                   	push   %edx
   30f90:	6a 08                	push   $0x8
   30f92:	50                   	push   %eax
   30f93:	e8 09 fe ff ff       	call   30da1 <set_trap>
   30f98:	83 c4 10             	add    $0x10,%esp
   30f9b:	c7 c0 43 00 03 00    	mov    $0x30043,%eax
   30fa1:	89 c2                	mov    %eax,%edx
   30fa3:	8d 83 d8 16 01 00    	lea    0x116d8(%ebx),%eax
   30fa9:	6a 00                	push   $0x0
   30fab:	52                   	push   %edx
   30fac:	6a 08                	push   $0x8
   30fae:	50                   	push   %eax
   30faf:	e8 ed fd ff ff       	call   30da1 <set_trap>
   30fb4:	83 c4 10             	add    $0x10,%esp
   30fb7:	c7 c0 47 00 03 00    	mov    $0x30047,%eax
   30fbd:	89 c2                	mov    %eax,%edx
   30fbf:	8d 83 e0 16 01 00    	lea    0x116e0(%ebx),%eax
   30fc5:	6a 00                	push   $0x0
   30fc7:	52                   	push   %edx
   30fc8:	6a 08                	push   $0x8
   30fca:	50                   	push   %eax
   30fcb:	e8 d1 fd ff ff       	call   30da1 <set_trap>
   30fd0:	83 c4 10             	add    $0x10,%esp
   30fd3:	c7 c0 4b 00 03 00    	mov    $0x3004b,%eax
   30fd9:	89 c2                	mov    %eax,%edx
   30fdb:	8d 83 e8 16 01 00    	lea    0x116e8(%ebx),%eax
   30fe1:	6a 00                	push   $0x0
   30fe3:	52                   	push   %edx
   30fe4:	6a 08                	push   $0x8
   30fe6:	50                   	push   %eax
   30fe7:	e8 b5 fd ff ff       	call   30da1 <set_trap>
   30fec:	83 c4 10             	add    $0x10,%esp
   30fef:	c7 c0 4f 00 03 00    	mov    $0x3004f,%eax
   30ff5:	89 c2                	mov    %eax,%edx
   30ff7:	8d 83 f0 16 01 00    	lea    0x116f0(%ebx),%eax
   30ffd:	6a 00                	push   $0x0
   30fff:	52                   	push   %edx
   31000:	6a 08                	push   $0x8
   31002:	50                   	push   %eax
   31003:	e8 99 fd ff ff       	call   30da1 <set_trap>
   31008:	83 c4 10             	add    $0x10,%esp
   3100b:	c7 c0 53 00 03 00    	mov    $0x30053,%eax
   31011:	89 c2                	mov    %eax,%edx
   31013:	8d 83 80 1a 01 00    	lea    0x11a80(%ebx),%eax
   31019:	6a 03                	push   $0x3
   3101b:	52                   	push   %edx
   3101c:	6a 08                	push   $0x8
   3101e:	50                   	push   %eax
   3101f:	e8 7d fd ff ff       	call   30da1 <set_trap>
   31024:	83 c4 10             	add    $0x10,%esp
   31027:	c7 c0 5c 00 03 00    	mov    $0x3005c,%eax
   3102d:	89 c2                	mov    %eax,%edx
   3102f:	8d 83 80 17 01 00    	lea    0x11780(%ebx),%eax
   31035:	6a 00                	push   $0x0
   31037:	52                   	push   %edx
   31038:	6a 08                	push   $0x8
   3103a:	50                   	push   %eax
   3103b:	e8 e5 fc ff ff       	call   30d25 <set_intr>
   31040:	83 c4 10             	add    $0x10,%esp
   31043:	c7 c0 65 00 03 00    	mov    $0x30065,%eax
   31049:	89 c2                	mov    %eax,%edx
   3104b:	8d 83 88 17 01 00    	lea    0x11788(%ebx),%eax
   31051:	6a 00                	push   $0x0
   31053:	52                   	push   %edx
   31054:	6a 08                	push   $0x8
   31056:	50                   	push   %eax
   31057:	e8 c9 fc ff ff       	call   30d25 <set_intr>
   3105c:	83 c4 10             	add    $0x10,%esp
   3105f:	c7 c0 6e 00 03 00    	mov    $0x3006e,%eax
   31065:	89 c2                	mov    %eax,%edx
   31067:	8d 83 90 17 01 00    	lea    0x11790(%ebx),%eax
   3106d:	6a 00                	push   $0x0
   3106f:	52                   	push   %edx
   31070:	6a 08                	push   $0x8
   31072:	50                   	push   %eax
   31073:	e8 ad fc ff ff       	call   30d25 <set_intr>
   31078:	83 c4 10             	add    $0x10,%esp
   3107b:	c7 c0 77 00 03 00    	mov    $0x30077,%eax
   31081:	89 c2                	mov    %eax,%edx
   31083:	8d 83 f0 17 01 00    	lea    0x117f0(%ebx),%eax
   31089:	6a 00                	push   $0x0
   3108b:	52                   	push   %edx
   3108c:	6a 08                	push   $0x8
   3108e:	50                   	push   %eax
   3108f:	e8 91 fc ff ff       	call   30d25 <set_intr>
   31094:	83 c4 10             	add    $0x10,%esp
   31097:	68 00 08 00 00       	push   $0x800
   3109c:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
   310a2:	50                   	push   %eax
   310a3:	e8 31 fc ff ff       	call   30cd9 <write_idtr>
   310a8:	83 c4 08             	add    $0x8,%esp
   310ab:	e8 64 fc ff ff       	call   30d14 <sti>
   310b0:	90                   	nop
   310b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   310b4:	c9                   	leave  
   310b5:	c3                   	ret    

000310b6 <fs_open>:
   310b6:	55                   	push   %ebp
   310b7:	89 e5                	mov    %esp,%ebp
   310b9:	53                   	push   %ebx
   310ba:	83 ec 04             	sub    $0x4,%esp
   310bd:	e8 35 f0 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   310c2:	05 3e bf 00 00       	add    $0xbf3e,%eax
   310c7:	8d 90 00 c6 ff ff    	lea    -0x3a00(%eax),%edx
   310cd:	52                   	push   %edx
   310ce:	6a 28                	push   $0x28
   310d0:	8d 90 37 c4 ff ff    	lea    -0x3bc9(%eax),%edx
   310d6:	52                   	push   %edx
   310d7:	8d 90 44 c4 ff ff    	lea    -0x3bbc(%eax),%edx
   310dd:	52                   	push   %edx
   310de:	89 c3                	mov    %eax,%ebx
   310e0:	e8 8d f8 ff ff       	call   30972 <printk>
   310e5:	83 c4 10             	add    $0x10,%esp
   310e8:	b8 01 00 00 00       	mov    $0x1,%eax
   310ed:	82                   	nemu_trap 
   310ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   310f3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   310f6:	c9                   	leave  
   310f7:	c3                   	ret    

000310f8 <fs_read>:
   310f8:	55                   	push   %ebp
   310f9:	89 e5                	mov    %esp,%ebp
   310fb:	53                   	push   %ebx
   310fc:	83 ec 04             	sub    $0x4,%esp
   310ff:	e8 f7 ef ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   31104:	81 c3 fc be 00 00    	add    $0xbefc,%ebx
   3110a:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   3110e:	7f 2f                	jg     3113f <fs_read+0x47>
   31110:	83 ec 0c             	sub    $0xc,%esp
   31113:	8d 83 9a c4 ff ff    	lea    -0x3b66(%ebx),%eax
   31119:	50                   	push   %eax
   3111a:	8d 83 08 c6 ff ff    	lea    -0x39f8(%ebx),%eax
   31120:	50                   	push   %eax
   31121:	6a 2e                	push   $0x2e
   31123:	8d 83 37 c4 ff ff    	lea    -0x3bc9(%ebx),%eax
   31129:	50                   	push   %eax
   3112a:	8d 83 a4 c4 ff ff    	lea    -0x3b5c(%ebx),%eax
   31130:	50                   	push   %eax
   31131:	e8 3c f8 ff ff       	call   30972 <printk>
   31136:	83 c4 20             	add    $0x20,%esp
   31139:	b8 01 00 00 00       	mov    $0x1,%eax
   3113e:	82                   	nemu_trap 
   3113f:	8d 83 08 c6 ff ff    	lea    -0x39f8(%ebx),%eax
   31145:	50                   	push   %eax
   31146:	6a 2f                	push   $0x2f
   31148:	8d 83 37 c4 ff ff    	lea    -0x3bc9(%ebx),%eax
   3114e:	50                   	push   %eax
   3114f:	8d 83 f0 c4 ff ff    	lea    -0x3b10(%ebx),%eax
   31155:	50                   	push   %eax
   31156:	e8 17 f8 ff ff       	call   30972 <printk>
   3115b:	83 c4 10             	add    $0x10,%esp
   3115e:	b8 01 00 00 00       	mov    $0x1,%eax
   31163:	82                   	nemu_trap 
   31164:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   31169:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3116c:	c9                   	leave  
   3116d:	c3                   	ret    

0003116e <fs_write>:
   3116e:	55                   	push   %ebp
   3116f:	89 e5                	mov    %esp,%ebp
   31171:	53                   	push   %ebx
   31172:	83 ec 04             	sub    $0x4,%esp
   31175:	e8 7d ef ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3117a:	05 86 be 00 00       	add    $0xbe86,%eax
   3117f:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   31183:	7e 31                	jle    311b6 <fs_write+0x48>
   31185:	83 ec 0c             	sub    $0xc,%esp
   31188:	8d 90 46 c5 ff ff    	lea    -0x3aba(%eax),%edx
   3118e:	52                   	push   %edx
   3118f:	8d 90 10 c6 ff ff    	lea    -0x39f0(%eax),%edx
   31195:	52                   	push   %edx
   31196:	6a 35                	push   $0x35
   31198:	8d 90 37 c4 ff ff    	lea    -0x3bc9(%eax),%edx
   3119e:	52                   	push   %edx
   3119f:	8d 90 a4 c4 ff ff    	lea    -0x3b5c(%eax),%edx
   311a5:	52                   	push   %edx
   311a6:	89 c3                	mov    %eax,%ebx
   311a8:	e8 c5 f7 ff ff       	call   30972 <printk>
   311ad:	83 c4 20             	add    $0x20,%esp
   311b0:	b8 01 00 00 00       	mov    $0x1,%eax
   311b5:	82                   	nemu_trap 
   311b6:	b8 04 00 00 00       	mov    $0x4,%eax
   311bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
   311be:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   311c1:	8b 55 10             	mov    0x10(%ebp),%edx
   311c4:	82                   	nemu_trap 
   311c5:	89 45 10             	mov    %eax,0x10(%ebp)
   311c8:	8b 45 10             	mov    0x10(%ebp),%eax
   311cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   311ce:	c9                   	leave  
   311cf:	c3                   	ret    

000311d0 <fs_lseek>:
   311d0:	55                   	push   %ebp
   311d1:	89 e5                	mov    %esp,%ebp
   311d3:	53                   	push   %ebx
   311d4:	83 ec 04             	sub    $0x4,%esp
   311d7:	e8 1b ef ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   311dc:	05 24 be 00 00       	add    $0xbe24,%eax
   311e1:	8d 90 1c c6 ff ff    	lea    -0x39e4(%eax),%edx
   311e7:	52                   	push   %edx
   311e8:	6a 48                	push   $0x48
   311ea:	8d 90 37 c4 ff ff    	lea    -0x3bc9(%eax),%edx
   311f0:	52                   	push   %edx
   311f1:	8d 90 50 c5 ff ff    	lea    -0x3ab0(%eax),%edx
   311f7:	52                   	push   %edx
   311f8:	89 c3                	mov    %eax,%ebx
   311fa:	e8 73 f7 ff ff       	call   30972 <printk>
   311ff:	83 c4 10             	add    $0x10,%esp
   31202:	b8 01 00 00 00       	mov    $0x1,%eax
   31207:	82                   	nemu_trap 
   31208:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   3120d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31210:	c9                   	leave  
   31211:	c3                   	ret    

00031212 <fs_close>:
   31212:	55                   	push   %ebp
   31213:	89 e5                	mov    %esp,%ebp
   31215:	53                   	push   %ebx
   31216:	83 ec 04             	sub    $0x4,%esp
   31219:	e8 d9 ee ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3121e:	05 e2 bd 00 00       	add    $0xbde2,%eax
   31223:	8d 90 28 c6 ff ff    	lea    -0x39d8(%eax),%edx
   31229:	52                   	push   %edx
   3122a:	6a 4e                	push   $0x4e
   3122c:	8d 90 37 c4 ff ff    	lea    -0x3bc9(%eax),%edx
   31232:	52                   	push   %edx
   31233:	8d 90 a8 c5 ff ff    	lea    -0x3a58(%eax),%edx
   31239:	52                   	push   %edx
   3123a:	89 c3                	mov    %eax,%ebx
   3123c:	e8 31 f7 ff ff       	call   30972 <printk>
   31241:	83 c4 10             	add    $0x10,%esp
   31244:	b8 01 00 00 00       	mov    $0x1,%eax
   31249:	82                   	nemu_trap 
   3124a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   3124f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31252:	c9                   	leave  
   31253:	c3                   	ret    

00031254 <sti>:
   31254:	55                   	push   %ebp
   31255:	89 e5                	mov    %esp,%ebp
   31257:	e8 9b ee ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3125c:	05 a4 bd 00 00       	add    $0xbda4,%eax
   31261:	fb                   	sti    
   31262:	90                   	nop
   31263:	5d                   	pop    %ebp
   31264:	c3                   	ret    

00031265 <cli>:
   31265:	55                   	push   %ebp
   31266:	89 e5                	mov    %esp,%ebp
   31268:	e8 8a ee ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3126d:	05 93 bd 00 00       	add    $0xbd93,%eax
   31272:	fa                   	cli    
   31273:	90                   	nop
   31274:	5d                   	pop    %ebp
   31275:	c3                   	ret    

00031276 <sys_brk>:
   31276:	55                   	push   %ebp
   31277:	89 e5                	mov    %esp,%ebp
   31279:	e8 79 ee ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3127e:	05 82 bd 00 00       	add    $0xbd82,%eax
   31283:	8b 45 08             	mov    0x8(%ebp),%eax
   31286:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
   3128d:	90                   	nop
   3128e:	5d                   	pop    %ebp
   3128f:	c3                   	ret    

00031290 <sys_open>:
   31290:	55                   	push   %ebp
   31291:	89 e5                	mov    %esp,%ebp
   31293:	53                   	push   %ebx
   31294:	83 ec 04             	sub    $0x4,%esp
   31297:	e8 5b ee ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3129c:	05 64 bd 00 00       	add    $0xbd64,%eax
   312a1:	8b 55 08             	mov    0x8(%ebp),%edx
   312a4:	8b 52 18             	mov    0x18(%edx),%edx
   312a7:	89 d1                	mov    %edx,%ecx
   312a9:	8b 55 08             	mov    0x8(%ebp),%edx
   312ac:	8b 52 10             	mov    0x10(%edx),%edx
   312af:	83 ec 08             	sub    $0x8,%esp
   312b2:	51                   	push   %ecx
   312b3:	52                   	push   %edx
   312b4:	89 c3                	mov    %eax,%ebx
   312b6:	e8 fb fd ff ff       	call   310b6 <fs_open>
   312bb:	83 c4 10             	add    $0x10,%esp
   312be:	89 c2                	mov    %eax,%edx
   312c0:	8b 45 08             	mov    0x8(%ebp),%eax
   312c3:	89 50 1c             	mov    %edx,0x1c(%eax)
   312c6:	90                   	nop
   312c7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   312ca:	c9                   	leave  
   312cb:	c3                   	ret    

000312cc <sys_read>:
   312cc:	55                   	push   %ebp
   312cd:	89 e5                	mov    %esp,%ebp
   312cf:	53                   	push   %ebx
   312d0:	83 ec 04             	sub    $0x4,%esp
   312d3:	e8 1f ee ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   312d8:	05 28 bd 00 00       	add    $0xbd28,%eax
   312dd:	8b 55 08             	mov    0x8(%ebp),%edx
   312e0:	8b 52 14             	mov    0x14(%edx),%edx
   312e3:	8b 4d 08             	mov    0x8(%ebp),%ecx
   312e6:	8b 49 18             	mov    0x18(%ecx),%ecx
   312e9:	89 cb                	mov    %ecx,%ebx
   312eb:	8b 4d 08             	mov    0x8(%ebp),%ecx
   312ee:	8b 49 10             	mov    0x10(%ecx),%ecx
   312f1:	83 ec 04             	sub    $0x4,%esp
   312f4:	52                   	push   %edx
   312f5:	53                   	push   %ebx
   312f6:	51                   	push   %ecx
   312f7:	89 c3                	mov    %eax,%ebx
   312f9:	e8 fa fd ff ff       	call   310f8 <fs_read>
   312fe:	83 c4 10             	add    $0x10,%esp
   31301:	89 c2                	mov    %eax,%edx
   31303:	8b 45 08             	mov    0x8(%ebp),%eax
   31306:	89 50 1c             	mov    %edx,0x1c(%eax)
   31309:	90                   	nop
   3130a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3130d:	c9                   	leave  
   3130e:	c3                   	ret    

0003130f <sys_write>:
   3130f:	55                   	push   %ebp
   31310:	89 e5                	mov    %esp,%ebp
   31312:	53                   	push   %ebx
   31313:	83 ec 04             	sub    $0x4,%esp
   31316:	e8 dc ed ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3131b:	05 e5 bc 00 00       	add    $0xbce5,%eax
   31320:	8b 55 08             	mov    0x8(%ebp),%edx
   31323:	8b 52 14             	mov    0x14(%edx),%edx
   31326:	8b 4d 08             	mov    0x8(%ebp),%ecx
   31329:	8b 49 18             	mov    0x18(%ecx),%ecx
   3132c:	89 cb                	mov    %ecx,%ebx
   3132e:	8b 4d 08             	mov    0x8(%ebp),%ecx
   31331:	8b 49 10             	mov    0x10(%ecx),%ecx
   31334:	83 ec 04             	sub    $0x4,%esp
   31337:	52                   	push   %edx
   31338:	53                   	push   %ebx
   31339:	51                   	push   %ecx
   3133a:	89 c3                	mov    %eax,%ebx
   3133c:	e8 2d fe ff ff       	call   3116e <fs_write>
   31341:	83 c4 10             	add    $0x10,%esp
   31344:	89 c2                	mov    %eax,%edx
   31346:	8b 45 08             	mov    0x8(%ebp),%eax
   31349:	89 50 1c             	mov    %edx,0x1c(%eax)
   3134c:	90                   	nop
   3134d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31350:	c9                   	leave  
   31351:	c3                   	ret    

00031352 <sys_lseek>:
   31352:	55                   	push   %ebp
   31353:	89 e5                	mov    %esp,%ebp
   31355:	53                   	push   %ebx
   31356:	83 ec 04             	sub    $0x4,%esp
   31359:	e8 99 ed ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3135e:	05 a2 bc 00 00       	add    $0xbca2,%eax
   31363:	8b 55 08             	mov    0x8(%ebp),%edx
   31366:	8b 52 14             	mov    0x14(%edx),%edx
   31369:	89 d3                	mov    %edx,%ebx
   3136b:	8b 55 08             	mov    0x8(%ebp),%edx
   3136e:	8b 52 18             	mov    0x18(%edx),%edx
   31371:	89 d1                	mov    %edx,%ecx
   31373:	8b 55 08             	mov    0x8(%ebp),%edx
   31376:	8b 52 10             	mov    0x10(%edx),%edx
   31379:	83 ec 04             	sub    $0x4,%esp
   3137c:	53                   	push   %ebx
   3137d:	51                   	push   %ecx
   3137e:	52                   	push   %edx
   3137f:	89 c3                	mov    %eax,%ebx
   31381:	e8 4a fe ff ff       	call   311d0 <fs_lseek>
   31386:	83 c4 10             	add    $0x10,%esp
   31389:	89 c2                	mov    %eax,%edx
   3138b:	8b 45 08             	mov    0x8(%ebp),%eax
   3138e:	89 50 1c             	mov    %edx,0x1c(%eax)
   31391:	90                   	nop
   31392:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31395:	c9                   	leave  
   31396:	c3                   	ret    

00031397 <sys_close>:
   31397:	55                   	push   %ebp
   31398:	89 e5                	mov    %esp,%ebp
   3139a:	53                   	push   %ebx
   3139b:	83 ec 04             	sub    $0x4,%esp
   3139e:	e8 54 ed ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   313a3:	05 5d bc 00 00       	add    $0xbc5d,%eax
   313a8:	8b 55 08             	mov    0x8(%ebp),%edx
   313ab:	8b 52 10             	mov    0x10(%edx),%edx
   313ae:	83 ec 0c             	sub    $0xc,%esp
   313b1:	52                   	push   %edx
   313b2:	89 c3                	mov    %eax,%ebx
   313b4:	e8 59 fe ff ff       	call   31212 <fs_close>
   313b9:	83 c4 10             	add    $0x10,%esp
   313bc:	89 c2                	mov    %eax,%edx
   313be:	8b 45 08             	mov    0x8(%ebp),%eax
   313c1:	89 50 1c             	mov    %edx,0x1c(%eax)
   313c4:	90                   	nop
   313c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   313c8:	c9                   	leave  
   313c9:	c3                   	ret    

000313ca <do_syscall>:
   313ca:	55                   	push   %ebp
   313cb:	89 e5                	mov    %esp,%ebp
   313cd:	53                   	push   %ebx
   313ce:	83 ec 04             	sub    $0x4,%esp
   313d1:	e8 25 ed ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   313d6:	81 c3 2a bc 00 00    	add    $0xbc2a,%ebx
   313dc:	8b 45 08             	mov    0x8(%ebp),%eax
   313df:	8b 40 1c             	mov    0x1c(%eax),%eax
   313e2:	83 f8 2d             	cmp    $0x2d,%eax
   313e5:	0f 87 98 00 00 00    	ja     31483 <.L10>
   313eb:	c1 e0 02             	shl    $0x2,%eax
   313ee:	8b 84 18 a4 c6 ff ff 	mov    -0x395c(%eax,%ebx,1),%eax
   313f5:	01 d8                	add    %ebx,%eax
   313f7:	ff e0                	jmp    *%eax

000313f9 <.L18>:
   313f9:	e8 67 fe ff ff       	call   31265 <cli>
   313fe:	8b 45 08             	mov    0x8(%ebp),%eax
   31401:	8b 40 18             	mov    0x18(%eax),%eax
   31404:	89 c2                	mov    %eax,%edx
   31406:	8b 45 08             	mov    0x8(%ebp),%eax
   31409:	8b 40 10             	mov    0x10(%eax),%eax
   3140c:	83 ec 08             	sub    $0x8,%esp
   3140f:	52                   	push   %edx
   31410:	50                   	push   %eax
   31411:	e8 b0 f5 ff ff       	call   309c6 <add_irq_handle>
   31416:	83 c4 10             	add    $0x10,%esp
   31419:	e8 36 fe ff ff       	call   31254 <sti>
   3141e:	e9 8f 00 00 00       	jmp    314b2 <.L10+0x2f>

00031423 <.L11>:
   31423:	83 ec 0c             	sub    $0xc,%esp
   31426:	ff 75 08             	pushl  0x8(%ebp)
   31429:	e8 48 fe ff ff       	call   31276 <sys_brk>
   3142e:	83 c4 10             	add    $0x10,%esp
   31431:	eb 7f                	jmp    314b2 <.L10+0x2f>

00031433 <.L15>:
   31433:	83 ec 0c             	sub    $0xc,%esp
   31436:	ff 75 08             	pushl  0x8(%ebp)
   31439:	e8 52 fe ff ff       	call   31290 <sys_open>
   3143e:	83 c4 10             	add    $0x10,%esp
   31441:	eb 6f                	jmp    314b2 <.L10+0x2f>

00031443 <.L17>:
   31443:	83 ec 0c             	sub    $0xc,%esp
   31446:	ff 75 08             	pushl  0x8(%ebp)
   31449:	e8 7e fe ff ff       	call   312cc <sys_read>
   3144e:	83 c4 10             	add    $0x10,%esp
   31451:	eb 5f                	jmp    314b2 <.L10+0x2f>

00031453 <.L16>:
   31453:	83 ec 0c             	sub    $0xc,%esp
   31456:	ff 75 08             	pushl  0x8(%ebp)
   31459:	e8 b1 fe ff ff       	call   3130f <sys_write>
   3145e:	83 c4 10             	add    $0x10,%esp
   31461:	eb 4f                	jmp    314b2 <.L10+0x2f>

00031463 <.L13>:
   31463:	83 ec 0c             	sub    $0xc,%esp
   31466:	ff 75 08             	pushl  0x8(%ebp)
   31469:	e8 e4 fe ff ff       	call   31352 <sys_lseek>
   3146e:	83 c4 10             	add    $0x10,%esp
   31471:	eb 3f                	jmp    314b2 <.L10+0x2f>

00031473 <.L14>:
   31473:	83 ec 0c             	sub    $0xc,%esp
   31476:	ff 75 08             	pushl  0x8(%ebp)
   31479:	e8 19 ff ff ff       	call   31397 <sys_close>
   3147e:	83 c4 10             	add    $0x10,%esp
   31481:	eb 2f                	jmp    314b2 <.L10+0x2f>

00031483 <.L10>:
   31483:	8b 45 08             	mov    0x8(%ebp),%eax
   31486:	8b 40 1c             	mov    0x1c(%eax),%eax
   31489:	83 ec 0c             	sub    $0xc,%esp
   3148c:	50                   	push   %eax
   3148d:	8d 83 5c c7 ff ff    	lea    -0x38a4(%ebx),%eax
   31493:	50                   	push   %eax
   31494:	6a 4a                	push   $0x4a
   31496:	8d 83 34 c6 ff ff    	lea    -0x39cc(%ebx),%eax
   3149c:	50                   	push   %eax
   3149d:	8d 83 50 c6 ff ff    	lea    -0x39b0(%ebx),%eax
   314a3:	50                   	push   %eax
   314a4:	e8 c9 f4 ff ff       	call   30972 <printk>
   314a9:	83 c4 20             	add    $0x20,%esp
   314ac:	b8 01 00 00 00       	mov    $0x1,%eax
   314b1:	82                   	nemu_trap 
   314b2:	90                   	nop
   314b3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   314b6:	c9                   	leave  
   314b7:	c3                   	ret    

000314b8 <get_updir>:
   314b8:	55                   	push   %ebp
   314b9:	89 e5                	mov    %esp,%ebp
   314bb:	e8 37 ec ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   314c0:	05 40 bb 00 00       	add    $0xbb40,%eax
   314c5:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   314cb:	5d                   	pop    %ebp
   314cc:	c3                   	ret    

000314cd <get_ucr3>:
   314cd:	55                   	push   %ebp
   314ce:	89 e5                	mov    %esp,%ebp
   314d0:	e8 22 ec ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   314d5:	05 2b bb 00 00       	add    $0xbb2b,%eax
   314da:	c7 c0 00 20 07 00    	mov    $0x72000,%eax
   314e0:	8b 00                	mov    (%eax),%eax
   314e2:	5d                   	pop    %ebp
   314e3:	c3                   	ret    

000314e4 <mm_brk>:
   314e4:	55                   	push   %ebp
   314e5:	89 e5                	mov    %esp,%ebp
   314e7:	53                   	push   %ebx
   314e8:	83 ec 04             	sub    $0x4,%esp
   314eb:	e8 0b ec ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   314f0:	81 c3 10 bb 00 00    	add    $0xbb10,%ebx
   314f6:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
   314fc:	39 45 08             	cmp    %eax,0x8(%ebp)
   314ff:	76 22                	jbe    31523 <mm_brk+0x3f>
   31501:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
   31507:	8b 55 08             	mov    0x8(%ebp),%edx
   3150a:	29 c2                	sub    %eax,%edx
   3150c:	89 d0                	mov    %edx,%eax
   3150e:	89 c2                	mov    %eax,%edx
   31510:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
   31516:	83 ec 08             	sub    $0x8,%esp
   31519:	52                   	push   %edx
   3151a:	50                   	push   %eax
   3151b:	e8 90 04 00 00       	call   319b0 <mm_malloc>
   31520:	83 c4 10             	add    $0x10,%esp
   31523:	8b 45 08             	mov    0x8(%ebp),%eax
   31526:	89 83 88 1e 01 00    	mov    %eax,0x11e88(%ebx)
   3152c:	90                   	nop
   3152d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31530:	c9                   	leave  
   31531:	c3                   	ret    

00031532 <init_mm>:
   31532:	55                   	push   %ebp
   31533:	89 e5                	mov    %esp,%ebp
   31535:	53                   	push   %ebx
   31536:	83 ec 14             	sub    $0x14,%esp
   31539:	e8 bd eb ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   3153e:	81 c3 c2 ba 00 00    	add    $0xbac2,%ebx
   31544:	e8 ff 01 00 00       	call   31748 <get_kpdir>
   31549:	89 45 f4             	mov    %eax,-0xc(%ebp)
   3154c:	83 ec 04             	sub    $0x4,%esp
   3154f:	68 00 10 00 00       	push   $0x1000
   31554:	6a 00                	push   $0x0
   31556:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   3155c:	50                   	push   %eax
   3155d:	e8 2a 07 00 00       	call   31c8c <memset>
   31562:	83 c4 10             	add    $0x10,%esp
   31565:	83 ec 04             	sub    $0x4,%esp
   31568:	68 80 00 00 00       	push   $0x80
   3156d:	ff 75 f4             	pushl  -0xc(%ebp)
   31570:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   31576:	50                   	push   %eax
   31577:	e8 c8 06 00 00       	call   31c44 <memcpy>
   3157c:	83 c4 10             	add    $0x10,%esp
   3157f:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   31585:	25 00 fc ff ff       	and    $0xfffffc00,%eax
   3158a:	89 c2                	mov    %eax,%edx
   3158c:	c7 c0 00 20 07 00    	mov    $0x72000,%eax
   31592:	89 10                	mov    %edx,(%eax)
   31594:	90                   	nop
   31595:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31598:	c9                   	leave  
   31599:	c3                   	ret    

0003159a <create_video_mapping>:
   3159a:	55                   	push   %ebp
   3159b:	89 e5                	mov    %esp,%ebp
   3159d:	53                   	push   %ebx
   3159e:	83 ec 04             	sub    $0x4,%esp
   315a1:	e8 51 eb ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   315a6:	05 5a ba 00 00       	add    $0xba5a,%eax
   315ab:	8d 90 20 c8 ff ff    	lea    -0x37e0(%eax),%edx
   315b1:	52                   	push   %edx
   315b2:	6a 14                	push   $0x14
   315b4:	8d 90 68 c7 ff ff    	lea    -0x3898(%eax),%edx
   315ba:	52                   	push   %edx
   315bb:	8d 90 7c c7 ff ff    	lea    -0x3884(%eax),%edx
   315c1:	52                   	push   %edx
   315c2:	89 c3                	mov    %eax,%ebx
   315c4:	e8 a9 f3 ff ff       	call   30972 <printk>
   315c9:	83 c4 10             	add    $0x10,%esp
   315cc:	b8 01 00 00 00       	mov    $0x1,%eax
   315d1:	82                   	nemu_trap 
   315d2:	90                   	nop
   315d3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   315d6:	c9                   	leave  
   315d7:	c3                   	ret    

000315d8 <video_mapping_write_test>:
   315d8:	55                   	push   %ebp
   315d9:	89 e5                	mov    %esp,%ebp
   315db:	83 ec 10             	sub    $0x10,%esp
   315de:	e8 14 eb ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   315e3:	05 1d ba 00 00       	add    $0xba1d,%eax
   315e8:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
   315ef:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   315f6:	eb 17                	jmp    3160f <video_mapping_write_test+0x37>
   315f8:	8b 45 fc             	mov    -0x4(%ebp),%eax
   315fb:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   31602:	8b 45 f8             	mov    -0x8(%ebp),%eax
   31605:	01 c2                	add    %eax,%edx
   31607:	8b 45 fc             	mov    -0x4(%ebp),%eax
   3160a:	89 02                	mov    %eax,(%edx)
   3160c:	ff 45 fc             	incl   -0x4(%ebp)
   3160f:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
   31616:	7e e0                	jle    315f8 <video_mapping_write_test+0x20>
   31618:	90                   	nop
   31619:	c9                   	leave  
   3161a:	c3                   	ret    

0003161b <video_mapping_read_test>:
   3161b:	55                   	push   %ebp
   3161c:	89 e5                	mov    %esp,%ebp
   3161e:	53                   	push   %ebx
   3161f:	83 ec 14             	sub    $0x14,%esp
   31622:	e8 d4 ea ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   31627:	81 c3 d9 b9 00 00    	add    $0xb9d9,%ebx
   3162d:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
   31634:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   3163b:	eb 4a                	jmp    31687 <video_mapping_read_test+0x6c>
   3163d:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31640:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   31647:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3164a:	01 d0                	add    %edx,%eax
   3164c:	8b 10                	mov    (%eax),%edx
   3164e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31651:	39 c2                	cmp    %eax,%edx
   31653:	74 2f                	je     31684 <video_mapping_read_test+0x69>
   31655:	83 ec 0c             	sub    $0xc,%esp
   31658:	8d 83 c5 c7 ff ff    	lea    -0x383b(%ebx),%eax
   3165e:	50                   	push   %eax
   3165f:	8d 83 38 c8 ff ff    	lea    -0x37c8(%ebx),%eax
   31665:	50                   	push   %eax
   31666:	6a 27                	push   $0x27
   31668:	8d 83 68 c7 ff ff    	lea    -0x3898(%ebx),%eax
   3166e:	50                   	push   %eax
   3166f:	8d 83 d4 c7 ff ff    	lea    -0x382c(%ebx),%eax
   31675:	50                   	push   %eax
   31676:	e8 f7 f2 ff ff       	call   30972 <printk>
   3167b:	83 c4 20             	add    $0x20,%esp
   3167e:	b8 01 00 00 00       	mov    $0x1,%eax
   31683:	82                   	nemu_trap 
   31684:	ff 45 f4             	incl   -0xc(%ebp)
   31687:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
   3168e:	7e ad                	jle    3163d <video_mapping_read_test+0x22>
   31690:	90                   	nop
   31691:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31694:	c9                   	leave  
   31695:	c3                   	ret    

00031696 <video_mapping_clear>:
   31696:	55                   	push   %ebp
   31697:	89 e5                	mov    %esp,%ebp
   31699:	53                   	push   %ebx
   3169a:	83 ec 04             	sub    $0x4,%esp
   3169d:	e8 55 ea ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   316a2:	05 5e b9 00 00       	add    $0xb95e,%eax
   316a7:	83 ec 04             	sub    $0x4,%esp
   316aa:	68 00 fa 00 00       	push   $0xfa00
   316af:	6a 00                	push   $0x0
   316b1:	68 00 00 0a 00       	push   $0xa0000
   316b6:	89 c3                	mov    %eax,%ebx
   316b8:	e8 cf 05 00 00       	call   31c8c <memset>
   316bd:	83 c4 10             	add    $0x10,%esp
   316c0:	90                   	nop
   316c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   316c4:	c9                   	leave  
   316c5:	c3                   	ret    

000316c6 <read_cr0>:
   316c6:	55                   	push   %ebp
   316c7:	89 e5                	mov    %esp,%ebp
   316c9:	83 ec 10             	sub    $0x10,%esp
   316cc:	e8 26 ea ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   316d1:	05 2f b9 00 00       	add    $0xb92f,%eax
   316d6:	0f 20 c0             	mov    %cr0,%eax
   316d9:	89 45 fc             	mov    %eax,-0x4(%ebp)
   316dc:	8b 45 fc             	mov    -0x4(%ebp),%eax
   316df:	c9                   	leave  
   316e0:	c3                   	ret    

000316e1 <write_cr0>:
   316e1:	55                   	push   %ebp
   316e2:	89 e5                	mov    %esp,%ebp
   316e4:	e8 0e ea ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   316e9:	05 17 b9 00 00       	add    $0xb917,%eax
   316ee:	8b 45 08             	mov    0x8(%ebp),%eax
   316f1:	0f 22 c0             	mov    %eax,%cr0
   316f4:	90                   	nop
   316f5:	5d                   	pop    %ebp
   316f6:	c3                   	ret    

000316f7 <write_cr3>:
   316f7:	55                   	push   %ebp
   316f8:	89 e5                	mov    %esp,%ebp
   316fa:	e8 f8 e9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   316ff:	05 01 b9 00 00       	add    $0xb901,%eax
   31704:	8b 45 08             	mov    0x8(%ebp),%eax
   31707:	0f 22 d8             	mov    %eax,%cr3
   3170a:	90                   	nop
   3170b:	5d                   	pop    %ebp
   3170c:	c3                   	ret    

0003170d <write_gdtr>:
   3170d:	55                   	push   %ebp
   3170e:	89 e5                	mov    %esp,%ebp
   31710:	e8 e2 e9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31715:	05 eb b8 00 00       	add    $0xb8eb,%eax
   3171a:	8b 55 0c             	mov    0xc(%ebp),%edx
   3171d:	4a                   	dec    %edx
   3171e:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
   31725:	8b 55 08             	mov    0x8(%ebp),%edx
   31728:	66 89 90 8e 1e 01 00 	mov    %dx,0x11e8e(%eax)
   3172f:	8b 55 08             	mov    0x8(%ebp),%edx
   31732:	c1 ea 10             	shr    $0x10,%edx
   31735:	66 89 90 90 1e 01 00 	mov    %dx,0x11e90(%eax)
   3173c:	8d 80 8c 1e 01 00    	lea    0x11e8c(%eax),%eax
   31742:	0f 01 10             	lgdtl  (%eax)
   31745:	90                   	nop
   31746:	5d                   	pop    %ebp
   31747:	c3                   	ret    

00031748 <get_kpdir>:
   31748:	55                   	push   %ebp
   31749:	89 e5                	mov    %esp,%ebp
   3174b:	e8 a7 e9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31750:	05 b0 b8 00 00       	add    $0xb8b0,%eax
   31755:	c7 c0 00 40 07 00    	mov    $0x74000,%eax
   3175b:	5d                   	pop    %ebp
   3175c:	c3                   	ret    

0003175d <init_page>:
   3175d:	55                   	push   %ebp
   3175e:	89 e5                	mov    %esp,%ebp
   31760:	53                   	push   %ebx
   31761:	83 ec 24             	sub    $0x24,%esp
   31764:	e8 8e e9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31769:	05 97 b8 00 00       	add    $0xb897,%eax
   3176e:	c7 c2 00 40 07 00    	mov    $0x74000,%edx
   31774:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   31777:	c7 c2 00 50 07 00    	mov    $0x75000,%edx
   3177d:	89 55 f4             	mov    %edx,-0xc(%ebp)
   31780:	83 ec 04             	sub    $0x4,%esp
   31783:	68 00 10 00 00       	push   $0x1000
   31788:	6a 00                	push   $0x0
   3178a:	ff 75 e4             	pushl  -0x1c(%ebp)
   3178d:	89 c3                	mov    %eax,%ebx
   3178f:	e8 f8 04 00 00       	call   31c8c <memset>
   31794:	83 c4 10             	add    $0x10,%esp
   31797:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   3179e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   317a5:	eb 6b                	jmp    31812 <init_page+0xb5>
   317a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   317aa:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   317af:	89 c2                	mov    %eax,%edx
   317b1:	8b 45 f0             	mov    -0x10(%ebp),%eax
   317b4:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   317bb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   317be:	01 c8                	add    %ecx,%eax
   317c0:	83 ca 07             	or     $0x7,%edx
   317c3:	89 10                	mov    %edx,(%eax)
   317c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
   317c8:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   317cd:	89 c2                	mov    %eax,%edx
   317cf:	8b 45 f0             	mov    -0x10(%ebp),%eax
   317d2:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   317d9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   317dc:	01 c8                	add    %ecx,%eax
   317de:	83 ca 07             	or     $0x7,%edx
   317e1:	89 10                	mov    %edx,(%eax)
   317e3:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
   317ea:	eb 1a                	jmp    31806 <init_page+0xa9>
   317ec:	8b 45 e8             	mov    -0x18(%ebp),%eax
   317ef:	c1 e0 0c             	shl    $0xc,%eax
   317f2:	83 c8 07             	or     $0x7,%eax
   317f5:	89 c2                	mov    %eax,%edx
   317f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   317fa:	89 10                	mov    %edx,(%eax)
   317fc:	ff 45 e8             	incl   -0x18(%ebp)
   317ff:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
   31803:	ff 45 ec             	incl   -0x14(%ebp)
   31806:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
   3180d:	76 dd                	jbe    317ec <init_page+0x8f>
   3180f:	ff 45 f0             	incl   -0x10(%ebp)
   31812:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
   31816:	76 8f                	jbe    317a7 <init_page+0x4a>
   31818:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
   3181f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   31822:	c1 e8 0c             	shr    $0xc,%eax
   31825:	25 ff ff 0f 00       	and    $0xfffff,%eax
   3182a:	c1 e0 0c             	shl    $0xc,%eax
   3182d:	89 c2                	mov    %eax,%edx
   3182f:	8b 45 dc             	mov    -0x24(%ebp),%eax
   31832:	25 ff 0f 00 00       	and    $0xfff,%eax
   31837:	09 d0                	or     %edx,%eax
   31839:	89 45 dc             	mov    %eax,-0x24(%ebp)
   3183c:	8b 45 dc             	mov    -0x24(%ebp),%eax
   3183f:	83 ec 0c             	sub    $0xc,%esp
   31842:	50                   	push   %eax
   31843:	e8 af fe ff ff       	call   316f7 <write_cr3>
   31848:	83 c4 10             	add    $0x10,%esp
   3184b:	e8 76 fe ff ff       	call   316c6 <read_cr0>
   31850:	89 45 e0             	mov    %eax,-0x20(%ebp)
   31853:	8a 45 e3             	mov    -0x1d(%ebp),%al
   31856:	83 c8 80             	or     $0xffffff80,%eax
   31859:	88 45 e3             	mov    %al,-0x1d(%ebp)
   3185c:	8b 45 e0             	mov    -0x20(%ebp),%eax
   3185f:	83 ec 0c             	sub    $0xc,%esp
   31862:	50                   	push   %eax
   31863:	e8 79 fe ff ff       	call   316e1 <write_cr0>
   31868:	83 c4 10             	add    $0x10,%esp
   3186b:	90                   	nop
   3186c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3186f:	c9                   	leave  
   31870:	c3                   	ret    

00031871 <set_segment>:
   31871:	55                   	push   %ebp
   31872:	89 e5                	mov    %esp,%ebp
   31874:	e8 7e e8 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31879:	05 87 b7 00 00       	add    $0xb787,%eax
   3187e:	8b 45 08             	mov    0x8(%ebp),%eax
   31881:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
   31886:	8b 45 08             	mov    0x8(%ebp),%eax
   31889:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
   3188f:	8b 45 08             	mov    0x8(%ebp),%eax
   31892:	c6 40 04 00          	movb   $0x0,0x4(%eax)
   31896:	8b 45 10             	mov    0x10(%ebp),%eax
   31899:	88 c2                	mov    %al,%dl
   3189b:	83 e2 0f             	and    $0xf,%edx
   3189e:	8b 45 08             	mov    0x8(%ebp),%eax
   318a1:	88 d1                	mov    %dl,%cl
   318a3:	83 e1 0f             	and    $0xf,%ecx
   318a6:	8a 50 05             	mov    0x5(%eax),%dl
   318a9:	83 e2 f0             	and    $0xfffffff0,%edx
   318ac:	09 ca                	or     %ecx,%edx
   318ae:	88 50 05             	mov    %dl,0x5(%eax)
   318b1:	8b 45 08             	mov    0x8(%ebp),%eax
   318b4:	8a 50 05             	mov    0x5(%eax),%dl
   318b7:	83 ca 10             	or     $0x10,%edx
   318ba:	88 50 05             	mov    %dl,0x5(%eax)
   318bd:	8b 45 0c             	mov    0xc(%ebp),%eax
   318c0:	88 c2                	mov    %al,%dl
   318c2:	83 e2 03             	and    $0x3,%edx
   318c5:	8b 45 08             	mov    0x8(%ebp),%eax
   318c8:	83 e2 03             	and    $0x3,%edx
   318cb:	88 d1                	mov    %dl,%cl
   318cd:	c1 e1 05             	shl    $0x5,%ecx
   318d0:	8a 50 05             	mov    0x5(%eax),%dl
   318d3:	83 e2 9f             	and    $0xffffff9f,%edx
   318d6:	09 ca                	or     %ecx,%edx
   318d8:	88 50 05             	mov    %dl,0x5(%eax)
   318db:	8b 45 08             	mov    0x8(%ebp),%eax
   318de:	8a 50 05             	mov    0x5(%eax),%dl
   318e1:	83 ca 80             	or     $0xffffff80,%edx
   318e4:	88 50 05             	mov    %dl,0x5(%eax)
   318e7:	8b 45 08             	mov    0x8(%ebp),%eax
   318ea:	8a 50 06             	mov    0x6(%eax),%dl
   318ed:	83 ca 0f             	or     $0xf,%edx
   318f0:	88 50 06             	mov    %dl,0x6(%eax)
   318f3:	8b 45 08             	mov    0x8(%ebp),%eax
   318f6:	8a 50 06             	mov    0x6(%eax),%dl
   318f9:	83 e2 ef             	and    $0xffffffef,%edx
   318fc:	88 50 06             	mov    %dl,0x6(%eax)
   318ff:	8b 45 08             	mov    0x8(%ebp),%eax
   31902:	8a 50 06             	mov    0x6(%eax),%dl
   31905:	83 e2 df             	and    $0xffffffdf,%edx
   31908:	88 50 06             	mov    %dl,0x6(%eax)
   3190b:	8b 45 08             	mov    0x8(%ebp),%eax
   3190e:	8a 50 06             	mov    0x6(%eax),%dl
   31911:	83 ca 40             	or     $0x40,%edx
   31914:	88 50 06             	mov    %dl,0x6(%eax)
   31917:	8b 45 08             	mov    0x8(%ebp),%eax
   3191a:	8a 50 06             	mov    0x6(%eax),%dl
   3191d:	83 ca 80             	or     $0xffffff80,%edx
   31920:	88 50 06             	mov    %dl,0x6(%eax)
   31923:	8b 45 08             	mov    0x8(%ebp),%eax
   31926:	c6 40 07 00          	movb   $0x0,0x7(%eax)
   3192a:	90                   	nop
   3192b:	5d                   	pop    %ebp
   3192c:	c3                   	ret    

0003192d <init_segment>:
   3192d:	55                   	push   %ebp
   3192e:	89 e5                	mov    %esp,%ebp
   31930:	53                   	push   %ebx
   31931:	83 ec 04             	sub    $0x4,%esp
   31934:	e8 c2 e7 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   31939:	81 c3 c7 b6 00 00    	add    $0xb6c7,%ebx
   3193f:	83 ec 04             	sub    $0x4,%esp
   31942:	6a 18                	push   $0x18
   31944:	6a 00                	push   $0x0
   31946:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   3194c:	50                   	push   %eax
   3194d:	e8 3a 03 00 00       	call   31c8c <memset>
   31952:	83 c4 10             	add    $0x10,%esp
   31955:	83 ec 04             	sub    $0x4,%esp
   31958:	6a 0a                	push   $0xa
   3195a:	6a 00                	push   $0x0
   3195c:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   31962:	8d 40 08             	lea    0x8(%eax),%eax
   31965:	50                   	push   %eax
   31966:	e8 06 ff ff ff       	call   31871 <set_segment>
   3196b:	83 c4 10             	add    $0x10,%esp
   3196e:	83 ec 04             	sub    $0x4,%esp
   31971:	6a 02                	push   $0x2
   31973:	6a 00                	push   $0x0
   31975:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   3197b:	8d 40 10             	lea    0x10(%eax),%eax
   3197e:	50                   	push   %eax
   3197f:	e8 ed fe ff ff       	call   31871 <set_segment>
   31984:	83 c4 10             	add    $0x10,%esp
   31987:	83 ec 08             	sub    $0x8,%esp
   3198a:	6a 18                	push   $0x18
   3198c:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   31992:	50                   	push   %eax
   31993:	e8 75 fd ff ff       	call   3170d <write_gdtr>
   31998:	83 c4 10             	add    $0x10,%esp
   3199b:	90                   	nop
   3199c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3199f:	c9                   	leave  
   319a0:	c3                   	ret    
   319a1:	66 90                	xchg   %ax,%ax
   319a3:	66 90                	xchg   %ax,%ax
   319a5:	66 90                	xchg   %ax,%ax
   319a7:	66 90                	xchg   %ax,%ax
   319a9:	66 90                	xchg   %ax,%ax
   319ab:	66 90                	xchg   %ax,%ax
   319ad:	66 90                	xchg   %ax,%ax
   319af:	90                   	nop

000319b0 <mm_malloc>:
   319b0:	55                   	push   %ebp
   319b1:	31 c0                	xor    %eax,%eax
   319b3:	89 e5                	mov    %esp,%ebp
   319b5:	57                   	push   %edi
   319b6:	56                   	push   %esi
   319b7:	53                   	push   %ebx
   319b8:	83 ec 3c             	sub    $0x3c,%esp
   319bb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   319be:	85 db                	test   %ebx,%ebx
   319c0:	0f 8e 36 02 00 00    	jle    31bfc <mm_malloc+0x24c>
   319c6:	e8 ed fa ff ff       	call   314b8 <get_updir>
   319cb:	89 c6                	mov    %eax,%esi
   319cd:	e8 fb fa ff ff       	call   314cd <get_ucr3>
   319d2:	8b 55 08             	mov    0x8(%ebp),%edx
   319d5:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
   319d9:	89 5d e0             	mov    %ebx,-0x20(%ebp)
   319dc:	89 45 dc             	mov    %eax,-0x24(%ebp)
   319df:	b8 00 10 00 00       	mov    $0x1000,%eax
   319e4:	29 d0                	sub    %edx,%eax
   319e6:	89 da                	mov    %ebx,%edx
   319e8:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
   319ee:	01 d0                	add    %edx,%eax
   319f0:	85 c0                	test   %eax,%eax
   319f2:	0f 8e c0 00 00 00    	jle    31ab8 <mm_malloc+0x108>
   319f8:	8b 55 08             	mov    0x8(%ebp),%edx
   319fb:	83 e8 01             	sub    $0x1,%eax
   319fe:	89 f7                	mov    %esi,%edi
   31a00:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31a05:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
   31a0c:	89 d3                	mov    %edx,%ebx
   31a0e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   31a11:	eb 51                	jmp    31a64 <mm_malloc+0xb4>
   31a13:	90                   	nop
   31a14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   31a18:	8b 31                	mov    (%ecx),%esi
   31a1a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
   31a20:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
   31a26:	89 d8                	mov    %ebx,%eax
   31a28:	c1 e8 0a             	shr    $0xa,%eax
   31a2b:	25 fc 0f 00 00       	and    $0xffc,%eax
   31a30:	01 c6                	add    %eax,%esi
   31a32:	f6 06 01             	testb  $0x1,(%esi)
   31a35:	75 22                	jne    31a59 <mm_malloc+0xa9>
   31a37:	a1 20 d0 03 00       	mov    0x3d020,%eax
   31a3c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
   31a41:	0f 8f c1 01 00 00    	jg     31c08 <mm_malloc+0x258>
   31a47:	89 c1                	mov    %eax,%ecx
   31a49:	83 c0 01             	add    $0x1,%eax
   31a4c:	c1 e1 0c             	shl    $0xc,%ecx
   31a4f:	83 c9 07             	or     $0x7,%ecx
   31a52:	89 0e                	mov    %ecx,(%esi)
   31a54:	a3 20 d0 03 00       	mov    %eax,0x3d020
   31a59:	81 c3 00 10 00 00    	add    $0x1000,%ebx
   31a5f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
   31a62:	74 54                	je     31ab8 <mm_malloc+0x108>
   31a64:	89 d8                	mov    %ebx,%eax
   31a66:	c1 e8 16             	shr    $0x16,%eax
   31a69:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
   31a6c:	f6 01 01             	testb  $0x1,(%ecx)
   31a6f:	75 a7                	jne    31a18 <mm_malloc+0x68>
   31a71:	a1 00 f0 04 00       	mov    0x4f000,%eax
   31a76:	89 c6                	mov    %eax,%esi
   31a78:	83 c0 01             	add    $0x1,%eax
   31a7b:	c1 e6 0c             	shl    $0xc,%esi
   31a7e:	81 c6 00 00 05 00    	add    $0x50000,%esi
   31a84:	a3 00 f0 04 00       	mov    %eax,0x4f000
   31a89:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
   31a8f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31a94:	83 c8 07             	or     $0x7,%eax
   31a97:	89 01                	mov    %eax,(%ecx)
   31a99:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
   31aa0:	00 
   31aa1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   31aa8:	00 
   31aa9:	89 34 24             	mov    %esi,(%esp)
   31aac:	e8 db 01 00 00       	call   31c8c <memset>
   31ab1:	e9 70 ff ff ff       	jmp    31a26 <mm_malloc+0x76>
   31ab6:	66 90                	xchg   %ax,%ax
   31ab8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   31abb:	8b 45 e0             	mov    -0x20(%ebp),%eax
   31abe:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
   31ac4:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
   31aca:	c1 e8 16             	shr    $0x16,%eax
   31acd:	8b 34 83             	mov    (%ebx,%eax,4),%esi
   31ad0:	f7 c6 01 00 00 00    	test   $0x1,%esi
   31ad6:	75 32                	jne    31b0a <mm_malloc+0x15a>
   31ad8:	c7 44 24 10 74 98 03 	movl   $0x39874,0x10(%esp)
   31adf:	00 
   31ae0:	c7 44 24 0c da 98 03 	movl   $0x398da,0xc(%esp)
   31ae7:	00 
   31ae8:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
   31aef:	00 
   31af0:	c7 44 24 04 63 98 03 	movl   $0x39863,0x4(%esp)
   31af7:	00 
   31af8:	c7 04 24 84 98 03 00 	movl   $0x39884,(%esp)
   31aff:	e8 6e ee ff ff       	call   30972 <printk>
   31b04:	b8 01 00 00 00       	mov    $0x1,%eax
   31b09:	82                   	nemu_trap 
   31b0a:	8b 55 e0             	mov    -0x20(%ebp),%edx
   31b0d:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
   31b13:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31b18:	c1 ea 0c             	shr    $0xc,%edx
   31b1b:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
   31b21:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
   31b25:	75 32                	jne    31b59 <mm_malloc+0x1a9>
   31b27:	c7 44 24 10 7c 98 03 	movl   $0x3987c,0x10(%esp)
   31b2e:	00 
   31b2f:	c7 44 24 0c da 98 03 	movl   $0x398da,0xc(%esp)
   31b36:	00 
   31b37:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
   31b3e:	00 
   31b3f:	c7 44 24 04 63 98 03 	movl   $0x39863,0x4(%esp)
   31b46:	00 
   31b47:	c7 04 24 84 98 03 00 	movl   $0x39884,(%esp)
   31b4e:	e8 1f ee ff ff       	call   30972 <printk>
   31b53:	b8 01 00 00 00       	mov    $0x1,%eax
   31b58:	82                   	nemu_trap 
   31b59:	8b 45 08             	mov    0x8(%ebp),%eax
   31b5c:	c1 e8 16             	shr    $0x16,%eax
   31b5f:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
   31b62:	f6 c3 01             	test   $0x1,%bl
   31b65:	75 32                	jne    31b99 <mm_malloc+0x1e9>
   31b67:	c7 44 24 10 74 98 03 	movl   $0x39874,0x10(%esp)
   31b6e:	00 
   31b6f:	c7 44 24 0c da 98 03 	movl   $0x398da,0xc(%esp)
   31b76:	00 
   31b77:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
   31b7e:	00 
   31b7f:	c7 44 24 04 63 98 03 	movl   $0x39863,0x4(%esp)
   31b86:	00 
   31b87:	c7 04 24 84 98 03 00 	movl   $0x39884,(%esp)
   31b8e:	e8 df ed ff ff       	call   30972 <printk>
   31b93:	b8 01 00 00 00       	mov    $0x1,%eax
   31b98:	82                   	nemu_trap 
   31b99:	8b 55 08             	mov    0x8(%ebp),%edx
   31b9c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
   31ba2:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31ba7:	c1 ea 0c             	shr    $0xc,%edx
   31baa:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
   31bb0:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
   31bb3:	f6 c3 01             	test   $0x1,%bl
   31bb6:	75 32                	jne    31bea <mm_malloc+0x23a>
   31bb8:	c7 44 24 10 7c 98 03 	movl   $0x3987c,0x10(%esp)
   31bbf:	00 
   31bc0:	c7 44 24 0c da 98 03 	movl   $0x398da,0xc(%esp)
   31bc7:	00 
   31bc8:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
   31bcf:	00 
   31bd0:	c7 44 24 04 63 98 03 	movl   $0x39863,0x4(%esp)
   31bd7:	00 
   31bd8:	c7 04 24 84 98 03 00 	movl   $0x39884,(%esp)
   31bdf:	e8 8e ed ff ff       	call   30972 <printk>
   31be4:	b8 01 00 00 00       	mov    $0x1,%eax
   31be9:	82                   	nemu_trap 
   31bea:	8b 55 08             	mov    0x8(%ebp),%edx
   31bed:	89 d8                	mov    %ebx,%eax
   31bef:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31bf4:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
   31bfa:	09 d0                	or     %edx,%eax
   31bfc:	83 c4 3c             	add    $0x3c,%esp
   31bff:	5b                   	pop    %ebx
   31c00:	5e                   	pop    %esi
   31c01:	5f                   	pop    %edi
   31c02:	5d                   	pop    %ebp
   31c03:	c3                   	ret    
   31c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   31c08:	c7 44 24 10 50 98 03 	movl   $0x39850,0x10(%esp)
   31c0f:	00 
   31c10:	c7 44 24 0c d0 98 03 	movl   $0x398d0,0xc(%esp)
   31c17:	00 
   31c18:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
   31c1f:	00 
   31c20:	c7 44 24 04 63 98 03 	movl   $0x39863,0x4(%esp)
   31c27:	00 
   31c28:	c7 04 24 84 98 03 00 	movl   $0x39884,(%esp)
   31c2f:	e8 3e ed ff ff       	call   30972 <printk>
   31c34:	b8 01 00 00 00       	mov    $0x1,%eax
   31c39:	82                   	nemu_trap 
   31c3a:	a1 20 d0 03 00       	mov    0x3d020,%eax
   31c3f:	e9 03 fe ff ff       	jmp    31a47 <mm_malloc+0x97>

00031c44 <memcpy>:
   31c44:	55                   	push   %ebp
   31c45:	89 e5                	mov    %esp,%ebp
   31c47:	56                   	push   %esi
   31c48:	57                   	push   %edi
   31c49:	53                   	push   %ebx
   31c4a:	8b 7d 08             	mov    0x8(%ebp),%edi
   31c4d:	8b 4d 10             	mov    0x10(%ebp),%ecx
   31c50:	8b 75 0c             	mov    0xc(%ebp),%esi
   31c53:	fc                   	cld    
   31c54:	83 f9 08             	cmp    $0x8,%ecx
   31c57:	76 26                	jbe    31c7f <memcpy+0x3b>
   31c59:	89 fa                	mov    %edi,%edx
   31c5b:	89 cb                	mov    %ecx,%ebx
   31c5d:	83 e2 03             	and    $0x3,%edx
   31c60:	74 10                	je     31c72 <memcpy+0x2e>
   31c62:	b9 04 00 00 00       	mov    $0x4,%ecx
   31c67:	29 d1                	sub    %edx,%ecx
   31c69:	83 e1 03             	and    $0x3,%ecx
   31c6c:	29 cb                	sub    %ecx,%ebx
   31c6e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   31c70:	89 d9                	mov    %ebx,%ecx
   31c72:	c1 e9 02             	shr    $0x2,%ecx
   31c75:	8d 76 00             	lea    0x0(%esi),%esi
   31c78:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   31c7a:	89 d9                	mov    %ebx,%ecx
   31c7c:	83 e1 03             	and    $0x3,%ecx
   31c7f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   31c81:	8b 45 08             	mov    0x8(%ebp),%eax
   31c84:	8d 65 f4             	lea    -0xc(%ebp),%esp
   31c87:	5b                   	pop    %ebx
   31c88:	5f                   	pop    %edi
   31c89:	5e                   	pop    %esi
   31c8a:	c9                   	leave  
   31c8b:	c3                   	ret    

00031c8c <memset>:
   31c8c:	55                   	push   %ebp
   31c8d:	89 e5                	mov    %esp,%ebp
   31c8f:	57                   	push   %edi
   31c90:	8b 7d 08             	mov    0x8(%ebp),%edi
   31c93:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
   31c97:	8b 4d 10             	mov    0x10(%ebp),%ecx
   31c9a:	fc                   	cld    
   31c9b:	83 f9 10             	cmp    $0x10,%ecx
   31c9e:	76 69                	jbe    31d09 <memset+0x7d>
   31ca0:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31ca6:	74 4c                	je     31cf4 <memset+0x68>
   31ca8:	88 07                	mov    %al,(%edi)
   31caa:	47                   	inc    %edi
   31cab:	49                   	dec    %ecx
   31cac:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31cb2:	74 40                	je     31cf4 <memset+0x68>
   31cb4:	88 07                	mov    %al,(%edi)
   31cb6:	47                   	inc    %edi
   31cb7:	49                   	dec    %ecx
   31cb8:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31cbe:	74 34                	je     31cf4 <memset+0x68>
   31cc0:	88 07                	mov    %al,(%edi)
   31cc2:	47                   	inc    %edi
   31cc3:	49                   	dec    %ecx
   31cc4:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31cca:	74 28                	je     31cf4 <memset+0x68>
   31ccc:	88 07                	mov    %al,(%edi)
   31cce:	47                   	inc    %edi
   31ccf:	49                   	dec    %ecx
   31cd0:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31cd6:	74 1c                	je     31cf4 <memset+0x68>
   31cd8:	88 07                	mov    %al,(%edi)
   31cda:	47                   	inc    %edi
   31cdb:	49                   	dec    %ecx
   31cdc:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31ce2:	74 10                	je     31cf4 <memset+0x68>
   31ce4:	88 07                	mov    %al,(%edi)
   31ce6:	47                   	inc    %edi
   31ce7:	49                   	dec    %ecx
   31ce8:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31cee:	74 04                	je     31cf4 <memset+0x68>
   31cf0:	88 07                	mov    %al,(%edi)
   31cf2:	47                   	inc    %edi
   31cf3:	49                   	dec    %ecx
   31cf4:	88 c4                	mov    %al,%ah
   31cf6:	89 c2                	mov    %eax,%edx
   31cf8:	c1 e2 10             	shl    $0x10,%edx
   31cfb:	09 d0                	or     %edx,%eax
   31cfd:	89 ca                	mov    %ecx,%edx
   31cff:	c1 e9 02             	shr    $0x2,%ecx
   31d02:	83 e2 03             	and    $0x3,%edx
   31d05:	f3 ab                	rep stos %eax,%es:(%edi)
   31d07:	89 d1                	mov    %edx,%ecx
   31d09:	f3 aa                	rep stos %al,%es:(%edi)
   31d0b:	8b 45 08             	mov    0x8(%ebp),%eax
   31d0e:	8d 65 fc             	lea    -0x4(%ebp),%esp
   31d11:	5f                   	pop    %edi
   31d12:	c9                   	leave  
   31d13:	c3                   	ret    
   31d14:	66 90                	xchg   %ax,%ax
   31d16:	66 90                	xchg   %ax,%ax
   31d18:	66 90                	xchg   %ax,%ax
   31d1a:	66 90                	xchg   %ax,%ax
   31d1c:	66 90                	xchg   %ax,%ax
   31d1e:	66 90                	xchg   %ax,%ax

00031d20 <_vsnprintf_r>:
   31d20:	55                   	push   %ebp
   31d21:	89 e5                	mov    %esp,%ebp
   31d23:	56                   	push   %esi
   31d24:	53                   	push   %ebx
   31d25:	83 c4 80             	add    $0xffffff80,%esp
   31d28:	8b 5d 10             	mov    0x10(%ebp),%ebx
   31d2b:	8b 75 08             	mov    0x8(%ebp),%esi
   31d2e:	8b 45 0c             	mov    0xc(%ebp),%eax
   31d31:	85 db                	test   %ebx,%ebx
   31d33:	78 63                	js     31d98 <_vsnprintf_r+0x78>
   31d35:	ba 08 02 00 00       	mov    $0x208,%edx
   31d3a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   31d3f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
   31d43:	8d 53 ff             	lea    -0x1(%ebx),%edx
   31d46:	89 45 90             	mov    %eax,-0x70(%ebp)
   31d49:	89 45 a0             	mov    %eax,-0x60(%ebp)
   31d4c:	31 c0                	xor    %eax,%eax
   31d4e:	85 db                	test   %ebx,%ebx
   31d50:	0f 45 c2             	cmovne %edx,%eax
   31d53:	89 45 98             	mov    %eax,-0x68(%ebp)
   31d56:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   31d59:	8b 45 18             	mov    0x18(%ebp),%eax
   31d5c:	89 34 24             	mov    %esi,(%esp)
   31d5f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
   31d63:	89 44 24 0c          	mov    %eax,0xc(%esp)
   31d67:	8b 45 14             	mov    0x14(%ebp),%eax
   31d6a:	89 44 24 08          	mov    %eax,0x8(%esp)
   31d6e:	8d 45 90             	lea    -0x70(%ebp),%eax
   31d71:	89 44 24 04          	mov    %eax,0x4(%esp)
   31d75:	e8 86 00 00 00       	call   31e00 <_svfprintf_r>
   31d7a:	83 f8 ff             	cmp    $0xffffffff,%eax
   31d7d:	7c 11                	jl     31d90 <_vsnprintf_r+0x70>
   31d7f:	85 db                	test   %ebx,%ebx
   31d81:	74 06                	je     31d89 <_vsnprintf_r+0x69>
   31d83:	8b 55 90             	mov    -0x70(%ebp),%edx
   31d86:	c6 02 00             	movb   $0x0,(%edx)
   31d89:	83 ec 80             	sub    $0xffffff80,%esp
   31d8c:	5b                   	pop    %ebx
   31d8d:	5e                   	pop    %esi
   31d8e:	5d                   	pop    %ebp
   31d8f:	c3                   	ret    
   31d90:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
   31d96:	eb e7                	jmp    31d7f <_vsnprintf_r+0x5f>
   31d98:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
   31d9e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   31da3:	eb e4                	jmp    31d89 <_vsnprintf_r+0x69>
   31da5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   31da9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00031db0 <vsnprintf>:
   31db0:	55                   	push   %ebp
   31db1:	89 e5                	mov    %esp,%ebp
   31db3:	83 ec 28             	sub    $0x28,%esp
   31db6:	e8 35 00 00 00       	call   31df0 <__getreent>
   31dbb:	8b 55 14             	mov    0x14(%ebp),%edx
   31dbe:	89 54 24 10          	mov    %edx,0x10(%esp)
   31dc2:	8b 55 10             	mov    0x10(%ebp),%edx
   31dc5:	89 04 24             	mov    %eax,(%esp)
   31dc8:	89 54 24 0c          	mov    %edx,0xc(%esp)
   31dcc:	8b 55 0c             	mov    0xc(%ebp),%edx
   31dcf:	89 54 24 08          	mov    %edx,0x8(%esp)
   31dd3:	8b 55 08             	mov    0x8(%ebp),%edx
   31dd6:	89 54 24 04          	mov    %edx,0x4(%esp)
   31dda:	e8 41 ff ff ff       	call   31d20 <_vsnprintf_r>
   31ddf:	c9                   	leave  
   31de0:	c3                   	ret    
   31de1:	66 90                	xchg   %ax,%ax
   31de3:	66 90                	xchg   %ax,%ax
   31de5:	66 90                	xchg   %ax,%ax
   31de7:	66 90                	xchg   %ax,%ax
   31de9:	66 90                	xchg   %ax,%ax
   31deb:	66 90                	xchg   %ax,%ax
   31ded:	66 90                	xchg   %ax,%ax
   31def:	90                   	nop

00031df0 <__getreent>:
   31df0:	55                   	push   %ebp
   31df1:	a1 40 d0 03 00       	mov    0x3d040,%eax
   31df6:	89 e5                	mov    %esp,%ebp
   31df8:	5d                   	pop    %ebp
   31df9:	c3                   	ret    
   31dfa:	66 90                	xchg   %ax,%ax
   31dfc:	66 90                	xchg   %ax,%ax
   31dfe:	66 90                	xchg   %ax,%ax

00031e00 <_svfprintf_r>:
   31e00:	55                   	push   %ebp
   31e01:	89 e5                	mov    %esp,%ebp
   31e03:	57                   	push   %edi
   31e04:	56                   	push   %esi
   31e05:	53                   	push   %ebx
   31e06:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
   31e0c:	8b 45 08             	mov    0x8(%ebp),%eax
   31e0f:	89 04 24             	mov    %eax,(%esp)
   31e12:	e8 89 33 00 00       	call   351a0 <_localeconv_r>
   31e17:	8b 00                	mov    (%eax),%eax
   31e19:	89 04 24             	mov    %eax,(%esp)
   31e1c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
   31e22:	e8 d9 4a 00 00       	call   36900 <strlen>
   31e27:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
   31e2d:	8b 45 0c             	mov    0xc(%ebp),%eax
   31e30:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
   31e34:	74 0b                	je     31e41 <_svfprintf_r+0x41>
   31e36:	8b 40 10             	mov    0x10(%eax),%eax
   31e39:	85 c0                	test   %eax,%eax
   31e3b:	0f 84 62 18 00 00    	je     336a3 <_svfprintf_r+0x18a3>
   31e41:	8d 45 a8             	lea    -0x58(%ebp),%eax
   31e44:	8d 55 a7             	lea    -0x59(%ebp),%edx
   31e47:	89 c7                	mov    %eax,%edi
   31e49:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
   31e4f:	d9 ee                	fldz   
   31e51:	29 d0                	sub    %edx,%eax
   31e53:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
   31e5a:	00 00 00 
   31e5d:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
   31e63:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   31e6a:	00 00 00 
   31e6d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
   31e74:	00 00 00 
   31e77:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
   31e7e:	00 00 00 
   31e81:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
   31e88:	00 00 00 
   31e8b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
   31e92:	00 00 00 
   31e95:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
   31e9b:	8b 45 10             	mov    0x10(%ebp),%eax
   31e9e:	8b 5d 10             	mov    0x10(%ebp),%ebx
   31ea1:	0f b6 00             	movzbl (%eax),%eax
   31ea4:	3c 25                	cmp    $0x25,%al
   31ea6:	74 4d                	je     31ef5 <_svfprintf_r+0xf5>
   31ea8:	84 c0                	test   %al,%al
   31eaa:	75 08                	jne    31eb4 <_svfprintf_r+0xb4>
   31eac:	eb 47                	jmp    31ef5 <_svfprintf_r+0xf5>
   31eae:	66 90                	xchg   %ax,%ax
   31eb0:	84 c0                	test   %al,%al
   31eb2:	74 0a                	je     31ebe <_svfprintf_r+0xbe>
   31eb4:	83 c3 01             	add    $0x1,%ebx
   31eb7:	0f b6 03             	movzbl (%ebx),%eax
   31eba:	3c 25                	cmp    $0x25,%al
   31ebc:	75 f2                	jne    31eb0 <_svfprintf_r+0xb0>
   31ebe:	89 de                	mov    %ebx,%esi
   31ec0:	2b 75 10             	sub    0x10(%ebp),%esi
   31ec3:	74 30                	je     31ef5 <_svfprintf_r+0xf5>
   31ec5:	8b 45 10             	mov    0x10(%ebp),%eax
   31ec8:	83 c7 08             	add    $0x8,%edi
   31ecb:	89 77 fc             	mov    %esi,-0x4(%edi)
   31ece:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
   31ed4:	89 47 f8             	mov    %eax,-0x8(%edi)
   31ed7:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   31edd:	83 c0 01             	add    $0x1,%eax
   31ee0:	83 f8 07             	cmp    $0x7,%eax
   31ee3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   31ee9:	0f 8f 91 00 00 00    	jg     31f80 <_svfprintf_r+0x180>
   31eef:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
   31ef5:	80 3b 00             	cmpb   $0x0,(%ebx)
   31ef8:	0f 84 aa 00 00 00    	je     31fa8 <_svfprintf_r+0x1a8>
   31efe:	8d 43 01             	lea    0x1(%ebx),%eax
   31f01:	be 20 00 00 00       	mov    $0x20,%esi
   31f06:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   31f0d:	31 db                	xor    %ebx,%ebx
   31f0f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
   31f16:	ff ff ff 
   31f19:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
   31f20:	00 00 00 
   31f23:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
   31f2a:	00 00 00 
   31f2d:	8d 48 01             	lea    0x1(%eax),%ecx
   31f30:	0f be 00             	movsbl (%eax),%eax
   31f33:	8d 50 e0             	lea    -0x20(%eax),%edx
   31f36:	83 fa 58             	cmp    $0x58,%edx
   31f39:	0f 87 8f 07 00 00    	ja     326ce <_svfprintf_r+0x8ce>
   31f3f:	ff 24 95 24 99 03 00 	jmp    *0x39924(,%edx,4)
   31f46:	66 90                	xchg   %ax,%ax
   31f48:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   31f4f:	89 c8                	mov    %ecx,%eax
   31f51:	eb da                	jmp    31f2d <_svfprintf_r+0x12d>
   31f53:	8b 45 14             	mov    0x14(%ebp),%eax
   31f56:	8b 55 14             	mov    0x14(%ebp),%edx
   31f59:	8b 00                	mov    (%eax),%eax
   31f5b:	83 c2 04             	add    $0x4,%edx
   31f5e:	89 55 14             	mov    %edx,0x14(%ebp)
   31f61:	85 c0                	test   %eax,%eax
   31f63:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
   31f69:	79 e4                	jns    31f4f <_svfprintf_r+0x14f>
   31f6b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
   31f71:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
   31f78:	89 c8                	mov    %ecx,%eax
   31f7a:	eb b1                	jmp    31f2d <_svfprintf_r+0x12d>
   31f7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   31f80:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   31f86:	89 44 24 08          	mov    %eax,0x8(%esp)
   31f8a:	8b 45 0c             	mov    0xc(%ebp),%eax
   31f8d:	89 44 24 04          	mov    %eax,0x4(%esp)
   31f91:	8b 45 08             	mov    0x8(%ebp),%eax
   31f94:	89 04 24             	mov    %eax,(%esp)
   31f97:	e8 e4 49 00 00       	call   36980 <__ssprint_r>
   31f9c:	85 c0                	test   %eax,%eax
   31f9e:	75 30                	jne    31fd0 <_svfprintf_r+0x1d0>
   31fa0:	8d 7d a8             	lea    -0x58(%ebp),%edi
   31fa3:	e9 47 ff ff ff       	jmp    31eef <_svfprintf_r+0xef>
   31fa8:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
   31fae:	85 c0                	test   %eax,%eax
   31fb0:	74 1e                	je     31fd0 <_svfprintf_r+0x1d0>
   31fb2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   31fb8:	89 44 24 08          	mov    %eax,0x8(%esp)
   31fbc:	8b 45 0c             	mov    0xc(%ebp),%eax
   31fbf:	89 44 24 04          	mov    %eax,0x4(%esp)
   31fc3:	8b 45 08             	mov    0x8(%ebp),%eax
   31fc6:	89 04 24             	mov    %eax,(%esp)
   31fc9:	e8 b2 49 00 00       	call   36980 <__ssprint_r>
   31fce:	66 90                	xchg   %ax,%ax
   31fd0:	8b 55 0c             	mov    0xc(%ebp),%edx
   31fd3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   31fd8:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
   31fdc:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
   31fe3:	81 c4 1c 01 00 00    	add    $0x11c,%esp
   31fe9:	5b                   	pop    %ebx
   31fea:	5e                   	pop    %esi
   31feb:	5f                   	pop    %edi
   31fec:	5d                   	pop    %ebp
   31fed:	c3                   	ret    
   31fee:	bb 2b 00 00 00       	mov    $0x2b,%ebx
   31ff3:	89 c8                	mov    %ecx,%eax
   31ff5:	e9 33 ff ff ff       	jmp    31f2d <_svfprintf_r+0x12d>
   31ffa:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32000:	8b 45 14             	mov    0x14(%ebp),%eax
   32003:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32006:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   3200d:	8d 70 04             	lea    0x4(%eax),%esi
   32010:	8b 00                	mov    (%eax),%eax
   32012:	85 c0                	test   %eax,%eax
   32014:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   3201a:	0f 84 7f 18 00 00    	je     3389f <_svfprintf_r+0x1a9f>
   32020:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   32026:	85 c0                	test   %eax,%eax
   32028:	0f 88 b6 17 00 00    	js     337e4 <_svfprintf_r+0x19e4>
   3202e:	89 44 24 08          	mov    %eax,0x8(%esp)
   32032:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   32038:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   3203f:	00 
   32040:	89 04 24             	mov    %eax,(%esp)
   32043:	e8 f8 38 00 00       	call   35940 <memchr>
   32048:	85 c0                	test   %eax,%eax
   3204a:	0f 84 a0 19 00 00    	je     339f0 <_svfprintf_r+0x1bf0>
   32050:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   32056:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
   3205c:	39 d0                	cmp    %edx,%eax
   3205e:	0f 4f c2             	cmovg  %edx,%eax
   32061:	89 c2                	mov    %eax,%edx
   32063:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   3206a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   32070:	31 c0                	xor    %eax,%eax
   32072:	85 d2                	test   %edx,%edx
   32074:	0f 49 c2             	cmovns %edx,%eax
   32077:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   3207d:	89 75 14             	mov    %esi,0x14(%ebp)
   32080:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   32087:	00 00 00 
   3208a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   32091:	00 00 00 
   32094:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32098:	84 db                	test   %bl,%bl
   3209a:	74 07                	je     320a3 <_svfprintf_r+0x2a3>
   3209c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
   320a3:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   320a9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
   320af:	89 c8                	mov    %ecx,%eax
   320b1:	89 f2                	mov    %esi,%edx
   320b3:	83 c0 02             	add    $0x2,%eax
   320b6:	83 e2 02             	and    $0x2,%edx
   320b9:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
   320bf:	89 f2                	mov    %esi,%edx
   320c1:	0f 44 c1             	cmove  %ecx,%eax
   320c4:	81 e2 84 00 00 00    	and    $0x84,%edx
   320ca:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   320d0:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
   320d6:	0f 85 1c 06 00 00    	jne    326f8 <_svfprintf_r+0x8f8>
   320dc:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
   320e2:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
   320e8:	85 f6                	test   %esi,%esi
   320ea:	0f 8e 08 06 00 00    	jle    326f8 <_svfprintf_r+0x8f8>
   320f0:	83 fe 10             	cmp    $0x10,%esi
   320f3:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   320f9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   320ff:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32105:	7f 11                	jg     32118 <_svfprintf_r+0x318>
   32107:	eb 6b                	jmp    32174 <_svfprintf_r+0x374>
   32109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   32110:	83 ee 10             	sub    $0x10,%esi
   32113:	83 fe 10             	cmp    $0x10,%esi
   32116:	7e 5c                	jle    32174 <_svfprintf_r+0x374>
   32118:	83 c0 01             	add    $0x1,%eax
   3211b:	83 c1 10             	add    $0x10,%ecx
   3211e:	c7 07 98 9a 03 00    	movl   $0x39a98,(%edi)
   32124:	83 c7 08             	add    $0x8,%edi
   32127:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   3212e:	83 f8 07             	cmp    $0x7,%eax
   32131:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32137:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3213d:	7e d1                	jle    32110 <_svfprintf_r+0x310>
   3213f:	8b 45 0c             	mov    0xc(%ebp),%eax
   32142:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32146:	89 44 24 04          	mov    %eax,0x4(%esp)
   3214a:	8b 45 08             	mov    0x8(%ebp),%eax
   3214d:	89 04 24             	mov    %eax,(%esp)
   32150:	e8 2b 48 00 00       	call   36980 <__ssprint_r>
   32155:	85 c0                	test   %eax,%eax
   32157:	0f 85 73 fe ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   3215d:	83 ee 10             	sub    $0x10,%esi
   32160:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32166:	83 fe 10             	cmp    $0x10,%esi
   32169:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3216f:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32172:	7f a4                	jg     32118 <_svfprintf_r+0x318>
   32174:	83 c0 01             	add    $0x1,%eax
   32177:	01 f1                	add    %esi,%ecx
   32179:	83 f8 07             	cmp    $0x7,%eax
   3217c:	c7 07 98 9a 03 00    	movl   $0x39a98,(%edi)
   32182:	89 77 04             	mov    %esi,0x4(%edi)
   32185:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   3218b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32191:	0f 8f 16 0e 00 00    	jg     32fad <_svfprintf_r+0x11ad>
   32197:	83 c7 08             	add    $0x8,%edi
   3219a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   321a1:	e9 58 05 00 00       	jmp    326fe <_svfprintf_r+0x8fe>
   321a6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   321ad:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   321b3:	8b 45 14             	mov    0x14(%ebp),%eax
   321b6:	89 4d 10             	mov    %ecx,0x10(%ebp)
   321b9:	0f 85 fd 04 00 00    	jne    326bc <_svfprintf_r+0x8bc>
   321bf:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   321c6:	0f 84 f0 04 00 00    	je     326bc <_svfprintf_r+0x8bc>
   321cc:	0f b7 08             	movzwl (%eax),%ecx
   321cf:	83 c0 04             	add    $0x4,%eax
   321d2:	89 45 14             	mov    %eax,0x14(%ebp)
   321d5:	b8 01 00 00 00       	mov    $0x1,%eax
   321da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   321e0:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   321e7:	31 db                	xor    %ebx,%ebx
   321e9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
   321ef:	89 f2                	mov    %esi,%edx
   321f1:	80 e2 7f             	and    $0x7f,%dl
   321f4:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
   321fb:	0f 48 d6             	cmovs  %esi,%edx
   321fe:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
   32204:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   3220a:	85 d2                	test   %edx,%edx
   3220c:	75 08                	jne    32216 <_svfprintf_r+0x416>
   3220e:	85 c9                	test   %ecx,%ecx
   32210:	0f 84 ea 08 00 00    	je     32b00 <_svfprintf_r+0xd00>
   32216:	3c 01                	cmp    $0x1,%al
   32218:	0f 84 6a 0d 00 00    	je     32f88 <_svfprintf_r+0x1188>
   3221e:	3c 02                	cmp    $0x2,%al
   32220:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32223:	0f 85 bf 0b 00 00    	jne    32de8 <_svfprintf_r+0xfe8>
   32229:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
   3222f:	90                   	nop
   32230:	89 ca                	mov    %ecx,%edx
   32232:	83 e8 01             	sub    $0x1,%eax
   32235:	83 e2 0f             	and    $0xf,%edx
   32238:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
   3223c:	c1 e9 04             	shr    $0x4,%ecx
   3223f:	85 c9                	test   %ecx,%ecx
   32241:	88 10                	mov    %dl,(%eax)
   32243:	75 eb                	jne    32230 <_svfprintf_r+0x430>
   32245:	8d 55 a8             	lea    -0x58(%ebp),%edx
   32248:	29 c2                	sub    %eax,%edx
   3224a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32250:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   32256:	66 90                	xchg   %ax,%ax
   32258:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   3225e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
   32264:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   3226b:	00 00 00 
   3226e:	39 c2                	cmp    %eax,%edx
   32270:	0f 4d c2             	cmovge %edx,%eax
   32273:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   32279:	e9 1a fe ff ff       	jmp    32098 <_svfprintf_r+0x298>
   3227e:	84 db                	test   %bl,%bl
   32280:	89 c8                	mov    %ecx,%eax
   32282:	0f 44 de             	cmove  %esi,%ebx
   32285:	e9 a3 fc ff ff       	jmp    31f2d <_svfprintf_r+0x12d>
   3228a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
   32291:	89 c8                	mov    %ecx,%eax
   32293:	e9 95 fc ff ff       	jmp    31f2d <_svfprintf_r+0x12d>
   32298:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
   3229f:	00 00 00 
   322a2:	89 c8                	mov    %ecx,%eax
   322a4:	e9 84 fc ff ff       	jmp    31f2d <_svfprintf_r+0x12d>
   322a9:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   322af:	8d 50 d0             	lea    -0x30(%eax),%edx
   322b2:	31 ff                	xor    %edi,%edi
   322b4:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
   322bb:	00 00 00 
   322be:	66 90                	xchg   %ax,%ax
   322c0:	8d 04 bf             	lea    (%edi,%edi,4),%eax
   322c3:	83 c1 01             	add    $0x1,%ecx
   322c6:	8d 3c 42             	lea    (%edx,%eax,2),%edi
   322c9:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
   322cd:	8d 50 d0             	lea    -0x30(%eax),%edx
   322d0:	83 fa 09             	cmp    $0x9,%edx
   322d3:	76 eb                	jbe    322c0 <_svfprintf_r+0x4c0>
   322d5:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
   322db:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
   322e1:	e9 4d fc ff ff       	jmp    31f33 <_svfprintf_r+0x133>
   322e6:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   322ed:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   322f4:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   322fa:	8b 45 14             	mov    0x14(%ebp),%eax
   322fd:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32300:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   32306:	0f 85 61 02 00 00    	jne    3256d <_svfprintf_r+0x76d>
   3230c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   32313:	0f 84 54 02 00 00    	je     3256d <_svfprintf_r+0x76d>
   32319:	0f bf 08             	movswl (%eax),%ecx
   3231c:	83 c0 04             	add    $0x4,%eax
   3231f:	89 45 14             	mov    %eax,0x14(%ebp)
   32322:	85 c9                	test   %ecx,%ecx
   32324:	0f 88 53 02 00 00    	js     3257d <_svfprintf_r+0x77d>
   3232a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   32331:	b8 01 00 00 00       	mov    $0x1,%eax
   32336:	e9 ae fe ff ff       	jmp    321e9 <_svfprintf_r+0x3e9>
   3233b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
   32342:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32348:	8b 45 14             	mov    0x14(%ebp),%eax
   3234b:	89 4d 10             	mov    %ecx,0x10(%ebp)
   3234e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   32354:	0f 84 15 10 00 00    	je     3336f <_svfprintf_r+0x156f>
   3235a:	db 28                	fldt   (%eax)
   3235c:	83 c0 0c             	add    $0xc,%eax
   3235f:	89 45 14             	mov    %eax,0x14(%ebp)
   32362:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
   32368:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   3236e:	dd 1c 24             	fstpl  (%esp)
   32371:	e8 aa 44 00 00       	call   36820 <__fpclassifyd>
   32376:	83 f8 01             	cmp    $0x1,%eax
   32379:	0f 85 82 0f 00 00    	jne    33301 <_svfprintf_r+0x1501>
   3237f:	d9 ee                	fldz   
   32381:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   32387:	d9 c9                	fxch   %st(1)
   32389:	df e9                	fucomip %st(1),%st
   3238b:	dd d8                	fstp   %st(0)
   3238d:	0f 87 59 15 00 00    	ja     338ec <_svfprintf_r+0x1aec>
   32393:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   3239a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
   323a1:	ba e6 98 03 00       	mov    $0x398e6,%edx
   323a6:	b8 ea 98 03 00       	mov    $0x398ea,%eax
   323ab:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
   323b2:	00 00 00 
   323b5:	0f 4e c2             	cmovle %edx,%eax
   323b8:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   323be:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
   323c5:	ff ff ff 
   323c8:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
   323cf:	00 00 00 
   323d2:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   323d9:	00 00 00 
   323dc:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   323e3:	00 00 00 
   323e6:	e9 ad fc ff ff       	jmp    32098 <_svfprintf_r+0x298>
   323eb:	8d 41 01             	lea    0x1(%ecx),%eax
   323ee:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   323f4:	0f be 01             	movsbl (%ecx),%eax
   323f7:	83 f8 2a             	cmp    $0x2a,%eax
   323fa:	0f 84 84 18 00 00    	je     33c84 <_svfprintf_r+0x1e84>
   32400:	8d 50 d0             	lea    -0x30(%eax),%edx
   32403:	31 c9                	xor    %ecx,%ecx
   32405:	83 fa 09             	cmp    $0x9,%edx
   32408:	0f 87 a8 16 00 00    	ja     33ab6 <_svfprintf_r+0x1cb6>
   3240e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
   32414:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
   3241a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32420:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
   32423:	83 c7 01             	add    $0x1,%edi
   32426:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
   32429:	0f be 47 ff          	movsbl -0x1(%edi),%eax
   3242d:	8d 50 d0             	lea    -0x30(%eax),%edx
   32430:	83 fa 09             	cmp    $0x9,%edx
   32433:	76 eb                	jbe    32420 <_svfprintf_r+0x620>
   32435:	85 c9                	test   %ecx,%ecx
   32437:	89 ca                	mov    %ecx,%edx
   32439:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   3243e:	0f 48 d1             	cmovs  %ecx,%edx
   32441:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   32447:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
   3244d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   32453:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
   32459:	e9 d5 fa ff ff       	jmp    31f33 <_svfprintf_r+0x133>
   3245e:	8b 45 14             	mov    0x14(%ebp),%eax
   32461:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32464:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
   3246b:	8b 08                	mov    (%eax),%ecx
   3246d:	83 c0 04             	add    $0x4,%eax
   32470:	89 45 14             	mov    %eax,0x14(%ebp)
   32473:	b8 02 00 00 00       	mov    $0x2,%eax
   32478:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
   3247f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
   32486:	c7 85 18 ff ff ff 07 	movl   $0x39907,-0xe8(%ebp)
   3248d:	99 03 00 
   32490:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
   32497:	00 00 00 
   3249a:	e9 41 fd ff ff       	jmp    321e0 <_svfprintf_r+0x3e0>
   3249f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   324a6:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   324ac:	8b 45 14             	mov    0x14(%ebp),%eax
   324af:	89 4d 10             	mov    %ecx,0x10(%ebp)
   324b2:	0f 85 87 00 00 00    	jne    3253f <_svfprintf_r+0x73f>
   324b8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   324bf:	74 7e                	je     3253f <_svfprintf_r+0x73f>
   324c1:	0f b7 08             	movzwl (%eax),%ecx
   324c4:	83 c0 04             	add    $0x4,%eax
   324c7:	89 45 14             	mov    %eax,0x14(%ebp)
   324ca:	31 c0                	xor    %eax,%eax
   324cc:	e9 0f fd ff ff       	jmp    321e0 <_svfprintf_r+0x3e0>
   324d1:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
   324d8:	89 c8                	mov    %ecx,%eax
   324da:	e9 4e fa ff ff       	jmp    31f2d <_svfprintf_r+0x12d>
   324df:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   324e6:	89 4d 10             	mov    %ecx,0x10(%ebp)
   324e9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   324ef:	0f 85 97 0b 00 00    	jne    3308c <_svfprintf_r+0x128c>
   324f5:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   324fc:	0f 84 8a 0b 00 00    	je     3308c <_svfprintf_r+0x128c>
   32502:	8b 45 14             	mov    0x14(%ebp),%eax
   32505:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
   3250c:	8b 00                	mov    (%eax),%eax
   3250e:	66 89 10             	mov    %dx,(%eax)
   32511:	8b 45 14             	mov    0x14(%ebp),%eax
   32514:	83 c0 04             	add    $0x4,%eax
   32517:	89 45 14             	mov    %eax,0x14(%ebp)
   3251a:	e9 7c f9 ff ff       	jmp    31e9b <_svfprintf_r+0x9b>
   3251f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   32526:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   3252d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32533:	8b 45 14             	mov    0x14(%ebp),%eax
   32536:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32539:	0f 84 79 ff ff ff    	je     324b8 <_svfprintf_r+0x6b8>
   3253f:	8b 08                	mov    (%eax),%ecx
   32541:	83 c0 04             	add    $0x4,%eax
   32544:	89 45 14             	mov    %eax,0x14(%ebp)
   32547:	31 c0                	xor    %eax,%eax
   32549:	e9 92 fc ff ff       	jmp    321e0 <_svfprintf_r+0x3e0>
   3254e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   32555:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   3255b:	8b 45 14             	mov    0x14(%ebp),%eax
   3255e:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32561:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   32567:	0f 84 9f fd ff ff    	je     3230c <_svfprintf_r+0x50c>
   3256d:	8b 08                	mov    (%eax),%ecx
   3256f:	83 c0 04             	add    $0x4,%eax
   32572:	89 45 14             	mov    %eax,0x14(%ebp)
   32575:	85 c9                	test   %ecx,%ecx
   32577:	0f 89 ad fd ff ff    	jns    3232a <_svfprintf_r+0x52a>
   3257d:	f7 d9                	neg    %ecx
   3257f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
   32584:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
   3258b:	b8 01 00 00 00       	mov    $0x1,%eax
   32590:	e9 54 fc ff ff       	jmp    321e9 <_svfprintf_r+0x3e9>
   32595:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
   3259c:	89 c8                	mov    %ecx,%eax
   3259e:	e9 8a f9 ff ff       	jmp    31f2d <_svfprintf_r+0x12d>
   325a3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   325aa:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   325b0:	8b 45 14             	mov    0x14(%ebp),%eax
   325b3:	89 4d 10             	mov    %ecx,0x10(%ebp)
   325b6:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   325bc:	c7 85 18 ff ff ff 07 	movl   $0x39907,-0xe8(%ebp)
   325c3:	99 03 00 
   325c6:	75 71                	jne    32639 <_svfprintf_r+0x839>
   325c8:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   325cf:	74 68                	je     32639 <_svfprintf_r+0x839>
   325d1:	0f b7 08             	movzwl (%eax),%ecx
   325d4:	83 c0 04             	add    $0x4,%eax
   325d7:	89 45 14             	mov    %eax,0x14(%ebp)
   325da:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   325e1:	b8 02 00 00 00       	mov    $0x2,%eax
   325e6:	0f 84 f4 fb ff ff    	je     321e0 <_svfprintf_r+0x3e0>
   325ec:	85 c9                	test   %ecx,%ecx
   325ee:	0f 84 ec fb ff ff    	je     321e0 <_svfprintf_r+0x3e0>
   325f4:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
   325fb:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
   32602:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
   32609:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
   3260f:	e9 cc fb ff ff       	jmp    321e0 <_svfprintf_r+0x3e0>
   32614:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   3261b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32621:	8b 45 14             	mov    0x14(%ebp),%eax
   32624:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32627:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   3262d:	c7 85 18 ff ff ff f6 	movl   $0x398f6,-0xe8(%ebp)
   32634:	98 03 00 
   32637:	74 8f                	je     325c8 <_svfprintf_r+0x7c8>
   32639:	8b 08                	mov    (%eax),%ecx
   3263b:	83 c0 04             	add    $0x4,%eax
   3263e:	89 45 14             	mov    %eax,0x14(%ebp)
   32641:	eb 97                	jmp    325da <_svfprintf_r+0x7da>
   32643:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32649:	8b 45 14             	mov    0x14(%ebp),%eax
   3264c:	89 4d 10             	mov    %ecx,0x10(%ebp)
   3264f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   32656:	8b 00                	mov    (%eax),%eax
   32658:	88 45 80             	mov    %al,-0x80(%ebp)
   3265b:	8b 45 14             	mov    0x14(%ebp),%eax
   3265e:	83 c0 04             	add    $0x4,%eax
   32661:	89 45 14             	mov    %eax,0x14(%ebp)
   32664:	8d 45 80             	lea    -0x80(%ebp),%eax
   32667:	31 db                	xor    %ebx,%ebx
   32669:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
   32670:	00 00 00 
   32673:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
   3267a:	00 00 00 
   3267d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   32684:	00 00 00 
   32687:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   3268e:	00 00 00 
   32691:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32697:	e9 07 fa ff ff       	jmp    320a3 <_svfprintf_r+0x2a3>
   3269c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   326a3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   326aa:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   326b0:	8b 45 14             	mov    0x14(%ebp),%eax
   326b3:	89 4d 10             	mov    %ecx,0x10(%ebp)
   326b6:	0f 84 03 fb ff ff    	je     321bf <_svfprintf_r+0x3bf>
   326bc:	8b 08                	mov    (%eax),%ecx
   326be:	83 c0 04             	add    $0x4,%eax
   326c1:	89 45 14             	mov    %eax,0x14(%ebp)
   326c4:	b8 01 00 00 00       	mov    $0x1,%eax
   326c9:	e9 12 fb ff ff       	jmp    321e0 <_svfprintf_r+0x3e0>
   326ce:	85 c0                	test   %eax,%eax
   326d0:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   326d6:	89 4d 10             	mov    %ecx,0x10(%ebp)
   326d9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   326df:	0f 84 c3 f8 ff ff    	je     31fa8 <_svfprintf_r+0x1a8>
   326e5:	88 45 80             	mov    %al,-0x80(%ebp)
   326e8:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   326ef:	e9 70 ff ff ff       	jmp    32664 <_svfprintf_r+0x864>
   326f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   326f8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   326fe:	84 db                	test   %bl,%bl
   32700:	74 33                	je     32735 <_svfprintf_r+0x935>
   32702:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
   32708:	83 c1 01             	add    $0x1,%ecx
   3270b:	89 07                	mov    %eax,(%edi)
   3270d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32713:	83 c7 08             	add    $0x8,%edi
   32716:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
   3271d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32723:	83 c0 01             	add    $0x1,%eax
   32726:	83 f8 07             	cmp    $0x7,%eax
   32729:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3272f:	0f 8f 7b 06 00 00    	jg     32db0 <_svfprintf_r+0xfb0>
   32735:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
   3273b:	85 db                	test   %ebx,%ebx
   3273d:	74 33                	je     32772 <_svfprintf_r+0x972>
   3273f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
   32745:	83 c1 02             	add    $0x2,%ecx
   32748:	89 07                	mov    %eax,(%edi)
   3274a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32750:	83 c7 08             	add    $0x8,%edi
   32753:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
   3275a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32760:	83 c0 01             	add    $0x1,%eax
   32763:	83 f8 07             	cmp    $0x7,%eax
   32766:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3276c:	0f 8f 06 06 00 00    	jg     32d78 <_svfprintf_r+0xf78>
   32772:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
   32779:	00 00 00 
   3277c:	0f 84 c6 03 00 00    	je     32b48 <_svfprintf_r+0xd48>
   32782:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
   32788:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
   3278e:	85 f6                	test   %esi,%esi
   32790:	0f 8e d2 00 00 00    	jle    32868 <_svfprintf_r+0xa68>
   32796:	83 fe 10             	cmp    $0x10,%esi
   32799:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3279f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   327a5:	7f 11                	jg     327b8 <_svfprintf_r+0x9b8>
   327a7:	eb 6b                	jmp    32814 <_svfprintf_r+0xa14>
   327a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   327b0:	83 ee 10             	sub    $0x10,%esi
   327b3:	83 fe 10             	cmp    $0x10,%esi
   327b6:	7e 5c                	jle    32814 <_svfprintf_r+0xa14>
   327b8:	83 c0 01             	add    $0x1,%eax
   327bb:	83 c1 10             	add    $0x10,%ecx
   327be:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   327c4:	83 c7 08             	add    $0x8,%edi
   327c7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   327ce:	83 f8 07             	cmp    $0x7,%eax
   327d1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   327d7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   327dd:	7e d1                	jle    327b0 <_svfprintf_r+0x9b0>
   327df:	8b 45 0c             	mov    0xc(%ebp),%eax
   327e2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   327e6:	89 44 24 04          	mov    %eax,0x4(%esp)
   327ea:	8b 45 08             	mov    0x8(%ebp),%eax
   327ed:	89 04 24             	mov    %eax,(%esp)
   327f0:	e8 8b 41 00 00       	call   36980 <__ssprint_r>
   327f5:	85 c0                	test   %eax,%eax
   327f7:	0f 85 d3 f7 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   327fd:	83 ee 10             	sub    $0x10,%esi
   32800:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32806:	83 fe 10             	cmp    $0x10,%esi
   32809:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3280f:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32812:	7f a4                	jg     327b8 <_svfprintf_r+0x9b8>
   32814:	83 c0 01             	add    $0x1,%eax
   32817:	01 f1                	add    %esi,%ecx
   32819:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   3281f:	83 c7 08             	add    $0x8,%edi
   32822:	89 77 fc             	mov    %esi,-0x4(%edi)
   32825:	83 f8 07             	cmp    $0x7,%eax
   32828:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   3282e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32834:	7e 32                	jle    32868 <_svfprintf_r+0xa68>
   32836:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3283c:	89 44 24 08          	mov    %eax,0x8(%esp)
   32840:	8b 45 0c             	mov    0xc(%ebp),%eax
   32843:	89 44 24 04          	mov    %eax,0x4(%esp)
   32847:	8b 45 08             	mov    0x8(%ebp),%eax
   3284a:	89 04 24             	mov    %eax,(%esp)
   3284d:	e8 2e 41 00 00       	call   36980 <__ssprint_r>
   32852:	85 c0                	test   %eax,%eax
   32854:	0f 85 76 f7 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   3285a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32860:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32863:	90                   	nop
   32864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32868:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
   3286f:	01 00 00 
   32872:	0f 85 50 01 00 00    	jne    329c8 <_svfprintf_r+0xbc8>
   32878:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   3287e:	89 07                	mov    %eax,(%edi)
   32880:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
   32886:	01 c1                	add    %eax,%ecx
   32888:	89 47 04             	mov    %eax,0x4(%edi)
   3288b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32891:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32897:	83 c0 01             	add    $0x1,%eax
   3289a:	83 f8 07             	cmp    $0x7,%eax
   3289d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   328a3:	0f 8f 6a 04 00 00    	jg     32d13 <_svfprintf_r+0xf13>
   328a9:	83 c7 08             	add    $0x8,%edi
   328ac:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
   328b3:	0f 84 d7 00 00 00    	je     32990 <_svfprintf_r+0xb90>
   328b9:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
   328bf:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
   328c5:	85 f6                	test   %esi,%esi
   328c7:	0f 8e c3 00 00 00    	jle    32990 <_svfprintf_r+0xb90>
   328cd:	83 fe 10             	cmp    $0x10,%esi
   328d0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   328d6:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   328dc:	7f 0a                	jg     328e8 <_svfprintf_r+0xae8>
   328de:	eb 64                	jmp    32944 <_svfprintf_r+0xb44>
   328e0:	83 ee 10             	sub    $0x10,%esi
   328e3:	83 fe 10             	cmp    $0x10,%esi
   328e6:	7e 5c                	jle    32944 <_svfprintf_r+0xb44>
   328e8:	83 c0 01             	add    $0x1,%eax
   328eb:	83 c1 10             	add    $0x10,%ecx
   328ee:	c7 07 98 9a 03 00    	movl   $0x39a98,(%edi)
   328f4:	83 c7 08             	add    $0x8,%edi
   328f7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   328fe:	83 f8 07             	cmp    $0x7,%eax
   32901:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32907:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3290d:	7e d1                	jle    328e0 <_svfprintf_r+0xae0>
   3290f:	8b 45 0c             	mov    0xc(%ebp),%eax
   32912:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32916:	89 44 24 04          	mov    %eax,0x4(%esp)
   3291a:	8b 45 08             	mov    0x8(%ebp),%eax
   3291d:	89 04 24             	mov    %eax,(%esp)
   32920:	e8 5b 40 00 00       	call   36980 <__ssprint_r>
   32925:	85 c0                	test   %eax,%eax
   32927:	0f 85 a3 f6 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   3292d:	83 ee 10             	sub    $0x10,%esi
   32930:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32936:	83 fe 10             	cmp    $0x10,%esi
   32939:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3293f:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32942:	7f a4                	jg     328e8 <_svfprintf_r+0xae8>
   32944:	83 c0 01             	add    $0x1,%eax
   32947:	01 f1                	add    %esi,%ecx
   32949:	83 f8 07             	cmp    $0x7,%eax
   3294c:	c7 07 98 9a 03 00    	movl   $0x39a98,(%edi)
   32952:	89 77 04             	mov    %esi,0x4(%edi)
   32955:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   3295b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32961:	7e 2d                	jle    32990 <_svfprintf_r+0xb90>
   32963:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32969:	89 44 24 08          	mov    %eax,0x8(%esp)
   3296d:	8b 45 0c             	mov    0xc(%ebp),%eax
   32970:	89 44 24 04          	mov    %eax,0x4(%esp)
   32974:	8b 45 08             	mov    0x8(%ebp),%eax
   32977:	89 04 24             	mov    %eax,(%esp)
   3297a:	e8 01 40 00 00       	call   36980 <__ssprint_r>
   3297f:	85 c0                	test   %eax,%eax
   32981:	0f 85 49 f6 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   32987:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   3298d:	8d 76 00             	lea    0x0(%esi),%esi
   32990:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
   32996:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
   3299c:	39 c2                	cmp    %eax,%edx
   3299e:	0f 4d c2             	cmovge %edx,%eax
   329a1:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
   329a7:	85 c9                	test   %ecx,%ecx
   329a9:	0f 85 99 03 00 00    	jne    32d48 <_svfprintf_r+0xf48>
   329af:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   329b6:	00 00 00 
   329b9:	8d 7d a8             	lea    -0x58(%ebp),%edi
   329bc:	e9 da f4 ff ff       	jmp    31e9b <_svfprintf_r+0x9b>
   329c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   329c8:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
   329cf:	0f 8e 5b 02 00 00    	jle    32c30 <_svfprintf_r+0xe30>
   329d5:	d9 ee                	fldz   
   329d7:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   329dd:	df e9                	fucomip %st(1),%st
   329df:	dd d8                	fstp   %st(0)
   329e1:	0f 8a 59 04 00 00    	jp     32e40 <_svfprintf_r+0x1040>
   329e7:	0f 85 53 04 00 00    	jne    32e40 <_svfprintf_r+0x1040>
   329ed:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   329f3:	83 c1 01             	add    $0x1,%ecx
   329f6:	83 c7 08             	add    $0x8,%edi
   329f9:	c7 47 f8 1f 99 03 00 	movl   $0x3991f,-0x8(%edi)
   32a00:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
   32a07:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32a0d:	83 c0 01             	add    $0x1,%eax
   32a10:	83 f8 07             	cmp    $0x7,%eax
   32a13:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32a19:	0f 8f 63 09 00 00    	jg     33382 <_svfprintf_r+0x1582>
   32a1f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
   32a25:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
   32a2b:	7c 0d                	jl     32a3a <_svfprintf_r+0xc3a>
   32a2d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   32a34:	0f 84 72 fe ff ff    	je     328ac <_svfprintf_r+0xaac>
   32a3a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
   32a40:	83 c7 08             	add    $0x8,%edi
   32a43:	89 47 f8             	mov    %eax,-0x8(%edi)
   32a46:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
   32a4c:	89 47 fc             	mov    %eax,-0x4(%edi)
   32a4f:	01 c1                	add    %eax,%ecx
   32a51:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32a57:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32a5d:	83 c0 01             	add    $0x1,%eax
   32a60:	83 f8 07             	cmp    $0x7,%eax
   32a63:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32a69:	0f 8f dc 0b 00 00    	jg     3364b <_svfprintf_r+0x184b>
   32a6f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
   32a75:	8d 70 ff             	lea    -0x1(%eax),%esi
   32a78:	85 f6                	test   %esi,%esi
   32a7a:	0f 8e 2c fe ff ff    	jle    328ac <_svfprintf_r+0xaac>
   32a80:	83 fe 10             	cmp    $0x10,%esi
   32a83:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32a89:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32a8f:	7f 13                	jg     32aa4 <_svfprintf_r+0xca4>
   32a91:	e9 e6 05 00 00       	jmp    3307c <_svfprintf_r+0x127c>
   32a96:	66 90                	xchg   %ax,%ax
   32a98:	83 ee 10             	sub    $0x10,%esi
   32a9b:	83 fe 10             	cmp    $0x10,%esi
   32a9e:	0f 8e d8 05 00 00    	jle    3307c <_svfprintf_r+0x127c>
   32aa4:	83 c0 01             	add    $0x1,%eax
   32aa7:	83 c1 10             	add    $0x10,%ecx
   32aaa:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   32ab0:	83 c7 08             	add    $0x8,%edi
   32ab3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   32aba:	83 f8 07             	cmp    $0x7,%eax
   32abd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32ac3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32ac9:	7e cd                	jle    32a98 <_svfprintf_r+0xc98>
   32acb:	8b 45 0c             	mov    0xc(%ebp),%eax
   32ace:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32ad2:	89 44 24 04          	mov    %eax,0x4(%esp)
   32ad6:	8b 45 08             	mov    0x8(%ebp),%eax
   32ad9:	89 04 24             	mov    %eax,(%esp)
   32adc:	e8 9f 3e 00 00       	call   36980 <__ssprint_r>
   32ae1:	85 c0                	test   %eax,%eax
   32ae3:	0f 85 e7 f4 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   32ae9:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32aef:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32af2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32af8:	eb 9e                	jmp    32a98 <_svfprintf_r+0xc98>
   32afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32b00:	84 c0                	test   %al,%al
   32b02:	75 2c                	jne    32b30 <_svfprintf_r+0xd30>
   32b04:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   32b0b:	74 23                	je     32b30 <_svfprintf_r+0xd30>
   32b0d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
   32b13:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
   32b17:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   32b1d:	8d 45 a7             	lea    -0x59(%ebp),%eax
   32b20:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32b26:	e9 2d f7 ff ff       	jmp    32258 <_svfprintf_r+0x458>
   32b2b:	90                   	nop
   32b2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32b30:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32b33:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
   32b3a:	00 00 00 
   32b3d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32b43:	e9 10 f7 ff ff       	jmp    32258 <_svfprintf_r+0x458>
   32b48:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
   32b4e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
   32b54:	85 f6                	test   %esi,%esi
   32b56:	0f 8e 26 fc ff ff    	jle    32782 <_svfprintf_r+0x982>
   32b5c:	83 fe 10             	cmp    $0x10,%esi
   32b5f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32b65:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32b6b:	7f 0b                	jg     32b78 <_svfprintf_r+0xd78>
   32b6d:	eb 65                	jmp    32bd4 <_svfprintf_r+0xdd4>
   32b6f:	90                   	nop
   32b70:	83 ee 10             	sub    $0x10,%esi
   32b73:	83 fe 10             	cmp    $0x10,%esi
   32b76:	7e 5c                	jle    32bd4 <_svfprintf_r+0xdd4>
   32b78:	83 c0 01             	add    $0x1,%eax
   32b7b:	83 c1 10             	add    $0x10,%ecx
   32b7e:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   32b84:	83 c7 08             	add    $0x8,%edi
   32b87:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   32b8e:	83 f8 07             	cmp    $0x7,%eax
   32b91:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32b97:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32b9d:	7e d1                	jle    32b70 <_svfprintf_r+0xd70>
   32b9f:	8b 45 0c             	mov    0xc(%ebp),%eax
   32ba2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32ba6:	89 44 24 04          	mov    %eax,0x4(%esp)
   32baa:	8b 45 08             	mov    0x8(%ebp),%eax
   32bad:	89 04 24             	mov    %eax,(%esp)
   32bb0:	e8 cb 3d 00 00       	call   36980 <__ssprint_r>
   32bb5:	85 c0                	test   %eax,%eax
   32bb7:	0f 85 13 f4 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   32bbd:	83 ee 10             	sub    $0x10,%esi
   32bc0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32bc6:	83 fe 10             	cmp    $0x10,%esi
   32bc9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32bcf:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32bd2:	7f a4                	jg     32b78 <_svfprintf_r+0xd78>
   32bd4:	83 c0 01             	add    $0x1,%eax
   32bd7:	01 f1                	add    %esi,%ecx
   32bd9:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   32bdf:	83 c7 08             	add    $0x8,%edi
   32be2:	89 77 fc             	mov    %esi,-0x4(%edi)
   32be5:	83 f8 07             	cmp    $0x7,%eax
   32be8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32bee:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32bf4:	0f 8e 88 fb ff ff    	jle    32782 <_svfprintf_r+0x982>
   32bfa:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32c00:	89 44 24 08          	mov    %eax,0x8(%esp)
   32c04:	8b 45 0c             	mov    0xc(%ebp),%eax
   32c07:	89 44 24 04          	mov    %eax,0x4(%esp)
   32c0b:	8b 45 08             	mov    0x8(%ebp),%eax
   32c0e:	89 04 24             	mov    %eax,(%esp)
   32c11:	e8 6a 3d 00 00       	call   36980 <__ssprint_r>
   32c16:	85 c0                	test   %eax,%eax
   32c18:	0f 85 b2 f3 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   32c1e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32c24:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32c27:	e9 56 fb ff ff       	jmp    32782 <_svfprintf_r+0x982>
   32c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32c30:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
   32c37:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   32c3d:	0f 8e df 05 00 00    	jle    33222 <_svfprintf_r+0x1422>
   32c43:	89 07                	mov    %eax,(%edi)
   32c45:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32c4b:	8d 51 01             	lea    0x1(%ecx),%edx
   32c4e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
   32c55:	83 c7 08             	add    $0x8,%edi
   32c58:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   32c5e:	83 c0 01             	add    $0x1,%eax
   32c61:	83 f8 07             	cmp    $0x7,%eax
   32c64:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32c6a:	0f 8f 59 06 00 00    	jg     332c9 <_svfprintf_r+0x14c9>
   32c70:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
   32c76:	83 c0 01             	add    $0x1,%eax
   32c79:	83 c7 08             	add    $0x8,%edi
   32c7c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32c82:	89 5f f8             	mov    %ebx,-0x8(%edi)
   32c85:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
   32c8b:	89 5f fc             	mov    %ebx,-0x4(%edi)
   32c8e:	01 da                	add    %ebx,%edx
   32c90:	83 f8 07             	cmp    $0x7,%eax
   32c93:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   32c99:	0f 8f f2 05 00 00    	jg     33291 <_svfprintf_r+0x1491>
   32c9f:	d9 ee                	fldz   
   32ca1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   32ca7:	df e9                	fucomip %st(1),%st
   32ca9:	dd d8                	fstp   %st(0)
   32cab:	7a 06                	jp     32cb3 <_svfprintf_r+0xeb3>
   32cad:	0f 84 33 03 00 00    	je     32fe6 <_svfprintf_r+0x11e6>
   32cb3:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
   32cb9:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   32cbf:	83 c1 01             	add    $0x1,%ecx
   32cc2:	89 0f                	mov    %ecx,(%edi)
   32cc4:	8d 4b ff             	lea    -0x1(%ebx),%ecx
   32cc7:	89 4f 04             	mov    %ecx,0x4(%edi)
   32cca:	01 ca                	add    %ecx,%edx
   32ccc:	83 c0 01             	add    $0x1,%eax
   32ccf:	83 f8 07             	cmp    $0x7,%eax
   32cd2:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   32cd8:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32cde:	0f 8f 75 05 00 00    	jg     33259 <_svfprintf_r+0x1459>
   32ce4:	83 c7 08             	add    $0x8,%edi
   32ce7:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
   32ced:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
   32cf3:	89 0f                	mov    %ecx,(%edi)
   32cf5:	89 5f 04             	mov    %ebx,0x4(%edi)
   32cf8:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
   32cfb:	83 c0 01             	add    $0x1,%eax
   32cfe:	83 f8 07             	cmp    $0x7,%eax
   32d01:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32d07:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32d0d:	0f 8e 96 fb ff ff    	jle    328a9 <_svfprintf_r+0xaa9>
   32d13:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32d19:	89 44 24 08          	mov    %eax,0x8(%esp)
   32d1d:	8b 45 0c             	mov    0xc(%ebp),%eax
   32d20:	89 44 24 04          	mov    %eax,0x4(%esp)
   32d24:	8b 45 08             	mov    0x8(%ebp),%eax
   32d27:	89 04 24             	mov    %eax,(%esp)
   32d2a:	e8 51 3c 00 00       	call   36980 <__ssprint_r>
   32d2f:	85 c0                	test   %eax,%eax
   32d31:	0f 85 99 f2 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   32d37:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32d3d:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32d40:	e9 67 fb ff ff       	jmp    328ac <_svfprintf_r+0xaac>
   32d45:	8d 76 00             	lea    0x0(%esi),%esi
   32d48:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32d4e:	89 44 24 08          	mov    %eax,0x8(%esp)
   32d52:	8b 45 0c             	mov    0xc(%ebp),%eax
   32d55:	89 44 24 04          	mov    %eax,0x4(%esp)
   32d59:	8b 45 08             	mov    0x8(%ebp),%eax
   32d5c:	89 04 24             	mov    %eax,(%esp)
   32d5f:	e8 1c 3c 00 00       	call   36980 <__ssprint_r>
   32d64:	85 c0                	test   %eax,%eax
   32d66:	0f 84 43 fc ff ff    	je     329af <_svfprintf_r+0xbaf>
   32d6c:	e9 5f f2 ff ff       	jmp    31fd0 <_svfprintf_r+0x1d0>
   32d71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   32d78:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32d7e:	89 44 24 08          	mov    %eax,0x8(%esp)
   32d82:	8b 45 0c             	mov    0xc(%ebp),%eax
   32d85:	89 44 24 04          	mov    %eax,0x4(%esp)
   32d89:	8b 45 08             	mov    0x8(%ebp),%eax
   32d8c:	89 04 24             	mov    %eax,(%esp)
   32d8f:	e8 ec 3b 00 00       	call   36980 <__ssprint_r>
   32d94:	85 c0                	test   %eax,%eax
   32d96:	0f 85 34 f2 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   32d9c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32da2:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32da5:	e9 c8 f9 ff ff       	jmp    32772 <_svfprintf_r+0x972>
   32daa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32db0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32db6:	89 44 24 08          	mov    %eax,0x8(%esp)
   32dba:	8b 45 0c             	mov    0xc(%ebp),%eax
   32dbd:	89 44 24 04          	mov    %eax,0x4(%esp)
   32dc1:	8b 45 08             	mov    0x8(%ebp),%eax
   32dc4:	89 04 24             	mov    %eax,(%esp)
   32dc7:	e8 b4 3b 00 00       	call   36980 <__ssprint_r>
   32dcc:	85 c0                	test   %eax,%eax
   32dce:	0f 85 fc f1 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   32dd4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32dda:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32ddd:	e9 53 f9 ff ff       	jmp    32735 <_svfprintf_r+0x935>
   32de2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32de8:	89 c2                	mov    %eax,%edx
   32dea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32df0:	89 c8                	mov    %ecx,%eax
   32df2:	83 ea 01             	sub    $0x1,%edx
   32df5:	83 e0 07             	and    $0x7,%eax
   32df8:	c1 e9 03             	shr    $0x3,%ecx
   32dfb:	83 c0 30             	add    $0x30,%eax
   32dfe:	85 c9                	test   %ecx,%ecx
   32e00:	88 02                	mov    %al,(%edx)
   32e02:	75 ec                	jne    32df0 <_svfprintf_r+0xff0>
   32e04:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   32e0b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
   32e11:	0f 84 5b 01 00 00    	je     32f72 <_svfprintf_r+0x1172>
   32e17:	3c 30                	cmp    $0x30,%al
   32e19:	74 0b                	je     32e26 <_svfprintf_r+0x1026>
   32e1b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
   32e22:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
   32e26:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32e29:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
   32e2f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   32e35:	e9 1e f4 ff ff       	jmp    32258 <_svfprintf_r+0x458>
   32e3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32e40:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   32e46:	85 db                	test   %ebx,%ebx
   32e48:	0f 8e 66 05 00 00    	jle    333b4 <_svfprintf_r+0x15b4>
   32e4e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
   32e54:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
   32e5a:	01 d0                	add    %edx,%eax
   32e5c:	89 c3                	mov    %eax,%ebx
   32e5e:	29 d3                	sub    %edx,%ebx
   32e60:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
   32e66:	89 d0                	mov    %edx,%eax
   32e68:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   32e6e:	39 d3                	cmp    %edx,%ebx
   32e70:	0f 4f da             	cmovg  %edx,%ebx
   32e73:	85 db                	test   %ebx,%ebx
   32e75:	7e 28                	jle    32e9f <_svfprintf_r+0x109f>
   32e77:	89 07                	mov    %eax,(%edi)
   32e79:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32e7f:	01 d9                	add    %ebx,%ecx
   32e81:	89 5f 04             	mov    %ebx,0x4(%edi)
   32e84:	83 c7 08             	add    $0x8,%edi
   32e87:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32e8d:	83 c0 01             	add    $0x1,%eax
   32e90:	83 f8 07             	cmp    $0x7,%eax
   32e93:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32e99:	0f 8f 58 09 00 00    	jg     337f7 <_svfprintf_r+0x19f7>
   32e9f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
   32ea5:	31 c0                	xor    %eax,%eax
   32ea7:	85 db                	test   %ebx,%ebx
   32ea9:	0f 49 c3             	cmovns %ebx,%eax
   32eac:	29 c6                	sub    %eax,%esi
   32eae:	85 f6                	test   %esi,%esi
   32eb0:	0f 8e 40 02 00 00    	jle    330f6 <_svfprintf_r+0x12f6>
   32eb6:	83 fe 10             	cmp    $0x10,%esi
   32eb9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32ebf:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32ec5:	7f 15                	jg     32edc <_svfprintf_r+0x10dc>
   32ec7:	e9 db 01 00 00       	jmp    330a7 <_svfprintf_r+0x12a7>
   32ecc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32ed0:	83 ee 10             	sub    $0x10,%esi
   32ed3:	83 fe 10             	cmp    $0x10,%esi
   32ed6:	0f 8e cb 01 00 00    	jle    330a7 <_svfprintf_r+0x12a7>
   32edc:	83 c0 01             	add    $0x1,%eax
   32edf:	83 c1 10             	add    $0x10,%ecx
   32ee2:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   32ee8:	83 c7 08             	add    $0x8,%edi
   32eeb:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   32ef2:	83 f8 07             	cmp    $0x7,%eax
   32ef5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32efb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32f01:	7e cd                	jle    32ed0 <_svfprintf_r+0x10d0>
   32f03:	8b 45 0c             	mov    0xc(%ebp),%eax
   32f06:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32f0a:	89 44 24 04          	mov    %eax,0x4(%esp)
   32f0e:	8b 45 08             	mov    0x8(%ebp),%eax
   32f11:	89 04 24             	mov    %eax,(%esp)
   32f14:	e8 67 3a 00 00       	call   36980 <__ssprint_r>
   32f19:	85 c0                	test   %eax,%eax
   32f1b:	0f 85 af f0 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   32f21:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32f27:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32f2a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32f30:	eb 9e                	jmp    32ed0 <_svfprintf_r+0x10d0>
   32f32:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32f35:	be cd cc cc cc       	mov    $0xcccccccd,%esi
   32f3a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   32f40:	89 c7                	mov    %eax,%edi
   32f42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32f48:	89 c8                	mov    %ecx,%eax
   32f4a:	83 ef 01             	sub    $0x1,%edi
   32f4d:	f7 e6                	mul    %esi
   32f4f:	c1 ea 03             	shr    $0x3,%edx
   32f52:	8d 04 92             	lea    (%edx,%edx,4),%eax
   32f55:	01 c0                	add    %eax,%eax
   32f57:	29 c1                	sub    %eax,%ecx
   32f59:	83 c1 30             	add    $0x30,%ecx
   32f5c:	85 d2                	test   %edx,%edx
   32f5e:	88 0f                	mov    %cl,(%edi)
   32f60:	89 d1                	mov    %edx,%ecx
   32f62:	75 e4                	jne    32f48 <_svfprintf_r+0x1148>
   32f64:	89 fa                	mov    %edi,%edx
   32f66:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
   32f6c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
   32f72:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32f75:	29 d0                	sub    %edx,%eax
   32f77:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   32f7d:	e9 d6 f2 ff ff       	jmp    32258 <_svfprintf_r+0x458>
   32f82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32f88:	83 f9 09             	cmp    $0x9,%ecx
   32f8b:	77 a5                	ja     32f32 <_svfprintf_r+0x1132>
   32f8d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
   32f93:	83 c1 30             	add    $0x30,%ecx
   32f96:	88 4d a7             	mov    %cl,-0x59(%ebp)
   32f99:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   32f9f:	8d 45 a7             	lea    -0x59(%ebp),%eax
   32fa2:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32fa8:	e9 ab f2 ff ff       	jmp    32258 <_svfprintf_r+0x458>
   32fad:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32fb3:	89 44 24 08          	mov    %eax,0x8(%esp)
   32fb7:	8b 45 0c             	mov    0xc(%ebp),%eax
   32fba:	89 44 24 04          	mov    %eax,0x4(%esp)
   32fbe:	8b 45 08             	mov    0x8(%ebp),%eax
   32fc1:	89 04 24             	mov    %eax,(%esp)
   32fc4:	e8 b7 39 00 00       	call   36980 <__ssprint_r>
   32fc9:	85 c0                	test   %eax,%eax
   32fcb:	0f 85 ff ef ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   32fd1:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   32fd8:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32fdb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32fe1:	e9 18 f7 ff ff       	jmp    326fe <_svfprintf_r+0x8fe>
   32fe6:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   32fec:	8d 73 ff             	lea    -0x1(%ebx),%esi
   32fef:	85 f6                	test   %esi,%esi
   32ff1:	0f 8e f0 fc ff ff    	jle    32ce7 <_svfprintf_r+0xee7>
   32ff7:	83 fe 10             	cmp    $0x10,%esi
   32ffa:	7e 70                	jle    3306c <_svfprintf_r+0x126c>
   32ffc:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   33002:	eb 0c                	jmp    33010 <_svfprintf_r+0x1210>
   33004:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33008:	83 ee 10             	sub    $0x10,%esi
   3300b:	83 fe 10             	cmp    $0x10,%esi
   3300e:	7e 5c                	jle    3306c <_svfprintf_r+0x126c>
   33010:	83 c0 01             	add    $0x1,%eax
   33013:	83 c2 10             	add    $0x10,%edx
   33016:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   3301c:	83 c7 08             	add    $0x8,%edi
   3301f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   33026:	83 f8 07             	cmp    $0x7,%eax
   33029:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   3302f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33035:	7e d1                	jle    33008 <_svfprintf_r+0x1208>
   33037:	8b 45 0c             	mov    0xc(%ebp),%eax
   3303a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   3303e:	89 44 24 04          	mov    %eax,0x4(%esp)
   33042:	8b 45 08             	mov    0x8(%ebp),%eax
   33045:	89 04 24             	mov    %eax,(%esp)
   33048:	e8 33 39 00 00       	call   36980 <__ssprint_r>
   3304d:	85 c0                	test   %eax,%eax
   3304f:	0f 85 7b ef ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   33055:	83 ee 10             	sub    $0x10,%esi
   33058:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3305e:	83 fe 10             	cmp    $0x10,%esi
   33061:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33067:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3306a:	7f a4                	jg     33010 <_svfprintf_r+0x1210>
   3306c:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   33072:	01 f2                	add    %esi,%edx
   33074:	89 77 04             	mov    %esi,0x4(%edi)
   33077:	e9 50 fc ff ff       	jmp    32ccc <_svfprintf_r+0xecc>
   3307c:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   33082:	01 f1                	add    %esi,%ecx
   33084:	89 77 04             	mov    %esi,0x4(%edi)
   33087:	e9 6f fc ff ff       	jmp    32cfb <_svfprintf_r+0xefb>
   3308c:	8b 45 14             	mov    0x14(%ebp),%eax
   3308f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
   33095:	8b 00                	mov    (%eax),%eax
   33097:	89 10                	mov    %edx,(%eax)
   33099:	8b 45 14             	mov    0x14(%ebp),%eax
   3309c:	83 c0 04             	add    $0x4,%eax
   3309f:	89 45 14             	mov    %eax,0x14(%ebp)
   330a2:	e9 f4 ed ff ff       	jmp    31e9b <_svfprintf_r+0x9b>
   330a7:	83 c0 01             	add    $0x1,%eax
   330aa:	01 f1                	add    %esi,%ecx
   330ac:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   330b2:	83 c7 08             	add    $0x8,%edi
   330b5:	89 77 fc             	mov    %esi,-0x4(%edi)
   330b8:	83 f8 07             	cmp    $0x7,%eax
   330bb:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   330c1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   330c7:	7e 2d                	jle    330f6 <_svfprintf_r+0x12f6>
   330c9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   330cf:	89 44 24 08          	mov    %eax,0x8(%esp)
   330d3:	8b 45 0c             	mov    0xc(%ebp),%eax
   330d6:	89 44 24 04          	mov    %eax,0x4(%esp)
   330da:	8b 45 08             	mov    0x8(%ebp),%eax
   330dd:	89 04 24             	mov    %eax,(%esp)
   330e0:	e8 9b 38 00 00       	call   36980 <__ssprint_r>
   330e5:	85 c0                	test   %eax,%eax
   330e7:	0f 85 e3 ee ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   330ed:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   330f3:	8d 7d a8             	lea    -0x58(%ebp),%edi
   330f6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   330fc:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
   33102:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
   33108:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
   3310e:	89 c6                	mov    %eax,%esi
   33110:	7c 0d                	jl     3311f <_svfprintf_r+0x131f>
   33112:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   33119:	0f 84 5e 05 00 00    	je     3367d <_svfprintf_r+0x187d>
   3311f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
   33125:	89 07                	mov    %eax,(%edi)
   33127:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
   3312d:	01 c1                	add    %eax,%ecx
   3312f:	89 47 04             	mov    %eax,0x4(%edi)
   33132:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33138:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   3313e:	83 c0 01             	add    $0x1,%eax
   33141:	83 f8 07             	cmp    $0x7,%eax
   33144:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3314a:	0f 8f d9 06 00 00    	jg     33829 <_svfprintf_r+0x1a29>
   33150:	83 c7 08             	add    $0x8,%edi
   33153:	89 d0                	mov    %edx,%eax
   33155:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
   3315b:	89 f2                	mov    %esi,%edx
   3315d:	29 f3                	sub    %esi,%ebx
   3315f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
   33165:	29 c6                	sub    %eax,%esi
   33167:	39 de                	cmp    %ebx,%esi
   33169:	0f 4e de             	cmovle %esi,%ebx
   3316c:	85 db                	test   %ebx,%ebx
   3316e:	7e 29                	jle    33199 <_svfprintf_r+0x1399>
   33170:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33176:	01 d9                	add    %ebx,%ecx
   33178:	83 c7 08             	add    $0x8,%edi
   3317b:	89 57 f8             	mov    %edx,-0x8(%edi)
   3317e:	89 5f fc             	mov    %ebx,-0x4(%edi)
   33181:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   33187:	83 c0 01             	add    $0x1,%eax
   3318a:	83 f8 07             	cmp    $0x7,%eax
   3318d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33193:	0f 8f c8 06 00 00    	jg     33861 <_svfprintf_r+0x1a61>
   33199:	31 c0                	xor    %eax,%eax
   3319b:	85 db                	test   %ebx,%ebx
   3319d:	0f 49 c3             	cmovns %ebx,%eax
   331a0:	29 c6                	sub    %eax,%esi
   331a2:	85 f6                	test   %esi,%esi
   331a4:	0f 8e 02 f7 ff ff    	jle    328ac <_svfprintf_r+0xaac>
   331aa:	83 fe 10             	cmp    $0x10,%esi
   331ad:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   331b3:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   331b9:	7f 11                	jg     331cc <_svfprintf_r+0x13cc>
   331bb:	e9 bc fe ff ff       	jmp    3307c <_svfprintf_r+0x127c>
   331c0:	83 ee 10             	sub    $0x10,%esi
   331c3:	83 fe 10             	cmp    $0x10,%esi
   331c6:	0f 8e b0 fe ff ff    	jle    3307c <_svfprintf_r+0x127c>
   331cc:	83 c0 01             	add    $0x1,%eax
   331cf:	83 c1 10             	add    $0x10,%ecx
   331d2:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   331d8:	83 c7 08             	add    $0x8,%edi
   331db:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   331e2:	83 f8 07             	cmp    $0x7,%eax
   331e5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   331eb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   331f1:	7e cd                	jle    331c0 <_svfprintf_r+0x13c0>
   331f3:	8b 45 0c             	mov    0xc(%ebp),%eax
   331f6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   331fa:	89 44 24 04          	mov    %eax,0x4(%esp)
   331fe:	8b 45 08             	mov    0x8(%ebp),%eax
   33201:	89 04 24             	mov    %eax,(%esp)
   33204:	e8 77 37 00 00       	call   36980 <__ssprint_r>
   33209:	85 c0                	test   %eax,%eax
   3320b:	0f 85 bf ed ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   33211:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   33217:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3321a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33220:	eb 9e                	jmp    331c0 <_svfprintf_r+0x13c0>
   33222:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   33229:	0f 85 14 fa ff ff    	jne    32c43 <_svfprintf_r+0xe43>
   3322f:	89 07                	mov    %eax,(%edi)
   33231:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33237:	8d 51 01             	lea    0x1(%ecx),%edx
   3323a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
   33241:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   33247:	83 c0 01             	add    $0x1,%eax
   3324a:	83 f8 07             	cmp    $0x7,%eax
   3324d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33253:	0f 8e 8b fa ff ff    	jle    32ce4 <_svfprintf_r+0xee4>
   33259:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3325f:	89 44 24 08          	mov    %eax,0x8(%esp)
   33263:	8b 45 0c             	mov    0xc(%ebp),%eax
   33266:	89 44 24 04          	mov    %eax,0x4(%esp)
   3326a:	8b 45 08             	mov    0x8(%ebp),%eax
   3326d:	89 04 24             	mov    %eax,(%esp)
   33270:	e8 0b 37 00 00       	call   36980 <__ssprint_r>
   33275:	85 c0                	test   %eax,%eax
   33277:	0f 85 53 ed ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   3327d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   33283:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33286:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3328c:	e9 56 fa ff ff       	jmp    32ce7 <_svfprintf_r+0xee7>
   33291:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33297:	89 44 24 08          	mov    %eax,0x8(%esp)
   3329b:	8b 45 0c             	mov    0xc(%ebp),%eax
   3329e:	89 44 24 04          	mov    %eax,0x4(%esp)
   332a2:	8b 45 08             	mov    0x8(%ebp),%eax
   332a5:	89 04 24             	mov    %eax,(%esp)
   332a8:	e8 d3 36 00 00       	call   36980 <__ssprint_r>
   332ad:	85 c0                	test   %eax,%eax
   332af:	0f 85 1b ed ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   332b5:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   332bb:	8d 7d a8             	lea    -0x58(%ebp),%edi
   332be:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   332c4:	e9 d6 f9 ff ff       	jmp    32c9f <_svfprintf_r+0xe9f>
   332c9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   332cf:	89 44 24 08          	mov    %eax,0x8(%esp)
   332d3:	8b 45 0c             	mov    0xc(%ebp),%eax
   332d6:	89 44 24 04          	mov    %eax,0x4(%esp)
   332da:	8b 45 08             	mov    0x8(%ebp),%eax
   332dd:	89 04 24             	mov    %eax,(%esp)
   332e0:	e8 9b 36 00 00       	call   36980 <__ssprint_r>
   332e5:	85 c0                	test   %eax,%eax
   332e7:	0f 85 e3 ec ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   332ed:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   332f3:	8d 7d a8             	lea    -0x58(%ebp),%edi
   332f6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   332fc:	e9 6f f9 ff ff       	jmp    32c70 <_svfprintf_r+0xe70>
   33301:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   33307:	dd 1c 24             	fstpl  (%esp)
   3330a:	e8 11 35 00 00       	call   36820 <__fpclassifyd>
   3330f:	85 c0                	test   %eax,%eax
   33311:	0f 85 a3 01 00 00    	jne    334ba <_svfprintf_r+0x16ba>
   33317:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
   3331e:	ba ee 98 03 00       	mov    $0x398ee,%edx
   33323:	b8 f2 98 03 00       	mov    $0x398f2,%eax
   33328:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   3332f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
   33336:	00 00 00 
   33339:	0f 4e c2             	cmovle %edx,%eax
   3333c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   33342:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
   33349:	ff ff ff 
   3334c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
   33353:	00 00 00 
   33356:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   3335d:	00 00 00 
   33360:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   33367:	00 00 00 
   3336a:	e9 29 ed ff ff       	jmp    32098 <_svfprintf_r+0x298>
   3336f:	dd 00                	fldl   (%eax)
   33371:	83 c0 08             	add    $0x8,%eax
   33374:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
   3337a:	89 45 14             	mov    %eax,0x14(%ebp)
   3337d:	e9 e6 ef ff ff       	jmp    32368 <_svfprintf_r+0x568>
   33382:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33388:	89 44 24 08          	mov    %eax,0x8(%esp)
   3338c:	8b 45 0c             	mov    0xc(%ebp),%eax
   3338f:	89 44 24 04          	mov    %eax,0x4(%esp)
   33393:	8b 45 08             	mov    0x8(%ebp),%eax
   33396:	89 04 24             	mov    %eax,(%esp)
   33399:	e8 e2 35 00 00       	call   36980 <__ssprint_r>
   3339e:	85 c0                	test   %eax,%eax
   333a0:	0f 85 2a ec ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   333a6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   333ac:	8d 7d a8             	lea    -0x58(%ebp),%edi
   333af:	e9 6b f6 ff ff       	jmp    32a1f <_svfprintf_r+0xc1f>
   333b4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   333ba:	83 c1 01             	add    $0x1,%ecx
   333bd:	83 c7 08             	add    $0x8,%edi
   333c0:	c7 47 f8 1f 99 03 00 	movl   $0x3991f,-0x8(%edi)
   333c7:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
   333ce:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   333d4:	83 c0 01             	add    $0x1,%eax
   333d7:	83 f8 07             	cmp    $0x7,%eax
   333da:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   333e0:	0f 8f ef 02 00 00    	jg     336d5 <_svfprintf_r+0x18d5>
   333e6:	85 db                	test   %ebx,%ebx
   333e8:	75 17                	jne    33401 <_svfprintf_r+0x1601>
   333ea:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
   333f0:	85 d2                	test   %edx,%edx
   333f2:	75 0d                	jne    33401 <_svfprintf_r+0x1601>
   333f4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   333fb:	0f 84 ab f4 ff ff    	je     328ac <_svfprintf_r+0xaac>
   33401:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
   33407:	83 c7 08             	add    $0x8,%edi
   3340a:	89 47 f8             	mov    %eax,-0x8(%edi)
   3340d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
   33413:	89 47 fc             	mov    %eax,-0x4(%edi)
   33416:	8d 14 01             	lea    (%ecx,%eax,1),%edx
   33419:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3341f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   33425:	83 c0 01             	add    $0x1,%eax
   33428:	83 f8 07             	cmp    $0x7,%eax
   3342b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33431:	0f 8f 60 03 00 00    	jg     33797 <_svfprintf_r+0x1997>
   33437:	f7 db                	neg    %ebx
   33439:	85 db                	test   %ebx,%ebx
   3343b:	0f 8e 21 03 00 00    	jle    33762 <_svfprintf_r+0x1962>
   33441:	83 fb 10             	cmp    $0x10,%ebx
   33444:	0f 8e c3 02 00 00    	jle    3370d <_svfprintf_r+0x190d>
   3344a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
   33450:	eb 12                	jmp    33464 <_svfprintf_r+0x1664>
   33452:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   33458:	83 eb 10             	sub    $0x10,%ebx
   3345b:	83 fb 10             	cmp    $0x10,%ebx
   3345e:	0f 8e a9 02 00 00    	jle    3370d <_svfprintf_r+0x190d>
   33464:	83 c0 01             	add    $0x1,%eax
   33467:	83 c2 10             	add    $0x10,%edx
   3346a:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   33470:	83 c7 08             	add    $0x8,%edi
   33473:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   3347a:	83 f8 07             	cmp    $0x7,%eax
   3347d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   33483:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33489:	7e cd                	jle    33458 <_svfprintf_r+0x1658>
   3348b:	8b 45 0c             	mov    0xc(%ebp),%eax
   3348e:	89 74 24 08          	mov    %esi,0x8(%esp)
   33492:	89 44 24 04          	mov    %eax,0x4(%esp)
   33496:	8b 45 08             	mov    0x8(%ebp),%eax
   33499:	89 04 24             	mov    %eax,(%esp)
   3349c:	e8 df 34 00 00       	call   36980 <__ssprint_r>
   334a1:	85 c0                	test   %eax,%eax
   334a3:	0f 85 27 eb ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   334a9:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   334af:	8d 7d a8             	lea    -0x58(%ebp),%edi
   334b2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   334b8:	eb 9e                	jmp    33458 <_svfprintf_r+0x1658>
   334ba:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
   334c0:	83 e3 df             	and    $0xffffffdf,%ebx
   334c3:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
   334ca:	0f 84 05 03 00 00    	je     337d5 <_svfprintf_r+0x19d5>
   334d0:	83 fb 47             	cmp    $0x47,%ebx
   334d3:	75 16                	jne    334eb <_svfprintf_r+0x16eb>
   334d5:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   334db:	b8 01 00 00 00       	mov    $0x1,%eax
   334e0:	85 d2                	test   %edx,%edx
   334e2:	0f 45 c2             	cmovne %edx,%eax
   334e5:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
   334eb:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
   334f1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   334f7:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
   334fd:	80 cc 01             	or     $0x1,%ah
   33500:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
   33506:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
   3350c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
   33513:	85 c0                	test   %eax,%eax
   33515:	0f 88 ba 05 00 00    	js     33ad5 <_svfprintf_r+0x1cd5>
   3351b:	83 fb 46             	cmp    $0x46,%ebx
   3351e:	0f 94 c0             	sete   %al
   33521:	89 c6                	mov    %eax,%esi
   33523:	0f 84 d4 03 00 00    	je     338fd <_svfprintf_r+0x1afd>
   33529:	83 fb 45             	cmp    $0x45,%ebx
   3352c:	0f 85 99 05 00 00    	jne    33acb <_svfprintf_r+0x1ccb>
   33532:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   33538:	dd 54 24 04          	fstl   0x4(%esp)
   3353c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
   33543:	00 
   33544:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
   3354a:	8d 70 01             	lea    0x1(%eax),%esi
   3354d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
   33553:	89 44 24 1c          	mov    %eax,0x1c(%esp)
   33557:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
   3355d:	89 44 24 18          	mov    %eax,0x18(%esp)
   33561:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
   33567:	89 44 24 14          	mov    %eax,0x14(%esp)
   3356b:	8b 45 08             	mov    0x8(%ebp),%eax
   3356e:	89 74 24 10          	mov    %esi,0x10(%esp)
   33572:	89 04 24             	mov    %eax,(%esp)
   33575:	e8 56 09 00 00       	call   33ed0 <_dtoa_r>
   3357a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   33580:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
   33583:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
   33589:	d9 ee                	fldz   
   3358b:	d9 c9                	fxch   %st(1)
   3358d:	df e9                	fucomip %st(1),%st
   3358f:	dd d8                	fstp   %st(0)
   33591:	0f 8a fd 00 00 00    	jp     33694 <_svfprintf_r+0x1894>
   33597:	89 c8                	mov    %ecx,%eax
   33599:	0f 85 f5 00 00 00    	jne    33694 <_svfprintf_r+0x1894>
   3359f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
   335a5:	83 fb 47             	cmp    $0x47,%ebx
   335a8:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
   335ae:	0f 84 1e 04 00 00    	je     339d2 <_svfprintf_r+0x1bd2>
   335b4:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
   335bb:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   335c1:	0f 8e 65 04 00 00    	jle    33a2c <_svfprintf_r+0x1c2c>
   335c7:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
   335ce:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
   335d4:	0f 84 3c 05 00 00    	je     33b16 <_svfprintf_r+0x1d16>
   335da:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
   335e0:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
   335e6:	0f 8f f7 04 00 00    	jg     33ae3 <_svfprintf_r+0x1ce3>
   335ec:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
   335f2:	83 e0 01             	and    $0x1,%eax
   335f5:	0f 85 e2 05 00 00    	jne    33bdd <_svfprintf_r+0x1ddd>
   335fb:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   33601:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
   33608:	00 00 00 
   3360b:	85 d2                	test   %edx,%edx
   3360d:	0f 49 c2             	cmovns %edx,%eax
   33610:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33616:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
   3361d:	0f 85 68 03 00 00    	jne    3398b <_svfprintf_r+0x1b8b>
   33623:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   33629:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
   3362f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   33636:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   3363d:	00 00 00 
   33640:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
   33646:	e9 4d ea ff ff       	jmp    32098 <_svfprintf_r+0x298>
   3364b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33651:	89 44 24 08          	mov    %eax,0x8(%esp)
   33655:	8b 45 0c             	mov    0xc(%ebp),%eax
   33658:	89 44 24 04          	mov    %eax,0x4(%esp)
   3365c:	8b 45 08             	mov    0x8(%ebp),%eax
   3365f:	89 04 24             	mov    %eax,(%esp)
   33662:	e8 19 33 00 00       	call   36980 <__ssprint_r>
   33667:	85 c0                	test   %eax,%eax
   33669:	0f 85 61 e9 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   3366f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   33675:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33678:	e9 f2 f3 ff ff       	jmp    32a6f <_svfprintf_r+0xc6f>
   3367d:	89 d0                	mov    %edx,%eax
   3367f:	e9 d1 fa ff ff       	jmp    33155 <_svfprintf_r+0x1355>
   33684:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33688:	8d 50 01             	lea    0x1(%eax),%edx
   3368b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
   33691:	c6 00 30             	movb   $0x30,(%eax)
   33694:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
   3369a:	39 c1                	cmp    %eax,%ecx
   3369c:	77 ea                	ja     33688 <_svfprintf_r+0x1888>
   3369e:	e9 fc fe ff ff       	jmp    3359f <_svfprintf_r+0x179f>
   336a3:	8b 45 08             	mov    0x8(%ebp),%eax
   336a6:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
   336ad:	00 
   336ae:	89 04 24             	mov    %eax,(%esp)
   336b1:	e8 4a 1b 00 00       	call   35200 <_malloc_r>
   336b6:	8b 55 0c             	mov    0xc(%ebp),%edx
   336b9:	85 c0                	test   %eax,%eax
   336bb:	89 02                	mov    %eax,(%edx)
   336bd:	89 42 10             	mov    %eax,0x10(%edx)
   336c0:	0f 84 15 06 00 00    	je     33cdb <_svfprintf_r+0x1edb>
   336c6:	8b 45 0c             	mov    0xc(%ebp),%eax
   336c9:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
   336d0:	e9 6c e7 ff ff       	jmp    31e41 <_svfprintf_r+0x41>
   336d5:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   336db:	89 44 24 08          	mov    %eax,0x8(%esp)
   336df:	8b 45 0c             	mov    0xc(%ebp),%eax
   336e2:	89 44 24 04          	mov    %eax,0x4(%esp)
   336e6:	8b 45 08             	mov    0x8(%ebp),%eax
   336e9:	89 04 24             	mov    %eax,(%esp)
   336ec:	e8 8f 32 00 00       	call   36980 <__ssprint_r>
   336f1:	85 c0                	test   %eax,%eax
   336f3:	0f 85 d7 e8 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   336f9:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   336ff:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33702:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   33708:	e9 d9 fc ff ff       	jmp    333e6 <_svfprintf_r+0x15e6>
   3370d:	83 c0 01             	add    $0x1,%eax
   33710:	01 da                	add    %ebx,%edx
   33712:	c7 07 88 9a 03 00    	movl   $0x39a88,(%edi)
   33718:	83 c7 08             	add    $0x8,%edi
   3371b:	89 5f fc             	mov    %ebx,-0x4(%edi)
   3371e:	83 f8 07             	cmp    $0x7,%eax
   33721:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   33727:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3372d:	7e 33                	jle    33762 <_svfprintf_r+0x1962>
   3372f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33735:	89 44 24 08          	mov    %eax,0x8(%esp)
   33739:	8b 45 0c             	mov    0xc(%ebp),%eax
   3373c:	89 44 24 04          	mov    %eax,0x4(%esp)
   33740:	8b 45 08             	mov    0x8(%ebp),%eax
   33743:	89 04 24             	mov    %eax,(%esp)
   33746:	e8 35 32 00 00       	call   36980 <__ssprint_r>
   3374b:	85 c0                	test   %eax,%eax
   3374d:	0f 85 7d e8 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   33753:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   33759:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3375c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33762:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
   33768:	83 c0 01             	add    $0x1,%eax
   3376b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33771:	89 1f                	mov    %ebx,(%edi)
   33773:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   33779:	01 da                	add    %ebx,%edx
   3377b:	83 f8 07             	cmp    $0x7,%eax
   3377e:	89 5f 04             	mov    %ebx,0x4(%edi)
   33781:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   33787:	0f 8f 86 f5 ff ff    	jg     32d13 <_svfprintf_r+0xf13>
   3378d:	83 c7 08             	add    $0x8,%edi
   33790:	89 d1                	mov    %edx,%ecx
   33792:	e9 15 f1 ff ff       	jmp    328ac <_svfprintf_r+0xaac>
   33797:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3379d:	89 44 24 08          	mov    %eax,0x8(%esp)
   337a1:	8b 45 0c             	mov    0xc(%ebp),%eax
   337a4:	89 44 24 04          	mov    %eax,0x4(%esp)
   337a8:	8b 45 08             	mov    0x8(%ebp),%eax
   337ab:	89 04 24             	mov    %eax,(%esp)
   337ae:	e8 cd 31 00 00       	call   36980 <__ssprint_r>
   337b3:	85 c0                	test   %eax,%eax
   337b5:	0f 85 15 e8 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   337bb:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   337c1:	8d 7d a8             	lea    -0x58(%ebp),%edi
   337c4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   337ca:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   337d0:	e9 62 fc ff ff       	jmp    33437 <_svfprintf_r+0x1637>
   337d5:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
   337dc:	00 00 00 
   337df:	e9 07 fd ff ff       	jmp    334eb <_svfprintf_r+0x16eb>
   337e4:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   337ea:	89 04 24             	mov    %eax,(%esp)
   337ed:	e8 0e 31 00 00       	call   36900 <strlen>
   337f2:	e9 6a e8 ff ff       	jmp    32061 <_svfprintf_r+0x261>
   337f7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   337fd:	89 44 24 08          	mov    %eax,0x8(%esp)
   33801:	8b 45 0c             	mov    0xc(%ebp),%eax
   33804:	89 44 24 04          	mov    %eax,0x4(%esp)
   33808:	8b 45 08             	mov    0x8(%ebp),%eax
   3380b:	89 04 24             	mov    %eax,(%esp)
   3380e:	e8 6d 31 00 00       	call   36980 <__ssprint_r>
   33813:	85 c0                	test   %eax,%eax
   33815:	0f 85 b5 e7 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   3381b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   33821:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33824:	e9 76 f6 ff ff       	jmp    32e9f <_svfprintf_r+0x109f>
   33829:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3382f:	89 44 24 08          	mov    %eax,0x8(%esp)
   33833:	8b 45 0c             	mov    0xc(%ebp),%eax
   33836:	89 44 24 04          	mov    %eax,0x4(%esp)
   3383a:	8b 45 08             	mov    0x8(%ebp),%eax
   3383d:	89 04 24             	mov    %eax,(%esp)
   33840:	e8 3b 31 00 00       	call   36980 <__ssprint_r>
   33845:	85 c0                	test   %eax,%eax
   33847:	0f 85 83 e7 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   3384d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   33853:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33856:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   3385c:	e9 f4 f8 ff ff       	jmp    33155 <_svfprintf_r+0x1355>
   33861:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33867:	89 44 24 08          	mov    %eax,0x8(%esp)
   3386b:	8b 45 0c             	mov    0xc(%ebp),%eax
   3386e:	89 44 24 04          	mov    %eax,0x4(%esp)
   33872:	8b 45 08             	mov    0x8(%ebp),%eax
   33875:	89 04 24             	mov    %eax,(%esp)
   33878:	e8 03 31 00 00       	call   36980 <__ssprint_r>
   3387d:	85 c0                	test   %eax,%eax
   3387f:	0f 85 4b e7 ff ff    	jne    31fd0 <_svfprintf_r+0x1d0>
   33885:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
   3388b:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3388e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
   33894:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   3389a:	e9 fa f8 ff ff       	jmp    33199 <_svfprintf_r+0x1399>
   3389f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   338a5:	b0 06                	mov    $0x6,%al
   338a7:	89 75 14             	mov    %esi,0x14(%ebp)
   338aa:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   338b1:	00 00 00 
   338b4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   338bb:	00 00 00 
   338be:	83 fa 06             	cmp    $0x6,%edx
   338c1:	0f 46 c2             	cmovbe %edx,%eax
   338c4:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
   338ca:	85 c0                	test   %eax,%eax
   338cc:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   338d2:	c7 85 28 ff ff ff 18 	movl   $0x39918,-0xd8(%ebp)
   338d9:	99 03 00 
   338dc:	0f 49 d0             	cmovns %eax,%edx
   338df:	31 db                	xor    %ebx,%ebx
   338e1:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
   338e7:	e9 b7 e7 ff ff       	jmp    320a3 <_svfprintf_r+0x2a3>
   338ec:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
   338f3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
   338f8:	e9 9d ea ff ff       	jmp    3239a <_svfprintf_r+0x59a>
   338fd:	ba 03 00 00 00       	mov    $0x3,%edx
   33902:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
   33908:	89 44 24 1c          	mov    %eax,0x1c(%esp)
   3390c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
   33912:	89 44 24 18          	mov    %eax,0x18(%esp)
   33916:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
   3391c:	89 44 24 14          	mov    %eax,0x14(%esp)
   33920:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   33926:	dd 54 24 04          	fstl   0x4(%esp)
   3392a:	89 54 24 0c          	mov    %edx,0xc(%esp)
   3392e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
   33934:	89 44 24 10          	mov    %eax,0x10(%esp)
   33938:	8b 45 08             	mov    0x8(%ebp),%eax
   3393b:	89 04 24             	mov    %eax,(%esp)
   3393e:	e8 8d 05 00 00       	call   33ed0 <_dtoa_r>
   33943:	83 fb 47             	cmp    $0x47,%ebx
   33946:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   3394c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
   33952:	75 09                	jne    3395d <_svfprintf_r+0x1b5d>
   33954:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   3395b:	74 5b                	je     339b8 <_svfprintf_r+0x1bb8>
   3395d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
   33963:	89 f0                	mov    %esi,%eax
   33965:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
   3396b:	01 d1                	add    %edx,%ecx
   3396d:	84 c0                	test   %al,%al
   3396f:	0f 84 14 fc ff ff    	je     33589 <_svfprintf_r+0x1789>
   33975:	80 3a 30             	cmpb   $0x30,(%edx)
   33978:	0f 84 37 02 00 00    	je     33bb5 <_svfprintf_r+0x1db5>
   3397e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   33984:	01 c1                	add    %eax,%ecx
   33986:	e9 fe fb ff ff       	jmp    33589 <_svfprintf_r+0x1789>
   3398b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   33991:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
   33997:	bb 2d 00 00 00       	mov    $0x2d,%ebx
   3399c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
   339a3:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   339aa:	00 00 00 
   339ad:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
   339b3:	e9 e4 e6 ff ff       	jmp    3209c <_svfprintf_r+0x29c>
   339b8:	dd d8                	fstp   %st(0)
   339ba:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
   339c0:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
   339c6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   339cc:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
   339d2:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   339d8:	83 f8 fd             	cmp    $0xfffffffd,%eax
   339db:	7c 48                	jl     33a25 <_svfprintf_r+0x1c25>
   339dd:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
   339e3:	7c 40                	jl     33a25 <_svfprintf_r+0x1c25>
   339e5:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
   339eb:	e9 ea fb ff ff       	jmp    335da <_svfprintf_r+0x17da>
   339f0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   339f6:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   339fd:	89 75 14             	mov    %esi,0x14(%ebp)
   33a00:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   33a07:	00 00 00 
   33a0a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   33a10:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   33a16:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   33a1d:	00 00 00 
   33a20:	e9 73 e6 ff ff       	jmp    32098 <_svfprintf_r+0x298>
   33a25:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
   33a2c:	8d 48 ff             	lea    -0x1(%eax),%ecx
   33a2f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
   33a36:	85 c9                	test   %ecx,%ecx
   33a38:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
   33a3e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
   33a44:	0f 88 2c 02 00 00    	js     33c76 <_svfprintf_r+0x1e76>
   33a4a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
   33a51:	83 f9 09             	cmp    $0x9,%ecx
   33a54:	0f 8f ea 00 00 00    	jg     33b44 <_svfprintf_r+0x1d44>
   33a5a:	83 c1 30             	add    $0x30,%ecx
   33a5d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
   33a64:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
   33a6a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
   33a70:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   33a76:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
   33a7c:	29 d0                	sub    %edx,%eax
   33a7e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
   33a84:	89 da                	mov    %ebx,%edx
   33a86:	01 c2                	add    %eax,%edx
   33a88:	83 fb 01             	cmp    $0x1,%ebx
   33a8b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33a91:	0f 8e 21 02 00 00    	jle    33cb8 <_svfprintf_r+0x1eb8>
   33a97:	31 c0                	xor    %eax,%eax
   33a99:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
   33aa0:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
   33aa7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   33aae:	00 00 00 
   33ab1:	e9 60 fb ff ff       	jmp    33616 <_svfprintf_r+0x1816>
   33ab6:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   33abc:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   33ac3:	00 00 00 
   33ac6:	e9 68 e4 ff ff       	jmp    31f33 <_svfprintf_r+0x133>
   33acb:	ba 02 00 00 00       	mov    $0x2,%edx
   33ad0:	e9 2d fe ff ff       	jmp    33902 <_svfprintf_r+0x1b02>
   33ad5:	d9 e0                	fchs   
   33ad7:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
   33ade:	e9 38 fa ff ff       	jmp    3351b <_svfprintf_r+0x171b>
   33ae3:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
   33ae9:	ba 01 00 00 00       	mov    $0x1,%edx
   33aee:	85 c9                	test   %ecx,%ecx
   33af0:	0f 8e 5a 01 00 00    	jle    33c50 <_svfprintf_r+0x1e50>
   33af6:	31 c0                	xor    %eax,%eax
   33af8:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
   33afe:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
   33b05:	00 00 00 
   33b08:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33b0e:	0f 49 c2             	cmovns %edx,%eax
   33b11:	e9 00 fb ff ff       	jmp    33616 <_svfprintf_r+0x1816>
   33b16:	85 c0                	test   %eax,%eax
   33b18:	0f 8e 06 01 00 00    	jle    33c24 <_svfprintf_r+0x1e24>
   33b1e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
   33b24:	85 f6                	test   %esi,%esi
   33b26:	0f 85 d4 00 00 00    	jne    33c00 <_svfprintf_r+0x1e00>
   33b2c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   33b33:	0f 85 c7 00 00 00    	jne    33c00 <_svfprintf_r+0x1e00>
   33b39:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   33b3f:	e9 d2 fa ff ff       	jmp    33616 <_svfprintf_r+0x1816>
   33b44:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
   33b4a:	89 f3                	mov    %esi,%ebx
   33b4c:	b8 67 66 66 66       	mov    $0x66666667,%eax
   33b51:	83 eb 01             	sub    $0x1,%ebx
   33b54:	f7 e9                	imul   %ecx
   33b56:	89 c8                	mov    %ecx,%eax
   33b58:	c1 f8 1f             	sar    $0x1f,%eax
   33b5b:	c1 fa 02             	sar    $0x2,%edx
   33b5e:	29 c2                	sub    %eax,%edx
   33b60:	8d 04 92             	lea    (%edx,%edx,4),%eax
   33b63:	01 c0                	add    %eax,%eax
   33b65:	29 c1                	sub    %eax,%ecx
   33b67:	83 fa 09             	cmp    $0x9,%edx
   33b6a:	8d 41 30             	lea    0x30(%ecx),%eax
   33b6d:	89 d1                	mov    %edx,%ecx
   33b6f:	88 03                	mov    %al,(%ebx)
   33b71:	7f d9                	jg     33b4c <_svfprintf_r+0x1d4c>
   33b73:	8d 43 ff             	lea    -0x1(%ebx),%eax
   33b76:	83 c1 30             	add    $0x30,%ecx
   33b79:	39 f0                	cmp    %esi,%eax
   33b7b:	88 4b ff             	mov    %cl,-0x1(%ebx)
   33b7e:	0f 83 6a 01 00 00    	jae    33cee <_svfprintf_r+0x1eee>
   33b84:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
   33b8a:	eb 07                	jmp    33b93 <_svfprintf_r+0x1d93>
   33b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33b90:	0f b6 08             	movzbl (%eax),%ecx
   33b93:	83 c0 01             	add    $0x1,%eax
   33b96:	83 c2 01             	add    $0x1,%edx
   33b99:	39 f0                	cmp    %esi,%eax
   33b9b:	88 4a ff             	mov    %cl,-0x1(%edx)
   33b9e:	75 f0                	jne    33b90 <_svfprintf_r+0x1d90>
   33ba0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33ba6:	29 d8                	sub    %ebx,%eax
   33ba8:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
   33bae:	01 d0                	add    %edx,%eax
   33bb0:	e9 bb fe ff ff       	jmp    33a70 <_svfprintf_r+0x1c70>
   33bb5:	d9 ee                	fldz   
   33bb7:	d9 c9                	fxch   %st(1)
   33bb9:	db e9                	fucomi %st(1),%st
   33bbb:	dd d9                	fstp   %st(1)
   33bbd:	7a 06                	jp     33bc5 <_svfprintf_r+0x1dc5>
   33bbf:	0f 84 b9 fd ff ff    	je     3397e <_svfprintf_r+0x1b7e>
   33bc5:	b8 01 00 00 00       	mov    $0x1,%eax
   33bca:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
   33bd0:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
   33bd6:	01 c1                	add    %eax,%ecx
   33bd8:	e9 ac f9 ff ff       	jmp    33589 <_svfprintf_r+0x1789>
   33bdd:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   33be3:	31 c0                	xor    %eax,%eax
   33be5:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
   33bec:	00 00 00 
   33bef:	83 c2 01             	add    $0x1,%edx
   33bf2:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33bf8:	0f 49 c2             	cmovns %edx,%eax
   33bfb:	e9 16 fa ff ff       	jmp    33616 <_svfprintf_r+0x1816>
   33c00:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   33c06:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   33c0c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
   33c10:	89 c2                	mov    %eax,%edx
   33c12:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   33c18:	31 c0                	xor    %eax,%eax
   33c1a:	85 d2                	test   %edx,%edx
   33c1c:	0f 49 c2             	cmovns %edx,%eax
   33c1f:	e9 f2 f9 ff ff       	jmp    33616 <_svfprintf_r+0x1816>
   33c24:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
   33c2a:	85 db                	test   %ebx,%ebx
   33c2c:	75 2f                	jne    33c5d <_svfprintf_r+0x1e5d>
   33c2e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   33c35:	75 26                	jne    33c5d <_svfprintf_r+0x1e5d>
   33c37:	b8 01 00 00 00       	mov    $0x1,%eax
   33c3c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
   33c43:	00 00 00 
   33c46:	e9 cb f9 ff ff       	jmp    33616 <_svfprintf_r+0x1816>
   33c4b:	90                   	nop
   33c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33c50:	b2 02                	mov    $0x2,%dl
   33c52:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
   33c58:	e9 99 fe ff ff       	jmp    33af6 <_svfprintf_r+0x1cf6>
   33c5d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   33c63:	31 c0                	xor    %eax,%eax
   33c65:	83 c2 02             	add    $0x2,%edx
   33c68:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33c6e:	0f 49 c2             	cmovns %edx,%eax
   33c71:	e9 a0 f9 ff ff       	jmp    33616 <_svfprintf_r+0x1816>
   33c76:	f7 d9                	neg    %ecx
   33c78:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
   33c7f:	e9 cd fd ff ff       	jmp    33a51 <_svfprintf_r+0x1c51>
   33c84:	8b 55 14             	mov    0x14(%ebp),%edx
   33c87:	8b 45 14             	mov    0x14(%ebp),%eax
   33c8a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   33c90:	8b 12                	mov    (%edx),%edx
   33c92:	83 c0 04             	add    $0x4,%eax
   33c95:	89 45 14             	mov    %eax,0x14(%ebp)
   33c98:	85 d2                	test   %edx,%edx
   33c9a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
   33ca0:	0f 89 a9 e2 ff ff    	jns    31f4f <_svfprintf_r+0x14f>
   33ca6:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
   33cad:	ff ff ff 
   33cb0:	89 c8                	mov    %ecx,%eax
   33cb2:	e9 76 e2 ff ff       	jmp    31f2d <_svfprintf_r+0x12d>
   33cb7:	90                   	nop
   33cb8:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
   33cbe:	83 e0 01             	and    $0x1,%eax
   33cc1:	0f 85 d0 fd ff ff    	jne    33a97 <_svfprintf_r+0x1c97>
   33cc7:	85 d2                	test   %edx,%edx
   33cc9:	0f 49 c2             	cmovns %edx,%eax
   33ccc:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   33cd3:	00 00 00 
   33cd6:	e9 3b f9 ff ff       	jmp    33616 <_svfprintf_r+0x1816>
   33cdb:	8b 45 08             	mov    0x8(%ebp),%eax
   33cde:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   33ce4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   33ce9:	e9 f5 e2 ff ff       	jmp    31fe3 <_svfprintf_r+0x1e3>
   33cee:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
   33cf4:	e9 77 fd ff ff       	jmp    33a70 <_svfprintf_r+0x1c70>
   33cf9:	66 90                	xchg   %ax,%ax
   33cfb:	66 90                	xchg   %ax,%ax
   33cfd:	66 90                	xchg   %ax,%ax
   33cff:	90                   	nop

00033d00 <quorem>:
   33d00:	55                   	push   %ebp
   33d01:	89 c1                	mov    %eax,%ecx
   33d03:	89 e5                	mov    %esp,%ebp
   33d05:	57                   	push   %edi
   33d06:	89 d7                	mov    %edx,%edi
   33d08:	56                   	push   %esi
   33d09:	53                   	push   %ebx
   33d0a:	83 ec 3c             	sub    $0x3c,%esp
   33d0d:	89 45 d0             	mov    %eax,-0x30(%ebp)
   33d10:	8b 42 10             	mov    0x10(%edx),%eax
   33d13:	3b 41 10             	cmp    0x10(%ecx),%eax
   33d16:	89 55 c8             	mov    %edx,-0x38(%ebp)
   33d19:	89 ca                	mov    %ecx,%edx
   33d1b:	0f 8f 9f 01 00 00    	jg     33ec0 <quorem+0x1c0>
   33d21:	83 e8 01             	sub    $0x1,%eax
   33d24:	83 c7 14             	add    $0x14,%edi
   33d27:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   33d2a:	c1 e0 02             	shl    $0x2,%eax
   33d2d:	83 c2 14             	add    $0x14,%edx
   33d30:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
   33d33:	01 d0                	add    %edx,%eax
   33d35:	89 55 d8             	mov    %edx,-0x28(%ebp)
   33d38:	8b 13                	mov    (%ebx),%edx
   33d3a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
   33d3d:	8b 00                	mov    (%eax),%eax
   33d3f:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
   33d42:	8d 4a 01             	lea    0x1(%edx),%ecx
   33d45:	31 d2                	xor    %edx,%edx
   33d47:	f7 f1                	div    %ecx
   33d49:	85 c0                	test   %eax,%eax
   33d4b:	89 45 e0             	mov    %eax,-0x20(%ebp)
   33d4e:	89 45 cc             	mov    %eax,-0x34(%ebp)
   33d51:	0f 84 b5 00 00 00    	je     33e0c <quorem+0x10c>
   33d57:	8b 45 d8             	mov    -0x28(%ebp),%eax
   33d5a:	31 f6                	xor    %esi,%esi
   33d5c:	89 fa                	mov    %edi,%edx
   33d5e:	89 7d c0             	mov    %edi,-0x40(%ebp)
   33d61:	89 f7                	mov    %esi,%edi
   33d63:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
   33d6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   33d70:	83 c2 04             	add    $0x4,%edx
   33d73:	8b 72 fc             	mov    -0x4(%edx),%esi
   33d76:	83 c0 04             	add    $0x4,%eax
   33d79:	0f b7 ce             	movzwl %si,%ecx
   33d7c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
   33d80:	03 4d dc             	add    -0x24(%ebp),%ecx
   33d83:	c1 ee 10             	shr    $0x10,%esi
   33d86:	0f af 75 e0          	imul   -0x20(%ebp),%esi
   33d8a:	89 cb                	mov    %ecx,%ebx
   33d8c:	0f b7 c9             	movzwl %cx,%ecx
   33d8f:	c1 eb 10             	shr    $0x10,%ebx
   33d92:	29 cf                	sub    %ecx,%edi
   33d94:	01 f3                	add    %esi,%ebx
   33d96:	89 de                	mov    %ebx,%esi
   33d98:	0f b7 db             	movzwl %bx,%ebx
   33d9b:	c1 ee 10             	shr    $0x10,%esi
   33d9e:	89 75 dc             	mov    %esi,-0x24(%ebp)
   33da1:	8b 70 fc             	mov    -0x4(%eax),%esi
   33da4:	0f b7 ce             	movzwl %si,%ecx
   33da7:	01 f9                	add    %edi,%ecx
   33da9:	c1 ee 10             	shr    $0x10,%esi
   33dac:	29 de                	sub    %ebx,%esi
   33dae:	89 cb                	mov    %ecx,%ebx
   33db0:	c1 fb 10             	sar    $0x10,%ebx
   33db3:	0f b7 c9             	movzwl %cx,%ecx
   33db6:	01 de                	add    %ebx,%esi
   33db8:	89 f7                	mov    %esi,%edi
   33dba:	c1 e6 10             	shl    $0x10,%esi
   33dbd:	09 ce                	or     %ecx,%esi
   33dbf:	c1 ff 10             	sar    $0x10,%edi
   33dc2:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
   33dc5:	89 70 fc             	mov    %esi,-0x4(%eax)
   33dc8:	73 a6                	jae    33d70 <quorem+0x70>
   33dca:	8b 45 c4             	mov    -0x3c(%ebp),%eax
   33dcd:	8b 7d c0             	mov    -0x40(%ebp),%edi
   33dd0:	8b 10                	mov    (%eax),%edx
   33dd2:	85 d2                	test   %edx,%edx
   33dd4:	75 36                	jne    33e0c <quorem+0x10c>
   33dd6:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   33dd9:	89 c2                	mov    %eax,%edx
   33ddb:	83 e8 04             	sub    $0x4,%eax
   33dde:	39 c1                	cmp    %eax,%ecx
   33de0:	73 21                	jae    33e03 <quorem+0x103>
   33de2:	8b 72 fc             	mov    -0x4(%edx),%esi
   33de5:	85 f6                	test   %esi,%esi
   33de7:	75 1a                	jne    33e03 <quorem+0x103>
   33de9:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   33dec:	eb 08                	jmp    33df6 <quorem+0xf6>
   33dee:	66 90                	xchg   %ax,%ax
   33df0:	8b 18                	mov    (%eax),%ebx
   33df2:	85 db                	test   %ebx,%ebx
   33df4:	75 0a                	jne    33e00 <quorem+0x100>
   33df6:	83 e8 04             	sub    $0x4,%eax
   33df9:	83 ea 01             	sub    $0x1,%edx
   33dfc:	39 c1                	cmp    %eax,%ecx
   33dfe:	72 f0                	jb     33df0 <quorem+0xf0>
   33e00:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   33e03:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33e06:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   33e09:	89 50 10             	mov    %edx,0x10(%eax)
   33e0c:	8b 45 c8             	mov    -0x38(%ebp),%eax
   33e0f:	89 44 24 04          	mov    %eax,0x4(%esp)
   33e13:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33e16:	89 04 24             	mov    %eax,(%esp)
   33e19:	e8 a2 23 00 00       	call   361c0 <__mcmp>
   33e1e:	85 c0                	test   %eax,%eax
   33e20:	0f 88 8e 00 00 00    	js     33eb4 <quorem+0x1b4>
   33e26:	8b 45 e0             	mov    -0x20(%ebp),%eax
   33e29:	31 f6                	xor    %esi,%esi
   33e2b:	83 c0 01             	add    $0x1,%eax
   33e2e:	89 45 cc             	mov    %eax,-0x34(%ebp)
   33e31:	8b 45 d8             	mov    -0x28(%ebp),%eax
   33e34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33e38:	83 c7 04             	add    $0x4,%edi
   33e3b:	8b 4f fc             	mov    -0x4(%edi),%ecx
   33e3e:	83 c0 04             	add    $0x4,%eax
   33e41:	8b 58 fc             	mov    -0x4(%eax),%ebx
   33e44:	0f b7 d1             	movzwl %cx,%edx
   33e47:	29 d6                	sub    %edx,%esi
   33e49:	0f b7 d3             	movzwl %bx,%edx
   33e4c:	01 f2                	add    %esi,%edx
   33e4e:	c1 e9 10             	shr    $0x10,%ecx
   33e51:	c1 eb 10             	shr    $0x10,%ebx
   33e54:	29 cb                	sub    %ecx,%ebx
   33e56:	89 d1                	mov    %edx,%ecx
   33e58:	c1 f9 10             	sar    $0x10,%ecx
   33e5b:	0f b7 d2             	movzwl %dx,%edx
   33e5e:	01 cb                	add    %ecx,%ebx
   33e60:	89 de                	mov    %ebx,%esi
   33e62:	c1 e3 10             	shl    $0x10,%ebx
   33e65:	09 d3                	or     %edx,%ebx
   33e67:	c1 fe 10             	sar    $0x10,%esi
   33e6a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
   33e6d:	89 58 fc             	mov    %ebx,-0x4(%eax)
   33e70:	73 c6                	jae    33e38 <quorem+0x138>
   33e72:	8b 45 d8             	mov    -0x28(%ebp),%eax
   33e75:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   33e78:	8d 14 b8             	lea    (%eax,%edi,4),%edx
   33e7b:	8b 02                	mov    (%edx),%eax
   33e7d:	85 c0                	test   %eax,%eax
   33e7f:	75 33                	jne    33eb4 <quorem+0x1b4>
   33e81:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   33e84:	8d 42 fc             	lea    -0x4(%edx),%eax
   33e87:	39 c1                	cmp    %eax,%ecx
   33e89:	73 20                	jae    33eab <quorem+0x1ab>
   33e8b:	8b 72 fc             	mov    -0x4(%edx),%esi
   33e8e:	85 f6                	test   %esi,%esi
   33e90:	75 19                	jne    33eab <quorem+0x1ab>
   33e92:	89 fa                	mov    %edi,%edx
   33e94:	eb 08                	jmp    33e9e <quorem+0x19e>
   33e96:	66 90                	xchg   %ax,%ax
   33e98:	8b 18                	mov    (%eax),%ebx
   33e9a:	85 db                	test   %ebx,%ebx
   33e9c:	75 0a                	jne    33ea8 <quorem+0x1a8>
   33e9e:	83 e8 04             	sub    $0x4,%eax
   33ea1:	83 ea 01             	sub    $0x1,%edx
   33ea4:	39 c1                	cmp    %eax,%ecx
   33ea6:	72 f0                	jb     33e98 <quorem+0x198>
   33ea8:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   33eab:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33eae:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   33eb1:	89 78 10             	mov    %edi,0x10(%eax)
   33eb4:	8b 45 cc             	mov    -0x34(%ebp),%eax
   33eb7:	83 c4 3c             	add    $0x3c,%esp
   33eba:	5b                   	pop    %ebx
   33ebb:	5e                   	pop    %esi
   33ebc:	5f                   	pop    %edi
   33ebd:	5d                   	pop    %ebp
   33ebe:	c3                   	ret    
   33ebf:	90                   	nop
   33ec0:	83 c4 3c             	add    $0x3c,%esp
   33ec3:	31 c0                	xor    %eax,%eax
   33ec5:	5b                   	pop    %ebx
   33ec6:	5e                   	pop    %esi
   33ec7:	5f                   	pop    %edi
   33ec8:	5d                   	pop    %ebp
   33ec9:	c3                   	ret    
   33eca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00033ed0 <_dtoa_r>:
   33ed0:	55                   	push   %ebp
   33ed1:	89 e5                	mov    %esp,%ebp
   33ed3:	57                   	push   %edi
   33ed4:	56                   	push   %esi
   33ed5:	53                   	push   %ebx
   33ed6:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
   33edc:	8b 75 08             	mov    0x8(%ebp),%esi
   33edf:	dd 45 0c             	fldl   0xc(%ebp)
   33ee2:	8b 5d 20             	mov    0x20(%ebp),%ebx
   33ee5:	dd 5d c0             	fstpl  -0x40(%ebp)
   33ee8:	8b 46 40             	mov    0x40(%esi),%eax
   33eeb:	85 c0                	test   %eax,%eax
   33eed:	74 23                	je     33f12 <_dtoa_r+0x42>
   33eef:	8b 4e 44             	mov    0x44(%esi),%ecx
   33ef2:	ba 01 00 00 00       	mov    $0x1,%edx
   33ef7:	d3 e2                	shl    %cl,%edx
   33ef9:	89 48 04             	mov    %ecx,0x4(%eax)
   33efc:	89 50 08             	mov    %edx,0x8(%eax)
   33eff:	89 44 24 04          	mov    %eax,0x4(%esp)
   33f03:	89 34 24             	mov    %esi,(%esp)
   33f06:	e8 95 1b 00 00       	call   35aa0 <_Bfree>
   33f0b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
   33f12:	8b 7d c4             	mov    -0x3c(%ebp),%edi
   33f15:	85 ff                	test   %edi,%edi
   33f17:	0f 88 3b 02 00 00    	js     34158 <_dtoa_r+0x288>
   33f1d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
   33f23:	89 f8                	mov    %edi,%eax
   33f25:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
   33f2a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
   33f2f:	0f 84 e3 01 00 00    	je     34118 <_dtoa_r+0x248>
   33f35:	dd 45 c0             	fldl   -0x40(%ebp)
   33f38:	d9 ee                	fldz   
   33f3a:	d9 c9                	fxch   %st(1)
   33f3c:	db e9                	fucomi %st(1),%st
   33f3e:	dd d9                	fstp   %st(1)
   33f40:	7a 36                	jp     33f78 <_dtoa_r+0xa8>
   33f42:	75 34                	jne    33f78 <_dtoa_r+0xa8>
   33f44:	dd d8                	fstp   %st(0)
   33f46:	8b 4d 24             	mov    0x24(%ebp),%ecx
   33f49:	8b 45 1c             	mov    0x1c(%ebp),%eax
   33f4c:	85 c9                	test   %ecx,%ecx
   33f4e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
   33f54:	0f 84 4e 02 00 00    	je     341a8 <_dtoa_r+0x2d8>
   33f5a:	8b 45 24             	mov    0x24(%ebp),%eax
   33f5d:	c7 00 20 99 03 00    	movl   $0x39920,(%eax)
   33f63:	b8 1f 99 03 00       	mov    $0x3991f,%eax
   33f68:	81 c4 8c 00 00 00    	add    $0x8c,%esp
   33f6e:	5b                   	pop    %ebx
   33f6f:	5e                   	pop    %esi
   33f70:	5f                   	pop    %edi
   33f71:	5d                   	pop    %ebp
   33f72:	c3                   	ret    
   33f73:	90                   	nop
   33f74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33f78:	8d 45 e0             	lea    -0x20(%ebp),%eax
   33f7b:	89 fb                	mov    %edi,%ebx
   33f7d:	89 44 24 10          	mov    %eax,0x10(%esp)
   33f81:	8d 45 e4             	lea    -0x1c(%ebp),%eax
   33f84:	dd 54 24 04          	fstl   0x4(%esp)
   33f88:	89 44 24 0c          	mov    %eax,0xc(%esp)
   33f8c:	dd 5d b8             	fstpl  -0x48(%ebp)
   33f8f:	89 34 24             	mov    %esi,(%esp)
   33f92:	c1 eb 14             	shr    $0x14,%ebx
   33f95:	e8 76 25 00 00       	call   36510 <__d2b>
   33f9a:	85 db                	test   %ebx,%ebx
   33f9c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   33f9f:	0f 85 db 01 00 00    	jne    34180 <_dtoa_r+0x2b0>
   33fa5:	8b 45 e0             	mov    -0x20(%ebp),%eax
   33fa8:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
   33fab:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   33fae:	01 c3                	add    %eax,%ebx
   33fb0:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
   33fb6:	0f 8c ec 07 00 00    	jl     347a8 <_dtoa_r+0x8d8>
   33fbc:	8b 55 c0             	mov    -0x40(%ebp),%edx
   33fbf:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
   33fc4:	89 f8                	mov    %edi,%eax
   33fc6:	29 d9                	sub    %ebx,%ecx
   33fc8:	d3 e0                	shl    %cl,%eax
   33fca:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
   33fd0:	d3 ea                	shr    %cl,%edx
   33fd2:	09 d0                	or     %edx,%eax
   33fd4:	31 d2                	xor    %edx,%edx
   33fd6:	83 eb 01             	sub    $0x1,%ebx
   33fd9:	89 55 cc             	mov    %edx,-0x34(%ebp)
   33fdc:	8b 55 b4             	mov    -0x4c(%ebp),%edx
   33fdf:	89 45 c8             	mov    %eax,-0x38(%ebp)
   33fe2:	df 6d c8             	fildll -0x38(%ebp)
   33fe5:	dd 5d b8             	fstpl  -0x48(%ebp)
   33fe8:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
   33fef:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
   33ff6:	dd 45 b8             	fldl   -0x48(%ebp)
   33ff9:	d8 25 b8 9a 03 00    	fsubs  0x39ab8
   33fff:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
   34002:	d9 7d d2             	fnstcw -0x2e(%ebp)
   34005:	dc 0d d0 9a 03 00    	fmull  0x39ad0
   3400b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   3400f:	b4 0c                	mov    $0xc,%ah
   34011:	dc 05 d8 9a 03 00    	faddl  0x39ad8
   34017:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   3401b:	db 45 d4             	fildl  -0x2c(%ebp)
   3401e:	dc 0d e0 9a 03 00    	fmull  0x39ae0
   34024:	de c1                	faddp  %st,%st(1)
   34026:	d9 6d d0             	fldcw  -0x30(%ebp)
   34029:	db 55 b8             	fistl  -0x48(%ebp)
   3402c:	d9 6d d2             	fldcw  -0x2e(%ebp)
   3402f:	d9 ee                	fldz   
   34031:	df e9                	fucomip %st(1),%st
   34033:	0f 87 27 07 00 00    	ja     34760 <_dtoa_r+0x890>
   34039:	dd d8                	fstp   %st(0)
   3403b:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
   3403f:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
   34046:	77 24                	ja     3406c <_dtoa_r+0x19c>
   34048:	8b 45 b8             	mov    -0x48(%ebp),%eax
   3404b:	dd 04 c5 a0 9b 03 00 	fldl   0x39ba0(,%eax,8)
   34052:	dd 45 c0             	fldl   -0x40(%ebp)
   34055:	d9 c9                	fxch   %st(1)
   34057:	df e9                	fucomip %st(1),%st
   34059:	dd d8                	fstp   %st(0)
   3405b:	0f 86 5f 07 00 00    	jbe    347c0 <_dtoa_r+0x8f0>
   34061:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
   34065:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
   3406c:	89 d0                	mov    %edx,%eax
   3406e:	29 d8                	sub    %ebx,%eax
   34070:	83 e8 01             	sub    $0x1,%eax
   34073:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
   3407a:	89 45 ac             	mov    %eax,-0x54(%ebp)
   3407d:	0f 88 0d 07 00 00    	js     34790 <_dtoa_r+0x8c0>
   34083:	8b 45 b8             	mov    -0x48(%ebp),%eax
   34086:	85 c0                	test   %eax,%eax
   34088:	0f 88 ea 06 00 00    	js     34778 <_dtoa_r+0x8a8>
   3408e:	01 45 ac             	add    %eax,-0x54(%ebp)
   34091:	89 45 94             	mov    %eax,-0x6c(%ebp)
   34094:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   3409b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
   3409f:	0f 87 0b 03 00 00    	ja     343b0 <_dtoa_r+0x4e0>
   340a5:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
   340a9:	0f 8e 23 10 00 00    	jle    350d2 <_dtoa_r+0x1202>
   340af:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
   340b3:	31 c0                	xor    %eax,%eax
   340b5:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
   340b9:	0f 84 43 0d 00 00    	je     34e02 <_dtoa_r+0xf32>
   340bf:	0f 8e f3 00 00 00    	jle    341b8 <_dtoa_r+0x2e8>
   340c5:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
   340c9:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
   340d0:	0f 84 f3 00 00 00    	je     341c9 <_dtoa_r+0x2f9>
   340d6:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
   340da:	0f 85 d7 02 00 00    	jne    343b7 <_dtoa_r+0x4e7>
   340e0:	8b 5d b8             	mov    -0x48(%ebp),%ebx
   340e3:	03 5d 18             	add    0x18(%ebp),%ebx
   340e6:	89 5d 90             	mov    %ebx,-0x70(%ebp)
   340e9:	83 c3 01             	add    $0x1,%ebx
   340ec:	83 fb 0e             	cmp    $0xe,%ebx
   340ef:	0f 96 c2             	setbe  %dl
   340f2:	85 db                	test   %ebx,%ebx
   340f4:	89 5d a8             	mov    %ebx,-0x58(%ebp)
   340f7:	0f 8e a7 08 00 00    	jle    349a4 <_dtoa_r+0xad4>
   340fd:	8b 5d a8             	mov    -0x58(%ebp),%ebx
   34100:	83 fb 0e             	cmp    $0xe,%ebx
   34103:	89 df                	mov    %ebx,%edi
   34105:	0f 96 45 b4          	setbe  -0x4c(%ebp)
   34109:	20 45 b4             	and    %al,-0x4c(%ebp)
   3410c:	e9 d6 00 00 00       	jmp    341e7 <_dtoa_r+0x317>
   34111:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34118:	8b 55 c0             	mov    -0x40(%ebp),%edx
   3411b:	8b 45 1c             	mov    0x1c(%ebp),%eax
   3411e:	85 d2                	test   %edx,%edx
   34120:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
   34126:	b8 b1 9a 03 00       	mov    $0x39ab1,%eax
   3412b:	74 43                	je     34170 <_dtoa_r+0x2a0>
   3412d:	8b 5d 24             	mov    0x24(%ebp),%ebx
   34130:	85 db                	test   %ebx,%ebx
   34132:	0f 84 30 fe ff ff    	je     33f68 <_dtoa_r+0x98>
   34138:	8b 75 24             	mov    0x24(%ebp),%esi
   3413b:	8d 50 08             	lea    0x8(%eax),%edx
   3413e:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
   34142:	8d 48 03             	lea    0x3(%eax),%ecx
   34145:	0f 44 d1             	cmove  %ecx,%edx
   34148:	89 16                	mov    %edx,(%esi)
   3414a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
   34150:	5b                   	pop    %ebx
   34151:	5e                   	pop    %esi
   34152:	5f                   	pop    %edi
   34153:	5d                   	pop    %ebp
   34154:	c3                   	ret    
   34155:	8d 76 00             	lea    0x0(%esi),%esi
   34158:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
   3415e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
   34164:	89 7d c4             	mov    %edi,-0x3c(%ebp)
   34167:	e9 b7 fd ff ff       	jmp    33f23 <_dtoa_r+0x53>
   3416c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34170:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
   34176:	ba a8 9a 03 00       	mov    $0x39aa8,%edx
   3417b:	0f 44 c2             	cmove  %edx,%eax
   3417e:	eb ad                	jmp    3412d <_dtoa_r+0x25d>
   34180:	8b 45 bc             	mov    -0x44(%ebp),%eax
   34183:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
   34189:	8b 55 e0             	mov    -0x20(%ebp),%edx
   3418c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
   34193:	25 ff ff 0f 00       	and    $0xfffff,%eax
   34198:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   3419d:	89 45 bc             	mov    %eax,-0x44(%ebp)
   341a0:	e9 51 fe ff ff       	jmp    33ff6 <_dtoa_r+0x126>
   341a5:	8d 76 00             	lea    0x0(%esi),%esi
   341a8:	b8 1f 99 03 00       	mov    $0x3991f,%eax
   341ad:	e9 b6 fd ff ff       	jmp    33f68 <_dtoa_r+0x98>
   341b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   341b8:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   341bc:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
   341c3:	0f 85 ee 01 00 00    	jne    343b7 <_dtoa_r+0x4e7>
   341c9:	8b 55 18             	mov    0x18(%ebp),%edx
   341cc:	85 d2                	test   %edx,%edx
   341ce:	0f 8e b6 07 00 00    	jle    3498a <_dtoa_r+0xaba>
   341d4:	8b 7d 18             	mov    0x18(%ebp),%edi
   341d7:	83 ff 0e             	cmp    $0xe,%edi
   341da:	0f 96 45 b4          	setbe  -0x4c(%ebp)
   341de:	20 45 b4             	and    %al,-0x4c(%ebp)
   341e1:	89 7d 90             	mov    %edi,-0x70(%ebp)
   341e4:	89 7d a8             	mov    %edi,-0x58(%ebp)
   341e7:	83 ff 17             	cmp    $0x17,%edi
   341ea:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
   341f1:	0f 86 e5 0e 00 00    	jbe    350dc <_dtoa_r+0x120c>
   341f7:	b9 01 00 00 00       	mov    $0x1,%ecx
   341fc:	b8 04 00 00 00       	mov    $0x4,%eax
   34201:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34208:	01 c0                	add    %eax,%eax
   3420a:	89 ca                	mov    %ecx,%edx
   3420c:	8d 58 14             	lea    0x14(%eax),%ebx
   3420f:	39 fb                	cmp    %edi,%ebx
   34211:	8d 49 01             	lea    0x1(%ecx),%ecx
   34214:	76 f2                	jbe    34208 <_dtoa_r+0x338>
   34216:	89 56 44             	mov    %edx,0x44(%esi)
   34219:	89 54 24 04          	mov    %edx,0x4(%esp)
   3421d:	89 34 24             	mov    %esi,(%esp)
   34220:	e8 db 17 00 00       	call   35a00 <_Balloc>
   34225:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
   34229:	89 c7                	mov    %eax,%edi
   3422b:	89 46 40             	mov    %eax,0x40(%esi)
   3422e:	0f 84 bb 01 00 00    	je     343ef <_dtoa_r+0x51f>
   34234:	8b 5d b8             	mov    -0x48(%ebp),%ebx
   34237:	dd 45 c0             	fldl   -0x40(%ebp)
   3423a:	85 db                	test   %ebx,%ebx
   3423c:	0f 8e de 07 00 00    	jle    34a20 <_dtoa_r+0xb50>
   34242:	89 d8                	mov    %ebx,%eax
   34244:	83 e0 0f             	and    $0xf,%eax
   34247:	dd 04 c5 a0 9b 03 00 	fldl   0x39ba0(,%eax,8)
   3424e:	89 d8                	mov    %ebx,%eax
   34250:	c1 f8 04             	sar    $0x4,%eax
   34253:	a8 10                	test   $0x10,%al
   34255:	0f 84 cd 05 00 00    	je     34828 <_dtoa_r+0x958>
   3425b:	dd 05 80 9b 03 00    	fldl   0x39b80
   34261:	83 e0 0f             	and    $0xf,%eax
   34264:	b9 03 00 00 00       	mov    $0x3,%ecx
   34269:	d8 fa                	fdivr  %st(2),%st
   3426b:	85 c0                	test   %eax,%eax
   3426d:	74 22                	je     34291 <_dtoa_r+0x3c1>
   3426f:	31 d2                	xor    %edx,%edx
   34271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34278:	a8 01                	test   $0x1,%al
   3427a:	74 0e                	je     3428a <_dtoa_r+0x3ba>
   3427c:	d9 c9                	fxch   %st(1)
   3427e:	dc 0c d5 60 9b 03 00 	fmull  0x39b60(,%edx,8)
   34285:	d9 c9                	fxch   %st(1)
   34287:	83 c1 01             	add    $0x1,%ecx
   3428a:	83 c2 01             	add    $0x1,%edx
   3428d:	d1 f8                	sar    %eax
   3428f:	75 e7                	jne    34278 <_dtoa_r+0x3a8>
   34291:	de f1                	fdivp  %st,%st(1)
   34293:	8b 45 9c             	mov    -0x64(%ebp),%eax
   34296:	85 c0                	test   %eax,%eax
   34298:	74 0a                	je     342a4 <_dtoa_r+0x3d4>
   3429a:	d9 e8                	fld1   
   3429c:	df e9                	fucomip %st(1),%st
   3429e:	0f 87 92 0b 00 00    	ja     34e36 <_dtoa_r+0xf66>
   342a4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   342a7:	8b 45 a8             	mov    -0x58(%ebp),%eax
   342aa:	db 45 d4             	fildl  -0x2c(%ebp)
   342ad:	d8 c9                	fmul   %st(1),%st
   342af:	d8 05 c4 9a 03 00    	fadds  0x39ac4
   342b5:	dd 5d c0             	fstpl  -0x40(%ebp)
   342b8:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
   342bf:	85 c0                	test   %eax,%eax
   342c1:	0f 84 89 05 00 00    	je     34850 <_dtoa_r+0x980>
   342c7:	8b 45 b8             	mov    -0x48(%ebp),%eax
   342ca:	8b 4d a8             	mov    -0x58(%ebp),%ecx
   342cd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   342d0:	8b 45 98             	mov    -0x68(%ebp),%eax
   342d3:	85 c0                	test   %eax,%eax
   342d5:	0f 84 b5 07 00 00    	je     34a90 <_dtoa_r+0xbc0>
   342db:	d9 05 cc 9a 03 00    	flds   0x39acc
   342e1:	8d 57 01             	lea    0x1(%edi),%edx
   342e4:	dc 34 cd 98 9b 03 00 	fdivl  0x39b98(,%ecx,8)
   342eb:	d9 7d d2             	fnstcw -0x2e(%ebp)
   342ee:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   342f2:	b4 0c                	mov    $0xc,%ah
   342f4:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   342f8:	dc 65 c0             	fsubl  -0x40(%ebp)
   342fb:	d9 c9                	fxch   %st(1)
   342fd:	d9 6d d0             	fldcw  -0x30(%ebp)
   34300:	db 55 d4             	fistl  -0x2c(%ebp)
   34303:	d9 6d d2             	fldcw  -0x2e(%ebp)
   34306:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   34309:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   3430c:	83 c0 30             	add    $0x30,%eax
   3430f:	db 45 d4             	fildl  -0x2c(%ebp)
   34312:	de e9                	fsubrp %st,%st(1)
   34314:	d9 c9                	fxch   %st(1)
   34316:	88 07                	mov    %al,(%edi)
   34318:	db e9                	fucomi %st(1),%st
   3431a:	77 7f                	ja     3439b <_dtoa_r+0x4cb>
   3431c:	d9 c1                	fld    %st(1)
   3431e:	d8 2d bc 9a 03 00    	fsubrs 0x39abc
   34324:	d9 c9                	fxch   %st(1)
   34326:	db e9                	fucomi %st(1),%st
   34328:	dd d9                	fstp   %st(1)
   3432a:	0f 87 33 0c 00 00    	ja     34f63 <_dtoa_r+0x1093>
   34330:	83 f9 01             	cmp    $0x1,%ecx
   34333:	0f 8e c4 06 00 00    	jle    349fd <_dtoa_r+0xb2d>
   34339:	01 f9                	add    %edi,%ecx
   3433b:	d9 05 c0 9a 03 00    	flds   0x39ac0
   34341:	eb 25                	jmp    34368 <_dtoa_r+0x498>
   34343:	90                   	nop
   34344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34348:	d9 c1                	fld    %st(1)
   3434a:	d8 2d bc 9a 03 00    	fsubrs 0x39abc
   34350:	d9 c9                	fxch   %st(1)
   34352:	db e9                	fucomi %st(1),%st
   34354:	dd d9                	fstp   %st(1)
   34356:	0f 87 14 0c 00 00    	ja     34f70 <_dtoa_r+0x10a0>
   3435c:	39 ca                	cmp    %ecx,%edx
   3435e:	0f 84 a4 06 00 00    	je     34a08 <_dtoa_r+0xb38>
   34364:	d9 c9                	fxch   %st(1)
   34366:	d9 ca                	fxch   %st(2)
   34368:	dc c9                	fmul   %st,%st(1)
   3436a:	83 c2 01             	add    $0x1,%edx
   3436d:	dc ca                	fmul   %st,%st(2)
   3436f:	d9 ca                	fxch   %st(2)
   34371:	d9 6d d0             	fldcw  -0x30(%ebp)
   34374:	db 55 d4             	fistl  -0x2c(%ebp)
   34377:	d9 6d d2             	fldcw  -0x2e(%ebp)
   3437a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   3437d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   34380:	83 c0 30             	add    $0x30,%eax
   34383:	db 45 d4             	fildl  -0x2c(%ebp)
   34386:	de e9                	fsubrp %st,%st(1)
   34388:	d9 c9                	fxch   %st(1)
   3438a:	88 42 ff             	mov    %al,-0x1(%edx)
   3438d:	db e9                	fucomi %st(1),%st
   3438f:	76 b7                	jbe    34348 <_dtoa_r+0x478>
   34391:	dd d8                	fstp   %st(0)
   34393:	dd d8                	fstp   %st(0)
   34395:	dd d8                	fstp   %st(0)
   34397:	dd d8                	fstp   %st(0)
   34399:	eb 06                	jmp    343a1 <_dtoa_r+0x4d1>
   3439b:	dd d8                	fstp   %st(0)
   3439d:	dd d8                	fstp   %st(0)
   3439f:	dd d8                	fstp   %st(0)
   343a1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   343a4:	89 fb                	mov    %edi,%ebx
   343a6:	89 d7                	mov    %edx,%edi
   343a8:	89 45 b8             	mov    %eax,-0x48(%ebp)
   343ab:	e9 70 03 00 00       	jmp    34720 <_dtoa_r+0x850>
   343b0:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
   343b7:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
   343be:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   343c5:	00 
   343c6:	89 34 24             	mov    %esi,(%esp)
   343c9:	e8 32 16 00 00       	call   35a00 <_Balloc>
   343ce:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
   343d5:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
   343dc:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
   343e3:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
   343ea:	89 c7                	mov    %eax,%edi
   343ec:	89 46 40             	mov    %eax,0x40(%esi)
   343ef:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   343f2:	85 c0                	test   %eax,%eax
   343f4:	0f 88 2e 01 00 00    	js     34528 <_dtoa_r+0x658>
   343fa:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
   343fe:	0f 8f 24 01 00 00    	jg     34528 <_dtoa_r+0x658>
   34404:	8b 45 b8             	mov    -0x48(%ebp),%eax
   34407:	dd 04 c5 a0 9b 03 00 	fldl   0x39ba0(,%eax,8)
   3440e:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34411:	85 c0                	test   %eax,%eax
   34413:	7f 0e                	jg     34423 <_dtoa_r+0x553>
   34415:	8b 45 18             	mov    0x18(%ebp),%eax
   34418:	c1 e8 1f             	shr    $0x1f,%eax
   3441b:	84 c0                	test   %al,%al
   3441d:	0f 85 9d 07 00 00    	jne    34bc0 <_dtoa_r+0xcf0>
   34423:	dd 45 c0             	fldl   -0x40(%ebp)
   34426:	d9 c0                	fld    %st(0)
   34428:	d8 f2                	fdiv   %st(2),%st
   3442a:	d9 7d d2             	fnstcw -0x2e(%ebp)
   3442d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
   34431:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   34435:	b4 0c                	mov    $0xc,%ah
   34437:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   3443b:	8d 47 01             	lea    0x1(%edi),%eax
   3443e:	89 45 c0             	mov    %eax,-0x40(%ebp)
   34441:	d9 6d d0             	fldcw  -0x30(%ebp)
   34444:	db 5d d4             	fistpl -0x2c(%ebp)
   34447:	d9 6d d2             	fldcw  -0x2e(%ebp)
   3444a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   3444d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   34450:	8d 42 30             	lea    0x30(%edx),%eax
   34453:	db 45 d4             	fildl  -0x2c(%ebp)
   34456:	d8 ca                	fmul   %st(2),%st
   34458:	88 07                	mov    %al,(%edi)
   3445a:	de e9                	fsubrp %st,%st(1)
   3445c:	74 66                	je     344c4 <_dtoa_r+0x5f4>
   3445e:	d8 0d c0 9a 03 00    	fmuls  0x39ac0
   34464:	d9 ee                	fldz   
   34466:	d9 c9                	fxch   %st(1)
   34468:	db e9                	fucomi %st(1),%st
   3446a:	dd d9                	fstp   %st(1)
   3446c:	0f 8b 33 0c 00 00    	jnp    350a5 <_dtoa_r+0x11d5>
   34472:	8b 5d a8             	mov    -0x58(%ebp),%ebx
   34475:	8d 47 02             	lea    0x2(%edi),%eax
   34478:	d9 05 c0 9a 03 00    	flds   0x39ac0
   3447e:	01 fb                	add    %edi,%ebx
   34480:	eb 19                	jmp    3449b <_dtoa_r+0x5cb>
   34482:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34488:	dc c9                	fmul   %st,%st(1)
   3448a:	83 c0 01             	add    $0x1,%eax
   3448d:	d9 ee                	fldz   
   3448f:	d9 ca                	fxch   %st(2)
   34491:	db ea                	fucomi %st(2),%st
   34493:	dd da                	fstp   %st(2)
   34495:	0f 8b 73 09 00 00    	jnp    34e0e <_dtoa_r+0xf3e>
   3449b:	d9 c1                	fld    %st(1)
   3449d:	39 d8                	cmp    %ebx,%eax
   3449f:	d8 f3                	fdiv   %st(3),%st
   344a1:	89 45 c0             	mov    %eax,-0x40(%ebp)
   344a4:	d9 6d d0             	fldcw  -0x30(%ebp)
   344a7:	db 5d d4             	fistpl -0x2c(%ebp)
   344aa:	d9 6d d2             	fldcw  -0x2e(%ebp)
   344ad:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   344b0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   344b3:	8d 4a 30             	lea    0x30(%edx),%ecx
   344b6:	db 45 d4             	fildl  -0x2c(%ebp)
   344b9:	d8 cb                	fmul   %st(3),%st
   344bb:	88 48 ff             	mov    %cl,-0x1(%eax)
   344be:	de ea                	fsubrp %st,%st(2)
   344c0:	75 c6                	jne    34488 <_dtoa_r+0x5b8>
   344c2:	dd d8                	fstp   %st(0)
   344c4:	d8 c0                	fadd   %st(0),%st
   344c6:	db e9                	fucomi %st(1),%st
   344c8:	77 1e                	ja     344e8 <_dtoa_r+0x618>
   344ca:	d9 c9                	fxch   %st(1)
   344cc:	df e9                	fucomip %st(1),%st
   344ce:	dd d8                	fstp   %st(0)
   344d0:	0f 8a 44 09 00 00    	jp     34e1a <_dtoa_r+0xf4a>
   344d6:	0f 85 3e 09 00 00    	jne    34e1a <_dtoa_r+0xf4a>
   344dc:	83 e2 01             	and    $0x1,%edx
   344df:	90                   	nop
   344e0:	0f 84 34 09 00 00    	je     34e1a <_dtoa_r+0xf4a>
   344e6:	eb 04                	jmp    344ec <_dtoa_r+0x61c>
   344e8:	dd d8                	fstp   %st(0)
   344ea:	dd d8                	fstp   %st(0)
   344ec:	8b 4d c0             	mov    -0x40(%ebp),%ecx
   344ef:	89 fb                	mov    %edi,%ebx
   344f1:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
   344f5:	89 cf                	mov    %ecx,%edi
   344f7:	8b 4d b8             	mov    -0x48(%ebp),%ecx
   344fa:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
   344fd:	eb 0f                	jmp    3450e <_dtoa_r+0x63e>
   344ff:	90                   	nop
   34500:	39 d3                	cmp    %edx,%ebx
   34502:	0f 84 75 09 00 00    	je     34e7d <_dtoa_r+0xfad>
   34508:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
   3450c:	89 d7                	mov    %edx,%edi
   3450e:	3c 39                	cmp    $0x39,%al
   34510:	8d 57 ff             	lea    -0x1(%edi),%edx
   34513:	74 eb                	je     34500 <_dtoa_r+0x630>
   34515:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
   34518:	83 c0 01             	add    $0x1,%eax
   3451b:	88 02                	mov    %al,(%edx)
   3451d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
   34520:	e9 fb 01 00 00       	jmp    34720 <_dtoa_r+0x850>
   34525:	8d 76 00             	lea    0x0(%esi),%esi
   34528:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   3452b:	85 c9                	test   %ecx,%ecx
   3452d:	0f 85 9d 02 00 00    	jne    347d0 <_dtoa_r+0x900>
   34533:	8b 55 b0             	mov    -0x50(%ebp),%edx
   34536:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   34539:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   34540:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34543:	85 c0                	test   %eax,%eax
   34545:	7e 14                	jle    3455b <_dtoa_r+0x68b>
   34547:	85 db                	test   %ebx,%ebx
   34549:	7e 10                	jle    3455b <_dtoa_r+0x68b>
   3454b:	8b 45 ac             	mov    -0x54(%ebp),%eax
   3454e:	39 d8                	cmp    %ebx,%eax
   34550:	0f 4f c3             	cmovg  %ebx,%eax
   34553:	29 45 a0             	sub    %eax,-0x60(%ebp)
   34556:	29 c3                	sub    %eax,%ebx
   34558:	29 45 ac             	sub    %eax,-0x54(%ebp)
   3455b:	8b 45 b0             	mov    -0x50(%ebp),%eax
   3455e:	85 c0                	test   %eax,%eax
   34560:	7e 61                	jle    345c3 <_dtoa_r+0x6f3>
   34562:	8b 45 98             	mov    -0x68(%ebp),%eax
   34565:	85 c0                	test   %eax,%eax
   34567:	0f 84 72 04 00 00    	je     349df <_dtoa_r+0xb0f>
   3456d:	85 d2                	test   %edx,%edx
   3456f:	7e 47                	jle    345b8 <_dtoa_r+0x6e8>
   34571:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34574:	89 54 24 08          	mov    %edx,0x8(%esp)
   34578:	89 34 24             	mov    %esi,(%esp)
   3457b:	89 55 88             	mov    %edx,-0x78(%ebp)
   3457e:	89 44 24 04          	mov    %eax,0x4(%esp)
   34582:	e8 f9 19 00 00       	call   35f80 <__pow5mult>
   34587:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
   3458a:	89 34 24             	mov    %esi,(%esp)
   3458d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   34591:	89 44 24 04          	mov    %eax,0x4(%esp)
   34595:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34598:	e8 13 18 00 00       	call   35db0 <__multiply>
   3459d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
   345a0:	89 34 24             	mov    %esi,(%esp)
   345a3:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   345a7:	89 45 8c             	mov    %eax,-0x74(%ebp)
   345aa:	e8 f1 14 00 00       	call   35aa0 <_Bfree>
   345af:	8b 45 8c             	mov    -0x74(%ebp),%eax
   345b2:	8b 55 88             	mov    -0x78(%ebp),%edx
   345b5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   345b8:	8b 45 b0             	mov    -0x50(%ebp),%eax
   345bb:	29 d0                	sub    %edx,%eax
   345bd:	0f 85 1f 04 00 00    	jne    349e2 <_dtoa_r+0xb12>
   345c3:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   345ca:	00 
   345cb:	89 34 24             	mov    %esi,(%esp)
   345ce:	e8 ad 17 00 00       	call   35d80 <__i2b>
   345d3:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
   345d6:	85 c9                	test   %ecx,%ecx
   345d8:	89 45 b0             	mov    %eax,-0x50(%ebp)
   345db:	7e 13                	jle    345f0 <_dtoa_r+0x720>
   345dd:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   345e1:	89 44 24 04          	mov    %eax,0x4(%esp)
   345e5:	89 34 24             	mov    %esi,(%esp)
   345e8:	e8 93 19 00 00       	call   35f80 <__pow5mult>
   345ed:	89 45 b0             	mov    %eax,-0x50(%ebp)
   345f0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
   345f4:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
   345fb:	0f 8e f7 05 00 00    	jle    34bf8 <_dtoa_r+0xd28>
   34601:	8b 45 94             	mov    -0x6c(%ebp),%eax
   34604:	ba 01 00 00 00       	mov    $0x1,%edx
   34609:	85 c0                	test   %eax,%eax
   3460b:	0f 85 27 05 00 00    	jne    34b38 <_dtoa_r+0xc68>
   34611:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34614:	01 d0                	add    %edx,%eax
   34616:	83 e0 1f             	and    $0x1f,%eax
   34619:	89 c2                	mov    %eax,%edx
   3461b:	0f 84 57 03 00 00    	je     34978 <_dtoa_r+0xaa8>
   34621:	b8 20 00 00 00       	mov    $0x20,%eax
   34626:	29 d0                	sub    %edx,%eax
   34628:	83 f8 04             	cmp    $0x4,%eax
   3462b:	0f 8e 8c 0a 00 00    	jle    350bd <_dtoa_r+0x11ed>
   34631:	b8 1c 00 00 00       	mov    $0x1c,%eax
   34636:	29 d0                	sub    %edx,%eax
   34638:	01 45 a0             	add    %eax,-0x60(%ebp)
   3463b:	01 c3                	add    %eax,%ebx
   3463d:	01 45 ac             	add    %eax,-0x54(%ebp)
   34640:	8b 45 a0             	mov    -0x60(%ebp),%eax
   34643:	85 c0                	test   %eax,%eax
   34645:	7e 16                	jle    3465d <_dtoa_r+0x78d>
   34647:	89 44 24 08          	mov    %eax,0x8(%esp)
   3464b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   3464e:	89 34 24             	mov    %esi,(%esp)
   34651:	89 44 24 04          	mov    %eax,0x4(%esp)
   34655:	e8 46 1a 00 00       	call   360a0 <__lshift>
   3465a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   3465d:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34660:	85 c0                	test   %eax,%eax
   34662:	7e 16                	jle    3467a <_dtoa_r+0x7aa>
   34664:	89 44 24 08          	mov    %eax,0x8(%esp)
   34668:	8b 45 b0             	mov    -0x50(%ebp),%eax
   3466b:	89 34 24             	mov    %esi,(%esp)
   3466e:	89 44 24 04          	mov    %eax,0x4(%esp)
   34672:	e8 29 1a 00 00       	call   360a0 <__lshift>
   34677:	89 45 b0             	mov    %eax,-0x50(%ebp)
   3467a:	8b 45 9c             	mov    -0x64(%ebp),%eax
   3467d:	85 c0                	test   %eax,%eax
   3467f:	0f 85 d3 04 00 00    	jne    34b58 <_dtoa_r+0xc88>
   34685:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   34689:	0f 8e 11 02 00 00    	jle    348a0 <_dtoa_r+0x9d0>
   3468f:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34692:	85 c0                	test   %eax,%eax
   34694:	0f 8f 06 02 00 00    	jg     348a0 <_dtoa_r+0x9d0>
   3469a:	8b 45 a8             	mov    -0x58(%ebp),%eax
   3469d:	85 c0                	test   %eax,%eax
   3469f:	0f 85 e0 01 00 00    	jne    34885 <_dtoa_r+0x9b5>
   346a5:	8b 45 b0             	mov    -0x50(%ebp),%eax
   346a8:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   346af:	00 
   346b0:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
   346b7:	00 
   346b8:	89 34 24             	mov    %esi,(%esp)
   346bb:	89 44 24 04          	mov    %eax,0x4(%esp)
   346bf:	e8 fc 13 00 00       	call   35ac0 <__multadd>
   346c4:	89 45 b0             	mov    %eax,-0x50(%ebp)
   346c7:	89 44 24 04          	mov    %eax,0x4(%esp)
   346cb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   346ce:	89 04 24             	mov    %eax,(%esp)
   346d1:	e8 ea 1a 00 00       	call   361c0 <__mcmp>
   346d6:	85 c0                	test   %eax,%eax
   346d8:	0f 8e a7 01 00 00    	jle    34885 <_dtoa_r+0x9b5>
   346de:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
   346e2:	89 fb                	mov    %edi,%ebx
   346e4:	83 c7 01             	add    $0x1,%edi
   346e7:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
   346eb:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
   346f2:	8b 45 b0             	mov    -0x50(%ebp),%eax
   346f5:	89 34 24             	mov    %esi,(%esp)
   346f8:	89 44 24 04          	mov    %eax,0x4(%esp)
   346fc:	e8 9f 13 00 00       	call   35aa0 <_Bfree>
   34701:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34704:	85 c0                	test   %eax,%eax
   34706:	74 18                	je     34720 <_dtoa_r+0x850>
   34708:	39 45 c0             	cmp    %eax,-0x40(%ebp)
   3470b:	0f 85 a7 02 00 00    	jne    349b8 <_dtoa_r+0xae8>
   34711:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34714:	89 34 24             	mov    %esi,(%esp)
   34717:	89 44 24 04          	mov    %eax,0x4(%esp)
   3471b:	e8 80 13 00 00       	call   35aa0 <_Bfree>
   34720:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34723:	89 34 24             	mov    %esi,(%esp)
   34726:	89 44 24 04          	mov    %eax,0x4(%esp)
   3472a:	e8 71 13 00 00       	call   35aa0 <_Bfree>
   3472f:	8b 45 b8             	mov    -0x48(%ebp),%eax
   34732:	8b 75 1c             	mov    0x1c(%ebp),%esi
   34735:	c6 07 00             	movb   $0x0,(%edi)
   34738:	83 c0 01             	add    $0x1,%eax
   3473b:	89 06                	mov    %eax,(%esi)
   3473d:	8b 45 24             	mov    0x24(%ebp),%eax
   34740:	85 c0                	test   %eax,%eax
   34742:	0f 84 90 02 00 00    	je     349d8 <_dtoa_r+0xb08>
   34748:	8b 45 24             	mov    0x24(%ebp),%eax
   3474b:	89 38                	mov    %edi,(%eax)
   3474d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
   34753:	89 d8                	mov    %ebx,%eax
   34755:	5b                   	pop    %ebx
   34756:	5e                   	pop    %esi
   34757:	5f                   	pop    %edi
   34758:	5d                   	pop    %ebp
   34759:	c3                   	ret    
   3475a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34760:	db 45 b8             	fildl  -0x48(%ebp)
   34763:	df e9                	fucomip %st(1),%st
   34765:	dd d8                	fstp   %st(0)
   34767:	7a 06                	jp     3476f <_dtoa_r+0x89f>
   34769:	0f 84 cc f8 ff ff    	je     3403b <_dtoa_r+0x16b>
   3476f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
   34773:	e9 c3 f8 ff ff       	jmp    3403b <_dtoa_r+0x16b>
   34778:	8b 45 b8             	mov    -0x48(%ebp),%eax
   3477b:	29 45 a0             	sub    %eax,-0x60(%ebp)
   3477e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
   34785:	f7 d8                	neg    %eax
   34787:	89 45 b0             	mov    %eax,-0x50(%ebp)
   3478a:	e9 0c f9 ff ff       	jmp    3409b <_dtoa_r+0x1cb>
   3478f:	90                   	nop
   34790:	f7 d8                	neg    %eax
   34792:	89 45 a0             	mov    %eax,-0x60(%ebp)
   34795:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
   3479c:	e9 e2 f8 ff ff       	jmp    34083 <_dtoa_r+0x1b3>
   347a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   347a8:	8b 45 c0             	mov    -0x40(%ebp),%eax
   347ab:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
   347b0:	29 d9                	sub    %ebx,%ecx
   347b2:	d3 e0                	shl    %cl,%eax
   347b4:	e9 1b f8 ff ff       	jmp    33fd4 <_dtoa_r+0x104>
   347b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   347c0:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
   347c7:	e9 a0 f8 ff ff       	jmp    3406c <_dtoa_r+0x19c>
   347cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   347d0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
   347d4:	0f 8e fe 06 00 00    	jle    34ed8 <_dtoa_r+0x1008>
   347da:	8b 45 a8             	mov    -0x58(%ebp),%eax
   347dd:	83 e8 01             	sub    $0x1,%eax
   347e0:	39 45 b0             	cmp    %eax,-0x50(%ebp)
   347e3:	0f 8c 3b 06 00 00    	jl     34e24 <_dtoa_r+0xf54>
   347e9:	8b 55 b0             	mov    -0x50(%ebp),%edx
   347ec:	29 c2                	sub    %eax,%edx
   347ee:	8b 4d a8             	mov    -0x58(%ebp),%ecx
   347f1:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   347f4:	85 c9                	test   %ecx,%ecx
   347f6:	89 c8                	mov    %ecx,%eax
   347f8:	0f 88 83 07 00 00    	js     34f81 <_dtoa_r+0x10b1>
   347fe:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   34805:	00 
   34806:	89 34 24             	mov    %esi,(%esp)
   34809:	89 55 8c             	mov    %edx,-0x74(%ebp)
   3480c:	01 45 a0             	add    %eax,-0x60(%ebp)
   3480f:	01 45 ac             	add    %eax,-0x54(%ebp)
   34812:	e8 69 15 00 00       	call   35d80 <__i2b>
   34817:	8b 55 8c             	mov    -0x74(%ebp),%edx
   3481a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   3481d:	e9 1e fd ff ff       	jmp    34540 <_dtoa_r+0x670>
   34822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34828:	d9 c1                	fld    %st(1)
   3482a:	b9 02 00 00 00       	mov    $0x2,%ecx
   3482f:	e9 37 fa ff ff       	jmp    3426b <_dtoa_r+0x39b>
   34834:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   34837:	db 45 d4             	fildl  -0x2c(%ebp)
   3483a:	d8 c9                	fmul   %st(1),%st
   3483c:	d8 05 c4 9a 03 00    	fadds  0x39ac4
   34842:	dd 5d c0             	fstpl  -0x40(%ebp)
   34845:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
   3484c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34850:	d8 25 c8 9a 03 00    	fsubs  0x39ac8
   34856:	dd 45 c0             	fldl   -0x40(%ebp)
   34859:	d9 c9                	fxch   %st(1)
   3485b:	db e9                	fucomi %st(1),%st
   3485d:	0f 87 0d 02 00 00    	ja     34a70 <_dtoa_r+0xba0>
   34863:	d9 c9                	fxch   %st(1)
   34865:	d9 e0                	fchs   
   34867:	df e9                	fucomip %st(1),%st
   34869:	dd d8                	fstp   %st(0)
   3486b:	0f 86 a7 01 00 00    	jbe    34a18 <_dtoa_r+0xb48>
   34871:	dd d8                	fstp   %st(0)
   34873:	eb 02                	jmp    34877 <_dtoa_r+0x9a7>
   34875:	dd d8                	fstp   %st(0)
   34877:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   3487e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   34885:	8b 45 18             	mov    0x18(%ebp),%eax
   34888:	89 fb                	mov    %edi,%ebx
   3488a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
   34891:	f7 d0                	not    %eax
   34893:	89 45 b8             	mov    %eax,-0x48(%ebp)
   34896:	e9 57 fe ff ff       	jmp    346f2 <_dtoa_r+0x822>
   3489b:	90                   	nop
   3489c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   348a0:	8b 45 98             	mov    -0x68(%ebp),%eax
   348a3:	85 c0                	test   %eax,%eax
   348a5:	0f 85 c5 03 00 00    	jne    34c70 <_dtoa_r+0xda0>
   348ab:	89 75 08             	mov    %esi,0x8(%ebp)
   348ae:	bb 01 00 00 00       	mov    $0x1,%ebx
   348b3:	8b 75 a4             	mov    -0x5c(%ebp),%esi
   348b6:	eb 24                	jmp    348dc <_dtoa_r+0xa0c>
   348b8:	8b 45 08             	mov    0x8(%ebp),%eax
   348bb:	83 c3 01             	add    $0x1,%ebx
   348be:	89 74 24 04          	mov    %esi,0x4(%esp)
   348c2:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   348c9:	00 
   348ca:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   348d1:	00 
   348d2:	89 04 24             	mov    %eax,(%esp)
   348d5:	e8 e6 11 00 00       	call   35ac0 <__multadd>
   348da:	89 c6                	mov    %eax,%esi
   348dc:	8b 55 b0             	mov    -0x50(%ebp),%edx
   348df:	89 f0                	mov    %esi,%eax
   348e1:	e8 1a f4 ff ff       	call   33d00 <quorem>
   348e6:	83 c0 30             	add    $0x30,%eax
   348e9:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
   348ec:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
   348f0:	7c c6                	jl     348b8 <_dtoa_r+0x9e8>
   348f2:	89 45 a0             	mov    %eax,-0x60(%ebp)
   348f5:	8b 45 a8             	mov    -0x58(%ebp),%eax
   348f8:	ba 01 00 00 00       	mov    $0x1,%edx
   348fd:	89 75 a4             	mov    %esi,-0x5c(%ebp)
   34900:	8b 75 08             	mov    0x8(%ebp),%esi
   34903:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
   3490a:	85 c0                	test   %eax,%eax
   3490c:	0f 4f d0             	cmovg  %eax,%edx
   3490f:	01 fa                	add    %edi,%edx
   34911:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34914:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   3491b:	00 
   3491c:	89 34 24             	mov    %esi,(%esp)
   3491f:	89 55 ac             	mov    %edx,-0x54(%ebp)
   34922:	89 44 24 04          	mov    %eax,0x4(%esp)
   34926:	e8 75 17 00 00       	call   360a0 <__lshift>
   3492b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
   3492e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   34932:	89 04 24             	mov    %eax,(%esp)
   34935:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   34938:	e8 83 18 00 00       	call   361c0 <__mcmp>
   3493d:	8b 55 ac             	mov    -0x54(%ebp),%edx
   34940:	83 f8 00             	cmp    $0x0,%eax
   34943:	0f 8e 41 06 00 00    	jle    34f8a <_dtoa_r+0x10ba>
   34949:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
   3494d:	eb 0f                	jmp    3495e <_dtoa_r+0xa8e>
   3494f:	90                   	nop
   34950:	39 c7                	cmp    %eax,%edi
   34952:	0f 84 70 05 00 00    	je     34ec8 <_dtoa_r+0xff8>
   34958:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
   3495c:	89 c2                	mov    %eax,%edx
   3495e:	80 f9 39             	cmp    $0x39,%cl
   34961:	8d 42 ff             	lea    -0x1(%edx),%eax
   34964:	74 ea                	je     34950 <_dtoa_r+0xa80>
   34966:	83 c1 01             	add    $0x1,%ecx
   34969:	89 fb                	mov    %edi,%ebx
   3496b:	88 08                	mov    %cl,(%eax)
   3496d:	89 d7                	mov    %edx,%edi
   3496f:	e9 7e fd ff ff       	jmp    346f2 <_dtoa_r+0x822>
   34974:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34978:	b8 1c 00 00 00       	mov    $0x1c,%eax
   3497d:	01 45 a0             	add    %eax,-0x60(%ebp)
   34980:	01 c3                	add    %eax,%ebx
   34982:	01 45 ac             	add    %eax,-0x54(%ebp)
   34985:	e9 b6 fc ff ff       	jmp    34640 <_dtoa_r+0x770>
   3498a:	ba 01 00 00 00       	mov    $0x1,%edx
   3498f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
   34996:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
   3499d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
   349a4:	21 c2                	and    %eax,%edx
   349a6:	88 55 b4             	mov    %dl,-0x4c(%ebp)
   349a9:	31 d2                	xor    %edx,%edx
   349ab:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
   349b2:	e9 62 f8 ff ff       	jmp    34219 <_dtoa_r+0x349>
   349b7:	90                   	nop
   349b8:	8b 55 c0             	mov    -0x40(%ebp),%edx
   349bb:	85 d2                	test   %edx,%edx
   349bd:	0f 84 4e fd ff ff    	je     34711 <_dtoa_r+0x841>
   349c3:	8b 45 c0             	mov    -0x40(%ebp),%eax
   349c6:	89 34 24             	mov    %esi,(%esp)
   349c9:	89 44 24 04          	mov    %eax,0x4(%esp)
   349cd:	e8 ce 10 00 00       	call   35aa0 <_Bfree>
   349d2:	e9 3a fd ff ff       	jmp    34711 <_dtoa_r+0x841>
   349d7:	90                   	nop
   349d8:	89 d8                	mov    %ebx,%eax
   349da:	e9 89 f5 ff ff       	jmp    33f68 <_dtoa_r+0x98>
   349df:	8b 45 b0             	mov    -0x50(%ebp),%eax
   349e2:	89 44 24 08          	mov    %eax,0x8(%esp)
   349e6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   349e9:	89 34 24             	mov    %esi,(%esp)
   349ec:	89 44 24 04          	mov    %eax,0x4(%esp)
   349f0:	e8 8b 15 00 00       	call   35f80 <__pow5mult>
   349f5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   349f8:	e9 c6 fb ff ff       	jmp    345c3 <_dtoa_r+0x6f3>
   349fd:	dd d8                	fstp   %st(0)
   349ff:	dd d8                	fstp   %st(0)
   34a01:	eb 15                	jmp    34a18 <_dtoa_r+0xb48>
   34a03:	90                   	nop
   34a04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34a08:	dd d8                	fstp   %st(0)
   34a0a:	dd d8                	fstp   %st(0)
   34a0c:	dd d8                	fstp   %st(0)
   34a0e:	eb 08                	jmp    34a18 <_dtoa_r+0xb48>
   34a10:	dd d8                	fstp   %st(0)
   34a12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34a18:	dd 5d c0             	fstpl  -0x40(%ebp)
   34a1b:	e9 cf f9 ff ff       	jmp    343ef <_dtoa_r+0x51f>
   34a20:	8b 45 b8             	mov    -0x48(%ebp),%eax
   34a23:	f7 d8                	neg    %eax
   34a25:	0f 84 6a 04 00 00    	je     34e95 <_dtoa_r+0xfc5>
   34a2b:	89 c2                	mov    %eax,%edx
   34a2d:	b9 02 00 00 00       	mov    $0x2,%ecx
   34a32:	83 e2 0f             	and    $0xf,%edx
   34a35:	c1 f8 04             	sar    $0x4,%eax
   34a38:	dd 04 d5 a0 9b 03 00 	fldl   0x39ba0(,%edx,8)
   34a3f:	85 c0                	test   %eax,%eax
   34a41:	d8 c9                	fmul   %st(1),%st
   34a43:	0f 84 4a f8 ff ff    	je     34293 <_dtoa_r+0x3c3>
   34a49:	31 d2                	xor    %edx,%edx
   34a4b:	90                   	nop
   34a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34a50:	a8 01                	test   $0x1,%al
   34a52:	74 0a                	je     34a5e <_dtoa_r+0xb8e>
   34a54:	dc 0c d5 60 9b 03 00 	fmull  0x39b60(,%edx,8)
   34a5b:	83 c1 01             	add    $0x1,%ecx
   34a5e:	83 c2 01             	add    $0x1,%edx
   34a61:	d1 f8                	sar    %eax
   34a63:	75 eb                	jne    34a50 <_dtoa_r+0xb80>
   34a65:	e9 29 f8 ff ff       	jmp    34293 <_dtoa_r+0x3c3>
   34a6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34a70:	dd d8                	fstp   %st(0)
   34a72:	dd d8                	fstp   %st(0)
   34a74:	dd d8                	fstp   %st(0)
   34a76:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   34a7d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   34a84:	e9 55 fc ff ff       	jmp    346de <_dtoa_r+0x80e>
   34a89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34a90:	d9 7d d2             	fnstcw -0x2e(%ebp)
   34a93:	8d 41 ff             	lea    -0x1(%ecx),%eax
   34a96:	dd 45 c0             	fldl   -0x40(%ebp)
   34a99:	dc 0c c5 a0 9b 03 00 	fmull  0x39ba0(,%eax,8)
   34aa0:	d9 c9                	fxch   %st(1)
   34aa2:	89 45 88             	mov    %eax,-0x78(%ebp)
   34aa5:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   34aa9:	8d 57 01             	lea    0x1(%edi),%edx
   34aac:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
   34aaf:	b4 0c                	mov    $0xc,%ah
   34ab1:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   34ab5:	d9 6d d0             	fldcw  -0x30(%ebp)
   34ab8:	db 55 d4             	fistl  -0x2c(%ebp)
   34abb:	d9 6d d2             	fldcw  -0x2e(%ebp)
   34abe:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   34ac1:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   34ac4:	83 c0 30             	add    $0x30,%eax
   34ac7:	83 f9 01             	cmp    $0x1,%ecx
   34aca:	db 45 d4             	fildl  -0x2c(%ebp)
   34acd:	de e9                	fsubrp %st,%st(1)
   34acf:	88 07                	mov    %al,(%edi)
   34ad1:	89 d0                	mov    %edx,%eax
   34ad3:	74 37                	je     34b0c <_dtoa_r+0xc3c>
   34ad5:	d9 05 c0 9a 03 00    	flds   0x39ac0
   34adb:	eb 05                	jmp    34ae2 <_dtoa_r+0xc12>
   34add:	8d 76 00             	lea    0x0(%esi),%esi
   34ae0:	d9 c9                	fxch   %st(1)
   34ae2:	dc c9                	fmul   %st,%st(1)
   34ae4:	d9 c9                	fxch   %st(1)
   34ae6:	83 c0 01             	add    $0x1,%eax
   34ae9:	d9 6d d0             	fldcw  -0x30(%ebp)
   34aec:	db 55 d4             	fistl  -0x2c(%ebp)
   34aef:	d9 6d d2             	fldcw  -0x2e(%ebp)
   34af2:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
   34af5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   34af8:	83 c1 30             	add    $0x30,%ecx
   34afb:	39 d8                	cmp    %ebx,%eax
   34afd:	db 45 d4             	fildl  -0x2c(%ebp)
   34b00:	de e9                	fsubrp %st,%st(1)
   34b02:	88 48 ff             	mov    %cl,-0x1(%eax)
   34b05:	75 d9                	jne    34ae0 <_dtoa_r+0xc10>
   34b07:	dd d9                	fstp   %st(1)
   34b09:	03 55 88             	add    -0x78(%ebp),%edx
   34b0c:	d9 05 cc 9a 03 00    	flds   0x39acc
   34b12:	d9 c2                	fld    %st(2)
   34b14:	d8 c1                	fadd   %st(1),%st
   34b16:	d9 ca                	fxch   %st(2)
   34b18:	db ea                	fucomi %st(2),%st
   34b1a:	dd da                	fstp   %st(2)
   34b1c:	0f 86 7f 03 00 00    	jbe    34ea1 <_dtoa_r+0xfd1>
   34b22:	dd d8                	fstp   %st(0)
   34b24:	dd d8                	fstp   %st(0)
   34b26:	dd d8                	fstp   %st(0)
   34b28:	dd d8                	fstp   %st(0)
   34b2a:	89 fb                	mov    %edi,%ebx
   34b2c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
   34b30:	89 d7                	mov    %edx,%edi
   34b32:	e9 d7 f9 ff ff       	jmp    3450e <_dtoa_r+0x63e>
   34b37:	90                   	nop
   34b38:	8b 4d b0             	mov    -0x50(%ebp),%ecx
   34b3b:	8b 41 10             	mov    0x10(%ecx),%eax
   34b3e:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
   34b42:	89 04 24             	mov    %eax,(%esp)
   34b45:	e8 56 11 00 00       	call   35ca0 <__hi0bits>
   34b4a:	ba 20 00 00 00       	mov    $0x20,%edx
   34b4f:	29 c2                	sub    %eax,%edx
   34b51:	e9 bb fa ff ff       	jmp    34611 <_dtoa_r+0x741>
   34b56:	66 90                	xchg   %ax,%ax
   34b58:	8b 45 b0             	mov    -0x50(%ebp),%eax
   34b5b:	89 44 24 04          	mov    %eax,0x4(%esp)
   34b5f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34b62:	89 04 24             	mov    %eax,(%esp)
   34b65:	e8 56 16 00 00       	call   361c0 <__mcmp>
   34b6a:	85 c0                	test   %eax,%eax
   34b6c:	0f 89 13 fb ff ff    	jns    34685 <_dtoa_r+0x7b5>
   34b72:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34b75:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34b7c:	00 
   34b7d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34b84:	00 
   34b85:	89 34 24             	mov    %esi,(%esp)
   34b88:	89 44 24 04          	mov    %eax,0x4(%esp)
   34b8c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
   34b90:	e8 2b 0f 00 00       	call   35ac0 <__multadd>
   34b95:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   34b98:	85 c9                	test   %ecx,%ecx
   34b9a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   34b9d:	0f 85 8d 00 00 00    	jne    34c30 <_dtoa_r+0xd60>
   34ba3:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
   34ba7:	8b 45 90             	mov    -0x70(%ebp),%eax
   34baa:	7f 0a                	jg     34bb6 <_dtoa_r+0xce6>
   34bac:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   34bb0:	0f 8f ff 04 00 00    	jg     350b5 <_dtoa_r+0x11e5>
   34bb6:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34bb9:	e9 ed fc ff ff       	jmp    348ab <_dtoa_r+0x9db>
   34bbe:	66 90                	xchg   %ax,%ax
   34bc0:	8b 5d a8             	mov    -0x58(%ebp),%ebx
   34bc3:	85 db                	test   %ebx,%ebx
   34bc5:	0f 85 aa fc ff ff    	jne    34875 <_dtoa_r+0x9a5>
   34bcb:	d8 0d c8 9a 03 00    	fmuls  0x39ac8
   34bd1:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   34bd8:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   34bdf:	dd 45 c0             	fldl   -0x40(%ebp)
   34be2:	d9 c9                	fxch   %st(1)
   34be4:	df e9                	fucomip %st(1),%st
   34be6:	dd d8                	fstp   %st(0)
   34be8:	0f 83 97 fc ff ff    	jae    34885 <_dtoa_r+0x9b5>
   34bee:	e9 eb fa ff ff       	jmp    346de <_dtoa_r+0x80e>
   34bf3:	90                   	nop
   34bf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34bf8:	8b 45 c0             	mov    -0x40(%ebp),%eax
   34bfb:	85 c0                	test   %eax,%eax
   34bfd:	0f 85 fe f9 ff ff    	jne    34601 <_dtoa_r+0x731>
   34c03:	8b 45 c4             	mov    -0x3c(%ebp),%eax
   34c06:	a9 ff ff 0f 00       	test   $0xfffff,%eax
   34c0b:	0f 85 f0 f9 ff ff    	jne    34601 <_dtoa_r+0x731>
   34c11:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
   34c16:	0f 84 e5 f9 ff ff    	je     34601 <_dtoa_r+0x731>
   34c1c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
   34c20:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
   34c24:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
   34c2b:	e9 d1 f9 ff ff       	jmp    34601 <_dtoa_r+0x731>
   34c30:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34c33:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34c3a:	00 
   34c3b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34c42:	00 
   34c43:	89 34 24             	mov    %esi,(%esp)
   34c46:	89 44 24 04          	mov    %eax,0x4(%esp)
   34c4a:	e8 71 0e 00 00       	call   35ac0 <__multadd>
   34c4f:	8b 55 90             	mov    -0x70(%ebp),%edx
   34c52:	85 d2                	test   %edx,%edx
   34c54:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34c57:	8b 45 90             	mov    -0x70(%ebp),%eax
   34c5a:	7f 0a                	jg     34c66 <_dtoa_r+0xd96>
   34c5c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   34c60:	0f 8f 4f 04 00 00    	jg     350b5 <_dtoa_r+0x11e5>
   34c66:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34c69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34c70:	85 db                	test   %ebx,%ebx
   34c72:	7e 16                	jle    34c8a <_dtoa_r+0xdba>
   34c74:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34c77:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   34c7b:	89 34 24             	mov    %esi,(%esp)
   34c7e:	89 44 24 04          	mov    %eax,0x4(%esp)
   34c82:	e8 19 14 00 00       	call   360a0 <__lshift>
   34c87:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34c8a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
   34c8d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34c90:	85 db                	test   %ebx,%ebx
   34c92:	89 45 ac             	mov    %eax,-0x54(%ebp)
   34c95:	0f 85 11 03 00 00    	jne    34fac <_dtoa_r+0x10dc>
   34c9b:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34c9e:	8d 5f 01             	lea    0x1(%edi),%ebx
   34ca1:	89 7d 8c             	mov    %edi,-0x74(%ebp)
   34ca4:	01 f8                	add    %edi,%eax
   34ca6:	8b 7d a4             	mov    -0x5c(%ebp),%edi
   34ca9:	89 45 90             	mov    %eax,-0x70(%ebp)
   34cac:	8b 45 c0             	mov    -0x40(%ebp),%eax
   34caf:	83 e0 01             	and    $0x1,%eax
   34cb2:	89 45 9c             	mov    %eax,-0x64(%ebp)
   34cb5:	eb 2e                	jmp    34ce5 <_dtoa_r+0xe15>
   34cb7:	90                   	nop
   34cb8:	e8 03 0e 00 00       	call   35ac0 <__multadd>
   34cbd:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34cc4:	00 
   34cc5:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34ccc:	00 
   34ccd:	89 34 24             	mov    %esi,(%esp)
   34cd0:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34cd3:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34cd6:	89 44 24 04          	mov    %eax,0x4(%esp)
   34cda:	e8 e1 0d 00 00       	call   35ac0 <__multadd>
   34cdf:	89 45 ac             	mov    %eax,-0x54(%ebp)
   34ce2:	83 c3 01             	add    $0x1,%ebx
   34ce5:	8b 55 b0             	mov    -0x50(%ebp),%edx
   34ce8:	8d 43 ff             	lea    -0x1(%ebx),%eax
   34ceb:	89 45 98             	mov    %eax,-0x68(%ebp)
   34cee:	89 f8                	mov    %edi,%eax
   34cf0:	e8 0b f0 ff ff       	call   33d00 <quorem>
   34cf5:	89 3c 24             	mov    %edi,(%esp)
   34cf8:	8d 48 30             	lea    0x30(%eax),%ecx
   34cfb:	89 4d a0             	mov    %ecx,-0x60(%ebp)
   34cfe:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
   34d01:	89 45 94             	mov    %eax,-0x6c(%ebp)
   34d04:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   34d08:	e8 b3 14 00 00       	call   361c0 <__mcmp>
   34d0d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
   34d10:	89 34 24             	mov    %esi,(%esp)
   34d13:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   34d17:	89 45 c0             	mov    %eax,-0x40(%ebp)
   34d1a:	8b 45 b0             	mov    -0x50(%ebp),%eax
   34d1d:	89 44 24 04          	mov    %eax,0x4(%esp)
   34d21:	e8 ea 14 00 00       	call   36210 <__mdiff>
   34d26:	8b 48 0c             	mov    0xc(%eax),%ecx
   34d29:	89 c2                	mov    %eax,%edx
   34d2b:	85 c9                	test   %ecx,%ecx
   34d2d:	0f 85 c5 00 00 00    	jne    34df8 <_dtoa_r+0xf28>
   34d33:	89 44 24 04          	mov    %eax,0x4(%esp)
   34d37:	89 3c 24             	mov    %edi,(%esp)
   34d3a:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34d3d:	e8 7e 14 00 00       	call   361c0 <__mcmp>
   34d42:	8b 55 a8             	mov    -0x58(%ebp),%edx
   34d45:	89 54 24 04          	mov    %edx,0x4(%esp)
   34d49:	89 34 24             	mov    %esi,(%esp)
   34d4c:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34d4f:	e8 4c 0d 00 00       	call   35aa0 <_Bfree>
   34d54:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34d57:	89 c1                	mov    %eax,%ecx
   34d59:	0b 4d 14             	or     0x14(%ebp),%ecx
   34d5c:	75 0b                	jne    34d69 <_dtoa_r+0xe99>
   34d5e:	8b 55 9c             	mov    -0x64(%ebp),%edx
   34d61:	85 d2                	test   %edx,%edx
   34d63:	0f 84 fb 02 00 00    	je     35064 <_dtoa_r+0x1194>
   34d69:	8b 55 c0             	mov    -0x40(%ebp),%edx
   34d6c:	85 d2                	test   %edx,%edx
   34d6e:	0f 88 7f 01 00 00    	js     34ef3 <_dtoa_r+0x1023>
   34d74:	8b 4d c0             	mov    -0x40(%ebp),%ecx
   34d77:	0b 4d 14             	or     0x14(%ebp),%ecx
   34d7a:	75 0b                	jne    34d87 <_dtoa_r+0xeb7>
   34d7c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
   34d7f:	85 c9                	test   %ecx,%ecx
   34d81:	0f 84 6c 01 00 00    	je     34ef3 <_dtoa_r+0x1023>
   34d87:	85 c0                	test   %eax,%eax
   34d89:	0f 8f 82 02 00 00    	jg     35011 <_dtoa_r+0x1141>
   34d8f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
   34d93:	89 da                	mov    %ebx,%edx
   34d95:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
   34d98:	88 43 ff             	mov    %al,-0x1(%ebx)
   34d9b:	0f 84 8d 02 00 00    	je     3502e <_dtoa_r+0x115e>
   34da1:	89 7c 24 04          	mov    %edi,0x4(%esp)
   34da5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34dac:	00 
   34dad:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34db4:	00 
   34db5:	89 34 24             	mov    %esi,(%esp)
   34db8:	e8 03 0d 00 00       	call   35ac0 <__multadd>
   34dbd:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34dc4:	00 
   34dc5:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34dcc:	00 
   34dcd:	89 34 24             	mov    %esi,(%esp)
   34dd0:	89 c7                	mov    %eax,%edi
   34dd2:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34dd5:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
   34dd8:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34ddb:	89 44 24 04          	mov    %eax,0x4(%esp)
   34ddf:	0f 85 d3 fe ff ff    	jne    34cb8 <_dtoa_r+0xde8>
   34de5:	e8 d6 0c 00 00       	call   35ac0 <__multadd>
   34dea:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34ded:	89 45 ac             	mov    %eax,-0x54(%ebp)
   34df0:	e9 ed fe ff ff       	jmp    34ce2 <_dtoa_r+0xe12>
   34df5:	8d 76 00             	lea    0x0(%esi),%esi
   34df8:	b8 01 00 00 00       	mov    $0x1,%eax
   34dfd:	e9 43 ff ff ff       	jmp    34d45 <_dtoa_r+0xe75>
   34e02:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
   34e09:	e9 d2 f2 ff ff       	jmp    340e0 <_dtoa_r+0x210>
   34e0e:	0f 85 87 f6 ff ff    	jne    3449b <_dtoa_r+0x5cb>
   34e14:	dd d8                	fstp   %st(0)
   34e16:	dd d8                	fstp   %st(0)
   34e18:	dd d8                	fstp   %st(0)
   34e1a:	89 fb                	mov    %edi,%ebx
   34e1c:	8b 7d c0             	mov    -0x40(%ebp),%edi
   34e1f:	e9 fc f8 ff ff       	jmp    34720 <_dtoa_r+0x850>
   34e24:	89 c2                	mov    %eax,%edx
   34e26:	2b 55 b0             	sub    -0x50(%ebp),%edx
   34e29:	89 45 b0             	mov    %eax,-0x50(%ebp)
   34e2c:	01 55 94             	add    %edx,-0x6c(%ebp)
   34e2f:	31 d2                	xor    %edx,%edx
   34e31:	e9 b8 f9 ff ff       	jmp    347ee <_dtoa_r+0x91e>
   34e36:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34e39:	85 c0                	test   %eax,%eax
   34e3b:	0f 84 f3 f9 ff ff    	je     34834 <_dtoa_r+0x964>
   34e41:	8b 45 90             	mov    -0x70(%ebp),%eax
   34e44:	85 c0                	test   %eax,%eax
   34e46:	0f 8e c4 fb ff ff    	jle    34a10 <_dtoa_r+0xb40>
   34e4c:	d8 0d c0 9a 03 00    	fmuls  0x39ac0
   34e52:	83 c1 01             	add    $0x1,%ecx
   34e55:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   34e58:	8b 5d b8             	mov    -0x48(%ebp),%ebx
   34e5b:	89 c1                	mov    %eax,%ecx
   34e5d:	83 eb 01             	sub    $0x1,%ebx
   34e60:	db 45 d4             	fildl  -0x2c(%ebp)
   34e63:	d8 c9                	fmul   %st(1),%st
   34e65:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
   34e68:	d8 05 c4 9a 03 00    	fadds  0x39ac4
   34e6e:	dd 5d c0             	fstpl  -0x40(%ebp)
   34e71:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
   34e78:	e9 53 f4 ff ff       	jmp    342d0 <_dtoa_r+0x400>
   34e7d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34e80:	c6 03 30             	movb   $0x30,(%ebx)
   34e83:	83 c0 01             	add    $0x1,%eax
   34e86:	89 45 b8             	mov    %eax,-0x48(%ebp)
   34e89:	b8 31 00 00 00       	mov    $0x31,%eax
   34e8e:	88 02                	mov    %al,(%edx)
   34e90:	e9 8b f8 ff ff       	jmp    34720 <_dtoa_r+0x850>
   34e95:	d9 c0                	fld    %st(0)
   34e97:	b9 02 00 00 00       	mov    $0x2,%ecx
   34e9c:	e9 f2 f3 ff ff       	jmp    34293 <_dtoa_r+0x3c3>
   34ea1:	de e2                	fsubp  %st,%st(2)
   34ea3:	d9 c9                	fxch   %st(1)
   34ea5:	df e9                	fucomip %st(1),%st
   34ea7:	dd d8                	fstp   %st(0)
   34ea9:	0f 86 69 fb ff ff    	jbe    34a18 <_dtoa_r+0xb48>
   34eaf:	dd d8                	fstp   %st(0)
   34eb1:	eb 07                	jmp    34eba <_dtoa_r+0xfea>
   34eb3:	90                   	nop
   34eb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34eb8:	89 c2                	mov    %eax,%edx
   34eba:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
   34ebe:	8d 42 ff             	lea    -0x1(%edx),%eax
   34ec1:	74 f5                	je     34eb8 <_dtoa_r+0xfe8>
   34ec3:	e9 d9 f4 ff ff       	jmp    343a1 <_dtoa_r+0x4d1>
   34ec8:	c6 07 31             	movb   $0x31,(%edi)
   34ecb:	89 fb                	mov    %edi,%ebx
   34ecd:	89 d7                	mov    %edx,%edi
   34ecf:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
   34ed3:	e9 1a f8 ff ff       	jmp    346f2 <_dtoa_r+0x822>
   34ed8:	8b 55 8c             	mov    -0x74(%ebp),%edx
   34edb:	85 d2                	test   %edx,%edx
   34edd:	0f 84 1b 01 00 00    	je     34ffe <_dtoa_r+0x112e>
   34ee3:	05 33 04 00 00       	add    $0x433,%eax
   34ee8:	8b 55 b0             	mov    -0x50(%ebp),%edx
   34eeb:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   34eee:	e9 0b f9 ff ff       	jmp    347fe <_dtoa_r+0x92e>
   34ef3:	85 c0                	test   %eax,%eax
   34ef5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   34ef8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   34efb:	7e 45                	jle    34f42 <_dtoa_r+0x1072>
   34efd:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34f00:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   34f07:	00 
   34f08:	89 34 24             	mov    %esi,(%esp)
   34f0b:	89 44 24 04          	mov    %eax,0x4(%esp)
   34f0f:	e8 8c 11 00 00       	call   360a0 <__lshift>
   34f14:	8b 5d b0             	mov    -0x50(%ebp),%ebx
   34f17:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   34f1b:	89 04 24             	mov    %eax,(%esp)
   34f1e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   34f21:	e8 9a 12 00 00       	call   361c0 <__mcmp>
   34f26:	83 f8 00             	cmp    $0x0,%eax
   34f29:	0f 8e 5b 01 00 00    	jle    3508a <_dtoa_r+0x11ba>
   34f2f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
   34f33:	0f 84 0c 01 00 00    	je     35045 <_dtoa_r+0x1175>
   34f39:	8b 45 94             	mov    -0x6c(%ebp),%eax
   34f3c:	83 c0 31             	add    $0x31,%eax
   34f3f:	89 45 a0             	mov    %eax,-0x60(%ebp)
   34f42:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   34f45:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
   34f49:	89 cb                	mov    %ecx,%ebx
   34f4b:	88 03                	mov    %al,(%ebx)
   34f4d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34f50:	89 fb                	mov    %edi,%ebx
   34f52:	8d 79 01             	lea    0x1(%ecx),%edi
   34f55:	89 45 c0             	mov    %eax,-0x40(%ebp)
   34f58:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34f5b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34f5e:	e9 8f f7 ff ff       	jmp    346f2 <_dtoa_r+0x822>
   34f63:	dd d8                	fstp   %st(0)
   34f65:	dd d8                	fstp   %st(0)
   34f67:	dd d8                	fstp   %st(0)
   34f69:	eb 0d                	jmp    34f78 <_dtoa_r+0x10a8>
   34f6b:	90                   	nop
   34f6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34f70:	dd d8                	fstp   %st(0)
   34f72:	dd d8                	fstp   %st(0)
   34f74:	dd d8                	fstp   %st(0)
   34f76:	dd d8                	fstp   %st(0)
   34f78:	89 fb                	mov    %edi,%ebx
   34f7a:	89 d7                	mov    %edx,%edi
   34f7c:	e9 8d f5 ff ff       	jmp    3450e <_dtoa_r+0x63e>
   34f81:	29 cb                	sub    %ecx,%ebx
   34f83:	31 c0                	xor    %eax,%eax
   34f85:	e9 74 f8 ff ff       	jmp    347fe <_dtoa_r+0x92e>
   34f8a:	75 0e                	jne    34f9a <_dtoa_r+0x10ca>
   34f8c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
   34f90:	74 08                	je     34f9a <_dtoa_r+0x10ca>
   34f92:	e9 b2 f9 ff ff       	jmp    34949 <_dtoa_r+0xa79>
   34f97:	90                   	nop
   34f98:	89 c2                	mov    %eax,%edx
   34f9a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
   34f9e:	8d 42 ff             	lea    -0x1(%edx),%eax
   34fa1:	74 f5                	je     34f98 <_dtoa_r+0x10c8>
   34fa3:	89 fb                	mov    %edi,%ebx
   34fa5:	89 d7                	mov    %edx,%edi
   34fa7:	e9 46 f7 ff ff       	jmp    346f2 <_dtoa_r+0x822>
   34fac:	8b 40 04             	mov    0x4(%eax),%eax
   34faf:	89 34 24             	mov    %esi,(%esp)
   34fb2:	89 44 24 04          	mov    %eax,0x4(%esp)
   34fb6:	e8 45 0a 00 00       	call   35a00 <_Balloc>
   34fbb:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
   34fbe:	89 c3                	mov    %eax,%ebx
   34fc0:	8b 41 10             	mov    0x10(%ecx),%eax
   34fc3:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
   34fca:	89 44 24 08          	mov    %eax,0x8(%esp)
   34fce:	89 c8                	mov    %ecx,%eax
   34fd0:	83 c0 0c             	add    $0xc,%eax
   34fd3:	89 44 24 04          	mov    %eax,0x4(%esp)
   34fd7:	8d 43 0c             	lea    0xc(%ebx),%eax
   34fda:	89 04 24             	mov    %eax,(%esp)
   34fdd:	e8 62 cc ff ff       	call   31c44 <memcpy>
   34fe2:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   34fe9:	00 
   34fea:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   34fee:	89 34 24             	mov    %esi,(%esp)
   34ff1:	e8 aa 10 00 00       	call   360a0 <__lshift>
   34ff6:	89 45 ac             	mov    %eax,-0x54(%ebp)
   34ff9:	e9 9d fc ff ff       	jmp    34c9b <_dtoa_r+0xdcb>
   34ffe:	b8 36 00 00 00       	mov    $0x36,%eax
   35003:	8b 55 b0             	mov    -0x50(%ebp),%edx
   35006:	2b 45 e0             	sub    -0x20(%ebp),%eax
   35009:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   3500c:	e9 ed f7 ff ff       	jmp    347fe <_dtoa_r+0x92e>
   35011:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
   35015:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   35018:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   3501b:	74 28                	je     35045 <_dtoa_r+0x1175>
   3501d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
   35021:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   35024:	83 c0 01             	add    $0x1,%eax
   35027:	89 cb                	mov    %ecx,%ebx
   35029:	e9 1d ff ff ff       	jmp    34f4b <_dtoa_r+0x107b>
   3502e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   35031:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   35034:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   35037:	89 45 c0             	mov    %eax,-0x40(%ebp)
   3503a:	8b 45 ac             	mov    -0x54(%ebp),%eax
   3503d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   35040:	e9 cc f8 ff ff       	jmp    34911 <_dtoa_r+0xa41>
   35045:	8b 45 98             	mov    -0x68(%ebp),%eax
   35048:	b9 39 00 00 00       	mov    $0x39,%ecx
   3504d:	8d 50 01             	lea    0x1(%eax),%edx
   35050:	c6 00 39             	movb   $0x39,(%eax)
   35053:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   35056:	89 45 c0             	mov    %eax,-0x40(%ebp)
   35059:	8b 45 ac             	mov    -0x54(%ebp),%eax
   3505c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   3505f:	e9 fa f8 ff ff       	jmp    3495e <_dtoa_r+0xa8e>
   35064:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   35067:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   3506a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   3506d:	83 fb 39             	cmp    $0x39,%ebx
   35070:	74 d3                	je     35045 <_dtoa_r+0x1175>
   35072:	8b 4d c0             	mov    -0x40(%ebp),%ecx
   35075:	8b 45 94             	mov    -0x6c(%ebp),%eax
   35078:	83 c0 31             	add    $0x31,%eax
   3507b:	85 c9                	test   %ecx,%ecx
   3507d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   35080:	0f 4e c3             	cmovle %ebx,%eax
   35083:	89 cb                	mov    %ecx,%ebx
   35085:	e9 c1 fe ff ff       	jmp    34f4b <_dtoa_r+0x107b>
   3508a:	0f 85 b2 fe ff ff    	jne    34f42 <_dtoa_r+0x1072>
   35090:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
   35094:	0f 84 a8 fe ff ff    	je     34f42 <_dtoa_r+0x1072>
   3509a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   350a0:	e9 8a fe ff ff       	jmp    34f2f <_dtoa_r+0x105f>
   350a5:	0f 85 c7 f3 ff ff    	jne    34472 <_dtoa_r+0x5a2>
   350ab:	dd d8                	fstp   %st(0)
   350ad:	dd d8                	fstp   %st(0)
   350af:	90                   	nop
   350b0:	e9 65 fd ff ff       	jmp    34e1a <_dtoa_r+0xf4a>
   350b5:	89 45 a8             	mov    %eax,-0x58(%ebp)
   350b8:	e9 dd f5 ff ff       	jmp    3469a <_dtoa_r+0x7ca>
   350bd:	8d 76 00             	lea    0x0(%esi),%esi
   350c0:	0f 84 7a f5 ff ff    	je     34640 <_dtoa_r+0x770>
   350c6:	b8 3c 00 00 00       	mov    $0x3c,%eax
   350cb:	29 d0                	sub    %edx,%eax
   350cd:	e9 ab f8 ff ff       	jmp    3497d <_dtoa_r+0xaad>
   350d2:	b8 01 00 00 00       	mov    $0x1,%eax
   350d7:	e9 d9 ef ff ff       	jmp    340b5 <_dtoa_r+0x1e5>
   350dc:	31 d2                	xor    %edx,%edx
   350de:	e9 36 f1 ff ff       	jmp    34219 <_dtoa_r+0x349>
   350e3:	66 90                	xchg   %ax,%ax
   350e5:	66 90                	xchg   %ax,%ax
   350e7:	66 90                	xchg   %ax,%ax
   350e9:	66 90                	xchg   %ax,%ax
   350eb:	66 90                	xchg   %ax,%ax
   350ed:	66 90                	xchg   %ax,%ax
   350ef:	90                   	nop

000350f0 <_setlocale_r>:
   350f0:	55                   	push   %ebp
   350f1:	89 e5                	mov    %esp,%ebp
   350f3:	53                   	push   %ebx
   350f4:	83 ec 14             	sub    $0x14,%esp
   350f7:	8b 5d 10             	mov    0x10(%ebp),%ebx
   350fa:	85 db                	test   %ebx,%ebx
   350fc:	74 14                	je     35112 <_setlocale_r+0x22>
   350fe:	c7 44 24 04 e8 9a 03 	movl   $0x39ae8,0x4(%esp)
   35105:	00 
   35106:	89 1c 24             	mov    %ebx,(%esp)
   35109:	e8 82 17 00 00       	call   36890 <strcmp>
   3510e:	85 c0                	test   %eax,%eax
   35110:	75 0e                	jne    35120 <_setlocale_r+0x30>
   35112:	83 c4 14             	add    $0x14,%esp
   35115:	b8 e4 98 03 00       	mov    $0x398e4,%eax
   3511a:	5b                   	pop    %ebx
   3511b:	5d                   	pop    %ebp
   3511c:	c3                   	ret    
   3511d:	8d 76 00             	lea    0x0(%esi),%esi
   35120:	c7 44 24 04 e4 98 03 	movl   $0x398e4,0x4(%esp)
   35127:	00 
   35128:	89 1c 24             	mov    %ebx,(%esp)
   3512b:	e8 60 17 00 00       	call   36890 <strcmp>
   35130:	85 c0                	test   %eax,%eax
   35132:	74 de                	je     35112 <_setlocale_r+0x22>
   35134:	89 1c 24             	mov    %ebx,(%esp)
   35137:	c7 44 24 04 1e 99 03 	movl   $0x3991e,0x4(%esp)
   3513e:	00 
   3513f:	e8 4c 17 00 00       	call   36890 <strcmp>
   35144:	89 c2                	mov    %eax,%edx
   35146:	31 c0                	xor    %eax,%eax
   35148:	85 d2                	test   %edx,%edx
   3514a:	ba e4 98 03 00       	mov    $0x398e4,%edx
   3514f:	0f 44 c2             	cmove  %edx,%eax
   35152:	83 c4 14             	add    $0x14,%esp
   35155:	5b                   	pop    %ebx
   35156:	5d                   	pop    %ebp
   35157:	c3                   	ret    
   35158:	90                   	nop
   35159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035160 <__locale_charset>:
   35160:	55                   	push   %ebp
   35161:	b8 c0 d4 03 00       	mov    $0x3d4c0,%eax
   35166:	89 e5                	mov    %esp,%ebp
   35168:	5d                   	pop    %ebp
   35169:	c3                   	ret    
   3516a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00035170 <__locale_mb_cur_max>:
   35170:	55                   	push   %ebp
   35171:	a1 18 d5 03 00       	mov    0x3d518,%eax
   35176:	89 e5                	mov    %esp,%ebp
   35178:	5d                   	pop    %ebp
   35179:	c3                   	ret    
   3517a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00035180 <__locale_msgcharset>:
   35180:	55                   	push   %ebp
   35181:	b8 a0 d4 03 00       	mov    $0x3d4a0,%eax
   35186:	89 e5                	mov    %esp,%ebp
   35188:	5d                   	pop    %ebp
   35189:	c3                   	ret    
   3518a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00035190 <__locale_cjk_lang>:
   35190:	55                   	push   %ebp
   35191:	31 c0                	xor    %eax,%eax
   35193:	89 e5                	mov    %esp,%ebp
   35195:	5d                   	pop    %ebp
   35196:	c3                   	ret    
   35197:	89 f6                	mov    %esi,%esi
   35199:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000351a0 <_localeconv_r>:
   351a0:	55                   	push   %ebp
   351a1:	b8 e0 d4 03 00       	mov    $0x3d4e0,%eax
   351a6:	89 e5                	mov    %esp,%ebp
   351a8:	5d                   	pop    %ebp
   351a9:	c3                   	ret    
   351aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000351b0 <setlocale>:
   351b0:	55                   	push   %ebp
   351b1:	89 e5                	mov    %esp,%ebp
   351b3:	83 ec 18             	sub    $0x18,%esp
   351b6:	e8 35 cc ff ff       	call   31df0 <__getreent>
   351bb:	8b 55 0c             	mov    0xc(%ebp),%edx
   351be:	89 54 24 08          	mov    %edx,0x8(%esp)
   351c2:	8b 55 08             	mov    0x8(%ebp),%edx
   351c5:	89 04 24             	mov    %eax,(%esp)
   351c8:	89 54 24 04          	mov    %edx,0x4(%esp)
   351cc:	e8 1f ff ff ff       	call   350f0 <_setlocale_r>
   351d1:	c9                   	leave  
   351d2:	c3                   	ret    
   351d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   351d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000351e0 <localeconv>:
   351e0:	55                   	push   %ebp
   351e1:	89 e5                	mov    %esp,%ebp
   351e3:	83 ec 08             	sub    $0x8,%esp
   351e6:	e8 05 cc ff ff       	call   31df0 <__getreent>
   351eb:	b8 e0 d4 03 00       	mov    $0x3d4e0,%eax
   351f0:	c9                   	leave  
   351f1:	c3                   	ret    
   351f2:	66 90                	xchg   %ax,%ax
   351f4:	66 90                	xchg   %ax,%ax
   351f6:	66 90                	xchg   %ax,%ax
   351f8:	66 90                	xchg   %ax,%ax
   351fa:	66 90                	xchg   %ax,%ax
   351fc:	66 90                	xchg   %ax,%ax
   351fe:	66 90                	xchg   %ax,%ax

00035200 <_malloc_r>:
   35200:	55                   	push   %ebp
   35201:	89 e5                	mov    %esp,%ebp
   35203:	57                   	push   %edi
   35204:	56                   	push   %esi
   35205:	53                   	push   %ebx
   35206:	83 ec 2c             	sub    $0x2c,%esp
   35209:	8b 45 0c             	mov    0xc(%ebp),%eax
   3520c:	8d 50 0b             	lea    0xb(%eax),%edx
   3520f:	83 fa 16             	cmp    $0x16,%edx
   35212:	76 6c                	jbe    35280 <_malloc_r+0x80>
   35214:	89 d7                	mov    %edx,%edi
   35216:	83 e7 f8             	and    $0xfffffff8,%edi
   35219:	89 fe                	mov    %edi,%esi
   3521b:	c1 ee 1f             	shr    $0x1f,%esi
   3521e:	39 c7                	cmp    %eax,%edi
   35220:	8b 45 08             	mov    0x8(%ebp),%eax
   35223:	89 f2                	mov    %esi,%edx
   35225:	72 67                	jb     3528e <_malloc_r+0x8e>
   35227:	84 d2                	test   %dl,%dl
   35229:	75 63                	jne    3528e <_malloc_r+0x8e>
   3522b:	89 04 24             	mov    %eax,(%esp)
   3522e:	e8 ad 07 00 00       	call   359e0 <__malloc_lock>
   35233:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
   35239:	77 65                	ja     352a0 <_malloc_r+0xa0>
   3523b:	89 fa                	mov    %edi,%edx
   3523d:	c1 ea 03             	shr    $0x3,%edx
   35240:	8d 04 d5 40 d5 03 00 	lea    0x3d540(,%edx,8),%eax
   35247:	8b 58 0c             	mov    0xc(%eax),%ebx
   3524a:	39 c3                	cmp    %eax,%ebx
   3524c:	0f 84 3e 05 00 00    	je     35790 <_malloc_r+0x590>
   35252:	8b 43 04             	mov    0x4(%ebx),%eax
   35255:	83 e0 fc             	and    $0xfffffffc,%eax
   35258:	8b 53 0c             	mov    0xc(%ebx),%edx
   3525b:	8b 4b 08             	mov    0x8(%ebx),%ecx
   3525e:	89 51 0c             	mov    %edx,0xc(%ecx)
   35261:	89 4a 08             	mov    %ecx,0x8(%edx)
   35264:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
   35269:	8b 45 08             	mov    0x8(%ebp),%eax
   3526c:	89 04 24             	mov    %eax,(%esp)
   3526f:	e8 7c 07 00 00       	call   359f0 <__malloc_unlock>
   35274:	8d 43 08             	lea    0x8(%ebx),%eax
   35277:	83 c4 2c             	add    $0x2c,%esp
   3527a:	5b                   	pop    %ebx
   3527b:	5e                   	pop    %esi
   3527c:	5f                   	pop    %edi
   3527d:	5d                   	pop    %ebp
   3527e:	c3                   	ret    
   3527f:	90                   	nop
   35280:	bf 10 00 00 00       	mov    $0x10,%edi
   35285:	31 d2                	xor    %edx,%edx
   35287:	39 c7                	cmp    %eax,%edi
   35289:	8b 45 08             	mov    0x8(%ebp),%eax
   3528c:	73 99                	jae    35227 <_malloc_r+0x27>
   3528e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   35294:	83 c4 2c             	add    $0x2c,%esp
   35297:	31 c0                	xor    %eax,%eax
   35299:	5b                   	pop    %ebx
   3529a:	5e                   	pop    %esi
   3529b:	5f                   	pop    %edi
   3529c:	5d                   	pop    %ebp
   3529d:	c3                   	ret    
   3529e:	66 90                	xchg   %ax,%ax
   352a0:	89 fe                	mov    %edi,%esi
   352a2:	c1 ee 09             	shr    $0x9,%esi
   352a5:	85 f6                	test   %esi,%esi
   352a7:	0f 84 ab 01 00 00    	je     35458 <_malloc_r+0x258>
   352ad:	83 fe 04             	cmp    $0x4,%esi
   352b0:	0f 87 8a 03 00 00    	ja     35640 <_malloc_r+0x440>
   352b6:	89 fe                	mov    %edi,%esi
   352b8:	c1 ee 06             	shr    $0x6,%esi
   352bb:	83 c6 38             	add    $0x38,%esi
   352be:	8d 04 36             	lea    (%esi,%esi,1),%eax
   352c1:	8d 0c 85 40 d5 03 00 	lea    0x3d540(,%eax,4),%ecx
   352c8:	8b 59 0c             	mov    0xc(%ecx),%ebx
   352cb:	39 d9                	cmp    %ebx,%ecx
   352cd:	75 18                	jne    352e7 <_malloc_r+0xe7>
   352cf:	eb 28                	jmp    352f9 <_malloc_r+0xf9>
   352d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   352d8:	85 d2                	test   %edx,%edx
   352da:	0f 89 78 ff ff ff    	jns    35258 <_malloc_r+0x58>
   352e0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
   352e3:	39 d9                	cmp    %ebx,%ecx
   352e5:	74 12                	je     352f9 <_malloc_r+0xf9>
   352e7:	8b 43 04             	mov    0x4(%ebx),%eax
   352ea:	83 e0 fc             	and    $0xfffffffc,%eax
   352ed:	89 c2                	mov    %eax,%edx
   352ef:	29 fa                	sub    %edi,%edx
   352f1:	83 fa 0f             	cmp    $0xf,%edx
   352f4:	7e e2                	jle    352d8 <_malloc_r+0xd8>
   352f6:	83 ee 01             	sub    $0x1,%esi
   352f9:	8d 46 01             	lea    0x1(%esi),%eax
   352fc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   352ff:	8b 1d 50 d5 03 00    	mov    0x3d550,%ebx
   35305:	a1 44 d5 03 00       	mov    0x3d544,%eax
   3530a:	81 fb 48 d5 03 00    	cmp    $0x3d548,%ebx
   35310:	74 6b                	je     3537d <_malloc_r+0x17d>
   35312:	8b 73 04             	mov    0x4(%ebx),%esi
   35315:	83 e6 fc             	and    $0xfffffffc,%esi
   35318:	89 f0                	mov    %esi,%eax
   3531a:	29 f8                	sub    %edi,%eax
   3531c:	83 f8 0f             	cmp    $0xf,%eax
   3531f:	0f 8f a3 03 00 00    	jg     356c8 <_malloc_r+0x4c8>
   35325:	85 c0                	test   %eax,%eax
   35327:	c7 05 54 d5 03 00 48 	movl   $0x3d548,0x3d554
   3532e:	d5 03 00 
   35331:	c7 05 50 d5 03 00 48 	movl   $0x3d548,0x3d550
   35338:	d5 03 00 
   3533b:	0f 89 27 01 00 00    	jns    35468 <_malloc_r+0x268>
   35341:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
   35347:	0f 87 1b 03 00 00    	ja     35668 <_malloc_r+0x468>
   3534d:	c1 ee 03             	shr    $0x3,%esi
   35350:	b8 01 00 00 00       	mov    $0x1,%eax
   35355:	89 f1                	mov    %esi,%ecx
   35357:	8d 14 f5 40 d5 03 00 	lea    0x3d540(,%esi,8),%edx
   3535e:	c1 f9 02             	sar    $0x2,%ecx
   35361:	d3 e0                	shl    %cl,%eax
   35363:	8b 4a 08             	mov    0x8(%edx),%ecx
   35366:	0b 05 44 d5 03 00    	or     0x3d544,%eax
   3536c:	89 53 0c             	mov    %edx,0xc(%ebx)
   3536f:	89 4b 08             	mov    %ecx,0x8(%ebx)
   35372:	a3 44 d5 03 00       	mov    %eax,0x3d544
   35377:	89 5a 08             	mov    %ebx,0x8(%edx)
   3537a:	89 59 0c             	mov    %ebx,0xc(%ecx)
   3537d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   35380:	be 01 00 00 00       	mov    $0x1,%esi
   35385:	c1 f9 02             	sar    $0x2,%ecx
   35388:	d3 e6                	shl    %cl,%esi
   3538a:	39 c6                	cmp    %eax,%esi
   3538c:	0f 87 f6 00 00 00    	ja     35488 <_malloc_r+0x288>
   35392:	85 f0                	test   %esi,%eax
   35394:	0f 85 76 03 00 00    	jne    35710 <_malloc_r+0x510>
   3539a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   3539d:	01 f6                	add    %esi,%esi
   3539f:	83 e2 fc             	and    $0xfffffffc,%edx
   353a2:	85 f0                	test   %esi,%eax
   353a4:	8d 4a 04             	lea    0x4(%edx),%ecx
   353a7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   353aa:	0f 85 60 03 00 00    	jne    35710 <_malloc_r+0x510>
   353b0:	89 ca                	mov    %ecx,%edx
   353b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   353b8:	01 f6                	add    %esi,%esi
   353ba:	83 c2 04             	add    $0x4,%edx
   353bd:	85 f0                	test   %esi,%eax
   353bf:	74 f7                	je     353b8 <_malloc_r+0x1b8>
   353c1:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   353c4:	89 75 dc             	mov    %esi,-0x24(%ebp)
   353c7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   353ca:	8d 34 c5 40 d5 03 00 	lea    0x3d540(,%eax,8),%esi
   353d1:	89 f1                	mov    %esi,%ecx
   353d3:	89 45 e0             	mov    %eax,-0x20(%ebp)
   353d6:	8b 59 0c             	mov    0xc(%ecx),%ebx
   353d9:	39 d9                	cmp    %ebx,%ecx
   353db:	75 1e                	jne    353fb <_malloc_r+0x1fb>
   353dd:	e9 36 03 00 00       	jmp    35718 <_malloc_r+0x518>
   353e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   353e8:	85 d2                	test   %edx,%edx
   353ea:	0f 89 c0 03 00 00    	jns    357b0 <_malloc_r+0x5b0>
   353f0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
   353f3:	39 d9                	cmp    %ebx,%ecx
   353f5:	0f 84 1d 03 00 00    	je     35718 <_malloc_r+0x518>
   353fb:	8b 43 04             	mov    0x4(%ebx),%eax
   353fe:	83 e0 fc             	and    $0xfffffffc,%eax
   35401:	89 c2                	mov    %eax,%edx
   35403:	29 fa                	sub    %edi,%edx
   35405:	83 fa 0f             	cmp    $0xf,%edx
   35408:	7e de                	jle    353e8 <_malloc_r+0x1e8>
   3540a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
   3540d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
   35410:	83 cf 01             	or     $0x1,%edi
   35413:	8b 73 08             	mov    0x8(%ebx),%esi
   35416:	89 7b 04             	mov    %edi,0x4(%ebx)
   35419:	89 4e 0c             	mov    %ecx,0xc(%esi)
   3541c:	89 71 08             	mov    %esi,0x8(%ecx)
   3541f:	89 d1                	mov    %edx,%ecx
   35421:	83 c9 01             	or     $0x1,%ecx
   35424:	a3 54 d5 03 00       	mov    %eax,0x3d554
   35429:	a3 50 d5 03 00       	mov    %eax,0x3d550
   3542e:	c7 40 0c 48 d5 03 00 	movl   $0x3d548,0xc(%eax)
   35435:	c7 40 08 48 d5 03 00 	movl   $0x3d548,0x8(%eax)
   3543c:	89 48 04             	mov    %ecx,0x4(%eax)
   3543f:	89 14 10             	mov    %edx,(%eax,%edx,1)
   35442:	8b 45 08             	mov    0x8(%ebp),%eax
   35445:	89 04 24             	mov    %eax,(%esp)
   35448:	e8 a3 05 00 00       	call   359f0 <__malloc_unlock>
   3544d:	8d 43 08             	lea    0x8(%ebx),%eax
   35450:	e9 22 fe ff ff       	jmp    35277 <_malloc_r+0x77>
   35455:	8d 76 00             	lea    0x0(%esi),%esi
   35458:	b8 7e 00 00 00       	mov    $0x7e,%eax
   3545d:	be 3f 00 00 00       	mov    $0x3f,%esi
   35462:	e9 5a fe ff ff       	jmp    352c1 <_malloc_r+0xc1>
   35467:	90                   	nop
   35468:	8b 45 08             	mov    0x8(%ebp),%eax
   3546b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
   35470:	89 04 24             	mov    %eax,(%esp)
   35473:	e8 78 05 00 00       	call   359f0 <__malloc_unlock>
   35478:	83 c4 2c             	add    $0x2c,%esp
   3547b:	8d 43 08             	lea    0x8(%ebx),%eax
   3547e:	5b                   	pop    %ebx
   3547f:	5e                   	pop    %esi
   35480:	5f                   	pop    %edi
   35481:	5d                   	pop    %ebp
   35482:	c3                   	ret    
   35483:	90                   	nop
   35484:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35488:	8b 1d 48 d5 03 00    	mov    0x3d548,%ebx
   3548e:	8b 73 04             	mov    0x4(%ebx),%esi
   35491:	83 e6 fc             	and    $0xfffffffc,%esi
   35494:	39 f7                	cmp    %esi,%edi
   35496:	77 0d                	ja     354a5 <_malloc_r+0x2a5>
   35498:	89 f0                	mov    %esi,%eax
   3549a:	29 f8                	sub    %edi,%eax
   3549c:	83 f8 0f             	cmp    $0xf,%eax
   3549f:	0f 8f 6b 01 00 00    	jg     35610 <_malloc_r+0x410>
   354a5:	8b 0d 50 00 07 00    	mov    0x70050,%ecx
   354ab:	8d 04 33             	lea    (%ebx,%esi,1),%eax
   354ae:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   354b1:	01 f9                	add    %edi,%ecx
   354b3:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
   354b9:	83 c1 10             	add    $0x10,%ecx
   354bc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   354c1:	83 3d 20 d5 03 00 ff 	cmpl   $0xffffffff,0x3d520
   354c8:	0f 44 c1             	cmove  %ecx,%eax
   354cb:	89 45 e0             	mov    %eax,-0x20(%ebp)
   354ce:	89 44 24 04          	mov    %eax,0x4(%esp)
   354d2:	8b 45 08             	mov    0x8(%ebp),%eax
   354d5:	89 04 24             	mov    %eax,(%esp)
   354d8:	e8 03 13 00 00       	call   367e0 <_sbrk_r>
   354dd:	83 f8 ff             	cmp    $0xffffffff,%eax
   354e0:	89 c1                	mov    %eax,%ecx
   354e2:	0f 84 17 03 00 00    	je     357ff <_malloc_r+0x5ff>
   354e8:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
   354eb:	0f 87 02 03 00 00    	ja     357f3 <_malloc_r+0x5f3>
   354f1:	8b 55 e0             	mov    -0x20(%ebp),%edx
   354f4:	03 15 20 00 07 00    	add    0x70020,%edx
   354fa:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
   354fd:	89 15 20 00 07 00    	mov    %edx,0x70020
   35503:	0f 84 a9 03 00 00    	je     358b2 <_malloc_r+0x6b2>
   35509:	83 3d 20 d5 03 00 ff 	cmpl   $0xffffffff,0x3d520
   35510:	0f 84 ca 03 00 00    	je     358e0 <_malloc_r+0x6e0>
   35516:	89 c8                	mov    %ecx,%eax
   35518:	2b 45 e4             	sub    -0x1c(%ebp),%eax
   3551b:	01 d0                	add    %edx,%eax
   3551d:	a3 20 00 07 00       	mov    %eax,0x70020
   35522:	89 c8                	mov    %ecx,%eax
   35524:	ba 00 10 00 00       	mov    $0x1000,%edx
   35529:	83 e0 07             	and    $0x7,%eax
   3552c:	74 0c                	je     3553a <_malloc_r+0x33a>
   3552e:	29 c1                	sub    %eax,%ecx
   35530:	ba 08 10 00 00       	mov    $0x1008,%edx
   35535:	8d 49 08             	lea    0x8(%ecx),%ecx
   35538:	29 c2                	sub    %eax,%edx
   3553a:	8b 45 e0             	mov    -0x20(%ebp),%eax
   3553d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   35540:	01 c8                	add    %ecx,%eax
   35542:	25 ff 0f 00 00       	and    $0xfff,%eax
   35547:	29 c2                	sub    %eax,%edx
   35549:	8b 45 08             	mov    0x8(%ebp),%eax
   3554c:	89 54 24 04          	mov    %edx,0x4(%esp)
   35550:	89 55 e0             	mov    %edx,-0x20(%ebp)
   35553:	89 04 24             	mov    %eax,(%esp)
   35556:	e8 85 12 00 00       	call   367e0 <_sbrk_r>
   3555b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   3555e:	83 f8 ff             	cmp    $0xffffffff,%eax
   35561:	0f 84 6d 03 00 00    	je     358d4 <_malloc_r+0x6d4>
   35567:	8b 55 e0             	mov    -0x20(%ebp),%edx
   3556a:	29 c8                	sub    %ecx,%eax
   3556c:	01 d0                	add    %edx,%eax
   3556e:	83 c8 01             	or     $0x1,%eax
   35571:	03 15 20 00 07 00    	add    0x70020,%edx
   35577:	81 fb 40 d5 03 00    	cmp    $0x3d540,%ebx
   3557d:	89 0d 48 d5 03 00    	mov    %ecx,0x3d548
   35583:	89 41 04             	mov    %eax,0x4(%ecx)
   35586:	89 15 20 00 07 00    	mov    %edx,0x70020
   3558c:	0f 84 f2 02 00 00    	je     35884 <_malloc_r+0x684>
   35592:	83 fe 0f             	cmp    $0xf,%esi
   35595:	0f 86 8d 02 00 00    	jbe    35828 <_malloc_r+0x628>
   3559b:	8b 43 04             	mov    0x4(%ebx),%eax
   3559e:	83 ee 0c             	sub    $0xc,%esi
   355a1:	83 e6 f8             	and    $0xfffffff8,%esi
   355a4:	83 e0 01             	and    $0x1,%eax
   355a7:	09 f0                	or     %esi,%eax
   355a9:	83 fe 0f             	cmp    $0xf,%esi
   355ac:	89 43 04             	mov    %eax,0x4(%ebx)
   355af:	a1 48 d5 03 00       	mov    0x3d548,%eax
   355b4:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
   355bb:	00 
   355bc:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
   355c3:	00 
   355c4:	0f 87 a2 02 00 00    	ja     3586c <_malloc_r+0x66c>
   355ca:	3b 15 4c 00 07 00    	cmp    0x7004c,%edx
   355d0:	76 06                	jbe    355d8 <_malloc_r+0x3d8>
   355d2:	89 15 4c 00 07 00    	mov    %edx,0x7004c
   355d8:	3b 15 48 00 07 00    	cmp    0x70048,%edx
   355de:	76 06                	jbe    355e6 <_malloc_r+0x3e6>
   355e0:	89 15 48 00 07 00    	mov    %edx,0x70048
   355e6:	8b 50 04             	mov    0x4(%eax),%edx
   355e9:	89 c3                	mov    %eax,%ebx
   355eb:	83 e2 fc             	and    $0xfffffffc,%edx
   355ee:	89 d0                	mov    %edx,%eax
   355f0:	29 f8                	sub    %edi,%eax
   355f2:	39 d7                	cmp    %edx,%edi
   355f4:	77 05                	ja     355fb <_malloc_r+0x3fb>
   355f6:	83 f8 0f             	cmp    $0xf,%eax
   355f9:	7f 15                	jg     35610 <_malloc_r+0x410>
   355fb:	8b 45 08             	mov    0x8(%ebp),%eax
   355fe:	89 04 24             	mov    %eax,(%esp)
   35601:	e8 ea 03 00 00       	call   359f0 <__malloc_unlock>
   35606:	31 c0                	xor    %eax,%eax
   35608:	e9 6a fc ff ff       	jmp    35277 <_malloc_r+0x77>
   3560d:	8d 76 00             	lea    0x0(%esi),%esi
   35610:	89 fa                	mov    %edi,%edx
   35612:	83 c8 01             	or     $0x1,%eax
   35615:	83 ca 01             	or     $0x1,%edx
   35618:	89 53 04             	mov    %edx,0x4(%ebx)
   3561b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
   3561e:	89 15 48 d5 03 00    	mov    %edx,0x3d548
   35624:	89 42 04             	mov    %eax,0x4(%edx)
   35627:	8b 45 08             	mov    0x8(%ebp),%eax
   3562a:	89 04 24             	mov    %eax,(%esp)
   3562d:	e8 be 03 00 00       	call   359f0 <__malloc_unlock>
   35632:	83 c4 2c             	add    $0x2c,%esp
   35635:	8d 43 08             	lea    0x8(%ebx),%eax
   35638:	5b                   	pop    %ebx
   35639:	5e                   	pop    %esi
   3563a:	5f                   	pop    %edi
   3563b:	5d                   	pop    %ebp
   3563c:	c3                   	ret    
   3563d:	8d 76 00             	lea    0x0(%esi),%esi
   35640:	83 fe 14             	cmp    $0x14,%esi
   35643:	0f 86 8f 01 00 00    	jbe    357d8 <_malloc_r+0x5d8>
   35649:	83 fe 54             	cmp    $0x54,%esi
   3564c:	0f 87 be 01 00 00    	ja     35810 <_malloc_r+0x610>
   35652:	89 fe                	mov    %edi,%esi
   35654:	c1 ee 0c             	shr    $0xc,%esi
   35657:	83 c6 6e             	add    $0x6e,%esi
   3565a:	8d 04 36             	lea    (%esi,%esi,1),%eax
   3565d:	e9 5f fc ff ff       	jmp    352c1 <_malloc_r+0xc1>
   35662:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35668:	89 f1                	mov    %esi,%ecx
   3566a:	c1 e9 09             	shr    $0x9,%ecx
   3566d:	83 f9 04             	cmp    $0x4,%ecx
   35670:	0f 86 6d 01 00 00    	jbe    357e3 <_malloc_r+0x5e3>
   35676:	83 f9 14             	cmp    $0x14,%ecx
   35679:	0f 87 0f 02 00 00    	ja     3588e <_malloc_r+0x68e>
   3567f:	83 c1 5b             	add    $0x5b,%ecx
   35682:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   35685:	8d 04 85 40 d5 03 00 	lea    0x3d540(,%eax,4),%eax
   3568c:	8b 50 08             	mov    0x8(%eax),%edx
   3568f:	39 c2                	cmp    %eax,%edx
   35691:	0f 84 a1 01 00 00    	je     35838 <_malloc_r+0x638>
   35697:	90                   	nop
   35698:	8b 4a 04             	mov    0x4(%edx),%ecx
   3569b:	83 e1 fc             	and    $0xfffffffc,%ecx
   3569e:	39 ce                	cmp    %ecx,%esi
   356a0:	73 07                	jae    356a9 <_malloc_r+0x4a9>
   356a2:	8b 52 08             	mov    0x8(%edx),%edx
   356a5:	39 d0                	cmp    %edx,%eax
   356a7:	75 ef                	jne    35698 <_malloc_r+0x498>
   356a9:	8b 4a 0c             	mov    0xc(%edx),%ecx
   356ac:	a1 44 d5 03 00       	mov    0x3d544,%eax
   356b1:	89 4b 0c             	mov    %ecx,0xc(%ebx)
   356b4:	89 53 08             	mov    %edx,0x8(%ebx)
   356b7:	89 59 08             	mov    %ebx,0x8(%ecx)
   356ba:	89 5a 0c             	mov    %ebx,0xc(%edx)
   356bd:	e9 bb fc ff ff       	jmp    3537d <_malloc_r+0x17d>
   356c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   356c8:	89 c1                	mov    %eax,%ecx
   356ca:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
   356cd:	83 c9 01             	or     $0x1,%ecx
   356d0:	83 cf 01             	or     $0x1,%edi
   356d3:	89 7b 04             	mov    %edi,0x4(%ebx)
   356d6:	89 15 54 d5 03 00    	mov    %edx,0x3d554
   356dc:	89 15 50 d5 03 00    	mov    %edx,0x3d550
   356e2:	c7 42 0c 48 d5 03 00 	movl   $0x3d548,0xc(%edx)
   356e9:	c7 42 08 48 d5 03 00 	movl   $0x3d548,0x8(%edx)
   356f0:	89 4a 04             	mov    %ecx,0x4(%edx)
   356f3:	89 04 02             	mov    %eax,(%edx,%eax,1)
   356f6:	8b 45 08             	mov    0x8(%ebp),%eax
   356f9:	89 04 24             	mov    %eax,(%esp)
   356fc:	e8 ef 02 00 00       	call   359f0 <__malloc_unlock>
   35701:	8d 43 08             	lea    0x8(%ebx),%eax
   35704:	e9 6e fb ff ff       	jmp    35277 <_malloc_r+0x77>
   35709:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35710:	89 75 dc             	mov    %esi,-0x24(%ebp)
   35713:	e9 af fc ff ff       	jmp    353c7 <_malloc_r+0x1c7>
   35718:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
   3571c:	83 c1 08             	add    $0x8,%ecx
   3571f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
   35723:	0f 85 ad fc ff ff    	jne    353d6 <_malloc_r+0x1d6>
   35729:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3572c:	eb 12                	jmp    35740 <_malloc_r+0x540>
   3572e:	66 90                	xchg   %ax,%ax
   35730:	8d 56 f8             	lea    -0x8(%esi),%edx
   35733:	8b 36                	mov    (%esi),%esi
   35735:	83 e8 01             	sub    $0x1,%eax
   35738:	39 d6                	cmp    %edx,%esi
   3573a:	0f 85 ea 01 00 00    	jne    3592a <_malloc_r+0x72a>
   35740:	a8 03                	test   $0x3,%al
   35742:	75 ec                	jne    35730 <_malloc_r+0x530>
   35744:	8b 45 dc             	mov    -0x24(%ebp),%eax
   35747:	f7 d0                	not    %eax
   35749:	23 05 44 d5 03 00    	and    0x3d544,%eax
   3574f:	a3 44 d5 03 00       	mov    %eax,0x3d544
   35754:	d1 65 dc             	shll   -0x24(%ebp)
   35757:	8b 55 dc             	mov    -0x24(%ebp),%edx
   3575a:	39 c2                	cmp    %eax,%edx
   3575c:	0f 87 26 fd ff ff    	ja     35488 <_malloc_r+0x288>
   35762:	85 d2                	test   %edx,%edx
   35764:	0f 84 1e fd ff ff    	je     35488 <_malloc_r+0x288>
   3576a:	85 c2                	test   %eax,%edx
   3576c:	0f 85 c2 01 00 00    	jne    35934 <_malloc_r+0x734>
   35772:	8b 75 e0             	mov    -0x20(%ebp),%esi
   35775:	89 f1                	mov    %esi,%ecx
   35777:	01 d2                	add    %edx,%edx
   35779:	83 c1 04             	add    $0x4,%ecx
   3577c:	85 d0                	test   %edx,%eax
   3577e:	74 f7                	je     35777 <_malloc_r+0x577>
   35780:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   35783:	89 55 dc             	mov    %edx,-0x24(%ebp)
   35786:	e9 3c fc ff ff       	jmp    353c7 <_malloc_r+0x1c7>
   3578b:	90                   	nop
   3578c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35790:	8d 43 08             	lea    0x8(%ebx),%eax
   35793:	8b 5b 14             	mov    0x14(%ebx),%ebx
   35796:	39 d8                	cmp    %ebx,%eax
   35798:	0f 85 b4 fa ff ff    	jne    35252 <_malloc_r+0x52>
   3579e:	8d 42 02             	lea    0x2(%edx),%eax
   357a1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   357a4:	e9 56 fb ff ff       	jmp    352ff <_malloc_r+0xff>
   357a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   357b0:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
   357b5:	8b 53 08             	mov    0x8(%ebx),%edx
   357b8:	8b 43 0c             	mov    0xc(%ebx),%eax
   357bb:	89 42 0c             	mov    %eax,0xc(%edx)
   357be:	89 50 08             	mov    %edx,0x8(%eax)
   357c1:	8b 45 08             	mov    0x8(%ebp),%eax
   357c4:	89 04 24             	mov    %eax,(%esp)
   357c7:	e8 24 02 00 00       	call   359f0 <__malloc_unlock>
   357cc:	8d 43 08             	lea    0x8(%ebx),%eax
   357cf:	e9 a3 fa ff ff       	jmp    35277 <_malloc_r+0x77>
   357d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   357d8:	83 c6 5b             	add    $0x5b,%esi
   357db:	8d 04 36             	lea    (%esi,%esi,1),%eax
   357de:	e9 de fa ff ff       	jmp    352c1 <_malloc_r+0xc1>
   357e3:	89 f1                	mov    %esi,%ecx
   357e5:	c1 e9 06             	shr    $0x6,%ecx
   357e8:	83 c1 38             	add    $0x38,%ecx
   357eb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   357ee:	e9 92 fe ff ff       	jmp    35685 <_malloc_r+0x485>
   357f3:	81 fb 40 d5 03 00    	cmp    $0x3d540,%ebx
   357f9:	0f 84 f2 fc ff ff    	je     354f1 <_malloc_r+0x2f1>
   357ff:	8b 1d 48 d5 03 00    	mov    0x3d548,%ebx
   35805:	8b 53 04             	mov    0x4(%ebx),%edx
   35808:	83 e2 fc             	and    $0xfffffffc,%edx
   3580b:	e9 de fd ff ff       	jmp    355ee <_malloc_r+0x3ee>
   35810:	81 fe 54 01 00 00    	cmp    $0x154,%esi
   35816:	77 3c                	ja     35854 <_malloc_r+0x654>
   35818:	89 fe                	mov    %edi,%esi
   3581a:	c1 ee 0f             	shr    $0xf,%esi
   3581d:	83 c6 77             	add    $0x77,%esi
   35820:	8d 04 36             	lea    (%esi,%esi,1),%eax
   35823:	e9 99 fa ff ff       	jmp    352c1 <_malloc_r+0xc1>
   35828:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
   3582f:	89 cb                	mov    %ecx,%ebx
   35831:	31 d2                	xor    %edx,%edx
   35833:	e9 b6 fd ff ff       	jmp    355ee <_malloc_r+0x3ee>
   35838:	c1 f9 02             	sar    $0x2,%ecx
   3583b:	b8 01 00 00 00       	mov    $0x1,%eax
   35840:	d3 e0                	shl    %cl,%eax
   35842:	89 d1                	mov    %edx,%ecx
   35844:	0b 05 44 d5 03 00    	or     0x3d544,%eax
   3584a:	a3 44 d5 03 00       	mov    %eax,0x3d544
   3584f:	e9 5d fe ff ff       	jmp    356b1 <_malloc_r+0x4b1>
   35854:	81 fe 54 05 00 00    	cmp    $0x554,%esi
   3585a:	77 47                	ja     358a3 <_malloc_r+0x6a3>
   3585c:	89 fe                	mov    %edi,%esi
   3585e:	c1 ee 12             	shr    $0x12,%esi
   35861:	83 c6 7c             	add    $0x7c,%esi
   35864:	8d 04 36             	lea    (%esi,%esi,1),%eax
   35867:	e9 55 fa ff ff       	jmp    352c1 <_malloc_r+0xc1>
   3586c:	8b 45 08             	mov    0x8(%ebp),%eax
   3586f:	83 c3 08             	add    $0x8,%ebx
   35872:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   35876:	89 04 24             	mov    %eax,(%esp)
   35879:	e8 c2 22 00 00       	call   37b40 <_free_r>
   3587e:	8b 15 20 00 07 00    	mov    0x70020,%edx
   35884:	a1 48 d5 03 00       	mov    0x3d548,%eax
   35889:	e9 3c fd ff ff       	jmp    355ca <_malloc_r+0x3ca>
   3588e:	83 f9 54             	cmp    $0x54,%ecx
   35891:	77 58                	ja     358eb <_malloc_r+0x6eb>
   35893:	89 f1                	mov    %esi,%ecx
   35895:	c1 e9 0c             	shr    $0xc,%ecx
   35898:	83 c1 6e             	add    $0x6e,%ecx
   3589b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   3589e:	e9 e2 fd ff ff       	jmp    35685 <_malloc_r+0x485>
   358a3:	b8 fc 00 00 00       	mov    $0xfc,%eax
   358a8:	be 7e 00 00 00       	mov    $0x7e,%esi
   358ad:	e9 0f fa ff ff       	jmp    352c1 <_malloc_r+0xc1>
   358b2:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
   358b9:	0f 85 4a fc ff ff    	jne    35509 <_malloc_r+0x309>
   358bf:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   358c2:	a1 48 d5 03 00       	mov    0x3d548,%eax
   358c7:	01 f1                	add    %esi,%ecx
   358c9:	83 c9 01             	or     $0x1,%ecx
   358cc:	89 48 04             	mov    %ecx,0x4(%eax)
   358cf:	e9 f6 fc ff ff       	jmp    355ca <_malloc_r+0x3ca>
   358d4:	b8 01 00 00 00       	mov    $0x1,%eax
   358d9:	31 d2                	xor    %edx,%edx
   358db:	e9 91 fc ff ff       	jmp    35571 <_malloc_r+0x371>
   358e0:	89 0d 20 d5 03 00    	mov    %ecx,0x3d520
   358e6:	e9 37 fc ff ff       	jmp    35522 <_malloc_r+0x322>
   358eb:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
   358f1:	77 10                	ja     35903 <_malloc_r+0x703>
   358f3:	89 f1                	mov    %esi,%ecx
   358f5:	c1 e9 0f             	shr    $0xf,%ecx
   358f8:	83 c1 77             	add    $0x77,%ecx
   358fb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   358fe:	e9 82 fd ff ff       	jmp    35685 <_malloc_r+0x485>
   35903:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
   35909:	77 10                	ja     3591b <_malloc_r+0x71b>
   3590b:	89 f1                	mov    %esi,%ecx
   3590d:	c1 e9 12             	shr    $0x12,%ecx
   35910:	83 c1 7c             	add    $0x7c,%ecx
   35913:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   35916:	e9 6a fd ff ff       	jmp    35685 <_malloc_r+0x485>
   3591b:	b8 fc 00 00 00       	mov    $0xfc,%eax
   35920:	b9 7e 00 00 00       	mov    $0x7e,%ecx
   35925:	e9 5b fd ff ff       	jmp    35685 <_malloc_r+0x485>
   3592a:	a1 44 d5 03 00       	mov    0x3d544,%eax
   3592f:	e9 20 fe ff ff       	jmp    35754 <_malloc_r+0x554>
   35934:	8b 45 e0             	mov    -0x20(%ebp),%eax
   35937:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   3593a:	e9 88 fa ff ff       	jmp    353c7 <_malloc_r+0x1c7>
   3593f:	90                   	nop

00035940 <memchr>:
   35940:	55                   	push   %ebp
   35941:	89 e5                	mov    %esp,%ebp
   35943:	57                   	push   %edi
   35944:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
   35948:	8b 4d 10             	mov    0x10(%ebp),%ecx
   3594b:	8b 7d 08             	mov    0x8(%ebp),%edi
   3594e:	31 d2                	xor    %edx,%edx
   35950:	85 c9                	test   %ecx,%ecx
   35952:	74 79                	je     359cd <L20>
   35954:	f7 c7 03 00 00 00    	test   $0x3,%edi
   3595a:	74 28                	je     35984 <L5>
   3595c:	3a 07                	cmp    (%edi),%al
   3595e:	74 6a                	je     359ca <L15>
   35960:	47                   	inc    %edi
   35961:	49                   	dec    %ecx
   35962:	74 69                	je     359cd <L20>
   35964:	f7 c7 03 00 00 00    	test   $0x3,%edi
   3596a:	74 18                	je     35984 <L5>
   3596c:	3a 07                	cmp    (%edi),%al
   3596e:	74 5a                	je     359ca <L15>
   35970:	47                   	inc    %edi
   35971:	49                   	dec    %ecx
   35972:	74 59                	je     359cd <L20>
   35974:	f7 c7 03 00 00 00    	test   $0x3,%edi
   3597a:	74 08                	je     35984 <L5>
   3597c:	3a 07                	cmp    (%edi),%al
   3597e:	74 4a                	je     359ca <L15>
   35980:	47                   	inc    %edi
   35981:	49                   	dec    %ecx
   35982:	74 49                	je     359cd <L20>

00035984 <L5>:
   35984:	88 c4                	mov    %al,%ah
   35986:	89 c2                	mov    %eax,%edx
   35988:	c1 e2 10             	shl    $0x10,%edx
   3598b:	09 d0                	or     %edx,%eax
   3598d:	53                   	push   %ebx
   3598e:	66 90                	xchg   %ax,%ax

00035990 <L8>:
   35990:	83 e9 04             	sub    $0x4,%ecx
   35993:	72 1c                	jb     359b1 <L9>
   35995:	8b 17                	mov    (%edi),%edx
   35997:	83 c7 04             	add    $0x4,%edi
   3599a:	31 c2                	xor    %eax,%edx
   3599c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
   359a2:	f7 d2                	not    %edx
   359a4:	21 d3                	and    %edx,%ebx
   359a6:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
   359ac:	74 e2                	je     35990 <L8>
   359ae:	83 ef 04             	sub    $0x4,%edi

000359b1 <L9>:
   359b1:	5b                   	pop    %ebx
   359b2:	31 d2                	xor    %edx,%edx
   359b4:	83 c1 04             	add    $0x4,%ecx
   359b7:	74 14                	je     359cd <L20>
   359b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000359c0 <L10>:
   359c0:	3a 07                	cmp    (%edi),%al
   359c2:	74 06                	je     359ca <L15>
   359c4:	47                   	inc    %edi
   359c5:	49                   	dec    %ecx
   359c6:	75 f8                	jne    359c0 <L10>
   359c8:	31 ff                	xor    %edi,%edi

000359ca <L15>:
   359ca:	4a                   	dec    %edx
   359cb:	21 fa                	and    %edi,%edx

000359cd <L20>:
   359cd:	89 d0                	mov    %edx,%eax
   359cf:	8d 65 fc             	lea    -0x4(%ebp),%esp
   359d2:	5f                   	pop    %edi
   359d3:	c9                   	leave  
   359d4:	c3                   	ret    
   359d5:	66 90                	xchg   %ax,%ax
   359d7:	66 90                	xchg   %ax,%ax
   359d9:	66 90                	xchg   %ax,%ax
   359db:	66 90                	xchg   %ax,%ax
   359dd:	66 90                	xchg   %ax,%ax
   359df:	90                   	nop

000359e0 <__malloc_lock>:
   359e0:	55                   	push   %ebp
   359e1:	89 e5                	mov    %esp,%ebp
   359e3:	5d                   	pop    %ebp
   359e4:	c3                   	ret    
   359e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   359e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000359f0 <__malloc_unlock>:
   359f0:	55                   	push   %ebp
   359f1:	89 e5                	mov    %esp,%ebp
   359f3:	5d                   	pop    %ebp
   359f4:	c3                   	ret    
   359f5:	66 90                	xchg   %ax,%ax
   359f7:	66 90                	xchg   %ax,%ax
   359f9:	66 90                	xchg   %ax,%ax
   359fb:	66 90                	xchg   %ax,%ax
   359fd:	66 90                	xchg   %ax,%ax
   359ff:	90                   	nop

00035a00 <_Balloc>:
   35a00:	55                   	push   %ebp
   35a01:	89 e5                	mov    %esp,%ebp
   35a03:	57                   	push   %edi
   35a04:	56                   	push   %esi
   35a05:	53                   	push   %ebx
   35a06:	83 ec 1c             	sub    $0x1c,%esp
   35a09:	8b 75 08             	mov    0x8(%ebp),%esi
   35a0c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   35a0f:	8b 46 4c             	mov    0x4c(%esi),%eax
   35a12:	85 c0                	test   %eax,%eax
   35a14:	74 2a                	je     35a40 <_Balloc+0x40>
   35a16:	8d 14 98             	lea    (%eax,%ebx,4),%edx
   35a19:	8b 02                	mov    (%edx),%eax
   35a1b:	85 c0                	test   %eax,%eax
   35a1d:	74 49                	je     35a68 <_Balloc+0x68>
   35a1f:	8b 08                	mov    (%eax),%ecx
   35a21:	89 0a                	mov    %ecx,(%edx)
   35a23:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
   35a2a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
   35a31:	83 c4 1c             	add    $0x1c,%esp
   35a34:	5b                   	pop    %ebx
   35a35:	5e                   	pop    %esi
   35a36:	5f                   	pop    %edi
   35a37:	5d                   	pop    %ebp
   35a38:	c3                   	ret    
   35a39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35a40:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
   35a47:	00 
   35a48:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
   35a4f:	00 
   35a50:	89 34 24             	mov    %esi,(%esp)
   35a53:	e8 38 1f 00 00       	call   37990 <_calloc_r>
   35a58:	85 c0                	test   %eax,%eax
   35a5a:	89 46 4c             	mov    %eax,0x4c(%esi)
   35a5d:	75 b7                	jne    35a16 <_Balloc+0x16>
   35a5f:	31 c0                	xor    %eax,%eax
   35a61:	eb ce                	jmp    35a31 <_Balloc+0x31>
   35a63:	90                   	nop
   35a64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35a68:	89 d9                	mov    %ebx,%ecx
   35a6a:	bf 01 00 00 00       	mov    $0x1,%edi
   35a6f:	d3 e7                	shl    %cl,%edi
   35a71:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
   35a78:	89 44 24 08          	mov    %eax,0x8(%esp)
   35a7c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   35a83:	00 
   35a84:	89 34 24             	mov    %esi,(%esp)
   35a87:	e8 04 1f 00 00       	call   37990 <_calloc_r>
   35a8c:	85 c0                	test   %eax,%eax
   35a8e:	74 cf                	je     35a5f <_Balloc+0x5f>
   35a90:	89 58 04             	mov    %ebx,0x4(%eax)
   35a93:	89 78 08             	mov    %edi,0x8(%eax)
   35a96:	eb 8b                	jmp    35a23 <_Balloc+0x23>
   35a98:	90                   	nop
   35a99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035aa0 <_Bfree>:
   35aa0:	55                   	push   %ebp
   35aa1:	89 e5                	mov    %esp,%ebp
   35aa3:	8b 45 0c             	mov    0xc(%ebp),%eax
   35aa6:	85 c0                	test   %eax,%eax
   35aa8:	74 12                	je     35abc <_Bfree+0x1c>
   35aaa:	8b 55 08             	mov    0x8(%ebp),%edx
   35aad:	8b 48 04             	mov    0x4(%eax),%ecx
   35ab0:	8b 52 4c             	mov    0x4c(%edx),%edx
   35ab3:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
   35ab6:	8b 0a                	mov    (%edx),%ecx
   35ab8:	89 08                	mov    %ecx,(%eax)
   35aba:	89 02                	mov    %eax,(%edx)
   35abc:	5d                   	pop    %ebp
   35abd:	c3                   	ret    
   35abe:	66 90                	xchg   %ax,%ax

00035ac0 <__multadd>:
   35ac0:	55                   	push   %ebp
   35ac1:	89 e5                	mov    %esp,%ebp
   35ac3:	57                   	push   %edi
   35ac4:	56                   	push   %esi
   35ac5:	53                   	push   %ebx
   35ac6:	83 ec 2c             	sub    $0x2c,%esp
   35ac9:	8b 45 0c             	mov    0xc(%ebp),%eax
   35acc:	8b 5d 14             	mov    0x14(%ebp),%ebx
   35acf:	8b 40 10             	mov    0x10(%eax),%eax
   35ad2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   35ad5:	8b 45 0c             	mov    0xc(%ebp),%eax
   35ad8:	8d 78 14             	lea    0x14(%eax),%edi
   35adb:	31 c0                	xor    %eax,%eax
   35add:	8d 76 00             	lea    0x0(%esi),%esi
   35ae0:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
   35ae3:	0f b7 d1             	movzwl %cx,%edx
   35ae6:	0f af 55 10          	imul   0x10(%ebp),%edx
   35aea:	c1 e9 10             	shr    $0x10,%ecx
   35aed:	0f af 4d 10          	imul   0x10(%ebp),%ecx
   35af1:	01 da                	add    %ebx,%edx
   35af3:	89 d3                	mov    %edx,%ebx
   35af5:	0f b7 d2             	movzwl %dx,%edx
   35af8:	c1 eb 10             	shr    $0x10,%ebx
   35afb:	01 d9                	add    %ebx,%ecx
   35afd:	89 ce                	mov    %ecx,%esi
   35aff:	c1 e1 10             	shl    $0x10,%ecx
   35b02:	01 d1                	add    %edx,%ecx
   35b04:	c1 ee 10             	shr    $0x10,%esi
   35b07:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
   35b0a:	83 c0 01             	add    $0x1,%eax
   35b0d:	89 f3                	mov    %esi,%ebx
   35b0f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
   35b12:	7f cc                	jg     35ae0 <__multadd+0x20>
   35b14:	85 f6                	test   %esi,%esi
   35b16:	74 1b                	je     35b33 <__multadd+0x73>
   35b18:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b1b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
   35b1e:	3b 78 08             	cmp    0x8(%eax),%edi
   35b21:	7d 1d                	jge    35b40 <__multadd+0x80>
   35b23:	8b 7d 0c             	mov    0xc(%ebp),%edi
   35b26:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   35b29:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
   35b2d:	83 c0 01             	add    $0x1,%eax
   35b30:	89 47 10             	mov    %eax,0x10(%edi)
   35b33:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b36:	83 c4 2c             	add    $0x2c,%esp
   35b39:	5b                   	pop    %ebx
   35b3a:	5e                   	pop    %esi
   35b3b:	5f                   	pop    %edi
   35b3c:	5d                   	pop    %ebp
   35b3d:	c3                   	ret    
   35b3e:	66 90                	xchg   %ax,%ax
   35b40:	8b 40 04             	mov    0x4(%eax),%eax
   35b43:	89 45 e0             	mov    %eax,-0x20(%ebp)
   35b46:	83 c0 01             	add    $0x1,%eax
   35b49:	89 44 24 04          	mov    %eax,0x4(%esp)
   35b4d:	8b 45 08             	mov    0x8(%ebp),%eax
   35b50:	89 04 24             	mov    %eax,(%esp)
   35b53:	e8 a8 fe ff ff       	call   35a00 <_Balloc>
   35b58:	89 c3                	mov    %eax,%ebx
   35b5a:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b5d:	8b 40 10             	mov    0x10(%eax),%eax
   35b60:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
   35b67:	89 44 24 08          	mov    %eax,0x8(%esp)
   35b6b:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b6e:	83 c0 0c             	add    $0xc,%eax
   35b71:	89 44 24 04          	mov    %eax,0x4(%esp)
   35b75:	8d 43 0c             	lea    0xc(%ebx),%eax
   35b78:	89 04 24             	mov    %eax,(%esp)
   35b7b:	e8 c4 c0 ff ff       	call   31c44 <memcpy>
   35b80:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b83:	8b 7d 0c             	mov    0xc(%ebp),%edi
   35b86:	89 5d 0c             	mov    %ebx,0xc(%ebp)
   35b89:	8b 50 04             	mov    0x4(%eax),%edx
   35b8c:	8b 45 08             	mov    0x8(%ebp),%eax
   35b8f:	8b 40 4c             	mov    0x4c(%eax),%eax
   35b92:	8d 04 90             	lea    (%eax,%edx,4),%eax
   35b95:	8b 10                	mov    (%eax),%edx
   35b97:	89 17                	mov    %edx,(%edi)
   35b99:	89 38                	mov    %edi,(%eax)
   35b9b:	eb 86                	jmp    35b23 <__multadd+0x63>
   35b9d:	8d 76 00             	lea    0x0(%esi),%esi

00035ba0 <__s2b>:
   35ba0:	55                   	push   %ebp
   35ba1:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
   35ba6:	89 e5                	mov    %esp,%ebp
   35ba8:	57                   	push   %edi
   35ba9:	56                   	push   %esi
   35baa:	53                   	push   %ebx
   35bab:	83 ec 2c             	sub    $0x2c,%esp
   35bae:	8b 45 14             	mov    0x14(%ebp),%eax
   35bb1:	8b 5d 08             	mov    0x8(%ebp),%ebx
   35bb4:	8b 75 0c             	mov    0xc(%ebp),%esi
   35bb7:	8d 48 08             	lea    0x8(%eax),%ecx
   35bba:	89 c8                	mov    %ecx,%eax
   35bbc:	f7 ea                	imul   %edx
   35bbe:	c1 f9 1f             	sar    $0x1f,%ecx
   35bc1:	d1 fa                	sar    %edx
   35bc3:	29 ca                	sub    %ecx,%edx
   35bc5:	83 fa 01             	cmp    $0x1,%edx
   35bc8:	0f 8e be 00 00 00    	jle    35c8c <__s2b+0xec>
   35bce:	b8 01 00 00 00       	mov    $0x1,%eax
   35bd3:	31 c9                	xor    %ecx,%ecx
   35bd5:	8d 76 00             	lea    0x0(%esi),%esi
   35bd8:	01 c0                	add    %eax,%eax
   35bda:	83 c1 01             	add    $0x1,%ecx
   35bdd:	39 c2                	cmp    %eax,%edx
   35bdf:	7f f7                	jg     35bd8 <__s2b+0x38>
   35be1:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   35be5:	89 1c 24             	mov    %ebx,(%esp)
   35be8:	e8 13 fe ff ff       	call   35a00 <_Balloc>
   35bed:	8b 55 18             	mov    0x18(%ebp),%edx
   35bf0:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
   35bf4:	89 50 14             	mov    %edx,0x14(%eax)
   35bf7:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   35bfe:	0f 8e 7c 00 00 00    	jle    35c80 <__s2b+0xe0>
   35c04:	8d 4e 09             	lea    0x9(%esi),%ecx
   35c07:	03 75 10             	add    0x10(%ebp),%esi
   35c0a:	89 cf                	mov    %ecx,%edi
   35c0c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   35c0f:	90                   	nop
   35c10:	83 c7 01             	add    $0x1,%edi
   35c13:	0f be 57 ff          	movsbl -0x1(%edi),%edx
   35c17:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   35c1e:	00 
   35c1f:	89 44 24 04          	mov    %eax,0x4(%esp)
   35c23:	89 1c 24             	mov    %ebx,(%esp)
   35c26:	83 ea 30             	sub    $0x30,%edx
   35c29:	89 54 24 0c          	mov    %edx,0xc(%esp)
   35c2d:	e8 8e fe ff ff       	call   35ac0 <__multadd>
   35c32:	39 f7                	cmp    %esi,%edi
   35c34:	75 da                	jne    35c10 <__s2b+0x70>
   35c36:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   35c39:	8b 7d 10             	mov    0x10(%ebp),%edi
   35c3c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
   35c40:	8b 4d 10             	mov    0x10(%ebp),%ecx
   35c43:	39 4d 14             	cmp    %ecx,0x14(%ebp)
   35c46:	7e 2e                	jle    35c76 <__s2b+0xd6>
   35c48:	8b 7d 14             	mov    0x14(%ebp),%edi
   35c4b:	29 cf                	sub    %ecx,%edi
   35c4d:	01 f7                	add    %esi,%edi
   35c4f:	90                   	nop
   35c50:	83 c6 01             	add    $0x1,%esi
   35c53:	0f be 56 ff          	movsbl -0x1(%esi),%edx
   35c57:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   35c5e:	00 
   35c5f:	89 44 24 04          	mov    %eax,0x4(%esp)
   35c63:	89 1c 24             	mov    %ebx,(%esp)
   35c66:	83 ea 30             	sub    $0x30,%edx
   35c69:	89 54 24 0c          	mov    %edx,0xc(%esp)
   35c6d:	e8 4e fe ff ff       	call   35ac0 <__multadd>
   35c72:	39 fe                	cmp    %edi,%esi
   35c74:	75 da                	jne    35c50 <__s2b+0xb0>
   35c76:	83 c4 2c             	add    $0x2c,%esp
   35c79:	5b                   	pop    %ebx
   35c7a:	5e                   	pop    %esi
   35c7b:	5f                   	pop    %edi
   35c7c:	5d                   	pop    %ebp
   35c7d:	c3                   	ret    
   35c7e:	66 90                	xchg   %ax,%ax
   35c80:	83 c6 0a             	add    $0xa,%esi
   35c83:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
   35c8a:	eb b4                	jmp    35c40 <__s2b+0xa0>
   35c8c:	31 c9                	xor    %ecx,%ecx
   35c8e:	e9 4e ff ff ff       	jmp    35be1 <__s2b+0x41>
   35c93:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35c99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00035ca0 <__hi0bits>:
   35ca0:	55                   	push   %ebp
   35ca1:	31 c9                	xor    %ecx,%ecx
   35ca3:	89 e5                	mov    %esp,%ebp
   35ca5:	8b 55 08             	mov    0x8(%ebp),%edx
   35ca8:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
   35cae:	75 05                	jne    35cb5 <__hi0bits+0x15>
   35cb0:	c1 e2 10             	shl    $0x10,%edx
   35cb3:	b1 10                	mov    $0x10,%cl
   35cb5:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
   35cbb:	75 06                	jne    35cc3 <__hi0bits+0x23>
   35cbd:	83 c1 08             	add    $0x8,%ecx
   35cc0:	c1 e2 08             	shl    $0x8,%edx
   35cc3:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
   35cc9:	75 06                	jne    35cd1 <__hi0bits+0x31>
   35ccb:	83 c1 04             	add    $0x4,%ecx
   35cce:	c1 e2 04             	shl    $0x4,%edx
   35cd1:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
   35cd7:	75 06                	jne    35cdf <__hi0bits+0x3f>
   35cd9:	83 c1 02             	add    $0x2,%ecx
   35cdc:	c1 e2 02             	shl    $0x2,%edx
   35cdf:	85 d2                	test   %edx,%edx
   35ce1:	89 c8                	mov    %ecx,%eax
   35ce3:	78 0d                	js     35cf2 <__hi0bits+0x52>
   35ce5:	81 e2 00 00 00 40    	and    $0x40000000,%edx
   35ceb:	b8 20 00 00 00       	mov    $0x20,%eax
   35cf0:	75 06                	jne    35cf8 <__hi0bits+0x58>
   35cf2:	5d                   	pop    %ebp
   35cf3:	c3                   	ret    
   35cf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35cf8:	8d 41 01             	lea    0x1(%ecx),%eax
   35cfb:	5d                   	pop    %ebp
   35cfc:	c3                   	ret    
   35cfd:	8d 76 00             	lea    0x0(%esi),%esi

00035d00 <__lo0bits>:
   35d00:	55                   	push   %ebp
   35d01:	89 e5                	mov    %esp,%ebp
   35d03:	53                   	push   %ebx
   35d04:	8b 5d 08             	mov    0x8(%ebp),%ebx
   35d07:	8b 13                	mov    (%ebx),%edx
   35d09:	f6 c2 07             	test   $0x7,%dl
   35d0c:	74 1a                	je     35d28 <__lo0bits+0x28>
   35d0e:	31 c0                	xor    %eax,%eax
   35d10:	f6 c2 01             	test   $0x1,%dl
   35d13:	75 0f                	jne    35d24 <__lo0bits+0x24>
   35d15:	f6 c2 02             	test   $0x2,%dl
   35d18:	75 56                	jne    35d70 <__lo0bits+0x70>
   35d1a:	c1 ea 02             	shr    $0x2,%edx
   35d1d:	b8 02 00 00 00       	mov    $0x2,%eax
   35d22:	89 13                	mov    %edx,(%ebx)
   35d24:	5b                   	pop    %ebx
   35d25:	5d                   	pop    %ebp
   35d26:	c3                   	ret    
   35d27:	90                   	nop
   35d28:	31 c9                	xor    %ecx,%ecx
   35d2a:	66 85 d2             	test   %dx,%dx
   35d2d:	75 05                	jne    35d34 <__lo0bits+0x34>
   35d2f:	c1 ea 10             	shr    $0x10,%edx
   35d32:	b1 10                	mov    $0x10,%cl
   35d34:	84 d2                	test   %dl,%dl
   35d36:	75 06                	jne    35d3e <__lo0bits+0x3e>
   35d38:	83 c1 08             	add    $0x8,%ecx
   35d3b:	c1 ea 08             	shr    $0x8,%edx
   35d3e:	f6 c2 0f             	test   $0xf,%dl
   35d41:	75 06                	jne    35d49 <__lo0bits+0x49>
   35d43:	83 c1 04             	add    $0x4,%ecx
   35d46:	c1 ea 04             	shr    $0x4,%edx
   35d49:	f6 c2 03             	test   $0x3,%dl
   35d4c:	75 06                	jne    35d54 <__lo0bits+0x54>
   35d4e:	83 c1 02             	add    $0x2,%ecx
   35d51:	c1 ea 02             	shr    $0x2,%edx
   35d54:	f6 c2 01             	test   $0x1,%dl
   35d57:	75 0c                	jne    35d65 <__lo0bits+0x65>
   35d59:	d1 ea                	shr    %edx
   35d5b:	b8 20 00 00 00       	mov    $0x20,%eax
   35d60:	74 c2                	je     35d24 <__lo0bits+0x24>
   35d62:	83 c1 01             	add    $0x1,%ecx
   35d65:	89 13                	mov    %edx,(%ebx)
   35d67:	89 c8                	mov    %ecx,%eax
   35d69:	5b                   	pop    %ebx
   35d6a:	5d                   	pop    %ebp
   35d6b:	c3                   	ret    
   35d6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35d70:	d1 ea                	shr    %edx
   35d72:	b0 01                	mov    $0x1,%al
   35d74:	89 13                	mov    %edx,(%ebx)
   35d76:	5b                   	pop    %ebx
   35d77:	5d                   	pop    %ebp
   35d78:	c3                   	ret    
   35d79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035d80 <__i2b>:
   35d80:	55                   	push   %ebp
   35d81:	89 e5                	mov    %esp,%ebp
   35d83:	83 ec 18             	sub    $0x18,%esp
   35d86:	8b 45 08             	mov    0x8(%ebp),%eax
   35d89:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   35d90:	00 
   35d91:	89 04 24             	mov    %eax,(%esp)
   35d94:	e8 67 fc ff ff       	call   35a00 <_Balloc>
   35d99:	8b 55 0c             	mov    0xc(%ebp),%edx
   35d9c:	89 50 14             	mov    %edx,0x14(%eax)
   35d9f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   35da6:	c9                   	leave  
   35da7:	c3                   	ret    
   35da8:	90                   	nop
   35da9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035db0 <__multiply>:
   35db0:	55                   	push   %ebp
   35db1:	89 e5                	mov    %esp,%ebp
   35db3:	57                   	push   %edi
   35db4:	56                   	push   %esi
   35db5:	53                   	push   %ebx
   35db6:	83 ec 3c             	sub    $0x3c,%esp
   35db9:	8b 75 0c             	mov    0xc(%ebp),%esi
   35dbc:	8b 45 10             	mov    0x10(%ebp),%eax
   35dbf:	8b 7e 10             	mov    0x10(%esi),%edi
   35dc2:	8b 58 10             	mov    0x10(%eax),%ebx
   35dc5:	39 df                	cmp    %ebx,%edi
   35dc7:	7d 0e                	jge    35dd7 <__multiply+0x27>
   35dc9:	89 f8                	mov    %edi,%eax
   35dcb:	89 df                	mov    %ebx,%edi
   35dcd:	89 c3                	mov    %eax,%ebx
   35dcf:	89 f0                	mov    %esi,%eax
   35dd1:	8b 75 10             	mov    0x10(%ebp),%esi
   35dd4:	89 45 10             	mov    %eax,0x10(%ebp)
   35dd7:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
   35dda:	3b 46 08             	cmp    0x8(%esi),%eax
   35ddd:	89 45 c8             	mov    %eax,-0x38(%ebp)
   35de0:	0f 9f c0             	setg   %al
   35de3:	0f b6 c0             	movzbl %al,%eax
   35de6:	03 46 04             	add    0x4(%esi),%eax
   35de9:	89 44 24 04          	mov    %eax,0x4(%esp)
   35ded:	8b 45 08             	mov    0x8(%ebp),%eax
   35df0:	89 04 24             	mov    %eax,(%esp)
   35df3:	e8 08 fc ff ff       	call   35a00 <_Balloc>
   35df8:	8b 55 c8             	mov    -0x38(%ebp),%edx
   35dfb:	89 45 c0             	mov    %eax,-0x40(%ebp)
   35dfe:	8d 40 14             	lea    0x14(%eax),%eax
   35e01:	8d 14 90             	lea    (%eax,%edx,4),%edx
   35e04:	89 d1                	mov    %edx,%ecx
   35e06:	39 c8                	cmp    %ecx,%eax
   35e08:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   35e0b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
   35e0e:	73 15                	jae    35e25 <__multiply+0x75>
   35e10:	8b 55 c4             	mov    -0x3c(%ebp),%edx
   35e13:	90                   	nop
   35e14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35e18:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   35e1e:	83 c0 04             	add    $0x4,%eax
   35e21:	39 c2                	cmp    %eax,%edx
   35e23:	77 f3                	ja     35e18 <__multiply+0x68>
   35e25:	8d 46 14             	lea    0x14(%esi),%eax
   35e28:	89 45 d0             	mov    %eax,-0x30(%ebp)
   35e2b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
   35e2e:	89 45 dc             	mov    %eax,-0x24(%ebp)
   35e31:	8b 45 10             	mov    0x10(%ebp),%eax
   35e34:	83 c0 14             	add    $0x14,%eax
   35e37:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
   35e3a:	39 f8                	cmp    %edi,%eax
   35e3c:	89 45 d8             	mov    %eax,-0x28(%ebp)
   35e3f:	89 7d cc             	mov    %edi,-0x34(%ebp)
   35e42:	0f 83 e8 00 00 00    	jae    35f30 <__multiply+0x180>
   35e48:	8b 45 d8             	mov    -0x28(%ebp),%eax
   35e4b:	8b 00                	mov    (%eax),%eax
   35e4d:	0f b7 f8             	movzwl %ax,%edi
   35e50:	85 ff                	test   %edi,%edi
   35e52:	89 7d e4             	mov    %edi,-0x1c(%ebp)
   35e55:	74 5a                	je     35eb1 <__multiply+0x101>
   35e57:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   35e5a:	31 db                	xor    %ebx,%ebx
   35e5c:	8b 75 d0             	mov    -0x30(%ebp),%esi
   35e5f:	eb 09                	jmp    35e6a <__multiply+0xba>
   35e61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35e68:	89 fa                	mov    %edi,%edx
   35e6a:	8b 0e                	mov    (%esi),%ecx
   35e6c:	83 c6 04             	add    $0x4,%esi
   35e6f:	0f b7 3a             	movzwl (%edx),%edi
   35e72:	0f b7 c1             	movzwl %cx,%eax
   35e75:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
   35e79:	c1 e9 10             	shr    $0x10,%ecx
   35e7c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
   35e80:	01 f8                	add    %edi,%eax
   35e82:	01 d8                	add    %ebx,%eax
   35e84:	8b 1a                	mov    (%edx),%ebx
   35e86:	8d 7a 04             	lea    0x4(%edx),%edi
   35e89:	c1 eb 10             	shr    $0x10,%ebx
   35e8c:	01 d9                	add    %ebx,%ecx
   35e8e:	89 c3                	mov    %eax,%ebx
   35e90:	c1 eb 10             	shr    $0x10,%ebx
   35e93:	0f b7 c0             	movzwl %ax,%eax
   35e96:	01 d9                	add    %ebx,%ecx
   35e98:	89 cb                	mov    %ecx,%ebx
   35e9a:	c1 e1 10             	shl    $0x10,%ecx
   35e9d:	09 c1                	or     %eax,%ecx
   35e9f:	c1 eb 10             	shr    $0x10,%ebx
   35ea2:	39 75 dc             	cmp    %esi,-0x24(%ebp)
   35ea5:	89 0a                	mov    %ecx,(%edx)
   35ea7:	77 bf                	ja     35e68 <__multiply+0xb8>
   35ea9:	8b 45 d8             	mov    -0x28(%ebp),%eax
   35eac:	89 5a 04             	mov    %ebx,0x4(%edx)
   35eaf:	8b 00                	mov    (%eax),%eax
   35eb1:	c1 e8 10             	shr    $0x10,%eax
   35eb4:	85 c0                	test   %eax,%eax
   35eb6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   35eb9:	74 61                	je     35f1c <__multiply+0x16c>
   35ebb:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   35ebe:	31 ff                	xor    %edi,%edi
   35ec0:	89 fe                	mov    %edi,%esi
   35ec2:	8b 10                	mov    (%eax),%edx
   35ec4:	89 45 e0             	mov    %eax,-0x20(%ebp)
   35ec7:	8b 45 d0             	mov    -0x30(%ebp),%eax
   35eca:	89 d3                	mov    %edx,%ebx
   35ecc:	eb 05                	jmp    35ed3 <__multiply+0x123>
   35ece:	66 90                	xchg   %ax,%ax
   35ed0:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   35ed3:	0f b7 08             	movzwl (%eax),%ecx
   35ed6:	c1 eb 10             	shr    $0x10,%ebx
   35ed9:	0f b7 d2             	movzwl %dx,%edx
   35edc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
   35ee0:	83 c0 04             	add    $0x4,%eax
   35ee3:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
   35ee6:	01 f7                	add    %esi,%edi
   35ee8:	8b 75 e0             	mov    -0x20(%ebp),%esi
   35eeb:	89 fb                	mov    %edi,%ebx
   35eed:	c1 e3 10             	shl    $0x10,%ebx
   35ef0:	09 d3                	or     %edx,%ebx
   35ef2:	89 1e                	mov    %ebx,(%esi)
   35ef4:	8b 5e 04             	mov    0x4(%esi),%ebx
   35ef7:	8d 4e 04             	lea    0x4(%esi),%ecx
   35efa:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
   35efe:	c1 ef 10             	shr    $0x10,%edi
   35f01:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
   35f05:	0f b7 f3             	movzwl %bx,%esi
   35f08:	01 f2                	add    %esi,%edx
   35f0a:	01 fa                	add    %edi,%edx
   35f0c:	89 d6                	mov    %edx,%esi
   35f0e:	c1 ee 10             	shr    $0x10,%esi
   35f11:	39 45 dc             	cmp    %eax,-0x24(%ebp)
   35f14:	77 ba                	ja     35ed0 <__multiply+0x120>
   35f16:	8b 45 e0             	mov    -0x20(%ebp),%eax
   35f19:	89 50 04             	mov    %edx,0x4(%eax)
   35f1c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
   35f20:	8b 45 d8             	mov    -0x28(%ebp),%eax
   35f23:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
   35f27:	39 45 cc             	cmp    %eax,-0x34(%ebp)
   35f2a:	0f 87 18 ff ff ff    	ja     35e48 <__multiply+0x98>
   35f30:	8b 75 c8             	mov    -0x38(%ebp),%esi
   35f33:	85 f6                	test   %esi,%esi
   35f35:	7e 29                	jle    35f60 <__multiply+0x1b0>
   35f37:	8b 7d c4             	mov    -0x3c(%ebp),%edi
   35f3a:	8b 5f fc             	mov    -0x4(%edi),%ebx
   35f3d:	85 db                	test   %ebx,%ebx
   35f3f:	75 1f                	jne    35f60 <__multiply+0x1b0>
   35f41:	8b 55 c8             	mov    -0x38(%ebp),%edx
   35f44:	89 d0                	mov    %edx,%eax
   35f46:	c1 e0 02             	shl    $0x2,%eax
   35f49:	29 c7                	sub    %eax,%edi
   35f4b:	89 f8                	mov    %edi,%eax
   35f4d:	eb 09                	jmp    35f58 <__multiply+0x1a8>
   35f4f:	90                   	nop
   35f50:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
   35f54:	85 c9                	test   %ecx,%ecx
   35f56:	75 05                	jne    35f5d <__multiply+0x1ad>
   35f58:	83 ea 01             	sub    $0x1,%edx
   35f5b:	75 f3                	jne    35f50 <__multiply+0x1a0>
   35f5d:	89 55 c8             	mov    %edx,-0x38(%ebp)
   35f60:	8b 45 c0             	mov    -0x40(%ebp),%eax
   35f63:	8b 7d c8             	mov    -0x38(%ebp),%edi
   35f66:	89 78 10             	mov    %edi,0x10(%eax)
   35f69:	83 c4 3c             	add    $0x3c,%esp
   35f6c:	5b                   	pop    %ebx
   35f6d:	5e                   	pop    %esi
   35f6e:	5f                   	pop    %edi
   35f6f:	5d                   	pop    %ebp
   35f70:	c3                   	ret    
   35f71:	eb 0d                	jmp    35f80 <__pow5mult>
   35f73:	90                   	nop
   35f74:	90                   	nop
   35f75:	90                   	nop
   35f76:	90                   	nop
   35f77:	90                   	nop
   35f78:	90                   	nop
   35f79:	90                   	nop
   35f7a:	90                   	nop
   35f7b:	90                   	nop
   35f7c:	90                   	nop
   35f7d:	90                   	nop
   35f7e:	90                   	nop
   35f7f:	90                   	nop

00035f80 <__pow5mult>:
   35f80:	55                   	push   %ebp
   35f81:	89 e5                	mov    %esp,%ebp
   35f83:	57                   	push   %edi
   35f84:	56                   	push   %esi
   35f85:	53                   	push   %ebx
   35f86:	83 ec 2c             	sub    $0x2c,%esp
   35f89:	8b 5d 10             	mov    0x10(%ebp),%ebx
   35f8c:	8b 4d 08             	mov    0x8(%ebp),%ecx
   35f8f:	8b 7d 0c             	mov    0xc(%ebp),%edi
   35f92:	89 d8                	mov    %ebx,%eax
   35f94:	83 e0 03             	and    $0x3,%eax
   35f97:	0f 85 a3 00 00 00    	jne    36040 <__pow5mult+0xc0>
   35f9d:	c1 fb 02             	sar    $0x2,%ebx
   35fa0:	85 db                	test   %ebx,%ebx
   35fa2:	74 5c                	je     36000 <__pow5mult+0x80>
   35fa4:	8b 71 48             	mov    0x48(%ecx),%esi
   35fa7:	85 f6                	test   %esi,%esi
   35fa9:	0f 84 bd 00 00 00    	je     3606c <__pow5mult+0xec>
   35faf:	f6 c3 01             	test   $0x1,%bl
   35fb2:	75 15                	jne    35fc9 <__pow5mult+0x49>
   35fb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35fb8:	d1 fb                	sar    %ebx
   35fba:	74 44                	je     36000 <__pow5mult+0x80>
   35fbc:	8b 06                	mov    (%esi),%eax
   35fbe:	85 c0                	test   %eax,%eax
   35fc0:	74 4e                	je     36010 <__pow5mult+0x90>
   35fc2:	89 c6                	mov    %eax,%esi
   35fc4:	f6 c3 01             	test   $0x1,%bl
   35fc7:	74 ef                	je     35fb8 <__pow5mult+0x38>
   35fc9:	89 0c 24             	mov    %ecx,(%esp)
   35fcc:	89 74 24 08          	mov    %esi,0x8(%esp)
   35fd0:	89 7c 24 04          	mov    %edi,0x4(%esp)
   35fd4:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   35fd7:	e8 d4 fd ff ff       	call   35db0 <__multiply>
   35fdc:	85 ff                	test   %edi,%edi
   35fde:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   35fe1:	89 45 e0             	mov    %eax,-0x20(%ebp)
   35fe4:	74 52                	je     36038 <__pow5mult+0xb8>
   35fe6:	8b 57 04             	mov    0x4(%edi),%edx
   35fe9:	d1 fb                	sar    %ebx
   35feb:	8b 41 4c             	mov    0x4c(%ecx),%eax
   35fee:	8d 04 90             	lea    (%eax,%edx,4),%eax
   35ff1:	8b 10                	mov    (%eax),%edx
   35ff3:	89 17                	mov    %edx,(%edi)
   35ff5:	89 38                	mov    %edi,(%eax)
   35ff7:	8b 7d e0             	mov    -0x20(%ebp),%edi
   35ffa:	75 c0                	jne    35fbc <__pow5mult+0x3c>
   35ffc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36000:	83 c4 2c             	add    $0x2c,%esp
   36003:	89 f8                	mov    %edi,%eax
   36005:	5b                   	pop    %ebx
   36006:	5e                   	pop    %esi
   36007:	5f                   	pop    %edi
   36008:	5d                   	pop    %ebp
   36009:	c3                   	ret    
   3600a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36010:	89 74 24 08          	mov    %esi,0x8(%esp)
   36014:	89 74 24 04          	mov    %esi,0x4(%esp)
   36018:	89 0c 24             	mov    %ecx,(%esp)
   3601b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   3601e:	e8 8d fd ff ff       	call   35db0 <__multiply>
   36023:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36026:	89 06                	mov    %eax,(%esi)
   36028:	89 c6                	mov    %eax,%esi
   3602a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   36030:	eb 92                	jmp    35fc4 <__pow5mult+0x44>
   36032:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36038:	8b 7d e0             	mov    -0x20(%ebp),%edi
   3603b:	e9 78 ff ff ff       	jmp    35fb8 <__pow5mult+0x38>
   36040:	8b 04 85 fc 9a 03 00 	mov    0x39afc(,%eax,4),%eax
   36047:	89 7c 24 04          	mov    %edi,0x4(%esp)
   3604b:	89 0c 24             	mov    %ecx,(%esp)
   3604e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   36055:	00 
   36056:	89 44 24 08          	mov    %eax,0x8(%esp)
   3605a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   3605d:	e8 5e fa ff ff       	call   35ac0 <__multadd>
   36062:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36065:	89 c7                	mov    %eax,%edi
   36067:	e9 31 ff ff ff       	jmp    35f9d <__pow5mult+0x1d>
   3606c:	89 0c 24             	mov    %ecx,(%esp)
   3606f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   36076:	00 
   36077:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   3607a:	e8 81 f9 ff ff       	call   35a00 <_Balloc>
   3607f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36082:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
   36089:	89 c6                	mov    %eax,%esi
   3608b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   36092:	89 41 48             	mov    %eax,0x48(%ecx)
   36095:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   3609b:	e9 0f ff ff ff       	jmp    35faf <__pow5mult+0x2f>

000360a0 <__lshift>:
   360a0:	55                   	push   %ebp
   360a1:	89 e5                	mov    %esp,%ebp
   360a3:	57                   	push   %edi
   360a4:	56                   	push   %esi
   360a5:	53                   	push   %ebx
   360a6:	83 ec 2c             	sub    $0x2c,%esp
   360a9:	8b 45 0c             	mov    0xc(%ebp),%eax
   360ac:	8b 75 10             	mov    0x10(%ebp),%esi
   360af:	89 c7                	mov    %eax,%edi
   360b1:	8b 50 04             	mov    0x4(%eax),%edx
   360b4:	8b 40 10             	mov    0x10(%eax),%eax
   360b7:	89 f3                	mov    %esi,%ebx
   360b9:	c1 fb 05             	sar    $0x5,%ebx
   360bc:	01 d8                	add    %ebx,%eax
   360be:	89 45 d0             	mov    %eax,-0x30(%ebp)
   360c1:	83 c0 01             	add    $0x1,%eax
   360c4:	89 c1                	mov    %eax,%ecx
   360c6:	89 45 d8             	mov    %eax,-0x28(%ebp)
   360c9:	8b 47 08             	mov    0x8(%edi),%eax
   360cc:	39 c1                	cmp    %eax,%ecx
   360ce:	7e 09                	jle    360d9 <__lshift+0x39>
   360d0:	01 c0                	add    %eax,%eax
   360d2:	83 c2 01             	add    $0x1,%edx
   360d5:	39 c1                	cmp    %eax,%ecx
   360d7:	7f f7                	jg     360d0 <__lshift+0x30>
   360d9:	8b 45 08             	mov    0x8(%ebp),%eax
   360dc:	89 54 24 04          	mov    %edx,0x4(%esp)
   360e0:	89 04 24             	mov    %eax,(%esp)
   360e3:	e8 18 f9 ff ff       	call   35a00 <_Balloc>
   360e8:	85 db                	test   %ebx,%ebx
   360ea:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   360ed:	8d 50 14             	lea    0x14(%eax),%edx
   360f0:	7e 17                	jle    36109 <__lshift+0x69>
   360f2:	31 c0                	xor    %eax,%eax
   360f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   360f8:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
   360ff:	83 c0 01             	add    $0x1,%eax
   36102:	39 d8                	cmp    %ebx,%eax
   36104:	75 f2                	jne    360f8 <__lshift+0x58>
   36106:	8d 14 82             	lea    (%edx,%eax,4),%edx
   36109:	8b 7d 0c             	mov    0xc(%ebp),%edi
   3610c:	8b 45 0c             	mov    0xc(%ebp),%eax
   3610f:	8b 4f 10             	mov    0x10(%edi),%ecx
   36112:	83 c0 14             	add    $0x14,%eax
   36115:	83 e6 1f             	and    $0x1f,%esi
   36118:	89 75 e0             	mov    %esi,-0x20(%ebp)
   3611b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
   3611e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
   36121:	74 7d                	je     361a0 <__lshift+0x100>
   36123:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
   3612a:	29 75 dc             	sub    %esi,-0x24(%ebp)
   3612d:	31 f6                	xor    %esi,%esi
   3612f:	eb 09                	jmp    3613a <__lshift+0x9a>
   36131:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36138:	89 fa                	mov    %edi,%edx
   3613a:	8b 18                	mov    (%eax),%ebx
   3613c:	83 c0 04             	add    $0x4,%eax
   3613f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
   36143:	8d 7a 04             	lea    0x4(%edx),%edi
   36146:	d3 e3                	shl    %cl,%ebx
   36148:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
   3614c:	09 f3                	or     %esi,%ebx
   3614e:	89 1a                	mov    %ebx,(%edx)
   36150:	8b 70 fc             	mov    -0x4(%eax),%esi
   36153:	d3 ee                	shr    %cl,%esi
   36155:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
   36158:	77 de                	ja     36138 <__lshift+0x98>
   3615a:	8b 45 d0             	mov    -0x30(%ebp),%eax
   3615d:	89 72 04             	mov    %esi,0x4(%edx)
   36160:	83 c0 02             	add    $0x2,%eax
   36163:	85 f6                	test   %esi,%esi
   36165:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
   36169:	89 45 d8             	mov    %eax,-0x28(%ebp)
   3616c:	8b 45 d8             	mov    -0x28(%ebp),%eax
   3616f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   36172:	8b 75 0c             	mov    0xc(%ebp),%esi
   36175:	83 e8 01             	sub    $0x1,%eax
   36178:	89 47 10             	mov    %eax,0x10(%edi)
   3617b:	8b 45 0c             	mov    0xc(%ebp),%eax
   3617e:	8b 50 04             	mov    0x4(%eax),%edx
   36181:	8b 45 08             	mov    0x8(%ebp),%eax
   36184:	8b 40 4c             	mov    0x4c(%eax),%eax
   36187:	8d 04 90             	lea    (%eax,%edx,4),%eax
   3618a:	8b 10                	mov    (%eax),%edx
   3618c:	89 16                	mov    %edx,(%esi)
   3618e:	89 30                	mov    %esi,(%eax)
   36190:	83 c4 2c             	add    $0x2c,%esp
   36193:	89 f8                	mov    %edi,%eax
   36195:	5b                   	pop    %ebx
   36196:	5e                   	pop    %esi
   36197:	5f                   	pop    %edi
   36198:	5d                   	pop    %ebp
   36199:	c3                   	ret    
   3619a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   361a0:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
   361a3:	90                   	nop
   361a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   361a8:	83 c0 04             	add    $0x4,%eax
   361ab:	8b 48 fc             	mov    -0x4(%eax),%ecx
   361ae:	83 c2 04             	add    $0x4,%edx
   361b1:	39 c3                	cmp    %eax,%ebx
   361b3:	89 4a fc             	mov    %ecx,-0x4(%edx)
   361b6:	77 f0                	ja     361a8 <__lshift+0x108>
   361b8:	eb b2                	jmp    3616c <__lshift+0xcc>
   361ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000361c0 <__mcmp>:
   361c0:	55                   	push   %ebp
   361c1:	89 e5                	mov    %esp,%ebp
   361c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
   361c6:	8b 55 0c             	mov    0xc(%ebp),%edx
   361c9:	53                   	push   %ebx
   361ca:	8b 41 10             	mov    0x10(%ecx),%eax
   361cd:	8b 5a 10             	mov    0x10(%edx),%ebx
   361d0:	29 d8                	sub    %ebx,%eax
   361d2:	85 c0                	test   %eax,%eax
   361d4:	75 27                	jne    361fd <__mcmp+0x3d>
   361d6:	c1 e3 02             	shl    $0x2,%ebx
   361d9:	83 c1 14             	add    $0x14,%ecx
   361dc:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
   361df:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
   361e3:	eb 07                	jmp    361ec <__mcmp+0x2c>
   361e5:	8d 76 00             	lea    0x0(%esi),%esi
   361e8:	39 c1                	cmp    %eax,%ecx
   361ea:	73 14                	jae    36200 <__mcmp+0x40>
   361ec:	83 ea 04             	sub    $0x4,%edx
   361ef:	83 e8 04             	sub    $0x4,%eax
   361f2:	8b 1a                	mov    (%edx),%ebx
   361f4:	39 18                	cmp    %ebx,(%eax)
   361f6:	74 f0                	je     361e8 <__mcmp+0x28>
   361f8:	19 c0                	sbb    %eax,%eax
   361fa:	83 c8 01             	or     $0x1,%eax
   361fd:	5b                   	pop    %ebx
   361fe:	5d                   	pop    %ebp
   361ff:	c3                   	ret    
   36200:	31 c0                	xor    %eax,%eax
   36202:	5b                   	pop    %ebx
   36203:	5d                   	pop    %ebp
   36204:	c3                   	ret    
   36205:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00036210 <__mdiff>:
   36210:	55                   	push   %ebp
   36211:	89 e5                	mov    %esp,%ebp
   36213:	57                   	push   %edi
   36214:	56                   	push   %esi
   36215:	53                   	push   %ebx
   36216:	83 ec 2c             	sub    $0x2c,%esp
   36219:	8b 75 0c             	mov    0xc(%ebp),%esi
   3621c:	8b 5d 10             	mov    0x10(%ebp),%ebx
   3621f:	89 34 24             	mov    %esi,(%esp)
   36222:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   36226:	e8 95 ff ff ff       	call   361c0 <__mcmp>
   3622b:	85 c0                	test   %eax,%eax
   3622d:	0f 84 25 01 00 00    	je     36358 <__mdiff+0x148>
   36233:	0f 88 0f 01 00 00    	js     36348 <__mdiff+0x138>
   36239:	31 ff                	xor    %edi,%edi
   3623b:	8b 46 04             	mov    0x4(%esi),%eax
   3623e:	83 c6 14             	add    $0x14,%esi
   36241:	89 44 24 04          	mov    %eax,0x4(%esp)
   36245:	8b 45 08             	mov    0x8(%ebp),%eax
   36248:	89 04 24             	mov    %eax,(%esp)
   3624b:	e8 b0 f7 ff ff       	call   35a00 <_Balloc>
   36250:	8d 4b 14             	lea    0x14(%ebx),%ecx
   36253:	89 c2                	mov    %eax,%edx
   36255:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   36258:	89 78 0c             	mov    %edi,0xc(%eax)
   3625b:	8b 46 fc             	mov    -0x4(%esi),%eax
   3625e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
   36261:	89 45 dc             	mov    %eax,-0x24(%ebp)
   36264:	8d 04 86             	lea    (%esi,%eax,4),%eax
   36267:	89 45 d8             	mov    %eax,-0x28(%ebp)
   3626a:	8b 43 10             	mov    0x10(%ebx),%eax
   3626d:	31 db                	xor    %ebx,%ebx
   3626f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
   36272:	89 45 e0             	mov    %eax,-0x20(%ebp)
   36275:	89 d0                	mov    %edx,%eax
   36277:	83 c0 14             	add    $0x14,%eax
   3627a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36280:	8b 75 e4             	mov    -0x1c(%ebp),%esi
   36283:	83 c0 04             	add    $0x4,%eax
   36286:	83 c1 04             	add    $0x4,%ecx
   36289:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
   3628d:	8b 3e                	mov    (%esi),%edi
   3628f:	8b 71 fc             	mov    -0x4(%ecx),%esi
   36292:	0f b7 d7             	movzwl %di,%edx
   36295:	01 da                	add    %ebx,%edx
   36297:	0f b7 de             	movzwl %si,%ebx
   3629a:	29 da                	sub    %ebx,%edx
   3629c:	c1 ef 10             	shr    $0x10,%edi
   3629f:	89 d3                	mov    %edx,%ebx
   362a1:	c1 ee 10             	shr    $0x10,%esi
   362a4:	0f b7 d2             	movzwl %dx,%edx
   362a7:	c1 fb 10             	sar    $0x10,%ebx
   362aa:	29 f7                	sub    %esi,%edi
   362ac:	01 df                	add    %ebx,%edi
   362ae:	89 fb                	mov    %edi,%ebx
   362b0:	c1 e7 10             	shl    $0x10,%edi
   362b3:	09 d7                	or     %edx,%edi
   362b5:	c1 fb 10             	sar    $0x10,%ebx
   362b8:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
   362bb:	89 78 fc             	mov    %edi,-0x4(%eax)
   362be:	77 c0                	ja     36280 <__mdiff+0x70>
   362c0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
   362c3:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   362c6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   362c9:	89 75 e0             	mov    %esi,-0x20(%ebp)
   362cc:	39 f1                	cmp    %esi,%ecx
   362ce:	76 3f                	jbe    3630f <__mdiff+0xff>
   362d0:	8b 3e                	mov    (%esi),%edi
   362d2:	83 c6 04             	add    $0x4,%esi
   362d5:	83 c0 04             	add    $0x4,%eax
   362d8:	0f b7 d7             	movzwl %di,%edx
   362db:	01 da                	add    %ebx,%edx
   362dd:	89 d3                	mov    %edx,%ebx
   362df:	0f b7 d2             	movzwl %dx,%edx
   362e2:	c1 fb 10             	sar    $0x10,%ebx
   362e5:	c1 ef 10             	shr    $0x10,%edi
   362e8:	01 df                	add    %ebx,%edi
   362ea:	89 fb                	mov    %edi,%ebx
   362ec:	c1 e7 10             	shl    $0x10,%edi
   362ef:	09 d7                	or     %edx,%edi
   362f1:	c1 fb 10             	sar    $0x10,%ebx
   362f4:	39 f1                	cmp    %esi,%ecx
   362f6:	89 78 fc             	mov    %edi,-0x4(%eax)
   362f9:	77 d5                	ja     362d0 <__mdiff+0xc0>
   362fb:	8b 45 e0             	mov    -0x20(%ebp),%eax
   362fe:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   36301:	f7 d0                	not    %eax
   36303:	01 c8                	add    %ecx,%eax
   36305:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36308:	c1 e8 02             	shr    $0x2,%eax
   3630b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
   3630f:	85 ff                	test   %edi,%edi
   36311:	75 23                	jne    36336 <__mdiff+0x126>
   36313:	8b 4d dc             	mov    -0x24(%ebp),%ecx
   36316:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
   3631d:	29 d0                	sub    %edx,%eax
   3631f:	89 ca                	mov    %ecx,%edx
   36321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36328:	83 ea 01             	sub    $0x1,%edx
   3632b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
   3632f:	85 c9                	test   %ecx,%ecx
   36331:	74 f5                	je     36328 <__mdiff+0x118>
   36333:	89 55 dc             	mov    %edx,-0x24(%ebp)
   36336:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   36339:	8b 4d dc             	mov    -0x24(%ebp),%ecx
   3633c:	89 48 10             	mov    %ecx,0x10(%eax)
   3633f:	83 c4 2c             	add    $0x2c,%esp
   36342:	5b                   	pop    %ebx
   36343:	5e                   	pop    %esi
   36344:	5f                   	pop    %edi
   36345:	5d                   	pop    %ebp
   36346:	c3                   	ret    
   36347:	90                   	nop
   36348:	89 f0                	mov    %esi,%eax
   3634a:	bf 01 00 00 00       	mov    $0x1,%edi
   3634f:	89 de                	mov    %ebx,%esi
   36351:	89 c3                	mov    %eax,%ebx
   36353:	e9 e3 fe ff ff       	jmp    3623b <__mdiff+0x2b>
   36358:	8b 45 08             	mov    0x8(%ebp),%eax
   3635b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   36362:	00 
   36363:	89 04 24             	mov    %eax,(%esp)
   36366:	e8 95 f6 ff ff       	call   35a00 <_Balloc>
   3636b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   36372:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
   36379:	83 c4 2c             	add    $0x2c,%esp
   3637c:	5b                   	pop    %ebx
   3637d:	5e                   	pop    %esi
   3637e:	5f                   	pop    %edi
   3637f:	5d                   	pop    %ebp
   36380:	c3                   	ret    
   36381:	eb 0d                	jmp    36390 <__ulp>
   36383:	90                   	nop
   36384:	90                   	nop
   36385:	90                   	nop
   36386:	90                   	nop
   36387:	90                   	nop
   36388:	90                   	nop
   36389:	90                   	nop
   3638a:	90                   	nop
   3638b:	90                   	nop
   3638c:	90                   	nop
   3638d:	90                   	nop
   3638e:	90                   	nop
   3638f:	90                   	nop

00036390 <__ulp>:
   36390:	55                   	push   %ebp
   36391:	89 e5                	mov    %esp,%ebp
   36393:	83 ec 08             	sub    $0x8,%esp
   36396:	dd 45 08             	fldl   0x8(%ebp)
   36399:	dd 5d f8             	fstpl  -0x8(%ebp)
   3639c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
   3639f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
   363a5:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
   363ab:	85 c9                	test   %ecx,%ecx
   363ad:	7e 11                	jle    363c0 <__ulp+0x30>
   363af:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   363b2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   363b9:	dd 45 f8             	fldl   -0x8(%ebp)
   363bc:	c9                   	leave  
   363bd:	c3                   	ret    
   363be:	66 90                	xchg   %ax,%ax
   363c0:	f7 d9                	neg    %ecx
   363c2:	c1 f9 14             	sar    $0x14,%ecx
   363c5:	83 f9 13             	cmp    $0x13,%ecx
   363c8:	7e 26                	jle    363f0 <__ulp+0x60>
   363ca:	83 f9 32             	cmp    $0x32,%ecx
   363cd:	b8 01 00 00 00       	mov    $0x1,%eax
   363d2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   363d9:	7f 0b                	jg     363e6 <__ulp+0x56>
   363db:	ba 33 00 00 00       	mov    $0x33,%edx
   363e0:	29 ca                	sub    %ecx,%edx
   363e2:	89 d1                	mov    %edx,%ecx
   363e4:	d3 e0                	shl    %cl,%eax
   363e6:	89 45 f8             	mov    %eax,-0x8(%ebp)
   363e9:	dd 45 f8             	fldl   -0x8(%ebp)
   363ec:	c9                   	leave  
   363ed:	c3                   	ret    
   363ee:	66 90                	xchg   %ax,%ax
   363f0:	b8 00 00 08 00       	mov    $0x80000,%eax
   363f5:	d3 f8                	sar    %cl,%eax
   363f7:	89 45 fc             	mov    %eax,-0x4(%ebp)
   363fa:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   36401:	dd 45 f8             	fldl   -0x8(%ebp)
   36404:	c9                   	leave  
   36405:	c3                   	ret    
   36406:	8d 76 00             	lea    0x0(%esi),%esi
   36409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00036410 <__b2d>:
   36410:	55                   	push   %ebp
   36411:	89 e5                	mov    %esp,%ebp
   36413:	57                   	push   %edi
   36414:	56                   	push   %esi
   36415:	53                   	push   %ebx
   36416:	83 ec 18             	sub    $0x18,%esp
   36419:	8b 45 08             	mov    0x8(%ebp),%eax
   3641c:	8d 78 14             	lea    0x14(%eax),%edi
   3641f:	8b 40 10             	mov    0x10(%eax),%eax
   36422:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
   36425:	8b 73 fc             	mov    -0x4(%ebx),%esi
   36428:	8d 43 fc             	lea    -0x4(%ebx),%eax
   3642b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   3642e:	89 34 24             	mov    %esi,(%esp)
   36431:	e8 6a f8 ff ff       	call   35ca0 <__hi0bits>
   36436:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   36439:	ba 20 00 00 00       	mov    $0x20,%edx
   3643e:	29 c2                	sub    %eax,%edx
   36440:	83 f8 0a             	cmp    $0xa,%eax
   36443:	89 11                	mov    %edx,(%ecx)
   36445:	7f 41                	jg     36488 <__b2d+0x78>
   36447:	b9 0b 00 00 00       	mov    $0xb,%ecx
   3644c:	89 f2                	mov    %esi,%edx
   3644e:	29 c1                	sub    %eax,%ecx
   36450:	d3 ea                	shr    %cl,%edx
   36452:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
   36458:	89 55 ec             	mov    %edx,-0x14(%ebp)
   3645b:	31 d2                	xor    %edx,%edx
   3645d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
   36460:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   36467:	73 05                	jae    3646e <__b2d+0x5e>
   36469:	8b 53 f8             	mov    -0x8(%ebx),%edx
   3646c:	d3 ea                	shr    %cl,%edx
   3646e:	8d 48 15             	lea    0x15(%eax),%ecx
   36471:	d3 e6                	shl    %cl,%esi
   36473:	09 f2                	or     %esi,%edx
   36475:	89 55 e8             	mov    %edx,-0x18(%ebp)
   36478:	dd 45 e8             	fldl   -0x18(%ebp)
   3647b:	83 c4 18             	add    $0x18,%esp
   3647e:	5b                   	pop    %ebx
   3647f:	5e                   	pop    %esi
   36480:	5f                   	pop    %edi
   36481:	5d                   	pop    %ebp
   36482:	c3                   	ret    
   36483:	90                   	nop
   36484:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36488:	31 d2                	xor    %edx,%edx
   3648a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
   3648d:	73 09                	jae    36498 <__b2d+0x88>
   3648f:	8b 53 f8             	mov    -0x8(%ebx),%edx
   36492:	8d 4b f8             	lea    -0x8(%ebx),%ecx
   36495:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   36498:	89 c3                	mov    %eax,%ebx
   3649a:	83 eb 0b             	sub    $0xb,%ebx
   3649d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
   364a0:	74 4e                	je     364f0 <__b2d+0xe0>
   364a2:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
   364a6:	bb 2b 00 00 00       	mov    $0x2b,%ebx
   364ab:	29 c3                	sub    %eax,%ebx
   364ad:	89 d0                	mov    %edx,%eax
   364af:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   364b6:	d3 e6                	shl    %cl,%esi
   364b8:	89 d9                	mov    %ebx,%ecx
   364ba:	d3 e8                	shr    %cl,%eax
   364bc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   364bf:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
   364c5:	09 c6                	or     %eax,%esi
   364c7:	31 c0                	xor    %eax,%eax
   364c9:	89 75 ec             	mov    %esi,-0x14(%ebp)
   364cc:	39 f9                	cmp    %edi,%ecx
   364ce:	76 07                	jbe    364d7 <__b2d+0xc7>
   364d0:	8b 41 fc             	mov    -0x4(%ecx),%eax
   364d3:	89 d9                	mov    %ebx,%ecx
   364d5:	d3 e8                	shr    %cl,%eax
   364d7:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
   364db:	d3 e2                	shl    %cl,%edx
   364dd:	09 d0                	or     %edx,%eax
   364df:	89 45 e8             	mov    %eax,-0x18(%ebp)
   364e2:	dd 45 e8             	fldl   -0x18(%ebp)
   364e5:	83 c4 18             	add    $0x18,%esp
   364e8:	5b                   	pop    %ebx
   364e9:	5e                   	pop    %esi
   364ea:	5f                   	pop    %edi
   364eb:	5d                   	pop    %ebp
   364ec:	c3                   	ret    
   364ed:	8d 76 00             	lea    0x0(%esi),%esi
   364f0:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
   364f6:	89 75 ec             	mov    %esi,-0x14(%ebp)
   364f9:	89 55 e8             	mov    %edx,-0x18(%ebp)
   364fc:	dd 45 e8             	fldl   -0x18(%ebp)
   364ff:	83 c4 18             	add    $0x18,%esp
   36502:	5b                   	pop    %ebx
   36503:	5e                   	pop    %esi
   36504:	5f                   	pop    %edi
   36505:	5d                   	pop    %ebp
   36506:	c3                   	ret    
   36507:	89 f6                	mov    %esi,%esi
   36509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00036510 <__d2b>:
   36510:	55                   	push   %ebp
   36511:	89 e5                	mov    %esp,%ebp
   36513:	57                   	push   %edi
   36514:	56                   	push   %esi
   36515:	53                   	push   %ebx
   36516:	83 ec 2c             	sub    $0x2c,%esp
   36519:	8b 45 08             	mov    0x8(%ebp),%eax
   3651c:	dd 45 0c             	fldl   0xc(%ebp)
   3651f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   36526:	00 
   36527:	dd 5d d0             	fstpl  -0x30(%ebp)
   3652a:	89 04 24             	mov    %eax,(%esp)
   3652d:	e8 ce f4 ff ff       	call   35a00 <_Balloc>
   36532:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
   36535:	89 c6                	mov    %eax,%esi
   36537:	89 d8                	mov    %ebx,%eax
   36539:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
   3653f:	25 ff ff 0f 00       	and    $0xfffff,%eax
   36544:	c1 eb 14             	shr    $0x14,%ebx
   36547:	85 db                	test   %ebx,%ebx
   36549:	74 05                	je     36550 <__d2b+0x40>
   3654b:	0d 00 00 10 00       	or     $0x100000,%eax
   36550:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   36553:	8b 45 d0             	mov    -0x30(%ebp),%eax
   36556:	85 c0                	test   %eax,%eax
   36558:	74 56                	je     365b0 <__d2b+0xa0>
   3655a:	89 45 e0             	mov    %eax,-0x20(%ebp)
   3655d:	8d 45 e0             	lea    -0x20(%ebp),%eax
   36560:	89 04 24             	mov    %eax,(%esp)
   36563:	e8 98 f7 ff ff       	call   35d00 <__lo0bits>
   36568:	85 c0                	test   %eax,%eax
   3656a:	0f 85 90 00 00 00    	jne    36600 <__d2b+0xf0>
   36570:	8b 55 e0             	mov    -0x20(%ebp),%edx
   36573:	89 56 14             	mov    %edx,0x14(%esi)
   36576:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   36579:	83 fa 01             	cmp    $0x1,%edx
   3657c:	19 ff                	sbb    %edi,%edi
   3657e:	83 c7 02             	add    $0x2,%edi
   36581:	85 db                	test   %ebx,%ebx
   36583:	89 56 18             	mov    %edx,0x18(%esi)
   36586:	89 7e 10             	mov    %edi,0x10(%esi)
   36589:	74 49                	je     365d4 <__d2b+0xc4>
   3658b:	8b 4d 14             	mov    0x14(%ebp),%ecx
   3658e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
   36595:	89 11                	mov    %edx,(%ecx)
   36597:	ba 35 00 00 00       	mov    $0x35,%edx
   3659c:	29 c2                	sub    %eax,%edx
   3659e:	8b 45 18             	mov    0x18(%ebp),%eax
   365a1:	89 10                	mov    %edx,(%eax)
   365a3:	83 c4 2c             	add    $0x2c,%esp
   365a6:	89 f0                	mov    %esi,%eax
   365a8:	5b                   	pop    %ebx
   365a9:	5e                   	pop    %esi
   365aa:	5f                   	pop    %edi
   365ab:	5d                   	pop    %ebp
   365ac:	c3                   	ret    
   365ad:	8d 76 00             	lea    0x0(%esi),%esi
   365b0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
   365b3:	bf 01 00 00 00       	mov    $0x1,%edi
   365b8:	89 04 24             	mov    %eax,(%esp)
   365bb:	e8 40 f7 ff ff       	call   35d00 <__lo0bits>
   365c0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   365c3:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
   365ca:	89 56 14             	mov    %edx,0x14(%esi)
   365cd:	83 c0 20             	add    $0x20,%eax
   365d0:	85 db                	test   %ebx,%ebx
   365d2:	75 b7                	jne    3658b <__d2b+0x7b>
   365d4:	8b 4d 14             	mov    0x14(%ebp),%ecx
   365d7:	2d 32 04 00 00       	sub    $0x432,%eax
   365dc:	89 01                	mov    %eax,(%ecx)
   365de:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
   365e2:	c1 e7 05             	shl    $0x5,%edi
   365e5:	89 04 24             	mov    %eax,(%esp)
   365e8:	e8 b3 f6 ff ff       	call   35ca0 <__hi0bits>
   365ed:	29 c7                	sub    %eax,%edi
   365ef:	8b 45 18             	mov    0x18(%ebp),%eax
   365f2:	89 38                	mov    %edi,(%eax)
   365f4:	83 c4 2c             	add    $0x2c,%esp
   365f7:	89 f0                	mov    %esi,%eax
   365f9:	5b                   	pop    %ebx
   365fa:	5e                   	pop    %esi
   365fb:	5f                   	pop    %edi
   365fc:	5d                   	pop    %ebp
   365fd:	c3                   	ret    
   365fe:	66 90                	xchg   %ax,%ax
   36600:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   36603:	b9 20 00 00 00       	mov    $0x20,%ecx
   36608:	29 c1                	sub    %eax,%ecx
   3660a:	89 d7                	mov    %edx,%edi
   3660c:	d3 e7                	shl    %cl,%edi
   3660e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   36611:	09 f9                	or     %edi,%ecx
   36613:	89 4e 14             	mov    %ecx,0x14(%esi)
   36616:	89 c1                	mov    %eax,%ecx
   36618:	d3 ea                	shr    %cl,%edx
   3661a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   3661d:	e9 57 ff ff ff       	jmp    36579 <__d2b+0x69>
   36622:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36629:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00036630 <__ratio>:
   36630:	55                   	push   %ebp
   36631:	89 e5                	mov    %esp,%ebp
   36633:	56                   	push   %esi
   36634:	53                   	push   %ebx
   36635:	83 ec 30             	sub    $0x30,%esp
   36638:	8b 75 08             	mov    0x8(%ebp),%esi
   3663b:	8d 45 f0             	lea    -0x10(%ebp),%eax
   3663e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   36641:	89 44 24 04          	mov    %eax,0x4(%esp)
   36645:	89 34 24             	mov    %esi,(%esp)
   36648:	e8 c3 fd ff ff       	call   36410 <__b2d>
   3664d:	8d 45 f4             	lea    -0xc(%ebp),%eax
   36650:	89 44 24 04          	mov    %eax,0x4(%esp)
   36654:	89 1c 24             	mov    %ebx,(%esp)
   36657:	dd 55 e0             	fstl   -0x20(%ebp)
   3665a:	dd 5d d8             	fstpl  -0x28(%ebp)
   3665d:	e8 ae fd ff ff       	call   36410 <__b2d>
   36662:	8b 46 10             	mov    0x10(%esi),%eax
   36665:	2b 43 10             	sub    0x10(%ebx),%eax
   36668:	8b 55 f0             	mov    -0x10(%ebp),%edx
   3666b:	2b 55 f4             	sub    -0xc(%ebp),%edx
   3666e:	c1 e0 05             	shl    $0x5,%eax
   36671:	01 d0                	add    %edx,%eax
   36673:	dd 55 d0             	fstl   -0x30(%ebp)
   36676:	85 c0                	test   %eax,%eax
   36678:	dd 45 d8             	fldl   -0x28(%ebp)
   3667b:	7e 1b                	jle    36698 <__ratio+0x68>
   3667d:	dd d8                	fstp   %st(0)
   3667f:	c1 e0 14             	shl    $0x14,%eax
   36682:	01 45 e4             	add    %eax,-0x1c(%ebp)
   36685:	dd 45 e0             	fldl   -0x20(%ebp)
   36688:	83 c4 30             	add    $0x30,%esp
   3668b:	5b                   	pop    %ebx
   3668c:	de f1                	fdivp  %st,%st(1)
   3668e:	5e                   	pop    %esi
   3668f:	5d                   	pop    %ebp
   36690:	c3                   	ret    
   36691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36698:	dd d9                	fstp   %st(1)
   3669a:	c1 e0 14             	shl    $0x14,%eax
   3669d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
   366a0:	dd 45 d0             	fldl   -0x30(%ebp)
   366a3:	83 c4 30             	add    $0x30,%esp
   366a6:	5b                   	pop    %ebx
   366a7:	de f9                	fdivrp %st,%st(1)
   366a9:	5e                   	pop    %esi
   366aa:	5d                   	pop    %ebp
   366ab:	c3                   	ret    
   366ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000366b0 <_mprec_log10>:
   366b0:	55                   	push   %ebp
   366b1:	89 e5                	mov    %esp,%ebp
   366b3:	8b 45 08             	mov    0x8(%ebp),%eax
   366b6:	83 f8 17             	cmp    $0x17,%eax
   366b9:	7e 1d                	jle    366d8 <_mprec_log10+0x28>
   366bb:	d9 e8                	fld1   
   366bd:	d9 05 c0 9a 03 00    	flds   0x39ac0
   366c3:	90                   	nop
   366c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   366c8:	83 e8 01             	sub    $0x1,%eax
   366cb:	dc c9                	fmul   %st,%st(1)
   366cd:	75 f9                	jne    366c8 <_mprec_log10+0x18>
   366cf:	dd d8                	fstp   %st(0)
   366d1:	5d                   	pop    %ebp
   366d2:	c3                   	ret    
   366d3:	90                   	nop
   366d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   366d8:	dd 04 c5 a0 9b 03 00 	fldl   0x39ba0(,%eax,8)
   366df:	5d                   	pop    %ebp
   366e0:	c3                   	ret    
   366e1:	eb 0d                	jmp    366f0 <__copybits>
   366e3:	90                   	nop
   366e4:	90                   	nop
   366e5:	90                   	nop
   366e6:	90                   	nop
   366e7:	90                   	nop
   366e8:	90                   	nop
   366e9:	90                   	nop
   366ea:	90                   	nop
   366eb:	90                   	nop
   366ec:	90                   	nop
   366ed:	90                   	nop
   366ee:	90                   	nop
   366ef:	90                   	nop

000366f0 <__copybits>:
   366f0:	55                   	push   %ebp
   366f1:	89 e5                	mov    %esp,%ebp
   366f3:	57                   	push   %edi
   366f4:	8b 7d 10             	mov    0x10(%ebp),%edi
   366f7:	56                   	push   %esi
   366f8:	8b 75 0c             	mov    0xc(%ebp),%esi
   366fb:	8b 45 08             	mov    0x8(%ebp),%eax
   366fe:	53                   	push   %ebx
   366ff:	8b 4f 10             	mov    0x10(%edi),%ecx
   36702:	8d 56 ff             	lea    -0x1(%esi),%edx
   36705:	c1 fa 05             	sar    $0x5,%edx
   36708:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
   3670c:	8d 57 14             	lea    0x14(%edi),%edx
   3670f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
   36712:	39 da                	cmp    %ebx,%edx
   36714:	73 34                	jae    3674a <__copybits+0x5a>
   36716:	89 c1                	mov    %eax,%ecx
   36718:	83 c2 04             	add    $0x4,%edx
   3671b:	8b 42 fc             	mov    -0x4(%edx),%eax
   3671e:	83 c1 04             	add    $0x4,%ecx
   36721:	39 d3                	cmp    %edx,%ebx
   36723:	89 41 fc             	mov    %eax,-0x4(%ecx)
   36726:	77 f0                	ja     36718 <__copybits+0x28>
   36728:	8b 45 08             	mov    0x8(%ebp),%eax
   3672b:	29 fb                	sub    %edi,%ebx
   3672d:	8d 53 eb             	lea    -0x15(%ebx),%edx
   36730:	c1 ea 02             	shr    $0x2,%edx
   36733:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
   36737:	39 c6                	cmp    %eax,%esi
   36739:	76 13                	jbe    3674e <__copybits+0x5e>
   3673b:	90                   	nop
   3673c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36740:	83 c0 04             	add    $0x4,%eax
   36743:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
   3674a:	39 c6                	cmp    %eax,%esi
   3674c:	77 f2                	ja     36740 <__copybits+0x50>
   3674e:	5b                   	pop    %ebx
   3674f:	5e                   	pop    %esi
   36750:	5f                   	pop    %edi
   36751:	5d                   	pop    %ebp
   36752:	c3                   	ret    
   36753:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36759:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00036760 <__any_on>:
   36760:	55                   	push   %ebp
   36761:	89 e5                	mov    %esp,%ebp
   36763:	8b 45 08             	mov    0x8(%ebp),%eax
   36766:	57                   	push   %edi
   36767:	56                   	push   %esi
   36768:	53                   	push   %ebx
   36769:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   3676c:	8d 50 14             	lea    0x14(%eax),%edx
   3676f:	8b 40 10             	mov    0x10(%eax),%eax
   36772:	c1 fb 05             	sar    $0x5,%ebx
   36775:	39 d8                	cmp    %ebx,%eax
   36777:	7d 2f                	jge    367a8 <__any_on+0x48>
   36779:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
   3677c:	39 da                	cmp    %ebx,%edx
   3677e:	73 1d                	jae    3679d <__any_on+0x3d>
   36780:	8d 43 fc             	lea    -0x4(%ebx),%eax
   36783:	8b 5b fc             	mov    -0x4(%ebx),%ebx
   36786:	85 db                	test   %ebx,%ebx
   36788:	74 0f                	je     36799 <__any_on+0x39>
   3678a:	eb 44                	jmp    367d0 <__any_on+0x70>
   3678c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36790:	83 e8 04             	sub    $0x4,%eax
   36793:	8b 08                	mov    (%eax),%ecx
   36795:	85 c9                	test   %ecx,%ecx
   36797:	75 37                	jne    367d0 <__any_on+0x70>
   36799:	39 c2                	cmp    %eax,%edx
   3679b:	72 f3                	jb     36790 <__any_on+0x30>
   3679d:	31 c0                	xor    %eax,%eax
   3679f:	5b                   	pop    %ebx
   367a0:	5e                   	pop    %esi
   367a1:	5f                   	pop    %edi
   367a2:	5d                   	pop    %ebp
   367a3:	c3                   	ret    
   367a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   367a8:	7e 1e                	jle    367c8 <__any_on+0x68>
   367aa:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   367ad:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
   367b0:	83 e1 1f             	and    $0x1f,%ecx
   367b3:	74 c7                	je     3677c <__any_on+0x1c>
   367b5:	8b 3b                	mov    (%ebx),%edi
   367b7:	b8 01 00 00 00       	mov    $0x1,%eax
   367bc:	89 fe                	mov    %edi,%esi
   367be:	d3 ee                	shr    %cl,%esi
   367c0:	d3 e6                	shl    %cl,%esi
   367c2:	39 fe                	cmp    %edi,%esi
   367c4:	75 d9                	jne    3679f <__any_on+0x3f>
   367c6:	eb b4                	jmp    3677c <__any_on+0x1c>
   367c8:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
   367cb:	eb af                	jmp    3677c <__any_on+0x1c>
   367cd:	8d 76 00             	lea    0x0(%esi),%esi
   367d0:	5b                   	pop    %ebx
   367d1:	b8 01 00 00 00       	mov    $0x1,%eax
   367d6:	5e                   	pop    %esi
   367d7:	5f                   	pop    %edi
   367d8:	5d                   	pop    %ebp
   367d9:	c3                   	ret    
   367da:	66 90                	xchg   %ax,%ax
   367dc:	66 90                	xchg   %ax,%ax
   367de:	66 90                	xchg   %ax,%ax

000367e0 <_sbrk_r>:
   367e0:	55                   	push   %ebp
   367e1:	89 e5                	mov    %esp,%ebp
   367e3:	83 ec 18             	sub    $0x18,%esp
   367e6:	8b 45 0c             	mov    0xc(%ebp),%eax
   367e9:	c7 05 00 50 09 00 00 	movl   $0x0,0x95000
   367f0:	00 00 00 
   367f3:	89 04 24             	mov    %eax,(%esp)
   367f6:	e8 a3 a0 ff ff       	call   3089e <sbrk>
   367fb:	83 f8 ff             	cmp    $0xffffffff,%eax
   367fe:	74 08                	je     36808 <_sbrk_r+0x28>
   36800:	c9                   	leave  
   36801:	c3                   	ret    
   36802:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36808:	8b 15 00 50 09 00    	mov    0x95000,%edx
   3680e:	85 d2                	test   %edx,%edx
   36810:	74 ee                	je     36800 <_sbrk_r+0x20>
   36812:	8b 4d 08             	mov    0x8(%ebp),%ecx
   36815:	89 11                	mov    %edx,(%ecx)
   36817:	c9                   	leave  
   36818:	c3                   	ret    
   36819:	66 90                	xchg   %ax,%ax
   3681b:	66 90                	xchg   %ax,%ax
   3681d:	66 90                	xchg   %ax,%ax
   3681f:	90                   	nop

00036820 <__fpclassifyd>:
   36820:	55                   	push   %ebp
   36821:	b8 02 00 00 00       	mov    $0x2,%eax
   36826:	89 e5                	mov    %esp,%ebp
   36828:	53                   	push   %ebx
   36829:	83 ec 0c             	sub    $0xc,%esp
   3682c:	dd 45 08             	fldl   0x8(%ebp)
   3682f:	dd 5d f0             	fstpl  -0x10(%ebp)
   36832:	8b 55 f0             	mov    -0x10(%ebp),%edx
   36835:	8b 4d f4             	mov    -0xc(%ebp),%ecx
   36838:	89 d3                	mov    %edx,%ebx
   3683a:	09 cb                	or     %ecx,%ebx
   3683c:	75 0a                	jne    36848 <__fpclassifyd+0x28>
   3683e:	83 c4 0c             	add    $0xc,%esp
   36841:	5b                   	pop    %ebx
   36842:	5d                   	pop    %ebp
   36843:	c3                   	ret    
   36844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36848:	85 d2                	test   %edx,%edx
   3684a:	0f 94 c2             	sete   %dl
   3684d:	75 08                	jne    36857 <__fpclassifyd+0x37>
   3684f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
   36855:	74 e7                	je     3683e <__fpclassifyd+0x1e>
   36857:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
   3685d:	b8 04 00 00 00       	mov    $0x4,%eax
   36862:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
   36868:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
   3686e:	76 ce                	jbe    3683e <__fpclassifyd+0x1e>
   36870:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
   36876:	b0 03                	mov    $0x3,%al
   36878:	76 c4                	jbe    3683e <__fpclassifyd+0x1e>
   3687a:	31 c0                	xor    %eax,%eax
   3687c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
   36882:	0f 94 c0             	sete   %al
   36885:	21 d0                	and    %edx,%eax
   36887:	eb b5                	jmp    3683e <__fpclassifyd+0x1e>
   36889:	66 90                	xchg   %ax,%ax
   3688b:	66 90                	xchg   %ax,%ax
   3688d:	66 90                	xchg   %ax,%ax
   3688f:	90                   	nop

00036890 <strcmp>:
   36890:	55                   	push   %ebp
   36891:	89 e5                	mov    %esp,%ebp
   36893:	8b 45 08             	mov    0x8(%ebp),%eax
   36896:	8b 55 0c             	mov    0xc(%ebp),%edx
   36899:	53                   	push   %ebx
   3689a:	89 c1                	mov    %eax,%ecx
   3689c:	09 d1                	or     %edx,%ecx
   3689e:	83 e1 03             	and    $0x3,%ecx
   368a1:	75 17                	jne    368ba <strcmp+0x2a>
   368a3:	8b 08                	mov    (%eax),%ecx
   368a5:	3b 0a                	cmp    (%edx),%ecx
   368a7:	74 33                	je     368dc <strcmp+0x4c>
   368a9:	eb 0f                	jmp    368ba <strcmp+0x2a>
   368ab:	90                   	nop
   368ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   368b0:	3a 0a                	cmp    (%edx),%cl
   368b2:	75 0d                	jne    368c1 <strcmp+0x31>
   368b4:	83 c0 01             	add    $0x1,%eax
   368b7:	83 c2 01             	add    $0x1,%edx
   368ba:	0f b6 08             	movzbl (%eax),%ecx
   368bd:	84 c9                	test   %cl,%cl
   368bf:	75 ef                	jne    368b0 <strcmp+0x20>
   368c1:	0f b6 00             	movzbl (%eax),%eax
   368c4:	0f b6 12             	movzbl (%edx),%edx
   368c7:	5b                   	pop    %ebx
   368c8:	5d                   	pop    %ebp
   368c9:	29 d0                	sub    %edx,%eax
   368cb:	c3                   	ret    
   368cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   368d0:	83 c0 04             	add    $0x4,%eax
   368d3:	83 c2 04             	add    $0x4,%edx
   368d6:	8b 08                	mov    (%eax),%ecx
   368d8:	3b 0a                	cmp    (%edx),%ecx
   368da:	75 de                	jne    368ba <strcmp+0x2a>
   368dc:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
   368e2:	f7 d1                	not    %ecx
   368e4:	21 cb                	and    %ecx,%ebx
   368e6:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
   368ec:	74 e2                	je     368d0 <strcmp+0x40>
   368ee:	31 c0                	xor    %eax,%eax
   368f0:	5b                   	pop    %ebx
   368f1:	5d                   	pop    %ebp
   368f2:	c3                   	ret    
   368f3:	66 90                	xchg   %ax,%ax
   368f5:	66 90                	xchg   %ax,%ax
   368f7:	66 90                	xchg   %ax,%ax
   368f9:	66 90                	xchg   %ax,%ax
   368fb:	66 90                	xchg   %ax,%ax
   368fd:	66 90                	xchg   %ax,%ax
   368ff:	90                   	nop

00036900 <strlen>:
   36900:	55                   	push   %ebp
   36901:	89 e5                	mov    %esp,%ebp
   36903:	57                   	push   %edi
   36904:	8b 55 08             	mov    0x8(%ebp),%edx
   36907:	89 d7                	mov    %edx,%edi
   36909:	f7 c7 03 00 00 00    	test   $0x3,%edi
   3690f:	74 25                	je     36936 <L5>
   36911:	8a 0f                	mov    (%edi),%cl
   36913:	47                   	inc    %edi
   36914:	84 c9                	test   %cl,%cl
   36916:	74 56                	je     3696e <L15>
   36918:	f7 c7 03 00 00 00    	test   $0x3,%edi
   3691e:	74 16                	je     36936 <L5>
   36920:	8a 0f                	mov    (%edi),%cl
   36922:	47                   	inc    %edi
   36923:	84 c9                	test   %cl,%cl
   36925:	74 47                	je     3696e <L15>
   36927:	f7 c7 03 00 00 00    	test   $0x3,%edi
   3692d:	74 07                	je     36936 <L5>
   3692f:	8a 0f                	mov    (%edi),%cl
   36931:	47                   	inc    %edi
   36932:	84 c9                	test   %cl,%cl
   36934:	74 38                	je     3696e <L15>

00036936 <L5>:
   36936:	83 ef 04             	sub    $0x4,%edi
   36939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00036940 <L10>:
   36940:	83 c7 04             	add    $0x4,%edi
   36943:	8b 0f                	mov    (%edi),%ecx
   36945:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
   3694b:	f7 d1                	not    %ecx
   3694d:	21 c8                	and    %ecx,%eax
   3694f:	a9 80 80 80 80       	test   $0x80808080,%eax
   36954:	74 ea                	je     36940 <L10>
   36956:	f7 d1                	not    %ecx
   36958:	47                   	inc    %edi
   36959:	84 c9                	test   %cl,%cl
   3695b:	74 11                	je     3696e <L15>
   3695d:	47                   	inc    %edi
   3695e:	c1 e9 08             	shr    $0x8,%ecx
   36961:	84 c9                	test   %cl,%cl
   36963:	74 09                	je     3696e <L15>
   36965:	47                   	inc    %edi
   36966:	c1 e9 08             	shr    $0x8,%ecx
   36969:	84 c9                	test   %cl,%cl
   3696b:	74 01                	je     3696e <L15>
   3696d:	47                   	inc    %edi

0003696e <L15>:
   3696e:	29 d7                	sub    %edx,%edi
   36970:	8d 47 ff             	lea    -0x1(%edi),%eax
   36973:	8d 65 fc             	lea    -0x4(%ebp),%esp
   36976:	5f                   	pop    %edi
   36977:	c9                   	leave  
   36978:	c3                   	ret    
   36979:	66 90                	xchg   %ax,%ax
   3697b:	66 90                	xchg   %ax,%ax
   3697d:	66 90                	xchg   %ax,%ax
   3697f:	90                   	nop

00036980 <__ssprint_r>:
   36980:	55                   	push   %ebp
   36981:	89 e5                	mov    %esp,%ebp
   36983:	57                   	push   %edi
   36984:	56                   	push   %esi
   36985:	53                   	push   %ebx
   36986:	83 ec 2c             	sub    $0x2c,%esp
   36989:	8b 45 10             	mov    0x10(%ebp),%eax
   3698c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   3698f:	8b 00                	mov    (%eax),%eax
   36991:	89 c7                	mov    %eax,%edi
   36993:	8b 45 10             	mov    0x10(%ebp),%eax
   36996:	8b 40 08             	mov    0x8(%eax),%eax
   36999:	85 c0                	test   %eax,%eax
   3699b:	0f 84 af 01 00 00    	je     36b50 <__ssprint_r+0x1d0>
   369a1:	31 c9                	xor    %ecx,%ecx
   369a3:	31 d2                	xor    %edx,%edx
   369a5:	8b 03                	mov    (%ebx),%eax
   369a7:	89 ce                	mov    %ecx,%esi
   369a9:	85 f6                	test   %esi,%esi
   369ab:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   369ae:	0f 84 ec 00 00 00    	je     36aa0 <__ssprint_r+0x120>
   369b4:	8b 53 08             	mov    0x8(%ebx),%edx
   369b7:	39 d6                	cmp    %edx,%esi
   369b9:	0f 82 fc 00 00 00    	jb     36abb <__ssprint_r+0x13b>
   369bf:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
   369c3:	66 f7 c1 80 04       	test   $0x480,%cx
   369c8:	0f 84 fa 00 00 00    	je     36ac8 <__ssprint_r+0x148>
   369ce:	8b 53 10             	mov    0x10(%ebx),%edx
   369d1:	29 d0                	sub    %edx,%eax
   369d3:	89 45 dc             	mov    %eax,-0x24(%ebp)
   369d6:	8b 43 14             	mov    0x14(%ebx),%eax
   369d9:	89 55 d8             	mov    %edx,-0x28(%ebp)
   369dc:	8d 04 40             	lea    (%eax,%eax,2),%eax
   369df:	89 c2                	mov    %eax,%edx
   369e1:	c1 ea 1f             	shr    $0x1f,%edx
   369e4:	01 d0                	add    %edx,%eax
   369e6:	89 45 e0             	mov    %eax,-0x20(%ebp)
   369e9:	8b 45 dc             	mov    -0x24(%ebp),%eax
   369ec:	d1 7d e0             	sarl   -0x20(%ebp)
   369ef:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
   369f3:	39 45 e0             	cmp    %eax,-0x20(%ebp)
   369f6:	0f 83 34 01 00 00    	jae    36b30 <__ssprint_r+0x1b0>
   369fc:	89 45 e0             	mov    %eax,-0x20(%ebp)
   369ff:	80 e5 04             	and    $0x4,%ch
   36a02:	0f 84 c8 00 00 00    	je     36ad0 <__ssprint_r+0x150>
   36a08:	89 44 24 04          	mov    %eax,0x4(%esp)
   36a0c:	8b 45 08             	mov    0x8(%ebp),%eax
   36a0f:	89 04 24             	mov    %eax,(%esp)
   36a12:	e8 e9 e7 ff ff       	call   35200 <_malloc_r>
   36a17:	85 c0                	test   %eax,%eax
   36a19:	89 c2                	mov    %eax,%edx
   36a1b:	0f 84 e1 00 00 00    	je     36b02 <__ssprint_r+0x182>
   36a21:	8b 45 dc             	mov    -0x24(%ebp),%eax
   36a24:	89 55 d8             	mov    %edx,-0x28(%ebp)
   36a27:	89 44 24 08          	mov    %eax,0x8(%esp)
   36a2b:	8b 43 10             	mov    0x10(%ebx),%eax
   36a2e:	89 14 24             	mov    %edx,(%esp)
   36a31:	89 44 24 04          	mov    %eax,0x4(%esp)
   36a35:	e8 0a b2 ff ff       	call   31c44 <memcpy>
   36a3a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
   36a3e:	8b 55 d8             	mov    -0x28(%ebp),%edx
   36a41:	66 25 7f fb          	and    $0xfb7f,%ax
   36a45:	0c 80                	or     $0x80,%al
   36a47:	66 89 43 0c          	mov    %ax,0xc(%ebx)
   36a4b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   36a4e:	8b 45 dc             	mov    -0x24(%ebp),%eax
   36a51:	89 53 10             	mov    %edx,0x10(%ebx)
   36a54:	89 4b 14             	mov    %ecx,0x14(%ebx)
   36a57:	2b 4d dc             	sub    -0x24(%ebp),%ecx
   36a5a:	01 d0                	add    %edx,%eax
   36a5c:	89 03                	mov    %eax,(%ebx)
   36a5e:	89 f2                	mov    %esi,%edx
   36a60:	89 4b 08             	mov    %ecx,0x8(%ebx)
   36a63:	89 f1                	mov    %esi,%ecx
   36a65:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   36a69:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   36a6c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36a6f:	89 04 24             	mov    %eax,(%esp)
   36a72:	89 55 dc             	mov    %edx,-0x24(%ebp)
   36a75:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   36a79:	e8 22 13 00 00       	call   37da0 <memmove>
   36a7e:	8b 03                	mov    (%ebx),%eax
   36a80:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   36a83:	8b 55 dc             	mov    -0x24(%ebp),%edx
   36a86:	29 53 08             	sub    %edx,0x8(%ebx)
   36a89:	01 c8                	add    %ecx,%eax
   36a8b:	8b 4d 10             	mov    0x10(%ebp),%ecx
   36a8e:	89 03                	mov    %eax,(%ebx)
   36a90:	8b 51 08             	mov    0x8(%ecx),%edx
   36a93:	29 f2                	sub    %esi,%edx
   36a95:	85 d2                	test   %edx,%edx
   36a97:	89 51 08             	mov    %edx,0x8(%ecx)
   36a9a:	0f 84 98 00 00 00    	je     36b38 <__ssprint_r+0x1b8>
   36aa0:	8b 77 04             	mov    0x4(%edi),%esi
   36aa3:	83 c7 08             	add    $0x8,%edi
   36aa6:	8b 4f f8             	mov    -0x8(%edi),%ecx
   36aa9:	85 f6                	test   %esi,%esi
   36aab:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   36aae:	74 f0                	je     36aa0 <__ssprint_r+0x120>
   36ab0:	8b 53 08             	mov    0x8(%ebx),%edx
   36ab3:	39 d6                	cmp    %edx,%esi
   36ab5:	0f 83 04 ff ff ff    	jae    369bf <__ssprint_r+0x3f>
   36abb:	89 f2                	mov    %esi,%edx
   36abd:	89 f1                	mov    %esi,%ecx
   36abf:	eb a4                	jmp    36a65 <__ssprint_r+0xe5>
   36ac1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36ac8:	89 d1                	mov    %edx,%ecx
   36aca:	eb 99                	jmp    36a65 <__ssprint_r+0xe5>
   36acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36ad0:	89 44 24 08          	mov    %eax,0x8(%esp)
   36ad4:	8b 45 d8             	mov    -0x28(%ebp),%eax
   36ad7:	89 44 24 04          	mov    %eax,0x4(%esp)
   36adb:	8b 45 08             	mov    0x8(%ebp),%eax
   36ade:	89 04 24             	mov    %eax,(%esp)
   36ae1:	e8 4a 13 00 00       	call   37e30 <_realloc_r>
   36ae6:	85 c0                	test   %eax,%eax
   36ae8:	89 c2                	mov    %eax,%edx
   36aea:	0f 85 5b ff ff ff    	jne    36a4b <__ssprint_r+0xcb>
   36af0:	8b 43 10             	mov    0x10(%ebx),%eax
   36af3:	89 44 24 04          	mov    %eax,0x4(%esp)
   36af7:	8b 45 08             	mov    0x8(%ebp),%eax
   36afa:	89 04 24             	mov    %eax,(%esp)
   36afd:	e8 3e 10 00 00       	call   37b40 <_free_r>
   36b02:	8b 45 08             	mov    0x8(%ebp),%eax
   36b05:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   36b0b:	8b 45 10             	mov    0x10(%ebp),%eax
   36b0e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
   36b13:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   36b1a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   36b21:	83 c4 2c             	add    $0x2c,%esp
   36b24:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   36b29:	5b                   	pop    %ebx
   36b2a:	5e                   	pop    %esi
   36b2b:	5f                   	pop    %edi
   36b2c:	5d                   	pop    %ebp
   36b2d:	c3                   	ret    
   36b2e:	66 90                	xchg   %ax,%ax
   36b30:	8b 45 e0             	mov    -0x20(%ebp),%eax
   36b33:	e9 c7 fe ff ff       	jmp    369ff <__ssprint_r+0x7f>
   36b38:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
   36b3f:	83 c4 2c             	add    $0x2c,%esp
   36b42:	31 c0                	xor    %eax,%eax
   36b44:	5b                   	pop    %ebx
   36b45:	5e                   	pop    %esi
   36b46:	5f                   	pop    %edi
   36b47:	5d                   	pop    %ebp
   36b48:	c3                   	ret    
   36b49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36b50:	8b 45 10             	mov    0x10(%ebp),%eax
   36b53:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   36b5a:	83 c4 2c             	add    $0x2c,%esp
   36b5d:	31 c0                	xor    %eax,%eax
   36b5f:	5b                   	pop    %ebx
   36b60:	5e                   	pop    %esi
   36b61:	5f                   	pop    %edi
   36b62:	5d                   	pop    %ebp
   36b63:	c3                   	ret    
   36b64:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36b6a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00036b70 <_svfiprintf_r>:
   36b70:	55                   	push   %ebp
   36b71:	89 e5                	mov    %esp,%ebp
   36b73:	57                   	push   %edi
   36b74:	56                   	push   %esi
   36b75:	53                   	push   %ebx
   36b76:	81 ec cc 00 00 00    	sub    $0xcc,%esp
   36b7c:	8b 45 0c             	mov    0xc(%ebp),%eax
   36b7f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
   36b83:	74 0b                	je     36b90 <_svfiprintf_r+0x20>
   36b85:	8b 50 10             	mov    0x10(%eax),%edx
   36b88:	85 d2                	test   %edx,%edx
   36b8a:	0f 84 1c 0d 00 00    	je     378ac <_svfiprintf_r+0xd3c>
   36b90:	8d 45 a8             	lea    -0x58(%ebp),%eax
   36b93:	8d 5d a7             	lea    -0x59(%ebp),%ebx
   36b96:	89 c6                	mov    %eax,%esi
   36b98:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
   36b9e:	29 d8                	sub    %ebx,%eax
   36ba0:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
   36ba7:	00 00 00 
   36baa:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   36bb1:	00 00 00 
   36bb4:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   36bbb:	00 00 00 
   36bbe:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
   36bc5:	00 00 00 
   36bc8:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
   36bce:	8b 45 10             	mov    0x10(%ebp),%eax
   36bd1:	8b 5d 10             	mov    0x10(%ebp),%ebx
   36bd4:	0f b6 00             	movzbl (%eax),%eax
   36bd7:	84 c0                	test   %al,%al
   36bd9:	74 58                	je     36c33 <_svfiprintf_r+0xc3>
   36bdb:	3c 25                	cmp    $0x25,%al
   36bdd:	75 13                	jne    36bf2 <_svfiprintf_r+0x82>
   36bdf:	eb 52                	jmp    36c33 <_svfiprintf_r+0xc3>
   36be1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36be8:	84 c0                	test   %al,%al
   36bea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36bf0:	74 0a                	je     36bfc <_svfiprintf_r+0x8c>
   36bf2:	83 c3 01             	add    $0x1,%ebx
   36bf5:	0f b6 03             	movzbl (%ebx),%eax
   36bf8:	3c 25                	cmp    $0x25,%al
   36bfa:	75 ec                	jne    36be8 <_svfiprintf_r+0x78>
   36bfc:	89 df                	mov    %ebx,%edi
   36bfe:	2b 7d 10             	sub    0x10(%ebp),%edi
   36c01:	74 30                	je     36c33 <_svfiprintf_r+0xc3>
   36c03:	8b 45 10             	mov    0x10(%ebp),%eax
   36c06:	83 c6 08             	add    $0x8,%esi
   36c09:	89 7e fc             	mov    %edi,-0x4(%esi)
   36c0c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
   36c12:	89 46 f8             	mov    %eax,-0x8(%esi)
   36c15:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36c1b:	83 c0 01             	add    $0x1,%eax
   36c1e:	83 f8 07             	cmp    $0x7,%eax
   36c21:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   36c27:	0f 8f eb 0a 00 00    	jg     37718 <_svfiprintf_r+0xba8>
   36c2d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
   36c33:	80 3b 00             	cmpb   $0x0,(%ebx)
   36c36:	0f 84 11 09 00 00    	je     3754d <_svfiprintf_r+0x9dd>
   36c3c:	8d 43 01             	lea    0x1(%ebx),%eax
   36c3f:	31 ff                	xor    %edi,%edi
   36c41:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   36c48:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
   36c4f:	ff ff ff 
   36c52:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
   36c59:	00 00 00 
   36c5c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
   36c63:	00 00 00 
   36c66:	8d 50 01             	lea    0x1(%eax),%edx
   36c69:	0f be 00             	movsbl (%eax),%eax
   36c6c:	8d 48 e0             	lea    -0x20(%eax),%ecx
   36c6f:	83 f9 58             	cmp    $0x58,%ecx
   36c72:	0f 87 63 03 00 00    	ja     36fdb <_svfiprintf_r+0x46b>
   36c78:	ff 24 8d 68 9c 03 00 	jmp    *0x39c68(,%ecx,4)
   36c7f:	90                   	nop
   36c80:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   36c87:	89 d0                	mov    %edx,%eax
   36c89:	eb db                	jmp    36c66 <_svfiprintf_r+0xf6>
   36c8b:	8b 45 14             	mov    0x14(%ebp),%eax
   36c8e:	8b 5d 14             	mov    0x14(%ebp),%ebx
   36c91:	8b 00                	mov    (%eax),%eax
   36c93:	83 c3 04             	add    $0x4,%ebx
   36c96:	89 5d 14             	mov    %ebx,0x14(%ebp)
   36c99:	85 c0                	test   %eax,%eax
   36c9b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
   36ca1:	79 e4                	jns    36c87 <_svfiprintf_r+0x117>
   36ca3:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
   36ca9:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
   36cb0:	89 d0                	mov    %edx,%eax
   36cb2:	eb b2                	jmp    36c66 <_svfiprintf_r+0xf6>
   36cb4:	bf 2b 00 00 00       	mov    $0x2b,%edi
   36cb9:	89 d0                	mov    %edx,%eax
   36cbb:	eb a9                	jmp    36c66 <_svfiprintf_r+0xf6>
   36cbd:	8b 45 14             	mov    0x14(%ebp),%eax
   36cc0:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
   36cc7:	89 55 10             	mov    %edx,0x10(%ebp)
   36cca:	ba 02 00 00 00       	mov    $0x2,%edx
   36ccf:	8b 08                	mov    (%eax),%ecx
   36cd1:	83 c0 04             	add    $0x4,%eax
   36cd4:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
   36cdb:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
   36ce2:	89 45 14             	mov    %eax,0x14(%ebp)
   36ce5:	c7 85 44 ff ff ff 07 	movl   $0x39907,-0xbc(%ebp)
   36cec:	99 03 00 
   36cef:	90                   	nop
   36cf0:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   36cf7:	31 ff                	xor    %edi,%edi
   36cf9:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
   36cff:	89 d8                	mov    %ebx,%eax
   36d01:	24 7f                	and    $0x7f,%al
   36d03:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
   36d0a:	0f 48 c3             	cmovs  %ebx,%eax
   36d0d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
   36d13:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   36d19:	85 c0                	test   %eax,%eax
   36d1b:	75 08                	jne    36d25 <_svfiprintf_r+0x1b5>
   36d1d:	85 c9                	test   %ecx,%ecx
   36d1f:	0f 84 03 08 00 00    	je     37528 <_svfiprintf_r+0x9b8>
   36d25:	80 fa 01             	cmp    $0x1,%dl
   36d28:	0f 84 8a 0a 00 00    	je     377b8 <_svfiprintf_r+0xc48>
   36d2e:	80 fa 02             	cmp    $0x2,%dl
   36d31:	8d 5d a8             	lea    -0x58(%ebp),%ebx
   36d34:	0f 85 86 01 00 00    	jne    36ec0 <_svfiprintf_r+0x350>
   36d3a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   36d40:	89 c8                	mov    %ecx,%eax
   36d42:	83 eb 01             	sub    $0x1,%ebx
   36d45:	83 e0 0f             	and    $0xf,%eax
   36d48:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
   36d4c:	c1 e9 04             	shr    $0x4,%ecx
   36d4f:	85 c9                	test   %ecx,%ecx
   36d51:	88 03                	mov    %al,(%ebx)
   36d53:	75 eb                	jne    36d40 <_svfiprintf_r+0x1d0>
   36d55:	8d 45 a8             	lea    -0x58(%ebp),%eax
   36d58:	29 d8                	sub    %ebx,%eax
   36d5a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   36d60:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   36d66:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
   36d6c:	39 c1                	cmp    %eax,%ecx
   36d6e:	0f 4d c1             	cmovge %ecx,%eax
   36d71:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
   36d77:	89 f8                	mov    %edi,%eax
   36d79:	3c 01                	cmp    $0x1,%al
   36d7b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
   36d82:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
   36d88:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
   36d8e:	89 d0                	mov    %edx,%eax
   36d90:	89 cf                	mov    %ecx,%edi
   36d92:	83 c0 02             	add    $0x2,%eax
   36d95:	83 e7 02             	and    $0x2,%edi
   36d98:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
   36d9e:	89 cf                	mov    %ecx,%edi
   36da0:	0f 44 c2             	cmove  %edx,%eax
   36da3:	81 e7 84 00 00 00    	and    $0x84,%edi
   36da9:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
   36daf:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   36db5:	0f 85 cd 04 00 00    	jne    37288 <_svfiprintf_r+0x718>
   36dbb:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
   36dc1:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
   36dc7:	85 ff                	test   %edi,%edi
   36dc9:	0f 8e b9 04 00 00    	jle    37288 <_svfiprintf_r+0x718>
   36dcf:	83 ff 10             	cmp    $0x10,%edi
   36dd2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   36dd8:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36dde:	7e 7c                	jle    36e5c <_svfiprintf_r+0x2ec>
   36de0:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
   36de6:	89 f1                	mov    %esi,%ecx
   36de8:	8b 5d 08             	mov    0x8(%ebp),%ebx
   36deb:	8b 75 0c             	mov    0xc(%ebp),%esi
   36dee:	eb 08                	jmp    36df8 <_svfiprintf_r+0x288>
   36df0:	83 ef 10             	sub    $0x10,%edi
   36df3:	83 ff 10             	cmp    $0x10,%edi
   36df6:	7e 5c                	jle    36e54 <_svfiprintf_r+0x2e4>
   36df8:	83 c0 01             	add    $0x1,%eax
   36dfb:	83 c2 10             	add    $0x10,%edx
   36dfe:	c7 01 dc 9d 03 00    	movl   $0x39ddc,(%ecx)
   36e04:	83 c1 08             	add    $0x8,%ecx
   36e07:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   36e0e:	83 f8 07             	cmp    $0x7,%eax
   36e11:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   36e17:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   36e1d:	7e d1                	jle    36df0 <_svfiprintf_r+0x280>
   36e1f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   36e25:	89 44 24 08          	mov    %eax,0x8(%esp)
   36e29:	89 74 24 04          	mov    %esi,0x4(%esp)
   36e2d:	89 1c 24             	mov    %ebx,(%esp)
   36e30:	e8 4b fb ff ff       	call   36980 <__ssprint_r>
   36e35:	85 c0                	test   %eax,%eax
   36e37:	0f 85 3b 07 00 00    	jne    37578 <_svfiprintf_r+0xa08>
   36e3d:	83 ef 10             	sub    $0x10,%edi
   36e40:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   36e46:	83 ff 10             	cmp    $0x10,%edi
   36e49:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36e4f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   36e52:	7f a4                	jg     36df8 <_svfiprintf_r+0x288>
   36e54:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
   36e5a:	89 ce                	mov    %ecx,%esi
   36e5c:	83 c0 01             	add    $0x1,%eax
   36e5f:	01 fa                	add    %edi,%edx
   36e61:	c7 06 dc 9d 03 00    	movl   $0x39ddc,(%esi)
   36e67:	83 c6 08             	add    $0x8,%esi
   36e6a:	89 7e fc             	mov    %edi,-0x4(%esi)
   36e6d:	83 f8 07             	cmp    $0x7,%eax
   36e70:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   36e76:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   36e7c:	0f 8e 12 04 00 00    	jle    37294 <_svfiprintf_r+0x724>
   36e82:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   36e88:	89 44 24 08          	mov    %eax,0x8(%esp)
   36e8c:	8b 45 0c             	mov    0xc(%ebp),%eax
   36e8f:	89 44 24 04          	mov    %eax,0x4(%esp)
   36e93:	8b 45 08             	mov    0x8(%ebp),%eax
   36e96:	89 04 24             	mov    %eax,(%esp)
   36e99:	e8 e2 fa ff ff       	call   36980 <__ssprint_r>
   36e9e:	85 c0                	test   %eax,%eax
   36ea0:	0f 85 d2 06 00 00    	jne    37578 <_svfiprintf_r+0xa08>
   36ea6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   36eac:	8d 75 a8             	lea    -0x58(%ebp),%esi
   36eaf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36eb5:	e9 da 03 00 00       	jmp    37294 <_svfiprintf_r+0x724>
   36eba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36ec0:	89 c8                	mov    %ecx,%eax
   36ec2:	83 eb 01             	sub    $0x1,%ebx
   36ec5:	83 e0 07             	and    $0x7,%eax
   36ec8:	c1 e9 03             	shr    $0x3,%ecx
   36ecb:	83 c0 30             	add    $0x30,%eax
   36ece:	85 c9                	test   %ecx,%ecx
   36ed0:	88 03                	mov    %al,(%ebx)
   36ed2:	75 ec                	jne    36ec0 <_svfiprintf_r+0x350>
   36ed4:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
   36edb:	89 da                	mov    %ebx,%edx
   36edd:	0f 84 72 fe ff ff    	je     36d55 <_svfiprintf_r+0x1e5>
   36ee3:	3c 30                	cmp    $0x30,%al
   36ee5:	0f 84 6a fe ff ff    	je     36d55 <_svfiprintf_r+0x1e5>
   36eeb:	83 eb 01             	sub    $0x1,%ebx
   36eee:	8d 45 a8             	lea    -0x58(%ebp),%eax
   36ef1:	29 d8                	sub    %ebx,%eax
   36ef3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
   36ef7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   36efd:	e9 5e fe ff ff       	jmp    36d60 <_svfiprintf_r+0x1f0>
   36f02:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   36f09:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   36f10:	89 55 10             	mov    %edx,0x10(%ebp)
   36f13:	8b 45 14             	mov    0x14(%ebp),%eax
   36f16:	0f 85 48 01 00 00    	jne    37064 <_svfiprintf_r+0x4f4>
   36f1c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   36f23:	0f 84 3b 01 00 00    	je     37064 <_svfiprintf_r+0x4f4>
   36f29:	0f b7 08             	movzwl (%eax),%ecx
   36f2c:	83 c0 04             	add    $0x4,%eax
   36f2f:	31 d2                	xor    %edx,%edx
   36f31:	89 45 14             	mov    %eax,0x14(%ebp)
   36f34:	e9 b7 fd ff ff       	jmp    36cf0 <_svfiprintf_r+0x180>
   36f39:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   36f40:	89 f8                	mov    %edi,%eax
   36f42:	89 55 10             	mov    %edx,0x10(%ebp)
   36f45:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
   36f4b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   36f52:	8b 45 14             	mov    0x14(%ebp),%eax
   36f55:	75 0d                	jne    36f64 <_svfiprintf_r+0x3f4>
   36f57:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   36f5e:	0f 85 f2 08 00 00    	jne    37856 <_svfiprintf_r+0xce6>
   36f64:	8b 08                	mov    (%eax),%ecx
   36f66:	83 c0 04             	add    $0x4,%eax
   36f69:	89 45 14             	mov    %eax,0x14(%ebp)
   36f6c:	85 c9                	test   %ecx,%ecx
   36f6e:	0f 88 f3 08 00 00    	js     37867 <_svfiprintf_r+0xcf7>
   36f74:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   36f7b:	ba 01 00 00 00       	mov    $0x1,%edx
   36f80:	e9 74 fd ff ff       	jmp    36cf9 <_svfiprintf_r+0x189>
   36f85:	0f be 02             	movsbl (%edx),%eax
   36f88:	8d 5a 01             	lea    0x1(%edx),%ebx
   36f8b:	83 f8 2a             	cmp    $0x2a,%eax
   36f8e:	0f 84 af 09 00 00    	je     37943 <_svfiprintf_r+0xdd3>
   36f94:	8d 48 d0             	lea    -0x30(%eax),%ecx
   36f97:	31 d2                	xor    %edx,%edx
   36f99:	83 f9 09             	cmp    $0x9,%ecx
   36f9c:	0f 87 90 09 00 00    	ja     37932 <_svfiprintf_r+0xdc2>
   36fa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36fa8:	8d 04 92             	lea    (%edx,%edx,4),%eax
   36fab:	83 c3 01             	add    $0x1,%ebx
   36fae:	8d 14 41             	lea    (%ecx,%eax,2),%edx
   36fb1:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
   36fb5:	8d 48 d0             	lea    -0x30(%eax),%ecx
   36fb8:	83 f9 09             	cmp    $0x9,%ecx
   36fbb:	76 eb                	jbe    36fa8 <_svfiprintf_r+0x438>
   36fbd:	85 d2                	test   %edx,%edx
   36fbf:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   36fc4:	0f 48 d1             	cmovs  %ecx,%edx
   36fc7:	8d 48 e0             	lea    -0x20(%eax),%ecx
   36fca:	83 f9 58             	cmp    $0x58,%ecx
   36fcd:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
   36fd3:	89 da                	mov    %ebx,%edx
   36fd5:	0f 86 9d fc ff ff    	jbe    36c78 <_svfiprintf_r+0x108>
   36fdb:	89 fb                	mov    %edi,%ebx
   36fdd:	85 c0                	test   %eax,%eax
   36fdf:	89 55 10             	mov    %edx,0x10(%ebp)
   36fe2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
   36fe8:	0f 84 5f 05 00 00    	je     3754d <_svfiprintf_r+0x9dd>
   36fee:	88 45 80             	mov    %al,-0x80(%ebp)
   36ff1:	8d 5d 80             	lea    -0x80(%ebp),%ebx
   36ff4:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   36ffb:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
   37002:	00 00 00 
   37005:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
   3700c:	00 00 00 
   3700f:	e9 5a 01 00 00       	jmp    3716e <_svfiprintf_r+0x5fe>
   37014:	31 db                	xor    %ebx,%ebx
   37016:	8d 48 d0             	lea    -0x30(%eax),%ecx
   37019:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37020:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
   37023:	83 c2 01             	add    $0x1,%edx
   37026:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
   37029:	0f be 42 ff          	movsbl -0x1(%edx),%eax
   3702d:	8d 48 d0             	lea    -0x30(%eax),%ecx
   37030:	83 f9 09             	cmp    $0x9,%ecx
   37033:	76 eb                	jbe    37020 <_svfiprintf_r+0x4b0>
   37035:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
   3703b:	e9 2c fc ff ff       	jmp    36c6c <_svfiprintf_r+0xfc>
   37040:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
   37047:	00 00 00 
   3704a:	89 d0                	mov    %edx,%eax
   3704c:	e9 15 fc ff ff       	jmp    36c66 <_svfiprintf_r+0xf6>
   37051:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   37058:	89 55 10             	mov    %edx,0x10(%ebp)
   3705b:	8b 45 14             	mov    0x14(%ebp),%eax
   3705e:	0f 84 b8 fe ff ff    	je     36f1c <_svfiprintf_r+0x3ac>
   37064:	8b 08                	mov    (%eax),%ecx
   37066:	83 c0 04             	add    $0x4,%eax
   37069:	31 d2                	xor    %edx,%edx
   3706b:	89 45 14             	mov    %eax,0x14(%ebp)
   3706e:	e9 7d fc ff ff       	jmp    36cf0 <_svfiprintf_r+0x180>
   37073:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   3707a:	89 f8                	mov    %edi,%eax
   3707c:	89 55 10             	mov    %edx,0x10(%ebp)
   3707f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
   37085:	0f 85 a2 07 00 00    	jne    3782d <_svfiprintf_r+0xcbd>
   3708b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   37092:	0f 84 95 07 00 00    	je     3782d <_svfiprintf_r+0xcbd>
   37098:	8b 45 14             	mov    0x14(%ebp),%eax
   3709b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
   370a2:	8b 00                	mov    (%eax),%eax
   370a4:	66 89 18             	mov    %bx,(%eax)
   370a7:	8b 45 14             	mov    0x14(%ebp),%eax
   370aa:	83 c0 04             	add    $0x4,%eax
   370ad:	89 45 14             	mov    %eax,0x14(%ebp)
   370b0:	e9 19 fb ff ff       	jmp    36bce <_svfiprintf_r+0x5e>
   370b5:	89 fb                	mov    %edi,%ebx
   370b7:	89 55 10             	mov    %edx,0x10(%ebp)
   370ba:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
   370c0:	c7 85 44 ff ff ff 07 	movl   $0x39907,-0xbc(%ebp)
   370c7:	99 03 00 
   370ca:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   370d1:	8b 5d 14             	mov    0x14(%ebp),%ebx
   370d4:	75 0d                	jne    370e3 <_svfiprintf_r+0x573>
   370d6:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   370dd:	0f 85 65 07 00 00    	jne    37848 <_svfiprintf_r+0xcd8>
   370e3:	8b 0b                	mov    (%ebx),%ecx
   370e5:	83 c3 04             	add    $0x4,%ebx
   370e8:	89 5d 14             	mov    %ebx,0x14(%ebp)
   370eb:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
   370f2:	ba 02 00 00 00       	mov    $0x2,%edx
   370f7:	0f 84 f3 fb ff ff    	je     36cf0 <_svfiprintf_r+0x180>
   370fd:	85 c9                	test   %ecx,%ecx
   370ff:	0f 84 eb fb ff ff    	je     36cf0 <_svfiprintf_r+0x180>
   37105:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
   3710c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
   37112:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
   37119:	e9 d2 fb ff ff       	jmp    36cf0 <_svfiprintf_r+0x180>
   3711e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
   37125:	89 d0                	mov    %edx,%eax
   37127:	e9 3a fb ff ff       	jmp    36c66 <_svfiprintf_r+0xf6>
   3712c:	89 f8                	mov    %edi,%eax
   3712e:	89 55 10             	mov    %edx,0x10(%ebp)
   37131:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
   37137:	e9 0f fe ff ff       	jmp    36f4b <_svfiprintf_r+0x3db>
   3713c:	8b 45 14             	mov    0x14(%ebp),%eax
   3713f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
   37142:	89 55 10             	mov    %edx,0x10(%ebp)
   37145:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   3714c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
   37153:	00 00 00 
   37156:	8b 00                	mov    (%eax),%eax
   37158:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
   3715f:	00 00 00 
   37162:	88 45 80             	mov    %al,-0x80(%ebp)
   37165:	8b 45 14             	mov    0x14(%ebp),%eax
   37168:	83 c0 04             	add    $0x4,%eax
   3716b:	89 45 14             	mov    %eax,0x14(%ebp)
   3716e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   37175:	00 00 00 
   37178:	e9 05 fc ff ff       	jmp    36d82 <_svfiprintf_r+0x212>
   3717d:	89 fb                	mov    %edi,%ebx
   3717f:	89 55 10             	mov    %edx,0x10(%ebp)
   37182:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
   37188:	c7 85 44 ff ff ff f6 	movl   $0x398f6,-0xbc(%ebp)
   3718f:	98 03 00 
   37192:	e9 33 ff ff ff       	jmp    370ca <_svfiprintf_r+0x55a>
   37197:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   3719e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   371a5:	89 55 10             	mov    %edx,0x10(%ebp)
   371a8:	8b 45 14             	mov    0x14(%ebp),%eax
   371ab:	75 39                	jne    371e6 <_svfiprintf_r+0x676>
   371ad:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   371b4:	74 30                	je     371e6 <_svfiprintf_r+0x676>
   371b6:	0f b7 08             	movzwl (%eax),%ecx
   371b9:	83 c0 04             	add    $0x4,%eax
   371bc:	ba 01 00 00 00       	mov    $0x1,%edx
   371c1:	89 45 14             	mov    %eax,0x14(%ebp)
   371c4:	e9 27 fb ff ff       	jmp    36cf0 <_svfiprintf_r+0x180>
   371c9:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
   371d0:	89 d0                	mov    %edx,%eax
   371d2:	e9 8f fa ff ff       	jmp    36c66 <_svfiprintf_r+0xf6>
   371d7:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   371de:	89 55 10             	mov    %edx,0x10(%ebp)
   371e1:	8b 45 14             	mov    0x14(%ebp),%eax
   371e4:	74 c7                	je     371ad <_svfiprintf_r+0x63d>
   371e6:	8b 08                	mov    (%eax),%ecx
   371e8:	83 c0 04             	add    $0x4,%eax
   371eb:	ba 01 00 00 00       	mov    $0x1,%edx
   371f0:	89 45 14             	mov    %eax,0x14(%ebp)
   371f3:	e9 f8 fa ff ff       	jmp    36cf0 <_svfiprintf_r+0x180>
   371f8:	8b 45 14             	mov    0x14(%ebp),%eax
   371fb:	89 55 10             	mov    %edx,0x10(%ebp)
   371fe:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   37205:	8b 18                	mov    (%eax),%ebx
   37207:	8d 50 04             	lea    0x4(%eax),%edx
   3720a:	85 db                	test   %ebx,%ebx
   3720c:	0f 84 cc 06 00 00    	je     378de <_svfiprintf_r+0xd6e>
   37212:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
   37218:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
   3721e:	85 ff                	test   %edi,%edi
   37220:	0f 88 59 06 00 00    	js     3787f <_svfiprintf_r+0xd0f>
   37226:	89 7c 24 08          	mov    %edi,0x8(%esp)
   3722a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   37231:	00 
   37232:	89 1c 24             	mov    %ebx,(%esp)
   37235:	e8 06 e7 ff ff       	call   35940 <memchr>
   3723a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
   37240:	85 c0                	test   %eax,%eax
   37242:	0f 84 c5 06 00 00    	je     3790d <_svfiprintf_r+0xd9d>
   37248:	29 d8                	sub    %ebx,%eax
   3724a:	39 f8                	cmp    %edi,%eax
   3724c:	0f 4f c7             	cmovg  %edi,%eax
   3724f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   37256:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   3725c:	89 55 14             	mov    %edx,0x14(%ebp)
   3725f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   37266:	00 00 00 
   37269:	e9 f2 fa ff ff       	jmp    36d60 <_svfiprintf_r+0x1f0>
   3726e:	89 f8                	mov    %edi,%eax
   37270:	84 c0                	test   %al,%al
   37272:	b8 20 00 00 00       	mov    $0x20,%eax
   37277:	0f 44 f8             	cmove  %eax,%edi
   3727a:	89 d0                	mov    %edx,%eax
   3727c:	e9 e5 f9 ff ff       	jmp    36c66 <_svfiprintf_r+0xf6>
   37281:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37288:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3728e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   37294:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
   3729b:	74 2e                	je     372cb <_svfiprintf_r+0x75b>
   3729d:	83 c0 01             	add    $0x1,%eax
   372a0:	83 c2 01             	add    $0x1,%edx
   372a3:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
   372a9:	83 c6 08             	add    $0x8,%esi
   372ac:	89 4e f8             	mov    %ecx,-0x8(%esi)
   372af:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
   372b6:	83 f8 07             	cmp    $0x7,%eax
   372b9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   372bf:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   372c5:	0f 8f b5 04 00 00    	jg     37780 <_svfiprintf_r+0xc10>
   372cb:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
   372d1:	85 c9                	test   %ecx,%ecx
   372d3:	74 2e                	je     37303 <_svfiprintf_r+0x793>
   372d5:	83 c0 01             	add    $0x1,%eax
   372d8:	83 c2 02             	add    $0x2,%edx
   372db:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
   372e1:	83 c6 08             	add    $0x8,%esi
   372e4:	89 4e f8             	mov    %ecx,-0x8(%esi)
   372e7:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
   372ee:	83 f8 07             	cmp    $0x7,%eax
   372f1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   372f7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   372fd:	0f 8f 45 04 00 00    	jg     37748 <_svfiprintf_r+0xbd8>
   37303:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
   3730a:	00 00 00 
   3730d:	0f 84 9d 02 00 00    	je     375b0 <_svfiprintf_r+0xa40>
   37313:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
   37319:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
   3731f:	85 ff                	test   %edi,%edi
   37321:	0f 8e e1 00 00 00    	jle    37408 <_svfiprintf_r+0x898>
   37327:	83 ff 10             	cmp    $0x10,%edi
   3732a:	0f 8e 7c 00 00 00    	jle    373ac <_svfiprintf_r+0x83c>
   37330:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
   37336:	89 f1                	mov    %esi,%ecx
   37338:	8b 5d 08             	mov    0x8(%ebp),%ebx
   3733b:	8b 75 0c             	mov    0xc(%ebp),%esi
   3733e:	eb 08                	jmp    37348 <_svfiprintf_r+0x7d8>
   37340:	83 ef 10             	sub    $0x10,%edi
   37343:	83 ff 10             	cmp    $0x10,%edi
   37346:	7e 5c                	jle    373a4 <_svfiprintf_r+0x834>
   37348:	83 c0 01             	add    $0x1,%eax
   3734b:	83 c2 10             	add    $0x10,%edx
   3734e:	c7 01 cc 9d 03 00    	movl   $0x39dcc,(%ecx)
   37354:	83 c1 08             	add    $0x8,%ecx
   37357:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   3735e:	83 f8 07             	cmp    $0x7,%eax
   37361:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37367:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3736d:	7e d1                	jle    37340 <_svfiprintf_r+0x7d0>
   3736f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37375:	89 44 24 08          	mov    %eax,0x8(%esp)
   37379:	89 74 24 04          	mov    %esi,0x4(%esp)
   3737d:	89 1c 24             	mov    %ebx,(%esp)
   37380:	e8 fb f5 ff ff       	call   36980 <__ssprint_r>
   37385:	85 c0                	test   %eax,%eax
   37387:	0f 85 eb 01 00 00    	jne    37578 <_svfiprintf_r+0xa08>
   3738d:	83 ef 10             	sub    $0x10,%edi
   37390:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   37396:	83 ff 10             	cmp    $0x10,%edi
   37399:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3739f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   373a2:	7f a4                	jg     37348 <_svfiprintf_r+0x7d8>
   373a4:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   373aa:	89 ce                	mov    %ecx,%esi
   373ac:	83 c0 01             	add    $0x1,%eax
   373af:	01 fa                	add    %edi,%edx
   373b1:	c7 06 cc 9d 03 00    	movl   $0x39dcc,(%esi)
   373b7:	83 c6 08             	add    $0x8,%esi
   373ba:	89 7e fc             	mov    %edi,-0x4(%esi)
   373bd:	83 f8 07             	cmp    $0x7,%eax
   373c0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   373c6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   373cc:	7e 3a                	jle    37408 <_svfiprintf_r+0x898>
   373ce:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   373d4:	89 44 24 08          	mov    %eax,0x8(%esp)
   373d8:	8b 45 0c             	mov    0xc(%ebp),%eax
   373db:	89 44 24 04          	mov    %eax,0x4(%esp)
   373df:	8b 45 08             	mov    0x8(%ebp),%eax
   373e2:	89 04 24             	mov    %eax,(%esp)
   373e5:	e8 96 f5 ff ff       	call   36980 <__ssprint_r>
   373ea:	85 c0                	test   %eax,%eax
   373ec:	0f 85 86 01 00 00    	jne    37578 <_svfiprintf_r+0xa08>
   373f2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   373f8:	8d 75 a8             	lea    -0x58(%ebp),%esi
   373fb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   37401:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37408:	89 1e                	mov    %ebx,(%esi)
   3740a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
   37410:	83 c0 01             	add    $0x1,%eax
   37413:	83 c6 08             	add    $0x8,%esi
   37416:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3741c:	89 5e fc             	mov    %ebx,-0x4(%esi)
   3741f:	01 da                	add    %ebx,%edx
   37421:	83 f8 07             	cmp    $0x7,%eax
   37424:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   3742a:	0f 8f 80 02 00 00    	jg     376b0 <_svfiprintf_r+0xb40>
   37430:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
   37437:	0f 84 b9 00 00 00    	je     374f6 <_svfiprintf_r+0x986>
   3743d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
   37443:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
   37449:	85 ff                	test   %edi,%edi
   3744b:	0f 8e a5 00 00 00    	jle    374f6 <_svfiprintf_r+0x986>
   37451:	83 ff 10             	cmp    $0x10,%edi
   37454:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3745a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   37460:	7e 71                	jle    374d3 <_svfiprintf_r+0x963>
   37462:	89 f1                	mov    %esi,%ecx
   37464:	8b 75 08             	mov    0x8(%ebp),%esi
   37467:	eb 0f                	jmp    37478 <_svfiprintf_r+0x908>
   37469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37470:	83 ef 10             	sub    $0x10,%edi
   37473:	83 ff 10             	cmp    $0x10,%edi
   37476:	7e 59                	jle    374d1 <_svfiprintf_r+0x961>
   37478:	83 c0 01             	add    $0x1,%eax
   3747b:	83 c2 10             	add    $0x10,%edx
   3747e:	c7 01 dc 9d 03 00    	movl   $0x39ddc,(%ecx)
   37484:	83 c1 08             	add    $0x8,%ecx
   37487:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   3748e:	83 f8 07             	cmp    $0x7,%eax
   37491:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37497:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3749d:	7e d1                	jle    37470 <_svfiprintf_r+0x900>
   3749f:	8b 45 0c             	mov    0xc(%ebp),%eax
   374a2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   374a6:	89 34 24             	mov    %esi,(%esp)
   374a9:	89 44 24 04          	mov    %eax,0x4(%esp)
   374ad:	e8 ce f4 ff ff       	call   36980 <__ssprint_r>
   374b2:	85 c0                	test   %eax,%eax
   374b4:	0f 85 be 00 00 00    	jne    37578 <_svfiprintf_r+0xa08>
   374ba:	83 ef 10             	sub    $0x10,%edi
   374bd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   374c3:	83 ff 10             	cmp    $0x10,%edi
   374c6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   374cc:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   374cf:	7f a7                	jg     37478 <_svfiprintf_r+0x908>
   374d1:	89 ce                	mov    %ecx,%esi
   374d3:	83 c0 01             	add    $0x1,%eax
   374d6:	01 fa                	add    %edi,%edx
   374d8:	83 f8 07             	cmp    $0x7,%eax
   374db:	c7 06 dc 9d 03 00    	movl   $0x39ddc,(%esi)
   374e1:	89 7e 04             	mov    %edi,0x4(%esi)
   374e4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   374ea:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   374f0:	0f 8f ee 02 00 00    	jg     377e4 <_svfiprintf_r+0xc74>
   374f6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
   374fc:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
   37502:	39 c6                	cmp    %eax,%esi
   37504:	0f 4d c6             	cmovge %esi,%eax
   37507:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
   3750d:	85 d2                	test   %edx,%edx
   3750f:	0f 85 d3 01 00 00    	jne    376e8 <_svfiprintf_r+0xb78>
   37515:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   3751c:	00 00 00 
   3751f:	8d 75 a8             	lea    -0x58(%ebp),%esi
   37522:	e9 a7 f6 ff ff       	jmp    36bce <_svfiprintf_r+0x5e>
   37527:	90                   	nop
   37528:	84 d2                	test   %dl,%dl
   3752a:	75 6c                	jne    37598 <_svfiprintf_r+0xa28>
   3752c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
   37533:	74 63                	je     37598 <_svfiprintf_r+0xa28>
   37535:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
   3753b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
   3753e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
   37542:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   37548:	e9 13 f8 ff ff       	jmp    36d60 <_svfiprintf_r+0x1f0>
   3754d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
   37553:	85 c0                	test   %eax,%eax
   37555:	74 21                	je     37578 <_svfiprintf_r+0xa08>
   37557:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3755d:	89 44 24 08          	mov    %eax,0x8(%esp)
   37561:	8b 45 0c             	mov    0xc(%ebp),%eax
   37564:	89 44 24 04          	mov    %eax,0x4(%esp)
   37568:	8b 45 08             	mov    0x8(%ebp),%eax
   3756b:	89 04 24             	mov    %eax,(%esp)
   3756e:	e8 0d f4 ff ff       	call   36980 <__ssprint_r>
   37573:	90                   	nop
   37574:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37578:	8b 75 0c             	mov    0xc(%ebp),%esi
   3757b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   37580:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
   37584:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
   3758b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
   37591:	5b                   	pop    %ebx
   37592:	5e                   	pop    %esi
   37593:	5f                   	pop    %edi
   37594:	5d                   	pop    %ebp
   37595:	c3                   	ret    
   37596:	66 90                	xchg   %ax,%ax
   37598:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
   3759f:	00 00 00 
   375a2:	8d 5d a8             	lea    -0x58(%ebp),%ebx
   375a5:	e9 b6 f7 ff ff       	jmp    36d60 <_svfiprintf_r+0x1f0>
   375aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   375b0:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
   375b6:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
   375bc:	85 ff                	test   %edi,%edi
   375be:	0f 8e 4f fd ff ff    	jle    37313 <_svfiprintf_r+0x7a3>
   375c4:	83 ff 10             	cmp    $0x10,%edi
   375c7:	0f 8e 7f 00 00 00    	jle    3764c <_svfiprintf_r+0xadc>
   375cd:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
   375d3:	89 f1                	mov    %esi,%ecx
   375d5:	8b 5d 08             	mov    0x8(%ebp),%ebx
   375d8:	8b 75 0c             	mov    0xc(%ebp),%esi
   375db:	eb 0b                	jmp    375e8 <_svfiprintf_r+0xa78>
   375dd:	8d 76 00             	lea    0x0(%esi),%esi
   375e0:	83 ef 10             	sub    $0x10,%edi
   375e3:	83 ff 10             	cmp    $0x10,%edi
   375e6:	7e 5c                	jle    37644 <_svfiprintf_r+0xad4>
   375e8:	83 c0 01             	add    $0x1,%eax
   375eb:	83 c2 10             	add    $0x10,%edx
   375ee:	c7 01 cc 9d 03 00    	movl   $0x39dcc,(%ecx)
   375f4:	83 c1 08             	add    $0x8,%ecx
   375f7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   375fe:	83 f8 07             	cmp    $0x7,%eax
   37601:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37607:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3760d:	7e d1                	jle    375e0 <_svfiprintf_r+0xa70>
   3760f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37615:	89 44 24 08          	mov    %eax,0x8(%esp)
   37619:	89 74 24 04          	mov    %esi,0x4(%esp)
   3761d:	89 1c 24             	mov    %ebx,(%esp)
   37620:	e8 5b f3 ff ff       	call   36980 <__ssprint_r>
   37625:	85 c0                	test   %eax,%eax
   37627:	0f 85 4b ff ff ff    	jne    37578 <_svfiprintf_r+0xa08>
   3762d:	83 ef 10             	sub    $0x10,%edi
   37630:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   37636:	83 ff 10             	cmp    $0x10,%edi
   37639:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3763f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   37642:	7f a4                	jg     375e8 <_svfiprintf_r+0xa78>
   37644:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
   3764a:	89 ce                	mov    %ecx,%esi
   3764c:	83 c0 01             	add    $0x1,%eax
   3764f:	01 fa                	add    %edi,%edx
   37651:	c7 06 cc 9d 03 00    	movl   $0x39dcc,(%esi)
   37657:	83 c6 08             	add    $0x8,%esi
   3765a:	89 7e fc             	mov    %edi,-0x4(%esi)
   3765d:	83 f8 07             	cmp    $0x7,%eax
   37660:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37666:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3766c:	0f 8e a1 fc ff ff    	jle    37313 <_svfiprintf_r+0x7a3>
   37672:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37678:	89 44 24 08          	mov    %eax,0x8(%esp)
   3767c:	8b 45 0c             	mov    0xc(%ebp),%eax
   3767f:	89 44 24 04          	mov    %eax,0x4(%esp)
   37683:	8b 45 08             	mov    0x8(%ebp),%eax
   37686:	89 04 24             	mov    %eax,(%esp)
   37689:	e8 f2 f2 ff ff       	call   36980 <__ssprint_r>
   3768e:	85 c0                	test   %eax,%eax
   37690:	0f 85 e2 fe ff ff    	jne    37578 <_svfiprintf_r+0xa08>
   37696:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3769c:	8d 75 a8             	lea    -0x58(%ebp),%esi
   3769f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   376a5:	e9 69 fc ff ff       	jmp    37313 <_svfiprintf_r+0x7a3>
   376aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   376b0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   376b6:	89 44 24 08          	mov    %eax,0x8(%esp)
   376ba:	8b 45 0c             	mov    0xc(%ebp),%eax
   376bd:	89 44 24 04          	mov    %eax,0x4(%esp)
   376c1:	8b 45 08             	mov    0x8(%ebp),%eax
   376c4:	89 04 24             	mov    %eax,(%esp)
   376c7:	e8 b4 f2 ff ff       	call   36980 <__ssprint_r>
   376cc:	85 c0                	test   %eax,%eax
   376ce:	0f 85 a4 fe ff ff    	jne    37578 <_svfiprintf_r+0xa08>
   376d4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   376da:	8d 75 a8             	lea    -0x58(%ebp),%esi
   376dd:	e9 4e fd ff ff       	jmp    37430 <_svfiprintf_r+0x8c0>
   376e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   376e8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   376ee:	89 44 24 08          	mov    %eax,0x8(%esp)
   376f2:	8b 45 0c             	mov    0xc(%ebp),%eax
   376f5:	89 44 24 04          	mov    %eax,0x4(%esp)
   376f9:	8b 45 08             	mov    0x8(%ebp),%eax
   376fc:	89 04 24             	mov    %eax,(%esp)
   376ff:	e8 7c f2 ff ff       	call   36980 <__ssprint_r>
   37704:	85 c0                	test   %eax,%eax
   37706:	0f 84 09 fe ff ff    	je     37515 <_svfiprintf_r+0x9a5>
   3770c:	e9 67 fe ff ff       	jmp    37578 <_svfiprintf_r+0xa08>
   37711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37718:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3771e:	89 44 24 08          	mov    %eax,0x8(%esp)
   37722:	8b 45 0c             	mov    0xc(%ebp),%eax
   37725:	89 44 24 04          	mov    %eax,0x4(%esp)
   37729:	8b 45 08             	mov    0x8(%ebp),%eax
   3772c:	89 04 24             	mov    %eax,(%esp)
   3772f:	e8 4c f2 ff ff       	call   36980 <__ssprint_r>
   37734:	85 c0                	test   %eax,%eax
   37736:	0f 85 3c fe ff ff    	jne    37578 <_svfiprintf_r+0xa08>
   3773c:	8d 75 a8             	lea    -0x58(%ebp),%esi
   3773f:	e9 e9 f4 ff ff       	jmp    36c2d <_svfiprintf_r+0xbd>
   37744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37748:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3774e:	89 44 24 08          	mov    %eax,0x8(%esp)
   37752:	8b 45 0c             	mov    0xc(%ebp),%eax
   37755:	89 44 24 04          	mov    %eax,0x4(%esp)
   37759:	8b 45 08             	mov    0x8(%ebp),%eax
   3775c:	89 04 24             	mov    %eax,(%esp)
   3775f:	e8 1c f2 ff ff       	call   36980 <__ssprint_r>
   37764:	85 c0                	test   %eax,%eax
   37766:	0f 85 0c fe ff ff    	jne    37578 <_svfiprintf_r+0xa08>
   3776c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   37772:	8d 75 a8             	lea    -0x58(%ebp),%esi
   37775:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3777b:	e9 83 fb ff ff       	jmp    37303 <_svfiprintf_r+0x793>
   37780:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37786:	89 44 24 08          	mov    %eax,0x8(%esp)
   3778a:	8b 45 0c             	mov    0xc(%ebp),%eax
   3778d:	89 44 24 04          	mov    %eax,0x4(%esp)
   37791:	8b 45 08             	mov    0x8(%ebp),%eax
   37794:	89 04 24             	mov    %eax,(%esp)
   37797:	e8 e4 f1 ff ff       	call   36980 <__ssprint_r>
   3779c:	85 c0                	test   %eax,%eax
   3779e:	0f 85 d4 fd ff ff    	jne    37578 <_svfiprintf_r+0xa08>
   377a4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   377aa:	8d 75 a8             	lea    -0x58(%ebp),%esi
   377ad:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   377b3:	e9 13 fb ff ff       	jmp    372cb <_svfiprintf_r+0x75b>
   377b8:	83 f9 09             	cmp    $0x9,%ecx
   377bb:	76 56                	jbe    37813 <_svfiprintf_r+0xca3>
   377bd:	8d 5d a8             	lea    -0x58(%ebp),%ebx
   377c0:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
   377c5:	83 eb 01             	sub    $0x1,%ebx
   377c8:	f7 e1                	mul    %ecx
   377ca:	c1 ea 03             	shr    $0x3,%edx
   377cd:	8d 04 92             	lea    (%edx,%edx,4),%eax
   377d0:	01 c0                	add    %eax,%eax
   377d2:	29 c1                	sub    %eax,%ecx
   377d4:	83 c1 30             	add    $0x30,%ecx
   377d7:	85 d2                	test   %edx,%edx
   377d9:	88 0b                	mov    %cl,(%ebx)
   377db:	89 d1                	mov    %edx,%ecx
   377dd:	75 e1                	jne    377c0 <_svfiprintf_r+0xc50>
   377df:	e9 71 f5 ff ff       	jmp    36d55 <_svfiprintf_r+0x1e5>
   377e4:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   377ea:	89 44 24 08          	mov    %eax,0x8(%esp)
   377ee:	8b 45 0c             	mov    0xc(%ebp),%eax
   377f1:	89 44 24 04          	mov    %eax,0x4(%esp)
   377f5:	8b 45 08             	mov    0x8(%ebp),%eax
   377f8:	89 04 24             	mov    %eax,(%esp)
   377fb:	e8 80 f1 ff ff       	call   36980 <__ssprint_r>
   37800:	85 c0                	test   %eax,%eax
   37802:	0f 85 70 fd ff ff    	jne    37578 <_svfiprintf_r+0xa08>
   37808:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3780e:	e9 e3 fc ff ff       	jmp    374f6 <_svfiprintf_r+0x986>
   37813:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
   37819:	83 c1 30             	add    $0x30,%ecx
   3781c:	88 4d a7             	mov    %cl,-0x59(%ebp)
   3781f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
   37822:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   37828:	e9 33 f5 ff ff       	jmp    36d60 <_svfiprintf_r+0x1f0>
   3782d:	8b 45 14             	mov    0x14(%ebp),%eax
   37830:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
   37836:	8b 00                	mov    (%eax),%eax
   37838:	89 18                	mov    %ebx,(%eax)
   3783a:	8b 45 14             	mov    0x14(%ebp),%eax
   3783d:	83 c0 04             	add    $0x4,%eax
   37840:	89 45 14             	mov    %eax,0x14(%ebp)
   37843:	e9 86 f3 ff ff       	jmp    36bce <_svfiprintf_r+0x5e>
   37848:	0f b7 0b             	movzwl (%ebx),%ecx
   3784b:	83 c3 04             	add    $0x4,%ebx
   3784e:	89 5d 14             	mov    %ebx,0x14(%ebp)
   37851:	e9 95 f8 ff ff       	jmp    370eb <_svfiprintf_r+0x57b>
   37856:	0f bf 08             	movswl (%eax),%ecx
   37859:	83 c0 04             	add    $0x4,%eax
   3785c:	89 45 14             	mov    %eax,0x14(%ebp)
   3785f:	85 c9                	test   %ecx,%ecx
   37861:	0f 89 0d f7 ff ff    	jns    36f74 <_svfiprintf_r+0x404>
   37867:	f7 d9                	neg    %ecx
   37869:	bf 2d 00 00 00       	mov    $0x2d,%edi
   3786e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
   37875:	ba 01 00 00 00       	mov    $0x1,%edx
   3787a:	e9 7a f4 ff ff       	jmp    36cf9 <_svfiprintf_r+0x189>
   3787f:	89 1c 24             	mov    %ebx,(%esp)
   37882:	e8 79 f0 ff ff       	call   36900 <strlen>
   37887:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
   3788d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   37894:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   3789b:	00 00 00 
   3789e:	89 55 14             	mov    %edx,0x14(%ebp)
   378a1:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   378a7:	e9 b4 f4 ff ff       	jmp    36d60 <_svfiprintf_r+0x1f0>
   378ac:	8b 45 08             	mov    0x8(%ebp),%eax
   378af:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
   378b6:	00 
   378b7:	89 04 24             	mov    %eax,(%esp)
   378ba:	e8 41 d9 ff ff       	call   35200 <_malloc_r>
   378bf:	8b 75 0c             	mov    0xc(%ebp),%esi
   378c2:	85 c0                	test   %eax,%eax
   378c4:	89 06                	mov    %eax,(%esi)
   378c6:	89 46 10             	mov    %eax,0x10(%esi)
   378c9:	0f 84 a3 00 00 00    	je     37972 <_svfiprintf_r+0xe02>
   378cf:	8b 45 0c             	mov    0xc(%ebp),%eax
   378d2:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
   378d9:	e9 b2 f2 ff ff       	jmp    36b90 <_svfiprintf_r+0x20>
   378de:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
   378e4:	b8 06 00 00 00       	mov    $0x6,%eax
   378e9:	89 55 14             	mov    %edx,0x14(%ebp)
   378ec:	83 ff 06             	cmp    $0x6,%edi
   378ef:	0f 46 c7             	cmovbe %edi,%eax
   378f2:	85 c0                	test   %eax,%eax
   378f4:	0f 49 d8             	cmovns %eax,%ebx
   378f7:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
   378fd:	bb 18 99 03 00       	mov    $0x39918,%ebx
   37902:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   37908:	e9 61 f8 ff ff       	jmp    3716e <_svfiprintf_r+0x5fe>
   3790d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   37913:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   3791a:	89 55 14             	mov    %edx,0x14(%ebp)
   3791d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   37924:	00 00 00 
   37927:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   3792d:	e9 2e f4 ff ff       	jmp    36d60 <_svfiprintf_r+0x1f0>
   37932:	89 da                	mov    %ebx,%edx
   37934:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   3793b:	00 00 00 
   3793e:	e9 29 f3 ff ff       	jmp    36c6c <_svfiprintf_r+0xfc>
   37943:	8b 4d 14             	mov    0x14(%ebp),%ecx
   37946:	89 da                	mov    %ebx,%edx
   37948:	8b 45 14             	mov    0x14(%ebp),%eax
   3794b:	8b 09                	mov    (%ecx),%ecx
   3794d:	83 c0 04             	add    $0x4,%eax
   37950:	89 45 14             	mov    %eax,0x14(%ebp)
   37953:	85 c9                	test   %ecx,%ecx
   37955:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
   3795b:	0f 89 26 f3 ff ff    	jns    36c87 <_svfiprintf_r+0x117>
   37961:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
   37968:	ff ff ff 
   3796b:	89 d0                	mov    %edx,%eax
   3796d:	e9 f4 f2 ff ff       	jmp    36c66 <_svfiprintf_r+0xf6>
   37972:	8b 45 08             	mov    0x8(%ebp),%eax
   37975:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   3797b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   37980:	e9 06 fc ff ff       	jmp    3758b <_svfiprintf_r+0xa1b>
   37985:	66 90                	xchg   %ax,%ax
   37987:	66 90                	xchg   %ax,%ax
   37989:	66 90                	xchg   %ax,%ax
   3798b:	66 90                	xchg   %ax,%ax
   3798d:	66 90                	xchg   %ax,%ax
   3798f:	90                   	nop

00037990 <_calloc_r>:
   37990:	55                   	push   %ebp
   37991:	89 e5                	mov    %esp,%ebp
   37993:	53                   	push   %ebx
   37994:	83 ec 14             	sub    $0x14,%esp
   37997:	8b 45 10             	mov    0x10(%ebp),%eax
   3799a:	0f af 45 0c          	imul   0xc(%ebp),%eax
   3799e:	89 44 24 04          	mov    %eax,0x4(%esp)
   379a2:	8b 45 08             	mov    0x8(%ebp),%eax
   379a5:	89 04 24             	mov    %eax,(%esp)
   379a8:	e8 53 d8 ff ff       	call   35200 <_malloc_r>
   379ad:	85 c0                	test   %eax,%eax
   379af:	89 c3                	mov    %eax,%ebx
   379b1:	0f 84 91 00 00 00    	je     37a48 <_calloc_r+0xb8>
   379b7:	8b 40 fc             	mov    -0x4(%eax),%eax
   379ba:	83 e0 fc             	and    $0xfffffffc,%eax
   379bd:	83 e8 04             	sub    $0x4,%eax
   379c0:	83 f8 24             	cmp    $0x24,%eax
   379c3:	77 63                	ja     37a28 <_calloc_r+0x98>
   379c5:	83 f8 13             	cmp    $0x13,%eax
   379c8:	89 da                	mov    %ebx,%edx
   379ca:	77 1c                	ja     379e8 <_calloc_r+0x58>
   379cc:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
   379d2:	89 d8                	mov    %ebx,%eax
   379d4:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
   379db:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
   379e2:	83 c4 14             	add    $0x14,%esp
   379e5:	5b                   	pop    %ebx
   379e6:	5d                   	pop    %ebp
   379e7:	c3                   	ret    
   379e8:	83 f8 1b             	cmp    $0x1b,%eax
   379eb:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
   379f1:	8d 53 08             	lea    0x8(%ebx),%edx
   379f4:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
   379fb:	76 cf                	jbe    379cc <_calloc_r+0x3c>
   379fd:	83 f8 24             	cmp    $0x24,%eax
   37a00:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
   37a07:	8d 53 10             	lea    0x10(%ebx),%edx
   37a0a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
   37a11:	75 b9                	jne    379cc <_calloc_r+0x3c>
   37a13:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
   37a1a:	8d 53 18             	lea    0x18(%ebx),%edx
   37a1d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
   37a24:	eb a6                	jmp    379cc <_calloc_r+0x3c>
   37a26:	66 90                	xchg   %ax,%ax
   37a28:	89 1c 24             	mov    %ebx,(%esp)
   37a2b:	89 44 24 08          	mov    %eax,0x8(%esp)
   37a2f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   37a36:	00 
   37a37:	e8 50 a2 ff ff       	call   31c8c <memset>
   37a3c:	83 c4 14             	add    $0x14,%esp
   37a3f:	89 d8                	mov    %ebx,%eax
   37a41:	5b                   	pop    %ebx
   37a42:	5d                   	pop    %ebp
   37a43:	c3                   	ret    
   37a44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37a48:	31 c0                	xor    %eax,%eax
   37a4a:	eb 96                	jmp    379e2 <_calloc_r+0x52>
   37a4c:	66 90                	xchg   %ax,%ax
   37a4e:	66 90                	xchg   %ax,%ax

00037a50 <_malloc_trim_r>:
   37a50:	55                   	push   %ebp
   37a51:	89 e5                	mov    %esp,%ebp
   37a53:	57                   	push   %edi
   37a54:	56                   	push   %esi
   37a55:	53                   	push   %ebx
   37a56:	83 ec 1c             	sub    $0x1c,%esp
   37a59:	8b 75 08             	mov    0x8(%ebp),%esi
   37a5c:	89 34 24             	mov    %esi,(%esp)
   37a5f:	e8 7c df ff ff       	call   359e0 <__malloc_lock>
   37a64:	a1 48 d5 03 00       	mov    0x3d548,%eax
   37a69:	8b 58 04             	mov    0x4(%eax),%ebx
   37a6c:	83 e3 fc             	and    $0xfffffffc,%ebx
   37a6f:	89 d8                	mov    %ebx,%eax
   37a71:	2b 45 0c             	sub    0xc(%ebp),%eax
   37a74:	05 ef 0f 00 00       	add    $0xfef,%eax
   37a79:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   37a7e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
   37a84:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
   37a8a:	7e 1c                	jle    37aa8 <_malloc_trim_r+0x58>
   37a8c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   37a93:	00 
   37a94:	89 34 24             	mov    %esi,(%esp)
   37a97:	e8 44 ed ff ff       	call   367e0 <_sbrk_r>
   37a9c:	8b 15 48 d5 03 00    	mov    0x3d548,%edx
   37aa2:	01 da                	add    %ebx,%edx
   37aa4:	39 d0                	cmp    %edx,%eax
   37aa6:	74 18                	je     37ac0 <_malloc_trim_r+0x70>
   37aa8:	89 34 24             	mov    %esi,(%esp)
   37aab:	e8 40 df ff ff       	call   359f0 <__malloc_unlock>
   37ab0:	83 c4 1c             	add    $0x1c,%esp
   37ab3:	31 c0                	xor    %eax,%eax
   37ab5:	5b                   	pop    %ebx
   37ab6:	5e                   	pop    %esi
   37ab7:	5f                   	pop    %edi
   37ab8:	5d                   	pop    %ebp
   37ab9:	c3                   	ret    
   37aba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37ac0:	89 f8                	mov    %edi,%eax
   37ac2:	f7 d8                	neg    %eax
   37ac4:	89 44 24 04          	mov    %eax,0x4(%esp)
   37ac8:	89 34 24             	mov    %esi,(%esp)
   37acb:	e8 10 ed ff ff       	call   367e0 <_sbrk_r>
   37ad0:	83 f8 ff             	cmp    $0xffffffff,%eax
   37ad3:	74 2b                	je     37b00 <_malloc_trim_r+0xb0>
   37ad5:	a1 48 d5 03 00       	mov    0x3d548,%eax
   37ada:	29 fb                	sub    %edi,%ebx
   37adc:	83 cb 01             	or     $0x1,%ebx
   37adf:	29 3d 20 00 07 00    	sub    %edi,0x70020
   37ae5:	89 58 04             	mov    %ebx,0x4(%eax)
   37ae8:	89 34 24             	mov    %esi,(%esp)
   37aeb:	e8 00 df ff ff       	call   359f0 <__malloc_unlock>
   37af0:	83 c4 1c             	add    $0x1c,%esp
   37af3:	b8 01 00 00 00       	mov    $0x1,%eax
   37af8:	5b                   	pop    %ebx
   37af9:	5e                   	pop    %esi
   37afa:	5f                   	pop    %edi
   37afb:	5d                   	pop    %ebp
   37afc:	c3                   	ret    
   37afd:	8d 76 00             	lea    0x0(%esi),%esi
   37b00:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   37b07:	00 
   37b08:	89 34 24             	mov    %esi,(%esp)
   37b0b:	e8 d0 ec ff ff       	call   367e0 <_sbrk_r>
   37b10:	8b 15 48 d5 03 00    	mov    0x3d548,%edx
   37b16:	89 c1                	mov    %eax,%ecx
   37b18:	29 d1                	sub    %edx,%ecx
   37b1a:	83 f9 0f             	cmp    $0xf,%ecx
   37b1d:	7e 89                	jle    37aa8 <_malloc_trim_r+0x58>
   37b1f:	2b 05 20 d5 03 00    	sub    0x3d520,%eax
   37b25:	83 c9 01             	or     $0x1,%ecx
   37b28:	89 4a 04             	mov    %ecx,0x4(%edx)
   37b2b:	a3 20 00 07 00       	mov    %eax,0x70020
   37b30:	e9 73 ff ff ff       	jmp    37aa8 <_malloc_trim_r+0x58>
   37b35:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37b39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00037b40 <_free_r>:
   37b40:	55                   	push   %ebp
   37b41:	89 e5                	mov    %esp,%ebp
   37b43:	57                   	push   %edi
   37b44:	56                   	push   %esi
   37b45:	53                   	push   %ebx
   37b46:	83 ec 1c             	sub    $0x1c,%esp
   37b49:	8b 75 0c             	mov    0xc(%ebp),%esi
   37b4c:	8b 45 08             	mov    0x8(%ebp),%eax
   37b4f:	85 f6                	test   %esi,%esi
   37b51:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   37b54:	0f 84 fe 00 00 00    	je     37c58 <_free_r+0x118>
   37b5a:	89 04 24             	mov    %eax,(%esp)
   37b5d:	e8 7e de ff ff       	call   359e0 <__malloc_lock>
   37b62:	8b 7e fc             	mov    -0x4(%esi),%edi
   37b65:	8d 56 f8             	lea    -0x8(%esi),%edx
   37b68:	89 f8                	mov    %edi,%eax
   37b6a:	83 e0 fe             	and    $0xfffffffe,%eax
   37b6d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
   37b70:	8b 59 04             	mov    0x4(%ecx),%ebx
   37b73:	83 e3 fc             	and    $0xfffffffc,%ebx
   37b76:	39 0d 48 d5 03 00    	cmp    %ecx,0x3d548
   37b7c:	0f 84 0e 01 00 00    	je     37c90 <_free_r+0x150>
   37b82:	83 e7 01             	and    $0x1,%edi
   37b85:	89 59 04             	mov    %ebx,0x4(%ecx)
   37b88:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
   37b8f:	75 1f                	jne    37bb0 <_free_r+0x70>
   37b91:	8b 76 f8             	mov    -0x8(%esi),%esi
   37b94:	29 f2                	sub    %esi,%edx
   37b96:	01 f0                	add    %esi,%eax
   37b98:	8b 72 08             	mov    0x8(%edx),%esi
   37b9b:	81 fe 48 d5 03 00    	cmp    $0x3d548,%esi
   37ba1:	0f 84 39 01 00 00    	je     37ce0 <_free_r+0x1a0>
   37ba7:	8b 7a 0c             	mov    0xc(%edx),%edi
   37baa:	89 7e 0c             	mov    %edi,0xc(%esi)
   37bad:	89 77 08             	mov    %esi,0x8(%edi)
   37bb0:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
   37bb5:	75 21                	jne    37bd8 <_free_r+0x98>
   37bb7:	8b 75 e0             	mov    -0x20(%ebp),%esi
   37bba:	01 d8                	add    %ebx,%eax
   37bbc:	8b 59 08             	mov    0x8(%ecx),%ebx
   37bbf:	85 f6                	test   %esi,%esi
   37bc1:	75 0c                	jne    37bcf <_free_r+0x8f>
   37bc3:	81 fb 48 d5 03 00    	cmp    $0x3d548,%ebx
   37bc9:	0f 84 21 01 00 00    	je     37cf0 <_free_r+0x1b0>
   37bcf:	8b 49 0c             	mov    0xc(%ecx),%ecx
   37bd2:	89 4b 0c             	mov    %ecx,0xc(%ebx)
   37bd5:	89 59 08             	mov    %ebx,0x8(%ecx)
   37bd8:	89 c1                	mov    %eax,%ecx
   37bda:	83 c9 01             	or     $0x1,%ecx
   37bdd:	89 4a 04             	mov    %ecx,0x4(%edx)
   37be0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   37be3:	89 04 02             	mov    %eax,(%edx,%eax,1)
   37be6:	85 c9                	test   %ecx,%ecx
   37be8:	75 56                	jne    37c40 <_free_r+0x100>
   37bea:	3d ff 01 00 00       	cmp    $0x1ff,%eax
   37bef:	76 6f                	jbe    37c60 <_free_r+0x120>
   37bf1:	89 c1                	mov    %eax,%ecx
   37bf3:	c1 e9 09             	shr    $0x9,%ecx
   37bf6:	83 f9 04             	cmp    $0x4,%ecx
   37bf9:	0f 87 21 01 00 00    	ja     37d20 <_free_r+0x1e0>
   37bff:	89 c1                	mov    %eax,%ecx
   37c01:	c1 e9 06             	shr    $0x6,%ecx
   37c04:	83 c1 38             	add    $0x38,%ecx
   37c07:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37c0a:	8d 34 9d 40 d5 03 00 	lea    0x3d540(,%ebx,4),%esi
   37c11:	8b 5e 08             	mov    0x8(%esi),%ebx
   37c14:	39 f3                	cmp    %esi,%ebx
   37c16:	0f 84 14 01 00 00    	je     37d30 <_free_r+0x1f0>
   37c1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37c20:	8b 4b 04             	mov    0x4(%ebx),%ecx
   37c23:	83 e1 fc             	and    $0xfffffffc,%ecx
   37c26:	39 c8                	cmp    %ecx,%eax
   37c28:	73 07                	jae    37c31 <_free_r+0xf1>
   37c2a:	8b 5b 08             	mov    0x8(%ebx),%ebx
   37c2d:	39 de                	cmp    %ebx,%esi
   37c2f:	75 ef                	jne    37c20 <_free_r+0xe0>
   37c31:	8b 43 0c             	mov    0xc(%ebx),%eax
   37c34:	89 42 0c             	mov    %eax,0xc(%edx)
   37c37:	89 5a 08             	mov    %ebx,0x8(%edx)
   37c3a:	89 50 08             	mov    %edx,0x8(%eax)
   37c3d:	89 53 0c             	mov    %edx,0xc(%ebx)
   37c40:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   37c43:	89 45 08             	mov    %eax,0x8(%ebp)
   37c46:	83 c4 1c             	add    $0x1c,%esp
   37c49:	5b                   	pop    %ebx
   37c4a:	5e                   	pop    %esi
   37c4b:	5f                   	pop    %edi
   37c4c:	5d                   	pop    %ebp
   37c4d:	e9 9e dd ff ff       	jmp    359f0 <__malloc_unlock>
   37c52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37c58:	83 c4 1c             	add    $0x1c,%esp
   37c5b:	5b                   	pop    %ebx
   37c5c:	5e                   	pop    %esi
   37c5d:	5f                   	pop    %edi
   37c5e:	5d                   	pop    %ebp
   37c5f:	c3                   	ret    
   37c60:	c1 e8 03             	shr    $0x3,%eax
   37c63:	bb 01 00 00 00       	mov    $0x1,%ebx
   37c68:	89 c1                	mov    %eax,%ecx
   37c6a:	c1 f9 02             	sar    $0x2,%ecx
   37c6d:	8d 04 c5 40 d5 03 00 	lea    0x3d540(,%eax,8),%eax
   37c74:	d3 e3                	shl    %cl,%ebx
   37c76:	8b 48 08             	mov    0x8(%eax),%ecx
   37c79:	09 1d 44 d5 03 00    	or     %ebx,0x3d544
   37c7f:	89 42 0c             	mov    %eax,0xc(%edx)
   37c82:	89 4a 08             	mov    %ecx,0x8(%edx)
   37c85:	89 50 08             	mov    %edx,0x8(%eax)
   37c88:	89 51 0c             	mov    %edx,0xc(%ecx)
   37c8b:	eb b3                	jmp    37c40 <_free_r+0x100>
   37c8d:	8d 76 00             	lea    0x0(%esi),%esi
   37c90:	01 d8                	add    %ebx,%eax
   37c92:	83 e7 01             	and    $0x1,%edi
   37c95:	75 13                	jne    37caa <_free_r+0x16a>
   37c97:	8b 4e f8             	mov    -0x8(%esi),%ecx
   37c9a:	29 ca                	sub    %ecx,%edx
   37c9c:	01 c8                	add    %ecx,%eax
   37c9e:	8b 5a 08             	mov    0x8(%edx),%ebx
   37ca1:	8b 4a 0c             	mov    0xc(%edx),%ecx
   37ca4:	89 4b 0c             	mov    %ecx,0xc(%ebx)
   37ca7:	89 59 08             	mov    %ebx,0x8(%ecx)
   37caa:	89 c1                	mov    %eax,%ecx
   37cac:	83 c9 01             	or     $0x1,%ecx
   37caf:	3b 05 24 d5 03 00    	cmp    0x3d524,%eax
   37cb5:	89 4a 04             	mov    %ecx,0x4(%edx)
   37cb8:	89 15 48 d5 03 00    	mov    %edx,0x3d548
   37cbe:	72 80                	jb     37c40 <_free_r+0x100>
   37cc0:	a1 50 00 07 00       	mov    0x70050,%eax
   37cc5:	89 44 24 04          	mov    %eax,0x4(%esp)
   37cc9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   37ccc:	89 04 24             	mov    %eax,(%esp)
   37ccf:	e8 7c fd ff ff       	call   37a50 <_malloc_trim_r>
   37cd4:	e9 67 ff ff ff       	jmp    37c40 <_free_r+0x100>
   37cd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37ce0:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
   37ce7:	e9 c4 fe ff ff       	jmp    37bb0 <_free_r+0x70>
   37cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37cf0:	89 c1                	mov    %eax,%ecx
   37cf2:	83 c9 01             	or     $0x1,%ecx
   37cf5:	89 15 54 d5 03 00    	mov    %edx,0x3d554
   37cfb:	89 15 50 d5 03 00    	mov    %edx,0x3d550
   37d01:	c7 42 0c 48 d5 03 00 	movl   $0x3d548,0xc(%edx)
   37d08:	c7 42 08 48 d5 03 00 	movl   $0x3d548,0x8(%edx)
   37d0f:	89 4a 04             	mov    %ecx,0x4(%edx)
   37d12:	89 04 02             	mov    %eax,(%edx,%eax,1)
   37d15:	e9 26 ff ff ff       	jmp    37c40 <_free_r+0x100>
   37d1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37d20:	83 f9 14             	cmp    $0x14,%ecx
   37d23:	77 23                	ja     37d48 <_free_r+0x208>
   37d25:	83 c1 5b             	add    $0x5b,%ecx
   37d28:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37d2b:	e9 da fe ff ff       	jmp    37c0a <_free_r+0xca>
   37d30:	c1 f9 02             	sar    $0x2,%ecx
   37d33:	b8 01 00 00 00       	mov    $0x1,%eax
   37d38:	d3 e0                	shl    %cl,%eax
   37d3a:	09 05 44 d5 03 00    	or     %eax,0x3d544
   37d40:	89 d8                	mov    %ebx,%eax
   37d42:	e9 ed fe ff ff       	jmp    37c34 <_free_r+0xf4>
   37d47:	90                   	nop
   37d48:	83 f9 54             	cmp    $0x54,%ecx
   37d4b:	77 10                	ja     37d5d <_free_r+0x21d>
   37d4d:	89 c1                	mov    %eax,%ecx
   37d4f:	c1 e9 0c             	shr    $0xc,%ecx
   37d52:	83 c1 6e             	add    $0x6e,%ecx
   37d55:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37d58:	e9 ad fe ff ff       	jmp    37c0a <_free_r+0xca>
   37d5d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
   37d63:	77 10                	ja     37d75 <_free_r+0x235>
   37d65:	89 c1                	mov    %eax,%ecx
   37d67:	c1 e9 0f             	shr    $0xf,%ecx
   37d6a:	83 c1 77             	add    $0x77,%ecx
   37d6d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37d70:	e9 95 fe ff ff       	jmp    37c0a <_free_r+0xca>
   37d75:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
   37d7b:	77 10                	ja     37d8d <_free_r+0x24d>
   37d7d:	89 c1                	mov    %eax,%ecx
   37d7f:	c1 e9 12             	shr    $0x12,%ecx
   37d82:	83 c1 7c             	add    $0x7c,%ecx
   37d85:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37d88:	e9 7d fe ff ff       	jmp    37c0a <_free_r+0xca>
   37d8d:	bb fc 00 00 00       	mov    $0xfc,%ebx
   37d92:	b9 7e 00 00 00       	mov    $0x7e,%ecx
   37d97:	e9 6e fe ff ff       	jmp    37c0a <_free_r+0xca>
   37d9c:	66 90                	xchg   %ax,%ax
   37d9e:	66 90                	xchg   %ax,%ax

00037da0 <memmove>:
   37da0:	55                   	push   %ebp
   37da1:	89 e5                	mov    %esp,%ebp
   37da3:	56                   	push   %esi
   37da4:	57                   	push   %edi
   37da5:	53                   	push   %ebx
   37da6:	8b 7d 08             	mov    0x8(%ebp),%edi
   37da9:	8b 4d 10             	mov    0x10(%ebp),%ecx
   37dac:	8b 75 0c             	mov    0xc(%ebp),%esi
   37daf:	fc                   	cld    
   37db0:	39 fe                	cmp    %edi,%esi
   37db2:	73 43                	jae    37df7 <memmove+0x57>
   37db4:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
   37db8:	39 df                	cmp    %ebx,%edi
   37dba:	77 3b                	ja     37df7 <memmove+0x57>
   37dbc:	01 ce                	add    %ecx,%esi
   37dbe:	01 cf                	add    %ecx,%edi
   37dc0:	fd                   	std    
   37dc1:	83 f9 08             	cmp    $0x8,%ecx
   37dc4:	76 2b                	jbe    37df1 <memmove+0x51>
   37dc6:	89 fa                	mov    %edi,%edx
   37dc8:	89 cb                	mov    %ecx,%ebx
   37dca:	83 e2 03             	and    $0x3,%edx
   37dcd:	74 0c                	je     37ddb <memmove+0x3b>
   37dcf:	89 d1                	mov    %edx,%ecx
   37dd1:	4e                   	dec    %esi
   37dd2:	4f                   	dec    %edi
   37dd3:	29 cb                	sub    %ecx,%ebx
   37dd5:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37dd7:	89 d9                	mov    %ebx,%ecx
   37dd9:	46                   	inc    %esi
   37dda:	47                   	inc    %edi
   37ddb:	c1 e9 02             	shr    $0x2,%ecx
   37dde:	83 ee 04             	sub    $0x4,%esi
   37de1:	83 ef 04             	sub    $0x4,%edi
   37de4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   37de6:	83 c6 04             	add    $0x4,%esi
   37de9:	83 c7 04             	add    $0x4,%edi
   37dec:	89 d9                	mov    %ebx,%ecx
   37dee:	83 e1 03             	and    $0x3,%ecx
   37df1:	4e                   	dec    %esi
   37df2:	4f                   	dec    %edi
   37df3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37df5:	eb 2a                	jmp    37e21 <memmove+0x81>
   37df7:	83 f9 08             	cmp    $0x8,%ecx
   37dfa:	76 23                	jbe    37e1f <memmove+0x7f>
   37dfc:	89 fa                	mov    %edi,%edx
   37dfe:	89 cb                	mov    %ecx,%ebx
   37e00:	83 e2 03             	and    $0x3,%edx
   37e03:	74 10                	je     37e15 <memmove+0x75>
   37e05:	b9 04 00 00 00       	mov    $0x4,%ecx
   37e0a:	29 d1                	sub    %edx,%ecx
   37e0c:	83 e1 03             	and    $0x3,%ecx
   37e0f:	29 cb                	sub    %ecx,%ebx
   37e11:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37e13:	89 d9                	mov    %ebx,%ecx
   37e15:	c1 e9 02             	shr    $0x2,%ecx
   37e18:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   37e1a:	89 d9                	mov    %ebx,%ecx
   37e1c:	83 e1 03             	and    $0x3,%ecx
   37e1f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37e21:	8b 45 08             	mov    0x8(%ebp),%eax
   37e24:	fc                   	cld    
   37e25:	8d 65 f4             	lea    -0xc(%ebp),%esp
   37e28:	5b                   	pop    %ebx
   37e29:	5f                   	pop    %edi
   37e2a:	5e                   	pop    %esi
   37e2b:	c9                   	leave  
   37e2c:	c3                   	ret    
   37e2d:	66 90                	xchg   %ax,%ax
   37e2f:	90                   	nop

00037e30 <_realloc_r>:
   37e30:	55                   	push   %ebp
   37e31:	89 e5                	mov    %esp,%ebp
   37e33:	57                   	push   %edi
   37e34:	56                   	push   %esi
   37e35:	53                   	push   %ebx
   37e36:	83 ec 3c             	sub    $0x3c,%esp
   37e39:	8b 45 08             	mov    0x8(%ebp),%eax
   37e3c:	8b 7d 0c             	mov    0xc(%ebp),%edi
   37e3f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   37e42:	8b 45 10             	mov    0x10(%ebp),%eax
   37e45:	85 ff                	test   %edi,%edi
   37e47:	89 45 e0             	mov    %eax,-0x20(%ebp)
   37e4a:	0f 84 50 02 00 00    	je     380a0 <_realloc_r+0x270>
   37e50:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   37e53:	8d 77 f8             	lea    -0x8(%edi),%esi
   37e56:	89 04 24             	mov    %eax,(%esp)
   37e59:	e8 82 db ff ff       	call   359e0 <__malloc_lock>
   37e5e:	8b 47 fc             	mov    -0x4(%edi),%eax
   37e61:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   37e64:	89 c3                	mov    %eax,%ebx
   37e66:	8d 51 0b             	lea    0xb(%ecx),%edx
   37e69:	83 e3 fc             	and    $0xfffffffc,%ebx
   37e6c:	83 fa 16             	cmp    $0x16,%edx
   37e6f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   37e72:	0f 87 00 01 00 00    	ja     37f78 <_realloc_r+0x148>
   37e78:	31 d2                	xor    %edx,%edx
   37e7a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
   37e81:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
   37e88:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   37e8b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
   37e8e:	0f 82 1c 02 00 00    	jb     380b0 <_realloc_r+0x280>
   37e94:	84 d2                	test   %dl,%dl
   37e96:	0f 85 14 02 00 00    	jne    380b0 <_realloc_r+0x280>
   37e9c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
   37e9f:	0f 8d eb 00 00 00    	jge    37f90 <_realloc_r+0x160>
   37ea5:	8b 0d 48 d5 03 00    	mov    0x3d548,%ecx
   37eab:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
   37eae:	39 d1                	cmp    %edx,%ecx
   37eb0:	89 4d cc             	mov    %ecx,-0x34(%ebp)
   37eb3:	0f 84 6f 02 00 00    	je     38128 <_realloc_r+0x2f8>
   37eb9:	8b 4a 04             	mov    0x4(%edx),%ecx
   37ebc:	89 c8                	mov    %ecx,%eax
   37ebe:	83 e0 fe             	and    $0xfffffffe,%eax
   37ec1:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
   37ec6:	0f 84 f4 00 00 00    	je     37fc0 <_realloc_r+0x190>
   37ecc:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
   37ed3:	31 d2                	xor    %edx,%edx
   37ed5:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
   37ed9:	0f 85 39 01 00 00    	jne    38018 <_realloc_r+0x1e8>
   37edf:	89 f1                	mov    %esi,%ecx
   37ee1:	2b 4f f8             	sub    -0x8(%edi),%ecx
   37ee4:	8b 41 04             	mov    0x4(%ecx),%eax
   37ee7:	83 e0 fc             	and    $0xfffffffc,%eax
   37eea:	85 d2                	test   %edx,%edx
   37eec:	0f 84 f6 02 00 00    	je     381e8 <_realloc_r+0x3b8>
   37ef2:	3b 55 cc             	cmp    -0x34(%ebp),%edx
   37ef5:	0f 84 f5 02 00 00    	je     381f0 <_realloc_r+0x3c0>
   37efb:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   37efe:	8b 55 d0             	mov    -0x30(%ebp),%edx
   37f01:	01 d8                	add    %ebx,%eax
   37f03:	01 c2                	add    %eax,%edx
   37f05:	3b 55 d8             	cmp    -0x28(%ebp),%edx
   37f08:	89 55 d0             	mov    %edx,-0x30(%ebp)
   37f0b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   37f0e:	0f 8c ac 01 00 00    	jl     380c0 <_realloc_r+0x290>
   37f14:	8b 42 0c             	mov    0xc(%edx),%eax
   37f17:	83 eb 04             	sub    $0x4,%ebx
   37f1a:	8b 52 08             	mov    0x8(%edx),%edx
   37f1d:	83 fb 24             	cmp    $0x24,%ebx
   37f20:	8d 71 08             	lea    0x8(%ecx),%esi
   37f23:	89 42 0c             	mov    %eax,0xc(%edx)
   37f26:	89 50 08             	mov    %edx,0x8(%eax)
   37f29:	8b 41 0c             	mov    0xc(%ecx),%eax
   37f2c:	8b 51 08             	mov    0x8(%ecx),%edx
   37f2f:	89 42 0c             	mov    %eax,0xc(%edx)
   37f32:	89 50 08             	mov    %edx,0x8(%eax)
   37f35:	0f 87 85 03 00 00    	ja     382c0 <_realloc_r+0x490>
   37f3b:	83 fb 13             	cmp    $0x13,%ebx
   37f3e:	89 f0                	mov    %esi,%eax
   37f40:	76 1a                	jbe    37f5c <_realloc_r+0x12c>
   37f42:	8b 07                	mov    (%edi),%eax
   37f44:	83 fb 1b             	cmp    $0x1b,%ebx
   37f47:	89 41 08             	mov    %eax,0x8(%ecx)
   37f4a:	8b 47 04             	mov    0x4(%edi),%eax
   37f4d:	89 41 0c             	mov    %eax,0xc(%ecx)
   37f50:	0f 87 8f 03 00 00    	ja     382e5 <_realloc_r+0x4b5>
   37f56:	8d 41 10             	lea    0x10(%ecx),%eax
   37f59:	83 c7 08             	add    $0x8,%edi
   37f5c:	8b 17                	mov    (%edi),%edx
   37f5e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
   37f61:	89 10                	mov    %edx,(%eax)
   37f63:	8b 57 04             	mov    0x4(%edi),%edx
   37f66:	89 50 04             	mov    %edx,0x4(%eax)
   37f69:	8b 57 08             	mov    0x8(%edi),%edx
   37f6c:	89 f7                	mov    %esi,%edi
   37f6e:	89 ce                	mov    %ecx,%esi
   37f70:	89 50 08             	mov    %edx,0x8(%eax)
   37f73:	8b 41 04             	mov    0x4(%ecx),%eax
   37f76:	eb 1b                	jmp    37f93 <_realloc_r+0x163>
   37f78:	83 e2 f8             	and    $0xfffffff8,%edx
   37f7b:	89 55 dc             	mov    %edx,-0x24(%ebp)
   37f7e:	89 55 d8             	mov    %edx,-0x28(%ebp)
   37f81:	c1 ea 1f             	shr    $0x1f,%edx
   37f84:	e9 ff fe ff ff       	jmp    37e88 <_realloc_r+0x58>
   37f89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37f90:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   37f93:	89 da                	mov    %ebx,%edx
   37f95:	2b 55 dc             	sub    -0x24(%ebp),%edx
   37f98:	83 fa 0f             	cmp    $0xf,%edx
   37f9b:	77 4b                	ja     37fe8 <_realloc_r+0x1b8>
   37f9d:	83 e0 01             	and    $0x1,%eax
   37fa0:	09 d8                	or     %ebx,%eax
   37fa2:	89 46 04             	mov    %eax,0x4(%esi)
   37fa5:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
   37faa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   37fad:	89 04 24             	mov    %eax,(%esp)
   37fb0:	e8 3b da ff ff       	call   359f0 <__malloc_unlock>
   37fb5:	89 f8                	mov    %edi,%eax
   37fb7:	83 c4 3c             	add    $0x3c,%esp
   37fba:	5b                   	pop    %ebx
   37fbb:	5e                   	pop    %esi
   37fbc:	5f                   	pop    %edi
   37fbd:	5d                   	pop    %ebp
   37fbe:	c3                   	ret    
   37fbf:	90                   	nop
   37fc0:	83 e1 fc             	and    $0xfffffffc,%ecx
   37fc3:	89 4d d0             	mov    %ecx,-0x30(%ebp)
   37fc6:	01 d9                	add    %ebx,%ecx
   37fc8:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
   37fcb:	0f 8c 04 ff ff ff    	jl     37ed5 <_realloc_r+0xa5>
   37fd1:	8b 5a 0c             	mov    0xc(%edx),%ebx
   37fd4:	8b 52 08             	mov    0x8(%edx),%edx
   37fd7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   37fda:	89 5a 0c             	mov    %ebx,0xc(%edx)
   37fdd:	89 53 08             	mov    %edx,0x8(%ebx)
   37fe0:	89 cb                	mov    %ecx,%ebx
   37fe2:	eb af                	jmp    37f93 <_realloc_r+0x163>
   37fe4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37fe8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   37feb:	83 e0 01             	and    $0x1,%eax
   37fee:	09 d8                	or     %ebx,%eax
   37ff0:	89 46 04             	mov    %eax,0x4(%esi)
   37ff3:	89 d0                	mov    %edx,%eax
   37ff5:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
   37ff8:	83 c8 01             	or     $0x1,%eax
   37ffb:	89 41 04             	mov    %eax,0x4(%ecx)
   37ffe:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   38001:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
   38006:	83 c1 08             	add    $0x8,%ecx
   38009:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   3800d:	89 04 24             	mov    %eax,(%esp)
   38010:	e8 2b fb ff ff       	call   37b40 <_free_r>
   38015:	eb 93                	jmp    37faa <_realloc_r+0x17a>
   38017:	90                   	nop
   38018:	8b 45 e0             	mov    -0x20(%ebp),%eax
   3801b:	89 44 24 04          	mov    %eax,0x4(%esp)
   3801f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   38022:	89 04 24             	mov    %eax,(%esp)
   38025:	e8 d6 d1 ff ff       	call   35200 <_malloc_r>
   3802a:	85 c0                	test   %eax,%eax
   3802c:	89 c1                	mov    %eax,%ecx
   3802e:	0f 84 65 03 00 00    	je     38399 <_realloc_r+0x569>
   38034:	8b 47 fc             	mov    -0x4(%edi),%eax
   38037:	8d 51 f8             	lea    -0x8(%ecx),%edx
   3803a:	89 55 e0             	mov    %edx,-0x20(%ebp)
   3803d:	89 c2                	mov    %eax,%edx
   3803f:	83 e2 fe             	and    $0xfffffffe,%edx
   38042:	01 f2                	add    %esi,%edx
   38044:	39 55 e0             	cmp    %edx,-0x20(%ebp)
   38047:	0f 84 63 02 00 00    	je     382b0 <_realloc_r+0x480>
   3804d:	83 eb 04             	sub    $0x4,%ebx
   38050:	83 fb 24             	cmp    $0x24,%ebx
   38053:	0f 87 6f 01 00 00    	ja     381c8 <_realloc_r+0x398>
   38059:	83 fb 13             	cmp    $0x13,%ebx
   3805c:	0f 87 ee 00 00 00    	ja     38150 <_realloc_r+0x320>
   38062:	89 c8                	mov    %ecx,%eax
   38064:	89 fa                	mov    %edi,%edx
   38066:	8b 1a                	mov    (%edx),%ebx
   38068:	89 18                	mov    %ebx,(%eax)
   3806a:	8b 5a 04             	mov    0x4(%edx),%ebx
   3806d:	89 58 04             	mov    %ebx,0x4(%eax)
   38070:	8b 52 08             	mov    0x8(%edx),%edx
   38073:	89 50 08             	mov    %edx,0x8(%eax)
   38076:	8b 75 e4             	mov    -0x1c(%ebp),%esi
   38079:	89 7c 24 04          	mov    %edi,0x4(%esp)
   3807d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   38080:	89 34 24             	mov    %esi,(%esp)
   38083:	e8 b8 fa ff ff       	call   37b40 <_free_r>
   38088:	89 34 24             	mov    %esi,(%esp)
   3808b:	e8 60 d9 ff ff       	call   359f0 <__malloc_unlock>
   38090:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   38093:	83 c4 3c             	add    $0x3c,%esp
   38096:	5b                   	pop    %ebx
   38097:	5e                   	pop    %esi
   38098:	5f                   	pop    %edi
   38099:	89 c8                	mov    %ecx,%eax
   3809b:	5d                   	pop    %ebp
   3809c:	c3                   	ret    
   3809d:	8d 76 00             	lea    0x0(%esi),%esi
   380a0:	89 45 0c             	mov    %eax,0xc(%ebp)
   380a3:	83 c4 3c             	add    $0x3c,%esp
   380a6:	5b                   	pop    %ebx
   380a7:	5e                   	pop    %esi
   380a8:	5f                   	pop    %edi
   380a9:	5d                   	pop    %ebp
   380aa:	e9 51 d1 ff ff       	jmp    35200 <_malloc_r>
   380af:	90                   	nop
   380b0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   380b3:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   380b9:	31 c0                	xor    %eax,%eax
   380bb:	e9 f7 fe ff ff       	jmp    37fb7 <_realloc_r+0x187>
   380c0:	89 c2                	mov    %eax,%edx
   380c2:	3b 55 d8             	cmp    -0x28(%ebp),%edx
   380c5:	0f 8c 4d ff ff ff    	jl     38018 <_realloc_r+0x1e8>
   380cb:	8b 71 08             	mov    0x8(%ecx),%esi
   380ce:	83 eb 04             	sub    $0x4,%ebx
   380d1:	8b 41 0c             	mov    0xc(%ecx),%eax
   380d4:	83 fb 24             	cmp    $0x24,%ebx
   380d7:	89 46 0c             	mov    %eax,0xc(%esi)
   380da:	89 70 08             	mov    %esi,0x8(%eax)
   380dd:	8d 71 08             	lea    0x8(%ecx),%esi
   380e0:	0f 87 88 00 00 00    	ja     3816e <_realloc_r+0x33e>
   380e6:	83 fb 13             	cmp    $0x13,%ebx
   380e9:	89 f0                	mov    %esi,%eax
   380eb:	76 1a                	jbe    38107 <_realloc_r+0x2d7>
   380ed:	8b 07                	mov    (%edi),%eax
   380ef:	83 fb 1b             	cmp    $0x1b,%ebx
   380f2:	89 41 08             	mov    %eax,0x8(%ecx)
   380f5:	8b 47 04             	mov    0x4(%edi),%eax
   380f8:	89 41 0c             	mov    %eax,0xc(%ecx)
   380fb:	0f 87 17 02 00 00    	ja     38318 <_realloc_r+0x4e8>
   38101:	8d 41 10             	lea    0x10(%ecx),%eax
   38104:	83 c7 08             	add    $0x8,%edi
   38107:	8b 1f                	mov    (%edi),%ebx
   38109:	89 18                	mov    %ebx,(%eax)
   3810b:	8b 5f 04             	mov    0x4(%edi),%ebx
   3810e:	89 58 04             	mov    %ebx,0x4(%eax)
   38111:	8b 5f 08             	mov    0x8(%edi),%ebx
   38114:	89 f7                	mov    %esi,%edi
   38116:	89 ce                	mov    %ecx,%esi
   38118:	89 58 08             	mov    %ebx,0x8(%eax)
   3811b:	89 d3                	mov    %edx,%ebx
   3811d:	8b 41 04             	mov    0x4(%ecx),%eax
   38120:	e9 6e fe ff ff       	jmp    37f93 <_realloc_r+0x163>
   38125:	8d 76 00             	lea    0x0(%esi),%esi
   38128:	8b 45 cc             	mov    -0x34(%ebp),%eax
   3812b:	8b 55 dc             	mov    -0x24(%ebp),%edx
   3812e:	8b 48 04             	mov    0x4(%eax),%ecx
   38131:	83 c2 10             	add    $0x10,%edx
   38134:	89 4d d0             	mov    %ecx,-0x30(%ebp)
   38137:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
   3813b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
   3813e:	01 d9                	add    %ebx,%ecx
   38140:	39 d1                	cmp    %edx,%ecx
   38142:	7d 54                	jge    38198 <_realloc_r+0x368>
   38144:	89 c2                	mov    %eax,%edx
   38146:	e9 8a fd ff ff       	jmp    37ed5 <_realloc_r+0xa5>
   3814b:	90                   	nop
   3814c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   38150:	8b 07                	mov    (%edi),%eax
   38152:	83 fb 1b             	cmp    $0x1b,%ebx
   38155:	89 01                	mov    %eax,(%ecx)
   38157:	8b 47 04             	mov    0x4(%edi),%eax
   3815a:	89 41 04             	mov    %eax,0x4(%ecx)
   3815d:	0f 87 2d 01 00 00    	ja     38290 <_realloc_r+0x460>
   38163:	8d 41 08             	lea    0x8(%ecx),%eax
   38166:	8d 57 08             	lea    0x8(%edi),%edx
   38169:	e9 f8 fe ff ff       	jmp    38066 <_realloc_r+0x236>
   3816e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   38172:	89 7c 24 04          	mov    %edi,0x4(%esp)
   38176:	89 f7                	mov    %esi,%edi
   38178:	89 34 24             	mov    %esi,(%esp)
   3817b:	89 55 d8             	mov    %edx,-0x28(%ebp)
   3817e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   38181:	e8 1a fc ff ff       	call   37da0 <memmove>
   38186:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   38189:	8b 55 d8             	mov    -0x28(%ebp),%edx
   3818c:	8b 41 04             	mov    0x4(%ecx),%eax
   3818f:	89 ce                	mov    %ecx,%esi
   38191:	89 d3                	mov    %edx,%ebx
   38193:	e9 fb fd ff ff       	jmp    37f93 <_realloc_r+0x163>
   38198:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   3819b:	29 d9                	sub    %ebx,%ecx
   3819d:	01 de                	add    %ebx,%esi
   3819f:	83 c9 01             	or     $0x1,%ecx
   381a2:	89 35 48 d5 03 00    	mov    %esi,0x3d548
   381a8:	89 4e 04             	mov    %ecx,0x4(%esi)
   381ab:	8b 47 fc             	mov    -0x4(%edi),%eax
   381ae:	83 e0 01             	and    $0x1,%eax
   381b1:	09 d8                	or     %ebx,%eax
   381b3:	89 47 fc             	mov    %eax,-0x4(%edi)
   381b6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   381b9:	89 04 24             	mov    %eax,(%esp)
   381bc:	e8 2f d8 ff ff       	call   359f0 <__malloc_unlock>
   381c1:	89 f8                	mov    %edi,%eax
   381c3:	e9 ef fd ff ff       	jmp    37fb7 <_realloc_r+0x187>
   381c8:	89 0c 24             	mov    %ecx,(%esp)
   381cb:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   381cf:	89 7c 24 04          	mov    %edi,0x4(%esp)
   381d3:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   381d6:	e8 c5 fb ff ff       	call   37da0 <memmove>
   381db:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   381de:	e9 93 fe ff ff       	jmp    38076 <_realloc_r+0x246>
   381e3:	90                   	nop
   381e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   381e8:	8d 14 18             	lea    (%eax,%ebx,1),%edx
   381eb:	e9 d2 fe ff ff       	jmp    380c2 <_realloc_r+0x292>
   381f0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
   381f3:	8b 45 d0             	mov    -0x30(%ebp),%eax
   381f6:	01 d0                	add    %edx,%eax
   381f8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   381fb:	8b 45 dc             	mov    -0x24(%ebp),%eax
   381fe:	83 c0 10             	add    $0x10,%eax
   38201:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
   38204:	0f 8c b8 fe ff ff    	jl     380c2 <_realloc_r+0x292>
   3820a:	8b 41 0c             	mov    0xc(%ecx),%eax
   3820d:	83 eb 04             	sub    $0x4,%ebx
   38210:	8b 51 08             	mov    0x8(%ecx),%edx
   38213:	83 fb 24             	cmp    $0x24,%ebx
   38216:	8d 71 08             	lea    0x8(%ecx),%esi
   38219:	89 42 0c             	mov    %eax,0xc(%edx)
   3821c:	89 50 08             	mov    %edx,0x8(%eax)
   3821f:	0f 87 3d 01 00 00    	ja     38362 <_realloc_r+0x532>
   38225:	83 fb 13             	cmp    $0x13,%ebx
   38228:	89 f0                	mov    %esi,%eax
   3822a:	76 1a                	jbe    38246 <_realloc_r+0x416>
   3822c:	8b 07                	mov    (%edi),%eax
   3822e:	83 fb 1b             	cmp    $0x1b,%ebx
   38231:	89 41 08             	mov    %eax,0x8(%ecx)
   38234:	8b 47 04             	mov    0x4(%edi),%eax
   38237:	89 41 0c             	mov    %eax,0xc(%ecx)
   3823a:	0f 87 3d 01 00 00    	ja     3837d <_realloc_r+0x54d>
   38240:	8d 41 10             	lea    0x10(%ecx),%eax
   38243:	83 c7 08             	add    $0x8,%edi
   38246:	8b 17                	mov    (%edi),%edx
   38248:	89 10                	mov    %edx,(%eax)
   3824a:	8b 57 04             	mov    0x4(%edi),%edx
   3824d:	89 50 04             	mov    %edx,0x4(%eax)
   38250:	8b 57 08             	mov    0x8(%edi),%edx
   38253:	89 50 08             	mov    %edx,0x8(%eax)
   38256:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   38259:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   3825c:	89 d8                	mov    %ebx,%eax
   3825e:	29 df                	sub    %ebx,%edi
   38260:	01 c8                	add    %ecx,%eax
   38262:	83 cf 01             	or     $0x1,%edi
   38265:	a3 48 d5 03 00       	mov    %eax,0x3d548
   3826a:	89 78 04             	mov    %edi,0x4(%eax)
   3826d:	8b 41 04             	mov    0x4(%ecx),%eax
   38270:	83 e0 01             	and    $0x1,%eax
   38273:	09 d8                	or     %ebx,%eax
   38275:	89 41 04             	mov    %eax,0x4(%ecx)
   38278:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3827b:	89 04 24             	mov    %eax,(%esp)
   3827e:	e8 6d d7 ff ff       	call   359f0 <__malloc_unlock>
   38283:	89 f0                	mov    %esi,%eax
   38285:	e9 2d fd ff ff       	jmp    37fb7 <_realloc_r+0x187>
   3828a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   38290:	8b 47 08             	mov    0x8(%edi),%eax
   38293:	83 fb 24             	cmp    $0x24,%ebx
   38296:	89 41 08             	mov    %eax,0x8(%ecx)
   38299:	8b 47 0c             	mov    0xc(%edi),%eax
   3829c:	89 41 0c             	mov    %eax,0xc(%ecx)
   3829f:	74 60                	je     38301 <_realloc_r+0x4d1>
   382a1:	8d 41 10             	lea    0x10(%ecx),%eax
   382a4:	8d 57 10             	lea    0x10(%edi),%edx
   382a7:	e9 ba fd ff ff       	jmp    38066 <_realloc_r+0x236>
   382ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   382b0:	8b 51 fc             	mov    -0x4(%ecx),%edx
   382b3:	83 e2 fc             	and    $0xfffffffc,%edx
   382b6:	01 d3                	add    %edx,%ebx
   382b8:	e9 d6 fc ff ff       	jmp    37f93 <_realloc_r+0x163>
   382bd:	8d 76 00             	lea    0x0(%esi),%esi
   382c0:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   382c4:	89 7c 24 04          	mov    %edi,0x4(%esp)
   382c8:	89 f7                	mov    %esi,%edi
   382ca:	89 34 24             	mov    %esi,(%esp)
   382cd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   382d0:	e8 cb fa ff ff       	call   37da0 <memmove>
   382d5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   382d8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
   382db:	8b 41 04             	mov    0x4(%ecx),%eax
   382de:	89 ce                	mov    %ecx,%esi
   382e0:	e9 ae fc ff ff       	jmp    37f93 <_realloc_r+0x163>
   382e5:	8b 47 08             	mov    0x8(%edi),%eax
   382e8:	83 fb 24             	cmp    $0x24,%ebx
   382eb:	89 41 10             	mov    %eax,0x10(%ecx)
   382ee:	8b 47 0c             	mov    0xc(%edi),%eax
   382f1:	89 41 14             	mov    %eax,0x14(%ecx)
   382f4:	74 3e                	je     38334 <_realloc_r+0x504>
   382f6:	8d 41 18             	lea    0x18(%ecx),%eax
   382f9:	83 c7 10             	add    $0x10,%edi
   382fc:	e9 5b fc ff ff       	jmp    37f5c <_realloc_r+0x12c>
   38301:	8b 47 10             	mov    0x10(%edi),%eax
   38304:	8d 57 18             	lea    0x18(%edi),%edx
   38307:	89 41 10             	mov    %eax,0x10(%ecx)
   3830a:	8b 5f 14             	mov    0x14(%edi),%ebx
   3830d:	8d 41 18             	lea    0x18(%ecx),%eax
   38310:	89 59 14             	mov    %ebx,0x14(%ecx)
   38313:	e9 4e fd ff ff       	jmp    38066 <_realloc_r+0x236>
   38318:	8b 47 08             	mov    0x8(%edi),%eax
   3831b:	83 fb 24             	cmp    $0x24,%ebx
   3831e:	89 41 10             	mov    %eax,0x10(%ecx)
   38321:	8b 47 0c             	mov    0xc(%edi),%eax
   38324:	89 41 14             	mov    %eax,0x14(%ecx)
   38327:	74 22                	je     3834b <_realloc_r+0x51b>
   38329:	8d 41 18             	lea    0x18(%ecx),%eax
   3832c:	83 c7 10             	add    $0x10,%edi
   3832f:	e9 d3 fd ff ff       	jmp    38107 <_realloc_r+0x2d7>
   38334:	8b 47 10             	mov    0x10(%edi),%eax
   38337:	83 c7 18             	add    $0x18,%edi
   3833a:	89 41 18             	mov    %eax,0x18(%ecx)
   3833d:	8b 57 fc             	mov    -0x4(%edi),%edx
   38340:	8d 41 20             	lea    0x20(%ecx),%eax
   38343:	89 51 1c             	mov    %edx,0x1c(%ecx)
   38346:	e9 11 fc ff ff       	jmp    37f5c <_realloc_r+0x12c>
   3834b:	8b 47 10             	mov    0x10(%edi),%eax
   3834e:	83 c7 18             	add    $0x18,%edi
   38351:	89 41 18             	mov    %eax,0x18(%ecx)
   38354:	8b 5f fc             	mov    -0x4(%edi),%ebx
   38357:	8d 41 20             	lea    0x20(%ecx),%eax
   3835a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
   3835d:	e9 a5 fd ff ff       	jmp    38107 <_realloc_r+0x2d7>
   38362:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   38366:	89 7c 24 04          	mov    %edi,0x4(%esp)
   3836a:	89 34 24             	mov    %esi,(%esp)
   3836d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   38370:	e8 2b fa ff ff       	call   37da0 <memmove>
   38375:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   38378:	e9 d9 fe ff ff       	jmp    38256 <_realloc_r+0x426>
   3837d:	8b 47 08             	mov    0x8(%edi),%eax
   38380:	83 fb 24             	cmp    $0x24,%ebx
   38383:	89 41 10             	mov    %eax,0x10(%ecx)
   38386:	8b 47 0c             	mov    0xc(%edi),%eax
   38389:	89 41 14             	mov    %eax,0x14(%ecx)
   3838c:	74 1d                	je     383ab <_realloc_r+0x57b>
   3838e:	8d 41 18             	lea    0x18(%ecx),%eax
   38391:	83 c7 10             	add    $0x10,%edi
   38394:	e9 ad fe ff ff       	jmp    38246 <_realloc_r+0x416>
   38399:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3839c:	89 04 24             	mov    %eax,(%esp)
   3839f:	e8 4c d6 ff ff       	call   359f0 <__malloc_unlock>
   383a4:	31 c0                	xor    %eax,%eax
   383a6:	e9 0c fc ff ff       	jmp    37fb7 <_realloc_r+0x187>
   383ab:	8b 47 10             	mov    0x10(%edi),%eax
   383ae:	83 c7 18             	add    $0x18,%edi
   383b1:	89 41 18             	mov    %eax,0x18(%ecx)
   383b4:	8b 57 fc             	mov    -0x4(%edi),%edx
   383b7:	8d 41 20             	lea    0x20(%ecx),%eax
   383ba:	89 51 1c             	mov    %edx,0x1c(%ecx)
   383bd:	e9 84 fe ff ff       	jmp    38246 <_realloc_r+0x416>
   383c2:	66 90                	xchg   %ax,%ax
   383c4:	66 90                	xchg   %ax,%ax
   383c6:	66 90                	xchg   %ax,%ax
   383c8:	66 90                	xchg   %ax,%ax
   383ca:	66 90                	xchg   %ax,%ax
   383cc:	66 90                	xchg   %ax,%ax
   383ce:	66 90                	xchg   %ax,%ax

000383d0 <cleanup_glue>:
   383d0:	55                   	push   %ebp
   383d1:	89 e5                	mov    %esp,%ebp
   383d3:	56                   	push   %esi
   383d4:	53                   	push   %ebx
   383d5:	83 ec 10             	sub    $0x10,%esp
   383d8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   383db:	8b 75 08             	mov    0x8(%ebp),%esi
   383de:	8b 03                	mov    (%ebx),%eax
   383e0:	85 c0                	test   %eax,%eax
   383e2:	74 0c                	je     383f0 <cleanup_glue+0x20>
   383e4:	89 44 24 04          	mov    %eax,0x4(%esp)
   383e8:	89 34 24             	mov    %esi,(%esp)
   383eb:	e8 e0 ff ff ff       	call   383d0 <cleanup_glue>
   383f0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
   383f3:	89 75 08             	mov    %esi,0x8(%ebp)
   383f6:	83 c4 10             	add    $0x10,%esp
   383f9:	5b                   	pop    %ebx
   383fa:	5e                   	pop    %esi
   383fb:	5d                   	pop    %ebp
   383fc:	e9 3f f7 ff ff       	jmp    37b40 <_free_r>
   38401:	eb 0d                	jmp    38410 <_reclaim_reent>
   38403:	90                   	nop
   38404:	90                   	nop
   38405:	90                   	nop
   38406:	90                   	nop
   38407:	90                   	nop
   38408:	90                   	nop
   38409:	90                   	nop
   3840a:	90                   	nop
   3840b:	90                   	nop
   3840c:	90                   	nop
   3840d:	90                   	nop
   3840e:	90                   	nop
   3840f:	90                   	nop

00038410 <_reclaim_reent>:
   38410:	55                   	push   %ebp
   38411:	89 e5                	mov    %esp,%ebp
   38413:	57                   	push   %edi
   38414:	56                   	push   %esi
   38415:	53                   	push   %ebx
   38416:	83 ec 1c             	sub    $0x1c,%esp
   38419:	8b 5d 08             	mov    0x8(%ebp),%ebx
   3841c:	3b 1d 40 d0 03 00    	cmp    0x3d040,%ebx
   38422:	0f 84 a6 00 00 00    	je     384ce <_reclaim_reent+0xbe>
   38428:	8b 53 4c             	mov    0x4c(%ebx),%edx
   3842b:	85 d2                	test   %edx,%edx
   3842d:	74 46                	je     38475 <_reclaim_reent+0x65>
   3842f:	31 c0                	xor    %eax,%eax
   38431:	31 f6                	xor    %esi,%esi
   38433:	90                   	nop
   38434:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   38438:	8b 04 82             	mov    (%edx,%eax,4),%eax
   3843b:	85 c0                	test   %eax,%eax
   3843d:	75 0b                	jne    3844a <_reclaim_reent+0x3a>
   3843f:	eb 1e                	jmp    3845f <_reclaim_reent+0x4f>
   38441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   38448:	89 f8                	mov    %edi,%eax
   3844a:	8b 38                	mov    (%eax),%edi
   3844c:	89 44 24 04          	mov    %eax,0x4(%esp)
   38450:	89 1c 24             	mov    %ebx,(%esp)
   38453:	e8 e8 f6 ff ff       	call   37b40 <_free_r>
   38458:	85 ff                	test   %edi,%edi
   3845a:	75 ec                	jne    38448 <_reclaim_reent+0x38>
   3845c:	8b 53 4c             	mov    0x4c(%ebx),%edx
   3845f:	83 c6 01             	add    $0x1,%esi
   38462:	83 fe 20             	cmp    $0x20,%esi
   38465:	89 f0                	mov    %esi,%eax
   38467:	75 cf                	jne    38438 <_reclaim_reent+0x28>
   38469:	89 54 24 04          	mov    %edx,0x4(%esp)
   3846d:	89 1c 24             	mov    %ebx,(%esp)
   38470:	e8 cb f6 ff ff       	call   37b40 <_free_r>
   38475:	8b 43 40             	mov    0x40(%ebx),%eax
   38478:	85 c0                	test   %eax,%eax
   3847a:	74 0c                	je     38488 <_reclaim_reent+0x78>
   3847c:	89 44 24 04          	mov    %eax,0x4(%esp)
   38480:	89 1c 24             	mov    %ebx,(%esp)
   38483:	e8 b8 f6 ff ff       	call   37b40 <_free_r>
   38488:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
   3848e:	85 c0                	test   %eax,%eax
   38490:	74 22                	je     384b4 <_reclaim_reent+0xa4>
   38492:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
   38498:	39 f0                	cmp    %esi,%eax
   3849a:	75 06                	jne    384a2 <_reclaim_reent+0x92>
   3849c:	eb 16                	jmp    384b4 <_reclaim_reent+0xa4>
   3849e:	66 90                	xchg   %ax,%ax
   384a0:	89 f8                	mov    %edi,%eax
   384a2:	8b 38                	mov    (%eax),%edi
   384a4:	89 44 24 04          	mov    %eax,0x4(%esp)
   384a8:	89 1c 24             	mov    %ebx,(%esp)
   384ab:	e8 90 f6 ff ff       	call   37b40 <_free_r>
   384b0:	39 fe                	cmp    %edi,%esi
   384b2:	75 ec                	jne    384a0 <_reclaim_reent+0x90>
   384b4:	8b 43 54             	mov    0x54(%ebx),%eax
   384b7:	85 c0                	test   %eax,%eax
   384b9:	74 0c                	je     384c7 <_reclaim_reent+0xb7>
   384bb:	89 44 24 04          	mov    %eax,0x4(%esp)
   384bf:	89 1c 24             	mov    %ebx,(%esp)
   384c2:	e8 79 f6 ff ff       	call   37b40 <_free_r>
   384c7:	8b 43 38             	mov    0x38(%ebx),%eax
   384ca:	85 c0                	test   %eax,%eax
   384cc:	75 08                	jne    384d6 <_reclaim_reent+0xc6>
   384ce:	83 c4 1c             	add    $0x1c,%esp
   384d1:	5b                   	pop    %ebx
   384d2:	5e                   	pop    %esi
   384d3:	5f                   	pop    %edi
   384d4:	5d                   	pop    %ebp
   384d5:	c3                   	ret    
   384d6:	89 1c 24             	mov    %ebx,(%esp)
   384d9:	ff 53 3c             	call   *0x3c(%ebx)
   384dc:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
   384e2:	85 c0                	test   %eax,%eax
   384e4:	74 e8                	je     384ce <_reclaim_reent+0xbe>
   384e6:	89 1c 24             	mov    %ebx,(%esp)
   384e9:	89 44 24 04          	mov    %eax,0x4(%esp)
   384ed:	e8 de fe ff ff       	call   383d0 <cleanup_glue>
   384f2:	83 c4 1c             	add    $0x1c,%esp
   384f5:	5b                   	pop    %ebx
   384f6:	5e                   	pop    %esi
   384f7:	5f                   	pop    %edi
   384f8:	5d                   	pop    %ebp
   384f9:	c3                   	ret    
