
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
 178:	fe010113          	addi	sp,sp,-32
 17c:	00112e23          	sw	ra,28(sp)
 180:	00812c23          	sw	s0,24(sp)
 184:	00912a23          	sw	s1,20(sp)
 188:	298000ef          	jal	ra,420 <neorv32_uart0_available>
 18c:	02050063          	beqz	a0,1ac <main+0x34>
 190:	00005537          	lui	a0,0x5
 194:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x39dc>
 198:	00000613          	li	a2,0
 19c:	00000593          	li	a1,0
 1a0:	290000ef          	jal	ra,430 <neorv32_uart0_setup>
 1a4:	00000513          	li	a0,0
 1a8:	299000ef          	jal	ra,c40 <neorv32_rte_check_isa>
 1ac:	2f9000ef          	jal	ra,ca4 <neorv32_gpio_available>
 1b0:	02051463          	bnez	a0,1d8 <main+0x60>
 1b4:	00001537          	lui	a0,0x1
 1b8:	d8850513          	addi	a0,a0,-632 # d88 <__etext>
 1bc:	384000ef          	jal	ra,540 <neorv32_uart0_print>
 1c0:	01c12083          	lw	ra,28(sp)
 1c4:	01812403          	lw	s0,24(sp)
 1c8:	01412483          	lw	s1,20(sp)
 1cc:	00100513          	li	a0,1
 1d0:	02010113          	addi	sp,sp,32
 1d4:	00008067          	ret
 1d8:	074000ef          	jal	ra,24c <neorv32_pwm_available>
 1dc:	00051863          	bnez	a0,1ec <main+0x74>
 1e0:	00001537          	lui	a0,0x1
 1e4:	dac50513          	addi	a0,a0,-596 # dac <__etext+0x24>
 1e8:	fd5ff06f          	j	1bc <main+0x44>
 1ec:	209000ef          	jal	ra,bf4 <neorv32_rte_setup>
 1f0:	00000513          	li	a0,0
 1f4:	00000593          	li	a1,0
 1f8:	2bd000ef          	jal	ra,cb4 <neorv32_gpio_port_set>
 1fc:	00300513          	li	a0,3
 200:	000107a3          	sb	zero,15(sp)
 204:	00000493          	li	s1,0
 208:	054000ef          	jal	ra,25c <neorv32_pwm_setup>
 20c:	2b9000ef          	jal	ra,cc4 <neorv32_gpio_port_get>
 210:	0ff57413          	andi	s0,a0,255
 214:	00848e63          	beq	s1,s0,230 <main+0xb8>
 218:	00040513          	mv	a0,s0
 21c:	00000593          	li	a1,0
 220:	295000ef          	jal	ra,cb4 <neorv32_gpio_port_set>
 224:	00040593          	mv	a1,s0
 228:	00000513          	li	a0,0
 22c:	04c000ef          	jal	ra,278 <neorv32_pwm_set>
 230:	00f10513          	addi	a0,sp,15
 234:	2c0000ef          	jal	ra,4f4 <neorv32_uart0_getc_safe>
 238:	00051663          	bnez	a0,244 <main+0xcc>
 23c:	00f14503          	lbu	a0,15(sp)
 240:	29c000ef          	jal	ra,4dc <neorv32_uart0_putc>
 244:	00040493          	mv	s1,s0
 248:	fc5ff06f          	j	20c <main+0x94>

0000024c <neorv32_pwm_available>:
 24c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 250:	01555513          	srli	a0,a0,0x15
 254:	00157513          	andi	a0,a0,1
 258:	00008067          	ret

0000025c <neorv32_pwm_setup>:
 25c:	00757513          	andi	a0,a0,7
 260:	e8000793          	li	a5,-384
 264:	00151513          	slli	a0,a0,0x1
 268:	0007a023          	sw	zero,0(a5)
 26c:	00156513          	ori	a0,a0,1
 270:	00a7a023          	sw	a0,0(a5)
 274:	00008067          	ret

00000278 <neorv32_pwm_set>:
 278:	03b00793          	li	a5,59
 27c:	02a7e863          	bltu	a5,a0,2ac <neorv32_pwm_set+0x34>
 280:	00357713          	andi	a4,a0,3
 284:	0fc57513          	andi	a0,a0,252
 288:	e8452683          	lw	a3,-380(a0)
 28c:	00371713          	slli	a4,a4,0x3
 290:	0ff00793          	li	a5,255
 294:	00e797b3          	sll	a5,a5,a4
 298:	fff7c793          	not	a5,a5
 29c:	00d7f7b3          	and	a5,a5,a3
 2a0:	00e595b3          	sll	a1,a1,a4
 2a4:	00f5e5b3          	or	a1,a1,a5
 2a8:	e8b52223          	sw	a1,-380(a0)
 2ac:	00008067          	ret

