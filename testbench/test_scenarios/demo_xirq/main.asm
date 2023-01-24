
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
  bc:	0d058593          	addi	a1,a1,208 # 1188 <__crt0_copy_data_src_begin>
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
 184:	381000ef          	jal	ra,d04 <neorv32_rte_setup>
 188:	00005537          	lui	a0,0x5
 18c:	00000613          	li	a2,0
 190:	00000593          	li	a1,0
 194:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3978>
 198:	364000ef          	jal	ra,4fc <neorv32_uart0_setup>
 19c:	150000ef          	jal	ra,2ec <neorv32_xirq_available>
 1a0:	02051263          	bnez	a0,1c4 <main+0x4c>
 1a4:	00001537          	lui	a0,0x1
 1a8:	e3850513          	addi	a0,a0,-456 # e38 <__etext+0x20>
 1ac:	46c000ef          	jal	ra,618 <neorv32_uart0_printf>
 1b0:	00c12083          	lw	ra,12(sp)
 1b4:	00812403          	lw	s0,8(sp)
 1b8:	00100513          	li	a0,1
 1bc:	01010113          	addi	sp,sp,16
 1c0:	00008067          	ret
 1c4:	00001537          	lui	a0,0x1
 1c8:	e5050513          	addi	a0,a0,-432 # e50 <__etext+0x38>
 1cc:	44c000ef          	jal	ra,618 <neorv32_uart0_printf>
 1d0:	12c000ef          	jal	ra,2fc <neorv32_xirq_setup>
 1d4:	00050863          	beqz	a0,1e4 <main+0x6c>
 1d8:	00001537          	lui	a0,0x1
 1dc:	e8450513          	addi	a0,a0,-380 # e84 <__etext+0x6c>
 1e0:	fcdff06f          	j	1ac <main+0x34>
 1e4:	25400593          	li	a1,596
 1e8:	14c000ef          	jal	ra,334 <neorv32_xirq_install>
 1ec:	00050413          	mv	s0,a0
 1f0:	26400593          	li	a1,612
 1f4:	00100513          	li	a0,1
 1f8:	13c000ef          	jal	ra,334 <neorv32_xirq_install>
 1fc:	00a40433          	add	s0,s0,a0
 200:	27400593          	li	a1,628
 204:	00200513          	li	a0,2
 208:	12c000ef          	jal	ra,334 <neorv32_xirq_install>
 20c:	00a40433          	add	s0,s0,a0
 210:	28400593          	li	a1,644
 214:	00300513          	li	a0,3
 218:	11c000ef          	jal	ra,334 <neorv32_xirq_install>
 21c:	00a40433          	add	s0,s0,a0
 220:	00040863          	beqz	s0,230 <main+0xb8>
 224:	00001537          	lui	a0,0x1
 228:	ea050513          	addi	a0,a0,-352 # ea0 <__etext+0x88>
 22c:	f81ff06f          	j	1ac <main+0x34>
 230:	0fc000ef          	jal	ra,32c <neorv32_xirq_global_enable>
 234:	30046073          	csrsi	mstatus,8
 238:	00f00513          	li	a0,15
 23c:	00000593          	li	a1,0
 240:	315000ef          	jal	ra,d54 <neorv32_gpio_port_set>
 244:	00000513          	li	a0,0
 248:	00000593          	li	a1,0
 24c:	309000ef          	jal	ra,d54 <neorv32_gpio_port_set>
 250:	0000006f          	j	250 <main+0xd8>

00000254 <xirq_handler_ch0>:
 254:	00001537          	lui	a0,0x1
 258:	00000593          	li	a1,0
 25c:	e1850513          	addi	a0,a0,-488 # e18 <__etext>
 260:	3b80006f          	j	618 <neorv32_uart0_printf>

00000264 <xirq_handler_ch1>:
 264:	00001537          	lui	a0,0x1
 268:	00100593          	li	a1,1
 26c:	e1850513          	addi	a0,a0,-488 # e18 <__etext>
 270:	3a80006f          	j	618 <neorv32_uart0_printf>

00000274 <xirq_handler_ch2>:
 274:	00001537          	lui	a0,0x1
 278:	00200593          	li	a1,2
 27c:	e1850513          	addi	a0,a0,-488 # e18 <__etext>
 280:	3980006f          	j	618 <neorv32_uart0_printf>

00000284 <xirq_handler_ch3>:
 284:	00001537          	lui	a0,0x1
 288:	00300593          	li	a1,3
 28c:	e1850513          	addi	a0,a0,-488 # e18 <__etext>
 290:	3880006f          	j	618 <neorv32_uart0_printf>
 294:	0000                	.2byte	0x0
 296:	0000                	.2byte	0x0
 298:	0000                	.2byte	0x0
 29a:	0000                	.2byte	0x0
 29c:	0000                	.2byte	0x0
 29e:	0000                	.2byte	0x0

000002a0 <__neorv32_xirq_core>:
 2a0:	f8000693          	li	a3,-128
 2a4:	0086a703          	lw	a4,8(a3)
 2a8:	00100793          	li	a5,1
 2ac:	00e797b3          	sll	a5,a5,a4
 2b0:	fff7c793          	not	a5,a5
 2b4:	00f6a223          	sw	a5,4(a3)
 2b8:	ff0007b7          	lui	a5,0xff000
 2bc:	fff78793          	addi	a5,a5,-1 # feffffff <__crt0_io_space_begin+0xff0001ff>
 2c0:	34479073          	csrw	mip,a5
 2c4:	800007b7          	lui	a5,0x80000
 2c8:	00271713          	slli	a4,a4,0x2
 2cc:	00078793          	mv	a5,a5
 2d0:	0006a423          	sw	zero,8(a3)
 2d4:	00e787b3          	add	a5,a5,a4
 2d8:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 2dc:	00078067          	jr	a5
 2e0:	0000                	.2byte	0x0
 2e2:	0000                	.2byte	0x0

000002e4 <__neorv32_xirq_dummy_handler>:
 2e4:	00000013          	nop
 2e8:	00008067          	ret

000002ec <neorv32_xirq_available>:
 2ec:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 2f0:	01c55513          	srli	a0,a0,0x1c
 2f4:	00157513          	andi	a0,a0,1
 2f8:	00008067          	ret

