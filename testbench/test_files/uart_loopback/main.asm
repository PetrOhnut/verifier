
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
  bc:	a6858593          	addi	a1,a1,-1432 # b20 <__crt0_copy_data_src_begin>
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
 188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3fe0>
 18c:	00112623          	sw	ra,12(sp)
 190:	024000ef          	jal	ra,1b4 <neorv32_uart0_setup>
 194:	5e0000ef          	jal	ra,774 <neorv32_rte_setup>
 198:	0e0000ef          	jal	ra,278 <neorv32_uart0_getc>
 19c:	0c4000ef          	jal	ra,260 <neorv32_uart0_putc>
 1a0:	ff9ff06f          	j	198 <main+0x20>

000001a4 <neorv32_uart0_available>:
 1a4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 1a8:	01255513          	srli	a0,a0,0x12
 1ac:	00157513          	andi	a0,a0,1
 1b0:	00008067          	ret

000001b4 <neorv32_uart0_setup>:
 1b4:	ff010113          	addi	sp,sp,-16
 1b8:	00812423          	sw	s0,8(sp)
 1bc:	00912223          	sw	s1,4(sp)
 1c0:	00112623          	sw	ra,12(sp)
 1c4:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 1c8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 1cc:	00058413          	mv	s0,a1
 1d0:	00151593          	slli	a1,a0,0x1
 1d4:	00078513          	mv	a0,a5
 1d8:	00060493          	mv	s1,a2
 1dc:	5ec000ef          	jal	ra,7c8 <__udivsi3>
 1e0:	01051513          	slli	a0,a0,0x10
 1e4:	000017b7          	lui	a5,0x1
 1e8:	01055513          	srli	a0,a0,0x10
 1ec:	00000713          	li	a4,0
 1f0:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x4de>
 1f4:	04a7e463          	bltu	a5,a0,23c <neorv32_uart0_setup+0x88>
 1f8:	0034f793          	andi	a5,s1,3
 1fc:	00347413          	andi	s0,s0,3
 200:	fff50513          	addi	a0,a0,-1
 204:	01479793          	slli	a5,a5,0x14
 208:	01641413          	slli	s0,s0,0x16
 20c:	00f567b3          	or	a5,a0,a5
 210:	0087e7b3          	or	a5,a5,s0
 214:	01871713          	slli	a4,a4,0x18
 218:	00c12083          	lw	ra,12(sp)
 21c:	00812403          	lw	s0,8(sp)
 220:	00e7e7b3          	or	a5,a5,a4
 224:	10000737          	lui	a4,0x10000
 228:	00e7e7b3          	or	a5,a5,a4
 22c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 230:	00412483          	lw	s1,4(sp)
 234:	01010113          	addi	sp,sp,16
 238:	00008067          	ret
 23c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff4de>
 240:	0fd6f693          	andi	a3,a3,253
 244:	00069a63          	bnez	a3,258 <neorv32_uart0_setup+0xa4>
 248:	00355513          	srli	a0,a0,0x3
 24c:	00170713          	addi	a4,a4,1
 250:	0ff77713          	andi	a4,a4,255
 254:	fa1ff06f          	j	1f4 <neorv32_uart0_setup+0x40>
 258:	00155513          	srli	a0,a0,0x1
 25c:	ff1ff06f          	j	24c <neorv32_uart0_setup+0x98>

00000260 <neorv32_uart0_putc>:
 260:	00040737          	lui	a4,0x40
 264:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 268:	00e7f7b3          	and	a5,a5,a4
 26c:	fe079ce3          	bnez	a5,264 <neorv32_uart0_putc+0x4>
 270:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 274:	00008067          	ret

00000278 <neorv32_uart0_getc>:
 278:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 27c:	fe055ee3          	bgez	a0,278 <neorv32_uart0_getc>
 280:	0ff57513          	andi	a0,a0,255
 284:	00008067          	ret