000002b0 <__neorv32_uart_itoa>:
 2b0:	fd010113          	addi	sp,sp,-48
 2b4:	02812423          	sw	s0,40(sp)
 2b8:	02912223          	sw	s1,36(sp)
 2bc:	03212023          	sw	s2,32(sp)
 2c0:	01312e23          	sw	s3,28(sp)
 2c4:	01412c23          	sw	s4,24(sp)
 2c8:	02112623          	sw	ra,44(sp)
 2cc:	01512a23          	sw	s5,20(sp)
 2d0:	00001a37          	lui	s4,0x1
 2d4:	00050493          	mv	s1,a0
 2d8:	00058413          	mv	s0,a1
 2dc:	00058523          	sb	zero,10(a1)
 2e0:	00000993          	li	s3,0
 2e4:	00410913          	addi	s2,sp,4
 2e8:	dd0a0a13          	addi	s4,s4,-560 # dd0 <numbers.1>
 2ec:	00a00593          	li	a1,10
 2f0:	00048513          	mv	a0,s1
 2f4:	231000ef          	jal	ra,d24 <__umodsi3>
 2f8:	00aa0533          	add	a0,s4,a0
 2fc:	00054783          	lbu	a5,0(a0)
 300:	01390ab3          	add	s5,s2,s3
 304:	00048513          	mv	a0,s1
 308:	00fa8023          	sb	a5,0(s5)
 30c:	00a00593          	li	a1,10
 310:	1cd000ef          	jal	ra,cdc <__udivsi3>
 314:	00198993          	addi	s3,s3,1
 318:	00a00793          	li	a5,10
 31c:	00050493          	mv	s1,a0
 320:	fcf996e3          	bne	s3,a5,2ec <__neorv32_uart_itoa+0x3c>
 324:	00090693          	mv	a3,s2
 328:	00900713          	li	a4,9
 32c:	03000613          	li	a2,48
 330:	0096c583          	lbu	a1,9(a3)
 334:	00070793          	mv	a5,a4
 338:	fff70713          	addi	a4,a4,-1
 33c:	01071713          	slli	a4,a4,0x10
 340:	01075713          	srli	a4,a4,0x10
 344:	00c59a63          	bne	a1,a2,358 <__neorv32_uart_itoa+0xa8>
 348:	000684a3          	sb	zero,9(a3)
 34c:	fff68693          	addi	a3,a3,-1
 350:	fe0710e3          	bnez	a4,330 <__neorv32_uart_itoa+0x80>
 354:	00000793          	li	a5,0
 358:	00f907b3          	add	a5,s2,a5
 35c:	00000593          	li	a1,0
 360:	0007c703          	lbu	a4,0(a5)
 364:	00070c63          	beqz	a4,37c <__neorv32_uart_itoa+0xcc>
 368:	00158693          	addi	a3,a1,1
 36c:	00b405b3          	add	a1,s0,a1
 370:	00e58023          	sb	a4,0(a1)
 374:	01069593          	slli	a1,a3,0x10
 378:	0105d593          	srli	a1,a1,0x10
 37c:	fff78713          	addi	a4,a5,-1
 380:	02f91863          	bne	s2,a5,3b0 <__neorv32_uart_itoa+0x100>
 384:	00b40433          	add	s0,s0,a1
 388:	00040023          	sb	zero,0(s0)
 38c:	02c12083          	lw	ra,44(sp)
 390:	02812403          	lw	s0,40(sp)
 394:	02412483          	lw	s1,36(sp)
 398:	02012903          	lw	s2,32(sp)
 39c:	01c12983          	lw	s3,28(sp)
 3a0:	01812a03          	lw	s4,24(sp)
 3a4:	01412a83          	lw	s5,20(sp)
 3a8:	03010113          	addi	sp,sp,48
 3ac:	00008067          	ret
 3b0:	00070793          	mv	a5,a4
 3b4:	fadff06f          	j	360 <__neorv32_uart_itoa+0xb0>

000003b8 <__neorv32_uart_tohex>:
 3b8:	00001637          	lui	a2,0x1
 3bc:	00758693          	addi	a3,a1,7
 3c0:	00000713          	li	a4,0
 3c4:	ddc60613          	addi	a2,a2,-548 # ddc <symbols.0>
 3c8:	02000813          	li	a6,32
 3cc:	00e557b3          	srl	a5,a0,a4
 3d0:	00f7f793          	andi	a5,a5,15
 3d4:	00f607b3          	add	a5,a2,a5
 3d8:	0007c783          	lbu	a5,0(a5)
 3dc:	00470713          	addi	a4,a4,4
 3e0:	fff68693          	addi	a3,a3,-1
 3e4:	00f680a3          	sb	a5,1(a3)
 3e8:	ff0712e3          	bne	a4,a6,3cc <__neorv32_uart_tohex+0x14>
 3ec:	00058423          	sb	zero,8(a1)
 3f0:	00008067          	ret

000003f4 <__neorv32_uart_touppercase.constprop.0>:
 3f4:	00b50693          	addi	a3,a0,11
 3f8:	01900613          	li	a2,25
 3fc:	00054783          	lbu	a5,0(a0)
 400:	f9f78713          	addi	a4,a5,-97
 404:	0ff77713          	andi	a4,a4,255
 408:	00e66663          	bltu	a2,a4,414 <__neorv32_uart_touppercase.constprop.0+0x20>
 40c:	fe078793          	addi	a5,a5,-32
 410:	00f50023          	sb	a5,0(a0)
 414:	00150513          	addi	a0,a0,1
 418:	fed512e3          	bne	a0,a3,3fc <__neorv32_uart_touppercase.constprop.0+0x8>
 41c:	00008067          	ret

00000420 <neorv32_uart0_available>:
 420:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 424:	01255513          	srli	a0,a0,0x12
 428:	00157513          	andi	a0,a0,1
 42c:	00008067          	ret

00000430 <neorv32_uart0_setup>:
 430:	ff010113          	addi	sp,sp,-16
 434:	00812423          	sw	s0,8(sp)
 438:	00912223          	sw	s1,4(sp)
 43c:	00112623          	sw	ra,12(sp)
 440:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 444:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 448:	00058413          	mv	s0,a1
 44c:	00151593          	slli	a1,a0,0x1
 450:	00078513          	mv	a0,a5
 454:	00060493          	mv	s1,a2
 458:	085000ef          	jal	ra,cdc <__udivsi3>
 45c:	01051513          	slli	a0,a0,0x10
 460:	000017b7          	lui	a5,0x1
 464:	01055513          	srli	a0,a0,0x10
 468:	00000713          	li	a4,0
 46c:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x222>
 470:	04a7e463          	bltu	a5,a0,4b8 <neorv32_uart0_setup+0x88>
 474:	0034f793          	andi	a5,s1,3
 478:	00347413          	andi	s0,s0,3
 47c:	fff50513          	addi	a0,a0,-1
 480:	01479793          	slli	a5,a5,0x14
 484:	01641413          	slli	s0,s0,0x16
 488:	00f567b3          	or	a5,a0,a5
 48c:	0087e7b3          	or	a5,a5,s0
 490:	01871713          	slli	a4,a4,0x18
 494:	00c12083          	lw	ra,12(sp)
 498:	00812403          	lw	s0,8(sp)
 49c:	00e7e7b3          	or	a5,a5,a4
 4a0:	10000737          	lui	a4,0x10000
 4a4:	00e7e7b3          	or	a5,a5,a4
 4a8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 4ac:	00412483          	lw	s1,4(sp)
 4b0:	01010113          	addi	sp,sp,16
 4b4:	00008067          	ret
 4b8:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeeda>
 4bc:	0fd6f693          	andi	a3,a3,253
 4c0:	00069a63          	bnez	a3,4d4 <neorv32_uart0_setup+0xa4>
 4c4:	00355513          	srli	a0,a0,0x3
 4c8:	00170713          	addi	a4,a4,1
 4cc:	0ff77713          	andi	a4,a4,255
 4d0:	fa1ff06f          	j	470 <neorv32_uart0_setup+0x40>
 4d4:	00155513          	srli	a0,a0,0x1
 4d8:	ff1ff06f          	j	4c8 <neorv32_uart0_setup+0x98>

