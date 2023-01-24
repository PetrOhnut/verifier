
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
  bc:	b0858593          	addi	a1,a1,-1272 # bc0 <__crt0_copy_data_src_begin>
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
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3f40>
 18c:	00112623          	sw	ra,12(sp)
 190:	074000ef          	jal	ra,204 <neorv32_uart0_setup>
 194:	66c000ef          	jal	ra,800 <neorv32_gpio_available>
 198:	00050c63          	beqz	a0,1b0 <main+0x38>
 19c:	618000ef          	jal	ra,7b4 <neorv32_rte_setup>
 1a0:	00001537          	lui	a0,0x1
 1a4:	8f850513          	addi	a0,a0,-1800 # 8f8 <__etext+0x24>
 1a8:	120000ef          	jal	ra,2c8 <neorv32_uart0_print>
 1ac:	020000ef          	jal	ra,1cc <blink_led_c>
 1b0:	00001537          	lui	a0,0x1
 1b4:	8d450513          	addi	a0,a0,-1836 # 8d4 <__etext>
 1b8:	110000ef          	jal	ra,2c8 <neorv32_uart0_print>
 1bc:	00c12083          	lw	ra,12(sp)
 1c0:	00100513          	li	a0,1
 1c4:	01010113          	addi	sp,sp,16
 1c8:	00008067          	ret

000001cc <blink_led_c>:
 1cc:	ff010113          	addi	sp,sp,-16
 1d0:	00112623          	sw	ra,12(sp)
 1d4:	00812423          	sw	s0,8(sp)
 1d8:	00000513          	li	a0,0
 1dc:	00150413          	addi	s0,a0,1
 1e0:	00000593          	li	a1,0
 1e4:	0ff57513          	andi	a0,a0,255
 1e8:	628000ef          	jal	ra,810 <neorv32_gpio_port_set>
 1ec:	00040513          	mv	a0,s0
 1f0:	fedff06f          	j	1dc <blink_led_c+0x10>

000001f4 <neorv32_uart0_available>:
 1f4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 1f8:	01255513          	srli	a0,a0,0x12
 1fc:	00157513          	andi	a0,a0,1
 200:	00008067          	ret

00000204 <neorv32_uart0_setup>:
 204:	ff010113          	addi	sp,sp,-16
 208:	00812423          	sw	s0,8(sp)
 20c:	00912223          	sw	s1,4(sp)
 210:	00112623          	sw	ra,12(sp)
 214:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 218:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 21c:	00058413          	mv	s0,a1
 220:	00151593          	slli	a1,a0,0x1
 224:	00078513          	mv	a0,a5
 228:	00060493          	mv	s1,a2
 22c:	5fc000ef          	jal	ra,828 <__udivsi3>
 230:	01051513          	slli	a0,a0,0x10
 234:	000017b7          	lui	a5,0x1
 238:	01055513          	srli	a0,a0,0x10
 23c:	00000713          	li	a4,0
 240:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x43e>
 244:	04a7e463          	bltu	a5,a0,28c <neorv32_uart0_setup+0x88>
 248:	0034f793          	andi	a5,s1,3
 24c:	00347413          	andi	s0,s0,3
 250:	fff50513          	addi	a0,a0,-1
 254:	01479793          	slli	a5,a5,0x14
 258:	01641413          	slli	s0,s0,0x16
 25c:	00f567b3          	or	a5,a0,a5
 260:	0087e7b3          	or	a5,a5,s0
 264:	01871713          	slli	a4,a4,0x18
 268:	00c12083          	lw	ra,12(sp)
 26c:	00812403          	lw	s0,8(sp)
 270:	00e7e7b3          	or	a5,a5,a4
 274:	10001737          	lui	a4,0x10001
 278:	00e7e7b3          	or	a5,a5,a4
 27c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 280:	00412483          	lw	s1,4(sp)
 284:	01010113          	addi	sp,sp,16
 288:	00008067          	ret
 28c:	ffe70693          	addi	a3,a4,-2 # 10000ffe <__crt0_copy_data_src_begin+0x1000043e>
 290:	0fd6f693          	andi	a3,a3,253
 294:	00069a63          	bnez	a3,2a8 <neorv32_uart0_setup+0xa4>
 298:	00355513          	srli	a0,a0,0x3
 29c:	00170713          	addi	a4,a4,1
 2a0:	0ff77713          	andi	a4,a4,255
 2a4:	fa1ff06f          	j	244 <neorv32_uart0_setup+0x40>
 2a8:	00155513          	srli	a0,a0,0x1
 2ac:	ff1ff06f          	j	29c <neorv32_uart0_setup+0x98>

