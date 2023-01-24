
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
  bc:	cdc58593          	addi	a1,a1,-804 # d94 <__crt0_copy_data_src_begin>
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
 178:	ff010113          	addi	sp,sp,-16
 17c:	00112623          	sw	ra,12(sp)
 180:	78c000ef          	jal	ra,90c <neorv32_rte_setup>
 184:	00005537          	lui	a0,0x5
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3d6c>
 194:	114000ef          	jal	ra,2a8 <neorv32_uart0_setup>
 198:	0b4000ef          	jal	ra,24c <neorv32_mtime_available>
 19c:	04050c63          	beqz	a0,1f4 <main+0x7c>
 1a0:	00001537          	lui	a0,0x1
 1a4:	a7450513          	addi	a0,a0,-1420 # a74 <__etext+0x28>
 1a8:	1c4000ef          	jal	ra,36c <neorv32_uart0_print>
 1ac:	00000513          	li	a0,0
 1b0:	00000593          	li	a1,0
 1b4:	7d4000ef          	jal	ra,988 <neorv32_gpio_port_set>
 1b8:	21000593          	li	a1,528
 1bc:	00b00513          	li	a0,11
 1c0:	6f0000ef          	jal	ra,8b0 <neorv32_rte_exception_install>
 1c4:	098000ef          	jal	ra,25c <neorv32_mtime_get_time>
 1c8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 1cc:	0017d793          	srli	a5,a5,0x1
 1d0:	00a78533          	add	a0,a5,a0
 1d4:	00f537b3          	sltu	a5,a0,a5
 1d8:	00b785b3          	add	a1,a5,a1
 1dc:	094000ef          	jal	ra,270 <neorv32_mtime_set_timecmp>
 1e0:	00700513          	li	a0,7
 1e4:	208000ef          	jal	ra,3ec <neorv32_cpu_irq_enable>
 1e8:	30046073          	csrsi	mstatus,8
 1ec:	10500073          	wfi
 1f0:	ffdff06f          	j	1ec <main+0x74>
 1f4:	00001537          	lui	a0,0x1
 1f8:	a4c50513          	addi	a0,a0,-1460 # a4c <__etext>
 1fc:	170000ef          	jal	ra,36c <neorv32_uart0_print>
 200:	00c12083          	lw	ra,12(sp)
 204:	00100513          	li	a0,1
 208:	01010113          	addi	sp,sp,16
 20c:	00008067          	ret

00000210 <mtime_irq_handler>:
 210:	ff010113          	addi	sp,sp,-16
 214:	00112623          	sw	ra,12(sp)
 218:	070000ef          	jal	ra,288 <neorv32_mtime_get_timecmp>
 21c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 220:	0017d793          	srli	a5,a5,0x1
 224:	00a78533          	add	a0,a5,a0
 228:	00f537b3          	sltu	a5,a0,a5
 22c:	00b785b3          	add	a1,a5,a1
 230:	040000ef          	jal	ra,270 <neorv32_mtime_set_timecmp>
 234:	02e00513          	li	a0,46
 238:	11c000ef          	jal	ra,354 <neorv32_uart0_putc>
 23c:	00c12083          	lw	ra,12(sp)
 240:	00000513          	li	a0,0
 244:	01010113          	addi	sp,sp,16
 248:	7100006f          	j	958 <neorv32_gpio_pin_toggle>

0000024c <neorv32_mtime_available>:
 24c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 250:	01155513          	srli	a0,a0,0x11
 254:	00157513          	andi	a0,a0,1
 258:	00008067          	ret

0000025c <neorv32_mtime_get_time>:
 25c:	f9402583          	lw	a1,-108(zero) # ffffff94 <__crt0_io_space_begin+0x194>
 260:	f9002503          	lw	a0,-112(zero) # ffffff90 <__crt0_io_space_begin+0x190>
 264:	f9402783          	lw	a5,-108(zero) # ffffff94 <__crt0_io_space_begin+0x194>
 268:	fef59ae3          	bne	a1,a5,25c <neorv32_mtime_get_time>
 26c:	00008067          	ret

00000270 <neorv32_mtime_set_timecmp>:
 270:	f9000793          	li	a5,-112
 274:	fff00713          	li	a4,-1
 278:	00e7a423          	sw	a4,8(a5)
 27c:	00b7a623          	sw	a1,12(a5)
 280:	00a7a423          	sw	a0,8(a5)
 284:	00008067          	ret

