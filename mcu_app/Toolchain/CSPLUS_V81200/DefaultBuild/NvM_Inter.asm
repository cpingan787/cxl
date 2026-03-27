#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Memory\NvM\NvM_Inter.c -oDefaultBuild\NvM_Inter.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_f546ec31491c40fa90c81a640e159c09xdpc4lbz.xvx
#@	compiled at Fri Mar 27 09:50:46 2026

	.file "..\..\Bsw\Memory\NvM\NvM_Inter.c"

	$reg_mode 32
	.dbl_size 8

	.extern _MemIf_MemHwaApis_at
	.extern _NvM_BlockDescriptor
	.extern _NvmMultiBlockCallback
	.public _NvM_Module, 20
	.public _NvM_MultiJob, 16
	.public _NvM_AtomJob, 24
	.public _NvM_CurRunning, 92
	.public _NvM_StandQueueManage, 3
	.public _NvM_StandQueue, 120
	.public _NvM_AdminBlock, 848
	.extern _MemIf_GetStatus
	.public _NvM_SetWordBitState
	.public _NvM_GetWordBitState
	.public _NvM_JobEnqueue
	.extern _SchM_Enter_NvM_Queue
	.extern _SchM_Exit_NvM_Queue
	.public _NvM_JobDequeue
	.public _NvM_InterReadRom
	.public _NvM_InterCalcCrc
	.extern _Crc_CalculateCRC16
	.public _NvM_InterReadBlock
	.public _NvM_InterWriteBlock
	.public _NvM_InterRestoreBlockDefaults
	.public _NvM_InterInvalidateNvBlock
	.public _NvM_InterReadAll
	.public _NvM_InterWriteAll
	.public _NvM_InterWriteVerification
	.public _NvM_InterValidateAll

	.section .text, text
_NvM_MemIfReqSubDeal.1:
	.stack _NvM_MemIfReqSubDeal.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 297
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 304
	mov #_NvM_CurRunning, r2
	ld.bu 0x0000000C[r2], r5
	ld.h 0x00000028[r2], r20
	shl 0x00000008, r20
	or r5, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 305
	cmp 0x00000003, r6
	bh9 .BB.LABEL.1_10
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	shl 0x00000002, r6
	jmp #.SWITCH.LABEL.1_17[r6]
.SWITCH.LABEL.1_17:
	jr .BB.LABEL.1_2
	jr .BB.LABEL.1_11
	jr .BB.LABEL.1_13
	jr .BB.LABEL.1_15
.SWITCH.LABEL.1_17.END:
.BB.LABEL.1_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 308
	mov #_NvM_CurRunning, r2
	ld.w 0x00000024[r2], r5
	cmp 0x00000002, r5
	ld.hu 0x0000002A[r2], r21
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 310
	add 0x00000002, r21
	br9 .BB.LABEL.1_8
.BB.LABEL.1_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 312
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 314
	add 0x00000004, r21
	br9 .BB.LABEL.1_8
.BB.LABEL.1_6:	; if_else_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 316
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 318
	add 0x00000001, r21
