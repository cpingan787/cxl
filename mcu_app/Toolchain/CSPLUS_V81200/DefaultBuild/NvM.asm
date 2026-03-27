#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Memory\NvM\NvM.c -oDefaultBuild\NvM.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_8f42e322b1784073bb323f71e9fc347f3nfxxyhv.rmh
#@	compiled at Fri Mar 27 09:50:45 2026

	.file "..\..\Bsw\Memory\NvM\NvM.c"

	$reg_mode 32
	.dbl_size 8

	.extern _NvM_BlockDescriptor
	.extern _NvM_StandQueue
	.extern _NvM_AdminBlock
	.extern _NvM_Module
	.extern _NvM_MultiJob
	.extern _NvM_AtomJob
	.extern _NvM_CurRunning
	.extern _NvM_StandQueueManage
	.extern _Det_ReportRuntimeError
	.public _NvM_Init
	.extern _NvM_GetWordBitState
	.extern _NvM_SetWordBitState
	.public _NvM_SetBlockProtection
	.public _NvM_InvalidateNvBlock
	.extern _NvM_JobEnqueue
	.public _NvM_EraseNvBlock
	.public _NvM_GetErrorStatus
	.public _NvM_SetBlockLockStatus
	.public _NvM_SetDataIndex
	.public _NvM_GetDataIndex
	.public _NvM_ReadBlock
	.public _NvM_ReadPRAMBlock
	.public _NvM_WriteBlock
	.public _NvM_WritePRAMBlock
	.public _NvM_RestoreBlockDefaults
	.public _NvM_RestorePRAMBlockDefaults
	.public _NvM_ValidateAll
	.public _NvM_CancelJobs
	.public _NvM_CancelWriteAll
	.public _NvM_ReadAll
	.public _NvM_WriteAll
	.public _NvM_MainFunction
	.extern _NvM_JobDequeue
	.public _NvM_JobEndNotification
	.public _NvM_JobErrorNotification
	.extern _NvM_InterReadBlock
	.extern _NvM_InterWriteBlock
	.extern _NvM_InterReadRom
	.extern _NvM_InterCalcCrc
	.extern _NvM_InterWriteVerification
	.extern _NvM_InterRestoreBlockDefaults
	.extern _NvM_InterInvalidateNvBlock
	.extern _NvM_InterReadAll
	.extern _NvM_InterWriteAll
	.extern _NvM_InterValidateAll

	.section .text, text
_NVM_DET_REPORTRUNTIMEERROR.1:
	.stack _NVM_DET_REPORTRUNTIMEERROR.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.h", 33
	prepare 0x00000001, 0x00000000
	mov r6, r8
	mov r7, r9
	mov 0x00000000, r7
	movea 0x00000014, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM_Inter.h", 35
	jarl _Det_ReportRuntimeError, r31
	dispose 0x00000000, 0x00000001, [r31]
