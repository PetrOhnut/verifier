
main.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
   0:	00000037          	lui	zero,0x0

00000004 <__crt0_pointer_init>:
   4:	80002117          	auipc	sp,0x80002
   8:	ff810113          	addi	sp,sp,-8 # 80001ffc <__crt0_io_space_begin+0x800021fc>
   c:	80000197          	auipc	gp,0x80000
  10:	7f418193          	addi	gp,gp,2036 # 80000800 <__crt0_io_space_begin+0x80000a00>

00000014 <__crt0_cpu_csr_init>:
  14:	00000517          	auipc	a0,0x0
  18:	11850513          	addi	a0,a0,280 # 12c <__crt0_dummy_trap_handler>
  1c:	30551073          	csrw	mtvec,a0
  20:	34151073          	csrw	mepc,a0
  24:	30001073          	csrw	mstatus,zero
  28:	30401073          	csrw	mie,zero
  2c:	34401073          	csrw	mip,zero
  30:	32001073          	csrw	mcountinhibit,zero
  34:	30601073          	csrw	mcounteren,zero
  38:	b0001073          	csrw	mcycle,zero
  3c:	b8001073          	csrw	mcycleh,zero
  40:	b0201073          	csrw	minstret,zero
  44:	b8201073          	csrw	minstreth,zero

00000048 <__crt0_reg_file_clear>:
  48:	00000093          	li	ra,0
  4c:	00000213          	li	tp,0
  50:	00000293          	li	t0,0
  54:	00000313          	li	t1,0
  58:	00000393          	li	t2,0
  5c:	00000813          	li	a6,0
  60:	00000893          	li	a7,0
  64:	00000913          	li	s2,0
  68:	00000993          	li	s3,0
  6c:	00000a13          	li	s4,0
  70:	00000a93          	li	s5,0
  74:	00000b13          	li	s6,0
  78:	00000b93          	li	s7,0
  7c:	00000c13          	li	s8,0
  80:	00000c93          	li	s9,0
  84:	00000d13          	li	s10,0
  88:	00000d93          	li	s11,0
  8c:	00000e13          	li	t3,0
  90:	00000e93          	li	t4,0
  94:	00000f13          	li	t5,0
  98:	00000f93          	li	t6,0

0000009c <__crt0_reset_io>:
  9c:	00000417          	auipc	s0,0x0
  a0:	d6440413          	addi	s0,s0,-668 # fffffe00 <__crt0_io_space_begin+0x0>
  a4:	00000497          	auipc	s1,0x0
  a8:	f5c48493          	addi	s1,s1,-164 # 0 <_start>

000000ac <__crt0_reset_io_loop>:
  ac:	00042023          	sw	zero,0(s0)
  b0:	00440413          	addi	s0,s0,4
  b4:	fe941ce3          	bne	s0,s1,ac <__crt0_reset_io_loop>

000000b8 <__crt0_copy_data>:
  b8:	00001597          	auipc	a1,0x1
  bc:	2a458593          	addi	a1,a1,676 # 135c <__crt0_copy_data_src_begin>
  c0:	80000617          	auipc	a2,0x80000
  c4:	f4060613          	addi	a2,a2,-192 # 80000000 <__crt0_io_space_begin+0x80000200>
  c8:	80000697          	auipc	a3,0x80000
  cc:	f3868693          	addi	a3,a3,-200 # 80000000 <__crt0_io_space_begin+0x80000200>

000000d0 <__crt0_copy_data_loop>:
  d0:	00d65c63          	bge	a2,a3,e8 <__crt0_clear_bss>
  d4:	00058703          	lb	a4,0(a1)
  d8:	00e60023          	sb	a4,0(a2)
  dc:	00158593          	addi	a1,a1,1
  e0:	00160613          	addi	a2,a2,1
  e4:	fedff06f          	j	d0 <__crt0_copy_data_loop>

000000e8 <__crt0_clear_bss>:
  e8:	80000717          	auipc	a4,0x80000
  ec:	f1870713          	addi	a4,a4,-232 # 80000000 <__crt0_io_space_begin+0x80000200>
  f0:	87418793          	addi	a5,gp,-1932 # 80000074 <__BSS_END__>

000000f4 <__crt0_clear_bss_loop>:
  f4:	00f75863          	bge	a4,a5,104 <__crt0_clear_bss_loop_end>
  f8:	00070023          	sb	zero,0(a4)
  fc:	00170713          	addi	a4,a4,1
 100:	ff5ff06f          	j	f4 <__crt0_clear_bss_loop>

00000104 <__crt0_clear_bss_loop_end>:
 104:	00000513          	li	a0,0
 108:	00000593          	li	a1,0
 10c:	06c000ef          	jal	ra,178 <main>

00000110 <__crt0_main_exit>:
 110:	34051073          	csrw	mscratch,a0

00000114 <__crt0_main_aftermath>:
 114:	00000093          	li	ra,0
 118:	00008463          	beqz	ra,120 <__crt0_main_aftermath_end>
 11c:	000080e7          	jalr	ra

00000120 <__crt0_main_aftermath_end>:
 120:	30047073          	csrci	mstatus,8
 124:	10500073          	wfi
 128:	0000006f          	j	128 <__crt0_main_aftermath_end+0x8>

0000012c <__crt0_dummy_trap_handler>:
 12c:	ff810113          	addi	sp,sp,-8
 130:	00812023          	sw	s0,0(sp)
 134:	00912223          	sw	s1,4(sp)
 138:	34202473          	csrr	s0,mcause
 13c:	02044663          	bltz	s0,168 <__crt0_dummy_trap_handler_irq>
 140:	34102473          	csrr	s0,mepc

00000144 <__crt0_dummy_trap_handler_exc_c_check>:
 144:	00041483          	lh	s1,0(s0)
 148:	0034f493          	andi	s1,s1,3
 14c:	00240413          	addi	s0,s0,2
 150:	34141073          	csrw	mepc,s0
 154:	00300413          	li	s0,3
 158:	00941863          	bne	s0,s1,168 <__crt0_dummy_trap_handler_irq>

0000015c <__crt0_dummy_trap_handler_exc_uncrompressed>:
 15c:	34102473          	csrr	s0,mepc
 160:	00240413          	addi	s0,s0,2
 164:	34141073          	csrw	mepc,s0

00000168 <__crt0_dummy_trap_handler_irq>:
 168:	00012403          	lw	s0,0(sp)
 16c:	00412483          	lw	s1,4(sp)
 170:	00810113          	addi	sp,sp,8
 174:	30200073          	mret

