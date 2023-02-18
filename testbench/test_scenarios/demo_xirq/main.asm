
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
  bc:	06c58593          	addi	a1,a1,108 # 1124 <__crt0_copy_data_src_begin>
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
  f0:	8f418793          	addi	a5,gp,-1804 # 800000f4 <__BSS_END__>

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
 178:	ff010113          	addi	sp,sp,-16
 17c:	00112623          	sw	ra,12(sp)
 180:	00812423          	sw	s0,8(sp)
 184:	361000ef          	jal	ra,ce4 <neorv32_rte_setup>
 188:	00005537          	lui	a0,0x5
 18c:	00000613          	li	a2,0
 190:	00000593          	li	a1,0
 194:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x39dc>
 198:	344000ef          	jal	ra,4dc <neorv32_uart0_setup>
 19c:	130000ef          	jal	ra,2cc <neorv32_xirq_available>
 1a0:	02051263          	bnez	a0,1c4 <main+0x4c>
 1a4:	00001537          	lui	a0,0x1
 1a8:	e0850513          	addi	a0,a0,-504 # e08 <__etext+0x10>
 1ac:	44c000ef          	jal	ra,5f8 <neorv32_uart0_printf>
 1b0:	00c12083          	lw	ra,12(sp)
 1b4:	00812403          	lw	s0,8(sp)
 1b8:	00100513          	li	a0,1
 1bc:	01010113          	addi	sp,sp,16
 1c0:	00008067          	ret
 1c4:	118000ef          	jal	ra,2dc <neorv32_xirq_setup>
 1c8:	00050863          	beqz	a0,1d8 <main+0x60>
 1cc:	00001537          	lui	a0,0x1
 1d0:	e2050513          	addi	a0,a0,-480 # e20 <__etext+0x28>
 1d4:	fd9ff06f          	j	1ac <main+0x34>
 1d8:	24800593          	li	a1,584
 1dc:	138000ef          	jal	ra,314 <neorv32_xirq_install>
 1e0:	00050413          	mv	s0,a0
 1e4:	25400593          	li	a1,596
 1e8:	00100513          	li	a0,1
 1ec:	128000ef          	jal	ra,314 <neorv32_xirq_install>
 1f0:	00a40433          	add	s0,s0,a0
 1f4:	26000593          	li	a1,608
 1f8:	00200513          	li	a0,2
 1fc:	118000ef          	jal	ra,314 <neorv32_xirq_install>
 200:	00a40433          	add	s0,s0,a0
 204:	26c00593          	li	a1,620
 208:	00300513          	li	a0,3
 20c:	108000ef          	jal	ra,314 <neorv32_xirq_install>
 210:	00a40433          	add	s0,s0,a0
 214:	00040863          	beqz	s0,224 <main+0xac>
 218:	00001537          	lui	a0,0x1
 21c:	e3c50513          	addi	a0,a0,-452 # e3c <__etext+0x44>
 220:	f8dff06f          	j	1ac <main+0x34>
 224:	0e8000ef          	jal	ra,30c <neorv32_xirq_global_enable>
 228:	30046073          	csrsi	mstatus,8
 22c:	00f00513          	li	a0,15
 230:	00000593          	li	a1,0
 234:	301000ef          	jal	ra,d34 <neorv32_gpio_port_set>
 238:	00000513          	li	a0,0
 23c:	00000593          	li	a1,0
 240:	2f5000ef          	jal	ra,d34 <neorv32_gpio_port_set>
 244:	0000006f          	j	244 <main+0xcc>

00000248 <xirq_handler_ch0>:
 248:	00001537          	lui	a0,0x1
 24c:	df850513          	addi	a0,a0,-520 # df8 <__etext>
 250:	3a80006f          	j	5f8 <neorv32_uart0_printf>

00000254 <xirq_handler_ch1>:
 254:	00001537          	lui	a0,0x1
 258:	dfc50513          	addi	a0,a0,-516 # dfc <__etext+0x4>
 25c:	39c0006f          	j	5f8 <neorv32_uart0_printf>

00000260 <xirq_handler_ch2>:
 260:	00001537          	lui	a0,0x1
 264:	e0050513          	addi	a0,a0,-512 # e00 <__etext+0x8>
 268:	3900006f          	j	5f8 <neorv32_uart0_printf>

0000026c <xirq_handler_ch3>:
 26c:	00001537          	lui	a0,0x1
 270:	e0450513          	addi	a0,a0,-508 # e04 <__etext+0xc>
 274:	3840006f          	j	5f8 <neorv32_uart0_printf>
 278:	0000                	.2byte	0x0
 27a:	0000                	.2byte	0x0
 27c:	0000                	.2byte	0x0
 27e:	0000                	.2byte	0x0

00000280 <__neorv32_xirq_core>:
 280:	f8000693          	li	a3,-128
 284:	0086a703          	lw	a4,8(a3)
 288:	00100793          	li	a5,1
 28c:	00e797b3          	sll	a5,a5,a4
 290:	fff7c793          	not	a5,a5
 294:	00f6a223          	sw	a5,4(a3)
 298:	ff0007b7          	lui	a5,0xff000
 29c:	fff78793          	addi	a5,a5,-1 # feffffff <__crt0_io_space_begin+0xff0001ff>
 2a0:	34479073          	csrw	mip,a5
 2a4:	800007b7          	lui	a5,0x80000
 2a8:	00271713          	slli	a4,a4,0x2
 2ac:	00078793          	mv	a5,a5
 2b0:	0006a423          	sw	zero,8(a3)
 2b4:	00e787b3          	add	a5,a5,a4
 2b8:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 2bc:	00078067          	jr	a5
 2c0:	0000                	.2byte	0x0
 2c2:	0000                	.2byte	0x0

000002c4 <__neorv32_xirq_dummy_handler>:
 2c4:	00000013          	nop
 2c8:	00008067          	ret

000002cc <neorv32_xirq_available>:
 2cc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 2d0:	01c55513          	srli	a0,a0,0x1c
 2d4:	00157513          	andi	a0,a0,1
 2d8:	00008067          	ret