000004dc <neorv32_uart0_putc>:
 4dc:	00040737          	lui	a4,0x40
 4e0:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 4e4:	00e7f7b3          	and	a5,a5,a4
 4e8:	fe079ce3          	bnez	a5,4e0 <neorv32_uart0_putc+0x4>
 4ec:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 4f0:	00008067          	ret

000004f4 <neorv32_uart0_getc_safe>:
 4f4:	fa402783          	lw	a5,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 4f8:	00f50023          	sb	a5,0(a0)
 4fc:	0207de63          	bgez	a5,538 <neorv32_uart0_getc_safe+0x44>
 500:	20000737          	lui	a4,0x20000
 504:	00e7f733          	and	a4,a5,a4
 508:	ffe00513          	li	a0,-2
 50c:	02071863          	bnez	a4,53c <neorv32_uart0_getc_safe+0x48>
 510:	10000737          	lui	a4,0x10000
 514:	00e7f733          	and	a4,a5,a4
 518:	ffd00513          	li	a0,-3
 51c:	02071063          	bnez	a4,53c <neorv32_uart0_getc_safe+0x48>
 520:	40000737          	lui	a4,0x40000
 524:	00e7f7b3          	and	a5,a5,a4
 528:	00000513          	li	a0,0
 52c:	00078863          	beqz	a5,53c <neorv32_uart0_getc_safe+0x48>
 530:	ffc00513          	li	a0,-4
 534:	00008067          	ret
 538:	fff00513          	li	a0,-1
 53c:	00008067          	ret

00000540 <neorv32_uart0_print>:
 540:	ff010113          	addi	sp,sp,-16
 544:	00812423          	sw	s0,8(sp)
 548:	01212023          	sw	s2,0(sp)
 54c:	00112623          	sw	ra,12(sp)
 550:	00912223          	sw	s1,4(sp)
 554:	00050413          	mv	s0,a0
 558:	00a00913          	li	s2,10
 55c:	00044483          	lbu	s1,0(s0)
 560:	00140413          	addi	s0,s0,1
 564:	00049e63          	bnez	s1,580 <neorv32_uart0_print+0x40>
 568:	00c12083          	lw	ra,12(sp)
 56c:	00812403          	lw	s0,8(sp)
 570:	00412483          	lw	s1,4(sp)
 574:	00012903          	lw	s2,0(sp)
 578:	01010113          	addi	sp,sp,16
 57c:	00008067          	ret
 580:	01249663          	bne	s1,s2,58c <neorv32_uart0_print+0x4c>
 584:	00d00513          	li	a0,13
 588:	f55ff0ef          	jal	ra,4dc <neorv32_uart0_putc>
 58c:	00048513          	mv	a0,s1
 590:	f4dff0ef          	jal	ra,4dc <neorv32_uart0_putc>
 594:	fc9ff06f          	j	55c <neorv32_uart0_print+0x1c>