000002b0 <neorv32_uart0_putc>:
 2b0:	00040737          	lui	a4,0x40
 2b4:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 2b8:	00e7f7b3          	and	a5,a5,a4
 2bc:	fe079ce3          	bnez	a5,2b4 <neorv32_uart0_putc+0x4>
 2c0:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 2c4:	00008067          	ret

000002c8 <neorv32_uart0_print>:
 2c8:	ff010113          	addi	sp,sp,-16
 2cc:	00812423          	sw	s0,8(sp)
 2d0:	01212023          	sw	s2,0(sp)
 2d4:	00112623          	sw	ra,12(sp)
 2d8:	00912223          	sw	s1,4(sp)
 2dc:	00050413          	mv	s0,a0
 2e0:	00a00913          	li	s2,10
 2e4:	00044483          	lbu	s1,0(s0)
 2e8:	00140413          	addi	s0,s0,1
 2ec:	00049e63          	bnez	s1,308 <neorv32_uart0_print+0x40>
 2f0:	00c12083          	lw	ra,12(sp)
 2f4:	00812403          	lw	s0,8(sp)
 2f8:	00412483          	lw	s1,4(sp)
 2fc:	00012903          	lw	s2,0(sp)
 300:	01010113          	addi	sp,sp,16
 304:	00008067          	ret
 308:	01249663          	bne	s1,s2,314 <neorv32_uart0_print+0x4c>
 30c:	00d00513          	li	a0,13
 310:	fa1ff0ef          	jal	ra,2b0 <neorv32_uart0_putc>
 314:	00048513          	mv	a0,s1
 318:	f99ff0ef          	jal	ra,2b0 <neorv32_uart0_putc>
 31c:	fc9ff06f          	j	2e4 <neorv32_uart0_print+0x1c>

