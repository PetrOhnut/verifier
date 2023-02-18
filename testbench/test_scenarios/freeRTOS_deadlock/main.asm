
main.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00000037          	lui	zero,0x0

00000004 <__crt0_pointer_init>:
       4:	80002117          	auipc	sp,0x80002
       8:	ff810113          	addi	sp,sp,-8 # 80001ffc <__crt0_io_space_begin+0x800021fc>
       c:	80000197          	auipc	gp,0x80000
      10:	7fc18193          	addi	gp,gp,2044 # 80000808 <__crt0_io_space_begin+0x80000a08>

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
      b8:	00002597          	auipc	a1,0x2
      bc:	2f058593          	addi	a1,a1,752 # 23a8 <__crt0_copy_data_src_begin>
      c0:	80000617          	auipc	a2,0x80000
      c4:	f4060613          	addi	a2,a2,-192 # 80000000 <__crt0_io_space_begin+0x80000200>
      c8:	80000697          	auipc	a3,0x80000
      cc:	f4068693          	addi	a3,a3,-192 # 80000008 <__crt0_io_space_begin+0x80000208>

000000d0 <__crt0_copy_data_loop>:
      d0:	00d65c63          	bge	a2,a3,e8 <__crt0_clear_bss>
      d4:	00058703          	lb	a4,0(a1)
      d8:	00e60023          	sb	a4,0(a2)
      dc:	00158593          	addi	a1,a1,1
      e0:	00160613          	addi	a2,a2,1
      e4:	fedff06f          	j	d0 <__crt0_copy_data_loop>

000000e8 <__crt0_clear_bss>:
      e8:	80000717          	auipc	a4,0x80000
      ec:	f2070713          	addi	a4,a4,-224 # 80000008 <__crt0_io_space_begin+0x80000208>
      f0:	d2418793          	addi	a5,gp,-732 # 8000052c <__BSS_END__>

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
     188:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x2758>
     18c:	00112623          	sw	ra,12(sp)
     190:	505010ef          	jal	ra,1e94 <neorv32_uart0_setup>
     194:	00100513          	li	a0,1
     198:	125000ef          	jal	ra,abc <xQueueCreateMutex>
     19c:	800007b7          	lui	a5,0x80000
     1a0:	00a7a623          	sw	a0,12(a5) # 8000000c <__crt0_io_space_begin+0x8000020c>
     1a4:	00100513          	li	a0,1
     1a8:	115000ef          	jal	ra,abc <xQueueCreateMutex>
     1ac:	800007b7          	lui	a5,0x80000
     1b0:	00a7a423          	sw	a0,8(a5) # 80000008 <__crt0_io_space_begin+0x80000208>
     1b4:	000025b7          	lui	a1,0x2
     1b8:	00000793          	li	a5,0
     1bc:	00100713          	li	a4,1
     1c0:	00000693          	li	a3,0
     1c4:	06400613          	li	a2,100
     1c8:	32c58593          	addi	a1,a1,812 # 232c <__etext+0x24>
     1cc:	24400513          	li	a0,580
     1d0:	5a1000ef          	jal	ra,f70 <xTaskCreate>
     1d4:	00c12083          	lw	ra,12(sp)
     1d8:	00000513          	li	a0,0
     1dc:	01010113          	addi	sp,sp,16
     1e0:	00008067          	ret

000001e4 <TestTask2>:
     1e4:	ff010113          	addi	sp,sp,-16
     1e8:	00812423          	sw	s0,8(sp)
     1ec:	00912223          	sw	s1,4(sp)
     1f0:	01212023          	sw	s2,0(sp)
     1f4:	00112623          	sw	ra,12(sp)
     1f8:	80000437          	lui	s0,0x80000
     1fc:	00002937          	lui	s2,0x2
     200:	800004b7          	lui	s1,0x80000
     204:	00842503          	lw	a0,8(s0) # 80000008 <__crt0_io_space_begin+0x80000208>
     208:	fff00593          	li	a1,-1
     20c:	105000ef          	jal	ra,b10 <xQueueSemaphoreTake>
     210:	30890513          	addi	a0,s2,776 # 2308 <__etext>
     214:	545010ef          	jal	ra,1f58 <neorv32_uart0_print>
     218:	00c4a503          	lw	a0,12(s1) # 8000000c <__crt0_io_space_begin+0x8000020c>
     21c:	fff00593          	li	a1,-1
     220:	0f1000ef          	jal	ra,b10 <xQueueSemaphoreTake>
     224:	00842503          	lw	a0,8(s0)
     228:	00000693          	li	a3,0
     22c:	00000613          	li	a2,0
     230:	00000593          	li	a1,0
     234:	660000ef          	jal	ra,894 <xQueueGenericSend>
     238:	00a00513          	li	a0,10
     23c:	380010ef          	jal	ra,15bc <vTaskDelay>
     240:	fc5ff06f          	j	204 <TestTask2+0x20>

00000244 <TestTask1>:
     244:	fe010113          	addi	sp,sp,-32
     248:	00812c23          	sw	s0,24(sp)
     24c:	00912a23          	sw	s1,20(sp)
     250:	01212823          	sw	s2,16(sp)
     254:	01312623          	sw	s3,12(sp)
     258:	01412423          	sw	s4,8(sp)
     25c:	00112e23          	sw	ra,28(sp)
     260:	80000437          	lui	s0,0x80000
     264:	00002a37          	lui	s4,0x2
     268:	000029b7          	lui	s3,0x2
     26c:	800004b7          	lui	s1,0x80000
     270:	00c42503          	lw	a0,12(s0) # 8000000c <__crt0_io_space_begin+0x8000020c>
     274:	fff00593          	li	a1,-1
     278:	099000ef          	jal	ra,b10 <xQueueSemaphoreTake>
     27c:	314a0513          	addi	a0,s4,788 # 2314 <__etext+0xc>
     280:	4d9010ef          	jal	ra,1f58 <neorv32_uart0_print>
     284:	00000793          	li	a5,0
     288:	00200713          	li	a4,2
     28c:	00000693          	li	a3,0
     290:	06400613          	li	a2,100
     294:	32098593          	addi	a1,s3,800 # 2320 <__etext+0x18>
     298:	1e400513          	li	a0,484
     29c:	4d5000ef          	jal	ra,f70 <xTaskCreate>
     2a0:	0084a503          	lw	a0,8(s1) # 80000008 <__crt0_io_space_begin+0x80000208>
     2a4:	fff00593          	li	a1,-1
     2a8:	069000ef          	jal	ra,b10 <xQueueSemaphoreTake>
     2ac:	00c42503          	lw	a0,12(s0)
     2b0:	00000693          	li	a3,0
     2b4:	00000613          	li	a2,0
     2b8:	00000593          	li	a1,0
     2bc:	5d8000ef          	jal	ra,894 <xQueueGenericSend>
     2c0:	00a00513          	li	a0,10
     2c4:	2f8010ef          	jal	ra,15bc <vTaskDelay>
     2c8:	fa9ff06f          	j	270 <TestTask1+0x2c>

000002cc <vApplicationTickHook>:
     2cc:	00008067          	ret

000002d0 <vApplicationMallocFailedHook>:
     2d0:	ff010113          	addi	sp,sp,-16
     2d4:	00112623          	sw	ra,12(sp)
     2d8:	30047073          	csrci	mstatus,8
     2dc:	00002537          	lui	a0,0x2
     2e0:	33850513          	addi	a0,a0,824 # 2338 <__etext+0x30>
     2e4:	475010ef          	jal	ra,1f58 <neorv32_uart0_print>
     2e8:	00100073          	ebreak
     2ec:	0000006f          	j	2ec <vApplicationMallocFailedHook+0x1c>

000002f0 <pxPortInitialiseStack>:
     2f0:	300022f3          	csrr	t0,mstatus
     2f4:	ff72f293          	andi	t0,t0,-9
     2f8:	18800313          	li	t1,392
     2fc:	00431313          	slli	t1,t1,0x4
     300:	0062e2b3          	or	t0,t0,t1
     304:	ffc50513          	addi	a0,a0,-4
     308:	00552023          	sw	t0,0(a0)
     30c:	ffc50513          	addi	a0,a0,-4
     310:	00052023          	sw	zero,0(a0)
     314:	fa850513          	addi	a0,a0,-88
     318:	00c52023          	sw	a2,0(a0)
     31c:	fe850513          	addi	a0,a0,-24
     320:	80000297          	auipc	t0,0x80000
     324:	cf02a283          	lw	t0,-784(t0) # 80000010 <__crt0_io_space_begin+0x80000210>
     328:	00552023          	sw	t0,0(a0)
     32c:	00000293          	li	t0,0

00000330 <chip_specific_stack_frame>:
     330:	00028a63          	beqz	t0,344 <chip_specific_stack_frame+0x14>
     334:	ffc50513          	addi	a0,a0,-4
     338:	00052023          	sw	zero,0(a0)
     33c:	fff28293          	addi	t0,t0,-1
     340:	ff1ff06f          	j	330 <chip_specific_stack_frame>
     344:	ffc50513          	addi	a0,a0,-4
     348:	00b52023          	sw	a1,0(a0)
     34c:	00008067          	ret

00000350 <xPortStartFirstTask>:
     350:	83c1a103          	lw	sp,-1988(gp) # 80000044 <pxCurrentTCB>
     354:	00012103          	lw	sp,0(sp)
     358:	00012083          	lw	ra,0(sp)
     35c:	01012383          	lw	t2,16(sp)
     360:	01412403          	lw	s0,20(sp)
     364:	01812483          	lw	s1,24(sp)
     368:	01c12503          	lw	a0,28(sp)
     36c:	02012583          	lw	a1,32(sp)
     370:	02412603          	lw	a2,36(sp)
     374:	02812683          	lw	a3,40(sp)
     378:	02c12703          	lw	a4,44(sp)
     37c:	03012783          	lw	a5,48(sp)
     380:	03412803          	lw	a6,52(sp)
     384:	03812883          	lw	a7,56(sp)
     388:	03c12903          	lw	s2,60(sp)
     38c:	04012983          	lw	s3,64(sp)
     390:	04412a03          	lw	s4,68(sp)
     394:	04812a83          	lw	s5,72(sp)
     398:	04c12b03          	lw	s6,76(sp)
     39c:	05012b83          	lw	s7,80(sp)
     3a0:	05412c03          	lw	s8,84(sp)
     3a4:	05812c83          	lw	s9,88(sp)
     3a8:	05c12d03          	lw	s10,92(sp)
     3ac:	06012d83          	lw	s11,96(sp)
     3b0:	06412e03          	lw	t3,100(sp)
     3b4:	06812e83          	lw	t4,104(sp)
     3b8:	06c12f03          	lw	t5,108(sp)
     3bc:	07012f83          	lw	t6,112(sp)
     3c0:	07412283          	lw	t0,116(sp)
     3c4:	80000317          	auipc	t1,0x80000
     3c8:	c3c32303          	lw	t1,-964(t1) # 80000000 <__crt0_io_space_begin+0x80000200>
     3cc:	00532023          	sw	t0,0(t1)
     3d0:	07812283          	lw	t0,120(sp)
     3d4:	00828293          	addi	t0,t0,8
     3d8:	30029073          	csrw	mstatus,t0
     3dc:	00812283          	lw	t0,8(sp)
     3e0:	00c12303          	lw	t1,12(sp)
     3e4:	07c10113          	addi	sp,sp,124
     3e8:	00008067          	ret

000003ec <freertos_risc_v_application_exception_handler>:
     3ec:	342022f3          	csrr	t0,mcause
     3f0:	34102373          	csrr	t1,mepc
     3f4:	300023f3          	csrr	t2,mstatus
     3f8:	0000006f          	j	3f8 <freertos_risc_v_application_exception_handler+0xc>

000003fc <freertos_risc_v_application_interrupt_handler>:
     3fc:	342022f3          	csrr	t0,mcause
     400:	34102373          	csrr	t1,mepc
     404:	300023f3          	csrr	t2,mstatus
     408:	0000006f          	j	408 <freertos_risc_v_application_interrupt_handler+0xc>

0000040c <prvIsQueueEmpty>:
     40c:	30047073          	csrci	mstatus,8
     410:	800007b7          	lui	a5,0x80000
     414:	03852503          	lw	a0,56(a0)
     418:	0047a783          	lw	a5,4(a5) # 80000004 <__crt0_io_space_begin+0x80000204>
     41c:	00153513          	seqz	a0,a0
     420:	00079463          	bnez	a5,428 <prvIsQueueEmpty+0x1c>
     424:	30046073          	csrsi	mstatus,8
     428:	00008067          	ret

0000042c <prvCopyDataToQueue>:
     42c:	ff010113          	addi	sp,sp,-16
     430:	01212023          	sw	s2,0(sp)
     434:	00060913          	mv	s2,a2
     438:	04052603          	lw	a2,64(a0)
     43c:	00912223          	sw	s1,4(sp)
     440:	03852483          	lw	s1,56(a0)
     444:	00812423          	sw	s0,8(sp)
     448:	00112623          	sw	ra,12(sp)
     44c:	00050413          	mv	s0,a0
     450:	02061c63          	bnez	a2,488 <prvCopyDataToQueue+0x5c>
     454:	00052783          	lw	a5,0(a0)
     458:	04079a63          	bnez	a5,4ac <prvCopyDataToQueue+0x80>
     45c:	00852503          	lw	a0,8(a0)
     460:	550010ef          	jal	ra,19b0 <xTaskPriorityDisinherit>
     464:	00042423          	sw	zero,8(s0)
     468:	00148493          	addi	s1,s1,1
     46c:	02942c23          	sw	s1,56(s0)
     470:	00c12083          	lw	ra,12(sp)
     474:	00812403          	lw	s0,8(sp)
     478:	00412483          	lw	s1,4(sp)
     47c:	00012903          	lw	s2,0(sp)
     480:	01010113          	addi	sp,sp,16
     484:	00008067          	ret
     488:	02091c63          	bnez	s2,4c0 <prvCopyDataToQueue+0x94>
     48c:	00452503          	lw	a0,4(a0)
     490:	3f9010ef          	jal	ra,2088 <memcpy>
     494:	00442783          	lw	a5,4(s0)
     498:	04042703          	lw	a4,64(s0)
     49c:	00e787b3          	add	a5,a5,a4
     4a0:	00842703          	lw	a4,8(s0)
     4a4:	00f42223          	sw	a5,4(s0)
     4a8:	00e7f663          	bgeu	a5,a4,4b4 <prvCopyDataToQueue+0x88>
     4ac:	00000513          	li	a0,0
     4b0:	fb9ff06f          	j	468 <prvCopyDataToQueue+0x3c>
     4b4:	00042783          	lw	a5,0(s0)
     4b8:	00f42223          	sw	a5,4(s0)
     4bc:	ff1ff06f          	j	4ac <prvCopyDataToQueue+0x80>
     4c0:	00c52503          	lw	a0,12(a0)
     4c4:	3c5010ef          	jal	ra,2088 <memcpy>
     4c8:	04042703          	lw	a4,64(s0)
     4cc:	00c42783          	lw	a5,12(s0)
     4d0:	40e006b3          	neg	a3,a4
     4d4:	40e787b3          	sub	a5,a5,a4
     4d8:	00042703          	lw	a4,0(s0)
     4dc:	00f42623          	sw	a5,12(s0)
     4e0:	00e7f863          	bgeu	a5,a4,4f0 <prvCopyDataToQueue+0xc4>
     4e4:	00842783          	lw	a5,8(s0)
     4e8:	00d787b3          	add	a5,a5,a3
     4ec:	00f42623          	sw	a5,12(s0)
     4f0:	00200793          	li	a5,2
     4f4:	00000513          	li	a0,0
     4f8:	f6f918e3          	bne	s2,a5,468 <prvCopyDataToQueue+0x3c>
     4fc:	f60486e3          	beqz	s1,468 <prvCopyDataToQueue+0x3c>
     500:	fff48493          	addi	s1,s1,-1
     504:	f65ff06f          	j	468 <prvCopyDataToQueue+0x3c>