000002fc <neorv32_xirq_setup>:
 2fc:	800007b7          	lui	a5,0x80000
 300:	f8002023          	sw	zero,-128(zero) # ffffff80 <__crt0_io_space_begin+0x180>
 304:	00078793          	mv	a5,a5
 308:	f8002223          	sw	zero,-124(zero) # ffffff84 <__crt0_io_space_begin+0x184>
 30c:	08078693          	addi	a3,a5,128 # 80000080 <__crt0_io_space_begin+0x80000280>
 310:	2e400713          	li	a4,740
 314:	00e7a023          	sw	a4,0(a5)
 318:	00478793          	addi	a5,a5,4
 31c:	fed79ce3          	bne	a5,a3,314 <neorv32_xirq_setup+0x18>
 320:	2a000593          	li	a1,672
 324:	01500513          	li	a0,21
 328:	17d0006f          	j	ca4 <neorv32_rte_exception_install>

0000032c <neorv32_xirq_global_enable>:
 32c:	01800513          	li	a0,24
 330:	4e80006f          	j	818 <neorv32_cpu_irq_enable>

00000334 <neorv32_xirq_install>:
 334:	01f00793          	li	a5,31
 338:	02a7ee63          	bltu	a5,a0,374 <neorv32_xirq_install+0x40>
 33c:	800007b7          	lui	a5,0x80000
 340:	00251713          	slli	a4,a0,0x2
 344:	00078793          	mv	a5,a5
 348:	00e787b3          	add	a5,a5,a4
 34c:	00b7a023          	sw	a1,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 350:	00100793          	li	a5,1
 354:	00a797b3          	sll	a5,a5,a0
 358:	fff7c713          	not	a4,a5
 35c:	f8e02223          	sw	a4,-124(zero) # ffffff84 <__crt0_io_space_begin+0x184>
 360:	f8002703          	lw	a4,-128(zero) # ffffff80 <__crt0_io_space_begin+0x180>
 364:	00000513          	li	a0,0
 368:	00f767b3          	or	a5,a4,a5
 36c:	f8f02023          	sw	a5,-128(zero) # ffffff80 <__crt0_io_space_begin+0x180>
 370:	00008067          	ret
 374:	00100513          	li	a0,1
 378:	00008067          	ret

0000037c <__neorv32_uart_itoa>:
 37c:	fd010113          	addi	sp,sp,-48
 380:	02812423          	sw	s0,40(sp)
 384:	02912223          	sw	s1,36(sp)
 388:	03212023          	sw	s2,32(sp)
 38c:	01312e23          	sw	s3,28(sp)
 390:	01412c23          	sw	s4,24(sp)
 394:	02112623          	sw	ra,44(sp)
 398:	01512a23          	sw	s5,20(sp)
 39c:	00001a37          	lui	s4,0x1
 3a0:	00050493          	mv	s1,a0
 3a4:	00058413          	mv	s0,a1
 3a8:	00058523          	sb	zero,10(a1)
 3ac:	00000993          	li	s3,0
 3b0:	00410913          	addi	s2,sp,4
 3b4:	ed0a0a13          	addi	s4,s4,-304 # ed0 <numbers.1>
 3b8:	00a00593          	li	a1,10
 3bc:	00048513          	mv	a0,s1
 3c0:	1f5000ef          	jal	ra,db4 <__umodsi3>
 3c4:	00aa0533          	add	a0,s4,a0
 3c8:	00054783          	lbu	a5,0(a0)
 3cc:	01390ab3          	add	s5,s2,s3
 3d0:	00048513          	mv	a0,s1
 3d4:	00fa8023          	sb	a5,0(s5)
 3d8:	00a00593          	li	a1,10
 3dc:	191000ef          	jal	ra,d6c <__hidden___udivsi3>
 3e0:	00198993          	addi	s3,s3,1
 3e4:	00a00793          	li	a5,10
 3e8:	00050493          	mv	s1,a0
 3ec:	fcf996e3          	bne	s3,a5,3b8 <__neorv32_uart_itoa+0x3c>
 3f0:	00090693          	mv	a3,s2
 3f4:	00900713          	li	a4,9
 3f8:	03000613          	li	a2,48
 3fc:	0096c583          	lbu	a1,9(a3)
 400:	00070793          	mv	a5,a4
 404:	fff70713          	addi	a4,a4,-1
 408:	01071713          	slli	a4,a4,0x10
 40c:	01075713          	srli	a4,a4,0x10
 410:	00c59a63          	bne	a1,a2,424 <__neorv32_uart_itoa+0xa8>
 414:	000684a3          	sb	zero,9(a3)
 418:	fff68693          	addi	a3,a3,-1
 41c:	fe0710e3          	bnez	a4,3fc <__neorv32_uart_itoa+0x80>
 420:	00000793          	li	a5,0
 424:	00f907b3          	add	a5,s2,a5
 428:	00000713          	li	a4,0
 42c:	0007c683          	lbu	a3,0(a5)
 430:	00068c63          	beqz	a3,448 <__neorv32_uart_itoa+0xcc>
 434:	00170613          	addi	a2,a4,1
 438:	00e40733          	add	a4,s0,a4
 43c:	00d70023          	sb	a3,0(a4)
 440:	01061713          	slli	a4,a2,0x10
 444:	01075713          	srli	a4,a4,0x10
 448:	fff78693          	addi	a3,a5,-1
 44c:	02f91863          	bne	s2,a5,47c <__neorv32_uart_itoa+0x100>
 450:	00e40433          	add	s0,s0,a4
 454:	00040023          	sb	zero,0(s0)
 458:	02c12083          	lw	ra,44(sp)
 45c:	02812403          	lw	s0,40(sp)
 460:	02412483          	lw	s1,36(sp)
 464:	02012903          	lw	s2,32(sp)
 468:	01c12983          	lw	s3,28(sp)
 46c:	01812a03          	lw	s4,24(sp)
 470:	01412a83          	lw	s5,20(sp)
 474:	03010113          	addi	sp,sp,48
 478:	00008067          	ret
 47c:	00068793          	mv	a5,a3
 480:	fadff06f          	j	42c <__neorv32_uart_itoa+0xb0>

00000484 <__neorv32_uart_tohex>:
 484:	00001637          	lui	a2,0x1
 488:	00758693          	addi	a3,a1,7
 48c:	00000713          	li	a4,0
 490:	ebc60613          	addi	a2,a2,-324 # ebc <symbols.0>
 494:	02000813          	li	a6,32
 498:	00e557b3          	srl	a5,a0,a4
 49c:	00f7f793          	andi	a5,a5,15
 4a0:	00f607b3          	add	a5,a2,a5
 4a4:	0007c783          	lbu	a5,0(a5)
 4a8:	00470713          	addi	a4,a4,4
 4ac:	fff68693          	addi	a3,a3,-1
 4b0:	00f680a3          	sb	a5,1(a3)
 4b4:	ff0712e3          	bne	a4,a6,498 <__neorv32_uart_tohex+0x14>
 4b8:	00058423          	sb	zero,8(a1)
 4bc:	00008067          	ret