00000178 <main>:
 178:	00005537          	lui	a0,0x5
 17c:	ff010113          	addi	sp,sp,-16
 180:	00000613          	li	a2,0
 184:	00000593          	li	a1,0
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x37a4>
 18c:	00112623          	sw	ra,12(sp)
 190:	00812423          	sw	s0,8(sp)
 194:	354000ef          	jal	ra,4e8 <neorv32_uart0_setup>
 198:	469000ef          	jal	ra,e00 <neorv32_rte_setup>
 19c:	640000ef          	jal	ra,7dc <neorv32_xip_available>
 1a0:	02051463          	bnez	a0,1c8 <main+0x50>
 1a4:	00001537          	lui	a0,0x1
 1a8:	f0450513          	addi	a0,a0,-252 # f04 <__etext>
 1ac:	458000ef          	jal	ra,604 <neorv32_uart0_printf>
 1b0:	00100413          	li	s0,1
 1b4:	00c12083          	lw	ra,12(sp)
 1b8:	00040513          	mv	a0,s0
 1bc:	00812403          	lw	s0,8(sp)
 1c0:	01010113          	addi	sp,sp,16
 1c4:	00008067          	ret
 1c8:	00001537          	lui	a0,0x1
 1cc:	f2850513          	addi	a0,a0,-216 # f28 <__etext+0x24>
 1d0:	434000ef          	jal	ra,604 <neorv32_uart0_printf>
 1d4:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 1d8:	0207f793          	andi	a5,a5,32
 1dc:	00079863          	bnez	a5,1ec <main+0x74>
 1e0:	00001537          	lui	a0,0x1
 1e4:	f4450513          	addi	a0,a0,-188 # f44 <__etext+0x40>
 1e8:	41c000ef          	jal	ra,604 <neorv32_uart0_printf>
 1ec:	00300693          	li	a3,3
 1f0:	00000613          	li	a2,0
 1f4:	00000593          	li	a1,0
 1f8:	00300513          	li	a0,3
 1fc:	5f0000ef          	jal	ra,7ec <neorv32_xip_init>
 200:	00050863          	beqz	a0,210 <main+0x98>
 204:	00001537          	lui	a0,0x1
 208:	f9c50513          	addi	a0,a0,-100 # f9c <__etext+0x98>
 20c:	fa1ff06f          	j	1ac <main+0x34>
 210:	00001537          	lui	a0,0x1
 214:	fbc50513          	addi	a0,a0,-68 # fbc <__etext+0xb8>
 218:	3ec000ef          	jal	ra,604 <neorv32_uart0_printf>
 21c:	04c000ef          	jal	ra,268 <program_xip_flash>
 220:	00050863          	beqz	a0,230 <main+0xb8>
 224:	00001537          	lui	a0,0x1
 228:	fd850513          	addi	a0,a0,-40 # fd8 <__etext+0xd4>
 22c:	f81ff06f          	j	1ac <main+0x34>
 230:	200005b7          	lui	a1,0x20000
 234:	00200513          	li	a0,2
 238:	630000ef          	jal	ra,868 <neorv32_xip_start>
 23c:	00050413          	mv	s0,a0
 240:	00050863          	beqz	a0,250 <main+0xd8>
 244:	00001537          	lui	a0,0x1
 248:	00050513          	mv	a0,a0
 24c:	f61ff06f          	j	1ac <main+0x34>
 250:	00001537          	lui	a0,0x1
 254:	02850513          	addi	a0,a0,40 # 1028 <__etext+0x124>
 258:	3ac000ef          	jal	ra,604 <neorv32_uart0_printf>
 25c:	20000097          	auipc	ra,0x20000
 260:	da4080e7          	jalr	-604(ra) # 20000000 <__crt0_copy_data_src_begin+0x1fffeca4>
 264:	f51ff06f          	j	1b4 <main+0x3c>

00000268 <program_xip_flash>:
 268:	fc010113          	addi	sp,sp,-64
 26c:	03212823          	sw	s2,48(sp)
 270:	00001937          	lui	s2,0x1
 274:	02912a23          	sw	s1,52(sp)
 278:	03312623          	sw	s3,44(sp)
 27c:	03412423          	sw	s4,40(sp)
 280:	03512223          	sw	s5,36(sp)
 284:	03612023          	sw	s6,32(sp)
 288:	02112e23          	sw	ra,60(sp)
 28c:	02812c23          	sw	s0,56(sp)
 290:	01712e23          	sw	s7,28(sp)
 294:	00000493          	li	s1,0
 298:	05090913          	addi	s2,s2,80 # 1050 <xip_program>
 29c:	060009b7          	lui	s3,0x6000
 2a0:	02000a37          	lui	s4,0x2000
 2a4:	05000ab7          	lui	s5,0x5000
 2a8:	04000b13          	li	s6,64
 2ac:	ffc4f793          	andi	a5,s1,-4
 2b0:	00f907b3          	add	a5,s2,a5
 2b4:	0007ab83          	lw	s7,0(a5)
 2b8:	fff4c793          	not	a5,s1
 2bc:	0037f793          	andi	a5,a5,3
 2c0:	00379793          	slli	a5,a5,0x3
 2c4:	00810593          	addi	a1,sp,8
 2c8:	00100513          	li	a0,1
 2cc:	00fbdbb3          	srl	s7,s7,a5
 2d0:	00012423          	sw	zero,8(sp)
 2d4:	01312623          	sw	s3,12(sp)
 2d8:	608000ef          	jal	ra,8e0 <neorv32_xip_spi_trans>
 2dc:	00849793          	slli	a5,s1,0x8
 2e0:	0ffbfb93          	zext.b	s7,s7
 2e4:	0177e7b3          	or	a5,a5,s7
 2e8:	00050413          	mv	s0,a0
 2ec:	0147e7b3          	or	a5,a5,s4
 2f0:	00810593          	addi	a1,sp,8
 2f4:	00400513          	li	a0,4
 2f8:	00012423          	sw	zero,8(sp)
 2fc:	00f12623          	sw	a5,12(sp)
 300:	5e0000ef          	jal	ra,8e0 <neorv32_xip_spi_trans>
 304:	00a40433          	add	s0,s0,a0
 308:	00148493          	addi	s1,s1,1
 30c:	00810593          	addi	a1,sp,8
 310:	00200513          	li	a0,2
 314:	00012423          	sw	zero,8(sp)
 318:	01512623          	sw	s5,12(sp)
 31c:	5c4000ef          	jal	ra,8e0 <neorv32_xip_spi_trans>
 320:	00812783          	lw	a5,8(sp)
 324:	00a40433          	add	s0,s0,a0
 328:	0017f793          	andi	a5,a5,1
 32c:	fe0790e3          	bnez	a5,30c <program_xip_flash+0xa4>
 330:	01648463          	beq	s1,s6,338 <program_xip_flash+0xd0>
 334:	f6040ce3          	beqz	s0,2ac <program_xip_flash+0x44>
 338:	03c12083          	lw	ra,60(sp)
 33c:	00040513          	mv	a0,s0
 340:	03812403          	lw	s0,56(sp)
 344:	03412483          	lw	s1,52(sp)
 348:	03012903          	lw	s2,48(sp)
 34c:	02c12983          	lw	s3,44(sp)
 350:	02812a03          	lw	s4,40(sp)
 354:	02412a83          	lw	s5,36(sp)
 358:	02012b03          	lw	s6,32(sp)
 35c:	01c12b83          	lw	s7,28(sp)
 360:	04010113          	addi	sp,sp,64
 364:	00008067          	ret