00000320 <__neorv32_rte_core>:
 320:	fc010113          	addi	sp,sp,-64
 324:	02112e23          	sw	ra,60(sp)
 328:	02512c23          	sw	t0,56(sp)
 32c:	02612a23          	sw	t1,52(sp)
 330:	02712823          	sw	t2,48(sp)
 334:	02a12623          	sw	a0,44(sp)
 338:	02b12423          	sw	a1,40(sp)
 33c:	02c12223          	sw	a2,36(sp)
 340:	02d12023          	sw	a3,32(sp)
 344:	00e12e23          	sw	a4,28(sp)
 348:	00f12c23          	sw	a5,24(sp)
 34c:	01012a23          	sw	a6,20(sp)
 350:	01112823          	sw	a7,16(sp)
 354:	01c12623          	sw	t3,12(sp)
 358:	01d12423          	sw	t4,8(sp)
 35c:	01e12223          	sw	t5,4(sp)
 360:	01f12023          	sw	t6,0(sp)
 364:	34102773          	csrr	a4,mepc
 368:	34071073          	csrw	mscratch,a4
 36c:	342027f3          	csrr	a5,mcause
 370:	0407c463          	bltz	a5,3b8 <__neorv32_rte_core+0x98>
 374:	00075683          	lhu	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f440>
 378:	00300593          	li	a1,3
 37c:	0036f693          	andi	a3,a3,3
 380:	00270613          	addi	a2,a4,2
 384:	00b69463          	bne	a3,a1,38c <__neorv32_rte_core+0x6c>
 388:	00470613          	addi	a2,a4,4
 38c:	34161073          	csrw	mepc,a2
 390:	00b00713          	li	a4,11
 394:	00f77663          	bgeu	a4,a5,3a0 <__neorv32_rte_core+0x80>
 398:	58c00793          	li	a5,1420
 39c:	0500006f          	j	3ec <__neorv32_rte_core+0xcc>
 3a0:	00001737          	lui	a4,0x1
 3a4:	00279793          	slli	a5,a5,0x2
 3a8:	91470713          	addi	a4,a4,-1772 # 914 <__etext+0x40>
 3ac:	00e787b3          	add	a5,a5,a4
 3b0:	0007a783          	lw	a5,0(a5)
 3b4:	00078067          	jr	a5
 3b8:	80000737          	lui	a4,0x80000
 3bc:	ffd74713          	xori	a4,a4,-3
 3c0:	00e787b3          	add	a5,a5,a4
 3c4:	01c00713          	li	a4,28
 3c8:	fcf768e3          	bltu	a4,a5,398 <__neorv32_rte_core+0x78>
 3cc:	00001737          	lui	a4,0x1
 3d0:	00279793          	slli	a5,a5,0x2
 3d4:	94470713          	addi	a4,a4,-1724 # 944 <__etext+0x70>
 3d8:	00e787b3          	add	a5,a5,a4
 3dc:	0007a783          	lw	a5,0(a5)
 3e0:	00078067          	jr	a5
 3e4:	800007b7          	lui	a5,0x80000
 3e8:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 3ec:	000780e7          	jalr	a5
 3f0:	03c12083          	lw	ra,60(sp)
 3f4:	03812283          	lw	t0,56(sp)
 3f8:	03412303          	lw	t1,52(sp)
 3fc:	03012383          	lw	t2,48(sp)
 400:	02c12503          	lw	a0,44(sp)
 404:	02812583          	lw	a1,40(sp)
 408:	02412603          	lw	a2,36(sp)
 40c:	02012683          	lw	a3,32(sp)
 410:	01c12703          	lw	a4,28(sp)
 414:	01812783          	lw	a5,24(sp)
 418:	01412803          	lw	a6,20(sp)
 41c:	01012883          	lw	a7,16(sp)
 420:	00c12e03          	lw	t3,12(sp)
 424:	00812e83          	lw	t4,8(sp)
 428:	00412f03          	lw	t5,4(sp)
 42c:	00012f83          	lw	t6,0(sp)
 430:	04010113          	addi	sp,sp,64
 434:	30200073          	mret
 438:	800007b7          	lui	a5,0x80000
 43c:	0047a783          	lw	a5,4(a5) # 80000004 <__crt0_io_space_begin+0x80000204>
 440:	fadff06f          	j	3ec <__neorv32_rte_core+0xcc>
 444:	8081a783          	lw	a5,-2040(gp) # 80000008 <__neorv32_rte_vector_lut+0x8>
 448:	fa5ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 44c:	80c1a783          	lw	a5,-2036(gp) # 8000000c <__neorv32_rte_vector_lut+0xc>
 450:	f9dff06f          	j	3ec <__neorv32_rte_core+0xcc>
 454:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 458:	f95ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 45c:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 460:	f8dff06f          	j	3ec <__neorv32_rte_core+0xcc>
 464:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 468:	f85ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 46c:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 470:	f7dff06f          	j	3ec <__neorv32_rte_core+0xcc>
 474:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 478:	f75ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 47c:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 480:	f6dff06f          	j	3ec <__neorv32_rte_core+0xcc>
 484:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 488:	f65ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 48c:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 490:	f5dff06f          	j	3ec <__neorv32_rte_core+0xcc>
 494:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 498:	f55ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 49c:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 4a0:	f4dff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4a4:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 4a8:	f45ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4ac:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 4b0:	f3dff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4b4:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 4b8:	f35ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4bc:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 4c0:	f2dff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4c4:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 4c8:	f25ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4cc:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 4d0:	f1dff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4d4:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 4d8:	f15ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4dc:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 4e0:	f0dff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4e4:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 4e8:	f05ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4ec:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 4f0:	efdff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4f4:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 4f8:	ef5ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 4fc:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 500:	eedff06f          	j	3ec <__neorv32_rte_core+0xcc>
 504:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 508:	ee5ff06f          	j	3ec <__neorv32_rte_core+0xcc>
 50c:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 510:	eddff06f          	j	3ec <__neorv32_rte_core+0xcc>
 514:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 518:	ed5ff06f          	j	3ec <__neorv32_rte_core+0xcc>

