#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Interrupt.c -oDefaultBuild\Os_Interrupt.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_13f915aedff34be1b8c73684982e3ee55m4gn5wp.fmr
#@	compiled at Thu Jul 16 13:41:32 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Interrupt.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Os_SCB_FA_Inf
	.extern _Os_TaskStack
	.extern _Os_CfgIsrMax_Inf
	.extern _Os_CfgIsr2Max_Inf
	.extern _Os_IsrIdRange
	.extern _Os_ISR2Stack
	.extern _Os_IsrCfg
	.extern _Os_CfgIsr2ExcludeTplMax_Inf
	.extern _Os_ICB
	.extern _Os_CfgStdResourceMax_Inf
	.extern _Os_ICBisrC2ResourceStack
	.public _Os_InitInterrupt
	.extern _Os_FillStack
	.extern _Os_Hal_SuspendInt
	.public _DisableAllInterrupts
	.public _EnableAllInterrupts
	.public _ResumeAllInterrupts
	.public _SuspendAllInterrupts
	.public _ResumeOSInterrupts
	.public _SuspendOSInterrupts
	.public _EnableInterruptSource
	.extern _Os_Hal_GetIsrSourceState
	.extern _Os_Hal_ClearPendingInterrupt
	.extern _Os_Hal_EnableInterruptSource
	.public _DisableInterruptSource
	.extern _Os_Hal_DisableInterruptSource
	.public _Os_DisableIntSourceInApp
	.public _Os_ResumeIntSourceInApp
	.public _ClearPendingInterrupt
	.public _Os_EnableAllInterrupts
	.public _Os_ResumeAllInterrupts
	.public _Os_SuspendAllInterrupts
	.public _Os_ResumeOSInterrupts
	.public _Os_SuspendOSInterrupts
	.extern _Os_Hal_RestoreInt
	.extern _Os_Hal_SetIpl
	.extern _Os_Hal_GetIpl
	.public _GetISRID
	.extern _Os_StackMonitor
	.extern _Os_SwitchTask
	.public _Os_EnterISR2
	.public _Os_ExitISR2
	.public _Os_EnterISR1
	.public _Os_ExitISR1
	.public _Os_PrioToIpl
	.public _Os_IplToPrio

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
_Os_InitInterrupt:
	.stack _Os_InitInterrupt = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 154
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 157
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 158
	mov r25, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 160
	st.b r0, 0x00000054[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 161
	st.b r0, 0x00000055[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 162
	st.h r0, 0x00000030[r10]
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 163
	st.w r5, 0x00000058[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 165
	st.w r0, 0x00000018[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 166
	st.w r0, 0x0000001C[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 168
	st.b r0, 0x0000005C[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 169
	st.b r0, 0x00000064[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 170
	add r25, r25
	mov #_Os_CfgIsrMax_Inf, r5
	add r25, r5
	ld.h 0x00000000[r5], r5
	st.h r5, 0x00000032[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 171
	mov #_Os_CfgIsr2Max_Inf, r5
	add r5, r25
	ld.h 0x00000000[r25], r5
	st.h r5, 0x00000034[r10]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 174
	mov r10, r6
	jarl _Os_ICBInit.1, r31
	dispose 0x00000000, 0x00000201, [r31]
_Os_ICBInit.1:
	.stack _Os_ICBInit.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 185
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 191
	ld.hu 0x00000026[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 196
	mov r5, r6
	add r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 192
	mul 0x00000018, r5, r0
	mov #_Os_IsrIdRange, r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 196
	mov #_Os_CfgStdResourceMax_Inf, r5
	add r6, r5
	ld.hu 0x00000000[r5], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 193
	ld.w 0x00000014[r7], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 192
	ld.w 0x00000010[r7], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 196
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov r26, r5
	br9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 200
	andi 0x0000FFFF, r5, r6
	shl 0x00000002, r6
	mov #_Os_ICB, r7
	add r6, r7
	ld.w 0x00000000[r7], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 201
	st.w r0, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 202
	mov #_Os_ICBisrC2ResourceStack, r8
	add r8, r6
	st.w r6, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.5_3:	; bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 198
	andi 0x0000FFFF, r5, r6
	andi 0x0000FFFF, r25, r7
	cmp r7, r6
	bl9 .BB.LABEL.5_2
	br9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 231
	andi 0x0000FFFF, r26, r5
	shl 0x00000003, r5
	mov #_Os_ISR2Stack, r6
	add r5, r6
	jarl32 _Os_FillStack, r31
	add 0x00000001, r26
.BB.LABEL.5_5:	; bb64
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 207
	andi 0x0000FFFF, r26, r5
	andi 0x0000FFFF, r25, r6
	cmp r6, r5
	bl9 .BB.LABEL.5_4
.BB.LABEL.5_6:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 234
	dispose 0x00000000, 0x00000301, [r31]
_Os_DisableAllInterrupts.1:
	.stack _Os_DisableAllInterrupts.1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 244
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 283
	jarl32 _Os_Hal_SuspendInt, r31
	st.w r10, 0x00000018[r25]
	dispose 0x00000000, 0x00000201, [r31]
_DisableAllInterrupts:
	.stack _DisableAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 301
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 310
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_DisableAllInterrupts.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_EnableAllInterrupts:
	.stack _EnableAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 325
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 334
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_EnableAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_ResumeAllInterrupts:
	.stack _ResumeAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 349
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 358
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_ResumeAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_SuspendAllInterrupts:
	.stack _SuspendAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 373
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 382
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_SuspendAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_ResumeOSInterrupts:
	.stack _ResumeOSInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 397
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 406
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_ResumeOSInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_SuspendOSInterrupts:
	.stack _SuspendOSInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 421
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 430
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_SuspendOSInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_EnableInterruptSource:
	.stack _EnableInterruptSource = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 447
	prepare 0x00000387, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 455
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 457
	mov r27, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 466
	mov r25, r5
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 470
	mov r27, r5
	mul 0x00000018, r5, r0
	mov #_Os_IsrIdRange, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 473
	cmp r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 467
	ld.w 0x00000004[r6], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 466
	ld.w 0x00000000[r6], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 473
	bge9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 471
	mul 0x00000018, r27, r0
	mov #_Os_IsrIdRange, r5
	add r27, r5
	ld.w 0x00000004[r5], r5
	cmp r5, r25
	blt9 .BB.LABEL.13_4
.BB.LABEL.13_2:	; bb.if_break_bb75_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000003, r10
.BB.LABEL.13_3:	; if_break_bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 526
	zxb r10
	dispose 0x00000000, 0x00000387, [r31]
.BB.LABEL.13_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 477
	mul 0x00000014, r25, r0
	mov #_Os_IsrCfg, r5
	add r25, r5
	ld.w 0x0000000C[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_5:	; if_else_bb54
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 482
	mov r29, r6
	mov r28, r7
	jarl32 _Os_Hal_GetIsrSourceState, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.13_7
.BB.LABEL.13_6:	; if_else_bb54.if_break_bb75_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000005, r10
	br9 .BB.LABEL.13_3
.BB.LABEL.13_7:	; if_else_bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 500
	cmp 0x00000001, r26
	bnz9 .BB.LABEL.13_9
.BB.LABEL.13_8:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 502
	mov r29, r6
	mov r28, r7
	jarl32 _Os_Hal_ClearPendingInterrupt, r31
.BB.LABEL.13_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 504
	mov r29, r6
	mov r28, r7
	jarl32 _Os_Hal_EnableInterruptSource, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000387, [r31]
_DisableInterruptSource:
	.stack _DisableInterruptSource = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 537
	prepare 0x00000385, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 547
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 549
	mov r26, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 556
	mov r25, r5
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 560
	mov r26, r5
	mul 0x00000018, r5, r0
	mov #_Os_IsrIdRange, r7
	add r5, r7
	ld.w 0x00000000[r7], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 563
	cmp r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 557
	ld.w 0x00000004[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 556
	ld.w 0x00000000[r6], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 563
	bge9 .BB.LABEL.14_4
.BB.LABEL.14_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 561
	mul 0x00000018, r26, r0
	mov #_Os_IsrIdRange, r5
	add r26, r5
	ld.w 0x00000004[r5], r5
	cmp r5, r25
	blt9 .BB.LABEL.14_4
.BB.LABEL.14_2:	; bb.if_break_bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000003, r10
.BB.LABEL.14_3:	; if_break_bb65
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 612
	zxb r10
	dispose 0x00000000, 0x00000385, [r31]
.BB.LABEL.14_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 567
	mul 0x00000014, r25, r0
	mov #_Os_IsrCfg, r5
	add r25, r5
	ld.w 0x0000000C[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_5:	; if_else_bb53
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 572
	mov r28, r6
	mov r27, r7
	jarl32 _Os_Hal_GetIsrSourceState, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; if_else_bb53.if_break_bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000005, r10
	br9 .BB.LABEL.14_3
.BB.LABEL.14_7:	; if_else_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 590
	mov r28, r6
	mov r27, r7
	jarl32 _Os_Hal_DisableInterruptSource, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000385, [r31]
_Os_DisableIntSourceInApp:
	.stack _Os_DisableIntSourceInApp = 28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 621
	prepare 0x00000B87, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 625
	ld.w 0x0000000C[r6], r5
	ld.w 0x00000004[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 627
	ld.hu 0x00000018[r6], r26
	mov 0x00000000, r27
	mov r7, r28
	br9 .BB.LABEL.15_5
.BB.LABEL.15_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 630
	andi 0x0000FFFF, r27, r29
	mov r29, r5
	shl 0x00000002, r5
	add r25, r5
	ld.w 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 632
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 633
	ld.w 0x00000004[r6], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 632
	ld.w 0x00000000[r6], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 635
	mov r30, r6
	jarl32 _Os_Hal_GetIsrSourceState, r31
	add r28, r29
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 637
	st.b r0, 0x00000000[r29]
	br9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 641
	st.b r5, 0x00000000[r29]
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 644
	mov r30, r6
	jarl32 _Os_Hal_DisableInterruptSource, r31
.BB.LABEL.15_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	add 0x00000001, r27
.BB.LABEL.15_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 627
	andi 0x0000FFFF, r27, r5
	cmp r26, r5
	bl9 .BB.LABEL.15_1
.BB.LABEL.15_6:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 649
	dispose 0x00000000, 0x00000B87, [r31]
_Os_ResumeIntSourceInApp:
	.stack _Os_ResumeIntSourceInApp = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 658
	prepare 0x00000385, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 662
	ld.w 0x0000000C[r6], r5
	ld.w 0x00000004[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 664
	ld.hu 0x00000018[r6], r26
	mov 0x00000000, r27
	mov r7, r28
	br9 .BB.LABEL.16_4
.BB.LABEL.16_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 666
	andi 0x0000FFFF, r27, r5
	add r28, r5
	ld.bu 0x00000000[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 669
	andi 0x0000FFFF, r27, r5
	shl 0x00000002, r5
	add r25, r5
	ld.w 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 671
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r6
	add r5, r6
	ld.w 0x00000000[r6], r6
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 675
	jarl32 _Os_Hal_EnableInterruptSource, r31
.BB.LABEL.16_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	add 0x00000001, r27
.BB.LABEL.16_4:	; bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 664
	andi 0x0000FFFF, r27, r5
	cmp r26, r5
	bl9 .BB.LABEL.16_1
.BB.LABEL.16_5:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 680
	dispose 0x00000000, 0x00000385, [r31]
_ClearPendingInterrupt:
	.stack _ClearPendingInterrupt = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 691
	prepare 0x00000301, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 701
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 703
	mov r26, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 714
	mov r26, r5
	mul 0x00000018, r5, r0
	mov #_Os_IsrIdRange, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 717
	cmp r5, r25
	bge9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 715
	mul 0x00000018, r26, r0
	mov #_Os_IsrIdRange, r5
	add r26, r5
	ld.w 0x00000004[r5], r5
	cmp r5, r25
	bge9 .BB.LABEL.17_4
.BB.LABEL.17_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 721
	mov r25, r5
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r6
	add r5, r6
	ld.w 0x0000000C[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 739
	mul 0x00000014, r25, r0
	mov #_Os_IsrCfg, r5
	add r25, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 740
	ld.w 0x00000004[r5], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 739
	ld.w 0x00000000[r5], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 741
	jarl32 _Os_Hal_ClearPendingInterrupt, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.17_4:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 763
	dispose 0x00000000, 0x00000301, [r31]
_Os_EnableAllInterrupts:
	.stack _Os_EnableAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 900
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 930
	ld.w 0x00000018[r6], r6
	jarl32 _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_ResumeAllInterrupts:
	.stack _Os_ResumeAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 948
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 962
	ld.b 0x00000054[r6], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000054[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 963
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 997
	ld.w 0x0000001C[r6], r6
	jarl32 _Os_Hal_RestoreInt, r31
.BB.LABEL.19_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1007
	dispose 0x00000000, 0x00000001, [r31]
_Os_SuspendAllInterrupts:
	.stack _Os_SuspendAllInterrupts = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1016
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1041
	ld.bu 0x00000054[r6], r5
	cmp 0x00000000, r5
	mov r6, r25
	bnz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1072
	jarl32 _Os_Hal_SuspendInt, r31
	st.w r10, 0x0000001C[r25]
.BB.LABEL.20_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1075
	ld.b 0x00000054[r25], r5
	add 0x00000001, r5
	st.b r5, 0x00000054[r25]
	dispose 0x00000000, 0x00000201, [r31]
_Os_ResumeOSInterrupts:
	.stack _Os_ResumeOSInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1091
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1104
	ld.b 0x00000055[r6], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000055[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1105
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1130
	ld.hu 0x00000030[r6], r6
	mov 0x00000000, r7
	jarl32 _Os_Hal_SetIpl, r31
.BB.LABEL.21_2:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1139
	dispose 0x00000000, 0x00000001, [r31]
_Os_SuspendOSInterrupts:
	.stack _Os_SuspendOSInterrupts = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1149
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1174
	ld.bu 0x00000055[r6], r5
	cmp 0x00000000, r5
	mov r6, r25
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1191
	jarl32 _Os_Hal_SuspendInt, r31
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1192
	jarl32 _Os_Hal_GetIpl, r31
	st.h r10, 0x00000030[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1199
	ld.hu 0x00000026[r25], r5
	add r5, r5
	mov #_Os_CfgIsr2ExcludeTplMax_Inf, r6
	add r5, r6
	ld.hu 0x00000000[r6], r6
	mov 0x00000001, r7
	jarl32 _Os_Hal_SetIpl, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1200
	mov r26, r6
	jarl32 _Os_Hal_RestoreInt, r31
.BB.LABEL.22_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1209
	ld.b 0x00000055[r25], r5
	add 0x00000001, r5
	st.b r5, 0x00000055[r25]
	dispose 0x00000000, 0x00000301, [r31]
_GetISRID:
	.stack _GetISRID = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1220
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1230
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1252
	ld.w 0x00000050[r10], r5
	cmp 0x00000008, r5
	bnz9 .BB.LABEL.23_3
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1254
	ld.w 0x00000048[r10], r10
	mov r10, r5
	mul 0x00000014, r5, r0
	mov #_Os_IsrCfg, r6
	add r5, r6
	ld.w 0x0000000C[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.23_3
.BB.LABEL.23_2:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1256
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_3:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1269
	dispose 0x00000000, 0x00000001, [r31]
_Os_EnterISR1StackMonitor.1:
	.stack _Os_EnterISR1StackMonitor.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1279
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1283
	ld.bu 0x0000005C[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.24_4
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1285
	ld.bu 0x00000064[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.24_3
.BB.LABEL.24_2:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1288
	ld.w 0x0000003C[r6], r5
	shl 0x00000003, r5
	mov #_Os_TaskStack, r6
	add r5, r6
	br9 .BB.LABEL.24_5
.BB.LABEL.24_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1293
	shl 0x00000002, r5
	ld.w 0x0000000C[r6], r6
	add r6, r5
	ld.w 0xFFFFFFFC[r5], r5
	shl 0x00000003, r5
	mov #_Os_ISR2Stack, r6
	add r5, r6
	br9 .BB.LABEL.24_5
.BB.LABEL.24_4:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1299
	ld.w 0x00000008[r6], r6
.BB.LABEL.24_5:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1302
	jarl32 _Os_StackMonitor, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_EnterISR2StackMonitor.1:
	.stack _Os_EnterISR2StackMonitor.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1312
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1316
	ld.bu 0x00000064[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1319
	ld.w 0x0000003C[r6], r5
	mov #_Os_TaskStack, r6
	br9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1324
	shl 0x00000002, r5
	ld.w 0x0000000C[r6], r6
	add r6, r5
	ld.w 0xFFFFFFFC[r5], r5
	mov #_Os_ISR2Stack, r6
.BB.LABEL.25_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	shl 0x00000003, r5
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1327
	jarl32 _Os_StackMonitor, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_ExitISR2SwitchTask.1:
	.stack _Os_ExitISR2SwitchTask.1 = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1338
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1341
	ld.bu 0x0000004D[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.26_3
.BB.LABEL.26_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	ld.w 0x00000038[r6], r5
	ld.w 0x0000003C[r6], r7
	cmp r7, r5
	bz9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; if_then_bb
	mov 0x0000000A, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1346
	st.w r5, 0x00000050[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1347
	ld.hu 0x00000026[r6], r6
	jarl32 _Os_SwitchTask, r31
.BB.LABEL.26_3:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1366
	dispose 0x00000000, 0x00000001, [r31]
_Os_EnterISR2:
	.stack _Os_EnterISR2 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1420
	prepare 0x00000301, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1438
	mov #_Os_SCB_FA_Inf, r26
	mov r26, r6
	jarl _Os_EnterISR2StackMonitor.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1442
	ld.bu 0x00000064[r26], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1444
	mov #_Os_SCB_FA_Inf, r5
	ld.w 0x00000050[r5], r6
	st.w r6, 0x00000058[r5]
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1445
	st.w r6, 0x00000050[r5]
.BB.LABEL.27_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1466
	mov #_Os_SCB_FA_Inf, r5
	ld.bu 0x00000064[r5], r6
	add 0x00000001, r6
	st.b r6, 0x00000064[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1467
	ld.b 0x0000004D[r5], r7
	add 0x00000001, r7
	st.b r7, 0x0000004D[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1470
	andi 0x0000FFFF, r25, r5
	cmp 0x00000004, r5
	bh9 .BB.LABEL.27_4
.BB.LABEL.27_3:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1472
	mov #_Os_SCB_FA_Inf, r5
	ld.w 0x0000000C[r5], r7
	zxb r6
	shl 0x00000002, r6
	add r7, r6
	st.w r25, 0xFFFFFFFC[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1473
	st.w r25, 0x00000048[r5]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1474
	st.b r6, 0x0000004C[r5]
.BB.LABEL.27_4:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1496
	dispose 0x00000000, 0x00000301, [r31]
_Os_ExitISR2:
	.stack _Os_ExitISR2 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1506
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1516
	mov #_Os_SCB_FA_Inf, r25
	ld.w 0x0000000C[r25], r5
	ld.bu 0x00000064[r25], r6
	shl 0x00000002, r6
	add r5, r6
	ld.w 0xFFFFFFFC[r6], r5
	shl 0x00000003, r5
	mov #_Os_ISR2Stack, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1517
	jarl32 _Os_StackMonitor, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1520
	ld.b 0x00000064[r25], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x00000064[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1521
	ld.b 0x0000004D[r25], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x0000004D[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1529
	ld.bu 0x00000064[r25], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1532
	mov #_Os_SCB_FA_Inf, r25
	st.b r0, 0x0000004C[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1546
	mov r25, r6
	jarl _Os_ExitISR2SwitchTask.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1548
	ld.w 0x00000058[r25], r5
	st.w r5, 0x00000050[r25]
	br9 .BB.LABEL.28_3
.BB.LABEL.28_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1553
	mov #_Os_SCB_FA_Inf, r6
	ld.w 0x0000000C[r6], r7
	shl 0x00000002, r5
	add r7, r5
	ld.w 0xFFFFFFFC[r5], r5
	st.w r5, 0x00000048[r6]
.BB.LABEL.28_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1601
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x00000008), r0, r5
	ld.w LOWW(#_Os_SCB_FA_Inf+0x00000008)[r5], r6
	jarl32 _Os_StackMonitor, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1606
	dispose 0x00000000, 0x00000201, [r31]
_Os_EnterISR1:
	.stack _Os_EnterISR1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1617
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1623
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x0000005C), r0, r5
	ld.bu LOWW(#_Os_SCB_FA_Inf+0x0000005C)[r5], r5
	cmp 0x00000000, r5
	mov r6, r25
	bnz9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1626
	mov #_Os_SCB_FA_Inf, r5
	ld.w 0x00000050[r5], r6
	st.w r6, 0x00000060[r5]
	mov 0x00000009, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1627
	st.w r6, 0x00000050[r5]
.BB.LABEL.29_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1631
	mov #_Os_SCB_FA_Inf, r26
	mov r26, r6
	jarl _Os_EnterISR1StackMonitor.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1638
	ld.bu 0x00000064[r26], r5
	ld.bu 0x0000005C[r26], r6
	add r6, r5
	shl 0x00000002, r5
	ld.w 0x0000000C[r26], r6
	add r5, r6
	st.w r25, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1641
	ld.b 0x0000005C[r26], r5
	add 0x00000001, r5
	st.b r5, 0x0000005C[r26]
	dispose 0x00000000, 0x00000301, [r31]
_Os_ExitISR1:
	.stack _Os_ExitISR1 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1653
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1660
	mov #_Os_SCB_FA_Inf, r25
	ld.w 0x00000008[r25], r6
	jarl32 _Os_StackMonitor, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1664
	ld.b 0x0000005C[r25], r5
	add 0xFFFFFFFF, r5
	st.b r5, 0x0000005C[r25]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1665
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.30_2
.BB.LABEL.30_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1668
	mov #_Os_SCB_FA_Inf, r5
	ld.w 0x00000060[r5], r6
	st.w r6, 0x00000050[r5]
.BB.LABEL.30_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1676
	dispose 0x00000000, 0x00000201, [r31]
_Os_PrioToIpl:
	.stack _Os_PrioToIpl = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1686
	ld.hu 0x00000028[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1690
	addi 0xFFFFFFFF, r5, r6
	cmp r6, r7
	bl9 .BB.LABEL.31_2
.BB.LABEL.31_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1696
	sub r5, r7
	add 0x00000001, r7
	andi 0x0000FFFF, r7, r10
	jmp [r31]
.BB.LABEL.31_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1700
	jmp [r31]
_Os_IplToPrio:
	.stack _Os_IplToPrio = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1710
	ld.h 0x00000028[r6], r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1713
	add r7, r10
	add 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1714
	zxh r10
	jmp [r31]