00000288 <neorv32_mtime_get_timecmp>:
 288:	f9000793          	li	a5,-112
 28c:	0087a503          	lw	a0,8(a5)
 290:	00c7a583          	lw	a1,12(a5)
 294:	00008067          	ret

00000298 <neorv32_uart0_available>:
 298:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 29c:	01255513          	srli	a0,a0,0x12
 2a0:	00157513          	andi	a0,a0,1
 2a4:	00008067          	ret

000002a8 <neorv32_uart0_setup>:
 2a8:	ff010113          	addi	sp,sp,-16
 2ac:	00812423          	sw	s0,8(sp)
 2b0:	00912223          	sw	s1,4(sp)
 2b4:	00112623          	sw	ra,12(sp)
 2b8:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 2bc:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 2c0:	00058413          	mv	s0,a1
 2c4:	00151593          	slli	a1,a0,0x1
 2c8:	00078513          	mv	a0,a5
 2cc:	00060493          	mv	s1,a2
 2d0:	6d0000ef          	jal	ra,9a0 <__hidden___udivsi3>
 2d4:	01051513          	slli	a0,a0,0x10
 2d8:	000017b7          	lui	a5,0x1
 2dc:	01055513          	srli	a0,a0,0x10
 2e0:	00000713          	li	a4,0
 2e4:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x26a>
 2e8:	04a7e463          	bltu	a5,a0,330 <neorv32_uart0_setup+0x88>
 2ec:	0034f493          	andi	s1,s1,3
 2f0:	01449493          	slli	s1,s1,0x14
 2f4:	00347413          	andi	s0,s0,3
 2f8:	fff50793          	addi	a5,a0,-1
 2fc:	0097e7b3          	or	a5,a5,s1
 300:	01641413          	slli	s0,s0,0x16
 304:	0087e7b3          	or	a5,a5,s0
 308:	01871713          	slli	a4,a4,0x18
 30c:	00c12083          	lw	ra,12(sp)
 310:	00812403          	lw	s0,8(sp)
 314:	00e7e7b3          	or	a5,a5,a4
 318:	10000737          	lui	a4,0x10000
 31c:	00e7e7b3          	or	a5,a5,a4
 320:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 324:	00412483          	lw	s1,4(sp)
 328:	01010113          	addi	sp,sp,16
 32c:	00008067          	ret
 330:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff26a>
 334:	0fd6f693          	andi	a3,a3,253
 338:	00069a63          	bnez	a3,34c <neorv32_uart0_setup+0xa4>
 33c:	00355513          	srli	a0,a0,0x3
 340:	00170713          	addi	a4,a4,1
 344:	0ff77713          	zext.b	a4,a4
 348:	fa1ff06f          	j	2e8 <neorv32_uart0_setup+0x40>
 34c:	00155513          	srli	a0,a0,0x1
 350:	ff1ff06f          	j	340 <neorv32_uart0_setup+0x98>

00000354 <neorv32_uart0_putc>:
 354:	00040737          	lui	a4,0x40
 358:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 35c:	00e7f7b3          	and	a5,a5,a4
 360:	fe079ce3          	bnez	a5,358 <neorv32_uart0_putc+0x4>
 364:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 368:	00008067          	ret

0000036c <neorv32_uart0_print>:
 36c:	ff010113          	addi	sp,sp,-16
 370:	00812423          	sw	s0,8(sp)
 374:	01212023          	sw	s2,0(sp)
 378:	00112623          	sw	ra,12(sp)
 37c:	00912223          	sw	s1,4(sp)
 380:	00050413          	mv	s0,a0
 384:	00a00913          	li	s2,10
 388:	00044483          	lbu	s1,0(s0)
 38c:	00140413          	addi	s0,s0,1
 390:	00049e63          	bnez	s1,3ac <neorv32_uart0_print+0x40>
 394:	00c12083          	lw	ra,12(sp)
 398:	00812403          	lw	s0,8(sp)
 39c:	00412483          	lw	s1,4(sp)
 3a0:	00012903          	lw	s2,0(sp)
 3a4:	01010113          	addi	sp,sp,16
 3a8:	00008067          	ret
 3ac:	01249663          	bne	s1,s2,3b8 <neorv32_uart0_print+0x4c>
 3b0:	00d00513          	li	a0,13
 3b4:	fa1ff0ef          	jal	ra,354 <neorv32_uart0_putc>
 3b8:	00048513          	mv	a0,s1
 3bc:	f99ff0ef          	jal	ra,354 <neorv32_uart0_putc>
 3c0:	fc9ff06f          	j	388 <neorv32_uart0_print+0x1c>

