#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Memory\Fee\Fee.c -oDefaultBuild\Fee.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_334cf1e1e8a14a098a0603c523760988wrj2tjfv.sqx
#@	compiled at Fri Mar 27 09:50:42 2026

	.file "..\..\Bsw\Memory\Fee\Fee.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Fee_ClusterGroupConfig
	.public _Fee_Init
	.extern _Det_ReportError
	.extern _Det_ReportRuntimeError
	.public _Fee_SetMode
	.public _Fee_Read
	.extern _SuspendAllInterrupts
	.extern _ResumeAllInterrupts
	.public _Fee_Write
	.public _Fee_Cancel
	.public _Fee_GetStatus
	.public _Fee_GetJobResult
	.public _Fee_InvalidateBlock
	.public _Fee_EraseImmediateBlock
	.public _Fee_MainFunction
	.extern _Fls_GetJobResult
	.public _Fee_JobEndNotification
	.public _Fee_JobErrorNotification
	.extern _Fls_Read
	.extern _Fls_Write
	.extern _Fls_Erase

	.section .text, text
_Fee_Init:
	.stack _Fee_Init = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 344
	prepare 0x00000061, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 348
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	mov 0x00000004, r9
	mov 0x00000000, r21
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 350
	mov r21, r7
	mov r21, r8
	jarl _Det_ReportError, r31
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 354
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb21
	mov 0x00000006, r9
	mov 0x00000000, r21
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 356
	mov r21, r7
	mov r21, r8
	jarl _Det_ReportRuntimeError, r31