00000368 <__neorv32_uart_itoa>:
 368:	fd010113          	addi	sp,sp,-48
 36c:	02812423          	sw	s0,40(sp)
 370:	02912223          	sw	s1,36(sp)
 374:	03212023          	sw	s2,32(sp)
 378:	01312e23          	sw	s3,28(sp)
 37c:	01412c23          	sw	s4,24(sp)
 380:	02112623          	sw	ra,44(sp)
 384:	01512a23          	sw	s5,20(sp)
 388:	00001a37          	lui	s4,0x1
 38c:	00050493          	mv	s1,a0
 390:	00058413          	mv	s0,a1
 394:	00058523          	sb	zero,10(a1) # 2000000a <__crt0_copy_data_src_begin+0x1fffecae>
 398:	00000993          	li	s3,0
 39c:	00410913          	addi	s2,sp,4
 3a0:	0a4a0a13          	addi	s4,s4,164 # 10a4 <numbers.1>
 3a4:	00a00593          	li	a1,10
 3a8:	00048513          	mv	a0,s1
 3ac:	2f5000ef          	jal	ra,ea0 <__umodsi3>
 3b0:	00aa0533          	add	a0,s4,a0
 3b4:	00054783          	lbu	a5,0(a0)
 3b8:	01390ab3          	add	s5,s2,s3
 3bc:	00048513          	mv	a0,s1
 3c0:	00fa8023          	sb	a5,0(s5) # 5000000 <__crt0_copy_data_src_begin+0x4ffeca4>
 3c4:	00a00593          	li	a1,10
 3c8:	291000ef          	jal	ra,e58 <__hidden___udivsi3>
 3cc:	00198993          	addi	s3,s3,1 # 6000001 <__crt0_copy_data_src_begin+0x5ffeca5>
 3d0:	00a00793          	li	a5,10
 3d4:	00050493          	mv	s1,a0
 3d8:	fcf996e3          	bne	s3,a5,3a4 <__neorv32_uart_itoa+0x3c>
 3dc:	00090693          	mv	a3,s2
 3e0:	00900713          	li	a4,9
 3e4:	03000613          	li	a2,48
 3e8:	0096c583          	lbu	a1,9(a3)
 3ec:	00070793          	mv	a5,a4
 3f0:	fff70713          	addi	a4,a4,-1
 3f4:	01071713          	slli	a4,a4,0x10
 3f8:	01075713          	srli	a4,a4,0x10
 3fc:	00c59a63          	bne	a1,a2,410 <__neorv32_uart_itoa+0xa8>
 400:	000684a3          	sb	zero,9(a3)
 404:	fff68693          	addi	a3,a3,-1
 408:	fe0710e3          	bnez	a4,3e8 <__neorv32_uart_itoa+0x80>
 40c:	00000793          	li	a5,0
 410:	00f907b3          	add	a5,s2,a5
 414:	00000713          	li	a4,0
 418:	0007c683          	lbu	a3,0(a5)
 41c:	00068c63          	beqz	a3,434 <__neorv32_uart_itoa+0xcc>
 420:	00170613          	addi	a2,a4,1
 424:	00e40733          	add	a4,s0,a4
 428:	00d70023          	sb	a3,0(a4)
 42c:	01061713          	slli	a4,a2,0x10
 430:	01075713          	srli	a4,a4,0x10
 434:	fff78693          	addi	a3,a5,-1
 438:	02f91863          	bne	s2,a5,468 <__neorv32_uart_itoa+0x100>
 43c:	00e40433          	add	s0,s0,a4
 440:	00040023          	sb	zero,0(s0)
 444:	02c12083          	lw	ra,44(sp)
 448:	02812403          	lw	s0,40(sp)
 44c:	02412483          	lw	s1,36(sp)
 450:	02012903          	lw	s2,32(sp)
 454:	01c12983          	lw	s3,28(sp)
 458:	01812a03          	lw	s4,24(sp)
 45c:	01412a83          	lw	s5,20(sp)
 460:	03010113          	addi	sp,sp,48
 464:	00008067          	ret
 468:	00068793          	mv	a5,a3
 46c:	fadff06f          	j	418 <__neorv32_uart_itoa+0xb0>

00000470 <__neorv32_uart_tohex>:
 470:	00001637          	lui	a2,0x1
 474:	00758693          	addi	a3,a1,7
 478:	00000713          	li	a4,0
 47c:	09060613          	addi	a2,a2,144 # 1090 <symbols.0>
 480:	02000813          	li	a6,32
 484:	00e557b3          	srl	a5,a0,a4
 488:	00f7f793          	andi	a5,a5,15
 48c:	00f607b3          	add	a5,a2,a5
 490:	0007c783          	lbu	a5,0(a5)
 494:	00470713          	addi	a4,a4,4
 498:	fff68693          	addi	a3,a3,-1
 49c:	00f680a3          	sb	a5,1(a3)
 4a0:	ff0712e3          	bne	a4,a6,484 <__neorv32_uart_tohex+0x14>
 4a4:	00058423          	sb	zero,8(a1)
 4a8:	00008067          	ret

000004ac <__neorv32_uart_touppercase.constprop.0>:
 4ac:	00b50693          	addi	a3,a0,11
 4b0:	01900613          	li	a2,25
 4b4:	00054783          	lbu	a5,0(a0)
 4b8:	f9f78713          	addi	a4,a5,-97
 4bc:	0ff77713          	zext.b	a4,a4
 4c0:	00e66663          	bltu	a2,a4,4cc <__neorv32_uart_touppercase.constprop.0+0x20>
 4c4:	fe078793          	addi	a5,a5,-32
 4c8:	00f50023          	sb	a5,0(a0)
 4cc:	00150513          	addi	a0,a0,1
 4d0:	fea692e3          	bne	a3,a0,4b4 <__neorv32_uart_touppercase.constprop.0+0x8>
 4d4:	00008067          	ret

000004d8 <neorv32_uart0_available>:
 4d8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 4dc:	01255513          	srli	a0,a0,0x12
 4e0:	00157513          	andi	a0,a0,1
 4e4:	00008067          	ret

000004e8 <neorv32_uart0_setup>:
 4e8:	ff010113          	addi	sp,sp,-16
 4ec:	00812423          	sw	s0,8(sp)
 4f0:	00912223          	sw	s1,4(sp)
 4f4:	00112623          	sw	ra,12(sp)
 4f8:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 4fc:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 500:	00058413          	mv	s0,a1
 504:	00151593          	slli	a1,a0,0x1
 508:	00078513          	mv	a0,a5
 50c:	00060493          	mv	s1,a2
 510:	149000ef          	jal	ra,e58 <__hidden___udivsi3>
 514:	01051513          	slli	a0,a0,0x10
 518:	000017b7          	lui	a5,0x1
 51c:	01055513          	srli	a0,a0,0x10
 520:	00000713          	li	a4,0
 524:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0xfa>
 528:	04a7e463          	bltu	a5,a0,570 <neorv32_uart0_setup+0x88>
 52c:	0034f493          	andi	s1,s1,3
 530:	01449493          	slli	s1,s1,0x14
 534:	00347413          	andi	s0,s0,3
 538:	fff50793          	addi	a5,a0,-1
 53c:	0097e7b3          	or	a5,a5,s1
 540:	01641413          	slli	s0,s0,0x16
 544:	0087e7b3          	or	a5,a5,s0
 548:	01871713          	slli	a4,a4,0x18
 54c:	00c12083          	lw	ra,12(sp)
 550:	00812403          	lw	s0,8(sp)
 554:	00e7e7b3          	or	a5,a5,a4
 558:	10000737          	lui	a4,0x10000
 55c:	00e7e7b3          	or	a5,a5,a4
 560:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 564:	00412483          	lw	s1,4(sp)
 568:	01010113          	addi	sp,sp,16
 56c:	00008067          	ret
 570:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeca2>
 574:	0fd6f693          	andi	a3,a3,253
 578:	00069a63          	bnez	a3,58c <neorv32_uart0_setup+0xa4>
 57c:	00355513          	srli	a0,a0,0x3
 580:	00170713          	addi	a4,a4,1
 584:	0ff77713          	zext.b	a4,a4
 588:	fa1ff06f          	j	528 <neorv32_uart0_setup+0x40>
 58c:	00155513          	srli	a0,a0,0x1
 590:	ff1ff06f          	j	580 <neorv32_uart0_setup+0x98>

00000594 <neorv32_uart0_putc>:
 594:	00040737          	lui	a4,0x40
 598:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 59c:	00e7f7b3          	and	a5,a5,a4
 5a0:	fe079ce3          	bnez	a5,598 <neorv32_uart0_putc+0x4>
 5a4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 5a8:	00008067          	ret

