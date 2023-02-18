
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
  bc:	c9c58593          	addi	a1,a1,-868 # d54 <__crt0_copy_data_src_begin>
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
 180:	00812423          	sw	s0,8(sp)
 184:	00912223          	sw	s1,4(sp)
 188:	7b8000ef          	jal	ra,940 <neorv32_rte_setup>
 18c:	00005537          	lui	a0,0x5
 190:	00000613          	li	a2,0
 194:	00000593          	li	a1,0
 198:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3dac>
 19c:	140000ef          	jal	ra,2dc <neorv32_uart0_setup>
 1a0:	0e0000ef          	jal	ra,280 <neorv32_mtime_available>
 1a4:	04050e63          	beqz	a0,200 <main+0x88>
 1a8:	00000513          	li	a0,0
 1ac:	00000593          	li	a1,0
 1b0:	00d000ef          	jal	ra,9bc <neorv32_gpio_port_set>
 1b4:	22400593          	li	a1,548
 1b8:	00b00513          	li	a0,11
 1bc:	728000ef          	jal	ra,8e4 <neorv32_rte_exception_install>
 1c0:	0d0000ef          	jal	ra,290 <neorv32_mtime_get_time>
 1c4:	00050413          	mv	s0,a0
 1c8:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 1cc:	00058493          	mv	s1,a1
 1d0:	06400593          	li	a1,100
 1d4:	001000ef          	jal	ra,9d4 <__hidden___udivsi3>
 1d8:	00050793          	mv	a5,a0
 1dc:	00850533          	add	a0,a0,s0
 1e0:	00f537b3          	sltu	a5,a0,a5
 1e4:	009785b3          	add	a1,a5,s1
 1e8:	0bc000ef          	jal	ra,2a4 <neorv32_mtime_set_timecmp>
 1ec:	00700513          	li	a0,7
 1f0:	230000ef          	jal	ra,420 <neorv32_cpu_irq_enable>
 1f4:	30046073          	csrsi	mstatus,8
 1f8:	10500073          	wfi
 1fc:	ffdff06f          	j	1f8 <main+0x80>
 200:	00001537          	lui	a0,0x1
 204:	a8050513          	addi	a0,a0,-1408 # a80 <__etext>
 208:	198000ef          	jal	ra,3a0 <neorv32_uart0_print>
 20c:	00c12083          	lw	ra,12(sp)
 210:	00812403          	lw	s0,8(sp)
 214:	00412483          	lw	s1,4(sp)
 218:	00100513          	li	a0,1
 21c:	01010113          	addi	sp,sp,16
 220:	00008067          	ret

00000224 <mtime_irq_handler>:
 224:	ff010113          	addi	sp,sp,-16
 228:	00112623          	sw	ra,12(sp)
 22c:	00812423          	sw	s0,8(sp)
 230:	00912223          	sw	s1,4(sp)
 234:	088000ef          	jal	ra,2bc <neorv32_mtime_get_timecmp>
 238:	00050413          	mv	s0,a0
 23c:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 240:	00058493          	mv	s1,a1
 244:	06400593          	li	a1,100
 248:	78c000ef          	jal	ra,9d4 <__hidden___udivsi3>
 24c:	00050793          	mv	a5,a0
 250:	00850533          	add	a0,a0,s0
 254:	00f537b3          	sltu	a5,a0,a5
 258:	009785b3          	add	a1,a5,s1
 25c:	048000ef          	jal	ra,2a4 <neorv32_mtime_set_timecmp>
 260:	02e00513          	li	a0,46
 264:	124000ef          	jal	ra,388 <neorv32_uart0_putc>
 268:	00812403          	lw	s0,8(sp)
 26c:	00c12083          	lw	ra,12(sp)
 270:	00412483          	lw	s1,4(sp)
 274:	00000513          	li	a0,0
 278:	01010113          	addi	sp,sp,16
 27c:	7100006f          	j	98c <neorv32_gpio_pin_toggle>

00000280 <neorv32_mtime_available>:
 280:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 284:	01155513          	srli	a0,a0,0x11
 288:	00157513          	andi	a0,a0,1
 28c:	00008067          	ret

00000290 <neorv32_mtime_get_time>:
 290:	f9402583          	lw	a1,-108(zero) # ffffff94 <__crt0_io_space_begin+0x194>
 294:	f9002503          	lw	a0,-112(zero) # ffffff90 <__crt0_io_space_begin+0x190>
 298:	f9402783          	lw	a5,-108(zero) # ffffff94 <__crt0_io_space_begin+0x194>
 29c:	fef59ae3          	bne	a1,a5,290 <neorv32_mtime_get_time>
 2a0:	00008067          	ret