.BB.LABEL.1_6:	; if_break_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 359
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_7:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 362
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r2
	st.w r20, LOWW(#_Fee_ConfigStd.1)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 366
	andi 0x0000FFFF, r2, r5
	mul 0x0000000C, r5, r0
	mov #_Fee_BlockInfo.3, r6
	add r5, r6
	mov 0x00000002, r5
	st.w r5, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 367
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 371
	st.w r0, 0x00000004[r6]
	add 0x00000001, r2
.BB.LABEL.1_9:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 364
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r5
	ld.w LOWW(#_Fee_ConfigStd.1)[r5], r5
	ld.hu 0x00000000[r5], r5
	andi 0x0000FFFF, r2, r6
	cmp r5, r6
	bl9 .BB.LABEL.1_8
.BB.LABEL.1_10:	; bb46.bb76_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 378
	andi 0x000000FF, r2, r5
	shl 0x00000004, r5
	mov #_Fee_ClusterGrpInfo.4, r6
	add r5, r6
	st.b r0, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 379
	st.w r0, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 380
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 381
	st.w r0, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.1_12:	; bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 375
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_13:	; bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 384
	mov #_Fee_JobInfo.5, r2
	st.h r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 385
	st.w r0, 0x00000004[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 386
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 387
	st.w r0, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 388
	st.w r0, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 389
	st.w r0, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 390
	st.w r0, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 391
	st.b r0, 0x00000022[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 392
	st.h r0, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 393
	st.w r0, 0x00000028[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 394
	st.w r0, 0x00000024[r2]
	movea 0x00000014, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 395
	st.w r5, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 396
	movhi HIGHW1(#_Fee_BlockHeaderAddr.9), r0, r2
	st.w r0, LOWW(#_Fee_BlockHeaderAddr.9)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 398
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	mov 0x00000003, r5
	st.w r5, LOWW(#_Fee_ModuleStatus.2)[r2]
.BB.LABEL.1_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 400
	dispose 0x00000000, 0x00000061, [r31]
_Fee_SetMode:
	.stack _Fee_SetMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 414
	jmp [r31]
_Fee_Read:
	.stack _Fee_Read = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 454
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 461
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000000, r2
	mov r9, r20
	mov r8, r21
	mov r7, r22
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r20
	mov 0x00000002, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 464
	mov r20, r9
	jarl _Det_ReportError, r31
	mov r20, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 469
	jarl _Fee_GetBlockId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 471
	cmp 0x00000000, r21
	mov r10, r23
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000004, r9
	br9 .BB.LABEL.3_8
.BB.LABEL.3_4:	; if_else_bb18
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 475
	cmp r2, r23
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000002, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 477
	mov r8, r9
	br9 .BB.LABEL.3_9
.BB.LABEL.3_6:	; if_else_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 479
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r2
	ld.w LOWW(#_Fee_ConfigStd.1)[r2], r2
	ld.w 0x00000004[r2], r2
	mov r23, r5
	mul 0x00000006, r5, r0
	add r5, r2
	ld.hu 0x00000002[r2], r2
	cmp r2, r22
	bl9 .BB.LABEL.3_10
.BB.LABEL.3_7:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000003, r9
.BB.LABEL.3_8:	; if_then_bb41
	mov 0x00000002, r8
.BB.LABEL.3_9:	; if_then_bb41
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 513
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.3_10:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 483
	cmp 0x00000000, r20
	bz9 .BB.LABEL.3_12
.BB.LABEL.3_11:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r2
	ld.w LOWW(#_Fee_ConfigStd.1)[r2], r2
	ld.w 0x00000004[r2], r2
	mov r23, r5
	mul 0x00000006, r5, r0
	add r5, r2
	ld.hu 0x00000002[r2], r2
	mov r22, r5
	add r20, r5
	cmp r2, r5
	ble9 .BB.LABEL.3_13
.BB.LABEL.3_12:	; if_then_bb71
	mov 0x00000005, r9
	br9 .BB.LABEL.3_8
.BB.LABEL.3_13:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 491
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.3_16
.BB.LABEL.3_14:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	cmp 0x00000003, r2
	bz9 .BB.LABEL.3_16
.BB.LABEL.3_15:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 494
	jarl _SuspendAllInterrupts, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 495
	mov #_Fee_JobInfo.5, r2
	st.h r23, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 496
	st.w r22, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 497
	st.w r20, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 498
	st.w r21, 0x0000000C[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 499
	st.w r5, 0x00000004[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 500
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 502
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	st.w r5, LOWW(#_Fee_ModuleStatus.2)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 504
	jarl _ResumeAllInterrupts, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.3_16:	; if_else_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000006, r9
	mov 0x00000002, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 508
	jarl _Det_ReportRuntimeError, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000079, [r31]
_Fee_Write:
	.stack _Fee_Write = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 529
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 532
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r20
	mov 0x00000003, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 535
	mov r20, r9
	jarl _Det_ReportError, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 540
	jarl _Fee_GetBlockId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 542
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_3:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000004, r9
.BB.LABEL.4_4:	; if_then_bb14
	mov 0x00000003, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 571
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_5:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 546
	cmp r2, r10
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000002, r9
	br9 .BB.LABEL.4_4
.BB.LABEL.4_7:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 553
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.4_10
.BB.LABEL.4_8:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	cmp 0x00000003, r2
	bz9 .BB.LABEL.4_10
.BB.LABEL.4_9:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 556
	mov #_Fee_JobInfo.5, r2
	st.h r10, 0x00000000[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 557
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 558
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 559
	st.w r20, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 561
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	st.w r5, LOWW(#_Fee_ModuleStatus.2)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 562
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.4_10:	; if_else_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000006, r9
	mov 0x00000003, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 566
	jarl _Det_ReportRuntimeError, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000041, [r31]
_Fee_Cancel:
	.stack _Fee_Cancel = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 585
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 615
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r9
	mov 0x00000004, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 617
	jarl _Det_ReportError, r31
.BB.LABEL.5_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 621
	dispose 0x00000000, 0x00000001, [r31]
_Fee_GetStatus:
	.stack _Fee_GetStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 636
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 637
	jmp [r31]
_Fee_GetJobResult:
	.stack _Fee_GetJobResult = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 651
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 654
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r20
	mov 0x00000006, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 657
	mov r20, r9
	jarl _Det_ReportError, r31
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 662
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	ld.w LOWW(#_Fee_JobInfo.5+0x00000008)[r2], r10
	dispose 0x00000000, 0x00000041, [r31]
_Fee_InvalidateBlock:
	.stack _Fee_InvalidateBlock = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 679
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 682
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r20
	mov 0x00000007, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 685
	mov r20, r9
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 687
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.8_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 691
	jarl _Fee_GetBlockId.1, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 692
	cmp r2, r10
	mov r10, r20
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_then_bb14
	mov 0x00000002, r9
	mov 0x00000007, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 695
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
.BB.LABEL.8_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 703
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; if_then_bb30
	mov 0x00000006, r9
	mov 0x00000007, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 705
	jarl _Det_ReportRuntimeError, r31
	mov 0x00000001, r10
.BB.LABEL.8_8:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 708
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_10
.BB.LABEL.8_9:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 711
	mov #_Fee_JobInfo.5, r2
	st.h r20, 0x00000000[r2]
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 712
	st.w r5, 0x00000004[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 713
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 715
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	st.w r5, LOWW(#_Fee_ModuleStatus.2)[r2]
.BB.LABEL.8_10:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 719
	dispose 0x00000000, 0x00000041, [r31]
_Fee_EraseImmediateBlock:
	.stack _Fee_EraseImmediateBlock = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 764
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 767
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r20
	mov 0x00000009, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 770
	mov r20, r9
	jarl _Det_ReportError, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 772
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 776
	jarl _Fee_GetBlockId.1, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 777
	cmp r2, r10
	mov r10, r20
	bz9 .BB.LABEL.9_5
.BB.LABEL.9_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r2
	ld.w LOWW(#_Fee_ConfigStd.1)[r2], r2
	ld.w 0x00000004[r2], r2
	mov r20, r5
	mul 0x00000006, r5, r0
	add r5, r2
	ld.bu 0x00000004[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; bb.if_break_bb_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_then_bb31
	mov 0x00000002, r9
	mov 0x00000009, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 780
	jarl _Det_ReportError, r31
	mov 0x00000001, r10
.BB.LABEL.9_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 788
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.9_9
.BB.LABEL.9_8:	; if_then_bb49
	mov 0x00000006, r9
	mov 0x00000009, r8
	mov 0x00000000, r7
	movea 0x00000015, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 790
	jarl _Det_ReportRuntimeError, r31
	mov 0x00000001, r10
.BB.LABEL.9_9:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 793
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_11
.BB.LABEL.9_10:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 796
	mov #_Fee_JobInfo.5, r2
	st.h r20, 0x00000000[r2]
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 797
	st.w r5, 0x00000004[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 798
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 800
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	st.w r5, LOWW(#_Fee_ModuleStatus.2)[r2]
.BB.LABEL.9_11:	; if_break_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 804
	dispose 0x00000000, 0x00000041, [r31]
_Fee_MainFunction:
	.stack _Fee_MainFunction = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 819
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 824
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_18
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 826
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	ld.w LOWW(#_Fee_JobInfo.5+0x00000008)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.10_18
.BB.LABEL.10_2:	; if_then_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 830
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r2
	ld.w LOWW(#_Fee_JobInfo.5+0x00000004)[r2], r2
	cmp 0x00000005, r2
	blt9 .BB.LABEL.10_7
.BB.LABEL.10_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 832
	jarl _Fls_GetJobResult, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 833
	cmp 0x00000002, r10
	bz9 .BB.LABEL.10_18
.BB.LABEL.10_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 837
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 840
	jarl _Fee_FlsJobEndHandle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_6:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 851
	jarl _Fee_FlsJobErrorHandle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_7:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 863
	cmp 0x00000004, r2
	bh9 .BB.LABEL.10_14
.BB.LABEL.10_8:	; if_else_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.10_21[r2]
.SWITCH.LABEL.10_21:
	br9 .BB.LABEL.10_9
	br9 .BB.LABEL.10_10
	br9 .BB.LABEL.10_11
	br9 .BB.LABEL.10_12
	br9 .BB.LABEL.10_13
.SWITCH.LABEL.10_21.END:
.BB.LABEL.10_9:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 866
	jarl _Fee_JobInitScan.1, r31
	br9 .BB.LABEL.10_14
.BB.LABEL.10_10:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 869
	jarl _Fee_JobRead.1, r31
	br9 .BB.LABEL.10_14
.BB.LABEL.10_11:	; switch_clause_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 872
	jarl _Fee_JobWrite.1, r31
	br9 .BB.LABEL.10_14
.BB.LABEL.10_12:	; switch_clause_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 875
	jarl _Fee_JobInvalBlock.1, r31
	br9 .BB.LABEL.10_14
.BB.LABEL.10_13:	; switch_clause_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 878
	jarl _Fee_JobEraseImmediate.1, r31
.BB.LABEL.10_14:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 884
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	ld.w LOWW(#_Fee_JobInfo.5+0x00000008)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.10_18
.BB.LABEL.10_15:	; if_else_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 888
	cmp 0x00000000, r2
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	bnz9 .BB.LABEL.10_19
.BB.LABEL.10_16:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 890
	cmp 0x00000003, r2
.BB.LABEL.10_17:	; if_else_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Fee_ModuleStatus.2)[r2]
.BB.LABEL.10_18:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 923
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_19:	; if_else_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 904
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.10_17
.BB.LABEL.10_20:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 907
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	st.w r0, LOWW(#_Fee_ModuleStatus.2)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobEndNotification:
	.stack _Fee_JobEndNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 942
	jmp [r31]
_Fee_JobErrorNotification:
	.stack _Fee_JobErrorNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 980
	jmp [r31]
_Fee_FlsJobEndHandle.1:
	.stack _Fee_FlsJobEndHandle.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1009
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1011
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r2
	ld.w LOWW(#_Fee_JobInfo.5+0x00000004)[r2], r2
	addi 0xFFFFFFEC, r2, r0
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1013
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	st.w r0, LOWW(#_Fee_JobInfo.5+0x00000008)[r2]
.BB.LABEL.13_2:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Fee_ModuleStatus.2)[r2]
.BB.LABEL.13_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1063
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_4:	; if_else_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1028
	jarl _Fee_JobSchedule.1, r31
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	st.w r10, LOWW(#_Fee_JobInfo.5+0x00000008)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1029
	cmp 0x00000000, r10
	bz9 .BB.LABEL.13_2
.BB.LABEL.13_5:	; if_else_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1043
	cmp 0x00000002, r10
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_6:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1049
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_7:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1052
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	st.w r0, LOWW(#_Fee_ModuleStatus.2)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_Fee_FlsJobErrorHandle.1:
	.stack _Fee_FlsJobErrorHandle.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1065
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1067
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	ld.w LOWW(#_Fee_JobInfo.5+0x00000008)[r2], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.14_10
.BB.LABEL.14_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1073
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r2
	ld.w LOWW(#_Fee_ConfigStd.1)[r2], r2
	ld.w 0x00000004[r2], r2
	mov #_Fee_JobInfo.5, r5
	ld.hu 0x00000000[r5], r6
	mul 0x00000006, r6, r0
	add r6, r2
	ld.bu 0x00000005[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1074
	ld.w 0x00000004[r5], r5
	add 0xFFFFFFFB, r5
	cmp 0x0000000F, r5
	bh9 .BB.LABEL.14_10
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	shl 0x00000001, r5
	jmp #.SWITCH.LABEL.14_11[r5]
.SWITCH.LABEL.14_11:
	br9 .BB.LABEL.14_8
	br9 .BB.LABEL.14_8
	br9 .BB.LABEL.14_8
	br9 .BB.LABEL.14_6
	br9 .BB.LABEL.14_8
	br9 .BB.LABEL.14_5
	br9 .BB.LABEL.14_6
	br9 .BB.LABEL.14_6
	br9 .BB.LABEL.14_3
	br9 .BB.LABEL.14_6
	br9 .BB.LABEL.14_6
	br9 .BB.LABEL.14_6
	br9 .BB.LABEL.14_6
	br9 .BB.LABEL.14_6
	br9 .BB.LABEL.14_6
	br9 .BB.LABEL.14_6
.SWITCH.LABEL.14_11.END:
.BB.LABEL.14_3:	; switch_clause_bb
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1079
	jarl _Fee_JobIntScanBlockHdrGet.1, r31
.BB.LABEL.14_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	st.w r10, LOWW(#_Fee_JobInfo.5+0x00000008)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1131
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.14_5:	; switch_clause_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1084
	jarl _Fee_JobIntScanClusterHdrGet.1, r31
	br9 .BB.LABEL.14_4
.BB.LABEL.14_6:	; switch_clause_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1110
	jarl _Fls_GetJobResult, r31
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	st.w r10, LOWW(#_Fee_JobInfo.5+0x00000008)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1111
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	ld.w LOWW(#_Fee_ModuleStatus.2)[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.14_9
.BB.LABEL.14_7:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1114
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	st.w r0, LOWW(#_Fee_ModuleStatus.2)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.14_8:	; switch_clause_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1092
	shl 0x00000004, r2
	mov #_Fee_ClusterGrpInfo.4, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	movea 0x00000040, r2, r2
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1094
	jarl _Fls_GetJobResult, r31
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	st.w r10, LOWW(#_Fee_JobInfo.5+0x00000008)[r2]
.BB.LABEL.14_9:	; if_else_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movhi HIGHW1(#_Fee_ModuleStatus.2), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Fee_ModuleStatus.2)[r2]
.BB.LABEL.14_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1131
	dispose 0x00000000, 0x00000001, [r31]
_Fee_GetBlockId.1:
	.stack _Fee_GetBlockId.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1133
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1136
	ld.w LOWW(#_Fee_ConfigStd.1)[r2], r2
	ld.hu 0x00000000[r2], r10
	add 0xFFFFFFFF, r10
	mov 0x00000000, r2
.BB.LABEL.15_1:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov r10, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1140
	cmp r5, r2
	bgt9 .BB.LABEL.15_7
.BB.LABEL.15_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1142
	mov r5, r10
	sub r2, r10
	mov 0x00000002, r7
	divh r7, r10
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1143
	mov r10, r7
	mul 0x00000006, r7, r0
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r8
	ld.w LOWW(#_Fee_ConfigStd.1)[r8], r8
	ld.w 0x00000004[r8], r8
	add r7, r8
	ld.hu 0x00000000[r8], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1144
	cmp r6, r7
	bnh9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1146
	add 0xFFFFFFFF, r10
	br9 .BB.LABEL.15_1
.BB.LABEL.15_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1148
	cmp r6, r7
	bnc9 .BB.LABEL.15_6
.BB.LABEL.15_5:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1150
	add 0x00000001, r10
	mov r10, r2
	mov r5, r10
	br9 .BB.LABEL.15_1
.BB.LABEL.15_6:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1155
	zxh r10
	jmp [r31]
.BB.LABEL.15_7:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	ori 0x0000FFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1159
	jmp [r31]
_Fee_JobIntScanClusterHdrRead.1:
	.stack _Fee_JobIntScanClusterHdrRead.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1161
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1166
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	shl 0x00000003, r2
	mov #_Fee_ClusterGroupConfig, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	movhi HIGHW1(#_Fee_ClusterIdx.7), r0, r5
	ld.bu LOWW(#_Fee_ClusterIdx.7)[r5], r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000000[r2], r6
	movea 0x00000018, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1167
	mov #_Fee_DataBuffer.8, r7
	jarl _Fls_Read, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1177
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r2
	mov 0x0000000A, r5
	st.w r5, LOWW(#_Fee_JobInfo.5+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1167
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1175
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1179
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobInitScan.1:
	.stack _Fee_JobInitScan.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1181
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1183
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	st.b r0, LOWW(#_Fee_ClusterGroupIdx.6)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1184
	movhi HIGHW1(#_Fee_ClusterIdx.7), r0, r2
	st.b r0, LOWW(#_Fee_ClusterIdx.7)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1185
	jarl _Fee_JobIntScanClusterHdrRead.1, r31
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	st.w r10, LOWW(#_Fee_JobInfo.5+0x00000008)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobSchedule.1:
	.stack _Fee_JobSchedule.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1188
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1191
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r2
	ld.w LOWW(#_Fee_JobInfo.5+0x00000004)[r2], r2
	add 0xFFFFFFFB, r2
	cmp 0x0000000E, r2
	bh9 .BB.LABEL.18_17
.BB.LABEL.18_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.18_18[r2]
.SWITCH.LABEL.18_18:
	br9 .BB.LABEL.18_2
	br9 .BB.LABEL.18_3
	br9 .BB.LABEL.18_4
	br9 .BB.LABEL.18_5
	br9 .BB.LABEL.18_6
	br9 .BB.LABEL.18_7
	br9 .BB.LABEL.18_8
	br9 .BB.LABEL.18_9
	br9 .BB.LABEL.18_10
	br9 .BB.LABEL.18_11
	br9 .BB.LABEL.18_12
	br9 .BB.LABEL.18_13
	br9 .BB.LABEL.18_14
	br9 .BB.LABEL.18_15
	br9 .BB.LABEL.18_16
.SWITCH.LABEL.18_18.END:
.BB.LABEL.18_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1195
	jarl _Fee_JobWriteData.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_3:	; switch_clause_bb3
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1198
	jarl _Fee_JobWriteValidate.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_4:	; switch_clause_bb5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1201
	jarl _Fee_JobWriteDone.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_5:	; switch_clause_bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1205
	jarl _Fee_JobInvalBlockDone.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_6:	; switch_clause_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1209
	jarl _Fee_JobEraseImmediateDone.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_7:	; switch_clause_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1213
	jarl _Fee_JobIntScanClusterHdrGet.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_8:	; switch_clause_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1216
	jarl _Fee_JobIntScanClusterClear.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_9:	; switch_clause_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1219
	jarl _Fee_JobIntScanClusterClearDone.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_10:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1222
	jarl _Fee_JobIntScanBlockHdrGet.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_11:	; switch_clause_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1226
	jarl _Fee_JobIntSwapClusterClear.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_12:	; switch_clause_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1229
	jarl _Fee_JobIntSwapBlock.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_13:	; switch_clause_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1232
	jarl _Fee_JobIntSwapDataRead.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_14:	; switch_clause_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1235
	jarl _Fee_JobIntSwapDataWrite.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_15:	; switch_clause_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1238
	jarl _Fee_JobIntSwapBlockVldWrite.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_16:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1241
	jarl _Fee_JobIntSwapClusterVldDone.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_17:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1248
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobRead.1:
	.stack _Fee_JobRead.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1250
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1254
	movhi HIGHW1(#_Fee_JobInfo.5), r0, r2
	ld.hu LOWW(#_Fee_JobInfo.5)[r2], r2
	mov r2, r5
	mul 0x0000000C, r5, r0
	mov #_Fee_BlockInfo.3, r6
	add r5, r6
	ld.w 0x00000008[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1256
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.19_4
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1255
	mul 0x0000000C, r2, r0
	mov #_Fee_BlockInfo.3, r5
	add r2, r5
	ld.w 0x00000000[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1258
	mov #_Fee_JobInfo.5, r5
	ld.w 0x00000018[r5], r8
	ld.w 0x0000000C[r5], r7
	ld.w 0x00000014[r5], r5
	add r5, r6
	jarl _Fls_Read, r31
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r5
	cmp 0x00000000, r10
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1265
	st.w r2, LOWW(#_Fee_JobInfo.5+0x00000008)[r5]
	br9 .BB.LABEL.19_10
.BB.LABEL.19_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1270
	st.w r2, LOWW(#_Fee_JobInfo.5+0x00000008)[r5]
	br9 .BB.LABEL.19_10
.BB.LABEL.19_4:	; if_else_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1273
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.19_6
.BB.LABEL.19_5:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1275
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r5
	mov 0x00000005, r2
	st.w r2, LOWW(#_Fee_JobInfo.5+0x00000008)[r5]
	br9 .BB.LABEL.19_10
.BB.LABEL.19_6:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1277
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.19_8
.BB.LABEL.19_7:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000004, r5
	br9 .BB.LABEL.19_9
.BB.LABEL.19_8:	; if_else_bb38
	mov 0x00000001, r5
.BB.LABEL.19_9:	; if_else_bb38
	st.w r5, LOWW(#_Fee_JobInfo.5+0x00000008)[r2]
.BB.LABEL.19_10:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1286
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r2
	movea 0x00000014, r0, r5
	st.w r5, LOWW(#_Fee_JobInfo.5+0x00000004)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobWrite.1:
	.stack _Fee_JobWrite.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1289
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1291
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r2
	ld.w LOWW(#_Fee_ConfigStd.1)[r2], r2
	ld.w 0x00000004[r2], r2
	movhi HIGHW1(#_Fee_JobInfo.5), r0, r5
	ld.hu LOWW(#_Fee_JobInfo.5)[r5], r5
	mov r5, r6
	mul 0x00000006, r6, r0
	add r6, r2
	ld.bu 0x00000004[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.20_4
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1294
	mul 0x0000000C, r5, r0
	mov #_Fee_BlockInfo.3, r2
	add r5, r2
	ld.w 0x00000008[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1297
	jarl _Fee_JobWriteData.1, r31
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	st.w r10, LOWW(#_Fee_JobInfo.5+0x00000008)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1302
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Fee_JobInfo.5+0x00000008)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_4:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1308
	jarl _Fee_JobWriteHdr.1, r31
	mov #_Fee_JobInfo.5, r2
	st.w r10, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1310
	ld.w 0x00000004[r2], r2
	cmp 0x0000000E, r2
	bz9 .BB.LABEL.20_6
.BB.LABEL.20_5:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1316
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r2
	mov 0x00000005, r5
	st.w r5, LOWW(#_Fee_JobInfo.5+0x00000004)[r2]
.BB.LABEL.20_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1319
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobInvalBlock.1:
	.stack _Fee_JobInvalBlock.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1321
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1323
	movhi HIGHW1(#_Fee_JobInfo.5), r0, r2
	ld.hu LOWW(#_Fee_JobInfo.5)[r2], r2
	mul 0x0000000C, r2, r0
	mov #_Fee_BlockInfo.3, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1326
	mov #_Fee_JobInfo.5, r2
	movea 0x00000014, r0, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1327
	st.w r0, 0x00000008[r2]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.21_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1339
	mov #_Fee_DataBuffer.8, r20
	movea 0x00000055, r0, r7
	mov r20, r6
	jarl _Fee_PackHdrValidOrInvalid.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1341
	mov #_Fee_JobInfo.5, r21
	ld.hu 0x00000000[r21], r2
	mul 0x0000000C, r2, r0
	mov #_Fee_BlockInfo.3, r5
	add r2, r5
	ld.w 0x00000004[r5], r6
	add 0x00000008, r6
	mov 0x00000008, r22
	mov r20, r7
	mov r22, r8
	jarl _Fls_Write, r31
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1354
	cmov 0x00000002, 0x00000002, r2, r2
	st.w r2, 0x00000008[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1357
	st.w r22, 0x00000004[r21]
	dispose 0x00000000, 0x00000071, [r31]
_Fee_JobEraseImmediate.1:
	.stack _Fee_JobEraseImmediate.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1361
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1364
	jarl _Fee_JobWriteHdr.1, r31
	mov #_Fee_JobInfo.5, r2
	st.w r10, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1366
	ld.w 0x00000004[r2], r2
	cmp 0x0000000E, r2
	bz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1372
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r2
	mov 0x00000009, r5
	st.w r5, LOWW(#_Fee_JobInfo.5+0x00000004)[r2]
.BB.LABEL.22_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1374
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobInvalBlockDone.1:
	.stack _Fee_JobInvalBlockDone.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1379
	mov #_Fee_JobInfo.5, r2
	ld.hu 0x00000000[r2], r5
	mul 0x0000000C, r5, r0
	mov #_Fee_BlockInfo.3, r6
	add r5, r6
	mov 0x00000001, r5
	st.w r5, 0x00000008[r6]
	movea 0x00000014, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1381
	st.w r5, 0x00000004[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1383
	jmp [r31]
_Fee_JobEraseImmediateDone.1:
	.stack _Fee_JobEraseImmediateDone.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1388
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r2
	ld.w LOWW(#_Fee_ConfigStd.1)[r2], r2
	ld.w 0x00000004[r2], r2
	mov #_Fee_JobInfo.5, r5
	ld.hu 0x00000000[r5], r6
	mul 0x00000006, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1391
	ld.hu 0x00000002[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1388
	ld.bu 0x00000005[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1391
	shl 0x00000004, r2
	mov #_Fee_ClusterGrpInfo.4, r7
	add r2, r7
	ld.w 0x00000000[r7], r2
	sub r6, r2
	st.w r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1392
	ld.w 0x00000004[r7], r2
	movea 0x00000020, r2, r2
	st.w r2, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1394
	ld.hu 0x00000000[r5], r2
	mul 0x0000000C, r2, r0
	mov #_Fee_BlockInfo.3, r6
	add r6, r2
	mov 0x00000002, r8
	st.w r8, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1395
	ld.hu 0x00000000[r5], r2
	mul 0x0000000C, r2, r0
	add r6, r2
	ld.w 0x00000000[r7], r8
	st.w r8, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1400
	ld.hu 0x00000000[r5], r2
	mul 0x0000000C, r2, r0
	add r2, r6
	ld.w 0x00000004[r7], r2
	add 0xFFFFFFF0, r2
	st.w r2, 0x00000004[r6]
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1404
	st.w r2, 0x00000004[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1406
	jmp [r31]
_Fee_JobWriteHdr.1:
	.stack _Fee_JobWriteHdr.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1408
	prepare 0x00000061, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1413
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r2
	ld.w LOWW(#_Fee_ConfigStd.1)[r2], r2
	ld.w 0x00000004[r2], r5
	movhi HIGHW1(#_Fee_JobInfo.5), r0, r6
	ld.hu LOWW(#_Fee_JobInfo.5)[r6], r6
	mov r6, r7
	mul 0x00000006, r7, r0
	add r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1416
	ld.bu 0x00000005[r5], r8
	mov r8, r7
	shl 0x00000004, r7
	mov #_Fee_ClusterGrpInfo.4, r9
	add r7, r9
	ld.w 0x00000000[r9], r10
	ld.w 0x00000004[r9], r7
	sub r7, r10
	ld.hu 0x00000002[r5], r7
	movea 0x00000040, r7, r5
	cmp r10, r5
	bnh9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1420
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	st.b r8, LOWW(#_Fee_ClusterGroupIdx.6)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1421
	jarl _Fee_JobIntSwap.1, r31
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.25_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1426
	ld.w 0x00000004[r2], r2
	mul 0x00000006, r6, r0
	add r6, r2
	ld.bu 0x00000004[r2], r9
	ld.hu 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1425
	shl 0x00000004, r8
	mov #_Fee_ClusterGrpInfo.4, r20
	add r8, r20
	ld.w 0x00000000[r20], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1426
	mov #_Fee_DataBuffer.8, r21
	st.w r21, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1425
	sub r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1426
	jarl _Fee_PackBlockHdr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1433
	ld.w 0x00000004[r20], r6
	movea 0x00000010, r0, r8
	mov r21, r7
	jarl _Fls_Write, r31
	cmp 0x00000000, r10
	mov 0x00000001, r2
	cmov 0x00000002, 0x00000002, r2, r10
	dispose 0x00000004, 0x00000061, [r31]
_Fee_JobIntSwap.1:
	.stack _Fee_JobIntSwap.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1456
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1461
	mov #_Fee_JobInfo.5, r2
	ld.w 0x00000004[r2], r5
	st.w r5, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1463
	st.h r0, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1464
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r5
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r5], r6
	shl 0x00000004, r6
	mov #_Fee_ClusterGrpInfo.4, r7
	add r6, r7
	ld.bu 0x0000000C[r7], r6
	add 0x00000001, r6
	st.b r6, 0x00000022[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1465
	andi 0x000000FF, r6, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r5], r5
	shl 0x00000003, r5
	mov #_Fee_ClusterGroupConfig, r7
	add r5, r7
	ld.w 0x00000004[r7], r5
	cmp r5, r2
	bnz9 .BB.LABEL.26_2
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1467
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000022), r0, r6
	st.b r0, LOWW(#_Fee_JobInfo.5+0x00000022)[r6]
	mov 0x00000000, r6
.BB.LABEL.26_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1469
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r5
	shl 0x00000003, r5
	mov #_Fee_ClusterGroupConfig, r7
	add r7, r5
	ld.w 0x00000000[r5], r5
	zxb r6
	shl 0x00000003, r6
	add r6, r5
	ld.w 0x00000000[r5], r5
	mov #_Fee_JobInfo.5, r8
	st.w r5, 0x00000024[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1472
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	shl 0x00000003, r2
	add r2, r7
	ld.w 0x00000000[r7], r2
	add r6, r2
	ld.w 0x00000004[r2], r2
	add r2, r5
	st.w r5, 0x00000028[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1477
	ld.w 0x00000024[r8], r2
	movea 0x00000018, r2, r2
	st.w r2, 0x00000024[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1479
	jarl _Fee_JobIntSwapClusterErase.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1481
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobIntSwapClusterErase.1:
	.stack _Fee_JobIntSwapClusterErase.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1483
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1489
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	shl 0x00000003, r2
	mov #_Fee_ClusterGroupConfig, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov #_Fee_JobInfo.5, r20
	ld.bu 0x00000022[r20], r5
	shl 0x00000003, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1492
	ld.w 0x00000004[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1489
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1496
	jarl _Fls_Erase, r31
	mov 0x0000000E, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1507
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1496
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1504
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1509
	dispose 0x00000000, 0x00000041, [r31]
_Fee_JobIntSwapClusterClear.1:
	.stack _Fee_JobIntSwapClusterClear.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1511
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1517
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	mov r2, r5
	shl 0x00000003, r5
	mov #_Fee_ClusterGroupConfig, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	mov #_Fee_JobInfo.5, r20
	ld.bu 0x00000022[r20], r6
	shl 0x00000003, r6
	add r6, r5
	ld.w 0x00000000[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1523
	shl 0x00000004, r2
	mov #_Fee_ClusterGrpInfo.4, r6
	add r2, r6
	ld.w 0x00000008[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1520
	ld.w 0x00000004[r5], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1525
	add 0x00000001, r6
	mov #_Fee_DataBuffer.8, r22
	mov r21, r7
	mov r22, r9
	jarl _Fee_PackClusterHdr.1, r31
	movea 0x00000010, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1528
	mov r21, r6
	mov r22, r7
	jarl _Fls_Write, r31
	mov 0x0000000F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1539
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1528
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1536
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1541
	dispose 0x00000000, 0x00000071, [r31]
_Fee_JobIntSwapBlock.1:
	.stack _Fee_JobIntSwapBlock.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1543
	prepare 0x00000079, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1552
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000020), r0, r2
	ld.hu LOWW(#_Fee_JobInfo.5+0x00000020)[r2], r2
	mov 0x00000001, r20
	mov 0x00000000, r9
	br9 .BB.LABEL.29_6
.BB.LABEL.29_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1555
	andi 0x0000FFFF, r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1556
	mov r20, r6
	mul 0x0000000C, r6, r0
	mov #_Fee_BlockInfo.3, r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1555
	mul 0x00000006, r20, r0
	ld.w 0x00000004[r5], r5
	add r20, r5
	ld.bu 0x00000005[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1558
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r6
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r6], r6
	cmp r6, r20
	ld.bu 0x00000004[r5], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1556
	ld.w 0x00000008[r7], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1558
	bnz9 .BB.LABEL.29_5
.BB.LABEL.29_2:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	cmp 0x00000000, r20
	bz9 .BB.LABEL.29_7
.BB.LABEL.29_3:	; bb40
	cmp 0x00000001, r9
	bnz9 .BB.LABEL.29_5
.BB.LABEL.29_4:	; bb40
	cmp 0x00000002, r20
	bz9 .BB.LABEL.29_7
.BB.LABEL.29_5:	; if_break_bb
	add 0x00000001, r2
.BB.LABEL.29_6:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1553
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r5
	ld.w LOWW(#_Fee_ConfigStd.1)[r5], r5
	ld.hu 0x00000000[r5], r6
	andi 0x0000FFFF, r2, r7
	cmp r6, r7
	bl9 .BB.LABEL.29_1
.BB.LABEL.29_7:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1569
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000020), r0, r5
	st.h r2, LOWW(#_Fee_JobInfo.5+0x00000020)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1570
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r5
	ld.w LOWW(#_Fee_ConfigStd.1)[r5], r5
	ld.hu 0x00000000[r5], r6
	andi 0x0000FFFF, r2, r7
	cmp r6, r7
	bnz9 .BB.LABEL.29_9
.BB.LABEL.29_8:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1573
	jarl _Fee_JobIntSwapClusterVld.1, r31
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.29_9:	; if_else_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1577
	zxh r2
	mul 0x00000006, r2, r0
	ld.w 0x00000004[r5], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1579
	ld.hu 0x00000002[r5], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1581
	ld.hu 0x00000000[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1579
	mov #_Fee_JobInfo.5, r21
	ld.w 0x00000028[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1581
	mov #_Fee_DataBuffer.8, r23
	st.w r23, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1579
	sub r7, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1581
	zxb r9
	mov r22, r8
	jarl _Fee_PackBlockHdr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1583
	ld.w 0x00000024[r21], r6
	movea 0x00000010, r0, r8
	mov r23, r7
	jarl _Fls_Write, r31
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1599
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1601
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.29_11
.BB.LABEL.29_10:	; if_else_bb96.if_break_bb140_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movea 0x00000010, r0, r2
	br9 .BB.LABEL.29_12
.BB.LABEL.29_11:	; if_else_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1609
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000020), r0, r2
	ld.h LOWW(#_Fee_JobInfo.5+0x00000020)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_Fee_JobInfo.5+0x00000020)[r2]
	mov 0x0000000F, r2
.BB.LABEL.29_12:	; if_break_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov #_Fee_JobInfo.5, r5
	st.w r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1613
	st.w r22, 0x00000028[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1614
	ld.w 0x00000024[r5], r2
	movea 0x00000020, r2, r2
	st.w r2, 0x00000024[r5]
	dispose 0x00000004, 0x00000079, [r31]
_Fee_JobIntSwapClusterVldDone.1:
	.stack _Fee_JobIntSwapClusterVldDone.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1619
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1627
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	shl 0x00000003, r2
	mov #_Fee_ClusterGroupConfig, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000022), r0, r5
	ld.bu LOWW(#_Fee_JobInfo.5+0x00000022)[r5], r5
	shl 0x00000003, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1630
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1627
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1634
	movea 0x00000018, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1630
	add r5, r2
	mov 0x00000000, r5
	br9 .BB.LABEL.30_7
.BB.LABEL.30_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1638
	andi 0x0000FFFF, r5, r8
	mul 0x00000006, r8, r0
	ld.w 0x00000004[r7], r7
	add r8, r7
	ld.bu 0x00000005[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1639
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r8
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r8], r8
	cmp r8, r7
	bnz9 .BB.LABEL.30_6
.BB.LABEL.30_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1642
	andi 0x0000FFFF, r5, r7
	mul 0x0000000C, r7, r0
	mov #_Fee_BlockInfo.3, r8
	add r7, r8
	ld.w 0x00000008[r8], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.30_5
.BB.LABEL.30_3:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1641
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r7
	ld.w LOWW(#_Fee_ConfigStd.1)[r7], r7
	ld.w 0x00000004[r7], r7
	andi 0x0000FFFF, r5, r8
	mov r8, r9
	mul 0x00000006, r9, r0
	add r9, r7
	mul 0x0000000C, r8, r0
	mov #_Fee_BlockInfo.3, r9
	add r8, r9
	ld.w 0x00000008[r9], r8
	cmp 0x00000002, r8
	ld.bu 0x00000004[r7], r7
	bnz9 .BB.LABEL.30_6
.BB.LABEL.30_4:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.30_6
.BB.LABEL.30_5:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1646
	andi 0x0000FFFF, r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1649
	mov r7, r8
	mul 0x0000000C, r8, r0
	mov #_Fee_BlockInfo.3, r9
	add r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1646
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r8
	ld.w LOWW(#_Fee_ConfigStd.1)[r8], r8
	ld.w 0x00000004[r8], r8
	mul 0x00000006, r7, r0
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1647
	ld.hu 0x00000002[r8], r7
	sub r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1649
	st.w r2, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1653
	movea 0x00000010, r6, r7
	st.w r7, 0x00000004[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1648
	movea 0x00000020, r6, r6
.BB.LABEL.30_6:	; if_break_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	add 0x00000001, r5
.BB.LABEL.30_7:	; bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1636
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r7
	ld.w LOWW(#_Fee_ConfigStd.1)[r7], r7
	ld.hu 0x00000000[r7], r8
	andi 0x0000FFFF, r5, r9
	cmp r8, r9
	bl9 .BB.LABEL.30_1
.BB.LABEL.30_8:	; bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1659
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r5
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r5], r7
	shl 0x00000004, r7
	mov #_Fee_ClusterGrpInfo.4, r8
	add r8, r7
	ld.w 0x00000008[r7], r9
	add 0x00000001, r9
	st.w r9, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1660
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r5], r7
	shl 0x00000004, r7
	add r8, r7
	mov #_Fee_JobInfo.5, r9
	ld.b 0x00000022[r9], r10
	st.b r10, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1661
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r5], r7
	shl 0x00000004, r7
	add r8, r7
	st.w r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1662
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r5], r2
	shl 0x00000004, r2
	add r2, r8
	st.w r6, 0x00000004[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1664
	ld.w 0x0000001C[r9], r2
	st.w r2, 0x00000004[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1665
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.30_11
.BB.LABEL.30_9:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1667
	jarl _Fee_JobWrite.1, r31
.BB.LABEL.30_10:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000008), r0, r2
	ld.w LOWW(#_Fee_JobInfo.5+0x00000008)[r2], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1681
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.30_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1670
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.30_13
.BB.LABEL.30_12:	; if_then_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1672
	jarl _Fee_JobEraseImmediate.1, r31
	br9 .BB.LABEL.30_10
.BB.LABEL.30_13:	; if_break_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1681
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobIntSwapClusterVld.1:
	.stack _Fee_JobIntSwapClusterVld.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1683
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1687
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	shl 0x00000003, r2
	mov #_Fee_ClusterGroupConfig, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov #_Fee_JobInfo.5, r20
	ld.bu 0x00000022[r20], r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000000[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1691
	mov #_Fee_DataBuffer.8, r22
	movea 0x000000AA, r0, r7
	mov r22, r6
	jarl _Fee_PackHdrValidOrInvalid.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1693
	movea 0x00000010, r21, r6
	mov 0x00000008, r8
	mov r22, r7
	jarl _Fls_Write, r31
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1708
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1693
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1705
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1710
	dispose 0x00000000, 0x00000071, [r31]
_Fee_JobIntSwapDataRead.1:
	.stack _Fee_JobIntSwapDataRead.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1712
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1717
	mov #_Fee_JobInfo.5, r20
	ld.hu 0x00000020[r20], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1720
	mov r2, r5
	mul 0x0000000C, r5, r0
	mov #_Fee_BlockInfo.3, r6
	add r5, r6
	ld.w 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1718
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r5
	ld.w LOWW(#_Fee_ConfigStd.1)[r5], r5
	ld.w 0x00000004[r5], r5
	mul 0x00000006, r2, r0
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1720
	ld.hu 0x00000002[r5], r8
	mov #_Fee_DataBuffer.8, r7
	jarl _Fls_Read, r31
	movea 0x00000011, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1731
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1720
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1728
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1733
	dispose 0x00000000, 0x00000041, [r31]
_Fee_JobIntSwapBlockVldWrite.1:
	.stack _Fee_JobIntSwapBlockVldWrite.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1735
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1749
	mov #_Fee_DataBuffer.8, r20
	movea 0x000000AA, r0, r7
	mov r20, r6
	jarl _Fee_PackHdrValidOrInvalid.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1751
	mov #_Fee_JobInfo.5, r21
	ld.w 0x00000024[r21], r6
	add 0xFFFFFFF0, r6
	mov 0x00000008, r8
	mov r20, r7
	jarl _Fls_Write, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1767
	ld.h 0x00000020[r21], r2
	add 0x00000001, r2
	st.h r2, 0x00000020[r21]
	mov 0x0000000F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1768
	st.w r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1751
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1764
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1770
	dispose 0x00000000, 0x00000061, [r31]
_Fee_JobIntSwapDataWrite.1:
	.stack _Fee_JobIntSwapDataWrite.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1772
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1778
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r2
	ld.w LOWW(#_Fee_ConfigStd.1)[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1777
	mov #_Fee_JobInfo.5, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1778
	ld.hu 0x00000020[r20], r5
	mul 0x00000006, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1779
	ld.hu 0x00000002[r2], r8
	ld.w 0x00000028[r20], r6
	mov #_Fee_DataBuffer.8, r7
	jarl _Fls_Write, r31
	movea 0x00000012, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1789
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1779
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1787
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1791
	dispose 0x00000000, 0x00000041, [r31]
_Fee_JobWriteData.1:
	.stack _Fee_JobWriteData.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1793
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1797
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r2
	ld.w LOWW(#_Fee_ConfigStd.1)[r2], r2
	ld.w 0x00000004[r2], r2
	movhi HIGHW1(#_Fee_JobInfo.5), r0, r5
	ld.hu LOWW(#_Fee_JobInfo.5)[r5], r5
	mov r5, r6
	mul 0x00000006, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1799
	ld.bu 0x00000004[r2], r6
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1798
	ld.bu 0x00000005[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1797
	ld.hu 0x00000002[r2], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1799
	bnz9 .BB.LABEL.35_2
.BB.LABEL.35_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1802
	shl 0x00000004, r6
	mov #_Fee_ClusterGrpInfo.4, r2
	add r6, r2
	ld.w 0x00000000[r2], r6
	sub r8, r6
	st.w r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1803
	ld.w 0x00000004[r2], r6
	movea 0x00000020, r6, r6
	st.w r6, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1805
	mul 0x0000000C, r5, r0
	mov #_Fee_BlockInfo.3, r6
	add r5, r6
	mov 0x00000002, r5
	st.w r5, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1806
	ld.w 0x00000000[r2], r5
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1811
	ld.w 0x00000004[r2], r2
	add 0xFFFFFFF0, r2
	st.w r2, 0x00000004[r6]
.BB.LABEL.35_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1816
	mov #_Fee_JobInfo.5, r20
	ld.hu 0x00000000[r20], r2
	mul 0x0000000C, r2, r0
	mov #_Fee_BlockInfo.3, r5
	add r2, r5
	ld.w 0x00000000[r5], r6
	ld.w 0x00000010[r20], r7
	jarl _Fls_Write, r31
	mov 0x00000006, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1830
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1816
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1828
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1832
	dispose 0x00000000, 0x00000041, [r31]
_Fee_JobWriteValidate.1:
	.stack _Fee_JobWriteValidate.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1834
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1845
	mov #_Fee_DataBuffer.8, r20
	movea 0x000000AA, r0, r7
	mov r20, r6
	jarl _Fee_PackHdrValidOrInvalid.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1847
	mov #_Fee_JobInfo.5, r21
	ld.hu 0x00000000[r21], r2
	mul 0x0000000C, r2, r0
	mov #_Fee_BlockInfo.3, r5
	add r2, r5
	ld.w 0x00000004[r5], r6
	mov 0x00000008, r8
	mov r20, r7
	jarl _Fls_Write, r31
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1860
	st.w r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1847
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1857
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1862
	dispose 0x00000000, 0x00000061, [r31]
_Fee_JobWriteDone.1:
	.stack _Fee_JobWriteDone.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1867
	mov #_Fee_JobInfo.5, r2
	ld.hu 0x00000000[r2], r5
	mul 0x0000000C, r5, r0
	mov #_Fee_BlockInfo.3, r6
	add r5, r6
	st.w r0, 0x00000008[r6]
	movea 0x00000014, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1869
	st.w r5, 0x00000004[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1871
	jmp [r31]
_Fee_JobIntScanClusterHdrGet.1:
	.stack _Fee_JobIntScanClusterHdrGet.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1873
	prepare 0x00000001, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1876
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.38_6
.BB.LABEL.38_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1883
	mov #_Fee_DataBuffer.8, r9
	mov r3, r8
	movea 0x00000004, r3, r7
	movea 0x00000008, r3, r6
	jarl _Fee_UnpackClusterHdr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1884
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.38_6
.BB.LABEL.38_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	mov r2, r5
	shl 0x00000003, r5
	mov #_Fee_ClusterGroupConfig, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	movhi HIGHW1(#_Fee_ClusterIdx.7), r0, r6
	ld.bu LOWW(#_Fee_ClusterIdx.7)[r6], r6
	mov r6, r7
	shl 0x00000003, r7
	add r7, r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000004[r3], r7
	cmp r5, r7
	bnz9 .BB.LABEL.38_6
.BB.LABEL.38_3:	; bb34
	mov r2, r5
	shl 0x00000003, r5
	mov #_Fee_ClusterGroupConfig, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	shl 0x00000003, r6
	add r6, r5
	ld.w 0x00000004[r5], r5
	ld.w 0x00000000[r3], r6
	cmp r5, r6
	bnz9 .BB.LABEL.38_6
.BB.LABEL.38_4:	; bb55
	mov r2, r5
	shl 0x00000004, r5
	mov #_Fee_ClusterGrpInfo.4, r6
	add r5, r6
	ld.w 0x00000008[r6], r5
	ld.w 0x00000008[r3], r6
	cmp r5, r6
	bnh9 .BB.LABEL.38_6
.BB.LABEL.38_5:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1892
	shl 0x00000004, r2
	mov #_Fee_ClusterGrpInfo.4, r5
	add r5, r2
	st.w r6, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1893
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	shl 0x00000004, r2
	add r2, r5
	movhi HIGHW1(#_Fee_ClusterIdx.7), r0, r2
	ld.b LOWW(#_Fee_ClusterIdx.7)[r2], r2
	st.b r2, 0x0000000C[r5]
.BB.LABEL.38_6:	; if_break_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1896
	movhi HIGHW1(#_Fee_ClusterIdx.7), r0, r2
	ld.b LOWW(#_Fee_ClusterIdx.7)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_Fee_ClusterIdx.7)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1897
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	mov r2, r6
	shl 0x00000003, r6
	mov #_Fee_ClusterGroupConfig, r7
	add r6, r7
	ld.w 0x00000004[r7], r6
	zxb r5
	cmp r6, r5
	bnz9 .BB.LABEL.38_8
.BB.LABEL.38_7:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1900
	add 0x00000001, r2
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r5
	st.b r2, LOWW(#_Fee_ClusterGroupIdx.6)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1901
	movhi HIGHW1(#_Fee_ClusterIdx.7), r0, r2
	st.b r0, LOWW(#_Fee_ClusterIdx.7)[r2]
.BB.LABEL.38_8:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1905
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.38_10
.BB.LABEL.38_9:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1908
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	st.b r0, LOWW(#_Fee_ClusterGroupIdx.6)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1920
	jarl _Fee_JobIntScanClusterDone.1, r31
	dispose 0x0000000C, 0x00000001, [r31]
.BB.LABEL.38_10:	; if_else_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1925
	jarl _Fee_JobIntScanClusterHdrRead.1, r31
	dispose 0x0000000C, 0x00000001, [r31]
_Fee_JobIntScanClusterDone.1:
	.stack _Fee_JobIntScanClusterDone.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1930
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1935
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.39_2
.BB.LABEL.39_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1938
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r2
	movea 0x00000014, r0, r5
	st.w r5, LOWW(#_Fee_JobInfo.5+0x00000004)[r2]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1939
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.39_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1943
	mov r2, r5
	shl 0x00000004, r5
	mov #_Fee_ClusterGrpInfo.4, r6
	add r5, r6
	ld.w 0x00000008[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.39_4
.BB.LABEL.39_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1946
	movhi HIGHW1(#_Fee_ClusterIdx.7), r0, r2
	st.b r0, LOWW(#_Fee_ClusterIdx.7)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1947
	jarl _Fee_JobIntScanClusterErase.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.39_4:	; if_else_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1953
	mov r2, r5
	shl 0x00000003, r5
	mov #_Fee_ClusterGroupConfig, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1952
	shl 0x00000004, r2
	mov #_Fee_ClusterGrpInfo.4, r6
	add r6, r2
	ld.bu 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1953
	shl 0x00000003, r2
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1955
	movea 0x00000018, r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1954
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1955
	movhi HIGHW1(#_Fee_BlockHeaderAddr.9), r0, r8
	st.w r7, LOWW(#_Fee_BlockHeaderAddr.9)[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1956
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r8
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r8], r9
	shl 0x00000004, r9
	add r6, r9
	st.w r7, 0x00000004[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1957
	add r5, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r8], r5
	shl 0x00000004, r5
	add r5, r6
	st.w r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1959
	jarl _Fee_JobIntScanBlockHdrRead.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobIntScanBlockHdrRead.1:
	.stack _Fee_JobIntScanBlockHdrRead.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1965
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1969
	movhi HIGHW1(#_Fee_BlockHeaderAddr.9), r0, r2
	ld.w LOWW(#_Fee_BlockHeaderAddr.9)[r2], r6
	movea 0x00000020, r0, r8
	mov #_Fee_DataBuffer.8, r7
	jarl _Fls_Read, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1979
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r2
	mov 0x0000000D, r5
	st.w r5, LOWW(#_Fee_JobInfo.5+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1969
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1977
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1981
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobIntScanClusterErase.1:
	.stack _Fee_JobIntScanClusterErase.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1983
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1988
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	shl 0x00000003, r2
	mov #_Fee_ClusterGroupConfig, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	movhi HIGHW1(#_Fee_ClusterIdx.7), r0, r5
	ld.bu LOWW(#_Fee_ClusterIdx.7)[r5], r5
	shl 0x00000003, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1989
	ld.w 0x00000004[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1988
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1990
	jarl _Fls_Erase, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2001
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r2
	mov 0x0000000B, r5
	st.w r5, LOWW(#_Fee_JobInfo.5+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1990
	cmp 0x00000000, r10
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 1998
	cmov 0x00000002, 0x00000002, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2003
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobIntScanClusterClear.1:
	.stack _Fee_JobIntScanClusterClear.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2005
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2010
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	shl 0x00000003, r2
	mov #_Fee_ClusterGroupConfig, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	movhi HIGHW1(#_Fee_ClusterIdx.7), r0, r5
	ld.bu LOWW(#_Fee_ClusterIdx.7)[r5], r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000000[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2011
	ld.w 0x00000004[r2], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2013
	mov #_Fee_DataBuffer.8, r21
	mov 0x00000001, r22
	mov r22, r6
	mov r20, r7
	mov r21, r9
	jarl _Fee_PackClusterHdr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2015
	movea 0x00000010, r21, r6
	movea 0x000000AA, r0, r7
	jarl _Fee_PackHdrValidOrInvalid.1, r31
	movea 0x00000018, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2017
	mov r20, r6
	mov r21, r7
	jarl _Fls_Write, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2028
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r2
	mov 0x0000000C, r5
	st.w r5, LOWW(#_Fee_JobInfo.5+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2017
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2025
	cmov 0x00000002, 0x00000002, r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2030
	dispose 0x00000000, 0x00000071, [r31]
_Fee_PackClusterHdr.1:
	.stack _Fee_PackClusterHdr.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2032
	mov r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2040
	add r7, r2
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2039
	movea 0x00000018, r9, r5
	mov 0x00000000, r10
	br9 .BB.LABEL.43_2
.BB.LABEL.43_1:	; bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	andi 0x000000FF, r10, r11
	mov r9, r12
	add r11, r12
	shl 0x00000003, r11
	shr r11, r6, r11
	st.b r11, 0x00000000[r12]
	add 0x00000001, r10
.BB.LABEL.43_2:	; bb35
	andi 0x000000FF, r10, r11
	cmp 0x00000004, r11
	bl9 .BB.LABEL.43_1
.BB.LABEL.43_3:	; bb40
	addi 0x00000004, r9, r6
	mov 0x00000000, r10
	br9 .BB.LABEL.43_5
.BB.LABEL.43_4:	; bb45
	andi 0x000000FF, r10, r11
	mov r6, r12
	add r11, r12
	shl 0x00000003, r11
	shr r11, r7, r11
	st.b r11, 0x00000000[r12]
	add 0x00000001, r10
.BB.LABEL.43_5:	; bb58
	andi 0x000000FF, r10, r11
	cmp 0x00000004, r11
	bl9 .BB.LABEL.43_4
.BB.LABEL.43_6:	; bb64
	addi 0x00000008, r9, r6
	mov 0x00000000, r7
	br9 .BB.LABEL.43_8
.BB.LABEL.43_7:	; bb69
	andi 0x000000FF, r7, r10
	mov r6, r11
	add r10, r11
	shl 0x00000003, r10
	shr r10, r8, r10
	st.b r10, 0x00000000[r11]
	add 0x00000001, r7
.BB.LABEL.43_8:	; bb82
	andi 0x000000FF, r7, r10
	cmp 0x00000004, r10
	bl9 .BB.LABEL.43_7
.BB.LABEL.43_9:	; bb88
	addi 0x0000000C, r9, r6
	mov 0x00000000, r7
	br9 .BB.LABEL.43_11
.BB.LABEL.43_10:	; bb93
	andi 0x000000FF, r7, r8
	mov r6, r10
	add r8, r10
	shl 0x00000003, r8
	shr r8, r2, r8
	st.b r8, 0x00000000[r10]
	add 0x00000001, r7
.BB.LABEL.43_11:	; bb106
	andi 0x000000FF, r7, r8
	cmp 0x00000004, r8
	bl9 .BB.LABEL.43_10
.BB.LABEL.43_12:	; bb112
	movea 0x00000010, r9, r2
	br9 .BB.LABEL.43_14
.BB.LABEL.43_13:	; bb116
	mov 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2048
	st.b r6, 0x00000000[r2]
	add 0x00000001, r2
.BB.LABEL.43_14:	; bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2046
	cmp r5, r2
	bl9 .BB.LABEL.43_13
.BB.LABEL.43_15:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2050
	jmp [r31]
_Fee_UnpackClusterHdr.1:
	.stack _Fee_UnpackClusterHdr.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2052
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2060
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2063
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2062
	movea 0x00000010, r9, r20
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.44_2
.BB.LABEL.44_1:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	andi 0x000000FF, r5, r10
	mov r9, r11
	add r10, r11
	ld.bu 0x00000000[r11], r11
	shl 0x00000003, r10
	shl r10, r11
	or r11, r2
	st.w r2, 0x00000000[r6]
	add 0x00000001, r5
.BB.LABEL.44_2:	; bb37
	andi 0x000000FF, r5, r10
	cmp 0x00000004, r10
	bl9 .BB.LABEL.44_1
.BB.LABEL.44_3:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2064
	st.w r0, 0x00000000[r7]
	addi 0x00000004, r9, r2
	mov 0x00000000, r5
	mov r5, r10
	br9 .BB.LABEL.44_5
.BB.LABEL.44_4:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	andi 0x000000FF, r10, r11
	mov r2, r12
	add r11, r12
	ld.bu 0x00000000[r12], r12
	shl 0x00000003, r11
	shl r11, r12
	or r12, r5
	st.w r5, 0x00000000[r7]
	add 0x00000001, r10
.BB.LABEL.44_5:	; bb65
	andi 0x000000FF, r10, r11
	cmp 0x00000004, r11
	bl9 .BB.LABEL.44_4
.BB.LABEL.44_6:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2065
	st.w r0, 0x00000000[r8]
	addi 0x00000008, r9, r2
	mov 0x00000000, r5
	mov r5, r10
	br9 .BB.LABEL.44_8
.BB.LABEL.44_7:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	andi 0x000000FF, r10, r11
	mov r2, r12
	add r11, r12
	ld.bu 0x00000000[r12], r12
	shl 0x00000003, r11
	shl r11, r12
	or r12, r5
	st.w r5, 0x00000000[r8]
	add 0x00000001, r10
.BB.LABEL.44_8:	; bb94
	andi 0x000000FF, r10, r11
	cmp 0x00000004, r11
	bl9 .BB.LABEL.44_7
.BB.LABEL.44_9:	; bb100
	addi 0x0000000C, r9, r2
	mov 0x00000000, r5
	mov r5, r10
	br9 .BB.LABEL.44_11
.BB.LABEL.44_10:	; bb105
	andi 0x000000FF, r10, r11
	mov r2, r12
	add r11, r12
	ld.bu 0x00000000[r12], r12
	shl 0x00000003, r11
	shl r11, r12
	or r12, r5
	add 0x00000001, r10
.BB.LABEL.44_11:	; bb120
	andi 0x000000FF, r10, r11
	cmp 0x00000004, r11
	bl9 .BB.LABEL.44_10
.BB.LABEL.44_12:	; bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2067
	ld.w 0x00000000[r6], r2
	ld.w 0x00000000[r7], r6
	add r6, r2
	ld.w 0x00000000[r8], r6
	add r6, r2
	cmp r5, r2
	bnz9 .BB.LABEL.44_17
.BB.LABEL.44_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movea 0x00000010, r9, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2071
	mov r20, r7
	jarl _Fee_ClusterCheck.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.44_17
.BB.LABEL.44_14:	; if_else_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movea 0x00000003, r3, r8
	movea 0x000000AA, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2075
	mov r20, r6
	jarl _Fee_UnpackHdrValidOrInvalid.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.44_17
.BB.LABEL.44_15:	; if_else_bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2081
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.44_17
.BB.LABEL.44_16:	; if_then_bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2083
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.44_17:	; if_break_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2087
	dispose 0x00000004, 0x00000041, [r31]
_Fee_PackHdrValidOrInvalid.1:
	.stack _Fee_PackHdrValidOrInvalid.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2164
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2167
	addi 0x00000008, r6, r2
	br9 .BB.LABEL.45_2
.BB.LABEL.45_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0xFFFFFFFF, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2171
	st.b r7, 0x00000001[r5]
.BB.LABEL.45_2:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov r6, r5
	addi 0x00000001, r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2169
	cmp r2, r6
	bl9 .BB.LABEL.45_1
.BB.LABEL.45_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2173
	jmp [r31]
_Fee_UnpackHdrValidOrInvalid.1:
	.stack _Fee_UnpackHdrValidOrInvalid.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2175
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2181
	ld.bu 0x00000000[r6], r2
	cmp r7, r2
	bz9 .BB.LABEL.46_2
.BB.LABEL.46_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	addi 0xFFFFFF01, r2, r0
	bnz9 .BB.LABEL.46_3
.BB.LABEL.46_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2183
	cmp r7, r2
	setf 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2189
	st.b r2, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2191
	addi 0x00000008, r6, r7
	add 0x00000001, r6
	jarl _Fee_ClusterCheck.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.46_3:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2198
	dispose 0x00000000, 0x00000001, [r31]
_Fee_JobIntScanClusterClearDone.1:
	.stack _Fee_JobIntScanClusterClearDone.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2200
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2205
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r5
	shl 0x00000004, r5
	mov #_Fee_ClusterGrpInfo.4, r6
	add r6, r5
	movhi HIGHW1(#_Fee_ClusterIdx.7), r0, r7
	ld.b LOWW(#_Fee_ClusterIdx.7)[r7], r8
	st.b r8, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2206
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r5
	shl 0x00000004, r5
	add r6, r5
	mov 0x00000001, r8
	st.w r8, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2207
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2209
	mov r5, r8
	shl 0x00000004, r8
	add r6, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2207
	shl 0x00000003, r5
	mov #_Fee_ClusterGroupConfig, r9
	add r5, r9
	ld.w 0x00000000[r9], r5
	ld.bu LOWW(#_Fee_ClusterIdx.7)[r7], r7
	shl 0x00000003, r7
	add r7, r5
	ld.w 0x00000000[r5], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2209
	movea 0x00000018, r7, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2208
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2209
	st.w r9, 0x00000004[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2210
	add r5, r7
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r5
	shl 0x00000004, r5
	add r5, r6
	st.w r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2211
	ld.b LOWW(#_Fee_ClusterGroupIdx.6)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_Fee_ClusterGroupIdx.6)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2212
	jarl _Fee_JobIntScanClusterDone.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2214
	dispose 0x00000000, 0x00000001, [r31]
_Fee_ClusterCheck.1:
	.stack _Fee_ClusterCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2217
	br9 .BB.LABEL.48_3
.BB.LABEL.48_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2225
	ld.bu 0x00000000[r6], r2
	addi 0xFFFFFF01, r2, r0
	bnz9 .BB.LABEL.48_5
.BB.LABEL.48_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	add 0x00000001, r6
.BB.LABEL.48_3:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2223
	cmp r7, r6
	bl9 .BB.LABEL.48_1
.BB.LABEL.48_4:	; bb13.bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.48_6
.BB.LABEL.48_5:	; bb.bb20_crit_edge
	mov 0x00000001, r10
.BB.LABEL.48_6:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2236
	jmp [r31]
_Fee_JobIntScanBlockHdrGet.1:
	.stack _Fee_JobIntScanBlockHdrGet.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2238
	prepare 0x00000061, 0x00000010
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2249
	mov #_Fee_DataBuffer.8, r2
	st.w r2, 0x00000000[r3]
	movea 0x00000007, r3, r9
	movea 0x00000008, r3, r8
	movea 0x0000000C, r3, r7
	movea 0x0000000E, r3, r6
	jarl _Fee_UnpackBlockHdr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2250
	cmp 0x00000003, r10
	mov r10, r21
	bz9 .BB.LABEL.49_2
.BB.LABEL.49_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.49_5
.BB.LABEL.49_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2252
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r21
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r21], r21
	mov r21, r2
	shl 0x00000003, r2
	mov #_Fee_ClusterGroupConfig, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	shl 0x00000004, r21
	mov #_Fee_ClusterGrpInfo.4, r5
	add r21, r5
	ld.bu 0x0000000C[r5], r21
	shl 0x00000003, r21
	add r21, r2
	ld.w 0x00000000[r2], r21
	ld.w 0x00000004[r2], r2
	add r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2259
	ld.w 0x00000004[r5], r2
	movea 0x00000020, r2, r2
	cmp r21, r2
	bl9 .BB.LABEL.49_4
.BB.LABEL.49_3:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2261
	movhi HIGHW1(#_Fee_JobInfo.5+0x00000004), r0, r21
	movea 0x00000014, r0, r2
	st.w r2, LOWW(#_Fee_JobInfo.5+0x00000004)[r21]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2262
	dispose 0x00000010, 0x00000061, [r31]
.BB.LABEL.49_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2267
	movhi HIGHW1(#_Fee_BlockHeaderAddr.9), r0, r21
	ld.w LOWW(#_Fee_BlockHeaderAddr.9)[r21], r2
	movea 0x00000020, r2, r2
	st.w r2, LOWW(#_Fee_BlockHeaderAddr.9)[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2268
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r21
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r21], r21
	shl 0x00000004, r21
	mov #_Fee_ClusterGrpInfo.4, r5
	add r21, r5
	st.w r2, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2270
	jarl _Fee_JobIntScanBlockHdrRead.1, r31
	dispose 0x00000010, 0x00000061, [r31]
.BB.LABEL.49_5:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2273
	cmp 0x00000004, r21
	bnz9 .BB.LABEL.49_7
.BB.LABEL.49_6:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2275
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r21
	ld.b LOWW(#_Fee_ClusterGroupIdx.6)[r21], r2
	add 0x00000001, r2
	st.b r2, LOWW(#_Fee_ClusterGroupIdx.6)[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2276
	jarl _Fee_JobIntScanClusterDone.1, r31
	dispose 0x00000010, 0x00000061, [r31]
.BB.LABEL.49_7:	; if_else_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2281
	ld.hu 0x0000000E[r3], r6
	jarl _Fee_GetBlockId.1, r31
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2282
	cmp r2, r10
	bz9 .BB.LABEL.49_14
.BB.LABEL.49_8:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2284
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	mov r2, r5
	shl 0x00000004, r5
	mov #_Fee_ClusterGrpInfo.4, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.hu 0x0000000C[r3], r6
	sub r6, r5
	ld.w 0x00000008[r3], r6
	cmp r5, r6
	bh9 .BB.LABEL.49_14
.BB.LABEL.49_9:	; bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov r2, r5
	shl 0x00000004, r5
	mov #_Fee_ClusterGrpInfo.4, r7
	add r5, r7
	ld.w 0x00000004[r7], r5
	movea 0x00000040, r5, r5
	cmp r5, r6
	bl9 .BB.LABEL.49_14
.BB.LABEL.49_10:	; if_then_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2288
	movhi HIGHW1(#_Fee_ConfigStd.1), r0, r5
	ld.w LOWW(#_Fee_ConfigStd.1)[r5], r5
	ld.w 0x00000004[r5], r6
	mov r10, r7
	mul 0x00000006, r7, r0
	add r7, r6
	ld.bu 0x00000005[r6], r6
	cmp r6, r2
	bnz9 .BB.LABEL.49_14
.BB.LABEL.49_11:	; bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	ld.w 0x00000004[r5], r2
	mov r10, r6
	mul 0x00000006, r6, r0
	add r6, r2
	ld.hu 0x00000002[r2], r2
	ld.hu 0x0000000C[r3], r6
	cmp r6, r2
	bnz9 .BB.LABEL.49_14
.BB.LABEL.49_12:	; bb154
	ld.w 0x00000004[r5], r2
	mov r10, r5
	mul 0x00000006, r5, r0
	add r5, r2
	ld.bu 0x00000004[r2], r2
	ld.bu 0x00000007[r3], r5
	cmp r5, r2
	bnz9 .BB.LABEL.49_14
.BB.LABEL.49_13:	; if_then_bb185.critedge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2299
	mul 0x0000000C, r10, r0
	mov #_Fee_BlockInfo.3, r2
	add r10, r2
	st.w r21, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2300
	ld.w 0x00000008[r3], r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2304
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r5
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r5], r6
	shl 0x00000004, r6
	mov #_Fee_ClusterGrpInfo.4, r7
	add r7, r6
	ld.w 0x00000004[r6], r6
	movea 0x00000010, r6, r6
	st.w r6, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2308
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r5], r2
	shl 0x00000004, r2
	add r2, r7
	ld.w 0x00000008[r3], r2
	st.w r2, 0x00000000[r7]
.BB.LABEL.49_14:	; if_break_bb212
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2311
	movhi HIGHW1(#_Fee_BlockHeaderAddr.9), r0, r2
	ld.w LOWW(#_Fee_BlockHeaderAddr.9)[r2], r5
	movea 0x00000020, r5, r5
	st.w r5, LOWW(#_Fee_BlockHeaderAddr.9)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2312
	movhi HIGHW1(#_Fee_ClusterGroupIdx.6), r0, r2
	ld.bu LOWW(#_Fee_ClusterGroupIdx.6)[r2], r2
	shl 0x00000004, r2
	mov #_Fee_ClusterGrpInfo.4, r6
	add r2, r6
	st.w r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2314
	jarl _Fee_JobIntScanBlockHdrRead.1, r31
	dispose 0x00000010, 0x00000061, [r31]
_Fee_PackBlockHdr.1:
	.stack _Fee_PackBlockHdr.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2319
	mov r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2330
	add r7, r2
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2332
	cmp 0x00000001, r9
	ld.w 0x00000000[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2328
	movea 0x00000020, r5, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2332
	bnz9 .BB.LABEL.50_2
.BB.LABEL.50_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2334
	add 0x00000001, r2
	movhi 0x00008000, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2335
	or r10, r2
	br9 .BB.LABEL.50_3
.BB.LABEL.50_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x7FFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2339
	and r10, r2
.BB.LABEL.50_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.50_5
.BB.LABEL.50_4:	; bb35
	andi 0x000000FF, r10, r11
	mov r5, r12
	add r11, r12
	shl 0x00000003, r11
	shr r11, r6, r11
	st.b r11, 0x00000000[r12]
	add 0x00000001, r10
.BB.LABEL.50_5:	; bb49
	andi 0x000000FF, r10, r11
	cmp 0x00000002, r11
	bl9 .BB.LABEL.50_4
.BB.LABEL.50_6:	; bb55
	addi 0x00000002, r5, r6
	mov 0x00000000, r10
	br9 .BB.LABEL.50_8
.BB.LABEL.50_7:	; bb60
	andi 0x000000FF, r10, r11
	mov r6, r12
	add r11, r12
	shl 0x00000003, r11
	shr r11, r7, r11
	st.b r11, 0x00000000[r12]
	add 0x00000001, r10
.BB.LABEL.50_8:	; bb74
	andi 0x000000FF, r10, r11
	cmp 0x00000002, r11
	bl9 .BB.LABEL.50_7
.BB.LABEL.50_9:	; bb80
	addi 0x00000004, r5, r6
	mov 0x00000000, r7
	br9 .BB.LABEL.50_11
.BB.LABEL.50_10:	; bb85
	andi 0x000000FF, r7, r10
	mov r6, r11
	add r10, r11
	shl 0x00000003, r10
	shr r10, r8, r10
	st.b r10, 0x00000000[r11]
	add 0x00000001, r7
.BB.LABEL.50_11:	; bb98
	andi 0x000000FF, r7, r10
	cmp 0x00000004, r10
	bl9 .BB.LABEL.50_10
.BB.LABEL.50_12:	; bb104
	addi 0x00000008, r5, r6
	mov 0x00000000, r7
	br9 .BB.LABEL.50_14
.BB.LABEL.50_13:	; bb109
	andi 0x000000FF, r7, r8
	mov r6, r10
	add r8, r10
	shl 0x00000003, r8
	shr r8, r2, r8
	st.b r8, 0x00000000[r10]
	add 0x00000001, r7
.BB.LABEL.50_14:	; bb122
	andi 0x000000FF, r7, r8
	cmp 0x00000004, r8
	bl9 .BB.LABEL.50_13
.BB.LABEL.50_15:	; bb128
	add 0x0000000C, r5
	br9 .BB.LABEL.50_17
.BB.LABEL.50_16:	; bb132
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2347
	st.b r2, 0x00000000[r5]
	add 0x00000001, r5
.BB.LABEL.50_17:	; bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2345
	cmp r9, r5
	bl9 .BB.LABEL.50_16
.BB.LABEL.50_18:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2349
	jmp [r31]
_Fee_UnpackBlockHdr.1:
	.stack _Fee_UnpackBlockHdr.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2351
	prepare 0x00000679, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2363
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2364
	st.b r0, 0x00000002[r3]
	ld.w 0x00000020[r3], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2366
	movea 0x00000020, r24, r7
	mov r24, r6
	jarl _Fee_ClusterCheck.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.51_2
.BB.LABEL.51_1:	; entry.if_break_bb230_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000004, r10
	jr .BB.LABEL.51_26
.BB.LABEL.51_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2377
	st.h r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2375
	movea 0x00000010, r24, r25
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.51_4
.BB.LABEL.51_3:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	andi 0x000000FF, r5, r6
	mov r24, r7
	add r6, r7
	ld.bu 0x00000000[r7], r7
	shl 0x00000003, r6
	shl r6, r7
	or r7, r2
	st.h r2, 0x00000000[r20]
	add 0x00000001, r5
.BB.LABEL.51_4:	; bb52
	andi 0x000000FF, r5, r6
	cmp 0x00000002, r6
	bl9 .BB.LABEL.51_3
.BB.LABEL.51_5:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2378
	st.h r0, 0x00000000[r21]
	addi 0x00000002, r24, r2
	mov 0x00000000, r5
	mov r5, r6
	br9 .BB.LABEL.51_7
.BB.LABEL.51_6:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	andi 0x000000FF, r6, r7
	mov r2, r8
	add r7, r8
	ld.bu 0x00000000[r8], r8
	shl 0x00000003, r7
	shl r7, r8
	or r8, r5
	st.h r5, 0x00000000[r21]
	add 0x00000001, r6
.BB.LABEL.51_7:	; bb86
	andi 0x000000FF, r6, r7
	cmp 0x00000002, r7
	bl9 .BB.LABEL.51_6
.BB.LABEL.51_8:	; bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2379
	st.w r0, 0x00000000[r22]
	addi 0x00000004, r24, r2
	mov 0x00000000, r5
	mov r5, r6
	br9 .BB.LABEL.51_10
.BB.LABEL.51_9:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	andi 0x000000FF, r6, r7
	mov r2, r8
	add r7, r8
	ld.bu 0x00000000[r8], r8
	shl 0x00000003, r7
	shl r7, r8
	or r8, r5
	st.w r5, 0x00000000[r22]
	add 0x00000001, r6
.BB.LABEL.51_10:	; bb115
	andi 0x000000FF, r6, r7
	cmp 0x00000004, r7
	bl9 .BB.LABEL.51_9
.BB.LABEL.51_11:	; bb121
	addi 0x00000008, r24, r2
	mov 0x00000000, r5
	mov r5, r6
	br9 .BB.LABEL.51_13
.BB.LABEL.51_12:	; bb126
	andi 0x000000FF, r6, r7
	mov r2, r8
	add r7, r8
	ld.bu 0x00000000[r8], r8
	shl 0x00000003, r7
	shl r7, r8
	or r8, r5
	add 0x00000001, r6
.BB.LABEL.51_13:	; bb141
	andi 0x000000FF, r6, r7
	cmp 0x00000004, r7
	bl9 .BB.LABEL.51_12
.BB.LABEL.51_14:	; bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2383
	ld.hu 0x00000000[r21], r2
	ld.w 0x00000000[r22], r6
	add r6, r2
	ld.hu 0x00000000[r20], r6
	add r6, r2
	addi 0x0000000C, r24, r6
	movhi 0x00008000, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2384
	tst r7, r5
	bnz9 .BB.LABEL.51_16
.BB.LABEL.51_15:	; if_then_bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2386
	st.b r0, 0x00000000[r23]
	br9 .BB.LABEL.51_17
.BB.LABEL.51_16:	; if_else_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2390
	st.b r7, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2391
	add 0x00000001, r2
.BB.LABEL.51_17:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2394
	xor r2, r5
	mov 0x7FFFFFFF, r2
	tst r2, r5
	bz9 .BB.LABEL.51_19
.BB.LABEL.51_18:	; if_break_bb.if_break_bb230_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.51_26
.BB.LABEL.51_19:	; if_else_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2413
	mov r25, r7
	jarl _Fee_ClusterCheck.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.51_18
.BB.LABEL.51_20:	; if_else_bb189
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	movea 0x00000003, r3, r8
	movea 0x000000AA, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2417
	mov r25, r6
	jarl _Fee_UnpackHdrValidOrInvalid.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.51_18
.BB.LABEL.51_21:	; if_else_bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2421
	movea 0x00000018, r24, r6
	movea 0x00000002, r3, r8
	movea 0x00000055, r0, r7
	jarl _Fee_UnpackHdrValidOrInvalid.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.51_18
.BB.LABEL.51_22:	; if_else_bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2430
	ld.bu 0x00000003[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.51_25
.BB.LABEL.51_23:	; bb211
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 0
	ld.bu 0x00000002[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.51_25
.BB.LABEL.51_24:	; bb211.if_break_bb230_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.51_26
.BB.LABEL.51_25:	; if_else_bb224
	mov 0x00000001, r10
.BB.LABEL.51_26:	; if_break_bb230
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/Fee/Fee.c", 2441
	dispose 0x00000004, 0x00000679, [r31]
	.section .data, data
	.align 4
_Fee_ConfigStd.1:
	.ds (4)
	.align 4
_Fee_ModuleStatus.2:
	.ds (4)
	.section .bss, bss
	.align 4
_Fee_BlockInfo.3:
	.ds (648)
	.align 4
_Fee_ClusterGrpInfo.4:
	.ds (16)
	.align 4
_Fee_JobInfo.5:
	.ds (44)
_Fee_ClusterGroupIdx.6:
	.ds (1)
_Fee_ClusterIdx.7:
	.ds (1)
_Fee_DataBuffer.8:
	.ds (3280)
	.align 4
_Fee_BlockHeaderAddr.9:
	.ds (4)
