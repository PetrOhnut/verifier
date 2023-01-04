
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
  bc:	af458593          	addi	a1,a1,-1292 # bac <__crt0_copy_data_src_begin>
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
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3f54>
 18c:	00112623          	sw	ra,12(sp)
 190:	05c000ef          	jal	ra,1ec <neorv32_uart0_setup>
 194:	654000ef          	jal	ra,7e8 <neorv32_gpio_available>
 198:	02050463          	beqz	a0,1c0 <main+0x48>
 19c:	600000ef          	jal	ra,79c <neorv32_rte_setup>
 1a0:	00001537          	lui	a0,0x1
 1a4:	8f050513          	addi	a0,a0,-1808 # 8f0 <__etext+0x24>
 1a8:	108000ef          	jal	ra,2b0 <neorv32_uart0_print>
 1ac:	65c000ef          	jal	ra,808 <neorv32_gpio_port_get>
 1b0:	0ff57513          	andi	a0,a0,255
 1b4:	00000593          	li	a1,0
 1b8:	640000ef          	jal	ra,7f8 <neorv32_gpio_port_set>
 1bc:	ff1ff06f          	j	1ac <main+0x34>
 1c0:	00001537          	lui	a0,0x1
 1c4:	8cc50513          	addi	a0,a0,-1844 # 8cc <__etext>
 1c8:	0e8000ef          	jal	ra,2b0 <neorv32_uart0_print>
 1cc:	00c12083          	lw	ra,12(sp)
 1d0:	00100513          	li	a0,1
 1d4:	01010113          	addi	sp,sp,16
 1d8:	00008067          	ret

000001dc <neorv32_uart0_available>:
 1dc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 1e0:	01255513          	srli	a0,a0,0x12
 1e4:	00157513          	andi	a0,a0,1
 1e8:	00008067          	ret

000001ec <neorv32_uart0_setup>:
 1ec:	ff010113          	addi	sp,sp,-16
 1f0:	00812423          	sw	s0,8(sp)
 1f4:	00912223          	sw	s1,4(sp)
 1f8:	00112623          	sw	ra,12(sp)
 1fc:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 200:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 204:	00058413          	mv	s0,a1
 208:	00151593          	slli	a1,a0,0x1
 20c:	00078513          	mv	a0,a5
 210:	00060493          	mv	s1,a2
 214:	60c000ef          	jal	ra,820 <__udivsi3>
 218:	01051513          	slli	a0,a0,0x10
 21c:	000017b7          	lui	a5,0x1
 220:	01055513          	srli	a0,a0,0x10
 224:	00000713          	li	a4,0
 228:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x452>
 22c:	04a7e463          	bltu	a5,a0,274 <neorv32_uart0_setup+0x88>
 230:	0034f793          	andi	a5,s1,3
 234:	00347413          	andi	s0,s0,3
 238:	fff50513          	addi	a0,a0,-1
 23c:	01479793          	slli	a5,a5,0x14
 240:	01641413          	slli	s0,s0,0x16
 244:	00f567b3          	or	a5,a0,a5
 248:	0087e7b3          	or	a5,a5,s0
 24c:	01871713          	slli	a4,a4,0x18
 250:	00c12083          	lw	ra,12(sp)
 254:	00812403          	lw	s0,8(sp)
 258:	00e7e7b3          	or	a5,a5,a4
 25c:	10001737          	lui	a4,0x10001
 260:	00e7e7b3          	or	a5,a5,a4
 264:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 268:	00412483          	lw	s1,4(sp)
 26c:	01010113          	addi	sp,sp,16
 270:	00008067          	ret
 274:	ffe70693          	addi	a3,a4,-2 # 10000ffe <__crt0_copy_data_src_begin+0x10000452>
 278:	0fd6f693          	andi	a3,a3,253
 27c:	00069a63          	bnez	a3,290 <neorv32_uart0_setup+0xa4>
 280:	00355513          	srli	a0,a0,0x3
 284:	00170713          	addi	a4,a4,1
 288:	0ff77713          	andi	a4,a4,255
 28c:	fa1ff06f          	j	22c <neorv32_uart0_setup+0x40>
 290:	00155513          	srli	a0,a0,0x1
 294:	ff1ff06f          	j	284 <neorv32_uart0_setup+0x98>