000002a4 <neorv32_mtime_set_timecmp>:
 2a4:	f9000793          	li	a5,-112
 2a8:	fff00713          	li	a4,-1
 2ac:	00e7a423          	sw	a4,8(a5)
 2b0:	00b7a623          	sw	a1,12(a5)
 2b4:	00a7a423          	sw	a0,8(a5)
 2b8:	00008067          	ret

000002bc <neorv32_mtime_get_timecmp>:
 2bc:	f9000793          	li	a5,-112
 2c0:	0087a503          	lw	a0,8(a5)
 2c4:	00c7a583          	lw	a1,12(a5)
 2c8:	00008067          	ret

000002cc <neorv32_uart0_available>:
 2cc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 2d0:	01255513          	srli	a0,a0,0x12
 2d4:	00157513          	andi	a0,a0,1
 2d8:	00008067          	ret

000002dc <neorv32_uart0_setup>:
 2dc:	ff010113          	addi	sp,sp,-16
 2e0:	00812423          	sw	s0,8(sp)
 2e4:	00912223          	sw	s1,4(sp)
 2e8:	00112623          	sw	ra,12(sp)
 2ec:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 2f0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 2f4:	00058413          	mv	s0,a1
 2f8:	00151593          	slli	a1,a0,0x1
 2fc:	00078513          	mv	a0,a5
 300:	00060493          	mv	s1,a2
 304:	6d0000ef          	jal	ra,9d4 <__hidden___udivsi3>
 308:	01051513          	slli	a0,a0,0x10
 30c:	000017b7          	lui	a5,0x1
 310:	01055513          	srli	a0,a0,0x10
 314:	00000713          	li	a4,0
 318:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x2aa>
 31c:	04a7e463          	bltu	a5,a0,364 <neorv32_uart0_setup+0x88>
 320:	0034f493          	andi	s1,s1,3
 324:	01449493          	slli	s1,s1,0x14
 328:	00347413          	andi	s0,s0,3
 32c:	fff50793          	addi	a5,a0,-1
 330:	0097e7b3          	or	a5,a5,s1
 334:	01641413          	slli	s0,s0,0x16
 338:	0087e7b3          	or	a5,a5,s0
 33c:	01871713          	slli	a4,a4,0x18
 340:	00c12083          	lw	ra,12(sp)
 344:	00812403          	lw	s0,8(sp)
 348:	00e7e7b3          	or	a5,a5,a4
 34c:	10000737          	lui	a4,0x10000
 350:	00e7e7b3          	or	a5,a5,a4
 354:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 358:	00412483          	lw	s1,4(sp)
 35c:	01010113          	addi	sp,sp,16
 360:	00008067          	ret
 364:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff2aa>
 368:	0fd6f693          	andi	a3,a3,253
 36c:	00069a63          	bnez	a3,380 <neorv32_uart0_setup+0xa4>
 370:	00355513          	srli	a0,a0,0x3
 374:	00170713          	addi	a4,a4,1
 378:	0ff77713          	zext.b	a4,a4
 37c:	fa1ff06f          	j	31c <neorv32_uart0_setup+0x40>
 380:	00155513          	srli	a0,a0,0x1
 384:	ff1ff06f          	j	374 <neorv32_uart0_setup+0x98>

00000388 <neorv32_uart0_putc>:
 388:	00040737          	lui	a4,0x40
 38c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 390:	00e7f7b3          	and	a5,a5,a4
 394:	fe079ce3          	bnez	a5,38c <neorv32_uart0_putc+0x4>
 398:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 39c:	00008067          	ret

000003a0 <neorv32_uart0_print>:
 3a0:	ff010113          	addi	sp,sp,-16
 3a4:	00812423          	sw	s0,8(sp)
 3a8:	01212023          	sw	s2,0(sp)
 3ac:	00112623          	sw	ra,12(sp)
 3b0:	00912223          	sw	s1,4(sp)
 3b4:	00050413          	mv	s0,a0
 3b8:	00a00913          	li	s2,10
 3bc:	00044483          	lbu	s1,0(s0)
 3c0:	00140413          	addi	s0,s0,1
 3c4:	00049e63          	bnez	s1,3e0 <neorv32_uart0_print+0x40>
 3c8:	00c12083          	lw	ra,12(sp)
 3cc:	00812403          	lw	s0,8(sp)
 3d0:	00412483          	lw	s1,4(sp)
 3d4:	00012903          	lw	s2,0(sp)
 3d8:	01010113          	addi	sp,sp,16
 3dc:	00008067          	ret
 3e0:	01249663          	bne	s1,s2,3ec <neorv32_uart0_print+0x4c>
 3e4:	00d00513          	li	a0,13
 3e8:	fa1ff0ef          	jal	ra,388 <neorv32_uart0_putc>
 3ec:	00048513          	mv	a0,s1
 3f0:	f99ff0ef          	jal	ra,388 <neorv32_uart0_putc>
 3f4:	fc9ff06f          	j	3bc <neorv32_uart0_print+0x1c>