0000051c <__neorv32_rte_print_hex_word>:
 51c:	fe010113          	addi	sp,sp,-32
 520:	01212823          	sw	s2,16(sp)
 524:	00050913          	mv	s2,a0
 528:	00001537          	lui	a0,0x1
 52c:	00912a23          	sw	s1,20(sp)
 530:	9b850513          	addi	a0,a0,-1608 # 9b8 <__etext+0xe4>
 534:	000014b7          	lui	s1,0x1
 538:	00812c23          	sw	s0,24(sp)
 53c:	01312623          	sw	s3,12(sp)
 540:	00112e23          	sw	ra,28(sp)
 544:	01c00413          	li	s0,28
 548:	d81ff0ef          	jal	ra,2c8 <neorv32_uart0_print>
 54c:	bb048493          	addi	s1,s1,-1104 # bb0 <hex_symbols.0>
 550:	ffc00993          	li	s3,-4
 554:	008957b3          	srl	a5,s2,s0
 558:	00f7f793          	andi	a5,a5,15
 55c:	00f487b3          	add	a5,s1,a5
 560:	0007c503          	lbu	a0,0(a5)
 564:	ffc40413          	addi	s0,s0,-4
 568:	d49ff0ef          	jal	ra,2b0 <neorv32_uart0_putc>
 56c:	ff3414e3          	bne	s0,s3,554 <__neorv32_rte_print_hex_word+0x38>
 570:	01c12083          	lw	ra,28(sp)
 574:	01812403          	lw	s0,24(sp)
 578:	01412483          	lw	s1,20(sp)
 57c:	01012903          	lw	s2,16(sp)
 580:	00c12983          	lw	s3,12(sp)
 584:	02010113          	addi	sp,sp,32
 588:	00008067          	ret