_NvM_Init:
	.stack _NvM_Init = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 77
	prepare 0x00000061, 0x00000000
	mov 0x00000000, r20
	br9 .BB.LABEL.2_5
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 117
	andi 0x0000FFFF, r20, r2
	mov r2, r5
	shl 0x00000004, r5
	mov #_NvM_AdminBlock, r21
	add r5, r21
	st.h r0, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 118
	st.b r0, 0x00000002[r21]
	movea 0x0000001A, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 119
	st.w r5, 0x00000004[r21]
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 120
	st.w r7, 0x00000008[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 121
	st.b r0, 0x0000000C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 123
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.hu 0x0000000A[r5], r6
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 124
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000001, r8
	br9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_else_bb
	mov 0x00000000, r8
.BB.LABEL.2_4:	; if_else_bb
	mov 0x00000003, r7
	mov r21, r6
	jarl _NvM_SetWordBitState, r31
	add 0x00000001, r20
.BB.LABEL.2_5:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 115
	andi 0x0000FFFF, r20, r2
	addi 0xFFFFFFCB, r2, r0
	blt9 .BB.LABEL.2_1
.BB.LABEL.2_6:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 133
	mov #_NvM_Module, r2
	mov 0x0000000C, r5
	st.w r5, 0x00000010[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 134
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 137
	dispose 0x00000000, 0x00000061, [r31]
_NvM_SetBlockProtection:
	.stack _NvM_SetBlockProtection = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 195
	prepare 0x00000679, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 214
	addi 0xFFFFFFFF, r20, r22
	mov r22, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r23
	add r2, r23
	ld.hu 0x00000000[r23], r6
	mov 0x00000000, r24
	mov r24, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 215
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r2
	add r22, r2
	ld.hu 0x0000000A[r2], r6
	mov r24, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 217
	ld.hu 0x00000000[r23], r6
	mov 0x00000006, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 218
	cmp 0x00000001, r25
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	cmp 0x00000001, r22
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_2:	; entry
	cmp 0x00000001, r10
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_3:	; if_else_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 238
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r2, r20
	add 0xFFFFFFF0, r20
	mov 0x00000003, r7
	mov r20, r6
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 240
	jarl _NvM_SetWordBitState, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.3_5:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 247
	mov r21, r8
	jarl _NvM_SetWordBitState, r31
	mov r21, r10
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.3_6:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 253
	dispose 0x00000000, 0x00000679, [r31]
_NvM_InvalidateNvBlock:
	.stack _NvM_InvalidateNvBlock = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 275
	prepare 0x00000679, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 295
	addi 0xFFFFFFFF, r20, r21
	mov r21, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r22
	add r2, r22
	ld.hu 0x00000000[r22], r6
	mov 0x00000000, r23
	mov r23, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 296
	ld.hu 0x00000000[r22], r6
	mov 0x00000006, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 297
	ld.hu 0x00000000[r22], r6
	mov 0x00000003, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 298
	mul 0x00000038, r21, r0
	mov #_NvM_BlockDescriptor, r2
	add r21, r2
	ld.hu 0x0000000A[r2], r6
	mov r23, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 300
	cmp 0x00000001, r24
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	cmp 0x00000001, r25
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_2:	; entry
	cmp 0x00000001, r22
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_3:	; if_else_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 323
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r20, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	ld.bu 0xFFFFFFFC[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_5:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 331
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFCC[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.4_8
.BB.LABEL.4_6:	; bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	addi 0xFFFFFFFF, r20, r2
	mov r2, r5
	mul 0x00000038, r5, r0
	mov #_NvM_BlockDescriptor, r6
	add r5, r6
	ld.bu 0x00000014[r6], r5
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r6
	add r2, r6
	ld.bu 0x00000002[r6], r2
	cmp r2, r5
	bnh9 .BB.LABEL.4_9
.BB.LABEL.4_7:	; bb99
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFCC[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb123
	mov 0x00000000, r8
	mov 0x0000000B, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 335
	mov r20, r6
	jarl _NvM_JobEnqueue, r31
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.4_9:	; if_break_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 340
	dispose 0x00000000, 0x00000679, [r31]
_NvM_EraseNvBlock:
	.stack _NvM_EraseNvBlock = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 361
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 381
	addi 0xFFFFFFFF, r6, r20
	mov r20, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r21
	add r2, r21
	ld.hu 0x00000000[r21], r6
	mov 0x00000000, r22
	mov r22, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 382
	ld.hu 0x00000000[r21], r6
	mov 0x00000006, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 383
	ld.hu 0x00000000[r21], r6
	mov 0x00000003, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 384
	mul 0x00000038, r20, r0
	mov #_NvM_BlockDescriptor, r2
	add r20, r2
	ld.hu 0x0000000A[r2], r6
	mov r22, r7
	jarl _NvM_GetWordBitState, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 439
	dispose 0x00000000, 0x00000071, [r31]
_NvM_GetErrorStatus:
	.stack _NvM_GetErrorStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 461
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 481
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov #_NvM_MultiJob, r6
	add 0x0000000C, r6
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 489
	shl 0x00000004, r6
	mov #_NvM_AdminBlock, r2
	add r2, r6
	add 0xFFFFFFF8, r6
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	ld.w 0x00000000[r6], r2
	st.w r2, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 494
	jmp [r31]
_NvM_SetBlockLockStatus:
	.stack _NvM_SetBlockLockStatus = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 629
	prepare 0x00000479, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 646
	addi 0xFFFFFFFF, r20, r22
	mov r22, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r2, r5
	ld.hu 0x00000000[r5], r6
	mov 0x00000000, r23
	mov r23, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 647
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r2
	add r22, r2
	ld.hu 0x0000000A[r2], r6
	mov r23, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 649
	cmp 0x00000001, r24
	bz9 .BB.LABEL.7_8
.BB.LABEL.7_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	cmp 0x00000001, r10
	bz9 .BB.LABEL.7_8
.BB.LABEL.7_2:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 663
	mov r20, r22
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r22
	ld.hu 0xFFFFFFD2[r22], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 665
	cmp 0x00000001, r10
	ld.w 0xFFFFFFE8[r22], r2
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_8
.BB.LABEL.7_4:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 668
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r2, r20
	add 0xFFFFFFF0, r20
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_5:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000001, r8
.BB.LABEL.7_6:	; if_then_bb62
	mov 0x00000006, r7
	mov r20, r6
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 679
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.7_7:	; if_else_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000000, r8
	br9 .BB.LABEL.7_6
.BB.LABEL.7_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 679
	dispose 0x00000000, 0x00000479, [r31]
_NvM_SetDataIndex:
	.stack _NvM_SetDataIndex = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 703
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 720
	mov r20, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	ld.hu 0xFFFFFFF0[r2], r6
	mov 0x00000000, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 721
	cmp 0x00000001, r10
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 727
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.bu 0xFFFFFFDC[r2], r5
	ld.bu 0xFFFFFFDD[r2], r2
	add r2, r5
	cmp r21, r5
	ble9 .BB.LABEL.8_4
.BB.LABEL.8_2:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 737
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFCC[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 739
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r2, r20
	st.b r21, 0xFFFFFFF2[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 740
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.8_4:	; if_break_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 745
	dispose 0x00000000, 0x00000061, [r31]
_NvM_GetDataIndex:
	.stack _NvM_GetDataIndex = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 767
	mov r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 787
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFCC[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 789
	add 0xFFFFFFFF, r6
	mov r6, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r2, r5
	ld.b 0x00000002[r5], r2
	st.b r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 790
	mul 0x00000038, r6, r0
	mov #_NvM_BlockDescriptor, r2
	add r6, r2
	ld.bu 0x00000014[r2], r5
	ld.bu 0x00000015[r2], r2
	add r2, r5
	ld.bu 0x00000000[r7], r2
	cmp r2, r5
	setf 0x00000007, r10
	jmp [r31]
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 798
	st.b r0, 0x00000000[r7]
	mov 0x00000001, r10
	jmp [r31]
_NvM_ReadBlock:
	.stack _NvM_ReadBlock = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 824
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 843
	addi 0xFFFFFFFF, r20, r22
	mov r22, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.hu 0x0000000A[r5], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 845
	shl 0x00000004, r22
	mov #_NvM_AdminBlock, r2
	add r22, r2
	ld.hu 0x00000000[r2], r6
	mov 0x00000000, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 846
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.10_5
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE8[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; bb
	cmp 0x00000000, r23
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; bb
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_4:	; bb.if_break_bb130_crit_edge
	mov 0x00000001, r22
	br9 .BB.LABEL.10_13
.BB.LABEL.10_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 853
	cmp 0x00000001, r10
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_6:	; if_else_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000006, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 862
	mov r20, r6
	mov r21, r8
	jarl _NvM_JobEnqueue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 864
	addi 0x00000000, r10, r22
	bnz9 .BB.LABEL.10_13
.BB.LABEL.10_7:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 866
	cmp 0x00000000, r21
	bz9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE8[r2], r2
	cmp r2, r21
	bz9 .BB.LABEL.10_11
.BB.LABEL.10_9:	; bb84
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.10_12
.BB.LABEL.10_10:	; bb88
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE8[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_12
.BB.LABEL.10_11:	; if_then_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 871
	mov r20, r21
	shl 0x00000004, r21
	mov #_NvM_AdminBlock, r2
	add r2, r21
	add 0xFFFFFFF0, r21
	mov 0x00000000, r23
	mov 0x00000001, r7
	mov r21, r6
	mov r23, r8
	jarl _NvM_SetWordBitState, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 875
	mov r21, r6
	mov r23, r8
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.10_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 877
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r2, r20
	mov 0x00000001, r2
	st.b r2, 0xFFFFFFFC[r20]
.BB.LABEL.10_13:	; if_break_bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 882
	dispose 0x00000000, 0x00000079, [r31]
_NvM_ReadPRAMBlock:
	.stack _NvM_ReadPRAMBlock = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 903
	prepare 0x00000079, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 922
	addi 0xFFFFFFFF, r20, r21
	mov r21, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r22
	add r2, r22
	ld.hu 0x0000000A[r22], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 924
	shl 0x00000004, r21
	mov #_NvM_AdminBlock, r2
	add r21, r2
	ld.hu 0x00000000[r2], r6
	mov 0x00000000, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 925
	ld.w 0x00000020[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	cmp 0x00000000, r23
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; entry
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; entry.if_break_bb74_crit_edge
	mov 0x00000001, r21
	br9 .BB.LABEL.11_7
.BB.LABEL.11_4:	; if_else_bb42
	mov 0x00000000, r8
	movea 0x00000016, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 940
	mov r20, r6
	jarl _NvM_JobEnqueue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 941
	addi 0x00000000, r10, r21
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_5:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 943
	mov r20, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	mov 0x00000001, r5
	st.b r5, 0xFFFFFFFC[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 944
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 947
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r2, r20
	add 0xFFFFFFF0, r20
	mov 0x00000000, r22
	mov 0x00000001, r7
	mov r20, r6
	mov r22, r8
	jarl _NvM_SetWordBitState, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 948
	mov r20, r6
	mov r22, r8
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.11_7:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 954
	dispose 0x00000000, 0x00000079, [r31]
_NvM_WriteBlock:
	.stack _NvM_WriteBlock = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 978
	prepare 0x00000679, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1001
	addi 0xFFFFFFFF, r20, r22
	mov r22, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.hu 0x0000000A[r5], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1003
	shl 0x00000004, r22
	mov #_NvM_AdminBlock, r2
	add r22, r2
	ld.hu 0x00000000[r2], r6
	mov 0x00000000, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1004
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE8[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; bb
	cmp 0x00000000, r23
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; bb
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.12_7
.BB.LABEL.12_4:	; bb.if_break_bb226_crit_edge
	mov 0x00000001, r22
.BB.LABEL.12_5:	; if_break_bb226
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1087
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.12_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1011
	cmp 0x00000001, r10
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_7:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1019
	addi 0xFFFFFFFF, r20, r22
	mov r22, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r23
	add r2, r23
	ld.hu 0x00000000[r23], r6
	mov 0x00000003, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1020
	ld.hu 0x00000000[r23], r6
	mov 0x00000006, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1021
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r25
	add r22, r25
	ld.hu 0x0000000A[r25], r6
	mov 0x00000000, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1024
	ld.w 0x00000004[r25], r22
	cmp 0x00000003, r22
	bnz9 .BB.LABEL.12_19
.BB.LABEL.12_8:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	addi 0xFFFFFFFF, r20, r22
	mov r22, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r5
	add r22, r5
	ld.bu 0x00000014[r5], r22
	cmp 0x00000001, r24
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_9:	; bb87
	cmp r2, r22
	bnh9 .BB.LABEL.12_4
.BB.LABEL.12_10:	; bb87
	cmp 0x00000001, r23
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_11:	; if_else_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1045
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.12_13
.BB.LABEL.12_12:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r20, r22
	shl 0x00000004, r22
	mov #_NvM_AdminBlock, r2
	add r2, r22
	ld.bu 0xFFFFFFFC[r22], r22
	cmp 0x00000000, r22
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_13:	; if_else_bb151
	mov 0x00000007, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1054
	mov r20, r6
	mov r21, r8
	jarl _NvM_JobEnqueue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1056
	addi 0x00000000, r10, r22
	bnz9 .BB.LABEL.12_5
.BB.LABEL.12_14:	; if_then_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1071
	cmp 0x00000000, r21
	bz9 .BB.LABEL.12_16
.BB.LABEL.12_15:	; bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE8[r2], r2
	cmp r2, r21
	bz9 .BB.LABEL.12_18
.BB.LABEL.12_16:	; bb181
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.12_5
.BB.LABEL.12_17:	; bb185
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE8[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_5
.BB.LABEL.12_18:	; if_then_bb209
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1076
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r2, r20
	add 0xFFFFFFF0, r20
	mov 0x00000001, r21
	mov r20, r6
	mov r21, r7
	mov r21, r8
	jarl _NvM_SetWordBitState, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1077
	mov r20, r6
	mov r21, r8
	jarl _NvM_SetWordBitState, r31
	br9 .BB.LABEL.12_5
.BB.LABEL.12_19:	; if_else_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1029
	cmp 0x00000001, r24
	bz17 .BB.LABEL.12_4
	br9 .BB.LABEL.12_10
_NvM_WritePRAMBlock:
	.stack _NvM_WritePRAMBlock = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1109
	prepare 0x00000679, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1132
	addi 0xFFFFFFFF, r20, r21
	mov r21, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r22
	add r2, r22
	ld.hu 0x0000000A[r22], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1134
	shl 0x00000004, r21
	mov #_NvM_AdminBlock, r24
	add r21, r24
	ld.hu 0x00000000[r24], r6
	mov 0x00000000, r21
	mov r21, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1135
	ld.hu 0x00000000[r24], r6
	mov 0x00000006, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1136
	ld.hu 0x0000000A[r22], r6
	mov r21, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1138
	ld.w 0x00000020[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	cmp 0x00000000, r23
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_2:	; entry
	cmp 0x00000001, r25
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; entry
	cmp 0x00000001, r24
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; entry.if_break_bb170_crit_edge
	mov 0x00000001, r21
	br9 .BB.LABEL.13_14
.BB.LABEL.13_5:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1156
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.13_7
.BB.LABEL.13_6:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r20, r21
	shl 0x00000004, r21
	mov #_NvM_AdminBlock, r2
	add r2, r21
	ld.bu 0xFFFFFFFC[r21], r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_7:	; if_else_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1164
	addi 0xFFFFFFFF, r20, r21
	mov r21, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r2, r5
	ld.hu 0x00000000[r5], r6
	mov 0x00000003, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1165
	mul 0x00000038, r21, r0
	mov #_NvM_BlockDescriptor, r2
	add r21, r2
	ld.w 0x00000004[r2], r21
	cmp 0x00000003, r21
	bnz9 .BB.LABEL.13_10
.BB.LABEL.13_8:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	addi 0xFFFFFFFF, r20, r21
	mov r21, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	mul 0x00000038, r21, r0
	mov #_NvM_BlockDescriptor, r5
	add r21, r5
	ld.bu 0x00000014[r5], r21
	cmp 0x00000001, r10
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_9:	; bb106
	cmp r2, r21
	bnh9 .BB.LABEL.13_4
	br9 .BB.LABEL.13_11
.BB.LABEL.13_10:	; if_else_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1170
	cmp 0x00000001, r10
	bz9 .BB.LABEL.13_4
.BB.LABEL.13_11:	; if_else_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000000, r8
	movea 0x00000017, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1181
	mov r20, r6
	jarl _NvM_JobEnqueue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1182
	addi 0x00000000, r10, r21
	bnz9 .BB.LABEL.13_14
.BB.LABEL.13_12:	; if_else_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.13_14
.BB.LABEL.13_13:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1199
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r2, r20
	add 0xFFFFFFF0, r20
	mov 0x00000001, r22
	mov r20, r6
	mov r22, r7
	mov r22, r8
	jarl _NvM_SetWordBitState, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1200
	mov r20, r6
	mov r22, r8
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.13_14:	; if_break_bb170
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1207
	dispose 0x00000000, 0x00000679, [r31]
_NvM_RestoreBlockDefaults:
	.stack _NvM_RestoreBlockDefaults = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1229
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1247
	addi 0xFFFFFFFF, r20, r22
	mov r22, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.hu 0x0000000A[r5], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1249
	shl 0x00000004, r22
	mov #_NvM_AdminBlock, r2
	add r22, r2
	ld.hu 0x00000000[r2], r6
	mov 0x00000000, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1250
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE8[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_2:	; bb
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; bb.if_break_bb280_crit_edge
	mov 0x00000001, r22
	jr .BB.LABEL.14_20
.BB.LABEL.14_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1258
	mov r20, r22
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r22
	ld.w 0xFFFFFFEC[r22], r22
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.14_6
.BB.LABEL.14_5:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r20, r22
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r22
	ld.w 0xFFFFFFF0[r22], r22
	cmp 0x00000000, r22
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_6:	; bb56
	cmp 0x00000001, r10
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_7:	; if_else_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1274
	mov r20, r22
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r22
	ld.w 0xFFFFFFCC[r22], r22
	cmp 0x00000003, r22
	bnz9 .BB.LABEL.14_10
.BB.LABEL.14_8:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	addi 0xFFFFFFFF, r20, r22
	mov r22, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.bu 0x00000014[r5], r2
	ld.bu 0x00000015[r5], r5
	add r5, r2
	shl 0x00000004, r22
	mov #_NvM_AdminBlock, r5
	add r22, r5
	ld.bu 0x00000002[r5], r22
	cmp r2, r22
	bge9 .BB.LABEL.14_10
.BB.LABEL.14_9:	; bb122
	addi 0xFFFFFFFF, r20, r22
	mov r22, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.bu 0x00000014[r5], r2
	shl 0x00000004, r22
	mov #_NvM_AdminBlock, r5
	add r22, r5
	ld.bu 0x00000002[r5], r22
	cmp r22, r2
	bnh9 .BB.LABEL.14_11
.BB.LABEL.14_10:	; bb146
	mov r20, r22
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r22
	ld.w 0xFFFFFFCC[r22], r22
	cmp 0x00000003, r22
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_11:	; bb162
	mov r20, r22
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r22
	ld.w 0xFFFFFFEC[r22], r22
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.14_13
.BB.LABEL.14_12:	; bb171
	mov r20, r22
	mul 0x00000038, r22, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r22
	ld.w 0xFFFFFFF0[r22], r22
	cmp 0x00000000, r22
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_13:	; if_then_bb195
	mov 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1284
	mov r20, r6
	mov r21, r8
	jarl _NvM_JobEnqueue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1287
	addi 0x00000000, r10, r22
	bnz9 .BB.LABEL.14_20
.BB.LABEL.14_14:	; if_then_bb204
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1289
	cmp 0x00000000, r21
	bz9 .BB.LABEL.14_16
.BB.LABEL.14_15:	; bb208
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE8[r2], r2
	cmp r2, r21
	bz9 .BB.LABEL.14_19
.BB.LABEL.14_16:	; bb225
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.14_20
.BB.LABEL.14_17:	; bb229
	mov r20, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r5, r2
	ld.w 0xFFFFFFE8[r2], r2
	cmp 0x00000001, r23
	bz9 .BB.LABEL.14_19
.BB.LABEL.14_18:	; bb229
	cmp 0x00000000, r2
	bz9 .BB.LABEL.14_20
.BB.LABEL.14_19:	; if_then_bb265
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1295
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r2, r20
	add 0xFFFFFFF0, r20
	mov 0x00000000, r21
	mov 0x00000001, r7
	mov r20, r6
	mov r21, r8
	jarl _NvM_SetWordBitState, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1297
	mov r20, r6
	mov r21, r8
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.14_20:	; if_break_bb280
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1305
	dispose 0x00000000, 0x00000079, [r31]
_NvM_RestorePRAMBlockDefaults:
	.stack _NvM_RestorePRAMBlockDefaults = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1327
	prepare 0x00000079, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1345
	addi 0xFFFFFFFF, r20, r21
	mov r21, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r22
	add r2, r22
	ld.hu 0x0000000A[r22], r6
	mov 0x0000000B, r7
	jarl _NvM_GetWordBitState, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1347
	shl 0x00000004, r21
	mov #_NvM_AdminBlock, r2
	add r21, r2
	ld.hu 0x00000000[r2], r6
	mov 0x00000000, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1348
	ld.w 0x00000020[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_3
.BB.LABEL.15_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; entry.if_break_bb205_crit_edge
	mov 0x00000001, r21
	jr .BB.LABEL.15_14
.BB.LABEL.15_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1354
	mov r20, r21
	mul 0x00000038, r21, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r21
	ld.w 0xFFFFFFEC[r21], r21
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.15_5
.BB.LABEL.15_4:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r20, r21
	mul 0x00000038, r21, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r21
	ld.w 0xFFFFFFF0[r21], r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_5:	; bb44
	cmp 0x00000001, r10
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_6:	; if_else_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1371
	mov r20, r21
	mul 0x00000038, r21, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r21
	ld.w 0xFFFFFFCC[r21], r21
	cmp 0x00000003, r21
	bnz9 .BB.LABEL.15_9
.BB.LABEL.15_7:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	addi 0xFFFFFFFF, r20, r21
	mov r21, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.bu 0x00000014[r5], r2
	ld.bu 0x00000015[r5], r5
	add r5, r2
	shl 0x00000004, r21
	mov #_NvM_AdminBlock, r5
	add r21, r5
	ld.bu 0x00000002[r5], r21
	cmp r2, r21
	bge9 .BB.LABEL.15_9
.BB.LABEL.15_8:	; bb110
	addi 0xFFFFFFFF, r20, r21
	mov r21, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.bu 0x00000014[r5], r2
	shl 0x00000004, r21
	mov #_NvM_AdminBlock, r5
	add r21, r5
	ld.bu 0x00000002[r5], r21
	cmp r21, r2
	bnh9 .BB.LABEL.15_10
.BB.LABEL.15_9:	; bb134
	mov r20, r21
	mul 0x00000038, r21, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r21
	ld.w 0xFFFFFFCC[r21], r21
	cmp 0x00000003, r21
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_10:	; bb150
	mov r20, r21
	mul 0x00000038, r21, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r21
	ld.w 0xFFFFFFEC[r21], r21
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.15_12
.BB.LABEL.15_11:	; bb159
	mov r20, r21
	mul 0x00000038, r21, r0
	mov #_NvM_BlockDescriptor, r2
	add r2, r21
	ld.w 0xFFFFFFF0[r21], r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_12:	; if_then_bb183
	mov 0x00000000, r8
	movea 0x00000018, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1381
	mov r20, r6
	jarl _NvM_JobEnqueue, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1382
	addi 0x00000000, r10, r21
	bnz9 .BB.LABEL.15_14
.BB.LABEL.15_13:	; if_then_bb191
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1385
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r2, r20
	add 0xFFFFFFF0, r20
	mov 0x00000000, r22
	mov 0x00000001, r7
	mov r20, r6
	mov r22, r8
	jarl _NvM_SetWordBitState, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1386
	mov r20, r6
	mov r22, r8
	jarl _NvM_SetWordBitState, r31
.BB.LABEL.15_14:	; if_break_bb205
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1393
	dispose 0x00000000, 0x00000079, [r31]
_NvM_ValidateAll:
	.stack _NvM_ValidateAll = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1412
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1422
	movhi HIGHW1(#_NvM_MultiJob), r0, r2
	ld.bu LOWW(#_NvM_MultiJob)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	movea 0x00000019, r0, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1424
	mov r6, r8
	jarl _NvM_JobEnqueue, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	movea 0x000000A0, r0, r7
	movea 0x00000019, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1431
	jarl _NVM_DET_REPORTRUNTIMEERROR.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_NvM_CancelJobs:
	.stack _NvM_CancelJobs = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1455
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1472
	mov r20, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r5, r2
	ld.hu 0xFFFFFFF0[r2], r6
	mov 0x00000000, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1473
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.17_3
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1476
	mov r20, r6
	jarl _NvM_CancelJobInQueue.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1478
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.17_3:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1483
	dispose 0x00000000, 0x00000041, [r31]
_NvM_CancelJobInQueue.1:
	.stack _NvM_CancelJobInQueue.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1489
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1513
	jarl _NvM_NormalQueueSort.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1514
	cmp 0x00000000, r10
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_1:	; entry.if_break_bb27_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000001, r10
.BB.LABEL.18_2:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1525
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.18_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1517
	mov r20, r6
	shl 0x00000004, r6
	mov #_NvM_AdminBlock, r2
	add r2, r6
	add 0xFFFFFFF0, r6
	mov 0x00000000, r7
	mov r7, r8
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1518
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	cmp r2, r20
	bnz9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_then_bb.if_break_bb27_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.18_2
.BB.LABEL.18_5:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1520
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r2, r20
	mov 0x00000006, r2
	st.w r2, 0xFFFFFFF8[r20]
	br9 .BB.LABEL.18_4
_NvM_NormalQueueSort.1:
	.stack _NvM_NormalQueueSort.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1528
	prepare 0x00000061, 0x00000000
	mov 0x00000000, r2
	mov r6, r20
	br9 .BB.LABEL.19_3
.BB.LABEL.19_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1539
	andi 0x000000FF, r2, r5
	mul 0x0000000C, r5, r0
	mov #_NvM_StandQueue, r6
	add r5, r6
	ld.hu 0x00000000[r6], r5
	cmp r5, r20
	bz9 .BB.LABEL.19_4
.BB.LABEL.19_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	add 0x00000001, r2
.BB.LABEL.19_3:	; bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1537
	andi 0x000000FF, r2, r5
	cmp 0x0000000A, r5
	bl9 .BB.LABEL.19_1
.BB.LABEL.19_4:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1546
	andi 0x000000FF, r2, r5
	cmp 0x0000000A, r5
	bl9 .BB.LABEL.19_9
.BB.LABEL.19_5:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1549
	mov r20, r21
	shl 0x00000004, r21
	mov #_NvM_AdminBlock, r2
	add r2, r21
	addi 0xFFFFFFF0, r21, r6
	mov 0x00000000, r7
	mov r7, r8
	jarl _NvM_SetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1551
	add 0xFFFFFFF8, r21
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	cmp r2, r20
	bz9 .BB.LABEL.19_7
.BB.LABEL.19_6:	; if_then_bb34.bb59_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000006, r2
	br9 .BB.LABEL.19_8
.BB.LABEL.19_7:	; bb52
	shl 0x00000004, r20
	mov #_NvM_AdminBlock, r2
	add r2, r20
	ld.w 0xFFFFFFF8[r20], r2
.BB.LABEL.19_8:	; bb59
	st.w r2, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1553
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.19_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1558
	movhi HIGHW1(#_NvM_StandQueueManage+0x00000002), r0, r5
	ld.bu LOWW(#_NvM_StandQueueManage+0x00000002)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.19_11
.BB.LABEL.19_10:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	andi 0x000000FF, r2, r6
	add 0xFFFFFFFF, r5
	cmp r5, r6
	bz9 .BB.LABEL.19_13
.BB.LABEL.19_11:	; bb81
	movhi HIGHW1(#_NvM_StandQueueManage+0x00000002), r0, r5
	ld.bu LOWW(#_NvM_StandQueueManage+0x00000002)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.19_16
.BB.LABEL.19_12:	; bb81
	andi 0x000000FF, r2, r5
	cmp 0x00000009, r5
	bnz9 .BB.LABEL.19_16
.BB.LABEL.19_13:	; if_then_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1561
	movhi HIGHW1(#_NvM_StandQueueManage), r0, r20
	ld.b LOWW(#_NvM_StandQueueManage)[r20], r5
	add 0xFFFFFFFF, r5
	st.b r5, LOWW(#_NvM_StandQueueManage)[r20]
	movhi HIGHW1(#_NvM_StandQueueManage+0x00000002), r0, r20
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1562
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.19_15
.BB.LABEL.19_14:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1564
	st.b r2, LOWW(#_NvM_StandQueueManage+0x00000002)[r20]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.19_15:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1568
	st.b r0, LOWW(#_NvM_StandQueueManage+0x00000002)[r20]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.19_16:	; if_else_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1575
	movhi HIGHW1(#_NvM_StandQueueManage+0x00000001), r0, r2
	ld.bu LOWW(#_NvM_StandQueueManage+0x00000001)[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.19_20
.BB.LABEL.19_17:	; bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1578
	andi 0x000000FF, r2, r7
	mul 0x0000000C, r7, r0
	mov #_NvM_StandQueue, r8
	add r7, r8
	ld.hu 0x00000000[r8], r7
	cmp r7, r20
	bnz9 .BB.LABEL.19_19
.BB.LABEL.19_18:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1581
	add 0xFFFFFFFF, r6
	movhi HIGHW1(#_NvM_StandQueueManage), r0, r20
	st.b r6, LOWW(#_NvM_StandQueueManage)[r20]
	br9 .BB.LABEL.19_23
.BB.LABEL.19_19:	; if_break_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1585
	add 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1586
	andi 0x000000FF, r2, r6
	cmp 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1588
	cmov 0x0000000B, 0x00000000, r2, r2
	add 0x00000001, r5
.BB.LABEL.19_20:	; bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1576
	movhi HIGHW1(#_NvM_StandQueueManage), r0, r6
	ld.bu LOWW(#_NvM_StandQueueManage)[r6], r6
	andi 0x000000FF, r5, r7
	cmp r6, r7
	bl9 .BB.LABEL.19_17
.BB.LABEL.19_21:	; if_break_bb227
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1622
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.19_22:	; bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1601
	andi 0x000000FF, r2, r6
	mul 0x0000000C, r6, r0
	mov #_NvM_StandQueue, r7
	add r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1596
	add 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1597
	andi 0x000000FF, r2, r8
	cmp 0x00000009, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1599
	cmov 0x0000000B, 0x00000000, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1601
	andi 0x000000FF, r2, r8
	mul 0x0000000C, r8, r0
	add r8, r7
	ld.h 0x00000000[r7], r8
	st.h r8, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1602
	ld.w 0x00000004[r7], r8
	st.w r8, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1603
	ld.w 0x00000008[r7], r7
	st.w r7, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1604
	add 0x00000001, r5
.BB.LABEL.19_23:	; bb205
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1594
	movhi HIGHW1(#_NvM_StandQueueManage), r0, r6
	ld.bu LOWW(#_NvM_StandQueueManage)[r6], r6
	andi 0x000000FF, r5, r7
	cmp r6, r7
	bl9 .BB.LABEL.19_22
.BB.LABEL.19_24:	; bb213
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1606
	movhi HIGHW1(#_NvM_StandQueueManage+0x00000002), r0, r2
	ld.bu LOWW(#_NvM_StandQueueManage+0x00000002)[r2], r2
	mov 0x00000000, r10
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.19_26
.BB.LABEL.19_25:	; if_then_bb219
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1608
	movhi HIGHW1(#_NvM_StandQueueManage+0x00000002), r0, r2
	mov 0x00000009, r5
	st.b r5, LOWW(#_NvM_StandQueueManage+0x00000002)[r2]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.19_26:	; if_else_bb220
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1612
	add 0xFFFFFFFF, r2
	movhi HIGHW1(#_NvM_StandQueueManage+0x00000002), r0, r5
	st.b r2, LOWW(#_NvM_StandQueueManage+0x00000002)[r5]
	dispose 0x00000000, 0x00000061, [r31]
_NvM_CancelWriteAll:
	.stack _NvM_CancelWriteAll = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1880
	movhi HIGHW1(#_NvM_MultiJob), r0, r2
	ld.bu LOWW(#_NvM_MultiJob)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	movhi HIGHW1(#_NvM_MultiJob+0x00000004), r0, r2
	ld.w LOWW(#_NvM_MultiJob+0x00000004)[r2], r2
	cmp 0x0000000D, r2
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1885
	movhi HIGHW1(#_NvM_MultiJob+0x00000008), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_NvM_MultiJob+0x00000008)[r2]
.BB.LABEL.20_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1888
	jmp [r31]
_NvM_ReadAll:
	.stack _NvM_ReadAll = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1908
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1918
	movhi HIGHW1(#_NvM_MultiJob), r0, r2
	ld.bu LOWW(#_NvM_MultiJob)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x0000000C, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1920
	mov r6, r8
	jarl _NvM_JobEnqueue, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.21_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	movea 0x000000A0, r0, r7
	mov 0x0000000C, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1927
	jarl _NVM_DET_REPORTRUNTIMEERROR.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_NvM_WriteAll:
	.stack _NvM_WriteAll = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1950
	prepare 0x00000061, 0x00000000
	mov 0x00000000, r20
	mov r20, r21
	br9 .BB.LABEL.22_5
.BB.LABEL.22_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1965
	andi 0x0000FFFF, r21, r2
	mul 0x00000038, r2, r0
	mov #_NvM_BlockDescriptor, r5
	add r2, r5
	ld.hu 0x0000000A[r5], r6
	mov 0x00000000, r7
	jarl _NvM_GetWordBitState, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1967
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.22_4
.BB.LABEL.22_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	andi 0x0000FFFF, r21, r2
	shl 0x00000004, r2
	mov #_NvM_AdminBlock, r5
	add r2, r5
	ld.bu 0x0000000C[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_4
.BB.LABEL.22_3:	; if_then_bb
	mov 0x00000001, r20
.BB.LABEL.22_4:	; if_break_bb
	add 0x00000001, r21
.BB.LABEL.22_5:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1963
	andi 0x0000FFFF, r21, r2
	addi 0xFFFFFFCC, r2, r0
	bgt9 .BB.LABEL.22_7
.BB.LABEL.22_6:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.22_1
.BB.LABEL.22_7:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1975
	andi 0x000000FF, r20, r0
	bnz9 .BB.LABEL.22_11
.BB.LABEL.22_8:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1977
	movhi HIGHW1(#_NvM_MultiJob), r0, r2
	ld.bu LOWW(#_NvM_MultiJob)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.22_10
.BB.LABEL.22_9:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	mov 0x0000000D, r7
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1979
	mov r6, r8
	jarl _NvM_JobEnqueue, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.22_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	movea 0x000000A0, r0, r7
	mov 0x0000000D, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1986
	jarl _NVM_DET_REPORTRUNTIMEERROR.1, r31
.BB.LABEL.22_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 1990
	dispose 0x00000000, 0x00000061, [r31]
_NvM_MainFunction:
	.stack _NvM_MainFunction = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2008
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2063
	movhi HIGHW1(#_NvM_Module), r0, r2
	ld.bu LOWW(#_NvM_Module)[r2], r2
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.23_18
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2066
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x0000000C, r2
	bnz9 .BB.LABEL.23_5
.BB.LABEL.23_2:	; if_then_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2068
	jarl _NvM_JobDequeue, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.23_5
.BB.LABEL.23_3:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2070
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x0000000D, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2072
	movhi HIGHW1(#_NvM_CurRunning+0x00000008), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000008)[r2], r2
	addi 0xFFFFFFE6, r2, r0
	blt9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2074
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	mov 0x0000000C, r5
	st.w r5, LOWW(#_NvM_Module+0x00000010)[r2]
.BB.LABEL.23_5:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2079
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x0000000C, r2
	bz9 .BB.LABEL.23_8
.BB.LABEL.23_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	movhi HIGHW1(#_NvM_AtomJob), r0, r2
	ld.bu LOWW(#_NvM_AtomJob)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2081
	movhi HIGHW1(#_NvM_CurRunning+0x00000008), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000008)[r2], r2
	shl 0x00000002, r2
	mov #_NvM_InterServFuncMatrix.1.NvM_MainFunction, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	jarl [r2], r31
.BB.LABEL.23_8:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2084
	movhi HIGHW1(#_NvM_AtomJob), r0, r2
	ld.bu LOWW(#_NvM_AtomJob)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_10
.BB.LABEL.23_9:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2087
	shl 0x00000002, r2
	mov #_NvM_AtomJob, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	shl 0x00000002, r2
	mov #_NvM_AtomJobFuncMatrix.2.NvM_MainFunction, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	jarl [r2], r31
.BB.LABEL.23_10:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2090
	movhi HIGHW1(#_NvM_Module+0x00000004), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.23_18
.BB.LABEL.23_11:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	movhi HIGHW1(#_NvM_Module+0x00000010), r0, r2
	ld.w LOWW(#_NvM_Module+0x00000010)[r2], r2
	cmp 0x0000000C, r2
	bnz9 .BB.LABEL.23_18
.BB.LABEL.23_12:	; bb68
	movhi HIGHW1(#_NvM_CurRunning), r0, r2
	ld.hu LOWW(#_NvM_CurRunning)[r2], r2
	mov r2, r5
	shl 0x00000004, r5
	mov #_NvM_AdminBlock, r6
	add r6, r5
	ld.w 0xFFFFFFF8[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_18
.BB.LABEL.23_13:	; bb84
	mov r2, r5
	shl 0x00000004, r5
	mov #_NvM_AdminBlock, r6
	add r6, r5
	ld.w 0xFFFFFFF8[r5], r5
	cmp 0x00000004, r5
	bz9 .BB.LABEL.23_18
.BB.LABEL.23_14:	; if_then_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2095
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.23_17
.BB.LABEL.23_15:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 0
	movhi HIGHW1(#_NvM_CurRunning+0x00000008), r0, r2
	ld.w LOWW(#_NvM_CurRunning+0x00000008)[r2], r2
	cmp 0x0000000C, r2
	bnz9 .BB.LABEL.23_17
.BB.LABEL.23_16:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2100
	movhi HIGHW1(#_NvM_CurRunning+0x0000001C), r0, r2
	st.w r0, LOWW(#_NvM_CurRunning+0x0000001C)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_17:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2105
	movhi HIGHW1(#_NvM_CurRunning+0x0000001C), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_NvM_CurRunning+0x0000001C)[r2]
.BB.LABEL.23_18:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2109
	dispose 0x00000000, 0x00000001, [r31]
_NvM_JobEndNotification:
	.stack _NvM_JobEndNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2131
	jmp [r31]
_NvM_JobErrorNotification:
	.stack _NvM_JobErrorNotification = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Memory/NvM/NvM.c", 2154
	jmp [r31]
	.section .const, const
	.align 4
_NvM_AtomJobFuncMatrix.2.NvM_MainFunction:
	.dw #_NvM_InterReadBlock
	.dw #_NvM_InterWriteBlock
	.dw #_NvM_InterReadRom
	.dw #_NvM_InterCalcCrc
	.dw #_NvM_InterWriteVerification
	.align 4
_NvM_InterServFuncMatrix.1.NvM_MainFunction:
	.ds (24)
	.dw #_NvM_InterReadBlock
	.dw #_NvM_InterWriteBlock
	.dw #_NvM_InterRestoreBlockDefaults
	.ds (8)
	.dw #_NvM_InterInvalidateNvBlock
	.dw #_NvM_InterReadAll
	.dw #_NvM_InterWriteAll
	.ds (32)
	.dw #_NvM_InterReadBlock
	.dw #_NvM_InterWriteBlock
	.dw #_NvM_InterRestoreBlockDefaults
	.dw #_NvM_InterValidateAll
