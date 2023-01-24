
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
  bc:	c3c58593          	addi	a1,a1,-964 # cf4 <__crt0_copy_data_src_begin>
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
 180:	588000ef          	jal	ra,708 <neorv32_rte_setup>
 184:	00005537          	lui	a0,0x5
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3e0c>
 194:	610000ef          	jal	ra,7a4 <neorv32_uart0_setup>
 198:	5bc000ef          	jal	ra,754 <neorv32_gptmr_available>
 19c:	04050063          	beqz	a0,1dc <main+0x64>
 1a0:	00000513          	li	a0,0
 1a4:	00000593          	li	a1,0
 1a8:	748000ef          	jal	ra,8f0 <neorv32_gpio_port_set>
 1ac:	1f800593          	li	a1,504
 1b0:	01900513          	li	a0,25
 1b4:	4f8000ef          	jal	ra,6ac <neorv32_rte_exception_install>
 1b8:	3e800613          	li	a2,1000
 1bc:	00100593          	li	a1,1
 1c0:	00200513          	li	a0,2
 1c4:	5a0000ef          	jal	ra,764 <neorv32_gptmr_setup>
 1c8:	01c00513          	li	a0,28
 1cc:	75c000ef          	jal	ra,928 <neorv32_cpu_irq_enable>
 1d0:	30046073          	csrsi	mstatus,8
 1d4:	10500073          	wfi
 1d8:	ffdff06f          	j	1d4 <main+0x5c>
 1dc:	00001537          	lui	a0,0x1
 1e0:	a1850513          	addi	a0,a0,-1512 # a18 <__etext>
 1e4:	684000ef          	jal	ra,868 <neorv32_uart0_print>
 1e8:	00c12083          	lw	ra,12(sp)
 1ec:	00100513          	li	a0,1
 1f0:	01010113          	addi	sp,sp,16
 1f4:	00008067          	ret

000001f8 <gptmr_firq_handler>:
 1f8:	ff010113          	addi	sp,sp,-16
 1fc:	f00007b7          	lui	a5,0xf0000
 200:	00112623          	sw	ra,12(sp)
 204:	fff78793          	addi	a5,a5,-1 # efffffff <__crt0_io_space_begin+0xf00001ff>
 208:	34479073          	csrw	mip,a5
 20c:	02e00513          	li	a0,46
 210:	640000ef          	jal	ra,850 <neorv32_uart0_putc>
 214:	00c12083          	lw	ra,12(sp)
 218:	00000513          	li	a0,0
 21c:	01010113          	addi	sp,sp,16
 220:	6a00006f          	j	8c0 <neorv32_gpio_pin_toggle>