000003f8 <__neorv32_cpu_irq_id_check>:
 3f8:	01f00793          	li	a5,31
 3fc:	00a7ee63          	bltu	a5,a0,418 <__neorv32_cpu_irq_id_check+0x20>
 400:	ffff17b7          	lui	a5,0xffff1
 404:	88878793          	addi	a5,a5,-1912 # ffff0888 <__crt0_io_space_begin+0xffff0a88>
 408:	00a7d533          	srl	a0,a5,a0
 40c:	00157513          	andi	a0,a0,1
 410:	00154513          	xori	a0,a0,1
 414:	00008067          	ret
 418:	00100513          	li	a0,1
 41c:	00008067          	ret

00000420 <neorv32_cpu_irq_enable>:
 420:	ff010113          	addi	sp,sp,-16
 424:	00812423          	sw	s0,8(sp)
 428:	00112623          	sw	ra,12(sp)
 42c:	00050413          	mv	s0,a0
 430:	fc9ff0ef          	jal	ra,3f8 <__neorv32_cpu_irq_id_check>
 434:	02051063          	bnez	a0,454 <neorv32_cpu_irq_enable+0x34>
 438:	00100793          	li	a5,1
 43c:	008797b3          	sll	a5,a5,s0
 440:	3047a073          	csrs	mie,a5
 444:	00c12083          	lw	ra,12(sp)
 448:	00812403          	lw	s0,8(sp)
 44c:	01010113          	addi	sp,sp,16
 450:	00008067          	ret
 454:	00100513          	li	a0,1
 458:	fedff06f          	j	444 <neorv32_cpu_irq_enable+0x24>