00000508 <prvUnlockQueue>:
     508:	fe010113          	addi	sp,sp,-32
     50c:	00812c23          	sw	s0,24(sp)
     510:	00112e23          	sw	ra,28(sp)
     514:	00912a23          	sw	s1,20(sp)
     518:	01212823          	sw	s2,16(sp)
     51c:	01312623          	sw	s3,12(sp)
     520:	00050413          	mv	s0,a0
     524:	30047073          	csrci	mstatus,8
     528:	800004b7          	lui	s1,0x80000
     52c:	0044a783          	lw	a5,4(s1) # 80000004 <__crt0_io_space_begin+0x80000204>
     530:	04554903          	lbu	s2,69(a0)
     534:	02450993          	addi	s3,a0,36
     538:	00178793          	addi	a5,a5,1
     53c:	01891913          	slli	s2,s2,0x18
     540:	00f4a223          	sw	a5,4(s1)
     544:	41895913          	srai	s2,s2,0x18
     548:	07204e63          	bgtz	s2,5c4 <prvUnlockQueue+0xbc>
     54c:	fff00793          	li	a5,-1
     550:	04f402a3          	sb	a5,69(s0)
     554:	0044a783          	lw	a5,4(s1)
     558:	fff78793          	addi	a5,a5,-1
     55c:	00f4a223          	sw	a5,4(s1)
     560:	00079463          	bnez	a5,568 <prvUnlockQueue+0x60>
     564:	30046073          	csrsi	mstatus,8
     568:	30047073          	csrci	mstatus,8
     56c:	0044a783          	lw	a5,4(s1)
     570:	04444903          	lbu	s2,68(s0)
     574:	01040993          	addi	s3,s0,16
     578:	00178793          	addi	a5,a5,1
     57c:	01891913          	slli	s2,s2,0x18
     580:	00f4a223          	sw	a5,4(s1)
     584:	41895913          	srai	s2,s2,0x18
     588:	07204263          	bgtz	s2,5ec <prvUnlockQueue+0xe4>
     58c:	fff00793          	li	a5,-1
     590:	04f40223          	sb	a5,68(s0)
     594:	0044a783          	lw	a5,4(s1)
     598:	fff78793          	addi	a5,a5,-1
     59c:	00f4a223          	sw	a5,4(s1)
     5a0:	00079463          	bnez	a5,5a8 <prvUnlockQueue+0xa0>
     5a4:	30046073          	csrsi	mstatus,8
     5a8:	01c12083          	lw	ra,28(sp)
     5ac:	01812403          	lw	s0,24(sp)
     5b0:	01412483          	lw	s1,20(sp)
     5b4:	01012903          	lw	s2,16(sp)
     5b8:	00c12983          	lw	s3,12(sp)
     5bc:	02010113          	addi	sp,sp,32
     5c0:	00008067          	ret
     5c4:	02442783          	lw	a5,36(s0)
     5c8:	f80782e3          	beqz	a5,54c <prvUnlockQueue+0x44>
     5cc:	00098513          	mv	a0,s3
     5d0:	084010ef          	jal	ra,1654 <xTaskRemoveFromEventList>
     5d4:	00050463          	beqz	a0,5dc <prvUnlockQueue+0xd4>
     5d8:	274010ef          	jal	ra,184c <vTaskMissedYield>
     5dc:	fff90913          	addi	s2,s2,-1
     5e0:	01891913          	slli	s2,s2,0x18
     5e4:	41895913          	srai	s2,s2,0x18
     5e8:	f61ff06f          	j	548 <prvUnlockQueue+0x40>
     5ec:	01042783          	lw	a5,16(s0)
     5f0:	f8078ee3          	beqz	a5,58c <prvUnlockQueue+0x84>
     5f4:	00098513          	mv	a0,s3
     5f8:	05c010ef          	jal	ra,1654 <xTaskRemoveFromEventList>
     5fc:	00050463          	beqz	a0,604 <prvUnlockQueue+0xfc>
     600:	24c010ef          	jal	ra,184c <vTaskMissedYield>
     604:	fff90913          	addi	s2,s2,-1
     608:	01891913          	slli	s2,s2,0x18
     60c:	41895913          	srai	s2,s2,0x18
     610:	f79ff06f          	j	588 <prvUnlockQueue+0x80>

00000614 <xQueueGenericReset>:
     614:	00051863          	bnez	a0,624 <xQueueGenericReset+0x10>
     618:	30047073          	csrci	mstatus,8
     61c:	00100073          	ebreak
     620:	0000006f          	j	620 <xQueueGenericReset+0xc>
     624:	fe010113          	addi	sp,sp,-32
     628:	00812c23          	sw	s0,24(sp)
     62c:	00050413          	mv	s0,a0
     630:	03c52503          	lw	a0,60(a0)
     634:	00112e23          	sw	ra,28(sp)
     638:	00912a23          	sw	s1,20(sp)
     63c:	01212823          	sw	s2,16(sp)
     640:	01312623          	sw	s3,12(sp)
     644:	01412423          	sw	s4,8(sp)
     648:	12050263          	beqz	a0,76c <xQueueGenericReset+0x158>
     64c:	00058913          	mv	s2,a1
     650:	04042583          	lw	a1,64(s0)
     654:	01055993          	srli	s3,a0,0x10
     658:	0105d693          	srli	a3,a1,0x10
     65c:	0e099863          	bnez	s3,74c <xQueueGenericReset+0x138>
     660:	04068463          	beqz	a3,6a8 <xQueueGenericReset+0x94>
     664:	00068993          	mv	s3,a3
     668:	00050a13          	mv	s4,a0
     66c:	01059593          	slli	a1,a1,0x10
     670:	01051513          	slli	a0,a0,0x10
     674:	0105d593          	srli	a1,a1,0x10
     678:	01055513          	srli	a0,a0,0x10
     67c:	135010ef          	jal	ra,1fb0 <__mulsi3>
     680:	00050493          	mv	s1,a0
     684:	01099593          	slli	a1,s3,0x10
     688:	010a1513          	slli	a0,s4,0x10
     68c:	0105d593          	srli	a1,a1,0x10
     690:	01055513          	srli	a0,a0,0x10
     694:	11d010ef          	jal	ra,1fb0 <__mulsi3>
     698:	0104d493          	srli	s1,s1,0x10
     69c:	00950533          	add	a0,a0,s1
     6a0:	01055513          	srli	a0,a0,0x10
     6a4:	0c051463          	bnez	a0,76c <xQueueGenericReset+0x158>
     6a8:	30047073          	csrci	mstatus,8
     6ac:	800009b7          	lui	s3,0x80000
     6b0:	0049a783          	lw	a5,4(s3) # 80000004 <__crt0_io_space_begin+0x80000204>
     6b4:	04042a03          	lw	s4,64(s0)
     6b8:	03c42583          	lw	a1,60(s0)
     6bc:	00042483          	lw	s1,0(s0)
     6c0:	00178793          	addi	a5,a5,1
     6c4:	000a0513          	mv	a0,s4
     6c8:	00f9a223          	sw	a5,4(s3)
     6cc:	0e5010ef          	jal	ra,1fb0 <__mulsi3>
     6d0:	00a487b3          	add	a5,s1,a0
     6d4:	02042c23          	sw	zero,56(s0)
     6d8:	00f42423          	sw	a5,8(s0)
     6dc:	41450533          	sub	a0,a0,s4
     6e0:	fff00793          	li	a5,-1
     6e4:	00942223          	sw	s1,4(s0)
     6e8:	04f40223          	sb	a5,68(s0)
     6ec:	00a484b3          	add	s1,s1,a0
     6f0:	00942623          	sw	s1,12(s0)
     6f4:	04f402a3          	sb	a5,69(s0)
     6f8:	06091063          	bnez	s2,758 <xQueueGenericReset+0x144>
     6fc:	01042783          	lw	a5,16(s0)
     700:	00078a63          	beqz	a5,714 <xQueueGenericReset+0x100>
     704:	01040513          	addi	a0,s0,16
     708:	74d000ef          	jal	ra,1654 <xTaskRemoveFromEventList>
     70c:	00050463          	beqz	a0,714 <xQueueGenericReset+0x100>
     710:	00000073          	ecall
     714:	0049a783          	lw	a5,4(s3)
     718:	fff78793          	addi	a5,a5,-1
     71c:	00f9a223          	sw	a5,4(s3)
     720:	00079463          	bnez	a5,728 <xQueueGenericReset+0x114>
     724:	30046073          	csrsi	mstatus,8
     728:	01c12083          	lw	ra,28(sp)
     72c:	01812403          	lw	s0,24(sp)
     730:	01412483          	lw	s1,20(sp)
     734:	01012903          	lw	s2,16(sp)
     738:	00c12983          	lw	s3,12(sp)
     73c:	00812a03          	lw	s4,8(sp)
     740:	00100513          	li	a0,1
     744:	02010113          	addi	sp,sp,32
     748:	00008067          	ret
     74c:	02069063          	bnez	a3,76c <xQueueGenericReset+0x158>
     750:	00058a13          	mv	s4,a1
     754:	f19ff06f          	j	66c <xQueueGenericReset+0x58>
     758:	01040513          	addi	a0,s0,16
     75c:	618000ef          	jal	ra,d74 <vListInitialise>
     760:	02440513          	addi	a0,s0,36
     764:	610000ef          	jal	ra,d74 <vListInitialise>
     768:	fadff06f          	j	714 <xQueueGenericReset+0x100>
     76c:	30047073          	csrci	mstatus,8
     770:	00100073          	ebreak
     774:	0000006f          	j	774 <xQueueGenericReset+0x160>

00000778 <xQueueGenericCreate>:
     778:	10050863          	beqz	a0,888 <__heap_size+0x88>
     77c:	fe010113          	addi	sp,sp,-32
     780:	00912a23          	sw	s1,20(sp)
     784:	01212823          	sw	s2,16(sp)
     788:	01312623          	sw	s3,12(sp)
     78c:	01412423          	sw	s4,8(sp)
     790:	00112e23          	sw	ra,28(sp)
     794:	00812c23          	sw	s0,24(sp)
     798:	01512223          	sw	s5,4(sp)
     79c:	01055a13          	srli	s4,a0,0x10
     7a0:	00050913          	mv	s2,a0
     7a4:	00058493          	mv	s1,a1
     7a8:	00060993          	mv	s3,a2
     7ac:	0105d693          	srli	a3,a1,0x10
     7b0:	0c0a1063          	bnez	s4,870 <__heap_size+0x70>
     7b4:	04068463          	beqz	a3,7fc <xQueueGenericCreate+0x84>
     7b8:	00068a13          	mv	s4,a3
     7bc:	00050a93          	mv	s5,a0
     7c0:	01049593          	slli	a1,s1,0x10
     7c4:	01091513          	slli	a0,s2,0x10
     7c8:	0105d593          	srli	a1,a1,0x10
     7cc:	01055513          	srli	a0,a0,0x10
     7d0:	7e0010ef          	jal	ra,1fb0 <__mulsi3>
     7d4:	00050413          	mv	s0,a0
     7d8:	010a1593          	slli	a1,s4,0x10
     7dc:	010a9513          	slli	a0,s5,0x10
     7e0:	0105d593          	srli	a1,a1,0x10
     7e4:	01055513          	srli	a0,a0,0x10
     7e8:	7c8010ef          	jal	ra,1fb0 <__mulsi3>
     7ec:	01045413          	srli	s0,s0,0x10
     7f0:	00850533          	add	a0,a0,s0
     7f4:	01055513          	srli	a0,a0,0x10
     7f8:	08051263          	bnez	a0,87c <__heap_size+0x7c>
     7fc:	00048593          	mv	a1,s1
     800:	00090513          	mv	a0,s2
     804:	7ac010ef          	jal	ra,1fb0 <__mulsi3>
     808:	faf00793          	li	a5,-81
     80c:	06a7e863          	bltu	a5,a0,87c <__heap_size+0x7c>
     810:	05050513          	addi	a0,a0,80
     814:	468010ef          	jal	ra,1c7c <pvPortMalloc>
     818:	00050413          	mv	s0,a0
     81c:	02050663          	beqz	a0,848 <__heap_size+0x48>
     820:	00050793          	mv	a5,a0
     824:	00048463          	beqz	s1,82c <__heap_size+0x2c>
     828:	05050793          	addi	a5,a0,80
     82c:	00f42023          	sw	a5,0(s0)
     830:	03242e23          	sw	s2,60(s0)
     834:	04942023          	sw	s1,64(s0)
     838:	00100593          	li	a1,1
     83c:	00040513          	mv	a0,s0
     840:	dd5ff0ef          	jal	ra,614 <xQueueGenericReset>
     844:	05340623          	sb	s3,76(s0)
     848:	01c12083          	lw	ra,28(sp)
     84c:	00040513          	mv	a0,s0
     850:	01812403          	lw	s0,24(sp)
     854:	01412483          	lw	s1,20(sp)
     858:	01012903          	lw	s2,16(sp)
     85c:	00c12983          	lw	s3,12(sp)
     860:	00812a03          	lw	s4,8(sp)
     864:	00412a83          	lw	s5,4(sp)
     868:	02010113          	addi	sp,sp,32
     86c:	00008067          	ret
     870:	00069663          	bnez	a3,87c <__heap_size+0x7c>
     874:	00058a93          	mv	s5,a1
     878:	f49ff06f          	j	7c0 <xQueueGenericCreate+0x48>
     87c:	30047073          	csrci	mstatus,8
     880:	00100073          	ebreak
     884:	0000006f          	j	884 <__heap_size+0x84>
     888:	30047073          	csrci	mstatus,8
     88c:	00100073          	ebreak
     890:	0000006f          	j	890 <__heap_size+0x90>

00000894 <xQueueGenericSend>:
     894:	fc010113          	addi	sp,sp,-64
     898:	02112e23          	sw	ra,60(sp)
     89c:	02812c23          	sw	s0,56(sp)
     8a0:	02912a23          	sw	s1,52(sp)
     8a4:	03212823          	sw	s2,48(sp)
     8a8:	03312623          	sw	s3,44(sp)
     8ac:	03412423          	sw	s4,40(sp)
     8b0:	03512223          	sw	s5,36(sp)
     8b4:	03612023          	sw	s6,32(sp)
     8b8:	00c12623          	sw	a2,12(sp)
     8bc:	00051863          	bnez	a0,8cc <xQueueGenericSend+0x38>
     8c0:	30047073          	csrci	mstatus,8
     8c4:	00100073          	ebreak
     8c8:	0000006f          	j	8c8 <xQueueGenericSend+0x34>
     8cc:	00050413          	mv	s0,a0
     8d0:	00058993          	mv	s3,a1
     8d4:	00068913          	mv	s2,a3
     8d8:	00059c63          	bnez	a1,8f0 <xQueueGenericSend+0x5c>
     8dc:	04052783          	lw	a5,64(a0)
     8e0:	00078863          	beqz	a5,8f0 <xQueueGenericSend+0x5c>
     8e4:	30047073          	csrci	mstatus,8
     8e8:	00100073          	ebreak
     8ec:	0000006f          	j	8ec <xQueueGenericSend+0x58>
     8f0:	00200793          	li	a5,2
     8f4:	00f91e63          	bne	s2,a5,910 <xQueueGenericSend+0x7c>
     8f8:	03c42703          	lw	a4,60(s0)
     8fc:	00100793          	li	a5,1
     900:	00f70863          	beq	a4,a5,910 <xQueueGenericSend+0x7c>
     904:	30047073          	csrci	mstatus,8
     908:	00100073          	ebreak
     90c:	0000006f          	j	90c <xQueueGenericSend+0x78>
     910:	749000ef          	jal	ra,1858 <xTaskGetSchedulerState>
     914:	0a050063          	beqz	a0,9b4 <xQueueGenericSend+0x120>
     918:	00000513          	li	a0,0
     91c:	800004b7          	lui	s1,0x80000
     920:	00200a93          	li	s5,2
     924:	fff00a13          	li	s4,-1
     928:	01040b13          	addi	s6,s0,16
     92c:	30047073          	csrci	mstatus,8
     930:	0044a783          	lw	a5,4(s1) # 80000004 <__crt0_io_space_begin+0x80000204>
     934:	03842683          	lw	a3,56(s0)
     938:	00178713          	addi	a4,a5,1
     93c:	00e4a223          	sw	a4,4(s1)
     940:	03c42703          	lw	a4,60(s0)
     944:	00e6e463          	bltu	a3,a4,94c <xQueueGenericSend+0xb8>
     948:	09591063          	bne	s2,s5,9c8 <xQueueGenericSend+0x134>
     94c:	00090613          	mv	a2,s2
     950:	00098593          	mv	a1,s3
     954:	00040513          	mv	a0,s0
     958:	ad5ff0ef          	jal	ra,42c <prvCopyDataToQueue>
     95c:	02442783          	lw	a5,36(s0)
     960:	00078663          	beqz	a5,96c <xQueueGenericSend+0xd8>
     964:	02440513          	addi	a0,s0,36
     968:	4ed000ef          	jal	ra,1654 <xTaskRemoveFromEventList>
     96c:	00050463          	beqz	a0,974 <xQueueGenericSend+0xe0>
     970:	00000073          	ecall
     974:	0044a783          	lw	a5,4(s1)
     978:	fff78793          	addi	a5,a5,-1
     97c:	00f4a223          	sw	a5,4(s1)
     980:	00079463          	bnez	a5,988 <xQueueGenericSend+0xf4>
     984:	30046073          	csrsi	mstatus,8
     988:	00100513          	li	a0,1
     98c:	03c12083          	lw	ra,60(sp)
     990:	03812403          	lw	s0,56(sp)
     994:	03412483          	lw	s1,52(sp)
     998:	03012903          	lw	s2,48(sp)
     99c:	02c12983          	lw	s3,44(sp)
     9a0:	02812a03          	lw	s4,40(sp)
     9a4:	02412a83          	lw	s5,36(sp)
     9a8:	02012b03          	lw	s6,32(sp)
     9ac:	04010113          	addi	sp,sp,64
     9b0:	00008067          	ret
     9b4:	00c12783          	lw	a5,12(sp)
     9b8:	f60782e3          	beqz	a5,91c <xQueueGenericSend+0x88>
     9bc:	30047073          	csrci	mstatus,8
     9c0:	00100073          	ebreak
     9c4:	0000006f          	j	9c4 <xQueueGenericSend+0x130>
     9c8:	00c12703          	lw	a4,12(sp)
     9cc:	00071c63          	bnez	a4,9e4 <xQueueGenericSend+0x150>
     9d0:	00f4a223          	sw	a5,4(s1)
     9d4:	00079463          	bnez	a5,9dc <xQueueGenericSend+0x148>
     9d8:	30046073          	csrsi	mstatus,8
     9dc:	00000513          	li	a0,0
     9e0:	fadff06f          	j	98c <xQueueGenericSend+0xf8>
     9e4:	00051663          	bnez	a0,9f0 <xQueueGenericSend+0x15c>
     9e8:	01810513          	addi	a0,sp,24
     9ec:	585000ef          	jal	ra,1770 <vTaskInternalSetTimeOutState>
     9f0:	0044a783          	lw	a5,4(s1)
     9f4:	fff78793          	addi	a5,a5,-1
     9f8:	00f4a223          	sw	a5,4(s1)
     9fc:	00079463          	bnez	a5,a04 <xQueueGenericSend+0x170>
     a00:	30046073          	csrsi	mstatus,8
     a04:	005000ef          	jal	ra,1208 <vTaskSuspendAll>
     a08:	30047073          	csrci	mstatus,8
     a0c:	04444783          	lbu	a5,68(s0)
     a10:	0044a703          	lw	a4,4(s1)
     a14:	01879793          	slli	a5,a5,0x18
     a18:	4187d793          	srai	a5,a5,0x18
     a1c:	01479463          	bne	a5,s4,a24 <xQueueGenericSend+0x190>
     a20:	04040223          	sb	zero,68(s0)
     a24:	04544783          	lbu	a5,69(s0)
     a28:	01879793          	slli	a5,a5,0x18
     a2c:	4187d793          	srai	a5,a5,0x18
     a30:	01479463          	bne	a5,s4,a38 <xQueueGenericSend+0x1a4>
     a34:	040402a3          	sb	zero,69(s0)
     a38:	00071463          	bnez	a4,a40 <xQueueGenericSend+0x1ac>
     a3c:	30046073          	csrsi	mstatus,8
     a40:	00c10593          	addi	a1,sp,12
     a44:	01810513          	addi	a0,sp,24
     a48:	53d000ef          	jal	ra,1784 <xTaskCheckForTimeOut>
     a4c:	06051063          	bnez	a0,aac <xQueueGenericSend+0x218>
     a50:	30047073          	csrci	mstatus,8
     a54:	03842683          	lw	a3,56(s0)
     a58:	03c42703          	lw	a4,60(s0)
     a5c:	0044a783          	lw	a5,4(s1)
     a60:	02e69a63          	bne	a3,a4,a94 <xQueueGenericSend+0x200>
     a64:	00079463          	bnez	a5,a6c <xQueueGenericSend+0x1d8>
     a68:	30046073          	csrsi	mstatus,8
     a6c:	00c12583          	lw	a1,12(sp)
     a70:	000b0513          	mv	a0,s6
     a74:	39d000ef          	jal	ra,1610 <vTaskPlaceOnEventList>
     a78:	00040513          	mv	a0,s0
     a7c:	a8dff0ef          	jal	ra,508 <prvUnlockQueue>
     a80:	17d000ef          	jal	ra,13fc <xTaskResumeAll>
     a84:	00051463          	bnez	a0,a8c <xQueueGenericSend+0x1f8>
     a88:	00000073          	ecall
     a8c:	00100513          	li	a0,1
     a90:	e9dff06f          	j	92c <xQueueGenericSend+0x98>
     a94:	00079463          	bnez	a5,a9c <xQueueGenericSend+0x208>
     a98:	30046073          	csrsi	mstatus,8
     a9c:	00040513          	mv	a0,s0
     aa0:	a69ff0ef          	jal	ra,508 <prvUnlockQueue>
     aa4:	159000ef          	jal	ra,13fc <xTaskResumeAll>
     aa8:	fe5ff06f          	j	a8c <xQueueGenericSend+0x1f8>
     aac:	00040513          	mv	a0,s0
     ab0:	a59ff0ef          	jal	ra,508 <prvUnlockQueue>
     ab4:	149000ef          	jal	ra,13fc <xTaskResumeAll>
     ab8:	f25ff06f          	j	9dc <xQueueGenericSend+0x148>