00000224 <__neorv32_rte_core>:
 224:	fc010113          	addi	sp,sp,-64
 228:	02112e23          	sw	ra,60(sp)
 22c:	02512c23          	sw	t0,56(sp)
 230:	02612a23          	sw	t1,52(sp)
 234:	02712823          	sw	t2,48(sp)
 238:	02a12623          	sw	a0,44(sp)
 23c:	02b12423          	sw	a1,40(sp)
 240:	02c12223          	sw	a2,36(sp)
 244:	02d12023          	sw	a3,32(sp)
 248:	00e12e23          	sw	a4,28(sp)
 24c:	00f12c23          	sw	a5,24(sp)
 250:	01012a23          	sw	a6,20(sp)
 254:	01112823          	sw	a7,16(sp)
 258:	01c12623          	sw	t3,12(sp)
 25c:	01d12423          	sw	t4,8(sp)
 260:	01e12223          	sw	t5,4(sp)
 264:	01f12023          	sw	t6,0(sp)
 268:	34102773          	csrr	a4,mepc
 26c:	34071073          	csrw	mscratch,a4
 270:	342027f3          	csrr	a5,mcause
 274:	0407c463          	bltz	a5,2bc <__neorv32_rte_core+0x98>
 278:	00075683          	lhu	a3,0(a4)
 27c:	00300593          	li	a1,3
 280:	0036f693          	andi	a3,a3,3
 284:	00270613          	addi	a2,a4,2
 288:	00b69463          	bne	a3,a1,290 <__neorv32_rte_core+0x6c>
 28c:	00470613          	addi	a2,a4,4
 290:	34161073          	csrw	mepc,a2
 294:	00b00713          	li	a4,11
 298:	00f77663          	bgeu	a4,a5,2a4 <__neorv32_rte_core+0x80>
 29c:	4c800793          	li	a5,1224
 2a0:	0500006f          	j	2f0 <__neorv32_rte_core+0xcc>
 2a4:	00001737          	lui	a4,0x1
 2a8:	00279793          	slli	a5,a5,0x2
 2ac:	a4870713          	addi	a4,a4,-1464 # a48 <__etext+0x30>
 2b0:	00e787b3          	add	a5,a5,a4
 2b4:	0007a783          	lw	a5,0(a5)
 2b8:	00078067          	jr	a5
 2bc:	80000737          	lui	a4,0x80000
 2c0:	ffd74713          	xori	a4,a4,-3
 2c4:	00e787b3          	add	a5,a5,a4
 2c8:	01c00713          	li	a4,28
 2cc:	fcf768e3          	bltu	a4,a5,29c <__neorv32_rte_core+0x78>
 2d0:	00001737          	lui	a4,0x1
 2d4:	00279793          	slli	a5,a5,0x2
 2d8:	a7870713          	addi	a4,a4,-1416 # a78 <__etext+0x60>
 2dc:	00e787b3          	add	a5,a5,a4
 2e0:	0007a783          	lw	a5,0(a5)
 2e4:	00078067          	jr	a5
 2e8:	800007b7          	lui	a5,0x80000
 2ec:	0007a783          	lw	a5,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 2f0:	000780e7          	jalr	a5
 2f4:	03c12083          	lw	ra,60(sp)
 2f8:	03812283          	lw	t0,56(sp)
 2fc:	03412303          	lw	t1,52(sp)
 300:	03012383          	lw	t2,48(sp)
 304:	02c12503          	lw	a0,44(sp)
 308:	02812583          	lw	a1,40(sp)
 30c:	02412603          	lw	a2,36(sp)
 310:	02012683          	lw	a3,32(sp)
 314:	01c12703          	lw	a4,28(sp)
 318:	01812783          	lw	a5,24(sp)
 31c:	01412803          	lw	a6,20(sp)
 320:	01012883          	lw	a7,16(sp)
 324:	00c12e03          	lw	t3,12(sp)
 328:	00812e83          	lw	t4,8(sp)
 32c:	00412f03          	lw	t5,4(sp)
 330:	00012f83          	lw	t6,0(sp)
 334:	04010113          	addi	sp,sp,64
 338:	30200073          	mret
 33c:	800007b7          	lui	a5,0x80000
 340:	0047a783          	lw	a5,4(a5) # 80000004 <__crt0_io_space_begin+0x80000204>
 344:	fadff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 348:	800007b7          	lui	a5,0x80000
 34c:	0087a783          	lw	a5,8(a5) # 80000008 <__crt0_io_space_begin+0x80000208>
 350:	fa1ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 354:	800007b7          	lui	a5,0x80000
 358:	00c7a783          	lw	a5,12(a5) # 8000000c <__crt0_io_space_begin+0x8000020c>
 35c:	f95ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 360:	800007b7          	lui	a5,0x80000
 364:	0107a783          	lw	a5,16(a5) # 80000010 <__crt0_io_space_begin+0x80000210>
 368:	f89ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 36c:	800007b7          	lui	a5,0x80000
 370:	0147a783          	lw	a5,20(a5) # 80000014 <__crt0_io_space_begin+0x80000214>
 374:	f7dff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 378:	800007b7          	lui	a5,0x80000
 37c:	0187a783          	lw	a5,24(a5) # 80000018 <__crt0_io_space_begin+0x80000218>
 380:	f71ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 384:	800007b7          	lui	a5,0x80000
 388:	01c7a783          	lw	a5,28(a5) # 8000001c <__crt0_io_space_begin+0x8000021c>
 38c:	f65ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 390:	800007b7          	lui	a5,0x80000
 394:	0207a783          	lw	a5,32(a5) # 80000020 <__crt0_io_space_begin+0x80000220>
 398:	f59ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 39c:	800007b7          	lui	a5,0x80000
 3a0:	0247a783          	lw	a5,36(a5) # 80000024 <__crt0_io_space_begin+0x80000224>
 3a4:	f4dff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 3a8:	800007b7          	lui	a5,0x80000
 3ac:	0287a783          	lw	a5,40(a5) # 80000028 <__crt0_io_space_begin+0x80000228>
 3b0:	f41ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 3b4:	800007b7          	lui	a5,0x80000
 3b8:	02c7a783          	lw	a5,44(a5) # 8000002c <__crt0_io_space_begin+0x8000022c>
 3bc:	f35ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 3c0:	800007b7          	lui	a5,0x80000
 3c4:	0307a783          	lw	a5,48(a5) # 80000030 <__crt0_io_space_begin+0x80000230>
 3c8:	f29ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 3cc:	800007b7          	lui	a5,0x80000
 3d0:	0347a783          	lw	a5,52(a5) # 80000034 <__crt0_io_space_begin+0x80000234>
 3d4:	f1dff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 3d8:	800007b7          	lui	a5,0x80000
 3dc:	0387a783          	lw	a5,56(a5) # 80000038 <__crt0_io_space_begin+0x80000238>
 3e0:	f11ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 3e4:	800007b7          	lui	a5,0x80000
 3e8:	03c7a783          	lw	a5,60(a5) # 8000003c <__crt0_io_space_begin+0x8000023c>
 3ec:	f05ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 3f0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 3f4:	efdff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 3f8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 3fc:	ef5ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 400:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 404:	eedff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 408:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 40c:	ee5ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 410:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 414:	eddff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 418:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 41c:	ed5ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 420:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 424:	ecdff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 428:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 42c:	ec5ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 430:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 434:	ebdff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 438:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 43c:	eb5ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 440:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 444:	eadff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 448:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 44c:	ea5ff06f          	j	2f0 <__neorv32_rte_core+0xcc>
 450:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 454:	e9dff06f          	j	2f0 <__neorv32_rte_core+0xcc>