0000045c <__neorv32_rte_core>:
 45c:	fc010113          	addi	sp,sp,-64
 460:	02112e23          	sw	ra,60(sp)
 464:	02512c23          	sw	t0,56(sp)
 468:	02612a23          	sw	t1,52(sp)
 46c:	02712823          	sw	t2,48(sp)
 470:	02a12623          	sw	a0,44(sp)
 474:	02b12423          	sw	a1,40(sp)
 478:	02c12223          	sw	a2,36(sp)
 47c:	02d12023          	sw	a3,32(sp)
 480:	00e12e23          	sw	a4,28(sp)
 484:	00f12c23          	sw	a5,24(sp)
 488:	01012a23          	sw	a6,20(sp)
 48c:	01112823          	sw	a7,16(sp)
 490:	01c12623          	sw	t3,12(sp)
 494:	01d12423          	sw	t4,8(sp)
 498:	01e12223          	sw	t5,4(sp)
 49c:	01f12023          	sw	t6,0(sp)
 4a0:	34102773          	csrr	a4,mepc
 4a4:	34071073          	csrw	mscratch,a4
 4a8:	342027f3          	csrr	a5,mcause
 4ac:	0407c463          	bltz	a5,4f4 <__neorv32_rte_core+0x98>
 4b0:	00075683          	lhu	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f2ac>
 4b4:	00300593          	li	a1,3
 4b8:	0036f693          	andi	a3,a3,3
 4bc:	00270613          	addi	a2,a4,2
 4c0:	00b69463          	bne	a3,a1,4c8 <__neorv32_rte_core+0x6c>
 4c4:	00470613          	addi	a2,a4,4
 4c8:	34161073          	csrw	mepc,a2
 4cc:	00b00713          	li	a4,11
 4d0:	00f77663          	bgeu	a4,a5,4dc <__neorv32_rte_core+0x80>
 4d4:	70000793          	li	a5,1792
 4d8:	0500006f          	j	528 <__neorv32_rte_core+0xcc>
 4dc:	00001737          	lui	a4,0x1
 4e0:	00279793          	slli	a5,a5,0x2
 4e4:	aa870713          	addi	a4,a4,-1368 # aa8 <__etext+0x28>
 4e8:	00e787b3          	add	a5,a5,a4
 4ec:	0007a783          	lw	a5,0(a5)
 4f0:	00078067          	jr	a5
 4f4:	80000737          	lui	a4,0x80000
 4f8:	ffd74713          	xori	a4,a4,-3
 4fc:	00e787b3          	add	a5,a5,a4
 500:	01c00713          	li	a4,28
 504:	fcf768e3          	bltu	a4,a5,4d4 <__neorv32_rte_core+0x78>
 508:	00001737          	lui	a4,0x1
 50c:	00279793          	slli	a5,a5,0x2
 510:	ad870713          	addi	a4,a4,-1320 # ad8 <__etext+0x58>
 514:	00e787b3          	add	a5,a5,a4
 518:	0007a783          	lw	a5,0(a5)
 51c:	00078067          	jr	a5
 520:	800007b7          	lui	a5,0x80000
 524:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 528:	000780e7          	jalr	a5
 52c:	03c12083          	lw	ra,60(sp)
 530:	03812283          	lw	t0,56(sp)
 534:	03412303          	lw	t1,52(sp)
 538:	03012383          	lw	t2,48(sp)
 53c:	02c12503          	lw	a0,44(sp)
 540:	02812583          	lw	a1,40(sp)
 544:	02412603          	lw	a2,36(sp)
 548:	02012683          	lw	a3,32(sp)
 54c:	01c12703          	lw	a4,28(sp)
 550:	01812783          	lw	a5,24(sp)
 554:	01412803          	lw	a6,20(sp)
 558:	01012883          	lw	a7,16(sp)
 55c:	00c12e03          	lw	t3,12(sp)
 560:	00812e83          	lw	t4,8(sp)
 564:	00412f03          	lw	t5,4(sp)
 568:	00012f83          	lw	t6,0(sp)
 56c:	04010113          	addi	sp,sp,64
 570:	30200073          	mret
 574:	800007b7          	lui	a5,0x80000
 578:	0047a783          	lw	a5,4(a5) # 80000004 <__crt0_io_space_begin+0x80000204>
 57c:	fadff06f          	j	528 <__neorv32_rte_core+0xcc>
 580:	800007b7          	lui	a5,0x80000
 584:	0087a783          	lw	a5,8(a5) # 80000008 <__crt0_io_space_begin+0x80000208>
 588:	fa1ff06f          	j	528 <__neorv32_rte_core+0xcc>
 58c:	800007b7          	lui	a5,0x80000
 590:	00c7a783          	lw	a5,12(a5) # 8000000c <__crt0_io_space_begin+0x8000020c>
 594:	f95ff06f          	j	528 <__neorv32_rte_core+0xcc>
 598:	800007b7          	lui	a5,0x80000
 59c:	0107a783          	lw	a5,16(a5) # 80000010 <__crt0_io_space_begin+0x80000210>
 5a0:	f89ff06f          	j	528 <__neorv32_rte_core+0xcc>
 5a4:	800007b7          	lui	a5,0x80000
 5a8:	0147a783          	lw	a5,20(a5) # 80000014 <__crt0_io_space_begin+0x80000214>
 5ac:	f7dff06f          	j	528 <__neorv32_rte_core+0xcc>
 5b0:	800007b7          	lui	a5,0x80000
 5b4:	0187a783          	lw	a5,24(a5) # 80000018 <__crt0_io_space_begin+0x80000218>
 5b8:	f71ff06f          	j	528 <__neorv32_rte_core+0xcc>
 5bc:	800007b7          	lui	a5,0x80000
 5c0:	01c7a783          	lw	a5,28(a5) # 8000001c <__crt0_io_space_begin+0x8000021c>
 5c4:	f65ff06f          	j	528 <__neorv32_rte_core+0xcc>
 5c8:	800007b7          	lui	a5,0x80000
 5cc:	0207a783          	lw	a5,32(a5) # 80000020 <__crt0_io_space_begin+0x80000220>
 5d0:	f59ff06f          	j	528 <__neorv32_rte_core+0xcc>
 5d4:	800007b7          	lui	a5,0x80000
 5d8:	0247a783          	lw	a5,36(a5) # 80000024 <__crt0_io_space_begin+0x80000224>
 5dc:	f4dff06f          	j	528 <__neorv32_rte_core+0xcc>
 5e0:	800007b7          	lui	a5,0x80000
 5e4:	0287a783          	lw	a5,40(a5) # 80000028 <__crt0_io_space_begin+0x80000228>
 5e8:	f41ff06f          	j	528 <__neorv32_rte_core+0xcc>
 5ec:	800007b7          	lui	a5,0x80000
 5f0:	02c7a783          	lw	a5,44(a5) # 8000002c <__crt0_io_space_begin+0x8000022c>
 5f4:	f35ff06f          	j	528 <__neorv32_rte_core+0xcc>
 5f8:	800007b7          	lui	a5,0x80000
 5fc:	0307a783          	lw	a5,48(a5) # 80000030 <__crt0_io_space_begin+0x80000230>
 600:	f29ff06f          	j	528 <__neorv32_rte_core+0xcc>
 604:	800007b7          	lui	a5,0x80000
 608:	0347a783          	lw	a5,52(a5) # 80000034 <__crt0_io_space_begin+0x80000234>
 60c:	f1dff06f          	j	528 <__neorv32_rte_core+0xcc>
 610:	800007b7          	lui	a5,0x80000
 614:	0387a783          	lw	a5,56(a5) # 80000038 <__crt0_io_space_begin+0x80000238>
 618:	f11ff06f          	j	528 <__neorv32_rte_core+0xcc>
 61c:	800007b7          	lui	a5,0x80000
 620:	03c7a783          	lw	a5,60(a5) # 8000003c <__crt0_io_space_begin+0x8000023c>
 624:	f05ff06f          	j	528 <__neorv32_rte_core+0xcc>
 628:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 62c:	efdff06f          	j	528 <__neorv32_rte_core+0xcc>
 630:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 634:	ef5ff06f          	j	528 <__neorv32_rte_core+0xcc>
 638:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 63c:	eedff06f          	j	528 <__neorv32_rte_core+0xcc>
 640:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 644:	ee5ff06f          	j	528 <__neorv32_rte_core+0xcc>
 648:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 64c:	eddff06f          	j	528 <__neorv32_rte_core+0xcc>
 650:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 654:	ed5ff06f          	j	528 <__neorv32_rte_core+0xcc>
 658:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 65c:	ecdff06f          	j	528 <__neorv32_rte_core+0xcc>
 660:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 664:	ec5ff06f          	j	528 <__neorv32_rte_core+0xcc>
 668:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 66c:	ebdff06f          	j	528 <__neorv32_rte_core+0xcc>
 670:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 674:	eb5ff06f          	j	528 <__neorv32_rte_core+0xcc>
 678:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 67c:	eadff06f          	j	528 <__neorv32_rte_core+0xcc>
 680:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 684:	ea5ff06f          	j	528 <__neorv32_rte_core+0xcc>
 688:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 68c:	e9dff06f          	j	528 <__neorv32_rte_core+0xcc>