000005ac <neorv32_uart0_print>:
 5ac:	ff010113          	addi	sp,sp,-16
 5b0:	00812423          	sw	s0,8(sp)
 5b4:	01212023          	sw	s2,0(sp)
 5b8:	00112623          	sw	ra,12(sp)
 5bc:	00912223          	sw	s1,4(sp)
 5c0:	00050413          	mv	s0,a0
 5c4:	00a00913          	li	s2,10
 5c8:	00044483          	lbu	s1,0(s0)
 5cc:	00140413          	addi	s0,s0,1
 5d0:	00049e63          	bnez	s1,5ec <neorv32_uart0_print+0x40>
 5d4:	00c12083          	lw	ra,12(sp)
 5d8:	00812403          	lw	s0,8(sp)
 5dc:	00412483          	lw	s1,4(sp)
 5e0:	00012903          	lw	s2,0(sp)
 5e4:	01010113          	addi	sp,sp,16
 5e8:	00008067          	ret
 5ec:	01249663          	bne	s1,s2,5f8 <neorv32_uart0_print+0x4c>
 5f0:	00d00513          	li	a0,13
 5f4:	fa1ff0ef          	jal	ra,594 <neorv32_uart0_putc>
 5f8:	00048513          	mv	a0,s1
 5fc:	f99ff0ef          	jal	ra,594 <neorv32_uart0_putc>
 600:	fc9ff06f          	j	5c8 <neorv32_uart0_print+0x1c>

00000604 <neorv32_uart0_printf>:
 604:	fa010113          	addi	sp,sp,-96
 608:	04f12a23          	sw	a5,84(sp)
 60c:	04410793          	addi	a5,sp,68
 610:	02912a23          	sw	s1,52(sp)
 614:	03212823          	sw	s2,48(sp)
 618:	03312623          	sw	s3,44(sp)
 61c:	03412423          	sw	s4,40(sp)
 620:	03512223          	sw	s5,36(sp)
 624:	03612023          	sw	s6,32(sp)
 628:	01712e23          	sw	s7,28(sp)
 62c:	01812c23          	sw	s8,24(sp)
 630:	01912a23          	sw	s9,20(sp)
 634:	02112e23          	sw	ra,60(sp)
 638:	02812c23          	sw	s0,56(sp)
 63c:	00050493          	mv	s1,a0
 640:	04b12223          	sw	a1,68(sp)
 644:	04c12423          	sw	a2,72(sp)
 648:	04d12623          	sw	a3,76(sp)
 64c:	04e12823          	sw	a4,80(sp)
 650:	05012c23          	sw	a6,88(sp)
 654:	05112e23          	sw	a7,92(sp)
 658:	00f12023          	sw	a5,0(sp)
 65c:	02500a13          	li	s4,37
 660:	00a00a93          	li	s5,10
 664:	07000913          	li	s2,112
 668:	07500b13          	li	s6,117
 66c:	07800b93          	li	s7,120
 670:	07300c13          	li	s8,115
 674:	06300993          	li	s3,99
 678:	06400c93          	li	s9,100
 67c:	0004c403          	lbu	s0,0(s1)
 680:	02041c63          	bnez	s0,6b8 <neorv32_uart0_printf+0xb4>
 684:	03c12083          	lw	ra,60(sp)
 688:	03812403          	lw	s0,56(sp)
 68c:	03412483          	lw	s1,52(sp)
 690:	03012903          	lw	s2,48(sp)
 694:	02c12983          	lw	s3,44(sp)
 698:	02812a03          	lw	s4,40(sp)
 69c:	02412a83          	lw	s5,36(sp)
 6a0:	02012b03          	lw	s6,32(sp)
 6a4:	01c12b83          	lw	s7,28(sp)
 6a8:	01812c03          	lw	s8,24(sp)
 6ac:	01412c83          	lw	s9,20(sp)
 6b0:	06010113          	addi	sp,sp,96
 6b4:	00008067          	ret
 6b8:	11441463          	bne	s0,s4,7c0 <neorv32_uart0_printf+0x1bc>
 6bc:	0014c403          	lbu	s0,1(s1)
 6c0:	0f240263          	beq	s0,s2,7a4 <neorv32_uart0_printf+0x1a0>
 6c4:	06896263          	bltu	s2,s0,728 <neorv32_uart0_printf+0x124>
 6c8:	09340463          	beq	s0,s3,750 <neorv32_uart0_printf+0x14c>
 6cc:	0089ee63          	bltu	s3,s0,6e8 <neorv32_uart0_printf+0xe4>
 6d0:	05800793          	li	a5,88
 6d4:	0af40663          	beq	s0,a5,780 <neorv32_uart0_printf+0x17c>
 6d8:	02500513          	li	a0,37
 6dc:	eb9ff0ef          	jal	ra,594 <neorv32_uart0_putc>
 6e0:	00040513          	mv	a0,s0
 6e4:	07c0006f          	j	760 <neorv32_uart0_printf+0x15c>
 6e8:	01940663          	beq	s0,s9,6f4 <neorv32_uart0_printf+0xf0>
 6ec:	06900793          	li	a5,105
 6f0:	fef414e3          	bne	s0,a5,6d8 <neorv32_uart0_printf+0xd4>
 6f4:	00012783          	lw	a5,0(sp)
 6f8:	0007a403          	lw	s0,0(a5)
 6fc:	00478713          	addi	a4,a5,4
 700:	00e12023          	sw	a4,0(sp)
 704:	00045863          	bgez	s0,714 <neorv32_uart0_printf+0x110>
 708:	02d00513          	li	a0,45
 70c:	40800433          	neg	s0,s0
 710:	e85ff0ef          	jal	ra,594 <neorv32_uart0_putc>
 714:	00410593          	addi	a1,sp,4
 718:	00040513          	mv	a0,s0
 71c:	c4dff0ef          	jal	ra,368 <__neorv32_uart_itoa>
 720:	00410513          	addi	a0,sp,4
 724:	0200006f          	j	744 <neorv32_uart0_printf+0x140>
 728:	05640063          	beq	s0,s6,768 <neorv32_uart0_printf+0x164>
 72c:	07740c63          	beq	s0,s7,7a4 <neorv32_uart0_printf+0x1a0>
 730:	fb8414e3          	bne	s0,s8,6d8 <neorv32_uart0_printf+0xd4>
 734:	00012783          	lw	a5,0(sp)
 738:	0007a503          	lw	a0,0(a5)
 73c:	00478713          	addi	a4,a5,4
 740:	00e12023          	sw	a4,0(sp)
 744:	e69ff0ef          	jal	ra,5ac <neorv32_uart0_print>
 748:	00248493          	addi	s1,s1,2
 74c:	f31ff06f          	j	67c <neorv32_uart0_printf+0x78>
 750:	00012783          	lw	a5,0(sp)
 754:	0007c503          	lbu	a0,0(a5)
 758:	00478713          	addi	a4,a5,4
 75c:	00e12023          	sw	a4,0(sp)
 760:	e35ff0ef          	jal	ra,594 <neorv32_uart0_putc>
 764:	fe5ff06f          	j	748 <neorv32_uart0_printf+0x144>
 768:	00012783          	lw	a5,0(sp)
 76c:	00410593          	addi	a1,sp,4
 770:	00478713          	addi	a4,a5,4
 774:	0007a503          	lw	a0,0(a5)
 778:	00e12023          	sw	a4,0(sp)
 77c:	fa1ff06f          	j	71c <neorv32_uart0_printf+0x118>
 780:	00012783          	lw	a5,0(sp)
 784:	00410593          	addi	a1,sp,4
 788:	0007a503          	lw	a0,0(a5)
 78c:	00478713          	addi	a4,a5,4
 790:	00e12023          	sw	a4,0(sp)
 794:	cddff0ef          	jal	ra,470 <__neorv32_uart_tohex>
 798:	00410513          	addi	a0,sp,4
 79c:	d11ff0ef          	jal	ra,4ac <__neorv32_uart_touppercase.constprop.0>
 7a0:	f81ff06f          	j	720 <neorv32_uart0_printf+0x11c>
 7a4:	00012783          	lw	a5,0(sp)
 7a8:	00410593          	addi	a1,sp,4
 7ac:	0007a503          	lw	a0,0(a5)
 7b0:	00478713          	addi	a4,a5,4
 7b4:	00e12023          	sw	a4,0(sp)
 7b8:	cb9ff0ef          	jal	ra,470 <__neorv32_uart_tohex>
 7bc:	f65ff06f          	j	720 <neorv32_uart0_printf+0x11c>
 7c0:	01541663          	bne	s0,s5,7cc <neorv32_uart0_printf+0x1c8>
 7c4:	00d00513          	li	a0,13
 7c8:	dcdff0ef          	jal	ra,594 <neorv32_uart0_putc>
 7cc:	00040513          	mv	a0,s0
 7d0:	00148493          	addi	s1,s1,1
 7d4:	dc1ff0ef          	jal	ra,594 <neorv32_uart0_putc>
 7d8:	ea5ff06f          	j	67c <neorv32_uart0_printf+0x78>