00000abc <xQueueCreateMutex>:
     abc:	ff010113          	addi	sp,sp,-16
     ac0:	00050613          	mv	a2,a0
     ac4:	00000593          	li	a1,0
     ac8:	00100513          	li	a0,1
     acc:	00812423          	sw	s0,8(sp)
     ad0:	00112623          	sw	ra,12(sp)
     ad4:	ca5ff0ef          	jal	ra,778 <xQueueGenericCreate>
     ad8:	00050413          	mv	s0,a0
     adc:	02050063          	beqz	a0,afc <xQueueCreateMutex+0x40>
     ae0:	00052423          	sw	zero,8(a0)
     ae4:	00052023          	sw	zero,0(a0)
     ae8:	00052623          	sw	zero,12(a0)
     aec:	00000693          	li	a3,0
     af0:	00000613          	li	a2,0
     af4:	00000593          	li	a1,0
     af8:	d9dff0ef          	jal	ra,894 <xQueueGenericSend>
     afc:	00c12083          	lw	ra,12(sp)
     b00:	00040513          	mv	a0,s0
     b04:	00812403          	lw	s0,8(sp)
     b08:	01010113          	addi	sp,sp,16
     b0c:	00008067          	ret

00000b10 <xQueueSemaphoreTake>:
     b10:	fc010113          	addi	sp,sp,-64
     b14:	02112e23          	sw	ra,60(sp)
     b18:	02812c23          	sw	s0,56(sp)
     b1c:	02912a23          	sw	s1,52(sp)
     b20:	03212823          	sw	s2,48(sp)
     b24:	03312623          	sw	s3,44(sp)
     b28:	03412423          	sw	s4,40(sp)
     b2c:	00b12623          	sw	a1,12(sp)
     b30:	00051863          	bnez	a0,b40 <xQueueSemaphoreTake+0x30>
     b34:	30047073          	csrci	mstatus,8
     b38:	00100073          	ebreak
     b3c:	0000006f          	j	b3c <xQueueSemaphoreTake+0x2c>
     b40:	04052783          	lw	a5,64(a0)
     b44:	00050413          	mv	s0,a0
     b48:	00078863          	beqz	a5,b58 <xQueueSemaphoreTake+0x48>
     b4c:	30047073          	csrci	mstatus,8
     b50:	00100073          	ebreak
     b54:	0000006f          	j	b54 <xQueueSemaphoreTake+0x44>
     b58:	501000ef          	jal	ra,1858 <xTaskGetSchedulerState>
     b5c:	08050263          	beqz	a0,be0 <xQueueSemaphoreTake+0xd0>
     b60:	00000913          	li	s2,0
     b64:	00000513          	li	a0,0
     b68:	800004b7          	lui	s1,0x80000
     b6c:	fff00993          	li	s3,-1
     b70:	02440a13          	addi	s4,s0,36
     b74:	30047073          	csrci	mstatus,8
     b78:	0044a703          	lw	a4,4(s1) # 80000004 <__crt0_io_space_begin+0x80000204>
     b7c:	00170793          	addi	a5,a4,1
     b80:	00f4a223          	sw	a5,4(s1)
     b84:	03842783          	lw	a5,56(s0)
     b88:	06078663          	beqz	a5,bf4 <xQueueSemaphoreTake+0xe4>
     b8c:	fff78793          	addi	a5,a5,-1
     b90:	02f42c23          	sw	a5,56(s0)
     b94:	00042783          	lw	a5,0(s0)
     b98:	00079663          	bnez	a5,ba4 <xQueueSemaphoreTake+0x94>
     b9c:	050010ef          	jal	ra,1bec <pvTaskIncrementMutexHeldCount>
     ba0:	00a42423          	sw	a0,8(s0)
     ba4:	01042783          	lw	a5,16(s0)
     ba8:	00078a63          	beqz	a5,bbc <xQueueSemaphoreTake+0xac>
     bac:	01040513          	addi	a0,s0,16
     bb0:	2a5000ef          	jal	ra,1654 <xTaskRemoveFromEventList>
     bb4:	00050463          	beqz	a0,bbc <xQueueSemaphoreTake+0xac>
     bb8:	00000073          	ecall
     bbc:	0044a783          	lw	a5,4(s1)
     bc0:	fff78793          	addi	a5,a5,-1
     bc4:	00f4a223          	sw	a5,4(s1)
     bc8:	00079463          	bnez	a5,bd0 <xQueueSemaphoreTake+0xc0>
     bcc:	30046073          	csrsi	mstatus,8
     bd0:	00100513          	li	a0,1
     bd4:	0340006f          	j	c08 <xQueueSemaphoreTake+0xf8>
     bd8:	00000913          	li	s2,0
     bdc:	f8dff06f          	j	b68 <xQueueSemaphoreTake+0x58>
     be0:	00c12783          	lw	a5,12(sp)
     be4:	fe078ae3          	beqz	a5,bd8 <xQueueSemaphoreTake+0xc8>
     be8:	30047073          	csrci	mstatus,8
     bec:	00100073          	ebreak
     bf0:	0000006f          	j	bf0 <xQueueSemaphoreTake+0xe0>
     bf4:	00c12783          	lw	a5,12(sp)
     bf8:	02079863          	bnez	a5,c28 <xQueueSemaphoreTake+0x118>
     bfc:	00e4a223          	sw	a4,4(s1)
     c00:	16070663          	beqz	a4,d6c <xQueueSemaphoreTake+0x25c>
     c04:	00000513          	li	a0,0
     c08:	03c12083          	lw	ra,60(sp)
     c0c:	03812403          	lw	s0,56(sp)
     c10:	03412483          	lw	s1,52(sp)
     c14:	03012903          	lw	s2,48(sp)
     c18:	02c12983          	lw	s3,44(sp)
     c1c:	02812a03          	lw	s4,40(sp)
     c20:	04010113          	addi	sp,sp,64
     c24:	00008067          	ret
     c28:	00051663          	bnez	a0,c34 <xQueueSemaphoreTake+0x124>
     c2c:	01810513          	addi	a0,sp,24
     c30:	341000ef          	jal	ra,1770 <vTaskInternalSetTimeOutState>
     c34:	0044a783          	lw	a5,4(s1)
     c38:	fff78793          	addi	a5,a5,-1
     c3c:	00f4a223          	sw	a5,4(s1)
     c40:	00079463          	bnez	a5,c48 <xQueueSemaphoreTake+0x138>
     c44:	30046073          	csrsi	mstatus,8
     c48:	5c0000ef          	jal	ra,1208 <vTaskSuspendAll>
     c4c:	30047073          	csrci	mstatus,8
     c50:	04444783          	lbu	a5,68(s0)
     c54:	0044a703          	lw	a4,4(s1)
     c58:	01879793          	slli	a5,a5,0x18
     c5c:	4187d793          	srai	a5,a5,0x18
     c60:	01379463          	bne	a5,s3,c68 <xQueueSemaphoreTake+0x158>
     c64:	04040223          	sb	zero,68(s0)
     c68:	04544783          	lbu	a5,69(s0)
     c6c:	01879793          	slli	a5,a5,0x18
     c70:	4187d793          	srai	a5,a5,0x18
     c74:	01379463          	bne	a5,s3,c7c <xQueueSemaphoreTake+0x16c>
     c78:	040402a3          	sb	zero,69(s0)
     c7c:	00071463          	bnez	a4,c84 <xQueueSemaphoreTake+0x174>
     c80:	30046073          	csrsi	mstatus,8
     c84:	00c10593          	addi	a1,sp,12
     c88:	01810513          	addi	a0,sp,24
     c8c:	2f9000ef          	jal	ra,1784 <xTaskCheckForTimeOut>
     c90:	08051063          	bnez	a0,d10 <xQueueSemaphoreTake+0x200>
     c94:	00040513          	mv	a0,s0
     c98:	f74ff0ef          	jal	ra,40c <prvIsQueueEmpty>
     c9c:	06050263          	beqz	a0,d00 <xQueueSemaphoreTake+0x1f0>
     ca0:	00042783          	lw	a5,0(s0)
     ca4:	02079a63          	bnez	a5,cd8 <xQueueSemaphoreTake+0x1c8>
     ca8:	30047073          	csrci	mstatus,8
     cac:	0044a783          	lw	a5,4(s1)
     cb0:	00842503          	lw	a0,8(s0)
     cb4:	00178793          	addi	a5,a5,1
     cb8:	00f4a223          	sw	a5,4(s1)
     cbc:	3b9000ef          	jal	ra,1874 <xTaskPriorityInherit>
     cc0:	0044a783          	lw	a5,4(s1)
     cc4:	00050913          	mv	s2,a0
     cc8:	fff78793          	addi	a5,a5,-1
     ccc:	00f4a223          	sw	a5,4(s1)
     cd0:	00079463          	bnez	a5,cd8 <xQueueSemaphoreTake+0x1c8>
     cd4:	30046073          	csrsi	mstatus,8
     cd8:	00c12583          	lw	a1,12(sp)
     cdc:	000a0513          	mv	a0,s4
     ce0:	131000ef          	jal	ra,1610 <vTaskPlaceOnEventList>
     ce4:	00040513          	mv	a0,s0
     ce8:	821ff0ef          	jal	ra,508 <prvUnlockQueue>
     cec:	710000ef          	jal	ra,13fc <xTaskResumeAll>
     cf0:	00051463          	bnez	a0,cf8 <xQueueSemaphoreTake+0x1e8>
     cf4:	00000073          	ecall
     cf8:	00100513          	li	a0,1
     cfc:	e79ff06f          	j	b74 <xQueueSemaphoreTake+0x64>
     d00:	00040513          	mv	a0,s0
     d04:	805ff0ef          	jal	ra,508 <prvUnlockQueue>
     d08:	6f4000ef          	jal	ra,13fc <xTaskResumeAll>
     d0c:	fedff06f          	j	cf8 <xQueueSemaphoreTake+0x1e8>
     d10:	00040513          	mv	a0,s0
     d14:	ff4ff0ef          	jal	ra,508 <prvUnlockQueue>
     d18:	6e4000ef          	jal	ra,13fc <xTaskResumeAll>
     d1c:	00040513          	mv	a0,s0
     d20:	eecff0ef          	jal	ra,40c <prvIsQueueEmpty>
     d24:	fc050ae3          	beqz	a0,cf8 <xQueueSemaphoreTake+0x1e8>
     d28:	ec090ee3          	beqz	s2,c04 <xQueueSemaphoreTake+0xf4>
     d2c:	30047073          	csrci	mstatus,8
     d30:	0044a783          	lw	a5,4(s1)
     d34:	02442583          	lw	a1,36(s0)
     d38:	00178793          	addi	a5,a5,1
     d3c:	00f4a223          	sw	a5,4(s1)
     d40:	00058a63          	beqz	a1,d54 <xQueueSemaphoreTake+0x244>
     d44:	03042783          	lw	a5,48(s0)
     d48:	00500593          	li	a1,5
     d4c:	0007a783          	lw	a5,0(a5)
     d50:	40f585b3          	sub	a1,a1,a5
     d54:	00842503          	lw	a0,8(s0)
     d58:	569000ef          	jal	ra,1ac0 <vTaskPriorityDisinheritAfterTimeout>
     d5c:	0044a783          	lw	a5,4(s1)
     d60:	fff78793          	addi	a5,a5,-1
     d64:	00f4a223          	sw	a5,4(s1)
     d68:	e8079ee3          	bnez	a5,c04 <xQueueSemaphoreTake+0xf4>
     d6c:	30046073          	csrsi	mstatus,8
     d70:	e95ff06f          	j	c04 <xQueueSemaphoreTake+0xf4>

00000d74 <vListInitialise>:
     d74:	00850793          	addi	a5,a0,8
     d78:	fff00713          	li	a4,-1
     d7c:	00f52223          	sw	a5,4(a0)
     d80:	00e52423          	sw	a4,8(a0)
     d84:	00f52623          	sw	a5,12(a0)
     d88:	00f52823          	sw	a5,16(a0)
     d8c:	00052023          	sw	zero,0(a0)
     d90:	00008067          	ret

00000d94 <vListInitialiseItem>:
     d94:	00052823          	sw	zero,16(a0)
     d98:	00008067          	ret

00000d9c <vListInsert>:
     d9c:	0005a683          	lw	a3,0(a1)
     da0:	fff00793          	li	a5,-1
     da4:	00850713          	addi	a4,a0,8
     da8:	02f69863          	bne	a3,a5,dd8 <vListInsert+0x3c>
     dac:	01052783          	lw	a5,16(a0)
     db0:	0047a703          	lw	a4,4(a5)
     db4:	00e5a223          	sw	a4,4(a1)
     db8:	00b72423          	sw	a1,8(a4)
     dbc:	00f5a423          	sw	a5,8(a1)
     dc0:	00b7a223          	sw	a1,4(a5)
     dc4:	00052783          	lw	a5,0(a0)
     dc8:	00a5a823          	sw	a0,16(a1)
     dcc:	00178793          	addi	a5,a5,1
     dd0:	00f52023          	sw	a5,0(a0)
     dd4:	00008067          	ret
     dd8:	00070793          	mv	a5,a4
     ddc:	00472703          	lw	a4,4(a4)
     de0:	00072603          	lw	a2,0(a4)
     de4:	fec6fae3          	bgeu	a3,a2,dd8 <vListInsert+0x3c>
     de8:	fc9ff06f          	j	db0 <vListInsert+0x14>

00000dec <uxListRemove>:
     dec:	00452683          	lw	a3,4(a0)
     df0:	00852703          	lw	a4,8(a0)
     df4:	01052783          	lw	a5,16(a0)
     df8:	00e6a423          	sw	a4,8(a3)
     dfc:	00d72223          	sw	a3,4(a4)
     e00:	0047a683          	lw	a3,4(a5)
     e04:	00a69463          	bne	a3,a0,e0c <uxListRemove+0x20>
     e08:	00e7a223          	sw	a4,4(a5)
     e0c:	0007a703          	lw	a4,0(a5)
     e10:	00052823          	sw	zero,16(a0)
     e14:	fff70713          	addi	a4,a4,-1
     e18:	00e7a023          	sw	a4,0(a5)
     e1c:	0007a503          	lw	a0,0(a5)
     e20:	00008067          	ret