000004c0 <__neorv32_uart_touppercase.constprop.0>:
 4c0:	00b50693          	addi	a3,a0,11
 4c4:	01900613          	li	a2,25
 4c8:	00054783          	lbu	a5,0(a0)
 4cc:	f9f78713          	addi	a4,a5,-97
 4d0:	0ff77713          	zext.b	a4,a4
 4d4:	00e66663          	bltu	a2,a4,4e0 <__neorv32_uart_touppercase.constprop.0+0x20>
 4d8:	fe078793          	addi	a5,a5,-32
 4dc:	00f50023          	sb	a5,0(a0)
 4e0:	00150513          	addi	a0,a0,1
 4e4:	fea692e3          	bne	a3,a0,4c8 <__neorv32_uart_touppercase.constprop.0+0x8>
 4e8:	00008067          	ret

000004ec <neorv32_uart0_available>:
 4ec:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 4f0:	01255513          	srli	a0,a0,0x12
 4f4:	00157513          	andi	a0,a0,1
 4f8:	00008067          	ret

000004fc <neorv32_uart0_setup>:
 4fc:	ff010113          	addi	sp,sp,-16
 500:	00812423          	sw	s0,8(sp)
 504:	00912223          	sw	s1,4(sp)
 508:	00112623          	sw	ra,12(sp)
 50c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 510:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 514:	00058413          	mv	s0,a1
 518:	00151593          	slli	a1,a0,0x1
 51c:	00078513          	mv	a0,a5
 520:	00060493          	mv	s1,a2
 524:	049000ef          	jal	ra,d6c <__hidden___udivsi3>
 528:	01051513          	slli	a0,a0,0x10
 52c:	000017b7          	lui	a5,0x1
 530:	01055513          	srli	a0,a0,0x10
 534:	00000713          	li	a4,0
 538:	ffe78793          	addi	a5,a5,-2 # ffe <numbers.1+0x12e>
 53c:	04a7e463          	bltu	a5,a0,584 <neorv32_uart0_setup+0x88>
 540:	0034f493          	andi	s1,s1,3
 544:	01449493          	slli	s1,s1,0x14
 548:	00347413          	andi	s0,s0,3
 54c:	fff50793          	addi	a5,a0,-1
 550:	0097e7b3          	or	a5,a5,s1
 554:	01641413          	slli	s0,s0,0x16
 558:	0087e7b3          	or	a5,a5,s0
 55c:	01871713          	slli	a4,a4,0x18
 560:	00c12083          	lw	ra,12(sp)
 564:	00812403          	lw	s0,8(sp)
 568:	00e7e7b3          	or	a5,a5,a4
 56c:	10000737          	lui	a4,0x10000
 570:	00e7e7b3          	or	a5,a5,a4
 574:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 578:	00412483          	lw	s1,4(sp)
 57c:	01010113          	addi	sp,sp,16
 580:	00008067          	ret
 584:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffee76>
 588:	0fd6f693          	andi	a3,a3,253
 58c:	00069a63          	bnez	a3,5a0 <neorv32_uart0_setup+0xa4>
 590:	00355513          	srli	a0,a0,0x3
 594:	00170713          	addi	a4,a4,1
 598:	0ff77713          	zext.b	a4,a4
 59c:	fa1ff06f          	j	53c <neorv32_uart0_setup+0x40>
 5a0:	00155513          	srli	a0,a0,0x1
 5a4:	ff1ff06f          	j	594 <neorv32_uart0_setup+0x98>

000005a8 <neorv32_uart0_putc>:
 5a8:	00040737          	lui	a4,0x40
 5ac:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 5b0:	00e7f7b3          	and	a5,a5,a4
 5b4:	fe079ce3          	bnez	a5,5ac <neorv32_uart0_putc+0x4>
 5b8:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 5bc:	00008067          	ret

000005c0 <neorv32_uart0_print>:
 5c0:	ff010113          	addi	sp,sp,-16
 5c4:	00812423          	sw	s0,8(sp)
 5c8:	01212023          	sw	s2,0(sp)
 5cc:	00112623          	sw	ra,12(sp)
 5d0:	00912223          	sw	s1,4(sp)
 5d4:	00050413          	mv	s0,a0
 5d8:	00a00913          	li	s2,10
 5dc:	00044483          	lbu	s1,0(s0)
 5e0:	00140413          	addi	s0,s0,1
 5e4:	00049e63          	bnez	s1,600 <neorv32_uart0_print+0x40>
 5e8:	00c12083          	lw	ra,12(sp)
 5ec:	00812403          	lw	s0,8(sp)
 5f0:	00412483          	lw	s1,4(sp)
 5f4:	00012903          	lw	s2,0(sp)
 5f8:	01010113          	addi	sp,sp,16
 5fc:	00008067          	ret
 600:	01249663          	bne	s1,s2,60c <neorv32_uart0_print+0x4c>
 604:	00d00513          	li	a0,13
 608:	fa1ff0ef          	jal	ra,5a8 <neorv32_uart0_putc>
 60c:	00048513          	mv	a0,s1
 610:	f99ff0ef          	jal	ra,5a8 <neorv32_uart0_putc>
 614:	fc9ff06f          	j	5dc <neorv32_uart0_print+0x1c>