0000058c <__neorv32_rte_debug_exc_handler>:
 58c:	ff010113          	addi	sp,sp,-16
 590:	00112623          	sw	ra,12(sp)
 594:	00812423          	sw	s0,8(sp)
 598:	00912223          	sw	s1,4(sp)
 59c:	c59ff0ef          	jal	ra,1f4 <neorv32_uart0_available>
 5a0:	1c050863          	beqz	a0,770 <__neorv32_rte_debug_exc_handler+0x1e4>
 5a4:	00001537          	lui	a0,0x1
 5a8:	9bc50513          	addi	a0,a0,-1604 # 9bc <__etext+0xe8>
 5ac:	d1dff0ef          	jal	ra,2c8 <neorv32_uart0_print>
 5b0:	34202473          	csrr	s0,mcause
 5b4:	00900713          	li	a4,9
 5b8:	00f47793          	andi	a5,s0,15
 5bc:	03078493          	addi	s1,a5,48
 5c0:	00f77463          	bgeu	a4,a5,5c8 <__neorv32_rte_debug_exc_handler+0x3c>
 5c4:	05778493          	addi	s1,a5,87
 5c8:	00b00793          	li	a5,11
 5cc:	0087ee63          	bltu	a5,s0,5e8 <__neorv32_rte_debug_exc_handler+0x5c>
 5d0:	00001737          	lui	a4,0x1
 5d4:	00241793          	slli	a5,s0,0x2
 5d8:	b8070713          	addi	a4,a4,-1152 # b80 <__etext+0x2ac>
 5dc:	00e787b3          	add	a5,a5,a4
 5e0:	0007a783          	lw	a5,0(a5)
 5e4:	00078067          	jr	a5
 5e8:	800007b7          	lui	a5,0x80000
 5ec:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 5f0:	14e40e63          	beq	s0,a4,74c <__neorv32_rte_debug_exc_handler+0x1c0>
 5f4:	02876a63          	bltu	a4,s0,628 <__neorv32_rte_debug_exc_handler+0x9c>
 5f8:	00378713          	addi	a4,a5,3
 5fc:	12e40c63          	beq	s0,a4,734 <__neorv32_rte_debug_exc_handler+0x1a8>
 600:	00778793          	addi	a5,a5,7
 604:	12f40e63          	beq	s0,a5,740 <__neorv32_rte_debug_exc_handler+0x1b4>
 608:	00001537          	lui	a0,0x1
 60c:	b1c50513          	addi	a0,a0,-1252 # b1c <__etext+0x248>
 610:	cb9ff0ef          	jal	ra,2c8 <neorv32_uart0_print>
 614:	00040513          	mv	a0,s0
 618:	f05ff0ef          	jal	ra,51c <__neorv32_rte_print_hex_word>
 61c:	00100793          	li	a5,1
 620:	08f40c63          	beq	s0,a5,6b8 <__neorv32_rte_debug_exc_handler+0x12c>
 624:	0280006f          	j	64c <__neorv32_rte_debug_exc_handler+0xc0>
 628:	ff07c793          	xori	a5,a5,-16
 62c:	00f407b3          	add	a5,s0,a5
 630:	00f00713          	li	a4,15
 634:	fcf76ae3          	bltu	a4,a5,608 <__neorv32_rte_debug_exc_handler+0x7c>
 638:	00001537          	lui	a0,0x1
 63c:	b0c50513          	addi	a0,a0,-1268 # b0c <__etext+0x238>
 640:	c89ff0ef          	jal	ra,2c8 <neorv32_uart0_print>
 644:	00048513          	mv	a0,s1
 648:	c69ff0ef          	jal	ra,2b0 <neorv32_uart0_putc>
 64c:	ffd47413          	andi	s0,s0,-3
 650:	00500793          	li	a5,5
 654:	06f40263          	beq	s0,a5,6b8 <__neorv32_rte_debug_exc_handler+0x12c>
 658:	00001537          	lui	a0,0x1
 65c:	b6050513          	addi	a0,a0,-1184 # b60 <__etext+0x28c>
 660:	c69ff0ef          	jal	ra,2c8 <neorv32_uart0_print>
 664:	34002573          	csrr	a0,mscratch
 668:	eb5ff0ef          	jal	ra,51c <__neorv32_rte_print_hex_word>
 66c:	00001537          	lui	a0,0x1
 670:	b6850513          	addi	a0,a0,-1176 # b68 <__etext+0x294>
 674:	c55ff0ef          	jal	ra,2c8 <neorv32_uart0_print>
 678:	34302573          	csrr	a0,mtval
 67c:	ea1ff0ef          	jal	ra,51c <__neorv32_rte_print_hex_word>
 680:	00812403          	lw	s0,8(sp)
 684:	00c12083          	lw	ra,12(sp)
 688:	00412483          	lw	s1,4(sp)
 68c:	00001537          	lui	a0,0x1
 690:	b7450513          	addi	a0,a0,-1164 # b74 <__etext+0x2a0>
 694:	01010113          	addi	sp,sp,16
 698:	c31ff06f          	j	2c8 <neorv32_uart0_print>
 69c:	00001537          	lui	a0,0x1
 6a0:	9c450513          	addi	a0,a0,-1596 # 9c4 <__etext+0xf0>
 6a4:	c25ff0ef          	jal	ra,2c8 <neorv32_uart0_print>
 6a8:	fb1ff06f          	j	658 <__neorv32_rte_debug_exc_handler+0xcc>
 6ac:	00001537          	lui	a0,0x1
 6b0:	9e450513          	addi	a0,a0,-1564 # 9e4 <__etext+0x110>
 6b4:	c15ff0ef          	jal	ra,2c8 <neorv32_uart0_print>
 6b8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 6bc:	0a07d463          	bgez	a5,764 <__neorv32_rte_debug_exc_handler+0x1d8>
 6c0:	0017f793          	andi	a5,a5,1
 6c4:	08078a63          	beqz	a5,758 <__neorv32_rte_debug_exc_handler+0x1cc>
 6c8:	00001537          	lui	a0,0x1
 6cc:	b3450513          	addi	a0,a0,-1228 # b34 <__etext+0x260>
 6d0:	fd5ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 6d4:	00001537          	lui	a0,0x1
 6d8:	a0050513          	addi	a0,a0,-1536 # a00 <__etext+0x12c>
 6dc:	fc9ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 6e0:	00001537          	lui	a0,0x1
 6e4:	a1450513          	addi	a0,a0,-1516 # a14 <__etext+0x140>
 6e8:	fbdff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 6ec:	00001537          	lui	a0,0x1
 6f0:	a2050513          	addi	a0,a0,-1504 # a20 <__etext+0x14c>
 6f4:	fb1ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 6f8:	00001537          	lui	a0,0x1
 6fc:	a3850513          	addi	a0,a0,-1480 # a38 <__etext+0x164>
 700:	fb5ff06f          	j	6b4 <__neorv32_rte_debug_exc_handler+0x128>
 704:	00001537          	lui	a0,0x1
 708:	a4c50513          	addi	a0,a0,-1460 # a4c <__etext+0x178>
 70c:	f99ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 710:	00001537          	lui	a0,0x1
 714:	a6850513          	addi	a0,a0,-1432 # a68 <__etext+0x194>
 718:	f9dff06f          	j	6b4 <__neorv32_rte_debug_exc_handler+0x128>
 71c:	00001537          	lui	a0,0x1
 720:	a7c50513          	addi	a0,a0,-1412 # a7c <__etext+0x1a8>
 724:	f81ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 728:	00001537          	lui	a0,0x1
 72c:	a9c50513          	addi	a0,a0,-1380 # a9c <__etext+0x1c8>
 730:	f75ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 734:	00001537          	lui	a0,0x1
 738:	abc50513          	addi	a0,a0,-1348 # abc <__etext+0x1e8>
 73c:	f69ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 740:	00001537          	lui	a0,0x1
 744:	ad850513          	addi	a0,a0,-1320 # ad8 <__etext+0x204>
 748:	f5dff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 74c:	00001537          	lui	a0,0x1
 750:	af050513          	addi	a0,a0,-1296 # af0 <__etext+0x21c>
 754:	f51ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 758:	00001537          	lui	a0,0x1
 75c:	b4450513          	addi	a0,a0,-1212 # b44 <__etext+0x270>
 760:	f45ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 764:	00001537          	lui	a0,0x1
 768:	b5450513          	addi	a0,a0,-1196 # b54 <__etext+0x280>
 76c:	f39ff06f          	j	6a4 <__neorv32_rte_debug_exc_handler+0x118>
 770:	00c12083          	lw	ra,12(sp)
 774:	00812403          	lw	s0,8(sp)
 778:	00412483          	lw	s1,4(sp)
 77c:	01010113          	addi	sp,sp,16
 780:	00008067          	ret