00000e24 <prvAddCurrentTaskToDelayedList>:
     e24:	fe010113          	addi	sp,sp,-32
     e28:	00812c23          	sw	s0,24(sp)
     e2c:	00912a23          	sw	s1,20(sp)
     e30:	01312623          	sw	s3,12(sp)
     e34:	00050493          	mv	s1,a0
     e38:	82c1a983          	lw	s3,-2004(gp) # 80000034 <xTickCount>
     e3c:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
     e40:	83c1a503          	lw	a0,-1988(gp) # 80000044 <pxCurrentTCB>
     e44:	01212823          	sw	s2,16(sp)
     e48:	00112e23          	sw	ra,28(sp)
     e4c:	06078423          	sb	zero,104(a5)
     e50:	00450513          	addi	a0,a0,4
     e54:	00058913          	mv	s2,a1
     e58:	f95ff0ef          	jal	ra,dec <uxListRemove>
     e5c:	02051263          	bnez	a0,e80 <prvAddCurrentTaskToDelayedList+0x5c>
     e60:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
     e64:	8281a683          	lw	a3,-2008(gp) # 80000030 <uxTopReadyPriority>
     e68:	02c7a603          	lw	a2,44(a5)
     e6c:	00100793          	li	a5,1
     e70:	00c797b3          	sll	a5,a5,a2
     e74:	fff7c793          	not	a5,a5
     e78:	00d7f7b3          	and	a5,a5,a3
     e7c:	82f1a423          	sw	a5,-2008(gp) # 80000030 <uxTopReadyPriority>
     e80:	fff00793          	li	a5,-1
     e84:	06f49663          	bne	s1,a5,ef0 <prvAddCurrentTaskToDelayedList+0xcc>
     e88:	06090463          	beqz	s2,ef0 <prvAddCurrentTaskToDelayedList+0xcc>
     e8c:	85c18793          	addi	a5,gp,-1956 # 80000064 <xSuspendedTaskList>
     e90:	83c1a683          	lw	a3,-1988(gp) # 80000044 <pxCurrentTCB>
     e94:	0047a703          	lw	a4,4(a5)
     e98:	00e6a423          	sw	a4,8(a3)
     e9c:	00872603          	lw	a2,8(a4)
     ea0:	83c1a683          	lw	a3,-1988(gp) # 80000044 <pxCurrentTCB>
     ea4:	00c6a623          	sw	a2,12(a3)
     ea8:	83c1a683          	lw	a3,-1988(gp) # 80000044 <pxCurrentTCB>
     eac:	00468693          	addi	a3,a3,4
     eb0:	00d62223          	sw	a3,4(a2)
     eb4:	83c1a683          	lw	a3,-1988(gp) # 80000044 <pxCurrentTCB>
     eb8:	00468693          	addi	a3,a3,4
     ebc:	00d72423          	sw	a3,8(a4)
     ec0:	83c1a703          	lw	a4,-1988(gp) # 80000044 <pxCurrentTCB>
     ec4:	00f72a23          	sw	a5,20(a4)
     ec8:	0007a703          	lw	a4,0(a5)
     ecc:	00170713          	addi	a4,a4,1
     ed0:	00e7a023          	sw	a4,0(a5)
     ed4:	01c12083          	lw	ra,28(sp)
     ed8:	01812403          	lw	s0,24(sp)
     edc:	01412483          	lw	s1,20(sp)
     ee0:	01012903          	lw	s2,16(sp)
     ee4:	00c12983          	lw	s3,12(sp)
     ee8:	02010113          	addi	sp,sp,32
     eec:	00008067          	ret
     ef0:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
     ef4:	009984b3          	add	s1,s3,s1
     ef8:	0097a223          	sw	s1,4(a5)
     efc:	0334f663          	bgeu	s1,s3,f28 <prvAddCurrentTaskToDelayedList+0x104>
     f00:	8341a503          	lw	a0,-1996(gp) # 8000003c <pxOverflowDelayedTaskList>
     f04:	83c1a583          	lw	a1,-1988(gp) # 80000044 <pxCurrentTCB>
     f08:	01812403          	lw	s0,24(sp)
     f0c:	01c12083          	lw	ra,28(sp)
     f10:	01412483          	lw	s1,20(sp)
     f14:	01012903          	lw	s2,16(sp)
     f18:	00c12983          	lw	s3,12(sp)
     f1c:	00458593          	addi	a1,a1,4
     f20:	02010113          	addi	sp,sp,32
     f24:	e79ff06f          	j	d9c <vListInsert>
     f28:	8381a503          	lw	a0,-1992(gp) # 80000040 <pxDelayedTaskList>
     f2c:	83c1a583          	lw	a1,-1988(gp) # 80000044 <pxCurrentTCB>
     f30:	00458593          	addi	a1,a1,4
     f34:	e69ff0ef          	jal	ra,d9c <vListInsert>
     f38:	8101a703          	lw	a4,-2032(gp) # 80000018 <xNextTaskUnblockTime>
     f3c:	f8e4fce3          	bgeu	s1,a4,ed4 <prvAddCurrentTaskToDelayedList+0xb0>
     f40:	8091a823          	sw	s1,-2032(gp) # 80000018 <xNextTaskUnblockTime>
     f44:	f91ff06f          	j	ed4 <prvAddCurrentTaskToDelayedList+0xb0>

00000f48 <prvResetNextTaskUnblockTime>:
     f48:	8381a783          	lw	a5,-1992(gp) # 80000040 <pxDelayedTaskList>
     f4c:	0007a683          	lw	a3,0(a5)
     f50:	00069863          	bnez	a3,f60 <prvResetNextTaskUnblockTime+0x18>
     f54:	fff00713          	li	a4,-1
     f58:	80e1a823          	sw	a4,-2032(gp) # 80000018 <xNextTaskUnblockTime>
     f5c:	00008067          	ret
     f60:	8381a703          	lw	a4,-1992(gp) # 80000040 <pxDelayedTaskList>
     f64:	00c72703          	lw	a4,12(a4)
     f68:	00072703          	lw	a4,0(a4)
     f6c:	fedff06f          	j	f58 <prvResetNextTaskUnblockTime+0x10>

00000f70 <xTaskCreate>:
     f70:	fd010113          	addi	sp,sp,-48
     f74:	02912223          	sw	s1,36(sp)
     f78:	00261493          	slli	s1,a2,0x2
     f7c:	01612823          	sw	s6,16(sp)
     f80:	00050b13          	mv	s6,a0
     f84:	00048513          	mv	a0,s1
     f88:	01312e23          	sw	s3,28(sp)
     f8c:	01412c23          	sw	s4,24(sp)
     f90:	01512a23          	sw	s5,20(sp)
     f94:	01712623          	sw	s7,12(sp)
     f98:	02112623          	sw	ra,44(sp)
     f9c:	02812423          	sw	s0,40(sp)
     fa0:	03212023          	sw	s2,32(sp)
     fa4:	00058a13          	mv	s4,a1
     fa8:	00068b93          	mv	s7,a3
     fac:	00070993          	mv	s3,a4
     fb0:	00078a93          	mv	s5,a5
     fb4:	4c9000ef          	jal	ra,1c7c <pvPortMalloc>
     fb8:	02051a63          	bnez	a0,fec <xTaskCreate+0x7c>
     fbc:	fff00513          	li	a0,-1
     fc0:	02c12083          	lw	ra,44(sp)
     fc4:	02812403          	lw	s0,40(sp)
     fc8:	02412483          	lw	s1,36(sp)
     fcc:	02012903          	lw	s2,32(sp)
     fd0:	01c12983          	lw	s3,28(sp)
     fd4:	01812a03          	lw	s4,24(sp)
     fd8:	01412a83          	lw	s5,20(sp)
     fdc:	01012b03          	lw	s6,16(sp)
     fe0:	00c12b83          	lw	s7,12(sp)
     fe4:	03010113          	addi	sp,sp,48
     fe8:	00008067          	ret
     fec:	00050913          	mv	s2,a0
     ff0:	06c00513          	li	a0,108
     ff4:	489000ef          	jal	ra,1c7c <pvPortMalloc>
     ff8:	00050413          	mv	s0,a0
     ffc:	20050063          	beqz	a0,11fc <xTaskCreate+0x28c>
    1000:	06c00613          	li	a2,108
    1004:	00000593          	li	a1,0
    1008:	224010ef          	jal	ra,222c <memset>
    100c:	00090513          	mv	a0,s2
    1010:	03242823          	sw	s2,48(s0)
    1014:	00048613          	mv	a2,s1
    1018:	0a500593          	li	a1,165
    101c:	210010ef          	jal	ra,222c <memset>
    1020:	03042903          	lw	s2,48(s0)
    1024:	020a0663          	beqz	s4,1050 <xTaskCreate+0xe0>
    1028:	00000713          	li	a4,0
    102c:	01000693          	li	a3,16
    1030:	00ea07b3          	add	a5,s4,a4
    1034:	0007c783          	lbu	a5,0(a5)
    1038:	00e40633          	add	a2,s0,a4
    103c:	02f60a23          	sb	a5,52(a2)
    1040:	00078663          	beqz	a5,104c <xTaskCreate+0xdc>
    1044:	00170713          	addi	a4,a4,1
    1048:	fed714e3          	bne	a4,a3,1030 <xTaskCreate+0xc0>
    104c:	040401a3          	sb	zero,67(s0)
    1050:	00400793          	li	a5,4
    1054:	0137f863          	bgeu	a5,s3,1064 <xTaskCreate+0xf4>
    1058:	30047073          	csrci	mstatus,8
    105c:	00100073          	ebreak
    1060:	0000006f          	j	1060 <xTaskCreate+0xf0>
    1064:	00440a13          	addi	s4,s0,4
    1068:	000a0513          	mv	a0,s4
    106c:	03342623          	sw	s3,44(s0)
    1070:	05342623          	sw	s3,76(s0)
    1074:	d21ff0ef          	jal	ra,d94 <vListInitialiseItem>
    1078:	01840513          	addi	a0,s0,24
    107c:	d19ff0ef          	jal	ra,d94 <vListInitialiseItem>
    1080:	00500793          	li	a5,5
    1084:	ffc48493          	addi	s1,s1,-4
    1088:	413787b3          	sub	a5,a5,s3
    108c:	00990533          	add	a0,s2,s1
    1090:	00842823          	sw	s0,16(s0)
    1094:	00f42c23          	sw	a5,24(s0)
    1098:	02842223          	sw	s0,36(s0)
    109c:	000b8613          	mv	a2,s7
    10a0:	000b0593          	mv	a1,s6
    10a4:	ff057513          	andi	a0,a0,-16
    10a8:	a48ff0ef          	jal	ra,2f0 <pxPortInitialiseStack>
    10ac:	00a42023          	sw	a0,0(s0)
    10b0:	000a8463          	beqz	s5,10b8 <xTaskCreate+0x148>
    10b4:	008aa023          	sw	s0,0(s5)
    10b8:	30047073          	csrci	mstatus,8
    10bc:	80000ab7          	lui	s5,0x80000
    10c0:	004aa783          	lw	a5,4(s5) # 80000004 <__crt0_io_space_begin+0x80000204>
    10c4:	00178793          	addi	a5,a5,1
    10c8:	00faa223          	sw	a5,4(s5)
    10cc:	8301a703          	lw	a4,-2000(gp) # 80000038 <uxCurrentNumberOfTasks>
    10d0:	8c018493          	addi	s1,gp,-1856 # 800000c8 <pxReadyTasksLists>
    10d4:	00170713          	addi	a4,a4,1
    10d8:	82e1a823          	sw	a4,-2000(gp) # 80000038 <uxCurrentNumberOfTasks>
    10dc:	83c1a703          	lw	a4,-1988(gp) # 80000044 <pxCurrentTCB>
    10e0:	0e071e63          	bnez	a4,11dc <xTaskCreate+0x26c>
    10e4:	8281ae23          	sw	s0,-1988(gp) # 80000044 <pxCurrentTCB>
    10e8:	8301a703          	lw	a4,-2000(gp) # 80000038 <uxCurrentNumberOfTasks>
    10ec:	00100793          	li	a5,1
    10f0:	04f71a63          	bne	a4,a5,1144 <xTaskCreate+0x1d4>
    10f4:	8c018913          	addi	s2,gp,-1856 # 800000c8 <pxReadyTasksLists>
    10f8:	06448b13          	addi	s6,s1,100
    10fc:	00090513          	mv	a0,s2
    1100:	01490913          	addi	s2,s2,20
    1104:	c71ff0ef          	jal	ra,d74 <vListInitialise>
    1108:	ff2b1ae3          	bne	s6,s2,10fc <xTaskCreate+0x18c>
    110c:	8ac18513          	addi	a0,gp,-1876 # 800000b4 <xDelayedTaskList1>
    1110:	c65ff0ef          	jal	ra,d74 <vListInitialise>
    1114:	89818513          	addi	a0,gp,-1896 # 800000a0 <xDelayedTaskList2>
    1118:	c5dff0ef          	jal	ra,d74 <vListInitialise>
    111c:	88418513          	addi	a0,gp,-1916 # 8000008c <xPendingReadyList>
    1120:	c55ff0ef          	jal	ra,d74 <vListInitialise>
    1124:	87018513          	addi	a0,gp,-1936 # 80000078 <xTasksWaitingTermination>
    1128:	c4dff0ef          	jal	ra,d74 <vListInitialise>
    112c:	85c18513          	addi	a0,gp,-1956 # 80000064 <xSuspendedTaskList>
    1130:	c45ff0ef          	jal	ra,d74 <vListInitialise>
    1134:	8ac18b13          	addi	s6,gp,-1876 # 800000b4 <xDelayedTaskList1>
    1138:	8361ac23          	sw	s6,-1992(gp) # 80000040 <pxDelayedTaskList>
    113c:	89818913          	addi	s2,gp,-1896 # 800000a0 <xDelayedTaskList2>
    1140:	8321aa23          	sw	s2,-1996(gp) # 8000003c <pxOverflowDelayedTaskList>
    1144:	8141a783          	lw	a5,-2028(gp) # 8000001c <uxTaskNumber>
    1148:	8281a603          	lw	a2,-2008(gp) # 80000030 <uxTopReadyPriority>
    114c:	00178793          	addi	a5,a5,1
    1150:	80f1aa23          	sw	a5,-2028(gp) # 8000001c <uxTaskNumber>
    1154:	02c42703          	lw	a4,44(s0)
    1158:	04f42223          	sw	a5,68(s0)
    115c:	00100793          	li	a5,1
    1160:	00e797b3          	sll	a5,a5,a4
    1164:	00c7e7b3          	or	a5,a5,a2
    1168:	82f1a423          	sw	a5,-2008(gp) # 80000030 <uxTopReadyPriority>
    116c:	00271793          	slli	a5,a4,0x2
    1170:	00e787b3          	add	a5,a5,a4
    1174:	00279793          	slli	a5,a5,0x2
    1178:	00f487b3          	add	a5,s1,a5
    117c:	0047a703          	lw	a4,4(a5)
    1180:	00872683          	lw	a3,8(a4)
    1184:	00e42423          	sw	a4,8(s0)
    1188:	00d42623          	sw	a3,12(s0)
    118c:	0146a223          	sw	s4,4(a3)
    1190:	01472423          	sw	s4,8(a4)
    1194:	0007a703          	lw	a4,0(a5)
    1198:	00f42a23          	sw	a5,20(s0)
    119c:	00170713          	addi	a4,a4,1
    11a0:	00e7a023          	sw	a4,0(a5)
    11a4:	004aa783          	lw	a5,4(s5)
    11a8:	fff78793          	addi	a5,a5,-1
    11ac:	00faa223          	sw	a5,4(s5)
    11b0:	00079463          	bnez	a5,11b8 <xTaskCreate+0x248>
    11b4:	30046073          	csrsi	mstatus,8
    11b8:	8241a783          	lw	a5,-2012(gp) # 8000002c <xSchedulerRunning>
    11bc:	00078c63          	beqz	a5,11d4 <xTaskCreate+0x264>
    11c0:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
    11c4:	02c7a703          	lw	a4,44(a5)
    11c8:	02c42783          	lw	a5,44(s0)
    11cc:	00f77463          	bgeu	a4,a5,11d4 <xTaskCreate+0x264>
    11d0:	00000073          	ecall
    11d4:	00100513          	li	a0,1
    11d8:	de9ff06f          	j	fc0 <xTaskCreate+0x50>
    11dc:	8241a703          	lw	a4,-2012(gp) # 8000002c <xSchedulerRunning>
    11e0:	02c42783          	lw	a5,44(s0)
    11e4:	f60710e3          	bnez	a4,1144 <xTaskCreate+0x1d4>
    11e8:	83c1a703          	lw	a4,-1988(gp) # 80000044 <pxCurrentTCB>
    11ec:	02c72703          	lw	a4,44(a4)
    11f0:	f4e7eae3          	bltu	a5,a4,1144 <xTaskCreate+0x1d4>
    11f4:	8281ae23          	sw	s0,-1988(gp) # 80000044 <pxCurrentTCB>
    11f8:	f4dff06f          	j	1144 <xTaskCreate+0x1d4>
    11fc:	00090513          	mv	a0,s2
    1200:	411000ef          	jal	ra,1e10 <vPortFree>
    1204:	db9ff06f          	j	fbc <xTaskCreate+0x4c>

00001208 <vTaskSuspendAll>:
    1208:	80c1a783          	lw	a5,-2036(gp) # 80000014 <uxSchedulerSuspended>
    120c:	00178793          	addi	a5,a5,1
    1210:	80f1a623          	sw	a5,-2036(gp) # 80000014 <uxSchedulerSuspended>
    1214:	00008067          	ret