00000298 <neorv32_uart0_putc>:
 298:	00040737          	lui	a4,0x40
 29c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 2a0:	00e7f7b3          	and	a5,a5,a4
 2a4:	fe079ce3          	bnez	a5,29c <neorv32_uart0_putc+0x4>
 2a8:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 2ac:	00008067          	ret

000002b0 <neorv32_uart0_print>:
 2b0:	ff010113          	addi	sp,sp,-16
 2b4:	00812423          	sw	s0,8(sp)
 2b8:	01212023          	sw	s2,0(sp)
 2bc:	00112623          	sw	ra,12(sp)
 2c0:	00912223          	sw	s1,4(sp)
 2c4:	00050413          	mv	s0,a0
 2c8:	00a00913          	li	s2,10
 2cc:	00044483          	lbu	s1,0(s0)
 2d0:	00140413          	addi	s0,s0,1
 2d4:	00049e63          	bnez	s1,2f0 <neorv32_uart0_print+0x40>
 2d8:	00c12083          	lw	ra,12(sp)
 2dc:	00812403          	lw	s0,8(sp)
 2e0:	00412483          	lw	s1,4(sp)
 2e4:	00012903          	lw	s2,0(sp)
 2e8:	01010113          	addi	sp,sp,16
 2ec:	00008067          	ret
 2f0:	01249663          	bne	s1,s2,2fc <neorv32_uart0_print+0x4c>
 2f4:	00d00513          	li	a0,13
 2f8:	fa1ff0ef          	jal	ra,298 <neorv32_uart0_putc>
 2fc:	00048513          	mv	a0,s1
 300:	f99ff0ef          	jal	ra,298 <neorv32_uart0_putc>
 304:	fc9ff06f          	j	2cc <neorv32_uart0_print+0x1c>