000002dc <neorv32_xirq_setup>:
 2dc:	800007b7          	lui	a5,0x80000
 2e0:	f8002023          	sw	zero,-128(zero) # ffffff80 <__crt0_io_space_begin+0x180>
 2e4:	00078793          	mv	a5,a5
 2e8:	f8002223          	sw	zero,-124(zero) # ffffff84 <__crt0_io_space_begin+0x184>
 2ec:	08078693          	addi	a3,a5,128 # 80000080 <__crt0_io_space_begin+0x80000280>
 2f0:	2c400713          	li	a4,708
 2f4:	00e7a023          	sw	a4,0(a5)
 2f8:	00478793          	addi	a5,a5,4
 2fc:	fed79ce3          	bne	a5,a3,2f4 <neorv32_xirq_setup+0x18>
 300:	28000593          	li	a1,640
 304:	01500513          	li	a0,21
 308:	17d0006f          	j	c84 <neorv32_rte_exception_install>

0000030c <neorv32_xirq_global_enable>:
 30c:	01800513          	li	a0,24
 310:	4e80006f          	j	7f8 <neorv32_cpu_irq_enable>

00000314 <neorv32_xirq_install>:
 314:	01f00793          	li	a5,31
 318:	02a7ee63          	bltu	a5,a0,354 <neorv32_xirq_install+0x40>
 31c:	800007b7          	lui	a5,0x80000
 320:	00251713          	slli	a4,a0,0x2
 324:	00078793          	mv	a5,a5
 328:	00e787b3          	add	a5,a5,a4
 32c:	00b7a023          	sw	a1,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 330:	00100793          	li	a5,1
 334:	00a797b3          	sll	a5,a5,a0
 338:	fff7c713          	not	a4,a5
 33c:	f8e02223          	sw	a4,-124(zero) # ffffff84 <__crt0_io_space_begin+0x184>
 340:	f8002703          	lw	a4,-128(zero) # ffffff80 <__crt0_io_space_begin+0x180>
 344:	00000513          	li	a0,0
 348:	00f767b3          	or	a5,a4,a5
 34c:	f8f02023          	sw	a5,-128(zero) # ffffff80 <__crt0_io_space_begin+0x180>
 350:	00008067          	ret
 354:	00100513          	li	a0,1
 358:	00008067          	ret

0000035c <__neorv32_uart_itoa>:
 35c:	fd010113          	addi	sp,sp,-48
 360:	02812423          	sw	s0,40(sp)
 364:	02912223          	sw	s1,36(sp)
 368:	03212023          	sw	s2,32(sp)
 36c:	01312e23          	sw	s3,28(sp)
 370:	01412c23          	sw	s4,24(sp)
 374:	02112623          	sw	ra,44(sp)
 378:	01512a23          	sw	s5,20(sp)
 37c:	00001a37          	lui	s4,0x1
 380:	00050493          	mv	s1,a0
 384:	00058413          	mv	s0,a1
 388:	00058523          	sb	zero,10(a1)
 38c:	00000993          	li	s3,0
 390:	00410913          	addi	s2,sp,4
 394:	e6ca0a13          	addi	s4,s4,-404 # e6c <numbers.1>
 398:	00a00593          	li	a1,10
 39c:	00048513          	mv	a0,s1
 3a0:	1f5000ef          	jal	ra,d94 <__umodsi3>
 3a4:	00aa0533          	add	a0,s4,a0
 3a8:	00054783          	lbu	a5,0(a0)
 3ac:	01390ab3          	add	s5,s2,s3
 3b0:	00048513          	mv	a0,s1
 3b4:	00fa8023          	sb	a5,0(s5)
 3b8:	00a00593          	li	a1,10
 3bc:	191000ef          	jal	ra,d4c <__hidden___udivsi3>
 3c0:	00198993          	addi	s3,s3,1
 3c4:	00a00793          	li	a5,10
 3c8:	00050493          	mv	s1,a0
 3cc:	fcf996e3          	bne	s3,a5,398 <__neorv32_uart_itoa+0x3c>
 3d0:	00090693          	mv	a3,s2
 3d4:	00900713          	li	a4,9
 3d8:	03000613          	li	a2,48
 3dc:	0096c583          	lbu	a1,9(a3)
 3e0:	00070793          	mv	a5,a4
 3e4:	fff70713          	addi	a4,a4,-1
 3e8:	01071713          	slli	a4,a4,0x10
 3ec:	01075713          	srli	a4,a4,0x10
 3f0:	00c59a63          	bne	a1,a2,404 <__neorv32_uart_itoa+0xa8>
 3f4:	000684a3          	sb	zero,9(a3)
 3f8:	fff68693          	addi	a3,a3,-1
 3fc:	fe0710e3          	bnez	a4,3dc <__neorv32_uart_itoa+0x80>
 400:	00000793          	li	a5,0
 404:	00f907b3          	add	a5,s2,a5
 408:	00000713          	li	a4,0
 40c:	0007c683          	lbu	a3,0(a5)
 410:	00068c63          	beqz	a3,428 <__neorv32_uart_itoa+0xcc>
 414:	00170613          	addi	a2,a4,1
 418:	00e40733          	add	a4,s0,a4
 41c:	00d70023          	sb	a3,0(a4)
 420:	01061713          	slli	a4,a2,0x10
 424:	01075713          	srli	a4,a4,0x10
 428:	fff78693          	addi	a3,a5,-1
 42c:	02f91863          	bne	s2,a5,45c <__neorv32_uart_itoa+0x100>
 430:	00e40433          	add	s0,s0,a4
 434:	00040023          	sb	zero,0(s0)
 438:	02c12083          	lw	ra,44(sp)
 43c:	02812403          	lw	s0,40(sp)
 440:	02412483          	lw	s1,36(sp)
 444:	02012903          	lw	s2,32(sp)
 448:	01c12983          	lw	s3,28(sp)
 44c:	01812a03          	lw	s4,24(sp)
 450:	01412a83          	lw	s5,20(sp)
 454:	03010113          	addi	sp,sp,48
 458:	00008067          	ret
 45c:	00068793          	mv	a5,a3
 460:	fadff06f          	j	40c <__neorv32_uart_itoa+0xb0>

00000464 <__neorv32_uart_tohex>:
 464:	00001637          	lui	a2,0x1
 468:	00758693          	addi	a3,a1,7
 46c:	00000713          	li	a4,0
 470:	e5860613          	addi	a2,a2,-424 # e58 <symbols.0>
 474:	02000813          	li	a6,32
 478:	00e557b3          	srl	a5,a0,a4
 47c:	00f7f793          	andi	a5,a5,15
 480:	00f607b3          	add	a5,a2,a5
 484:	0007c783          	lbu	a5,0(a5)
 488:	00470713          	addi	a4,a4,4
 48c:	fff68693          	addi	a3,a3,-1
 490:	00f680a3          	sb	a5,1(a3)
 494:	ff0712e3          	bne	a4,a6,478 <__neorv32_uart_tohex+0x14>
 498:	00058423          	sb	zero,8(a1)
 49c:	00008067          	ret

