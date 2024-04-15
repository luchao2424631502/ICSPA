
kernel:     file format elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
c0030007:	ea 0e 00 03 00 08 00 	ljmp   $0x8,$0x3000e

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
c00300d5:	e8 2a 0b 00 00       	call   c0030c04 <irq_handle>
c00300da:	83 c4 04             	add    $0x4,%esp
c00300dd:	61                   	popa   
c00300de:	83 c4 08             	add    $0x8,%esp
c00300e1:	cf                   	iret   

c00300e2 <init>:
c00300e2:	55                   	push   %ebp
c00300e3:	89 e5                	mov    %esp,%ebp
c00300e5:	53                   	push   %ebx
c00300e6:	83 ec 04             	sub    $0x4,%esp
c00300e9:	e8 74 00 00 00       	call   c0030162 <__x86.get_pc_thunk.bx>
c00300ee:	81 c3 12 cf 00 00    	add    $0xcf12,%ebx
c00300f4:	e8 01 18 00 00       	call   c00318fa <init_page>
c00300f9:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c00300ff:	8d 83 14 31 ff bf    	lea    -0x4000ceec(%ebx),%eax
c0030105:	ff e0                	jmp    *%eax
c0030107:	b8 01 00 00 00       	mov    $0x1,%eax
c003010c:	82                   	nemu_trap 
c003010d:	90                   	nop
c003010e:	83 c4 04             	add    $0x4,%esp
c0030111:	5b                   	pop    %ebx
c0030112:	5d                   	pop    %ebp
c0030113:	c3                   	ret    

c0030114 <init_cond>:
c0030114:	55                   	push   %ebp
c0030115:	89 e5                	mov    %esp,%ebp
c0030117:	53                   	push   %ebx
c0030118:	83 ec 14             	sub    $0x14,%esp
c003011b:	e8 42 00 00 00       	call   c0030162 <__x86.get_pc_thunk.bx>
c0030120:	81 c3 e0 ce 00 00    	add    $0xcee0,%ebx
c0030126:	e8 93 15 00 00       	call   c00316be <init_mm>
c003012b:	8d 83 40 c0 ff ff    	lea    -0x3fc0(%ebx),%eax
c0030131:	50                   	push   %eax
c0030132:	6a 52                	push   $0x52
c0030134:	8d 83 00 c0 ff ff    	lea    -0x4000(%ebx),%eax
c003013a:	50                   	push   %eax
c003013b:	8d 83 0c c0 ff ff    	lea    -0x3ff4(%ebx),%eax
c0030141:	50                   	push   %eax
c0030142:	e8 9c 09 00 00       	call   c0030ae3 <printk>
c0030147:	83 c4 10             	add    $0x10,%esp
c003014a:	e8 31 07 00 00       	call   c0030880 <loader>
c003014f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030152:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c0030157:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003015a:	ff d0                	call   *%eax
c003015c:	90                   	nop
c003015d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030160:	c9                   	leave  
c0030161:	c3                   	ret    

c0030162 <__x86.get_pc_thunk.bx>:
c0030162:	8b 1c 24             	mov    (%esp),%ebx
c0030165:	c3                   	ret    

c0030166 <in_byte>:
c0030166:	55                   	push   %ebp
c0030167:	89 e5                	mov    %esp,%ebp
c0030169:	83 ec 14             	sub    $0x14,%esp
c003016c:	e8 0c 01 00 00       	call   c003027d <__x86.get_pc_thunk.ax>
c0030171:	05 8f ce 00 00       	add    $0xce8f,%eax
c0030176:	8b 45 08             	mov    0x8(%ebp),%eax
c0030179:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c003017d:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030180:	89 c2                	mov    %eax,%edx
c0030182:	ec                   	in     (%dx),%al
c0030183:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030186:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030189:	c9                   	leave  
c003018a:	c3                   	ret    

c003018b <out_byte>:
c003018b:	55                   	push   %ebp
c003018c:	89 e5                	mov    %esp,%ebp
c003018e:	83 ec 08             	sub    $0x8,%esp
c0030191:	e8 e7 00 00 00       	call   c003027d <__x86.get_pc_thunk.ax>
c0030196:	05 6a ce 00 00       	add    $0xce6a,%eax
c003019b:	8b 45 08             	mov    0x8(%ebp),%eax
c003019e:	8b 55 0c             	mov    0xc(%ebp),%edx
c00301a1:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00301a5:	88 d0                	mov    %dl,%al
c00301a7:	88 45 f8             	mov    %al,-0x8(%ebp)
c00301aa:	8a 45 f8             	mov    -0x8(%ebp),%al
c00301ad:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00301b0:	ee                   	out    %al,(%dx)
c00301b1:	90                   	nop
c00301b2:	c9                   	leave  
c00301b3:	c3                   	ret    

c00301b4 <out_long>:
c00301b4:	55                   	push   %ebp
c00301b5:	89 e5                	mov    %esp,%ebp
c00301b7:	83 ec 04             	sub    $0x4,%esp
c00301ba:	e8 be 00 00 00       	call   c003027d <__x86.get_pc_thunk.ax>
c00301bf:	05 41 ce 00 00       	add    $0xce41,%eax
c00301c4:	8b 45 08             	mov    0x8(%ebp),%eax
c00301c7:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00301cb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00301ce:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00301d1:	ef                   	out    %eax,(%dx)
c00301d2:	90                   	nop
c00301d3:	c9                   	leave  
c00301d4:	c3                   	ret    

c00301d5 <dma_prepare>:
c00301d5:	55                   	push   %ebp
c00301d6:	89 e5                	mov    %esp,%ebp
c00301d8:	83 ec 10             	sub    $0x10,%esp
c00301db:	e8 9d 00 00 00       	call   c003027d <__x86.get_pc_thunk.ax>
c00301e0:	05 20 ce 00 00       	add    $0xce20,%eax
c00301e5:	8b 55 08             	mov    0x8(%ebp),%edx
c00301e8:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00301ee:	89 55 fc             	mov    %edx,-0x4(%ebp)
c00301f1:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c00301f7:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c00301fa:	89 0a                	mov    %ecx,(%edx)
c00301fc:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c0030202:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c0030208:	c7 c2 54 00 07 c0    	mov    $0xc0070054,%edx
c003020e:	8a 4a 07             	mov    0x7(%edx),%cl
c0030211:	83 c9 80             	or     $0xffffff80,%ecx
c0030214:	88 4a 07             	mov    %cl,0x7(%edx)
c0030217:	c7 c1 54 00 07 c0    	mov    $0xc0070054,%ecx
c003021d:	66 8b 51 06          	mov    0x6(%ecx),%dx
c0030221:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c0030227:	66 89 51 06          	mov    %dx,0x6(%ecx)
c003022b:	c7 c0 54 00 07 c0    	mov    $0xc0070054,%eax
c0030231:	05 00 00 00 40       	add    $0x40000000,%eax
c0030236:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0030239:	ff 75 f8             	pushl  -0x8(%ebp)
c003023c:	68 44 c0 00 00       	push   $0xc044
c0030241:	e8 6e ff ff ff       	call   c00301b4 <out_long>
c0030246:	83 c4 08             	add    $0x8,%esp
c0030249:	90                   	nop
c003024a:	c9                   	leave  
c003024b:	c3                   	ret    

c003024c <dma_issue_read>:
c003024c:	55                   	push   %ebp
c003024d:	89 e5                	mov    %esp,%ebp
c003024f:	e8 29 00 00 00       	call   c003027d <__x86.get_pc_thunk.ax>
c0030254:	05 ac cd 00 00       	add    $0xcdac,%eax
c0030259:	68 40 c0 00 00       	push   $0xc040
c003025e:	e8 03 ff ff ff       	call   c0030166 <in_byte>
c0030263:	83 c4 04             	add    $0x4,%esp
c0030266:	83 c8 09             	or     $0x9,%eax
c0030269:	0f b6 c0             	movzbl %al,%eax
c003026c:	50                   	push   %eax
c003026d:	68 40 c0 00 00       	push   $0xc040
c0030272:	e8 14 ff ff ff       	call   c003018b <out_byte>
c0030277:	83 c4 08             	add    $0x8,%esp
c003027a:	90                   	nop
c003027b:	c9                   	leave  
c003027c:	c3                   	ret    

c003027d <__x86.get_pc_thunk.ax>:
c003027d:	8b 04 24             	mov    (%esp),%eax
c0030280:	c3                   	ret    

c0030281 <wait_intr>:
c0030281:	55                   	push   %ebp
c0030282:	89 e5                	mov    %esp,%ebp
c0030284:	e8 f4 ff ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030289:	05 77 cd 00 00       	add    $0xcd77,%eax
c003028e:	f4                   	hlt    
c003028f:	90                   	nop
c0030290:	5d                   	pop    %ebp
c0030291:	c3                   	ret    

c0030292 <ide_read>:
c0030292:	55                   	push   %ebp
c0030293:	89 e5                	mov    %esp,%ebp
c0030295:	56                   	push   %esi
c0030296:	53                   	push   %ebx
c0030297:	83 ec 10             	sub    $0x10,%esp
c003029a:	e8 c3 fe ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c003029f:	81 c3 61 cd 00 00    	add    $0xcd61,%ebx
c00302a5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00302ac:	eb 22                	jmp    c00302d0 <ide_read+0x3e>
c00302ae:	8b 55 0c             	mov    0xc(%ebp),%edx
c00302b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302b4:	01 d0                	add    %edx,%eax
c00302b6:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00302b9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00302bc:	8d 34 11             	lea    (%ecx,%edx,1),%esi
c00302bf:	83 ec 0c             	sub    $0xc,%esp
c00302c2:	50                   	push   %eax
c00302c3:	e8 c6 02 00 00       	call   c003058e <read_byte>
c00302c8:	83 c4 10             	add    $0x10,%esp
c00302cb:	88 06                	mov    %al,(%esi)
c00302cd:	ff 45 f4             	incl   -0xc(%ebp)
c00302d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302d3:	3b 45 10             	cmp    0x10(%ebp),%eax
c00302d6:	72 d6                	jb     c00302ae <ide_read+0x1c>
c00302d8:	90                   	nop
c00302d9:	8d 65 f8             	lea    -0x8(%ebp),%esp
c00302dc:	5b                   	pop    %ebx
c00302dd:	5e                   	pop    %esi
c00302de:	5d                   	pop    %ebp
c00302df:	c3                   	ret    

c00302e0 <ide_write>:
c00302e0:	55                   	push   %ebp
c00302e1:	89 e5                	mov    %esp,%ebp
c00302e3:	53                   	push   %ebx
c00302e4:	83 ec 14             	sub    $0x14,%esp
c00302e7:	e8 76 fe ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c00302ec:	81 c3 14 cd 00 00    	add    $0xcd14,%ebx
c00302f2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00302f9:	eb 25                	jmp    c0030320 <ide_write+0x40>
c00302fb:	8b 55 08             	mov    0x8(%ebp),%edx
c00302fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030301:	01 d0                	add    %edx,%eax
c0030303:	8a 00                	mov    (%eax),%al
c0030305:	0f b6 c0             	movzbl %al,%eax
c0030308:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003030b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003030e:	01 ca                	add    %ecx,%edx
c0030310:	83 ec 08             	sub    $0x8,%esp
c0030313:	50                   	push   %eax
c0030314:	52                   	push   %edx
c0030315:	e8 b1 02 00 00       	call   c00305cb <write_byte>
c003031a:	83 c4 10             	add    $0x10,%esp
c003031d:	ff 45 f4             	incl   -0xc(%ebp)
c0030320:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030323:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030326:	72 d3                	jb     c00302fb <ide_write+0x1b>
c0030328:	90                   	nop
c0030329:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003032c:	c9                   	leave  
c003032d:	c3                   	ret    

c003032e <ide_writeback>:
c003032e:	55                   	push   %ebp
c003032f:	89 e5                	mov    %esp,%ebp
c0030331:	53                   	push   %ebx
c0030332:	83 ec 04             	sub    $0x4,%esp
c0030335:	e8 28 fe ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c003033a:	81 c3 c6 cc 00 00    	add    $0xccc6,%ebx
c0030340:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
c0030346:	40                   	inc    %eax
c0030347:	89 83 04 10 00 00    	mov    %eax,0x1004(%ebx)
c003034d:	8b 83 04 10 00 00    	mov    0x1004(%ebx),%eax
c0030353:	83 f8 64             	cmp    $0x64,%eax
c0030356:	75 0f                	jne    c0030367 <ide_writeback+0x39>
c0030358:	e8 f6 00 00 00       	call   c0030453 <cache_writeback>
c003035d:	c7 83 04 10 00 00 00 	movl   $0x0,0x1004(%ebx)
c0030364:	00 00 00 
c0030367:	90                   	nop
c0030368:	83 c4 04             	add    $0x4,%esp
c003036b:	5b                   	pop    %ebx
c003036c:	5d                   	pop    %ebp
c003036d:	c3                   	ret    

c003036e <ide_intr>:
c003036e:	55                   	push   %ebp
c003036f:	89 e5                	mov    %esp,%ebp
c0030371:	e8 07 ff ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030376:	05 8a cc 00 00       	add    $0xcc8a,%eax
c003037b:	c7 80 00 10 00 00 01 	movl   $0x1,0x1000(%eax)
c0030382:	00 00 00 
c0030385:	90                   	nop
c0030386:	5d                   	pop    %ebp
c0030387:	c3                   	ret    

c0030388 <clear_ide_intr>:
c0030388:	55                   	push   %ebp
c0030389:	89 e5                	mov    %esp,%ebp
c003038b:	e8 ed fe ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030390:	05 70 cc 00 00       	add    $0xcc70,%eax
c0030395:	c7 80 00 10 00 00 00 	movl   $0x0,0x1000(%eax)
c003039c:	00 00 00 
c003039f:	90                   	nop
c00303a0:	5d                   	pop    %ebp
c00303a1:	c3                   	ret    

c00303a2 <wait_ide_intr>:
c00303a2:	55                   	push   %ebp
c00303a3:	89 e5                	mov    %esp,%ebp
c00303a5:	53                   	push   %ebx
c00303a6:	e8 b7 fd ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c00303ab:	81 c3 55 cc 00 00    	add    $0xcc55,%ebx
c00303b1:	eb 05                	jmp    c00303b8 <wait_ide_intr+0x16>
c00303b3:	e8 c9 fe ff ff       	call   c0030281 <wait_intr>
c00303b8:	8b 83 00 10 00 00    	mov    0x1000(%ebx),%eax
c00303be:	85 c0                	test   %eax,%eax
c00303c0:	74 f1                	je     c00303b3 <wait_ide_intr+0x11>
c00303c2:	e8 c1 ff ff ff       	call   c0030388 <clear_ide_intr>
c00303c7:	90                   	nop
c00303c8:	5b                   	pop    %ebx
c00303c9:	5d                   	pop    %ebp
c00303ca:	c3                   	ret    

c00303cb <init_ide>:
c00303cb:	55                   	push   %ebp
c00303cc:	89 e5                	mov    %esp,%ebp
c00303ce:	53                   	push   %ebx
c00303cf:	83 ec 04             	sub    $0x4,%esp
c00303d2:	e8 8b fd ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c00303d7:	81 c3 29 cc 00 00    	add    $0xcc29,%ebx
c00303dd:	e8 2e 00 00 00       	call   c0030410 <cache_init>
c00303e2:	83 ec 08             	sub    $0x8,%esp
c00303e5:	8d 83 2e 33 ff ff    	lea    -0xccd2(%ebx),%eax
c00303eb:	50                   	push   %eax
c00303ec:	6a 00                	push   $0x0
c00303ee:	e8 44 07 00 00       	call   c0030b37 <add_irq_handle>
c00303f3:	83 c4 10             	add    $0x10,%esp
c00303f6:	83 ec 08             	sub    $0x8,%esp
c00303f9:	8d 83 6e 33 ff ff    	lea    -0xcc92(%ebx),%eax
c00303ff:	50                   	push   %eax
c0030400:	6a 0e                	push   $0xe
c0030402:	e8 30 07 00 00       	call   c0030b37 <add_irq_handle>
c0030407:	83 c4 10             	add    $0x10,%esp
c003040a:	90                   	nop
c003040b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003040e:	c9                   	leave  
c003040f:	c3                   	ret    

c0030410 <cache_init>:
c0030410:	55                   	push   %ebp
c0030411:	89 e5                	mov    %esp,%ebp
c0030413:	53                   	push   %ebx
c0030414:	83 ec 10             	sub    $0x10,%esp
c0030417:	e8 fd 01 00 00       	call   c0030619 <__x86.get_pc_thunk.dx>
c003041c:	81 c2 e4 cb 00 00    	add    $0xcbe4,%edx
c0030422:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030429:	eb 1b                	jmp    c0030446 <cache_init+0x36>
c003042b:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c003042e:	8d 9a 24 10 00 00    	lea    0x1024(%edx),%ebx
c0030434:	89 c8                	mov    %ecx,%eax
c0030436:	c1 e0 06             	shl    $0x6,%eax
c0030439:	01 c8                	add    %ecx,%eax
c003043b:	c1 e0 03             	shl    $0x3,%eax
c003043e:	01 d8                	add    %ebx,%eax
c0030440:	c6 00 00             	movb   $0x0,(%eax)
c0030443:	ff 45 f8             	incl   -0x8(%ebp)
c0030446:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c003044a:	7e df                	jle    c003042b <cache_init+0x1b>
c003044c:	90                   	nop
c003044d:	83 c4 10             	add    $0x10,%esp
c0030450:	5b                   	pop    %ebx
c0030451:	5d                   	pop    %ebp
c0030452:	c3                   	ret    

c0030453 <cache_writeback>:
c0030453:	55                   	push   %ebp
c0030454:	89 e5                	mov    %esp,%ebp
c0030456:	53                   	push   %ebx
c0030457:	83 ec 14             	sub    $0x14,%esp
c003045a:	e8 03 fd ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c003045f:	81 c3 a1 cb 00 00    	add    $0xcba1,%ebx
c0030465:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c003046c:	eb 72                	jmp    c00304e0 <cache_writeback+0x8d>
c003046e:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030471:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
c0030477:	89 d0                	mov    %edx,%eax
c0030479:	c1 e0 06             	shl    $0x6,%eax
c003047c:	01 d0                	add    %edx,%eax
c003047e:	c1 e0 03             	shl    $0x3,%eax
c0030481:	01 c8                	add    %ecx,%eax
c0030483:	8a 00                	mov    (%eax),%al
c0030485:	3c 01                	cmp    $0x1,%al
c0030487:	75 54                	jne    c00304dd <cache_writeback+0x8a>
c0030489:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003048c:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
c0030492:	89 d0                	mov    %edx,%eax
c0030494:	c1 e0 06             	shl    $0x6,%eax
c0030497:	01 d0                	add    %edx,%eax
c0030499:	c1 e0 03             	shl    $0x3,%eax
c003049c:	01 c8                	add    %ecx,%eax
c003049e:	8b 10                	mov    (%eax),%edx
c00304a0:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c00304a3:	89 c8                	mov    %ecx,%eax
c00304a5:	c1 e0 06             	shl    $0x6,%eax
c00304a8:	01 c8                	add    %ecx,%eax
c00304aa:	c1 e0 03             	shl    $0x3,%eax
c00304ad:	8d 8b 20 10 00 00    	lea    0x1020(%ebx),%ecx
c00304b3:	01 c8                	add    %ecx,%eax
c00304b5:	83 c0 06             	add    $0x6,%eax
c00304b8:	83 ec 08             	sub    $0x8,%esp
c00304bb:	52                   	push   %edx
c00304bc:	50                   	push   %eax
c00304bd:	e8 52 03 00 00       	call   c0030814 <disk_do_write>
c00304c2:	83 c4 10             	add    $0x10,%esp
c00304c5:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00304c8:	8d 8b 25 10 00 00    	lea    0x1025(%ebx),%ecx
c00304ce:	89 d0                	mov    %edx,%eax
c00304d0:	c1 e0 06             	shl    $0x6,%eax
c00304d3:	01 d0                	add    %edx,%eax
c00304d5:	c1 e0 03             	shl    $0x3,%eax
c00304d8:	01 c8                	add    %ecx,%eax
c00304da:	c6 00 00             	movb   $0x0,(%eax)
c00304dd:	ff 45 f4             	incl   -0xc(%ebp)
c00304e0:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c00304e4:	7e 88                	jle    c003046e <cache_writeback+0x1b>
c00304e6:	90                   	nop
c00304e7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00304ea:	c9                   	leave  
c00304eb:	c3                   	ret    

c00304ec <cache_fetch>:
c00304ec:	55                   	push   %ebp
c00304ed:	89 e5                	mov    %esp,%ebp
c00304ef:	53                   	push   %ebx
c00304f0:	83 ec 14             	sub    $0x14,%esp
c00304f3:	e8 6a fc ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c00304f8:	81 c3 08 cb 00 00    	add    $0xcb08,%ebx
c00304fe:	8b 45 08             	mov    0x8(%ebp),%eax
c0030501:	83 e0 7f             	and    $0x7f,%eax
c0030504:	89 c2                	mov    %eax,%edx
c0030506:	89 d0                	mov    %edx,%eax
c0030508:	c1 e0 06             	shl    $0x6,%eax
c003050b:	01 d0                	add    %edx,%eax
c003050d:	c1 e0 03             	shl    $0x3,%eax
c0030510:	8d 93 20 10 00 00    	lea    0x1020(%ebx),%edx
c0030516:	01 d0                	add    %edx,%eax
c0030518:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003051b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003051e:	8a 40 04             	mov    0x4(%eax),%al
c0030521:	3c 01                	cmp    $0x1,%al
c0030523:	75 0a                	jne    c003052f <cache_fetch+0x43>
c0030525:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030528:	8b 00                	mov    (%eax),%eax
c003052a:	39 45 08             	cmp    %eax,0x8(%ebp)
c003052d:	74 57                	je     c0030586 <cache_fetch+0x9a>
c003052f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030532:	8a 40 04             	mov    0x4(%eax),%al
c0030535:	3c 01                	cmp    $0x1,%al
c0030537:	75 22                	jne    c003055b <cache_fetch+0x6f>
c0030539:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003053c:	8a 40 05             	mov    0x5(%eax),%al
c003053f:	3c 01                	cmp    $0x1,%al
c0030541:	75 18                	jne    c003055b <cache_fetch+0x6f>
c0030543:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030546:	8b 00                	mov    (%eax),%eax
c0030548:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003054b:	83 c2 06             	add    $0x6,%edx
c003054e:	83 ec 08             	sub    $0x8,%esp
c0030551:	50                   	push   %eax
c0030552:	52                   	push   %edx
c0030553:	e8 bc 02 00 00       	call   c0030814 <disk_do_write>
c0030558:	83 c4 10             	add    $0x10,%esp
c003055b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003055e:	83 c0 06             	add    $0x6,%eax
c0030561:	83 ec 08             	sub    $0x8,%esp
c0030564:	ff 75 08             	pushl  0x8(%ebp)
c0030567:	50                   	push   %eax
c0030568:	e8 3c 02 00 00       	call   c00307a9 <disk_do_read>
c003056d:	83 c4 10             	add    $0x10,%esp
c0030570:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030573:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c0030577:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003057a:	8b 55 08             	mov    0x8(%ebp),%edx
c003057d:	89 10                	mov    %edx,(%eax)
c003057f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030582:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c0030586:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030589:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003058c:	c9                   	leave  
c003058d:	c3                   	ret    

c003058e <read_byte>:
c003058e:	55                   	push   %ebp
c003058f:	89 e5                	mov    %esp,%ebp
c0030591:	83 ec 18             	sub    $0x18,%esp
c0030594:	e8 e4 fc ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030599:	05 67 ca 00 00       	add    $0xca67,%eax
c003059e:	8b 45 08             	mov    0x8(%ebp),%eax
c00305a1:	c1 e8 09             	shr    $0x9,%eax
c00305a4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00305a7:	83 ec 0c             	sub    $0xc,%esp
c00305aa:	ff 75 f4             	pushl  -0xc(%ebp)
c00305ad:	e8 3a ff ff ff       	call   c00304ec <cache_fetch>
c00305b2:	83 c4 10             	add    $0x10,%esp
c00305b5:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00305b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00305bb:	25 ff 01 00 00       	and    $0x1ff,%eax
c00305c0:	89 c2                	mov    %eax,%edx
c00305c2:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00305c5:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c00305c9:	c9                   	leave  
c00305ca:	c3                   	ret    

c00305cb <write_byte>:
c00305cb:	55                   	push   %ebp
c00305cc:	89 e5                	mov    %esp,%ebp
c00305ce:	83 ec 28             	sub    $0x28,%esp
c00305d1:	e8 a7 fc ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c00305d6:	05 2a ca 00 00       	add    $0xca2a,%eax
c00305db:	8b 45 0c             	mov    0xc(%ebp),%eax
c00305de:	88 45 e4             	mov    %al,-0x1c(%ebp)
c00305e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00305e4:	c1 e8 09             	shr    $0x9,%eax
c00305e7:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00305ea:	83 ec 0c             	sub    $0xc,%esp
c00305ed:	ff 75 f4             	pushl  -0xc(%ebp)
c00305f0:	e8 f7 fe ff ff       	call   c00304ec <cache_fetch>
c00305f5:	83 c4 10             	add    $0x10,%esp
c00305f8:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00305fb:	8b 45 08             	mov    0x8(%ebp),%eax
c00305fe:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030603:	89 c1                	mov    %eax,%ecx
c0030605:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030608:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c003060b:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c003060f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030612:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0030616:	90                   	nop
c0030617:	c9                   	leave  
c0030618:	c3                   	ret    

c0030619 <__x86.get_pc_thunk.dx>:
c0030619:	8b 14 24             	mov    (%esp),%edx
c003061c:	c3                   	ret    

c003061d <in_byte>:
c003061d:	55                   	push   %ebp
c003061e:	89 e5                	mov    %esp,%ebp
c0030620:	83 ec 14             	sub    $0x14,%esp
c0030623:	e8 55 fc ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030628:	05 d8 c9 00 00       	add    $0xc9d8,%eax
c003062d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030630:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030634:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030637:	89 c2                	mov    %eax,%edx
c0030639:	ec                   	in     (%dx),%al
c003063a:	88 45 ff             	mov    %al,-0x1(%ebp)
c003063d:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030640:	c9                   	leave  
c0030641:	c3                   	ret    

c0030642 <in_long>:
c0030642:	55                   	push   %ebp
c0030643:	89 e5                	mov    %esp,%ebp
c0030645:	83 ec 14             	sub    $0x14,%esp
c0030648:	e8 30 fc ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c003064d:	05 b3 c9 00 00       	add    $0xc9b3,%eax
c0030652:	8b 45 08             	mov    0x8(%ebp),%eax
c0030655:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030659:	8b 45 ec             	mov    -0x14(%ebp),%eax
c003065c:	89 c2                	mov    %eax,%edx
c003065e:	ed                   	in     (%dx),%eax
c003065f:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0030662:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030665:	c9                   	leave  
c0030666:	c3                   	ret    

c0030667 <out_byte>:
c0030667:	55                   	push   %ebp
c0030668:	89 e5                	mov    %esp,%ebp
c003066a:	83 ec 08             	sub    $0x8,%esp
c003066d:	e8 0b fc ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030672:	05 8e c9 00 00       	add    $0xc98e,%eax
c0030677:	8b 45 08             	mov    0x8(%ebp),%eax
c003067a:	8b 55 0c             	mov    0xc(%ebp),%edx
c003067d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030681:	88 d0                	mov    %dl,%al
c0030683:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030686:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030689:	8b 55 fc             	mov    -0x4(%ebp),%edx
c003068c:	ee                   	out    %al,(%dx)
c003068d:	90                   	nop
c003068e:	c9                   	leave  
c003068f:	c3                   	ret    

c0030690 <out_long>:
c0030690:	55                   	push   %ebp
c0030691:	89 e5                	mov    %esp,%ebp
c0030693:	83 ec 04             	sub    $0x4,%esp
c0030696:	e8 e2 fb ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c003069b:	05 65 c9 00 00       	add    $0xc965,%eax
c00306a0:	8b 45 08             	mov    0x8(%ebp),%eax
c00306a3:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00306a7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00306aa:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00306ad:	ef                   	out    %eax,(%dx)
c00306ae:	90                   	nop
c00306af:	c9                   	leave  
c00306b0:	c3                   	ret    

c00306b1 <waitdisk>:
c00306b1:	55                   	push   %ebp
c00306b2:	89 e5                	mov    %esp,%ebp
c00306b4:	e8 c4 fb ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c00306b9:	05 47 c9 00 00       	add    $0xc947,%eax
c00306be:	90                   	nop
c00306bf:	68 f7 01 00 00       	push   $0x1f7
c00306c4:	e8 54 ff ff ff       	call   c003061d <in_byte>
c00306c9:	83 c4 04             	add    $0x4,%esp
c00306cc:	0f b6 c0             	movzbl %al,%eax
c00306cf:	25 c0 00 00 00       	and    $0xc0,%eax
c00306d4:	83 f8 40             	cmp    $0x40,%eax
c00306d7:	75 e6                	jne    c00306bf <waitdisk+0xe>
c00306d9:	90                   	nop
c00306da:	c9                   	leave  
c00306db:	c3                   	ret    

c00306dc <ide_prepare>:
c00306dc:	55                   	push   %ebp
c00306dd:	89 e5                	mov    %esp,%ebp
c00306df:	e8 99 fb ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c00306e4:	05 1c c9 00 00       	add    $0xc91c,%eax
c00306e9:	e8 c3 ff ff ff       	call   c00306b1 <waitdisk>
c00306ee:	6a 00                	push   $0x0
c00306f0:	68 f1 01 00 00       	push   $0x1f1
c00306f5:	e8 6d ff ff ff       	call   c0030667 <out_byte>
c00306fa:	83 c4 08             	add    $0x8,%esp
c00306fd:	6a 01                	push   $0x1
c00306ff:	68 f2 01 00 00       	push   $0x1f2
c0030704:	e8 5e ff ff ff       	call   c0030667 <out_byte>
c0030709:	83 c4 08             	add    $0x8,%esp
c003070c:	8b 45 08             	mov    0x8(%ebp),%eax
c003070f:	0f b6 c0             	movzbl %al,%eax
c0030712:	50                   	push   %eax
c0030713:	68 f3 01 00 00       	push   $0x1f3
c0030718:	e8 4a ff ff ff       	call   c0030667 <out_byte>
c003071d:	83 c4 08             	add    $0x8,%esp
c0030720:	8b 45 08             	mov    0x8(%ebp),%eax
c0030723:	c1 e8 08             	shr    $0x8,%eax
c0030726:	0f b6 c0             	movzbl %al,%eax
c0030729:	50                   	push   %eax
c003072a:	68 f4 01 00 00       	push   $0x1f4
c003072f:	e8 33 ff ff ff       	call   c0030667 <out_byte>
c0030734:	83 c4 08             	add    $0x8,%esp
c0030737:	8b 45 08             	mov    0x8(%ebp),%eax
c003073a:	c1 e8 10             	shr    $0x10,%eax
c003073d:	0f b6 c0             	movzbl %al,%eax
c0030740:	50                   	push   %eax
c0030741:	68 f5 01 00 00       	push   $0x1f5
c0030746:	e8 1c ff ff ff       	call   c0030667 <out_byte>
c003074b:	83 c4 08             	add    $0x8,%esp
c003074e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030751:	c1 e8 18             	shr    $0x18,%eax
c0030754:	83 c8 e0             	or     $0xffffffe0,%eax
c0030757:	0f b6 c0             	movzbl %al,%eax
c003075a:	50                   	push   %eax
c003075b:	68 f6 01 00 00       	push   $0x1f6
c0030760:	e8 02 ff ff ff       	call   c0030667 <out_byte>
c0030765:	83 c4 08             	add    $0x8,%esp
c0030768:	90                   	nop
c0030769:	c9                   	leave  
c003076a:	c3                   	ret    

c003076b <issue_read>:
c003076b:	55                   	push   %ebp
c003076c:	89 e5                	mov    %esp,%ebp
c003076e:	e8 0a fb ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030773:	05 8d c8 00 00       	add    $0xc88d,%eax
c0030778:	6a 20                	push   $0x20
c003077a:	68 f7 01 00 00       	push   $0x1f7
c003077f:	e8 e3 fe ff ff       	call   c0030667 <out_byte>
c0030784:	83 c4 08             	add    $0x8,%esp
c0030787:	90                   	nop
c0030788:	c9                   	leave  
c0030789:	c3                   	ret    

c003078a <issue_write>:
c003078a:	55                   	push   %ebp
c003078b:	89 e5                	mov    %esp,%ebp
c003078d:	e8 eb fa ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030792:	05 6e c8 00 00       	add    $0xc86e,%eax
c0030797:	6a 30                	push   $0x30
c0030799:	68 f7 01 00 00       	push   $0x1f7
c003079e:	e8 c4 fe ff ff       	call   c0030667 <out_byte>
c00307a3:	83 c4 08             	add    $0x8,%esp
c00307a6:	90                   	nop
c00307a7:	c9                   	leave  
c00307a8:	c3                   	ret    

c00307a9 <disk_do_read>:
c00307a9:	55                   	push   %ebp
c00307aa:	89 e5                	mov    %esp,%ebp
c00307ac:	53                   	push   %ebx
c00307ad:	83 ec 14             	sub    $0x14,%esp
c00307b0:	e8 ad f9 ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c00307b5:	81 c3 4b c8 00 00    	add    $0xc84b,%ebx
c00307bb:	e8 c8 fb ff ff       	call   c0030388 <clear_ide_intr>
c00307c0:	83 ec 0c             	sub    $0xc,%esp
c00307c3:	ff 75 0c             	pushl  0xc(%ebp)
c00307c6:	e8 11 ff ff ff       	call   c00306dc <ide_prepare>
c00307cb:	83 c4 10             	add    $0x10,%esp
c00307ce:	e8 98 ff ff ff       	call   c003076b <issue_read>
c00307d3:	e8 ca fb ff ff       	call   c00303a2 <wait_ide_intr>
c00307d8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00307df:	eb 25                	jmp    c0030806 <disk_do_read+0x5d>
c00307e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00307e4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00307eb:	8b 45 08             	mov    0x8(%ebp),%eax
c00307ee:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c00307f1:	83 ec 0c             	sub    $0xc,%esp
c00307f4:	68 f0 01 00 00       	push   $0x1f0
c00307f9:	e8 44 fe ff ff       	call   c0030642 <in_long>
c00307fe:	83 c4 10             	add    $0x10,%esp
c0030801:	89 03                	mov    %eax,(%ebx)
c0030803:	ff 45 f4             	incl   -0xc(%ebp)
c0030806:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030809:	83 f8 7f             	cmp    $0x7f,%eax
c003080c:	76 d3                	jbe    c00307e1 <disk_do_read+0x38>
c003080e:	90                   	nop
c003080f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030812:	c9                   	leave  
c0030813:	c3                   	ret    

c0030814 <disk_do_write>:
c0030814:	55                   	push   %ebp
c0030815:	89 e5                	mov    %esp,%ebp
c0030817:	83 ec 10             	sub    $0x10,%esp
c003081a:	e8 5e fa ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c003081f:	05 e1 c7 00 00       	add    $0xc7e1,%eax
c0030824:	ff 75 0c             	pushl  0xc(%ebp)
c0030827:	e8 b0 fe ff ff       	call   c00306dc <ide_prepare>
c003082c:	83 c4 04             	add    $0x4,%esp
c003082f:	e8 56 ff ff ff       	call   c003078a <issue_write>
c0030834:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c003083b:	eb 22                	jmp    c003085f <disk_do_write+0x4b>
c003083d:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030840:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030847:	8b 45 08             	mov    0x8(%ebp),%eax
c003084a:	01 d0                	add    %edx,%eax
c003084c:	8b 00                	mov    (%eax),%eax
c003084e:	50                   	push   %eax
c003084f:	68 f0 01 00 00       	push   $0x1f0
c0030854:	e8 37 fe ff ff       	call   c0030690 <out_long>
c0030859:	83 c4 08             	add    $0x8,%esp
c003085c:	ff 45 fc             	incl   -0x4(%ebp)
c003085f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030862:	83 f8 7f             	cmp    $0x7f,%eax
c0030865:	76 d6                	jbe    c003083d <disk_do_write+0x29>
c0030867:	90                   	nop
c0030868:	c9                   	leave  
c0030869:	c3                   	ret    

c003086a <write_cr3>:
c003086a:	55                   	push   %ebp
c003086b:	89 e5                	mov    %esp,%ebp
c003086d:	e8 0b fa ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030872:	05 8e c7 00 00       	add    $0xc78e,%eax
c0030877:	8b 45 08             	mov    0x8(%ebp),%eax
c003087a:	0f 22 d8             	mov    %eax,%cr3
c003087d:	90                   	nop
c003087e:	5d                   	pop    %ebp
c003087f:	c3                   	ret    

c0030880 <loader>:
c0030880:	55                   	push   %ebp
c0030881:	89 e5                	mov    %esp,%ebp
c0030883:	56                   	push   %esi
c0030884:	53                   	push   %ebx
c0030885:	83 ec 20             	sub    $0x20,%esp
c0030888:	e8 d5 f8 ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c003088d:	81 c3 73 c7 00 00    	add    $0xc773,%ebx
c0030893:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c003089a:	8d 83 e0 c0 ff ff    	lea    -0x3f20(%ebx),%eax
c00308a0:	50                   	push   %eax
c00308a1:	6a 1d                	push   $0x1d
c00308a3:	8d 83 4c c0 ff ff    	lea    -0x3fb4(%ebx),%eax
c00308a9:	50                   	push   %eax
c00308aa:	8d 83 5c c0 ff ff    	lea    -0x3fa4(%ebx),%eax
c00308b0:	50                   	push   %eax
c00308b1:	e8 2d 02 00 00       	call   c0030ae3 <printk>
c00308b6:	83 c4 10             	add    $0x10,%esp
c00308b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308bc:	8b 50 1c             	mov    0x1c(%eax),%edx
c00308bf:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308c2:	01 d0                	add    %edx,%eax
c00308c4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00308c7:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00308ca:	8b 40 2c             	mov    0x2c(%eax),%eax
c00308cd:	0f b7 c0             	movzwl %ax,%eax
c00308d0:	c1 e0 05             	shl    $0x5,%eax
c00308d3:	89 c2                	mov    %eax,%edx
c00308d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308d8:	01 d0                	add    %edx,%eax
c00308da:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00308dd:	e9 e8 00 00 00       	jmp    c00309ca <loader+0x14a>
c00308e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308e5:	8b 00                	mov    (%eax),%eax
c00308e7:	83 f8 01             	cmp    $0x1,%eax
c00308ea:	0f 85 d6 00 00 00    	jne    c00309c6 <loader+0x146>
c00308f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308f3:	8b 40 14             	mov    0x14(%eax),%eax
c00308f6:	89 c2                	mov    %eax,%edx
c00308f8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00308fb:	8b 40 08             	mov    0x8(%eax),%eax
c00308fe:	83 ec 08             	sub    $0x8,%esp
c0030901:	52                   	push   %edx
c0030902:	50                   	push   %eax
c0030903:	e8 78 12 00 00       	call   c0031b80 <mm_malloc>
c0030908:	83 c4 10             	add    $0x10,%esp
c003090b:	89 45 e8             	mov    %eax,-0x18(%ebp)
c003090e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030911:	8b 50 10             	mov    0x10(%eax),%edx
c0030914:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030917:	8b 48 04             	mov    0x4(%eax),%ecx
c003091a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003091d:	01 c1                	add    %eax,%ecx
c003091f:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0030922:	83 ec 04             	sub    $0x4,%esp
c0030925:	52                   	push   %edx
c0030926:	51                   	push   %ecx
c0030927:	50                   	push   %eax
c0030928:	e8 e7 14 00 00       	call   c0031e14 <memcpy>
c003092d:	83 c4 10             	add    $0x10,%esp
c0030930:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030933:	8b 50 10             	mov    0x10(%eax),%edx
c0030936:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030939:	8b 40 14             	mov    0x14(%eax),%eax
c003093c:	39 c2                	cmp    %eax,%edx
c003093e:	73 2b                	jae    c003096b <loader+0xeb>
c0030940:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030943:	8b 50 14             	mov    0x14(%eax),%edx
c0030946:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030949:	8b 40 10             	mov    0x10(%eax),%eax
c003094c:	29 c2                	sub    %eax,%edx
c003094e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030951:	8b 48 10             	mov    0x10(%eax),%ecx
c0030954:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030957:	8b 40 08             	mov    0x8(%eax),%eax
c003095a:	01 c8                	add    %ecx,%eax
c003095c:	83 ec 04             	sub    $0x4,%esp
c003095f:	52                   	push   %edx
c0030960:	6a 00                	push   $0x0
c0030962:	50                   	push   %eax
c0030963:	e8 f4 14 00 00       	call   c0031e5c <memset>
c0030968:	83 c4 10             	add    $0x10,%esp
c003096b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003096e:	8b 70 14             	mov    0x14(%eax),%esi
c0030971:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030974:	8b 48 10             	mov    0x10(%eax),%ecx
c0030977:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003097a:	8b 50 08             	mov    0x8(%eax),%edx
c003097d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030980:	8b 40 04             	mov    0x4(%eax),%eax
c0030983:	83 ec 08             	sub    $0x8,%esp
c0030986:	56                   	push   %esi
c0030987:	51                   	push   %ecx
c0030988:	52                   	push   %edx
c0030989:	50                   	push   %eax
c003098a:	ff 75 e8             	pushl  -0x18(%ebp)
c003098d:	8d 83 98 c0 ff ff    	lea    -0x3f68(%ebx),%eax
c0030993:	50                   	push   %eax
c0030994:	e8 4a 01 00 00       	call   c0030ae3 <printk>
c0030999:	83 c4 20             	add    $0x20,%esp
c003099c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003099f:	8b 50 08             	mov    0x8(%eax),%edx
c00309a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309a5:	8b 40 14             	mov    0x14(%eax),%eax
c00309a8:	01 d0                	add    %edx,%eax
c00309aa:	48                   	dec    %eax
c00309ab:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00309ae:	c7 c0 88 ee 04 c0    	mov    $0xc004ee88,%eax
c00309b4:	8b 00                	mov    (%eax),%eax
c00309b6:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00309b9:	76 0b                	jbe    c00309c6 <loader+0x146>
c00309bb:	c7 c0 88 ee 04 c0    	mov    $0xc004ee88,%eax
c00309c1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00309c4:	89 10                	mov    %edx,(%eax)
c00309c6:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c00309ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309cd:	3b 45 ec             	cmp    -0x14(%ebp),%eax
c00309d0:	0f 82 0c ff ff ff    	jb     c00308e2 <loader+0x62>
c00309d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00309d9:	8b 40 18             	mov    0x18(%eax),%eax
c00309dc:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00309df:	83 ec 08             	sub    $0x8,%esp
c00309e2:	68 00 00 10 00       	push   $0x100000
c00309e7:	68 00 00 f0 bf       	push   $0xbff00000
c00309ec:	e8 8f 11 00 00       	call   c0031b80 <mm_malloc>
c00309f1:	83 c4 10             	add    $0x10,%esp
c00309f4:	e8 60 0c 00 00       	call   c0031659 <get_ucr3>
c00309f9:	83 ec 0c             	sub    $0xc,%esp
c00309fc:	50                   	push   %eax
c00309fd:	e8 68 fe ff ff       	call   c003086a <write_cr3>
c0030a02:	83 c4 10             	add    $0x10,%esp
c0030a05:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0030a08:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0030a0b:	5b                   	pop    %ebx
c0030a0c:	5e                   	pop    %esi
c0030a0d:	5d                   	pop    %ebp
c0030a0e:	c3                   	ret    

c0030a0f <sbrk>:
c0030a0f:	55                   	push   %ebp
c0030a10:	89 e5                	mov    %esp,%ebp
c0030a12:	53                   	push   %ebx
c0030a13:	83 ec 04             	sub    $0x4,%esp
c0030a16:	e8 62 f8 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030a1b:	05 e5 c5 00 00       	add    $0xc5e5,%eax
c0030a20:	83 ec 0c             	sub    $0xc,%esp
c0030a23:	8d 90 e8 c0 ff ff    	lea    -0x3f18(%eax),%edx
c0030a29:	52                   	push   %edx
c0030a2a:	8d 90 48 c1 ff ff    	lea    -0x3eb8(%eax),%edx
c0030a30:	52                   	push   %edx
c0030a31:	6a 09                	push   $0x9
c0030a33:	8d 90 ea c0 ff ff    	lea    -0x3f16(%eax),%edx
c0030a39:	52                   	push   %edx
c0030a3a:	8d 90 fc c0 ff ff    	lea    -0x3f04(%eax),%edx
c0030a40:	52                   	push   %edx
c0030a41:	89 c3                	mov    %eax,%ebx
c0030a43:	e8 9b 00 00 00       	call   c0030ae3 <printk>
c0030a48:	83 c4 20             	add    $0x20,%esp
c0030a4b:	b8 01 00 00 00       	mov    $0x1,%eax
c0030a50:	82                   	nemu_trap 
c0030a51:	b8 00 00 00 00       	mov    $0x0,%eax
c0030a56:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a59:	c9                   	leave  
c0030a5a:	c3                   	ret    

c0030a5b <in_byte>:
c0030a5b:	55                   	push   %ebp
c0030a5c:	89 e5                	mov    %esp,%ebp
c0030a5e:	83 ec 14             	sub    $0x14,%esp
c0030a61:	e8 17 f8 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030a66:	05 9a c5 00 00       	add    $0xc59a,%eax
c0030a6b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a6e:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030a72:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030a75:	89 c2                	mov    %eax,%edx
c0030a77:	ec                   	in     (%dx),%al
c0030a78:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030a7b:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030a7e:	c9                   	leave  
c0030a7f:	c3                   	ret    

c0030a80 <init_serial>:
c0030a80:	55                   	push   %ebp
c0030a81:	89 e5                	mov    %esp,%ebp
c0030a83:	e8 f5 f7 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030a88:	05 78 c5 00 00       	add    $0xc578,%eax
c0030a8d:	90                   	nop
c0030a8e:	5d                   	pop    %ebp
c0030a8f:	c3                   	ret    

c0030a90 <serial_idle>:
c0030a90:	55                   	push   %ebp
c0030a91:	89 e5                	mov    %esp,%ebp
c0030a93:	e8 e5 f7 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030a98:	05 68 c5 00 00       	add    $0xc568,%eax
c0030a9d:	68 fd 03 00 00       	push   $0x3fd
c0030aa2:	e8 b4 ff ff ff       	call   c0030a5b <in_byte>
c0030aa7:	83 c4 04             	add    $0x4,%esp
c0030aaa:	0f b6 c0             	movzbl %al,%eax
c0030aad:	83 e0 20             	and    $0x20,%eax
c0030ab0:	85 c0                	test   %eax,%eax
c0030ab2:	0f 95 c0             	setne  %al
c0030ab5:	0f b6 c0             	movzbl %al,%eax
c0030ab8:	c9                   	leave  
c0030ab9:	c3                   	ret    

c0030aba <serial_printc>:
c0030aba:	55                   	push   %ebp
c0030abb:	89 e5                	mov    %esp,%ebp
c0030abd:	83 ec 04             	sub    $0x4,%esp
c0030ac0:	e8 b8 f7 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030ac5:	05 3b c5 00 00       	add    $0xc53b,%eax
c0030aca:	8b 45 08             	mov    0x8(%ebp),%eax
c0030acd:	88 45 fc             	mov    %al,-0x4(%ebp)
c0030ad0:	90                   	nop
c0030ad1:	e8 ba ff ff ff       	call   c0030a90 <serial_idle>
c0030ad6:	85 c0                	test   %eax,%eax
c0030ad8:	74 f7                	je     c0030ad1 <serial_printc+0x17>
c0030ada:	b8 01 00 00 00       	mov    $0x1,%eax
c0030adf:	82                   	nemu_trap 
c0030ae0:	90                   	nop
c0030ae1:	c9                   	leave  
c0030ae2:	c3                   	ret    

c0030ae3 <printk>:
c0030ae3:	55                   	push   %ebp
c0030ae4:	89 e5                	mov    %esp,%ebp
c0030ae6:	53                   	push   %ebx
c0030ae7:	83 ec 14             	sub    $0x14,%esp
c0030aea:	e8 73 f6 ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c0030aef:	81 c3 11 c5 00 00    	add    $0xc511,%ebx
c0030af5:	8d 45 0c             	lea    0xc(%ebp),%eax
c0030af8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030afb:	8b 45 08             	mov    0x8(%ebp),%eax
c0030afe:	ff 75 f4             	pushl  -0xc(%ebp)
c0030b01:	50                   	push   %eax
c0030b02:	68 00 01 00 00       	push   $0x100
c0030b07:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030b0d:	50                   	push   %eax
c0030b0e:	e8 6d 14 00 00       	call   c0031f80 <vsnprintf>
c0030b13:	83 c4 10             	add    $0x10,%esp
c0030b16:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030b19:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030b1c:	83 ec 04             	sub    $0x4,%esp
c0030b1f:	50                   	push   %eax
c0030b20:	8d 83 20 14 01 00    	lea    0x11420(%ebx),%eax
c0030b26:	50                   	push   %eax
c0030b27:	6a 01                	push   $0x1
c0030b29:	e8 b1 07 00 00       	call   c00312df <fs_write>
c0030b2e:	83 c4 10             	add    $0x10,%esp
c0030b31:	90                   	nop
c0030b32:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b35:	c9                   	leave  
c0030b36:	c3                   	ret    

c0030b37 <add_irq_handle>:
c0030b37:	55                   	push   %ebp
c0030b38:	89 e5                	mov    %esp,%ebp
c0030b3a:	53                   	push   %ebx
c0030b3b:	83 ec 14             	sub    $0x14,%esp
c0030b3e:	e8 1f f6 ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c0030b43:	81 c3 bd c4 00 00    	add    $0xc4bd,%ebx
c0030b49:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c0030b4d:	7e 2f                	jle    c0030b7e <add_irq_handle+0x47>
c0030b4f:	83 ec 0c             	sub    $0xc,%esp
c0030b52:	8d 83 50 c1 ff ff    	lea    -0x3eb0(%ebx),%eax
c0030b58:	50                   	push   %eax
c0030b59:	8d 83 3c c3 ff ff    	lea    -0x3cc4(%ebx),%eax
c0030b5f:	50                   	push   %eax
c0030b60:	6a 17                	push   $0x17
c0030b62:	8d 83 63 c1 ff ff    	lea    -0x3e9d(%ebx),%eax
c0030b68:	50                   	push   %eax
c0030b69:	8d 83 78 c1 ff ff    	lea    -0x3e88(%ebx),%eax
c0030b6f:	50                   	push   %eax
c0030b70:	e8 6e ff ff ff       	call   c0030ae3 <printk>
c0030b75:	83 c4 20             	add    $0x20,%esp
c0030b78:	b8 01 00 00 00       	mov    $0x1,%eax
c0030b7d:	82                   	nemu_trap 
c0030b7e:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
c0030b84:	83 f8 20             	cmp    $0x20,%eax
c0030b87:	7e 2f                	jle    c0030bb8 <add_irq_handle+0x81>
c0030b89:	83 ec 0c             	sub    $0xc,%esp
c0030b8c:	8d 83 c2 c1 ff ff    	lea    -0x3e3e(%ebx),%eax
c0030b92:	50                   	push   %eax
c0030b93:	8d 83 3c c3 ff ff    	lea    -0x3cc4(%ebx),%eax
c0030b99:	50                   	push   %eax
c0030b9a:	6a 18                	push   $0x18
c0030b9c:	8d 83 63 c1 ff ff    	lea    -0x3e9d(%ebx),%eax
c0030ba2:	50                   	push   %eax
c0030ba3:	8d 83 78 c1 ff ff    	lea    -0x3e88(%ebx),%eax
c0030ba9:	50                   	push   %eax
c0030baa:	e8 34 ff ff ff       	call   c0030ae3 <printk>
c0030baf:	83 c4 20             	add    $0x20,%esp
c0030bb2:	b8 01 00 00 00       	mov    $0x1,%eax
c0030bb7:	82                   	nemu_trap 
c0030bb8:	8b 83 60 16 01 00    	mov    0x11660(%ebx),%eax
c0030bbe:	8d 50 01             	lea    0x1(%eax),%edx
c0030bc1:	89 93 60 16 01 00    	mov    %edx,0x11660(%ebx)
c0030bc7:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c0030bce:	8d 83 20 15 01 00    	lea    0x11520(%ebx),%eax
c0030bd4:	01 d0                	add    %edx,%eax
c0030bd6:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030bd9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030bdc:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030bdf:	89 10                	mov    %edx,(%eax)
c0030be1:	8b 45 08             	mov    0x8(%ebp),%eax
c0030be4:	8b 94 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%edx
c0030beb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030bee:	89 50 04             	mov    %edx,0x4(%eax)
c0030bf1:	8b 45 08             	mov    0x8(%ebp),%eax
c0030bf4:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030bf7:	89 94 83 20 16 01 00 	mov    %edx,0x11620(%ebx,%eax,4)
c0030bfe:	90                   	nop
c0030bff:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030c02:	c9                   	leave  
c0030c03:	c3                   	ret    

c0030c04 <irq_handle>:
c0030c04:	55                   	push   %ebp
c0030c05:	89 e5                	mov    %esp,%ebp
c0030c07:	53                   	push   %ebx
c0030c08:	83 ec 14             	sub    $0x14,%esp
c0030c0b:	e8 52 f5 ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c0030c10:	81 c3 f0 c3 00 00    	add    $0xc3f0,%ebx
c0030c16:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c19:	8b 40 20             	mov    0x20(%eax),%eax
c0030c1c:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030c1f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c0030c23:	79 2a                	jns    c0030c4f <irq_handle+0x4b>
c0030c25:	8d 83 4c c3 ff ff    	lea    -0x3cb4(%ebx),%eax
c0030c2b:	50                   	push   %eax
c0030c2c:	6a 27                	push   $0x27
c0030c2e:	8d 83 63 c1 ff ff    	lea    -0x3e9d(%ebx),%eax
c0030c34:	50                   	push   %eax
c0030c35:	8d 83 e0 c1 ff ff    	lea    -0x3e20(%ebx),%eax
c0030c3b:	50                   	push   %eax
c0030c3c:	e8 a2 fe ff ff       	call   c0030ae3 <printk>
c0030c41:	83 c4 10             	add    $0x10,%esp
c0030c44:	b8 01 00 00 00       	mov    $0x1,%eax
c0030c49:	82                   	nemu_trap 
c0030c4a:	e9 f9 00 00 00       	jmp    c0030d48 <irq_handle+0x144>
c0030c4f:	81 7d f0 80 00 00 00 	cmpl   $0x80,-0x10(%ebp)
c0030c56:	75 13                	jne    c0030c6b <irq_handle+0x67>
c0030c58:	83 ec 0c             	sub    $0xc,%esp
c0030c5b:	ff 75 08             	pushl  0x8(%ebp)
c0030c5e:	e8 f3 08 00 00       	call   c0031556 <do_syscall>
c0030c63:	83 c4 10             	add    $0x10,%esp
c0030c66:	e9 dd 00 00 00       	jmp    c0030d48 <irq_handle+0x144>
c0030c6b:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030c72:	7f 37                	jg     c0030cab <irq_handle+0xa7>
c0030c74:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c77:	8b 40 28             	mov    0x28(%eax),%eax
c0030c7a:	83 ec 08             	sub    $0x8,%esp
c0030c7d:	50                   	push   %eax
c0030c7e:	ff 75 f0             	pushl  -0x10(%ebp)
c0030c81:	8d 83 4c c3 ff ff    	lea    -0x3cb4(%ebx),%eax
c0030c87:	50                   	push   %eax
c0030c88:	6a 2f                	push   $0x2f
c0030c8a:	8d 83 63 c1 ff ff    	lea    -0x3e9d(%ebx),%eax
c0030c90:	50                   	push   %eax
c0030c91:	8d 83 2c c2 ff ff    	lea    -0x3dd4(%ebx),%eax
c0030c97:	50                   	push   %eax
c0030c98:	e8 46 fe ff ff       	call   c0030ae3 <printk>
c0030c9d:	83 c4 20             	add    $0x20,%esp
c0030ca0:	b8 01 00 00 00       	mov    $0x1,%eax
c0030ca5:	82                   	nemu_trap 
c0030ca6:	e9 9d 00 00 00       	jmp    c0030d48 <irq_handle+0x144>
c0030cab:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030cb2:	0f 8e 90 00 00 00    	jle    c0030d48 <irq_handle+0x144>
c0030cb8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030cbb:	2d e8 03 00 00       	sub    $0x3e8,%eax
c0030cc0:	89 45 ec             	mov    %eax,-0x14(%ebp)
c0030cc3:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c0030cc7:	7e 2f                	jle    c0030cf8 <irq_handle+0xf4>
c0030cc9:	83 ec 0c             	sub    $0xc,%esp
c0030ccc:	8d 83 86 c2 ff ff    	lea    -0x3d7a(%ebx),%eax
c0030cd2:	50                   	push   %eax
c0030cd3:	8d 83 4c c3 ff ff    	lea    -0x3cb4(%ebx),%eax
c0030cd9:	50                   	push   %eax
c0030cda:	6a 34                	push   $0x34
c0030cdc:	8d 83 63 c1 ff ff    	lea    -0x3e9d(%ebx),%eax
c0030ce2:	50                   	push   %eax
c0030ce3:	8d 83 78 c1 ff ff    	lea    -0x3e88(%ebx),%eax
c0030ce9:	50                   	push   %eax
c0030cea:	e8 f4 fd ff ff       	call   c0030ae3 <printk>
c0030cef:	83 c4 20             	add    $0x20,%esp
c0030cf2:	b8 01 00 00 00       	mov    $0x1,%eax
c0030cf7:	82                   	nemu_trap 
c0030cf8:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
c0030cfc:	75 25                	jne    c0030d23 <irq_handle+0x11f>
c0030cfe:	8d 83 4c c3 ff ff    	lea    -0x3cb4(%ebx),%eax
c0030d04:	50                   	push   %eax
c0030d05:	6a 36                	push   $0x36
c0030d07:	8d 83 63 c1 ff ff    	lea    -0x3e9d(%ebx),%eax
c0030d0d:	50                   	push   %eax
c0030d0e:	8d 83 9c c2 ff ff    	lea    -0x3d64(%ebx),%eax
c0030d14:	50                   	push   %eax
c0030d15:	e8 c9 fd ff ff       	call   c0030ae3 <printk>
c0030d1a:	83 c4 10             	add    $0x10,%esp
c0030d1d:	b8 01 00 00 00       	mov    $0x1,%eax
c0030d22:	82                   	nemu_trap 
c0030d23:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030d26:	8b 84 83 20 16 01 00 	mov    0x11620(%ebx,%eax,4),%eax
c0030d2d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030d30:	eb 10                	jmp    c0030d42 <irq_handle+0x13e>
c0030d32:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d35:	8b 00                	mov    (%eax),%eax
c0030d37:	ff d0                	call   *%eax
c0030d39:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030d3c:	8b 40 04             	mov    0x4(%eax),%eax
c0030d3f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030d42:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c0030d46:	75 ea                	jne    c0030d32 <irq_handle+0x12e>
c0030d48:	90                   	nop
c0030d49:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030d4c:	c9                   	leave  
c0030d4d:	c3                   	ret    

c0030d4e <out_byte>:
c0030d4e:	55                   	push   %ebp
c0030d4f:	89 e5                	mov    %esp,%ebp
c0030d51:	83 ec 08             	sub    $0x8,%esp
c0030d54:	e8 24 f5 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030d59:	05 a7 c2 00 00       	add    $0xc2a7,%eax
c0030d5e:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d61:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030d64:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030d68:	88 d0                	mov    %dl,%al
c0030d6a:	88 45 f8             	mov    %al,-0x8(%ebp)
c0030d6d:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030d70:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030d73:	ee                   	out    %al,(%dx)
c0030d74:	90                   	nop
c0030d75:	c9                   	leave  
c0030d76:	c3                   	ret    

c0030d77 <init_i8259>:
c0030d77:	55                   	push   %ebp
c0030d78:	89 e5                	mov    %esp,%ebp
c0030d7a:	e8 fe f4 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030d7f:	05 81 c2 00 00       	add    $0xc281,%eax
c0030d84:	68 ff 00 00 00       	push   $0xff
c0030d89:	6a 21                	push   $0x21
c0030d8b:	e8 be ff ff ff       	call   c0030d4e <out_byte>
c0030d90:	83 c4 08             	add    $0x8,%esp
c0030d93:	68 ff 00 00 00       	push   $0xff
c0030d98:	68 a1 00 00 00       	push   $0xa1
c0030d9d:	e8 ac ff ff ff       	call   c0030d4e <out_byte>
c0030da2:	83 c4 08             	add    $0x8,%esp
c0030da5:	6a 11                	push   $0x11
c0030da7:	6a 20                	push   $0x20
c0030da9:	e8 a0 ff ff ff       	call   c0030d4e <out_byte>
c0030dae:	83 c4 08             	add    $0x8,%esp
c0030db1:	6a 20                	push   $0x20
c0030db3:	6a 21                	push   $0x21
c0030db5:	e8 94 ff ff ff       	call   c0030d4e <out_byte>
c0030dba:	83 c4 08             	add    $0x8,%esp
c0030dbd:	6a 04                	push   $0x4
c0030dbf:	6a 21                	push   $0x21
c0030dc1:	e8 88 ff ff ff       	call   c0030d4e <out_byte>
c0030dc6:	83 c4 08             	add    $0x8,%esp
c0030dc9:	6a 03                	push   $0x3
c0030dcb:	6a 21                	push   $0x21
c0030dcd:	e8 7c ff ff ff       	call   c0030d4e <out_byte>
c0030dd2:	83 c4 08             	add    $0x8,%esp
c0030dd5:	6a 11                	push   $0x11
c0030dd7:	68 a0 00 00 00       	push   $0xa0
c0030ddc:	e8 6d ff ff ff       	call   c0030d4e <out_byte>
c0030de1:	83 c4 08             	add    $0x8,%esp
c0030de4:	6a 28                	push   $0x28
c0030de6:	68 a1 00 00 00       	push   $0xa1
c0030deb:	e8 5e ff ff ff       	call   c0030d4e <out_byte>
c0030df0:	83 c4 08             	add    $0x8,%esp
c0030df3:	6a 02                	push   $0x2
c0030df5:	68 a1 00 00 00       	push   $0xa1
c0030dfa:	e8 4f ff ff ff       	call   c0030d4e <out_byte>
c0030dff:	83 c4 08             	add    $0x8,%esp
c0030e02:	6a 03                	push   $0x3
c0030e04:	68 a1 00 00 00       	push   $0xa1
c0030e09:	e8 40 ff ff ff       	call   c0030d4e <out_byte>
c0030e0e:	83 c4 08             	add    $0x8,%esp
c0030e11:	6a 68                	push   $0x68
c0030e13:	6a 20                	push   $0x20
c0030e15:	e8 34 ff ff ff       	call   c0030d4e <out_byte>
c0030e1a:	83 c4 08             	add    $0x8,%esp
c0030e1d:	6a 0a                	push   $0xa
c0030e1f:	6a 20                	push   $0x20
c0030e21:	e8 28 ff ff ff       	call   c0030d4e <out_byte>
c0030e26:	83 c4 08             	add    $0x8,%esp
c0030e29:	6a 68                	push   $0x68
c0030e2b:	68 a0 00 00 00       	push   $0xa0
c0030e30:	e8 19 ff ff ff       	call   c0030d4e <out_byte>
c0030e35:	83 c4 08             	add    $0x8,%esp
c0030e38:	6a 0a                	push   $0xa
c0030e3a:	68 a0 00 00 00       	push   $0xa0
c0030e3f:	e8 0a ff ff ff       	call   c0030d4e <out_byte>
c0030e44:	83 c4 08             	add    $0x8,%esp
c0030e47:	90                   	nop
c0030e48:	c9                   	leave  
c0030e49:	c3                   	ret    

c0030e4a <write_idtr>:
c0030e4a:	55                   	push   %ebp
c0030e4b:	89 e5                	mov    %esp,%ebp
c0030e4d:	e8 2b f4 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030e52:	05 ae c1 00 00       	add    $0xc1ae,%eax
c0030e57:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030e5a:	4a                   	dec    %edx
c0030e5b:	66 89 90 80 1e 01 00 	mov    %dx,0x11e80(%eax)
c0030e62:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e65:	66 89 90 82 1e 01 00 	mov    %dx,0x11e82(%eax)
c0030e6c:	8b 55 08             	mov    0x8(%ebp),%edx
c0030e6f:	c1 ea 10             	shr    $0x10,%edx
c0030e72:	66 89 90 84 1e 01 00 	mov    %dx,0x11e84(%eax)
c0030e79:	8d 80 80 1e 01 00    	lea    0x11e80(%eax),%eax
c0030e7f:	0f 01 18             	lidtl  (%eax)
c0030e82:	90                   	nop
c0030e83:	5d                   	pop    %ebp
c0030e84:	c3                   	ret    

c0030e85 <sti>:
c0030e85:	55                   	push   %ebp
c0030e86:	89 e5                	mov    %esp,%ebp
c0030e88:	e8 f0 f3 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030e8d:	05 73 c1 00 00       	add    $0xc173,%eax
c0030e92:	fb                   	sti    
c0030e93:	90                   	nop
c0030e94:	5d                   	pop    %ebp
c0030e95:	c3                   	ret    

c0030e96 <set_intr>:
c0030e96:	55                   	push   %ebp
c0030e97:	89 e5                	mov    %esp,%ebp
c0030e99:	e8 df f3 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030e9e:	05 62 c1 00 00       	add    $0xc162,%eax
c0030ea3:	8b 45 10             	mov    0x10(%ebp),%eax
c0030ea6:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ea9:	66 89 02             	mov    %ax,(%edx)
c0030eac:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030eaf:	8b 55 08             	mov    0x8(%ebp),%edx
c0030eb2:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030eb6:	8b 45 08             	mov    0x8(%ebp),%eax
c0030eb9:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030ebd:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ec0:	8a 50 05             	mov    0x5(%eax),%dl
c0030ec3:	83 e2 f0             	and    $0xfffffff0,%edx
c0030ec6:	83 ca 0e             	or     $0xe,%edx
c0030ec9:	88 50 05             	mov    %dl,0x5(%eax)
c0030ecc:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ecf:	8a 50 05             	mov    0x5(%eax),%dl
c0030ed2:	83 e2 ef             	and    $0xffffffef,%edx
c0030ed5:	88 50 05             	mov    %dl,0x5(%eax)
c0030ed8:	8b 45 14             	mov    0x14(%ebp),%eax
c0030edb:	88 c2                	mov    %al,%dl
c0030edd:	83 e2 03             	and    $0x3,%edx
c0030ee0:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ee3:	83 e2 03             	and    $0x3,%edx
c0030ee6:	88 d1                	mov    %dl,%cl
c0030ee8:	c1 e1 05             	shl    $0x5,%ecx
c0030eeb:	8a 50 05             	mov    0x5(%eax),%dl
c0030eee:	83 e2 9f             	and    $0xffffff9f,%edx
c0030ef1:	09 ca                	or     %ecx,%edx
c0030ef3:	88 50 05             	mov    %dl,0x5(%eax)
c0030ef6:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ef9:	8a 50 05             	mov    0x5(%eax),%dl
c0030efc:	83 ca 80             	or     $0xffffff80,%edx
c0030eff:	88 50 05             	mov    %dl,0x5(%eax)
c0030f02:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f05:	c1 e8 10             	shr    $0x10,%eax
c0030f08:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f0b:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030f0f:	90                   	nop
c0030f10:	5d                   	pop    %ebp
c0030f11:	c3                   	ret    

c0030f12 <set_trap>:
c0030f12:	55                   	push   %ebp
c0030f13:	89 e5                	mov    %esp,%ebp
c0030f15:	e8 63 f3 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0030f1a:	05 e6 c0 00 00       	add    $0xc0e6,%eax
c0030f1f:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f22:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f25:	66 89 02             	mov    %ax,(%edx)
c0030f28:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030f2b:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f2e:	66 89 42 02          	mov    %ax,0x2(%edx)
c0030f32:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f35:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030f39:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f3c:	8a 50 05             	mov    0x5(%eax),%dl
c0030f3f:	83 ca 0f             	or     $0xf,%edx
c0030f42:	88 50 05             	mov    %dl,0x5(%eax)
c0030f45:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f48:	8a 50 05             	mov    0x5(%eax),%dl
c0030f4b:	83 e2 ef             	and    $0xffffffef,%edx
c0030f4e:	88 50 05             	mov    %dl,0x5(%eax)
c0030f51:	8b 45 14             	mov    0x14(%ebp),%eax
c0030f54:	88 c2                	mov    %al,%dl
c0030f56:	83 e2 03             	and    $0x3,%edx
c0030f59:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f5c:	83 e2 03             	and    $0x3,%edx
c0030f5f:	88 d1                	mov    %dl,%cl
c0030f61:	c1 e1 05             	shl    $0x5,%ecx
c0030f64:	8a 50 05             	mov    0x5(%eax),%dl
c0030f67:	83 e2 9f             	and    $0xffffff9f,%edx
c0030f6a:	09 ca                	or     %ecx,%edx
c0030f6c:	88 50 05             	mov    %dl,0x5(%eax)
c0030f6f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f72:	8a 50 05             	mov    0x5(%eax),%dl
c0030f75:	83 ca 80             	or     $0xffffff80,%edx
c0030f78:	88 50 05             	mov    %dl,0x5(%eax)
c0030f7b:	8b 45 10             	mov    0x10(%ebp),%eax
c0030f7e:	c1 e8 10             	shr    $0x10,%eax
c0030f81:	8b 55 08             	mov    0x8(%ebp),%edx
c0030f84:	66 89 42 06          	mov    %ax,0x6(%edx)
c0030f88:	90                   	nop
c0030f89:	5d                   	pop    %ebp
c0030f8a:	c3                   	ret    

c0030f8b <init_idt>:
c0030f8b:	55                   	push   %ebp
c0030f8c:	89 e5                	mov    %esp,%ebp
c0030f8e:	53                   	push   %ebx
c0030f8f:	83 ec 10             	sub    $0x10,%esp
c0030f92:	e8 cb f1 ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c0030f97:	81 c3 69 c0 00 00    	add    $0xc069,%ebx
c0030f9d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030fa4:	eb 2b                	jmp    c0030fd1 <init_idt+0x46>
c0030fa6:	c7 c0 cd 00 03 c0    	mov    $0xc00300cd,%eax
c0030fac:	89 c2                	mov    %eax,%edx
c0030fae:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030fb1:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c0030fb8:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0030fbe:	01 c8                	add    %ecx,%eax
c0030fc0:	6a 00                	push   $0x0
c0030fc2:	52                   	push   %edx
c0030fc3:	6a 08                	push   $0x8
c0030fc5:	50                   	push   %eax
c0030fc6:	e8 47 ff ff ff       	call   c0030f12 <set_trap>
c0030fcb:	83 c4 10             	add    $0x10,%esp
c0030fce:	ff 45 f8             	incl   -0x8(%ebp)
c0030fd1:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c0030fd8:	7e cc                	jle    c0030fa6 <init_idt+0x1b>
c0030fda:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030fe0:	6a 00                	push   $0x0
c0030fe2:	50                   	push   %eax
c0030fe3:	6a 08                	push   $0x8
c0030fe5:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0030feb:	50                   	push   %eax
c0030fec:	e8 21 ff ff ff       	call   c0030f12 <set_trap>
c0030ff1:	83 c4 10             	add    $0x10,%esp
c0030ff4:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c0030ffa:	89 c2                	mov    %eax,%edx
c0030ffc:	8d 83 88 16 01 00    	lea    0x11688(%ebx),%eax
c0031002:	6a 00                	push   $0x0
c0031004:	52                   	push   %edx
c0031005:	6a 08                	push   $0x8
c0031007:	50                   	push   %eax
c0031008:	e8 05 ff ff ff       	call   c0030f12 <set_trap>
c003100d:	83 c4 10             	add    $0x10,%esp
c0031010:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c0031016:	89 c2                	mov    %eax,%edx
c0031018:	8d 83 90 16 01 00    	lea    0x11690(%ebx),%eax
c003101e:	6a 00                	push   $0x0
c0031020:	52                   	push   %edx
c0031021:	6a 08                	push   $0x8
c0031023:	50                   	push   %eax
c0031024:	e8 e9 fe ff ff       	call   c0030f12 <set_trap>
c0031029:	83 c4 10             	add    $0x10,%esp
c003102c:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c0031032:	89 c2                	mov    %eax,%edx
c0031034:	8d 83 98 16 01 00    	lea    0x11698(%ebx),%eax
c003103a:	6a 00                	push   $0x0
c003103c:	52                   	push   %edx
c003103d:	6a 08                	push   $0x8
c003103f:	50                   	push   %eax
c0031040:	e8 cd fe ff ff       	call   c0030f12 <set_trap>
c0031045:	83 c4 10             	add    $0x10,%esp
c0031048:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c003104e:	89 c2                	mov    %eax,%edx
c0031050:	8d 83 a0 16 01 00    	lea    0x116a0(%ebx),%eax
c0031056:	6a 00                	push   $0x0
c0031058:	52                   	push   %edx
c0031059:	6a 08                	push   $0x8
c003105b:	50                   	push   %eax
c003105c:	e8 b1 fe ff ff       	call   c0030f12 <set_trap>
c0031061:	83 c4 10             	add    $0x10,%esp
c0031064:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c003106a:	89 c2                	mov    %eax,%edx
c003106c:	8d 83 a8 16 01 00    	lea    0x116a8(%ebx),%eax
c0031072:	6a 00                	push   $0x0
c0031074:	52                   	push   %edx
c0031075:	6a 08                	push   $0x8
c0031077:	50                   	push   %eax
c0031078:	e8 95 fe ff ff       	call   c0030f12 <set_trap>
c003107d:	83 c4 10             	add    $0x10,%esp
c0031080:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c0031086:	89 c2                	mov    %eax,%edx
c0031088:	8d 83 b0 16 01 00    	lea    0x116b0(%ebx),%eax
c003108e:	6a 00                	push   $0x0
c0031090:	52                   	push   %edx
c0031091:	6a 08                	push   $0x8
c0031093:	50                   	push   %eax
c0031094:	e8 79 fe ff ff       	call   c0030f12 <set_trap>
c0031099:	83 c4 10             	add    $0x10,%esp
c003109c:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c00310a2:	89 c2                	mov    %eax,%edx
c00310a4:	8d 83 b8 16 01 00    	lea    0x116b8(%ebx),%eax
c00310aa:	6a 00                	push   $0x0
c00310ac:	52                   	push   %edx
c00310ad:	6a 08                	push   $0x8
c00310af:	50                   	push   %eax
c00310b0:	e8 5d fe ff ff       	call   c0030f12 <set_trap>
c00310b5:	83 c4 10             	add    $0x10,%esp
c00310b8:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c00310be:	89 c2                	mov    %eax,%edx
c00310c0:	8d 83 c0 16 01 00    	lea    0x116c0(%ebx),%eax
c00310c6:	6a 00                	push   $0x0
c00310c8:	52                   	push   %edx
c00310c9:	6a 08                	push   $0x8
c00310cb:	50                   	push   %eax
c00310cc:	e8 41 fe ff ff       	call   c0030f12 <set_trap>
c00310d1:	83 c4 10             	add    $0x10,%esp
c00310d4:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c00310da:	89 c2                	mov    %eax,%edx
c00310dc:	8d 83 c8 16 01 00    	lea    0x116c8(%ebx),%eax
c00310e2:	6a 00                	push   $0x0
c00310e4:	52                   	push   %edx
c00310e5:	6a 08                	push   $0x8
c00310e7:	50                   	push   %eax
c00310e8:	e8 25 fe ff ff       	call   c0030f12 <set_trap>
c00310ed:	83 c4 10             	add    $0x10,%esp
c00310f0:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c00310f6:	89 c2                	mov    %eax,%edx
c00310f8:	8d 83 d0 16 01 00    	lea    0x116d0(%ebx),%eax
c00310fe:	6a 00                	push   $0x0
c0031100:	52                   	push   %edx
c0031101:	6a 08                	push   $0x8
c0031103:	50                   	push   %eax
c0031104:	e8 09 fe ff ff       	call   c0030f12 <set_trap>
c0031109:	83 c4 10             	add    $0x10,%esp
c003110c:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c0031112:	89 c2                	mov    %eax,%edx
c0031114:	8d 83 d8 16 01 00    	lea    0x116d8(%ebx),%eax
c003111a:	6a 00                	push   $0x0
c003111c:	52                   	push   %edx
c003111d:	6a 08                	push   $0x8
c003111f:	50                   	push   %eax
c0031120:	e8 ed fd ff ff       	call   c0030f12 <set_trap>
c0031125:	83 c4 10             	add    $0x10,%esp
c0031128:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c003112e:	89 c2                	mov    %eax,%edx
c0031130:	8d 83 e0 16 01 00    	lea    0x116e0(%ebx),%eax
c0031136:	6a 00                	push   $0x0
c0031138:	52                   	push   %edx
c0031139:	6a 08                	push   $0x8
c003113b:	50                   	push   %eax
c003113c:	e8 d1 fd ff ff       	call   c0030f12 <set_trap>
c0031141:	83 c4 10             	add    $0x10,%esp
c0031144:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c003114a:	89 c2                	mov    %eax,%edx
c003114c:	8d 83 e8 16 01 00    	lea    0x116e8(%ebx),%eax
c0031152:	6a 00                	push   $0x0
c0031154:	52                   	push   %edx
c0031155:	6a 08                	push   $0x8
c0031157:	50                   	push   %eax
c0031158:	e8 b5 fd ff ff       	call   c0030f12 <set_trap>
c003115d:	83 c4 10             	add    $0x10,%esp
c0031160:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c0031166:	89 c2                	mov    %eax,%edx
c0031168:	8d 83 f0 16 01 00    	lea    0x116f0(%ebx),%eax
c003116e:	6a 00                	push   $0x0
c0031170:	52                   	push   %edx
c0031171:	6a 08                	push   $0x8
c0031173:	50                   	push   %eax
c0031174:	e8 99 fd ff ff       	call   c0030f12 <set_trap>
c0031179:	83 c4 10             	add    $0x10,%esp
c003117c:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0031182:	89 c2                	mov    %eax,%edx
c0031184:	8d 83 80 1a 01 00    	lea    0x11a80(%ebx),%eax
c003118a:	6a 03                	push   $0x3
c003118c:	52                   	push   %edx
c003118d:	6a 08                	push   $0x8
c003118f:	50                   	push   %eax
c0031190:	e8 7d fd ff ff       	call   c0030f12 <set_trap>
c0031195:	83 c4 10             	add    $0x10,%esp
c0031198:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c003119e:	89 c2                	mov    %eax,%edx
c00311a0:	8d 83 80 17 01 00    	lea    0x11780(%ebx),%eax
c00311a6:	6a 00                	push   $0x0
c00311a8:	52                   	push   %edx
c00311a9:	6a 08                	push   $0x8
c00311ab:	50                   	push   %eax
c00311ac:	e8 e5 fc ff ff       	call   c0030e96 <set_intr>
c00311b1:	83 c4 10             	add    $0x10,%esp
c00311b4:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c00311ba:	89 c2                	mov    %eax,%edx
c00311bc:	8d 83 88 17 01 00    	lea    0x11788(%ebx),%eax
c00311c2:	6a 00                	push   $0x0
c00311c4:	52                   	push   %edx
c00311c5:	6a 08                	push   $0x8
c00311c7:	50                   	push   %eax
c00311c8:	e8 c9 fc ff ff       	call   c0030e96 <set_intr>
c00311cd:	83 c4 10             	add    $0x10,%esp
c00311d0:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c00311d6:	89 c2                	mov    %eax,%edx
c00311d8:	8d 83 90 17 01 00    	lea    0x11790(%ebx),%eax
c00311de:	6a 00                	push   $0x0
c00311e0:	52                   	push   %edx
c00311e1:	6a 08                	push   $0x8
c00311e3:	50                   	push   %eax
c00311e4:	e8 ad fc ff ff       	call   c0030e96 <set_intr>
c00311e9:	83 c4 10             	add    $0x10,%esp
c00311ec:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c00311f2:	89 c2                	mov    %eax,%edx
c00311f4:	8d 83 f0 17 01 00    	lea    0x117f0(%ebx),%eax
c00311fa:	6a 00                	push   $0x0
c00311fc:	52                   	push   %edx
c00311fd:	6a 08                	push   $0x8
c00311ff:	50                   	push   %eax
c0031200:	e8 91 fc ff ff       	call   c0030e96 <set_intr>
c0031205:	83 c4 10             	add    $0x10,%esp
c0031208:	68 00 08 00 00       	push   $0x800
c003120d:	8d 83 80 16 01 00    	lea    0x11680(%ebx),%eax
c0031213:	50                   	push   %eax
c0031214:	e8 31 fc ff ff       	call   c0030e4a <write_idtr>
c0031219:	83 c4 08             	add    $0x8,%esp
c003121c:	e8 64 fc ff ff       	call   c0030e85 <sti>
c0031221:	90                   	nop
c0031222:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031225:	c9                   	leave  
c0031226:	c3                   	ret    

c0031227 <fs_open>:
c0031227:	55                   	push   %ebp
c0031228:	89 e5                	mov    %esp,%ebp
c003122a:	53                   	push   %ebx
c003122b:	83 ec 04             	sub    $0x4,%esp
c003122e:	e8 4a f0 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0031233:	05 cd bd 00 00       	add    $0xbdcd,%eax
c0031238:	8d 90 f4 c5 ff ff    	lea    -0x3a0c(%eax),%edx
c003123e:	52                   	push   %edx
c003123f:	6a 28                	push   $0x28
c0031241:	8d 90 2b c4 ff ff    	lea    -0x3bd5(%eax),%edx
c0031247:	52                   	push   %edx
c0031248:	8d 90 38 c4 ff ff    	lea    -0x3bc8(%eax),%edx
c003124e:	52                   	push   %edx
c003124f:	89 c3                	mov    %eax,%ebx
c0031251:	e8 8d f8 ff ff       	call   c0030ae3 <printk>
c0031256:	83 c4 10             	add    $0x10,%esp
c0031259:	b8 01 00 00 00       	mov    $0x1,%eax
c003125e:	82                   	nemu_trap 
c003125f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031264:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031267:	c9                   	leave  
c0031268:	c3                   	ret    

c0031269 <fs_read>:
c0031269:	55                   	push   %ebp
c003126a:	89 e5                	mov    %esp,%ebp
c003126c:	53                   	push   %ebx
c003126d:	83 ec 04             	sub    $0x4,%esp
c0031270:	e8 ed ee ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c0031275:	81 c3 8b bd 00 00    	add    $0xbd8b,%ebx
c003127b:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c003127f:	7f 2f                	jg     c00312b0 <fs_read+0x47>
c0031281:	83 ec 0c             	sub    $0xc,%esp
c0031284:	8d 83 8e c4 ff ff    	lea    -0x3b72(%ebx),%eax
c003128a:	50                   	push   %eax
c003128b:	8d 83 fc c5 ff ff    	lea    -0x3a04(%ebx),%eax
c0031291:	50                   	push   %eax
c0031292:	6a 2e                	push   $0x2e
c0031294:	8d 83 2b c4 ff ff    	lea    -0x3bd5(%ebx),%eax
c003129a:	50                   	push   %eax
c003129b:	8d 83 98 c4 ff ff    	lea    -0x3b68(%ebx),%eax
c00312a1:	50                   	push   %eax
c00312a2:	e8 3c f8 ff ff       	call   c0030ae3 <printk>
c00312a7:	83 c4 20             	add    $0x20,%esp
c00312aa:	b8 01 00 00 00       	mov    $0x1,%eax
c00312af:	82                   	nemu_trap 
c00312b0:	8d 83 fc c5 ff ff    	lea    -0x3a04(%ebx),%eax
c00312b6:	50                   	push   %eax
c00312b7:	6a 2f                	push   $0x2f
c00312b9:	8d 83 2b c4 ff ff    	lea    -0x3bd5(%ebx),%eax
c00312bf:	50                   	push   %eax
c00312c0:	8d 83 e4 c4 ff ff    	lea    -0x3b1c(%ebx),%eax
c00312c6:	50                   	push   %eax
c00312c7:	e8 17 f8 ff ff       	call   c0030ae3 <printk>
c00312cc:	83 c4 10             	add    $0x10,%esp
c00312cf:	b8 01 00 00 00       	mov    $0x1,%eax
c00312d4:	82                   	nemu_trap 
c00312d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00312da:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00312dd:	c9                   	leave  
c00312de:	c3                   	ret    

c00312df <fs_write>:
c00312df:	55                   	push   %ebp
c00312e0:	89 e5                	mov    %esp,%ebp
c00312e2:	53                   	push   %ebx
c00312e3:	83 ec 04             	sub    $0x4,%esp
c00312e6:	e8 92 ef ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c00312eb:	05 15 bd 00 00       	add    $0xbd15,%eax
c00312f0:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c00312f4:	7e 31                	jle    c0031327 <fs_write+0x48>
c00312f6:	83 ec 0c             	sub    $0xc,%esp
c00312f9:	8d 90 3a c5 ff ff    	lea    -0x3ac6(%eax),%edx
c00312ff:	52                   	push   %edx
c0031300:	8d 90 04 c6 ff ff    	lea    -0x39fc(%eax),%edx
c0031306:	52                   	push   %edx
c0031307:	6a 35                	push   $0x35
c0031309:	8d 90 2b c4 ff ff    	lea    -0x3bd5(%eax),%edx
c003130f:	52                   	push   %edx
c0031310:	8d 90 98 c4 ff ff    	lea    -0x3b68(%eax),%edx
c0031316:	52                   	push   %edx
c0031317:	89 c3                	mov    %eax,%ebx
c0031319:	e8 c5 f7 ff ff       	call   c0030ae3 <printk>
c003131e:	83 c4 20             	add    $0x20,%esp
c0031321:	b8 01 00 00 00       	mov    $0x1,%eax
c0031326:	82                   	nemu_trap 
c0031327:	b8 04 00 00 00       	mov    $0x4,%eax
c003132c:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003132f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0031332:	8b 55 10             	mov    0x10(%ebp),%edx
c0031335:	82                   	nemu_trap 
c0031336:	89 45 10             	mov    %eax,0x10(%ebp)
c0031339:	8b 45 10             	mov    0x10(%ebp),%eax
c003133c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003133f:	c9                   	leave  
c0031340:	c3                   	ret    

c0031341 <fs_lseek>:
c0031341:	55                   	push   %ebp
c0031342:	89 e5                	mov    %esp,%ebp
c0031344:	53                   	push   %ebx
c0031345:	83 ec 04             	sub    $0x4,%esp
c0031348:	e8 30 ef ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c003134d:	05 b3 bc 00 00       	add    $0xbcb3,%eax
c0031352:	8d 90 10 c6 ff ff    	lea    -0x39f0(%eax),%edx
c0031358:	52                   	push   %edx
c0031359:	6a 48                	push   $0x48
c003135b:	8d 90 2b c4 ff ff    	lea    -0x3bd5(%eax),%edx
c0031361:	52                   	push   %edx
c0031362:	8d 90 44 c5 ff ff    	lea    -0x3abc(%eax),%edx
c0031368:	52                   	push   %edx
c0031369:	89 c3                	mov    %eax,%ebx
c003136b:	e8 73 f7 ff ff       	call   c0030ae3 <printk>
c0031370:	83 c4 10             	add    $0x10,%esp
c0031373:	b8 01 00 00 00       	mov    $0x1,%eax
c0031378:	82                   	nemu_trap 
c0031379:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c003137e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031381:	c9                   	leave  
c0031382:	c3                   	ret    

c0031383 <fs_close>:
c0031383:	55                   	push   %ebp
c0031384:	89 e5                	mov    %esp,%ebp
c0031386:	53                   	push   %ebx
c0031387:	83 ec 04             	sub    $0x4,%esp
c003138a:	e8 ee ee ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c003138f:	05 71 bc 00 00       	add    $0xbc71,%eax
c0031394:	8d 90 1c c6 ff ff    	lea    -0x39e4(%eax),%edx
c003139a:	52                   	push   %edx
c003139b:	6a 4e                	push   $0x4e
c003139d:	8d 90 2b c4 ff ff    	lea    -0x3bd5(%eax),%edx
c00313a3:	52                   	push   %edx
c00313a4:	8d 90 9c c5 ff ff    	lea    -0x3a64(%eax),%edx
c00313aa:	52                   	push   %edx
c00313ab:	89 c3                	mov    %eax,%ebx
c00313ad:	e8 31 f7 ff ff       	call   c0030ae3 <printk>
c00313b2:	83 c4 10             	add    $0x10,%esp
c00313b5:	b8 01 00 00 00       	mov    $0x1,%eax
c00313ba:	82                   	nemu_trap 
c00313bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00313c0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00313c3:	c9                   	leave  
c00313c4:	c3                   	ret    

c00313c5 <sti>:
c00313c5:	55                   	push   %ebp
c00313c6:	89 e5                	mov    %esp,%ebp
c00313c8:	e8 b0 ee ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c00313cd:	05 33 bc 00 00       	add    $0xbc33,%eax
c00313d2:	fb                   	sti    
c00313d3:	90                   	nop
c00313d4:	5d                   	pop    %ebp
c00313d5:	c3                   	ret    

c00313d6 <cli>:
c00313d6:	55                   	push   %ebp
c00313d7:	89 e5                	mov    %esp,%ebp
c00313d9:	e8 9f ee ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c00313de:	05 22 bc 00 00       	add    $0xbc22,%eax
c00313e3:	fa                   	cli    
c00313e4:	90                   	nop
c00313e5:	5d                   	pop    %ebp
c00313e6:	c3                   	ret    

c00313e7 <sys_brk>:
c00313e7:	55                   	push   %ebp
c00313e8:	89 e5                	mov    %esp,%ebp
c00313ea:	53                   	push   %ebx
c00313eb:	83 ec 04             	sub    $0x4,%esp
c00313ee:	e8 8a ee ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c00313f3:	05 0d bc 00 00       	add    $0xbc0d,%eax
c00313f8:	8b 55 08             	mov    0x8(%ebp),%edx
c00313fb:	8b 52 10             	mov    0x10(%edx),%edx
c00313fe:	83 ec 0c             	sub    $0xc,%esp
c0031401:	52                   	push   %edx
c0031402:	89 c3                	mov    %eax,%ebx
c0031404:	e8 67 02 00 00       	call   c0031670 <mm_brk>
c0031409:	83 c4 10             	add    $0x10,%esp
c003140c:	8b 45 08             	mov    0x8(%ebp),%eax
c003140f:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c0031416:	90                   	nop
c0031417:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003141a:	c9                   	leave  
c003141b:	c3                   	ret    

c003141c <sys_open>:
c003141c:	55                   	push   %ebp
c003141d:	89 e5                	mov    %esp,%ebp
c003141f:	53                   	push   %ebx
c0031420:	83 ec 04             	sub    $0x4,%esp
c0031423:	e8 55 ee ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0031428:	05 d8 bb 00 00       	add    $0xbbd8,%eax
c003142d:	8b 55 08             	mov    0x8(%ebp),%edx
c0031430:	8b 52 18             	mov    0x18(%edx),%edx
c0031433:	89 d1                	mov    %edx,%ecx
c0031435:	8b 55 08             	mov    0x8(%ebp),%edx
c0031438:	8b 52 10             	mov    0x10(%edx),%edx
c003143b:	83 ec 08             	sub    $0x8,%esp
c003143e:	51                   	push   %ecx
c003143f:	52                   	push   %edx
c0031440:	89 c3                	mov    %eax,%ebx
c0031442:	e8 e0 fd ff ff       	call   c0031227 <fs_open>
c0031447:	83 c4 10             	add    $0x10,%esp
c003144a:	89 c2                	mov    %eax,%edx
c003144c:	8b 45 08             	mov    0x8(%ebp),%eax
c003144f:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031452:	90                   	nop
c0031453:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031456:	c9                   	leave  
c0031457:	c3                   	ret    

c0031458 <sys_read>:
c0031458:	55                   	push   %ebp
c0031459:	89 e5                	mov    %esp,%ebp
c003145b:	53                   	push   %ebx
c003145c:	83 ec 04             	sub    $0x4,%esp
c003145f:	e8 19 ee ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0031464:	05 9c bb 00 00       	add    $0xbb9c,%eax
c0031469:	8b 55 08             	mov    0x8(%ebp),%edx
c003146c:	8b 52 14             	mov    0x14(%edx),%edx
c003146f:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031472:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031475:	89 cb                	mov    %ecx,%ebx
c0031477:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003147a:	8b 49 10             	mov    0x10(%ecx),%ecx
c003147d:	83 ec 04             	sub    $0x4,%esp
c0031480:	52                   	push   %edx
c0031481:	53                   	push   %ebx
c0031482:	51                   	push   %ecx
c0031483:	89 c3                	mov    %eax,%ebx
c0031485:	e8 df fd ff ff       	call   c0031269 <fs_read>
c003148a:	83 c4 10             	add    $0x10,%esp
c003148d:	89 c2                	mov    %eax,%edx
c003148f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031492:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031495:	90                   	nop
c0031496:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031499:	c9                   	leave  
c003149a:	c3                   	ret    

c003149b <sys_write>:
c003149b:	55                   	push   %ebp
c003149c:	89 e5                	mov    %esp,%ebp
c003149e:	53                   	push   %ebx
c003149f:	83 ec 04             	sub    $0x4,%esp
c00314a2:	e8 d6 ed ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c00314a7:	05 59 bb 00 00       	add    $0xbb59,%eax
c00314ac:	8b 55 08             	mov    0x8(%ebp),%edx
c00314af:	8b 52 14             	mov    0x14(%edx),%edx
c00314b2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314b5:	8b 49 18             	mov    0x18(%ecx),%ecx
c00314b8:	89 cb                	mov    %ecx,%ebx
c00314ba:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00314bd:	8b 49 10             	mov    0x10(%ecx),%ecx
c00314c0:	83 ec 04             	sub    $0x4,%esp
c00314c3:	52                   	push   %edx
c00314c4:	53                   	push   %ebx
c00314c5:	51                   	push   %ecx
c00314c6:	89 c3                	mov    %eax,%ebx
c00314c8:	e8 12 fe ff ff       	call   c00312df <fs_write>
c00314cd:	83 c4 10             	add    $0x10,%esp
c00314d0:	89 c2                	mov    %eax,%edx
c00314d2:	8b 45 08             	mov    0x8(%ebp),%eax
c00314d5:	89 50 1c             	mov    %edx,0x1c(%eax)
c00314d8:	90                   	nop
c00314d9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00314dc:	c9                   	leave  
c00314dd:	c3                   	ret    

c00314de <sys_lseek>:
c00314de:	55                   	push   %ebp
c00314df:	89 e5                	mov    %esp,%ebp
c00314e1:	53                   	push   %ebx
c00314e2:	83 ec 04             	sub    $0x4,%esp
c00314e5:	e8 93 ed ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c00314ea:	05 16 bb 00 00       	add    $0xbb16,%eax
c00314ef:	8b 55 08             	mov    0x8(%ebp),%edx
c00314f2:	8b 52 14             	mov    0x14(%edx),%edx
c00314f5:	89 d3                	mov    %edx,%ebx
c00314f7:	8b 55 08             	mov    0x8(%ebp),%edx
c00314fa:	8b 52 18             	mov    0x18(%edx),%edx
c00314fd:	89 d1                	mov    %edx,%ecx
c00314ff:	8b 55 08             	mov    0x8(%ebp),%edx
c0031502:	8b 52 10             	mov    0x10(%edx),%edx
c0031505:	83 ec 04             	sub    $0x4,%esp
c0031508:	53                   	push   %ebx
c0031509:	51                   	push   %ecx
c003150a:	52                   	push   %edx
c003150b:	89 c3                	mov    %eax,%ebx
c003150d:	e8 2f fe ff ff       	call   c0031341 <fs_lseek>
c0031512:	83 c4 10             	add    $0x10,%esp
c0031515:	89 c2                	mov    %eax,%edx
c0031517:	8b 45 08             	mov    0x8(%ebp),%eax
c003151a:	89 50 1c             	mov    %edx,0x1c(%eax)
c003151d:	90                   	nop
c003151e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031521:	c9                   	leave  
c0031522:	c3                   	ret    

c0031523 <sys_close>:
c0031523:	55                   	push   %ebp
c0031524:	89 e5                	mov    %esp,%ebp
c0031526:	53                   	push   %ebx
c0031527:	83 ec 04             	sub    $0x4,%esp
c003152a:	e8 4e ed ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c003152f:	05 d1 ba 00 00       	add    $0xbad1,%eax
c0031534:	8b 55 08             	mov    0x8(%ebp),%edx
c0031537:	8b 52 10             	mov    0x10(%edx),%edx
c003153a:	83 ec 0c             	sub    $0xc,%esp
c003153d:	52                   	push   %edx
c003153e:	89 c3                	mov    %eax,%ebx
c0031540:	e8 3e fe ff ff       	call   c0031383 <fs_close>
c0031545:	83 c4 10             	add    $0x10,%esp
c0031548:	89 c2                	mov    %eax,%edx
c003154a:	8b 45 08             	mov    0x8(%ebp),%eax
c003154d:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031550:	90                   	nop
c0031551:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031554:	c9                   	leave  
c0031555:	c3                   	ret    

c0031556 <do_syscall>:
c0031556:	55                   	push   %ebp
c0031557:	89 e5                	mov    %esp,%ebp
c0031559:	53                   	push   %ebx
c003155a:	83 ec 04             	sub    $0x4,%esp
c003155d:	e8 00 ec ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c0031562:	81 c3 9e ba 00 00    	add    $0xba9e,%ebx
c0031568:	8b 45 08             	mov    0x8(%ebp),%eax
c003156b:	8b 40 1c             	mov    0x1c(%eax),%eax
c003156e:	83 f8 2d             	cmp    $0x2d,%eax
c0031571:	0f 87 98 00 00 00    	ja     c003160f <.L10>
c0031577:	c1 e0 02             	shl    $0x2,%eax
c003157a:	8b 84 18 98 c6 ff ff 	mov    -0x3968(%eax,%ebx,1),%eax
c0031581:	01 d8                	add    %ebx,%eax
c0031583:	ff e0                	jmp    *%eax

c0031585 <.L18>:
c0031585:	e8 4c fe ff ff       	call   c00313d6 <cli>
c003158a:	8b 45 08             	mov    0x8(%ebp),%eax
c003158d:	8b 40 18             	mov    0x18(%eax),%eax
c0031590:	89 c2                	mov    %eax,%edx
c0031592:	8b 45 08             	mov    0x8(%ebp),%eax
c0031595:	8b 40 10             	mov    0x10(%eax),%eax
c0031598:	83 ec 08             	sub    $0x8,%esp
c003159b:	52                   	push   %edx
c003159c:	50                   	push   %eax
c003159d:	e8 95 f5 ff ff       	call   c0030b37 <add_irq_handle>
c00315a2:	83 c4 10             	add    $0x10,%esp
c00315a5:	e8 1b fe ff ff       	call   c00313c5 <sti>
c00315aa:	e9 8f 00 00 00       	jmp    c003163e <.L10+0x2f>

c00315af <.L11>:
c00315af:	83 ec 0c             	sub    $0xc,%esp
c00315b2:	ff 75 08             	pushl  0x8(%ebp)
c00315b5:	e8 2d fe ff ff       	call   c00313e7 <sys_brk>
c00315ba:	83 c4 10             	add    $0x10,%esp
c00315bd:	eb 7f                	jmp    c003163e <.L10+0x2f>

c00315bf <.L15>:
c00315bf:	83 ec 0c             	sub    $0xc,%esp
c00315c2:	ff 75 08             	pushl  0x8(%ebp)
c00315c5:	e8 52 fe ff ff       	call   c003141c <sys_open>
c00315ca:	83 c4 10             	add    $0x10,%esp
c00315cd:	eb 6f                	jmp    c003163e <.L10+0x2f>

c00315cf <.L17>:
c00315cf:	83 ec 0c             	sub    $0xc,%esp
c00315d2:	ff 75 08             	pushl  0x8(%ebp)
c00315d5:	e8 7e fe ff ff       	call   c0031458 <sys_read>
c00315da:	83 c4 10             	add    $0x10,%esp
c00315dd:	eb 5f                	jmp    c003163e <.L10+0x2f>

c00315df <.L16>:
c00315df:	83 ec 0c             	sub    $0xc,%esp
c00315e2:	ff 75 08             	pushl  0x8(%ebp)
c00315e5:	e8 b1 fe ff ff       	call   c003149b <sys_write>
c00315ea:	83 c4 10             	add    $0x10,%esp
c00315ed:	eb 4f                	jmp    c003163e <.L10+0x2f>

c00315ef <.L13>:
c00315ef:	83 ec 0c             	sub    $0xc,%esp
c00315f2:	ff 75 08             	pushl  0x8(%ebp)
c00315f5:	e8 e4 fe ff ff       	call   c00314de <sys_lseek>
c00315fa:	83 c4 10             	add    $0x10,%esp
c00315fd:	eb 3f                	jmp    c003163e <.L10+0x2f>

c00315ff <.L14>:
c00315ff:	83 ec 0c             	sub    $0xc,%esp
c0031602:	ff 75 08             	pushl  0x8(%ebp)
c0031605:	e8 19 ff ff ff       	call   c0031523 <sys_close>
c003160a:	83 c4 10             	add    $0x10,%esp
c003160d:	eb 2f                	jmp    c003163e <.L10+0x2f>

c003160f <.L10>:
c003160f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031612:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031615:	83 ec 0c             	sub    $0xc,%esp
c0031618:	50                   	push   %eax
c0031619:	8d 83 50 c7 ff ff    	lea    -0x38b0(%ebx),%eax
c003161f:	50                   	push   %eax
c0031620:	6a 4a                	push   $0x4a
c0031622:	8d 83 28 c6 ff ff    	lea    -0x39d8(%ebx),%eax
c0031628:	50                   	push   %eax
c0031629:	8d 83 44 c6 ff ff    	lea    -0x39bc(%ebx),%eax
c003162f:	50                   	push   %eax
c0031630:	e8 ae f4 ff ff       	call   c0030ae3 <printk>
c0031635:	83 c4 20             	add    $0x20,%esp
c0031638:	b8 01 00 00 00       	mov    $0x1,%eax
c003163d:	82                   	nemu_trap 
c003163e:	90                   	nop
c003163f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031642:	c9                   	leave  
c0031643:	c3                   	ret    

c0031644 <get_updir>:
c0031644:	55                   	push   %ebp
c0031645:	89 e5                	mov    %esp,%ebp
c0031647:	e8 31 ec ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c003164c:	05 b4 b9 00 00       	add    $0xb9b4,%eax
c0031651:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031657:	5d                   	pop    %ebp
c0031658:	c3                   	ret    

c0031659 <get_ucr3>:
c0031659:	55                   	push   %ebp
c003165a:	89 e5                	mov    %esp,%ebp
c003165c:	e8 1c ec ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0031661:	05 9f b9 00 00       	add    $0xb99f,%eax
c0031666:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c003166c:	8b 00                	mov    (%eax),%eax
c003166e:	5d                   	pop    %ebp
c003166f:	c3                   	ret    

c0031670 <mm_brk>:
c0031670:	55                   	push   %ebp
c0031671:	89 e5                	mov    %esp,%ebp
c0031673:	53                   	push   %ebx
c0031674:	83 ec 04             	sub    $0x4,%esp
c0031677:	e8 e6 ea ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c003167c:	81 c3 84 b9 00 00    	add    $0xb984,%ebx
c0031682:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c0031688:	39 45 08             	cmp    %eax,0x8(%ebp)
c003168b:	76 22                	jbe    c00316af <mm_brk+0x3f>
c003168d:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c0031693:	8b 55 08             	mov    0x8(%ebp),%edx
c0031696:	29 c2                	sub    %eax,%edx
c0031698:	89 d0                	mov    %edx,%eax
c003169a:	89 c2                	mov    %eax,%edx
c003169c:	8b 83 88 1e 01 00    	mov    0x11e88(%ebx),%eax
c00316a2:	83 ec 08             	sub    $0x8,%esp
c00316a5:	52                   	push   %edx
c00316a6:	50                   	push   %eax
c00316a7:	e8 d4 04 00 00       	call   c0031b80 <mm_malloc>
c00316ac:	83 c4 10             	add    $0x10,%esp
c00316af:	8b 45 08             	mov    0x8(%ebp),%eax
c00316b2:	89 83 88 1e 01 00    	mov    %eax,0x11e88(%ebx)
c00316b8:	90                   	nop
c00316b9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00316bc:	c9                   	leave  
c00316bd:	c3                   	ret    

c00316be <init_mm>:
c00316be:	55                   	push   %ebp
c00316bf:	89 e5                	mov    %esp,%ebp
c00316c1:	53                   	push   %ebx
c00316c2:	83 ec 14             	sub    $0x14,%esp
c00316c5:	e8 98 ea ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c00316ca:	81 c3 36 b9 00 00    	add    $0xb936,%ebx
c00316d0:	e8 10 02 00 00       	call   c00318e5 <get_kpdir>
c00316d5:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00316d8:	83 ec 04             	sub    $0x4,%esp
c00316db:	68 00 10 00 00       	push   $0x1000
c00316e0:	6a 00                	push   $0x0
c00316e2:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c00316e8:	50                   	push   %eax
c00316e9:	e8 6e 07 00 00       	call   c0031e5c <memset>
c00316ee:	83 c4 10             	add    $0x10,%esp
c00316f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00316f4:	05 00 0c 00 00       	add    $0xc00,%eax
c00316f9:	83 ec 04             	sub    $0x4,%esp
c00316fc:	68 80 00 00 00       	push   $0x80
c0031701:	50                   	push   %eax
c0031702:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031708:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c003170e:	50                   	push   %eax
c003170f:	e8 00 07 00 00       	call   c0031e14 <memcpy>
c0031714:	83 c4 10             	add    $0x10,%esp
c0031717:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c003171d:	05 00 00 00 40       	add    $0x40000000,%eax
c0031722:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c0031727:	89 c2                	mov    %eax,%edx
c0031729:	c7 c0 00 20 07 c0    	mov    $0xc0072000,%eax
c003172f:	89 10                	mov    %edx,(%eax)
c0031731:	90                   	nop
c0031732:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031735:	c9                   	leave  
c0031736:	c3                   	ret    

c0031737 <create_video_mapping>:
c0031737:	55                   	push   %ebp
c0031738:	89 e5                	mov    %esp,%ebp
c003173a:	53                   	push   %ebx
c003173b:	83 ec 04             	sub    $0x4,%esp
c003173e:	e8 3a eb ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0031743:	05 bd b8 00 00       	add    $0xb8bd,%eax
c0031748:	8d 90 14 c8 ff ff    	lea    -0x37ec(%eax),%edx
c003174e:	52                   	push   %edx
c003174f:	6a 14                	push   $0x14
c0031751:	8d 90 5c c7 ff ff    	lea    -0x38a4(%eax),%edx
c0031757:	52                   	push   %edx
c0031758:	8d 90 70 c7 ff ff    	lea    -0x3890(%eax),%edx
c003175e:	52                   	push   %edx
c003175f:	89 c3                	mov    %eax,%ebx
c0031761:	e8 7d f3 ff ff       	call   c0030ae3 <printk>
c0031766:	83 c4 10             	add    $0x10,%esp
c0031769:	b8 01 00 00 00       	mov    $0x1,%eax
c003176e:	82                   	nemu_trap 
c003176f:	90                   	nop
c0031770:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031773:	c9                   	leave  
c0031774:	c3                   	ret    

c0031775 <video_mapping_write_test>:
c0031775:	55                   	push   %ebp
c0031776:	89 e5                	mov    %esp,%ebp
c0031778:	83 ec 10             	sub    $0x10,%esp
c003177b:	e8 fd ea ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0031780:	05 80 b8 00 00       	add    $0xb880,%eax
c0031785:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c003178c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0031793:	eb 17                	jmp    c00317ac <video_mapping_write_test+0x37>
c0031795:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031798:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003179f:	8b 45 f8             	mov    -0x8(%ebp),%eax
c00317a2:	01 c2                	add    %eax,%edx
c00317a4:	8b 45 fc             	mov    -0x4(%ebp),%eax
c00317a7:	89 02                	mov    %eax,(%edx)
c00317a9:	ff 45 fc             	incl   -0x4(%ebp)
c00317ac:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c00317b3:	7e e0                	jle    c0031795 <video_mapping_write_test+0x20>
c00317b5:	90                   	nop
c00317b6:	c9                   	leave  
c00317b7:	c3                   	ret    

c00317b8 <video_mapping_read_test>:
c00317b8:	55                   	push   %ebp
c00317b9:	89 e5                	mov    %esp,%ebp
c00317bb:	53                   	push   %ebx
c00317bc:	83 ec 14             	sub    $0x14,%esp
c00317bf:	e8 9e e9 ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c00317c4:	81 c3 3c b8 00 00    	add    $0xb83c,%ebx
c00317ca:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c00317d1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c00317d8:	eb 4a                	jmp    c0031824 <video_mapping_read_test+0x6c>
c00317da:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317dd:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00317e4:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00317e7:	01 d0                	add    %edx,%eax
c00317e9:	8b 10                	mov    (%eax),%edx
c00317eb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317ee:	39 c2                	cmp    %eax,%edx
c00317f0:	74 2f                	je     c0031821 <video_mapping_read_test+0x69>
c00317f2:	83 ec 0c             	sub    $0xc,%esp
c00317f5:	8d 83 b9 c7 ff ff    	lea    -0x3847(%ebx),%eax
c00317fb:	50                   	push   %eax
c00317fc:	8d 83 2c c8 ff ff    	lea    -0x37d4(%ebx),%eax
c0031802:	50                   	push   %eax
c0031803:	6a 27                	push   $0x27
c0031805:	8d 83 5c c7 ff ff    	lea    -0x38a4(%ebx),%eax
c003180b:	50                   	push   %eax
c003180c:	8d 83 c8 c7 ff ff    	lea    -0x3838(%ebx),%eax
c0031812:	50                   	push   %eax
c0031813:	e8 cb f2 ff ff       	call   c0030ae3 <printk>
c0031818:	83 c4 20             	add    $0x20,%esp
c003181b:	b8 01 00 00 00       	mov    $0x1,%eax
c0031820:	82                   	nemu_trap 
c0031821:	ff 45 f4             	incl   -0xc(%ebp)
c0031824:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c003182b:	7e ad                	jle    c00317da <video_mapping_read_test+0x22>
c003182d:	90                   	nop
c003182e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031831:	c9                   	leave  
c0031832:	c3                   	ret    

c0031833 <video_mapping_clear>:
c0031833:	55                   	push   %ebp
c0031834:	89 e5                	mov    %esp,%ebp
c0031836:	53                   	push   %ebx
c0031837:	83 ec 04             	sub    $0x4,%esp
c003183a:	e8 3e ea ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c003183f:	05 c1 b7 00 00       	add    $0xb7c1,%eax
c0031844:	83 ec 04             	sub    $0x4,%esp
c0031847:	68 00 fa 00 00       	push   $0xfa00
c003184c:	6a 00                	push   $0x0
c003184e:	68 00 00 0a 00       	push   $0xa0000
c0031853:	89 c3                	mov    %eax,%ebx
c0031855:	e8 02 06 00 00       	call   c0031e5c <memset>
c003185a:	83 c4 10             	add    $0x10,%esp
c003185d:	90                   	nop
c003185e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031861:	c9                   	leave  
c0031862:	c3                   	ret    

c0031863 <read_cr0>:
c0031863:	55                   	push   %ebp
c0031864:	89 e5                	mov    %esp,%ebp
c0031866:	83 ec 10             	sub    $0x10,%esp
c0031869:	e8 0f ea ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c003186e:	05 92 b7 00 00       	add    $0xb792,%eax
c0031873:	0f 20 c0             	mov    %cr0,%eax
c0031876:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031879:	8b 45 fc             	mov    -0x4(%ebp),%eax
c003187c:	c9                   	leave  
c003187d:	c3                   	ret    

c003187e <write_cr0>:
c003187e:	55                   	push   %ebp
c003187f:	89 e5                	mov    %esp,%ebp
c0031881:	e8 f7 e9 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0031886:	05 7a b7 00 00       	add    $0xb77a,%eax
c003188b:	8b 45 08             	mov    0x8(%ebp),%eax
c003188e:	0f 22 c0             	mov    %eax,%cr0
c0031891:	90                   	nop
c0031892:	5d                   	pop    %ebp
c0031893:	c3                   	ret    

c0031894 <write_cr3>:
c0031894:	55                   	push   %ebp
c0031895:	89 e5                	mov    %esp,%ebp
c0031897:	e8 e1 e9 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c003189c:	05 64 b7 00 00       	add    $0xb764,%eax
c00318a1:	8b 45 08             	mov    0x8(%ebp),%eax
c00318a4:	0f 22 d8             	mov    %eax,%cr3
c00318a7:	90                   	nop
c00318a8:	5d                   	pop    %ebp
c00318a9:	c3                   	ret    

c00318aa <write_gdtr>:
c00318aa:	55                   	push   %ebp
c00318ab:	89 e5                	mov    %esp,%ebp
c00318ad:	e8 cb e9 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c00318b2:	05 4e b7 00 00       	add    $0xb74e,%eax
c00318b7:	8b 55 0c             	mov    0xc(%ebp),%edx
c00318ba:	4a                   	dec    %edx
c00318bb:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
c00318c2:	8b 55 08             	mov    0x8(%ebp),%edx
c00318c5:	66 89 90 8e 1e 01 00 	mov    %dx,0x11e8e(%eax)
c00318cc:	8b 55 08             	mov    0x8(%ebp),%edx
c00318cf:	c1 ea 10             	shr    $0x10,%edx
c00318d2:	66 89 90 90 1e 01 00 	mov    %dx,0x11e90(%eax)
c00318d9:	8d 80 8c 1e 01 00    	lea    0x11e8c(%eax),%eax
c00318df:	0f 01 10             	lgdtl  (%eax)
c00318e2:	90                   	nop
c00318e3:	5d                   	pop    %ebp
c00318e4:	c3                   	ret    

c00318e5 <get_kpdir>:
c00318e5:	55                   	push   %ebp
c00318e6:	89 e5                	mov    %esp,%ebp
c00318e8:	e8 90 e9 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c00318ed:	05 13 b7 00 00       	add    $0xb713,%eax
c00318f2:	c7 c0 00 40 07 c0    	mov    $0xc0074000,%eax
c00318f8:	5d                   	pop    %ebp
c00318f9:	c3                   	ret    

c00318fa <init_page>:
c00318fa:	55                   	push   %ebp
c00318fb:	89 e5                	mov    %esp,%ebp
c00318fd:	53                   	push   %ebx
c00318fe:	83 ec 24             	sub    $0x24,%esp
c0031901:	e8 5c e8 ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c0031906:	81 c3 fa b6 00 00    	add    $0xb6fa,%ebx
c003190c:	c7 c0 00 40 07 c0    	mov    $0xc0074000,%eax
c0031912:	05 00 00 00 40       	add    $0x40000000,%eax
c0031917:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003191a:	c7 c0 00 50 07 c0    	mov    $0xc0075000,%eax
c0031920:	05 00 00 00 40       	add    $0x40000000,%eax
c0031925:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031928:	83 ec 04             	sub    $0x4,%esp
c003192b:	68 00 10 00 00       	push   $0x1000
c0031930:	6a 00                	push   $0x0
c0031932:	ff 75 e4             	pushl  -0x1c(%ebp)
c0031935:	e8 22 05 00 00       	call   c0031e5c <memset>
c003193a:	83 c4 10             	add    $0x10,%esp
c003193d:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031944:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c003194b:	eb 70                	jmp    c00319bd <init_page+0xc3>
c003194d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031950:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031955:	89 c2                	mov    %eax,%edx
c0031957:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003195a:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031961:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031964:	01 c8                	add    %ecx,%eax
c0031966:	83 ca 07             	or     $0x7,%edx
c0031969:	89 10                	mov    %edx,(%eax)
c003196b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003196e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031973:	89 c2                	mov    %eax,%edx
c0031975:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031978:	05 00 03 00 00       	add    $0x300,%eax
c003197d:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031984:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031987:	01 c8                	add    %ecx,%eax
c0031989:	83 ca 07             	or     $0x7,%edx
c003198c:	89 10                	mov    %edx,(%eax)
c003198e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0031995:	eb 1a                	jmp    c00319b1 <init_page+0xb7>
c0031997:	8b 45 e8             	mov    -0x18(%ebp),%eax
c003199a:	c1 e0 0c             	shl    $0xc,%eax
c003199d:	83 c8 07             	or     $0x7,%eax
c00319a0:	89 c2                	mov    %eax,%edx
c00319a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00319a5:	89 10                	mov    %edx,(%eax)
c00319a7:	ff 45 e8             	incl   -0x18(%ebp)
c00319aa:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c00319ae:	ff 45 ec             	incl   -0x14(%ebp)
c00319b1:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c00319b8:	76 dd                	jbe    c0031997 <init_page+0x9d>
c00319ba:	ff 45 f0             	incl   -0x10(%ebp)
c00319bd:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c00319c1:	76 8a                	jbe    c003194d <init_page+0x53>
c00319c3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00319ca:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00319cd:	c1 e8 0c             	shr    $0xc,%eax
c00319d0:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00319d5:	c1 e0 0c             	shl    $0xc,%eax
c00319d8:	89 c2                	mov    %eax,%edx
c00319da:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00319dd:	25 ff 0f 00 00       	and    $0xfff,%eax
c00319e2:	09 d0                	or     %edx,%eax
c00319e4:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00319e7:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00319ea:	83 ec 0c             	sub    $0xc,%esp
c00319ed:	50                   	push   %eax
c00319ee:	e8 a1 fe ff ff       	call   c0031894 <write_cr3>
c00319f3:	83 c4 10             	add    $0x10,%esp
c00319f6:	e8 68 fe ff ff       	call   c0031863 <read_cr0>
c00319fb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00319fe:	8a 45 e3             	mov    -0x1d(%ebp),%al
c0031a01:	83 c8 80             	or     $0xffffff80,%eax
c0031a04:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0031a07:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031a0a:	83 ec 0c             	sub    $0xc,%esp
c0031a0d:	50                   	push   %eax
c0031a0e:	e8 6b fe ff ff       	call   c003187e <write_cr0>
c0031a13:	83 c4 10             	add    $0x10,%esp
c0031a16:	83 ec 0c             	sub    $0xc,%esp
c0031a19:	8d 83 44 c8 ff ff    	lea    -0x37bc(%ebx),%eax
c0031a1f:	50                   	push   %eax
c0031a20:	8d 83 a4 c8 ff ff    	lea    -0x375c(%ebx),%eax
c0031a26:	50                   	push   %eax
c0031a27:	6a 31                	push   $0x31
c0031a29:	8d 83 46 c8 ff ff    	lea    -0x37ba(%ebx),%eax
c0031a2f:	50                   	push   %eax
c0031a30:	8d 83 58 c8 ff ff    	lea    -0x37a8(%ebx),%eax
c0031a36:	50                   	push   %eax
c0031a37:	e8 a7 f0 ff ff       	call   c0030ae3 <printk>
c0031a3c:	83 c4 20             	add    $0x20,%esp
c0031a3f:	b8 01 00 00 00       	mov    $0x1,%eax
c0031a44:	82                   	nemu_trap 
c0031a45:	90                   	nop
c0031a46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a49:	c9                   	leave  
c0031a4a:	c3                   	ret    

c0031a4b <set_segment>:
c0031a4b:	55                   	push   %ebp
c0031a4c:	89 e5                	mov    %esp,%ebp
c0031a4e:	e8 2a e8 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0031a53:	05 ad b5 00 00       	add    $0xb5ad,%eax
c0031a58:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a5b:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031a60:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a63:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0031a69:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a6c:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031a70:	8b 45 10             	mov    0x10(%ebp),%eax
c0031a73:	88 c2                	mov    %al,%dl
c0031a75:	83 e2 0f             	and    $0xf,%edx
c0031a78:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a7b:	88 d1                	mov    %dl,%cl
c0031a7d:	83 e1 0f             	and    $0xf,%ecx
c0031a80:	8a 50 05             	mov    0x5(%eax),%dl
c0031a83:	83 e2 f0             	and    $0xfffffff0,%edx
c0031a86:	09 ca                	or     %ecx,%edx
c0031a88:	88 50 05             	mov    %dl,0x5(%eax)
c0031a8b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a8e:	8a 50 05             	mov    0x5(%eax),%dl
c0031a91:	83 ca 10             	or     $0x10,%edx
c0031a94:	88 50 05             	mov    %dl,0x5(%eax)
c0031a97:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031a9a:	88 c2                	mov    %al,%dl
c0031a9c:	83 e2 03             	and    $0x3,%edx
c0031a9f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031aa2:	83 e2 03             	and    $0x3,%edx
c0031aa5:	88 d1                	mov    %dl,%cl
c0031aa7:	c1 e1 05             	shl    $0x5,%ecx
c0031aaa:	8a 50 05             	mov    0x5(%eax),%dl
c0031aad:	83 e2 9f             	and    $0xffffff9f,%edx
c0031ab0:	09 ca                	or     %ecx,%edx
c0031ab2:	88 50 05             	mov    %dl,0x5(%eax)
c0031ab5:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ab8:	8a 50 05             	mov    0x5(%eax),%dl
c0031abb:	83 ca 80             	or     $0xffffff80,%edx
c0031abe:	88 50 05             	mov    %dl,0x5(%eax)
c0031ac1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ac4:	8a 50 06             	mov    0x6(%eax),%dl
c0031ac7:	83 ca 0f             	or     $0xf,%edx
c0031aca:	88 50 06             	mov    %dl,0x6(%eax)
c0031acd:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ad0:	8a 50 06             	mov    0x6(%eax),%dl
c0031ad3:	83 e2 ef             	and    $0xffffffef,%edx
c0031ad6:	88 50 06             	mov    %dl,0x6(%eax)
c0031ad9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031adc:	8a 50 06             	mov    0x6(%eax),%dl
c0031adf:	83 e2 df             	and    $0xffffffdf,%edx
c0031ae2:	88 50 06             	mov    %dl,0x6(%eax)
c0031ae5:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ae8:	8a 50 06             	mov    0x6(%eax),%dl
c0031aeb:	83 ca 40             	or     $0x40,%edx
c0031aee:	88 50 06             	mov    %dl,0x6(%eax)
c0031af1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031af4:	8a 50 06             	mov    0x6(%eax),%dl
c0031af7:	83 ca 80             	or     $0xffffff80,%edx
c0031afa:	88 50 06             	mov    %dl,0x6(%eax)
c0031afd:	8b 45 08             	mov    0x8(%ebp),%eax
c0031b00:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0031b04:	90                   	nop
c0031b05:	5d                   	pop    %ebp
c0031b06:	c3                   	ret    

c0031b07 <init_segment>:
c0031b07:	55                   	push   %ebp
c0031b08:	89 e5                	mov    %esp,%ebp
c0031b0a:	53                   	push   %ebx
c0031b0b:	83 ec 04             	sub    $0x4,%esp
c0031b0e:	e8 4f e6 ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c0031b13:	81 c3 ed b4 00 00    	add    $0xb4ed,%ebx
c0031b19:	83 ec 04             	sub    $0x4,%esp
c0031b1c:	6a 18                	push   $0x18
c0031b1e:	6a 00                	push   $0x0
c0031b20:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b26:	50                   	push   %eax
c0031b27:	e8 30 03 00 00       	call   c0031e5c <memset>
c0031b2c:	83 c4 10             	add    $0x10,%esp
c0031b2f:	83 ec 04             	sub    $0x4,%esp
c0031b32:	6a 0a                	push   $0xa
c0031b34:	6a 00                	push   $0x0
c0031b36:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b3c:	8d 40 08             	lea    0x8(%eax),%eax
c0031b3f:	50                   	push   %eax
c0031b40:	e8 06 ff ff ff       	call   c0031a4b <set_segment>
c0031b45:	83 c4 10             	add    $0x10,%esp
c0031b48:	83 ec 04             	sub    $0x4,%esp
c0031b4b:	6a 02                	push   $0x2
c0031b4d:	6a 00                	push   $0x0
c0031b4f:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b55:	8d 40 10             	lea    0x10(%eax),%eax
c0031b58:	50                   	push   %eax
c0031b59:	e8 ed fe ff ff       	call   c0031a4b <set_segment>
c0031b5e:	83 c4 10             	add    $0x10,%esp
c0031b61:	83 ec 08             	sub    $0x8,%esp
c0031b64:	6a 18                	push   $0x18
c0031b66:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b6c:	50                   	push   %eax
c0031b6d:	e8 38 fd ff ff       	call   c00318aa <write_gdtr>
c0031b72:	83 c4 10             	add    $0x10,%esp
c0031b75:	90                   	nop
c0031b76:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b79:	c9                   	leave  
c0031b7a:	c3                   	ret    
c0031b7b:	66 90                	xchg   %ax,%ax
c0031b7d:	66 90                	xchg   %ax,%ax
c0031b7f:	90                   	nop

c0031b80 <mm_malloc>:
c0031b80:	55                   	push   %ebp
c0031b81:	31 c0                	xor    %eax,%eax
c0031b83:	89 e5                	mov    %esp,%ebp
c0031b85:	57                   	push   %edi
c0031b86:	56                   	push   %esi
c0031b87:	53                   	push   %ebx
c0031b88:	83 ec 3c             	sub    $0x3c,%esp
c0031b8b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031b8e:	85 db                	test   %ebx,%ebx
c0031b90:	0f 8e 36 02 00 00    	jle    c0031dcc <mm_malloc+0x24c>
c0031b96:	e8 a9 fa ff ff       	call   c0031644 <get_updir>
c0031b9b:	89 c6                	mov    %eax,%esi
c0031b9d:	e8 b7 fa ff ff       	call   c0031659 <get_ucr3>
c0031ba2:	8b 55 08             	mov    0x8(%ebp),%edx
c0031ba5:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031ba9:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031bac:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031baf:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031bb4:	29 d0                	sub    %edx,%eax
c0031bb6:	89 da                	mov    %ebx,%edx
c0031bb8:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031bbe:	01 d0                	add    %edx,%eax
c0031bc0:	85 c0                	test   %eax,%eax
c0031bc2:	0f 8e c0 00 00 00    	jle    c0031c88 <mm_malloc+0x108>
c0031bc8:	8b 55 08             	mov    0x8(%ebp),%edx
c0031bcb:	83 e8 01             	sub    $0x1,%eax
c0031bce:	89 f7                	mov    %esi,%edi
c0031bd0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031bd5:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031bdc:	89 d3                	mov    %edx,%ebx
c0031bde:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031be1:	eb 51                	jmp    c0031c34 <mm_malloc+0xb4>
c0031be3:	90                   	nop
c0031be4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031be8:	8b 31                	mov    (%ecx),%esi
c0031bea:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031bf0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031bf6:	89 d8                	mov    %ebx,%eax
c0031bf8:	c1 e8 0a             	shr    $0xa,%eax
c0031bfb:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031c00:	01 c6                	add    %eax,%esi
c0031c02:	f6 06 01             	testb  $0x1,(%esi)
c0031c05:	75 22                	jne    c0031c29 <mm_malloc+0xa9>
c0031c07:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031c0c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031c11:	0f 8f c1 01 00 00    	jg     c0031dd8 <mm_malloc+0x258>
c0031c17:	89 c1                	mov    %eax,%ecx
c0031c19:	83 c0 01             	add    $0x1,%eax
c0031c1c:	c1 e1 0c             	shl    $0xc,%ecx
c0031c1f:	83 c9 07             	or     $0x7,%ecx
c0031c22:	89 0e                	mov    %ecx,(%esi)
c0031c24:	a3 20 d0 03 c0       	mov    %eax,0xc003d020
c0031c29:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031c2f:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031c32:	74 54                	je     c0031c88 <mm_malloc+0x108>
c0031c34:	89 d8                	mov    %ebx,%eax
c0031c36:	c1 e8 16             	shr    $0x16,%eax
c0031c39:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031c3c:	f6 01 01             	testb  $0x1,(%ecx)
c0031c3f:	75 a7                	jne    c0031be8 <mm_malloc+0x68>
c0031c41:	a1 00 f0 04 c0       	mov    0xc004f000,%eax
c0031c46:	89 c6                	mov    %eax,%esi
c0031c48:	83 c0 01             	add    $0x1,%eax
c0031c4b:	c1 e6 0c             	shl    $0xc,%esi
c0031c4e:	81 c6 00 00 05 c0    	add    $0xc0050000,%esi
c0031c54:	a3 00 f0 04 c0       	mov    %eax,0xc004f000
c0031c59:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031c5f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c64:	83 c8 07             	or     $0x7,%eax
c0031c67:	89 01                	mov    %eax,(%ecx)
c0031c69:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031c70:	00 
c0031c71:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031c78:	00 
c0031c79:	89 34 24             	mov    %esi,(%esp)
c0031c7c:	e8 db 01 00 00       	call   c0031e5c <memset>
c0031c81:	e9 70 ff ff ff       	jmp    c0031bf6 <mm_malloc+0x76>
c0031c86:	66 90                	xchg   %ax,%ax
c0031c88:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031c8b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031c8e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031c94:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031c9a:	c1 e8 16             	shr    $0x16,%eax
c0031c9d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031ca0:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031ca6:	75 32                	jne    c0031cda <mm_malloc+0x15a>
c0031ca8:	c7 44 24 10 d2 98 03 	movl   $0xc00398d2,0x10(%esp)
c0031caf:	c0 
c0031cb0:	c7 44 24 0c 3a 99 03 	movl   $0xc003993a,0xc(%esp)
c0031cb7:	c0 
c0031cb8:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031cbf:	00 
c0031cc0:	c7 44 24 04 c1 98 03 	movl   $0xc00398c1,0x4(%esp)
c0031cc7:	c0 
c0031cc8:	c7 04 24 e4 98 03 c0 	movl   $0xc00398e4,(%esp)
c0031ccf:	e8 0f ee ff ff       	call   c0030ae3 <printk>
c0031cd4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031cd9:	82                   	nemu_trap 
c0031cda:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0031cdd:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c0031ce3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031ce8:	c1 ea 0c             	shr    $0xc,%edx
c0031ceb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031cf1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c0031cf5:	75 32                	jne    c0031d29 <mm_malloc+0x1a9>
c0031cf7:	c7 44 24 10 da 98 03 	movl   $0xc00398da,0x10(%esp)
c0031cfe:	c0 
c0031cff:	c7 44 24 0c 3a 99 03 	movl   $0xc003993a,0xc(%esp)
c0031d06:	c0 
c0031d07:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d0e:	00 
c0031d0f:	c7 44 24 04 c1 98 03 	movl   $0xc00398c1,0x4(%esp)
c0031d16:	c0 
c0031d17:	c7 04 24 e4 98 03 c0 	movl   $0xc00398e4,(%esp)
c0031d1e:	e8 c0 ed ff ff       	call   c0030ae3 <printk>
c0031d23:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d28:	82                   	nemu_trap 
c0031d29:	8b 45 08             	mov    0x8(%ebp),%eax
c0031d2c:	c1 e8 16             	shr    $0x16,%eax
c0031d2f:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031d32:	f6 c3 01             	test   $0x1,%bl
c0031d35:	75 32                	jne    c0031d69 <mm_malloc+0x1e9>
c0031d37:	c7 44 24 10 d2 98 03 	movl   $0xc00398d2,0x10(%esp)
c0031d3e:	c0 
c0031d3f:	c7 44 24 0c 3a 99 03 	movl   $0xc003993a,0xc(%esp)
c0031d46:	c0 
c0031d47:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031d4e:	00 
c0031d4f:	c7 44 24 04 c1 98 03 	movl   $0xc00398c1,0x4(%esp)
c0031d56:	c0 
c0031d57:	c7 04 24 e4 98 03 c0 	movl   $0xc00398e4,(%esp)
c0031d5e:	e8 80 ed ff ff       	call   c0030ae3 <printk>
c0031d63:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d68:	82                   	nemu_trap 
c0031d69:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d6c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
c0031d72:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d77:	c1 ea 0c             	shr    $0xc,%edx
c0031d7a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031d80:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
c0031d83:	f6 c3 01             	test   $0x1,%bl
c0031d86:	75 32                	jne    c0031dba <mm_malloc+0x23a>
c0031d88:	c7 44 24 10 da 98 03 	movl   $0xc00398da,0x10(%esp)
c0031d8f:	c0 
c0031d90:	c7 44 24 0c 3a 99 03 	movl   $0xc003993a,0xc(%esp)
c0031d97:	c0 
c0031d98:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d9f:	00 
c0031da0:	c7 44 24 04 c1 98 03 	movl   $0xc00398c1,0x4(%esp)
c0031da7:	c0 
c0031da8:	c7 04 24 e4 98 03 c0 	movl   $0xc00398e4,(%esp)
c0031daf:	e8 2f ed ff ff       	call   c0030ae3 <printk>
c0031db4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031db9:	82                   	nemu_trap 
c0031dba:	8b 55 08             	mov    0x8(%ebp),%edx
c0031dbd:	89 d8                	mov    %ebx,%eax
c0031dbf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031dc4:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c0031dca:	09 d0                	or     %edx,%eax
c0031dcc:	83 c4 3c             	add    $0x3c,%esp
c0031dcf:	5b                   	pop    %ebx
c0031dd0:	5e                   	pop    %esi
c0031dd1:	5f                   	pop    %edi
c0031dd2:	5d                   	pop    %ebp
c0031dd3:	c3                   	ret    
c0031dd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031dd8:	c7 44 24 10 ae 98 03 	movl   $0xc00398ae,0x10(%esp)
c0031ddf:	c0 
c0031de0:	c7 44 24 0c 30 99 03 	movl   $0xc0039930,0xc(%esp)
c0031de7:	c0 
c0031de8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031def:	00 
c0031df0:	c7 44 24 04 c1 98 03 	movl   $0xc00398c1,0x4(%esp)
c0031df7:	c0 
c0031df8:	c7 04 24 e4 98 03 c0 	movl   $0xc00398e4,(%esp)
c0031dff:	e8 df ec ff ff       	call   c0030ae3 <printk>
c0031e04:	b8 01 00 00 00       	mov    $0x1,%eax
c0031e09:	82                   	nemu_trap 
c0031e0a:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031e0f:	e9 03 fe ff ff       	jmp    c0031c17 <mm_malloc+0x97>

c0031e14 <memcpy>:
c0031e14:	55                   	push   %ebp
c0031e15:	89 e5                	mov    %esp,%ebp
c0031e17:	56                   	push   %esi
c0031e18:	57                   	push   %edi
c0031e19:	53                   	push   %ebx
c0031e1a:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e1d:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e20:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031e23:	fc                   	cld    
c0031e24:	83 f9 08             	cmp    $0x8,%ecx
c0031e27:	76 26                	jbe    c0031e4f <memcpy+0x3b>
c0031e29:	89 fa                	mov    %edi,%edx
c0031e2b:	89 cb                	mov    %ecx,%ebx
c0031e2d:	83 e2 03             	and    $0x3,%edx
c0031e30:	74 10                	je     c0031e42 <memcpy+0x2e>
c0031e32:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031e37:	29 d1                	sub    %edx,%ecx
c0031e39:	83 e1 03             	and    $0x3,%ecx
c0031e3c:	29 cb                	sub    %ecx,%ebx
c0031e3e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e40:	89 d9                	mov    %ebx,%ecx
c0031e42:	c1 e9 02             	shr    $0x2,%ecx
c0031e45:	8d 76 00             	lea    0x0(%esi),%esi
c0031e48:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031e4a:	89 d9                	mov    %ebx,%ecx
c0031e4c:	83 e1 03             	and    $0x3,%ecx
c0031e4f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e51:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e54:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031e57:	5b                   	pop    %ebx
c0031e58:	5f                   	pop    %edi
c0031e59:	5e                   	pop    %esi
c0031e5a:	c9                   	leave  
c0031e5b:	c3                   	ret    

c0031e5c <memset>:
c0031e5c:	55                   	push   %ebp
c0031e5d:	89 e5                	mov    %esp,%ebp
c0031e5f:	57                   	push   %edi
c0031e60:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e63:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031e67:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e6a:	fc                   	cld    
c0031e6b:	83 f9 10             	cmp    $0x10,%ecx
c0031e6e:	76 69                	jbe    c0031ed9 <memset+0x7d>
c0031e70:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e76:	74 4c                	je     c0031ec4 <memset+0x68>
c0031e78:	88 07                	mov    %al,(%edi)
c0031e7a:	47                   	inc    %edi
c0031e7b:	49                   	dec    %ecx
c0031e7c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e82:	74 40                	je     c0031ec4 <memset+0x68>
c0031e84:	88 07                	mov    %al,(%edi)
c0031e86:	47                   	inc    %edi
c0031e87:	49                   	dec    %ecx
c0031e88:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e8e:	74 34                	je     c0031ec4 <memset+0x68>
c0031e90:	88 07                	mov    %al,(%edi)
c0031e92:	47                   	inc    %edi
c0031e93:	49                   	dec    %ecx
c0031e94:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e9a:	74 28                	je     c0031ec4 <memset+0x68>
c0031e9c:	88 07                	mov    %al,(%edi)
c0031e9e:	47                   	inc    %edi
c0031e9f:	49                   	dec    %ecx
c0031ea0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031ea6:	74 1c                	je     c0031ec4 <memset+0x68>
c0031ea8:	88 07                	mov    %al,(%edi)
c0031eaa:	47                   	inc    %edi
c0031eab:	49                   	dec    %ecx
c0031eac:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031eb2:	74 10                	je     c0031ec4 <memset+0x68>
c0031eb4:	88 07                	mov    %al,(%edi)
c0031eb6:	47                   	inc    %edi
c0031eb7:	49                   	dec    %ecx
c0031eb8:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031ebe:	74 04                	je     c0031ec4 <memset+0x68>
c0031ec0:	88 07                	mov    %al,(%edi)
c0031ec2:	47                   	inc    %edi
c0031ec3:	49                   	dec    %ecx
c0031ec4:	88 c4                	mov    %al,%ah
c0031ec6:	89 c2                	mov    %eax,%edx
c0031ec8:	c1 e2 10             	shl    $0x10,%edx
c0031ecb:	09 d0                	or     %edx,%eax
c0031ecd:	89 ca                	mov    %ecx,%edx
c0031ecf:	c1 e9 02             	shr    $0x2,%ecx
c0031ed2:	83 e2 03             	and    $0x3,%edx
c0031ed5:	f3 ab                	rep stos %eax,%es:(%edi)
c0031ed7:	89 d1                	mov    %edx,%ecx
c0031ed9:	f3 aa                	rep stos %al,%es:(%edi)
c0031edb:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ede:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031ee1:	5f                   	pop    %edi
c0031ee2:	c9                   	leave  
c0031ee3:	c3                   	ret    
c0031ee4:	66 90                	xchg   %ax,%ax
c0031ee6:	66 90                	xchg   %ax,%ax
c0031ee8:	66 90                	xchg   %ax,%ax
c0031eea:	66 90                	xchg   %ax,%ax
c0031eec:	66 90                	xchg   %ax,%ax
c0031eee:	66 90                	xchg   %ax,%ax

c0031ef0 <_vsnprintf_r>:
c0031ef0:	55                   	push   %ebp
c0031ef1:	89 e5                	mov    %esp,%ebp
c0031ef3:	56                   	push   %esi
c0031ef4:	53                   	push   %ebx
c0031ef5:	83 c4 80             	add    $0xffffff80,%esp
c0031ef8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031efb:	8b 75 08             	mov    0x8(%ebp),%esi
c0031efe:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031f01:	85 db                	test   %ebx,%ebx
c0031f03:	78 63                	js     c0031f68 <_vsnprintf_r+0x78>
c0031f05:	ba 08 02 00 00       	mov    $0x208,%edx
c0031f0a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031f0f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031f13:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031f16:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031f19:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031f1c:	31 c0                	xor    %eax,%eax
c0031f1e:	85 db                	test   %ebx,%ebx
c0031f20:	0f 45 c2             	cmovne %edx,%eax
c0031f23:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031f26:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031f29:	8b 45 18             	mov    0x18(%ebp),%eax
c0031f2c:	89 34 24             	mov    %esi,(%esp)
c0031f2f:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031f33:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031f37:	8b 45 14             	mov    0x14(%ebp),%eax
c0031f3a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031f3e:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031f41:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031f45:	e8 86 00 00 00       	call   c0031fd0 <_svfprintf_r>
c0031f4a:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031f4d:	7c 11                	jl     c0031f60 <_vsnprintf_r+0x70>
c0031f4f:	85 db                	test   %ebx,%ebx
c0031f51:	74 06                	je     c0031f59 <_vsnprintf_r+0x69>
c0031f53:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031f56:	c6 02 00             	movb   $0x0,(%edx)
c0031f59:	83 ec 80             	sub    $0xffffff80,%esp
c0031f5c:	5b                   	pop    %ebx
c0031f5d:	5e                   	pop    %esi
c0031f5e:	5d                   	pop    %ebp
c0031f5f:	c3                   	ret    
c0031f60:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f66:	eb e7                	jmp    c0031f4f <_vsnprintf_r+0x5f>
c0031f68:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f6e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031f73:	eb e4                	jmp    c0031f59 <_vsnprintf_r+0x69>
c0031f75:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031f79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031f80 <vsnprintf>:
c0031f80:	55                   	push   %ebp
c0031f81:	89 e5                	mov    %esp,%ebp
c0031f83:	83 ec 28             	sub    $0x28,%esp
c0031f86:	e8 35 00 00 00       	call   c0031fc0 <__getreent>
c0031f8b:	8b 55 14             	mov    0x14(%ebp),%edx
c0031f8e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031f92:	8b 55 10             	mov    0x10(%ebp),%edx
c0031f95:	89 04 24             	mov    %eax,(%esp)
c0031f98:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031f9c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031f9f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031fa3:	8b 55 08             	mov    0x8(%ebp),%edx
c0031fa6:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031faa:	e8 41 ff ff ff       	call   c0031ef0 <_vsnprintf_r>
c0031faf:	c9                   	leave  
c0031fb0:	c3                   	ret    
c0031fb1:	66 90                	xchg   %ax,%ax
c0031fb3:	66 90                	xchg   %ax,%ax
c0031fb5:	66 90                	xchg   %ax,%ax
c0031fb7:	66 90                	xchg   %ax,%ax
c0031fb9:	66 90                	xchg   %ax,%ax
c0031fbb:	66 90                	xchg   %ax,%ax
c0031fbd:	66 90                	xchg   %ax,%ax
c0031fbf:	90                   	nop

c0031fc0 <__getreent>:
c0031fc0:	55                   	push   %ebp
c0031fc1:	a1 40 d0 03 c0       	mov    0xc003d040,%eax
c0031fc6:	89 e5                	mov    %esp,%ebp
c0031fc8:	5d                   	pop    %ebp
c0031fc9:	c3                   	ret    
c0031fca:	66 90                	xchg   %ax,%ax
c0031fcc:	66 90                	xchg   %ax,%ax
c0031fce:	66 90                	xchg   %ax,%ax

c0031fd0 <_svfprintf_r>:
c0031fd0:	55                   	push   %ebp
c0031fd1:	89 e5                	mov    %esp,%ebp
c0031fd3:	57                   	push   %edi
c0031fd4:	56                   	push   %esi
c0031fd5:	53                   	push   %ebx
c0031fd6:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c0031fdc:	8b 45 08             	mov    0x8(%ebp),%eax
c0031fdf:	89 04 24             	mov    %eax,(%esp)
c0031fe2:	e8 89 33 00 00       	call   c0035370 <_localeconv_r>
c0031fe7:	8b 00                	mov    (%eax),%eax
c0031fe9:	89 04 24             	mov    %eax,(%esp)
c0031fec:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0031ff2:	e8 d9 4a 00 00       	call   c0036ad0 <strlen>
c0031ff7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c0031ffd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032000:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0032004:	74 0b                	je     c0032011 <_svfprintf_r+0x41>
c0032006:	8b 40 10             	mov    0x10(%eax),%eax
c0032009:	85 c0                	test   %eax,%eax
c003200b:	0f 84 62 18 00 00    	je     c0033873 <_svfprintf_r+0x18a3>
c0032011:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032014:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0032017:	89 c7                	mov    %eax,%edi
c0032019:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c003201f:	d9 ee                	fldz   
c0032021:	29 d0                	sub    %edx,%eax
c0032023:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c003202a:	00 00 00 
c003202d:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032033:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003203a:	00 00 00 
c003203d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0032044:	00 00 00 
c0032047:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c003204e:	00 00 00 
c0032051:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0032058:	00 00 00 
c003205b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0032062:	00 00 00 
c0032065:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c003206b:	8b 45 10             	mov    0x10(%ebp),%eax
c003206e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032071:	0f b6 00             	movzbl (%eax),%eax
c0032074:	3c 25                	cmp    $0x25,%al
c0032076:	74 4d                	je     c00320c5 <_svfprintf_r+0xf5>
c0032078:	84 c0                	test   %al,%al
c003207a:	75 08                	jne    c0032084 <_svfprintf_r+0xb4>
c003207c:	eb 47                	jmp    c00320c5 <_svfprintf_r+0xf5>
c003207e:	66 90                	xchg   %ax,%ax
c0032080:	84 c0                	test   %al,%al
c0032082:	74 0a                	je     c003208e <_svfprintf_r+0xbe>
c0032084:	83 c3 01             	add    $0x1,%ebx
c0032087:	0f b6 03             	movzbl (%ebx),%eax
c003208a:	3c 25                	cmp    $0x25,%al
c003208c:	75 f2                	jne    c0032080 <_svfprintf_r+0xb0>
c003208e:	89 de                	mov    %ebx,%esi
c0032090:	2b 75 10             	sub    0x10(%ebp),%esi
c0032093:	74 30                	je     c00320c5 <_svfprintf_r+0xf5>
c0032095:	8b 45 10             	mov    0x10(%ebp),%eax
c0032098:	83 c7 08             	add    $0x8,%edi
c003209b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003209e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c00320a4:	89 47 f8             	mov    %eax,-0x8(%edi)
c00320a7:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00320ad:	83 c0 01             	add    $0x1,%eax
c00320b0:	83 f8 07             	cmp    $0x7,%eax
c00320b3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00320b9:	0f 8f 91 00 00 00    	jg     c0032150 <_svfprintf_r+0x180>
c00320bf:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c00320c5:	80 3b 00             	cmpb   $0x0,(%ebx)
c00320c8:	0f 84 aa 00 00 00    	je     c0032178 <_svfprintf_r+0x1a8>
c00320ce:	8d 43 01             	lea    0x1(%ebx),%eax
c00320d1:	be 20 00 00 00       	mov    $0x20,%esi
c00320d6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00320dd:	31 db                	xor    %ebx,%ebx
c00320df:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c00320e6:	ff ff ff 
c00320e9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c00320f0:	00 00 00 
c00320f3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c00320fa:	00 00 00 
c00320fd:	8d 48 01             	lea    0x1(%eax),%ecx
c0032100:	0f be 00             	movsbl (%eax),%eax
c0032103:	8d 50 e0             	lea    -0x20(%eax),%edx
c0032106:	83 fa 58             	cmp    $0x58,%edx
c0032109:	0f 87 8f 07 00 00    	ja     c003289e <_svfprintf_r+0x8ce>
c003210f:	ff 24 95 84 99 03 c0 	jmp    *-0x3ffc667c(,%edx,4)
c0032116:	66 90                	xchg   %ax,%ax
c0032118:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003211f:	89 c8                	mov    %ecx,%eax
c0032121:	eb da                	jmp    c00320fd <_svfprintf_r+0x12d>
c0032123:	8b 45 14             	mov    0x14(%ebp),%eax
c0032126:	8b 55 14             	mov    0x14(%ebp),%edx
c0032129:	8b 00                	mov    (%eax),%eax
c003212b:	83 c2 04             	add    $0x4,%edx
c003212e:	89 55 14             	mov    %edx,0x14(%ebp)
c0032131:	85 c0                	test   %eax,%eax
c0032133:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0032139:	79 e4                	jns    c003211f <_svfprintf_r+0x14f>
c003213b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0032141:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0032148:	89 c8                	mov    %ecx,%eax
c003214a:	eb b1                	jmp    c00320fd <_svfprintf_r+0x12d>
c003214c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032150:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032156:	89 44 24 08          	mov    %eax,0x8(%esp)
c003215a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003215d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032161:	8b 45 08             	mov    0x8(%ebp),%eax
c0032164:	89 04 24             	mov    %eax,(%esp)
c0032167:	e8 e4 49 00 00       	call   c0036b50 <__ssprint_r>
c003216c:	85 c0                	test   %eax,%eax
c003216e:	75 30                	jne    c00321a0 <_svfprintf_r+0x1d0>
c0032170:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032173:	e9 47 ff ff ff       	jmp    c00320bf <_svfprintf_r+0xef>
c0032178:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003217e:	85 c0                	test   %eax,%eax
c0032180:	74 1e                	je     c00321a0 <_svfprintf_r+0x1d0>
c0032182:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032188:	89 44 24 08          	mov    %eax,0x8(%esp)
c003218c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003218f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032193:	8b 45 08             	mov    0x8(%ebp),%eax
c0032196:	89 04 24             	mov    %eax,(%esp)
c0032199:	e8 b2 49 00 00       	call   c0036b50 <__ssprint_r>
c003219e:	66 90                	xchg   %ax,%ax
c00321a0:	8b 55 0c             	mov    0xc(%ebp),%edx
c00321a3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00321a8:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c00321ac:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c00321b3:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c00321b9:	5b                   	pop    %ebx
c00321ba:	5e                   	pop    %esi
c00321bb:	5f                   	pop    %edi
c00321bc:	5d                   	pop    %ebp
c00321bd:	c3                   	ret    
c00321be:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c00321c3:	89 c8                	mov    %ecx,%eax
c00321c5:	e9 33 ff ff ff       	jmp    c00320fd <_svfprintf_r+0x12d>
c00321ca:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00321d0:	8b 45 14             	mov    0x14(%ebp),%eax
c00321d3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00321d6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00321dd:	8d 70 04             	lea    0x4(%eax),%esi
c00321e0:	8b 00                	mov    (%eax),%eax
c00321e2:	85 c0                	test   %eax,%eax
c00321e4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00321ea:	0f 84 7f 18 00 00    	je     c0033a6f <_svfprintf_r+0x1a9f>
c00321f0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00321f6:	85 c0                	test   %eax,%eax
c00321f8:	0f 88 b6 17 00 00    	js     c00339b4 <_svfprintf_r+0x19e4>
c00321fe:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032202:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032208:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c003220f:	00 
c0032210:	89 04 24             	mov    %eax,(%esp)
c0032213:	e8 f8 38 00 00       	call   c0035b10 <memchr>
c0032218:	85 c0                	test   %eax,%eax
c003221a:	0f 84 a0 19 00 00    	je     c0033bc0 <_svfprintf_r+0x1bf0>
c0032220:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0032226:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c003222c:	39 d0                	cmp    %edx,%eax
c003222e:	0f 4f c2             	cmovg  %edx,%eax
c0032231:	89 c2                	mov    %eax,%edx
c0032233:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003223a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032240:	31 c0                	xor    %eax,%eax
c0032242:	85 d2                	test   %edx,%edx
c0032244:	0f 49 c2             	cmovns %edx,%eax
c0032247:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c003224d:	89 75 14             	mov    %esi,0x14(%ebp)
c0032250:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032257:	00 00 00 
c003225a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032261:	00 00 00 
c0032264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032268:	84 db                	test   %bl,%bl
c003226a:	74 07                	je     c0032273 <_svfprintf_r+0x2a3>
c003226c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032273:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032279:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003227f:	89 c8                	mov    %ecx,%eax
c0032281:	89 f2                	mov    %esi,%edx
c0032283:	83 c0 02             	add    $0x2,%eax
c0032286:	83 e2 02             	and    $0x2,%edx
c0032289:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003228f:	89 f2                	mov    %esi,%edx
c0032291:	0f 44 c1             	cmove  %ecx,%eax
c0032294:	81 e2 84 00 00 00    	and    $0x84,%edx
c003229a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00322a0:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c00322a6:	0f 85 1c 06 00 00    	jne    c00328c8 <_svfprintf_r+0x8f8>
c00322ac:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c00322b2:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c00322b8:	85 f6                	test   %esi,%esi
c00322ba:	0f 8e 08 06 00 00    	jle    c00328c8 <_svfprintf_r+0x8f8>
c00322c0:	83 fe 10             	cmp    $0x10,%esi
c00322c3:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00322c9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00322cf:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00322d5:	7f 11                	jg     c00322e8 <_svfprintf_r+0x318>
c00322d7:	eb 6b                	jmp    c0032344 <_svfprintf_r+0x374>
c00322d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00322e0:	83 ee 10             	sub    $0x10,%esi
c00322e3:	83 fe 10             	cmp    $0x10,%esi
c00322e6:	7e 5c                	jle    c0032344 <_svfprintf_r+0x374>
c00322e8:	83 c0 01             	add    $0x1,%eax
c00322eb:	83 c1 10             	add    $0x10,%ecx
c00322ee:	c7 07 f8 9a 03 c0    	movl   $0xc0039af8,(%edi)
c00322f4:	83 c7 08             	add    $0x8,%edi
c00322f7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00322fe:	83 f8 07             	cmp    $0x7,%eax
c0032301:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032307:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003230d:	7e d1                	jle    c00322e0 <_svfprintf_r+0x310>
c003230f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032312:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032316:	89 44 24 04          	mov    %eax,0x4(%esp)
c003231a:	8b 45 08             	mov    0x8(%ebp),%eax
c003231d:	89 04 24             	mov    %eax,(%esp)
c0032320:	e8 2b 48 00 00       	call   c0036b50 <__ssprint_r>
c0032325:	85 c0                	test   %eax,%eax
c0032327:	0f 85 73 fe ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c003232d:	83 ee 10             	sub    $0x10,%esi
c0032330:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032336:	83 fe 10             	cmp    $0x10,%esi
c0032339:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003233f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032342:	7f a4                	jg     c00322e8 <_svfprintf_r+0x318>
c0032344:	83 c0 01             	add    $0x1,%eax
c0032347:	01 f1                	add    %esi,%ecx
c0032349:	83 f8 07             	cmp    $0x7,%eax
c003234c:	c7 07 f8 9a 03 c0    	movl   $0xc0039af8,(%edi)
c0032352:	89 77 04             	mov    %esi,0x4(%edi)
c0032355:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003235b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032361:	0f 8f 16 0e 00 00    	jg     c003317d <_svfprintf_r+0x11ad>
c0032367:	83 c7 08             	add    $0x8,%edi
c003236a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032371:	e9 58 05 00 00       	jmp    c00328ce <_svfprintf_r+0x8fe>
c0032376:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003237d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032383:	8b 45 14             	mov    0x14(%ebp),%eax
c0032386:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032389:	0f 85 fd 04 00 00    	jne    c003288c <_svfprintf_r+0x8bc>
c003238f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032396:	0f 84 f0 04 00 00    	je     c003288c <_svfprintf_r+0x8bc>
c003239c:	0f b7 08             	movzwl (%eax),%ecx
c003239f:	83 c0 04             	add    $0x4,%eax
c00323a2:	89 45 14             	mov    %eax,0x14(%ebp)
c00323a5:	b8 01 00 00 00       	mov    $0x1,%eax
c00323aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00323b0:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00323b7:	31 db                	xor    %ebx,%ebx
c00323b9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c00323bf:	89 f2                	mov    %esi,%edx
c00323c1:	80 e2 7f             	and    $0x7f,%dl
c00323c4:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c00323cb:	0f 48 d6             	cmovs  %esi,%edx
c00323ce:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c00323d4:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00323da:	85 d2                	test   %edx,%edx
c00323dc:	75 08                	jne    c00323e6 <_svfprintf_r+0x416>
c00323de:	85 c9                	test   %ecx,%ecx
c00323e0:	0f 84 ea 08 00 00    	je     c0032cd0 <_svfprintf_r+0xd00>
c00323e6:	3c 01                	cmp    $0x1,%al
c00323e8:	0f 84 6a 0d 00 00    	je     c0033158 <_svfprintf_r+0x1188>
c00323ee:	3c 02                	cmp    $0x2,%al
c00323f0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00323f3:	0f 85 bf 0b 00 00    	jne    c0032fb8 <_svfprintf_r+0xfe8>
c00323f9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c00323ff:	90                   	nop
c0032400:	89 ca                	mov    %ecx,%edx
c0032402:	83 e8 01             	sub    $0x1,%eax
c0032405:	83 e2 0f             	and    $0xf,%edx
c0032408:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c003240c:	c1 e9 04             	shr    $0x4,%ecx
c003240f:	85 c9                	test   %ecx,%ecx
c0032411:	88 10                	mov    %dl,(%eax)
c0032413:	75 eb                	jne    c0032400 <_svfprintf_r+0x430>
c0032415:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0032418:	29 c2                	sub    %eax,%edx
c003241a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032420:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0032426:	66 90                	xchg   %ax,%ax
c0032428:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c003242e:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0032434:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003243b:	00 00 00 
c003243e:	39 c2                	cmp    %eax,%edx
c0032440:	0f 4d c2             	cmovge %edx,%eax
c0032443:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032449:	e9 1a fe ff ff       	jmp    c0032268 <_svfprintf_r+0x298>
c003244e:	84 db                	test   %bl,%bl
c0032450:	89 c8                	mov    %ecx,%eax
c0032452:	0f 44 de             	cmove  %esi,%ebx
c0032455:	e9 a3 fc ff ff       	jmp    c00320fd <_svfprintf_r+0x12d>
c003245a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032461:	89 c8                	mov    %ecx,%eax
c0032463:	e9 95 fc ff ff       	jmp    c00320fd <_svfprintf_r+0x12d>
c0032468:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003246f:	00 00 00 
c0032472:	89 c8                	mov    %ecx,%eax
c0032474:	e9 84 fc ff ff       	jmp    c00320fd <_svfprintf_r+0x12d>
c0032479:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003247f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032482:	31 ff                	xor    %edi,%edi
c0032484:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003248b:	00 00 00 
c003248e:	66 90                	xchg   %ax,%ax
c0032490:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032493:	83 c1 01             	add    $0x1,%ecx
c0032496:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032499:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003249d:	8d 50 d0             	lea    -0x30(%eax),%edx
c00324a0:	83 fa 09             	cmp    $0x9,%edx
c00324a3:	76 eb                	jbe    c0032490 <_svfprintf_r+0x4c0>
c00324a5:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c00324ab:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00324b1:	e9 4d fc ff ff       	jmp    c0032103 <_svfprintf_r+0x133>
c00324b6:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00324bd:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00324c4:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00324ca:	8b 45 14             	mov    0x14(%ebp),%eax
c00324cd:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324d0:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00324d6:	0f 85 61 02 00 00    	jne    c003273d <_svfprintf_r+0x76d>
c00324dc:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00324e3:	0f 84 54 02 00 00    	je     c003273d <_svfprintf_r+0x76d>
c00324e9:	0f bf 08             	movswl (%eax),%ecx
c00324ec:	83 c0 04             	add    $0x4,%eax
c00324ef:	89 45 14             	mov    %eax,0x14(%ebp)
c00324f2:	85 c9                	test   %ecx,%ecx
c00324f4:	0f 88 53 02 00 00    	js     c003274d <_svfprintf_r+0x77d>
c00324fa:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032501:	b8 01 00 00 00       	mov    $0x1,%eax
c0032506:	e9 ae fe ff ff       	jmp    c00323b9 <_svfprintf_r+0x3e9>
c003250b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0032512:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032518:	8b 45 14             	mov    0x14(%ebp),%eax
c003251b:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003251e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032524:	0f 84 15 10 00 00    	je     c003353f <_svfprintf_r+0x156f>
c003252a:	db 28                	fldt   (%eax)
c003252c:	83 c0 0c             	add    $0xc,%eax
c003252f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032532:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032538:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c003253e:	dd 1c 24             	fstpl  (%esp)
c0032541:	e8 aa 44 00 00       	call   c00369f0 <__fpclassifyd>
c0032546:	83 f8 01             	cmp    $0x1,%eax
c0032549:	0f 85 82 0f 00 00    	jne    c00334d1 <_svfprintf_r+0x1501>
c003254f:	d9 ee                	fldz   
c0032551:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032557:	d9 c9                	fxch   %st(1)
c0032559:	df e9                	fucomip %st(1),%st
c003255b:	dd d8                	fstp   %st(0)
c003255d:	0f 87 59 15 00 00    	ja     c0033abc <_svfprintf_r+0x1aec>
c0032563:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003256a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032571:	ba 46 99 03 c0       	mov    $0xc0039946,%edx
c0032576:	b8 4a 99 03 c0       	mov    $0xc003994a,%eax
c003257b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032582:	00 00 00 
c0032585:	0f 4e c2             	cmovle %edx,%eax
c0032588:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003258e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032595:	ff ff ff 
c0032598:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003259f:	00 00 00 
c00325a2:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00325a9:	00 00 00 
c00325ac:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00325b3:	00 00 00 
c00325b6:	e9 ad fc ff ff       	jmp    c0032268 <_svfprintf_r+0x298>
c00325bb:	8d 41 01             	lea    0x1(%ecx),%eax
c00325be:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00325c4:	0f be 01             	movsbl (%ecx),%eax
c00325c7:	83 f8 2a             	cmp    $0x2a,%eax
c00325ca:	0f 84 84 18 00 00    	je     c0033e54 <_svfprintf_r+0x1e84>
c00325d0:	8d 50 d0             	lea    -0x30(%eax),%edx
c00325d3:	31 c9                	xor    %ecx,%ecx
c00325d5:	83 fa 09             	cmp    $0x9,%edx
c00325d8:	0f 87 a8 16 00 00    	ja     c0033c86 <_svfprintf_r+0x1cb6>
c00325de:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c00325e4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00325ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00325f0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c00325f3:	83 c7 01             	add    $0x1,%edi
c00325f6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c00325f9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c00325fd:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032600:	83 fa 09             	cmp    $0x9,%edx
c0032603:	76 eb                	jbe    c00325f0 <_svfprintf_r+0x620>
c0032605:	85 c9                	test   %ecx,%ecx
c0032607:	89 ca                	mov    %ecx,%edx
c0032609:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c003260e:	0f 48 d1             	cmovs  %ecx,%edx
c0032611:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032617:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c003261d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032623:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0032629:	e9 d5 fa ff ff       	jmp    c0032103 <_svfprintf_r+0x133>
c003262e:	8b 45 14             	mov    0x14(%ebp),%eax
c0032631:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032634:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c003263b:	8b 08                	mov    (%eax),%ecx
c003263d:	83 c0 04             	add    $0x4,%eax
c0032640:	89 45 14             	mov    %eax,0x14(%ebp)
c0032643:	b8 02 00 00 00       	mov    $0x2,%eax
c0032648:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c003264f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032656:	c7 85 18 ff ff ff 67 	movl   $0xc0039967,-0xe8(%ebp)
c003265d:	99 03 c0 
c0032660:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032667:	00 00 00 
c003266a:	e9 41 fd ff ff       	jmp    c00323b0 <_svfprintf_r+0x3e0>
c003266f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032676:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003267c:	8b 45 14             	mov    0x14(%ebp),%eax
c003267f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032682:	0f 85 87 00 00 00    	jne    c003270f <_svfprintf_r+0x73f>
c0032688:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003268f:	74 7e                	je     c003270f <_svfprintf_r+0x73f>
c0032691:	0f b7 08             	movzwl (%eax),%ecx
c0032694:	83 c0 04             	add    $0x4,%eax
c0032697:	89 45 14             	mov    %eax,0x14(%ebp)
c003269a:	31 c0                	xor    %eax,%eax
c003269c:	e9 0f fd ff ff       	jmp    c00323b0 <_svfprintf_r+0x3e0>
c00326a1:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c00326a8:	89 c8                	mov    %ecx,%eax
c00326aa:	e9 4e fa ff ff       	jmp    c00320fd <_svfprintf_r+0x12d>
c00326af:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326b6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326b9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00326bf:	0f 85 97 0b 00 00    	jne    c003325c <_svfprintf_r+0x128c>
c00326c5:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00326cc:	0f 84 8a 0b 00 00    	je     c003325c <_svfprintf_r+0x128c>
c00326d2:	8b 45 14             	mov    0x14(%ebp),%eax
c00326d5:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c00326dc:	8b 00                	mov    (%eax),%eax
c00326de:	66 89 10             	mov    %dx,(%eax)
c00326e1:	8b 45 14             	mov    0x14(%ebp),%eax
c00326e4:	83 c0 04             	add    $0x4,%eax
c00326e7:	89 45 14             	mov    %eax,0x14(%ebp)
c00326ea:	e9 7c f9 ff ff       	jmp    c003206b <_svfprintf_r+0x9b>
c00326ef:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00326f6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326fd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032703:	8b 45 14             	mov    0x14(%ebp),%eax
c0032706:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032709:	0f 84 79 ff ff ff    	je     c0032688 <_svfprintf_r+0x6b8>
c003270f:	8b 08                	mov    (%eax),%ecx
c0032711:	83 c0 04             	add    $0x4,%eax
c0032714:	89 45 14             	mov    %eax,0x14(%ebp)
c0032717:	31 c0                	xor    %eax,%eax
c0032719:	e9 92 fc ff ff       	jmp    c00323b0 <_svfprintf_r+0x3e0>
c003271e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032725:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003272b:	8b 45 14             	mov    0x14(%ebp),%eax
c003272e:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032731:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032737:	0f 84 9f fd ff ff    	je     c00324dc <_svfprintf_r+0x50c>
c003273d:	8b 08                	mov    (%eax),%ecx
c003273f:	83 c0 04             	add    $0x4,%eax
c0032742:	89 45 14             	mov    %eax,0x14(%ebp)
c0032745:	85 c9                	test   %ecx,%ecx
c0032747:	0f 89 ad fd ff ff    	jns    c00324fa <_svfprintf_r+0x52a>
c003274d:	f7 d9                	neg    %ecx
c003274f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032754:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c003275b:	b8 01 00 00 00       	mov    $0x1,%eax
c0032760:	e9 54 fc ff ff       	jmp    c00323b9 <_svfprintf_r+0x3e9>
c0032765:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c003276c:	89 c8                	mov    %ecx,%eax
c003276e:	e9 8a f9 ff ff       	jmp    c00320fd <_svfprintf_r+0x12d>
c0032773:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003277a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032780:	8b 45 14             	mov    0x14(%ebp),%eax
c0032783:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032786:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003278c:	c7 85 18 ff ff ff 67 	movl   $0xc0039967,-0xe8(%ebp)
c0032793:	99 03 c0 
c0032796:	75 71                	jne    c0032809 <_svfprintf_r+0x839>
c0032798:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003279f:	74 68                	je     c0032809 <_svfprintf_r+0x839>
c00327a1:	0f b7 08             	movzwl (%eax),%ecx
c00327a4:	83 c0 04             	add    $0x4,%eax
c00327a7:	89 45 14             	mov    %eax,0x14(%ebp)
c00327aa:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00327b1:	b8 02 00 00 00       	mov    $0x2,%eax
c00327b6:	0f 84 f4 fb ff ff    	je     c00323b0 <_svfprintf_r+0x3e0>
c00327bc:	85 c9                	test   %ecx,%ecx
c00327be:	0f 84 ec fb ff ff    	je     c00323b0 <_svfprintf_r+0x3e0>
c00327c4:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c00327cb:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00327d2:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00327d9:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c00327df:	e9 cc fb ff ff       	jmp    c00323b0 <_svfprintf_r+0x3e0>
c00327e4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00327eb:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327f1:	8b 45 14             	mov    0x14(%ebp),%eax
c00327f4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327f7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00327fd:	c7 85 18 ff ff ff 56 	movl   $0xc0039956,-0xe8(%ebp)
c0032804:	99 03 c0 
c0032807:	74 8f                	je     c0032798 <_svfprintf_r+0x7c8>
c0032809:	8b 08                	mov    (%eax),%ecx
c003280b:	83 c0 04             	add    $0x4,%eax
c003280e:	89 45 14             	mov    %eax,0x14(%ebp)
c0032811:	eb 97                	jmp    c00327aa <_svfprintf_r+0x7da>
c0032813:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032819:	8b 45 14             	mov    0x14(%ebp),%eax
c003281c:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003281f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032826:	8b 00                	mov    (%eax),%eax
c0032828:	88 45 80             	mov    %al,-0x80(%ebp)
c003282b:	8b 45 14             	mov    0x14(%ebp),%eax
c003282e:	83 c0 04             	add    $0x4,%eax
c0032831:	89 45 14             	mov    %eax,0x14(%ebp)
c0032834:	8d 45 80             	lea    -0x80(%ebp),%eax
c0032837:	31 db                	xor    %ebx,%ebx
c0032839:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032840:	00 00 00 
c0032843:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c003284a:	00 00 00 
c003284d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032854:	00 00 00 
c0032857:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003285e:	00 00 00 
c0032861:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032867:	e9 07 fa ff ff       	jmp    c0032273 <_svfprintf_r+0x2a3>
c003286c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032873:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003287a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032880:	8b 45 14             	mov    0x14(%ebp),%eax
c0032883:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032886:	0f 84 03 fb ff ff    	je     c003238f <_svfprintf_r+0x3bf>
c003288c:	8b 08                	mov    (%eax),%ecx
c003288e:	83 c0 04             	add    $0x4,%eax
c0032891:	89 45 14             	mov    %eax,0x14(%ebp)
c0032894:	b8 01 00 00 00       	mov    $0x1,%eax
c0032899:	e9 12 fb ff ff       	jmp    c00323b0 <_svfprintf_r+0x3e0>
c003289e:	85 c0                	test   %eax,%eax
c00328a0:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00328a6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00328a9:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00328af:	0f 84 c3 f8 ff ff    	je     c0032178 <_svfprintf_r+0x1a8>
c00328b5:	88 45 80             	mov    %al,-0x80(%ebp)
c00328b8:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00328bf:	e9 70 ff ff ff       	jmp    c0032834 <_svfprintf_r+0x864>
c00328c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00328c8:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00328ce:	84 db                	test   %bl,%bl
c00328d0:	74 33                	je     c0032905 <_svfprintf_r+0x935>
c00328d2:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c00328d8:	83 c1 01             	add    $0x1,%ecx
c00328db:	89 07                	mov    %eax,(%edi)
c00328dd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328e3:	83 c7 08             	add    $0x8,%edi
c00328e6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c00328ed:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328f3:	83 c0 01             	add    $0x1,%eax
c00328f6:	83 f8 07             	cmp    $0x7,%eax
c00328f9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328ff:	0f 8f 7b 06 00 00    	jg     c0032f80 <_svfprintf_r+0xfb0>
c0032905:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c003290b:	85 db                	test   %ebx,%ebx
c003290d:	74 33                	je     c0032942 <_svfprintf_r+0x972>
c003290f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0032915:	83 c1 02             	add    $0x2,%ecx
c0032918:	89 07                	mov    %eax,(%edi)
c003291a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032920:	83 c7 08             	add    $0x8,%edi
c0032923:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c003292a:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032930:	83 c0 01             	add    $0x1,%eax
c0032933:	83 f8 07             	cmp    $0x7,%eax
c0032936:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003293c:	0f 8f 06 06 00 00    	jg     c0032f48 <_svfprintf_r+0xf78>
c0032942:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0032949:	00 00 00 
c003294c:	0f 84 c6 03 00 00    	je     c0032d18 <_svfprintf_r+0xd48>
c0032952:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0032958:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c003295e:	85 f6                	test   %esi,%esi
c0032960:	0f 8e d2 00 00 00    	jle    c0032a38 <_svfprintf_r+0xa68>
c0032966:	83 fe 10             	cmp    $0x10,%esi
c0032969:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003296f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032975:	7f 11                	jg     c0032988 <_svfprintf_r+0x9b8>
c0032977:	eb 6b                	jmp    c00329e4 <_svfprintf_r+0xa14>
c0032979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032980:	83 ee 10             	sub    $0x10,%esi
c0032983:	83 fe 10             	cmp    $0x10,%esi
c0032986:	7e 5c                	jle    c00329e4 <_svfprintf_r+0xa14>
c0032988:	83 c0 01             	add    $0x1,%eax
c003298b:	83 c1 10             	add    $0x10,%ecx
c003298e:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c0032994:	83 c7 08             	add    $0x8,%edi
c0032997:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003299e:	83 f8 07             	cmp    $0x7,%eax
c00329a1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329a7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329ad:	7e d1                	jle    c0032980 <_svfprintf_r+0x9b0>
c00329af:	8b 45 0c             	mov    0xc(%ebp),%eax
c00329b2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00329b6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00329ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00329bd:	89 04 24             	mov    %eax,(%esp)
c00329c0:	e8 8b 41 00 00       	call   c0036b50 <__ssprint_r>
c00329c5:	85 c0                	test   %eax,%eax
c00329c7:	0f 85 d3 f7 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c00329cd:	83 ee 10             	sub    $0x10,%esi
c00329d0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00329d6:	83 fe 10             	cmp    $0x10,%esi
c00329d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329df:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329e2:	7f a4                	jg     c0032988 <_svfprintf_r+0x9b8>
c00329e4:	83 c0 01             	add    $0x1,%eax
c00329e7:	01 f1                	add    %esi,%ecx
c00329e9:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c00329ef:	83 c7 08             	add    $0x8,%edi
c00329f2:	89 77 fc             	mov    %esi,-0x4(%edi)
c00329f5:	83 f8 07             	cmp    $0x7,%eax
c00329f8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329fe:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a04:	7e 32                	jle    c0032a38 <_svfprintf_r+0xa68>
c0032a06:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032a0c:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032a10:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a13:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a17:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a1a:	89 04 24             	mov    %eax,(%esp)
c0032a1d:	e8 2e 41 00 00       	call   c0036b50 <__ssprint_r>
c0032a22:	85 c0                	test   %eax,%eax
c0032a24:	0f 85 76 f7 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0032a2a:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a30:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a33:	90                   	nop
c0032a34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032a38:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c0032a3f:	01 00 00 
c0032a42:	0f 85 50 01 00 00    	jne    c0032b98 <_svfprintf_r+0xbc8>
c0032a48:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032a4e:	89 07                	mov    %eax,(%edi)
c0032a50:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032a56:	01 c1                	add    %eax,%ecx
c0032a58:	89 47 04             	mov    %eax,0x4(%edi)
c0032a5b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a61:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a67:	83 c0 01             	add    $0x1,%eax
c0032a6a:	83 f8 07             	cmp    $0x7,%eax
c0032a6d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a73:	0f 8f 6a 04 00 00    	jg     c0032ee3 <_svfprintf_r+0xf13>
c0032a79:	83 c7 08             	add    $0x8,%edi
c0032a7c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032a83:	0f 84 d7 00 00 00    	je     c0032b60 <_svfprintf_r+0xb90>
c0032a89:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a8f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032a95:	85 f6                	test   %esi,%esi
c0032a97:	0f 8e c3 00 00 00    	jle    c0032b60 <_svfprintf_r+0xb90>
c0032a9d:	83 fe 10             	cmp    $0x10,%esi
c0032aa0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032aa6:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032aac:	7f 0a                	jg     c0032ab8 <_svfprintf_r+0xae8>
c0032aae:	eb 64                	jmp    c0032b14 <_svfprintf_r+0xb44>
c0032ab0:	83 ee 10             	sub    $0x10,%esi
c0032ab3:	83 fe 10             	cmp    $0x10,%esi
c0032ab6:	7e 5c                	jle    c0032b14 <_svfprintf_r+0xb44>
c0032ab8:	83 c0 01             	add    $0x1,%eax
c0032abb:	83 c1 10             	add    $0x10,%ecx
c0032abe:	c7 07 f8 9a 03 c0    	movl   $0xc0039af8,(%edi)
c0032ac4:	83 c7 08             	add    $0x8,%edi
c0032ac7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032ace:	83 f8 07             	cmp    $0x7,%eax
c0032ad1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ad7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032add:	7e d1                	jle    c0032ab0 <_svfprintf_r+0xae0>
c0032adf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ae2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032ae6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032aea:	8b 45 08             	mov    0x8(%ebp),%eax
c0032aed:	89 04 24             	mov    %eax,(%esp)
c0032af0:	e8 5b 40 00 00       	call   c0036b50 <__ssprint_r>
c0032af5:	85 c0                	test   %eax,%eax
c0032af7:	0f 85 a3 f6 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0032afd:	83 ee 10             	sub    $0x10,%esi
c0032b00:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b06:	83 fe 10             	cmp    $0x10,%esi
c0032b09:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b0f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b12:	7f a4                	jg     c0032ab8 <_svfprintf_r+0xae8>
c0032b14:	83 c0 01             	add    $0x1,%eax
c0032b17:	01 f1                	add    %esi,%ecx
c0032b19:	83 f8 07             	cmp    $0x7,%eax
c0032b1c:	c7 07 f8 9a 03 c0    	movl   $0xc0039af8,(%edi)
c0032b22:	89 77 04             	mov    %esi,0x4(%edi)
c0032b25:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b2b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b31:	7e 2d                	jle    c0032b60 <_svfprintf_r+0xb90>
c0032b33:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032b39:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032b3d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032b40:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032b44:	8b 45 08             	mov    0x8(%ebp),%eax
c0032b47:	89 04 24             	mov    %eax,(%esp)
c0032b4a:	e8 01 40 00 00       	call   c0036b50 <__ssprint_r>
c0032b4f:	85 c0                	test   %eax,%eax
c0032b51:	0f 85 49 f6 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0032b57:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b5d:	8d 76 00             	lea    0x0(%esi),%esi
c0032b60:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032b66:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032b6c:	39 c2                	cmp    %eax,%edx
c0032b6e:	0f 4d c2             	cmovge %edx,%eax
c0032b71:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032b77:	85 c9                	test   %ecx,%ecx
c0032b79:	0f 85 99 03 00 00    	jne    c0032f18 <_svfprintf_r+0xf48>
c0032b7f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032b86:	00 00 00 
c0032b89:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b8c:	e9 da f4 ff ff       	jmp    c003206b <_svfprintf_r+0x9b>
c0032b91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032b98:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032b9f:	0f 8e 5b 02 00 00    	jle    c0032e00 <_svfprintf_r+0xe30>
c0032ba5:	d9 ee                	fldz   
c0032ba7:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032bad:	df e9                	fucomip %st(1),%st
c0032baf:	dd d8                	fstp   %st(0)
c0032bb1:	0f 8a 59 04 00 00    	jp     c0033010 <_svfprintf_r+0x1040>
c0032bb7:	0f 85 53 04 00 00    	jne    c0033010 <_svfprintf_r+0x1040>
c0032bbd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032bc3:	83 c1 01             	add    $0x1,%ecx
c0032bc6:	83 c7 08             	add    $0x8,%edi
c0032bc9:	c7 47 f8 7f 99 03 c0 	movl   $0xc003997f,-0x8(%edi)
c0032bd0:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032bd7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bdd:	83 c0 01             	add    $0x1,%eax
c0032be0:	83 f8 07             	cmp    $0x7,%eax
c0032be3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032be9:	0f 8f 63 09 00 00    	jg     c0033552 <_svfprintf_r+0x1582>
c0032bef:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032bf5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032bfb:	7c 0d                	jl     c0032c0a <_svfprintf_r+0xc3a>
c0032bfd:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032c04:	0f 84 72 fe ff ff    	je     c0032a7c <_svfprintf_r+0xaac>
c0032c0a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032c10:	83 c7 08             	add    $0x8,%edi
c0032c13:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032c16:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032c1c:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032c1f:	01 c1                	add    %eax,%ecx
c0032c21:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c27:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c2d:	83 c0 01             	add    $0x1,%eax
c0032c30:	83 f8 07             	cmp    $0x7,%eax
c0032c33:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c39:	0f 8f dc 0b 00 00    	jg     c003381b <_svfprintf_r+0x184b>
c0032c3f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032c45:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032c48:	85 f6                	test   %esi,%esi
c0032c4a:	0f 8e 2c fe ff ff    	jle    c0032a7c <_svfprintf_r+0xaac>
c0032c50:	83 fe 10             	cmp    $0x10,%esi
c0032c53:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c59:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032c5f:	7f 13                	jg     c0032c74 <_svfprintf_r+0xca4>
c0032c61:	e9 e6 05 00 00       	jmp    c003324c <_svfprintf_r+0x127c>
c0032c66:	66 90                	xchg   %ax,%ax
c0032c68:	83 ee 10             	sub    $0x10,%esi
c0032c6b:	83 fe 10             	cmp    $0x10,%esi
c0032c6e:	0f 8e d8 05 00 00    	jle    c003324c <_svfprintf_r+0x127c>
c0032c74:	83 c0 01             	add    $0x1,%eax
c0032c77:	83 c1 10             	add    $0x10,%ecx
c0032c7a:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c0032c80:	83 c7 08             	add    $0x8,%edi
c0032c83:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032c8a:	83 f8 07             	cmp    $0x7,%eax
c0032c8d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c93:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c99:	7e cd                	jle    c0032c68 <_svfprintf_r+0xc98>
c0032c9b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c9e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032ca2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ca6:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ca9:	89 04 24             	mov    %eax,(%esp)
c0032cac:	e8 9f 3e 00 00       	call   c0036b50 <__ssprint_r>
c0032cb1:	85 c0                	test   %eax,%eax
c0032cb3:	0f 85 e7 f4 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0032cb9:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032cbf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032cc2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cc8:	eb 9e                	jmp    c0032c68 <_svfprintf_r+0xc98>
c0032cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032cd0:	84 c0                	test   %al,%al
c0032cd2:	75 2c                	jne    c0032d00 <_svfprintf_r+0xd30>
c0032cd4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032cdb:	74 23                	je     c0032d00 <_svfprintf_r+0xd30>
c0032cdd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032ce3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032ce7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032ced:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032cf0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032cf6:	e9 2d f7 ff ff       	jmp    c0032428 <_svfprintf_r+0x458>
c0032cfb:	90                   	nop
c0032cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032d00:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032d03:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032d0a:	00 00 00 
c0032d0d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032d13:	e9 10 f7 ff ff       	jmp    c0032428 <_svfprintf_r+0x458>
c0032d18:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032d1e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032d24:	85 f6                	test   %esi,%esi
c0032d26:	0f 8e 26 fc ff ff    	jle    c0032952 <_svfprintf_r+0x982>
c0032d2c:	83 fe 10             	cmp    $0x10,%esi
c0032d2f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d35:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032d3b:	7f 0b                	jg     c0032d48 <_svfprintf_r+0xd78>
c0032d3d:	eb 65                	jmp    c0032da4 <_svfprintf_r+0xdd4>
c0032d3f:	90                   	nop
c0032d40:	83 ee 10             	sub    $0x10,%esi
c0032d43:	83 fe 10             	cmp    $0x10,%esi
c0032d46:	7e 5c                	jle    c0032da4 <_svfprintf_r+0xdd4>
c0032d48:	83 c0 01             	add    $0x1,%eax
c0032d4b:	83 c1 10             	add    $0x10,%ecx
c0032d4e:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c0032d54:	83 c7 08             	add    $0x8,%edi
c0032d57:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032d5e:	83 f8 07             	cmp    $0x7,%eax
c0032d61:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d67:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d6d:	7e d1                	jle    c0032d40 <_svfprintf_r+0xd70>
c0032d6f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d72:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d76:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d7a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d7d:	89 04 24             	mov    %eax,(%esp)
c0032d80:	e8 cb 3d 00 00       	call   c0036b50 <__ssprint_r>
c0032d85:	85 c0                	test   %eax,%eax
c0032d87:	0f 85 13 f4 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0032d8d:	83 ee 10             	sub    $0x10,%esi
c0032d90:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d96:	83 fe 10             	cmp    $0x10,%esi
c0032d99:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d9f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032da2:	7f a4                	jg     c0032d48 <_svfprintf_r+0xd78>
c0032da4:	83 c0 01             	add    $0x1,%eax
c0032da7:	01 f1                	add    %esi,%ecx
c0032da9:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c0032daf:	83 c7 08             	add    $0x8,%edi
c0032db2:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032db5:	83 f8 07             	cmp    $0x7,%eax
c0032db8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032dbe:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dc4:	0f 8e 88 fb ff ff    	jle    c0032952 <_svfprintf_r+0x982>
c0032dca:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032dd0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032dd4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032dd7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ddb:	8b 45 08             	mov    0x8(%ebp),%eax
c0032dde:	89 04 24             	mov    %eax,(%esp)
c0032de1:	e8 6a 3d 00 00       	call   c0036b50 <__ssprint_r>
c0032de6:	85 c0                	test   %eax,%eax
c0032de8:	0f 85 b2 f3 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0032dee:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032df4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032df7:	e9 56 fb ff ff       	jmp    c0032952 <_svfprintf_r+0x982>
c0032dfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032e00:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032e07:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032e0d:	0f 8e df 05 00 00    	jle    c00333f2 <_svfprintf_r+0x1422>
c0032e13:	89 07                	mov    %eax,(%edi)
c0032e15:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032e1b:	8d 51 01             	lea    0x1(%ecx),%edx
c0032e1e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032e25:	83 c7 08             	add    $0x8,%edi
c0032e28:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e2e:	83 c0 01             	add    $0x1,%eax
c0032e31:	83 f8 07             	cmp    $0x7,%eax
c0032e34:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e3a:	0f 8f 59 06 00 00    	jg     c0033499 <_svfprintf_r+0x14c9>
c0032e40:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032e46:	83 c0 01             	add    $0x1,%eax
c0032e49:	83 c7 08             	add    $0x8,%edi
c0032e4c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e52:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032e55:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032e5b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032e5e:	01 da                	add    %ebx,%edx
c0032e60:	83 f8 07             	cmp    $0x7,%eax
c0032e63:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e69:	0f 8f f2 05 00 00    	jg     c0033461 <_svfprintf_r+0x1491>
c0032e6f:	d9 ee                	fldz   
c0032e71:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032e77:	df e9                	fucomip %st(1),%st
c0032e79:	dd d8                	fstp   %st(0)
c0032e7b:	7a 06                	jp     c0032e83 <_svfprintf_r+0xeb3>
c0032e7d:	0f 84 33 03 00 00    	je     c00331b6 <_svfprintf_r+0x11e6>
c0032e83:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032e89:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032e8f:	83 c1 01             	add    $0x1,%ecx
c0032e92:	89 0f                	mov    %ecx,(%edi)
c0032e94:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032e97:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032e9a:	01 ca                	add    %ecx,%edx
c0032e9c:	83 c0 01             	add    $0x1,%eax
c0032e9f:	83 f8 07             	cmp    $0x7,%eax
c0032ea2:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032ea8:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032eae:	0f 8f 75 05 00 00    	jg     c0033429 <_svfprintf_r+0x1459>
c0032eb4:	83 c7 08             	add    $0x8,%edi
c0032eb7:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032ebd:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032ec3:	89 0f                	mov    %ecx,(%edi)
c0032ec5:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032ec8:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032ecb:	83 c0 01             	add    $0x1,%eax
c0032ece:	83 f8 07             	cmp    $0x7,%eax
c0032ed1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ed7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032edd:	0f 8e 96 fb ff ff    	jle    c0032a79 <_svfprintf_r+0xaa9>
c0032ee3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ee9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032eed:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ef0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ef4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ef7:	89 04 24             	mov    %eax,(%esp)
c0032efa:	e8 51 3c 00 00       	call   c0036b50 <__ssprint_r>
c0032eff:	85 c0                	test   %eax,%eax
c0032f01:	0f 85 99 f2 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0032f07:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f0d:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f10:	e9 67 fb ff ff       	jmp    c0032a7c <_svfprintf_r+0xaac>
c0032f15:	8d 76 00             	lea    0x0(%esi),%esi
c0032f18:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f1e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f22:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f25:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f29:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f2c:	89 04 24             	mov    %eax,(%esp)
c0032f2f:	e8 1c 3c 00 00       	call   c0036b50 <__ssprint_r>
c0032f34:	85 c0                	test   %eax,%eax
c0032f36:	0f 84 43 fc ff ff    	je     c0032b7f <_svfprintf_r+0xbaf>
c0032f3c:	e9 5f f2 ff ff       	jmp    c00321a0 <_svfprintf_r+0x1d0>
c0032f41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032f48:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f4e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f52:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f55:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f59:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f5c:	89 04 24             	mov    %eax,(%esp)
c0032f5f:	e8 ec 3b 00 00       	call   c0036b50 <__ssprint_r>
c0032f64:	85 c0                	test   %eax,%eax
c0032f66:	0f 85 34 f2 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0032f6c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f72:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f75:	e9 c8 f9 ff ff       	jmp    c0032942 <_svfprintf_r+0x972>
c0032f7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f80:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f86:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f8a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f8d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f91:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f94:	89 04 24             	mov    %eax,(%esp)
c0032f97:	e8 b4 3b 00 00       	call   c0036b50 <__ssprint_r>
c0032f9c:	85 c0                	test   %eax,%eax
c0032f9e:	0f 85 fc f1 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0032fa4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032faa:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032fad:	e9 53 f9 ff ff       	jmp    c0032905 <_svfprintf_r+0x935>
c0032fb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fb8:	89 c2                	mov    %eax,%edx
c0032fba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fc0:	89 c8                	mov    %ecx,%eax
c0032fc2:	83 ea 01             	sub    $0x1,%edx
c0032fc5:	83 e0 07             	and    $0x7,%eax
c0032fc8:	c1 e9 03             	shr    $0x3,%ecx
c0032fcb:	83 c0 30             	add    $0x30,%eax
c0032fce:	85 c9                	test   %ecx,%ecx
c0032fd0:	88 02                	mov    %al,(%edx)
c0032fd2:	75 ec                	jne    c0032fc0 <_svfprintf_r+0xff0>
c0032fd4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032fdb:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0032fe1:	0f 84 5b 01 00 00    	je     c0033142 <_svfprintf_r+0x1172>
c0032fe7:	3c 30                	cmp    $0x30,%al
c0032fe9:	74 0b                	je     c0032ff6 <_svfprintf_r+0x1026>
c0032feb:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0032ff2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0032ff6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032ff9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0032fff:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033005:	e9 1e f4 ff ff       	jmp    c0032428 <_svfprintf_r+0x458>
c003300a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033010:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033016:	85 db                	test   %ebx,%ebx
c0033018:	0f 8e 66 05 00 00    	jle    c0033584 <_svfprintf_r+0x15b4>
c003301e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033024:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c003302a:	01 d0                	add    %edx,%eax
c003302c:	89 c3                	mov    %eax,%ebx
c003302e:	29 d3                	sub    %edx,%ebx
c0033030:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033036:	89 d0                	mov    %edx,%eax
c0033038:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c003303e:	39 d3                	cmp    %edx,%ebx
c0033040:	0f 4f da             	cmovg  %edx,%ebx
c0033043:	85 db                	test   %ebx,%ebx
c0033045:	7e 28                	jle    c003306f <_svfprintf_r+0x109f>
c0033047:	89 07                	mov    %eax,(%edi)
c0033049:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003304f:	01 d9                	add    %ebx,%ecx
c0033051:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033054:	83 c7 08             	add    $0x8,%edi
c0033057:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003305d:	83 c0 01             	add    $0x1,%eax
c0033060:	83 f8 07             	cmp    $0x7,%eax
c0033063:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033069:	0f 8f 58 09 00 00    	jg     c00339c7 <_svfprintf_r+0x19f7>
c003306f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033075:	31 c0                	xor    %eax,%eax
c0033077:	85 db                	test   %ebx,%ebx
c0033079:	0f 49 c3             	cmovns %ebx,%eax
c003307c:	29 c6                	sub    %eax,%esi
c003307e:	85 f6                	test   %esi,%esi
c0033080:	0f 8e 40 02 00 00    	jle    c00332c6 <_svfprintf_r+0x12f6>
c0033086:	83 fe 10             	cmp    $0x10,%esi
c0033089:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003308f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033095:	7f 15                	jg     c00330ac <_svfprintf_r+0x10dc>
c0033097:	e9 db 01 00 00       	jmp    c0033277 <_svfprintf_r+0x12a7>
c003309c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00330a0:	83 ee 10             	sub    $0x10,%esi
c00330a3:	83 fe 10             	cmp    $0x10,%esi
c00330a6:	0f 8e cb 01 00 00    	jle    c0033277 <_svfprintf_r+0x12a7>
c00330ac:	83 c0 01             	add    $0x1,%eax
c00330af:	83 c1 10             	add    $0x10,%ecx
c00330b2:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c00330b8:	83 c7 08             	add    $0x8,%edi
c00330bb:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00330c2:	83 f8 07             	cmp    $0x7,%eax
c00330c5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00330cb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330d1:	7e cd                	jle    c00330a0 <_svfprintf_r+0x10d0>
c00330d3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00330d6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00330da:	89 44 24 04          	mov    %eax,0x4(%esp)
c00330de:	8b 45 08             	mov    0x8(%ebp),%eax
c00330e1:	89 04 24             	mov    %eax,(%esp)
c00330e4:	e8 67 3a 00 00       	call   c0036b50 <__ssprint_r>
c00330e9:	85 c0                	test   %eax,%eax
c00330eb:	0f 85 af f0 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c00330f1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00330f7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00330fa:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033100:	eb 9e                	jmp    c00330a0 <_svfprintf_r+0x10d0>
c0033102:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033105:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c003310a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0033110:	89 c7                	mov    %eax,%edi
c0033112:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033118:	89 c8                	mov    %ecx,%eax
c003311a:	83 ef 01             	sub    $0x1,%edi
c003311d:	f7 e6                	mul    %esi
c003311f:	c1 ea 03             	shr    $0x3,%edx
c0033122:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033125:	01 c0                	add    %eax,%eax
c0033127:	29 c1                	sub    %eax,%ecx
c0033129:	83 c1 30             	add    $0x30,%ecx
c003312c:	85 d2                	test   %edx,%edx
c003312e:	88 0f                	mov    %cl,(%edi)
c0033130:	89 d1                	mov    %edx,%ecx
c0033132:	75 e4                	jne    c0033118 <_svfprintf_r+0x1148>
c0033134:	89 fa                	mov    %edi,%edx
c0033136:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c003313c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0033142:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033145:	29 d0                	sub    %edx,%eax
c0033147:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003314d:	e9 d6 f2 ff ff       	jmp    c0032428 <_svfprintf_r+0x458>
c0033152:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033158:	83 f9 09             	cmp    $0x9,%ecx
c003315b:	77 a5                	ja     c0033102 <_svfprintf_r+0x1132>
c003315d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033163:	83 c1 30             	add    $0x30,%ecx
c0033166:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033169:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003316f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033172:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033178:	e9 ab f2 ff ff       	jmp    c0032428 <_svfprintf_r+0x458>
c003317d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033183:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033187:	8b 45 0c             	mov    0xc(%ebp),%eax
c003318a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003318e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033191:	89 04 24             	mov    %eax,(%esp)
c0033194:	e8 b7 39 00 00       	call   c0036b50 <__ssprint_r>
c0033199:	85 c0                	test   %eax,%eax
c003319b:	0f 85 ff ef ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c00331a1:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00331a8:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00331ab:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00331b1:	e9 18 f7 ff ff       	jmp    c00328ce <_svfprintf_r+0x8fe>
c00331b6:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00331bc:	8d 73 ff             	lea    -0x1(%ebx),%esi
c00331bf:	85 f6                	test   %esi,%esi
c00331c1:	0f 8e f0 fc ff ff    	jle    c0032eb7 <_svfprintf_r+0xee7>
c00331c7:	83 fe 10             	cmp    $0x10,%esi
c00331ca:	7e 70                	jle    c003323c <_svfprintf_r+0x126c>
c00331cc:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00331d2:	eb 0c                	jmp    c00331e0 <_svfprintf_r+0x1210>
c00331d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00331d8:	83 ee 10             	sub    $0x10,%esi
c00331db:	83 fe 10             	cmp    $0x10,%esi
c00331de:	7e 5c                	jle    c003323c <_svfprintf_r+0x126c>
c00331e0:	83 c0 01             	add    $0x1,%eax
c00331e3:	83 c2 10             	add    $0x10,%edx
c00331e6:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c00331ec:	83 c7 08             	add    $0x8,%edi
c00331ef:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00331f6:	83 f8 07             	cmp    $0x7,%eax
c00331f9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00331ff:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033205:	7e d1                	jle    c00331d8 <_svfprintf_r+0x1208>
c0033207:	8b 45 0c             	mov    0xc(%ebp),%eax
c003320a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003320e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033212:	8b 45 08             	mov    0x8(%ebp),%eax
c0033215:	89 04 24             	mov    %eax,(%esp)
c0033218:	e8 33 39 00 00       	call   c0036b50 <__ssprint_r>
c003321d:	85 c0                	test   %eax,%eax
c003321f:	0f 85 7b ef ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0033225:	83 ee 10             	sub    $0x10,%esi
c0033228:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003322e:	83 fe 10             	cmp    $0x10,%esi
c0033231:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033237:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003323a:	7f a4                	jg     c00331e0 <_svfprintf_r+0x1210>
c003323c:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c0033242:	01 f2                	add    %esi,%edx
c0033244:	89 77 04             	mov    %esi,0x4(%edi)
c0033247:	e9 50 fc ff ff       	jmp    c0032e9c <_svfprintf_r+0xecc>
c003324c:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c0033252:	01 f1                	add    %esi,%ecx
c0033254:	89 77 04             	mov    %esi,0x4(%edi)
c0033257:	e9 6f fc ff ff       	jmp    c0032ecb <_svfprintf_r+0xefb>
c003325c:	8b 45 14             	mov    0x14(%ebp),%eax
c003325f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033265:	8b 00                	mov    (%eax),%eax
c0033267:	89 10                	mov    %edx,(%eax)
c0033269:	8b 45 14             	mov    0x14(%ebp),%eax
c003326c:	83 c0 04             	add    $0x4,%eax
c003326f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033272:	e9 f4 ed ff ff       	jmp    c003206b <_svfprintf_r+0x9b>
c0033277:	83 c0 01             	add    $0x1,%eax
c003327a:	01 f1                	add    %esi,%ecx
c003327c:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c0033282:	83 c7 08             	add    $0x8,%edi
c0033285:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033288:	83 f8 07             	cmp    $0x7,%eax
c003328b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033291:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033297:	7e 2d                	jle    c00332c6 <_svfprintf_r+0x12f6>
c0033299:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003329f:	89 44 24 08          	mov    %eax,0x8(%esp)
c00332a3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00332a6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00332aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00332ad:	89 04 24             	mov    %eax,(%esp)
c00332b0:	e8 9b 38 00 00       	call   c0036b50 <__ssprint_r>
c00332b5:	85 c0                	test   %eax,%eax
c00332b7:	0f 85 e3 ee ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c00332bd:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00332c3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00332c6:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00332cc:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c00332d2:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c00332d8:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c00332de:	89 c6                	mov    %eax,%esi
c00332e0:	7c 0d                	jl     c00332ef <_svfprintf_r+0x131f>
c00332e2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00332e9:	0f 84 5e 05 00 00    	je     c003384d <_svfprintf_r+0x187d>
c00332ef:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00332f5:	89 07                	mov    %eax,(%edi)
c00332f7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00332fd:	01 c1                	add    %eax,%ecx
c00332ff:	89 47 04             	mov    %eax,0x4(%edi)
c0033302:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033308:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003330e:	83 c0 01             	add    $0x1,%eax
c0033311:	83 f8 07             	cmp    $0x7,%eax
c0033314:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003331a:	0f 8f d9 06 00 00    	jg     c00339f9 <_svfprintf_r+0x1a29>
c0033320:	83 c7 08             	add    $0x8,%edi
c0033323:	89 d0                	mov    %edx,%eax
c0033325:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c003332b:	89 f2                	mov    %esi,%edx
c003332d:	29 f3                	sub    %esi,%ebx
c003332f:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033335:	29 c6                	sub    %eax,%esi
c0033337:	39 de                	cmp    %ebx,%esi
c0033339:	0f 4e de             	cmovle %esi,%ebx
c003333c:	85 db                	test   %ebx,%ebx
c003333e:	7e 29                	jle    c0033369 <_svfprintf_r+0x1399>
c0033340:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033346:	01 d9                	add    %ebx,%ecx
c0033348:	83 c7 08             	add    $0x8,%edi
c003334b:	89 57 f8             	mov    %edx,-0x8(%edi)
c003334e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033351:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033357:	83 c0 01             	add    $0x1,%eax
c003335a:	83 f8 07             	cmp    $0x7,%eax
c003335d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033363:	0f 8f c8 06 00 00    	jg     c0033a31 <_svfprintf_r+0x1a61>
c0033369:	31 c0                	xor    %eax,%eax
c003336b:	85 db                	test   %ebx,%ebx
c003336d:	0f 49 c3             	cmovns %ebx,%eax
c0033370:	29 c6                	sub    %eax,%esi
c0033372:	85 f6                	test   %esi,%esi
c0033374:	0f 8e 02 f7 ff ff    	jle    c0032a7c <_svfprintf_r+0xaac>
c003337a:	83 fe 10             	cmp    $0x10,%esi
c003337d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033383:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033389:	7f 11                	jg     c003339c <_svfprintf_r+0x13cc>
c003338b:	e9 bc fe ff ff       	jmp    c003324c <_svfprintf_r+0x127c>
c0033390:	83 ee 10             	sub    $0x10,%esi
c0033393:	83 fe 10             	cmp    $0x10,%esi
c0033396:	0f 8e b0 fe ff ff    	jle    c003324c <_svfprintf_r+0x127c>
c003339c:	83 c0 01             	add    $0x1,%eax
c003339f:	83 c1 10             	add    $0x10,%ecx
c00333a2:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c00333a8:	83 c7 08             	add    $0x8,%edi
c00333ab:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00333b2:	83 f8 07             	cmp    $0x7,%eax
c00333b5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00333bb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333c1:	7e cd                	jle    c0033390 <_svfprintf_r+0x13c0>
c00333c3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333c6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00333ca:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333ce:	8b 45 08             	mov    0x8(%ebp),%eax
c00333d1:	89 04 24             	mov    %eax,(%esp)
c00333d4:	e8 77 37 00 00       	call   c0036b50 <__ssprint_r>
c00333d9:	85 c0                	test   %eax,%eax
c00333db:	0f 85 bf ed ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c00333e1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00333e7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00333ea:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333f0:	eb 9e                	jmp    c0033390 <_svfprintf_r+0x13c0>
c00333f2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00333f9:	0f 85 14 fa ff ff    	jne    c0032e13 <_svfprintf_r+0xe43>
c00333ff:	89 07                	mov    %eax,(%edi)
c0033401:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033407:	8d 51 01             	lea    0x1(%ecx),%edx
c003340a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033411:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033417:	83 c0 01             	add    $0x1,%eax
c003341a:	83 f8 07             	cmp    $0x7,%eax
c003341d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033423:	0f 8e 8b fa ff ff    	jle    c0032eb4 <_svfprintf_r+0xee4>
c0033429:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003342f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033433:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033436:	89 44 24 04          	mov    %eax,0x4(%esp)
c003343a:	8b 45 08             	mov    0x8(%ebp),%eax
c003343d:	89 04 24             	mov    %eax,(%esp)
c0033440:	e8 0b 37 00 00       	call   c0036b50 <__ssprint_r>
c0033445:	85 c0                	test   %eax,%eax
c0033447:	0f 85 53 ed ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c003344d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033453:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033456:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003345c:	e9 56 fa ff ff       	jmp    c0032eb7 <_svfprintf_r+0xee7>
c0033461:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033467:	89 44 24 08          	mov    %eax,0x8(%esp)
c003346b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003346e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033472:	8b 45 08             	mov    0x8(%ebp),%eax
c0033475:	89 04 24             	mov    %eax,(%esp)
c0033478:	e8 d3 36 00 00       	call   c0036b50 <__ssprint_r>
c003347d:	85 c0                	test   %eax,%eax
c003347f:	0f 85 1b ed ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0033485:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003348b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003348e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033494:	e9 d6 f9 ff ff       	jmp    c0032e6f <_svfprintf_r+0xe9f>
c0033499:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003349f:	89 44 24 08          	mov    %eax,0x8(%esp)
c00334a3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334a6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00334aa:	8b 45 08             	mov    0x8(%ebp),%eax
c00334ad:	89 04 24             	mov    %eax,(%esp)
c00334b0:	e8 9b 36 00 00       	call   c0036b50 <__ssprint_r>
c00334b5:	85 c0                	test   %eax,%eax
c00334b7:	0f 85 e3 ec ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c00334bd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00334c3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00334c6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00334cc:	e9 6f f9 ff ff       	jmp    c0032e40 <_svfprintf_r+0xe70>
c00334d1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00334d7:	dd 1c 24             	fstpl  (%esp)
c00334da:	e8 11 35 00 00       	call   c00369f0 <__fpclassifyd>
c00334df:	85 c0                	test   %eax,%eax
c00334e1:	0f 85 a3 01 00 00    	jne    c003368a <_svfprintf_r+0x16ba>
c00334e7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00334ee:	ba 4e 99 03 c0       	mov    $0xc003994e,%edx
c00334f3:	b8 52 99 03 c0       	mov    $0xc0039952,%eax
c00334f8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00334ff:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0033506:	00 00 00 
c0033509:	0f 4e c2             	cmovle %edx,%eax
c003350c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033512:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0033519:	ff ff ff 
c003351c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c0033523:	00 00 00 
c0033526:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003352d:	00 00 00 
c0033530:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033537:	00 00 00 
c003353a:	e9 29 ed ff ff       	jmp    c0032268 <_svfprintf_r+0x298>
c003353f:	dd 00                	fldl   (%eax)
c0033541:	83 c0 08             	add    $0x8,%eax
c0033544:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c003354a:	89 45 14             	mov    %eax,0x14(%ebp)
c003354d:	e9 e6 ef ff ff       	jmp    c0032538 <_svfprintf_r+0x568>
c0033552:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033558:	89 44 24 08          	mov    %eax,0x8(%esp)
c003355c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003355f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033563:	8b 45 08             	mov    0x8(%ebp),%eax
c0033566:	89 04 24             	mov    %eax,(%esp)
c0033569:	e8 e2 35 00 00       	call   c0036b50 <__ssprint_r>
c003356e:	85 c0                	test   %eax,%eax
c0033570:	0f 85 2a ec ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0033576:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003357c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003357f:	e9 6b f6 ff ff       	jmp    c0032bef <_svfprintf_r+0xc1f>
c0033584:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003358a:	83 c1 01             	add    $0x1,%ecx
c003358d:	83 c7 08             	add    $0x8,%edi
c0033590:	c7 47 f8 7f 99 03 c0 	movl   $0xc003997f,-0x8(%edi)
c0033597:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003359e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00335a4:	83 c0 01             	add    $0x1,%eax
c00335a7:	83 f8 07             	cmp    $0x7,%eax
c00335aa:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335b0:	0f 8f ef 02 00 00    	jg     c00338a5 <_svfprintf_r+0x18d5>
c00335b6:	85 db                	test   %ebx,%ebx
c00335b8:	75 17                	jne    c00335d1 <_svfprintf_r+0x1601>
c00335ba:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c00335c0:	85 d2                	test   %edx,%edx
c00335c2:	75 0d                	jne    c00335d1 <_svfprintf_r+0x1601>
c00335c4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00335cb:	0f 84 ab f4 ff ff    	je     c0032a7c <_svfprintf_r+0xaac>
c00335d1:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00335d7:	83 c7 08             	add    $0x8,%edi
c00335da:	89 47 f8             	mov    %eax,-0x8(%edi)
c00335dd:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00335e3:	89 47 fc             	mov    %eax,-0x4(%edi)
c00335e6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c00335e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335ef:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335f5:	83 c0 01             	add    $0x1,%eax
c00335f8:	83 f8 07             	cmp    $0x7,%eax
c00335fb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033601:	0f 8f 60 03 00 00    	jg     c0033967 <_svfprintf_r+0x1997>
c0033607:	f7 db                	neg    %ebx
c0033609:	85 db                	test   %ebx,%ebx
c003360b:	0f 8e 21 03 00 00    	jle    c0033932 <_svfprintf_r+0x1962>
c0033611:	83 fb 10             	cmp    $0x10,%ebx
c0033614:	0f 8e c3 02 00 00    	jle    c00338dd <_svfprintf_r+0x190d>
c003361a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c0033620:	eb 12                	jmp    c0033634 <_svfprintf_r+0x1664>
c0033622:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033628:	83 eb 10             	sub    $0x10,%ebx
c003362b:	83 fb 10             	cmp    $0x10,%ebx
c003362e:	0f 8e a9 02 00 00    	jle    c00338dd <_svfprintf_r+0x190d>
c0033634:	83 c0 01             	add    $0x1,%eax
c0033637:	83 c2 10             	add    $0x10,%edx
c003363a:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c0033640:	83 c7 08             	add    $0x8,%edi
c0033643:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003364a:	83 f8 07             	cmp    $0x7,%eax
c003364d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033653:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033659:	7e cd                	jle    c0033628 <_svfprintf_r+0x1658>
c003365b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003365e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033662:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033666:	8b 45 08             	mov    0x8(%ebp),%eax
c0033669:	89 04 24             	mov    %eax,(%esp)
c003366c:	e8 df 34 00 00       	call   c0036b50 <__ssprint_r>
c0033671:	85 c0                	test   %eax,%eax
c0033673:	0f 85 27 eb ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0033679:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003367f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033682:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033688:	eb 9e                	jmp    c0033628 <_svfprintf_r+0x1658>
c003368a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033690:	83 e3 df             	and    $0xffffffdf,%ebx
c0033693:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003369a:	0f 84 05 03 00 00    	je     c00339a5 <_svfprintf_r+0x19d5>
c00336a0:	83 fb 47             	cmp    $0x47,%ebx
c00336a3:	75 16                	jne    c00336bb <_svfprintf_r+0x16eb>
c00336a5:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00336ab:	b8 01 00 00 00       	mov    $0x1,%eax
c00336b0:	85 d2                	test   %edx,%edx
c00336b2:	0f 45 c2             	cmovne %edx,%eax
c00336b5:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c00336bb:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00336c1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00336c7:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c00336cd:	80 cc 01             	or     $0x1,%ah
c00336d0:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c00336d6:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00336dc:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c00336e3:	85 c0                	test   %eax,%eax
c00336e5:	0f 88 ba 05 00 00    	js     c0033ca5 <_svfprintf_r+0x1cd5>
c00336eb:	83 fb 46             	cmp    $0x46,%ebx
c00336ee:	0f 94 c0             	sete   %al
c00336f1:	89 c6                	mov    %eax,%esi
c00336f3:	0f 84 d4 03 00 00    	je     c0033acd <_svfprintf_r+0x1afd>
c00336f9:	83 fb 45             	cmp    $0x45,%ebx
c00336fc:	0f 85 99 05 00 00    	jne    c0033c9b <_svfprintf_r+0x1ccb>
c0033702:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033708:	dd 54 24 04          	fstl   0x4(%esp)
c003370c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0033713:	00 
c0033714:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c003371a:	8d 70 01             	lea    0x1(%eax),%esi
c003371d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033723:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033727:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c003372d:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033731:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033737:	89 44 24 14          	mov    %eax,0x14(%esp)
c003373b:	8b 45 08             	mov    0x8(%ebp),%eax
c003373e:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033742:	89 04 24             	mov    %eax,(%esp)
c0033745:	e8 56 09 00 00       	call   c00340a0 <_dtoa_r>
c003374a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033750:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033753:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033759:	d9 ee                	fldz   
c003375b:	d9 c9                	fxch   %st(1)
c003375d:	df e9                	fucomip %st(1),%st
c003375f:	dd d8                	fstp   %st(0)
c0033761:	0f 8a fd 00 00 00    	jp     c0033864 <_svfprintf_r+0x1894>
c0033767:	89 c8                	mov    %ecx,%eax
c0033769:	0f 85 f5 00 00 00    	jne    c0033864 <_svfprintf_r+0x1894>
c003376f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033775:	83 fb 47             	cmp    $0x47,%ebx
c0033778:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003377e:	0f 84 1e 04 00 00    	je     c0033ba2 <_svfprintf_r+0x1bd2>
c0033784:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003378b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033791:	0f 8e 65 04 00 00    	jle    c0033bfc <_svfprintf_r+0x1c2c>
c0033797:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003379e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c00337a4:	0f 84 3c 05 00 00    	je     c0033ce6 <_svfprintf_r+0x1d16>
c00337aa:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c00337b0:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c00337b6:	0f 8f f7 04 00 00    	jg     c0033cb3 <_svfprintf_r+0x1ce3>
c00337bc:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c00337c2:	83 e0 01             	and    $0x1,%eax
c00337c5:	0f 85 e2 05 00 00    	jne    c0033dad <_svfprintf_r+0x1ddd>
c00337cb:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c00337d1:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c00337d8:	00 00 00 
c00337db:	85 d2                	test   %edx,%edx
c00337dd:	0f 49 c2             	cmovns %edx,%eax
c00337e0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00337e6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c00337ed:	0f 85 68 03 00 00    	jne    c0033b5b <_svfprintf_r+0x1b8b>
c00337f3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00337f9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c00337ff:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033806:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003380d:	00 00 00 
c0033810:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033816:	e9 4d ea ff ff       	jmp    c0032268 <_svfprintf_r+0x298>
c003381b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033821:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033825:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033828:	89 44 24 04          	mov    %eax,0x4(%esp)
c003382c:	8b 45 08             	mov    0x8(%ebp),%eax
c003382f:	89 04 24             	mov    %eax,(%esp)
c0033832:	e8 19 33 00 00       	call   c0036b50 <__ssprint_r>
c0033837:	85 c0                	test   %eax,%eax
c0033839:	0f 85 61 e9 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c003383f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033845:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033848:	e9 f2 f3 ff ff       	jmp    c0032c3f <_svfprintf_r+0xc6f>
c003384d:	89 d0                	mov    %edx,%eax
c003384f:	e9 d1 fa ff ff       	jmp    c0033325 <_svfprintf_r+0x1355>
c0033854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033858:	8d 50 01             	lea    0x1(%eax),%edx
c003385b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033861:	c6 00 30             	movb   $0x30,(%eax)
c0033864:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c003386a:	39 c1                	cmp    %eax,%ecx
c003386c:	77 ea                	ja     c0033858 <_svfprintf_r+0x1888>
c003386e:	e9 fc fe ff ff       	jmp    c003376f <_svfprintf_r+0x179f>
c0033873:	8b 45 08             	mov    0x8(%ebp),%eax
c0033876:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003387d:	00 
c003387e:	89 04 24             	mov    %eax,(%esp)
c0033881:	e8 4a 1b 00 00       	call   c00353d0 <_malloc_r>
c0033886:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033889:	85 c0                	test   %eax,%eax
c003388b:	89 02                	mov    %eax,(%edx)
c003388d:	89 42 10             	mov    %eax,0x10(%edx)
c0033890:	0f 84 15 06 00 00    	je     c0033eab <_svfprintf_r+0x1edb>
c0033896:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033899:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c00338a0:	e9 6c e7 ff ff       	jmp    c0032011 <_svfprintf_r+0x41>
c00338a5:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338ab:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338af:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338b2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338b6:	8b 45 08             	mov    0x8(%ebp),%eax
c00338b9:	89 04 24             	mov    %eax,(%esp)
c00338bc:	e8 8f 32 00 00       	call   c0036b50 <__ssprint_r>
c00338c1:	85 c0                	test   %eax,%eax
c00338c3:	0f 85 d7 e8 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c00338c9:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00338cf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338d2:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00338d8:	e9 d9 fc ff ff       	jmp    c00335b6 <_svfprintf_r+0x15e6>
c00338dd:	83 c0 01             	add    $0x1,%eax
c00338e0:	01 da                	add    %ebx,%edx
c00338e2:	c7 07 e8 9a 03 c0    	movl   $0xc0039ae8,(%edi)
c00338e8:	83 c7 08             	add    $0x8,%edi
c00338eb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00338ee:	83 f8 07             	cmp    $0x7,%eax
c00338f1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00338f7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00338fd:	7e 33                	jle    c0033932 <_svfprintf_r+0x1962>
c00338ff:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033905:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033909:	8b 45 0c             	mov    0xc(%ebp),%eax
c003390c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033910:	8b 45 08             	mov    0x8(%ebp),%eax
c0033913:	89 04 24             	mov    %eax,(%esp)
c0033916:	e8 35 32 00 00       	call   c0036b50 <__ssprint_r>
c003391b:	85 c0                	test   %eax,%eax
c003391d:	0f 85 7d e8 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0033923:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033929:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003392c:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033932:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0033938:	83 c0 01             	add    $0x1,%eax
c003393b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033941:	89 1f                	mov    %ebx,(%edi)
c0033943:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033949:	01 da                	add    %ebx,%edx
c003394b:	83 f8 07             	cmp    $0x7,%eax
c003394e:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033951:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033957:	0f 8f 86 f5 ff ff    	jg     c0032ee3 <_svfprintf_r+0xf13>
c003395d:	83 c7 08             	add    $0x8,%edi
c0033960:	89 d1                	mov    %edx,%ecx
c0033962:	e9 15 f1 ff ff       	jmp    c0032a7c <_svfprintf_r+0xaac>
c0033967:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003396d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033971:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033974:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033978:	8b 45 08             	mov    0x8(%ebp),%eax
c003397b:	89 04 24             	mov    %eax,(%esp)
c003397e:	e8 cd 31 00 00       	call   c0036b50 <__ssprint_r>
c0033983:	85 c0                	test   %eax,%eax
c0033985:	0f 85 15 e8 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c003398b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033991:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033994:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003399a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00339a0:	e9 62 fc ff ff       	jmp    c0033607 <_svfprintf_r+0x1637>
c00339a5:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c00339ac:	00 00 00 
c00339af:	e9 07 fd ff ff       	jmp    c00336bb <_svfprintf_r+0x16eb>
c00339b4:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00339ba:	89 04 24             	mov    %eax,(%esp)
c00339bd:	e8 0e 31 00 00       	call   c0036ad0 <strlen>
c00339c2:	e9 6a e8 ff ff       	jmp    c0032231 <_svfprintf_r+0x261>
c00339c7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339cd:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339d1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339d4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339d8:	8b 45 08             	mov    0x8(%ebp),%eax
c00339db:	89 04 24             	mov    %eax,(%esp)
c00339de:	e8 6d 31 00 00       	call   c0036b50 <__ssprint_r>
c00339e3:	85 c0                	test   %eax,%eax
c00339e5:	0f 85 b5 e7 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c00339eb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339f1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339f4:	e9 76 f6 ff ff       	jmp    c003306f <_svfprintf_r+0x109f>
c00339f9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339ff:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a03:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a06:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a0a:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a0d:	89 04 24             	mov    %eax,(%esp)
c0033a10:	e8 3b 31 00 00       	call   c0036b50 <__ssprint_r>
c0033a15:	85 c0                	test   %eax,%eax
c0033a17:	0f 85 83 e7 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0033a1d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033a23:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a26:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a2c:	e9 f4 f8 ff ff       	jmp    c0033325 <_svfprintf_r+0x1355>
c0033a31:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a37:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a3b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a3e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a42:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a45:	89 04 24             	mov    %eax,(%esp)
c0033a48:	e8 03 31 00 00       	call   c0036b50 <__ssprint_r>
c0033a4d:	85 c0                	test   %eax,%eax
c0033a4f:	0f 85 4b e7 ff ff    	jne    c00321a0 <_svfprintf_r+0x1d0>
c0033a55:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033a5b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a5e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033a64:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a6a:	e9 fa f8 ff ff       	jmp    c0033369 <_svfprintf_r+0x1399>
c0033a6f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033a75:	b0 06                	mov    $0x6,%al
c0033a77:	89 75 14             	mov    %esi,0x14(%ebp)
c0033a7a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a81:	00 00 00 
c0033a84:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033a8b:	00 00 00 
c0033a8e:	83 fa 06             	cmp    $0x6,%edx
c0033a91:	0f 46 c2             	cmovbe %edx,%eax
c0033a94:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033a9a:	85 c0                	test   %eax,%eax
c0033a9c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033aa2:	c7 85 28 ff ff ff 78 	movl   $0xc0039978,-0xd8(%ebp)
c0033aa9:	99 03 c0 
c0033aac:	0f 49 d0             	cmovns %eax,%edx
c0033aaf:	31 db                	xor    %ebx,%ebx
c0033ab1:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033ab7:	e9 b7 e7 ff ff       	jmp    c0032273 <_svfprintf_r+0x2a3>
c0033abc:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033ac3:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033ac8:	e9 9d ea ff ff       	jmp    c003256a <_svfprintf_r+0x59a>
c0033acd:	ba 03 00 00 00       	mov    $0x3,%edx
c0033ad2:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033ad8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033adc:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033ae2:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033ae6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033aec:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033af0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033af6:	dd 54 24 04          	fstl   0x4(%esp)
c0033afa:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033afe:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033b04:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033b08:	8b 45 08             	mov    0x8(%ebp),%eax
c0033b0b:	89 04 24             	mov    %eax,(%esp)
c0033b0e:	e8 8d 05 00 00       	call   c00340a0 <_dtoa_r>
c0033b13:	83 fb 47             	cmp    $0x47,%ebx
c0033b16:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033b1c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033b22:	75 09                	jne    c0033b2d <_svfprintf_r+0x1b5d>
c0033b24:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033b2b:	74 5b                	je     c0033b88 <_svfprintf_r+0x1bb8>
c0033b2d:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033b33:	89 f0                	mov    %esi,%eax
c0033b35:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033b3b:	01 d1                	add    %edx,%ecx
c0033b3d:	84 c0                	test   %al,%al
c0033b3f:	0f 84 14 fc ff ff    	je     c0033759 <_svfprintf_r+0x1789>
c0033b45:	80 3a 30             	cmpb   $0x30,(%edx)
c0033b48:	0f 84 37 02 00 00    	je     c0033d85 <_svfprintf_r+0x1db5>
c0033b4e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b54:	01 c1                	add    %eax,%ecx
c0033b56:	e9 fe fb ff ff       	jmp    c0033759 <_svfprintf_r+0x1789>
c0033b5b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b61:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033b67:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033b6c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b73:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b7a:	00 00 00 
c0033b7d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033b83:	e9 e4 e6 ff ff       	jmp    c003226c <_svfprintf_r+0x29c>
c0033b88:	dd d8                	fstp   %st(0)
c0033b8a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033b90:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033b96:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033b9c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033ba2:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033ba8:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033bab:	7c 48                	jl     c0033bf5 <_svfprintf_r+0x1c25>
c0033bad:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033bb3:	7c 40                	jl     c0033bf5 <_svfprintf_r+0x1c25>
c0033bb5:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033bbb:	e9 ea fb ff ff       	jmp    c00337aa <_svfprintf_r+0x17da>
c0033bc0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033bc6:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033bcd:	89 75 14             	mov    %esi,0x14(%ebp)
c0033bd0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033bd7:	00 00 00 
c0033bda:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033be0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033be6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033bed:	00 00 00 
c0033bf0:	e9 73 e6 ff ff       	jmp    c0032268 <_svfprintf_r+0x298>
c0033bf5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033bfc:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033bff:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033c06:	85 c9                	test   %ecx,%ecx
c0033c08:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033c0e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033c14:	0f 88 2c 02 00 00    	js     c0033e46 <_svfprintf_r+0x1e76>
c0033c1a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033c21:	83 f9 09             	cmp    $0x9,%ecx
c0033c24:	0f 8f ea 00 00 00    	jg     c0033d14 <_svfprintf_r+0x1d44>
c0033c2a:	83 c1 30             	add    $0x30,%ecx
c0033c2d:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033c34:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033c3a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033c40:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033c46:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033c4c:	29 d0                	sub    %edx,%eax
c0033c4e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033c54:	89 da                	mov    %ebx,%edx
c0033c56:	01 c2                	add    %eax,%edx
c0033c58:	83 fb 01             	cmp    $0x1,%ebx
c0033c5b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c61:	0f 8e 21 02 00 00    	jle    c0033e88 <_svfprintf_r+0x1eb8>
c0033c67:	31 c0                	xor    %eax,%eax
c0033c69:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033c70:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033c77:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c7e:	00 00 00 
c0033c81:	e9 60 fb ff ff       	jmp    c00337e6 <_svfprintf_r+0x1816>
c0033c86:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033c8c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c93:	00 00 00 
c0033c96:	e9 68 e4 ff ff       	jmp    c0032103 <_svfprintf_r+0x133>
c0033c9b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033ca0:	e9 2d fe ff ff       	jmp    c0033ad2 <_svfprintf_r+0x1b02>
c0033ca5:	d9 e0                	fchs   
c0033ca7:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033cae:	e9 38 fa ff ff       	jmp    c00336eb <_svfprintf_r+0x171b>
c0033cb3:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033cb9:	ba 01 00 00 00       	mov    $0x1,%edx
c0033cbe:	85 c9                	test   %ecx,%ecx
c0033cc0:	0f 8e 5a 01 00 00    	jle    c0033e20 <_svfprintf_r+0x1e50>
c0033cc6:	31 c0                	xor    %eax,%eax
c0033cc8:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033cce:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033cd5:	00 00 00 
c0033cd8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033cde:	0f 49 c2             	cmovns %edx,%eax
c0033ce1:	e9 00 fb ff ff       	jmp    c00337e6 <_svfprintf_r+0x1816>
c0033ce6:	85 c0                	test   %eax,%eax
c0033ce8:	0f 8e 06 01 00 00    	jle    c0033df4 <_svfprintf_r+0x1e24>
c0033cee:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033cf4:	85 f6                	test   %esi,%esi
c0033cf6:	0f 85 d4 00 00 00    	jne    c0033dd0 <_svfprintf_r+0x1e00>
c0033cfc:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033d03:	0f 85 c7 00 00 00    	jne    c0033dd0 <_svfprintf_r+0x1e00>
c0033d09:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033d0f:	e9 d2 fa ff ff       	jmp    c00337e6 <_svfprintf_r+0x1816>
c0033d14:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033d1a:	89 f3                	mov    %esi,%ebx
c0033d1c:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033d21:	83 eb 01             	sub    $0x1,%ebx
c0033d24:	f7 e9                	imul   %ecx
c0033d26:	89 c8                	mov    %ecx,%eax
c0033d28:	c1 f8 1f             	sar    $0x1f,%eax
c0033d2b:	c1 fa 02             	sar    $0x2,%edx
c0033d2e:	29 c2                	sub    %eax,%edx
c0033d30:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033d33:	01 c0                	add    %eax,%eax
c0033d35:	29 c1                	sub    %eax,%ecx
c0033d37:	83 fa 09             	cmp    $0x9,%edx
c0033d3a:	8d 41 30             	lea    0x30(%ecx),%eax
c0033d3d:	89 d1                	mov    %edx,%ecx
c0033d3f:	88 03                	mov    %al,(%ebx)
c0033d41:	7f d9                	jg     c0033d1c <_svfprintf_r+0x1d4c>
c0033d43:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033d46:	83 c1 30             	add    $0x30,%ecx
c0033d49:	39 f0                	cmp    %esi,%eax
c0033d4b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033d4e:	0f 83 6a 01 00 00    	jae    c0033ebe <_svfprintf_r+0x1eee>
c0033d54:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d5a:	eb 07                	jmp    c0033d63 <_svfprintf_r+0x1d93>
c0033d5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033d60:	0f b6 08             	movzbl (%eax),%ecx
c0033d63:	83 c0 01             	add    $0x1,%eax
c0033d66:	83 c2 01             	add    $0x1,%edx
c0033d69:	39 f0                	cmp    %esi,%eax
c0033d6b:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033d6e:	75 f0                	jne    c0033d60 <_svfprintf_r+0x1d90>
c0033d70:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d76:	29 d8                	sub    %ebx,%eax
c0033d78:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d7e:	01 d0                	add    %edx,%eax
c0033d80:	e9 bb fe ff ff       	jmp    c0033c40 <_svfprintf_r+0x1c70>
c0033d85:	d9 ee                	fldz   
c0033d87:	d9 c9                	fxch   %st(1)
c0033d89:	db e9                	fucomi %st(1),%st
c0033d8b:	dd d9                	fstp   %st(1)
c0033d8d:	7a 06                	jp     c0033d95 <_svfprintf_r+0x1dc5>
c0033d8f:	0f 84 b9 fd ff ff    	je     c0033b4e <_svfprintf_r+0x1b7e>
c0033d95:	b8 01 00 00 00       	mov    $0x1,%eax
c0033d9a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033da0:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033da6:	01 c1                	add    %eax,%ecx
c0033da8:	e9 ac f9 ff ff       	jmp    c0033759 <_svfprintf_r+0x1789>
c0033dad:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033db3:	31 c0                	xor    %eax,%eax
c0033db5:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033dbc:	00 00 00 
c0033dbf:	83 c2 01             	add    $0x1,%edx
c0033dc2:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033dc8:	0f 49 c2             	cmovns %edx,%eax
c0033dcb:	e9 16 fa ff ff       	jmp    c00337e6 <_svfprintf_r+0x1816>
c0033dd0:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033dd6:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033ddc:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033de0:	89 c2                	mov    %eax,%edx
c0033de2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033de8:	31 c0                	xor    %eax,%eax
c0033dea:	85 d2                	test   %edx,%edx
c0033dec:	0f 49 c2             	cmovns %edx,%eax
c0033def:	e9 f2 f9 ff ff       	jmp    c00337e6 <_svfprintf_r+0x1816>
c0033df4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033dfa:	85 db                	test   %ebx,%ebx
c0033dfc:	75 2f                	jne    c0033e2d <_svfprintf_r+0x1e5d>
c0033dfe:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033e05:	75 26                	jne    c0033e2d <_svfprintf_r+0x1e5d>
c0033e07:	b8 01 00 00 00       	mov    $0x1,%eax
c0033e0c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033e13:	00 00 00 
c0033e16:	e9 cb f9 ff ff       	jmp    c00337e6 <_svfprintf_r+0x1816>
c0033e1b:	90                   	nop
c0033e1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033e20:	b2 02                	mov    $0x2,%dl
c0033e22:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033e28:	e9 99 fe ff ff       	jmp    c0033cc6 <_svfprintf_r+0x1cf6>
c0033e2d:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033e33:	31 c0                	xor    %eax,%eax
c0033e35:	83 c2 02             	add    $0x2,%edx
c0033e38:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033e3e:	0f 49 c2             	cmovns %edx,%eax
c0033e41:	e9 a0 f9 ff ff       	jmp    c00337e6 <_svfprintf_r+0x1816>
c0033e46:	f7 d9                	neg    %ecx
c0033e48:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033e4f:	e9 cd fd ff ff       	jmp    c0033c21 <_svfprintf_r+0x1c51>
c0033e54:	8b 55 14             	mov    0x14(%ebp),%edx
c0033e57:	8b 45 14             	mov    0x14(%ebp),%eax
c0033e5a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033e60:	8b 12                	mov    (%edx),%edx
c0033e62:	83 c0 04             	add    $0x4,%eax
c0033e65:	89 45 14             	mov    %eax,0x14(%ebp)
c0033e68:	85 d2                	test   %edx,%edx
c0033e6a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033e70:	0f 89 a9 e2 ff ff    	jns    c003211f <_svfprintf_r+0x14f>
c0033e76:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033e7d:	ff ff ff 
c0033e80:	89 c8                	mov    %ecx,%eax
c0033e82:	e9 76 e2 ff ff       	jmp    c00320fd <_svfprintf_r+0x12d>
c0033e87:	90                   	nop
c0033e88:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e8e:	83 e0 01             	and    $0x1,%eax
c0033e91:	0f 85 d0 fd ff ff    	jne    c0033c67 <_svfprintf_r+0x1c97>
c0033e97:	85 d2                	test   %edx,%edx
c0033e99:	0f 49 c2             	cmovns %edx,%eax
c0033e9c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033ea3:	00 00 00 
c0033ea6:	e9 3b f9 ff ff       	jmp    c00337e6 <_svfprintf_r+0x1816>
c0033eab:	8b 45 08             	mov    0x8(%ebp),%eax
c0033eae:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033eb4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033eb9:	e9 f5 e2 ff ff       	jmp    c00321b3 <_svfprintf_r+0x1e3>
c0033ebe:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033ec4:	e9 77 fd ff ff       	jmp    c0033c40 <_svfprintf_r+0x1c70>
c0033ec9:	66 90                	xchg   %ax,%ax
c0033ecb:	66 90                	xchg   %ax,%ax
c0033ecd:	66 90                	xchg   %ax,%ax
c0033ecf:	90                   	nop

c0033ed0 <quorem>:
c0033ed0:	55                   	push   %ebp
c0033ed1:	89 c1                	mov    %eax,%ecx
c0033ed3:	89 e5                	mov    %esp,%ebp
c0033ed5:	57                   	push   %edi
c0033ed6:	89 d7                	mov    %edx,%edi
c0033ed8:	56                   	push   %esi
c0033ed9:	53                   	push   %ebx
c0033eda:	83 ec 3c             	sub    $0x3c,%esp
c0033edd:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033ee0:	8b 42 10             	mov    0x10(%edx),%eax
c0033ee3:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033ee6:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033ee9:	89 ca                	mov    %ecx,%edx
c0033eeb:	0f 8f 9f 01 00 00    	jg     c0034090 <quorem+0x1c0>
c0033ef1:	83 e8 01             	sub    $0x1,%eax
c0033ef4:	83 c7 14             	add    $0x14,%edi
c0033ef7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033efa:	c1 e0 02             	shl    $0x2,%eax
c0033efd:	83 c2 14             	add    $0x14,%edx
c0033f00:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033f03:	01 d0                	add    %edx,%eax
c0033f05:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033f08:	8b 13                	mov    (%ebx),%edx
c0033f0a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033f0d:	8b 00                	mov    (%eax),%eax
c0033f0f:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033f12:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033f15:	31 d2                	xor    %edx,%edx
c0033f17:	f7 f1                	div    %ecx
c0033f19:	85 c0                	test   %eax,%eax
c0033f1b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033f1e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033f21:	0f 84 b5 00 00 00    	je     c0033fdc <quorem+0x10c>
c0033f27:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033f2a:	31 f6                	xor    %esi,%esi
c0033f2c:	89 fa                	mov    %edi,%edx
c0033f2e:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033f31:	89 f7                	mov    %esi,%edi
c0033f33:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033f40:	83 c2 04             	add    $0x4,%edx
c0033f43:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f46:	83 c0 04             	add    $0x4,%eax
c0033f49:	0f b7 ce             	movzwl %si,%ecx
c0033f4c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033f50:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033f53:	c1 ee 10             	shr    $0x10,%esi
c0033f56:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033f5a:	89 cb                	mov    %ecx,%ebx
c0033f5c:	0f b7 c9             	movzwl %cx,%ecx
c0033f5f:	c1 eb 10             	shr    $0x10,%ebx
c0033f62:	29 cf                	sub    %ecx,%edi
c0033f64:	01 f3                	add    %esi,%ebx
c0033f66:	89 de                	mov    %ebx,%esi
c0033f68:	0f b7 db             	movzwl %bx,%ebx
c0033f6b:	c1 ee 10             	shr    $0x10,%esi
c0033f6e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033f71:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033f74:	0f b7 ce             	movzwl %si,%ecx
c0033f77:	01 f9                	add    %edi,%ecx
c0033f79:	c1 ee 10             	shr    $0x10,%esi
c0033f7c:	29 de                	sub    %ebx,%esi
c0033f7e:	89 cb                	mov    %ecx,%ebx
c0033f80:	c1 fb 10             	sar    $0x10,%ebx
c0033f83:	0f b7 c9             	movzwl %cx,%ecx
c0033f86:	01 de                	add    %ebx,%esi
c0033f88:	89 f7                	mov    %esi,%edi
c0033f8a:	c1 e6 10             	shl    $0x10,%esi
c0033f8d:	09 ce                	or     %ecx,%esi
c0033f8f:	c1 ff 10             	sar    $0x10,%edi
c0033f92:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033f95:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033f98:	73 a6                	jae    c0033f40 <quorem+0x70>
c0033f9a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033f9d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033fa0:	8b 10                	mov    (%eax),%edx
c0033fa2:	85 d2                	test   %edx,%edx
c0033fa4:	75 36                	jne    c0033fdc <quorem+0x10c>
c0033fa6:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033fa9:	89 c2                	mov    %eax,%edx
c0033fab:	83 e8 04             	sub    $0x4,%eax
c0033fae:	39 c1                	cmp    %eax,%ecx
c0033fb0:	73 21                	jae    c0033fd3 <quorem+0x103>
c0033fb2:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033fb5:	85 f6                	test   %esi,%esi
c0033fb7:	75 1a                	jne    c0033fd3 <quorem+0x103>
c0033fb9:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033fbc:	eb 08                	jmp    c0033fc6 <quorem+0xf6>
c0033fbe:	66 90                	xchg   %ax,%ax
c0033fc0:	8b 18                	mov    (%eax),%ebx
c0033fc2:	85 db                	test   %ebx,%ebx
c0033fc4:	75 0a                	jne    c0033fd0 <quorem+0x100>
c0033fc6:	83 e8 04             	sub    $0x4,%eax
c0033fc9:	83 ea 01             	sub    $0x1,%edx
c0033fcc:	39 c1                	cmp    %eax,%ecx
c0033fce:	72 f0                	jb     c0033fc0 <quorem+0xf0>
c0033fd0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033fd3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033fd6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033fd9:	89 50 10             	mov    %edx,0x10(%eax)
c0033fdc:	8b 45 c8             	mov    -0x38(%ebp),%eax
c0033fdf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033fe3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033fe6:	89 04 24             	mov    %eax,(%esp)
c0033fe9:	e8 a2 23 00 00       	call   c0036390 <__mcmp>
c0033fee:	85 c0                	test   %eax,%eax
c0033ff0:	0f 88 8e 00 00 00    	js     c0034084 <quorem+0x1b4>
c0033ff6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0033ff9:	31 f6                	xor    %esi,%esi
c0033ffb:	83 c0 01             	add    $0x1,%eax
c0033ffe:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0034001:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034004:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034008:	83 c7 04             	add    $0x4,%edi
c003400b:	8b 4f fc             	mov    -0x4(%edi),%ecx
c003400e:	83 c0 04             	add    $0x4,%eax
c0034011:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0034014:	0f b7 d1             	movzwl %cx,%edx
c0034017:	29 d6                	sub    %edx,%esi
c0034019:	0f b7 d3             	movzwl %bx,%edx
c003401c:	01 f2                	add    %esi,%edx
c003401e:	c1 e9 10             	shr    $0x10,%ecx
c0034021:	c1 eb 10             	shr    $0x10,%ebx
c0034024:	29 cb                	sub    %ecx,%ebx
c0034026:	89 d1                	mov    %edx,%ecx
c0034028:	c1 f9 10             	sar    $0x10,%ecx
c003402b:	0f b7 d2             	movzwl %dx,%edx
c003402e:	01 cb                	add    %ecx,%ebx
c0034030:	89 de                	mov    %ebx,%esi
c0034032:	c1 e3 10             	shl    $0x10,%ebx
c0034035:	09 d3                	or     %edx,%ebx
c0034037:	c1 fe 10             	sar    $0x10,%esi
c003403a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c003403d:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0034040:	73 c6                	jae    c0034008 <quorem+0x138>
c0034042:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034045:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034048:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c003404b:	8b 02                	mov    (%edx),%eax
c003404d:	85 c0                	test   %eax,%eax
c003404f:	75 33                	jne    c0034084 <quorem+0x1b4>
c0034051:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034054:	8d 42 fc             	lea    -0x4(%edx),%eax
c0034057:	39 c1                	cmp    %eax,%ecx
c0034059:	73 20                	jae    c003407b <quorem+0x1ab>
c003405b:	8b 72 fc             	mov    -0x4(%edx),%esi
c003405e:	85 f6                	test   %esi,%esi
c0034060:	75 19                	jne    c003407b <quorem+0x1ab>
c0034062:	89 fa                	mov    %edi,%edx
c0034064:	eb 08                	jmp    c003406e <quorem+0x19e>
c0034066:	66 90                	xchg   %ax,%ax
c0034068:	8b 18                	mov    (%eax),%ebx
c003406a:	85 db                	test   %ebx,%ebx
c003406c:	75 0a                	jne    c0034078 <quorem+0x1a8>
c003406e:	83 e8 04             	sub    $0x4,%eax
c0034071:	83 ea 01             	sub    $0x1,%edx
c0034074:	39 c1                	cmp    %eax,%ecx
c0034076:	72 f0                	jb     c0034068 <quorem+0x198>
c0034078:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003407b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003407e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034081:	89 78 10             	mov    %edi,0x10(%eax)
c0034084:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034087:	83 c4 3c             	add    $0x3c,%esp
c003408a:	5b                   	pop    %ebx
c003408b:	5e                   	pop    %esi
c003408c:	5f                   	pop    %edi
c003408d:	5d                   	pop    %ebp
c003408e:	c3                   	ret    
c003408f:	90                   	nop
c0034090:	83 c4 3c             	add    $0x3c,%esp
c0034093:	31 c0                	xor    %eax,%eax
c0034095:	5b                   	pop    %ebx
c0034096:	5e                   	pop    %esi
c0034097:	5f                   	pop    %edi
c0034098:	5d                   	pop    %ebp
c0034099:	c3                   	ret    
c003409a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00340a0 <_dtoa_r>:
c00340a0:	55                   	push   %ebp
c00340a1:	89 e5                	mov    %esp,%ebp
c00340a3:	57                   	push   %edi
c00340a4:	56                   	push   %esi
c00340a5:	53                   	push   %ebx
c00340a6:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c00340ac:	8b 75 08             	mov    0x8(%ebp),%esi
c00340af:	dd 45 0c             	fldl   0xc(%ebp)
c00340b2:	8b 5d 20             	mov    0x20(%ebp),%ebx
c00340b5:	dd 5d c0             	fstpl  -0x40(%ebp)
c00340b8:	8b 46 40             	mov    0x40(%esi),%eax
c00340bb:	85 c0                	test   %eax,%eax
c00340bd:	74 23                	je     c00340e2 <_dtoa_r+0x42>
c00340bf:	8b 4e 44             	mov    0x44(%esi),%ecx
c00340c2:	ba 01 00 00 00       	mov    $0x1,%edx
c00340c7:	d3 e2                	shl    %cl,%edx
c00340c9:	89 48 04             	mov    %ecx,0x4(%eax)
c00340cc:	89 50 08             	mov    %edx,0x8(%eax)
c00340cf:	89 44 24 04          	mov    %eax,0x4(%esp)
c00340d3:	89 34 24             	mov    %esi,(%esp)
c00340d6:	e8 95 1b 00 00       	call   c0035c70 <_Bfree>
c00340db:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c00340e2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00340e5:	85 ff                	test   %edi,%edi
c00340e7:	0f 88 3b 02 00 00    	js     c0034328 <_dtoa_r+0x288>
c00340ed:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c00340f3:	89 f8                	mov    %edi,%eax
c00340f5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c00340fa:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c00340ff:	0f 84 e3 01 00 00    	je     c00342e8 <_dtoa_r+0x248>
c0034105:	dd 45 c0             	fldl   -0x40(%ebp)
c0034108:	d9 ee                	fldz   
c003410a:	d9 c9                	fxch   %st(1)
c003410c:	db e9                	fucomi %st(1),%st
c003410e:	dd d9                	fstp   %st(1)
c0034110:	7a 36                	jp     c0034148 <_dtoa_r+0xa8>
c0034112:	75 34                	jne    c0034148 <_dtoa_r+0xa8>
c0034114:	dd d8                	fstp   %st(0)
c0034116:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0034119:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003411c:	85 c9                	test   %ecx,%ecx
c003411e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c0034124:	0f 84 4e 02 00 00    	je     c0034378 <_dtoa_r+0x2d8>
c003412a:	8b 45 24             	mov    0x24(%ebp),%eax
c003412d:	c7 00 80 99 03 c0    	movl   $0xc0039980,(%eax)
c0034133:	b8 7f 99 03 c0       	mov    $0xc003997f,%eax
c0034138:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c003413e:	5b                   	pop    %ebx
c003413f:	5e                   	pop    %esi
c0034140:	5f                   	pop    %edi
c0034141:	5d                   	pop    %ebp
c0034142:	c3                   	ret    
c0034143:	90                   	nop
c0034144:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034148:	8d 45 e0             	lea    -0x20(%ebp),%eax
c003414b:	89 fb                	mov    %edi,%ebx
c003414d:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034151:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0034154:	dd 54 24 04          	fstl   0x4(%esp)
c0034158:	89 44 24 0c          	mov    %eax,0xc(%esp)
c003415c:	dd 5d b8             	fstpl  -0x48(%ebp)
c003415f:	89 34 24             	mov    %esi,(%esp)
c0034162:	c1 eb 14             	shr    $0x14,%ebx
c0034165:	e8 76 25 00 00       	call   c00366e0 <__d2b>
c003416a:	85 db                	test   %ebx,%ebx
c003416c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003416f:	0f 85 db 01 00 00    	jne    c0034350 <_dtoa_r+0x2b0>
c0034175:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034178:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003417b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003417e:	01 c3                	add    %eax,%ebx
c0034180:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034186:	0f 8c ec 07 00 00    	jl     c0034978 <_dtoa_r+0x8d8>
c003418c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003418f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034194:	89 f8                	mov    %edi,%eax
c0034196:	29 d9                	sub    %ebx,%ecx
c0034198:	d3 e0                	shl    %cl,%eax
c003419a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c00341a0:	d3 ea                	shr    %cl,%edx
c00341a2:	09 d0                	or     %edx,%eax
c00341a4:	31 d2                	xor    %edx,%edx
c00341a6:	83 eb 01             	sub    $0x1,%ebx
c00341a9:	89 55 cc             	mov    %edx,-0x34(%ebp)
c00341ac:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c00341af:	89 45 c8             	mov    %eax,-0x38(%ebp)
c00341b2:	df 6d c8             	fildll -0x38(%ebp)
c00341b5:	dd 5d b8             	fstpl  -0x48(%ebp)
c00341b8:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c00341bf:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c00341c6:	dd 45 b8             	fldl   -0x48(%ebp)
c00341c9:	d8 25 18 9b 03 c0    	fsubs  0xc0039b18
c00341cf:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c00341d2:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00341d5:	dc 0d 30 9b 03 c0    	fmull  0xc0039b30
c00341db:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00341df:	b4 0c                	mov    $0xc,%ah
c00341e1:	dc 05 38 9b 03 c0    	faddl  0xc0039b38
c00341e7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00341eb:	db 45 d4             	fildl  -0x2c(%ebp)
c00341ee:	dc 0d 40 9b 03 c0    	fmull  0xc0039b40
c00341f4:	de c1                	faddp  %st,%st(1)
c00341f6:	d9 6d d0             	fldcw  -0x30(%ebp)
c00341f9:	db 55 b8             	fistl  -0x48(%ebp)
c00341fc:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00341ff:	d9 ee                	fldz   
c0034201:	df e9                	fucomip %st(1),%st
c0034203:	0f 87 27 07 00 00    	ja     c0034930 <_dtoa_r+0x890>
c0034209:	dd d8                	fstp   %st(0)
c003420b:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c003420f:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c0034216:	77 24                	ja     c003423c <_dtoa_r+0x19c>
c0034218:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003421b:	dd 04 c5 00 9c 03 c0 	fldl   -0x3ffc6400(,%eax,8)
c0034222:	dd 45 c0             	fldl   -0x40(%ebp)
c0034225:	d9 c9                	fxch   %st(1)
c0034227:	df e9                	fucomip %st(1),%st
c0034229:	dd d8                	fstp   %st(0)
c003422b:	0f 86 5f 07 00 00    	jbe    c0034990 <_dtoa_r+0x8f0>
c0034231:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034235:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c003423c:	89 d0                	mov    %edx,%eax
c003423e:	29 d8                	sub    %ebx,%eax
c0034240:	83 e8 01             	sub    $0x1,%eax
c0034243:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c003424a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c003424d:	0f 88 0d 07 00 00    	js     c0034960 <_dtoa_r+0x8c0>
c0034253:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034256:	85 c0                	test   %eax,%eax
c0034258:	0f 88 ea 06 00 00    	js     c0034948 <_dtoa_r+0x8a8>
c003425e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034261:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034264:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003426b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003426f:	0f 87 0b 03 00 00    	ja     c0034580 <_dtoa_r+0x4e0>
c0034275:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034279:	0f 8e 23 10 00 00    	jle    c00352a2 <_dtoa_r+0x1202>
c003427f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034283:	31 c0                	xor    %eax,%eax
c0034285:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034289:	0f 84 43 0d 00 00    	je     c0034fd2 <_dtoa_r+0xf32>
c003428f:	0f 8e f3 00 00 00    	jle    c0034388 <_dtoa_r+0x2e8>
c0034295:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034299:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c00342a0:	0f 84 f3 00 00 00    	je     c0034399 <_dtoa_r+0x2f9>
c00342a6:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c00342aa:	0f 85 d7 02 00 00    	jne    c0034587 <_dtoa_r+0x4e7>
c00342b0:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00342b3:	03 5d 18             	add    0x18(%ebp),%ebx
c00342b6:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c00342b9:	83 c3 01             	add    $0x1,%ebx
c00342bc:	83 fb 0e             	cmp    $0xe,%ebx
c00342bf:	0f 96 c2             	setbe  %dl
c00342c2:	85 db                	test   %ebx,%ebx
c00342c4:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c00342c7:	0f 8e a7 08 00 00    	jle    c0034b74 <_dtoa_r+0xad4>
c00342cd:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00342d0:	83 fb 0e             	cmp    $0xe,%ebx
c00342d3:	89 df                	mov    %ebx,%edi
c00342d5:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c00342d9:	20 45 b4             	and    %al,-0x4c(%ebp)
c00342dc:	e9 d6 00 00 00       	jmp    c00343b7 <_dtoa_r+0x317>
c00342e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00342e8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00342eb:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00342ee:	85 d2                	test   %edx,%edx
c00342f0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c00342f6:	b8 11 9b 03 c0       	mov    $0xc0039b11,%eax
c00342fb:	74 43                	je     c0034340 <_dtoa_r+0x2a0>
c00342fd:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0034300:	85 db                	test   %ebx,%ebx
c0034302:	0f 84 30 fe ff ff    	je     c0034138 <_dtoa_r+0x98>
c0034308:	8b 75 24             	mov    0x24(%ebp),%esi
c003430b:	8d 50 08             	lea    0x8(%eax),%edx
c003430e:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0034312:	8d 48 03             	lea    0x3(%eax),%ecx
c0034315:	0f 44 d1             	cmove  %ecx,%edx
c0034318:	89 16                	mov    %edx,(%esi)
c003431a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034320:	5b                   	pop    %ebx
c0034321:	5e                   	pop    %esi
c0034322:	5f                   	pop    %edi
c0034323:	5d                   	pop    %ebp
c0034324:	c3                   	ret    
c0034325:	8d 76 00             	lea    0x0(%esi),%esi
c0034328:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c003432e:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0034334:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0034337:	e9 b7 fd ff ff       	jmp    c00340f3 <_dtoa_r+0x53>
c003433c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034340:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0034346:	ba 08 9b 03 c0       	mov    $0xc0039b08,%edx
c003434b:	0f 44 c2             	cmove  %edx,%eax
c003434e:	eb ad                	jmp    c00342fd <_dtoa_r+0x25d>
c0034350:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034353:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034359:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003435c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034363:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034368:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003436d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034370:	e9 51 fe ff ff       	jmp    c00341c6 <_dtoa_r+0x126>
c0034375:	8d 76 00             	lea    0x0(%esi),%esi
c0034378:	b8 7f 99 03 c0       	mov    $0xc003997f,%eax
c003437d:	e9 b6 fd ff ff       	jmp    c0034138 <_dtoa_r+0x98>
c0034382:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034388:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003438c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034393:	0f 85 ee 01 00 00    	jne    c0034587 <_dtoa_r+0x4e7>
c0034399:	8b 55 18             	mov    0x18(%ebp),%edx
c003439c:	85 d2                	test   %edx,%edx
c003439e:	0f 8e b6 07 00 00    	jle    c0034b5a <_dtoa_r+0xaba>
c00343a4:	8b 7d 18             	mov    0x18(%ebp),%edi
c00343a7:	83 ff 0e             	cmp    $0xe,%edi
c00343aa:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c00343ae:	20 45 b4             	and    %al,-0x4c(%ebp)
c00343b1:	89 7d 90             	mov    %edi,-0x70(%ebp)
c00343b4:	89 7d a8             	mov    %edi,-0x58(%ebp)
c00343b7:	83 ff 17             	cmp    $0x17,%edi
c00343ba:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c00343c1:	0f 86 e5 0e 00 00    	jbe    c00352ac <_dtoa_r+0x120c>
c00343c7:	b9 01 00 00 00       	mov    $0x1,%ecx
c00343cc:	b8 04 00 00 00       	mov    $0x4,%eax
c00343d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00343d8:	01 c0                	add    %eax,%eax
c00343da:	89 ca                	mov    %ecx,%edx
c00343dc:	8d 58 14             	lea    0x14(%eax),%ebx
c00343df:	39 fb                	cmp    %edi,%ebx
c00343e1:	8d 49 01             	lea    0x1(%ecx),%ecx
c00343e4:	76 f2                	jbe    c00343d8 <_dtoa_r+0x338>
c00343e6:	89 56 44             	mov    %edx,0x44(%esi)
c00343e9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00343ed:	89 34 24             	mov    %esi,(%esp)
c00343f0:	e8 db 17 00 00       	call   c0035bd0 <_Balloc>
c00343f5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c00343f9:	89 c7                	mov    %eax,%edi
c00343fb:	89 46 40             	mov    %eax,0x40(%esi)
c00343fe:	0f 84 bb 01 00 00    	je     c00345bf <_dtoa_r+0x51f>
c0034404:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034407:	dd 45 c0             	fldl   -0x40(%ebp)
c003440a:	85 db                	test   %ebx,%ebx
c003440c:	0f 8e de 07 00 00    	jle    c0034bf0 <_dtoa_r+0xb50>
c0034412:	89 d8                	mov    %ebx,%eax
c0034414:	83 e0 0f             	and    $0xf,%eax
c0034417:	dd 04 c5 00 9c 03 c0 	fldl   -0x3ffc6400(,%eax,8)
c003441e:	89 d8                	mov    %ebx,%eax
c0034420:	c1 f8 04             	sar    $0x4,%eax
c0034423:	a8 10                	test   $0x10,%al
c0034425:	0f 84 cd 05 00 00    	je     c00349f8 <_dtoa_r+0x958>
c003442b:	dd 05 e0 9b 03 c0    	fldl   0xc0039be0
c0034431:	83 e0 0f             	and    $0xf,%eax
c0034434:	b9 03 00 00 00       	mov    $0x3,%ecx
c0034439:	d8 fa                	fdivr  %st(2),%st
c003443b:	85 c0                	test   %eax,%eax
c003443d:	74 22                	je     c0034461 <_dtoa_r+0x3c1>
c003443f:	31 d2                	xor    %edx,%edx
c0034441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034448:	a8 01                	test   $0x1,%al
c003444a:	74 0e                	je     c003445a <_dtoa_r+0x3ba>
c003444c:	d9 c9                	fxch   %st(1)
c003444e:	dc 0c d5 c0 9b 03 c0 	fmull  -0x3ffc6440(,%edx,8)
c0034455:	d9 c9                	fxch   %st(1)
c0034457:	83 c1 01             	add    $0x1,%ecx
c003445a:	83 c2 01             	add    $0x1,%edx
c003445d:	d1 f8                	sar    %eax
c003445f:	75 e7                	jne    c0034448 <_dtoa_r+0x3a8>
c0034461:	de f1                	fdivp  %st,%st(1)
c0034463:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034466:	85 c0                	test   %eax,%eax
c0034468:	74 0a                	je     c0034474 <_dtoa_r+0x3d4>
c003446a:	d9 e8                	fld1   
c003446c:	df e9                	fucomip %st(1),%st
c003446e:	0f 87 92 0b 00 00    	ja     c0035006 <_dtoa_r+0xf66>
c0034474:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034477:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003447a:	db 45 d4             	fildl  -0x2c(%ebp)
c003447d:	d8 c9                	fmul   %st(1),%st
c003447f:	d8 05 24 9b 03 c0    	fadds  0xc0039b24
c0034485:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034488:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003448f:	85 c0                	test   %eax,%eax
c0034491:	0f 84 89 05 00 00    	je     c0034a20 <_dtoa_r+0x980>
c0034497:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003449a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003449d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00344a0:	8b 45 98             	mov    -0x68(%ebp),%eax
c00344a3:	85 c0                	test   %eax,%eax
c00344a5:	0f 84 b5 07 00 00    	je     c0034c60 <_dtoa_r+0xbc0>
c00344ab:	d9 05 2c 9b 03 c0    	flds   0xc0039b2c
c00344b1:	8d 57 01             	lea    0x1(%edi),%edx
c00344b4:	dc 34 cd f8 9b 03 c0 	fdivl  -0x3ffc6408(,%ecx,8)
c00344bb:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00344be:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00344c2:	b4 0c                	mov    $0xc,%ah
c00344c4:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00344c8:	dc 65 c0             	fsubl  -0x40(%ebp)
c00344cb:	d9 c9                	fxch   %st(1)
c00344cd:	d9 6d d0             	fldcw  -0x30(%ebp)
c00344d0:	db 55 d4             	fistl  -0x2c(%ebp)
c00344d3:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00344d6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00344d9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00344dc:	83 c0 30             	add    $0x30,%eax
c00344df:	db 45 d4             	fildl  -0x2c(%ebp)
c00344e2:	de e9                	fsubrp %st,%st(1)
c00344e4:	d9 c9                	fxch   %st(1)
c00344e6:	88 07                	mov    %al,(%edi)
c00344e8:	db e9                	fucomi %st(1),%st
c00344ea:	77 7f                	ja     c003456b <_dtoa_r+0x4cb>
c00344ec:	d9 c1                	fld    %st(1)
c00344ee:	d8 2d 1c 9b 03 c0    	fsubrs 0xc0039b1c
c00344f4:	d9 c9                	fxch   %st(1)
c00344f6:	db e9                	fucomi %st(1),%st
c00344f8:	dd d9                	fstp   %st(1)
c00344fa:	0f 87 33 0c 00 00    	ja     c0035133 <_dtoa_r+0x1093>
c0034500:	83 f9 01             	cmp    $0x1,%ecx
c0034503:	0f 8e c4 06 00 00    	jle    c0034bcd <_dtoa_r+0xb2d>
c0034509:	01 f9                	add    %edi,%ecx
c003450b:	d9 05 20 9b 03 c0    	flds   0xc0039b20
c0034511:	eb 25                	jmp    c0034538 <_dtoa_r+0x498>
c0034513:	90                   	nop
c0034514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034518:	d9 c1                	fld    %st(1)
c003451a:	d8 2d 1c 9b 03 c0    	fsubrs 0xc0039b1c
c0034520:	d9 c9                	fxch   %st(1)
c0034522:	db e9                	fucomi %st(1),%st
c0034524:	dd d9                	fstp   %st(1)
c0034526:	0f 87 14 0c 00 00    	ja     c0035140 <_dtoa_r+0x10a0>
c003452c:	39 ca                	cmp    %ecx,%edx
c003452e:	0f 84 a4 06 00 00    	je     c0034bd8 <_dtoa_r+0xb38>
c0034534:	d9 c9                	fxch   %st(1)
c0034536:	d9 ca                	fxch   %st(2)
c0034538:	dc c9                	fmul   %st,%st(1)
c003453a:	83 c2 01             	add    $0x1,%edx
c003453d:	dc ca                	fmul   %st,%st(2)
c003453f:	d9 ca                	fxch   %st(2)
c0034541:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034544:	db 55 d4             	fistl  -0x2c(%ebp)
c0034547:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003454a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003454d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034550:	83 c0 30             	add    $0x30,%eax
c0034553:	db 45 d4             	fildl  -0x2c(%ebp)
c0034556:	de e9                	fsubrp %st,%st(1)
c0034558:	d9 c9                	fxch   %st(1)
c003455a:	88 42 ff             	mov    %al,-0x1(%edx)
c003455d:	db e9                	fucomi %st(1),%st
c003455f:	76 b7                	jbe    c0034518 <_dtoa_r+0x478>
c0034561:	dd d8                	fstp   %st(0)
c0034563:	dd d8                	fstp   %st(0)
c0034565:	dd d8                	fstp   %st(0)
c0034567:	dd d8                	fstp   %st(0)
c0034569:	eb 06                	jmp    c0034571 <_dtoa_r+0x4d1>
c003456b:	dd d8                	fstp   %st(0)
c003456d:	dd d8                	fstp   %st(0)
c003456f:	dd d8                	fstp   %st(0)
c0034571:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034574:	89 fb                	mov    %edi,%ebx
c0034576:	89 d7                	mov    %edx,%edi
c0034578:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003457b:	e9 70 03 00 00       	jmp    c00348f0 <_dtoa_r+0x850>
c0034580:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034587:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003458e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034595:	00 
c0034596:	89 34 24             	mov    %esi,(%esp)
c0034599:	e8 32 16 00 00       	call   c0035bd0 <_Balloc>
c003459e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c00345a5:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c00345ac:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c00345b3:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c00345ba:	89 c7                	mov    %eax,%edi
c00345bc:	89 46 40             	mov    %eax,0x40(%esi)
c00345bf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00345c2:	85 c0                	test   %eax,%eax
c00345c4:	0f 88 2e 01 00 00    	js     c00346f8 <_dtoa_r+0x658>
c00345ca:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c00345ce:	0f 8f 24 01 00 00    	jg     c00346f8 <_dtoa_r+0x658>
c00345d4:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00345d7:	dd 04 c5 00 9c 03 c0 	fldl   -0x3ffc6400(,%eax,8)
c00345de:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00345e1:	85 c0                	test   %eax,%eax
c00345e3:	7f 0e                	jg     c00345f3 <_dtoa_r+0x553>
c00345e5:	8b 45 18             	mov    0x18(%ebp),%eax
c00345e8:	c1 e8 1f             	shr    $0x1f,%eax
c00345eb:	84 c0                	test   %al,%al
c00345ed:	0f 85 9d 07 00 00    	jne    c0034d90 <_dtoa_r+0xcf0>
c00345f3:	dd 45 c0             	fldl   -0x40(%ebp)
c00345f6:	d9 c0                	fld    %st(0)
c00345f8:	d8 f2                	fdiv   %st(2),%st
c00345fa:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00345fd:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0034601:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034605:	b4 0c                	mov    $0xc,%ah
c0034607:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003460b:	8d 47 01             	lea    0x1(%edi),%eax
c003460e:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034611:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034614:	db 5d d4             	fistpl -0x2c(%ebp)
c0034617:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003461a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003461d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034620:	8d 42 30             	lea    0x30(%edx),%eax
c0034623:	db 45 d4             	fildl  -0x2c(%ebp)
c0034626:	d8 ca                	fmul   %st(2),%st
c0034628:	88 07                	mov    %al,(%edi)
c003462a:	de e9                	fsubrp %st,%st(1)
c003462c:	74 66                	je     c0034694 <_dtoa_r+0x5f4>
c003462e:	d8 0d 20 9b 03 c0    	fmuls  0xc0039b20
c0034634:	d9 ee                	fldz   
c0034636:	d9 c9                	fxch   %st(1)
c0034638:	db e9                	fucomi %st(1),%st
c003463a:	dd d9                	fstp   %st(1)
c003463c:	0f 8b 33 0c 00 00    	jnp    c0035275 <_dtoa_r+0x11d5>
c0034642:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034645:	8d 47 02             	lea    0x2(%edi),%eax
c0034648:	d9 05 20 9b 03 c0    	flds   0xc0039b20
c003464e:	01 fb                	add    %edi,%ebx
c0034650:	eb 19                	jmp    c003466b <_dtoa_r+0x5cb>
c0034652:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034658:	dc c9                	fmul   %st,%st(1)
c003465a:	83 c0 01             	add    $0x1,%eax
c003465d:	d9 ee                	fldz   
c003465f:	d9 ca                	fxch   %st(2)
c0034661:	db ea                	fucomi %st(2),%st
c0034663:	dd da                	fstp   %st(2)
c0034665:	0f 8b 73 09 00 00    	jnp    c0034fde <_dtoa_r+0xf3e>
c003466b:	d9 c1                	fld    %st(1)
c003466d:	39 d8                	cmp    %ebx,%eax
c003466f:	d8 f3                	fdiv   %st(3),%st
c0034671:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034674:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034677:	db 5d d4             	fistpl -0x2c(%ebp)
c003467a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003467d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034680:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034683:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034686:	db 45 d4             	fildl  -0x2c(%ebp)
c0034689:	d8 cb                	fmul   %st(3),%st
c003468b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003468e:	de ea                	fsubrp %st,%st(2)
c0034690:	75 c6                	jne    c0034658 <_dtoa_r+0x5b8>
c0034692:	dd d8                	fstp   %st(0)
c0034694:	d8 c0                	fadd   %st(0),%st
c0034696:	db e9                	fucomi %st(1),%st
c0034698:	77 1e                	ja     c00346b8 <_dtoa_r+0x618>
c003469a:	d9 c9                	fxch   %st(1)
c003469c:	df e9                	fucomip %st(1),%st
c003469e:	dd d8                	fstp   %st(0)
c00346a0:	0f 8a 44 09 00 00    	jp     c0034fea <_dtoa_r+0xf4a>
c00346a6:	0f 85 3e 09 00 00    	jne    c0034fea <_dtoa_r+0xf4a>
c00346ac:	83 e2 01             	and    $0x1,%edx
c00346af:	90                   	nop
c00346b0:	0f 84 34 09 00 00    	je     c0034fea <_dtoa_r+0xf4a>
c00346b6:	eb 04                	jmp    c00346bc <_dtoa_r+0x61c>
c00346b8:	dd d8                	fstp   %st(0)
c00346ba:	dd d8                	fstp   %st(0)
c00346bc:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00346bf:	89 fb                	mov    %edi,%ebx
c00346c1:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c00346c5:	89 cf                	mov    %ecx,%edi
c00346c7:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c00346ca:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c00346cd:	eb 0f                	jmp    c00346de <_dtoa_r+0x63e>
c00346cf:	90                   	nop
c00346d0:	39 d3                	cmp    %edx,%ebx
c00346d2:	0f 84 75 09 00 00    	je     c003504d <_dtoa_r+0xfad>
c00346d8:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c00346dc:	89 d7                	mov    %edx,%edi
c00346de:	3c 39                	cmp    $0x39,%al
c00346e0:	8d 57 ff             	lea    -0x1(%edi),%edx
c00346e3:	74 eb                	je     c00346d0 <_dtoa_r+0x630>
c00346e5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c00346e8:	83 c0 01             	add    $0x1,%eax
c00346eb:	88 02                	mov    %al,(%edx)
c00346ed:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c00346f0:	e9 fb 01 00 00       	jmp    c00348f0 <_dtoa_r+0x850>
c00346f5:	8d 76 00             	lea    0x0(%esi),%esi
c00346f8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00346fb:	85 c9                	test   %ecx,%ecx
c00346fd:	0f 85 9d 02 00 00    	jne    c00349a0 <_dtoa_r+0x900>
c0034703:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034706:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034709:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034710:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034713:	85 c0                	test   %eax,%eax
c0034715:	7e 14                	jle    c003472b <_dtoa_r+0x68b>
c0034717:	85 db                	test   %ebx,%ebx
c0034719:	7e 10                	jle    c003472b <_dtoa_r+0x68b>
c003471b:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003471e:	39 d8                	cmp    %ebx,%eax
c0034720:	0f 4f c3             	cmovg  %ebx,%eax
c0034723:	29 45 a0             	sub    %eax,-0x60(%ebp)
c0034726:	29 c3                	sub    %eax,%ebx
c0034728:	29 45 ac             	sub    %eax,-0x54(%ebp)
c003472b:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003472e:	85 c0                	test   %eax,%eax
c0034730:	7e 61                	jle    c0034793 <_dtoa_r+0x6f3>
c0034732:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034735:	85 c0                	test   %eax,%eax
c0034737:	0f 84 72 04 00 00    	je     c0034baf <_dtoa_r+0xb0f>
c003473d:	85 d2                	test   %edx,%edx
c003473f:	7e 47                	jle    c0034788 <_dtoa_r+0x6e8>
c0034741:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034744:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034748:	89 34 24             	mov    %esi,(%esp)
c003474b:	89 55 88             	mov    %edx,-0x78(%ebp)
c003474e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034752:	e8 f9 19 00 00       	call   c0036150 <__pow5mult>
c0034757:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c003475a:	89 34 24             	mov    %esi,(%esp)
c003475d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034761:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034765:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034768:	e8 13 18 00 00       	call   c0035f80 <__multiply>
c003476d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034770:	89 34 24             	mov    %esi,(%esp)
c0034773:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034777:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003477a:	e8 f1 14 00 00       	call   c0035c70 <_Bfree>
c003477f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034782:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034785:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034788:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003478b:	29 d0                	sub    %edx,%eax
c003478d:	0f 85 1f 04 00 00    	jne    c0034bb2 <_dtoa_r+0xb12>
c0034793:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003479a:	00 
c003479b:	89 34 24             	mov    %esi,(%esp)
c003479e:	e8 ad 17 00 00       	call   c0035f50 <__i2b>
c00347a3:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c00347a6:	85 c9                	test   %ecx,%ecx
c00347a8:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00347ab:	7e 13                	jle    c00347c0 <_dtoa_r+0x720>
c00347ad:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c00347b1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347b5:	89 34 24             	mov    %esi,(%esp)
c00347b8:	e8 93 19 00 00       	call   c0036150 <__pow5mult>
c00347bd:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00347c0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c00347c4:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c00347cb:	0f 8e f7 05 00 00    	jle    c0034dc8 <_dtoa_r+0xd28>
c00347d1:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00347d4:	ba 01 00 00 00       	mov    $0x1,%edx
c00347d9:	85 c0                	test   %eax,%eax
c00347db:	0f 85 27 05 00 00    	jne    c0034d08 <_dtoa_r+0xc68>
c00347e1:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347e4:	01 d0                	add    %edx,%eax
c00347e6:	83 e0 1f             	and    $0x1f,%eax
c00347e9:	89 c2                	mov    %eax,%edx
c00347eb:	0f 84 57 03 00 00    	je     c0034b48 <_dtoa_r+0xaa8>
c00347f1:	b8 20 00 00 00       	mov    $0x20,%eax
c00347f6:	29 d0                	sub    %edx,%eax
c00347f8:	83 f8 04             	cmp    $0x4,%eax
c00347fb:	0f 8e 8c 0a 00 00    	jle    c003528d <_dtoa_r+0x11ed>
c0034801:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034806:	29 d0                	sub    %edx,%eax
c0034808:	01 45 a0             	add    %eax,-0x60(%ebp)
c003480b:	01 c3                	add    %eax,%ebx
c003480d:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034810:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0034813:	85 c0                	test   %eax,%eax
c0034815:	7e 16                	jle    c003482d <_dtoa_r+0x78d>
c0034817:	89 44 24 08          	mov    %eax,0x8(%esp)
c003481b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003481e:	89 34 24             	mov    %esi,(%esp)
c0034821:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034825:	e8 46 1a 00 00       	call   c0036270 <__lshift>
c003482a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003482d:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034830:	85 c0                	test   %eax,%eax
c0034832:	7e 16                	jle    c003484a <_dtoa_r+0x7aa>
c0034834:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034838:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003483b:	89 34 24             	mov    %esi,(%esp)
c003483e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034842:	e8 29 1a 00 00       	call   c0036270 <__lshift>
c0034847:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003484a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c003484d:	85 c0                	test   %eax,%eax
c003484f:	0f 85 d3 04 00 00    	jne    c0034d28 <_dtoa_r+0xc88>
c0034855:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034859:	0f 8e 11 02 00 00    	jle    c0034a70 <_dtoa_r+0x9d0>
c003485f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034862:	85 c0                	test   %eax,%eax
c0034864:	0f 8f 06 02 00 00    	jg     c0034a70 <_dtoa_r+0x9d0>
c003486a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003486d:	85 c0                	test   %eax,%eax
c003486f:	0f 85 e0 01 00 00    	jne    c0034a55 <_dtoa_r+0x9b5>
c0034875:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034878:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003487f:	00 
c0034880:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034887:	00 
c0034888:	89 34 24             	mov    %esi,(%esp)
c003488b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003488f:	e8 fc 13 00 00       	call   c0035c90 <__multadd>
c0034894:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034897:	89 44 24 04          	mov    %eax,0x4(%esp)
c003489b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003489e:	89 04 24             	mov    %eax,(%esp)
c00348a1:	e8 ea 1a 00 00       	call   c0036390 <__mcmp>
c00348a6:	85 c0                	test   %eax,%eax
c00348a8:	0f 8e a7 01 00 00    	jle    c0034a55 <_dtoa_r+0x9b5>
c00348ae:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c00348b2:	89 fb                	mov    %edi,%ebx
c00348b4:	83 c7 01             	add    $0x1,%edi
c00348b7:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c00348bb:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c00348c2:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00348c5:	89 34 24             	mov    %esi,(%esp)
c00348c8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348cc:	e8 9f 13 00 00       	call   c0035c70 <_Bfree>
c00348d1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348d4:	85 c0                	test   %eax,%eax
c00348d6:	74 18                	je     c00348f0 <_dtoa_r+0x850>
c00348d8:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c00348db:	0f 85 a7 02 00 00    	jne    c0034b88 <_dtoa_r+0xae8>
c00348e1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348e4:	89 34 24             	mov    %esi,(%esp)
c00348e7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348eb:	e8 80 13 00 00       	call   c0035c70 <_Bfree>
c00348f0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00348f3:	89 34 24             	mov    %esi,(%esp)
c00348f6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348fa:	e8 71 13 00 00       	call   c0035c70 <_Bfree>
c00348ff:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034902:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0034905:	c6 07 00             	movb   $0x0,(%edi)
c0034908:	83 c0 01             	add    $0x1,%eax
c003490b:	89 06                	mov    %eax,(%esi)
c003490d:	8b 45 24             	mov    0x24(%ebp),%eax
c0034910:	85 c0                	test   %eax,%eax
c0034912:	0f 84 90 02 00 00    	je     c0034ba8 <_dtoa_r+0xb08>
c0034918:	8b 45 24             	mov    0x24(%ebp),%eax
c003491b:	89 38                	mov    %edi,(%eax)
c003491d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c0034923:	89 d8                	mov    %ebx,%eax
c0034925:	5b                   	pop    %ebx
c0034926:	5e                   	pop    %esi
c0034927:	5f                   	pop    %edi
c0034928:	5d                   	pop    %ebp
c0034929:	c3                   	ret    
c003492a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034930:	db 45 b8             	fildl  -0x48(%ebp)
c0034933:	df e9                	fucomip %st(1),%st
c0034935:	dd d8                	fstp   %st(0)
c0034937:	7a 06                	jp     c003493f <_dtoa_r+0x89f>
c0034939:	0f 84 cc f8 ff ff    	je     c003420b <_dtoa_r+0x16b>
c003493f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034943:	e9 c3 f8 ff ff       	jmp    c003420b <_dtoa_r+0x16b>
c0034948:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003494b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c003494e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0034955:	f7 d8                	neg    %eax
c0034957:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003495a:	e9 0c f9 ff ff       	jmp    c003426b <_dtoa_r+0x1cb>
c003495f:	90                   	nop
c0034960:	f7 d8                	neg    %eax
c0034962:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034965:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c003496c:	e9 e2 f8 ff ff       	jmp    c0034253 <_dtoa_r+0x1b3>
c0034971:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034978:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003497b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034980:	29 d9                	sub    %ebx,%ecx
c0034982:	d3 e0                	shl    %cl,%eax
c0034984:	e9 1b f8 ff ff       	jmp    c00341a4 <_dtoa_r+0x104>
c0034989:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034990:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034997:	e9 a0 f8 ff ff       	jmp    c003423c <_dtoa_r+0x19c>
c003499c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349a0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c00349a4:	0f 8e fe 06 00 00    	jle    c00350a8 <_dtoa_r+0x1008>
c00349aa:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00349ad:	83 e8 01             	sub    $0x1,%eax
c00349b0:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c00349b3:	0f 8c 3b 06 00 00    	jl     c0034ff4 <_dtoa_r+0xf54>
c00349b9:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00349bc:	29 c2                	sub    %eax,%edx
c00349be:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c00349c1:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00349c4:	85 c9                	test   %ecx,%ecx
c00349c6:	89 c8                	mov    %ecx,%eax
c00349c8:	0f 88 83 07 00 00    	js     c0035151 <_dtoa_r+0x10b1>
c00349ce:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00349d5:	00 
c00349d6:	89 34 24             	mov    %esi,(%esp)
c00349d9:	89 55 8c             	mov    %edx,-0x74(%ebp)
c00349dc:	01 45 a0             	add    %eax,-0x60(%ebp)
c00349df:	01 45 ac             	add    %eax,-0x54(%ebp)
c00349e2:	e8 69 15 00 00       	call   c0035f50 <__i2b>
c00349e7:	8b 55 8c             	mov    -0x74(%ebp),%edx
c00349ea:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00349ed:	e9 1e fd ff ff       	jmp    c0034710 <_dtoa_r+0x670>
c00349f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00349f8:	d9 c1                	fld    %st(1)
c00349fa:	b9 02 00 00 00       	mov    $0x2,%ecx
c00349ff:	e9 37 fa ff ff       	jmp    c003443b <_dtoa_r+0x39b>
c0034a04:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034a07:	db 45 d4             	fildl  -0x2c(%ebp)
c0034a0a:	d8 c9                	fmul   %st(1),%st
c0034a0c:	d8 05 24 9b 03 c0    	fadds  0xc0039b24
c0034a12:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034a15:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a20:	d8 25 28 9b 03 c0    	fsubs  0xc0039b28
c0034a26:	dd 45 c0             	fldl   -0x40(%ebp)
c0034a29:	d9 c9                	fxch   %st(1)
c0034a2b:	db e9                	fucomi %st(1),%st
c0034a2d:	0f 87 0d 02 00 00    	ja     c0034c40 <_dtoa_r+0xba0>
c0034a33:	d9 c9                	fxch   %st(1)
c0034a35:	d9 e0                	fchs   
c0034a37:	df e9                	fucomip %st(1),%st
c0034a39:	dd d8                	fstp   %st(0)
c0034a3b:	0f 86 a7 01 00 00    	jbe    c0034be8 <_dtoa_r+0xb48>
c0034a41:	dd d8                	fstp   %st(0)
c0034a43:	eb 02                	jmp    c0034a47 <_dtoa_r+0x9a7>
c0034a45:	dd d8                	fstp   %st(0)
c0034a47:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034a4e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034a55:	8b 45 18             	mov    0x18(%ebp),%eax
c0034a58:	89 fb                	mov    %edi,%ebx
c0034a5a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a61:	f7 d0                	not    %eax
c0034a63:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034a66:	e9 57 fe ff ff       	jmp    c00348c2 <_dtoa_r+0x822>
c0034a6b:	90                   	nop
c0034a6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a70:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034a73:	85 c0                	test   %eax,%eax
c0034a75:	0f 85 c5 03 00 00    	jne    c0034e40 <_dtoa_r+0xda0>
c0034a7b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034a7e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034a83:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034a86:	eb 24                	jmp    c0034aac <_dtoa_r+0xa0c>
c0034a88:	8b 45 08             	mov    0x8(%ebp),%eax
c0034a8b:	83 c3 01             	add    $0x1,%ebx
c0034a8e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034a92:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034a99:	00 
c0034a9a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034aa1:	00 
c0034aa2:	89 04 24             	mov    %eax,(%esp)
c0034aa5:	e8 e6 11 00 00       	call   c0035c90 <__multadd>
c0034aaa:	89 c6                	mov    %eax,%esi
c0034aac:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034aaf:	89 f0                	mov    %esi,%eax
c0034ab1:	e8 1a f4 ff ff       	call   c0033ed0 <quorem>
c0034ab6:	83 c0 30             	add    $0x30,%eax
c0034ab9:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034abc:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034ac0:	7c c6                	jl     c0034a88 <_dtoa_r+0x9e8>
c0034ac2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034ac5:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ac8:	ba 01 00 00 00       	mov    $0x1,%edx
c0034acd:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034ad0:	8b 75 08             	mov    0x8(%ebp),%esi
c0034ad3:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034ada:	85 c0                	test   %eax,%eax
c0034adc:	0f 4f d0             	cmovg  %eax,%edx
c0034adf:	01 fa                	add    %edi,%edx
c0034ae1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034ae4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034aeb:	00 
c0034aec:	89 34 24             	mov    %esi,(%esp)
c0034aef:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034af2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034af6:	e8 75 17 00 00       	call   c0036270 <__lshift>
c0034afb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034afe:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034b02:	89 04 24             	mov    %eax,(%esp)
c0034b05:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034b08:	e8 83 18 00 00       	call   c0036390 <__mcmp>
c0034b0d:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034b10:	83 f8 00             	cmp    $0x0,%eax
c0034b13:	0f 8e 41 06 00 00    	jle    c003515a <_dtoa_r+0x10ba>
c0034b19:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034b1d:	eb 0f                	jmp    c0034b2e <_dtoa_r+0xa8e>
c0034b1f:	90                   	nop
c0034b20:	39 c7                	cmp    %eax,%edi
c0034b22:	0f 84 70 05 00 00    	je     c0035098 <_dtoa_r+0xff8>
c0034b28:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034b2c:	89 c2                	mov    %eax,%edx
c0034b2e:	80 f9 39             	cmp    $0x39,%cl
c0034b31:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034b34:	74 ea                	je     c0034b20 <_dtoa_r+0xa80>
c0034b36:	83 c1 01             	add    $0x1,%ecx
c0034b39:	89 fb                	mov    %edi,%ebx
c0034b3b:	88 08                	mov    %cl,(%eax)
c0034b3d:	89 d7                	mov    %edx,%edi
c0034b3f:	e9 7e fd ff ff       	jmp    c00348c2 <_dtoa_r+0x822>
c0034b44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b48:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034b4d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034b50:	01 c3                	add    %eax,%ebx
c0034b52:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034b55:	e9 b6 fc ff ff       	jmp    c0034810 <_dtoa_r+0x770>
c0034b5a:	ba 01 00 00 00       	mov    $0x1,%edx
c0034b5f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034b66:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034b6d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034b74:	21 c2                	and    %eax,%edx
c0034b76:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034b79:	31 d2                	xor    %edx,%edx
c0034b7b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b82:	e9 62 f8 ff ff       	jmp    c00343e9 <_dtoa_r+0x349>
c0034b87:	90                   	nop
c0034b88:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034b8b:	85 d2                	test   %edx,%edx
c0034b8d:	0f 84 4e fd ff ff    	je     c00348e1 <_dtoa_r+0x841>
c0034b93:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034b96:	89 34 24             	mov    %esi,(%esp)
c0034b99:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b9d:	e8 ce 10 00 00       	call   c0035c70 <_Bfree>
c0034ba2:	e9 3a fd ff ff       	jmp    c00348e1 <_dtoa_r+0x841>
c0034ba7:	90                   	nop
c0034ba8:	89 d8                	mov    %ebx,%eax
c0034baa:	e9 89 f5 ff ff       	jmp    c0034138 <_dtoa_r+0x98>
c0034baf:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034bb2:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034bb6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034bb9:	89 34 24             	mov    %esi,(%esp)
c0034bbc:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034bc0:	e8 8b 15 00 00       	call   c0036150 <__pow5mult>
c0034bc5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034bc8:	e9 c6 fb ff ff       	jmp    c0034793 <_dtoa_r+0x6f3>
c0034bcd:	dd d8                	fstp   %st(0)
c0034bcf:	dd d8                	fstp   %st(0)
c0034bd1:	eb 15                	jmp    c0034be8 <_dtoa_r+0xb48>
c0034bd3:	90                   	nop
c0034bd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034bd8:	dd d8                	fstp   %st(0)
c0034bda:	dd d8                	fstp   %st(0)
c0034bdc:	dd d8                	fstp   %st(0)
c0034bde:	eb 08                	jmp    c0034be8 <_dtoa_r+0xb48>
c0034be0:	dd d8                	fstp   %st(0)
c0034be2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034be8:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034beb:	e9 cf f9 ff ff       	jmp    c00345bf <_dtoa_r+0x51f>
c0034bf0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034bf3:	f7 d8                	neg    %eax
c0034bf5:	0f 84 6a 04 00 00    	je     c0035065 <_dtoa_r+0xfc5>
c0034bfb:	89 c2                	mov    %eax,%edx
c0034bfd:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034c02:	83 e2 0f             	and    $0xf,%edx
c0034c05:	c1 f8 04             	sar    $0x4,%eax
c0034c08:	dd 04 d5 00 9c 03 c0 	fldl   -0x3ffc6400(,%edx,8)
c0034c0f:	85 c0                	test   %eax,%eax
c0034c11:	d8 c9                	fmul   %st(1),%st
c0034c13:	0f 84 4a f8 ff ff    	je     c0034463 <_dtoa_r+0x3c3>
c0034c19:	31 d2                	xor    %edx,%edx
c0034c1b:	90                   	nop
c0034c1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034c20:	a8 01                	test   $0x1,%al
c0034c22:	74 0a                	je     c0034c2e <_dtoa_r+0xb8e>
c0034c24:	dc 0c d5 c0 9b 03 c0 	fmull  -0x3ffc6440(,%edx,8)
c0034c2b:	83 c1 01             	add    $0x1,%ecx
c0034c2e:	83 c2 01             	add    $0x1,%edx
c0034c31:	d1 f8                	sar    %eax
c0034c33:	75 eb                	jne    c0034c20 <_dtoa_r+0xb80>
c0034c35:	e9 29 f8 ff ff       	jmp    c0034463 <_dtoa_r+0x3c3>
c0034c3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034c40:	dd d8                	fstp   %st(0)
c0034c42:	dd d8                	fstp   %st(0)
c0034c44:	dd d8                	fstp   %st(0)
c0034c46:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034c4d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034c54:	e9 55 fc ff ff       	jmp    c00348ae <_dtoa_r+0x80e>
c0034c59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034c60:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034c63:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034c66:	dd 45 c0             	fldl   -0x40(%ebp)
c0034c69:	dc 0c c5 00 9c 03 c0 	fmull  -0x3ffc6400(,%eax,8)
c0034c70:	d9 c9                	fxch   %st(1)
c0034c72:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034c75:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034c79:	8d 57 01             	lea    0x1(%edi),%edx
c0034c7c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034c7f:	b4 0c                	mov    $0xc,%ah
c0034c81:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c85:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c88:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c8b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c8e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c91:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034c94:	83 c0 30             	add    $0x30,%eax
c0034c97:	83 f9 01             	cmp    $0x1,%ecx
c0034c9a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c9d:	de e9                	fsubrp %st,%st(1)
c0034c9f:	88 07                	mov    %al,(%edi)
c0034ca1:	89 d0                	mov    %edx,%eax
c0034ca3:	74 37                	je     c0034cdc <_dtoa_r+0xc3c>
c0034ca5:	d9 05 20 9b 03 c0    	flds   0xc0039b20
c0034cab:	eb 05                	jmp    c0034cb2 <_dtoa_r+0xc12>
c0034cad:	8d 76 00             	lea    0x0(%esi),%esi
c0034cb0:	d9 c9                	fxch   %st(1)
c0034cb2:	dc c9                	fmul   %st,%st(1)
c0034cb4:	d9 c9                	fxch   %st(1)
c0034cb6:	83 c0 01             	add    $0x1,%eax
c0034cb9:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034cbc:	db 55 d4             	fistl  -0x2c(%ebp)
c0034cbf:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034cc2:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034cc5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034cc8:	83 c1 30             	add    $0x30,%ecx
c0034ccb:	39 d8                	cmp    %ebx,%eax
c0034ccd:	db 45 d4             	fildl  -0x2c(%ebp)
c0034cd0:	de e9                	fsubrp %st,%st(1)
c0034cd2:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034cd5:	75 d9                	jne    c0034cb0 <_dtoa_r+0xc10>
c0034cd7:	dd d9                	fstp   %st(1)
c0034cd9:	03 55 88             	add    -0x78(%ebp),%edx
c0034cdc:	d9 05 2c 9b 03 c0    	flds   0xc0039b2c
c0034ce2:	d9 c2                	fld    %st(2)
c0034ce4:	d8 c1                	fadd   %st(1),%st
c0034ce6:	d9 ca                	fxch   %st(2)
c0034ce8:	db ea                	fucomi %st(2),%st
c0034cea:	dd da                	fstp   %st(2)
c0034cec:	0f 86 7f 03 00 00    	jbe    c0035071 <_dtoa_r+0xfd1>
c0034cf2:	dd d8                	fstp   %st(0)
c0034cf4:	dd d8                	fstp   %st(0)
c0034cf6:	dd d8                	fstp   %st(0)
c0034cf8:	dd d8                	fstp   %st(0)
c0034cfa:	89 fb                	mov    %edi,%ebx
c0034cfc:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034d00:	89 d7                	mov    %edx,%edi
c0034d02:	e9 d7 f9 ff ff       	jmp    c00346de <_dtoa_r+0x63e>
c0034d07:	90                   	nop
c0034d08:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034d0b:	8b 41 10             	mov    0x10(%ecx),%eax
c0034d0e:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034d12:	89 04 24             	mov    %eax,(%esp)
c0034d15:	e8 56 11 00 00       	call   c0035e70 <__hi0bits>
c0034d1a:	ba 20 00 00 00       	mov    $0x20,%edx
c0034d1f:	29 c2                	sub    %eax,%edx
c0034d21:	e9 bb fa ff ff       	jmp    c00347e1 <_dtoa_r+0x741>
c0034d26:	66 90                	xchg   %ax,%ax
c0034d28:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034d2b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d2f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d32:	89 04 24             	mov    %eax,(%esp)
c0034d35:	e8 56 16 00 00       	call   c0036390 <__mcmp>
c0034d3a:	85 c0                	test   %eax,%eax
c0034d3c:	0f 89 13 fb ff ff    	jns    c0034855 <_dtoa_r+0x7b5>
c0034d42:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d45:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034d4c:	00 
c0034d4d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034d54:	00 
c0034d55:	89 34 24             	mov    %esi,(%esp)
c0034d58:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d5c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034d60:	e8 2b 0f 00 00       	call   c0035c90 <__multadd>
c0034d65:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034d68:	85 c9                	test   %ecx,%ecx
c0034d6a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034d6d:	0f 85 8d 00 00 00    	jne    c0034e00 <_dtoa_r+0xd60>
c0034d73:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034d77:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034d7a:	7f 0a                	jg     c0034d86 <_dtoa_r+0xce6>
c0034d7c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034d80:	0f 8f ff 04 00 00    	jg     c0035285 <_dtoa_r+0x11e5>
c0034d86:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034d89:	e9 ed fc ff ff       	jmp    c0034a7b <_dtoa_r+0x9db>
c0034d8e:	66 90                	xchg   %ax,%ax
c0034d90:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034d93:	85 db                	test   %ebx,%ebx
c0034d95:	0f 85 aa fc ff ff    	jne    c0034a45 <_dtoa_r+0x9a5>
c0034d9b:	d8 0d 28 9b 03 c0    	fmuls  0xc0039b28
c0034da1:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034da8:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034daf:	dd 45 c0             	fldl   -0x40(%ebp)
c0034db2:	d9 c9                	fxch   %st(1)
c0034db4:	df e9                	fucomip %st(1),%st
c0034db6:	dd d8                	fstp   %st(0)
c0034db8:	0f 83 97 fc ff ff    	jae    c0034a55 <_dtoa_r+0x9b5>
c0034dbe:	e9 eb fa ff ff       	jmp    c00348ae <_dtoa_r+0x80e>
c0034dc3:	90                   	nop
c0034dc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034dc8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034dcb:	85 c0                	test   %eax,%eax
c0034dcd:	0f 85 fe f9 ff ff    	jne    c00347d1 <_dtoa_r+0x731>
c0034dd3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034dd6:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034ddb:	0f 85 f0 f9 ff ff    	jne    c00347d1 <_dtoa_r+0x731>
c0034de1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034de6:	0f 84 e5 f9 ff ff    	je     c00347d1 <_dtoa_r+0x731>
c0034dec:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034df0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034df4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034dfb:	e9 d1 f9 ff ff       	jmp    c00347d1 <_dtoa_r+0x731>
c0034e00:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e03:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e0a:	00 
c0034e0b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e12:	00 
c0034e13:	89 34 24             	mov    %esi,(%esp)
c0034e16:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e1a:	e8 71 0e 00 00       	call   c0035c90 <__multadd>
c0034e1f:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034e22:	85 d2                	test   %edx,%edx
c0034e24:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e27:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034e2a:	7f 0a                	jg     c0034e36 <_dtoa_r+0xd96>
c0034e2c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034e30:	0f 8f 4f 04 00 00    	jg     c0035285 <_dtoa_r+0x11e5>
c0034e36:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034e39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034e40:	85 db                	test   %ebx,%ebx
c0034e42:	7e 16                	jle    c0034e5a <_dtoa_r+0xdba>
c0034e44:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e47:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034e4b:	89 34 24             	mov    %esi,(%esp)
c0034e4e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e52:	e8 19 14 00 00       	call   c0036270 <__lshift>
c0034e57:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e5a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034e5d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e60:	85 db                	test   %ebx,%ebx
c0034e62:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e65:	0f 85 11 03 00 00    	jne    c003517c <_dtoa_r+0x10dc>
c0034e6b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034e6e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034e71:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034e74:	01 f8                	add    %edi,%eax
c0034e76:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034e79:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034e7c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e7f:	83 e0 01             	and    $0x1,%eax
c0034e82:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034e85:	eb 2e                	jmp    c0034eb5 <_dtoa_r+0xe15>
c0034e87:	90                   	nop
c0034e88:	e8 03 0e 00 00       	call   c0035c90 <__multadd>
c0034e8d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e94:	00 
c0034e95:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e9c:	00 
c0034e9d:	89 34 24             	mov    %esi,(%esp)
c0034ea0:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034ea3:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034ea6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034eaa:	e8 e1 0d 00 00       	call   c0035c90 <__multadd>
c0034eaf:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034eb2:	83 c3 01             	add    $0x1,%ebx
c0034eb5:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034eb8:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034ebb:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034ebe:	89 f8                	mov    %edi,%eax
c0034ec0:	e8 0b f0 ff ff       	call   c0033ed0 <quorem>
c0034ec5:	89 3c 24             	mov    %edi,(%esp)
c0034ec8:	8d 48 30             	lea    0x30(%eax),%ecx
c0034ecb:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034ece:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034ed1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034ed4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034ed8:	e8 b3 14 00 00       	call   c0036390 <__mcmp>
c0034edd:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034ee0:	89 34 24             	mov    %esi,(%esp)
c0034ee3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034ee7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034eea:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034eed:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ef1:	e8 ea 14 00 00       	call   c00363e0 <__mdiff>
c0034ef6:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034ef9:	89 c2                	mov    %eax,%edx
c0034efb:	85 c9                	test   %ecx,%ecx
c0034efd:	0f 85 c5 00 00 00    	jne    c0034fc8 <_dtoa_r+0xf28>
c0034f03:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f07:	89 3c 24             	mov    %edi,(%esp)
c0034f0a:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034f0d:	e8 7e 14 00 00       	call   c0036390 <__mcmp>
c0034f12:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034f15:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034f19:	89 34 24             	mov    %esi,(%esp)
c0034f1c:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034f1f:	e8 4c 0d 00 00       	call   c0035c70 <_Bfree>
c0034f24:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034f27:	89 c1                	mov    %eax,%ecx
c0034f29:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f2c:	75 0b                	jne    c0034f39 <_dtoa_r+0xe99>
c0034f2e:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034f31:	85 d2                	test   %edx,%edx
c0034f33:	0f 84 fb 02 00 00    	je     c0035234 <_dtoa_r+0x1194>
c0034f39:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034f3c:	85 d2                	test   %edx,%edx
c0034f3e:	0f 88 7f 01 00 00    	js     c00350c3 <_dtoa_r+0x1023>
c0034f44:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034f47:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f4a:	75 0b                	jne    c0034f57 <_dtoa_r+0xeb7>
c0034f4c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034f4f:	85 c9                	test   %ecx,%ecx
c0034f51:	0f 84 6c 01 00 00    	je     c00350c3 <_dtoa_r+0x1023>
c0034f57:	85 c0                	test   %eax,%eax
c0034f59:	0f 8f 82 02 00 00    	jg     c00351e1 <_dtoa_r+0x1141>
c0034f5f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034f63:	89 da                	mov    %ebx,%edx
c0034f65:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034f68:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034f6b:	0f 84 8d 02 00 00    	je     c00351fe <_dtoa_r+0x115e>
c0034f71:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034f75:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f7c:	00 
c0034f7d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f84:	00 
c0034f85:	89 34 24             	mov    %esi,(%esp)
c0034f88:	e8 03 0d 00 00       	call   c0035c90 <__multadd>
c0034f8d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f94:	00 
c0034f95:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f9c:	00 
c0034f9d:	89 34 24             	mov    %esi,(%esp)
c0034fa0:	89 c7                	mov    %eax,%edi
c0034fa2:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034fa5:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034fa8:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034fab:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034faf:	0f 85 d3 fe ff ff    	jne    c0034e88 <_dtoa_r+0xde8>
c0034fb5:	e8 d6 0c 00 00       	call   c0035c90 <__multadd>
c0034fba:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034fbd:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034fc0:	e9 ed fe ff ff       	jmp    c0034eb2 <_dtoa_r+0xe12>
c0034fc5:	8d 76 00             	lea    0x0(%esi),%esi
c0034fc8:	b8 01 00 00 00       	mov    $0x1,%eax
c0034fcd:	e9 43 ff ff ff       	jmp    c0034f15 <_dtoa_r+0xe75>
c0034fd2:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034fd9:	e9 d2 f2 ff ff       	jmp    c00342b0 <_dtoa_r+0x210>
c0034fde:	0f 85 87 f6 ff ff    	jne    c003466b <_dtoa_r+0x5cb>
c0034fe4:	dd d8                	fstp   %st(0)
c0034fe6:	dd d8                	fstp   %st(0)
c0034fe8:	dd d8                	fstp   %st(0)
c0034fea:	89 fb                	mov    %edi,%ebx
c0034fec:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034fef:	e9 fc f8 ff ff       	jmp    c00348f0 <_dtoa_r+0x850>
c0034ff4:	89 c2                	mov    %eax,%edx
c0034ff6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0034ff9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034ffc:	01 55 94             	add    %edx,-0x6c(%ebp)
c0034fff:	31 d2                	xor    %edx,%edx
c0035001:	e9 b8 f9 ff ff       	jmp    c00349be <_dtoa_r+0x91e>
c0035006:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0035009:	85 c0                	test   %eax,%eax
c003500b:	0f 84 f3 f9 ff ff    	je     c0034a04 <_dtoa_r+0x964>
c0035011:	8b 45 90             	mov    -0x70(%ebp),%eax
c0035014:	85 c0                	test   %eax,%eax
c0035016:	0f 8e c4 fb ff ff    	jle    c0034be0 <_dtoa_r+0xb40>
c003501c:	d8 0d 20 9b 03 c0    	fmuls  0xc0039b20
c0035022:	83 c1 01             	add    $0x1,%ecx
c0035025:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0035028:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c003502b:	89 c1                	mov    %eax,%ecx
c003502d:	83 eb 01             	sub    $0x1,%ebx
c0035030:	db 45 d4             	fildl  -0x2c(%ebp)
c0035033:	d8 c9                	fmul   %st(1),%st
c0035035:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0035038:	d8 05 24 9b 03 c0    	fadds  0xc0039b24
c003503e:	dd 5d c0             	fstpl  -0x40(%ebp)
c0035041:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0035048:	e9 53 f4 ff ff       	jmp    c00344a0 <_dtoa_r+0x400>
c003504d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035050:	c6 03 30             	movb   $0x30,(%ebx)
c0035053:	83 c0 01             	add    $0x1,%eax
c0035056:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0035059:	b8 31 00 00 00       	mov    $0x31,%eax
c003505e:	88 02                	mov    %al,(%edx)
c0035060:	e9 8b f8 ff ff       	jmp    c00348f0 <_dtoa_r+0x850>
c0035065:	d9 c0                	fld    %st(0)
c0035067:	b9 02 00 00 00       	mov    $0x2,%ecx
c003506c:	e9 f2 f3 ff ff       	jmp    c0034463 <_dtoa_r+0x3c3>
c0035071:	de e2                	fsubp  %st,%st(2)
c0035073:	d9 c9                	fxch   %st(1)
c0035075:	df e9                	fucomip %st(1),%st
c0035077:	dd d8                	fstp   %st(0)
c0035079:	0f 86 69 fb ff ff    	jbe    c0034be8 <_dtoa_r+0xb48>
c003507f:	dd d8                	fstp   %st(0)
c0035081:	eb 07                	jmp    c003508a <_dtoa_r+0xfea>
c0035083:	90                   	nop
c0035084:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035088:	89 c2                	mov    %eax,%edx
c003508a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003508e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035091:	74 f5                	je     c0035088 <_dtoa_r+0xfe8>
c0035093:	e9 d9 f4 ff ff       	jmp    c0034571 <_dtoa_r+0x4d1>
c0035098:	c6 07 31             	movb   $0x31,(%edi)
c003509b:	89 fb                	mov    %edi,%ebx
c003509d:	89 d7                	mov    %edx,%edi
c003509f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c00350a3:	e9 1a f8 ff ff       	jmp    c00348c2 <_dtoa_r+0x822>
c00350a8:	8b 55 8c             	mov    -0x74(%ebp),%edx
c00350ab:	85 d2                	test   %edx,%edx
c00350ad:	0f 84 1b 01 00 00    	je     c00351ce <_dtoa_r+0x112e>
c00350b3:	05 33 04 00 00       	add    $0x433,%eax
c00350b8:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00350bb:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00350be:	e9 0b f9 ff ff       	jmp    c00349ce <_dtoa_r+0x92e>
c00350c3:	85 c0                	test   %eax,%eax
c00350c5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00350c8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00350cb:	7e 45                	jle    c0035112 <_dtoa_r+0x1072>
c00350cd:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00350d0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c00350d7:	00 
c00350d8:	89 34 24             	mov    %esi,(%esp)
c00350db:	89 44 24 04          	mov    %eax,0x4(%esp)
c00350df:	e8 8c 11 00 00       	call   c0036270 <__lshift>
c00350e4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c00350e7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00350eb:	89 04 24             	mov    %eax,(%esp)
c00350ee:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00350f1:	e8 9a 12 00 00       	call   c0036390 <__mcmp>
c00350f6:	83 f8 00             	cmp    $0x0,%eax
c00350f9:	0f 8e 5b 01 00 00    	jle    c003525a <_dtoa_r+0x11ba>
c00350ff:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035103:	0f 84 0c 01 00 00    	je     c0035215 <_dtoa_r+0x1175>
c0035109:	8b 45 94             	mov    -0x6c(%ebp),%eax
c003510c:	83 c0 31             	add    $0x31,%eax
c003510f:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0035112:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035115:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035119:	89 cb                	mov    %ecx,%ebx
c003511b:	88 03                	mov    %al,(%ebx)
c003511d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035120:	89 fb                	mov    %edi,%ebx
c0035122:	8d 79 01             	lea    0x1(%ecx),%edi
c0035125:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035128:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003512b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003512e:	e9 8f f7 ff ff       	jmp    c00348c2 <_dtoa_r+0x822>
c0035133:	dd d8                	fstp   %st(0)
c0035135:	dd d8                	fstp   %st(0)
c0035137:	dd d8                	fstp   %st(0)
c0035139:	eb 0d                	jmp    c0035148 <_dtoa_r+0x10a8>
c003513b:	90                   	nop
c003513c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035140:	dd d8                	fstp   %st(0)
c0035142:	dd d8                	fstp   %st(0)
c0035144:	dd d8                	fstp   %st(0)
c0035146:	dd d8                	fstp   %st(0)
c0035148:	89 fb                	mov    %edi,%ebx
c003514a:	89 d7                	mov    %edx,%edi
c003514c:	e9 8d f5 ff ff       	jmp    c00346de <_dtoa_r+0x63e>
c0035151:	29 cb                	sub    %ecx,%ebx
c0035153:	31 c0                	xor    %eax,%eax
c0035155:	e9 74 f8 ff ff       	jmp    c00349ce <_dtoa_r+0x92e>
c003515a:	75 0e                	jne    c003516a <_dtoa_r+0x10ca>
c003515c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035160:	74 08                	je     c003516a <_dtoa_r+0x10ca>
c0035162:	e9 b2 f9 ff ff       	jmp    c0034b19 <_dtoa_r+0xa79>
c0035167:	90                   	nop
c0035168:	89 c2                	mov    %eax,%edx
c003516a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003516e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035171:	74 f5                	je     c0035168 <_dtoa_r+0x10c8>
c0035173:	89 fb                	mov    %edi,%ebx
c0035175:	89 d7                	mov    %edx,%edi
c0035177:	e9 46 f7 ff ff       	jmp    c00348c2 <_dtoa_r+0x822>
c003517c:	8b 40 04             	mov    0x4(%eax),%eax
c003517f:	89 34 24             	mov    %esi,(%esp)
c0035182:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035186:	e8 45 0a 00 00       	call   c0035bd0 <_Balloc>
c003518b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003518e:	89 c3                	mov    %eax,%ebx
c0035190:	8b 41 10             	mov    0x10(%ecx),%eax
c0035193:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003519a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003519e:	89 c8                	mov    %ecx,%eax
c00351a0:	83 c0 0c             	add    $0xc,%eax
c00351a3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00351a7:	8d 43 0c             	lea    0xc(%ebx),%eax
c00351aa:	89 04 24             	mov    %eax,(%esp)
c00351ad:	e8 62 cc ff ff       	call   c0031e14 <memcpy>
c00351b2:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c00351b9:	00 
c00351ba:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00351be:	89 34 24             	mov    %esi,(%esp)
c00351c1:	e8 aa 10 00 00       	call   c0036270 <__lshift>
c00351c6:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00351c9:	e9 9d fc ff ff       	jmp    c0034e6b <_dtoa_r+0xdcb>
c00351ce:	b8 36 00 00 00       	mov    $0x36,%eax
c00351d3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00351d6:	2b 45 e0             	sub    -0x20(%ebp),%eax
c00351d9:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00351dc:	e9 ed f7 ff ff       	jmp    c00349ce <_dtoa_r+0x92e>
c00351e1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00351e5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351e8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351eb:	74 28                	je     c0035215 <_dtoa_r+0x1175>
c00351ed:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00351f1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00351f4:	83 c0 01             	add    $0x1,%eax
c00351f7:	89 cb                	mov    %ecx,%ebx
c00351f9:	e9 1d ff ff ff       	jmp    c003511b <_dtoa_r+0x107b>
c00351fe:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035201:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035204:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0035207:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003520a:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003520d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035210:	e9 cc f8 ff ff       	jmp    c0034ae1 <_dtoa_r+0xa41>
c0035215:	8b 45 98             	mov    -0x68(%ebp),%eax
c0035218:	b9 39 00 00 00       	mov    $0x39,%ecx
c003521d:	8d 50 01             	lea    0x1(%eax),%edx
c0035220:	c6 00 39             	movb   $0x39,(%eax)
c0035223:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035226:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035229:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003522c:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003522f:	e9 fa f8 ff ff       	jmp    c0034b2e <_dtoa_r+0xa8e>
c0035234:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0035237:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c003523a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003523d:	83 fb 39             	cmp    $0x39,%ebx
c0035240:	74 d3                	je     c0035215 <_dtoa_r+0x1175>
c0035242:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035245:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0035248:	83 c0 31             	add    $0x31,%eax
c003524b:	85 c9                	test   %ecx,%ecx
c003524d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035250:	0f 4e c3             	cmovle %ebx,%eax
c0035253:	89 cb                	mov    %ecx,%ebx
c0035255:	e9 c1 fe ff ff       	jmp    c003511b <_dtoa_r+0x107b>
c003525a:	0f 85 b2 fe ff ff    	jne    c0035112 <_dtoa_r+0x1072>
c0035260:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035264:	0f 84 a8 fe ff ff    	je     c0035112 <_dtoa_r+0x1072>
c003526a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035270:	e9 8a fe ff ff       	jmp    c00350ff <_dtoa_r+0x105f>
c0035275:	0f 85 c7 f3 ff ff    	jne    c0034642 <_dtoa_r+0x5a2>
c003527b:	dd d8                	fstp   %st(0)
c003527d:	dd d8                	fstp   %st(0)
c003527f:	90                   	nop
c0035280:	e9 65 fd ff ff       	jmp    c0034fea <_dtoa_r+0xf4a>
c0035285:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035288:	e9 dd f5 ff ff       	jmp    c003486a <_dtoa_r+0x7ca>
c003528d:	8d 76 00             	lea    0x0(%esi),%esi
c0035290:	0f 84 7a f5 ff ff    	je     c0034810 <_dtoa_r+0x770>
c0035296:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003529b:	29 d0                	sub    %edx,%eax
c003529d:	e9 ab f8 ff ff       	jmp    c0034b4d <_dtoa_r+0xaad>
c00352a2:	b8 01 00 00 00       	mov    $0x1,%eax
c00352a7:	e9 d9 ef ff ff       	jmp    c0034285 <_dtoa_r+0x1e5>
c00352ac:	31 d2                	xor    %edx,%edx
c00352ae:	e9 36 f1 ff ff       	jmp    c00343e9 <_dtoa_r+0x349>
c00352b3:	66 90                	xchg   %ax,%ax
c00352b5:	66 90                	xchg   %ax,%ax
c00352b7:	66 90                	xchg   %ax,%ax
c00352b9:	66 90                	xchg   %ax,%ax
c00352bb:	66 90                	xchg   %ax,%ax
c00352bd:	66 90                	xchg   %ax,%ax
c00352bf:	90                   	nop

c00352c0 <_setlocale_r>:
c00352c0:	55                   	push   %ebp
c00352c1:	89 e5                	mov    %esp,%ebp
c00352c3:	53                   	push   %ebx
c00352c4:	83 ec 14             	sub    $0x14,%esp
c00352c7:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00352ca:	85 db                	test   %ebx,%ebx
c00352cc:	74 14                	je     c00352e2 <_setlocale_r+0x22>
c00352ce:	c7 44 24 04 48 9b 03 	movl   $0xc0039b48,0x4(%esp)
c00352d5:	c0 
c00352d6:	89 1c 24             	mov    %ebx,(%esp)
c00352d9:	e8 82 17 00 00       	call   c0036a60 <strcmp>
c00352de:	85 c0                	test   %eax,%eax
c00352e0:	75 0e                	jne    c00352f0 <_setlocale_r+0x30>
c00352e2:	83 c4 14             	add    $0x14,%esp
c00352e5:	b8 44 99 03 c0       	mov    $0xc0039944,%eax
c00352ea:	5b                   	pop    %ebx
c00352eb:	5d                   	pop    %ebp
c00352ec:	c3                   	ret    
c00352ed:	8d 76 00             	lea    0x0(%esi),%esi
c00352f0:	c7 44 24 04 44 99 03 	movl   $0xc0039944,0x4(%esp)
c00352f7:	c0 
c00352f8:	89 1c 24             	mov    %ebx,(%esp)
c00352fb:	e8 60 17 00 00       	call   c0036a60 <strcmp>
c0035300:	85 c0                	test   %eax,%eax
c0035302:	74 de                	je     c00352e2 <_setlocale_r+0x22>
c0035304:	89 1c 24             	mov    %ebx,(%esp)
c0035307:	c7 44 24 04 7e 99 03 	movl   $0xc003997e,0x4(%esp)
c003530e:	c0 
c003530f:	e8 4c 17 00 00       	call   c0036a60 <strcmp>
c0035314:	89 c2                	mov    %eax,%edx
c0035316:	31 c0                	xor    %eax,%eax
c0035318:	85 d2                	test   %edx,%edx
c003531a:	ba 44 99 03 c0       	mov    $0xc0039944,%edx
c003531f:	0f 44 c2             	cmove  %edx,%eax
c0035322:	83 c4 14             	add    $0x14,%esp
c0035325:	5b                   	pop    %ebx
c0035326:	5d                   	pop    %ebp
c0035327:	c3                   	ret    
c0035328:	90                   	nop
c0035329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035330 <__locale_charset>:
c0035330:	55                   	push   %ebp
c0035331:	b8 c0 d4 03 c0       	mov    $0xc003d4c0,%eax
c0035336:	89 e5                	mov    %esp,%ebp
c0035338:	5d                   	pop    %ebp
c0035339:	c3                   	ret    
c003533a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035340 <__locale_mb_cur_max>:
c0035340:	55                   	push   %ebp
c0035341:	a1 18 d5 03 c0       	mov    0xc003d518,%eax
c0035346:	89 e5                	mov    %esp,%ebp
c0035348:	5d                   	pop    %ebp
c0035349:	c3                   	ret    
c003534a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035350 <__locale_msgcharset>:
c0035350:	55                   	push   %ebp
c0035351:	b8 a0 d4 03 c0       	mov    $0xc003d4a0,%eax
c0035356:	89 e5                	mov    %esp,%ebp
c0035358:	5d                   	pop    %ebp
c0035359:	c3                   	ret    
c003535a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035360 <__locale_cjk_lang>:
c0035360:	55                   	push   %ebp
c0035361:	31 c0                	xor    %eax,%eax
c0035363:	89 e5                	mov    %esp,%ebp
c0035365:	5d                   	pop    %ebp
c0035366:	c3                   	ret    
c0035367:	89 f6                	mov    %esi,%esi
c0035369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035370 <_localeconv_r>:
c0035370:	55                   	push   %ebp
c0035371:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035376:	89 e5                	mov    %esp,%ebp
c0035378:	5d                   	pop    %ebp
c0035379:	c3                   	ret    
c003537a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035380 <setlocale>:
c0035380:	55                   	push   %ebp
c0035381:	89 e5                	mov    %esp,%ebp
c0035383:	83 ec 18             	sub    $0x18,%esp
c0035386:	e8 35 cc ff ff       	call   c0031fc0 <__getreent>
c003538b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003538e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035392:	8b 55 08             	mov    0x8(%ebp),%edx
c0035395:	89 04 24             	mov    %eax,(%esp)
c0035398:	89 54 24 04          	mov    %edx,0x4(%esp)
c003539c:	e8 1f ff ff ff       	call   c00352c0 <_setlocale_r>
c00353a1:	c9                   	leave  
c00353a2:	c3                   	ret    
c00353a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00353a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00353b0 <localeconv>:
c00353b0:	55                   	push   %ebp
c00353b1:	89 e5                	mov    %esp,%ebp
c00353b3:	83 ec 08             	sub    $0x8,%esp
c00353b6:	e8 05 cc ff ff       	call   c0031fc0 <__getreent>
c00353bb:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c00353c0:	c9                   	leave  
c00353c1:	c3                   	ret    
c00353c2:	66 90                	xchg   %ax,%ax
c00353c4:	66 90                	xchg   %ax,%ax
c00353c6:	66 90                	xchg   %ax,%ax
c00353c8:	66 90                	xchg   %ax,%ax
c00353ca:	66 90                	xchg   %ax,%ax
c00353cc:	66 90                	xchg   %ax,%ax
c00353ce:	66 90                	xchg   %ax,%ax

c00353d0 <_malloc_r>:
c00353d0:	55                   	push   %ebp
c00353d1:	89 e5                	mov    %esp,%ebp
c00353d3:	57                   	push   %edi
c00353d4:	56                   	push   %esi
c00353d5:	53                   	push   %ebx
c00353d6:	83 ec 2c             	sub    $0x2c,%esp
c00353d9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00353dc:	8d 50 0b             	lea    0xb(%eax),%edx
c00353df:	83 fa 16             	cmp    $0x16,%edx
c00353e2:	76 6c                	jbe    c0035450 <_malloc_r+0x80>
c00353e4:	89 d7                	mov    %edx,%edi
c00353e6:	83 e7 f8             	and    $0xfffffff8,%edi
c00353e9:	89 fe                	mov    %edi,%esi
c00353eb:	c1 ee 1f             	shr    $0x1f,%esi
c00353ee:	39 c7                	cmp    %eax,%edi
c00353f0:	8b 45 08             	mov    0x8(%ebp),%eax
c00353f3:	89 f2                	mov    %esi,%edx
c00353f5:	72 67                	jb     c003545e <_malloc_r+0x8e>
c00353f7:	84 d2                	test   %dl,%dl
c00353f9:	75 63                	jne    c003545e <_malloc_r+0x8e>
c00353fb:	89 04 24             	mov    %eax,(%esp)
c00353fe:	e8 ad 07 00 00       	call   c0035bb0 <__malloc_lock>
c0035403:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c0035409:	77 65                	ja     c0035470 <_malloc_r+0xa0>
c003540b:	89 fa                	mov    %edi,%edx
c003540d:	c1 ea 03             	shr    $0x3,%edx
c0035410:	8d 04 d5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%edx,8),%eax
c0035417:	8b 58 0c             	mov    0xc(%eax),%ebx
c003541a:	39 c3                	cmp    %eax,%ebx
c003541c:	0f 84 3e 05 00 00    	je     c0035960 <_malloc_r+0x590>
c0035422:	8b 43 04             	mov    0x4(%ebx),%eax
c0035425:	83 e0 fc             	and    $0xfffffffc,%eax
c0035428:	8b 53 0c             	mov    0xc(%ebx),%edx
c003542b:	8b 4b 08             	mov    0x8(%ebx),%ecx
c003542e:	89 51 0c             	mov    %edx,0xc(%ecx)
c0035431:	89 4a 08             	mov    %ecx,0x8(%edx)
c0035434:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035439:	8b 45 08             	mov    0x8(%ebp),%eax
c003543c:	89 04 24             	mov    %eax,(%esp)
c003543f:	e8 7c 07 00 00       	call   c0035bc0 <__malloc_unlock>
c0035444:	8d 43 08             	lea    0x8(%ebx),%eax
c0035447:	83 c4 2c             	add    $0x2c,%esp
c003544a:	5b                   	pop    %ebx
c003544b:	5e                   	pop    %esi
c003544c:	5f                   	pop    %edi
c003544d:	5d                   	pop    %ebp
c003544e:	c3                   	ret    
c003544f:	90                   	nop
c0035450:	bf 10 00 00 00       	mov    $0x10,%edi
c0035455:	31 d2                	xor    %edx,%edx
c0035457:	39 c7                	cmp    %eax,%edi
c0035459:	8b 45 08             	mov    0x8(%ebp),%eax
c003545c:	73 99                	jae    c00353f7 <_malloc_r+0x27>
c003545e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035464:	83 c4 2c             	add    $0x2c,%esp
c0035467:	31 c0                	xor    %eax,%eax
c0035469:	5b                   	pop    %ebx
c003546a:	5e                   	pop    %esi
c003546b:	5f                   	pop    %edi
c003546c:	5d                   	pop    %ebp
c003546d:	c3                   	ret    
c003546e:	66 90                	xchg   %ax,%ax
c0035470:	89 fe                	mov    %edi,%esi
c0035472:	c1 ee 09             	shr    $0x9,%esi
c0035475:	85 f6                	test   %esi,%esi
c0035477:	0f 84 ab 01 00 00    	je     c0035628 <_malloc_r+0x258>
c003547d:	83 fe 04             	cmp    $0x4,%esi
c0035480:	0f 87 8a 03 00 00    	ja     c0035810 <_malloc_r+0x440>
c0035486:	89 fe                	mov    %edi,%esi
c0035488:	c1 ee 06             	shr    $0x6,%esi
c003548b:	83 c6 38             	add    $0x38,%esi
c003548e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035491:	8d 0c 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%ecx
c0035498:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003549b:	39 d9                	cmp    %ebx,%ecx
c003549d:	75 18                	jne    c00354b7 <_malloc_r+0xe7>
c003549f:	eb 28                	jmp    c00354c9 <_malloc_r+0xf9>
c00354a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00354a8:	85 d2                	test   %edx,%edx
c00354aa:	0f 89 78 ff ff ff    	jns    c0035428 <_malloc_r+0x58>
c00354b0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c00354b3:	39 d9                	cmp    %ebx,%ecx
c00354b5:	74 12                	je     c00354c9 <_malloc_r+0xf9>
c00354b7:	8b 43 04             	mov    0x4(%ebx),%eax
c00354ba:	83 e0 fc             	and    $0xfffffffc,%eax
c00354bd:	89 c2                	mov    %eax,%edx
c00354bf:	29 fa                	sub    %edi,%edx
c00354c1:	83 fa 0f             	cmp    $0xf,%edx
c00354c4:	7e e2                	jle    c00354a8 <_malloc_r+0xd8>
c00354c6:	83 ee 01             	sub    $0x1,%esi
c00354c9:	8d 46 01             	lea    0x1(%esi),%eax
c00354cc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00354cf:	8b 1d 50 d5 03 c0    	mov    0xc003d550,%ebx
c00354d5:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c00354da:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c00354e0:	74 6b                	je     c003554d <_malloc_r+0x17d>
c00354e2:	8b 73 04             	mov    0x4(%ebx),%esi
c00354e5:	83 e6 fc             	and    $0xfffffffc,%esi
c00354e8:	89 f0                	mov    %esi,%eax
c00354ea:	29 f8                	sub    %edi,%eax
c00354ec:	83 f8 0f             	cmp    $0xf,%eax
c00354ef:	0f 8f a3 03 00 00    	jg     c0035898 <_malloc_r+0x4c8>
c00354f5:	85 c0                	test   %eax,%eax
c00354f7:	c7 05 54 d5 03 c0 48 	movl   $0xc003d548,0xc003d554
c00354fe:	d5 03 c0 
c0035501:	c7 05 50 d5 03 c0 48 	movl   $0xc003d548,0xc003d550
c0035508:	d5 03 c0 
c003550b:	0f 89 27 01 00 00    	jns    c0035638 <_malloc_r+0x268>
c0035511:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0035517:	0f 87 1b 03 00 00    	ja     c0035838 <_malloc_r+0x468>
c003551d:	c1 ee 03             	shr    $0x3,%esi
c0035520:	b8 01 00 00 00       	mov    $0x1,%eax
c0035525:	89 f1                	mov    %esi,%ecx
c0035527:	8d 14 f5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%esi,8),%edx
c003552e:	c1 f9 02             	sar    $0x2,%ecx
c0035531:	d3 e0                	shl    %cl,%eax
c0035533:	8b 4a 08             	mov    0x8(%edx),%ecx
c0035536:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c003553c:	89 53 0c             	mov    %edx,0xc(%ebx)
c003553f:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0035542:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035547:	89 5a 08             	mov    %ebx,0x8(%edx)
c003554a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c003554d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035550:	be 01 00 00 00       	mov    $0x1,%esi
c0035555:	c1 f9 02             	sar    $0x2,%ecx
c0035558:	d3 e6                	shl    %cl,%esi
c003555a:	39 c6                	cmp    %eax,%esi
c003555c:	0f 87 f6 00 00 00    	ja     c0035658 <_malloc_r+0x288>
c0035562:	85 f0                	test   %esi,%eax
c0035564:	0f 85 76 03 00 00    	jne    c00358e0 <_malloc_r+0x510>
c003556a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003556d:	01 f6                	add    %esi,%esi
c003556f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035572:	85 f0                	test   %esi,%eax
c0035574:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035577:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003557a:	0f 85 60 03 00 00    	jne    c00358e0 <_malloc_r+0x510>
c0035580:	89 ca                	mov    %ecx,%edx
c0035582:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035588:	01 f6                	add    %esi,%esi
c003558a:	83 c2 04             	add    $0x4,%edx
c003558d:	85 f0                	test   %esi,%eax
c003558f:	74 f7                	je     c0035588 <_malloc_r+0x1b8>
c0035591:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035594:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035597:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003559a:	8d 34 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%esi
c00355a1:	89 f1                	mov    %esi,%ecx
c00355a3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00355a6:	8b 59 0c             	mov    0xc(%ecx),%ebx
c00355a9:	39 d9                	cmp    %ebx,%ecx
c00355ab:	75 1e                	jne    c00355cb <_malloc_r+0x1fb>
c00355ad:	e9 36 03 00 00       	jmp    c00358e8 <_malloc_r+0x518>
c00355b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00355b8:	85 d2                	test   %edx,%edx
c00355ba:	0f 89 c0 03 00 00    	jns    c0035980 <_malloc_r+0x5b0>
c00355c0:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c00355c3:	39 d9                	cmp    %ebx,%ecx
c00355c5:	0f 84 1d 03 00 00    	je     c00358e8 <_malloc_r+0x518>
c00355cb:	8b 43 04             	mov    0x4(%ebx),%eax
c00355ce:	83 e0 fc             	and    $0xfffffffc,%eax
c00355d1:	89 c2                	mov    %eax,%edx
c00355d3:	29 fa                	sub    %edi,%edx
c00355d5:	83 fa 0f             	cmp    $0xf,%edx
c00355d8:	7e de                	jle    c00355b8 <_malloc_r+0x1e8>
c00355da:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c00355dd:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c00355e0:	83 cf 01             	or     $0x1,%edi
c00355e3:	8b 73 08             	mov    0x8(%ebx),%esi
c00355e6:	89 7b 04             	mov    %edi,0x4(%ebx)
c00355e9:	89 4e 0c             	mov    %ecx,0xc(%esi)
c00355ec:	89 71 08             	mov    %esi,0x8(%ecx)
c00355ef:	89 d1                	mov    %edx,%ecx
c00355f1:	83 c9 01             	or     $0x1,%ecx
c00355f4:	a3 54 d5 03 c0       	mov    %eax,0xc003d554
c00355f9:	a3 50 d5 03 c0       	mov    %eax,0xc003d550
c00355fe:	c7 40 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%eax)
c0035605:	c7 40 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%eax)
c003560c:	89 48 04             	mov    %ecx,0x4(%eax)
c003560f:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0035612:	8b 45 08             	mov    0x8(%ebp),%eax
c0035615:	89 04 24             	mov    %eax,(%esp)
c0035618:	e8 a3 05 00 00       	call   c0035bc0 <__malloc_unlock>
c003561d:	8d 43 08             	lea    0x8(%ebx),%eax
c0035620:	e9 22 fe ff ff       	jmp    c0035447 <_malloc_r+0x77>
c0035625:	8d 76 00             	lea    0x0(%esi),%esi
c0035628:	b8 7e 00 00 00       	mov    $0x7e,%eax
c003562d:	be 3f 00 00 00       	mov    $0x3f,%esi
c0035632:	e9 5a fe ff ff       	jmp    c0035491 <_malloc_r+0xc1>
c0035637:	90                   	nop
c0035638:	8b 45 08             	mov    0x8(%ebp),%eax
c003563b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0035640:	89 04 24             	mov    %eax,(%esp)
c0035643:	e8 78 05 00 00       	call   c0035bc0 <__malloc_unlock>
c0035648:	83 c4 2c             	add    $0x2c,%esp
c003564b:	8d 43 08             	lea    0x8(%ebx),%eax
c003564e:	5b                   	pop    %ebx
c003564f:	5e                   	pop    %esi
c0035650:	5f                   	pop    %edi
c0035651:	5d                   	pop    %ebp
c0035652:	c3                   	ret    
c0035653:	90                   	nop
c0035654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035658:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c003565e:	8b 73 04             	mov    0x4(%ebx),%esi
c0035661:	83 e6 fc             	and    $0xfffffffc,%esi
c0035664:	39 f7                	cmp    %esi,%edi
c0035666:	77 0d                	ja     c0035675 <_malloc_r+0x2a5>
c0035668:	89 f0                	mov    %esi,%eax
c003566a:	29 f8                	sub    %edi,%eax
c003566c:	83 f8 0f             	cmp    $0xf,%eax
c003566f:	0f 8f 6b 01 00 00    	jg     c00357e0 <_malloc_r+0x410>
c0035675:	8b 0d 50 00 07 c0    	mov    0xc0070050,%ecx
c003567b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003567e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035681:	01 f9                	add    %edi,%ecx
c0035683:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035689:	83 c1 10             	add    $0x10,%ecx
c003568c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035691:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035698:	0f 44 c1             	cmove  %ecx,%eax
c003569b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003569e:	89 44 24 04          	mov    %eax,0x4(%esp)
c00356a2:	8b 45 08             	mov    0x8(%ebp),%eax
c00356a5:	89 04 24             	mov    %eax,(%esp)
c00356a8:	e8 03 13 00 00       	call   c00369b0 <_sbrk_r>
c00356ad:	83 f8 ff             	cmp    $0xffffffff,%eax
c00356b0:	89 c1                	mov    %eax,%ecx
c00356b2:	0f 84 17 03 00 00    	je     c00359cf <_malloc_r+0x5ff>
c00356b8:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00356bb:	0f 87 02 03 00 00    	ja     c00359c3 <_malloc_r+0x5f3>
c00356c1:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00356c4:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c00356ca:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c00356cd:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c00356d3:	0f 84 a9 03 00 00    	je     c0035a82 <_malloc_r+0x6b2>
c00356d9:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c00356e0:	0f 84 ca 03 00 00    	je     c0035ab0 <_malloc_r+0x6e0>
c00356e6:	89 c8                	mov    %ecx,%eax
c00356e8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c00356eb:	01 d0                	add    %edx,%eax
c00356ed:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c00356f2:	89 c8                	mov    %ecx,%eax
c00356f4:	ba 00 10 00 00       	mov    $0x1000,%edx
c00356f9:	83 e0 07             	and    $0x7,%eax
c00356fc:	74 0c                	je     c003570a <_malloc_r+0x33a>
c00356fe:	29 c1                	sub    %eax,%ecx
c0035700:	ba 08 10 00 00       	mov    $0x1008,%edx
c0035705:	8d 49 08             	lea    0x8(%ecx),%ecx
c0035708:	29 c2                	sub    %eax,%edx
c003570a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003570d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035710:	01 c8                	add    %ecx,%eax
c0035712:	25 ff 0f 00 00       	and    $0xfff,%eax
c0035717:	29 c2                	sub    %eax,%edx
c0035719:	8b 45 08             	mov    0x8(%ebp),%eax
c003571c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0035720:	89 55 e0             	mov    %edx,-0x20(%ebp)
c0035723:	89 04 24             	mov    %eax,(%esp)
c0035726:	e8 85 12 00 00       	call   c00369b0 <_sbrk_r>
c003572b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003572e:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035731:	0f 84 6d 03 00 00    	je     c0035aa4 <_malloc_r+0x6d4>
c0035737:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003573a:	29 c8                	sub    %ecx,%eax
c003573c:	01 d0                	add    %edx,%eax
c003573e:	83 c8 01             	or     $0x1,%eax
c0035741:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c0035747:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c003574d:	89 0d 48 d5 03 c0    	mov    %ecx,0xc003d548
c0035753:	89 41 04             	mov    %eax,0x4(%ecx)
c0035756:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c003575c:	0f 84 f2 02 00 00    	je     c0035a54 <_malloc_r+0x684>
c0035762:	83 fe 0f             	cmp    $0xf,%esi
c0035765:	0f 86 8d 02 00 00    	jbe    c00359f8 <_malloc_r+0x628>
c003576b:	8b 43 04             	mov    0x4(%ebx),%eax
c003576e:	83 ee 0c             	sub    $0xc,%esi
c0035771:	83 e6 f8             	and    $0xfffffff8,%esi
c0035774:	83 e0 01             	and    $0x1,%eax
c0035777:	09 f0                	or     %esi,%eax
c0035779:	83 fe 0f             	cmp    $0xf,%esi
c003577c:	89 43 04             	mov    %eax,0x4(%ebx)
c003577f:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035784:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003578b:	00 
c003578c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035793:	00 
c0035794:	0f 87 a2 02 00 00    	ja     c0035a3c <_malloc_r+0x66c>
c003579a:	3b 15 4c 00 07 c0    	cmp    0xc007004c,%edx
c00357a0:	76 06                	jbe    c00357a8 <_malloc_r+0x3d8>
c00357a2:	89 15 4c 00 07 c0    	mov    %edx,0xc007004c
c00357a8:	3b 15 48 00 07 c0    	cmp    0xc0070048,%edx
c00357ae:	76 06                	jbe    c00357b6 <_malloc_r+0x3e6>
c00357b0:	89 15 48 00 07 c0    	mov    %edx,0xc0070048
c00357b6:	8b 50 04             	mov    0x4(%eax),%edx
c00357b9:	89 c3                	mov    %eax,%ebx
c00357bb:	83 e2 fc             	and    $0xfffffffc,%edx
c00357be:	89 d0                	mov    %edx,%eax
c00357c0:	29 f8                	sub    %edi,%eax
c00357c2:	39 d7                	cmp    %edx,%edi
c00357c4:	77 05                	ja     c00357cb <_malloc_r+0x3fb>
c00357c6:	83 f8 0f             	cmp    $0xf,%eax
c00357c9:	7f 15                	jg     c00357e0 <_malloc_r+0x410>
c00357cb:	8b 45 08             	mov    0x8(%ebp),%eax
c00357ce:	89 04 24             	mov    %eax,(%esp)
c00357d1:	e8 ea 03 00 00       	call   c0035bc0 <__malloc_unlock>
c00357d6:	31 c0                	xor    %eax,%eax
c00357d8:	e9 6a fc ff ff       	jmp    c0035447 <_malloc_r+0x77>
c00357dd:	8d 76 00             	lea    0x0(%esi),%esi
c00357e0:	89 fa                	mov    %edi,%edx
c00357e2:	83 c8 01             	or     $0x1,%eax
c00357e5:	83 ca 01             	or     $0x1,%edx
c00357e8:	89 53 04             	mov    %edx,0x4(%ebx)
c00357eb:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c00357ee:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c00357f4:	89 42 04             	mov    %eax,0x4(%edx)
c00357f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00357fa:	89 04 24             	mov    %eax,(%esp)
c00357fd:	e8 be 03 00 00       	call   c0035bc0 <__malloc_unlock>
c0035802:	83 c4 2c             	add    $0x2c,%esp
c0035805:	8d 43 08             	lea    0x8(%ebx),%eax
c0035808:	5b                   	pop    %ebx
c0035809:	5e                   	pop    %esi
c003580a:	5f                   	pop    %edi
c003580b:	5d                   	pop    %ebp
c003580c:	c3                   	ret    
c003580d:	8d 76 00             	lea    0x0(%esi),%esi
c0035810:	83 fe 14             	cmp    $0x14,%esi
c0035813:	0f 86 8f 01 00 00    	jbe    c00359a8 <_malloc_r+0x5d8>
c0035819:	83 fe 54             	cmp    $0x54,%esi
c003581c:	0f 87 be 01 00 00    	ja     c00359e0 <_malloc_r+0x610>
c0035822:	89 fe                	mov    %edi,%esi
c0035824:	c1 ee 0c             	shr    $0xc,%esi
c0035827:	83 c6 6e             	add    $0x6e,%esi
c003582a:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003582d:	e9 5f fc ff ff       	jmp    c0035491 <_malloc_r+0xc1>
c0035832:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035838:	89 f1                	mov    %esi,%ecx
c003583a:	c1 e9 09             	shr    $0x9,%ecx
c003583d:	83 f9 04             	cmp    $0x4,%ecx
c0035840:	0f 86 6d 01 00 00    	jbe    c00359b3 <_malloc_r+0x5e3>
c0035846:	83 f9 14             	cmp    $0x14,%ecx
c0035849:	0f 87 0f 02 00 00    	ja     c0035a5e <_malloc_r+0x68e>
c003584f:	83 c1 5b             	add    $0x5b,%ecx
c0035852:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035855:	8d 04 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%eax
c003585c:	8b 50 08             	mov    0x8(%eax),%edx
c003585f:	39 c2                	cmp    %eax,%edx
c0035861:	0f 84 a1 01 00 00    	je     c0035a08 <_malloc_r+0x638>
c0035867:	90                   	nop
c0035868:	8b 4a 04             	mov    0x4(%edx),%ecx
c003586b:	83 e1 fc             	and    $0xfffffffc,%ecx
c003586e:	39 ce                	cmp    %ecx,%esi
c0035870:	73 07                	jae    c0035879 <_malloc_r+0x4a9>
c0035872:	8b 52 08             	mov    0x8(%edx),%edx
c0035875:	39 d0                	cmp    %edx,%eax
c0035877:	75 ef                	jne    c0035868 <_malloc_r+0x498>
c0035879:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003587c:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035881:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035884:	89 53 08             	mov    %edx,0x8(%ebx)
c0035887:	89 59 08             	mov    %ebx,0x8(%ecx)
c003588a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003588d:	e9 bb fc ff ff       	jmp    c003554d <_malloc_r+0x17d>
c0035892:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035898:	89 c1                	mov    %eax,%ecx
c003589a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003589d:	83 c9 01             	or     $0x1,%ecx
c00358a0:	83 cf 01             	or     $0x1,%edi
c00358a3:	89 7b 04             	mov    %edi,0x4(%ebx)
c00358a6:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c00358ac:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c00358b2:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c00358b9:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c00358c0:	89 4a 04             	mov    %ecx,0x4(%edx)
c00358c3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c00358c6:	8b 45 08             	mov    0x8(%ebp),%eax
c00358c9:	89 04 24             	mov    %eax,(%esp)
c00358cc:	e8 ef 02 00 00       	call   c0035bc0 <__malloc_unlock>
c00358d1:	8d 43 08             	lea    0x8(%ebx),%eax
c00358d4:	e9 6e fb ff ff       	jmp    c0035447 <_malloc_r+0x77>
c00358d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00358e0:	89 75 dc             	mov    %esi,-0x24(%ebp)
c00358e3:	e9 af fc ff ff       	jmp    c0035597 <_malloc_r+0x1c7>
c00358e8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c00358ec:	83 c1 08             	add    $0x8,%ecx
c00358ef:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c00358f3:	0f 85 ad fc ff ff    	jne    c00355a6 <_malloc_r+0x1d6>
c00358f9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00358fc:	eb 12                	jmp    c0035910 <_malloc_r+0x540>
c00358fe:	66 90                	xchg   %ax,%ax
c0035900:	8d 56 f8             	lea    -0x8(%esi),%edx
c0035903:	8b 36                	mov    (%esi),%esi
c0035905:	83 e8 01             	sub    $0x1,%eax
c0035908:	39 d6                	cmp    %edx,%esi
c003590a:	0f 85 ea 01 00 00    	jne    c0035afa <_malloc_r+0x72a>
c0035910:	a8 03                	test   $0x3,%al
c0035912:	75 ec                	jne    c0035900 <_malloc_r+0x530>
c0035914:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0035917:	f7 d0                	not    %eax
c0035919:	23 05 44 d5 03 c0    	and    0xc003d544,%eax
c003591f:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035924:	d1 65 dc             	shll   -0x24(%ebp)
c0035927:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003592a:	39 c2                	cmp    %eax,%edx
c003592c:	0f 87 26 fd ff ff    	ja     c0035658 <_malloc_r+0x288>
c0035932:	85 d2                	test   %edx,%edx
c0035934:	0f 84 1e fd ff ff    	je     c0035658 <_malloc_r+0x288>
c003593a:	85 c2                	test   %eax,%edx
c003593c:	0f 85 c2 01 00 00    	jne    c0035b04 <_malloc_r+0x734>
c0035942:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0035945:	89 f1                	mov    %esi,%ecx
c0035947:	01 d2                	add    %edx,%edx
c0035949:	83 c1 04             	add    $0x4,%ecx
c003594c:	85 d0                	test   %edx,%eax
c003594e:	74 f7                	je     c0035947 <_malloc_r+0x577>
c0035950:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035953:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0035956:	e9 3c fc ff ff       	jmp    c0035597 <_malloc_r+0x1c7>
c003595b:	90                   	nop
c003595c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035960:	8d 43 08             	lea    0x8(%ebx),%eax
c0035963:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035966:	39 d8                	cmp    %ebx,%eax
c0035968:	0f 85 b4 fa ff ff    	jne    c0035422 <_malloc_r+0x52>
c003596e:	8d 42 02             	lea    0x2(%edx),%eax
c0035971:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035974:	e9 56 fb ff ff       	jmp    c00354cf <_malloc_r+0xff>
c0035979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035980:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035985:	8b 53 08             	mov    0x8(%ebx),%edx
c0035988:	8b 43 0c             	mov    0xc(%ebx),%eax
c003598b:	89 42 0c             	mov    %eax,0xc(%edx)
c003598e:	89 50 08             	mov    %edx,0x8(%eax)
c0035991:	8b 45 08             	mov    0x8(%ebp),%eax
c0035994:	89 04 24             	mov    %eax,(%esp)
c0035997:	e8 24 02 00 00       	call   c0035bc0 <__malloc_unlock>
c003599c:	8d 43 08             	lea    0x8(%ebx),%eax
c003599f:	e9 a3 fa ff ff       	jmp    c0035447 <_malloc_r+0x77>
c00359a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00359a8:	83 c6 5b             	add    $0x5b,%esi
c00359ab:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359ae:	e9 de fa ff ff       	jmp    c0035491 <_malloc_r+0xc1>
c00359b3:	89 f1                	mov    %esi,%ecx
c00359b5:	c1 e9 06             	shr    $0x6,%ecx
c00359b8:	83 c1 38             	add    $0x38,%ecx
c00359bb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00359be:	e9 92 fe ff ff       	jmp    c0035855 <_malloc_r+0x485>
c00359c3:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c00359c9:	0f 84 f2 fc ff ff    	je     c00356c1 <_malloc_r+0x2f1>
c00359cf:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c00359d5:	8b 53 04             	mov    0x4(%ebx),%edx
c00359d8:	83 e2 fc             	and    $0xfffffffc,%edx
c00359db:	e9 de fd ff ff       	jmp    c00357be <_malloc_r+0x3ee>
c00359e0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c00359e6:	77 3c                	ja     c0035a24 <_malloc_r+0x654>
c00359e8:	89 fe                	mov    %edi,%esi
c00359ea:	c1 ee 0f             	shr    $0xf,%esi
c00359ed:	83 c6 77             	add    $0x77,%esi
c00359f0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359f3:	e9 99 fa ff ff       	jmp    c0035491 <_malloc_r+0xc1>
c00359f8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c00359ff:	89 cb                	mov    %ecx,%ebx
c0035a01:	31 d2                	xor    %edx,%edx
c0035a03:	e9 b6 fd ff ff       	jmp    c00357be <_malloc_r+0x3ee>
c0035a08:	c1 f9 02             	sar    $0x2,%ecx
c0035a0b:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a10:	d3 e0                	shl    %cl,%eax
c0035a12:	89 d1                	mov    %edx,%ecx
c0035a14:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c0035a1a:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035a1f:	e9 5d fe ff ff       	jmp    c0035881 <_malloc_r+0x4b1>
c0035a24:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c0035a2a:	77 47                	ja     c0035a73 <_malloc_r+0x6a3>
c0035a2c:	89 fe                	mov    %edi,%esi
c0035a2e:	c1 ee 12             	shr    $0x12,%esi
c0035a31:	83 c6 7c             	add    $0x7c,%esi
c0035a34:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a37:	e9 55 fa ff ff       	jmp    c0035491 <_malloc_r+0xc1>
c0035a3c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035a3f:	83 c3 08             	add    $0x8,%ebx
c0035a42:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035a46:	89 04 24             	mov    %eax,(%esp)
c0035a49:	e8 c2 22 00 00       	call   c0037d10 <_free_r>
c0035a4e:	8b 15 20 00 07 c0    	mov    0xc0070020,%edx
c0035a54:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035a59:	e9 3c fd ff ff       	jmp    c003579a <_malloc_r+0x3ca>
c0035a5e:	83 f9 54             	cmp    $0x54,%ecx
c0035a61:	77 58                	ja     c0035abb <_malloc_r+0x6eb>
c0035a63:	89 f1                	mov    %esi,%ecx
c0035a65:	c1 e9 0c             	shr    $0xc,%ecx
c0035a68:	83 c1 6e             	add    $0x6e,%ecx
c0035a6b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a6e:	e9 e2 fd ff ff       	jmp    c0035855 <_malloc_r+0x485>
c0035a73:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a78:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035a7d:	e9 0f fa ff ff       	jmp    c0035491 <_malloc_r+0xc1>
c0035a82:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035a89:	0f 85 4a fc ff ff    	jne    c00356d9 <_malloc_r+0x309>
c0035a8f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035a92:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035a97:	01 f1                	add    %esi,%ecx
c0035a99:	83 c9 01             	or     $0x1,%ecx
c0035a9c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035a9f:	e9 f6 fc ff ff       	jmp    c003579a <_malloc_r+0x3ca>
c0035aa4:	b8 01 00 00 00       	mov    $0x1,%eax
c0035aa9:	31 d2                	xor    %edx,%edx
c0035aab:	e9 91 fc ff ff       	jmp    c0035741 <_malloc_r+0x371>
c0035ab0:	89 0d 20 d5 03 c0    	mov    %ecx,0xc003d520
c0035ab6:	e9 37 fc ff ff       	jmp    c00356f2 <_malloc_r+0x322>
c0035abb:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035ac1:	77 10                	ja     c0035ad3 <_malloc_r+0x703>
c0035ac3:	89 f1                	mov    %esi,%ecx
c0035ac5:	c1 e9 0f             	shr    $0xf,%ecx
c0035ac8:	83 c1 77             	add    $0x77,%ecx
c0035acb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035ace:	e9 82 fd ff ff       	jmp    c0035855 <_malloc_r+0x485>
c0035ad3:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035ad9:	77 10                	ja     c0035aeb <_malloc_r+0x71b>
c0035adb:	89 f1                	mov    %esi,%ecx
c0035add:	c1 e9 12             	shr    $0x12,%ecx
c0035ae0:	83 c1 7c             	add    $0x7c,%ecx
c0035ae3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035ae6:	e9 6a fd ff ff       	jmp    c0035855 <_malloc_r+0x485>
c0035aeb:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035af0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035af5:	e9 5b fd ff ff       	jmp    c0035855 <_malloc_r+0x485>
c0035afa:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035aff:	e9 20 fe ff ff       	jmp    c0035924 <_malloc_r+0x554>
c0035b04:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035b07:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035b0a:	e9 88 fa ff ff       	jmp    c0035597 <_malloc_r+0x1c7>
c0035b0f:	90                   	nop

c0035b10 <memchr>:
c0035b10:	55                   	push   %ebp
c0035b11:	89 e5                	mov    %esp,%ebp
c0035b13:	57                   	push   %edi
c0035b14:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035b18:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035b1b:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035b1e:	31 d2                	xor    %edx,%edx
c0035b20:	85 c9                	test   %ecx,%ecx
c0035b22:	74 79                	je     c0035b9d <L20>
c0035b24:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b2a:	74 28                	je     c0035b54 <L5>
c0035b2c:	3a 07                	cmp    (%edi),%al
c0035b2e:	74 6a                	je     c0035b9a <L15>
c0035b30:	47                   	inc    %edi
c0035b31:	49                   	dec    %ecx
c0035b32:	74 69                	je     c0035b9d <L20>
c0035b34:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b3a:	74 18                	je     c0035b54 <L5>
c0035b3c:	3a 07                	cmp    (%edi),%al
c0035b3e:	74 5a                	je     c0035b9a <L15>
c0035b40:	47                   	inc    %edi
c0035b41:	49                   	dec    %ecx
c0035b42:	74 59                	je     c0035b9d <L20>
c0035b44:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b4a:	74 08                	je     c0035b54 <L5>
c0035b4c:	3a 07                	cmp    (%edi),%al
c0035b4e:	74 4a                	je     c0035b9a <L15>
c0035b50:	47                   	inc    %edi
c0035b51:	49                   	dec    %ecx
c0035b52:	74 49                	je     c0035b9d <L20>

c0035b54 <L5>:
c0035b54:	88 c4                	mov    %al,%ah
c0035b56:	89 c2                	mov    %eax,%edx
c0035b58:	c1 e2 10             	shl    $0x10,%edx
c0035b5b:	09 d0                	or     %edx,%eax
c0035b5d:	53                   	push   %ebx
c0035b5e:	66 90                	xchg   %ax,%ax

c0035b60 <L8>:
c0035b60:	83 e9 04             	sub    $0x4,%ecx
c0035b63:	72 1c                	jb     c0035b81 <L9>
c0035b65:	8b 17                	mov    (%edi),%edx
c0035b67:	83 c7 04             	add    $0x4,%edi
c0035b6a:	31 c2                	xor    %eax,%edx
c0035b6c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035b72:	f7 d2                	not    %edx
c0035b74:	21 d3                	and    %edx,%ebx
c0035b76:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035b7c:	74 e2                	je     c0035b60 <L8>
c0035b7e:	83 ef 04             	sub    $0x4,%edi

c0035b81 <L9>:
c0035b81:	5b                   	pop    %ebx
c0035b82:	31 d2                	xor    %edx,%edx
c0035b84:	83 c1 04             	add    $0x4,%ecx
c0035b87:	74 14                	je     c0035b9d <L20>
c0035b89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035b90 <L10>:
c0035b90:	3a 07                	cmp    (%edi),%al
c0035b92:	74 06                	je     c0035b9a <L15>
c0035b94:	47                   	inc    %edi
c0035b95:	49                   	dec    %ecx
c0035b96:	75 f8                	jne    c0035b90 <L10>
c0035b98:	31 ff                	xor    %edi,%edi

c0035b9a <L15>:
c0035b9a:	4a                   	dec    %edx
c0035b9b:	21 fa                	and    %edi,%edx

c0035b9d <L20>:
c0035b9d:	89 d0                	mov    %edx,%eax
c0035b9f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035ba2:	5f                   	pop    %edi
c0035ba3:	c9                   	leave  
c0035ba4:	c3                   	ret    
c0035ba5:	66 90                	xchg   %ax,%ax
c0035ba7:	66 90                	xchg   %ax,%ax
c0035ba9:	66 90                	xchg   %ax,%ax
c0035bab:	66 90                	xchg   %ax,%ax
c0035bad:	66 90                	xchg   %ax,%ax
c0035baf:	90                   	nop

c0035bb0 <__malloc_lock>:
c0035bb0:	55                   	push   %ebp
c0035bb1:	89 e5                	mov    %esp,%ebp
c0035bb3:	5d                   	pop    %ebp
c0035bb4:	c3                   	ret    
c0035bb5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035bb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035bc0 <__malloc_unlock>:
c0035bc0:	55                   	push   %ebp
c0035bc1:	89 e5                	mov    %esp,%ebp
c0035bc3:	5d                   	pop    %ebp
c0035bc4:	c3                   	ret    
c0035bc5:	66 90                	xchg   %ax,%ax
c0035bc7:	66 90                	xchg   %ax,%ax
c0035bc9:	66 90                	xchg   %ax,%ax
c0035bcb:	66 90                	xchg   %ax,%ax
c0035bcd:	66 90                	xchg   %ax,%ax
c0035bcf:	90                   	nop

c0035bd0 <_Balloc>:
c0035bd0:	55                   	push   %ebp
c0035bd1:	89 e5                	mov    %esp,%ebp
c0035bd3:	57                   	push   %edi
c0035bd4:	56                   	push   %esi
c0035bd5:	53                   	push   %ebx
c0035bd6:	83 ec 1c             	sub    $0x1c,%esp
c0035bd9:	8b 75 08             	mov    0x8(%ebp),%esi
c0035bdc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035bdf:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035be2:	85 c0                	test   %eax,%eax
c0035be4:	74 2a                	je     c0035c10 <_Balloc+0x40>
c0035be6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035be9:	8b 02                	mov    (%edx),%eax
c0035beb:	85 c0                	test   %eax,%eax
c0035bed:	74 49                	je     c0035c38 <_Balloc+0x68>
c0035bef:	8b 08                	mov    (%eax),%ecx
c0035bf1:	89 0a                	mov    %ecx,(%edx)
c0035bf3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035bfa:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035c01:	83 c4 1c             	add    $0x1c,%esp
c0035c04:	5b                   	pop    %ebx
c0035c05:	5e                   	pop    %esi
c0035c06:	5f                   	pop    %edi
c0035c07:	5d                   	pop    %ebp
c0035c08:	c3                   	ret    
c0035c09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035c10:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035c17:	00 
c0035c18:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035c1f:	00 
c0035c20:	89 34 24             	mov    %esi,(%esp)
c0035c23:	e8 38 1f 00 00       	call   c0037b60 <_calloc_r>
c0035c28:	85 c0                	test   %eax,%eax
c0035c2a:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035c2d:	75 b7                	jne    c0035be6 <_Balloc+0x16>
c0035c2f:	31 c0                	xor    %eax,%eax
c0035c31:	eb ce                	jmp    c0035c01 <_Balloc+0x31>
c0035c33:	90                   	nop
c0035c34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035c38:	89 d9                	mov    %ebx,%ecx
c0035c3a:	bf 01 00 00 00       	mov    $0x1,%edi
c0035c3f:	d3 e7                	shl    %cl,%edi
c0035c41:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035c48:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035c4c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035c53:	00 
c0035c54:	89 34 24             	mov    %esi,(%esp)
c0035c57:	e8 04 1f 00 00       	call   c0037b60 <_calloc_r>
c0035c5c:	85 c0                	test   %eax,%eax
c0035c5e:	74 cf                	je     c0035c2f <_Balloc+0x5f>
c0035c60:	89 58 04             	mov    %ebx,0x4(%eax)
c0035c63:	89 78 08             	mov    %edi,0x8(%eax)
c0035c66:	eb 8b                	jmp    c0035bf3 <_Balloc+0x23>
c0035c68:	90                   	nop
c0035c69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035c70 <_Bfree>:
c0035c70:	55                   	push   %ebp
c0035c71:	89 e5                	mov    %esp,%ebp
c0035c73:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c76:	85 c0                	test   %eax,%eax
c0035c78:	74 12                	je     c0035c8c <_Bfree+0x1c>
c0035c7a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035c7d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035c80:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035c83:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035c86:	8b 0a                	mov    (%edx),%ecx
c0035c88:	89 08                	mov    %ecx,(%eax)
c0035c8a:	89 02                	mov    %eax,(%edx)
c0035c8c:	5d                   	pop    %ebp
c0035c8d:	c3                   	ret    
c0035c8e:	66 90                	xchg   %ax,%ax

c0035c90 <__multadd>:
c0035c90:	55                   	push   %ebp
c0035c91:	89 e5                	mov    %esp,%ebp
c0035c93:	57                   	push   %edi
c0035c94:	56                   	push   %esi
c0035c95:	53                   	push   %ebx
c0035c96:	83 ec 2c             	sub    $0x2c,%esp
c0035c99:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c9c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035c9f:	8b 40 10             	mov    0x10(%eax),%eax
c0035ca2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035ca5:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035ca8:	8d 78 14             	lea    0x14(%eax),%edi
c0035cab:	31 c0                	xor    %eax,%eax
c0035cad:	8d 76 00             	lea    0x0(%esi),%esi
c0035cb0:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035cb3:	0f b7 d1             	movzwl %cx,%edx
c0035cb6:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035cba:	c1 e9 10             	shr    $0x10,%ecx
c0035cbd:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035cc1:	01 da                	add    %ebx,%edx
c0035cc3:	89 d3                	mov    %edx,%ebx
c0035cc5:	0f b7 d2             	movzwl %dx,%edx
c0035cc8:	c1 eb 10             	shr    $0x10,%ebx
c0035ccb:	01 d9                	add    %ebx,%ecx
c0035ccd:	89 ce                	mov    %ecx,%esi
c0035ccf:	c1 e1 10             	shl    $0x10,%ecx
c0035cd2:	01 d1                	add    %edx,%ecx
c0035cd4:	c1 ee 10             	shr    $0x10,%esi
c0035cd7:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035cda:	83 c0 01             	add    $0x1,%eax
c0035cdd:	89 f3                	mov    %esi,%ebx
c0035cdf:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035ce2:	7f cc                	jg     c0035cb0 <__multadd+0x20>
c0035ce4:	85 f6                	test   %esi,%esi
c0035ce6:	74 1b                	je     c0035d03 <__multadd+0x73>
c0035ce8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035ceb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035cee:	3b 78 08             	cmp    0x8(%eax),%edi
c0035cf1:	7d 1d                	jge    c0035d10 <__multadd+0x80>
c0035cf3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035cf6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035cf9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035cfd:	83 c0 01             	add    $0x1,%eax
c0035d00:	89 47 10             	mov    %eax,0x10(%edi)
c0035d03:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d06:	83 c4 2c             	add    $0x2c,%esp
c0035d09:	5b                   	pop    %ebx
c0035d0a:	5e                   	pop    %esi
c0035d0b:	5f                   	pop    %edi
c0035d0c:	5d                   	pop    %ebp
c0035d0d:	c3                   	ret    
c0035d0e:	66 90                	xchg   %ax,%ax
c0035d10:	8b 40 04             	mov    0x4(%eax),%eax
c0035d13:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035d16:	83 c0 01             	add    $0x1,%eax
c0035d19:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d1d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d20:	89 04 24             	mov    %eax,(%esp)
c0035d23:	e8 a8 fe ff ff       	call   c0035bd0 <_Balloc>
c0035d28:	89 c3                	mov    %eax,%ebx
c0035d2a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d2d:	8b 40 10             	mov    0x10(%eax),%eax
c0035d30:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035d37:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035d3b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d3e:	83 c0 0c             	add    $0xc,%eax
c0035d41:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d45:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035d48:	89 04 24             	mov    %eax,(%esp)
c0035d4b:	e8 c4 c0 ff ff       	call   c0031e14 <memcpy>
c0035d50:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d53:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035d56:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035d59:	8b 50 04             	mov    0x4(%eax),%edx
c0035d5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d5f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035d62:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035d65:	8b 10                	mov    (%eax),%edx
c0035d67:	89 17                	mov    %edx,(%edi)
c0035d69:	89 38                	mov    %edi,(%eax)
c0035d6b:	eb 86                	jmp    c0035cf3 <__multadd+0x63>
c0035d6d:	8d 76 00             	lea    0x0(%esi),%esi

c0035d70 <__s2b>:
c0035d70:	55                   	push   %ebp
c0035d71:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035d76:	89 e5                	mov    %esp,%ebp
c0035d78:	57                   	push   %edi
c0035d79:	56                   	push   %esi
c0035d7a:	53                   	push   %ebx
c0035d7b:	83 ec 2c             	sub    $0x2c,%esp
c0035d7e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035d81:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035d84:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035d87:	8d 48 08             	lea    0x8(%eax),%ecx
c0035d8a:	89 c8                	mov    %ecx,%eax
c0035d8c:	f7 ea                	imul   %edx
c0035d8e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035d91:	d1 fa                	sar    %edx
c0035d93:	29 ca                	sub    %ecx,%edx
c0035d95:	83 fa 01             	cmp    $0x1,%edx
c0035d98:	0f 8e be 00 00 00    	jle    c0035e5c <__s2b+0xec>
c0035d9e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035da3:	31 c9                	xor    %ecx,%ecx
c0035da5:	8d 76 00             	lea    0x0(%esi),%esi
c0035da8:	01 c0                	add    %eax,%eax
c0035daa:	83 c1 01             	add    $0x1,%ecx
c0035dad:	39 c2                	cmp    %eax,%edx
c0035daf:	7f f7                	jg     c0035da8 <__s2b+0x38>
c0035db1:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035db5:	89 1c 24             	mov    %ebx,(%esp)
c0035db8:	e8 13 fe ff ff       	call   c0035bd0 <_Balloc>
c0035dbd:	8b 55 18             	mov    0x18(%ebp),%edx
c0035dc0:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035dc4:	89 50 14             	mov    %edx,0x14(%eax)
c0035dc7:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035dce:	0f 8e 7c 00 00 00    	jle    c0035e50 <__s2b+0xe0>
c0035dd4:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035dd7:	03 75 10             	add    0x10(%ebp),%esi
c0035dda:	89 cf                	mov    %ecx,%edi
c0035ddc:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035ddf:	90                   	nop
c0035de0:	83 c7 01             	add    $0x1,%edi
c0035de3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035de7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dee:	00 
c0035def:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035df3:	89 1c 24             	mov    %ebx,(%esp)
c0035df6:	83 ea 30             	sub    $0x30,%edx
c0035df9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035dfd:	e8 8e fe ff ff       	call   c0035c90 <__multadd>
c0035e02:	39 f7                	cmp    %esi,%edi
c0035e04:	75 da                	jne    c0035de0 <__s2b+0x70>
c0035e06:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035e09:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035e0c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035e10:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035e13:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035e16:	7e 2e                	jle    c0035e46 <__s2b+0xd6>
c0035e18:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035e1b:	29 cf                	sub    %ecx,%edi
c0035e1d:	01 f7                	add    %esi,%edi
c0035e1f:	90                   	nop
c0035e20:	83 c6 01             	add    $0x1,%esi
c0035e23:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035e27:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035e2e:	00 
c0035e2f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e33:	89 1c 24             	mov    %ebx,(%esp)
c0035e36:	83 ea 30             	sub    $0x30,%edx
c0035e39:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035e3d:	e8 4e fe ff ff       	call   c0035c90 <__multadd>
c0035e42:	39 fe                	cmp    %edi,%esi
c0035e44:	75 da                	jne    c0035e20 <__s2b+0xb0>
c0035e46:	83 c4 2c             	add    $0x2c,%esp
c0035e49:	5b                   	pop    %ebx
c0035e4a:	5e                   	pop    %esi
c0035e4b:	5f                   	pop    %edi
c0035e4c:	5d                   	pop    %ebp
c0035e4d:	c3                   	ret    
c0035e4e:	66 90                	xchg   %ax,%ax
c0035e50:	83 c6 0a             	add    $0xa,%esi
c0035e53:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035e5a:	eb b4                	jmp    c0035e10 <__s2b+0xa0>
c0035e5c:	31 c9                	xor    %ecx,%ecx
c0035e5e:	e9 4e ff ff ff       	jmp    c0035db1 <__s2b+0x41>
c0035e63:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035e69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035e70 <__hi0bits>:
c0035e70:	55                   	push   %ebp
c0035e71:	31 c9                	xor    %ecx,%ecx
c0035e73:	89 e5                	mov    %esp,%ebp
c0035e75:	8b 55 08             	mov    0x8(%ebp),%edx
c0035e78:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035e7e:	75 05                	jne    c0035e85 <__hi0bits+0x15>
c0035e80:	c1 e2 10             	shl    $0x10,%edx
c0035e83:	b1 10                	mov    $0x10,%cl
c0035e85:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035e8b:	75 06                	jne    c0035e93 <__hi0bits+0x23>
c0035e8d:	83 c1 08             	add    $0x8,%ecx
c0035e90:	c1 e2 08             	shl    $0x8,%edx
c0035e93:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035e99:	75 06                	jne    c0035ea1 <__hi0bits+0x31>
c0035e9b:	83 c1 04             	add    $0x4,%ecx
c0035e9e:	c1 e2 04             	shl    $0x4,%edx
c0035ea1:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035ea7:	75 06                	jne    c0035eaf <__hi0bits+0x3f>
c0035ea9:	83 c1 02             	add    $0x2,%ecx
c0035eac:	c1 e2 02             	shl    $0x2,%edx
c0035eaf:	85 d2                	test   %edx,%edx
c0035eb1:	89 c8                	mov    %ecx,%eax
c0035eb3:	78 0d                	js     c0035ec2 <__hi0bits+0x52>
c0035eb5:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035ebb:	b8 20 00 00 00       	mov    $0x20,%eax
c0035ec0:	75 06                	jne    c0035ec8 <__hi0bits+0x58>
c0035ec2:	5d                   	pop    %ebp
c0035ec3:	c3                   	ret    
c0035ec4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035ec8:	8d 41 01             	lea    0x1(%ecx),%eax
c0035ecb:	5d                   	pop    %ebp
c0035ecc:	c3                   	ret    
c0035ecd:	8d 76 00             	lea    0x0(%esi),%esi

c0035ed0 <__lo0bits>:
c0035ed0:	55                   	push   %ebp
c0035ed1:	89 e5                	mov    %esp,%ebp
c0035ed3:	53                   	push   %ebx
c0035ed4:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035ed7:	8b 13                	mov    (%ebx),%edx
c0035ed9:	f6 c2 07             	test   $0x7,%dl
c0035edc:	74 1a                	je     c0035ef8 <__lo0bits+0x28>
c0035ede:	31 c0                	xor    %eax,%eax
c0035ee0:	f6 c2 01             	test   $0x1,%dl
c0035ee3:	75 0f                	jne    c0035ef4 <__lo0bits+0x24>
c0035ee5:	f6 c2 02             	test   $0x2,%dl
c0035ee8:	75 56                	jne    c0035f40 <__lo0bits+0x70>
c0035eea:	c1 ea 02             	shr    $0x2,%edx
c0035eed:	b8 02 00 00 00       	mov    $0x2,%eax
c0035ef2:	89 13                	mov    %edx,(%ebx)
c0035ef4:	5b                   	pop    %ebx
c0035ef5:	5d                   	pop    %ebp
c0035ef6:	c3                   	ret    
c0035ef7:	90                   	nop
c0035ef8:	31 c9                	xor    %ecx,%ecx
c0035efa:	66 85 d2             	test   %dx,%dx
c0035efd:	75 05                	jne    c0035f04 <__lo0bits+0x34>
c0035eff:	c1 ea 10             	shr    $0x10,%edx
c0035f02:	b1 10                	mov    $0x10,%cl
c0035f04:	84 d2                	test   %dl,%dl
c0035f06:	75 06                	jne    c0035f0e <__lo0bits+0x3e>
c0035f08:	83 c1 08             	add    $0x8,%ecx
c0035f0b:	c1 ea 08             	shr    $0x8,%edx
c0035f0e:	f6 c2 0f             	test   $0xf,%dl
c0035f11:	75 06                	jne    c0035f19 <__lo0bits+0x49>
c0035f13:	83 c1 04             	add    $0x4,%ecx
c0035f16:	c1 ea 04             	shr    $0x4,%edx
c0035f19:	f6 c2 03             	test   $0x3,%dl
c0035f1c:	75 06                	jne    c0035f24 <__lo0bits+0x54>
c0035f1e:	83 c1 02             	add    $0x2,%ecx
c0035f21:	c1 ea 02             	shr    $0x2,%edx
c0035f24:	f6 c2 01             	test   $0x1,%dl
c0035f27:	75 0c                	jne    c0035f35 <__lo0bits+0x65>
c0035f29:	d1 ea                	shr    %edx
c0035f2b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035f30:	74 c2                	je     c0035ef4 <__lo0bits+0x24>
c0035f32:	83 c1 01             	add    $0x1,%ecx
c0035f35:	89 13                	mov    %edx,(%ebx)
c0035f37:	89 c8                	mov    %ecx,%eax
c0035f39:	5b                   	pop    %ebx
c0035f3a:	5d                   	pop    %ebp
c0035f3b:	c3                   	ret    
c0035f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f40:	d1 ea                	shr    %edx
c0035f42:	b0 01                	mov    $0x1,%al
c0035f44:	89 13                	mov    %edx,(%ebx)
c0035f46:	5b                   	pop    %ebx
c0035f47:	5d                   	pop    %ebp
c0035f48:	c3                   	ret    
c0035f49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f50 <__i2b>:
c0035f50:	55                   	push   %ebp
c0035f51:	89 e5                	mov    %esp,%ebp
c0035f53:	83 ec 18             	sub    $0x18,%esp
c0035f56:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f59:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035f60:	00 
c0035f61:	89 04 24             	mov    %eax,(%esp)
c0035f64:	e8 67 fc ff ff       	call   c0035bd0 <_Balloc>
c0035f69:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035f6c:	89 50 14             	mov    %edx,0x14(%eax)
c0035f6f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035f76:	c9                   	leave  
c0035f77:	c3                   	ret    
c0035f78:	90                   	nop
c0035f79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f80 <__multiply>:
c0035f80:	55                   	push   %ebp
c0035f81:	89 e5                	mov    %esp,%ebp
c0035f83:	57                   	push   %edi
c0035f84:	56                   	push   %esi
c0035f85:	53                   	push   %ebx
c0035f86:	83 ec 3c             	sub    $0x3c,%esp
c0035f89:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035f8c:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f8f:	8b 7e 10             	mov    0x10(%esi),%edi
c0035f92:	8b 58 10             	mov    0x10(%eax),%ebx
c0035f95:	39 df                	cmp    %ebx,%edi
c0035f97:	7d 0e                	jge    c0035fa7 <__multiply+0x27>
c0035f99:	89 f8                	mov    %edi,%eax
c0035f9b:	89 df                	mov    %ebx,%edi
c0035f9d:	89 c3                	mov    %eax,%ebx
c0035f9f:	89 f0                	mov    %esi,%eax
c0035fa1:	8b 75 10             	mov    0x10(%ebp),%esi
c0035fa4:	89 45 10             	mov    %eax,0x10(%ebp)
c0035fa7:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035faa:	3b 46 08             	cmp    0x8(%esi),%eax
c0035fad:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0035fb0:	0f 9f c0             	setg   %al
c0035fb3:	0f b6 c0             	movzbl %al,%eax
c0035fb6:	03 46 04             	add    0x4(%esi),%eax
c0035fb9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035fbd:	8b 45 08             	mov    0x8(%ebp),%eax
c0035fc0:	89 04 24             	mov    %eax,(%esp)
c0035fc3:	e8 08 fc ff ff       	call   c0035bd0 <_Balloc>
c0035fc8:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035fcb:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035fce:	8d 40 14             	lea    0x14(%eax),%eax
c0035fd1:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0035fd4:	89 d1                	mov    %edx,%ecx
c0035fd6:	39 c8                	cmp    %ecx,%eax
c0035fd8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035fdb:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c0035fde:	73 15                	jae    c0035ff5 <__multiply+0x75>
c0035fe0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0035fe3:	90                   	nop
c0035fe4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035fe8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0035fee:	83 c0 04             	add    $0x4,%eax
c0035ff1:	39 c2                	cmp    %eax,%edx
c0035ff3:	77 f3                	ja     c0035fe8 <__multiply+0x68>
c0035ff5:	8d 46 14             	lea    0x14(%esi),%eax
c0035ff8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0035ffb:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c0035ffe:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036001:	8b 45 10             	mov    0x10(%ebp),%eax
c0036004:	83 c0 14             	add    $0x14,%eax
c0036007:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c003600a:	39 f8                	cmp    %edi,%eax
c003600c:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003600f:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0036012:	0f 83 e8 00 00 00    	jae    c0036100 <__multiply+0x180>
c0036018:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003601b:	8b 00                	mov    (%eax),%eax
c003601d:	0f b7 f8             	movzwl %ax,%edi
c0036020:	85 ff                	test   %edi,%edi
c0036022:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036025:	74 5a                	je     c0036081 <__multiply+0x101>
c0036027:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003602a:	31 db                	xor    %ebx,%ebx
c003602c:	8b 75 d0             	mov    -0x30(%ebp),%esi
c003602f:	eb 09                	jmp    c003603a <__multiply+0xba>
c0036031:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036038:	89 fa                	mov    %edi,%edx
c003603a:	8b 0e                	mov    (%esi),%ecx
c003603c:	83 c6 04             	add    $0x4,%esi
c003603f:	0f b7 3a             	movzwl (%edx),%edi
c0036042:	0f b7 c1             	movzwl %cx,%eax
c0036045:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0036049:	c1 e9 10             	shr    $0x10,%ecx
c003604c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036050:	01 f8                	add    %edi,%eax
c0036052:	01 d8                	add    %ebx,%eax
c0036054:	8b 1a                	mov    (%edx),%ebx
c0036056:	8d 7a 04             	lea    0x4(%edx),%edi
c0036059:	c1 eb 10             	shr    $0x10,%ebx
c003605c:	01 d9                	add    %ebx,%ecx
c003605e:	89 c3                	mov    %eax,%ebx
c0036060:	c1 eb 10             	shr    $0x10,%ebx
c0036063:	0f b7 c0             	movzwl %ax,%eax
c0036066:	01 d9                	add    %ebx,%ecx
c0036068:	89 cb                	mov    %ecx,%ebx
c003606a:	c1 e1 10             	shl    $0x10,%ecx
c003606d:	09 c1                	or     %eax,%ecx
c003606f:	c1 eb 10             	shr    $0x10,%ebx
c0036072:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036075:	89 0a                	mov    %ecx,(%edx)
c0036077:	77 bf                	ja     c0036038 <__multiply+0xb8>
c0036079:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003607c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003607f:	8b 00                	mov    (%eax),%eax
c0036081:	c1 e8 10             	shr    $0x10,%eax
c0036084:	85 c0                	test   %eax,%eax
c0036086:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036089:	74 61                	je     c00360ec <__multiply+0x16c>
c003608b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003608e:	31 ff                	xor    %edi,%edi
c0036090:	89 fe                	mov    %edi,%esi
c0036092:	8b 10                	mov    (%eax),%edx
c0036094:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036097:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003609a:	89 d3                	mov    %edx,%ebx
c003609c:	eb 05                	jmp    c00360a3 <__multiply+0x123>
c003609e:	66 90                	xchg   %ax,%ax
c00360a0:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00360a3:	0f b7 08             	movzwl (%eax),%ecx
c00360a6:	c1 eb 10             	shr    $0x10,%ebx
c00360a9:	0f b7 d2             	movzwl %dx,%edx
c00360ac:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c00360b0:	83 c0 04             	add    $0x4,%eax
c00360b3:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c00360b6:	01 f7                	add    %esi,%edi
c00360b8:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00360bb:	89 fb                	mov    %edi,%ebx
c00360bd:	c1 e3 10             	shl    $0x10,%ebx
c00360c0:	09 d3                	or     %edx,%ebx
c00360c2:	89 1e                	mov    %ebx,(%esi)
c00360c4:	8b 5e 04             	mov    0x4(%esi),%ebx
c00360c7:	8d 4e 04             	lea    0x4(%esi),%ecx
c00360ca:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c00360ce:	c1 ef 10             	shr    $0x10,%edi
c00360d1:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c00360d5:	0f b7 f3             	movzwl %bx,%esi
c00360d8:	01 f2                	add    %esi,%edx
c00360da:	01 fa                	add    %edi,%edx
c00360dc:	89 d6                	mov    %edx,%esi
c00360de:	c1 ee 10             	shr    $0x10,%esi
c00360e1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c00360e4:	77 ba                	ja     c00360a0 <__multiply+0x120>
c00360e6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00360e9:	89 50 04             	mov    %edx,0x4(%eax)
c00360ec:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c00360f0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00360f3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c00360f7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c00360fa:	0f 87 18 ff ff ff    	ja     c0036018 <__multiply+0x98>
c0036100:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0036103:	85 f6                	test   %esi,%esi
c0036105:	7e 29                	jle    c0036130 <__multiply+0x1b0>
c0036107:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c003610a:	8b 5f fc             	mov    -0x4(%edi),%ebx
c003610d:	85 db                	test   %ebx,%ebx
c003610f:	75 1f                	jne    c0036130 <__multiply+0x1b0>
c0036111:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0036114:	89 d0                	mov    %edx,%eax
c0036116:	c1 e0 02             	shl    $0x2,%eax
c0036119:	29 c7                	sub    %eax,%edi
c003611b:	89 f8                	mov    %edi,%eax
c003611d:	eb 09                	jmp    c0036128 <__multiply+0x1a8>
c003611f:	90                   	nop
c0036120:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c0036124:	85 c9                	test   %ecx,%ecx
c0036126:	75 05                	jne    c003612d <__multiply+0x1ad>
c0036128:	83 ea 01             	sub    $0x1,%edx
c003612b:	75 f3                	jne    c0036120 <__multiply+0x1a0>
c003612d:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0036130:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0036133:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0036136:	89 78 10             	mov    %edi,0x10(%eax)
c0036139:	83 c4 3c             	add    $0x3c,%esp
c003613c:	5b                   	pop    %ebx
c003613d:	5e                   	pop    %esi
c003613e:	5f                   	pop    %edi
c003613f:	5d                   	pop    %ebp
c0036140:	c3                   	ret    
c0036141:	eb 0d                	jmp    c0036150 <__pow5mult>
c0036143:	90                   	nop
c0036144:	90                   	nop
c0036145:	90                   	nop
c0036146:	90                   	nop
c0036147:	90                   	nop
c0036148:	90                   	nop
c0036149:	90                   	nop
c003614a:	90                   	nop
c003614b:	90                   	nop
c003614c:	90                   	nop
c003614d:	90                   	nop
c003614e:	90                   	nop
c003614f:	90                   	nop

c0036150 <__pow5mult>:
c0036150:	55                   	push   %ebp
c0036151:	89 e5                	mov    %esp,%ebp
c0036153:	57                   	push   %edi
c0036154:	56                   	push   %esi
c0036155:	53                   	push   %ebx
c0036156:	83 ec 2c             	sub    $0x2c,%esp
c0036159:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003615c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003615f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036162:	89 d8                	mov    %ebx,%eax
c0036164:	83 e0 03             	and    $0x3,%eax
c0036167:	0f 85 a3 00 00 00    	jne    c0036210 <__pow5mult+0xc0>
c003616d:	c1 fb 02             	sar    $0x2,%ebx
c0036170:	85 db                	test   %ebx,%ebx
c0036172:	74 5c                	je     c00361d0 <__pow5mult+0x80>
c0036174:	8b 71 48             	mov    0x48(%ecx),%esi
c0036177:	85 f6                	test   %esi,%esi
c0036179:	0f 84 bd 00 00 00    	je     c003623c <__pow5mult+0xec>
c003617f:	f6 c3 01             	test   $0x1,%bl
c0036182:	75 15                	jne    c0036199 <__pow5mult+0x49>
c0036184:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036188:	d1 fb                	sar    %ebx
c003618a:	74 44                	je     c00361d0 <__pow5mult+0x80>
c003618c:	8b 06                	mov    (%esi),%eax
c003618e:	85 c0                	test   %eax,%eax
c0036190:	74 4e                	je     c00361e0 <__pow5mult+0x90>
c0036192:	89 c6                	mov    %eax,%esi
c0036194:	f6 c3 01             	test   $0x1,%bl
c0036197:	74 ef                	je     c0036188 <__pow5mult+0x38>
c0036199:	89 0c 24             	mov    %ecx,(%esp)
c003619c:	89 74 24 08          	mov    %esi,0x8(%esp)
c00361a0:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00361a4:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361a7:	e8 d4 fd ff ff       	call   c0035f80 <__multiply>
c00361ac:	85 ff                	test   %edi,%edi
c00361ae:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361b1:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00361b4:	74 52                	je     c0036208 <__pow5mult+0xb8>
c00361b6:	8b 57 04             	mov    0x4(%edi),%edx
c00361b9:	d1 fb                	sar    %ebx
c00361bb:	8b 41 4c             	mov    0x4c(%ecx),%eax
c00361be:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00361c1:	8b 10                	mov    (%eax),%edx
c00361c3:	89 17                	mov    %edx,(%edi)
c00361c5:	89 38                	mov    %edi,(%eax)
c00361c7:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00361ca:	75 c0                	jne    c003618c <__pow5mult+0x3c>
c00361cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00361d0:	83 c4 2c             	add    $0x2c,%esp
c00361d3:	89 f8                	mov    %edi,%eax
c00361d5:	5b                   	pop    %ebx
c00361d6:	5e                   	pop    %esi
c00361d7:	5f                   	pop    %edi
c00361d8:	5d                   	pop    %ebp
c00361d9:	c3                   	ret    
c00361da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361e0:	89 74 24 08          	mov    %esi,0x8(%esp)
c00361e4:	89 74 24 04          	mov    %esi,0x4(%esp)
c00361e8:	89 0c 24             	mov    %ecx,(%esp)
c00361eb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361ee:	e8 8d fd ff ff       	call   c0035f80 <__multiply>
c00361f3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361f6:	89 06                	mov    %eax,(%esi)
c00361f8:	89 c6                	mov    %eax,%esi
c00361fa:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0036200:	eb 92                	jmp    c0036194 <__pow5mult+0x44>
c0036202:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036208:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003620b:	e9 78 ff ff ff       	jmp    c0036188 <__pow5mult+0x38>
c0036210:	8b 04 85 5c 9b 03 c0 	mov    -0x3ffc64a4(,%eax,4),%eax
c0036217:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003621b:	89 0c 24             	mov    %ecx,(%esp)
c003621e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0036225:	00 
c0036226:	89 44 24 08          	mov    %eax,0x8(%esp)
c003622a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003622d:	e8 5e fa ff ff       	call   c0035c90 <__multadd>
c0036232:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036235:	89 c7                	mov    %eax,%edi
c0036237:	e9 31 ff ff ff       	jmp    c003616d <__pow5mult+0x1d>
c003623c:	89 0c 24             	mov    %ecx,(%esp)
c003623f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036246:	00 
c0036247:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003624a:	e8 81 f9 ff ff       	call   c0035bd0 <_Balloc>
c003624f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036252:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0036259:	89 c6                	mov    %eax,%esi
c003625b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036262:	89 41 48             	mov    %eax,0x48(%ecx)
c0036265:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003626b:	e9 0f ff ff ff       	jmp    c003617f <__pow5mult+0x2f>

c0036270 <__lshift>:
c0036270:	55                   	push   %ebp
c0036271:	89 e5                	mov    %esp,%ebp
c0036273:	57                   	push   %edi
c0036274:	56                   	push   %esi
c0036275:	53                   	push   %ebx
c0036276:	83 ec 2c             	sub    $0x2c,%esp
c0036279:	8b 45 0c             	mov    0xc(%ebp),%eax
c003627c:	8b 75 10             	mov    0x10(%ebp),%esi
c003627f:	89 c7                	mov    %eax,%edi
c0036281:	8b 50 04             	mov    0x4(%eax),%edx
c0036284:	8b 40 10             	mov    0x10(%eax),%eax
c0036287:	89 f3                	mov    %esi,%ebx
c0036289:	c1 fb 05             	sar    $0x5,%ebx
c003628c:	01 d8                	add    %ebx,%eax
c003628e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036291:	83 c0 01             	add    $0x1,%eax
c0036294:	89 c1                	mov    %eax,%ecx
c0036296:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036299:	8b 47 08             	mov    0x8(%edi),%eax
c003629c:	39 c1                	cmp    %eax,%ecx
c003629e:	7e 09                	jle    c00362a9 <__lshift+0x39>
c00362a0:	01 c0                	add    %eax,%eax
c00362a2:	83 c2 01             	add    $0x1,%edx
c00362a5:	39 c1                	cmp    %eax,%ecx
c00362a7:	7f f7                	jg     c00362a0 <__lshift+0x30>
c00362a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00362ac:	89 54 24 04          	mov    %edx,0x4(%esp)
c00362b0:	89 04 24             	mov    %eax,(%esp)
c00362b3:	e8 18 f9 ff ff       	call   c0035bd0 <_Balloc>
c00362b8:	85 db                	test   %ebx,%ebx
c00362ba:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00362bd:	8d 50 14             	lea    0x14(%eax),%edx
c00362c0:	7e 17                	jle    c00362d9 <__lshift+0x69>
c00362c2:	31 c0                	xor    %eax,%eax
c00362c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00362c8:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c00362cf:	83 c0 01             	add    $0x1,%eax
c00362d2:	39 d8                	cmp    %ebx,%eax
c00362d4:	75 f2                	jne    c00362c8 <__lshift+0x58>
c00362d6:	8d 14 82             	lea    (%edx,%eax,4),%edx
c00362d9:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00362dc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00362df:	8b 4f 10             	mov    0x10(%edi),%ecx
c00362e2:	83 c0 14             	add    $0x14,%eax
c00362e5:	83 e6 1f             	and    $0x1f,%esi
c00362e8:	89 75 e0             	mov    %esi,-0x20(%ebp)
c00362eb:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c00362ee:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00362f1:	74 7d                	je     c0036370 <__lshift+0x100>
c00362f3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c00362fa:	29 75 dc             	sub    %esi,-0x24(%ebp)
c00362fd:	31 f6                	xor    %esi,%esi
c00362ff:	eb 09                	jmp    c003630a <__lshift+0x9a>
c0036301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036308:	89 fa                	mov    %edi,%edx
c003630a:	8b 18                	mov    (%eax),%ebx
c003630c:	83 c0 04             	add    $0x4,%eax
c003630f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036313:	8d 7a 04             	lea    0x4(%edx),%edi
c0036316:	d3 e3                	shl    %cl,%ebx
c0036318:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c003631c:	09 f3                	or     %esi,%ebx
c003631e:	89 1a                	mov    %ebx,(%edx)
c0036320:	8b 70 fc             	mov    -0x4(%eax),%esi
c0036323:	d3 ee                	shr    %cl,%esi
c0036325:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0036328:	77 de                	ja     c0036308 <__lshift+0x98>
c003632a:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003632d:	89 72 04             	mov    %esi,0x4(%edx)
c0036330:	83 c0 02             	add    $0x2,%eax
c0036333:	85 f6                	test   %esi,%esi
c0036335:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0036339:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003633c:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003633f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0036342:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036345:	83 e8 01             	sub    $0x1,%eax
c0036348:	89 47 10             	mov    %eax,0x10(%edi)
c003634b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003634e:	8b 50 04             	mov    0x4(%eax),%edx
c0036351:	8b 45 08             	mov    0x8(%ebp),%eax
c0036354:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036357:	8d 04 90             	lea    (%eax,%edx,4),%eax
c003635a:	8b 10                	mov    (%eax),%edx
c003635c:	89 16                	mov    %edx,(%esi)
c003635e:	89 30                	mov    %esi,(%eax)
c0036360:	83 c4 2c             	add    $0x2c,%esp
c0036363:	89 f8                	mov    %edi,%eax
c0036365:	5b                   	pop    %ebx
c0036366:	5e                   	pop    %esi
c0036367:	5f                   	pop    %edi
c0036368:	5d                   	pop    %ebp
c0036369:	c3                   	ret    
c003636a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036370:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036373:	90                   	nop
c0036374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036378:	83 c0 04             	add    $0x4,%eax
c003637b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003637e:	83 c2 04             	add    $0x4,%edx
c0036381:	39 c3                	cmp    %eax,%ebx
c0036383:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036386:	77 f0                	ja     c0036378 <__lshift+0x108>
c0036388:	eb b2                	jmp    c003633c <__lshift+0xcc>
c003638a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036390 <__mcmp>:
c0036390:	55                   	push   %ebp
c0036391:	89 e5                	mov    %esp,%ebp
c0036393:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036396:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036399:	53                   	push   %ebx
c003639a:	8b 41 10             	mov    0x10(%ecx),%eax
c003639d:	8b 5a 10             	mov    0x10(%edx),%ebx
c00363a0:	29 d8                	sub    %ebx,%eax
c00363a2:	85 c0                	test   %eax,%eax
c00363a4:	75 27                	jne    c00363cd <__mcmp+0x3d>
c00363a6:	c1 e3 02             	shl    $0x2,%ebx
c00363a9:	83 c1 14             	add    $0x14,%ecx
c00363ac:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c00363af:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c00363b3:	eb 07                	jmp    c00363bc <__mcmp+0x2c>
c00363b5:	8d 76 00             	lea    0x0(%esi),%esi
c00363b8:	39 c1                	cmp    %eax,%ecx
c00363ba:	73 14                	jae    c00363d0 <__mcmp+0x40>
c00363bc:	83 ea 04             	sub    $0x4,%edx
c00363bf:	83 e8 04             	sub    $0x4,%eax
c00363c2:	8b 1a                	mov    (%edx),%ebx
c00363c4:	39 18                	cmp    %ebx,(%eax)
c00363c6:	74 f0                	je     c00363b8 <__mcmp+0x28>
c00363c8:	19 c0                	sbb    %eax,%eax
c00363ca:	83 c8 01             	or     $0x1,%eax
c00363cd:	5b                   	pop    %ebx
c00363ce:	5d                   	pop    %ebp
c00363cf:	c3                   	ret    
c00363d0:	31 c0                	xor    %eax,%eax
c00363d2:	5b                   	pop    %ebx
c00363d3:	5d                   	pop    %ebp
c00363d4:	c3                   	ret    
c00363d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00363d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00363e0 <__mdiff>:
c00363e0:	55                   	push   %ebp
c00363e1:	89 e5                	mov    %esp,%ebp
c00363e3:	57                   	push   %edi
c00363e4:	56                   	push   %esi
c00363e5:	53                   	push   %ebx
c00363e6:	83 ec 2c             	sub    $0x2c,%esp
c00363e9:	8b 75 0c             	mov    0xc(%ebp),%esi
c00363ec:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00363ef:	89 34 24             	mov    %esi,(%esp)
c00363f2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00363f6:	e8 95 ff ff ff       	call   c0036390 <__mcmp>
c00363fb:	85 c0                	test   %eax,%eax
c00363fd:	0f 84 25 01 00 00    	je     c0036528 <__mdiff+0x148>
c0036403:	0f 88 0f 01 00 00    	js     c0036518 <__mdiff+0x138>
c0036409:	31 ff                	xor    %edi,%edi
c003640b:	8b 46 04             	mov    0x4(%esi),%eax
c003640e:	83 c6 14             	add    $0x14,%esi
c0036411:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036415:	8b 45 08             	mov    0x8(%ebp),%eax
c0036418:	89 04 24             	mov    %eax,(%esp)
c003641b:	e8 b0 f7 ff ff       	call   c0035bd0 <_Balloc>
c0036420:	8d 4b 14             	lea    0x14(%ebx),%ecx
c0036423:	89 c2                	mov    %eax,%edx
c0036425:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0036428:	89 78 0c             	mov    %edi,0xc(%eax)
c003642b:	8b 46 fc             	mov    -0x4(%esi),%eax
c003642e:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0036431:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036434:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0036437:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003643a:	8b 43 10             	mov    0x10(%ebx),%eax
c003643d:	31 db                	xor    %ebx,%ebx
c003643f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0036442:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036445:	89 d0                	mov    %edx,%eax
c0036447:	83 c0 14             	add    $0x14,%eax
c003644a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036450:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036453:	83 c0 04             	add    $0x4,%eax
c0036456:	83 c1 04             	add    $0x4,%ecx
c0036459:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c003645d:	8b 3e                	mov    (%esi),%edi
c003645f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036462:	0f b7 d7             	movzwl %di,%edx
c0036465:	01 da                	add    %ebx,%edx
c0036467:	0f b7 de             	movzwl %si,%ebx
c003646a:	29 da                	sub    %ebx,%edx
c003646c:	c1 ef 10             	shr    $0x10,%edi
c003646f:	89 d3                	mov    %edx,%ebx
c0036471:	c1 ee 10             	shr    $0x10,%esi
c0036474:	0f b7 d2             	movzwl %dx,%edx
c0036477:	c1 fb 10             	sar    $0x10,%ebx
c003647a:	29 f7                	sub    %esi,%edi
c003647c:	01 df                	add    %ebx,%edi
c003647e:	89 fb                	mov    %edi,%ebx
c0036480:	c1 e7 10             	shl    $0x10,%edi
c0036483:	09 d7                	or     %edx,%edi
c0036485:	c1 fb 10             	sar    $0x10,%ebx
c0036488:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003648b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003648e:	77 c0                	ja     c0036450 <__mdiff+0x70>
c0036490:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036493:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036496:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036499:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003649c:	39 f1                	cmp    %esi,%ecx
c003649e:	76 3f                	jbe    c00364df <__mdiff+0xff>
c00364a0:	8b 3e                	mov    (%esi),%edi
c00364a2:	83 c6 04             	add    $0x4,%esi
c00364a5:	83 c0 04             	add    $0x4,%eax
c00364a8:	0f b7 d7             	movzwl %di,%edx
c00364ab:	01 da                	add    %ebx,%edx
c00364ad:	89 d3                	mov    %edx,%ebx
c00364af:	0f b7 d2             	movzwl %dx,%edx
c00364b2:	c1 fb 10             	sar    $0x10,%ebx
c00364b5:	c1 ef 10             	shr    $0x10,%edi
c00364b8:	01 df                	add    %ebx,%edi
c00364ba:	89 fb                	mov    %edi,%ebx
c00364bc:	c1 e7 10             	shl    $0x10,%edi
c00364bf:	09 d7                	or     %edx,%edi
c00364c1:	c1 fb 10             	sar    $0x10,%ebx
c00364c4:	39 f1                	cmp    %esi,%ecx
c00364c6:	89 78 fc             	mov    %edi,-0x4(%eax)
c00364c9:	77 d5                	ja     c00364a0 <__mdiff+0xc0>
c00364cb:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00364ce:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00364d1:	f7 d0                	not    %eax
c00364d3:	01 c8                	add    %ecx,%eax
c00364d5:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00364d8:	c1 e8 02             	shr    $0x2,%eax
c00364db:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c00364df:	85 ff                	test   %edi,%edi
c00364e1:	75 23                	jne    c0036506 <__mdiff+0x126>
c00364e3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364e6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c00364ed:	29 d0                	sub    %edx,%eax
c00364ef:	89 ca                	mov    %ecx,%edx
c00364f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00364f8:	83 ea 01             	sub    $0x1,%edx
c00364fb:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00364ff:	85 c9                	test   %ecx,%ecx
c0036501:	74 f5                	je     c00364f8 <__mdiff+0x118>
c0036503:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036506:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0036509:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c003650c:	89 48 10             	mov    %ecx,0x10(%eax)
c003650f:	83 c4 2c             	add    $0x2c,%esp
c0036512:	5b                   	pop    %ebx
c0036513:	5e                   	pop    %esi
c0036514:	5f                   	pop    %edi
c0036515:	5d                   	pop    %ebp
c0036516:	c3                   	ret    
c0036517:	90                   	nop
c0036518:	89 f0                	mov    %esi,%eax
c003651a:	bf 01 00 00 00       	mov    $0x1,%edi
c003651f:	89 de                	mov    %ebx,%esi
c0036521:	89 c3                	mov    %eax,%ebx
c0036523:	e9 e3 fe ff ff       	jmp    c003640b <__mdiff+0x2b>
c0036528:	8b 45 08             	mov    0x8(%ebp),%eax
c003652b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0036532:	00 
c0036533:	89 04 24             	mov    %eax,(%esp)
c0036536:	e8 95 f6 ff ff       	call   c0035bd0 <_Balloc>
c003653b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036542:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0036549:	83 c4 2c             	add    $0x2c,%esp
c003654c:	5b                   	pop    %ebx
c003654d:	5e                   	pop    %esi
c003654e:	5f                   	pop    %edi
c003654f:	5d                   	pop    %ebp
c0036550:	c3                   	ret    
c0036551:	eb 0d                	jmp    c0036560 <__ulp>
c0036553:	90                   	nop
c0036554:	90                   	nop
c0036555:	90                   	nop
c0036556:	90                   	nop
c0036557:	90                   	nop
c0036558:	90                   	nop
c0036559:	90                   	nop
c003655a:	90                   	nop
c003655b:	90                   	nop
c003655c:	90                   	nop
c003655d:	90                   	nop
c003655e:	90                   	nop
c003655f:	90                   	nop

c0036560 <__ulp>:
c0036560:	55                   	push   %ebp
c0036561:	89 e5                	mov    %esp,%ebp
c0036563:	83 ec 08             	sub    $0x8,%esp
c0036566:	dd 45 08             	fldl   0x8(%ebp)
c0036569:	dd 5d f8             	fstpl  -0x8(%ebp)
c003656c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003656f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036575:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003657b:	85 c9                	test   %ecx,%ecx
c003657d:	7e 11                	jle    c0036590 <__ulp+0x30>
c003657f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036582:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036589:	dd 45 f8             	fldl   -0x8(%ebp)
c003658c:	c9                   	leave  
c003658d:	c3                   	ret    
c003658e:	66 90                	xchg   %ax,%ax
c0036590:	f7 d9                	neg    %ecx
c0036592:	c1 f9 14             	sar    $0x14,%ecx
c0036595:	83 f9 13             	cmp    $0x13,%ecx
c0036598:	7e 26                	jle    c00365c0 <__ulp+0x60>
c003659a:	83 f9 32             	cmp    $0x32,%ecx
c003659d:	b8 01 00 00 00       	mov    $0x1,%eax
c00365a2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c00365a9:	7f 0b                	jg     c00365b6 <__ulp+0x56>
c00365ab:	ba 33 00 00 00       	mov    $0x33,%edx
c00365b0:	29 ca                	sub    %ecx,%edx
c00365b2:	89 d1                	mov    %edx,%ecx
c00365b4:	d3 e0                	shl    %cl,%eax
c00365b6:	89 45 f8             	mov    %eax,-0x8(%ebp)
c00365b9:	dd 45 f8             	fldl   -0x8(%ebp)
c00365bc:	c9                   	leave  
c00365bd:	c3                   	ret    
c00365be:	66 90                	xchg   %ax,%ax
c00365c0:	b8 00 00 08 00       	mov    $0x80000,%eax
c00365c5:	d3 f8                	sar    %cl,%eax
c00365c7:	89 45 fc             	mov    %eax,-0x4(%ebp)
c00365ca:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00365d1:	dd 45 f8             	fldl   -0x8(%ebp)
c00365d4:	c9                   	leave  
c00365d5:	c3                   	ret    
c00365d6:	8d 76 00             	lea    0x0(%esi),%esi
c00365d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00365e0 <__b2d>:
c00365e0:	55                   	push   %ebp
c00365e1:	89 e5                	mov    %esp,%ebp
c00365e3:	57                   	push   %edi
c00365e4:	56                   	push   %esi
c00365e5:	53                   	push   %ebx
c00365e6:	83 ec 18             	sub    $0x18,%esp
c00365e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00365ec:	8d 78 14             	lea    0x14(%eax),%edi
c00365ef:	8b 40 10             	mov    0x10(%eax),%eax
c00365f2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c00365f5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c00365f8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00365fb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00365fe:	89 34 24             	mov    %esi,(%esp)
c0036601:	e8 6a f8 ff ff       	call   c0035e70 <__hi0bits>
c0036606:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036609:	ba 20 00 00 00       	mov    $0x20,%edx
c003660e:	29 c2                	sub    %eax,%edx
c0036610:	83 f8 0a             	cmp    $0xa,%eax
c0036613:	89 11                	mov    %edx,(%ecx)
c0036615:	7f 41                	jg     c0036658 <__b2d+0x78>
c0036617:	b9 0b 00 00 00       	mov    $0xb,%ecx
c003661c:	89 f2                	mov    %esi,%edx
c003661e:	29 c1                	sub    %eax,%ecx
c0036620:	d3 ea                	shr    %cl,%edx
c0036622:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c0036628:	89 55 ec             	mov    %edx,-0x14(%ebp)
c003662b:	31 d2                	xor    %edx,%edx
c003662d:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036630:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036637:	73 05                	jae    c003663e <__b2d+0x5e>
c0036639:	8b 53 f8             	mov    -0x8(%ebx),%edx
c003663c:	d3 ea                	shr    %cl,%edx
c003663e:	8d 48 15             	lea    0x15(%eax),%ecx
c0036641:	d3 e6                	shl    %cl,%esi
c0036643:	09 f2                	or     %esi,%edx
c0036645:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036648:	dd 45 e8             	fldl   -0x18(%ebp)
c003664b:	83 c4 18             	add    $0x18,%esp
c003664e:	5b                   	pop    %ebx
c003664f:	5e                   	pop    %esi
c0036650:	5f                   	pop    %edi
c0036651:	5d                   	pop    %ebp
c0036652:	c3                   	ret    
c0036653:	90                   	nop
c0036654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036658:	31 d2                	xor    %edx,%edx
c003665a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c003665d:	73 09                	jae    c0036668 <__b2d+0x88>
c003665f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036662:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036665:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036668:	89 c3                	mov    %eax,%ebx
c003666a:	83 eb 0b             	sub    $0xb,%ebx
c003666d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036670:	74 4e                	je     c00366c0 <__b2d+0xe0>
c0036672:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036676:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003667b:	29 c3                	sub    %eax,%ebx
c003667d:	89 d0                	mov    %edx,%eax
c003667f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036686:	d3 e6                	shl    %cl,%esi
c0036688:	89 d9                	mov    %ebx,%ecx
c003668a:	d3 e8                	shr    %cl,%eax
c003668c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003668f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036695:	09 c6                	or     %eax,%esi
c0036697:	31 c0                	xor    %eax,%eax
c0036699:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003669c:	39 f9                	cmp    %edi,%ecx
c003669e:	76 07                	jbe    c00366a7 <__b2d+0xc7>
c00366a0:	8b 41 fc             	mov    -0x4(%ecx),%eax
c00366a3:	89 d9                	mov    %ebx,%ecx
c00366a5:	d3 e8                	shr    %cl,%eax
c00366a7:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00366ab:	d3 e2                	shl    %cl,%edx
c00366ad:	09 d0                	or     %edx,%eax
c00366af:	89 45 e8             	mov    %eax,-0x18(%ebp)
c00366b2:	dd 45 e8             	fldl   -0x18(%ebp)
c00366b5:	83 c4 18             	add    $0x18,%esp
c00366b8:	5b                   	pop    %ebx
c00366b9:	5e                   	pop    %esi
c00366ba:	5f                   	pop    %edi
c00366bb:	5d                   	pop    %ebp
c00366bc:	c3                   	ret    
c00366bd:	8d 76 00             	lea    0x0(%esi),%esi
c00366c0:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c00366c6:	89 75 ec             	mov    %esi,-0x14(%ebp)
c00366c9:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00366cc:	dd 45 e8             	fldl   -0x18(%ebp)
c00366cf:	83 c4 18             	add    $0x18,%esp
c00366d2:	5b                   	pop    %ebx
c00366d3:	5e                   	pop    %esi
c00366d4:	5f                   	pop    %edi
c00366d5:	5d                   	pop    %ebp
c00366d6:	c3                   	ret    
c00366d7:	89 f6                	mov    %esi,%esi
c00366d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00366e0 <__d2b>:
c00366e0:	55                   	push   %ebp
c00366e1:	89 e5                	mov    %esp,%ebp
c00366e3:	57                   	push   %edi
c00366e4:	56                   	push   %esi
c00366e5:	53                   	push   %ebx
c00366e6:	83 ec 2c             	sub    $0x2c,%esp
c00366e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00366ec:	dd 45 0c             	fldl   0xc(%ebp)
c00366ef:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00366f6:	00 
c00366f7:	dd 5d d0             	fstpl  -0x30(%ebp)
c00366fa:	89 04 24             	mov    %eax,(%esp)
c00366fd:	e8 ce f4 ff ff       	call   c0035bd0 <_Balloc>
c0036702:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c0036705:	89 c6                	mov    %eax,%esi
c0036707:	89 d8                	mov    %ebx,%eax
c0036709:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c003670f:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0036714:	c1 eb 14             	shr    $0x14,%ebx
c0036717:	85 db                	test   %ebx,%ebx
c0036719:	74 05                	je     c0036720 <__d2b+0x40>
c003671b:	0d 00 00 10 00       	or     $0x100000,%eax
c0036720:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036723:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0036726:	85 c0                	test   %eax,%eax
c0036728:	74 56                	je     c0036780 <__d2b+0xa0>
c003672a:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003672d:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0036730:	89 04 24             	mov    %eax,(%esp)
c0036733:	e8 98 f7 ff ff       	call   c0035ed0 <__lo0bits>
c0036738:	85 c0                	test   %eax,%eax
c003673a:	0f 85 90 00 00 00    	jne    c00367d0 <__d2b+0xf0>
c0036740:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036743:	89 56 14             	mov    %edx,0x14(%esi)
c0036746:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036749:	83 fa 01             	cmp    $0x1,%edx
c003674c:	19 ff                	sbb    %edi,%edi
c003674e:	83 c7 02             	add    $0x2,%edi
c0036751:	85 db                	test   %ebx,%ebx
c0036753:	89 56 18             	mov    %edx,0x18(%esi)
c0036756:	89 7e 10             	mov    %edi,0x10(%esi)
c0036759:	74 49                	je     c00367a4 <__d2b+0xc4>
c003675b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c003675e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036765:	89 11                	mov    %edx,(%ecx)
c0036767:	ba 35 00 00 00       	mov    $0x35,%edx
c003676c:	29 c2                	sub    %eax,%edx
c003676e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036771:	89 10                	mov    %edx,(%eax)
c0036773:	83 c4 2c             	add    $0x2c,%esp
c0036776:	89 f0                	mov    %esi,%eax
c0036778:	5b                   	pop    %ebx
c0036779:	5e                   	pop    %esi
c003677a:	5f                   	pop    %edi
c003677b:	5d                   	pop    %ebp
c003677c:	c3                   	ret    
c003677d:	8d 76 00             	lea    0x0(%esi),%esi
c0036780:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036783:	bf 01 00 00 00       	mov    $0x1,%edi
c0036788:	89 04 24             	mov    %eax,(%esp)
c003678b:	e8 40 f7 ff ff       	call   c0035ed0 <__lo0bits>
c0036790:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036793:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003679a:	89 56 14             	mov    %edx,0x14(%esi)
c003679d:	83 c0 20             	add    $0x20,%eax
c00367a0:	85 db                	test   %ebx,%ebx
c00367a2:	75 b7                	jne    c003675b <__d2b+0x7b>
c00367a4:	8b 4d 14             	mov    0x14(%ebp),%ecx
c00367a7:	2d 32 04 00 00       	sub    $0x432,%eax
c00367ac:	89 01                	mov    %eax,(%ecx)
c00367ae:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c00367b2:	c1 e7 05             	shl    $0x5,%edi
c00367b5:	89 04 24             	mov    %eax,(%esp)
c00367b8:	e8 b3 f6 ff ff       	call   c0035e70 <__hi0bits>
c00367bd:	29 c7                	sub    %eax,%edi
c00367bf:	8b 45 18             	mov    0x18(%ebp),%eax
c00367c2:	89 38                	mov    %edi,(%eax)
c00367c4:	83 c4 2c             	add    $0x2c,%esp
c00367c7:	89 f0                	mov    %esi,%eax
c00367c9:	5b                   	pop    %ebx
c00367ca:	5e                   	pop    %esi
c00367cb:	5f                   	pop    %edi
c00367cc:	5d                   	pop    %ebp
c00367cd:	c3                   	ret    
c00367ce:	66 90                	xchg   %ax,%ax
c00367d0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00367d3:	b9 20 00 00 00       	mov    $0x20,%ecx
c00367d8:	29 c1                	sub    %eax,%ecx
c00367da:	89 d7                	mov    %edx,%edi
c00367dc:	d3 e7                	shl    %cl,%edi
c00367de:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00367e1:	09 f9                	or     %edi,%ecx
c00367e3:	89 4e 14             	mov    %ecx,0x14(%esi)
c00367e6:	89 c1                	mov    %eax,%ecx
c00367e8:	d3 ea                	shr    %cl,%edx
c00367ea:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00367ed:	e9 57 ff ff ff       	jmp    c0036749 <__d2b+0x69>
c00367f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00367f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036800 <__ratio>:
c0036800:	55                   	push   %ebp
c0036801:	89 e5                	mov    %esp,%ebp
c0036803:	56                   	push   %esi
c0036804:	53                   	push   %ebx
c0036805:	83 ec 30             	sub    $0x30,%esp
c0036808:	8b 75 08             	mov    0x8(%ebp),%esi
c003680b:	8d 45 f0             	lea    -0x10(%ebp),%eax
c003680e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036811:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036815:	89 34 24             	mov    %esi,(%esp)
c0036818:	e8 c3 fd ff ff       	call   c00365e0 <__b2d>
c003681d:	8d 45 f4             	lea    -0xc(%ebp),%eax
c0036820:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036824:	89 1c 24             	mov    %ebx,(%esp)
c0036827:	dd 55 e0             	fstl   -0x20(%ebp)
c003682a:	dd 5d d8             	fstpl  -0x28(%ebp)
c003682d:	e8 ae fd ff ff       	call   c00365e0 <__b2d>
c0036832:	8b 46 10             	mov    0x10(%esi),%eax
c0036835:	2b 43 10             	sub    0x10(%ebx),%eax
c0036838:	8b 55 f0             	mov    -0x10(%ebp),%edx
c003683b:	2b 55 f4             	sub    -0xc(%ebp),%edx
c003683e:	c1 e0 05             	shl    $0x5,%eax
c0036841:	01 d0                	add    %edx,%eax
c0036843:	dd 55 d0             	fstl   -0x30(%ebp)
c0036846:	85 c0                	test   %eax,%eax
c0036848:	dd 45 d8             	fldl   -0x28(%ebp)
c003684b:	7e 1b                	jle    c0036868 <__ratio+0x68>
c003684d:	dd d8                	fstp   %st(0)
c003684f:	c1 e0 14             	shl    $0x14,%eax
c0036852:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036855:	dd 45 e0             	fldl   -0x20(%ebp)
c0036858:	83 c4 30             	add    $0x30,%esp
c003685b:	5b                   	pop    %ebx
c003685c:	de f1                	fdivp  %st,%st(1)
c003685e:	5e                   	pop    %esi
c003685f:	5d                   	pop    %ebp
c0036860:	c3                   	ret    
c0036861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036868:	dd d9                	fstp   %st(1)
c003686a:	c1 e0 14             	shl    $0x14,%eax
c003686d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036870:	dd 45 d0             	fldl   -0x30(%ebp)
c0036873:	83 c4 30             	add    $0x30,%esp
c0036876:	5b                   	pop    %ebx
c0036877:	de f9                	fdivrp %st,%st(1)
c0036879:	5e                   	pop    %esi
c003687a:	5d                   	pop    %ebp
c003687b:	c3                   	ret    
c003687c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036880 <_mprec_log10>:
c0036880:	55                   	push   %ebp
c0036881:	89 e5                	mov    %esp,%ebp
c0036883:	8b 45 08             	mov    0x8(%ebp),%eax
c0036886:	83 f8 17             	cmp    $0x17,%eax
c0036889:	7e 1d                	jle    c00368a8 <_mprec_log10+0x28>
c003688b:	d9 e8                	fld1   
c003688d:	d9 05 20 9b 03 c0    	flds   0xc0039b20
c0036893:	90                   	nop
c0036894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036898:	83 e8 01             	sub    $0x1,%eax
c003689b:	dc c9                	fmul   %st,%st(1)
c003689d:	75 f9                	jne    c0036898 <_mprec_log10+0x18>
c003689f:	dd d8                	fstp   %st(0)
c00368a1:	5d                   	pop    %ebp
c00368a2:	c3                   	ret    
c00368a3:	90                   	nop
c00368a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368a8:	dd 04 c5 00 9c 03 c0 	fldl   -0x3ffc6400(,%eax,8)
c00368af:	5d                   	pop    %ebp
c00368b0:	c3                   	ret    
c00368b1:	eb 0d                	jmp    c00368c0 <__copybits>
c00368b3:	90                   	nop
c00368b4:	90                   	nop
c00368b5:	90                   	nop
c00368b6:	90                   	nop
c00368b7:	90                   	nop
c00368b8:	90                   	nop
c00368b9:	90                   	nop
c00368ba:	90                   	nop
c00368bb:	90                   	nop
c00368bc:	90                   	nop
c00368bd:	90                   	nop
c00368be:	90                   	nop
c00368bf:	90                   	nop

c00368c0 <__copybits>:
c00368c0:	55                   	push   %ebp
c00368c1:	89 e5                	mov    %esp,%ebp
c00368c3:	57                   	push   %edi
c00368c4:	8b 7d 10             	mov    0x10(%ebp),%edi
c00368c7:	56                   	push   %esi
c00368c8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00368cb:	8b 45 08             	mov    0x8(%ebp),%eax
c00368ce:	53                   	push   %ebx
c00368cf:	8b 4f 10             	mov    0x10(%edi),%ecx
c00368d2:	8d 56 ff             	lea    -0x1(%esi),%edx
c00368d5:	c1 fa 05             	sar    $0x5,%edx
c00368d8:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c00368dc:	8d 57 14             	lea    0x14(%edi),%edx
c00368df:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c00368e2:	39 da                	cmp    %ebx,%edx
c00368e4:	73 34                	jae    c003691a <__copybits+0x5a>
c00368e6:	89 c1                	mov    %eax,%ecx
c00368e8:	83 c2 04             	add    $0x4,%edx
c00368eb:	8b 42 fc             	mov    -0x4(%edx),%eax
c00368ee:	83 c1 04             	add    $0x4,%ecx
c00368f1:	39 d3                	cmp    %edx,%ebx
c00368f3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c00368f6:	77 f0                	ja     c00368e8 <__copybits+0x28>
c00368f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00368fb:	29 fb                	sub    %edi,%ebx
c00368fd:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0036900:	c1 ea 02             	shr    $0x2,%edx
c0036903:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0036907:	39 c6                	cmp    %eax,%esi
c0036909:	76 13                	jbe    c003691e <__copybits+0x5e>
c003690b:	90                   	nop
c003690c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036910:	83 c0 04             	add    $0x4,%eax
c0036913:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c003691a:	39 c6                	cmp    %eax,%esi
c003691c:	77 f2                	ja     c0036910 <__copybits+0x50>
c003691e:	5b                   	pop    %ebx
c003691f:	5e                   	pop    %esi
c0036920:	5f                   	pop    %edi
c0036921:	5d                   	pop    %ebp
c0036922:	c3                   	ret    
c0036923:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036929:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036930 <__any_on>:
c0036930:	55                   	push   %ebp
c0036931:	89 e5                	mov    %esp,%ebp
c0036933:	8b 45 08             	mov    0x8(%ebp),%eax
c0036936:	57                   	push   %edi
c0036937:	56                   	push   %esi
c0036938:	53                   	push   %ebx
c0036939:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003693c:	8d 50 14             	lea    0x14(%eax),%edx
c003693f:	8b 40 10             	mov    0x10(%eax),%eax
c0036942:	c1 fb 05             	sar    $0x5,%ebx
c0036945:	39 d8                	cmp    %ebx,%eax
c0036947:	7d 2f                	jge    c0036978 <__any_on+0x48>
c0036949:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c003694c:	39 da                	cmp    %ebx,%edx
c003694e:	73 1d                	jae    c003696d <__any_on+0x3d>
c0036950:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036953:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0036956:	85 db                	test   %ebx,%ebx
c0036958:	74 0f                	je     c0036969 <__any_on+0x39>
c003695a:	eb 44                	jmp    c00369a0 <__any_on+0x70>
c003695c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036960:	83 e8 04             	sub    $0x4,%eax
c0036963:	8b 08                	mov    (%eax),%ecx
c0036965:	85 c9                	test   %ecx,%ecx
c0036967:	75 37                	jne    c00369a0 <__any_on+0x70>
c0036969:	39 c2                	cmp    %eax,%edx
c003696b:	72 f3                	jb     c0036960 <__any_on+0x30>
c003696d:	31 c0                	xor    %eax,%eax
c003696f:	5b                   	pop    %ebx
c0036970:	5e                   	pop    %esi
c0036971:	5f                   	pop    %edi
c0036972:	5d                   	pop    %ebp
c0036973:	c3                   	ret    
c0036974:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036978:	7e 1e                	jle    c0036998 <__any_on+0x68>
c003697a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003697d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036980:	83 e1 1f             	and    $0x1f,%ecx
c0036983:	74 c7                	je     c003694c <__any_on+0x1c>
c0036985:	8b 3b                	mov    (%ebx),%edi
c0036987:	b8 01 00 00 00       	mov    $0x1,%eax
c003698c:	89 fe                	mov    %edi,%esi
c003698e:	d3 ee                	shr    %cl,%esi
c0036990:	d3 e6                	shl    %cl,%esi
c0036992:	39 fe                	cmp    %edi,%esi
c0036994:	75 d9                	jne    c003696f <__any_on+0x3f>
c0036996:	eb b4                	jmp    c003694c <__any_on+0x1c>
c0036998:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c003699b:	eb af                	jmp    c003694c <__any_on+0x1c>
c003699d:	8d 76 00             	lea    0x0(%esi),%esi
c00369a0:	5b                   	pop    %ebx
c00369a1:	b8 01 00 00 00       	mov    $0x1,%eax
c00369a6:	5e                   	pop    %esi
c00369a7:	5f                   	pop    %edi
c00369a8:	5d                   	pop    %ebp
c00369a9:	c3                   	ret    
c00369aa:	66 90                	xchg   %ax,%ax
c00369ac:	66 90                	xchg   %ax,%ax
c00369ae:	66 90                	xchg   %ax,%ax

c00369b0 <_sbrk_r>:
c00369b0:	55                   	push   %ebp
c00369b1:	89 e5                	mov    %esp,%ebp
c00369b3:	83 ec 18             	sub    $0x18,%esp
c00369b6:	8b 45 0c             	mov    0xc(%ebp),%eax
c00369b9:	c7 05 00 50 09 c0 00 	movl   $0x0,0xc0095000
c00369c0:	00 00 00 
c00369c3:	89 04 24             	mov    %eax,(%esp)
c00369c6:	e8 44 a0 ff ff       	call   c0030a0f <sbrk>
c00369cb:	83 f8 ff             	cmp    $0xffffffff,%eax
c00369ce:	74 08                	je     c00369d8 <_sbrk_r+0x28>
c00369d0:	c9                   	leave  
c00369d1:	c3                   	ret    
c00369d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00369d8:	8b 15 00 50 09 c0    	mov    0xc0095000,%edx
c00369de:	85 d2                	test   %edx,%edx
c00369e0:	74 ee                	je     c00369d0 <_sbrk_r+0x20>
c00369e2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00369e5:	89 11                	mov    %edx,(%ecx)
c00369e7:	c9                   	leave  
c00369e8:	c3                   	ret    
c00369e9:	66 90                	xchg   %ax,%ax
c00369eb:	66 90                	xchg   %ax,%ax
c00369ed:	66 90                	xchg   %ax,%ax
c00369ef:	90                   	nop

c00369f0 <__fpclassifyd>:
c00369f0:	55                   	push   %ebp
c00369f1:	b8 02 00 00 00       	mov    $0x2,%eax
c00369f6:	89 e5                	mov    %esp,%ebp
c00369f8:	53                   	push   %ebx
c00369f9:	83 ec 0c             	sub    $0xc,%esp
c00369fc:	dd 45 08             	fldl   0x8(%ebp)
c00369ff:	dd 5d f0             	fstpl  -0x10(%ebp)
c0036a02:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036a05:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0036a08:	89 d3                	mov    %edx,%ebx
c0036a0a:	09 cb                	or     %ecx,%ebx
c0036a0c:	75 0a                	jne    c0036a18 <__fpclassifyd+0x28>
c0036a0e:	83 c4 0c             	add    $0xc,%esp
c0036a11:	5b                   	pop    %ebx
c0036a12:	5d                   	pop    %ebp
c0036a13:	c3                   	ret    
c0036a14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a18:	85 d2                	test   %edx,%edx
c0036a1a:	0f 94 c2             	sete   %dl
c0036a1d:	75 08                	jne    c0036a27 <__fpclassifyd+0x37>
c0036a1f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c0036a25:	74 e7                	je     c0036a0e <__fpclassifyd+0x1e>
c0036a27:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c0036a2d:	b8 04 00 00 00       	mov    $0x4,%eax
c0036a32:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0036a38:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c0036a3e:	76 ce                	jbe    c0036a0e <__fpclassifyd+0x1e>
c0036a40:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036a46:	b0 03                	mov    $0x3,%al
c0036a48:	76 c4                	jbe    c0036a0e <__fpclassifyd+0x1e>
c0036a4a:	31 c0                	xor    %eax,%eax
c0036a4c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036a52:	0f 94 c0             	sete   %al
c0036a55:	21 d0                	and    %edx,%eax
c0036a57:	eb b5                	jmp    c0036a0e <__fpclassifyd+0x1e>
c0036a59:	66 90                	xchg   %ax,%ax
c0036a5b:	66 90                	xchg   %ax,%ax
c0036a5d:	66 90                	xchg   %ax,%ax
c0036a5f:	90                   	nop

c0036a60 <strcmp>:
c0036a60:	55                   	push   %ebp
c0036a61:	89 e5                	mov    %esp,%ebp
c0036a63:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a66:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036a69:	53                   	push   %ebx
c0036a6a:	89 c1                	mov    %eax,%ecx
c0036a6c:	09 d1                	or     %edx,%ecx
c0036a6e:	83 e1 03             	and    $0x3,%ecx
c0036a71:	75 17                	jne    c0036a8a <strcmp+0x2a>
c0036a73:	8b 08                	mov    (%eax),%ecx
c0036a75:	3b 0a                	cmp    (%edx),%ecx
c0036a77:	74 33                	je     c0036aac <strcmp+0x4c>
c0036a79:	eb 0f                	jmp    c0036a8a <strcmp+0x2a>
c0036a7b:	90                   	nop
c0036a7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a80:	3a 0a                	cmp    (%edx),%cl
c0036a82:	75 0d                	jne    c0036a91 <strcmp+0x31>
c0036a84:	83 c0 01             	add    $0x1,%eax
c0036a87:	83 c2 01             	add    $0x1,%edx
c0036a8a:	0f b6 08             	movzbl (%eax),%ecx
c0036a8d:	84 c9                	test   %cl,%cl
c0036a8f:	75 ef                	jne    c0036a80 <strcmp+0x20>
c0036a91:	0f b6 00             	movzbl (%eax),%eax
c0036a94:	0f b6 12             	movzbl (%edx),%edx
c0036a97:	5b                   	pop    %ebx
c0036a98:	5d                   	pop    %ebp
c0036a99:	29 d0                	sub    %edx,%eax
c0036a9b:	c3                   	ret    
c0036a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036aa0:	83 c0 04             	add    $0x4,%eax
c0036aa3:	83 c2 04             	add    $0x4,%edx
c0036aa6:	8b 08                	mov    (%eax),%ecx
c0036aa8:	3b 0a                	cmp    (%edx),%ecx
c0036aaa:	75 de                	jne    c0036a8a <strcmp+0x2a>
c0036aac:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036ab2:	f7 d1                	not    %ecx
c0036ab4:	21 cb                	and    %ecx,%ebx
c0036ab6:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036abc:	74 e2                	je     c0036aa0 <strcmp+0x40>
c0036abe:	31 c0                	xor    %eax,%eax
c0036ac0:	5b                   	pop    %ebx
c0036ac1:	5d                   	pop    %ebp
c0036ac2:	c3                   	ret    
c0036ac3:	66 90                	xchg   %ax,%ax
c0036ac5:	66 90                	xchg   %ax,%ax
c0036ac7:	66 90                	xchg   %ax,%ax
c0036ac9:	66 90                	xchg   %ax,%ax
c0036acb:	66 90                	xchg   %ax,%ax
c0036acd:	66 90                	xchg   %ax,%ax
c0036acf:	90                   	nop

c0036ad0 <strlen>:
c0036ad0:	55                   	push   %ebp
c0036ad1:	89 e5                	mov    %esp,%ebp
c0036ad3:	57                   	push   %edi
c0036ad4:	8b 55 08             	mov    0x8(%ebp),%edx
c0036ad7:	89 d7                	mov    %edx,%edi
c0036ad9:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036adf:	74 25                	je     c0036b06 <L5>
c0036ae1:	8a 0f                	mov    (%edi),%cl
c0036ae3:	47                   	inc    %edi
c0036ae4:	84 c9                	test   %cl,%cl
c0036ae6:	74 56                	je     c0036b3e <L15>
c0036ae8:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036aee:	74 16                	je     c0036b06 <L5>
c0036af0:	8a 0f                	mov    (%edi),%cl
c0036af2:	47                   	inc    %edi
c0036af3:	84 c9                	test   %cl,%cl
c0036af5:	74 47                	je     c0036b3e <L15>
c0036af7:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036afd:	74 07                	je     c0036b06 <L5>
c0036aff:	8a 0f                	mov    (%edi),%cl
c0036b01:	47                   	inc    %edi
c0036b02:	84 c9                	test   %cl,%cl
c0036b04:	74 38                	je     c0036b3e <L15>

c0036b06 <L5>:
c0036b06:	83 ef 04             	sub    $0x4,%edi
c0036b09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036b10 <L10>:
c0036b10:	83 c7 04             	add    $0x4,%edi
c0036b13:	8b 0f                	mov    (%edi),%ecx
c0036b15:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036b1b:	f7 d1                	not    %ecx
c0036b1d:	21 c8                	and    %ecx,%eax
c0036b1f:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036b24:	74 ea                	je     c0036b10 <L10>
c0036b26:	f7 d1                	not    %ecx
c0036b28:	47                   	inc    %edi
c0036b29:	84 c9                	test   %cl,%cl
c0036b2b:	74 11                	je     c0036b3e <L15>
c0036b2d:	47                   	inc    %edi
c0036b2e:	c1 e9 08             	shr    $0x8,%ecx
c0036b31:	84 c9                	test   %cl,%cl
c0036b33:	74 09                	je     c0036b3e <L15>
c0036b35:	47                   	inc    %edi
c0036b36:	c1 e9 08             	shr    $0x8,%ecx
c0036b39:	84 c9                	test   %cl,%cl
c0036b3b:	74 01                	je     c0036b3e <L15>
c0036b3d:	47                   	inc    %edi

c0036b3e <L15>:
c0036b3e:	29 d7                	sub    %edx,%edi
c0036b40:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036b43:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036b46:	5f                   	pop    %edi
c0036b47:	c9                   	leave  
c0036b48:	c3                   	ret    
c0036b49:	66 90                	xchg   %ax,%ax
c0036b4b:	66 90                	xchg   %ax,%ax
c0036b4d:	66 90                	xchg   %ax,%ax
c0036b4f:	90                   	nop

c0036b50 <__ssprint_r>:
c0036b50:	55                   	push   %ebp
c0036b51:	89 e5                	mov    %esp,%ebp
c0036b53:	57                   	push   %edi
c0036b54:	56                   	push   %esi
c0036b55:	53                   	push   %ebx
c0036b56:	83 ec 2c             	sub    $0x2c,%esp
c0036b59:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b5c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036b5f:	8b 00                	mov    (%eax),%eax
c0036b61:	89 c7                	mov    %eax,%edi
c0036b63:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b66:	8b 40 08             	mov    0x8(%eax),%eax
c0036b69:	85 c0                	test   %eax,%eax
c0036b6b:	0f 84 af 01 00 00    	je     c0036d20 <__ssprint_r+0x1d0>
c0036b71:	31 c9                	xor    %ecx,%ecx
c0036b73:	31 d2                	xor    %edx,%edx
c0036b75:	8b 03                	mov    (%ebx),%eax
c0036b77:	89 ce                	mov    %ecx,%esi
c0036b79:	85 f6                	test   %esi,%esi
c0036b7b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036b7e:	0f 84 ec 00 00 00    	je     c0036c70 <__ssprint_r+0x120>
c0036b84:	8b 53 08             	mov    0x8(%ebx),%edx
c0036b87:	39 d6                	cmp    %edx,%esi
c0036b89:	0f 82 fc 00 00 00    	jb     c0036c8b <__ssprint_r+0x13b>
c0036b8f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036b93:	66 f7 c1 80 04       	test   $0x480,%cx
c0036b98:	0f 84 fa 00 00 00    	je     c0036c98 <__ssprint_r+0x148>
c0036b9e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036ba1:	29 d0                	sub    %edx,%eax
c0036ba3:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036ba6:	8b 43 14             	mov    0x14(%ebx),%eax
c0036ba9:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036bac:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036baf:	89 c2                	mov    %eax,%edx
c0036bb1:	c1 ea 1f             	shr    $0x1f,%edx
c0036bb4:	01 d0                	add    %edx,%eax
c0036bb6:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036bb9:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036bbc:	d1 7d e0             	sarl   -0x20(%ebp)
c0036bbf:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036bc3:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036bc6:	0f 83 34 01 00 00    	jae    c0036d00 <__ssprint_r+0x1b0>
c0036bcc:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036bcf:	80 e5 04             	and    $0x4,%ch
c0036bd2:	0f 84 c8 00 00 00    	je     c0036ca0 <__ssprint_r+0x150>
c0036bd8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036bdc:	8b 45 08             	mov    0x8(%ebp),%eax
c0036bdf:	89 04 24             	mov    %eax,(%esp)
c0036be2:	e8 e9 e7 ff ff       	call   c00353d0 <_malloc_r>
c0036be7:	85 c0                	test   %eax,%eax
c0036be9:	89 c2                	mov    %eax,%edx
c0036beb:	0f 84 e1 00 00 00    	je     c0036cd2 <__ssprint_r+0x182>
c0036bf1:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036bf4:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036bf7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036bfb:	8b 43 10             	mov    0x10(%ebx),%eax
c0036bfe:	89 14 24             	mov    %edx,(%esp)
c0036c01:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c05:	e8 0a b2 ff ff       	call   c0031e14 <memcpy>
c0036c0a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036c0e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036c11:	66 25 7f fb          	and    $0xfb7f,%ax
c0036c15:	0c 80                	or     $0x80,%al
c0036c17:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036c1b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c1e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036c21:	89 53 10             	mov    %edx,0x10(%ebx)
c0036c24:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036c27:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036c2a:	01 d0                	add    %edx,%eax
c0036c2c:	89 03                	mov    %eax,(%ebx)
c0036c2e:	89 f2                	mov    %esi,%edx
c0036c30:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036c33:	89 f1                	mov    %esi,%ecx
c0036c35:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036c39:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036c3c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036c3f:	89 04 24             	mov    %eax,(%esp)
c0036c42:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036c45:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036c49:	e8 22 13 00 00       	call   c0037f70 <memmove>
c0036c4e:	8b 03                	mov    (%ebx),%eax
c0036c50:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c53:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036c56:	29 53 08             	sub    %edx,0x8(%ebx)
c0036c59:	01 c8                	add    %ecx,%eax
c0036c5b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036c5e:	89 03                	mov    %eax,(%ebx)
c0036c60:	8b 51 08             	mov    0x8(%ecx),%edx
c0036c63:	29 f2                	sub    %esi,%edx
c0036c65:	85 d2                	test   %edx,%edx
c0036c67:	89 51 08             	mov    %edx,0x8(%ecx)
c0036c6a:	0f 84 98 00 00 00    	je     c0036d08 <__ssprint_r+0x1b8>
c0036c70:	8b 77 04             	mov    0x4(%edi),%esi
c0036c73:	83 c7 08             	add    $0x8,%edi
c0036c76:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036c79:	85 f6                	test   %esi,%esi
c0036c7b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036c7e:	74 f0                	je     c0036c70 <__ssprint_r+0x120>
c0036c80:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c83:	39 d6                	cmp    %edx,%esi
c0036c85:	0f 83 04 ff ff ff    	jae    c0036b8f <__ssprint_r+0x3f>
c0036c8b:	89 f2                	mov    %esi,%edx
c0036c8d:	89 f1                	mov    %esi,%ecx
c0036c8f:	eb a4                	jmp    c0036c35 <__ssprint_r+0xe5>
c0036c91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c98:	89 d1                	mov    %edx,%ecx
c0036c9a:	eb 99                	jmp    c0036c35 <__ssprint_r+0xe5>
c0036c9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036ca0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036ca4:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036ca7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036cab:	8b 45 08             	mov    0x8(%ebp),%eax
c0036cae:	89 04 24             	mov    %eax,(%esp)
c0036cb1:	e8 4a 13 00 00       	call   c0038000 <_realloc_r>
c0036cb6:	85 c0                	test   %eax,%eax
c0036cb8:	89 c2                	mov    %eax,%edx
c0036cba:	0f 85 5b ff ff ff    	jne    c0036c1b <__ssprint_r+0xcb>
c0036cc0:	8b 43 10             	mov    0x10(%ebx),%eax
c0036cc3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036cc7:	8b 45 08             	mov    0x8(%ebp),%eax
c0036cca:	89 04 24             	mov    %eax,(%esp)
c0036ccd:	e8 3e 10 00 00       	call   c0037d10 <_free_r>
c0036cd2:	8b 45 08             	mov    0x8(%ebp),%eax
c0036cd5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036cdb:	8b 45 10             	mov    0x10(%ebp),%eax
c0036cde:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036ce3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036cea:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036cf1:	83 c4 2c             	add    $0x2c,%esp
c0036cf4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036cf9:	5b                   	pop    %ebx
c0036cfa:	5e                   	pop    %esi
c0036cfb:	5f                   	pop    %edi
c0036cfc:	5d                   	pop    %ebp
c0036cfd:	c3                   	ret    
c0036cfe:	66 90                	xchg   %ax,%ax
c0036d00:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036d03:	e9 c7 fe ff ff       	jmp    c0036bcf <__ssprint_r+0x7f>
c0036d08:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036d0f:	83 c4 2c             	add    $0x2c,%esp
c0036d12:	31 c0                	xor    %eax,%eax
c0036d14:	5b                   	pop    %ebx
c0036d15:	5e                   	pop    %esi
c0036d16:	5f                   	pop    %edi
c0036d17:	5d                   	pop    %ebp
c0036d18:	c3                   	ret    
c0036d19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d20:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d23:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036d2a:	83 c4 2c             	add    $0x2c,%esp
c0036d2d:	31 c0                	xor    %eax,%eax
c0036d2f:	5b                   	pop    %ebx
c0036d30:	5e                   	pop    %esi
c0036d31:	5f                   	pop    %edi
c0036d32:	5d                   	pop    %ebp
c0036d33:	c3                   	ret    
c0036d34:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d3a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036d40 <_svfiprintf_r>:
c0036d40:	55                   	push   %ebp
c0036d41:	89 e5                	mov    %esp,%ebp
c0036d43:	57                   	push   %edi
c0036d44:	56                   	push   %esi
c0036d45:	53                   	push   %ebx
c0036d46:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036d4c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036d4f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036d53:	74 0b                	je     c0036d60 <_svfiprintf_r+0x20>
c0036d55:	8b 50 10             	mov    0x10(%eax),%edx
c0036d58:	85 d2                	test   %edx,%edx
c0036d5a:	0f 84 1c 0d 00 00    	je     c0037a7c <_svfiprintf_r+0xd3c>
c0036d60:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036d63:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036d66:	89 c6                	mov    %eax,%esi
c0036d68:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036d6e:	29 d8                	sub    %ebx,%eax
c0036d70:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036d77:	00 00 00 
c0036d7a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036d81:	00 00 00 
c0036d84:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036d8b:	00 00 00 
c0036d8e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036d95:	00 00 00 
c0036d98:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036d9e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036da1:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036da4:	0f b6 00             	movzbl (%eax),%eax
c0036da7:	84 c0                	test   %al,%al
c0036da9:	74 58                	je     c0036e03 <_svfiprintf_r+0xc3>
c0036dab:	3c 25                	cmp    $0x25,%al
c0036dad:	75 13                	jne    c0036dc2 <_svfiprintf_r+0x82>
c0036daf:	eb 52                	jmp    c0036e03 <_svfiprintf_r+0xc3>
c0036db1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036db8:	84 c0                	test   %al,%al
c0036dba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036dc0:	74 0a                	je     c0036dcc <_svfiprintf_r+0x8c>
c0036dc2:	83 c3 01             	add    $0x1,%ebx
c0036dc5:	0f b6 03             	movzbl (%ebx),%eax
c0036dc8:	3c 25                	cmp    $0x25,%al
c0036dca:	75 ec                	jne    c0036db8 <_svfiprintf_r+0x78>
c0036dcc:	89 df                	mov    %ebx,%edi
c0036dce:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036dd1:	74 30                	je     c0036e03 <_svfiprintf_r+0xc3>
c0036dd3:	8b 45 10             	mov    0x10(%ebp),%eax
c0036dd6:	83 c6 08             	add    $0x8,%esi
c0036dd9:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036ddc:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036de2:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036de5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036deb:	83 c0 01             	add    $0x1,%eax
c0036dee:	83 f8 07             	cmp    $0x7,%eax
c0036df1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036df7:	0f 8f eb 0a 00 00    	jg     c00378e8 <_svfiprintf_r+0xba8>
c0036dfd:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036e03:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036e06:	0f 84 11 09 00 00    	je     c003771d <_svfiprintf_r+0x9dd>
c0036e0c:	8d 43 01             	lea    0x1(%ebx),%eax
c0036e0f:	31 ff                	xor    %edi,%edi
c0036e11:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036e18:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036e1f:	ff ff ff 
c0036e22:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036e29:	00 00 00 
c0036e2c:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036e33:	00 00 00 
c0036e36:	8d 50 01             	lea    0x1(%eax),%edx
c0036e39:	0f be 00             	movsbl (%eax),%eax
c0036e3c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036e3f:	83 f9 58             	cmp    $0x58,%ecx
c0036e42:	0f 87 63 03 00 00    	ja     c00371ab <_svfiprintf_r+0x46b>
c0036e48:	ff 24 8d c8 9c 03 c0 	jmp    *-0x3ffc6338(,%ecx,4)
c0036e4f:	90                   	nop
c0036e50:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036e57:	89 d0                	mov    %edx,%eax
c0036e59:	eb db                	jmp    c0036e36 <_svfiprintf_r+0xf6>
c0036e5b:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e5e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036e61:	8b 00                	mov    (%eax),%eax
c0036e63:	83 c3 04             	add    $0x4,%ebx
c0036e66:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036e69:	85 c0                	test   %eax,%eax
c0036e6b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036e71:	79 e4                	jns    c0036e57 <_svfiprintf_r+0x117>
c0036e73:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036e79:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036e80:	89 d0                	mov    %edx,%eax
c0036e82:	eb b2                	jmp    c0036e36 <_svfiprintf_r+0xf6>
c0036e84:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036e89:	89 d0                	mov    %edx,%eax
c0036e8b:	eb a9                	jmp    c0036e36 <_svfiprintf_r+0xf6>
c0036e8d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e90:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036e97:	89 55 10             	mov    %edx,0x10(%ebp)
c0036e9a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036e9f:	8b 08                	mov    (%eax),%ecx
c0036ea1:	83 c0 04             	add    $0x4,%eax
c0036ea4:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036eab:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036eb2:	89 45 14             	mov    %eax,0x14(%ebp)
c0036eb5:	c7 85 44 ff ff ff 67 	movl   $0xc0039967,-0xbc(%ebp)
c0036ebc:	99 03 c0 
c0036ebf:	90                   	nop
c0036ec0:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036ec7:	31 ff                	xor    %edi,%edi
c0036ec9:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036ecf:	89 d8                	mov    %ebx,%eax
c0036ed1:	24 7f                	and    $0x7f,%al
c0036ed3:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036eda:	0f 48 c3             	cmovs  %ebx,%eax
c0036edd:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036ee3:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036ee9:	85 c0                	test   %eax,%eax
c0036eeb:	75 08                	jne    c0036ef5 <_svfiprintf_r+0x1b5>
c0036eed:	85 c9                	test   %ecx,%ecx
c0036eef:	0f 84 03 08 00 00    	je     c00376f8 <_svfiprintf_r+0x9b8>
c0036ef5:	80 fa 01             	cmp    $0x1,%dl
c0036ef8:	0f 84 8a 0a 00 00    	je     c0037988 <_svfiprintf_r+0xc48>
c0036efe:	80 fa 02             	cmp    $0x2,%dl
c0036f01:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036f04:	0f 85 86 01 00 00    	jne    c0037090 <_svfiprintf_r+0x350>
c0036f0a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036f10:	89 c8                	mov    %ecx,%eax
c0036f12:	83 eb 01             	sub    $0x1,%ebx
c0036f15:	83 e0 0f             	and    $0xf,%eax
c0036f18:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036f1c:	c1 e9 04             	shr    $0x4,%ecx
c0036f1f:	85 c9                	test   %ecx,%ecx
c0036f21:	88 03                	mov    %al,(%ebx)
c0036f23:	75 eb                	jne    c0036f10 <_svfiprintf_r+0x1d0>
c0036f25:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036f28:	29 d8                	sub    %ebx,%eax
c0036f2a:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036f30:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036f36:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036f3c:	39 c1                	cmp    %eax,%ecx
c0036f3e:	0f 4d c1             	cmovge %ecx,%eax
c0036f41:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f47:	89 f8                	mov    %edi,%eax
c0036f49:	3c 01                	cmp    $0x1,%al
c0036f4b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036f52:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036f58:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036f5e:	89 d0                	mov    %edx,%eax
c0036f60:	89 cf                	mov    %ecx,%edi
c0036f62:	83 c0 02             	add    $0x2,%eax
c0036f65:	83 e7 02             	and    $0x2,%edi
c0036f68:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036f6e:	89 cf                	mov    %ecx,%edi
c0036f70:	0f 44 c2             	cmove  %edx,%eax
c0036f73:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036f79:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f7f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036f85:	0f 85 cd 04 00 00    	jne    c0037458 <_svfiprintf_r+0x718>
c0036f8b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036f91:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036f97:	85 ff                	test   %edi,%edi
c0036f99:	0f 8e b9 04 00 00    	jle    c0037458 <_svfiprintf_r+0x718>
c0036f9f:	83 ff 10             	cmp    $0x10,%edi
c0036fa2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036fa8:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036fae:	7e 7c                	jle    c003702c <_svfiprintf_r+0x2ec>
c0036fb0:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0036fb6:	89 f1                	mov    %esi,%ecx
c0036fb8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036fbb:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036fbe:	eb 08                	jmp    c0036fc8 <_svfiprintf_r+0x288>
c0036fc0:	83 ef 10             	sub    $0x10,%edi
c0036fc3:	83 ff 10             	cmp    $0x10,%edi
c0036fc6:	7e 5c                	jle    c0037024 <_svfiprintf_r+0x2e4>
c0036fc8:	83 c0 01             	add    $0x1,%eax
c0036fcb:	83 c2 10             	add    $0x10,%edx
c0036fce:	c7 01 3c 9e 03 c0    	movl   $0xc0039e3c,(%ecx)
c0036fd4:	83 c1 08             	add    $0x8,%ecx
c0036fd7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0036fde:	83 f8 07             	cmp    $0x7,%eax
c0036fe1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036fe7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036fed:	7e d1                	jle    c0036fc0 <_svfiprintf_r+0x280>
c0036fef:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036ff5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036ff9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036ffd:	89 1c 24             	mov    %ebx,(%esp)
c0037000:	e8 4b fb ff ff       	call   c0036b50 <__ssprint_r>
c0037005:	85 c0                	test   %eax,%eax
c0037007:	0f 85 3b 07 00 00    	jne    c0037748 <_svfiprintf_r+0xa08>
c003700d:	83 ef 10             	sub    $0x10,%edi
c0037010:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037016:	83 ff 10             	cmp    $0x10,%edi
c0037019:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003701f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037022:	7f a4                	jg     c0036fc8 <_svfiprintf_r+0x288>
c0037024:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c003702a:	89 ce                	mov    %ecx,%esi
c003702c:	83 c0 01             	add    $0x1,%eax
c003702f:	01 fa                	add    %edi,%edx
c0037031:	c7 06 3c 9e 03 c0    	movl   $0xc0039e3c,(%esi)
c0037037:	83 c6 08             	add    $0x8,%esi
c003703a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003703d:	83 f8 07             	cmp    $0x7,%eax
c0037040:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037046:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003704c:	0f 8e 12 04 00 00    	jle    c0037464 <_svfiprintf_r+0x724>
c0037052:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037058:	89 44 24 08          	mov    %eax,0x8(%esp)
c003705c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003705f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037063:	8b 45 08             	mov    0x8(%ebp),%eax
c0037066:	89 04 24             	mov    %eax,(%esp)
c0037069:	e8 e2 fa ff ff       	call   c0036b50 <__ssprint_r>
c003706e:	85 c0                	test   %eax,%eax
c0037070:	0f 85 d2 06 00 00    	jne    c0037748 <_svfiprintf_r+0xa08>
c0037076:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003707c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003707f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037085:	e9 da 03 00 00       	jmp    c0037464 <_svfiprintf_r+0x724>
c003708a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037090:	89 c8                	mov    %ecx,%eax
c0037092:	83 eb 01             	sub    $0x1,%ebx
c0037095:	83 e0 07             	and    $0x7,%eax
c0037098:	c1 e9 03             	shr    $0x3,%ecx
c003709b:	83 c0 30             	add    $0x30,%eax
c003709e:	85 c9                	test   %ecx,%ecx
c00370a0:	88 03                	mov    %al,(%ebx)
c00370a2:	75 ec                	jne    c0037090 <_svfiprintf_r+0x350>
c00370a4:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00370ab:	89 da                	mov    %ebx,%edx
c00370ad:	0f 84 72 fe ff ff    	je     c0036f25 <_svfiprintf_r+0x1e5>
c00370b3:	3c 30                	cmp    $0x30,%al
c00370b5:	0f 84 6a fe ff ff    	je     c0036f25 <_svfiprintf_r+0x1e5>
c00370bb:	83 eb 01             	sub    $0x1,%ebx
c00370be:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00370c1:	29 d8                	sub    %ebx,%eax
c00370c3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c00370c7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00370cd:	e9 5e fe ff ff       	jmp    c0036f30 <_svfiprintf_r+0x1f0>
c00370d2:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00370d9:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370e0:	89 55 10             	mov    %edx,0x10(%ebp)
c00370e3:	8b 45 14             	mov    0x14(%ebp),%eax
c00370e6:	0f 85 48 01 00 00    	jne    c0037234 <_svfiprintf_r+0x4f4>
c00370ec:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370f3:	0f 84 3b 01 00 00    	je     c0037234 <_svfiprintf_r+0x4f4>
c00370f9:	0f b7 08             	movzwl (%eax),%ecx
c00370fc:	83 c0 04             	add    $0x4,%eax
c00370ff:	31 d2                	xor    %edx,%edx
c0037101:	89 45 14             	mov    %eax,0x14(%ebp)
c0037104:	e9 b7 fd ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x180>
c0037109:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037110:	89 f8                	mov    %edi,%eax
c0037112:	89 55 10             	mov    %edx,0x10(%ebp)
c0037115:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c003711b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037122:	8b 45 14             	mov    0x14(%ebp),%eax
c0037125:	75 0d                	jne    c0037134 <_svfiprintf_r+0x3f4>
c0037127:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003712e:	0f 85 f2 08 00 00    	jne    c0037a26 <_svfiprintf_r+0xce6>
c0037134:	8b 08                	mov    (%eax),%ecx
c0037136:	83 c0 04             	add    $0x4,%eax
c0037139:	89 45 14             	mov    %eax,0x14(%ebp)
c003713c:	85 c9                	test   %ecx,%ecx
c003713e:	0f 88 f3 08 00 00    	js     c0037a37 <_svfiprintf_r+0xcf7>
c0037144:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003714b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037150:	e9 74 fd ff ff       	jmp    c0036ec9 <_svfiprintf_r+0x189>
c0037155:	0f be 02             	movsbl (%edx),%eax
c0037158:	8d 5a 01             	lea    0x1(%edx),%ebx
c003715b:	83 f8 2a             	cmp    $0x2a,%eax
c003715e:	0f 84 af 09 00 00    	je     c0037b13 <_svfiprintf_r+0xdd3>
c0037164:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037167:	31 d2                	xor    %edx,%edx
c0037169:	83 f9 09             	cmp    $0x9,%ecx
c003716c:	0f 87 90 09 00 00    	ja     c0037b02 <_svfiprintf_r+0xdc2>
c0037172:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037178:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003717b:	83 c3 01             	add    $0x1,%ebx
c003717e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037181:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037185:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037188:	83 f9 09             	cmp    $0x9,%ecx
c003718b:	76 eb                	jbe    c0037178 <_svfiprintf_r+0x438>
c003718d:	85 d2                	test   %edx,%edx
c003718f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037194:	0f 48 d1             	cmovs  %ecx,%edx
c0037197:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003719a:	83 f9 58             	cmp    $0x58,%ecx
c003719d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c00371a3:	89 da                	mov    %ebx,%edx
c00371a5:	0f 86 9d fc ff ff    	jbe    c0036e48 <_svfiprintf_r+0x108>
c00371ab:	89 fb                	mov    %edi,%ebx
c00371ad:	85 c0                	test   %eax,%eax
c00371af:	89 55 10             	mov    %edx,0x10(%ebp)
c00371b2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00371b8:	0f 84 5f 05 00 00    	je     c003771d <_svfiprintf_r+0x9dd>
c00371be:	88 45 80             	mov    %al,-0x80(%ebp)
c00371c1:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00371c4:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00371cb:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00371d2:	00 00 00 
c00371d5:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00371dc:	00 00 00 
c00371df:	e9 5a 01 00 00       	jmp    c003733e <_svfiprintf_r+0x5fe>
c00371e4:	31 db                	xor    %ebx,%ebx
c00371e6:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00371f0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c00371f3:	83 c2 01             	add    $0x1,%edx
c00371f6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c00371f9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c00371fd:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037200:	83 f9 09             	cmp    $0x9,%ecx
c0037203:	76 eb                	jbe    c00371f0 <_svfiprintf_r+0x4b0>
c0037205:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c003720b:	e9 2c fc ff ff       	jmp    c0036e3c <_svfiprintf_r+0xfc>
c0037210:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0037217:	00 00 00 
c003721a:	89 d0                	mov    %edx,%eax
c003721c:	e9 15 fc ff ff       	jmp    c0036e36 <_svfiprintf_r+0xf6>
c0037221:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037228:	89 55 10             	mov    %edx,0x10(%ebp)
c003722b:	8b 45 14             	mov    0x14(%ebp),%eax
c003722e:	0f 84 b8 fe ff ff    	je     c00370ec <_svfiprintf_r+0x3ac>
c0037234:	8b 08                	mov    (%eax),%ecx
c0037236:	83 c0 04             	add    $0x4,%eax
c0037239:	31 d2                	xor    %edx,%edx
c003723b:	89 45 14             	mov    %eax,0x14(%ebp)
c003723e:	e9 7d fc ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x180>
c0037243:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003724a:	89 f8                	mov    %edi,%eax
c003724c:	89 55 10             	mov    %edx,0x10(%ebp)
c003724f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037255:	0f 85 a2 07 00 00    	jne    c00379fd <_svfiprintf_r+0xcbd>
c003725b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037262:	0f 84 95 07 00 00    	je     c00379fd <_svfiprintf_r+0xcbd>
c0037268:	8b 45 14             	mov    0x14(%ebp),%eax
c003726b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037272:	8b 00                	mov    (%eax),%eax
c0037274:	66 89 18             	mov    %bx,(%eax)
c0037277:	8b 45 14             	mov    0x14(%ebp),%eax
c003727a:	83 c0 04             	add    $0x4,%eax
c003727d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037280:	e9 19 fb ff ff       	jmp    c0036d9e <_svfiprintf_r+0x5e>
c0037285:	89 fb                	mov    %edi,%ebx
c0037287:	89 55 10             	mov    %edx,0x10(%ebp)
c003728a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037290:	c7 85 44 ff ff ff 67 	movl   $0xc0039967,-0xbc(%ebp)
c0037297:	99 03 c0 
c003729a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00372a1:	8b 5d 14             	mov    0x14(%ebp),%ebx
c00372a4:	75 0d                	jne    c00372b3 <_svfiprintf_r+0x573>
c00372a6:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00372ad:	0f 85 65 07 00 00    	jne    c0037a18 <_svfiprintf_r+0xcd8>
c00372b3:	8b 0b                	mov    (%ebx),%ecx
c00372b5:	83 c3 04             	add    $0x4,%ebx
c00372b8:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00372bb:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00372c2:	ba 02 00 00 00       	mov    $0x2,%edx
c00372c7:	0f 84 f3 fb ff ff    	je     c0036ec0 <_svfiprintf_r+0x180>
c00372cd:	85 c9                	test   %ecx,%ecx
c00372cf:	0f 84 eb fb ff ff    	je     c0036ec0 <_svfiprintf_r+0x180>
c00372d5:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c00372dc:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c00372e2:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c00372e9:	e9 d2 fb ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x180>
c00372ee:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c00372f5:	89 d0                	mov    %edx,%eax
c00372f7:	e9 3a fb ff ff       	jmp    c0036e36 <_svfiprintf_r+0xf6>
c00372fc:	89 f8                	mov    %edi,%eax
c00372fe:	89 55 10             	mov    %edx,0x10(%ebp)
c0037301:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037307:	e9 0f fe ff ff       	jmp    c003711b <_svfiprintf_r+0x3db>
c003730c:	8b 45 14             	mov    0x14(%ebp),%eax
c003730f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037312:	89 55 10             	mov    %edx,0x10(%ebp)
c0037315:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003731c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037323:	00 00 00 
c0037326:	8b 00                	mov    (%eax),%eax
c0037328:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003732f:	00 00 00 
c0037332:	88 45 80             	mov    %al,-0x80(%ebp)
c0037335:	8b 45 14             	mov    0x14(%ebp),%eax
c0037338:	83 c0 04             	add    $0x4,%eax
c003733b:	89 45 14             	mov    %eax,0x14(%ebp)
c003733e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037345:	00 00 00 
c0037348:	e9 05 fc ff ff       	jmp    c0036f52 <_svfiprintf_r+0x212>
c003734d:	89 fb                	mov    %edi,%ebx
c003734f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037352:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037358:	c7 85 44 ff ff ff 56 	movl   $0xc0039956,-0xbc(%ebp)
c003735f:	99 03 c0 
c0037362:	e9 33 ff ff ff       	jmp    c003729a <_svfiprintf_r+0x55a>
c0037367:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c003736e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037375:	89 55 10             	mov    %edx,0x10(%ebp)
c0037378:	8b 45 14             	mov    0x14(%ebp),%eax
c003737b:	75 39                	jne    c00373b6 <_svfiprintf_r+0x676>
c003737d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037384:	74 30                	je     c00373b6 <_svfiprintf_r+0x676>
c0037386:	0f b7 08             	movzwl (%eax),%ecx
c0037389:	83 c0 04             	add    $0x4,%eax
c003738c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037391:	89 45 14             	mov    %eax,0x14(%ebp)
c0037394:	e9 27 fb ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x180>
c0037399:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c00373a0:	89 d0                	mov    %edx,%eax
c00373a2:	e9 8f fa ff ff       	jmp    c0036e36 <_svfiprintf_r+0xf6>
c00373a7:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00373ae:	89 55 10             	mov    %edx,0x10(%ebp)
c00373b1:	8b 45 14             	mov    0x14(%ebp),%eax
c00373b4:	74 c7                	je     c003737d <_svfiprintf_r+0x63d>
c00373b6:	8b 08                	mov    (%eax),%ecx
c00373b8:	83 c0 04             	add    $0x4,%eax
c00373bb:	ba 01 00 00 00       	mov    $0x1,%edx
c00373c0:	89 45 14             	mov    %eax,0x14(%ebp)
c00373c3:	e9 f8 fa ff ff       	jmp    c0036ec0 <_svfiprintf_r+0x180>
c00373c8:	8b 45 14             	mov    0x14(%ebp),%eax
c00373cb:	89 55 10             	mov    %edx,0x10(%ebp)
c00373ce:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00373d5:	8b 18                	mov    (%eax),%ebx
c00373d7:	8d 50 04             	lea    0x4(%eax),%edx
c00373da:	85 db                	test   %ebx,%ebx
c00373dc:	0f 84 cc 06 00 00    	je     c0037aae <_svfiprintf_r+0xd6e>
c00373e2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00373e8:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c00373ee:	85 ff                	test   %edi,%edi
c00373f0:	0f 88 59 06 00 00    	js     c0037a4f <_svfiprintf_r+0xd0f>
c00373f6:	89 7c 24 08          	mov    %edi,0x8(%esp)
c00373fa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037401:	00 
c0037402:	89 1c 24             	mov    %ebx,(%esp)
c0037405:	e8 06 e7 ff ff       	call   c0035b10 <memchr>
c003740a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037410:	85 c0                	test   %eax,%eax
c0037412:	0f 84 c5 06 00 00    	je     c0037add <_svfiprintf_r+0xd9d>
c0037418:	29 d8                	sub    %ebx,%eax
c003741a:	39 f8                	cmp    %edi,%eax
c003741c:	0f 4f c7             	cmovg  %edi,%eax
c003741f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037426:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003742c:	89 55 14             	mov    %edx,0x14(%ebp)
c003742f:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037436:	00 00 00 
c0037439:	e9 f2 fa ff ff       	jmp    c0036f30 <_svfiprintf_r+0x1f0>
c003743e:	89 f8                	mov    %edi,%eax
c0037440:	84 c0                	test   %al,%al
c0037442:	b8 20 00 00 00       	mov    $0x20,%eax
c0037447:	0f 44 f8             	cmove  %eax,%edi
c003744a:	89 d0                	mov    %edx,%eax
c003744c:	e9 e5 f9 ff ff       	jmp    c0036e36 <_svfiprintf_r+0xf6>
c0037451:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037458:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003745e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037464:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c003746b:	74 2e                	je     c003749b <_svfiprintf_r+0x75b>
c003746d:	83 c0 01             	add    $0x1,%eax
c0037470:	83 c2 01             	add    $0x1,%edx
c0037473:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037479:	83 c6 08             	add    $0x8,%esi
c003747c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003747f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037486:	83 f8 07             	cmp    $0x7,%eax
c0037489:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003748f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037495:	0f 8f b5 04 00 00    	jg     c0037950 <_svfiprintf_r+0xc10>
c003749b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c00374a1:	85 c9                	test   %ecx,%ecx
c00374a3:	74 2e                	je     c00374d3 <_svfiprintf_r+0x793>
c00374a5:	83 c0 01             	add    $0x1,%eax
c00374a8:	83 c2 02             	add    $0x2,%edx
c00374ab:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c00374b1:	83 c6 08             	add    $0x8,%esi
c00374b4:	89 4e f8             	mov    %ecx,-0x8(%esi)
c00374b7:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c00374be:	83 f8 07             	cmp    $0x7,%eax
c00374c1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00374c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374cd:	0f 8f 45 04 00 00    	jg     c0037918 <_svfiprintf_r+0xbd8>
c00374d3:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c00374da:	00 00 00 
c00374dd:	0f 84 9d 02 00 00    	je     c0037780 <_svfiprintf_r+0xa40>
c00374e3:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00374e9:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c00374ef:	85 ff                	test   %edi,%edi
c00374f1:	0f 8e e1 00 00 00    	jle    c00375d8 <_svfiprintf_r+0x898>
c00374f7:	83 ff 10             	cmp    $0x10,%edi
c00374fa:	0f 8e 7c 00 00 00    	jle    c003757c <_svfiprintf_r+0x83c>
c0037500:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0037506:	89 f1                	mov    %esi,%ecx
c0037508:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003750b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003750e:	eb 08                	jmp    c0037518 <_svfiprintf_r+0x7d8>
c0037510:	83 ef 10             	sub    $0x10,%edi
c0037513:	83 ff 10             	cmp    $0x10,%edi
c0037516:	7e 5c                	jle    c0037574 <_svfiprintf_r+0x834>
c0037518:	83 c0 01             	add    $0x1,%eax
c003751b:	83 c2 10             	add    $0x10,%edx
c003751e:	c7 01 2c 9e 03 c0    	movl   $0xc0039e2c,(%ecx)
c0037524:	83 c1 08             	add    $0x8,%ecx
c0037527:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003752e:	83 f8 07             	cmp    $0x7,%eax
c0037531:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037537:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003753d:	7e d1                	jle    c0037510 <_svfiprintf_r+0x7d0>
c003753f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037545:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037549:	89 74 24 04          	mov    %esi,0x4(%esp)
c003754d:	89 1c 24             	mov    %ebx,(%esp)
c0037550:	e8 fb f5 ff ff       	call   c0036b50 <__ssprint_r>
c0037555:	85 c0                	test   %eax,%eax
c0037557:	0f 85 eb 01 00 00    	jne    c0037748 <_svfiprintf_r+0xa08>
c003755d:	83 ef 10             	sub    $0x10,%edi
c0037560:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037566:	83 ff 10             	cmp    $0x10,%edi
c0037569:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003756f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037572:	7f a4                	jg     c0037518 <_svfiprintf_r+0x7d8>
c0037574:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003757a:	89 ce                	mov    %ecx,%esi
c003757c:	83 c0 01             	add    $0x1,%eax
c003757f:	01 fa                	add    %edi,%edx
c0037581:	c7 06 2c 9e 03 c0    	movl   $0xc0039e2c,(%esi)
c0037587:	83 c6 08             	add    $0x8,%esi
c003758a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003758d:	83 f8 07             	cmp    $0x7,%eax
c0037590:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037596:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003759c:	7e 3a                	jle    c00375d8 <_svfiprintf_r+0x898>
c003759e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00375a4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00375a8:	8b 45 0c             	mov    0xc(%ebp),%eax
c00375ab:	89 44 24 04          	mov    %eax,0x4(%esp)
c00375af:	8b 45 08             	mov    0x8(%ebp),%eax
c00375b2:	89 04 24             	mov    %eax,(%esp)
c00375b5:	e8 96 f5 ff ff       	call   c0036b50 <__ssprint_r>
c00375ba:	85 c0                	test   %eax,%eax
c00375bc:	0f 85 86 01 00 00    	jne    c0037748 <_svfiprintf_r+0xa08>
c00375c2:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00375c8:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00375cb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00375d8:	89 1e                	mov    %ebx,(%esi)
c00375da:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c00375e0:	83 c0 01             	add    $0x1,%eax
c00375e3:	83 c6 08             	add    $0x8,%esi
c00375e6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375ec:	89 5e fc             	mov    %ebx,-0x4(%esi)
c00375ef:	01 da                	add    %ebx,%edx
c00375f1:	83 f8 07             	cmp    $0x7,%eax
c00375f4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375fa:	0f 8f 80 02 00 00    	jg     c0037880 <_svfiprintf_r+0xb40>
c0037600:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0037607:	0f 84 b9 00 00 00    	je     c00376c6 <_svfiprintf_r+0x986>
c003760d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037613:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037619:	85 ff                	test   %edi,%edi
c003761b:	0f 8e a5 00 00 00    	jle    c00376c6 <_svfiprintf_r+0x986>
c0037621:	83 ff 10             	cmp    $0x10,%edi
c0037624:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003762a:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0037630:	7e 71                	jle    c00376a3 <_svfiprintf_r+0x963>
c0037632:	89 f1                	mov    %esi,%ecx
c0037634:	8b 75 08             	mov    0x8(%ebp),%esi
c0037637:	eb 0f                	jmp    c0037648 <_svfiprintf_r+0x908>
c0037639:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037640:	83 ef 10             	sub    $0x10,%edi
c0037643:	83 ff 10             	cmp    $0x10,%edi
c0037646:	7e 59                	jle    c00376a1 <_svfiprintf_r+0x961>
c0037648:	83 c0 01             	add    $0x1,%eax
c003764b:	83 c2 10             	add    $0x10,%edx
c003764e:	c7 01 3c 9e 03 c0    	movl   $0xc0039e3c,(%ecx)
c0037654:	83 c1 08             	add    $0x8,%ecx
c0037657:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003765e:	83 f8 07             	cmp    $0x7,%eax
c0037661:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037667:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003766d:	7e d1                	jle    c0037640 <_svfiprintf_r+0x900>
c003766f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037672:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037676:	89 34 24             	mov    %esi,(%esp)
c0037679:	89 44 24 04          	mov    %eax,0x4(%esp)
c003767d:	e8 ce f4 ff ff       	call   c0036b50 <__ssprint_r>
c0037682:	85 c0                	test   %eax,%eax
c0037684:	0f 85 be 00 00 00    	jne    c0037748 <_svfiprintf_r+0xa08>
c003768a:	83 ef 10             	sub    $0x10,%edi
c003768d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037693:	83 ff 10             	cmp    $0x10,%edi
c0037696:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003769c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003769f:	7f a7                	jg     c0037648 <_svfiprintf_r+0x908>
c00376a1:	89 ce                	mov    %ecx,%esi
c00376a3:	83 c0 01             	add    $0x1,%eax
c00376a6:	01 fa                	add    %edi,%edx
c00376a8:	83 f8 07             	cmp    $0x7,%eax
c00376ab:	c7 06 3c 9e 03 c0    	movl   $0xc0039e3c,(%esi)
c00376b1:	89 7e 04             	mov    %edi,0x4(%esi)
c00376b4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00376ba:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00376c0:	0f 8f ee 02 00 00    	jg     c00379b4 <_svfiprintf_r+0xc74>
c00376c6:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c00376cc:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c00376d2:	39 c6                	cmp    %eax,%esi
c00376d4:	0f 4d c6             	cmovge %esi,%eax
c00376d7:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c00376dd:	85 d2                	test   %edx,%edx
c00376df:	0f 85 d3 01 00 00    	jne    c00378b8 <_svfiprintf_r+0xb78>
c00376e5:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00376ec:	00 00 00 
c00376ef:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00376f2:	e9 a7 f6 ff ff       	jmp    c0036d9e <_svfiprintf_r+0x5e>
c00376f7:	90                   	nop
c00376f8:	84 d2                	test   %dl,%dl
c00376fa:	75 6c                	jne    c0037768 <_svfiprintf_r+0xa28>
c00376fc:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037703:	74 63                	je     c0037768 <_svfiprintf_r+0xa28>
c0037705:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003770b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c003770e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0037712:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037718:	e9 13 f8 ff ff       	jmp    c0036f30 <_svfiprintf_r+0x1f0>
c003771d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c0037723:	85 c0                	test   %eax,%eax
c0037725:	74 21                	je     c0037748 <_svfiprintf_r+0xa08>
c0037727:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003772d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037731:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037734:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037738:	8b 45 08             	mov    0x8(%ebp),%eax
c003773b:	89 04 24             	mov    %eax,(%esp)
c003773e:	e8 0d f4 ff ff       	call   c0036b50 <__ssprint_r>
c0037743:	90                   	nop
c0037744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037748:	8b 75 0c             	mov    0xc(%ebp),%esi
c003774b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037750:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037754:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c003775b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037761:	5b                   	pop    %ebx
c0037762:	5e                   	pop    %esi
c0037763:	5f                   	pop    %edi
c0037764:	5d                   	pop    %ebp
c0037765:	c3                   	ret    
c0037766:	66 90                	xchg   %ax,%ax
c0037768:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c003776f:	00 00 00 
c0037772:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037775:	e9 b6 f7 ff ff       	jmp    c0036f30 <_svfiprintf_r+0x1f0>
c003777a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037780:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037786:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003778c:	85 ff                	test   %edi,%edi
c003778e:	0f 8e 4f fd ff ff    	jle    c00374e3 <_svfiprintf_r+0x7a3>
c0037794:	83 ff 10             	cmp    $0x10,%edi
c0037797:	0f 8e 7f 00 00 00    	jle    c003781c <_svfiprintf_r+0xadc>
c003779d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c00377a3:	89 f1                	mov    %esi,%ecx
c00377a5:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00377a8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00377ab:	eb 0b                	jmp    c00377b8 <_svfiprintf_r+0xa78>
c00377ad:	8d 76 00             	lea    0x0(%esi),%esi
c00377b0:	83 ef 10             	sub    $0x10,%edi
c00377b3:	83 ff 10             	cmp    $0x10,%edi
c00377b6:	7e 5c                	jle    c0037814 <_svfiprintf_r+0xad4>
c00377b8:	83 c0 01             	add    $0x1,%eax
c00377bb:	83 c2 10             	add    $0x10,%edx
c00377be:	c7 01 2c 9e 03 c0    	movl   $0xc0039e2c,(%ecx)
c00377c4:	83 c1 08             	add    $0x8,%ecx
c00377c7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00377ce:	83 f8 07             	cmp    $0x7,%eax
c00377d1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377d7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377dd:	7e d1                	jle    c00377b0 <_svfiprintf_r+0xa70>
c00377df:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377e5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377e9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00377ed:	89 1c 24             	mov    %ebx,(%esp)
c00377f0:	e8 5b f3 ff ff       	call   c0036b50 <__ssprint_r>
c00377f5:	85 c0                	test   %eax,%eax
c00377f7:	0f 85 4b ff ff ff    	jne    c0037748 <_svfiprintf_r+0xa08>
c00377fd:	83 ef 10             	sub    $0x10,%edi
c0037800:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037806:	83 ff 10             	cmp    $0x10,%edi
c0037809:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003780f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037812:	7f a4                	jg     c00377b8 <_svfiprintf_r+0xa78>
c0037814:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c003781a:	89 ce                	mov    %ecx,%esi
c003781c:	83 c0 01             	add    $0x1,%eax
c003781f:	01 fa                	add    %edi,%edx
c0037821:	c7 06 2c 9e 03 c0    	movl   $0xc0039e2c,(%esi)
c0037827:	83 c6 08             	add    $0x8,%esi
c003782a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003782d:	83 f8 07             	cmp    $0x7,%eax
c0037830:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037836:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003783c:	0f 8e a1 fc ff ff    	jle    c00374e3 <_svfiprintf_r+0x7a3>
c0037842:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037848:	89 44 24 08          	mov    %eax,0x8(%esp)
c003784c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003784f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037853:	8b 45 08             	mov    0x8(%ebp),%eax
c0037856:	89 04 24             	mov    %eax,(%esp)
c0037859:	e8 f2 f2 ff ff       	call   c0036b50 <__ssprint_r>
c003785e:	85 c0                	test   %eax,%eax
c0037860:	0f 85 e2 fe ff ff    	jne    c0037748 <_svfiprintf_r+0xa08>
c0037866:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003786c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003786f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037875:	e9 69 fc ff ff       	jmp    c00374e3 <_svfiprintf_r+0x7a3>
c003787a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037880:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037886:	89 44 24 08          	mov    %eax,0x8(%esp)
c003788a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003788d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037891:	8b 45 08             	mov    0x8(%ebp),%eax
c0037894:	89 04 24             	mov    %eax,(%esp)
c0037897:	e8 b4 f2 ff ff       	call   c0036b50 <__ssprint_r>
c003789c:	85 c0                	test   %eax,%eax
c003789e:	0f 85 a4 fe ff ff    	jne    c0037748 <_svfiprintf_r+0xa08>
c00378a4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378aa:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378ad:	e9 4e fd ff ff       	jmp    c0037600 <_svfiprintf_r+0x8c0>
c00378b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00378b8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378be:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378c2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378c5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378cc:	89 04 24             	mov    %eax,(%esp)
c00378cf:	e8 7c f2 ff ff       	call   c0036b50 <__ssprint_r>
c00378d4:	85 c0                	test   %eax,%eax
c00378d6:	0f 84 09 fe ff ff    	je     c00376e5 <_svfiprintf_r+0x9a5>
c00378dc:	e9 67 fe ff ff       	jmp    c0037748 <_svfiprintf_r+0xa08>
c00378e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00378e8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378ee:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378f2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378f5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378fc:	89 04 24             	mov    %eax,(%esp)
c00378ff:	e8 4c f2 ff ff       	call   c0036b50 <__ssprint_r>
c0037904:	85 c0                	test   %eax,%eax
c0037906:	0f 85 3c fe ff ff    	jne    c0037748 <_svfiprintf_r+0xa08>
c003790c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003790f:	e9 e9 f4 ff ff       	jmp    c0036dfd <_svfiprintf_r+0xbd>
c0037914:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037918:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003791e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037922:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037925:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037929:	8b 45 08             	mov    0x8(%ebp),%eax
c003792c:	89 04 24             	mov    %eax,(%esp)
c003792f:	e8 1c f2 ff ff       	call   c0036b50 <__ssprint_r>
c0037934:	85 c0                	test   %eax,%eax
c0037936:	0f 85 0c fe ff ff    	jne    c0037748 <_svfiprintf_r+0xa08>
c003793c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037942:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037945:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003794b:	e9 83 fb ff ff       	jmp    c00374d3 <_svfiprintf_r+0x793>
c0037950:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037956:	89 44 24 08          	mov    %eax,0x8(%esp)
c003795a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003795d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037961:	8b 45 08             	mov    0x8(%ebp),%eax
c0037964:	89 04 24             	mov    %eax,(%esp)
c0037967:	e8 e4 f1 ff ff       	call   c0036b50 <__ssprint_r>
c003796c:	85 c0                	test   %eax,%eax
c003796e:	0f 85 d4 fd ff ff    	jne    c0037748 <_svfiprintf_r+0xa08>
c0037974:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003797a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003797d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037983:	e9 13 fb ff ff       	jmp    c003749b <_svfiprintf_r+0x75b>
c0037988:	83 f9 09             	cmp    $0x9,%ecx
c003798b:	76 56                	jbe    c00379e3 <_svfiprintf_r+0xca3>
c003798d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037990:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037995:	83 eb 01             	sub    $0x1,%ebx
c0037998:	f7 e1                	mul    %ecx
c003799a:	c1 ea 03             	shr    $0x3,%edx
c003799d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00379a0:	01 c0                	add    %eax,%eax
c00379a2:	29 c1                	sub    %eax,%ecx
c00379a4:	83 c1 30             	add    $0x30,%ecx
c00379a7:	85 d2                	test   %edx,%edx
c00379a9:	88 0b                	mov    %cl,(%ebx)
c00379ab:	89 d1                	mov    %edx,%ecx
c00379ad:	75 e1                	jne    c0037990 <_svfiprintf_r+0xc50>
c00379af:	e9 71 f5 ff ff       	jmp    c0036f25 <_svfiprintf_r+0x1e5>
c00379b4:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00379ba:	89 44 24 08          	mov    %eax,0x8(%esp)
c00379be:	8b 45 0c             	mov    0xc(%ebp),%eax
c00379c1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00379c5:	8b 45 08             	mov    0x8(%ebp),%eax
c00379c8:	89 04 24             	mov    %eax,(%esp)
c00379cb:	e8 80 f1 ff ff       	call   c0036b50 <__ssprint_r>
c00379d0:	85 c0                	test   %eax,%eax
c00379d2:	0f 85 70 fd ff ff    	jne    c0037748 <_svfiprintf_r+0xa08>
c00379d8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00379de:	e9 e3 fc ff ff       	jmp    c00376c6 <_svfiprintf_r+0x986>
c00379e3:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00379e9:	83 c1 30             	add    $0x30,%ecx
c00379ec:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00379ef:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00379f2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00379f8:	e9 33 f5 ff ff       	jmp    c0036f30 <_svfiprintf_r+0x1f0>
c00379fd:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a00:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0037a06:	8b 00                	mov    (%eax),%eax
c0037a08:	89 18                	mov    %ebx,(%eax)
c0037a0a:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a0d:	83 c0 04             	add    $0x4,%eax
c0037a10:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a13:	e9 86 f3 ff ff       	jmp    c0036d9e <_svfiprintf_r+0x5e>
c0037a18:	0f b7 0b             	movzwl (%ebx),%ecx
c0037a1b:	83 c3 04             	add    $0x4,%ebx
c0037a1e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0037a21:	e9 95 f8 ff ff       	jmp    c00372bb <_svfiprintf_r+0x57b>
c0037a26:	0f bf 08             	movswl (%eax),%ecx
c0037a29:	83 c0 04             	add    $0x4,%eax
c0037a2c:	89 45 14             	mov    %eax,0x14(%ebp)
c0037a2f:	85 c9                	test   %ecx,%ecx
c0037a31:	0f 89 0d f7 ff ff    	jns    c0037144 <_svfiprintf_r+0x404>
c0037a37:	f7 d9                	neg    %ecx
c0037a39:	bf 2d 00 00 00       	mov    $0x2d,%edi
c0037a3e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037a45:	ba 01 00 00 00       	mov    $0x1,%edx
c0037a4a:	e9 7a f4 ff ff       	jmp    c0036ec9 <_svfiprintf_r+0x189>
c0037a4f:	89 1c 24             	mov    %ebx,(%esp)
c0037a52:	e8 79 f0 ff ff       	call   c0036ad0 <strlen>
c0037a57:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037a5d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a64:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a6b:	00 00 00 
c0037a6e:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a71:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a77:	e9 b4 f4 ff ff       	jmp    c0036f30 <_svfiprintf_r+0x1f0>
c0037a7c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a7f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037a86:	00 
c0037a87:	89 04 24             	mov    %eax,(%esp)
c0037a8a:	e8 41 d9 ff ff       	call   c00353d0 <_malloc_r>
c0037a8f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037a92:	85 c0                	test   %eax,%eax
c0037a94:	89 06                	mov    %eax,(%esi)
c0037a96:	89 46 10             	mov    %eax,0x10(%esi)
c0037a99:	0f 84 a3 00 00 00    	je     c0037b42 <_svfiprintf_r+0xe02>
c0037a9f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037aa2:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037aa9:	e9 b2 f2 ff ff       	jmp    c0036d60 <_svfiprintf_r+0x20>
c0037aae:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037ab4:	b8 06 00 00 00       	mov    $0x6,%eax
c0037ab9:	89 55 14             	mov    %edx,0x14(%ebp)
c0037abc:	83 ff 06             	cmp    $0x6,%edi
c0037abf:	0f 46 c7             	cmovbe %edi,%eax
c0037ac2:	85 c0                	test   %eax,%eax
c0037ac4:	0f 49 d8             	cmovns %eax,%ebx
c0037ac7:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037acd:	bb 78 99 03 c0       	mov    $0xc0039978,%ebx
c0037ad2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037ad8:	e9 61 f8 ff ff       	jmp    c003733e <_svfiprintf_r+0x5fe>
c0037add:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037ae3:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037aea:	89 55 14             	mov    %edx,0x14(%ebp)
c0037aed:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037af4:	00 00 00 
c0037af7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037afd:	e9 2e f4 ff ff       	jmp    c0036f30 <_svfiprintf_r+0x1f0>
c0037b02:	89 da                	mov    %ebx,%edx
c0037b04:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037b0b:	00 00 00 
c0037b0e:	e9 29 f3 ff ff       	jmp    c0036e3c <_svfiprintf_r+0xfc>
c0037b13:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037b16:	89 da                	mov    %ebx,%edx
c0037b18:	8b 45 14             	mov    0x14(%ebp),%eax
c0037b1b:	8b 09                	mov    (%ecx),%ecx
c0037b1d:	83 c0 04             	add    $0x4,%eax
c0037b20:	89 45 14             	mov    %eax,0x14(%ebp)
c0037b23:	85 c9                	test   %ecx,%ecx
c0037b25:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037b2b:	0f 89 26 f3 ff ff    	jns    c0036e57 <_svfiprintf_r+0x117>
c0037b31:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037b38:	ff ff ff 
c0037b3b:	89 d0                	mov    %edx,%eax
c0037b3d:	e9 f4 f2 ff ff       	jmp    c0036e36 <_svfiprintf_r+0xf6>
c0037b42:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b45:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037b4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037b50:	e9 06 fc ff ff       	jmp    c003775b <_svfiprintf_r+0xa1b>
c0037b55:	66 90                	xchg   %ax,%ax
c0037b57:	66 90                	xchg   %ax,%ax
c0037b59:	66 90                	xchg   %ax,%ax
c0037b5b:	66 90                	xchg   %ax,%ax
c0037b5d:	66 90                	xchg   %ax,%ax
c0037b5f:	90                   	nop

c0037b60 <_calloc_r>:
c0037b60:	55                   	push   %ebp
c0037b61:	89 e5                	mov    %esp,%ebp
c0037b63:	53                   	push   %ebx
c0037b64:	83 ec 14             	sub    $0x14,%esp
c0037b67:	8b 45 10             	mov    0x10(%ebp),%eax
c0037b6a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037b6e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b72:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b75:	89 04 24             	mov    %eax,(%esp)
c0037b78:	e8 53 d8 ff ff       	call   c00353d0 <_malloc_r>
c0037b7d:	85 c0                	test   %eax,%eax
c0037b7f:	89 c3                	mov    %eax,%ebx
c0037b81:	0f 84 91 00 00 00    	je     c0037c18 <_calloc_r+0xb8>
c0037b87:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037b8a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037b8d:	83 e8 04             	sub    $0x4,%eax
c0037b90:	83 f8 24             	cmp    $0x24,%eax
c0037b93:	77 63                	ja     c0037bf8 <_calloc_r+0x98>
c0037b95:	83 f8 13             	cmp    $0x13,%eax
c0037b98:	89 da                	mov    %ebx,%edx
c0037b9a:	77 1c                	ja     c0037bb8 <_calloc_r+0x58>
c0037b9c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037ba2:	89 d8                	mov    %ebx,%eax
c0037ba4:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037bab:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037bb2:	83 c4 14             	add    $0x14,%esp
c0037bb5:	5b                   	pop    %ebx
c0037bb6:	5d                   	pop    %ebp
c0037bb7:	c3                   	ret    
c0037bb8:	83 f8 1b             	cmp    $0x1b,%eax
c0037bbb:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037bc1:	8d 53 08             	lea    0x8(%ebx),%edx
c0037bc4:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037bcb:	76 cf                	jbe    c0037b9c <_calloc_r+0x3c>
c0037bcd:	83 f8 24             	cmp    $0x24,%eax
c0037bd0:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037bd7:	8d 53 10             	lea    0x10(%ebx),%edx
c0037bda:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037be1:	75 b9                	jne    c0037b9c <_calloc_r+0x3c>
c0037be3:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037bea:	8d 53 18             	lea    0x18(%ebx),%edx
c0037bed:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037bf4:	eb a6                	jmp    c0037b9c <_calloc_r+0x3c>
c0037bf6:	66 90                	xchg   %ax,%ax
c0037bf8:	89 1c 24             	mov    %ebx,(%esp)
c0037bfb:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037bff:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c06:	00 
c0037c07:	e8 50 a2 ff ff       	call   c0031e5c <memset>
c0037c0c:	83 c4 14             	add    $0x14,%esp
c0037c0f:	89 d8                	mov    %ebx,%eax
c0037c11:	5b                   	pop    %ebx
c0037c12:	5d                   	pop    %ebp
c0037c13:	c3                   	ret    
c0037c14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037c18:	31 c0                	xor    %eax,%eax
c0037c1a:	eb 96                	jmp    c0037bb2 <_calloc_r+0x52>
c0037c1c:	66 90                	xchg   %ax,%ax
c0037c1e:	66 90                	xchg   %ax,%ax

c0037c20 <_malloc_trim_r>:
c0037c20:	55                   	push   %ebp
c0037c21:	89 e5                	mov    %esp,%ebp
c0037c23:	57                   	push   %edi
c0037c24:	56                   	push   %esi
c0037c25:	53                   	push   %ebx
c0037c26:	83 ec 1c             	sub    $0x1c,%esp
c0037c29:	8b 75 08             	mov    0x8(%ebp),%esi
c0037c2c:	89 34 24             	mov    %esi,(%esp)
c0037c2f:	e8 7c df ff ff       	call   c0035bb0 <__malloc_lock>
c0037c34:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037c39:	8b 58 04             	mov    0x4(%eax),%ebx
c0037c3c:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037c3f:	89 d8                	mov    %ebx,%eax
c0037c41:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037c44:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037c49:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037c4e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037c54:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037c5a:	7e 1c                	jle    c0037c78 <_malloc_trim_r+0x58>
c0037c5c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c63:	00 
c0037c64:	89 34 24             	mov    %esi,(%esp)
c0037c67:	e8 44 ed ff ff       	call   c00369b0 <_sbrk_r>
c0037c6c:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037c72:	01 da                	add    %ebx,%edx
c0037c74:	39 d0                	cmp    %edx,%eax
c0037c76:	74 18                	je     c0037c90 <_malloc_trim_r+0x70>
c0037c78:	89 34 24             	mov    %esi,(%esp)
c0037c7b:	e8 40 df ff ff       	call   c0035bc0 <__malloc_unlock>
c0037c80:	83 c4 1c             	add    $0x1c,%esp
c0037c83:	31 c0                	xor    %eax,%eax
c0037c85:	5b                   	pop    %ebx
c0037c86:	5e                   	pop    %esi
c0037c87:	5f                   	pop    %edi
c0037c88:	5d                   	pop    %ebp
c0037c89:	c3                   	ret    
c0037c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037c90:	89 f8                	mov    %edi,%eax
c0037c92:	f7 d8                	neg    %eax
c0037c94:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c98:	89 34 24             	mov    %esi,(%esp)
c0037c9b:	e8 10 ed ff ff       	call   c00369b0 <_sbrk_r>
c0037ca0:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037ca3:	74 2b                	je     c0037cd0 <_malloc_trim_r+0xb0>
c0037ca5:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037caa:	29 fb                	sub    %edi,%ebx
c0037cac:	83 cb 01             	or     $0x1,%ebx
c0037caf:	29 3d 20 00 07 c0    	sub    %edi,0xc0070020
c0037cb5:	89 58 04             	mov    %ebx,0x4(%eax)
c0037cb8:	89 34 24             	mov    %esi,(%esp)
c0037cbb:	e8 00 df ff ff       	call   c0035bc0 <__malloc_unlock>
c0037cc0:	83 c4 1c             	add    $0x1c,%esp
c0037cc3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037cc8:	5b                   	pop    %ebx
c0037cc9:	5e                   	pop    %esi
c0037cca:	5f                   	pop    %edi
c0037ccb:	5d                   	pop    %ebp
c0037ccc:	c3                   	ret    
c0037ccd:	8d 76 00             	lea    0x0(%esi),%esi
c0037cd0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037cd7:	00 
c0037cd8:	89 34 24             	mov    %esi,(%esp)
c0037cdb:	e8 d0 ec ff ff       	call   c00369b0 <_sbrk_r>
c0037ce0:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037ce6:	89 c1                	mov    %eax,%ecx
c0037ce8:	29 d1                	sub    %edx,%ecx
c0037cea:	83 f9 0f             	cmp    $0xf,%ecx
c0037ced:	7e 89                	jle    c0037c78 <_malloc_trim_r+0x58>
c0037cef:	2b 05 20 d5 03 c0    	sub    0xc003d520,%eax
c0037cf5:	83 c9 01             	or     $0x1,%ecx
c0037cf8:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037cfb:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0037d00:	e9 73 ff ff ff       	jmp    c0037c78 <_malloc_trim_r+0x58>
c0037d05:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037d09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037d10 <_free_r>:
c0037d10:	55                   	push   %ebp
c0037d11:	89 e5                	mov    %esp,%ebp
c0037d13:	57                   	push   %edi
c0037d14:	56                   	push   %esi
c0037d15:	53                   	push   %ebx
c0037d16:	83 ec 1c             	sub    $0x1c,%esp
c0037d19:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037d1c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037d1f:	85 f6                	test   %esi,%esi
c0037d21:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037d24:	0f 84 fe 00 00 00    	je     c0037e28 <_free_r+0x118>
c0037d2a:	89 04 24             	mov    %eax,(%esp)
c0037d2d:	e8 7e de ff ff       	call   c0035bb0 <__malloc_lock>
c0037d32:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037d35:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037d38:	89 f8                	mov    %edi,%eax
c0037d3a:	83 e0 fe             	and    $0xfffffffe,%eax
c0037d3d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037d40:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037d43:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037d46:	39 0d 48 d5 03 c0    	cmp    %ecx,0xc003d548
c0037d4c:	0f 84 0e 01 00 00    	je     c0037e60 <_free_r+0x150>
c0037d52:	83 e7 01             	and    $0x1,%edi
c0037d55:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037d58:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037d5f:	75 1f                	jne    c0037d80 <_free_r+0x70>
c0037d61:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037d64:	29 f2                	sub    %esi,%edx
c0037d66:	01 f0                	add    %esi,%eax
c0037d68:	8b 72 08             	mov    0x8(%edx),%esi
c0037d6b:	81 fe 48 d5 03 c0    	cmp    $0xc003d548,%esi
c0037d71:	0f 84 39 01 00 00    	je     c0037eb0 <_free_r+0x1a0>
c0037d77:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037d7a:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037d7d:	89 77 08             	mov    %esi,0x8(%edi)
c0037d80:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037d85:	75 21                	jne    c0037da8 <_free_r+0x98>
c0037d87:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037d8a:	01 d8                	add    %ebx,%eax
c0037d8c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037d8f:	85 f6                	test   %esi,%esi
c0037d91:	75 0c                	jne    c0037d9f <_free_r+0x8f>
c0037d93:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0037d99:	0f 84 21 01 00 00    	je     c0037ec0 <_free_r+0x1b0>
c0037d9f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037da2:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037da5:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037da8:	89 c1                	mov    %eax,%ecx
c0037daa:	83 c9 01             	or     $0x1,%ecx
c0037dad:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037db0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037db3:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037db6:	85 c9                	test   %ecx,%ecx
c0037db8:	75 56                	jne    c0037e10 <_free_r+0x100>
c0037dba:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037dbf:	76 6f                	jbe    c0037e30 <_free_r+0x120>
c0037dc1:	89 c1                	mov    %eax,%ecx
c0037dc3:	c1 e9 09             	shr    $0x9,%ecx
c0037dc6:	83 f9 04             	cmp    $0x4,%ecx
c0037dc9:	0f 87 21 01 00 00    	ja     c0037ef0 <_free_r+0x1e0>
c0037dcf:	89 c1                	mov    %eax,%ecx
c0037dd1:	c1 e9 06             	shr    $0x6,%ecx
c0037dd4:	83 c1 38             	add    $0x38,%ecx
c0037dd7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037dda:	8d 34 9d 40 d5 03 c0 	lea    -0x3ffc2ac0(,%ebx,4),%esi
c0037de1:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037de4:	39 f3                	cmp    %esi,%ebx
c0037de6:	0f 84 14 01 00 00    	je     c0037f00 <_free_r+0x1f0>
c0037dec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037df0:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037df3:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037df6:	39 c8                	cmp    %ecx,%eax
c0037df8:	73 07                	jae    c0037e01 <_free_r+0xf1>
c0037dfa:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037dfd:	39 de                	cmp    %ebx,%esi
c0037dff:	75 ef                	jne    c0037df0 <_free_r+0xe0>
c0037e01:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037e04:	89 42 0c             	mov    %eax,0xc(%edx)
c0037e07:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037e0a:	89 50 08             	mov    %edx,0x8(%eax)
c0037e0d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037e10:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e13:	89 45 08             	mov    %eax,0x8(%ebp)
c0037e16:	83 c4 1c             	add    $0x1c,%esp
c0037e19:	5b                   	pop    %ebx
c0037e1a:	5e                   	pop    %esi
c0037e1b:	5f                   	pop    %edi
c0037e1c:	5d                   	pop    %ebp
c0037e1d:	e9 9e dd ff ff       	jmp    c0035bc0 <__malloc_unlock>
c0037e22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037e28:	83 c4 1c             	add    $0x1c,%esp
c0037e2b:	5b                   	pop    %ebx
c0037e2c:	5e                   	pop    %esi
c0037e2d:	5f                   	pop    %edi
c0037e2e:	5d                   	pop    %ebp
c0037e2f:	c3                   	ret    
c0037e30:	c1 e8 03             	shr    $0x3,%eax
c0037e33:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037e38:	89 c1                	mov    %eax,%ecx
c0037e3a:	c1 f9 02             	sar    $0x2,%ecx
c0037e3d:	8d 04 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%eax
c0037e44:	d3 e3                	shl    %cl,%ebx
c0037e46:	8b 48 08             	mov    0x8(%eax),%ecx
c0037e49:	09 1d 44 d5 03 c0    	or     %ebx,0xc003d544
c0037e4f:	89 42 0c             	mov    %eax,0xc(%edx)
c0037e52:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037e55:	89 50 08             	mov    %edx,0x8(%eax)
c0037e58:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037e5b:	eb b3                	jmp    c0037e10 <_free_r+0x100>
c0037e5d:	8d 76 00             	lea    0x0(%esi),%esi
c0037e60:	01 d8                	add    %ebx,%eax
c0037e62:	83 e7 01             	and    $0x1,%edi
c0037e65:	75 13                	jne    c0037e7a <_free_r+0x16a>
c0037e67:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037e6a:	29 ca                	sub    %ecx,%edx
c0037e6c:	01 c8                	add    %ecx,%eax
c0037e6e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037e71:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037e74:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037e77:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037e7a:	89 c1                	mov    %eax,%ecx
c0037e7c:	83 c9 01             	or     $0x1,%ecx
c0037e7f:	3b 05 24 d5 03 c0    	cmp    0xc003d524,%eax
c0037e85:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e88:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0037e8e:	72 80                	jb     c0037e10 <_free_r+0x100>
c0037e90:	a1 50 00 07 c0       	mov    0xc0070050,%eax
c0037e95:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e99:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e9c:	89 04 24             	mov    %eax,(%esp)
c0037e9f:	e8 7c fd ff ff       	call   c0037c20 <_malloc_trim_r>
c0037ea4:	e9 67 ff ff ff       	jmp    c0037e10 <_free_r+0x100>
c0037ea9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037eb0:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037eb7:	e9 c4 fe ff ff       	jmp    c0037d80 <_free_r+0x70>
c0037ebc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037ec0:	89 c1                	mov    %eax,%ecx
c0037ec2:	83 c9 01             	or     $0x1,%ecx
c0037ec5:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c0037ecb:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0037ed1:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0037ed8:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0037edf:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037ee2:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037ee5:	e9 26 ff ff ff       	jmp    c0037e10 <_free_r+0x100>
c0037eea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037ef0:	83 f9 14             	cmp    $0x14,%ecx
c0037ef3:	77 23                	ja     c0037f18 <_free_r+0x208>
c0037ef5:	83 c1 5b             	add    $0x5b,%ecx
c0037ef8:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037efb:	e9 da fe ff ff       	jmp    c0037dda <_free_r+0xca>
c0037f00:	c1 f9 02             	sar    $0x2,%ecx
c0037f03:	b8 01 00 00 00       	mov    $0x1,%eax
c0037f08:	d3 e0                	shl    %cl,%eax
c0037f0a:	09 05 44 d5 03 c0    	or     %eax,0xc003d544
c0037f10:	89 d8                	mov    %ebx,%eax
c0037f12:	e9 ed fe ff ff       	jmp    c0037e04 <_free_r+0xf4>
c0037f17:	90                   	nop
c0037f18:	83 f9 54             	cmp    $0x54,%ecx
c0037f1b:	77 10                	ja     c0037f2d <_free_r+0x21d>
c0037f1d:	89 c1                	mov    %eax,%ecx
c0037f1f:	c1 e9 0c             	shr    $0xc,%ecx
c0037f22:	83 c1 6e             	add    $0x6e,%ecx
c0037f25:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f28:	e9 ad fe ff ff       	jmp    c0037dda <_free_r+0xca>
c0037f2d:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037f33:	77 10                	ja     c0037f45 <_free_r+0x235>
c0037f35:	89 c1                	mov    %eax,%ecx
c0037f37:	c1 e9 0f             	shr    $0xf,%ecx
c0037f3a:	83 c1 77             	add    $0x77,%ecx
c0037f3d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f40:	e9 95 fe ff ff       	jmp    c0037dda <_free_r+0xca>
c0037f45:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037f4b:	77 10                	ja     c0037f5d <_free_r+0x24d>
c0037f4d:	89 c1                	mov    %eax,%ecx
c0037f4f:	c1 e9 12             	shr    $0x12,%ecx
c0037f52:	83 c1 7c             	add    $0x7c,%ecx
c0037f55:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f58:	e9 7d fe ff ff       	jmp    c0037dda <_free_r+0xca>
c0037f5d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037f62:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037f67:	e9 6e fe ff ff       	jmp    c0037dda <_free_r+0xca>
c0037f6c:	66 90                	xchg   %ax,%ax
c0037f6e:	66 90                	xchg   %ax,%ax

c0037f70 <memmove>:
c0037f70:	55                   	push   %ebp
c0037f71:	89 e5                	mov    %esp,%ebp
c0037f73:	56                   	push   %esi
c0037f74:	57                   	push   %edi
c0037f75:	53                   	push   %ebx
c0037f76:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037f79:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037f7c:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037f7f:	fc                   	cld    
c0037f80:	39 fe                	cmp    %edi,%esi
c0037f82:	73 43                	jae    c0037fc7 <memmove+0x57>
c0037f84:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037f88:	39 df                	cmp    %ebx,%edi
c0037f8a:	77 3b                	ja     c0037fc7 <memmove+0x57>
c0037f8c:	01 ce                	add    %ecx,%esi
c0037f8e:	01 cf                	add    %ecx,%edi
c0037f90:	fd                   	std    
c0037f91:	83 f9 08             	cmp    $0x8,%ecx
c0037f94:	76 2b                	jbe    c0037fc1 <memmove+0x51>
c0037f96:	89 fa                	mov    %edi,%edx
c0037f98:	89 cb                	mov    %ecx,%ebx
c0037f9a:	83 e2 03             	and    $0x3,%edx
c0037f9d:	74 0c                	je     c0037fab <memmove+0x3b>
c0037f9f:	89 d1                	mov    %edx,%ecx
c0037fa1:	4e                   	dec    %esi
c0037fa2:	4f                   	dec    %edi
c0037fa3:	29 cb                	sub    %ecx,%ebx
c0037fa5:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fa7:	89 d9                	mov    %ebx,%ecx
c0037fa9:	46                   	inc    %esi
c0037faa:	47                   	inc    %edi
c0037fab:	c1 e9 02             	shr    $0x2,%ecx
c0037fae:	83 ee 04             	sub    $0x4,%esi
c0037fb1:	83 ef 04             	sub    $0x4,%edi
c0037fb4:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037fb6:	83 c6 04             	add    $0x4,%esi
c0037fb9:	83 c7 04             	add    $0x4,%edi
c0037fbc:	89 d9                	mov    %ebx,%ecx
c0037fbe:	83 e1 03             	and    $0x3,%ecx
c0037fc1:	4e                   	dec    %esi
c0037fc2:	4f                   	dec    %edi
c0037fc3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fc5:	eb 2a                	jmp    c0037ff1 <memmove+0x81>
c0037fc7:	83 f9 08             	cmp    $0x8,%ecx
c0037fca:	76 23                	jbe    c0037fef <memmove+0x7f>
c0037fcc:	89 fa                	mov    %edi,%edx
c0037fce:	89 cb                	mov    %ecx,%ebx
c0037fd0:	83 e2 03             	and    $0x3,%edx
c0037fd3:	74 10                	je     c0037fe5 <memmove+0x75>
c0037fd5:	b9 04 00 00 00       	mov    $0x4,%ecx
c0037fda:	29 d1                	sub    %edx,%ecx
c0037fdc:	83 e1 03             	and    $0x3,%ecx
c0037fdf:	29 cb                	sub    %ecx,%ebx
c0037fe1:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fe3:	89 d9                	mov    %ebx,%ecx
c0037fe5:	c1 e9 02             	shr    $0x2,%ecx
c0037fe8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037fea:	89 d9                	mov    %ebx,%ecx
c0037fec:	83 e1 03             	and    $0x3,%ecx
c0037fef:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037ff1:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ff4:	fc                   	cld    
c0037ff5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0037ff8:	5b                   	pop    %ebx
c0037ff9:	5f                   	pop    %edi
c0037ffa:	5e                   	pop    %esi
c0037ffb:	c9                   	leave  
c0037ffc:	c3                   	ret    
c0037ffd:	66 90                	xchg   %ax,%ax
c0037fff:	90                   	nop

c0038000 <_realloc_r>:
c0038000:	55                   	push   %ebp
c0038001:	89 e5                	mov    %esp,%ebp
c0038003:	57                   	push   %edi
c0038004:	56                   	push   %esi
c0038005:	53                   	push   %ebx
c0038006:	83 ec 3c             	sub    $0x3c,%esp
c0038009:	8b 45 08             	mov    0x8(%ebp),%eax
c003800c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003800f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0038012:	8b 45 10             	mov    0x10(%ebp),%eax
c0038015:	85 ff                	test   %edi,%edi
c0038017:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003801a:	0f 84 50 02 00 00    	je     c0038270 <_realloc_r+0x270>
c0038020:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038023:	8d 77 f8             	lea    -0x8(%edi),%esi
c0038026:	89 04 24             	mov    %eax,(%esp)
c0038029:	e8 82 db ff ff       	call   c0035bb0 <__malloc_lock>
c003802e:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038031:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038034:	89 c3                	mov    %eax,%ebx
c0038036:	8d 51 0b             	lea    0xb(%ecx),%edx
c0038039:	83 e3 fc             	and    $0xfffffffc,%ebx
c003803c:	83 fa 16             	cmp    $0x16,%edx
c003803f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038042:	0f 87 00 01 00 00    	ja     c0038148 <_realloc_r+0x148>
c0038048:	31 d2                	xor    %edx,%edx
c003804a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0038051:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0038058:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003805b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c003805e:	0f 82 1c 02 00 00    	jb     c0038280 <_realloc_r+0x280>
c0038064:	84 d2                	test   %dl,%dl
c0038066:	0f 85 14 02 00 00    	jne    c0038280 <_realloc_r+0x280>
c003806c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003806f:	0f 8d eb 00 00 00    	jge    c0038160 <_realloc_r+0x160>
c0038075:	8b 0d 48 d5 03 c0    	mov    0xc003d548,%ecx
c003807b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003807e:	39 d1                	cmp    %edx,%ecx
c0038080:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038083:	0f 84 6f 02 00 00    	je     c00382f8 <_realloc_r+0x2f8>
c0038089:	8b 4a 04             	mov    0x4(%edx),%ecx
c003808c:	89 c8                	mov    %ecx,%eax
c003808e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038091:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038096:	0f 84 f4 00 00 00    	je     c0038190 <_realloc_r+0x190>
c003809c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c00380a3:	31 d2                	xor    %edx,%edx
c00380a5:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c00380a9:	0f 85 39 01 00 00    	jne    c00381e8 <_realloc_r+0x1e8>
c00380af:	89 f1                	mov    %esi,%ecx
c00380b1:	2b 4f f8             	sub    -0x8(%edi),%ecx
c00380b4:	8b 41 04             	mov    0x4(%ecx),%eax
c00380b7:	83 e0 fc             	and    $0xfffffffc,%eax
c00380ba:	85 d2                	test   %edx,%edx
c00380bc:	0f 84 f6 02 00 00    	je     c00383b8 <_realloc_r+0x3b8>
c00380c2:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c00380c5:	0f 84 f5 02 00 00    	je     c00383c0 <_realloc_r+0x3c0>
c00380cb:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00380ce:	8b 55 d0             	mov    -0x30(%ebp),%edx
c00380d1:	01 d8                	add    %ebx,%eax
c00380d3:	01 c2                	add    %eax,%edx
c00380d5:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00380d8:	89 55 d0             	mov    %edx,-0x30(%ebp)
c00380db:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00380de:	0f 8c ac 01 00 00    	jl     c0038290 <_realloc_r+0x290>
c00380e4:	8b 42 0c             	mov    0xc(%edx),%eax
c00380e7:	83 eb 04             	sub    $0x4,%ebx
c00380ea:	8b 52 08             	mov    0x8(%edx),%edx
c00380ed:	83 fb 24             	cmp    $0x24,%ebx
c00380f0:	8d 71 08             	lea    0x8(%ecx),%esi
c00380f3:	89 42 0c             	mov    %eax,0xc(%edx)
c00380f6:	89 50 08             	mov    %edx,0x8(%eax)
c00380f9:	8b 41 0c             	mov    0xc(%ecx),%eax
c00380fc:	8b 51 08             	mov    0x8(%ecx),%edx
c00380ff:	89 42 0c             	mov    %eax,0xc(%edx)
c0038102:	89 50 08             	mov    %edx,0x8(%eax)
c0038105:	0f 87 85 03 00 00    	ja     c0038490 <_realloc_r+0x490>
c003810b:	83 fb 13             	cmp    $0x13,%ebx
c003810e:	89 f0                	mov    %esi,%eax
c0038110:	76 1a                	jbe    c003812c <_realloc_r+0x12c>
c0038112:	8b 07                	mov    (%edi),%eax
c0038114:	83 fb 1b             	cmp    $0x1b,%ebx
c0038117:	89 41 08             	mov    %eax,0x8(%ecx)
c003811a:	8b 47 04             	mov    0x4(%edi),%eax
c003811d:	89 41 0c             	mov    %eax,0xc(%ecx)
c0038120:	0f 87 8f 03 00 00    	ja     c00384b5 <_realloc_r+0x4b5>
c0038126:	8d 41 10             	lea    0x10(%ecx),%eax
c0038129:	83 c7 08             	add    $0x8,%edi
c003812c:	8b 17                	mov    (%edi),%edx
c003812e:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038131:	89 10                	mov    %edx,(%eax)
c0038133:	8b 57 04             	mov    0x4(%edi),%edx
c0038136:	89 50 04             	mov    %edx,0x4(%eax)
c0038139:	8b 57 08             	mov    0x8(%edi),%edx
c003813c:	89 f7                	mov    %esi,%edi
c003813e:	89 ce                	mov    %ecx,%esi
c0038140:	89 50 08             	mov    %edx,0x8(%eax)
c0038143:	8b 41 04             	mov    0x4(%ecx),%eax
c0038146:	eb 1b                	jmp    c0038163 <_realloc_r+0x163>
c0038148:	83 e2 f8             	and    $0xfffffff8,%edx
c003814b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c003814e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038151:	c1 ea 1f             	shr    $0x1f,%edx
c0038154:	e9 ff fe ff ff       	jmp    c0038058 <_realloc_r+0x58>
c0038159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038160:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038163:	89 da                	mov    %ebx,%edx
c0038165:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038168:	83 fa 0f             	cmp    $0xf,%edx
c003816b:	77 4b                	ja     c00381b8 <_realloc_r+0x1b8>
c003816d:	83 e0 01             	and    $0x1,%eax
c0038170:	09 d8                	or     %ebx,%eax
c0038172:	89 46 04             	mov    %eax,0x4(%esi)
c0038175:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003817a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003817d:	89 04 24             	mov    %eax,(%esp)
c0038180:	e8 3b da ff ff       	call   c0035bc0 <__malloc_unlock>
c0038185:	89 f8                	mov    %edi,%eax
c0038187:	83 c4 3c             	add    $0x3c,%esp
c003818a:	5b                   	pop    %ebx
c003818b:	5e                   	pop    %esi
c003818c:	5f                   	pop    %edi
c003818d:	5d                   	pop    %ebp
c003818e:	c3                   	ret    
c003818f:	90                   	nop
c0038190:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038193:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038196:	01 d9                	add    %ebx,%ecx
c0038198:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003819b:	0f 8c 04 ff ff ff    	jl     c00380a5 <_realloc_r+0xa5>
c00381a1:	8b 5a 0c             	mov    0xc(%edx),%ebx
c00381a4:	8b 52 08             	mov    0x8(%edx),%edx
c00381a7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00381aa:	89 5a 0c             	mov    %ebx,0xc(%edx)
c00381ad:	89 53 08             	mov    %edx,0x8(%ebx)
c00381b0:	89 cb                	mov    %ecx,%ebx
c00381b2:	eb af                	jmp    c0038163 <_realloc_r+0x163>
c00381b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00381b8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00381bb:	83 e0 01             	and    $0x1,%eax
c00381be:	09 d8                	or     %ebx,%eax
c00381c0:	89 46 04             	mov    %eax,0x4(%esi)
c00381c3:	89 d0                	mov    %edx,%eax
c00381c5:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c00381c8:	83 c8 01             	or     $0x1,%eax
c00381cb:	89 41 04             	mov    %eax,0x4(%ecx)
c00381ce:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381d1:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c00381d6:	83 c1 08             	add    $0x8,%ecx
c00381d9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00381dd:	89 04 24             	mov    %eax,(%esp)
c00381e0:	e8 2b fb ff ff       	call   c0037d10 <_free_r>
c00381e5:	eb 93                	jmp    c003817a <_realloc_r+0x17a>
c00381e7:	90                   	nop
c00381e8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00381eb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00381ef:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381f2:	89 04 24             	mov    %eax,(%esp)
c00381f5:	e8 d6 d1 ff ff       	call   c00353d0 <_malloc_r>
c00381fa:	85 c0                	test   %eax,%eax
c00381fc:	89 c1                	mov    %eax,%ecx
c00381fe:	0f 84 65 03 00 00    	je     c0038569 <_realloc_r+0x569>
c0038204:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038207:	8d 51 f8             	lea    -0x8(%ecx),%edx
c003820a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c003820d:	89 c2                	mov    %eax,%edx
c003820f:	83 e2 fe             	and    $0xfffffffe,%edx
c0038212:	01 f2                	add    %esi,%edx
c0038214:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0038217:	0f 84 63 02 00 00    	je     c0038480 <_realloc_r+0x480>
c003821d:	83 eb 04             	sub    $0x4,%ebx
c0038220:	83 fb 24             	cmp    $0x24,%ebx
c0038223:	0f 87 6f 01 00 00    	ja     c0038398 <_realloc_r+0x398>
c0038229:	83 fb 13             	cmp    $0x13,%ebx
c003822c:	0f 87 ee 00 00 00    	ja     c0038320 <_realloc_r+0x320>
c0038232:	89 c8                	mov    %ecx,%eax
c0038234:	89 fa                	mov    %edi,%edx
c0038236:	8b 1a                	mov    (%edx),%ebx
c0038238:	89 18                	mov    %ebx,(%eax)
c003823a:	8b 5a 04             	mov    0x4(%edx),%ebx
c003823d:	89 58 04             	mov    %ebx,0x4(%eax)
c0038240:	8b 52 08             	mov    0x8(%edx),%edx
c0038243:	89 50 08             	mov    %edx,0x8(%eax)
c0038246:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0038249:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003824d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038250:	89 34 24             	mov    %esi,(%esp)
c0038253:	e8 b8 fa ff ff       	call   c0037d10 <_free_r>
c0038258:	89 34 24             	mov    %esi,(%esp)
c003825b:	e8 60 d9 ff ff       	call   c0035bc0 <__malloc_unlock>
c0038260:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038263:	83 c4 3c             	add    $0x3c,%esp
c0038266:	5b                   	pop    %ebx
c0038267:	5e                   	pop    %esi
c0038268:	5f                   	pop    %edi
c0038269:	89 c8                	mov    %ecx,%eax
c003826b:	5d                   	pop    %ebp
c003826c:	c3                   	ret    
c003826d:	8d 76 00             	lea    0x0(%esi),%esi
c0038270:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038273:	83 c4 3c             	add    $0x3c,%esp
c0038276:	5b                   	pop    %ebx
c0038277:	5e                   	pop    %esi
c0038278:	5f                   	pop    %edi
c0038279:	5d                   	pop    %ebp
c003827a:	e9 51 d1 ff ff       	jmp    c00353d0 <_malloc_r>
c003827f:	90                   	nop
c0038280:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038283:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038289:	31 c0                	xor    %eax,%eax
c003828b:	e9 f7 fe ff ff       	jmp    c0038187 <_realloc_r+0x187>
c0038290:	89 c2                	mov    %eax,%edx
c0038292:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038295:	0f 8c 4d ff ff ff    	jl     c00381e8 <_realloc_r+0x1e8>
c003829b:	8b 71 08             	mov    0x8(%ecx),%esi
c003829e:	83 eb 04             	sub    $0x4,%ebx
c00382a1:	8b 41 0c             	mov    0xc(%ecx),%eax
c00382a4:	83 fb 24             	cmp    $0x24,%ebx
c00382a7:	89 46 0c             	mov    %eax,0xc(%esi)
c00382aa:	89 70 08             	mov    %esi,0x8(%eax)
c00382ad:	8d 71 08             	lea    0x8(%ecx),%esi
c00382b0:	0f 87 88 00 00 00    	ja     c003833e <_realloc_r+0x33e>
c00382b6:	83 fb 13             	cmp    $0x13,%ebx
c00382b9:	89 f0                	mov    %esi,%eax
c00382bb:	76 1a                	jbe    c00382d7 <_realloc_r+0x2d7>
c00382bd:	8b 07                	mov    (%edi),%eax
c00382bf:	83 fb 1b             	cmp    $0x1b,%ebx
c00382c2:	89 41 08             	mov    %eax,0x8(%ecx)
c00382c5:	8b 47 04             	mov    0x4(%edi),%eax
c00382c8:	89 41 0c             	mov    %eax,0xc(%ecx)
c00382cb:	0f 87 17 02 00 00    	ja     c00384e8 <_realloc_r+0x4e8>
c00382d1:	8d 41 10             	lea    0x10(%ecx),%eax
c00382d4:	83 c7 08             	add    $0x8,%edi
c00382d7:	8b 1f                	mov    (%edi),%ebx
c00382d9:	89 18                	mov    %ebx,(%eax)
c00382db:	8b 5f 04             	mov    0x4(%edi),%ebx
c00382de:	89 58 04             	mov    %ebx,0x4(%eax)
c00382e1:	8b 5f 08             	mov    0x8(%edi),%ebx
c00382e4:	89 f7                	mov    %esi,%edi
c00382e6:	89 ce                	mov    %ecx,%esi
c00382e8:	89 58 08             	mov    %ebx,0x8(%eax)
c00382eb:	89 d3                	mov    %edx,%ebx
c00382ed:	8b 41 04             	mov    0x4(%ecx),%eax
c00382f0:	e9 6e fe ff ff       	jmp    c0038163 <_realloc_r+0x163>
c00382f5:	8d 76 00             	lea    0x0(%esi),%esi
c00382f8:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00382fb:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00382fe:	8b 48 04             	mov    0x4(%eax),%ecx
c0038301:	83 c2 10             	add    $0x10,%edx
c0038304:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038307:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c003830b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c003830e:	01 d9                	add    %ebx,%ecx
c0038310:	39 d1                	cmp    %edx,%ecx
c0038312:	7d 54                	jge    c0038368 <_realloc_r+0x368>
c0038314:	89 c2                	mov    %eax,%edx
c0038316:	e9 8a fd ff ff       	jmp    c00380a5 <_realloc_r+0xa5>
c003831b:	90                   	nop
c003831c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038320:	8b 07                	mov    (%edi),%eax
c0038322:	83 fb 1b             	cmp    $0x1b,%ebx
c0038325:	89 01                	mov    %eax,(%ecx)
c0038327:	8b 47 04             	mov    0x4(%edi),%eax
c003832a:	89 41 04             	mov    %eax,0x4(%ecx)
c003832d:	0f 87 2d 01 00 00    	ja     c0038460 <_realloc_r+0x460>
c0038333:	8d 41 08             	lea    0x8(%ecx),%eax
c0038336:	8d 57 08             	lea    0x8(%edi),%edx
c0038339:	e9 f8 fe ff ff       	jmp    c0038236 <_realloc_r+0x236>
c003833e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038342:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038346:	89 f7                	mov    %esi,%edi
c0038348:	89 34 24             	mov    %esi,(%esp)
c003834b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c003834e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038351:	e8 1a fc ff ff       	call   c0037f70 <memmove>
c0038356:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038359:	8b 55 d8             	mov    -0x28(%ebp),%edx
c003835c:	8b 41 04             	mov    0x4(%ecx),%eax
c003835f:	89 ce                	mov    %ecx,%esi
c0038361:	89 d3                	mov    %edx,%ebx
c0038363:	e9 fb fd ff ff       	jmp    c0038163 <_realloc_r+0x163>
c0038368:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003836b:	29 d9                	sub    %ebx,%ecx
c003836d:	01 de                	add    %ebx,%esi
c003836f:	83 c9 01             	or     $0x1,%ecx
c0038372:	89 35 48 d5 03 c0    	mov    %esi,0xc003d548
c0038378:	89 4e 04             	mov    %ecx,0x4(%esi)
c003837b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003837e:	83 e0 01             	and    $0x1,%eax
c0038381:	09 d8                	or     %ebx,%eax
c0038383:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038386:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038389:	89 04 24             	mov    %eax,(%esp)
c003838c:	e8 2f d8 ff ff       	call   c0035bc0 <__malloc_unlock>
c0038391:	89 f8                	mov    %edi,%eax
c0038393:	e9 ef fd ff ff       	jmp    c0038187 <_realloc_r+0x187>
c0038398:	89 0c 24             	mov    %ecx,(%esp)
c003839b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003839f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00383a3:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00383a6:	e8 c5 fb ff ff       	call   c0037f70 <memmove>
c00383ab:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00383ae:	e9 93 fe ff ff       	jmp    c0038246 <_realloc_r+0x246>
c00383b3:	90                   	nop
c00383b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00383b8:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c00383bb:	e9 d2 fe ff ff       	jmp    c0038292 <_realloc_r+0x292>
c00383c0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c00383c3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00383c6:	01 d0                	add    %edx,%eax
c00383c8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00383cb:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00383ce:	83 c0 10             	add    $0x10,%eax
c00383d1:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c00383d4:	0f 8c b8 fe ff ff    	jl     c0038292 <_realloc_r+0x292>
c00383da:	8b 41 0c             	mov    0xc(%ecx),%eax
c00383dd:	83 eb 04             	sub    $0x4,%ebx
c00383e0:	8b 51 08             	mov    0x8(%ecx),%edx
c00383e3:	83 fb 24             	cmp    $0x24,%ebx
c00383e6:	8d 71 08             	lea    0x8(%ecx),%esi
c00383e9:	89 42 0c             	mov    %eax,0xc(%edx)
c00383ec:	89 50 08             	mov    %edx,0x8(%eax)
c00383ef:	0f 87 3d 01 00 00    	ja     c0038532 <_realloc_r+0x532>
c00383f5:	83 fb 13             	cmp    $0x13,%ebx
c00383f8:	89 f0                	mov    %esi,%eax
c00383fa:	76 1a                	jbe    c0038416 <_realloc_r+0x416>
c00383fc:	8b 07                	mov    (%edi),%eax
c00383fe:	83 fb 1b             	cmp    $0x1b,%ebx
c0038401:	89 41 08             	mov    %eax,0x8(%ecx)
c0038404:	8b 47 04             	mov    0x4(%edi),%eax
c0038407:	89 41 0c             	mov    %eax,0xc(%ecx)
c003840a:	0f 87 3d 01 00 00    	ja     c003854d <_realloc_r+0x54d>
c0038410:	8d 41 10             	lea    0x10(%ecx),%eax
c0038413:	83 c7 08             	add    $0x8,%edi
c0038416:	8b 17                	mov    (%edi),%edx
c0038418:	89 10                	mov    %edx,(%eax)
c003841a:	8b 57 04             	mov    0x4(%edi),%edx
c003841d:	89 50 04             	mov    %edx,0x4(%eax)
c0038420:	8b 57 08             	mov    0x8(%edi),%edx
c0038423:	89 50 08             	mov    %edx,0x8(%eax)
c0038426:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0038429:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c003842c:	89 d8                	mov    %ebx,%eax
c003842e:	29 df                	sub    %ebx,%edi
c0038430:	01 c8                	add    %ecx,%eax
c0038432:	83 cf 01             	or     $0x1,%edi
c0038435:	a3 48 d5 03 c0       	mov    %eax,0xc003d548
c003843a:	89 78 04             	mov    %edi,0x4(%eax)
c003843d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038440:	83 e0 01             	and    $0x1,%eax
c0038443:	09 d8                	or     %ebx,%eax
c0038445:	89 41 04             	mov    %eax,0x4(%ecx)
c0038448:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003844b:	89 04 24             	mov    %eax,(%esp)
c003844e:	e8 6d d7 ff ff       	call   c0035bc0 <__malloc_unlock>
c0038453:	89 f0                	mov    %esi,%eax
c0038455:	e9 2d fd ff ff       	jmp    c0038187 <_realloc_r+0x187>
c003845a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038460:	8b 47 08             	mov    0x8(%edi),%eax
c0038463:	83 fb 24             	cmp    $0x24,%ebx
c0038466:	89 41 08             	mov    %eax,0x8(%ecx)
c0038469:	8b 47 0c             	mov    0xc(%edi),%eax
c003846c:	89 41 0c             	mov    %eax,0xc(%ecx)
c003846f:	74 60                	je     c00384d1 <_realloc_r+0x4d1>
c0038471:	8d 41 10             	lea    0x10(%ecx),%eax
c0038474:	8d 57 10             	lea    0x10(%edi),%edx
c0038477:	e9 ba fd ff ff       	jmp    c0038236 <_realloc_r+0x236>
c003847c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038480:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038483:	83 e2 fc             	and    $0xfffffffc,%edx
c0038486:	01 d3                	add    %edx,%ebx
c0038488:	e9 d6 fc ff ff       	jmp    c0038163 <_realloc_r+0x163>
c003848d:	8d 76 00             	lea    0x0(%esi),%esi
c0038490:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038494:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038498:	89 f7                	mov    %esi,%edi
c003849a:	89 34 24             	mov    %esi,(%esp)
c003849d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00384a0:	e8 cb fa ff ff       	call   c0037f70 <memmove>
c00384a5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00384a8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00384ab:	8b 41 04             	mov    0x4(%ecx),%eax
c00384ae:	89 ce                	mov    %ecx,%esi
c00384b0:	e9 ae fc ff ff       	jmp    c0038163 <_realloc_r+0x163>
c00384b5:	8b 47 08             	mov    0x8(%edi),%eax
c00384b8:	83 fb 24             	cmp    $0x24,%ebx
c00384bb:	89 41 10             	mov    %eax,0x10(%ecx)
c00384be:	8b 47 0c             	mov    0xc(%edi),%eax
c00384c1:	89 41 14             	mov    %eax,0x14(%ecx)
c00384c4:	74 3e                	je     c0038504 <_realloc_r+0x504>
c00384c6:	8d 41 18             	lea    0x18(%ecx),%eax
c00384c9:	83 c7 10             	add    $0x10,%edi
c00384cc:	e9 5b fc ff ff       	jmp    c003812c <_realloc_r+0x12c>
c00384d1:	8b 47 10             	mov    0x10(%edi),%eax
c00384d4:	8d 57 18             	lea    0x18(%edi),%edx
c00384d7:	89 41 10             	mov    %eax,0x10(%ecx)
c00384da:	8b 5f 14             	mov    0x14(%edi),%ebx
c00384dd:	8d 41 18             	lea    0x18(%ecx),%eax
c00384e0:	89 59 14             	mov    %ebx,0x14(%ecx)
c00384e3:	e9 4e fd ff ff       	jmp    c0038236 <_realloc_r+0x236>
c00384e8:	8b 47 08             	mov    0x8(%edi),%eax
c00384eb:	83 fb 24             	cmp    $0x24,%ebx
c00384ee:	89 41 10             	mov    %eax,0x10(%ecx)
c00384f1:	8b 47 0c             	mov    0xc(%edi),%eax
c00384f4:	89 41 14             	mov    %eax,0x14(%ecx)
c00384f7:	74 22                	je     c003851b <_realloc_r+0x51b>
c00384f9:	8d 41 18             	lea    0x18(%ecx),%eax
c00384fc:	83 c7 10             	add    $0x10,%edi
c00384ff:	e9 d3 fd ff ff       	jmp    c00382d7 <_realloc_r+0x2d7>
c0038504:	8b 47 10             	mov    0x10(%edi),%eax
c0038507:	83 c7 18             	add    $0x18,%edi
c003850a:	89 41 18             	mov    %eax,0x18(%ecx)
c003850d:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038510:	8d 41 20             	lea    0x20(%ecx),%eax
c0038513:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038516:	e9 11 fc ff ff       	jmp    c003812c <_realloc_r+0x12c>
c003851b:	8b 47 10             	mov    0x10(%edi),%eax
c003851e:	83 c7 18             	add    $0x18,%edi
c0038521:	89 41 18             	mov    %eax,0x18(%ecx)
c0038524:	8b 5f fc             	mov    -0x4(%edi),%ebx
c0038527:	8d 41 20             	lea    0x20(%ecx),%eax
c003852a:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c003852d:	e9 a5 fd ff ff       	jmp    c00382d7 <_realloc_r+0x2d7>
c0038532:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038536:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003853a:	89 34 24             	mov    %esi,(%esp)
c003853d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038540:	e8 2b fa ff ff       	call   c0037f70 <memmove>
c0038545:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038548:	e9 d9 fe ff ff       	jmp    c0038426 <_realloc_r+0x426>
c003854d:	8b 47 08             	mov    0x8(%edi),%eax
c0038550:	83 fb 24             	cmp    $0x24,%ebx
c0038553:	89 41 10             	mov    %eax,0x10(%ecx)
c0038556:	8b 47 0c             	mov    0xc(%edi),%eax
c0038559:	89 41 14             	mov    %eax,0x14(%ecx)
c003855c:	74 1d                	je     c003857b <_realloc_r+0x57b>
c003855e:	8d 41 18             	lea    0x18(%ecx),%eax
c0038561:	83 c7 10             	add    $0x10,%edi
c0038564:	e9 ad fe ff ff       	jmp    c0038416 <_realloc_r+0x416>
c0038569:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003856c:	89 04 24             	mov    %eax,(%esp)
c003856f:	e8 4c d6 ff ff       	call   c0035bc0 <__malloc_unlock>
c0038574:	31 c0                	xor    %eax,%eax
c0038576:	e9 0c fc ff ff       	jmp    c0038187 <_realloc_r+0x187>
c003857b:	8b 47 10             	mov    0x10(%edi),%eax
c003857e:	83 c7 18             	add    $0x18,%edi
c0038581:	89 41 18             	mov    %eax,0x18(%ecx)
c0038584:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038587:	8d 41 20             	lea    0x20(%ecx),%eax
c003858a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003858d:	e9 84 fe ff ff       	jmp    c0038416 <_realloc_r+0x416>
c0038592:	66 90                	xchg   %ax,%ax
c0038594:	66 90                	xchg   %ax,%ax
c0038596:	66 90                	xchg   %ax,%ax
c0038598:	66 90                	xchg   %ax,%ax
c003859a:	66 90                	xchg   %ax,%ax
c003859c:	66 90                	xchg   %ax,%ax
c003859e:	66 90                	xchg   %ax,%ax

c00385a0 <cleanup_glue>:
c00385a0:	55                   	push   %ebp
c00385a1:	89 e5                	mov    %esp,%ebp
c00385a3:	56                   	push   %esi
c00385a4:	53                   	push   %ebx
c00385a5:	83 ec 10             	sub    $0x10,%esp
c00385a8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00385ab:	8b 75 08             	mov    0x8(%ebp),%esi
c00385ae:	8b 03                	mov    (%ebx),%eax
c00385b0:	85 c0                	test   %eax,%eax
c00385b2:	74 0c                	je     c00385c0 <cleanup_glue+0x20>
c00385b4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385b8:	89 34 24             	mov    %esi,(%esp)
c00385bb:	e8 e0 ff ff ff       	call   c00385a0 <cleanup_glue>
c00385c0:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c00385c3:	89 75 08             	mov    %esi,0x8(%ebp)
c00385c6:	83 c4 10             	add    $0x10,%esp
c00385c9:	5b                   	pop    %ebx
c00385ca:	5e                   	pop    %esi
c00385cb:	5d                   	pop    %ebp
c00385cc:	e9 3f f7 ff ff       	jmp    c0037d10 <_free_r>
c00385d1:	eb 0d                	jmp    c00385e0 <_reclaim_reent>
c00385d3:	90                   	nop
c00385d4:	90                   	nop
c00385d5:	90                   	nop
c00385d6:	90                   	nop
c00385d7:	90                   	nop
c00385d8:	90                   	nop
c00385d9:	90                   	nop
c00385da:	90                   	nop
c00385db:	90                   	nop
c00385dc:	90                   	nop
c00385dd:	90                   	nop
c00385de:	90                   	nop
c00385df:	90                   	nop

c00385e0 <_reclaim_reent>:
c00385e0:	55                   	push   %ebp
c00385e1:	89 e5                	mov    %esp,%ebp
c00385e3:	57                   	push   %edi
c00385e4:	56                   	push   %esi
c00385e5:	53                   	push   %ebx
c00385e6:	83 ec 1c             	sub    $0x1c,%esp
c00385e9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00385ec:	3b 1d 40 d0 03 c0    	cmp    0xc003d040,%ebx
c00385f2:	0f 84 a6 00 00 00    	je     c003869e <_reclaim_reent+0xbe>
c00385f8:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385fb:	85 d2                	test   %edx,%edx
c00385fd:	74 46                	je     c0038645 <_reclaim_reent+0x65>
c00385ff:	31 c0                	xor    %eax,%eax
c0038601:	31 f6                	xor    %esi,%esi
c0038603:	90                   	nop
c0038604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038608:	8b 04 82             	mov    (%edx,%eax,4),%eax
c003860b:	85 c0                	test   %eax,%eax
c003860d:	75 0b                	jne    c003861a <_reclaim_reent+0x3a>
c003860f:	eb 1e                	jmp    c003862f <_reclaim_reent+0x4f>
c0038611:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038618:	89 f8                	mov    %edi,%eax
c003861a:	8b 38                	mov    (%eax),%edi
c003861c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038620:	89 1c 24             	mov    %ebx,(%esp)
c0038623:	e8 e8 f6 ff ff       	call   c0037d10 <_free_r>
c0038628:	85 ff                	test   %edi,%edi
c003862a:	75 ec                	jne    c0038618 <_reclaim_reent+0x38>
c003862c:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003862f:	83 c6 01             	add    $0x1,%esi
c0038632:	83 fe 20             	cmp    $0x20,%esi
c0038635:	89 f0                	mov    %esi,%eax
c0038637:	75 cf                	jne    c0038608 <_reclaim_reent+0x28>
c0038639:	89 54 24 04          	mov    %edx,0x4(%esp)
c003863d:	89 1c 24             	mov    %ebx,(%esp)
c0038640:	e8 cb f6 ff ff       	call   c0037d10 <_free_r>
c0038645:	8b 43 40             	mov    0x40(%ebx),%eax
c0038648:	85 c0                	test   %eax,%eax
c003864a:	74 0c                	je     c0038658 <_reclaim_reent+0x78>
c003864c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038650:	89 1c 24             	mov    %ebx,(%esp)
c0038653:	e8 b8 f6 ff ff       	call   c0037d10 <_free_r>
c0038658:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c003865e:	85 c0                	test   %eax,%eax
c0038660:	74 22                	je     c0038684 <_reclaim_reent+0xa4>
c0038662:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038668:	39 f0                	cmp    %esi,%eax
c003866a:	75 06                	jne    c0038672 <_reclaim_reent+0x92>
c003866c:	eb 16                	jmp    c0038684 <_reclaim_reent+0xa4>
c003866e:	66 90                	xchg   %ax,%ax
c0038670:	89 f8                	mov    %edi,%eax
c0038672:	8b 38                	mov    (%eax),%edi
c0038674:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038678:	89 1c 24             	mov    %ebx,(%esp)
c003867b:	e8 90 f6 ff ff       	call   c0037d10 <_free_r>
c0038680:	39 fe                	cmp    %edi,%esi
c0038682:	75 ec                	jne    c0038670 <_reclaim_reent+0x90>
c0038684:	8b 43 54             	mov    0x54(%ebx),%eax
c0038687:	85 c0                	test   %eax,%eax
c0038689:	74 0c                	je     c0038697 <_reclaim_reent+0xb7>
c003868b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003868f:	89 1c 24             	mov    %ebx,(%esp)
c0038692:	e8 79 f6 ff ff       	call   c0037d10 <_free_r>
c0038697:	8b 43 38             	mov    0x38(%ebx),%eax
c003869a:	85 c0                	test   %eax,%eax
c003869c:	75 08                	jne    c00386a6 <_reclaim_reent+0xc6>
c003869e:	83 c4 1c             	add    $0x1c,%esp
c00386a1:	5b                   	pop    %ebx
c00386a2:	5e                   	pop    %esi
c00386a3:	5f                   	pop    %edi
c00386a4:	5d                   	pop    %ebp
c00386a5:	c3                   	ret    
c00386a6:	89 1c 24             	mov    %ebx,(%esp)
c00386a9:	ff 53 3c             	call   *0x3c(%ebx)
c00386ac:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c00386b2:	85 c0                	test   %eax,%eax
c00386b4:	74 e8                	je     c003869e <_reclaim_reent+0xbe>
c00386b6:	89 1c 24             	mov    %ebx,(%esp)
c00386b9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00386bd:	e8 de fe ff ff       	call   c00385a0 <cleanup_glue>
c00386c2:	83 c4 1c             	add    $0x1c,%esp
c00386c5:	5b                   	pop    %ebx
c00386c6:	5e                   	pop    %esi
c00386c7:	5f                   	pop    %edi
c00386c8:	5d                   	pop    %ebp
c00386c9:	c3                   	ret    
