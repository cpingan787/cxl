#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Resource.c -oDefaultBuild\Os_Resource.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_892e1f4b7c3748beb16ffb1fda95372apok5vegg.mbk
#@	compiled at Thu Jul 16 13:41:46 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Resource.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Os_SCB_FA_Inf
	.extern _Os_ObjectIDMaxTable
	.extern _Os_TaskCfg
	.extern _Os_ICB
	.extern _Os_ResourceCfg
	.extern _Os_CfgStdResourceMax_Inf
	.extern _Os_RCB
	.extern _Os_StdResIdRange
	.extern _Os_TaskResourceAccessMask
	.extern _Os_IsrResourceAccessMask
	.extern _Os_ResScheduler_Inf
	.public _Os_InitResource
	.extern _Os_ReadyQueueInsert
	.extern _Os_IplToPrio
	.extern _Os_Hal_GetIpl
	.extern _Os_Hal_SetIpl
	.extern _Os_PrioToIpl
	.extern _Os_ReadyQueueRemove
	.extern _Os_Hal_SuspendInt
	.extern _Os_Hal_RestoreInt
	.public _GetResource
	.public _Os_GetResource
	.extern _Os_Panic
	.public _ReleaseResource
	.public _Os_ReleaseResource
	.extern _Os_UpdateHighPrioTask

	.section .text, text