000003c4 <__neorv32_cpu_irq_id_check>:
 3c4:	01f00793          	li	a5,31
 3c8:	00a7ee63          	bltu	a5,a0,3e4 <__neorv32_cpu_irq_id_check+0x20>
 3cc:	ffff17b7          	lui	a5,0xffff1
 3d0:	88878793          	addi	a5,a5,-1912 # ffff0888 <__crt0_io_space_begin+0xffff0a88>
 3d4:	00a7d533          	srl	a0,a5,a0
 3d8:	00157513          	andi	a0,a0,1
 3dc:	00154513          	xori	a0,a0,1
 3e0:	00008067          	ret
 3e4:	00100513          	li	a0,1
 3e8:	00008067          	ret

000003ec <neorv32_cpu_irq_enable>:
 3ec:	ff010113          	addi	sp,sp,-16
 3f0:	00812423          	sw	s0,8(sp)
 3f4:	00112623          	sw	ra,12(sp)
 3f8:	00050413          	mv	s0,a0
 3fc:	fc9ff0ef          	jal	ra,3c4 <__neorv32_cpu_irq_id_check>
 400:	02051063          	bnez	a0,420 <neorv32_cpu_irq_enable+0x34>
 404:	00100793          	li	a5,1
 408:	008797b3          	sll	a5,a5,s0
 40c:	3047a073          	csrs	mie,a5
 410:	00c12083          	lw	ra,12(sp)
 414:	00812403          	lw	s0,8(sp)
 418:	01010113          	addi	sp,sp,16
 41c:	00008067          	ret
 420:	00100513          	li	a0,1
 424:	fedff06f          	j	410 <neorv32_cpu_irq_enable+0x24>