000004a0 <__neorv32_uart_touppercase.constprop.0>:
 4a0:	00b50693          	addi	a3,a0,11
 4a4:	01900613          	li	a2,25
 4a8:	00054783          	lbu	a5,0(a0)
 4ac:	f9f78713          	addi	a4,a5,-97
 4b0:	0ff77713          	zext.b	a4,a4
 4b4:	00e66663          	bltu	a2,a4,4c0 <__neorv32_uart_touppercase.constprop.0+0x20>
 4b8:	fe078793          	addi	a5,a5,-32
 4bc:	00f50023          	sb	a5,0(a0)
 4c0:	00150513          	addi	a0,a0,1
 4c4:	fea692e3          	bne	a3,a0,4a8 <__neorv32_uart_touppercase.constprop.0+0x8>
 4c8:	00008067          	ret

000004cc <neorv32_uart0_available>:
 4cc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 4d0:	01255513          	srli	a0,a0,0x12
 4d4:	00157513          	andi	a0,a0,1
 4d8:	00008067          	ret

000004dc <neorv32_uart0_setup>:
 4dc:	ff010113          	addi	sp,sp,-16
 4e0:	00812423          	sw	s0,8(sp)
 4e4:	00912223          	sw	s1,4(sp)
 4e8:	00112623          	sw	ra,12(sp)
 4ec:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 4f0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 4f4:	00058413          	mv	s0,a1
 4f8:	00151593          	slli	a1,a0,0x1
 4fc:	00078513          	mv	a0,a5
 500:	00060493          	mv	s1,a2
 504:	049000ef          	jal	ra,d4c <__hidden___udivsi3>
 508:	01051513          	slli	a0,a0,0x10
 50c:	000017b7          	lui	a5,0x1
 510:	01055513          	srli	a0,a0,0x10
 514:	00000713          	li	a4,0
 518:	ffe78793          	addi	a5,a5,-2 # ffe <numbers.1+0x192>
 51c:	04a7e463          	bltu	a5,a0,564 <neorv32_uart0_setup+0x88>
 520:	0034f493          	andi	s1,s1,3
 524:	01449493          	slli	s1,s1,0x14
 528:	00347413          	andi	s0,s0,3
 52c:	fff50793          	addi	a5,a0,-1
 530:	0097e7b3          	or	a5,a5,s1
 534:	01641413          	slli	s0,s0,0x16
 538:	0087e7b3          	or	a5,a5,s0
 53c:	01871713          	slli	a4,a4,0x18
 540:	00c12083          	lw	ra,12(sp)
 544:	00812403          	lw	s0,8(sp)
 548:	00e7e7b3          	or	a5,a5,a4
 54c:	10000737          	lui	a4,0x10000
 550:	00e7e7b3          	or	a5,a5,a4
 554:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 558:	00412483          	lw	s1,4(sp)
 55c:	01010113          	addi	sp,sp,16
 560:	00008067          	ret
 564:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeeda>
 568:	0fd6f693          	andi	a3,a3,253
 56c:	00069a63          	bnez	a3,580 <neorv32_uart0_setup+0xa4>
 570:	00355513          	srli	a0,a0,0x3
 574:	00170713          	addi	a4,a4,1
 578:	0ff77713          	zext.b	a4,a4
 57c:	fa1ff06f          	j	51c <neorv32_uart0_setup+0x40>
 580:	00155513          	srli	a0,a0,0x1
 584:	ff1ff06f          	j	574 <neorv32_uart0_setup+0x98>

00000588 <neorv32_uart0_putc>:
 588:	00040737          	lui	a4,0x40
 58c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 590:	00e7f7b3          	and	a5,a5,a4
 594:	fe079ce3          	bnez	a5,58c <neorv32_uart0_putc+0x4>
 598:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 59c:	00008067          	ret

000005a0 <neorv32_uart0_print>:
 5a0:	ff010113          	addi	sp,sp,-16
 5a4:	00812423          	sw	s0,8(sp)
 5a8:	01212023          	sw	s2,0(sp)
 5ac:	00112623          	sw	ra,12(sp)
 5b0:	00912223          	sw	s1,4(sp)
 5b4:	00050413          	mv	s0,a0
 5b8:	00a00913          	li	s2,10
 5bc:	00044483          	lbu	s1,0(s0)
 5c0:	00140413          	addi	s0,s0,1
 5c4:	00049e63          	bnez	s1,5e0 <neorv32_uart0_print+0x40>
 5c8:	00c12083          	lw	ra,12(sp)
 5cc:	00812403          	lw	s0,8(sp)
 5d0:	00412483          	lw	s1,4(sp)
 5d4:	00012903          	lw	s2,0(sp)
 5d8:	01010113          	addi	sp,sp,16
 5dc:	00008067          	ret
 5e0:	01249663          	bne	s1,s2,5ec <neorv32_uart0_print+0x4c>
 5e4:	00d00513          	li	a0,13
 5e8:	fa1ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 5ec:	00048513          	mv	a0,s1
 5f0:	f99ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 5f4:	fc9ff06f          	j	5bc <neorv32_uart0_print+0x1c>