000007dc <neorv32_xip_available>:
 7dc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 7e0:	01e55513          	srli	a0,a0,0x1e
 7e4:	00157513          	andi	a0,a0,1
 7e8:	00008067          	ret

000007ec <neorv32_xip_init>:
 7ec:	00700713          	li	a4,7
 7f0:	00050793          	mv	a5,a0
 7f4:	06a76663          	bltu	a4,a0,860 <__heap_size+0x60>
 7f8:	00c5e733          	or	a4,a1,a2
 7fc:	00100813          	li	a6,1
 800:	00100513          	li	a0,1
 804:	06e86063          	bltu	a6,a4,864 <__heap_size+0x64>
 808:	00179793          	slli	a5,a5,0x1
 80c:	00d69693          	slli	a3,a3,0xd
 810:	00d7e7b3          	or	a5,a5,a3
 814:	00561613          	slli	a2,a2,0x5
 818:	00c7e7b3          	or	a5,a5,a2
 81c:	00459593          	slli	a1,a1,0x4
 820:	00b7e7b3          	or	a5,a5,a1
 824:	f4002023          	sw	zero,-192(zero) # ffffff40 <__crt0_io_space_begin+0x140>
 828:	2017e793          	ori	a5,a5,513
 82c:	f4f02023          	sw	a5,-192(zero) # ffffff40 <__crt0_io_space_begin+0x140>
 830:	f4002423          	sw	zero,-184(zero) # ffffff48 <__crt0_io_space_begin+0x148>
 834:	f4002623          	sw	zero,-180(zero) # ffffff4c <__crt0_io_space_begin+0x14c>
 838:	40000737          	lui	a4,0x40000
 83c:	f4002783          	lw	a5,-192(zero) # ffffff40 <__crt0_io_space_begin+0x140>
 840:	00e7f7b3          	and	a5,a5,a4
 844:	fe079ce3          	bnez	a5,83c <__heap_size+0x3c>
 848:	f4002783          	lw	a5,-192(zero) # ffffff40 <__crt0_io_space_begin+0x140>
 84c:	02000737          	lui	a4,0x2000
 850:	00000513          	li	a0,0
 854:	00e7e7b3          	or	a5,a5,a4
 858:	f4f02023          	sw	a5,-192(zero) # ffffff40 <__crt0_io_space_begin+0x140>
 85c:	00008067          	ret
 860:	00100513          	li	a0,1
 864:	00008067          	ret

00000868 <neorv32_xip_start>:
 868:	fff50713          	addi	a4,a0,-1
 86c:	0ff77613          	zext.b	a2,a4
 870:	00300693          	li	a3,3
 874:	00050793          	mv	a5,a0
 878:	06c6e063          	bltu	a3,a2,8d8 <neorv32_xip_start+0x70>
 87c:	00459693          	slli	a3,a1,0x4
 880:	00100513          	li	a0,1
 884:	04069c63          	bnez	a3,8dc <neorv32_xip_start+0x74>
 888:	f4002683          	lw	a3,-192(zero) # ffffff40 <__crt0_io_space_begin+0x140>
 88c:	ffffe637          	lui	a2,0xffffe
 890:	7ff60613          	addi	a2,a2,2047 # ffffe7ff <__crt0_io_space_begin+0xffffe9ff>
 894:	00c6f6b3          	and	a3,a3,a2
 898:	00b71713          	slli	a4,a4,0xb
 89c:	00d76733          	or	a4,a4,a3
 8a0:	00578793          	addi	a5,a5,5
 8a4:	c3f77713          	andi	a4,a4,-961
 8a8:	00679793          	slli	a5,a5,0x6
 8ac:	00e7e7b3          	or	a5,a5,a4
 8b0:	fe200737          	lui	a4,0xfe200
 8b4:	fff70713          	addi	a4,a4,-1 # fe1fffff <__crt0_io_space_begin+0xfe2001ff>
 8b8:	01c5d593          	srli	a1,a1,0x1c
 8bc:	00e7f7b3          	and	a5,a5,a4
 8c0:	01559593          	slli	a1,a1,0x15
 8c4:	00f5e5b3          	or	a1,a1,a5
 8c8:	4005e593          	ori	a1,a1,1024
 8cc:	f4b02023          	sw	a1,-192(zero) # ffffff40 <__crt0_io_space_begin+0x140>
 8d0:	00000513          	li	a0,0
 8d4:	00008067          	ret
 8d8:	00100513          	li	a0,1
 8dc:	00008067          	ret

000008e0 <neorv32_xip_spi_trans>:
 8e0:	fff50793          	addi	a5,a0,-1
 8e4:	0ff7f793          	zext.b	a5,a5
 8e8:	00700713          	li	a4,7
 8ec:	04f76663          	bltu	a4,a5,938 <neorv32_xip_spi_trans+0x58>
 8f0:	f4002783          	lw	a5,-192(zero) # ffffff40 <__crt0_io_space_begin+0x140>
 8f4:	0005a703          	lw	a4,0(a1)
 8f8:	00651513          	slli	a0,a0,0x6
 8fc:	c3f7f793          	andi	a5,a5,-961
 900:	00f56533          	or	a0,a0,a5
 904:	0045a783          	lw	a5,4(a1)
 908:	f4a02023          	sw	a0,-192(zero) # ffffff40 <__crt0_io_space_begin+0x140>
 90c:	f4e02423          	sw	a4,-184(zero) # ffffff48 <__crt0_io_space_begin+0x148>
 910:	f4f02623          	sw	a5,-180(zero) # ffffff4c <__crt0_io_space_begin+0x14c>
 914:	40000737          	lui	a4,0x40000
 918:	f4002783          	lw	a5,-192(zero) # ffffff40 <__crt0_io_space_begin+0x140>
 91c:	00e7f7b3          	and	a5,a5,a4
 920:	fe079ce3          	bnez	a5,918 <neorv32_xip_spi_trans+0x38>
 924:	f4802783          	lw	a5,-184(zero) # ffffff48 <__crt0_io_space_begin+0x148>
 928:	00000513          	li	a0,0
 92c:	0005a223          	sw	zero,4(a1)
 930:	00f5a023          	sw	a5,0(a1)
 934:	00008067          	ret
 938:	00100513          	li	a0,1
 93c:	00008067          	ret