00000288 <neorv32_uart0_print>:
 288:	ff010113          	addi	sp,sp,-16
 28c:	00812423          	sw	s0,8(sp)
 290:	01212023          	sw	s2,0(sp)
 294:	00112623          	sw	ra,12(sp)
 298:	00912223          	sw	s1,4(sp)
 29c:	00050413          	mv	s0,a0
 2a0:	00a00913          	li	s2,10
 2a4:	00044483          	lbu	s1,0(s0)
 2a8:	00140413          	addi	s0,s0,1
 2ac:	00049e63          	bnez	s1,2c8 <neorv32_uart0_print+0x40>
 2b0:	00c12083          	lw	ra,12(sp)
 2b4:	00812403          	lw	s0,8(sp)
 2b8:	00412483          	lw	s1,4(sp)
 2bc:	00012903          	lw	s2,0(sp)
 2c0:	01010113          	addi	sp,sp,16
 2c4:	00008067          	ret
 2c8:	01249663          	bne	s1,s2,2d4 <neorv32_uart0_print+0x4c>
 2cc:	00d00513          	li	a0,13
 2d0:	f91ff0ef          	jal	ra,260 <neorv32_uart0_putc>
 2d4:	00048513          	mv	a0,s1
 2d8:	f89ff0ef          	jal	ra,260 <neorv32_uart0_putc>
 2dc:	fc9ff06f          	j	2a4 <neorv32_uart0_print+0x1c>