00000458 <__neorv32_rte_print_hex_word>:
 458:	fe010113          	addi	sp,sp,-32
 45c:	01212823          	sw	s2,16(sp)
 460:	00050913          	mv	s2,a0
 464:	00001537          	lui	a0,0x1
 468:	00912a23          	sw	s1,20(sp)
 46c:	aec50513          	addi	a0,a0,-1300 # aec <__etext+0xd4>
 470:	000014b7          	lui	s1,0x1
 474:	00812c23          	sw	s0,24(sp)
 478:	01312623          	sw	s3,12(sp)
 47c:	00112e23          	sw	ra,28(sp)
 480:	01c00413          	li	s0,28
 484:	3e4000ef          	jal	ra,868 <neorv32_uart0_print>
 488:	ce448493          	addi	s1,s1,-796 # ce4 <hex_symbols.0>
 48c:	ffc00993          	li	s3,-4
 490:	008957b3          	srl	a5,s2,s0
 494:	00f7f793          	andi	a5,a5,15
 498:	00f487b3          	add	a5,s1,a5
 49c:	0007c503          	lbu	a0,0(a5)
 4a0:	ffc40413          	addi	s0,s0,-4
 4a4:	3ac000ef          	jal	ra,850 <neorv32_uart0_putc>
 4a8:	ff3414e3          	bne	s0,s3,490 <__neorv32_rte_print_hex_word+0x38>
 4ac:	01c12083          	lw	ra,28(sp)
 4b0:	01812403          	lw	s0,24(sp)
 4b4:	01412483          	lw	s1,20(sp)
 4b8:	01012903          	lw	s2,16(sp)
 4bc:	00c12983          	lw	s3,12(sp)
 4c0:	02010113          	addi	sp,sp,32
 4c4:	00008067          	ret