00000618 <neorv32_uart0_printf>:
 618:	fa010113          	addi	sp,sp,-96
 61c:	04f12a23          	sw	a5,84(sp)
 620:	04410793          	addi	a5,sp,68
 624:	02912a23          	sw	s1,52(sp)
 628:	03212823          	sw	s2,48(sp)
 62c:	03312623          	sw	s3,44(sp)
 630:	03412423          	sw	s4,40(sp)
 634:	03512223          	sw	s5,36(sp)
 638:	03612023          	sw	s6,32(sp)
 63c:	01712e23          	sw	s7,28(sp)
 640:	01812c23          	sw	s8,24(sp)
 644:	01912a23          	sw	s9,20(sp)
 648:	02112e23          	sw	ra,60(sp)
 64c:	02812c23          	sw	s0,56(sp)
 650:	00050493          	mv	s1,a0
 654:	04b12223          	sw	a1,68(sp)
 658:	04c12423          	sw	a2,72(sp)
 65c:	04d12623          	sw	a3,76(sp)
 660:	04e12823          	sw	a4,80(sp)
 664:	05012c23          	sw	a6,88(sp)
 668:	05112e23          	sw	a7,92(sp)
 66c:	00f12023          	sw	a5,0(sp)
 670:	02500a13          	li	s4,37
 674:	00a00a93          	li	s5,10
 678:	07000913          	li	s2,112
 67c:	07500b13          	li	s6,117
 680:	07800b93          	li	s7,120
 684:	07300c13          	li	s8,115
 688:	06300993          	li	s3,99
 68c:	06400c93          	li	s9,100
 690:	0004c403          	lbu	s0,0(s1)
 694:	02041c63          	bnez	s0,6cc <neorv32_uart0_printf+0xb4>
 698:	03c12083          	lw	ra,60(sp)
 69c:	03812403          	lw	s0,56(sp)
 6a0:	03412483          	lw	s1,52(sp)
 6a4:	03012903          	lw	s2,48(sp)
 6a8:	02c12983          	lw	s3,44(sp)
 6ac:	02812a03          	lw	s4,40(sp)
 6b0:	02412a83          	lw	s5,36(sp)
 6b4:	02012b03          	lw	s6,32(sp)
 6b8:	01c12b83          	lw	s7,28(sp)
 6bc:	01812c03          	lw	s8,24(sp)
 6c0:	01412c83          	lw	s9,20(sp)
 6c4:	06010113          	addi	sp,sp,96
 6c8:	00008067          	ret
 6cc:	11441463          	bne	s0,s4,7d4 <neorv32_uart0_printf+0x1bc>
 6d0:	0014c403          	lbu	s0,1(s1)
 6d4:	0f240263          	beq	s0,s2,7b8 <neorv32_uart0_printf+0x1a0>
 6d8:	06896263          	bltu	s2,s0,73c <neorv32_uart0_printf+0x124>
 6dc:	09340463          	beq	s0,s3,764 <neorv32_uart0_printf+0x14c>
 6e0:	0089ee63          	bltu	s3,s0,6fc <neorv32_uart0_printf+0xe4>
 6e4:	05800793          	li	a5,88
 6e8:	0af40663          	beq	s0,a5,794 <neorv32_uart0_printf+0x17c>
 6ec:	02500513          	li	a0,37
 6f0:	eb9ff0ef          	jal	ra,5a8 <neorv32_uart0_putc>
 6f4:	00040513          	mv	a0,s0
 6f8:	07c0006f          	j	774 <neorv32_uart0_printf+0x15c>
 6fc:	01940663          	beq	s0,s9,708 <neorv32_uart0_printf+0xf0>
 700:	06900793          	li	a5,105
 704:	fef414e3          	bne	s0,a5,6ec <neorv32_uart0_printf+0xd4>
 708:	00012783          	lw	a5,0(sp)
 70c:	0007a403          	lw	s0,0(a5)
 710:	00478713          	addi	a4,a5,4
 714:	00e12023          	sw	a4,0(sp)
 718:	00045863          	bgez	s0,728 <neorv32_uart0_printf+0x110>
 71c:	02d00513          	li	a0,45
 720:	40800433          	neg	s0,s0
 724:	e85ff0ef          	jal	ra,5a8 <neorv32_uart0_putc>
 728:	00410593          	addi	a1,sp,4
 72c:	00040513          	mv	a0,s0
 730:	c4dff0ef          	jal	ra,37c <__neorv32_uart_itoa>
 734:	00410513          	addi	a0,sp,4
 738:	0200006f          	j	758 <neorv32_uart0_printf+0x140>
 73c:	05640063          	beq	s0,s6,77c <neorv32_uart0_printf+0x164>
 740:	07740c63          	beq	s0,s7,7b8 <neorv32_uart0_printf+0x1a0>
 744:	fb8414e3          	bne	s0,s8,6ec <neorv32_uart0_printf+0xd4>
 748:	00012783          	lw	a5,0(sp)
 74c:	0007a503          	lw	a0,0(a5)
 750:	00478713          	addi	a4,a5,4
 754:	00e12023          	sw	a4,0(sp)
 758:	e69ff0ef          	jal	ra,5c0 <neorv32_uart0_print>
 75c:	00248493          	addi	s1,s1,2
 760:	f31ff06f          	j	690 <neorv32_uart0_printf+0x78>
 764:	00012783          	lw	a5,0(sp)
 768:	0007c503          	lbu	a0,0(a5)
 76c:	00478713          	addi	a4,a5,4
 770:	00e12023          	sw	a4,0(sp)
 774:	e35ff0ef          	jal	ra,5a8 <neorv32_uart0_putc>
 778:	fe5ff06f          	j	75c <neorv32_uart0_printf+0x144>
 77c:	00012783          	lw	a5,0(sp)
 780:	00410593          	addi	a1,sp,4
 784:	00478713          	addi	a4,a5,4
 788:	0007a503          	lw	a0,0(a5)
 78c:	00e12023          	sw	a4,0(sp)
 790:	fa1ff06f          	j	730 <neorv32_uart0_printf+0x118>
 794:	00012783          	lw	a5,0(sp)
 798:	00410593          	addi	a1,sp,4
 79c:	0007a503          	lw	a0,0(a5)
 7a0:	00478713          	addi	a4,a5,4
 7a4:	00e12023          	sw	a4,0(sp)
 7a8:	cddff0ef          	jal	ra,484 <__neorv32_uart_tohex>
 7ac:	00410513          	addi	a0,sp,4
 7b0:	d11ff0ef          	jal	ra,4c0 <__neorv32_uart_touppercase.constprop.0>
 7b4:	f81ff06f          	j	734 <neorv32_uart0_printf+0x11c>
 7b8:	00012783          	lw	a5,0(sp)
 7bc:	00410593          	addi	a1,sp,4
 7c0:	0007a503          	lw	a0,0(a5)
 7c4:	00478713          	addi	a4,a5,4
 7c8:	00e12023          	sw	a4,0(sp)
 7cc:	cb9ff0ef          	jal	ra,484 <__neorv32_uart_tohex>
 7d0:	f65ff06f          	j	734 <neorv32_uart0_printf+0x11c>
 7d4:	01541663          	bne	s0,s5,7e0 <neorv32_uart0_printf+0x1c8>
 7d8:	00d00513          	li	a0,13
 7dc:	dcdff0ef          	jal	ra,5a8 <neorv32_uart0_putc>
 7e0:	00040513          	mv	a0,s0
 7e4:	00148493          	addi	s1,s1,1
 7e8:	dc1ff0ef          	jal	ra,5a8 <neorv32_uart0_putc>
 7ec:	ea5ff06f          	j	690 <neorv32_uart0_printf+0x78>

000007f0 <__neorv32_cpu_irq_id_check>:
 7f0:	01f00793          	li	a5,31
 7f4:	00a7ee63          	bltu	a5,a0,810 <__heap_size+0x10>
 7f8:	ffff17b7          	lui	a5,0xffff1
 7fc:	88878793          	addi	a5,a5,-1912 # ffff0888 <__crt0_io_space_begin+0xffff0a88>
 800:	00a7d533          	srl	a0,a5,a0
 804:	00157513          	andi	a0,a0,1
 808:	00154513          	xori	a0,a0,1
 80c:	00008067          	ret
 810:	00100513          	li	a0,1
 814:	00008067          	ret