000002e0 <__neorv32_rte_core>:
 2e0:	fc010113          	addi	sp,sp,-64
 2e4:	02112e23          	sw	ra,60(sp)
 2e8:	02512c23          	sw	t0,56(sp)
 2ec:	02612a23          	sw	t1,52(sp)
 2f0:	02712823          	sw	t2,48(sp)
 2f4:	02a12623          	sw	a0,44(sp)
 2f8:	02b12423          	sw	a1,40(sp)
 2fc:	02c12223          	sw	a2,36(sp)
 300:	02d12023          	sw	a3,32(sp)
 304:	00e12e23          	sw	a4,28(sp)
 308:	00f12c23          	sw	a5,24(sp)
 30c:	01012a23          	sw	a6,20(sp)
 310:	01112823          	sw	a7,16(sp)
 314:	01c12623          	sw	t3,12(sp)
 318:	01d12423          	sw	t4,8(sp)
 31c:	01e12223          	sw	t5,4(sp)
 320:	01f12023          	sw	t6,0(sp)
 324:	34102773          	csrr	a4,mepc
 328:	34071073          	csrw	mscratch,a4
 32c:	342027f3          	csrr	a5,mcause
 330:	0407c463          	bltz	a5,378 <__neorv32_rte_core+0x98>
 334:	00075683          	lhu	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f4e0>
 338:	00300593          	li	a1,3
 33c:	0036f693          	andi	a3,a3,3
 340:	00270613          	addi	a2,a4,2
 344:	00b69463          	bne	a3,a1,34c <__neorv32_rte_core+0x6c>
 348:	00470613          	addi	a2,a4,4
 34c:	34161073          	csrw	mepc,a2
 350:	00b00713          	li	a4,11
 354:	00f77663          	bgeu	a4,a5,360 <__neorv32_rte_core+0x80>
 358:	54c00793          	li	a5,1356
 35c:	0500006f          	j	3ac <__neorv32_rte_core+0xcc>
 360:	00001737          	lui	a4,0x1
 364:	00279793          	slli	a5,a5,0x2
 368:	87470713          	addi	a4,a4,-1932 # 874 <__etext>
 36c:	00e787b3          	add	a5,a5,a4
 370:	0007a783          	lw	a5,0(a5)
 374:	00078067          	jr	a5
 378:	80000737          	lui	a4,0x80000
 37c:	ffd74713          	xori	a4,a4,-3
 380:	00e787b3          	add	a5,a5,a4
 384:	01c00713          	li	a4,28
 388:	fcf768e3          	bltu	a4,a5,358 <__neorv32_rte_core+0x78>
 38c:	00001737          	lui	a4,0x1
 390:	00279793          	slli	a5,a5,0x2
 394:	8a470713          	addi	a4,a4,-1884 # 8a4 <__etext+0x30>
 398:	00e787b3          	add	a5,a5,a4
 39c:	0007a783          	lw	a5,0(a5)
 3a0:	00078067          	jr	a5
 3a4:	800007b7          	lui	a5,0x80000
 3a8:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 3ac:	000780e7          	jalr	a5
 3b0:	03c12083          	lw	ra,60(sp)
 3b4:	03812283          	lw	t0,56(sp)
 3b8:	03412303          	lw	t1,52(sp)
 3bc:	03012383          	lw	t2,48(sp)
 3c0:	02c12503          	lw	a0,44(sp)
 3c4:	02812583          	lw	a1,40(sp)
 3c8:	02412603          	lw	a2,36(sp)
 3cc:	02012683          	lw	a3,32(sp)
 3d0:	01c12703          	lw	a4,28(sp)
 3d4:	01812783          	lw	a5,24(sp)
 3d8:	01412803          	lw	a6,20(sp)
 3dc:	01012883          	lw	a7,16(sp)
 3e0:	00c12e03          	lw	t3,12(sp)
 3e4:	00812e83          	lw	t4,8(sp)
 3e8:	00412f03          	lw	t5,4(sp)
 3ec:	00012f83          	lw	t6,0(sp)
 3f0:	04010113          	addi	sp,sp,64
 3f4:	30200073          	mret
 3f8:	800007b7          	lui	a5,0x80000
 3fc:	0047a783          	lw	a5,4(a5) # 80000004 <__crt0_io_space_begin+0x80000204>
 400:	fadff06f          	j	3ac <__neorv32_rte_core+0xcc>
 404:	8081a783          	lw	a5,-2040(gp) # 80000008 <__neorv32_rte_vector_lut+0x8>
 408:	fa5ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 40c:	80c1a783          	lw	a5,-2036(gp) # 8000000c <__neorv32_rte_vector_lut+0xc>
 410:	f9dff06f          	j	3ac <__neorv32_rte_core+0xcc>
 414:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 418:	f95ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 41c:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 420:	f8dff06f          	j	3ac <__neorv32_rte_core+0xcc>
 424:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 428:	f85ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 42c:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 430:	f7dff06f          	j	3ac <__neorv32_rte_core+0xcc>
 434:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 438:	f75ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 43c:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 440:	f6dff06f          	j	3ac <__neorv32_rte_core+0xcc>
 444:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 448:	f65ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 44c:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 450:	f5dff06f          	j	3ac <__neorv32_rte_core+0xcc>
 454:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 458:	f55ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 45c:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 460:	f4dff06f          	j	3ac <__neorv32_rte_core+0xcc>
 464:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 468:	f45ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 46c:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 470:	f3dff06f          	j	3ac <__neorv32_rte_core+0xcc>
 474:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 478:	f35ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 47c:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 480:	f2dff06f          	j	3ac <__neorv32_rte_core+0xcc>
 484:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 488:	f25ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 48c:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 490:	f1dff06f          	j	3ac <__neorv32_rte_core+0xcc>
 494:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 498:	f15ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 49c:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 4a0:	f0dff06f          	j	3ac <__neorv32_rte_core+0xcc>
 4a4:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 4a8:	f05ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 4ac:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 4b0:	efdff06f          	j	3ac <__neorv32_rte_core+0xcc>
 4b4:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 4b8:	ef5ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 4bc:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 4c0:	eedff06f          	j	3ac <__neorv32_rte_core+0xcc>
 4c4:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 4c8:	ee5ff06f          	j	3ac <__neorv32_rte_core+0xcc>
 4cc:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 4d0:	eddff06f          	j	3ac <__neorv32_rte_core+0xcc>
 4d4:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 4d8:	ed5ff06f          	j	3ac <__neorv32_rte_core+0xcc>