.BB.LABEL.1_8:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 324
	mov #_NvM_CurRunning, r22
	ld.hu 0x00000000[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 326
	addi 0xFFFFFFFF, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 324
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 326
	cmov 0x00000002, 0x00000000, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 328
	zxh r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.hu 0x0000000A[r5], r6
	mov 0x00000006, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 334
	ld.bu 0x00000006[r22], r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	addi 0x00000002, r21, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 332
	cmp 0x00000001, r10
	cmov 0x0000000A, r21, r5, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 334
	zxh r9
	andi 0x0000FFFF, r20, r6
	mov #_NvM_NvDataBuffer.2, r8
	mov 0x00000000, r7
	jarl [r2], r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_9:	; if_else_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r7
	mov 0x00000001, r6
	jarl _NvM_JobOverSetFlag.1, r31
.BB.LABEL.1_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 378
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_11:	; switch_clause_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 344
	movhi HIGHW1(#_NvM_CurRunning+0x00000006), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000006)[r2], r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	andi 0x0000FFFF, r20, r6
	mov #_NvM_NvDataBuffer.2, r7
	jarl [r2], r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_12:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 346
	movhi HIGHW1(#_NvM_CurRunning+0x00000013), r0, r20
	ld.b LOWW(#_NvM_CurRunning+0x00000013)[r20], r2
	add 0xFFFFFFFF, r2
	st.b r2, LOWW(#_NvM_CurRunning+0x00000013)[r20]
	br9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; switch_clause_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 355
	movhi HIGHW1(#_NvM_CurRunning+0x00000006), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000006)[r2], r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	andi 0x0000FFFF, r20, r6
	jarl [r2], r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_14:	; if_then_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r20
	mov 0x00000002, r2
	st.w r2, LOWW(#_NvM_Module+0x0000000C)[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 378
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_15:	; switch_clause_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 365
	movhi HIGHW1(#_NvM_CurRunning+0x00000006), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000006)[r2], r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	andi 0x0000FFFF, r20, r6
	jarl [r2], r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_16:	; if_then_bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 367
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	mov 0x00000002, r5
	st.w r5, LOWW(#_NvM_Module+0x0000000C)[r2]
	dispose 0x00000000, 0x00000071, [r31]
_NvM_MemIfReq.1:
	.stack _NvM_MemIfReq.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 417
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 419
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	ld.w LOWW(#_NvM_Module+0x0000000C)[r2], r2
	cmp 0x00000001, r2
	mov r6, r20
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 421
	movhi HIGHW1(#_NvM_CurRunning+0x00000006), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000006)[r2], r6
	jarl _MemIf_GetStatus, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 423
	mov r20, r6
	jarl _NvM_MemIfReqSubDeal.1, r31
.BB.LABEL.2_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 426
	dispose 0x00000000, 0x00000041, [r31]
_NvM_SetWordBitState:
	.stack _NvM_SetWordBitState = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 441
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 443
	shl r7, r2
	ld.h 0x00000000[r6], r5
	cmp 0x00000001, r8
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 445
	or r2, r5
	st.h r5, 0x00000000[r6]
	jmp [r31]
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 449
	not r2, r2
	and r2, r5
	st.h r5, 0x00000000[r6]
	jmp [r31]
_NvM_GetWordBitState:
	.stack _NvM_GetWordBitState = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 466
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 470
	shl r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 472
	tst r6, r2
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 475
	jmp [r31]
_NvM_MemCpy.1:
	.stack _NvM_MemCpy.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 490
	prepare 0x00000079, 0x00000000
	mov r7, r20
	addi 0x00000000, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 496
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; entry.if_break_bb211_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.5_15
.BB.LABEL.5_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 498
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	ld.hu 0xFFFFFFF0[r2], r6
	mov 0x00000008, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 500
	cmp 0x00000001, r10
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb.bb202_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r2
	jr .BB.LABEL.5_28
.BB.LABEL.5_5:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 502
	mov #_NvM_CurRunning, r2
	ld.b 0x00000014[r2], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 510
	ld.w 0x00000008[r2], r2
	cmp 0x00000007, r2
	bz9 .BB.LABEL.5_8
.BB.LABEL.5_6:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	addi 0xFFFFFFE9, r2, r0
	bz9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; if_then_bb29
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.5_17
.BB.LABEL.5_8:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 516
	movhi HIGHW1(#_NvM_CurRunning+0x00000050), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000050)[r2], r2
	mov r21, r6
	jarl [r2], r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_9:	; if_then_bb58.bb77_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.5_11
.BB.LABEL.5_10:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 522
	mov r21, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r20, r6
	add r2, r6
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.5_11:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 520
	movhi HIGHW1(#_NvM_CurRunning+0x0000002A), r0, r5
	ld.hu LOWW(#_NvM_CurRunning+0x0000002A)[r5], r5
	cmp r5, r2
	bl9 .BB.LABEL.5_10
.BB.LABEL.5_12:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 525
	movhi HIGHW1(#_NvM_CurRunning+0x00000008), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000008)[r2], r2
	cmp 0x00000005, r2
	bz9 .BB.LABEL.5_14
.BB.LABEL.5_13:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	addi 0xFFFFFFE7, r2, r0
	bnz9 .BB.LABEL.5_16
.BB.LABEL.5_14:	; bb84.if_break_bb211_crit_edge
	mov 0x00000000, r10
.BB.LABEL.5_15:	; if_break_bb211
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 588
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.5_16:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 529
	movhi HIGHW1(#_NvM_CurRunning), r0, r20
	ld.hu LOWW(#_NvM_CurRunning)[r20], r6
	shl 0x00000004, r6
	mov #_NvM_AdminBlock, r21
	add r21, r6
	add 0xFFFFFFF0, r6
	mov 0x00000001, r22
	mov r22, r7
	mov r22, r8
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 533
	ld.hu LOWW(#_NvM_CurRunning)[r20], r6
	shl 0x00000004, r6
	add r21, r6
	add 0xFFFFFFF0, r6
	mov 0x00000002, r7
	mov r22, r8
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 537
	mov r22, r6
	mov r22, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.5_17:	; if_else_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 547
	cmp 0x00000006, r2
	bz9 .BB.LABEL.5_20
.BB.LABEL.5_18:	; if_else_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x0000000C, r2
	bz9 .BB.LABEL.5_20
.BB.LABEL.5_19:	; if_else_bb112
	addi 0xFFFFFFEA, r2, r0
	bnz9 .BB.LABEL.5_21
.BB.LABEL.5_20:	; if_else_bb112.bb161_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.5_23
.BB.LABEL.5_21:	; bb138
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000008, r2
	bnz9 .BB.LABEL.5_2
	br9 .BB.LABEL.5_20
.BB.LABEL.5_22:	; bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 556
	mov r21, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r20, r6
	add r2, r6
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.5_23:	; bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 554
	movhi HIGHW1(#_NvM_CurRunning+0x0000002A), r0, r5
	ld.hu LOWW(#_NvM_CurRunning+0x0000002A)[r5], r5
	cmp r5, r2
	bl9 .BB.LABEL.5_22
.BB.LABEL.5_24:	; bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 558
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000008, r2
	bz9 .BB.LABEL.5_26
.BB.LABEL.5_25:	; if_then_bb173
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 560
	movhi HIGHW1(#_NvM_CurRunning), r0, r21
	ld.hu LOWW(#_NvM_CurRunning)[r21], r6
	shl 0x00000004, r6
	mov #_NvM_AdminBlock, r22
	add r22, r6
	add 0xFFFFFFF0, r6
	mov 0x00000000, r23
	mov 0x00000001, r7
	mov r23, r8
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 564
	ld.hu LOWW(#_NvM_CurRunning)[r21], r6
	shl 0x00000004, r6
	add r22, r6
	add 0xFFFFFFF0, r6
	mov 0x00000002, r7
	mov r23, r8
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 568
	mov r23, r6
	mov r23, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
.BB.LABEL.5_26:	; if_break_bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 570
	movhi HIGHW1(#_NvM_CurRunning+0x0000004C), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x0000004C)[r2], r2
	mov r20, r6
	jarl [r2], r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.5_27:	; bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 582
	mov r21, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r20, r6
	add r2, r6
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.5_28:	; bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 580
	movhi HIGHW1(#_NvM_CurRunning+0x0000002A), r0, r5
	ld.hu LOWW(#_NvM_CurRunning+0x0000002A)[r5], r5
	cmp r5, r2
	bl9 .BB.LABEL.5_27
	br9 .BB.LABEL.5_14
_NvM_AtomJobReq.1:
	.stack _NvM_AtomJobReq.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 602
	mov #_NvM_AtomJob, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 604
	ld.b 0x00000000[r2], r5
	add 0x00000001, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 605
	zxb r5
	shl 0x00000002, r5
	add r5, r2
	st.w r6, 0x00000004[r2]
	jmp [r31]
_NvM_RunTimeHandle.1:
	.stack _NvM_RunTimeHandle.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 624
	movhi HIGHW1(#_NvM_Module+0x00000008), r0, r2
	mov 0x00000002, r5
	st.w r5, LOWW(#_NvM_Module+0x00000008)[r2]
	jmp [r31]
_NvM_CopyCurBlockInfo.1:
	.stack _NvM_CopyCurBlockInfo.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 658
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 661
	mov #_NvM_CurRunning, r2
	ld.hu 0x00000000[r2], r20
	add 0xFFFFFFFF, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 662
	andi 0x0000FFFF, r20, r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	st.w r5, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 664
	cmp 0x00000003, r5
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 666
	andi 0x0000FFFF, r20, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r2, r5
	st.b r0, 0x00000002[r5]
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 672
	jarl _NVM_GetRepeatMirrorOperation.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 673
	andi 0x0000FFFF, r20, r2
	mov r2, r5
	shl 0x00000004, r5
	mov #_NvM_AdminBlock, r6
	add r5, r6
	ld.bu 0x00000002[r6], r5
	mov #_NvM_CurRunning, r7
	st.b r5, 0x0000000C[r7]
	mov 0xFFFFFFFF, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 674
	st.h r8, 0x00000002[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 675
	ld.h 0x00000000[r6], r6
	st.h r6, 0x00000010[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 676
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r6
	add r2, r6
	ld.w 0x0000001C[r6], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 678
	andi 0x0000FFFF, r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r6
	add r2, r6
	ld.w 0x0000001C[r6], r2
	shl 0x00000002, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	movhi HIGHW1(#_NvM_CurRunning+0x00000044), r0, r5
	st.w r2, LOWW(#_NvM_CurRunning+0x00000044)[r5]
.BB.LABEL.8_4:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 680
	andi 0x0000FFFF, r20, r2
	mov r2, r5
	shl 0x00000004, r5
	mov #_NvM_AdminBlock, r6
	add r5, r6
	ld.w 0x00000008[r6], r5
	mov #_NvM_CurRunning, r6
	st.w r5, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 681
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.b 0x00000017[r5], r2
	add 0x00000001, r2
	st.b r2, 0x00000013[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 682
	ld.b 0x00000016[r5], r2
	st.b r2, 0x00000012[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 683
	ld.h 0x00000018[r5], r2
	st.h r2, 0x0000002C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 684
	st.h r0, 0x0000002E[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 685
	ld.b 0x00000000[r5], r2
	st.b r2, 0x00000006[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 686
	ld.bu 0x00000014[r5], r2
	st.b r2, 0x0000000D[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 687
	ld.b 0x00000015[r5], r7
	st.b r7, 0x0000000E[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 688
	ld.w 0x0000000C[r5], r7
	st.w r7, 0x00000024[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 689
	ld.h 0x00000010[r5], r7
	st.h r7, 0x00000028[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 690
	ld.hu 0x00000012[r5], r5
	st.h r5, 0x0000002A[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 692
	st.b r0, 0x00000038[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 696
	ld.w 0x00000020[r6], r6
	cmp 0x00000003, r6
	bz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 698
	andi 0x0000FFFF, r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.w 0x00000024[r5], r2
	br9 .BB.LABEL.8_8
.BB.LABEL.8_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 700
	movhi HIGHW1(#_NvM_CurRunning+0x0000000C), r0, r6
	ld.bu LOWW(#_NvM_CurRunning+0x0000000C)[r6], r6
	cmp r6, r2
	bh9 .BB.LABEL.8_9
.BB.LABEL.8_7:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 702
	sub r2, r6
	zxb r5
	mul r5, r6, r0
	andi 0x0000FFFF, r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.w 0x00000024[r5], r2
	add r6, r2
.BB.LABEL.8_8:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_CurRunning+0x00000034), r0, r5
	st.w r2, LOWW(#_NvM_CurRunning+0x00000034)[r5]
.BB.LABEL.8_9:	; if_break_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 712
	andi 0x0000FFFF, r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.hu 0x0000000A[r5], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 713
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.8_11
.BB.LABEL.8_10:	; if_then_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 715
	andi 0x0000FFFF, r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.w 0x00000034[r5], r2
	mov #_NvM_CurRunning, r6
	st.w r2, 0x00000050[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 716
	ld.w 0x00000030[r5], r2
	st.w r2, 0x0000004C[r6]
.BB.LABEL.8_11:	; if_break_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 721
	zxh r20
	mul 0x00000038, r20, r0
	mov #_NvM_BlockDescriptor, r2
	add r20, r2
	ld.w 0x00000028[r2], r5
	mov #_NvM_CurRunning, r6
	st.w r5, 0x00000054[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 723
	ld.w 0x0000002C[r2], r2
	st.w r2, 0x00000058[r6]
	dispose 0x00000000, 0x00000041, [r31]
_NvM_MultiJobDispatch.1:
	.stack _NvM_MultiJobDispatch.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 739
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 743
	mov #_NvM_CurRunning, r2
	ld.h 0x00000000[r2], r5
	add 0x00000001, r5
	ld.w 0x00000008[r2], r6
	st.h r5, 0x00000000[r2]
	cmp 0x0000000C, r6
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 746
	andi 0x0000FFFF, r5, r2
	addi 0xFFFFFFCA, r2, r0
	blt9 .BB.LABEL.9_4
.BB.LABEL.9_2:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 752
	movhi HIGHW1(#_NvM_MultiJob), r0, r5
	st.b r0, LOWW(#_NvM_MultiJob)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 753
	movhi HIGHW1(#_NvM_CurRunning+0x0000001C), r0, r5
	ld.w LOWW(#_NvM_CurRunning+0x0000001C)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.9_10
.BB.LABEL.9_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.9_11
.BB.LABEL.9_4:	; if_else_bb19
	mov 0x0000000C, r2
.BB.LABEL.9_5:	; if_else_bb19
	mov #_NvM_CurRunning, r20
	st.w r2, 0x00000008[r20]
	zxh r5
	shl 0x00000004, r5
	mov #_NvM_AdminBlock, r21
	add r21, r5
	st.w r2, 0xFFFFFFF4[r5]
	mov 0x00000000, r22
	mov r22, r6
	jarl _NvM_GetRamAddress.1, r31
	ld.hu 0x00000000[r20], r5
	shl 0x00000004, r5
	add r21, r5
	mov 0x00000002, r2
	st.w r2, 0xFFFFFFF8[r5]
	jr .BB.LABEL.9_26
.BB.LABEL.9_6:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 775
	addi 0xFFFFFFE7, r6, r0
	bnz9 .BB.LABEL.9_13
.BB.LABEL.9_7:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	andi 0x0000FFFF, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 778
	addi 0xFFFFFFCA, r2, r0
	blt9 .BB.LABEL.9_12
.BB.LABEL.9_8:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 780
	movhi HIGHW1(#_NvM_MultiJob), r0, r5
	st.b r0, LOWW(#_NvM_MultiJob)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 781
	movhi HIGHW1(#_NvM_CurRunning+0x0000001C), r0, r5
	ld.w LOWW(#_NvM_CurRunning+0x0000001C)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.9_10
.BB.LABEL.9_9:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.9_11
.BB.LABEL.9_10:	; if_else_bb51
	mov 0x00000000, r7
.BB.LABEL.9_11:	; if_else_bb51
	jarl _NvM_MultiJobResultFeedBack.1, r31
	movhi HIGHW1(#_NvM_CurRunning+0x0000001C), r0, r5
	st.w r0, LOWW(#_NvM_CurRunning+0x0000001C)[r5]
	movhi HIGHW1(#_NvM_Module+0x00000004), r0, r5
	mov 0x00000002, r2
	st.w r2, LOWW(#_NvM_Module+0x00000004)[r5]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 857
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.9_12:	; if_else_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movea 0x00000019, r0, r2
	br9 .BB.LABEL.9_5
.BB.LABEL.9_13:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 806
	zxh r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.9_17
.BB.LABEL.9_14:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x00000005, r6
	bz9 .BB.LABEL.9_17
.BB.LABEL.9_15:	; bb83
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	addi 0xFFFFFFCA, r2, r0
	blt9 .BB.LABEL.9_21
.BB.LABEL.9_16:	; bb88
	movhi HIGHW1(#_NvM_MultiJob+0x00000009), r0, r2
	ld.bu LOWW(#_NvM_MultiJob+0x00000009)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.9_21
.BB.LABEL.9_17:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 814
	movhi HIGHW1(#_NvM_MultiJob), r0, r2
	st.b r0, LOWW(#_NvM_MultiJob)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 815
	mov #_NvM_CurRunning, r2
	ld.w 0x0000001C[r2], r5
	cmp 0x00000001, r5
	ld.w 0x00000008[r2], r6
	bnz9 .BB.LABEL.9_19
.BB.LABEL.9_18:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.9_20
.BB.LABEL.9_19:	; if_else_bb115
	mov 0x00000000, r7
.BB.LABEL.9_20:	; if_else_bb115
	jarl _NvM_MultiJobResultFeedBack.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 823
	movhi HIGHW1(#_NvM_CurRunning+0x0000001C), r0, r2
	st.w r0, LOWW(#_NvM_CurRunning+0x0000001C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 824
	movhi HIGHW1(#_NvM_Module+0x00000004), r0, r2
	mov 0x00000002, r5
	st.w r5, LOWW(#_NvM_Module+0x00000004)[r2]
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.9_21:	; if_else_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 826
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	addi 0xFFFFFFCA, r2, r0
	blt9 .BB.LABEL.9_24
.BB.LABEL.9_22:	; bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_MultiJob+0x00000009), r0, r2
	ld.bu LOWW(#_NvM_MultiJob+0x00000009)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_24
.BB.LABEL.9_23:	; if_then_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 829
	mov #_NvM_CurRunning, r20
	mov 0x00000001, r2
	st.h r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 830
	movhi HIGHW1(#_NvM_MultiJob+0x00000009), r0, r2
	st.b r0, LOWW(#_NvM_MultiJob+0x00000009)[r2]
	mov 0x0000000D, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 832
	st.w r2, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 833
	ld.hu 0x00000000[r20], r5
	shl 0x00000004, r5
	mov #_NvM_AdminBlock, r21
	add r21, r5
	st.w r2, 0xFFFFFFF4[r5]
	mov 0x00000000, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 835
	mov r22, r6
	jarl _NvM_GetRamAddress.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 836
	ld.hu 0x00000000[r20], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE8[r2], r2
	movea 0xFFFFFFBB, r0, r6
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 838
	ld.hu 0x00000000[r20], r2
	mul 0x00000038, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 836
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 838
	ld.w 0xFFFFFFE8[r2], r2
	movea 0xFFFFFFAA, r0, r5
	st.b r5, 0x00000001[r2]
	br9 .BB.LABEL.9_25
.BB.LABEL.9_24:	; if_else_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 848
	mov #_NvM_CurRunning, r20
	mov 0x0000000D, r2
	st.w r2, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 849
	ld.hu 0x00000000[r20], r5
	shl 0x00000004, r5
	mov #_NvM_AdminBlock, r21
	add r21, r5
	st.w r2, 0xFFFFFFF4[r5]
	mov 0x00000000, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 850
	mov r22, r6
	jarl _NvM_GetRamAddress.1, r31
.BB.LABEL.9_25:	; if_else_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	ld.hu 0x00000000[r20], r2
	shl 0x00000004, r2
	add r21, r2
	mov 0x00000002, r5
	st.w r5, 0xFFFFFFF8[r2]
.BB.LABEL.9_26:	; if_else_bb160
	jarl _NvM_CopyCurBlockInfo.1, r31
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 857
	dispose 0x00000000, 0x00000071, [r31]
_NvM_JobEnqueue:
	.stack _NvM_JobEnqueue = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 872
	prepare 0x00000079, 0x00000000
	ori 0x0000FFFF, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 878
	add r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 879
	movhi HIGHW1(#_NvM_StandQueueManage), r0, r2
	ld.bu LOWW(#_NvM_StandQueueManage)[r2], r2
	cmp 0x0000000A, r2
	mov r8, r21
	mov r7, r22
	mov r6, r23
	bl9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.if_break_bb93_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.10_11
.BB.LABEL.10_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 881
	jarl _SchM_Enter_NvM_Queue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 882
	mov #_NvM_StandQueueManage, r2
	ld.bu 0x00000002[r2], r5
	mulh 0x0000000C, r5
	mov #_NvM_StandQueue, r6
	add r6, r5
	st.h r23, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 883
	ld.bu 0x00000002[r2], r5
	mulh 0x0000000C, r5
	add r6, r5
	st.w r22, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 884
	ld.bu 0x00000002[r2], r5
	mulh 0x0000000C, r5
	add r5, r6
	st.w r21, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 885
	ld.b 0x00000002[r2], r5
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 887
	andi 0x000000FF, r5, r6
	cmp 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 889
	cmov 0x0000000B, 0x00000000, r5, r5
	st.b r5, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 891
	ld.b 0x00000000[r2], r5
	add 0x00000001, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 892
	jarl _SchM_Exit_NvM_Queue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 893
	addi 0xFFFFFFF4, r22, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	addi 0xFFFFFFE7, r22, r0
	bnz9 .BB.LABEL.10_10
.BB.LABEL.10_4:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 896
	jarl _SchM_Enter_NvM_Queue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 898
	mov #_NvM_MultiJob, r20
	mov 0x00000001, r23
	st.b r23, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 899
	st.w r22, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 900
	jarl _SchM_Exit_NvM_Queue, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 901
	mov r22, r6
	jarl _NvM_MultiJobResultFeedBack.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 902
	cmp 0x0000000C, r22
	bz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb63.if_break_bb93_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.10_11
.BB.LABEL.10_6:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 904
	jarl _SchM_Enter_NvM_Queue, r31
	mov 0x00000000, r20
	br9 .BB.LABEL.10_8
.BB.LABEL.10_7:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 907
	andi 0x0000FFFF, r20, r23
	shl 0x00000004, r23
	mov #_NvM_AdminBlock, r2
	add r23, r2
	mov 0x00000001, r23
	st.b r23, 0x0000000C[r2]
	add 0x00000001, r20
.BB.LABEL.10_8:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 905
	andi 0x0000FFFF, r20, r23
	addi 0xFFFFFFCB, r23, r0
	blt9 .BB.LABEL.10_7
.BB.LABEL.10_9:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 909
	jarl _SchM_Exit_NvM_Queue, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.10_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 914
	jarl _SchM_Enter_NvM_Queue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 916
	zxh r20
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r6
	add r20, r6
	mov 0x00000000, r20
	mov 0x00000001, r8
	mov r20, r7
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 917
	jarl _SchM_Exit_NvM_Queue, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 918
	mov r23, r6
	jarl _NvM_SingleJobResultFeedBack.1, r31
	mov r20, r10
.BB.LABEL.10_11:	; if_break_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 932
	dispose 0x00000000, 0x00000079, [r31]
_NvM_JobDequeue:
	.stack _NvM_JobDequeue = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 946
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 952
	movhi HIGHW1(#_NvM_Module+0x00000004), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 955
	jarl _NvM_MultiJobDispatch.1, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.11_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 957
	movhi HIGHW1(#_NvM_StandQueueManage), r0, r2
	ld.bu LOWW(#_NvM_StandQueueManage)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_8
.BB.LABEL.11_3:	; if_then_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 959
	jarl _SchM_Enter_NvM_Queue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 961
	movhi HIGHW1(#_NvM_StandQueueManage+0x00000001), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 962
	ld.bu LOWW(#_NvM_StandQueueManage+0x00000001)[r2], r6
	mulhi 0x0000000C, r6, r2
	mov #_NvM_StandQueue, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	movhi HIGHW1(#_NvM_CurRunning+0x00000008), r0, r5
	st.w r2, LOWW(#_NvM_CurRunning+0x00000008)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 963
	add 0xFFFFFFF4, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_CurRunning+0x00000008), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000008)[r2], r2
	addi 0xFFFFFFE7, r2, r0
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 966
	movhi HIGHW1(#_NvM_Module+0x00000004), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_NvM_Module+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 967
	movhi HIGHW1(#_NvM_CurRunning), r0, r20
	mov 0x00000002, r21
	st.h r21, LOWW(#_NvM_CurRunning)[r20]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 975
	jarl _NvM_GetRamAddress.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 976
	ld.hu LOWW(#_NvM_CurRunning)[r20], r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	st.w r21, 0xFFFFFFF8[r2]
	br9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; if_else_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 985
	movhi HIGHW1(#_NvM_Module+0x00000004), r0, r2
	st.w r0, LOWW(#_NvM_Module+0x00000004)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 986
	mulhi 0x0000000C, r6, r2
	mov #_NvM_StandQueue, r5
	add r2, r5
	ld.h 0x00000000[r5], r2
	movhi HIGHW1(#_NvM_CurRunning), r0, r20
	st.h r2, LOWW(#_NvM_CurRunning)[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 987
	jarl _NvM_GetRamAddress.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 988
	ld.hu LOWW(#_NvM_CurRunning)[r20], r6
	shl 0x00000004, r6
	mov #_NvM_AdminBlock, r2
	add r2, r6
	add 0xFFFFFFF0, r6
	mov 0x00000000, r7
	mov r7, r8
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.11_7:	; if_break_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 990
	jarl _NvM_CopyCurBlockInfo.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 992
	mov #_NvM_StandQueueManage, r2
	ld.b 0x00000001[r2], r5
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 993
	andi 0x000000FF, r5, r6
	cmp 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 996
	cmov 0x0000000B, 0x00000000, r5, r5
	st.b r5, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 998
	ld.b 0x00000000[r2], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 999
	jarl _SchM_Exit_NvM_Queue, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1000
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.11_8:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1044
	dispose 0x00000000, 0x00000061, [r31]
_NvM_GetRamAddress.1:
	.stack _NvM_GetRamAddress.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1802
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1806
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r20
	add 0xFFFFFFFF, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1837
	movhi HIGHW1(#_NvM_Module+0x00000004), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000004)[r2], r2
	cmp 0x00000001, r2
	mov r6, r21
	bnz9 .BB.LABEL.12_11
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1840
	andi 0x0000FFFF, r20, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r21
	add r2, r21
	ld.hu 0x00000000[r21], r6
	mov 0x00000004, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1841
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.12_4
.BB.LABEL.12_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_CurRunning+0x00000008), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000008)[r2], r2
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; bb.bb26_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; bb25
	mov 0x00000001, r2
.BB.LABEL.12_5:	; bb26
	cmp 0x00000000, r2
	mov r20, r2
	zxh r2
	bnz9 .BB.LABEL.12_7
.BB.LABEL.12_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1843
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r6
	add r2, r6
	mov 0x00000000, r8
	mov 0x00000005, r7
	jarl _NvM_SetWordBitState, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.12_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1848
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r21
	add r2, r21
	ld.hu 0x0000000A[r21], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1850
	andi 0x0000FFFF, r20, r22
	mov r22, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r6
	add r2, r6
	mov 0x00000001, r8
	mov 0x00000005, r7
	jarl _NvM_SetWordBitState, r31
	mov #_NvM_AdminBlock, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1851
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.12_10
.BB.LABEL.12_8:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1856
	shl 0x00000004, r22
	add r22, r6
	mov 0x00000001, r8
.BB.LABEL.12_9:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000008, r7
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1896
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.12_10:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1860
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r2
	add r22, r2
	ld.w 0x00000020[r2], r2
	movhi HIGHW1(#_NvM_CurRunning+0x00000030), r0, r21
	st.w r2, LOWW(#_NvM_CurRunning+0x00000030)[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1861
	zxh r20
	shl 0x00000004, r20
	add r20, r6
	mov 0x00000000, r8
	br9 .BB.LABEL.12_9
.BB.LABEL.12_11:	; if_else_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1866
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.12_17
.BB.LABEL.12_12:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1868
	andi 0x0000FFFF, r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.hu 0x0000000A[r5], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1870
	mulhi 0x0000000C, r21, r2
	mov #_NvM_StandQueue, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	mov 0x00000005, r7
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_14
.BB.LABEL.12_13:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1872
	mulh 0x0000000C, r21
	mov #_NvM_StandQueue, r2
	add r21, r2
	ld.w 0x00000008[r2], r2
	movhi HIGHW1(#_NvM_CurRunning+0x00000030), r0, r5
	st.w r2, LOWW(#_NvM_CurRunning+0x00000030)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1873
	zxh r20
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r21
	add r20, r21
	mov 0x00000000, r20
	mov r21, r6
	mov r20, r8
	jarl _NvM_SetWordBitState, r31
	mov 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1874
	mov r21, r6
	mov r20, r8
	jarl _NvM_SetWordBitState, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.12_14:	; if_else_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov #_NvM_AdminBlock, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1876
	cmp 0x00000001, r10
	mov r20, r6
	zxh r6
	bnz9 .BB.LABEL.12_16
.BB.LABEL.12_15:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1881
	shl 0x00000004, r6
	add r21, r6
	mov 0x00000001, r22
	mov r22, r8
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1882
	zxh r20
	shl 0x00000004, r20
	mov r21, r6
	add r20, r6
	mov 0x00000008, r7
	mov r22, r8
	jarl _NvM_SetWordBitState, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.12_16:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1886
	mul 0x00000038, r6, r0
	mov #_NvM_BlockDescriptor, r2
	add r6, r2
	ld.w 0x00000020[r2], r2
	movhi HIGHW1(#_NvM_CurRunning+0x00000030), r0, r5
	st.w r2, LOWW(#_NvM_CurRunning+0x00000030)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1887
	zxh r20
	shl 0x00000004, r20
	add r20, r21
	mov 0x00000001, r8
	mov r21, r6
	jarl _NvM_SetWordBitState, r31
	mov 0x00000000, r8
	mov 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1888
	mov r21, r6
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.12_17:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1896
	dispose 0x00000000, 0x00000071, [r31]
_NvM_JobOverSetFlag.1:
	.stack _NvM_JobOverSetFlag.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1910
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1919
	mov #_NvM_StandQueueManage, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1920
	ld.bu 0x00000001[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1919
	ld.bu 0x00000000[r2], r2
	mov 0x00000000, r8
	mov r7, r20
	mov r6, r7
	br9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1924
	andi 0x0000FFFF, r5, r6
	mul 0x0000000C, r6, r0
	mov #_NvM_StandQueue, r9
	add r6, r9
	ld.hu 0x00000000[r9], r6
	movhi HIGHW1(#_NvM_CurRunning), r0, r9
	ld.hu LOWW(#_NvM_CurRunning)[r9], r9
	cmp r9, r6
	bz9 .BB.LABEL.13_5
.BB.LABEL.13_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1930
	add 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1931
	andi 0x0000FFFF, r5, r6
	cmp 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1933
	cmov 0x0000000B, 0x00000000, r5, r5
	add 0x00000001, r8
.BB.LABEL.13_3:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1922
	andi 0x0000FFFF, r8, r6
	cmp r2, r6
	bl9 .BB.LABEL.13_1
.BB.LABEL.13_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1944
	movhi HIGHW1(#_NvM_CurRunning), r0, r21
	ld.hu LOWW(#_NvM_CurRunning)[r21], r6
	jarl _NvM_SingleJobResultFeedBack.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1945
	ld.hu LOWW(#_NvM_CurRunning)[r21], r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	movea 0x0000001A, r0, r5
	st.w r5, 0xFFFFFFF4[r2]
	br9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1940
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000001, r8
	mov 0x00000000, r7
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.13_6:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1953
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000000, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1957
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.13_9
.BB.LABEL.13_7:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	ld.w 0xFFFFFFF8[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_9
.BB.LABEL.13_8:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1960
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000001, r8
	mov 0x00000003, r7
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.13_9:	; if_break_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1963
	cmp 0x00000002, r20
	bnz9 .BB.LABEL.13_13
.BB.LABEL.13_10:	; if_then_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1966
	movhi HIGHW1(#_NvM_CurRunning), r0, r20
	ld.hu LOWW(#_NvM_CurRunning)[r20], r20
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE4[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_12
.BB.LABEL.13_11:	; if_then_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1965
	add 0xFFFFFFFF, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1968
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.w 0x0000001C[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1965
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r5
	add r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1968
	ld.bu 0x00000002[r5], r20
	shl 0x00000002, r20
	add r20, r2
	movhi HIGHW1(#_NvM_CurRunning+0x00000044), r0, r20
	ld.w LOWW(#_NvM_CurRunning+0x00000044)[r20], r20
	st.w r20, 0x00000000[r2]
.BB.LABEL.13_12:	; if_break_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1970
	mov #_NvM_CurRunning, r20
	movea 0x00000010, r20, r6
	mov 0x00000001, r8
	br9 .BB.LABEL.13_15
.BB.LABEL.13_13:	; if_else_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1972
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.13_16
.BB.LABEL.13_14:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1974
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000000, r8
.BB.LABEL.13_15:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000009, r7
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.13_16:	; if_break_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1980
	mov #_NvM_CurRunning, r2
	ld.hu 0x00000000[r2], r5
	shl 0x00000004, r5
	mov #_NvM_AdminBlock, r6
	add r6, r5
	ld.h 0x00000010[r2], r6
	st.h r6, 0xFFFFFFF0[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1983
	ld.w 0x00000058[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_28
.BB.LABEL.13_17:	; if_then_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 1987
	movhi HIGHW1(#_NvM_CurRunning+0x00000008), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000008)[r2], r2
	add 0xFFFFFFFA, r2
	movea 0x00000012, r0, r5
	cmp r5, r2
	bh9 .BB.LABEL.13_25
.BB.LABEL.13_18:	; if_then_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.13_29[r2]
.SWITCH.LABEL.13_29:
	br9 .BB.LABEL.13_19
	br9 .BB.LABEL.13_20
	br9 .BB.LABEL.13_21
	br9 .BB.LABEL.13_22
	br9 .BB.LABEL.13_25
	br9 .BB.LABEL.13_23
	br9 .BB.LABEL.13_24
	br9 .BB.LABEL.13_25
	br9 .BB.LABEL.13_25
	br9 .BB.LABEL.13_25
	br9 .BB.LABEL.13_25
	br9 .BB.LABEL.13_25
	br9 .BB.LABEL.13_25
	br9 .BB.LABEL.13_25
	br9 .BB.LABEL.13_25
	br9 .BB.LABEL.13_25
	br9 .BB.LABEL.13_19
	br9 .BB.LABEL.13_20
	br9 .BB.LABEL.13_21
.SWITCH.LABEL.13_29.END:
.BB.LABEL.13_19:	; if_then_bb140.switch_break_bb_crit_edge
	mov 0x00000001, r2
	mov 0x00000000, r6
	br9 .BB.LABEL.13_26
.BB.LABEL.13_20:	; switch_clause_bb142
	mov 0x00000001, r6
	mov r6, r2
	br9 .BB.LABEL.13_26
.BB.LABEL.13_21:	; switch_clause_bb143
	mov 0x00000001, r2
	mov 0x00000002, r6
	br9 .BB.LABEL.13_26
.BB.LABEL.13_22:	; switch_clause_bb144
	mov 0x00000001, r2
	mov 0x00000003, r6
	br9 .BB.LABEL.13_26
.BB.LABEL.13_23:	; switch_clause_bb145
	mov 0x00000001, r2
	mov 0x00000004, r6
	br9 .BB.LABEL.13_26
.BB.LABEL.13_24:	; switch_clause_bb146
	mov 0x00000001, r2
	mov 0x00000005, r6
	br9 .BB.LABEL.13_26
.BB.LABEL.13_25:	; switch_clause_bb147
	mov 0x00000000, r2
.BB.LABEL.13_26:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2014
	xori 0x00000001, r2, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_28
.BB.LABEL.13_27:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2016
	mov #_NvM_CurRunning, r2
	ld.hu 0x00000000[r2], r5
	shl 0x00000004, r5
	mov #_NvM_AdminBlock, r7
	add r7, r5
	ld.w 0xFFFFFFF8[r5], r7
	ld.w 0x00000058[r2], r2
	jarl [r2], r31
.BB.LABEL.13_28:	; if_break_bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2020
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000000, r8
	mov 0x00000007, r7
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2021
	mov #_NvM_Module, r2
	st.w r0, 0x0000000C[r2]
	mov 0x0000000C, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2022
	st.w r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2023
	movhi HIGHW1(#_NvM_AtomJob), r0, r2
	st.b r0, LOWW(#_NvM_AtomJob)[r2]
	dispose 0x00000000, 0x00000061, [r31]
_NvM_MemIfReadOk.1:
	.stack _NvM_MemIfReadOk.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2038
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2041
	mov #_NvM_Module, r2
	st.w r0, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2043
	ld.w 0x00000010[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r8
	mov 0x00000007, r7
	br9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_else_bb
	mov 0x00000000, r8
	mov 0x00000004, r7
.BB.LABEL.14_3:	; if_else_bb
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2052
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000006, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2055
	cmp 0x00000001, r10
	mov r10, r20
	bnz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2057
	movhi HIGHW1(#_NvM_CurRunning+0x00000024), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000024)[r2], r7
	mov #_NvM_NvDataBuffer.2, r6
	jarl _NvM_ReadStaticBlockID.1, r31
.BB.LABEL.14_5:	; if_break_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2059
	movhi HIGHW1(#_NvM_CurRunning+0x00000024), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000024)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2061
	movhi HIGHW1(#_NvM_CurRunning+0x0000003C), r0, r20
	mov #_NvM_NvDataBuffer.2, r2
	st.w r2, LOWW(#_NvM_CurRunning+0x0000003C)[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2062
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r20
	ld.w LOWW(#_NvM_Module+0x00000010)[r20], r2
	cmp 0x00000000, r2
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2068
	cmov 0x00000002, 0x00000009, r2, r2
	st.w r2, LOWW(#_NvM_Module+0x00000010)[r20]
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2070
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.14_7:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2072
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.14_9
.BB.LABEL.14_8:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movea 0x00000011, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2074
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.14_9:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x0000000F, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2078
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	dispose 0x00000000, 0x00000041, [r31]
_NvM_MemIfReadFailed.1:
	.stack _NvM_MemIfReadFailed.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2094
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2096
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	st.w r0, LOWW(#_NvM_Module+0x0000000C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2099
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.15_9
.BB.LABEL.15_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2112
	cmp 0x00000001, r2
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.15_6
.BB.LABEL.15_3:	; bb15
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mov r2, r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r6, r5
	ld.w 0xFFFFFFEC[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.15_5
.BB.LABEL.15_4:	; bb24
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFF0[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.15_6
.BB.LABEL.15_5:	; if_then_bb48
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2116
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2117
	movhi HIGHW1(#_NvM_CurRunning+0x00000018), r0, r2
	mov 0x00000003, r5
	st.w r5, LOWW(#_NvM_CurRunning+0x00000018)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2124
	jarl _NVM_GetRepeatMirrorOperation.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2125
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x00000008, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2126
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.15_6:	; if_else_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2128
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.15_9
.BB.LABEL.15_7:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_9
.BB.LABEL.15_8:	; if_then_bb65
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2131
	mov #_NvM_Module, r5
	st.w r2, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2132
	st.w r2, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2133
	movhi HIGHW1(#_NvM_CurRunning+0x0000000C), r0, r5
	st.b r2, LOWW(#_NvM_CurRunning+0x0000000C)[r5]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.15_9:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r20
	mov r20, r6
	mov r20, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r6
	mov r20, r7
	jarl _NvM_JobOverSetFlag.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2146
	dispose 0x00000000, 0x00000041, [r31]
_NvM_MemIfPending.1:
	.stack _NvM_MemIfPending.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2160
	jmp [r31]
_NvM_MemIfCancelled.1:
	.stack _NvM_MemIfCancelled.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2178
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2180
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	st.w r0, LOWW(#_NvM_Module+0x0000000C)[r2]
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2181
	mov r20, r6
	mov r20, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2182
	mov r20, r7
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000041, [r31]
_NvM_MemIfInconsistent.1:
	.stack _NvM_MemIfInconsistent.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2197
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2199
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	st.w r0, LOWW(#_NvM_Module+0x0000000C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2201
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.18_9
.BB.LABEL.18_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2212
	cmp 0x00000001, r2
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_6
.BB.LABEL.18_3:	; bb15
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mov r2, r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r6, r5
	ld.w 0xFFFFFFEC[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; bb24
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFF0[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.18_6
.BB.LABEL.18_5:	; if_then_bb48
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2223
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2225
	movhi HIGHW1(#_NvM_CurRunning+0x00000018), r0, r2
	mov 0x00000003, r5
	st.w r5, LOWW(#_NvM_CurRunning+0x00000018)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2232
	jarl _NVM_GetRepeatMirrorOperation.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2233
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x00000008, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2234
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_6:	; if_else_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2236
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.18_9
.BB.LABEL.18_7:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.18_9
.BB.LABEL.18_8:	; if_then_bb65
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2239
	mov #_NvM_Module, r5
	st.w r2, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2240
	st.w r2, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2241
	movhi HIGHW1(#_NvM_CurRunning+0x0000000C), r0, r5
	st.b r2, LOWW(#_NvM_CurRunning+0x0000000C)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_9:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r6
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _NvM_JobOverSetFlag.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2254
	dispose 0x00000000, 0x00000001, [r31]
_NvM_MemIfInvalid.1:
	.stack _NvM_MemIfInvalid.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2268
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2270
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	st.w r0, LOWW(#_NvM_Module+0x0000000C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2272
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.19_6
.BB.LABEL.19_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2279
	cmp 0x00000001, r2
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.19_7
.BB.LABEL.19_3:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2281
	mov #_NvM_CurRunning, r20
	mov 0x00000003, r2
	st.w r2, 0x00000018[r20]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2282
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2283
	ld.hu 0x00000000[r20], r2
	mov r2, r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r6, r5
	ld.w 0xFFFFFFEC[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFF0[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.19_6
.BB.LABEL.19_5:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2286
	jarl _NVM_GetRepeatMirrorOperation.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2287
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x00000008, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2288
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.19_6:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r6
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r7
	mov 0x00000005, r6
	jarl _NvM_JobOverSetFlag.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2302
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.19_7:	; if_else_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2298
	mov #_NvM_Module, r5
	st.w r2, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2299
	st.w r2, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2300
	movhi HIGHW1(#_NvM_CurRunning+0x0000000C), r0, r5
	st.b r2, LOWW(#_NvM_CurRunning+0x0000000C)[r5]
	dispose 0x00000000, 0x00000041, [r31]
_NvM_MemIfWriteOk.1:
	.stack _NvM_MemIfWriteOk.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2316
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2319
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	st.w r0, LOWW(#_NvM_Module+0x0000000C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2321
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2323
	mov #_NvM_CurRunning, r2
	st.w r0, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2324
	mov #_NvM_Module, r5
	mov 0x00000002, r6
	st.w r6, 0x00000010[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2325
	st.w r6, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2326
	st.b r0, 0x0000000C[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2330
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000007, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2333
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2335
	mov #_NvM_Module, r2
	st.w r0, 0x00000010[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2336
	st.w r5, 0x0000000C[r2]
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2337
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_5:	; if_else_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2341
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2342
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.20_7
.BB.LABEL.20_6:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2344
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000000, r8
	mov 0x00000004, r7
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.20_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000002, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2346
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_NvM_MemIfWriteFailed.1:
	.stack _NvM_MemIfWriteFailed.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2363
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2366
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	st.w r0, LOWW(#_NvM_Module+0x0000000C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2367
	movhi HIGHW1(#_NvM_CurRunning+0x00000013), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000013)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2369
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_NvM_Module+0x0000000C)[r2]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.21_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2371
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.21_5
.BB.LABEL.21_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2374
	mov #_NvM_CurRunning, r2
	ld.hu 0x00000000[r2], r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r6, r5
	ld.b 0xFFFFFFDF[r5], r5
	st.b r5, 0x00000013[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2375
	mov #_NvM_Module, r5
	mov 0x00000002, r6
	st.w r6, 0x00000010[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2376
	st.w r6, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2377
	st.b r0, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2378
	jarl _NVM_GetRepeatMirrorOperation.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.21_5:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2385
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_6:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_CurRunning+0x00000018), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000018)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_7:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2387
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000007, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2390
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.21_9
.BB.LABEL.21_8:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2392
	mov #_NvM_Module, r5
	st.w r2, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2393
	movhi HIGHW1(#_NvM_CurRunning+0x0000000C), r0, r6
	st.b r2, LOWW(#_NvM_CurRunning+0x0000000C)[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2394
	st.w r2, 0x0000000C[r5]
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2395
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.21_9:	; if_else_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r20
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2399
	mov r20, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2400
	mov r20, r6
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.21_10:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2405
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2406
	mov r6, r7
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000041, [r31]
_NvM_MemIfInvalidOk.1:
	.stack _NvM_MemIfInvalidOk.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2490
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2492
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	st.w r0, LOWW(#_NvM_Module+0x0000000C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2493
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.22_5
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2495
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000006, r2
	bnz9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_then_bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2497
	mov #_NvM_Module, r2
	mov 0x00000007, r5
	st.w r5, 0x00000010[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2498
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2499
	movhi HIGHW1(#_NvM_CurRunning+0x0000000C), r0, r2
	st.b r5, LOWW(#_NvM_CurRunning+0x0000000C)[r2]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.22_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2501
	cmp 0x00000007, r2
	bnz9 .BB.LABEL.22_7
.BB.LABEL.22_4:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2503
	mov r20, r6
	mov r20, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2504
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000004, r7
	mov r20, r8
	jarl _NvM_SetWordBitState, r31
	br9 .BB.LABEL.22_6
.BB.LABEL.22_5:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2515
	mov r20, r6
	mov r20, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
.BB.LABEL.22_6:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r7
	mov r20, r6
	jarl _NvM_JobOverSetFlag.1, r31
.BB.LABEL.22_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2518
	dispose 0x00000000, 0x00000041, [r31]
_NvM_MemIfInvalidFailed.1:
	.stack _NvM_MemIfInvalidFailed.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2532
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2534
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	st.w r0, LOWW(#_NvM_Module+0x0000000C)[r2]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2535
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2536
	mov r6, r7
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_NvM_InterReadRom:
	.stack _NvM_InterReadRom = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2555
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2558
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r20
	add 0xFFFFFFFF, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2559
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x0000000B, r2
	bz9 .BB.LABEL.24_7
.BB.LABEL.24_1:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2575
	andi 0x0000FFFF, r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.w 0x00000024[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.24_8
.BB.LABEL.24_2:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_CurRunning+0x00000014), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000014)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.24_8
.BB.LABEL.24_3:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2578
	mov #_NvM_CurRunning, r2
	ld.w 0x00000030[r2], r7
	ld.w 0x00000034[r2], r6
	jarl _NvM_MemCpy.1, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.24_25
.BB.LABEL.24_4:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2580
	andi 0x0000FFFF, r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.hu 0x0000000A[r5], r6
	mov 0x00000002, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2583
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.24_7
.BB.LABEL.24_5:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2585
	mov #_NvM_CurRunning, r20
	ld.w 0x00000030[r20], r2
	st.w r2, 0x0000003C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2586
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r20
	mov 0x0000000B, r2
	st.w r2, LOWW(#_NvM_Module+0x00000010)[r20]
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2587
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.24_6:	; if_else_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r7
	mov 0x00000000, r6
	jarl _NvM_JobOverSetFlag.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2649
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.24_7:	; if_else_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r6
	br9 .BB.LABEL.24_16
.BB.LABEL.24_8:	; if_else_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2605
	movhi HIGHW1(#_NvM_CurRunning+0x00000054), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000054)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.24_21
.BB.LABEL.24_9:	; if_then_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2608
	movhi HIGHW1(#_NvM_CurRunning+0x00000008), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000008)[r2], r2
	cmp 0x00000008, r2
	bz9 .BB.LABEL.24_13
.BB.LABEL.24_10:	; if_then_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x0000000C, r2
	bz9 .BB.LABEL.24_14
.BB.LABEL.24_11:	; if_then_bb131
	addi 0xFFFFFFE8, r2, r0
	bz9 .BB.LABEL.24_13
.BB.LABEL.24_12:	; if_then_bb131.switch_break_bb_crit_edge
	mov 0x00000000, r6
	br9 .BB.LABEL.24_15
.BB.LABEL.24_13:	; switch_clause_bb
	mov 0x00000001, r6
	br9 .BB.LABEL.24_15
.BB.LABEL.24_14:	; switch_clause_bb133
	mov 0x00000002, r6
.BB.LABEL.24_15:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2621
	movhi HIGHW1(#_NvM_CurRunning+0x00000054), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000054)[r2], r2
	jarl [r2], r31
	mov 0x00000001, r6
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.24_20
.BB.LABEL.24_16:	; if_then_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	movhi HIGHW1(#_NvM_CurRunning+0x00000018), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000018)[r2], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.24_19
.BB.LABEL.24_17:	; bb146
	andi 0x0000FFFF, r20, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000005, r2
	bz9 .BB.LABEL.24_19
.BB.LABEL.24_18:	; bb161
	zxh r20
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r20, r2
	ld.w 0x00000008[r2], r20
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.24_6
.BB.LABEL.24_19:	; if_then_bb177
	mov 0x00000001, r7
	mov 0x00000008, r6
	jarl _NvM_JobOverSetFlag.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2649
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.24_20:	; if_else_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2637
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.24_21:	; if_else_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2642
	andi 0x0000FFFF, r20, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r2, r5
	add 0x00000008, r5
	movhi HIGHW1(#_NvM_CurRunning+0x00000018), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000018)[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.24_23
.BB.LABEL.24_22:	; if_else_bb182.bb198_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000003, r2
	br9 .BB.LABEL.24_24
.BB.LABEL.24_23:	; bb191
	andi 0x0000FFFF, r20, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r6
	add r2, r6
	ld.w 0x00000008[r6], r2
.BB.LABEL.24_24:	; bb198
	st.w r2, 0x00000000[r5]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2645
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2646
	zxh r20
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r20, r2
	ld.w 0x00000008[r2], r6
	mov 0x00000001, r7
	jarl _NvM_JobOverSetFlag.1, r31
.BB.LABEL.24_25:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2649
	dispose 0x00000000, 0x00000041, [r31]
_NvM_InterCalcCrc:
	.stack _NvM_InterCalcCrc = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2663
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2671
	movhi HIGHW1(#_NvM_CurRunning+0x00000038), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000038)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r9
	br9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2673
	mov #_NvM_CurRunning, r2
	mov 0x00000001, r9
	st.b r9, 0x00000038[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2675
	ld.h 0x0000002A[r2], r5
	st.h r5, 0x00000040[r2]
.BB.LABEL.25_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2687
	movhi HIGHW1(#_NvM_CurRunning+0x00000040), r0, r2
	ld.hu LOWW(#_NvM_CurRunning+0x00000040)[r2], r20
	movea 0x00000081, r0, r2
	cmp r2, r20
	bl9 .BB.LABEL.25_5
.BB.LABEL.25_4:	; if_break_bb.if_break_bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movea 0x00000080, r0, r20
	br9 .BB.LABEL.25_7
.BB.LABEL.25_5:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2696
	movhi HIGHW1(#_NvM_CurRunning+0x00000038), r0, r2
	st.b r0, LOWW(#_NvM_CurRunning+0x00000038)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2698
	movhi HIGHW1(#_NvM_AtomJob), r0, r2
	ld.bu LOWW(#_NvM_AtomJob)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.25_7
.BB.LABEL.25_6:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2700
	add 0xFFFFFFFF, r2
	movhi HIGHW1(#_NvM_AtomJob), r0, r5
	st.b r2, LOWW(#_NvM_AtomJob)[r5]
.BB.LABEL.25_7:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2704
	movhi HIGHW1(#_NvM_CurRunning+0x00000024), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000024)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.25_9
.BB.LABEL.25_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2714
	mov #_NvM_CurRunning, r21
	ld.hu 0x00000044[r21], r8
	ld.w 0x0000003C[r21], r6
	mov r20, r7
	jarl _Crc_CalculateCRC16, r31
	st.w r10, 0x00000044[r21]
.BB.LABEL.25_9:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2729
	mov #_NvM_CurRunning, r2
	ld.h 0x00000040[r2], r5
	sub r20, r5
	st.h r5, 0x00000040[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2730
	ld.w 0x0000003C[r2], r5
	add r20, r5
	st.w r5, 0x0000003C[r2]
	dispose 0x00000000, 0x00000061, [r31]
_NvM_InterReadBlockSubDeal.1:
	.stack _NvM_InterReadBlockSubDeal.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2745
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2752
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	add 0xFFFFFFF7, r2
	cmp 0x00000002, r2
	bnc9 .BB.LABEL.26_6
.BB.LABEL.26_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2755
	mov #_NvM_CurRunning, r2
	ld.hu 0x0000002A[r2], r5
	mov #_NvM_NvDataBuffer.2, r20
	add r20, r5
	ld.bu 0x00000000[r5], r20
	ld.w 0x00000024[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2758
	ld.bu 0x00000001[r5], r2
	shl 0x00000008, r2
	br9 .BB.LABEL.26_5
.BB.LABEL.26_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2760
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.26_6
.BB.LABEL.26_4:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2763
	ld.bu 0x00000001[r5], r2
	shl 0x00000008, r2
	or r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2764
	ld.bu 0x00000002[r5], r2
	shl 0x00000010, r2
	or r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2765
	ld.b 0x00000003[r5], r2
	shl 0x00000018, r2
.BB.LABEL.26_5:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	or r2, r20
.BB.LABEL.26_6:	; if_break_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2773
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	addi 0xFFFFFFEF, r2, r0
	bnz9 .BB.LABEL.26_9
.BB.LABEL.26_7:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2775
	mov #_NvM_CurRunning, r2
	ld.hu 0x00000002[r2], r20
	ld.hu 0x00000000[r2], r2
	mov 0x00000000, r6
	cmp r2, r20
	bz9 .BB.LABEL.26_19
.BB.LABEL.26_8:	; if_then_bb84.if_break_bb160_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.26_20
.BB.LABEL.26_9:	; if_else_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2785
	add 0xFFFFFFF7, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.26_11
.BB.LABEL.26_10:	; if_else_bb95.if_break_bb160_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r7
	mov r7, r6
	br9 .BB.LABEL.26_20
.BB.LABEL.26_11:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2789
	mov #_NvM_CurRunning, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2797
	ld.hu 0x00000000[r2], r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r6, r5
	ld.hu 0xFFFFFFD2[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2789
	ld.w 0x00000044[r2], r21
	mov 0x00000006, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2797
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2789
	cmp r21, r20
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2795
	cmov 0x00000002, 0x00000002, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2800
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.26_16
.BB.LABEL.26_12:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2802
	mov #_NvM_CurRunning, r2
	ld.hu 0x00000002[r2], r5
	ld.hu 0x00000000[r2], r2
	cmp r2, r5
	bz9 .BB.LABEL.26_14
.BB.LABEL.26_13:	; if_then_bb132.if_break_bb160_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.26_20
.BB.LABEL.26_14:	; if_then_bb140
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2805
	cmp 0x00000002, r6
	bnz9 .BB.LABEL.26_20
.BB.LABEL.26_15:	; if_then_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2807
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x0000000F, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	br9 .BB.LABEL.26_20
.BB.LABEL.26_16:	; if_else_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2815
	cmp 0x00000002, r6
	bz9 .BB.LABEL.26_18
.BB.LABEL.26_17:	; if_else_bb149.if_break_bb160_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.26_20
.BB.LABEL.26_18:	; if_then_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2817
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x0000000F, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	br9 .BB.LABEL.26_17
.BB.LABEL.26_19:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2778
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x0000000F, r20
	st.w r20, LOWW(#_NvM_Module+0x00000010)[r2]
	mov 0x00000002, r7
.BB.LABEL.26_20:	; if_break_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2830
	jarl _NvM_ReadErrorHandle.1, r31
	dispose 0x00000000, 0x00000061, [r31]
_NvM_InterReadBlock:
	.stack _NvM_InterReadBlock = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2845
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2848
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x0000000F, r2
	bnz9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2850
	jarl _NvM_MemCpyStep.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.27_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2854
	jarl _NvM_InterReadBlockSubDeal.1, r31
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2855
	jarl _NvM_MemIfReq.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2856
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	ld.w LOWW(#_NvM_Module+0x0000000C)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.27_4
.BB.LABEL.27_3:	; if_then_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2858
	movhi HIGHW1(#_NvM_CurRunning+0x00000006), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000006)[r2], r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x0000001C[r5], r2
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2859
	mul 0x00000018, r10, r0
	mov #_NvM_MemIfAsyncFuncTable.1, r2
	add r10, r2
	ld.w 0x00000000[r2], r2
	jarl [r2], r31
.BB.LABEL.27_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2861
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.27_9
.BB.LABEL.27_5:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2864
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.27_8
.BB.LABEL.27_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov #_NvM_CurRunning, r2
	ld.bu 0x0000000D[r2], r5
	ld.bu 0x0000000C[r2], r2
	cmp r2, r5
	bh9 .BB.LABEL.27_8
.BB.LABEL.27_7:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2866
	jarl _NVM_GetRepeatMirrorOperation.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2867
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x00000008, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2868
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.27_8:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2873
	mov #_NvM_Module, r2
	st.w r0, 0x00000010[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2874
	st.w r5, 0x0000000C[r2]
.BB.LABEL.27_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2878
	dispose 0x00000000, 0x00000001, [r31]
_NvM_InterWriteBlock:
	.stack _NvM_InterWriteBlock = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2892
	prepare 0x00000679, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2903
	jarl _NvM_MemIfReq.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2904
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	ld.w LOWW(#_NvM_Module+0x0000000C)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2906
	movhi HIGHW1(#_NvM_CurRunning+0x00000006), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000006)[r2], r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x0000001C[r5], r2
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2907
	mul 0x00000018, r10, r0
	mov #_NvM_MemIfAsyncFuncTable.1, r2
	add r10, r2
	ld.w 0x00000004[r2], r2
	jarl [r2], r31
.BB.LABEL.28_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2911
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.28_7
.BB.LABEL.28_3:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2913
	movhi HIGHW1(#_NvM_CurRunning+0x00000014), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000014)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.28_6
.BB.LABEL.28_4:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2915
	movhi HIGHW1(#_NvM_CurRunning+0x00000030), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000030)[r2], r6
	mov #_NvM_NvDataBuffer.2, r7
	jarl _NvM_MemCpy.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.28_7
.BB.LABEL.28_5:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2917
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000001, r8
	mov 0x0000000A, r7
	jarl _NvM_SetWordBitState, r31
	br9 .BB.LABEL.28_7
.BB.LABEL.28_6:	; if_else_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2925
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2926
	mov r6, r7
	jarl _NvM_JobOverSetFlag.1, r31
.BB.LABEL.28_7:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2933
	movhi HIGHW1(#_NvM_CurRunning+0x00000010), r0, r2
	ld.hu LOWW(#_NvM_CurRunning+0x00000010)[r2], r6
	mov 0x0000000A, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2934
	cmp 0x00000001, r10
	bz9 .BB.LABEL.28_20
.BB.LABEL.28_8:	; if_break_bb43.if_break_bb75_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r20
.BB.LABEL.28_9:	; if_break_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2960
	cmp 0x00000001, r20
	bnz17 .BB.LABEL.28_30
.BB.LABEL.28_10:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x0000000B, r2
	bnz17 .BB.LABEL.28_30
.BB.LABEL.28_11:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2962
	mov #_NvM_CurRunning, r21
	ld.hu 0x00000000[r21], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r22
	add r22, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000002, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2965
	ld.hu 0x00000000[r21], r2
	mul 0x00000038, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2962
	add r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2965
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000009, r22
	mov r22, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2968
	ld.hu 0x00000010[r21], r6
	mov 0x00000004, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2969
	ld.hu 0x00000010[r21], r6
	mov r22, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2970
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.28_17
.BB.LABEL.28_12:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x00000001, r24
	bnz9 .BB.LABEL.28_17
.BB.LABEL.28_13:	; if_then_bb90
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.28_17
.BB.LABEL.28_14:	; if_then_bb90
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.28_17
.BB.LABEL.28_15:	; if_then_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2973
	mov #_NvM_CurRunning, r2
	ld.w 0x00000044[r2], r5
	ld.w 0x00000048[r2], r2
	cmp r2, r5
	bnz9 .BB.LABEL.28_17
.BB.LABEL.28_16:	; if_then_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r20
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2975
	mov r20, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2976
	mov r20, r6
	mov r20, r7
	jarl _NvM_JobOverSetFlag.1, r31
.BB.LABEL.28_17:	; if_break_bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2980
	cmp 0x00000001, r20
	bnz17 .BB.LABEL.28_30
.BB.LABEL.28_18:	; if_then_bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2982
	mov #_NvM_CurRunning, r2
	ld.hu 0x0000002A[r2], r5
	mov #_NvM_NvDataBuffer.2, r6
	add r6, r5
	ld.w 0x00000044[r2], r6
	ld.w 0x00000024[r2], r2
	st.b r6, 0x00000000[r5]
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.28_25
.BB.LABEL.28_19:	; if_then_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2985
	mov #_NvM_CurRunning, r2
	ld.hu 0x0000002A[r2], r5
	mov #_NvM_NvDataBuffer.2, r6
	add r6, r5
	ld.w 0x00000044[r2], r2
	shr 0x00000008, r2
	st.b r2, 0x00000001[r5]
	br9 .BB.LABEL.28_27
.BB.LABEL.28_20:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2936
	mov #_NvM_CurRunning, r20
	movea 0x00000010, r20, r6
	mov 0x00000000, r8
	mov 0x0000000A, r7
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2938
	ld.w 0x00000024[r20], r20
	cmp 0x00000000, r20
	bz9 .BB.LABEL.28_22
.BB.LABEL.28_21:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2940
	mov #_NvM_CurRunning, r20
	ld.w 0x00000044[r20], r2
	st.w r2, 0x00000048[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2941
	mov #_NvM_NvDataBuffer.2, r2
	st.w r2, 0x0000003C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2942
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r20
	mov 0x0000000B, r2
	st.w r2, LOWW(#_NvM_Module+0x00000010)[r20]
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2943
	jarl _NvM_AtomJobReq.1, r31
	mov 0x00000000, r20
	jr .BB.LABEL.28_9
.BB.LABEL.28_22:	; if_else_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2948
	movhi HIGHW1(#_NvM_CurRunning), r0, r20
	ld.hu LOWW(#_NvM_CurRunning)[r20], r20
	mul 0x00000038, r20, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r20
	ld.hu 0xFFFFFFD2[r20], r6
	mov 0x00000006, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2952
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.28_24
.BB.LABEL.28_23:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2954
	movhi HIGHW1(#_NvM_CurRunning+0x00000024), r0, r20
	ld.w LOWW(#_NvM_CurRunning+0x00000024)[r20], r7
	mov #_NvM_NvDataBuffer.2, r6
	jarl _NvM_WriteStaticBlockID.1, r31
.BB.LABEL.28_24:	; if_break_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2956
	jarl _NvM_WriteSequenceForManagementType.1, r31
	jr .BB.LABEL.28_8
.BB.LABEL.28_25:	; if_else_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2987
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.28_27
.BB.LABEL.28_26:	; if_then_bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2990
	mov r6, r2
	shr 0x00000008, r2
	st.b r2, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2991
	mov r6, r2
	shr 0x00000010, r2
	st.b r2, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2992
	shr 0x00000018, r6
	st.b r6, 0x00000003[r5]
.BB.LABEL.28_27:	; if_break_bb221
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 2998
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000006, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3001
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.28_29
.BB.LABEL.28_28:	; if_then_bb234
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3003
	movhi HIGHW1(#_NvM_CurRunning+0x00000024), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000024)[r2], r7
	mov #_NvM_NvDataBuffer.2, r6
	jarl _NvM_WriteStaticBlockID.1, r31
.BB.LABEL.28_29:	; if_break_bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3005
	jarl _NvM_WriteSequenceForManagementType.1, r31
.BB.LABEL.28_30:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3008
	dispose 0x00000000, 0x00000679, [r31]
_NvM_InterRestoreBlockDefaults:
	.stack _NvM_InterRestoreBlockDefaults = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3064
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3066
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.29_4
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3068
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mov r2, r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r6, r5
	ld.w 0xFFFFFFEC[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.29_3
.BB.LABEL.29_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFF0[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.29_4
.BB.LABEL.29_3:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3071
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	mov 0x00000002, r6
	st.w r6, 0xFFFFFFF8[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3072
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x00000008, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3073
	jarl _NvM_AtomJobReq.1, r31
.BB.LABEL.29_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3076
	dispose 0x00000000, 0x00000001, [r31]
_NvM_InterInvalidateNvBlock:
	.stack _NvM_InterInvalidateNvBlock = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3125
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3129
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.30_2
.BB.LABEL.30_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3131
	mov #_NvM_Module, r2
	mov 0x00000006, r5
	st.w r5, 0x00000010[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3132
	st.w r5, 0x0000000C[r2]
.BB.LABEL.30_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3134
	jarl _NvM_MemIfReq.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3135
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	ld.w LOWW(#_NvM_Module+0x0000000C)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.30_4
.BB.LABEL.30_3:	; if_then_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3137
	movhi HIGHW1(#_NvM_CurRunning+0x00000006), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000006)[r2], r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x0000001C[r5], r2
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3138
	mul 0x00000018, r10, r0
	mov #_NvM_MemIfAsyncFuncTable.1, r2
	add r10, r2
	ld.w 0x00000014[r2], r2
	jarl [r2], r31
.BB.LABEL.30_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3140
	dispose 0x00000000, 0x00000001, [r31]
_NvM_InterReadAll:
	.stack _NvM_InterReadAll = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3155
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3158
	mov #_NvM_CurRunning, r20
	ld.hu 0x00000000[r20], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000004, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3161
	ld.hu 0x00000010[r20], r6
	mov 0x00000002, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3162
	ld.hu 0x00000000[r20], r2
	cmp 0x00000002, r2
	mov r10, r20
	bnz9 .BB.LABEL.31_5
.BB.LABEL.31_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3165
	cmp 0x00000001, r21
	bnz17 .BB.LABEL.31_18
.BB.LABEL.31_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.31_18
.BB.LABEL.31_3:	; bb30
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.31_18
.BB.LABEL.31_4:	; if_then_bb42
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3171
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.31_5:	; if_else_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3179
	cmp 0x00000003, r2
	bl9 .BB.LABEL.31_19
.BB.LABEL.31_6:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3181
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.31_8
.BB.LABEL.31_7:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3183
	jarl _NvM_RunTimeHandle.1, r31
.BB.LABEL.31_8:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3187
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.31_18
.BB.LABEL.31_9:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.31_18
.BB.LABEL.31_10:	; bb73
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.31_18
.BB.LABEL.31_11:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3193
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000003, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3197
	movhi HIGHW1(#_NvM_Module+0x00000008), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000008)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.31_17
.BB.LABEL.31_12:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.31_17
.BB.LABEL.31_13:	; if_then_bb109
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3199
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3201
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mov r2, r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r6, r5
	ld.w 0xFFFFFFEC[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.31_15
.BB.LABEL.31_14:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFF0[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.31_16
.BB.LABEL.31_15:	; if_then_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3204
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	mov 0x00000001, r5
	st.w r5, 0xFFFFFFF8[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3205
	jarl _NVM_GetRepeatMirrorOperation.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3206
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x00000008, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3207
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.31_16:	; if_else_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3211
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.31_17:	; if_else_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3216
	mov r20, r6
	mov r20, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3217
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x0000000D, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3218
	mov r20, r6
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.31_18:	; if_else_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r7
	mov 0x00000004, r6
	jarl _NvM_JobOverSetFlag.1, r31
.BB.LABEL.31_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3231
	dispose 0x00000000, 0x00000061, [r31]
_NvM_InterWriteAll:
	.stack _NvM_InterWriteAll = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3245
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3255
	movhi HIGHW1(#_NvM_MultiJob+0x00000008), r0, r2
	ld.bu LOWW(#_NvM_MultiJob+0x00000008)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.32_7
.BB.LABEL.32_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3257
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r20
	br9 .BB.LABEL.32_3
.BB.LABEL.32_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r21
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3261
	mov r21, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3262
	mov #_NvM_CurRunning, r22
	movea 0x00000010, r22, r6
	mov r21, r7
	mov r21, r8
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3263
	ld.hu 0x00000000[r22], r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	mov 0x00000006, r6
	st.w r6, 0xFFFFFFF8[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3264
	ld.hu 0x00000000[r22], r2
	shl 0x00000004, r2
	add r5, r2
	movea 0x0000001A, r0, r5
	st.w r5, 0xFFFFFFF4[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3266
	ld.h 0x00000000[r22], r2
	add 0x00000001, r2
	st.h r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3265
	add 0x00000001, r20
.BB.LABEL.32_3:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3258
	andi 0x0000FFFF, r20, r2
	addi 0xFFFFFFCA, r2, r0
	blt9 .BB.LABEL.32_2
.BB.LABEL.32_4:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3271
	movhi HIGHW1(#_NvM_MultiJob+0x00000009), r0, r2
	ld.bu LOWW(#_NvM_MultiJob+0x00000009)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.32_6
.BB.LABEL.32_5:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3273
	movhi HIGHW1(#_NvM_AdminBlock+0x00000008), r0, r2
	mov 0x00000006, r5
	st.w r5, LOWW(#_NvM_AdminBlock+0x00000008)[r2]
.BB.LABEL.32_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3282
	mov #_NvM_MultiJob, r20
	st.b r0, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3283
	st.b r0, 0x00000000[r20]
	mov 0x00000006, r7
	mov 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3285
	jarl _NvM_MultiJobResultFeedBack.1, r31
	movea 0x0000001A, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3286
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3291
	mov #_NvM_Module, r2
	mov 0x00000002, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3292
	st.w r0, 0x0000000C[r2]
	mov 0x0000000C, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3293
	st.w r5, 0x00000010[r2]
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.32_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3300
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3313
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.32_10
.BB.LABEL.32_8:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE8[r2], r2
	movhi HIGHW1(#_NvM_CurRunning+0x00000030), r0, r5
	ld.w LOWW(#_NvM_CurRunning+0x00000030)[r5], r5
	cmp r2, r5
	bnz9 .BB.LABEL.32_10
.BB.LABEL.32_9:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3316
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r20
	mov 0x00000001, r21
	mov r20, r6
	mov r21, r7
	mov r21, r8
	jarl _NvM_SetWordBitState, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3317
	mov r20, r6
	mov r21, r8
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.32_10:	; if_break_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3319
	mov #_NvM_CurRunning, r20
	ld.hu 0x00000010[r20], r6
	mov 0x00000001, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3320
	ld.hu 0x00000010[r20], r6
	mov 0x00000002, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3321
	ld.hu 0x00000010[r20], r6
	mov 0x00000003, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3322
	ld.hu 0x00000010[r20], r6
	mov 0x00000006, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3323
	ld.hu 0x00000010[r20], r6
	mov 0x00000004, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3324
	ld.hu 0x00000000[r20], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000005, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3329
	cmp 0x00000001, r25
	bz9 .BB.LABEL.32_17
.BB.LABEL.32_11:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.32_21
.BB.LABEL.32_12:	; bb84
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.32_21
.BB.LABEL.32_13:	; bb84
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.32_21
.BB.LABEL.32_14:	; bb84
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.32_21
.BB.LABEL.32_15:	; bb84
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.32_21
.BB.LABEL.32_16:	; bb137
	mov #_NvM_CurRunning, r2
	ld.bu 0x0000000C[r2], r5
	ld.bu 0x0000000D[r2], r2
	cmp r2, r5
	bnc9 .BB.LABEL.32_21
.BB.LABEL.32_17:	; if_then_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3335
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.32_20
.BB.LABEL.32_18:	; bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov #_NvM_CurRunning, r2
	ld.bu 0x0000000D[r2], r5
	ld.bu 0x0000000C[r2], r2
	cmp r2, r5
	bh9 .BB.LABEL.32_20
.BB.LABEL.32_19:	; if_then_bb178
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3337
	mov r20, r6
	mov r20, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3338
	mov r20, r7
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.32_20:	; if_else_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3343
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x0000000D, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3344
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.32_21:	; if_else_bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3349
	movhi HIGHW1(#_NvM_CurRunning+0x00000010), r0, r2
	ld.hu LOWW(#_NvM_CurRunning+0x00000010)[r2], r6
	mov 0x00000005, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3350
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.32_23
.BB.LABEL.32_22:	; if_then_bb189
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3352
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000000, r8
	mov 0x00000002, r7
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.32_23:	; if_break_bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r7
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3354
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000679, [r31]
_NvM_UpdateValidandChangeStatus.1:
	.stack _NvM_UpdateValidandChangeStatus.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3375
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3377
	movhi HIGHW1(#_NvM_CurRunning+0x00000010), r0, r2
	ld.hu LOWW(#_NvM_CurRunning+0x00000010)[r2], r6
	mov 0x00000005, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3378
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.33_2
.BB.LABEL.33_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3380
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r22
	mov 0x00000001, r7
	mov r22, r6
	mov r20, r8
	jarl _NvM_SetWordBitState, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3381
	mov r22, r6
	mov r21, r8
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.33_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3383
	dispose 0x00000000, 0x00000071, [r31]
_NvM_WriteSequenceForManagementType.1:
	.stack _NvM_WriteSequenceForManagementType.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3399
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000002, r2
	mov #_NvM_Module, r2
	bnz9 .BB.LABEL.34_2
.BB.LABEL.34_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3401
	st.w r5, 0x00000010[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3402
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3403
	movhi HIGHW1(#_NvM_CurRunning+0x0000000C), r0, r2
	st.b r5, LOWW(#_NvM_CurRunning+0x0000000C)[r2]
	jmp [r31]
.BB.LABEL.34_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3407
	st.w r5, 0x00000010[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3408
	st.w r5, 0x0000000C[r2]
	jmp [r31]
_NvM_MemCpyStep.1:
	.stack _NvM_MemCpyStep.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3424
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3426
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	ld.hu 0xFFFFFFF0[r2], r6
	mov 0x00000008, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3429
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.35_3
.BB.LABEL.35_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3431
	movhi HIGHW1(#_NvM_CurRunning+0x00000014), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000014)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.35_7
.BB.LABEL.35_2:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3433
	movhi HIGHW1(#_NvM_CurRunning+0x00000030), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000030)[r2], r7
	mov #_NvM_NvDataBuffer.2, r6
	jarl _NvM_MemCpy.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.35_4
	br9 .BB.LABEL.35_8
.BB.LABEL.35_3:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3458
	movhi HIGHW1(#_NvM_CurRunning+0x00000030), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000030)[r2], r7
	mov #_NvM_NvDataBuffer.2, r6
	jarl _NvM_MemCpy.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.35_7
.BB.LABEL.35_4:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_CurRunning+0x00000010), r0, r2
	ld.hu LOWW(#_NvM_CurRunning+0x00000010)[r2], r6
	mov 0x00000007, r7
	jarl _NvM_GetWordBitState, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.35_6
.BB.LABEL.35_5:	; if_then_bb51
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000001, r8
	mov 0x00000004, r7
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.35_6:	; if_break_bb52
	mov 0x00000000, r20
	mov 0x00000001, r6
	mov r20, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000002, r7
	mov r20, r6
	jarl _NvM_JobOverSetFlag.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3477
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.35_7:	; if_else_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r20
	mov r20, r6
	mov r20, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r6
	mov r20, r7
	jarl _NvM_JobOverSetFlag.1, r31
.BB.LABEL.35_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3477
	dispose 0x00000000, 0x00000041, [r31]
_NvM_SuboneInterWriteVerification.1:
	.stack _NvM_SuboneInterWriteVerification.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3491
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r2
	br9 .BB.LABEL.36_6
.BB.LABEL.36_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3498
	mov #_NvM_CurRunning, r5
	ld.hu 0x0000002E[r5], r6
	andi 0x0000FFFF, r2, r7
	add r7, r6
	ld.w 0x00000030[r5], r5
	add r6, r5
	ld.bu 0x00000000[r5], r5
	mov #_NvM_NvDataBuffer.2, r7
	add r6, r7
	ld.bu 0x00000000[r7], r6
	cmp r6, r5
	bz9 .BB.LABEL.36_5
.BB.LABEL.36_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3501
	mov #_NvM_CurRunning, r20
	movea 0x00000010, r20, r6
	mov 0x00000000, r8
	mov 0x00000009, r7
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3503
	st.h r0, 0x0000002E[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3504
	ld.bu 0x00000013[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.36_4
.BB.LABEL.36_3:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3506
	mov #_NvM_Module, r20
	mov 0x0000000D, r2
	st.w r2, 0x00000010[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3507
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000001, r8
	mov 0x0000000A, r7
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3511
	st.w r0, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3512
	movhi HIGHW1(#_NvM_AtomJob), r0, r2
	ld.b LOWW(#_NvM_AtomJob)[r2], r5
	add 0xFFFFFFFF, r5
	st.b r5, LOWW(#_NvM_AtomJob)[r2]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.36_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3516
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3517
	mov r6, r7
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.36_5:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	add 0x00000001, r2
.BB.LABEL.36_6:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3496
	movhi HIGHW1(#_NvM_CurRunning+0x0000002C), r0, r5
	ld.hu LOWW(#_NvM_CurRunning+0x0000002C)[r5], r5
	andi 0x0000FFFF, r2, r6
	cmp r5, r6
	bl9 .BB.LABEL.36_1
.BB.LABEL.36_7:	; if_then_bb49.critedge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3530
	movhi HIGHW1(#_NvM_CurRunning+0x0000002E), r0, r2
	ld.h LOWW(#_NvM_CurRunning+0x0000002E)[r2], r6
	add r5, r6
	st.h r6, LOWW(#_NvM_CurRunning+0x0000002E)[r2]
	dispose 0x00000000, 0x00000041, [r31]
_NvM_SubtwoInterWriteVerification.1:
	.stack _NvM_SubtwoInterWriteVerification.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3546
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r2
	br9 .BB.LABEL.37_6
.BB.LABEL.37_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3551
	andi 0x0000FFFF, r2, r6
	add r6, r5
	movhi HIGHW1(#_NvM_CurRunning+0x00000030), r0, r6
	ld.w LOWW(#_NvM_CurRunning+0x00000030)[r6], r6
	add r5, r6
	ld.bu 0x00000000[r6], r6
	mov #_NvM_NvDataBuffer.2, r7
	add r5, r7
	ld.bu 0x00000000[r7], r5
	cmp r5, r6
	bz9 .BB.LABEL.37_5
.BB.LABEL.37_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3554
	mov #_NvM_CurRunning, r20
	movea 0x00000010, r20, r6
	mov 0x00000000, r8
	mov 0x00000009, r7
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3555
	ld.bu 0x00000013[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.37_4
.BB.LABEL.37_3:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3557
	mov #_NvM_Module, r20
	mov 0x0000000D, r2
	st.w r2, 0x00000010[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3558
	movhi HIGHW1(#_NvM_AtomJob), r0, r2
	ld.b LOWW(#_NvM_AtomJob)[r2], r5
	add 0xFFFFFFFF, r5
	st.b r5, LOWW(#_NvM_AtomJob)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3559
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000001, r8
	mov 0x0000000A, r7
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3563
	st.w r0, 0x0000000C[r20]
	br9 .BB.LABEL.37_7
.BB.LABEL.37_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3567
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3568
	mov r6, r7
	jarl _NvM_JobOverSetFlag.1, r31
	br9 .BB.LABEL.37_7
.BB.LABEL.37_5:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	add 0x00000001, r2
.BB.LABEL.37_6:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3549
	mov #_NvM_CurRunning, r5
	ld.hu 0x0000002A[r5], r6
	ld.hu 0x0000002E[r5], r5
	sub r5, r6
	andi 0x0000FFFF, r2, r7
	cmp r6, r7
	blt9 .BB.LABEL.37_1
.BB.LABEL.37_7:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3579
	movhi HIGHW1(#_NvM_CurRunning+0x0000002E), r0, r2
	st.h r0, LOWW(#_NvM_CurRunning+0x0000002E)[r2]
	dispose 0x00000000, 0x00000041, [r31]
_NvM_InterWriteVerification:
	.stack _NvM_InterWriteVerification = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3594
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3598
	jarl _NvM_MemIfReq.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3599
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.38_14
.BB.LABEL.38_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3601
	movhi HIGHW1(#_NvM_Module+0x0000000C), r0, r2
	ld.w LOWW(#_NvM_Module+0x0000000C)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.38_14
.BB.LABEL.38_2:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3603
	movhi HIGHW1(#_NvM_CurRunning+0x00000006), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000006)[r2], r2
	shl 0x00000005, r2
	mov #_MemIf_MemHwaApis_at, r5
	add r2, r5
	ld.w 0x0000001C[r5], r2
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3604
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.38_12
.BB.LABEL.38_3:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3606
	mov #_NvM_CurRunning, r2
	ld.hu 0x0000002E[r2], r5
	ld.hu 0x0000002A[r2], r2
	cmp r2, r5
	bnc9 .BB.LABEL.38_8
.BB.LABEL.38_4:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	movhi HIGHW1(#_NvM_CurRunning+0x0000002C), r0, r2
	ld.hu LOWW(#_NvM_CurRunning+0x0000002C)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.38_8
.BB.LABEL.38_5:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3609
	mov #_NvM_CurRunning, r5
	ld.hu 0x0000002A[r5], r6
	ld.hu 0x0000002E[r5], r5
	sub r5, r6
	cmp r2, r6
	blt9 .BB.LABEL.38_7
.BB.LABEL.38_6:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3611
	jarl _NvM_SuboneInterWriteVerification.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.38_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3615
	jarl _NvM_SubtwoInterWriteVerification.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.38_8:	; if_else_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3620
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.38_11
.BB.LABEL.38_9:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3622
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.38_11
.BB.LABEL.38_10:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3624
	mov #_NvM_CurRunning, r2
	movea 0x00000010, r2, r6
	mov 0x00000000, r8
	mov 0x00000004, r7
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.38_11:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r20
	mov 0x00000001, r6
	mov r20, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000002, r7
	mov r20, r6
	jarl _NvM_JobOverSetFlag.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3650
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.38_12:	; if_else_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3636
	cmp 0x00000002, r10
	bz9 .BB.LABEL.38_14
.BB.LABEL.38_13:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3638
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3639
	mov r6, r7
	jarl _NvM_JobOverSetFlag.1, r31
.BB.LABEL.38_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3650
	dispose 0x00000000, 0x00000041, [r31]
_NVM_GetRepeatMirrorOperation.1:
	.stack _NVM_GetRepeatMirrorOperation.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3664
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3666
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	movhi HIGHW1(#_NvM_CurRunning+0x00000014), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3669
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.39_2
.BB.LABEL.39_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3671
	st.b r5, LOWW(#_NvM_CurRunning+0x00000014)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.39_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3675
	st.b r5, LOWW(#_NvM_CurRunning+0x00000014)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_NvM_WriteStaticBlockID.1:
	.stack _NvM_WriteStaticBlockID.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3692
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3694
	movhi HIGHW1(#_NvM_CurRunning+0x0000002A), r0, r2
	ld.hu LOWW(#_NvM_CurRunning+0x0000002A)[r2], r2
	bnz9 .BB.LABEL.40_2
.BB.LABEL.40_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3696
	add r6, r2
	mov #_NvM_CurRunning, r5
	ld.hu 0x00000000[r5], r7
	shr 0x00000008, r7
	st.b r7, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3697
	ld.hu 0x0000002A[r5], r2
	add r6, r2
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000001[r2]
	jmp [r31]
.BB.LABEL.40_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	add r6, r2
	mov #_NvM_CurRunning, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3699
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.40_4
.BB.LABEL.40_3:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3701
	ld.hu 0x00000000[r5], r7
	shr 0x00000008, r7
	st.b r7, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3702
	ld.hu 0x0000002A[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3701
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3702
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000002[r2]
	jmp [r31]
.BB.LABEL.40_4:	; if_else_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3704
	cmp 0x00000002, r7
	ld.hu 0x00000000[r5], r7
	bnz9 .BB.LABEL.40_6
.BB.LABEL.40_5:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3706
	shr 0x00000008, r7
	st.b r7, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3707
	ld.hu 0x0000002A[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3706
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3707
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000003[r2]
	jmp [r31]
.BB.LABEL.40_6:	; if_else_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3711
	shr 0x00000008, r7
	st.b r7, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3712
	ld.hu 0x0000002A[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3711
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3712
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000005[r2]
	jmp [r31]
_NvM_ReadStaticBlockID.1:
	.stack _NvM_ReadStaticBlockID.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3729
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3731
	movhi HIGHW1(#_NvM_CurRunning+0x0000002A), r0, r2
	ld.hu LOWW(#_NvM_CurRunning+0x0000002A)[r2], r2
	bnz9 .BB.LABEL.41_2
.BB.LABEL.41_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3733
	add r6, r2
	ld.bu 0x00000001[r2], r5
	ld.b 0x00000000[r2], r2
	br9 .BB.LABEL.41_6
.BB.LABEL.41_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3736
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.41_4
.BB.LABEL.41_3:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3738
	ld.b 0x00000001[r2], r2
	shl 0x00000008, r2
	mov #_NvM_CurRunning, r5
	ld.hu 0x0000002A[r5], r7
	add r6, r7
	ld.bu 0x00000002[r7], r6
	or r6, r2
	st.h r2, 0x00000002[r5]
	jmp [r31]
.BB.LABEL.41_4:	; if_else_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3741
	cmp 0x00000002, r7
	bnz9 .BB.LABEL.41_7
.BB.LABEL.41_5:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3743
	ld.bu 0x00000003[r2], r5
	ld.b 0x00000002[r2], r2
.BB.LABEL.41_6:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	shl 0x00000008, r2
	or r5, r2
	movhi HIGHW1(#_NvM_CurRunning+0x00000002), r0, r5
	st.h r2, LOWW(#_NvM_CurRunning+0x00000002)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3751
	jmp [r31]
.BB.LABEL.41_7:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3748
	ld.bu 0x00000005[r2], r5
	ld.b 0x00000004[r2], r2
	br9 .BB.LABEL.41_6
_NvM_ReadErrorHandleRedundant.1:
	.stack _NvM_ReadErrorHandleRedundant.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3766
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3768
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x00000009, r2
	movhi HIGHW1(#_NvM_CurRunning+0x00000012), r0, r5
	ld.bu LOWW(#_NvM_CurRunning+0x00000012)[r5], r5
	bz9 .BB.LABEL.42_2
.BB.LABEL.42_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	addi 0xFFFFFFEF, r2, r0
	bnz9 .BB.LABEL.42_5
.BB.LABEL.42_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3770
	cmp 0x00000000, r5
	bz9 .BB.LABEL.42_4
.BB.LABEL.42_3:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3772
	add 0xFFFFFFFF, r5
	movhi HIGHW1(#_NvM_CurRunning+0x00000012), r0, r2
	st.b r5, LOWW(#_NvM_CurRunning+0x00000012)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3773
	mov #_NvM_Module, r5
	st.w r0, 0x00000010[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3774
	st.w r2, 0x0000000C[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.42_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3778
	mov #_NvM_CurRunning, r5
	ld.hu 0x00000000[r5], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r6
	add r6, r2
	ld.b 0xFFFFFFDE[r2], r2
	st.b r2, 0x00000012[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3780
	mov #_NvM_Module, r6
	st.w r2, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3781
	st.w r2, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3782
	st.b r2, 0x0000000C[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.42_5:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3787
	cmp 0x00000000, r5
	bz9 .BB.LABEL.42_7
.BB.LABEL.42_6:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3789
	add 0xFFFFFFFF, r5
	movhi HIGHW1(#_NvM_CurRunning+0x00000012), r0, r2
	st.b r5, LOWW(#_NvM_CurRunning+0x00000012)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3790
	mov #_NvM_Module, r2
	mov 0x00000001, r5
	st.w r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3791
	st.w r5, 0x0000000C[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.42_7:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3793
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mov r2, r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r6, r5
	ld.w 0xFFFFFFEC[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.42_9
.BB.LABEL.42_8:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFF0[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.42_10
.BB.LABEL.42_9:	; if_then_bb63
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3797
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3798
	movhi HIGHW1(#_NvM_CurRunning+0x00000018), r0, r2
	mov 0x00000003, r5
	st.w r5, LOWW(#_NvM_CurRunning+0x00000018)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3814
	jarl _NVM_GetRepeatMirrorOperation.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3815
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x00000008, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3816
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.42_10:	; if_else_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3835
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000001, r7
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3836
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_NvM_ReadErrorHandle.1:
	.stack _NvM_ReadErrorHandle.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3854
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3856
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	addi 0xFFFFFFEF, r2, r0
	bz9 .BB.LABEL.43_3
.BB.LABEL.43_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x00000009, r2
	bz9 .BB.LABEL.43_3
.BB.LABEL.43_2:	; entry
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.43_14
.BB.LABEL.43_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3861
	movhi HIGHW1(#_NvM_CurRunning+0x00000020), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000020)[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.43_7
.BB.LABEL.43_4:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3863
	movhi HIGHW1(#_NvM_CurRunning+0x00000012), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000012)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.43_9
.BB.LABEL.43_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3871
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
.BB.LABEL.43_6:	; if_else_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r7
	mov 0x00000003, r6
	jarl _NvM_JobOverSetFlag.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3941
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.43_7:	; if_else_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3891
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.43_13
.BB.LABEL.43_8:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3896
	movhi HIGHW1(#_NvM_CurRunning+0x00000012), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000012)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.43_10
.BB.LABEL.43_9:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	add 0xFFFFFFFF, r2
	movhi HIGHW1(#_NvM_CurRunning+0x00000012), r0, r5
	st.b r2, LOWW(#_NvM_CurRunning+0x00000012)[r5]
	mov #_NvM_Module, r2
	st.w r0, 0x00000010[r2]
	mov 0x00000001, r5
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3941
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.43_10:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3904
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3905
	mov #_NvM_CurRunning, r2
	mov 0x00000003, r5
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3922
	ld.hu 0x00000000[r2], r2
	mov r2, r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r6, r5
	ld.w 0xFFFFFFEC[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.43_12
.BB.LABEL.43_11:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFF0[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.43_6
.BB.LABEL.43_12:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3925
	jarl _NVM_GetRepeatMirrorOperation.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3926
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x00000008, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3927
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.43_13:	; if_else_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3938
	jarl _NvM_ReadErrorHandleRedundant.1, r31
.BB.LABEL.43_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3941
	dispose 0x00000000, 0x00000001, [r31]
_NvM_SingleJobResultFeedBack.1:
	.stack _NvM_SingleJobResultFeedBack.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3955
	shl 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3968
	mov #_NvM_AdminBlock, r2
	add r2, r6
	st.w r7, 0xFFFFFFF8[r6]
	jmp [r31]
_NvM_MultiJobResultFeedBack.1:
	.stack _NvM_MultiJobResultFeedBack.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3983
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3986
	movhi HIGHW1(#_NvM_MultiJob+0x0000000C), r0, r2
	st.w r7, LOWW(#_NvM_MultiJob+0x0000000C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 3987
	cmp 0x0000000A, r6
	bz9 .BB.LABEL.45_6
.BB.LABEL.45_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x0000000D, r6
	bz9 .BB.LABEL.45_4
.BB.LABEL.45_2:	; entry
	addi 0xFFFFFFE7, r6, r0
	bz9 .BB.LABEL.45_5
.BB.LABEL.45_3:	; entry.switch_break_bb_crit_edge
	mov 0x00000000, r6
	br9 .BB.LABEL.45_7
.BB.LABEL.45_4:	; switch_clause_bb
	mov 0x00000001, r6
	br9 .BB.LABEL.45_7
.BB.LABEL.45_5:	; switch_clause_bb5
	mov 0x00000002, r6
	br9 .BB.LABEL.45_7
.BB.LABEL.45_6:	; switch_clause_bb6
	mov 0x00000004, r6
.BB.LABEL.45_7:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4005
	movhi HIGHW1(#_NvmMultiBlockCallback), r0, r2
	ld.w LOWW(#_NvmMultiBlockCallback)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.45_9
.BB.LABEL.45_8:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4008
	jarl [r2], r31
.BB.LABEL.45_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4011
	dispose 0x00000000, 0x00000001, [r31]
_NvM_InterValidateAll:
	.stack _NvM_InterValidateAll = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4026
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4028
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	ld.hu 0xFFFFFFF0[r2], r6
	mov 0x00000004, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4033
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x0000000B, r2
	bnz9 .BB.LABEL.46_4
.BB.LABEL.46_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4035
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.46_3
.BB.LABEL.46_2:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4037
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r6
	shl 0x00000004, r6
	mov #_NvM_AdminBlock, r2
	add r2, r6
	add 0xFFFFFFF0, r6
	mov 0x00000000, r8
	mov 0x00000004, r7
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.46_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4039
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
	mov 0x00000002, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4040
	jarl _NvM_JobOverSetFlag.1, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.46_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4044
	mov #_NvM_CurRunning, r20
	ld.hu 0x00000000[r20], r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r21
	add r21, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000008, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4047
	ld.hu 0x00000010[r20], r6
	mov 0x00000001, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4048
	ld.hu 0x00000000[r20], r2
	mul 0x00000038, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4044
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4048
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4051
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.46_12
.BB.LABEL.46_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.46_12
.BB.LABEL.46_6:	; bb56
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mov r2, r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r6, r5
	ld.w 0xFFFFFFE8[r5], r5
	cmp 0x00000001, r10
	bz9 .BB.LABEL.46_8
.BB.LABEL.46_7:	; bb56
	cmp 0x00000000, r5
	bz9 .BB.LABEL.46_12
.BB.LABEL.46_8:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4055
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.hu 0xFFFFFFD2[r2], r6
	mov 0x00000002, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4058
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.46_14
.BB.LABEL.46_9:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4060
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	ld.hu 0xFFFFFFF0[r2], r6
	mov 0x00000004, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4062
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.46_11
.BB.LABEL.46_10:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4064
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r6
	shl 0x00000004, r6
	mov #_NvM_AdminBlock, r2
	add r2, r6
	add 0xFFFFFFF0, r6
	mov 0x00000000, r8
	mov 0x00000004, r7
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.46_11:	; if_break_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4069
	mov r6, r7
	jarl _NvM_UpdateValidandChangeStatus.1, r31
.BB.LABEL.46_12:	; if_else_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 0
	mov 0x00000000, r6
	mov r6, r7
	jarl _NvM_JobOverSetFlag.1, r31
.BB.LABEL.46_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4092
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.46_14:	; if_else_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4072
	movhi HIGHW1(#_NvM_CurRunning+0x00000014), r0, r2
	ld.bu LOWW(#_NvM_CurRunning+0x00000014)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.46_12
.BB.LABEL.46_15:	; if_then_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4074
	movhi HIGHW1(#_NvM_CurRunning+0x00000030), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000030)[r2], r6
	mov #_NvM_NvDataBuffer.2, r7
	jarl _NvM_MemCpy.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.46_13
.BB.LABEL.46_16:	; if_then_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4076
	movhi HIGHW1(#_NvM_CurRunning+0x0000003C), r0, r2
	mov #_NvM_NvDataBuffer.2, r5
	st.w r5, LOWW(#_NvM_CurRunning+0x0000003C)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4078
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x0000000B, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.c", 4079
	jarl _NvM_AtomJobReq.1, r31
	dispose 0x00000000, 0x00000079, [r31]
	.section .data, data
	.align 4
_NvM_Module:
	.ds (1)
	.ds (3)
	.dw 0x00000002
	.ds (4)
	.ds (4)
	.dw 0x0000000C
	.align 4
_NvM_MultiJob:
	.ds (1)
	.ds (3)
	.dw 0x0000001A
	.ds (1)
	.ds (1)
	.ds (2)
	.ds (4)
	.align 4
_NvM_AtomJob:
	.ds (1)
	.ds (3)
	.dw 0x00000005,0x00000005,0x00000005,0x00000005,0x00000005
	.align 4
_NvM_CurRunning:
	.ds (2)
	.ds (2)
	.ds (2)
	.ds (1)
	.ds (1)
	.dw 0x0000001A
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (2)
	.ds (1)
	.ds (1)
	.ds (1)
	.ds (3)
	.ds (4)
	.ds (4)
	.dw 0x00000001
	.dw 0x00000002
	.ds (2)
	.ds (2)
	.ds (2)
	.ds (2)
	.ds (4)
	.ds (4)
	.ds (1)
	.ds (3)
	.ds (4)
	.ds (2)
	.ds (2)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
	.ds (4)
_NvM_StandQueueManage:
	.ds (3)
	.section .const, const
	.align 4
_NvM_MemIfAsyncFuncTable.1:
	.dw #_NvM_MemIfReadOk.1
	.dw #_NvM_MemIfWriteOk.1
	.ds (12)
	.dw #_NvM_MemIfInvalidOk.1
	.dw #_NvM_MemIfReadFailed.1
	.dw #_NvM_MemIfWriteFailed.1
	.ds (12)
	.dw #_NvM_MemIfInvalidFailed.1
	.dw #_NvM_MemIfPending.1
	.dw #_NvM_MemIfPending.1
	.ds (12)
	.dw #_NvM_MemIfPending.1
	.dw #_NvM_MemIfCancelled.1
	.dw #_NvM_MemIfCancelled.1
	.ds (12)
	.dw #_NvM_MemIfCancelled.1
	.dw #_NvM_MemIfInconsistent.1
	.dw #_NvM_MemIfInconsistent.1
	.ds (12)
	.dw #_NvM_MemIfInconsistent.1
	.dw #_NvM_MemIfInvalid.1
	.dw #_NvM_MemIfInvalid.1
	.ds (12)
	.dw #_NvM_MemIfInvalid.1
	.section .bss, bss
	.align 4
_NvM_StandQueue:
	.ds (120)
	.align 4
_NvM_AdminBlock:
	.ds (848)
_NvM_NvDataBuffer.2:
	.ds (2482)