00000308 <__neorv32_rte_core>:
 308:	fc010113          	addi	sp,sp,-64
 30c:	02112e23          	sw	ra,60(sp)
 310:	02512c23          	sw	t0,56(sp)
 314:	02612a23          	sw	t1,52(sp)
 318:	02712823          	sw	t2,48(sp)
 31c:	02a12623          	sw	a0,44(sp)
 320:	02b12423          	sw	a1,40(sp)
 324:	02c12223          	sw	a2,36(sp)
 328:	02d12023          	sw	a3,32(sp)
 32c:	00e12e23          	sw	a4,28(sp)
 330:	00f12c23          	sw	a5,24(sp)
 334:	01012a23          	sw	a6,20(sp)
 338:	01112823          	sw	a7,16(sp)
 33c:	01c12623          	sw	t3,12(sp)
 340:	01d12423          	sw	t4,8(sp)
 344:	01e12223          	sw	t5,4(sp)
 348:	01f12023          	sw	t6,0(sp)
 34c:	34102773          	csrr	a4,mepc
 350:	34071073          	csrw	mscratch,a4
 354:	342027f3          	csrr	a5,mcause
 358:	0407c463          	bltz	a5,3a0 <__neorv32_rte_core+0x98>
 35c:	00075683          	lhu	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f454>
 360:	00300593          	li	a1,3
 364:	0036f693          	andi	a3,a3,3
 368:	00270613          	addi	a2,a4,2
 36c:	00b69463          	bne	a3,a1,374 <__neorv32_rte_core+0x6c>
 370:	00470613          	addi	a2,a4,4
 374:	34161073          	csrw	mepc,a2
 378:	00b00713          	li	a4,11
 37c:	00f77663          	bgeu	a4,a5,388 <__neorv32_rte_core+0x80>
 380:	57400793          	li	a5,1396
 384:	0500006f          	j	3d4 <__neorv32_rte_core+0xcc>
 388:	00001737          	lui	a4,0x1
 38c:	00279793          	slli	a5,a5,0x2
 390:	90070713          	addi	a4,a4,-1792 # 900 <__etext+0x34>
 394:	00e787b3          	add	a5,a5,a4
 398:	0007a783          	lw	a5,0(a5)
 39c:	00078067          	jr	a5
 3a0:	80000737          	lui	a4,0x80000
 3a4:	ffd74713          	xori	a4,a4,-3
 3a8:	00e787b3          	add	a5,a5,a4
 3ac:	01c00713          	li	a4,28
 3b0:	fcf768e3          	bltu	a4,a5,380 <__neorv32_rte_core+0x78>
 3b4:	00001737          	lui	a4,0x1
 3b8:	00279793          	slli	a5,a5,0x2
 3bc:	93070713          	addi	a4,a4,-1744 # 930 <__etext+0x64>
 3c0:	00e787b3          	add	a5,a5,a4
 3c4:	0007a783          	lw	a5,0(a5)
 3c8:	00078067          	jr	a5
 3cc:	800007b7          	lui	a5,0x80000
 3d0:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 3d4:	000780e7          	jalr	a5
 3d8:	03c12083          	lw	ra,60(sp)
 3dc:	03812283          	lw	t0,56(sp)
 3e0:	03412303          	lw	t1,52(sp)
 3e4:	03012383          	lw	t2,48(sp)
 3e8:	02c12503          	lw	a0,44(sp)
 3ec:	02812583          	lw	a1,40(sp)
 3f0:	02412603          	lw	a2,36(sp)
 3f4:	02012683          	lw	a3,32(sp)
 3f8:	01c12703          	lw	a4,28(sp)
 3fc:	01812783          	lw	a5,24(sp)
 400:	01412803          	lw	a6,20(sp)
 404:	01012883          	lw	a7,16(sp)
 408:	00c12e03          	lw	t3,12(sp)
 40c:	00812e83          	lw	t4,8(sp)
 410:	00412f03          	lw	t5,4(sp)
 414:	00012f83          	lw	t6,0(sp)
 418:	04010113          	addi	sp,sp,64
 41c:	30200073          	mret
 420:	800007b7          	lui	a5,0x80000
 424:	0047a783          	lw	a5,4(a5) # 80000004 <__crt0_io_space_begin+0x80000204>
 428:	fadff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 42c:	8081a783          	lw	a5,-2040(gp) # 80000008 <__neorv32_rte_vector_lut+0x8>
 430:	fa5ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 434:	80c1a783          	lw	a5,-2036(gp) # 8000000c <__neorv32_rte_vector_lut+0xc>
 438:	f9dff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 43c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 440:	f95ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 444:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 448:	f8dff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 44c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 450:	f85ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 454:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 458:	f7dff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 45c:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 460:	f75ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 464:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 468:	f6dff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 46c:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 470:	f65ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 474:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 478:	f5dff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 47c:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 480:	f55ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 484:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 488:	f4dff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 48c:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 490:	f45ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 494:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 498:	f3dff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 49c:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 4a0:	f35ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4a4:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 4a8:	f2dff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4ac:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 4b0:	f25ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4b4:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 4b8:	f1dff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4bc:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 4c0:	f15ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4c4:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 4c8:	f0dff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4cc:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 4d0:	f05ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4d4:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 4d8:	efdff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4dc:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 4e0:	ef5ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4e4:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 4e8:	eedff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4ec:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 4f0:	ee5ff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4f4:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 4f8:	eddff06f          	j	3d4 <__neorv32_rte_core+0xcc>
 4fc:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 500:	ed5ff06f          	j	3d4 <__neorv32_rte_core+0xcc>