00000428 <__neorv32_rte_core>:
 428:	fc010113          	addi	sp,sp,-64
 42c:	02112e23          	sw	ra,60(sp)
 430:	02512c23          	sw	t0,56(sp)
 434:	02612a23          	sw	t1,52(sp)
 438:	02712823          	sw	t2,48(sp)
 43c:	02a12623          	sw	a0,44(sp)
 440:	02b12423          	sw	a1,40(sp)
 444:	02c12223          	sw	a2,36(sp)
 448:	02d12023          	sw	a3,32(sp)
 44c:	00e12e23          	sw	a4,28(sp)
 450:	00f12c23          	sw	a5,24(sp)
 454:	01012a23          	sw	a6,20(sp)
 458:	01112823          	sw	a7,16(sp)
 45c:	01c12623          	sw	t3,12(sp)
 460:	01d12423          	sw	t4,8(sp)
 464:	01e12223          	sw	t5,4(sp)
 468:	01f12023          	sw	t6,0(sp)
 46c:	34102773          	csrr	a4,mepc
 470:	34071073          	csrw	mscratch,a4
 474:	342027f3          	csrr	a5,mcause
 478:	0407c463          	bltz	a5,4c0 <__neorv32_rte_core+0x98>
 47c:	00075683          	lhu	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f26c>
 480:	00300593          	li	a1,3
 484:	0036f693          	andi	a3,a3,3
 488:	00270613          	addi	a2,a4,2
 48c:	00b69463          	bne	a3,a1,494 <__neorv32_rte_core+0x6c>
 490:	00470613          	addi	a2,a4,4
 494:	34161073          	csrw	mepc,a2
 498:	00b00713          	li	a4,11
 49c:	00f77663          	bgeu	a4,a5,4a8 <__neorv32_rte_core+0x80>
 4a0:	6cc00793          	li	a5,1740
 4a4:	0500006f          	j	4f4 <__neorv32_rte_core+0xcc>
 4a8:	00001737          	lui	a4,0x1
 4ac:	00279793          	slli	a5,a5,0x2
 4b0:	ae870713          	addi	a4,a4,-1304 # ae8 <__etext+0x9c>
 4b4:	00e787b3          	add	a5,a5,a4
 4b8:	0007a783          	lw	a5,0(a5)
 4bc:	00078067          	jr	a5
 4c0:	80000737          	lui	a4,0x80000
 4c4:	ffd74713          	xori	a4,a4,-3
 4c8:	00e787b3          	add	a5,a5,a4
 4cc:	01c00713          	li	a4,28
 4d0:	fcf768e3          	bltu	a4,a5,4a0 <__neorv32_rte_core+0x78>
 4d4:	00001737          	lui	a4,0x1
 4d8:	00279793          	slli	a5,a5,0x2
 4dc:	b1870713          	addi	a4,a4,-1256 # b18 <__etext+0xcc>
 4e0:	00e787b3          	add	a5,a5,a4
 4e4:	0007a783          	lw	a5,0(a5)
 4e8:	00078067          	jr	a5
 4ec:	800007b7          	lui	a5,0x80000
 4f0:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 4f4:	000780e7          	jalr	a5
 4f8:	03c12083          	lw	ra,60(sp)
 4fc:	03812283          	lw	t0,56(sp)
 500:	03412303          	lw	t1,52(sp)
 504:	03012383          	lw	t2,48(sp)
 508:	02c12503          	lw	a0,44(sp)
 50c:	02812583          	lw	a1,40(sp)
 510:	02412603          	lw	a2,36(sp)
 514:	02012683          	lw	a3,32(sp)
 518:	01c12703          	lw	a4,28(sp)
 51c:	01812783          	lw	a5,24(sp)
 520:	01412803          	lw	a6,20(sp)
 524:	01012883          	lw	a7,16(sp)
 528:	00c12e03          	lw	t3,12(sp)
 52c:	00812e83          	lw	t4,8(sp)
 530:	00412f03          	lw	t5,4(sp)
 534:	00012f83          	lw	t6,0(sp)
 538:	04010113          	addi	sp,sp,64
 53c:	30200073          	mret
 540:	800007b7          	lui	a5,0x80000
 544:	0047a783          	lw	a5,4(a5) # 80000004 <__crt0_io_space_begin+0x80000204>
 548:	fadff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 54c:	800007b7          	lui	a5,0x80000
 550:	0087a783          	lw	a5,8(a5) # 80000008 <__crt0_io_space_begin+0x80000208>
 554:	fa1ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 558:	800007b7          	lui	a5,0x80000
 55c:	00c7a783          	lw	a5,12(a5) # 8000000c <__crt0_io_space_begin+0x8000020c>
 560:	f95ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 564:	800007b7          	lui	a5,0x80000
 568:	0107a783          	lw	a5,16(a5) # 80000010 <__crt0_io_space_begin+0x80000210>
 56c:	f89ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 570:	800007b7          	lui	a5,0x80000
 574:	0147a783          	lw	a5,20(a5) # 80000014 <__crt0_io_space_begin+0x80000214>
 578:	f7dff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 57c:	800007b7          	lui	a5,0x80000
 580:	0187a783          	lw	a5,24(a5) # 80000018 <__crt0_io_space_begin+0x80000218>
 584:	f71ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 588:	800007b7          	lui	a5,0x80000
 58c:	01c7a783          	lw	a5,28(a5) # 8000001c <__crt0_io_space_begin+0x8000021c>
 590:	f65ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 594:	800007b7          	lui	a5,0x80000
 598:	0207a783          	lw	a5,32(a5) # 80000020 <__crt0_io_space_begin+0x80000220>
 59c:	f59ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 5a0:	800007b7          	lui	a5,0x80000
 5a4:	0247a783          	lw	a5,36(a5) # 80000024 <__crt0_io_space_begin+0x80000224>
 5a8:	f4dff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 5ac:	800007b7          	lui	a5,0x80000
 5b0:	0287a783          	lw	a5,40(a5) # 80000028 <__crt0_io_space_begin+0x80000228>
 5b4:	f41ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 5b8:	800007b7          	lui	a5,0x80000
 5bc:	02c7a783          	lw	a5,44(a5) # 8000002c <__crt0_io_space_begin+0x8000022c>
 5c0:	f35ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 5c4:	800007b7          	lui	a5,0x80000
 5c8:	0307a783          	lw	a5,48(a5) # 80000030 <__crt0_io_space_begin+0x80000230>
 5cc:	f29ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 5d0:	800007b7          	lui	a5,0x80000
 5d4:	0347a783          	lw	a5,52(a5) # 80000034 <__crt0_io_space_begin+0x80000234>
 5d8:	f1dff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 5dc:	800007b7          	lui	a5,0x80000
 5e0:	0387a783          	lw	a5,56(a5) # 80000038 <__crt0_io_space_begin+0x80000238>
 5e4:	f11ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 5e8:	800007b7          	lui	a5,0x80000
 5ec:	03c7a783          	lw	a5,60(a5) # 8000003c <__crt0_io_space_begin+0x8000023c>
 5f0:	f05ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 5f4:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 5f8:	efdff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 5fc:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 600:	ef5ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 604:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 608:	eedff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 60c:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 610:	ee5ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 614:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 618:	eddff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 61c:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 620:	ed5ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 624:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 628:	ecdff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 62c:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 630:	ec5ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 634:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 638:	ebdff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 63c:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 640:	eb5ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 644:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 648:	eadff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 64c:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 650:	ea5ff06f          	j	4f4 <__neorv32_rte_core+0xcc>
 654:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 658:	e9dff06f          	j	4f4 <__neorv32_rte_core+0xcc>

