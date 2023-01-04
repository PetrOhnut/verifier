
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
  bc:	20058593          	addi	a1,a1,512 # 12b8 <__crt0_copy_data_src_begin>
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
 188:	01212823          	sw	s2,16(sp)
 18c:	01312623          	sw	s3,12(sp)
 190:	01412423          	sw	s4,8(sp)
 194:	01512223          	sw	s5,4(sp)
 198:	01612023          	sw	s6,0(sp)
 19c:	120000ef          	jal	ra,2bc <neorv32_pwm_available>
 1a0:	00100793          	li	a5,1
 1a4:	0a050263          	beqz	a0,248 <main+0xd0>
 1a8:	329000ef          	jal	ra,cd0 <neorv32_rte_setup>
 1ac:	2f8000ef          	jal	ra,4a4 <neorv32_uart0_available>
 1b0:	02050663          	beqz	a0,1dc <main+0x64>
 1b4:	00005537          	lui	a0,0x5
 1b8:	00000613          	li	a2,0
 1bc:	00000593          	li	a1,0
 1c0:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3848>
 1c4:	2f0000ef          	jal	ra,4b4 <neorv32_uart0_setup>
 1c8:	00000513          	li	a0,0
 1cc:	355000ef          	jal	ra,d20 <neorv32_rte_check_isa>
 1d0:	00001537          	lui	a0,0x1
 1d4:	efc50513          	addi	a0,a0,-260 # efc <__etext>
 1d8:	3a0000ef          	jal	ra,578 <neorv32_uart0_print>
 1dc:	00000413          	li	s0,0
 1e0:	00200493          	li	s1,2
 1e4:	00001937          	lui	s2,0x1
 1e8:	00300993          	li	s3,3
 1ec:	00001a37          	lui	s4,0x1
 1f0:	00001ab7          	lui	s5,0x1
 1f4:	00001b37          	lui	s6,0x1
 1f8:	00100513          	li	a0,1
 1fc:	594000ef          	jal	ra,790 <neorv32_cpu_delay_ms>
 200:	08940663          	beq	s0,s1,28c <main+0x114>
 204:	0b340063          	beq	s0,s3,2a4 <main+0x12c>
 208:	00100793          	li	a5,1
 20c:	06f40463          	beq	s0,a5,274 <main+0xfc>
 210:	f08b0513          	addi	a0,s6,-248 # f08 <__etext+0xc>
 214:	364000ef          	jal	ra,578 <neorv32_uart0_print>
 218:	00200513          	li	a0,2
 21c:	0b0000ef          	jal	ra,2cc <neorv32_pwm_setup>
 220:	00000593          	li	a1,0
 224:	00000513          	li	a0,0
 228:	35d000ef          	jal	ra,d84 <neorv32_gpio_port_set>
 22c:	04000593          	li	a1,64
 230:	00000513          	li	a0,0
 234:	0b4000ef          	jal	ra,2e8 <neorv32_pwm_set>
 238:	00140413          	addi	s0,s0,1
 23c:	00400793          	li	a5,4
 240:	faf41ce3          	bne	s0,a5,1f8 <main+0x80>
 244:	00000793          	li	a5,0
 248:	01c12083          	lw	ra,28(sp)
 24c:	01812403          	lw	s0,24(sp)
 250:	01412483          	lw	s1,20(sp)
 254:	01012903          	lw	s2,16(sp)
 258:	00c12983          	lw	s3,12(sp)
 25c:	00812a03          	lw	s4,8(sp)
 260:	00412a83          	lw	s5,4(sp)
 264:	00012b03          	lw	s6,0(sp)
 268:	00078513          	mv	a0,a5
 26c:	02010113          	addi	sp,sp,32
 270:	00008067          	ret
 274:	f1ca8513          	addi	a0,s5,-228 # f1c <__etext+0x20>
 278:	300000ef          	jal	ra,578 <neorv32_uart0_print>
 27c:	00300513          	li	a0,3
 280:	04c000ef          	jal	ra,2cc <neorv32_pwm_setup>
 284:	08000593          	li	a1,128
 288:	fa9ff06f          	j	230 <main+0xb8>
 28c:	f3490513          	addi	a0,s2,-204 # f34 <__etext+0x38>
 290:	2e8000ef          	jal	ra,578 <neorv32_uart0_print>
 294:	00100513          	li	a0,1
 298:	034000ef          	jal	ra,2cc <neorv32_pwm_setup>
 29c:	0c000593          	li	a1,192
 2a0:	f91ff06f          	j	230 <main+0xb8>
 2a4:	f4ca0513          	addi	a0,s4,-180 # f4c <__etext+0x50>
 2a8:	2d0000ef          	jal	ra,578 <neorv32_uart0_print>
 2ac:	00400513          	li	a0,4
 2b0:	01c000ef          	jal	ra,2cc <neorv32_pwm_setup>
 2b4:	0ff00593          	li	a1,255
 2b8:	f79ff06f          	j	230 <main+0xb8>

000002bc <neorv32_pwm_available>:
 2bc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 2c0:	01555513          	srli	a0,a0,0x15
 2c4:	00157513          	andi	a0,a0,1
 2c8:	00008067          	ret

000002cc <neorv32_pwm_setup>:
 2cc:	00757513          	andi	a0,a0,7
 2d0:	e8000793          	li	a5,-384
 2d4:	00151513          	slli	a0,a0,0x1
 2d8:	0007a023          	sw	zero,0(a5)
 2dc:	00156513          	ori	a0,a0,1
 2e0:	00a7a023          	sw	a0,0(a5)
 2e4:	00008067          	ret

000002e8 <neorv32_pwm_set>:
 2e8:	03b00793          	li	a5,59
 2ec:	02a7e863          	bltu	a5,a0,31c <neorv32_pwm_set+0x34>
 2f0:	00357713          	andi	a4,a0,3
 2f4:	0fc57513          	andi	a0,a0,252
 2f8:	e8452683          	lw	a3,-380(a0)
 2fc:	00371713          	slli	a4,a4,0x3
 300:	0ff00793          	li	a5,255
 304:	00e797b3          	sll	a5,a5,a4
 308:	fff7c793          	not	a5,a5
 30c:	00d7f7b3          	and	a5,a5,a3
 310:	00e595b3          	sll	a1,a1,a4
 314:	00f5e5b3          	or	a1,a1,a5
 318:	e8b52223          	sw	a1,-380(a0)
 31c:	00008067          	ret