00000598 <neorv32_uart0_printf>:
 598:	fa010113          	addi	sp,sp,-96
 59c:	04f12a23          	sw	a5,84(sp)
 5a0:	04410793          	addi	a5,sp,68
 5a4:	02812c23          	sw	s0,56(sp)
 5a8:	03212823          	sw	s2,48(sp)
 5ac:	03312623          	sw	s3,44(sp)
 5b0:	03512223          	sw	s5,36(sp)
 5b4:	03612023          	sw	s6,32(sp)
 5b8:	01712e23          	sw	s7,28(sp)
 5bc:	01812c23          	sw	s8,24(sp)
 5c0:	01912a23          	sw	s9,20(sp)
 5c4:	02112e23          	sw	ra,60(sp)
 5c8:	02912a23          	sw	s1,52(sp)
 5cc:	03412423          	sw	s4,40(sp)
 5d0:	00050413          	mv	s0,a0
 5d4:	04b12223          	sw	a1,68(sp)
 5d8:	04c12423          	sw	a2,72(sp)
 5dc:	04d12623          	sw	a3,76(sp)
 5e0:	04e12823          	sw	a4,80(sp)
 5e4:	05012c23          	sw	a6,88(sp)
 5e8:	05112e23          	sw	a7,92(sp)
 5ec:	00f12023          	sw	a5,0(sp)
 5f0:	02500a93          	li	s5,37
 5f4:	00a00b13          	li	s6,10
 5f8:	07000913          	li	s2,112
 5fc:	05800993          	li	s3,88
 600:	07500b93          	li	s7,117
 604:	07800c13          	li	s8,120
 608:	07300c93          	li	s9,115
 60c:	00044483          	lbu	s1,0(s0)
 610:	02049c63          	bnez	s1,648 <neorv32_uart0_printf+0xb0>
 614:	03c12083          	lw	ra,60(sp)
 618:	03812403          	lw	s0,56(sp)
 61c:	03412483          	lw	s1,52(sp)
 620:	03012903          	lw	s2,48(sp)
 624:	02c12983          	lw	s3,44(sp)
 628:	02812a03          	lw	s4,40(sp)
 62c:	02412a83          	lw	s5,36(sp)
 630:	02012b03          	lw	s6,32(sp)
 634:	01c12b83          	lw	s7,28(sp)
 638:	01812c03          	lw	s8,24(sp)
 63c:	01412c83          	lw	s9,20(sp)
 640:	06010113          	addi	sp,sp,96
 644:	00008067          	ret
 648:	0f549c63          	bne	s1,s5,740 <neorv32_uart0_printf+0x1a8>
 64c:	00240a13          	addi	s4,s0,2
 650:	00144403          	lbu	s0,1(s0)
 654:	0d240263          	beq	s0,s2,718 <neorv32_uart0_printf+0x180>
 658:	06896463          	bltu	s2,s0,6c0 <neorv32_uart0_printf+0x128>
 65c:	06300793          	li	a5,99
 660:	08f40463          	beq	s0,a5,6e8 <neorv32_uart0_printf+0x150>
 664:	0087ec63          	bltu	a5,s0,67c <neorv32_uart0_printf+0xe4>
 668:	0b340863          	beq	s0,s3,718 <neorv32_uart0_printf+0x180>
 66c:	02500513          	li	a0,37
 670:	e6dff0ef          	jal	ra,4dc <neorv32_uart0_putc>
 674:	00040513          	mv	a0,s0
 678:	0800006f          	j	6f8 <neorv32_uart0_printf+0x160>
 67c:	06400793          	li	a5,100
 680:	00f40663          	beq	s0,a5,68c <neorv32_uart0_printf+0xf4>
 684:	06900793          	li	a5,105
 688:	fef412e3          	bne	s0,a5,66c <neorv32_uart0_printf+0xd4>
 68c:	00012783          	lw	a5,0(sp)
 690:	0007a403          	lw	s0,0(a5)
 694:	00478713          	addi	a4,a5,4
 698:	00e12023          	sw	a4,0(sp)
 69c:	00045863          	bgez	s0,6ac <neorv32_uart0_printf+0x114>
 6a0:	02d00513          	li	a0,45
 6a4:	40800433          	neg	s0,s0
 6a8:	e35ff0ef          	jal	ra,4dc <neorv32_uart0_putc>
 6ac:	00410593          	addi	a1,sp,4
 6b0:	00040513          	mv	a0,s0
 6b4:	bfdff0ef          	jal	ra,2b0 <__neorv32_uart_itoa>
 6b8:	00410513          	addi	a0,sp,4
 6bc:	0200006f          	j	6dc <neorv32_uart0_printf+0x144>
 6c0:	05740063          	beq	s0,s7,700 <neorv32_uart0_printf+0x168>
 6c4:	05840a63          	beq	s0,s8,718 <neorv32_uart0_printf+0x180>
 6c8:	fb9412e3          	bne	s0,s9,66c <neorv32_uart0_printf+0xd4>
 6cc:	00012783          	lw	a5,0(sp)
 6d0:	0007a503          	lw	a0,0(a5)
 6d4:	00478713          	addi	a4,a5,4
 6d8:	00e12023          	sw	a4,0(sp)
 6dc:	e65ff0ef          	jal	ra,540 <neorv32_uart0_print>
 6e0:	000a0413          	mv	s0,s4
 6e4:	f29ff06f          	j	60c <neorv32_uart0_printf+0x74>
 6e8:	00012783          	lw	a5,0(sp)
 6ec:	0007c503          	lbu	a0,0(a5)
 6f0:	00478713          	addi	a4,a5,4
 6f4:	00e12023          	sw	a4,0(sp)
 6f8:	de5ff0ef          	jal	ra,4dc <neorv32_uart0_putc>
 6fc:	fe5ff06f          	j	6e0 <neorv32_uart0_printf+0x148>
 700:	00012783          	lw	a5,0(sp)
 704:	00410593          	addi	a1,sp,4
 708:	00478713          	addi	a4,a5,4
 70c:	0007a503          	lw	a0,0(a5)
 710:	00e12023          	sw	a4,0(sp)
 714:	fa1ff06f          	j	6b4 <neorv32_uart0_printf+0x11c>
 718:	00012783          	lw	a5,0(sp)
 71c:	00410593          	addi	a1,sp,4
 720:	0007a503          	lw	a0,0(a5)
 724:	00478713          	addi	a4,a5,4
 728:	00e12023          	sw	a4,0(sp)
 72c:	c8dff0ef          	jal	ra,3b8 <__neorv32_uart_tohex>
 730:	f93414e3          	bne	s0,s3,6b8 <neorv32_uart0_printf+0x120>
 734:	00410513          	addi	a0,sp,4
 738:	cbdff0ef          	jal	ra,3f4 <__neorv32_uart_touppercase.constprop.0>
 73c:	f7dff06f          	j	6b8 <neorv32_uart0_printf+0x120>
 740:	01649663          	bne	s1,s6,74c <neorv32_uart0_printf+0x1b4>
 744:	00d00513          	li	a0,13
 748:	d95ff0ef          	jal	ra,4dc <neorv32_uart0_putc>
 74c:	00140a13          	addi	s4,s0,1
 750:	00048513          	mv	a0,s1
 754:	fa5ff06f          	j	6f8 <neorv32_uart0_printf+0x160>