00000818 <neorv32_cpu_irq_enable>:
 818:	ff010113          	addi	sp,sp,-16
 81c:	00812423          	sw	s0,8(sp)
 820:	00112623          	sw	ra,12(sp)
 824:	00050413          	mv	s0,a0
 828:	fc9ff0ef          	jal	ra,7f0 <__neorv32_cpu_irq_id_check>
 82c:	02051063          	bnez	a0,84c <neorv32_cpu_irq_enable+0x34>
 830:	00100793          	li	a5,1
 834:	008797b3          	sll	a5,a5,s0
 838:	3047a073          	csrs	mie,a5
 83c:	00c12083          	lw	ra,12(sp)
 840:	00812403          	lw	s0,8(sp)
 844:	01010113          	addi	sp,sp,16
 848:	00008067          	ret
 84c:	00100513          	li	a0,1
 850:	fedff06f          	j	83c <neorv32_cpu_irq_enable+0x24>

00000854 <__neorv32_rte_core>:
 854:	fc010113          	addi	sp,sp,-64
 858:	02112e23          	sw	ra,60(sp)
 85c:	02512c23          	sw	t0,56(sp)
 860:	02612a23          	sw	t1,52(sp)
 864:	02712823          	sw	t2,48(sp)
 868:	02a12623          	sw	a0,44(sp)
 86c:	02b12423          	sw	a1,40(sp)
 870:	02c12223          	sw	a2,36(sp)
 874:	02d12023          	sw	a3,32(sp)
 878:	00e12e23          	sw	a4,28(sp)
 87c:	00f12c23          	sw	a5,24(sp)
 880:	01012a23          	sw	a6,20(sp)
 884:	01112823          	sw	a7,16(sp)
 888:	01c12623          	sw	t3,12(sp)
 88c:	01d12423          	sw	t4,8(sp)
 890:	01e12223          	sw	t5,4(sp)
 894:	01f12023          	sw	t6,0(sp)
 898:	34102773          	csrr	a4,mepc
 89c:	34071073          	csrw	mscratch,a4
 8a0:	342027f3          	csrr	a5,mcause
 8a4:	0407c663          	bltz	a5,8f0 <__neorv32_rte_core+0x9c>
 8a8:	00075683          	lhu	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ee78>
 8ac:	00300593          	li	a1,3
 8b0:	0036f693          	andi	a3,a3,3
 8b4:	00270613          	addi	a2,a4,2
 8b8:	00b69463          	bne	a3,a1,8c0 <__neorv32_rte_core+0x6c>
 8bc:	00470613          	addi	a2,a4,4
 8c0:	34161073          	csrw	mepc,a2
 8c4:	00b00713          	li	a4,11
 8c8:	00f77863          	bgeu	a4,a5,8d8 <__neorv32_rte_core+0x84>
 8cc:	000017b7          	lui	a5,0x1
 8d0:	ac078793          	addi	a5,a5,-1344 # ac0 <__neorv32_rte_debug_exc_handler>
 8d4:	0500006f          	j	924 <__neorv32_rte_core+0xd0>
 8d8:	00001737          	lui	a4,0x1
 8dc:	00279793          	slli	a5,a5,0x2
 8e0:	edc70713          	addi	a4,a4,-292 # edc <numbers.1+0xc>
 8e4:	00e787b3          	add	a5,a5,a4
 8e8:	0007a783          	lw	a5,0(a5)
 8ec:	00078067          	jr	a5
 8f0:	80000737          	lui	a4,0x80000
 8f4:	ffd74713          	xori	a4,a4,-3
 8f8:	00e787b3          	add	a5,a5,a4
 8fc:	01c00713          	li	a4,28
 900:	fcf766e3          	bltu	a4,a5,8cc <__neorv32_rte_core+0x78>
 904:	00001737          	lui	a4,0x1
 908:	00279793          	slli	a5,a5,0x2
 90c:	f0c70713          	addi	a4,a4,-244 # f0c <numbers.1+0x3c>
 910:	00e787b3          	add	a5,a5,a4
 914:	0007a783          	lw	a5,0(a5)
 918:	00078067          	jr	a5
 91c:	800007b7          	lui	a5,0x80000
 920:	0807a783          	lw	a5,128(a5) # 80000080 <__crt0_io_space_begin+0x80000280>
 924:	000780e7          	jalr	a5
 928:	03c12083          	lw	ra,60(sp)
 92c:	03812283          	lw	t0,56(sp)
 930:	03412303          	lw	t1,52(sp)
 934:	03012383          	lw	t2,48(sp)
 938:	02c12503          	lw	a0,44(sp)
 93c:	02812583          	lw	a1,40(sp)
 940:	02412603          	lw	a2,36(sp)
 944:	02012683          	lw	a3,32(sp)
 948:	01c12703          	lw	a4,28(sp)
 94c:	01812783          	lw	a5,24(sp)
 950:	01412803          	lw	a6,20(sp)
 954:	01012883          	lw	a7,16(sp)
 958:	00c12e03          	lw	t3,12(sp)
 95c:	00812e83          	lw	t4,8(sp)
 960:	00412f03          	lw	t5,4(sp)
 964:	00012f83          	lw	t6,0(sp)
 968:	04010113          	addi	sp,sp,64
 96c:	30200073          	mret
 970:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x4>
 974:	fb1ff06f          	j	924 <__neorv32_rte_core+0xd0>
 978:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x8>
 97c:	fa9ff06f          	j	924 <__neorv32_rte_core+0xd0>
 980:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0xc>
 984:	fa1ff06f          	j	924 <__neorv32_rte_core+0xd0>
 988:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x10>
 98c:	f99ff06f          	j	924 <__neorv32_rte_core+0xd0>
 990:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x14>
 994:	f91ff06f          	j	924 <__neorv32_rte_core+0xd0>
 998:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x18>
 99c:	f89ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9a0:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x1c>
 9a4:	f81ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9a8:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x20>
 9ac:	f79ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9b0:	8a41a783          	lw	a5,-1884(gp) # 800000a4 <__neorv32_rte_vector_lut+0x24>
 9b4:	f71ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9b8:	8a81a783          	lw	a5,-1880(gp) # 800000a8 <__neorv32_rte_vector_lut+0x28>
 9bc:	f69ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9c0:	8ac1a783          	lw	a5,-1876(gp) # 800000ac <__neorv32_rte_vector_lut+0x2c>
 9c4:	f61ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9c8:	8b01a783          	lw	a5,-1872(gp) # 800000b0 <__neorv32_rte_vector_lut+0x30>
 9cc:	f59ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9d0:	8b41a783          	lw	a5,-1868(gp) # 800000b4 <__neorv32_rte_vector_lut+0x34>
 9d4:	f51ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9d8:	8b81a783          	lw	a5,-1864(gp) # 800000b8 <__neorv32_rte_vector_lut+0x38>
 9dc:	f49ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9e0:	8bc1a783          	lw	a5,-1860(gp) # 800000bc <__neorv32_rte_vector_lut+0x3c>
 9e4:	f41ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9e8:	8c01a783          	lw	a5,-1856(gp) # 800000c0 <__neorv32_rte_vector_lut+0x40>
 9ec:	f39ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9f0:	8c41a783          	lw	a5,-1852(gp) # 800000c4 <__neorv32_rte_vector_lut+0x44>
 9f4:	f31ff06f          	j	924 <__neorv32_rte_core+0xd0>
 9f8:	8c81a783          	lw	a5,-1848(gp) # 800000c8 <__neorv32_rte_vector_lut+0x48>
 9fc:	f29ff06f          	j	924 <__neorv32_rte_core+0xd0>
 a00:	8cc1a783          	lw	a5,-1844(gp) # 800000cc <__neorv32_rte_vector_lut+0x4c>
 a04:	f21ff06f          	j	924 <__neorv32_rte_core+0xd0>
 a08:	8d01a783          	lw	a5,-1840(gp) # 800000d0 <__neorv32_rte_vector_lut+0x50>
 a0c:	f19ff06f          	j	924 <__neorv32_rte_core+0xd0>
 a10:	8d41a783          	lw	a5,-1836(gp) # 800000d4 <__neorv32_rte_vector_lut+0x54>
 a14:	f11ff06f          	j	924 <__neorv32_rte_core+0xd0>
 a18:	8d81a783          	lw	a5,-1832(gp) # 800000d8 <__neorv32_rte_vector_lut+0x58>
 a1c:	f09ff06f          	j	924 <__neorv32_rte_core+0xd0>
 a20:	8dc1a783          	lw	a5,-1828(gp) # 800000dc <__neorv32_rte_vector_lut+0x5c>
 a24:	f01ff06f          	j	924 <__neorv32_rte_core+0xd0>
 a28:	8e01a783          	lw	a5,-1824(gp) # 800000e0 <__neorv32_rte_vector_lut+0x60>
 a2c:	ef9ff06f          	j	924 <__neorv32_rte_core+0xd0>
 a30:	8e41a783          	lw	a5,-1820(gp) # 800000e4 <__neorv32_rte_vector_lut+0x64>
 a34:	ef1ff06f          	j	924 <__neorv32_rte_core+0xd0>
 a38:	8e81a783          	lw	a5,-1816(gp) # 800000e8 <__neorv32_rte_vector_lut+0x68>
 a3c:	ee9ff06f          	j	924 <__neorv32_rte_core+0xd0>
 a40:	8ec1a783          	lw	a5,-1812(gp) # 800000ec <__neorv32_rte_vector_lut+0x6c>
 a44:	ee1ff06f          	j	924 <__neorv32_rte_core+0xd0>
 a48:	8f01a783          	lw	a5,-1808(gp) # 800000f0 <__neorv32_rte_vector_lut+0x70>
 a4c:	ed9ff06f          	j	924 <__neorv32_rte_core+0xd0>

