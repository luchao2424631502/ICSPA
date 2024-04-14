
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
c0030903:	e8 48 12 00 00       	call   c0031b50 <mm_malloc>
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
c0030928:	e8 b7 14 00 00       	call   c0031de4 <memcpy>
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
c0030963:	e8 c4 14 00 00       	call   c0031e2c <memset>
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
c00309ec:	e8 5f 11 00 00       	call   c0031b50 <mm_malloc>
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
c0030b0e:	e8 3d 14 00 00       	call   c0031f50 <vsnprintf>
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
c00316a7:	e8 a4 04 00 00       	call   c0031b50 <mm_malloc>
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
c00316e9:	e8 3e 07 00 00       	call   c0031e2c <memset>
c00316ee:	83 c4 10             	add    $0x10,%esp
c00316f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00316f4:	05 00 0c 00 00       	add    $0xc00,%eax
c00316f9:	83 ec 04             	sub    $0x4,%esp
c00316fc:	68 80 00 00 00       	push   $0x80
c0031701:	50                   	push   %eax
c0031702:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031708:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c003170e:	50                   	push   %eax
c003170f:	e8 d0 06 00 00       	call   c0031de4 <memcpy>
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
c0031855:	e8 d2 05 00 00       	call   c0031e2c <memset>
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
c0031901:	e8 77 e9 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0031906:	05 fa b6 00 00       	add    $0xb6fa,%eax
c003190b:	c7 c2 00 40 07 c0    	mov    $0xc0074000,%edx
c0031911:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031917:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003191a:	c7 c2 00 50 07 c0    	mov    $0xc0075000,%edx
c0031920:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0031926:	89 55 f4             	mov    %edx,-0xc(%ebp)
c0031929:	83 ec 04             	sub    $0x4,%esp
c003192c:	68 00 10 00 00       	push   $0x1000
c0031931:	6a 00                	push   $0x0
c0031933:	ff 75 e4             	pushl  -0x1c(%ebp)
c0031936:	89 c3                	mov    %eax,%ebx
c0031938:	e8 ef 04 00 00       	call   c0031e2c <memset>
c003193d:	83 c4 10             	add    $0x10,%esp
c0031940:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031947:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c003194e:	eb 70                	jmp    c00319c0 <init_page+0xc6>
c0031950:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031953:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031958:	89 c2                	mov    %eax,%edx
c003195a:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003195d:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031964:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031967:	01 c8                	add    %ecx,%eax
c0031969:	83 ca 07             	or     $0x7,%edx
c003196c:	89 10                	mov    %edx,(%eax)
c003196e:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031971:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031976:	89 c2                	mov    %eax,%edx
c0031978:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003197b:	05 00 03 00 00       	add    $0x300,%eax
c0031980:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
c0031987:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003198a:	01 c8                	add    %ecx,%eax
c003198c:	83 ca 07             	or     $0x7,%edx
c003198f:	89 10                	mov    %edx,(%eax)
c0031991:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0031998:	eb 1a                	jmp    c00319b4 <init_page+0xba>
c003199a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c003199d:	c1 e0 0c             	shl    $0xc,%eax
c00319a0:	83 c8 07             	or     $0x7,%eax
c00319a3:	89 c2                	mov    %eax,%edx
c00319a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00319a8:	89 10                	mov    %edx,(%eax)
c00319aa:	ff 45 e8             	incl   -0x18(%ebp)
c00319ad:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c00319b1:	ff 45 ec             	incl   -0x14(%ebp)
c00319b4:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c00319bb:	76 dd                	jbe    c003199a <init_page+0xa0>
c00319bd:	ff 45 f0             	incl   -0x10(%ebp)
c00319c0:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c00319c4:	76 8a                	jbe    c0031950 <init_page+0x56>
c00319c6:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c00319cd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00319d0:	c1 e8 0c             	shr    $0xc,%eax
c00319d3:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00319d8:	c1 e0 0c             	shl    $0xc,%eax
c00319db:	89 c2                	mov    %eax,%edx
c00319dd:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00319e0:	25 ff 0f 00 00       	and    $0xfff,%eax
c00319e5:	09 d0                	or     %edx,%eax
c00319e7:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00319ea:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00319ed:	83 ec 0c             	sub    $0xc,%esp
c00319f0:	50                   	push   %eax
c00319f1:	e8 9e fe ff ff       	call   c0031894 <write_cr3>
c00319f6:	83 c4 10             	add    $0x10,%esp
c00319f9:	e8 65 fe ff ff       	call   c0031863 <read_cr0>
c00319fe:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0031a01:	8a 45 e3             	mov    -0x1d(%ebp),%al
c0031a04:	83 c8 80             	or     $0xffffff80,%eax
c0031a07:	88 45 e3             	mov    %al,-0x1d(%ebp)
c0031a0a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031a0d:	83 ec 0c             	sub    $0xc,%esp
c0031a10:	50                   	push   %eax
c0031a11:	e8 68 fe ff ff       	call   c003187e <write_cr0>
c0031a16:	83 c4 10             	add    $0x10,%esp
c0031a19:	90                   	nop
c0031a1a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a1d:	c9                   	leave  
c0031a1e:	c3                   	ret    

c0031a1f <set_segment>:
c0031a1f:	55                   	push   %ebp
c0031a20:	89 e5                	mov    %esp,%ebp
c0031a22:	e8 56 e8 ff ff       	call   c003027d <__x86.get_pc_thunk.ax>
c0031a27:	05 d9 b5 00 00       	add    $0xb5d9,%eax
c0031a2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a2f:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c0031a34:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a37:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c0031a3d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a40:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0031a44:	8b 45 10             	mov    0x10(%ebp),%eax
c0031a47:	88 c2                	mov    %al,%dl
c0031a49:	83 e2 0f             	and    $0xf,%edx
c0031a4c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a4f:	88 d1                	mov    %dl,%cl
c0031a51:	83 e1 0f             	and    $0xf,%ecx
c0031a54:	8a 50 05             	mov    0x5(%eax),%dl
c0031a57:	83 e2 f0             	and    $0xfffffff0,%edx
c0031a5a:	09 ca                	or     %ecx,%edx
c0031a5c:	88 50 05             	mov    %dl,0x5(%eax)
c0031a5f:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a62:	8a 50 05             	mov    0x5(%eax),%dl
c0031a65:	83 ca 10             	or     $0x10,%edx
c0031a68:	88 50 05             	mov    %dl,0x5(%eax)
c0031a6b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031a6e:	88 c2                	mov    %al,%dl
c0031a70:	83 e2 03             	and    $0x3,%edx
c0031a73:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a76:	83 e2 03             	and    $0x3,%edx
c0031a79:	88 d1                	mov    %dl,%cl
c0031a7b:	c1 e1 05             	shl    $0x5,%ecx
c0031a7e:	8a 50 05             	mov    0x5(%eax),%dl
c0031a81:	83 e2 9f             	and    $0xffffff9f,%edx
c0031a84:	09 ca                	or     %ecx,%edx
c0031a86:	88 50 05             	mov    %dl,0x5(%eax)
c0031a89:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a8c:	8a 50 05             	mov    0x5(%eax),%dl
c0031a8f:	83 ca 80             	or     $0xffffff80,%edx
c0031a92:	88 50 05             	mov    %dl,0x5(%eax)
c0031a95:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a98:	8a 50 06             	mov    0x6(%eax),%dl
c0031a9b:	83 ca 0f             	or     $0xf,%edx
c0031a9e:	88 50 06             	mov    %dl,0x6(%eax)
c0031aa1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031aa4:	8a 50 06             	mov    0x6(%eax),%dl
c0031aa7:	83 e2 ef             	and    $0xffffffef,%edx
c0031aaa:	88 50 06             	mov    %dl,0x6(%eax)
c0031aad:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ab0:	8a 50 06             	mov    0x6(%eax),%dl
c0031ab3:	83 e2 df             	and    $0xffffffdf,%edx
c0031ab6:	88 50 06             	mov    %dl,0x6(%eax)
c0031ab9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031abc:	8a 50 06             	mov    0x6(%eax),%dl
c0031abf:	83 ca 40             	or     $0x40,%edx
c0031ac2:	88 50 06             	mov    %dl,0x6(%eax)
c0031ac5:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ac8:	8a 50 06             	mov    0x6(%eax),%dl
c0031acb:	83 ca 80             	or     $0xffffff80,%edx
c0031ace:	88 50 06             	mov    %dl,0x6(%eax)
c0031ad1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ad4:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0031ad8:	90                   	nop
c0031ad9:	5d                   	pop    %ebp
c0031ada:	c3                   	ret    

c0031adb <init_segment>:
c0031adb:	55                   	push   %ebp
c0031adc:	89 e5                	mov    %esp,%ebp
c0031ade:	53                   	push   %ebx
c0031adf:	83 ec 04             	sub    $0x4,%esp
c0031ae2:	e8 7b e6 ff ff       	call   c0030162 <__x86.get_pc_thunk.bx>
c0031ae7:	81 c3 19 b5 00 00    	add    $0xb519,%ebx
c0031aed:	83 ec 04             	sub    $0x4,%esp
c0031af0:	6a 18                	push   $0x18
c0031af2:	6a 00                	push   $0x0
c0031af4:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031afa:	50                   	push   %eax
c0031afb:	e8 2c 03 00 00       	call   c0031e2c <memset>
c0031b00:	83 c4 10             	add    $0x10,%esp
c0031b03:	83 ec 04             	sub    $0x4,%esp
c0031b06:	6a 0a                	push   $0xa
c0031b08:	6a 00                	push   $0x0
c0031b0a:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b10:	8d 40 08             	lea    0x8(%eax),%eax
c0031b13:	50                   	push   %eax
c0031b14:	e8 06 ff ff ff       	call   c0031a1f <set_segment>
c0031b19:	83 c4 10             	add    $0x10,%esp
c0031b1c:	83 ec 04             	sub    $0x4,%esp
c0031b1f:	6a 02                	push   $0x2
c0031b21:	6a 00                	push   $0x0
c0031b23:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b29:	8d 40 10             	lea    0x10(%eax),%eax
c0031b2c:	50                   	push   %eax
c0031b2d:	e8 ed fe ff ff       	call   c0031a1f <set_segment>
c0031b32:	83 c4 10             	add    $0x10,%esp
c0031b35:	83 ec 08             	sub    $0x8,%esp
c0031b38:	6a 18                	push   $0x18
c0031b3a:	c7 c0 00 30 07 c0    	mov    $0xc0073000,%eax
c0031b40:	50                   	push   %eax
c0031b41:	e8 64 fd ff ff       	call   c00318aa <write_gdtr>
c0031b46:	83 c4 10             	add    $0x10,%esp
c0031b49:	90                   	nop
c0031b4a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031b4d:	c9                   	leave  
c0031b4e:	c3                   	ret    
c0031b4f:	90                   	nop

c0031b50 <mm_malloc>:
c0031b50:	55                   	push   %ebp
c0031b51:	31 c0                	xor    %eax,%eax
c0031b53:	89 e5                	mov    %esp,%ebp
c0031b55:	57                   	push   %edi
c0031b56:	56                   	push   %esi
c0031b57:	53                   	push   %ebx
c0031b58:	83 ec 3c             	sub    $0x3c,%esp
c0031b5b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031b5e:	85 db                	test   %ebx,%ebx
c0031b60:	0f 8e 36 02 00 00    	jle    c0031d9c <mm_malloc+0x24c>
c0031b66:	e8 d9 fa ff ff       	call   c0031644 <get_updir>
c0031b6b:	89 c6                	mov    %eax,%esi
c0031b6d:	e8 e7 fa ff ff       	call   c0031659 <get_ucr3>
c0031b72:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b75:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031b79:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031b7c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031b7f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031b84:	29 d0                	sub    %edx,%eax
c0031b86:	89 da                	mov    %ebx,%edx
c0031b88:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031b8e:	01 d0                	add    %edx,%eax
c0031b90:	85 c0                	test   %eax,%eax
c0031b92:	0f 8e c0 00 00 00    	jle    c0031c58 <mm_malloc+0x108>
c0031b98:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b9b:	83 e8 01             	sub    $0x1,%eax
c0031b9e:	89 f7                	mov    %esi,%edi
c0031ba0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031ba5:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031bac:	89 d3                	mov    %edx,%ebx
c0031bae:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031bb1:	eb 51                	jmp    c0031c04 <mm_malloc+0xb4>
c0031bb3:	90                   	nop
c0031bb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031bb8:	8b 31                	mov    (%ecx),%esi
c0031bba:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031bc0:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031bc6:	89 d8                	mov    %ebx,%eax
c0031bc8:	c1 e8 0a             	shr    $0xa,%eax
c0031bcb:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031bd0:	01 c6                	add    %eax,%esi
c0031bd2:	f6 06 01             	testb  $0x1,(%esi)
c0031bd5:	75 22                	jne    c0031bf9 <mm_malloc+0xa9>
c0031bd7:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031bdc:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031be1:	0f 8f c1 01 00 00    	jg     c0031da8 <mm_malloc+0x258>
c0031be7:	89 c1                	mov    %eax,%ecx
c0031be9:	83 c0 01             	add    $0x1,%eax
c0031bec:	c1 e1 0c             	shl    $0xc,%ecx
c0031bef:	83 c9 07             	or     $0x7,%ecx
c0031bf2:	89 0e                	mov    %ecx,(%esi)
c0031bf4:	a3 20 d0 03 c0       	mov    %eax,0xc003d020
c0031bf9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031bff:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031c02:	74 54                	je     c0031c58 <mm_malloc+0x108>
c0031c04:	89 d8                	mov    %ebx,%eax
c0031c06:	c1 e8 16             	shr    $0x16,%eax
c0031c09:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031c0c:	f6 01 01             	testb  $0x1,(%ecx)
c0031c0f:	75 a7                	jne    c0031bb8 <mm_malloc+0x68>
c0031c11:	a1 00 f0 04 c0       	mov    0xc004f000,%eax
c0031c16:	89 c6                	mov    %eax,%esi
c0031c18:	83 c0 01             	add    $0x1,%eax
c0031c1b:	c1 e6 0c             	shl    $0xc,%esi
c0031c1e:	81 c6 00 00 05 c0    	add    $0xc0050000,%esi
c0031c24:	a3 00 f0 04 c0       	mov    %eax,0xc004f000
c0031c29:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031c2f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031c34:	83 c8 07             	or     $0x7,%eax
c0031c37:	89 01                	mov    %eax,(%ecx)
c0031c39:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031c40:	00 
c0031c41:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031c48:	00 
c0031c49:	89 34 24             	mov    %esi,(%esp)
c0031c4c:	e8 db 01 00 00       	call   c0031e2c <memset>
c0031c51:	e9 70 ff ff ff       	jmp    c0031bc6 <mm_malloc+0x76>
c0031c56:	66 90                	xchg   %ax,%ax
c0031c58:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031c5b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031c5e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031c64:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031c6a:	c1 e8 16             	shr    $0x16,%eax
c0031c6d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031c70:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031c76:	75 32                	jne    c0031caa <mm_malloc+0x15a>
c0031c78:	c7 44 24 10 68 98 03 	movl   $0xc0039868,0x10(%esp)
c0031c7f:	c0 
c0031c80:	c7 44 24 0c ce 98 03 	movl   $0xc00398ce,0xc(%esp)
c0031c87:	c0 
c0031c88:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031c8f:	00 
c0031c90:	c7 44 24 04 57 98 03 	movl   $0xc0039857,0x4(%esp)
c0031c97:	c0 
c0031c98:	c7 04 24 78 98 03 c0 	movl   $0xc0039878,(%esp)
c0031c9f:	e8 3f ee ff ff       	call   c0030ae3 <printk>
c0031ca4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031ca9:	82                   	nemu_trap 
c0031caa:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0031cad:	8d 86 00 00 00 c0    	lea    -0x40000000(%esi),%eax
c0031cb3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031cb8:	c1 ea 0c             	shr    $0xc,%edx
c0031cbb:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031cc1:	f6 04 90 01          	testb  $0x1,(%eax,%edx,4)
c0031cc5:	75 32                	jne    c0031cf9 <mm_malloc+0x1a9>
c0031cc7:	c7 44 24 10 70 98 03 	movl   $0xc0039870,0x10(%esp)
c0031cce:	c0 
c0031ccf:	c7 44 24 0c ce 98 03 	movl   $0xc00398ce,0xc(%esp)
c0031cd6:	c0 
c0031cd7:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031cde:	00 
c0031cdf:	c7 44 24 04 57 98 03 	movl   $0xc0039857,0x4(%esp)
c0031ce6:	c0 
c0031ce7:	c7 04 24 78 98 03 c0 	movl   $0xc0039878,(%esp)
c0031cee:	e8 f0 ed ff ff       	call   c0030ae3 <printk>
c0031cf3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031cf8:	82                   	nemu_trap 
c0031cf9:	8b 45 08             	mov    0x8(%ebp),%eax
c0031cfc:	c1 e8 16             	shr    $0x16,%eax
c0031cff:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031d02:	f6 c3 01             	test   $0x1,%bl
c0031d05:	75 32                	jne    c0031d39 <mm_malloc+0x1e9>
c0031d07:	c7 44 24 10 68 98 03 	movl   $0xc0039868,0x10(%esp)
c0031d0e:	c0 
c0031d0f:	c7 44 24 0c ce 98 03 	movl   $0xc00398ce,0xc(%esp)
c0031d16:	c0 
c0031d17:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031d1e:	00 
c0031d1f:	c7 44 24 04 57 98 03 	movl   $0xc0039857,0x4(%esp)
c0031d26:	c0 
c0031d27:	c7 04 24 78 98 03 c0 	movl   $0xc0039878,(%esp)
c0031d2e:	e8 b0 ed ff ff       	call   c0030ae3 <printk>
c0031d33:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d38:	82                   	nemu_trap 
c0031d39:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d3c:	8d 83 00 00 00 c0    	lea    -0x40000000(%ebx),%eax
c0031d42:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d47:	c1 ea 0c             	shr    $0xc,%edx
c0031d4a:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
c0031d50:	8b 1c 90             	mov    (%eax,%edx,4),%ebx
c0031d53:	f6 c3 01             	test   $0x1,%bl
c0031d56:	75 32                	jne    c0031d8a <mm_malloc+0x23a>
c0031d58:	c7 44 24 10 70 98 03 	movl   $0xc0039870,0x10(%esp)
c0031d5f:	c0 
c0031d60:	c7 44 24 0c ce 98 03 	movl   $0xc00398ce,0xc(%esp)
c0031d67:	c0 
c0031d68:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d6f:	00 
c0031d70:	c7 44 24 04 57 98 03 	movl   $0xc0039857,0x4(%esp)
c0031d77:	c0 
c0031d78:	c7 04 24 78 98 03 c0 	movl   $0xc0039878,(%esp)
c0031d7f:	e8 5f ed ff ff       	call   c0030ae3 <printk>
c0031d84:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d89:	82                   	nemu_trap 
c0031d8a:	8b 55 08             	mov    0x8(%ebp),%edx
c0031d8d:	89 d8                	mov    %ebx,%eax
c0031d8f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031d94:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
c0031d9a:	09 d0                	or     %edx,%eax
c0031d9c:	83 c4 3c             	add    $0x3c,%esp
c0031d9f:	5b                   	pop    %ebx
c0031da0:	5e                   	pop    %esi
c0031da1:	5f                   	pop    %edi
c0031da2:	5d                   	pop    %ebp
c0031da3:	c3                   	ret    
c0031da4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031da8:	c7 44 24 10 44 98 03 	movl   $0xc0039844,0x10(%esp)
c0031daf:	c0 
c0031db0:	c7 44 24 0c c4 98 03 	movl   $0xc00398c4,0xc(%esp)
c0031db7:	c0 
c0031db8:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031dbf:	00 
c0031dc0:	c7 44 24 04 57 98 03 	movl   $0xc0039857,0x4(%esp)
c0031dc7:	c0 
c0031dc8:	c7 04 24 78 98 03 c0 	movl   $0xc0039878,(%esp)
c0031dcf:	e8 0f ed ff ff       	call   c0030ae3 <printk>
c0031dd4:	b8 01 00 00 00       	mov    $0x1,%eax
c0031dd9:	82                   	nemu_trap 
c0031dda:	a1 20 d0 03 c0       	mov    0xc003d020,%eax
c0031ddf:	e9 03 fe ff ff       	jmp    c0031be7 <mm_malloc+0x97>

c0031de4 <memcpy>:
c0031de4:	55                   	push   %ebp
c0031de5:	89 e5                	mov    %esp,%ebp
c0031de7:	56                   	push   %esi
c0031de8:	57                   	push   %edi
c0031de9:	53                   	push   %ebx
c0031dea:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031ded:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031df0:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031df3:	fc                   	cld    
c0031df4:	83 f9 08             	cmp    $0x8,%ecx
c0031df7:	76 26                	jbe    c0031e1f <memcpy+0x3b>
c0031df9:	89 fa                	mov    %edi,%edx
c0031dfb:	89 cb                	mov    %ecx,%ebx
c0031dfd:	83 e2 03             	and    $0x3,%edx
c0031e00:	74 10                	je     c0031e12 <memcpy+0x2e>
c0031e02:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031e07:	29 d1                	sub    %edx,%ecx
c0031e09:	83 e1 03             	and    $0x3,%ecx
c0031e0c:	29 cb                	sub    %ecx,%ebx
c0031e0e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e10:	89 d9                	mov    %ebx,%ecx
c0031e12:	c1 e9 02             	shr    $0x2,%ecx
c0031e15:	8d 76 00             	lea    0x0(%esi),%esi
c0031e18:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031e1a:	89 d9                	mov    %ebx,%ecx
c0031e1c:	83 e1 03             	and    $0x3,%ecx
c0031e1f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031e21:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e24:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031e27:	5b                   	pop    %ebx
c0031e28:	5f                   	pop    %edi
c0031e29:	5e                   	pop    %esi
c0031e2a:	c9                   	leave  
c0031e2b:	c3                   	ret    

c0031e2c <memset>:
c0031e2c:	55                   	push   %ebp
c0031e2d:	89 e5                	mov    %esp,%ebp
c0031e2f:	57                   	push   %edi
c0031e30:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031e33:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031e37:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031e3a:	fc                   	cld    
c0031e3b:	83 f9 10             	cmp    $0x10,%ecx
c0031e3e:	76 69                	jbe    c0031ea9 <memset+0x7d>
c0031e40:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e46:	74 4c                	je     c0031e94 <memset+0x68>
c0031e48:	88 07                	mov    %al,(%edi)
c0031e4a:	47                   	inc    %edi
c0031e4b:	49                   	dec    %ecx
c0031e4c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e52:	74 40                	je     c0031e94 <memset+0x68>
c0031e54:	88 07                	mov    %al,(%edi)
c0031e56:	47                   	inc    %edi
c0031e57:	49                   	dec    %ecx
c0031e58:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e5e:	74 34                	je     c0031e94 <memset+0x68>
c0031e60:	88 07                	mov    %al,(%edi)
c0031e62:	47                   	inc    %edi
c0031e63:	49                   	dec    %ecx
c0031e64:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e6a:	74 28                	je     c0031e94 <memset+0x68>
c0031e6c:	88 07                	mov    %al,(%edi)
c0031e6e:	47                   	inc    %edi
c0031e6f:	49                   	dec    %ecx
c0031e70:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e76:	74 1c                	je     c0031e94 <memset+0x68>
c0031e78:	88 07                	mov    %al,(%edi)
c0031e7a:	47                   	inc    %edi
c0031e7b:	49                   	dec    %ecx
c0031e7c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e82:	74 10                	je     c0031e94 <memset+0x68>
c0031e84:	88 07                	mov    %al,(%edi)
c0031e86:	47                   	inc    %edi
c0031e87:	49                   	dec    %ecx
c0031e88:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e8e:	74 04                	je     c0031e94 <memset+0x68>
c0031e90:	88 07                	mov    %al,(%edi)
c0031e92:	47                   	inc    %edi
c0031e93:	49                   	dec    %ecx
c0031e94:	88 c4                	mov    %al,%ah
c0031e96:	89 c2                	mov    %eax,%edx
c0031e98:	c1 e2 10             	shl    $0x10,%edx
c0031e9b:	09 d0                	or     %edx,%eax
c0031e9d:	89 ca                	mov    %ecx,%edx
c0031e9f:	c1 e9 02             	shr    $0x2,%ecx
c0031ea2:	83 e2 03             	and    $0x3,%edx
c0031ea5:	f3 ab                	rep stos %eax,%es:(%edi)
c0031ea7:	89 d1                	mov    %edx,%ecx
c0031ea9:	f3 aa                	rep stos %al,%es:(%edi)
c0031eab:	8b 45 08             	mov    0x8(%ebp),%eax
c0031eae:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031eb1:	5f                   	pop    %edi
c0031eb2:	c9                   	leave  
c0031eb3:	c3                   	ret    
c0031eb4:	66 90                	xchg   %ax,%ax
c0031eb6:	66 90                	xchg   %ax,%ax
c0031eb8:	66 90                	xchg   %ax,%ax
c0031eba:	66 90                	xchg   %ax,%ax
c0031ebc:	66 90                	xchg   %ax,%ax
c0031ebe:	66 90                	xchg   %ax,%ax

c0031ec0 <_vsnprintf_r>:
c0031ec0:	55                   	push   %ebp
c0031ec1:	89 e5                	mov    %esp,%ebp
c0031ec3:	56                   	push   %esi
c0031ec4:	53                   	push   %ebx
c0031ec5:	83 c4 80             	add    $0xffffff80,%esp
c0031ec8:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031ecb:	8b 75 08             	mov    0x8(%ebp),%esi
c0031ece:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031ed1:	85 db                	test   %ebx,%ebx
c0031ed3:	78 63                	js     c0031f38 <_vsnprintf_r+0x78>
c0031ed5:	ba 08 02 00 00       	mov    $0x208,%edx
c0031eda:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031edf:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031ee3:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031ee6:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031ee9:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031eec:	31 c0                	xor    %eax,%eax
c0031eee:	85 db                	test   %ebx,%ebx
c0031ef0:	0f 45 c2             	cmovne %edx,%eax
c0031ef3:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031ef6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031ef9:	8b 45 18             	mov    0x18(%ebp),%eax
c0031efc:	89 34 24             	mov    %esi,(%esp)
c0031eff:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031f03:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031f07:	8b 45 14             	mov    0x14(%ebp),%eax
c0031f0a:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031f0e:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031f11:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031f15:	e8 86 00 00 00       	call   c0031fa0 <_svfprintf_r>
c0031f1a:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031f1d:	7c 11                	jl     c0031f30 <_vsnprintf_r+0x70>
c0031f1f:	85 db                	test   %ebx,%ebx
c0031f21:	74 06                	je     c0031f29 <_vsnprintf_r+0x69>
c0031f23:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031f26:	c6 02 00             	movb   $0x0,(%edx)
c0031f29:	83 ec 80             	sub    $0xffffff80,%esp
c0031f2c:	5b                   	pop    %ebx
c0031f2d:	5e                   	pop    %esi
c0031f2e:	5d                   	pop    %ebp
c0031f2f:	c3                   	ret    
c0031f30:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f36:	eb e7                	jmp    c0031f1f <_vsnprintf_r+0x5f>
c0031f38:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031f3e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031f43:	eb e4                	jmp    c0031f29 <_vsnprintf_r+0x69>
c0031f45:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031f49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031f50 <vsnprintf>:
c0031f50:	55                   	push   %ebp
c0031f51:	89 e5                	mov    %esp,%ebp
c0031f53:	83 ec 28             	sub    $0x28,%esp
c0031f56:	e8 35 00 00 00       	call   c0031f90 <__getreent>
c0031f5b:	8b 55 14             	mov    0x14(%ebp),%edx
c0031f5e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031f62:	8b 55 10             	mov    0x10(%ebp),%edx
c0031f65:	89 04 24             	mov    %eax,(%esp)
c0031f68:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031f6c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031f6f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031f73:	8b 55 08             	mov    0x8(%ebp),%edx
c0031f76:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031f7a:	e8 41 ff ff ff       	call   c0031ec0 <_vsnprintf_r>
c0031f7f:	c9                   	leave  
c0031f80:	c3                   	ret    
c0031f81:	66 90                	xchg   %ax,%ax
c0031f83:	66 90                	xchg   %ax,%ax
c0031f85:	66 90                	xchg   %ax,%ax
c0031f87:	66 90                	xchg   %ax,%ax
c0031f89:	66 90                	xchg   %ax,%ax
c0031f8b:	66 90                	xchg   %ax,%ax
c0031f8d:	66 90                	xchg   %ax,%ax
c0031f8f:	90                   	nop

c0031f90 <__getreent>:
c0031f90:	55                   	push   %ebp
c0031f91:	a1 40 d0 03 c0       	mov    0xc003d040,%eax
c0031f96:	89 e5                	mov    %esp,%ebp
c0031f98:	5d                   	pop    %ebp
c0031f99:	c3                   	ret    
c0031f9a:	66 90                	xchg   %ax,%ax
c0031f9c:	66 90                	xchg   %ax,%ax
c0031f9e:	66 90                	xchg   %ax,%ax

c0031fa0 <_svfprintf_r>:
c0031fa0:	55                   	push   %ebp
c0031fa1:	89 e5                	mov    %esp,%ebp
c0031fa3:	57                   	push   %edi
c0031fa4:	56                   	push   %esi
c0031fa5:	53                   	push   %ebx
c0031fa6:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c0031fac:	8b 45 08             	mov    0x8(%ebp),%eax
c0031faf:	89 04 24             	mov    %eax,(%esp)
c0031fb2:	e8 89 33 00 00       	call   c0035340 <_localeconv_r>
c0031fb7:	8b 00                	mov    (%eax),%eax
c0031fb9:	89 04 24             	mov    %eax,(%esp)
c0031fbc:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0031fc2:	e8 d9 4a 00 00       	call   c0036aa0 <strlen>
c0031fc7:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c0031fcd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031fd0:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0031fd4:	74 0b                	je     c0031fe1 <_svfprintf_r+0x41>
c0031fd6:	8b 40 10             	mov    0x10(%eax),%eax
c0031fd9:	85 c0                	test   %eax,%eax
c0031fdb:	0f 84 62 18 00 00    	je     c0033843 <_svfprintf_r+0x18a3>
c0031fe1:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0031fe4:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0031fe7:	89 c7                	mov    %eax,%edi
c0031fe9:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0031fef:	d9 ee                	fldz   
c0031ff1:	29 d0                	sub    %edx,%eax
c0031ff3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0031ffa:	00 00 00 
c0031ffd:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032003:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003200a:	00 00 00 
c003200d:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0032014:	00 00 00 
c0032017:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c003201e:	00 00 00 
c0032021:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0032028:	00 00 00 
c003202b:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0032032:	00 00 00 
c0032035:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c003203b:	8b 45 10             	mov    0x10(%ebp),%eax
c003203e:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0032041:	0f b6 00             	movzbl (%eax),%eax
c0032044:	3c 25                	cmp    $0x25,%al
c0032046:	74 4d                	je     c0032095 <_svfprintf_r+0xf5>
c0032048:	84 c0                	test   %al,%al
c003204a:	75 08                	jne    c0032054 <_svfprintf_r+0xb4>
c003204c:	eb 47                	jmp    c0032095 <_svfprintf_r+0xf5>
c003204e:	66 90                	xchg   %ax,%ax
c0032050:	84 c0                	test   %al,%al
c0032052:	74 0a                	je     c003205e <_svfprintf_r+0xbe>
c0032054:	83 c3 01             	add    $0x1,%ebx
c0032057:	0f b6 03             	movzbl (%ebx),%eax
c003205a:	3c 25                	cmp    $0x25,%al
c003205c:	75 f2                	jne    c0032050 <_svfprintf_r+0xb0>
c003205e:	89 de                	mov    %ebx,%esi
c0032060:	2b 75 10             	sub    0x10(%ebp),%esi
c0032063:	74 30                	je     c0032095 <_svfprintf_r+0xf5>
c0032065:	8b 45 10             	mov    0x10(%ebp),%eax
c0032068:	83 c7 08             	add    $0x8,%edi
c003206b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003206e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032074:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032077:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003207d:	83 c0 01             	add    $0x1,%eax
c0032080:	83 f8 07             	cmp    $0x7,%eax
c0032083:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032089:	0f 8f 91 00 00 00    	jg     c0032120 <_svfprintf_r+0x180>
c003208f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032095:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032098:	0f 84 aa 00 00 00    	je     c0032148 <_svfprintf_r+0x1a8>
c003209e:	8d 43 01             	lea    0x1(%ebx),%eax
c00320a1:	be 20 00 00 00       	mov    $0x20,%esi
c00320a6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00320ad:	31 db                	xor    %ebx,%ebx
c00320af:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c00320b6:	ff ff ff 
c00320b9:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c00320c0:	00 00 00 
c00320c3:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c00320ca:	00 00 00 
c00320cd:	8d 48 01             	lea    0x1(%eax),%ecx
c00320d0:	0f be 00             	movsbl (%eax),%eax
c00320d3:	8d 50 e0             	lea    -0x20(%eax),%edx
c00320d6:	83 fa 58             	cmp    $0x58,%edx
c00320d9:	0f 87 8f 07 00 00    	ja     c003286e <_svfprintf_r+0x8ce>
c00320df:	ff 24 95 18 99 03 c0 	jmp    *-0x3ffc66e8(,%edx,4)
c00320e6:	66 90                	xchg   %ax,%ax
c00320e8:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00320ef:	89 c8                	mov    %ecx,%eax
c00320f1:	eb da                	jmp    c00320cd <_svfprintf_r+0x12d>
c00320f3:	8b 45 14             	mov    0x14(%ebp),%eax
c00320f6:	8b 55 14             	mov    0x14(%ebp),%edx
c00320f9:	8b 00                	mov    (%eax),%eax
c00320fb:	83 c2 04             	add    $0x4,%edx
c00320fe:	89 55 14             	mov    %edx,0x14(%ebp)
c0032101:	85 c0                	test   %eax,%eax
c0032103:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c0032109:	79 e4                	jns    c00320ef <_svfprintf_r+0x14f>
c003210b:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c0032111:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c0032118:	89 c8                	mov    %ecx,%eax
c003211a:	eb b1                	jmp    c00320cd <_svfprintf_r+0x12d>
c003211c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032120:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032126:	89 44 24 08          	mov    %eax,0x8(%esp)
c003212a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003212d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032131:	8b 45 08             	mov    0x8(%ebp),%eax
c0032134:	89 04 24             	mov    %eax,(%esp)
c0032137:	e8 e4 49 00 00       	call   c0036b20 <__ssprint_r>
c003213c:	85 c0                	test   %eax,%eax
c003213e:	75 30                	jne    c0032170 <_svfprintf_r+0x1d0>
c0032140:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032143:	e9 47 ff ff ff       	jmp    c003208f <_svfprintf_r+0xef>
c0032148:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c003214e:	85 c0                	test   %eax,%eax
c0032150:	74 1e                	je     c0032170 <_svfprintf_r+0x1d0>
c0032152:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032158:	89 44 24 08          	mov    %eax,0x8(%esp)
c003215c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003215f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032163:	8b 45 08             	mov    0x8(%ebp),%eax
c0032166:	89 04 24             	mov    %eax,(%esp)
c0032169:	e8 b2 49 00 00       	call   c0036b20 <__ssprint_r>
c003216e:	66 90                	xchg   %ax,%ax
c0032170:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032173:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032178:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003217c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032183:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032189:	5b                   	pop    %ebx
c003218a:	5e                   	pop    %esi
c003218b:	5f                   	pop    %edi
c003218c:	5d                   	pop    %ebp
c003218d:	c3                   	ret    
c003218e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032193:	89 c8                	mov    %ecx,%eax
c0032195:	e9 33 ff ff ff       	jmp    c00320cd <_svfprintf_r+0x12d>
c003219a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00321a0:	8b 45 14             	mov    0x14(%ebp),%eax
c00321a3:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00321a6:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00321ad:	8d 70 04             	lea    0x4(%eax),%esi
c00321b0:	8b 00                	mov    (%eax),%eax
c00321b2:	85 c0                	test   %eax,%eax
c00321b4:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00321ba:	0f 84 7f 18 00 00    	je     c0033a3f <_svfprintf_r+0x1a9f>
c00321c0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00321c6:	85 c0                	test   %eax,%eax
c00321c8:	0f 88 b6 17 00 00    	js     c0033984 <_svfprintf_r+0x19e4>
c00321ce:	89 44 24 08          	mov    %eax,0x8(%esp)
c00321d2:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00321d8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00321df:	00 
c00321e0:	89 04 24             	mov    %eax,(%esp)
c00321e3:	e8 f8 38 00 00       	call   c0035ae0 <memchr>
c00321e8:	85 c0                	test   %eax,%eax
c00321ea:	0f 84 a0 19 00 00    	je     c0033b90 <_svfprintf_r+0x1bf0>
c00321f0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00321f6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00321fc:	39 d0                	cmp    %edx,%eax
c00321fe:	0f 4f c2             	cmovg  %edx,%eax
c0032201:	89 c2                	mov    %eax,%edx
c0032203:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003220a:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032210:	31 c0                	xor    %eax,%eax
c0032212:	85 d2                	test   %edx,%edx
c0032214:	0f 49 c2             	cmovns %edx,%eax
c0032217:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c003221d:	89 75 14             	mov    %esi,0x14(%ebp)
c0032220:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032227:	00 00 00 
c003222a:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032231:	00 00 00 
c0032234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032238:	84 db                	test   %bl,%bl
c003223a:	74 07                	je     c0032243 <_svfprintf_r+0x2a3>
c003223c:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c0032243:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0032249:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003224f:	89 c8                	mov    %ecx,%eax
c0032251:	89 f2                	mov    %esi,%edx
c0032253:	83 c0 02             	add    $0x2,%eax
c0032256:	83 e2 02             	and    $0x2,%edx
c0032259:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003225f:	89 f2                	mov    %esi,%edx
c0032261:	0f 44 c1             	cmove  %ecx,%eax
c0032264:	81 e2 84 00 00 00    	and    $0x84,%edx
c003226a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032270:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032276:	0f 85 1c 06 00 00    	jne    c0032898 <_svfprintf_r+0x8f8>
c003227c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032282:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032288:	85 f6                	test   %esi,%esi
c003228a:	0f 8e 08 06 00 00    	jle    c0032898 <_svfprintf_r+0x8f8>
c0032290:	83 fe 10             	cmp    $0x10,%esi
c0032293:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032299:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003229f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00322a5:	7f 11                	jg     c00322b8 <_svfprintf_r+0x318>
c00322a7:	eb 6b                	jmp    c0032314 <_svfprintf_r+0x374>
c00322a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00322b0:	83 ee 10             	sub    $0x10,%esi
c00322b3:	83 fe 10             	cmp    $0x10,%esi
c00322b6:	7e 5c                	jle    c0032314 <_svfprintf_r+0x374>
c00322b8:	83 c0 01             	add    $0x1,%eax
c00322bb:	83 c1 10             	add    $0x10,%ecx
c00322be:	c7 07 8c 9a 03 c0    	movl   $0xc0039a8c,(%edi)
c00322c4:	83 c7 08             	add    $0x8,%edi
c00322c7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00322ce:	83 f8 07             	cmp    $0x7,%eax
c00322d1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00322d7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00322dd:	7e d1                	jle    c00322b0 <_svfprintf_r+0x310>
c00322df:	8b 45 0c             	mov    0xc(%ebp),%eax
c00322e2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00322e6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00322ea:	8b 45 08             	mov    0x8(%ebp),%eax
c00322ed:	89 04 24             	mov    %eax,(%esp)
c00322f0:	e8 2b 48 00 00       	call   c0036b20 <__ssprint_r>
c00322f5:	85 c0                	test   %eax,%eax
c00322f7:	0f 85 73 fe ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c00322fd:	83 ee 10             	sub    $0x10,%esi
c0032300:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032306:	83 fe 10             	cmp    $0x10,%esi
c0032309:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003230f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032312:	7f a4                	jg     c00322b8 <_svfprintf_r+0x318>
c0032314:	83 c0 01             	add    $0x1,%eax
c0032317:	01 f1                	add    %esi,%ecx
c0032319:	83 f8 07             	cmp    $0x7,%eax
c003231c:	c7 07 8c 9a 03 c0    	movl   $0xc0039a8c,(%edi)
c0032322:	89 77 04             	mov    %esi,0x4(%edi)
c0032325:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003232b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032331:	0f 8f 16 0e 00 00    	jg     c003314d <_svfprintf_r+0x11ad>
c0032337:	83 c7 08             	add    $0x8,%edi
c003233a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032341:	e9 58 05 00 00       	jmp    c003289e <_svfprintf_r+0x8fe>
c0032346:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003234d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032353:	8b 45 14             	mov    0x14(%ebp),%eax
c0032356:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032359:	0f 85 fd 04 00 00    	jne    c003285c <_svfprintf_r+0x8bc>
c003235f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032366:	0f 84 f0 04 00 00    	je     c003285c <_svfprintf_r+0x8bc>
c003236c:	0f b7 08             	movzwl (%eax),%ecx
c003236f:	83 c0 04             	add    $0x4,%eax
c0032372:	89 45 14             	mov    %eax,0x14(%ebp)
c0032375:	b8 01 00 00 00       	mov    $0x1,%eax
c003237a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032380:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032387:	31 db                	xor    %ebx,%ebx
c0032389:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003238f:	89 f2                	mov    %esi,%edx
c0032391:	80 e2 7f             	and    $0x7f,%dl
c0032394:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003239b:	0f 48 d6             	cmovs  %esi,%edx
c003239e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c00323a4:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00323aa:	85 d2                	test   %edx,%edx
c00323ac:	75 08                	jne    c00323b6 <_svfprintf_r+0x416>
c00323ae:	85 c9                	test   %ecx,%ecx
c00323b0:	0f 84 ea 08 00 00    	je     c0032ca0 <_svfprintf_r+0xd00>
c00323b6:	3c 01                	cmp    $0x1,%al
c00323b8:	0f 84 6a 0d 00 00    	je     c0033128 <_svfprintf_r+0x1188>
c00323be:	3c 02                	cmp    $0x2,%al
c00323c0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00323c3:	0f 85 bf 0b 00 00    	jne    c0032f88 <_svfprintf_r+0xfe8>
c00323c9:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c00323cf:	90                   	nop
c00323d0:	89 ca                	mov    %ecx,%edx
c00323d2:	83 e8 01             	sub    $0x1,%eax
c00323d5:	83 e2 0f             	and    $0xf,%edx
c00323d8:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c00323dc:	c1 e9 04             	shr    $0x4,%ecx
c00323df:	85 c9                	test   %ecx,%ecx
c00323e1:	88 10                	mov    %dl,(%eax)
c00323e3:	75 eb                	jne    c00323d0 <_svfprintf_r+0x430>
c00323e5:	8d 55 a8             	lea    -0x58(%ebp),%edx
c00323e8:	29 c2                	sub    %eax,%edx
c00323ea:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00323f0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00323f6:	66 90                	xchg   %ax,%ax
c00323f8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00323fe:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c0032404:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003240b:	00 00 00 
c003240e:	39 c2                	cmp    %eax,%edx
c0032410:	0f 4d c2             	cmovge %edx,%eax
c0032413:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032419:	e9 1a fe ff ff       	jmp    c0032238 <_svfprintf_r+0x298>
c003241e:	84 db                	test   %bl,%bl
c0032420:	89 c8                	mov    %ecx,%eax
c0032422:	0f 44 de             	cmove  %esi,%ebx
c0032425:	e9 a3 fc ff ff       	jmp    c00320cd <_svfprintf_r+0x12d>
c003242a:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c0032431:	89 c8                	mov    %ecx,%eax
c0032433:	e9 95 fc ff ff       	jmp    c00320cd <_svfprintf_r+0x12d>
c0032438:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c003243f:	00 00 00 
c0032442:	89 c8                	mov    %ecx,%eax
c0032444:	e9 84 fc ff ff       	jmp    c00320cd <_svfprintf_r+0x12d>
c0032449:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c003244f:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032452:	31 ff                	xor    %edi,%edi
c0032454:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003245b:	00 00 00 
c003245e:	66 90                	xchg   %ax,%ax
c0032460:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032463:	83 c1 01             	add    $0x1,%ecx
c0032466:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032469:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003246d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032470:	83 fa 09             	cmp    $0x9,%edx
c0032473:	76 eb                	jbe    c0032460 <_svfprintf_r+0x4c0>
c0032475:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003247b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032481:	e9 4d fc ff ff       	jmp    c00320d3 <_svfprintf_r+0x133>
c0032486:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003248d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032494:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003249a:	8b 45 14             	mov    0x14(%ebp),%eax
c003249d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324a0:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00324a6:	0f 85 61 02 00 00    	jne    c003270d <_svfprintf_r+0x76d>
c00324ac:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c00324b3:	0f 84 54 02 00 00    	je     c003270d <_svfprintf_r+0x76d>
c00324b9:	0f bf 08             	movswl (%eax),%ecx
c00324bc:	83 c0 04             	add    $0x4,%eax
c00324bf:	89 45 14             	mov    %eax,0x14(%ebp)
c00324c2:	85 c9                	test   %ecx,%ecx
c00324c4:	0f 88 53 02 00 00    	js     c003271d <_svfprintf_r+0x77d>
c00324ca:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00324d1:	b8 01 00 00 00       	mov    $0x1,%eax
c00324d6:	e9 ae fe ff ff       	jmp    c0032389 <_svfprintf_r+0x3e9>
c00324db:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c00324e2:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00324e8:	8b 45 14             	mov    0x14(%ebp),%eax
c00324eb:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00324ee:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00324f4:	0f 84 15 10 00 00    	je     c003350f <_svfprintf_r+0x156f>
c00324fa:	db 28                	fldt   (%eax)
c00324fc:	83 c0 0c             	add    $0xc,%eax
c00324ff:	89 45 14             	mov    %eax,0x14(%ebp)
c0032502:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0032508:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c003250e:	dd 1c 24             	fstpl  (%esp)
c0032511:	e8 aa 44 00 00       	call   c00369c0 <__fpclassifyd>
c0032516:	83 f8 01             	cmp    $0x1,%eax
c0032519:	0f 85 82 0f 00 00    	jne    c00334a1 <_svfprintf_r+0x1501>
c003251f:	d9 ee                	fldz   
c0032521:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032527:	d9 c9                	fxch   %st(1)
c0032529:	df e9                	fucomip %st(1),%st
c003252b:	dd d8                	fstp   %st(0)
c003252d:	0f 87 59 15 00 00    	ja     c0033a8c <_svfprintf_r+0x1aec>
c0032533:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003253a:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c0032541:	ba da 98 03 c0       	mov    $0xc00398da,%edx
c0032546:	b8 de 98 03 c0       	mov    $0xc00398de,%eax
c003254b:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032552:	00 00 00 
c0032555:	0f 4e c2             	cmovle %edx,%eax
c0032558:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003255e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032565:	ff ff ff 
c0032568:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003256f:	00 00 00 
c0032572:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032579:	00 00 00 
c003257c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032583:	00 00 00 
c0032586:	e9 ad fc ff ff       	jmp    c0032238 <_svfprintf_r+0x298>
c003258b:	8d 41 01             	lea    0x1(%ecx),%eax
c003258e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032594:	0f be 01             	movsbl (%ecx),%eax
c0032597:	83 f8 2a             	cmp    $0x2a,%eax
c003259a:	0f 84 84 18 00 00    	je     c0033e24 <_svfprintf_r+0x1e84>
c00325a0:	8d 50 d0             	lea    -0x30(%eax),%edx
c00325a3:	31 c9                	xor    %ecx,%ecx
c00325a5:	83 fa 09             	cmp    $0x9,%edx
c00325a8:	0f 87 a8 16 00 00    	ja     c0033c56 <_svfprintf_r+0x1cb6>
c00325ae:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c00325b4:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00325ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00325c0:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c00325c3:	83 c7 01             	add    $0x1,%edi
c00325c6:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c00325c9:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c00325cd:	8d 50 d0             	lea    -0x30(%eax),%edx
c00325d0:	83 fa 09             	cmp    $0x9,%edx
c00325d3:	76 eb                	jbe    c00325c0 <_svfprintf_r+0x620>
c00325d5:	85 c9                	test   %ecx,%ecx
c00325d7:	89 ca                	mov    %ecx,%edx
c00325d9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c00325de:	0f 48 d1             	cmovs  %ecx,%edx
c00325e1:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00325e7:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c00325ed:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00325f3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c00325f9:	e9 d5 fa ff ff       	jmp    c00320d3 <_svfprintf_r+0x133>
c00325fe:	8b 45 14             	mov    0x14(%ebp),%eax
c0032601:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032604:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c003260b:	8b 08                	mov    (%eax),%ecx
c003260d:	83 c0 04             	add    $0x4,%eax
c0032610:	89 45 14             	mov    %eax,0x14(%ebp)
c0032613:	b8 02 00 00 00       	mov    $0x2,%eax
c0032618:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c003261f:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c0032626:	c7 85 18 ff ff ff fb 	movl   $0xc00398fb,-0xe8(%ebp)
c003262d:	98 03 c0 
c0032630:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c0032637:	00 00 00 
c003263a:	e9 41 fd ff ff       	jmp    c0032380 <_svfprintf_r+0x3e0>
c003263f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032646:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003264c:	8b 45 14             	mov    0x14(%ebp),%eax
c003264f:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032652:	0f 85 87 00 00 00    	jne    c00326df <_svfprintf_r+0x73f>
c0032658:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003265f:	74 7e                	je     c00326df <_svfprintf_r+0x73f>
c0032661:	0f b7 08             	movzwl (%eax),%ecx
c0032664:	83 c0 04             	add    $0x4,%eax
c0032667:	89 45 14             	mov    %eax,0x14(%ebp)
c003266a:	31 c0                	xor    %eax,%eax
c003266c:	e9 0f fd ff ff       	jmp    c0032380 <_svfprintf_r+0x3e0>
c0032671:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032678:	89 c8                	mov    %ecx,%eax
c003267a:	e9 4e fa ff ff       	jmp    c00320cd <_svfprintf_r+0x12d>
c003267f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032686:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032689:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003268f:	0f 85 97 0b 00 00    	jne    c003322c <_svfprintf_r+0x128c>
c0032695:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003269c:	0f 84 8a 0b 00 00    	je     c003322c <_svfprintf_r+0x128c>
c00326a2:	8b 45 14             	mov    0x14(%ebp),%eax
c00326a5:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c00326ac:	8b 00                	mov    (%eax),%eax
c00326ae:	66 89 10             	mov    %dx,(%eax)
c00326b1:	8b 45 14             	mov    0x14(%ebp),%eax
c00326b4:	83 c0 04             	add    $0x4,%eax
c00326b7:	89 45 14             	mov    %eax,0x14(%ebp)
c00326ba:	e9 7c f9 ff ff       	jmp    c003203b <_svfprintf_r+0x9b>
c00326bf:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00326c6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326cd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326d3:	8b 45 14             	mov    0x14(%ebp),%eax
c00326d6:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326d9:	0f 84 79 ff ff ff    	je     c0032658 <_svfprintf_r+0x6b8>
c00326df:	8b 08                	mov    (%eax),%ecx
c00326e1:	83 c0 04             	add    $0x4,%eax
c00326e4:	89 45 14             	mov    %eax,0x14(%ebp)
c00326e7:	31 c0                	xor    %eax,%eax
c00326e9:	e9 92 fc ff ff       	jmp    c0032380 <_svfprintf_r+0x3e0>
c00326ee:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326f5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326fb:	8b 45 14             	mov    0x14(%ebp),%eax
c00326fe:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032701:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032707:	0f 84 9f fd ff ff    	je     c00324ac <_svfprintf_r+0x50c>
c003270d:	8b 08                	mov    (%eax),%ecx
c003270f:	83 c0 04             	add    $0x4,%eax
c0032712:	89 45 14             	mov    %eax,0x14(%ebp)
c0032715:	85 c9                	test   %ecx,%ecx
c0032717:	0f 89 ad fd ff ff    	jns    c00324ca <_svfprintf_r+0x52a>
c003271d:	f7 d9                	neg    %ecx
c003271f:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0032724:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c003272b:	b8 01 00 00 00       	mov    $0x1,%eax
c0032730:	e9 54 fc ff ff       	jmp    c0032389 <_svfprintf_r+0x3e9>
c0032735:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c003273c:	89 c8                	mov    %ecx,%eax
c003273e:	e9 8a f9 ff ff       	jmp    c00320cd <_svfprintf_r+0x12d>
c0032743:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003274a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032750:	8b 45 14             	mov    0x14(%ebp),%eax
c0032753:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032756:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003275c:	c7 85 18 ff ff ff fb 	movl   $0xc00398fb,-0xe8(%ebp)
c0032763:	98 03 c0 
c0032766:	75 71                	jne    c00327d9 <_svfprintf_r+0x839>
c0032768:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003276f:	74 68                	je     c00327d9 <_svfprintf_r+0x839>
c0032771:	0f b7 08             	movzwl (%eax),%ecx
c0032774:	83 c0 04             	add    $0x4,%eax
c0032777:	89 45 14             	mov    %eax,0x14(%ebp)
c003277a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032781:	b8 02 00 00 00       	mov    $0x2,%eax
c0032786:	0f 84 f4 fb ff ff    	je     c0032380 <_svfprintf_r+0x3e0>
c003278c:	85 c9                	test   %ecx,%ecx
c003278e:	0f 84 ec fb ff ff    	je     c0032380 <_svfprintf_r+0x3e0>
c0032794:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c003279b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00327a2:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00327a9:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c00327af:	e9 cc fb ff ff       	jmp    c0032380 <_svfprintf_r+0x3e0>
c00327b4:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00327bb:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327c1:	8b 45 14             	mov    0x14(%ebp),%eax
c00327c4:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327c7:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00327cd:	c7 85 18 ff ff ff ea 	movl   $0xc00398ea,-0xe8(%ebp)
c00327d4:	98 03 c0 
c00327d7:	74 8f                	je     c0032768 <_svfprintf_r+0x7c8>
c00327d9:	8b 08                	mov    (%eax),%ecx
c00327db:	83 c0 04             	add    $0x4,%eax
c00327de:	89 45 14             	mov    %eax,0x14(%ebp)
c00327e1:	eb 97                	jmp    c003277a <_svfprintf_r+0x7da>
c00327e3:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00327e9:	8b 45 14             	mov    0x14(%ebp),%eax
c00327ec:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00327ef:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00327f6:	8b 00                	mov    (%eax),%eax
c00327f8:	88 45 80             	mov    %al,-0x80(%ebp)
c00327fb:	8b 45 14             	mov    0x14(%ebp),%eax
c00327fe:	83 c0 04             	add    $0x4,%eax
c0032801:	89 45 14             	mov    %eax,0x14(%ebp)
c0032804:	8d 45 80             	lea    -0x80(%ebp),%eax
c0032807:	31 db                	xor    %ebx,%ebx
c0032809:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c0032810:	00 00 00 
c0032813:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c003281a:	00 00 00 
c003281d:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032824:	00 00 00 
c0032827:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c003282e:	00 00 00 
c0032831:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032837:	e9 07 fa ff ff       	jmp    c0032243 <_svfprintf_r+0x2a3>
c003283c:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032843:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003284a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032850:	8b 45 14             	mov    0x14(%ebp),%eax
c0032853:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032856:	0f 84 03 fb ff ff    	je     c003235f <_svfprintf_r+0x3bf>
c003285c:	8b 08                	mov    (%eax),%ecx
c003285e:	83 c0 04             	add    $0x4,%eax
c0032861:	89 45 14             	mov    %eax,0x14(%ebp)
c0032864:	b8 01 00 00 00       	mov    $0x1,%eax
c0032869:	e9 12 fb ff ff       	jmp    c0032380 <_svfprintf_r+0x3e0>
c003286e:	85 c0                	test   %eax,%eax
c0032870:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032876:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032879:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003287f:	0f 84 c3 f8 ff ff    	je     c0032148 <_svfprintf_r+0x1a8>
c0032885:	88 45 80             	mov    %al,-0x80(%ebp)
c0032888:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003288f:	e9 70 ff ff ff       	jmp    c0032804 <_svfprintf_r+0x864>
c0032894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032898:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003289e:	84 db                	test   %bl,%bl
c00328a0:	74 33                	je     c00328d5 <_svfprintf_r+0x935>
c00328a2:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c00328a8:	83 c1 01             	add    $0x1,%ecx
c00328ab:	89 07                	mov    %eax,(%edi)
c00328ad:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328b3:	83 c7 08             	add    $0x8,%edi
c00328b6:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c00328bd:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328c3:	83 c0 01             	add    $0x1,%eax
c00328c6:	83 f8 07             	cmp    $0x7,%eax
c00328c9:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328cf:	0f 8f 7b 06 00 00    	jg     c0032f50 <_svfprintf_r+0xfb0>
c00328d5:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c00328db:	85 db                	test   %ebx,%ebx
c00328dd:	74 33                	je     c0032912 <_svfprintf_r+0x972>
c00328df:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c00328e5:	83 c1 02             	add    $0x2,%ecx
c00328e8:	89 07                	mov    %eax,(%edi)
c00328ea:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328f0:	83 c7 08             	add    $0x8,%edi
c00328f3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c00328fa:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032900:	83 c0 01             	add    $0x1,%eax
c0032903:	83 f8 07             	cmp    $0x7,%eax
c0032906:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003290c:	0f 8f 06 06 00 00    	jg     c0032f18 <_svfprintf_r+0xf78>
c0032912:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c0032919:	00 00 00 
c003291c:	0f 84 c6 03 00 00    	je     c0032ce8 <_svfprintf_r+0xd48>
c0032922:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0032928:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c003292e:	85 f6                	test   %esi,%esi
c0032930:	0f 8e d2 00 00 00    	jle    c0032a08 <_svfprintf_r+0xa68>
c0032936:	83 fe 10             	cmp    $0x10,%esi
c0032939:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003293f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032945:	7f 11                	jg     c0032958 <_svfprintf_r+0x9b8>
c0032947:	eb 6b                	jmp    c00329b4 <_svfprintf_r+0xa14>
c0032949:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032950:	83 ee 10             	sub    $0x10,%esi
c0032953:	83 fe 10             	cmp    $0x10,%esi
c0032956:	7e 5c                	jle    c00329b4 <_svfprintf_r+0xa14>
c0032958:	83 c0 01             	add    $0x1,%eax
c003295b:	83 c1 10             	add    $0x10,%ecx
c003295e:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c0032964:	83 c7 08             	add    $0x8,%edi
c0032967:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003296e:	83 f8 07             	cmp    $0x7,%eax
c0032971:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032977:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003297d:	7e d1                	jle    c0032950 <_svfprintf_r+0x9b0>
c003297f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032982:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032986:	89 44 24 04          	mov    %eax,0x4(%esp)
c003298a:	8b 45 08             	mov    0x8(%ebp),%eax
c003298d:	89 04 24             	mov    %eax,(%esp)
c0032990:	e8 8b 41 00 00       	call   c0036b20 <__ssprint_r>
c0032995:	85 c0                	test   %eax,%eax
c0032997:	0f 85 d3 f7 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c003299d:	83 ee 10             	sub    $0x10,%esi
c00329a0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00329a6:	83 fe 10             	cmp    $0x10,%esi
c00329a9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329af:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329b2:	7f a4                	jg     c0032958 <_svfprintf_r+0x9b8>
c00329b4:	83 c0 01             	add    $0x1,%eax
c00329b7:	01 f1                	add    %esi,%ecx
c00329b9:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c00329bf:	83 c7 08             	add    $0x8,%edi
c00329c2:	89 77 fc             	mov    %esi,-0x4(%edi)
c00329c5:	83 f8 07             	cmp    $0x7,%eax
c00329c8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329ce:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329d4:	7e 32                	jle    c0032a08 <_svfprintf_r+0xa68>
c00329d6:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00329dc:	89 44 24 08          	mov    %eax,0x8(%esp)
c00329e0:	8b 45 0c             	mov    0xc(%ebp),%eax
c00329e3:	89 44 24 04          	mov    %eax,0x4(%esp)
c00329e7:	8b 45 08             	mov    0x8(%ebp),%eax
c00329ea:	89 04 24             	mov    %eax,(%esp)
c00329ed:	e8 2e 41 00 00       	call   c0036b20 <__ssprint_r>
c00329f2:	85 c0                	test   %eax,%eax
c00329f4:	0f 85 76 f7 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c00329fa:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a00:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a03:	90                   	nop
c0032a04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032a08:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c0032a0f:	01 00 00 
c0032a12:	0f 85 50 01 00 00    	jne    c0032b68 <_svfprintf_r+0xbc8>
c0032a18:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032a1e:	89 07                	mov    %eax,(%edi)
c0032a20:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c0032a26:	01 c1                	add    %eax,%ecx
c0032a28:	89 47 04             	mov    %eax,0x4(%edi)
c0032a2b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a31:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a37:	83 c0 01             	add    $0x1,%eax
c0032a3a:	83 f8 07             	cmp    $0x7,%eax
c0032a3d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a43:	0f 8f 6a 04 00 00    	jg     c0032eb3 <_svfprintf_r+0xf13>
c0032a49:	83 c7 08             	add    $0x8,%edi
c0032a4c:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032a53:	0f 84 d7 00 00 00    	je     c0032b30 <_svfprintf_r+0xb90>
c0032a59:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a5f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032a65:	85 f6                	test   %esi,%esi
c0032a67:	0f 8e c3 00 00 00    	jle    c0032b30 <_svfprintf_r+0xb90>
c0032a6d:	83 fe 10             	cmp    $0x10,%esi
c0032a70:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a76:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032a7c:	7f 0a                	jg     c0032a88 <_svfprintf_r+0xae8>
c0032a7e:	eb 64                	jmp    c0032ae4 <_svfprintf_r+0xb44>
c0032a80:	83 ee 10             	sub    $0x10,%esi
c0032a83:	83 fe 10             	cmp    $0x10,%esi
c0032a86:	7e 5c                	jle    c0032ae4 <_svfprintf_r+0xb44>
c0032a88:	83 c0 01             	add    $0x1,%eax
c0032a8b:	83 c1 10             	add    $0x10,%ecx
c0032a8e:	c7 07 8c 9a 03 c0    	movl   $0xc0039a8c,(%edi)
c0032a94:	83 c7 08             	add    $0x8,%edi
c0032a97:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032a9e:	83 f8 07             	cmp    $0x7,%eax
c0032aa1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032aa7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032aad:	7e d1                	jle    c0032a80 <_svfprintf_r+0xae0>
c0032aaf:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ab2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032ab6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032aba:	8b 45 08             	mov    0x8(%ebp),%eax
c0032abd:	89 04 24             	mov    %eax,(%esp)
c0032ac0:	e8 5b 40 00 00       	call   c0036b20 <__ssprint_r>
c0032ac5:	85 c0                	test   %eax,%eax
c0032ac7:	0f 85 a3 f6 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0032acd:	83 ee 10             	sub    $0x10,%esi
c0032ad0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ad6:	83 fe 10             	cmp    $0x10,%esi
c0032ad9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032adf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ae2:	7f a4                	jg     c0032a88 <_svfprintf_r+0xae8>
c0032ae4:	83 c0 01             	add    $0x1,%eax
c0032ae7:	01 f1                	add    %esi,%ecx
c0032ae9:	83 f8 07             	cmp    $0x7,%eax
c0032aec:	c7 07 8c 9a 03 c0    	movl   $0xc0039a8c,(%edi)
c0032af2:	89 77 04             	mov    %esi,0x4(%edi)
c0032af5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032afb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b01:	7e 2d                	jle    c0032b30 <_svfprintf_r+0xb90>
c0032b03:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032b09:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032b0d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032b10:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032b14:	8b 45 08             	mov    0x8(%ebp),%eax
c0032b17:	89 04 24             	mov    %eax,(%esp)
c0032b1a:	e8 01 40 00 00       	call   c0036b20 <__ssprint_r>
c0032b1f:	85 c0                	test   %eax,%eax
c0032b21:	0f 85 49 f6 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0032b27:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032b2d:	8d 76 00             	lea    0x0(%esi),%esi
c0032b30:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032b36:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032b3c:	39 c2                	cmp    %eax,%edx
c0032b3e:	0f 4d c2             	cmovge %edx,%eax
c0032b41:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032b47:	85 c9                	test   %ecx,%ecx
c0032b49:	0f 85 99 03 00 00    	jne    c0032ee8 <_svfprintf_r+0xf48>
c0032b4f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032b56:	00 00 00 
c0032b59:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b5c:	e9 da f4 ff ff       	jmp    c003203b <_svfprintf_r+0x9b>
c0032b61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032b68:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032b6f:	0f 8e 5b 02 00 00    	jle    c0032dd0 <_svfprintf_r+0xe30>
c0032b75:	d9 ee                	fldz   
c0032b77:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032b7d:	df e9                	fucomip %st(1),%st
c0032b7f:	dd d8                	fstp   %st(0)
c0032b81:	0f 8a 59 04 00 00    	jp     c0032fe0 <_svfprintf_r+0x1040>
c0032b87:	0f 85 53 04 00 00    	jne    c0032fe0 <_svfprintf_r+0x1040>
c0032b8d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b93:	83 c1 01             	add    $0x1,%ecx
c0032b96:	83 c7 08             	add    $0x8,%edi
c0032b99:	c7 47 f8 13 99 03 c0 	movl   $0xc0039913,-0x8(%edi)
c0032ba0:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032ba7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bad:	83 c0 01             	add    $0x1,%eax
c0032bb0:	83 f8 07             	cmp    $0x7,%eax
c0032bb3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032bb9:	0f 8f 63 09 00 00    	jg     c0033522 <_svfprintf_r+0x1582>
c0032bbf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032bc5:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032bcb:	7c 0d                	jl     c0032bda <_svfprintf_r+0xc3a>
c0032bcd:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032bd4:	0f 84 72 fe ff ff    	je     c0032a4c <_svfprintf_r+0xaac>
c0032bda:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032be0:	83 c7 08             	add    $0x8,%edi
c0032be3:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032be6:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032bec:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032bef:	01 c1                	add    %eax,%ecx
c0032bf1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032bf7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bfd:	83 c0 01             	add    $0x1,%eax
c0032c00:	83 f8 07             	cmp    $0x7,%eax
c0032c03:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c09:	0f 8f dc 0b 00 00    	jg     c00337eb <_svfprintf_r+0x184b>
c0032c0f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032c15:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032c18:	85 f6                	test   %esi,%esi
c0032c1a:	0f 8e 2c fe ff ff    	jle    c0032a4c <_svfprintf_r+0xaac>
c0032c20:	83 fe 10             	cmp    $0x10,%esi
c0032c23:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c29:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032c2f:	7f 13                	jg     c0032c44 <_svfprintf_r+0xca4>
c0032c31:	e9 e6 05 00 00       	jmp    c003321c <_svfprintf_r+0x127c>
c0032c36:	66 90                	xchg   %ax,%ax
c0032c38:	83 ee 10             	sub    $0x10,%esi
c0032c3b:	83 fe 10             	cmp    $0x10,%esi
c0032c3e:	0f 8e d8 05 00 00    	jle    c003321c <_svfprintf_r+0x127c>
c0032c44:	83 c0 01             	add    $0x1,%eax
c0032c47:	83 c1 10             	add    $0x10,%ecx
c0032c4a:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c0032c50:	83 c7 08             	add    $0x8,%edi
c0032c53:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032c5a:	83 f8 07             	cmp    $0x7,%eax
c0032c5d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c63:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c69:	7e cd                	jle    c0032c38 <_svfprintf_r+0xc98>
c0032c6b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c6e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032c72:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032c76:	8b 45 08             	mov    0x8(%ebp),%eax
c0032c79:	89 04 24             	mov    %eax,(%esp)
c0032c7c:	e8 9f 3e 00 00       	call   c0036b20 <__ssprint_r>
c0032c81:	85 c0                	test   %eax,%eax
c0032c83:	0f 85 e7 f4 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0032c89:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032c8f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032c92:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c98:	eb 9e                	jmp    c0032c38 <_svfprintf_r+0xc98>
c0032c9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032ca0:	84 c0                	test   %al,%al
c0032ca2:	75 2c                	jne    c0032cd0 <_svfprintf_r+0xd30>
c0032ca4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032cab:	74 23                	je     c0032cd0 <_svfprintf_r+0xd30>
c0032cad:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032cb3:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032cb7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032cbd:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032cc0:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032cc6:	e9 2d f7 ff ff       	jmp    c00323f8 <_svfprintf_r+0x458>
c0032ccb:	90                   	nop
c0032ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032cd0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032cd3:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032cda:	00 00 00 
c0032cdd:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032ce3:	e9 10 f7 ff ff       	jmp    c00323f8 <_svfprintf_r+0x458>
c0032ce8:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032cee:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032cf4:	85 f6                	test   %esi,%esi
c0032cf6:	0f 8e 26 fc ff ff    	jle    c0032922 <_svfprintf_r+0x982>
c0032cfc:	83 fe 10             	cmp    $0x10,%esi
c0032cff:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d05:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032d0b:	7f 0b                	jg     c0032d18 <_svfprintf_r+0xd78>
c0032d0d:	eb 65                	jmp    c0032d74 <_svfprintf_r+0xdd4>
c0032d0f:	90                   	nop
c0032d10:	83 ee 10             	sub    $0x10,%esi
c0032d13:	83 fe 10             	cmp    $0x10,%esi
c0032d16:	7e 5c                	jle    c0032d74 <_svfprintf_r+0xdd4>
c0032d18:	83 c0 01             	add    $0x1,%eax
c0032d1b:	83 c1 10             	add    $0x10,%ecx
c0032d1e:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c0032d24:	83 c7 08             	add    $0x8,%edi
c0032d27:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032d2e:	83 f8 07             	cmp    $0x7,%eax
c0032d31:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d37:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d3d:	7e d1                	jle    c0032d10 <_svfprintf_r+0xd70>
c0032d3f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d42:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032d46:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d4a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d4d:	89 04 24             	mov    %eax,(%esp)
c0032d50:	e8 cb 3d 00 00       	call   c0036b20 <__ssprint_r>
c0032d55:	85 c0                	test   %eax,%eax
c0032d57:	0f 85 13 f4 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0032d5d:	83 ee 10             	sub    $0x10,%esi
c0032d60:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d66:	83 fe 10             	cmp    $0x10,%esi
c0032d69:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d6f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d72:	7f a4                	jg     c0032d18 <_svfprintf_r+0xd78>
c0032d74:	83 c0 01             	add    $0x1,%eax
c0032d77:	01 f1                	add    %esi,%ecx
c0032d79:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c0032d7f:	83 c7 08             	add    $0x8,%edi
c0032d82:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032d85:	83 f8 07             	cmp    $0x7,%eax
c0032d88:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d8e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d94:	0f 8e 88 fb ff ff    	jle    c0032922 <_svfprintf_r+0x982>
c0032d9a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032da0:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032da4:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032da7:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032dab:	8b 45 08             	mov    0x8(%ebp),%eax
c0032dae:	89 04 24             	mov    %eax,(%esp)
c0032db1:	e8 6a 3d 00 00       	call   c0036b20 <__ssprint_r>
c0032db6:	85 c0                	test   %eax,%eax
c0032db8:	0f 85 b2 f3 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0032dbe:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032dc4:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032dc7:	e9 56 fb ff ff       	jmp    c0032922 <_svfprintf_r+0x982>
c0032dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032dd0:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032dd7:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032ddd:	0f 8e df 05 00 00    	jle    c00333c2 <_svfprintf_r+0x1422>
c0032de3:	89 07                	mov    %eax,(%edi)
c0032de5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032deb:	8d 51 01             	lea    0x1(%ecx),%edx
c0032dee:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032df5:	83 c7 08             	add    $0x8,%edi
c0032df8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032dfe:	83 c0 01             	add    $0x1,%eax
c0032e01:	83 f8 07             	cmp    $0x7,%eax
c0032e04:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e0a:	0f 8f 59 06 00 00    	jg     c0033469 <_svfprintf_r+0x14c9>
c0032e10:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032e16:	83 c0 01             	add    $0x1,%eax
c0032e19:	83 c7 08             	add    $0x8,%edi
c0032e1c:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e22:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032e25:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032e2b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032e2e:	01 da                	add    %ebx,%edx
c0032e30:	83 f8 07             	cmp    $0x7,%eax
c0032e33:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e39:	0f 8f f2 05 00 00    	jg     c0033431 <_svfprintf_r+0x1491>
c0032e3f:	d9 ee                	fldz   
c0032e41:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032e47:	df e9                	fucomip %st(1),%st
c0032e49:	dd d8                	fstp   %st(0)
c0032e4b:	7a 06                	jp     c0032e53 <_svfprintf_r+0xeb3>
c0032e4d:	0f 84 33 03 00 00    	je     c0033186 <_svfprintf_r+0x11e6>
c0032e53:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032e59:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032e5f:	83 c1 01             	add    $0x1,%ecx
c0032e62:	89 0f                	mov    %ecx,(%edi)
c0032e64:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032e67:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032e6a:	01 ca                	add    %ecx,%edx
c0032e6c:	83 c0 01             	add    $0x1,%eax
c0032e6f:	83 f8 07             	cmp    $0x7,%eax
c0032e72:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e78:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e7e:	0f 8f 75 05 00 00    	jg     c00333f9 <_svfprintf_r+0x1459>
c0032e84:	83 c7 08             	add    $0x8,%edi
c0032e87:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032e8d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032e93:	89 0f                	mov    %ecx,(%edi)
c0032e95:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032e98:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032e9b:	83 c0 01             	add    $0x1,%eax
c0032e9e:	83 f8 07             	cmp    $0x7,%eax
c0032ea1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ea7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ead:	0f 8e 96 fb ff ff    	jle    c0032a49 <_svfprintf_r+0xaa9>
c0032eb3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032eb9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ebd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ec0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ec4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ec7:	89 04 24             	mov    %eax,(%esp)
c0032eca:	e8 51 3c 00 00       	call   c0036b20 <__ssprint_r>
c0032ecf:	85 c0                	test   %eax,%eax
c0032ed1:	0f 85 99 f2 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0032ed7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032edd:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ee0:	e9 67 fb ff ff       	jmp    c0032a4c <_svfprintf_r+0xaac>
c0032ee5:	8d 76 00             	lea    0x0(%esi),%esi
c0032ee8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032eee:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ef2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ef5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ef9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032efc:	89 04 24             	mov    %eax,(%esp)
c0032eff:	e8 1c 3c 00 00       	call   c0036b20 <__ssprint_r>
c0032f04:	85 c0                	test   %eax,%eax
c0032f06:	0f 84 43 fc ff ff    	je     c0032b4f <_svfprintf_r+0xbaf>
c0032f0c:	e9 5f f2 ff ff       	jmp    c0032170 <_svfprintf_r+0x1d0>
c0032f11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032f18:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f1e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f22:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f25:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f29:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f2c:	89 04 24             	mov    %eax,(%esp)
c0032f2f:	e8 ec 3b 00 00       	call   c0036b20 <__ssprint_r>
c0032f34:	85 c0                	test   %eax,%eax
c0032f36:	0f 85 34 f2 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0032f3c:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f42:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f45:	e9 c8 f9 ff ff       	jmp    c0032912 <_svfprintf_r+0x972>
c0032f4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f50:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f56:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f5a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f5d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f61:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f64:	89 04 24             	mov    %eax,(%esp)
c0032f67:	e8 b4 3b 00 00       	call   c0036b20 <__ssprint_r>
c0032f6c:	85 c0                	test   %eax,%eax
c0032f6e:	0f 85 fc f1 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0032f74:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f7a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f7d:	e9 53 f9 ff ff       	jmp    c00328d5 <_svfprintf_r+0x935>
c0032f82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f88:	89 c2                	mov    %eax,%edx
c0032f8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f90:	89 c8                	mov    %ecx,%eax
c0032f92:	83 ea 01             	sub    $0x1,%edx
c0032f95:	83 e0 07             	and    $0x7,%eax
c0032f98:	c1 e9 03             	shr    $0x3,%ecx
c0032f9b:	83 c0 30             	add    $0x30,%eax
c0032f9e:	85 c9                	test   %ecx,%ecx
c0032fa0:	88 02                	mov    %al,(%edx)
c0032fa2:	75 ec                	jne    c0032f90 <_svfprintf_r+0xff0>
c0032fa4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032fab:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0032fb1:	0f 84 5b 01 00 00    	je     c0033112 <_svfprintf_r+0x1172>
c0032fb7:	3c 30                	cmp    $0x30,%al
c0032fb9:	74 0b                	je     c0032fc6 <_svfprintf_r+0x1026>
c0032fbb:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0032fc2:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0032fc6:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032fc9:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0032fcf:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032fd5:	e9 1e f4 ff ff       	jmp    c00323f8 <_svfprintf_r+0x458>
c0032fda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032fe0:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0032fe6:	85 db                	test   %ebx,%ebx
c0032fe8:	0f 8e 66 05 00 00    	jle    c0033554 <_svfprintf_r+0x15b4>
c0032fee:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0032ff4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032ffa:	01 d0                	add    %edx,%eax
c0032ffc:	89 c3                	mov    %eax,%ebx
c0032ffe:	29 d3                	sub    %edx,%ebx
c0033000:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0033006:	89 d0                	mov    %edx,%eax
c0033008:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c003300e:	39 d3                	cmp    %edx,%ebx
c0033010:	0f 4f da             	cmovg  %edx,%ebx
c0033013:	85 db                	test   %ebx,%ebx
c0033015:	7e 28                	jle    c003303f <_svfprintf_r+0x109f>
c0033017:	89 07                	mov    %eax,(%edi)
c0033019:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003301f:	01 d9                	add    %ebx,%ecx
c0033021:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033024:	83 c7 08             	add    $0x8,%edi
c0033027:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003302d:	83 c0 01             	add    $0x1,%eax
c0033030:	83 f8 07             	cmp    $0x7,%eax
c0033033:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033039:	0f 8f 58 09 00 00    	jg     c0033997 <_svfprintf_r+0x19f7>
c003303f:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0033045:	31 c0                	xor    %eax,%eax
c0033047:	85 db                	test   %ebx,%ebx
c0033049:	0f 49 c3             	cmovns %ebx,%eax
c003304c:	29 c6                	sub    %eax,%esi
c003304e:	85 f6                	test   %esi,%esi
c0033050:	0f 8e 40 02 00 00    	jle    c0033296 <_svfprintf_r+0x12f6>
c0033056:	83 fe 10             	cmp    $0x10,%esi
c0033059:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003305f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033065:	7f 15                	jg     c003307c <_svfprintf_r+0x10dc>
c0033067:	e9 db 01 00 00       	jmp    c0033247 <_svfprintf_r+0x12a7>
c003306c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033070:	83 ee 10             	sub    $0x10,%esi
c0033073:	83 fe 10             	cmp    $0x10,%esi
c0033076:	0f 8e cb 01 00 00    	jle    c0033247 <_svfprintf_r+0x12a7>
c003307c:	83 c0 01             	add    $0x1,%eax
c003307f:	83 c1 10             	add    $0x10,%ecx
c0033082:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c0033088:	83 c7 08             	add    $0x8,%edi
c003308b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033092:	83 f8 07             	cmp    $0x7,%eax
c0033095:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003309b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00330a1:	7e cd                	jle    c0033070 <_svfprintf_r+0x10d0>
c00330a3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00330a6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00330aa:	89 44 24 04          	mov    %eax,0x4(%esp)
c00330ae:	8b 45 08             	mov    0x8(%ebp),%eax
c00330b1:	89 04 24             	mov    %eax,(%esp)
c00330b4:	e8 67 3a 00 00       	call   c0036b20 <__ssprint_r>
c00330b9:	85 c0                	test   %eax,%eax
c00330bb:	0f 85 af f0 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c00330c1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00330c7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00330ca:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00330d0:	eb 9e                	jmp    c0033070 <_svfprintf_r+0x10d0>
c00330d2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00330d5:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c00330da:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00330e0:	89 c7                	mov    %eax,%edi
c00330e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00330e8:	89 c8                	mov    %ecx,%eax
c00330ea:	83 ef 01             	sub    $0x1,%edi
c00330ed:	f7 e6                	mul    %esi
c00330ef:	c1 ea 03             	shr    $0x3,%edx
c00330f2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00330f5:	01 c0                	add    %eax,%eax
c00330f7:	29 c1                	sub    %eax,%ecx
c00330f9:	83 c1 30             	add    $0x30,%ecx
c00330fc:	85 d2                	test   %edx,%edx
c00330fe:	88 0f                	mov    %cl,(%edi)
c0033100:	89 d1                	mov    %edx,%ecx
c0033102:	75 e4                	jne    c00330e8 <_svfprintf_r+0x1148>
c0033104:	89 fa                	mov    %edi,%edx
c0033106:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c003310c:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0033112:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033115:	29 d0                	sub    %edx,%eax
c0033117:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003311d:	e9 d6 f2 ff ff       	jmp    c00323f8 <_svfprintf_r+0x458>
c0033122:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033128:	83 f9 09             	cmp    $0x9,%ecx
c003312b:	77 a5                	ja     c00330d2 <_svfprintf_r+0x1132>
c003312d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0033133:	83 c1 30             	add    $0x30,%ecx
c0033136:	88 4d a7             	mov    %cl,-0x59(%ebp)
c0033139:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c003313f:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0033142:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033148:	e9 ab f2 ff ff       	jmp    c00323f8 <_svfprintf_r+0x458>
c003314d:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033153:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033157:	8b 45 0c             	mov    0xc(%ebp),%eax
c003315a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003315e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033161:	89 04 24             	mov    %eax,(%esp)
c0033164:	e8 b7 39 00 00       	call   c0036b20 <__ssprint_r>
c0033169:	85 c0                	test   %eax,%eax
c003316b:	0f 85 ff ef ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0033171:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033178:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003317b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033181:	e9 18 f7 ff ff       	jmp    c003289e <_svfprintf_r+0x8fe>
c0033186:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003318c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003318f:	85 f6                	test   %esi,%esi
c0033191:	0f 8e f0 fc ff ff    	jle    c0032e87 <_svfprintf_r+0xee7>
c0033197:	83 fe 10             	cmp    $0x10,%esi
c003319a:	7e 70                	jle    c003320c <_svfprintf_r+0x126c>
c003319c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00331a2:	eb 0c                	jmp    c00331b0 <_svfprintf_r+0x1210>
c00331a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00331a8:	83 ee 10             	sub    $0x10,%esi
c00331ab:	83 fe 10             	cmp    $0x10,%esi
c00331ae:	7e 5c                	jle    c003320c <_svfprintf_r+0x126c>
c00331b0:	83 c0 01             	add    $0x1,%eax
c00331b3:	83 c2 10             	add    $0x10,%edx
c00331b6:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c00331bc:	83 c7 08             	add    $0x8,%edi
c00331bf:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00331c6:	83 f8 07             	cmp    $0x7,%eax
c00331c9:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00331cf:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00331d5:	7e d1                	jle    c00331a8 <_svfprintf_r+0x1208>
c00331d7:	8b 45 0c             	mov    0xc(%ebp),%eax
c00331da:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00331de:	89 44 24 04          	mov    %eax,0x4(%esp)
c00331e2:	8b 45 08             	mov    0x8(%ebp),%eax
c00331e5:	89 04 24             	mov    %eax,(%esp)
c00331e8:	e8 33 39 00 00       	call   c0036b20 <__ssprint_r>
c00331ed:	85 c0                	test   %eax,%eax
c00331ef:	0f 85 7b ef ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c00331f5:	83 ee 10             	sub    $0x10,%esi
c00331f8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00331fe:	83 fe 10             	cmp    $0x10,%esi
c0033201:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033207:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003320a:	7f a4                	jg     c00331b0 <_svfprintf_r+0x1210>
c003320c:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c0033212:	01 f2                	add    %esi,%edx
c0033214:	89 77 04             	mov    %esi,0x4(%edi)
c0033217:	e9 50 fc ff ff       	jmp    c0032e6c <_svfprintf_r+0xecc>
c003321c:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c0033222:	01 f1                	add    %esi,%ecx
c0033224:	89 77 04             	mov    %esi,0x4(%edi)
c0033227:	e9 6f fc ff ff       	jmp    c0032e9b <_svfprintf_r+0xefb>
c003322c:	8b 45 14             	mov    0x14(%ebp),%eax
c003322f:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c0033235:	8b 00                	mov    (%eax),%eax
c0033237:	89 10                	mov    %edx,(%eax)
c0033239:	8b 45 14             	mov    0x14(%ebp),%eax
c003323c:	83 c0 04             	add    $0x4,%eax
c003323f:	89 45 14             	mov    %eax,0x14(%ebp)
c0033242:	e9 f4 ed ff ff       	jmp    c003203b <_svfprintf_r+0x9b>
c0033247:	83 c0 01             	add    $0x1,%eax
c003324a:	01 f1                	add    %esi,%ecx
c003324c:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c0033252:	83 c7 08             	add    $0x8,%edi
c0033255:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033258:	83 f8 07             	cmp    $0x7,%eax
c003325b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033261:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033267:	7e 2d                	jle    c0033296 <_svfprintf_r+0x12f6>
c0033269:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003326f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033273:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033276:	89 44 24 04          	mov    %eax,0x4(%esp)
c003327a:	8b 45 08             	mov    0x8(%ebp),%eax
c003327d:	89 04 24             	mov    %eax,(%esp)
c0033280:	e8 9b 38 00 00       	call   c0036b20 <__ssprint_r>
c0033285:	85 c0                	test   %eax,%eax
c0033287:	0f 85 e3 ee ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c003328d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033293:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033296:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003329c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c00332a2:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c00332a8:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c00332ae:	89 c6                	mov    %eax,%esi
c00332b0:	7c 0d                	jl     c00332bf <_svfprintf_r+0x131f>
c00332b2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00332b9:	0f 84 5e 05 00 00    	je     c003381d <_svfprintf_r+0x187d>
c00332bf:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00332c5:	89 07                	mov    %eax,(%edi)
c00332c7:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00332cd:	01 c1                	add    %eax,%ecx
c00332cf:	89 47 04             	mov    %eax,0x4(%edi)
c00332d2:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332d8:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332de:	83 c0 01             	add    $0x1,%eax
c00332e1:	83 f8 07             	cmp    $0x7,%eax
c00332e4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332ea:	0f 8f d9 06 00 00    	jg     c00339c9 <_svfprintf_r+0x1a29>
c00332f0:	83 c7 08             	add    $0x8,%edi
c00332f3:	89 d0                	mov    %edx,%eax
c00332f5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c00332fb:	89 f2                	mov    %esi,%edx
c00332fd:	29 f3                	sub    %esi,%ebx
c00332ff:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033305:	29 c6                	sub    %eax,%esi
c0033307:	39 de                	cmp    %ebx,%esi
c0033309:	0f 4e de             	cmovle %esi,%ebx
c003330c:	85 db                	test   %ebx,%ebx
c003330e:	7e 29                	jle    c0033339 <_svfprintf_r+0x1399>
c0033310:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033316:	01 d9                	add    %ebx,%ecx
c0033318:	83 c7 08             	add    $0x8,%edi
c003331b:	89 57 f8             	mov    %edx,-0x8(%edi)
c003331e:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0033321:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033327:	83 c0 01             	add    $0x1,%eax
c003332a:	83 f8 07             	cmp    $0x7,%eax
c003332d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033333:	0f 8f c8 06 00 00    	jg     c0033a01 <_svfprintf_r+0x1a61>
c0033339:	31 c0                	xor    %eax,%eax
c003333b:	85 db                	test   %ebx,%ebx
c003333d:	0f 49 c3             	cmovns %ebx,%eax
c0033340:	29 c6                	sub    %eax,%esi
c0033342:	85 f6                	test   %esi,%esi
c0033344:	0f 8e 02 f7 ff ff    	jle    c0032a4c <_svfprintf_r+0xaac>
c003334a:	83 fe 10             	cmp    $0x10,%esi
c003334d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033353:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033359:	7f 11                	jg     c003336c <_svfprintf_r+0x13cc>
c003335b:	e9 bc fe ff ff       	jmp    c003321c <_svfprintf_r+0x127c>
c0033360:	83 ee 10             	sub    $0x10,%esi
c0033363:	83 fe 10             	cmp    $0x10,%esi
c0033366:	0f 8e b0 fe ff ff    	jle    c003321c <_svfprintf_r+0x127c>
c003336c:	83 c0 01             	add    $0x1,%eax
c003336f:	83 c1 10             	add    $0x10,%ecx
c0033372:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c0033378:	83 c7 08             	add    $0x8,%edi
c003337b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033382:	83 f8 07             	cmp    $0x7,%eax
c0033385:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003338b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033391:	7e cd                	jle    c0033360 <_svfprintf_r+0x13c0>
c0033393:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033396:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003339a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003339e:	8b 45 08             	mov    0x8(%ebp),%eax
c00333a1:	89 04 24             	mov    %eax,(%esp)
c00333a4:	e8 77 37 00 00       	call   c0036b20 <__ssprint_r>
c00333a9:	85 c0                	test   %eax,%eax
c00333ab:	0f 85 bf ed ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c00333b1:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00333b7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00333ba:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333c0:	eb 9e                	jmp    c0033360 <_svfprintf_r+0x13c0>
c00333c2:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c00333c9:	0f 85 14 fa ff ff    	jne    c0032de3 <_svfprintf_r+0xe43>
c00333cf:	89 07                	mov    %eax,(%edi)
c00333d1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333d7:	8d 51 01             	lea    0x1(%ecx),%edx
c00333da:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c00333e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00333e7:	83 c0 01             	add    $0x1,%eax
c00333ea:	83 f8 07             	cmp    $0x7,%eax
c00333ed:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333f3:	0f 8e 8b fa ff ff    	jle    c0032e84 <_svfprintf_r+0xee4>
c00333f9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00333ff:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033403:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033406:	89 44 24 04          	mov    %eax,0x4(%esp)
c003340a:	8b 45 08             	mov    0x8(%ebp),%eax
c003340d:	89 04 24             	mov    %eax,(%esp)
c0033410:	e8 0b 37 00 00       	call   c0036b20 <__ssprint_r>
c0033415:	85 c0                	test   %eax,%eax
c0033417:	0f 85 53 ed ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c003341d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033423:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033426:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003342c:	e9 56 fa ff ff       	jmp    c0032e87 <_svfprintf_r+0xee7>
c0033431:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033437:	89 44 24 08          	mov    %eax,0x8(%esp)
c003343b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003343e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033442:	8b 45 08             	mov    0x8(%ebp),%eax
c0033445:	89 04 24             	mov    %eax,(%esp)
c0033448:	e8 d3 36 00 00       	call   c0036b20 <__ssprint_r>
c003344d:	85 c0                	test   %eax,%eax
c003344f:	0f 85 1b ed ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0033455:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003345b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003345e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033464:	e9 d6 f9 ff ff       	jmp    c0032e3f <_svfprintf_r+0xe9f>
c0033469:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003346f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033473:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033476:	89 44 24 04          	mov    %eax,0x4(%esp)
c003347a:	8b 45 08             	mov    0x8(%ebp),%eax
c003347d:	89 04 24             	mov    %eax,(%esp)
c0033480:	e8 9b 36 00 00       	call   c0036b20 <__ssprint_r>
c0033485:	85 c0                	test   %eax,%eax
c0033487:	0f 85 e3 ec ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c003348d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033493:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033496:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003349c:	e9 6f f9 ff ff       	jmp    c0032e10 <_svfprintf_r+0xe70>
c00334a1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00334a7:	dd 1c 24             	fstpl  (%esp)
c00334aa:	e8 11 35 00 00       	call   c00369c0 <__fpclassifyd>
c00334af:	85 c0                	test   %eax,%eax
c00334b1:	0f 85 a3 01 00 00    	jne    c003365a <_svfprintf_r+0x16ba>
c00334b7:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00334be:	ba e2 98 03 c0       	mov    $0xc00398e2,%edx
c00334c3:	b8 e6 98 03 c0       	mov    $0xc00398e6,%eax
c00334c8:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00334cf:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c00334d6:	00 00 00 
c00334d9:	0f 4e c2             	cmovle %edx,%eax
c00334dc:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00334e2:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c00334e9:	ff ff ff 
c00334ec:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00334f3:	00 00 00 
c00334f6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00334fd:	00 00 00 
c0033500:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033507:	00 00 00 
c003350a:	e9 29 ed ff ff       	jmp    c0032238 <_svfprintf_r+0x298>
c003350f:	dd 00                	fldl   (%eax)
c0033511:	83 c0 08             	add    $0x8,%eax
c0033514:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c003351a:	89 45 14             	mov    %eax,0x14(%ebp)
c003351d:	e9 e6 ef ff ff       	jmp    c0032508 <_svfprintf_r+0x568>
c0033522:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033528:	89 44 24 08          	mov    %eax,0x8(%esp)
c003352c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003352f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033533:	8b 45 08             	mov    0x8(%ebp),%eax
c0033536:	89 04 24             	mov    %eax,(%esp)
c0033539:	e8 e2 35 00 00       	call   c0036b20 <__ssprint_r>
c003353e:	85 c0                	test   %eax,%eax
c0033540:	0f 85 2a ec ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0033546:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003354c:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003354f:	e9 6b f6 ff ff       	jmp    c0032bbf <_svfprintf_r+0xc1f>
c0033554:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003355a:	83 c1 01             	add    $0x1,%ecx
c003355d:	83 c7 08             	add    $0x8,%edi
c0033560:	c7 47 f8 13 99 03 c0 	movl   $0xc0039913,-0x8(%edi)
c0033567:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003356e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033574:	83 c0 01             	add    $0x1,%eax
c0033577:	83 f8 07             	cmp    $0x7,%eax
c003357a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033580:	0f 8f ef 02 00 00    	jg     c0033875 <_svfprintf_r+0x18d5>
c0033586:	85 db                	test   %ebx,%ebx
c0033588:	75 17                	jne    c00335a1 <_svfprintf_r+0x1601>
c003358a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033590:	85 d2                	test   %edx,%edx
c0033592:	75 0d                	jne    c00335a1 <_svfprintf_r+0x1601>
c0033594:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003359b:	0f 84 ab f4 ff ff    	je     c0032a4c <_svfprintf_r+0xaac>
c00335a1:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c00335a7:	83 c7 08             	add    $0x8,%edi
c00335aa:	89 47 f8             	mov    %eax,-0x8(%edi)
c00335ad:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c00335b3:	89 47 fc             	mov    %eax,-0x4(%edi)
c00335b6:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c00335b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00335bf:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335c5:	83 c0 01             	add    $0x1,%eax
c00335c8:	83 f8 07             	cmp    $0x7,%eax
c00335cb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335d1:	0f 8f 60 03 00 00    	jg     c0033937 <_svfprintf_r+0x1997>
c00335d7:	f7 db                	neg    %ebx
c00335d9:	85 db                	test   %ebx,%ebx
c00335db:	0f 8e 21 03 00 00    	jle    c0033902 <_svfprintf_r+0x1962>
c00335e1:	83 fb 10             	cmp    $0x10,%ebx
c00335e4:	0f 8e c3 02 00 00    	jle    c00338ad <_svfprintf_r+0x190d>
c00335ea:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c00335f0:	eb 12                	jmp    c0033604 <_svfprintf_r+0x1664>
c00335f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00335f8:	83 eb 10             	sub    $0x10,%ebx
c00335fb:	83 fb 10             	cmp    $0x10,%ebx
c00335fe:	0f 8e a9 02 00 00    	jle    c00338ad <_svfprintf_r+0x190d>
c0033604:	83 c0 01             	add    $0x1,%eax
c0033607:	83 c2 10             	add    $0x10,%edx
c003360a:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c0033610:	83 c7 08             	add    $0x8,%edi
c0033613:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003361a:	83 f8 07             	cmp    $0x7,%eax
c003361d:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033623:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033629:	7e cd                	jle    c00335f8 <_svfprintf_r+0x1658>
c003362b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003362e:	89 74 24 08          	mov    %esi,0x8(%esp)
c0033632:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033636:	8b 45 08             	mov    0x8(%ebp),%eax
c0033639:	89 04 24             	mov    %eax,(%esp)
c003363c:	e8 df 34 00 00       	call   c0036b20 <__ssprint_r>
c0033641:	85 c0                	test   %eax,%eax
c0033643:	0f 85 27 eb ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0033649:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003364f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033652:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033658:	eb 9e                	jmp    c00335f8 <_svfprintf_r+0x1658>
c003365a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033660:	83 e3 df             	and    $0xffffffdf,%ebx
c0033663:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003366a:	0f 84 05 03 00 00    	je     c0033975 <_svfprintf_r+0x19d5>
c0033670:	83 fb 47             	cmp    $0x47,%ebx
c0033673:	75 16                	jne    c003368b <_svfprintf_r+0x16eb>
c0033675:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003367b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033680:	85 d2                	test   %edx,%edx
c0033682:	0f 45 c2             	cmovne %edx,%eax
c0033685:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c003368b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033691:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033697:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c003369d:	80 cc 01             	or     $0x1,%ah
c00336a0:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c00336a6:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00336ac:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c00336b3:	85 c0                	test   %eax,%eax
c00336b5:	0f 88 ba 05 00 00    	js     c0033c75 <_svfprintf_r+0x1cd5>
c00336bb:	83 fb 46             	cmp    $0x46,%ebx
c00336be:	0f 94 c0             	sete   %al
c00336c1:	89 c6                	mov    %eax,%esi
c00336c3:	0f 84 d4 03 00 00    	je     c0033a9d <_svfprintf_r+0x1afd>
c00336c9:	83 fb 45             	cmp    $0x45,%ebx
c00336cc:	0f 85 99 05 00 00    	jne    c0033c6b <_svfprintf_r+0x1ccb>
c00336d2:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00336d8:	dd 54 24 04          	fstl   0x4(%esp)
c00336dc:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c00336e3:	00 
c00336e4:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c00336ea:	8d 70 01             	lea    0x1(%eax),%esi
c00336ed:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c00336f3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c00336f7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c00336fd:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033701:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033707:	89 44 24 14          	mov    %eax,0x14(%esp)
c003370b:	8b 45 08             	mov    0x8(%ebp),%eax
c003370e:	89 74 24 10          	mov    %esi,0x10(%esp)
c0033712:	89 04 24             	mov    %eax,(%esp)
c0033715:	e8 56 09 00 00       	call   c0034070 <_dtoa_r>
c003371a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033720:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c0033723:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033729:	d9 ee                	fldz   
c003372b:	d9 c9                	fxch   %st(1)
c003372d:	df e9                	fucomip %st(1),%st
c003372f:	dd d8                	fstp   %st(0)
c0033731:	0f 8a fd 00 00 00    	jp     c0033834 <_svfprintf_r+0x1894>
c0033737:	89 c8                	mov    %ecx,%eax
c0033739:	0f 85 f5 00 00 00    	jne    c0033834 <_svfprintf_r+0x1894>
c003373f:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0033745:	83 fb 47             	cmp    $0x47,%ebx
c0033748:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c003374e:	0f 84 1e 04 00 00    	je     c0033b72 <_svfprintf_r+0x1bd2>
c0033754:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003375b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033761:	0f 8e 65 04 00 00    	jle    c0033bcc <_svfprintf_r+0x1c2c>
c0033767:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003376e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033774:	0f 84 3c 05 00 00    	je     c0033cb6 <_svfprintf_r+0x1d16>
c003377a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033780:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033786:	0f 8f f7 04 00 00    	jg     c0033c83 <_svfprintf_r+0x1ce3>
c003378c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033792:	83 e0 01             	and    $0x1,%eax
c0033795:	0f 85 e2 05 00 00    	jne    c0033d7d <_svfprintf_r+0x1ddd>
c003379b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c00337a1:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c00337a8:	00 00 00 
c00337ab:	85 d2                	test   %edx,%edx
c00337ad:	0f 49 c2             	cmovns %edx,%eax
c00337b0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00337b6:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c00337bd:	0f 85 68 03 00 00    	jne    c0033b2b <_svfprintf_r+0x1b8b>
c00337c3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00337c9:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c00337cf:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00337d6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00337dd:	00 00 00 
c00337e0:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c00337e6:	e9 4d ea ff ff       	jmp    c0032238 <_svfprintf_r+0x298>
c00337eb:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00337f1:	89 44 24 08          	mov    %eax,0x8(%esp)
c00337f5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00337f8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00337fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00337ff:	89 04 24             	mov    %eax,(%esp)
c0033802:	e8 19 33 00 00       	call   c0036b20 <__ssprint_r>
c0033807:	85 c0                	test   %eax,%eax
c0033809:	0f 85 61 e9 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c003380f:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033815:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033818:	e9 f2 f3 ff ff       	jmp    c0032c0f <_svfprintf_r+0xc6f>
c003381d:	89 d0                	mov    %edx,%eax
c003381f:	e9 d1 fa ff ff       	jmp    c00332f5 <_svfprintf_r+0x1355>
c0033824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033828:	8d 50 01             	lea    0x1(%eax),%edx
c003382b:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c0033831:	c6 00 30             	movb   $0x30,(%eax)
c0033834:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c003383a:	39 c1                	cmp    %eax,%ecx
c003383c:	77 ea                	ja     c0033828 <_svfprintf_r+0x1888>
c003383e:	e9 fc fe ff ff       	jmp    c003373f <_svfprintf_r+0x179f>
c0033843:	8b 45 08             	mov    0x8(%ebp),%eax
c0033846:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c003384d:	00 
c003384e:	89 04 24             	mov    %eax,(%esp)
c0033851:	e8 4a 1b 00 00       	call   c00353a0 <_malloc_r>
c0033856:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033859:	85 c0                	test   %eax,%eax
c003385b:	89 02                	mov    %eax,(%edx)
c003385d:	89 42 10             	mov    %eax,0x10(%edx)
c0033860:	0f 84 15 06 00 00    	je     c0033e7b <_svfprintf_r+0x1edb>
c0033866:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033869:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033870:	e9 6c e7 ff ff       	jmp    c0031fe1 <_svfprintf_r+0x41>
c0033875:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003387b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003387f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033882:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033886:	8b 45 08             	mov    0x8(%ebp),%eax
c0033889:	89 04 24             	mov    %eax,(%esp)
c003388c:	e8 8f 32 00 00       	call   c0036b20 <__ssprint_r>
c0033891:	85 c0                	test   %eax,%eax
c0033893:	0f 85 d7 e8 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0033899:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003389f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338a2:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00338a8:	e9 d9 fc ff ff       	jmp    c0033586 <_svfprintf_r+0x15e6>
c00338ad:	83 c0 01             	add    $0x1,%eax
c00338b0:	01 da                	add    %ebx,%edx
c00338b2:	c7 07 7c 9a 03 c0    	movl   $0xc0039a7c,(%edi)
c00338b8:	83 c7 08             	add    $0x8,%edi
c00338bb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00338be:	83 f8 07             	cmp    $0x7,%eax
c00338c1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00338c7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00338cd:	7e 33                	jle    c0033902 <_svfprintf_r+0x1962>
c00338cf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338d5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338d9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338dc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338e0:	8b 45 08             	mov    0x8(%ebp),%eax
c00338e3:	89 04 24             	mov    %eax,(%esp)
c00338e6:	e8 35 32 00 00       	call   c0036b20 <__ssprint_r>
c00338eb:	85 c0                	test   %eax,%eax
c00338ed:	0f 85 7d e8 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c00338f3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00338f9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338fc:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033902:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c0033908:	83 c0 01             	add    $0x1,%eax
c003390b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033911:	89 1f                	mov    %ebx,(%edi)
c0033913:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033919:	01 da                	add    %ebx,%edx
c003391b:	83 f8 07             	cmp    $0x7,%eax
c003391e:	89 5f 04             	mov    %ebx,0x4(%edi)
c0033921:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033927:	0f 8f 86 f5 ff ff    	jg     c0032eb3 <_svfprintf_r+0xf13>
c003392d:	83 c7 08             	add    $0x8,%edi
c0033930:	89 d1                	mov    %edx,%ecx
c0033932:	e9 15 f1 ff ff       	jmp    c0032a4c <_svfprintf_r+0xaac>
c0033937:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003393d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033941:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033944:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033948:	8b 45 08             	mov    0x8(%ebp),%eax
c003394b:	89 04 24             	mov    %eax,(%esp)
c003394e:	e8 cd 31 00 00       	call   c0036b20 <__ssprint_r>
c0033953:	85 c0                	test   %eax,%eax
c0033955:	0f 85 15 e8 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c003395b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033961:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033964:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003396a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033970:	e9 62 fc ff ff       	jmp    c00335d7 <_svfprintf_r+0x1637>
c0033975:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c003397c:	00 00 00 
c003397f:	e9 07 fd ff ff       	jmp    c003368b <_svfprintf_r+0x16eb>
c0033984:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003398a:	89 04 24             	mov    %eax,(%esp)
c003398d:	e8 0e 31 00 00       	call   c0036aa0 <strlen>
c0033992:	e9 6a e8 ff ff       	jmp    c0032201 <_svfprintf_r+0x261>
c0033997:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003399d:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339a1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339a4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00339ab:	89 04 24             	mov    %eax,(%esp)
c00339ae:	e8 6d 31 00 00       	call   c0036b20 <__ssprint_r>
c00339b3:	85 c0                	test   %eax,%eax
c00339b5:	0f 85 b5 e7 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c00339bb:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339c1:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339c4:	e9 76 f6 ff ff       	jmp    c003303f <_svfprintf_r+0x109f>
c00339c9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339cf:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339d3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339d6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339da:	8b 45 08             	mov    0x8(%ebp),%eax
c00339dd:	89 04 24             	mov    %eax,(%esp)
c00339e0:	e8 3b 31 00 00       	call   c0036b20 <__ssprint_r>
c00339e5:	85 c0                	test   %eax,%eax
c00339e7:	0f 85 83 e7 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c00339ed:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00339f3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339f6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339fc:	e9 f4 f8 ff ff       	jmp    c00332f5 <_svfprintf_r+0x1355>
c0033a01:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033a07:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033a0b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033a0e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033a12:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a15:	89 04 24             	mov    %eax,(%esp)
c0033a18:	e8 03 31 00 00       	call   c0036b20 <__ssprint_r>
c0033a1d:	85 c0                	test   %eax,%eax
c0033a1f:	0f 85 4b e7 ff ff    	jne    c0032170 <_svfprintf_r+0x1d0>
c0033a25:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c0033a2b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033a2e:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c0033a34:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033a3a:	e9 fa f8 ff ff       	jmp    c0033339 <_svfprintf_r+0x1399>
c0033a3f:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033a45:	b0 06                	mov    $0x6,%al
c0033a47:	89 75 14             	mov    %esi,0x14(%ebp)
c0033a4a:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a51:	00 00 00 
c0033a54:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033a5b:	00 00 00 
c0033a5e:	83 fa 06             	cmp    $0x6,%edx
c0033a61:	0f 46 c2             	cmovbe %edx,%eax
c0033a64:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033a6a:	85 c0                	test   %eax,%eax
c0033a6c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033a72:	c7 85 28 ff ff ff 0c 	movl   $0xc003990c,-0xd8(%ebp)
c0033a79:	99 03 c0 
c0033a7c:	0f 49 d0             	cmovns %eax,%edx
c0033a7f:	31 db                	xor    %ebx,%ebx
c0033a81:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033a87:	e9 b7 e7 ff ff       	jmp    c0032243 <_svfprintf_r+0x2a3>
c0033a8c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033a93:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033a98:	e9 9d ea ff ff       	jmp    c003253a <_svfprintf_r+0x59a>
c0033a9d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033aa2:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033aa8:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033aac:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033ab2:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033ab6:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033abc:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033ac0:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033ac6:	dd 54 24 04          	fstl   0x4(%esp)
c0033aca:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033ace:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033ad4:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033ad8:	8b 45 08             	mov    0x8(%ebp),%eax
c0033adb:	89 04 24             	mov    %eax,(%esp)
c0033ade:	e8 8d 05 00 00       	call   c0034070 <_dtoa_r>
c0033ae3:	83 fb 47             	cmp    $0x47,%ebx
c0033ae6:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033aec:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033af2:	75 09                	jne    c0033afd <_svfprintf_r+0x1b5d>
c0033af4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033afb:	74 5b                	je     c0033b58 <_svfprintf_r+0x1bb8>
c0033afd:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033b03:	89 f0                	mov    %esi,%eax
c0033b05:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033b0b:	01 d1                	add    %edx,%ecx
c0033b0d:	84 c0                	test   %al,%al
c0033b0f:	0f 84 14 fc ff ff    	je     c0033729 <_svfprintf_r+0x1789>
c0033b15:	80 3a 30             	cmpb   $0x30,(%edx)
c0033b18:	0f 84 37 02 00 00    	je     c0033d55 <_svfprintf_r+0x1db5>
c0033b1e:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b24:	01 c1                	add    %eax,%ecx
c0033b26:	e9 fe fb ff ff       	jmp    c0033729 <_svfprintf_r+0x1789>
c0033b2b:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b31:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033b37:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033b3c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033b43:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b4a:	00 00 00 
c0033b4d:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033b53:	e9 e4 e6 ff ff       	jmp    c003223c <_svfprintf_r+0x29c>
c0033b58:	dd d8                	fstp   %st(0)
c0033b5a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033b60:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033b66:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033b6c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033b72:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b78:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033b7b:	7c 48                	jl     c0033bc5 <_svfprintf_r+0x1c25>
c0033b7d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033b83:	7c 40                	jl     c0033bc5 <_svfprintf_r+0x1c25>
c0033b85:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033b8b:	e9 ea fb ff ff       	jmp    c003377a <_svfprintf_r+0x17da>
c0033b90:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033b96:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033b9d:	89 75 14             	mov    %esi,0x14(%ebp)
c0033ba0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033ba7:	00 00 00 
c0033baa:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033bb0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033bb6:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033bbd:	00 00 00 
c0033bc0:	e9 73 e6 ff ff       	jmp    c0032238 <_svfprintf_r+0x298>
c0033bc5:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033bcc:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033bcf:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033bd6:	85 c9                	test   %ecx,%ecx
c0033bd8:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033bde:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033be4:	0f 88 2c 02 00 00    	js     c0033e16 <_svfprintf_r+0x1e76>
c0033bea:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033bf1:	83 f9 09             	cmp    $0x9,%ecx
c0033bf4:	0f 8f ea 00 00 00    	jg     c0033ce4 <_svfprintf_r+0x1d44>
c0033bfa:	83 c1 30             	add    $0x30,%ecx
c0033bfd:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033c04:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033c0a:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033c10:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033c16:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033c1c:	29 d0                	sub    %edx,%eax
c0033c1e:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033c24:	89 da                	mov    %ebx,%edx
c0033c26:	01 c2                	add    %eax,%edx
c0033c28:	83 fb 01             	cmp    $0x1,%ebx
c0033c2b:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c31:	0f 8e 21 02 00 00    	jle    c0033e58 <_svfprintf_r+0x1eb8>
c0033c37:	31 c0                	xor    %eax,%eax
c0033c39:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033c40:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033c47:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033c4e:	00 00 00 
c0033c51:	e9 60 fb ff ff       	jmp    c00337b6 <_svfprintf_r+0x1816>
c0033c56:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033c5c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c63:	00 00 00 
c0033c66:	e9 68 e4 ff ff       	jmp    c00320d3 <_svfprintf_r+0x133>
c0033c6b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033c70:	e9 2d fe ff ff       	jmp    c0033aa2 <_svfprintf_r+0x1b02>
c0033c75:	d9 e0                	fchs   
c0033c77:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033c7e:	e9 38 fa ff ff       	jmp    c00336bb <_svfprintf_r+0x171b>
c0033c83:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033c89:	ba 01 00 00 00       	mov    $0x1,%edx
c0033c8e:	85 c9                	test   %ecx,%ecx
c0033c90:	0f 8e 5a 01 00 00    	jle    c0033df0 <_svfprintf_r+0x1e50>
c0033c96:	31 c0                	xor    %eax,%eax
c0033c98:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033c9e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033ca5:	00 00 00 
c0033ca8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033cae:	0f 49 c2             	cmovns %edx,%eax
c0033cb1:	e9 00 fb ff ff       	jmp    c00337b6 <_svfprintf_r+0x1816>
c0033cb6:	85 c0                	test   %eax,%eax
c0033cb8:	0f 8e 06 01 00 00    	jle    c0033dc4 <_svfprintf_r+0x1e24>
c0033cbe:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033cc4:	85 f6                	test   %esi,%esi
c0033cc6:	0f 85 d4 00 00 00    	jne    c0033da0 <_svfprintf_r+0x1e00>
c0033ccc:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033cd3:	0f 85 c7 00 00 00    	jne    c0033da0 <_svfprintf_r+0x1e00>
c0033cd9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033cdf:	e9 d2 fa ff ff       	jmp    c00337b6 <_svfprintf_r+0x1816>
c0033ce4:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033cea:	89 f3                	mov    %esi,%ebx
c0033cec:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033cf1:	83 eb 01             	sub    $0x1,%ebx
c0033cf4:	f7 e9                	imul   %ecx
c0033cf6:	89 c8                	mov    %ecx,%eax
c0033cf8:	c1 f8 1f             	sar    $0x1f,%eax
c0033cfb:	c1 fa 02             	sar    $0x2,%edx
c0033cfe:	29 c2                	sub    %eax,%edx
c0033d00:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033d03:	01 c0                	add    %eax,%eax
c0033d05:	29 c1                	sub    %eax,%ecx
c0033d07:	83 fa 09             	cmp    $0x9,%edx
c0033d0a:	8d 41 30             	lea    0x30(%ecx),%eax
c0033d0d:	89 d1                	mov    %edx,%ecx
c0033d0f:	88 03                	mov    %al,(%ebx)
c0033d11:	7f d9                	jg     c0033cec <_svfprintf_r+0x1d4c>
c0033d13:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033d16:	83 c1 30             	add    $0x30,%ecx
c0033d19:	39 f0                	cmp    %esi,%eax
c0033d1b:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033d1e:	0f 83 6a 01 00 00    	jae    c0033e8e <_svfprintf_r+0x1eee>
c0033d24:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d2a:	eb 07                	jmp    c0033d33 <_svfprintf_r+0x1d93>
c0033d2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033d30:	0f b6 08             	movzbl (%eax),%ecx
c0033d33:	83 c0 01             	add    $0x1,%eax
c0033d36:	83 c2 01             	add    $0x1,%edx
c0033d39:	39 f0                	cmp    %esi,%eax
c0033d3b:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033d3e:	75 f0                	jne    c0033d30 <_svfprintf_r+0x1d90>
c0033d40:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033d46:	29 d8                	sub    %ebx,%eax
c0033d48:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033d4e:	01 d0                	add    %edx,%eax
c0033d50:	e9 bb fe ff ff       	jmp    c0033c10 <_svfprintf_r+0x1c70>
c0033d55:	d9 ee                	fldz   
c0033d57:	d9 c9                	fxch   %st(1)
c0033d59:	db e9                	fucomi %st(1),%st
c0033d5b:	dd d9                	fstp   %st(1)
c0033d5d:	7a 06                	jp     c0033d65 <_svfprintf_r+0x1dc5>
c0033d5f:	0f 84 b9 fd ff ff    	je     c0033b1e <_svfprintf_r+0x1b7e>
c0033d65:	b8 01 00 00 00       	mov    $0x1,%eax
c0033d6a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033d70:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033d76:	01 c1                	add    %eax,%ecx
c0033d78:	e9 ac f9 ff ff       	jmp    c0033729 <_svfprintf_r+0x1789>
c0033d7d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d83:	31 c0                	xor    %eax,%eax
c0033d85:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033d8c:	00 00 00 
c0033d8f:	83 c2 01             	add    $0x1,%edx
c0033d92:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033d98:	0f 49 c2             	cmovns %edx,%eax
c0033d9b:	e9 16 fa ff ff       	jmp    c00337b6 <_svfprintf_r+0x1816>
c0033da0:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033da6:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033dac:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033db0:	89 c2                	mov    %eax,%edx
c0033db2:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033db8:	31 c0                	xor    %eax,%eax
c0033dba:	85 d2                	test   %edx,%edx
c0033dbc:	0f 49 c2             	cmovns %edx,%eax
c0033dbf:	e9 f2 f9 ff ff       	jmp    c00337b6 <_svfprintf_r+0x1816>
c0033dc4:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033dca:	85 db                	test   %ebx,%ebx
c0033dcc:	75 2f                	jne    c0033dfd <_svfprintf_r+0x1e5d>
c0033dce:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033dd5:	75 26                	jne    c0033dfd <_svfprintf_r+0x1e5d>
c0033dd7:	b8 01 00 00 00       	mov    $0x1,%eax
c0033ddc:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033de3:	00 00 00 
c0033de6:	e9 cb f9 ff ff       	jmp    c00337b6 <_svfprintf_r+0x1816>
c0033deb:	90                   	nop
c0033dec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033df0:	b2 02                	mov    $0x2,%dl
c0033df2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033df8:	e9 99 fe ff ff       	jmp    c0033c96 <_svfprintf_r+0x1cf6>
c0033dfd:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033e03:	31 c0                	xor    %eax,%eax
c0033e05:	83 c2 02             	add    $0x2,%edx
c0033e08:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033e0e:	0f 49 c2             	cmovns %edx,%eax
c0033e11:	e9 a0 f9 ff ff       	jmp    c00337b6 <_svfprintf_r+0x1816>
c0033e16:	f7 d9                	neg    %ecx
c0033e18:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033e1f:	e9 cd fd ff ff       	jmp    c0033bf1 <_svfprintf_r+0x1c51>
c0033e24:	8b 55 14             	mov    0x14(%ebp),%edx
c0033e27:	8b 45 14             	mov    0x14(%ebp),%eax
c0033e2a:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033e30:	8b 12                	mov    (%edx),%edx
c0033e32:	83 c0 04             	add    $0x4,%eax
c0033e35:	89 45 14             	mov    %eax,0x14(%ebp)
c0033e38:	85 d2                	test   %edx,%edx
c0033e3a:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033e40:	0f 89 a9 e2 ff ff    	jns    c00320ef <_svfprintf_r+0x14f>
c0033e46:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033e4d:	ff ff ff 
c0033e50:	89 c8                	mov    %ecx,%eax
c0033e52:	e9 76 e2 ff ff       	jmp    c00320cd <_svfprintf_r+0x12d>
c0033e57:	90                   	nop
c0033e58:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e5e:	83 e0 01             	and    $0x1,%eax
c0033e61:	0f 85 d0 fd ff ff    	jne    c0033c37 <_svfprintf_r+0x1c97>
c0033e67:	85 d2                	test   %edx,%edx
c0033e69:	0f 49 c2             	cmovns %edx,%eax
c0033e6c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033e73:	00 00 00 
c0033e76:	e9 3b f9 ff ff       	jmp    c00337b6 <_svfprintf_r+0x1816>
c0033e7b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e7e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033e84:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033e89:	e9 f5 e2 ff ff       	jmp    c0032183 <_svfprintf_r+0x1e3>
c0033e8e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033e94:	e9 77 fd ff ff       	jmp    c0033c10 <_svfprintf_r+0x1c70>
c0033e99:	66 90                	xchg   %ax,%ax
c0033e9b:	66 90                	xchg   %ax,%ax
c0033e9d:	66 90                	xchg   %ax,%ax
c0033e9f:	90                   	nop

c0033ea0 <quorem>:
c0033ea0:	55                   	push   %ebp
c0033ea1:	89 c1                	mov    %eax,%ecx
c0033ea3:	89 e5                	mov    %esp,%ebp
c0033ea5:	57                   	push   %edi
c0033ea6:	89 d7                	mov    %edx,%edi
c0033ea8:	56                   	push   %esi
c0033ea9:	53                   	push   %ebx
c0033eaa:	83 ec 3c             	sub    $0x3c,%esp
c0033ead:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033eb0:	8b 42 10             	mov    0x10(%edx),%eax
c0033eb3:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033eb6:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033eb9:	89 ca                	mov    %ecx,%edx
c0033ebb:	0f 8f 9f 01 00 00    	jg     c0034060 <quorem+0x1c0>
c0033ec1:	83 e8 01             	sub    $0x1,%eax
c0033ec4:	83 c7 14             	add    $0x14,%edi
c0033ec7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033eca:	c1 e0 02             	shl    $0x2,%eax
c0033ecd:	83 c2 14             	add    $0x14,%edx
c0033ed0:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033ed3:	01 d0                	add    %edx,%eax
c0033ed5:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033ed8:	8b 13                	mov    (%ebx),%edx
c0033eda:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033edd:	8b 00                	mov    (%eax),%eax
c0033edf:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033ee2:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033ee5:	31 d2                	xor    %edx,%edx
c0033ee7:	f7 f1                	div    %ecx
c0033ee9:	85 c0                	test   %eax,%eax
c0033eeb:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033eee:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033ef1:	0f 84 b5 00 00 00    	je     c0033fac <quorem+0x10c>
c0033ef7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033efa:	31 f6                	xor    %esi,%esi
c0033efc:	89 fa                	mov    %edi,%edx
c0033efe:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033f01:	89 f7                	mov    %esi,%edi
c0033f03:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033f0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033f10:	83 c2 04             	add    $0x4,%edx
c0033f13:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f16:	83 c0 04             	add    $0x4,%eax
c0033f19:	0f b7 ce             	movzwl %si,%ecx
c0033f1c:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033f20:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033f23:	c1 ee 10             	shr    $0x10,%esi
c0033f26:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033f2a:	89 cb                	mov    %ecx,%ebx
c0033f2c:	0f b7 c9             	movzwl %cx,%ecx
c0033f2f:	c1 eb 10             	shr    $0x10,%ebx
c0033f32:	29 cf                	sub    %ecx,%edi
c0033f34:	01 f3                	add    %esi,%ebx
c0033f36:	89 de                	mov    %ebx,%esi
c0033f38:	0f b7 db             	movzwl %bx,%ebx
c0033f3b:	c1 ee 10             	shr    $0x10,%esi
c0033f3e:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033f41:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033f44:	0f b7 ce             	movzwl %si,%ecx
c0033f47:	01 f9                	add    %edi,%ecx
c0033f49:	c1 ee 10             	shr    $0x10,%esi
c0033f4c:	29 de                	sub    %ebx,%esi
c0033f4e:	89 cb                	mov    %ecx,%ebx
c0033f50:	c1 fb 10             	sar    $0x10,%ebx
c0033f53:	0f b7 c9             	movzwl %cx,%ecx
c0033f56:	01 de                	add    %ebx,%esi
c0033f58:	89 f7                	mov    %esi,%edi
c0033f5a:	c1 e6 10             	shl    $0x10,%esi
c0033f5d:	09 ce                	or     %ecx,%esi
c0033f5f:	c1 ff 10             	sar    $0x10,%edi
c0033f62:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033f65:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033f68:	73 a6                	jae    c0033f10 <quorem+0x70>
c0033f6a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033f6d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033f70:	8b 10                	mov    (%eax),%edx
c0033f72:	85 d2                	test   %edx,%edx
c0033f74:	75 36                	jne    c0033fac <quorem+0x10c>
c0033f76:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033f79:	89 c2                	mov    %eax,%edx
c0033f7b:	83 e8 04             	sub    $0x4,%eax
c0033f7e:	39 c1                	cmp    %eax,%ecx
c0033f80:	73 21                	jae    c0033fa3 <quorem+0x103>
c0033f82:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f85:	85 f6                	test   %esi,%esi
c0033f87:	75 1a                	jne    c0033fa3 <quorem+0x103>
c0033f89:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f8c:	eb 08                	jmp    c0033f96 <quorem+0xf6>
c0033f8e:	66 90                	xchg   %ax,%ax
c0033f90:	8b 18                	mov    (%eax),%ebx
c0033f92:	85 db                	test   %ebx,%ebx
c0033f94:	75 0a                	jne    c0033fa0 <quorem+0x100>
c0033f96:	83 e8 04             	sub    $0x4,%eax
c0033f99:	83 ea 01             	sub    $0x1,%edx
c0033f9c:	39 c1                	cmp    %eax,%ecx
c0033f9e:	72 f0                	jb     c0033f90 <quorem+0xf0>
c0033fa0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033fa3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033fa6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033fa9:	89 50 10             	mov    %edx,0x10(%eax)
c0033fac:	8b 45 c8             	mov    -0x38(%ebp),%eax
c0033faf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033fb3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033fb6:	89 04 24             	mov    %eax,(%esp)
c0033fb9:	e8 a2 23 00 00       	call   c0036360 <__mcmp>
c0033fbe:	85 c0                	test   %eax,%eax
c0033fc0:	0f 88 8e 00 00 00    	js     c0034054 <quorem+0x1b4>
c0033fc6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0033fc9:	31 f6                	xor    %esi,%esi
c0033fcb:	83 c0 01             	add    $0x1,%eax
c0033fce:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033fd1:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033fd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033fd8:	83 c7 04             	add    $0x4,%edi
c0033fdb:	8b 4f fc             	mov    -0x4(%edi),%ecx
c0033fde:	83 c0 04             	add    $0x4,%eax
c0033fe1:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0033fe4:	0f b7 d1             	movzwl %cx,%edx
c0033fe7:	29 d6                	sub    %edx,%esi
c0033fe9:	0f b7 d3             	movzwl %bx,%edx
c0033fec:	01 f2                	add    %esi,%edx
c0033fee:	c1 e9 10             	shr    $0x10,%ecx
c0033ff1:	c1 eb 10             	shr    $0x10,%ebx
c0033ff4:	29 cb                	sub    %ecx,%ebx
c0033ff6:	89 d1                	mov    %edx,%ecx
c0033ff8:	c1 f9 10             	sar    $0x10,%ecx
c0033ffb:	0f b7 d2             	movzwl %dx,%edx
c0033ffe:	01 cb                	add    %ecx,%ebx
c0034000:	89 de                	mov    %ebx,%esi
c0034002:	c1 e3 10             	shl    $0x10,%ebx
c0034005:	09 d3                	or     %edx,%ebx
c0034007:	c1 fe 10             	sar    $0x10,%esi
c003400a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c003400d:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0034010:	73 c6                	jae    c0033fd8 <quorem+0x138>
c0034012:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0034015:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034018:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c003401b:	8b 02                	mov    (%edx),%eax
c003401d:	85 c0                	test   %eax,%eax
c003401f:	75 33                	jne    c0034054 <quorem+0x1b4>
c0034021:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0034024:	8d 42 fc             	lea    -0x4(%edx),%eax
c0034027:	39 c1                	cmp    %eax,%ecx
c0034029:	73 20                	jae    c003404b <quorem+0x1ab>
c003402b:	8b 72 fc             	mov    -0x4(%edx),%esi
c003402e:	85 f6                	test   %esi,%esi
c0034030:	75 19                	jne    c003404b <quorem+0x1ab>
c0034032:	89 fa                	mov    %edi,%edx
c0034034:	eb 08                	jmp    c003403e <quorem+0x19e>
c0034036:	66 90                	xchg   %ax,%ax
c0034038:	8b 18                	mov    (%eax),%ebx
c003403a:	85 db                	test   %ebx,%ebx
c003403c:	75 0a                	jne    c0034048 <quorem+0x1a8>
c003403e:	83 e8 04             	sub    $0x4,%eax
c0034041:	83 ea 01             	sub    $0x1,%edx
c0034044:	39 c1                	cmp    %eax,%ecx
c0034046:	72 f0                	jb     c0034038 <quorem+0x198>
c0034048:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003404b:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003404e:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034051:	89 78 10             	mov    %edi,0x10(%eax)
c0034054:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034057:	83 c4 3c             	add    $0x3c,%esp
c003405a:	5b                   	pop    %ebx
c003405b:	5e                   	pop    %esi
c003405c:	5f                   	pop    %edi
c003405d:	5d                   	pop    %ebp
c003405e:	c3                   	ret    
c003405f:	90                   	nop
c0034060:	83 c4 3c             	add    $0x3c,%esp
c0034063:	31 c0                	xor    %eax,%eax
c0034065:	5b                   	pop    %ebx
c0034066:	5e                   	pop    %esi
c0034067:	5f                   	pop    %edi
c0034068:	5d                   	pop    %ebp
c0034069:	c3                   	ret    
c003406a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034070 <_dtoa_r>:
c0034070:	55                   	push   %ebp
c0034071:	89 e5                	mov    %esp,%ebp
c0034073:	57                   	push   %edi
c0034074:	56                   	push   %esi
c0034075:	53                   	push   %ebx
c0034076:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003407c:	8b 75 08             	mov    0x8(%ebp),%esi
c003407f:	dd 45 0c             	fldl   0xc(%ebp)
c0034082:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034085:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034088:	8b 46 40             	mov    0x40(%esi),%eax
c003408b:	85 c0                	test   %eax,%eax
c003408d:	74 23                	je     c00340b2 <_dtoa_r+0x42>
c003408f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034092:	ba 01 00 00 00       	mov    $0x1,%edx
c0034097:	d3 e2                	shl    %cl,%edx
c0034099:	89 48 04             	mov    %ecx,0x4(%eax)
c003409c:	89 50 08             	mov    %edx,0x8(%eax)
c003409f:	89 44 24 04          	mov    %eax,0x4(%esp)
c00340a3:	89 34 24             	mov    %esi,(%esp)
c00340a6:	e8 95 1b 00 00       	call   c0035c40 <_Bfree>
c00340ab:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c00340b2:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00340b5:	85 ff                	test   %edi,%edi
c00340b7:	0f 88 3b 02 00 00    	js     c00342f8 <_dtoa_r+0x288>
c00340bd:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c00340c3:	89 f8                	mov    %edi,%eax
c00340c5:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c00340ca:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c00340cf:	0f 84 e3 01 00 00    	je     c00342b8 <_dtoa_r+0x248>
c00340d5:	dd 45 c0             	fldl   -0x40(%ebp)
c00340d8:	d9 ee                	fldz   
c00340da:	d9 c9                	fxch   %st(1)
c00340dc:	db e9                	fucomi %st(1),%st
c00340de:	dd d9                	fstp   %st(1)
c00340e0:	7a 36                	jp     c0034118 <_dtoa_r+0xa8>
c00340e2:	75 34                	jne    c0034118 <_dtoa_r+0xa8>
c00340e4:	dd d8                	fstp   %st(0)
c00340e6:	8b 4d 24             	mov    0x24(%ebp),%ecx
c00340e9:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00340ec:	85 c9                	test   %ecx,%ecx
c00340ee:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c00340f4:	0f 84 4e 02 00 00    	je     c0034348 <_dtoa_r+0x2d8>
c00340fa:	8b 45 24             	mov    0x24(%ebp),%eax
c00340fd:	c7 00 14 99 03 c0    	movl   $0xc0039914,(%eax)
c0034103:	b8 13 99 03 c0       	mov    $0xc0039913,%eax
c0034108:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c003410e:	5b                   	pop    %ebx
c003410f:	5e                   	pop    %esi
c0034110:	5f                   	pop    %edi
c0034111:	5d                   	pop    %ebp
c0034112:	c3                   	ret    
c0034113:	90                   	nop
c0034114:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034118:	8d 45 e0             	lea    -0x20(%ebp),%eax
c003411b:	89 fb                	mov    %edi,%ebx
c003411d:	89 44 24 10          	mov    %eax,0x10(%esp)
c0034121:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0034124:	dd 54 24 04          	fstl   0x4(%esp)
c0034128:	89 44 24 0c          	mov    %eax,0xc(%esp)
c003412c:	dd 5d b8             	fstpl  -0x48(%ebp)
c003412f:	89 34 24             	mov    %esi,(%esp)
c0034132:	c1 eb 14             	shr    $0x14,%ebx
c0034135:	e8 76 25 00 00       	call   c00366b0 <__d2b>
c003413a:	85 db                	test   %ebx,%ebx
c003413c:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c003413f:	0f 85 db 01 00 00    	jne    c0034320 <_dtoa_r+0x2b0>
c0034145:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0034148:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c003414b:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003414e:	01 c3                	add    %eax,%ebx
c0034150:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034156:	0f 8c ec 07 00 00    	jl     c0034948 <_dtoa_r+0x8d8>
c003415c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003415f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034164:	89 f8                	mov    %edi,%eax
c0034166:	29 d9                	sub    %ebx,%ecx
c0034168:	d3 e0                	shl    %cl,%eax
c003416a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034170:	d3 ea                	shr    %cl,%edx
c0034172:	09 d0                	or     %edx,%eax
c0034174:	31 d2                	xor    %edx,%edx
c0034176:	83 eb 01             	sub    $0x1,%ebx
c0034179:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003417c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003417f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034182:	df 6d c8             	fildll -0x38(%ebp)
c0034185:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034188:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003418f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034196:	dd 45 b8             	fldl   -0x48(%ebp)
c0034199:	d8 25 ac 9a 03 c0    	fsubs  0xc0039aac
c003419f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c00341a2:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00341a5:	dc 0d c8 9a 03 c0    	fmull  0xc0039ac8
c00341ab:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00341af:	b4 0c                	mov    $0xc,%ah
c00341b1:	dc 05 d0 9a 03 c0    	faddl  0xc0039ad0
c00341b7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00341bb:	db 45 d4             	fildl  -0x2c(%ebp)
c00341be:	dc 0d d8 9a 03 c0    	fmull  0xc0039ad8
c00341c4:	de c1                	faddp  %st,%st(1)
c00341c6:	d9 6d d0             	fldcw  -0x30(%ebp)
c00341c9:	db 55 b8             	fistl  -0x48(%ebp)
c00341cc:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00341cf:	d9 ee                	fldz   
c00341d1:	df e9                	fucomip %st(1),%st
c00341d3:	0f 87 27 07 00 00    	ja     c0034900 <_dtoa_r+0x890>
c00341d9:	dd d8                	fstp   %st(0)
c00341db:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c00341df:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c00341e6:	77 24                	ja     c003420c <_dtoa_r+0x19c>
c00341e8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00341eb:	dd 04 c5 a0 9b 03 c0 	fldl   -0x3ffc6460(,%eax,8)
c00341f2:	dd 45 c0             	fldl   -0x40(%ebp)
c00341f5:	d9 c9                	fxch   %st(1)
c00341f7:	df e9                	fucomip %st(1),%st
c00341f9:	dd d8                	fstp   %st(0)
c00341fb:	0f 86 5f 07 00 00    	jbe    c0034960 <_dtoa_r+0x8f0>
c0034201:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034205:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c003420c:	89 d0                	mov    %edx,%eax
c003420e:	29 d8                	sub    %ebx,%eax
c0034210:	83 e8 01             	sub    $0x1,%eax
c0034213:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c003421a:	89 45 ac             	mov    %eax,-0x54(%ebp)
c003421d:	0f 88 0d 07 00 00    	js     c0034930 <_dtoa_r+0x8c0>
c0034223:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034226:	85 c0                	test   %eax,%eax
c0034228:	0f 88 ea 06 00 00    	js     c0034918 <_dtoa_r+0x8a8>
c003422e:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034231:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034234:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c003423b:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c003423f:	0f 87 0b 03 00 00    	ja     c0034550 <_dtoa_r+0x4e0>
c0034245:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c0034249:	0f 8e 23 10 00 00    	jle    c0035272 <_dtoa_r+0x1202>
c003424f:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034253:	31 c0                	xor    %eax,%eax
c0034255:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034259:	0f 84 43 0d 00 00    	je     c0034fa2 <_dtoa_r+0xf32>
c003425f:	0f 8e f3 00 00 00    	jle    c0034358 <_dtoa_r+0x2e8>
c0034265:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034269:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034270:	0f 84 f3 00 00 00    	je     c0034369 <_dtoa_r+0x2f9>
c0034276:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003427a:	0f 85 d7 02 00 00    	jne    c0034557 <_dtoa_r+0x4e7>
c0034280:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034283:	03 5d 18             	add    0x18(%ebp),%ebx
c0034286:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034289:	83 c3 01             	add    $0x1,%ebx
c003428c:	83 fb 0e             	cmp    $0xe,%ebx
c003428f:	0f 96 c2             	setbe  %dl
c0034292:	85 db                	test   %ebx,%ebx
c0034294:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034297:	0f 8e a7 08 00 00    	jle    c0034b44 <_dtoa_r+0xad4>
c003429d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00342a0:	83 fb 0e             	cmp    $0xe,%ebx
c00342a3:	89 df                	mov    %ebx,%edi
c00342a5:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c00342a9:	20 45 b4             	and    %al,-0x4c(%ebp)
c00342ac:	e9 d6 00 00 00       	jmp    c0034387 <_dtoa_r+0x317>
c00342b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00342b8:	8b 55 c0             	mov    -0x40(%ebp),%edx
c00342bb:	8b 45 1c             	mov    0x1c(%ebp),%eax
c00342be:	85 d2                	test   %edx,%edx
c00342c0:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c00342c6:	b8 a5 9a 03 c0       	mov    $0xc0039aa5,%eax
c00342cb:	74 43                	je     c0034310 <_dtoa_r+0x2a0>
c00342cd:	8b 5d 24             	mov    0x24(%ebp),%ebx
c00342d0:	85 db                	test   %ebx,%ebx
c00342d2:	0f 84 30 fe ff ff    	je     c0034108 <_dtoa_r+0x98>
c00342d8:	8b 75 24             	mov    0x24(%ebp),%esi
c00342db:	8d 50 08             	lea    0x8(%eax),%edx
c00342de:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c00342e2:	8d 48 03             	lea    0x3(%eax),%ecx
c00342e5:	0f 44 d1             	cmove  %ecx,%edx
c00342e8:	89 16                	mov    %edx,(%esi)
c00342ea:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00342f0:	5b                   	pop    %ebx
c00342f1:	5e                   	pop    %esi
c00342f2:	5f                   	pop    %edi
c00342f3:	5d                   	pop    %ebp
c00342f4:	c3                   	ret    
c00342f5:	8d 76 00             	lea    0x0(%esi),%esi
c00342f8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c00342fe:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c0034304:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c0034307:	e9 b7 fd ff ff       	jmp    c00340c3 <_dtoa_r+0x53>
c003430c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034310:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c0034316:	ba 9c 9a 03 c0       	mov    $0xc0039a9c,%edx
c003431b:	0f 44 c2             	cmove  %edx,%eax
c003431e:	eb ad                	jmp    c00342cd <_dtoa_r+0x25d>
c0034320:	8b 45 bc             	mov    -0x44(%ebp),%eax
c0034323:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c0034329:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003432c:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c0034333:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0034338:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c003433d:	89 45 bc             	mov    %eax,-0x44(%ebp)
c0034340:	e9 51 fe ff ff       	jmp    c0034196 <_dtoa_r+0x126>
c0034345:	8d 76 00             	lea    0x0(%esi),%esi
c0034348:	b8 13 99 03 c0       	mov    $0xc0039913,%eax
c003434d:	e9 b6 fd ff ff       	jmp    c0034108 <_dtoa_r+0x98>
c0034352:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034358:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003435c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034363:	0f 85 ee 01 00 00    	jne    c0034557 <_dtoa_r+0x4e7>
c0034369:	8b 55 18             	mov    0x18(%ebp),%edx
c003436c:	85 d2                	test   %edx,%edx
c003436e:	0f 8e b6 07 00 00    	jle    c0034b2a <_dtoa_r+0xaba>
c0034374:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034377:	83 ff 0e             	cmp    $0xe,%edi
c003437a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003437e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034381:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034384:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034387:	83 ff 17             	cmp    $0x17,%edi
c003438a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034391:	0f 86 e5 0e 00 00    	jbe    c003527c <_dtoa_r+0x120c>
c0034397:	b9 01 00 00 00       	mov    $0x1,%ecx
c003439c:	b8 04 00 00 00       	mov    $0x4,%eax
c00343a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00343a8:	01 c0                	add    %eax,%eax
c00343aa:	89 ca                	mov    %ecx,%edx
c00343ac:	8d 58 14             	lea    0x14(%eax),%ebx
c00343af:	39 fb                	cmp    %edi,%ebx
c00343b1:	8d 49 01             	lea    0x1(%ecx),%ecx
c00343b4:	76 f2                	jbe    c00343a8 <_dtoa_r+0x338>
c00343b6:	89 56 44             	mov    %edx,0x44(%esi)
c00343b9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00343bd:	89 34 24             	mov    %esi,(%esp)
c00343c0:	e8 db 17 00 00       	call   c0035ba0 <_Balloc>
c00343c5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c00343c9:	89 c7                	mov    %eax,%edi
c00343cb:	89 46 40             	mov    %eax,0x40(%esi)
c00343ce:	0f 84 bb 01 00 00    	je     c003458f <_dtoa_r+0x51f>
c00343d4:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c00343d7:	dd 45 c0             	fldl   -0x40(%ebp)
c00343da:	85 db                	test   %ebx,%ebx
c00343dc:	0f 8e de 07 00 00    	jle    c0034bc0 <_dtoa_r+0xb50>
c00343e2:	89 d8                	mov    %ebx,%eax
c00343e4:	83 e0 0f             	and    $0xf,%eax
c00343e7:	dd 04 c5 a0 9b 03 c0 	fldl   -0x3ffc6460(,%eax,8)
c00343ee:	89 d8                	mov    %ebx,%eax
c00343f0:	c1 f8 04             	sar    $0x4,%eax
c00343f3:	a8 10                	test   $0x10,%al
c00343f5:	0f 84 cd 05 00 00    	je     c00349c8 <_dtoa_r+0x958>
c00343fb:	dd 05 80 9b 03 c0    	fldl   0xc0039b80
c0034401:	83 e0 0f             	and    $0xf,%eax
c0034404:	b9 03 00 00 00       	mov    $0x3,%ecx
c0034409:	d8 fa                	fdivr  %st(2),%st
c003440b:	85 c0                	test   %eax,%eax
c003440d:	74 22                	je     c0034431 <_dtoa_r+0x3c1>
c003440f:	31 d2                	xor    %edx,%edx
c0034411:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034418:	a8 01                	test   $0x1,%al
c003441a:	74 0e                	je     c003442a <_dtoa_r+0x3ba>
c003441c:	d9 c9                	fxch   %st(1)
c003441e:	dc 0c d5 60 9b 03 c0 	fmull  -0x3ffc64a0(,%edx,8)
c0034425:	d9 c9                	fxch   %st(1)
c0034427:	83 c1 01             	add    $0x1,%ecx
c003442a:	83 c2 01             	add    $0x1,%edx
c003442d:	d1 f8                	sar    %eax
c003442f:	75 e7                	jne    c0034418 <_dtoa_r+0x3a8>
c0034431:	de f1                	fdivp  %st,%st(1)
c0034433:	8b 45 9c             	mov    -0x64(%ebp),%eax
c0034436:	85 c0                	test   %eax,%eax
c0034438:	74 0a                	je     c0034444 <_dtoa_r+0x3d4>
c003443a:	d9 e8                	fld1   
c003443c:	df e9                	fucomip %st(1),%st
c003443e:	0f 87 92 0b 00 00    	ja     c0034fd6 <_dtoa_r+0xf66>
c0034444:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034447:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003444a:	db 45 d4             	fildl  -0x2c(%ebp)
c003444d:	d8 c9                	fmul   %st(1),%st
c003444f:	d8 05 b8 9a 03 c0    	fadds  0xc0039ab8
c0034455:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034458:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003445f:	85 c0                	test   %eax,%eax
c0034461:	0f 84 89 05 00 00    	je     c00349f0 <_dtoa_r+0x980>
c0034467:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003446a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003446d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034470:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034473:	85 c0                	test   %eax,%eax
c0034475:	0f 84 b5 07 00 00    	je     c0034c30 <_dtoa_r+0xbc0>
c003447b:	d9 05 c0 9a 03 c0    	flds   0xc0039ac0
c0034481:	8d 57 01             	lea    0x1(%edi),%edx
c0034484:	dc 34 cd 98 9b 03 c0 	fdivl  -0x3ffc6468(,%ecx,8)
c003448b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003448e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034492:	b4 0c                	mov    $0xc,%ah
c0034494:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034498:	dc 65 c0             	fsubl  -0x40(%ebp)
c003449b:	d9 c9                	fxch   %st(1)
c003449d:	d9 6d d0             	fldcw  -0x30(%ebp)
c00344a0:	db 55 d4             	fistl  -0x2c(%ebp)
c00344a3:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00344a6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00344a9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00344ac:	83 c0 30             	add    $0x30,%eax
c00344af:	db 45 d4             	fildl  -0x2c(%ebp)
c00344b2:	de e9                	fsubrp %st,%st(1)
c00344b4:	d9 c9                	fxch   %st(1)
c00344b6:	88 07                	mov    %al,(%edi)
c00344b8:	db e9                	fucomi %st(1),%st
c00344ba:	77 7f                	ja     c003453b <_dtoa_r+0x4cb>
c00344bc:	d9 c1                	fld    %st(1)
c00344be:	d8 2d b0 9a 03 c0    	fsubrs 0xc0039ab0
c00344c4:	d9 c9                	fxch   %st(1)
c00344c6:	db e9                	fucomi %st(1),%st
c00344c8:	dd d9                	fstp   %st(1)
c00344ca:	0f 87 33 0c 00 00    	ja     c0035103 <_dtoa_r+0x1093>
c00344d0:	83 f9 01             	cmp    $0x1,%ecx
c00344d3:	0f 8e c4 06 00 00    	jle    c0034b9d <_dtoa_r+0xb2d>
c00344d9:	01 f9                	add    %edi,%ecx
c00344db:	d9 05 b4 9a 03 c0    	flds   0xc0039ab4
c00344e1:	eb 25                	jmp    c0034508 <_dtoa_r+0x498>
c00344e3:	90                   	nop
c00344e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00344e8:	d9 c1                	fld    %st(1)
c00344ea:	d8 2d b0 9a 03 c0    	fsubrs 0xc0039ab0
c00344f0:	d9 c9                	fxch   %st(1)
c00344f2:	db e9                	fucomi %st(1),%st
c00344f4:	dd d9                	fstp   %st(1)
c00344f6:	0f 87 14 0c 00 00    	ja     c0035110 <_dtoa_r+0x10a0>
c00344fc:	39 ca                	cmp    %ecx,%edx
c00344fe:	0f 84 a4 06 00 00    	je     c0034ba8 <_dtoa_r+0xb38>
c0034504:	d9 c9                	fxch   %st(1)
c0034506:	d9 ca                	fxch   %st(2)
c0034508:	dc c9                	fmul   %st,%st(1)
c003450a:	83 c2 01             	add    $0x1,%edx
c003450d:	dc ca                	fmul   %st,%st(2)
c003450f:	d9 ca                	fxch   %st(2)
c0034511:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034514:	db 55 d4             	fistl  -0x2c(%ebp)
c0034517:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003451a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003451d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034520:	83 c0 30             	add    $0x30,%eax
c0034523:	db 45 d4             	fildl  -0x2c(%ebp)
c0034526:	de e9                	fsubrp %st,%st(1)
c0034528:	d9 c9                	fxch   %st(1)
c003452a:	88 42 ff             	mov    %al,-0x1(%edx)
c003452d:	db e9                	fucomi %st(1),%st
c003452f:	76 b7                	jbe    c00344e8 <_dtoa_r+0x478>
c0034531:	dd d8                	fstp   %st(0)
c0034533:	dd d8                	fstp   %st(0)
c0034535:	dd d8                	fstp   %st(0)
c0034537:	dd d8                	fstp   %st(0)
c0034539:	eb 06                	jmp    c0034541 <_dtoa_r+0x4d1>
c003453b:	dd d8                	fstp   %st(0)
c003453d:	dd d8                	fstp   %st(0)
c003453f:	dd d8                	fstp   %st(0)
c0034541:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034544:	89 fb                	mov    %edi,%ebx
c0034546:	89 d7                	mov    %edx,%edi
c0034548:	89 45 b8             	mov    %eax,-0x48(%ebp)
c003454b:	e9 70 03 00 00       	jmp    c00348c0 <_dtoa_r+0x850>
c0034550:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034557:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003455e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034565:	00 
c0034566:	89 34 24             	mov    %esi,(%esp)
c0034569:	e8 32 16 00 00       	call   c0035ba0 <_Balloc>
c003456e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034575:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003457c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034583:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003458a:	89 c7                	mov    %eax,%edi
c003458c:	89 46 40             	mov    %eax,0x40(%esi)
c003458f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034592:	85 c0                	test   %eax,%eax
c0034594:	0f 88 2e 01 00 00    	js     c00346c8 <_dtoa_r+0x658>
c003459a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c003459e:	0f 8f 24 01 00 00    	jg     c00346c8 <_dtoa_r+0x658>
c00345a4:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00345a7:	dd 04 c5 a0 9b 03 c0 	fldl   -0x3ffc6460(,%eax,8)
c00345ae:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00345b1:	85 c0                	test   %eax,%eax
c00345b3:	7f 0e                	jg     c00345c3 <_dtoa_r+0x553>
c00345b5:	8b 45 18             	mov    0x18(%ebp),%eax
c00345b8:	c1 e8 1f             	shr    $0x1f,%eax
c00345bb:	84 c0                	test   %al,%al
c00345bd:	0f 85 9d 07 00 00    	jne    c0034d60 <_dtoa_r+0xcf0>
c00345c3:	dd 45 c0             	fldl   -0x40(%ebp)
c00345c6:	d9 c0                	fld    %st(0)
c00345c8:	d8 f2                	fdiv   %st(2),%st
c00345ca:	d9 7d d2             	fnstcw -0x2e(%ebp)
c00345cd:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c00345d1:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c00345d5:	b4 0c                	mov    $0xc,%ah
c00345d7:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c00345db:	8d 47 01             	lea    0x1(%edi),%eax
c00345de:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00345e1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00345e4:	db 5d d4             	fistpl -0x2c(%ebp)
c00345e7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00345ea:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00345ed:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00345f0:	8d 42 30             	lea    0x30(%edx),%eax
c00345f3:	db 45 d4             	fildl  -0x2c(%ebp)
c00345f6:	d8 ca                	fmul   %st(2),%st
c00345f8:	88 07                	mov    %al,(%edi)
c00345fa:	de e9                	fsubrp %st,%st(1)
c00345fc:	74 66                	je     c0034664 <_dtoa_r+0x5f4>
c00345fe:	d8 0d b4 9a 03 c0    	fmuls  0xc0039ab4
c0034604:	d9 ee                	fldz   
c0034606:	d9 c9                	fxch   %st(1)
c0034608:	db e9                	fucomi %st(1),%st
c003460a:	dd d9                	fstp   %st(1)
c003460c:	0f 8b 33 0c 00 00    	jnp    c0035245 <_dtoa_r+0x11d5>
c0034612:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034615:	8d 47 02             	lea    0x2(%edi),%eax
c0034618:	d9 05 b4 9a 03 c0    	flds   0xc0039ab4
c003461e:	01 fb                	add    %edi,%ebx
c0034620:	eb 19                	jmp    c003463b <_dtoa_r+0x5cb>
c0034622:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034628:	dc c9                	fmul   %st,%st(1)
c003462a:	83 c0 01             	add    $0x1,%eax
c003462d:	d9 ee                	fldz   
c003462f:	d9 ca                	fxch   %st(2)
c0034631:	db ea                	fucomi %st(2),%st
c0034633:	dd da                	fstp   %st(2)
c0034635:	0f 8b 73 09 00 00    	jnp    c0034fae <_dtoa_r+0xf3e>
c003463b:	d9 c1                	fld    %st(1)
c003463d:	39 d8                	cmp    %ebx,%eax
c003463f:	d8 f3                	fdiv   %st(3),%st
c0034641:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034644:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034647:	db 5d d4             	fistpl -0x2c(%ebp)
c003464a:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003464d:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034650:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034653:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034656:	db 45 d4             	fildl  -0x2c(%ebp)
c0034659:	d8 cb                	fmul   %st(3),%st
c003465b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003465e:	de ea                	fsubrp %st,%st(2)
c0034660:	75 c6                	jne    c0034628 <_dtoa_r+0x5b8>
c0034662:	dd d8                	fstp   %st(0)
c0034664:	d8 c0                	fadd   %st(0),%st
c0034666:	db e9                	fucomi %st(1),%st
c0034668:	77 1e                	ja     c0034688 <_dtoa_r+0x618>
c003466a:	d9 c9                	fxch   %st(1)
c003466c:	df e9                	fucomip %st(1),%st
c003466e:	dd d8                	fstp   %st(0)
c0034670:	0f 8a 44 09 00 00    	jp     c0034fba <_dtoa_r+0xf4a>
c0034676:	0f 85 3e 09 00 00    	jne    c0034fba <_dtoa_r+0xf4a>
c003467c:	83 e2 01             	and    $0x1,%edx
c003467f:	90                   	nop
c0034680:	0f 84 34 09 00 00    	je     c0034fba <_dtoa_r+0xf4a>
c0034686:	eb 04                	jmp    c003468c <_dtoa_r+0x61c>
c0034688:	dd d8                	fstp   %st(0)
c003468a:	dd d8                	fstp   %st(0)
c003468c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c003468f:	89 fb                	mov    %edi,%ebx
c0034691:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034695:	89 cf                	mov    %ecx,%edi
c0034697:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c003469a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c003469d:	eb 0f                	jmp    c00346ae <_dtoa_r+0x63e>
c003469f:	90                   	nop
c00346a0:	39 d3                	cmp    %edx,%ebx
c00346a2:	0f 84 75 09 00 00    	je     c003501d <_dtoa_r+0xfad>
c00346a8:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c00346ac:	89 d7                	mov    %edx,%edi
c00346ae:	3c 39                	cmp    $0x39,%al
c00346b0:	8d 57 ff             	lea    -0x1(%edi),%edx
c00346b3:	74 eb                	je     c00346a0 <_dtoa_r+0x630>
c00346b5:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c00346b8:	83 c0 01             	add    $0x1,%eax
c00346bb:	88 02                	mov    %al,(%edx)
c00346bd:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c00346c0:	e9 fb 01 00 00       	jmp    c00348c0 <_dtoa_r+0x850>
c00346c5:	8d 76 00             	lea    0x0(%esi),%esi
c00346c8:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00346cb:	85 c9                	test   %ecx,%ecx
c00346cd:	0f 85 9d 02 00 00    	jne    c0034970 <_dtoa_r+0x900>
c00346d3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00346d6:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00346d9:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00346e0:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346e3:	85 c0                	test   %eax,%eax
c00346e5:	7e 14                	jle    c00346fb <_dtoa_r+0x68b>
c00346e7:	85 db                	test   %ebx,%ebx
c00346e9:	7e 10                	jle    c00346fb <_dtoa_r+0x68b>
c00346eb:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00346ee:	39 d8                	cmp    %ebx,%eax
c00346f0:	0f 4f c3             	cmovg  %ebx,%eax
c00346f3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00346f6:	29 c3                	sub    %eax,%ebx
c00346f8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c00346fb:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00346fe:	85 c0                	test   %eax,%eax
c0034700:	7e 61                	jle    c0034763 <_dtoa_r+0x6f3>
c0034702:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034705:	85 c0                	test   %eax,%eax
c0034707:	0f 84 72 04 00 00    	je     c0034b7f <_dtoa_r+0xb0f>
c003470d:	85 d2                	test   %edx,%edx
c003470f:	7e 47                	jle    c0034758 <_dtoa_r+0x6e8>
c0034711:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034714:	89 54 24 08          	mov    %edx,0x8(%esp)
c0034718:	89 34 24             	mov    %esi,(%esp)
c003471b:	89 55 88             	mov    %edx,-0x78(%ebp)
c003471e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034722:	e8 f9 19 00 00       	call   c0036120 <__pow5mult>
c0034727:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c003472a:	89 34 24             	mov    %esi,(%esp)
c003472d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034731:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034735:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034738:	e8 13 18 00 00       	call   c0035f50 <__multiply>
c003473d:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c0034740:	89 34 24             	mov    %esi,(%esp)
c0034743:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034747:	89 45 8c             	mov    %eax,-0x74(%ebp)
c003474a:	e8 f1 14 00 00       	call   c0035c40 <_Bfree>
c003474f:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034752:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034755:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034758:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003475b:	29 d0                	sub    %edx,%eax
c003475d:	0f 85 1f 04 00 00    	jne    c0034b82 <_dtoa_r+0xb12>
c0034763:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003476a:	00 
c003476b:	89 34 24             	mov    %esi,(%esp)
c003476e:	e8 ad 17 00 00       	call   c0035f20 <__i2b>
c0034773:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034776:	85 c9                	test   %ecx,%ecx
c0034778:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003477b:	7e 13                	jle    c0034790 <_dtoa_r+0x720>
c003477d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034781:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034785:	89 34 24             	mov    %esi,(%esp)
c0034788:	e8 93 19 00 00       	call   c0036120 <__pow5mult>
c003478d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034790:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034794:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c003479b:	0f 8e f7 05 00 00    	jle    c0034d98 <_dtoa_r+0xd28>
c00347a1:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00347a4:	ba 01 00 00 00       	mov    $0x1,%edx
c00347a9:	85 c0                	test   %eax,%eax
c00347ab:	0f 85 27 05 00 00    	jne    c0034cd8 <_dtoa_r+0xc68>
c00347b1:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347b4:	01 d0                	add    %edx,%eax
c00347b6:	83 e0 1f             	and    $0x1f,%eax
c00347b9:	89 c2                	mov    %eax,%edx
c00347bb:	0f 84 57 03 00 00    	je     c0034b18 <_dtoa_r+0xaa8>
c00347c1:	b8 20 00 00 00       	mov    $0x20,%eax
c00347c6:	29 d0                	sub    %edx,%eax
c00347c8:	83 f8 04             	cmp    $0x4,%eax
c00347cb:	0f 8e 8c 0a 00 00    	jle    c003525d <_dtoa_r+0x11ed>
c00347d1:	b8 1c 00 00 00       	mov    $0x1c,%eax
c00347d6:	29 d0                	sub    %edx,%eax
c00347d8:	01 45 a0             	add    %eax,-0x60(%ebp)
c00347db:	01 c3                	add    %eax,%ebx
c00347dd:	01 45 ac             	add    %eax,-0x54(%ebp)
c00347e0:	8b 45 a0             	mov    -0x60(%ebp),%eax
c00347e3:	85 c0                	test   %eax,%eax
c00347e5:	7e 16                	jle    c00347fd <_dtoa_r+0x78d>
c00347e7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00347eb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00347ee:	89 34 24             	mov    %esi,(%esp)
c00347f1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347f5:	e8 46 1a 00 00       	call   c0036240 <__lshift>
c00347fa:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00347fd:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034800:	85 c0                	test   %eax,%eax
c0034802:	7e 16                	jle    c003481a <_dtoa_r+0x7aa>
c0034804:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034808:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003480b:	89 34 24             	mov    %esi,(%esp)
c003480e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034812:	e8 29 1a 00 00       	call   c0036240 <__lshift>
c0034817:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003481a:	8b 45 9c             	mov    -0x64(%ebp),%eax
c003481d:	85 c0                	test   %eax,%eax
c003481f:	0f 85 d3 04 00 00    	jne    c0034cf8 <_dtoa_r+0xc88>
c0034825:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034829:	0f 8e 11 02 00 00    	jle    c0034a40 <_dtoa_r+0x9d0>
c003482f:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034832:	85 c0                	test   %eax,%eax
c0034834:	0f 8f 06 02 00 00    	jg     c0034a40 <_dtoa_r+0x9d0>
c003483a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003483d:	85 c0                	test   %eax,%eax
c003483f:	0f 85 e0 01 00 00    	jne    c0034a25 <_dtoa_r+0x9b5>
c0034845:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034848:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c003484f:	00 
c0034850:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034857:	00 
c0034858:	89 34 24             	mov    %esi,(%esp)
c003485b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003485f:	e8 fc 13 00 00       	call   c0035c60 <__multadd>
c0034864:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034867:	89 44 24 04          	mov    %eax,0x4(%esp)
c003486b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003486e:	89 04 24             	mov    %eax,(%esp)
c0034871:	e8 ea 1a 00 00       	call   c0036360 <__mcmp>
c0034876:	85 c0                	test   %eax,%eax
c0034878:	0f 8e a7 01 00 00    	jle    c0034a25 <_dtoa_r+0x9b5>
c003487e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034882:	89 fb                	mov    %edi,%ebx
c0034884:	83 c7 01             	add    $0x1,%edi
c0034887:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003488b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034892:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034895:	89 34 24             	mov    %esi,(%esp)
c0034898:	89 44 24 04          	mov    %eax,0x4(%esp)
c003489c:	e8 9f 13 00 00       	call   c0035c40 <_Bfree>
c00348a1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348a4:	85 c0                	test   %eax,%eax
c00348a6:	74 18                	je     c00348c0 <_dtoa_r+0x850>
c00348a8:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c00348ab:	0f 85 a7 02 00 00    	jne    c0034b58 <_dtoa_r+0xae8>
c00348b1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00348b4:	89 34 24             	mov    %esi,(%esp)
c00348b7:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348bb:	e8 80 13 00 00       	call   c0035c40 <_Bfree>
c00348c0:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00348c3:	89 34 24             	mov    %esi,(%esp)
c00348c6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00348ca:	e8 71 13 00 00       	call   c0035c40 <_Bfree>
c00348cf:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00348d2:	8b 75 1c             	mov    0x1c(%ebp),%esi
c00348d5:	c6 07 00             	movb   $0x0,(%edi)
c00348d8:	83 c0 01             	add    $0x1,%eax
c00348db:	89 06                	mov    %eax,(%esi)
c00348dd:	8b 45 24             	mov    0x24(%ebp),%eax
c00348e0:	85 c0                	test   %eax,%eax
c00348e2:	0f 84 90 02 00 00    	je     c0034b78 <_dtoa_r+0xb08>
c00348e8:	8b 45 24             	mov    0x24(%ebp),%eax
c00348eb:	89 38                	mov    %edi,(%eax)
c00348ed:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00348f3:	89 d8                	mov    %ebx,%eax
c00348f5:	5b                   	pop    %ebx
c00348f6:	5e                   	pop    %esi
c00348f7:	5f                   	pop    %edi
c00348f8:	5d                   	pop    %ebp
c00348f9:	c3                   	ret    
c00348fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034900:	db 45 b8             	fildl  -0x48(%ebp)
c0034903:	df e9                	fucomip %st(1),%st
c0034905:	dd d8                	fstp   %st(0)
c0034907:	7a 06                	jp     c003490f <_dtoa_r+0x89f>
c0034909:	0f 84 cc f8 ff ff    	je     c00341db <_dtoa_r+0x16b>
c003490f:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034913:	e9 c3 f8 ff ff       	jmp    c00341db <_dtoa_r+0x16b>
c0034918:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003491b:	29 45 a0             	sub    %eax,-0x60(%ebp)
c003491e:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c0034925:	f7 d8                	neg    %eax
c0034927:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003492a:	e9 0c f9 ff ff       	jmp    c003423b <_dtoa_r+0x1cb>
c003492f:	90                   	nop
c0034930:	f7 d8                	neg    %eax
c0034932:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034935:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c003493c:	e9 e2 f8 ff ff       	jmp    c0034223 <_dtoa_r+0x1b3>
c0034941:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034948:	8b 45 c0             	mov    -0x40(%ebp),%eax
c003494b:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034950:	29 d9                	sub    %ebx,%ecx
c0034952:	d3 e0                	shl    %cl,%eax
c0034954:	e9 1b f8 ff ff       	jmp    c0034174 <_dtoa_r+0x104>
c0034959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034960:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034967:	e9 a0 f8 ff ff       	jmp    c003420c <_dtoa_r+0x19c>
c003496c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034970:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034974:	0f 8e fe 06 00 00    	jle    c0035078 <_dtoa_r+0x1008>
c003497a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003497d:	83 e8 01             	sub    $0x1,%eax
c0034980:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034983:	0f 8c 3b 06 00 00    	jl     c0034fc4 <_dtoa_r+0xf54>
c0034989:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003498c:	29 c2                	sub    %eax,%edx
c003498e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034991:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034994:	85 c9                	test   %ecx,%ecx
c0034996:	89 c8                	mov    %ecx,%eax
c0034998:	0f 88 83 07 00 00    	js     c0035121 <_dtoa_r+0x10b1>
c003499e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00349a5:	00 
c00349a6:	89 34 24             	mov    %esi,(%esp)
c00349a9:	89 55 8c             	mov    %edx,-0x74(%ebp)
c00349ac:	01 45 a0             	add    %eax,-0x60(%ebp)
c00349af:	01 45 ac             	add    %eax,-0x54(%ebp)
c00349b2:	e8 69 15 00 00       	call   c0035f20 <__i2b>
c00349b7:	8b 55 8c             	mov    -0x74(%ebp),%edx
c00349ba:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00349bd:	e9 1e fd ff ff       	jmp    c00346e0 <_dtoa_r+0x670>
c00349c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00349c8:	d9 c1                	fld    %st(1)
c00349ca:	b9 02 00 00 00       	mov    $0x2,%ecx
c00349cf:	e9 37 fa ff ff       	jmp    c003440b <_dtoa_r+0x39b>
c00349d4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00349d7:	db 45 d4             	fildl  -0x2c(%ebp)
c00349da:	d8 c9                	fmul   %st(1),%st
c00349dc:	d8 05 b8 9a 03 c0    	fadds  0xc0039ab8
c00349e2:	dd 5d c0             	fstpl  -0x40(%ebp)
c00349e5:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c00349ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349f0:	d8 25 bc 9a 03 c0    	fsubs  0xc0039abc
c00349f6:	dd 45 c0             	fldl   -0x40(%ebp)
c00349f9:	d9 c9                	fxch   %st(1)
c00349fb:	db e9                	fucomi %st(1),%st
c00349fd:	0f 87 0d 02 00 00    	ja     c0034c10 <_dtoa_r+0xba0>
c0034a03:	d9 c9                	fxch   %st(1)
c0034a05:	d9 e0                	fchs   
c0034a07:	df e9                	fucomip %st(1),%st
c0034a09:	dd d8                	fstp   %st(0)
c0034a0b:	0f 86 a7 01 00 00    	jbe    c0034bb8 <_dtoa_r+0xb48>
c0034a11:	dd d8                	fstp   %st(0)
c0034a13:	eb 02                	jmp    c0034a17 <_dtoa_r+0x9a7>
c0034a15:	dd d8                	fstp   %st(0)
c0034a17:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034a1e:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034a25:	8b 45 18             	mov    0x18(%ebp),%eax
c0034a28:	89 fb                	mov    %edi,%ebx
c0034a2a:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a31:	f7 d0                	not    %eax
c0034a33:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034a36:	e9 57 fe ff ff       	jmp    c0034892 <_dtoa_r+0x822>
c0034a3b:	90                   	nop
c0034a3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034a40:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034a43:	85 c0                	test   %eax,%eax
c0034a45:	0f 85 c5 03 00 00    	jne    c0034e10 <_dtoa_r+0xda0>
c0034a4b:	89 75 08             	mov    %esi,0x8(%ebp)
c0034a4e:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034a53:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034a56:	eb 24                	jmp    c0034a7c <_dtoa_r+0xa0c>
c0034a58:	8b 45 08             	mov    0x8(%ebp),%eax
c0034a5b:	83 c3 01             	add    $0x1,%ebx
c0034a5e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034a62:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034a69:	00 
c0034a6a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034a71:	00 
c0034a72:	89 04 24             	mov    %eax,(%esp)
c0034a75:	e8 e6 11 00 00       	call   c0035c60 <__multadd>
c0034a7a:	89 c6                	mov    %eax,%esi
c0034a7c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a7f:	89 f0                	mov    %esi,%eax
c0034a81:	e8 1a f4 ff ff       	call   c0033ea0 <quorem>
c0034a86:	83 c0 30             	add    $0x30,%eax
c0034a89:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034a8c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034a90:	7c c6                	jl     c0034a58 <_dtoa_r+0x9e8>
c0034a92:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034a95:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034a98:	ba 01 00 00 00       	mov    $0x1,%edx
c0034a9d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034aa0:	8b 75 08             	mov    0x8(%ebp),%esi
c0034aa3:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034aaa:	85 c0                	test   %eax,%eax
c0034aac:	0f 4f d0             	cmovg  %eax,%edx
c0034aaf:	01 fa                	add    %edi,%edx
c0034ab1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034ab4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034abb:	00 
c0034abc:	89 34 24             	mov    %esi,(%esp)
c0034abf:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034ac2:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ac6:	e8 75 17 00 00       	call   c0036240 <__lshift>
c0034acb:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034ace:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034ad2:	89 04 24             	mov    %eax,(%esp)
c0034ad5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034ad8:	e8 83 18 00 00       	call   c0036360 <__mcmp>
c0034add:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034ae0:	83 f8 00             	cmp    $0x0,%eax
c0034ae3:	0f 8e 41 06 00 00    	jle    c003512a <_dtoa_r+0x10ba>
c0034ae9:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034aed:	eb 0f                	jmp    c0034afe <_dtoa_r+0xa8e>
c0034aef:	90                   	nop
c0034af0:	39 c7                	cmp    %eax,%edi
c0034af2:	0f 84 70 05 00 00    	je     c0035068 <_dtoa_r+0xff8>
c0034af8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034afc:	89 c2                	mov    %eax,%edx
c0034afe:	80 f9 39             	cmp    $0x39,%cl
c0034b01:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034b04:	74 ea                	je     c0034af0 <_dtoa_r+0xa80>
c0034b06:	83 c1 01             	add    $0x1,%ecx
c0034b09:	89 fb                	mov    %edi,%ebx
c0034b0b:	88 08                	mov    %cl,(%eax)
c0034b0d:	89 d7                	mov    %edx,%edi
c0034b0f:	e9 7e fd ff ff       	jmp    c0034892 <_dtoa_r+0x822>
c0034b14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b18:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034b1d:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034b20:	01 c3                	add    %eax,%ebx
c0034b22:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034b25:	e9 b6 fc ff ff       	jmp    c00347e0 <_dtoa_r+0x770>
c0034b2a:	ba 01 00 00 00       	mov    $0x1,%edx
c0034b2f:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034b36:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034b3d:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034b44:	21 c2                	and    %eax,%edx
c0034b46:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034b49:	31 d2                	xor    %edx,%edx
c0034b4b:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b52:	e9 62 f8 ff ff       	jmp    c00343b9 <_dtoa_r+0x349>
c0034b57:	90                   	nop
c0034b58:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034b5b:	85 d2                	test   %edx,%edx
c0034b5d:	0f 84 4e fd ff ff    	je     c00348b1 <_dtoa_r+0x841>
c0034b63:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034b66:	89 34 24             	mov    %esi,(%esp)
c0034b69:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b6d:	e8 ce 10 00 00       	call   c0035c40 <_Bfree>
c0034b72:	e9 3a fd ff ff       	jmp    c00348b1 <_dtoa_r+0x841>
c0034b77:	90                   	nop
c0034b78:	89 d8                	mov    %ebx,%eax
c0034b7a:	e9 89 f5 ff ff       	jmp    c0034108 <_dtoa_r+0x98>
c0034b7f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034b82:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034b86:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034b89:	89 34 24             	mov    %esi,(%esp)
c0034b8c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b90:	e8 8b 15 00 00       	call   c0036120 <__pow5mult>
c0034b95:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034b98:	e9 c6 fb ff ff       	jmp    c0034763 <_dtoa_r+0x6f3>
c0034b9d:	dd d8                	fstp   %st(0)
c0034b9f:	dd d8                	fstp   %st(0)
c0034ba1:	eb 15                	jmp    c0034bb8 <_dtoa_r+0xb48>
c0034ba3:	90                   	nop
c0034ba4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ba8:	dd d8                	fstp   %st(0)
c0034baa:	dd d8                	fstp   %st(0)
c0034bac:	dd d8                	fstp   %st(0)
c0034bae:	eb 08                	jmp    c0034bb8 <_dtoa_r+0xb48>
c0034bb0:	dd d8                	fstp   %st(0)
c0034bb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034bb8:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034bbb:	e9 cf f9 ff ff       	jmp    c003458f <_dtoa_r+0x51f>
c0034bc0:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034bc3:	f7 d8                	neg    %eax
c0034bc5:	0f 84 6a 04 00 00    	je     c0035035 <_dtoa_r+0xfc5>
c0034bcb:	89 c2                	mov    %eax,%edx
c0034bcd:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034bd2:	83 e2 0f             	and    $0xf,%edx
c0034bd5:	c1 f8 04             	sar    $0x4,%eax
c0034bd8:	dd 04 d5 a0 9b 03 c0 	fldl   -0x3ffc6460(,%edx,8)
c0034bdf:	85 c0                	test   %eax,%eax
c0034be1:	d8 c9                	fmul   %st(1),%st
c0034be3:	0f 84 4a f8 ff ff    	je     c0034433 <_dtoa_r+0x3c3>
c0034be9:	31 d2                	xor    %edx,%edx
c0034beb:	90                   	nop
c0034bec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034bf0:	a8 01                	test   $0x1,%al
c0034bf2:	74 0a                	je     c0034bfe <_dtoa_r+0xb8e>
c0034bf4:	dc 0c d5 60 9b 03 c0 	fmull  -0x3ffc64a0(,%edx,8)
c0034bfb:	83 c1 01             	add    $0x1,%ecx
c0034bfe:	83 c2 01             	add    $0x1,%edx
c0034c01:	d1 f8                	sar    %eax
c0034c03:	75 eb                	jne    c0034bf0 <_dtoa_r+0xb80>
c0034c05:	e9 29 f8 ff ff       	jmp    c0034433 <_dtoa_r+0x3c3>
c0034c0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034c10:	dd d8                	fstp   %st(0)
c0034c12:	dd d8                	fstp   %st(0)
c0034c14:	dd d8                	fstp   %st(0)
c0034c16:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034c1d:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034c24:	e9 55 fc ff ff       	jmp    c003487e <_dtoa_r+0x80e>
c0034c29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034c30:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034c33:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034c36:	dd 45 c0             	fldl   -0x40(%ebp)
c0034c39:	dc 0c c5 a0 9b 03 c0 	fmull  -0x3ffc6460(,%eax,8)
c0034c40:	d9 c9                	fxch   %st(1)
c0034c42:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034c45:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034c49:	8d 57 01             	lea    0x1(%edi),%edx
c0034c4c:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034c4f:	b4 0c                	mov    $0xc,%ah
c0034c51:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c55:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c58:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c5b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c5e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c61:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034c64:	83 c0 30             	add    $0x30,%eax
c0034c67:	83 f9 01             	cmp    $0x1,%ecx
c0034c6a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c6d:	de e9                	fsubrp %st,%st(1)
c0034c6f:	88 07                	mov    %al,(%edi)
c0034c71:	89 d0                	mov    %edx,%eax
c0034c73:	74 37                	je     c0034cac <_dtoa_r+0xc3c>
c0034c75:	d9 05 b4 9a 03 c0    	flds   0xc0039ab4
c0034c7b:	eb 05                	jmp    c0034c82 <_dtoa_r+0xc12>
c0034c7d:	8d 76 00             	lea    0x0(%esi),%esi
c0034c80:	d9 c9                	fxch   %st(1)
c0034c82:	dc c9                	fmul   %st,%st(1)
c0034c84:	d9 c9                	fxch   %st(1)
c0034c86:	83 c0 01             	add    $0x1,%eax
c0034c89:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c8c:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c8f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c92:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034c95:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034c98:	83 c1 30             	add    $0x30,%ecx
c0034c9b:	39 d8                	cmp    %ebx,%eax
c0034c9d:	db 45 d4             	fildl  -0x2c(%ebp)
c0034ca0:	de e9                	fsubrp %st,%st(1)
c0034ca2:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034ca5:	75 d9                	jne    c0034c80 <_dtoa_r+0xc10>
c0034ca7:	dd d9                	fstp   %st(1)
c0034ca9:	03 55 88             	add    -0x78(%ebp),%edx
c0034cac:	d9 05 c0 9a 03 c0    	flds   0xc0039ac0
c0034cb2:	d9 c2                	fld    %st(2)
c0034cb4:	d8 c1                	fadd   %st(1),%st
c0034cb6:	d9 ca                	fxch   %st(2)
c0034cb8:	db ea                	fucomi %st(2),%st
c0034cba:	dd da                	fstp   %st(2)
c0034cbc:	0f 86 7f 03 00 00    	jbe    c0035041 <_dtoa_r+0xfd1>
c0034cc2:	dd d8                	fstp   %st(0)
c0034cc4:	dd d8                	fstp   %st(0)
c0034cc6:	dd d8                	fstp   %st(0)
c0034cc8:	dd d8                	fstp   %st(0)
c0034cca:	89 fb                	mov    %edi,%ebx
c0034ccc:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034cd0:	89 d7                	mov    %edx,%edi
c0034cd2:	e9 d7 f9 ff ff       	jmp    c00346ae <_dtoa_r+0x63e>
c0034cd7:	90                   	nop
c0034cd8:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034cdb:	8b 41 10             	mov    0x10(%ecx),%eax
c0034cde:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034ce2:	89 04 24             	mov    %eax,(%esp)
c0034ce5:	e8 56 11 00 00       	call   c0035e40 <__hi0bits>
c0034cea:	ba 20 00 00 00       	mov    $0x20,%edx
c0034cef:	29 c2                	sub    %eax,%edx
c0034cf1:	e9 bb fa ff ff       	jmp    c00347b1 <_dtoa_r+0x741>
c0034cf6:	66 90                	xchg   %ax,%ax
c0034cf8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034cfb:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034cff:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d02:	89 04 24             	mov    %eax,(%esp)
c0034d05:	e8 56 16 00 00       	call   c0036360 <__mcmp>
c0034d0a:	85 c0                	test   %eax,%eax
c0034d0c:	0f 89 13 fb ff ff    	jns    c0034825 <_dtoa_r+0x7b5>
c0034d12:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034d15:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034d1c:	00 
c0034d1d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034d24:	00 
c0034d25:	89 34 24             	mov    %esi,(%esp)
c0034d28:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d2c:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034d30:	e8 2b 0f 00 00       	call   c0035c60 <__multadd>
c0034d35:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034d38:	85 c9                	test   %ecx,%ecx
c0034d3a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034d3d:	0f 85 8d 00 00 00    	jne    c0034dd0 <_dtoa_r+0xd60>
c0034d43:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034d47:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034d4a:	7f 0a                	jg     c0034d56 <_dtoa_r+0xce6>
c0034d4c:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034d50:	0f 8f ff 04 00 00    	jg     c0035255 <_dtoa_r+0x11e5>
c0034d56:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034d59:	e9 ed fc ff ff       	jmp    c0034a4b <_dtoa_r+0x9db>
c0034d5e:	66 90                	xchg   %ax,%ax
c0034d60:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034d63:	85 db                	test   %ebx,%ebx
c0034d65:	0f 85 aa fc ff ff    	jne    c0034a15 <_dtoa_r+0x9a5>
c0034d6b:	d8 0d bc 9a 03 c0    	fmuls  0xc0039abc
c0034d71:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034d78:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034d7f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034d82:	d9 c9                	fxch   %st(1)
c0034d84:	df e9                	fucomip %st(1),%st
c0034d86:	dd d8                	fstp   %st(0)
c0034d88:	0f 83 97 fc ff ff    	jae    c0034a25 <_dtoa_r+0x9b5>
c0034d8e:	e9 eb fa ff ff       	jmp    c003487e <_dtoa_r+0x80e>
c0034d93:	90                   	nop
c0034d94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034d98:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034d9b:	85 c0                	test   %eax,%eax
c0034d9d:	0f 85 fe f9 ff ff    	jne    c00347a1 <_dtoa_r+0x731>
c0034da3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034da6:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034dab:	0f 85 f0 f9 ff ff    	jne    c00347a1 <_dtoa_r+0x731>
c0034db1:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034db6:	0f 84 e5 f9 ff ff    	je     c00347a1 <_dtoa_r+0x731>
c0034dbc:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034dc0:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034dc4:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034dcb:	e9 d1 f9 ff ff       	jmp    c00347a1 <_dtoa_r+0x731>
c0034dd0:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034dd3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034dda:	00 
c0034ddb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034de2:	00 
c0034de3:	89 34 24             	mov    %esi,(%esp)
c0034de6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034dea:	e8 71 0e 00 00       	call   c0035c60 <__multadd>
c0034def:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034df2:	85 d2                	test   %edx,%edx
c0034df4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034df7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034dfa:	7f 0a                	jg     c0034e06 <_dtoa_r+0xd96>
c0034dfc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034e00:	0f 8f 4f 04 00 00    	jg     c0035255 <_dtoa_r+0x11e5>
c0034e06:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034e09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034e10:	85 db                	test   %ebx,%ebx
c0034e12:	7e 16                	jle    c0034e2a <_dtoa_r+0xdba>
c0034e14:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e17:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034e1b:	89 34 24             	mov    %esi,(%esp)
c0034e1e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e22:	e8 19 14 00 00       	call   c0036240 <__lshift>
c0034e27:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e2a:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034e2d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034e30:	85 db                	test   %ebx,%ebx
c0034e32:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e35:	0f 85 11 03 00 00    	jne    c003514c <_dtoa_r+0x10dc>
c0034e3b:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034e3e:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034e41:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034e44:	01 f8                	add    %edi,%eax
c0034e46:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034e49:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034e4c:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034e4f:	83 e0 01             	and    $0x1,%eax
c0034e52:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034e55:	eb 2e                	jmp    c0034e85 <_dtoa_r+0xe15>
c0034e57:	90                   	nop
c0034e58:	e8 03 0e 00 00       	call   c0035c60 <__multadd>
c0034e5d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e64:	00 
c0034e65:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e6c:	00 
c0034e6d:	89 34 24             	mov    %esi,(%esp)
c0034e70:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e73:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034e76:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e7a:	e8 e1 0d 00 00       	call   c0035c60 <__multadd>
c0034e7f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e82:	83 c3 01             	add    $0x1,%ebx
c0034e85:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034e88:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034e8b:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034e8e:	89 f8                	mov    %edi,%eax
c0034e90:	e8 0b f0 ff ff       	call   c0033ea0 <quorem>
c0034e95:	89 3c 24             	mov    %edi,(%esp)
c0034e98:	8d 48 30             	lea    0x30(%eax),%ecx
c0034e9b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034e9e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034ea1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034ea4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034ea8:	e8 b3 14 00 00       	call   c0036360 <__mcmp>
c0034ead:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034eb0:	89 34 24             	mov    %esi,(%esp)
c0034eb3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034eb7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034eba:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034ebd:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ec1:	e8 ea 14 00 00       	call   c00363b0 <__mdiff>
c0034ec6:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034ec9:	89 c2                	mov    %eax,%edx
c0034ecb:	85 c9                	test   %ecx,%ecx
c0034ecd:	0f 85 c5 00 00 00    	jne    c0034f98 <_dtoa_r+0xf28>
c0034ed3:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034ed7:	89 3c 24             	mov    %edi,(%esp)
c0034eda:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034edd:	e8 7e 14 00 00       	call   c0036360 <__mcmp>
c0034ee2:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034ee5:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034ee9:	89 34 24             	mov    %esi,(%esp)
c0034eec:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034eef:	e8 4c 0d 00 00       	call   c0035c40 <_Bfree>
c0034ef4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ef7:	89 c1                	mov    %eax,%ecx
c0034ef9:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034efc:	75 0b                	jne    c0034f09 <_dtoa_r+0xe99>
c0034efe:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034f01:	85 d2                	test   %edx,%edx
c0034f03:	0f 84 fb 02 00 00    	je     c0035204 <_dtoa_r+0x1194>
c0034f09:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034f0c:	85 d2                	test   %edx,%edx
c0034f0e:	0f 88 7f 01 00 00    	js     c0035093 <_dtoa_r+0x1023>
c0034f14:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034f17:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034f1a:	75 0b                	jne    c0034f27 <_dtoa_r+0xeb7>
c0034f1c:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034f1f:	85 c9                	test   %ecx,%ecx
c0034f21:	0f 84 6c 01 00 00    	je     c0035093 <_dtoa_r+0x1023>
c0034f27:	85 c0                	test   %eax,%eax
c0034f29:	0f 8f 82 02 00 00    	jg     c00351b1 <_dtoa_r+0x1141>
c0034f2f:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034f33:	89 da                	mov    %ebx,%edx
c0034f35:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034f38:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034f3b:	0f 84 8d 02 00 00    	je     c00351ce <_dtoa_r+0x115e>
c0034f41:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034f45:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f4c:	00 
c0034f4d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f54:	00 
c0034f55:	89 34 24             	mov    %esi,(%esp)
c0034f58:	e8 03 0d 00 00       	call   c0035c60 <__multadd>
c0034f5d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f64:	00 
c0034f65:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f6c:	00 
c0034f6d:	89 34 24             	mov    %esi,(%esp)
c0034f70:	89 c7                	mov    %eax,%edi
c0034f72:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f75:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034f78:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034f7b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f7f:	0f 85 d3 fe ff ff    	jne    c0034e58 <_dtoa_r+0xde8>
c0034f85:	e8 d6 0c 00 00       	call   c0035c60 <__multadd>
c0034f8a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034f8d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034f90:	e9 ed fe ff ff       	jmp    c0034e82 <_dtoa_r+0xe12>
c0034f95:	8d 76 00             	lea    0x0(%esi),%esi
c0034f98:	b8 01 00 00 00       	mov    $0x1,%eax
c0034f9d:	e9 43 ff ff ff       	jmp    c0034ee5 <_dtoa_r+0xe75>
c0034fa2:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034fa9:	e9 d2 f2 ff ff       	jmp    c0034280 <_dtoa_r+0x210>
c0034fae:	0f 85 87 f6 ff ff    	jne    c003463b <_dtoa_r+0x5cb>
c0034fb4:	dd d8                	fstp   %st(0)
c0034fb6:	dd d8                	fstp   %st(0)
c0034fb8:	dd d8                	fstp   %st(0)
c0034fba:	89 fb                	mov    %edi,%ebx
c0034fbc:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034fbf:	e9 fc f8 ff ff       	jmp    c00348c0 <_dtoa_r+0x850>
c0034fc4:	89 c2                	mov    %eax,%edx
c0034fc6:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0034fc9:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034fcc:	01 55 94             	add    %edx,-0x6c(%ebp)
c0034fcf:	31 d2                	xor    %edx,%edx
c0034fd1:	e9 b8 f9 ff ff       	jmp    c003498e <_dtoa_r+0x91e>
c0034fd6:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034fd9:	85 c0                	test   %eax,%eax
c0034fdb:	0f 84 f3 f9 ff ff    	je     c00349d4 <_dtoa_r+0x964>
c0034fe1:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034fe4:	85 c0                	test   %eax,%eax
c0034fe6:	0f 8e c4 fb ff ff    	jle    c0034bb0 <_dtoa_r+0xb40>
c0034fec:	d8 0d b4 9a 03 c0    	fmuls  0xc0039ab4
c0034ff2:	83 c1 01             	add    $0x1,%ecx
c0034ff5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034ff8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034ffb:	89 c1                	mov    %eax,%ecx
c0034ffd:	83 eb 01             	sub    $0x1,%ebx
c0035000:	db 45 d4             	fildl  -0x2c(%ebp)
c0035003:	d8 c9                	fmul   %st(1),%st
c0035005:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0035008:	d8 05 b8 9a 03 c0    	fadds  0xc0039ab8
c003500e:	dd 5d c0             	fstpl  -0x40(%ebp)
c0035011:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0035018:	e9 53 f4 ff ff       	jmp    c0034470 <_dtoa_r+0x400>
c003501d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035020:	c6 03 30             	movb   $0x30,(%ebx)
c0035023:	83 c0 01             	add    $0x1,%eax
c0035026:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0035029:	b8 31 00 00 00       	mov    $0x31,%eax
c003502e:	88 02                	mov    %al,(%edx)
c0035030:	e9 8b f8 ff ff       	jmp    c00348c0 <_dtoa_r+0x850>
c0035035:	d9 c0                	fld    %st(0)
c0035037:	b9 02 00 00 00       	mov    $0x2,%ecx
c003503c:	e9 f2 f3 ff ff       	jmp    c0034433 <_dtoa_r+0x3c3>
c0035041:	de e2                	fsubp  %st,%st(2)
c0035043:	d9 c9                	fxch   %st(1)
c0035045:	df e9                	fucomip %st(1),%st
c0035047:	dd d8                	fstp   %st(0)
c0035049:	0f 86 69 fb ff ff    	jbe    c0034bb8 <_dtoa_r+0xb48>
c003504f:	dd d8                	fstp   %st(0)
c0035051:	eb 07                	jmp    c003505a <_dtoa_r+0xfea>
c0035053:	90                   	nop
c0035054:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035058:	89 c2                	mov    %eax,%edx
c003505a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003505e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035061:	74 f5                	je     c0035058 <_dtoa_r+0xfe8>
c0035063:	e9 d9 f4 ff ff       	jmp    c0034541 <_dtoa_r+0x4d1>
c0035068:	c6 07 31             	movb   $0x31,(%edi)
c003506b:	89 fb                	mov    %edi,%ebx
c003506d:	89 d7                	mov    %edx,%edi
c003506f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035073:	e9 1a f8 ff ff       	jmp    c0034892 <_dtoa_r+0x822>
c0035078:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003507b:	85 d2                	test   %edx,%edx
c003507d:	0f 84 1b 01 00 00    	je     c003519e <_dtoa_r+0x112e>
c0035083:	05 33 04 00 00       	add    $0x433,%eax
c0035088:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003508b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003508e:	e9 0b f9 ff ff       	jmp    c003499e <_dtoa_r+0x92e>
c0035093:	85 c0                	test   %eax,%eax
c0035095:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035098:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003509b:	7e 45                	jle    c00350e2 <_dtoa_r+0x1072>
c003509d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c00350a0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c00350a7:	00 
c00350a8:	89 34 24             	mov    %esi,(%esp)
c00350ab:	89 44 24 04          	mov    %eax,0x4(%esp)
c00350af:	e8 8c 11 00 00       	call   c0036240 <__lshift>
c00350b4:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c00350b7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00350bb:	89 04 24             	mov    %eax,(%esp)
c00350be:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00350c1:	e8 9a 12 00 00       	call   c0036360 <__mcmp>
c00350c6:	83 f8 00             	cmp    $0x0,%eax
c00350c9:	0f 8e 5b 01 00 00    	jle    c003522a <_dtoa_r+0x11ba>
c00350cf:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00350d3:	0f 84 0c 01 00 00    	je     c00351e5 <_dtoa_r+0x1175>
c00350d9:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00350dc:	83 c0 31             	add    $0x31,%eax
c00350df:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00350e2:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00350e5:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00350e9:	89 cb                	mov    %ecx,%ebx
c00350eb:	88 03                	mov    %al,(%ebx)
c00350ed:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00350f0:	89 fb                	mov    %edi,%ebx
c00350f2:	8d 79 01             	lea    0x1(%ecx),%edi
c00350f5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00350f8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00350fb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00350fe:	e9 8f f7 ff ff       	jmp    c0034892 <_dtoa_r+0x822>
c0035103:	dd d8                	fstp   %st(0)
c0035105:	dd d8                	fstp   %st(0)
c0035107:	dd d8                	fstp   %st(0)
c0035109:	eb 0d                	jmp    c0035118 <_dtoa_r+0x10a8>
c003510b:	90                   	nop
c003510c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035110:	dd d8                	fstp   %st(0)
c0035112:	dd d8                	fstp   %st(0)
c0035114:	dd d8                	fstp   %st(0)
c0035116:	dd d8                	fstp   %st(0)
c0035118:	89 fb                	mov    %edi,%ebx
c003511a:	89 d7                	mov    %edx,%edi
c003511c:	e9 8d f5 ff ff       	jmp    c00346ae <_dtoa_r+0x63e>
c0035121:	29 cb                	sub    %ecx,%ebx
c0035123:	31 c0                	xor    %eax,%eax
c0035125:	e9 74 f8 ff ff       	jmp    c003499e <_dtoa_r+0x92e>
c003512a:	75 0e                	jne    c003513a <_dtoa_r+0x10ca>
c003512c:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035130:	74 08                	je     c003513a <_dtoa_r+0x10ca>
c0035132:	e9 b2 f9 ff ff       	jmp    c0034ae9 <_dtoa_r+0xa79>
c0035137:	90                   	nop
c0035138:	89 c2                	mov    %eax,%edx
c003513a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003513e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035141:	74 f5                	je     c0035138 <_dtoa_r+0x10c8>
c0035143:	89 fb                	mov    %edi,%ebx
c0035145:	89 d7                	mov    %edx,%edi
c0035147:	e9 46 f7 ff ff       	jmp    c0034892 <_dtoa_r+0x822>
c003514c:	8b 40 04             	mov    0x4(%eax),%eax
c003514f:	89 34 24             	mov    %esi,(%esp)
c0035152:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035156:	e8 45 0a 00 00       	call   c0035ba0 <_Balloc>
c003515b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003515e:	89 c3                	mov    %eax,%ebx
c0035160:	8b 41 10             	mov    0x10(%ecx),%eax
c0035163:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003516a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003516e:	89 c8                	mov    %ecx,%eax
c0035170:	83 c0 0c             	add    $0xc,%eax
c0035173:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035177:	8d 43 0c             	lea    0xc(%ebx),%eax
c003517a:	89 04 24             	mov    %eax,(%esp)
c003517d:	e8 62 cc ff ff       	call   c0031de4 <memcpy>
c0035182:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035189:	00 
c003518a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003518e:	89 34 24             	mov    %esi,(%esp)
c0035191:	e8 aa 10 00 00       	call   c0036240 <__lshift>
c0035196:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035199:	e9 9d fc ff ff       	jmp    c0034e3b <_dtoa_r+0xdcb>
c003519e:	b8 36 00 00 00       	mov    $0x36,%eax
c00351a3:	8b 55 b0             	mov    -0x50(%ebp),%edx
c00351a6:	2b 45 e0             	sub    -0x20(%ebp),%eax
c00351a9:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00351ac:	e9 ed f7 ff ff       	jmp    c003499e <_dtoa_r+0x92e>
c00351b1:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c00351b5:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351b8:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351bb:	74 28                	je     c00351e5 <_dtoa_r+0x1175>
c00351bd:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c00351c1:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00351c4:	83 c0 01             	add    $0x1,%eax
c00351c7:	89 cb                	mov    %ecx,%ebx
c00351c9:	e9 1d ff ff ff       	jmp    c00350eb <_dtoa_r+0x107b>
c00351ce:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351d1:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351d4:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351d7:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351da:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351dd:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351e0:	e9 cc f8 ff ff       	jmp    c0034ab1 <_dtoa_r+0xa41>
c00351e5:	8b 45 98             	mov    -0x68(%ebp),%eax
c00351e8:	b9 39 00 00 00       	mov    $0x39,%ecx
c00351ed:	8d 50 01             	lea    0x1(%eax),%edx
c00351f0:	c6 00 39             	movb   $0x39,(%eax)
c00351f3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351f6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351f9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351fc:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351ff:	e9 fa f8 ff ff       	jmp    c0034afe <_dtoa_r+0xa8e>
c0035204:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0035207:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c003520a:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003520d:	83 fb 39             	cmp    $0x39,%ebx
c0035210:	74 d3                	je     c00351e5 <_dtoa_r+0x1175>
c0035212:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0035215:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0035218:	83 c0 31             	add    $0x31,%eax
c003521b:	85 c9                	test   %ecx,%ecx
c003521d:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035220:	0f 4e c3             	cmovle %ebx,%eax
c0035223:	89 cb                	mov    %ecx,%ebx
c0035225:	e9 c1 fe ff ff       	jmp    c00350eb <_dtoa_r+0x107b>
c003522a:	0f 85 b2 fe ff ff    	jne    c00350e2 <_dtoa_r+0x1072>
c0035230:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c0035234:	0f 84 a8 fe ff ff    	je     c00350e2 <_dtoa_r+0x1072>
c003523a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035240:	e9 8a fe ff ff       	jmp    c00350cf <_dtoa_r+0x105f>
c0035245:	0f 85 c7 f3 ff ff    	jne    c0034612 <_dtoa_r+0x5a2>
c003524b:	dd d8                	fstp   %st(0)
c003524d:	dd d8                	fstp   %st(0)
c003524f:	90                   	nop
c0035250:	e9 65 fd ff ff       	jmp    c0034fba <_dtoa_r+0xf4a>
c0035255:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035258:	e9 dd f5 ff ff       	jmp    c003483a <_dtoa_r+0x7ca>
c003525d:	8d 76 00             	lea    0x0(%esi),%esi
c0035260:	0f 84 7a f5 ff ff    	je     c00347e0 <_dtoa_r+0x770>
c0035266:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003526b:	29 d0                	sub    %edx,%eax
c003526d:	e9 ab f8 ff ff       	jmp    c0034b1d <_dtoa_r+0xaad>
c0035272:	b8 01 00 00 00       	mov    $0x1,%eax
c0035277:	e9 d9 ef ff ff       	jmp    c0034255 <_dtoa_r+0x1e5>
c003527c:	31 d2                	xor    %edx,%edx
c003527e:	e9 36 f1 ff ff       	jmp    c00343b9 <_dtoa_r+0x349>
c0035283:	66 90                	xchg   %ax,%ax
c0035285:	66 90                	xchg   %ax,%ax
c0035287:	66 90                	xchg   %ax,%ax
c0035289:	66 90                	xchg   %ax,%ax
c003528b:	66 90                	xchg   %ax,%ax
c003528d:	66 90                	xchg   %ax,%ax
c003528f:	90                   	nop

c0035290 <_setlocale_r>:
c0035290:	55                   	push   %ebp
c0035291:	89 e5                	mov    %esp,%ebp
c0035293:	53                   	push   %ebx
c0035294:	83 ec 14             	sub    $0x14,%esp
c0035297:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003529a:	85 db                	test   %ebx,%ebx
c003529c:	74 14                	je     c00352b2 <_setlocale_r+0x22>
c003529e:	c7 44 24 04 e0 9a 03 	movl   $0xc0039ae0,0x4(%esp)
c00352a5:	c0 
c00352a6:	89 1c 24             	mov    %ebx,(%esp)
c00352a9:	e8 82 17 00 00       	call   c0036a30 <strcmp>
c00352ae:	85 c0                	test   %eax,%eax
c00352b0:	75 0e                	jne    c00352c0 <_setlocale_r+0x30>
c00352b2:	83 c4 14             	add    $0x14,%esp
c00352b5:	b8 d8 98 03 c0       	mov    $0xc00398d8,%eax
c00352ba:	5b                   	pop    %ebx
c00352bb:	5d                   	pop    %ebp
c00352bc:	c3                   	ret    
c00352bd:	8d 76 00             	lea    0x0(%esi),%esi
c00352c0:	c7 44 24 04 d8 98 03 	movl   $0xc00398d8,0x4(%esp)
c00352c7:	c0 
c00352c8:	89 1c 24             	mov    %ebx,(%esp)
c00352cb:	e8 60 17 00 00       	call   c0036a30 <strcmp>
c00352d0:	85 c0                	test   %eax,%eax
c00352d2:	74 de                	je     c00352b2 <_setlocale_r+0x22>
c00352d4:	89 1c 24             	mov    %ebx,(%esp)
c00352d7:	c7 44 24 04 12 99 03 	movl   $0xc0039912,0x4(%esp)
c00352de:	c0 
c00352df:	e8 4c 17 00 00       	call   c0036a30 <strcmp>
c00352e4:	89 c2                	mov    %eax,%edx
c00352e6:	31 c0                	xor    %eax,%eax
c00352e8:	85 d2                	test   %edx,%edx
c00352ea:	ba d8 98 03 c0       	mov    $0xc00398d8,%edx
c00352ef:	0f 44 c2             	cmove  %edx,%eax
c00352f2:	83 c4 14             	add    $0x14,%esp
c00352f5:	5b                   	pop    %ebx
c00352f6:	5d                   	pop    %ebp
c00352f7:	c3                   	ret    
c00352f8:	90                   	nop
c00352f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035300 <__locale_charset>:
c0035300:	55                   	push   %ebp
c0035301:	b8 c0 d4 03 c0       	mov    $0xc003d4c0,%eax
c0035306:	89 e5                	mov    %esp,%ebp
c0035308:	5d                   	pop    %ebp
c0035309:	c3                   	ret    
c003530a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035310 <__locale_mb_cur_max>:
c0035310:	55                   	push   %ebp
c0035311:	a1 18 d5 03 c0       	mov    0xc003d518,%eax
c0035316:	89 e5                	mov    %esp,%ebp
c0035318:	5d                   	pop    %ebp
c0035319:	c3                   	ret    
c003531a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035320 <__locale_msgcharset>:
c0035320:	55                   	push   %ebp
c0035321:	b8 a0 d4 03 c0       	mov    $0xc003d4a0,%eax
c0035326:	89 e5                	mov    %esp,%ebp
c0035328:	5d                   	pop    %ebp
c0035329:	c3                   	ret    
c003532a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035330 <__locale_cjk_lang>:
c0035330:	55                   	push   %ebp
c0035331:	31 c0                	xor    %eax,%eax
c0035333:	89 e5                	mov    %esp,%ebp
c0035335:	5d                   	pop    %ebp
c0035336:	c3                   	ret    
c0035337:	89 f6                	mov    %esi,%esi
c0035339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035340 <_localeconv_r>:
c0035340:	55                   	push   %ebp
c0035341:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035346:	89 e5                	mov    %esp,%ebp
c0035348:	5d                   	pop    %ebp
c0035349:	c3                   	ret    
c003534a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035350 <setlocale>:
c0035350:	55                   	push   %ebp
c0035351:	89 e5                	mov    %esp,%ebp
c0035353:	83 ec 18             	sub    $0x18,%esp
c0035356:	e8 35 cc ff ff       	call   c0031f90 <__getreent>
c003535b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003535e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035362:	8b 55 08             	mov    0x8(%ebp),%edx
c0035365:	89 04 24             	mov    %eax,(%esp)
c0035368:	89 54 24 04          	mov    %edx,0x4(%esp)
c003536c:	e8 1f ff ff ff       	call   c0035290 <_setlocale_r>
c0035371:	c9                   	leave  
c0035372:	c3                   	ret    
c0035373:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035380 <localeconv>:
c0035380:	55                   	push   %ebp
c0035381:	89 e5                	mov    %esp,%ebp
c0035383:	83 ec 08             	sub    $0x8,%esp
c0035386:	e8 05 cc ff ff       	call   c0031f90 <__getreent>
c003538b:	b8 e0 d4 03 c0       	mov    $0xc003d4e0,%eax
c0035390:	c9                   	leave  
c0035391:	c3                   	ret    
c0035392:	66 90                	xchg   %ax,%ax
c0035394:	66 90                	xchg   %ax,%ax
c0035396:	66 90                	xchg   %ax,%ax
c0035398:	66 90                	xchg   %ax,%ax
c003539a:	66 90                	xchg   %ax,%ax
c003539c:	66 90                	xchg   %ax,%ax
c003539e:	66 90                	xchg   %ax,%ax

c00353a0 <_malloc_r>:
c00353a0:	55                   	push   %ebp
c00353a1:	89 e5                	mov    %esp,%ebp
c00353a3:	57                   	push   %edi
c00353a4:	56                   	push   %esi
c00353a5:	53                   	push   %ebx
c00353a6:	83 ec 2c             	sub    $0x2c,%esp
c00353a9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00353ac:	8d 50 0b             	lea    0xb(%eax),%edx
c00353af:	83 fa 16             	cmp    $0x16,%edx
c00353b2:	76 6c                	jbe    c0035420 <_malloc_r+0x80>
c00353b4:	89 d7                	mov    %edx,%edi
c00353b6:	83 e7 f8             	and    $0xfffffff8,%edi
c00353b9:	89 fe                	mov    %edi,%esi
c00353bb:	c1 ee 1f             	shr    $0x1f,%esi
c00353be:	39 c7                	cmp    %eax,%edi
c00353c0:	8b 45 08             	mov    0x8(%ebp),%eax
c00353c3:	89 f2                	mov    %esi,%edx
c00353c5:	72 67                	jb     c003542e <_malloc_r+0x8e>
c00353c7:	84 d2                	test   %dl,%dl
c00353c9:	75 63                	jne    c003542e <_malloc_r+0x8e>
c00353cb:	89 04 24             	mov    %eax,(%esp)
c00353ce:	e8 ad 07 00 00       	call   c0035b80 <__malloc_lock>
c00353d3:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c00353d9:	77 65                	ja     c0035440 <_malloc_r+0xa0>
c00353db:	89 fa                	mov    %edi,%edx
c00353dd:	c1 ea 03             	shr    $0x3,%edx
c00353e0:	8d 04 d5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%edx,8),%eax
c00353e7:	8b 58 0c             	mov    0xc(%eax),%ebx
c00353ea:	39 c3                	cmp    %eax,%ebx
c00353ec:	0f 84 3e 05 00 00    	je     c0035930 <_malloc_r+0x590>
c00353f2:	8b 43 04             	mov    0x4(%ebx),%eax
c00353f5:	83 e0 fc             	and    $0xfffffffc,%eax
c00353f8:	8b 53 0c             	mov    0xc(%ebx),%edx
c00353fb:	8b 4b 08             	mov    0x8(%ebx),%ecx
c00353fe:	89 51 0c             	mov    %edx,0xc(%ecx)
c0035401:	89 4a 08             	mov    %ecx,0x8(%edx)
c0035404:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035409:	8b 45 08             	mov    0x8(%ebp),%eax
c003540c:	89 04 24             	mov    %eax,(%esp)
c003540f:	e8 7c 07 00 00       	call   c0035b90 <__malloc_unlock>
c0035414:	8d 43 08             	lea    0x8(%ebx),%eax
c0035417:	83 c4 2c             	add    $0x2c,%esp
c003541a:	5b                   	pop    %ebx
c003541b:	5e                   	pop    %esi
c003541c:	5f                   	pop    %edi
c003541d:	5d                   	pop    %ebp
c003541e:	c3                   	ret    
c003541f:	90                   	nop
c0035420:	bf 10 00 00 00       	mov    $0x10,%edi
c0035425:	31 d2                	xor    %edx,%edx
c0035427:	39 c7                	cmp    %eax,%edi
c0035429:	8b 45 08             	mov    0x8(%ebp),%eax
c003542c:	73 99                	jae    c00353c7 <_malloc_r+0x27>
c003542e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0035434:	83 c4 2c             	add    $0x2c,%esp
c0035437:	31 c0                	xor    %eax,%eax
c0035439:	5b                   	pop    %ebx
c003543a:	5e                   	pop    %esi
c003543b:	5f                   	pop    %edi
c003543c:	5d                   	pop    %ebp
c003543d:	c3                   	ret    
c003543e:	66 90                	xchg   %ax,%ax
c0035440:	89 fe                	mov    %edi,%esi
c0035442:	c1 ee 09             	shr    $0x9,%esi
c0035445:	85 f6                	test   %esi,%esi
c0035447:	0f 84 ab 01 00 00    	je     c00355f8 <_malloc_r+0x258>
c003544d:	83 fe 04             	cmp    $0x4,%esi
c0035450:	0f 87 8a 03 00 00    	ja     c00357e0 <_malloc_r+0x440>
c0035456:	89 fe                	mov    %edi,%esi
c0035458:	c1 ee 06             	shr    $0x6,%esi
c003545b:	83 c6 38             	add    $0x38,%esi
c003545e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035461:	8d 0c 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%ecx
c0035468:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003546b:	39 d9                	cmp    %ebx,%ecx
c003546d:	75 18                	jne    c0035487 <_malloc_r+0xe7>
c003546f:	eb 28                	jmp    c0035499 <_malloc_r+0xf9>
c0035471:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035478:	85 d2                	test   %edx,%edx
c003547a:	0f 89 78 ff ff ff    	jns    c00353f8 <_malloc_r+0x58>
c0035480:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035483:	39 d9                	cmp    %ebx,%ecx
c0035485:	74 12                	je     c0035499 <_malloc_r+0xf9>
c0035487:	8b 43 04             	mov    0x4(%ebx),%eax
c003548a:	83 e0 fc             	and    $0xfffffffc,%eax
c003548d:	89 c2                	mov    %eax,%edx
c003548f:	29 fa                	sub    %edi,%edx
c0035491:	83 fa 0f             	cmp    $0xf,%edx
c0035494:	7e e2                	jle    c0035478 <_malloc_r+0xd8>
c0035496:	83 ee 01             	sub    $0x1,%esi
c0035499:	8d 46 01             	lea    0x1(%esi),%eax
c003549c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003549f:	8b 1d 50 d5 03 c0    	mov    0xc003d550,%ebx
c00354a5:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c00354aa:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c00354b0:	74 6b                	je     c003551d <_malloc_r+0x17d>
c00354b2:	8b 73 04             	mov    0x4(%ebx),%esi
c00354b5:	83 e6 fc             	and    $0xfffffffc,%esi
c00354b8:	89 f0                	mov    %esi,%eax
c00354ba:	29 f8                	sub    %edi,%eax
c00354bc:	83 f8 0f             	cmp    $0xf,%eax
c00354bf:	0f 8f a3 03 00 00    	jg     c0035868 <_malloc_r+0x4c8>
c00354c5:	85 c0                	test   %eax,%eax
c00354c7:	c7 05 54 d5 03 c0 48 	movl   $0xc003d548,0xc003d554
c00354ce:	d5 03 c0 
c00354d1:	c7 05 50 d5 03 c0 48 	movl   $0xc003d548,0xc003d550
c00354d8:	d5 03 c0 
c00354db:	0f 89 27 01 00 00    	jns    c0035608 <_malloc_r+0x268>
c00354e1:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c00354e7:	0f 87 1b 03 00 00    	ja     c0035808 <_malloc_r+0x468>
c00354ed:	c1 ee 03             	shr    $0x3,%esi
c00354f0:	b8 01 00 00 00       	mov    $0x1,%eax
c00354f5:	89 f1                	mov    %esi,%ecx
c00354f7:	8d 14 f5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%esi,8),%edx
c00354fe:	c1 f9 02             	sar    $0x2,%ecx
c0035501:	d3 e0                	shl    %cl,%eax
c0035503:	8b 4a 08             	mov    0x8(%edx),%ecx
c0035506:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c003550c:	89 53 0c             	mov    %edx,0xc(%ebx)
c003550f:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0035512:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c0035517:	89 5a 08             	mov    %ebx,0x8(%edx)
c003551a:	89 59 0c             	mov    %ebx,0xc(%ecx)
c003551d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035520:	be 01 00 00 00       	mov    $0x1,%esi
c0035525:	c1 f9 02             	sar    $0x2,%ecx
c0035528:	d3 e6                	shl    %cl,%esi
c003552a:	39 c6                	cmp    %eax,%esi
c003552c:	0f 87 f6 00 00 00    	ja     c0035628 <_malloc_r+0x288>
c0035532:	85 f0                	test   %esi,%eax
c0035534:	0f 85 76 03 00 00    	jne    c00358b0 <_malloc_r+0x510>
c003553a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c003553d:	01 f6                	add    %esi,%esi
c003553f:	83 e2 fc             	and    $0xfffffffc,%edx
c0035542:	85 f0                	test   %esi,%eax
c0035544:	8d 4a 04             	lea    0x4(%edx),%ecx
c0035547:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003554a:	0f 85 60 03 00 00    	jne    c00358b0 <_malloc_r+0x510>
c0035550:	89 ca                	mov    %ecx,%edx
c0035552:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035558:	01 f6                	add    %esi,%esi
c003555a:	83 c2 04             	add    $0x4,%edx
c003555d:	85 f0                	test   %esi,%eax
c003555f:	74 f7                	je     c0035558 <_malloc_r+0x1b8>
c0035561:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035564:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035567:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003556a:	8d 34 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%esi
c0035571:	89 f1                	mov    %esi,%ecx
c0035573:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035576:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035579:	39 d9                	cmp    %ebx,%ecx
c003557b:	75 1e                	jne    c003559b <_malloc_r+0x1fb>
c003557d:	e9 36 03 00 00       	jmp    c00358b8 <_malloc_r+0x518>
c0035582:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035588:	85 d2                	test   %edx,%edx
c003558a:	0f 89 c0 03 00 00    	jns    c0035950 <_malloc_r+0x5b0>
c0035590:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035593:	39 d9                	cmp    %ebx,%ecx
c0035595:	0f 84 1d 03 00 00    	je     c00358b8 <_malloc_r+0x518>
c003559b:	8b 43 04             	mov    0x4(%ebx),%eax
c003559e:	83 e0 fc             	and    $0xfffffffc,%eax
c00355a1:	89 c2                	mov    %eax,%edx
c00355a3:	29 fa                	sub    %edi,%edx
c00355a5:	83 fa 0f             	cmp    $0xf,%edx
c00355a8:	7e de                	jle    c0035588 <_malloc_r+0x1e8>
c00355aa:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c00355ad:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c00355b0:	83 cf 01             	or     $0x1,%edi
c00355b3:	8b 73 08             	mov    0x8(%ebx),%esi
c00355b6:	89 7b 04             	mov    %edi,0x4(%ebx)
c00355b9:	89 4e 0c             	mov    %ecx,0xc(%esi)
c00355bc:	89 71 08             	mov    %esi,0x8(%ecx)
c00355bf:	89 d1                	mov    %edx,%ecx
c00355c1:	83 c9 01             	or     $0x1,%ecx
c00355c4:	a3 54 d5 03 c0       	mov    %eax,0xc003d554
c00355c9:	a3 50 d5 03 c0       	mov    %eax,0xc003d550
c00355ce:	c7 40 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%eax)
c00355d5:	c7 40 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%eax)
c00355dc:	89 48 04             	mov    %ecx,0x4(%eax)
c00355df:	89 14 10             	mov    %edx,(%eax,%edx,1)
c00355e2:	8b 45 08             	mov    0x8(%ebp),%eax
c00355e5:	89 04 24             	mov    %eax,(%esp)
c00355e8:	e8 a3 05 00 00       	call   c0035b90 <__malloc_unlock>
c00355ed:	8d 43 08             	lea    0x8(%ebx),%eax
c00355f0:	e9 22 fe ff ff       	jmp    c0035417 <_malloc_r+0x77>
c00355f5:	8d 76 00             	lea    0x0(%esi),%esi
c00355f8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c00355fd:	be 3f 00 00 00       	mov    $0x3f,%esi
c0035602:	e9 5a fe ff ff       	jmp    c0035461 <_malloc_r+0xc1>
c0035607:	90                   	nop
c0035608:	8b 45 08             	mov    0x8(%ebp),%eax
c003560b:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c0035610:	89 04 24             	mov    %eax,(%esp)
c0035613:	e8 78 05 00 00       	call   c0035b90 <__malloc_unlock>
c0035618:	83 c4 2c             	add    $0x2c,%esp
c003561b:	8d 43 08             	lea    0x8(%ebx),%eax
c003561e:	5b                   	pop    %ebx
c003561f:	5e                   	pop    %esi
c0035620:	5f                   	pop    %edi
c0035621:	5d                   	pop    %ebp
c0035622:	c3                   	ret    
c0035623:	90                   	nop
c0035624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035628:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c003562e:	8b 73 04             	mov    0x4(%ebx),%esi
c0035631:	83 e6 fc             	and    $0xfffffffc,%esi
c0035634:	39 f7                	cmp    %esi,%edi
c0035636:	77 0d                	ja     c0035645 <_malloc_r+0x2a5>
c0035638:	89 f0                	mov    %esi,%eax
c003563a:	29 f8                	sub    %edi,%eax
c003563c:	83 f8 0f             	cmp    $0xf,%eax
c003563f:	0f 8f 6b 01 00 00    	jg     c00357b0 <_malloc_r+0x410>
c0035645:	8b 0d 50 00 07 c0    	mov    0xc0070050,%ecx
c003564b:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c003564e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035651:	01 f9                	add    %edi,%ecx
c0035653:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035659:	83 c1 10             	add    $0x10,%ecx
c003565c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035661:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c0035668:	0f 44 c1             	cmove  %ecx,%eax
c003566b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003566e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035672:	8b 45 08             	mov    0x8(%ebp),%eax
c0035675:	89 04 24             	mov    %eax,(%esp)
c0035678:	e8 03 13 00 00       	call   c0036980 <_sbrk_r>
c003567d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035680:	89 c1                	mov    %eax,%ecx
c0035682:	0f 84 17 03 00 00    	je     c003599f <_malloc_r+0x5ff>
c0035688:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c003568b:	0f 87 02 03 00 00    	ja     c0035993 <_malloc_r+0x5f3>
c0035691:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035694:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c003569a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c003569d:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c00356a3:	0f 84 a9 03 00 00    	je     c0035a52 <_malloc_r+0x6b2>
c00356a9:	83 3d 20 d5 03 c0 ff 	cmpl   $0xffffffff,0xc003d520
c00356b0:	0f 84 ca 03 00 00    	je     c0035a80 <_malloc_r+0x6e0>
c00356b6:	89 c8                	mov    %ecx,%eax
c00356b8:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c00356bb:	01 d0                	add    %edx,%eax
c00356bd:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c00356c2:	89 c8                	mov    %ecx,%eax
c00356c4:	ba 00 10 00 00       	mov    $0x1000,%edx
c00356c9:	83 e0 07             	and    $0x7,%eax
c00356cc:	74 0c                	je     c00356da <_malloc_r+0x33a>
c00356ce:	29 c1                	sub    %eax,%ecx
c00356d0:	ba 08 10 00 00       	mov    $0x1008,%edx
c00356d5:	8d 49 08             	lea    0x8(%ecx),%ecx
c00356d8:	29 c2                	sub    %eax,%edx
c00356da:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00356dd:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00356e0:	01 c8                	add    %ecx,%eax
c00356e2:	25 ff 0f 00 00       	and    $0xfff,%eax
c00356e7:	29 c2                	sub    %eax,%edx
c00356e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00356ec:	89 54 24 04          	mov    %edx,0x4(%esp)
c00356f0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00356f3:	89 04 24             	mov    %eax,(%esp)
c00356f6:	e8 85 12 00 00       	call   c0036980 <_sbrk_r>
c00356fb:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00356fe:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035701:	0f 84 6d 03 00 00    	je     c0035a74 <_malloc_r+0x6d4>
c0035707:	8b 55 e0             	mov    -0x20(%ebp),%edx
c003570a:	29 c8                	sub    %ecx,%eax
c003570c:	01 d0                	add    %edx,%eax
c003570e:	83 c8 01             	or     $0x1,%eax
c0035711:	03 15 20 00 07 c0    	add    0xc0070020,%edx
c0035717:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c003571d:	89 0d 48 d5 03 c0    	mov    %ecx,0xc003d548
c0035723:	89 41 04             	mov    %eax,0x4(%ecx)
c0035726:	89 15 20 00 07 c0    	mov    %edx,0xc0070020
c003572c:	0f 84 f2 02 00 00    	je     c0035a24 <_malloc_r+0x684>
c0035732:	83 fe 0f             	cmp    $0xf,%esi
c0035735:	0f 86 8d 02 00 00    	jbe    c00359c8 <_malloc_r+0x628>
c003573b:	8b 43 04             	mov    0x4(%ebx),%eax
c003573e:	83 ee 0c             	sub    $0xc,%esi
c0035741:	83 e6 f8             	and    $0xfffffff8,%esi
c0035744:	83 e0 01             	and    $0x1,%eax
c0035747:	09 f0                	or     %esi,%eax
c0035749:	83 fe 0f             	cmp    $0xf,%esi
c003574c:	89 43 04             	mov    %eax,0x4(%ebx)
c003574f:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035754:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003575b:	00 
c003575c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035763:	00 
c0035764:	0f 87 a2 02 00 00    	ja     c0035a0c <_malloc_r+0x66c>
c003576a:	3b 15 4c 00 07 c0    	cmp    0xc007004c,%edx
c0035770:	76 06                	jbe    c0035778 <_malloc_r+0x3d8>
c0035772:	89 15 4c 00 07 c0    	mov    %edx,0xc007004c
c0035778:	3b 15 48 00 07 c0    	cmp    0xc0070048,%edx
c003577e:	76 06                	jbe    c0035786 <_malloc_r+0x3e6>
c0035780:	89 15 48 00 07 c0    	mov    %edx,0xc0070048
c0035786:	8b 50 04             	mov    0x4(%eax),%edx
c0035789:	89 c3                	mov    %eax,%ebx
c003578b:	83 e2 fc             	and    $0xfffffffc,%edx
c003578e:	89 d0                	mov    %edx,%eax
c0035790:	29 f8                	sub    %edi,%eax
c0035792:	39 d7                	cmp    %edx,%edi
c0035794:	77 05                	ja     c003579b <_malloc_r+0x3fb>
c0035796:	83 f8 0f             	cmp    $0xf,%eax
c0035799:	7f 15                	jg     c00357b0 <_malloc_r+0x410>
c003579b:	8b 45 08             	mov    0x8(%ebp),%eax
c003579e:	89 04 24             	mov    %eax,(%esp)
c00357a1:	e8 ea 03 00 00       	call   c0035b90 <__malloc_unlock>
c00357a6:	31 c0                	xor    %eax,%eax
c00357a8:	e9 6a fc ff ff       	jmp    c0035417 <_malloc_r+0x77>
c00357ad:	8d 76 00             	lea    0x0(%esi),%esi
c00357b0:	89 fa                	mov    %edi,%edx
c00357b2:	83 c8 01             	or     $0x1,%eax
c00357b5:	83 ca 01             	or     $0x1,%edx
c00357b8:	89 53 04             	mov    %edx,0x4(%ebx)
c00357bb:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c00357be:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c00357c4:	89 42 04             	mov    %eax,0x4(%edx)
c00357c7:	8b 45 08             	mov    0x8(%ebp),%eax
c00357ca:	89 04 24             	mov    %eax,(%esp)
c00357cd:	e8 be 03 00 00       	call   c0035b90 <__malloc_unlock>
c00357d2:	83 c4 2c             	add    $0x2c,%esp
c00357d5:	8d 43 08             	lea    0x8(%ebx),%eax
c00357d8:	5b                   	pop    %ebx
c00357d9:	5e                   	pop    %esi
c00357da:	5f                   	pop    %edi
c00357db:	5d                   	pop    %ebp
c00357dc:	c3                   	ret    
c00357dd:	8d 76 00             	lea    0x0(%esi),%esi
c00357e0:	83 fe 14             	cmp    $0x14,%esi
c00357e3:	0f 86 8f 01 00 00    	jbe    c0035978 <_malloc_r+0x5d8>
c00357e9:	83 fe 54             	cmp    $0x54,%esi
c00357ec:	0f 87 be 01 00 00    	ja     c00359b0 <_malloc_r+0x610>
c00357f2:	89 fe                	mov    %edi,%esi
c00357f4:	c1 ee 0c             	shr    $0xc,%esi
c00357f7:	83 c6 6e             	add    $0x6e,%esi
c00357fa:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00357fd:	e9 5f fc ff ff       	jmp    c0035461 <_malloc_r+0xc1>
c0035802:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035808:	89 f1                	mov    %esi,%ecx
c003580a:	c1 e9 09             	shr    $0x9,%ecx
c003580d:	83 f9 04             	cmp    $0x4,%ecx
c0035810:	0f 86 6d 01 00 00    	jbe    c0035983 <_malloc_r+0x5e3>
c0035816:	83 f9 14             	cmp    $0x14,%ecx
c0035819:	0f 87 0f 02 00 00    	ja     c0035a2e <_malloc_r+0x68e>
c003581f:	83 c1 5b             	add    $0x5b,%ecx
c0035822:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035825:	8d 04 85 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,4),%eax
c003582c:	8b 50 08             	mov    0x8(%eax),%edx
c003582f:	39 c2                	cmp    %eax,%edx
c0035831:	0f 84 a1 01 00 00    	je     c00359d8 <_malloc_r+0x638>
c0035837:	90                   	nop
c0035838:	8b 4a 04             	mov    0x4(%edx),%ecx
c003583b:	83 e1 fc             	and    $0xfffffffc,%ecx
c003583e:	39 ce                	cmp    %ecx,%esi
c0035840:	73 07                	jae    c0035849 <_malloc_r+0x4a9>
c0035842:	8b 52 08             	mov    0x8(%edx),%edx
c0035845:	39 d0                	cmp    %edx,%eax
c0035847:	75 ef                	jne    c0035838 <_malloc_r+0x498>
c0035849:	8b 4a 0c             	mov    0xc(%edx),%ecx
c003584c:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035851:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035854:	89 53 08             	mov    %edx,0x8(%ebx)
c0035857:	89 59 08             	mov    %ebx,0x8(%ecx)
c003585a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003585d:	e9 bb fc ff ff       	jmp    c003551d <_malloc_r+0x17d>
c0035862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035868:	89 c1                	mov    %eax,%ecx
c003586a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003586d:	83 c9 01             	or     $0x1,%ecx
c0035870:	83 cf 01             	or     $0x1,%edi
c0035873:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035876:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c003587c:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0035882:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0035889:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0035890:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035893:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035896:	8b 45 08             	mov    0x8(%ebp),%eax
c0035899:	89 04 24             	mov    %eax,(%esp)
c003589c:	e8 ef 02 00 00       	call   c0035b90 <__malloc_unlock>
c00358a1:	8d 43 08             	lea    0x8(%ebx),%eax
c00358a4:	e9 6e fb ff ff       	jmp    c0035417 <_malloc_r+0x77>
c00358a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00358b0:	89 75 dc             	mov    %esi,-0x24(%ebp)
c00358b3:	e9 af fc ff ff       	jmp    c0035567 <_malloc_r+0x1c7>
c00358b8:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c00358bc:	83 c1 08             	add    $0x8,%ecx
c00358bf:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c00358c3:	0f 85 ad fc ff ff    	jne    c0035576 <_malloc_r+0x1d6>
c00358c9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00358cc:	eb 12                	jmp    c00358e0 <_malloc_r+0x540>
c00358ce:	66 90                	xchg   %ax,%ax
c00358d0:	8d 56 f8             	lea    -0x8(%esi),%edx
c00358d3:	8b 36                	mov    (%esi),%esi
c00358d5:	83 e8 01             	sub    $0x1,%eax
c00358d8:	39 d6                	cmp    %edx,%esi
c00358da:	0f 85 ea 01 00 00    	jne    c0035aca <_malloc_r+0x72a>
c00358e0:	a8 03                	test   $0x3,%al
c00358e2:	75 ec                	jne    c00358d0 <_malloc_r+0x530>
c00358e4:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00358e7:	f7 d0                	not    %eax
c00358e9:	23 05 44 d5 03 c0    	and    0xc003d544,%eax
c00358ef:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00358f4:	d1 65 dc             	shll   -0x24(%ebp)
c00358f7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00358fa:	39 c2                	cmp    %eax,%edx
c00358fc:	0f 87 26 fd ff ff    	ja     c0035628 <_malloc_r+0x288>
c0035902:	85 d2                	test   %edx,%edx
c0035904:	0f 84 1e fd ff ff    	je     c0035628 <_malloc_r+0x288>
c003590a:	85 c2                	test   %eax,%edx
c003590c:	0f 85 c2 01 00 00    	jne    c0035ad4 <_malloc_r+0x734>
c0035912:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0035915:	89 f1                	mov    %esi,%ecx
c0035917:	01 d2                	add    %edx,%edx
c0035919:	83 c1 04             	add    $0x4,%ecx
c003591c:	85 d0                	test   %edx,%eax
c003591e:	74 f7                	je     c0035917 <_malloc_r+0x577>
c0035920:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035923:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0035926:	e9 3c fc ff ff       	jmp    c0035567 <_malloc_r+0x1c7>
c003592b:	90                   	nop
c003592c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035930:	8d 43 08             	lea    0x8(%ebx),%eax
c0035933:	8b 5b 14             	mov    0x14(%ebx),%ebx
c0035936:	39 d8                	cmp    %ebx,%eax
c0035938:	0f 85 b4 fa ff ff    	jne    c00353f2 <_malloc_r+0x52>
c003593e:	8d 42 02             	lea    0x2(%edx),%eax
c0035941:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035944:	e9 56 fb ff ff       	jmp    c003549f <_malloc_r+0xff>
c0035949:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035950:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035955:	8b 53 08             	mov    0x8(%ebx),%edx
c0035958:	8b 43 0c             	mov    0xc(%ebx),%eax
c003595b:	89 42 0c             	mov    %eax,0xc(%edx)
c003595e:	89 50 08             	mov    %edx,0x8(%eax)
c0035961:	8b 45 08             	mov    0x8(%ebp),%eax
c0035964:	89 04 24             	mov    %eax,(%esp)
c0035967:	e8 24 02 00 00       	call   c0035b90 <__malloc_unlock>
c003596c:	8d 43 08             	lea    0x8(%ebx),%eax
c003596f:	e9 a3 fa ff ff       	jmp    c0035417 <_malloc_r+0x77>
c0035974:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035978:	83 c6 5b             	add    $0x5b,%esi
c003597b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003597e:	e9 de fa ff ff       	jmp    c0035461 <_malloc_r+0xc1>
c0035983:	89 f1                	mov    %esi,%ecx
c0035985:	c1 e9 06             	shr    $0x6,%ecx
c0035988:	83 c1 38             	add    $0x38,%ecx
c003598b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003598e:	e9 92 fe ff ff       	jmp    c0035825 <_malloc_r+0x485>
c0035993:	81 fb 40 d5 03 c0    	cmp    $0xc003d540,%ebx
c0035999:	0f 84 f2 fc ff ff    	je     c0035691 <_malloc_r+0x2f1>
c003599f:	8b 1d 48 d5 03 c0    	mov    0xc003d548,%ebx
c00359a5:	8b 53 04             	mov    0x4(%ebx),%edx
c00359a8:	83 e2 fc             	and    $0xfffffffc,%edx
c00359ab:	e9 de fd ff ff       	jmp    c003578e <_malloc_r+0x3ee>
c00359b0:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c00359b6:	77 3c                	ja     c00359f4 <_malloc_r+0x654>
c00359b8:	89 fe                	mov    %edi,%esi
c00359ba:	c1 ee 0f             	shr    $0xf,%esi
c00359bd:	83 c6 77             	add    $0x77,%esi
c00359c0:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359c3:	e9 99 fa ff ff       	jmp    c0035461 <_malloc_r+0xc1>
c00359c8:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c00359cf:	89 cb                	mov    %ecx,%ebx
c00359d1:	31 d2                	xor    %edx,%edx
c00359d3:	e9 b6 fd ff ff       	jmp    c003578e <_malloc_r+0x3ee>
c00359d8:	c1 f9 02             	sar    $0x2,%ecx
c00359db:	b8 01 00 00 00       	mov    $0x1,%eax
c00359e0:	d3 e0                	shl    %cl,%eax
c00359e2:	89 d1                	mov    %edx,%ecx
c00359e4:	0b 05 44 d5 03 c0    	or     0xc003d544,%eax
c00359ea:	a3 44 d5 03 c0       	mov    %eax,0xc003d544
c00359ef:	e9 5d fe ff ff       	jmp    c0035851 <_malloc_r+0x4b1>
c00359f4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c00359fa:	77 47                	ja     c0035a43 <_malloc_r+0x6a3>
c00359fc:	89 fe                	mov    %edi,%esi
c00359fe:	c1 ee 12             	shr    $0x12,%esi
c0035a01:	83 c6 7c             	add    $0x7c,%esi
c0035a04:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035a07:	e9 55 fa ff ff       	jmp    c0035461 <_malloc_r+0xc1>
c0035a0c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035a0f:	83 c3 08             	add    $0x8,%ebx
c0035a12:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0035a16:	89 04 24             	mov    %eax,(%esp)
c0035a19:	e8 c2 22 00 00       	call   c0037ce0 <_free_r>
c0035a1e:	8b 15 20 00 07 c0    	mov    0xc0070020,%edx
c0035a24:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035a29:	e9 3c fd ff ff       	jmp    c003576a <_malloc_r+0x3ca>
c0035a2e:	83 f9 54             	cmp    $0x54,%ecx
c0035a31:	77 58                	ja     c0035a8b <_malloc_r+0x6eb>
c0035a33:	89 f1                	mov    %esi,%ecx
c0035a35:	c1 e9 0c             	shr    $0xc,%ecx
c0035a38:	83 c1 6e             	add    $0x6e,%ecx
c0035a3b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a3e:	e9 e2 fd ff ff       	jmp    c0035825 <_malloc_r+0x485>
c0035a43:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a48:	be 7e 00 00 00       	mov    $0x7e,%esi
c0035a4d:	e9 0f fa ff ff       	jmp    c0035461 <_malloc_r+0xc1>
c0035a52:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035a59:	0f 85 4a fc ff ff    	jne    c00356a9 <_malloc_r+0x309>
c0035a5f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035a62:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0035a67:	01 f1                	add    %esi,%ecx
c0035a69:	83 c9 01             	or     $0x1,%ecx
c0035a6c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035a6f:	e9 f6 fc ff ff       	jmp    c003576a <_malloc_r+0x3ca>
c0035a74:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a79:	31 d2                	xor    %edx,%edx
c0035a7b:	e9 91 fc ff ff       	jmp    c0035711 <_malloc_r+0x371>
c0035a80:	89 0d 20 d5 03 c0    	mov    %ecx,0xc003d520
c0035a86:	e9 37 fc ff ff       	jmp    c00356c2 <_malloc_r+0x322>
c0035a8b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035a91:	77 10                	ja     c0035aa3 <_malloc_r+0x703>
c0035a93:	89 f1                	mov    %esi,%ecx
c0035a95:	c1 e9 0f             	shr    $0xf,%ecx
c0035a98:	83 c1 77             	add    $0x77,%ecx
c0035a9b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a9e:	e9 82 fd ff ff       	jmp    c0035825 <_malloc_r+0x485>
c0035aa3:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035aa9:	77 10                	ja     c0035abb <_malloc_r+0x71b>
c0035aab:	89 f1                	mov    %esi,%ecx
c0035aad:	c1 e9 12             	shr    $0x12,%ecx
c0035ab0:	83 c1 7c             	add    $0x7c,%ecx
c0035ab3:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035ab6:	e9 6a fd ff ff       	jmp    c0035825 <_malloc_r+0x485>
c0035abb:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035ac0:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035ac5:	e9 5b fd ff ff       	jmp    c0035825 <_malloc_r+0x485>
c0035aca:	a1 44 d5 03 c0       	mov    0xc003d544,%eax
c0035acf:	e9 20 fe ff ff       	jmp    c00358f4 <_malloc_r+0x554>
c0035ad4:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035ad7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035ada:	e9 88 fa ff ff       	jmp    c0035567 <_malloc_r+0x1c7>
c0035adf:	90                   	nop

c0035ae0 <memchr>:
c0035ae0:	55                   	push   %ebp
c0035ae1:	89 e5                	mov    %esp,%ebp
c0035ae3:	57                   	push   %edi
c0035ae4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035ae8:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035aeb:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035aee:	31 d2                	xor    %edx,%edx
c0035af0:	85 c9                	test   %ecx,%ecx
c0035af2:	74 79                	je     c0035b6d <L20>
c0035af4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035afa:	74 28                	je     c0035b24 <L5>
c0035afc:	3a 07                	cmp    (%edi),%al
c0035afe:	74 6a                	je     c0035b6a <L15>
c0035b00:	47                   	inc    %edi
c0035b01:	49                   	dec    %ecx
c0035b02:	74 69                	je     c0035b6d <L20>
c0035b04:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b0a:	74 18                	je     c0035b24 <L5>
c0035b0c:	3a 07                	cmp    (%edi),%al
c0035b0e:	74 5a                	je     c0035b6a <L15>
c0035b10:	47                   	inc    %edi
c0035b11:	49                   	dec    %ecx
c0035b12:	74 59                	je     c0035b6d <L20>
c0035b14:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035b1a:	74 08                	je     c0035b24 <L5>
c0035b1c:	3a 07                	cmp    (%edi),%al
c0035b1e:	74 4a                	je     c0035b6a <L15>
c0035b20:	47                   	inc    %edi
c0035b21:	49                   	dec    %ecx
c0035b22:	74 49                	je     c0035b6d <L20>

c0035b24 <L5>:
c0035b24:	88 c4                	mov    %al,%ah
c0035b26:	89 c2                	mov    %eax,%edx
c0035b28:	c1 e2 10             	shl    $0x10,%edx
c0035b2b:	09 d0                	or     %edx,%eax
c0035b2d:	53                   	push   %ebx
c0035b2e:	66 90                	xchg   %ax,%ax

c0035b30 <L8>:
c0035b30:	83 e9 04             	sub    $0x4,%ecx
c0035b33:	72 1c                	jb     c0035b51 <L9>
c0035b35:	8b 17                	mov    (%edi),%edx
c0035b37:	83 c7 04             	add    $0x4,%edi
c0035b3a:	31 c2                	xor    %eax,%edx
c0035b3c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035b42:	f7 d2                	not    %edx
c0035b44:	21 d3                	and    %edx,%ebx
c0035b46:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035b4c:	74 e2                	je     c0035b30 <L8>
c0035b4e:	83 ef 04             	sub    $0x4,%edi

c0035b51 <L9>:
c0035b51:	5b                   	pop    %ebx
c0035b52:	31 d2                	xor    %edx,%edx
c0035b54:	83 c1 04             	add    $0x4,%ecx
c0035b57:	74 14                	je     c0035b6d <L20>
c0035b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035b60 <L10>:
c0035b60:	3a 07                	cmp    (%edi),%al
c0035b62:	74 06                	je     c0035b6a <L15>
c0035b64:	47                   	inc    %edi
c0035b65:	49                   	dec    %ecx
c0035b66:	75 f8                	jne    c0035b60 <L10>
c0035b68:	31 ff                	xor    %edi,%edi

c0035b6a <L15>:
c0035b6a:	4a                   	dec    %edx
c0035b6b:	21 fa                	and    %edi,%edx

c0035b6d <L20>:
c0035b6d:	89 d0                	mov    %edx,%eax
c0035b6f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035b72:	5f                   	pop    %edi
c0035b73:	c9                   	leave  
c0035b74:	c3                   	ret    
c0035b75:	66 90                	xchg   %ax,%ax
c0035b77:	66 90                	xchg   %ax,%ax
c0035b79:	66 90                	xchg   %ax,%ax
c0035b7b:	66 90                	xchg   %ax,%ax
c0035b7d:	66 90                	xchg   %ax,%ax
c0035b7f:	90                   	nop

c0035b80 <__malloc_lock>:
c0035b80:	55                   	push   %ebp
c0035b81:	89 e5                	mov    %esp,%ebp
c0035b83:	5d                   	pop    %ebp
c0035b84:	c3                   	ret    
c0035b85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035b89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035b90 <__malloc_unlock>:
c0035b90:	55                   	push   %ebp
c0035b91:	89 e5                	mov    %esp,%ebp
c0035b93:	5d                   	pop    %ebp
c0035b94:	c3                   	ret    
c0035b95:	66 90                	xchg   %ax,%ax
c0035b97:	66 90                	xchg   %ax,%ax
c0035b99:	66 90                	xchg   %ax,%ax
c0035b9b:	66 90                	xchg   %ax,%ax
c0035b9d:	66 90                	xchg   %ax,%ax
c0035b9f:	90                   	nop

c0035ba0 <_Balloc>:
c0035ba0:	55                   	push   %ebp
c0035ba1:	89 e5                	mov    %esp,%ebp
c0035ba3:	57                   	push   %edi
c0035ba4:	56                   	push   %esi
c0035ba5:	53                   	push   %ebx
c0035ba6:	83 ec 1c             	sub    $0x1c,%esp
c0035ba9:	8b 75 08             	mov    0x8(%ebp),%esi
c0035bac:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035baf:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035bb2:	85 c0                	test   %eax,%eax
c0035bb4:	74 2a                	je     c0035be0 <_Balloc+0x40>
c0035bb6:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035bb9:	8b 02                	mov    (%edx),%eax
c0035bbb:	85 c0                	test   %eax,%eax
c0035bbd:	74 49                	je     c0035c08 <_Balloc+0x68>
c0035bbf:	8b 08                	mov    (%eax),%ecx
c0035bc1:	89 0a                	mov    %ecx,(%edx)
c0035bc3:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035bca:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035bd1:	83 c4 1c             	add    $0x1c,%esp
c0035bd4:	5b                   	pop    %ebx
c0035bd5:	5e                   	pop    %esi
c0035bd6:	5f                   	pop    %edi
c0035bd7:	5d                   	pop    %ebp
c0035bd8:	c3                   	ret    
c0035bd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035be0:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035be7:	00 
c0035be8:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035bef:	00 
c0035bf0:	89 34 24             	mov    %esi,(%esp)
c0035bf3:	e8 38 1f 00 00       	call   c0037b30 <_calloc_r>
c0035bf8:	85 c0                	test   %eax,%eax
c0035bfa:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035bfd:	75 b7                	jne    c0035bb6 <_Balloc+0x16>
c0035bff:	31 c0                	xor    %eax,%eax
c0035c01:	eb ce                	jmp    c0035bd1 <_Balloc+0x31>
c0035c03:	90                   	nop
c0035c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035c08:	89 d9                	mov    %ebx,%ecx
c0035c0a:	bf 01 00 00 00       	mov    $0x1,%edi
c0035c0f:	d3 e7                	shl    %cl,%edi
c0035c11:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035c18:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035c1c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035c23:	00 
c0035c24:	89 34 24             	mov    %esi,(%esp)
c0035c27:	e8 04 1f 00 00       	call   c0037b30 <_calloc_r>
c0035c2c:	85 c0                	test   %eax,%eax
c0035c2e:	74 cf                	je     c0035bff <_Balloc+0x5f>
c0035c30:	89 58 04             	mov    %ebx,0x4(%eax)
c0035c33:	89 78 08             	mov    %edi,0x8(%eax)
c0035c36:	eb 8b                	jmp    c0035bc3 <_Balloc+0x23>
c0035c38:	90                   	nop
c0035c39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035c40 <_Bfree>:
c0035c40:	55                   	push   %ebp
c0035c41:	89 e5                	mov    %esp,%ebp
c0035c43:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c46:	85 c0                	test   %eax,%eax
c0035c48:	74 12                	je     c0035c5c <_Bfree+0x1c>
c0035c4a:	8b 55 08             	mov    0x8(%ebp),%edx
c0035c4d:	8b 48 04             	mov    0x4(%eax),%ecx
c0035c50:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035c53:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035c56:	8b 0a                	mov    (%edx),%ecx
c0035c58:	89 08                	mov    %ecx,(%eax)
c0035c5a:	89 02                	mov    %eax,(%edx)
c0035c5c:	5d                   	pop    %ebp
c0035c5d:	c3                   	ret    
c0035c5e:	66 90                	xchg   %ax,%ax

c0035c60 <__multadd>:
c0035c60:	55                   	push   %ebp
c0035c61:	89 e5                	mov    %esp,%ebp
c0035c63:	57                   	push   %edi
c0035c64:	56                   	push   %esi
c0035c65:	53                   	push   %ebx
c0035c66:	83 ec 2c             	sub    $0x2c,%esp
c0035c69:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c6c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035c6f:	8b 40 10             	mov    0x10(%eax),%eax
c0035c72:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035c75:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c78:	8d 78 14             	lea    0x14(%eax),%edi
c0035c7b:	31 c0                	xor    %eax,%eax
c0035c7d:	8d 76 00             	lea    0x0(%esi),%esi
c0035c80:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035c83:	0f b7 d1             	movzwl %cx,%edx
c0035c86:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035c8a:	c1 e9 10             	shr    $0x10,%ecx
c0035c8d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035c91:	01 da                	add    %ebx,%edx
c0035c93:	89 d3                	mov    %edx,%ebx
c0035c95:	0f b7 d2             	movzwl %dx,%edx
c0035c98:	c1 eb 10             	shr    $0x10,%ebx
c0035c9b:	01 d9                	add    %ebx,%ecx
c0035c9d:	89 ce                	mov    %ecx,%esi
c0035c9f:	c1 e1 10             	shl    $0x10,%ecx
c0035ca2:	01 d1                	add    %edx,%ecx
c0035ca4:	c1 ee 10             	shr    $0x10,%esi
c0035ca7:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035caa:	83 c0 01             	add    $0x1,%eax
c0035cad:	89 f3                	mov    %esi,%ebx
c0035caf:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035cb2:	7f cc                	jg     c0035c80 <__multadd+0x20>
c0035cb4:	85 f6                	test   %esi,%esi
c0035cb6:	74 1b                	je     c0035cd3 <__multadd+0x73>
c0035cb8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cbb:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035cbe:	3b 78 08             	cmp    0x8(%eax),%edi
c0035cc1:	7d 1d                	jge    c0035ce0 <__multadd+0x80>
c0035cc3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035cc6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035cc9:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035ccd:	83 c0 01             	add    $0x1,%eax
c0035cd0:	89 47 10             	mov    %eax,0x10(%edi)
c0035cd3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cd6:	83 c4 2c             	add    $0x2c,%esp
c0035cd9:	5b                   	pop    %ebx
c0035cda:	5e                   	pop    %esi
c0035cdb:	5f                   	pop    %edi
c0035cdc:	5d                   	pop    %ebp
c0035cdd:	c3                   	ret    
c0035cde:	66 90                	xchg   %ax,%ax
c0035ce0:	8b 40 04             	mov    0x4(%eax),%eax
c0035ce3:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035ce6:	83 c0 01             	add    $0x1,%eax
c0035ce9:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035ced:	8b 45 08             	mov    0x8(%ebp),%eax
c0035cf0:	89 04 24             	mov    %eax,(%esp)
c0035cf3:	e8 a8 fe ff ff       	call   c0035ba0 <_Balloc>
c0035cf8:	89 c3                	mov    %eax,%ebx
c0035cfa:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cfd:	8b 40 10             	mov    0x10(%eax),%eax
c0035d00:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035d07:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035d0b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d0e:	83 c0 0c             	add    $0xc,%eax
c0035d11:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d15:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035d18:	89 04 24             	mov    %eax,(%esp)
c0035d1b:	e8 c4 c0 ff ff       	call   c0031de4 <memcpy>
c0035d20:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035d23:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035d26:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035d29:	8b 50 04             	mov    0x4(%eax),%edx
c0035d2c:	8b 45 08             	mov    0x8(%ebp),%eax
c0035d2f:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035d32:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035d35:	8b 10                	mov    (%eax),%edx
c0035d37:	89 17                	mov    %edx,(%edi)
c0035d39:	89 38                	mov    %edi,(%eax)
c0035d3b:	eb 86                	jmp    c0035cc3 <__multadd+0x63>
c0035d3d:	8d 76 00             	lea    0x0(%esi),%esi

c0035d40 <__s2b>:
c0035d40:	55                   	push   %ebp
c0035d41:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035d46:	89 e5                	mov    %esp,%ebp
c0035d48:	57                   	push   %edi
c0035d49:	56                   	push   %esi
c0035d4a:	53                   	push   %ebx
c0035d4b:	83 ec 2c             	sub    $0x2c,%esp
c0035d4e:	8b 45 14             	mov    0x14(%ebp),%eax
c0035d51:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035d54:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035d57:	8d 48 08             	lea    0x8(%eax),%ecx
c0035d5a:	89 c8                	mov    %ecx,%eax
c0035d5c:	f7 ea                	imul   %edx
c0035d5e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035d61:	d1 fa                	sar    %edx
c0035d63:	29 ca                	sub    %ecx,%edx
c0035d65:	83 fa 01             	cmp    $0x1,%edx
c0035d68:	0f 8e be 00 00 00    	jle    c0035e2c <__s2b+0xec>
c0035d6e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035d73:	31 c9                	xor    %ecx,%ecx
c0035d75:	8d 76 00             	lea    0x0(%esi),%esi
c0035d78:	01 c0                	add    %eax,%eax
c0035d7a:	83 c1 01             	add    $0x1,%ecx
c0035d7d:	39 c2                	cmp    %eax,%edx
c0035d7f:	7f f7                	jg     c0035d78 <__s2b+0x38>
c0035d81:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035d85:	89 1c 24             	mov    %ebx,(%esp)
c0035d88:	e8 13 fe ff ff       	call   c0035ba0 <_Balloc>
c0035d8d:	8b 55 18             	mov    0x18(%ebp),%edx
c0035d90:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035d94:	89 50 14             	mov    %edx,0x14(%eax)
c0035d97:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035d9e:	0f 8e 7c 00 00 00    	jle    c0035e20 <__s2b+0xe0>
c0035da4:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035da7:	03 75 10             	add    0x10(%ebp),%esi
c0035daa:	89 cf                	mov    %ecx,%edi
c0035dac:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035daf:	90                   	nop
c0035db0:	83 c7 01             	add    $0x1,%edi
c0035db3:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035db7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dbe:	00 
c0035dbf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035dc3:	89 1c 24             	mov    %ebx,(%esp)
c0035dc6:	83 ea 30             	sub    $0x30,%edx
c0035dc9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035dcd:	e8 8e fe ff ff       	call   c0035c60 <__multadd>
c0035dd2:	39 f7                	cmp    %esi,%edi
c0035dd4:	75 da                	jne    c0035db0 <__s2b+0x70>
c0035dd6:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035dd9:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035ddc:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035de0:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035de3:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035de6:	7e 2e                	jle    c0035e16 <__s2b+0xd6>
c0035de8:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035deb:	29 cf                	sub    %ecx,%edi
c0035ded:	01 f7                	add    %esi,%edi
c0035def:	90                   	nop
c0035df0:	83 c6 01             	add    $0x1,%esi
c0035df3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035df7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dfe:	00 
c0035dff:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035e03:	89 1c 24             	mov    %ebx,(%esp)
c0035e06:	83 ea 30             	sub    $0x30,%edx
c0035e09:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035e0d:	e8 4e fe ff ff       	call   c0035c60 <__multadd>
c0035e12:	39 fe                	cmp    %edi,%esi
c0035e14:	75 da                	jne    c0035df0 <__s2b+0xb0>
c0035e16:	83 c4 2c             	add    $0x2c,%esp
c0035e19:	5b                   	pop    %ebx
c0035e1a:	5e                   	pop    %esi
c0035e1b:	5f                   	pop    %edi
c0035e1c:	5d                   	pop    %ebp
c0035e1d:	c3                   	ret    
c0035e1e:	66 90                	xchg   %ax,%ax
c0035e20:	83 c6 0a             	add    $0xa,%esi
c0035e23:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035e2a:	eb b4                	jmp    c0035de0 <__s2b+0xa0>
c0035e2c:	31 c9                	xor    %ecx,%ecx
c0035e2e:	e9 4e ff ff ff       	jmp    c0035d81 <__s2b+0x41>
c0035e33:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035e39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035e40 <__hi0bits>:
c0035e40:	55                   	push   %ebp
c0035e41:	31 c9                	xor    %ecx,%ecx
c0035e43:	89 e5                	mov    %esp,%ebp
c0035e45:	8b 55 08             	mov    0x8(%ebp),%edx
c0035e48:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035e4e:	75 05                	jne    c0035e55 <__hi0bits+0x15>
c0035e50:	c1 e2 10             	shl    $0x10,%edx
c0035e53:	b1 10                	mov    $0x10,%cl
c0035e55:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035e5b:	75 06                	jne    c0035e63 <__hi0bits+0x23>
c0035e5d:	83 c1 08             	add    $0x8,%ecx
c0035e60:	c1 e2 08             	shl    $0x8,%edx
c0035e63:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035e69:	75 06                	jne    c0035e71 <__hi0bits+0x31>
c0035e6b:	83 c1 04             	add    $0x4,%ecx
c0035e6e:	c1 e2 04             	shl    $0x4,%edx
c0035e71:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035e77:	75 06                	jne    c0035e7f <__hi0bits+0x3f>
c0035e79:	83 c1 02             	add    $0x2,%ecx
c0035e7c:	c1 e2 02             	shl    $0x2,%edx
c0035e7f:	85 d2                	test   %edx,%edx
c0035e81:	89 c8                	mov    %ecx,%eax
c0035e83:	78 0d                	js     c0035e92 <__hi0bits+0x52>
c0035e85:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035e8b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035e90:	75 06                	jne    c0035e98 <__hi0bits+0x58>
c0035e92:	5d                   	pop    %ebp
c0035e93:	c3                   	ret    
c0035e94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035e98:	8d 41 01             	lea    0x1(%ecx),%eax
c0035e9b:	5d                   	pop    %ebp
c0035e9c:	c3                   	ret    
c0035e9d:	8d 76 00             	lea    0x0(%esi),%esi

c0035ea0 <__lo0bits>:
c0035ea0:	55                   	push   %ebp
c0035ea1:	89 e5                	mov    %esp,%ebp
c0035ea3:	53                   	push   %ebx
c0035ea4:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035ea7:	8b 13                	mov    (%ebx),%edx
c0035ea9:	f6 c2 07             	test   $0x7,%dl
c0035eac:	74 1a                	je     c0035ec8 <__lo0bits+0x28>
c0035eae:	31 c0                	xor    %eax,%eax
c0035eb0:	f6 c2 01             	test   $0x1,%dl
c0035eb3:	75 0f                	jne    c0035ec4 <__lo0bits+0x24>
c0035eb5:	f6 c2 02             	test   $0x2,%dl
c0035eb8:	75 56                	jne    c0035f10 <__lo0bits+0x70>
c0035eba:	c1 ea 02             	shr    $0x2,%edx
c0035ebd:	b8 02 00 00 00       	mov    $0x2,%eax
c0035ec2:	89 13                	mov    %edx,(%ebx)
c0035ec4:	5b                   	pop    %ebx
c0035ec5:	5d                   	pop    %ebp
c0035ec6:	c3                   	ret    
c0035ec7:	90                   	nop
c0035ec8:	31 c9                	xor    %ecx,%ecx
c0035eca:	66 85 d2             	test   %dx,%dx
c0035ecd:	75 05                	jne    c0035ed4 <__lo0bits+0x34>
c0035ecf:	c1 ea 10             	shr    $0x10,%edx
c0035ed2:	b1 10                	mov    $0x10,%cl
c0035ed4:	84 d2                	test   %dl,%dl
c0035ed6:	75 06                	jne    c0035ede <__lo0bits+0x3e>
c0035ed8:	83 c1 08             	add    $0x8,%ecx
c0035edb:	c1 ea 08             	shr    $0x8,%edx
c0035ede:	f6 c2 0f             	test   $0xf,%dl
c0035ee1:	75 06                	jne    c0035ee9 <__lo0bits+0x49>
c0035ee3:	83 c1 04             	add    $0x4,%ecx
c0035ee6:	c1 ea 04             	shr    $0x4,%edx
c0035ee9:	f6 c2 03             	test   $0x3,%dl
c0035eec:	75 06                	jne    c0035ef4 <__lo0bits+0x54>
c0035eee:	83 c1 02             	add    $0x2,%ecx
c0035ef1:	c1 ea 02             	shr    $0x2,%edx
c0035ef4:	f6 c2 01             	test   $0x1,%dl
c0035ef7:	75 0c                	jne    c0035f05 <__lo0bits+0x65>
c0035ef9:	d1 ea                	shr    %edx
c0035efb:	b8 20 00 00 00       	mov    $0x20,%eax
c0035f00:	74 c2                	je     c0035ec4 <__lo0bits+0x24>
c0035f02:	83 c1 01             	add    $0x1,%ecx
c0035f05:	89 13                	mov    %edx,(%ebx)
c0035f07:	89 c8                	mov    %ecx,%eax
c0035f09:	5b                   	pop    %ebx
c0035f0a:	5d                   	pop    %ebp
c0035f0b:	c3                   	ret    
c0035f0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f10:	d1 ea                	shr    %edx
c0035f12:	b0 01                	mov    $0x1,%al
c0035f14:	89 13                	mov    %edx,(%ebx)
c0035f16:	5b                   	pop    %ebx
c0035f17:	5d                   	pop    %ebp
c0035f18:	c3                   	ret    
c0035f19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f20 <__i2b>:
c0035f20:	55                   	push   %ebp
c0035f21:	89 e5                	mov    %esp,%ebp
c0035f23:	83 ec 18             	sub    $0x18,%esp
c0035f26:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f29:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035f30:	00 
c0035f31:	89 04 24             	mov    %eax,(%esp)
c0035f34:	e8 67 fc ff ff       	call   c0035ba0 <_Balloc>
c0035f39:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035f3c:	89 50 14             	mov    %edx,0x14(%eax)
c0035f3f:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035f46:	c9                   	leave  
c0035f47:	c3                   	ret    
c0035f48:	90                   	nop
c0035f49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f50 <__multiply>:
c0035f50:	55                   	push   %ebp
c0035f51:	89 e5                	mov    %esp,%ebp
c0035f53:	57                   	push   %edi
c0035f54:	56                   	push   %esi
c0035f55:	53                   	push   %ebx
c0035f56:	83 ec 3c             	sub    $0x3c,%esp
c0035f59:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035f5c:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f5f:	8b 7e 10             	mov    0x10(%esi),%edi
c0035f62:	8b 58 10             	mov    0x10(%eax),%ebx
c0035f65:	39 df                	cmp    %ebx,%edi
c0035f67:	7d 0e                	jge    c0035f77 <__multiply+0x27>
c0035f69:	89 f8                	mov    %edi,%eax
c0035f6b:	89 df                	mov    %ebx,%edi
c0035f6d:	89 c3                	mov    %eax,%ebx
c0035f6f:	89 f0                	mov    %esi,%eax
c0035f71:	8b 75 10             	mov    0x10(%ebp),%esi
c0035f74:	89 45 10             	mov    %eax,0x10(%ebp)
c0035f77:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035f7a:	3b 46 08             	cmp    0x8(%esi),%eax
c0035f7d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0035f80:	0f 9f c0             	setg   %al
c0035f83:	0f b6 c0             	movzbl %al,%eax
c0035f86:	03 46 04             	add    0x4(%esi),%eax
c0035f89:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035f8d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f90:	89 04 24             	mov    %eax,(%esp)
c0035f93:	e8 08 fc ff ff       	call   c0035ba0 <_Balloc>
c0035f98:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035f9b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035f9e:	8d 40 14             	lea    0x14(%eax),%eax
c0035fa1:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0035fa4:	89 d1                	mov    %edx,%ecx
c0035fa6:	39 c8                	cmp    %ecx,%eax
c0035fa8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035fab:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c0035fae:	73 15                	jae    c0035fc5 <__multiply+0x75>
c0035fb0:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0035fb3:	90                   	nop
c0035fb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035fb8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0035fbe:	83 c0 04             	add    $0x4,%eax
c0035fc1:	39 c2                	cmp    %eax,%edx
c0035fc3:	77 f3                	ja     c0035fb8 <__multiply+0x68>
c0035fc5:	8d 46 14             	lea    0x14(%esi),%eax
c0035fc8:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0035fcb:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c0035fce:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0035fd1:	8b 45 10             	mov    0x10(%ebp),%eax
c0035fd4:	83 c0 14             	add    $0x14,%eax
c0035fd7:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c0035fda:	39 f8                	cmp    %edi,%eax
c0035fdc:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0035fdf:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0035fe2:	0f 83 e8 00 00 00    	jae    c00360d0 <__multiply+0x180>
c0035fe8:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0035feb:	8b 00                	mov    (%eax),%eax
c0035fed:	0f b7 f8             	movzwl %ax,%edi
c0035ff0:	85 ff                	test   %edi,%edi
c0035ff2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0035ff5:	74 5a                	je     c0036051 <__multiply+0x101>
c0035ff7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0035ffa:	31 db                	xor    %ebx,%ebx
c0035ffc:	8b 75 d0             	mov    -0x30(%ebp),%esi
c0035fff:	eb 09                	jmp    c003600a <__multiply+0xba>
c0036001:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036008:	89 fa                	mov    %edi,%edx
c003600a:	8b 0e                	mov    (%esi),%ecx
c003600c:	83 c6 04             	add    $0x4,%esi
c003600f:	0f b7 3a             	movzwl (%edx),%edi
c0036012:	0f b7 c1             	movzwl %cx,%eax
c0036015:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0036019:	c1 e9 10             	shr    $0x10,%ecx
c003601c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036020:	01 f8                	add    %edi,%eax
c0036022:	01 d8                	add    %ebx,%eax
c0036024:	8b 1a                	mov    (%edx),%ebx
c0036026:	8d 7a 04             	lea    0x4(%edx),%edi
c0036029:	c1 eb 10             	shr    $0x10,%ebx
c003602c:	01 d9                	add    %ebx,%ecx
c003602e:	89 c3                	mov    %eax,%ebx
c0036030:	c1 eb 10             	shr    $0x10,%ebx
c0036033:	0f b7 c0             	movzwl %ax,%eax
c0036036:	01 d9                	add    %ebx,%ecx
c0036038:	89 cb                	mov    %ecx,%ebx
c003603a:	c1 e1 10             	shl    $0x10,%ecx
c003603d:	09 c1                	or     %eax,%ecx
c003603f:	c1 eb 10             	shr    $0x10,%ebx
c0036042:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0036045:	89 0a                	mov    %ecx,(%edx)
c0036047:	77 bf                	ja     c0036008 <__multiply+0xb8>
c0036049:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003604c:	89 5a 04             	mov    %ebx,0x4(%edx)
c003604f:	8b 00                	mov    (%eax),%eax
c0036051:	c1 e8 10             	shr    $0x10,%eax
c0036054:	85 c0                	test   %eax,%eax
c0036056:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036059:	74 61                	je     c00360bc <__multiply+0x16c>
c003605b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003605e:	31 ff                	xor    %edi,%edi
c0036060:	89 fe                	mov    %edi,%esi
c0036062:	8b 10                	mov    (%eax),%edx
c0036064:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036067:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003606a:	89 d3                	mov    %edx,%ebx
c003606c:	eb 05                	jmp    c0036073 <__multiply+0x123>
c003606e:	66 90                	xchg   %ax,%ax
c0036070:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036073:	0f b7 08             	movzwl (%eax),%ecx
c0036076:	c1 eb 10             	shr    $0x10,%ebx
c0036079:	0f b7 d2             	movzwl %dx,%edx
c003607c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036080:	83 c0 04             	add    $0x4,%eax
c0036083:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036086:	01 f7                	add    %esi,%edi
c0036088:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003608b:	89 fb                	mov    %edi,%ebx
c003608d:	c1 e3 10             	shl    $0x10,%ebx
c0036090:	09 d3                	or     %edx,%ebx
c0036092:	89 1e                	mov    %ebx,(%esi)
c0036094:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036097:	8d 4e 04             	lea    0x4(%esi),%ecx
c003609a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003609e:	c1 ef 10             	shr    $0x10,%edi
c00360a1:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c00360a5:	0f b7 f3             	movzwl %bx,%esi
c00360a8:	01 f2                	add    %esi,%edx
c00360aa:	01 fa                	add    %edi,%edx
c00360ac:	89 d6                	mov    %edx,%esi
c00360ae:	c1 ee 10             	shr    $0x10,%esi
c00360b1:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c00360b4:	77 ba                	ja     c0036070 <__multiply+0x120>
c00360b6:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00360b9:	89 50 04             	mov    %edx,0x4(%eax)
c00360bc:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c00360c0:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00360c3:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c00360c7:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c00360ca:	0f 87 18 ff ff ff    	ja     c0035fe8 <__multiply+0x98>
c00360d0:	8b 75 c8             	mov    -0x38(%ebp),%esi
c00360d3:	85 f6                	test   %esi,%esi
c00360d5:	7e 29                	jle    c0036100 <__multiply+0x1b0>
c00360d7:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c00360da:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00360dd:	85 db                	test   %ebx,%ebx
c00360df:	75 1f                	jne    c0036100 <__multiply+0x1b0>
c00360e1:	8b 55 c8             	mov    -0x38(%ebp),%edx
c00360e4:	89 d0                	mov    %edx,%eax
c00360e6:	c1 e0 02             	shl    $0x2,%eax
c00360e9:	29 c7                	sub    %eax,%edi
c00360eb:	89 f8                	mov    %edi,%eax
c00360ed:	eb 09                	jmp    c00360f8 <__multiply+0x1a8>
c00360ef:	90                   	nop
c00360f0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00360f4:	85 c9                	test   %ecx,%ecx
c00360f6:	75 05                	jne    c00360fd <__multiply+0x1ad>
c00360f8:	83 ea 01             	sub    $0x1,%edx
c00360fb:	75 f3                	jne    c00360f0 <__multiply+0x1a0>
c00360fd:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0036100:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0036103:	8b 7d c8             	mov    -0x38(%ebp),%edi
c0036106:	89 78 10             	mov    %edi,0x10(%eax)
c0036109:	83 c4 3c             	add    $0x3c,%esp
c003610c:	5b                   	pop    %ebx
c003610d:	5e                   	pop    %esi
c003610e:	5f                   	pop    %edi
c003610f:	5d                   	pop    %ebp
c0036110:	c3                   	ret    
c0036111:	eb 0d                	jmp    c0036120 <__pow5mult>
c0036113:	90                   	nop
c0036114:	90                   	nop
c0036115:	90                   	nop
c0036116:	90                   	nop
c0036117:	90                   	nop
c0036118:	90                   	nop
c0036119:	90                   	nop
c003611a:	90                   	nop
c003611b:	90                   	nop
c003611c:	90                   	nop
c003611d:	90                   	nop
c003611e:	90                   	nop
c003611f:	90                   	nop

c0036120 <__pow5mult>:
c0036120:	55                   	push   %ebp
c0036121:	89 e5                	mov    %esp,%ebp
c0036123:	57                   	push   %edi
c0036124:	56                   	push   %esi
c0036125:	53                   	push   %ebx
c0036126:	83 ec 2c             	sub    $0x2c,%esp
c0036129:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003612c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003612f:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0036132:	89 d8                	mov    %ebx,%eax
c0036134:	83 e0 03             	and    $0x3,%eax
c0036137:	0f 85 a3 00 00 00    	jne    c00361e0 <__pow5mult+0xc0>
c003613d:	c1 fb 02             	sar    $0x2,%ebx
c0036140:	85 db                	test   %ebx,%ebx
c0036142:	74 5c                	je     c00361a0 <__pow5mult+0x80>
c0036144:	8b 71 48             	mov    0x48(%ecx),%esi
c0036147:	85 f6                	test   %esi,%esi
c0036149:	0f 84 bd 00 00 00    	je     c003620c <__pow5mult+0xec>
c003614f:	f6 c3 01             	test   $0x1,%bl
c0036152:	75 15                	jne    c0036169 <__pow5mult+0x49>
c0036154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036158:	d1 fb                	sar    %ebx
c003615a:	74 44                	je     c00361a0 <__pow5mult+0x80>
c003615c:	8b 06                	mov    (%esi),%eax
c003615e:	85 c0                	test   %eax,%eax
c0036160:	74 4e                	je     c00361b0 <__pow5mult+0x90>
c0036162:	89 c6                	mov    %eax,%esi
c0036164:	f6 c3 01             	test   $0x1,%bl
c0036167:	74 ef                	je     c0036158 <__pow5mult+0x38>
c0036169:	89 0c 24             	mov    %ecx,(%esp)
c003616c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036170:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036174:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036177:	e8 d4 fd ff ff       	call   c0035f50 <__multiply>
c003617c:	85 ff                	test   %edi,%edi
c003617e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036181:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036184:	74 52                	je     c00361d8 <__pow5mult+0xb8>
c0036186:	8b 57 04             	mov    0x4(%edi),%edx
c0036189:	d1 fb                	sar    %ebx
c003618b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003618e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036191:	8b 10                	mov    (%eax),%edx
c0036193:	89 17                	mov    %edx,(%edi)
c0036195:	89 38                	mov    %edi,(%eax)
c0036197:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003619a:	75 c0                	jne    c003615c <__pow5mult+0x3c>
c003619c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00361a0:	83 c4 2c             	add    $0x2c,%esp
c00361a3:	89 f8                	mov    %edi,%eax
c00361a5:	5b                   	pop    %ebx
c00361a6:	5e                   	pop    %esi
c00361a7:	5f                   	pop    %edi
c00361a8:	5d                   	pop    %ebp
c00361a9:	c3                   	ret    
c00361aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361b0:	89 74 24 08          	mov    %esi,0x8(%esp)
c00361b4:	89 74 24 04          	mov    %esi,0x4(%esp)
c00361b8:	89 0c 24             	mov    %ecx,(%esp)
c00361bb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361be:	e8 8d fd ff ff       	call   c0035f50 <__multiply>
c00361c3:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361c6:	89 06                	mov    %eax,(%esi)
c00361c8:	89 c6                	mov    %eax,%esi
c00361ca:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00361d0:	eb 92                	jmp    c0036164 <__pow5mult+0x44>
c00361d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00361d8:	8b 7d e0             	mov    -0x20(%ebp),%edi
c00361db:	e9 78 ff ff ff       	jmp    c0036158 <__pow5mult+0x38>
c00361e0:	8b 04 85 fc 9a 03 c0 	mov    -0x3ffc6504(,%eax,4),%eax
c00361e7:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00361eb:	89 0c 24             	mov    %ecx,(%esp)
c00361ee:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00361f5:	00 
c00361f6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00361fa:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361fd:	e8 5e fa ff ff       	call   c0035c60 <__multadd>
c0036202:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036205:	89 c7                	mov    %eax,%edi
c0036207:	e9 31 ff ff ff       	jmp    c003613d <__pow5mult+0x1d>
c003620c:	89 0c 24             	mov    %ecx,(%esp)
c003620f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036216:	00 
c0036217:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003621a:	e8 81 f9 ff ff       	call   c0035ba0 <_Balloc>
c003621f:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036222:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c0036229:	89 c6                	mov    %eax,%esi
c003622b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036232:	89 41 48             	mov    %eax,0x48(%ecx)
c0036235:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c003623b:	e9 0f ff ff ff       	jmp    c003614f <__pow5mult+0x2f>

c0036240 <__lshift>:
c0036240:	55                   	push   %ebp
c0036241:	89 e5                	mov    %esp,%ebp
c0036243:	57                   	push   %edi
c0036244:	56                   	push   %esi
c0036245:	53                   	push   %ebx
c0036246:	83 ec 2c             	sub    $0x2c,%esp
c0036249:	8b 45 0c             	mov    0xc(%ebp),%eax
c003624c:	8b 75 10             	mov    0x10(%ebp),%esi
c003624f:	89 c7                	mov    %eax,%edi
c0036251:	8b 50 04             	mov    0x4(%eax),%edx
c0036254:	8b 40 10             	mov    0x10(%eax),%eax
c0036257:	89 f3                	mov    %esi,%ebx
c0036259:	c1 fb 05             	sar    $0x5,%ebx
c003625c:	01 d8                	add    %ebx,%eax
c003625e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036261:	83 c0 01             	add    $0x1,%eax
c0036264:	89 c1                	mov    %eax,%ecx
c0036266:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036269:	8b 47 08             	mov    0x8(%edi),%eax
c003626c:	39 c1                	cmp    %eax,%ecx
c003626e:	7e 09                	jle    c0036279 <__lshift+0x39>
c0036270:	01 c0                	add    %eax,%eax
c0036272:	83 c2 01             	add    $0x1,%edx
c0036275:	39 c1                	cmp    %eax,%ecx
c0036277:	7f f7                	jg     c0036270 <__lshift+0x30>
c0036279:	8b 45 08             	mov    0x8(%ebp),%eax
c003627c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036280:	89 04 24             	mov    %eax,(%esp)
c0036283:	e8 18 f9 ff ff       	call   c0035ba0 <_Balloc>
c0036288:	85 db                	test   %ebx,%ebx
c003628a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003628d:	8d 50 14             	lea    0x14(%eax),%edx
c0036290:	7e 17                	jle    c00362a9 <__lshift+0x69>
c0036292:	31 c0                	xor    %eax,%eax
c0036294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036298:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003629f:	83 c0 01             	add    $0x1,%eax
c00362a2:	39 d8                	cmp    %ebx,%eax
c00362a4:	75 f2                	jne    c0036298 <__lshift+0x58>
c00362a6:	8d 14 82             	lea    (%edx,%eax,4),%edx
c00362a9:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00362ac:	8b 45 0c             	mov    0xc(%ebp),%eax
c00362af:	8b 4f 10             	mov    0x10(%edi),%ecx
c00362b2:	83 c0 14             	add    $0x14,%eax
c00362b5:	83 e6 1f             	and    $0x1f,%esi
c00362b8:	89 75 e0             	mov    %esi,-0x20(%ebp)
c00362bb:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c00362be:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c00362c1:	74 7d                	je     c0036340 <__lshift+0x100>
c00362c3:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c00362ca:	29 75 dc             	sub    %esi,-0x24(%ebp)
c00362cd:	31 f6                	xor    %esi,%esi
c00362cf:	eb 09                	jmp    c00362da <__lshift+0x9a>
c00362d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00362d8:	89 fa                	mov    %edi,%edx
c00362da:	8b 18                	mov    (%eax),%ebx
c00362dc:	83 c0 04             	add    $0x4,%eax
c00362df:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00362e3:	8d 7a 04             	lea    0x4(%edx),%edi
c00362e6:	d3 e3                	shl    %cl,%ebx
c00362e8:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c00362ec:	09 f3                	or     %esi,%ebx
c00362ee:	89 1a                	mov    %ebx,(%edx)
c00362f0:	8b 70 fc             	mov    -0x4(%eax),%esi
c00362f3:	d3 ee                	shr    %cl,%esi
c00362f5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00362f8:	77 de                	ja     c00362d8 <__lshift+0x98>
c00362fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00362fd:	89 72 04             	mov    %esi,0x4(%edx)
c0036300:	83 c0 02             	add    $0x2,%eax
c0036303:	85 f6                	test   %esi,%esi
c0036305:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c0036309:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003630c:	8b 45 d8             	mov    -0x28(%ebp),%eax
c003630f:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0036312:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036315:	83 e8 01             	sub    $0x1,%eax
c0036318:	89 47 10             	mov    %eax,0x10(%edi)
c003631b:	8b 45 0c             	mov    0xc(%ebp),%eax
c003631e:	8b 50 04             	mov    0x4(%eax),%edx
c0036321:	8b 45 08             	mov    0x8(%ebp),%eax
c0036324:	8b 40 4c             	mov    0x4c(%eax),%eax
c0036327:	8d 04 90             	lea    (%eax,%edx,4),%eax
c003632a:	8b 10                	mov    (%eax),%edx
c003632c:	89 16                	mov    %edx,(%esi)
c003632e:	89 30                	mov    %esi,(%eax)
c0036330:	83 c4 2c             	add    $0x2c,%esp
c0036333:	89 f8                	mov    %edi,%eax
c0036335:	5b                   	pop    %ebx
c0036336:	5e                   	pop    %esi
c0036337:	5f                   	pop    %edi
c0036338:	5d                   	pop    %ebp
c0036339:	c3                   	ret    
c003633a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036340:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c0036343:	90                   	nop
c0036344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036348:	83 c0 04             	add    $0x4,%eax
c003634b:	8b 48 fc             	mov    -0x4(%eax),%ecx
c003634e:	83 c2 04             	add    $0x4,%edx
c0036351:	39 c3                	cmp    %eax,%ebx
c0036353:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036356:	77 f0                	ja     c0036348 <__lshift+0x108>
c0036358:	eb b2                	jmp    c003630c <__lshift+0xcc>
c003635a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036360 <__mcmp>:
c0036360:	55                   	push   %ebp
c0036361:	89 e5                	mov    %esp,%ebp
c0036363:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036366:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036369:	53                   	push   %ebx
c003636a:	8b 41 10             	mov    0x10(%ecx),%eax
c003636d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036370:	29 d8                	sub    %ebx,%eax
c0036372:	85 c0                	test   %eax,%eax
c0036374:	75 27                	jne    c003639d <__mcmp+0x3d>
c0036376:	c1 e3 02             	shl    $0x2,%ebx
c0036379:	83 c1 14             	add    $0x14,%ecx
c003637c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003637f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036383:	eb 07                	jmp    c003638c <__mcmp+0x2c>
c0036385:	8d 76 00             	lea    0x0(%esi),%esi
c0036388:	39 c1                	cmp    %eax,%ecx
c003638a:	73 14                	jae    c00363a0 <__mcmp+0x40>
c003638c:	83 ea 04             	sub    $0x4,%edx
c003638f:	83 e8 04             	sub    $0x4,%eax
c0036392:	8b 1a                	mov    (%edx),%ebx
c0036394:	39 18                	cmp    %ebx,(%eax)
c0036396:	74 f0                	je     c0036388 <__mcmp+0x28>
c0036398:	19 c0                	sbb    %eax,%eax
c003639a:	83 c8 01             	or     $0x1,%eax
c003639d:	5b                   	pop    %ebx
c003639e:	5d                   	pop    %ebp
c003639f:	c3                   	ret    
c00363a0:	31 c0                	xor    %eax,%eax
c00363a2:	5b                   	pop    %ebx
c00363a3:	5d                   	pop    %ebp
c00363a4:	c3                   	ret    
c00363a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00363a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00363b0 <__mdiff>:
c00363b0:	55                   	push   %ebp
c00363b1:	89 e5                	mov    %esp,%ebp
c00363b3:	57                   	push   %edi
c00363b4:	56                   	push   %esi
c00363b5:	53                   	push   %ebx
c00363b6:	83 ec 2c             	sub    $0x2c,%esp
c00363b9:	8b 75 0c             	mov    0xc(%ebp),%esi
c00363bc:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00363bf:	89 34 24             	mov    %esi,(%esp)
c00363c2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00363c6:	e8 95 ff ff ff       	call   c0036360 <__mcmp>
c00363cb:	85 c0                	test   %eax,%eax
c00363cd:	0f 84 25 01 00 00    	je     c00364f8 <__mdiff+0x148>
c00363d3:	0f 88 0f 01 00 00    	js     c00364e8 <__mdiff+0x138>
c00363d9:	31 ff                	xor    %edi,%edi
c00363db:	8b 46 04             	mov    0x4(%esi),%eax
c00363de:	83 c6 14             	add    $0x14,%esi
c00363e1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00363e5:	8b 45 08             	mov    0x8(%ebp),%eax
c00363e8:	89 04 24             	mov    %eax,(%esp)
c00363eb:	e8 b0 f7 ff ff       	call   c0035ba0 <_Balloc>
c00363f0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c00363f3:	89 c2                	mov    %eax,%edx
c00363f5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00363f8:	89 78 0c             	mov    %edi,0xc(%eax)
c00363fb:	8b 46 fc             	mov    -0x4(%esi),%eax
c00363fe:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c0036401:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036404:	8d 04 86             	lea    (%esi,%eax,4),%eax
c0036407:	89 45 d8             	mov    %eax,-0x28(%ebp)
c003640a:	8b 43 10             	mov    0x10(%ebx),%eax
c003640d:	31 db                	xor    %ebx,%ebx
c003640f:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c0036412:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036415:	89 d0                	mov    %edx,%eax
c0036417:	83 c0 14             	add    $0x14,%eax
c003641a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036420:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036423:	83 c0 04             	add    $0x4,%eax
c0036426:	83 c1 04             	add    $0x4,%ecx
c0036429:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c003642d:	8b 3e                	mov    (%esi),%edi
c003642f:	8b 71 fc             	mov    -0x4(%ecx),%esi
c0036432:	0f b7 d7             	movzwl %di,%edx
c0036435:	01 da                	add    %ebx,%edx
c0036437:	0f b7 de             	movzwl %si,%ebx
c003643a:	29 da                	sub    %ebx,%edx
c003643c:	c1 ef 10             	shr    $0x10,%edi
c003643f:	89 d3                	mov    %edx,%ebx
c0036441:	c1 ee 10             	shr    $0x10,%esi
c0036444:	0f b7 d2             	movzwl %dx,%edx
c0036447:	c1 fb 10             	sar    $0x10,%ebx
c003644a:	29 f7                	sub    %esi,%edi
c003644c:	01 df                	add    %ebx,%edi
c003644e:	89 fb                	mov    %edi,%ebx
c0036450:	c1 e7 10             	shl    $0x10,%edi
c0036453:	09 d7                	or     %edx,%edi
c0036455:	c1 fb 10             	sar    $0x10,%ebx
c0036458:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003645b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003645e:	77 c0                	ja     c0036420 <__mdiff+0x70>
c0036460:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036463:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036466:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036469:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003646c:	39 f1                	cmp    %esi,%ecx
c003646e:	76 3f                	jbe    c00364af <__mdiff+0xff>
c0036470:	8b 3e                	mov    (%esi),%edi
c0036472:	83 c6 04             	add    $0x4,%esi
c0036475:	83 c0 04             	add    $0x4,%eax
c0036478:	0f b7 d7             	movzwl %di,%edx
c003647b:	01 da                	add    %ebx,%edx
c003647d:	89 d3                	mov    %edx,%ebx
c003647f:	0f b7 d2             	movzwl %dx,%edx
c0036482:	c1 fb 10             	sar    $0x10,%ebx
c0036485:	c1 ef 10             	shr    $0x10,%edi
c0036488:	01 df                	add    %ebx,%edi
c003648a:	89 fb                	mov    %edi,%ebx
c003648c:	c1 e7 10             	shl    $0x10,%edi
c003648f:	09 d7                	or     %edx,%edi
c0036491:	c1 fb 10             	sar    $0x10,%ebx
c0036494:	39 f1                	cmp    %esi,%ecx
c0036496:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036499:	77 d5                	ja     c0036470 <__mdiff+0xc0>
c003649b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003649e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c00364a1:	f7 d0                	not    %eax
c00364a3:	01 c8                	add    %ecx,%eax
c00364a5:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00364a8:	c1 e8 02             	shr    $0x2,%eax
c00364ab:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c00364af:	85 ff                	test   %edi,%edi
c00364b1:	75 23                	jne    c00364d6 <__mdiff+0x126>
c00364b3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364b6:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c00364bd:	29 d0                	sub    %edx,%eax
c00364bf:	89 ca                	mov    %ecx,%edx
c00364c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00364c8:	83 ea 01             	sub    $0x1,%edx
c00364cb:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00364cf:	85 c9                	test   %ecx,%ecx
c00364d1:	74 f5                	je     c00364c8 <__mdiff+0x118>
c00364d3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00364d6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00364d9:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c00364dc:	89 48 10             	mov    %ecx,0x10(%eax)
c00364df:	83 c4 2c             	add    $0x2c,%esp
c00364e2:	5b                   	pop    %ebx
c00364e3:	5e                   	pop    %esi
c00364e4:	5f                   	pop    %edi
c00364e5:	5d                   	pop    %ebp
c00364e6:	c3                   	ret    
c00364e7:	90                   	nop
c00364e8:	89 f0                	mov    %esi,%eax
c00364ea:	bf 01 00 00 00       	mov    $0x1,%edi
c00364ef:	89 de                	mov    %ebx,%esi
c00364f1:	89 c3                	mov    %eax,%ebx
c00364f3:	e9 e3 fe ff ff       	jmp    c00363db <__mdiff+0x2b>
c00364f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00364fb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0036502:	00 
c0036503:	89 04 24             	mov    %eax,(%esp)
c0036506:	e8 95 f6 ff ff       	call   c0035ba0 <_Balloc>
c003650b:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0036512:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c0036519:	83 c4 2c             	add    $0x2c,%esp
c003651c:	5b                   	pop    %ebx
c003651d:	5e                   	pop    %esi
c003651e:	5f                   	pop    %edi
c003651f:	5d                   	pop    %ebp
c0036520:	c3                   	ret    
c0036521:	eb 0d                	jmp    c0036530 <__ulp>
c0036523:	90                   	nop
c0036524:	90                   	nop
c0036525:	90                   	nop
c0036526:	90                   	nop
c0036527:	90                   	nop
c0036528:	90                   	nop
c0036529:	90                   	nop
c003652a:	90                   	nop
c003652b:	90                   	nop
c003652c:	90                   	nop
c003652d:	90                   	nop
c003652e:	90                   	nop
c003652f:	90                   	nop

c0036530 <__ulp>:
c0036530:	55                   	push   %ebp
c0036531:	89 e5                	mov    %esp,%ebp
c0036533:	83 ec 08             	sub    $0x8,%esp
c0036536:	dd 45 08             	fldl   0x8(%ebp)
c0036539:	dd 5d f8             	fstpl  -0x8(%ebp)
c003653c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c003653f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c0036545:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c003654b:	85 c9                	test   %ecx,%ecx
c003654d:	7e 11                	jle    c0036560 <__ulp+0x30>
c003654f:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036552:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036559:	dd 45 f8             	fldl   -0x8(%ebp)
c003655c:	c9                   	leave  
c003655d:	c3                   	ret    
c003655e:	66 90                	xchg   %ax,%ax
c0036560:	f7 d9                	neg    %ecx
c0036562:	c1 f9 14             	sar    $0x14,%ecx
c0036565:	83 f9 13             	cmp    $0x13,%ecx
c0036568:	7e 26                	jle    c0036590 <__ulp+0x60>
c003656a:	83 f9 32             	cmp    $0x32,%ecx
c003656d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036572:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036579:	7f 0b                	jg     c0036586 <__ulp+0x56>
c003657b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036580:	29 ca                	sub    %ecx,%edx
c0036582:	89 d1                	mov    %edx,%ecx
c0036584:	d3 e0                	shl    %cl,%eax
c0036586:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036589:	dd 45 f8             	fldl   -0x8(%ebp)
c003658c:	c9                   	leave  
c003658d:	c3                   	ret    
c003658e:	66 90                	xchg   %ax,%ax
c0036590:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036595:	d3 f8                	sar    %cl,%eax
c0036597:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003659a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00365a1:	dd 45 f8             	fldl   -0x8(%ebp)
c00365a4:	c9                   	leave  
c00365a5:	c3                   	ret    
c00365a6:	8d 76 00             	lea    0x0(%esi),%esi
c00365a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00365b0 <__b2d>:
c00365b0:	55                   	push   %ebp
c00365b1:	89 e5                	mov    %esp,%ebp
c00365b3:	57                   	push   %edi
c00365b4:	56                   	push   %esi
c00365b5:	53                   	push   %ebx
c00365b6:	83 ec 18             	sub    $0x18,%esp
c00365b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00365bc:	8d 78 14             	lea    0x14(%eax),%edi
c00365bf:	8b 40 10             	mov    0x10(%eax),%eax
c00365c2:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c00365c5:	8b 73 fc             	mov    -0x4(%ebx),%esi
c00365c8:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00365cb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00365ce:	89 34 24             	mov    %esi,(%esp)
c00365d1:	e8 6a f8 ff ff       	call   c0035e40 <__hi0bits>
c00365d6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00365d9:	ba 20 00 00 00       	mov    $0x20,%edx
c00365de:	29 c2                	sub    %eax,%edx
c00365e0:	83 f8 0a             	cmp    $0xa,%eax
c00365e3:	89 11                	mov    %edx,(%ecx)
c00365e5:	7f 41                	jg     c0036628 <__b2d+0x78>
c00365e7:	b9 0b 00 00 00       	mov    $0xb,%ecx
c00365ec:	89 f2                	mov    %esi,%edx
c00365ee:	29 c1                	sub    %eax,%ecx
c00365f0:	d3 ea                	shr    %cl,%edx
c00365f2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c00365f8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c00365fb:	31 d2                	xor    %edx,%edx
c00365fd:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c0036600:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036607:	73 05                	jae    c003660e <__b2d+0x5e>
c0036609:	8b 53 f8             	mov    -0x8(%ebx),%edx
c003660c:	d3 ea                	shr    %cl,%edx
c003660e:	8d 48 15             	lea    0x15(%eax),%ecx
c0036611:	d3 e6                	shl    %cl,%esi
c0036613:	09 f2                	or     %esi,%edx
c0036615:	89 55 e8             	mov    %edx,-0x18(%ebp)
c0036618:	dd 45 e8             	fldl   -0x18(%ebp)
c003661b:	83 c4 18             	add    $0x18,%esp
c003661e:	5b                   	pop    %ebx
c003661f:	5e                   	pop    %esi
c0036620:	5f                   	pop    %edi
c0036621:	5d                   	pop    %ebp
c0036622:	c3                   	ret    
c0036623:	90                   	nop
c0036624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036628:	31 d2                	xor    %edx,%edx
c003662a:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c003662d:	73 09                	jae    c0036638 <__b2d+0x88>
c003662f:	8b 53 f8             	mov    -0x8(%ebx),%edx
c0036632:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c0036635:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036638:	89 c3                	mov    %eax,%ebx
c003663a:	83 eb 0b             	sub    $0xb,%ebx
c003663d:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0036640:	74 4e                	je     c0036690 <__b2d+0xe0>
c0036642:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036646:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c003664b:	29 c3                	sub    %eax,%ebx
c003664d:	89 d0                	mov    %edx,%eax
c003664f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036656:	d3 e6                	shl    %cl,%esi
c0036658:	89 d9                	mov    %ebx,%ecx
c003665a:	d3 e8                	shr    %cl,%eax
c003665c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003665f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036665:	09 c6                	or     %eax,%esi
c0036667:	31 c0                	xor    %eax,%eax
c0036669:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003666c:	39 f9                	cmp    %edi,%ecx
c003666e:	76 07                	jbe    c0036677 <__b2d+0xc7>
c0036670:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036673:	89 d9                	mov    %ebx,%ecx
c0036675:	d3 e8                	shr    %cl,%eax
c0036677:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003667b:	d3 e2                	shl    %cl,%edx
c003667d:	09 d0                	or     %edx,%eax
c003667f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036682:	dd 45 e8             	fldl   -0x18(%ebp)
c0036685:	83 c4 18             	add    $0x18,%esp
c0036688:	5b                   	pop    %ebx
c0036689:	5e                   	pop    %esi
c003668a:	5f                   	pop    %edi
c003668b:	5d                   	pop    %ebp
c003668c:	c3                   	ret    
c003668d:	8d 76 00             	lea    0x0(%esi),%esi
c0036690:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036696:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036699:	89 55 e8             	mov    %edx,-0x18(%ebp)
c003669c:	dd 45 e8             	fldl   -0x18(%ebp)
c003669f:	83 c4 18             	add    $0x18,%esp
c00366a2:	5b                   	pop    %ebx
c00366a3:	5e                   	pop    %esi
c00366a4:	5f                   	pop    %edi
c00366a5:	5d                   	pop    %ebp
c00366a6:	c3                   	ret    
c00366a7:	89 f6                	mov    %esi,%esi
c00366a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00366b0 <__d2b>:
c00366b0:	55                   	push   %ebp
c00366b1:	89 e5                	mov    %esp,%ebp
c00366b3:	57                   	push   %edi
c00366b4:	56                   	push   %esi
c00366b5:	53                   	push   %ebx
c00366b6:	83 ec 2c             	sub    $0x2c,%esp
c00366b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00366bc:	dd 45 0c             	fldl   0xc(%ebp)
c00366bf:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00366c6:	00 
c00366c7:	dd 5d d0             	fstpl  -0x30(%ebp)
c00366ca:	89 04 24             	mov    %eax,(%esp)
c00366cd:	e8 ce f4 ff ff       	call   c0035ba0 <_Balloc>
c00366d2:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c00366d5:	89 c6                	mov    %eax,%esi
c00366d7:	89 d8                	mov    %ebx,%eax
c00366d9:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c00366df:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00366e4:	c1 eb 14             	shr    $0x14,%ebx
c00366e7:	85 db                	test   %ebx,%ebx
c00366e9:	74 05                	je     c00366f0 <__d2b+0x40>
c00366eb:	0d 00 00 10 00       	or     $0x100000,%eax
c00366f0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00366f3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00366f6:	85 c0                	test   %eax,%eax
c00366f8:	74 56                	je     c0036750 <__d2b+0xa0>
c00366fa:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00366fd:	8d 45 e0             	lea    -0x20(%ebp),%eax
c0036700:	89 04 24             	mov    %eax,(%esp)
c0036703:	e8 98 f7 ff ff       	call   c0035ea0 <__lo0bits>
c0036708:	85 c0                	test   %eax,%eax
c003670a:	0f 85 90 00 00 00    	jne    c00367a0 <__d2b+0xf0>
c0036710:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0036713:	89 56 14             	mov    %edx,0x14(%esi)
c0036716:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036719:	83 fa 01             	cmp    $0x1,%edx
c003671c:	19 ff                	sbb    %edi,%edi
c003671e:	83 c7 02             	add    $0x2,%edi
c0036721:	85 db                	test   %ebx,%ebx
c0036723:	89 56 18             	mov    %edx,0x18(%esi)
c0036726:	89 7e 10             	mov    %edi,0x10(%esi)
c0036729:	74 49                	je     c0036774 <__d2b+0xc4>
c003672b:	8b 4d 14             	mov    0x14(%ebp),%ecx
c003672e:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c0036735:	89 11                	mov    %edx,(%ecx)
c0036737:	ba 35 00 00 00       	mov    $0x35,%edx
c003673c:	29 c2                	sub    %eax,%edx
c003673e:	8b 45 18             	mov    0x18(%ebp),%eax
c0036741:	89 10                	mov    %edx,(%eax)
c0036743:	83 c4 2c             	add    $0x2c,%esp
c0036746:	89 f0                	mov    %esi,%eax
c0036748:	5b                   	pop    %ebx
c0036749:	5e                   	pop    %esi
c003674a:	5f                   	pop    %edi
c003674b:	5d                   	pop    %ebp
c003674c:	c3                   	ret    
c003674d:	8d 76 00             	lea    0x0(%esi),%esi
c0036750:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036753:	bf 01 00 00 00       	mov    $0x1,%edi
c0036758:	89 04 24             	mov    %eax,(%esp)
c003675b:	e8 40 f7 ff ff       	call   c0035ea0 <__lo0bits>
c0036760:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036763:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003676a:	89 56 14             	mov    %edx,0x14(%esi)
c003676d:	83 c0 20             	add    $0x20,%eax
c0036770:	85 db                	test   %ebx,%ebx
c0036772:	75 b7                	jne    c003672b <__d2b+0x7b>
c0036774:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036777:	2d 32 04 00 00       	sub    $0x432,%eax
c003677c:	89 01                	mov    %eax,(%ecx)
c003677e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036782:	c1 e7 05             	shl    $0x5,%edi
c0036785:	89 04 24             	mov    %eax,(%esp)
c0036788:	e8 b3 f6 ff ff       	call   c0035e40 <__hi0bits>
c003678d:	29 c7                	sub    %eax,%edi
c003678f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036792:	89 38                	mov    %edi,(%eax)
c0036794:	83 c4 2c             	add    $0x2c,%esp
c0036797:	89 f0                	mov    %esi,%eax
c0036799:	5b                   	pop    %ebx
c003679a:	5e                   	pop    %esi
c003679b:	5f                   	pop    %edi
c003679c:	5d                   	pop    %ebp
c003679d:	c3                   	ret    
c003679e:	66 90                	xchg   %ax,%ax
c00367a0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00367a3:	b9 20 00 00 00       	mov    $0x20,%ecx
c00367a8:	29 c1                	sub    %eax,%ecx
c00367aa:	89 d7                	mov    %edx,%edi
c00367ac:	d3 e7                	shl    %cl,%edi
c00367ae:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00367b1:	09 f9                	or     %edi,%ecx
c00367b3:	89 4e 14             	mov    %ecx,0x14(%esi)
c00367b6:	89 c1                	mov    %eax,%ecx
c00367b8:	d3 ea                	shr    %cl,%edx
c00367ba:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00367bd:	e9 57 ff ff ff       	jmp    c0036719 <__d2b+0x69>
c00367c2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00367c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00367d0 <__ratio>:
c00367d0:	55                   	push   %ebp
c00367d1:	89 e5                	mov    %esp,%ebp
c00367d3:	56                   	push   %esi
c00367d4:	53                   	push   %ebx
c00367d5:	83 ec 30             	sub    $0x30,%esp
c00367d8:	8b 75 08             	mov    0x8(%ebp),%esi
c00367db:	8d 45 f0             	lea    -0x10(%ebp),%eax
c00367de:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00367e1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367e5:	89 34 24             	mov    %esi,(%esp)
c00367e8:	e8 c3 fd ff ff       	call   c00365b0 <__b2d>
c00367ed:	8d 45 f4             	lea    -0xc(%ebp),%eax
c00367f0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367f4:	89 1c 24             	mov    %ebx,(%esp)
c00367f7:	dd 55 e0             	fstl   -0x20(%ebp)
c00367fa:	dd 5d d8             	fstpl  -0x28(%ebp)
c00367fd:	e8 ae fd ff ff       	call   c00365b0 <__b2d>
c0036802:	8b 46 10             	mov    0x10(%esi),%eax
c0036805:	2b 43 10             	sub    0x10(%ebx),%eax
c0036808:	8b 55 f0             	mov    -0x10(%ebp),%edx
c003680b:	2b 55 f4             	sub    -0xc(%ebp),%edx
c003680e:	c1 e0 05             	shl    $0x5,%eax
c0036811:	01 d0                	add    %edx,%eax
c0036813:	dd 55 d0             	fstl   -0x30(%ebp)
c0036816:	85 c0                	test   %eax,%eax
c0036818:	dd 45 d8             	fldl   -0x28(%ebp)
c003681b:	7e 1b                	jle    c0036838 <__ratio+0x68>
c003681d:	dd d8                	fstp   %st(0)
c003681f:	c1 e0 14             	shl    $0x14,%eax
c0036822:	01 45 e4             	add    %eax,-0x1c(%ebp)
c0036825:	dd 45 e0             	fldl   -0x20(%ebp)
c0036828:	83 c4 30             	add    $0x30,%esp
c003682b:	5b                   	pop    %ebx
c003682c:	de f1                	fdivp  %st,%st(1)
c003682e:	5e                   	pop    %esi
c003682f:	5d                   	pop    %ebp
c0036830:	c3                   	ret    
c0036831:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036838:	dd d9                	fstp   %st(1)
c003683a:	c1 e0 14             	shl    $0x14,%eax
c003683d:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c0036840:	dd 45 d0             	fldl   -0x30(%ebp)
c0036843:	83 c4 30             	add    $0x30,%esp
c0036846:	5b                   	pop    %ebx
c0036847:	de f9                	fdivrp %st,%st(1)
c0036849:	5e                   	pop    %esi
c003684a:	5d                   	pop    %ebp
c003684b:	c3                   	ret    
c003684c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036850 <_mprec_log10>:
c0036850:	55                   	push   %ebp
c0036851:	89 e5                	mov    %esp,%ebp
c0036853:	8b 45 08             	mov    0x8(%ebp),%eax
c0036856:	83 f8 17             	cmp    $0x17,%eax
c0036859:	7e 1d                	jle    c0036878 <_mprec_log10+0x28>
c003685b:	d9 e8                	fld1   
c003685d:	d9 05 b4 9a 03 c0    	flds   0xc0039ab4
c0036863:	90                   	nop
c0036864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036868:	83 e8 01             	sub    $0x1,%eax
c003686b:	dc c9                	fmul   %st,%st(1)
c003686d:	75 f9                	jne    c0036868 <_mprec_log10+0x18>
c003686f:	dd d8                	fstp   %st(0)
c0036871:	5d                   	pop    %ebp
c0036872:	c3                   	ret    
c0036873:	90                   	nop
c0036874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036878:	dd 04 c5 a0 9b 03 c0 	fldl   -0x3ffc6460(,%eax,8)
c003687f:	5d                   	pop    %ebp
c0036880:	c3                   	ret    
c0036881:	eb 0d                	jmp    c0036890 <__copybits>
c0036883:	90                   	nop
c0036884:	90                   	nop
c0036885:	90                   	nop
c0036886:	90                   	nop
c0036887:	90                   	nop
c0036888:	90                   	nop
c0036889:	90                   	nop
c003688a:	90                   	nop
c003688b:	90                   	nop
c003688c:	90                   	nop
c003688d:	90                   	nop
c003688e:	90                   	nop
c003688f:	90                   	nop

c0036890 <__copybits>:
c0036890:	55                   	push   %ebp
c0036891:	89 e5                	mov    %esp,%ebp
c0036893:	57                   	push   %edi
c0036894:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036897:	56                   	push   %esi
c0036898:	8b 75 0c             	mov    0xc(%ebp),%esi
c003689b:	8b 45 08             	mov    0x8(%ebp),%eax
c003689e:	53                   	push   %ebx
c003689f:	8b 4f 10             	mov    0x10(%edi),%ecx
c00368a2:	8d 56 ff             	lea    -0x1(%esi),%edx
c00368a5:	c1 fa 05             	sar    $0x5,%edx
c00368a8:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c00368ac:	8d 57 14             	lea    0x14(%edi),%edx
c00368af:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c00368b2:	39 da                	cmp    %ebx,%edx
c00368b4:	73 34                	jae    c00368ea <__copybits+0x5a>
c00368b6:	89 c1                	mov    %eax,%ecx
c00368b8:	83 c2 04             	add    $0x4,%edx
c00368bb:	8b 42 fc             	mov    -0x4(%edx),%eax
c00368be:	83 c1 04             	add    $0x4,%ecx
c00368c1:	39 d3                	cmp    %edx,%ebx
c00368c3:	89 41 fc             	mov    %eax,-0x4(%ecx)
c00368c6:	77 f0                	ja     c00368b8 <__copybits+0x28>
c00368c8:	8b 45 08             	mov    0x8(%ebp),%eax
c00368cb:	29 fb                	sub    %edi,%ebx
c00368cd:	8d 53 eb             	lea    -0x15(%ebx),%edx
c00368d0:	c1 ea 02             	shr    $0x2,%edx
c00368d3:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c00368d7:	39 c6                	cmp    %eax,%esi
c00368d9:	76 13                	jbe    c00368ee <__copybits+0x5e>
c00368db:	90                   	nop
c00368dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368e0:	83 c0 04             	add    $0x4,%eax
c00368e3:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c00368ea:	39 c6                	cmp    %eax,%esi
c00368ec:	77 f2                	ja     c00368e0 <__copybits+0x50>
c00368ee:	5b                   	pop    %ebx
c00368ef:	5e                   	pop    %esi
c00368f0:	5f                   	pop    %edi
c00368f1:	5d                   	pop    %ebp
c00368f2:	c3                   	ret    
c00368f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00368f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036900 <__any_on>:
c0036900:	55                   	push   %ebp
c0036901:	89 e5                	mov    %esp,%ebp
c0036903:	8b 45 08             	mov    0x8(%ebp),%eax
c0036906:	57                   	push   %edi
c0036907:	56                   	push   %esi
c0036908:	53                   	push   %ebx
c0036909:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003690c:	8d 50 14             	lea    0x14(%eax),%edx
c003690f:	8b 40 10             	mov    0x10(%eax),%eax
c0036912:	c1 fb 05             	sar    $0x5,%ebx
c0036915:	39 d8                	cmp    %ebx,%eax
c0036917:	7d 2f                	jge    c0036948 <__any_on+0x48>
c0036919:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c003691c:	39 da                	cmp    %ebx,%edx
c003691e:	73 1d                	jae    c003693d <__any_on+0x3d>
c0036920:	8d 43 fc             	lea    -0x4(%ebx),%eax
c0036923:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c0036926:	85 db                	test   %ebx,%ebx
c0036928:	74 0f                	je     c0036939 <__any_on+0x39>
c003692a:	eb 44                	jmp    c0036970 <__any_on+0x70>
c003692c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036930:	83 e8 04             	sub    $0x4,%eax
c0036933:	8b 08                	mov    (%eax),%ecx
c0036935:	85 c9                	test   %ecx,%ecx
c0036937:	75 37                	jne    c0036970 <__any_on+0x70>
c0036939:	39 c2                	cmp    %eax,%edx
c003693b:	72 f3                	jb     c0036930 <__any_on+0x30>
c003693d:	31 c0                	xor    %eax,%eax
c003693f:	5b                   	pop    %ebx
c0036940:	5e                   	pop    %esi
c0036941:	5f                   	pop    %edi
c0036942:	5d                   	pop    %ebp
c0036943:	c3                   	ret    
c0036944:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036948:	7e 1e                	jle    c0036968 <__any_on+0x68>
c003694a:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c003694d:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036950:	83 e1 1f             	and    $0x1f,%ecx
c0036953:	74 c7                	je     c003691c <__any_on+0x1c>
c0036955:	8b 3b                	mov    (%ebx),%edi
c0036957:	b8 01 00 00 00       	mov    $0x1,%eax
c003695c:	89 fe                	mov    %edi,%esi
c003695e:	d3 ee                	shr    %cl,%esi
c0036960:	d3 e6                	shl    %cl,%esi
c0036962:	39 fe                	cmp    %edi,%esi
c0036964:	75 d9                	jne    c003693f <__any_on+0x3f>
c0036966:	eb b4                	jmp    c003691c <__any_on+0x1c>
c0036968:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c003696b:	eb af                	jmp    c003691c <__any_on+0x1c>
c003696d:	8d 76 00             	lea    0x0(%esi),%esi
c0036970:	5b                   	pop    %ebx
c0036971:	b8 01 00 00 00       	mov    $0x1,%eax
c0036976:	5e                   	pop    %esi
c0036977:	5f                   	pop    %edi
c0036978:	5d                   	pop    %ebp
c0036979:	c3                   	ret    
c003697a:	66 90                	xchg   %ax,%ax
c003697c:	66 90                	xchg   %ax,%ax
c003697e:	66 90                	xchg   %ax,%ax

c0036980 <_sbrk_r>:
c0036980:	55                   	push   %ebp
c0036981:	89 e5                	mov    %esp,%ebp
c0036983:	83 ec 18             	sub    $0x18,%esp
c0036986:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036989:	c7 05 00 50 09 c0 00 	movl   $0x0,0xc0095000
c0036990:	00 00 00 
c0036993:	89 04 24             	mov    %eax,(%esp)
c0036996:	e8 74 a0 ff ff       	call   c0030a0f <sbrk>
c003699b:	83 f8 ff             	cmp    $0xffffffff,%eax
c003699e:	74 08                	je     c00369a8 <_sbrk_r+0x28>
c00369a0:	c9                   	leave  
c00369a1:	c3                   	ret    
c00369a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00369a8:	8b 15 00 50 09 c0    	mov    0xc0095000,%edx
c00369ae:	85 d2                	test   %edx,%edx
c00369b0:	74 ee                	je     c00369a0 <_sbrk_r+0x20>
c00369b2:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00369b5:	89 11                	mov    %edx,(%ecx)
c00369b7:	c9                   	leave  
c00369b8:	c3                   	ret    
c00369b9:	66 90                	xchg   %ax,%ax
c00369bb:	66 90                	xchg   %ax,%ax
c00369bd:	66 90                	xchg   %ax,%ax
c00369bf:	90                   	nop

c00369c0 <__fpclassifyd>:
c00369c0:	55                   	push   %ebp
c00369c1:	b8 02 00 00 00       	mov    $0x2,%eax
c00369c6:	89 e5                	mov    %esp,%ebp
c00369c8:	53                   	push   %ebx
c00369c9:	83 ec 0c             	sub    $0xc,%esp
c00369cc:	dd 45 08             	fldl   0x8(%ebp)
c00369cf:	dd 5d f0             	fstpl  -0x10(%ebp)
c00369d2:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00369d5:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c00369d8:	89 d3                	mov    %edx,%ebx
c00369da:	09 cb                	or     %ecx,%ebx
c00369dc:	75 0a                	jne    c00369e8 <__fpclassifyd+0x28>
c00369de:	83 c4 0c             	add    $0xc,%esp
c00369e1:	5b                   	pop    %ebx
c00369e2:	5d                   	pop    %ebp
c00369e3:	c3                   	ret    
c00369e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00369e8:	85 d2                	test   %edx,%edx
c00369ea:	0f 94 c2             	sete   %dl
c00369ed:	75 08                	jne    c00369f7 <__fpclassifyd+0x37>
c00369ef:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c00369f5:	74 e7                	je     c00369de <__fpclassifyd+0x1e>
c00369f7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c00369fd:	b8 04 00 00 00       	mov    $0x4,%eax
c0036a02:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c0036a08:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c0036a0e:	76 ce                	jbe    c00369de <__fpclassifyd+0x1e>
c0036a10:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c0036a16:	b0 03                	mov    $0x3,%al
c0036a18:	76 c4                	jbe    c00369de <__fpclassifyd+0x1e>
c0036a1a:	31 c0                	xor    %eax,%eax
c0036a1c:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c0036a22:	0f 94 c0             	sete   %al
c0036a25:	21 d0                	and    %edx,%eax
c0036a27:	eb b5                	jmp    c00369de <__fpclassifyd+0x1e>
c0036a29:	66 90                	xchg   %ax,%ax
c0036a2b:	66 90                	xchg   %ax,%ax
c0036a2d:	66 90                	xchg   %ax,%ax
c0036a2f:	90                   	nop

c0036a30 <strcmp>:
c0036a30:	55                   	push   %ebp
c0036a31:	89 e5                	mov    %esp,%ebp
c0036a33:	8b 45 08             	mov    0x8(%ebp),%eax
c0036a36:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036a39:	53                   	push   %ebx
c0036a3a:	89 c1                	mov    %eax,%ecx
c0036a3c:	09 d1                	or     %edx,%ecx
c0036a3e:	83 e1 03             	and    $0x3,%ecx
c0036a41:	75 17                	jne    c0036a5a <strcmp+0x2a>
c0036a43:	8b 08                	mov    (%eax),%ecx
c0036a45:	3b 0a                	cmp    (%edx),%ecx
c0036a47:	74 33                	je     c0036a7c <strcmp+0x4c>
c0036a49:	eb 0f                	jmp    c0036a5a <strcmp+0x2a>
c0036a4b:	90                   	nop
c0036a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a50:	3a 0a                	cmp    (%edx),%cl
c0036a52:	75 0d                	jne    c0036a61 <strcmp+0x31>
c0036a54:	83 c0 01             	add    $0x1,%eax
c0036a57:	83 c2 01             	add    $0x1,%edx
c0036a5a:	0f b6 08             	movzbl (%eax),%ecx
c0036a5d:	84 c9                	test   %cl,%cl
c0036a5f:	75 ef                	jne    c0036a50 <strcmp+0x20>
c0036a61:	0f b6 00             	movzbl (%eax),%eax
c0036a64:	0f b6 12             	movzbl (%edx),%edx
c0036a67:	5b                   	pop    %ebx
c0036a68:	5d                   	pop    %ebp
c0036a69:	29 d0                	sub    %edx,%eax
c0036a6b:	c3                   	ret    
c0036a6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a70:	83 c0 04             	add    $0x4,%eax
c0036a73:	83 c2 04             	add    $0x4,%edx
c0036a76:	8b 08                	mov    (%eax),%ecx
c0036a78:	3b 0a                	cmp    (%edx),%ecx
c0036a7a:	75 de                	jne    c0036a5a <strcmp+0x2a>
c0036a7c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036a82:	f7 d1                	not    %ecx
c0036a84:	21 cb                	and    %ecx,%ebx
c0036a86:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036a8c:	74 e2                	je     c0036a70 <strcmp+0x40>
c0036a8e:	31 c0                	xor    %eax,%eax
c0036a90:	5b                   	pop    %ebx
c0036a91:	5d                   	pop    %ebp
c0036a92:	c3                   	ret    
c0036a93:	66 90                	xchg   %ax,%ax
c0036a95:	66 90                	xchg   %ax,%ax
c0036a97:	66 90                	xchg   %ax,%ax
c0036a99:	66 90                	xchg   %ax,%ax
c0036a9b:	66 90                	xchg   %ax,%ax
c0036a9d:	66 90                	xchg   %ax,%ax
c0036a9f:	90                   	nop

c0036aa0 <strlen>:
c0036aa0:	55                   	push   %ebp
c0036aa1:	89 e5                	mov    %esp,%ebp
c0036aa3:	57                   	push   %edi
c0036aa4:	8b 55 08             	mov    0x8(%ebp),%edx
c0036aa7:	89 d7                	mov    %edx,%edi
c0036aa9:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036aaf:	74 25                	je     c0036ad6 <L5>
c0036ab1:	8a 0f                	mov    (%edi),%cl
c0036ab3:	47                   	inc    %edi
c0036ab4:	84 c9                	test   %cl,%cl
c0036ab6:	74 56                	je     c0036b0e <L15>
c0036ab8:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036abe:	74 16                	je     c0036ad6 <L5>
c0036ac0:	8a 0f                	mov    (%edi),%cl
c0036ac2:	47                   	inc    %edi
c0036ac3:	84 c9                	test   %cl,%cl
c0036ac5:	74 47                	je     c0036b0e <L15>
c0036ac7:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036acd:	74 07                	je     c0036ad6 <L5>
c0036acf:	8a 0f                	mov    (%edi),%cl
c0036ad1:	47                   	inc    %edi
c0036ad2:	84 c9                	test   %cl,%cl
c0036ad4:	74 38                	je     c0036b0e <L15>

c0036ad6 <L5>:
c0036ad6:	83 ef 04             	sub    $0x4,%edi
c0036ad9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036ae0 <L10>:
c0036ae0:	83 c7 04             	add    $0x4,%edi
c0036ae3:	8b 0f                	mov    (%edi),%ecx
c0036ae5:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036aeb:	f7 d1                	not    %ecx
c0036aed:	21 c8                	and    %ecx,%eax
c0036aef:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036af4:	74 ea                	je     c0036ae0 <L10>
c0036af6:	f7 d1                	not    %ecx
c0036af8:	47                   	inc    %edi
c0036af9:	84 c9                	test   %cl,%cl
c0036afb:	74 11                	je     c0036b0e <L15>
c0036afd:	47                   	inc    %edi
c0036afe:	c1 e9 08             	shr    $0x8,%ecx
c0036b01:	84 c9                	test   %cl,%cl
c0036b03:	74 09                	je     c0036b0e <L15>
c0036b05:	47                   	inc    %edi
c0036b06:	c1 e9 08             	shr    $0x8,%ecx
c0036b09:	84 c9                	test   %cl,%cl
c0036b0b:	74 01                	je     c0036b0e <L15>
c0036b0d:	47                   	inc    %edi

c0036b0e <L15>:
c0036b0e:	29 d7                	sub    %edx,%edi
c0036b10:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036b13:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036b16:	5f                   	pop    %edi
c0036b17:	c9                   	leave  
c0036b18:	c3                   	ret    
c0036b19:	66 90                	xchg   %ax,%ax
c0036b1b:	66 90                	xchg   %ax,%ax
c0036b1d:	66 90                	xchg   %ax,%ax
c0036b1f:	90                   	nop

c0036b20 <__ssprint_r>:
c0036b20:	55                   	push   %ebp
c0036b21:	89 e5                	mov    %esp,%ebp
c0036b23:	57                   	push   %edi
c0036b24:	56                   	push   %esi
c0036b25:	53                   	push   %ebx
c0036b26:	83 ec 2c             	sub    $0x2c,%esp
c0036b29:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b2c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036b2f:	8b 00                	mov    (%eax),%eax
c0036b31:	89 c7                	mov    %eax,%edi
c0036b33:	8b 45 10             	mov    0x10(%ebp),%eax
c0036b36:	8b 40 08             	mov    0x8(%eax),%eax
c0036b39:	85 c0                	test   %eax,%eax
c0036b3b:	0f 84 af 01 00 00    	je     c0036cf0 <__ssprint_r+0x1d0>
c0036b41:	31 c9                	xor    %ecx,%ecx
c0036b43:	31 d2                	xor    %edx,%edx
c0036b45:	8b 03                	mov    (%ebx),%eax
c0036b47:	89 ce                	mov    %ecx,%esi
c0036b49:	85 f6                	test   %esi,%esi
c0036b4b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036b4e:	0f 84 ec 00 00 00    	je     c0036c40 <__ssprint_r+0x120>
c0036b54:	8b 53 08             	mov    0x8(%ebx),%edx
c0036b57:	39 d6                	cmp    %edx,%esi
c0036b59:	0f 82 fc 00 00 00    	jb     c0036c5b <__ssprint_r+0x13b>
c0036b5f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036b63:	66 f7 c1 80 04       	test   $0x480,%cx
c0036b68:	0f 84 fa 00 00 00    	je     c0036c68 <__ssprint_r+0x148>
c0036b6e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036b71:	29 d0                	sub    %edx,%eax
c0036b73:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036b76:	8b 43 14             	mov    0x14(%ebx),%eax
c0036b79:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036b7c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036b7f:	89 c2                	mov    %eax,%edx
c0036b81:	c1 ea 1f             	shr    $0x1f,%edx
c0036b84:	01 d0                	add    %edx,%eax
c0036b86:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b89:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036b8c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036b8f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036b93:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036b96:	0f 83 34 01 00 00    	jae    c0036cd0 <__ssprint_r+0x1b0>
c0036b9c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b9f:	80 e5 04             	and    $0x4,%ch
c0036ba2:	0f 84 c8 00 00 00    	je     c0036c70 <__ssprint_r+0x150>
c0036ba8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036bac:	8b 45 08             	mov    0x8(%ebp),%eax
c0036baf:	89 04 24             	mov    %eax,(%esp)
c0036bb2:	e8 e9 e7 ff ff       	call   c00353a0 <_malloc_r>
c0036bb7:	85 c0                	test   %eax,%eax
c0036bb9:	89 c2                	mov    %eax,%edx
c0036bbb:	0f 84 e1 00 00 00    	je     c0036ca2 <__ssprint_r+0x182>
c0036bc1:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036bc4:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036bc7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036bcb:	8b 43 10             	mov    0x10(%ebx),%eax
c0036bce:	89 14 24             	mov    %edx,(%esp)
c0036bd1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036bd5:	e8 0a b2 ff ff       	call   c0031de4 <memcpy>
c0036bda:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036bde:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036be1:	66 25 7f fb          	and    $0xfb7f,%ax
c0036be5:	0c 80                	or     $0x80,%al
c0036be7:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036beb:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036bee:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036bf1:	89 53 10             	mov    %edx,0x10(%ebx)
c0036bf4:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036bf7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036bfa:	01 d0                	add    %edx,%eax
c0036bfc:	89 03                	mov    %eax,(%ebx)
c0036bfe:	89 f2                	mov    %esi,%edx
c0036c00:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036c03:	89 f1                	mov    %esi,%ecx
c0036c05:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036c09:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036c0c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036c0f:	89 04 24             	mov    %eax,(%esp)
c0036c12:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036c15:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036c19:	e8 22 13 00 00       	call   c0037f40 <memmove>
c0036c1e:	8b 03                	mov    (%ebx),%eax
c0036c20:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036c23:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036c26:	29 53 08             	sub    %edx,0x8(%ebx)
c0036c29:	01 c8                	add    %ecx,%eax
c0036c2b:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036c2e:	89 03                	mov    %eax,(%ebx)
c0036c30:	8b 51 08             	mov    0x8(%ecx),%edx
c0036c33:	29 f2                	sub    %esi,%edx
c0036c35:	85 d2                	test   %edx,%edx
c0036c37:	89 51 08             	mov    %edx,0x8(%ecx)
c0036c3a:	0f 84 98 00 00 00    	je     c0036cd8 <__ssprint_r+0x1b8>
c0036c40:	8b 77 04             	mov    0x4(%edi),%esi
c0036c43:	83 c7 08             	add    $0x8,%edi
c0036c46:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036c49:	85 f6                	test   %esi,%esi
c0036c4b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036c4e:	74 f0                	je     c0036c40 <__ssprint_r+0x120>
c0036c50:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c53:	39 d6                	cmp    %edx,%esi
c0036c55:	0f 83 04 ff ff ff    	jae    c0036b5f <__ssprint_r+0x3f>
c0036c5b:	89 f2                	mov    %esi,%edx
c0036c5d:	89 f1                	mov    %esi,%ecx
c0036c5f:	eb a4                	jmp    c0036c05 <__ssprint_r+0xe5>
c0036c61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c68:	89 d1                	mov    %edx,%ecx
c0036c6a:	eb 99                	jmp    c0036c05 <__ssprint_r+0xe5>
c0036c6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c70:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c74:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036c77:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c7b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c7e:	89 04 24             	mov    %eax,(%esp)
c0036c81:	e8 4a 13 00 00       	call   c0037fd0 <_realloc_r>
c0036c86:	85 c0                	test   %eax,%eax
c0036c88:	89 c2                	mov    %eax,%edx
c0036c8a:	0f 85 5b ff ff ff    	jne    c0036beb <__ssprint_r+0xcb>
c0036c90:	8b 43 10             	mov    0x10(%ebx),%eax
c0036c93:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c97:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c9a:	89 04 24             	mov    %eax,(%esp)
c0036c9d:	e8 3e 10 00 00       	call   c0037ce0 <_free_r>
c0036ca2:	8b 45 08             	mov    0x8(%ebp),%eax
c0036ca5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036cab:	8b 45 10             	mov    0x10(%ebp),%eax
c0036cae:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036cb3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036cba:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036cc1:	83 c4 2c             	add    $0x2c,%esp
c0036cc4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036cc9:	5b                   	pop    %ebx
c0036cca:	5e                   	pop    %esi
c0036ccb:	5f                   	pop    %edi
c0036ccc:	5d                   	pop    %ebp
c0036ccd:	c3                   	ret    
c0036cce:	66 90                	xchg   %ax,%ax
c0036cd0:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036cd3:	e9 c7 fe ff ff       	jmp    c0036b9f <__ssprint_r+0x7f>
c0036cd8:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036cdf:	83 c4 2c             	add    $0x2c,%esp
c0036ce2:	31 c0                	xor    %eax,%eax
c0036ce4:	5b                   	pop    %ebx
c0036ce5:	5e                   	pop    %esi
c0036ce6:	5f                   	pop    %edi
c0036ce7:	5d                   	pop    %ebp
c0036ce8:	c3                   	ret    
c0036ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036cf0:	8b 45 10             	mov    0x10(%ebp),%eax
c0036cf3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036cfa:	83 c4 2c             	add    $0x2c,%esp
c0036cfd:	31 c0                	xor    %eax,%eax
c0036cff:	5b                   	pop    %ebx
c0036d00:	5e                   	pop    %esi
c0036d01:	5f                   	pop    %edi
c0036d02:	5d                   	pop    %ebp
c0036d03:	c3                   	ret    
c0036d04:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d0a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036d10 <_svfiprintf_r>:
c0036d10:	55                   	push   %ebp
c0036d11:	89 e5                	mov    %esp,%ebp
c0036d13:	57                   	push   %edi
c0036d14:	56                   	push   %esi
c0036d15:	53                   	push   %ebx
c0036d16:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036d1c:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036d1f:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036d23:	74 0b                	je     c0036d30 <_svfiprintf_r+0x20>
c0036d25:	8b 50 10             	mov    0x10(%eax),%edx
c0036d28:	85 d2                	test   %edx,%edx
c0036d2a:	0f 84 1c 0d 00 00    	je     c0037a4c <_svfiprintf_r+0xd3c>
c0036d30:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036d33:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036d36:	89 c6                	mov    %eax,%esi
c0036d38:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036d3e:	29 d8                	sub    %ebx,%eax
c0036d40:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036d47:	00 00 00 
c0036d4a:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036d51:	00 00 00 
c0036d54:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036d5b:	00 00 00 
c0036d5e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036d65:	00 00 00 
c0036d68:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036d6e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d71:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036d74:	0f b6 00             	movzbl (%eax),%eax
c0036d77:	84 c0                	test   %al,%al
c0036d79:	74 58                	je     c0036dd3 <_svfiprintf_r+0xc3>
c0036d7b:	3c 25                	cmp    $0x25,%al
c0036d7d:	75 13                	jne    c0036d92 <_svfiprintf_r+0x82>
c0036d7f:	eb 52                	jmp    c0036dd3 <_svfiprintf_r+0xc3>
c0036d81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d88:	84 c0                	test   %al,%al
c0036d8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d90:	74 0a                	je     c0036d9c <_svfiprintf_r+0x8c>
c0036d92:	83 c3 01             	add    $0x1,%ebx
c0036d95:	0f b6 03             	movzbl (%ebx),%eax
c0036d98:	3c 25                	cmp    $0x25,%al
c0036d9a:	75 ec                	jne    c0036d88 <_svfiprintf_r+0x78>
c0036d9c:	89 df                	mov    %ebx,%edi
c0036d9e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036da1:	74 30                	je     c0036dd3 <_svfiprintf_r+0xc3>
c0036da3:	8b 45 10             	mov    0x10(%ebp),%eax
c0036da6:	83 c6 08             	add    $0x8,%esi
c0036da9:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036dac:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036db2:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036db5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036dbb:	83 c0 01             	add    $0x1,%eax
c0036dbe:	83 f8 07             	cmp    $0x7,%eax
c0036dc1:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036dc7:	0f 8f eb 0a 00 00    	jg     c00378b8 <_svfiprintf_r+0xba8>
c0036dcd:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036dd3:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036dd6:	0f 84 11 09 00 00    	je     c00376ed <_svfiprintf_r+0x9dd>
c0036ddc:	8d 43 01             	lea    0x1(%ebx),%eax
c0036ddf:	31 ff                	xor    %edi,%edi
c0036de1:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036de8:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036def:	ff ff ff 
c0036df2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036df9:	00 00 00 
c0036dfc:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036e03:	00 00 00 
c0036e06:	8d 50 01             	lea    0x1(%eax),%edx
c0036e09:	0f be 00             	movsbl (%eax),%eax
c0036e0c:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036e0f:	83 f9 58             	cmp    $0x58,%ecx
c0036e12:	0f 87 63 03 00 00    	ja     c003717b <_svfiprintf_r+0x46b>
c0036e18:	ff 24 8d 68 9c 03 c0 	jmp    *-0x3ffc6398(,%ecx,4)
c0036e1f:	90                   	nop
c0036e20:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036e27:	89 d0                	mov    %edx,%eax
c0036e29:	eb db                	jmp    c0036e06 <_svfiprintf_r+0xf6>
c0036e2b:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e2e:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036e31:	8b 00                	mov    (%eax),%eax
c0036e33:	83 c3 04             	add    $0x4,%ebx
c0036e36:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036e39:	85 c0                	test   %eax,%eax
c0036e3b:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036e41:	79 e4                	jns    c0036e27 <_svfiprintf_r+0x117>
c0036e43:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036e49:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036e50:	89 d0                	mov    %edx,%eax
c0036e52:	eb b2                	jmp    c0036e06 <_svfiprintf_r+0xf6>
c0036e54:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036e59:	89 d0                	mov    %edx,%eax
c0036e5b:	eb a9                	jmp    c0036e06 <_svfiprintf_r+0xf6>
c0036e5d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e60:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036e67:	89 55 10             	mov    %edx,0x10(%ebp)
c0036e6a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036e6f:	8b 08                	mov    (%eax),%ecx
c0036e71:	83 c0 04             	add    $0x4,%eax
c0036e74:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036e7b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036e82:	89 45 14             	mov    %eax,0x14(%ebp)
c0036e85:	c7 85 44 ff ff ff fb 	movl   $0xc00398fb,-0xbc(%ebp)
c0036e8c:	98 03 c0 
c0036e8f:	90                   	nop
c0036e90:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036e97:	31 ff                	xor    %edi,%edi
c0036e99:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036e9f:	89 d8                	mov    %ebx,%eax
c0036ea1:	24 7f                	and    $0x7f,%al
c0036ea3:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036eaa:	0f 48 c3             	cmovs  %ebx,%eax
c0036ead:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036eb3:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036eb9:	85 c0                	test   %eax,%eax
c0036ebb:	75 08                	jne    c0036ec5 <_svfiprintf_r+0x1b5>
c0036ebd:	85 c9                	test   %ecx,%ecx
c0036ebf:	0f 84 03 08 00 00    	je     c00376c8 <_svfiprintf_r+0x9b8>
c0036ec5:	80 fa 01             	cmp    $0x1,%dl
c0036ec8:	0f 84 8a 0a 00 00    	je     c0037958 <_svfiprintf_r+0xc48>
c0036ece:	80 fa 02             	cmp    $0x2,%dl
c0036ed1:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036ed4:	0f 85 86 01 00 00    	jne    c0037060 <_svfiprintf_r+0x350>
c0036eda:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036ee0:	89 c8                	mov    %ecx,%eax
c0036ee2:	83 eb 01             	sub    $0x1,%ebx
c0036ee5:	83 e0 0f             	and    $0xf,%eax
c0036ee8:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036eec:	c1 e9 04             	shr    $0x4,%ecx
c0036eef:	85 c9                	test   %ecx,%ecx
c0036ef1:	88 03                	mov    %al,(%ebx)
c0036ef3:	75 eb                	jne    c0036ee0 <_svfiprintf_r+0x1d0>
c0036ef5:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036ef8:	29 d8                	sub    %ebx,%eax
c0036efa:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036f00:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036f06:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036f0c:	39 c1                	cmp    %eax,%ecx
c0036f0e:	0f 4d c1             	cmovge %ecx,%eax
c0036f11:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f17:	89 f8                	mov    %edi,%eax
c0036f19:	3c 01                	cmp    $0x1,%al
c0036f1b:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036f22:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036f28:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036f2e:	89 d0                	mov    %edx,%eax
c0036f30:	89 cf                	mov    %ecx,%edi
c0036f32:	83 c0 02             	add    $0x2,%eax
c0036f35:	83 e7 02             	and    $0x2,%edi
c0036f38:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036f3e:	89 cf                	mov    %ecx,%edi
c0036f40:	0f 44 c2             	cmove  %edx,%eax
c0036f43:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036f49:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036f4f:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036f55:	0f 85 cd 04 00 00    	jne    c0037428 <_svfiprintf_r+0x718>
c0036f5b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036f61:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036f67:	85 ff                	test   %edi,%edi
c0036f69:	0f 8e b9 04 00 00    	jle    c0037428 <_svfiprintf_r+0x718>
c0036f6f:	83 ff 10             	cmp    $0x10,%edi
c0036f72:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036f78:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036f7e:	7e 7c                	jle    c0036ffc <_svfiprintf_r+0x2ec>
c0036f80:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0036f86:	89 f1                	mov    %esi,%ecx
c0036f88:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036f8b:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036f8e:	eb 08                	jmp    c0036f98 <_svfiprintf_r+0x288>
c0036f90:	83 ef 10             	sub    $0x10,%edi
c0036f93:	83 ff 10             	cmp    $0x10,%edi
c0036f96:	7e 5c                	jle    c0036ff4 <_svfiprintf_r+0x2e4>
c0036f98:	83 c0 01             	add    $0x1,%eax
c0036f9b:	83 c2 10             	add    $0x10,%edx
c0036f9e:	c7 01 dc 9d 03 c0    	movl   $0xc0039ddc,(%ecx)
c0036fa4:	83 c1 08             	add    $0x8,%ecx
c0036fa7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0036fae:	83 f8 07             	cmp    $0x7,%eax
c0036fb1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036fb7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036fbd:	7e d1                	jle    c0036f90 <_svfiprintf_r+0x280>
c0036fbf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036fc5:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036fc9:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036fcd:	89 1c 24             	mov    %ebx,(%esp)
c0036fd0:	e8 4b fb ff ff       	call   c0036b20 <__ssprint_r>
c0036fd5:	85 c0                	test   %eax,%eax
c0036fd7:	0f 85 3b 07 00 00    	jne    c0037718 <_svfiprintf_r+0xa08>
c0036fdd:	83 ef 10             	sub    $0x10,%edi
c0036fe0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036fe6:	83 ff 10             	cmp    $0x10,%edi
c0036fe9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036fef:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0036ff2:	7f a4                	jg     c0036f98 <_svfiprintf_r+0x288>
c0036ff4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c0036ffa:	89 ce                	mov    %ecx,%esi
c0036ffc:	83 c0 01             	add    $0x1,%eax
c0036fff:	01 fa                	add    %edi,%edx
c0037001:	c7 06 dc 9d 03 c0    	movl   $0xc0039ddc,(%esi)
c0037007:	83 c6 08             	add    $0x8,%esi
c003700a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003700d:	83 f8 07             	cmp    $0x7,%eax
c0037010:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037016:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003701c:	0f 8e 12 04 00 00    	jle    c0037434 <_svfiprintf_r+0x724>
c0037022:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037028:	89 44 24 08          	mov    %eax,0x8(%esp)
c003702c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003702f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037033:	8b 45 08             	mov    0x8(%ebp),%eax
c0037036:	89 04 24             	mov    %eax,(%esp)
c0037039:	e8 e2 fa ff ff       	call   c0036b20 <__ssprint_r>
c003703e:	85 c0                	test   %eax,%eax
c0037040:	0f 85 d2 06 00 00    	jne    c0037718 <_svfiprintf_r+0xa08>
c0037046:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003704c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003704f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037055:	e9 da 03 00 00       	jmp    c0037434 <_svfiprintf_r+0x724>
c003705a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037060:	89 c8                	mov    %ecx,%eax
c0037062:	83 eb 01             	sub    $0x1,%ebx
c0037065:	83 e0 07             	and    $0x7,%eax
c0037068:	c1 e9 03             	shr    $0x3,%ecx
c003706b:	83 c0 30             	add    $0x30,%eax
c003706e:	85 c9                	test   %ecx,%ecx
c0037070:	88 03                	mov    %al,(%ebx)
c0037072:	75 ec                	jne    c0037060 <_svfiprintf_r+0x350>
c0037074:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003707b:	89 da                	mov    %ebx,%edx
c003707d:	0f 84 72 fe ff ff    	je     c0036ef5 <_svfiprintf_r+0x1e5>
c0037083:	3c 30                	cmp    $0x30,%al
c0037085:	0f 84 6a fe ff ff    	je     c0036ef5 <_svfiprintf_r+0x1e5>
c003708b:	83 eb 01             	sub    $0x1,%ebx
c003708e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037091:	29 d8                	sub    %ebx,%eax
c0037093:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0037097:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003709d:	e9 5e fe ff ff       	jmp    c0036f00 <_svfiprintf_r+0x1f0>
c00370a2:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00370a9:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370b0:	89 55 10             	mov    %edx,0x10(%ebp)
c00370b3:	8b 45 14             	mov    0x14(%ebp),%eax
c00370b6:	0f 85 48 01 00 00    	jne    c0037204 <_svfiprintf_r+0x4f4>
c00370bc:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370c3:	0f 84 3b 01 00 00    	je     c0037204 <_svfiprintf_r+0x4f4>
c00370c9:	0f b7 08             	movzwl (%eax),%ecx
c00370cc:	83 c0 04             	add    $0x4,%eax
c00370cf:	31 d2                	xor    %edx,%edx
c00370d1:	89 45 14             	mov    %eax,0x14(%ebp)
c00370d4:	e9 b7 fd ff ff       	jmp    c0036e90 <_svfiprintf_r+0x180>
c00370d9:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00370e0:	89 f8                	mov    %edi,%eax
c00370e2:	89 55 10             	mov    %edx,0x10(%ebp)
c00370e5:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00370eb:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370f2:	8b 45 14             	mov    0x14(%ebp),%eax
c00370f5:	75 0d                	jne    c0037104 <_svfiprintf_r+0x3f4>
c00370f7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370fe:	0f 85 f2 08 00 00    	jne    c00379f6 <_svfiprintf_r+0xce6>
c0037104:	8b 08                	mov    (%eax),%ecx
c0037106:	83 c0 04             	add    $0x4,%eax
c0037109:	89 45 14             	mov    %eax,0x14(%ebp)
c003710c:	85 c9                	test   %ecx,%ecx
c003710e:	0f 88 f3 08 00 00    	js     c0037a07 <_svfiprintf_r+0xcf7>
c0037114:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c003711b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037120:	e9 74 fd ff ff       	jmp    c0036e99 <_svfiprintf_r+0x189>
c0037125:	0f be 02             	movsbl (%edx),%eax
c0037128:	8d 5a 01             	lea    0x1(%edx),%ebx
c003712b:	83 f8 2a             	cmp    $0x2a,%eax
c003712e:	0f 84 af 09 00 00    	je     c0037ae3 <_svfiprintf_r+0xdd3>
c0037134:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037137:	31 d2                	xor    %edx,%edx
c0037139:	83 f9 09             	cmp    $0x9,%ecx
c003713c:	0f 87 90 09 00 00    	ja     c0037ad2 <_svfiprintf_r+0xdc2>
c0037142:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037148:	8d 04 92             	lea    (%edx,%edx,4),%eax
c003714b:	83 c3 01             	add    $0x1,%ebx
c003714e:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037151:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037155:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037158:	83 f9 09             	cmp    $0x9,%ecx
c003715b:	76 eb                	jbe    c0037148 <_svfiprintf_r+0x438>
c003715d:	85 d2                	test   %edx,%edx
c003715f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037164:	0f 48 d1             	cmovs  %ecx,%edx
c0037167:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003716a:	83 f9 58             	cmp    $0x58,%ecx
c003716d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037173:	89 da                	mov    %ebx,%edx
c0037175:	0f 86 9d fc ff ff    	jbe    c0036e18 <_svfiprintf_r+0x108>
c003717b:	89 fb                	mov    %edi,%ebx
c003717d:	85 c0                	test   %eax,%eax
c003717f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037182:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037188:	0f 84 5f 05 00 00    	je     c00376ed <_svfiprintf_r+0x9dd>
c003718e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037191:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037194:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003719b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00371a2:	00 00 00 
c00371a5:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00371ac:	00 00 00 
c00371af:	e9 5a 01 00 00       	jmp    c003730e <_svfiprintf_r+0x5fe>
c00371b4:	31 db                	xor    %ebx,%ebx
c00371b6:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00371c0:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c00371c3:	83 c2 01             	add    $0x1,%edx
c00371c6:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c00371c9:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c00371cd:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00371d0:	83 f9 09             	cmp    $0x9,%ecx
c00371d3:	76 eb                	jbe    c00371c0 <_svfiprintf_r+0x4b0>
c00371d5:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c00371db:	e9 2c fc ff ff       	jmp    c0036e0c <_svfiprintf_r+0xfc>
c00371e0:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c00371e7:	00 00 00 
c00371ea:	89 d0                	mov    %edx,%eax
c00371ec:	e9 15 fc ff ff       	jmp    c0036e06 <_svfiprintf_r+0xf6>
c00371f1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371f8:	89 55 10             	mov    %edx,0x10(%ebp)
c00371fb:	8b 45 14             	mov    0x14(%ebp),%eax
c00371fe:	0f 84 b8 fe ff ff    	je     c00370bc <_svfiprintf_r+0x3ac>
c0037204:	8b 08                	mov    (%eax),%ecx
c0037206:	83 c0 04             	add    $0x4,%eax
c0037209:	31 d2                	xor    %edx,%edx
c003720b:	89 45 14             	mov    %eax,0x14(%ebp)
c003720e:	e9 7d fc ff ff       	jmp    c0036e90 <_svfiprintf_r+0x180>
c0037213:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003721a:	89 f8                	mov    %edi,%eax
c003721c:	89 55 10             	mov    %edx,0x10(%ebp)
c003721f:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037225:	0f 85 a2 07 00 00    	jne    c00379cd <_svfiprintf_r+0xcbd>
c003722b:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037232:	0f 84 95 07 00 00    	je     c00379cd <_svfiprintf_r+0xcbd>
c0037238:	8b 45 14             	mov    0x14(%ebp),%eax
c003723b:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c0037242:	8b 00                	mov    (%eax),%eax
c0037244:	66 89 18             	mov    %bx,(%eax)
c0037247:	8b 45 14             	mov    0x14(%ebp),%eax
c003724a:	83 c0 04             	add    $0x4,%eax
c003724d:	89 45 14             	mov    %eax,0x14(%ebp)
c0037250:	e9 19 fb ff ff       	jmp    c0036d6e <_svfiprintf_r+0x5e>
c0037255:	89 fb                	mov    %edi,%ebx
c0037257:	89 55 10             	mov    %edx,0x10(%ebp)
c003725a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037260:	c7 85 44 ff ff ff fb 	movl   $0xc00398fb,-0xbc(%ebp)
c0037267:	98 03 c0 
c003726a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037271:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037274:	75 0d                	jne    c0037283 <_svfiprintf_r+0x573>
c0037276:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003727d:	0f 85 65 07 00 00    	jne    c00379e8 <_svfiprintf_r+0xcd8>
c0037283:	8b 0b                	mov    (%ebx),%ecx
c0037285:	83 c3 04             	add    $0x4,%ebx
c0037288:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003728b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037292:	ba 02 00 00 00       	mov    $0x2,%edx
c0037297:	0f 84 f3 fb ff ff    	je     c0036e90 <_svfiprintf_r+0x180>
c003729d:	85 c9                	test   %ecx,%ecx
c003729f:	0f 84 eb fb ff ff    	je     c0036e90 <_svfiprintf_r+0x180>
c00372a5:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c00372ac:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c00372b2:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c00372b9:	e9 d2 fb ff ff       	jmp    c0036e90 <_svfiprintf_r+0x180>
c00372be:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c00372c5:	89 d0                	mov    %edx,%eax
c00372c7:	e9 3a fb ff ff       	jmp    c0036e06 <_svfiprintf_r+0xf6>
c00372cc:	89 f8                	mov    %edi,%eax
c00372ce:	89 55 10             	mov    %edx,0x10(%ebp)
c00372d1:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00372d7:	e9 0f fe ff ff       	jmp    c00370eb <_svfiprintf_r+0x3db>
c00372dc:	8b 45 14             	mov    0x14(%ebp),%eax
c00372df:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c00372e2:	89 55 10             	mov    %edx,0x10(%ebp)
c00372e5:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00372ec:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00372f3:	00 00 00 
c00372f6:	8b 00                	mov    (%eax),%eax
c00372f8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00372ff:	00 00 00 
c0037302:	88 45 80             	mov    %al,-0x80(%ebp)
c0037305:	8b 45 14             	mov    0x14(%ebp),%eax
c0037308:	83 c0 04             	add    $0x4,%eax
c003730b:	89 45 14             	mov    %eax,0x14(%ebp)
c003730e:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037315:	00 00 00 
c0037318:	e9 05 fc ff ff       	jmp    c0036f22 <_svfiprintf_r+0x212>
c003731d:	89 fb                	mov    %edi,%ebx
c003731f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037322:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037328:	c7 85 44 ff ff ff ea 	movl   $0xc00398ea,-0xbc(%ebp)
c003732f:	98 03 c0 
c0037332:	e9 33 ff ff ff       	jmp    c003726a <_svfiprintf_r+0x55a>
c0037337:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c003733e:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037345:	89 55 10             	mov    %edx,0x10(%ebp)
c0037348:	8b 45 14             	mov    0x14(%ebp),%eax
c003734b:	75 39                	jne    c0037386 <_svfiprintf_r+0x676>
c003734d:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037354:	74 30                	je     c0037386 <_svfiprintf_r+0x676>
c0037356:	0f b7 08             	movzwl (%eax),%ecx
c0037359:	83 c0 04             	add    $0x4,%eax
c003735c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037361:	89 45 14             	mov    %eax,0x14(%ebp)
c0037364:	e9 27 fb ff ff       	jmp    c0036e90 <_svfiprintf_r+0x180>
c0037369:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037370:	89 d0                	mov    %edx,%eax
c0037372:	e9 8f fa ff ff       	jmp    c0036e06 <_svfiprintf_r+0xf6>
c0037377:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003737e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037381:	8b 45 14             	mov    0x14(%ebp),%eax
c0037384:	74 c7                	je     c003734d <_svfiprintf_r+0x63d>
c0037386:	8b 08                	mov    (%eax),%ecx
c0037388:	83 c0 04             	add    $0x4,%eax
c003738b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037390:	89 45 14             	mov    %eax,0x14(%ebp)
c0037393:	e9 f8 fa ff ff       	jmp    c0036e90 <_svfiprintf_r+0x180>
c0037398:	8b 45 14             	mov    0x14(%ebp),%eax
c003739b:	89 55 10             	mov    %edx,0x10(%ebp)
c003739e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c00373a5:	8b 18                	mov    (%eax),%ebx
c00373a7:	8d 50 04             	lea    0x4(%eax),%edx
c00373aa:	85 db                	test   %ebx,%ebx
c00373ac:	0f 84 cc 06 00 00    	je     c0037a7e <_svfiprintf_r+0xd6e>
c00373b2:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00373b8:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c00373be:	85 ff                	test   %edi,%edi
c00373c0:	0f 88 59 06 00 00    	js     c0037a1f <_svfiprintf_r+0xd0f>
c00373c6:	89 7c 24 08          	mov    %edi,0x8(%esp)
c00373ca:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00373d1:	00 
c00373d2:	89 1c 24             	mov    %ebx,(%esp)
c00373d5:	e8 06 e7 ff ff       	call   c0035ae0 <memchr>
c00373da:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00373e0:	85 c0                	test   %eax,%eax
c00373e2:	0f 84 c5 06 00 00    	je     c0037aad <_svfiprintf_r+0xd9d>
c00373e8:	29 d8                	sub    %ebx,%eax
c00373ea:	39 f8                	cmp    %edi,%eax
c00373ec:	0f 4f c7             	cmovg  %edi,%eax
c00373ef:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00373f6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00373fc:	89 55 14             	mov    %edx,0x14(%ebp)
c00373ff:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037406:	00 00 00 
c0037409:	e9 f2 fa ff ff       	jmp    c0036f00 <_svfiprintf_r+0x1f0>
c003740e:	89 f8                	mov    %edi,%eax
c0037410:	84 c0                	test   %al,%al
c0037412:	b8 20 00 00 00       	mov    $0x20,%eax
c0037417:	0f 44 f8             	cmove  %eax,%edi
c003741a:	89 d0                	mov    %edx,%eax
c003741c:	e9 e5 f9 ff ff       	jmp    c0036e06 <_svfiprintf_r+0xf6>
c0037421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037428:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003742e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037434:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c003743b:	74 2e                	je     c003746b <_svfiprintf_r+0x75b>
c003743d:	83 c0 01             	add    $0x1,%eax
c0037440:	83 c2 01             	add    $0x1,%edx
c0037443:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c0037449:	83 c6 08             	add    $0x8,%esi
c003744c:	89 4e f8             	mov    %ecx,-0x8(%esi)
c003744f:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037456:	83 f8 07             	cmp    $0x7,%eax
c0037459:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003745f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037465:	0f 8f b5 04 00 00    	jg     c0037920 <_svfiprintf_r+0xc10>
c003746b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037471:	85 c9                	test   %ecx,%ecx
c0037473:	74 2e                	je     c00374a3 <_svfiprintf_r+0x793>
c0037475:	83 c0 01             	add    $0x1,%eax
c0037478:	83 c2 02             	add    $0x2,%edx
c003747b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037481:	83 c6 08             	add    $0x8,%esi
c0037484:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037487:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003748e:	83 f8 07             	cmp    $0x7,%eax
c0037491:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037497:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003749d:	0f 8f 45 04 00 00    	jg     c00378e8 <_svfiprintf_r+0xbd8>
c00374a3:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c00374aa:	00 00 00 
c00374ad:	0f 84 9d 02 00 00    	je     c0037750 <_svfiprintf_r+0xa40>
c00374b3:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c00374b9:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c00374bf:	85 ff                	test   %edi,%edi
c00374c1:	0f 8e e1 00 00 00    	jle    c00375a8 <_svfiprintf_r+0x898>
c00374c7:	83 ff 10             	cmp    $0x10,%edi
c00374ca:	0f 8e 7c 00 00 00    	jle    c003754c <_svfiprintf_r+0x83c>
c00374d0:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c00374d6:	89 f1                	mov    %esi,%ecx
c00374d8:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00374db:	8b 75 0c             	mov    0xc(%ebp),%esi
c00374de:	eb 08                	jmp    c00374e8 <_svfiprintf_r+0x7d8>
c00374e0:	83 ef 10             	sub    $0x10,%edi
c00374e3:	83 ff 10             	cmp    $0x10,%edi
c00374e6:	7e 5c                	jle    c0037544 <_svfiprintf_r+0x834>
c00374e8:	83 c0 01             	add    $0x1,%eax
c00374eb:	83 c2 10             	add    $0x10,%edx
c00374ee:	c7 01 cc 9d 03 c0    	movl   $0xc0039dcc,(%ecx)
c00374f4:	83 c1 08             	add    $0x8,%ecx
c00374f7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00374fe:	83 f8 07             	cmp    $0x7,%eax
c0037501:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037507:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003750d:	7e d1                	jle    c00374e0 <_svfiprintf_r+0x7d0>
c003750f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037515:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037519:	89 74 24 04          	mov    %esi,0x4(%esp)
c003751d:	89 1c 24             	mov    %ebx,(%esp)
c0037520:	e8 fb f5 ff ff       	call   c0036b20 <__ssprint_r>
c0037525:	85 c0                	test   %eax,%eax
c0037527:	0f 85 eb 01 00 00    	jne    c0037718 <_svfiprintf_r+0xa08>
c003752d:	83 ef 10             	sub    $0x10,%edi
c0037530:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037536:	83 ff 10             	cmp    $0x10,%edi
c0037539:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003753f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037542:	7f a4                	jg     c00374e8 <_svfiprintf_r+0x7d8>
c0037544:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003754a:	89 ce                	mov    %ecx,%esi
c003754c:	83 c0 01             	add    $0x1,%eax
c003754f:	01 fa                	add    %edi,%edx
c0037551:	c7 06 cc 9d 03 c0    	movl   $0xc0039dcc,(%esi)
c0037557:	83 c6 08             	add    $0x8,%esi
c003755a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003755d:	83 f8 07             	cmp    $0x7,%eax
c0037560:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037566:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003756c:	7e 3a                	jle    c00375a8 <_svfiprintf_r+0x898>
c003756e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037574:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037578:	8b 45 0c             	mov    0xc(%ebp),%eax
c003757b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003757f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037582:	89 04 24             	mov    %eax,(%esp)
c0037585:	e8 96 f5 ff ff       	call   c0036b20 <__ssprint_r>
c003758a:	85 c0                	test   %eax,%eax
c003758c:	0f 85 86 01 00 00    	jne    c0037718 <_svfiprintf_r+0xa08>
c0037592:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037598:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003759b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00375a8:	89 1e                	mov    %ebx,(%esi)
c00375aa:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c00375b0:	83 c0 01             	add    $0x1,%eax
c00375b3:	83 c6 08             	add    $0x8,%esi
c00375b6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375bc:	89 5e fc             	mov    %ebx,-0x4(%esi)
c00375bf:	01 da                	add    %ebx,%edx
c00375c1:	83 f8 07             	cmp    $0x7,%eax
c00375c4:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375ca:	0f 8f 80 02 00 00    	jg     c0037850 <_svfiprintf_r+0xb40>
c00375d0:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c00375d7:	0f 84 b9 00 00 00    	je     c0037696 <_svfiprintf_r+0x986>
c00375dd:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c00375e3:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c00375e9:	85 ff                	test   %edi,%edi
c00375eb:	0f 8e a5 00 00 00    	jle    c0037696 <_svfiprintf_r+0x986>
c00375f1:	83 ff 10             	cmp    $0x10,%edi
c00375f4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375fa:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0037600:	7e 71                	jle    c0037673 <_svfiprintf_r+0x963>
c0037602:	89 f1                	mov    %esi,%ecx
c0037604:	8b 75 08             	mov    0x8(%ebp),%esi
c0037607:	eb 0f                	jmp    c0037618 <_svfiprintf_r+0x908>
c0037609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037610:	83 ef 10             	sub    $0x10,%edi
c0037613:	83 ff 10             	cmp    $0x10,%edi
c0037616:	7e 59                	jle    c0037671 <_svfiprintf_r+0x961>
c0037618:	83 c0 01             	add    $0x1,%eax
c003761b:	83 c2 10             	add    $0x10,%edx
c003761e:	c7 01 dc 9d 03 c0    	movl   $0xc0039ddc,(%ecx)
c0037624:	83 c1 08             	add    $0x8,%ecx
c0037627:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003762e:	83 f8 07             	cmp    $0x7,%eax
c0037631:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037637:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003763d:	7e d1                	jle    c0037610 <_svfiprintf_r+0x900>
c003763f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037642:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0037646:	89 34 24             	mov    %esi,(%esp)
c0037649:	89 44 24 04          	mov    %eax,0x4(%esp)
c003764d:	e8 ce f4 ff ff       	call   c0036b20 <__ssprint_r>
c0037652:	85 c0                	test   %eax,%eax
c0037654:	0f 85 be 00 00 00    	jne    c0037718 <_svfiprintf_r+0xa08>
c003765a:	83 ef 10             	sub    $0x10,%edi
c003765d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037663:	83 ff 10             	cmp    $0x10,%edi
c0037666:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003766c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003766f:	7f a7                	jg     c0037618 <_svfiprintf_r+0x908>
c0037671:	89 ce                	mov    %ecx,%esi
c0037673:	83 c0 01             	add    $0x1,%eax
c0037676:	01 fa                	add    %edi,%edx
c0037678:	83 f8 07             	cmp    $0x7,%eax
c003767b:	c7 06 dc 9d 03 c0    	movl   $0xc0039ddc,(%esi)
c0037681:	89 7e 04             	mov    %edi,0x4(%esi)
c0037684:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003768a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037690:	0f 8f ee 02 00 00    	jg     c0037984 <_svfiprintf_r+0xc74>
c0037696:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c003769c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c00376a2:	39 c6                	cmp    %eax,%esi
c00376a4:	0f 4d c6             	cmovge %esi,%eax
c00376a7:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c00376ad:	85 d2                	test   %edx,%edx
c00376af:	0f 85 d3 01 00 00    	jne    c0037888 <_svfiprintf_r+0xb78>
c00376b5:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c00376bc:	00 00 00 
c00376bf:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00376c2:	e9 a7 f6 ff ff       	jmp    c0036d6e <_svfiprintf_r+0x5e>
c00376c7:	90                   	nop
c00376c8:	84 d2                	test   %dl,%dl
c00376ca:	75 6c                	jne    c0037738 <_svfiprintf_r+0xa28>
c00376cc:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c00376d3:	74 63                	je     c0037738 <_svfiprintf_r+0xa28>
c00376d5:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00376db:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00376de:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c00376e2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00376e8:	e9 13 f8 ff ff       	jmp    c0036f00 <_svfiprintf_r+0x1f0>
c00376ed:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00376f3:	85 c0                	test   %eax,%eax
c00376f5:	74 21                	je     c0037718 <_svfiprintf_r+0xa08>
c00376f7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00376fd:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037701:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037704:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037708:	8b 45 08             	mov    0x8(%ebp),%eax
c003770b:	89 04 24             	mov    %eax,(%esp)
c003770e:	e8 0d f4 ff ff       	call   c0036b20 <__ssprint_r>
c0037713:	90                   	nop
c0037714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037718:	8b 75 0c             	mov    0xc(%ebp),%esi
c003771b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037720:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c0037724:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c003772b:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c0037731:	5b                   	pop    %ebx
c0037732:	5e                   	pop    %esi
c0037733:	5f                   	pop    %edi
c0037734:	5d                   	pop    %ebp
c0037735:	c3                   	ret    
c0037736:	66 90                	xchg   %ax,%ax
c0037738:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c003773f:	00 00 00 
c0037742:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037745:	e9 b6 f7 ff ff       	jmp    c0036f00 <_svfiprintf_r+0x1f0>
c003774a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037750:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037756:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003775c:	85 ff                	test   %edi,%edi
c003775e:	0f 8e 4f fd ff ff    	jle    c00374b3 <_svfiprintf_r+0x7a3>
c0037764:	83 ff 10             	cmp    $0x10,%edi
c0037767:	0f 8e 7f 00 00 00    	jle    c00377ec <_svfiprintf_r+0xadc>
c003776d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037773:	89 f1                	mov    %esi,%ecx
c0037775:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037778:	8b 75 0c             	mov    0xc(%ebp),%esi
c003777b:	eb 0b                	jmp    c0037788 <_svfiprintf_r+0xa78>
c003777d:	8d 76 00             	lea    0x0(%esi),%esi
c0037780:	83 ef 10             	sub    $0x10,%edi
c0037783:	83 ff 10             	cmp    $0x10,%edi
c0037786:	7e 5c                	jle    c00377e4 <_svfiprintf_r+0xad4>
c0037788:	83 c0 01             	add    $0x1,%eax
c003778b:	83 c2 10             	add    $0x10,%edx
c003778e:	c7 01 cc 9d 03 c0    	movl   $0xc0039dcc,(%ecx)
c0037794:	83 c1 08             	add    $0x8,%ecx
c0037797:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003779e:	83 f8 07             	cmp    $0x7,%eax
c00377a1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377a7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377ad:	7e d1                	jle    c0037780 <_svfiprintf_r+0xa70>
c00377af:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377b5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377b9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00377bd:	89 1c 24             	mov    %ebx,(%esp)
c00377c0:	e8 5b f3 ff ff       	call   c0036b20 <__ssprint_r>
c00377c5:	85 c0                	test   %eax,%eax
c00377c7:	0f 85 4b ff ff ff    	jne    c0037718 <_svfiprintf_r+0xa08>
c00377cd:	83 ef 10             	sub    $0x10,%edi
c00377d0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00377d6:	83 ff 10             	cmp    $0x10,%edi
c00377d9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00377df:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00377e2:	7f a4                	jg     c0037788 <_svfiprintf_r+0xa78>
c00377e4:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c00377ea:	89 ce                	mov    %ecx,%esi
c00377ec:	83 c0 01             	add    $0x1,%eax
c00377ef:	01 fa                	add    %edi,%edx
c00377f1:	c7 06 cc 9d 03 c0    	movl   $0xc0039dcc,(%esi)
c00377f7:	83 c6 08             	add    $0x8,%esi
c00377fa:	89 7e fc             	mov    %edi,-0x4(%esi)
c00377fd:	83 f8 07             	cmp    $0x7,%eax
c0037800:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037806:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003780c:	0f 8e a1 fc ff ff    	jle    c00374b3 <_svfiprintf_r+0x7a3>
c0037812:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037818:	89 44 24 08          	mov    %eax,0x8(%esp)
c003781c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003781f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037823:	8b 45 08             	mov    0x8(%ebp),%eax
c0037826:	89 04 24             	mov    %eax,(%esp)
c0037829:	e8 f2 f2 ff ff       	call   c0036b20 <__ssprint_r>
c003782e:	85 c0                	test   %eax,%eax
c0037830:	0f 85 e2 fe ff ff    	jne    c0037718 <_svfiprintf_r+0xa08>
c0037836:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003783c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003783f:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037845:	e9 69 fc ff ff       	jmp    c00374b3 <_svfiprintf_r+0x7a3>
c003784a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037850:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037856:	89 44 24 08          	mov    %eax,0x8(%esp)
c003785a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003785d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037861:	8b 45 08             	mov    0x8(%ebp),%eax
c0037864:	89 04 24             	mov    %eax,(%esp)
c0037867:	e8 b4 f2 ff ff       	call   c0036b20 <__ssprint_r>
c003786c:	85 c0                	test   %eax,%eax
c003786e:	0f 85 a4 fe ff ff    	jne    c0037718 <_svfiprintf_r+0xa08>
c0037874:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003787a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003787d:	e9 4e fd ff ff       	jmp    c00375d0 <_svfiprintf_r+0x8c0>
c0037882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037888:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003788e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037892:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037895:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037899:	8b 45 08             	mov    0x8(%ebp),%eax
c003789c:	89 04 24             	mov    %eax,(%esp)
c003789f:	e8 7c f2 ff ff       	call   c0036b20 <__ssprint_r>
c00378a4:	85 c0                	test   %eax,%eax
c00378a6:	0f 84 09 fe ff ff    	je     c00376b5 <_svfiprintf_r+0x9a5>
c00378ac:	e9 67 fe ff ff       	jmp    c0037718 <_svfiprintf_r+0xa08>
c00378b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00378b8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378be:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378c2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378c5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378cc:	89 04 24             	mov    %eax,(%esp)
c00378cf:	e8 4c f2 ff ff       	call   c0036b20 <__ssprint_r>
c00378d4:	85 c0                	test   %eax,%eax
c00378d6:	0f 85 3c fe ff ff    	jne    c0037718 <_svfiprintf_r+0xa08>
c00378dc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378df:	e9 e9 f4 ff ff       	jmp    c0036dcd <_svfiprintf_r+0xbd>
c00378e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00378e8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378ee:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378f2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378f5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378f9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378fc:	89 04 24             	mov    %eax,(%esp)
c00378ff:	e8 1c f2 ff ff       	call   c0036b20 <__ssprint_r>
c0037904:	85 c0                	test   %eax,%eax
c0037906:	0f 85 0c fe ff ff    	jne    c0037718 <_svfiprintf_r+0xa08>
c003790c:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037912:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037915:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003791b:	e9 83 fb ff ff       	jmp    c00374a3 <_svfiprintf_r+0x793>
c0037920:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037926:	89 44 24 08          	mov    %eax,0x8(%esp)
c003792a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003792d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037931:	8b 45 08             	mov    0x8(%ebp),%eax
c0037934:	89 04 24             	mov    %eax,(%esp)
c0037937:	e8 e4 f1 ff ff       	call   c0036b20 <__ssprint_r>
c003793c:	85 c0                	test   %eax,%eax
c003793e:	0f 85 d4 fd ff ff    	jne    c0037718 <_svfiprintf_r+0xa08>
c0037944:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003794a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003794d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037953:	e9 13 fb ff ff       	jmp    c003746b <_svfiprintf_r+0x75b>
c0037958:	83 f9 09             	cmp    $0x9,%ecx
c003795b:	76 56                	jbe    c00379b3 <_svfiprintf_r+0xca3>
c003795d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037960:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037965:	83 eb 01             	sub    $0x1,%ebx
c0037968:	f7 e1                	mul    %ecx
c003796a:	c1 ea 03             	shr    $0x3,%edx
c003796d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037970:	01 c0                	add    %eax,%eax
c0037972:	29 c1                	sub    %eax,%ecx
c0037974:	83 c1 30             	add    $0x30,%ecx
c0037977:	85 d2                	test   %edx,%edx
c0037979:	88 0b                	mov    %cl,(%ebx)
c003797b:	89 d1                	mov    %edx,%ecx
c003797d:	75 e1                	jne    c0037960 <_svfiprintf_r+0xc50>
c003797f:	e9 71 f5 ff ff       	jmp    c0036ef5 <_svfiprintf_r+0x1e5>
c0037984:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003798a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003798e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037991:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037995:	8b 45 08             	mov    0x8(%ebp),%eax
c0037998:	89 04 24             	mov    %eax,(%esp)
c003799b:	e8 80 f1 ff ff       	call   c0036b20 <__ssprint_r>
c00379a0:	85 c0                	test   %eax,%eax
c00379a2:	0f 85 70 fd ff ff    	jne    c0037718 <_svfiprintf_r+0xa08>
c00379a8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00379ae:	e9 e3 fc ff ff       	jmp    c0037696 <_svfiprintf_r+0x986>
c00379b3:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c00379b9:	83 c1 30             	add    $0x30,%ecx
c00379bc:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00379bf:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c00379c2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00379c8:	e9 33 f5 ff ff       	jmp    c0036f00 <_svfiprintf_r+0x1f0>
c00379cd:	8b 45 14             	mov    0x14(%ebp),%eax
c00379d0:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c00379d6:	8b 00                	mov    (%eax),%eax
c00379d8:	89 18                	mov    %ebx,(%eax)
c00379da:	8b 45 14             	mov    0x14(%ebp),%eax
c00379dd:	83 c0 04             	add    $0x4,%eax
c00379e0:	89 45 14             	mov    %eax,0x14(%ebp)
c00379e3:	e9 86 f3 ff ff       	jmp    c0036d6e <_svfiprintf_r+0x5e>
c00379e8:	0f b7 0b             	movzwl (%ebx),%ecx
c00379eb:	83 c3 04             	add    $0x4,%ebx
c00379ee:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00379f1:	e9 95 f8 ff ff       	jmp    c003728b <_svfiprintf_r+0x57b>
c00379f6:	0f bf 08             	movswl (%eax),%ecx
c00379f9:	83 c0 04             	add    $0x4,%eax
c00379fc:	89 45 14             	mov    %eax,0x14(%ebp)
c00379ff:	85 c9                	test   %ecx,%ecx
c0037a01:	0f 89 0d f7 ff ff    	jns    c0037114 <_svfiprintf_r+0x404>
c0037a07:	f7 d9                	neg    %ecx
c0037a09:	bf 2d 00 00 00       	mov    $0x2d,%edi
c0037a0e:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c0037a15:	ba 01 00 00 00       	mov    $0x1,%edx
c0037a1a:	e9 7a f4 ff ff       	jmp    c0036e99 <_svfiprintf_r+0x189>
c0037a1f:	89 1c 24             	mov    %ebx,(%esp)
c0037a22:	e8 79 f0 ff ff       	call   c0036aa0 <strlen>
c0037a27:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037a2d:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a34:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a3b:	00 00 00 
c0037a3e:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a41:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a47:	e9 b4 f4 ff ff       	jmp    c0036f00 <_svfiprintf_r+0x1f0>
c0037a4c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037a4f:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037a56:	00 
c0037a57:	89 04 24             	mov    %eax,(%esp)
c0037a5a:	e8 41 d9 ff ff       	call   c00353a0 <_malloc_r>
c0037a5f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037a62:	85 c0                	test   %eax,%eax
c0037a64:	89 06                	mov    %eax,(%esi)
c0037a66:	89 46 10             	mov    %eax,0x10(%esi)
c0037a69:	0f 84 a3 00 00 00    	je     c0037b12 <_svfiprintf_r+0xe02>
c0037a6f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a72:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037a79:	e9 b2 f2 ff ff       	jmp    c0036d30 <_svfiprintf_r+0x20>
c0037a7e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037a84:	b8 06 00 00 00       	mov    $0x6,%eax
c0037a89:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a8c:	83 ff 06             	cmp    $0x6,%edi
c0037a8f:	0f 46 c7             	cmovbe %edi,%eax
c0037a92:	85 c0                	test   %eax,%eax
c0037a94:	0f 49 d8             	cmovns %eax,%ebx
c0037a97:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037a9d:	bb 0c 99 03 c0       	mov    $0xc003990c,%ebx
c0037aa2:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037aa8:	e9 61 f8 ff ff       	jmp    c003730e <_svfiprintf_r+0x5fe>
c0037aad:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037ab3:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037aba:	89 55 14             	mov    %edx,0x14(%ebp)
c0037abd:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037ac4:	00 00 00 
c0037ac7:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037acd:	e9 2e f4 ff ff       	jmp    c0036f00 <_svfiprintf_r+0x1f0>
c0037ad2:	89 da                	mov    %ebx,%edx
c0037ad4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037adb:	00 00 00 
c0037ade:	e9 29 f3 ff ff       	jmp    c0036e0c <_svfiprintf_r+0xfc>
c0037ae3:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037ae6:	89 da                	mov    %ebx,%edx
c0037ae8:	8b 45 14             	mov    0x14(%ebp),%eax
c0037aeb:	8b 09                	mov    (%ecx),%ecx
c0037aed:	83 c0 04             	add    $0x4,%eax
c0037af0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037af3:	85 c9                	test   %ecx,%ecx
c0037af5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037afb:	0f 89 26 f3 ff ff    	jns    c0036e27 <_svfiprintf_r+0x117>
c0037b01:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037b08:	ff ff ff 
c0037b0b:	89 d0                	mov    %edx,%eax
c0037b0d:	e9 f4 f2 ff ff       	jmp    c0036e06 <_svfiprintf_r+0xf6>
c0037b12:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b15:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037b1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037b20:	e9 06 fc ff ff       	jmp    c003772b <_svfiprintf_r+0xa1b>
c0037b25:	66 90                	xchg   %ax,%ax
c0037b27:	66 90                	xchg   %ax,%ax
c0037b29:	66 90                	xchg   %ax,%ax
c0037b2b:	66 90                	xchg   %ax,%ax
c0037b2d:	66 90                	xchg   %ax,%ax
c0037b2f:	90                   	nop

c0037b30 <_calloc_r>:
c0037b30:	55                   	push   %ebp
c0037b31:	89 e5                	mov    %esp,%ebp
c0037b33:	53                   	push   %ebx
c0037b34:	83 ec 14             	sub    $0x14,%esp
c0037b37:	8b 45 10             	mov    0x10(%ebp),%eax
c0037b3a:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037b3e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037b42:	8b 45 08             	mov    0x8(%ebp),%eax
c0037b45:	89 04 24             	mov    %eax,(%esp)
c0037b48:	e8 53 d8 ff ff       	call   c00353a0 <_malloc_r>
c0037b4d:	85 c0                	test   %eax,%eax
c0037b4f:	89 c3                	mov    %eax,%ebx
c0037b51:	0f 84 91 00 00 00    	je     c0037be8 <_calloc_r+0xb8>
c0037b57:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037b5a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037b5d:	83 e8 04             	sub    $0x4,%eax
c0037b60:	83 f8 24             	cmp    $0x24,%eax
c0037b63:	77 63                	ja     c0037bc8 <_calloc_r+0x98>
c0037b65:	83 f8 13             	cmp    $0x13,%eax
c0037b68:	89 da                	mov    %ebx,%edx
c0037b6a:	77 1c                	ja     c0037b88 <_calloc_r+0x58>
c0037b6c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037b72:	89 d8                	mov    %ebx,%eax
c0037b74:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037b7b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037b82:	83 c4 14             	add    $0x14,%esp
c0037b85:	5b                   	pop    %ebx
c0037b86:	5d                   	pop    %ebp
c0037b87:	c3                   	ret    
c0037b88:	83 f8 1b             	cmp    $0x1b,%eax
c0037b8b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037b91:	8d 53 08             	lea    0x8(%ebx),%edx
c0037b94:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037b9b:	76 cf                	jbe    c0037b6c <_calloc_r+0x3c>
c0037b9d:	83 f8 24             	cmp    $0x24,%eax
c0037ba0:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037ba7:	8d 53 10             	lea    0x10(%ebx),%edx
c0037baa:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037bb1:	75 b9                	jne    c0037b6c <_calloc_r+0x3c>
c0037bb3:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037bba:	8d 53 18             	lea    0x18(%ebx),%edx
c0037bbd:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037bc4:	eb a6                	jmp    c0037b6c <_calloc_r+0x3c>
c0037bc6:	66 90                	xchg   %ax,%ax
c0037bc8:	89 1c 24             	mov    %ebx,(%esp)
c0037bcb:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037bcf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037bd6:	00 
c0037bd7:	e8 50 a2 ff ff       	call   c0031e2c <memset>
c0037bdc:	83 c4 14             	add    $0x14,%esp
c0037bdf:	89 d8                	mov    %ebx,%eax
c0037be1:	5b                   	pop    %ebx
c0037be2:	5d                   	pop    %ebp
c0037be3:	c3                   	ret    
c0037be4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037be8:	31 c0                	xor    %eax,%eax
c0037bea:	eb 96                	jmp    c0037b82 <_calloc_r+0x52>
c0037bec:	66 90                	xchg   %ax,%ax
c0037bee:	66 90                	xchg   %ax,%ax

c0037bf0 <_malloc_trim_r>:
c0037bf0:	55                   	push   %ebp
c0037bf1:	89 e5                	mov    %esp,%ebp
c0037bf3:	57                   	push   %edi
c0037bf4:	56                   	push   %esi
c0037bf5:	53                   	push   %ebx
c0037bf6:	83 ec 1c             	sub    $0x1c,%esp
c0037bf9:	8b 75 08             	mov    0x8(%ebp),%esi
c0037bfc:	89 34 24             	mov    %esi,(%esp)
c0037bff:	e8 7c df ff ff       	call   c0035b80 <__malloc_lock>
c0037c04:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037c09:	8b 58 04             	mov    0x4(%eax),%ebx
c0037c0c:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037c0f:	89 d8                	mov    %ebx,%eax
c0037c11:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037c14:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037c19:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037c1e:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037c24:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037c2a:	7e 1c                	jle    c0037c48 <_malloc_trim_r+0x58>
c0037c2c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c33:	00 
c0037c34:	89 34 24             	mov    %esi,(%esp)
c0037c37:	e8 44 ed ff ff       	call   c0036980 <_sbrk_r>
c0037c3c:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037c42:	01 da                	add    %ebx,%edx
c0037c44:	39 d0                	cmp    %edx,%eax
c0037c46:	74 18                	je     c0037c60 <_malloc_trim_r+0x70>
c0037c48:	89 34 24             	mov    %esi,(%esp)
c0037c4b:	e8 40 df ff ff       	call   c0035b90 <__malloc_unlock>
c0037c50:	83 c4 1c             	add    $0x1c,%esp
c0037c53:	31 c0                	xor    %eax,%eax
c0037c55:	5b                   	pop    %ebx
c0037c56:	5e                   	pop    %esi
c0037c57:	5f                   	pop    %edi
c0037c58:	5d                   	pop    %ebp
c0037c59:	c3                   	ret    
c0037c5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037c60:	89 f8                	mov    %edi,%eax
c0037c62:	f7 d8                	neg    %eax
c0037c64:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c68:	89 34 24             	mov    %esi,(%esp)
c0037c6b:	e8 10 ed ff ff       	call   c0036980 <_sbrk_r>
c0037c70:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037c73:	74 2b                	je     c0037ca0 <_malloc_trim_r+0xb0>
c0037c75:	a1 48 d5 03 c0       	mov    0xc003d548,%eax
c0037c7a:	29 fb                	sub    %edi,%ebx
c0037c7c:	83 cb 01             	or     $0x1,%ebx
c0037c7f:	29 3d 20 00 07 c0    	sub    %edi,0xc0070020
c0037c85:	89 58 04             	mov    %ebx,0x4(%eax)
c0037c88:	89 34 24             	mov    %esi,(%esp)
c0037c8b:	e8 00 df ff ff       	call   c0035b90 <__malloc_unlock>
c0037c90:	83 c4 1c             	add    $0x1c,%esp
c0037c93:	b8 01 00 00 00       	mov    $0x1,%eax
c0037c98:	5b                   	pop    %ebx
c0037c99:	5e                   	pop    %esi
c0037c9a:	5f                   	pop    %edi
c0037c9b:	5d                   	pop    %ebp
c0037c9c:	c3                   	ret    
c0037c9d:	8d 76 00             	lea    0x0(%esi),%esi
c0037ca0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037ca7:	00 
c0037ca8:	89 34 24             	mov    %esi,(%esp)
c0037cab:	e8 d0 ec ff ff       	call   c0036980 <_sbrk_r>
c0037cb0:	8b 15 48 d5 03 c0    	mov    0xc003d548,%edx
c0037cb6:	89 c1                	mov    %eax,%ecx
c0037cb8:	29 d1                	sub    %edx,%ecx
c0037cba:	83 f9 0f             	cmp    $0xf,%ecx
c0037cbd:	7e 89                	jle    c0037c48 <_malloc_trim_r+0x58>
c0037cbf:	2b 05 20 d5 03 c0    	sub    0xc003d520,%eax
c0037cc5:	83 c9 01             	or     $0x1,%ecx
c0037cc8:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037ccb:	a3 20 00 07 c0       	mov    %eax,0xc0070020
c0037cd0:	e9 73 ff ff ff       	jmp    c0037c48 <_malloc_trim_r+0x58>
c0037cd5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037cd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037ce0 <_free_r>:
c0037ce0:	55                   	push   %ebp
c0037ce1:	89 e5                	mov    %esp,%ebp
c0037ce3:	57                   	push   %edi
c0037ce4:	56                   	push   %esi
c0037ce5:	53                   	push   %ebx
c0037ce6:	83 ec 1c             	sub    $0x1c,%esp
c0037ce9:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037cec:	8b 45 08             	mov    0x8(%ebp),%eax
c0037cef:	85 f6                	test   %esi,%esi
c0037cf1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037cf4:	0f 84 fe 00 00 00    	je     c0037df8 <_free_r+0x118>
c0037cfa:	89 04 24             	mov    %eax,(%esp)
c0037cfd:	e8 7e de ff ff       	call   c0035b80 <__malloc_lock>
c0037d02:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037d05:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037d08:	89 f8                	mov    %edi,%eax
c0037d0a:	83 e0 fe             	and    $0xfffffffe,%eax
c0037d0d:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037d10:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037d13:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037d16:	39 0d 48 d5 03 c0    	cmp    %ecx,0xc003d548
c0037d1c:	0f 84 0e 01 00 00    	je     c0037e30 <_free_r+0x150>
c0037d22:	83 e7 01             	and    $0x1,%edi
c0037d25:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037d28:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037d2f:	75 1f                	jne    c0037d50 <_free_r+0x70>
c0037d31:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037d34:	29 f2                	sub    %esi,%edx
c0037d36:	01 f0                	add    %esi,%eax
c0037d38:	8b 72 08             	mov    0x8(%edx),%esi
c0037d3b:	81 fe 48 d5 03 c0    	cmp    $0xc003d548,%esi
c0037d41:	0f 84 39 01 00 00    	je     c0037e80 <_free_r+0x1a0>
c0037d47:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037d4a:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037d4d:	89 77 08             	mov    %esi,0x8(%edi)
c0037d50:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037d55:	75 21                	jne    c0037d78 <_free_r+0x98>
c0037d57:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037d5a:	01 d8                	add    %ebx,%eax
c0037d5c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037d5f:	85 f6                	test   %esi,%esi
c0037d61:	75 0c                	jne    c0037d6f <_free_r+0x8f>
c0037d63:	81 fb 48 d5 03 c0    	cmp    $0xc003d548,%ebx
c0037d69:	0f 84 21 01 00 00    	je     c0037e90 <_free_r+0x1b0>
c0037d6f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037d72:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037d75:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037d78:	89 c1                	mov    %eax,%ecx
c0037d7a:	83 c9 01             	or     $0x1,%ecx
c0037d7d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d80:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037d83:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037d86:	85 c9                	test   %ecx,%ecx
c0037d88:	75 56                	jne    c0037de0 <_free_r+0x100>
c0037d8a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037d8f:	76 6f                	jbe    c0037e00 <_free_r+0x120>
c0037d91:	89 c1                	mov    %eax,%ecx
c0037d93:	c1 e9 09             	shr    $0x9,%ecx
c0037d96:	83 f9 04             	cmp    $0x4,%ecx
c0037d99:	0f 87 21 01 00 00    	ja     c0037ec0 <_free_r+0x1e0>
c0037d9f:	89 c1                	mov    %eax,%ecx
c0037da1:	c1 e9 06             	shr    $0x6,%ecx
c0037da4:	83 c1 38             	add    $0x38,%ecx
c0037da7:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037daa:	8d 34 9d 40 d5 03 c0 	lea    -0x3ffc2ac0(,%ebx,4),%esi
c0037db1:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037db4:	39 f3                	cmp    %esi,%ebx
c0037db6:	0f 84 14 01 00 00    	je     c0037ed0 <_free_r+0x1f0>
c0037dbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037dc0:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037dc3:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037dc6:	39 c8                	cmp    %ecx,%eax
c0037dc8:	73 07                	jae    c0037dd1 <_free_r+0xf1>
c0037dca:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037dcd:	39 de                	cmp    %ebx,%esi
c0037dcf:	75 ef                	jne    c0037dc0 <_free_r+0xe0>
c0037dd1:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037dd4:	89 42 0c             	mov    %eax,0xc(%edx)
c0037dd7:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037dda:	89 50 08             	mov    %edx,0x8(%eax)
c0037ddd:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037de0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037de3:	89 45 08             	mov    %eax,0x8(%ebp)
c0037de6:	83 c4 1c             	add    $0x1c,%esp
c0037de9:	5b                   	pop    %ebx
c0037dea:	5e                   	pop    %esi
c0037deb:	5f                   	pop    %edi
c0037dec:	5d                   	pop    %ebp
c0037ded:	e9 9e dd ff ff       	jmp    c0035b90 <__malloc_unlock>
c0037df2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037df8:	83 c4 1c             	add    $0x1c,%esp
c0037dfb:	5b                   	pop    %ebx
c0037dfc:	5e                   	pop    %esi
c0037dfd:	5f                   	pop    %edi
c0037dfe:	5d                   	pop    %ebp
c0037dff:	c3                   	ret    
c0037e00:	c1 e8 03             	shr    $0x3,%eax
c0037e03:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037e08:	89 c1                	mov    %eax,%ecx
c0037e0a:	c1 f9 02             	sar    $0x2,%ecx
c0037e0d:	8d 04 c5 40 d5 03 c0 	lea    -0x3ffc2ac0(,%eax,8),%eax
c0037e14:	d3 e3                	shl    %cl,%ebx
c0037e16:	8b 48 08             	mov    0x8(%eax),%ecx
c0037e19:	09 1d 44 d5 03 c0    	or     %ebx,0xc003d544
c0037e1f:	89 42 0c             	mov    %eax,0xc(%edx)
c0037e22:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037e25:	89 50 08             	mov    %edx,0x8(%eax)
c0037e28:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037e2b:	eb b3                	jmp    c0037de0 <_free_r+0x100>
c0037e2d:	8d 76 00             	lea    0x0(%esi),%esi
c0037e30:	01 d8                	add    %ebx,%eax
c0037e32:	83 e7 01             	and    $0x1,%edi
c0037e35:	75 13                	jne    c0037e4a <_free_r+0x16a>
c0037e37:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037e3a:	29 ca                	sub    %ecx,%edx
c0037e3c:	01 c8                	add    %ecx,%eax
c0037e3e:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037e41:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037e44:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037e47:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037e4a:	89 c1                	mov    %eax,%ecx
c0037e4c:	83 c9 01             	or     $0x1,%ecx
c0037e4f:	3b 05 24 d5 03 c0    	cmp    0xc003d524,%eax
c0037e55:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e58:	89 15 48 d5 03 c0    	mov    %edx,0xc003d548
c0037e5e:	72 80                	jb     c0037de0 <_free_r+0x100>
c0037e60:	a1 50 00 07 c0       	mov    0xc0070050,%eax
c0037e65:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e69:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e6c:	89 04 24             	mov    %eax,(%esp)
c0037e6f:	e8 7c fd ff ff       	call   c0037bf0 <_malloc_trim_r>
c0037e74:	e9 67 ff ff ff       	jmp    c0037de0 <_free_r+0x100>
c0037e79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037e80:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037e87:	e9 c4 fe ff ff       	jmp    c0037d50 <_free_r+0x70>
c0037e8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e90:	89 c1                	mov    %eax,%ecx
c0037e92:	83 c9 01             	or     $0x1,%ecx
c0037e95:	89 15 54 d5 03 c0    	mov    %edx,0xc003d554
c0037e9b:	89 15 50 d5 03 c0    	mov    %edx,0xc003d550
c0037ea1:	c7 42 0c 48 d5 03 c0 	movl   $0xc003d548,0xc(%edx)
c0037ea8:	c7 42 08 48 d5 03 c0 	movl   $0xc003d548,0x8(%edx)
c0037eaf:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037eb2:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037eb5:	e9 26 ff ff ff       	jmp    c0037de0 <_free_r+0x100>
c0037eba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037ec0:	83 f9 14             	cmp    $0x14,%ecx
c0037ec3:	77 23                	ja     c0037ee8 <_free_r+0x208>
c0037ec5:	83 c1 5b             	add    $0x5b,%ecx
c0037ec8:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ecb:	e9 da fe ff ff       	jmp    c0037daa <_free_r+0xca>
c0037ed0:	c1 f9 02             	sar    $0x2,%ecx
c0037ed3:	b8 01 00 00 00       	mov    $0x1,%eax
c0037ed8:	d3 e0                	shl    %cl,%eax
c0037eda:	09 05 44 d5 03 c0    	or     %eax,0xc003d544
c0037ee0:	89 d8                	mov    %ebx,%eax
c0037ee2:	e9 ed fe ff ff       	jmp    c0037dd4 <_free_r+0xf4>
c0037ee7:	90                   	nop
c0037ee8:	83 f9 54             	cmp    $0x54,%ecx
c0037eeb:	77 10                	ja     c0037efd <_free_r+0x21d>
c0037eed:	89 c1                	mov    %eax,%ecx
c0037eef:	c1 e9 0c             	shr    $0xc,%ecx
c0037ef2:	83 c1 6e             	add    $0x6e,%ecx
c0037ef5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ef8:	e9 ad fe ff ff       	jmp    c0037daa <_free_r+0xca>
c0037efd:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037f03:	77 10                	ja     c0037f15 <_free_r+0x235>
c0037f05:	89 c1                	mov    %eax,%ecx
c0037f07:	c1 e9 0f             	shr    $0xf,%ecx
c0037f0a:	83 c1 77             	add    $0x77,%ecx
c0037f0d:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f10:	e9 95 fe ff ff       	jmp    c0037daa <_free_r+0xca>
c0037f15:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037f1b:	77 10                	ja     c0037f2d <_free_r+0x24d>
c0037f1d:	89 c1                	mov    %eax,%ecx
c0037f1f:	c1 e9 12             	shr    $0x12,%ecx
c0037f22:	83 c1 7c             	add    $0x7c,%ecx
c0037f25:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037f28:	e9 7d fe ff ff       	jmp    c0037daa <_free_r+0xca>
c0037f2d:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037f32:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037f37:	e9 6e fe ff ff       	jmp    c0037daa <_free_r+0xca>
c0037f3c:	66 90                	xchg   %ax,%ax
c0037f3e:	66 90                	xchg   %ax,%ax

c0037f40 <memmove>:
c0037f40:	55                   	push   %ebp
c0037f41:	89 e5                	mov    %esp,%ebp
c0037f43:	56                   	push   %esi
c0037f44:	57                   	push   %edi
c0037f45:	53                   	push   %ebx
c0037f46:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037f49:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037f4c:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037f4f:	fc                   	cld    
c0037f50:	39 fe                	cmp    %edi,%esi
c0037f52:	73 43                	jae    c0037f97 <memmove+0x57>
c0037f54:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037f58:	39 df                	cmp    %ebx,%edi
c0037f5a:	77 3b                	ja     c0037f97 <memmove+0x57>
c0037f5c:	01 ce                	add    %ecx,%esi
c0037f5e:	01 cf                	add    %ecx,%edi
c0037f60:	fd                   	std    
c0037f61:	83 f9 08             	cmp    $0x8,%ecx
c0037f64:	76 2b                	jbe    c0037f91 <memmove+0x51>
c0037f66:	89 fa                	mov    %edi,%edx
c0037f68:	89 cb                	mov    %ecx,%ebx
c0037f6a:	83 e2 03             	and    $0x3,%edx
c0037f6d:	74 0c                	je     c0037f7b <memmove+0x3b>
c0037f6f:	89 d1                	mov    %edx,%ecx
c0037f71:	4e                   	dec    %esi
c0037f72:	4f                   	dec    %edi
c0037f73:	29 cb                	sub    %ecx,%ebx
c0037f75:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f77:	89 d9                	mov    %ebx,%ecx
c0037f79:	46                   	inc    %esi
c0037f7a:	47                   	inc    %edi
c0037f7b:	c1 e9 02             	shr    $0x2,%ecx
c0037f7e:	83 ee 04             	sub    $0x4,%esi
c0037f81:	83 ef 04             	sub    $0x4,%edi
c0037f84:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037f86:	83 c6 04             	add    $0x4,%esi
c0037f89:	83 c7 04             	add    $0x4,%edi
c0037f8c:	89 d9                	mov    %ebx,%ecx
c0037f8e:	83 e1 03             	and    $0x3,%ecx
c0037f91:	4e                   	dec    %esi
c0037f92:	4f                   	dec    %edi
c0037f93:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f95:	eb 2a                	jmp    c0037fc1 <memmove+0x81>
c0037f97:	83 f9 08             	cmp    $0x8,%ecx
c0037f9a:	76 23                	jbe    c0037fbf <memmove+0x7f>
c0037f9c:	89 fa                	mov    %edi,%edx
c0037f9e:	89 cb                	mov    %ecx,%ebx
c0037fa0:	83 e2 03             	and    $0x3,%edx
c0037fa3:	74 10                	je     c0037fb5 <memmove+0x75>
c0037fa5:	b9 04 00 00 00       	mov    $0x4,%ecx
c0037faa:	29 d1                	sub    %edx,%ecx
c0037fac:	83 e1 03             	and    $0x3,%ecx
c0037faf:	29 cb                	sub    %ecx,%ebx
c0037fb1:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fb3:	89 d9                	mov    %ebx,%ecx
c0037fb5:	c1 e9 02             	shr    $0x2,%ecx
c0037fb8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037fba:	89 d9                	mov    %ebx,%ecx
c0037fbc:	83 e1 03             	and    $0x3,%ecx
c0037fbf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037fc1:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fc4:	fc                   	cld    
c0037fc5:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0037fc8:	5b                   	pop    %ebx
c0037fc9:	5f                   	pop    %edi
c0037fca:	5e                   	pop    %esi
c0037fcb:	c9                   	leave  
c0037fcc:	c3                   	ret    
c0037fcd:	66 90                	xchg   %ax,%ax
c0037fcf:	90                   	nop

c0037fd0 <_realloc_r>:
c0037fd0:	55                   	push   %ebp
c0037fd1:	89 e5                	mov    %esp,%ebp
c0037fd3:	57                   	push   %edi
c0037fd4:	56                   	push   %esi
c0037fd5:	53                   	push   %ebx
c0037fd6:	83 ec 3c             	sub    $0x3c,%esp
c0037fd9:	8b 45 08             	mov    0x8(%ebp),%eax
c0037fdc:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0037fdf:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037fe2:	8b 45 10             	mov    0x10(%ebp),%eax
c0037fe5:	85 ff                	test   %edi,%edi
c0037fe7:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0037fea:	0f 84 50 02 00 00    	je     c0038240 <_realloc_r+0x270>
c0037ff0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037ff3:	8d 77 f8             	lea    -0x8(%edi),%esi
c0037ff6:	89 04 24             	mov    %eax,(%esp)
c0037ff9:	e8 82 db ff ff       	call   c0035b80 <__malloc_lock>
c0037ffe:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038001:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038004:	89 c3                	mov    %eax,%ebx
c0038006:	8d 51 0b             	lea    0xb(%ecx),%edx
c0038009:	83 e3 fc             	and    $0xfffffffc,%ebx
c003800c:	83 fa 16             	cmp    $0x16,%edx
c003800f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0038012:	0f 87 00 01 00 00    	ja     c0038118 <_realloc_r+0x148>
c0038018:	31 d2                	xor    %edx,%edx
c003801a:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0038021:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0038028:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003802b:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c003802e:	0f 82 1c 02 00 00    	jb     c0038250 <_realloc_r+0x280>
c0038034:	84 d2                	test   %dl,%dl
c0038036:	0f 85 14 02 00 00    	jne    c0038250 <_realloc_r+0x280>
c003803c:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c003803f:	0f 8d eb 00 00 00    	jge    c0038130 <_realloc_r+0x160>
c0038045:	8b 0d 48 d5 03 c0    	mov    0xc003d548,%ecx
c003804b:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c003804e:	39 d1                	cmp    %edx,%ecx
c0038050:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038053:	0f 84 6f 02 00 00    	je     c00382c8 <_realloc_r+0x2f8>
c0038059:	8b 4a 04             	mov    0x4(%edx),%ecx
c003805c:	89 c8                	mov    %ecx,%eax
c003805e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038061:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038066:	0f 84 f4 00 00 00    	je     c0038160 <_realloc_r+0x190>
c003806c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038073:	31 d2                	xor    %edx,%edx
c0038075:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038079:	0f 85 39 01 00 00    	jne    c00381b8 <_realloc_r+0x1e8>
c003807f:	89 f1                	mov    %esi,%ecx
c0038081:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038084:	8b 41 04             	mov    0x4(%ecx),%eax
c0038087:	83 e0 fc             	and    $0xfffffffc,%eax
c003808a:	85 d2                	test   %edx,%edx
c003808c:	0f 84 f6 02 00 00    	je     c0038388 <_realloc_r+0x3b8>
c0038092:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0038095:	0f 84 f5 02 00 00    	je     c0038390 <_realloc_r+0x3c0>
c003809b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003809e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c00380a1:	01 d8                	add    %ebx,%eax
c00380a3:	01 c2                	add    %eax,%edx
c00380a5:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c00380a8:	89 55 d0             	mov    %edx,-0x30(%ebp)
c00380ab:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c00380ae:	0f 8c ac 01 00 00    	jl     c0038260 <_realloc_r+0x290>
c00380b4:	8b 42 0c             	mov    0xc(%edx),%eax
c00380b7:	83 eb 04             	sub    $0x4,%ebx
c00380ba:	8b 52 08             	mov    0x8(%edx),%edx
c00380bd:	83 fb 24             	cmp    $0x24,%ebx
c00380c0:	8d 71 08             	lea    0x8(%ecx),%esi
c00380c3:	89 42 0c             	mov    %eax,0xc(%edx)
c00380c6:	89 50 08             	mov    %edx,0x8(%eax)
c00380c9:	8b 41 0c             	mov    0xc(%ecx),%eax
c00380cc:	8b 51 08             	mov    0x8(%ecx),%edx
c00380cf:	89 42 0c             	mov    %eax,0xc(%edx)
c00380d2:	89 50 08             	mov    %edx,0x8(%eax)
c00380d5:	0f 87 85 03 00 00    	ja     c0038460 <_realloc_r+0x490>
c00380db:	83 fb 13             	cmp    $0x13,%ebx
c00380de:	89 f0                	mov    %esi,%eax
c00380e0:	76 1a                	jbe    c00380fc <_realloc_r+0x12c>
c00380e2:	8b 07                	mov    (%edi),%eax
c00380e4:	83 fb 1b             	cmp    $0x1b,%ebx
c00380e7:	89 41 08             	mov    %eax,0x8(%ecx)
c00380ea:	8b 47 04             	mov    0x4(%edi),%eax
c00380ed:	89 41 0c             	mov    %eax,0xc(%ecx)
c00380f0:	0f 87 8f 03 00 00    	ja     c0038485 <_realloc_r+0x4b5>
c00380f6:	8d 41 10             	lea    0x10(%ecx),%eax
c00380f9:	83 c7 08             	add    $0x8,%edi
c00380fc:	8b 17                	mov    (%edi),%edx
c00380fe:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c0038101:	89 10                	mov    %edx,(%eax)
c0038103:	8b 57 04             	mov    0x4(%edi),%edx
c0038106:	89 50 04             	mov    %edx,0x4(%eax)
c0038109:	8b 57 08             	mov    0x8(%edi),%edx
c003810c:	89 f7                	mov    %esi,%edi
c003810e:	89 ce                	mov    %ecx,%esi
c0038110:	89 50 08             	mov    %edx,0x8(%eax)
c0038113:	8b 41 04             	mov    0x4(%ecx),%eax
c0038116:	eb 1b                	jmp    c0038133 <_realloc_r+0x163>
c0038118:	83 e2 f8             	and    $0xfffffff8,%edx
c003811b:	89 55 dc             	mov    %edx,-0x24(%ebp)
c003811e:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0038121:	c1 ea 1f             	shr    $0x1f,%edx
c0038124:	e9 ff fe ff ff       	jmp    c0038028 <_realloc_r+0x58>
c0038129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038130:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0038133:	89 da                	mov    %ebx,%edx
c0038135:	2b 55 dc             	sub    -0x24(%ebp),%edx
c0038138:	83 fa 0f             	cmp    $0xf,%edx
c003813b:	77 4b                	ja     c0038188 <_realloc_r+0x1b8>
c003813d:	83 e0 01             	and    $0x1,%eax
c0038140:	09 d8                	or     %ebx,%eax
c0038142:	89 46 04             	mov    %eax,0x4(%esi)
c0038145:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c003814a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003814d:	89 04 24             	mov    %eax,(%esp)
c0038150:	e8 3b da ff ff       	call   c0035b90 <__malloc_unlock>
c0038155:	89 f8                	mov    %edi,%eax
c0038157:	83 c4 3c             	add    $0x3c,%esp
c003815a:	5b                   	pop    %ebx
c003815b:	5e                   	pop    %esi
c003815c:	5f                   	pop    %edi
c003815d:	5d                   	pop    %ebp
c003815e:	c3                   	ret    
c003815f:	90                   	nop
c0038160:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038163:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038166:	01 d9                	add    %ebx,%ecx
c0038168:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003816b:	0f 8c 04 ff ff ff    	jl     c0038075 <_realloc_r+0xa5>
c0038171:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038174:	8b 52 08             	mov    0x8(%edx),%edx
c0038177:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003817a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003817d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038180:	89 cb                	mov    %ecx,%ebx
c0038182:	eb af                	jmp    c0038133 <_realloc_r+0x163>
c0038184:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038188:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003818b:	83 e0 01             	and    $0x1,%eax
c003818e:	09 d8                	or     %ebx,%eax
c0038190:	89 46 04             	mov    %eax,0x4(%esi)
c0038193:	89 d0                	mov    %edx,%eax
c0038195:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038198:	83 c8 01             	or     $0x1,%eax
c003819b:	89 41 04             	mov    %eax,0x4(%ecx)
c003819e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381a1:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c00381a6:	83 c1 08             	add    $0x8,%ecx
c00381a9:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00381ad:	89 04 24             	mov    %eax,(%esp)
c00381b0:	e8 2b fb ff ff       	call   c0037ce0 <_free_r>
c00381b5:	eb 93                	jmp    c003814a <_realloc_r+0x17a>
c00381b7:	90                   	nop
c00381b8:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00381bb:	89 44 24 04          	mov    %eax,0x4(%esp)
c00381bf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00381c2:	89 04 24             	mov    %eax,(%esp)
c00381c5:	e8 d6 d1 ff ff       	call   c00353a0 <_malloc_r>
c00381ca:	85 c0                	test   %eax,%eax
c00381cc:	89 c1                	mov    %eax,%ecx
c00381ce:	0f 84 65 03 00 00    	je     c0038539 <_realloc_r+0x569>
c00381d4:	8b 47 fc             	mov    -0x4(%edi),%eax
c00381d7:	8d 51 f8             	lea    -0x8(%ecx),%edx
c00381da:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00381dd:	89 c2                	mov    %eax,%edx
c00381df:	83 e2 fe             	and    $0xfffffffe,%edx
c00381e2:	01 f2                	add    %esi,%edx
c00381e4:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c00381e7:	0f 84 63 02 00 00    	je     c0038450 <_realloc_r+0x480>
c00381ed:	83 eb 04             	sub    $0x4,%ebx
c00381f0:	83 fb 24             	cmp    $0x24,%ebx
c00381f3:	0f 87 6f 01 00 00    	ja     c0038368 <_realloc_r+0x398>
c00381f9:	83 fb 13             	cmp    $0x13,%ebx
c00381fc:	0f 87 ee 00 00 00    	ja     c00382f0 <_realloc_r+0x320>
c0038202:	89 c8                	mov    %ecx,%eax
c0038204:	89 fa                	mov    %edi,%edx
c0038206:	8b 1a                	mov    (%edx),%ebx
c0038208:	89 18                	mov    %ebx,(%eax)
c003820a:	8b 5a 04             	mov    0x4(%edx),%ebx
c003820d:	89 58 04             	mov    %ebx,0x4(%eax)
c0038210:	8b 52 08             	mov    0x8(%edx),%edx
c0038213:	89 50 08             	mov    %edx,0x8(%eax)
c0038216:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0038219:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003821d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038220:	89 34 24             	mov    %esi,(%esp)
c0038223:	e8 b8 fa ff ff       	call   c0037ce0 <_free_r>
c0038228:	89 34 24             	mov    %esi,(%esp)
c003822b:	e8 60 d9 ff ff       	call   c0035b90 <__malloc_unlock>
c0038230:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038233:	83 c4 3c             	add    $0x3c,%esp
c0038236:	5b                   	pop    %ebx
c0038237:	5e                   	pop    %esi
c0038238:	5f                   	pop    %edi
c0038239:	89 c8                	mov    %ecx,%eax
c003823b:	5d                   	pop    %ebp
c003823c:	c3                   	ret    
c003823d:	8d 76 00             	lea    0x0(%esi),%esi
c0038240:	89 45 0c             	mov    %eax,0xc(%ebp)
c0038243:	83 c4 3c             	add    $0x3c,%esp
c0038246:	5b                   	pop    %ebx
c0038247:	5e                   	pop    %esi
c0038248:	5f                   	pop    %edi
c0038249:	5d                   	pop    %ebp
c003824a:	e9 51 d1 ff ff       	jmp    c00353a0 <_malloc_r>
c003824f:	90                   	nop
c0038250:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038253:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038259:	31 c0                	xor    %eax,%eax
c003825b:	e9 f7 fe ff ff       	jmp    c0038157 <_realloc_r+0x187>
c0038260:	89 c2                	mov    %eax,%edx
c0038262:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038265:	0f 8c 4d ff ff ff    	jl     c00381b8 <_realloc_r+0x1e8>
c003826b:	8b 71 08             	mov    0x8(%ecx),%esi
c003826e:	83 eb 04             	sub    $0x4,%ebx
c0038271:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038274:	83 fb 24             	cmp    $0x24,%ebx
c0038277:	89 46 0c             	mov    %eax,0xc(%esi)
c003827a:	89 70 08             	mov    %esi,0x8(%eax)
c003827d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038280:	0f 87 88 00 00 00    	ja     c003830e <_realloc_r+0x33e>
c0038286:	83 fb 13             	cmp    $0x13,%ebx
c0038289:	89 f0                	mov    %esi,%eax
c003828b:	76 1a                	jbe    c00382a7 <_realloc_r+0x2d7>
c003828d:	8b 07                	mov    (%edi),%eax
c003828f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038292:	89 41 08             	mov    %eax,0x8(%ecx)
c0038295:	8b 47 04             	mov    0x4(%edi),%eax
c0038298:	89 41 0c             	mov    %eax,0xc(%ecx)
c003829b:	0f 87 17 02 00 00    	ja     c00384b8 <_realloc_r+0x4e8>
c00382a1:	8d 41 10             	lea    0x10(%ecx),%eax
c00382a4:	83 c7 08             	add    $0x8,%edi
c00382a7:	8b 1f                	mov    (%edi),%ebx
c00382a9:	89 18                	mov    %ebx,(%eax)
c00382ab:	8b 5f 04             	mov    0x4(%edi),%ebx
c00382ae:	89 58 04             	mov    %ebx,0x4(%eax)
c00382b1:	8b 5f 08             	mov    0x8(%edi),%ebx
c00382b4:	89 f7                	mov    %esi,%edi
c00382b6:	89 ce                	mov    %ecx,%esi
c00382b8:	89 58 08             	mov    %ebx,0x8(%eax)
c00382bb:	89 d3                	mov    %edx,%ebx
c00382bd:	8b 41 04             	mov    0x4(%ecx),%eax
c00382c0:	e9 6e fe ff ff       	jmp    c0038133 <_realloc_r+0x163>
c00382c5:	8d 76 00             	lea    0x0(%esi),%esi
c00382c8:	8b 45 cc             	mov    -0x34(%ebp),%eax
c00382cb:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00382ce:	8b 48 04             	mov    0x4(%eax),%ecx
c00382d1:	83 c2 10             	add    $0x10,%edx
c00382d4:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c00382d7:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c00382db:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c00382de:	01 d9                	add    %ebx,%ecx
c00382e0:	39 d1                	cmp    %edx,%ecx
c00382e2:	7d 54                	jge    c0038338 <_realloc_r+0x368>
c00382e4:	89 c2                	mov    %eax,%edx
c00382e6:	e9 8a fd ff ff       	jmp    c0038075 <_realloc_r+0xa5>
c00382eb:	90                   	nop
c00382ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00382f0:	8b 07                	mov    (%edi),%eax
c00382f2:	83 fb 1b             	cmp    $0x1b,%ebx
c00382f5:	89 01                	mov    %eax,(%ecx)
c00382f7:	8b 47 04             	mov    0x4(%edi),%eax
c00382fa:	89 41 04             	mov    %eax,0x4(%ecx)
c00382fd:	0f 87 2d 01 00 00    	ja     c0038430 <_realloc_r+0x460>
c0038303:	8d 41 08             	lea    0x8(%ecx),%eax
c0038306:	8d 57 08             	lea    0x8(%edi),%edx
c0038309:	e9 f8 fe ff ff       	jmp    c0038206 <_realloc_r+0x236>
c003830e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038312:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038316:	89 f7                	mov    %esi,%edi
c0038318:	89 34 24             	mov    %esi,(%esp)
c003831b:	89 55 d8             	mov    %edx,-0x28(%ebp)
c003831e:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038321:	e8 1a fc ff ff       	call   c0037f40 <memmove>
c0038326:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038329:	8b 55 d8             	mov    -0x28(%ebp),%edx
c003832c:	8b 41 04             	mov    0x4(%ecx),%eax
c003832f:	89 ce                	mov    %ecx,%esi
c0038331:	89 d3                	mov    %edx,%ebx
c0038333:	e9 fb fd ff ff       	jmp    c0038133 <_realloc_r+0x163>
c0038338:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003833b:	29 d9                	sub    %ebx,%ecx
c003833d:	01 de                	add    %ebx,%esi
c003833f:	83 c9 01             	or     $0x1,%ecx
c0038342:	89 35 48 d5 03 c0    	mov    %esi,0xc003d548
c0038348:	89 4e 04             	mov    %ecx,0x4(%esi)
c003834b:	8b 47 fc             	mov    -0x4(%edi),%eax
c003834e:	83 e0 01             	and    $0x1,%eax
c0038351:	09 d8                	or     %ebx,%eax
c0038353:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038356:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038359:	89 04 24             	mov    %eax,(%esp)
c003835c:	e8 2f d8 ff ff       	call   c0035b90 <__malloc_unlock>
c0038361:	89 f8                	mov    %edi,%eax
c0038363:	e9 ef fd ff ff       	jmp    c0038157 <_realloc_r+0x187>
c0038368:	89 0c 24             	mov    %ecx,(%esp)
c003836b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003836f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038373:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038376:	e8 c5 fb ff ff       	call   c0037f40 <memmove>
c003837b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003837e:	e9 93 fe ff ff       	jmp    c0038216 <_realloc_r+0x246>
c0038383:	90                   	nop
c0038384:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038388:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003838b:	e9 d2 fe ff ff       	jmp    c0038262 <_realloc_r+0x292>
c0038390:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038393:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038396:	01 d0                	add    %edx,%eax
c0038398:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003839b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003839e:	83 c0 10             	add    $0x10,%eax
c00383a1:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c00383a4:	0f 8c b8 fe ff ff    	jl     c0038262 <_realloc_r+0x292>
c00383aa:	8b 41 0c             	mov    0xc(%ecx),%eax
c00383ad:	83 eb 04             	sub    $0x4,%ebx
c00383b0:	8b 51 08             	mov    0x8(%ecx),%edx
c00383b3:	83 fb 24             	cmp    $0x24,%ebx
c00383b6:	8d 71 08             	lea    0x8(%ecx),%esi
c00383b9:	89 42 0c             	mov    %eax,0xc(%edx)
c00383bc:	89 50 08             	mov    %edx,0x8(%eax)
c00383bf:	0f 87 3d 01 00 00    	ja     c0038502 <_realloc_r+0x532>
c00383c5:	83 fb 13             	cmp    $0x13,%ebx
c00383c8:	89 f0                	mov    %esi,%eax
c00383ca:	76 1a                	jbe    c00383e6 <_realloc_r+0x416>
c00383cc:	8b 07                	mov    (%edi),%eax
c00383ce:	83 fb 1b             	cmp    $0x1b,%ebx
c00383d1:	89 41 08             	mov    %eax,0x8(%ecx)
c00383d4:	8b 47 04             	mov    0x4(%edi),%eax
c00383d7:	89 41 0c             	mov    %eax,0xc(%ecx)
c00383da:	0f 87 3d 01 00 00    	ja     c003851d <_realloc_r+0x54d>
c00383e0:	8d 41 10             	lea    0x10(%ecx),%eax
c00383e3:	83 c7 08             	add    $0x8,%edi
c00383e6:	8b 17                	mov    (%edi),%edx
c00383e8:	89 10                	mov    %edx,(%eax)
c00383ea:	8b 57 04             	mov    0x4(%edi),%edx
c00383ed:	89 50 04             	mov    %edx,0x4(%eax)
c00383f0:	8b 57 08             	mov    0x8(%edi),%edx
c00383f3:	89 50 08             	mov    %edx,0x8(%eax)
c00383f6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00383f9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00383fc:	89 d8                	mov    %ebx,%eax
c00383fe:	29 df                	sub    %ebx,%edi
c0038400:	01 c8                	add    %ecx,%eax
c0038402:	83 cf 01             	or     $0x1,%edi
c0038405:	a3 48 d5 03 c0       	mov    %eax,0xc003d548
c003840a:	89 78 04             	mov    %edi,0x4(%eax)
c003840d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038410:	83 e0 01             	and    $0x1,%eax
c0038413:	09 d8                	or     %ebx,%eax
c0038415:	89 41 04             	mov    %eax,0x4(%ecx)
c0038418:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003841b:	89 04 24             	mov    %eax,(%esp)
c003841e:	e8 6d d7 ff ff       	call   c0035b90 <__malloc_unlock>
c0038423:	89 f0                	mov    %esi,%eax
c0038425:	e9 2d fd ff ff       	jmp    c0038157 <_realloc_r+0x187>
c003842a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0038430:	8b 47 08             	mov    0x8(%edi),%eax
c0038433:	83 fb 24             	cmp    $0x24,%ebx
c0038436:	89 41 08             	mov    %eax,0x8(%ecx)
c0038439:	8b 47 0c             	mov    0xc(%edi),%eax
c003843c:	89 41 0c             	mov    %eax,0xc(%ecx)
c003843f:	74 60                	je     c00384a1 <_realloc_r+0x4d1>
c0038441:	8d 41 10             	lea    0x10(%ecx),%eax
c0038444:	8d 57 10             	lea    0x10(%edi),%edx
c0038447:	e9 ba fd ff ff       	jmp    c0038206 <_realloc_r+0x236>
c003844c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038450:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038453:	83 e2 fc             	and    $0xfffffffc,%edx
c0038456:	01 d3                	add    %edx,%ebx
c0038458:	e9 d6 fc ff ff       	jmp    c0038133 <_realloc_r+0x163>
c003845d:	8d 76 00             	lea    0x0(%esi),%esi
c0038460:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038464:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038468:	89 f7                	mov    %esi,%edi
c003846a:	89 34 24             	mov    %esi,(%esp)
c003846d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038470:	e8 cb fa ff ff       	call   c0037f40 <memmove>
c0038475:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038478:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003847b:	8b 41 04             	mov    0x4(%ecx),%eax
c003847e:	89 ce                	mov    %ecx,%esi
c0038480:	e9 ae fc ff ff       	jmp    c0038133 <_realloc_r+0x163>
c0038485:	8b 47 08             	mov    0x8(%edi),%eax
c0038488:	83 fb 24             	cmp    $0x24,%ebx
c003848b:	89 41 10             	mov    %eax,0x10(%ecx)
c003848e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038491:	89 41 14             	mov    %eax,0x14(%ecx)
c0038494:	74 3e                	je     c00384d4 <_realloc_r+0x504>
c0038496:	8d 41 18             	lea    0x18(%ecx),%eax
c0038499:	83 c7 10             	add    $0x10,%edi
c003849c:	e9 5b fc ff ff       	jmp    c00380fc <_realloc_r+0x12c>
c00384a1:	8b 47 10             	mov    0x10(%edi),%eax
c00384a4:	8d 57 18             	lea    0x18(%edi),%edx
c00384a7:	89 41 10             	mov    %eax,0x10(%ecx)
c00384aa:	8b 5f 14             	mov    0x14(%edi),%ebx
c00384ad:	8d 41 18             	lea    0x18(%ecx),%eax
c00384b0:	89 59 14             	mov    %ebx,0x14(%ecx)
c00384b3:	e9 4e fd ff ff       	jmp    c0038206 <_realloc_r+0x236>
c00384b8:	8b 47 08             	mov    0x8(%edi),%eax
c00384bb:	83 fb 24             	cmp    $0x24,%ebx
c00384be:	89 41 10             	mov    %eax,0x10(%ecx)
c00384c1:	8b 47 0c             	mov    0xc(%edi),%eax
c00384c4:	89 41 14             	mov    %eax,0x14(%ecx)
c00384c7:	74 22                	je     c00384eb <_realloc_r+0x51b>
c00384c9:	8d 41 18             	lea    0x18(%ecx),%eax
c00384cc:	83 c7 10             	add    $0x10,%edi
c00384cf:	e9 d3 fd ff ff       	jmp    c00382a7 <_realloc_r+0x2d7>
c00384d4:	8b 47 10             	mov    0x10(%edi),%eax
c00384d7:	83 c7 18             	add    $0x18,%edi
c00384da:	89 41 18             	mov    %eax,0x18(%ecx)
c00384dd:	8b 57 fc             	mov    -0x4(%edi),%edx
c00384e0:	8d 41 20             	lea    0x20(%ecx),%eax
c00384e3:	89 51 1c             	mov    %edx,0x1c(%ecx)
c00384e6:	e9 11 fc ff ff       	jmp    c00380fc <_realloc_r+0x12c>
c00384eb:	8b 47 10             	mov    0x10(%edi),%eax
c00384ee:	83 c7 18             	add    $0x18,%edi
c00384f1:	89 41 18             	mov    %eax,0x18(%ecx)
c00384f4:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00384f7:	8d 41 20             	lea    0x20(%ecx),%eax
c00384fa:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c00384fd:	e9 a5 fd ff ff       	jmp    c00382a7 <_realloc_r+0x2d7>
c0038502:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038506:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003850a:	89 34 24             	mov    %esi,(%esp)
c003850d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038510:	e8 2b fa ff ff       	call   c0037f40 <memmove>
c0038515:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038518:	e9 d9 fe ff ff       	jmp    c00383f6 <_realloc_r+0x426>
c003851d:	8b 47 08             	mov    0x8(%edi),%eax
c0038520:	83 fb 24             	cmp    $0x24,%ebx
c0038523:	89 41 10             	mov    %eax,0x10(%ecx)
c0038526:	8b 47 0c             	mov    0xc(%edi),%eax
c0038529:	89 41 14             	mov    %eax,0x14(%ecx)
c003852c:	74 1d                	je     c003854b <_realloc_r+0x57b>
c003852e:	8d 41 18             	lea    0x18(%ecx),%eax
c0038531:	83 c7 10             	add    $0x10,%edi
c0038534:	e9 ad fe ff ff       	jmp    c00383e6 <_realloc_r+0x416>
c0038539:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003853c:	89 04 24             	mov    %eax,(%esp)
c003853f:	e8 4c d6 ff ff       	call   c0035b90 <__malloc_unlock>
c0038544:	31 c0                	xor    %eax,%eax
c0038546:	e9 0c fc ff ff       	jmp    c0038157 <_realloc_r+0x187>
c003854b:	8b 47 10             	mov    0x10(%edi),%eax
c003854e:	83 c7 18             	add    $0x18,%edi
c0038551:	89 41 18             	mov    %eax,0x18(%ecx)
c0038554:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038557:	8d 41 20             	lea    0x20(%ecx),%eax
c003855a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003855d:	e9 84 fe ff ff       	jmp    c00383e6 <_realloc_r+0x416>
c0038562:	66 90                	xchg   %ax,%ax
c0038564:	66 90                	xchg   %ax,%ax
c0038566:	66 90                	xchg   %ax,%ax
c0038568:	66 90                	xchg   %ax,%ax
c003856a:	66 90                	xchg   %ax,%ax
c003856c:	66 90                	xchg   %ax,%ax
c003856e:	66 90                	xchg   %ax,%ax

c0038570 <cleanup_glue>:
c0038570:	55                   	push   %ebp
c0038571:	89 e5                	mov    %esp,%ebp
c0038573:	56                   	push   %esi
c0038574:	53                   	push   %ebx
c0038575:	83 ec 10             	sub    $0x10,%esp
c0038578:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003857b:	8b 75 08             	mov    0x8(%ebp),%esi
c003857e:	8b 03                	mov    (%ebx),%eax
c0038580:	85 c0                	test   %eax,%eax
c0038582:	74 0c                	je     c0038590 <cleanup_glue+0x20>
c0038584:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038588:	89 34 24             	mov    %esi,(%esp)
c003858b:	e8 e0 ff ff ff       	call   c0038570 <cleanup_glue>
c0038590:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038593:	89 75 08             	mov    %esi,0x8(%ebp)
c0038596:	83 c4 10             	add    $0x10,%esp
c0038599:	5b                   	pop    %ebx
c003859a:	5e                   	pop    %esi
c003859b:	5d                   	pop    %ebp
c003859c:	e9 3f f7 ff ff       	jmp    c0037ce0 <_free_r>
c00385a1:	eb 0d                	jmp    c00385b0 <_reclaim_reent>
c00385a3:	90                   	nop
c00385a4:	90                   	nop
c00385a5:	90                   	nop
c00385a6:	90                   	nop
c00385a7:	90                   	nop
c00385a8:	90                   	nop
c00385a9:	90                   	nop
c00385aa:	90                   	nop
c00385ab:	90                   	nop
c00385ac:	90                   	nop
c00385ad:	90                   	nop
c00385ae:	90                   	nop
c00385af:	90                   	nop

c00385b0 <_reclaim_reent>:
c00385b0:	55                   	push   %ebp
c00385b1:	89 e5                	mov    %esp,%ebp
c00385b3:	57                   	push   %edi
c00385b4:	56                   	push   %esi
c00385b5:	53                   	push   %ebx
c00385b6:	83 ec 1c             	sub    $0x1c,%esp
c00385b9:	8b 5d 08             	mov    0x8(%ebp),%ebx
c00385bc:	3b 1d 40 d0 03 c0    	cmp    0xc003d040,%ebx
c00385c2:	0f 84 a6 00 00 00    	je     c003866e <_reclaim_reent+0xbe>
c00385c8:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385cb:	85 d2                	test   %edx,%edx
c00385cd:	74 46                	je     c0038615 <_reclaim_reent+0x65>
c00385cf:	31 c0                	xor    %eax,%eax
c00385d1:	31 f6                	xor    %esi,%esi
c00385d3:	90                   	nop
c00385d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00385d8:	8b 04 82             	mov    (%edx,%eax,4),%eax
c00385db:	85 c0                	test   %eax,%eax
c00385dd:	75 0b                	jne    c00385ea <_reclaim_reent+0x3a>
c00385df:	eb 1e                	jmp    c00385ff <_reclaim_reent+0x4f>
c00385e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00385e8:	89 f8                	mov    %edi,%eax
c00385ea:	8b 38                	mov    (%eax),%edi
c00385ec:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385f0:	89 1c 24             	mov    %ebx,(%esp)
c00385f3:	e8 e8 f6 ff ff       	call   c0037ce0 <_free_r>
c00385f8:	85 ff                	test   %edi,%edi
c00385fa:	75 ec                	jne    c00385e8 <_reclaim_reent+0x38>
c00385fc:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385ff:	83 c6 01             	add    $0x1,%esi
c0038602:	83 fe 20             	cmp    $0x20,%esi
c0038605:	89 f0                	mov    %esi,%eax
c0038607:	75 cf                	jne    c00385d8 <_reclaim_reent+0x28>
c0038609:	89 54 24 04          	mov    %edx,0x4(%esp)
c003860d:	89 1c 24             	mov    %ebx,(%esp)
c0038610:	e8 cb f6 ff ff       	call   c0037ce0 <_free_r>
c0038615:	8b 43 40             	mov    0x40(%ebx),%eax
c0038618:	85 c0                	test   %eax,%eax
c003861a:	74 0c                	je     c0038628 <_reclaim_reent+0x78>
c003861c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038620:	89 1c 24             	mov    %ebx,(%esp)
c0038623:	e8 b8 f6 ff ff       	call   c0037ce0 <_free_r>
c0038628:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c003862e:	85 c0                	test   %eax,%eax
c0038630:	74 22                	je     c0038654 <_reclaim_reent+0xa4>
c0038632:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c0038638:	39 f0                	cmp    %esi,%eax
c003863a:	75 06                	jne    c0038642 <_reclaim_reent+0x92>
c003863c:	eb 16                	jmp    c0038654 <_reclaim_reent+0xa4>
c003863e:	66 90                	xchg   %ax,%ax
c0038640:	89 f8                	mov    %edi,%eax
c0038642:	8b 38                	mov    (%eax),%edi
c0038644:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038648:	89 1c 24             	mov    %ebx,(%esp)
c003864b:	e8 90 f6 ff ff       	call   c0037ce0 <_free_r>
c0038650:	39 fe                	cmp    %edi,%esi
c0038652:	75 ec                	jne    c0038640 <_reclaim_reent+0x90>
c0038654:	8b 43 54             	mov    0x54(%ebx),%eax
c0038657:	85 c0                	test   %eax,%eax
c0038659:	74 0c                	je     c0038667 <_reclaim_reent+0xb7>
c003865b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003865f:	89 1c 24             	mov    %ebx,(%esp)
c0038662:	e8 79 f6 ff ff       	call   c0037ce0 <_free_r>
c0038667:	8b 43 38             	mov    0x38(%ebx),%eax
c003866a:	85 c0                	test   %eax,%eax
c003866c:	75 08                	jne    c0038676 <_reclaim_reent+0xc6>
c003866e:	83 c4 1c             	add    $0x1c,%esp
c0038671:	5b                   	pop    %ebx
c0038672:	5e                   	pop    %esi
c0038673:	5f                   	pop    %edi
c0038674:	5d                   	pop    %ebp
c0038675:	c3                   	ret    
c0038676:	89 1c 24             	mov    %ebx,(%esp)
c0038679:	ff 53 3c             	call   *0x3c(%ebx)
c003867c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038682:	85 c0                	test   %eax,%eax
c0038684:	74 e8                	je     c003866e <_reclaim_reent+0xbe>
c0038686:	89 1c 24             	mov    %ebx,(%esp)
c0038689:	89 44 24 04          	mov    %eax,0x4(%esp)
c003868d:	e8 de fe ff ff       	call   c0038570 <cleanup_glue>
c0038692:	83 c4 1c             	add    $0x1c,%esp
c0038695:	5b                   	pop    %ebx
c0038696:	5e                   	pop    %esi
c0038697:	5f                   	pop    %edi
c0038698:	5d                   	pop    %ebp
c0038699:	c3                   	ret    