00000320 <neorv32_mtime_get_time>:
 320:	f9402583          	lw	a1,-108(zero) # ffffff94 <__crt0_io_space_begin+0x194>
 324:	f9002503          	lw	a0,-112(zero) # ffffff90 <__crt0_io_space_begin+0x190>
 328:	f9402783          	lw	a5,-108(zero) # ffffff94 <__crt0_io_space_begin+0x194>
 32c:	fef59ae3          	bne	a1,a5,320 <neorv32_mtime_get_time>
 330:	00008067          	ret

00000334 <__neorv32_uart_itoa>:
 334:	fd010113          	addi	sp,sp,-48
 338:	02812423          	sw	s0,40(sp)
 33c:	02912223          	sw	s1,36(sp)
 340:	03212023          	sw	s2,32(sp)
 344:	01312e23          	sw	s3,28(sp)
 348:	01412c23          	sw	s4,24(sp)
 34c:	02112623          	sw	ra,44(sp)
 350:	01512a23          	sw	s5,20(sp)
 354:	00001a37          	lui	s4,0x1
 358:	00050493          	mv	s1,a0
 35c:	00058413          	mv	s0,a1
 360:	00058523          	sb	zero,10(a1)
 364:	00000993          	li	s3,0
 368:	00410913          	addi	s2,sp,4
 36c:	f64a0a13          	addi	s4,s4,-156 # f64 <numbers.1>
 370:	00a00593          	li	a1,10
 374:	00048513          	mv	a0,s1
 378:	321000ef          	jal	ra,e98 <__umodsi3>
 37c:	00aa0533          	add	a0,s4,a0
 380:	00054783          	lbu	a5,0(a0)
 384:	01390ab3          	add	s5,s2,s3
 388:	00048513          	mv	a0,s1
 38c:	00fa8023          	sb	a5,0(s5)
 390:	00a00593          	li	a1,10
 394:	2bd000ef          	jal	ra,e50 <__udivsi3>
 398:	00198993          	addi	s3,s3,1
 39c:	00a00793          	li	a5,10
 3a0:	00050493          	mv	s1,a0
 3a4:	fcf996e3          	bne	s3,a5,370 <__neorv32_uart_itoa+0x3c>
 3a8:	00090693          	mv	a3,s2
 3ac:	00900713          	li	a4,9
 3b0:	03000613          	li	a2,48
 3b4:	0096c583          	lbu	a1,9(a3)
 3b8:	00070793          	mv	a5,a4
 3bc:	fff70713          	addi	a4,a4,-1
 3c0:	01071713          	slli	a4,a4,0x10
 3c4:	01075713          	srli	a4,a4,0x10
 3c8:	00c59a63          	bne	a1,a2,3dc <__neorv32_uart_itoa+0xa8>
 3cc:	000684a3          	sb	zero,9(a3)
 3d0:	fff68693          	addi	a3,a3,-1
 3d4:	fe0710e3          	bnez	a4,3b4 <__neorv32_uart_itoa+0x80>
 3d8:	00000793          	li	a5,0
 3dc:	00f907b3          	add	a5,s2,a5
 3e0:	00000593          	li	a1,0
 3e4:	0007c703          	lbu	a4,0(a5)
 3e8:	00070c63          	beqz	a4,400 <__neorv32_uart_itoa+0xcc>
 3ec:	00158693          	addi	a3,a1,1
 3f0:	00b405b3          	add	a1,s0,a1
 3f4:	00e58023          	sb	a4,0(a1)
 3f8:	01069593          	slli	a1,a3,0x10
 3fc:	0105d593          	srli	a1,a1,0x10
 400:	fff78713          	addi	a4,a5,-1
 404:	02f91863          	bne	s2,a5,434 <__neorv32_uart_itoa+0x100>
 408:	00b40433          	add	s0,s0,a1
 40c:	00040023          	sb	zero,0(s0)
 410:	02c12083          	lw	ra,44(sp)
 414:	02812403          	lw	s0,40(sp)
 418:	02412483          	lw	s1,36(sp)
 41c:	02012903          	lw	s2,32(sp)
 420:	01c12983          	lw	s3,28(sp)
 424:	01812a03          	lw	s4,24(sp)
 428:	01412a83          	lw	s5,20(sp)
 42c:	03010113          	addi	sp,sp,48
 430:	00008067          	ret
 434:	00070793          	mv	a5,a4
 438:	fadff06f          	j	3e4 <__neorv32_uart_itoa+0xb0>

0000043c <__neorv32_uart_tohex>:
 43c:	00001637          	lui	a2,0x1
 440:	00758693          	addi	a3,a1,7
 444:	00000713          	li	a4,0
 448:	f7060613          	addi	a2,a2,-144 # f70 <symbols.0>
 44c:	02000813          	li	a6,32
 450:	00e557b3          	srl	a5,a0,a4
 454:	00f7f793          	andi	a5,a5,15
 458:	00f607b3          	add	a5,a2,a5
 45c:	0007c783          	lbu	a5,0(a5)
 460:	00470713          	addi	a4,a4,4
 464:	fff68693          	addi	a3,a3,-1
 468:	00f680a3          	sb	a5,1(a3)
 46c:	ff0712e3          	bne	a4,a6,450 <__neorv32_uart_tohex+0x14>
 470:	00058423          	sb	zero,8(a1)
 474:	00008067          	ret

00000478 <__neorv32_uart_touppercase.constprop.0>:
 478:	00b50693          	addi	a3,a0,11
 47c:	01900613          	li	a2,25
 480:	00054783          	lbu	a5,0(a0)
 484:	f9f78713          	addi	a4,a5,-97
 488:	0ff77713          	andi	a4,a4,255
 48c:	00e66663          	bltu	a2,a4,498 <__neorv32_uart_touppercase.constprop.0+0x20>
 490:	fe078793          	addi	a5,a5,-32
 494:	00f50023          	sb	a5,0(a0)
 498:	00150513          	addi	a0,a0,1
 49c:	fed512e3          	bne	a0,a3,480 <__neorv32_uart_touppercase.constprop.0+0x8>
 4a0:	00008067          	ret

000004a4 <neorv32_uart0_available>:
 4a4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 4a8:	01255513          	srli	a0,a0,0x12
 4ac:	00157513          	andi	a0,a0,1
 4b0:	00008067          	ret

