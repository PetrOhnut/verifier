
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
  bc:	61058593          	addi	a1,a1,1552 # 16c8 <__crt0_copy_data_src_begin>
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
 180:	139000ef          	jal	ra,ab8 <neorv32_rte_setup>
 184:	00005537          	lui	a0,0x5
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3438>
 194:	1ac000ef          	jal	ra,340 <neorv32_uart0_setup>
 198:	00000513          	li	a0,0
 19c:	265000ef          	jal	ra,c00 <neorv32_rte_check_isa>
 1a0:	165000ef          	jal	ra,b04 <neorv32_rte_print_logo>
 1a4:	00001537          	lui	a0,0x1
 1a8:	e4050513          	addi	a0,a0,-448 # e40 <__etext>
 1ac:	258000ef          	jal	ra,404 <neorv32_uart0_print>
 1b0:	00c12083          	lw	ra,12(sp)
 1b4:	00000513          	li	a0,0
 1b8:	01010113          	addi	sp,sp,16
 1bc:	00008067          	ret

000001c0 <__neorv32_uart_itoa>:
 1c0:	fd010113          	addi	sp,sp,-48
 1c4:	02812423          	sw	s0,40(sp)
 1c8:	02912223          	sw	s1,36(sp)
 1cc:	03212023          	sw	s2,32(sp)
 1d0:	01312e23          	sw	s3,28(sp)
 1d4:	01412c23          	sw	s4,24(sp)
 1d8:	02112623          	sw	ra,44(sp)
 1dc:	01512a23          	sw	s5,20(sp)
 1e0:	00001a37          	lui	s4,0x1
 1e4:	00050493          	mv	s1,a0
 1e8:	00058413          	mv	s0,a1
 1ec:	00058523          	sb	zero,10(a1)
 1f0:	00000993          	li	s3,0
 1f4:	00410913          	addi	s2,sp,4
 1f8:	e54a0a13          	addi	s4,s4,-428 # e54 <numbers.1>
 1fc:	00a00593          	li	a1,10
 200:	00048513          	mv	a0,s1
 204:	2b1000ef          	jal	ra,cb4 <__umodsi3>
 208:	00aa0533          	add	a0,s4,a0
 20c:	00054783          	lbu	a5,0(a0)
 210:	01390ab3          	add	s5,s2,s3
 214:	00048513          	mv	a0,s1
 218:	00fa8023          	sb	a5,0(s5)
 21c:	00a00593          	li	a1,10
 220:	24d000ef          	jal	ra,c6c <__udivsi3>
 224:	00198993          	addi	s3,s3,1
 228:	00a00793          	li	a5,10
 22c:	00050493          	mv	s1,a0
 230:	fcf996e3          	bne	s3,a5,1fc <__neorv32_uart_itoa+0x3c>
 234:	00090693          	mv	a3,s2
 238:	00900713          	li	a4,9
 23c:	03000613          	li	a2,48
 240:	0096c583          	lbu	a1,9(a3)
 244:	00070793          	mv	a5,a4
 248:	fff70713          	addi	a4,a4,-1
 24c:	01071713          	slli	a4,a4,0x10
 250:	01075713          	srli	a4,a4,0x10
 254:	00c59a63          	bne	a1,a2,268 <__neorv32_uart_itoa+0xa8>
 258:	000684a3          	sb	zero,9(a3)
 25c:	fff68693          	addi	a3,a3,-1
 260:	fe0710e3          	bnez	a4,240 <__neorv32_uart_itoa+0x80>
 264:	00000793          	li	a5,0
 268:	00f907b3          	add	a5,s2,a5
 26c:	00000593          	li	a1,0
 270:	0007c703          	lbu	a4,0(a5)
 274:	00070c63          	beqz	a4,28c <__neorv32_uart_itoa+0xcc>
 278:	00158693          	addi	a3,a1,1
 27c:	00b405b3          	add	a1,s0,a1
 280:	00e58023          	sb	a4,0(a1)
 284:	01069593          	slli	a1,a3,0x10
 288:	0105d593          	srli	a1,a1,0x10
 28c:	fff78713          	addi	a4,a5,-1
 290:	02f91863          	bne	s2,a5,2c0 <__neorv32_uart_itoa+0x100>
 294:	00b40433          	add	s0,s0,a1
 298:	00040023          	sb	zero,0(s0)
 29c:	02c12083          	lw	ra,44(sp)
 2a0:	02812403          	lw	s0,40(sp)
 2a4:	02412483          	lw	s1,36(sp)
 2a8:	02012903          	lw	s2,32(sp)
 2ac:	01c12983          	lw	s3,28(sp)
 2b0:	01812a03          	lw	s4,24(sp)
 2b4:	01412a83          	lw	s5,20(sp)
 2b8:	03010113          	addi	sp,sp,48
 2bc:	00008067          	ret
 2c0:	00070793          	mv	a5,a4
 2c4:	fadff06f          	j	270 <__neorv32_uart_itoa+0xb0>

000002c8 <__neorv32_uart_tohex>:
 2c8:	00001637          	lui	a2,0x1
 2cc:	00758693          	addi	a3,a1,7
 2d0:	00000713          	li	a4,0
 2d4:	e6060613          	addi	a2,a2,-416 # e60 <symbols.0>
 2d8:	02000813          	li	a6,32
 2dc:	00e557b3          	srl	a5,a0,a4
 2e0:	00f7f793          	andi	a5,a5,15
 2e4:	00f607b3          	add	a5,a2,a5
 2e8:	0007c783          	lbu	a5,0(a5)
 2ec:	00470713          	addi	a4,a4,4
 2f0:	fff68693          	addi	a3,a3,-1
 2f4:	00f680a3          	sb	a5,1(a3)
 2f8:	ff0712e3          	bne	a4,a6,2dc <__neorv32_uart_tohex+0x14>
 2fc:	00058423          	sb	zero,8(a1)
 300:	00008067          	ret

00000304 <__neorv32_uart_touppercase.constprop.0>:
 304:	00b50693          	addi	a3,a0,11
 308:	01900613          	li	a2,25
 30c:	00054783          	lbu	a5,0(a0)
 310:	f9f78713          	addi	a4,a5,-97
 314:	0ff77713          	andi	a4,a4,255
 318:	00e66663          	bltu	a2,a4,324 <__neorv32_uart_touppercase.constprop.0+0x20>
 31c:	fe078793          	addi	a5,a5,-32
 320:	00f50023          	sb	a5,0(a0)
 324:	00150513          	addi	a0,a0,1
 328:	fed512e3          	bne	a0,a3,30c <__neorv32_uart_touppercase.constprop.0+0x8>
 32c:	00008067          	ret