000005f8 <neorv32_uart0_printf>:
 5f8:	fa010113          	addi	sp,sp,-96
 5fc:	04f12a23          	sw	a5,84(sp)
 600:	04410793          	addi	a5,sp,68
 604:	02912a23          	sw	s1,52(sp)
 608:	03212823          	sw	s2,48(sp)
 60c:	03312623          	sw	s3,44(sp)
 610:	03412423          	sw	s4,40(sp)
 614:	03512223          	sw	s5,36(sp)
 618:	03612023          	sw	s6,32(sp)
 61c:	01712e23          	sw	s7,28(sp)
 620:	01812c23          	sw	s8,24(sp)
 624:	01912a23          	sw	s9,20(sp)
 628:	02112e23          	sw	ra,60(sp)
 62c:	02812c23          	sw	s0,56(sp)
 630:	00050493          	mv	s1,a0
 634:	04b12223          	sw	a1,68(sp)
 638:	04c12423          	sw	a2,72(sp)
 63c:	04d12623          	sw	a3,76(sp)
 640:	04e12823          	sw	a4,80(sp)
 644:	05012c23          	sw	a6,88(sp)
 648:	05112e23          	sw	a7,92(sp)
 64c:	00f12023          	sw	a5,0(sp)
 650:	02500a13          	li	s4,37
 654:	00a00a93          	li	s5,10
 658:	07000913          	li	s2,112
 65c:	07500b13          	li	s6,117
 660:	07800b93          	li	s7,120
 664:	07300c13          	li	s8,115
 668:	06300993          	li	s3,99
 66c:	06400c93          	li	s9,100
 670:	0004c403          	lbu	s0,0(s1)
 674:	02041c63          	bnez	s0,6ac <neorv32_uart0_printf+0xb4>
 678:	03c12083          	lw	ra,60(sp)
 67c:	03812403          	lw	s0,56(sp)
 680:	03412483          	lw	s1,52(sp)
 684:	03012903          	lw	s2,48(sp)
 688:	02c12983          	lw	s3,44(sp)
 68c:	02812a03          	lw	s4,40(sp)
 690:	02412a83          	lw	s5,36(sp)
 694:	02012b03          	lw	s6,32(sp)
 698:	01c12b83          	lw	s7,28(sp)
 69c:	01812c03          	lw	s8,24(sp)
 6a0:	01412c83          	lw	s9,20(sp)
 6a4:	06010113          	addi	sp,sp,96
 6a8:	00008067          	ret
 6ac:	11441463          	bne	s0,s4,7b4 <neorv32_uart0_printf+0x1bc>
 6b0:	0014c403          	lbu	s0,1(s1)
 6b4:	0f240263          	beq	s0,s2,798 <neorv32_uart0_printf+0x1a0>
 6b8:	06896263          	bltu	s2,s0,71c <neorv32_uart0_printf+0x124>
 6bc:	09340463          	beq	s0,s3,744 <neorv32_uart0_printf+0x14c>
 6c0:	0089ee63          	bltu	s3,s0,6dc <neorv32_uart0_printf+0xe4>
 6c4:	05800793          	li	a5,88
 6c8:	0af40663          	beq	s0,a5,774 <neorv32_uart0_printf+0x17c>
 6cc:	02500513          	li	a0,37
 6d0:	eb9ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 6d4:	00040513          	mv	a0,s0
 6d8:	07c0006f          	j	754 <neorv32_uart0_printf+0x15c>
 6dc:	01940663          	beq	s0,s9,6e8 <neorv32_uart0_printf+0xf0>
 6e0:	06900793          	li	a5,105
 6e4:	fef414e3          	bne	s0,a5,6cc <neorv32_uart0_printf+0xd4>
 6e8:	00012783          	lw	a5,0(sp)
 6ec:	0007a403          	lw	s0,0(a5)
 6f0:	00478713          	addi	a4,a5,4
 6f4:	00e12023          	sw	a4,0(sp)
 6f8:	00045863          	bgez	s0,708 <neorv32_uart0_printf+0x110>
 6fc:	02d00513          	li	a0,45
 700:	40800433          	neg	s0,s0
 704:	e85ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 708:	00410593          	addi	a1,sp,4
 70c:	00040513          	mv	a0,s0
 710:	c4dff0ef          	jal	ra,35c <__neorv32_uart_itoa>
 714:	00410513          	addi	a0,sp,4
 718:	0200006f          	j	738 <neorv32_uart0_printf+0x140>
 71c:	05640063          	beq	s0,s6,75c <neorv32_uart0_printf+0x164>
 720:	07740c63          	beq	s0,s7,798 <neorv32_uart0_printf+0x1a0>
 724:	fb8414e3          	bne	s0,s8,6cc <neorv32_uart0_printf+0xd4>
 728:	00012783          	lw	a5,0(sp)
 72c:	0007a503          	lw	a0,0(a5)
 730:	00478713          	addi	a4,a5,4
 734:	00e12023          	sw	a4,0(sp)
 738:	e69ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 73c:	00248493          	addi	s1,s1,2
 740:	f31ff06f          	j	670 <neorv32_uart0_printf+0x78>
 744:	00012783          	lw	a5,0(sp)
 748:	0007c503          	lbu	a0,0(a5)
 74c:	00478713          	addi	a4,a5,4
 750:	00e12023          	sw	a4,0(sp)
 754:	e35ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 758:	fe5ff06f          	j	73c <neorv32_uart0_printf+0x144>
 75c:	00012783          	lw	a5,0(sp)
 760:	00410593          	addi	a1,sp,4
 764:	00478713          	addi	a4,a5,4
 768:	0007a503          	lw	a0,0(a5)
 76c:	00e12023          	sw	a4,0(sp)
 770:	fa1ff06f          	j	710 <neorv32_uart0_printf+0x118>
 774:	00012783          	lw	a5,0(sp)
 778:	00410593          	addi	a1,sp,4
 77c:	0007a503          	lw	a0,0(a5)
 780:	00478713          	addi	a4,a5,4
 784:	00e12023          	sw	a4,0(sp)
 788:	cddff0ef          	jal	ra,464 <__neorv32_uart_tohex>
 78c:	00410513          	addi	a0,sp,4
 790:	d11ff0ef          	jal	ra,4a0 <__neorv32_uart_touppercase.constprop.0>
 794:	f81ff06f          	j	714 <neorv32_uart0_printf+0x11c>
 798:	00012783          	lw	a5,0(sp)
 79c:	00410593          	addi	a1,sp,4
 7a0:	0007a503          	lw	a0,0(a5)
 7a4:	00478713          	addi	a4,a5,4
 7a8:	00e12023          	sw	a4,0(sp)
 7ac:	cb9ff0ef          	jal	ra,464 <__neorv32_uart_tohex>
 7b0:	f65ff06f          	j	714 <neorv32_uart0_printf+0x11c>
 7b4:	01541663          	bne	s0,s5,7c0 <neorv32_uart0_printf+0x1c8>
 7b8:	00d00513          	li	a0,13
 7bc:	dcdff0ef          	jal	ra,588 <neorv32_uart0_putc>
 7c0:	00040513          	mv	a0,s0
 7c4:	00148493          	addi	s1,s1,1
 7c8:	dc1ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 7cc:	ea5ff06f          	j	670 <neorv32_uart0_printf+0x78>

000007d0 <__neorv32_cpu_irq_id_check>:
 7d0:	01f00793          	li	a5,31
 7d4:	00a7ee63          	bltu	a5,a0,7f0 <__neorv32_cpu_irq_id_check+0x20>
 7d8:	ffff17b7          	lui	a5,0xffff1
 7dc:	88878793          	addi	a5,a5,-1912 # ffff0888 <__crt0_io_space_begin+0xffff0a88>
 7e0:	00a7d533          	srl	a0,a5,a0
 7e4:	00157513          	andi	a0,a0,1
 7e8:	00154513          	xori	a0,a0,1
 7ec:	00008067          	ret
 7f0:	00100513          	li	a0,1
 7f4:	00008067          	ret