00000758 <__neorv32_rte_core>:
 758:	fc010113          	addi	sp,sp,-64
 75c:	02112e23          	sw	ra,60(sp)
 760:	02512c23          	sw	t0,56(sp)
 764:	02612a23          	sw	t1,52(sp)
 768:	02712823          	sw	t2,48(sp)
 76c:	02a12623          	sw	a0,44(sp)
 770:	02b12423          	sw	a1,40(sp)
 774:	02c12223          	sw	a2,36(sp)
 778:	02d12023          	sw	a3,32(sp)
 77c:	00e12e23          	sw	a4,28(sp)
 780:	00f12c23          	sw	a5,24(sp)
 784:	01012a23          	sw	a6,20(sp)
 788:	01112823          	sw	a7,16(sp)
 78c:	01c12623          	sw	t3,12(sp)
 790:	01d12423          	sw	t4,8(sp)
 794:	01e12223          	sw	t5,4(sp)
 798:	01f12023          	sw	t6,0(sp)
 79c:	34102773          	csrr	a4,mepc
 7a0:	34071073          	csrw	mscratch,a4
 7a4:	342027f3          	csrr	a5,mcause
 7a8:	0407c663          	bltz	a5,7f4 <__neorv32_rte_core+0x9c>
 7ac:	00075683          	lhu	a3,0(a4) # 40000000 <__crt0_copy_data_src_begin+0x3fffeedc>
 7b0:	00300593          	li	a1,3
 7b4:	0036f693          	andi	a3,a3,3
 7b8:	00270613          	addi	a2,a4,2
 7bc:	00b69463          	bne	a3,a1,7c4 <__neorv32_rte_core+0x6c>
 7c0:	00470613          	addi	a2,a4,4
 7c4:	34161073          	csrw	mepc,a2
 7c8:	00b00713          	li	a4,11
 7cc:	00f77863          	bgeu	a4,a5,7dc <__neorv32_rte_core+0x84>
 7d0:	000017b7          	lui	a5,0x1
 7d4:	9c878793          	addi	a5,a5,-1592 # 9c8 <__neorv32_rte_debug_exc_handler>
 7d8:	0500006f          	j	828 <__heap_size+0x28>
 7dc:	00001737          	lui	a4,0x1
 7e0:	00279793          	slli	a5,a5,0x2
 7e4:	df070713          	addi	a4,a4,-528 # df0 <symbols.0+0x14>
 7e8:	00e787b3          	add	a5,a5,a4
 7ec:	0007a783          	lw	a5,0(a5)
 7f0:	00078067          	jr	a5
 7f4:	80000737          	lui	a4,0x80000
 7f8:	ffd74713          	xori	a4,a4,-3
 7fc:	00e787b3          	add	a5,a5,a4
 800:	01c00713          	li	a4,28
 804:	fcf766e3          	bltu	a4,a5,7d0 <__neorv32_rte_core+0x78>
 808:	00001737          	lui	a4,0x1
 80c:	00279793          	slli	a5,a5,0x2
 810:	e2070713          	addi	a4,a4,-480 # e20 <symbols.0+0x44>
 814:	00e787b3          	add	a5,a5,a4
 818:	0007a783          	lw	a5,0(a5)
 81c:	00078067          	jr	a5
 820:	800007b7          	lui	a5,0x80000
 824:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 828:	000780e7          	jalr	a5
 82c:	03c12083          	lw	ra,60(sp)
 830:	03812283          	lw	t0,56(sp)
 834:	03412303          	lw	t1,52(sp)
 838:	03012383          	lw	t2,48(sp)
 83c:	02c12503          	lw	a0,44(sp)
 840:	02812583          	lw	a1,40(sp)
 844:	02412603          	lw	a2,36(sp)
 848:	02012683          	lw	a3,32(sp)
 84c:	01c12703          	lw	a4,28(sp)
 850:	01812783          	lw	a5,24(sp)
 854:	01412803          	lw	a6,20(sp)
 858:	01012883          	lw	a7,16(sp)
 85c:	00c12e03          	lw	t3,12(sp)
 860:	00812e83          	lw	t4,8(sp)
 864:	00412f03          	lw	t5,4(sp)
 868:	00012f83          	lw	t6,0(sp)
 86c:	04010113          	addi	sp,sp,64
 870:	30200073          	mret
 874:	800007b7          	lui	a5,0x80000
 878:	0047a783          	lw	a5,4(a5) # 80000004 <__crt0_io_space_begin+0x80000204>
 87c:	fadff06f          	j	828 <__heap_size+0x28>
 880:	8081a783          	lw	a5,-2040(gp) # 80000008 <__neorv32_rte_vector_lut+0x8>
 884:	fa5ff06f          	j	828 <__heap_size+0x28>
 888:	80c1a783          	lw	a5,-2036(gp) # 8000000c <__neorv32_rte_vector_lut+0xc>
 88c:	f9dff06f          	j	828 <__heap_size+0x28>
 890:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 894:	f95ff06f          	j	828 <__heap_size+0x28>
 898:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 89c:	f8dff06f          	j	828 <__heap_size+0x28>
 8a0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 8a4:	f85ff06f          	j	828 <__heap_size+0x28>
 8a8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 8ac:	f7dff06f          	j	828 <__heap_size+0x28>
 8b0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 8b4:	f75ff06f          	j	828 <__heap_size+0x28>
 8b8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 8bc:	f6dff06f          	j	828 <__heap_size+0x28>
 8c0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 8c4:	f65ff06f          	j	828 <__heap_size+0x28>
 8c8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 8cc:	f5dff06f          	j	828 <__heap_size+0x28>
 8d0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 8d4:	f55ff06f          	j	828 <__heap_size+0x28>
 8d8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 8dc:	f4dff06f          	j	828 <__heap_size+0x28>
 8e0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 8e4:	f45ff06f          	j	828 <__heap_size+0x28>
 8e8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 8ec:	f3dff06f          	j	828 <__heap_size+0x28>
 8f0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 8f4:	f35ff06f          	j	828 <__heap_size+0x28>
 8f8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 8fc:	f2dff06f          	j	828 <__heap_size+0x28>
 900:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 904:	f25ff06f          	j	828 <__heap_size+0x28>
 908:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 90c:	f1dff06f          	j	828 <__heap_size+0x28>
 910:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 914:	f15ff06f          	j	828 <__heap_size+0x28>
 918:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 91c:	f0dff06f          	j	828 <__heap_size+0x28>
 920:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 924:	f05ff06f          	j	828 <__heap_size+0x28>
 928:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 92c:	efdff06f          	j	828 <__heap_size+0x28>
 930:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 934:	ef5ff06f          	j	828 <__heap_size+0x28>
 938:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 93c:	eedff06f          	j	828 <__heap_size+0x28>
 940:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 944:	ee5ff06f          	j	828 <__heap_size+0x28>
 948:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 94c:	eddff06f          	j	828 <__heap_size+0x28>
 950:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 954:	ed5ff06f          	j	828 <__heap_size+0x28>