00000330 <neorv32_uart0_available>:
 330:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 334:	01255513          	srli	a0,a0,0x12
 338:	00157513          	andi	a0,a0,1
 33c:	00008067          	ret

00000340 <neorv32_uart0_setup>:
 340:	ff010113          	addi	sp,sp,-16
 344:	00812423          	sw	s0,8(sp)
 348:	00912223          	sw	s1,4(sp)
 34c:	00112623          	sw	ra,12(sp)
 350:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 354:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 358:	00058413          	mv	s0,a1
 35c:	00151593          	slli	a1,a0,0x1
 360:	00078513          	mv	a0,a5
 364:	00060493          	mv	s1,a2
 368:	105000ef          	jal	ra,c6c <__udivsi3>
 36c:	01051513          	slli	a0,a0,0x10
 370:	000017b7          	lui	a5,0x1
 374:	01055513          	srli	a0,a0,0x10
 378:	00000713          	li	a4,0
 37c:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x19e>
 380:	04a7e463          	bltu	a5,a0,3c8 <neorv32_uart0_setup+0x88>
 384:	0034f793          	andi	a5,s1,3
 388:	00347413          	andi	s0,s0,3
 38c:	fff50513          	addi	a0,a0,-1
 390:	01479793          	slli	a5,a5,0x14
 394:	01641413          	slli	s0,s0,0x16
 398:	00f567b3          	or	a5,a0,a5
 39c:	0087e7b3          	or	a5,a5,s0
 3a0:	01871713          	slli	a4,a4,0x18
 3a4:	00c12083          	lw	ra,12(sp)
 3a8:	00812403          	lw	s0,8(sp)
 3ac:	00e7e7b3          	or	a5,a5,a4
 3b0:	10001737          	lui	a4,0x10001
 3b4:	00e7e7b3          	or	a5,a5,a4
 3b8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 3bc:	00412483          	lw	s1,4(sp)
 3c0:	01010113          	addi	sp,sp,16
 3c4:	00008067          	ret
 3c8:	ffe70693          	addi	a3,a4,-2 # 10000ffe <__crt0_copy_data_src_begin+0xffff936>
 3cc:	0fd6f693          	andi	a3,a3,253
 3d0:	00069a63          	bnez	a3,3e4 <neorv32_uart0_setup+0xa4>
 3d4:	00355513          	srli	a0,a0,0x3
 3d8:	00170713          	addi	a4,a4,1
 3dc:	0ff77713          	andi	a4,a4,255
 3e0:	fa1ff06f          	j	380 <neorv32_uart0_setup+0x40>
 3e4:	00155513          	srli	a0,a0,0x1
 3e8:	ff1ff06f          	j	3d8 <neorv32_uart0_setup+0x98>

000003ec <neorv32_uart0_putc>:
 3ec:	00040737          	lui	a4,0x40
 3f0:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 3f4:	00e7f7b3          	and	a5,a5,a4
 3f8:	fe079ce3          	bnez	a5,3f0 <neorv32_uart0_putc+0x4>
 3fc:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 400:	00008067          	ret

00000404 <neorv32_uart0_print>:
 404:	ff010113          	addi	sp,sp,-16
 408:	00812423          	sw	s0,8(sp)
 40c:	01212023          	sw	s2,0(sp)
 410:	00112623          	sw	ra,12(sp)
 414:	00912223          	sw	s1,4(sp)
 418:	00050413          	mv	s0,a0
 41c:	00a00913          	li	s2,10
 420:	00044483          	lbu	s1,0(s0)
 424:	00140413          	addi	s0,s0,1
 428:	00049e63          	bnez	s1,444 <neorv32_uart0_print+0x40>
 42c:	00c12083          	lw	ra,12(sp)
 430:	00812403          	lw	s0,8(sp)
 434:	00412483          	lw	s1,4(sp)
 438:	00012903          	lw	s2,0(sp)
 43c:	01010113          	addi	sp,sp,16
 440:	00008067          	ret
 444:	01249663          	bne	s1,s2,450 <neorv32_uart0_print+0x4c>
 448:	00d00513          	li	a0,13
 44c:	fa1ff0ef          	jal	ra,3ec <neorv32_uart0_putc>
 450:	00048513          	mv	a0,s1
 454:	f99ff0ef          	jal	ra,3ec <neorv32_uart0_putc>
 458:	fc9ff06f          	j	420 <neorv32_uart0_print+0x1c>