00000690 <__neorv32_rte_print_hex_word>:
 690:	fe010113          	addi	sp,sp,-32
 694:	01212823          	sw	s2,16(sp)
 698:	00050913          	mv	s2,a0
 69c:	00001537          	lui	a0,0x1
 6a0:	00912a23          	sw	s1,20(sp)
 6a4:	b4c50513          	addi	a0,a0,-1204 # b4c <__etext+0xcc>
 6a8:	000014b7          	lui	s1,0x1
 6ac:	00812c23          	sw	s0,24(sp)
 6b0:	01312623          	sw	s3,12(sp)
 6b4:	00112e23          	sw	ra,28(sp)
 6b8:	01c00413          	li	s0,28
 6bc:	ce5ff0ef          	jal	ra,3a0 <neorv32_uart0_print>
 6c0:	d4448493          	addi	s1,s1,-700 # d44 <hex_symbols.0>
 6c4:	ffc00993          	li	s3,-4
 6c8:	008957b3          	srl	a5,s2,s0
 6cc:	00f7f793          	andi	a5,a5,15
 6d0:	00f487b3          	add	a5,s1,a5
 6d4:	0007c503          	lbu	a0,0(a5)
 6d8:	ffc40413          	addi	s0,s0,-4
 6dc:	cadff0ef          	jal	ra,388 <neorv32_uart0_putc>
 6e0:	ff3414e3          	bne	s0,s3,6c8 <__neorv32_rte_print_hex_word+0x38>
 6e4:	01c12083          	lw	ra,28(sp)
 6e8:	01812403          	lw	s0,24(sp)
 6ec:	01412483          	lw	s1,20(sp)
 6f0:	01012903          	lw	s2,16(sp)
 6f4:	00c12983          	lw	s3,12(sp)
 6f8:	02010113          	addi	sp,sp,32
 6fc:	00008067          	ret