000004dc <__neorv32_rte_print_hex_word>:
 4dc:	fe010113          	addi	sp,sp,-32
 4e0:	01212823          	sw	s2,16(sp)
 4e4:	00050913          	mv	s2,a0
 4e8:	00001537          	lui	a0,0x1
 4ec:	00912a23          	sw	s1,20(sp)
 4f0:	91850513          	addi	a0,a0,-1768 # 918 <__etext+0xa4>
 4f4:	000014b7          	lui	s1,0x1
 4f8:	00812c23          	sw	s0,24(sp)
 4fc:	01312623          	sw	s3,12(sp)
 500:	00112e23          	sw	ra,28(sp)
 504:	01c00413          	li	s0,28
 508:	d81ff0ef          	jal	ra,288 <neorv32_uart0_print>
 50c:	b1048493          	addi	s1,s1,-1264 # b10 <hex_symbols.0>
 510:	ffc00993          	li	s3,-4
 514:	008957b3          	srl	a5,s2,s0
 518:	00f7f793          	andi	a5,a5,15
 51c:	00f487b3          	add	a5,s1,a5
 520:	0007c503          	lbu	a0,0(a5)
 524:	ffc40413          	addi	s0,s0,-4
 528:	d39ff0ef          	jal	ra,260 <neorv32_uart0_putc>
 52c:	ff3414e3          	bne	s0,s3,514 <__neorv32_rte_print_hex_word+0x38>
 530:	01c12083          	lw	ra,28(sp)
 534:	01812403          	lw	s0,24(sp)
 538:	01412483          	lw	s1,20(sp)
 53c:	01012903          	lw	s2,16(sp)
 540:	00c12983          	lw	s3,12(sp)
 544:	02010113          	addi	sp,sp,32
 548:	00008067          	ret