00000504 <__neorv32_rte_print_hex_word>:
 504:	fe010113          	addi	sp,sp,-32
 508:	01212823          	sw	s2,16(sp)
 50c:	00050913          	mv	s2,a0
 510:	00001537          	lui	a0,0x1
 514:	00912a23          	sw	s1,20(sp)
 518:	9a450513          	addi	a0,a0,-1628 # 9a4 <__etext+0xd8>
 51c:	000014b7          	lui	s1,0x1
 520:	00812c23          	sw	s0,24(sp)
 524:	01312623          	sw	s3,12(sp)
 528:	00112e23          	sw	ra,28(sp)
 52c:	01c00413          	li	s0,28
 530:	d81ff0ef          	jal	ra,2b0 <neorv32_uart0_print>
 534:	b9c48493          	addi	s1,s1,-1124 # b9c <hex_symbols.0>
 538:	ffc00993          	li	s3,-4
 53c:	008957b3          	srl	a5,s2,s0
 540:	00f7f793          	andi	a5,a5,15
 544:	00f487b3          	add	a5,s1,a5
 548:	0007c503          	lbu	a0,0(a5)
 54c:	ffc40413          	addi	s0,s0,-4
 550:	d49ff0ef          	jal	ra,298 <neorv32_uart0_putc>
 554:	ff3414e3          	bne	s0,s3,53c <__neorv32_rte_print_hex_word+0x38>
 558:	01c12083          	lw	ra,28(sp)
 55c:	01812403          	lw	s0,24(sp)
 560:	01412483          	lw	s1,20(sp)
 564:	01012903          	lw	s2,16(sp)
 568:	00c12983          	lw	s3,12(sp)
 56c:	02010113          	addi	sp,sp,32
 570:	00008067          	ret