00000700 <__neorv32_rte_debug_exc_handler>:
 700:	ff010113          	addi	sp,sp,-16
 704:	00112623          	sw	ra,12(sp)
 708:	00812423          	sw	s0,8(sp)
 70c:	00912223          	sw	s1,4(sp)
 710:	bbdff0ef          	jal	ra,2cc <neorv32_uart0_available>
 714:	1a050e63          	beqz	a0,8d0 <__heap_size+0xd0>
 718:	00001537          	lui	a0,0x1
 71c:	b5050513          	addi	a0,a0,-1200 # b50 <__etext+0xd0>
 720:	c81ff0ef          	jal	ra,3a0 <neorv32_uart0_print>
 724:	34202473          	csrr	s0,mcause
 728:	00900713          	li	a4,9
 72c:	00f47793          	andi	a5,s0,15
 730:	03078493          	addi	s1,a5,48
 734:	00f77463          	bgeu	a4,a5,73c <__neorv32_rte_debug_exc_handler+0x3c>
 738:	05778493          	addi	s1,a5,87
 73c:	00b00793          	li	a5,11
 740:	0087ee63          	bltu	a5,s0,75c <__neorv32_rte_debug_exc_handler+0x5c>
 744:	00001737          	lui	a4,0x1
 748:	00241793          	slli	a5,s0,0x2
 74c:	d1470713          	addi	a4,a4,-748 # d14 <__etext+0x294>
 750:	00e787b3          	add	a5,a5,a4
 754:	0007a783          	lw	a5,0(a5)
 758:	00078067          	jr	a5
 75c:	800007b7          	lui	a5,0x80000
 760:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 764:	14e40463          	beq	s0,a4,8ac <__heap_size+0xac>
 768:	02876663          	bltu	a4,s0,794 <__neorv32_rte_debug_exc_handler+0x94>
 76c:	00378713          	addi	a4,a5,3
 770:	12e40263          	beq	s0,a4,894 <__heap_size+0x94>
 774:	00778793          	addi	a5,a5,7
 778:	12f40463          	beq	s0,a5,8a0 <__heap_size+0xa0>
 77c:	00001537          	lui	a0,0x1
 780:	cb050513          	addi	a0,a0,-848 # cb0 <__etext+0x230>
 784:	c1dff0ef          	jal	ra,3a0 <neorv32_uart0_print>
 788:	00040513          	mv	a0,s0
 78c:	f05ff0ef          	jal	ra,690 <__neorv32_rte_print_hex_word>
 790:	0280006f          	j	7b8 <__neorv32_rte_debug_exc_handler+0xb8>
 794:	ff07c793          	xori	a5,a5,-16
 798:	00f407b3          	add	a5,s0,a5
 79c:	00f00713          	li	a4,15
 7a0:	fcf76ee3          	bltu	a4,a5,77c <__neorv32_rte_debug_exc_handler+0x7c>
 7a4:	00001537          	lui	a0,0x1
 7a8:	ca050513          	addi	a0,a0,-864 # ca0 <__etext+0x220>
 7ac:	bf5ff0ef          	jal	ra,3a0 <neorv32_uart0_print>
 7b0:	00048513          	mv	a0,s1
 7b4:	bd5ff0ef          	jal	ra,388 <neorv32_uart0_putc>
 7b8:	00001537          	lui	a0,0x1
 7bc:	cf450513          	addi	a0,a0,-780 # cf4 <__etext+0x274>
 7c0:	be1ff0ef          	jal	ra,3a0 <neorv32_uart0_print>
 7c4:	34002573          	csrr	a0,mscratch
 7c8:	ec9ff0ef          	jal	ra,690 <__neorv32_rte_print_hex_word>
 7cc:	00001537          	lui	a0,0x1
 7d0:	cfc50513          	addi	a0,a0,-772 # cfc <__etext+0x27c>
 7d4:	bcdff0ef          	jal	ra,3a0 <neorv32_uart0_print>
 7d8:	34302573          	csrr	a0,mtval
 7dc:	eb5ff0ef          	jal	ra,690 <__neorv32_rte_print_hex_word>
 7e0:	00812403          	lw	s0,8(sp)
 7e4:	00c12083          	lw	ra,12(sp)
 7e8:	00412483          	lw	s1,4(sp)
 7ec:	00001537          	lui	a0,0x1
 7f0:	d0850513          	addi	a0,a0,-760 # d08 <__etext+0x288>
 7f4:	01010113          	addi	sp,sp,16
 7f8:	ba9ff06f          	j	3a0 <neorv32_uart0_print>
 7fc:	00001537          	lui	a0,0x1
 800:	b5850513          	addi	a0,a0,-1192 # b58 <__etext+0xd8>
 804:	b9dff0ef          	jal	ra,3a0 <neorv32_uart0_print>
 808:	fb1ff06f          	j	7b8 <__neorv32_rte_debug_exc_handler+0xb8>
 80c:	00001537          	lui	a0,0x1
 810:	b7850513          	addi	a0,a0,-1160 # b78 <__etext+0xf8>
 814:	b8dff0ef          	jal	ra,3a0 <neorv32_uart0_print>
 818:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 81c:	0a07d463          	bgez	a5,8c4 <__heap_size+0xc4>
 820:	0017f793          	andi	a5,a5,1
 824:	08078a63          	beqz	a5,8b8 <__heap_size+0xb8>
 828:	00001537          	lui	a0,0x1
 82c:	cc850513          	addi	a0,a0,-824 # cc8 <__etext+0x248>
 830:	fd5ff06f          	j	804 <__heap_size+0x4>
 834:	00001537          	lui	a0,0x1
 838:	b9450513          	addi	a0,a0,-1132 # b94 <__etext+0x114>
 83c:	fc9ff06f          	j	804 <__heap_size+0x4>
 840:	00001537          	lui	a0,0x1
 844:	ba850513          	addi	a0,a0,-1112 # ba8 <__etext+0x128>
 848:	fbdff06f          	j	804 <__heap_size+0x4>
 84c:	00001537          	lui	a0,0x1
 850:	bb450513          	addi	a0,a0,-1100 # bb4 <__etext+0x134>
 854:	fb1ff06f          	j	804 <__heap_size+0x4>
 858:	00001537          	lui	a0,0x1
 85c:	bcc50513          	addi	a0,a0,-1076 # bcc <__etext+0x14c>
 860:	fb5ff06f          	j	814 <__heap_size+0x14>
 864:	00001537          	lui	a0,0x1
 868:	be050513          	addi	a0,a0,-1056 # be0 <__etext+0x160>
 86c:	f99ff06f          	j	804 <__heap_size+0x4>
 870:	00001537          	lui	a0,0x1
 874:	bfc50513          	addi	a0,a0,-1028 # bfc <__etext+0x17c>
 878:	f9dff06f          	j	814 <__heap_size+0x14>
 87c:	00001537          	lui	a0,0x1
 880:	c1050513          	addi	a0,a0,-1008 # c10 <__etext+0x190>
 884:	f81ff06f          	j	804 <__heap_size+0x4>
 888:	00001537          	lui	a0,0x1
 88c:	c3050513          	addi	a0,a0,-976 # c30 <__etext+0x1b0>
 890:	f75ff06f          	j	804 <__heap_size+0x4>
 894:	00001537          	lui	a0,0x1
 898:	c5050513          	addi	a0,a0,-944 # c50 <__etext+0x1d0>
 89c:	f69ff06f          	j	804 <__heap_size+0x4>
 8a0:	00001537          	lui	a0,0x1
 8a4:	c6c50513          	addi	a0,a0,-916 # c6c <__etext+0x1ec>
 8a8:	f5dff06f          	j	804 <__heap_size+0x4>
 8ac:	00001537          	lui	a0,0x1
 8b0:	c8450513          	addi	a0,a0,-892 # c84 <__etext+0x204>
 8b4:	f51ff06f          	j	804 <__heap_size+0x4>
 8b8:	00001537          	lui	a0,0x1
 8bc:	cd850513          	addi	a0,a0,-808 # cd8 <__etext+0x258>
 8c0:	f45ff06f          	j	804 <__heap_size+0x4>
 8c4:	00001537          	lui	a0,0x1
 8c8:	ce850513          	addi	a0,a0,-792 # ce8 <__etext+0x268>
 8cc:	f39ff06f          	j	804 <__heap_size+0x4>
 8d0:	00c12083          	lw	ra,12(sp)
 8d4:	00812403          	lw	s0,8(sp)
 8d8:	00412483          	lw	s1,4(sp)
 8dc:	01010113          	addi	sp,sp,16
 8e0:	00008067          	ret