000004c8 <__neorv32_rte_debug_exc_handler>:
 4c8:	ff010113          	addi	sp,sp,-16
 4cc:	00112623          	sw	ra,12(sp)
 4d0:	00812423          	sw	s0,8(sp)
 4d4:	00912223          	sw	s1,4(sp)
 4d8:	2bc000ef          	jal	ra,794 <neorv32_uart0_available>
 4dc:	1a050e63          	beqz	a0,698 <__neorv32_rte_debug_exc_handler+0x1d0>
 4e0:	00001537          	lui	a0,0x1
 4e4:	af050513          	addi	a0,a0,-1296 # af0 <__etext+0xd8>
 4e8:	380000ef          	jal	ra,868 <neorv32_uart0_print>
 4ec:	34202473          	csrr	s0,mcause
 4f0:	00900713          	li	a4,9
 4f4:	00f47793          	andi	a5,s0,15
 4f8:	03078493          	addi	s1,a5,48
 4fc:	00f77463          	bgeu	a4,a5,504 <__neorv32_rte_debug_exc_handler+0x3c>
 500:	05778493          	addi	s1,a5,87
 504:	00b00793          	li	a5,11
 508:	0087ee63          	bltu	a5,s0,524 <__neorv32_rte_debug_exc_handler+0x5c>
 50c:	00001737          	lui	a4,0x1
 510:	00241793          	slli	a5,s0,0x2
 514:	cb470713          	addi	a4,a4,-844 # cb4 <__etext+0x29c>
 518:	00e787b3          	add	a5,a5,a4
 51c:	0007a783          	lw	a5,0(a5)
 520:	00078067          	jr	a5
 524:	800007b7          	lui	a5,0x80000
 528:	00b78713          	addi	a4,a5,11 # 8000000b <__crt0_io_space_begin+0x8000020b>
 52c:	14e40463          	beq	s0,a4,674 <__neorv32_rte_debug_exc_handler+0x1ac>
 530:	02876663          	bltu	a4,s0,55c <__neorv32_rte_debug_exc_handler+0x94>
 534:	00378713          	addi	a4,a5,3
 538:	12e40263          	beq	s0,a4,65c <__neorv32_rte_debug_exc_handler+0x194>
 53c:	00778793          	addi	a5,a5,7
 540:	12f40463          	beq	s0,a5,668 <__neorv32_rte_debug_exc_handler+0x1a0>
 544:	00001537          	lui	a0,0x1
 548:	c5050513          	addi	a0,a0,-944 # c50 <__etext+0x238>
 54c:	31c000ef          	jal	ra,868 <neorv32_uart0_print>
 550:	00040513          	mv	a0,s0
 554:	f05ff0ef          	jal	ra,458 <__neorv32_rte_print_hex_word>
 558:	0280006f          	j	580 <__neorv32_rte_debug_exc_handler+0xb8>
 55c:	ff07c793          	xori	a5,a5,-16
 560:	00f407b3          	add	a5,s0,a5
 564:	00f00713          	li	a4,15
 568:	fcf76ee3          	bltu	a4,a5,544 <__neorv32_rte_debug_exc_handler+0x7c>
 56c:	00001537          	lui	a0,0x1
 570:	c4050513          	addi	a0,a0,-960 # c40 <__etext+0x228>
 574:	2f4000ef          	jal	ra,868 <neorv32_uart0_print>
 578:	00048513          	mv	a0,s1
 57c:	2d4000ef          	jal	ra,850 <neorv32_uart0_putc>
 580:	00001537          	lui	a0,0x1
 584:	c9450513          	addi	a0,a0,-876 # c94 <__etext+0x27c>
 588:	2e0000ef          	jal	ra,868 <neorv32_uart0_print>
 58c:	34002573          	csrr	a0,mscratch
 590:	ec9ff0ef          	jal	ra,458 <__neorv32_rte_print_hex_word>
 594:	00001537          	lui	a0,0x1
 598:	c9c50513          	addi	a0,a0,-868 # c9c <__etext+0x284>
 59c:	2cc000ef          	jal	ra,868 <neorv32_uart0_print>
 5a0:	34302573          	csrr	a0,mtval
 5a4:	eb5ff0ef          	jal	ra,458 <__neorv32_rte_print_hex_word>
 5a8:	00812403          	lw	s0,8(sp)
 5ac:	00c12083          	lw	ra,12(sp)
 5b0:	00412483          	lw	s1,4(sp)
 5b4:	00001537          	lui	a0,0x1
 5b8:	ca850513          	addi	a0,a0,-856 # ca8 <__etext+0x290>
 5bc:	01010113          	addi	sp,sp,16
 5c0:	2a80006f          	j	868 <neorv32_uart0_print>
 5c4:	00001537          	lui	a0,0x1
 5c8:	af850513          	addi	a0,a0,-1288 # af8 <__etext+0xe0>
 5cc:	29c000ef          	jal	ra,868 <neorv32_uart0_print>
 5d0:	fb1ff06f          	j	580 <__neorv32_rte_debug_exc_handler+0xb8>
 5d4:	00001537          	lui	a0,0x1
 5d8:	b1850513          	addi	a0,a0,-1256 # b18 <__etext+0x100>
 5dc:	28c000ef          	jal	ra,868 <neorv32_uart0_print>
 5e0:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 5e4:	0a07d463          	bgez	a5,68c <__neorv32_rte_debug_exc_handler+0x1c4>
 5e8:	0017f793          	andi	a5,a5,1
 5ec:	08078a63          	beqz	a5,680 <__neorv32_rte_debug_exc_handler+0x1b8>
 5f0:	00001537          	lui	a0,0x1
 5f4:	c6850513          	addi	a0,a0,-920 # c68 <__etext+0x250>
 5f8:	fd5ff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 5fc:	00001537          	lui	a0,0x1
 600:	b3450513          	addi	a0,a0,-1228 # b34 <__etext+0x11c>
 604:	fc9ff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 608:	00001537          	lui	a0,0x1
 60c:	b4850513          	addi	a0,a0,-1208 # b48 <__etext+0x130>
 610:	fbdff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 614:	00001537          	lui	a0,0x1
 618:	b5450513          	addi	a0,a0,-1196 # b54 <__etext+0x13c>
 61c:	fb1ff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 620:	00001537          	lui	a0,0x1
 624:	b6c50513          	addi	a0,a0,-1172 # b6c <__etext+0x154>
 628:	fb5ff06f          	j	5dc <__neorv32_rte_debug_exc_handler+0x114>
 62c:	00001537          	lui	a0,0x1
 630:	b8050513          	addi	a0,a0,-1152 # b80 <__etext+0x168>
 634:	f99ff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 638:	00001537          	lui	a0,0x1
 63c:	b9c50513          	addi	a0,a0,-1124 # b9c <__etext+0x184>
 640:	f9dff06f          	j	5dc <__neorv32_rte_debug_exc_handler+0x114>
 644:	00001537          	lui	a0,0x1
 648:	bb050513          	addi	a0,a0,-1104 # bb0 <__etext+0x198>
 64c:	f81ff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 650:	00001537          	lui	a0,0x1
 654:	bd050513          	addi	a0,a0,-1072 # bd0 <__etext+0x1b8>
 658:	f75ff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 65c:	00001537          	lui	a0,0x1
 660:	bf050513          	addi	a0,a0,-1040 # bf0 <__etext+0x1d8>
 664:	f69ff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 668:	00001537          	lui	a0,0x1
 66c:	c0c50513          	addi	a0,a0,-1012 # c0c <__etext+0x1f4>
 670:	f5dff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 674:	00001537          	lui	a0,0x1
 678:	c2450513          	addi	a0,a0,-988 # c24 <__etext+0x20c>
 67c:	f51ff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 680:	00001537          	lui	a0,0x1
 684:	c7850513          	addi	a0,a0,-904 # c78 <__etext+0x260>
 688:	f45ff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 68c:	00001537          	lui	a0,0x1
 690:	c8850513          	addi	a0,a0,-888 # c88 <__etext+0x270>
 694:	f39ff06f          	j	5cc <__neorv32_rte_debug_exc_handler+0x104>
 698:	00c12083          	lw	ra,12(sp)
 69c:	00812403          	lw	s0,8(sp)
 6a0:	00412483          	lw	s1,4(sp)
 6a4:	01010113          	addi	sp,sp,16
 6a8:	00008067          	ret