00001218 <xTaskIncrementTick>:
    1218:	80c1a783          	lw	a5,-2036(gp) # 80000014 <uxSchedulerSuspended>
    121c:	fe010113          	addi	sp,sp,-32
    1220:	00112e23          	sw	ra,28(sp)
    1224:	00812c23          	sw	s0,24(sp)
    1228:	1a079a63          	bnez	a5,13dc <xTaskIncrementTick+0x1c4>
    122c:	82c1a403          	lw	s0,-2004(gp) # 80000034 <xTickCount>
    1230:	00140413          	addi	s0,s0,1
    1234:	8281a623          	sw	s0,-2004(gp) # 80000034 <xTickCount>
    1238:	02041e63          	bnez	s0,1274 <xTaskIncrementTick+0x5c>
    123c:	8381a703          	lw	a4,-1992(gp) # 80000040 <pxDelayedTaskList>
    1240:	00072703          	lw	a4,0(a4)
    1244:	00070863          	beqz	a4,1254 <xTaskIncrementTick+0x3c>
    1248:	30047073          	csrci	mstatus,8
    124c:	00100073          	ebreak
    1250:	0000006f          	j	1250 <xTaskIncrementTick+0x38>
    1254:	8381a683          	lw	a3,-1992(gp) # 80000040 <pxDelayedTaskList>
    1258:	8341a603          	lw	a2,-1996(gp) # 8000003c <pxOverflowDelayedTaskList>
    125c:	82c1ac23          	sw	a2,-1992(gp) # 80000040 <pxDelayedTaskList>
    1260:	82d1aa23          	sw	a3,-1996(gp) # 8000003c <pxOverflowDelayedTaskList>
    1264:	8181a783          	lw	a5,-2024(gp) # 80000020 <xNumOfOverflows>
    1268:	00178793          	addi	a5,a5,1
    126c:	80f1ac23          	sw	a5,-2024(gp) # 80000020 <xNumOfOverflows>
    1270:	cd9ff0ef          	jal	ra,f48 <prvResetNextTaskUnblockTime>
    1274:	8101a783          	lw	a5,-2032(gp) # 80000018 <xNextTaskUnblockTime>
    1278:	8c018693          	addi	a3,gp,-1856 # 800000c8 <pxReadyTasksLists>
    127c:	00000513          	li	a0,0
    1280:	04f47c63          	bgeu	s0,a5,12d8 <xTaskIncrementTick+0xc0>
    1284:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
    1288:	02c7a703          	lw	a4,44(a5)
    128c:	00271793          	slli	a5,a4,0x2
    1290:	00e787b3          	add	a5,a5,a4
    1294:	00279793          	slli	a5,a5,0x2
    1298:	00f686b3          	add	a3,a3,a5
    129c:	0006a703          	lw	a4,0(a3)
    12a0:	00100793          	li	a5,1
    12a4:	00e7f463          	bgeu	a5,a4,12ac <xTaskIncrementTick+0x94>
    12a8:	00100513          	li	a0,1
    12ac:	8201a783          	lw	a5,-2016(gp) # 80000028 <xPendedTicks>
    12b0:	00079863          	bnez	a5,12c0 <xTaskIncrementTick+0xa8>
    12b4:	00a12623          	sw	a0,12(sp)
    12b8:	814ff0ef          	jal	ra,2cc <vApplicationTickHook>
    12bc:	00c12503          	lw	a0,12(sp)
    12c0:	81c1a783          	lw	a5,-2020(gp) # 80000024 <xYieldPending>
    12c4:	12079863          	bnez	a5,13f4 <xTaskIncrementTick+0x1dc>
    12c8:	01c12083          	lw	ra,28(sp)
    12cc:	01812403          	lw	s0,24(sp)
    12d0:	02010113          	addi	sp,sp,32
    12d4:	00008067          	ret
    12d8:	00100f13          	li	t5,1
    12dc:	0e80006f          	j	13c4 <xTaskIncrementTick+0x1ac>
    12e0:	8381a783          	lw	a5,-1992(gp) # 80000040 <pxDelayedTaskList>
    12e4:	00c7a783          	lw	a5,12(a5)
    12e8:	00c7a783          	lw	a5,12(a5)
    12ec:	0047a703          	lw	a4,4(a5)
    12f0:	00e47663          	bgeu	s0,a4,12fc <xTaskIncrementTick+0xe4>
    12f4:	80e1a823          	sw	a4,-2032(gp) # 80000018 <xNextTaskUnblockTime>
    12f8:	f8dff06f          	j	1284 <xTaskIncrementTick+0x6c>
    12fc:	0087a803          	lw	a6,8(a5)
    1300:	00c7a603          	lw	a2,12(a5)
    1304:	0147a703          	lw	a4,20(a5)
    1308:	00478893          	addi	a7,a5,4
    130c:	00c82423          	sw	a2,8(a6)
    1310:	01062223          	sw	a6,4(a2)
    1314:	00472803          	lw	a6,4(a4)
    1318:	01181463          	bne	a6,a7,1320 <xTaskIncrementTick+0x108>
    131c:	00c72223          	sw	a2,4(a4)
    1320:	00072603          	lw	a2,0(a4)
    1324:	0007aa23          	sw	zero,20(a5)
    1328:	fff60613          	addi	a2,a2,-1
    132c:	00c72023          	sw	a2,0(a4)
    1330:	0287a703          	lw	a4,40(a5)
    1334:	02070a63          	beqz	a4,1368 <xTaskIncrementTick+0x150>
    1338:	01c7a803          	lw	a6,28(a5)
    133c:	0207a603          	lw	a2,32(a5)
    1340:	00472f83          	lw	t6,4(a4)
    1344:	00c82423          	sw	a2,8(a6)
    1348:	01062223          	sw	a6,4(a2)
    134c:	01878813          	addi	a6,a5,24
    1350:	010f9463          	bne	t6,a6,1358 <xTaskIncrementTick+0x140>
    1354:	00c72223          	sw	a2,4(a4)
    1358:	00072603          	lw	a2,0(a4)
    135c:	0207a423          	sw	zero,40(a5)
    1360:	fff60613          	addi	a2,a2,-1
    1364:	00c72023          	sw	a2,0(a4)
    1368:	02c7a603          	lw	a2,44(a5)
    136c:	8281a803          	lw	a6,-2008(gp) # 80000030 <uxTopReadyPriority>
    1370:	00cf1733          	sll	a4,t5,a2
    1374:	01076733          	or	a4,a4,a6
    1378:	82e1a423          	sw	a4,-2008(gp) # 80000030 <uxTopReadyPriority>
    137c:	00261713          	slli	a4,a2,0x2
    1380:	00c70733          	add	a4,a4,a2
    1384:	00271713          	slli	a4,a4,0x2
    1388:	00e68733          	add	a4,a3,a4
    138c:	00472803          	lw	a6,4(a4)
    1390:	00882f83          	lw	t6,8(a6)
    1394:	0107a423          	sw	a6,8(a5)
    1398:	01f7a623          	sw	t6,12(a5)
    139c:	011fa223          	sw	a7,4(t6)
    13a0:	01182423          	sw	a7,8(a6)
    13a4:	00e7aa23          	sw	a4,20(a5)
    13a8:	00072783          	lw	a5,0(a4)
    13ac:	00178793          	addi	a5,a5,1
    13b0:	00f72023          	sw	a5,0(a4)
    13b4:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
    13b8:	02c7a783          	lw	a5,44(a5)
    13bc:	00c7f463          	bgeu	a5,a2,13c4 <xTaskIncrementTick+0x1ac>
    13c0:	00100513          	li	a0,1
    13c4:	8381a783          	lw	a5,-1992(gp) # 80000040 <pxDelayedTaskList>
    13c8:	0007a783          	lw	a5,0(a5)
    13cc:	f0079ae3          	bnez	a5,12e0 <xTaskIncrementTick+0xc8>
    13d0:	fff00793          	li	a5,-1
    13d4:	80f1a823          	sw	a5,-2032(gp) # 80000018 <xNextTaskUnblockTime>
    13d8:	eadff06f          	j	1284 <xTaskIncrementTick+0x6c>
    13dc:	8201a783          	lw	a5,-2016(gp) # 80000028 <xPendedTicks>
    13e0:	00178793          	addi	a5,a5,1
    13e4:	82f1a023          	sw	a5,-2016(gp) # 80000028 <xPendedTicks>
    13e8:	ee5fe0ef          	jal	ra,2cc <vApplicationTickHook>
    13ec:	00000513          	li	a0,0
    13f0:	ed9ff06f          	j	12c8 <xTaskIncrementTick+0xb0>
    13f4:	00100513          	li	a0,1
    13f8:	ed1ff06f          	j	12c8 <xTaskIncrementTick+0xb0>

000013fc <xTaskResumeAll>:
    13fc:	80c1a703          	lw	a4,-2036(gp) # 80000014 <uxSchedulerSuspended>
    1400:	00071863          	bnez	a4,1410 <xTaskResumeAll+0x14>
    1404:	30047073          	csrci	mstatus,8
    1408:	00100073          	ebreak
    140c:	0000006f          	j	140c <xTaskResumeAll+0x10>
    1410:	fe010113          	addi	sp,sp,-32
    1414:	00112e23          	sw	ra,28(sp)
    1418:	00812c23          	sw	s0,24(sp)
    141c:	00912a23          	sw	s1,20(sp)
    1420:	01212823          	sw	s2,16(sp)
    1424:	01312623          	sw	s3,12(sp)
    1428:	01412423          	sw	s4,8(sp)
    142c:	30047073          	csrci	mstatus,8
    1430:	80000437          	lui	s0,0x80000
    1434:	00442703          	lw	a4,4(s0) # 80000004 <__crt0_io_space_begin+0x80000204>
    1438:	00170713          	addi	a4,a4,1
    143c:	00e42223          	sw	a4,4(s0)
    1440:	80c1a703          	lw	a4,-2036(gp) # 80000014 <uxSchedulerSuspended>
    1444:	fff70713          	addi	a4,a4,-1
    1448:	80e1a623          	sw	a4,-2036(gp) # 80000014 <uxSchedulerSuspended>
    144c:	80c1a783          	lw	a5,-2036(gp) # 80000014 <uxSchedulerSuspended>
    1450:	02078e63          	beqz	a5,148c <xTaskResumeAll+0x90>
    1454:	00000513          	li	a0,0
    1458:	00442783          	lw	a5,4(s0)
    145c:	fff78793          	addi	a5,a5,-1
    1460:	00f42223          	sw	a5,4(s0)
    1464:	00079463          	bnez	a5,146c <xTaskResumeAll+0x70>
    1468:	30046073          	csrsi	mstatus,8
    146c:	01c12083          	lw	ra,28(sp)
    1470:	01812403          	lw	s0,24(sp)
    1474:	01412483          	lw	s1,20(sp)
    1478:	01012903          	lw	s2,16(sp)
    147c:	00c12983          	lw	s3,12(sp)
    1480:	00812a03          	lw	s4,8(sp)
    1484:	02010113          	addi	sp,sp,32
    1488:	00008067          	ret
    148c:	8301a783          	lw	a5,-2000(gp) # 80000038 <uxCurrentNumberOfTasks>
    1490:	fc0782e3          	beqz	a5,1454 <xTaskResumeAll+0x58>
    1494:	00000793          	li	a5,0
    1498:	88418693          	addi	a3,gp,-1916 # 8000008c <xPendingReadyList>
    149c:	00100313          	li	t1,1
    14a0:	8c018593          	addi	a1,gp,-1856 # 800000c8 <pxReadyTasksLists>
    14a4:	00100f13          	li	t5,1
    14a8:	0cc0006f          	j	1574 <xTaskResumeAll+0x178>
    14ac:	00c6a783          	lw	a5,12(a3)
    14b0:	00c7a783          	lw	a5,12(a5)
    14b4:	0287a703          	lw	a4,40(a5)
    14b8:	01c7a503          	lw	a0,28(a5)
    14bc:	0207a603          	lw	a2,32(a5)
    14c0:	00472803          	lw	a6,4(a4)
    14c4:	00c52423          	sw	a2,8(a0)
    14c8:	00a62223          	sw	a0,4(a2)
    14cc:	01878513          	addi	a0,a5,24
    14d0:	00a81463          	bne	a6,a0,14d8 <xTaskResumeAll+0xdc>
    14d4:	00c72223          	sw	a2,4(a4)
    14d8:	00072603          	lw	a2,0(a4)
    14dc:	0207a423          	sw	zero,40(a5)
    14e0:	fff60613          	addi	a2,a2,-1
    14e4:	00c72023          	sw	a2,0(a4)
    14e8:	0087a503          	lw	a0,8(a5)
    14ec:	00c7a603          	lw	a2,12(a5)
    14f0:	0147a703          	lw	a4,20(a5)
    14f4:	00478813          	addi	a6,a5,4
    14f8:	00c52423          	sw	a2,8(a0)
    14fc:	00a62223          	sw	a0,4(a2)
    1500:	00472503          	lw	a0,4(a4)
    1504:	01051463          	bne	a0,a6,150c <xTaskResumeAll+0x110>
    1508:	00c72223          	sw	a2,4(a4)
    150c:	00072603          	lw	a2,0(a4)
    1510:	fff60613          	addi	a2,a2,-1
    1514:	00c72023          	sw	a2,0(a4)
    1518:	02c7a603          	lw	a2,44(a5)
    151c:	8281a503          	lw	a0,-2008(gp) # 80000030 <uxTopReadyPriority>
    1520:	00c31733          	sll	a4,t1,a2
    1524:	00a76733          	or	a4,a4,a0
    1528:	82e1a423          	sw	a4,-2008(gp) # 80000030 <uxTopReadyPriority>
    152c:	00261713          	slli	a4,a2,0x2
    1530:	00c70733          	add	a4,a4,a2
    1534:	00271713          	slli	a4,a4,0x2
    1538:	00e58733          	add	a4,a1,a4
    153c:	00472503          	lw	a0,4(a4)
    1540:	00852f83          	lw	t6,8(a0)
    1544:	00a7a423          	sw	a0,8(a5)
    1548:	01f7a623          	sw	t6,12(a5)
    154c:	010fa223          	sw	a6,4(t6)
    1550:	01052423          	sw	a6,8(a0)
    1554:	00072503          	lw	a0,0(a4)
    1558:	00e7aa23          	sw	a4,20(a5)
    155c:	00150513          	addi	a0,a0,1
    1560:	00a72023          	sw	a0,0(a4)
    1564:	83c1a703          	lw	a4,-1988(gp) # 80000044 <pxCurrentTCB>
    1568:	02c72703          	lw	a4,44(a4)
    156c:	00c77463          	bgeu	a4,a2,1574 <xTaskResumeAll+0x178>
    1570:	81e1ae23          	sw	t5,-2020(gp) # 80000024 <xYieldPending>
    1574:	0006a703          	lw	a4,0(a3)
    1578:	f2071ae3          	bnez	a4,14ac <xTaskResumeAll+0xb0>
    157c:	00078463          	beqz	a5,1584 <xTaskResumeAll+0x188>
    1580:	9c9ff0ef          	jal	ra,f48 <prvResetNextTaskUnblockTime>
    1584:	8201a483          	lw	s1,-2016(gp) # 80000028 <xPendedTicks>
    1588:	02048063          	beqz	s1,15a8 <xTaskResumeAll+0x1ac>
    158c:	00100a13          	li	s4,1
    1590:	c89ff0ef          	jal	ra,1218 <xTaskIncrementTick>
    1594:	00050463          	beqz	a0,159c <xTaskResumeAll+0x1a0>
    1598:	8141ae23          	sw	s4,-2020(gp) # 80000024 <xYieldPending>
    159c:	fff48493          	addi	s1,s1,-1
    15a0:	fe0498e3          	bnez	s1,1590 <xTaskResumeAll+0x194>
    15a4:	8201a023          	sw	zero,-2016(gp) # 80000028 <xPendedTicks>
    15a8:	81c1a783          	lw	a5,-2020(gp) # 80000024 <xYieldPending>
    15ac:	ea0784e3          	beqz	a5,1454 <xTaskResumeAll+0x58>
    15b0:	00000073          	ecall
    15b4:	00100513          	li	a0,1
    15b8:	ea1ff06f          	j	1458 <xTaskResumeAll+0x5c>

000015bc <vTaskDelay>:
    15bc:	00051663          	bnez	a0,15c8 <vTaskDelay+0xc>
    15c0:	00000073          	ecall
    15c4:	00008067          	ret
    15c8:	80c1a783          	lw	a5,-2036(gp) # 80000014 <uxSchedulerSuspended>
    15cc:	00078863          	beqz	a5,15dc <vTaskDelay+0x20>
    15d0:	30047073          	csrci	mstatus,8
    15d4:	00100073          	ebreak
    15d8:	0000006f          	j	15d8 <vTaskDelay+0x1c>
    15dc:	fe010113          	addi	sp,sp,-32
    15e0:	00112e23          	sw	ra,28(sp)
    15e4:	00a12623          	sw	a0,12(sp)
    15e8:	c21ff0ef          	jal	ra,1208 <vTaskSuspendAll>
    15ec:	00c12503          	lw	a0,12(sp)
    15f0:	00000593          	li	a1,0
    15f4:	831ff0ef          	jal	ra,e24 <prvAddCurrentTaskToDelayedList>
    15f8:	e05ff0ef          	jal	ra,13fc <xTaskResumeAll>
    15fc:	00051463          	bnez	a0,1604 <vTaskDelay+0x48>
    1600:	00000073          	ecall
    1604:	01c12083          	lw	ra,28(sp)
    1608:	02010113          	addi	sp,sp,32
    160c:	00008067          	ret

00001610 <vTaskPlaceOnEventList>:
    1610:	00051863          	bnez	a0,1620 <vTaskPlaceOnEventList+0x10>
    1614:	30047073          	csrci	mstatus,8
    1618:	00100073          	ebreak
    161c:	0000006f          	j	161c <vTaskPlaceOnEventList+0xc>
    1620:	ff010113          	addi	sp,sp,-16
    1624:	00812423          	sw	s0,8(sp)
    1628:	00058413          	mv	s0,a1
    162c:	83c1a583          	lw	a1,-1988(gp) # 80000044 <pxCurrentTCB>
    1630:	00112623          	sw	ra,12(sp)
    1634:	01858593          	addi	a1,a1,24
    1638:	f64ff0ef          	jal	ra,d9c <vListInsert>
    163c:	00040513          	mv	a0,s0
    1640:	00812403          	lw	s0,8(sp)
    1644:	00c12083          	lw	ra,12(sp)
    1648:	00100593          	li	a1,1
    164c:	01010113          	addi	sp,sp,16
    1650:	fd4ff06f          	j	e24 <prvAddCurrentTaskToDelayedList>

