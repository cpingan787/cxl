#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Extend\src\Os_Adapt.c -oDefaultBuild\Os_Adapt.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_400a5122b5da4150963ca01ba70391cd3nnvxahl.d04
#@	compiled at Thu Jul 16 13:41:38 2026

	.file "..\..\Bsw\SystemServices\Os\Extend\src\Os_Adapt.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Os_IsrIdRange
	.extern _Os_IsrCfg
	.extern _Os_CfgIsr2ExcludeTplMax_Inf
	.extern _Os_SCB_FA_Inf
	.extern _Os_ObjectIDMaxTable
	.public _Os_GetDetailedError
	.public _Os_GetTaskStackUsage
	.extern _OSGetStackUsage
	.public _Os_DisableGlobalKM
	.extern _Os_Hal_SuspendInt
	.public _Os_EnableGlobalKM
	.extern _Os_Hal_RestoreInt
	.public _Os_DisableLevelKM
	.extern _Os_Hal_GetIpl
	.extern _Os_Hal_SetIpl
	.public _Os_EnableLevelKM
	.public _Os_InitialEnableInterruptSources
	.extern _Os_Hal_ClearPendingInterrupt
	.extern _Os_Hal_EnableInterruptSource
	.public _Os_IsInterruptSourceEnabled
	.extern _Os_Hal_GetIsrSourceState
	.public _Os_UnhandledIrq
	.extern _Os_Hal_GetCurrentIrq
	.public _Os_GetUnhandledIrq
	.public _Os_UnhandledExc
	.extern _Os_Hal_GetCurrentExc
	.public _Os_GetUnhandledExc

	.section .text, text