00000574 <__neorv32_rte_debug_exc_handler>:
 574:	ff010113          	addi	sp,sp,-16
 578:	00112623          	sw	ra,12(sp)
 57c:	00812423          	sw	s0,8(sp)
 580:	00912223          	sw	s1,4(sp)
 584:	c59ff0ef          	jal	ra,1dc <neorv32_uart0_available>
 588:	1c050863          	beqz	a0,758 <__neorv32_rte_debug_exc_handler+0x1e4>
 58c:	00001537          	lui	a0,0x1
 590:	9a850513          	addi	a0,a0,-1624 # 9a8 <__etext+0xdc>
 594:	d1dff0ef          	jal	ra,2b0 <neorv32_uart0_print>
 598:	34202473          	csrr	s0,mcause
 59c:	00900713          	li	a4,9
 5a0:	00f47793          	andi	a5,s0,15
 5a4:	03078493          	addi	s1,a5,48
 5a8:	00f77463          	bgeu	a4,a5,5b0 <__neorv32_rte_debug_exc_handler+0x3c>
 5ac:	05778493          	addi	s1,a5,87
 5b0:	00b00793          	li	a5,11
 5b4:	0087ee63          	bltu	a5,s0,5d0 <__neorv32_rte_debug_exc_handler+0x5c>
 5b8:	00001737          	lui	a4,0x1
 5bc:	00241793          	slli	a5,s0,0x2
 5c0:	b6c70713          	addi	a4,a4,-1172 # b6c <__etext+0x2a0>
 5c4:	00e787b3          	add	a5,a5,a4
 5c8:	0007a783          	lw	a5,0(a5)
 5cc:	00078067          	jr	a5
 5d0:	800007b7          	lui	a5,0x80000
 5d4:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 5d8:	14e40e63          	beq	s0,a4,734 <__neorv32_rte_debug_exc_handler+0x1c0>
 5dc:	02876a63          	bltu	a4,s0,610 <__neorv32_rte_debug_exc_handler+0x9c>
 5e0:	00378713          	addi	a4,a5,3
 5e4:	12e40c63          	beq	s0,a4,71c <__neorv32_rte_debug_exc_handler+0x1a8>
 5e8:	00778793          	addi	a5,a5,7
 5ec:	12f40e63          	beq	s0,a5,728 <__neorv32_rte_debug_exc_handler+0x1b4>
 5f0:	00001537          	lui	a0,0x1
 5f4:	b0850513          	addi	a0,a0,-1272 # b08 <__etext+0x23c>
 5f8:	cb9ff0ef          	jal	ra,2b0 <neorv32_uart0_print>
 5fc:	00040513          	mv	a0,s0
 600:	f05ff0ef          	jal	ra,504 <__neorv32_rte_print_hex_word>
 604:	00100793          	li	a5,1
 608:	08f40c63          	beq	s0,a5,6a0 <__neorv32_rte_debug_exc_handler+0x12c>
 60c:	0280006f          	j	634 <__neorv32_rte_debug_exc_handler+0xc0>
 610:	ff07c793          	xori	a5,a5,-16
 614:	00f407b3          	add	a5,s0,a5
 618:	00f00713          	li	a4,15
 61c:	fcf76ae3          	bltu	a4,a5,5f0 <__neorv32_rte_debug_exc_handler+0x7c>
 620:	00001537          	lui	a0,0x1
 624:	af850513          	addi	a0,a0,-1288 # af8 <__etext+0x22c>
 628:	c89ff0ef          	jal	ra,2b0 <neorv32_uart0_print>
 62c:	00048513          	mv	a0,s1
 630:	c69ff0ef          	jal	ra,298 <neorv32_uart0_putc>
 634:	ffd47413          	andi	s0,s0,-3
 638:	00500793          	li	a5,5
 63c:	06f40263          	beq	s0,a5,6a0 <__neorv32_rte_debug_exc_handler+0x12c>
 640:	00001537          	lui	a0,0x1
 644:	b4c50513          	addi	a0,a0,-1204 # b4c <__etext+0x280>
 648:	c69ff0ef          	jal	ra,2b0 <neorv32_uart0_print>
 64c:	34002573          	csrr	a0,mscratch
 650:	eb5ff0ef          	jal	ra,504 <__neorv32_rte_print_hex_word>
 654:	00001537          	lui	a0,0x1
 658:	b5450513          	addi	a0,a0,-1196 # b54 <__etext+0x288>
 65c:	c55ff0ef          	jal	ra,2b0 <neorv32_uart0_print>
 660:	34302573          	csrr	a0,mtval
 664:	ea1ff0ef          	jal	ra,504 <__neorv32_rte_print_hex_word>
 668:	00812403          	lw	s0,8(sp)
 66c:	00c12083          	lw	ra,12(sp)
 670:	00412483          	lw	s1,4(sp)
 674:	00001537          	lui	a0,0x1
 678:	b6050513          	addi	a0,a0,-1184 # b60 <__etext+0x294>
 67c:	01010113          	addi	sp,sp,16
 680:	c31ff06f          	j	2b0 <neorv32_uart0_print>
 684:	00001537          	lui	a0,0x1
 688:	9b050513          	addi	a0,a0,-1616 # 9b0 <__etext+0xe4>
 68c:	c25ff0ef          	jal	ra,2b0 <neorv32_uart0_print>
 690:	fb1ff06f          	j	640 <__neorv32_rte_debug_exc_handler+0xcc>
 694:	00001537          	lui	a0,0x1
 698:	9d050513          	addi	a0,a0,-1584 # 9d0 <__etext+0x104>
 69c:	c15ff0ef          	jal	ra,2b0 <neorv32_uart0_print>
 6a0:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 6a4:	0a07d463          	bgez	a5,74c <__neorv32_rte_debug_exc_handler+0x1d8>
 6a8:	0017f793          	andi	a5,a5,1
 6ac:	08078a63          	beqz	a5,740 <__neorv32_rte_debug_exc_handler+0x1cc>
 6b0:	00001537          	lui	a0,0x1
 6b4:	b2050513          	addi	a0,a0,-1248 # b20 <__etext+0x254>
 6b8:	fd5ff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 6bc:	00001537          	lui	a0,0x1
 6c0:	9ec50513          	addi	a0,a0,-1556 # 9ec <__etext+0x120>
 6c4:	fc9ff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 6c8:	00001537          	lui	a0,0x1
 6cc:	a0050513          	addi	a0,a0,-1536 # a00 <__etext+0x134>
 6d0:	fbdff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 6d4:	00001537          	lui	a0,0x1
 6d8:	a0c50513          	addi	a0,a0,-1524 # a0c <__etext+0x140>
 6dc:	fb1ff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 6e0:	00001537          	lui	a0,0x1
 6e4:	a2450513          	addi	a0,a0,-1500 # a24 <__etext+0x158>
 6e8:	fb5ff06f          	j	69c <__neorv32_rte_debug_exc_handler+0x128>
 6ec:	00001537          	lui	a0,0x1
 6f0:	a3850513          	addi	a0,a0,-1480 # a38 <__etext+0x16c>
 6f4:	f99ff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 6f8:	00001537          	lui	a0,0x1
 6fc:	a5450513          	addi	a0,a0,-1452 # a54 <__etext+0x188>
 700:	f9dff06f          	j	69c <__neorv32_rte_debug_exc_handler+0x128>
 704:	00001537          	lui	a0,0x1
 708:	a6850513          	addi	a0,a0,-1432 # a68 <__etext+0x19c>
 70c:	f81ff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 710:	00001537          	lui	a0,0x1
 714:	a8850513          	addi	a0,a0,-1400 # a88 <__etext+0x1bc>
 718:	f75ff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 71c:	00001537          	lui	a0,0x1
 720:	aa850513          	addi	a0,a0,-1368 # aa8 <__etext+0x1dc>
 724:	f69ff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 728:	00001537          	lui	a0,0x1
 72c:	ac450513          	addi	a0,a0,-1340 # ac4 <__etext+0x1f8>
 730:	f5dff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 734:	00001537          	lui	a0,0x1
 738:	adc50513          	addi	a0,a0,-1316 # adc <__etext+0x210>
 73c:	f51ff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 740:	00001537          	lui	a0,0x1
 744:	b3050513          	addi	a0,a0,-1232 # b30 <__etext+0x264>
 748:	f45ff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 74c:	00001537          	lui	a0,0x1
 750:	b4050513          	addi	a0,a0,-1216 # b40 <__etext+0x274>
 754:	f39ff06f          	j	68c <__neorv32_rte_debug_exc_handler+0x118>
 758:	00c12083          	lw	ra,12(sp)
 75c:	00812403          	lw	s0,8(sp)
 760:	00412483          	lw	s1,4(sp)
 764:	01010113          	addi	sp,sp,16
 768:	00008067          	ret