000008e4 <neorv32_rte_exception_install>:
 8e4:	01f00793          	li	a5,31
 8e8:	02a7e063          	bltu	a5,a0,908 <neorv32_rte_exception_install+0x24>
 8ec:	800007b7          	lui	a5,0x80000
 8f0:	00251513          	slli	a0,a0,0x2
 8f4:	00078793          	mv	a5,a5
 8f8:	00a787b3          	add	a5,a5,a0
 8fc:	00b7a023          	sw	a1,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 900:	00000513          	li	a0,0
 904:	00008067          	ret
 908:	00100513          	li	a0,1
 90c:	00008067          	ret

00000910 <neorv32_rte_exception_uninstall>:
 910:	01f00793          	li	a5,31
 914:	02a7e263          	bltu	a5,a0,938 <neorv32_rte_exception_uninstall+0x28>
 918:	800007b7          	lui	a5,0x80000
 91c:	00251513          	slli	a0,a0,0x2
 920:	00078793          	mv	a5,a5
 924:	00a787b3          	add	a5,a5,a0
 928:	70000713          	li	a4,1792
 92c:	00e7a023          	sw	a4,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 930:	00000513          	li	a0,0
 934:	00008067          	ret
 938:	00100513          	li	a0,1
 93c:	00008067          	ret