000004b4 <neorv32_uart0_setup>:
 4b4:	ff010113          	addi	sp,sp,-16
 4b8:	00812423          	sw	s0,8(sp)
 4bc:	00912223          	sw	s1,4(sp)
 4c0:	00112623          	sw	ra,12(sp)
 4c4:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 4c8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 4cc:	00058413          	mv	s0,a1
 4d0:	00151593          	slli	a1,a0,0x1
 4d4:	00078513          	mv	a0,a5
 4d8:	00060493          	mv	s1,a2
 4dc:	175000ef          	jal	ra,e50 <__udivsi3>
 4e0:	01051513          	slli	a0,a0,0x10
 4e4:	000017b7          	lui	a5,0x1
 4e8:	01055513          	srli	a0,a0,0x10
 4ec:	00000713          	li	a4,0
 4f0:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x8e>
 4f4:	04a7e463          	bltu	a5,a0,53c <neorv32_uart0_setup+0x88>
 4f8:	0034f793          	andi	a5,s1,3
 4fc:	00347413          	andi	s0,s0,3
 500:	fff50513          	addi	a0,a0,-1
 504:	01479793          	slli	a5,a5,0x14
 508:	01641413          	slli	s0,s0,0x16
 50c:	00f567b3          	or	a5,a0,a5
 510:	0087e7b3          	or	a5,a5,s0
 514:	01871713          	slli	a4,a4,0x18
 518:	00c12083          	lw	ra,12(sp)
 51c:	00812403          	lw	s0,8(sp)
 520:	00e7e7b3          	or	a5,a5,a4
 524:	10001737          	lui	a4,0x10001
 528:	00e7e7b3          	or	a5,a5,a4
 52c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 530:	00412483          	lw	s1,4(sp)
 534:	01010113          	addi	sp,sp,16
 538:	00008067          	ret
 53c:	ffe70693          	addi	a3,a4,-2 # 10000ffe <__crt0_copy_data_src_begin+0xffffd46>
 540:	0fd6f693          	andi	a3,a3,253
 544:	00069a63          	bnez	a3,558 <neorv32_uart0_setup+0xa4>
 548:	00355513          	srli	a0,a0,0x3
 54c:	00170713          	addi	a4,a4,1
 550:	0ff77713          	andi	a4,a4,255
 554:	fa1ff06f          	j	4f4 <neorv32_uart0_setup+0x40>
 558:	00155513          	srli	a0,a0,0x1
 55c:	ff1ff06f          	j	54c <neorv32_uart0_setup+0x98>

00000560 <neorv32_uart0_putc>:
 560:	00040737          	lui	a4,0x40
 564:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 568:	00e7f7b3          	and	a5,a5,a4
 56c:	fe079ce3          	bnez	a5,564 <neorv32_uart0_putc+0x4>
 570:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 574:	00008067          	ret

00000578 <neorv32_uart0_print>:
 578:	ff010113          	addi	sp,sp,-16
 57c:	00812423          	sw	s0,8(sp)
 580:	01212023          	sw	s2,0(sp)
 584:	00112623          	sw	ra,12(sp)
 588:	00912223          	sw	s1,4(sp)
 58c:	00050413          	mv	s0,a0
 590:	00a00913          	li	s2,10
 594:	00044483          	lbu	s1,0(s0)
 598:	00140413          	addi	s0,s0,1
 59c:	00049e63          	bnez	s1,5b8 <neorv32_uart0_print+0x40>
 5a0:	00c12083          	lw	ra,12(sp)
 5a4:	00812403          	lw	s0,8(sp)
 5a8:	00412483          	lw	s1,4(sp)
 5ac:	00012903          	lw	s2,0(sp)
 5b0:	01010113          	addi	sp,sp,16
 5b4:	00008067          	ret
 5b8:	01249663          	bne	s1,s2,5c4 <neorv32_uart0_print+0x4c>
 5bc:	00d00513          	li	a0,13
 5c0:	fa1ff0ef          	jal	ra,560 <neorv32_uart0_putc>
 5c4:	00048513          	mv	a0,s1
 5c8:	f99ff0ef          	jal	ra,560 <neorv32_uart0_putc>
 5cc:	fc9ff06f          	j	594 <neorv32_uart0_print+0x1c>