00000784 <neorv32_rte_exception_uninstall>:
 784:	01f00793          	li	a5,31
 788:	02a7e263          	bltu	a5,a0,7ac <neorv32_rte_exception_uninstall+0x28>
 78c:	800007b7          	lui	a5,0x80000
 790:	00078793          	mv	a5,a5
 794:	00251513          	slli	a0,a0,0x2
 798:	00a78533          	add	a0,a5,a0
 79c:	58c00793          	li	a5,1420
 7a0:	00f52023          	sw	a5,0(a0)
 7a4:	00000513          	li	a0,0
 7a8:	00008067          	ret
 7ac:	00100513          	li	a0,1
 7b0:	00008067          	ret

000007b4 <neorv32_rte_setup>:
 7b4:	ff010113          	addi	sp,sp,-16
 7b8:	00112623          	sw	ra,12(sp)
 7bc:	00812423          	sw	s0,8(sp)
 7c0:	00912223          	sw	s1,4(sp)
 7c4:	32000793          	li	a5,800
 7c8:	30579073          	csrw	mtvec,a5
 7cc:	00000413          	li	s0,0
 7d0:	01d00493          	li	s1,29
 7d4:	00040513          	mv	a0,s0
 7d8:	00140413          	addi	s0,s0,1
 7dc:	0ff47413          	andi	s0,s0,255
 7e0:	fa5ff0ef          	jal	ra,784 <neorv32_rte_exception_uninstall>
 7e4:	fe9418e3          	bne	s0,s1,7d4 <neorv32_rte_setup+0x20>
 7e8:	00c12083          	lw	ra,12(sp)
 7ec:	00812403          	lw	s0,8(sp)
 7f0:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 7f4:	00412483          	lw	s1,4(sp)
 7f8:	01010113          	addi	sp,sp,16
 7fc:	00008067          	ret