0000045c <neorv32_uart0_printf>:
 45c:	fa010113          	addi	sp,sp,-96
 460:	04f12a23          	sw	a5,84(sp)
 464:	04410793          	addi	a5,sp,68
 468:	02812c23          	sw	s0,56(sp)
 46c:	03212823          	sw	s2,48(sp)
 470:	03312623          	sw	s3,44(sp)
 474:	03512223          	sw	s5,36(sp)
 478:	03612023          	sw	s6,32(sp)
 47c:	01712e23          	sw	s7,28(sp)
 480:	01812c23          	sw	s8,24(sp)
 484:	01912a23          	sw	s9,20(sp)
 488:	02112e23          	sw	ra,60(sp)
 48c:	02912a23          	sw	s1,52(sp)
 490:	03412423          	sw	s4,40(sp)
 494:	00050413          	mv	s0,a0
 498:	04b12223          	sw	a1,68(sp)
 49c:	04c12423          	sw	a2,72(sp)
 4a0:	04d12623          	sw	a3,76(sp)
 4a4:	04e12823          	sw	a4,80(sp)
 4a8:	05012c23          	sw	a6,88(sp)
 4ac:	05112e23          	sw	a7,92(sp)
 4b0:	00f12023          	sw	a5,0(sp)
 4b4:	02500a93          	li	s5,37
 4b8:	00a00b13          	li	s6,10
 4bc:	07000913          	li	s2,112
 4c0:	05800993          	li	s3,88
 4c4:	07500b93          	li	s7,117
 4c8:	07800c13          	li	s8,120
 4cc:	07300c93          	li	s9,115
 4d0:	00044483          	lbu	s1,0(s0)
 4d4:	02049c63          	bnez	s1,50c <neorv32_uart0_printf+0xb0>
 4d8:	03c12083          	lw	ra,60(sp)
 4dc:	03812403          	lw	s0,56(sp)
 4e0:	03412483          	lw	s1,52(sp)
 4e4:	03012903          	lw	s2,48(sp)
 4e8:	02c12983          	lw	s3,44(sp)
 4ec:	02812a03          	lw	s4,40(sp)
 4f0:	02412a83          	lw	s5,36(sp)
 4f4:	02012b03          	lw	s6,32(sp)
 4f8:	01c12b83          	lw	s7,28(sp)
 4fc:	01812c03          	lw	s8,24(sp)
 500:	01412c83          	lw	s9,20(sp)
 504:	06010113          	addi	sp,sp,96
 508:	00008067          	ret
 50c:	0f549c63          	bne	s1,s5,604 <neorv32_uart0_printf+0x1a8>
 510:	00240a13          	addi	s4,s0,2
 514:	00144403          	lbu	s0,1(s0)
 518:	0d240263          	beq	s0,s2,5dc <neorv32_uart0_printf+0x180>
 51c:	06896463          	bltu	s2,s0,584 <neorv32_uart0_printf+0x128>
 520:	06300793          	li	a5,99
 524:	08f40463          	beq	s0,a5,5ac <neorv32_uart0_printf+0x150>
 528:	0087ec63          	bltu	a5,s0,540 <neorv32_uart0_printf+0xe4>
 52c:	0b340863          	beq	s0,s3,5dc <neorv32_uart0_printf+0x180>
 530:	02500513          	li	a0,37
 534:	eb9ff0ef          	jal	ra,3ec <neorv32_uart0_putc>
 538:	00040513          	mv	a0,s0
 53c:	0800006f          	j	5bc <neorv32_uart0_printf+0x160>
 540:	06400793          	li	a5,100
 544:	00f40663          	beq	s0,a5,550 <neorv32_uart0_printf+0xf4>
 548:	06900793          	li	a5,105
 54c:	fef412e3          	bne	s0,a5,530 <neorv32_uart0_printf+0xd4>
 550:	00012783          	lw	a5,0(sp)
 554:	0007a403          	lw	s0,0(a5)
 558:	00478713          	addi	a4,a5,4
 55c:	00e12023          	sw	a4,0(sp)
 560:	00045863          	bgez	s0,570 <neorv32_uart0_printf+0x114>
 564:	02d00513          	li	a0,45
 568:	40800433          	neg	s0,s0
 56c:	e81ff0ef          	jal	ra,3ec <neorv32_uart0_putc>
 570:	00410593          	addi	a1,sp,4
 574:	00040513          	mv	a0,s0
 578:	c49ff0ef          	jal	ra,1c0 <__neorv32_uart_itoa>
 57c:	00410513          	addi	a0,sp,4
 580:	0200006f          	j	5a0 <neorv32_uart0_printf+0x144>
 584:	05740063          	beq	s0,s7,5c4 <neorv32_uart0_printf+0x168>
 588:	05840a63          	beq	s0,s8,5dc <neorv32_uart0_printf+0x180>
 58c:	fb9412e3          	bne	s0,s9,530 <neorv32_uart0_printf+0xd4>
 590:	00012783          	lw	a5,0(sp)
 594:	0007a503          	lw	a0,0(a5)
 598:	00478713          	addi	a4,a5,4
 59c:	00e12023          	sw	a4,0(sp)
 5a0:	e65ff0ef          	jal	ra,404 <neorv32_uart0_print>
 5a4:	000a0413          	mv	s0,s4
 5a8:	f29ff06f          	j	4d0 <neorv32_uart0_printf+0x74>
 5ac:	00012783          	lw	a5,0(sp)
 5b0:	0007c503          	lbu	a0,0(a5)
 5b4:	00478713          	addi	a4,a5,4
 5b8:	00e12023          	sw	a4,0(sp)
 5bc:	e31ff0ef          	jal	ra,3ec <neorv32_uart0_putc>
 5c0:	fe5ff06f          	j	5a4 <neorv32_uart0_printf+0x148>
 5c4:	00012783          	lw	a5,0(sp)
 5c8:	00410593          	addi	a1,sp,4
 5cc:	00478713          	addi	a4,a5,4
 5d0:	0007a503          	lw	a0,0(a5)
 5d4:	00e12023          	sw	a4,0(sp)
 5d8:	fa1ff06f          	j	578 <neorv32_uart0_printf+0x11c>
 5dc:	00012783          	lw	a5,0(sp)
 5e0:	00410593          	addi	a1,sp,4
 5e4:	0007a503          	lw	a0,0(a5)
 5e8:	00478713          	addi	a4,a5,4
 5ec:	00e12023          	sw	a4,0(sp)
 5f0:	cd9ff0ef          	jal	ra,2c8 <__neorv32_uart_tohex>
 5f4:	f93414e3          	bne	s0,s3,57c <neorv32_uart0_printf+0x120>
 5f8:	00410513          	addi	a0,sp,4
 5fc:	d09ff0ef          	jal	ra,304 <__neorv32_uart_touppercase.constprop.0>
 600:	f7dff06f          	j	57c <neorv32_uart0_printf+0x120>
 604:	01649663          	bne	s1,s6,610 <neorv32_uart0_printf+0x1b4>
 608:	00d00513          	li	a0,13
 60c:	de1ff0ef          	jal	ra,3ec <neorv32_uart0_putc>
 610:	00140a13          	addi	s4,s0,1
 614:	00048513          	mv	a0,s1
 618:	fa5ff06f          	j	5bc <neorv32_uart0_printf+0x160>