00001654 <xTaskRemoveFromEventList>:
    1654:	00c52783          	lw	a5,12(a0)
    1658:	00c7a783          	lw	a5,12(a5)
    165c:	00079863          	bnez	a5,166c <xTaskRemoveFromEventList+0x18>
    1660:	30047073          	csrci	mstatus,8
    1664:	00100073          	ebreak
    1668:	0000006f          	j	1668 <xTaskRemoveFromEventList+0x14>
    166c:	01c7a603          	lw	a2,28(a5)
    1670:	0207a683          	lw	a3,32(a5)
    1674:	0287a703          	lw	a4,40(a5)
    1678:	01878593          	addi	a1,a5,24
    167c:	00d62423          	sw	a3,8(a2)
    1680:	00c6a223          	sw	a2,4(a3)
    1684:	00472603          	lw	a2,4(a4)
    1688:	00b61463          	bne	a2,a1,1690 <xTaskRemoveFromEventList+0x3c>
    168c:	00d72223          	sw	a3,4(a4)
    1690:	00072683          	lw	a3,0(a4)
    1694:	0207a423          	sw	zero,40(a5)
    1698:	02c7a603          	lw	a2,44(a5)
    169c:	fff68693          	addi	a3,a3,-1
    16a0:	00d72023          	sw	a3,0(a4)
    16a4:	80c1a703          	lw	a4,-2036(gp) # 80000014 <uxSchedulerSuspended>
    16a8:	0a071263          	bnez	a4,174c <xTaskRemoveFromEventList+0xf8>
    16ac:	0147a703          	lw	a4,20(a5)
    16b0:	0087a583          	lw	a1,8(a5)
    16b4:	00c7a683          	lw	a3,12(a5)
    16b8:	00472503          	lw	a0,4(a4)
    16bc:	00d5a423          	sw	a3,8(a1)
    16c0:	00b6a223          	sw	a1,4(a3)
    16c4:	00478593          	addi	a1,a5,4
    16c8:	00b51463          	bne	a0,a1,16d0 <xTaskRemoveFromEventList+0x7c>
    16cc:	00d72223          	sw	a3,4(a4)
    16d0:	00072683          	lw	a3,0(a4)
    16d4:	fff68693          	addi	a3,a3,-1
    16d8:	00d72023          	sw	a3,0(a4)
    16dc:	8281a503          	lw	a0,-2008(gp) # 80000030 <uxTopReadyPriority>
    16e0:	00100713          	li	a4,1
    16e4:	00c71733          	sll	a4,a4,a2
    16e8:	00a76733          	or	a4,a4,a0
    16ec:	82e1a423          	sw	a4,-2008(gp) # 80000030 <uxTopReadyPriority>
    16f0:	00261693          	slli	a3,a2,0x2
    16f4:	00c686b3          	add	a3,a3,a2
    16f8:	00269693          	slli	a3,a3,0x2
    16fc:	8c018713          	addi	a4,gp,-1856 # 800000c8 <pxReadyTasksLists>
    1700:	00d70733          	add	a4,a4,a3
    1704:	00472683          	lw	a3,4(a4)
    1708:	0086a503          	lw	a0,8(a3)
    170c:	00d7a423          	sw	a3,8(a5)
    1710:	00a7a623          	sw	a0,12(a5)
    1714:	00b52223          	sw	a1,4(a0)
    1718:	00b6a423          	sw	a1,8(a3)
    171c:	00e7aa23          	sw	a4,20(a5)
    1720:	00072783          	lw	a5,0(a4)
    1724:	00000513          	li	a0,0
    1728:	00178793          	addi	a5,a5,1
    172c:	00f72023          	sw	a5,0(a4)
    1730:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
    1734:	02c7a783          	lw	a5,44(a5)
    1738:	00c7f863          	bgeu	a5,a2,1748 <xTaskRemoveFromEventList+0xf4>
    173c:	00100713          	li	a4,1
    1740:	80e1ae23          	sw	a4,-2020(gp) # 80000024 <xYieldPending>
    1744:	00100513          	li	a0,1
    1748:	00008067          	ret
    174c:	88418713          	addi	a4,gp,-1916 # 8000008c <xPendingReadyList>
    1750:	00472683          	lw	a3,4(a4)
    1754:	0086a503          	lw	a0,8(a3)
    1758:	00d7ae23          	sw	a3,28(a5)
    175c:	02a7a023          	sw	a0,32(a5)
    1760:	00b52223          	sw	a1,4(a0)
    1764:	00b6a423          	sw	a1,8(a3)
    1768:	02e7a423          	sw	a4,40(a5)
    176c:	fb5ff06f          	j	1720 <xTaskRemoveFromEventList+0xcc>

00001770 <vTaskInternalSetTimeOutState>:
    1770:	8181a783          	lw	a5,-2024(gp) # 80000020 <xNumOfOverflows>
    1774:	00f52023          	sw	a5,0(a0)
    1778:	82c1a783          	lw	a5,-2004(gp) # 80000034 <xTickCount>
    177c:	00f52223          	sw	a5,4(a0)
    1780:	00008067          	ret

00001784 <xTaskCheckForTimeOut>:
    1784:	00051863          	bnez	a0,1794 <xTaskCheckForTimeOut+0x10>
    1788:	30047073          	csrci	mstatus,8
    178c:	00100073          	ebreak
    1790:	0000006f          	j	1790 <xTaskCheckForTimeOut+0xc>
    1794:	00059863          	bnez	a1,17a4 <xTaskCheckForTimeOut+0x20>
    1798:	30047073          	csrci	mstatus,8
    179c:	00100073          	ebreak
    17a0:	0000006f          	j	17a0 <xTaskCheckForTimeOut+0x1c>
    17a4:	ff010113          	addi	sp,sp,-16
    17a8:	00112623          	sw	ra,12(sp)
    17ac:	00812423          	sw	s0,8(sp)
    17b0:	00912223          	sw	s1,4(sp)
    17b4:	30047073          	csrci	mstatus,8
    17b8:	800004b7          	lui	s1,0x80000
    17bc:	0044a403          	lw	s0,4(s1) # 80000004 <__crt0_io_space_begin+0x80000204>
    17c0:	00452703          	lw	a4,4(a0)
    17c4:	00140793          	addi	a5,s0,1
    17c8:	00f4a223          	sw	a5,4(s1)
    17cc:	82c1a683          	lw	a3,-2004(gp) # 80000034 <xTickCount>
    17d0:	83c1a603          	lw	a2,-1988(gp) # 80000044 <pxCurrentTCB>
    17d4:	06864603          	lbu	a2,104(a2)
    17d8:	02060863          	beqz	a2,1808 <xTaskCheckForTimeOut+0x84>
    17dc:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
    17e0:	06078423          	sb	zero,104(a5)
    17e4:	00100513          	li	a0,1
    17e8:	0084a223          	sw	s0,4(s1)
    17ec:	00041463          	bnez	s0,17f4 <xTaskCheckForTimeOut+0x70>
    17f0:	30046073          	csrsi	mstatus,8
    17f4:	00c12083          	lw	ra,12(sp)
    17f8:	00812403          	lw	s0,8(sp)
    17fc:	00412483          	lw	s1,4(sp)
    1800:	01010113          	addi	sp,sp,16
    1804:	00008067          	ret
    1808:	0005a783          	lw	a5,0(a1)
    180c:	fff00613          	li	a2,-1
    1810:	02c78a63          	beq	a5,a2,1844 <xTaskCheckForTimeOut+0xc0>
    1814:	8181a603          	lw	a2,-2024(gp) # 80000020 <xNumOfOverflows>
    1818:	00052803          	lw	a6,0(a0)
    181c:	00c80863          	beq	a6,a2,182c <xTaskCheckForTimeOut+0xa8>
    1820:	00e6e663          	bltu	a3,a4,182c <xTaskCheckForTimeOut+0xa8>
    1824:	0005a023          	sw	zero,0(a1)
    1828:	fbdff06f          	j	17e4 <xTaskCheckForTimeOut+0x60>
    182c:	40e68633          	sub	a2,a3,a4
    1830:	fef67ae3          	bgeu	a2,a5,1824 <xTaskCheckForTimeOut+0xa0>
    1834:	40d787b3          	sub	a5,a5,a3
    1838:	00e787b3          	add	a5,a5,a4
    183c:	00f5a023          	sw	a5,0(a1)
    1840:	f31ff0ef          	jal	ra,1770 <vTaskInternalSetTimeOutState>
    1844:	00000513          	li	a0,0
    1848:	fa1ff06f          	j	17e8 <xTaskCheckForTimeOut+0x64>

0000184c <vTaskMissedYield>:
    184c:	00100713          	li	a4,1
    1850:	80e1ae23          	sw	a4,-2020(gp) # 80000024 <xYieldPending>
    1854:	00008067          	ret

00001858 <xTaskGetSchedulerState>:
    1858:	8241a783          	lw	a5,-2012(gp) # 8000002c <xSchedulerRunning>
    185c:	00100513          	li	a0,1
    1860:	00078863          	beqz	a5,1870 <xTaskGetSchedulerState+0x18>
    1864:	80c1a503          	lw	a0,-2036(gp) # 80000014 <uxSchedulerSuspended>
    1868:	00153513          	seqz	a0,a0
    186c:	00151513          	slli	a0,a0,0x1
    1870:	00008067          	ret

00001874 <xTaskPriorityInherit>:
    1874:	12050a63          	beqz	a0,19a8 <xTaskPriorityInherit+0x134>
    1878:	fe010113          	addi	sp,sp,-32
    187c:	01212823          	sw	s2,16(sp)
    1880:	83c1a703          	lw	a4,-1988(gp) # 80000044 <pxCurrentTCB>
    1884:	02c52783          	lw	a5,44(a0)
    1888:	00812c23          	sw	s0,24(sp)
    188c:	02c72703          	lw	a4,44(a4)
    1890:	00112e23          	sw	ra,28(sp)
    1894:	00912a23          	sw	s1,20(sp)
    1898:	01312623          	sw	s3,12(sp)
    189c:	00050413          	mv	s0,a0
    18a0:	0ee7fa63          	bgeu	a5,a4,1994 <xTaskPriorityInherit+0x120>
    18a4:	01852703          	lw	a4,24(a0)
    18a8:	00074c63          	bltz	a4,18c0 <xTaskPriorityInherit+0x4c>
    18ac:	83c1a703          	lw	a4,-1988(gp) # 80000044 <pxCurrentTCB>
    18b0:	02c72683          	lw	a3,44(a4)
    18b4:	00500713          	li	a4,5
    18b8:	40d70733          	sub	a4,a4,a3
    18bc:	00e52c23          	sw	a4,24(a0)
    18c0:	00279713          	slli	a4,a5,0x2
    18c4:	00f70733          	add	a4,a4,a5
    18c8:	8c018693          	addi	a3,gp,-1856 # 800000c8 <pxReadyTasksLists>
    18cc:	00271713          	slli	a4,a4,0x2
    18d0:	00d70733          	add	a4,a4,a3
    18d4:	01442683          	lw	a3,20(s0)
    18d8:	8c018493          	addi	s1,gp,-1856 # 800000c8 <pxReadyTasksLists>
    18dc:	0ae69463          	bne	a3,a4,1984 <xTaskPriorityInherit+0x110>
    18e0:	00440993          	addi	s3,s0,4
    18e4:	00098513          	mv	a0,s3
    18e8:	d04ff0ef          	jal	ra,dec <uxListRemove>
    18ec:	02051063          	bnez	a0,190c <xTaskPriorityInherit+0x98>
    18f0:	02c42603          	lw	a2,44(s0)
    18f4:	8281a703          	lw	a4,-2008(gp) # 80000030 <uxTopReadyPriority>
    18f8:	00100793          	li	a5,1
    18fc:	00c797b3          	sll	a5,a5,a2
    1900:	fff7c793          	not	a5,a5
    1904:	00e7f7b3          	and	a5,a5,a4
    1908:	82f1a423          	sw	a5,-2008(gp) # 80000030 <uxTopReadyPriority>
    190c:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
    1910:	8281a603          	lw	a2,-2008(gp) # 80000030 <uxTopReadyPriority>
    1914:	02c7a703          	lw	a4,44(a5)
    1918:	00100793          	li	a5,1
    191c:	00e797b3          	sll	a5,a5,a4
    1920:	00c7e7b3          	or	a5,a5,a2
    1924:	82f1a423          	sw	a5,-2008(gp) # 80000030 <uxTopReadyPriority>
    1928:	00271793          	slli	a5,a4,0x2
    192c:	00e787b3          	add	a5,a5,a4
    1930:	00279793          	slli	a5,a5,0x2
    1934:	00f487b3          	add	a5,s1,a5
    1938:	02e42623          	sw	a4,44(s0)
    193c:	0047a703          	lw	a4,4(a5)
    1940:	00872683          	lw	a3,8(a4)
    1944:	00e42423          	sw	a4,8(s0)
    1948:	00d42623          	sw	a3,12(s0)
    194c:	0136a223          	sw	s3,4(a3)
    1950:	01372423          	sw	s3,8(a4)
    1954:	0007a703          	lw	a4,0(a5)
    1958:	00f42a23          	sw	a5,20(s0)
    195c:	00170713          	addi	a4,a4,1
    1960:	00e7a023          	sw	a4,0(a5)
    1964:	00100513          	li	a0,1
    1968:	01c12083          	lw	ra,28(sp)
    196c:	01812403          	lw	s0,24(sp)
    1970:	01412483          	lw	s1,20(sp)
    1974:	01012903          	lw	s2,16(sp)
    1978:	00c12983          	lw	s3,12(sp)
    197c:	02010113          	addi	sp,sp,32
    1980:	00008067          	ret
    1984:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
    1988:	02c7a783          	lw	a5,44(a5)
    198c:	02f42623          	sw	a5,44(s0)
    1990:	fd5ff06f          	j	1964 <xTaskPriorityInherit+0xf0>
    1994:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
    1998:	04c52503          	lw	a0,76(a0)
    199c:	02c7a783          	lw	a5,44(a5)
    19a0:	00f53533          	sltu	a0,a0,a5
    19a4:	fc5ff06f          	j	1968 <xTaskPriorityInherit+0xf4>
    19a8:	00000513          	li	a0,0
    19ac:	00008067          	ret

000019b0 <xTaskPriorityDisinherit>:
    19b0:	02051263          	bnez	a0,19d4 <xTaskPriorityDisinherit+0x24>
    19b4:	00000513          	li	a0,0
    19b8:	00008067          	ret
    19bc:	00000513          	li	a0,0
    19c0:	00c12083          	lw	ra,12(sp)
    19c4:	00812403          	lw	s0,8(sp)
    19c8:	00412483          	lw	s1,4(sp)
    19cc:	01010113          	addi	sp,sp,16
    19d0:	00008067          	ret
    19d4:	83c1a783          	lw	a5,-1988(gp) # 80000044 <pxCurrentTCB>
    19d8:	ff010113          	addi	sp,sp,-16
    19dc:	00812423          	sw	s0,8(sp)
    19e0:	00112623          	sw	ra,12(sp)
    19e4:	00912223          	sw	s1,4(sp)
    19e8:	00050413          	mv	s0,a0
    19ec:	00a78863          	beq	a5,a0,19fc <xTaskPriorityDisinherit+0x4c>
    19f0:	30047073          	csrci	mstatus,8
    19f4:	00100073          	ebreak
    19f8:	0000006f          	j	19f8 <xTaskPriorityDisinherit+0x48>
    19fc:	0507a783          	lw	a5,80(a5)
    1a00:	00079863          	bnez	a5,1a10 <xTaskPriorityDisinherit+0x60>
    1a04:	30047073          	csrci	mstatus,8
    1a08:	00100073          	ebreak
    1a0c:	0000006f          	j	1a0c <xTaskPriorityDisinherit+0x5c>
    1a10:	02c52683          	lw	a3,44(a0)
    1a14:	04c52703          	lw	a4,76(a0)
    1a18:	fff78793          	addi	a5,a5,-1
    1a1c:	04f52823          	sw	a5,80(a0)
    1a20:	f8e68ee3          	beq	a3,a4,19bc <xTaskPriorityDisinherit+0xc>
    1a24:	f8079ce3          	bnez	a5,19bc <xTaskPriorityDisinherit+0xc>
    1a28:	00450493          	addi	s1,a0,4
    1a2c:	00048513          	mv	a0,s1
    1a30:	bbcff0ef          	jal	ra,dec <uxListRemove>
    1a34:	02051063          	bnez	a0,1a54 <xTaskPriorityDisinherit+0xa4>
    1a38:	02c42603          	lw	a2,44(s0)
    1a3c:	8281a683          	lw	a3,-2008(gp) # 80000030 <uxTopReadyPriority>
    1a40:	00100793          	li	a5,1
    1a44:	00c797b3          	sll	a5,a5,a2
    1a48:	fff7c793          	not	a5,a5
    1a4c:	00d7f7b3          	and	a5,a5,a3
    1a50:	82f1a423          	sw	a5,-2008(gp) # 80000030 <uxTopReadyPriority>
    1a54:	04c42683          	lw	a3,76(s0)
    1a58:	00500793          	li	a5,5
    1a5c:	8281a603          	lw	a2,-2008(gp) # 80000030 <uxTopReadyPriority>
    1a60:	40d787b3          	sub	a5,a5,a3
    1a64:	00f42c23          	sw	a5,24(s0)
    1a68:	00100793          	li	a5,1
    1a6c:	00d797b3          	sll	a5,a5,a3
    1a70:	00c7e7b3          	or	a5,a5,a2
    1a74:	82f1a423          	sw	a5,-2008(gp) # 80000030 <uxTopReadyPriority>
    1a78:	00269713          	slli	a4,a3,0x2
    1a7c:	00d70733          	add	a4,a4,a3
    1a80:	00271713          	slli	a4,a4,0x2
    1a84:	8c018793          	addi	a5,gp,-1856 # 800000c8 <pxReadyTasksLists>
    1a88:	00e787b3          	add	a5,a5,a4
    1a8c:	0047a703          	lw	a4,4(a5)
    1a90:	02d42623          	sw	a3,44(s0)
    1a94:	00100513          	li	a0,1
    1a98:	00872683          	lw	a3,8(a4)
    1a9c:	00e42423          	sw	a4,8(s0)
    1aa0:	00d42623          	sw	a3,12(s0)
    1aa4:	0096a223          	sw	s1,4(a3)
    1aa8:	00972423          	sw	s1,8(a4)
    1aac:	0007a703          	lw	a4,0(a5)
    1ab0:	00f42a23          	sw	a5,20(s0)
    1ab4:	00170713          	addi	a4,a4,1
    1ab8:	00e7a023          	sw	a4,0(a5)
    1abc:	f05ff06f          	j	19c0 <xTaskPriorityDisinherit+0x10>