000006ac <neorv32_rte_exception_install>:
 6ac:	01f00793          	li	a5,31
 6b0:	02a7e063          	bltu	a5,a0,6d0 <neorv32_rte_exception_install+0x24>
 6b4:	800007b7          	lui	a5,0x80000
 6b8:	00251513          	slli	a0,a0,0x2
 6bc:	00078793          	mv	a5,a5
 6c0:	00a787b3          	add	a5,a5,a0
 6c4:	00b7a023          	sw	a1,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 6c8:	00000513          	li	a0,0
 6cc:	00008067          	ret
 6d0:	00100513          	li	a0,1
 6d4:	00008067          	ret

000006d8 <neorv32_rte_exception_uninstall>:
 6d8:	01f00793          	li	a5,31
 6dc:	02a7e263          	bltu	a5,a0,700 <neorv32_rte_exception_uninstall+0x28>
 6e0:	800007b7          	lui	a5,0x80000
 6e4:	00251513          	slli	a0,a0,0x2
 6e8:	00078793          	mv	a5,a5
 6ec:	00a787b3          	add	a5,a5,a0
 6f0:	4c800713          	li	a4,1224
 6f4:	00e7a023          	sw	a4,0(a5) # 80000000 <__crt0_io_space_begin+0x80000200>
 6f8:	00000513          	li	a0,0
 6fc:	00008067          	ret
 700:	00100513          	li	a0,1
 704:	00008067          	ret