0000054c <__neorv32_rte_debug_exc_handler>:
 54c:	ff010113          	addi	sp,sp,-16
 550:	00112623          	sw	ra,12(sp)
 554:	00812423          	sw	s0,8(sp)
 558:	00912223          	sw	s1,4(sp)
 55c:	c49ff0ef          	jal	ra,1a4 <neorv32_uart0_available>
 560:	1c050863          	beqz	a0,730 <__neorv32_rte_debug_exc_handler+0x1e4>
 564:	00001537          	lui	a0,0x1
 568:	91c50513          	addi	a0,a0,-1764 # 91c <__etext+0xa8>
 56c:	d1dff0ef          	jal	ra,288 <neorv32_uart0_print>
 570:	34202473          	csrr	s0,mcause
 574:	00900713          	li	a4,9
 578:	00f47793          	andi	a5,s0,15
 57c:	03078493          	addi	s1,a5,48
 580:	00f77463          	bgeu	a4,a5,588 <__neorv32_rte_debug_exc_handler+0x3c>
 584:	05778493          	addi	s1,a5,87
 588:	00b00793          	li	a5,11
 58c:	0087ee63          	bltu	a5,s0,5a8 <__neorv32_rte_debug_exc_handler+0x5c>
 590:	00001737          	lui	a4,0x1
 594:	00241793          	slli	a5,s0,0x2
 598:	ae070713          	addi	a4,a4,-1312 # ae0 <__etext+0x26c>
 59c:	00e787b3          	add	a5,a5,a4
 5a0:	0007a783          	lw	a5,0(a5)
 5a4:	00078067          	jr	a5
 5a8:	800007b7          	lui	a5,0x80000
 5ac:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 5b0:	14e40e63          	beq	s0,a4,70c <__neorv32_rte_debug_exc_handler+0x1c0>
 5b4:	02876a63          	bltu	a4,s0,5e8 <__neorv32_rte_debug_exc_handler+0x9c>
 5b8:	00378713          	addi	a4,a5,3
 5bc:	12e40c63          	beq	s0,a4,6f4 <__neorv32_rte_debug_exc_handler+0x1a8>
 5c0:	00778793          	addi	a5,a5,7
 5c4:	12f40e63          	beq	s0,a5,700 <__neorv32_rte_debug_exc_handler+0x1b4>
 5c8:	00001537          	lui	a0,0x1
 5cc:	a7c50513          	addi	a0,a0,-1412 # a7c <__etext+0x208>
 5d0:	cb9ff0ef          	jal	ra,288 <neorv32_uart0_print>
 5d4:	00040513          	mv	a0,s0
 5d8:	f05ff0ef          	jal	ra,4dc <__neorv32_rte_print_hex_word>
 5dc:	00100793          	li	a5,1
 5e0:	08f40c63          	beq	s0,a5,678 <__neorv32_rte_debug_exc_handler+0x12c>
 5e4:	0280006f          	j	60c <__neorv32_rte_debug_exc_handler+0xc0>
 5e8:	ff07c793          	xori	a5,a5,-16
 5ec:	00f407b3          	add	a5,s0,a5
 5f0:	00f00713          	li	a4,15
 5f4:	fcf76ae3          	bltu	a4,a5,5c8 <__neorv32_rte_debug_exc_handler+0x7c>
 5f8:	00001537          	lui	a0,0x1
 5fc:	a6c50513          	addi	a0,a0,-1428 # a6c <__etext+0x1f8>
 600:	c89ff0ef          	jal	ra,288 <neorv32_uart0_print>
 604:	00048513          	mv	a0,s1
 608:	c59ff0ef          	jal	ra,260 <neorv32_uart0_putc>
 60c:	ffd47413          	andi	s0,s0,-3
 610:	00500793          	li	a5,5
 614:	06f40263          	beq	s0,a5,678 <__neorv32_rte_debug_exc_handler+0x12c>
 618:	00001537          	lui	a0,0x1
 61c:	ac050513          	addi	a0,a0,-1344 # ac0 <__etext+0x24c>
 620:	c69ff0ef          	jal	ra,288 <neorv32_uart0_print>
 624:	34002573          	csrr	a0,mscratch
 628:	eb5ff0ef          	jal	ra,4dc <__neorv32_rte_print_hex_word>
 62c:	00001537          	lui	a0,0x1
 630:	ac850513          	addi	a0,a0,-1336 # ac8 <__etext+0x254>
 634:	c55ff0ef          	jal	ra,288 <neorv32_uart0_print>
 638:	34302573          	csrr	a0,mtval
 63c:	ea1ff0ef          	jal	ra,4dc <__neorv32_rte_print_hex_word>
 640:	00812403          	lw	s0,8(sp)
 644:	00c12083          	lw	ra,12(sp)
 648:	00412483          	lw	s1,4(sp)
 64c:	00001537          	lui	a0,0x1
 650:	ad450513          	addi	a0,a0,-1324 # ad4 <__etext+0x260>
 654:	01010113          	addi	sp,sp,16
 658:	c31ff06f          	j	288 <neorv32_uart0_print>
 65c:	00001537          	lui	a0,0x1
 660:	92450513          	addi	a0,a0,-1756 # 924 <__etext+0xb0>
 664:	c25ff0ef          	jal	ra,288 <neorv32_uart0_print>
 668:	fb1ff06f          	j	618 <__neorv32_rte_debug_exc_handler+0xcc>
 66c:	00001537          	lui	a0,0x1
 670:	94450513          	addi	a0,a0,-1724 # 944 <__etext+0xd0>
 674:	c15ff0ef          	jal	ra,288 <neorv32_uart0_print>
 678:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 67c:	0a07d463          	bgez	a5,724 <__neorv32_rte_debug_exc_handler+0x1d8>
 680:	0017f793          	andi	a5,a5,1
 684:	08078a63          	beqz	a5,718 <__neorv32_rte_debug_exc_handler+0x1cc>
 688:	00001537          	lui	a0,0x1
 68c:	a9450513          	addi	a0,a0,-1388 # a94 <__etext+0x220>
 690:	fd5ff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 694:	00001537          	lui	a0,0x1
 698:	96050513          	addi	a0,a0,-1696 # 960 <__etext+0xec>
 69c:	fc9ff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 6a0:	00001537          	lui	a0,0x1
 6a4:	97450513          	addi	a0,a0,-1676 # 974 <__etext+0x100>
 6a8:	fbdff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 6ac:	00001537          	lui	a0,0x1
 6b0:	98050513          	addi	a0,a0,-1664 # 980 <__etext+0x10c>
 6b4:	fb1ff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 6b8:	00001537          	lui	a0,0x1
 6bc:	99850513          	addi	a0,a0,-1640 # 998 <__etext+0x124>
 6c0:	fb5ff06f          	j	674 <__neorv32_rte_debug_exc_handler+0x128>
 6c4:	00001537          	lui	a0,0x1
 6c8:	9ac50513          	addi	a0,a0,-1620 # 9ac <__etext+0x138>
 6cc:	f99ff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 6d0:	00001537          	lui	a0,0x1
 6d4:	9c850513          	addi	a0,a0,-1592 # 9c8 <__etext+0x154>
 6d8:	f9dff06f          	j	674 <__neorv32_rte_debug_exc_handler+0x128>
 6dc:	00001537          	lui	a0,0x1
 6e0:	9dc50513          	addi	a0,a0,-1572 # 9dc <__etext+0x168>
 6e4:	f81ff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 6e8:	00001537          	lui	a0,0x1
 6ec:	9fc50513          	addi	a0,a0,-1540 # 9fc <__etext+0x188>
 6f0:	f75ff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 6f4:	00001537          	lui	a0,0x1
 6f8:	a1c50513          	addi	a0,a0,-1508 # a1c <__etext+0x1a8>
 6fc:	f69ff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 700:	00001537          	lui	a0,0x1
 704:	a3850513          	addi	a0,a0,-1480 # a38 <__etext+0x1c4>
 708:	f5dff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 70c:	00001537          	lui	a0,0x1
 710:	a5050513          	addi	a0,a0,-1456 # a50 <__etext+0x1dc>
 714:	f51ff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 718:	00001537          	lui	a0,0x1
 71c:	aa450513          	addi	a0,a0,-1372 # aa4 <__etext+0x230>
 720:	f45ff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 724:	00001537          	lui	a0,0x1
 728:	ab450513          	addi	a0,a0,-1356 # ab4 <__etext+0x240>
 72c:	f39ff06f          	j	664 <__neorv32_rte_debug_exc_handler+0x118>
 730:	00c12083          	lw	ra,12(sp)
 734:	00812403          	lw	s0,8(sp)
 738:	00412483          	lw	s1,4(sp)
 73c:	01010113          	addi	sp,sp,16
 740:	00008067          	ret