00001ac0 <vTaskPriorityDisinheritAfterTimeout>:
    1ac0:	12050463          	beqz	a0,1be8 <vTaskPriorityDisinheritAfterTimeout+0x128>
    1ac4:	05052703          	lw	a4,80(a0)
    1ac8:	ff010113          	addi	sp,sp,-16
    1acc:	00812423          	sw	s0,8(sp)
    1ad0:	00112623          	sw	ra,12(sp)
    1ad4:	00912223          	sw	s1,4(sp)
    1ad8:	01212023          	sw	s2,0(sp)
    1adc:	00050413          	mv	s0,a0
    1ae0:	00071863          	bnez	a4,1af0 <vTaskPriorityDisinheritAfterTimeout+0x30>
    1ae4:	30047073          	csrci	mstatus,8
    1ae8:	00100073          	ebreak
    1aec:	0000006f          	j	1aec <vTaskPriorityDisinheritAfterTimeout+0x2c>
    1af0:	04c52783          	lw	a5,76(a0)
    1af4:	00b7f463          	bgeu	a5,a1,1afc <vTaskPriorityDisinheritAfterTimeout+0x3c>
    1af8:	00058793          	mv	a5,a1
    1afc:	02c42683          	lw	a3,44(s0)
    1b00:	0cf68863          	beq	a3,a5,1bd0 <vTaskPriorityDisinheritAfterTimeout+0x110>
    1b04:	00100613          	li	a2,1
    1b08:	0cc71463          	bne	a4,a2,1bd0 <vTaskPriorityDisinheritAfterTimeout+0x110>
    1b0c:	83c1a703          	lw	a4,-1988(gp) # 80000044 <pxCurrentTCB>
    1b10:	00871863          	bne	a4,s0,1b20 <vTaskPriorityDisinheritAfterTimeout+0x60>
    1b14:	30047073          	csrci	mstatus,8
    1b18:	00100073          	ebreak
    1b1c:	0000006f          	j	1b1c <vTaskPriorityDisinheritAfterTimeout+0x5c>
    1b20:	01842703          	lw	a4,24(s0)
    1b24:	02f42623          	sw	a5,44(s0)
    1b28:	00074863          	bltz	a4,1b38 <vTaskPriorityDisinheritAfterTimeout+0x78>
    1b2c:	00500713          	li	a4,5
    1b30:	40f707b3          	sub	a5,a4,a5
    1b34:	00f42c23          	sw	a5,24(s0)
    1b38:	00269713          	slli	a4,a3,0x2
    1b3c:	00d70733          	add	a4,a4,a3
    1b40:	8c018693          	addi	a3,gp,-1856 # 800000c8 <pxReadyTasksLists>
    1b44:	00271713          	slli	a4,a4,0x2
    1b48:	00d70733          	add	a4,a4,a3
    1b4c:	01442683          	lw	a3,20(s0)
    1b50:	8c018493          	addi	s1,gp,-1856 # 800000c8 <pxReadyTasksLists>
    1b54:	06e69e63          	bne	a3,a4,1bd0 <vTaskPriorityDisinheritAfterTimeout+0x110>
    1b58:	00440913          	addi	s2,s0,4
    1b5c:	00090513          	mv	a0,s2
    1b60:	a8cff0ef          	jal	ra,dec <uxListRemove>
    1b64:	02c42703          	lw	a4,44(s0)
    1b68:	00051e63          	bnez	a0,1b84 <vTaskPriorityDisinheritAfterTimeout+0xc4>
    1b6c:	8281a603          	lw	a2,-2008(gp) # 80000030 <uxTopReadyPriority>
    1b70:	00100793          	li	a5,1
    1b74:	00e797b3          	sll	a5,a5,a4
    1b78:	fff7c793          	not	a5,a5
    1b7c:	00c7f7b3          	and	a5,a5,a2
    1b80:	82f1a423          	sw	a5,-2008(gp) # 80000030 <uxTopReadyPriority>
    1b84:	8281a603          	lw	a2,-2008(gp) # 80000030 <uxTopReadyPriority>
    1b88:	00100793          	li	a5,1
    1b8c:	00e797b3          	sll	a5,a5,a4
    1b90:	00c7e7b3          	or	a5,a5,a2
    1b94:	82f1a423          	sw	a5,-2008(gp) # 80000030 <uxTopReadyPriority>
    1b98:	00271793          	slli	a5,a4,0x2
    1b9c:	00e787b3          	add	a5,a5,a4
    1ba0:	00279793          	slli	a5,a5,0x2
    1ba4:	00f487b3          	add	a5,s1,a5
    1ba8:	0047a703          	lw	a4,4(a5)
    1bac:	00872683          	lw	a3,8(a4)
    1bb0:	00e42423          	sw	a4,8(s0)
    1bb4:	00d42623          	sw	a3,12(s0)
    1bb8:	0126a223          	sw	s2,4(a3)
    1bbc:	01272423          	sw	s2,8(a4)
    1bc0:	0007a703          	lw	a4,0(a5)
    1bc4:	00f42a23          	sw	a5,20(s0)
    1bc8:	00170713          	addi	a4,a4,1
    1bcc:	00e7a023          	sw	a4,0(a5)
    1bd0:	00c12083          	lw	ra,12(sp)
    1bd4:	00812403          	lw	s0,8(sp)
    1bd8:	00412483          	lw	s1,4(sp)
    1bdc:	00012903          	lw	s2,0(sp)
    1be0:	01010113          	addi	sp,sp,16
    1be4:	00008067          	ret
    1be8:	00008067          	ret

00001bec <pvTaskIncrementMutexHeldCount>:
    1bec:	83c1a703          	lw	a4,-1988(gp) # 80000044 <pxCurrentTCB>
    1bf0:	00070a63          	beqz	a4,1c04 <pvTaskIncrementMutexHeldCount+0x18>
    1bf4:	83c1a683          	lw	a3,-1988(gp) # 80000044 <pxCurrentTCB>
    1bf8:	0506a703          	lw	a4,80(a3)
    1bfc:	00170713          	addi	a4,a4,1
    1c00:	04e6a823          	sw	a4,80(a3)
    1c04:	83c1a503          	lw	a0,-1988(gp) # 80000044 <pxCurrentTCB>
    1c08:	00008067          	ret

00001c0c <prvInsertBlockIntoFreeList>:
    1c0c:	85418793          	addi	a5,gp,-1964 # 8000005c <xStart>
    1c10:	00078713          	mv	a4,a5
    1c14:	0007a783          	lw	a5,0(a5)
    1c18:	fea7ece3          	bltu	a5,a0,1c10 <prvInsertBlockIntoFreeList+0x4>
    1c1c:	00472603          	lw	a2,4(a4)
    1c20:	00452683          	lw	a3,4(a0)
    1c24:	00c705b3          	add	a1,a4,a2
    1c28:	00b51e63          	bne	a0,a1,1c44 <prvInsertBlockIntoFreeList+0x38>
    1c2c:	00c686b3          	add	a3,a3,a2
    1c30:	00d72223          	sw	a3,4(a4)
    1c34:	00d70633          	add	a2,a4,a3
    1c38:	02c79c63          	bne	a5,a2,1c70 <prvInsertBlockIntoFreeList+0x64>
    1c3c:	00070513          	mv	a0,a4
    1c40:	00c0006f          	j	1c4c <prvInsertBlockIntoFreeList+0x40>
    1c44:	00d50633          	add	a2,a0,a3
    1c48:	02c79663          	bne	a5,a2,1c74 <prvInsertBlockIntoFreeList+0x68>
    1c4c:	8501a603          	lw	a2,-1968(gp) # 80000058 <pxEnd>
    1c50:	00c78a63          	beq	a5,a2,1c64 <prvInsertBlockIntoFreeList+0x58>
    1c54:	0047a603          	lw	a2,4(a5)
    1c58:	00d606b3          	add	a3,a2,a3
    1c5c:	0007a603          	lw	a2,0(a5)
    1c60:	00d52223          	sw	a3,4(a0)
    1c64:	00c52023          	sw	a2,0(a0)
    1c68:	00a70463          	beq	a4,a0,1c70 <prvInsertBlockIntoFreeList+0x64>
    1c6c:	00a72023          	sw	a0,0(a4)
    1c70:	00008067          	ret
    1c74:	00f52023          	sw	a5,0(a0)
    1c78:	ff1ff06f          	j	1c68 <prvInsertBlockIntoFreeList+0x5c>

00001c7c <pvPortMalloc>:
    1c7c:	fe010113          	addi	sp,sp,-32
    1c80:	00812c23          	sw	s0,24(sp)
    1c84:	00112e23          	sw	ra,28(sp)
    1c88:	00912a23          	sw	s1,20(sp)
    1c8c:	01212823          	sw	s2,16(sp)
    1c90:	01312623          	sw	s3,12(sp)
    1c94:	00050413          	mv	s0,a0
    1c98:	d70ff0ef          	jal	ra,1208 <vTaskSuspendAll>
    1c9c:	8501a783          	lw	a5,-1968(gp) # 80000058 <pxEnd>
    1ca0:	06079263          	bnez	a5,1d04 <pvPortMalloc+0x88>
    1ca4:	800007b7          	lui	a5,0x80000
    1ca8:	12c78793          	addi	a5,a5,300 # 8000012c <__crt0_io_space_begin+0x8000032c>
    1cac:	00f7f693          	andi	a3,a5,15
    1cb0:	40000713          	li	a4,1024
    1cb4:	00068c63          	beqz	a3,1ccc <pvPortMalloc+0x50>
    1cb8:	00f78693          	addi	a3,a5,15
    1cbc:	ff06f693          	andi	a3,a3,-16
    1cc0:	40078793          	addi	a5,a5,1024
    1cc4:	40d78733          	sub	a4,a5,a3
    1cc8:	00068793          	mv	a5,a3
    1ccc:	00e78733          	add	a4,a5,a4
    1cd0:	85418693          	addi	a3,gp,-1964 # 8000005c <xStart>
    1cd4:	ff070713          	addi	a4,a4,-16
    1cd8:	0006a223          	sw	zero,4(a3)
    1cdc:	ff077713          	andi	a4,a4,-16
    1ce0:	00f6a023          	sw	a5,0(a3)
    1ce4:	00072223          	sw	zero,4(a4)
    1ce8:	40f706b3          	sub	a3,a4,a5
    1cec:	00072023          	sw	zero,0(a4)
    1cf0:	00d7a223          	sw	a3,4(a5)
    1cf4:	00e7a023          	sw	a4,0(a5)
    1cf8:	84d1a423          	sw	a3,-1976(gp) # 80000050 <xMinimumEverFreeBytesRemaining>
    1cfc:	84e1a823          	sw	a4,-1968(gp) # 80000058 <pxEnd>
    1d00:	84d1a623          	sw	a3,-1972(gp) # 80000054 <xFreeBytesRemaining>
    1d04:	00040e63          	beqz	s0,1d20 <pvPortMalloc+0xa4>
    1d08:	00f47793          	andi	a5,s0,15
    1d0c:	fdf78713          	addi	a4,a5,-33
    1d10:	00876863          	bltu	a4,s0,1d20 <pvPortMalloc+0xa4>
    1d14:	02040513          	addi	a0,s0,32
    1d18:	40f506b3          	sub	a3,a0,a5
    1d1c:	02d04863          	bgtz	a3,1d4c <pvPortMalloc+0xd0>
    1d20:	edcff0ef          	jal	ra,13fc <xTaskResumeAll>
    1d24:	dacfe0ef          	jal	ra,2d0 <vApplicationMallocFailedHook>
    1d28:	00000913          	li	s2,0
    1d2c:	01c12083          	lw	ra,28(sp)
    1d30:	01812403          	lw	s0,24(sp)
    1d34:	01412483          	lw	s1,20(sp)
    1d38:	00c12983          	lw	s3,12(sp)
    1d3c:	00090513          	mv	a0,s2
    1d40:	01012903          	lw	s2,16(sp)
    1d44:	02010113          	addi	sp,sp,32
    1d48:	00008067          	ret
    1d4c:	84c1a483          	lw	s1,-1972(gp) # 80000054 <xFreeBytesRemaining>
    1d50:	fcd4e8e3          	bltu	s1,a3,1d20 <pvPortMalloc+0xa4>
    1d54:	8541a403          	lw	s0,-1964(gp) # 8000005c <xStart>
    1d58:	85418713          	addi	a4,gp,-1964 # 8000005c <xStart>
    1d5c:	00442583          	lw	a1,4(s0)
    1d60:	00d5f663          	bgeu	a1,a3,1d6c <pvPortMalloc+0xf0>
    1d64:	00042803          	lw	a6,0(s0)
    1d68:	04081063          	bnez	a6,1da8 <pvPortMalloc+0x12c>
    1d6c:	8501a603          	lw	a2,-1968(gp) # 80000058 <pxEnd>
    1d70:	fa8608e3          	beq	a2,s0,1d20 <pvPortMalloc+0xa4>
    1d74:	00042603          	lw	a2,0(s0)
    1d78:	40a787b3          	sub	a5,a5,a0
    1d7c:	00072903          	lw	s2,0(a4)
    1d80:	00b787b3          	add	a5,a5,a1
    1d84:	00c72023          	sw	a2,0(a4)
    1d88:	02000713          	li	a4,32
    1d8c:	02f77a63          	bgeu	a4,a5,1dc0 <pvPortMalloc+0x144>
    1d90:	00d40533          	add	a0,s0,a3
    1d94:	00f57713          	andi	a4,a0,15
    1d98:	00070e63          	beqz	a4,1db4 <pvPortMalloc+0x138>
    1d9c:	30047073          	csrci	mstatus,8
    1da0:	00100073          	ebreak
    1da4:	0000006f          	j	1da4 <pvPortMalloc+0x128>
    1da8:	00040713          	mv	a4,s0
    1dac:	00080413          	mv	s0,a6
    1db0:	fadff06f          	j	1d5c <pvPortMalloc+0xe0>
    1db4:	00f52223          	sw	a5,4(a0)
    1db8:	00d42223          	sw	a3,4(s0)
    1dbc:	e51ff0ef          	jal	ra,1c0c <prvInsertBlockIntoFreeList>
    1dc0:	00442703          	lw	a4,4(s0)
    1dc4:	8481a603          	lw	a2,-1976(gp) # 80000050 <xMinimumEverFreeBytesRemaining>
    1dc8:	40e487b3          	sub	a5,s1,a4
    1dcc:	84f1a623          	sw	a5,-1972(gp) # 80000054 <xFreeBytesRemaining>
    1dd0:	00c7f463          	bgeu	a5,a2,1dd8 <pvPortMalloc+0x15c>
    1dd4:	84f1a423          	sw	a5,-1976(gp) # 80000050 <xMinimumEverFreeBytesRemaining>
    1dd8:	800007b7          	lui	a5,0x80000
    1ddc:	00f76733          	or	a4,a4,a5
    1de0:	00e42223          	sw	a4,4(s0)
    1de4:	8441a783          	lw	a5,-1980(gp) # 8000004c <xNumberOfSuccessfulAllocations>
    1de8:	00042023          	sw	zero,0(s0)
    1dec:	01090913          	addi	s2,s2,16
    1df0:	00178793          	addi	a5,a5,1 # 80000001 <__crt0_io_space_begin+0x80000201>
    1df4:	84f1a223          	sw	a5,-1980(gp) # 8000004c <xNumberOfSuccessfulAllocations>
    1df8:	e04ff0ef          	jal	ra,13fc <xTaskResumeAll>
    1dfc:	00f97793          	andi	a5,s2,15
    1e00:	f20786e3          	beqz	a5,1d2c <pvPortMalloc+0xb0>
    1e04:	30047073          	csrci	mstatus,8
    1e08:	00100073          	ebreak
    1e0c:	0000006f          	j	1e0c <pvPortMalloc+0x190>

00001e10 <vPortFree>:
    1e10:	08050063          	beqz	a0,1e90 <vPortFree+0x80>
    1e14:	ff452783          	lw	a5,-12(a0)
    1e18:	ff010113          	addi	sp,sp,-16
    1e1c:	00812423          	sw	s0,8(sp)
    1e20:	00112623          	sw	ra,12(sp)
    1e24:	00050413          	mv	s0,a0
    1e28:	0007c863          	bltz	a5,1e38 <vPortFree+0x28>
    1e2c:	30047073          	csrci	mstatus,8
    1e30:	00100073          	ebreak
    1e34:	0000006f          	j	1e34 <vPortFree+0x24>
    1e38:	ff052703          	lw	a4,-16(a0)
    1e3c:	00070863          	beqz	a4,1e4c <vPortFree+0x3c>
    1e40:	30047073          	csrci	mstatus,8
    1e44:	00100073          	ebreak
    1e48:	0000006f          	j	1e48 <vPortFree+0x38>
    1e4c:	00179793          	slli	a5,a5,0x1
    1e50:	0017d793          	srli	a5,a5,0x1
    1e54:	fef52a23          	sw	a5,-12(a0)
    1e58:	bb0ff0ef          	jal	ra,1208 <vTaskSuspendAll>
    1e5c:	84c1a683          	lw	a3,-1972(gp) # 80000054 <xFreeBytesRemaining>
    1e60:	ff442783          	lw	a5,-12(s0)
    1e64:	ff040513          	addi	a0,s0,-16
    1e68:	00d787b3          	add	a5,a5,a3
    1e6c:	84f1a623          	sw	a5,-1972(gp) # 80000054 <xFreeBytesRemaining>
    1e70:	d9dff0ef          	jal	ra,1c0c <prvInsertBlockIntoFreeList>
    1e74:	8401a783          	lw	a5,-1984(gp) # 80000048 <xNumberOfSuccessfulFrees>
    1e78:	00812403          	lw	s0,8(sp)
    1e7c:	00c12083          	lw	ra,12(sp)
    1e80:	00178793          	addi	a5,a5,1
    1e84:	84f1a023          	sw	a5,-1984(gp) # 80000048 <xNumberOfSuccessfulFrees>
    1e88:	01010113          	addi	sp,sp,16
    1e8c:	d70ff06f          	j	13fc <xTaskResumeAll>
    1e90:	00008067          	ret