000005d0 <neorv32_uart0_printf>:
 5d0:	fa010113          	addi	sp,sp,-96
 5d4:	04f12a23          	sw	a5,84(sp)
 5d8:	04410793          	addi	a5,sp,68
 5dc:	02812c23          	sw	s0,56(sp)
 5e0:	03212823          	sw	s2,48(sp)
 5e4:	03312623          	sw	s3,44(sp)
 5e8:	03512223          	sw	s5,36(sp)
 5ec:	03612023          	sw	s6,32(sp)
 5f0:	01712e23          	sw	s7,28(sp)
 5f4:	01812c23          	sw	s8,24(sp)
 5f8:	01912a23          	sw	s9,20(sp)
 5fc:	02112e23          	sw	ra,60(sp)
 600:	02912a23          	sw	s1,52(sp)
 604:	03412423          	sw	s4,40(sp)
 608:	00050413          	mv	s0,a0
 60c:	04b12223          	sw	a1,68(sp)
 610:	04c12423          	sw	a2,72(sp)
 614:	04d12623          	sw	a3,76(sp)
 618:	04e12823          	sw	a4,80(sp)
 61c:	05012c23          	sw	a6,88(sp)
 620:	05112e23          	sw	a7,92(sp)
 624:	00f12023          	sw	a5,0(sp)
 628:	02500a93          	li	s5,37
 62c:	00a00b13          	li	s6,10
 630:	07000913          	li	s2,112
 634:	05800993          	li	s3,88
 638:	07500b93          	li	s7,117
 63c:	07800c13          	li	s8,120
 640:	07300c93          	li	s9,115
 644:	00044483          	lbu	s1,0(s0)
 648:	02049c63          	bnez	s1,680 <neorv32_uart0_printf+0xb0>
 64c:	03c12083          	lw	ra,60(sp)
 650:	03812403          	lw	s0,56(sp)
 654:	03412483          	lw	s1,52(sp)
 658:	03012903          	lw	s2,48(sp)
 65c:	02c12983          	lw	s3,44(sp)
 660:	02812a03          	lw	s4,40(sp)
 664:	02412a83          	lw	s5,36(sp)
 668:	02012b03          	lw	s6,32(sp)
 66c:	01c12b83          	lw	s7,28(sp)
 670:	01812c03          	lw	s8,24(sp)
 674:	01412c83          	lw	s9,20(sp)
 678:	06010113          	addi	sp,sp,96
 67c:	00008067          	ret
 680:	0f549c63          	bne	s1,s5,778 <neorv32_uart0_printf+0x1a8>
 684:	00240a13          	addi	s4,s0,2
 688:	00144403          	lbu	s0,1(s0)
 68c:	0d240263          	beq	s0,s2,750 <neorv32_uart0_printf+0x180>
 690:	06896463          	bltu	s2,s0,6f8 <neorv32_uart0_printf+0x128>
 694:	06300793          	li	a5,99
 698:	08f40463          	beq	s0,a5,720 <neorv32_uart0_printf+0x150>
 69c:	0087ec63          	bltu	a5,s0,6b4 <neorv32_uart0_printf+0xe4>
 6a0:	0b340863          	beq	s0,s3,750 <neorv32_uart0_printf+0x180>
 6a4:	02500513          	li	a0,37
 6a8:	eb9ff0ef          	jal	ra,560 <neorv32_uart0_putc>
 6ac:	00040513          	mv	a0,s0
 6b0:	0800006f          	j	730 <neorv32_uart0_printf+0x160>
 6b4:	06400793          	li	a5,100
 6b8:	00f40663          	beq	s0,a5,6c4 <neorv32_uart0_printf+0xf4>
 6bc:	06900793          	li	a5,105
 6c0:	fef412e3          	bne	s0,a5,6a4 <neorv32_uart0_printf+0xd4>
 6c4:	00012783          	lw	a5,0(sp)
 6c8:	0007a403          	lw	s0,0(a5)
 6cc:	00478713          	addi	a4,a5,4
 6d0:	00e12023          	sw	a4,0(sp)
 6d4:	00045863          	bgez	s0,6e4 <neorv32_uart0_printf+0x114>
 6d8:	02d00513          	li	a0,45
 6dc:	40800433          	neg	s0,s0
 6e0:	e81ff0ef          	jal	ra,560 <neorv32_uart0_putc>
 6e4:	00410593          	addi	a1,sp,4
 6e8:	00040513          	mv	a0,s0
 6ec:	c49ff0ef          	jal	ra,334 <__neorv32_uart_itoa>
 6f0:	00410513          	addi	a0,sp,4
 6f4:	0200006f          	j	714 <neorv32_uart0_printf+0x144>
 6f8:	05740063          	beq	s0,s7,738 <neorv32_uart0_printf+0x168>
 6fc:	05840a63          	beq	s0,s8,750 <neorv32_uart0_printf+0x180>
 700:	fb9412e3          	bne	s0,s9,6a4 <neorv32_uart0_printf+0xd4>
 704:	00012783          	lw	a5,0(sp)
 708:	0007a503          	lw	a0,0(a5)
 70c:	00478713          	addi	a4,a5,4
 710:	00e12023          	sw	a4,0(sp)
 714:	e65ff0ef          	jal	ra,578 <neorv32_uart0_print>
 718:	000a0413          	mv	s0,s4
 71c:	f29ff06f          	j	644 <neorv32_uart0_printf+0x74>
 720:	00012783          	lw	a5,0(sp)
 724:	0007c503          	lbu	a0,0(a5)
 728:	00478713          	addi	a4,a5,4
 72c:	00e12023          	sw	a4,0(sp)
 730:	e31ff0ef          	jal	ra,560 <neorv32_uart0_putc>
 734:	fe5ff06f          	j	718 <neorv32_uart0_printf+0x148>
 738:	00012783          	lw	a5,0(sp)
 73c:	00410593          	addi	a1,sp,4
 740:	00478713          	addi	a4,a5,4
 744:	0007a503          	lw	a0,0(a5)
 748:	00e12023          	sw	a4,0(sp)
 74c:	fa1ff06f          	j	6ec <neorv32_uart0_printf+0x11c>
 750:	00012783          	lw	a5,0(sp)
 754:	00410593          	addi	a1,sp,4
 758:	0007a503          	lw	a0,0(a5)
 75c:	00478713          	addi	a4,a5,4
 760:	00e12023          	sw	a4,0(sp)
 764:	cd9ff0ef          	jal	ra,43c <__neorv32_uart_tohex>
 768:	f93414e3          	bne	s0,s3,6f0 <neorv32_uart0_printf+0x120>
 76c:	00410513          	addi	a0,sp,4
 770:	d09ff0ef          	jal	ra,478 <__neorv32_uart_touppercase.constprop.0>
 774:	f7dff06f          	j	6f0 <neorv32_uart0_printf+0x120>
 778:	01649663          	bne	s1,s6,784 <neorv32_uart0_printf+0x1b4>
 77c:	00d00513          	li	a0,13
 780:	de1ff0ef          	jal	ra,560 <neorv32_uart0_putc>
 784:	00140a13          	addi	s4,s0,1
 788:	00048513          	mv	a0,s1
 78c:	fa5ff06f          	j	730 <neorv32_uart0_printf+0x160>

00000790 <neorv32_cpu_delay_ms>:
 790:	fe010113          	addi	sp,sp,-32
 794:	00a12623          	sw	a0,12(sp)
 798:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 79c:	3e800593          	li	a1,1000
 7a0:	00112e23          	sw	ra,28(sp)
 7a4:	00812c23          	sw	s0,24(sp)
 7a8:	00912a23          	sw	s1,20(sp)
 7ac:	6a4000ef          	jal	ra,e50 <__udivsi3>
 7b0:	00c12603          	lw	a2,12(sp)
 7b4:	00000693          	li	a3,0
 7b8:	00000593          	li	a1,0
 7bc:	5fc000ef          	jal	ra,db8 <__muldi3>
 7c0:	fe802783          	lw	a5,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 7c4:	00020737          	lui	a4,0x20
 7c8:	00050413          	mv	s0,a0
 7cc:	00e7f7b3          	and	a5,a5,a4
 7d0:	00058493          	mv	s1,a1
 7d4:	02078e63          	beqz	a5,810 <__heap_size+0x10>
 7d8:	b49ff0ef          	jal	ra,320 <neorv32_mtime_get_time>
 7dc:	00850433          	add	s0,a0,s0
 7e0:	00a43533          	sltu	a0,s0,a0
 7e4:	009584b3          	add	s1,a1,s1
 7e8:	009504b3          	add	s1,a0,s1
 7ec:	b35ff0ef          	jal	ra,320 <neorv32_mtime_get_time>
 7f0:	fe95eee3          	bltu	a1,s1,7ec <neorv32_cpu_delay_ms+0x5c>
 7f4:	00b49463          	bne	s1,a1,7fc <neorv32_cpu_delay_ms+0x6c>
 7f8:	fe856ae3          	bltu	a0,s0,7ec <neorv32_cpu_delay_ms+0x5c>
 7fc:	01c12083          	lw	ra,28(sp)
 800:	01812403          	lw	s0,24(sp)
 804:	01412483          	lw	s1,20(sp)
 808:	02010113          	addi	sp,sp,32
 80c:	00008067          	ret
 810:	01c59493          	slli	s1,a1,0x1c
 814:	00455513          	srli	a0,a0,0x4
 818:	00a4e533          	or	a0,s1,a0