00000744 <neorv32_rte_exception_uninstall>:
 744:	01f00793          	li	a5,31
 748:	02a7e263          	bltu	a5,a0,76c <neorv32_rte_exception_uninstall+0x28>
 74c:	800007b7          	lui	a5,0x80000
 750:	00078793          	mv	a5,a5
 754:	00251513          	slli	a0,a0,0x2
 758:	00a78533          	add	a0,a5,a0
 75c:	54c00793          	li	a5,1356
 760:	00f52023          	sw	a5,0(a0)
 764:	00000513          	li	a0,0
 768:	00008067          	ret
 76c:	00100513          	li	a0,1
 770:	00008067          	ret

00000774 <neorv32_rte_setup>:
 774:	ff010113          	addi	sp,sp,-16
 778:	00112623          	sw	ra,12(sp)
 77c:	00812423          	sw	s0,8(sp)
 780:	00912223          	sw	s1,4(sp)
 784:	2e000793          	li	a5,736
 788:	30579073          	csrw	mtvec,a5
 78c:	00000413          	li	s0,0
 790:	01d00493          	li	s1,29
 794:	00040513          	mv	a0,s0
 798:	00140413          	addi	s0,s0,1
 79c:	0ff47413          	andi	s0,s0,255
 7a0:	fa5ff0ef          	jal	ra,744 <neorv32_rte_exception_uninstall>
 7a4:	fe9418e3          	bne	s0,s1,794 <neorv32_rte_setup+0x20>
 7a8:	00c12083          	lw	ra,12(sp)
 7ac:	00812403          	lw	s0,8(sp)
 7b0:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 7b4:	00412483          	lw	s1,4(sp)
 7b8:	01010113          	addi	sp,sp,16
 7bc:	00008067          	ret