_Os_GetCoreIdLocal.1:
	.stack _Os_GetCoreIdLocal.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 89
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x00000026), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 91
	ld.hu LOWW(#_Os_SCB_FA_Inf+0x00000026)[r5], r10
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
_Os_GetDetailedError:
	.stack _Os_GetDetailedError = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 60
	mov 0x00000009, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 90
	jmp [r31]
_Os_GetTaskStackUsage:
	.stack _Os_GetTaskStackUsage = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 101
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 111
	andi 0x0000FFFF, r6, r7
	mov 0x00000001, r6
	jarl32 _OSGetStackUsage, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 118
	dispose 0x00000000, 0x00000001, [r31]
_Os_DisableGlobalKM:
	.stack _Os_DisableGlobalKM = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 130
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 138
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 158
	ld.hu 0x00000026[r10], r25
	jarl32 _Os_Hal_SuspendInt, r31
	shl 0x00000002, r25
	mov #_Os_GlobalKMInt.1, r5
	add r25, r5
	st.w r10, 0x00000000[r5]
	dispose 0x00000000, 0x00000201, [r31]
_Os_EnableGlobalKM:
	.stack _Os_EnableGlobalKM = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 175
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 183
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 202
	ld.hu 0x00000026[r10], r5
	shl 0x00000002, r5
	mov #_Os_GlobalKMInt.1, r6
	add r5, r6
	ld.w 0x00000000[r6], r6
	jarl32 _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_DisableLevelKM:
	.stack _Os_DisableLevelKM = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 219
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 228
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 247
	jarl32 _Os_Hal_SuspendInt, r31
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 248
	jarl32 _Os_Hal_GetIpl, r31
	st.h r10, 0x00000030[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 249
	ld.hu 0x00000026[r25], r5
	add r5, r5
	mov #_Os_CfgIsr2ExcludeTplMax_Inf, r6
	add r5, r6
	ld.hu 0x00000000[r6], r6
	mov 0x00000001, r7
	jarl32 _Os_Hal_SetIpl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 250
	mov r26, r6
	jarl32 _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000301, [r31]
_Os_EnableLevelKM:
	.stack _Os_EnableLevelKM = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 266
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 274
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 293
	ld.hu 0x00000030[r10], r6
	mov 0x00000000, r7
	jarl32 _Os_Hal_SetIpl, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_InitialEnableInterruptSources:
	.stack _Os_InitialEnableInterruptSources = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 308
	prepare 0x00000385, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 332
	jarl _Os_GetCoreIdLocal.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 333
	mul 0x00000018, r10, r0
	mov #_Os_IsrIdRange, r5
	add r10, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 334
	ld.w 0x00000004[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 333
	ld.w 0x00000000[r5], r27
	br9 .BB.LABEL.10_4
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 338
	mov r27, r5
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r6
	add r5, r6
	ld.w 0x00000000[r6], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 339
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 341
	mov r27, r5
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r6
	add r5, r6
	ld.w 0x00000004[r6], r7
	mov r28, r6
	jarl32 _Os_Hal_ClearPendingInterrupt, r31
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 343
	mov r28, r6
	jarl32 _Os_Hal_EnableInterruptSource, r31
	add 0x00000001, r27
.BB.LABEL.10_4:	; bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 335
	cmp r26, r27
	bl9 .BB.LABEL.10_1
.BB.LABEL.10_5:	; bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 356
	dispose 0x00000000, 0x00000385, [r31]
_Os_IsInterruptSourceEnabled:
	.stack _Os_IsInterruptSourceEnabled = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 366
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 381
	andi 0x0000FFFF, r25, r6
	mov 0x00000001, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_1:	; entry.if_break_bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000003, r10
.BB.LABEL.11_2:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 426
	zxb r10
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.11_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 385
	mov r25, r5
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r6
	add r5, r6
	ld.w 0x0000000C[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_4:	; if_else_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 389
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_else_bb19.if_break_bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x0000000B, r10
	br9 .BB.LABEL.11_2
.BB.LABEL.11_6:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 408
	mul 0x00000014, r25, r0
	mov #_Os_IsrCfg, r5
	add r25, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 409
	ld.w 0x00000004[r5], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 408
	ld.w 0x00000000[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 410
	jarl32 _Os_Hal_GetIsrSourceState, r31
	cmp 0x00000000, r10
	mov 0x00000000, r10
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_7:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 412
	st.b r0, 0x00000000[r26]
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.11_8:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 416
	st.b r5, 0x00000000[r26]
	dispose 0x00000000, 0x00000301, [r31]
_Os_UnhandledIrq:
	.stack _Os_UnhandledIrq = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 436
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 444
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 446
	jarl32 _Os_Hal_GetCurrentIrq, r31
	st.w r10, 0x00000010[r25]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 447
	st.b r5, 0x00000065[r25]
	dispose 0x00000000, 0x00000201, [r31]
_Os_GetUnhandledIrq:
	.stack _Os_GetUnhandledIrq = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 463
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 472
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 474
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x0000000B, r10
	br9 .BB.LABEL.13_4
.BB.LABEL.13_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 487
	ld.bu 0x00000065[r10], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_3:	; if_else_bb.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000007, r10
.BB.LABEL.13_4:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 501
	zxb r10
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.13_5:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 493
	ld.w 0x00000010[r10], r5
	st.w r5, 0x00000000[r25]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000201, [r31]
_Os_UnhandledExc:
	.stack _Os_UnhandledExc = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 511
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 519
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 521
	jarl32 _Os_Hal_GetCurrentExc, r31
	st.w r10, 0x00000014[r25]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 522
	st.b r5, 0x00000066[r25]
	dispose 0x00000000, 0x00000201, [r31]
_Os_GetUnhandledExc:
	.stack _Os_GetUnhandledExc = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 538
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 547
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 549
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; entry.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x0000000B, r10
	br9 .BB.LABEL.15_4
.BB.LABEL.15_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 562
	ld.bu 0x00000066[r10], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.15_5
.BB.LABEL.15_3:	; if_else_bb.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000007, r10
.BB.LABEL.15_4:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 576
	zxb r10
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.15_5:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 568
	ld.w 0x00000014[r10], r5
	st.w r5, 0x00000000[r25]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000201, [r31]
	.section .bss, bss
	.align 4
_Os_GlobalKMInt.1:
	.ds (4)