0000065c <__neorv32_rte_print_hex_word>:
 65c:	fe010113          	addi	sp,sp,-32
 660:	01212823          	sw	s2,16(sp)
 664:	00050913          	mv	s2,a0
 668:	00001537          	lui	a0,0x1
 66c:	00912a23          	sw	s1,20(sp)
 670:	b8c50513          	addi	a0,a0,-1140 # b8c <__etext+0x140>
 674:	000014b7          	lui	s1,0x1
 678:	00812c23          	sw	s0,24(sp)
 67c:	01312623          	sw	s3,12(sp)
 680:	00112e23          	sw	ra,28(sp)
 684:	01c00413          	li	s0,28
 688:	ce5ff0ef          	jal	ra,36c <neorv32_uart0_print>
 68c:	d8448493          	addi	s1,s1,-636 # d84 <hex_symbols.0>
 690:	ffc00993          	li	s3,-4
 694:	008957b3          	srl	a5,s2,s0
 698:	00f7f793          	andi	a5,a5,15
 69c:	00f487b3          	add	a5,s1,a5
 6a0:	0007c503          	lbu	a0,0(a5)
 6a4:	ffc40413          	addi	s0,s0,-4
 6a8:	cadff0ef          	jal	ra,354 <neorv32_uart0_putc>
 6ac:	ff3414e3          	bne	s0,s3,694 <__neorv32_rte_print_hex_word+0x38>
 6b0:	01c12083          	lw	ra,28(sp)
 6b4:	01812403          	lw	s0,24(sp)
 6b8:	01412483          	lw	s1,20(sp)
 6bc:	01012903          	lw	s2,16(sp)
 6c0:	00c12983          	lw	s3,12(sp)
 6c4:	02010113          	addi	sp,sp,32
 6c8:	00008067          	ret