0000081c <__neorv32_cpu_delay_ms_start>:
 81c:	00050a63          	beqz	a0,830 <__neorv32_cpu_delay_ms_end>
 820:	00050863          	beqz	a0,830 <__neorv32_cpu_delay_ms_end>
 824:	fff50513          	addi	a0,a0,-1
 828:	00000013          	nop
 82c:	ff1ff06f          	j	81c <__neorv32_cpu_delay_ms_start>

00000830 <__neorv32_cpu_delay_ms_end>:
 830:	fcdff06f          	j	7fc <neorv32_cpu_delay_ms+0x6c>

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
 888:	00075683          	lhu	a3,0(a4) # 20000 <__crt0_copy_data_src_begin+0x1ed48>
 88c:	00300593          	li	a1,3
 890:	0036f693          	andi	a3,a3,3
 894:	00270613          	addi	a2,a4,2
 898:	00b69463          	bne	a3,a1,8a0 <__neorv32_rte_core+0x6c>
 89c:	00470613          	addi	a2,a4,4
 8a0:	34161073          	csrw	mepc,a2
 8a4:	00b00713          	li	a4,11
 8a8:	00f77863          	bgeu	a4,a5,8b8 <__neorv32_rte_core+0x84>
 8ac:	000017b7          	lui	a5,0x1
 8b0:	aa478793          	addi	a5,a5,-1372 # aa4 <__neorv32_rte_debug_exc_handler>
 8b4:	0500006f          	j	904 <__neorv32_rte_core+0xd0>
 8b8:	00001737          	lui	a4,0x1
 8bc:	00279793          	slli	a5,a5,0x2
 8c0:	f8470713          	addi	a4,a4,-124 # f84 <symbols.0+0x14>
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
 8ec:	fb470713          	addi	a4,a4,-76 # fb4 <symbols.0+0x44>
 8f0:	00e787b3          	add	a5,a5,a4
 8f4:	0007a783          	lw	a5,0(a5)
 8f8:	00078067          	jr	a5
 8fc:	800007b7          	lui	a5,0x80000
 900:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
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
 950:	800007b7          	lui	a5,0x80000
 954:	0047a783          	lw	a5,4(a5) # 80000004 <__crt0_io_space_begin+0x80000204>
 958:	fadff06f          	j	904 <__neorv32_rte_core+0xd0>
 95c:	8081a783          	lw	a5,-2040(gp) # 80000008 <__neorv32_rte_vector_lut+0x8>
 960:	fa5ff06f          	j	904 <__neorv32_rte_core+0xd0>
 964:	80c1a783          	lw	a5,-2036(gp) # 8000000c <__neorv32_rte_vector_lut+0xc>
 968:	f9dff06f          	j	904 <__neorv32_rte_core+0xd0>
 96c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 970:	f95ff06f          	j	904 <__neorv32_rte_core+0xd0>
 974:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 978:	f8dff06f          	j	904 <__neorv32_rte_core+0xd0>
 97c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 980:	f85ff06f          	j	904 <__neorv32_rte_core+0xd0>
 984:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 988:	f7dff06f          	j	904 <__neorv32_rte_core+0xd0>
 98c:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 990:	f75ff06f          	j	904 <__neorv32_rte_core+0xd0>
 994:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 998:	f6dff06f          	j	904 <__neorv32_rte_core+0xd0>
 99c:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 9a0:	f65ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9a4:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 9a8:	f5dff06f          	j	904 <__neorv32_rte_core+0xd0>
 9ac:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 9b0:	f55ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9b4:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 9b8:	f4dff06f          	j	904 <__neorv32_rte_core+0xd0>
 9bc:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 9c0:	f45ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9c4:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 9c8:	f3dff06f          	j	904 <__neorv32_rte_core+0xd0>
 9cc:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 9d0:	f35ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9d4:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 9d8:	f2dff06f          	j	904 <__neorv32_rte_core+0xd0>
 9dc:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 9e0:	f25ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9e4:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 9e8:	f1dff06f          	j	904 <__neorv32_rte_core+0xd0>
 9ec:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 9f0:	f15ff06f          	j	904 <__neorv32_rte_core+0xd0>
 9f4:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 9f8:	f0dff06f          	j	904 <__neorv32_rte_core+0xd0>
 9fc:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 a00:	f05ff06f          	j	904 <__neorv32_rte_core+0xd0>
 a04:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 a08:	efdff06f          	j	904 <__neorv32_rte_core+0xd0>
 a0c:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 a10:	ef5ff06f          	j	904 <__neorv32_rte_core+0xd0>
 a14:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 a18:	eedff06f          	j	904 <__neorv32_rte_core+0xd0>
 a1c:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 a20:	ee5ff06f          	j	904 <__neorv32_rte_core+0xd0>
 a24:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 a28:	eddff06f          	j	904 <__neorv32_rte_core+0xd0>
 a2c:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 a30:	ed5ff06f          	j	904 <__neorv32_rte_core+0xd0>

00000a34 <__neorv32_rte_print_hex_word>:
 a34:	fe010113          	addi	sp,sp,-32
 a38:	01212823          	sw	s2,16(sp)
 a3c:	00050913          	mv	s2,a0
 a40:	00001537          	lui	a0,0x1
 a44:	00912a23          	sw	s1,20(sp)
 a48:	02850513          	addi	a0,a0,40 # 1028 <symbols.0+0xb8>
 a4c:	000014b7          	lui	s1,0x1
 a50:	00812c23          	sw	s0,24(sp)
 a54:	01312623          	sw	s3,12(sp)
 a58:	00112e23          	sw	ra,28(sp)
 a5c:	01c00413          	li	s0,28
 a60:	b19ff0ef          	jal	ra,578 <neorv32_uart0_print>
 a64:	2a848493          	addi	s1,s1,680 # 12a8 <hex_symbols.0>
 a68:	ffc00993          	li	s3,-4
 a6c:	008957b3          	srl	a5,s2,s0
 a70:	00f7f793          	andi	a5,a5,15
 a74:	00f487b3          	add	a5,s1,a5
 a78:	0007c503          	lbu	a0,0(a5)
 a7c:	ffc40413          	addi	s0,s0,-4
 a80:	ae1ff0ef          	jal	ra,560 <neorv32_uart0_putc>
 a84:	ff3414e3          	bne	s0,s3,a6c <__neorv32_rte_print_hex_word+0x38>
 a88:	01c12083          	lw	ra,28(sp)
 a8c:	01812403          	lw	s0,24(sp)
 a90:	01412483          	lw	s1,20(sp)
 a94:	01012903          	lw	s2,16(sp)
 a98:	00c12983          	lw	s3,12(sp)
 a9c:	02010113          	addi	sp,sp,32
 aa0:	00008067          	ret