0000061c <__neorv32_rte_core>:
 61c:	fc010113          	addi	sp,sp,-64
 620:	02112e23          	sw	ra,60(sp)
 624:	02512c23          	sw	t0,56(sp)
 628:	02612a23          	sw	t1,52(sp)
 62c:	02712823          	sw	t2,48(sp)
 630:	02a12623          	sw	a0,44(sp)
 634:	02b12423          	sw	a1,40(sp)
 638:	02c12223          	sw	a2,36(sp)
 63c:	02d12023          	sw	a3,32(sp)
 640:	00e12e23          	sw	a4,28(sp)
 644:	00f12c23          	sw	a5,24(sp)
 648:	01012a23          	sw	a6,20(sp)
 64c:	01112823          	sw	a7,16(sp)
 650:	01c12623          	sw	t3,12(sp)
 654:	01d12423          	sw	t4,8(sp)
 658:	01e12223          	sw	t5,4(sp)
 65c:	01f12023          	sw	t6,0(sp)
 660:	34102773          	csrr	a4,mepc
 664:	34071073          	csrw	mscratch,a4
 668:	342027f3          	csrr	a5,mcause
 66c:	0407c663          	bltz	a5,6b8 <__neorv32_rte_core+0x9c>
 670:	00075683          	lhu	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3e938>
 674:	00300593          	li	a1,3
 678:	0036f693          	andi	a3,a3,3
 67c:	00270613          	addi	a2,a4,2
 680:	00b69463          	bne	a3,a1,688 <__neorv32_rte_core+0x6c>
 684:	00470613          	addi	a2,a4,4
 688:	34161073          	csrw	mepc,a2
 68c:	00b00713          	li	a4,11
 690:	00f77863          	bgeu	a4,a5,6a0 <__neorv32_rte_core+0x84>
 694:	000017b7          	lui	a5,0x1
 698:	88c78793          	addi	a5,a5,-1908 # 88c <__neorv32_rte_debug_exc_handler>
 69c:	0500006f          	j	6ec <__neorv32_rte_core+0xd0>
 6a0:	00001737          	lui	a4,0x1
 6a4:	00279793          	slli	a5,a5,0x2
 6a8:	e7470713          	addi	a4,a4,-396 # e74 <symbols.0+0x14>
 6ac:	00e787b3          	add	a5,a5,a4
 6b0:	0007a783          	lw	a5,0(a5)
 6b4:	00078067          	jr	a5
 6b8:	80000737          	lui	a4,0x80000
 6bc:	ffd74713          	xori	a4,a4,-3
 6c0:	00e787b3          	add	a5,a5,a4
 6c4:	01c00713          	li	a4,28
 6c8:	fcf766e3          	bltu	a4,a5,694 <__neorv32_rte_core+0x78>
 6cc:	00001737          	lui	a4,0x1
 6d0:	00279793          	slli	a5,a5,0x2
 6d4:	ea470713          	addi	a4,a4,-348 # ea4 <symbols.0+0x44>
 6d8:	00e787b3          	add	a5,a5,a4
 6dc:	0007a783          	lw	a5,0(a5)
 6e0:	00078067          	jr	a5
 6e4:	800007b7          	lui	a5,0x80000
 6e8:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 6ec:	000780e7          	jalr	a5
 6f0:	03c12083          	lw	ra,60(sp)
 6f4:	03812283          	lw	t0,56(sp)
 6f8:	03412303          	lw	t1,52(sp)
 6fc:	03012383          	lw	t2,48(sp)
 700:	02c12503          	lw	a0,44(sp)
 704:	02812583          	lw	a1,40(sp)
 708:	02412603          	lw	a2,36(sp)
 70c:	02012683          	lw	a3,32(sp)
 710:	01c12703          	lw	a4,28(sp)
 714:	01812783          	lw	a5,24(sp)
 718:	01412803          	lw	a6,20(sp)
 71c:	01012883          	lw	a7,16(sp)
 720:	00c12e03          	lw	t3,12(sp)
 724:	00812e83          	lw	t4,8(sp)
 728:	00412f03          	lw	t5,4(sp)
 72c:	00012f83          	lw	t6,0(sp)
 730:	04010113          	addi	sp,sp,64
 734:	30200073          	mret
 738:	800007b7          	lui	a5,0x80000
 73c:	0047a783          	lw	a5,4(a5) # 80000004 <__crt0_io_space_begin+0x80000204>
 740:	fadff06f          	j	6ec <__neorv32_rte_core+0xd0>
 744:	8081a783          	lw	a5,-2040(gp) # 80000008 <__neorv32_rte_vector_lut+0x8>
 748:	fa5ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 74c:	80c1a783          	lw	a5,-2036(gp) # 8000000c <__neorv32_rte_vector_lut+0xc>
 750:	f9dff06f          	j	6ec <__neorv32_rte_core+0xd0>
 754:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 758:	f95ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 75c:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 760:	f8dff06f          	j	6ec <__neorv32_rte_core+0xd0>
 764:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 768:	f85ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 76c:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 770:	f7dff06f          	j	6ec <__neorv32_rte_core+0xd0>
 774:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 778:	f75ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 77c:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 780:	f6dff06f          	j	6ec <__neorv32_rte_core+0xd0>
 784:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 788:	f65ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 78c:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 790:	f5dff06f          	j	6ec <__neorv32_rte_core+0xd0>
 794:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 798:	f55ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 79c:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 7a0:	f4dff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7a4:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 7a8:	f45ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7ac:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 7b0:	f3dff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7b4:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 7b8:	f35ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7bc:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 7c0:	f2dff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7c4:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 7c8:	f25ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7cc:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 7d0:	f1dff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7d4:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 7d8:	f15ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7dc:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 7e0:	f0dff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7e4:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 7e8:	f05ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7ec:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 7f0:	efdff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7f4:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 7f8:	ef5ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 7fc:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 800:	eedff06f          	j	6ec <__neorv32_rte_core+0xd0>
 804:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 808:	ee5ff06f          	j	6ec <__neorv32_rte_core+0xd0>
 80c:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 810:	eddff06f          	j	6ec <__neorv32_rte_core+0xd0>
 814:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 818:	ed5ff06f          	j	6ec <__neorv32_rte_core+0xd0>