00000a50 <__neorv32_rte_print_hex_word>:
 a50:	fe010113          	addi	sp,sp,-32
 a54:	01212823          	sw	s2,16(sp)
 a58:	00050913          	mv	s2,a0
 a5c:	00001537          	lui	a0,0x1
 a60:	00912a23          	sw	s1,20(sp)
 a64:	f8050513          	addi	a0,a0,-128 # f80 <numbers.1+0xb0>
 a68:	000014b7          	lui	s1,0x1
 a6c:	00812c23          	sw	s0,24(sp)
 a70:	01312623          	sw	s3,12(sp)
 a74:	00112e23          	sw	ra,28(sp)
 a78:	01c00413          	li	s0,28
 a7c:	b45ff0ef          	jal	ra,5c0 <neorv32_uart0_print>
 a80:	17848493          	addi	s1,s1,376 # 1178 <hex_symbols.0>
 a84:	ffc00993          	li	s3,-4
 a88:	008957b3          	srl	a5,s2,s0
 a8c:	00f7f793          	andi	a5,a5,15
 a90:	00f487b3          	add	a5,s1,a5
 a94:	0007c503          	lbu	a0,0(a5)
 a98:	ffc40413          	addi	s0,s0,-4
 a9c:	b0dff0ef          	jal	ra,5a8 <neorv32_uart0_putc>
 aa0:	ff3414e3          	bne	s0,s3,a88 <__neorv32_rte_print_hex_word+0x38>
 aa4:	01c12083          	lw	ra,28(sp)
 aa8:	01812403          	lw	s0,24(sp)
 aac:	01412483          	lw	s1,20(sp)
 ab0:	01012903          	lw	s2,16(sp)
 ab4:	00c12983          	lw	s3,12(sp)
 ab8:	02010113          	addi	sp,sp,32
 abc:	00008067          	ret

