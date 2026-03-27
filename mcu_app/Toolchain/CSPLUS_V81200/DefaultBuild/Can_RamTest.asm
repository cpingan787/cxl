#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Mcal\can\src\Can_RamTest.c -oDefaultBuild\Can_RamTest.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_88eaf6b1a9874e588e8cc2ffd5ad7defmgvh21tv.wz5
#@	compiled at Fri Mar 27 09:50:45 2026

	.file "..\..\Bsw\Mcal\can\src\Can_RamTest.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Can_GaaRegs
	.extern _Can_GulPageID
	.public _Can_RamTest_Checker_Algorithm
	.public _Can_RamTst_WalkPath_Algorithm
	.public _Can_RamTst_Set_RAMData

	.section .text, text
_Can_RamTest_Checker_Algorithm:
	.stack _Can_RamTest_Checker_Algorithm = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 290
	mulhi 0x0000001C, r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 308
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 316
	ld.w 0x0000000C[r5], r5
	movea 0x00007575, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 329
	st.w r7, 0x0000047C[r2]
	ori 0x00008A8A, r0, r7
	st.w r7, 0x0000047C[r2]
	mov 0x00000004, r7
	st.w r7, 0x0000046C[r2]
	mov 0xAAAAAAAA, r7
	mov 0x00000000, r8
	mov r8, r10
	br9 .BB.LABEL.1_8