0000081c <__neorv32_rte_print_hex_word>:
 81c:	fe010113          	addi	sp,sp,-32
 820:	01212823          	sw	s2,16(sp)
 824:	00050913          	mv	s2,a0
 828:	00001537          	lui	a0,0x1
 82c:	00912a23          	sw	s1,20(sp)
 830:	f1850513          	addi	a0,a0,-232 # f18 <symbols.0+0xb8>
 834:	000014b7          	lui	s1,0x1
 838:	00812c23          	sw	s0,24(sp)
 83c:	01312623          	sw	s3,12(sp)
 840:	00112e23          	sw	ra,28(sp)
 844:	01c00413          	li	s0,28
 848:	bbdff0ef          	jal	ra,404 <neorv32_uart0_print>
 84c:	6b848493          	addi	s1,s1,1720 # 16b8 <hex_symbols.0>
 850:	ffc00993          	li	s3,-4
 854:	008957b3          	srl	a5,s2,s0
 858:	00f7f793          	andi	a5,a5,15
 85c:	00f487b3          	add	a5,s1,a5
 860:	0007c503          	lbu	a0,0(a5)
 864:	ffc40413          	addi	s0,s0,-4
 868:	b85ff0ef          	jal	ra,3ec <neorv32_uart0_putc>
 86c:	ff3414e3          	bne	s0,s3,854 <__neorv32_rte_print_hex_word+0x38>
 870:	01c12083          	lw	ra,28(sp)
 874:	01812403          	lw	s0,24(sp)
 878:	01412483          	lw	s1,20(sp)
 87c:	01012903          	lw	s2,16(sp)
 880:	00c12983          	lw	s3,12(sp)
 884:	02010113          	addi	sp,sp,32
 888:	00008067          	ret

0000088c <__neorv32_rte_debug_exc_handler>:
 88c:	ff010113          	addi	sp,sp,-16
 890:	00112623          	sw	ra,12(sp)
 894:	00812423          	sw	s0,8(sp)
 898:	00912223          	sw	s1,4(sp)
 89c:	a95ff0ef          	jal	ra,330 <neorv32_uart0_available>
 8a0:	1c050863          	beqz	a0,a70 <__neorv32_rte_debug_exc_handler+0x1e4>
 8a4:	00001537          	lui	a0,0x1
 8a8:	f1c50513          	addi	a0,a0,-228 # f1c <symbols.0+0xbc>
 8ac:	b59ff0ef          	jal	ra,404 <neorv32_uart0_print>
 8b0:	34202473          	csrr	s0,mcause
 8b4:	00900713          	li	a4,9
 8b8:	00f47793          	andi	a5,s0,15
 8bc:	03078493          	addi	s1,a5,48
 8c0:	00f77463          	bgeu	a4,a5,8c8 <__neorv32_rte_debug_exc_handler+0x3c>
 8c4:	05778493          	addi	s1,a5,87
 8c8:	00b00793          	li	a5,11
 8cc:	0087ee63          	bltu	a5,s0,8e8 <__neorv32_rte_debug_exc_handler+0x5c>
 8d0:	00001737          	lui	a4,0x1
 8d4:	00241793          	slli	a5,s0,0x2
 8d8:	0e070713          	addi	a4,a4,224 # 10e0 <symbols.0+0x280>
 8dc:	00e787b3          	add	a5,a5,a4
 8e0:	0007a783          	lw	a5,0(a5)
 8e4:	00078067          	jr	a5
 8e8:	800007b7          	lui	a5,0x80000
 8ec:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 8f0:	14e40e63          	beq	s0,a4,a4c <__neorv32_rte_debug_exc_handler+0x1c0>
 8f4:	02876a63          	bltu	a4,s0,928 <__neorv32_rte_debug_exc_handler+0x9c>
 8f8:	00378713          	addi	a4,a5,3
 8fc:	12e40c63          	beq	s0,a4,a34 <__neorv32_rte_debug_exc_handler+0x1a8>
 900:	00778793          	addi	a5,a5,7
 904:	12f40e63          	beq	s0,a5,a40 <__neorv32_rte_debug_exc_handler+0x1b4>
 908:	00001537          	lui	a0,0x1
 90c:	07c50513          	addi	a0,a0,124 # 107c <symbols.0+0x21c>
 910:	af5ff0ef          	jal	ra,404 <neorv32_uart0_print>
 914:	00040513          	mv	a0,s0
 918:	f05ff0ef          	jal	ra,81c <__neorv32_rte_print_hex_word>
 91c:	00100793          	li	a5,1
 920:	08f40c63          	beq	s0,a5,9b8 <__neorv32_rte_debug_exc_handler+0x12c>
 924:	0280006f          	j	94c <__neorv32_rte_debug_exc_handler+0xc0>
 928:	ff07c793          	xori	a5,a5,-16
 92c:	00f407b3          	add	a5,s0,a5
 930:	00f00713          	li	a4,15
 934:	fcf76ae3          	bltu	a4,a5,908 <__neorv32_rte_debug_exc_handler+0x7c>
 938:	00001537          	lui	a0,0x1
 93c:	06c50513          	addi	a0,a0,108 # 106c <symbols.0+0x20c>
 940:	ac5ff0ef          	jal	ra,404 <neorv32_uart0_print>
 944:	00048513          	mv	a0,s1
 948:	aa5ff0ef          	jal	ra,3ec <neorv32_uart0_putc>
 94c:	ffd47413          	andi	s0,s0,-3
 950:	00500793          	li	a5,5
 954:	06f40263          	beq	s0,a5,9b8 <__neorv32_rte_debug_exc_handler+0x12c>
 958:	00001537          	lui	a0,0x1
 95c:	0c050513          	addi	a0,a0,192 # 10c0 <symbols.0+0x260>
 960:	aa5ff0ef          	jal	ra,404 <neorv32_uart0_print>
 964:	34002573          	csrr	a0,mscratch
 968:	eb5ff0ef          	jal	ra,81c <__neorv32_rte_print_hex_word>
 96c:	00001537          	lui	a0,0x1
 970:	0c850513          	addi	a0,a0,200 # 10c8 <symbols.0+0x268>
 974:	a91ff0ef          	jal	ra,404 <neorv32_uart0_print>
 978:	34302573          	csrr	a0,mtval
 97c:	ea1ff0ef          	jal	ra,81c <__neorv32_rte_print_hex_word>
 980:	00812403          	lw	s0,8(sp)
 984:	00c12083          	lw	ra,12(sp)
 988:	00412483          	lw	s1,4(sp)
 98c:	00001537          	lui	a0,0x1
 990:	0d450513          	addi	a0,a0,212 # 10d4 <symbols.0+0x274>
 994:	01010113          	addi	sp,sp,16
 998:	a6dff06f          	j	404 <neorv32_uart0_print>
 99c:	00001537          	lui	a0,0x1
 9a0:	f2450513          	addi	a0,a0,-220 # f24 <symbols.0+0xc4>
 9a4:	a61ff0ef          	jal	ra,404 <neorv32_uart0_print>
 9a8:	fb1ff06f          	j	958 <__neorv32_rte_debug_exc_handler+0xcc>
 9ac:	00001537          	lui	a0,0x1
 9b0:	f4450513          	addi	a0,a0,-188 # f44 <symbols.0+0xe4>
 9b4:	a51ff0ef          	jal	ra,404 <neorv32_uart0_print>
 9b8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 9bc:	0a07d463          	bgez	a5,a64 <__neorv32_rte_debug_exc_handler+0x1d8>
 9c0:	0017f793          	andi	a5,a5,1
 9c4:	08078a63          	beqz	a5,a58 <__neorv32_rte_debug_exc_handler+0x1cc>
 9c8:	00001537          	lui	a0,0x1
 9cc:	09450513          	addi	a0,a0,148 # 1094 <symbols.0+0x234>
 9d0:	fd5ff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 9d4:	00001537          	lui	a0,0x1
 9d8:	f6050513          	addi	a0,a0,-160 # f60 <symbols.0+0x100>
 9dc:	fc9ff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 9e0:	00001537          	lui	a0,0x1
 9e4:	f7450513          	addi	a0,a0,-140 # f74 <symbols.0+0x114>
 9e8:	fbdff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 9ec:	00001537          	lui	a0,0x1
 9f0:	f8050513          	addi	a0,a0,-128 # f80 <symbols.0+0x120>
 9f4:	fb1ff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 9f8:	00001537          	lui	a0,0x1
 9fc:	f9850513          	addi	a0,a0,-104 # f98 <symbols.0+0x138>
 a00:	fb5ff06f          	j	9b4 <__neorv32_rte_debug_exc_handler+0x128>
 a04:	00001537          	lui	a0,0x1
 a08:	fac50513          	addi	a0,a0,-84 # fac <symbols.0+0x14c>
 a0c:	f99ff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 a10:	00001537          	lui	a0,0x1
 a14:	fc850513          	addi	a0,a0,-56 # fc8 <symbols.0+0x168>
 a18:	f9dff06f          	j	9b4 <__neorv32_rte_debug_exc_handler+0x128>
 a1c:	00001537          	lui	a0,0x1
 a20:	fdc50513          	addi	a0,a0,-36 # fdc <symbols.0+0x17c>
 a24:	f81ff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 a28:	00001537          	lui	a0,0x1
 a2c:	ffc50513          	addi	a0,a0,-4 # ffc <symbols.0+0x19c>
 a30:	f75ff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 a34:	00001537          	lui	a0,0x1
 a38:	01c50513          	addi	a0,a0,28 # 101c <symbols.0+0x1bc>
 a3c:	f69ff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 a40:	00001537          	lui	a0,0x1
 a44:	03850513          	addi	a0,a0,56 # 1038 <symbols.0+0x1d8>
 a48:	f5dff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 a4c:	00001537          	lui	a0,0x1
 a50:	05050513          	addi	a0,a0,80 # 1050 <symbols.0+0x1f0>
 a54:	f51ff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 a58:	00001537          	lui	a0,0x1
 a5c:	0a450513          	addi	a0,a0,164 # 10a4 <symbols.0+0x244>
 a60:	f45ff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 a64:	00001537          	lui	a0,0x1
 a68:	0b450513          	addi	a0,a0,180 # 10b4 <symbols.0+0x254>
 a6c:	f39ff06f          	j	9a4 <__neorv32_rte_debug_exc_handler+0x118>
 a70:	00c12083          	lw	ra,12(sp)
 a74:	00812403          	lw	s0,8(sp)
 a78:	00412483          	lw	s1,4(sp)
 a7c:	01010113          	addi	sp,sp,16
 a80:	00008067          	ret