000006cc <__neorv32_rte_debug_exc_handler>:
 6cc:	ff010113          	addi	sp,sp,-16
 6d0:	00112623          	sw	ra,12(sp)
 6d4:	00812423          	sw	s0,8(sp)
 6d8:	00912223          	sw	s1,4(sp)
 6dc:	bbdff0ef          	jal	ra,298 <neorv32_uart0_available>
 6e0:	1a050e63          	beqz	a0,89c <__heap_size+0x9c>
 6e4:	00001537          	lui	a0,0x1
 6e8:	b9050513          	addi	a0,a0,-1136 # b90 <__etext+0x144>
 6ec:	c81ff0ef          	jal	ra,36c <neorv32_uart0_print>
 6f0:	34202473          	csrr	s0,mcause
 6f4:	00900713          	li	a4,9
 6f8:	00f47793          	andi	a5,s0,15
 6fc:	03078493          	addi	s1,a5,48
 700:	00f77463          	bgeu	a4,a5,708 <__neorv32_rte_debug_exc_handler+0x3c>
 704:	05778493          	addi	s1,a5,87
 708:	00b00793          	li	a5,11
 70c:	0087ee63          	bltu	a5,s0,728 <__neorv32_rte_debug_exc_handler+0x5c>
 710:	00001737          	lui	a4,0x1
 714:	00241793          	slli	a5,s0,0x2
 718:	d5470713          	addi	a4,a4,-684 # d54 <__etext+0x308>
 71c:	00e787b3          	add	a5,a5,a4
 720:	0007a783          	lw	a5,0(a5)
 724:	00078067          	jr	a5
 728:	800007b7          	lui	a5,0x80000
 72c:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 730:	14e40463          	beq	s0,a4,878 <__heap_size+0x78>
 734:	02876663          	bltu	a4,s0,760 <__neorv32_rte_debug_exc_handler+0x94>
 738:	00378713          	addi	a4,a5,3
 73c:	12e40263          	beq	s0,a4,860 <__heap_size+0x60>
 740:	00778793          	addi	a5,a5,7
 744:	12f40463          	beq	s0,a5,86c <__heap_size+0x6c>
 748:	00001537          	lui	a0,0x1
 74c:	cf050513          	addi	a0,a0,-784 # cf0 <__etext+0x2a4>
 750:	c1dff0ef          	jal	ra,36c <neorv32_uart0_print>
 754:	00040513          	mv	a0,s0
 758:	f05ff0ef          	jal	ra,65c <__neorv32_rte_print_hex_word>
 75c:	0280006f          	j	784 <__neorv32_rte_debug_exc_handler+0xb8>
 760:	ff07c793          	xori	a5,a5,-16
 764:	00f407b3          	add	a5,s0,a5
 768:	00f00713          	li	a4,15
 76c:	fcf76ee3          	bltu	a4,a5,748 <__neorv32_rte_debug_exc_handler+0x7c>
 770:	00001537          	lui	a0,0x1
 774:	ce050513          	addi	a0,a0,-800 # ce0 <__etext+0x294>
 778:	bf5ff0ef          	jal	ra,36c <neorv32_uart0_print>
 77c:	00048513          	mv	a0,s1
 780:	bd5ff0ef          	jal	ra,354 <neorv32_uart0_putc>
 784:	00001537          	lui	a0,0x1
 788:	d3450513          	addi	a0,a0,-716 # d34 <__etext+0x2e8>
 78c:	be1ff0ef          	jal	ra,36c <neorv32_uart0_print>
 790:	34002573          	csrr	a0,mscratch
 794:	ec9ff0ef          	jal	ra,65c <__neorv32_rte_print_hex_word>
 798:	00001537          	lui	a0,0x1
 79c:	d3c50513          	addi	a0,a0,-708 # d3c <__etext+0x2f0>
 7a0:	bcdff0ef          	jal	ra,36c <neorv32_uart0_print>
 7a4:	34302573          	csrr	a0,mtval
 7a8:	eb5ff0ef          	jal	ra,65c <__neorv32_rte_print_hex_word>
 7ac:	00812403          	lw	s0,8(sp)
 7b0:	00c12083          	lw	ra,12(sp)
 7b4:	00412483          	lw	s1,4(sp)
 7b8:	00001537          	lui	a0,0x1
 7bc:	d4850513          	addi	a0,a0,-696 # d48 <__etext+0x2fc>
 7c0:	01010113          	addi	sp,sp,16
 7c4:	ba9ff06f          	j	36c <neorv32_uart0_print>
 7c8:	00001537          	lui	a0,0x1
 7cc:	b9850513          	addi	a0,a0,-1128 # b98 <__etext+0x14c>
 7d0:	b9dff0ef          	jal	ra,36c <neorv32_uart0_print>
 7d4:	fb1ff06f          	j	784 <__neorv32_rte_debug_exc_handler+0xb8>
 7d8:	00001537          	lui	a0,0x1
 7dc:	bb850513          	addi	a0,a0,-1096 # bb8 <__etext+0x16c>
 7e0:	b8dff0ef          	jal	ra,36c <neorv32_uart0_print>
 7e4:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 7e8:	0a07d463          	bgez	a5,890 <__heap_size+0x90>
 7ec:	0017f793          	andi	a5,a5,1
 7f0:	08078a63          	beqz	a5,884 <__heap_size+0x84>
 7f4:	00001537          	lui	a0,0x1
 7f8:	d0850513          	addi	a0,a0,-760 # d08 <__etext+0x2bc>
 7fc:	fd5ff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 800:	00001537          	lui	a0,0x1
 804:	bd450513          	addi	a0,a0,-1068 # bd4 <__etext+0x188>
 808:	fc9ff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 80c:	00001537          	lui	a0,0x1
 810:	be850513          	addi	a0,a0,-1048 # be8 <__etext+0x19c>
 814:	fbdff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 818:	00001537          	lui	a0,0x1
 81c:	bf450513          	addi	a0,a0,-1036 # bf4 <__etext+0x1a8>
 820:	fb1ff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 824:	00001537          	lui	a0,0x1
 828:	c0c50513          	addi	a0,a0,-1012 # c0c <__etext+0x1c0>
 82c:	fb5ff06f          	j	7e0 <__neorv32_rte_debug_exc_handler+0x114>
 830:	00001537          	lui	a0,0x1
 834:	c2050513          	addi	a0,a0,-992 # c20 <__etext+0x1d4>
 838:	f99ff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 83c:	00001537          	lui	a0,0x1
 840:	c3c50513          	addi	a0,a0,-964 # c3c <__etext+0x1f0>
 844:	f9dff06f          	j	7e0 <__neorv32_rte_debug_exc_handler+0x114>
 848:	00001537          	lui	a0,0x1
 84c:	c5050513          	addi	a0,a0,-944 # c50 <__etext+0x204>
 850:	f81ff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 854:	00001537          	lui	a0,0x1
 858:	c7050513          	addi	a0,a0,-912 # c70 <__etext+0x224>
 85c:	f75ff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 860:	00001537          	lui	a0,0x1
 864:	c9050513          	addi	a0,a0,-880 # c90 <__etext+0x244>
 868:	f69ff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 86c:	00001537          	lui	a0,0x1
 870:	cac50513          	addi	a0,a0,-852 # cac <__etext+0x260>
 874:	f5dff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 878:	00001537          	lui	a0,0x1
 87c:	cc450513          	addi	a0,a0,-828 # cc4 <__etext+0x278>
 880:	f51ff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 884:	00001537          	lui	a0,0x1
 888:	d1850513          	addi	a0,a0,-744 # d18 <__etext+0x2cc>
 88c:	f45ff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 890:	00001537          	lui	a0,0x1
 894:	d2850513          	addi	a0,a0,-728 # d28 <__etext+0x2dc>
 898:	f39ff06f          	j	7d0 <__neorv32_rte_debug_exc_handler+0x104>
 89c:	00c12083          	lw	ra,12(sp)
 8a0:	00812403          	lw	s0,8(sp)
 8a4:	00412483          	lw	s1,4(sp)
 8a8:	01010113          	addi	sp,sp,16
 8ac:	00008067          	ret