000007f8 <neorv32_cpu_irq_enable>:
 7f8:	ff010113          	addi	sp,sp,-16
 7fc:	00812423          	sw	s0,8(sp)
 800:	00112623          	sw	ra,12(sp)
 804:	00050413          	mv	s0,a0
 808:	fc9ff0ef          	jal	ra,7d0 <__neorv32_cpu_irq_id_check>
 80c:	02051063          	bnez	a0,82c <__heap_size+0x2c>
 810:	00100793          	li	a5,1
 814:	008797b3          	sll	a5,a5,s0
 818:	3047a073          	csrs	mie,a5
 81c:	00c12083          	lw	ra,12(sp)
 820:	00812403          	lw	s0,8(sp)
 824:	01010113          	addi	sp,sp,16
 828:	00008067          	ret
 82c:	00100513          	li	a0,1
 830:	fedff06f          	j	81c <__heap_size+0x1c>

00000834 <__neorv32_rte_core>:
 834:	fc010113          	addi	sp,sp,-64
 838:	02112e23          	sw	ra,60(sp)
 83c:	02512c23          	sw	t0,56(sp)
 840:	02612a23          	sw	t1,52(sp)
 844:	02712823          	sw	t2,48(sp)
 848:	02a12623          	sw	a0,44(sp)
 84c:	02b12423          	sw	a1,40(sp)
 850:	02c12223          	sw	a2,36(sp)
 854:	02d12023          	sw	a3,32(sp)
 858:	00e12e23          	sw	a4,28(sp)
 85c:	00f12c23          	sw	a5,24(sp)
 860:	01012a23          	sw	a6,20(sp)
 864:	01112823          	sw	a7,16(sp)
 868:	01c12623          	sw	t3,12(sp)
 86c:	01d12423          	sw	t4,8(sp)
 870:	01e12223          	sw	t5,4(sp)
 874:	01f12023          	sw	t6,0(sp)
 878:	34102773          	csrr	a4,mepc
 87c:	34071073          	csrw	mscratch,a4
 880:	342027f3          	csrr	a5,mcause
 884:	0407c663          	bltz	a5,8d0 <__neorv32_rte_core+0x9c>
 888:	00075683          	lhu	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3eedc>
 88c:	00300593          	li	a1,3
 890:	0036f693          	andi	a3,a3,3
 894:	00270613          	addi	a2,a4,2
 898:	00b69463          	bne	a3,a1,8a0 <__neorv32_rte_core+0x6c>
 89c:	00470613          	addi	a2,a4,4
 8a0:	34161073          	csrw	mepc,a2
 8a4:	00b00713          	li	a4,11
 8a8:	00f77863          	bgeu	a4,a5,8b8 <__neorv32_rte_core+0x84>
 8ac:	000017b7          	lui	a5,0x1
 8b0:	aa078793          	addi	a5,a5,-1376 # aa0 <__neorv32_rte_debug_exc_handler>
 8b4:	0500006f          	j	904 <__neorv32_rte_core+0xd0>
 8b8:	00001737          	lui	a4,0x1
 8bc:	00279793          	slli	a5,a5,0x2
 8c0:	e7870713          	addi	a4,a4,-392 # e78 <numbers.1+0xc>
 8c4:	00e787b3          	add	a5,a5,a4
 8c8:	0007a783          	lw	a5,0(a5)
 8cc:	00078067          	jr	a5
 8d0:	80000737          	lui	a4,0x80000
 8d4:	ffd74713          	xori	a4,a4,-3
 8d8:	00e787b3          	add	a5,a5,a4
 8dc:	01c00713          	li	a4,28
 8e0:	fcf766e3          	bltu	a4,a5,8ac <__neorv32_rte_core+0x78>
 8e4:	00001737          	lui	a4,0x1
 8e8:	00279793          	slli	a5,a5,0x2
 8ec:	ea870713          	addi	a4,a4,-344 # ea8 <numbers.1+0x3c>
 8f0:	00e787b3          	add	a5,a5,a4
 8f4:	0007a783          	lw	a5,0(a5)
 8f8:	00078067          	jr	a5
 8fc:	800007b7          	lui	a5,0x80000
 900:	0807a783          	lw	a5,128(a5) # 80000080 <__crt0_io_space_begin+0x80000280>
 904:	000780e7          	jalr	a5
 908:	03c12083          	lw	ra,60(sp)
 90c:	03812283          	lw	t0,56(sp)
 910:	03412303          	lw	t1,52(sp)
 914:	03012383          	lw	t2,48(sp)
 918:	02c12503          	lw	a0,44(sp)
 91c:	02812583          	lw	a1,40(sp)
 920:	02412603          	lw	a2,36(sp)
 924:	02012683          	lw	a3,32(sp)
 928:	01c12703          	lw	a4,28(sp)
 92c:	01812783          	lw	a5,24(sp)
 930:	01412803          	lw	a6,20(sp)
 934:	01012883          	lw	a7,16(sp)
 938:	00c12e03          	lw	t3,12(sp)
 93c:	00812e83          	lw	t4,8(sp)
 940:	00412f03          	lw	t5,4(sp)
 944:	00012f83          	lw	t6,0(sp)
 948:	04010113          	addi	sp,sp,64
 94c:	30200073          	mret
 950:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x4>
 954:	fb1ff06f          	j	904 <__neorv32_rte_core+0xd0>
 958:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x8>
 95c:	fa9ff06f          	j	904 <__neorv32_rte_core+0xd0>
 960:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0xc>
 964:	fa1ff06f          	j	904 <__neorv32_rte_core+0xd0>
 968:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x10>
 96c:	f99ff06f          	j	904 <__neorv32_rte_core+0xd0>
 970:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x14>
 974:	f91ff06f          	j	904 <__neorv32_rte_core+0xd0>
 978:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x18>
 97c:	f89ff06f          	j	904 <__neorv32_rte_core+0xd0>
 980:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x1c>
 984:	f81ff06f          	j	904 <__neorv32_rte_core+0xd0>
 988:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x20>
 98c:	f79ff06f          	j	904 <__neorv32_rte_core+0xd0>
 990:	8a41a783          	lw	a5,-1884(gp) # 800000a4 <__neorv32_rte_vector_lut+0x24>
 994:	f71ff06f          	j	904 <__neorv32_rte_core+0xd0>
 998:	8a81a783          	lw	a5,-1880(gp) # 800000a8 <__neorv32_rte_vector_lut+0x28>
 99c:	f69ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9a0:	8ac1a783          	lw	a5,-1876(gp) # 800000ac <__neorv32_rte_vector_lut+0x2c>
 9a4:	f61ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9a8:	8b01a783          	lw	a5,-1872(gp) # 800000b0 <__neorv32_rte_vector_lut+0x30>
 9ac:	f59ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9b0:	8b41a783          	lw	a5,-1868(gp) # 800000b4 <__neorv32_rte_vector_lut+0x34>
 9b4:	f51ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9b8:	8b81a783          	lw	a5,-1864(gp) # 800000b8 <__neorv32_rte_vector_lut+0x38>
 9bc:	f49ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9c0:	8bc1a783          	lw	a5,-1860(gp) # 800000bc <__neorv32_rte_vector_lut+0x3c>
 9c4:	f41ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9c8:	8c01a783          	lw	a5,-1856(gp) # 800000c0 <__neorv32_rte_vector_lut+0x40>
 9cc:	f39ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9d0:	8c41a783          	lw	a5,-1852(gp) # 800000c4 <__neorv32_rte_vector_lut+0x44>
 9d4:	f31ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9d8:	8c81a783          	lw	a5,-1848(gp) # 800000c8 <__neorv32_rte_vector_lut+0x48>
 9dc:	f29ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9e0:	8cc1a783          	lw	a5,-1844(gp) # 800000cc <__neorv32_rte_vector_lut+0x4c>
 9e4:	f21ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9e8:	8d01a783          	lw	a5,-1840(gp) # 800000d0 <__neorv32_rte_vector_lut+0x50>
 9ec:	f19ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9f0:	8d41a783          	lw	a5,-1836(gp) # 800000d4 <__neorv32_rte_vector_lut+0x54>
 9f4:	f11ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9f8:	8d81a783          	lw	a5,-1832(gp) # 800000d8 <__neorv32_rte_vector_lut+0x58>
 9fc:	f09ff06f          	j	904 <__neorv32_rte_core+0xd0>
 a00:	8dc1a783          	lw	a5,-1828(gp) # 800000dc <__neorv32_rte_vector_lut+0x5c>
 a04:	f01ff06f          	j	904 <__neorv32_rte_core+0xd0>
 a08:	8e01a783          	lw	a5,-1824(gp) # 800000e0 <__neorv32_rte_vector_lut+0x60>
 a0c:	ef9ff06f          	j	904 <__neorv32_rte_core+0xd0>
 a10:	8e41a783          	lw	a5,-1820(gp) # 800000e4 <__neorv32_rte_vector_lut+0x64>
 a14:	ef1ff06f          	j	904 <__neorv32_rte_core+0xd0>
 a18:	8e81a783          	lw	a5,-1816(gp) # 800000e8 <__neorv32_rte_vector_lut+0x68>
 a1c:	ee9ff06f          	j	904 <__neorv32_rte_core+0xd0>
 a20:	8ec1a783          	lw	a5,-1812(gp) # 800000ec <__neorv32_rte_vector_lut+0x6c>
 a24:	ee1ff06f          	j	904 <__neorv32_rte_core+0xd0>
 a28:	8f01a783          	lw	a5,-1808(gp) # 800000f0 <__neorv32_rte_vector_lut+0x70>
 a2c:	ed9ff06f          	j	904 <__neorv32_rte_core+0xd0>