00000a84 <neorv32_rte_exception_uninstall>:
 a84:	01f00793          	li	a5,31
 a88:	02a7e463          	bltu	a5,a0,ab0 <neorv32_rte_exception_uninstall+0x2c>
 a8c:	800007b7          	lui	a5,0x80000
 a90:	00078793          	mv	a5,a5
 a94:	00251513          	slli	a0,a0,0x2
 a98:	00a78533          	add	a0,a5,a0
 a9c:	000017b7          	lui	a5,0x1
 aa0:	88c78793          	addi	a5,a5,-1908 # 88c <__neorv32_rte_debug_exc_handler>
 aa4:	00f52023          	sw	a5,0(a0)
 aa8:	00000513          	li	a0,0
 aac:	00008067          	ret
 ab0:	00100513          	li	a0,1
 ab4:	00008067          	ret

00000ab8 <neorv32_rte_setup>:
 ab8:	ff010113          	addi	sp,sp,-16
 abc:	00112623          	sw	ra,12(sp)
 ac0:	00812423          	sw	s0,8(sp)
 ac4:	00912223          	sw	s1,4(sp)
 ac8:	61c00793          	li	a5,1564
 acc:	30579073          	csrw	mtvec,a5
 ad0:	00000413          	li	s0,0
 ad4:	01d00493          	li	s1,29
 ad8:	00040513          	mv	a0,s0
 adc:	00140413          	addi	s0,s0,1
 ae0:	0ff47413          	andi	s0,s0,255
 ae4:	fa1ff0ef          	jal	ra,a84 <neorv32_rte_exception_uninstall>
 ae8:	fe9418e3          	bne	s0,s1,ad8 <neorv32_rte_setup+0x20>
 aec:	00c12083          	lw	ra,12(sp)
 af0:	00812403          	lw	s0,8(sp)
 af4:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 af8:	00412483          	lw	s1,4(sp)
 afc:	01010113          	addi	sp,sp,16
 b00:	00008067          	ret

