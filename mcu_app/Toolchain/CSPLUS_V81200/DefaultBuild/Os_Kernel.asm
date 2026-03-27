#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Kernel.c -oDefaultBuild\Os_Kernel.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b278b58d9add4332b103aaeca961f342zc0legru.0qv
#@	compiled at Fri Mar 27 09:51:05 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Kernel.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Os_SCB_FA_Inf
	.extern _Os_SystemStack_Inf
	.extern _Os_CfgPriorityMax_Inf
	.extern _Os_SysIsrNestQueue_Inf
	.extern _Os_ArchTempSp
	.extern _Os_ReadyQueMg_Inf
	.extern _Os_CoreCB
	.public _StartOS
	.extern _Os_Hal_GetCoreID
	.extern _Os_Hal_MultiCoreInit
	.extern _Os_FillStack
	.extern _Os_Hal_InitCPU
	.extern _Os_Hal_StartScheduler
	.public _Os_ShutdownOS
	.extern _Os_CallShutdownHook
	.extern _Wdg_59_DriverA_TriggerFunc
	.extern _Dio_ReadChannel
	.extern _Mcu_PerformReset
	.public _ShutdownOS
	.public _GetActiveApplicationMode
	.public _Os_SynPoint
	.public _Os_DeInitCoreInfo
	.public _Os_Panic
	.extern _Os_InitReadyTable
	.extern _Os_InitTask
	.extern _Os_InitInterrupt
	.extern _Os_InitCounter
	.extern _Os_InitAlarm
	.extern _Os_InitResource
	.extern _Os_PanicHandler

	.section .text, text