0000076c <neorv32_rte_exception_uninstall>:
 76c:	01f00793          	li	a5,31
 770:	02a7e263          	bltu	a5,a0,794 <neorv32_rte_exception_uninstall+0x28>
 774:	800007b7          	lui	a5,0x80000
 778:	00078793          	mv	a5,a5
 77c:	00251513          	slli	a0,a0,0x2
 780:	00a78533          	add	a0,a5,a0
 784:	57400793          	li	a5,1396
 788:	00f52023          	sw	a5,0(a0)
 78c:	00000513          	li	a0,0
 790:	00008067          	ret
 794:	00100513          	li	a0,1
 798:	00008067          	ret

0000079c <neorv32_rte_setup>:
 79c:	ff010113          	addi	sp,sp,-16
 7a0:	00112623          	sw	ra,12(sp)
 7a4:	00812423          	sw	s0,8(sp)
 7a8:	00912223          	sw	s1,4(sp)
 7ac:	30800793          	li	a5,776
 7b0:	30579073          	csrw	mtvec,a5
 7b4:	00000413          	li	s0,0
 7b8:	01d00493          	li	s1,29
 7bc:	00040513          	mv	a0,s0
 7c0:	00140413          	addi	s0,s0,1
 7c4:	0ff47413          	andi	s0,s0,255
 7c8:	fa5ff0ef          	jal	ra,76c <neorv32_rte_exception_uninstall>
 7cc:	fe9418e3          	bne	s0,s1,7bc <neorv32_rte_setup+0x20>
 7d0:	00c12083          	lw	ra,12(sp)
 7d4:	00812403          	lw	s0,8(sp)
 7d8:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 7dc:	00412483          	lw	s1,4(sp)
 7e0:	01010113          	addi	sp,sp,16
 7e4:	00008067          	ret