00001e94 <neorv32_uart0_setup>:
    1e94:	ff010113          	addi	sp,sp,-16
    1e98:	00812423          	sw	s0,8(sp)
    1e9c:	00912223          	sw	s1,4(sp)
    1ea0:	00112623          	sw	ra,12(sp)
    1ea4:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
    1ea8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__crt0_io_space_begin+0x1e0>
    1eac:	00058413          	mv	s0,a1
    1eb0:	00151593          	slli	a1,a0,0x1
    1eb4:	00078513          	mv	a0,a5
    1eb8:	00060493          	mv	s1,a2
    1ebc:	120000ef          	jal	ra,1fdc <__hidden___udivsi3>
    1ec0:	01051513          	slli	a0,a0,0x10
    1ec4:	000017b7          	lui	a5,0x1
    1ec8:	01055513          	srli	a0,a0,0x10
    1ecc:	00000713          	li	a4,0
    1ed0:	ffe78793          	addi	a5,a5,-2 # ffe <xTaskCreate+0x8e>
    1ed4:	04a7e463          	bltu	a5,a0,1f1c <neorv32_uart0_setup+0x88>
    1ed8:	0034f493          	andi	s1,s1,3
    1edc:	01449493          	slli	s1,s1,0x14
    1ee0:	00347413          	andi	s0,s0,3
    1ee4:	fff50793          	addi	a5,a0,-1
    1ee8:	0097e7b3          	or	a5,a5,s1
    1eec:	01641413          	slli	s0,s0,0x16
    1ef0:	0087e7b3          	or	a5,a5,s0
    1ef4:	01871713          	slli	a4,a4,0x18
    1ef8:	00c12083          	lw	ra,12(sp)
    1efc:	00812403          	lw	s0,8(sp)
    1f00:	00e7e7b3          	or	a5,a5,a4
    1f04:	10000737          	lui	a4,0x10000
    1f08:	00e7e7b3          	or	a5,a5,a4
    1f0c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
    1f10:	00412483          	lw	s1,4(sp)
    1f14:	01010113          	addi	sp,sp,16
    1f18:	00008067          	ret
    1f1c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffdc56>
    1f20:	0fd6f693          	andi	a3,a3,253
    1f24:	00069a63          	bnez	a3,1f38 <neorv32_uart0_setup+0xa4>
    1f28:	00355513          	srli	a0,a0,0x3
    1f2c:	00170713          	addi	a4,a4,1
    1f30:	0ff77713          	zext.b	a4,a4
    1f34:	fa1ff06f          	j	1ed4 <neorv32_uart0_setup+0x40>
    1f38:	00155513          	srli	a0,a0,0x1
    1f3c:	ff1ff06f          	j	1f2c <neorv32_uart0_setup+0x98>

00001f40 <neorv32_uart0_putc>:
    1f40:	00040737          	lui	a4,0x40
    1f44:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__crt0_io_space_begin+0x1a0>
    1f48:	00e7f7b3          	and	a5,a5,a4
    1f4c:	fe079ce3          	bnez	a5,1f44 <neorv32_uart0_putc+0x4>
    1f50:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__crt0_io_space_begin+0x1a4>
    1f54:	00008067          	ret

00001f58 <neorv32_uart0_print>:
    1f58:	ff010113          	addi	sp,sp,-16
    1f5c:	00812423          	sw	s0,8(sp)
    1f60:	01212023          	sw	s2,0(sp)
    1f64:	00112623          	sw	ra,12(sp)
    1f68:	00912223          	sw	s1,4(sp)
    1f6c:	00050413          	mv	s0,a0
    1f70:	00a00913          	li	s2,10
    1f74:	00044483          	lbu	s1,0(s0)
    1f78:	00140413          	addi	s0,s0,1
    1f7c:	00049e63          	bnez	s1,1f98 <neorv32_uart0_print+0x40>
    1f80:	00c12083          	lw	ra,12(sp)
    1f84:	00812403          	lw	s0,8(sp)
    1f88:	00412483          	lw	s1,4(sp)
    1f8c:	00012903          	lw	s2,0(sp)
    1f90:	01010113          	addi	sp,sp,16
    1f94:	00008067          	ret
    1f98:	01249663          	bne	s1,s2,1fa4 <neorv32_uart0_print+0x4c>
    1f9c:	00d00513          	li	a0,13
    1fa0:	fa1ff0ef          	jal	ra,1f40 <neorv32_uart0_putc>
    1fa4:	00048513          	mv	a0,s1
    1fa8:	f99ff0ef          	jal	ra,1f40 <neorv32_uart0_putc>
    1fac:	fc9ff06f          	j	1f74 <neorv32_uart0_print+0x1c>

00001fb0 <__mulsi3>:
    1fb0:	00050613          	mv	a2,a0
    1fb4:	00000513          	li	a0,0
    1fb8:	0015f693          	andi	a3,a1,1
    1fbc:	00068463          	beqz	a3,1fc4 <__mulsi3+0x14>
    1fc0:	00c50533          	add	a0,a0,a2
    1fc4:	0015d593          	srli	a1,a1,0x1
    1fc8:	00161613          	slli	a2,a2,0x1
    1fcc:	fe0596e3          	bnez	a1,1fb8 <__mulsi3+0x8>
    1fd0:	00008067          	ret

00001fd4 <__divsi3>:
    1fd4:	06054063          	bltz	a0,2034 <__umodsi3+0x10>
    1fd8:	0605c663          	bltz	a1,2044 <__umodsi3+0x20>

00001fdc <__hidden___udivsi3>:
    1fdc:	00058613          	mv	a2,a1
    1fe0:	00050593          	mv	a1,a0
    1fe4:	fff00513          	li	a0,-1
    1fe8:	02060c63          	beqz	a2,2020 <__hidden___udivsi3+0x44>
    1fec:	00100693          	li	a3,1
    1ff0:	00b67a63          	bgeu	a2,a1,2004 <__hidden___udivsi3+0x28>
    1ff4:	00c05863          	blez	a2,2004 <__hidden___udivsi3+0x28>
    1ff8:	00161613          	slli	a2,a2,0x1
    1ffc:	00169693          	slli	a3,a3,0x1
    2000:	feb66ae3          	bltu	a2,a1,1ff4 <__hidden___udivsi3+0x18>
    2004:	00000513          	li	a0,0
    2008:	00c5e663          	bltu	a1,a2,2014 <__hidden___udivsi3+0x38>
    200c:	40c585b3          	sub	a1,a1,a2
    2010:	00d56533          	or	a0,a0,a3
    2014:	0016d693          	srli	a3,a3,0x1
    2018:	00165613          	srli	a2,a2,0x1
    201c:	fe0696e3          	bnez	a3,2008 <__hidden___udivsi3+0x2c>
    2020:	00008067          	ret

00002024 <__umodsi3>:
    2024:	00008293          	mv	t0,ra
    2028:	fb5ff0ef          	jal	ra,1fdc <__hidden___udivsi3>
    202c:	00058513          	mv	a0,a1
    2030:	00028067          	jr	t0
    2034:	40a00533          	neg	a0,a0
    2038:	00b04863          	bgtz	a1,2048 <__umodsi3+0x24>
    203c:	40b005b3          	neg	a1,a1
    2040:	f9dff06f          	j	1fdc <__hidden___udivsi3>
    2044:	40b005b3          	neg	a1,a1
    2048:	00008293          	mv	t0,ra
    204c:	f91ff0ef          	jal	ra,1fdc <__hidden___udivsi3>
    2050:	40a00533          	neg	a0,a0
    2054:	00028067          	jr	t0

00002058 <__modsi3>:
    2058:	00008293          	mv	t0,ra
    205c:	0005ca63          	bltz	a1,2070 <__modsi3+0x18>
    2060:	00054c63          	bltz	a0,2078 <__modsi3+0x20>
    2064:	f79ff0ef          	jal	ra,1fdc <__hidden___udivsi3>
    2068:	00058513          	mv	a0,a1
    206c:	00028067          	jr	t0
    2070:	40b005b3          	neg	a1,a1
    2074:	fe0558e3          	bgez	a0,2064 <__modsi3+0xc>
    2078:	40a00533          	neg	a0,a0
    207c:	f61ff0ef          	jal	ra,1fdc <__hidden___udivsi3>
    2080:	40b00533          	neg	a0,a1
    2084:	00028067          	jr	t0

00002088 <memcpy>:
    2088:	00b547b3          	xor	a5,a0,a1
    208c:	0037f793          	andi	a5,a5,3
    2090:	00c508b3          	add	a7,a0,a2
    2094:	06079463          	bnez	a5,20fc <memcpy+0x74>
    2098:	00300793          	li	a5,3
    209c:	06c7f063          	bgeu	a5,a2,20fc <memcpy+0x74>
    20a0:	00357793          	andi	a5,a0,3
    20a4:	00050713          	mv	a4,a0
    20a8:	06079a63          	bnez	a5,211c <memcpy+0x94>
    20ac:	ffc8f613          	andi	a2,a7,-4
    20b0:	40e606b3          	sub	a3,a2,a4
    20b4:	02000793          	li	a5,32
    20b8:	08d7ce63          	blt	a5,a3,2154 <memcpy+0xcc>
    20bc:	00058693          	mv	a3,a1
    20c0:	00070793          	mv	a5,a4
    20c4:	02c77863          	bgeu	a4,a2,20f4 <memcpy+0x6c>
    20c8:	0006a803          	lw	a6,0(a3)
    20cc:	00478793          	addi	a5,a5,4
    20d0:	00468693          	addi	a3,a3,4
    20d4:	ff07ae23          	sw	a6,-4(a5)
    20d8:	fec7e8e3          	bltu	a5,a2,20c8 <memcpy+0x40>
    20dc:	fff60793          	addi	a5,a2,-1
    20e0:	40e787b3          	sub	a5,a5,a4
    20e4:	ffc7f793          	andi	a5,a5,-4
    20e8:	00478793          	addi	a5,a5,4
    20ec:	00f70733          	add	a4,a4,a5
    20f0:	00f585b3          	add	a1,a1,a5
    20f4:	01176863          	bltu	a4,a7,2104 <memcpy+0x7c>
    20f8:	00008067          	ret
    20fc:	00050713          	mv	a4,a0
    2100:	05157863          	bgeu	a0,a7,2150 <memcpy+0xc8>
    2104:	0005c783          	lbu	a5,0(a1)
    2108:	00170713          	addi	a4,a4,1 # 40001 <__crt0_copy_data_src_begin+0x3dc59>
    210c:	00158593          	addi	a1,a1,1
    2110:	fef70fa3          	sb	a5,-1(a4)
    2114:	fee898e3          	bne	a7,a4,2104 <memcpy+0x7c>
    2118:	00008067          	ret
    211c:	0005c683          	lbu	a3,0(a1)
    2120:	00170713          	addi	a4,a4,1
    2124:	00377793          	andi	a5,a4,3
    2128:	fed70fa3          	sb	a3,-1(a4)
    212c:	00158593          	addi	a1,a1,1
    2130:	f6078ee3          	beqz	a5,20ac <memcpy+0x24>
    2134:	0005c683          	lbu	a3,0(a1)
    2138:	00170713          	addi	a4,a4,1
    213c:	00377793          	andi	a5,a4,3
    2140:	fed70fa3          	sb	a3,-1(a4)
    2144:	00158593          	addi	a1,a1,1
    2148:	fc079ae3          	bnez	a5,211c <memcpy+0x94>
    214c:	f61ff06f          	j	20ac <memcpy+0x24>
    2150:	00008067          	ret
    2154:	ff010113          	addi	sp,sp,-16
    2158:	00812623          	sw	s0,12(sp)
    215c:	02000413          	li	s0,32
    2160:	0005a383          	lw	t2,0(a1)
    2164:	0045a283          	lw	t0,4(a1)
    2168:	0085af83          	lw	t6,8(a1)
    216c:	00c5af03          	lw	t5,12(a1)
    2170:	0105ae83          	lw	t4,16(a1)
    2174:	0145ae03          	lw	t3,20(a1)
    2178:	0185a303          	lw	t1,24(a1)
    217c:	01c5a803          	lw	a6,28(a1)
    2180:	0205a683          	lw	a3,32(a1)
    2184:	02470713          	addi	a4,a4,36
    2188:	40e607b3          	sub	a5,a2,a4
    218c:	fc772e23          	sw	t2,-36(a4)
    2190:	fe572023          	sw	t0,-32(a4)
    2194:	fff72223          	sw	t6,-28(a4)
    2198:	ffe72423          	sw	t5,-24(a4)
    219c:	ffd72623          	sw	t4,-20(a4)
    21a0:	ffc72823          	sw	t3,-16(a4)
    21a4:	fe672a23          	sw	t1,-12(a4)
    21a8:	ff072c23          	sw	a6,-8(a4)
    21ac:	fed72e23          	sw	a3,-4(a4)
    21b0:	02458593          	addi	a1,a1,36
    21b4:	faf446e3          	blt	s0,a5,2160 <memcpy+0xd8>
    21b8:	00058693          	mv	a3,a1
    21bc:	00070793          	mv	a5,a4
    21c0:	02c77863          	bgeu	a4,a2,21f0 <memcpy+0x168>
    21c4:	0006a803          	lw	a6,0(a3)
    21c8:	00478793          	addi	a5,a5,4
    21cc:	00468693          	addi	a3,a3,4
    21d0:	ff07ae23          	sw	a6,-4(a5)
    21d4:	fec7e8e3          	bltu	a5,a2,21c4 <memcpy+0x13c>
    21d8:	fff60793          	addi	a5,a2,-1
    21dc:	40e787b3          	sub	a5,a5,a4
    21e0:	ffc7f793          	andi	a5,a5,-4
    21e4:	00478793          	addi	a5,a5,4
    21e8:	00f70733          	add	a4,a4,a5
    21ec:	00f585b3          	add	a1,a1,a5
    21f0:	01176863          	bltu	a4,a7,2200 <memcpy+0x178>
    21f4:	00c12403          	lw	s0,12(sp)
    21f8:	01010113          	addi	sp,sp,16
    21fc:	00008067          	ret
    2200:	0005c783          	lbu	a5,0(a1)
    2204:	00170713          	addi	a4,a4,1
    2208:	00158593          	addi	a1,a1,1
    220c:	fef70fa3          	sb	a5,-1(a4)
    2210:	fee882e3          	beq	a7,a4,21f4 <memcpy+0x16c>
    2214:	0005c783          	lbu	a5,0(a1)
    2218:	00170713          	addi	a4,a4,1
    221c:	00158593          	addi	a1,a1,1
    2220:	fef70fa3          	sb	a5,-1(a4)
    2224:	fce89ee3          	bne	a7,a4,2200 <memcpy+0x178>
    2228:	fcdff06f          	j	21f4 <memcpy+0x16c>

0000222c <memset>:
    222c:	00f00313          	li	t1,15
    2230:	00050713          	mv	a4,a0
    2234:	02c37e63          	bgeu	t1,a2,2270 <memset+0x44>
    2238:	00f77793          	andi	a5,a4,15
    223c:	0a079063          	bnez	a5,22dc <memset+0xb0>
    2240:	08059263          	bnez	a1,22c4 <memset+0x98>
    2244:	ff067693          	andi	a3,a2,-16
    2248:	00f67613          	andi	a2,a2,15
    224c:	00e686b3          	add	a3,a3,a4
    2250:	00b72023          	sw	a1,0(a4)
    2254:	00b72223          	sw	a1,4(a4)
    2258:	00b72423          	sw	a1,8(a4)
    225c:	00b72623          	sw	a1,12(a4)
    2260:	01070713          	addi	a4,a4,16
    2264:	fed766e3          	bltu	a4,a3,2250 <memset+0x24>
    2268:	00061463          	bnez	a2,2270 <memset+0x44>
    226c:	00008067          	ret
    2270:	40c306b3          	sub	a3,t1,a2
    2274:	00269693          	slli	a3,a3,0x2
    2278:	00000297          	auipc	t0,0x0
    227c:	005686b3          	add	a3,a3,t0
    2280:	00c68067          	jr	12(a3)
    2284:	00b70723          	sb	a1,14(a4)
    2288:	00b706a3          	sb	a1,13(a4)
    228c:	00b70623          	sb	a1,12(a4)
    2290:	00b705a3          	sb	a1,11(a4)
    2294:	00b70523          	sb	a1,10(a4)
    2298:	00b704a3          	sb	a1,9(a4)
    229c:	00b70423          	sb	a1,8(a4)
    22a0:	00b703a3          	sb	a1,7(a4)
    22a4:	00b70323          	sb	a1,6(a4)
    22a8:	00b702a3          	sb	a1,5(a4)
    22ac:	00b70223          	sb	a1,4(a4)
    22b0:	00b701a3          	sb	a1,3(a4)
    22b4:	00b70123          	sb	a1,2(a4)
    22b8:	00b700a3          	sb	a1,1(a4)
    22bc:	00b70023          	sb	a1,0(a4)
    22c0:	00008067          	ret
    22c4:	0ff5f593          	zext.b	a1,a1
    22c8:	00859693          	slli	a3,a1,0x8
    22cc:	00d5e5b3          	or	a1,a1,a3
    22d0:	01059693          	slli	a3,a1,0x10
    22d4:	00d5e5b3          	or	a1,a1,a3
    22d8:	f6dff06f          	j	2244 <memset+0x18>
    22dc:	00279693          	slli	a3,a5,0x2
    22e0:	00000297          	auipc	t0,0x0
    22e4:	005686b3          	add	a3,a3,t0
    22e8:	00008293          	mv	t0,ra
    22ec:	fa0680e7          	jalr	-96(a3)
    22f0:	00028093          	mv	ra,t0
    22f4:	ff078793          	addi	a5,a5,-16
    22f8:	40f70733          	sub	a4,a4,a5
    22fc:	00f60633          	add	a2,a2,a5
    2300:	f6c378e3          	bgeu	t1,a2,2270 <memset+0x44>
    2304:	f3dff06f          	j	2240 <memset+0x14>