000007c0 <__divsi3>:
 7c0:	06054063          	bltz	a0,820 <__umodsi3+0x10>
 7c4:	0605c663          	bltz	a1,830 <__umodsi3+0x20>

000007c8 <__udivsi3>:
 7c8:	00058613          	mv	a2,a1
 7cc:	00050593          	mv	a1,a0
 7d0:	fff00513          	li	a0,-1
 7d4:	02060c63          	beqz	a2,80c <__heap_size+0xc>
 7d8:	00100693          	li	a3,1
 7dc:	00b67a63          	bgeu	a2,a1,7f0 <__udivsi3+0x28>
 7e0:	00c05863          	blez	a2,7f0 <__udivsi3+0x28>
 7e4:	00161613          	slli	a2,a2,0x1
 7e8:	00169693          	slli	a3,a3,0x1
 7ec:	feb66ae3          	bltu	a2,a1,7e0 <__udivsi3+0x18>
 7f0:	00000513          	li	a0,0
 7f4:	00c5e663          	bltu	a1,a2,800 <__heap_size>
 7f8:	40c585b3          	sub	a1,a1,a2
 7fc:	00d56533          	or	a0,a0,a3
 800:	0016d693          	srli	a3,a3,0x1
 804:	00165613          	srli	a2,a2,0x1
 808:	fe0696e3          	bnez	a3,7f4 <__udivsi3+0x2c>
 80c:	00008067          	ret

00000810 <__umodsi3>:
 810:	00008293          	mv	t0,ra
 814:	fb5ff0ef          	jal	ra,7c8 <__udivsi3>
 818:	00058513          	mv	a0,a1
 81c:	00028067          	jr	t0
 820:	40a00533          	neg	a0,a0
 824:	00b04863          	bgtz	a1,834 <__umodsi3+0x24>
 828:	40b005b3          	neg	a1,a1
 82c:	f9dff06f          	j	7c8 <__udivsi3>
 830:	40b005b3          	neg	a1,a1
 834:	00008293          	mv	t0,ra
 838:	f91ff0ef          	jal	ra,7c8 <__udivsi3>
 83c:	40a00533          	neg	a0,a0
 840:	00028067          	jr	t0

00000844 <__modsi3>:
 844:	00008293          	mv	t0,ra
 848:	0005ca63          	bltz	a1,85c <__modsi3+0x18>
 84c:	00054c63          	bltz	a0,864 <__modsi3+0x20>
 850:	f79ff0ef          	jal	ra,7c8 <__udivsi3>
 854:	00058513          	mv	a0,a1
 858:	00028067          	jr	t0
 85c:	40b005b3          	neg	a1,a1
 860:	fe0558e3          	bgez	a0,850 <__modsi3+0xc>
 864:	40a00533          	neg	a0,a0
 868:	f61ff0ef          	jal	ra,7c8 <__udivsi3>
 86c:	40b00533          	neg	a0,a1
 870:	00028067          	jr	t0