00000a30 <__neorv32_rte_print_hex_word>:
 a30:	fe010113          	addi	sp,sp,-32
 a34:	01212823          	sw	s2,16(sp)
 a38:	00050913          	mv	s2,a0
 a3c:	00001537          	lui	a0,0x1
 a40:	00912a23          	sw	s1,20(sp)
 a44:	f1c50513          	addi	a0,a0,-228 # f1c <numbers.1+0xb0>
 a48:	000014b7          	lui	s1,0x1
 a4c:	00812c23          	sw	s0,24(sp)
 a50:	01312623          	sw	s3,12(sp)
 a54:	00112e23          	sw	ra,28(sp)
 a58:	01c00413          	li	s0,28
 a5c:	b45ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 a60:	11448493          	addi	s1,s1,276 # 1114 <hex_symbols.0>
 a64:	ffc00993          	li	s3,-4
 a68:	008957b3          	srl	a5,s2,s0
 a6c:	00f7f793          	andi	a5,a5,15
 a70:	00f487b3          	add	a5,s1,a5
 a74:	0007c503          	lbu	a0,0(a5)
 a78:	ffc40413          	addi	s0,s0,-4
 a7c:	b0dff0ef          	jal	ra,588 <neorv32_uart0_putc>
 a80:	ff3414e3          	bne	s0,s3,a68 <__neorv32_rte_print_hex_word+0x38>
 a84:	01c12083          	lw	ra,28(sp)
 a88:	01812403          	lw	s0,24(sp)
 a8c:	01412483          	lw	s1,20(sp)
 a90:	01012903          	lw	s2,16(sp)
 a94:	00c12983          	lw	s3,12(sp)
 a98:	02010113          	addi	sp,sp,32
 a9c:	00008067          	ret