00000940 <neorv32_rte_setup>:
 940:	ff010113          	addi	sp,sp,-16
 944:	00112623          	sw	ra,12(sp)
 948:	00812423          	sw	s0,8(sp)
 94c:	00912223          	sw	s1,4(sp)
 950:	45c00793          	li	a5,1116
 954:	30579073          	csrw	mtvec,a5
 958:	00000413          	li	s0,0
 95c:	01d00493          	li	s1,29
 960:	00040513          	mv	a0,s0
 964:	00140413          	addi	s0,s0,1
 968:	0ff47413          	zext.b	s0,s0
 96c:	fa5ff0ef          	jal	ra,910 <neorv32_rte_exception_uninstall>
 970:	fe9418e3          	bne	s0,s1,960 <neorv32_rte_setup+0x20>
 974:	00c12083          	lw	ra,12(sp)
 978:	00812403          	lw	s0,8(sp)
 97c:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 980:	00412483          	lw	s1,4(sp)
 984:	01010113          	addi	sp,sp,16
 988:	00008067          	ret

0000098c <neorv32_gpio_pin_toggle>:
 98c:	00100793          	li	a5,1
 990:	01f00713          	li	a4,31
 994:	00a797b3          	sll	a5,a5,a0
 998:	00a74a63          	blt	a4,a0,9ac <neorv32_gpio_pin_toggle+0x20>
 99c:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__crt0_io_space_begin+0x1c8>
 9a0:	00f747b3          	xor	a5,a4,a5
 9a4:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__crt0_io_space_begin+0x1c8>
 9a8:	00008067          	ret
 9ac:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__crt0_io_space_begin+0x1cc>
 9b0:	00f747b3          	xor	a5,a4,a5
 9b4:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__crt0_io_space_begin+0x1cc>
 9b8:	00008067          	ret

000009bc <neorv32_gpio_port_set>:
 9bc:	fc000793          	li	a5,-64
 9c0:	00a7a423          	sw	a0,8(a5)
 9c4:	00b7a623          	sw	a1,12(a5)
 9c8:	00008067          	ret

000009cc <__divsi3>:
 9cc:	06054063          	bltz	a0,a2c <__umodsi3+0x10>
 9d0:	0605c663          	bltz	a1,a3c <__umodsi3+0x20>

000009d4 <__hidden___udivsi3>:
 9d4:	00058613          	mv	a2,a1
 9d8:	00050593          	mv	a1,a0
 9dc:	fff00513          	li	a0,-1
 9e0:	02060c63          	beqz	a2,a18 <__hidden___udivsi3+0x44>
 9e4:	00100693          	li	a3,1
 9e8:	00b67a63          	bgeu	a2,a1,9fc <__hidden___udivsi3+0x28>
 9ec:	00c05863          	blez	a2,9fc <__hidden___udivsi3+0x28>
 9f0:	00161613          	slli	a2,a2,0x1
 9f4:	00169693          	slli	a3,a3,0x1
 9f8:	feb66ae3          	bltu	a2,a1,9ec <__hidden___udivsi3+0x18>
 9fc:	00000513          	li	a0,0
 a00:	00c5e663          	bltu	a1,a2,a0c <__hidden___udivsi3+0x38>
 a04:	40c585b3          	sub	a1,a1,a2
 a08:	00d56533          	or	a0,a0,a3
 a0c:	0016d693          	srli	a3,a3,0x1
 a10:	00165613          	srli	a2,a2,0x1
 a14:	fe0696e3          	bnez	a3,a00 <__hidden___udivsi3+0x2c>
 a18:	00008067          	ret

00000a1c <__umodsi3>:
 a1c:	00008293          	mv	t0,ra
 a20:	fb5ff0ef          	jal	ra,9d4 <__hidden___udivsi3>
 a24:	00058513          	mv	a0,a1
 a28:	00028067          	jr	t0
 a2c:	40a00533          	neg	a0,a0
 a30:	00b04863          	bgtz	a1,a40 <__umodsi3+0x24>
 a34:	40b005b3          	neg	a1,a1
 a38:	f9dff06f          	j	9d4 <__hidden___udivsi3>
 a3c:	40b005b3          	neg	a1,a1
 a40:	00008293          	mv	t0,ra
 a44:	f91ff0ef          	jal	ra,9d4 <__hidden___udivsi3>
 a48:	40a00533          	neg	a0,a0
 a4c:	00028067          	jr	t0

00000a50 <__modsi3>:
 a50:	00008293          	mv	t0,ra
 a54:	0005ca63          	bltz	a1,a68 <__modsi3+0x18>
 a58:	00054c63          	bltz	a0,a70 <__modsi3+0x20>
 a5c:	f79ff0ef          	jal	ra,9d4 <__hidden___udivsi3>
 a60:	00058513          	mv	a0,a1
 a64:	00028067          	jr	t0
 a68:	40b005b3          	neg	a1,a1
 a6c:	fe0558e3          	bgez	a0,a5c <__modsi3+0xc>
 a70:	40a00533          	neg	a0,a0
 a74:	f61ff0ef          	jal	ra,9d4 <__hidden___udivsi3>
 a78:	40b00533          	neg	a0,a1
 a7c:	00028067          	jr	t0