00000b04 <neorv32_rte_print_logo>:
 b04:	f2010113          	addi	sp,sp,-224
 b08:	000015b7          	lui	a1,0x1
 b0c:	0b000613          	li	a2,176
 b10:	60858593          	addi	a1,a1,1544 # 1608 <symbols.0+0x7a8>
 b14:	00010513          	mv	a0,sp
 b18:	0c112e23          	sw	ra,220(sp)
 b1c:	0c812c23          	sw	s0,216(sp)
 b20:	0c912a23          	sw	s1,212(sp)
 b24:	0d212823          	sw	s2,208(sp)
 b28:	0d312623          	sw	s3,204(sp)
 b2c:	0d412423          	sw	s4,200(sp)
 b30:	0d512223          	sw	s5,196(sp)
 b34:	0d612023          	sw	s6,192(sp)
 b38:	0b712e23          	sw	s7,188(sp)
 b3c:	1dc000ef          	jal	ra,d18 <memcpy>
 b40:	ff0ff0ef          	jal	ra,330 <neorv32_uart0_available>
 b44:	08050863          	beqz	a0,bd4 <neorv32_rte_print_logo+0xd0>
 b48:	00001ab7          	lui	s5,0x1
 b4c:	00010413          	mv	s0,sp
 b50:	000a8b13          	mv	s6,s5
 b54:	00400b93          	li	s7,4
 b58:	488a8513          	addi	a0,s5,1160 # 1488 <symbols.0+0x628>
 b5c:	8a9ff0ef          	jal	ra,404 <neorv32_uart0_print>
 b60:	00040913          	mv	s2,s0
 b64:	00000493          	li	s1,0
 b68:	00092a03          	lw	s4,0(s2)
 b6c:	02000993          	li	s3,32
 b70:	02300513          	li	a0,35
 b74:	000a4463          	bltz	s4,b7c <neorv32_rte_print_logo+0x78>
 b78:	02000513          	li	a0,32
 b7c:	fff98993          	addi	s3,s3,-1
 b80:	86dff0ef          	jal	ra,3ec <neorv32_uart0_putc>
 b84:	001a1a13          	slli	s4,s4,0x1
 b88:	fe0994e3          	bnez	s3,b70 <neorv32_rte_print_logo+0x6c>
 b8c:	00148493          	addi	s1,s1,1
 b90:	00490913          	addi	s2,s2,4
 b94:	fd749ae3          	bne	s1,s7,b68 <neorv32_rte_print_logo+0x64>
 b98:	01040413          	addi	s0,s0,16
 b9c:	0b010793          	addi	a5,sp,176
 ba0:	fa879ce3          	bne	a5,s0,b58 <neorv32_rte_print_logo+0x54>
 ba4:	0d812403          	lw	s0,216(sp)
 ba8:	0dc12083          	lw	ra,220(sp)
 bac:	0d412483          	lw	s1,212(sp)
 bb0:	0d012903          	lw	s2,208(sp)
 bb4:	0cc12983          	lw	s3,204(sp)
 bb8:	0c812a03          	lw	s4,200(sp)
 bbc:	0c412a83          	lw	s5,196(sp)
 bc0:	0bc12b83          	lw	s7,188(sp)
 bc4:	488b0513          	addi	a0,s6,1160
 bc8:	0c012b03          	lw	s6,192(sp)
 bcc:	0e010113          	addi	sp,sp,224
 bd0:	835ff06f          	j	404 <neorv32_uart0_print>
 bd4:	0dc12083          	lw	ra,220(sp)
 bd8:	0d812403          	lw	s0,216(sp)
 bdc:	0d412483          	lw	s1,212(sp)
 be0:	0d012903          	lw	s2,208(sp)
 be4:	0cc12983          	lw	s3,204(sp)
 be8:	0c812a03          	lw	s4,200(sp)
 bec:	0c412a83          	lw	s5,196(sp)
 bf0:	0c012b03          	lw	s6,192(sp)
 bf4:	0bc12b83          	lw	s7,188(sp)
 bf8:	0e010113          	addi	sp,sp,224
 bfc:	00008067          	ret

00000c00 <neorv32_rte_check_isa>:
 c00:	30102673          	csrr	a2,misa
 c04:	400005b7          	lui	a1,0x40000
 c08:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffea38>
 c0c:	00b677b3          	and	a5,a2,a1
 c10:	04b78663          	beq	a5,a1,c5c <neorv32_rte_check_isa+0x5c>
 c14:	00050663          	beqz	a0,c20 <neorv32_rte_check_isa+0x20>
 c18:	00100513          	li	a0,1
 c1c:	00008067          	ret
 c20:	fe010113          	addi	sp,sp,-32
 c24:	00c12623          	sw	a2,12(sp)
 c28:	00112e23          	sw	ra,28(sp)
 c2c:	f04ff0ef          	jal	ra,330 <neorv32_uart0_available>
 c30:	400007b7          	lui	a5,0x40000
 c34:	00c12603          	lw	a2,12(sp)
 c38:	10078593          	addi	a1,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffea38>
 c3c:	00050863          	beqz	a0,c4c <neorv32_rte_check_isa+0x4c>
 c40:	00001537          	lui	a0,0x1
 c44:	58050513          	addi	a0,a0,1408 # 1580 <symbols.0+0x720>
 c48:	815ff0ef          	jal	ra,45c <neorv32_uart0_printf>
 c4c:	01c12083          	lw	ra,28(sp)
 c50:	00100513          	li	a0,1
 c54:	02010113          	addi	sp,sp,32
 c58:	00008067          	ret
 c5c:	00000513          	li	a0,0
 c60:	00008067          	ret

00000c64 <__divsi3>:
 c64:	06054063          	bltz	a0,cc4 <__umodsi3+0x10>
 c68:	0605c663          	bltz	a1,cd4 <__umodsi3+0x20>

00000c6c <__udivsi3>:
 c6c:	00058613          	mv	a2,a1
 c70:	00050593          	mv	a1,a0
 c74:	fff00513          	li	a0,-1
 c78:	02060c63          	beqz	a2,cb0 <__udivsi3+0x44>
 c7c:	00100693          	li	a3,1
 c80:	00b67a63          	bgeu	a2,a1,c94 <__udivsi3+0x28>
 c84:	00c05863          	blez	a2,c94 <__udivsi3+0x28>
 c88:	00161613          	slli	a2,a2,0x1
 c8c:	00169693          	slli	a3,a3,0x1
 c90:	feb66ae3          	bltu	a2,a1,c84 <__udivsi3+0x18>
 c94:	00000513          	li	a0,0
 c98:	00c5e663          	bltu	a1,a2,ca4 <__udivsi3+0x38>
 c9c:	40c585b3          	sub	a1,a1,a2
 ca0:	00d56533          	or	a0,a0,a3
 ca4:	0016d693          	srli	a3,a3,0x1
 ca8:	00165613          	srli	a2,a2,0x1
 cac:	fe0696e3          	bnez	a3,c98 <__udivsi3+0x2c>
 cb0:	00008067          	ret