00000800 <neorv32_gpio_available>:
 800:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 804:	01055513          	srli	a0,a0,0x10
 808:	00157513          	andi	a0,a0,1
 80c:	00008067          	ret

00000810 <neorv32_gpio_port_set>:
 810:	fc000793          	li	a5,-64
 814:	00a7a423          	sw	a0,8(a5) # 80000008 <__crt0_io_space_begin+0x80000208>
 818:	00b7a623          	sw	a1,12(a5)
 81c:	00008067          	ret

00000820 <__divsi3>:
 820:	06054063          	bltz	a0,880 <__umodsi3+0x10>
 824:	0605c663          	bltz	a1,890 <__umodsi3+0x20>

00000828 <__udivsi3>:
 828:	00058613          	mv	a2,a1
 82c:	00050593          	mv	a1,a0
 830:	fff00513          	li	a0,-1
 834:	02060c63          	beqz	a2,86c <__udivsi3+0x44>
 838:	00100693          	li	a3,1
 83c:	00b67a63          	bgeu	a2,a1,850 <__udivsi3+0x28>
 840:	00c05863          	blez	a2,850 <__udivsi3+0x28>
 844:	00161613          	slli	a2,a2,0x1
 848:	00169693          	slli	a3,a3,0x1
 84c:	feb66ae3          	bltu	a2,a1,840 <__udivsi3+0x18>
 850:	00000513          	li	a0,0
 854:	00c5e663          	bltu	a1,a2,860 <__udivsi3+0x38>
 858:	40c585b3          	sub	a1,a1,a2
 85c:	00d56533          	or	a0,a0,a3
 860:	0016d693          	srli	a3,a3,0x1
 864:	00165613          	srli	a2,a2,0x1
 868:	fe0696e3          	bnez	a3,854 <__udivsi3+0x2c>
 86c:	00008067          	ret

00000870 <__umodsi3>:
 870:	00008293          	mv	t0,ra
 874:	fb5ff0ef          	jal	ra,828 <__udivsi3>
 878:	00058513          	mv	a0,a1
 87c:	00028067          	jr	t0
 880:	40a00533          	neg	a0,a0
 884:	00b04863          	bgtz	a1,894 <__umodsi3+0x24>
 888:	40b005b3          	neg	a1,a1
 88c:	f9dff06f          	j	828 <__udivsi3>
 890:	40b005b3          	neg	a1,a1
 894:	00008293          	mv	t0,ra
 898:	f91ff0ef          	jal	ra,828 <__udivsi3>
 89c:	40a00533          	neg	a0,a0
 8a0:	00028067          	jr	t0

000008a4 <__modsi3>:
 8a4:	00008293          	mv	t0,ra
 8a8:	0005ca63          	bltz	a1,8bc <__modsi3+0x18>
 8ac:	00054c63          	bltz	a0,8c4 <__modsi3+0x20>
 8b0:	f79ff0ef          	jal	ra,828 <__udivsi3>
 8b4:	00058513          	mv	a0,a1
 8b8:	00028067          	jr	t0
 8bc:	40b005b3          	neg	a1,a1
 8c0:	fe0558e3          	bgez	a0,8b0 <__modsi3+0xc>
 8c4:	40a00533          	neg	a0,a0
 8c8:	f61ff0ef          	jal	ra,828 <__udivsi3>
 8cc:	40b00533          	neg	a0,a1
 8d0:	00028067          	jr	t0