_Os_GetCoreIdLocal.1:
	.stack _Os_GetCoreIdLocal.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 89
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x00000026), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 91
	ld.hu LOWW(#_Os_SCB_FA_Inf+0x00000026)[r2], r10
	jmp [r31]
_Os_GetSystemContext.1:
	.stack _Os_GetSystemContext.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 101
	mov #_Os_SCB_FA_Inf, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 113
	jmp [r31]
_Os_GetCurrentContext.1:
	.stack _Os_GetCurrentContext.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 135
	mov #_Os_SCB_FA_Inf, r10
	jmp [r31]
_Os_InitScb.1:
	.stack _Os_InitScb.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 121
	st.b r0, 0x0000004D[r6]
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 124
	st.w r2, 0x00000050[r6]
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 125
	st.h r2, 0x00000022[r6]
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 126
	st.w r2, 0x00000038[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 127
	st.w r2, 0x0000003C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 128
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 129
	shl 0x00000002, r7
	mov #_Os_ReadyQueMg_Inf, r2
	add r7, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 132
	st.b r0, 0x0000004C[r6]
	movea 0x0000001C, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 133
	st.w r2, 0x00000048[r6]
	jmp [r31]
_StartOS:
	.stack _StartOS = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 152
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 164
	jarl _Os_Hal_GetCoreID, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 165
	mov r21, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 172
	st.h r21, 0x00000026[r10]
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 175
	cmp r2, r21
	mov r10, r22
	bnz9 .BB.LABEL.5_1
	jr .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 188
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 191
	mov r20, r6
	jarl _Os_CheckAppMode.1, r31
	st.h r10, 0x00000020[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 194
	mov r21, r6
	jarl _Os_Hal_MultiCoreInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 197
	jarl _Os_MultiCoreInitKernel.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 201
	ld.w 0x00000008[r22], r6
	jarl _Os_FillStack, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 205
	jarl _Os_InitSystem.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 209
	jarl _Os_Hal_InitCPU, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 224
	jarl _Os_SynPoint, r31
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 237
	jarl _Os_SynPoint, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 241
	jarl _Os_Hal_GetCoreID, r31
	shl 0x00000002, r10
	mov #_Os_SystemStack_Inf, r2
	add r10, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000000[r2], r2
	mov 0xFFFFFFFC, r5
	and r5, r2
	movhi HIGHW1(#_Os_ArchTempSp), r0, r5
	st.w r2, LOWW(#_Os_ArchTempSp)[r5]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 246
	jarl _Os_Hal_StartScheduler, r31
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 256
	dispose 0x00000000, 0x00000071, [r31]
_Os_ShutdownOS:
	.stack _Os_ShutdownOS = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 265
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 268
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 284
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 287
	mov r10, r6
	mov r20, r7
	jarl _Os_CallShutdownHook, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 334
	jarl _Os_DeInitCoreInfo, r31
	br9 .BB.LABEL.6_9
.BB.LABEL.6_1:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 0
	mov 0x0000000D, r6
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_2:	; bb26
	mov 0x0000000A, r6
	jarl _Dio_ReadChannel, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_3:	; bb38
	mov 0x0000000F, r6
	jarl _Dio_ReadChannel, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_4:	; bb50
	mov 0x00000002, r6
	jarl _Dio_ReadChannel, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_5:	; bb62
	mov 0x00000008, r6
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_6:	; bb74
	mov 0x00000009, r6
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; bb86
	movea 0x00000010, r0, r6
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 353
	jarl _Mcu_PerformReset, r31
.BB.LABEL.6_9:	; bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 341
	jarl _Wdg_59_DriverA_TriggerFunc, r31
	movea 0x00000012, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 343
	jarl _Dio_ReadChannel, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_1
	br9 .BB.LABEL.6_8
_ShutdownOS:
	.stack _ShutdownOS = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 374
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 386
	jarl _Os_GetCurrentContext.1, r31
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 418
	mov r20, r6
	jarl _Os_ShutdownOS, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 439
	dispose 0x00000000, 0x00000041, [r31]
_GetActiveApplicationMode:
	.stack _GetActiveApplicationMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 450
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 460
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 492
	ld.hu 0x00000020[r10], r10
	dispose 0x00000000, 0x00000001, [r31]
_Os_InitSystem.1:
	.stack _Os_InitSystem.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 502
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 505
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 506
	mov r20, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 508
	mov r10, r6
	mov r20, r7
	jarl _Os_InitScb.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 511
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 514
	mov #_Os_CoreCB, r2
	ld.h 0x00000000[r2], r5
	ori 0x00000001, r5, r5
	st.h r5, 0x00000000[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 516
	st.w r5, 0x0000000C[r2]
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 519
	jarl _Os_InitReadyTable, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 522
	jarl _Os_InitTask, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 526
	jarl _Os_InitInterrupt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 530
	jarl _Os_InitCounter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 534
	jarl _Os_InitAlarm, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 542
	jarl _Os_InitResource, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 584
	dispose 0x00000000, 0x00000041, [r31]
_Os_MultiCoreInitKernel.1:
	.stack _Os_MultiCoreInitKernel.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 594
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 596
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 597
	mov r20, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 599
	mov r20, r2
	shl 0x00000002, r2
	mov #_Os_SysIsrNestQueue_Inf, r5
	add r2, r5
	ld.w 0x00000000[r5], r5
	st.w r5, 0x0000000C[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 600
	add r20, r20
	mov #_Os_CfgPriorityMax_Inf, r5
	add r20, r5
	ld.h 0x00000000[r5], r5
	st.h r5, 0x00000028[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 601
	mov #_Os_ReadyQueMg_Inf, r5
	add r2, r5
	ld.w 0x00000000[r5], r5
	st.w r5, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 602
	mov #_Os_SystemStack_Inf, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000008[r10]
	dispose 0x00000000, 0x00000041, [r31]
_Os_SynPoint:
	.stack _Os_SynPoint = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 615
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 619
	jarl _Os_GetCoreIdLocal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 622
	cmp 0x00000004, r20
	bh9 .BB.LABEL.11_5
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 625
	mov r20, r2
	add r2, r2
	mov #_Os_CoreCB, r5
	add r2, r5
	add r10, r10
	add r10, r5
	mov 0x00000001, r2
	st.h r2, 0x00000002[r5]
	mov 0x00000000, r2
	br9 .BB.LABEL.11_4
.BB.LABEL.11_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 630
	mov r20, r5
	add r5, r5
	mov #_Os_CoreCB, r6
	add r5, r6
	andi 0x0000FFFF, r2, r5
	add r5, r5
	add r5, r6
	ld.hu 0x00000002[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 633
	add 0x00000001, r2
.BB.LABEL.11_4:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 627
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.11_2
	br9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 639
	jarl _Os_Panic, r31
.BB.LABEL.11_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 641
	dispose 0x00000000, 0x00000041, [r31]
_Os_CheckAppMode.1:
	.stack _Os_CheckAppMode.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 651
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 655
	jarl _Os_GetCoreIdLocal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 658
	cmp 0x00000000, r10
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 660
	br9 .BB.LABEL.12_1
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 667
	add r10, r10
	mov #_Os_CoreCB, r2
	add r10, r2
	st.h r20, 0x0000000A[r2]
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 668
	mov r20, r6
	jarl _Os_SynPoint, r31
	mov r20, r2
.BB.LABEL.12_3:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 673
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.12_10
.BB.LABEL.12_4:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 676
	andi 0x0000FFFF, r2, r5
	add r5, r5
	mov #_Os_CoreCB, r6
	add r5, r6
	ld.hu 0x0000000A[r6], r5
	add 0x0000000A, r6
	cmp 0x00000000, r5
	bz9 .BB.LABEL.12_7
.BB.LABEL.12_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 679
	andi 0x0000FFFF, r20, r0
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_6:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 681
	ld.hu 0x00000000[r6], r20
.BB.LABEL.12_7:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 0
	add 0x00000001, r2
	br9 .BB.LABEL.12_3
.BB.LABEL.12_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 686
	andi 0x0000FFFF, r20, r5
	ld.hu 0x00000000[r6], r6
	cmp r6, r5
	bz9 .BB.LABEL.12_7
.BB.LABEL.12_9:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 689
	br9 .BB.LABEL.12_9
.BB.LABEL.12_10:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 700
	andi 0x0000FFFF, r20, r0
	bz9 .BB.LABEL.12_12
.BB.LABEL.12_11:	; bb62.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.12_14
.BB.LABEL.12_12:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 702
	br9 .BB.LABEL.12_12
.BB.LABEL.12_13:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 711
	andi 0x0000FFFF, r2, r5
	add r5, r5
	mov #_Os_CoreCB, r6
	add r5, r6
	st.h r20, 0x0000000A[r6]
	add 0x00000001, r2
.BB.LABEL.12_14:	; bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 709
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.12_13
.BB.LABEL.12_15:	; if_break_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 716
	andi 0x0000FFFF, r20, r10
	dispose 0x00000000, 0x00000041, [r31]
_Os_DeInitCoreInfo:
	.stack _Os_DeInitCoreInfo = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 739
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 742
	jarl _Os_GetCoreIdLocal.1, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 749
	shl r10, r2
	not r2, r2
	mov #_Os_CoreCB, r5
	ld.h 0x00000000[r5], r6
	and r2, r6
	st.h r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 751
	mov r10, r2
	add r2, r2
	add r5, r2
	st.h r0, 0x0000000A[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 752
	shl 0x00000002, r10
	add r10, r5
	mov 0x00000002, r2
	st.w r2, 0x0000000C[r5]
	dispose 0x00000000, 0x00000001, [r31]
_Os_Panic:
	.stack _Os_Panic = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 765
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 767
	stsr 0x00000005, r2, 0x00000000
	ori 0x000000A0, r2, r2
	ldsr r2, 5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 768
	jarl _Os_PanicHandler, r31
.BB.LABEL.14_1:	; bb2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 770
	br9 .BB.LABEL.14_1