00000708 <neorv32_rte_setup>:
 708:	ff010113          	addi	sp,sp,-16
 70c:	00112623          	sw	ra,12(sp)
 710:	00812423          	sw	s0,8(sp)
 714:	00912223          	sw	s1,4(sp)
 718:	22400793          	li	a5,548
 71c:	30579073          	csrw	mtvec,a5
 720:	00000413          	li	s0,0
 724:	01d00493          	li	s1,29
 728:	00040513          	mv	a0,s0
 72c:	00140413          	addi	s0,s0,1
 730:	0ff47413          	zext.b	s0,s0
 734:	fa5ff0ef          	jal	ra,6d8 <neorv32_rte_exception_uninstall>
 738:	fe9418e3          	bne	s0,s1,728 <neorv32_rte_setup+0x20>
 73c:	00c12083          	lw	ra,12(sp)
 740:	00812403          	lw	s0,8(sp)
 744:	f6002e23          	sw	zero,-132(zero) # ffffff7c <__crt0_io_space_begin+0x17c>
 748:	00412483          	lw	s1,4(sp)
 74c:	01010113          	addi	sp,sp,16
 750:	00008067          	ret

00000754 <neorv32_gptmr_available>:
 754:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 758:	01d55513          	srli	a0,a0,0x1d
 75c:	00157513          	andi	a0,a0,1
 760:	00008067          	ret

00000764 <neorv32_gptmr_setup>:
 764:	f6000793          	li	a5,-160
 768:	00757513          	andi	a0,a0,7
 76c:	0015f593          	andi	a1,a1,1
 770:	0007a023          	sw	zero,0(a5)
 774:	00151513          	slli	a0,a0,0x1
 778:	00459593          	slli	a1,a1,0x4
 77c:	00c7a223          	sw	a2,4(a5)
 780:	00b56533          	or	a0,a0,a1
 784:	0007a423          	sw	zero,8(a5)
 788:	00156513          	ori	a0,a0,1
 78c:	00a7a023          	sw	a0,0(a5)
 790:	00008067          	ret

00000794 <neorv32_uart0_available>:
 794:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__crt0_io_space_begin+0x1e8>
 798:	01255513          	srli	a0,a0,0x12
 79c:	00157513          	andi	a0,a0,1
 7a0:	00008067          	ret

000007a4 <neorv32_uart0_setup>:
 7a4:	ff010113          	addi	sp,sp,-16
 7a8:	00812423          	sw	s0,8(sp)
 7ac:	00912223          	sw	s1,4(sp)
 7b0:	00112623          	sw	ra,12(sp)
 7b4:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 7b8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
 7bc:	00058413          	mv	s0,a1
 7c0:	00151593          	slli	a1,a0,0x1
 7c4:	00078513          	mv	a0,a5
 7c8:	00060493          	mv	s1,a2
 7cc:	1a0000ef          	jal	ra,96c <__hidden___udivsi3>
 7d0:	01051513          	slli	a0,a0,0x10
 7d4:	000017b7          	lui	a5,0x1
 7d8:	01055513          	srli	a0,a0,0x10
 7dc:	00000713          	li	a4,0
 7e0:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x30a>
 7e4:	04a7e463          	bltu	a5,a0,82c <__heap_size+0x2c>
 7e8:	0034f493          	andi	s1,s1,3
 7ec:	01449493          	slli	s1,s1,0x14
 7f0:	00347413          	andi	s0,s0,3
 7f4:	fff50793          	addi	a5,a0,-1
 7f8:	0097e7b3          	or	a5,a5,s1
 7fc:	01641413          	slli	s0,s0,0x16
 800:	0087e7b3          	or	a5,a5,s0
 804:	01871713          	slli	a4,a4,0x18
 808:	00c12083          	lw	ra,12(sp)
 80c:	00812403          	lw	s0,8(sp)
 810:	00e7e7b3          	or	a5,a5,a4
 814:	10000737          	lui	a4,0x10000
 818:	00e7e7b3          	or	a5,a5,a4
 81c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 820:	00412483          	lw	s1,4(sp)
 824:	01010113          	addi	sp,sp,16
 828:	00008067          	ret
 82c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff30a>
 830:	0fd6f693          	andi	a3,a3,253
 834:	00069a63          	bnez	a3,848 <__heap_size+0x48>
 838:	00355513          	srli	a0,a0,0x3
 83c:	00170713          	addi	a4,a4,1
 840:	0ff77713          	zext.b	a4,a4
 844:	fa1ff06f          	j	7e4 <neorv32_uart0_setup+0x40>
 848:	00155513          	srli	a0,a0,0x1
 84c:	ff1ff06f          	j	83c <__heap_size+0x3c>

