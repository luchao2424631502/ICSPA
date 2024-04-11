
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
   30088:	e8 7d 0a 00 00       	call   30b0a <irq_handle>
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
   300dc:	e8 08 09 00 00       	call   309e9 <printk>
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
   30378:	e8 c0 06 00 00       	call   30a3d <add_irq_handle>
   3037d:	83 c4 10             	add    $0x10,%esp
   30380:	83 ec 08             	sub    $0x8,%esp
   30383:	8d 83 f8 32 ff ff    	lea    -0xcd08(%ebx),%eax
   30389:	50                   	push   %eax
   3038a:	6a 0e                	push   $0xe
   3038c:	e8 ac 06 00 00       	call   30a3d <add_irq_handle>
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
   307f7:	56                   	push   %esi
   307f8:	53                   	push   %ebx
   307f9:	83 ec 10             	sub    $0x10,%esp
   307fc:	e8 fa f8 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30801:	81 c3 ff c7 00 00    	add    $0xc7ff,%ebx
   30807:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   3080e:	8d 83 cc c0 ff ff    	lea    -0x3f34(%ebx),%eax
   30814:	50                   	push   %eax
   30815:	6a 1d                	push   $0x1d
   30817:	8d 83 4c c0 ff ff    	lea    -0x3fb4(%ebx),%eax
   3081d:	50                   	push   %eax
   3081e:	8d 83 5c c0 ff ff    	lea    -0x3fa4(%ebx),%eax
   30824:	50                   	push   %eax
   30825:	e8 bf 01 00 00       	call   309e9 <printk>
   3082a:	83 c4 10             	add    $0x10,%esp
   3082d:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30830:	8b 50 1c             	mov    0x1c(%eax),%edx
   30833:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30836:	01 d0                	add    %edx,%eax
   30838:	89 45 f4             	mov    %eax,-0xc(%ebp)
   3083b:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3083e:	8b 40 2c             	mov    0x2c(%eax),%eax
   30841:	0f b7 c0             	movzwl %ax,%eax
   30844:	c1 e0 05             	shl    $0x5,%eax
   30847:	89 c2                	mov    %eax,%edx
   30849:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3084c:	01 d0                	add    %edx,%eax
   3084e:	89 45 ec             	mov    %eax,-0x14(%ebp)
   30851:	e9 a0 00 00 00       	jmp    308f6 <loader+0x102>
   30856:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30859:	8b 00                	mov    (%eax),%eax
   3085b:	83 f8 01             	cmp    $0x1,%eax
   3085e:	0f 85 8e 00 00 00    	jne    308f2 <loader+0xfe>
   30864:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30867:	8b 70 14             	mov    0x14(%eax),%esi
   3086a:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3086d:	8b 48 10             	mov    0x10(%eax),%ecx
   30870:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30873:	8b 50 08             	mov    0x8(%eax),%edx
   30876:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30879:	8b 40 04             	mov    0x4(%eax),%eax
   3087c:	83 ec 0c             	sub    $0xc,%esp
   3087f:	56                   	push   %esi
   30880:	51                   	push   %ecx
   30881:	52                   	push   %edx
   30882:	50                   	push   %eax
   30883:	8d 83 98 c0 ff ff    	lea    -0x3f68(%ebx),%eax
   30889:	50                   	push   %eax
   3088a:	e8 5a 01 00 00       	call   309e9 <printk>
   3088f:	83 c4 20             	add    $0x20,%esp
   30892:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30895:	8b 40 10             	mov    0x10(%eax),%eax
   30898:	8b 55 f4             	mov    -0xc(%ebp),%edx
   3089b:	8b 4a 04             	mov    0x4(%edx),%ecx
   3089e:	8b 55 f0             	mov    -0x10(%ebp),%edx
   308a1:	01 d1                	add    %edx,%ecx
   308a3:	8b 55 f4             	mov    -0xc(%ebp),%edx
   308a6:	8b 52 08             	mov    0x8(%edx),%edx
   308a9:	83 ec 04             	sub    $0x4,%esp
   308ac:	50                   	push   %eax
   308ad:	51                   	push   %ecx
   308ae:	52                   	push   %edx
   308af:	e8 00 14 00 00       	call   31cb4 <memcpy>
   308b4:	83 c4 10             	add    $0x10,%esp
   308b7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308ba:	8b 50 10             	mov    0x10(%eax),%edx
   308bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308c0:	8b 40 14             	mov    0x14(%eax),%eax
   308c3:	39 c2                	cmp    %eax,%edx
   308c5:	73 2b                	jae    308f2 <loader+0xfe>
   308c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308ca:	8b 50 14             	mov    0x14(%eax),%edx
   308cd:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308d0:	8b 40 10             	mov    0x10(%eax),%eax
   308d3:	29 c2                	sub    %eax,%edx
   308d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308d8:	8b 48 10             	mov    0x10(%eax),%ecx
   308db:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308de:	8b 40 08             	mov    0x8(%eax),%eax
   308e1:	01 c8                	add    %ecx,%eax
   308e3:	83 ec 04             	sub    $0x4,%esp
   308e6:	52                   	push   %edx
   308e7:	6a 00                	push   $0x0
   308e9:	50                   	push   %eax
   308ea:	e8 0d 14 00 00       	call   31cfc <memset>
   308ef:	83 c4 10             	add    $0x10,%esp
   308f2:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
   308f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
   308f9:	3b 45 ec             	cmp    -0x14(%ebp),%eax
   308fc:	0f 82 54 ff ff ff    	jb     30856 <loader+0x62>
   30902:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30905:	8b 40 18             	mov    0x18(%eax),%eax
   30908:	89 45 e8             	mov    %eax,-0x18(%ebp)
   3090b:	8b 45 e8             	mov    -0x18(%ebp),%eax
   3090e:	8d 65 f8             	lea    -0x8(%ebp),%esp
   30911:	5b                   	pop    %ebx
   30912:	5e                   	pop    %esi
   30913:	5d                   	pop    %ebp
   30914:	c3                   	ret    

00030915 <sbrk>:
   30915:	55                   	push   %ebp
   30916:	89 e5                	mov    %esp,%ebp
   30918:	53                   	push   %ebx
   30919:	83 ec 04             	sub    $0x4,%esp
   3091c:	e8 d6 f7 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30921:	05 df c6 00 00       	add    $0xc6df,%eax
   30926:	83 ec 0c             	sub    $0xc,%esp
   30929:	8d 90 d4 c0 ff ff    	lea    -0x3f2c(%eax),%edx
   3092f:	52                   	push   %edx
   30930:	8d 90 34 c1 ff ff    	lea    -0x3ecc(%eax),%edx
   30936:	52                   	push   %edx
   30937:	6a 09                	push   $0x9
   30939:	8d 90 d6 c0 ff ff    	lea    -0x3f2a(%eax),%edx
   3093f:	52                   	push   %edx
   30940:	8d 90 e8 c0 ff ff    	lea    -0x3f18(%eax),%edx
   30946:	52                   	push   %edx
   30947:	89 c3                	mov    %eax,%ebx
   30949:	e8 9b 00 00 00       	call   309e9 <printk>
   3094e:	83 c4 20             	add    $0x20,%esp
   30951:	b8 01 00 00 00       	mov    $0x1,%eax
   30956:	82                   	nemu_trap 
   30957:	b8 00 00 00 00       	mov    $0x0,%eax
   3095c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3095f:	c9                   	leave  
   30960:	c3                   	ret    

00030961 <in_byte>:
   30961:	55                   	push   %ebp
   30962:	89 e5                	mov    %esp,%ebp
   30964:	83 ec 14             	sub    $0x14,%esp
   30967:	e8 8b f7 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3096c:	05 94 c6 00 00       	add    $0xc694,%eax
   30971:	8b 45 08             	mov    0x8(%ebp),%eax
   30974:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
   30978:	8b 45 ec             	mov    -0x14(%ebp),%eax
   3097b:	89 c2                	mov    %eax,%edx
   3097d:	ec                   	in     (%dx),%al
   3097e:	88 45 ff             	mov    %al,-0x1(%ebp)
   30981:	8a 45 ff             	mov    -0x1(%ebp),%al
   30984:	c9                   	leave  
   30985:	c3                   	ret    

00030986 <init_serial>:
   30986:	55                   	push   %ebp
   30987:	89 e5                	mov    %esp,%ebp
   30989:	e8 69 f7 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3098e:	05 72 c6 00 00       	add    $0xc672,%eax
   30993:	90                   	nop
   30994:	5d                   	pop    %ebp
   30995:	c3                   	ret    

00030996 <serial_idle>:
   30996:	55                   	push   %ebp
   30997:	89 e5                	mov    %esp,%ebp
   30999:	e8 59 f7 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3099e:	05 62 c6 00 00       	add    $0xc662,%eax
   309a3:	68 fd 03 00 00       	push   $0x3fd
   309a8:	e8 b4 ff ff ff       	call   30961 <in_byte>
   309ad:	83 c4 04             	add    $0x4,%esp
   309b0:	0f b6 c0             	movzbl %al,%eax
   309b3:	83 e0 20             	and    $0x20,%eax
   309b6:	85 c0                	test   %eax,%eax
   309b8:	0f 95 c0             	setne  %al
   309bb:	0f b6 c0             	movzbl %al,%eax
   309be:	c9                   	leave  
   309bf:	c3                   	ret    

000309c0 <serial_printc>:
   309c0:	55                   	push   %ebp
   309c1:	89 e5                	mov    %esp,%ebp
   309c3:	83 ec 04             	sub    $0x4,%esp
   309c6:	e8 2c f7 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   309cb:	05 35 c6 00 00       	add    $0xc635,%eax
   309d0:	8b 45 08             	mov    0x8(%ebp),%eax
   309d3:	88 45 fc             	mov    %al,-0x4(%ebp)
   309d6:	90                   	nop
   309d7:	e8 ba ff ff ff       	call   30996 <serial_idle>
   309dc:	85 c0                	test   %eax,%eax
   309de:	74 f7                	je     309d7 <serial_printc+0x17>
   309e0:	b8 01 00 00 00       	mov    $0x1,%eax
   309e5:	82                   	nemu_trap 
   309e6:	90                   	nop
   309e7:	c9                   	leave  
   309e8:	c3                   	ret    

000309e9 <printk>:
   309e9:	55                   	push   %ebp
   309ea:	89 e5                	mov    %esp,%ebp
   309ec:	53                   	push   %ebx
   309ed:	83 ec 14             	sub    $0x14,%esp
   309f0:	e8 06 f7 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   309f5:	81 c3 0b c6 00 00    	add    $0xc60b,%ebx
   309fb:	8d 45 0c             	lea    0xc(%ebp),%eax
   309fe:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30a01:	8b 45 08             	mov    0x8(%ebp),%eax
   30a04:	ff 75 f4             	pushl  -0xc(%ebp)
   30a07:	50                   	push   %eax
   30a08:	68 00 01 00 00       	push   $0x100
   30a0d:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
   30a13:	50                   	push   %eax
   30a14:	e8 07 14 00 00       	call   31e20 <vsnprintf>
   30a19:	83 c4 10             	add    $0x10,%esp
   30a1c:	89 45 f0             	mov    %eax,-0x10(%ebp)
   30a1f:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30a22:	83 ec 04             	sub    $0x4,%esp
   30a25:	50                   	push   %eax
   30a26:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
   30a2c:	50                   	push   %eax
   30a2d:	6a 01                	push   $0x1
   30a2f:	e8 b1 07 00 00       	call   311e5 <fs_write>
   30a34:	83 c4 10             	add    $0x10,%esp
   30a37:	90                   	nop
   30a38:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30a3b:	c9                   	leave  
   30a3c:	c3                   	ret    

00030a3d <add_irq_handle>:
   30a3d:	55                   	push   %ebp
   30a3e:	89 e5                	mov    %esp,%ebp
   30a40:	53                   	push   %ebx
   30a41:	83 ec 14             	sub    $0x14,%esp
   30a44:	e8 b2 f6 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30a49:	81 c3 b7 c5 00 00    	add    $0xc5b7,%ebx
   30a4f:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
   30a53:	7e 2f                	jle    30a84 <add_irq_handle+0x47>
   30a55:	83 ec 0c             	sub    $0xc,%esp
   30a58:	8d 83 3c c1 ff ff    	lea    -0x3ec4(%ebx),%eax
   30a5e:	50                   	push   %eax
   30a5f:	8d 83 28 c3 ff ff    	lea    -0x3cd8(%ebx),%eax
   30a65:	50                   	push   %eax
   30a66:	6a 17                	push   $0x17
   30a68:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30a6e:	50                   	push   %eax
   30a6f:	8d 83 64 c1 ff ff    	lea    -0x3e9c(%ebx),%eax
   30a75:	50                   	push   %eax
   30a76:	e8 6e ff ff ff       	call   309e9 <printk>
   30a7b:	83 c4 20             	add    $0x20,%esp
   30a7e:	b8 01 00 00 00       	mov    $0x1,%eax
   30a83:	82                   	nemu_trap 
   30a84:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
   30a8a:	83 f8 20             	cmp    $0x20,%eax
   30a8d:	7e 2f                	jle    30abe <add_irq_handle+0x81>
   30a8f:	83 ec 0c             	sub    $0xc,%esp
   30a92:	8d 83 ae c1 ff ff    	lea    -0x3e52(%ebx),%eax
   30a98:	50                   	push   %eax
   30a99:	8d 83 28 c3 ff ff    	lea    -0x3cd8(%ebx),%eax
   30a9f:	50                   	push   %eax
   30aa0:	6a 18                	push   $0x18
   30aa2:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30aa8:	50                   	push   %eax
   30aa9:	8d 83 64 c1 ff ff    	lea    -0x3e9c(%ebx),%eax
   30aaf:	50                   	push   %eax
   30ab0:	e8 34 ff ff ff       	call   309e9 <printk>
   30ab5:	83 c4 20             	add    $0x20,%esp
   30ab8:	b8 01 00 00 00       	mov    $0x1,%eax
   30abd:	82                   	nemu_trap 
   30abe:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
   30ac4:	8d 50 01             	lea    0x1(%eax),%edx
   30ac7:	89 93 60 16 01 00    	mov    %edx,0x11660(%ebx)
   30acd:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
   30ad4:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
   30ada:	01 d0                	add    %edx,%eax
   30adc:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30adf:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30ae2:	8b 55 0c             	mov    0xc(%ebp),%edx
   30ae5:	89 10                	mov    %edx,(%eax)
   30ae7:	8b 45 08             	mov    0x8(%ebp),%eax
   30aea:	8b 94 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%edx
   30af1:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30af4:	89 50 04             	mov    %edx,0x4(%eax)
   30af7:	8b 45 08             	mov    0x8(%ebp),%eax
   30afa:	8b 55 f4             	mov    -0xc(%ebp),%edx
   30afd:	89 94 83 20 16 01 00 	mov    %edx,0x11620(%ebx,%eax,4)
   30b04:	90                   	nop
   30b05:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30b08:	c9                   	leave  
   30b09:	c3                   	ret    

00030b0a <irq_handle>:
   30b0a:	55                   	push   %ebp
   30b0b:	89 e5                	mov    %esp,%ebp
   30b0d:	53                   	push   %ebx
   30b0e:	83 ec 14             	sub    $0x14,%esp
   30b11:	e8 e5 f5 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30b16:	81 c3 ea c4 00 00    	add    $0xc4ea,%ebx
   30b1c:	8b 45 08             	mov    0x8(%ebp),%eax
   30b1f:	8b 40 20             	mov    0x20(%eax),%eax
   30b22:	89 45 f0             	mov    %eax,-0x10(%ebp)
   30b25:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
   30b29:	79 2a                	jns    30b55 <irq_handle+0x4b>
   30b2b:	8d 83 38 c3 ff ff    	lea    -0x3cc8(%ebx),%eax
   30b31:	50                   	push   %eax
   30b32:	6a 27                	push   $0x27
   30b34:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30b3a:	50                   	push   %eax
   30b3b:	8d 83 cc c1 ff ff    	lea    -0x3e34(%ebx),%eax
   30b41:	50                   	push   %eax
   30b42:	e8 a2 fe ff ff       	call   309e9 <printk>
   30b47:	83 c4 10             	add    $0x10,%esp
   30b4a:	b8 01 00 00 00       	mov    $0x1,%eax
   30b4f:	82                   	nemu_trap 
   30b50:	e9 f9 00 00 00       	jmp    30c4e <irq_handle+0x144>
   30b55:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
   30b5c:	75 13                	jne    30b71 <irq_handle+0x67>
   30b5e:	83 ec 0c             	sub    $0xc,%esp
   30b61:	ff 75 08             	pushl  0x8(%ebp)
   30b64:	e8 d8 08 00 00       	call   31441 <do_syscall>
   30b69:	83 c4 10             	add    $0x10,%esp
   30b6c:	e9 dd 00 00 00       	jmp    30c4e <irq_handle+0x144>
   30b71:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
   30b78:	7f 37                	jg     30bb1 <irq_handle+0xa7>
   30b7a:	8b 45 08             	mov    0x8(%ebp),%eax
   30b7d:	8b 40 28             	mov    0x28(%eax),%eax
   30b80:	83 ec 08             	sub    $0x8,%esp
   30b83:	50                   	push   %eax
   30b84:	ff 75 f0             	pushl  -0x10(%ebp)
   30b87:	8d 83 38 c3 ff ff    	lea    -0x3cc8(%ebx),%eax
   30b8d:	50                   	push   %eax
   30b8e:	6a 2f                	push   $0x2f
   30b90:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30b96:	50                   	push   %eax
   30b97:	8d 83 18 c2 ff ff    	lea    -0x3de8(%ebx),%eax
   30b9d:	50                   	push   %eax
   30b9e:	e8 46 fe ff ff       	call   309e9 <printk>
   30ba3:	83 c4 20             	add    $0x20,%esp
   30ba6:	b8 01 00 00 00       	mov    $0x1,%eax
   30bab:	82                   	nemu_trap 
   30bac:	e9 9d 00 00 00       	jmp    30c4e <irq_handle+0x144>
   30bb1:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
   30bb8:	0f 8e 90 00 00 00    	jle    30c4e <irq_handle+0x144>
   30bbe:	8b 45 f0             	mov    -0x10(%ebp),%eax
   30bc1:	2d e8 03 00 00       	sub    $0x3e8,%eax
   30bc6:	89 45 ec             	mov    %eax,-0x14(%ebp)
   30bc9:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
   30bcd:	7e 2f                	jle    30bfe <irq_handle+0xf4>
   30bcf:	83 ec 0c             	sub    $0xc,%esp
   30bd2:	8d 83 72 c2 ff ff    	lea    -0x3d8e(%ebx),%eax
   30bd8:	50                   	push   %eax
   30bd9:	8d 83 38 c3 ff ff    	lea    -0x3cc8(%ebx),%eax
   30bdf:	50                   	push   %eax
   30be0:	6a 34                	push   $0x34
   30be2:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30be8:	50                   	push   %eax
   30be9:	8d 83 64 c1 ff ff    	lea    -0x3e9c(%ebx),%eax
   30bef:	50                   	push   %eax
   30bf0:	e8 f4 fd ff ff       	call   309e9 <printk>
   30bf5:	83 c4 20             	add    $0x20,%esp
   30bf8:	b8 01 00 00 00       	mov    $0x1,%eax
   30bfd:	82                   	nemu_trap 
   30bfe:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
   30c02:	75 25                	jne    30c29 <irq_handle+0x11f>
   30c04:	8d 83 38 c3 ff ff    	lea    -0x3cc8(%ebx),%eax
   30c0a:	50                   	push   %eax
   30c0b:	6a 36                	push   $0x36
   30c0d:	8d 83 4f c1 ff ff    	lea    -0x3eb1(%ebx),%eax
   30c13:	50                   	push   %eax
   30c14:	8d 83 88 c2 ff ff    	lea    -0x3d78(%ebx),%eax
   30c1a:	50                   	push   %eax
   30c1b:	e8 c9 fd ff ff       	call   309e9 <printk>
   30c20:	83 c4 10             	add    $0x10,%esp
   30c23:	b8 01 00 00 00       	mov    $0x1,%eax
   30c28:	82                   	nemu_trap 
   30c29:	8b 45 ec             	mov    -0x14(%ebp),%eax
   30c2c:	8b 84 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%eax
   30c33:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30c36:	eb 10                	jmp    30c48 <irq_handle+0x13e>
   30c38:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30c3b:	8b 00                	mov    (%eax),%eax
   30c3d:	ff d0                	call   *%eax
   30c3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
   30c42:	8b 40 04             	mov    0x4(%eax),%eax
   30c45:	89 45 f4             	mov    %eax,-0xc(%ebp)
   30c48:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
   30c4c:	75 ea                	jne    30c38 <irq_handle+0x12e>
   30c4e:	90                   	nop
   30c4f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   30c52:	c9                   	leave  
   30c53:	c3                   	ret    

00030c54 <out_byte>:
   30c54:	55                   	push   %ebp
   30c55:	89 e5                	mov    %esp,%ebp
   30c57:	83 ec 08             	sub    $0x8,%esp
   30c5a:	e8 98 f4 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30c5f:	05 a1 c3 00 00       	add    $0xc3a1,%eax
   30c64:	8b 45 08             	mov    0x8(%ebp),%eax
   30c67:	8b 55 0c             	mov    0xc(%ebp),%edx
   30c6a:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
   30c6e:	88 d0                	mov    %dl,%al
   30c70:	88 45 f8             	mov    %al,-0x8(%ebp)
   30c73:	8a 45 f8             	mov    -0x8(%ebp),%al
   30c76:	8b 55 fc             	mov    -0x4(%ebp),%edx
   30c79:	ee                   	out    %al,(%dx)
   30c7a:	90                   	nop
   30c7b:	c9                   	leave  
   30c7c:	c3                   	ret    

00030c7d <init_i8259>:
   30c7d:	55                   	push   %ebp
   30c7e:	89 e5                	mov    %esp,%ebp
   30c80:	e8 72 f4 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30c85:	05 7b c3 00 00       	add    $0xc37b,%eax
   30c8a:	68 ff 00 00 00       	push   $0xff
   30c8f:	6a 21                	push   $0x21
   30c91:	e8 be ff ff ff       	call   30c54 <out_byte>
   30c96:	83 c4 08             	add    $0x8,%esp
   30c99:	68 ff 00 00 00       	push   $0xff
   30c9e:	68 a1 00 00 00       	push   $0xa1
   30ca3:	e8 ac ff ff ff       	call   30c54 <out_byte>
   30ca8:	83 c4 08             	add    $0x8,%esp
   30cab:	6a 11                	push   $0x11
   30cad:	6a 20                	push   $0x20
   30caf:	e8 a0 ff ff ff       	call   30c54 <out_byte>
   30cb4:	83 c4 08             	add    $0x8,%esp
   30cb7:	6a 20                	push   $0x20
   30cb9:	6a 21                	push   $0x21
   30cbb:	e8 94 ff ff ff       	call   30c54 <out_byte>
   30cc0:	83 c4 08             	add    $0x8,%esp
   30cc3:	6a 04                	push   $0x4
   30cc5:	6a 21                	push   $0x21
   30cc7:	e8 88 ff ff ff       	call   30c54 <out_byte>
   30ccc:	83 c4 08             	add    $0x8,%esp
   30ccf:	6a 03                	push   $0x3
   30cd1:	6a 21                	push   $0x21
   30cd3:	e8 7c ff ff ff       	call   30c54 <out_byte>
   30cd8:	83 c4 08             	add    $0x8,%esp
   30cdb:	6a 11                	push   $0x11
   30cdd:	68 a0 00 00 00       	push   $0xa0
   30ce2:	e8 6d ff ff ff       	call   30c54 <out_byte>
   30ce7:	83 c4 08             	add    $0x8,%esp
   30cea:	6a 28                	push   $0x28
   30cec:	68 a1 00 00 00       	push   $0xa1
   30cf1:	e8 5e ff ff ff       	call   30c54 <out_byte>
   30cf6:	83 c4 08             	add    $0x8,%esp
   30cf9:	6a 02                	push   $0x2
   30cfb:	68 a1 00 00 00       	push   $0xa1
   30d00:	e8 4f ff ff ff       	call   30c54 <out_byte>
   30d05:	83 c4 08             	add    $0x8,%esp
   30d08:	6a 03                	push   $0x3
   30d0a:	68 a1 00 00 00       	push   $0xa1
   30d0f:	e8 40 ff ff ff       	call   30c54 <out_byte>
   30d14:	83 c4 08             	add    $0x8,%esp
   30d17:	6a 68                	push   $0x68
   30d19:	6a 20                	push   $0x20
   30d1b:	e8 34 ff ff ff       	call   30c54 <out_byte>
   30d20:	83 c4 08             	add    $0x8,%esp
   30d23:	6a 0a                	push   $0xa
   30d25:	6a 20                	push   $0x20
   30d27:	e8 28 ff ff ff       	call   30c54 <out_byte>
   30d2c:	83 c4 08             	add    $0x8,%esp
   30d2f:	6a 68                	push   $0x68
   30d31:	68 a0 00 00 00       	push   $0xa0
   30d36:	e8 19 ff ff ff       	call   30c54 <out_byte>
   30d3b:	83 c4 08             	add    $0x8,%esp
   30d3e:	6a 0a                	push   $0xa
   30d40:	68 a0 00 00 00       	push   $0xa0
   30d45:	e8 0a ff ff ff       	call   30c54 <out_byte>
   30d4a:	83 c4 08             	add    $0x8,%esp
   30d4d:	90                   	nop
   30d4e:	c9                   	leave  
   30d4f:	c3                   	ret    

00030d50 <write_idtr>:
   30d50:	55                   	push   %ebp
   30d51:	89 e5                	mov    %esp,%ebp
   30d53:	e8 9f f3 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30d58:	05 a8 c2 00 00       	add    $0xc2a8,%eax
   30d5d:	8b 55 0c             	mov    0xc(%ebp),%edx
   30d60:	4a                   	dec    %edx
   30d61:	66 89 90 80 1e 01 00 	mov    %dx,0x11e80(%eax)
   30d68:	8b 55 08             	mov    0x8(%ebp),%edx
   30d6b:	66 89 90 82 1e 01 00 	mov    %dx,0x11e82(%eax)
   30d72:	8b 55 08             	mov    0x8(%ebp),%edx
   30d75:	c1 ea 10             	shr    $0x10,%edx
   30d78:	66 89 90 84 1e 01 00 	mov    %dx,0x11e84(%eax)
   30d7f:	8d 80 80 1e 01 00    	lea    0x11e80(%eax),%eax
   30d85:	0f 01 18             	lidtl  (%eax)
   30d88:	90                   	nop
   30d89:	5d                   	pop    %ebp
   30d8a:	c3                   	ret    

00030d8b <sti>:
   30d8b:	55                   	push   %ebp
   30d8c:	89 e5                	mov    %esp,%ebp
   30d8e:	e8 64 f3 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30d93:	05 6d c2 00 00       	add    $0xc26d,%eax
   30d98:	fb                   	sti    
   30d99:	90                   	nop
   30d9a:	5d                   	pop    %ebp
   30d9b:	c3                   	ret    

00030d9c <set_intr>:
   30d9c:	55                   	push   %ebp
   30d9d:	89 e5                	mov    %esp,%ebp
   30d9f:	e8 53 f3 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30da4:	05 5c c2 00 00       	add    $0xc25c,%eax
   30da9:	8b 45 10             	mov    0x10(%ebp),%eax
   30dac:	8b 55 08             	mov    0x8(%ebp),%edx
   30daf:	66 89 02             	mov    %ax,(%edx)
   30db2:	8b 45 0c             	mov    0xc(%ebp),%eax
   30db5:	8b 55 08             	mov    0x8(%ebp),%edx
   30db8:	66 89 42 02          	mov    %ax,0x2(%edx)
   30dbc:	8b 45 08             	mov    0x8(%ebp),%eax
   30dbf:	c6 40 04 00          	movb   $0x0,0x4(%eax)
   30dc3:	8b 45 08             	mov    0x8(%ebp),%eax
   30dc6:	8a 50 05             	mov    0x5(%eax),%dl
   30dc9:	83 e2 f0             	and    $0xfffffff0,%edx
   30dcc:	83 ca 0e             	or     $0xe,%edx
   30dcf:	88 50 05             	mov    %dl,0x5(%eax)
   30dd2:	8b 45 08             	mov    0x8(%ebp),%eax
   30dd5:	8a 50 05             	mov    0x5(%eax),%dl
   30dd8:	83 e2 ef             	and    $0xffffffef,%edx
   30ddb:	88 50 05             	mov    %dl,0x5(%eax)
   30dde:	8b 45 14             	mov    0x14(%ebp),%eax
   30de1:	88 c2                	mov    %al,%dl
   30de3:	83 e2 03             	and    $0x3,%edx
   30de6:	8b 45 08             	mov    0x8(%ebp),%eax
   30de9:	83 e2 03             	and    $0x3,%edx
   30dec:	88 d1                	mov    %dl,%cl
   30dee:	c1 e1 05             	shl    $0x5,%ecx
   30df1:	8a 50 05             	mov    0x5(%eax),%dl
   30df4:	83 e2 9f             	and    $0xffffff9f,%edx
   30df7:	09 ca                	or     %ecx,%edx
   30df9:	88 50 05             	mov    %dl,0x5(%eax)
   30dfc:	8b 45 08             	mov    0x8(%ebp),%eax
   30dff:	8a 50 05             	mov    0x5(%eax),%dl
   30e02:	83 ca 80             	or     $0xffffff80,%edx
   30e05:	88 50 05             	mov    %dl,0x5(%eax)
   30e08:	8b 45 10             	mov    0x10(%ebp),%eax
   30e0b:	c1 e8 10             	shr    $0x10,%eax
   30e0e:	8b 55 08             	mov    0x8(%ebp),%edx
   30e11:	66 89 42 06          	mov    %ax,0x6(%edx)
   30e15:	90                   	nop
   30e16:	5d                   	pop    %ebp
   30e17:	c3                   	ret    

00030e18 <set_trap>:
   30e18:	55                   	push   %ebp
   30e19:	89 e5                	mov    %esp,%ebp
   30e1b:	e8 d7 f2 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   30e20:	05 e0 c1 00 00       	add    $0xc1e0,%eax
   30e25:	8b 45 10             	mov    0x10(%ebp),%eax
   30e28:	8b 55 08             	mov    0x8(%ebp),%edx
   30e2b:	66 89 02             	mov    %ax,(%edx)
   30e2e:	8b 45 0c             	mov    0xc(%ebp),%eax
   30e31:	8b 55 08             	mov    0x8(%ebp),%edx
   30e34:	66 89 42 02          	mov    %ax,0x2(%edx)
   30e38:	8b 45 08             	mov    0x8(%ebp),%eax
   30e3b:	c6 40 04 00          	movb   $0x0,0x4(%eax)
   30e3f:	8b 45 08             	mov    0x8(%ebp),%eax
   30e42:	8a 50 05             	mov    0x5(%eax),%dl
   30e45:	83 ca 0f             	or     $0xf,%edx
   30e48:	88 50 05             	mov    %dl,0x5(%eax)
   30e4b:	8b 45 08             	mov    0x8(%ebp),%eax
   30e4e:	8a 50 05             	mov    0x5(%eax),%dl
   30e51:	83 e2 ef             	and    $0xffffffef,%edx
   30e54:	88 50 05             	mov    %dl,0x5(%eax)
   30e57:	8b 45 14             	mov    0x14(%ebp),%eax
   30e5a:	88 c2                	mov    %al,%dl
   30e5c:	83 e2 03             	and    $0x3,%edx
   30e5f:	8b 45 08             	mov    0x8(%ebp),%eax
   30e62:	83 e2 03             	and    $0x3,%edx
   30e65:	88 d1                	mov    %dl,%cl
   30e67:	c1 e1 05             	shl    $0x5,%ecx
   30e6a:	8a 50 05             	mov    0x5(%eax),%dl
   30e6d:	83 e2 9f             	and    $0xffffff9f,%edx
   30e70:	09 ca                	or     %ecx,%edx
   30e72:	88 50 05             	mov    %dl,0x5(%eax)
   30e75:	8b 45 08             	mov    0x8(%ebp),%eax
   30e78:	8a 50 05             	mov    0x5(%eax),%dl
   30e7b:	83 ca 80             	or     $0xffffff80,%edx
   30e7e:	88 50 05             	mov    %dl,0x5(%eax)
   30e81:	8b 45 10             	mov    0x10(%ebp),%eax
   30e84:	c1 e8 10             	shr    $0x10,%eax
   30e87:	8b 55 08             	mov    0x8(%ebp),%edx
   30e8a:	66 89 42 06          	mov    %ax,0x6(%edx)
   30e8e:	90                   	nop
   30e8f:	5d                   	pop    %ebp
   30e90:	c3                   	ret    

00030e91 <init_idt>:
   30e91:	55                   	push   %ebp
   30e92:	89 e5                	mov    %esp,%ebp
   30e94:	53                   	push   %ebx
   30e95:	83 ec 10             	sub    $0x10,%esp
   30e98:	e8 5e f2 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   30e9d:	81 c3 63 c1 00 00    	add    $0xc163,%ebx
   30ea3:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   30eaa:	eb 2b                	jmp    30ed7 <init_idt+0x46>
   30eac:	c7 c0 80 00 03 00    	mov    $0x30080,%eax
   30eb2:	89 c2                	mov    %eax,%edx
   30eb4:	8b 45 f8             	mov    -0x8(%ebp),%eax
   30eb7:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
   30ebe:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
   30ec4:	01 c8                	add    %ecx,%eax
   30ec6:	6a 00                	push   $0x0
   30ec8:	52                   	push   %edx
   30ec9:	6a 08                	push   $0x8
   30ecb:	50                   	push   %eax
   30ecc:	e8 47 ff ff ff       	call   30e18 <set_trap>
   30ed1:	83 c4 10             	add    $0x10,%esp
   30ed4:	ff 45 f8             	incl   -0x8(%ebp)
   30ed7:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
   30ede:	7e cc                	jle    30eac <init_idt+0x1b>
   30ee0:	c7 c0 05 00 03 00    	mov    $0x30005,%eax
   30ee6:	6a 00                	push   $0x0
   30ee8:	50                   	push   %eax
   30ee9:	6a 08                	push   $0x8
   30eeb:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
   30ef1:	50                   	push   %eax
   30ef2:	e8 21 ff ff ff       	call   30e18 <set_trap>
   30ef7:	83 c4 10             	add    $0x10,%esp
   30efa:	c7 c0 0b 00 03 00    	mov    $0x3000b,%eax
   30f00:	89 c2                	mov    %eax,%edx
   30f02:	8d 83 88 16 01 00    	lea    0x11688(%ebx),%eax
   30f08:	6a 00                	push   $0x0
   30f0a:	52                   	push   %edx
   30f0b:	6a 08                	push   $0x8
   30f0d:	50                   	push   %eax
   30f0e:	e8 05 ff ff ff       	call   30e18 <set_trap>
   30f13:	83 c4 10             	add    $0x10,%esp
   30f16:	c7 c0 11 00 03 00    	mov    $0x30011,%eax
   30f1c:	89 c2                	mov    %eax,%edx
   30f1e:	8d 83 90 16 01 00    	lea    0x11690(%ebx),%eax
   30f24:	6a 00                	push   $0x0
   30f26:	52                   	push   %edx
   30f27:	6a 08                	push   $0x8
   30f29:	50                   	push   %eax
   30f2a:	e8 e9 fe ff ff       	call   30e18 <set_trap>
   30f2f:	83 c4 10             	add    $0x10,%esp
   30f32:	c7 c0 17 00 03 00    	mov    $0x30017,%eax
   30f38:	89 c2                	mov    %eax,%edx
   30f3a:	8d 83 98 16 01 00    	lea    0x11698(%ebx),%eax
   30f40:	6a 00                	push   $0x0
   30f42:	52                   	push   %edx
   30f43:	6a 08                	push   $0x8
   30f45:	50                   	push   %eax
   30f46:	e8 cd fe ff ff       	call   30e18 <set_trap>
   30f4b:	83 c4 10             	add    $0x10,%esp
   30f4e:	c7 c0 1d 00 03 00    	mov    $0x3001d,%eax
   30f54:	89 c2                	mov    %eax,%edx
   30f56:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
   30f5c:	6a 00                	push   $0x0
   30f5e:	52                   	push   %edx
   30f5f:	6a 08                	push   $0x8
   30f61:	50                   	push   %eax
   30f62:	e8 b1 fe ff ff       	call   30e18 <set_trap>
   30f67:	83 c4 10             	add    $0x10,%esp
   30f6a:	c7 c0 23 00 03 00    	mov    $0x30023,%eax
   30f70:	89 c2                	mov    %eax,%edx
   30f72:	8d 83 a8 16 01 00    	lea    0x116a8(%ebx),%eax
   30f78:	6a 00                	push   $0x0
   30f7a:	52                   	push   %edx
   30f7b:	6a 08                	push   $0x8
   30f7d:	50                   	push   %eax
   30f7e:	e8 95 fe ff ff       	call   30e18 <set_trap>
   30f83:	83 c4 10             	add    $0x10,%esp
   30f86:	c7 c0 29 00 03 00    	mov    $0x30029,%eax
   30f8c:	89 c2                	mov    %eax,%edx
   30f8e:	8d 83 b0 16 01 00    	lea    0x116b0(%ebx),%eax
   30f94:	6a 00                	push   $0x0
   30f96:	52                   	push   %edx
   30f97:	6a 08                	push   $0x8
   30f99:	50                   	push   %eax
   30f9a:	e8 79 fe ff ff       	call   30e18 <set_trap>
   30f9f:	83 c4 10             	add    $0x10,%esp
   30fa2:	c7 c0 2f 00 03 00    	mov    $0x3002f,%eax
   30fa8:	89 c2                	mov    %eax,%edx
   30faa:	8d 83 b8 16 01 00    	lea    0x116b8(%ebx),%eax
   30fb0:	6a 00                	push   $0x0
   30fb2:	52                   	push   %edx
   30fb3:	6a 08                	push   $0x8
   30fb5:	50                   	push   %eax
   30fb6:	e8 5d fe ff ff       	call   30e18 <set_trap>
   30fbb:	83 c4 10             	add    $0x10,%esp
   30fbe:	c7 c0 35 00 03 00    	mov    $0x30035,%eax
   30fc4:	89 c2                	mov    %eax,%edx
   30fc6:	8d 83 c0 16 01 00    	lea    0x116c0(%ebx),%eax
   30fcc:	6a 00                	push   $0x0
   30fce:	52                   	push   %edx
   30fcf:	6a 08                	push   $0x8
   30fd1:	50                   	push   %eax
   30fd2:	e8 41 fe ff ff       	call   30e18 <set_trap>
   30fd7:	83 c4 10             	add    $0x10,%esp
   30fda:	c7 c0 39 00 03 00    	mov    $0x30039,%eax
   30fe0:	89 c2                	mov    %eax,%edx
   30fe2:	8d 83 c8 16 01 00    	lea    0x116c8(%ebx),%eax
   30fe8:	6a 00                	push   $0x0
   30fea:	52                   	push   %edx
   30feb:	6a 08                	push   $0x8
   30fed:	50                   	push   %eax
   30fee:	e8 25 fe ff ff       	call   30e18 <set_trap>
   30ff3:	83 c4 10             	add    $0x10,%esp
   30ff6:	c7 c0 3f 00 03 00    	mov    $0x3003f,%eax
   30ffc:	89 c2                	mov    %eax,%edx
   30ffe:	8d 83 d0 16 01 00    	lea    0x116d0(%ebx),%eax
   31004:	6a 00                	push   $0x0
   31006:	52                   	push   %edx
   31007:	6a 08                	push   $0x8
   31009:	50                   	push   %eax
   3100a:	e8 09 fe ff ff       	call   30e18 <set_trap>
   3100f:	83 c4 10             	add    $0x10,%esp
   31012:	c7 c0 43 00 03 00    	mov    $0x30043,%eax
   31018:	89 c2                	mov    %eax,%edx
   3101a:	8d 83 d8 16 01 00    	lea    0x116d8(%ebx),%eax
   31020:	6a 00                	push   $0x0
   31022:	52                   	push   %edx
   31023:	6a 08                	push   $0x8
   31025:	50                   	push   %eax
   31026:	e8 ed fd ff ff       	call   30e18 <set_trap>
   3102b:	83 c4 10             	add    $0x10,%esp
   3102e:	c7 c0 47 00 03 00    	mov    $0x30047,%eax
   31034:	89 c2                	mov    %eax,%edx
   31036:	8d 83 e0 16 01 00    	lea    0x116e0(%ebx),%eax
   3103c:	6a 00                	push   $0x0
   3103e:	52                   	push   %edx
   3103f:	6a 08                	push   $0x8
   31041:	50                   	push   %eax
   31042:	e8 d1 fd ff ff       	call   30e18 <set_trap>
   31047:	83 c4 10             	add    $0x10,%esp
   3104a:	c7 c0 4b 00 03 00    	mov    $0x3004b,%eax
   31050:	89 c2                	mov    %eax,%edx
   31052:	8d 83 e8 16 01 00    	lea    0x116e8(%ebx),%eax
   31058:	6a 00                	push   $0x0
   3105a:	52                   	push   %edx
   3105b:	6a 08                	push   $0x8
   3105d:	50                   	push   %eax
   3105e:	e8 b5 fd ff ff       	call   30e18 <set_trap>
   31063:	83 c4 10             	add    $0x10,%esp
   31066:	c7 c0 4f 00 03 00    	mov    $0x3004f,%eax
   3106c:	89 c2                	mov    %eax,%edx
   3106e:	8d 83 f0 16 01 00    	lea    0x116f0(%ebx),%eax
   31074:	6a 00                	push   $0x0
   31076:	52                   	push   %edx
   31077:	6a 08                	push   $0x8
   31079:	50                   	push   %eax
   3107a:	e8 99 fd ff ff       	call   30e18 <set_trap>
   3107f:	83 c4 10             	add    $0x10,%esp
   31082:	c7 c0 53 00 03 00    	mov    $0x30053,%eax
   31088:	89 c2                	mov    %eax,%edx
   3108a:	8d 83 80 1a 01 00    	lea    0x11a80(%ebx),%eax
   31090:	6a 03                	push   $0x3
   31092:	52                   	push   %edx
   31093:	6a 08                	push   $0x8
   31095:	50                   	push   %eax
   31096:	e8 7d fd ff ff       	call   30e18 <set_trap>
   3109b:	83 c4 10             	add    $0x10,%esp
   3109e:	c7 c0 5c 00 03 00    	mov    $0x3005c,%eax
   310a4:	89 c2                	mov    %eax,%edx
   310a6:	8d 83 80 17 01 00    	lea    0x11780(%ebx),%eax
   310ac:	6a 00                	push   $0x0
   310ae:	52                   	push   %edx
   310af:	6a 08                	push   $0x8
   310b1:	50                   	push   %eax
   310b2:	e8 e5 fc ff ff       	call   30d9c <set_intr>
   310b7:	83 c4 10             	add    $0x10,%esp
   310ba:	c7 c0 65 00 03 00    	mov    $0x30065,%eax
   310c0:	89 c2                	mov    %eax,%edx
   310c2:	8d 83 88 17 01 00    	lea    0x11788(%ebx),%eax
   310c8:	6a 00                	push   $0x0
   310ca:	52                   	push   %edx
   310cb:	6a 08                	push   $0x8
   310cd:	50                   	push   %eax
   310ce:	e8 c9 fc ff ff       	call   30d9c <set_intr>
   310d3:	83 c4 10             	add    $0x10,%esp
   310d6:	c7 c0 6e 00 03 00    	mov    $0x3006e,%eax
   310dc:	89 c2                	mov    %eax,%edx
   310de:	8d 83 90 17 01 00    	lea    0x11790(%ebx),%eax
   310e4:	6a 00                	push   $0x0
   310e6:	52                   	push   %edx
   310e7:	6a 08                	push   $0x8
   310e9:	50                   	push   %eax
   310ea:	e8 ad fc ff ff       	call   30d9c <set_intr>
   310ef:	83 c4 10             	add    $0x10,%esp
   310f2:	c7 c0 77 00 03 00    	mov    $0x30077,%eax
   310f8:	89 c2                	mov    %eax,%edx
   310fa:	8d 83 f0 17 01 00    	lea    0x117f0(%ebx),%eax
   31100:	6a 00                	push   $0x0
   31102:	52                   	push   %edx
   31103:	6a 08                	push   $0x8
   31105:	50                   	push   %eax
   31106:	e8 91 fc ff ff       	call   30d9c <set_intr>
   3110b:	83 c4 10             	add    $0x10,%esp
   3110e:	68 00 08 00 00       	push   $0x800
   31113:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
   31119:	50                   	push   %eax
   3111a:	e8 31 fc ff ff       	call   30d50 <write_idtr>
   3111f:	83 c4 08             	add    $0x8,%esp
   31122:	e8 64 fc ff ff       	call   30d8b <sti>
   31127:	90                   	nop
   31128:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3112b:	c9                   	leave  
   3112c:	c3                   	ret    

0003112d <fs_open>:
   3112d:	55                   	push   %ebp
   3112e:	89 e5                	mov    %esp,%ebp
   31130:	53                   	push   %ebx
   31131:	83 ec 04             	sub    $0x4,%esp
   31134:	e8 be ef ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31139:	05 c7 be 00 00       	add    $0xbec7,%eax
   3113e:	8d 90 e0 c5 ff ff    	lea    -0x3a20(%eax),%edx
   31144:	52                   	push   %edx
   31145:	6a 28                	push   $0x28
   31147:	8d 90 17 c4 ff ff    	lea    -0x3be9(%eax),%edx
   3114d:	52                   	push   %edx
   3114e:	8d 90 24 c4 ff ff    	lea    -0x3bdc(%eax),%edx
   31154:	52                   	push   %edx
   31155:	89 c3                	mov    %eax,%ebx
   31157:	e8 8d f8 ff ff       	call   309e9 <printk>
   3115c:	83 c4 10             	add    $0x10,%esp
   3115f:	b8 01 00 00 00       	mov    $0x1,%eax
   31164:	82                   	nemu_trap 
   31165:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   3116a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3116d:	c9                   	leave  
   3116e:	c3                   	ret    

0003116f <fs_read>:
   3116f:	55                   	push   %ebp
   31170:	89 e5                	mov    %esp,%ebp
   31172:	53                   	push   %ebx
   31173:	83 ec 04             	sub    $0x4,%esp
   31176:	e8 80 ef ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   3117b:	81 c3 85 be 00 00    	add    $0xbe85,%ebx
   31181:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   31185:	7f 2f                	jg     311b6 <fs_read+0x47>
   31187:	83 ec 0c             	sub    $0xc,%esp
   3118a:	8d 83 7a c4 ff ff    	lea    -0x3b86(%ebx),%eax
   31190:	50                   	push   %eax
   31191:	8d 83 e8 c5 ff ff    	lea    -0x3a18(%ebx),%eax
   31197:	50                   	push   %eax
   31198:	6a 2e                	push   $0x2e
   3119a:	8d 83 17 c4 ff ff    	lea    -0x3be9(%ebx),%eax
   311a0:	50                   	push   %eax
   311a1:	8d 83 84 c4 ff ff    	lea    -0x3b7c(%ebx),%eax
   311a7:	50                   	push   %eax
   311a8:	e8 3c f8 ff ff       	call   309e9 <printk>
   311ad:	83 c4 20             	add    $0x20,%esp
   311b0:	b8 01 00 00 00       	mov    $0x1,%eax
   311b5:	82                   	nemu_trap 
   311b6:	8d 83 e8 c5 ff ff    	lea    -0x3a18(%ebx),%eax
   311bc:	50                   	push   %eax
   311bd:	6a 2f                	push   $0x2f
   311bf:	8d 83 17 c4 ff ff    	lea    -0x3be9(%ebx),%eax
   311c5:	50                   	push   %eax
   311c6:	8d 83 d0 c4 ff ff    	lea    -0x3b30(%ebx),%eax
   311cc:	50                   	push   %eax
   311cd:	e8 17 f8 ff ff       	call   309e9 <printk>
   311d2:	83 c4 10             	add    $0x10,%esp
   311d5:	b8 01 00 00 00       	mov    $0x1,%eax
   311da:	82                   	nemu_trap 
   311db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   311e0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   311e3:	c9                   	leave  
   311e4:	c3                   	ret    

000311e5 <fs_write>:
   311e5:	55                   	push   %ebp
   311e6:	89 e5                	mov    %esp,%ebp
   311e8:	53                   	push   %ebx
   311e9:	83 ec 04             	sub    $0x4,%esp
   311ec:	e8 06 ef ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   311f1:	05 0f be 00 00       	add    $0xbe0f,%eax
   311f6:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
   311fa:	7e 31                	jle    3122d <fs_write+0x48>
   311fc:	83 ec 0c             	sub    $0xc,%esp
   311ff:	8d 90 26 c5 ff ff    	lea    -0x3ada(%eax),%edx
   31205:	52                   	push   %edx
   31206:	8d 90 f0 c5 ff ff    	lea    -0x3a10(%eax),%edx
   3120c:	52                   	push   %edx
   3120d:	6a 35                	push   $0x35
   3120f:	8d 90 17 c4 ff ff    	lea    -0x3be9(%eax),%edx
   31215:	52                   	push   %edx
   31216:	8d 90 84 c4 ff ff    	lea    -0x3b7c(%eax),%edx
   3121c:	52                   	push   %edx
   3121d:	89 c3                	mov    %eax,%ebx
   3121f:	e8 c5 f7 ff ff       	call   309e9 <printk>
   31224:	83 c4 20             	add    $0x20,%esp
   31227:	b8 01 00 00 00       	mov    $0x1,%eax
   3122c:	82                   	nemu_trap 
   3122d:	b8 04 00 00 00       	mov    $0x4,%eax
   31232:	8b 5d 08             	mov    0x8(%ebp),%ebx
   31235:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   31238:	8b 55 10             	mov    0x10(%ebp),%edx
   3123b:	82                   	nemu_trap 
   3123c:	89 45 10             	mov    %eax,0x10(%ebp)
   3123f:	8b 45 10             	mov    0x10(%ebp),%eax
   31242:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31245:	c9                   	leave  
   31246:	c3                   	ret    

00031247 <fs_lseek>:
   31247:	55                   	push   %ebp
   31248:	89 e5                	mov    %esp,%ebp
   3124a:	53                   	push   %ebx
   3124b:	83 ec 04             	sub    $0x4,%esp
   3124e:	e8 a4 ee ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31253:	05 ad bd 00 00       	add    $0xbdad,%eax
   31258:	8d 90 fc c5 ff ff    	lea    -0x3a04(%eax),%edx
   3125e:	52                   	push   %edx
   3125f:	6a 48                	push   $0x48
   31261:	8d 90 17 c4 ff ff    	lea    -0x3be9(%eax),%edx
   31267:	52                   	push   %edx
   31268:	8d 90 30 c5 ff ff    	lea    -0x3ad0(%eax),%edx
   3126e:	52                   	push   %edx
   3126f:	89 c3                	mov    %eax,%ebx
   31271:	e8 73 f7 ff ff       	call   309e9 <printk>
   31276:	83 c4 10             	add    $0x10,%esp
   31279:	b8 01 00 00 00       	mov    $0x1,%eax
   3127e:	82                   	nemu_trap 
   3127f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   31284:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31287:	c9                   	leave  
   31288:	c3                   	ret    

00031289 <fs_close>:
   31289:	55                   	push   %ebp
   3128a:	89 e5                	mov    %esp,%ebp
   3128c:	53                   	push   %ebx
   3128d:	83 ec 04             	sub    $0x4,%esp
   31290:	e8 62 ee ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31295:	05 6b bd 00 00       	add    $0xbd6b,%eax
   3129a:	8d 90 08 c6 ff ff    	lea    -0x39f8(%eax),%edx
   312a0:	52                   	push   %edx
   312a1:	6a 4e                	push   $0x4e
   312a3:	8d 90 17 c4 ff ff    	lea    -0x3be9(%eax),%edx
   312a9:	52                   	push   %edx
   312aa:	8d 90 88 c5 ff ff    	lea    -0x3a78(%eax),%edx
   312b0:	52                   	push   %edx
   312b1:	89 c3                	mov    %eax,%ebx
   312b3:	e8 31 f7 ff ff       	call   309e9 <printk>
   312b8:	83 c4 10             	add    $0x10,%esp
   312bb:	b8 01 00 00 00       	mov    $0x1,%eax
   312c0:	82                   	nemu_trap 
   312c1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   312c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   312c9:	c9                   	leave  
   312ca:	c3                   	ret    

000312cb <sti>:
   312cb:	55                   	push   %ebp
   312cc:	89 e5                	mov    %esp,%ebp
   312ce:	e8 24 ee ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   312d3:	05 2d bd 00 00       	add    $0xbd2d,%eax
   312d8:	fb                   	sti    
   312d9:	90                   	nop
   312da:	5d                   	pop    %ebp
   312db:	c3                   	ret    

000312dc <cli>:
   312dc:	55                   	push   %ebp
   312dd:	89 e5                	mov    %esp,%ebp
   312df:	e8 13 ee ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   312e4:	05 1c bd 00 00       	add    $0xbd1c,%eax
   312e9:	fa                   	cli    
   312ea:	90                   	nop
   312eb:	5d                   	pop    %ebp
   312ec:	c3                   	ret    

000312ed <sys_brk>:
   312ed:	55                   	push   %ebp
   312ee:	89 e5                	mov    %esp,%ebp
   312f0:	e8 02 ee ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   312f5:	05 0b bd 00 00       	add    $0xbd0b,%eax
   312fa:	8b 45 08             	mov    0x8(%ebp),%eax
   312fd:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
   31304:	90                   	nop
   31305:	5d                   	pop    %ebp
   31306:	c3                   	ret    

00031307 <sys_open>:
   31307:	55                   	push   %ebp
   31308:	89 e5                	mov    %esp,%ebp
   3130a:	53                   	push   %ebx
   3130b:	83 ec 04             	sub    $0x4,%esp
   3130e:	e8 e4 ed ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31313:	05 ed bc 00 00       	add    $0xbced,%eax
   31318:	8b 55 08             	mov    0x8(%ebp),%edx
   3131b:	8b 52 18             	mov    0x18(%edx),%edx
   3131e:	89 d1                	mov    %edx,%ecx
   31320:	8b 55 08             	mov    0x8(%ebp),%edx
   31323:	8b 52 10             	mov    0x10(%edx),%edx
   31326:	83 ec 08             	sub    $0x8,%esp
   31329:	51                   	push   %ecx
   3132a:	52                   	push   %edx
   3132b:	89 c3                	mov    %eax,%ebx
   3132d:	e8 fb fd ff ff       	call   3112d <fs_open>
   31332:	83 c4 10             	add    $0x10,%esp
   31335:	89 c2                	mov    %eax,%edx
   31337:	8b 45 08             	mov    0x8(%ebp),%eax
   3133a:	89 50 1c             	mov    %edx,0x1c(%eax)
   3133d:	90                   	nop
   3133e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31341:	c9                   	leave  
   31342:	c3                   	ret    

00031343 <sys_read>:
   31343:	55                   	push   %ebp
   31344:	89 e5                	mov    %esp,%ebp
   31346:	53                   	push   %ebx
   31347:	83 ec 04             	sub    $0x4,%esp
   3134a:	e8 a8 ed ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3134f:	05 b1 bc 00 00       	add    $0xbcb1,%eax
   31354:	8b 55 08             	mov    0x8(%ebp),%edx
   31357:	8b 52 14             	mov    0x14(%edx),%edx
   3135a:	8b 4d 08             	mov    0x8(%ebp),%ecx
   3135d:	8b 49 18             	mov    0x18(%ecx),%ecx
   31360:	89 cb                	mov    %ecx,%ebx
   31362:	8b 4d 08             	mov    0x8(%ebp),%ecx
   31365:	8b 49 10             	mov    0x10(%ecx),%ecx
   31368:	83 ec 04             	sub    $0x4,%esp
   3136b:	52                   	push   %edx
   3136c:	53                   	push   %ebx
   3136d:	51                   	push   %ecx
   3136e:	89 c3                	mov    %eax,%ebx
   31370:	e8 fa fd ff ff       	call   3116f <fs_read>
   31375:	83 c4 10             	add    $0x10,%esp
   31378:	89 c2                	mov    %eax,%edx
   3137a:	8b 45 08             	mov    0x8(%ebp),%eax
   3137d:	89 50 1c             	mov    %edx,0x1c(%eax)
   31380:	90                   	nop
   31381:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31384:	c9                   	leave  
   31385:	c3                   	ret    

00031386 <sys_write>:
   31386:	55                   	push   %ebp
   31387:	89 e5                	mov    %esp,%ebp
   31389:	53                   	push   %ebx
   3138a:	83 ec 04             	sub    $0x4,%esp
   3138d:	e8 65 ed ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31392:	05 6e bc 00 00       	add    $0xbc6e,%eax
   31397:	8b 55 08             	mov    0x8(%ebp),%edx
   3139a:	8b 52 14             	mov    0x14(%edx),%edx
   3139d:	8b 4d 08             	mov    0x8(%ebp),%ecx
   313a0:	8b 49 18             	mov    0x18(%ecx),%ecx
   313a3:	89 cb                	mov    %ecx,%ebx
   313a5:	8b 4d 08             	mov    0x8(%ebp),%ecx
   313a8:	8b 49 10             	mov    0x10(%ecx),%ecx
   313ab:	83 ec 04             	sub    $0x4,%esp
   313ae:	52                   	push   %edx
   313af:	53                   	push   %ebx
   313b0:	51                   	push   %ecx
   313b1:	89 c3                	mov    %eax,%ebx
   313b3:	e8 2d fe ff ff       	call   311e5 <fs_write>
   313b8:	83 c4 10             	add    $0x10,%esp
   313bb:	89 c2                	mov    %eax,%edx
   313bd:	8b 45 08             	mov    0x8(%ebp),%eax
   313c0:	89 50 1c             	mov    %edx,0x1c(%eax)
   313c3:	90                   	nop
   313c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   313c7:	c9                   	leave  
   313c8:	c3                   	ret    

000313c9 <sys_lseek>:
   313c9:	55                   	push   %ebp
   313ca:	89 e5                	mov    %esp,%ebp
   313cc:	53                   	push   %ebx
   313cd:	83 ec 04             	sub    $0x4,%esp
   313d0:	e8 22 ed ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   313d5:	05 2b bc 00 00       	add    $0xbc2b,%eax
   313da:	8b 55 08             	mov    0x8(%ebp),%edx
   313dd:	8b 52 14             	mov    0x14(%edx),%edx
   313e0:	89 d3                	mov    %edx,%ebx
   313e2:	8b 55 08             	mov    0x8(%ebp),%edx
   313e5:	8b 52 18             	mov    0x18(%edx),%edx
   313e8:	89 d1                	mov    %edx,%ecx
   313ea:	8b 55 08             	mov    0x8(%ebp),%edx
   313ed:	8b 52 10             	mov    0x10(%edx),%edx
   313f0:	83 ec 04             	sub    $0x4,%esp
   313f3:	53                   	push   %ebx
   313f4:	51                   	push   %ecx
   313f5:	52                   	push   %edx
   313f6:	89 c3                	mov    %eax,%ebx
   313f8:	e8 4a fe ff ff       	call   31247 <fs_lseek>
   313fd:	83 c4 10             	add    $0x10,%esp
   31400:	89 c2                	mov    %eax,%edx
   31402:	8b 45 08             	mov    0x8(%ebp),%eax
   31405:	89 50 1c             	mov    %edx,0x1c(%eax)
   31408:	90                   	nop
   31409:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3140c:	c9                   	leave  
   3140d:	c3                   	ret    

0003140e <sys_close>:
   3140e:	55                   	push   %ebp
   3140f:	89 e5                	mov    %esp,%ebp
   31411:	53                   	push   %ebx
   31412:	83 ec 04             	sub    $0x4,%esp
   31415:	e8 dd ec ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3141a:	05 e6 bb 00 00       	add    $0xbbe6,%eax
   3141f:	8b 55 08             	mov    0x8(%ebp),%edx
   31422:	8b 52 10             	mov    0x10(%edx),%edx
   31425:	83 ec 0c             	sub    $0xc,%esp
   31428:	52                   	push   %edx
   31429:	89 c3                	mov    %eax,%ebx
   3142b:	e8 59 fe ff ff       	call   31289 <fs_close>
   31430:	83 c4 10             	add    $0x10,%esp
   31433:	89 c2                	mov    %eax,%edx
   31435:	8b 45 08             	mov    0x8(%ebp),%eax
   31438:	89 50 1c             	mov    %edx,0x1c(%eax)
   3143b:	90                   	nop
   3143c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3143f:	c9                   	leave  
   31440:	c3                   	ret    

00031441 <do_syscall>:
   31441:	55                   	push   %ebp
   31442:	89 e5                	mov    %esp,%ebp
   31444:	53                   	push   %ebx
   31445:	83 ec 04             	sub    $0x4,%esp
   31448:	e8 ae ec ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   3144d:	81 c3 b3 bb 00 00    	add    $0xbbb3,%ebx
   31453:	8b 45 08             	mov    0x8(%ebp),%eax
   31456:	8b 40 1c             	mov    0x1c(%eax),%eax
   31459:	83 f8 2d             	cmp    $0x2d,%eax
   3145c:	0f 87 98 00 00 00    	ja     314fa <.L10>
   31462:	c1 e0 02             	shl    $0x2,%eax
   31465:	8b 84 18 84 c6 ff ff 	mov    -0x397c(%eax,%ebx,1),%eax
   3146c:	01 d8                	add    %ebx,%eax
   3146e:	ff e0                	jmp    *%eax

00031470 <.L18>:
   31470:	e8 67 fe ff ff       	call   312dc <cli>
   31475:	8b 45 08             	mov    0x8(%ebp),%eax
   31478:	8b 40 18             	mov    0x18(%eax),%eax
   3147b:	89 c2                	mov    %eax,%edx
   3147d:	8b 45 08             	mov    0x8(%ebp),%eax
   31480:	8b 40 10             	mov    0x10(%eax),%eax
   31483:	83 ec 08             	sub    $0x8,%esp
   31486:	52                   	push   %edx
   31487:	50                   	push   %eax
   31488:	e8 b0 f5 ff ff       	call   30a3d <add_irq_handle>
   3148d:	83 c4 10             	add    $0x10,%esp
   31490:	e8 36 fe ff ff       	call   312cb <sti>
   31495:	e9 8f 00 00 00       	jmp    31529 <.L10+0x2f>

0003149a <.L11>:
   3149a:	83 ec 0c             	sub    $0xc,%esp
   3149d:	ff 75 08             	pushl  0x8(%ebp)
   314a0:	e8 48 fe ff ff       	call   312ed <sys_brk>
   314a5:	83 c4 10             	add    $0x10,%esp
   314a8:	eb 7f                	jmp    31529 <.L10+0x2f>

000314aa <.L15>:
   314aa:	83 ec 0c             	sub    $0xc,%esp
   314ad:	ff 75 08             	pushl  0x8(%ebp)
   314b0:	e8 52 fe ff ff       	call   31307 <sys_open>
   314b5:	83 c4 10             	add    $0x10,%esp
   314b8:	eb 6f                	jmp    31529 <.L10+0x2f>

000314ba <.L17>:
   314ba:	83 ec 0c             	sub    $0xc,%esp
   314bd:	ff 75 08             	pushl  0x8(%ebp)
   314c0:	e8 7e fe ff ff       	call   31343 <sys_read>
   314c5:	83 c4 10             	add    $0x10,%esp
   314c8:	eb 5f                	jmp    31529 <.L10+0x2f>

000314ca <.L16>:
   314ca:	83 ec 0c             	sub    $0xc,%esp
   314cd:	ff 75 08             	pushl  0x8(%ebp)
   314d0:	e8 b1 fe ff ff       	call   31386 <sys_write>
   314d5:	83 c4 10             	add    $0x10,%esp
   314d8:	eb 4f                	jmp    31529 <.L10+0x2f>

000314da <.L13>:
   314da:	83 ec 0c             	sub    $0xc,%esp
   314dd:	ff 75 08             	pushl  0x8(%ebp)
   314e0:	e8 e4 fe ff ff       	call   313c9 <sys_lseek>
   314e5:	83 c4 10             	add    $0x10,%esp
   314e8:	eb 3f                	jmp    31529 <.L10+0x2f>

000314ea <.L14>:
   314ea:	83 ec 0c             	sub    $0xc,%esp
   314ed:	ff 75 08             	pushl  0x8(%ebp)
   314f0:	e8 19 ff ff ff       	call   3140e <sys_close>
   314f5:	83 c4 10             	add    $0x10,%esp
   314f8:	eb 2f                	jmp    31529 <.L10+0x2f>

000314fa <.L10>:
   314fa:	8b 45 08             	mov    0x8(%ebp),%eax
   314fd:	8b 40 1c             	mov    0x1c(%eax),%eax
   31500:	83 ec 0c             	sub    $0xc,%esp
   31503:	50                   	push   %eax
   31504:	8d 83 3c c7 ff ff    	lea    -0x38c4(%ebx),%eax
   3150a:	50                   	push   %eax
   3150b:	6a 4a                	push   $0x4a
   3150d:	8d 83 14 c6 ff ff    	lea    -0x39ec(%ebx),%eax
   31513:	50                   	push   %eax
   31514:	8d 83 30 c6 ff ff    	lea    -0x39d0(%ebx),%eax
   3151a:	50                   	push   %eax
   3151b:	e8 c9 f4 ff ff       	call   309e9 <printk>
   31520:	83 c4 20             	add    $0x20,%esp
   31523:	b8 01 00 00 00       	mov    $0x1,%eax
   31528:	82                   	nemu_trap 
   31529:	90                   	nop
   3152a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3152d:	c9                   	leave  
   3152e:	c3                   	ret    

0003152f <get_updir>:
   3152f:	55                   	push   %ebp
   31530:	89 e5                	mov    %esp,%ebp
   31532:	e8 c0 eb ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31537:	05 c9 ba 00 00       	add    $0xbac9,%eax
   3153c:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   31542:	5d                   	pop    %ebp
   31543:	c3                   	ret    

00031544 <get_ucr3>:
   31544:	55                   	push   %ebp
   31545:	89 e5                	mov    %esp,%ebp
   31547:	e8 ab eb ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3154c:	05 b4 ba 00 00       	add    $0xbab4,%eax
   31551:	c7 c0 00 20 07 00    	mov    $0x72000,%eax
   31557:	8b 00                	mov    (%eax),%eax
   31559:	5d                   	pop    %ebp
   3155a:	c3                   	ret    

0003155b <mm_brk>:
   3155b:	55                   	push   %ebp
   3155c:	89 e5                	mov    %esp,%ebp
   3155e:	53                   	push   %ebx
   3155f:	83 ec 04             	sub    $0x4,%esp
   31562:	e8 94 eb ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   31567:	81 c3 99 ba 00 00    	add    $0xba99,%ebx
   3156d:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
   31573:	39 45 08             	cmp    %eax,0x8(%ebp)
   31576:	76 22                	jbe    3159a <mm_brk+0x3f>
   31578:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
   3157e:	8b 55 08             	mov    0x8(%ebp),%edx
   31581:	29 c2                	sub    %eax,%edx
   31583:	89 d0                	mov    %edx,%eax
   31585:	89 c2                	mov    %eax,%edx
   31587:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
   3158d:	83 ec 08             	sub    $0x8,%esp
   31590:	52                   	push   %edx
   31591:	50                   	push   %eax
   31592:	e8 89 04 00 00       	call   31a20 <mm_malloc>
   31597:	83 c4 10             	add    $0x10,%esp
   3159a:	8b 45 08             	mov    0x8(%ebp),%eax
   3159d:	89 83 88 1e 01 00    	mov    %eax,0x11e88(%ebx)
   315a3:	90                   	nop
   315a4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   315a7:	c9                   	leave  
   315a8:	c3                   	ret    

000315a9 <init_mm>:
   315a9:	55                   	push   %ebp
   315aa:	89 e5                	mov    %esp,%ebp
   315ac:	53                   	push   %ebx
   315ad:	83 ec 14             	sub    $0x14,%esp
   315b0:	e8 46 eb ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   315b5:	81 c3 4b ba 00 00    	add    $0xba4b,%ebx
   315bb:	e8 ff 01 00 00       	call   317bf <get_kpdir>
   315c0:	89 45 f4             	mov    %eax,-0xc(%ebp)
   315c3:	83 ec 04             	sub    $0x4,%esp
   315c6:	68 00 10 00 00       	push   $0x1000
   315cb:	6a 00                	push   $0x0
   315cd:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   315d3:	50                   	push   %eax
   315d4:	e8 23 07 00 00       	call   31cfc <memset>
   315d9:	83 c4 10             	add    $0x10,%esp
   315dc:	83 ec 04             	sub    $0x4,%esp
   315df:	68 80 00 00 00       	push   $0x80
   315e4:	ff 75 f4             	pushl  -0xc(%ebp)
   315e7:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   315ed:	50                   	push   %eax
   315ee:	e8 c1 06 00 00       	call   31cb4 <memcpy>
   315f3:	83 c4 10             	add    $0x10,%esp
   315f6:	c7 c0 00 10 07 00    	mov    $0x71000,%eax
   315fc:	25 00 fc ff ff       	and    $0xfffffc00,%eax
   31601:	89 c2                	mov    %eax,%edx
   31603:	c7 c0 00 20 07 00    	mov    $0x72000,%eax
   31609:	89 10                	mov    %edx,(%eax)
   3160b:	90                   	nop
   3160c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3160f:	c9                   	leave  
   31610:	c3                   	ret    

00031611 <create_video_mapping>:
   31611:	55                   	push   %ebp
   31612:	89 e5                	mov    %esp,%ebp
   31614:	53                   	push   %ebx
   31615:	83 ec 04             	sub    $0x4,%esp
   31618:	e8 da ea ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3161d:	05 e3 b9 00 00       	add    $0xb9e3,%eax
   31622:	8d 90 00 c8 ff ff    	lea    -0x3800(%eax),%edx
   31628:	52                   	push   %edx
   31629:	6a 14                	push   $0x14
   3162b:	8d 90 48 c7 ff ff    	lea    -0x38b8(%eax),%edx
   31631:	52                   	push   %edx
   31632:	8d 90 5c c7 ff ff    	lea    -0x38a4(%eax),%edx
   31638:	52                   	push   %edx
   31639:	89 c3                	mov    %eax,%ebx
   3163b:	e8 a9 f3 ff ff       	call   309e9 <printk>
   31640:	83 c4 10             	add    $0x10,%esp
   31643:	b8 01 00 00 00       	mov    $0x1,%eax
   31648:	82                   	nemu_trap 
   31649:	90                   	nop
   3164a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3164d:	c9                   	leave  
   3164e:	c3                   	ret    

0003164f <video_mapping_write_test>:
   3164f:	55                   	push   %ebp
   31650:	89 e5                	mov    %esp,%ebp
   31652:	83 ec 10             	sub    $0x10,%esp
   31655:	e8 9d ea ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3165a:	05 a6 b9 00 00       	add    $0xb9a6,%eax
   3165f:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
   31666:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   3166d:	eb 17                	jmp    31686 <video_mapping_write_test+0x37>
   3166f:	8b 45 fc             	mov    -0x4(%ebp),%eax
   31672:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   31679:	8b 45 f8             	mov    -0x8(%ebp),%eax
   3167c:	01 c2                	add    %eax,%edx
   3167e:	8b 45 fc             	mov    -0x4(%ebp),%eax
   31681:	89 02                	mov    %eax,(%edx)
   31683:	ff 45 fc             	incl   -0x4(%ebp)
   31686:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
   3168d:	7e e0                	jle    3166f <video_mapping_write_test+0x20>
   3168f:	90                   	nop
   31690:	c9                   	leave  
   31691:	c3                   	ret    

00031692 <video_mapping_read_test>:
   31692:	55                   	push   %ebp
   31693:	89 e5                	mov    %esp,%ebp
   31695:	53                   	push   %ebx
   31696:	83 ec 14             	sub    $0x14,%esp
   31699:	e8 5d ea ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   3169e:	81 c3 62 b9 00 00    	add    $0xb962,%ebx
   316a4:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
   316ab:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   316b2:	eb 4a                	jmp    316fe <video_mapping_read_test+0x6c>
   316b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
   316b7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
   316be:	8b 45 f0             	mov    -0x10(%ebp),%eax
   316c1:	01 d0                	add    %edx,%eax
   316c3:	8b 10                	mov    (%eax),%edx
   316c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
   316c8:	39 c2                	cmp    %eax,%edx
   316ca:	74 2f                	je     316fb <video_mapping_read_test+0x69>
   316cc:	83 ec 0c             	sub    $0xc,%esp
   316cf:	8d 83 a5 c7 ff ff    	lea    -0x385b(%ebx),%eax
   316d5:	50                   	push   %eax
   316d6:	8d 83 18 c8 ff ff    	lea    -0x37e8(%ebx),%eax
   316dc:	50                   	push   %eax
   316dd:	6a 27                	push   $0x27
   316df:	8d 83 48 c7 ff ff    	lea    -0x38b8(%ebx),%eax
   316e5:	50                   	push   %eax
   316e6:	8d 83 b4 c7 ff ff    	lea    -0x384c(%ebx),%eax
   316ec:	50                   	push   %eax
   316ed:	e8 f7 f2 ff ff       	call   309e9 <printk>
   316f2:	83 c4 20             	add    $0x20,%esp
   316f5:	b8 01 00 00 00       	mov    $0x1,%eax
   316fa:	82                   	nemu_trap 
   316fb:	ff 45 f4             	incl   -0xc(%ebp)
   316fe:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
   31705:	7e ad                	jle    316b4 <video_mapping_read_test+0x22>
   31707:	90                   	nop
   31708:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3170b:	c9                   	leave  
   3170c:	c3                   	ret    

0003170d <video_mapping_clear>:
   3170d:	55                   	push   %ebp
   3170e:	89 e5                	mov    %esp,%ebp
   31710:	53                   	push   %ebx
   31711:	83 ec 04             	sub    $0x4,%esp
   31714:	e8 de e9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31719:	05 e7 b8 00 00       	add    $0xb8e7,%eax
   3171e:	83 ec 04             	sub    $0x4,%esp
   31721:	68 00 fa 00 00       	push   $0xfa00
   31726:	6a 00                	push   $0x0
   31728:	68 00 00 0a 00       	push   $0xa0000
   3172d:	89 c3                	mov    %eax,%ebx
   3172f:	e8 c8 05 00 00       	call   31cfc <memset>
   31734:	83 c4 10             	add    $0x10,%esp
   31737:	90                   	nop
   31738:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   3173b:	c9                   	leave  
   3173c:	c3                   	ret    

0003173d <read_cr0>:
   3173d:	55                   	push   %ebp
   3173e:	89 e5                	mov    %esp,%ebp
   31740:	83 ec 10             	sub    $0x10,%esp
   31743:	e8 af e9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31748:	05 b8 b8 00 00       	add    $0xb8b8,%eax
   3174d:	0f 20 c0             	mov    %cr0,%eax
   31750:	89 45 fc             	mov    %eax,-0x4(%ebp)
   31753:	8b 45 fc             	mov    -0x4(%ebp),%eax
   31756:	c9                   	leave  
   31757:	c3                   	ret    

00031758 <write_cr0>:
   31758:	55                   	push   %ebp
   31759:	89 e5                	mov    %esp,%ebp
   3175b:	e8 97 e9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31760:	05 a0 b8 00 00       	add    $0xb8a0,%eax
   31765:	8b 45 08             	mov    0x8(%ebp),%eax
   31768:	0f 22 c0             	mov    %eax,%cr0
   3176b:	90                   	nop
   3176c:	5d                   	pop    %ebp
   3176d:	c3                   	ret    

0003176e <write_cr3>:
   3176e:	55                   	push   %ebp
   3176f:	89 e5                	mov    %esp,%ebp
   31771:	e8 81 e9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   31776:	05 8a b8 00 00       	add    $0xb88a,%eax
   3177b:	8b 45 08             	mov    0x8(%ebp),%eax
   3177e:	0f 22 d8             	mov    %eax,%cr3
   31781:	90                   	nop
   31782:	5d                   	pop    %ebp
   31783:	c3                   	ret    

00031784 <write_gdtr>:
   31784:	55                   	push   %ebp
   31785:	89 e5                	mov    %esp,%ebp
   31787:	e8 6b e9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   3178c:	05 74 b8 00 00       	add    $0xb874,%eax
   31791:	8b 55 0c             	mov    0xc(%ebp),%edx
   31794:	4a                   	dec    %edx
   31795:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
   3179c:	8b 55 08             	mov    0x8(%ebp),%edx
   3179f:	66 89 90 8e 1e 01 00 	mov    %dx,0x11e8e(%eax)
   317a6:	8b 55 08             	mov    0x8(%ebp),%edx
   317a9:	c1 ea 10             	shr    $0x10,%edx
   317ac:	66 89 90 90 1e 01 00 	mov    %dx,0x11e90(%eax)
   317b3:	8d 80 8c 1e 01 00    	lea    0x11e8c(%eax),%eax
   317b9:	0f 01 10             	lgdtl  (%eax)
   317bc:	90                   	nop
   317bd:	5d                   	pop    %ebp
   317be:	c3                   	ret    

000317bf <get_kpdir>:
   317bf:	55                   	push   %ebp
   317c0:	89 e5                	mov    %esp,%ebp
   317c2:	e8 30 e9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   317c7:	05 39 b8 00 00       	add    $0xb839,%eax
   317cc:	c7 c0 00 40 07 00    	mov    $0x74000,%eax
   317d2:	5d                   	pop    %ebp
   317d3:	c3                   	ret    

000317d4 <init_page>:
   317d4:	55                   	push   %ebp
   317d5:	89 e5                	mov    %esp,%ebp
   317d7:	53                   	push   %ebx
   317d8:	83 ec 24             	sub    $0x24,%esp
   317db:	e8 17 e9 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   317e0:	05 20 b8 00 00       	add    $0xb820,%eax
   317e5:	c7 c2 00 40 07 00    	mov    $0x74000,%edx
   317eb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   317ee:	c7 c2 00 50 07 00    	mov    $0x75000,%edx
   317f4:	89 55 f4             	mov    %edx,-0xc(%ebp)
   317f7:	83 ec 04             	sub    $0x4,%esp
   317fa:	68 00 10 00 00       	push   $0x1000
   317ff:	6a 00                	push   $0x0
   31801:	ff 75 e4             	pushl  -0x1c(%ebp)
   31804:	89 c3                	mov    %eax,%ebx
   31806:	e8 f1 04 00 00       	call   31cfc <memset>
   3180b:	83 c4 10             	add    $0x10,%esp
   3180e:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   31815:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
   3181c:	eb 6b                	jmp    31889 <init_page+0xb5>
   3181e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31821:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31826:	89 c2                	mov    %eax,%edx
   31828:	8b 45 f0             	mov    -0x10(%ebp),%eax
   3182b:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   31832:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   31835:	01 c8                	add    %ecx,%eax
   31837:	83 ca 07             	or     $0x7,%edx
   3183a:	89 10                	mov    %edx,(%eax)
   3183c:	8b 45 f4             	mov    -0xc(%ebp),%eax
   3183f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31844:	89 c2                	mov    %eax,%edx
   31846:	8b 45 f0             	mov    -0x10(%ebp),%eax
   31849:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
   31850:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   31853:	01 c8                	add    %ecx,%eax
   31855:	83 ca 07             	or     $0x7,%edx
   31858:	89 10                	mov    %edx,(%eax)
   3185a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
   31861:	eb 1a                	jmp    3187d <init_page+0xa9>
   31863:	8b 45 e8             	mov    -0x18(%ebp),%eax
   31866:	c1 e0 0c             	shl    $0xc,%eax
   31869:	83 c8 07             	or     $0x7,%eax
   3186c:	89 c2                	mov    %eax,%edx
   3186e:	8b 45 f4             	mov    -0xc(%ebp),%eax
   31871:	89 10                	mov    %edx,(%eax)
   31873:	ff 45 e8             	incl   -0x18(%ebp)
   31876:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
   3187a:	ff 45 ec             	incl   -0x14(%ebp)
   3187d:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
   31884:	76 dd                	jbe    31863 <init_page+0x8f>
   31886:	ff 45 f0             	incl   -0x10(%ebp)
   31889:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
   3188d:	76 8f                	jbe    3181e <init_page+0x4a>
   3188f:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
   31896:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   31899:	c1 e8 0c             	shr    $0xc,%eax
   3189c:	25 ff ff 0f 00       	and    $0xfffff,%eax
   318a1:	c1 e0 0c             	shl    $0xc,%eax
   318a4:	89 c2                	mov    %eax,%edx
   318a6:	8b 45 dc             	mov    -0x24(%ebp),%eax
   318a9:	25 ff 0f 00 00       	and    $0xfff,%eax
   318ae:	09 d0                	or     %edx,%eax
   318b0:	89 45 dc             	mov    %eax,-0x24(%ebp)
   318b3:	8b 45 dc             	mov    -0x24(%ebp),%eax
   318b6:	83 ec 0c             	sub    $0xc,%esp
   318b9:	50                   	push   %eax
   318ba:	e8 af fe ff ff       	call   3176e <write_cr3>
   318bf:	83 c4 10             	add    $0x10,%esp
   318c2:	e8 76 fe ff ff       	call   3173d <read_cr0>
   318c7:	89 45 e0             	mov    %eax,-0x20(%ebp)
   318ca:	8a 45 e3             	mov    -0x1d(%ebp),%al
   318cd:	83 c8 80             	or     $0xffffff80,%eax
   318d0:	88 45 e3             	mov    %al,-0x1d(%ebp)
   318d3:	8b 45 e0             	mov    -0x20(%ebp),%eax
   318d6:	83 ec 0c             	sub    $0xc,%esp
   318d9:	50                   	push   %eax
   318da:	e8 79 fe ff ff       	call   31758 <write_cr0>
   318df:	83 c4 10             	add    $0x10,%esp
   318e2:	90                   	nop
   318e3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   318e6:	c9                   	leave  
   318e7:	c3                   	ret    

000318e8 <set_segment>:
   318e8:	55                   	push   %ebp
   318e9:	89 e5                	mov    %esp,%ebp
   318eb:	e8 07 e8 ff ff       	call   300f7 <__x86.get_pc_thunk.ax>
   318f0:	05 10 b7 00 00       	add    $0xb710,%eax
   318f5:	8b 45 08             	mov    0x8(%ebp),%eax
   318f8:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
   318fd:	8b 45 08             	mov    0x8(%ebp),%eax
   31900:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
   31906:	8b 45 08             	mov    0x8(%ebp),%eax
   31909:	c6 40 04 00          	movb   $0x0,0x4(%eax)
   3190d:	8b 45 10             	mov    0x10(%ebp),%eax
   31910:	88 c2                	mov    %al,%dl
   31912:	83 e2 0f             	and    $0xf,%edx
   31915:	8b 45 08             	mov    0x8(%ebp),%eax
   31918:	88 d1                	mov    %dl,%cl
   3191a:	83 e1 0f             	and    $0xf,%ecx
   3191d:	8a 50 05             	mov    0x5(%eax),%dl
   31920:	83 e2 f0             	and    $0xfffffff0,%edx
   31923:	09 ca                	or     %ecx,%edx
   31925:	88 50 05             	mov    %dl,0x5(%eax)
   31928:	8b 45 08             	mov    0x8(%ebp),%eax
   3192b:	8a 50 05             	mov    0x5(%eax),%dl
   3192e:	83 ca 10             	or     $0x10,%edx
   31931:	88 50 05             	mov    %dl,0x5(%eax)
   31934:	8b 45 0c             	mov    0xc(%ebp),%eax
   31937:	88 c2                	mov    %al,%dl
   31939:	83 e2 03             	and    $0x3,%edx
   3193c:	8b 45 08             	mov    0x8(%ebp),%eax
   3193f:	83 e2 03             	and    $0x3,%edx
   31942:	88 d1                	mov    %dl,%cl
   31944:	c1 e1 05             	shl    $0x5,%ecx
   31947:	8a 50 05             	mov    0x5(%eax),%dl
   3194a:	83 e2 9f             	and    $0xffffff9f,%edx
   3194d:	09 ca                	or     %ecx,%edx
   3194f:	88 50 05             	mov    %dl,0x5(%eax)
   31952:	8b 45 08             	mov    0x8(%ebp),%eax
   31955:	8a 50 05             	mov    0x5(%eax),%dl
   31958:	83 ca 80             	or     $0xffffff80,%edx
   3195b:	88 50 05             	mov    %dl,0x5(%eax)
   3195e:	8b 45 08             	mov    0x8(%ebp),%eax
   31961:	8a 50 06             	mov    0x6(%eax),%dl
   31964:	83 ca 0f             	or     $0xf,%edx
   31967:	88 50 06             	mov    %dl,0x6(%eax)
   3196a:	8b 45 08             	mov    0x8(%ebp),%eax
   3196d:	8a 50 06             	mov    0x6(%eax),%dl
   31970:	83 e2 ef             	and    $0xffffffef,%edx
   31973:	88 50 06             	mov    %dl,0x6(%eax)
   31976:	8b 45 08             	mov    0x8(%ebp),%eax
   31979:	8a 50 06             	mov    0x6(%eax),%dl
   3197c:	83 e2 df             	and    $0xffffffdf,%edx
   3197f:	88 50 06             	mov    %dl,0x6(%eax)
   31982:	8b 45 08             	mov    0x8(%ebp),%eax
   31985:	8a 50 06             	mov    0x6(%eax),%dl
   31988:	83 ca 40             	or     $0x40,%edx
   3198b:	88 50 06             	mov    %dl,0x6(%eax)
   3198e:	8b 45 08             	mov    0x8(%ebp),%eax
   31991:	8a 50 06             	mov    0x6(%eax),%dl
   31994:	83 ca 80             	or     $0xffffff80,%edx
   31997:	88 50 06             	mov    %dl,0x6(%eax)
   3199a:	8b 45 08             	mov    0x8(%ebp),%eax
   3199d:	c6 40 07 00          	movb   $0x0,0x7(%eax)
   319a1:	90                   	nop
   319a2:	5d                   	pop    %ebp
   319a3:	c3                   	ret    

000319a4 <init_segment>:
   319a4:	55                   	push   %ebp
   319a5:	89 e5                	mov    %esp,%ebp
   319a7:	53                   	push   %ebx
   319a8:	83 ec 04             	sub    $0x4,%esp
   319ab:	e8 4b e7 ff ff       	call   300fb <__x86.get_pc_thunk.bx>
   319b0:	81 c3 50 b6 00 00    	add    $0xb650,%ebx
   319b6:	83 ec 04             	sub    $0x4,%esp
   319b9:	6a 18                	push   $0x18
   319bb:	6a 00                	push   $0x0
   319bd:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   319c3:	50                   	push   %eax
   319c4:	e8 33 03 00 00       	call   31cfc <memset>
   319c9:	83 c4 10             	add    $0x10,%esp
   319cc:	83 ec 04             	sub    $0x4,%esp
   319cf:	6a 0a                	push   $0xa
   319d1:	6a 00                	push   $0x0
   319d3:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   319d9:	8d 40 08             	lea    0x8(%eax),%eax
   319dc:	50                   	push   %eax
   319dd:	e8 06 ff ff ff       	call   318e8 <set_segment>
   319e2:	83 c4 10             	add    $0x10,%esp
   319e5:	83 ec 04             	sub    $0x4,%esp
   319e8:	6a 02                	push   $0x2
   319ea:	6a 00                	push   $0x0
   319ec:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   319f2:	8d 40 10             	lea    0x10(%eax),%eax
   319f5:	50                   	push   %eax
   319f6:	e8 ed fe ff ff       	call   318e8 <set_segment>
   319fb:	83 c4 10             	add    $0x10,%esp
   319fe:	83 ec 08             	sub    $0x8,%esp
   31a01:	6a 18                	push   $0x18
   31a03:	c7 c0 00 30 07 00    	mov    $0x73000,%eax
   31a09:	50                   	push   %eax
   31a0a:	e8 75 fd ff ff       	call   31784 <write_gdtr>
   31a0f:	83 c4 10             	add    $0x10,%esp
   31a12:	90                   	nop
   31a13:	8b 5d fc             	mov    -0x4(%ebp),%ebx
   31a16:	c9                   	leave  
   31a17:	c3                   	ret    
   31a18:	66 90                	xchg   %ax,%ax
   31a1a:	66 90                	xchg   %ax,%ax
   31a1c:	66 90                	xchg   %ax,%ax
   31a1e:	66 90                	xchg   %ax,%ax

00031a20 <mm_malloc>:
   31a20:	55                   	push   %ebp
   31a21:	31 c0                	xor    %eax,%eax
   31a23:	89 e5                	mov    %esp,%ebp
   31a25:	57                   	push   %edi
   31a26:	56                   	push   %esi
   31a27:	53                   	push   %ebx
   31a28:	83 ec 3c             	sub    $0x3c,%esp
   31a2b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   31a2e:	85 db                	test   %ebx,%ebx
   31a30:	0f 8e 36 02 00 00    	jle    31c6c <mm_malloc+0x24c>
   31a36:	e8 f4 fa ff ff       	call   3152f <get_updir>
   31a3b:	89 c6                	mov    %eax,%esi
   31a3d:	e8 02 fb ff ff       	call   31544 <get_ucr3>
   31a42:	8b 55 08             	mov    0x8(%ebp),%edx
   31a45:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
   31a49:	89 5d e0             	mov    %ebx,-0x20(%ebp)
   31a4c:	89 45 dc             	mov    %eax,-0x24(%ebp)
   31a4f:	b8 00 10 00 00       	mov    $0x1000,%eax
   31a54:	29 d0                	sub    %edx,%eax
   31a56:	89 da                	mov    %ebx,%edx
   31a58:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
   31a5e:	01 d0                	add    %edx,%eax
   31a60:	85 c0                	test   %eax,%eax
   31a62:	0f 8e c0 00 00 00    	jle    31b28 <mm_malloc+0x108>
   31a68:	8b 55 08             	mov    0x8(%ebp),%edx
   31a6b:	83 e8 01             	sub    $0x1,%eax
   31a6e:	89 f7                	mov    %esi,%edi
   31a70:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31a75:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
   31a7c:	89 d3                	mov    %edx,%ebx
   31a7e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   31a81:	eb 51                	jmp    31ad4 <mm_malloc+0xb4>
   31a83:	90                   	nop
   31a84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   31a88:	8b 31                	mov    (%ecx),%esi
   31a8a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
   31a90:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
   31a96:	89 d8                	mov    %ebx,%eax
   31a98:	c1 e8 0a             	shr    $0xa,%eax
   31a9b:	25 fc 0f 00 00       	and    $0xffc,%eax
   31aa0:	01 c6                	add    %eax,%esi
   31aa2:	f6 06 01             	testb  $0x1,(%esi)
   31aa5:	75 22                	jne    31ac9 <mm_malloc+0xa9>
   31aa7:	a1 20 d0 03 00       	mov    0x3d020,%eax
   31aac:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
   31ab1:	0f 8f c1 01 00 00    	jg     31c78 <mm_malloc+0x258>
   31ab7:	89 c1                	mov    %eax,%ecx
   31ab9:	83 c0 01             	add    $0x1,%eax
   31abc:	c1 e1 0c             	shl    $0xc,%ecx
   31abf:	83 c9 07             	or     $0x7,%ecx
   31ac2:	89 0e                	mov    %ecx,(%esi)
   31ac4:	a3 20 d0 03 00       	mov    %eax,0x3d020
   31ac9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
   31acf:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
   31ad2:	74 54                	je     31b28 <mm_malloc+0x108>
   31ad4:	89 d8                	mov    %ebx,%eax
   31ad6:	c1 e8 16             	shr    $0x16,%eax
   31ad9:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
   31adc:	f6 01 01             	testb  $0x1,(%ecx)
   31adf:	75 a7                	jne    31a88 <mm_malloc+0x68>
   31ae1:	a1 00 f0 04 00       	mov    0x4f000,%eax
   31ae6:	89 c6                	mov    %eax,%esi
   31ae8:	83 c0 01             	add    $0x1,%eax
   31aeb:	c1 e6 0c             	shl    $0xc,%esi
   31aee:	81 c6 00 00 05 00    	add    $0x50000,%esi
   31af4:	a3 00 f0 04 00       	mov    %eax,0x4f000
   31af9:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
   31aff:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31b04:	83 c8 07             	or     $0x7,%eax
   31b07:	89 01                	mov    %eax,(%ecx)
   31b09:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
   31b10:	00 
   31b11:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   31b18:	00 
   31b19:	89 34 24             	mov    %esi,(%esp)
   31b1c:	e8 db 01 00 00       	call   31cfc <memset>
   31b21:	e9 70 ff ff ff       	jmp    31a96 <mm_malloc+0x76>
   31b26:	66 90                	xchg   %ax,%ax
   31b28:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   31b2b:	8b 45 e0             	mov    -0x20(%ebp),%eax
   31b2e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
   31b34:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
   31b3a:	c1 e8 16             	shr    $0x16,%eax
   31b3d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
   31b40:	f7 c6 01 00 00 00    	test   $0x1,%esi
   31b46:	75 32                	jne    31b7a <mm_malloc+0x15a>
   31b48:	c7 44 24 10 54 98 03 	movl   $0x39854,0x10(%esp)
   31b4f:	00 
   31b50:	c7 44 24 0c ba 98 03 	movl   $0x398ba,0xc(%esp)
   31b57:	00 
   31b58:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
   31b5f:	00 
   31b60:	c7 44 24 04 43 98 03 	movl   $0x39843,0x4(%esp)
   31b67:	00 
   31b68:	c7 04 24 64 98 03 00 	movl   $0x39864,(%esp)
   31b6f:	e8 75 ee ff ff       	call   309e9 <printk>
   31b74:	b8 01 00 00 00       	mov    $0x1,%eax
   31b79:	82                   	nemu_trap 
   31b7a:	8b 55 e0             	mov    -0x20(%ebp),%edx
   31b7d:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
   31b83:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31b88:	c1 ea 0c             	shr    $0xc,%edx
   31b8b:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
   31b91:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
   31b95:	75 32                	jne    31bc9 <mm_malloc+0x1a9>
   31b97:	c7 44 24 10 5c 98 03 	movl   $0x3985c,0x10(%esp)
   31b9e:	00 
   31b9f:	c7 44 24 0c ba 98 03 	movl   $0x398ba,0xc(%esp)
   31ba6:	00 
   31ba7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
   31bae:	00 
   31baf:	c7 44 24 04 43 98 03 	movl   $0x39843,0x4(%esp)
   31bb6:	00 
   31bb7:	c7 04 24 64 98 03 00 	movl   $0x39864,(%esp)
   31bbe:	e8 26 ee ff ff       	call   309e9 <printk>
   31bc3:	b8 01 00 00 00       	mov    $0x1,%eax
   31bc8:	82                   	nemu_trap 
   31bc9:	8b 45 08             	mov    0x8(%ebp),%eax
   31bcc:	c1 e8 16             	shr    $0x16,%eax
   31bcf:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
   31bd2:	f6 c3 01             	test   $0x1,%bl
   31bd5:	75 32                	jne    31c09 <mm_malloc+0x1e9>
   31bd7:	c7 44 24 10 54 98 03 	movl   $0x39854,0x10(%esp)
   31bde:	00 
   31bdf:	c7 44 24 0c ba 98 03 	movl   $0x398ba,0xc(%esp)
   31be6:	00 
   31be7:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
   31bee:	00 
   31bef:	c7 44 24 04 43 98 03 	movl   $0x39843,0x4(%esp)
   31bf6:	00 
   31bf7:	c7 04 24 64 98 03 00 	movl   $0x39864,(%esp)
   31bfe:	e8 e6 ed ff ff       	call   309e9 <printk>
   31c03:	b8 01 00 00 00       	mov    $0x1,%eax
   31c08:	82                   	nemu_trap 
   31c09:	8b 55 08             	mov    0x8(%ebp),%edx
   31c0c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
   31c12:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31c17:	c1 ea 0c             	shr    $0xc,%edx
   31c1a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
   31c20:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
   31c23:	f6 c3 01             	test   $0x1,%bl
   31c26:	75 32                	jne    31c5a <mm_malloc+0x23a>
   31c28:	c7 44 24 10 5c 98 03 	movl   $0x3985c,0x10(%esp)
   31c2f:	00 
   31c30:	c7 44 24 0c ba 98 03 	movl   $0x398ba,0xc(%esp)
   31c37:	00 
   31c38:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
   31c3f:	00 
   31c40:	c7 44 24 04 43 98 03 	movl   $0x39843,0x4(%esp)
   31c47:	00 
   31c48:	c7 04 24 64 98 03 00 	movl   $0x39864,(%esp)
   31c4f:	e8 95 ed ff ff       	call   309e9 <printk>
   31c54:	b8 01 00 00 00       	mov    $0x1,%eax
   31c59:	82                   	nemu_trap 
   31c5a:	8b 55 08             	mov    0x8(%ebp),%edx
   31c5d:	89 d8                	mov    %ebx,%eax
   31c5f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   31c64:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
   31c6a:	09 d0                	or     %edx,%eax
   31c6c:	83 c4 3c             	add    $0x3c,%esp
   31c6f:	5b                   	pop    %ebx
   31c70:	5e                   	pop    %esi
   31c71:	5f                   	pop    %edi
   31c72:	5d                   	pop    %ebp
   31c73:	c3                   	ret    
   31c74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   31c78:	c7 44 24 10 30 98 03 	movl   $0x39830,0x10(%esp)
   31c7f:	00 
   31c80:	c7 44 24 0c b0 98 03 	movl   $0x398b0,0xc(%esp)
   31c87:	00 
   31c88:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
   31c8f:	00 
   31c90:	c7 44 24 04 43 98 03 	movl   $0x39843,0x4(%esp)
   31c97:	00 
   31c98:	c7 04 24 64 98 03 00 	movl   $0x39864,(%esp)
   31c9f:	e8 45 ed ff ff       	call   309e9 <printk>
   31ca4:	b8 01 00 00 00       	mov    $0x1,%eax
   31ca9:	82                   	nemu_trap 
   31caa:	a1 20 d0 03 00       	mov    0x3d020,%eax
   31caf:	e9 03 fe ff ff       	jmp    31ab7 <mm_malloc+0x97>

00031cb4 <memcpy>:
   31cb4:	55                   	push   %ebp
   31cb5:	89 e5                	mov    %esp,%ebp
   31cb7:	56                   	push   %esi
   31cb8:	57                   	push   %edi
   31cb9:	53                   	push   %ebx
   31cba:	8b 7d 08             	mov    0x8(%ebp),%edi
   31cbd:	8b 4d 10             	mov    0x10(%ebp),%ecx
   31cc0:	8b 75 0c             	mov    0xc(%ebp),%esi
   31cc3:	fc                   	cld    
   31cc4:	83 f9 08             	cmp    $0x8,%ecx
   31cc7:	76 26                	jbe    31cef <memcpy+0x3b>
   31cc9:	89 fa                	mov    %edi,%edx
   31ccb:	89 cb                	mov    %ecx,%ebx
   31ccd:	83 e2 03             	and    $0x3,%edx
   31cd0:	74 10                	je     31ce2 <memcpy+0x2e>
   31cd2:	b9 04 00 00 00       	mov    $0x4,%ecx
   31cd7:	29 d1                	sub    %edx,%ecx
   31cd9:	83 e1 03             	and    $0x3,%ecx
   31cdc:	29 cb                	sub    %ecx,%ebx
   31cde:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   31ce0:	89 d9                	mov    %ebx,%ecx
   31ce2:	c1 e9 02             	shr    $0x2,%ecx
   31ce5:	8d 76 00             	lea    0x0(%esi),%esi
   31ce8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   31cea:	89 d9                	mov    %ebx,%ecx
   31cec:	83 e1 03             	and    $0x3,%ecx
   31cef:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   31cf1:	8b 45 08             	mov    0x8(%ebp),%eax
   31cf4:	8d 65 f4             	lea    -0xc(%ebp),%esp
   31cf7:	5b                   	pop    %ebx
   31cf8:	5f                   	pop    %edi
   31cf9:	5e                   	pop    %esi
   31cfa:	c9                   	leave  
   31cfb:	c3                   	ret    

00031cfc <memset>:
   31cfc:	55                   	push   %ebp
   31cfd:	89 e5                	mov    %esp,%ebp
   31cff:	57                   	push   %edi
   31d00:	8b 7d 08             	mov    0x8(%ebp),%edi
   31d03:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
   31d07:	8b 4d 10             	mov    0x10(%ebp),%ecx
   31d0a:	fc                   	cld    
   31d0b:	83 f9 10             	cmp    $0x10,%ecx
   31d0e:	76 69                	jbe    31d79 <memset+0x7d>
   31d10:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d16:	74 4c                	je     31d64 <memset+0x68>
   31d18:	88 07                	mov    %al,(%edi)
   31d1a:	47                   	inc    %edi
   31d1b:	49                   	dec    %ecx
   31d1c:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d22:	74 40                	je     31d64 <memset+0x68>
   31d24:	88 07                	mov    %al,(%edi)
   31d26:	47                   	inc    %edi
   31d27:	49                   	dec    %ecx
   31d28:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d2e:	74 34                	je     31d64 <memset+0x68>
   31d30:	88 07                	mov    %al,(%edi)
   31d32:	47                   	inc    %edi
   31d33:	49                   	dec    %ecx
   31d34:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d3a:	74 28                	je     31d64 <memset+0x68>
   31d3c:	88 07                	mov    %al,(%edi)
   31d3e:	47                   	inc    %edi
   31d3f:	49                   	dec    %ecx
   31d40:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d46:	74 1c                	je     31d64 <memset+0x68>
   31d48:	88 07                	mov    %al,(%edi)
   31d4a:	47                   	inc    %edi
   31d4b:	49                   	dec    %ecx
   31d4c:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d52:	74 10                	je     31d64 <memset+0x68>
   31d54:	88 07                	mov    %al,(%edi)
   31d56:	47                   	inc    %edi
   31d57:	49                   	dec    %ecx
   31d58:	f7 c7 07 00 00 00    	test   $0x7,%edi
   31d5e:	74 04                	je     31d64 <memset+0x68>
   31d60:	88 07                	mov    %al,(%edi)
   31d62:	47                   	inc    %edi
   31d63:	49                   	dec    %ecx
   31d64:	88 c4                	mov    %al,%ah
   31d66:	89 c2                	mov    %eax,%edx
   31d68:	c1 e2 10             	shl    $0x10,%edx
   31d6b:	09 d0                	or     %edx,%eax
   31d6d:	89 ca                	mov    %ecx,%edx
   31d6f:	c1 e9 02             	shr    $0x2,%ecx
   31d72:	83 e2 03             	and    $0x3,%edx
   31d75:	f3 ab                	rep stos %eax,%es:(%edi)
   31d77:	89 d1                	mov    %edx,%ecx
   31d79:	f3 aa                	rep stos %al,%es:(%edi)
   31d7b:	8b 45 08             	mov    0x8(%ebp),%eax
   31d7e:	8d 65 fc             	lea    -0x4(%ebp),%esp
   31d81:	5f                   	pop    %edi
   31d82:	c9                   	leave  
   31d83:	c3                   	ret    
   31d84:	66 90                	xchg   %ax,%ax
   31d86:	66 90                	xchg   %ax,%ax
   31d88:	66 90                	xchg   %ax,%ax
   31d8a:	66 90                	xchg   %ax,%ax
   31d8c:	66 90                	xchg   %ax,%ax
   31d8e:	66 90                	xchg   %ax,%ax

00031d90 <_vsnprintf_r>:
   31d90:	55                   	push   %ebp
   31d91:	89 e5                	mov    %esp,%ebp
   31d93:	56                   	push   %esi
   31d94:	53                   	push   %ebx
   31d95:	83 c4 80             	add    $0xffffff80,%esp
   31d98:	8b 5d 10             	mov    0x10(%ebp),%ebx
   31d9b:	8b 75 08             	mov    0x8(%ebp),%esi
   31d9e:	8b 45 0c             	mov    0xc(%ebp),%eax
   31da1:	85 db                	test   %ebx,%ebx
   31da3:	78 63                	js     31e08 <_vsnprintf_r+0x78>
   31da5:	ba 08 02 00 00       	mov    $0x208,%edx
   31daa:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   31daf:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
   31db3:	8d 53 ff             	lea    -0x1(%ebx),%edx
   31db6:	89 45 90             	mov    %eax,-0x70(%ebp)
   31db9:	89 45 a0             	mov    %eax,-0x60(%ebp)
   31dbc:	31 c0                	xor    %eax,%eax
   31dbe:	85 db                	test   %ebx,%ebx
   31dc0:	0f 45 c2             	cmovne %edx,%eax
   31dc3:	89 45 98             	mov    %eax,-0x68(%ebp)
   31dc6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   31dc9:	8b 45 18             	mov    0x18(%ebp),%eax
   31dcc:	89 34 24             	mov    %esi,(%esp)
   31dcf:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
   31dd3:	89 44 24 0c          	mov    %eax,0xc(%esp)
   31dd7:	8b 45 14             	mov    0x14(%ebp),%eax
   31dda:	89 44 24 08          	mov    %eax,0x8(%esp)
   31dde:	8d 45 90             	lea    -0x70(%ebp),%eax
   31de1:	89 44 24 04          	mov    %eax,0x4(%esp)
   31de5:	e8 86 00 00 00       	call   31e70 <_svfprintf_r>
   31dea:	83 f8 ff             	cmp    $0xffffffff,%eax
   31ded:	7c 11                	jl     31e00 <_vsnprintf_r+0x70>
   31def:	85 db                	test   %ebx,%ebx
   31df1:	74 06                	je     31df9 <_vsnprintf_r+0x69>
   31df3:	8b 55 90             	mov    -0x70(%ebp),%edx
   31df6:	c6 02 00             	movb   $0x0,(%edx)
   31df9:	83 ec 80             	sub    $0xffffff80,%esp
   31dfc:	5b                   	pop    %ebx
   31dfd:	5e                   	pop    %esi
   31dfe:	5d                   	pop    %ebp
   31dff:	c3                   	ret    
   31e00:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
   31e06:	eb e7                	jmp    31def <_vsnprintf_r+0x5f>
   31e08:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
   31e0e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   31e13:	eb e4                	jmp    31df9 <_vsnprintf_r+0x69>
   31e15:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   31e19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00031e20 <vsnprintf>:
   31e20:	55                   	push   %ebp
   31e21:	89 e5                	mov    %esp,%ebp
   31e23:	83 ec 28             	sub    $0x28,%esp
   31e26:	e8 35 00 00 00       	call   31e60 <__getreent>
   31e2b:	8b 55 14             	mov    0x14(%ebp),%edx
   31e2e:	89 54 24 10          	mov    %edx,0x10(%esp)
   31e32:	8b 55 10             	mov    0x10(%ebp),%edx
   31e35:	89 04 24             	mov    %eax,(%esp)
   31e38:	89 54 24 0c          	mov    %edx,0xc(%esp)
   31e3c:	8b 55 0c             	mov    0xc(%ebp),%edx
   31e3f:	89 54 24 08          	mov    %edx,0x8(%esp)
   31e43:	8b 55 08             	mov    0x8(%ebp),%edx
   31e46:	89 54 24 04          	mov    %edx,0x4(%esp)
   31e4a:	e8 41 ff ff ff       	call   31d90 <_vsnprintf_r>
   31e4f:	c9                   	leave  
   31e50:	c3                   	ret    
   31e51:	66 90                	xchg   %ax,%ax
   31e53:	66 90                	xchg   %ax,%ax
   31e55:	66 90                	xchg   %ax,%ax
   31e57:	66 90                	xchg   %ax,%ax
   31e59:	66 90                	xchg   %ax,%ax
   31e5b:	66 90                	xchg   %ax,%ax
   31e5d:	66 90                	xchg   %ax,%ax
   31e5f:	90                   	nop

00031e60 <__getreent>:
   31e60:	55                   	push   %ebp
   31e61:	a1 40 d0 03 00       	mov    0x3d040,%eax
   31e66:	89 e5                	mov    %esp,%ebp
   31e68:	5d                   	pop    %ebp
   31e69:	c3                   	ret    
   31e6a:	66 90                	xchg   %ax,%ax
   31e6c:	66 90                	xchg   %ax,%ax
   31e6e:	66 90                	xchg   %ax,%ax

00031e70 <_svfprintf_r>:
   31e70:	55                   	push   %ebp
   31e71:	89 e5                	mov    %esp,%ebp
   31e73:	57                   	push   %edi
   31e74:	56                   	push   %esi
   31e75:	53                   	push   %ebx
   31e76:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
   31e7c:	8b 45 08             	mov    0x8(%ebp),%eax
   31e7f:	89 04 24             	mov    %eax,(%esp)
   31e82:	e8 89 33 00 00       	call   35210 <_localeconv_r>
   31e87:	8b 00                	mov    (%eax),%eax
   31e89:	89 04 24             	mov    %eax,(%esp)
   31e8c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
   31e92:	e8 d9 4a 00 00       	call   36970 <strlen>
   31e97:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
   31e9d:	8b 45 0c             	mov    0xc(%ebp),%eax
   31ea0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
   31ea4:	74 0b                	je     31eb1 <_svfprintf_r+0x41>
   31ea6:	8b 40 10             	mov    0x10(%eax),%eax
   31ea9:	85 c0                	test   %eax,%eax
   31eab:	0f 84 62 18 00 00    	je     33713 <_svfprintf_r+0x18a3>
   31eb1:	8d 45 a8             	lea    -0x58(%ebp),%eax
   31eb4:	8d 55 a7             	lea    -0x59(%ebp),%edx
   31eb7:	89 c7                	mov    %eax,%edi
   31eb9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
   31ebf:	d9 ee                	fldz   
   31ec1:	29 d0                	sub    %edx,%eax
   31ec3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
   31eca:	00 00 00 
   31ecd:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
   31ed3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   31eda:	00 00 00 
   31edd:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
   31ee4:	00 00 00 
   31ee7:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
   31eee:	00 00 00 
   31ef1:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
   31ef8:	00 00 00 
   31efb:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
   31f02:	00 00 00 
   31f05:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
   31f0b:	8b 45 10             	mov    0x10(%ebp),%eax
   31f0e:	8b 5d 10             	mov    0x10(%ebp),%ebx
   31f11:	0f b6 00             	movzbl (%eax),%eax
   31f14:	3c 25                	cmp    $0x25,%al
   31f16:	74 4d                	je     31f65 <_svfprintf_r+0xf5>
   31f18:	84 c0                	test   %al,%al
   31f1a:	75 08                	jne    31f24 <_svfprintf_r+0xb4>
   31f1c:	eb 47                	jmp    31f65 <_svfprintf_r+0xf5>
   31f1e:	66 90                	xchg   %ax,%ax
   31f20:	84 c0                	test   %al,%al
   31f22:	74 0a                	je     31f2e <_svfprintf_r+0xbe>
   31f24:	83 c3 01             	add    $0x1,%ebx
   31f27:	0f b6 03             	movzbl (%ebx),%eax
   31f2a:	3c 25                	cmp    $0x25,%al
   31f2c:	75 f2                	jne    31f20 <_svfprintf_r+0xb0>
   31f2e:	89 de                	mov    %ebx,%esi
   31f30:	2b 75 10             	sub    0x10(%ebp),%esi
   31f33:	74 30                	je     31f65 <_svfprintf_r+0xf5>
   31f35:	8b 45 10             	mov    0x10(%ebp),%eax
   31f38:	83 c7 08             	add    $0x8,%edi
   31f3b:	89 77 fc             	mov    %esi,-0x4(%edi)
   31f3e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
   31f44:	89 47 f8             	mov    %eax,-0x8(%edi)
   31f47:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   31f4d:	83 c0 01             	add    $0x1,%eax
   31f50:	83 f8 07             	cmp    $0x7,%eax
   31f53:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   31f59:	0f 8f 91 00 00 00    	jg     31ff0 <_svfprintf_r+0x180>
   31f5f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
   31f65:	80 3b 00             	cmpb   $0x0,(%ebx)
   31f68:	0f 84 aa 00 00 00    	je     32018 <_svfprintf_r+0x1a8>
   31f6e:	8d 43 01             	lea    0x1(%ebx),%eax
   31f71:	be 20 00 00 00       	mov    $0x20,%esi
   31f76:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   31f7d:	31 db                	xor    %ebx,%ebx
   31f7f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
   31f86:	ff ff ff 
   31f89:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
   31f90:	00 00 00 
   31f93:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
   31f9a:	00 00 00 
   31f9d:	8d 48 01             	lea    0x1(%eax),%ecx
   31fa0:	0f be 00             	movsbl (%eax),%eax
   31fa3:	8d 50 e0             	lea    -0x20(%eax),%edx
   31fa6:	83 fa 58             	cmp    $0x58,%edx
   31fa9:	0f 87 8f 07 00 00    	ja     3273e <_svfprintf_r+0x8ce>
   31faf:	ff 24 95 04 99 03 00 	jmp    *0x39904(,%edx,4)
   31fb6:	66 90                	xchg   %ax,%ax
   31fb8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   31fbf:	89 c8                	mov    %ecx,%eax
   31fc1:	eb da                	jmp    31f9d <_svfprintf_r+0x12d>
   31fc3:	8b 45 14             	mov    0x14(%ebp),%eax
   31fc6:	8b 55 14             	mov    0x14(%ebp),%edx
   31fc9:	8b 00                	mov    (%eax),%eax
   31fcb:	83 c2 04             	add    $0x4,%edx
   31fce:	89 55 14             	mov    %edx,0x14(%ebp)
   31fd1:	85 c0                	test   %eax,%eax
   31fd3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
   31fd9:	79 e4                	jns    31fbf <_svfprintf_r+0x14f>
   31fdb:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
   31fe1:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
   31fe8:	89 c8                	mov    %ecx,%eax
   31fea:	eb b1                	jmp    31f9d <_svfprintf_r+0x12d>
   31fec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   31ff0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   31ff6:	89 44 24 08          	mov    %eax,0x8(%esp)
   31ffa:	8b 45 0c             	mov    0xc(%ebp),%eax
   31ffd:	89 44 24 04          	mov    %eax,0x4(%esp)
   32001:	8b 45 08             	mov    0x8(%ebp),%eax
   32004:	89 04 24             	mov    %eax,(%esp)
   32007:	e8 e4 49 00 00       	call   369f0 <__ssprint_r>
   3200c:	85 c0                	test   %eax,%eax
   3200e:	75 30                	jne    32040 <_svfprintf_r+0x1d0>
   32010:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32013:	e9 47 ff ff ff       	jmp    31f5f <_svfprintf_r+0xef>
   32018:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
   3201e:	85 c0                	test   %eax,%eax
   32020:	74 1e                	je     32040 <_svfprintf_r+0x1d0>
   32022:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32028:	89 44 24 08          	mov    %eax,0x8(%esp)
   3202c:	8b 45 0c             	mov    0xc(%ebp),%eax
   3202f:	89 44 24 04          	mov    %eax,0x4(%esp)
   32033:	8b 45 08             	mov    0x8(%ebp),%eax
   32036:	89 04 24             	mov    %eax,(%esp)
   32039:	e8 b2 49 00 00       	call   369f0 <__ssprint_r>
   3203e:	66 90                	xchg   %ax,%ax
   32040:	8b 55 0c             	mov    0xc(%ebp),%edx
   32043:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   32048:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
   3204c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
   32053:	81 c4 1c 01 00 00    	add    $0x11c,%esp
   32059:	5b                   	pop    %ebx
   3205a:	5e                   	pop    %esi
   3205b:	5f                   	pop    %edi
   3205c:	5d                   	pop    %ebp
   3205d:	c3                   	ret    
   3205e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
   32063:	89 c8                	mov    %ecx,%eax
   32065:	e9 33 ff ff ff       	jmp    31f9d <_svfprintf_r+0x12d>
   3206a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32070:	8b 45 14             	mov    0x14(%ebp),%eax
   32073:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32076:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   3207d:	8d 70 04             	lea    0x4(%eax),%esi
   32080:	8b 00                	mov    (%eax),%eax
   32082:	85 c0                	test   %eax,%eax
   32084:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   3208a:	0f 84 7f 18 00 00    	je     3390f <_svfprintf_r+0x1a9f>
   32090:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   32096:	85 c0                	test   %eax,%eax
   32098:	0f 88 b6 17 00 00    	js     33854 <_svfprintf_r+0x19e4>
   3209e:	89 44 24 08          	mov    %eax,0x8(%esp)
   320a2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   320a8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   320af:	00 
   320b0:	89 04 24             	mov    %eax,(%esp)
   320b3:	e8 f8 38 00 00       	call   359b0 <memchr>
   320b8:	85 c0                	test   %eax,%eax
   320ba:	0f 84 a0 19 00 00    	je     33a60 <_svfprintf_r+0x1bf0>
   320c0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   320c6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
   320cc:	39 d0                	cmp    %edx,%eax
   320ce:	0f 4f c2             	cmovg  %edx,%eax
   320d1:	89 c2                	mov    %eax,%edx
   320d3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   320da:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   320e0:	31 c0                	xor    %eax,%eax
   320e2:	85 d2                	test   %edx,%edx
   320e4:	0f 49 c2             	cmovns %edx,%eax
   320e7:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   320ed:	89 75 14             	mov    %esi,0x14(%ebp)
   320f0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   320f7:	00 00 00 
   320fa:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   32101:	00 00 00 
   32104:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32108:	84 db                	test   %bl,%bl
   3210a:	74 07                	je     32113 <_svfprintf_r+0x2a3>
   3210c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
   32113:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   32119:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
   3211f:	89 c8                	mov    %ecx,%eax
   32121:	89 f2                	mov    %esi,%edx
   32123:	83 c0 02             	add    $0x2,%eax
   32126:	83 e2 02             	and    $0x2,%edx
   32129:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
   3212f:	89 f2                	mov    %esi,%edx
   32131:	0f 44 c1             	cmove  %ecx,%eax
   32134:	81 e2 84 00 00 00    	and    $0x84,%edx
   3213a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   32140:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
   32146:	0f 85 1c 06 00 00    	jne    32768 <_svfprintf_r+0x8f8>
   3214c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
   32152:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
   32158:	85 f6                	test   %esi,%esi
   3215a:	0f 8e 08 06 00 00    	jle    32768 <_svfprintf_r+0x8f8>
   32160:	83 fe 10             	cmp    $0x10,%esi
   32163:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32169:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3216f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32175:	7f 11                	jg     32188 <_svfprintf_r+0x318>
   32177:	eb 6b                	jmp    321e4 <_svfprintf_r+0x374>
   32179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   32180:	83 ee 10             	sub    $0x10,%esi
   32183:	83 fe 10             	cmp    $0x10,%esi
   32186:	7e 5c                	jle    321e4 <_svfprintf_r+0x374>
   32188:	83 c0 01             	add    $0x1,%eax
   3218b:	83 c1 10             	add    $0x10,%ecx
   3218e:	c7 07 78 9a 03 00    	movl   $0x39a78,(%edi)
   32194:	83 c7 08             	add    $0x8,%edi
   32197:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   3219e:	83 f8 07             	cmp    $0x7,%eax
   321a1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   321a7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   321ad:	7e d1                	jle    32180 <_svfprintf_r+0x310>
   321af:	8b 45 0c             	mov    0xc(%ebp),%eax
   321b2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   321b6:	89 44 24 04          	mov    %eax,0x4(%esp)
   321ba:	8b 45 08             	mov    0x8(%ebp),%eax
   321bd:	89 04 24             	mov    %eax,(%esp)
   321c0:	e8 2b 48 00 00       	call   369f0 <__ssprint_r>
   321c5:	85 c0                	test   %eax,%eax
   321c7:	0f 85 73 fe ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   321cd:	83 ee 10             	sub    $0x10,%esi
   321d0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   321d6:	83 fe 10             	cmp    $0x10,%esi
   321d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   321df:	8d 7d a8             	lea    -0x58(%ebp),%edi
   321e2:	7f a4                	jg     32188 <_svfprintf_r+0x318>
   321e4:	83 c0 01             	add    $0x1,%eax
   321e7:	01 f1                	add    %esi,%ecx
   321e9:	83 f8 07             	cmp    $0x7,%eax
   321ec:	c7 07 78 9a 03 00    	movl   $0x39a78,(%edi)
   321f2:	89 77 04             	mov    %esi,0x4(%edi)
   321f5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   321fb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32201:	0f 8f 16 0e 00 00    	jg     3301d <_svfprintf_r+0x11ad>
   32207:	83 c7 08             	add    $0x8,%edi
   3220a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   32211:	e9 58 05 00 00       	jmp    3276e <_svfprintf_r+0x8fe>
   32216:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   3221d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32223:	8b 45 14             	mov    0x14(%ebp),%eax
   32226:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32229:	0f 85 fd 04 00 00    	jne    3272c <_svfprintf_r+0x8bc>
   3222f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   32236:	0f 84 f0 04 00 00    	je     3272c <_svfprintf_r+0x8bc>
   3223c:	0f b7 08             	movzwl (%eax),%ecx
   3223f:	83 c0 04             	add    $0x4,%eax
   32242:	89 45 14             	mov    %eax,0x14(%ebp)
   32245:	b8 01 00 00 00       	mov    $0x1,%eax
   3224a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32250:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   32257:	31 db                	xor    %ebx,%ebx
   32259:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
   3225f:	89 f2                	mov    %esi,%edx
   32261:	80 e2 7f             	and    $0x7f,%dl
   32264:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
   3226b:	0f 48 d6             	cmovs  %esi,%edx
   3226e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
   32274:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   3227a:	85 d2                	test   %edx,%edx
   3227c:	75 08                	jne    32286 <_svfprintf_r+0x416>
   3227e:	85 c9                	test   %ecx,%ecx
   32280:	0f 84 ea 08 00 00    	je     32b70 <_svfprintf_r+0xd00>
   32286:	3c 01                	cmp    $0x1,%al
   32288:	0f 84 6a 0d 00 00    	je     32ff8 <_svfprintf_r+0x1188>
   3228e:	3c 02                	cmp    $0x2,%al
   32290:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32293:	0f 85 bf 0b 00 00    	jne    32e58 <_svfprintf_r+0xfe8>
   32299:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
   3229f:	90                   	nop
   322a0:	89 ca                	mov    %ecx,%edx
   322a2:	83 e8 01             	sub    $0x1,%eax
   322a5:	83 e2 0f             	and    $0xf,%edx
   322a8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
   322ac:	c1 e9 04             	shr    $0x4,%ecx
   322af:	85 c9                	test   %ecx,%ecx
   322b1:	88 10                	mov    %dl,(%eax)
   322b3:	75 eb                	jne    322a0 <_svfprintf_r+0x430>
   322b5:	8d 55 a8             	lea    -0x58(%ebp),%edx
   322b8:	29 c2                	sub    %eax,%edx
   322ba:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   322c0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   322c6:	66 90                	xchg   %ax,%ax
   322c8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   322ce:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
   322d4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   322db:	00 00 00 
   322de:	39 c2                	cmp    %eax,%edx
   322e0:	0f 4d c2             	cmovge %edx,%eax
   322e3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   322e9:	e9 1a fe ff ff       	jmp    32108 <_svfprintf_r+0x298>
   322ee:	84 db                	test   %bl,%bl
   322f0:	89 c8                	mov    %ecx,%eax
   322f2:	0f 44 de             	cmove  %esi,%ebx
   322f5:	e9 a3 fc ff ff       	jmp    31f9d <_svfprintf_r+0x12d>
   322fa:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
   32301:	89 c8                	mov    %ecx,%eax
   32303:	e9 95 fc ff ff       	jmp    31f9d <_svfprintf_r+0x12d>
   32308:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
   3230f:	00 00 00 
   32312:	89 c8                	mov    %ecx,%eax
   32314:	e9 84 fc ff ff       	jmp    31f9d <_svfprintf_r+0x12d>
   32319:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   3231f:	8d 50 d0             	lea    -0x30(%eax),%edx
   32322:	31 ff                	xor    %edi,%edi
   32324:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
   3232b:	00 00 00 
   3232e:	66 90                	xchg   %ax,%ax
   32330:	8d 04 bf             	lea    (%edi,%edi,4),%eax
   32333:	83 c1 01             	add    $0x1,%ecx
   32336:	8d 3c 42             	lea    (%edx,%eax,2),%edi
   32339:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
   3233d:	8d 50 d0             	lea    -0x30(%eax),%edx
   32340:	83 fa 09             	cmp    $0x9,%edx
   32343:	76 eb                	jbe    32330 <_svfprintf_r+0x4c0>
   32345:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
   3234b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
   32351:	e9 4d fc ff ff       	jmp    31fa3 <_svfprintf_r+0x133>
   32356:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   3235d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   32364:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   3236a:	8b 45 14             	mov    0x14(%ebp),%eax
   3236d:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32370:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   32376:	0f 85 61 02 00 00    	jne    325dd <_svfprintf_r+0x76d>
   3237c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   32383:	0f 84 54 02 00 00    	je     325dd <_svfprintf_r+0x76d>
   32389:	0f bf 08             	movswl (%eax),%ecx
   3238c:	83 c0 04             	add    $0x4,%eax
   3238f:	89 45 14             	mov    %eax,0x14(%ebp)
   32392:	85 c9                	test   %ecx,%ecx
   32394:	0f 88 53 02 00 00    	js     325ed <_svfprintf_r+0x77d>
   3239a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   323a1:	b8 01 00 00 00       	mov    $0x1,%eax
   323a6:	e9 ae fe ff ff       	jmp    32259 <_svfprintf_r+0x3e9>
   323ab:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
   323b2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   323b8:	8b 45 14             	mov    0x14(%ebp),%eax
   323bb:	89 4d 10             	mov    %ecx,0x10(%ebp)
   323be:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   323c4:	0f 84 15 10 00 00    	je     333df <_svfprintf_r+0x156f>
   323ca:	db 28                	fldt   (%eax)
   323cc:	83 c0 0c             	add    $0xc,%eax
   323cf:	89 45 14             	mov    %eax,0x14(%ebp)
   323d2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
   323d8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   323de:	dd 1c 24             	fstpl  (%esp)
   323e1:	e8 aa 44 00 00       	call   36890 <__fpclassifyd>
   323e6:	83 f8 01             	cmp    $0x1,%eax
   323e9:	0f 85 82 0f 00 00    	jne    33371 <_svfprintf_r+0x1501>
   323ef:	d9 ee                	fldz   
   323f1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   323f7:	d9 c9                	fxch   %st(1)
   323f9:	df e9                	fucomip %st(1),%st
   323fb:	dd d8                	fstp   %st(0)
   323fd:	0f 87 59 15 00 00    	ja     3395c <_svfprintf_r+0x1aec>
   32403:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   3240a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
   32411:	ba c6 98 03 00       	mov    $0x398c6,%edx
   32416:	b8 ca 98 03 00       	mov    $0x398ca,%eax
   3241b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
   32422:	00 00 00 
   32425:	0f 4e c2             	cmovle %edx,%eax
   32428:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   3242e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
   32435:	ff ff ff 
   32438:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
   3243f:	00 00 00 
   32442:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   32449:	00 00 00 
   3244c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   32453:	00 00 00 
   32456:	e9 ad fc ff ff       	jmp    32108 <_svfprintf_r+0x298>
   3245b:	8d 41 01             	lea    0x1(%ecx),%eax
   3245e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   32464:	0f be 01             	movsbl (%ecx),%eax
   32467:	83 f8 2a             	cmp    $0x2a,%eax
   3246a:	0f 84 84 18 00 00    	je     33cf4 <_svfprintf_r+0x1e84>
   32470:	8d 50 d0             	lea    -0x30(%eax),%edx
   32473:	31 c9                	xor    %ecx,%ecx
   32475:	83 fa 09             	cmp    $0x9,%edx
   32478:	0f 87 a8 16 00 00    	ja     33b26 <_svfprintf_r+0x1cb6>
   3247e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
   32484:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
   3248a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32490:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
   32493:	83 c7 01             	add    $0x1,%edi
   32496:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
   32499:	0f be 47 ff          	movsbl -0x1(%edi),%eax
   3249d:	8d 50 d0             	lea    -0x30(%eax),%edx
   324a0:	83 fa 09             	cmp    $0x9,%edx
   324a3:	76 eb                	jbe    32490 <_svfprintf_r+0x620>
   324a5:	85 c9                	test   %ecx,%ecx
   324a7:	89 ca                	mov    %ecx,%edx
   324a9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   324ae:	0f 48 d1             	cmovs  %ecx,%edx
   324b1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   324b7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
   324bd:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   324c3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
   324c9:	e9 d5 fa ff ff       	jmp    31fa3 <_svfprintf_r+0x133>
   324ce:	8b 45 14             	mov    0x14(%ebp),%eax
   324d1:	89 4d 10             	mov    %ecx,0x10(%ebp)
   324d4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
   324db:	8b 08                	mov    (%eax),%ecx
   324dd:	83 c0 04             	add    $0x4,%eax
   324e0:	89 45 14             	mov    %eax,0x14(%ebp)
   324e3:	b8 02 00 00 00       	mov    $0x2,%eax
   324e8:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
   324ef:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
   324f6:	c7 85 18 ff ff ff e7 	movl   $0x398e7,-0xe8(%ebp)
   324fd:	98 03 00 
   32500:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
   32507:	00 00 00 
   3250a:	e9 41 fd ff ff       	jmp    32250 <_svfprintf_r+0x3e0>
   3250f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   32516:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   3251c:	8b 45 14             	mov    0x14(%ebp),%eax
   3251f:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32522:	0f 85 87 00 00 00    	jne    325af <_svfprintf_r+0x73f>
   32528:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   3252f:	74 7e                	je     325af <_svfprintf_r+0x73f>
   32531:	0f b7 08             	movzwl (%eax),%ecx
   32534:	83 c0 04             	add    $0x4,%eax
   32537:	89 45 14             	mov    %eax,0x14(%ebp)
   3253a:	31 c0                	xor    %eax,%eax
   3253c:	e9 0f fd ff ff       	jmp    32250 <_svfprintf_r+0x3e0>
   32541:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
   32548:	89 c8                	mov    %ecx,%eax
   3254a:	e9 4e fa ff ff       	jmp    31f9d <_svfprintf_r+0x12d>
   3254f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   32556:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32559:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   3255f:	0f 85 97 0b 00 00    	jne    330fc <_svfprintf_r+0x128c>
   32565:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   3256c:	0f 84 8a 0b 00 00    	je     330fc <_svfprintf_r+0x128c>
   32572:	8b 45 14             	mov    0x14(%ebp),%eax
   32575:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
   3257c:	8b 00                	mov    (%eax),%eax
   3257e:	66 89 10             	mov    %dx,(%eax)
   32581:	8b 45 14             	mov    0x14(%ebp),%eax
   32584:	83 c0 04             	add    $0x4,%eax
   32587:	89 45 14             	mov    %eax,0x14(%ebp)
   3258a:	e9 7c f9 ff ff       	jmp    31f0b <_svfprintf_r+0x9b>
   3258f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   32596:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   3259d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   325a3:	8b 45 14             	mov    0x14(%ebp),%eax
   325a6:	89 4d 10             	mov    %ecx,0x10(%ebp)
   325a9:	0f 84 79 ff ff ff    	je     32528 <_svfprintf_r+0x6b8>
   325af:	8b 08                	mov    (%eax),%ecx
   325b1:	83 c0 04             	add    $0x4,%eax
   325b4:	89 45 14             	mov    %eax,0x14(%ebp)
   325b7:	31 c0                	xor    %eax,%eax
   325b9:	e9 92 fc ff ff       	jmp    32250 <_svfprintf_r+0x3e0>
   325be:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   325c5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   325cb:	8b 45 14             	mov    0x14(%ebp),%eax
   325ce:	89 4d 10             	mov    %ecx,0x10(%ebp)
   325d1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   325d7:	0f 84 9f fd ff ff    	je     3237c <_svfprintf_r+0x50c>
   325dd:	8b 08                	mov    (%eax),%ecx
   325df:	83 c0 04             	add    $0x4,%eax
   325e2:	89 45 14             	mov    %eax,0x14(%ebp)
   325e5:	85 c9                	test   %ecx,%ecx
   325e7:	0f 89 ad fd ff ff    	jns    3239a <_svfprintf_r+0x52a>
   325ed:	f7 d9                	neg    %ecx
   325ef:	bb 2d 00 00 00       	mov    $0x2d,%ebx
   325f4:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
   325fb:	b8 01 00 00 00       	mov    $0x1,%eax
   32600:	e9 54 fc ff ff       	jmp    32259 <_svfprintf_r+0x3e9>
   32605:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
   3260c:	89 c8                	mov    %ecx,%eax
   3260e:	e9 8a f9 ff ff       	jmp    31f9d <_svfprintf_r+0x12d>
   32613:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   3261a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32620:	8b 45 14             	mov    0x14(%ebp),%eax
   32623:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32626:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   3262c:	c7 85 18 ff ff ff e7 	movl   $0x398e7,-0xe8(%ebp)
   32633:	98 03 00 
   32636:	75 71                	jne    326a9 <_svfprintf_r+0x839>
   32638:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
   3263f:	74 68                	je     326a9 <_svfprintf_r+0x839>
   32641:	0f b7 08             	movzwl (%eax),%ecx
   32644:	83 c0 04             	add    $0x4,%eax
   32647:	89 45 14             	mov    %eax,0x14(%ebp)
   3264a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   32651:	b8 02 00 00 00       	mov    $0x2,%eax
   32656:	0f 84 f4 fb ff ff    	je     32250 <_svfprintf_r+0x3e0>
   3265c:	85 c9                	test   %ecx,%ecx
   3265e:	0f 84 ec fb ff ff    	je     32250 <_svfprintf_r+0x3e0>
   32664:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
   3266b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
   32672:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
   32679:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
   3267f:	e9 cc fb ff ff       	jmp    32250 <_svfprintf_r+0x3e0>
   32684:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   3268b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32691:	8b 45 14             	mov    0x14(%ebp),%eax
   32694:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32697:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   3269d:	c7 85 18 ff ff ff d6 	movl   $0x398d6,-0xe8(%ebp)
   326a4:	98 03 00 
   326a7:	74 8f                	je     32638 <_svfprintf_r+0x7c8>
   326a9:	8b 08                	mov    (%eax),%ecx
   326ab:	83 c0 04             	add    $0x4,%eax
   326ae:	89 45 14             	mov    %eax,0x14(%ebp)
   326b1:	eb 97                	jmp    3264a <_svfprintf_r+0x7da>
   326b3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   326b9:	8b 45 14             	mov    0x14(%ebp),%eax
   326bc:	89 4d 10             	mov    %ecx,0x10(%ebp)
   326bf:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   326c6:	8b 00                	mov    (%eax),%eax
   326c8:	88 45 80             	mov    %al,-0x80(%ebp)
   326cb:	8b 45 14             	mov    0x14(%ebp),%eax
   326ce:	83 c0 04             	add    $0x4,%eax
   326d1:	89 45 14             	mov    %eax,0x14(%ebp)
   326d4:	8d 45 80             	lea    -0x80(%ebp),%eax
   326d7:	31 db                	xor    %ebx,%ebx
   326d9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
   326e0:	00 00 00 
   326e3:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
   326ea:	00 00 00 
   326ed:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   326f4:	00 00 00 
   326f7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   326fe:	00 00 00 
   32701:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32707:	e9 07 fa ff ff       	jmp    32113 <_svfprintf_r+0x2a3>
   3270c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
   32713:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
   3271a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32720:	8b 45 14             	mov    0x14(%ebp),%eax
   32723:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32726:	0f 84 03 fb ff ff    	je     3222f <_svfprintf_r+0x3bf>
   3272c:	8b 08                	mov    (%eax),%ecx
   3272e:	83 c0 04             	add    $0x4,%eax
   32731:	89 45 14             	mov    %eax,0x14(%ebp)
   32734:	b8 01 00 00 00       	mov    $0x1,%eax
   32739:	e9 12 fb ff ff       	jmp    32250 <_svfprintf_r+0x3e0>
   3273e:	85 c0                	test   %eax,%eax
   32740:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
   32746:	89 4d 10             	mov    %ecx,0x10(%ebp)
   32749:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
   3274f:	0f 84 c3 f8 ff ff    	je     32018 <_svfprintf_r+0x1a8>
   32755:	88 45 80             	mov    %al,-0x80(%ebp)
   32758:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
   3275f:	e9 70 ff ff ff       	jmp    326d4 <_svfprintf_r+0x864>
   32764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32768:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   3276e:	84 db                	test   %bl,%bl
   32770:	74 33                	je     327a5 <_svfprintf_r+0x935>
   32772:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
   32778:	83 c1 01             	add    $0x1,%ecx
   3277b:	89 07                	mov    %eax,(%edi)
   3277d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32783:	83 c7 08             	add    $0x8,%edi
   32786:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
   3278d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32793:	83 c0 01             	add    $0x1,%eax
   32796:	83 f8 07             	cmp    $0x7,%eax
   32799:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3279f:	0f 8f 7b 06 00 00    	jg     32e20 <_svfprintf_r+0xfb0>
   327a5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
   327ab:	85 db                	test   %ebx,%ebx
   327ad:	74 33                	je     327e2 <_svfprintf_r+0x972>
   327af:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
   327b5:	83 c1 02             	add    $0x2,%ecx
   327b8:	89 07                	mov    %eax,(%edi)
   327ba:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   327c0:	83 c7 08             	add    $0x8,%edi
   327c3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
   327ca:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   327d0:	83 c0 01             	add    $0x1,%eax
   327d3:	83 f8 07             	cmp    $0x7,%eax
   327d6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   327dc:	0f 8f 06 06 00 00    	jg     32de8 <_svfprintf_r+0xf78>
   327e2:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
   327e9:	00 00 00 
   327ec:	0f 84 c6 03 00 00    	je     32bb8 <_svfprintf_r+0xd48>
   327f2:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
   327f8:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
   327fe:	85 f6                	test   %esi,%esi
   32800:	0f 8e d2 00 00 00    	jle    328d8 <_svfprintf_r+0xa68>
   32806:	83 fe 10             	cmp    $0x10,%esi
   32809:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3280f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32815:	7f 11                	jg     32828 <_svfprintf_r+0x9b8>
   32817:	eb 6b                	jmp    32884 <_svfprintf_r+0xa14>
   32819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   32820:	83 ee 10             	sub    $0x10,%esi
   32823:	83 fe 10             	cmp    $0x10,%esi
   32826:	7e 5c                	jle    32884 <_svfprintf_r+0xa14>
   32828:	83 c0 01             	add    $0x1,%eax
   3282b:	83 c1 10             	add    $0x10,%ecx
   3282e:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   32834:	83 c7 08             	add    $0x8,%edi
   32837:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   3283e:	83 f8 07             	cmp    $0x7,%eax
   32841:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32847:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3284d:	7e d1                	jle    32820 <_svfprintf_r+0x9b0>
   3284f:	8b 45 0c             	mov    0xc(%ebp),%eax
   32852:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32856:	89 44 24 04          	mov    %eax,0x4(%esp)
   3285a:	8b 45 08             	mov    0x8(%ebp),%eax
   3285d:	89 04 24             	mov    %eax,(%esp)
   32860:	e8 8b 41 00 00       	call   369f0 <__ssprint_r>
   32865:	85 c0                	test   %eax,%eax
   32867:	0f 85 d3 f7 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   3286d:	83 ee 10             	sub    $0x10,%esi
   32870:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32876:	83 fe 10             	cmp    $0x10,%esi
   32879:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3287f:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32882:	7f a4                	jg     32828 <_svfprintf_r+0x9b8>
   32884:	83 c0 01             	add    $0x1,%eax
   32887:	01 f1                	add    %esi,%ecx
   32889:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   3288f:	83 c7 08             	add    $0x8,%edi
   32892:	89 77 fc             	mov    %esi,-0x4(%edi)
   32895:	83 f8 07             	cmp    $0x7,%eax
   32898:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   3289e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   328a4:	7e 32                	jle    328d8 <_svfprintf_r+0xa68>
   328a6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   328ac:	89 44 24 08          	mov    %eax,0x8(%esp)
   328b0:	8b 45 0c             	mov    0xc(%ebp),%eax
   328b3:	89 44 24 04          	mov    %eax,0x4(%esp)
   328b7:	8b 45 08             	mov    0x8(%ebp),%eax
   328ba:	89 04 24             	mov    %eax,(%esp)
   328bd:	e8 2e 41 00 00       	call   369f0 <__ssprint_r>
   328c2:	85 c0                	test   %eax,%eax
   328c4:	0f 85 76 f7 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   328ca:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   328d0:	8d 7d a8             	lea    -0x58(%ebp),%edi
   328d3:	90                   	nop
   328d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   328d8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
   328df:	01 00 00 
   328e2:	0f 85 50 01 00 00    	jne    32a38 <_svfprintf_r+0xbc8>
   328e8:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   328ee:	89 07                	mov    %eax,(%edi)
   328f0:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
   328f6:	01 c1                	add    %eax,%ecx
   328f8:	89 47 04             	mov    %eax,0x4(%edi)
   328fb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32901:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32907:	83 c0 01             	add    $0x1,%eax
   3290a:	83 f8 07             	cmp    $0x7,%eax
   3290d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32913:	0f 8f 6a 04 00 00    	jg     32d83 <_svfprintf_r+0xf13>
   32919:	83 c7 08             	add    $0x8,%edi
   3291c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
   32923:	0f 84 d7 00 00 00    	je     32a00 <_svfprintf_r+0xb90>
   32929:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
   3292f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
   32935:	85 f6                	test   %esi,%esi
   32937:	0f 8e c3 00 00 00    	jle    32a00 <_svfprintf_r+0xb90>
   3293d:	83 fe 10             	cmp    $0x10,%esi
   32940:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32946:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   3294c:	7f 0a                	jg     32958 <_svfprintf_r+0xae8>
   3294e:	eb 64                	jmp    329b4 <_svfprintf_r+0xb44>
   32950:	83 ee 10             	sub    $0x10,%esi
   32953:	83 fe 10             	cmp    $0x10,%esi
   32956:	7e 5c                	jle    329b4 <_svfprintf_r+0xb44>
   32958:	83 c0 01             	add    $0x1,%eax
   3295b:	83 c1 10             	add    $0x10,%ecx
   3295e:	c7 07 78 9a 03 00    	movl   $0x39a78,(%edi)
   32964:	83 c7 08             	add    $0x8,%edi
   32967:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   3296e:	83 f8 07             	cmp    $0x7,%eax
   32971:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32977:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3297d:	7e d1                	jle    32950 <_svfprintf_r+0xae0>
   3297f:	8b 45 0c             	mov    0xc(%ebp),%eax
   32982:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32986:	89 44 24 04          	mov    %eax,0x4(%esp)
   3298a:	8b 45 08             	mov    0x8(%ebp),%eax
   3298d:	89 04 24             	mov    %eax,(%esp)
   32990:	e8 5b 40 00 00       	call   369f0 <__ssprint_r>
   32995:	85 c0                	test   %eax,%eax
   32997:	0f 85 a3 f6 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   3299d:	83 ee 10             	sub    $0x10,%esi
   329a0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   329a6:	83 fe 10             	cmp    $0x10,%esi
   329a9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   329af:	8d 7d a8             	lea    -0x58(%ebp),%edi
   329b2:	7f a4                	jg     32958 <_svfprintf_r+0xae8>
   329b4:	83 c0 01             	add    $0x1,%eax
   329b7:	01 f1                	add    %esi,%ecx
   329b9:	83 f8 07             	cmp    $0x7,%eax
   329bc:	c7 07 78 9a 03 00    	movl   $0x39a78,(%edi)
   329c2:	89 77 04             	mov    %esi,0x4(%edi)
   329c5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   329cb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   329d1:	7e 2d                	jle    32a00 <_svfprintf_r+0xb90>
   329d3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   329d9:	89 44 24 08          	mov    %eax,0x8(%esp)
   329dd:	8b 45 0c             	mov    0xc(%ebp),%eax
   329e0:	89 44 24 04          	mov    %eax,0x4(%esp)
   329e4:	8b 45 08             	mov    0x8(%ebp),%eax
   329e7:	89 04 24             	mov    %eax,(%esp)
   329ea:	e8 01 40 00 00       	call   369f0 <__ssprint_r>
   329ef:	85 c0                	test   %eax,%eax
   329f1:	0f 85 49 f6 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   329f7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   329fd:	8d 76 00             	lea    0x0(%esi),%esi
   32a00:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
   32a06:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
   32a0c:	39 c2                	cmp    %eax,%edx
   32a0e:	0f 4d c2             	cmovge %edx,%eax
   32a11:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
   32a17:	85 c9                	test   %ecx,%ecx
   32a19:	0f 85 99 03 00 00    	jne    32db8 <_svfprintf_r+0xf48>
   32a1f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   32a26:	00 00 00 
   32a29:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32a2c:	e9 da f4 ff ff       	jmp    31f0b <_svfprintf_r+0x9b>
   32a31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   32a38:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
   32a3f:	0f 8e 5b 02 00 00    	jle    32ca0 <_svfprintf_r+0xe30>
   32a45:	d9 ee                	fldz   
   32a47:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   32a4d:	df e9                	fucomip %st(1),%st
   32a4f:	dd d8                	fstp   %st(0)
   32a51:	0f 8a 59 04 00 00    	jp     32eb0 <_svfprintf_r+0x1040>
   32a57:	0f 85 53 04 00 00    	jne    32eb0 <_svfprintf_r+0x1040>
   32a5d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32a63:	83 c1 01             	add    $0x1,%ecx
   32a66:	83 c7 08             	add    $0x8,%edi
   32a69:	c7 47 f8 ff 98 03 00 	movl   $0x398ff,-0x8(%edi)
   32a70:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
   32a77:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32a7d:	83 c0 01             	add    $0x1,%eax
   32a80:	83 f8 07             	cmp    $0x7,%eax
   32a83:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32a89:	0f 8f 63 09 00 00    	jg     333f2 <_svfprintf_r+0x1582>
   32a8f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
   32a95:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
   32a9b:	7c 0d                	jl     32aaa <_svfprintf_r+0xc3a>
   32a9d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   32aa4:	0f 84 72 fe ff ff    	je     3291c <_svfprintf_r+0xaac>
   32aaa:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
   32ab0:	83 c7 08             	add    $0x8,%edi
   32ab3:	89 47 f8             	mov    %eax,-0x8(%edi)
   32ab6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
   32abc:	89 47 fc             	mov    %eax,-0x4(%edi)
   32abf:	01 c1                	add    %eax,%ecx
   32ac1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32ac7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32acd:	83 c0 01             	add    $0x1,%eax
   32ad0:	83 f8 07             	cmp    $0x7,%eax
   32ad3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32ad9:	0f 8f dc 0b 00 00    	jg     336bb <_svfprintf_r+0x184b>
   32adf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
   32ae5:	8d 70 ff             	lea    -0x1(%eax),%esi
   32ae8:	85 f6                	test   %esi,%esi
   32aea:	0f 8e 2c fe ff ff    	jle    3291c <_svfprintf_r+0xaac>
   32af0:	83 fe 10             	cmp    $0x10,%esi
   32af3:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32af9:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32aff:	7f 13                	jg     32b14 <_svfprintf_r+0xca4>
   32b01:	e9 e6 05 00 00       	jmp    330ec <_svfprintf_r+0x127c>
   32b06:	66 90                	xchg   %ax,%ax
   32b08:	83 ee 10             	sub    $0x10,%esi
   32b0b:	83 fe 10             	cmp    $0x10,%esi
   32b0e:	0f 8e d8 05 00 00    	jle    330ec <_svfprintf_r+0x127c>
   32b14:	83 c0 01             	add    $0x1,%eax
   32b17:	83 c1 10             	add    $0x10,%ecx
   32b1a:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   32b20:	83 c7 08             	add    $0x8,%edi
   32b23:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   32b2a:	83 f8 07             	cmp    $0x7,%eax
   32b2d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32b33:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32b39:	7e cd                	jle    32b08 <_svfprintf_r+0xc98>
   32b3b:	8b 45 0c             	mov    0xc(%ebp),%eax
   32b3e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32b42:	89 44 24 04          	mov    %eax,0x4(%esp)
   32b46:	8b 45 08             	mov    0x8(%ebp),%eax
   32b49:	89 04 24             	mov    %eax,(%esp)
   32b4c:	e8 9f 3e 00 00       	call   369f0 <__ssprint_r>
   32b51:	85 c0                	test   %eax,%eax
   32b53:	0f 85 e7 f4 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   32b59:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32b5f:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32b62:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32b68:	eb 9e                	jmp    32b08 <_svfprintf_r+0xc98>
   32b6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32b70:	84 c0                	test   %al,%al
   32b72:	75 2c                	jne    32ba0 <_svfprintf_r+0xd30>
   32b74:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   32b7b:	74 23                	je     32ba0 <_svfprintf_r+0xd30>
   32b7d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
   32b83:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
   32b87:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   32b8d:	8d 45 a7             	lea    -0x59(%ebp),%eax
   32b90:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32b96:	e9 2d f7 ff ff       	jmp    322c8 <_svfprintf_r+0x458>
   32b9b:	90                   	nop
   32b9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32ba0:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32ba3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
   32baa:	00 00 00 
   32bad:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   32bb3:	e9 10 f7 ff ff       	jmp    322c8 <_svfprintf_r+0x458>
   32bb8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
   32bbe:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
   32bc4:	85 f6                	test   %esi,%esi
   32bc6:	0f 8e 26 fc ff ff    	jle    327f2 <_svfprintf_r+0x982>
   32bcc:	83 fe 10             	cmp    $0x10,%esi
   32bcf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32bd5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32bdb:	7f 0b                	jg     32be8 <_svfprintf_r+0xd78>
   32bdd:	eb 65                	jmp    32c44 <_svfprintf_r+0xdd4>
   32bdf:	90                   	nop
   32be0:	83 ee 10             	sub    $0x10,%esi
   32be3:	83 fe 10             	cmp    $0x10,%esi
   32be6:	7e 5c                	jle    32c44 <_svfprintf_r+0xdd4>
   32be8:	83 c0 01             	add    $0x1,%eax
   32beb:	83 c1 10             	add    $0x10,%ecx
   32bee:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   32bf4:	83 c7 08             	add    $0x8,%edi
   32bf7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   32bfe:	83 f8 07             	cmp    $0x7,%eax
   32c01:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32c07:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32c0d:	7e d1                	jle    32be0 <_svfprintf_r+0xd70>
   32c0f:	8b 45 0c             	mov    0xc(%ebp),%eax
   32c12:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32c16:	89 44 24 04          	mov    %eax,0x4(%esp)
   32c1a:	8b 45 08             	mov    0x8(%ebp),%eax
   32c1d:	89 04 24             	mov    %eax,(%esp)
   32c20:	e8 cb 3d 00 00       	call   369f0 <__ssprint_r>
   32c25:	85 c0                	test   %eax,%eax
   32c27:	0f 85 13 f4 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   32c2d:	83 ee 10             	sub    $0x10,%esi
   32c30:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32c36:	83 fe 10             	cmp    $0x10,%esi
   32c39:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32c3f:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32c42:	7f a4                	jg     32be8 <_svfprintf_r+0xd78>
   32c44:	83 c0 01             	add    $0x1,%eax
   32c47:	01 f1                	add    %esi,%ecx
   32c49:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   32c4f:	83 c7 08             	add    $0x8,%edi
   32c52:	89 77 fc             	mov    %esi,-0x4(%edi)
   32c55:	83 f8 07             	cmp    $0x7,%eax
   32c58:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32c5e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32c64:	0f 8e 88 fb ff ff    	jle    327f2 <_svfprintf_r+0x982>
   32c6a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32c70:	89 44 24 08          	mov    %eax,0x8(%esp)
   32c74:	8b 45 0c             	mov    0xc(%ebp),%eax
   32c77:	89 44 24 04          	mov    %eax,0x4(%esp)
   32c7b:	8b 45 08             	mov    0x8(%ebp),%eax
   32c7e:	89 04 24             	mov    %eax,(%esp)
   32c81:	e8 6a 3d 00 00       	call   369f0 <__ssprint_r>
   32c86:	85 c0                	test   %eax,%eax
   32c88:	0f 85 b2 f3 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   32c8e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32c94:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32c97:	e9 56 fb ff ff       	jmp    327f2 <_svfprintf_r+0x982>
   32c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32ca0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
   32ca7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   32cad:	0f 8e df 05 00 00    	jle    33292 <_svfprintf_r+0x1422>
   32cb3:	89 07                	mov    %eax,(%edi)
   32cb5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32cbb:	8d 51 01             	lea    0x1(%ecx),%edx
   32cbe:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
   32cc5:	83 c7 08             	add    $0x8,%edi
   32cc8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   32cce:	83 c0 01             	add    $0x1,%eax
   32cd1:	83 f8 07             	cmp    $0x7,%eax
   32cd4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32cda:	0f 8f 59 06 00 00    	jg     33339 <_svfprintf_r+0x14c9>
   32ce0:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
   32ce6:	83 c0 01             	add    $0x1,%eax
   32ce9:	83 c7 08             	add    $0x8,%edi
   32cec:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32cf2:	89 5f f8             	mov    %ebx,-0x8(%edi)
   32cf5:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
   32cfb:	89 5f fc             	mov    %ebx,-0x4(%edi)
   32cfe:	01 da                	add    %ebx,%edx
   32d00:	83 f8 07             	cmp    $0x7,%eax
   32d03:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   32d09:	0f 8f f2 05 00 00    	jg     33301 <_svfprintf_r+0x1491>
   32d0f:	d9 ee                	fldz   
   32d11:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   32d17:	df e9                	fucomip %st(1),%st
   32d19:	dd d8                	fstp   %st(0)
   32d1b:	7a 06                	jp     32d23 <_svfprintf_r+0xeb3>
   32d1d:	0f 84 33 03 00 00    	je     33056 <_svfprintf_r+0x11e6>
   32d23:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
   32d29:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   32d2f:	83 c1 01             	add    $0x1,%ecx
   32d32:	89 0f                	mov    %ecx,(%edi)
   32d34:	8d 4b ff             	lea    -0x1(%ebx),%ecx
   32d37:	89 4f 04             	mov    %ecx,0x4(%edi)
   32d3a:	01 ca                	add    %ecx,%edx
   32d3c:	83 c0 01             	add    $0x1,%eax
   32d3f:	83 f8 07             	cmp    $0x7,%eax
   32d42:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   32d48:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32d4e:	0f 8f 75 05 00 00    	jg     332c9 <_svfprintf_r+0x1459>
   32d54:	83 c7 08             	add    $0x8,%edi
   32d57:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
   32d5d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
   32d63:	89 0f                	mov    %ecx,(%edi)
   32d65:	89 5f 04             	mov    %ebx,0x4(%edi)
   32d68:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
   32d6b:	83 c0 01             	add    $0x1,%eax
   32d6e:	83 f8 07             	cmp    $0x7,%eax
   32d71:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32d77:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32d7d:	0f 8e 96 fb ff ff    	jle    32919 <_svfprintf_r+0xaa9>
   32d83:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32d89:	89 44 24 08          	mov    %eax,0x8(%esp)
   32d8d:	8b 45 0c             	mov    0xc(%ebp),%eax
   32d90:	89 44 24 04          	mov    %eax,0x4(%esp)
   32d94:	8b 45 08             	mov    0x8(%ebp),%eax
   32d97:	89 04 24             	mov    %eax,(%esp)
   32d9a:	e8 51 3c 00 00       	call   369f0 <__ssprint_r>
   32d9f:	85 c0                	test   %eax,%eax
   32da1:	0f 85 99 f2 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   32da7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32dad:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32db0:	e9 67 fb ff ff       	jmp    3291c <_svfprintf_r+0xaac>
   32db5:	8d 76 00             	lea    0x0(%esi),%esi
   32db8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32dbe:	89 44 24 08          	mov    %eax,0x8(%esp)
   32dc2:	8b 45 0c             	mov    0xc(%ebp),%eax
   32dc5:	89 44 24 04          	mov    %eax,0x4(%esp)
   32dc9:	8b 45 08             	mov    0x8(%ebp),%eax
   32dcc:	89 04 24             	mov    %eax,(%esp)
   32dcf:	e8 1c 3c 00 00       	call   369f0 <__ssprint_r>
   32dd4:	85 c0                	test   %eax,%eax
   32dd6:	0f 84 43 fc ff ff    	je     32a1f <_svfprintf_r+0xbaf>
   32ddc:	e9 5f f2 ff ff       	jmp    32040 <_svfprintf_r+0x1d0>
   32de1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   32de8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32dee:	89 44 24 08          	mov    %eax,0x8(%esp)
   32df2:	8b 45 0c             	mov    0xc(%ebp),%eax
   32df5:	89 44 24 04          	mov    %eax,0x4(%esp)
   32df9:	8b 45 08             	mov    0x8(%ebp),%eax
   32dfc:	89 04 24             	mov    %eax,(%esp)
   32dff:	e8 ec 3b 00 00       	call   369f0 <__ssprint_r>
   32e04:	85 c0                	test   %eax,%eax
   32e06:	0f 85 34 f2 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   32e0c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32e12:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32e15:	e9 c8 f9 ff ff       	jmp    327e2 <_svfprintf_r+0x972>
   32e1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32e20:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   32e26:	89 44 24 08          	mov    %eax,0x8(%esp)
   32e2a:	8b 45 0c             	mov    0xc(%ebp),%eax
   32e2d:	89 44 24 04          	mov    %eax,0x4(%esp)
   32e31:	8b 45 08             	mov    0x8(%ebp),%eax
   32e34:	89 04 24             	mov    %eax,(%esp)
   32e37:	e8 b4 3b 00 00       	call   369f0 <__ssprint_r>
   32e3c:	85 c0                	test   %eax,%eax
   32e3e:	0f 85 fc f1 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   32e44:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32e4a:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32e4d:	e9 53 f9 ff ff       	jmp    327a5 <_svfprintf_r+0x935>
   32e52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32e58:	89 c2                	mov    %eax,%edx
   32e5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32e60:	89 c8                	mov    %ecx,%eax
   32e62:	83 ea 01             	sub    $0x1,%edx
   32e65:	83 e0 07             	and    $0x7,%eax
   32e68:	c1 e9 03             	shr    $0x3,%ecx
   32e6b:	83 c0 30             	add    $0x30,%eax
   32e6e:	85 c9                	test   %ecx,%ecx
   32e70:	88 02                	mov    %al,(%edx)
   32e72:	75 ec                	jne    32e60 <_svfprintf_r+0xff0>
   32e74:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   32e7b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
   32e81:	0f 84 5b 01 00 00    	je     32fe2 <_svfprintf_r+0x1172>
   32e87:	3c 30                	cmp    $0x30,%al
   32e89:	74 0b                	je     32e96 <_svfprintf_r+0x1026>
   32e8b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
   32e92:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
   32e96:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32e99:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
   32e9f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   32ea5:	e9 1e f4 ff ff       	jmp    322c8 <_svfprintf_r+0x458>
   32eaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32eb0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   32eb6:	85 db                	test   %ebx,%ebx
   32eb8:	0f 8e 66 05 00 00    	jle    33424 <_svfprintf_r+0x15b4>
   32ebe:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
   32ec4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
   32eca:	01 d0                	add    %edx,%eax
   32ecc:	89 c3                	mov    %eax,%ebx
   32ece:	29 d3                	sub    %edx,%ebx
   32ed0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
   32ed6:	89 d0                	mov    %edx,%eax
   32ed8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   32ede:	39 d3                	cmp    %edx,%ebx
   32ee0:	0f 4f da             	cmovg  %edx,%ebx
   32ee3:	85 db                	test   %ebx,%ebx
   32ee5:	7e 28                	jle    32f0f <_svfprintf_r+0x109f>
   32ee7:	89 07                	mov    %eax,(%edi)
   32ee9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32eef:	01 d9                	add    %ebx,%ecx
   32ef1:	89 5f 04             	mov    %ebx,0x4(%edi)
   32ef4:	83 c7 08             	add    $0x8,%edi
   32ef7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32efd:	83 c0 01             	add    $0x1,%eax
   32f00:	83 f8 07             	cmp    $0x7,%eax
   32f03:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32f09:	0f 8f 58 09 00 00    	jg     33867 <_svfprintf_r+0x19f7>
   32f0f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
   32f15:	31 c0                	xor    %eax,%eax
   32f17:	85 db                	test   %ebx,%ebx
   32f19:	0f 49 c3             	cmovns %ebx,%eax
   32f1c:	29 c6                	sub    %eax,%esi
   32f1e:	85 f6                	test   %esi,%esi
   32f20:	0f 8e 40 02 00 00    	jle    33166 <_svfprintf_r+0x12f6>
   32f26:	83 fe 10             	cmp    $0x10,%esi
   32f29:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32f2f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   32f35:	7f 15                	jg     32f4c <_svfprintf_r+0x10dc>
   32f37:	e9 db 01 00 00       	jmp    33117 <_svfprintf_r+0x12a7>
   32f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   32f40:	83 ee 10             	sub    $0x10,%esi
   32f43:	83 fe 10             	cmp    $0x10,%esi
   32f46:	0f 8e cb 01 00 00    	jle    33117 <_svfprintf_r+0x12a7>
   32f4c:	83 c0 01             	add    $0x1,%eax
   32f4f:	83 c1 10             	add    $0x10,%ecx
   32f52:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   32f58:	83 c7 08             	add    $0x8,%edi
   32f5b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   32f62:	83 f8 07             	cmp    $0x7,%eax
   32f65:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   32f6b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   32f71:	7e cd                	jle    32f40 <_svfprintf_r+0x10d0>
   32f73:	8b 45 0c             	mov    0xc(%ebp),%eax
   32f76:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   32f7a:	89 44 24 04          	mov    %eax,0x4(%esp)
   32f7e:	8b 45 08             	mov    0x8(%ebp),%eax
   32f81:	89 04 24             	mov    %eax,(%esp)
   32f84:	e8 67 3a 00 00       	call   369f0 <__ssprint_r>
   32f89:	85 c0                	test   %eax,%eax
   32f8b:	0f 85 af f0 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   32f91:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   32f97:	8d 7d a8             	lea    -0x58(%ebp),%edi
   32f9a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   32fa0:	eb 9e                	jmp    32f40 <_svfprintf_r+0x10d0>
   32fa2:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32fa5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
   32faa:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   32fb0:	89 c7                	mov    %eax,%edi
   32fb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32fb8:	89 c8                	mov    %ecx,%eax
   32fba:	83 ef 01             	sub    $0x1,%edi
   32fbd:	f7 e6                	mul    %esi
   32fbf:	c1 ea 03             	shr    $0x3,%edx
   32fc2:	8d 04 92             	lea    (%edx,%edx,4),%eax
   32fc5:	01 c0                	add    %eax,%eax
   32fc7:	29 c1                	sub    %eax,%ecx
   32fc9:	83 c1 30             	add    $0x30,%ecx
   32fcc:	85 d2                	test   %edx,%edx
   32fce:	88 0f                	mov    %cl,(%edi)
   32fd0:	89 d1                	mov    %edx,%ecx
   32fd2:	75 e4                	jne    32fb8 <_svfprintf_r+0x1148>
   32fd4:	89 fa                	mov    %edi,%edx
   32fd6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
   32fdc:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
   32fe2:	8d 45 a8             	lea    -0x58(%ebp),%eax
   32fe5:	29 d0                	sub    %edx,%eax
   32fe7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   32fed:	e9 d6 f2 ff ff       	jmp    322c8 <_svfprintf_r+0x458>
   32ff2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   32ff8:	83 f9 09             	cmp    $0x9,%ecx
   32ffb:	77 a5                	ja     32fa2 <_svfprintf_r+0x1132>
   32ffd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
   33003:	83 c1 30             	add    $0x30,%ecx
   33006:	88 4d a7             	mov    %cl,-0x59(%ebp)
   33009:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   3300f:	8d 45 a7             	lea    -0x59(%ebp),%eax
   33012:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   33018:	e9 ab f2 ff ff       	jmp    322c8 <_svfprintf_r+0x458>
   3301d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33023:	89 44 24 08          	mov    %eax,0x8(%esp)
   33027:	8b 45 0c             	mov    0xc(%ebp),%eax
   3302a:	89 44 24 04          	mov    %eax,0x4(%esp)
   3302e:	8b 45 08             	mov    0x8(%ebp),%eax
   33031:	89 04 24             	mov    %eax,(%esp)
   33034:	e8 b7 39 00 00       	call   369f0 <__ssprint_r>
   33039:	85 c0                	test   %eax,%eax
   3303b:	0f 85 ff ef ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   33041:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   33048:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3304b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   33051:	e9 18 f7 ff ff       	jmp    3276e <_svfprintf_r+0x8fe>
   33056:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   3305c:	8d 73 ff             	lea    -0x1(%ebx),%esi
   3305f:	85 f6                	test   %esi,%esi
   33061:	0f 8e f0 fc ff ff    	jle    32d57 <_svfprintf_r+0xee7>
   33067:	83 fe 10             	cmp    $0x10,%esi
   3306a:	7e 70                	jle    330dc <_svfprintf_r+0x126c>
   3306c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   33072:	eb 0c                	jmp    33080 <_svfprintf_r+0x1210>
   33074:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33078:	83 ee 10             	sub    $0x10,%esi
   3307b:	83 fe 10             	cmp    $0x10,%esi
   3307e:	7e 5c                	jle    330dc <_svfprintf_r+0x126c>
   33080:	83 c0 01             	add    $0x1,%eax
   33083:	83 c2 10             	add    $0x10,%edx
   33086:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   3308c:	83 c7 08             	add    $0x8,%edi
   3308f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   33096:	83 f8 07             	cmp    $0x7,%eax
   33099:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   3309f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   330a5:	7e d1                	jle    33078 <_svfprintf_r+0x1208>
   330a7:	8b 45 0c             	mov    0xc(%ebp),%eax
   330aa:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   330ae:	89 44 24 04          	mov    %eax,0x4(%esp)
   330b2:	8b 45 08             	mov    0x8(%ebp),%eax
   330b5:	89 04 24             	mov    %eax,(%esp)
   330b8:	e8 33 39 00 00       	call   369f0 <__ssprint_r>
   330bd:	85 c0                	test   %eax,%eax
   330bf:	0f 85 7b ef ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   330c5:	83 ee 10             	sub    $0x10,%esi
   330c8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   330ce:	83 fe 10             	cmp    $0x10,%esi
   330d1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   330d7:	8d 7d a8             	lea    -0x58(%ebp),%edi
   330da:	7f a4                	jg     33080 <_svfprintf_r+0x1210>
   330dc:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   330e2:	01 f2                	add    %esi,%edx
   330e4:	89 77 04             	mov    %esi,0x4(%edi)
   330e7:	e9 50 fc ff ff       	jmp    32d3c <_svfprintf_r+0xecc>
   330ec:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   330f2:	01 f1                	add    %esi,%ecx
   330f4:	89 77 04             	mov    %esi,0x4(%edi)
   330f7:	e9 6f fc ff ff       	jmp    32d6b <_svfprintf_r+0xefb>
   330fc:	8b 45 14             	mov    0x14(%ebp),%eax
   330ff:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
   33105:	8b 00                	mov    (%eax),%eax
   33107:	89 10                	mov    %edx,(%eax)
   33109:	8b 45 14             	mov    0x14(%ebp),%eax
   3310c:	83 c0 04             	add    $0x4,%eax
   3310f:	89 45 14             	mov    %eax,0x14(%ebp)
   33112:	e9 f4 ed ff ff       	jmp    31f0b <_svfprintf_r+0x9b>
   33117:	83 c0 01             	add    $0x1,%eax
   3311a:	01 f1                	add    %esi,%ecx
   3311c:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   33122:	83 c7 08             	add    $0x8,%edi
   33125:	89 77 fc             	mov    %esi,-0x4(%edi)
   33128:	83 f8 07             	cmp    $0x7,%eax
   3312b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   33131:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33137:	7e 2d                	jle    33166 <_svfprintf_r+0x12f6>
   33139:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3313f:	89 44 24 08          	mov    %eax,0x8(%esp)
   33143:	8b 45 0c             	mov    0xc(%ebp),%eax
   33146:	89 44 24 04          	mov    %eax,0x4(%esp)
   3314a:	8b 45 08             	mov    0x8(%ebp),%eax
   3314d:	89 04 24             	mov    %eax,(%esp)
   33150:	e8 9b 38 00 00       	call   369f0 <__ssprint_r>
   33155:	85 c0                	test   %eax,%eax
   33157:	0f 85 e3 ee ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   3315d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   33163:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33166:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   3316c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
   33172:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
   33178:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
   3317e:	89 c6                	mov    %eax,%esi
   33180:	7c 0d                	jl     3318f <_svfprintf_r+0x131f>
   33182:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   33189:	0f 84 5e 05 00 00    	je     336ed <_svfprintf_r+0x187d>
   3318f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
   33195:	89 07                	mov    %eax,(%edi)
   33197:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
   3319d:	01 c1                	add    %eax,%ecx
   3319f:	89 47 04             	mov    %eax,0x4(%edi)
   331a2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   331a8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   331ae:	83 c0 01             	add    $0x1,%eax
   331b1:	83 f8 07             	cmp    $0x7,%eax
   331b4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   331ba:	0f 8f d9 06 00 00    	jg     33899 <_svfprintf_r+0x1a29>
   331c0:	83 c7 08             	add    $0x8,%edi
   331c3:	89 d0                	mov    %edx,%eax
   331c5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
   331cb:	89 f2                	mov    %esi,%edx
   331cd:	29 f3                	sub    %esi,%ebx
   331cf:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
   331d5:	29 c6                	sub    %eax,%esi
   331d7:	39 de                	cmp    %ebx,%esi
   331d9:	0f 4e de             	cmovle %esi,%ebx
   331dc:	85 db                	test   %ebx,%ebx
   331de:	7e 29                	jle    33209 <_svfprintf_r+0x1399>
   331e0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   331e6:	01 d9                	add    %ebx,%ecx
   331e8:	83 c7 08             	add    $0x8,%edi
   331eb:	89 57 f8             	mov    %edx,-0x8(%edi)
   331ee:	89 5f fc             	mov    %ebx,-0x4(%edi)
   331f1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   331f7:	83 c0 01             	add    $0x1,%eax
   331fa:	83 f8 07             	cmp    $0x7,%eax
   331fd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33203:	0f 8f c8 06 00 00    	jg     338d1 <_svfprintf_r+0x1a61>
   33209:	31 c0                	xor    %eax,%eax
   3320b:	85 db                	test   %ebx,%ebx
   3320d:	0f 49 c3             	cmovns %ebx,%eax
   33210:	29 c6                	sub    %eax,%esi
   33212:	85 f6                	test   %esi,%esi
   33214:	0f 8e 02 f7 ff ff    	jle    3291c <_svfprintf_r+0xaac>
   3321a:	83 fe 10             	cmp    $0x10,%esi
   3321d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33223:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   33229:	7f 11                	jg     3323c <_svfprintf_r+0x13cc>
   3322b:	e9 bc fe ff ff       	jmp    330ec <_svfprintf_r+0x127c>
   33230:	83 ee 10             	sub    $0x10,%esi
   33233:	83 fe 10             	cmp    $0x10,%esi
   33236:	0f 8e b0 fe ff ff    	jle    330ec <_svfprintf_r+0x127c>
   3323c:	83 c0 01             	add    $0x1,%eax
   3323f:	83 c1 10             	add    $0x10,%ecx
   33242:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   33248:	83 c7 08             	add    $0x8,%edi
   3324b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   33252:	83 f8 07             	cmp    $0x7,%eax
   33255:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   3325b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33261:	7e cd                	jle    33230 <_svfprintf_r+0x13c0>
   33263:	8b 45 0c             	mov    0xc(%ebp),%eax
   33266:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   3326a:	89 44 24 04          	mov    %eax,0x4(%esp)
   3326e:	8b 45 08             	mov    0x8(%ebp),%eax
   33271:	89 04 24             	mov    %eax,(%esp)
   33274:	e8 77 37 00 00       	call   369f0 <__ssprint_r>
   33279:	85 c0                	test   %eax,%eax
   3327b:	0f 85 bf ed ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   33281:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   33287:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3328a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33290:	eb 9e                	jmp    33230 <_svfprintf_r+0x13c0>
   33292:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   33299:	0f 85 14 fa ff ff    	jne    32cb3 <_svfprintf_r+0xe43>
   3329f:	89 07                	mov    %eax,(%edi)
   332a1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   332a7:	8d 51 01             	lea    0x1(%ecx),%edx
   332aa:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
   332b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   332b7:	83 c0 01             	add    $0x1,%eax
   332ba:	83 f8 07             	cmp    $0x7,%eax
   332bd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   332c3:	0f 8e 8b fa ff ff    	jle    32d54 <_svfprintf_r+0xee4>
   332c9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   332cf:	89 44 24 08          	mov    %eax,0x8(%esp)
   332d3:	8b 45 0c             	mov    0xc(%ebp),%eax
   332d6:	89 44 24 04          	mov    %eax,0x4(%esp)
   332da:	8b 45 08             	mov    0x8(%ebp),%eax
   332dd:	89 04 24             	mov    %eax,(%esp)
   332e0:	e8 0b 37 00 00       	call   369f0 <__ssprint_r>
   332e5:	85 c0                	test   %eax,%eax
   332e7:	0f 85 53 ed ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   332ed:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   332f3:	8d 7d a8             	lea    -0x58(%ebp),%edi
   332f6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   332fc:	e9 56 fa ff ff       	jmp    32d57 <_svfprintf_r+0xee7>
   33301:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33307:	89 44 24 08          	mov    %eax,0x8(%esp)
   3330b:	8b 45 0c             	mov    0xc(%ebp),%eax
   3330e:	89 44 24 04          	mov    %eax,0x4(%esp)
   33312:	8b 45 08             	mov    0x8(%ebp),%eax
   33315:	89 04 24             	mov    %eax,(%esp)
   33318:	e8 d3 36 00 00       	call   369f0 <__ssprint_r>
   3331d:	85 c0                	test   %eax,%eax
   3331f:	0f 85 1b ed ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   33325:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3332b:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3332e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33334:	e9 d6 f9 ff ff       	jmp    32d0f <_svfprintf_r+0xe9f>
   33339:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3333f:	89 44 24 08          	mov    %eax,0x8(%esp)
   33343:	8b 45 0c             	mov    0xc(%ebp),%eax
   33346:	89 44 24 04          	mov    %eax,0x4(%esp)
   3334a:	8b 45 08             	mov    0x8(%ebp),%eax
   3334d:	89 04 24             	mov    %eax,(%esp)
   33350:	e8 9b 36 00 00       	call   369f0 <__ssprint_r>
   33355:	85 c0                	test   %eax,%eax
   33357:	0f 85 e3 ec ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   3335d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   33363:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33366:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3336c:	e9 6f f9 ff ff       	jmp    32ce0 <_svfprintf_r+0xe70>
   33371:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   33377:	dd 1c 24             	fstpl  (%esp)
   3337a:	e8 11 35 00 00       	call   36890 <__fpclassifyd>
   3337f:	85 c0                	test   %eax,%eax
   33381:	0f 85 a3 01 00 00    	jne    3352a <_svfprintf_r+0x16ba>
   33387:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
   3338e:	ba ce 98 03 00       	mov    $0x398ce,%edx
   33393:	b8 d2 98 03 00       	mov    $0x398d2,%eax
   33398:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   3339f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
   333a6:	00 00 00 
   333a9:	0f 4e c2             	cmovle %edx,%eax
   333ac:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   333b2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
   333b9:	ff ff ff 
   333bc:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
   333c3:	00 00 00 
   333c6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   333cd:	00 00 00 
   333d0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   333d7:	00 00 00 
   333da:	e9 29 ed ff ff       	jmp    32108 <_svfprintf_r+0x298>
   333df:	dd 00                	fldl   (%eax)
   333e1:	83 c0 08             	add    $0x8,%eax
   333e4:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
   333ea:	89 45 14             	mov    %eax,0x14(%ebp)
   333ed:	e9 e6 ef ff ff       	jmp    323d8 <_svfprintf_r+0x568>
   333f2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   333f8:	89 44 24 08          	mov    %eax,0x8(%esp)
   333fc:	8b 45 0c             	mov    0xc(%ebp),%eax
   333ff:	89 44 24 04          	mov    %eax,0x4(%esp)
   33403:	8b 45 08             	mov    0x8(%ebp),%eax
   33406:	89 04 24             	mov    %eax,(%esp)
   33409:	e8 e2 35 00 00       	call   369f0 <__ssprint_r>
   3340e:	85 c0                	test   %eax,%eax
   33410:	0f 85 2a ec ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   33416:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   3341c:	8d 7d a8             	lea    -0x58(%ebp),%edi
   3341f:	e9 6b f6 ff ff       	jmp    32a8f <_svfprintf_r+0xc1f>
   33424:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3342a:	83 c1 01             	add    $0x1,%ecx
   3342d:	83 c7 08             	add    $0x8,%edi
   33430:	c7 47 f8 ff 98 03 00 	movl   $0x398ff,-0x8(%edi)
   33437:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
   3343e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
   33444:	83 c0 01             	add    $0x1,%eax
   33447:	83 f8 07             	cmp    $0x7,%eax
   3344a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   33450:	0f 8f ef 02 00 00    	jg     33745 <_svfprintf_r+0x18d5>
   33456:	85 db                	test   %ebx,%ebx
   33458:	75 17                	jne    33471 <_svfprintf_r+0x1601>
   3345a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
   33460:	85 d2                	test   %edx,%edx
   33462:	75 0d                	jne    33471 <_svfprintf_r+0x1601>
   33464:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   3346b:	0f 84 ab f4 ff ff    	je     3291c <_svfprintf_r+0xaac>
   33471:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
   33477:	83 c7 08             	add    $0x8,%edi
   3347a:	89 47 f8             	mov    %eax,-0x8(%edi)
   3347d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
   33483:	89 47 fc             	mov    %eax,-0x4(%edi)
   33486:	8d 14 01             	lea    (%ecx,%eax,1),%edx
   33489:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3348f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   33495:	83 c0 01             	add    $0x1,%eax
   33498:	83 f8 07             	cmp    $0x7,%eax
   3349b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   334a1:	0f 8f 60 03 00 00    	jg     33807 <_svfprintf_r+0x1997>
   334a7:	f7 db                	neg    %ebx
   334a9:	85 db                	test   %ebx,%ebx
   334ab:	0f 8e 21 03 00 00    	jle    337d2 <_svfprintf_r+0x1962>
   334b1:	83 fb 10             	cmp    $0x10,%ebx
   334b4:	0f 8e c3 02 00 00    	jle    3377d <_svfprintf_r+0x190d>
   334ba:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
   334c0:	eb 12                	jmp    334d4 <_svfprintf_r+0x1664>
   334c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   334c8:	83 eb 10             	sub    $0x10,%ebx
   334cb:	83 fb 10             	cmp    $0x10,%ebx
   334ce:	0f 8e a9 02 00 00    	jle    3377d <_svfprintf_r+0x190d>
   334d4:	83 c0 01             	add    $0x1,%eax
   334d7:	83 c2 10             	add    $0x10,%edx
   334da:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   334e0:	83 c7 08             	add    $0x8,%edi
   334e3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
   334ea:	83 f8 07             	cmp    $0x7,%eax
   334ed:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   334f3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   334f9:	7e cd                	jle    334c8 <_svfprintf_r+0x1658>
   334fb:	8b 45 0c             	mov    0xc(%ebp),%eax
   334fe:	89 74 24 08          	mov    %esi,0x8(%esp)
   33502:	89 44 24 04          	mov    %eax,0x4(%esp)
   33506:	8b 45 08             	mov    0x8(%ebp),%eax
   33509:	89 04 24             	mov    %eax,(%esp)
   3350c:	e8 df 34 00 00       	call   369f0 <__ssprint_r>
   33511:	85 c0                	test   %eax,%eax
   33513:	0f 85 27 eb ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   33519:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3351f:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33522:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33528:	eb 9e                	jmp    334c8 <_svfprintf_r+0x1658>
   3352a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
   33530:	83 e3 df             	and    $0xffffffdf,%ebx
   33533:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
   3353a:	0f 84 05 03 00 00    	je     33845 <_svfprintf_r+0x19d5>
   33540:	83 fb 47             	cmp    $0x47,%ebx
   33543:	75 16                	jne    3355b <_svfprintf_r+0x16eb>
   33545:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   3354b:	b8 01 00 00 00       	mov    $0x1,%eax
   33550:	85 d2                	test   %edx,%edx
   33552:	0f 45 c2             	cmovne %edx,%eax
   33555:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
   3355b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
   33561:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
   33567:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
   3356d:	80 cc 01             	or     $0x1,%ah
   33570:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
   33576:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
   3357c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
   33583:	85 c0                	test   %eax,%eax
   33585:	0f 88 ba 05 00 00    	js     33b45 <_svfprintf_r+0x1cd5>
   3358b:	83 fb 46             	cmp    $0x46,%ebx
   3358e:	0f 94 c0             	sete   %al
   33591:	89 c6                	mov    %eax,%esi
   33593:	0f 84 d4 03 00 00    	je     3396d <_svfprintf_r+0x1afd>
   33599:	83 fb 45             	cmp    $0x45,%ebx
   3359c:	0f 85 99 05 00 00    	jne    33b3b <_svfprintf_r+0x1ccb>
   335a2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   335a8:	dd 54 24 04          	fstl   0x4(%esp)
   335ac:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
   335b3:	00 
   335b4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
   335ba:	8d 70 01             	lea    0x1(%eax),%esi
   335bd:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
   335c3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
   335c7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
   335cd:	89 44 24 18          	mov    %eax,0x18(%esp)
   335d1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
   335d7:	89 44 24 14          	mov    %eax,0x14(%esp)
   335db:	8b 45 08             	mov    0x8(%ebp),%eax
   335de:	89 74 24 10          	mov    %esi,0x10(%esp)
   335e2:	89 04 24             	mov    %eax,(%esp)
   335e5:	e8 56 09 00 00       	call   33f40 <_dtoa_r>
   335ea:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   335f0:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
   335f3:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
   335f9:	d9 ee                	fldz   
   335fb:	d9 c9                	fxch   %st(1)
   335fd:	df e9                	fucomip %st(1),%st
   335ff:	dd d8                	fstp   %st(0)
   33601:	0f 8a fd 00 00 00    	jp     33704 <_svfprintf_r+0x1894>
   33607:	89 c8                	mov    %ecx,%eax
   33609:	0f 85 f5 00 00 00    	jne    33704 <_svfprintf_r+0x1894>
   3360f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
   33615:	83 fb 47             	cmp    $0x47,%ebx
   33618:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
   3361e:	0f 84 1e 04 00 00    	je     33a42 <_svfprintf_r+0x1bd2>
   33624:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
   3362b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   33631:	0f 8e 65 04 00 00    	jle    33a9c <_svfprintf_r+0x1c2c>
   33637:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
   3363e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
   33644:	0f 84 3c 05 00 00    	je     33b86 <_svfprintf_r+0x1d16>
   3364a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
   33650:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
   33656:	0f 8f f7 04 00 00    	jg     33b53 <_svfprintf_r+0x1ce3>
   3365c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
   33662:	83 e0 01             	and    $0x1,%eax
   33665:	0f 85 e2 05 00 00    	jne    33c4d <_svfprintf_r+0x1ddd>
   3366b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   33671:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
   33678:	00 00 00 
   3367b:	85 d2                	test   %edx,%edx
   3367d:	0f 49 c2             	cmovns %edx,%eax
   33680:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33686:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
   3368d:	0f 85 68 03 00 00    	jne    339fb <_svfprintf_r+0x1b8b>
   33693:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   33699:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
   3369f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   336a6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   336ad:	00 00 00 
   336b0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
   336b6:	e9 4d ea ff ff       	jmp    32108 <_svfprintf_r+0x298>
   336bb:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   336c1:	89 44 24 08          	mov    %eax,0x8(%esp)
   336c5:	8b 45 0c             	mov    0xc(%ebp),%eax
   336c8:	89 44 24 04          	mov    %eax,0x4(%esp)
   336cc:	8b 45 08             	mov    0x8(%ebp),%eax
   336cf:	89 04 24             	mov    %eax,(%esp)
   336d2:	e8 19 33 00 00       	call   369f0 <__ssprint_r>
   336d7:	85 c0                	test   %eax,%eax
   336d9:	0f 85 61 e9 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   336df:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   336e5:	8d 7d a8             	lea    -0x58(%ebp),%edi
   336e8:	e9 f2 f3 ff ff       	jmp    32adf <_svfprintf_r+0xc6f>
   336ed:	89 d0                	mov    %edx,%eax
   336ef:	e9 d1 fa ff ff       	jmp    331c5 <_svfprintf_r+0x1355>
   336f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   336f8:	8d 50 01             	lea    0x1(%eax),%edx
   336fb:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
   33701:	c6 00 30             	movb   $0x30,(%eax)
   33704:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
   3370a:	39 c1                	cmp    %eax,%ecx
   3370c:	77 ea                	ja     336f8 <_svfprintf_r+0x1888>
   3370e:	e9 fc fe ff ff       	jmp    3360f <_svfprintf_r+0x179f>
   33713:	8b 45 08             	mov    0x8(%ebp),%eax
   33716:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
   3371d:	00 
   3371e:	89 04 24             	mov    %eax,(%esp)
   33721:	e8 4a 1b 00 00       	call   35270 <_malloc_r>
   33726:	8b 55 0c             	mov    0xc(%ebp),%edx
   33729:	85 c0                	test   %eax,%eax
   3372b:	89 02                	mov    %eax,(%edx)
   3372d:	89 42 10             	mov    %eax,0x10(%edx)
   33730:	0f 84 15 06 00 00    	je     33d4b <_svfprintf_r+0x1edb>
   33736:	8b 45 0c             	mov    0xc(%ebp),%eax
   33739:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
   33740:	e9 6c e7 ff ff       	jmp    31eb1 <_svfprintf_r+0x41>
   33745:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3374b:	89 44 24 08          	mov    %eax,0x8(%esp)
   3374f:	8b 45 0c             	mov    0xc(%ebp),%eax
   33752:	89 44 24 04          	mov    %eax,0x4(%esp)
   33756:	8b 45 08             	mov    0x8(%ebp),%eax
   33759:	89 04 24             	mov    %eax,(%esp)
   3375c:	e8 8f 32 00 00       	call   369f0 <__ssprint_r>
   33761:	85 c0                	test   %eax,%eax
   33763:	0f 85 d7 e8 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   33769:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   3376f:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33772:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   33778:	e9 d9 fc ff ff       	jmp    33456 <_svfprintf_r+0x15e6>
   3377d:	83 c0 01             	add    $0x1,%eax
   33780:	01 da                	add    %ebx,%edx
   33782:	c7 07 68 9a 03 00    	movl   $0x39a68,(%edi)
   33788:	83 c7 08             	add    $0x8,%edi
   3378b:	89 5f fc             	mov    %ebx,-0x4(%edi)
   3378e:	83 f8 07             	cmp    $0x7,%eax
   33791:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   33797:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3379d:	7e 33                	jle    337d2 <_svfprintf_r+0x1962>
   3379f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   337a5:	89 44 24 08          	mov    %eax,0x8(%esp)
   337a9:	8b 45 0c             	mov    0xc(%ebp),%eax
   337ac:	89 44 24 04          	mov    %eax,0x4(%esp)
   337b0:	8b 45 08             	mov    0x8(%ebp),%eax
   337b3:	89 04 24             	mov    %eax,(%esp)
   337b6:	e8 35 32 00 00       	call   369f0 <__ssprint_r>
   337bb:	85 c0                	test   %eax,%eax
   337bd:	0f 85 7d e8 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   337c3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   337c9:	8d 7d a8             	lea    -0x58(%ebp),%edi
   337cc:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   337d2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
   337d8:	83 c0 01             	add    $0x1,%eax
   337db:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   337e1:	89 1f                	mov    %ebx,(%edi)
   337e3:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   337e9:	01 da                	add    %ebx,%edx
   337eb:	83 f8 07             	cmp    $0x7,%eax
   337ee:	89 5f 04             	mov    %ebx,0x4(%edi)
   337f1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   337f7:	0f 8f 86 f5 ff ff    	jg     32d83 <_svfprintf_r+0xf13>
   337fd:	83 c7 08             	add    $0x8,%edi
   33800:	89 d1                	mov    %edx,%ecx
   33802:	e9 15 f1 ff ff       	jmp    3291c <_svfprintf_r+0xaac>
   33807:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3380d:	89 44 24 08          	mov    %eax,0x8(%esp)
   33811:	8b 45 0c             	mov    0xc(%ebp),%eax
   33814:	89 44 24 04          	mov    %eax,0x4(%esp)
   33818:	8b 45 08             	mov    0x8(%ebp),%eax
   3381b:	89 04 24             	mov    %eax,(%esp)
   3381e:	e8 cd 31 00 00       	call   369f0 <__ssprint_r>
   33823:	85 c0                	test   %eax,%eax
   33825:	0f 85 15 e8 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   3382b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   33831:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33834:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3383a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   33840:	e9 62 fc ff ff       	jmp    334a7 <_svfprintf_r+0x1637>
   33845:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
   3384c:	00 00 00 
   3384f:	e9 07 fd ff ff       	jmp    3355b <_svfprintf_r+0x16eb>
   33854:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   3385a:	89 04 24             	mov    %eax,(%esp)
   3385d:	e8 0e 31 00 00       	call   36970 <strlen>
   33862:	e9 6a e8 ff ff       	jmp    320d1 <_svfprintf_r+0x261>
   33867:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3386d:	89 44 24 08          	mov    %eax,0x8(%esp)
   33871:	8b 45 0c             	mov    0xc(%ebp),%eax
   33874:	89 44 24 04          	mov    %eax,0x4(%esp)
   33878:	8b 45 08             	mov    0x8(%ebp),%eax
   3387b:	89 04 24             	mov    %eax,(%esp)
   3387e:	e8 6d 31 00 00       	call   369f0 <__ssprint_r>
   33883:	85 c0                	test   %eax,%eax
   33885:	0f 85 b5 e7 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   3388b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   33891:	8d 7d a8             	lea    -0x58(%ebp),%edi
   33894:	e9 76 f6 ff ff       	jmp    32f0f <_svfprintf_r+0x109f>
   33899:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3389f:	89 44 24 08          	mov    %eax,0x8(%esp)
   338a3:	8b 45 0c             	mov    0xc(%ebp),%eax
   338a6:	89 44 24 04          	mov    %eax,0x4(%esp)
   338aa:	8b 45 08             	mov    0x8(%ebp),%eax
   338ad:	89 04 24             	mov    %eax,(%esp)
   338b0:	e8 3b 31 00 00       	call   369f0 <__ssprint_r>
   338b5:	85 c0                	test   %eax,%eax
   338b7:	0f 85 83 e7 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   338bd:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   338c3:	8d 7d a8             	lea    -0x58(%ebp),%edi
   338c6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   338cc:	e9 f4 f8 ff ff       	jmp    331c5 <_svfprintf_r+0x1355>
   338d1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   338d7:	89 44 24 08          	mov    %eax,0x8(%esp)
   338db:	8b 45 0c             	mov    0xc(%ebp),%eax
   338de:	89 44 24 04          	mov    %eax,0x4(%esp)
   338e2:	8b 45 08             	mov    0x8(%ebp),%eax
   338e5:	89 04 24             	mov    %eax,(%esp)
   338e8:	e8 03 31 00 00       	call   369f0 <__ssprint_r>
   338ed:	85 c0                	test   %eax,%eax
   338ef:	0f 85 4b e7 ff ff    	jne    32040 <_svfprintf_r+0x1d0>
   338f5:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
   338fb:	8d 7d a8             	lea    -0x58(%ebp),%edi
   338fe:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
   33904:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
   3390a:	e9 fa f8 ff ff       	jmp    33209 <_svfprintf_r+0x1399>
   3390f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   33915:	b0 06                	mov    $0x6,%al
   33917:	89 75 14             	mov    %esi,0x14(%ebp)
   3391a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   33921:	00 00 00 
   33924:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   3392b:	00 00 00 
   3392e:	83 fa 06             	cmp    $0x6,%edx
   33931:	0f 46 c2             	cmovbe %edx,%eax
   33934:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
   3393a:	85 c0                	test   %eax,%eax
   3393c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   33942:	c7 85 28 ff ff ff f8 	movl   $0x398f8,-0xd8(%ebp)
   33949:	98 03 00 
   3394c:	0f 49 d0             	cmovns %eax,%edx
   3394f:	31 db                	xor    %ebx,%ebx
   33951:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
   33957:	e9 b7 e7 ff ff       	jmp    32113 <_svfprintf_r+0x2a3>
   3395c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
   33963:	bb 2d 00 00 00       	mov    $0x2d,%ebx
   33968:	e9 9d ea ff ff       	jmp    3240a <_svfprintf_r+0x59a>
   3396d:	ba 03 00 00 00       	mov    $0x3,%edx
   33972:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
   33978:	89 44 24 1c          	mov    %eax,0x1c(%esp)
   3397c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
   33982:	89 44 24 18          	mov    %eax,0x18(%esp)
   33986:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
   3398c:	89 44 24 14          	mov    %eax,0x14(%esp)
   33990:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   33996:	dd 54 24 04          	fstl   0x4(%esp)
   3399a:	89 54 24 0c          	mov    %edx,0xc(%esp)
   3399e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
   339a4:	89 44 24 10          	mov    %eax,0x10(%esp)
   339a8:	8b 45 08             	mov    0x8(%ebp),%eax
   339ab:	89 04 24             	mov    %eax,(%esp)
   339ae:	e8 8d 05 00 00       	call   33f40 <_dtoa_r>
   339b3:	83 fb 47             	cmp    $0x47,%ebx
   339b6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
   339bc:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
   339c2:	75 09                	jne    339cd <_svfprintf_r+0x1b5d>
   339c4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   339cb:	74 5b                	je     33a28 <_svfprintf_r+0x1bb8>
   339cd:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
   339d3:	89 f0                	mov    %esi,%eax
   339d5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
   339db:	01 d1                	add    %edx,%ecx
   339dd:	84 c0                	test   %al,%al
   339df:	0f 84 14 fc ff ff    	je     335f9 <_svfprintf_r+0x1789>
   339e5:	80 3a 30             	cmpb   $0x30,(%edx)
   339e8:	0f 84 37 02 00 00    	je     33c25 <_svfprintf_r+0x1db5>
   339ee:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   339f4:	01 c1                	add    %eax,%ecx
   339f6:	e9 fe fb ff ff       	jmp    335f9 <_svfprintf_r+0x1789>
   339fb:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   33a01:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
   33a07:	bb 2d 00 00 00       	mov    $0x2d,%ebx
   33a0c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
   33a13:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   33a1a:	00 00 00 
   33a1d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
   33a23:	e9 e4 e6 ff ff       	jmp    3210c <_svfprintf_r+0x29c>
   33a28:	dd d8                	fstp   %st(0)
   33a2a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
   33a30:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
   33a36:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
   33a3c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
   33a42:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   33a48:	83 f8 fd             	cmp    $0xfffffffd,%eax
   33a4b:	7c 48                	jl     33a95 <_svfprintf_r+0x1c25>
   33a4d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
   33a53:	7c 40                	jl     33a95 <_svfprintf_r+0x1c25>
   33a55:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
   33a5b:	e9 ea fb ff ff       	jmp    3364a <_svfprintf_r+0x17da>
   33a60:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   33a66:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
   33a6d:	89 75 14             	mov    %esi,0x14(%ebp)
   33a70:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   33a77:	00 00 00 
   33a7a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
   33a80:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   33a86:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   33a8d:	00 00 00 
   33a90:	e9 73 e6 ff ff       	jmp    32108 <_svfprintf_r+0x298>
   33a95:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
   33a9c:	8d 48 ff             	lea    -0x1(%eax),%ecx
   33a9f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
   33aa6:	85 c9                	test   %ecx,%ecx
   33aa8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
   33aae:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
   33ab4:	0f 88 2c 02 00 00    	js     33ce6 <_svfprintf_r+0x1e76>
   33aba:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
   33ac1:	83 f9 09             	cmp    $0x9,%ecx
   33ac4:	0f 8f ea 00 00 00    	jg     33bb4 <_svfprintf_r+0x1d44>
   33aca:	83 c1 30             	add    $0x30,%ecx
   33acd:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
   33ad4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
   33ada:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
   33ae0:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
   33ae6:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
   33aec:	29 d0                	sub    %edx,%eax
   33aee:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
   33af4:	89 da                	mov    %ebx,%edx
   33af6:	01 c2                	add    %eax,%edx
   33af8:	83 fb 01             	cmp    $0x1,%ebx
   33afb:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33b01:	0f 8e 21 02 00 00    	jle    33d28 <_svfprintf_r+0x1eb8>
   33b07:	31 c0                	xor    %eax,%eax
   33b09:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
   33b10:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
   33b17:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   33b1e:	00 00 00 
   33b21:	e9 60 fb ff ff       	jmp    33686 <_svfprintf_r+0x1816>
   33b26:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   33b2c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   33b33:	00 00 00 
   33b36:	e9 68 e4 ff ff       	jmp    31fa3 <_svfprintf_r+0x133>
   33b3b:	ba 02 00 00 00       	mov    $0x2,%edx
   33b40:	e9 2d fe ff ff       	jmp    33972 <_svfprintf_r+0x1b02>
   33b45:	d9 e0                	fchs   
   33b47:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
   33b4e:	e9 38 fa ff ff       	jmp    3358b <_svfprintf_r+0x171b>
   33b53:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
   33b59:	ba 01 00 00 00       	mov    $0x1,%edx
   33b5e:	85 c9                	test   %ecx,%ecx
   33b60:	0f 8e 5a 01 00 00    	jle    33cc0 <_svfprintf_r+0x1e50>
   33b66:	31 c0                	xor    %eax,%eax
   33b68:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
   33b6e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
   33b75:	00 00 00 
   33b78:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33b7e:	0f 49 c2             	cmovns %edx,%eax
   33b81:	e9 00 fb ff ff       	jmp    33686 <_svfprintf_r+0x1816>
   33b86:	85 c0                	test   %eax,%eax
   33b88:	0f 8e 06 01 00 00    	jle    33c94 <_svfprintf_r+0x1e24>
   33b8e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
   33b94:	85 f6                	test   %esi,%esi
   33b96:	0f 85 d4 00 00 00    	jne    33c70 <_svfprintf_r+0x1e00>
   33b9c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   33ba3:	0f 85 c7 00 00 00    	jne    33c70 <_svfprintf_r+0x1e00>
   33ba9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   33baf:	e9 d2 fa ff ff       	jmp    33686 <_svfprintf_r+0x1816>
   33bb4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
   33bba:	89 f3                	mov    %esi,%ebx
   33bbc:	b8 67 66 66 66       	mov    $0x66666667,%eax
   33bc1:	83 eb 01             	sub    $0x1,%ebx
   33bc4:	f7 e9                	imul   %ecx
   33bc6:	89 c8                	mov    %ecx,%eax
   33bc8:	c1 f8 1f             	sar    $0x1f,%eax
   33bcb:	c1 fa 02             	sar    $0x2,%edx
   33bce:	29 c2                	sub    %eax,%edx
   33bd0:	8d 04 92             	lea    (%edx,%edx,4),%eax
   33bd3:	01 c0                	add    %eax,%eax
   33bd5:	29 c1                	sub    %eax,%ecx
   33bd7:	83 fa 09             	cmp    $0x9,%edx
   33bda:	8d 41 30             	lea    0x30(%ecx),%eax
   33bdd:	89 d1                	mov    %edx,%ecx
   33bdf:	88 03                	mov    %al,(%ebx)
   33be1:	7f d9                	jg     33bbc <_svfprintf_r+0x1d4c>
   33be3:	8d 43 ff             	lea    -0x1(%ebx),%eax
   33be6:	83 c1 30             	add    $0x30,%ecx
   33be9:	39 f0                	cmp    %esi,%eax
   33beb:	88 4b ff             	mov    %cl,-0x1(%ebx)
   33bee:	0f 83 6a 01 00 00    	jae    33d5e <_svfprintf_r+0x1eee>
   33bf4:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
   33bfa:	eb 07                	jmp    33c03 <_svfprintf_r+0x1d93>
   33bfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33c00:	0f b6 08             	movzbl (%eax),%ecx
   33c03:	83 c0 01             	add    $0x1,%eax
   33c06:	83 c2 01             	add    $0x1,%edx
   33c09:	39 f0                	cmp    %esi,%eax
   33c0b:	88 4a ff             	mov    %cl,-0x1(%edx)
   33c0e:	75 f0                	jne    33c00 <_svfprintf_r+0x1d90>
   33c10:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   33c16:	29 d8                	sub    %ebx,%eax
   33c18:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
   33c1e:	01 d0                	add    %edx,%eax
   33c20:	e9 bb fe ff ff       	jmp    33ae0 <_svfprintf_r+0x1c70>
   33c25:	d9 ee                	fldz   
   33c27:	d9 c9                	fxch   %st(1)
   33c29:	db e9                	fucomi %st(1),%st
   33c2b:	dd d9                	fstp   %st(1)
   33c2d:	7a 06                	jp     33c35 <_svfprintf_r+0x1dc5>
   33c2f:	0f 84 b9 fd ff ff    	je     339ee <_svfprintf_r+0x1b7e>
   33c35:	b8 01 00 00 00       	mov    $0x1,%eax
   33c3a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
   33c40:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
   33c46:	01 c1                	add    %eax,%ecx
   33c48:	e9 ac f9 ff ff       	jmp    335f9 <_svfprintf_r+0x1789>
   33c4d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   33c53:	31 c0                	xor    %eax,%eax
   33c55:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
   33c5c:	00 00 00 
   33c5f:	83 c2 01             	add    $0x1,%edx
   33c62:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33c68:	0f 49 c2             	cmovns %edx,%eax
   33c6b:	e9 16 fa ff ff       	jmp    33686 <_svfprintf_r+0x1816>
   33c70:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
   33c76:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
   33c7c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
   33c80:	89 c2                	mov    %eax,%edx
   33c82:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
   33c88:	31 c0                	xor    %eax,%eax
   33c8a:	85 d2                	test   %edx,%edx
   33c8c:	0f 49 c2             	cmovns %edx,%eax
   33c8f:	e9 f2 f9 ff ff       	jmp    33686 <_svfprintf_r+0x1816>
   33c94:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
   33c9a:	85 db                	test   %ebx,%ebx
   33c9c:	75 2f                	jne    33ccd <_svfprintf_r+0x1e5d>
   33c9e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
   33ca5:	75 26                	jne    33ccd <_svfprintf_r+0x1e5d>
   33ca7:	b8 01 00 00 00       	mov    $0x1,%eax
   33cac:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
   33cb3:	00 00 00 
   33cb6:	e9 cb f9 ff ff       	jmp    33686 <_svfprintf_r+0x1816>
   33cbb:	90                   	nop
   33cbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33cc0:	b2 02                	mov    $0x2,%dl
   33cc2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
   33cc8:	e9 99 fe ff ff       	jmp    33b66 <_svfprintf_r+0x1cf6>
   33ccd:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   33cd3:	31 c0                	xor    %eax,%eax
   33cd5:	83 c2 02             	add    $0x2,%edx
   33cd8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
   33cde:	0f 49 c2             	cmovns %edx,%eax
   33ce1:	e9 a0 f9 ff ff       	jmp    33686 <_svfprintf_r+0x1816>
   33ce6:	f7 d9                	neg    %ecx
   33ce8:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
   33cef:	e9 cd fd ff ff       	jmp    33ac1 <_svfprintf_r+0x1c51>
   33cf4:	8b 55 14             	mov    0x14(%ebp),%edx
   33cf7:	8b 45 14             	mov    0x14(%ebp),%eax
   33cfa:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
   33d00:	8b 12                	mov    (%edx),%edx
   33d02:	83 c0 04             	add    $0x4,%eax
   33d05:	89 45 14             	mov    %eax,0x14(%ebp)
   33d08:	85 d2                	test   %edx,%edx
   33d0a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
   33d10:	0f 89 a9 e2 ff ff    	jns    31fbf <_svfprintf_r+0x14f>
   33d16:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
   33d1d:	ff ff ff 
   33d20:	89 c8                	mov    %ecx,%eax
   33d22:	e9 76 e2 ff ff       	jmp    31f9d <_svfprintf_r+0x12d>
   33d27:	90                   	nop
   33d28:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
   33d2e:	83 e0 01             	and    $0x1,%eax
   33d31:	0f 85 d0 fd ff ff    	jne    33b07 <_svfprintf_r+0x1c97>
   33d37:	85 d2                	test   %edx,%edx
   33d39:	0f 49 c2             	cmovns %edx,%eax
   33d3c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
   33d43:	00 00 00 
   33d46:	e9 3b f9 ff ff       	jmp    33686 <_svfprintf_r+0x1816>
   33d4b:	8b 45 08             	mov    0x8(%ebp),%eax
   33d4e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   33d54:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   33d59:	e9 f5 e2 ff ff       	jmp    32053 <_svfprintf_r+0x1e3>
   33d5e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
   33d64:	e9 77 fd ff ff       	jmp    33ae0 <_svfprintf_r+0x1c70>
   33d69:	66 90                	xchg   %ax,%ax
   33d6b:	66 90                	xchg   %ax,%ax
   33d6d:	66 90                	xchg   %ax,%ax
   33d6f:	90                   	nop

00033d70 <quorem>:
   33d70:	55                   	push   %ebp
   33d71:	89 c1                	mov    %eax,%ecx
   33d73:	89 e5                	mov    %esp,%ebp
   33d75:	57                   	push   %edi
   33d76:	89 d7                	mov    %edx,%edi
   33d78:	56                   	push   %esi
   33d79:	53                   	push   %ebx
   33d7a:	83 ec 3c             	sub    $0x3c,%esp
   33d7d:	89 45 d0             	mov    %eax,-0x30(%ebp)
   33d80:	8b 42 10             	mov    0x10(%edx),%eax
   33d83:	3b 41 10             	cmp    0x10(%ecx),%eax
   33d86:	89 55 c8             	mov    %edx,-0x38(%ebp)
   33d89:	89 ca                	mov    %ecx,%edx
   33d8b:	0f 8f 9f 01 00 00    	jg     33f30 <quorem+0x1c0>
   33d91:	83 e8 01             	sub    $0x1,%eax
   33d94:	83 c7 14             	add    $0x14,%edi
   33d97:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   33d9a:	c1 e0 02             	shl    $0x2,%eax
   33d9d:	83 c2 14             	add    $0x14,%edx
   33da0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
   33da3:	01 d0                	add    %edx,%eax
   33da5:	89 55 d8             	mov    %edx,-0x28(%ebp)
   33da8:	8b 13                	mov    (%ebx),%edx
   33daa:	89 45 c4             	mov    %eax,-0x3c(%ebp)
   33dad:	8b 00                	mov    (%eax),%eax
   33daf:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
   33db2:	8d 4a 01             	lea    0x1(%edx),%ecx
   33db5:	31 d2                	xor    %edx,%edx
   33db7:	f7 f1                	div    %ecx
   33db9:	85 c0                	test   %eax,%eax
   33dbb:	89 45 e0             	mov    %eax,-0x20(%ebp)
   33dbe:	89 45 cc             	mov    %eax,-0x34(%ebp)
   33dc1:	0f 84 b5 00 00 00    	je     33e7c <quorem+0x10c>
   33dc7:	8b 45 d8             	mov    -0x28(%ebp),%eax
   33dca:	31 f6                	xor    %esi,%esi
   33dcc:	89 fa                	mov    %edi,%edx
   33dce:	89 7d c0             	mov    %edi,-0x40(%ebp)
   33dd1:	89 f7                	mov    %esi,%edi
   33dd3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
   33dda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   33de0:	83 c2 04             	add    $0x4,%edx
   33de3:	8b 72 fc             	mov    -0x4(%edx),%esi
   33de6:	83 c0 04             	add    $0x4,%eax
   33de9:	0f b7 ce             	movzwl %si,%ecx
   33dec:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
   33df0:	03 4d dc             	add    -0x24(%ebp),%ecx
   33df3:	c1 ee 10             	shr    $0x10,%esi
   33df6:	0f af 75 e0          	imul   -0x20(%ebp),%esi
   33dfa:	89 cb                	mov    %ecx,%ebx
   33dfc:	0f b7 c9             	movzwl %cx,%ecx
   33dff:	c1 eb 10             	shr    $0x10,%ebx
   33e02:	29 cf                	sub    %ecx,%edi
   33e04:	01 f3                	add    %esi,%ebx
   33e06:	89 de                	mov    %ebx,%esi
   33e08:	0f b7 db             	movzwl %bx,%ebx
   33e0b:	c1 ee 10             	shr    $0x10,%esi
   33e0e:	89 75 dc             	mov    %esi,-0x24(%ebp)
   33e11:	8b 70 fc             	mov    -0x4(%eax),%esi
   33e14:	0f b7 ce             	movzwl %si,%ecx
   33e17:	01 f9                	add    %edi,%ecx
   33e19:	c1 ee 10             	shr    $0x10,%esi
   33e1c:	29 de                	sub    %ebx,%esi
   33e1e:	89 cb                	mov    %ecx,%ebx
   33e20:	c1 fb 10             	sar    $0x10,%ebx
   33e23:	0f b7 c9             	movzwl %cx,%ecx
   33e26:	01 de                	add    %ebx,%esi
   33e28:	89 f7                	mov    %esi,%edi
   33e2a:	c1 e6 10             	shl    $0x10,%esi
   33e2d:	09 ce                	or     %ecx,%esi
   33e2f:	c1 ff 10             	sar    $0x10,%edi
   33e32:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
   33e35:	89 70 fc             	mov    %esi,-0x4(%eax)
   33e38:	73 a6                	jae    33de0 <quorem+0x70>
   33e3a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
   33e3d:	8b 7d c0             	mov    -0x40(%ebp),%edi
   33e40:	8b 10                	mov    (%eax),%edx
   33e42:	85 d2                	test   %edx,%edx
   33e44:	75 36                	jne    33e7c <quorem+0x10c>
   33e46:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   33e49:	89 c2                	mov    %eax,%edx
   33e4b:	83 e8 04             	sub    $0x4,%eax
   33e4e:	39 c1                	cmp    %eax,%ecx
   33e50:	73 21                	jae    33e73 <quorem+0x103>
   33e52:	8b 72 fc             	mov    -0x4(%edx),%esi
   33e55:	85 f6                	test   %esi,%esi
   33e57:	75 1a                	jne    33e73 <quorem+0x103>
   33e59:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   33e5c:	eb 08                	jmp    33e66 <quorem+0xf6>
   33e5e:	66 90                	xchg   %ax,%ax
   33e60:	8b 18                	mov    (%eax),%ebx
   33e62:	85 db                	test   %ebx,%ebx
   33e64:	75 0a                	jne    33e70 <quorem+0x100>
   33e66:	83 e8 04             	sub    $0x4,%eax
   33e69:	83 ea 01             	sub    $0x1,%edx
   33e6c:	39 c1                	cmp    %eax,%ecx
   33e6e:	72 f0                	jb     33e60 <quorem+0xf0>
   33e70:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   33e73:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33e76:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   33e79:	89 50 10             	mov    %edx,0x10(%eax)
   33e7c:	8b 45 c8             	mov    -0x38(%ebp),%eax
   33e7f:	89 44 24 04          	mov    %eax,0x4(%esp)
   33e83:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33e86:	89 04 24             	mov    %eax,(%esp)
   33e89:	e8 a2 23 00 00       	call   36230 <__mcmp>
   33e8e:	85 c0                	test   %eax,%eax
   33e90:	0f 88 8e 00 00 00    	js     33f24 <quorem+0x1b4>
   33e96:	8b 45 e0             	mov    -0x20(%ebp),%eax
   33e99:	31 f6                	xor    %esi,%esi
   33e9b:	83 c0 01             	add    $0x1,%eax
   33e9e:	89 45 cc             	mov    %eax,-0x34(%ebp)
   33ea1:	8b 45 d8             	mov    -0x28(%ebp),%eax
   33ea4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33ea8:	83 c7 04             	add    $0x4,%edi
   33eab:	8b 4f fc             	mov    -0x4(%edi),%ecx
   33eae:	83 c0 04             	add    $0x4,%eax
   33eb1:	8b 58 fc             	mov    -0x4(%eax),%ebx
   33eb4:	0f b7 d1             	movzwl %cx,%edx
   33eb7:	29 d6                	sub    %edx,%esi
   33eb9:	0f b7 d3             	movzwl %bx,%edx
   33ebc:	01 f2                	add    %esi,%edx
   33ebe:	c1 e9 10             	shr    $0x10,%ecx
   33ec1:	c1 eb 10             	shr    $0x10,%ebx
   33ec4:	29 cb                	sub    %ecx,%ebx
   33ec6:	89 d1                	mov    %edx,%ecx
   33ec8:	c1 f9 10             	sar    $0x10,%ecx
   33ecb:	0f b7 d2             	movzwl %dx,%edx
   33ece:	01 cb                	add    %ecx,%ebx
   33ed0:	89 de                	mov    %ebx,%esi
   33ed2:	c1 e3 10             	shl    $0x10,%ebx
   33ed5:	09 d3                	or     %edx,%ebx
   33ed7:	c1 fe 10             	sar    $0x10,%esi
   33eda:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
   33edd:	89 58 fc             	mov    %ebx,-0x4(%eax)
   33ee0:	73 c6                	jae    33ea8 <quorem+0x138>
   33ee2:	8b 45 d8             	mov    -0x28(%ebp),%eax
   33ee5:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   33ee8:	8d 14 b8             	lea    (%eax,%edi,4),%edx
   33eeb:	8b 02                	mov    (%edx),%eax
   33eed:	85 c0                	test   %eax,%eax
   33eef:	75 33                	jne    33f24 <quorem+0x1b4>
   33ef1:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   33ef4:	8d 42 fc             	lea    -0x4(%edx),%eax
   33ef7:	39 c1                	cmp    %eax,%ecx
   33ef9:	73 20                	jae    33f1b <quorem+0x1ab>
   33efb:	8b 72 fc             	mov    -0x4(%edx),%esi
   33efe:	85 f6                	test   %esi,%esi
   33f00:	75 19                	jne    33f1b <quorem+0x1ab>
   33f02:	89 fa                	mov    %edi,%edx
   33f04:	eb 08                	jmp    33f0e <quorem+0x19e>
   33f06:	66 90                	xchg   %ax,%ax
   33f08:	8b 18                	mov    (%eax),%ebx
   33f0a:	85 db                	test   %ebx,%ebx
   33f0c:	75 0a                	jne    33f18 <quorem+0x1a8>
   33f0e:	83 e8 04             	sub    $0x4,%eax
   33f11:	83 ea 01             	sub    $0x1,%edx
   33f14:	39 c1                	cmp    %eax,%ecx
   33f16:	72 f0                	jb     33f08 <quorem+0x198>
   33f18:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   33f1b:	8b 45 d0             	mov    -0x30(%ebp),%eax
   33f1e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   33f21:	89 78 10             	mov    %edi,0x10(%eax)
   33f24:	8b 45 cc             	mov    -0x34(%ebp),%eax
   33f27:	83 c4 3c             	add    $0x3c,%esp
   33f2a:	5b                   	pop    %ebx
   33f2b:	5e                   	pop    %esi
   33f2c:	5f                   	pop    %edi
   33f2d:	5d                   	pop    %ebp
   33f2e:	c3                   	ret    
   33f2f:	90                   	nop
   33f30:	83 c4 3c             	add    $0x3c,%esp
   33f33:	31 c0                	xor    %eax,%eax
   33f35:	5b                   	pop    %ebx
   33f36:	5e                   	pop    %esi
   33f37:	5f                   	pop    %edi
   33f38:	5d                   	pop    %ebp
   33f39:	c3                   	ret    
   33f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00033f40 <_dtoa_r>:
   33f40:	55                   	push   %ebp
   33f41:	89 e5                	mov    %esp,%ebp
   33f43:	57                   	push   %edi
   33f44:	56                   	push   %esi
   33f45:	53                   	push   %ebx
   33f46:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
   33f4c:	8b 75 08             	mov    0x8(%ebp),%esi
   33f4f:	dd 45 0c             	fldl   0xc(%ebp)
   33f52:	8b 5d 20             	mov    0x20(%ebp),%ebx
   33f55:	dd 5d c0             	fstpl  -0x40(%ebp)
   33f58:	8b 46 40             	mov    0x40(%esi),%eax
   33f5b:	85 c0                	test   %eax,%eax
   33f5d:	74 23                	je     33f82 <_dtoa_r+0x42>
   33f5f:	8b 4e 44             	mov    0x44(%esi),%ecx
   33f62:	ba 01 00 00 00       	mov    $0x1,%edx
   33f67:	d3 e2                	shl    %cl,%edx
   33f69:	89 48 04             	mov    %ecx,0x4(%eax)
   33f6c:	89 50 08             	mov    %edx,0x8(%eax)
   33f6f:	89 44 24 04          	mov    %eax,0x4(%esp)
   33f73:	89 34 24             	mov    %esi,(%esp)
   33f76:	e8 95 1b 00 00       	call   35b10 <_Bfree>
   33f7b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
   33f82:	8b 7d c4             	mov    -0x3c(%ebp),%edi
   33f85:	85 ff                	test   %edi,%edi
   33f87:	0f 88 3b 02 00 00    	js     341c8 <_dtoa_r+0x288>
   33f8d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
   33f93:	89 f8                	mov    %edi,%eax
   33f95:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
   33f9a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
   33f9f:	0f 84 e3 01 00 00    	je     34188 <_dtoa_r+0x248>
   33fa5:	dd 45 c0             	fldl   -0x40(%ebp)
   33fa8:	d9 ee                	fldz   
   33faa:	d9 c9                	fxch   %st(1)
   33fac:	db e9                	fucomi %st(1),%st
   33fae:	dd d9                	fstp   %st(1)
   33fb0:	7a 36                	jp     33fe8 <_dtoa_r+0xa8>
   33fb2:	75 34                	jne    33fe8 <_dtoa_r+0xa8>
   33fb4:	dd d8                	fstp   %st(0)
   33fb6:	8b 4d 24             	mov    0x24(%ebp),%ecx
   33fb9:	8b 45 1c             	mov    0x1c(%ebp),%eax
   33fbc:	85 c9                	test   %ecx,%ecx
   33fbe:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
   33fc4:	0f 84 4e 02 00 00    	je     34218 <_dtoa_r+0x2d8>
   33fca:	8b 45 24             	mov    0x24(%ebp),%eax
   33fcd:	c7 00 00 99 03 00    	movl   $0x39900,(%eax)
   33fd3:	b8 ff 98 03 00       	mov    $0x398ff,%eax
   33fd8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
   33fde:	5b                   	pop    %ebx
   33fdf:	5e                   	pop    %esi
   33fe0:	5f                   	pop    %edi
   33fe1:	5d                   	pop    %ebp
   33fe2:	c3                   	ret    
   33fe3:	90                   	nop
   33fe4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   33fe8:	8d 45 e0             	lea    -0x20(%ebp),%eax
   33feb:	89 fb                	mov    %edi,%ebx
   33fed:	89 44 24 10          	mov    %eax,0x10(%esp)
   33ff1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
   33ff4:	dd 54 24 04          	fstl   0x4(%esp)
   33ff8:	89 44 24 0c          	mov    %eax,0xc(%esp)
   33ffc:	dd 5d b8             	fstpl  -0x48(%ebp)
   33fff:	89 34 24             	mov    %esi,(%esp)
   34002:	c1 eb 14             	shr    $0x14,%ebx
   34005:	e8 76 25 00 00       	call   36580 <__d2b>
   3400a:	85 db                	test   %ebx,%ebx
   3400c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   3400f:	0f 85 db 01 00 00    	jne    341f0 <_dtoa_r+0x2b0>
   34015:	8b 45 e0             	mov    -0x20(%ebp),%eax
   34018:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
   3401b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   3401e:	01 c3                	add    %eax,%ebx
   34020:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
   34026:	0f 8c ec 07 00 00    	jl     34818 <_dtoa_r+0x8d8>
   3402c:	8b 55 c0             	mov    -0x40(%ebp),%edx
   3402f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
   34034:	89 f8                	mov    %edi,%eax
   34036:	29 d9                	sub    %ebx,%ecx
   34038:	d3 e0                	shl    %cl,%eax
   3403a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
   34040:	d3 ea                	shr    %cl,%edx
   34042:	09 d0                	or     %edx,%eax
   34044:	31 d2                	xor    %edx,%edx
   34046:	83 eb 01             	sub    $0x1,%ebx
   34049:	89 55 cc             	mov    %edx,-0x34(%ebp)
   3404c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
   3404f:	89 45 c8             	mov    %eax,-0x38(%ebp)
   34052:	df 6d c8             	fildll -0x38(%ebp)
   34055:	dd 5d b8             	fstpl  -0x48(%ebp)
   34058:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
   3405f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
   34066:	dd 45 b8             	fldl   -0x48(%ebp)
   34069:	d8 25 98 9a 03 00    	fsubs  0x39a98
   3406f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
   34072:	d9 7d d2             	fnstcw -0x2e(%ebp)
   34075:	dc 0d b0 9a 03 00    	fmull  0x39ab0
   3407b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   3407f:	b4 0c                	mov    $0xc,%ah
   34081:	dc 05 b8 9a 03 00    	faddl  0x39ab8
   34087:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   3408b:	db 45 d4             	fildl  -0x2c(%ebp)
   3408e:	dc 0d c0 9a 03 00    	fmull  0x39ac0
   34094:	de c1                	faddp  %st,%st(1)
   34096:	d9 6d d0             	fldcw  -0x30(%ebp)
   34099:	db 55 b8             	fistl  -0x48(%ebp)
   3409c:	d9 6d d2             	fldcw  -0x2e(%ebp)
   3409f:	d9 ee                	fldz   
   340a1:	df e9                	fucomip %st(1),%st
   340a3:	0f 87 27 07 00 00    	ja     347d0 <_dtoa_r+0x890>
   340a9:	dd d8                	fstp   %st(0)
   340ab:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
   340af:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
   340b6:	77 24                	ja     340dc <_dtoa_r+0x19c>
   340b8:	8b 45 b8             	mov    -0x48(%ebp),%eax
   340bb:	dd 04 c5 80 9b 03 00 	fldl   0x39b80(,%eax,8)
   340c2:	dd 45 c0             	fldl   -0x40(%ebp)
   340c5:	d9 c9                	fxch   %st(1)
   340c7:	df e9                	fucomip %st(1),%st
   340c9:	dd d8                	fstp   %st(0)
   340cb:	0f 86 5f 07 00 00    	jbe    34830 <_dtoa_r+0x8f0>
   340d1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
   340d5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
   340dc:	89 d0                	mov    %edx,%eax
   340de:	29 d8                	sub    %ebx,%eax
   340e0:	83 e8 01             	sub    $0x1,%eax
   340e3:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
   340ea:	89 45 ac             	mov    %eax,-0x54(%ebp)
   340ed:	0f 88 0d 07 00 00    	js     34800 <_dtoa_r+0x8c0>
   340f3:	8b 45 b8             	mov    -0x48(%ebp),%eax
   340f6:	85 c0                	test   %eax,%eax
   340f8:	0f 88 ea 06 00 00    	js     347e8 <_dtoa_r+0x8a8>
   340fe:	01 45 ac             	add    %eax,-0x54(%ebp)
   34101:	89 45 94             	mov    %eax,-0x6c(%ebp)
   34104:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   3410b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
   3410f:	0f 87 0b 03 00 00    	ja     34420 <_dtoa_r+0x4e0>
   34115:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
   34119:	0f 8e 23 10 00 00    	jle    35142 <_dtoa_r+0x1202>
   3411f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
   34123:	31 c0                	xor    %eax,%eax
   34125:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
   34129:	0f 84 43 0d 00 00    	je     34e72 <_dtoa_r+0xf32>
   3412f:	0f 8e f3 00 00 00    	jle    34228 <_dtoa_r+0x2e8>
   34135:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
   34139:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
   34140:	0f 84 f3 00 00 00    	je     34239 <_dtoa_r+0x2f9>
   34146:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
   3414a:	0f 85 d7 02 00 00    	jne    34427 <_dtoa_r+0x4e7>
   34150:	8b 5d b8             	mov    -0x48(%ebp),%ebx
   34153:	03 5d 18             	add    0x18(%ebp),%ebx
   34156:	89 5d 90             	mov    %ebx,-0x70(%ebp)
   34159:	83 c3 01             	add    $0x1,%ebx
   3415c:	83 fb 0e             	cmp    $0xe,%ebx
   3415f:	0f 96 c2             	setbe  %dl
   34162:	85 db                	test   %ebx,%ebx
   34164:	89 5d a8             	mov    %ebx,-0x58(%ebp)
   34167:	0f 8e a7 08 00 00    	jle    34a14 <_dtoa_r+0xad4>
   3416d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
   34170:	83 fb 0e             	cmp    $0xe,%ebx
   34173:	89 df                	mov    %ebx,%edi
   34175:	0f 96 45 b4          	setbe  -0x4c(%ebp)
   34179:	20 45 b4             	and    %al,-0x4c(%ebp)
   3417c:	e9 d6 00 00 00       	jmp    34257 <_dtoa_r+0x317>
   34181:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34188:	8b 55 c0             	mov    -0x40(%ebp),%edx
   3418b:	8b 45 1c             	mov    0x1c(%ebp),%eax
   3418e:	85 d2                	test   %edx,%edx
   34190:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
   34196:	b8 91 9a 03 00       	mov    $0x39a91,%eax
   3419b:	74 43                	je     341e0 <_dtoa_r+0x2a0>
   3419d:	8b 5d 24             	mov    0x24(%ebp),%ebx
   341a0:	85 db                	test   %ebx,%ebx
   341a2:	0f 84 30 fe ff ff    	je     33fd8 <_dtoa_r+0x98>
   341a8:	8b 75 24             	mov    0x24(%ebp),%esi
   341ab:	8d 50 08             	lea    0x8(%eax),%edx
   341ae:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
   341b2:	8d 48 03             	lea    0x3(%eax),%ecx
   341b5:	0f 44 d1             	cmove  %ecx,%edx
   341b8:	89 16                	mov    %edx,(%esi)
   341ba:	81 c4 8c 00 00 00    	add    $0x8c,%esp
   341c0:	5b                   	pop    %ebx
   341c1:	5e                   	pop    %esi
   341c2:	5f                   	pop    %edi
   341c3:	5d                   	pop    %ebp
   341c4:	c3                   	ret    
   341c5:	8d 76 00             	lea    0x0(%esi),%esi
   341c8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
   341ce:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
   341d4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
   341d7:	e9 b7 fd ff ff       	jmp    33f93 <_dtoa_r+0x53>
   341dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   341e0:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
   341e6:	ba 88 9a 03 00       	mov    $0x39a88,%edx
   341eb:	0f 44 c2             	cmove  %edx,%eax
   341ee:	eb ad                	jmp    3419d <_dtoa_r+0x25d>
   341f0:	8b 45 bc             	mov    -0x44(%ebp),%eax
   341f3:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
   341f9:	8b 55 e0             	mov    -0x20(%ebp),%edx
   341fc:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
   34203:	25 ff ff 0f 00       	and    $0xfffff,%eax
   34208:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
   3420d:	89 45 bc             	mov    %eax,-0x44(%ebp)
   34210:	e9 51 fe ff ff       	jmp    34066 <_dtoa_r+0x126>
   34215:	8d 76 00             	lea    0x0(%esi),%esi
   34218:	b8 ff 98 03 00       	mov    $0x398ff,%eax
   3421d:	e9 b6 fd ff ff       	jmp    33fd8 <_dtoa_r+0x98>
   34222:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34228:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   3422c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
   34233:	0f 85 ee 01 00 00    	jne    34427 <_dtoa_r+0x4e7>
   34239:	8b 55 18             	mov    0x18(%ebp),%edx
   3423c:	85 d2                	test   %edx,%edx
   3423e:	0f 8e b6 07 00 00    	jle    349fa <_dtoa_r+0xaba>
   34244:	8b 7d 18             	mov    0x18(%ebp),%edi
   34247:	83 ff 0e             	cmp    $0xe,%edi
   3424a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
   3424e:	20 45 b4             	and    %al,-0x4c(%ebp)
   34251:	89 7d 90             	mov    %edi,-0x70(%ebp)
   34254:	89 7d a8             	mov    %edi,-0x58(%ebp)
   34257:	83 ff 17             	cmp    $0x17,%edi
   3425a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
   34261:	0f 86 e5 0e 00 00    	jbe    3514c <_dtoa_r+0x120c>
   34267:	b9 01 00 00 00       	mov    $0x1,%ecx
   3426c:	b8 04 00 00 00       	mov    $0x4,%eax
   34271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34278:	01 c0                	add    %eax,%eax
   3427a:	89 ca                	mov    %ecx,%edx
   3427c:	8d 58 14             	lea    0x14(%eax),%ebx
   3427f:	39 fb                	cmp    %edi,%ebx
   34281:	8d 49 01             	lea    0x1(%ecx),%ecx
   34284:	76 f2                	jbe    34278 <_dtoa_r+0x338>
   34286:	89 56 44             	mov    %edx,0x44(%esi)
   34289:	89 54 24 04          	mov    %edx,0x4(%esp)
   3428d:	89 34 24             	mov    %esi,(%esp)
   34290:	e8 db 17 00 00       	call   35a70 <_Balloc>
   34295:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
   34299:	89 c7                	mov    %eax,%edi
   3429b:	89 46 40             	mov    %eax,0x40(%esi)
   3429e:	0f 84 bb 01 00 00    	je     3445f <_dtoa_r+0x51f>
   342a4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
   342a7:	dd 45 c0             	fldl   -0x40(%ebp)
   342aa:	85 db                	test   %ebx,%ebx
   342ac:	0f 8e de 07 00 00    	jle    34a90 <_dtoa_r+0xb50>
   342b2:	89 d8                	mov    %ebx,%eax
   342b4:	83 e0 0f             	and    $0xf,%eax
   342b7:	dd 04 c5 80 9b 03 00 	fldl   0x39b80(,%eax,8)
   342be:	89 d8                	mov    %ebx,%eax
   342c0:	c1 f8 04             	sar    $0x4,%eax
   342c3:	a8 10                	test   $0x10,%al
   342c5:	0f 84 cd 05 00 00    	je     34898 <_dtoa_r+0x958>
   342cb:	dd 05 60 9b 03 00    	fldl   0x39b60
   342d1:	83 e0 0f             	and    $0xf,%eax
   342d4:	b9 03 00 00 00       	mov    $0x3,%ecx
   342d9:	d8 fa                	fdivr  %st(2),%st
   342db:	85 c0                	test   %eax,%eax
   342dd:	74 22                	je     34301 <_dtoa_r+0x3c1>
   342df:	31 d2                	xor    %edx,%edx
   342e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   342e8:	a8 01                	test   $0x1,%al
   342ea:	74 0e                	je     342fa <_dtoa_r+0x3ba>
   342ec:	d9 c9                	fxch   %st(1)
   342ee:	dc 0c d5 40 9b 03 00 	fmull  0x39b40(,%edx,8)
   342f5:	d9 c9                	fxch   %st(1)
   342f7:	83 c1 01             	add    $0x1,%ecx
   342fa:	83 c2 01             	add    $0x1,%edx
   342fd:	d1 f8                	sar    %eax
   342ff:	75 e7                	jne    342e8 <_dtoa_r+0x3a8>
   34301:	de f1                	fdivp  %st,%st(1)
   34303:	8b 45 9c             	mov    -0x64(%ebp),%eax
   34306:	85 c0                	test   %eax,%eax
   34308:	74 0a                	je     34314 <_dtoa_r+0x3d4>
   3430a:	d9 e8                	fld1   
   3430c:	df e9                	fucomip %st(1),%st
   3430e:	0f 87 92 0b 00 00    	ja     34ea6 <_dtoa_r+0xf66>
   34314:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   34317:	8b 45 a8             	mov    -0x58(%ebp),%eax
   3431a:	db 45 d4             	fildl  -0x2c(%ebp)
   3431d:	d8 c9                	fmul   %st(1),%st
   3431f:	d8 05 a4 9a 03 00    	fadds  0x39aa4
   34325:	dd 5d c0             	fstpl  -0x40(%ebp)
   34328:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
   3432f:	85 c0                	test   %eax,%eax
   34331:	0f 84 89 05 00 00    	je     348c0 <_dtoa_r+0x980>
   34337:	8b 45 b8             	mov    -0x48(%ebp),%eax
   3433a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
   3433d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34340:	8b 45 98             	mov    -0x68(%ebp),%eax
   34343:	85 c0                	test   %eax,%eax
   34345:	0f 84 b5 07 00 00    	je     34b00 <_dtoa_r+0xbc0>
   3434b:	d9 05 ac 9a 03 00    	flds   0x39aac
   34351:	8d 57 01             	lea    0x1(%edi),%edx
   34354:	dc 34 cd 78 9b 03 00 	fdivl  0x39b78(,%ecx,8)
   3435b:	d9 7d d2             	fnstcw -0x2e(%ebp)
   3435e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   34362:	b4 0c                	mov    $0xc,%ah
   34364:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   34368:	dc 65 c0             	fsubl  -0x40(%ebp)
   3436b:	d9 c9                	fxch   %st(1)
   3436d:	d9 6d d0             	fldcw  -0x30(%ebp)
   34370:	db 55 d4             	fistl  -0x2c(%ebp)
   34373:	d9 6d d2             	fldcw  -0x2e(%ebp)
   34376:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   34379:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   3437c:	83 c0 30             	add    $0x30,%eax
   3437f:	db 45 d4             	fildl  -0x2c(%ebp)
   34382:	de e9                	fsubrp %st,%st(1)
   34384:	d9 c9                	fxch   %st(1)
   34386:	88 07                	mov    %al,(%edi)
   34388:	db e9                	fucomi %st(1),%st
   3438a:	77 7f                	ja     3440b <_dtoa_r+0x4cb>
   3438c:	d9 c1                	fld    %st(1)
   3438e:	d8 2d 9c 9a 03 00    	fsubrs 0x39a9c
   34394:	d9 c9                	fxch   %st(1)
   34396:	db e9                	fucomi %st(1),%st
   34398:	dd d9                	fstp   %st(1)
   3439a:	0f 87 33 0c 00 00    	ja     34fd3 <_dtoa_r+0x1093>
   343a0:	83 f9 01             	cmp    $0x1,%ecx
   343a3:	0f 8e c4 06 00 00    	jle    34a6d <_dtoa_r+0xb2d>
   343a9:	01 f9                	add    %edi,%ecx
   343ab:	d9 05 a0 9a 03 00    	flds   0x39aa0
   343b1:	eb 25                	jmp    343d8 <_dtoa_r+0x498>
   343b3:	90                   	nop
   343b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   343b8:	d9 c1                	fld    %st(1)
   343ba:	d8 2d 9c 9a 03 00    	fsubrs 0x39a9c
   343c0:	d9 c9                	fxch   %st(1)
   343c2:	db e9                	fucomi %st(1),%st
   343c4:	dd d9                	fstp   %st(1)
   343c6:	0f 87 14 0c 00 00    	ja     34fe0 <_dtoa_r+0x10a0>
   343cc:	39 ca                	cmp    %ecx,%edx
   343ce:	0f 84 a4 06 00 00    	je     34a78 <_dtoa_r+0xb38>
   343d4:	d9 c9                	fxch   %st(1)
   343d6:	d9 ca                	fxch   %st(2)
   343d8:	dc c9                	fmul   %st,%st(1)
   343da:	83 c2 01             	add    $0x1,%edx
   343dd:	dc ca                	fmul   %st,%st(2)
   343df:	d9 ca                	fxch   %st(2)
   343e1:	d9 6d d0             	fldcw  -0x30(%ebp)
   343e4:	db 55 d4             	fistl  -0x2c(%ebp)
   343e7:	d9 6d d2             	fldcw  -0x2e(%ebp)
   343ea:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   343ed:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   343f0:	83 c0 30             	add    $0x30,%eax
   343f3:	db 45 d4             	fildl  -0x2c(%ebp)
   343f6:	de e9                	fsubrp %st,%st(1)
   343f8:	d9 c9                	fxch   %st(1)
   343fa:	88 42 ff             	mov    %al,-0x1(%edx)
   343fd:	db e9                	fucomi %st(1),%st
   343ff:	76 b7                	jbe    343b8 <_dtoa_r+0x478>
   34401:	dd d8                	fstp   %st(0)
   34403:	dd d8                	fstp   %st(0)
   34405:	dd d8                	fstp   %st(0)
   34407:	dd d8                	fstp   %st(0)
   34409:	eb 06                	jmp    34411 <_dtoa_r+0x4d1>
   3440b:	dd d8                	fstp   %st(0)
   3440d:	dd d8                	fstp   %st(0)
   3440f:	dd d8                	fstp   %st(0)
   34411:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34414:	89 fb                	mov    %edi,%ebx
   34416:	89 d7                	mov    %edx,%edi
   34418:	89 45 b8             	mov    %eax,-0x48(%ebp)
   3441b:	e9 70 03 00 00       	jmp    34790 <_dtoa_r+0x850>
   34420:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
   34427:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
   3442e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   34435:	00 
   34436:	89 34 24             	mov    %esi,(%esp)
   34439:	e8 32 16 00 00       	call   35a70 <_Balloc>
   3443e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
   34445:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
   3444c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
   34453:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
   3445a:	89 c7                	mov    %eax,%edi
   3445c:	89 46 40             	mov    %eax,0x40(%esi)
   3445f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   34462:	85 c0                	test   %eax,%eax
   34464:	0f 88 2e 01 00 00    	js     34598 <_dtoa_r+0x658>
   3446a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
   3446e:	0f 8f 24 01 00 00    	jg     34598 <_dtoa_r+0x658>
   34474:	8b 45 b8             	mov    -0x48(%ebp),%eax
   34477:	dd 04 c5 80 9b 03 00 	fldl   0x39b80(,%eax,8)
   3447e:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34481:	85 c0                	test   %eax,%eax
   34483:	7f 0e                	jg     34493 <_dtoa_r+0x553>
   34485:	8b 45 18             	mov    0x18(%ebp),%eax
   34488:	c1 e8 1f             	shr    $0x1f,%eax
   3448b:	84 c0                	test   %al,%al
   3448d:	0f 85 9d 07 00 00    	jne    34c30 <_dtoa_r+0xcf0>
   34493:	dd 45 c0             	fldl   -0x40(%ebp)
   34496:	d9 c0                	fld    %st(0)
   34498:	d8 f2                	fdiv   %st(2),%st
   3449a:	d9 7d d2             	fnstcw -0x2e(%ebp)
   3449d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
   344a1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   344a5:	b4 0c                	mov    $0xc,%ah
   344a7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   344ab:	8d 47 01             	lea    0x1(%edi),%eax
   344ae:	89 45 c0             	mov    %eax,-0x40(%ebp)
   344b1:	d9 6d d0             	fldcw  -0x30(%ebp)
   344b4:	db 5d d4             	fistpl -0x2c(%ebp)
   344b7:	d9 6d d2             	fldcw  -0x2e(%ebp)
   344ba:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   344bd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   344c0:	8d 42 30             	lea    0x30(%edx),%eax
   344c3:	db 45 d4             	fildl  -0x2c(%ebp)
   344c6:	d8 ca                	fmul   %st(2),%st
   344c8:	88 07                	mov    %al,(%edi)
   344ca:	de e9                	fsubrp %st,%st(1)
   344cc:	74 66                	je     34534 <_dtoa_r+0x5f4>
   344ce:	d8 0d a0 9a 03 00    	fmuls  0x39aa0
   344d4:	d9 ee                	fldz   
   344d6:	d9 c9                	fxch   %st(1)
   344d8:	db e9                	fucomi %st(1),%st
   344da:	dd d9                	fstp   %st(1)
   344dc:	0f 8b 33 0c 00 00    	jnp    35115 <_dtoa_r+0x11d5>
   344e2:	8b 5d a8             	mov    -0x58(%ebp),%ebx
   344e5:	8d 47 02             	lea    0x2(%edi),%eax
   344e8:	d9 05 a0 9a 03 00    	flds   0x39aa0
   344ee:	01 fb                	add    %edi,%ebx
   344f0:	eb 19                	jmp    3450b <_dtoa_r+0x5cb>
   344f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   344f8:	dc c9                	fmul   %st,%st(1)
   344fa:	83 c0 01             	add    $0x1,%eax
   344fd:	d9 ee                	fldz   
   344ff:	d9 ca                	fxch   %st(2)
   34501:	db ea                	fucomi %st(2),%st
   34503:	dd da                	fstp   %st(2)
   34505:	0f 8b 73 09 00 00    	jnp    34e7e <_dtoa_r+0xf3e>
   3450b:	d9 c1                	fld    %st(1)
   3450d:	39 d8                	cmp    %ebx,%eax
   3450f:	d8 f3                	fdiv   %st(3),%st
   34511:	89 45 c0             	mov    %eax,-0x40(%ebp)
   34514:	d9 6d d0             	fldcw  -0x30(%ebp)
   34517:	db 5d d4             	fistpl -0x2c(%ebp)
   3451a:	d9 6d d2             	fldcw  -0x2e(%ebp)
   3451d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   34520:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   34523:	8d 4a 30             	lea    0x30(%edx),%ecx
   34526:	db 45 d4             	fildl  -0x2c(%ebp)
   34529:	d8 cb                	fmul   %st(3),%st
   3452b:	88 48 ff             	mov    %cl,-0x1(%eax)
   3452e:	de ea                	fsubrp %st,%st(2)
   34530:	75 c6                	jne    344f8 <_dtoa_r+0x5b8>
   34532:	dd d8                	fstp   %st(0)
   34534:	d8 c0                	fadd   %st(0),%st
   34536:	db e9                	fucomi %st(1),%st
   34538:	77 1e                	ja     34558 <_dtoa_r+0x618>
   3453a:	d9 c9                	fxch   %st(1)
   3453c:	df e9                	fucomip %st(1),%st
   3453e:	dd d8                	fstp   %st(0)
   34540:	0f 8a 44 09 00 00    	jp     34e8a <_dtoa_r+0xf4a>
   34546:	0f 85 3e 09 00 00    	jne    34e8a <_dtoa_r+0xf4a>
   3454c:	83 e2 01             	and    $0x1,%edx
   3454f:	90                   	nop
   34550:	0f 84 34 09 00 00    	je     34e8a <_dtoa_r+0xf4a>
   34556:	eb 04                	jmp    3455c <_dtoa_r+0x61c>
   34558:	dd d8                	fstp   %st(0)
   3455a:	dd d8                	fstp   %st(0)
   3455c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
   3455f:	89 fb                	mov    %edi,%ebx
   34561:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
   34565:	89 cf                	mov    %ecx,%edi
   34567:	8b 4d b8             	mov    -0x48(%ebp),%ecx
   3456a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
   3456d:	eb 0f                	jmp    3457e <_dtoa_r+0x63e>
   3456f:	90                   	nop
   34570:	39 d3                	cmp    %edx,%ebx
   34572:	0f 84 75 09 00 00    	je     34eed <_dtoa_r+0xfad>
   34578:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
   3457c:	89 d7                	mov    %edx,%edi
   3457e:	3c 39                	cmp    $0x39,%al
   34580:	8d 57 ff             	lea    -0x1(%edi),%edx
   34583:	74 eb                	je     34570 <_dtoa_r+0x630>
   34585:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
   34588:	83 c0 01             	add    $0x1,%eax
   3458b:	88 02                	mov    %al,(%edx)
   3458d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
   34590:	e9 fb 01 00 00       	jmp    34790 <_dtoa_r+0x850>
   34595:	8d 76 00             	lea    0x0(%esi),%esi
   34598:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   3459b:	85 c9                	test   %ecx,%ecx
   3459d:	0f 85 9d 02 00 00    	jne    34840 <_dtoa_r+0x900>
   345a3:	8b 55 b0             	mov    -0x50(%ebp),%edx
   345a6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   345a9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   345b0:	8b 45 ac             	mov    -0x54(%ebp),%eax
   345b3:	85 c0                	test   %eax,%eax
   345b5:	7e 14                	jle    345cb <_dtoa_r+0x68b>
   345b7:	85 db                	test   %ebx,%ebx
   345b9:	7e 10                	jle    345cb <_dtoa_r+0x68b>
   345bb:	8b 45 ac             	mov    -0x54(%ebp),%eax
   345be:	39 d8                	cmp    %ebx,%eax
   345c0:	0f 4f c3             	cmovg  %ebx,%eax
   345c3:	29 45 a0             	sub    %eax,-0x60(%ebp)
   345c6:	29 c3                	sub    %eax,%ebx
   345c8:	29 45 ac             	sub    %eax,-0x54(%ebp)
   345cb:	8b 45 b0             	mov    -0x50(%ebp),%eax
   345ce:	85 c0                	test   %eax,%eax
   345d0:	7e 61                	jle    34633 <_dtoa_r+0x6f3>
   345d2:	8b 45 98             	mov    -0x68(%ebp),%eax
   345d5:	85 c0                	test   %eax,%eax
   345d7:	0f 84 72 04 00 00    	je     34a4f <_dtoa_r+0xb0f>
   345dd:	85 d2                	test   %edx,%edx
   345df:	7e 47                	jle    34628 <_dtoa_r+0x6e8>
   345e1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   345e4:	89 54 24 08          	mov    %edx,0x8(%esp)
   345e8:	89 34 24             	mov    %esi,(%esp)
   345eb:	89 55 88             	mov    %edx,-0x78(%ebp)
   345ee:	89 44 24 04          	mov    %eax,0x4(%esp)
   345f2:	e8 f9 19 00 00       	call   35ff0 <__pow5mult>
   345f7:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
   345fa:	89 34 24             	mov    %esi,(%esp)
   345fd:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   34601:	89 44 24 04          	mov    %eax,0x4(%esp)
   34605:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34608:	e8 13 18 00 00       	call   35e20 <__multiply>
   3460d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
   34610:	89 34 24             	mov    %esi,(%esp)
   34613:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   34617:	89 45 8c             	mov    %eax,-0x74(%ebp)
   3461a:	e8 f1 14 00 00       	call   35b10 <_Bfree>
   3461f:	8b 45 8c             	mov    -0x74(%ebp),%eax
   34622:	8b 55 88             	mov    -0x78(%ebp),%edx
   34625:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   34628:	8b 45 b0             	mov    -0x50(%ebp),%eax
   3462b:	29 d0                	sub    %edx,%eax
   3462d:	0f 85 1f 04 00 00    	jne    34a52 <_dtoa_r+0xb12>
   34633:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   3463a:	00 
   3463b:	89 34 24             	mov    %esi,(%esp)
   3463e:	e8 ad 17 00 00       	call   35df0 <__i2b>
   34643:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
   34646:	85 c9                	test   %ecx,%ecx
   34648:	89 45 b0             	mov    %eax,-0x50(%ebp)
   3464b:	7e 13                	jle    34660 <_dtoa_r+0x720>
   3464d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   34651:	89 44 24 04          	mov    %eax,0x4(%esp)
   34655:	89 34 24             	mov    %esi,(%esp)
   34658:	e8 93 19 00 00       	call   35ff0 <__pow5mult>
   3465d:	89 45 b0             	mov    %eax,-0x50(%ebp)
   34660:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
   34664:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
   3466b:	0f 8e f7 05 00 00    	jle    34c68 <_dtoa_r+0xd28>
   34671:	8b 45 94             	mov    -0x6c(%ebp),%eax
   34674:	ba 01 00 00 00       	mov    $0x1,%edx
   34679:	85 c0                	test   %eax,%eax
   3467b:	0f 85 27 05 00 00    	jne    34ba8 <_dtoa_r+0xc68>
   34681:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34684:	01 d0                	add    %edx,%eax
   34686:	83 e0 1f             	and    $0x1f,%eax
   34689:	89 c2                	mov    %eax,%edx
   3468b:	0f 84 57 03 00 00    	je     349e8 <_dtoa_r+0xaa8>
   34691:	b8 20 00 00 00       	mov    $0x20,%eax
   34696:	29 d0                	sub    %edx,%eax
   34698:	83 f8 04             	cmp    $0x4,%eax
   3469b:	0f 8e 8c 0a 00 00    	jle    3512d <_dtoa_r+0x11ed>
   346a1:	b8 1c 00 00 00       	mov    $0x1c,%eax
   346a6:	29 d0                	sub    %edx,%eax
   346a8:	01 45 a0             	add    %eax,-0x60(%ebp)
   346ab:	01 c3                	add    %eax,%ebx
   346ad:	01 45 ac             	add    %eax,-0x54(%ebp)
   346b0:	8b 45 a0             	mov    -0x60(%ebp),%eax
   346b3:	85 c0                	test   %eax,%eax
   346b5:	7e 16                	jle    346cd <_dtoa_r+0x78d>
   346b7:	89 44 24 08          	mov    %eax,0x8(%esp)
   346bb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   346be:	89 34 24             	mov    %esi,(%esp)
   346c1:	89 44 24 04          	mov    %eax,0x4(%esp)
   346c5:	e8 46 1a 00 00       	call   36110 <__lshift>
   346ca:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   346cd:	8b 45 ac             	mov    -0x54(%ebp),%eax
   346d0:	85 c0                	test   %eax,%eax
   346d2:	7e 16                	jle    346ea <_dtoa_r+0x7aa>
   346d4:	89 44 24 08          	mov    %eax,0x8(%esp)
   346d8:	8b 45 b0             	mov    -0x50(%ebp),%eax
   346db:	89 34 24             	mov    %esi,(%esp)
   346de:	89 44 24 04          	mov    %eax,0x4(%esp)
   346e2:	e8 29 1a 00 00       	call   36110 <__lshift>
   346e7:	89 45 b0             	mov    %eax,-0x50(%ebp)
   346ea:	8b 45 9c             	mov    -0x64(%ebp),%eax
   346ed:	85 c0                	test   %eax,%eax
   346ef:	0f 85 d3 04 00 00    	jne    34bc8 <_dtoa_r+0xc88>
   346f5:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   346f9:	0f 8e 11 02 00 00    	jle    34910 <_dtoa_r+0x9d0>
   346ff:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34702:	85 c0                	test   %eax,%eax
   34704:	0f 8f 06 02 00 00    	jg     34910 <_dtoa_r+0x9d0>
   3470a:	8b 45 a8             	mov    -0x58(%ebp),%eax
   3470d:	85 c0                	test   %eax,%eax
   3470f:	0f 85 e0 01 00 00    	jne    348f5 <_dtoa_r+0x9b5>
   34715:	8b 45 b0             	mov    -0x50(%ebp),%eax
   34718:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   3471f:	00 
   34720:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
   34727:	00 
   34728:	89 34 24             	mov    %esi,(%esp)
   3472b:	89 44 24 04          	mov    %eax,0x4(%esp)
   3472f:	e8 fc 13 00 00       	call   35b30 <__multadd>
   34734:	89 45 b0             	mov    %eax,-0x50(%ebp)
   34737:	89 44 24 04          	mov    %eax,0x4(%esp)
   3473b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   3473e:	89 04 24             	mov    %eax,(%esp)
   34741:	e8 ea 1a 00 00       	call   36230 <__mcmp>
   34746:	85 c0                	test   %eax,%eax
   34748:	0f 8e a7 01 00 00    	jle    348f5 <_dtoa_r+0x9b5>
   3474e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
   34752:	89 fb                	mov    %edi,%ebx
   34754:	83 c7 01             	add    $0x1,%edi
   34757:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
   3475b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
   34762:	8b 45 b0             	mov    -0x50(%ebp),%eax
   34765:	89 34 24             	mov    %esi,(%esp)
   34768:	89 44 24 04          	mov    %eax,0x4(%esp)
   3476c:	e8 9f 13 00 00       	call   35b10 <_Bfree>
   34771:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34774:	85 c0                	test   %eax,%eax
   34776:	74 18                	je     34790 <_dtoa_r+0x850>
   34778:	39 45 c0             	cmp    %eax,-0x40(%ebp)
   3477b:	0f 85 a7 02 00 00    	jne    34a28 <_dtoa_r+0xae8>
   34781:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34784:	89 34 24             	mov    %esi,(%esp)
   34787:	89 44 24 04          	mov    %eax,0x4(%esp)
   3478b:	e8 80 13 00 00       	call   35b10 <_Bfree>
   34790:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34793:	89 34 24             	mov    %esi,(%esp)
   34796:	89 44 24 04          	mov    %eax,0x4(%esp)
   3479a:	e8 71 13 00 00       	call   35b10 <_Bfree>
   3479f:	8b 45 b8             	mov    -0x48(%ebp),%eax
   347a2:	8b 75 1c             	mov    0x1c(%ebp),%esi
   347a5:	c6 07 00             	movb   $0x0,(%edi)
   347a8:	83 c0 01             	add    $0x1,%eax
   347ab:	89 06                	mov    %eax,(%esi)
   347ad:	8b 45 24             	mov    0x24(%ebp),%eax
   347b0:	85 c0                	test   %eax,%eax
   347b2:	0f 84 90 02 00 00    	je     34a48 <_dtoa_r+0xb08>
   347b8:	8b 45 24             	mov    0x24(%ebp),%eax
   347bb:	89 38                	mov    %edi,(%eax)
   347bd:	81 c4 8c 00 00 00    	add    $0x8c,%esp
   347c3:	89 d8                	mov    %ebx,%eax
   347c5:	5b                   	pop    %ebx
   347c6:	5e                   	pop    %esi
   347c7:	5f                   	pop    %edi
   347c8:	5d                   	pop    %ebp
   347c9:	c3                   	ret    
   347ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   347d0:	db 45 b8             	fildl  -0x48(%ebp)
   347d3:	df e9                	fucomip %st(1),%st
   347d5:	dd d8                	fstp   %st(0)
   347d7:	7a 06                	jp     347df <_dtoa_r+0x89f>
   347d9:	0f 84 cc f8 ff ff    	je     340ab <_dtoa_r+0x16b>
   347df:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
   347e3:	e9 c3 f8 ff ff       	jmp    340ab <_dtoa_r+0x16b>
   347e8:	8b 45 b8             	mov    -0x48(%ebp),%eax
   347eb:	29 45 a0             	sub    %eax,-0x60(%ebp)
   347ee:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
   347f5:	f7 d8                	neg    %eax
   347f7:	89 45 b0             	mov    %eax,-0x50(%ebp)
   347fa:	e9 0c f9 ff ff       	jmp    3410b <_dtoa_r+0x1cb>
   347ff:	90                   	nop
   34800:	f7 d8                	neg    %eax
   34802:	89 45 a0             	mov    %eax,-0x60(%ebp)
   34805:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
   3480c:	e9 e2 f8 ff ff       	jmp    340f3 <_dtoa_r+0x1b3>
   34811:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34818:	8b 45 c0             	mov    -0x40(%ebp),%eax
   3481b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
   34820:	29 d9                	sub    %ebx,%ecx
   34822:	d3 e0                	shl    %cl,%eax
   34824:	e9 1b f8 ff ff       	jmp    34044 <_dtoa_r+0x104>
   34829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34830:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
   34837:	e9 a0 f8 ff ff       	jmp    340dc <_dtoa_r+0x19c>
   3483c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34840:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
   34844:	0f 8e fe 06 00 00    	jle    34f48 <_dtoa_r+0x1008>
   3484a:	8b 45 a8             	mov    -0x58(%ebp),%eax
   3484d:	83 e8 01             	sub    $0x1,%eax
   34850:	39 45 b0             	cmp    %eax,-0x50(%ebp)
   34853:	0f 8c 3b 06 00 00    	jl     34e94 <_dtoa_r+0xf54>
   34859:	8b 55 b0             	mov    -0x50(%ebp),%edx
   3485c:	29 c2                	sub    %eax,%edx
   3485e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
   34861:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   34864:	85 c9                	test   %ecx,%ecx
   34866:	89 c8                	mov    %ecx,%eax
   34868:	0f 88 83 07 00 00    	js     34ff1 <_dtoa_r+0x10b1>
   3486e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   34875:	00 
   34876:	89 34 24             	mov    %esi,(%esp)
   34879:	89 55 8c             	mov    %edx,-0x74(%ebp)
   3487c:	01 45 a0             	add    %eax,-0x60(%ebp)
   3487f:	01 45 ac             	add    %eax,-0x54(%ebp)
   34882:	e8 69 15 00 00       	call   35df0 <__i2b>
   34887:	8b 55 8c             	mov    -0x74(%ebp),%edx
   3488a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   3488d:	e9 1e fd ff ff       	jmp    345b0 <_dtoa_r+0x670>
   34892:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34898:	d9 c1                	fld    %st(1)
   3489a:	b9 02 00 00 00       	mov    $0x2,%ecx
   3489f:	e9 37 fa ff ff       	jmp    342db <_dtoa_r+0x39b>
   348a4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   348a7:	db 45 d4             	fildl  -0x2c(%ebp)
   348aa:	d8 c9                	fmul   %st(1),%st
   348ac:	d8 05 a4 9a 03 00    	fadds  0x39aa4
   348b2:	dd 5d c0             	fstpl  -0x40(%ebp)
   348b5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
   348bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   348c0:	d8 25 a8 9a 03 00    	fsubs  0x39aa8
   348c6:	dd 45 c0             	fldl   -0x40(%ebp)
   348c9:	d9 c9                	fxch   %st(1)
   348cb:	db e9                	fucomi %st(1),%st
   348cd:	0f 87 0d 02 00 00    	ja     34ae0 <_dtoa_r+0xba0>
   348d3:	d9 c9                	fxch   %st(1)
   348d5:	d9 e0                	fchs   
   348d7:	df e9                	fucomip %st(1),%st
   348d9:	dd d8                	fstp   %st(0)
   348db:	0f 86 a7 01 00 00    	jbe    34a88 <_dtoa_r+0xb48>
   348e1:	dd d8                	fstp   %st(0)
   348e3:	eb 02                	jmp    348e7 <_dtoa_r+0x9a7>
   348e5:	dd d8                	fstp   %st(0)
   348e7:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   348ee:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   348f5:	8b 45 18             	mov    0x18(%ebp),%eax
   348f8:	89 fb                	mov    %edi,%ebx
   348fa:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
   34901:	f7 d0                	not    %eax
   34903:	89 45 b8             	mov    %eax,-0x48(%ebp)
   34906:	e9 57 fe ff ff       	jmp    34762 <_dtoa_r+0x822>
   3490b:	90                   	nop
   3490c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34910:	8b 45 98             	mov    -0x68(%ebp),%eax
   34913:	85 c0                	test   %eax,%eax
   34915:	0f 85 c5 03 00 00    	jne    34ce0 <_dtoa_r+0xda0>
   3491b:	89 75 08             	mov    %esi,0x8(%ebp)
   3491e:	bb 01 00 00 00       	mov    $0x1,%ebx
   34923:	8b 75 a4             	mov    -0x5c(%ebp),%esi
   34926:	eb 24                	jmp    3494c <_dtoa_r+0xa0c>
   34928:	8b 45 08             	mov    0x8(%ebp),%eax
   3492b:	83 c3 01             	add    $0x1,%ebx
   3492e:	89 74 24 04          	mov    %esi,0x4(%esp)
   34932:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34939:	00 
   3493a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34941:	00 
   34942:	89 04 24             	mov    %eax,(%esp)
   34945:	e8 e6 11 00 00       	call   35b30 <__multadd>
   3494a:	89 c6                	mov    %eax,%esi
   3494c:	8b 55 b0             	mov    -0x50(%ebp),%edx
   3494f:	89 f0                	mov    %esi,%eax
   34951:	e8 1a f4 ff ff       	call   33d70 <quorem>
   34956:	83 c0 30             	add    $0x30,%eax
   34959:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
   3495c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
   34960:	7c c6                	jl     34928 <_dtoa_r+0x9e8>
   34962:	89 45 a0             	mov    %eax,-0x60(%ebp)
   34965:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34968:	ba 01 00 00 00       	mov    $0x1,%edx
   3496d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
   34970:	8b 75 08             	mov    0x8(%ebp),%esi
   34973:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
   3497a:	85 c0                	test   %eax,%eax
   3497c:	0f 4f d0             	cmovg  %eax,%edx
   3497f:	01 fa                	add    %edi,%edx
   34981:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34984:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   3498b:	00 
   3498c:	89 34 24             	mov    %esi,(%esp)
   3498f:	89 55 ac             	mov    %edx,-0x54(%ebp)
   34992:	89 44 24 04          	mov    %eax,0x4(%esp)
   34996:	e8 75 17 00 00       	call   36110 <__lshift>
   3499b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
   3499e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   349a2:	89 04 24             	mov    %eax,(%esp)
   349a5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   349a8:	e8 83 18 00 00       	call   36230 <__mcmp>
   349ad:	8b 55 ac             	mov    -0x54(%ebp),%edx
   349b0:	83 f8 00             	cmp    $0x0,%eax
   349b3:	0f 8e 41 06 00 00    	jle    34ffa <_dtoa_r+0x10ba>
   349b9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
   349bd:	eb 0f                	jmp    349ce <_dtoa_r+0xa8e>
   349bf:	90                   	nop
   349c0:	39 c7                	cmp    %eax,%edi
   349c2:	0f 84 70 05 00 00    	je     34f38 <_dtoa_r+0xff8>
   349c8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
   349cc:	89 c2                	mov    %eax,%edx
   349ce:	80 f9 39             	cmp    $0x39,%cl
   349d1:	8d 42 ff             	lea    -0x1(%edx),%eax
   349d4:	74 ea                	je     349c0 <_dtoa_r+0xa80>
   349d6:	83 c1 01             	add    $0x1,%ecx
   349d9:	89 fb                	mov    %edi,%ebx
   349db:	88 08                	mov    %cl,(%eax)
   349dd:	89 d7                	mov    %edx,%edi
   349df:	e9 7e fd ff ff       	jmp    34762 <_dtoa_r+0x822>
   349e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   349e8:	b8 1c 00 00 00       	mov    $0x1c,%eax
   349ed:	01 45 a0             	add    %eax,-0x60(%ebp)
   349f0:	01 c3                	add    %eax,%ebx
   349f2:	01 45 ac             	add    %eax,-0x54(%ebp)
   349f5:	e9 b6 fc ff ff       	jmp    346b0 <_dtoa_r+0x770>
   349fa:	ba 01 00 00 00       	mov    $0x1,%edx
   349ff:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
   34a06:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
   34a0d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
   34a14:	21 c2                	and    %eax,%edx
   34a16:	88 55 b4             	mov    %dl,-0x4c(%ebp)
   34a19:	31 d2                	xor    %edx,%edx
   34a1b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
   34a22:	e9 62 f8 ff ff       	jmp    34289 <_dtoa_r+0x349>
   34a27:	90                   	nop
   34a28:	8b 55 c0             	mov    -0x40(%ebp),%edx
   34a2b:	85 d2                	test   %edx,%edx
   34a2d:	0f 84 4e fd ff ff    	je     34781 <_dtoa_r+0x841>
   34a33:	8b 45 c0             	mov    -0x40(%ebp),%eax
   34a36:	89 34 24             	mov    %esi,(%esp)
   34a39:	89 44 24 04          	mov    %eax,0x4(%esp)
   34a3d:	e8 ce 10 00 00       	call   35b10 <_Bfree>
   34a42:	e9 3a fd ff ff       	jmp    34781 <_dtoa_r+0x841>
   34a47:	90                   	nop
   34a48:	89 d8                	mov    %ebx,%eax
   34a4a:	e9 89 f5 ff ff       	jmp    33fd8 <_dtoa_r+0x98>
   34a4f:	8b 45 b0             	mov    -0x50(%ebp),%eax
   34a52:	89 44 24 08          	mov    %eax,0x8(%esp)
   34a56:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34a59:	89 34 24             	mov    %esi,(%esp)
   34a5c:	89 44 24 04          	mov    %eax,0x4(%esp)
   34a60:	e8 8b 15 00 00       	call   35ff0 <__pow5mult>
   34a65:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   34a68:	e9 c6 fb ff ff       	jmp    34633 <_dtoa_r+0x6f3>
   34a6d:	dd d8                	fstp   %st(0)
   34a6f:	dd d8                	fstp   %st(0)
   34a71:	eb 15                	jmp    34a88 <_dtoa_r+0xb48>
   34a73:	90                   	nop
   34a74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34a78:	dd d8                	fstp   %st(0)
   34a7a:	dd d8                	fstp   %st(0)
   34a7c:	dd d8                	fstp   %st(0)
   34a7e:	eb 08                	jmp    34a88 <_dtoa_r+0xb48>
   34a80:	dd d8                	fstp   %st(0)
   34a82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34a88:	dd 5d c0             	fstpl  -0x40(%ebp)
   34a8b:	e9 cf f9 ff ff       	jmp    3445f <_dtoa_r+0x51f>
   34a90:	8b 45 b8             	mov    -0x48(%ebp),%eax
   34a93:	f7 d8                	neg    %eax
   34a95:	0f 84 6a 04 00 00    	je     34f05 <_dtoa_r+0xfc5>
   34a9b:	89 c2                	mov    %eax,%edx
   34a9d:	b9 02 00 00 00       	mov    $0x2,%ecx
   34aa2:	83 e2 0f             	and    $0xf,%edx
   34aa5:	c1 f8 04             	sar    $0x4,%eax
   34aa8:	dd 04 d5 80 9b 03 00 	fldl   0x39b80(,%edx,8)
   34aaf:	85 c0                	test   %eax,%eax
   34ab1:	d8 c9                	fmul   %st(1),%st
   34ab3:	0f 84 4a f8 ff ff    	je     34303 <_dtoa_r+0x3c3>
   34ab9:	31 d2                	xor    %edx,%edx
   34abb:	90                   	nop
   34abc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34ac0:	a8 01                	test   $0x1,%al
   34ac2:	74 0a                	je     34ace <_dtoa_r+0xb8e>
   34ac4:	dc 0c d5 40 9b 03 00 	fmull  0x39b40(,%edx,8)
   34acb:	83 c1 01             	add    $0x1,%ecx
   34ace:	83 c2 01             	add    $0x1,%edx
   34ad1:	d1 f8                	sar    %eax
   34ad3:	75 eb                	jne    34ac0 <_dtoa_r+0xb80>
   34ad5:	e9 29 f8 ff ff       	jmp    34303 <_dtoa_r+0x3c3>
   34ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   34ae0:	dd d8                	fstp   %st(0)
   34ae2:	dd d8                	fstp   %st(0)
   34ae4:	dd d8                	fstp   %st(0)
   34ae6:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   34aed:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   34af4:	e9 55 fc ff ff       	jmp    3474e <_dtoa_r+0x80e>
   34af9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34b00:	d9 7d d2             	fnstcw -0x2e(%ebp)
   34b03:	8d 41 ff             	lea    -0x1(%ecx),%eax
   34b06:	dd 45 c0             	fldl   -0x40(%ebp)
   34b09:	dc 0c c5 80 9b 03 00 	fmull  0x39b80(,%eax,8)
   34b10:	d9 c9                	fxch   %st(1)
   34b12:	89 45 88             	mov    %eax,-0x78(%ebp)
   34b15:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
   34b19:	8d 57 01             	lea    0x1(%edi),%edx
   34b1c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
   34b1f:	b4 0c                	mov    $0xc,%ah
   34b21:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
   34b25:	d9 6d d0             	fldcw  -0x30(%ebp)
   34b28:	db 55 d4             	fistl  -0x2c(%ebp)
   34b2b:	d9 6d d2             	fldcw  -0x2e(%ebp)
   34b2e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   34b31:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   34b34:	83 c0 30             	add    $0x30,%eax
   34b37:	83 f9 01             	cmp    $0x1,%ecx
   34b3a:	db 45 d4             	fildl  -0x2c(%ebp)
   34b3d:	de e9                	fsubrp %st,%st(1)
   34b3f:	88 07                	mov    %al,(%edi)
   34b41:	89 d0                	mov    %edx,%eax
   34b43:	74 37                	je     34b7c <_dtoa_r+0xc3c>
   34b45:	d9 05 a0 9a 03 00    	flds   0x39aa0
   34b4b:	eb 05                	jmp    34b52 <_dtoa_r+0xc12>
   34b4d:	8d 76 00             	lea    0x0(%esi),%esi
   34b50:	d9 c9                	fxch   %st(1)
   34b52:	dc c9                	fmul   %st,%st(1)
   34b54:	d9 c9                	fxch   %st(1)
   34b56:	83 c0 01             	add    $0x1,%eax
   34b59:	d9 6d d0             	fldcw  -0x30(%ebp)
   34b5c:	db 55 d4             	fistl  -0x2c(%ebp)
   34b5f:	d9 6d d2             	fldcw  -0x2e(%ebp)
   34b62:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
   34b65:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   34b68:	83 c1 30             	add    $0x30,%ecx
   34b6b:	39 d8                	cmp    %ebx,%eax
   34b6d:	db 45 d4             	fildl  -0x2c(%ebp)
   34b70:	de e9                	fsubrp %st,%st(1)
   34b72:	88 48 ff             	mov    %cl,-0x1(%eax)
   34b75:	75 d9                	jne    34b50 <_dtoa_r+0xc10>
   34b77:	dd d9                	fstp   %st(1)
   34b79:	03 55 88             	add    -0x78(%ebp),%edx
   34b7c:	d9 05 ac 9a 03 00    	flds   0x39aac
   34b82:	d9 c2                	fld    %st(2)
   34b84:	d8 c1                	fadd   %st(1),%st
   34b86:	d9 ca                	fxch   %st(2)
   34b88:	db ea                	fucomi %st(2),%st
   34b8a:	dd da                	fstp   %st(2)
   34b8c:	0f 86 7f 03 00 00    	jbe    34f11 <_dtoa_r+0xfd1>
   34b92:	dd d8                	fstp   %st(0)
   34b94:	dd d8                	fstp   %st(0)
   34b96:	dd d8                	fstp   %st(0)
   34b98:	dd d8                	fstp   %st(0)
   34b9a:	89 fb                	mov    %edi,%ebx
   34b9c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
   34ba0:	89 d7                	mov    %edx,%edi
   34ba2:	e9 d7 f9 ff ff       	jmp    3457e <_dtoa_r+0x63e>
   34ba7:	90                   	nop
   34ba8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
   34bab:	8b 41 10             	mov    0x10(%ecx),%eax
   34bae:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
   34bb2:	89 04 24             	mov    %eax,(%esp)
   34bb5:	e8 56 11 00 00       	call   35d10 <__hi0bits>
   34bba:	ba 20 00 00 00       	mov    $0x20,%edx
   34bbf:	29 c2                	sub    %eax,%edx
   34bc1:	e9 bb fa ff ff       	jmp    34681 <_dtoa_r+0x741>
   34bc6:	66 90                	xchg   %ax,%ax
   34bc8:	8b 45 b0             	mov    -0x50(%ebp),%eax
   34bcb:	89 44 24 04          	mov    %eax,0x4(%esp)
   34bcf:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34bd2:	89 04 24             	mov    %eax,(%esp)
   34bd5:	e8 56 16 00 00       	call   36230 <__mcmp>
   34bda:	85 c0                	test   %eax,%eax
   34bdc:	0f 89 13 fb ff ff    	jns    346f5 <_dtoa_r+0x7b5>
   34be2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34be5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34bec:	00 
   34bed:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34bf4:	00 
   34bf5:	89 34 24             	mov    %esi,(%esp)
   34bf8:	89 44 24 04          	mov    %eax,0x4(%esp)
   34bfc:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
   34c00:	e8 2b 0f 00 00       	call   35b30 <__multadd>
   34c05:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   34c08:	85 c9                	test   %ecx,%ecx
   34c0a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   34c0d:	0f 85 8d 00 00 00    	jne    34ca0 <_dtoa_r+0xd60>
   34c13:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
   34c17:	8b 45 90             	mov    -0x70(%ebp),%eax
   34c1a:	7f 0a                	jg     34c26 <_dtoa_r+0xce6>
   34c1c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   34c20:	0f 8f ff 04 00 00    	jg     35125 <_dtoa_r+0x11e5>
   34c26:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34c29:	e9 ed fc ff ff       	jmp    3491b <_dtoa_r+0x9db>
   34c2e:	66 90                	xchg   %ax,%ax
   34c30:	8b 5d a8             	mov    -0x58(%ebp),%ebx
   34c33:	85 db                	test   %ebx,%ebx
   34c35:	0f 85 aa fc ff ff    	jne    348e5 <_dtoa_r+0x9a5>
   34c3b:	d8 0d a8 9a 03 00    	fmuls  0x39aa8
   34c41:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
   34c48:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
   34c4f:	dd 45 c0             	fldl   -0x40(%ebp)
   34c52:	d9 c9                	fxch   %st(1)
   34c54:	df e9                	fucomip %st(1),%st
   34c56:	dd d8                	fstp   %st(0)
   34c58:	0f 83 97 fc ff ff    	jae    348f5 <_dtoa_r+0x9b5>
   34c5e:	e9 eb fa ff ff       	jmp    3474e <_dtoa_r+0x80e>
   34c63:	90                   	nop
   34c64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34c68:	8b 45 c0             	mov    -0x40(%ebp),%eax
   34c6b:	85 c0                	test   %eax,%eax
   34c6d:	0f 85 fe f9 ff ff    	jne    34671 <_dtoa_r+0x731>
   34c73:	8b 45 c4             	mov    -0x3c(%ebp),%eax
   34c76:	a9 ff ff 0f 00       	test   $0xfffff,%eax
   34c7b:	0f 85 f0 f9 ff ff    	jne    34671 <_dtoa_r+0x731>
   34c81:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
   34c86:	0f 84 e5 f9 ff ff    	je     34671 <_dtoa_r+0x731>
   34c8c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
   34c90:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
   34c94:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
   34c9b:	e9 d1 f9 ff ff       	jmp    34671 <_dtoa_r+0x731>
   34ca0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34ca3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34caa:	00 
   34cab:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34cb2:	00 
   34cb3:	89 34 24             	mov    %esi,(%esp)
   34cb6:	89 44 24 04          	mov    %eax,0x4(%esp)
   34cba:	e8 71 0e 00 00       	call   35b30 <__multadd>
   34cbf:	8b 55 90             	mov    -0x70(%ebp),%edx
   34cc2:	85 d2                	test   %edx,%edx
   34cc4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34cc7:	8b 45 90             	mov    -0x70(%ebp),%eax
   34cca:	7f 0a                	jg     34cd6 <_dtoa_r+0xd96>
   34ccc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
   34cd0:	0f 8f 4f 04 00 00    	jg     35125 <_dtoa_r+0x11e5>
   34cd6:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34cd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   34ce0:	85 db                	test   %ebx,%ebx
   34ce2:	7e 16                	jle    34cfa <_dtoa_r+0xdba>
   34ce4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34ce7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   34ceb:	89 34 24             	mov    %esi,(%esp)
   34cee:	89 44 24 04          	mov    %eax,0x4(%esp)
   34cf2:	e8 19 14 00 00       	call   36110 <__lshift>
   34cf7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34cfa:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
   34cfd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34d00:	85 db                	test   %ebx,%ebx
   34d02:	89 45 ac             	mov    %eax,-0x54(%ebp)
   34d05:	0f 85 11 03 00 00    	jne    3501c <_dtoa_r+0x10dc>
   34d0b:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34d0e:	8d 5f 01             	lea    0x1(%edi),%ebx
   34d11:	89 7d 8c             	mov    %edi,-0x74(%ebp)
   34d14:	01 f8                	add    %edi,%eax
   34d16:	8b 7d a4             	mov    -0x5c(%ebp),%edi
   34d19:	89 45 90             	mov    %eax,-0x70(%ebp)
   34d1c:	8b 45 c0             	mov    -0x40(%ebp),%eax
   34d1f:	83 e0 01             	and    $0x1,%eax
   34d22:	89 45 9c             	mov    %eax,-0x64(%ebp)
   34d25:	eb 2e                	jmp    34d55 <_dtoa_r+0xe15>
   34d27:	90                   	nop
   34d28:	e8 03 0e 00 00       	call   35b30 <__multadd>
   34d2d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34d34:	00 
   34d35:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34d3c:	00 
   34d3d:	89 34 24             	mov    %esi,(%esp)
   34d40:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34d43:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34d46:	89 44 24 04          	mov    %eax,0x4(%esp)
   34d4a:	e8 e1 0d 00 00       	call   35b30 <__multadd>
   34d4f:	89 45 ac             	mov    %eax,-0x54(%ebp)
   34d52:	83 c3 01             	add    $0x1,%ebx
   34d55:	8b 55 b0             	mov    -0x50(%ebp),%edx
   34d58:	8d 43 ff             	lea    -0x1(%ebx),%eax
   34d5b:	89 45 98             	mov    %eax,-0x68(%ebp)
   34d5e:	89 f8                	mov    %edi,%eax
   34d60:	e8 0b f0 ff ff       	call   33d70 <quorem>
   34d65:	89 3c 24             	mov    %edi,(%esp)
   34d68:	8d 48 30             	lea    0x30(%eax),%ecx
   34d6b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
   34d6e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
   34d71:	89 45 94             	mov    %eax,-0x6c(%ebp)
   34d74:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   34d78:	e8 b3 14 00 00       	call   36230 <__mcmp>
   34d7d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
   34d80:	89 34 24             	mov    %esi,(%esp)
   34d83:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   34d87:	89 45 c0             	mov    %eax,-0x40(%ebp)
   34d8a:	8b 45 b0             	mov    -0x50(%ebp),%eax
   34d8d:	89 44 24 04          	mov    %eax,0x4(%esp)
   34d91:	e8 ea 14 00 00       	call   36280 <__mdiff>
   34d96:	8b 48 0c             	mov    0xc(%eax),%ecx
   34d99:	89 c2                	mov    %eax,%edx
   34d9b:	85 c9                	test   %ecx,%ecx
   34d9d:	0f 85 c5 00 00 00    	jne    34e68 <_dtoa_r+0xf28>
   34da3:	89 44 24 04          	mov    %eax,0x4(%esp)
   34da7:	89 3c 24             	mov    %edi,(%esp)
   34daa:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34dad:	e8 7e 14 00 00       	call   36230 <__mcmp>
   34db2:	8b 55 a8             	mov    -0x58(%ebp),%edx
   34db5:	89 54 24 04          	mov    %edx,0x4(%esp)
   34db9:	89 34 24             	mov    %esi,(%esp)
   34dbc:	89 45 a8             	mov    %eax,-0x58(%ebp)
   34dbf:	e8 4c 0d 00 00       	call   35b10 <_Bfree>
   34dc4:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34dc7:	89 c1                	mov    %eax,%ecx
   34dc9:	0b 4d 14             	or     0x14(%ebp),%ecx
   34dcc:	75 0b                	jne    34dd9 <_dtoa_r+0xe99>
   34dce:	8b 55 9c             	mov    -0x64(%ebp),%edx
   34dd1:	85 d2                	test   %edx,%edx
   34dd3:	0f 84 fb 02 00 00    	je     350d4 <_dtoa_r+0x1194>
   34dd9:	8b 55 c0             	mov    -0x40(%ebp),%edx
   34ddc:	85 d2                	test   %edx,%edx
   34dde:	0f 88 7f 01 00 00    	js     34f63 <_dtoa_r+0x1023>
   34de4:	8b 4d c0             	mov    -0x40(%ebp),%ecx
   34de7:	0b 4d 14             	or     0x14(%ebp),%ecx
   34dea:	75 0b                	jne    34df7 <_dtoa_r+0xeb7>
   34dec:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
   34def:	85 c9                	test   %ecx,%ecx
   34df1:	0f 84 6c 01 00 00    	je     34f63 <_dtoa_r+0x1023>
   34df7:	85 c0                	test   %eax,%eax
   34df9:	0f 8f 82 02 00 00    	jg     35081 <_dtoa_r+0x1141>
   34dff:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
   34e03:	89 da                	mov    %ebx,%edx
   34e05:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
   34e08:	88 43 ff             	mov    %al,-0x1(%ebx)
   34e0b:	0f 84 8d 02 00 00    	je     3509e <_dtoa_r+0x115e>
   34e11:	89 7c 24 04          	mov    %edi,0x4(%esp)
   34e15:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34e1c:	00 
   34e1d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34e24:	00 
   34e25:	89 34 24             	mov    %esi,(%esp)
   34e28:	e8 03 0d 00 00       	call   35b30 <__multadd>
   34e2d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   34e34:	00 
   34e35:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   34e3c:	00 
   34e3d:	89 34 24             	mov    %esi,(%esp)
   34e40:	89 c7                	mov    %eax,%edi
   34e42:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34e45:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
   34e48:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34e4b:	89 44 24 04          	mov    %eax,0x4(%esp)
   34e4f:	0f 85 d3 fe ff ff    	jne    34d28 <_dtoa_r+0xde8>
   34e55:	e8 d6 0c 00 00       	call   35b30 <__multadd>
   34e5a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34e5d:	89 45 ac             	mov    %eax,-0x54(%ebp)
   34e60:	e9 ed fe ff ff       	jmp    34d52 <_dtoa_r+0xe12>
   34e65:	8d 76 00             	lea    0x0(%esi),%esi
   34e68:	b8 01 00 00 00       	mov    $0x1,%eax
   34e6d:	e9 43 ff ff ff       	jmp    34db5 <_dtoa_r+0xe75>
   34e72:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
   34e79:	e9 d2 f2 ff ff       	jmp    34150 <_dtoa_r+0x210>
   34e7e:	0f 85 87 f6 ff ff    	jne    3450b <_dtoa_r+0x5cb>
   34e84:	dd d8                	fstp   %st(0)
   34e86:	dd d8                	fstp   %st(0)
   34e88:	dd d8                	fstp   %st(0)
   34e8a:	89 fb                	mov    %edi,%ebx
   34e8c:	8b 7d c0             	mov    -0x40(%ebp),%edi
   34e8f:	e9 fc f8 ff ff       	jmp    34790 <_dtoa_r+0x850>
   34e94:	89 c2                	mov    %eax,%edx
   34e96:	2b 55 b0             	sub    -0x50(%ebp),%edx
   34e99:	89 45 b0             	mov    %eax,-0x50(%ebp)
   34e9c:	01 55 94             	add    %edx,-0x6c(%ebp)
   34e9f:	31 d2                	xor    %edx,%edx
   34ea1:	e9 b8 f9 ff ff       	jmp    3485e <_dtoa_r+0x91e>
   34ea6:	8b 45 a8             	mov    -0x58(%ebp),%eax
   34ea9:	85 c0                	test   %eax,%eax
   34eab:	0f 84 f3 f9 ff ff    	je     348a4 <_dtoa_r+0x964>
   34eb1:	8b 45 90             	mov    -0x70(%ebp),%eax
   34eb4:	85 c0                	test   %eax,%eax
   34eb6:	0f 8e c4 fb ff ff    	jle    34a80 <_dtoa_r+0xb40>
   34ebc:	d8 0d a0 9a 03 00    	fmuls  0x39aa0
   34ec2:	83 c1 01             	add    $0x1,%ecx
   34ec5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
   34ec8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
   34ecb:	89 c1                	mov    %eax,%ecx
   34ecd:	83 eb 01             	sub    $0x1,%ebx
   34ed0:	db 45 d4             	fildl  -0x2c(%ebp)
   34ed3:	d8 c9                	fmul   %st(1),%st
   34ed5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
   34ed8:	d8 05 a4 9a 03 00    	fadds  0x39aa4
   34ede:	dd 5d c0             	fstpl  -0x40(%ebp)
   34ee1:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
   34ee8:	e9 53 f4 ff ff       	jmp    34340 <_dtoa_r+0x400>
   34eed:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34ef0:	c6 03 30             	movb   $0x30,(%ebx)
   34ef3:	83 c0 01             	add    $0x1,%eax
   34ef6:	89 45 b8             	mov    %eax,-0x48(%ebp)
   34ef9:	b8 31 00 00 00       	mov    $0x31,%eax
   34efe:	88 02                	mov    %al,(%edx)
   34f00:	e9 8b f8 ff ff       	jmp    34790 <_dtoa_r+0x850>
   34f05:	d9 c0                	fld    %st(0)
   34f07:	b9 02 00 00 00       	mov    $0x2,%ecx
   34f0c:	e9 f2 f3 ff ff       	jmp    34303 <_dtoa_r+0x3c3>
   34f11:	de e2                	fsubp  %st,%st(2)
   34f13:	d9 c9                	fxch   %st(1)
   34f15:	df e9                	fucomip %st(1),%st
   34f17:	dd d8                	fstp   %st(0)
   34f19:	0f 86 69 fb ff ff    	jbe    34a88 <_dtoa_r+0xb48>
   34f1f:	dd d8                	fstp   %st(0)
   34f21:	eb 07                	jmp    34f2a <_dtoa_r+0xfea>
   34f23:	90                   	nop
   34f24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34f28:	89 c2                	mov    %eax,%edx
   34f2a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
   34f2e:	8d 42 ff             	lea    -0x1(%edx),%eax
   34f31:	74 f5                	je     34f28 <_dtoa_r+0xfe8>
   34f33:	e9 d9 f4 ff ff       	jmp    34411 <_dtoa_r+0x4d1>
   34f38:	c6 07 31             	movb   $0x31,(%edi)
   34f3b:	89 fb                	mov    %edi,%ebx
   34f3d:	89 d7                	mov    %edx,%edi
   34f3f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
   34f43:	e9 1a f8 ff ff       	jmp    34762 <_dtoa_r+0x822>
   34f48:	8b 55 8c             	mov    -0x74(%ebp),%edx
   34f4b:	85 d2                	test   %edx,%edx
   34f4d:	0f 84 1b 01 00 00    	je     3506e <_dtoa_r+0x112e>
   34f53:	05 33 04 00 00       	add    $0x433,%eax
   34f58:	8b 55 b0             	mov    -0x50(%ebp),%edx
   34f5b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   34f5e:	e9 0b f9 ff ff       	jmp    3486e <_dtoa_r+0x92e>
   34f63:	85 c0                	test   %eax,%eax
   34f65:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   34f68:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   34f6b:	7e 45                	jle    34fb2 <_dtoa_r+0x1072>
   34f6d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
   34f70:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   34f77:	00 
   34f78:	89 34 24             	mov    %esi,(%esp)
   34f7b:	89 44 24 04          	mov    %eax,0x4(%esp)
   34f7f:	e8 8c 11 00 00       	call   36110 <__lshift>
   34f84:	8b 5d b0             	mov    -0x50(%ebp),%ebx
   34f87:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   34f8b:	89 04 24             	mov    %eax,(%esp)
   34f8e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
   34f91:	e8 9a 12 00 00       	call   36230 <__mcmp>
   34f96:	83 f8 00             	cmp    $0x0,%eax
   34f99:	0f 8e 5b 01 00 00    	jle    350fa <_dtoa_r+0x11ba>
   34f9f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
   34fa3:	0f 84 0c 01 00 00    	je     350b5 <_dtoa_r+0x1175>
   34fa9:	8b 45 94             	mov    -0x6c(%ebp),%eax
   34fac:	83 c0 31             	add    $0x31,%eax
   34faf:	89 45 a0             	mov    %eax,-0x60(%ebp)
   34fb2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   34fb5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
   34fb9:	89 cb                	mov    %ecx,%ebx
   34fbb:	88 03                	mov    %al,(%ebx)
   34fbd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   34fc0:	89 fb                	mov    %edi,%ebx
   34fc2:	8d 79 01             	lea    0x1(%ecx),%edi
   34fc5:	89 45 c0             	mov    %eax,-0x40(%ebp)
   34fc8:	8b 45 ac             	mov    -0x54(%ebp),%eax
   34fcb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   34fce:	e9 8f f7 ff ff       	jmp    34762 <_dtoa_r+0x822>
   34fd3:	dd d8                	fstp   %st(0)
   34fd5:	dd d8                	fstp   %st(0)
   34fd7:	dd d8                	fstp   %st(0)
   34fd9:	eb 0d                	jmp    34fe8 <_dtoa_r+0x10a8>
   34fdb:	90                   	nop
   34fdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   34fe0:	dd d8                	fstp   %st(0)
   34fe2:	dd d8                	fstp   %st(0)
   34fe4:	dd d8                	fstp   %st(0)
   34fe6:	dd d8                	fstp   %st(0)
   34fe8:	89 fb                	mov    %edi,%ebx
   34fea:	89 d7                	mov    %edx,%edi
   34fec:	e9 8d f5 ff ff       	jmp    3457e <_dtoa_r+0x63e>
   34ff1:	29 cb                	sub    %ecx,%ebx
   34ff3:	31 c0                	xor    %eax,%eax
   34ff5:	e9 74 f8 ff ff       	jmp    3486e <_dtoa_r+0x92e>
   34ffa:	75 0e                	jne    3500a <_dtoa_r+0x10ca>
   34ffc:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
   35000:	74 08                	je     3500a <_dtoa_r+0x10ca>
   35002:	e9 b2 f9 ff ff       	jmp    349b9 <_dtoa_r+0xa79>
   35007:	90                   	nop
   35008:	89 c2                	mov    %eax,%edx
   3500a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
   3500e:	8d 42 ff             	lea    -0x1(%edx),%eax
   35011:	74 f5                	je     35008 <_dtoa_r+0x10c8>
   35013:	89 fb                	mov    %edi,%ebx
   35015:	89 d7                	mov    %edx,%edi
   35017:	e9 46 f7 ff ff       	jmp    34762 <_dtoa_r+0x822>
   3501c:	8b 40 04             	mov    0x4(%eax),%eax
   3501f:	89 34 24             	mov    %esi,(%esp)
   35022:	89 44 24 04          	mov    %eax,0x4(%esp)
   35026:	e8 45 0a 00 00       	call   35a70 <_Balloc>
   3502b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
   3502e:	89 c3                	mov    %eax,%ebx
   35030:	8b 41 10             	mov    0x10(%ecx),%eax
   35033:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
   3503a:	89 44 24 08          	mov    %eax,0x8(%esp)
   3503e:	89 c8                	mov    %ecx,%eax
   35040:	83 c0 0c             	add    $0xc,%eax
   35043:	89 44 24 04          	mov    %eax,0x4(%esp)
   35047:	8d 43 0c             	lea    0xc(%ebx),%eax
   3504a:	89 04 24             	mov    %eax,(%esp)
   3504d:	e8 62 cc ff ff       	call   31cb4 <memcpy>
   35052:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
   35059:	00 
   3505a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   3505e:	89 34 24             	mov    %esi,(%esp)
   35061:	e8 aa 10 00 00       	call   36110 <__lshift>
   35066:	89 45 ac             	mov    %eax,-0x54(%ebp)
   35069:	e9 9d fc ff ff       	jmp    34d0b <_dtoa_r+0xdcb>
   3506e:	b8 36 00 00 00       	mov    $0x36,%eax
   35073:	8b 55 b0             	mov    -0x50(%ebp),%edx
   35076:	2b 45 e0             	sub    -0x20(%ebp),%eax
   35079:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   3507c:	e9 ed f7 ff ff       	jmp    3486e <_dtoa_r+0x92e>
   35081:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
   35085:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   35088:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   3508b:	74 28                	je     350b5 <_dtoa_r+0x1175>
   3508d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
   35091:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   35094:	83 c0 01             	add    $0x1,%eax
   35097:	89 cb                	mov    %ecx,%ebx
   35099:	e9 1d ff ff ff       	jmp    34fbb <_dtoa_r+0x107b>
   3509e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   350a1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   350a4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   350a7:	89 45 c0             	mov    %eax,-0x40(%ebp)
   350aa:	8b 45 ac             	mov    -0x54(%ebp),%eax
   350ad:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   350b0:	e9 cc f8 ff ff       	jmp    34981 <_dtoa_r+0xa41>
   350b5:	8b 45 98             	mov    -0x68(%ebp),%eax
   350b8:	b9 39 00 00 00       	mov    $0x39,%ecx
   350bd:	8d 50 01             	lea    0x1(%eax),%edx
   350c0:	c6 00 39             	movb   $0x39,(%eax)
   350c3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
   350c6:	89 45 c0             	mov    %eax,-0x40(%ebp)
   350c9:	8b 45 ac             	mov    -0x54(%ebp),%eax
   350cc:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   350cf:	e9 fa f8 ff ff       	jmp    349ce <_dtoa_r+0xa8e>
   350d4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
   350d7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
   350da:	8b 7d 8c             	mov    -0x74(%ebp),%edi
   350dd:	83 fb 39             	cmp    $0x39,%ebx
   350e0:	74 d3                	je     350b5 <_dtoa_r+0x1175>
   350e2:	8b 4d c0             	mov    -0x40(%ebp),%ecx
   350e5:	8b 45 94             	mov    -0x6c(%ebp),%eax
   350e8:	83 c0 31             	add    $0x31,%eax
   350eb:	85 c9                	test   %ecx,%ecx
   350ed:	8b 4d 98             	mov    -0x68(%ebp),%ecx
   350f0:	0f 4e c3             	cmovle %ebx,%eax
   350f3:	89 cb                	mov    %ecx,%ebx
   350f5:	e9 c1 fe ff ff       	jmp    34fbb <_dtoa_r+0x107b>
   350fa:	0f 85 b2 fe ff ff    	jne    34fb2 <_dtoa_r+0x1072>
   35100:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
   35104:	0f 84 a8 fe ff ff    	je     34fb2 <_dtoa_r+0x1072>
   3510a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35110:	e9 8a fe ff ff       	jmp    34f9f <_dtoa_r+0x105f>
   35115:	0f 85 c7 f3 ff ff    	jne    344e2 <_dtoa_r+0x5a2>
   3511b:	dd d8                	fstp   %st(0)
   3511d:	dd d8                	fstp   %st(0)
   3511f:	90                   	nop
   35120:	e9 65 fd ff ff       	jmp    34e8a <_dtoa_r+0xf4a>
   35125:	89 45 a8             	mov    %eax,-0x58(%ebp)
   35128:	e9 dd f5 ff ff       	jmp    3470a <_dtoa_r+0x7ca>
   3512d:	8d 76 00             	lea    0x0(%esi),%esi
   35130:	0f 84 7a f5 ff ff    	je     346b0 <_dtoa_r+0x770>
   35136:	b8 3c 00 00 00       	mov    $0x3c,%eax
   3513b:	29 d0                	sub    %edx,%eax
   3513d:	e9 ab f8 ff ff       	jmp    349ed <_dtoa_r+0xaad>
   35142:	b8 01 00 00 00       	mov    $0x1,%eax
   35147:	e9 d9 ef ff ff       	jmp    34125 <_dtoa_r+0x1e5>
   3514c:	31 d2                	xor    %edx,%edx
   3514e:	e9 36 f1 ff ff       	jmp    34289 <_dtoa_r+0x349>
   35153:	66 90                	xchg   %ax,%ax
   35155:	66 90                	xchg   %ax,%ax
   35157:	66 90                	xchg   %ax,%ax
   35159:	66 90                	xchg   %ax,%ax
   3515b:	66 90                	xchg   %ax,%ax
   3515d:	66 90                	xchg   %ax,%ax
   3515f:	90                   	nop

00035160 <_setlocale_r>:
   35160:	55                   	push   %ebp
   35161:	89 e5                	mov    %esp,%ebp
   35163:	53                   	push   %ebx
   35164:	83 ec 14             	sub    $0x14,%esp
   35167:	8b 5d 10             	mov    0x10(%ebp),%ebx
   3516a:	85 db                	test   %ebx,%ebx
   3516c:	74 14                	je     35182 <_setlocale_r+0x22>
   3516e:	c7 44 24 04 c8 9a 03 	movl   $0x39ac8,0x4(%esp)
   35175:	00 
   35176:	89 1c 24             	mov    %ebx,(%esp)
   35179:	e8 82 17 00 00       	call   36900 <strcmp>
   3517e:	85 c0                	test   %eax,%eax
   35180:	75 0e                	jne    35190 <_setlocale_r+0x30>
   35182:	83 c4 14             	add    $0x14,%esp
   35185:	b8 c4 98 03 00       	mov    $0x398c4,%eax
   3518a:	5b                   	pop    %ebx
   3518b:	5d                   	pop    %ebp
   3518c:	c3                   	ret    
   3518d:	8d 76 00             	lea    0x0(%esi),%esi
   35190:	c7 44 24 04 c4 98 03 	movl   $0x398c4,0x4(%esp)
   35197:	00 
   35198:	89 1c 24             	mov    %ebx,(%esp)
   3519b:	e8 60 17 00 00       	call   36900 <strcmp>
   351a0:	85 c0                	test   %eax,%eax
   351a2:	74 de                	je     35182 <_setlocale_r+0x22>
   351a4:	89 1c 24             	mov    %ebx,(%esp)
   351a7:	c7 44 24 04 fe 98 03 	movl   $0x398fe,0x4(%esp)
   351ae:	00 
   351af:	e8 4c 17 00 00       	call   36900 <strcmp>
   351b4:	89 c2                	mov    %eax,%edx
   351b6:	31 c0                	xor    %eax,%eax
   351b8:	85 d2                	test   %edx,%edx
   351ba:	ba c4 98 03 00       	mov    $0x398c4,%edx
   351bf:	0f 44 c2             	cmove  %edx,%eax
   351c2:	83 c4 14             	add    $0x14,%esp
   351c5:	5b                   	pop    %ebx
   351c6:	5d                   	pop    %ebp
   351c7:	c3                   	ret    
   351c8:	90                   	nop
   351c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000351d0 <__locale_charset>:
   351d0:	55                   	push   %ebp
   351d1:	b8 c0 d4 03 00       	mov    $0x3d4c0,%eax
   351d6:	89 e5                	mov    %esp,%ebp
   351d8:	5d                   	pop    %ebp
   351d9:	c3                   	ret    
   351da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000351e0 <__locale_mb_cur_max>:
   351e0:	55                   	push   %ebp
   351e1:	a1 18 d5 03 00       	mov    0x3d518,%eax
   351e6:	89 e5                	mov    %esp,%ebp
   351e8:	5d                   	pop    %ebp
   351e9:	c3                   	ret    
   351ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000351f0 <__locale_msgcharset>:
   351f0:	55                   	push   %ebp
   351f1:	b8 a0 d4 03 00       	mov    $0x3d4a0,%eax
   351f6:	89 e5                	mov    %esp,%ebp
   351f8:	5d                   	pop    %ebp
   351f9:	c3                   	ret    
   351fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00035200 <__locale_cjk_lang>:
   35200:	55                   	push   %ebp
   35201:	31 c0                	xor    %eax,%eax
   35203:	89 e5                	mov    %esp,%ebp
   35205:	5d                   	pop    %ebp
   35206:	c3                   	ret    
   35207:	89 f6                	mov    %esi,%esi
   35209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00035210 <_localeconv_r>:
   35210:	55                   	push   %ebp
   35211:	b8 e0 d4 03 00       	mov    $0x3d4e0,%eax
   35216:	89 e5                	mov    %esp,%ebp
   35218:	5d                   	pop    %ebp
   35219:	c3                   	ret    
   3521a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00035220 <setlocale>:
   35220:	55                   	push   %ebp
   35221:	89 e5                	mov    %esp,%ebp
   35223:	83 ec 18             	sub    $0x18,%esp
   35226:	e8 35 cc ff ff       	call   31e60 <__getreent>
   3522b:	8b 55 0c             	mov    0xc(%ebp),%edx
   3522e:	89 54 24 08          	mov    %edx,0x8(%esp)
   35232:	8b 55 08             	mov    0x8(%ebp),%edx
   35235:	89 04 24             	mov    %eax,(%esp)
   35238:	89 54 24 04          	mov    %edx,0x4(%esp)
   3523c:	e8 1f ff ff ff       	call   35160 <_setlocale_r>
   35241:	c9                   	leave  
   35242:	c3                   	ret    
   35243:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00035250 <localeconv>:
   35250:	55                   	push   %ebp
   35251:	89 e5                	mov    %esp,%ebp
   35253:	83 ec 08             	sub    $0x8,%esp
   35256:	e8 05 cc ff ff       	call   31e60 <__getreent>
   3525b:	b8 e0 d4 03 00       	mov    $0x3d4e0,%eax
   35260:	c9                   	leave  
   35261:	c3                   	ret    
   35262:	66 90                	xchg   %ax,%ax
   35264:	66 90                	xchg   %ax,%ax
   35266:	66 90                	xchg   %ax,%ax
   35268:	66 90                	xchg   %ax,%ax
   3526a:	66 90                	xchg   %ax,%ax
   3526c:	66 90                	xchg   %ax,%ax
   3526e:	66 90                	xchg   %ax,%ax

00035270 <_malloc_r>:
   35270:	55                   	push   %ebp
   35271:	89 e5                	mov    %esp,%ebp
   35273:	57                   	push   %edi
   35274:	56                   	push   %esi
   35275:	53                   	push   %ebx
   35276:	83 ec 2c             	sub    $0x2c,%esp
   35279:	8b 45 0c             	mov    0xc(%ebp),%eax
   3527c:	8d 50 0b             	lea    0xb(%eax),%edx
   3527f:	83 fa 16             	cmp    $0x16,%edx
   35282:	76 6c                	jbe    352f0 <_malloc_r+0x80>
   35284:	89 d7                	mov    %edx,%edi
   35286:	83 e7 f8             	and    $0xfffffff8,%edi
   35289:	89 fe                	mov    %edi,%esi
   3528b:	c1 ee 1f             	shr    $0x1f,%esi
   3528e:	39 c7                	cmp    %eax,%edi
   35290:	8b 45 08             	mov    0x8(%ebp),%eax
   35293:	89 f2                	mov    %esi,%edx
   35295:	72 67                	jb     352fe <_malloc_r+0x8e>
   35297:	84 d2                	test   %dl,%dl
   35299:	75 63                	jne    352fe <_malloc_r+0x8e>
   3529b:	89 04 24             	mov    %eax,(%esp)
   3529e:	e8 ad 07 00 00       	call   35a50 <__malloc_lock>
   352a3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
   352a9:	77 65                	ja     35310 <_malloc_r+0xa0>
   352ab:	89 fa                	mov    %edi,%edx
   352ad:	c1 ea 03             	shr    $0x3,%edx
   352b0:	8d 04 d5 40 d5 03 00 	lea    0x3d540(,%edx,8),%eax
   352b7:	8b 58 0c             	mov    0xc(%eax),%ebx
   352ba:	39 c3                	cmp    %eax,%ebx
   352bc:	0f 84 3e 05 00 00    	je     35800 <_malloc_r+0x590>
   352c2:	8b 43 04             	mov    0x4(%ebx),%eax
   352c5:	83 e0 fc             	and    $0xfffffffc,%eax
   352c8:	8b 53 0c             	mov    0xc(%ebx),%edx
   352cb:	8b 4b 08             	mov    0x8(%ebx),%ecx
   352ce:	89 51 0c             	mov    %edx,0xc(%ecx)
   352d1:	89 4a 08             	mov    %ecx,0x8(%edx)
   352d4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
   352d9:	8b 45 08             	mov    0x8(%ebp),%eax
   352dc:	89 04 24             	mov    %eax,(%esp)
   352df:	e8 7c 07 00 00       	call   35a60 <__malloc_unlock>
   352e4:	8d 43 08             	lea    0x8(%ebx),%eax
   352e7:	83 c4 2c             	add    $0x2c,%esp
   352ea:	5b                   	pop    %ebx
   352eb:	5e                   	pop    %esi
   352ec:	5f                   	pop    %edi
   352ed:	5d                   	pop    %ebp
   352ee:	c3                   	ret    
   352ef:	90                   	nop
   352f0:	bf 10 00 00 00       	mov    $0x10,%edi
   352f5:	31 d2                	xor    %edx,%edx
   352f7:	39 c7                	cmp    %eax,%edi
   352f9:	8b 45 08             	mov    0x8(%ebp),%eax
   352fc:	73 99                	jae    35297 <_malloc_r+0x27>
   352fe:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   35304:	83 c4 2c             	add    $0x2c,%esp
   35307:	31 c0                	xor    %eax,%eax
   35309:	5b                   	pop    %ebx
   3530a:	5e                   	pop    %esi
   3530b:	5f                   	pop    %edi
   3530c:	5d                   	pop    %ebp
   3530d:	c3                   	ret    
   3530e:	66 90                	xchg   %ax,%ax
   35310:	89 fe                	mov    %edi,%esi
   35312:	c1 ee 09             	shr    $0x9,%esi
   35315:	85 f6                	test   %esi,%esi
   35317:	0f 84 ab 01 00 00    	je     354c8 <_malloc_r+0x258>
   3531d:	83 fe 04             	cmp    $0x4,%esi
   35320:	0f 87 8a 03 00 00    	ja     356b0 <_malloc_r+0x440>
   35326:	89 fe                	mov    %edi,%esi
   35328:	c1 ee 06             	shr    $0x6,%esi
   3532b:	83 c6 38             	add    $0x38,%esi
   3532e:	8d 04 36             	lea    (%esi,%esi,1),%eax
   35331:	8d 0c 85 40 d5 03 00 	lea    0x3d540(,%eax,4),%ecx
   35338:	8b 59 0c             	mov    0xc(%ecx),%ebx
   3533b:	39 d9                	cmp    %ebx,%ecx
   3533d:	75 18                	jne    35357 <_malloc_r+0xe7>
   3533f:	eb 28                	jmp    35369 <_malloc_r+0xf9>
   35341:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35348:	85 d2                	test   %edx,%edx
   3534a:	0f 89 78 ff ff ff    	jns    352c8 <_malloc_r+0x58>
   35350:	8b 5b 0c             	mov    0xc(%ebx),%ebx
   35353:	39 d9                	cmp    %ebx,%ecx
   35355:	74 12                	je     35369 <_malloc_r+0xf9>
   35357:	8b 43 04             	mov    0x4(%ebx),%eax
   3535a:	83 e0 fc             	and    $0xfffffffc,%eax
   3535d:	89 c2                	mov    %eax,%edx
   3535f:	29 fa                	sub    %edi,%edx
   35361:	83 fa 0f             	cmp    $0xf,%edx
   35364:	7e e2                	jle    35348 <_malloc_r+0xd8>
   35366:	83 ee 01             	sub    $0x1,%esi
   35369:	8d 46 01             	lea    0x1(%esi),%eax
   3536c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   3536f:	8b 1d 50 d5 03 00    	mov    0x3d550,%ebx
   35375:	a1 44 d5 03 00       	mov    0x3d544,%eax
   3537a:	81 fb 48 d5 03 00    	cmp    $0x3d548,%ebx
   35380:	74 6b                	je     353ed <_malloc_r+0x17d>
   35382:	8b 73 04             	mov    0x4(%ebx),%esi
   35385:	83 e6 fc             	and    $0xfffffffc,%esi
   35388:	89 f0                	mov    %esi,%eax
   3538a:	29 f8                	sub    %edi,%eax
   3538c:	83 f8 0f             	cmp    $0xf,%eax
   3538f:	0f 8f a3 03 00 00    	jg     35738 <_malloc_r+0x4c8>
   35395:	85 c0                	test   %eax,%eax
   35397:	c7 05 54 d5 03 00 48 	movl   $0x3d548,0x3d554
   3539e:	d5 03 00 
   353a1:	c7 05 50 d5 03 00 48 	movl   $0x3d548,0x3d550
   353a8:	d5 03 00 
   353ab:	0f 89 27 01 00 00    	jns    354d8 <_malloc_r+0x268>
   353b1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
   353b7:	0f 87 1b 03 00 00    	ja     356d8 <_malloc_r+0x468>
   353bd:	c1 ee 03             	shr    $0x3,%esi
   353c0:	b8 01 00 00 00       	mov    $0x1,%eax
   353c5:	89 f1                	mov    %esi,%ecx
   353c7:	8d 14 f5 40 d5 03 00 	lea    0x3d540(,%esi,8),%edx
   353ce:	c1 f9 02             	sar    $0x2,%ecx
   353d1:	d3 e0                	shl    %cl,%eax
   353d3:	8b 4a 08             	mov    0x8(%edx),%ecx
   353d6:	0b 05 44 d5 03 00    	or     0x3d544,%eax
   353dc:	89 53 0c             	mov    %edx,0xc(%ebx)
   353df:	89 4b 08             	mov    %ecx,0x8(%ebx)
   353e2:	a3 44 d5 03 00       	mov    %eax,0x3d544
   353e7:	89 5a 08             	mov    %ebx,0x8(%edx)
   353ea:	89 59 0c             	mov    %ebx,0xc(%ecx)
   353ed:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   353f0:	be 01 00 00 00       	mov    $0x1,%esi
   353f5:	c1 f9 02             	sar    $0x2,%ecx
   353f8:	d3 e6                	shl    %cl,%esi
   353fa:	39 c6                	cmp    %eax,%esi
   353fc:	0f 87 f6 00 00 00    	ja     354f8 <_malloc_r+0x288>
   35402:	85 f0                	test   %esi,%eax
   35404:	0f 85 76 03 00 00    	jne    35780 <_malloc_r+0x510>
   3540a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   3540d:	01 f6                	add    %esi,%esi
   3540f:	83 e2 fc             	and    $0xfffffffc,%edx
   35412:	85 f0                	test   %esi,%eax
   35414:	8d 4a 04             	lea    0x4(%edx),%ecx
   35417:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   3541a:	0f 85 60 03 00 00    	jne    35780 <_malloc_r+0x510>
   35420:	89 ca                	mov    %ecx,%edx
   35422:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35428:	01 f6                	add    %esi,%esi
   3542a:	83 c2 04             	add    $0x4,%edx
   3542d:	85 f0                	test   %esi,%eax
   3542f:	74 f7                	je     35428 <_malloc_r+0x1b8>
   35431:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   35434:	89 75 dc             	mov    %esi,-0x24(%ebp)
   35437:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3543a:	8d 34 c5 40 d5 03 00 	lea    0x3d540(,%eax,8),%esi
   35441:	89 f1                	mov    %esi,%ecx
   35443:	89 45 e0             	mov    %eax,-0x20(%ebp)
   35446:	8b 59 0c             	mov    0xc(%ecx),%ebx
   35449:	39 d9                	cmp    %ebx,%ecx
   3544b:	75 1e                	jne    3546b <_malloc_r+0x1fb>
   3544d:	e9 36 03 00 00       	jmp    35788 <_malloc_r+0x518>
   35452:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35458:	85 d2                	test   %edx,%edx
   3545a:	0f 89 c0 03 00 00    	jns    35820 <_malloc_r+0x5b0>
   35460:	8b 5b 0c             	mov    0xc(%ebx),%ebx
   35463:	39 d9                	cmp    %ebx,%ecx
   35465:	0f 84 1d 03 00 00    	je     35788 <_malloc_r+0x518>
   3546b:	8b 43 04             	mov    0x4(%ebx),%eax
   3546e:	83 e0 fc             	and    $0xfffffffc,%eax
   35471:	89 c2                	mov    %eax,%edx
   35473:	29 fa                	sub    %edi,%edx
   35475:	83 fa 0f             	cmp    $0xf,%edx
   35478:	7e de                	jle    35458 <_malloc_r+0x1e8>
   3547a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
   3547d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
   35480:	83 cf 01             	or     $0x1,%edi
   35483:	8b 73 08             	mov    0x8(%ebx),%esi
   35486:	89 7b 04             	mov    %edi,0x4(%ebx)
   35489:	89 4e 0c             	mov    %ecx,0xc(%esi)
   3548c:	89 71 08             	mov    %esi,0x8(%ecx)
   3548f:	89 d1                	mov    %edx,%ecx
   35491:	83 c9 01             	or     $0x1,%ecx
   35494:	a3 54 d5 03 00       	mov    %eax,0x3d554
   35499:	a3 50 d5 03 00       	mov    %eax,0x3d550
   3549e:	c7 40 0c 48 d5 03 00 	movl   $0x3d548,0xc(%eax)
   354a5:	c7 40 08 48 d5 03 00 	movl   $0x3d548,0x8(%eax)
   354ac:	89 48 04             	mov    %ecx,0x4(%eax)
   354af:	89 14 10             	mov    %edx,(%eax,%edx,1)
   354b2:	8b 45 08             	mov    0x8(%ebp),%eax
   354b5:	89 04 24             	mov    %eax,(%esp)
   354b8:	e8 a3 05 00 00       	call   35a60 <__malloc_unlock>
   354bd:	8d 43 08             	lea    0x8(%ebx),%eax
   354c0:	e9 22 fe ff ff       	jmp    352e7 <_malloc_r+0x77>
   354c5:	8d 76 00             	lea    0x0(%esi),%esi
   354c8:	b8 7e 00 00 00       	mov    $0x7e,%eax
   354cd:	be 3f 00 00 00       	mov    $0x3f,%esi
   354d2:	e9 5a fe ff ff       	jmp    35331 <_malloc_r+0xc1>
   354d7:	90                   	nop
   354d8:	8b 45 08             	mov    0x8(%ebp),%eax
   354db:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
   354e0:	89 04 24             	mov    %eax,(%esp)
   354e3:	e8 78 05 00 00       	call   35a60 <__malloc_unlock>
   354e8:	83 c4 2c             	add    $0x2c,%esp
   354eb:	8d 43 08             	lea    0x8(%ebx),%eax
   354ee:	5b                   	pop    %ebx
   354ef:	5e                   	pop    %esi
   354f0:	5f                   	pop    %edi
   354f1:	5d                   	pop    %ebp
   354f2:	c3                   	ret    
   354f3:	90                   	nop
   354f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   354f8:	8b 1d 48 d5 03 00    	mov    0x3d548,%ebx
   354fe:	8b 73 04             	mov    0x4(%ebx),%esi
   35501:	83 e6 fc             	and    $0xfffffffc,%esi
   35504:	39 f7                	cmp    %esi,%edi
   35506:	77 0d                	ja     35515 <_malloc_r+0x2a5>
   35508:	89 f0                	mov    %esi,%eax
   3550a:	29 f8                	sub    %edi,%eax
   3550c:	83 f8 0f             	cmp    $0xf,%eax
   3550f:	0f 8f 6b 01 00 00    	jg     35680 <_malloc_r+0x410>
   35515:	8b 0d 50 00 07 00    	mov    0x70050,%ecx
   3551b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
   3551e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   35521:	01 f9                	add    %edi,%ecx
   35523:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
   35529:	83 c1 10             	add    $0x10,%ecx
   3552c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   35531:	83 3d 20 d5 03 00 ff 	cmpl   $0xffffffff,0x3d520
   35538:	0f 44 c1             	cmove  %ecx,%eax
   3553b:	89 45 e0             	mov    %eax,-0x20(%ebp)
   3553e:	89 44 24 04          	mov    %eax,0x4(%esp)
   35542:	8b 45 08             	mov    0x8(%ebp),%eax
   35545:	89 04 24             	mov    %eax,(%esp)
   35548:	e8 03 13 00 00       	call   36850 <_sbrk_r>
   3554d:	83 f8 ff             	cmp    $0xffffffff,%eax
   35550:	89 c1                	mov    %eax,%ecx
   35552:	0f 84 17 03 00 00    	je     3586f <_malloc_r+0x5ff>
   35558:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
   3555b:	0f 87 02 03 00 00    	ja     35863 <_malloc_r+0x5f3>
   35561:	8b 55 e0             	mov    -0x20(%ebp),%edx
   35564:	03 15 20 00 07 00    	add    0x70020,%edx
   3556a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
   3556d:	89 15 20 00 07 00    	mov    %edx,0x70020
   35573:	0f 84 a9 03 00 00    	je     35922 <_malloc_r+0x6b2>
   35579:	83 3d 20 d5 03 00 ff 	cmpl   $0xffffffff,0x3d520
   35580:	0f 84 ca 03 00 00    	je     35950 <_malloc_r+0x6e0>
   35586:	89 c8                	mov    %ecx,%eax
   35588:	2b 45 e4             	sub    -0x1c(%ebp),%eax
   3558b:	01 d0                	add    %edx,%eax
   3558d:	a3 20 00 07 00       	mov    %eax,0x70020
   35592:	89 c8                	mov    %ecx,%eax
   35594:	ba 00 10 00 00       	mov    $0x1000,%edx
   35599:	83 e0 07             	and    $0x7,%eax
   3559c:	74 0c                	je     355aa <_malloc_r+0x33a>
   3559e:	29 c1                	sub    %eax,%ecx
   355a0:	ba 08 10 00 00       	mov    $0x1008,%edx
   355a5:	8d 49 08             	lea    0x8(%ecx),%ecx
   355a8:	29 c2                	sub    %eax,%edx
   355aa:	8b 45 e0             	mov    -0x20(%ebp),%eax
   355ad:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   355b0:	01 c8                	add    %ecx,%eax
   355b2:	25 ff 0f 00 00       	and    $0xfff,%eax
   355b7:	29 c2                	sub    %eax,%edx
   355b9:	8b 45 08             	mov    0x8(%ebp),%eax
   355bc:	89 54 24 04          	mov    %edx,0x4(%esp)
   355c0:	89 55 e0             	mov    %edx,-0x20(%ebp)
   355c3:	89 04 24             	mov    %eax,(%esp)
   355c6:	e8 85 12 00 00       	call   36850 <_sbrk_r>
   355cb:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   355ce:	83 f8 ff             	cmp    $0xffffffff,%eax
   355d1:	0f 84 6d 03 00 00    	je     35944 <_malloc_r+0x6d4>
   355d7:	8b 55 e0             	mov    -0x20(%ebp),%edx
   355da:	29 c8                	sub    %ecx,%eax
   355dc:	01 d0                	add    %edx,%eax
   355de:	83 c8 01             	or     $0x1,%eax
   355e1:	03 15 20 00 07 00    	add    0x70020,%edx
   355e7:	81 fb 40 d5 03 00    	cmp    $0x3d540,%ebx
   355ed:	89 0d 48 d5 03 00    	mov    %ecx,0x3d548
   355f3:	89 41 04             	mov    %eax,0x4(%ecx)
   355f6:	89 15 20 00 07 00    	mov    %edx,0x70020
   355fc:	0f 84 f2 02 00 00    	je     358f4 <_malloc_r+0x684>
   35602:	83 fe 0f             	cmp    $0xf,%esi
   35605:	0f 86 8d 02 00 00    	jbe    35898 <_malloc_r+0x628>
   3560b:	8b 43 04             	mov    0x4(%ebx),%eax
   3560e:	83 ee 0c             	sub    $0xc,%esi
   35611:	83 e6 f8             	and    $0xfffffff8,%esi
   35614:	83 e0 01             	and    $0x1,%eax
   35617:	09 f0                	or     %esi,%eax
   35619:	83 fe 0f             	cmp    $0xf,%esi
   3561c:	89 43 04             	mov    %eax,0x4(%ebx)
   3561f:	a1 48 d5 03 00       	mov    0x3d548,%eax
   35624:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
   3562b:	00 
   3562c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
   35633:	00 
   35634:	0f 87 a2 02 00 00    	ja     358dc <_malloc_r+0x66c>
   3563a:	3b 15 4c 00 07 00    	cmp    0x7004c,%edx
   35640:	76 06                	jbe    35648 <_malloc_r+0x3d8>
   35642:	89 15 4c 00 07 00    	mov    %edx,0x7004c
   35648:	3b 15 48 00 07 00    	cmp    0x70048,%edx
   3564e:	76 06                	jbe    35656 <_malloc_r+0x3e6>
   35650:	89 15 48 00 07 00    	mov    %edx,0x70048
   35656:	8b 50 04             	mov    0x4(%eax),%edx
   35659:	89 c3                	mov    %eax,%ebx
   3565b:	83 e2 fc             	and    $0xfffffffc,%edx
   3565e:	89 d0                	mov    %edx,%eax
   35660:	29 f8                	sub    %edi,%eax
   35662:	39 d7                	cmp    %edx,%edi
   35664:	77 05                	ja     3566b <_malloc_r+0x3fb>
   35666:	83 f8 0f             	cmp    $0xf,%eax
   35669:	7f 15                	jg     35680 <_malloc_r+0x410>
   3566b:	8b 45 08             	mov    0x8(%ebp),%eax
   3566e:	89 04 24             	mov    %eax,(%esp)
   35671:	e8 ea 03 00 00       	call   35a60 <__malloc_unlock>
   35676:	31 c0                	xor    %eax,%eax
   35678:	e9 6a fc ff ff       	jmp    352e7 <_malloc_r+0x77>
   3567d:	8d 76 00             	lea    0x0(%esi),%esi
   35680:	89 fa                	mov    %edi,%edx
   35682:	83 c8 01             	or     $0x1,%eax
   35685:	83 ca 01             	or     $0x1,%edx
   35688:	89 53 04             	mov    %edx,0x4(%ebx)
   3568b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
   3568e:	89 15 48 d5 03 00    	mov    %edx,0x3d548
   35694:	89 42 04             	mov    %eax,0x4(%edx)
   35697:	8b 45 08             	mov    0x8(%ebp),%eax
   3569a:	89 04 24             	mov    %eax,(%esp)
   3569d:	e8 be 03 00 00       	call   35a60 <__malloc_unlock>
   356a2:	83 c4 2c             	add    $0x2c,%esp
   356a5:	8d 43 08             	lea    0x8(%ebx),%eax
   356a8:	5b                   	pop    %ebx
   356a9:	5e                   	pop    %esi
   356aa:	5f                   	pop    %edi
   356ab:	5d                   	pop    %ebp
   356ac:	c3                   	ret    
   356ad:	8d 76 00             	lea    0x0(%esi),%esi
   356b0:	83 fe 14             	cmp    $0x14,%esi
   356b3:	0f 86 8f 01 00 00    	jbe    35848 <_malloc_r+0x5d8>
   356b9:	83 fe 54             	cmp    $0x54,%esi
   356bc:	0f 87 be 01 00 00    	ja     35880 <_malloc_r+0x610>
   356c2:	89 fe                	mov    %edi,%esi
   356c4:	c1 ee 0c             	shr    $0xc,%esi
   356c7:	83 c6 6e             	add    $0x6e,%esi
   356ca:	8d 04 36             	lea    (%esi,%esi,1),%eax
   356cd:	e9 5f fc ff ff       	jmp    35331 <_malloc_r+0xc1>
   356d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   356d8:	89 f1                	mov    %esi,%ecx
   356da:	c1 e9 09             	shr    $0x9,%ecx
   356dd:	83 f9 04             	cmp    $0x4,%ecx
   356e0:	0f 86 6d 01 00 00    	jbe    35853 <_malloc_r+0x5e3>
   356e6:	83 f9 14             	cmp    $0x14,%ecx
   356e9:	0f 87 0f 02 00 00    	ja     358fe <_malloc_r+0x68e>
   356ef:	83 c1 5b             	add    $0x5b,%ecx
   356f2:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   356f5:	8d 04 85 40 d5 03 00 	lea    0x3d540(,%eax,4),%eax
   356fc:	8b 50 08             	mov    0x8(%eax),%edx
   356ff:	39 c2                	cmp    %eax,%edx
   35701:	0f 84 a1 01 00 00    	je     358a8 <_malloc_r+0x638>
   35707:	90                   	nop
   35708:	8b 4a 04             	mov    0x4(%edx),%ecx
   3570b:	83 e1 fc             	and    $0xfffffffc,%ecx
   3570e:	39 ce                	cmp    %ecx,%esi
   35710:	73 07                	jae    35719 <_malloc_r+0x4a9>
   35712:	8b 52 08             	mov    0x8(%edx),%edx
   35715:	39 d0                	cmp    %edx,%eax
   35717:	75 ef                	jne    35708 <_malloc_r+0x498>
   35719:	8b 4a 0c             	mov    0xc(%edx),%ecx
   3571c:	a1 44 d5 03 00       	mov    0x3d544,%eax
   35721:	89 4b 0c             	mov    %ecx,0xc(%ebx)
   35724:	89 53 08             	mov    %edx,0x8(%ebx)
   35727:	89 59 08             	mov    %ebx,0x8(%ecx)
   3572a:	89 5a 0c             	mov    %ebx,0xc(%edx)
   3572d:	e9 bb fc ff ff       	jmp    353ed <_malloc_r+0x17d>
   35732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35738:	89 c1                	mov    %eax,%ecx
   3573a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
   3573d:	83 c9 01             	or     $0x1,%ecx
   35740:	83 cf 01             	or     $0x1,%edi
   35743:	89 7b 04             	mov    %edi,0x4(%ebx)
   35746:	89 15 54 d5 03 00    	mov    %edx,0x3d554
   3574c:	89 15 50 d5 03 00    	mov    %edx,0x3d550
   35752:	c7 42 0c 48 d5 03 00 	movl   $0x3d548,0xc(%edx)
   35759:	c7 42 08 48 d5 03 00 	movl   $0x3d548,0x8(%edx)
   35760:	89 4a 04             	mov    %ecx,0x4(%edx)
   35763:	89 04 02             	mov    %eax,(%edx,%eax,1)
   35766:	8b 45 08             	mov    0x8(%ebp),%eax
   35769:	89 04 24             	mov    %eax,(%esp)
   3576c:	e8 ef 02 00 00       	call   35a60 <__malloc_unlock>
   35771:	8d 43 08             	lea    0x8(%ebx),%eax
   35774:	e9 6e fb ff ff       	jmp    352e7 <_malloc_r+0x77>
   35779:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35780:	89 75 dc             	mov    %esi,-0x24(%ebp)
   35783:	e9 af fc ff ff       	jmp    35437 <_malloc_r+0x1c7>
   35788:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
   3578c:	83 c1 08             	add    $0x8,%ecx
   3578f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
   35793:	0f 85 ad fc ff ff    	jne    35446 <_malloc_r+0x1d6>
   35799:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3579c:	eb 12                	jmp    357b0 <_malloc_r+0x540>
   3579e:	66 90                	xchg   %ax,%ax
   357a0:	8d 56 f8             	lea    -0x8(%esi),%edx
   357a3:	8b 36                	mov    (%esi),%esi
   357a5:	83 e8 01             	sub    $0x1,%eax
   357a8:	39 d6                	cmp    %edx,%esi
   357aa:	0f 85 ea 01 00 00    	jne    3599a <_malloc_r+0x72a>
   357b0:	a8 03                	test   $0x3,%al
   357b2:	75 ec                	jne    357a0 <_malloc_r+0x530>
   357b4:	8b 45 dc             	mov    -0x24(%ebp),%eax
   357b7:	f7 d0                	not    %eax
   357b9:	23 05 44 d5 03 00    	and    0x3d544,%eax
   357bf:	a3 44 d5 03 00       	mov    %eax,0x3d544
   357c4:	d1 65 dc             	shll   -0x24(%ebp)
   357c7:	8b 55 dc             	mov    -0x24(%ebp),%edx
   357ca:	39 c2                	cmp    %eax,%edx
   357cc:	0f 87 26 fd ff ff    	ja     354f8 <_malloc_r+0x288>
   357d2:	85 d2                	test   %edx,%edx
   357d4:	0f 84 1e fd ff ff    	je     354f8 <_malloc_r+0x288>
   357da:	85 c2                	test   %eax,%edx
   357dc:	0f 85 c2 01 00 00    	jne    359a4 <_malloc_r+0x734>
   357e2:	8b 75 e0             	mov    -0x20(%ebp),%esi
   357e5:	89 f1                	mov    %esi,%ecx
   357e7:	01 d2                	add    %edx,%edx
   357e9:	83 c1 04             	add    $0x4,%ecx
   357ec:	85 d0                	test   %edx,%eax
   357ee:	74 f7                	je     357e7 <_malloc_r+0x577>
   357f0:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   357f3:	89 55 dc             	mov    %edx,-0x24(%ebp)
   357f6:	e9 3c fc ff ff       	jmp    35437 <_malloc_r+0x1c7>
   357fb:	90                   	nop
   357fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35800:	8d 43 08             	lea    0x8(%ebx),%eax
   35803:	8b 5b 14             	mov    0x14(%ebx),%ebx
   35806:	39 d8                	cmp    %ebx,%eax
   35808:	0f 85 b4 fa ff ff    	jne    352c2 <_malloc_r+0x52>
   3580e:	8d 42 02             	lea    0x2(%edx),%eax
   35811:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   35814:	e9 56 fb ff ff       	jmp    3536f <_malloc_r+0xff>
   35819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35820:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
   35825:	8b 53 08             	mov    0x8(%ebx),%edx
   35828:	8b 43 0c             	mov    0xc(%ebx),%eax
   3582b:	89 42 0c             	mov    %eax,0xc(%edx)
   3582e:	89 50 08             	mov    %edx,0x8(%eax)
   35831:	8b 45 08             	mov    0x8(%ebp),%eax
   35834:	89 04 24             	mov    %eax,(%esp)
   35837:	e8 24 02 00 00       	call   35a60 <__malloc_unlock>
   3583c:	8d 43 08             	lea    0x8(%ebx),%eax
   3583f:	e9 a3 fa ff ff       	jmp    352e7 <_malloc_r+0x77>
   35844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35848:	83 c6 5b             	add    $0x5b,%esi
   3584b:	8d 04 36             	lea    (%esi,%esi,1),%eax
   3584e:	e9 de fa ff ff       	jmp    35331 <_malloc_r+0xc1>
   35853:	89 f1                	mov    %esi,%ecx
   35855:	c1 e9 06             	shr    $0x6,%ecx
   35858:	83 c1 38             	add    $0x38,%ecx
   3585b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   3585e:	e9 92 fe ff ff       	jmp    356f5 <_malloc_r+0x485>
   35863:	81 fb 40 d5 03 00    	cmp    $0x3d540,%ebx
   35869:	0f 84 f2 fc ff ff    	je     35561 <_malloc_r+0x2f1>
   3586f:	8b 1d 48 d5 03 00    	mov    0x3d548,%ebx
   35875:	8b 53 04             	mov    0x4(%ebx),%edx
   35878:	83 e2 fc             	and    $0xfffffffc,%edx
   3587b:	e9 de fd ff ff       	jmp    3565e <_malloc_r+0x3ee>
   35880:	81 fe 54 01 00 00    	cmp    $0x154,%esi
   35886:	77 3c                	ja     358c4 <_malloc_r+0x654>
   35888:	89 fe                	mov    %edi,%esi
   3588a:	c1 ee 0f             	shr    $0xf,%esi
   3588d:	83 c6 77             	add    $0x77,%esi
   35890:	8d 04 36             	lea    (%esi,%esi,1),%eax
   35893:	e9 99 fa ff ff       	jmp    35331 <_malloc_r+0xc1>
   35898:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
   3589f:	89 cb                	mov    %ecx,%ebx
   358a1:	31 d2                	xor    %edx,%edx
   358a3:	e9 b6 fd ff ff       	jmp    3565e <_malloc_r+0x3ee>
   358a8:	c1 f9 02             	sar    $0x2,%ecx
   358ab:	b8 01 00 00 00       	mov    $0x1,%eax
   358b0:	d3 e0                	shl    %cl,%eax
   358b2:	89 d1                	mov    %edx,%ecx
   358b4:	0b 05 44 d5 03 00    	or     0x3d544,%eax
   358ba:	a3 44 d5 03 00       	mov    %eax,0x3d544
   358bf:	e9 5d fe ff ff       	jmp    35721 <_malloc_r+0x4b1>
   358c4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
   358ca:	77 47                	ja     35913 <_malloc_r+0x6a3>
   358cc:	89 fe                	mov    %edi,%esi
   358ce:	c1 ee 12             	shr    $0x12,%esi
   358d1:	83 c6 7c             	add    $0x7c,%esi
   358d4:	8d 04 36             	lea    (%esi,%esi,1),%eax
   358d7:	e9 55 fa ff ff       	jmp    35331 <_malloc_r+0xc1>
   358dc:	8b 45 08             	mov    0x8(%ebp),%eax
   358df:	83 c3 08             	add    $0x8,%ebx
   358e2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   358e6:	89 04 24             	mov    %eax,(%esp)
   358e9:	e8 c2 22 00 00       	call   37bb0 <_free_r>
   358ee:	8b 15 20 00 07 00    	mov    0x70020,%edx
   358f4:	a1 48 d5 03 00       	mov    0x3d548,%eax
   358f9:	e9 3c fd ff ff       	jmp    3563a <_malloc_r+0x3ca>
   358fe:	83 f9 54             	cmp    $0x54,%ecx
   35901:	77 58                	ja     3595b <_malloc_r+0x6eb>
   35903:	89 f1                	mov    %esi,%ecx
   35905:	c1 e9 0c             	shr    $0xc,%ecx
   35908:	83 c1 6e             	add    $0x6e,%ecx
   3590b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   3590e:	e9 e2 fd ff ff       	jmp    356f5 <_malloc_r+0x485>
   35913:	b8 fc 00 00 00       	mov    $0xfc,%eax
   35918:	be 7e 00 00 00       	mov    $0x7e,%esi
   3591d:	e9 0f fa ff ff       	jmp    35331 <_malloc_r+0xc1>
   35922:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
   35929:	0f 85 4a fc ff ff    	jne    35579 <_malloc_r+0x309>
   3592f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   35932:	a1 48 d5 03 00       	mov    0x3d548,%eax
   35937:	01 f1                	add    %esi,%ecx
   35939:	83 c9 01             	or     $0x1,%ecx
   3593c:	89 48 04             	mov    %ecx,0x4(%eax)
   3593f:	e9 f6 fc ff ff       	jmp    3563a <_malloc_r+0x3ca>
   35944:	b8 01 00 00 00       	mov    $0x1,%eax
   35949:	31 d2                	xor    %edx,%edx
   3594b:	e9 91 fc ff ff       	jmp    355e1 <_malloc_r+0x371>
   35950:	89 0d 20 d5 03 00    	mov    %ecx,0x3d520
   35956:	e9 37 fc ff ff       	jmp    35592 <_malloc_r+0x322>
   3595b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
   35961:	77 10                	ja     35973 <_malloc_r+0x703>
   35963:	89 f1                	mov    %esi,%ecx
   35965:	c1 e9 0f             	shr    $0xf,%ecx
   35968:	83 c1 77             	add    $0x77,%ecx
   3596b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   3596e:	e9 82 fd ff ff       	jmp    356f5 <_malloc_r+0x485>
   35973:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
   35979:	77 10                	ja     3598b <_malloc_r+0x71b>
   3597b:	89 f1                	mov    %esi,%ecx
   3597d:	c1 e9 12             	shr    $0x12,%ecx
   35980:	83 c1 7c             	add    $0x7c,%ecx
   35983:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
   35986:	e9 6a fd ff ff       	jmp    356f5 <_malloc_r+0x485>
   3598b:	b8 fc 00 00 00       	mov    $0xfc,%eax
   35990:	b9 7e 00 00 00       	mov    $0x7e,%ecx
   35995:	e9 5b fd ff ff       	jmp    356f5 <_malloc_r+0x485>
   3599a:	a1 44 d5 03 00       	mov    0x3d544,%eax
   3599f:	e9 20 fe ff ff       	jmp    357c4 <_malloc_r+0x554>
   359a4:	8b 45 e0             	mov    -0x20(%ebp),%eax
   359a7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   359aa:	e9 88 fa ff ff       	jmp    35437 <_malloc_r+0x1c7>
   359af:	90                   	nop

000359b0 <memchr>:
   359b0:	55                   	push   %ebp
   359b1:	89 e5                	mov    %esp,%ebp
   359b3:	57                   	push   %edi
   359b4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
   359b8:	8b 4d 10             	mov    0x10(%ebp),%ecx
   359bb:	8b 7d 08             	mov    0x8(%ebp),%edi
   359be:	31 d2                	xor    %edx,%edx
   359c0:	85 c9                	test   %ecx,%ecx
   359c2:	74 79                	je     35a3d <L20>
   359c4:	f7 c7 03 00 00 00    	test   $0x3,%edi
   359ca:	74 28                	je     359f4 <L5>
   359cc:	3a 07                	cmp    (%edi),%al
   359ce:	74 6a                	je     35a3a <L15>
   359d0:	47                   	inc    %edi
   359d1:	49                   	dec    %ecx
   359d2:	74 69                	je     35a3d <L20>
   359d4:	f7 c7 03 00 00 00    	test   $0x3,%edi
   359da:	74 18                	je     359f4 <L5>
   359dc:	3a 07                	cmp    (%edi),%al
   359de:	74 5a                	je     35a3a <L15>
   359e0:	47                   	inc    %edi
   359e1:	49                   	dec    %ecx
   359e2:	74 59                	je     35a3d <L20>
   359e4:	f7 c7 03 00 00 00    	test   $0x3,%edi
   359ea:	74 08                	je     359f4 <L5>
   359ec:	3a 07                	cmp    (%edi),%al
   359ee:	74 4a                	je     35a3a <L15>
   359f0:	47                   	inc    %edi
   359f1:	49                   	dec    %ecx
   359f2:	74 49                	je     35a3d <L20>

000359f4 <L5>:
   359f4:	88 c4                	mov    %al,%ah
   359f6:	89 c2                	mov    %eax,%edx
   359f8:	c1 e2 10             	shl    $0x10,%edx
   359fb:	09 d0                	or     %edx,%eax
   359fd:	53                   	push   %ebx
   359fe:	66 90                	xchg   %ax,%ax

00035a00 <L8>:
   35a00:	83 e9 04             	sub    $0x4,%ecx
   35a03:	72 1c                	jb     35a21 <L9>
   35a05:	8b 17                	mov    (%edi),%edx
   35a07:	83 c7 04             	add    $0x4,%edi
   35a0a:	31 c2                	xor    %eax,%edx
   35a0c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
   35a12:	f7 d2                	not    %edx
   35a14:	21 d3                	and    %edx,%ebx
   35a16:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
   35a1c:	74 e2                	je     35a00 <L8>
   35a1e:	83 ef 04             	sub    $0x4,%edi

00035a21 <L9>:
   35a21:	5b                   	pop    %ebx
   35a22:	31 d2                	xor    %edx,%edx
   35a24:	83 c1 04             	add    $0x4,%ecx
   35a27:	74 14                	je     35a3d <L20>
   35a29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035a30 <L10>:
   35a30:	3a 07                	cmp    (%edi),%al
   35a32:	74 06                	je     35a3a <L15>
   35a34:	47                   	inc    %edi
   35a35:	49                   	dec    %ecx
   35a36:	75 f8                	jne    35a30 <L10>
   35a38:	31 ff                	xor    %edi,%edi

00035a3a <L15>:
   35a3a:	4a                   	dec    %edx
   35a3b:	21 fa                	and    %edi,%edx

00035a3d <L20>:
   35a3d:	89 d0                	mov    %edx,%eax
   35a3f:	8d 65 fc             	lea    -0x4(%ebp),%esp
   35a42:	5f                   	pop    %edi
   35a43:	c9                   	leave  
   35a44:	c3                   	ret    
   35a45:	66 90                	xchg   %ax,%ax
   35a47:	66 90                	xchg   %ax,%ax
   35a49:	66 90                	xchg   %ax,%ax
   35a4b:	66 90                	xchg   %ax,%ax
   35a4d:	66 90                	xchg   %ax,%ax
   35a4f:	90                   	nop

00035a50 <__malloc_lock>:
   35a50:	55                   	push   %ebp
   35a51:	89 e5                	mov    %esp,%ebp
   35a53:	5d                   	pop    %ebp
   35a54:	c3                   	ret    
   35a55:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35a59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00035a60 <__malloc_unlock>:
   35a60:	55                   	push   %ebp
   35a61:	89 e5                	mov    %esp,%ebp
   35a63:	5d                   	pop    %ebp
   35a64:	c3                   	ret    
   35a65:	66 90                	xchg   %ax,%ax
   35a67:	66 90                	xchg   %ax,%ax
   35a69:	66 90                	xchg   %ax,%ax
   35a6b:	66 90                	xchg   %ax,%ax
   35a6d:	66 90                	xchg   %ax,%ax
   35a6f:	90                   	nop

00035a70 <_Balloc>:
   35a70:	55                   	push   %ebp
   35a71:	89 e5                	mov    %esp,%ebp
   35a73:	57                   	push   %edi
   35a74:	56                   	push   %esi
   35a75:	53                   	push   %ebx
   35a76:	83 ec 1c             	sub    $0x1c,%esp
   35a79:	8b 75 08             	mov    0x8(%ebp),%esi
   35a7c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   35a7f:	8b 46 4c             	mov    0x4c(%esi),%eax
   35a82:	85 c0                	test   %eax,%eax
   35a84:	74 2a                	je     35ab0 <_Balloc+0x40>
   35a86:	8d 14 98             	lea    (%eax,%ebx,4),%edx
   35a89:	8b 02                	mov    (%edx),%eax
   35a8b:	85 c0                	test   %eax,%eax
   35a8d:	74 49                	je     35ad8 <_Balloc+0x68>
   35a8f:	8b 08                	mov    (%eax),%ecx
   35a91:	89 0a                	mov    %ecx,(%edx)
   35a93:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
   35a9a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
   35aa1:	83 c4 1c             	add    $0x1c,%esp
   35aa4:	5b                   	pop    %ebx
   35aa5:	5e                   	pop    %esi
   35aa6:	5f                   	pop    %edi
   35aa7:	5d                   	pop    %ebp
   35aa8:	c3                   	ret    
   35aa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35ab0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
   35ab7:	00 
   35ab8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
   35abf:	00 
   35ac0:	89 34 24             	mov    %esi,(%esp)
   35ac3:	e8 38 1f 00 00       	call   37a00 <_calloc_r>
   35ac8:	85 c0                	test   %eax,%eax
   35aca:	89 46 4c             	mov    %eax,0x4c(%esi)
   35acd:	75 b7                	jne    35a86 <_Balloc+0x16>
   35acf:	31 c0                	xor    %eax,%eax
   35ad1:	eb ce                	jmp    35aa1 <_Balloc+0x31>
   35ad3:	90                   	nop
   35ad4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35ad8:	89 d9                	mov    %ebx,%ecx
   35ada:	bf 01 00 00 00       	mov    $0x1,%edi
   35adf:	d3 e7                	shl    %cl,%edi
   35ae1:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
   35ae8:	89 44 24 08          	mov    %eax,0x8(%esp)
   35aec:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   35af3:	00 
   35af4:	89 34 24             	mov    %esi,(%esp)
   35af7:	e8 04 1f 00 00       	call   37a00 <_calloc_r>
   35afc:	85 c0                	test   %eax,%eax
   35afe:	74 cf                	je     35acf <_Balloc+0x5f>
   35b00:	89 58 04             	mov    %ebx,0x4(%eax)
   35b03:	89 78 08             	mov    %edi,0x8(%eax)
   35b06:	eb 8b                	jmp    35a93 <_Balloc+0x23>
   35b08:	90                   	nop
   35b09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035b10 <_Bfree>:
   35b10:	55                   	push   %ebp
   35b11:	89 e5                	mov    %esp,%ebp
   35b13:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b16:	85 c0                	test   %eax,%eax
   35b18:	74 12                	je     35b2c <_Bfree+0x1c>
   35b1a:	8b 55 08             	mov    0x8(%ebp),%edx
   35b1d:	8b 48 04             	mov    0x4(%eax),%ecx
   35b20:	8b 52 4c             	mov    0x4c(%edx),%edx
   35b23:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
   35b26:	8b 0a                	mov    (%edx),%ecx
   35b28:	89 08                	mov    %ecx,(%eax)
   35b2a:	89 02                	mov    %eax,(%edx)
   35b2c:	5d                   	pop    %ebp
   35b2d:	c3                   	ret    
   35b2e:	66 90                	xchg   %ax,%ax

00035b30 <__multadd>:
   35b30:	55                   	push   %ebp
   35b31:	89 e5                	mov    %esp,%ebp
   35b33:	57                   	push   %edi
   35b34:	56                   	push   %esi
   35b35:	53                   	push   %ebx
   35b36:	83 ec 2c             	sub    $0x2c,%esp
   35b39:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b3c:	8b 5d 14             	mov    0x14(%ebp),%ebx
   35b3f:	8b 40 10             	mov    0x10(%eax),%eax
   35b42:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   35b45:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b48:	8d 78 14             	lea    0x14(%eax),%edi
   35b4b:	31 c0                	xor    %eax,%eax
   35b4d:	8d 76 00             	lea    0x0(%esi),%esi
   35b50:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
   35b53:	0f b7 d1             	movzwl %cx,%edx
   35b56:	0f af 55 10          	imul   0x10(%ebp),%edx
   35b5a:	c1 e9 10             	shr    $0x10,%ecx
   35b5d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
   35b61:	01 da                	add    %ebx,%edx
   35b63:	89 d3                	mov    %edx,%ebx
   35b65:	0f b7 d2             	movzwl %dx,%edx
   35b68:	c1 eb 10             	shr    $0x10,%ebx
   35b6b:	01 d9                	add    %ebx,%ecx
   35b6d:	89 ce                	mov    %ecx,%esi
   35b6f:	c1 e1 10             	shl    $0x10,%ecx
   35b72:	01 d1                	add    %edx,%ecx
   35b74:	c1 ee 10             	shr    $0x10,%esi
   35b77:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
   35b7a:	83 c0 01             	add    $0x1,%eax
   35b7d:	89 f3                	mov    %esi,%ebx
   35b7f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
   35b82:	7f cc                	jg     35b50 <__multadd+0x20>
   35b84:	85 f6                	test   %esi,%esi
   35b86:	74 1b                	je     35ba3 <__multadd+0x73>
   35b88:	8b 45 0c             	mov    0xc(%ebp),%eax
   35b8b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
   35b8e:	3b 78 08             	cmp    0x8(%eax),%edi
   35b91:	7d 1d                	jge    35bb0 <__multadd+0x80>
   35b93:	8b 7d 0c             	mov    0xc(%ebp),%edi
   35b96:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   35b99:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
   35b9d:	83 c0 01             	add    $0x1,%eax
   35ba0:	89 47 10             	mov    %eax,0x10(%edi)
   35ba3:	8b 45 0c             	mov    0xc(%ebp),%eax
   35ba6:	83 c4 2c             	add    $0x2c,%esp
   35ba9:	5b                   	pop    %ebx
   35baa:	5e                   	pop    %esi
   35bab:	5f                   	pop    %edi
   35bac:	5d                   	pop    %ebp
   35bad:	c3                   	ret    
   35bae:	66 90                	xchg   %ax,%ax
   35bb0:	8b 40 04             	mov    0x4(%eax),%eax
   35bb3:	89 45 e0             	mov    %eax,-0x20(%ebp)
   35bb6:	83 c0 01             	add    $0x1,%eax
   35bb9:	89 44 24 04          	mov    %eax,0x4(%esp)
   35bbd:	8b 45 08             	mov    0x8(%ebp),%eax
   35bc0:	89 04 24             	mov    %eax,(%esp)
   35bc3:	e8 a8 fe ff ff       	call   35a70 <_Balloc>
   35bc8:	89 c3                	mov    %eax,%ebx
   35bca:	8b 45 0c             	mov    0xc(%ebp),%eax
   35bcd:	8b 40 10             	mov    0x10(%eax),%eax
   35bd0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
   35bd7:	89 44 24 08          	mov    %eax,0x8(%esp)
   35bdb:	8b 45 0c             	mov    0xc(%ebp),%eax
   35bde:	83 c0 0c             	add    $0xc,%eax
   35be1:	89 44 24 04          	mov    %eax,0x4(%esp)
   35be5:	8d 43 0c             	lea    0xc(%ebx),%eax
   35be8:	89 04 24             	mov    %eax,(%esp)
   35beb:	e8 c4 c0 ff ff       	call   31cb4 <memcpy>
   35bf0:	8b 45 0c             	mov    0xc(%ebp),%eax
   35bf3:	8b 7d 0c             	mov    0xc(%ebp),%edi
   35bf6:	89 5d 0c             	mov    %ebx,0xc(%ebp)
   35bf9:	8b 50 04             	mov    0x4(%eax),%edx
   35bfc:	8b 45 08             	mov    0x8(%ebp),%eax
   35bff:	8b 40 4c             	mov    0x4c(%eax),%eax
   35c02:	8d 04 90             	lea    (%eax,%edx,4),%eax
   35c05:	8b 10                	mov    (%eax),%edx
   35c07:	89 17                	mov    %edx,(%edi)
   35c09:	89 38                	mov    %edi,(%eax)
   35c0b:	eb 86                	jmp    35b93 <__multadd+0x63>
   35c0d:	8d 76 00             	lea    0x0(%esi),%esi

00035c10 <__s2b>:
   35c10:	55                   	push   %ebp
   35c11:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
   35c16:	89 e5                	mov    %esp,%ebp
   35c18:	57                   	push   %edi
   35c19:	56                   	push   %esi
   35c1a:	53                   	push   %ebx
   35c1b:	83 ec 2c             	sub    $0x2c,%esp
   35c1e:	8b 45 14             	mov    0x14(%ebp),%eax
   35c21:	8b 5d 08             	mov    0x8(%ebp),%ebx
   35c24:	8b 75 0c             	mov    0xc(%ebp),%esi
   35c27:	8d 48 08             	lea    0x8(%eax),%ecx
   35c2a:	89 c8                	mov    %ecx,%eax
   35c2c:	f7 ea                	imul   %edx
   35c2e:	c1 f9 1f             	sar    $0x1f,%ecx
   35c31:	d1 fa                	sar    %edx
   35c33:	29 ca                	sub    %ecx,%edx
   35c35:	83 fa 01             	cmp    $0x1,%edx
   35c38:	0f 8e be 00 00 00    	jle    35cfc <__s2b+0xec>
   35c3e:	b8 01 00 00 00       	mov    $0x1,%eax
   35c43:	31 c9                	xor    %ecx,%ecx
   35c45:	8d 76 00             	lea    0x0(%esi),%esi
   35c48:	01 c0                	add    %eax,%eax
   35c4a:	83 c1 01             	add    $0x1,%ecx
   35c4d:	39 c2                	cmp    %eax,%edx
   35c4f:	7f f7                	jg     35c48 <__s2b+0x38>
   35c51:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   35c55:	89 1c 24             	mov    %ebx,(%esp)
   35c58:	e8 13 fe ff ff       	call   35a70 <_Balloc>
   35c5d:	8b 55 18             	mov    0x18(%ebp),%edx
   35c60:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
   35c64:	89 50 14             	mov    %edx,0x14(%eax)
   35c67:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   35c6e:	0f 8e 7c 00 00 00    	jle    35cf0 <__s2b+0xe0>
   35c74:	8d 4e 09             	lea    0x9(%esi),%ecx
   35c77:	03 75 10             	add    0x10(%ebp),%esi
   35c7a:	89 cf                	mov    %ecx,%edi
   35c7c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   35c7f:	90                   	nop
   35c80:	83 c7 01             	add    $0x1,%edi
   35c83:	0f be 57 ff          	movsbl -0x1(%edi),%edx
   35c87:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   35c8e:	00 
   35c8f:	89 44 24 04          	mov    %eax,0x4(%esp)
   35c93:	89 1c 24             	mov    %ebx,(%esp)
   35c96:	83 ea 30             	sub    $0x30,%edx
   35c99:	89 54 24 0c          	mov    %edx,0xc(%esp)
   35c9d:	e8 8e fe ff ff       	call   35b30 <__multadd>
   35ca2:	39 f7                	cmp    %esi,%edi
   35ca4:	75 da                	jne    35c80 <__s2b+0x70>
   35ca6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   35ca9:	8b 7d 10             	mov    0x10(%ebp),%edi
   35cac:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
   35cb0:	8b 4d 10             	mov    0x10(%ebp),%ecx
   35cb3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
   35cb6:	7e 2e                	jle    35ce6 <__s2b+0xd6>
   35cb8:	8b 7d 14             	mov    0x14(%ebp),%edi
   35cbb:	29 cf                	sub    %ecx,%edi
   35cbd:	01 f7                	add    %esi,%edi
   35cbf:	90                   	nop
   35cc0:	83 c6 01             	add    $0x1,%esi
   35cc3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
   35cc7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
   35cce:	00 
   35ccf:	89 44 24 04          	mov    %eax,0x4(%esp)
   35cd3:	89 1c 24             	mov    %ebx,(%esp)
   35cd6:	83 ea 30             	sub    $0x30,%edx
   35cd9:	89 54 24 0c          	mov    %edx,0xc(%esp)
   35cdd:	e8 4e fe ff ff       	call   35b30 <__multadd>
   35ce2:	39 fe                	cmp    %edi,%esi
   35ce4:	75 da                	jne    35cc0 <__s2b+0xb0>
   35ce6:	83 c4 2c             	add    $0x2c,%esp
   35ce9:	5b                   	pop    %ebx
   35cea:	5e                   	pop    %esi
   35ceb:	5f                   	pop    %edi
   35cec:	5d                   	pop    %ebp
   35ced:	c3                   	ret    
   35cee:	66 90                	xchg   %ax,%ax
   35cf0:	83 c6 0a             	add    $0xa,%esi
   35cf3:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
   35cfa:	eb b4                	jmp    35cb0 <__s2b+0xa0>
   35cfc:	31 c9                	xor    %ecx,%ecx
   35cfe:	e9 4e ff ff ff       	jmp    35c51 <__s2b+0x41>
   35d03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   35d09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00035d10 <__hi0bits>:
   35d10:	55                   	push   %ebp
   35d11:	31 c9                	xor    %ecx,%ecx
   35d13:	89 e5                	mov    %esp,%ebp
   35d15:	8b 55 08             	mov    0x8(%ebp),%edx
   35d18:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
   35d1e:	75 05                	jne    35d25 <__hi0bits+0x15>
   35d20:	c1 e2 10             	shl    $0x10,%edx
   35d23:	b1 10                	mov    $0x10,%cl
   35d25:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
   35d2b:	75 06                	jne    35d33 <__hi0bits+0x23>
   35d2d:	83 c1 08             	add    $0x8,%ecx
   35d30:	c1 e2 08             	shl    $0x8,%edx
   35d33:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
   35d39:	75 06                	jne    35d41 <__hi0bits+0x31>
   35d3b:	83 c1 04             	add    $0x4,%ecx
   35d3e:	c1 e2 04             	shl    $0x4,%edx
   35d41:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
   35d47:	75 06                	jne    35d4f <__hi0bits+0x3f>
   35d49:	83 c1 02             	add    $0x2,%ecx
   35d4c:	c1 e2 02             	shl    $0x2,%edx
   35d4f:	85 d2                	test   %edx,%edx
   35d51:	89 c8                	mov    %ecx,%eax
   35d53:	78 0d                	js     35d62 <__hi0bits+0x52>
   35d55:	81 e2 00 00 00 40    	and    $0x40000000,%edx
   35d5b:	b8 20 00 00 00       	mov    $0x20,%eax
   35d60:	75 06                	jne    35d68 <__hi0bits+0x58>
   35d62:	5d                   	pop    %ebp
   35d63:	c3                   	ret    
   35d64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35d68:	8d 41 01             	lea    0x1(%ecx),%eax
   35d6b:	5d                   	pop    %ebp
   35d6c:	c3                   	ret    
   35d6d:	8d 76 00             	lea    0x0(%esi),%esi

00035d70 <__lo0bits>:
   35d70:	55                   	push   %ebp
   35d71:	89 e5                	mov    %esp,%ebp
   35d73:	53                   	push   %ebx
   35d74:	8b 5d 08             	mov    0x8(%ebp),%ebx
   35d77:	8b 13                	mov    (%ebx),%edx
   35d79:	f6 c2 07             	test   $0x7,%dl
   35d7c:	74 1a                	je     35d98 <__lo0bits+0x28>
   35d7e:	31 c0                	xor    %eax,%eax
   35d80:	f6 c2 01             	test   $0x1,%dl
   35d83:	75 0f                	jne    35d94 <__lo0bits+0x24>
   35d85:	f6 c2 02             	test   $0x2,%dl
   35d88:	75 56                	jne    35de0 <__lo0bits+0x70>
   35d8a:	c1 ea 02             	shr    $0x2,%edx
   35d8d:	b8 02 00 00 00       	mov    $0x2,%eax
   35d92:	89 13                	mov    %edx,(%ebx)
   35d94:	5b                   	pop    %ebx
   35d95:	5d                   	pop    %ebp
   35d96:	c3                   	ret    
   35d97:	90                   	nop
   35d98:	31 c9                	xor    %ecx,%ecx
   35d9a:	66 85 d2             	test   %dx,%dx
   35d9d:	75 05                	jne    35da4 <__lo0bits+0x34>
   35d9f:	c1 ea 10             	shr    $0x10,%edx
   35da2:	b1 10                	mov    $0x10,%cl
   35da4:	84 d2                	test   %dl,%dl
   35da6:	75 06                	jne    35dae <__lo0bits+0x3e>
   35da8:	83 c1 08             	add    $0x8,%ecx
   35dab:	c1 ea 08             	shr    $0x8,%edx
   35dae:	f6 c2 0f             	test   $0xf,%dl
   35db1:	75 06                	jne    35db9 <__lo0bits+0x49>
   35db3:	83 c1 04             	add    $0x4,%ecx
   35db6:	c1 ea 04             	shr    $0x4,%edx
   35db9:	f6 c2 03             	test   $0x3,%dl
   35dbc:	75 06                	jne    35dc4 <__lo0bits+0x54>
   35dbe:	83 c1 02             	add    $0x2,%ecx
   35dc1:	c1 ea 02             	shr    $0x2,%edx
   35dc4:	f6 c2 01             	test   $0x1,%dl
   35dc7:	75 0c                	jne    35dd5 <__lo0bits+0x65>
   35dc9:	d1 ea                	shr    %edx
   35dcb:	b8 20 00 00 00       	mov    $0x20,%eax
   35dd0:	74 c2                	je     35d94 <__lo0bits+0x24>
   35dd2:	83 c1 01             	add    $0x1,%ecx
   35dd5:	89 13                	mov    %edx,(%ebx)
   35dd7:	89 c8                	mov    %ecx,%eax
   35dd9:	5b                   	pop    %ebx
   35dda:	5d                   	pop    %ebp
   35ddb:	c3                   	ret    
   35ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35de0:	d1 ea                	shr    %edx
   35de2:	b0 01                	mov    $0x1,%al
   35de4:	89 13                	mov    %edx,(%ebx)
   35de6:	5b                   	pop    %ebx
   35de7:	5d                   	pop    %ebp
   35de8:	c3                   	ret    
   35de9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035df0 <__i2b>:
   35df0:	55                   	push   %ebp
   35df1:	89 e5                	mov    %esp,%ebp
   35df3:	83 ec 18             	sub    $0x18,%esp
   35df6:	8b 45 08             	mov    0x8(%ebp),%eax
   35df9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   35e00:	00 
   35e01:	89 04 24             	mov    %eax,(%esp)
   35e04:	e8 67 fc ff ff       	call   35a70 <_Balloc>
   35e09:	8b 55 0c             	mov    0xc(%ebp),%edx
   35e0c:	89 50 14             	mov    %edx,0x14(%eax)
   35e0f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   35e16:	c9                   	leave  
   35e17:	c3                   	ret    
   35e18:	90                   	nop
   35e19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00035e20 <__multiply>:
   35e20:	55                   	push   %ebp
   35e21:	89 e5                	mov    %esp,%ebp
   35e23:	57                   	push   %edi
   35e24:	56                   	push   %esi
   35e25:	53                   	push   %ebx
   35e26:	83 ec 3c             	sub    $0x3c,%esp
   35e29:	8b 75 0c             	mov    0xc(%ebp),%esi
   35e2c:	8b 45 10             	mov    0x10(%ebp),%eax
   35e2f:	8b 7e 10             	mov    0x10(%esi),%edi
   35e32:	8b 58 10             	mov    0x10(%eax),%ebx
   35e35:	39 df                	cmp    %ebx,%edi
   35e37:	7d 0e                	jge    35e47 <__multiply+0x27>
   35e39:	89 f8                	mov    %edi,%eax
   35e3b:	89 df                	mov    %ebx,%edi
   35e3d:	89 c3                	mov    %eax,%ebx
   35e3f:	89 f0                	mov    %esi,%eax
   35e41:	8b 75 10             	mov    0x10(%ebp),%esi
   35e44:	89 45 10             	mov    %eax,0x10(%ebp)
   35e47:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
   35e4a:	3b 46 08             	cmp    0x8(%esi),%eax
   35e4d:	89 45 c8             	mov    %eax,-0x38(%ebp)
   35e50:	0f 9f c0             	setg   %al
   35e53:	0f b6 c0             	movzbl %al,%eax
   35e56:	03 46 04             	add    0x4(%esi),%eax
   35e59:	89 44 24 04          	mov    %eax,0x4(%esp)
   35e5d:	8b 45 08             	mov    0x8(%ebp),%eax
   35e60:	89 04 24             	mov    %eax,(%esp)
   35e63:	e8 08 fc ff ff       	call   35a70 <_Balloc>
   35e68:	8b 55 c8             	mov    -0x38(%ebp),%edx
   35e6b:	89 45 c0             	mov    %eax,-0x40(%ebp)
   35e6e:	8d 40 14             	lea    0x14(%eax),%eax
   35e71:	8d 14 90             	lea    (%eax,%edx,4),%edx
   35e74:	89 d1                	mov    %edx,%ecx
   35e76:	39 c8                	cmp    %ecx,%eax
   35e78:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   35e7b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
   35e7e:	73 15                	jae    35e95 <__multiply+0x75>
   35e80:	8b 55 c4             	mov    -0x3c(%ebp),%edx
   35e83:	90                   	nop
   35e84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   35e88:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   35e8e:	83 c0 04             	add    $0x4,%eax
   35e91:	39 c2                	cmp    %eax,%edx
   35e93:	77 f3                	ja     35e88 <__multiply+0x68>
   35e95:	8d 46 14             	lea    0x14(%esi),%eax
   35e98:	89 45 d0             	mov    %eax,-0x30(%ebp)
   35e9b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
   35e9e:	89 45 dc             	mov    %eax,-0x24(%ebp)
   35ea1:	8b 45 10             	mov    0x10(%ebp),%eax
   35ea4:	83 c0 14             	add    $0x14,%eax
   35ea7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
   35eaa:	39 f8                	cmp    %edi,%eax
   35eac:	89 45 d8             	mov    %eax,-0x28(%ebp)
   35eaf:	89 7d cc             	mov    %edi,-0x34(%ebp)
   35eb2:	0f 83 e8 00 00 00    	jae    35fa0 <__multiply+0x180>
   35eb8:	8b 45 d8             	mov    -0x28(%ebp),%eax
   35ebb:	8b 00                	mov    (%eax),%eax
   35ebd:	0f b7 f8             	movzwl %ax,%edi
   35ec0:	85 ff                	test   %edi,%edi
   35ec2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
   35ec5:	74 5a                	je     35f21 <__multiply+0x101>
   35ec7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   35eca:	31 db                	xor    %ebx,%ebx
   35ecc:	8b 75 d0             	mov    -0x30(%ebp),%esi
   35ecf:	eb 09                	jmp    35eda <__multiply+0xba>
   35ed1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   35ed8:	89 fa                	mov    %edi,%edx
   35eda:	8b 0e                	mov    (%esi),%ecx
   35edc:	83 c6 04             	add    $0x4,%esi
   35edf:	0f b7 3a             	movzwl (%edx),%edi
   35ee2:	0f b7 c1             	movzwl %cx,%eax
   35ee5:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
   35ee9:	c1 e9 10             	shr    $0x10,%ecx
   35eec:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
   35ef0:	01 f8                	add    %edi,%eax
   35ef2:	01 d8                	add    %ebx,%eax
   35ef4:	8b 1a                	mov    (%edx),%ebx
   35ef6:	8d 7a 04             	lea    0x4(%edx),%edi
   35ef9:	c1 eb 10             	shr    $0x10,%ebx
   35efc:	01 d9                	add    %ebx,%ecx
   35efe:	89 c3                	mov    %eax,%ebx
   35f00:	c1 eb 10             	shr    $0x10,%ebx
   35f03:	0f b7 c0             	movzwl %ax,%eax
   35f06:	01 d9                	add    %ebx,%ecx
   35f08:	89 cb                	mov    %ecx,%ebx
   35f0a:	c1 e1 10             	shl    $0x10,%ecx
   35f0d:	09 c1                	or     %eax,%ecx
   35f0f:	c1 eb 10             	shr    $0x10,%ebx
   35f12:	39 75 dc             	cmp    %esi,-0x24(%ebp)
   35f15:	89 0a                	mov    %ecx,(%edx)
   35f17:	77 bf                	ja     35ed8 <__multiply+0xb8>
   35f19:	8b 45 d8             	mov    -0x28(%ebp),%eax
   35f1c:	89 5a 04             	mov    %ebx,0x4(%edx)
   35f1f:	8b 00                	mov    (%eax),%eax
   35f21:	c1 e8 10             	shr    $0x10,%eax
   35f24:	85 c0                	test   %eax,%eax
   35f26:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   35f29:	74 61                	je     35f8c <__multiply+0x16c>
   35f2b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   35f2e:	31 ff                	xor    %edi,%edi
   35f30:	89 fe                	mov    %edi,%esi
   35f32:	8b 10                	mov    (%eax),%edx
   35f34:	89 45 e0             	mov    %eax,-0x20(%ebp)
   35f37:	8b 45 d0             	mov    -0x30(%ebp),%eax
   35f3a:	89 d3                	mov    %edx,%ebx
   35f3c:	eb 05                	jmp    35f43 <__multiply+0x123>
   35f3e:	66 90                	xchg   %ax,%ax
   35f40:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   35f43:	0f b7 08             	movzwl (%eax),%ecx
   35f46:	c1 eb 10             	shr    $0x10,%ebx
   35f49:	0f b7 d2             	movzwl %dx,%edx
   35f4c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
   35f50:	83 c0 04             	add    $0x4,%eax
   35f53:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
   35f56:	01 f7                	add    %esi,%edi
   35f58:	8b 75 e0             	mov    -0x20(%ebp),%esi
   35f5b:	89 fb                	mov    %edi,%ebx
   35f5d:	c1 e3 10             	shl    $0x10,%ebx
   35f60:	09 d3                	or     %edx,%ebx
   35f62:	89 1e                	mov    %ebx,(%esi)
   35f64:	8b 5e 04             	mov    0x4(%esi),%ebx
   35f67:	8d 4e 04             	lea    0x4(%esi),%ecx
   35f6a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
   35f6e:	c1 ef 10             	shr    $0x10,%edi
   35f71:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
   35f75:	0f b7 f3             	movzwl %bx,%esi
   35f78:	01 f2                	add    %esi,%edx
   35f7a:	01 fa                	add    %edi,%edx
   35f7c:	89 d6                	mov    %edx,%esi
   35f7e:	c1 ee 10             	shr    $0x10,%esi
   35f81:	39 45 dc             	cmp    %eax,-0x24(%ebp)
   35f84:	77 ba                	ja     35f40 <__multiply+0x120>
   35f86:	8b 45 e0             	mov    -0x20(%ebp),%eax
   35f89:	89 50 04             	mov    %edx,0x4(%eax)
   35f8c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
   35f90:	8b 45 d8             	mov    -0x28(%ebp),%eax
   35f93:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
   35f97:	39 45 cc             	cmp    %eax,-0x34(%ebp)
   35f9a:	0f 87 18 ff ff ff    	ja     35eb8 <__multiply+0x98>
   35fa0:	8b 75 c8             	mov    -0x38(%ebp),%esi
   35fa3:	85 f6                	test   %esi,%esi
   35fa5:	7e 29                	jle    35fd0 <__multiply+0x1b0>
   35fa7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
   35faa:	8b 5f fc             	mov    -0x4(%edi),%ebx
   35fad:	85 db                	test   %ebx,%ebx
   35faf:	75 1f                	jne    35fd0 <__multiply+0x1b0>
   35fb1:	8b 55 c8             	mov    -0x38(%ebp),%edx
   35fb4:	89 d0                	mov    %edx,%eax
   35fb6:	c1 e0 02             	shl    $0x2,%eax
   35fb9:	29 c7                	sub    %eax,%edi
   35fbb:	89 f8                	mov    %edi,%eax
   35fbd:	eb 09                	jmp    35fc8 <__multiply+0x1a8>
   35fbf:	90                   	nop
   35fc0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
   35fc4:	85 c9                	test   %ecx,%ecx
   35fc6:	75 05                	jne    35fcd <__multiply+0x1ad>
   35fc8:	83 ea 01             	sub    $0x1,%edx
   35fcb:	75 f3                	jne    35fc0 <__multiply+0x1a0>
   35fcd:	89 55 c8             	mov    %edx,-0x38(%ebp)
   35fd0:	8b 45 c0             	mov    -0x40(%ebp),%eax
   35fd3:	8b 7d c8             	mov    -0x38(%ebp),%edi
   35fd6:	89 78 10             	mov    %edi,0x10(%eax)
   35fd9:	83 c4 3c             	add    $0x3c,%esp
   35fdc:	5b                   	pop    %ebx
   35fdd:	5e                   	pop    %esi
   35fde:	5f                   	pop    %edi
   35fdf:	5d                   	pop    %ebp
   35fe0:	c3                   	ret    
   35fe1:	eb 0d                	jmp    35ff0 <__pow5mult>
   35fe3:	90                   	nop
   35fe4:	90                   	nop
   35fe5:	90                   	nop
   35fe6:	90                   	nop
   35fe7:	90                   	nop
   35fe8:	90                   	nop
   35fe9:	90                   	nop
   35fea:	90                   	nop
   35feb:	90                   	nop
   35fec:	90                   	nop
   35fed:	90                   	nop
   35fee:	90                   	nop
   35fef:	90                   	nop

00035ff0 <__pow5mult>:
   35ff0:	55                   	push   %ebp
   35ff1:	89 e5                	mov    %esp,%ebp
   35ff3:	57                   	push   %edi
   35ff4:	56                   	push   %esi
   35ff5:	53                   	push   %ebx
   35ff6:	83 ec 2c             	sub    $0x2c,%esp
   35ff9:	8b 5d 10             	mov    0x10(%ebp),%ebx
   35ffc:	8b 4d 08             	mov    0x8(%ebp),%ecx
   35fff:	8b 7d 0c             	mov    0xc(%ebp),%edi
   36002:	89 d8                	mov    %ebx,%eax
   36004:	83 e0 03             	and    $0x3,%eax
   36007:	0f 85 a3 00 00 00    	jne    360b0 <__pow5mult+0xc0>
   3600d:	c1 fb 02             	sar    $0x2,%ebx
   36010:	85 db                	test   %ebx,%ebx
   36012:	74 5c                	je     36070 <__pow5mult+0x80>
   36014:	8b 71 48             	mov    0x48(%ecx),%esi
   36017:	85 f6                	test   %esi,%esi
   36019:	0f 84 bd 00 00 00    	je     360dc <__pow5mult+0xec>
   3601f:	f6 c3 01             	test   $0x1,%bl
   36022:	75 15                	jne    36039 <__pow5mult+0x49>
   36024:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36028:	d1 fb                	sar    %ebx
   3602a:	74 44                	je     36070 <__pow5mult+0x80>
   3602c:	8b 06                	mov    (%esi),%eax
   3602e:	85 c0                	test   %eax,%eax
   36030:	74 4e                	je     36080 <__pow5mult+0x90>
   36032:	89 c6                	mov    %eax,%esi
   36034:	f6 c3 01             	test   $0x1,%bl
   36037:	74 ef                	je     36028 <__pow5mult+0x38>
   36039:	89 0c 24             	mov    %ecx,(%esp)
   3603c:	89 74 24 08          	mov    %esi,0x8(%esp)
   36040:	89 7c 24 04          	mov    %edi,0x4(%esp)
   36044:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   36047:	e8 d4 fd ff ff       	call   35e20 <__multiply>
   3604c:	85 ff                	test   %edi,%edi
   3604e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36051:	89 45 e0             	mov    %eax,-0x20(%ebp)
   36054:	74 52                	je     360a8 <__pow5mult+0xb8>
   36056:	8b 57 04             	mov    0x4(%edi),%edx
   36059:	d1 fb                	sar    %ebx
   3605b:	8b 41 4c             	mov    0x4c(%ecx),%eax
   3605e:	8d 04 90             	lea    (%eax,%edx,4),%eax
   36061:	8b 10                	mov    (%eax),%edx
   36063:	89 17                	mov    %edx,(%edi)
   36065:	89 38                	mov    %edi,(%eax)
   36067:	8b 7d e0             	mov    -0x20(%ebp),%edi
   3606a:	75 c0                	jne    3602c <__pow5mult+0x3c>
   3606c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36070:	83 c4 2c             	add    $0x2c,%esp
   36073:	89 f8                	mov    %edi,%eax
   36075:	5b                   	pop    %ebx
   36076:	5e                   	pop    %esi
   36077:	5f                   	pop    %edi
   36078:	5d                   	pop    %ebp
   36079:	c3                   	ret    
   3607a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36080:	89 74 24 08          	mov    %esi,0x8(%esp)
   36084:	89 74 24 04          	mov    %esi,0x4(%esp)
   36088:	89 0c 24             	mov    %ecx,(%esp)
   3608b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   3608e:	e8 8d fd ff ff       	call   35e20 <__multiply>
   36093:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36096:	89 06                	mov    %eax,(%esi)
   36098:	89 c6                	mov    %eax,%esi
   3609a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   360a0:	eb 92                	jmp    36034 <__pow5mult+0x44>
   360a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   360a8:	8b 7d e0             	mov    -0x20(%ebp),%edi
   360ab:	e9 78 ff ff ff       	jmp    36028 <__pow5mult+0x38>
   360b0:	8b 04 85 dc 9a 03 00 	mov    0x39adc(,%eax,4),%eax
   360b7:	89 7c 24 04          	mov    %edi,0x4(%esp)
   360bb:	89 0c 24             	mov    %ecx,(%esp)
   360be:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
   360c5:	00 
   360c6:	89 44 24 08          	mov    %eax,0x8(%esp)
   360ca:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   360cd:	e8 5e fa ff ff       	call   35b30 <__multadd>
   360d2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   360d5:	89 c7                	mov    %eax,%edi
   360d7:	e9 31 ff ff ff       	jmp    3600d <__pow5mult+0x1d>
   360dc:	89 0c 24             	mov    %ecx,(%esp)
   360df:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   360e6:	00 
   360e7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   360ea:	e8 81 f9 ff ff       	call   35a70 <_Balloc>
   360ef:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   360f2:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
   360f9:	89 c6                	mov    %eax,%esi
   360fb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   36102:	89 41 48             	mov    %eax,0x48(%ecx)
   36105:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
   3610b:	e9 0f ff ff ff       	jmp    3601f <__pow5mult+0x2f>

00036110 <__lshift>:
   36110:	55                   	push   %ebp
   36111:	89 e5                	mov    %esp,%ebp
   36113:	57                   	push   %edi
   36114:	56                   	push   %esi
   36115:	53                   	push   %ebx
   36116:	83 ec 2c             	sub    $0x2c,%esp
   36119:	8b 45 0c             	mov    0xc(%ebp),%eax
   3611c:	8b 75 10             	mov    0x10(%ebp),%esi
   3611f:	89 c7                	mov    %eax,%edi
   36121:	8b 50 04             	mov    0x4(%eax),%edx
   36124:	8b 40 10             	mov    0x10(%eax),%eax
   36127:	89 f3                	mov    %esi,%ebx
   36129:	c1 fb 05             	sar    $0x5,%ebx
   3612c:	01 d8                	add    %ebx,%eax
   3612e:	89 45 d0             	mov    %eax,-0x30(%ebp)
   36131:	83 c0 01             	add    $0x1,%eax
   36134:	89 c1                	mov    %eax,%ecx
   36136:	89 45 d8             	mov    %eax,-0x28(%ebp)
   36139:	8b 47 08             	mov    0x8(%edi),%eax
   3613c:	39 c1                	cmp    %eax,%ecx
   3613e:	7e 09                	jle    36149 <__lshift+0x39>
   36140:	01 c0                	add    %eax,%eax
   36142:	83 c2 01             	add    $0x1,%edx
   36145:	39 c1                	cmp    %eax,%ecx
   36147:	7f f7                	jg     36140 <__lshift+0x30>
   36149:	8b 45 08             	mov    0x8(%ebp),%eax
   3614c:	89 54 24 04          	mov    %edx,0x4(%esp)
   36150:	89 04 24             	mov    %eax,(%esp)
   36153:	e8 18 f9 ff ff       	call   35a70 <_Balloc>
   36158:	85 db                	test   %ebx,%ebx
   3615a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   3615d:	8d 50 14             	lea    0x14(%eax),%edx
   36160:	7e 17                	jle    36179 <__lshift+0x69>
   36162:	31 c0                	xor    %eax,%eax
   36164:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36168:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
   3616f:	83 c0 01             	add    $0x1,%eax
   36172:	39 d8                	cmp    %ebx,%eax
   36174:	75 f2                	jne    36168 <__lshift+0x58>
   36176:	8d 14 82             	lea    (%edx,%eax,4),%edx
   36179:	8b 7d 0c             	mov    0xc(%ebp),%edi
   3617c:	8b 45 0c             	mov    0xc(%ebp),%eax
   3617f:	8b 4f 10             	mov    0x10(%edi),%ecx
   36182:	83 c0 14             	add    $0x14,%eax
   36185:	83 e6 1f             	and    $0x1f,%esi
   36188:	89 75 e0             	mov    %esi,-0x20(%ebp)
   3618b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
   3618e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
   36191:	74 7d                	je     36210 <__lshift+0x100>
   36193:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
   3619a:	29 75 dc             	sub    %esi,-0x24(%ebp)
   3619d:	31 f6                	xor    %esi,%esi
   3619f:	eb 09                	jmp    361aa <__lshift+0x9a>
   361a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   361a8:	89 fa                	mov    %edi,%edx
   361aa:	8b 18                	mov    (%eax),%ebx
   361ac:	83 c0 04             	add    $0x4,%eax
   361af:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
   361b3:	8d 7a 04             	lea    0x4(%edx),%edi
   361b6:	d3 e3                	shl    %cl,%ebx
   361b8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
   361bc:	09 f3                	or     %esi,%ebx
   361be:	89 1a                	mov    %ebx,(%edx)
   361c0:	8b 70 fc             	mov    -0x4(%eax),%esi
   361c3:	d3 ee                	shr    %cl,%esi
   361c5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
   361c8:	77 de                	ja     361a8 <__lshift+0x98>
   361ca:	8b 45 d0             	mov    -0x30(%ebp),%eax
   361cd:	89 72 04             	mov    %esi,0x4(%edx)
   361d0:	83 c0 02             	add    $0x2,%eax
   361d3:	85 f6                	test   %esi,%esi
   361d5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
   361d9:	89 45 d8             	mov    %eax,-0x28(%ebp)
   361dc:	8b 45 d8             	mov    -0x28(%ebp),%eax
   361df:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   361e2:	8b 75 0c             	mov    0xc(%ebp),%esi
   361e5:	83 e8 01             	sub    $0x1,%eax
   361e8:	89 47 10             	mov    %eax,0x10(%edi)
   361eb:	8b 45 0c             	mov    0xc(%ebp),%eax
   361ee:	8b 50 04             	mov    0x4(%eax),%edx
   361f1:	8b 45 08             	mov    0x8(%ebp),%eax
   361f4:	8b 40 4c             	mov    0x4c(%eax),%eax
   361f7:	8d 04 90             	lea    (%eax,%edx,4),%eax
   361fa:	8b 10                	mov    (%eax),%edx
   361fc:	89 16                	mov    %edx,(%esi)
   361fe:	89 30                	mov    %esi,(%eax)
   36200:	83 c4 2c             	add    $0x2c,%esp
   36203:	89 f8                	mov    %edi,%eax
   36205:	5b                   	pop    %ebx
   36206:	5e                   	pop    %esi
   36207:	5f                   	pop    %edi
   36208:	5d                   	pop    %ebp
   36209:	c3                   	ret    
   3620a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36210:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
   36213:	90                   	nop
   36214:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36218:	83 c0 04             	add    $0x4,%eax
   3621b:	8b 48 fc             	mov    -0x4(%eax),%ecx
   3621e:	83 c2 04             	add    $0x4,%edx
   36221:	39 c3                	cmp    %eax,%ebx
   36223:	89 4a fc             	mov    %ecx,-0x4(%edx)
   36226:	77 f0                	ja     36218 <__lshift+0x108>
   36228:	eb b2                	jmp    361dc <__lshift+0xcc>
   3622a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00036230 <__mcmp>:
   36230:	55                   	push   %ebp
   36231:	89 e5                	mov    %esp,%ebp
   36233:	8b 4d 08             	mov    0x8(%ebp),%ecx
   36236:	8b 55 0c             	mov    0xc(%ebp),%edx
   36239:	53                   	push   %ebx
   3623a:	8b 41 10             	mov    0x10(%ecx),%eax
   3623d:	8b 5a 10             	mov    0x10(%edx),%ebx
   36240:	29 d8                	sub    %ebx,%eax
   36242:	85 c0                	test   %eax,%eax
   36244:	75 27                	jne    3626d <__mcmp+0x3d>
   36246:	c1 e3 02             	shl    $0x2,%ebx
   36249:	83 c1 14             	add    $0x14,%ecx
   3624c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
   3624f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
   36253:	eb 07                	jmp    3625c <__mcmp+0x2c>
   36255:	8d 76 00             	lea    0x0(%esi),%esi
   36258:	39 c1                	cmp    %eax,%ecx
   3625a:	73 14                	jae    36270 <__mcmp+0x40>
   3625c:	83 ea 04             	sub    $0x4,%edx
   3625f:	83 e8 04             	sub    $0x4,%eax
   36262:	8b 1a                	mov    (%edx),%ebx
   36264:	39 18                	cmp    %ebx,(%eax)
   36266:	74 f0                	je     36258 <__mcmp+0x28>
   36268:	19 c0                	sbb    %eax,%eax
   3626a:	83 c8 01             	or     $0x1,%eax
   3626d:	5b                   	pop    %ebx
   3626e:	5d                   	pop    %ebp
   3626f:	c3                   	ret    
   36270:	31 c0                	xor    %eax,%eax
   36272:	5b                   	pop    %ebx
   36273:	5d                   	pop    %ebp
   36274:	c3                   	ret    
   36275:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00036280 <__mdiff>:
   36280:	55                   	push   %ebp
   36281:	89 e5                	mov    %esp,%ebp
   36283:	57                   	push   %edi
   36284:	56                   	push   %esi
   36285:	53                   	push   %ebx
   36286:	83 ec 2c             	sub    $0x2c,%esp
   36289:	8b 75 0c             	mov    0xc(%ebp),%esi
   3628c:	8b 5d 10             	mov    0x10(%ebp),%ebx
   3628f:	89 34 24             	mov    %esi,(%esp)
   36292:	89 5c 24 04          	mov    %ebx,0x4(%esp)
   36296:	e8 95 ff ff ff       	call   36230 <__mcmp>
   3629b:	85 c0                	test   %eax,%eax
   3629d:	0f 84 25 01 00 00    	je     363c8 <__mdiff+0x148>
   362a3:	0f 88 0f 01 00 00    	js     363b8 <__mdiff+0x138>
   362a9:	31 ff                	xor    %edi,%edi
   362ab:	8b 46 04             	mov    0x4(%esi),%eax
   362ae:	83 c6 14             	add    $0x14,%esi
   362b1:	89 44 24 04          	mov    %eax,0x4(%esp)
   362b5:	8b 45 08             	mov    0x8(%ebp),%eax
   362b8:	89 04 24             	mov    %eax,(%esp)
   362bb:	e8 b0 f7 ff ff       	call   35a70 <_Balloc>
   362c0:	8d 4b 14             	lea    0x14(%ebx),%ecx
   362c3:	89 c2                	mov    %eax,%edx
   362c5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   362c8:	89 78 0c             	mov    %edi,0xc(%eax)
   362cb:	8b 46 fc             	mov    -0x4(%esi),%eax
   362ce:	89 75 e4             	mov    %esi,-0x1c(%ebp)
   362d1:	89 45 dc             	mov    %eax,-0x24(%ebp)
   362d4:	8d 04 86             	lea    (%esi,%eax,4),%eax
   362d7:	89 45 d8             	mov    %eax,-0x28(%ebp)
   362da:	8b 43 10             	mov    0x10(%ebx),%eax
   362dd:	31 db                	xor    %ebx,%ebx
   362df:	8d 04 81             	lea    (%ecx,%eax,4),%eax
   362e2:	89 45 e0             	mov    %eax,-0x20(%ebp)
   362e5:	89 d0                	mov    %edx,%eax
   362e7:	83 c0 14             	add    $0x14,%eax
   362ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   362f0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
   362f3:	83 c0 04             	add    $0x4,%eax
   362f6:	83 c1 04             	add    $0x4,%ecx
   362f9:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
   362fd:	8b 3e                	mov    (%esi),%edi
   362ff:	8b 71 fc             	mov    -0x4(%ecx),%esi
   36302:	0f b7 d7             	movzwl %di,%edx
   36305:	01 da                	add    %ebx,%edx
   36307:	0f b7 de             	movzwl %si,%ebx
   3630a:	29 da                	sub    %ebx,%edx
   3630c:	c1 ef 10             	shr    $0x10,%edi
   3630f:	89 d3                	mov    %edx,%ebx
   36311:	c1 ee 10             	shr    $0x10,%esi
   36314:	0f b7 d2             	movzwl %dx,%edx
   36317:	c1 fb 10             	sar    $0x10,%ebx
   3631a:	29 f7                	sub    %esi,%edi
   3631c:	01 df                	add    %ebx,%edi
   3631e:	89 fb                	mov    %edi,%ebx
   36320:	c1 e7 10             	shl    $0x10,%edi
   36323:	09 d7                	or     %edx,%edi
   36325:	c1 fb 10             	sar    $0x10,%ebx
   36328:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
   3632b:	89 78 fc             	mov    %edi,-0x4(%eax)
   3632e:	77 c0                	ja     362f0 <__mdiff+0x70>
   36330:	8b 75 e4             	mov    -0x1c(%ebp),%esi
   36333:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   36336:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   36339:	89 75 e0             	mov    %esi,-0x20(%ebp)
   3633c:	39 f1                	cmp    %esi,%ecx
   3633e:	76 3f                	jbe    3637f <__mdiff+0xff>
   36340:	8b 3e                	mov    (%esi),%edi
   36342:	83 c6 04             	add    $0x4,%esi
   36345:	83 c0 04             	add    $0x4,%eax
   36348:	0f b7 d7             	movzwl %di,%edx
   3634b:	01 da                	add    %ebx,%edx
   3634d:	89 d3                	mov    %edx,%ebx
   3634f:	0f b7 d2             	movzwl %dx,%edx
   36352:	c1 fb 10             	sar    $0x10,%ebx
   36355:	c1 ef 10             	shr    $0x10,%edi
   36358:	01 df                	add    %ebx,%edi
   3635a:	89 fb                	mov    %edi,%ebx
   3635c:	c1 e7 10             	shl    $0x10,%edi
   3635f:	09 d7                	or     %edx,%edi
   36361:	c1 fb 10             	sar    $0x10,%ebx
   36364:	39 f1                	cmp    %esi,%ecx
   36366:	89 78 fc             	mov    %edi,-0x4(%eax)
   36369:	77 d5                	ja     36340 <__mdiff+0xc0>
   3636b:	8b 45 e0             	mov    -0x20(%ebp),%eax
   3636e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
   36371:	f7 d0                	not    %eax
   36373:	01 c8                	add    %ecx,%eax
   36375:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36378:	c1 e8 02             	shr    $0x2,%eax
   3637b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
   3637f:	85 ff                	test   %edi,%edi
   36381:	75 23                	jne    363a6 <__mdiff+0x126>
   36383:	8b 4d dc             	mov    -0x24(%ebp),%ecx
   36386:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
   3638d:	29 d0                	sub    %edx,%eax
   3638f:	89 ca                	mov    %ecx,%edx
   36391:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36398:	83 ea 01             	sub    $0x1,%edx
   3639b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
   3639f:	85 c9                	test   %ecx,%ecx
   363a1:	74 f5                	je     36398 <__mdiff+0x118>
   363a3:	89 55 dc             	mov    %edx,-0x24(%ebp)
   363a6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   363a9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
   363ac:	89 48 10             	mov    %ecx,0x10(%eax)
   363af:	83 c4 2c             	add    $0x2c,%esp
   363b2:	5b                   	pop    %ebx
   363b3:	5e                   	pop    %esi
   363b4:	5f                   	pop    %edi
   363b5:	5d                   	pop    %ebp
   363b6:	c3                   	ret    
   363b7:	90                   	nop
   363b8:	89 f0                	mov    %esi,%eax
   363ba:	bf 01 00 00 00       	mov    $0x1,%edi
   363bf:	89 de                	mov    %ebx,%esi
   363c1:	89 c3                	mov    %eax,%ebx
   363c3:	e9 e3 fe ff ff       	jmp    362ab <__mdiff+0x2b>
   363c8:	8b 45 08             	mov    0x8(%ebp),%eax
   363cb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   363d2:	00 
   363d3:	89 04 24             	mov    %eax,(%esp)
   363d6:	e8 95 f6 ff ff       	call   35a70 <_Balloc>
   363db:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
   363e2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
   363e9:	83 c4 2c             	add    $0x2c,%esp
   363ec:	5b                   	pop    %ebx
   363ed:	5e                   	pop    %esi
   363ee:	5f                   	pop    %edi
   363ef:	5d                   	pop    %ebp
   363f0:	c3                   	ret    
   363f1:	eb 0d                	jmp    36400 <__ulp>
   363f3:	90                   	nop
   363f4:	90                   	nop
   363f5:	90                   	nop
   363f6:	90                   	nop
   363f7:	90                   	nop
   363f8:	90                   	nop
   363f9:	90                   	nop
   363fa:	90                   	nop
   363fb:	90                   	nop
   363fc:	90                   	nop
   363fd:	90                   	nop
   363fe:	90                   	nop
   363ff:	90                   	nop

00036400 <__ulp>:
   36400:	55                   	push   %ebp
   36401:	89 e5                	mov    %esp,%ebp
   36403:	83 ec 08             	sub    $0x8,%esp
   36406:	dd 45 08             	fldl   0x8(%ebp)
   36409:	dd 5d f8             	fstpl  -0x8(%ebp)
   3640c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
   3640f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
   36415:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
   3641b:	85 c9                	test   %ecx,%ecx
   3641d:	7e 11                	jle    36430 <__ulp+0x30>
   3641f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
   36422:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   36429:	dd 45 f8             	fldl   -0x8(%ebp)
   3642c:	c9                   	leave  
   3642d:	c3                   	ret    
   3642e:	66 90                	xchg   %ax,%ax
   36430:	f7 d9                	neg    %ecx
   36432:	c1 f9 14             	sar    $0x14,%ecx
   36435:	83 f9 13             	cmp    $0x13,%ecx
   36438:	7e 26                	jle    36460 <__ulp+0x60>
   3643a:	83 f9 32             	cmp    $0x32,%ecx
   3643d:	b8 01 00 00 00       	mov    $0x1,%eax
   36442:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
   36449:	7f 0b                	jg     36456 <__ulp+0x56>
   3644b:	ba 33 00 00 00       	mov    $0x33,%edx
   36450:	29 ca                	sub    %ecx,%edx
   36452:	89 d1                	mov    %edx,%ecx
   36454:	d3 e0                	shl    %cl,%eax
   36456:	89 45 f8             	mov    %eax,-0x8(%ebp)
   36459:	dd 45 f8             	fldl   -0x8(%ebp)
   3645c:	c9                   	leave  
   3645d:	c3                   	ret    
   3645e:	66 90                	xchg   %ax,%ax
   36460:	b8 00 00 08 00       	mov    $0x80000,%eax
   36465:	d3 f8                	sar    %cl,%eax
   36467:	89 45 fc             	mov    %eax,-0x4(%ebp)
   3646a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
   36471:	dd 45 f8             	fldl   -0x8(%ebp)
   36474:	c9                   	leave  
   36475:	c3                   	ret    
   36476:	8d 76 00             	lea    0x0(%esi),%esi
   36479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00036480 <__b2d>:
   36480:	55                   	push   %ebp
   36481:	89 e5                	mov    %esp,%ebp
   36483:	57                   	push   %edi
   36484:	56                   	push   %esi
   36485:	53                   	push   %ebx
   36486:	83 ec 18             	sub    $0x18,%esp
   36489:	8b 45 08             	mov    0x8(%ebp),%eax
   3648c:	8d 78 14             	lea    0x14(%eax),%edi
   3648f:	8b 40 10             	mov    0x10(%eax),%eax
   36492:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
   36495:	8b 73 fc             	mov    -0x4(%ebx),%esi
   36498:	8d 43 fc             	lea    -0x4(%ebx),%eax
   3649b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   3649e:	89 34 24             	mov    %esi,(%esp)
   364a1:	e8 6a f8 ff ff       	call   35d10 <__hi0bits>
   364a6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   364a9:	ba 20 00 00 00       	mov    $0x20,%edx
   364ae:	29 c2                	sub    %eax,%edx
   364b0:	83 f8 0a             	cmp    $0xa,%eax
   364b3:	89 11                	mov    %edx,(%ecx)
   364b5:	7f 41                	jg     364f8 <__b2d+0x78>
   364b7:	b9 0b 00 00 00       	mov    $0xb,%ecx
   364bc:	89 f2                	mov    %esi,%edx
   364be:	29 c1                	sub    %eax,%ecx
   364c0:	d3 ea                	shr    %cl,%edx
   364c2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
   364c8:	89 55 ec             	mov    %edx,-0x14(%ebp)
   364cb:	31 d2                	xor    %edx,%edx
   364cd:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
   364d0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   364d7:	73 05                	jae    364de <__b2d+0x5e>
   364d9:	8b 53 f8             	mov    -0x8(%ebx),%edx
   364dc:	d3 ea                	shr    %cl,%edx
   364de:	8d 48 15             	lea    0x15(%eax),%ecx
   364e1:	d3 e6                	shl    %cl,%esi
   364e3:	09 f2                	or     %esi,%edx
   364e5:	89 55 e8             	mov    %edx,-0x18(%ebp)
   364e8:	dd 45 e8             	fldl   -0x18(%ebp)
   364eb:	83 c4 18             	add    $0x18,%esp
   364ee:	5b                   	pop    %ebx
   364ef:	5e                   	pop    %esi
   364f0:	5f                   	pop    %edi
   364f1:	5d                   	pop    %ebp
   364f2:	c3                   	ret    
   364f3:	90                   	nop
   364f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   364f8:	31 d2                	xor    %edx,%edx
   364fa:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
   364fd:	73 09                	jae    36508 <__b2d+0x88>
   364ff:	8b 53 f8             	mov    -0x8(%ebx),%edx
   36502:	8d 4b f8             	lea    -0x8(%ebx),%ecx
   36505:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   36508:	89 c3                	mov    %eax,%ebx
   3650a:	83 eb 0b             	sub    $0xb,%ebx
   3650d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
   36510:	74 4e                	je     36560 <__b2d+0xe0>
   36512:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
   36516:	bb 2b 00 00 00       	mov    $0x2b,%ebx
   3651b:	29 c3                	sub    %eax,%ebx
   3651d:	89 d0                	mov    %edx,%eax
   3651f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
   36526:	d3 e6                	shl    %cl,%esi
   36528:	89 d9                	mov    %ebx,%ecx
   3652a:	d3 e8                	shr    %cl,%eax
   3652c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   3652f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
   36535:	09 c6                	or     %eax,%esi
   36537:	31 c0                	xor    %eax,%eax
   36539:	89 75 ec             	mov    %esi,-0x14(%ebp)
   3653c:	39 f9                	cmp    %edi,%ecx
   3653e:	76 07                	jbe    36547 <__b2d+0xc7>
   36540:	8b 41 fc             	mov    -0x4(%ecx),%eax
   36543:	89 d9                	mov    %ebx,%ecx
   36545:	d3 e8                	shr    %cl,%eax
   36547:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
   3654b:	d3 e2                	shl    %cl,%edx
   3654d:	09 d0                	or     %edx,%eax
   3654f:	89 45 e8             	mov    %eax,-0x18(%ebp)
   36552:	dd 45 e8             	fldl   -0x18(%ebp)
   36555:	83 c4 18             	add    $0x18,%esp
   36558:	5b                   	pop    %ebx
   36559:	5e                   	pop    %esi
   3655a:	5f                   	pop    %edi
   3655b:	5d                   	pop    %ebp
   3655c:	c3                   	ret    
   3655d:	8d 76 00             	lea    0x0(%esi),%esi
   36560:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
   36566:	89 75 ec             	mov    %esi,-0x14(%ebp)
   36569:	89 55 e8             	mov    %edx,-0x18(%ebp)
   3656c:	dd 45 e8             	fldl   -0x18(%ebp)
   3656f:	83 c4 18             	add    $0x18,%esp
   36572:	5b                   	pop    %ebx
   36573:	5e                   	pop    %esi
   36574:	5f                   	pop    %edi
   36575:	5d                   	pop    %ebp
   36576:	c3                   	ret    
   36577:	89 f6                	mov    %esi,%esi
   36579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00036580 <__d2b>:
   36580:	55                   	push   %ebp
   36581:	89 e5                	mov    %esp,%ebp
   36583:	57                   	push   %edi
   36584:	56                   	push   %esi
   36585:	53                   	push   %ebx
   36586:	83 ec 2c             	sub    $0x2c,%esp
   36589:	8b 45 08             	mov    0x8(%ebp),%eax
   3658c:	dd 45 0c             	fldl   0xc(%ebp)
   3658f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   36596:	00 
   36597:	dd 5d d0             	fstpl  -0x30(%ebp)
   3659a:	89 04 24             	mov    %eax,(%esp)
   3659d:	e8 ce f4 ff ff       	call   35a70 <_Balloc>
   365a2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
   365a5:	89 c6                	mov    %eax,%esi
   365a7:	89 d8                	mov    %ebx,%eax
   365a9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
   365af:	25 ff ff 0f 00       	and    $0xfffff,%eax
   365b4:	c1 eb 14             	shr    $0x14,%ebx
   365b7:	85 db                	test   %ebx,%ebx
   365b9:	74 05                	je     365c0 <__d2b+0x40>
   365bb:	0d 00 00 10 00       	or     $0x100000,%eax
   365c0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   365c3:	8b 45 d0             	mov    -0x30(%ebp),%eax
   365c6:	85 c0                	test   %eax,%eax
   365c8:	74 56                	je     36620 <__d2b+0xa0>
   365ca:	89 45 e0             	mov    %eax,-0x20(%ebp)
   365cd:	8d 45 e0             	lea    -0x20(%ebp),%eax
   365d0:	89 04 24             	mov    %eax,(%esp)
   365d3:	e8 98 f7 ff ff       	call   35d70 <__lo0bits>
   365d8:	85 c0                	test   %eax,%eax
   365da:	0f 85 90 00 00 00    	jne    36670 <__d2b+0xf0>
   365e0:	8b 55 e0             	mov    -0x20(%ebp),%edx
   365e3:	89 56 14             	mov    %edx,0x14(%esi)
   365e6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   365e9:	83 fa 01             	cmp    $0x1,%edx
   365ec:	19 ff                	sbb    %edi,%edi
   365ee:	83 c7 02             	add    $0x2,%edi
   365f1:	85 db                	test   %ebx,%ebx
   365f3:	89 56 18             	mov    %edx,0x18(%esi)
   365f6:	89 7e 10             	mov    %edi,0x10(%esi)
   365f9:	74 49                	je     36644 <__d2b+0xc4>
   365fb:	8b 4d 14             	mov    0x14(%ebp),%ecx
   365fe:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
   36605:	89 11                	mov    %edx,(%ecx)
   36607:	ba 35 00 00 00       	mov    $0x35,%edx
   3660c:	29 c2                	sub    %eax,%edx
   3660e:	8b 45 18             	mov    0x18(%ebp),%eax
   36611:	89 10                	mov    %edx,(%eax)
   36613:	83 c4 2c             	add    $0x2c,%esp
   36616:	89 f0                	mov    %esi,%eax
   36618:	5b                   	pop    %ebx
   36619:	5e                   	pop    %esi
   3661a:	5f                   	pop    %edi
   3661b:	5d                   	pop    %ebp
   3661c:	c3                   	ret    
   3661d:	8d 76 00             	lea    0x0(%esi),%esi
   36620:	8d 45 e4             	lea    -0x1c(%ebp),%eax
   36623:	bf 01 00 00 00       	mov    $0x1,%edi
   36628:	89 04 24             	mov    %eax,(%esp)
   3662b:	e8 40 f7 ff ff       	call   35d70 <__lo0bits>
   36630:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   36633:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
   3663a:	89 56 14             	mov    %edx,0x14(%esi)
   3663d:	83 c0 20             	add    $0x20,%eax
   36640:	85 db                	test   %ebx,%ebx
   36642:	75 b7                	jne    365fb <__d2b+0x7b>
   36644:	8b 4d 14             	mov    0x14(%ebp),%ecx
   36647:	2d 32 04 00 00       	sub    $0x432,%eax
   3664c:	89 01                	mov    %eax,(%ecx)
   3664e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
   36652:	c1 e7 05             	shl    $0x5,%edi
   36655:	89 04 24             	mov    %eax,(%esp)
   36658:	e8 b3 f6 ff ff       	call   35d10 <__hi0bits>
   3665d:	29 c7                	sub    %eax,%edi
   3665f:	8b 45 18             	mov    0x18(%ebp),%eax
   36662:	89 38                	mov    %edi,(%eax)
   36664:	83 c4 2c             	add    $0x2c,%esp
   36667:	89 f0                	mov    %esi,%eax
   36669:	5b                   	pop    %ebx
   3666a:	5e                   	pop    %esi
   3666b:	5f                   	pop    %edi
   3666c:	5d                   	pop    %ebp
   3666d:	c3                   	ret    
   3666e:	66 90                	xchg   %ax,%ax
   36670:	8b 55 e4             	mov    -0x1c(%ebp),%edx
   36673:	b9 20 00 00 00       	mov    $0x20,%ecx
   36678:	29 c1                	sub    %eax,%ecx
   3667a:	89 d7                	mov    %edx,%edi
   3667c:	d3 e7                	shl    %cl,%edi
   3667e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   36681:	09 f9                	or     %edi,%ecx
   36683:	89 4e 14             	mov    %ecx,0x14(%esi)
   36686:	89 c1                	mov    %eax,%ecx
   36688:	d3 ea                	shr    %cl,%edx
   3668a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   3668d:	e9 57 ff ff ff       	jmp    365e9 <__d2b+0x69>
   36692:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000366a0 <__ratio>:
   366a0:	55                   	push   %ebp
   366a1:	89 e5                	mov    %esp,%ebp
   366a3:	56                   	push   %esi
   366a4:	53                   	push   %ebx
   366a5:	83 ec 30             	sub    $0x30,%esp
   366a8:	8b 75 08             	mov    0x8(%ebp),%esi
   366ab:	8d 45 f0             	lea    -0x10(%ebp),%eax
   366ae:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   366b1:	89 44 24 04          	mov    %eax,0x4(%esp)
   366b5:	89 34 24             	mov    %esi,(%esp)
   366b8:	e8 c3 fd ff ff       	call   36480 <__b2d>
   366bd:	8d 45 f4             	lea    -0xc(%ebp),%eax
   366c0:	89 44 24 04          	mov    %eax,0x4(%esp)
   366c4:	89 1c 24             	mov    %ebx,(%esp)
   366c7:	dd 55 e0             	fstl   -0x20(%ebp)
   366ca:	dd 5d d8             	fstpl  -0x28(%ebp)
   366cd:	e8 ae fd ff ff       	call   36480 <__b2d>
   366d2:	8b 46 10             	mov    0x10(%esi),%eax
   366d5:	2b 43 10             	sub    0x10(%ebx),%eax
   366d8:	8b 55 f0             	mov    -0x10(%ebp),%edx
   366db:	2b 55 f4             	sub    -0xc(%ebp),%edx
   366de:	c1 e0 05             	shl    $0x5,%eax
   366e1:	01 d0                	add    %edx,%eax
   366e3:	dd 55 d0             	fstl   -0x30(%ebp)
   366e6:	85 c0                	test   %eax,%eax
   366e8:	dd 45 d8             	fldl   -0x28(%ebp)
   366eb:	7e 1b                	jle    36708 <__ratio+0x68>
   366ed:	dd d8                	fstp   %st(0)
   366ef:	c1 e0 14             	shl    $0x14,%eax
   366f2:	01 45 e4             	add    %eax,-0x1c(%ebp)
   366f5:	dd 45 e0             	fldl   -0x20(%ebp)
   366f8:	83 c4 30             	add    $0x30,%esp
   366fb:	5b                   	pop    %ebx
   366fc:	de f1                	fdivp  %st,%st(1)
   366fe:	5e                   	pop    %esi
   366ff:	5d                   	pop    %ebp
   36700:	c3                   	ret    
   36701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36708:	dd d9                	fstp   %st(1)
   3670a:	c1 e0 14             	shl    $0x14,%eax
   3670d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
   36710:	dd 45 d0             	fldl   -0x30(%ebp)
   36713:	83 c4 30             	add    $0x30,%esp
   36716:	5b                   	pop    %ebx
   36717:	de f9                	fdivrp %st,%st(1)
   36719:	5e                   	pop    %esi
   3671a:	5d                   	pop    %ebp
   3671b:	c3                   	ret    
   3671c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00036720 <_mprec_log10>:
   36720:	55                   	push   %ebp
   36721:	89 e5                	mov    %esp,%ebp
   36723:	8b 45 08             	mov    0x8(%ebp),%eax
   36726:	83 f8 17             	cmp    $0x17,%eax
   36729:	7e 1d                	jle    36748 <_mprec_log10+0x28>
   3672b:	d9 e8                	fld1   
   3672d:	d9 05 a0 9a 03 00    	flds   0x39aa0
   36733:	90                   	nop
   36734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36738:	83 e8 01             	sub    $0x1,%eax
   3673b:	dc c9                	fmul   %st,%st(1)
   3673d:	75 f9                	jne    36738 <_mprec_log10+0x18>
   3673f:	dd d8                	fstp   %st(0)
   36741:	5d                   	pop    %ebp
   36742:	c3                   	ret    
   36743:	90                   	nop
   36744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36748:	dd 04 c5 80 9b 03 00 	fldl   0x39b80(,%eax,8)
   3674f:	5d                   	pop    %ebp
   36750:	c3                   	ret    
   36751:	eb 0d                	jmp    36760 <__copybits>
   36753:	90                   	nop
   36754:	90                   	nop
   36755:	90                   	nop
   36756:	90                   	nop
   36757:	90                   	nop
   36758:	90                   	nop
   36759:	90                   	nop
   3675a:	90                   	nop
   3675b:	90                   	nop
   3675c:	90                   	nop
   3675d:	90                   	nop
   3675e:	90                   	nop
   3675f:	90                   	nop

00036760 <__copybits>:
   36760:	55                   	push   %ebp
   36761:	89 e5                	mov    %esp,%ebp
   36763:	57                   	push   %edi
   36764:	8b 7d 10             	mov    0x10(%ebp),%edi
   36767:	56                   	push   %esi
   36768:	8b 75 0c             	mov    0xc(%ebp),%esi
   3676b:	8b 45 08             	mov    0x8(%ebp),%eax
   3676e:	53                   	push   %ebx
   3676f:	8b 4f 10             	mov    0x10(%edi),%ecx
   36772:	8d 56 ff             	lea    -0x1(%esi),%edx
   36775:	c1 fa 05             	sar    $0x5,%edx
   36778:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
   3677c:	8d 57 14             	lea    0x14(%edi),%edx
   3677f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
   36782:	39 da                	cmp    %ebx,%edx
   36784:	73 34                	jae    367ba <__copybits+0x5a>
   36786:	89 c1                	mov    %eax,%ecx
   36788:	83 c2 04             	add    $0x4,%edx
   3678b:	8b 42 fc             	mov    -0x4(%edx),%eax
   3678e:	83 c1 04             	add    $0x4,%ecx
   36791:	39 d3                	cmp    %edx,%ebx
   36793:	89 41 fc             	mov    %eax,-0x4(%ecx)
   36796:	77 f0                	ja     36788 <__copybits+0x28>
   36798:	8b 45 08             	mov    0x8(%ebp),%eax
   3679b:	29 fb                	sub    %edi,%ebx
   3679d:	8d 53 eb             	lea    -0x15(%ebx),%edx
   367a0:	c1 ea 02             	shr    $0x2,%edx
   367a3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
   367a7:	39 c6                	cmp    %eax,%esi
   367a9:	76 13                	jbe    367be <__copybits+0x5e>
   367ab:	90                   	nop
   367ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   367b0:	83 c0 04             	add    $0x4,%eax
   367b3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
   367ba:	39 c6                	cmp    %eax,%esi
   367bc:	77 f2                	ja     367b0 <__copybits+0x50>
   367be:	5b                   	pop    %ebx
   367bf:	5e                   	pop    %esi
   367c0:	5f                   	pop    %edi
   367c1:	5d                   	pop    %ebp
   367c2:	c3                   	ret    
   367c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   367c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000367d0 <__any_on>:
   367d0:	55                   	push   %ebp
   367d1:	89 e5                	mov    %esp,%ebp
   367d3:	8b 45 08             	mov    0x8(%ebp),%eax
   367d6:	57                   	push   %edi
   367d7:	56                   	push   %esi
   367d8:	53                   	push   %ebx
   367d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   367dc:	8d 50 14             	lea    0x14(%eax),%edx
   367df:	8b 40 10             	mov    0x10(%eax),%eax
   367e2:	c1 fb 05             	sar    $0x5,%ebx
   367e5:	39 d8                	cmp    %ebx,%eax
   367e7:	7d 2f                	jge    36818 <__any_on+0x48>
   367e9:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
   367ec:	39 da                	cmp    %ebx,%edx
   367ee:	73 1d                	jae    3680d <__any_on+0x3d>
   367f0:	8d 43 fc             	lea    -0x4(%ebx),%eax
   367f3:	8b 5b fc             	mov    -0x4(%ebx),%ebx
   367f6:	85 db                	test   %ebx,%ebx
   367f8:	74 0f                	je     36809 <__any_on+0x39>
   367fa:	eb 44                	jmp    36840 <__any_on+0x70>
   367fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36800:	83 e8 04             	sub    $0x4,%eax
   36803:	8b 08                	mov    (%eax),%ecx
   36805:	85 c9                	test   %ecx,%ecx
   36807:	75 37                	jne    36840 <__any_on+0x70>
   36809:	39 c2                	cmp    %eax,%edx
   3680b:	72 f3                	jb     36800 <__any_on+0x30>
   3680d:	31 c0                	xor    %eax,%eax
   3680f:	5b                   	pop    %ebx
   36810:	5e                   	pop    %esi
   36811:	5f                   	pop    %edi
   36812:	5d                   	pop    %ebp
   36813:	c3                   	ret    
   36814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36818:	7e 1e                	jle    36838 <__any_on+0x68>
   3681a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
   3681d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
   36820:	83 e1 1f             	and    $0x1f,%ecx
   36823:	74 c7                	je     367ec <__any_on+0x1c>
   36825:	8b 3b                	mov    (%ebx),%edi
   36827:	b8 01 00 00 00       	mov    $0x1,%eax
   3682c:	89 fe                	mov    %edi,%esi
   3682e:	d3 ee                	shr    %cl,%esi
   36830:	d3 e6                	shl    %cl,%esi
   36832:	39 fe                	cmp    %edi,%esi
   36834:	75 d9                	jne    3680f <__any_on+0x3f>
   36836:	eb b4                	jmp    367ec <__any_on+0x1c>
   36838:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
   3683b:	eb af                	jmp    367ec <__any_on+0x1c>
   3683d:	8d 76 00             	lea    0x0(%esi),%esi
   36840:	5b                   	pop    %ebx
   36841:	b8 01 00 00 00       	mov    $0x1,%eax
   36846:	5e                   	pop    %esi
   36847:	5f                   	pop    %edi
   36848:	5d                   	pop    %ebp
   36849:	c3                   	ret    
   3684a:	66 90                	xchg   %ax,%ax
   3684c:	66 90                	xchg   %ax,%ax
   3684e:	66 90                	xchg   %ax,%ax

00036850 <_sbrk_r>:
   36850:	55                   	push   %ebp
   36851:	89 e5                	mov    %esp,%ebp
   36853:	83 ec 18             	sub    $0x18,%esp
   36856:	8b 45 0c             	mov    0xc(%ebp),%eax
   36859:	c7 05 00 50 09 00 00 	movl   $0x0,0x95000
   36860:	00 00 00 
   36863:	89 04 24             	mov    %eax,(%esp)
   36866:	e8 aa a0 ff ff       	call   30915 <sbrk>
   3686b:	83 f8 ff             	cmp    $0xffffffff,%eax
   3686e:	74 08                	je     36878 <_sbrk_r+0x28>
   36870:	c9                   	leave  
   36871:	c3                   	ret    
   36872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36878:	8b 15 00 50 09 00    	mov    0x95000,%edx
   3687e:	85 d2                	test   %edx,%edx
   36880:	74 ee                	je     36870 <_sbrk_r+0x20>
   36882:	8b 4d 08             	mov    0x8(%ebp),%ecx
   36885:	89 11                	mov    %edx,(%ecx)
   36887:	c9                   	leave  
   36888:	c3                   	ret    
   36889:	66 90                	xchg   %ax,%ax
   3688b:	66 90                	xchg   %ax,%ax
   3688d:	66 90                	xchg   %ax,%ax
   3688f:	90                   	nop

00036890 <__fpclassifyd>:
   36890:	55                   	push   %ebp
   36891:	b8 02 00 00 00       	mov    $0x2,%eax
   36896:	89 e5                	mov    %esp,%ebp
   36898:	53                   	push   %ebx
   36899:	83 ec 0c             	sub    $0xc,%esp
   3689c:	dd 45 08             	fldl   0x8(%ebp)
   3689f:	dd 5d f0             	fstpl  -0x10(%ebp)
   368a2:	8b 55 f0             	mov    -0x10(%ebp),%edx
   368a5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
   368a8:	89 d3                	mov    %edx,%ebx
   368aa:	09 cb                	or     %ecx,%ebx
   368ac:	75 0a                	jne    368b8 <__fpclassifyd+0x28>
   368ae:	83 c4 0c             	add    $0xc,%esp
   368b1:	5b                   	pop    %ebx
   368b2:	5d                   	pop    %ebp
   368b3:	c3                   	ret    
   368b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   368b8:	85 d2                	test   %edx,%edx
   368ba:	0f 94 c2             	sete   %dl
   368bd:	75 08                	jne    368c7 <__fpclassifyd+0x37>
   368bf:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
   368c5:	74 e7                	je     368ae <__fpclassifyd+0x1e>
   368c7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
   368cd:	b8 04 00 00 00       	mov    $0x4,%eax
   368d2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
   368d8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
   368de:	76 ce                	jbe    368ae <__fpclassifyd+0x1e>
   368e0:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
   368e6:	b0 03                	mov    $0x3,%al
   368e8:	76 c4                	jbe    368ae <__fpclassifyd+0x1e>
   368ea:	31 c0                	xor    %eax,%eax
   368ec:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
   368f2:	0f 94 c0             	sete   %al
   368f5:	21 d0                	and    %edx,%eax
   368f7:	eb b5                	jmp    368ae <__fpclassifyd+0x1e>
   368f9:	66 90                	xchg   %ax,%ax
   368fb:	66 90                	xchg   %ax,%ax
   368fd:	66 90                	xchg   %ax,%ax
   368ff:	90                   	nop

00036900 <strcmp>:
   36900:	55                   	push   %ebp
   36901:	89 e5                	mov    %esp,%ebp
   36903:	8b 45 08             	mov    0x8(%ebp),%eax
   36906:	8b 55 0c             	mov    0xc(%ebp),%edx
   36909:	53                   	push   %ebx
   3690a:	89 c1                	mov    %eax,%ecx
   3690c:	09 d1                	or     %edx,%ecx
   3690e:	83 e1 03             	and    $0x3,%ecx
   36911:	75 17                	jne    3692a <strcmp+0x2a>
   36913:	8b 08                	mov    (%eax),%ecx
   36915:	3b 0a                	cmp    (%edx),%ecx
   36917:	74 33                	je     3694c <strcmp+0x4c>
   36919:	eb 0f                	jmp    3692a <strcmp+0x2a>
   3691b:	90                   	nop
   3691c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36920:	3a 0a                	cmp    (%edx),%cl
   36922:	75 0d                	jne    36931 <strcmp+0x31>
   36924:	83 c0 01             	add    $0x1,%eax
   36927:	83 c2 01             	add    $0x1,%edx
   3692a:	0f b6 08             	movzbl (%eax),%ecx
   3692d:	84 c9                	test   %cl,%cl
   3692f:	75 ef                	jne    36920 <strcmp+0x20>
   36931:	0f b6 00             	movzbl (%eax),%eax
   36934:	0f b6 12             	movzbl (%edx),%edx
   36937:	5b                   	pop    %ebx
   36938:	5d                   	pop    %ebp
   36939:	29 d0                	sub    %edx,%eax
   3693b:	c3                   	ret    
   3693c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36940:	83 c0 04             	add    $0x4,%eax
   36943:	83 c2 04             	add    $0x4,%edx
   36946:	8b 08                	mov    (%eax),%ecx
   36948:	3b 0a                	cmp    (%edx),%ecx
   3694a:	75 de                	jne    3692a <strcmp+0x2a>
   3694c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
   36952:	f7 d1                	not    %ecx
   36954:	21 cb                	and    %ecx,%ebx
   36956:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
   3695c:	74 e2                	je     36940 <strcmp+0x40>
   3695e:	31 c0                	xor    %eax,%eax
   36960:	5b                   	pop    %ebx
   36961:	5d                   	pop    %ebp
   36962:	c3                   	ret    
   36963:	66 90                	xchg   %ax,%ax
   36965:	66 90                	xchg   %ax,%ax
   36967:	66 90                	xchg   %ax,%ax
   36969:	66 90                	xchg   %ax,%ax
   3696b:	66 90                	xchg   %ax,%ax
   3696d:	66 90                	xchg   %ax,%ax
   3696f:	90                   	nop

00036970 <strlen>:
   36970:	55                   	push   %ebp
   36971:	89 e5                	mov    %esp,%ebp
   36973:	57                   	push   %edi
   36974:	8b 55 08             	mov    0x8(%ebp),%edx
   36977:	89 d7                	mov    %edx,%edi
   36979:	f7 c7 03 00 00 00    	test   $0x3,%edi
   3697f:	74 25                	je     369a6 <L5>
   36981:	8a 0f                	mov    (%edi),%cl
   36983:	47                   	inc    %edi
   36984:	84 c9                	test   %cl,%cl
   36986:	74 56                	je     369de <L15>
   36988:	f7 c7 03 00 00 00    	test   $0x3,%edi
   3698e:	74 16                	je     369a6 <L5>
   36990:	8a 0f                	mov    (%edi),%cl
   36992:	47                   	inc    %edi
   36993:	84 c9                	test   %cl,%cl
   36995:	74 47                	je     369de <L15>
   36997:	f7 c7 03 00 00 00    	test   $0x3,%edi
   3699d:	74 07                	je     369a6 <L5>
   3699f:	8a 0f                	mov    (%edi),%cl
   369a1:	47                   	inc    %edi
   369a2:	84 c9                	test   %cl,%cl
   369a4:	74 38                	je     369de <L15>

000369a6 <L5>:
   369a6:	83 ef 04             	sub    $0x4,%edi
   369a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000369b0 <L10>:
   369b0:	83 c7 04             	add    $0x4,%edi
   369b3:	8b 0f                	mov    (%edi),%ecx
   369b5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
   369bb:	f7 d1                	not    %ecx
   369bd:	21 c8                	and    %ecx,%eax
   369bf:	a9 80 80 80 80       	test   $0x80808080,%eax
   369c4:	74 ea                	je     369b0 <L10>
   369c6:	f7 d1                	not    %ecx
   369c8:	47                   	inc    %edi
   369c9:	84 c9                	test   %cl,%cl
   369cb:	74 11                	je     369de <L15>
   369cd:	47                   	inc    %edi
   369ce:	c1 e9 08             	shr    $0x8,%ecx
   369d1:	84 c9                	test   %cl,%cl
   369d3:	74 09                	je     369de <L15>
   369d5:	47                   	inc    %edi
   369d6:	c1 e9 08             	shr    $0x8,%ecx
   369d9:	84 c9                	test   %cl,%cl
   369db:	74 01                	je     369de <L15>
   369dd:	47                   	inc    %edi

000369de <L15>:
   369de:	29 d7                	sub    %edx,%edi
   369e0:	8d 47 ff             	lea    -0x1(%edi),%eax
   369e3:	8d 65 fc             	lea    -0x4(%ebp),%esp
   369e6:	5f                   	pop    %edi
   369e7:	c9                   	leave  
   369e8:	c3                   	ret    
   369e9:	66 90                	xchg   %ax,%ax
   369eb:	66 90                	xchg   %ax,%ax
   369ed:	66 90                	xchg   %ax,%ax
   369ef:	90                   	nop

000369f0 <__ssprint_r>:
   369f0:	55                   	push   %ebp
   369f1:	89 e5                	mov    %esp,%ebp
   369f3:	57                   	push   %edi
   369f4:	56                   	push   %esi
   369f5:	53                   	push   %ebx
   369f6:	83 ec 2c             	sub    $0x2c,%esp
   369f9:	8b 45 10             	mov    0x10(%ebp),%eax
   369fc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   369ff:	8b 00                	mov    (%eax),%eax
   36a01:	89 c7                	mov    %eax,%edi
   36a03:	8b 45 10             	mov    0x10(%ebp),%eax
   36a06:	8b 40 08             	mov    0x8(%eax),%eax
   36a09:	85 c0                	test   %eax,%eax
   36a0b:	0f 84 af 01 00 00    	je     36bc0 <__ssprint_r+0x1d0>
   36a11:	31 c9                	xor    %ecx,%ecx
   36a13:	31 d2                	xor    %edx,%edx
   36a15:	8b 03                	mov    (%ebx),%eax
   36a17:	89 ce                	mov    %ecx,%esi
   36a19:	85 f6                	test   %esi,%esi
   36a1b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   36a1e:	0f 84 ec 00 00 00    	je     36b10 <__ssprint_r+0x120>
   36a24:	8b 53 08             	mov    0x8(%ebx),%edx
   36a27:	39 d6                	cmp    %edx,%esi
   36a29:	0f 82 fc 00 00 00    	jb     36b2b <__ssprint_r+0x13b>
   36a2f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
   36a33:	66 f7 c1 80 04       	test   $0x480,%cx
   36a38:	0f 84 fa 00 00 00    	je     36b38 <__ssprint_r+0x148>
   36a3e:	8b 53 10             	mov    0x10(%ebx),%edx
   36a41:	29 d0                	sub    %edx,%eax
   36a43:	89 45 dc             	mov    %eax,-0x24(%ebp)
   36a46:	8b 43 14             	mov    0x14(%ebx),%eax
   36a49:	89 55 d8             	mov    %edx,-0x28(%ebp)
   36a4c:	8d 04 40             	lea    (%eax,%eax,2),%eax
   36a4f:	89 c2                	mov    %eax,%edx
   36a51:	c1 ea 1f             	shr    $0x1f,%edx
   36a54:	01 d0                	add    %edx,%eax
   36a56:	89 45 e0             	mov    %eax,-0x20(%ebp)
   36a59:	8b 45 dc             	mov    -0x24(%ebp),%eax
   36a5c:	d1 7d e0             	sarl   -0x20(%ebp)
   36a5f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
   36a63:	39 45 e0             	cmp    %eax,-0x20(%ebp)
   36a66:	0f 83 34 01 00 00    	jae    36ba0 <__ssprint_r+0x1b0>
   36a6c:	89 45 e0             	mov    %eax,-0x20(%ebp)
   36a6f:	80 e5 04             	and    $0x4,%ch
   36a72:	0f 84 c8 00 00 00    	je     36b40 <__ssprint_r+0x150>
   36a78:	89 44 24 04          	mov    %eax,0x4(%esp)
   36a7c:	8b 45 08             	mov    0x8(%ebp),%eax
   36a7f:	89 04 24             	mov    %eax,(%esp)
   36a82:	e8 e9 e7 ff ff       	call   35270 <_malloc_r>
   36a87:	85 c0                	test   %eax,%eax
   36a89:	89 c2                	mov    %eax,%edx
   36a8b:	0f 84 e1 00 00 00    	je     36b72 <__ssprint_r+0x182>
   36a91:	8b 45 dc             	mov    -0x24(%ebp),%eax
   36a94:	89 55 d8             	mov    %edx,-0x28(%ebp)
   36a97:	89 44 24 08          	mov    %eax,0x8(%esp)
   36a9b:	8b 43 10             	mov    0x10(%ebx),%eax
   36a9e:	89 14 24             	mov    %edx,(%esp)
   36aa1:	89 44 24 04          	mov    %eax,0x4(%esp)
   36aa5:	e8 0a b2 ff ff       	call   31cb4 <memcpy>
   36aaa:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
   36aae:	8b 55 d8             	mov    -0x28(%ebp),%edx
   36ab1:	66 25 7f fb          	and    $0xfb7f,%ax
   36ab5:	0c 80                	or     $0x80,%al
   36ab7:	66 89 43 0c          	mov    %ax,0xc(%ebx)
   36abb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   36abe:	8b 45 dc             	mov    -0x24(%ebp),%eax
   36ac1:	89 53 10             	mov    %edx,0x10(%ebx)
   36ac4:	89 4b 14             	mov    %ecx,0x14(%ebx)
   36ac7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
   36aca:	01 d0                	add    %edx,%eax
   36acc:	89 03                	mov    %eax,(%ebx)
   36ace:	89 f2                	mov    %esi,%edx
   36ad0:	89 4b 08             	mov    %ecx,0x8(%ebx)
   36ad3:	89 f1                	mov    %esi,%ecx
   36ad5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
   36ad9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   36adc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
   36adf:	89 04 24             	mov    %eax,(%esp)
   36ae2:	89 55 dc             	mov    %edx,-0x24(%ebp)
   36ae5:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   36ae9:	e8 22 13 00 00       	call   37e10 <memmove>
   36aee:	8b 03                	mov    (%ebx),%eax
   36af0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   36af3:	8b 55 dc             	mov    -0x24(%ebp),%edx
   36af6:	29 53 08             	sub    %edx,0x8(%ebx)
   36af9:	01 c8                	add    %ecx,%eax
   36afb:	8b 4d 10             	mov    0x10(%ebp),%ecx
   36afe:	89 03                	mov    %eax,(%ebx)
   36b00:	8b 51 08             	mov    0x8(%ecx),%edx
   36b03:	29 f2                	sub    %esi,%edx
   36b05:	85 d2                	test   %edx,%edx
   36b07:	89 51 08             	mov    %edx,0x8(%ecx)
   36b0a:	0f 84 98 00 00 00    	je     36ba8 <__ssprint_r+0x1b8>
   36b10:	8b 77 04             	mov    0x4(%edi),%esi
   36b13:	83 c7 08             	add    $0x8,%edi
   36b16:	8b 4f f8             	mov    -0x8(%edi),%ecx
   36b19:	85 f6                	test   %esi,%esi
   36b1b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
   36b1e:	74 f0                	je     36b10 <__ssprint_r+0x120>
   36b20:	8b 53 08             	mov    0x8(%ebx),%edx
   36b23:	39 d6                	cmp    %edx,%esi
   36b25:	0f 83 04 ff ff ff    	jae    36a2f <__ssprint_r+0x3f>
   36b2b:	89 f2                	mov    %esi,%edx
   36b2d:	89 f1                	mov    %esi,%ecx
   36b2f:	eb a4                	jmp    36ad5 <__ssprint_r+0xe5>
   36b31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36b38:	89 d1                	mov    %edx,%ecx
   36b3a:	eb 99                	jmp    36ad5 <__ssprint_r+0xe5>
   36b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   36b40:	89 44 24 08          	mov    %eax,0x8(%esp)
   36b44:	8b 45 d8             	mov    -0x28(%ebp),%eax
   36b47:	89 44 24 04          	mov    %eax,0x4(%esp)
   36b4b:	8b 45 08             	mov    0x8(%ebp),%eax
   36b4e:	89 04 24             	mov    %eax,(%esp)
   36b51:	e8 4a 13 00 00       	call   37ea0 <_realloc_r>
   36b56:	85 c0                	test   %eax,%eax
   36b58:	89 c2                	mov    %eax,%edx
   36b5a:	0f 85 5b ff ff ff    	jne    36abb <__ssprint_r+0xcb>
   36b60:	8b 43 10             	mov    0x10(%ebx),%eax
   36b63:	89 44 24 04          	mov    %eax,0x4(%esp)
   36b67:	8b 45 08             	mov    0x8(%ebp),%eax
   36b6a:	89 04 24             	mov    %eax,(%esp)
   36b6d:	e8 3e 10 00 00       	call   37bb0 <_free_r>
   36b72:	8b 45 08             	mov    0x8(%ebp),%eax
   36b75:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   36b7b:	8b 45 10             	mov    0x10(%ebp),%eax
   36b7e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
   36b83:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
   36b8a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   36b91:	83 c4 2c             	add    $0x2c,%esp
   36b94:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   36b99:	5b                   	pop    %ebx
   36b9a:	5e                   	pop    %esi
   36b9b:	5f                   	pop    %edi
   36b9c:	5d                   	pop    %ebp
   36b9d:	c3                   	ret    
   36b9e:	66 90                	xchg   %ax,%ax
   36ba0:	8b 45 e0             	mov    -0x20(%ebp),%eax
   36ba3:	e9 c7 fe ff ff       	jmp    36a6f <__ssprint_r+0x7f>
   36ba8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
   36baf:	83 c4 2c             	add    $0x2c,%esp
   36bb2:	31 c0                	xor    %eax,%eax
   36bb4:	5b                   	pop    %ebx
   36bb5:	5e                   	pop    %esi
   36bb6:	5f                   	pop    %edi
   36bb7:	5d                   	pop    %ebp
   36bb8:	c3                   	ret    
   36bb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36bc0:	8b 45 10             	mov    0x10(%ebp),%eax
   36bc3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
   36bca:	83 c4 2c             	add    $0x2c,%esp
   36bcd:	31 c0                	xor    %eax,%eax
   36bcf:	5b                   	pop    %ebx
   36bd0:	5e                   	pop    %esi
   36bd1:	5f                   	pop    %edi
   36bd2:	5d                   	pop    %ebp
   36bd3:	c3                   	ret    
   36bd4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36bda:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00036be0 <_svfiprintf_r>:
   36be0:	55                   	push   %ebp
   36be1:	89 e5                	mov    %esp,%ebp
   36be3:	57                   	push   %edi
   36be4:	56                   	push   %esi
   36be5:	53                   	push   %ebx
   36be6:	81 ec cc 00 00 00    	sub    $0xcc,%esp
   36bec:	8b 45 0c             	mov    0xc(%ebp),%eax
   36bef:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
   36bf3:	74 0b                	je     36c00 <_svfiprintf_r+0x20>
   36bf5:	8b 50 10             	mov    0x10(%eax),%edx
   36bf8:	85 d2                	test   %edx,%edx
   36bfa:	0f 84 1c 0d 00 00    	je     3791c <_svfiprintf_r+0xd3c>
   36c00:	8d 45 a8             	lea    -0x58(%ebp),%eax
   36c03:	8d 5d a7             	lea    -0x59(%ebp),%ebx
   36c06:	89 c6                	mov    %eax,%esi
   36c08:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
   36c0e:	29 d8                	sub    %ebx,%eax
   36c10:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
   36c17:	00 00 00 
   36c1a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   36c21:	00 00 00 
   36c24:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
   36c2b:	00 00 00 
   36c2e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
   36c35:	00 00 00 
   36c38:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
   36c3e:	8b 45 10             	mov    0x10(%ebp),%eax
   36c41:	8b 5d 10             	mov    0x10(%ebp),%ebx
   36c44:	0f b6 00             	movzbl (%eax),%eax
   36c47:	84 c0                	test   %al,%al
   36c49:	74 58                	je     36ca3 <_svfiprintf_r+0xc3>
   36c4b:	3c 25                	cmp    $0x25,%al
   36c4d:	75 13                	jne    36c62 <_svfiprintf_r+0x82>
   36c4f:	eb 52                	jmp    36ca3 <_svfiprintf_r+0xc3>
   36c51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   36c58:	84 c0                	test   %al,%al
   36c5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36c60:	74 0a                	je     36c6c <_svfiprintf_r+0x8c>
   36c62:	83 c3 01             	add    $0x1,%ebx
   36c65:	0f b6 03             	movzbl (%ebx),%eax
   36c68:	3c 25                	cmp    $0x25,%al
   36c6a:	75 ec                	jne    36c58 <_svfiprintf_r+0x78>
   36c6c:	89 df                	mov    %ebx,%edi
   36c6e:	2b 7d 10             	sub    0x10(%ebp),%edi
   36c71:	74 30                	je     36ca3 <_svfiprintf_r+0xc3>
   36c73:	8b 45 10             	mov    0x10(%ebp),%eax
   36c76:	83 c6 08             	add    $0x8,%esi
   36c79:	89 7e fc             	mov    %edi,-0x4(%esi)
   36c7c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
   36c82:	89 46 f8             	mov    %eax,-0x8(%esi)
   36c85:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36c8b:	83 c0 01             	add    $0x1,%eax
   36c8e:	83 f8 07             	cmp    $0x7,%eax
   36c91:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   36c97:	0f 8f eb 0a 00 00    	jg     37788 <_svfiprintf_r+0xba8>
   36c9d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
   36ca3:	80 3b 00             	cmpb   $0x0,(%ebx)
   36ca6:	0f 84 11 09 00 00    	je     375bd <_svfiprintf_r+0x9dd>
   36cac:	8d 43 01             	lea    0x1(%ebx),%eax
   36caf:	31 ff                	xor    %edi,%edi
   36cb1:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   36cb8:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
   36cbf:	ff ff ff 
   36cc2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
   36cc9:	00 00 00 
   36ccc:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
   36cd3:	00 00 00 
   36cd6:	8d 50 01             	lea    0x1(%eax),%edx
   36cd9:	0f be 00             	movsbl (%eax),%eax
   36cdc:	8d 48 e0             	lea    -0x20(%eax),%ecx
   36cdf:	83 f9 58             	cmp    $0x58,%ecx
   36ce2:	0f 87 63 03 00 00    	ja     3704b <_svfiprintf_r+0x46b>
   36ce8:	ff 24 8d 48 9c 03 00 	jmp    *0x39c48(,%ecx,4)
   36cef:	90                   	nop
   36cf0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   36cf7:	89 d0                	mov    %edx,%eax
   36cf9:	eb db                	jmp    36cd6 <_svfiprintf_r+0xf6>
   36cfb:	8b 45 14             	mov    0x14(%ebp),%eax
   36cfe:	8b 5d 14             	mov    0x14(%ebp),%ebx
   36d01:	8b 00                	mov    (%eax),%eax
   36d03:	83 c3 04             	add    $0x4,%ebx
   36d06:	89 5d 14             	mov    %ebx,0x14(%ebp)
   36d09:	85 c0                	test   %eax,%eax
   36d0b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
   36d11:	79 e4                	jns    36cf7 <_svfiprintf_r+0x117>
   36d13:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
   36d19:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
   36d20:	89 d0                	mov    %edx,%eax
   36d22:	eb b2                	jmp    36cd6 <_svfiprintf_r+0xf6>
   36d24:	bf 2b 00 00 00       	mov    $0x2b,%edi
   36d29:	89 d0                	mov    %edx,%eax
   36d2b:	eb a9                	jmp    36cd6 <_svfiprintf_r+0xf6>
   36d2d:	8b 45 14             	mov    0x14(%ebp),%eax
   36d30:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
   36d37:	89 55 10             	mov    %edx,0x10(%ebp)
   36d3a:	ba 02 00 00 00       	mov    $0x2,%edx
   36d3f:	8b 08                	mov    (%eax),%ecx
   36d41:	83 c0 04             	add    $0x4,%eax
   36d44:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
   36d4b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
   36d52:	89 45 14             	mov    %eax,0x14(%ebp)
   36d55:	c7 85 44 ff ff ff e7 	movl   $0x398e7,-0xbc(%ebp)
   36d5c:	98 03 00 
   36d5f:	90                   	nop
   36d60:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   36d67:	31 ff                	xor    %edi,%edi
   36d69:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
   36d6f:	89 d8                	mov    %ebx,%eax
   36d71:	24 7f                	and    $0x7f,%al
   36d73:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
   36d7a:	0f 48 c3             	cmovs  %ebx,%eax
   36d7d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
   36d83:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   36d89:	85 c0                	test   %eax,%eax
   36d8b:	75 08                	jne    36d95 <_svfiprintf_r+0x1b5>
   36d8d:	85 c9                	test   %ecx,%ecx
   36d8f:	0f 84 03 08 00 00    	je     37598 <_svfiprintf_r+0x9b8>
   36d95:	80 fa 01             	cmp    $0x1,%dl
   36d98:	0f 84 8a 0a 00 00    	je     37828 <_svfiprintf_r+0xc48>
   36d9e:	80 fa 02             	cmp    $0x2,%dl
   36da1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
   36da4:	0f 85 86 01 00 00    	jne    36f30 <_svfiprintf_r+0x350>
   36daa:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
   36db0:	89 c8                	mov    %ecx,%eax
   36db2:	83 eb 01             	sub    $0x1,%ebx
   36db5:	83 e0 0f             	and    $0xf,%eax
   36db8:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
   36dbc:	c1 e9 04             	shr    $0x4,%ecx
   36dbf:	85 c9                	test   %ecx,%ecx
   36dc1:	88 03                	mov    %al,(%ebx)
   36dc3:	75 eb                	jne    36db0 <_svfiprintf_r+0x1d0>
   36dc5:	8d 45 a8             	lea    -0x58(%ebp),%eax
   36dc8:	29 d8                	sub    %ebx,%eax
   36dca:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   36dd0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   36dd6:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
   36ddc:	39 c1                	cmp    %eax,%ecx
   36dde:	0f 4d c1             	cmovge %ecx,%eax
   36de1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
   36de7:	89 f8                	mov    %edi,%eax
   36de9:	3c 01                	cmp    $0x1,%al
   36deb:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
   36df2:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
   36df8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
   36dfe:	89 d0                	mov    %edx,%eax
   36e00:	89 cf                	mov    %ecx,%edi
   36e02:	83 c0 02             	add    $0x2,%eax
   36e05:	83 e7 02             	and    $0x2,%edi
   36e08:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
   36e0e:	89 cf                	mov    %ecx,%edi
   36e10:	0f 44 c2             	cmove  %edx,%eax
   36e13:	81 e7 84 00 00 00    	and    $0x84,%edi
   36e19:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
   36e1f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
   36e25:	0f 85 cd 04 00 00    	jne    372f8 <_svfiprintf_r+0x718>
   36e2b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
   36e31:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
   36e37:	85 ff                	test   %edi,%edi
   36e39:	0f 8e b9 04 00 00    	jle    372f8 <_svfiprintf_r+0x718>
   36e3f:	83 ff 10             	cmp    $0x10,%edi
   36e42:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   36e48:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36e4e:	7e 7c                	jle    36ecc <_svfiprintf_r+0x2ec>
   36e50:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
   36e56:	89 f1                	mov    %esi,%ecx
   36e58:	8b 5d 08             	mov    0x8(%ebp),%ebx
   36e5b:	8b 75 0c             	mov    0xc(%ebp),%esi
   36e5e:	eb 08                	jmp    36e68 <_svfiprintf_r+0x288>
   36e60:	83 ef 10             	sub    $0x10,%edi
   36e63:	83 ff 10             	cmp    $0x10,%edi
   36e66:	7e 5c                	jle    36ec4 <_svfiprintf_r+0x2e4>
   36e68:	83 c0 01             	add    $0x1,%eax
   36e6b:	83 c2 10             	add    $0x10,%edx
   36e6e:	c7 01 bc 9d 03 00    	movl   $0x39dbc,(%ecx)
   36e74:	83 c1 08             	add    $0x8,%ecx
   36e77:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   36e7e:	83 f8 07             	cmp    $0x7,%eax
   36e81:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   36e87:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   36e8d:	7e d1                	jle    36e60 <_svfiprintf_r+0x280>
   36e8f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   36e95:	89 44 24 08          	mov    %eax,0x8(%esp)
   36e99:	89 74 24 04          	mov    %esi,0x4(%esp)
   36e9d:	89 1c 24             	mov    %ebx,(%esp)
   36ea0:	e8 4b fb ff ff       	call   369f0 <__ssprint_r>
   36ea5:	85 c0                	test   %eax,%eax
   36ea7:	0f 85 3b 07 00 00    	jne    375e8 <_svfiprintf_r+0xa08>
   36ead:	83 ef 10             	sub    $0x10,%edi
   36eb0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   36eb6:	83 ff 10             	cmp    $0x10,%edi
   36eb9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36ebf:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   36ec2:	7f a4                	jg     36e68 <_svfiprintf_r+0x288>
   36ec4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
   36eca:	89 ce                	mov    %ecx,%esi
   36ecc:	83 c0 01             	add    $0x1,%eax
   36ecf:	01 fa                	add    %edi,%edx
   36ed1:	c7 06 bc 9d 03 00    	movl   $0x39dbc,(%esi)
   36ed7:	83 c6 08             	add    $0x8,%esi
   36eda:	89 7e fc             	mov    %edi,-0x4(%esi)
   36edd:	83 f8 07             	cmp    $0x7,%eax
   36ee0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   36ee6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   36eec:	0f 8e 12 04 00 00    	jle    37304 <_svfiprintf_r+0x724>
   36ef2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   36ef8:	89 44 24 08          	mov    %eax,0x8(%esp)
   36efc:	8b 45 0c             	mov    0xc(%ebp),%eax
   36eff:	89 44 24 04          	mov    %eax,0x4(%esp)
   36f03:	8b 45 08             	mov    0x8(%ebp),%eax
   36f06:	89 04 24             	mov    %eax,(%esp)
   36f09:	e8 e2 fa ff ff       	call   369f0 <__ssprint_r>
   36f0e:	85 c0                	test   %eax,%eax
   36f10:	0f 85 d2 06 00 00    	jne    375e8 <_svfiprintf_r+0xa08>
   36f16:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   36f1c:	8d 75 a8             	lea    -0x58(%ebp),%esi
   36f1f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   36f25:	e9 da 03 00 00       	jmp    37304 <_svfiprintf_r+0x724>
   36f2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   36f30:	89 c8                	mov    %ecx,%eax
   36f32:	83 eb 01             	sub    $0x1,%ebx
   36f35:	83 e0 07             	and    $0x7,%eax
   36f38:	c1 e9 03             	shr    $0x3,%ecx
   36f3b:	83 c0 30             	add    $0x30,%eax
   36f3e:	85 c9                	test   %ecx,%ecx
   36f40:	88 03                	mov    %al,(%ebx)
   36f42:	75 ec                	jne    36f30 <_svfiprintf_r+0x350>
   36f44:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
   36f4b:	89 da                	mov    %ebx,%edx
   36f4d:	0f 84 72 fe ff ff    	je     36dc5 <_svfiprintf_r+0x1e5>
   36f53:	3c 30                	cmp    $0x30,%al
   36f55:	0f 84 6a fe ff ff    	je     36dc5 <_svfiprintf_r+0x1e5>
   36f5b:	83 eb 01             	sub    $0x1,%ebx
   36f5e:	8d 45 a8             	lea    -0x58(%ebp),%eax
   36f61:	29 d8                	sub    %ebx,%eax
   36f63:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
   36f67:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   36f6d:	e9 5e fe ff ff       	jmp    36dd0 <_svfiprintf_r+0x1f0>
   36f72:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   36f79:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   36f80:	89 55 10             	mov    %edx,0x10(%ebp)
   36f83:	8b 45 14             	mov    0x14(%ebp),%eax
   36f86:	0f 85 48 01 00 00    	jne    370d4 <_svfiprintf_r+0x4f4>
   36f8c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   36f93:	0f 84 3b 01 00 00    	je     370d4 <_svfiprintf_r+0x4f4>
   36f99:	0f b7 08             	movzwl (%eax),%ecx
   36f9c:	83 c0 04             	add    $0x4,%eax
   36f9f:	31 d2                	xor    %edx,%edx
   36fa1:	89 45 14             	mov    %eax,0x14(%ebp)
   36fa4:	e9 b7 fd ff ff       	jmp    36d60 <_svfiprintf_r+0x180>
   36fa9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   36fb0:	89 f8                	mov    %edi,%eax
   36fb2:	89 55 10             	mov    %edx,0x10(%ebp)
   36fb5:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
   36fbb:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   36fc2:	8b 45 14             	mov    0x14(%ebp),%eax
   36fc5:	75 0d                	jne    36fd4 <_svfiprintf_r+0x3f4>
   36fc7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   36fce:	0f 85 f2 08 00 00    	jne    378c6 <_svfiprintf_r+0xce6>
   36fd4:	8b 08                	mov    (%eax),%ecx
   36fd6:	83 c0 04             	add    $0x4,%eax
   36fd9:	89 45 14             	mov    %eax,0x14(%ebp)
   36fdc:	85 c9                	test   %ecx,%ecx
   36fde:	0f 88 f3 08 00 00    	js     378d7 <_svfiprintf_r+0xcf7>
   36fe4:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   36feb:	ba 01 00 00 00       	mov    $0x1,%edx
   36ff0:	e9 74 fd ff ff       	jmp    36d69 <_svfiprintf_r+0x189>
   36ff5:	0f be 02             	movsbl (%edx),%eax
   36ff8:	8d 5a 01             	lea    0x1(%edx),%ebx
   36ffb:	83 f8 2a             	cmp    $0x2a,%eax
   36ffe:	0f 84 af 09 00 00    	je     379b3 <_svfiprintf_r+0xdd3>
   37004:	8d 48 d0             	lea    -0x30(%eax),%ecx
   37007:	31 d2                	xor    %edx,%edx
   37009:	83 f9 09             	cmp    $0x9,%ecx
   3700c:	0f 87 90 09 00 00    	ja     379a2 <_svfiprintf_r+0xdc2>
   37012:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37018:	8d 04 92             	lea    (%edx,%edx,4),%eax
   3701b:	83 c3 01             	add    $0x1,%ebx
   3701e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
   37021:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
   37025:	8d 48 d0             	lea    -0x30(%eax),%ecx
   37028:	83 f9 09             	cmp    $0x9,%ecx
   3702b:	76 eb                	jbe    37018 <_svfiprintf_r+0x438>
   3702d:	85 d2                	test   %edx,%edx
   3702f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   37034:	0f 48 d1             	cmovs  %ecx,%edx
   37037:	8d 48 e0             	lea    -0x20(%eax),%ecx
   3703a:	83 f9 58             	cmp    $0x58,%ecx
   3703d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
   37043:	89 da                	mov    %ebx,%edx
   37045:	0f 86 9d fc ff ff    	jbe    36ce8 <_svfiprintf_r+0x108>
   3704b:	89 fb                	mov    %edi,%ebx
   3704d:	85 c0                	test   %eax,%eax
   3704f:	89 55 10             	mov    %edx,0x10(%ebp)
   37052:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
   37058:	0f 84 5f 05 00 00    	je     375bd <_svfiprintf_r+0x9dd>
   3705e:	88 45 80             	mov    %al,-0x80(%ebp)
   37061:	8d 5d 80             	lea    -0x80(%ebp),%ebx
   37064:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   3706b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
   37072:	00 00 00 
   37075:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
   3707c:	00 00 00 
   3707f:	e9 5a 01 00 00       	jmp    371de <_svfiprintf_r+0x5fe>
   37084:	31 db                	xor    %ebx,%ebx
   37086:	8d 48 d0             	lea    -0x30(%eax),%ecx
   37089:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37090:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
   37093:	83 c2 01             	add    $0x1,%edx
   37096:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
   37099:	0f be 42 ff          	movsbl -0x1(%edx),%eax
   3709d:	8d 48 d0             	lea    -0x30(%eax),%ecx
   370a0:	83 f9 09             	cmp    $0x9,%ecx
   370a3:	76 eb                	jbe    37090 <_svfiprintf_r+0x4b0>
   370a5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
   370ab:	e9 2c fc ff ff       	jmp    36cdc <_svfiprintf_r+0xfc>
   370b0:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
   370b7:	00 00 00 
   370ba:	89 d0                	mov    %edx,%eax
   370bc:	e9 15 fc ff ff       	jmp    36cd6 <_svfiprintf_r+0xf6>
   370c1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   370c8:	89 55 10             	mov    %edx,0x10(%ebp)
   370cb:	8b 45 14             	mov    0x14(%ebp),%eax
   370ce:	0f 84 b8 fe ff ff    	je     36f8c <_svfiprintf_r+0x3ac>
   370d4:	8b 08                	mov    (%eax),%ecx
   370d6:	83 c0 04             	add    $0x4,%eax
   370d9:	31 d2                	xor    %edx,%edx
   370db:	89 45 14             	mov    %eax,0x14(%ebp)
   370de:	e9 7d fc ff ff       	jmp    36d60 <_svfiprintf_r+0x180>
   370e3:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   370ea:	89 f8                	mov    %edi,%eax
   370ec:	89 55 10             	mov    %edx,0x10(%ebp)
   370ef:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
   370f5:	0f 85 a2 07 00 00    	jne    3789d <_svfiprintf_r+0xcbd>
   370fb:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   37102:	0f 84 95 07 00 00    	je     3789d <_svfiprintf_r+0xcbd>
   37108:	8b 45 14             	mov    0x14(%ebp),%eax
   3710b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
   37112:	8b 00                	mov    (%eax),%eax
   37114:	66 89 18             	mov    %bx,(%eax)
   37117:	8b 45 14             	mov    0x14(%ebp),%eax
   3711a:	83 c0 04             	add    $0x4,%eax
   3711d:	89 45 14             	mov    %eax,0x14(%ebp)
   37120:	e9 19 fb ff ff       	jmp    36c3e <_svfiprintf_r+0x5e>
   37125:	89 fb                	mov    %edi,%ebx
   37127:	89 55 10             	mov    %edx,0x10(%ebp)
   3712a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
   37130:	c7 85 44 ff ff ff e7 	movl   $0x398e7,-0xbc(%ebp)
   37137:	98 03 00 
   3713a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   37141:	8b 5d 14             	mov    0x14(%ebp),%ebx
   37144:	75 0d                	jne    37153 <_svfiprintf_r+0x573>
   37146:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   3714d:	0f 85 65 07 00 00    	jne    378b8 <_svfiprintf_r+0xcd8>
   37153:	8b 0b                	mov    (%ebx),%ecx
   37155:	83 c3 04             	add    $0x4,%ebx
   37158:	89 5d 14             	mov    %ebx,0x14(%ebp)
   3715b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
   37162:	ba 02 00 00 00       	mov    $0x2,%edx
   37167:	0f 84 f3 fb ff ff    	je     36d60 <_svfiprintf_r+0x180>
   3716d:	85 c9                	test   %ecx,%ecx
   3716f:	0f 84 eb fb ff ff    	je     36d60 <_svfiprintf_r+0x180>
   37175:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
   3717c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
   37182:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
   37189:	e9 d2 fb ff ff       	jmp    36d60 <_svfiprintf_r+0x180>
   3718e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
   37195:	89 d0                	mov    %edx,%eax
   37197:	e9 3a fb ff ff       	jmp    36cd6 <_svfiprintf_r+0xf6>
   3719c:	89 f8                	mov    %edi,%eax
   3719e:	89 55 10             	mov    %edx,0x10(%ebp)
   371a1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
   371a7:	e9 0f fe ff ff       	jmp    36fbb <_svfiprintf_r+0x3db>
   371ac:	8b 45 14             	mov    0x14(%ebp),%eax
   371af:	8d 5d 80             	lea    -0x80(%ebp),%ebx
   371b2:	89 55 10             	mov    %edx,0x10(%ebp)
   371b5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   371bc:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
   371c3:	00 00 00 
   371c6:	8b 00                	mov    (%eax),%eax
   371c8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
   371cf:	00 00 00 
   371d2:	88 45 80             	mov    %al,-0x80(%ebp)
   371d5:	8b 45 14             	mov    0x14(%ebp),%eax
   371d8:	83 c0 04             	add    $0x4,%eax
   371db:	89 45 14             	mov    %eax,0x14(%ebp)
   371de:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   371e5:	00 00 00 
   371e8:	e9 05 fc ff ff       	jmp    36df2 <_svfiprintf_r+0x212>
   371ed:	89 fb                	mov    %edi,%ebx
   371ef:	89 55 10             	mov    %edx,0x10(%ebp)
   371f2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
   371f8:	c7 85 44 ff ff ff d6 	movl   $0x398d6,-0xbc(%ebp)
   371ff:	98 03 00 
   37202:	e9 33 ff ff ff       	jmp    3713a <_svfiprintf_r+0x55a>
   37207:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
   3720e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   37215:	89 55 10             	mov    %edx,0x10(%ebp)
   37218:	8b 45 14             	mov    0x14(%ebp),%eax
   3721b:	75 39                	jne    37256 <_svfiprintf_r+0x676>
   3721d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
   37224:	74 30                	je     37256 <_svfiprintf_r+0x676>
   37226:	0f b7 08             	movzwl (%eax),%ecx
   37229:	83 c0 04             	add    $0x4,%eax
   3722c:	ba 01 00 00 00       	mov    $0x1,%edx
   37231:	89 45 14             	mov    %eax,0x14(%ebp)
   37234:	e9 27 fb ff ff       	jmp    36d60 <_svfiprintf_r+0x180>
   37239:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
   37240:	89 d0                	mov    %edx,%eax
   37242:	e9 8f fa ff ff       	jmp    36cd6 <_svfiprintf_r+0xf6>
   37247:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
   3724e:	89 55 10             	mov    %edx,0x10(%ebp)
   37251:	8b 45 14             	mov    0x14(%ebp),%eax
   37254:	74 c7                	je     3721d <_svfiprintf_r+0x63d>
   37256:	8b 08                	mov    (%eax),%ecx
   37258:	83 c0 04             	add    $0x4,%eax
   3725b:	ba 01 00 00 00       	mov    $0x1,%edx
   37260:	89 45 14             	mov    %eax,0x14(%ebp)
   37263:	e9 f8 fa ff ff       	jmp    36d60 <_svfiprintf_r+0x180>
   37268:	8b 45 14             	mov    0x14(%ebp),%eax
   3726b:	89 55 10             	mov    %edx,0x10(%ebp)
   3726e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
   37275:	8b 18                	mov    (%eax),%ebx
   37277:	8d 50 04             	lea    0x4(%eax),%edx
   3727a:	85 db                	test   %ebx,%ebx
   3727c:	0f 84 cc 06 00 00    	je     3794e <_svfiprintf_r+0xd6e>
   37282:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
   37288:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
   3728e:	85 ff                	test   %edi,%edi
   37290:	0f 88 59 06 00 00    	js     378ef <_svfiprintf_r+0xd0f>
   37296:	89 7c 24 08          	mov    %edi,0x8(%esp)
   3729a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   372a1:	00 
   372a2:	89 1c 24             	mov    %ebx,(%esp)
   372a5:	e8 06 e7 ff ff       	call   359b0 <memchr>
   372aa:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
   372b0:	85 c0                	test   %eax,%eax
   372b2:	0f 84 c5 06 00 00    	je     3797d <_svfiprintf_r+0xd9d>
   372b8:	29 d8                	sub    %ebx,%eax
   372ba:	39 f8                	cmp    %edi,%eax
   372bc:	0f 4f c7             	cmovg  %edi,%eax
   372bf:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   372c6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   372cc:	89 55 14             	mov    %edx,0x14(%ebp)
   372cf:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   372d6:	00 00 00 
   372d9:	e9 f2 fa ff ff       	jmp    36dd0 <_svfiprintf_r+0x1f0>
   372de:	89 f8                	mov    %edi,%eax
   372e0:	84 c0                	test   %al,%al
   372e2:	b8 20 00 00 00       	mov    $0x20,%eax
   372e7:	0f 44 f8             	cmove  %eax,%edi
   372ea:	89 d0                	mov    %edx,%eax
   372ec:	e9 e5 f9 ff ff       	jmp    36cd6 <_svfiprintf_r+0xf6>
   372f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   372f8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   372fe:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   37304:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
   3730b:	74 2e                	je     3733b <_svfiprintf_r+0x75b>
   3730d:	83 c0 01             	add    $0x1,%eax
   37310:	83 c2 01             	add    $0x1,%edx
   37313:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
   37319:	83 c6 08             	add    $0x8,%esi
   3731c:	89 4e f8             	mov    %ecx,-0x8(%esi)
   3731f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
   37326:	83 f8 07             	cmp    $0x7,%eax
   37329:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   3732f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   37335:	0f 8f b5 04 00 00    	jg     377f0 <_svfiprintf_r+0xc10>
   3733b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
   37341:	85 c9                	test   %ecx,%ecx
   37343:	74 2e                	je     37373 <_svfiprintf_r+0x793>
   37345:	83 c0 01             	add    $0x1,%eax
   37348:	83 c2 02             	add    $0x2,%edx
   3734b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
   37351:	83 c6 08             	add    $0x8,%esi
   37354:	89 4e f8             	mov    %ecx,-0x8(%esi)
   37357:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
   3735e:	83 f8 07             	cmp    $0x7,%eax
   37361:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37367:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3736d:	0f 8f 45 04 00 00    	jg     377b8 <_svfiprintf_r+0xbd8>
   37373:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
   3737a:	00 00 00 
   3737d:	0f 84 9d 02 00 00    	je     37620 <_svfiprintf_r+0xa40>
   37383:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
   37389:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
   3738f:	85 ff                	test   %edi,%edi
   37391:	0f 8e e1 00 00 00    	jle    37478 <_svfiprintf_r+0x898>
   37397:	83 ff 10             	cmp    $0x10,%edi
   3739a:	0f 8e 7c 00 00 00    	jle    3741c <_svfiprintf_r+0x83c>
   373a0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
   373a6:	89 f1                	mov    %esi,%ecx
   373a8:	8b 5d 08             	mov    0x8(%ebp),%ebx
   373ab:	8b 75 0c             	mov    0xc(%ebp),%esi
   373ae:	eb 08                	jmp    373b8 <_svfiprintf_r+0x7d8>
   373b0:	83 ef 10             	sub    $0x10,%edi
   373b3:	83 ff 10             	cmp    $0x10,%edi
   373b6:	7e 5c                	jle    37414 <_svfiprintf_r+0x834>
   373b8:	83 c0 01             	add    $0x1,%eax
   373bb:	83 c2 10             	add    $0x10,%edx
   373be:	c7 01 ac 9d 03 00    	movl   $0x39dac,(%ecx)
   373c4:	83 c1 08             	add    $0x8,%ecx
   373c7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   373ce:	83 f8 07             	cmp    $0x7,%eax
   373d1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   373d7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   373dd:	7e d1                	jle    373b0 <_svfiprintf_r+0x7d0>
   373df:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   373e5:	89 44 24 08          	mov    %eax,0x8(%esp)
   373e9:	89 74 24 04          	mov    %esi,0x4(%esp)
   373ed:	89 1c 24             	mov    %ebx,(%esp)
   373f0:	e8 fb f5 ff ff       	call   369f0 <__ssprint_r>
   373f5:	85 c0                	test   %eax,%eax
   373f7:	0f 85 eb 01 00 00    	jne    375e8 <_svfiprintf_r+0xa08>
   373fd:	83 ef 10             	sub    $0x10,%edi
   37400:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   37406:	83 ff 10             	cmp    $0x10,%edi
   37409:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3740f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   37412:	7f a4                	jg     373b8 <_svfiprintf_r+0x7d8>
   37414:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
   3741a:	89 ce                	mov    %ecx,%esi
   3741c:	83 c0 01             	add    $0x1,%eax
   3741f:	01 fa                	add    %edi,%edx
   37421:	c7 06 ac 9d 03 00    	movl   $0x39dac,(%esi)
   37427:	83 c6 08             	add    $0x8,%esi
   3742a:	89 7e fc             	mov    %edi,-0x4(%esi)
   3742d:	83 f8 07             	cmp    $0x7,%eax
   37430:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37436:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3743c:	7e 3a                	jle    37478 <_svfiprintf_r+0x898>
   3743e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37444:	89 44 24 08          	mov    %eax,0x8(%esp)
   37448:	8b 45 0c             	mov    0xc(%ebp),%eax
   3744b:	89 44 24 04          	mov    %eax,0x4(%esp)
   3744f:	8b 45 08             	mov    0x8(%ebp),%eax
   37452:	89 04 24             	mov    %eax,(%esp)
   37455:	e8 96 f5 ff ff       	call   369f0 <__ssprint_r>
   3745a:	85 c0                	test   %eax,%eax
   3745c:	0f 85 86 01 00 00    	jne    375e8 <_svfiprintf_r+0xa08>
   37462:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   37468:	8d 75 a8             	lea    -0x58(%ebp),%esi
   3746b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   37471:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37478:	89 1e                	mov    %ebx,(%esi)
   3747a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
   37480:	83 c0 01             	add    $0x1,%eax
   37483:	83 c6 08             	add    $0x8,%esi
   37486:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3748c:	89 5e fc             	mov    %ebx,-0x4(%esi)
   3748f:	01 da                	add    %ebx,%edx
   37491:	83 f8 07             	cmp    $0x7,%eax
   37494:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   3749a:	0f 8f 80 02 00 00    	jg     37720 <_svfiprintf_r+0xb40>
   374a0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
   374a7:	0f 84 b9 00 00 00    	je     37566 <_svfiprintf_r+0x986>
   374ad:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
   374b3:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
   374b9:	85 ff                	test   %edi,%edi
   374bb:	0f 8e a5 00 00 00    	jle    37566 <_svfiprintf_r+0x986>
   374c1:	83 ff 10             	cmp    $0x10,%edi
   374c4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   374ca:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
   374d0:	7e 71                	jle    37543 <_svfiprintf_r+0x963>
   374d2:	89 f1                	mov    %esi,%ecx
   374d4:	8b 75 08             	mov    0x8(%ebp),%esi
   374d7:	eb 0f                	jmp    374e8 <_svfiprintf_r+0x908>
   374d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   374e0:	83 ef 10             	sub    $0x10,%edi
   374e3:	83 ff 10             	cmp    $0x10,%edi
   374e6:	7e 59                	jle    37541 <_svfiprintf_r+0x961>
   374e8:	83 c0 01             	add    $0x1,%eax
   374eb:	83 c2 10             	add    $0x10,%edx
   374ee:	c7 01 bc 9d 03 00    	movl   $0x39dbc,(%ecx)
   374f4:	83 c1 08             	add    $0x8,%ecx
   374f7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   374fe:	83 f8 07             	cmp    $0x7,%eax
   37501:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37507:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3750d:	7e d1                	jle    374e0 <_svfiprintf_r+0x900>
   3750f:	8b 45 0c             	mov    0xc(%ebp),%eax
   37512:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   37516:	89 34 24             	mov    %esi,(%esp)
   37519:	89 44 24 04          	mov    %eax,0x4(%esp)
   3751d:	e8 ce f4 ff ff       	call   369f0 <__ssprint_r>
   37522:	85 c0                	test   %eax,%eax
   37524:	0f 85 be 00 00 00    	jne    375e8 <_svfiprintf_r+0xa08>
   3752a:	83 ef 10             	sub    $0x10,%edi
   3752d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   37533:	83 ff 10             	cmp    $0x10,%edi
   37536:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   3753c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   3753f:	7f a7                	jg     374e8 <_svfiprintf_r+0x908>
   37541:	89 ce                	mov    %ecx,%esi
   37543:	83 c0 01             	add    $0x1,%eax
   37546:	01 fa                	add    %edi,%edx
   37548:	83 f8 07             	cmp    $0x7,%eax
   3754b:	c7 06 bc 9d 03 00    	movl   $0x39dbc,(%esi)
   37551:	89 7e 04             	mov    %edi,0x4(%esi)
   37554:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   3755a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   37560:	0f 8f ee 02 00 00    	jg     37854 <_svfiprintf_r+0xc74>
   37566:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
   3756c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
   37572:	39 c6                	cmp    %eax,%esi
   37574:	0f 4d c6             	cmovge %esi,%eax
   37577:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
   3757d:	85 d2                	test   %edx,%edx
   3757f:	0f 85 d3 01 00 00    	jne    37758 <_svfiprintf_r+0xb78>
   37585:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
   3758c:	00 00 00 
   3758f:	8d 75 a8             	lea    -0x58(%ebp),%esi
   37592:	e9 a7 f6 ff ff       	jmp    36c3e <_svfiprintf_r+0x5e>
   37597:	90                   	nop
   37598:	84 d2                	test   %dl,%dl
   3759a:	75 6c                	jne    37608 <_svfiprintf_r+0xa28>
   3759c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
   375a3:	74 63                	je     37608 <_svfiprintf_r+0xa28>
   375a5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
   375ab:	8d 5d a7             	lea    -0x59(%ebp),%ebx
   375ae:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
   375b2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   375b8:	e9 13 f8 ff ff       	jmp    36dd0 <_svfiprintf_r+0x1f0>
   375bd:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
   375c3:	85 c0                	test   %eax,%eax
   375c5:	74 21                	je     375e8 <_svfiprintf_r+0xa08>
   375c7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   375cd:	89 44 24 08          	mov    %eax,0x8(%esp)
   375d1:	8b 45 0c             	mov    0xc(%ebp),%eax
   375d4:	89 44 24 04          	mov    %eax,0x4(%esp)
   375d8:	8b 45 08             	mov    0x8(%ebp),%eax
   375db:	89 04 24             	mov    %eax,(%esp)
   375de:	e8 0d f4 ff ff       	call   369f0 <__ssprint_r>
   375e3:	90                   	nop
   375e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   375e8:	8b 75 0c             	mov    0xc(%ebp),%esi
   375eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   375f0:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
   375f4:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
   375fb:	81 c4 cc 00 00 00    	add    $0xcc,%esp
   37601:	5b                   	pop    %ebx
   37602:	5e                   	pop    %esi
   37603:	5f                   	pop    %edi
   37604:	5d                   	pop    %ebp
   37605:	c3                   	ret    
   37606:	66 90                	xchg   %ax,%ax
   37608:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
   3760f:	00 00 00 
   37612:	8d 5d a8             	lea    -0x58(%ebp),%ebx
   37615:	e9 b6 f7 ff ff       	jmp    36dd0 <_svfiprintf_r+0x1f0>
   3761a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37620:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
   37626:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
   3762c:	85 ff                	test   %edi,%edi
   3762e:	0f 8e 4f fd ff ff    	jle    37383 <_svfiprintf_r+0x7a3>
   37634:	83 ff 10             	cmp    $0x10,%edi
   37637:	0f 8e 7f 00 00 00    	jle    376bc <_svfiprintf_r+0xadc>
   3763d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
   37643:	89 f1                	mov    %esi,%ecx
   37645:	8b 5d 08             	mov    0x8(%ebp),%ebx
   37648:	8b 75 0c             	mov    0xc(%ebp),%esi
   3764b:	eb 0b                	jmp    37658 <_svfiprintf_r+0xa78>
   3764d:	8d 76 00             	lea    0x0(%esi),%esi
   37650:	83 ef 10             	sub    $0x10,%edi
   37653:	83 ff 10             	cmp    $0x10,%edi
   37656:	7e 5c                	jle    376b4 <_svfiprintf_r+0xad4>
   37658:	83 c0 01             	add    $0x1,%eax
   3765b:	83 c2 10             	add    $0x10,%edx
   3765e:	c7 01 ac 9d 03 00    	movl   $0x39dac,(%ecx)
   37664:	83 c1 08             	add    $0x8,%ecx
   37667:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
   3766e:	83 f8 07             	cmp    $0x7,%eax
   37671:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   37677:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   3767d:	7e d1                	jle    37650 <_svfiprintf_r+0xa70>
   3767f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37685:	89 44 24 08          	mov    %eax,0x8(%esp)
   37689:	89 74 24 04          	mov    %esi,0x4(%esp)
   3768d:	89 1c 24             	mov    %ebx,(%esp)
   37690:	e8 5b f3 ff ff       	call   369f0 <__ssprint_r>
   37695:	85 c0                	test   %eax,%eax
   37697:	0f 85 4b ff ff ff    	jne    375e8 <_svfiprintf_r+0xa08>
   3769d:	83 ef 10             	sub    $0x10,%edi
   376a0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   376a6:	83 ff 10             	cmp    $0x10,%edi
   376a9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   376af:	8d 4d a8             	lea    -0x58(%ebp),%ecx
   376b2:	7f a4                	jg     37658 <_svfiprintf_r+0xa78>
   376b4:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
   376ba:	89 ce                	mov    %ecx,%esi
   376bc:	83 c0 01             	add    $0x1,%eax
   376bf:	01 fa                	add    %edi,%edx
   376c1:	c7 06 ac 9d 03 00    	movl   $0x39dac,(%esi)
   376c7:	83 c6 08             	add    $0x8,%esi
   376ca:	89 7e fc             	mov    %edi,-0x4(%esi)
   376cd:	83 f8 07             	cmp    $0x7,%eax
   376d0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
   376d6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
   376dc:	0f 8e a1 fc ff ff    	jle    37383 <_svfiprintf_r+0x7a3>
   376e2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   376e8:	89 44 24 08          	mov    %eax,0x8(%esp)
   376ec:	8b 45 0c             	mov    0xc(%ebp),%eax
   376ef:	89 44 24 04          	mov    %eax,0x4(%esp)
   376f3:	8b 45 08             	mov    0x8(%ebp),%eax
   376f6:	89 04 24             	mov    %eax,(%esp)
   376f9:	e8 f2 f2 ff ff       	call   369f0 <__ssprint_r>
   376fe:	85 c0                	test   %eax,%eax
   37700:	0f 85 e2 fe ff ff    	jne    375e8 <_svfiprintf_r+0xa08>
   37706:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3770c:	8d 75 a8             	lea    -0x58(%ebp),%esi
   3770f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   37715:	e9 69 fc ff ff       	jmp    37383 <_svfiprintf_r+0x7a3>
   3771a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37720:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   37726:	89 44 24 08          	mov    %eax,0x8(%esp)
   3772a:	8b 45 0c             	mov    0xc(%ebp),%eax
   3772d:	89 44 24 04          	mov    %eax,0x4(%esp)
   37731:	8b 45 08             	mov    0x8(%ebp),%eax
   37734:	89 04 24             	mov    %eax,(%esp)
   37737:	e8 b4 f2 ff ff       	call   369f0 <__ssprint_r>
   3773c:	85 c0                	test   %eax,%eax
   3773e:	0f 85 a4 fe ff ff    	jne    375e8 <_svfiprintf_r+0xa08>
   37744:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3774a:	8d 75 a8             	lea    -0x58(%ebp),%esi
   3774d:	e9 4e fd ff ff       	jmp    374a0 <_svfiprintf_r+0x8c0>
   37752:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37758:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3775e:	89 44 24 08          	mov    %eax,0x8(%esp)
   37762:	8b 45 0c             	mov    0xc(%ebp),%eax
   37765:	89 44 24 04          	mov    %eax,0x4(%esp)
   37769:	8b 45 08             	mov    0x8(%ebp),%eax
   3776c:	89 04 24             	mov    %eax,(%esp)
   3776f:	e8 7c f2 ff ff       	call   369f0 <__ssprint_r>
   37774:	85 c0                	test   %eax,%eax
   37776:	0f 84 09 fe ff ff    	je     37585 <_svfiprintf_r+0x9a5>
   3777c:	e9 67 fe ff ff       	jmp    375e8 <_svfiprintf_r+0xa08>
   37781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37788:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3778e:	89 44 24 08          	mov    %eax,0x8(%esp)
   37792:	8b 45 0c             	mov    0xc(%ebp),%eax
   37795:	89 44 24 04          	mov    %eax,0x4(%esp)
   37799:	8b 45 08             	mov    0x8(%ebp),%eax
   3779c:	89 04 24             	mov    %eax,(%esp)
   3779f:	e8 4c f2 ff ff       	call   369f0 <__ssprint_r>
   377a4:	85 c0                	test   %eax,%eax
   377a6:	0f 85 3c fe ff ff    	jne    375e8 <_svfiprintf_r+0xa08>
   377ac:	8d 75 a8             	lea    -0x58(%ebp),%esi
   377af:	e9 e9 f4 ff ff       	jmp    36c9d <_svfiprintf_r+0xbd>
   377b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   377b8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   377be:	89 44 24 08          	mov    %eax,0x8(%esp)
   377c2:	8b 45 0c             	mov    0xc(%ebp),%eax
   377c5:	89 44 24 04          	mov    %eax,0x4(%esp)
   377c9:	8b 45 08             	mov    0x8(%ebp),%eax
   377cc:	89 04 24             	mov    %eax,(%esp)
   377cf:	e8 1c f2 ff ff       	call   369f0 <__ssprint_r>
   377d4:	85 c0                	test   %eax,%eax
   377d6:	0f 85 0c fe ff ff    	jne    375e8 <_svfiprintf_r+0xa08>
   377dc:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   377e2:	8d 75 a8             	lea    -0x58(%ebp),%esi
   377e5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   377eb:	e9 83 fb ff ff       	jmp    37373 <_svfiprintf_r+0x793>
   377f0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   377f6:	89 44 24 08          	mov    %eax,0x8(%esp)
   377fa:	8b 45 0c             	mov    0xc(%ebp),%eax
   377fd:	89 44 24 04          	mov    %eax,0x4(%esp)
   37801:	8b 45 08             	mov    0x8(%ebp),%eax
   37804:	89 04 24             	mov    %eax,(%esp)
   37807:	e8 e4 f1 ff ff       	call   369f0 <__ssprint_r>
   3780c:	85 c0                	test   %eax,%eax
   3780e:	0f 85 d4 fd ff ff    	jne    375e8 <_svfiprintf_r+0xa08>
   37814:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3781a:	8d 75 a8             	lea    -0x58(%ebp),%esi
   3781d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
   37823:	e9 13 fb ff ff       	jmp    3733b <_svfiprintf_r+0x75b>
   37828:	83 f9 09             	cmp    $0x9,%ecx
   3782b:	76 56                	jbe    37883 <_svfiprintf_r+0xca3>
   3782d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
   37830:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
   37835:	83 eb 01             	sub    $0x1,%ebx
   37838:	f7 e1                	mul    %ecx
   3783a:	c1 ea 03             	shr    $0x3,%edx
   3783d:	8d 04 92             	lea    (%edx,%edx,4),%eax
   37840:	01 c0                	add    %eax,%eax
   37842:	29 c1                	sub    %eax,%ecx
   37844:	83 c1 30             	add    $0x30,%ecx
   37847:	85 d2                	test   %edx,%edx
   37849:	88 0b                	mov    %cl,(%ebx)
   3784b:	89 d1                	mov    %edx,%ecx
   3784d:	75 e1                	jne    37830 <_svfiprintf_r+0xc50>
   3784f:	e9 71 f5 ff ff       	jmp    36dc5 <_svfiprintf_r+0x1e5>
   37854:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
   3785a:	89 44 24 08          	mov    %eax,0x8(%esp)
   3785e:	8b 45 0c             	mov    0xc(%ebp),%eax
   37861:	89 44 24 04          	mov    %eax,0x4(%esp)
   37865:	8b 45 08             	mov    0x8(%ebp),%eax
   37868:	89 04 24             	mov    %eax,(%esp)
   3786b:	e8 80 f1 ff ff       	call   369f0 <__ssprint_r>
   37870:	85 c0                	test   %eax,%eax
   37872:	0f 85 70 fd ff ff    	jne    375e8 <_svfiprintf_r+0xa08>
   37878:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
   3787e:	e9 e3 fc ff ff       	jmp    37566 <_svfiprintf_r+0x986>
   37883:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
   37889:	83 c1 30             	add    $0x30,%ecx
   3788c:	88 4d a7             	mov    %cl,-0x59(%ebp)
   3788f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
   37892:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   37898:	e9 33 f5 ff ff       	jmp    36dd0 <_svfiprintf_r+0x1f0>
   3789d:	8b 45 14             	mov    0x14(%ebp),%eax
   378a0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
   378a6:	8b 00                	mov    (%eax),%eax
   378a8:	89 18                	mov    %ebx,(%eax)
   378aa:	8b 45 14             	mov    0x14(%ebp),%eax
   378ad:	83 c0 04             	add    $0x4,%eax
   378b0:	89 45 14             	mov    %eax,0x14(%ebp)
   378b3:	e9 86 f3 ff ff       	jmp    36c3e <_svfiprintf_r+0x5e>
   378b8:	0f b7 0b             	movzwl (%ebx),%ecx
   378bb:	83 c3 04             	add    $0x4,%ebx
   378be:	89 5d 14             	mov    %ebx,0x14(%ebp)
   378c1:	e9 95 f8 ff ff       	jmp    3715b <_svfiprintf_r+0x57b>
   378c6:	0f bf 08             	movswl (%eax),%ecx
   378c9:	83 c0 04             	add    $0x4,%eax
   378cc:	89 45 14             	mov    %eax,0x14(%ebp)
   378cf:	85 c9                	test   %ecx,%ecx
   378d1:	0f 89 0d f7 ff ff    	jns    36fe4 <_svfiprintf_r+0x404>
   378d7:	f7 d9                	neg    %ecx
   378d9:	bf 2d 00 00 00       	mov    $0x2d,%edi
   378de:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
   378e5:	ba 01 00 00 00       	mov    $0x1,%edx
   378ea:	e9 7a f4 ff ff       	jmp    36d69 <_svfiprintf_r+0x189>
   378ef:	89 1c 24             	mov    %ebx,(%esp)
   378f2:	e8 79 f0 ff ff       	call   36970 <strlen>
   378f7:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
   378fd:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   37904:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   3790b:	00 00 00 
   3790e:	89 55 14             	mov    %edx,0x14(%ebp)
   37911:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   37917:	e9 b4 f4 ff ff       	jmp    36dd0 <_svfiprintf_r+0x1f0>
   3791c:	8b 45 08             	mov    0x8(%ebp),%eax
   3791f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
   37926:	00 
   37927:	89 04 24             	mov    %eax,(%esp)
   3792a:	e8 41 d9 ff ff       	call   35270 <_malloc_r>
   3792f:	8b 75 0c             	mov    0xc(%ebp),%esi
   37932:	85 c0                	test   %eax,%eax
   37934:	89 06                	mov    %eax,(%esi)
   37936:	89 46 10             	mov    %eax,0x10(%esi)
   37939:	0f 84 a3 00 00 00    	je     379e2 <_svfiprintf_r+0xe02>
   3793f:	8b 45 0c             	mov    0xc(%ebp),%eax
   37942:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
   37949:	e9 b2 f2 ff ff       	jmp    36c00 <_svfiprintf_r+0x20>
   3794e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
   37954:	b8 06 00 00 00       	mov    $0x6,%eax
   37959:	89 55 14             	mov    %edx,0x14(%ebp)
   3795c:	83 ff 06             	cmp    $0x6,%edi
   3795f:	0f 46 c7             	cmovbe %edi,%eax
   37962:	85 c0                	test   %eax,%eax
   37964:	0f 49 d8             	cmovns %eax,%ebx
   37967:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
   3796d:	bb f8 98 03 00       	mov    $0x398f8,%ebx
   37972:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   37978:	e9 61 f8 ff ff       	jmp    371de <_svfiprintf_r+0x5fe>
   3797d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
   37983:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
   3798a:	89 55 14             	mov    %edx,0x14(%ebp)
   3798d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   37994:	00 00 00 
   37997:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
   3799d:	e9 2e f4 ff ff       	jmp    36dd0 <_svfiprintf_r+0x1f0>
   379a2:	89 da                	mov    %ebx,%edx
   379a4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
   379ab:	00 00 00 
   379ae:	e9 29 f3 ff ff       	jmp    36cdc <_svfiprintf_r+0xfc>
   379b3:	8b 4d 14             	mov    0x14(%ebp),%ecx
   379b6:	89 da                	mov    %ebx,%edx
   379b8:	8b 45 14             	mov    0x14(%ebp),%eax
   379bb:	8b 09                	mov    (%ecx),%ecx
   379bd:	83 c0 04             	add    $0x4,%eax
   379c0:	89 45 14             	mov    %eax,0x14(%ebp)
   379c3:	85 c9                	test   %ecx,%ecx
   379c5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
   379cb:	0f 89 26 f3 ff ff    	jns    36cf7 <_svfiprintf_r+0x117>
   379d1:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
   379d8:	ff ff ff 
   379db:	89 d0                	mov    %edx,%eax
   379dd:	e9 f4 f2 ff ff       	jmp    36cd6 <_svfiprintf_r+0xf6>
   379e2:	8b 45 08             	mov    0x8(%ebp),%eax
   379e5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   379eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   379f0:	e9 06 fc ff ff       	jmp    375fb <_svfiprintf_r+0xa1b>
   379f5:	66 90                	xchg   %ax,%ax
   379f7:	66 90                	xchg   %ax,%ax
   379f9:	66 90                	xchg   %ax,%ax
   379fb:	66 90                	xchg   %ax,%ax
   379fd:	66 90                	xchg   %ax,%ax
   379ff:	90                   	nop

00037a00 <_calloc_r>:
   37a00:	55                   	push   %ebp
   37a01:	89 e5                	mov    %esp,%ebp
   37a03:	53                   	push   %ebx
   37a04:	83 ec 14             	sub    $0x14,%esp
   37a07:	8b 45 10             	mov    0x10(%ebp),%eax
   37a0a:	0f af 45 0c          	imul   0xc(%ebp),%eax
   37a0e:	89 44 24 04          	mov    %eax,0x4(%esp)
   37a12:	8b 45 08             	mov    0x8(%ebp),%eax
   37a15:	89 04 24             	mov    %eax,(%esp)
   37a18:	e8 53 d8 ff ff       	call   35270 <_malloc_r>
   37a1d:	85 c0                	test   %eax,%eax
   37a1f:	89 c3                	mov    %eax,%ebx
   37a21:	0f 84 91 00 00 00    	je     37ab8 <_calloc_r+0xb8>
   37a27:	8b 40 fc             	mov    -0x4(%eax),%eax
   37a2a:	83 e0 fc             	and    $0xfffffffc,%eax
   37a2d:	83 e8 04             	sub    $0x4,%eax
   37a30:	83 f8 24             	cmp    $0x24,%eax
   37a33:	77 63                	ja     37a98 <_calloc_r+0x98>
   37a35:	83 f8 13             	cmp    $0x13,%eax
   37a38:	89 da                	mov    %ebx,%edx
   37a3a:	77 1c                	ja     37a58 <_calloc_r+0x58>
   37a3c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
   37a42:	89 d8                	mov    %ebx,%eax
   37a44:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
   37a4b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
   37a52:	83 c4 14             	add    $0x14,%esp
   37a55:	5b                   	pop    %ebx
   37a56:	5d                   	pop    %ebp
   37a57:	c3                   	ret    
   37a58:	83 f8 1b             	cmp    $0x1b,%eax
   37a5b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
   37a61:	8d 53 08             	lea    0x8(%ebx),%edx
   37a64:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
   37a6b:	76 cf                	jbe    37a3c <_calloc_r+0x3c>
   37a6d:	83 f8 24             	cmp    $0x24,%eax
   37a70:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
   37a77:	8d 53 10             	lea    0x10(%ebx),%edx
   37a7a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
   37a81:	75 b9                	jne    37a3c <_calloc_r+0x3c>
   37a83:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
   37a8a:	8d 53 18             	lea    0x18(%ebx),%edx
   37a8d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
   37a94:	eb a6                	jmp    37a3c <_calloc_r+0x3c>
   37a96:	66 90                	xchg   %ax,%ax
   37a98:	89 1c 24             	mov    %ebx,(%esp)
   37a9b:	89 44 24 08          	mov    %eax,0x8(%esp)
   37a9f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   37aa6:	00 
   37aa7:	e8 50 a2 ff ff       	call   31cfc <memset>
   37aac:	83 c4 14             	add    $0x14,%esp
   37aaf:	89 d8                	mov    %ebx,%eax
   37ab1:	5b                   	pop    %ebx
   37ab2:	5d                   	pop    %ebp
   37ab3:	c3                   	ret    
   37ab4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37ab8:	31 c0                	xor    %eax,%eax
   37aba:	eb 96                	jmp    37a52 <_calloc_r+0x52>
   37abc:	66 90                	xchg   %ax,%ax
   37abe:	66 90                	xchg   %ax,%ax

00037ac0 <_malloc_trim_r>:
   37ac0:	55                   	push   %ebp
   37ac1:	89 e5                	mov    %esp,%ebp
   37ac3:	57                   	push   %edi
   37ac4:	56                   	push   %esi
   37ac5:	53                   	push   %ebx
   37ac6:	83 ec 1c             	sub    $0x1c,%esp
   37ac9:	8b 75 08             	mov    0x8(%ebp),%esi
   37acc:	89 34 24             	mov    %esi,(%esp)
   37acf:	e8 7c df ff ff       	call   35a50 <__malloc_lock>
   37ad4:	a1 48 d5 03 00       	mov    0x3d548,%eax
   37ad9:	8b 58 04             	mov    0x4(%eax),%ebx
   37adc:	83 e3 fc             	and    $0xfffffffc,%ebx
   37adf:	89 d8                	mov    %ebx,%eax
   37ae1:	2b 45 0c             	sub    0xc(%ebp),%eax
   37ae4:	05 ef 0f 00 00       	add    $0xfef,%eax
   37ae9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
   37aee:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
   37af4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
   37afa:	7e 1c                	jle    37b18 <_malloc_trim_r+0x58>
   37afc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   37b03:	00 
   37b04:	89 34 24             	mov    %esi,(%esp)
   37b07:	e8 44 ed ff ff       	call   36850 <_sbrk_r>
   37b0c:	8b 15 48 d5 03 00    	mov    0x3d548,%edx
   37b12:	01 da                	add    %ebx,%edx
   37b14:	39 d0                	cmp    %edx,%eax
   37b16:	74 18                	je     37b30 <_malloc_trim_r+0x70>
   37b18:	89 34 24             	mov    %esi,(%esp)
   37b1b:	e8 40 df ff ff       	call   35a60 <__malloc_unlock>
   37b20:	83 c4 1c             	add    $0x1c,%esp
   37b23:	31 c0                	xor    %eax,%eax
   37b25:	5b                   	pop    %ebx
   37b26:	5e                   	pop    %esi
   37b27:	5f                   	pop    %edi
   37b28:	5d                   	pop    %ebp
   37b29:	c3                   	ret    
   37b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37b30:	89 f8                	mov    %edi,%eax
   37b32:	f7 d8                	neg    %eax
   37b34:	89 44 24 04          	mov    %eax,0x4(%esp)
   37b38:	89 34 24             	mov    %esi,(%esp)
   37b3b:	e8 10 ed ff ff       	call   36850 <_sbrk_r>
   37b40:	83 f8 ff             	cmp    $0xffffffff,%eax
   37b43:	74 2b                	je     37b70 <_malloc_trim_r+0xb0>
   37b45:	a1 48 d5 03 00       	mov    0x3d548,%eax
   37b4a:	29 fb                	sub    %edi,%ebx
   37b4c:	83 cb 01             	or     $0x1,%ebx
   37b4f:	29 3d 20 00 07 00    	sub    %edi,0x70020
   37b55:	89 58 04             	mov    %ebx,0x4(%eax)
   37b58:	89 34 24             	mov    %esi,(%esp)
   37b5b:	e8 00 df ff ff       	call   35a60 <__malloc_unlock>
   37b60:	83 c4 1c             	add    $0x1c,%esp
   37b63:	b8 01 00 00 00       	mov    $0x1,%eax
   37b68:	5b                   	pop    %ebx
   37b69:	5e                   	pop    %esi
   37b6a:	5f                   	pop    %edi
   37b6b:	5d                   	pop    %ebp
   37b6c:	c3                   	ret    
   37b6d:	8d 76 00             	lea    0x0(%esi),%esi
   37b70:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
   37b77:	00 
   37b78:	89 34 24             	mov    %esi,(%esp)
   37b7b:	e8 d0 ec ff ff       	call   36850 <_sbrk_r>
   37b80:	8b 15 48 d5 03 00    	mov    0x3d548,%edx
   37b86:	89 c1                	mov    %eax,%ecx
   37b88:	29 d1                	sub    %edx,%ecx
   37b8a:	83 f9 0f             	cmp    $0xf,%ecx
   37b8d:	7e 89                	jle    37b18 <_malloc_trim_r+0x58>
   37b8f:	2b 05 20 d5 03 00    	sub    0x3d520,%eax
   37b95:	83 c9 01             	or     $0x1,%ecx
   37b98:	89 4a 04             	mov    %ecx,0x4(%edx)
   37b9b:	a3 20 00 07 00       	mov    %eax,0x70020
   37ba0:	e9 73 ff ff ff       	jmp    37b18 <_malloc_trim_r+0x58>
   37ba5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37ba9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00037bb0 <_free_r>:
   37bb0:	55                   	push   %ebp
   37bb1:	89 e5                	mov    %esp,%ebp
   37bb3:	57                   	push   %edi
   37bb4:	56                   	push   %esi
   37bb5:	53                   	push   %ebx
   37bb6:	83 ec 1c             	sub    $0x1c,%esp
   37bb9:	8b 75 0c             	mov    0xc(%ebp),%esi
   37bbc:	8b 45 08             	mov    0x8(%ebp),%eax
   37bbf:	85 f6                	test   %esi,%esi
   37bc1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   37bc4:	0f 84 fe 00 00 00    	je     37cc8 <_free_r+0x118>
   37bca:	89 04 24             	mov    %eax,(%esp)
   37bcd:	e8 7e de ff ff       	call   35a50 <__malloc_lock>
   37bd2:	8b 7e fc             	mov    -0x4(%esi),%edi
   37bd5:	8d 56 f8             	lea    -0x8(%esi),%edx
   37bd8:	89 f8                	mov    %edi,%eax
   37bda:	83 e0 fe             	and    $0xfffffffe,%eax
   37bdd:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
   37be0:	8b 59 04             	mov    0x4(%ecx),%ebx
   37be3:	83 e3 fc             	and    $0xfffffffc,%ebx
   37be6:	39 0d 48 d5 03 00    	cmp    %ecx,0x3d548
   37bec:	0f 84 0e 01 00 00    	je     37d00 <_free_r+0x150>
   37bf2:	83 e7 01             	and    $0x1,%edi
   37bf5:	89 59 04             	mov    %ebx,0x4(%ecx)
   37bf8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
   37bff:	75 1f                	jne    37c20 <_free_r+0x70>
   37c01:	8b 76 f8             	mov    -0x8(%esi),%esi
   37c04:	29 f2                	sub    %esi,%edx
   37c06:	01 f0                	add    %esi,%eax
   37c08:	8b 72 08             	mov    0x8(%edx),%esi
   37c0b:	81 fe 48 d5 03 00    	cmp    $0x3d548,%esi
   37c11:	0f 84 39 01 00 00    	je     37d50 <_free_r+0x1a0>
   37c17:	8b 7a 0c             	mov    0xc(%edx),%edi
   37c1a:	89 7e 0c             	mov    %edi,0xc(%esi)
   37c1d:	89 77 08             	mov    %esi,0x8(%edi)
   37c20:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
   37c25:	75 21                	jne    37c48 <_free_r+0x98>
   37c27:	8b 75 e0             	mov    -0x20(%ebp),%esi
   37c2a:	01 d8                	add    %ebx,%eax
   37c2c:	8b 59 08             	mov    0x8(%ecx),%ebx
   37c2f:	85 f6                	test   %esi,%esi
   37c31:	75 0c                	jne    37c3f <_free_r+0x8f>
   37c33:	81 fb 48 d5 03 00    	cmp    $0x3d548,%ebx
   37c39:	0f 84 21 01 00 00    	je     37d60 <_free_r+0x1b0>
   37c3f:	8b 49 0c             	mov    0xc(%ecx),%ecx
   37c42:	89 4b 0c             	mov    %ecx,0xc(%ebx)
   37c45:	89 59 08             	mov    %ebx,0x8(%ecx)
   37c48:	89 c1                	mov    %eax,%ecx
   37c4a:	83 c9 01             	or     $0x1,%ecx
   37c4d:	89 4a 04             	mov    %ecx,0x4(%edx)
   37c50:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   37c53:	89 04 02             	mov    %eax,(%edx,%eax,1)
   37c56:	85 c9                	test   %ecx,%ecx
   37c58:	75 56                	jne    37cb0 <_free_r+0x100>
   37c5a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
   37c5f:	76 6f                	jbe    37cd0 <_free_r+0x120>
   37c61:	89 c1                	mov    %eax,%ecx
   37c63:	c1 e9 09             	shr    $0x9,%ecx
   37c66:	83 f9 04             	cmp    $0x4,%ecx
   37c69:	0f 87 21 01 00 00    	ja     37d90 <_free_r+0x1e0>
   37c6f:	89 c1                	mov    %eax,%ecx
   37c71:	c1 e9 06             	shr    $0x6,%ecx
   37c74:	83 c1 38             	add    $0x38,%ecx
   37c77:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37c7a:	8d 34 9d 40 d5 03 00 	lea    0x3d540(,%ebx,4),%esi
   37c81:	8b 5e 08             	mov    0x8(%esi),%ebx
   37c84:	39 f3                	cmp    %esi,%ebx
   37c86:	0f 84 14 01 00 00    	je     37da0 <_free_r+0x1f0>
   37c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37c90:	8b 4b 04             	mov    0x4(%ebx),%ecx
   37c93:	83 e1 fc             	and    $0xfffffffc,%ecx
   37c96:	39 c8                	cmp    %ecx,%eax
   37c98:	73 07                	jae    37ca1 <_free_r+0xf1>
   37c9a:	8b 5b 08             	mov    0x8(%ebx),%ebx
   37c9d:	39 de                	cmp    %ebx,%esi
   37c9f:	75 ef                	jne    37c90 <_free_r+0xe0>
   37ca1:	8b 43 0c             	mov    0xc(%ebx),%eax
   37ca4:	89 42 0c             	mov    %eax,0xc(%edx)
   37ca7:	89 5a 08             	mov    %ebx,0x8(%edx)
   37caa:	89 50 08             	mov    %edx,0x8(%eax)
   37cad:	89 53 0c             	mov    %edx,0xc(%ebx)
   37cb0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   37cb3:	89 45 08             	mov    %eax,0x8(%ebp)
   37cb6:	83 c4 1c             	add    $0x1c,%esp
   37cb9:	5b                   	pop    %ebx
   37cba:	5e                   	pop    %esi
   37cbb:	5f                   	pop    %edi
   37cbc:	5d                   	pop    %ebp
   37cbd:	e9 9e dd ff ff       	jmp    35a60 <__malloc_unlock>
   37cc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37cc8:	83 c4 1c             	add    $0x1c,%esp
   37ccb:	5b                   	pop    %ebx
   37ccc:	5e                   	pop    %esi
   37ccd:	5f                   	pop    %edi
   37cce:	5d                   	pop    %ebp
   37ccf:	c3                   	ret    
   37cd0:	c1 e8 03             	shr    $0x3,%eax
   37cd3:	bb 01 00 00 00       	mov    $0x1,%ebx
   37cd8:	89 c1                	mov    %eax,%ecx
   37cda:	c1 f9 02             	sar    $0x2,%ecx
   37cdd:	8d 04 c5 40 d5 03 00 	lea    0x3d540(,%eax,8),%eax
   37ce4:	d3 e3                	shl    %cl,%ebx
   37ce6:	8b 48 08             	mov    0x8(%eax),%ecx
   37ce9:	09 1d 44 d5 03 00    	or     %ebx,0x3d544
   37cef:	89 42 0c             	mov    %eax,0xc(%edx)
   37cf2:	89 4a 08             	mov    %ecx,0x8(%edx)
   37cf5:	89 50 08             	mov    %edx,0x8(%eax)
   37cf8:	89 51 0c             	mov    %edx,0xc(%ecx)
   37cfb:	eb b3                	jmp    37cb0 <_free_r+0x100>
   37cfd:	8d 76 00             	lea    0x0(%esi),%esi
   37d00:	01 d8                	add    %ebx,%eax
   37d02:	83 e7 01             	and    $0x1,%edi
   37d05:	75 13                	jne    37d1a <_free_r+0x16a>
   37d07:	8b 4e f8             	mov    -0x8(%esi),%ecx
   37d0a:	29 ca                	sub    %ecx,%edx
   37d0c:	01 c8                	add    %ecx,%eax
   37d0e:	8b 5a 08             	mov    0x8(%edx),%ebx
   37d11:	8b 4a 0c             	mov    0xc(%edx),%ecx
   37d14:	89 4b 0c             	mov    %ecx,0xc(%ebx)
   37d17:	89 59 08             	mov    %ebx,0x8(%ecx)
   37d1a:	89 c1                	mov    %eax,%ecx
   37d1c:	83 c9 01             	or     $0x1,%ecx
   37d1f:	3b 05 24 d5 03 00    	cmp    0x3d524,%eax
   37d25:	89 4a 04             	mov    %ecx,0x4(%edx)
   37d28:	89 15 48 d5 03 00    	mov    %edx,0x3d548
   37d2e:	72 80                	jb     37cb0 <_free_r+0x100>
   37d30:	a1 50 00 07 00       	mov    0x70050,%eax
   37d35:	89 44 24 04          	mov    %eax,0x4(%esp)
   37d39:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   37d3c:	89 04 24             	mov    %eax,(%esp)
   37d3f:	e8 7c fd ff ff       	call   37ac0 <_malloc_trim_r>
   37d44:	e9 67 ff ff ff       	jmp    37cb0 <_free_r+0x100>
   37d49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   37d50:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
   37d57:	e9 c4 fe ff ff       	jmp    37c20 <_free_r+0x70>
   37d5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   37d60:	89 c1                	mov    %eax,%ecx
   37d62:	83 c9 01             	or     $0x1,%ecx
   37d65:	89 15 54 d5 03 00    	mov    %edx,0x3d554
   37d6b:	89 15 50 d5 03 00    	mov    %edx,0x3d550
   37d71:	c7 42 0c 48 d5 03 00 	movl   $0x3d548,0xc(%edx)
   37d78:	c7 42 08 48 d5 03 00 	movl   $0x3d548,0x8(%edx)
   37d7f:	89 4a 04             	mov    %ecx,0x4(%edx)
   37d82:	89 04 02             	mov    %eax,(%edx,%eax,1)
   37d85:	e9 26 ff ff ff       	jmp    37cb0 <_free_r+0x100>
   37d8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   37d90:	83 f9 14             	cmp    $0x14,%ecx
   37d93:	77 23                	ja     37db8 <_free_r+0x208>
   37d95:	83 c1 5b             	add    $0x5b,%ecx
   37d98:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37d9b:	e9 da fe ff ff       	jmp    37c7a <_free_r+0xca>
   37da0:	c1 f9 02             	sar    $0x2,%ecx
   37da3:	b8 01 00 00 00       	mov    $0x1,%eax
   37da8:	d3 e0                	shl    %cl,%eax
   37daa:	09 05 44 d5 03 00    	or     %eax,0x3d544
   37db0:	89 d8                	mov    %ebx,%eax
   37db2:	e9 ed fe ff ff       	jmp    37ca4 <_free_r+0xf4>
   37db7:	90                   	nop
   37db8:	83 f9 54             	cmp    $0x54,%ecx
   37dbb:	77 10                	ja     37dcd <_free_r+0x21d>
   37dbd:	89 c1                	mov    %eax,%ecx
   37dbf:	c1 e9 0c             	shr    $0xc,%ecx
   37dc2:	83 c1 6e             	add    $0x6e,%ecx
   37dc5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37dc8:	e9 ad fe ff ff       	jmp    37c7a <_free_r+0xca>
   37dcd:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
   37dd3:	77 10                	ja     37de5 <_free_r+0x235>
   37dd5:	89 c1                	mov    %eax,%ecx
   37dd7:	c1 e9 0f             	shr    $0xf,%ecx
   37dda:	83 c1 77             	add    $0x77,%ecx
   37ddd:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37de0:	e9 95 fe ff ff       	jmp    37c7a <_free_r+0xca>
   37de5:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
   37deb:	77 10                	ja     37dfd <_free_r+0x24d>
   37ded:	89 c1                	mov    %eax,%ecx
   37def:	c1 e9 12             	shr    $0x12,%ecx
   37df2:	83 c1 7c             	add    $0x7c,%ecx
   37df5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
   37df8:	e9 7d fe ff ff       	jmp    37c7a <_free_r+0xca>
   37dfd:	bb fc 00 00 00       	mov    $0xfc,%ebx
   37e02:	b9 7e 00 00 00       	mov    $0x7e,%ecx
   37e07:	e9 6e fe ff ff       	jmp    37c7a <_free_r+0xca>
   37e0c:	66 90                	xchg   %ax,%ax
   37e0e:	66 90                	xchg   %ax,%ax

00037e10 <memmove>:
   37e10:	55                   	push   %ebp
   37e11:	89 e5                	mov    %esp,%ebp
   37e13:	56                   	push   %esi
   37e14:	57                   	push   %edi
   37e15:	53                   	push   %ebx
   37e16:	8b 7d 08             	mov    0x8(%ebp),%edi
   37e19:	8b 4d 10             	mov    0x10(%ebp),%ecx
   37e1c:	8b 75 0c             	mov    0xc(%ebp),%esi
   37e1f:	fc                   	cld    
   37e20:	39 fe                	cmp    %edi,%esi
   37e22:	73 43                	jae    37e67 <memmove+0x57>
   37e24:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
   37e28:	39 df                	cmp    %ebx,%edi
   37e2a:	77 3b                	ja     37e67 <memmove+0x57>
   37e2c:	01 ce                	add    %ecx,%esi
   37e2e:	01 cf                	add    %ecx,%edi
   37e30:	fd                   	std    
   37e31:	83 f9 08             	cmp    $0x8,%ecx
   37e34:	76 2b                	jbe    37e61 <memmove+0x51>
   37e36:	89 fa                	mov    %edi,%edx
   37e38:	89 cb                	mov    %ecx,%ebx
   37e3a:	83 e2 03             	and    $0x3,%edx
   37e3d:	74 0c                	je     37e4b <memmove+0x3b>
   37e3f:	89 d1                	mov    %edx,%ecx
   37e41:	4e                   	dec    %esi
   37e42:	4f                   	dec    %edi
   37e43:	29 cb                	sub    %ecx,%ebx
   37e45:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37e47:	89 d9                	mov    %ebx,%ecx
   37e49:	46                   	inc    %esi
   37e4a:	47                   	inc    %edi
   37e4b:	c1 e9 02             	shr    $0x2,%ecx
   37e4e:	83 ee 04             	sub    $0x4,%esi
   37e51:	83 ef 04             	sub    $0x4,%edi
   37e54:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   37e56:	83 c6 04             	add    $0x4,%esi
   37e59:	83 c7 04             	add    $0x4,%edi
   37e5c:	89 d9                	mov    %ebx,%ecx
   37e5e:	83 e1 03             	and    $0x3,%ecx
   37e61:	4e                   	dec    %esi
   37e62:	4f                   	dec    %edi
   37e63:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37e65:	eb 2a                	jmp    37e91 <memmove+0x81>
   37e67:	83 f9 08             	cmp    $0x8,%ecx
   37e6a:	76 23                	jbe    37e8f <memmove+0x7f>
   37e6c:	89 fa                	mov    %edi,%edx
   37e6e:	89 cb                	mov    %ecx,%ebx
   37e70:	83 e2 03             	and    $0x3,%edx
   37e73:	74 10                	je     37e85 <memmove+0x75>
   37e75:	b9 04 00 00 00       	mov    $0x4,%ecx
   37e7a:	29 d1                	sub    %edx,%ecx
   37e7c:	83 e1 03             	and    $0x3,%ecx
   37e7f:	29 cb                	sub    %ecx,%ebx
   37e81:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37e83:	89 d9                	mov    %ebx,%ecx
   37e85:	c1 e9 02             	shr    $0x2,%ecx
   37e88:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
   37e8a:	89 d9                	mov    %ebx,%ecx
   37e8c:	83 e1 03             	and    $0x3,%ecx
   37e8f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
   37e91:	8b 45 08             	mov    0x8(%ebp),%eax
   37e94:	fc                   	cld    
   37e95:	8d 65 f4             	lea    -0xc(%ebp),%esp
   37e98:	5b                   	pop    %ebx
   37e99:	5f                   	pop    %edi
   37e9a:	5e                   	pop    %esi
   37e9b:	c9                   	leave  
   37e9c:	c3                   	ret    
   37e9d:	66 90                	xchg   %ax,%ax
   37e9f:	90                   	nop

00037ea0 <_realloc_r>:
   37ea0:	55                   	push   %ebp
   37ea1:	89 e5                	mov    %esp,%ebp
   37ea3:	57                   	push   %edi
   37ea4:	56                   	push   %esi
   37ea5:	53                   	push   %ebx
   37ea6:	83 ec 3c             	sub    $0x3c,%esp
   37ea9:	8b 45 08             	mov    0x8(%ebp),%eax
   37eac:	8b 7d 0c             	mov    0xc(%ebp),%edi
   37eaf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
   37eb2:	8b 45 10             	mov    0x10(%ebp),%eax
   37eb5:	85 ff                	test   %edi,%edi
   37eb7:	89 45 e0             	mov    %eax,-0x20(%ebp)
   37eba:	0f 84 50 02 00 00    	je     38110 <_realloc_r+0x270>
   37ec0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   37ec3:	8d 77 f8             	lea    -0x8(%edi),%esi
   37ec6:	89 04 24             	mov    %eax,(%esp)
   37ec9:	e8 82 db ff ff       	call   35a50 <__malloc_lock>
   37ece:	8b 47 fc             	mov    -0x4(%edi),%eax
   37ed1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   37ed4:	89 c3                	mov    %eax,%ebx
   37ed6:	8d 51 0b             	lea    0xb(%ecx),%edx
   37ed9:	83 e3 fc             	and    $0xfffffffc,%ebx
   37edc:	83 fa 16             	cmp    $0x16,%edx
   37edf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   37ee2:	0f 87 00 01 00 00    	ja     37fe8 <_realloc_r+0x148>
   37ee8:	31 d2                	xor    %edx,%edx
   37eea:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
   37ef1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
   37ef8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   37efb:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
   37efe:	0f 82 1c 02 00 00    	jb     38120 <_realloc_r+0x280>
   37f04:	84 d2                	test   %dl,%dl
   37f06:	0f 85 14 02 00 00    	jne    38120 <_realloc_r+0x280>
   37f0c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
   37f0f:	0f 8d eb 00 00 00    	jge    38000 <_realloc_r+0x160>
   37f15:	8b 0d 48 d5 03 00    	mov    0x3d548,%ecx
   37f1b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
   37f1e:	39 d1                	cmp    %edx,%ecx
   37f20:	89 4d cc             	mov    %ecx,-0x34(%ebp)
   37f23:	0f 84 6f 02 00 00    	je     38198 <_realloc_r+0x2f8>
   37f29:	8b 4a 04             	mov    0x4(%edx),%ecx
   37f2c:	89 c8                	mov    %ecx,%eax
   37f2e:	83 e0 fe             	and    $0xfffffffe,%eax
   37f31:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
   37f36:	0f 84 f4 00 00 00    	je     38030 <_realloc_r+0x190>
   37f3c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
   37f43:	31 d2                	xor    %edx,%edx
   37f45:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
   37f49:	0f 85 39 01 00 00    	jne    38088 <_realloc_r+0x1e8>
   37f4f:	89 f1                	mov    %esi,%ecx
   37f51:	2b 4f f8             	sub    -0x8(%edi),%ecx
   37f54:	8b 41 04             	mov    0x4(%ecx),%eax
   37f57:	83 e0 fc             	and    $0xfffffffc,%eax
   37f5a:	85 d2                	test   %edx,%edx
   37f5c:	0f 84 f6 02 00 00    	je     38258 <_realloc_r+0x3b8>
   37f62:	3b 55 cc             	cmp    -0x34(%ebp),%edx
   37f65:	0f 84 f5 02 00 00    	je     38260 <_realloc_r+0x3c0>
   37f6b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
   37f6e:	8b 55 d0             	mov    -0x30(%ebp),%edx
   37f71:	01 d8                	add    %ebx,%eax
   37f73:	01 c2                	add    %eax,%edx
   37f75:	3b 55 d8             	cmp    -0x28(%ebp),%edx
   37f78:	89 55 d0             	mov    %edx,-0x30(%ebp)
   37f7b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
   37f7e:	0f 8c ac 01 00 00    	jl     38130 <_realloc_r+0x290>
   37f84:	8b 42 0c             	mov    0xc(%edx),%eax
   37f87:	83 eb 04             	sub    $0x4,%ebx
   37f8a:	8b 52 08             	mov    0x8(%edx),%edx
   37f8d:	83 fb 24             	cmp    $0x24,%ebx
   37f90:	8d 71 08             	lea    0x8(%ecx),%esi
   37f93:	89 42 0c             	mov    %eax,0xc(%edx)
   37f96:	89 50 08             	mov    %edx,0x8(%eax)
   37f99:	8b 41 0c             	mov    0xc(%ecx),%eax
   37f9c:	8b 51 08             	mov    0x8(%ecx),%edx
   37f9f:	89 42 0c             	mov    %eax,0xc(%edx)
   37fa2:	89 50 08             	mov    %edx,0x8(%eax)
   37fa5:	0f 87 85 03 00 00    	ja     38330 <_realloc_r+0x490>
   37fab:	83 fb 13             	cmp    $0x13,%ebx
   37fae:	89 f0                	mov    %esi,%eax
   37fb0:	76 1a                	jbe    37fcc <_realloc_r+0x12c>
   37fb2:	8b 07                	mov    (%edi),%eax
   37fb4:	83 fb 1b             	cmp    $0x1b,%ebx
   37fb7:	89 41 08             	mov    %eax,0x8(%ecx)
   37fba:	8b 47 04             	mov    0x4(%edi),%eax
   37fbd:	89 41 0c             	mov    %eax,0xc(%ecx)
   37fc0:	0f 87 8f 03 00 00    	ja     38355 <_realloc_r+0x4b5>
   37fc6:	8d 41 10             	lea    0x10(%ecx),%eax
   37fc9:	83 c7 08             	add    $0x8,%edi
   37fcc:	8b 17                	mov    (%edi),%edx
   37fce:	8b 5d d0             	mov    -0x30(%ebp),%ebx
   37fd1:	89 10                	mov    %edx,(%eax)
   37fd3:	8b 57 04             	mov    0x4(%edi),%edx
   37fd6:	89 50 04             	mov    %edx,0x4(%eax)
   37fd9:	8b 57 08             	mov    0x8(%edi),%edx
   37fdc:	89 f7                	mov    %esi,%edi
   37fde:	89 ce                	mov    %ecx,%esi
   37fe0:	89 50 08             	mov    %edx,0x8(%eax)
   37fe3:	8b 41 04             	mov    0x4(%ecx),%eax
   37fe6:	eb 1b                	jmp    38003 <_realloc_r+0x163>
   37fe8:	83 e2 f8             	and    $0xfffffff8,%edx
   37feb:	89 55 dc             	mov    %edx,-0x24(%ebp)
   37fee:	89 55 d8             	mov    %edx,-0x28(%ebp)
   37ff1:	c1 ea 1f             	shr    $0x1f,%edx
   37ff4:	e9 ff fe ff ff       	jmp    37ef8 <_realloc_r+0x58>
   37ff9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   38000:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   38003:	89 da                	mov    %ebx,%edx
   38005:	2b 55 dc             	sub    -0x24(%ebp),%edx
   38008:	83 fa 0f             	cmp    $0xf,%edx
   3800b:	77 4b                	ja     38058 <_realloc_r+0x1b8>
   3800d:	83 e0 01             	and    $0x1,%eax
   38010:	09 d8                	or     %ebx,%eax
   38012:	89 46 04             	mov    %eax,0x4(%esi)
   38015:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
   3801a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3801d:	89 04 24             	mov    %eax,(%esp)
   38020:	e8 3b da ff ff       	call   35a60 <__malloc_unlock>
   38025:	89 f8                	mov    %edi,%eax
   38027:	83 c4 3c             	add    $0x3c,%esp
   3802a:	5b                   	pop    %ebx
   3802b:	5e                   	pop    %esi
   3802c:	5f                   	pop    %edi
   3802d:	5d                   	pop    %ebp
   3802e:	c3                   	ret    
   3802f:	90                   	nop
   38030:	83 e1 fc             	and    $0xfffffffc,%ecx
   38033:	89 4d d0             	mov    %ecx,-0x30(%ebp)
   38036:	01 d9                	add    %ebx,%ecx
   38038:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
   3803b:	0f 8c 04 ff ff ff    	jl     37f45 <_realloc_r+0xa5>
   38041:	8b 5a 0c             	mov    0xc(%edx),%ebx
   38044:	8b 52 08             	mov    0x8(%edx),%edx
   38047:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   3804a:	89 5a 0c             	mov    %ebx,0xc(%edx)
   3804d:	89 53 08             	mov    %edx,0x8(%ebx)
   38050:	89 cb                	mov    %ecx,%ebx
   38052:	eb af                	jmp    38003 <_realloc_r+0x163>
   38054:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   38058:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   3805b:	83 e0 01             	and    $0x1,%eax
   3805e:	09 d8                	or     %ebx,%eax
   38060:	89 46 04             	mov    %eax,0x4(%esi)
   38063:	89 d0                	mov    %edx,%eax
   38065:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
   38068:	83 c8 01             	or     $0x1,%eax
   3806b:	89 41 04             	mov    %eax,0x4(%ecx)
   3806e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   38071:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
   38076:	83 c1 08             	add    $0x8,%ecx
   38079:	89 4c 24 04          	mov    %ecx,0x4(%esp)
   3807d:	89 04 24             	mov    %eax,(%esp)
   38080:	e8 2b fb ff ff       	call   37bb0 <_free_r>
   38085:	eb 93                	jmp    3801a <_realloc_r+0x17a>
   38087:	90                   	nop
   38088:	8b 45 e0             	mov    -0x20(%ebp),%eax
   3808b:	89 44 24 04          	mov    %eax,0x4(%esp)
   3808f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   38092:	89 04 24             	mov    %eax,(%esp)
   38095:	e8 d6 d1 ff ff       	call   35270 <_malloc_r>
   3809a:	85 c0                	test   %eax,%eax
   3809c:	89 c1                	mov    %eax,%ecx
   3809e:	0f 84 65 03 00 00    	je     38409 <_realloc_r+0x569>
   380a4:	8b 47 fc             	mov    -0x4(%edi),%eax
   380a7:	8d 51 f8             	lea    -0x8(%ecx),%edx
   380aa:	89 55 e0             	mov    %edx,-0x20(%ebp)
   380ad:	89 c2                	mov    %eax,%edx
   380af:	83 e2 fe             	and    $0xfffffffe,%edx
   380b2:	01 f2                	add    %esi,%edx
   380b4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
   380b7:	0f 84 63 02 00 00    	je     38320 <_realloc_r+0x480>
   380bd:	83 eb 04             	sub    $0x4,%ebx
   380c0:	83 fb 24             	cmp    $0x24,%ebx
   380c3:	0f 87 6f 01 00 00    	ja     38238 <_realloc_r+0x398>
   380c9:	83 fb 13             	cmp    $0x13,%ebx
   380cc:	0f 87 ee 00 00 00    	ja     381c0 <_realloc_r+0x320>
   380d2:	89 c8                	mov    %ecx,%eax
   380d4:	89 fa                	mov    %edi,%edx
   380d6:	8b 1a                	mov    (%edx),%ebx
   380d8:	89 18                	mov    %ebx,(%eax)
   380da:	8b 5a 04             	mov    0x4(%edx),%ebx
   380dd:	89 58 04             	mov    %ebx,0x4(%eax)
   380e0:	8b 52 08             	mov    0x8(%edx),%edx
   380e3:	89 50 08             	mov    %edx,0x8(%eax)
   380e6:	8b 75 e4             	mov    -0x1c(%ebp),%esi
   380e9:	89 7c 24 04          	mov    %edi,0x4(%esp)
   380ed:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   380f0:	89 34 24             	mov    %esi,(%esp)
   380f3:	e8 b8 fa ff ff       	call   37bb0 <_free_r>
   380f8:	89 34 24             	mov    %esi,(%esp)
   380fb:	e8 60 d9 ff ff       	call   35a60 <__malloc_unlock>
   38100:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   38103:	83 c4 3c             	add    $0x3c,%esp
   38106:	5b                   	pop    %ebx
   38107:	5e                   	pop    %esi
   38108:	5f                   	pop    %edi
   38109:	89 c8                	mov    %ecx,%eax
   3810b:	5d                   	pop    %ebp
   3810c:	c3                   	ret    
   3810d:	8d 76 00             	lea    0x0(%esi),%esi
   38110:	89 45 0c             	mov    %eax,0xc(%ebp)
   38113:	83 c4 3c             	add    $0x3c,%esp
   38116:	5b                   	pop    %ebx
   38117:	5e                   	pop    %esi
   38118:	5f                   	pop    %edi
   38119:	5d                   	pop    %ebp
   3811a:	e9 51 d1 ff ff       	jmp    35270 <_malloc_r>
   3811f:	90                   	nop
   38120:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   38123:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
   38129:	31 c0                	xor    %eax,%eax
   3812b:	e9 f7 fe ff ff       	jmp    38027 <_realloc_r+0x187>
   38130:	89 c2                	mov    %eax,%edx
   38132:	3b 55 d8             	cmp    -0x28(%ebp),%edx
   38135:	0f 8c 4d ff ff ff    	jl     38088 <_realloc_r+0x1e8>
   3813b:	8b 71 08             	mov    0x8(%ecx),%esi
   3813e:	83 eb 04             	sub    $0x4,%ebx
   38141:	8b 41 0c             	mov    0xc(%ecx),%eax
   38144:	83 fb 24             	cmp    $0x24,%ebx
   38147:	89 46 0c             	mov    %eax,0xc(%esi)
   3814a:	89 70 08             	mov    %esi,0x8(%eax)
   3814d:	8d 71 08             	lea    0x8(%ecx),%esi
   38150:	0f 87 88 00 00 00    	ja     381de <_realloc_r+0x33e>
   38156:	83 fb 13             	cmp    $0x13,%ebx
   38159:	89 f0                	mov    %esi,%eax
   3815b:	76 1a                	jbe    38177 <_realloc_r+0x2d7>
   3815d:	8b 07                	mov    (%edi),%eax
   3815f:	83 fb 1b             	cmp    $0x1b,%ebx
   38162:	89 41 08             	mov    %eax,0x8(%ecx)
   38165:	8b 47 04             	mov    0x4(%edi),%eax
   38168:	89 41 0c             	mov    %eax,0xc(%ecx)
   3816b:	0f 87 17 02 00 00    	ja     38388 <_realloc_r+0x4e8>
   38171:	8d 41 10             	lea    0x10(%ecx),%eax
   38174:	83 c7 08             	add    $0x8,%edi
   38177:	8b 1f                	mov    (%edi),%ebx
   38179:	89 18                	mov    %ebx,(%eax)
   3817b:	8b 5f 04             	mov    0x4(%edi),%ebx
   3817e:	89 58 04             	mov    %ebx,0x4(%eax)
   38181:	8b 5f 08             	mov    0x8(%edi),%ebx
   38184:	89 f7                	mov    %esi,%edi
   38186:	89 ce                	mov    %ecx,%esi
   38188:	89 58 08             	mov    %ebx,0x8(%eax)
   3818b:	89 d3                	mov    %edx,%ebx
   3818d:	8b 41 04             	mov    0x4(%ecx),%eax
   38190:	e9 6e fe ff ff       	jmp    38003 <_realloc_r+0x163>
   38195:	8d 76 00             	lea    0x0(%esi),%esi
   38198:	8b 45 cc             	mov    -0x34(%ebp),%eax
   3819b:	8b 55 dc             	mov    -0x24(%ebp),%edx
   3819e:	8b 48 04             	mov    0x4(%eax),%ecx
   381a1:	83 c2 10             	add    $0x10,%edx
   381a4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
   381a7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
   381ab:	8b 4d d0             	mov    -0x30(%ebp),%ecx
   381ae:	01 d9                	add    %ebx,%ecx
   381b0:	39 d1                	cmp    %edx,%ecx
   381b2:	7d 54                	jge    38208 <_realloc_r+0x368>
   381b4:	89 c2                	mov    %eax,%edx
   381b6:	e9 8a fd ff ff       	jmp    37f45 <_realloc_r+0xa5>
   381bb:	90                   	nop
   381bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   381c0:	8b 07                	mov    (%edi),%eax
   381c2:	83 fb 1b             	cmp    $0x1b,%ebx
   381c5:	89 01                	mov    %eax,(%ecx)
   381c7:	8b 47 04             	mov    0x4(%edi),%eax
   381ca:	89 41 04             	mov    %eax,0x4(%ecx)
   381cd:	0f 87 2d 01 00 00    	ja     38300 <_realloc_r+0x460>
   381d3:	8d 41 08             	lea    0x8(%ecx),%eax
   381d6:	8d 57 08             	lea    0x8(%edi),%edx
   381d9:	e9 f8 fe ff ff       	jmp    380d6 <_realloc_r+0x236>
   381de:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   381e2:	89 7c 24 04          	mov    %edi,0x4(%esp)
   381e6:	89 f7                	mov    %esi,%edi
   381e8:	89 34 24             	mov    %esi,(%esp)
   381eb:	89 55 d8             	mov    %edx,-0x28(%ebp)
   381ee:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   381f1:	e8 1a fc ff ff       	call   37e10 <memmove>
   381f6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   381f9:	8b 55 d8             	mov    -0x28(%ebp),%edx
   381fc:	8b 41 04             	mov    0x4(%ecx),%eax
   381ff:	89 ce                	mov    %ecx,%esi
   38201:	89 d3                	mov    %edx,%ebx
   38203:	e9 fb fd ff ff       	jmp    38003 <_realloc_r+0x163>
   38208:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   3820b:	29 d9                	sub    %ebx,%ecx
   3820d:	01 de                	add    %ebx,%esi
   3820f:	83 c9 01             	or     $0x1,%ecx
   38212:	89 35 48 d5 03 00    	mov    %esi,0x3d548
   38218:	89 4e 04             	mov    %ecx,0x4(%esi)
   3821b:	8b 47 fc             	mov    -0x4(%edi),%eax
   3821e:	83 e0 01             	and    $0x1,%eax
   38221:	09 d8                	or     %ebx,%eax
   38223:	89 47 fc             	mov    %eax,-0x4(%edi)
   38226:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   38229:	89 04 24             	mov    %eax,(%esp)
   3822c:	e8 2f d8 ff ff       	call   35a60 <__malloc_unlock>
   38231:	89 f8                	mov    %edi,%eax
   38233:	e9 ef fd ff ff       	jmp    38027 <_realloc_r+0x187>
   38238:	89 0c 24             	mov    %ecx,(%esp)
   3823b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   3823f:	89 7c 24 04          	mov    %edi,0x4(%esp)
   38243:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   38246:	e8 c5 fb ff ff       	call   37e10 <memmove>
   3824b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   3824e:	e9 93 fe ff ff       	jmp    380e6 <_realloc_r+0x246>
   38253:	90                   	nop
   38254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   38258:	8d 14 18             	lea    (%eax,%ebx,1),%edx
   3825b:	e9 d2 fe ff ff       	jmp    38132 <_realloc_r+0x292>
   38260:	8d 14 18             	lea    (%eax,%ebx,1),%edx
   38263:	8b 45 d0             	mov    -0x30(%ebp),%eax
   38266:	01 d0                	add    %edx,%eax
   38268:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   3826b:	8b 45 dc             	mov    -0x24(%ebp),%eax
   3826e:	83 c0 10             	add    $0x10,%eax
   38271:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
   38274:	0f 8c b8 fe ff ff    	jl     38132 <_realloc_r+0x292>
   3827a:	8b 41 0c             	mov    0xc(%ecx),%eax
   3827d:	83 eb 04             	sub    $0x4,%ebx
   38280:	8b 51 08             	mov    0x8(%ecx),%edx
   38283:	83 fb 24             	cmp    $0x24,%ebx
   38286:	8d 71 08             	lea    0x8(%ecx),%esi
   38289:	89 42 0c             	mov    %eax,0xc(%edx)
   3828c:	89 50 08             	mov    %edx,0x8(%eax)
   3828f:	0f 87 3d 01 00 00    	ja     383d2 <_realloc_r+0x532>
   38295:	83 fb 13             	cmp    $0x13,%ebx
   38298:	89 f0                	mov    %esi,%eax
   3829a:	76 1a                	jbe    382b6 <_realloc_r+0x416>
   3829c:	8b 07                	mov    (%edi),%eax
   3829e:	83 fb 1b             	cmp    $0x1b,%ebx
   382a1:	89 41 08             	mov    %eax,0x8(%ecx)
   382a4:	8b 47 04             	mov    0x4(%edi),%eax
   382a7:	89 41 0c             	mov    %eax,0xc(%ecx)
   382aa:	0f 87 3d 01 00 00    	ja     383ed <_realloc_r+0x54d>
   382b0:	8d 41 10             	lea    0x10(%ecx),%eax
   382b3:	83 c7 08             	add    $0x8,%edi
   382b6:	8b 17                	mov    (%edi),%edx
   382b8:	89 10                	mov    %edx,(%eax)
   382ba:	8b 57 04             	mov    0x4(%edi),%edx
   382bd:	89 50 04             	mov    %edx,0x4(%eax)
   382c0:	8b 57 08             	mov    0x8(%edi),%edx
   382c3:	89 50 08             	mov    %edx,0x8(%eax)
   382c6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
   382c9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
   382cc:	89 d8                	mov    %ebx,%eax
   382ce:	29 df                	sub    %ebx,%edi
   382d0:	01 c8                	add    %ecx,%eax
   382d2:	83 cf 01             	or     $0x1,%edi
   382d5:	a3 48 d5 03 00       	mov    %eax,0x3d548
   382da:	89 78 04             	mov    %edi,0x4(%eax)
   382dd:	8b 41 04             	mov    0x4(%ecx),%eax
   382e0:	83 e0 01             	and    $0x1,%eax
   382e3:	09 d8                	or     %ebx,%eax
   382e5:	89 41 04             	mov    %eax,0x4(%ecx)
   382e8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   382eb:	89 04 24             	mov    %eax,(%esp)
   382ee:	e8 6d d7 ff ff       	call   35a60 <__malloc_unlock>
   382f3:	89 f0                	mov    %esi,%eax
   382f5:	e9 2d fd ff ff       	jmp    38027 <_realloc_r+0x187>
   382fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   38300:	8b 47 08             	mov    0x8(%edi),%eax
   38303:	83 fb 24             	cmp    $0x24,%ebx
   38306:	89 41 08             	mov    %eax,0x8(%ecx)
   38309:	8b 47 0c             	mov    0xc(%edi),%eax
   3830c:	89 41 0c             	mov    %eax,0xc(%ecx)
   3830f:	74 60                	je     38371 <_realloc_r+0x4d1>
   38311:	8d 41 10             	lea    0x10(%ecx),%eax
   38314:	8d 57 10             	lea    0x10(%edi),%edx
   38317:	e9 ba fd ff ff       	jmp    380d6 <_realloc_r+0x236>
   3831c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   38320:	8b 51 fc             	mov    -0x4(%ecx),%edx
   38323:	83 e2 fc             	and    $0xfffffffc,%edx
   38326:	01 d3                	add    %edx,%ebx
   38328:	e9 d6 fc ff ff       	jmp    38003 <_realloc_r+0x163>
   3832d:	8d 76 00             	lea    0x0(%esi),%esi
   38330:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   38334:	89 7c 24 04          	mov    %edi,0x4(%esp)
   38338:	89 f7                	mov    %esi,%edi
   3833a:	89 34 24             	mov    %esi,(%esp)
   3833d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   38340:	e8 cb fa ff ff       	call   37e10 <memmove>
   38345:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   38348:	8b 5d d0             	mov    -0x30(%ebp),%ebx
   3834b:	8b 41 04             	mov    0x4(%ecx),%eax
   3834e:	89 ce                	mov    %ecx,%esi
   38350:	e9 ae fc ff ff       	jmp    38003 <_realloc_r+0x163>
   38355:	8b 47 08             	mov    0x8(%edi),%eax
   38358:	83 fb 24             	cmp    $0x24,%ebx
   3835b:	89 41 10             	mov    %eax,0x10(%ecx)
   3835e:	8b 47 0c             	mov    0xc(%edi),%eax
   38361:	89 41 14             	mov    %eax,0x14(%ecx)
   38364:	74 3e                	je     383a4 <_realloc_r+0x504>
   38366:	8d 41 18             	lea    0x18(%ecx),%eax
   38369:	83 c7 10             	add    $0x10,%edi
   3836c:	e9 5b fc ff ff       	jmp    37fcc <_realloc_r+0x12c>
   38371:	8b 47 10             	mov    0x10(%edi),%eax
   38374:	8d 57 18             	lea    0x18(%edi),%edx
   38377:	89 41 10             	mov    %eax,0x10(%ecx)
   3837a:	8b 5f 14             	mov    0x14(%edi),%ebx
   3837d:	8d 41 18             	lea    0x18(%ecx),%eax
   38380:	89 59 14             	mov    %ebx,0x14(%ecx)
   38383:	e9 4e fd ff ff       	jmp    380d6 <_realloc_r+0x236>
   38388:	8b 47 08             	mov    0x8(%edi),%eax
   3838b:	83 fb 24             	cmp    $0x24,%ebx
   3838e:	89 41 10             	mov    %eax,0x10(%ecx)
   38391:	8b 47 0c             	mov    0xc(%edi),%eax
   38394:	89 41 14             	mov    %eax,0x14(%ecx)
   38397:	74 22                	je     383bb <_realloc_r+0x51b>
   38399:	8d 41 18             	lea    0x18(%ecx),%eax
   3839c:	83 c7 10             	add    $0x10,%edi
   3839f:	e9 d3 fd ff ff       	jmp    38177 <_realloc_r+0x2d7>
   383a4:	8b 47 10             	mov    0x10(%edi),%eax
   383a7:	83 c7 18             	add    $0x18,%edi
   383aa:	89 41 18             	mov    %eax,0x18(%ecx)
   383ad:	8b 57 fc             	mov    -0x4(%edi),%edx
   383b0:	8d 41 20             	lea    0x20(%ecx),%eax
   383b3:	89 51 1c             	mov    %edx,0x1c(%ecx)
   383b6:	e9 11 fc ff ff       	jmp    37fcc <_realloc_r+0x12c>
   383bb:	8b 47 10             	mov    0x10(%edi),%eax
   383be:	83 c7 18             	add    $0x18,%edi
   383c1:	89 41 18             	mov    %eax,0x18(%ecx)
   383c4:	8b 5f fc             	mov    -0x4(%edi),%ebx
   383c7:	8d 41 20             	lea    0x20(%ecx),%eax
   383ca:	89 59 1c             	mov    %ebx,0x1c(%ecx)
   383cd:	e9 a5 fd ff ff       	jmp    38177 <_realloc_r+0x2d7>
   383d2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
   383d6:	89 7c 24 04          	mov    %edi,0x4(%esp)
   383da:	89 34 24             	mov    %esi,(%esp)
   383dd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
   383e0:	e8 2b fa ff ff       	call   37e10 <memmove>
   383e5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
   383e8:	e9 d9 fe ff ff       	jmp    382c6 <_realloc_r+0x426>
   383ed:	8b 47 08             	mov    0x8(%edi),%eax
   383f0:	83 fb 24             	cmp    $0x24,%ebx
   383f3:	89 41 10             	mov    %eax,0x10(%ecx)
   383f6:	8b 47 0c             	mov    0xc(%edi),%eax
   383f9:	89 41 14             	mov    %eax,0x14(%ecx)
   383fc:	74 1d                	je     3841b <_realloc_r+0x57b>
   383fe:	8d 41 18             	lea    0x18(%ecx),%eax
   38401:	83 c7 10             	add    $0x10,%edi
   38404:	e9 ad fe ff ff       	jmp    382b6 <_realloc_r+0x416>
   38409:	8b 45 e4             	mov    -0x1c(%ebp),%eax
   3840c:	89 04 24             	mov    %eax,(%esp)
   3840f:	e8 4c d6 ff ff       	call   35a60 <__malloc_unlock>
   38414:	31 c0                	xor    %eax,%eax
   38416:	e9 0c fc ff ff       	jmp    38027 <_realloc_r+0x187>
   3841b:	8b 47 10             	mov    0x10(%edi),%eax
   3841e:	83 c7 18             	add    $0x18,%edi
   38421:	89 41 18             	mov    %eax,0x18(%ecx)
   38424:	8b 57 fc             	mov    -0x4(%edi),%edx
   38427:	8d 41 20             	lea    0x20(%ecx),%eax
   3842a:	89 51 1c             	mov    %edx,0x1c(%ecx)
   3842d:	e9 84 fe ff ff       	jmp    382b6 <_realloc_r+0x416>
   38432:	66 90                	xchg   %ax,%ax
   38434:	66 90                	xchg   %ax,%ax
   38436:	66 90                	xchg   %ax,%ax
   38438:	66 90                	xchg   %ax,%ax
   3843a:	66 90                	xchg   %ax,%ax
   3843c:	66 90                	xchg   %ax,%ax
   3843e:	66 90                	xchg   %ax,%ax

00038440 <cleanup_glue>:
   38440:	55                   	push   %ebp
   38441:	89 e5                	mov    %esp,%ebp
   38443:	56                   	push   %esi
   38444:	53                   	push   %ebx
   38445:	83 ec 10             	sub    $0x10,%esp
   38448:	8b 5d 0c             	mov    0xc(%ebp),%ebx
   3844b:	8b 75 08             	mov    0x8(%ebp),%esi
   3844e:	8b 03                	mov    (%ebx),%eax
   38450:	85 c0                	test   %eax,%eax
   38452:	74 0c                	je     38460 <cleanup_glue+0x20>
   38454:	89 44 24 04          	mov    %eax,0x4(%esp)
   38458:	89 34 24             	mov    %esi,(%esp)
   3845b:	e8 e0 ff ff ff       	call   38440 <cleanup_glue>
   38460:	89 5d 0c             	mov    %ebx,0xc(%ebp)
   38463:	89 75 08             	mov    %esi,0x8(%ebp)
   38466:	83 c4 10             	add    $0x10,%esp
   38469:	5b                   	pop    %ebx
   3846a:	5e                   	pop    %esi
   3846b:	5d                   	pop    %ebp
   3846c:	e9 3f f7 ff ff       	jmp    37bb0 <_free_r>
   38471:	eb 0d                	jmp    38480 <_reclaim_reent>
   38473:	90                   	nop
   38474:	90                   	nop
   38475:	90                   	nop
   38476:	90                   	nop
   38477:	90                   	nop
   38478:	90                   	nop
   38479:	90                   	nop
   3847a:	90                   	nop
   3847b:	90                   	nop
   3847c:	90                   	nop
   3847d:	90                   	nop
   3847e:	90                   	nop
   3847f:	90                   	nop

00038480 <_reclaim_reent>:
   38480:	55                   	push   %ebp
   38481:	89 e5                	mov    %esp,%ebp
   38483:	57                   	push   %edi
   38484:	56                   	push   %esi
   38485:	53                   	push   %ebx
   38486:	83 ec 1c             	sub    $0x1c,%esp
   38489:	8b 5d 08             	mov    0x8(%ebp),%ebx
   3848c:	3b 1d 40 d0 03 00    	cmp    0x3d040,%ebx
   38492:	0f 84 a6 00 00 00    	je     3853e <_reclaim_reent+0xbe>
   38498:	8b 53 4c             	mov    0x4c(%ebx),%edx
   3849b:	85 d2                	test   %edx,%edx
   3849d:	74 46                	je     384e5 <_reclaim_reent+0x65>
   3849f:	31 c0                	xor    %eax,%eax
   384a1:	31 f6                	xor    %esi,%esi
   384a3:	90                   	nop
   384a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
   384a8:	8b 04 82             	mov    (%edx,%eax,4),%eax
   384ab:	85 c0                	test   %eax,%eax
   384ad:	75 0b                	jne    384ba <_reclaim_reent+0x3a>
   384af:	eb 1e                	jmp    384cf <_reclaim_reent+0x4f>
   384b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   384b8:	89 f8                	mov    %edi,%eax
   384ba:	8b 38                	mov    (%eax),%edi
   384bc:	89 44 24 04          	mov    %eax,0x4(%esp)
   384c0:	89 1c 24             	mov    %ebx,(%esp)
   384c3:	e8 e8 f6 ff ff       	call   37bb0 <_free_r>
   384c8:	85 ff                	test   %edi,%edi
   384ca:	75 ec                	jne    384b8 <_reclaim_reent+0x38>
   384cc:	8b 53 4c             	mov    0x4c(%ebx),%edx
   384cf:	83 c6 01             	add    $0x1,%esi
   384d2:	83 fe 20             	cmp    $0x20,%esi
   384d5:	89 f0                	mov    %esi,%eax
   384d7:	75 cf                	jne    384a8 <_reclaim_reent+0x28>
   384d9:	89 54 24 04          	mov    %edx,0x4(%esp)
   384dd:	89 1c 24             	mov    %ebx,(%esp)
   384e0:	e8 cb f6 ff ff       	call   37bb0 <_free_r>
   384e5:	8b 43 40             	mov    0x40(%ebx),%eax
   384e8:	85 c0                	test   %eax,%eax
   384ea:	74 0c                	je     384f8 <_reclaim_reent+0x78>
   384ec:	89 44 24 04          	mov    %eax,0x4(%esp)
   384f0:	89 1c 24             	mov    %ebx,(%esp)
   384f3:	e8 b8 f6 ff ff       	call   37bb0 <_free_r>
   384f8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
   384fe:	85 c0                	test   %eax,%eax
   38500:	74 22                	je     38524 <_reclaim_reent+0xa4>
   38502:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
   38508:	39 f0                	cmp    %esi,%eax
   3850a:	75 06                	jne    38512 <_reclaim_reent+0x92>
   3850c:	eb 16                	jmp    38524 <_reclaim_reent+0xa4>
   3850e:	66 90                	xchg   %ax,%ax
   38510:	89 f8                	mov    %edi,%eax
   38512:	8b 38                	mov    (%eax),%edi
   38514:	89 44 24 04          	mov    %eax,0x4(%esp)
   38518:	89 1c 24             	mov    %ebx,(%esp)
   3851b:	e8 90 f6 ff ff       	call   37bb0 <_free_r>
   38520:	39 fe                	cmp    %edi,%esi
   38522:	75 ec                	jne    38510 <_reclaim_reent+0x90>
   38524:	8b 43 54             	mov    0x54(%ebx),%eax
   38527:	85 c0                	test   %eax,%eax
   38529:	74 0c                	je     38537 <_reclaim_reent+0xb7>
   3852b:	89 44 24 04          	mov    %eax,0x4(%esp)
   3852f:	89 1c 24             	mov    %ebx,(%esp)
   38532:	e8 79 f6 ff ff       	call   37bb0 <_free_r>
   38537:	8b 43 38             	mov    0x38(%ebx),%eax
   3853a:	85 c0                	test   %eax,%eax
   3853c:	75 08                	jne    38546 <_reclaim_reent+0xc6>
   3853e:	83 c4 1c             	add    $0x1c,%esp
   38541:	5b                   	pop    %ebx
   38542:	5e                   	pop    %esi
   38543:	5f                   	pop    %edi
   38544:	5d                   	pop    %ebp
   38545:	c3                   	ret    
   38546:	89 1c 24             	mov    %ebx,(%esp)
   38549:	ff 53 3c             	call   *0x3c(%ebx)
   3854c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
   38552:	85 c0                	test   %eax,%eax
   38554:	74 e8                	je     3853e <_reclaim_reent+0xbe>
   38556:	89 1c 24             	mov    %ebx,(%esp)
   38559:	89 44 24 04          	mov    %eax,0x4(%esp)
   3855d:	e8 de fe ff ff       	call   38440 <cleanup_glue>
   38562:	83 c4 1c             	add    $0x1c,%esp
   38565:	5b                   	pop    %ebx
   38566:	5e                   	pop    %esi
   38567:	5f                   	pop    %edi
   38568:	5d                   	pop    %ebp
   38569:	c3                   	ret    