000007e8 <neorv32_gpio_available>:
 7e8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 7ec:	01055513          	srli	a0,a0,0x10
 7f0:	00157513          	andi	a0,a0,1
 7f4:	00008067          	ret

000007f8 <neorv32_gpio_port_set>:
 7f8:	fc000793          	li	a5,-64
 7fc:	00a7a423          	sw	a0,8(a5) # 80000008 <__crt0_io_space_begin+0x80000208>
 800:	00b7a623          	sw	a1,12(a5)
 804:	00008067          	ret

00000808 <neorv32_gpio_port_get>:
 808:	fc000793          	li	a5,-64
 80c:	0007a503          	lw	a0,0(a5)
 810:	0047a583          	lw	a1,4(a5)
 814:	00008067          	ret

00000818 <__divsi3>:
 818:	06054063          	bltz	a0,878 <__umodsi3+0x10>
 81c:	0605c663          	bltz	a1,888 <__umodsi3+0x20>

00000820 <__udivsi3>:
 820:	00058613          	mv	a2,a1
 824:	00050593          	mv	a1,a0
 828:	fff00513          	li	a0,-1
 82c:	02060c63          	beqz	a2,864 <__udivsi3+0x44>
 830:	00100693          	li	a3,1
 834:	00b67a63          	bgeu	a2,a1,848 <__udivsi3+0x28>
 838:	00c05863          	blez	a2,848 <__udivsi3+0x28>
 83c:	00161613          	slli	a2,a2,0x1
 840:	00169693          	slli	a3,a3,0x1
 844:	feb66ae3          	bltu	a2,a1,838 <__udivsi3+0x18>
 848:	00000513          	li	a0,0
 84c:	00c5e663          	bltu	a1,a2,858 <__udivsi3+0x38>
 850:	40c585b3          	sub	a1,a1,a2
 854:	00d56533          	or	a0,a0,a3
 858:	0016d693          	srli	a3,a3,0x1
 85c:	00165613          	srli	a2,a2,0x1
 860:	fe0696e3          	bnez	a3,84c <__udivsi3+0x2c>
 864:	00008067          	ret

00000868 <__umodsi3>:
 868:	00008293          	mv	t0,ra
 86c:	fb5ff0ef          	jal	ra,820 <__udivsi3>
 870:	00058513          	mv	a0,a1
 874:	00028067          	jr	t0
 878:	40a00533          	neg	a0,a0
 87c:	00b04863          	bgtz	a1,88c <__umodsi3+0x24>
 880:	40b005b3          	neg	a1,a1
 884:	f9dff06f          	j	820 <__udivsi3>
 888:	40b005b3          	neg	a1,a1
 88c:	00008293          	mv	t0,ra
 890:	f91ff0ef          	jal	ra,820 <__udivsi3>
 894:	40a00533          	neg	a0,a0
 898:	00028067          	jr	t0

0000089c <__modsi3>:
 89c:	00008293          	mv	t0,ra
 8a0:	0005ca63          	bltz	a1,8b4 <__modsi3+0x18>
 8a4:	00054c63          	bltz	a0,8bc <__modsi3+0x20>
 8a8:	f79ff0ef          	jal	ra,820 <__udivsi3>
 8ac:	00058513          	mv	a0,a1
 8b0:	00028067          	jr	t0
 8b4:	40b005b3          	neg	a1,a1
 8b8:	fe0558e3          	bgez	a0,8a8 <__modsi3+0xc>
 8bc:	40a00533          	neg	a0,a0
 8c0:	f61ff0ef          	jal	ra,820 <__udivsi3>
 8c4:	40b00533          	neg	a0,a1
 8c8:	00028067          	jr	t0