00000ac0 <__neorv32_rte_debug_exc_handler>:
 ac0:	ff010113          	addi	sp,sp,-16
 ac4:	00112623          	sw	ra,12(sp)
 ac8:	00812423          	sw	s0,8(sp)
 acc:	00912223          	sw	s1,4(sp)
 ad0:	a1dff0ef          	jal	ra,4ec <neorv32_uart0_available>
 ad4:	1a050e63          	beqz	a0,c90 <__neorv32_rte_debug_exc_handler+0x1d0>
 ad8:	00001537          	lui	a0,0x1
 adc:	f8450513          	addi	a0,a0,-124 # f84 <numbers.1+0xb4>
 ae0:	ae1ff0ef          	jal	ra,5c0 <neorv32_uart0_print>
 ae4:	34202473          	csrr	s0,mcause
 ae8:	00900713          	li	a4,9
 aec:	00f47793          	andi	a5,s0,15
 af0:	03078493          	addi	s1,a5,48
 af4:	00f77463          	bgeu	a4,a5,afc <__neorv32_rte_debug_exc_handler+0x3c>
 af8:	05778493          	addi	s1,a5,87
 afc:	00b00793          	li	a5,11
 b00:	0087ee63          	bltu	a5,s0,b1c <__neorv32_rte_debug_exc_handler+0x5c>
 b04:	00001737          	lui	a4,0x1
 b08:	00241793          	slli	a5,s0,0x2
 b0c:	14870713          	addi	a4,a4,328 # 1148 <numbers.1+0x278>
 b10:	00e787b3          	add	a5,a5,a4
 b14:	0007a783          	lw	a5,0(a5)
 b18:	00078067          	jr	a5
 b1c:	800007b7          	lui	a5,0x80000
 b20:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 b24:	14e40463          	beq	s0,a4,c6c <__neorv32_rte_debug_exc_handler+0x1ac>
 b28:	02876663          	bltu	a4,s0,b54 <__neorv32_rte_debug_exc_handler+0x94>
 b2c:	00378713          	addi	a4,a5,3
 b30:	12e40263          	beq	s0,a4,c54 <__neorv32_rte_debug_exc_handler+0x194>
 b34:	00778793          	addi	a5,a5,7
 b38:	12f40463          	beq	s0,a5,c60 <__neorv32_rte_debug_exc_handler+0x1a0>
 b3c:	00001537          	lui	a0,0x1
 b40:	0e450513          	addi	a0,a0,228 # 10e4 <numbers.1+0x214>
 b44:	a7dff0ef          	jal	ra,5c0 <neorv32_uart0_print>
 b48:	00040513          	mv	a0,s0
 b4c:	f05ff0ef          	jal	ra,a50 <__neorv32_rte_print_hex_word>
 b50:	0280006f          	j	b78 <__neorv32_rte_debug_exc_handler+0xb8>
 b54:	ff07c793          	xori	a5,a5,-16
 b58:	00f407b3          	add	a5,s0,a5
 b5c:	00f00713          	li	a4,15
 b60:	fcf76ee3          	bltu	a4,a5,b3c <__neorv32_rte_debug_exc_handler+0x7c>
 b64:	00001537          	lui	a0,0x1
 b68:	0d450513          	addi	a0,a0,212 # 10d4 <numbers.1+0x204>
 b6c:	a55ff0ef          	jal	ra,5c0 <neorv32_uart0_print>
 b70:	00048513          	mv	a0,s1
 b74:	a35ff0ef          	jal	ra,5a8 <neorv32_uart0_putc>
 b78:	00001537          	lui	a0,0x1
 b7c:	12850513          	addi	a0,a0,296 # 1128 <numbers.1+0x258>
 b80:	a41ff0ef          	jal	ra,5c0 <neorv32_uart0_print>
 b84:	34002573          	csrr	a0,mscratch
 b88:	ec9ff0ef          	jal	ra,a50 <__neorv32_rte_print_hex_word>
 b8c:	00001537          	lui	a0,0x1
 b90:	13050513          	addi	a0,a0,304 # 1130 <numbers.1+0x260>
 b94:	a2dff0ef          	jal	ra,5c0 <neorv32_uart0_print>
 b98:	34302573          	csrr	a0,mtval
 b9c:	eb5ff0ef          	jal	ra,a50 <__neorv32_rte_print_hex_word>
 ba0:	00812403          	lw	s0,8(sp)
 ba4:	00c12083          	lw	ra,12(sp)
 ba8:	00412483          	lw	s1,4(sp)
 bac:	00001537          	lui	a0,0x1
 bb0:	13c50513          	addi	a0,a0,316 # 113c <numbers.1+0x26c>
 bb4:	01010113          	addi	sp,sp,16
 bb8:	a09ff06f          	j	5c0 <neorv32_uart0_print>
 bbc:	00001537          	lui	a0,0x1
 bc0:	f8c50513          	addi	a0,a0,-116 # f8c <numbers.1+0xbc>
 bc4:	9fdff0ef          	jal	ra,5c0 <neorv32_uart0_print>
 bc8:	fb1ff06f          	j	b78 <__neorv32_rte_debug_exc_handler+0xb8>
 bcc:	00001537          	lui	a0,0x1
 bd0:	fac50513          	addi	a0,a0,-84 # fac <numbers.1+0xdc>
 bd4:	9edff0ef          	jal	ra,5c0 <neorv32_uart0_print>
 bd8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 bdc:	0a07d463          	bgez	a5,c84 <__neorv32_rte_debug_exc_handler+0x1c4>
 be0:	0017f793          	andi	a5,a5,1
 be4:	08078a63          	beqz	a5,c78 <__neorv32_rte_debug_exc_handler+0x1b8>
 be8:	00001537          	lui	a0,0x1
 bec:	0fc50513          	addi	a0,a0,252 # 10fc <numbers.1+0x22c>
 bf0:	fd5ff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 bf4:	00001537          	lui	a0,0x1
 bf8:	fc850513          	addi	a0,a0,-56 # fc8 <numbers.1+0xf8>
 bfc:	fc9ff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 c00:	00001537          	lui	a0,0x1
 c04:	fdc50513          	addi	a0,a0,-36 # fdc <numbers.1+0x10c>
 c08:	fbdff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 c0c:	00001537          	lui	a0,0x1
 c10:	fe850513          	addi	a0,a0,-24 # fe8 <numbers.1+0x118>
 c14:	fb1ff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 c18:	00001537          	lui	a0,0x1
 c1c:	00050513          	mv	a0,a0
 c20:	fb5ff06f          	j	bd4 <__neorv32_rte_debug_exc_handler+0x114>
 c24:	00001537          	lui	a0,0x1
 c28:	01450513          	addi	a0,a0,20 # 1014 <numbers.1+0x144>
 c2c:	f99ff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 c30:	00001537          	lui	a0,0x1
 c34:	03050513          	addi	a0,a0,48 # 1030 <numbers.1+0x160>
 c38:	f9dff06f          	j	bd4 <__neorv32_rte_debug_exc_handler+0x114>
 c3c:	00001537          	lui	a0,0x1
 c40:	04450513          	addi	a0,a0,68 # 1044 <numbers.1+0x174>
 c44:	f81ff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 c48:	00001537          	lui	a0,0x1
 c4c:	06450513          	addi	a0,a0,100 # 1064 <numbers.1+0x194>
 c50:	f75ff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 c54:	00001537          	lui	a0,0x1
 c58:	08450513          	addi	a0,a0,132 # 1084 <numbers.1+0x1b4>
 c5c:	f69ff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 c60:	00001537          	lui	a0,0x1
 c64:	0a050513          	addi	a0,a0,160 # 10a0 <numbers.1+0x1d0>
 c68:	f5dff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 c6c:	00001537          	lui	a0,0x1
 c70:	0b850513          	addi	a0,a0,184 # 10b8 <numbers.1+0x1e8>
 c74:	f51ff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 c78:	00001537          	lui	a0,0x1
 c7c:	10c50513          	addi	a0,a0,268 # 110c <numbers.1+0x23c>
 c80:	f45ff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 c84:	00001537          	lui	a0,0x1
 c88:	11c50513          	addi	a0,a0,284 # 111c <numbers.1+0x24c>
 c8c:	f39ff06f          	j	bc4 <__neorv32_rte_debug_exc_handler+0x104>
 c90:	00c12083          	lw	ra,12(sp)
 c94:	00812403          	lw	s0,8(sp)
 c98:	00412483          	lw	s1,4(sp)
 c9c:	01010113          	addi	sp,sp,16
 ca0:	00008067          	ret