_Os_GetCoreIdLocal.1:
	.stack _Os_GetCoreIdLocal.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 89
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x00000026), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 91
	ld.hu LOWW(#_Os_SCB_FA_Inf+0x00000026)[r5], r10
	jmp [r31]
_Os_GetSystemContext.1:
	.stack _Os_GetSystemContext.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 101
	mov #_Os_SCB_FA_Inf, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 113
	jmp [r31]
_Os_GetCurrentContext.1:
	.stack _Os_GetCurrentContext.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 135
	mov #_Os_SCB_FA_Inf, r10
	jmp [r31]
_Os_ObjectIDCheck.1:
	.stack _Os_ObjectIDCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 146
	add r7, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 149
	mov #_Os_ObjectIDMaxTable, r5
	add r7, r5
	ld.hu 0x00000000[r5], r5
	cmp r5, r6
	setf 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 155
	jmp [r31]
_Os_InitResource:
	.stack _Os_InitResource = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 247
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 250
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 252
	mov r25, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 255
	mov r25, r5
	add r5, r5
	mov #_Os_CfgStdResourceMax_Inf, r6
	add r5, r6
	ld.hu 0x00000000[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 258
	mov r25, r5
	shl 0x00000002, r5
	mov #_Os_ResScheduler_Inf, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	st.w r5, 0x0000002C[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 265
	shl 0x00000003, r25
	mov #_Os_StdResIdRange, r5
	add r25, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 266
	ld.w 0x00000004[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 265
	ld.w 0x00000000[r5], r26
	br9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 269
	mov r26, r5
	shl 0x00000002, r5
	mov #_Os_RCB, r6
	add r5, r6
	ld.w 0x00000000[r6], r6
	jarl _Os_RCBInit.1, r31
	add 0x00000001, r26
.BB.LABEL.5_3:	; bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 267
	cmp r25, r26
	bl9 .BB.LABEL.5_2
.BB.LABEL.5_4:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 275
	dispose 0x00000000, 0x00000301, [r31]
_Os_RCBInit.1:
	.stack _Os_RCBInit.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 284
	st.b r0, 0x00000002[r6]
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 287
	st.h r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 288
	st.w r0, 0x00000004[r6]
	jmp [r31]
_Os_SaveResourceByTaskOrder.1:
	.stack _Os_SaveResourceByTaskOrder.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 381
	mov r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 383
	shl 0x00000002, r5
	mov #_Os_RCB, r9
	add r5, r9
	ld.w 0x00000000[r9], r5
	ld.w 0x00000050[r6], r6
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 385
	ld.bu 0x00000018[r7], r5
	shl 0x00000002, r5
	ld.w 0x00000014[r7], r6
	add r5, r6
	st.w r8, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 386
	ld.b 0x00000018[r7], r5
	add 0x00000001, r5
	st.b r5, 0x00000018[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 387
	ld.w 0x00000000[r9], r6
	st.b r5, 0x00000002[r6]
	jmp [r31]
_Os_ResumeResourceByTaskOrder.1:
	.stack _Os_ResumeResourceByTaskOrder.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 403
	ld.b 0x00000018[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 405
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000018[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 406
	shl 0x00000002, r7
	mov #_Os_RCB, r5
	add r7, r5
	ld.w 0x00000000[r5], r6
	st.b r0, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 413
	ld.w 0x00000000[r5], r5
	st.w r0, 0x00000004[r5]
	jmp [r31]
_Os_SaveResourceByIsr2Order.1:
	.stack _Os_SaveResourceByIsr2Order.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 423
	mov r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 425
	shl 0x00000002, r5
	mov #_Os_RCB, r9
	add r5, r9
	ld.w 0x00000000[r9], r5
	ld.w 0x00000050[r6], r6
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 426
	ld.w 0x00000004[r7], r5
	shl 0x00000002, r5
	ld.w 0x00000000[r7], r6
	add r5, r6
	st.w r8, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 428
	ld.w 0x00000004[r7], r5
	add 0x00000001, r5
	st.w r5, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 430
	ld.w 0x00000000[r9], r6
	st.b r5, 0x00000002[r6]
	jmp [r31]
_Os_ResumeResourceByIsr2Order.1:
	.stack _Os_ResumeResourceByIsr2Order.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 447
	ld.w 0x00000004[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 450
	add 0xFFFFFFFF, r5
	st.w r5, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 452
	shl 0x00000002, r7
	mov #_Os_RCB, r5
	add r7, r5
	ld.w 0x00000000[r5], r6
	st.b r0, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 459
	ld.w 0x00000000[r5], r5
	st.w r0, 0x00000004[r5]
	jmp [r31]
_Os_GetResourceByTask.1:
	.stack _Os_GetResourceByTask.1 = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 469
	prepare 0x00000387, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 471
	ld.w 0x00000004[r25], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 473
	mov r27, r7
	mov r26, r8
	jarl _Os_SaveResourceByTaskOrder.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 481
	mov r26, r5
	shl 0x00000003, r5
	mov #_Os_ResourceCfg, r6
	add r5, r6
	ld.hu 0x00000002[r6], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 480
	ld.hu 0x0000001A[r27], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 482
	cmp r29, r28
	bnh9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 485
	ld.w 0x00000000[r25], r6
	mov 0x0000000C, r8
	mov r26, r7
	mov r28, r9
	jarl32 _Os_ReadyQueueInsert, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 487
	st.h r28, 0x0000001A[r27]
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 489
	ld.hu 0x00000022[r25], r5
	cmp r5, r28
	bnh9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 491
	st.h r28, 0x00000022[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 492
	ld.w 0x0000003C[r25], r5
	st.w r5, 0x00000038[r25]
.BB.LABEL.11_4:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 495
	shl 0x00000002, r26
	mov #_Os_RCB, r5
	add r26, r5
	ld.w 0x00000000[r5], r5
	st.h r29, 0x00000000[r5]
	dispose 0x00000000, 0x00000387, [r31]
_Os_GetResourceByTaskOrInterrupt.1:
	.stack _Os_GetResourceByTaskOrInterrupt.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 509
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 511
	ld.w 0x00000004[r25], r7
	mov r26, r8
	jarl _Os_SaveResourceByTaskOrder.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 512
	mov r26, r5
	shl 0x00000002, r5
	mov #_Os_RCB, r6
	add r5, r6
	ld.w 0x00000000[r6], r27
	jarl32 _Os_Hal_GetIpl, r31
	mov r25, r6
	mov r10, r7
	jarl32 _Os_IplToPrio, r31
	st.h r10, 0x00000000[r27]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 514
	shl 0x00000003, r26
	mov #_Os_ResourceCfg, r5
	add r26, r5
	ld.hu 0x00000002[r5], r7
	mov r25, r6
	jarl32 _Os_PrioToIpl, r31
	mov 0x00000001, r7
	mov r10, r6
	jarl32 _Os_Hal_SetIpl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 515
	ld.b 0x0000004D[r25], r5
	add 0x00000001, r5
	st.b r5, 0x0000004D[r25]
	dispose 0x00000000, 0x00000381, [r31]
_Os_GetResourceByInterrupt.1:
	.stack _Os_GetResourceByInterrupt.1 = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 531
	prepare 0x00000387, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 535
	mov r27, r5
	shl 0x00000003, r5
	mov #_Os_ResourceCfg, r6
	add r5, r6
	ld.hu 0x00000002[r6], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 536
	jarl32 _Os_Hal_GetIpl, r31
	mov r25, r6
	mov r10, r7
	jarl32 _Os_IplToPrio, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 537
	cmp r10, r28
	mov r10, r29
	bnh9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 539
	mov r25, r6
	mov r28, r7
	jarl32 _Os_PrioToIpl, r31
	mov 0x00000001, r7
	mov r10, r6
	jarl32 _Os_Hal_SetIpl, r31
.BB.LABEL.13_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 545
	ld.bu 0x0000004C[r25], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 547
	mov r25, r6
	mov r26, r7
	mov r27, r8
	jarl _Os_SaveResourceByIsr2Order.1, r31
.BB.LABEL.13_4:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 551
	shl 0x00000002, r27
	mov #_Os_RCB, r5
	add r27, r5
	ld.w 0x00000000[r5], r5
	st.h r29, 0x00000000[r5]
	dispose 0x00000000, 0x00000387, [r31]
_Os_ReleaseResourceByTask.1:
	.stack _Os_ReleaseResourceByTask.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 565
	prepare 0x00000381, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 568
	mov r7, r5
	shl 0x00000003, r5
	mov #_Os_ResourceCfg, r8
	add r5, r8
	ld.hu 0x00000002[r8], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 571
	ld.w 0x0000003C[r6], r8
	shl 0x00000005, r8
	mov #_Os_TaskCfg, r9
	add r8, r9
	ld.hu 0x00000016[r9], r8
	cmp r8, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 567
	ld.w 0x00000004[r6], r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 571
	bnc9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; entry.if_break_bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.14_4
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 575
	mov r26, r7
	shl 0x00000002, r7
	mov #_Os_RCB, r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	ld.bu 0x00000002[r7], r8
	ld.bu 0x00000018[r25], r9
	cmp r9, r8
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_3:	; if_else_bb.if_break_bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov 0x00000005, r10
.BB.LABEL.14_4:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 600
	zxb r10
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.14_5:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 590
	ld.hu 0x00000000[r7], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 591
	cmp r27, r5
	bnh9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 593
	ld.hu 0x0000001A[r25], r7
	ld.w 0x00000000[r6], r6
	jarl32 _Os_ReadyQueueRemove, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 594
	st.h r27, 0x0000001A[r25]
.BB.LABEL.14_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 596
	mov r25, r6
	mov r26, r7
	jarl _Os_ResumeResourceByTaskOrder.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000381, [r31]
_Os_ReleaseResourceByTaskOrInterrupt.1:
	.stack _Os_ReleaseResourceByTaskOrInterrupt.1 = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 609
	prepare 0x00000385, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 614
	mov r7, r5
	shl 0x00000002, r5
	mov #_Os_RCB, r8
	add r5, r8
	ld.w 0x00000000[r8], r5
	ld.bu 0x00000002[r5], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 611
	ld.w 0x00000004[r6], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 614
	ld.bu 0x00000018[r25], r9
	cmp r9, r8
	mov r7, r26
	mov r6, r27
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 629
	ld.hu 0x00000000[r5], r7
	mov r27, r6
	jarl32 _Os_PrioToIpl, r31
	mov 0x00000000, r28
	mov r10, r6
	mov r28, r7
	jarl32 _Os_Hal_SetIpl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 630
	ld.b 0x0000004D[r27], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x0000004D[r27]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 632
	mov r25, r6
	mov r26, r7
	jarl _Os_ResumeResourceByTaskOrder.1, r31
	mov r28, r10
	dispose 0x00000000, 0x00000385, [r31]
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 636
	dispose 0x00000000, 0x00000385, [r31]
_Os_ReleaseResourceByInterrupt.1:
	.stack _Os_ReleaseResourceByInterrupt.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 645
	prepare 0x00000381, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 650
	mov r7, r5
	shl 0x00000002, r5
	mov #_Os_RCB, r8
	add r5, r8
	ld.w 0x00000000[r8], r5
	ld.bu 0x00000002[r5], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 648
	ld.w 0x00000048[r6], r9
	shl 0x00000002, r9
	mov #_Os_ICB, r10
	add r9, r10
	ld.w 0x00000000[r10], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 650
	ld.bu 0x00000004[r25], r9
	cmp r8, r9
	mov r7, r26
	mov r6, r27
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_1:	; entry.if_break_bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov 0x00000005, r10
.BB.LABEL.16_2:	; if_break_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 684
	zxb r10
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.16_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 667
	mov r26, r6
	shl 0x00000003, r6
	mov #_Os_ResourceCfg, r7
	add r6, r7
	ld.hu 0x00000002[r7], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 666
	ld.hu 0x00000000[r5], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 668
	cmp r6, r7
	bnc9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 670
	mov r27, r6
	jarl32 _Os_PrioToIpl, r31
	mov 0x00000000, r7
	mov r10, r6
	jarl32 _Os_Hal_SetIpl, r31
.BB.LABEL.16_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 676
	ld.bu 0x0000004C[r27], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.16_7
.BB.LABEL.16_6:	; if_break_bb.if_break_bb55_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.16_2
.BB.LABEL.16_7:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 678
	mov r25, r6
	mov r26, r7
	jarl _Os_ResumeResourceByIsr2Order.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000381, [r31]
_Os_GetResourceSafetyCheck.1:
	.stack _Os_GetResourceSafetyCheck.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 694
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 699
	jarl32 _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 702
	mov r26, r5
	shl 0x00000002, r5
	mov #_Os_RCB, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.bu 0x00000002[r5], r5
	cmp 0x00000000, r5
	mov r10, r6
	bnz9 .BB.LABEL.17_6
.BB.LABEL.17_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 708
	ld.w 0x00000050[r25], r5
	cmp 0x0000000A, r5
	bnz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	andi 0x0000000F, r26, r5
	mov 0x00000001, r7
	shl r5, r7
	ld.w 0x0000003C[r25], r5
	shl 0x00000002, r5
	mov #_Os_TaskResourceAccessMask, r8
	add r5, r8
	ld.w 0x00000000[r8], r5
	mov r26, r8
	sar 0x00000004, r8
	add r8, r8
	add r8, r5
	ld.hu 0x00000000[r5], r5
	tst r7, r5
	bz9 .BB.LABEL.17_6
.BB.LABEL.17_3:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 714
	ld.w 0x00000050[r25], r5
	cmp 0x00000008, r5
	bz9 .BB.LABEL.17_5
.BB.LABEL.17_4:	; if_else_bb42.if_break_bb76_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov 0x00000000, r25
	br9 .BB.LABEL.17_7
.BB.LABEL.17_5:	; bb48
	andi 0x0000000F, r26, r5
	mov 0x00000001, r7
	shl r5, r7
	ld.w 0x00000048[r25], r25
	shl 0x00000002, r25
	mov #_Os_IsrResourceAccessMask, r5
	add r25, r5
	ld.w 0x00000000[r5], r25
	sar 0x00000004, r26
	add r26, r26
	add r26, r25
	ld.hu 0x00000000[r25], r25
	tst r7, r25
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_6:	; if_then_bb73
	mov 0x00000001, r25
.BB.LABEL.17_7:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 725
	jarl32 _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 727
	mov r25, r10
	dispose 0x00000000, 0x00000301, [r31]
_Os_ReleaseResourceSafetyCheck.1:
	.stack _Os_ReleaseResourceSafetyCheck.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 736
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 741
	jarl32 _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 744
	shl 0x00000002, r25
	mov #_Os_RCB, r5
	add r25, r5
	ld.w 0x00000000[r5], r5
	ld.bu 0x00000002[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 749
	mov r10, r6
	jarl32 _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 744
	cmp 0x00000000, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 746
	cmov 0x00000002, 0x00000005, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 752
	dispose 0x00000000, 0x00000201, [r31]
_Os_ResourceIdSafetyCheck.1:
	.stack _Os_ResourceIdSafetyCheck.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 762
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 767
	andi 0x0000FFFF, r25, r6
	mov 0x00000006, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_1:	; entry.if_break_bb19_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov 0x00000003, r10
.BB.LABEL.19_2:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 779
	zxb r10
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.19_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 773
	jarl _Os_GetCoreIdLocal.1, r31
	shl 0x00000003, r25
	mov #_Os_ResourceCfg, r5
	add r25, r5
	ld.hu 0x00000000[r5], r5
	cmp r5, r10
	bnz9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; if_else_bb.if_break_bb19_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.19_2
.BB.LABEL.19_5:	; if_then_bb18
	movea 0x00000015, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 775
	dispose 0x00000000, 0x00000201, [r31]
_GetResource:
	.stack _GetResource = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 789
	prepare 0x00000301, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 798
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 806
	mov r25, r6
	jarl _Os_ResourceIdSafetyCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 807
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 821
	mov r26, r6
	mov r25, r7
	jarl _Os_GetResourceSafetyCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 822
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 825
	mov r26, r6
	mov r25, r7
	jarl _Os_GetResource, r31
.BB.LABEL.20_3:	; if_break_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 847
	dispose 0x00000000, 0x00000301, [r31]
_Os_GetResource:
	.stack _Os_GetResource = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 857
	prepare 0x00000385, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 863
	ld.w 0x00000048[r25], r5
	shl 0x00000002, r5
	mov #_Os_ICB, r6
	add r5, r6
	ld.w 0x00000000[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 867
	jarl32 _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 868
	mov r26, r5
	shl 0x00000003, r5
	mov #_Os_ResourceCfg, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	mov r10, r28
	cmp 0x00000000, r5
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	add 0xFFFFFFFF, r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.21_9
.BB.LABEL.21_2:	; entry
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_3:	; switch_clause_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 893
	ld.w 0x00000050[r25], r5
	cmp 0x0000000A, r5
	bnz9 .BB.LABEL.21_9
.BB.LABEL.21_4:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 895
	mov r25, r6
	mov r26, r7
	jarl _Os_GetResourceByTaskOrInterrupt.1, r31
	br9 .BB.LABEL.21_11
.BB.LABEL.21_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 872
	mov r26, r27
	shl 0x00000003, r27
	mov #_Os_ResourceCfg, r5
	add r27, r5
	ld.hu 0x00000002[r5], r27
	ld.w 0x0000003C[r25], r5
	shl 0x00000005, r5
	mov #_Os_TaskCfg, r6
	add r5, r6
	ld.hu 0x00000016[r6], r5
	cmp r27, r5
	bnh9 .BB.LABEL.21_7
.BB.LABEL.21_6:	; switch_clause_bb.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov 0x00000001, r25
	br9 .BB.LABEL.21_12
.BB.LABEL.21_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 876
	ld.w 0x00000050[r25], r27
	cmp 0x00000008, r27
	bz9 .BB.LABEL.21_6
.BB.LABEL.21_8:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 883
	mov r25, r6
	mov r26, r7
	jarl _Os_GetResourceByTask.1, r31
	br9 .BB.LABEL.21_11
.BB.LABEL.21_9:	; switch_clause_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov r25, r6
	mov r27, r7
	mov r26, r8
	jarl _Os_GetResourceByInterrupt.1, r31
	br9 .BB.LABEL.21_11
.BB.LABEL.21_10:	; switch_clause_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 919
	jarl32 _Os_Panic, r31
.BB.LABEL.21_11:	; switch_clause_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov 0x00000000, r25
.BB.LABEL.21_12:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 922
	mov r28, r6
	jarl32 _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 925
	mov r25, r10
	dispose 0x00000000, 0x00000385, [r31]
_ReleaseResource:
	.stack _ReleaseResource = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 935
	prepare 0x00000301, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 944
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 952
	mov r25, r6
	jarl _Os_ResourceIdSafetyCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 953
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_3
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 967
	mov r25, r6
	jarl _Os_ReleaseResourceSafetyCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 968
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 971
	mov r26, r6
	mov r25, r7
	jarl _Os_ReleaseResource, r31
.BB.LABEL.22_3:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 994
	dispose 0x00000000, 0x00000301, [r31]
_Os_ReleaseResource:
	.stack _Os_ReleaseResource = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1004
	prepare 0x00000385, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1010
	jarl32 _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1011
	mov r26, r5
	shl 0x00000003, r5
	mov #_Os_ResourceCfg, r6
	add r5, r6
	ld.w 0x00000004[r6], r5
	mov r10, r27
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_4
.BB.LABEL.23_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	add 0xFFFFFFFF, r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_7
.BB.LABEL.23_2:	; entry
	cmp 0x00000001, r5
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_3:	; entry.switch_break_bb_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.23_8
.BB.LABEL.23_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1014
	mov r25, r6
	mov r26, r7
	jarl _Os_ReleaseResourceByTask.1, r31
	br9 .BB.LABEL.23_8
.BB.LABEL.23_5:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1018
	mov r26, r5
	shl 0x00000002, r5
	mov #_Os_RCB, r6
	add r6, r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000004[r5], r5
	cmp 0x0000000A, r5
	bnz9 .BB.LABEL.23_7
.BB.LABEL.23_6:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1020
	mov r25, r6
	mov r26, r7
	jarl _Os_ReleaseResourceByTaskOrInterrupt.1, r31
	br9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; switch_clause_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 0
	mov r25, r6
	mov r26, r7
	jarl _Os_ReleaseResourceByInterrupt.1, r31
.BB.LABEL.23_8:	; switch_break_bb
	mov r10, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1036
	cmp 0x00000000, r28
	bz9 .BB.LABEL.23_9
	jr32 .BB.LABEL.23_12
.BB.LABEL.23_9:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1043
	shl 0x00000002, r26
	mov #_Os_RCB, r5
	add r5, r26
	ld.w 0x00000000[r26], r5
	st.b r0, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1044
	ld.w 0x00000000[r26], r5
	mov 0xFFFFFFFF, r6
	st.h r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1045
	mov r25, r6
	jarl32 _Os_UpdateHighPrioTask, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1048
	ld.w 0x00000038[r25], r5
	ld.w 0x0000003C[r25], r6
	cmp r6, r5
	bnz9 .BB.LABEL.23_10
	jr32 .BB.LABEL.23_12
.BB.LABEL.23_10:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1050
	ld.bu 0x0000004D[r25], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.23_11
	jr32 .BB.LABEL.23_12
.BB.LABEL.23_11:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1052
	._line_top inline_asm
    trap 0x00;
	._line_end inline_asm
.BB.LABEL.23_12:	; if_break_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1057
	mov r27, r6
	jarl32 _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Resource.c", 1060
	mov r28, r10
	dispose 0x00000000, 0x00000385, [r31]