00000940 <__neorv32_rte_core>:
 940:	fc010113          	addi	sp,sp,-64
 944:	02112e23          	sw	ra,60(sp)
 948:	02512c23          	sw	t0,56(sp)
 94c:	02612a23          	sw	t1,52(sp)
 950:	02712823          	sw	t2,48(sp)
 954:	02a12623          	sw	a0,44(sp)
 958:	02b12423          	sw	a1,40(sp)
 95c:	02c12223          	sw	a2,36(sp)
 960:	02d12023          	sw	a3,32(sp)
 964:	00e12e23          	sw	a4,28(sp)
 968:	00f12c23          	sw	a5,24(sp)
 96c:	01012a23          	sw	a6,20(sp)
 970:	01112823          	sw	a7,16(sp)
 974:	01c12623          	sw	t3,12(sp)
 978:	01d12423          	sw	t4,8(sp)
 97c:	01e12223          	sw	t5,4(sp)
 980:	01f12023          	sw	t6,0(sp)
 984:	34102773          	csrr	a4,mepc
 988:	34071073          	csrw	mscratch,a4
 98c:	342027f3          	csrr	a5,mcause
 990:	0407c663          	bltz	a5,9dc <__neorv32_rte_core+0x9c>
 994:	00075683          	lhu	a3,0(a4) # 40000000 <__crt0_copy_data_src_begin+0x3fffeca4>
 998:	00300593          	li	a1,3
 99c:	0036f693          	andi	a3,a3,3
 9a0:	00270613          	addi	a2,a4,2
 9a4:	00b69463          	bne	a3,a1,9ac <__neorv32_rte_core+0x6c>
 9a8:	00470613          	addi	a2,a4,4
 9ac:	34161073          	csrw	mepc,a2
 9b0:	00b00713          	li	a4,11
 9b4:	00f77863          	bgeu	a4,a5,9c4 <__neorv32_rte_core+0x84>
 9b8:	000017b7          	lui	a5,0x1
 9bc:	be878793          	addi	a5,a5,-1048 # be8 <__neorv32_rte_debug_exc_handler>
 9c0:	0500006f          	j	a10 <__neorv32_rte_core+0xd0>
 9c4:	00001737          	lui	a4,0x1
 9c8:	00279793          	slli	a5,a5,0x2
 9cc:	0b070713          	addi	a4,a4,176 # 10b0 <numbers.1+0xc>
 9d0:	00e787b3          	add	a5,a5,a4
 9d4:	0007a783          	lw	a5,0(a5)
 9d8:	00078067          	jr	a5
 9dc:	80000737          	lui	a4,0x80000
 9e0:	ffd74713          	xori	a4,a4,-3
 9e4:	00e787b3          	add	a5,a5,a4
 9e8:	01c00713          	li	a4,28
 9ec:	fcf766e3          	bltu	a4,a5,9b8 <__neorv32_rte_core+0x78>
 9f0:	00001737          	lui	a4,0x1
 9f4:	00279793          	slli	a5,a5,0x2
 9f8:	0e070713          	addi	a4,a4,224 # 10e0 <numbers.1+0x3c>
 9fc:	00e787b3          	add	a5,a5,a4
 a00:	0007a783          	lw	a5,0(a5)
 a04:	00078067          	jr	a5
 a08:	800007b7          	lui	a5,0x80000
 a0c:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 a10:	000780e7          	jalr	a5
 a14:	03c12083          	lw	ra,60(sp)
 a18:	03812283          	lw	t0,56(sp)
 a1c:	03412303          	lw	t1,52(sp)
 a20:	03012383          	lw	t2,48(sp)
 a24:	02c12503          	lw	a0,44(sp)
 a28:	02812583          	lw	a1,40(sp)
 a2c:	02412603          	lw	a2,36(sp)
 a30:	02012683          	lw	a3,32(sp)
 a34:	01c12703          	lw	a4,28(sp)
 a38:	01812783          	lw	a5,24(sp)
 a3c:	01412803          	lw	a6,20(sp)
 a40:	01012883          	lw	a7,16(sp)
 a44:	00c12e03          	lw	t3,12(sp)
 a48:	00812e83          	lw	t4,8(sp)
 a4c:	00412f03          	lw	t5,4(sp)
 a50:	00012f83          	lw	t6,0(sp)
 a54:	04010113          	addi	sp,sp,64
 a58:	30200073          	mret
 a5c:	800007b7          	lui	a5,0x80000
 a60:	0047a783          	lw	a5,4(a5) # 80000004 <__crt0_io_space_begin+0x80000204>
 a64:	fadff06f          	j	a10 <__neorv32_rte_core+0xd0>
 a68:	800007b7          	lui	a5,0x80000
 a6c:	0087a783          	lw	a5,8(a5) # 80000008 <__crt0_io_space_begin+0x80000208>
 a70:	fa1ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 a74:	800007b7          	lui	a5,0x80000
 a78:	00c7a783          	lw	a5,12(a5) # 8000000c <__crt0_io_space_begin+0x8000020c>
 a7c:	f95ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 a80:	800007b7          	lui	a5,0x80000
 a84:	0107a783          	lw	a5,16(a5) # 80000010 <__crt0_io_space_begin+0x80000210>
 a88:	f89ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 a8c:	800007b7          	lui	a5,0x80000
 a90:	0147a783          	lw	a5,20(a5) # 80000014 <__crt0_io_space_begin+0x80000214>
 a94:	f7dff06f          	j	a10 <__neorv32_rte_core+0xd0>
 a98:	800007b7          	lui	a5,0x80000
 a9c:	0187a783          	lw	a5,24(a5) # 80000018 <__crt0_io_space_begin+0x80000218>
 aa0:	f71ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 aa4:	800007b7          	lui	a5,0x80000
 aa8:	01c7a783          	lw	a5,28(a5) # 8000001c <__crt0_io_space_begin+0x8000021c>
 aac:	f65ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 ab0:	800007b7          	lui	a5,0x80000
 ab4:	0207a783          	lw	a5,32(a5) # 80000020 <__crt0_io_space_begin+0x80000220>
 ab8:	f59ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 abc:	800007b7          	lui	a5,0x80000
 ac0:	0247a783          	lw	a5,36(a5) # 80000024 <__crt0_io_space_begin+0x80000224>
 ac4:	f4dff06f          	j	a10 <__neorv32_rte_core+0xd0>
 ac8:	800007b7          	lui	a5,0x80000
 acc:	0287a783          	lw	a5,40(a5) # 80000028 <__crt0_io_space_begin+0x80000228>
 ad0:	f41ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 ad4:	800007b7          	lui	a5,0x80000
 ad8:	02c7a783          	lw	a5,44(a5) # 8000002c <__crt0_io_space_begin+0x8000022c>
 adc:	f35ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 ae0:	800007b7          	lui	a5,0x80000
 ae4:	0307a783          	lw	a5,48(a5) # 80000030 <__crt0_io_space_begin+0x80000230>
 ae8:	f29ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 aec:	800007b7          	lui	a5,0x80000
 af0:	0347a783          	lw	a5,52(a5) # 80000034 <__crt0_io_space_begin+0x80000234>
 af4:	f1dff06f          	j	a10 <__neorv32_rte_core+0xd0>
 af8:	800007b7          	lui	a5,0x80000
 afc:	0387a783          	lw	a5,56(a5) # 80000038 <__crt0_io_space_begin+0x80000238>
 b00:	f11ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b04:	800007b7          	lui	a5,0x80000
 b08:	03c7a783          	lw	a5,60(a5) # 8000003c <__crt0_io_space_begin+0x8000023c>
 b0c:	f05ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b10:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 b14:	efdff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b18:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 b1c:	ef5ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b20:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 b24:	eedff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b28:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 b2c:	ee5ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b30:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 b34:	eddff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b38:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 b3c:	ed5ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b40:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 b44:	ecdff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b48:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 b4c:	ec5ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b50:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 b54:	ebdff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b58:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 b5c:	eb5ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b60:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 b64:	eadff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b68:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 b6c:	ea5ff06f          	j	a10 <__neorv32_rte_core+0xd0>
 b70:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 b74:	e9dff06f          	j	a10 <__neorv32_rte_core+0xd0>