00000aa4 <__neorv32_rte_debug_exc_handler>:
 aa4:	ff010113          	addi	sp,sp,-16
 aa8:	00112623          	sw	ra,12(sp)
 aac:	00812423          	sw	s0,8(sp)
 ab0:	00912223          	sw	s1,4(sp)
 ab4:	9f1ff0ef          	jal	ra,4a4 <neorv32_uart0_available>
 ab8:	1c050863          	beqz	a0,c88 <__neorv32_rte_debug_exc_handler+0x1e4>
 abc:	00001537          	lui	a0,0x1
 ac0:	02c50513          	addi	a0,a0,44 # 102c <symbols.0+0xbc>
 ac4:	ab5ff0ef          	jal	ra,578 <neorv32_uart0_print>
 ac8:	34202473          	csrr	s0,mcause
 acc:	00900713          	li	a4,9
 ad0:	00f47793          	andi	a5,s0,15
 ad4:	03078493          	addi	s1,a5,48
 ad8:	00f77463          	bgeu	a4,a5,ae0 <__neorv32_rte_debug_exc_handler+0x3c>
 adc:	05778493          	addi	s1,a5,87
 ae0:	00b00793          	li	a5,11
 ae4:	0087ee63          	bltu	a5,s0,b00 <__neorv32_rte_debug_exc_handler+0x5c>
 ae8:	00001737          	lui	a4,0x1
 aec:	00241793          	slli	a5,s0,0x2
 af0:	1f070713          	addi	a4,a4,496 # 11f0 <symbols.0+0x280>
 af4:	00e787b3          	add	a5,a5,a4
 af8:	0007a783          	lw	a5,0(a5)
 afc:	00078067          	jr	a5
 b00:	800007b7          	lui	a5,0x80000
 b04:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 b08:	14e40e63          	beq	s0,a4,c64 <__neorv32_rte_debug_exc_handler+0x1c0>
 b0c:	02876a63          	bltu	a4,s0,b40 <__neorv32_rte_debug_exc_handler+0x9c>
 b10:	00378713          	addi	a4,a5,3
 b14:	12e40c63          	beq	s0,a4,c4c <__neorv32_rte_debug_exc_handler+0x1a8>
 b18:	00778793          	addi	a5,a5,7
 b1c:	12f40e63          	beq	s0,a5,c58 <__neorv32_rte_debug_exc_handler+0x1b4>
 b20:	00001537          	lui	a0,0x1
 b24:	18c50513          	addi	a0,a0,396 # 118c <symbols.0+0x21c>
 b28:	a51ff0ef          	jal	ra,578 <neorv32_uart0_print>
 b2c:	00040513          	mv	a0,s0
 b30:	f05ff0ef          	jal	ra,a34 <__neorv32_rte_print_hex_word>
 b34:	00100793          	li	a5,1
 b38:	08f40c63          	beq	s0,a5,bd0 <__neorv32_rte_debug_exc_handler+0x12c>
 b3c:	0280006f          	j	b64 <__neorv32_rte_debug_exc_handler+0xc0>
 b40:	ff07c793          	xori	a5,a5,-16
 b44:	00f407b3          	add	a5,s0,a5
 b48:	00f00713          	li	a4,15
 b4c:	fcf76ae3          	bltu	a4,a5,b20 <__neorv32_rte_debug_exc_handler+0x7c>
 b50:	00001537          	lui	a0,0x1
 b54:	17c50513          	addi	a0,a0,380 # 117c <symbols.0+0x20c>
 b58:	a21ff0ef          	jal	ra,578 <neorv32_uart0_print>
 b5c:	00048513          	mv	a0,s1
 b60:	a01ff0ef          	jal	ra,560 <neorv32_uart0_putc>
 b64:	ffd47413          	andi	s0,s0,-3
 b68:	00500793          	li	a5,5
 b6c:	06f40263          	beq	s0,a5,bd0 <__neorv32_rte_debug_exc_handler+0x12c>
 b70:	00001537          	lui	a0,0x1
 b74:	1d050513          	addi	a0,a0,464 # 11d0 <symbols.0+0x260>
 b78:	a01ff0ef          	jal	ra,578 <neorv32_uart0_print>
 b7c:	34002573          	csrr	a0,mscratch
 b80:	eb5ff0ef          	jal	ra,a34 <__neorv32_rte_print_hex_word>
 b84:	00001537          	lui	a0,0x1
 b88:	1d850513          	addi	a0,a0,472 # 11d8 <symbols.0+0x268>
 b8c:	9edff0ef          	jal	ra,578 <neorv32_uart0_print>
 b90:	34302573          	csrr	a0,mtval
 b94:	ea1ff0ef          	jal	ra,a34 <__neorv32_rte_print_hex_word>
 b98:	00812403          	lw	s0,8(sp)
 b9c:	00c12083          	lw	ra,12(sp)
 ba0:	00412483          	lw	s1,4(sp)
 ba4:	00001537          	lui	a0,0x1
 ba8:	1e450513          	addi	a0,a0,484 # 11e4 <symbols.0+0x274>
 bac:	01010113          	addi	sp,sp,16
 bb0:	9c9ff06f          	j	578 <neorv32_uart0_print>
 bb4:	00001537          	lui	a0,0x1
 bb8:	03450513          	addi	a0,a0,52 # 1034 <symbols.0+0xc4>
 bbc:	9bdff0ef          	jal	ra,578 <neorv32_uart0_print>
 bc0:	fb1ff06f          	j	b70 <__neorv32_rte_debug_exc_handler+0xcc>
 bc4:	00001537          	lui	a0,0x1
 bc8:	05450513          	addi	a0,a0,84 # 1054 <symbols.0+0xe4>
 bcc:	9adff0ef          	jal	ra,578 <neorv32_uart0_print>
 bd0:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 bd4:	0a07d463          	bgez	a5,c7c <__neorv32_rte_debug_exc_handler+0x1d8>
 bd8:	0017f793          	andi	a5,a5,1
 bdc:	08078a63          	beqz	a5,c70 <__neorv32_rte_debug_exc_handler+0x1cc>
 be0:	00001537          	lui	a0,0x1
 be4:	1a450513          	addi	a0,a0,420 # 11a4 <symbols.0+0x234>
 be8:	fd5ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 bec:	00001537          	lui	a0,0x1
 bf0:	07050513          	addi	a0,a0,112 # 1070 <symbols.0+0x100>
 bf4:	fc9ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 bf8:	00001537          	lui	a0,0x1
 bfc:	08450513          	addi	a0,a0,132 # 1084 <symbols.0+0x114>
 c00:	fbdff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 c04:	00001537          	lui	a0,0x1
 c08:	09050513          	addi	a0,a0,144 # 1090 <symbols.0+0x120>
 c0c:	fb1ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 c10:	00001537          	lui	a0,0x1
 c14:	0a850513          	addi	a0,a0,168 # 10a8 <symbols.0+0x138>
 c18:	fb5ff06f          	j	bcc <__neorv32_rte_debug_exc_handler+0x128>
 c1c:	00001537          	lui	a0,0x1
 c20:	0bc50513          	addi	a0,a0,188 # 10bc <symbols.0+0x14c>
 c24:	f99ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 c28:	00001537          	lui	a0,0x1
 c2c:	0d850513          	addi	a0,a0,216 # 10d8 <symbols.0+0x168>
 c30:	f9dff06f          	j	bcc <__neorv32_rte_debug_exc_handler+0x128>
 c34:	00001537          	lui	a0,0x1
 c38:	0ec50513          	addi	a0,a0,236 # 10ec <symbols.0+0x17c>
 c3c:	f81ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 c40:	00001537          	lui	a0,0x1
 c44:	10c50513          	addi	a0,a0,268 # 110c <symbols.0+0x19c>
 c48:	f75ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 c4c:	00001537          	lui	a0,0x1
 c50:	12c50513          	addi	a0,a0,300 # 112c <symbols.0+0x1bc>
 c54:	f69ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 c58:	00001537          	lui	a0,0x1
 c5c:	14850513          	addi	a0,a0,328 # 1148 <symbols.0+0x1d8>
 c60:	f5dff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 c64:	00001537          	lui	a0,0x1
 c68:	16050513          	addi	a0,a0,352 # 1160 <symbols.0+0x1f0>
 c6c:	f51ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 c70:	00001537          	lui	a0,0x1
 c74:	1b450513          	addi	a0,a0,436 # 11b4 <symbols.0+0x244>
 c78:	f45ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 c7c:	00001537          	lui	a0,0x1
 c80:	1c450513          	addi	a0,a0,452 # 11c4 <symbols.0+0x254>
 c84:	f39ff06f          	j	bbc <__neorv32_rte_debug_exc_handler+0x118>
 c88:	00c12083          	lw	ra,12(sp)
 c8c:	00812403          	lw	s0,8(sp)
 c90:	00412483          	lw	s1,4(sp)
 c94:	01010113          	addi	sp,sp,16
 c98:	00008067          	ret