.BB.LABEL.1_1:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 341
	movhi HIGHW1(#_Can_GulPageID), r0, r11
	ld.w LOWW(#_Can_GulPageID)[r11], r11
	shl 0x00000010, r11
	st.w r11, 0x00000468[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 348
	andi 0x000000FF, r9, r11
	shl 0x00000002, r11
	add r5, r11
	st.w r7, 0x00005F00[r11]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 351
	add 0x00000001, r9
	not r7, r7
.BB.LABEL.1_2:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 337
	andi 0x000000FF, r9, r11
	cmp r6, r11
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 354
	andi 0x00000001, r6, r0
	mov 0xFFFFFFFF, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 356
	cmov 0x00000002, 0x00000000, r9, r9
	mov 0x00000000, r11
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 369
	movhi HIGHW1(#_Can_GulPageID), r0, r9
	ld.w LOWW(#_Can_GulPageID)[r9], r9
	shl 0x00000010, r9
	st.w r9, 0x00000468[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 377
	andi 0x000000FF, r11, r9
	shl 0x00000002, r9
	add r5, r9
	ld.w 0x00005F00[r9], r9
	cmp r9, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 380
	cmov 0x0000000A, 0x00000001, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 386
	add 0x00000001, r11
	mov 0xFFFFFFFF, r9
.BB.LABEL.1_5:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 0
	xor r9, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 364
	andi 0x000000FF, r11, r9
	cmp r6, r9
	bnc9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_7:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 388
	add 0x00000001, r8
	mov 0x55555555, r7
.BB.LABEL.1_8:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 332
	andi 0x000000FF, r8, r9
	cmp 0x00000001, r9
	bgt9 .BB.LABEL.1_11
.BB.LABEL.1_9:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 0
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; bb109.bb51_crit_edge
	mov 0x00000000, r9
	br9 .BB.LABEL.1_2
.BB.LABEL.1_11:	; bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 392
	zxb r10
	jmp [r31]
_Can_RamTst_WalkPath_Algorithm:
	.stack _Can_RamTst_WalkPath_Algorithm = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 427
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 452
	mulhi 0x0000001C, r7, r2
	mov #_Can_GaaRegs, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 460
	ld.w 0x0000000C[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 452
	ld.w 0x00000004[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 472
	cmp 0x00000000, r8
	mov r6, r22
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 0
	mov 0x00000001, r8
	mov 0xFFFFFFFF, r23
	br9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_else_bb
	mov 0x00000000, r23
	mov r23, r8
.BB.LABEL.2_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 483
	mov r22, r6
	jarl _Can_RamTst_Set_RAMData, r31
	movea 0x00007575, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 487
	st.w r2, 0x0000047C[r21]
	ori 0x00008A8A, r0, r2
	st.w r2, 0x0000047C[r21]
	mov 0x00000004, r2
	st.w r2, 0x0000046C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 484
	mov r22, r2
	shl 0x00000005, r2
	mov 0x00000000, r5
	mov r5, r10
	br9 .BB.LABEL.2_13
.BB.LABEL.2_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 498
	movhi HIGHW1(#_Can_GulPageID), r0, r6
	ld.w LOWW(#_Can_GulPageID)[r6], r6
	shl 0x00000010, r6
	st.w r6, 0x00000468[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 506
	andi 0x0000001F, r5, r6
	mov 0x00000001, r7
	shl r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 494
	mov r5, r6
	shr 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 506
	andi 0x000003FC, r6, r6
	add r20, r6
	ld.w 0x00005F00[r6], r8
	xor r7, r8
	st.w r8, 0x00005F00[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 494
	mov r5, r6
	shr 0x00000005, r6
	mov 0x00000000, r7
	br9 .BB.LABEL.2_10
.BB.LABEL.2_5:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 517
	st.w r8, 0x00000468[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 524
	andi 0x000000FF, r7, r8
	andi 0x000000FF, r6, r9
	cmp r9, r8
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 527
	andi 0x0000001F, r5, r8
	mov 0x00000001, r9
	shl r8, r9
	xor r23, r9
	andi 0x000000FF, r6, r8
	shl 0x00000002, r8
	add r20, r8
	ld.w 0x00005F00[r8], r8
	cmp r8, r9
	bnz9 .BB.LABEL.2_8
	br9 .BB.LABEL.2_9
.BB.LABEL.2_7:	; if_else_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 540
	andi 0x000000FF, r7, r8
	shl 0x00000002, r8
	add r20, r8
	ld.w 0x00005F00[r8], r8
	cmp r8, r23
	bz9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; if_then_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 0
	mov 0x00000001, r10
.BB.LABEL.2_9:	; if_break_bb112
	add 0x00000001, r7
.BB.LABEL.2_10:	; bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 512
	movhi HIGHW1(#_Can_GulPageID), r0, r8
	ld.w LOWW(#_Can_GulPageID)[r8], r8
	shl 0x00000010, r8
	andi 0x000000FF, r7, r9
	cmp r22, r9
	bnc9 .BB.LABEL.2_12
.BB.LABEL.2_11:	; bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_12:	; bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 551
	st.w r8, 0x00000468[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 559
	andi 0x0000001F, r5, r7
	mov 0x00000001, r8
	shl r7, r8
	zxb r6
	shl 0x00000002, r6
	add r20, r6
	ld.w 0x00005F00[r6], r7
	xor r8, r7
	st.w r7, 0x00005F00[r6]
	add 0x00000001, r5
.BB.LABEL.2_13:	; bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 491
	cmp r2, r5
	bnc9 .BB.LABEL.2_15
.BB.LABEL.2_14:	; bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_15:	; bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 566
	zxb r10
	dispose 0x00000000, 0x00000079, [r31]
_Can_RamTst_Set_RAMData:
	.stack _Can_RamTst_Set_RAMData = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 600
	mulhi 0x0000001C, r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 613
	mov #_Can_GaaRegs, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 621
	ld.w 0x0000000C[r5], r5
	movea 0x00007575, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 643
	st.w r7, 0x0000047C[r2]
	ori 0x00008A8A, r0, r7
	st.w r7, 0x0000047C[r2]
	mov 0x00000004, r7
	st.w r7, 0x0000046C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 634
	cmp 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 640
	cmov 0x00000002, 0xFFFFFFFF, r0, r7
	mov 0x00000000, r8
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 651
	movhi HIGHW1(#_Can_GulPageID), r0, r9
	ld.w LOWW(#_Can_GulPageID)[r9], r9
	shl 0x00000010, r9
	st.w r9, 0x00000468[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 658
	andi 0x000000FF, r8, r9
	shl 0x00000002, r9
	add r5, r9
	st.w r7, 0x00005F00[r9]
	add 0x00000001, r8
.BB.LABEL.3_2:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 647
	andi 0x000000FF, r8, r9
	cmp r6, r9
	bl9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Mcal/can/src/Can_RamTest.c", 662
	jmp [r31]