00000b78 <__neorv32_rte_print_hex_word>:
 b78:	fe010113          	addi	sp,sp,-32
 b7c:	01212823          	sw	s2,16(sp)
 b80:	00050913          	mv	s2,a0
 b84:	00001537          	lui	a0,0x1
 b88:	00912a23          	sw	s1,20(sp)
 b8c:	15450513          	addi	a0,a0,340 # 1154 <numbers.1+0xb0>
 b90:	000014b7          	lui	s1,0x1
 b94:	00812c23          	sw	s0,24(sp)
 b98:	01312623          	sw	s3,12(sp)
 b9c:	00112e23          	sw	ra,28(sp)
 ba0:	01c00413          	li	s0,28
 ba4:	a09ff0ef          	jal	ra,5ac <neorv32_uart0_print>
 ba8:	34c48493          	addi	s1,s1,844 # 134c <hex_symbols.0>
 bac:	ffc00993          	li	s3,-4
 bb0:	008957b3          	srl	a5,s2,s0
 bb4:	00f7f793          	andi	a5,a5,15
 bb8:	00f487b3          	add	a5,s1,a5
 bbc:	0007c503          	lbu	a0,0(a5)
 bc0:	ffc40413          	addi	s0,s0,-4
 bc4:	9d1ff0ef          	jal	ra,594 <neorv32_uart0_putc>
 bc8:	ff3414e3          	bne	s0,s3,bb0 <__neorv32_rte_print_hex_word+0x38>
 bcc:	01c12083          	lw	ra,28(sp)
 bd0:	01812403          	lw	s0,24(sp)
 bd4:	01412483          	lw	s1,20(sp)
 bd8:	01012903          	lw	s2,16(sp)
 bdc:	00c12983          	lw	s3,12(sp)
 be0:	02010113          	addi	sp,sp,32
 be4:	00008067          	ret

00000be8 <__neorv32_rte_debug_exc_handler>:
 be8:	ff010113          	addi	sp,sp,-16
 bec:	00112623          	sw	ra,12(sp)
 bf0:	00812423          	sw	s0,8(sp)
 bf4:	00912223          	sw	s1,4(sp)
 bf8:	8e1ff0ef          	jal	ra,4d8 <neorv32_uart0_available>
 bfc:	1a050e63          	beqz	a0,db8 <__neorv32_rte_debug_exc_handler+0x1d0>
 c00:	00001537          	lui	a0,0x1
 c04:	15850513          	addi	a0,a0,344 # 1158 <numbers.1+0xb4>
 c08:	9a5ff0ef          	jal	ra,5ac <neorv32_uart0_print>
 c0c:	34202473          	csrr	s0,mcause
 c10:	00900713          	li	a4,9
 c14:	00f47793          	andi	a5,s0,15
 c18:	03078493          	addi	s1,a5,48
 c1c:	00f77463          	bgeu	a4,a5,c24 <__neorv32_rte_debug_exc_handler+0x3c>
 c20:	05778493          	addi	s1,a5,87
 c24:	00b00793          	li	a5,11
 c28:	0087ee63          	bltu	a5,s0,c44 <__neorv32_rte_debug_exc_handler+0x5c>
 c2c:	00001737          	lui	a4,0x1
 c30:	00241793          	slli	a5,s0,0x2
 c34:	31c70713          	addi	a4,a4,796 # 131c <numbers.1+0x278>
 c38:	00e787b3          	add	a5,a5,a4
 c3c:	0007a783          	lw	a5,0(a5)
 c40:	00078067          	jr	a5
 c44:	800007b7          	lui	a5,0x80000
 c48:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 c4c:	14e40463          	beq	s0,a4,d94 <__neorv32_rte_debug_exc_handler+0x1ac>
 c50:	02876663          	bltu	a4,s0,c7c <__neorv32_rte_debug_exc_handler+0x94>
 c54:	00378713          	addi	a4,a5,3
 c58:	12e40263          	beq	s0,a4,d7c <__neorv32_rte_debug_exc_handler+0x194>
 c5c:	00778793          	addi	a5,a5,7
 c60:	12f40463          	beq	s0,a5,d88 <__neorv32_rte_debug_exc_handler+0x1a0>
 c64:	00001537          	lui	a0,0x1
 c68:	2b850513          	addi	a0,a0,696 # 12b8 <numbers.1+0x214>
 c6c:	941ff0ef          	jal	ra,5ac <neorv32_uart0_print>
 c70:	00040513          	mv	a0,s0
 c74:	f05ff0ef          	jal	ra,b78 <__neorv32_rte_print_hex_word>
 c78:	0280006f          	j	ca0 <__neorv32_rte_debug_exc_handler+0xb8>
 c7c:	ff07c793          	xori	a5,a5,-16
 c80:	00f407b3          	add	a5,s0,a5
 c84:	00f00713          	li	a4,15
 c88:	fcf76ee3          	bltu	a4,a5,c64 <__neorv32_rte_debug_exc_handler+0x7c>
 c8c:	00001537          	lui	a0,0x1
 c90:	2a850513          	addi	a0,a0,680 # 12a8 <numbers.1+0x204>
 c94:	919ff0ef          	jal	ra,5ac <neorv32_uart0_print>
 c98:	00048513          	mv	a0,s1
 c9c:	8f9ff0ef          	jal	ra,594 <neorv32_uart0_putc>
 ca0:	00001537          	lui	a0,0x1
 ca4:	2fc50513          	addi	a0,a0,764 # 12fc <numbers.1+0x258>
 ca8:	905ff0ef          	jal	ra,5ac <neorv32_uart0_print>
 cac:	34002573          	csrr	a0,mscratch
 cb0:	ec9ff0ef          	jal	ra,b78 <__neorv32_rte_print_hex_word>
 cb4:	00001537          	lui	a0,0x1
 cb8:	30450513          	addi	a0,a0,772 # 1304 <numbers.1+0x260>
 cbc:	8f1ff0ef          	jal	ra,5ac <neorv32_uart0_print>
 cc0:	34302573          	csrr	a0,mtval
 cc4:	eb5ff0ef          	jal	ra,b78 <__neorv32_rte_print_hex_word>
 cc8:	00812403          	lw	s0,8(sp)
 ccc:	00c12083          	lw	ra,12(sp)
 cd0:	00412483          	lw	s1,4(sp)
 cd4:	00001537          	lui	a0,0x1
 cd8:	31050513          	addi	a0,a0,784 # 1310 <numbers.1+0x26c>
 cdc:	01010113          	addi	sp,sp,16
 ce0:	8cdff06f          	j	5ac <neorv32_uart0_print>
 ce4:	00001537          	lui	a0,0x1
 ce8:	16050513          	addi	a0,a0,352 # 1160 <numbers.1+0xbc>
 cec:	8c1ff0ef          	jal	ra,5ac <neorv32_uart0_print>
 cf0:	fb1ff06f          	j	ca0 <__neorv32_rte_debug_exc_handler+0xb8>
 cf4:	00001537          	lui	a0,0x1
 cf8:	18050513          	addi	a0,a0,384 # 1180 <numbers.1+0xdc>
 cfc:	8b1ff0ef          	jal	ra,5ac <neorv32_uart0_print>
 d00:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 d04:	0a07d463          	bgez	a5,dac <__neorv32_rte_debug_exc_handler+0x1c4>
 d08:	0017f793          	andi	a5,a5,1
 d0c:	08078a63          	beqz	a5,da0 <__neorv32_rte_debug_exc_handler+0x1b8>
 d10:	00001537          	lui	a0,0x1
 d14:	2d050513          	addi	a0,a0,720 # 12d0 <numbers.1+0x22c>
 d18:	fd5ff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 d1c:	00001537          	lui	a0,0x1
 d20:	19c50513          	addi	a0,a0,412 # 119c <numbers.1+0xf8>
 d24:	fc9ff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 d28:	00001537          	lui	a0,0x1
 d2c:	1b050513          	addi	a0,a0,432 # 11b0 <numbers.1+0x10c>
 d30:	fbdff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 d34:	00001537          	lui	a0,0x1
 d38:	1bc50513          	addi	a0,a0,444 # 11bc <numbers.1+0x118>
 d3c:	fb1ff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 d40:	00001537          	lui	a0,0x1
 d44:	1d450513          	addi	a0,a0,468 # 11d4 <numbers.1+0x130>
 d48:	fb5ff06f          	j	cfc <__neorv32_rte_debug_exc_handler+0x114>
 d4c:	00001537          	lui	a0,0x1
 d50:	1e850513          	addi	a0,a0,488 # 11e8 <numbers.1+0x144>
 d54:	f99ff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 d58:	00001537          	lui	a0,0x1
 d5c:	20450513          	addi	a0,a0,516 # 1204 <numbers.1+0x160>
 d60:	f9dff06f          	j	cfc <__neorv32_rte_debug_exc_handler+0x114>
 d64:	00001537          	lui	a0,0x1
 d68:	21850513          	addi	a0,a0,536 # 1218 <numbers.1+0x174>
 d6c:	f81ff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 d70:	00001537          	lui	a0,0x1
 d74:	23850513          	addi	a0,a0,568 # 1238 <numbers.1+0x194>
 d78:	f75ff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 d7c:	00001537          	lui	a0,0x1
 d80:	25850513          	addi	a0,a0,600 # 1258 <numbers.1+0x1b4>
 d84:	f69ff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 d88:	00001537          	lui	a0,0x1
 d8c:	27450513          	addi	a0,a0,628 # 1274 <numbers.1+0x1d0>
 d90:	f5dff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 d94:	00001537          	lui	a0,0x1
 d98:	28c50513          	addi	a0,a0,652 # 128c <numbers.1+0x1e8>
 d9c:	f51ff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 da0:	00001537          	lui	a0,0x1
 da4:	2e050513          	addi	a0,a0,736 # 12e0 <numbers.1+0x23c>
 da8:	f45ff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 dac:	00001537          	lui	a0,0x1
 db0:	2f050513          	addi	a0,a0,752 # 12f0 <numbers.1+0x24c>
 db4:	f39ff06f          	j	cec <__neorv32_rte_debug_exc_handler+0x104>
 db8:	00c12083          	lw	ra,12(sp)
 dbc:	00812403          	lw	s0,8(sp)
 dc0:	00412483          	lw	s1,4(sp)
 dc4:	01010113          	addi	sp,sp,16
 dc8:	00008067          	ret