00000c9c <neorv32_rte_exception_uninstall>:
 c9c:	01f00793          	li	a5,31
 ca0:	02a7e463          	bltu	a5,a0,cc8 <neorv32_rte_exception_uninstall+0x2c>
 ca4:	800007b7          	lui	a5,0x80000
 ca8:	00078793          	mv	a5,a5
 cac:	00251513          	slli	a0,a0,0x2
 cb0:	00a78533          	add	a0,a5,a0
 cb4:	000017b7          	lui	a5,0x1
 cb8:	aa478793          	addi	a5,a5,-1372 # aa4 <__neorv32_rte_debug_exc_handler>
 cbc:	00f52023          	sw	a5,0(a0)
 cc0:	00000513          	li	a0,0
 cc4:	00008067          	ret
 cc8:	00100513          	li	a0,1
 ccc:	00008067          	ret

00000cd0 <neorv32_rte_setup>:
 cd0:	ff010113          	addi	sp,sp,-16
 cd4:	000017b7          	lui	a5,0x1
 cd8:	00112623          	sw	ra,12(sp)
 cdc:	00812423          	sw	s0,8(sp)
 ce0:	00912223          	sw	s1,4(sp)
 ce4:	83478793          	addi	a5,a5,-1996 # 834 <__neorv32_rte_core>
 ce8:	30579073          	csrw	mtvec,a5
 cec:	00000413          	li	s0,0
 cf0:	01d00493          	li	s1,29
 cf4:	00040513          	mv	a0,s0
 cf8:	00140413          	addi	s0,s0,1
 cfc:	0ff47413          	andi	s0,s0,255
 d00:	f9dff0ef          	jal	ra,c9c <neorv32_rte_exception_uninstall>
 d04:	fe9418e3          	bne	s0,s1,cf4 <neorv32_rte_setup+0x24>
 d08:	00c12083          	lw	ra,12(sp)
 d0c:	00812403          	lw	s0,8(sp)
 d10:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 d14:	00412483          	lw	s1,4(sp)
 d18:	01010113          	addi	sp,sp,16
 d1c:	00008067          	ret

00000d20 <neorv32_rte_check_isa>:
 d20:	30102673          	csrr	a2,misa
 d24:	400005b7          	lui	a1,0x40000
 d28:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffee48>
 d2c:	00b677b3          	and	a5,a2,a1
 d30:	04b78663          	beq	a5,a1,d7c <neorv32_rte_check_isa+0x5c>
 d34:	00050663          	beqz	a0,d40 <neorv32_rte_check_isa+0x20>
 d38:	00100513          	li	a0,1
 d3c:	00008067          	ret
 d40:	fe010113          	addi	sp,sp,-32
 d44:	00c12623          	sw	a2,12(sp)
 d48:	00112e23          	sw	ra,28(sp)
 d4c:	f58ff0ef          	jal	ra,4a4 <neorv32_uart0_available>
 d50:	400007b7          	lui	a5,0x40000
 d54:	00c12603          	lw	a2,12(sp)
 d58:	10078593          	addi	a1,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffee48>
 d5c:	00050863          	beqz	a0,d6c <neorv32_rte_check_isa+0x4c>
 d60:	00001537          	lui	a0,0x1
 d64:	22050513          	addi	a0,a0,544 # 1220 <symbols.0+0x2b0>
 d68:	869ff0ef          	jal	ra,5d0 <neorv32_uart0_printf>
 d6c:	01c12083          	lw	ra,28(sp)
 d70:	00100513          	li	a0,1
 d74:	02010113          	addi	sp,sp,32
 d78:	00008067          	ret
 d7c:	00000513          	li	a0,0
 d80:	00008067          	ret