000008b0 <neorv32_rte_exception_install>:
 8b0:	01f00793          	li	a5,31
 8b4:	02a7e063          	bltu	a5,a0,8d4 <neorv32_rte_exception_install+0x24>
 8b8:	800007b7          	lui	a5,0x80000
 8bc:	00251513          	slli	a0,a0,0x2
 8c0:	00078793          	mv	a5,a5
 8c4:	00a787b3          	add	a5,a5,a0
 8c8:	00b7a023          	sw	a1,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 8cc:	00000513          	li	a0,0
 8d0:	00008067          	ret
 8d4:	00100513          	li	a0,1
 8d8:	00008067          	ret

000008dc <neorv32_rte_exception_uninstall>:
 8dc:	01f00793          	li	a5,31
 8e0:	02a7e263          	bltu	a5,a0,904 <neorv32_rte_exception_uninstall+0x28>
 8e4:	800007b7          	lui	a5,0x80000
 8e8:	00251513          	slli	a0,a0,0x2
 8ec:	00078793          	mv	a5,a5
 8f0:	00a787b3          	add	a5,a5,a0
 8f4:	6cc00713          	li	a4,1740
 8f8:	00e7a023          	sw	a4,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 8fc:	00000513          	li	a0,0
 900:	00008067          	ret
 904:	00100513          	li	a0,1
 908:	00008067          	ret

0000090c <neorv32_rte_setup>:
 90c:	ff010113          	addi	sp,sp,-16
 910:	00112623          	sw	ra,12(sp)
 914:	00812423          	sw	s0,8(sp)
 918:	00912223          	sw	s1,4(sp)
 91c:	42800793          	li	a5,1064
 920:	30579073          	csrw	mtvec,a5
 924:	00000413          	li	s0,0
 928:	01d00493          	li	s1,29
 92c:	00040513          	mv	a0,s0
 930:	00140413          	addi	s0,s0,1
 934:	0ff47413          	zext.b	s0,s0
 938:	fa5ff0ef          	jal	ra,8dc <neorv32_rte_exception_uninstall>
 93c:	fe9418e3          	bne	s0,s1,92c <neorv32_rte_setup+0x20>
 940:	00c12083          	lw	ra,12(sp)
 944:	00812403          	lw	s0,8(sp)
 948:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 94c:	00412483          	lw	s1,4(sp)
 950:	01010113          	addi	sp,sp,16
 954:	00008067          	ret