00000dcc <neorv32_rte_exception_uninstall>:
 dcc:	01f00793          	li	a5,31
 dd0:	02a7e463          	bltu	a5,a0,df8 <neorv32_rte_exception_uninstall+0x2c>
 dd4:	800007b7          	lui	a5,0x80000
 dd8:	00251513          	slli	a0,a0,0x2
 ddc:	00078793          	mv	a5,a5
 de0:	00001737          	lui	a4,0x1
 de4:	00a787b3          	add	a5,a5,a0
 de8:	be870713          	addi	a4,a4,-1048 # be8 <__neorv32_rte_debug_exc_handler>
 dec:	00e7a023          	sw	a4,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 df0:	00000513          	li	a0,0
 df4:	00008067          	ret
 df8:	00100513          	li	a0,1
 dfc:	00008067          	ret

00000e00 <neorv32_rte_setup>:
 e00:	ff010113          	addi	sp,sp,-16
 e04:	000017b7          	lui	a5,0x1
 e08:	00112623          	sw	ra,12(sp)
 e0c:	00812423          	sw	s0,8(sp)
 e10:	00912223          	sw	s1,4(sp)
 e14:	94078793          	addi	a5,a5,-1728 # 940 <__neorv32_rte_core>
 e18:	30579073          	csrw	mtvec,a5
 e1c:	00000413          	li	s0,0
 e20:	01d00493          	li	s1,29
 e24:	00040513          	mv	a0,s0
 e28:	00140413          	addi	s0,s0,1
 e2c:	0ff47413          	zext.b	s0,s0
 e30:	f9dff0ef          	jal	ra,dcc <neorv32_rte_exception_uninstall>
 e34:	fe9418e3          	bne	s0,s1,e24 <neorv32_rte_setup+0x24>
 e38:	00c12083          	lw	ra,12(sp)
 e3c:	00812403          	lw	s0,8(sp)
 e40:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 e44:	00412483          	lw	s1,4(sp)
 e48:	01010113          	addi	sp,sp,16
 e4c:	00008067          	ret

00000e50 <__divsi3>:
 e50:	06054063          	bltz	a0,eb0 <__umodsi3+0x10>
 e54:	0605c663          	bltz	a1,ec0 <__umodsi3+0x20>

00000e58 <__hidden___udivsi3>:
 e58:	00058613          	mv	a2,a1
 e5c:	00050593          	mv	a1,a0
 e60:	fff00513          	li	a0,-1
 e64:	02060c63          	beqz	a2,e9c <__hidden___udivsi3+0x44>
 e68:	00100693          	li	a3,1
 e6c:	00b67a63          	bgeu	a2,a1,e80 <__hidden___udivsi3+0x28>
 e70:	00c05863          	blez	a2,e80 <__hidden___udivsi3+0x28>
 e74:	00161613          	slli	a2,a2,0x1
 e78:	00169693          	slli	a3,a3,0x1
 e7c:	feb66ae3          	bltu	a2,a1,e70 <__hidden___udivsi3+0x18>
 e80:	00000513          	li	a0,0
 e84:	00c5e663          	bltu	a1,a2,e90 <__hidden___udivsi3+0x38>
 e88:	40c585b3          	sub	a1,a1,a2
 e8c:	00d56533          	or	a0,a0,a3
 e90:	0016d693          	srli	a3,a3,0x1
 e94:	00165613          	srli	a2,a2,0x1
 e98:	fe0696e3          	bnez	a3,e84 <__hidden___udivsi3+0x2c>
 e9c:	00008067          	ret

00000ea0 <__umodsi3>:
 ea0:	00008293          	mv	t0,ra
 ea4:	fb5ff0ef          	jal	ra,e58 <__hidden___udivsi3>
 ea8:	00058513          	mv	a0,a1
 eac:	00028067          	jr	t0
 eb0:	40a00533          	neg	a0,a0
 eb4:	00b04863          	bgtz	a1,ec4 <__umodsi3+0x24>
 eb8:	40b005b3          	neg	a1,a1
 ebc:	f9dff06f          	j	e58 <__hidden___udivsi3>
 ec0:	40b005b3          	neg	a1,a1
 ec4:	00008293          	mv	t0,ra
 ec8:	f91ff0ef          	jal	ra,e58 <__hidden___udivsi3>
 ecc:	40a00533          	neg	a0,a0
 ed0:	00028067          	jr	t0

00000ed4 <__modsi3>:
 ed4:	00008293          	mv	t0,ra
 ed8:	0005ca63          	bltz	a1,eec <__modsi3+0x18>
 edc:	00054c63          	bltz	a0,ef4 <__modsi3+0x20>
 ee0:	f79ff0ef          	jal	ra,e58 <__hidden___udivsi3>
 ee4:	00058513          	mv	a0,a1
 ee8:	00028067          	jr	t0
 eec:	40b005b3          	neg	a1,a1
 ef0:	fe0558e3          	bgez	a0,ee0 <__modsi3+0xc>
 ef4:	40a00533          	neg	a0,a0
 ef8:	f61ff0ef          	jal	ra,e58 <__hidden___udivsi3>
 efc:	40b00533          	neg	a0,a1
 f00:	00028067          	jr	t0