00000d84 <neorv32_gpio_port_set>:
 d84:	fc000793          	li	a5,-64
 d88:	00a7a423          	sw	a0,8(a5)
 d8c:	00b7a623          	sw	a1,12(a5)
 d90:	00008067          	ret

00000d94 <__mulsi3>:
 d94:	00050613          	mv	a2,a0
 d98:	00000513          	li	a0,0
 d9c:	0015f693          	andi	a3,a1,1
 da0:	00068463          	beqz	a3,da8 <__mulsi3+0x14>
 da4:	00c50533          	add	a0,a0,a2
 da8:	0015d593          	srli	a1,a1,0x1
 dac:	00161613          	slli	a2,a2,0x1
 db0:	fe0596e3          	bnez	a1,d9c <__mulsi3+0x8>
 db4:	00008067          	ret

00000db8 <__muldi3>:
 db8:	00050313          	mv	t1,a0
 dbc:	ff010113          	addi	sp,sp,-16
 dc0:	00060513          	mv	a0,a2
 dc4:	00068893          	mv	a7,a3
 dc8:	00112623          	sw	ra,12(sp)
 dcc:	00030613          	mv	a2,t1
 dd0:	00050693          	mv	a3,a0
 dd4:	00000713          	li	a4,0
 dd8:	00000793          	li	a5,0
 ddc:	00000813          	li	a6,0
 de0:	0016fe13          	andi	t3,a3,1
 de4:	00171e93          	slli	t4,a4,0x1
 de8:	000e0c63          	beqz	t3,e00 <__muldi3+0x48>
 dec:	01060e33          	add	t3,a2,a6
 df0:	010e3833          	sltu	a6,t3,a6
 df4:	00e787b3          	add	a5,a5,a4
 df8:	00f807b3          	add	a5,a6,a5
 dfc:	000e0813          	mv	a6,t3
 e00:	01f65713          	srli	a4,a2,0x1f
 e04:	0016d693          	srli	a3,a3,0x1
 e08:	00eee733          	or	a4,t4,a4
 e0c:	00161613          	slli	a2,a2,0x1
 e10:	fc0698e3          	bnez	a3,de0 <__muldi3+0x28>
 e14:	00058663          	beqz	a1,e20 <__muldi3+0x68>
 e18:	f7dff0ef          	jal	ra,d94 <__mulsi3>
 e1c:	00a787b3          	add	a5,a5,a0
 e20:	00088a63          	beqz	a7,e34 <__muldi3+0x7c>
 e24:	00030513          	mv	a0,t1
 e28:	00088593          	mv	a1,a7
 e2c:	f69ff0ef          	jal	ra,d94 <__mulsi3>
 e30:	00f507b3          	add	a5,a0,a5
 e34:	00c12083          	lw	ra,12(sp)
 e38:	00080513          	mv	a0,a6
 e3c:	00078593          	mv	a1,a5
 e40:	01010113          	addi	sp,sp,16
 e44:	00008067          	ret

00000e48 <__divsi3>:
 e48:	06054063          	bltz	a0,ea8 <__umodsi3+0x10>
 e4c:	0605c663          	bltz	a1,eb8 <__umodsi3+0x20>

00000e50 <__udivsi3>:
 e50:	00058613          	mv	a2,a1
 e54:	00050593          	mv	a1,a0
 e58:	fff00513          	li	a0,-1
 e5c:	02060c63          	beqz	a2,e94 <__udivsi3+0x44>
 e60:	00100693          	li	a3,1
 e64:	00b67a63          	bgeu	a2,a1,e78 <__udivsi3+0x28>
 e68:	00c05863          	blez	a2,e78 <__udivsi3+0x28>
 e6c:	00161613          	slli	a2,a2,0x1
 e70:	00169693          	slli	a3,a3,0x1
 e74:	feb66ae3          	bltu	a2,a1,e68 <__udivsi3+0x18>
 e78:	00000513          	li	a0,0
 e7c:	00c5e663          	bltu	a1,a2,e88 <__udivsi3+0x38>
 e80:	40c585b3          	sub	a1,a1,a2
 e84:	00d56533          	or	a0,a0,a3
 e88:	0016d693          	srli	a3,a3,0x1
 e8c:	00165613          	srli	a2,a2,0x1
 e90:	fe0696e3          	bnez	a3,e7c <__udivsi3+0x2c>
 e94:	00008067          	ret

00000e98 <__umodsi3>:
 e98:	00008293          	mv	t0,ra
 e9c:	fb5ff0ef          	jal	ra,e50 <__udivsi3>
 ea0:	00058513          	mv	a0,a1
 ea4:	00028067          	jr	t0
 ea8:	40a00533          	neg	a0,a0
 eac:	00b04863          	bgtz	a1,ebc <__umodsi3+0x24>
 eb0:	40b005b3          	neg	a1,a1
 eb4:	f9dff06f          	j	e50 <__udivsi3>
 eb8:	40b005b3          	neg	a1,a1
 ebc:	00008293          	mv	t0,ra
 ec0:	f91ff0ef          	jal	ra,e50 <__udivsi3>
 ec4:	40a00533          	neg	a0,a0
 ec8:	00028067          	jr	t0

00000ecc <__modsi3>:
 ecc:	00008293          	mv	t0,ra
 ed0:	0005ca63          	bltz	a1,ee4 <__modsi3+0x18>
 ed4:	00054c63          	bltz	a0,eec <__modsi3+0x20>
 ed8:	f79ff0ef          	jal	ra,e50 <__udivsi3>
 edc:	00058513          	mv	a0,a1
 ee0:	00028067          	jr	t0
 ee4:	40b005b3          	neg	a1,a1
 ee8:	fe0558e3          	bgez	a0,ed8 <__modsi3+0xc>
 eec:	40a00533          	neg	a0,a0
 ef0:	f61ff0ef          	jal	ra,e50 <__udivsi3>
 ef4:	40b00533          	neg	a0,a1
 ef8:	00028067          	jr	t0