00000aa0 <__neorv32_rte_debug_exc_handler>:
 aa0:	ff010113          	addi	sp,sp,-16
 aa4:	00112623          	sw	ra,12(sp)
 aa8:	00812423          	sw	s0,8(sp)
 aac:	00912223          	sw	s1,4(sp)
 ab0:	a1dff0ef          	jal	ra,4cc <neorv32_uart0_available>
 ab4:	1a050e63          	beqz	a0,c70 <__neorv32_rte_debug_exc_handler+0x1d0>
 ab8:	00001537          	lui	a0,0x1
 abc:	f2050513          	addi	a0,a0,-224 # f20 <numbers.1+0xb4>
 ac0:	ae1ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 ac4:	34202473          	csrr	s0,mcause
 ac8:	00900713          	li	a4,9
 acc:	00f47793          	andi	a5,s0,15
 ad0:	03078493          	addi	s1,a5,48
 ad4:	00f77463          	bgeu	a4,a5,adc <__neorv32_rte_debug_exc_handler+0x3c>
 ad8:	05778493          	addi	s1,a5,87
 adc:	00b00793          	li	a5,11
 ae0:	0087ee63          	bltu	a5,s0,afc <__neorv32_rte_debug_exc_handler+0x5c>
 ae4:	00001737          	lui	a4,0x1
 ae8:	00241793          	slli	a5,s0,0x2
 aec:	0e470713          	addi	a4,a4,228 # 10e4 <numbers.1+0x278>
 af0:	00e787b3          	add	a5,a5,a4
 af4:	0007a783          	lw	a5,0(a5)
 af8:	00078067          	jr	a5
 afc:	800007b7          	lui	a5,0x80000
 b00:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 b04:	14e40463          	beq	s0,a4,c4c <__neorv32_rte_debug_exc_handler+0x1ac>
 b08:	02876663          	bltu	a4,s0,b34 <__neorv32_rte_debug_exc_handler+0x94>
 b0c:	00378713          	addi	a4,a5,3
 b10:	12e40263          	beq	s0,a4,c34 <__neorv32_rte_debug_exc_handler+0x194>
 b14:	00778793          	addi	a5,a5,7
 b18:	12f40463          	beq	s0,a5,c40 <__neorv32_rte_debug_exc_handler+0x1a0>
 b1c:	00001537          	lui	a0,0x1
 b20:	08050513          	addi	a0,a0,128 # 1080 <numbers.1+0x214>
 b24:	a7dff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 b28:	00040513          	mv	a0,s0
 b2c:	f05ff0ef          	jal	ra,a30 <__neorv32_rte_print_hex_word>
 b30:	0280006f          	j	b58 <__neorv32_rte_debug_exc_handler+0xb8>
 b34:	ff07c793          	xori	a5,a5,-16
 b38:	00f407b3          	add	a5,s0,a5
 b3c:	00f00713          	li	a4,15
 b40:	fcf76ee3          	bltu	a4,a5,b1c <__neorv32_rte_debug_exc_handler+0x7c>
 b44:	00001537          	lui	a0,0x1
 b48:	07050513          	addi	a0,a0,112 # 1070 <numbers.1+0x204>
 b4c:	a55ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 b50:	00048513          	mv	a0,s1
 b54:	a35ff0ef          	jal	ra,588 <neorv32_uart0_putc>
 b58:	00001537          	lui	a0,0x1
 b5c:	0c450513          	addi	a0,a0,196 # 10c4 <numbers.1+0x258>
 b60:	a41ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 b64:	34002573          	csrr	a0,mscratch
 b68:	ec9ff0ef          	jal	ra,a30 <__neorv32_rte_print_hex_word>
 b6c:	00001537          	lui	a0,0x1
 b70:	0cc50513          	addi	a0,a0,204 # 10cc <numbers.1+0x260>
 b74:	a2dff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 b78:	34302573          	csrr	a0,mtval
 b7c:	eb5ff0ef          	jal	ra,a30 <__neorv32_rte_print_hex_word>
 b80:	00812403          	lw	s0,8(sp)
 b84:	00c12083          	lw	ra,12(sp)
 b88:	00412483          	lw	s1,4(sp)
 b8c:	00001537          	lui	a0,0x1
 b90:	0d850513          	addi	a0,a0,216 # 10d8 <numbers.1+0x26c>
 b94:	01010113          	addi	sp,sp,16
 b98:	a09ff06f          	j	5a0 <neorv32_uart0_print>
 b9c:	00001537          	lui	a0,0x1
 ba0:	f2850513          	addi	a0,a0,-216 # f28 <numbers.1+0xbc>
 ba4:	9fdff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 ba8:	fb1ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0xb8>
 bac:	00001537          	lui	a0,0x1
 bb0:	f4850513          	addi	a0,a0,-184 # f48 <numbers.1+0xdc>
 bb4:	9edff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 bb8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 bbc:	0a07d463          	bgez	a5,c64 <__neorv32_rte_debug_exc_handler+0x1c4>
 bc0:	0017f793          	andi	a5,a5,1
 bc4:	08078a63          	beqz	a5,c58 <__neorv32_rte_debug_exc_handler+0x1b8>
 bc8:	00001537          	lui	a0,0x1
 bcc:	09850513          	addi	a0,a0,152 # 1098 <numbers.1+0x22c>
 bd0:	fd5ff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 bd4:	00001537          	lui	a0,0x1
 bd8:	f6450513          	addi	a0,a0,-156 # f64 <numbers.1+0xf8>
 bdc:	fc9ff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 be0:	00001537          	lui	a0,0x1
 be4:	f7850513          	addi	a0,a0,-136 # f78 <numbers.1+0x10c>
 be8:	fbdff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 bec:	00001537          	lui	a0,0x1
 bf0:	f8450513          	addi	a0,a0,-124 # f84 <numbers.1+0x118>
 bf4:	fb1ff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 bf8:	00001537          	lui	a0,0x1
 bfc:	f9c50513          	addi	a0,a0,-100 # f9c <numbers.1+0x130>
 c00:	fb5ff06f          	j	bb4 <__neorv32_rte_debug_exc_handler+0x114>
 c04:	00001537          	lui	a0,0x1
 c08:	fb050513          	addi	a0,a0,-80 # fb0 <numbers.1+0x144>
 c0c:	f99ff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 c10:	00001537          	lui	a0,0x1
 c14:	fcc50513          	addi	a0,a0,-52 # fcc <numbers.1+0x160>
 c18:	f9dff06f          	j	bb4 <__neorv32_rte_debug_exc_handler+0x114>
 c1c:	00001537          	lui	a0,0x1
 c20:	fe050513          	addi	a0,a0,-32 # fe0 <numbers.1+0x174>
 c24:	f81ff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 c28:	00001537          	lui	a0,0x1
 c2c:	00050513          	mv	a0,a0
 c30:	f75ff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 c34:	00001537          	lui	a0,0x1
 c38:	02050513          	addi	a0,a0,32 # 1020 <numbers.1+0x1b4>
 c3c:	f69ff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 c40:	00001537          	lui	a0,0x1
 c44:	03c50513          	addi	a0,a0,60 # 103c <numbers.1+0x1d0>
 c48:	f5dff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 c4c:	00001537          	lui	a0,0x1
 c50:	05450513          	addi	a0,a0,84 # 1054 <numbers.1+0x1e8>
 c54:	f51ff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 c58:	00001537          	lui	a0,0x1
 c5c:	0a850513          	addi	a0,a0,168 # 10a8 <numbers.1+0x23c>
 c60:	f45ff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 c64:	00001537          	lui	a0,0x1
 c68:	0b850513          	addi	a0,a0,184 # 10b8 <numbers.1+0x24c>
 c6c:	f39ff06f          	j	ba4 <__neorv32_rte_debug_exc_handler+0x104>
 c70:	00c12083          	lw	ra,12(sp)
 c74:	00812403          	lw	s0,8(sp)
 c78:	00412483          	lw	s1,4(sp)
 c7c:	01010113          	addi	sp,sp,16
 c80:	00008067          	ret