00000850 <neorv32_uart0_putc>:
 850:	00040737          	lui	a4,0x40
 854:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
 858:	00e7f7b3          	and	a5,a5,a4
 85c:	fe079ce3          	bnez	a5,854 <neorv32_uart0_putc+0x4>
 860:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
 864:	00008067          	ret

00000868 <neorv32_uart0_print>:
 868:	ff010113          	addi	sp,sp,-16
 86c:	00812423          	sw	s0,8(sp)
 870:	01212023          	sw	s2,0(sp)
 874:	00112623          	sw	ra,12(sp)
 878:	00912223          	sw	s1,4(sp)
 87c:	00050413          	mv	s0,a0
 880:	00a00913          	li	s2,10
 884:	00044483          	lbu	s1,0(s0)
 888:	00140413          	addi	s0,s0,1
 88c:	00049e63          	bnez	s1,8a8 <neorv32_uart0_print+0x40>
 890:	00c12083          	lw	ra,12(sp)
 894:	00812403          	lw	s0,8(sp)
 898:	00412483          	lw	s1,4(sp)
 89c:	00012903          	lw	s2,0(sp)
 8a0:	01010113          	addi	sp,sp,16
 8a4:	00008067          	ret
 8a8:	01249663          	bne	s1,s2,8b4 <neorv32_uart0_print+0x4c>
 8ac:	00d00513          	li	a0,13
 8b0:	fa1ff0ef          	jal	ra,850 <neorv32_uart0_putc>
 8b4:	00048513          	mv	a0,s1
 8b8:	f99ff0ef          	jal	ra,850 <neorv32_uart0_putc>
 8bc:	fc9ff06f          	j	884 <neorv32_uart0_print+0x1c>

000008c0 <neorv32_gpio_pin_toggle>:
 8c0:	00100793          	li	a5,1
 8c4:	01f00713          	li	a4,31
 8c8:	00a797b3          	sll	a5,a5,a0
 8cc:	00a74a63          	blt	a4,a0,8e0 <neorv32_gpio_pin_toggle+0x20>
 8d0:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__crt0_io_space_begin+0x1c8>
 8d4:	00f747b3          	xor	a5,a4,a5
 8d8:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__crt0_io_space_begin+0x1c8>
 8dc:	00008067          	ret
 8e0:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__crt0_io_space_begin+0x1cc>
 8e4:	00f747b3          	xor	a5,a4,a5
 8e8:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__crt0_io_space_begin+0x1cc>
 8ec:	00008067          	ret

000008f0 <neorv32_gpio_port_set>:
 8f0:	fc000793          	li	a5,-64
 8f4:	00a7a423          	sw	a0,8(a5)
 8f8:	00b7a623          	sw	a1,12(a5)
 8fc:	00008067          	ret

00000900 <__neorv32_cpu_irq_id_check>:
 900:	01f00793          	li	a5,31
 904:	00a7ee63          	bltu	a5,a0,920 <__neorv32_cpu_irq_id_check+0x20>
 908:	ffff17b7          	lui	a5,0xffff1
 90c:	88878793          	addi	a5,a5,-1912 # ffff0888 <__crt0_io_space_begin+0xffff0a88>
 910:	00a7d533          	srl	a0,a5,a0
 914:	00157513          	andi	a0,a0,1
 918:	00154513          	xori	a0,a0,1
 91c:	00008067          	ret
 920:	00100513          	li	a0,1
 924:	00008067          	ret