00000958 <__neorv32_rte_print_hex_word>:
 958:	fe010113          	addi	sp,sp,-32
 95c:	01212823          	sw	s2,16(sp)
 960:	00050913          	mv	s2,a0
 964:	00001537          	lui	a0,0x1
 968:	00912a23          	sw	s1,20(sp)
 96c:	e9450513          	addi	a0,a0,-364 # e94 <symbols.0+0xb8>
 970:	000014b7          	lui	s1,0x1
 974:	00812c23          	sw	s0,24(sp)
 978:	01312623          	sw	s3,12(sp)
 97c:	00112e23          	sw	ra,28(sp)
 980:	01c00413          	li	s0,28
 984:	bbdff0ef          	jal	ra,540 <neorv32_uart0_print>
 988:	11448493          	addi	s1,s1,276 # 1114 <hex_symbols.0>
 98c:	ffc00993          	li	s3,-4
 990:	008957b3          	srl	a5,s2,s0
 994:	00f7f793          	andi	a5,a5,15
 998:	00f487b3          	add	a5,s1,a5
 99c:	0007c503          	lbu	a0,0(a5)
 9a0:	ffc40413          	addi	s0,s0,-4
 9a4:	b39ff0ef          	jal	ra,4dc <neorv32_uart0_putc>
 9a8:	ff3414e3          	bne	s0,s3,990 <__neorv32_rte_print_hex_word+0x38>
 9ac:	01c12083          	lw	ra,28(sp)
 9b0:	01812403          	lw	s0,24(sp)
 9b4:	01412483          	lw	s1,20(sp)
 9b8:	01012903          	lw	s2,16(sp)
 9bc:	00c12983          	lw	s3,12(sp)
 9c0:	02010113          	addi	sp,sp,32
 9c4:	00008067          	ret