00000c84 <neorv32_rte_exception_install>:
 c84:	01f00793          	li	a5,31
 c88:	02a7e063          	bltu	a5,a0,ca8 <neorv32_rte_exception_install+0x24>
 c8c:	800007b7          	lui	a5,0x80000
 c90:	00251513          	slli	a0,a0,0x2
 c94:	08078793          	addi	a5,a5,128 # 80000080 <__crt0_io_space_begin+0x80000280>
 c98:	00a787b3          	add	a5,a5,a0
 c9c:	00b7a023          	sw	a1,0(a5)
 ca0:	00000513          	li	a0,0
 ca4:	00008067          	ret
 ca8:	00100513          	li	a0,1
 cac:	00008067          	ret

00000cb0 <neorv32_rte_exception_uninstall>:
 cb0:	01f00793          	li	a5,31
 cb4:	02a7e463          	bltu	a5,a0,cdc <neorv32_rte_exception_uninstall+0x2c>
 cb8:	800007b7          	lui	a5,0x80000
 cbc:	00251513          	slli	a0,a0,0x2
 cc0:	08078793          	addi	a5,a5,128 # 80000080 <__crt0_io_space_begin+0x80000280>
 cc4:	00001737          	lui	a4,0x1
 cc8:	00a787b3          	add	a5,a5,a0
 ccc:	aa070713          	addi	a4,a4,-1376 # aa0 <__neorv32_rte_debug_exc_handler>
 cd0:	00e7a023          	sw	a4,0(a5)
 cd4:	00000513          	li	a0,0
 cd8:	00008067          	ret
 cdc:	00100513          	li	a0,1
 ce0:	00008067          	ret

00000ce4 <neorv32_rte_setup>:
 ce4:	ff010113          	addi	sp,sp,-16
 ce8:	000017b7          	lui	a5,0x1
 cec:	00112623          	sw	ra,12(sp)
 cf0:	00812423          	sw	s0,8(sp)
 cf4:	00912223          	sw	s1,4(sp)
 cf8:	83478793          	addi	a5,a5,-1996 # 834 <__neorv32_rte_core>
 cfc:	30579073          	csrw	mtvec,a5
 d00:	00000413          	li	s0,0
 d04:	01d00493          	li	s1,29
 d08:	00040513          	mv	a0,s0
 d0c:	00140413          	addi	s0,s0,1
 d10:	0ff47413          	zext.b	s0,s0
 d14:	f9dff0ef          	jal	ra,cb0 <neorv32_rte_exception_uninstall>
 d18:	fe9418e3          	bne	s0,s1,d08 <neorv32_rte_setup+0x24>
 d1c:	00c12083          	lw	ra,12(sp)
 d20:	00812403          	lw	s0,8(sp)
 d24:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 d28:	00412483          	lw	s1,4(sp)
 d2c:	01010113          	addi	sp,sp,16
 d30:	00008067          	ret

00000d34 <neorv32_gpio_port_set>:
 d34:	fc000793          	li	a5,-64
 d38:	00a7a423          	sw	a0,8(a5)
 d3c:	00b7a623          	sw	a1,12(a5)
 d40:	00008067          	ret

00000d44 <__divsi3>:
 d44:	06054063          	bltz	a0,da4 <__umodsi3+0x10>
 d48:	0605c663          	bltz	a1,db4 <__umodsi3+0x20>

00000d4c <__hidden___udivsi3>:
 d4c:	00058613          	mv	a2,a1
 d50:	00050593          	mv	a1,a0
 d54:	fff00513          	li	a0,-1
 d58:	02060c63          	beqz	a2,d90 <__hidden___udivsi3+0x44>
 d5c:	00100693          	li	a3,1
 d60:	00b67a63          	bgeu	a2,a1,d74 <__hidden___udivsi3+0x28>
 d64:	00c05863          	blez	a2,d74 <__hidden___udivsi3+0x28>
 d68:	00161613          	slli	a2,a2,0x1
 d6c:	00169693          	slli	a3,a3,0x1
 d70:	feb66ae3          	bltu	a2,a1,d64 <__hidden___udivsi3+0x18>
 d74:	00000513          	li	a0,0
 d78:	00c5e663          	bltu	a1,a2,d84 <__hidden___udivsi3+0x38>
 d7c:	40c585b3          	sub	a1,a1,a2
 d80:	00d56533          	or	a0,a0,a3
 d84:	0016d693          	srli	a3,a3,0x1
 d88:	00165613          	srli	a2,a2,0x1
 d8c:	fe0696e3          	bnez	a3,d78 <__hidden___udivsi3+0x2c>
 d90:	00008067          	ret

00000d94 <__umodsi3>:
 d94:	00008293          	mv	t0,ra
 d98:	fb5ff0ef          	jal	ra,d4c <__hidden___udivsi3>
 d9c:	00058513          	mv	a0,a1
 da0:	00028067          	jr	t0
 da4:	40a00533          	neg	a0,a0
 da8:	00b04863          	bgtz	a1,db8 <__umodsi3+0x24>
 dac:	40b005b3          	neg	a1,a1
 db0:	f9dff06f          	j	d4c <__hidden___udivsi3>
 db4:	40b005b3          	neg	a1,a1
 db8:	00008293          	mv	t0,ra
 dbc:	f91ff0ef          	jal	ra,d4c <__hidden___udivsi3>
 dc0:	40a00533          	neg	a0,a0
 dc4:	00028067          	jr	t0

00000dc8 <__modsi3>:
 dc8:	00008293          	mv	t0,ra
 dcc:	0005ca63          	bltz	a1,de0 <__modsi3+0x18>
 dd0:	00054c63          	bltz	a0,de8 <__modsi3+0x20>
 dd4:	f79ff0ef          	jal	ra,d4c <__hidden___udivsi3>
 dd8:	00058513          	mv	a0,a1
 ddc:	00028067          	jr	t0
 de0:	40b005b3          	neg	a1,a1
 de4:	fe0558e3          	bgez	a0,dd4 <__modsi3+0xc>
 de8:	40a00533          	neg	a0,a0
 dec:	f61ff0ef          	jal	ra,d4c <__hidden___udivsi3>
 df0:	40b00533          	neg	a0,a1
 df4:	00028067          	jr	t0
