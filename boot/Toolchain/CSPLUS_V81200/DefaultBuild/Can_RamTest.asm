#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\can\src\Can_RamTest.c -oDefaultBuild\Can_RamTest.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_5ac1c6fa3b1d4e6e8cb9a0484d9d9c36xg5nbmmy.2u2
#@	compiled at Thu Jul 16 13:41:33 2026

	.file "..\..\Bsw\Mcal\can\src\Can_RamTest.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Can_GaaRegs
	.extern _Can_GulPageID
	.public _Can_RamTest_Checker_Algorithm
	.public _Can_RamTst_WalkPath_Algorithm
	.public _Can_RamTst_Set_RAMData

	.section .text, text
_Can_RamTest_Checker_Algorithm:
	.stack _Can_RamTest_Checker_Algorithm = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 290
	mulhi 0x0000001C, r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 308
	mov #_Can_GaaRegs, r7
	add r5, r7
	ld.w 0x00000004[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 316
	ld.w 0x0000000C[r7], r7
	movea 0x00007575, r0, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 329
	st.w r8, 0x0000047C[r5]
	ori 0x00008A8A, r0, r8
	st.w r8, 0x0000047C[r5]
	mov 0x00000004, r8
	st.w r8, 0x0000046C[r5]
	mov 0xAAAAAAAA, r8
	mov 0x00000000, r9
	mov r9, r10
	br9 .BB.LABEL.1_8
.BB.LABEL.1_1:	; bb39
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 341
	movhi HIGHW1(#_Can_GulPageID), r0, r12
	ld.w LOWW(#_Can_GulPageID)[r12], r12
	shl 0x00000010, r12
	st.w r12, 0x00000468[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 348
	andi 0x000000FF, r11, r12
	shl 0x00000002, r12
	add r7, r12
	st.w r8, 0x00005F00[r12]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 351
	add 0x00000001, r11
	not r8, r8
.BB.LABEL.1_2:	; bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 337
	andi 0x000000FF, r11, r12
	cmp r6, r12
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 354
	andi 0x00000001, r6, r0
	mov 0xFFFFFFFF, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 356
	cmov 0x00000002, 0x00000000, r11, r11
	mov 0x00000000, r12
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 369
	movhi HIGHW1(#_Can_GulPageID), r0, r11
	ld.w LOWW(#_Can_GulPageID)[r11], r11
	shl 0x00000010, r11
	st.w r11, 0x00000468[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 377
	andi 0x000000FF, r12, r11
	shl 0x00000002, r11
	add r7, r11
	ld.w 0x00005F00[r11], r11
	cmp r11, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 380
	cmov 0x0000000A, 0x00000001, r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 386
	add 0x00000001, r12
	mov 0xFFFFFFFF, r11
.BB.LABEL.1_5:	; bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 0
	xor r11, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 364
	andi 0x000000FF, r12, r11
	cmp r6, r11
	bnc9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_7:	; bb106
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 388
	add 0x00000001, r9
	mov 0x55555555, r8
.BB.LABEL.1_8:	; bb109
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 332
	andi 0x000000FF, r9, r11
	cmp 0x00000001, r11
	bgt9 .BB.LABEL.1_11
.BB.LABEL.1_9:	; bb109
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 0
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; bb109.bb51_crit_edge
	mov 0x00000000, r11
	br9 .BB.LABEL.1_2
.BB.LABEL.1_11:	; bb127
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 392
	zxb r10
	jmp [r31]
_Can_RamTst_WalkPath_Algorithm:
	.stack _Can_RamTst_WalkPath_Algorithm = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 427
	prepare 0x00000385, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 452
	mulhi 0x0000001C, r7, r5
	mov #_Can_GaaRegs, r9
	add r5, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 460
	ld.w 0x0000000C[r9], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 452
	ld.w 0x00000004[r9], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 472
	cmp 0x00000000, r8
	mov r6, r27
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 0
	mov 0x00000001, r8
	mov 0xFFFFFFFF, r28
	br9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_else_bb
	mov 0x00000000, r28
	mov r28, r8
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 483
	mov r27, r6
	jarl _Can_RamTst_Set_RAMData, r31
	movea 0x00007575, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 487
	st.w r5, 0x0000047C[r26]
	ori 0x00008A8A, r0, r5
	st.w r5, 0x0000047C[r26]
	mov 0x00000004, r5
	st.w r5, 0x0000046C[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 484
	mov r27, r5
	shl 0x00000005, r5
	mov 0x00000000, r6
	mov r6, r10
	br9 .BB.LABEL.2_13
.BB.LABEL.2_4:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 498
	movhi HIGHW1(#_Can_GulPageID), r0, r7
	ld.w LOWW(#_Can_GulPageID)[r7], r7
	shl 0x00000010, r7
	st.w r7, 0x00000468[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 506
	andi 0x0000001F, r6, r7
	mov 0x00000001, r8
	shl r7, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 494
	mov r6, r7
	shr 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 506
	andi 0x000003FC, r7, r7
	add r25, r7
	ld.w 0x00005F00[r7], r9
	xor r8, r9
	st.w r9, 0x00005F00[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 494
	mov r6, r7
	shr 0x00000005, r7
	mov 0x00000000, r8
	br9 .BB.LABEL.2_10
.BB.LABEL.2_5:	; bb71
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 517
	st.w r9, 0x00000468[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 524
	andi 0x000000FF, r8, r9
	andi 0x000000FF, r7, r11
	cmp r11, r9
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 527
	andi 0x0000001F, r6, r9
	mov 0x00000001, r11
	shl r9, r11
	xor r28, r11
	andi 0x000000FF, r7, r9
	shl 0x00000002, r9
	add r25, r9
	ld.w 0x00005F00[r9], r9
	cmp r9, r11
	bnz9 .BB.LABEL.2_8
	br9 .BB.LABEL.2_9
.BB.LABEL.2_7:	; if_else_bb99
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 540
	andi 0x000000FF, r8, r9
	shl 0x00000002, r9
	add r25, r9
	ld.w 0x00005F00[r9], r9
	cmp r9, r28
	bz9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_then_bb109
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 0
	mov 0x00000001, r10
.BB.LABEL.2_9:	; if_break_bb112
	add 0x00000001, r8
.BB.LABEL.2_10:	; bb115
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 512
	movhi HIGHW1(#_Can_GulPageID), r0, r9
	ld.w LOWW(#_Can_GulPageID)[r9], r9
	shl 0x00000010, r9
	andi 0x000000FF, r8, r11
	cmp r27, r11
	bnc9 .BB.LABEL.2_12
.BB.LABEL.2_11:	; bb115
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_12:	; bb134
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 551
	st.w r9, 0x00000468[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 559
	andi 0x0000001F, r6, r8
	mov 0x00000001, r9
	shl r8, r9
	zxb r7
	shl 0x00000002, r7
	add r25, r7
	ld.w 0x00005F00[r7], r8
	xor r9, r8
	st.w r8, 0x00005F00[r7]
	add 0x00000001, r6
.BB.LABEL.2_13:	; bb149
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 491
	cmp r5, r6
	bnc9 .BB.LABEL.2_15
.BB.LABEL.2_14:	; bb149
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_15:	; bb167
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 566
	zxb r10
	dispose 0x00000000, 0x00000385, [r31]
_Can_RamTst_Set_RAMData:
	.stack _Can_RamTst_Set_RAMData = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 600
	mulhi 0x0000001C, r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 613
	mov #_Can_GaaRegs, r7
	add r5, r7
	ld.w 0x00000004[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 621
	ld.w 0x0000000C[r7], r7
	movea 0x00007575, r0, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 643
	st.w r9, 0x0000047C[r5]
	ori 0x00008A8A, r0, r9
	st.w r9, 0x0000047C[r5]
	mov 0x00000004, r9
	st.w r9, 0x0000046C[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 634
	cmp 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 640
	cmov 0x00000002, 0xFFFFFFFF, r0, r8
	mov 0x00000000, r9
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 651
	movhi HIGHW1(#_Can_GulPageID), r0, r10
	ld.w LOWW(#_Can_GulPageID)[r10], r10
	shl 0x00000010, r10
	st.w r10, 0x00000468[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 658
	andi 0x000000FF, r9, r10
	shl 0x00000002, r10
	add r7, r10
	st.w r8, 0x00005F00[r10]
	add 0x00000001, r9
.BB.LABEL.3_2:	; bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 647
	andi 0x000000FF, r9, r10
	cmp r6, r10
	bl9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/Mcal/can/src/Can_RamTest.c", 662
	jmp [r31]