000009c8 <__neorv32_rte_debug_exc_handler>:
 9c8:	ff010113          	addi	sp,sp,-16
 9cc:	00112623          	sw	ra,12(sp)
 9d0:	00812423          	sw	s0,8(sp)
 9d4:	00912223          	sw	s1,4(sp)
 9d8:	a49ff0ef          	jal	ra,420 <neorv32_uart0_available>
 9dc:	1c050863          	beqz	a0,bac <__neorv32_rte_debug_exc_handler+0x1e4>
 9e0:	00001537          	lui	a0,0x1
 9e4:	e9850513          	addi	a0,a0,-360 # e98 <symbols.0+0xbc>
 9e8:	b59ff0ef          	jal	ra,540 <neorv32_uart0_print>
 9ec:	34202473          	csrr	s0,mcause
 9f0:	00900713          	li	a4,9
 9f4:	00f47793          	andi	a5,s0,15
 9f8:	03078493          	addi	s1,a5,48
 9fc:	00f77463          	bgeu	a4,a5,a04 <__neorv32_rte_debug_exc_handler+0x3c>
 a00:	05778493          	addi	s1,a5,87
 a04:	00b00793          	li	a5,11
 a08:	0087ee63          	bltu	a5,s0,a24 <__neorv32_rte_debug_exc_handler+0x5c>
 a0c:	00001737          	lui	a4,0x1
 a10:	00241793          	slli	a5,s0,0x2
 a14:	05c70713          	addi	a4,a4,92 # 105c <symbols.0+0x280>
 a18:	00e787b3          	add	a5,a5,a4
 a1c:	0007a783          	lw	a5,0(a5)
 a20:	00078067          	jr	a5
 a24:	800007b7          	lui	a5,0x80000
 a28:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 a2c:	14e40e63          	beq	s0,a4,b88 <__neorv32_rte_debug_exc_handler+0x1c0>
 a30:	02876a63          	bltu	a4,s0,a64 <__neorv32_rte_debug_exc_handler+0x9c>
 a34:	00378713          	addi	a4,a5,3
 a38:	12e40c63          	beq	s0,a4,b70 <__neorv32_rte_debug_exc_handler+0x1a8>
 a3c:	00778793          	addi	a5,a5,7
 a40:	12f40e63          	beq	s0,a5,b7c <__neorv32_rte_debug_exc_handler+0x1b4>
 a44:	00001537          	lui	a0,0x1
 a48:	ff850513          	addi	a0,a0,-8 # ff8 <symbols.0+0x21c>
 a4c:	af5ff0ef          	jal	ra,540 <neorv32_uart0_print>
 a50:	00040513          	mv	a0,s0
 a54:	f05ff0ef          	jal	ra,958 <__neorv32_rte_print_hex_word>
 a58:	00100793          	li	a5,1
 a5c:	08f40c63          	beq	s0,a5,af4 <__neorv32_rte_debug_exc_handler+0x12c>
 a60:	0280006f          	j	a88 <__neorv32_rte_debug_exc_handler+0xc0>
 a64:	ff07c793          	xori	a5,a5,-16
 a68:	00f407b3          	add	a5,s0,a5
 a6c:	00f00713          	li	a4,15
 a70:	fcf76ae3          	bltu	a4,a5,a44 <__neorv32_rte_debug_exc_handler+0x7c>
 a74:	00001537          	lui	a0,0x1
 a78:	fe850513          	addi	a0,a0,-24 # fe8 <symbols.0+0x20c>
 a7c:	ac5ff0ef          	jal	ra,540 <neorv32_uart0_print>
 a80:	00048513          	mv	a0,s1
 a84:	a59ff0ef          	jal	ra,4dc <neorv32_uart0_putc>
 a88:	ffd47413          	andi	s0,s0,-3
 a8c:	00500793          	li	a5,5
 a90:	06f40263          	beq	s0,a5,af4 <__neorv32_rte_debug_exc_handler+0x12c>
 a94:	00001537          	lui	a0,0x1
 a98:	03c50513          	addi	a0,a0,60 # 103c <symbols.0+0x260>
 a9c:	aa5ff0ef          	jal	ra,540 <neorv32_uart0_print>
 aa0:	34002573          	csrr	a0,mscratch
 aa4:	eb5ff0ef          	jal	ra,958 <__neorv32_rte_print_hex_word>
 aa8:	00001537          	lui	a0,0x1
 aac:	04450513          	addi	a0,a0,68 # 1044 <symbols.0+0x268>
 ab0:	a91ff0ef          	jal	ra,540 <neorv32_uart0_print>
 ab4:	34302573          	csrr	a0,mtval
 ab8:	ea1ff0ef          	jal	ra,958 <__neorv32_rte_print_hex_word>
 abc:	00812403          	lw	s0,8(sp)
 ac0:	00c12083          	lw	ra,12(sp)
 ac4:	00412483          	lw	s1,4(sp)
 ac8:	00001537          	lui	a0,0x1
 acc:	05050513          	addi	a0,a0,80 # 1050 <symbols.0+0x274>
 ad0:	01010113          	addi	sp,sp,16
 ad4:	a6dff06f          	j	540 <neorv32_uart0_print>
 ad8:	00001537          	lui	a0,0x1
 adc:	ea050513          	addi	a0,a0,-352 # ea0 <symbols.0+0xc4>
 ae0:	a61ff0ef          	jal	ra,540 <neorv32_uart0_print>
 ae4:	fb1ff06f          	j	a94 <__neorv32_rte_debug_exc_handler+0xcc>
 ae8:	00001537          	lui	a0,0x1
 aec:	ec050513          	addi	a0,a0,-320 # ec0 <symbols.0+0xe4>
 af0:	a51ff0ef          	jal	ra,540 <neorv32_uart0_print>
 af4:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 af8:	0a07d463          	bgez	a5,ba0 <__neorv32_rte_debug_exc_handler+0x1d8>
 afc:	0017f793          	andi	a5,a5,1
 b00:	08078a63          	beqz	a5,b94 <__neorv32_rte_debug_exc_handler+0x1cc>
 b04:	00001537          	lui	a0,0x1
 b08:	01050513          	addi	a0,a0,16 # 1010 <symbols.0+0x234>
 b0c:	fd5ff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 b10:	00001537          	lui	a0,0x1
 b14:	edc50513          	addi	a0,a0,-292 # edc <symbols.0+0x100>
 b18:	fc9ff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 b1c:	00001537          	lui	a0,0x1
 b20:	ef050513          	addi	a0,a0,-272 # ef0 <symbols.0+0x114>
 b24:	fbdff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 b28:	00001537          	lui	a0,0x1
 b2c:	efc50513          	addi	a0,a0,-260 # efc <symbols.0+0x120>
 b30:	fb1ff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 b34:	00001537          	lui	a0,0x1
 b38:	f1450513          	addi	a0,a0,-236 # f14 <symbols.0+0x138>
 b3c:	fb5ff06f          	j	af0 <__neorv32_rte_debug_exc_handler+0x128>
 b40:	00001537          	lui	a0,0x1
 b44:	f2850513          	addi	a0,a0,-216 # f28 <symbols.0+0x14c>
 b48:	f99ff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 b4c:	00001537          	lui	a0,0x1
 b50:	f4450513          	addi	a0,a0,-188 # f44 <symbols.0+0x168>
 b54:	f9dff06f          	j	af0 <__neorv32_rte_debug_exc_handler+0x128>
 b58:	00001537          	lui	a0,0x1
 b5c:	f5850513          	addi	a0,a0,-168 # f58 <symbols.0+0x17c>
 b60:	f81ff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 b64:	00001537          	lui	a0,0x1
 b68:	f7850513          	addi	a0,a0,-136 # f78 <symbols.0+0x19c>
 b6c:	f75ff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 b70:	00001537          	lui	a0,0x1
 b74:	f9850513          	addi	a0,a0,-104 # f98 <symbols.0+0x1bc>
 b78:	f69ff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 b7c:	00001537          	lui	a0,0x1
 b80:	fb450513          	addi	a0,a0,-76 # fb4 <symbols.0+0x1d8>
 b84:	f5dff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 b88:	00001537          	lui	a0,0x1
 b8c:	fcc50513          	addi	a0,a0,-52 # fcc <symbols.0+0x1f0>
 b90:	f51ff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 b94:	00001537          	lui	a0,0x1
 b98:	02050513          	addi	a0,a0,32 # 1020 <symbols.0+0x244>
 b9c:	f45ff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 ba0:	00001537          	lui	a0,0x1
 ba4:	03050513          	addi	a0,a0,48 # 1030 <symbols.0+0x254>
 ba8:	f39ff06f          	j	ae0 <__neorv32_rte_debug_exc_handler+0x118>
 bac:	00c12083          	lw	ra,12(sp)
 bb0:	00812403          	lw	s0,8(sp)
 bb4:	00412483          	lw	s1,4(sp)
 bb8:	01010113          	addi	sp,sp,16
 bbc:	00008067          	ret

00000bc0 <neorv32_rte_exception_uninstall>:
 bc0:	01f00793          	li	a5,31
 bc4:	02a7e463          	bltu	a5,a0,bec <neorv32_rte_exception_uninstall+0x2c>
 bc8:	800007b7          	lui	a5,0x80000
 bcc:	00078793          	mv	a5,a5
 bd0:	00251513          	slli	a0,a0,0x2
 bd4:	00a78533          	add	a0,a5,a0
 bd8:	000017b7          	lui	a5,0x1
 bdc:	9c878793          	addi	a5,a5,-1592 # 9c8 <__neorv32_rte_debug_exc_handler>
 be0:	00f52023          	sw	a5,0(a0)
 be4:	00000513          	li	a0,0
 be8:	00008067          	ret
 bec:	00100513          	li	a0,1
 bf0:	00008067          	ret