00000928 <neorv32_cpu_irq_enable>:
 928:	ff010113          	addi	sp,sp,-16
 92c:	00812423          	sw	s0,8(sp)
 930:	00112623          	sw	ra,12(sp)
 934:	00050413          	mv	s0,a0
 938:	fc9ff0ef          	jal	ra,900 <__neorv32_cpu_irq_id_check>
 93c:	02051063          	bnez	a0,95c <neorv32_cpu_irq_enable+0x34>
 940:	00100793          	li	a5,1
 944:	008797b3          	sll	a5,a5,s0
 948:	3047a073          	csrs	mie,a5
 94c:	00c12083          	lw	ra,12(sp)
 950:	00812403          	lw	s0,8(sp)
 954:	01010113          	addi	sp,sp,16
 958:	00008067          	ret
 95c:	00100513          	li	a0,1
 960:	fedff06f          	j	94c <neorv32_cpu_irq_enable+0x24>

00000964 <__divsi3>:
 964:	06054063          	bltz	a0,9c4 <__umodsi3+0x10>
 968:	0605c663          	bltz	a1,9d4 <__umodsi3+0x20>

0000096c <__hidden___udivsi3>:
 96c:	00058613          	mv	a2,a1
 970:	00050593          	mv	a1,a0
 974:	fff00513          	li	a0,-1
 978:	02060c63          	beqz	a2,9b0 <__hidden___udivsi3+0x44>
 97c:	00100693          	li	a3,1
 980:	00b67a63          	bgeu	a2,a1,994 <__hidden___udivsi3+0x28>
 984:	00c05863          	blez	a2,994 <__hidden___udivsi3+0x28>
 988:	00161613          	slli	a2,a2,0x1
 98c:	00169693          	slli	a3,a3,0x1
 990:	feb66ae3          	bltu	a2,a1,984 <__hidden___udivsi3+0x18>
 994:	00000513          	li	a0,0
 998:	00c5e663          	bltu	a1,a2,9a4 <__hidden___udivsi3+0x38>
 99c:	40c585b3          	sub	a1,a1,a2
 9a0:	00d56533          	or	a0,a0,a3
 9a4:	0016d693          	srli	a3,a3,0x1
 9a8:	00165613          	srli	a2,a2,0x1
 9ac:	fe0696e3          	bnez	a3,998 <__hidden___udivsi3+0x2c>
 9b0:	00008067          	ret

000009b4 <__umodsi3>:
 9b4:	00008293          	mv	t0,ra
 9b8:	fb5ff0ef          	jal	ra,96c <__hidden___udivsi3>
 9bc:	00058513          	mv	a0,a1
 9c0:	00028067          	jr	t0
 9c4:	40a00533          	neg	a0,a0
 9c8:	00b04863          	bgtz	a1,9d8 <__umodsi3+0x24>
 9cc:	40b005b3          	neg	a1,a1
 9d0:	f9dff06f          	j	96c <__hidden___udivsi3>
 9d4:	40b005b3          	neg	a1,a1
 9d8:	00008293          	mv	t0,ra
 9dc:	f91ff0ef          	jal	ra,96c <__hidden___udivsi3>
 9e0:	40a00533          	neg	a0,a0
 9e4:	00028067          	jr	t0

000009e8 <__modsi3>:
 9e8:	00008293          	mv	t0,ra
 9ec:	0005ca63          	bltz	a1,a00 <__modsi3+0x18>
 9f0:	00054c63          	bltz	a0,a08 <__modsi3+0x20>
 9f4:	f79ff0ef          	jal	ra,96c <__hidden___udivsi3>
 9f8:	00058513          	mv	a0,a1
 9fc:	00028067          	jr	t0
 a00:	40b005b3          	neg	a1,a1
 a04:	fe0558e3          	bgez	a0,9f4 <__modsi3+0xc>
 a08:	40a00533          	neg	a0,a0
 a0c:	f61ff0ef          	jal	ra,96c <__hidden___udivsi3>
 a10:	40b00533          	neg	a0,a1
 a14:	00028067          	jr	t0