00000ca4 <neorv32_rte_exception_install>:
 ca4:	01f00793          	li	a5,31
 ca8:	02a7e063          	bltu	a5,a0,cc8 <neorv32_rte_exception_install+0x24>
 cac:	800007b7          	lui	a5,0x80000
 cb0:	00251513          	slli	a0,a0,0x2
 cb4:	08078793          	addi	a5,a5,128 # 80000080 <__crt0_io_space_begin+0x80000280>
 cb8:	00a787b3          	add	a5,a5,a0
 cbc:	00b7a023          	sw	a1,0(a5)
 cc0:	00000513          	li	a0,0
 cc4:	00008067          	ret
 cc8:	00100513          	li	a0,1
 ccc:	00008067          	ret

00000cd0 <neorv32_rte_exception_uninstall>:
 cd0:	01f00793          	li	a5,31
 cd4:	02a7e463          	bltu	a5,a0,cfc <neorv32_rte_exception_uninstall+0x2c>
 cd8:	800007b7          	lui	a5,0x80000
 cdc:	00251513          	slli	a0,a0,0x2
 ce0:	08078793          	addi	a5,a5,128 # 80000080 <__crt0_io_space_begin+0x80000280>
 ce4:	00001737          	lui	a4,0x1
 ce8:	00a787b3          	add	a5,a5,a0
 cec:	ac070713          	addi	a4,a4,-1344 # ac0 <__neorv32_rte_debug_exc_handler>
 cf0:	00e7a023          	sw	a4,0(a5)
 cf4:	00000513          	li	a0,0
 cf8:	00008067          	ret
 cfc:	00100513          	li	a0,1
 d00:	00008067          	ret

00000d04 <neorv32_rte_setup>:
 d04:	ff010113          	addi	sp,sp,-16
 d08:	000017b7          	lui	a5,0x1
 d0c:	00112623          	sw	ra,12(sp)
 d10:	00812423          	sw	s0,8(sp)
 d14:	00912223          	sw	s1,4(sp)
 d18:	85478793          	addi	a5,a5,-1964 # 854 <__neorv32_rte_core>
 d1c:	30579073          	csrw	mtvec,a5
 d20:	00000413          	li	s0,0
 d24:	01d00493          	li	s1,29
 d28:	00040513          	mv	a0,s0
 d2c:	00140413          	addi	s0,s0,1
 d30:	0ff47413          	zext.b	s0,s0
 d34:	f9dff0ef          	jal	ra,cd0 <neorv32_rte_exception_uninstall>
 d38:	fe9418e3          	bne	s0,s1,d28 <neorv32_rte_setup+0x24>
 d3c:	00c12083          	lw	ra,12(sp)
 d40:	00812403          	lw	s0,8(sp)
 d44:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 d48:	00412483          	lw	s1,4(sp)
 d4c:	01010113          	addi	sp,sp,16
 d50:	00008067          	ret

00000d54 <neorv32_gpio_port_set>:
 d54:	fc000793          	li	a5,-64
 d58:	00a7a423          	sw	a0,8(a5)
 d5c:	00b7a623          	sw	a1,12(a5)
 d60:	00008067          	ret

00000d64 <__divsi3>:
 d64:	06054063          	bltz	a0,dc4 <__umodsi3+0x10>
 d68:	0605c663          	bltz	a1,dd4 <__umodsi3+0x20>

00000d6c <__hidden___udivsi3>:
 d6c:	00058613          	mv	a2,a1
 d70:	00050593          	mv	a1,a0
 d74:	fff00513          	li	a0,-1
 d78:	02060c63          	beqz	a2,db0 <__hidden___udivsi3+0x44>
 d7c:	00100693          	li	a3,1
 d80:	00b67a63          	bgeu	a2,a1,d94 <__hidden___udivsi3+0x28>
 d84:	00c05863          	blez	a2,d94 <__hidden___udivsi3+0x28>
 d88:	00161613          	slli	a2,a2,0x1
 d8c:	00169693          	slli	a3,a3,0x1
 d90:	feb66ae3          	bltu	a2,a1,d84 <__hidden___udivsi3+0x18>
 d94:	00000513          	li	a0,0
 d98:	00c5e663          	bltu	a1,a2,da4 <__hidden___udivsi3+0x38>
 d9c:	40c585b3          	sub	a1,a1,a2
 da0:	00d56533          	or	a0,a0,a3
 da4:	0016d693          	srli	a3,a3,0x1
 da8:	00165613          	srli	a2,a2,0x1
 dac:	fe0696e3          	bnez	a3,d98 <__hidden___udivsi3+0x2c>
 db0:	00008067          	ret

00000db4 <__umodsi3>:
 db4:	00008293          	mv	t0,ra
 db8:	fb5ff0ef          	jal	ra,d6c <__hidden___udivsi3>
 dbc:	00058513          	mv	a0,a1
 dc0:	00028067          	jr	t0
 dc4:	40a00533          	neg	a0,a0
 dc8:	00b04863          	bgtz	a1,dd8 <__umodsi3+0x24>
 dcc:	40b005b3          	neg	a1,a1
 dd0:	f9dff06f          	j	d6c <__hidden___udivsi3>
 dd4:	40b005b3          	neg	a1,a1
 dd8:	00008293          	mv	t0,ra
 ddc:	f91ff0ef          	jal	ra,d6c <__hidden___udivsi3>
 de0:	40a00533          	neg	a0,a0
 de4:	00028067          	jr	t0

00000de8 <__modsi3>:
 de8:	00008293          	mv	t0,ra
 dec:	0005ca63          	bltz	a1,e00 <__modsi3+0x18>
 df0:	00054c63          	bltz	a0,e08 <__modsi3+0x20>
 df4:	f79ff0ef          	jal	ra,d6c <__hidden___udivsi3>
 df8:	00058513          	mv	a0,a1
 dfc:	00028067          	jr	t0
 e00:	40b005b3          	neg	a1,a1
 e04:	fe0558e3          	bgez	a0,df4 <__modsi3+0xc>
 e08:	40a00533          	neg	a0,a0
 e0c:	f61ff0ef          	jal	ra,d6c <__hidden___udivsi3>
 e10:	40b00533          	neg	a0,a1
 e14:	00028067          	jr	t0