00000bf4 <neorv32_rte_setup>:
 bf4:	ff010113          	addi	sp,sp,-16
 bf8:	00112623          	sw	ra,12(sp)
 bfc:	00812423          	sw	s0,8(sp)
 c00:	00912223          	sw	s1,4(sp)
 c04:	75800793          	li	a5,1880
 c08:	30579073          	csrw	mtvec,a5
 c0c:	00000413          	li	s0,0
 c10:	01d00493          	li	s1,29
 c14:	00040513          	mv	a0,s0
 c18:	00140413          	addi	s0,s0,1
 c1c:	0ff47413          	andi	s0,s0,255
 c20:	fa1ff0ef          	jal	ra,bc0 <neorv32_rte_exception_uninstall>
 c24:	fe9418e3          	bne	s0,s1,c14 <neorv32_rte_setup+0x20>
 c28:	00c12083          	lw	ra,12(sp)
 c2c:	00812403          	lw	s0,8(sp)
 c30:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 c34:	00412483          	lw	s1,4(sp)
 c38:	01010113          	addi	sp,sp,16
 c3c:	00008067          	ret

00000c40 <neorv32_rte_check_isa>:
 c40:	30102673          	csrr	a2,misa
 c44:	400005b7          	lui	a1,0x40000
 c48:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffefdc>
 c4c:	00b677b3          	and	a5,a2,a1
 c50:	04b78663          	beq	a5,a1,c9c <neorv32_rte_check_isa+0x5c>
 c54:	00050663          	beqz	a0,c60 <neorv32_rte_check_isa+0x20>
 c58:	00100513          	li	a0,1
 c5c:	00008067          	ret
 c60:	fe010113          	addi	sp,sp,-32
 c64:	00c12623          	sw	a2,12(sp)
 c68:	00112e23          	sw	ra,28(sp)
 c6c:	fb4ff0ef          	jal	ra,420 <neorv32_uart0_available>
 c70:	400007b7          	lui	a5,0x40000
 c74:	00c12603          	lw	a2,12(sp)
 c78:	10078593          	addi	a1,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffefdc>
 c7c:	00050863          	beqz	a0,c8c <neorv32_rte_check_isa+0x4c>
 c80:	00001537          	lui	a0,0x1
 c84:	08c50513          	addi	a0,a0,140 # 108c <symbols.0+0x2b0>
 c88:	911ff0ef          	jal	ra,598 <neorv32_uart0_printf>
 c8c:	01c12083          	lw	ra,28(sp)
 c90:	00100513          	li	a0,1
 c94:	02010113          	addi	sp,sp,32
 c98:	00008067          	ret
 c9c:	00000513          	li	a0,0
 ca0:	00008067          	ret

00000ca4 <neorv32_gpio_available>:
 ca4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 ca8:	01055513          	srli	a0,a0,0x10
 cac:	00157513          	andi	a0,a0,1
 cb0:	00008067          	ret

00000cb4 <neorv32_gpio_port_set>:
 cb4:	fc000793          	li	a5,-64
 cb8:	00a7a423          	sw	a0,8(a5)
 cbc:	00b7a623          	sw	a1,12(a5)
 cc0:	00008067          	ret

00000cc4 <neorv32_gpio_port_get>:
 cc4:	fc000793          	li	a5,-64
 cc8:	0007a503          	lw	a0,0(a5)
 ccc:	0047a583          	lw	a1,4(a5)
 cd0:	00008067          	ret

00000cd4 <__divsi3>:
 cd4:	06054063          	bltz	a0,d34 <__umodsi3+0x10>
 cd8:	0605c663          	bltz	a1,d44 <__umodsi3+0x20>

00000cdc <__udivsi3>:
 cdc:	00058613          	mv	a2,a1
 ce0:	00050593          	mv	a1,a0
 ce4:	fff00513          	li	a0,-1
 ce8:	02060c63          	beqz	a2,d20 <__udivsi3+0x44>
 cec:	00100693          	li	a3,1
 cf0:	00b67a63          	bgeu	a2,a1,d04 <__udivsi3+0x28>
 cf4:	00c05863          	blez	a2,d04 <__udivsi3+0x28>
 cf8:	00161613          	slli	a2,a2,0x1
 cfc:	00169693          	slli	a3,a3,0x1
 d00:	feb66ae3          	bltu	a2,a1,cf4 <__udivsi3+0x18>
 d04:	00000513          	li	a0,0
 d08:	00c5e663          	bltu	a1,a2,d14 <__udivsi3+0x38>
 d0c:	40c585b3          	sub	a1,a1,a2
 d10:	00d56533          	or	a0,a0,a3
 d14:	0016d693          	srli	a3,a3,0x1
 d18:	00165613          	srli	a2,a2,0x1
 d1c:	fe0696e3          	bnez	a3,d08 <__udivsi3+0x2c>
 d20:	00008067          	ret

00000d24 <__umodsi3>:
 d24:	00008293          	mv	t0,ra
 d28:	fb5ff0ef          	jal	ra,cdc <__udivsi3>
 d2c:	00058513          	mv	a0,a1
 d30:	00028067          	jr	t0
 d34:	40a00533          	neg	a0,a0
 d38:	00b04863          	bgtz	a1,d48 <__umodsi3+0x24>
 d3c:	40b005b3          	neg	a1,a1
 d40:	f9dff06f          	j	cdc <__udivsi3>
 d44:	40b005b3          	neg	a1,a1
 d48:	00008293          	mv	t0,ra
 d4c:	f91ff0ef          	jal	ra,cdc <__udivsi3>
 d50:	40a00533          	neg	a0,a0
 d54:	00028067          	jr	t0

00000d58 <__modsi3>:
 d58:	00008293          	mv	t0,ra
 d5c:	0005ca63          	bltz	a1,d70 <__modsi3+0x18>
 d60:	00054c63          	bltz	a0,d78 <__modsi3+0x20>
 d64:	f79ff0ef          	jal	ra,cdc <__udivsi3>
 d68:	00058513          	mv	a0,a1
 d6c:	00028067          	jr	t0
 d70:	40b005b3          	neg	a1,a1
 d74:	fe0558e3          	bgez	a0,d64 <__modsi3+0xc>
 d78:	40a00533          	neg	a0,a0
 d7c:	f61ff0ef          	jal	ra,cdc <__udivsi3>
 d80:	40b00533          	neg	a0,a1
 d84:	00028067          	jr	t0