00000cb4 <__umodsi3>:
 cb4:	00008293          	mv	t0,ra
 cb8:	fb5ff0ef          	jal	ra,c6c <__udivsi3>
 cbc:	00058513          	mv	a0,a1
 cc0:	00028067          	jr	t0
 cc4:	40a00533          	neg	a0,a0
 cc8:	00b04863          	bgtz	a1,cd8 <__umodsi3+0x24>
 ccc:	40b005b3          	neg	a1,a1
 cd0:	f9dff06f          	j	c6c <__udivsi3>
 cd4:	40b005b3          	neg	a1,a1
 cd8:	00008293          	mv	t0,ra
 cdc:	f91ff0ef          	jal	ra,c6c <__udivsi3>
 ce0:	40a00533          	neg	a0,a0
 ce4:	00028067          	jr	t0

00000ce8 <__modsi3>:
 ce8:	00008293          	mv	t0,ra
 cec:	0005ca63          	bltz	a1,d00 <__modsi3+0x18>
 cf0:	00054c63          	bltz	a0,d08 <__modsi3+0x20>
 cf4:	f79ff0ef          	jal	ra,c6c <__udivsi3>
 cf8:	00058513          	mv	a0,a1
 cfc:	00028067          	jr	t0
 d00:	40b005b3          	neg	a1,a1
 d04:	fe0558e3          	bgez	a0,cf4 <__modsi3+0xc>
 d08:	40a00533          	neg	a0,a0
 d0c:	f61ff0ef          	jal	ra,c6c <__udivsi3>
 d10:	40b00533          	neg	a0,a1
 d14:	00028067          	jr	t0

00000d18 <memcpy>:
 d18:	00a5c7b3          	xor	a5,a1,a0
 d1c:	0037f793          	andi	a5,a5,3
 d20:	00c508b3          	add	a7,a0,a2
 d24:	06079663          	bnez	a5,d90 <memcpy+0x78>
 d28:	00300793          	li	a5,3
 d2c:	06c7f263          	bgeu	a5,a2,d90 <memcpy+0x78>
 d30:	00357793          	andi	a5,a0,3
 d34:	00050713          	mv	a4,a0
 d38:	0c079a63          	bnez	a5,e0c <memcpy+0xf4>
 d3c:	ffc8f613          	andi	a2,a7,-4
 d40:	40e606b3          	sub	a3,a2,a4
 d44:	02000793          	li	a5,32
 d48:	02000293          	li	t0,32
 d4c:	06d7c263          	blt	a5,a3,db0 <memcpy+0x98>
 d50:	00058693          	mv	a3,a1
 d54:	00070793          	mv	a5,a4
 d58:	02c77863          	bgeu	a4,a2,d88 <memcpy+0x70>
 d5c:	0006a803          	lw	a6,0(a3)
 d60:	00478793          	addi	a5,a5,4
 d64:	00468693          	addi	a3,a3,4
 d68:	ff07ae23          	sw	a6,-4(a5)
 d6c:	fec7e8e3          	bltu	a5,a2,d5c <memcpy+0x44>
 d70:	fff60793          	addi	a5,a2,-1
 d74:	40e787b3          	sub	a5,a5,a4
 d78:	ffc7f793          	andi	a5,a5,-4
 d7c:	00478793          	addi	a5,a5,4
 d80:	00f70733          	add	a4,a4,a5
 d84:	00f585b3          	add	a1,a1,a5
 d88:	01176863          	bltu	a4,a7,d98 <memcpy+0x80>
 d8c:	00008067          	ret
 d90:	00050713          	mv	a4,a0
 d94:	ff157ce3          	bgeu	a0,a7,d8c <memcpy+0x74>
 d98:	0005c783          	lbu	a5,0(a1)
 d9c:	00170713          	addi	a4,a4,1
 da0:	00158593          	addi	a1,a1,1
 da4:	fef70fa3          	sb	a5,-1(a4)
 da8:	ff1768e3          	bltu	a4,a7,d98 <memcpy+0x80>
 dac:	00008067          	ret
 db0:	0045a683          	lw	a3,4(a1)
 db4:	01c5a783          	lw	a5,28(a1)
 db8:	0005af83          	lw	t6,0(a1)
 dbc:	0085af03          	lw	t5,8(a1)
 dc0:	00c5ae83          	lw	t4,12(a1)
 dc4:	0105ae03          	lw	t3,16(a1)
 dc8:	0145a303          	lw	t1,20(a1)
 dcc:	0185a803          	lw	a6,24(a1)
 dd0:	00d72223          	sw	a3,4(a4)
 dd4:	0205a683          	lw	a3,32(a1)
 dd8:	01f72023          	sw	t6,0(a4)
 ddc:	01e72423          	sw	t5,8(a4)
 de0:	01d72623          	sw	t4,12(a4)
 de4:	01c72823          	sw	t3,16(a4)
 de8:	00672a23          	sw	t1,20(a4)
 dec:	01072c23          	sw	a6,24(a4)
 df0:	00f72e23          	sw	a5,28(a4)
 df4:	02470713          	addi	a4,a4,36
 df8:	40e607b3          	sub	a5,a2,a4
 dfc:	fed72e23          	sw	a3,-4(a4)
 e00:	02458593          	addi	a1,a1,36
 e04:	faf2c6e3          	blt	t0,a5,db0 <memcpy+0x98>
 e08:	f49ff06f          	j	d50 <memcpy+0x38>
 e0c:	0005c683          	lbu	a3,0(a1)
 e10:	00170713          	addi	a4,a4,1
 e14:	00377793          	andi	a5,a4,3
 e18:	fed70fa3          	sb	a3,-1(a4)
 e1c:	00158593          	addi	a1,a1,1
 e20:	f0078ee3          	beqz	a5,d3c <memcpy+0x24>
 e24:	0005c683          	lbu	a3,0(a1)
 e28:	00170713          	addi	a4,a4,1
 e2c:	00377793          	andi	a5,a4,3
 e30:	fed70fa3          	sb	a3,-1(a4)
 e34:	00158593          	addi	a1,a1,1
 e38:	fc079ae3          	bnez	a5,e0c <memcpy+0xf4>
 e3c:	f01ff06f          	j	d3c <memcpy+0x24>
