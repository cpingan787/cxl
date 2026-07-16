#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Kernel.c -oDefaultBuild\Os_Kernel.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_3d8932f47fd44e1cb446a51ca56fc923wirvpv4y.wjb
#@	compiled at Thu Jul 16 13:41:34 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Kernel.c"

	$reg_mode 22
	.dbl_size 4

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
_Os_InitScb.1:
	.stack _Os_InitScb.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 115
	st.b r0, 0x0000004D[r6]
	mov 0x0000000A, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 118
	st.w r5, 0x00000050[r6]
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 119
	st.h r5, 0x00000022[r6]
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 120
	st.w r5, 0x00000038[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 121
	st.w r5, 0x0000003C[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 122
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 123
	shl 0x00000002, r7
	mov #_Os_ReadyQueMg_Inf, r5
	add r7, r5
	ld.w 0x00000000[r5], r5
	st.w r5, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 126
	st.b r0, 0x0000004C[r6]
	mov 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 127
	st.w r5, 0x00000048[r6]
	jmp [r31]
_StartOS:
	.stack _StartOS = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 146
	prepare 0x00000381, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 158
	jarl32 _Os_Hal_GetCoreID, r31
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 159
	mov r26, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 166
	st.h r26, 0x00000026[r10]
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 169
	cmp r5, r26
	mov r10, r27
	bnz9 .BB.LABEL.5_1
	jr32 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 182
	stsr 0x00000005, r5, 0x00000000
	ori 0x000000A0, r5, r5
	ldsr r5, 5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 185
	mov r25, r6
	jarl32 _Os_CheckAppMode.1, r31
	st.h r10, 0x00000020[r27]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 188
	mov r26, r6
	jarl32 _Os_Hal_MultiCoreInit, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 191
	jarl32 _Os_MultiCoreInitKernel.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 195
	ld.w 0x00000008[r27], r6
	jarl32 _Os_FillStack, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 199
	jarl32 _Os_InitSystem.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 203
	jarl32 _Os_Hal_InitCPU, r31
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 218
	jarl32 _Os_SynPoint, r31
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 231
	jarl32 _Os_SynPoint, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 235
	jarl32 _Os_Hal_GetCoreID, r31
	shl 0x00000002, r10
	mov #_Os_SystemStack_Inf, r5
	add r10, r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000000[r5], r5
	mov 0xFFFFFFFC, r6
	and r6, r5
	movhi HIGHW1(#_Os_ArchTempSp), r0, r6
	st.w r5, LOWW(#_Os_ArchTempSp)[r6]
	._line_top inline_asm
    mov #_Os_ArchTempSp, r7;
    ld.w 0[r7], sp;
	._line_end inline_asm
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 240
	jarl32 _Os_Hal_StartScheduler, r31
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 250
	dispose 0x00000000, 0x00000381, [r31]
_Os_ShutdownOS:
	.stack _Os_ShutdownOS = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 259
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 262
	jarl32 _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 278
	stsr 0x00000005, r5, 0x00000000
	ori 0x000000A0, r5, r5
	ldsr r5, 5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 328
	jarl _Os_DeInitCoreInfo, r31
.BB.LABEL.6_1:	; bb9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 333
	br9 .BB.LABEL.6_1
_ShutdownOS:
	.stack _ShutdownOS = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 347
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 359
	jarl32 _Os_GetCurrentContext.1, r31
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 391
	mov r25, r6
	jarl _Os_ShutdownOS, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 412
	dispose 0x00000000, 0x00000201, [r31]
_GetActiveApplicationMode:
	.stack _GetActiveApplicationMode = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 423
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 433
	jarl32 _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 465
	ld.hu 0x00000020[r10], r10
	dispose 0x00000000, 0x00000001, [r31]
_Os_InitSystem.1:
	.stack _Os_InitSystem.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 475
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 478
	jarl32 _Os_GetCoreIdLocal.1, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 479
	mov r25, r6
	jarl32 _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 481
	mov r10, r6
	mov r25, r7
	jarl32 _Os_InitScb.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 484
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 487
	mov #_Os_CoreCB, r5
	ld.h 0x00000000[r5], r6
	ori 0x00000001, r6, r6
	st.h r6, 0x00000000[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 489
	st.w r6, 0x0000000C[r5]
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 492
	jarl32 _Os_InitReadyTable, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 495
	jarl32 _Os_InitTask, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 499
	jarl32 _Os_InitInterrupt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 503
	jarl32 _Os_InitCounter, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 507
	jarl32 _Os_InitAlarm, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 515
	jarl32 _Os_InitResource, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 557
	dispose 0x00000000, 0x00000201, [r31]
_Os_MultiCoreInitKernel.1:
	.stack _Os_MultiCoreInitKernel.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 567
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 569
	jarl32 _Os_GetCoreIdLocal.1, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 570
	mov r25, r6
	jarl32 _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 572
	mov r25, r5
	shl 0x00000002, r5
	mov #_Os_SysIsrNestQueue_Inf, r6
	add r5, r6
	ld.w 0x00000000[r6], r6
	st.w r6, 0x0000000C[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 573
	add r25, r25
	mov #_Os_CfgPriorityMax_Inf, r6
	add r25, r6
	ld.h 0x00000000[r6], r6
	st.h r6, 0x00000028[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 574
	mov #_Os_ReadyQueMg_Inf, r6
	add r5, r6
	ld.w 0x00000000[r6], r6
	st.w r6, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 575
	mov #_Os_SystemStack_Inf, r6
	add r6, r5
	ld.w 0x00000000[r5], r5
	st.w r5, 0x00000008[r10]
	dispose 0x00000000, 0x00000201, [r31]
_Os_SynPoint:
	.stack _Os_SynPoint = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 588
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 592
	jarl32 _Os_GetCoreIdLocal.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 595
	cmp 0x00000004, r25
	bh9 .BB.LABEL.11_5
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 598
	mov r25, r5
	add r5, r5
	mov #_Os_CoreCB, r6
	add r5, r6
	add r10, r10
	add r10, r6
	mov 0x00000001, r5
	st.h r5, 0x00000002[r6]
	mov 0x00000000, r5
	br9 .BB.LABEL.11_4
.BB.LABEL.11_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 603
	mov r25, r6
	add r6, r6
	mov #_Os_CoreCB, r7
	add r6, r7
	andi 0x0000FFFF, r5, r6
	add r6, r6
	add r6, r7
	ld.hu 0x00000002[r7], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 606
	add 0x00000001, r5
.BB.LABEL.11_4:	; bb30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 600
	andi 0x0000FFFF, r5, r0
	bz9 .BB.LABEL.11_2
	br9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 612
	jarl _Os_Panic, r31
.BB.LABEL.11_6:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 614
	dispose 0x00000000, 0x00000201, [r31]
_Os_CheckAppMode.1:
	.stack _Os_CheckAppMode.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 624
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 628
	jarl32 _Os_GetCoreIdLocal.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 631
	cmp 0x00000000, r10
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 633
	br9 .BB.LABEL.12_1
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 640
	add r10, r10
	mov #_Os_CoreCB, r5
	add r10, r5
	st.h r25, 0x0000000A[r5]
	mov 0x00000000, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 641
	mov r25, r6
	jarl _Os_SynPoint, r31
	mov r25, r5
.BB.LABEL.12_3:	; bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 646
	andi 0x0000FFFF, r5, r0
	bnz9 .BB.LABEL.12_10
.BB.LABEL.12_4:	; bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 649
	andi 0x0000FFFF, r5, r6
	add r6, r6
	mov #_Os_CoreCB, r7
	add r6, r7
	ld.hu 0x0000000A[r7], r6
	add 0x0000000A, r7
	cmp 0x00000000, r6
	bz9 .BB.LABEL.12_7
.BB.LABEL.12_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 652
	andi 0x0000FFFF, r25, r0
	bnz9 .BB.LABEL.12_8
.BB.LABEL.12_6:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 654
	ld.hu 0x00000000[r7], r25
.BB.LABEL.12_7:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 0
	add 0x00000001, r5
	br9 .BB.LABEL.12_3
.BB.LABEL.12_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 659
	andi 0x0000FFFF, r25, r6
	ld.hu 0x00000000[r7], r7
	cmp r7, r6
	bz9 .BB.LABEL.12_7
.BB.LABEL.12_9:	; bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 662
	br9 .BB.LABEL.12_9
.BB.LABEL.12_10:	; bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 673
	andi 0x0000FFFF, r25, r0
	bz9 .BB.LABEL.12_12
.BB.LABEL.12_11:	; bb62.bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.12_14
.BB.LABEL.12_12:	; bb70
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 675
	br9 .BB.LABEL.12_12
.BB.LABEL.12_13:	; bb73
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 684
	andi 0x0000FFFF, r5, r6
	add r6, r6
	mov #_Os_CoreCB, r7
	add r6, r7
	st.h r25, 0x0000000A[r7]
	add 0x00000001, r5
.BB.LABEL.12_14:	; bb81
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 682
	andi 0x0000FFFF, r5, r0
	bz9 .BB.LABEL.12_13
.BB.LABEL.12_15:	; if_break_bb88
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 689
	andi 0x0000FFFF, r25, r10
	dispose 0x00000000, 0x00000201, [r31]
_Os_DeInitCoreInfo:
	.stack _Os_DeInitCoreInfo = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 712
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 715
	jarl32 _Os_GetCoreIdLocal.1, r31
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 722
	shl r10, r5
	not r5, r5
	mov #_Os_CoreCB, r6
	ld.h 0x00000000[r6], r7
	and r5, r7
	st.h r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 724
	mov r10, r5
	add r5, r5
	add r6, r5
	st.h r0, 0x0000000A[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 725
	shl 0x00000002, r10
	add r10, r6
	mov 0x00000002, r5
	st.w r5, 0x0000000C[r6]
	dispose 0x00000000, 0x00000001, [r31]
_Os_Panic:
	.stack _Os_Panic = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 738
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 740
	stsr 0x00000005, r5, 0x00000000
	ori 0x000000A0, r5, r5
	ldsr r5, 5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 741
	jarl32 _Os_PanicHandler, r31
.BB.LABEL.14_1:	; bb2
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Kernel.c", 743
	br9 .BB.LABEL.14_1