00000958 <neorv32_gpio_pin_toggle>:
 958:	00100793          	li	a5,1
 95c:	01f00713          	li	a4,31
 960:	00a797b3          	sll	a5,a5,a0
 964:	00a74a63          	blt	a4,a0,978 <neorv32_gpio_pin_toggle+0x20>
 968:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__crt0_io_space_begin+0x1c8>
 96c:	00f747b3          	xor	a5,a4,a5
 970:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__crt0_io_space_begin+0x1c8>
 974:	00008067          	ret
 978:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__crt0_io_space_begin+0x1cc>
 97c:	00f747b3          	xor	a5,a4,a5
 980:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__crt0_io_space_begin+0x1cc>
 984:	00008067          	ret

00000988 <neorv32_gpio_port_set>:
 988:	fc000793          	li	a5,-64
 98c:	00a7a423          	sw	a0,8(a5)
 990:	00b7a623          	sw	a1,12(a5)
 994:	00008067          	ret

00000998 <__divsi3>:
 998:	06054063          	bltz	a0,9f8 <__umodsi3+0x10>
 99c:	0605c663          	bltz	a1,a08 <__umodsi3+0x20>

000009a0 <__hidden___udivsi3>:
 9a0:	00058613          	mv	a2,a1
 9a4:	00050593          	mv	a1,a0
 9a8:	fff00513          	li	a0,-1
 9ac:	02060c63          	beqz	a2,9e4 <__hidden___udivsi3+0x44>
 9b0:	00100693          	li	a3,1
 9b4:	00b67a63          	bgeu	a2,a1,9c8 <__hidden___udivsi3+0x28>
 9b8:	00c05863          	blez	a2,9c8 <__hidden___udivsi3+0x28>
 9bc:	00161613          	slli	a2,a2,0x1
 9c0:	00169693          	slli	a3,a3,0x1
 9c4:	feb66ae3          	bltu	a2,a1,9b8 <__hidden___udivsi3+0x18>
 9c8:	00000513          	li	a0,0
 9cc:	00c5e663          	bltu	a1,a2,9d8 <__hidden___udivsi3+0x38>
 9d0:	40c585b3          	sub	a1,a1,a2
 9d4:	00d56533          	or	a0,a0,a3
 9d8:	0016d693          	srli	a3,a3,0x1
 9dc:	00165613          	srli	a2,a2,0x1
 9e0:	fe0696e3          	bnez	a3,9cc <__hidden___udivsi3+0x2c>
 9e4:	00008067          	ret

000009e8 <__umodsi3>:
 9e8:	00008293          	mv	t0,ra
 9ec:	fb5ff0ef          	jal	ra,9a0 <__hidden___udivsi3>
 9f0:	00058513          	mv	a0,a1
 9f4:	00028067          	jr	t0
 9f8:	40a00533          	neg	a0,a0
 9fc:	00b04863          	bgtz	a1,a0c <__umodsi3+0x24>
 a00:	40b005b3          	neg	a1,a1
 a04:	f9dff06f          	j	9a0 <__hidden___udivsi3>
 a08:	40b005b3          	neg	a1,a1
 a0c:	00008293          	mv	t0,ra
 a10:	f91ff0ef          	jal	ra,9a0 <__hidden___udivsi3>
 a14:	40a00533          	neg	a0,a0
 a18:	00028067          	jr	t0

00000a1c <__modsi3>:
 a1c:	00008293          	mv	t0,ra
 a20:	0005ca63          	bltz	a1,a34 <__modsi3+0x18>
 a24:	00054c63          	bltz	a0,a3c <__modsi3+0x20>
 a28:	f79ff0ef          	jal	ra,9a0 <__hidden___udivsi3>
 a2c:	00058513          	mv	a0,a1
 a30:	00028067          	jr	t0
 a34:	40b005b3          	neg	a1,a1
 a38:	fe0558e3          	bgez	a0,a28 <__modsi3+0xc>
 a3c:	40a00533          	neg	a0,a0
 a40:	f61ff0ef          	jal	ra,9a0 <__hidden___udivsi3>
 a44:	40b00533          	neg	a0,a1
 a48:	00028067          	jr	t0
