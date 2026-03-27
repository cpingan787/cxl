#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Interrupt.c -oDefaultBuild\Os_Interrupt.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_237f5e52f4864290a104bd9cc9d79ba80umfmn2h.bsv
#@	compiled at Fri Mar 27 09:51:04 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Interrupt.c"

	$reg_mode 32
	.dbl_size 8

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
_Os_InitInterrupt:
	.stack _Os_InitInterrupt = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 154
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 157
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 158
	mov r20, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 160
	st.b r0, 0x00000054[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 161
	st.b r0, 0x00000055[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 162
	st.h r0, 0x00000030[r10]
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 163
	st.w r2, 0x00000058[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 165
	st.w r0, 0x00000018[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 166
	st.w r0, 0x0000001C[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 168
	st.b r0, 0x0000005C[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 169
	st.b r0, 0x00000064[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 170
	add r20, r20
	mov #_Os_CfgIsrMax_Inf, r2
	add r20, r2
	ld.h 0x00000000[r2], r2
	st.h r2, 0x00000032[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 171
	mov #_Os_CfgIsr2Max_Inf, r2
	add r2, r20
	ld.h 0x00000000[r20], r2
	st.h r2, 0x00000034[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 174
	mov r10, r6
	jarl _Os_ICBInit.1, r31
	dispose 0x00000000, 0x00000041, [r31]
_Os_ICBInit.1:
	.stack _Os_ICBInit.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 185
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 191
	ld.hu 0x00000026[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 196
	mov r2, r5
	add r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 192
	mul 0x00000018, r2, r0
	mov #_Os_IsrIdRange, r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 196
	mov #_Os_CfgStdResourceMax_Inf, r2
	add r5, r2
	ld.hu 0x00000000[r2], r2
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 193
	ld.w 0x00000014[r6], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 192
	ld.w 0x00000010[r6], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 196
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov r21, r2
	br9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 200
	andi 0x0000FFFF, r2, r5
	shl 0x00000002, r5
	mov #_Os_ICB, r6
	add r5, r6
	ld.w 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 201
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 202
	mov #_Os_ICBisrC2ResourceStack, r7
	add r7, r5
	st.w r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.5_3:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 198
	andi 0x0000FFFF, r2, r5
	andi 0x0000FFFF, r20, r6
	cmp r6, r5
	bl9 .BB.LABEL.5_2
	br9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 231
	andi 0x0000FFFF, r21, r2
	shl 0x00000003, r2
	mov #_Os_ISR2Stack, r6
	add r2, r6
	jarl _Os_FillStack, r31
	add 0x00000001, r21
.BB.LABEL.5_5:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 207
	andi 0x0000FFFF, r21, r2
	andi 0x0000FFFF, r20, r5
	cmp r5, r2
	bl9 .BB.LABEL.5_4
.BB.LABEL.5_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 234
	dispose 0x00000000, 0x00000061, [r31]
_Os_DisableAllInterrupts.1:
	.stack _Os_DisableAllInterrupts.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 244
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 283
	jarl _Os_Hal_SuspendInt, r31
	st.w r10, 0x00000018[r20]
	dispose 0x00000000, 0x00000041, [r31]
_DisableAllInterrupts:
	.stack _DisableAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 301
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 310
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_DisableAllInterrupts.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_EnableAllInterrupts:
	.stack _EnableAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 325
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 334
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_EnableAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_ResumeAllInterrupts:
	.stack _ResumeAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 349
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 358
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_ResumeAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_SuspendAllInterrupts:
	.stack _SuspendAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 373
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 382
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_SuspendAllInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_ResumeOSInterrupts:
	.stack _ResumeOSInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 397
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 406
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_ResumeOSInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_SuspendOSInterrupts:
	.stack _SuspendOSInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 421
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 430
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r6
	jarl _Os_SuspendOSInterrupts, r31
	dispose 0x00000000, 0x00000001, [r31]
_EnableInterruptSource:
	.stack _EnableInterruptSource = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 447
	prepare 0x00000479, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 455
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 457
	mov r22, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 466
	mov r20, r2
	mul 0x00000014, r2, r0
	mov #_Os_IsrCfg, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 470
	mov r22, r2
	mul 0x00000018, r2, r0
	mov #_Os_IsrIdRange, r6
	add r2, r6
	ld.w 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 473
	cmp r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 467
	ld.w 0x00000004[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 466
	ld.w 0x00000000[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 473
	bge9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 471
	mul 0x00000018, r22, r0
	mov #_Os_IsrIdRange, r2
	add r22, r2
	ld.w 0x00000004[r2], r2
	cmp r2, r20
	blt9 .BB.LABEL.13_4
.BB.LABEL.13_2:	; bb.if_break_bb75_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000003, r10
.BB.LABEL.13_3:	; if_break_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 526
	zxb r10
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.13_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 477
	mul 0x00000014, r20, r0
	mov #_Os_IsrCfg, r2
	add r20, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_5:	; if_else_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 482
	mov r24, r6
	mov r23, r7
	jarl _Os_Hal_GetIsrSourceState, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.13_7
.BB.LABEL.13_6:	; if_else_bb54.if_break_bb75_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000005, r10
	br9 .BB.LABEL.13_3
.BB.LABEL.13_7:	; if_else_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 500
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.13_9
.BB.LABEL.13_8:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 502
	mov r24, r6
	mov r23, r7
	jarl _Os_Hal_ClearPendingInterrupt, r31
.BB.LABEL.13_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 504
	mov r24, r6
	mov r23, r7
	jarl _Os_Hal_EnableInterruptSource, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000479, [r31]
_DisableInterruptSource:
	.stack _DisableInterruptSource = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 537
	prepare 0x00000079, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 547
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 549
	mov r21, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 556
	mov r20, r2
	mul 0x00000014, r2, r0
	mov #_Os_IsrCfg, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 560
	mov r21, r2
	mul 0x00000018, r2, r0
	mov #_Os_IsrIdRange, r6
	add r2, r6
	ld.w 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 563
	cmp r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 557
	ld.w 0x00000004[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 556
	ld.w 0x00000000[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 563
	bge9 .BB.LABEL.14_4
.BB.LABEL.14_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 561
	mul 0x00000018, r21, r0
	mov #_Os_IsrIdRange, r2
	add r21, r2
	ld.w 0x00000004[r2], r2
	cmp r2, r20
	blt9 .BB.LABEL.14_4
.BB.LABEL.14_2:	; bb.if_break_bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000003, r10
.BB.LABEL.14_3:	; if_break_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 612
	zxb r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.14_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 567
	mul 0x00000014, r20, r0
	mov #_Os_IsrCfg, r2
	add r20, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_5:	; if_else_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 572
	mov r23, r6
	mov r22, r7
	jarl _Os_Hal_GetIsrSourceState, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; if_else_bb53.if_break_bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000005, r10
	br9 .BB.LABEL.14_3
.BB.LABEL.14_7:	; if_else_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 590
	mov r23, r6
	mov r22, r7
	jarl _Os_Hal_DisableInterruptSource, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000079, [r31]
_Os_DisableIntSourceInApp:
	.stack _Os_DisableIntSourceInApp = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 621
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 625
	ld.w 0x0000000C[r6], r2
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 627
	ld.hu 0x00000018[r6], r21
	mov 0x00000000, r22
	mov r7, r23
	br9 .BB.LABEL.15_5
.BB.LABEL.15_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 630
	andi 0x0000FFFF, r22, r24
	mov r24, r2
	shl 0x00000002, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 632
	mul 0x00000014, r2, r0
	mov #_Os_IsrCfg, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 633
	ld.w 0x00000004[r5], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 632
	ld.w 0x00000000[r5], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 635
	mov r25, r6
	jarl _Os_Hal_GetIsrSourceState, r31
	add r23, r24
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 637
	st.b r0, 0x00000000[r24]
	br9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 641
	st.b r2, 0x00000000[r24]
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 644
	mov r25, r6
	jarl _Os_Hal_DisableInterruptSource, r31
.BB.LABEL.15_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	add 0x00000001, r22
.BB.LABEL.15_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 627
	andi 0x0000FFFF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.15_1
.BB.LABEL.15_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 649
	dispose 0x00000000, 0x00000679, [r31]
_Os_ResumeIntSourceInApp:
	.stack _Os_ResumeIntSourceInApp = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 658
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 662
	ld.w 0x0000000C[r6], r2
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 664
	ld.hu 0x00000018[r6], r21
	mov 0x00000000, r22
	mov r7, r23
	br9 .BB.LABEL.16_4
.BB.LABEL.16_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 666
	andi 0x0000FFFF, r22, r2
	add r23, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 669
	andi 0x0000FFFF, r22, r2
	shl 0x00000002, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 671
	mul 0x00000014, r2, r0
	mov #_Os_IsrCfg, r5
	add r2, r5
	ld.w 0x00000000[r5], r6
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 675
	jarl _Os_Hal_EnableInterruptSource, r31
.BB.LABEL.16_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	add 0x00000001, r22
.BB.LABEL.16_4:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 664
	andi 0x0000FFFF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.16_1
.BB.LABEL.16_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 680
	dispose 0x00000000, 0x00000079, [r31]
_ClearPendingInterrupt:
	.stack _ClearPendingInterrupt = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 691
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 701
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 703
	mov r21, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 714
	mov r21, r2
	mul 0x00000018, r2, r0
	mov #_Os_IsrIdRange, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 717
	cmp r2, r20
	bge9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 715
	mul 0x00000018, r21, r0
	mov #_Os_IsrIdRange, r2
	add r21, r2
	ld.w 0x00000004[r2], r2
	cmp r2, r20
	bge9 .BB.LABEL.17_4
.BB.LABEL.17_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 721
	mov r20, r2
	mul 0x00000014, r2, r0
	mov #_Os_IsrCfg, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 739
	mul 0x00000014, r20, r0
	mov #_Os_IsrCfg, r2
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 740
	ld.w 0x00000004[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 739
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 741
	jarl _Os_Hal_ClearPendingInterrupt, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.17_4:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 763
	dispose 0x00000000, 0x00000061, [r31]
_Os_EnableAllInterrupts:
	.stack _Os_EnableAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 900
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 930
	ld.w 0x00000018[r6], r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_ResumeAllInterrupts:
	.stack _Os_ResumeAllInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 948
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 962
	ld.b 0x00000054[r6], r2
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000054[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 963
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 997
	ld.w 0x0000001C[r6], r6
	jarl _Os_Hal_RestoreInt, r31
.BB.LABEL.19_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1007
	dispose 0x00000000, 0x00000001, [r31]
_Os_SuspendAllInterrupts:
	.stack _Os_SuspendAllInterrupts = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1016
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1041
	ld.bu 0x00000054[r6], r2
	cmp 0x00000000, r2
	mov r6, r20
	bnz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1072
	jarl _Os_Hal_SuspendInt, r31
	st.w r10, 0x0000001C[r20]
.BB.LABEL.20_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1075
	ld.b 0x00000054[r20], r2
	add 0x00000001, r2
	st.b r2, 0x00000054[r20]
	dispose 0x00000000, 0x00000041, [r31]
_Os_ResumeOSInterrupts:
	.stack _Os_ResumeOSInterrupts = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1091
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1104
	ld.b 0x00000055[r6], r2
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000055[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1105
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1130
	ld.hu 0x00000030[r6], r6
	mov 0x00000000, r7
	jarl _Os_Hal_SetIpl, r31
.BB.LABEL.21_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1139
	dispose 0x00000000, 0x00000001, [r31]
_Os_SuspendOSInterrupts:
	.stack _Os_SuspendOSInterrupts = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1149
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1174
	ld.bu 0x00000055[r6], r2
	cmp 0x00000000, r2
	mov r6, r20
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1191
	jarl _Os_Hal_SuspendInt, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1192
	jarl _Os_Hal_GetIpl, r31
	st.h r10, 0x00000030[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1199
	ld.hu 0x00000026[r20], r2
	add r2, r2
	mov #_Os_CfgIsr2ExcludeTplMax_Inf, r5
	add r2, r5
	ld.hu 0x00000000[r5], r6
	mov 0x00000001, r7
	jarl _Os_Hal_SetIpl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1200
	mov r21, r6
	jarl _Os_Hal_RestoreInt, r31
.BB.LABEL.22_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1209
	ld.b 0x00000055[r20], r2
	add 0x00000001, r2
	st.b r2, 0x00000055[r20]
	dispose 0x00000000, 0x00000061, [r31]
_GetISRID:
	.stack _GetISRID = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1220
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1230
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1252
	ld.w 0x00000050[r10], r2
	cmp 0x00000008, r2
	bnz9 .BB.LABEL.23_3
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1254
	ld.w 0x00000048[r10], r10
	mov r10, r2
	mul 0x00000014, r2, r0
	mov #_Os_IsrCfg, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.23_3
.BB.LABEL.23_2:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1256
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.23_3:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	movea 0x0000001C, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1269
	dispose 0x00000000, 0x00000001, [r31]
_Os_EnterISR1StackMonitor.1:
	.stack _Os_EnterISR1StackMonitor.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1279
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1283
	ld.bu 0x0000005C[r6], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.24_4
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1285
	ld.bu 0x00000064[r6], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.24_3
.BB.LABEL.24_2:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1288
	ld.w 0x0000003C[r6], r2
	shl 0x00000003, r2
	mov #_Os_TaskStack, r6
	add r2, r6
	br9 .BB.LABEL.24_5
.BB.LABEL.24_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1293
	shl 0x00000002, r2
	ld.w 0x0000000C[r6], r5
	add r5, r2
	ld.w 0xFFFFFFFC[r2], r2
	shl 0x00000003, r2
	mov #_Os_ISR2Stack, r6
	add r2, r6
	br9 .BB.LABEL.24_5
.BB.LABEL.24_4:	; if_else_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1299
	ld.w 0x00000008[r6], r6
.BB.LABEL.24_5:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1302
	jarl _Os_StackMonitor, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_EnterISR2StackMonitor.1:
	.stack _Os_EnterISR2StackMonitor.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1312
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1316
	ld.bu 0x00000064[r6], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1319
	ld.w 0x0000003C[r6], r2
	mov #_Os_TaskStack, r6
	br9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1324
	shl 0x00000002, r2
	ld.w 0x0000000C[r6], r5
	add r5, r2
	ld.w 0xFFFFFFFC[r2], r2
	mov #_Os_ISR2Stack, r6
.BB.LABEL.25_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	shl 0x00000003, r2
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1327
	jarl _Os_StackMonitor, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_ExitISR2SwitchTask.1:
	.stack _Os_ExitISR2SwitchTask.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1338
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1341
	ld.bu 0x0000004D[r6], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.26_3
.BB.LABEL.26_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	ld.w 0x00000038[r6], r2
	ld.w 0x0000003C[r6], r5
	cmp r5, r2
	bz9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; if_then_bb
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1346
	st.w r2, 0x00000050[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1347
	ld.hu 0x00000026[r6], r6
	jarl _Os_SwitchTask, r31
.BB.LABEL.26_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1366
	dispose 0x00000000, 0x00000001, [r31]
_Os_EnterISR2:
	.stack _Os_EnterISR2 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1420
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1438
	mov #_Os_SCB_FA_Inf, r21
	mov r21, r6
	jarl _Os_EnterISR2StackMonitor.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1442
	ld.bu 0x00000064[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1444
	mov #_Os_SCB_FA_Inf, r2
	ld.w 0x00000050[r2], r5
	st.w r5, 0x00000058[r2]
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1445
	st.w r5, 0x00000050[r2]
.BB.LABEL.27_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1466
	mov #_Os_SCB_FA_Inf, r2
	ld.bu 0x00000064[r2], r5
	add 0x00000001, r5
	st.b r5, 0x00000064[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1467
	ld.b 0x0000004D[r2], r6
	add 0x00000001, r6
	st.b r6, 0x0000004D[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1470
	andi 0x0000FFFF, r20, r2
	movea 0x0000001B, r0, r6
	cmp r6, r2
	bh9 .BB.LABEL.27_4
.BB.LABEL.27_3:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1472
	mov #_Os_SCB_FA_Inf, r2
	ld.w 0x0000000C[r2], r6
	zxb r5
	shl 0x00000002, r5
	add r6, r5
	st.w r20, 0xFFFFFFFC[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1473
	st.w r20, 0x00000048[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1474
	st.b r5, 0x0000004C[r2]
.BB.LABEL.27_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1496
	dispose 0x00000000, 0x00000061, [r31]
_Os_ExitISR2:
	.stack _Os_ExitISR2 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1506
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1516
	mov #_Os_SCB_FA_Inf, r20
	ld.w 0x0000000C[r20], r2
	ld.bu 0x00000064[r20], r5
	shl 0x00000002, r5
	add r2, r5
	ld.w 0xFFFFFFFC[r5], r2
	shl 0x00000003, r2
	mov #_Os_ISR2Stack, r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1517
	jarl _Os_StackMonitor, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1520
	ld.b 0x00000064[r20], r2
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000064[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1521
	ld.b 0x0000004D[r20], r2
	add 0xFFFFFFFF, r2
	st.b r2, 0x0000004D[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1529
	ld.bu 0x00000064[r20], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1532
	mov #_Os_SCB_FA_Inf, r20
	st.b r0, 0x0000004C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1546
	mov r20, r6
	jarl _Os_ExitISR2SwitchTask.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1548
	ld.w 0x00000058[r20], r2
	st.w r2, 0x00000050[r20]
	br9 .BB.LABEL.28_3
.BB.LABEL.28_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1553
	mov #_Os_SCB_FA_Inf, r5
	ld.w 0x0000000C[r5], r6
	shl 0x00000002, r2
	add r6, r2
	ld.w 0xFFFFFFFC[r2], r2
	st.w r2, 0x00000048[r5]
.BB.LABEL.28_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1601
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x00000008), r0, r2
	ld.w LOWW(#_Os_SCB_FA_Inf+0x00000008)[r2], r6
	jarl _Os_StackMonitor, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1606
	dispose 0x00000000, 0x00000041, [r31]
_Os_EnterISR1:
	.stack _Os_EnterISR1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1617
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1623
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x0000005C), r0, r2
	ld.bu LOWW(#_Os_SCB_FA_Inf+0x0000005C)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bnz9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1626
	mov #_Os_SCB_FA_Inf, r2
	ld.w 0x00000050[r2], r5
	st.w r5, 0x00000060[r2]
	mov 0x00000009, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1627
	st.w r5, 0x00000050[r2]
.BB.LABEL.29_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1631
	mov #_Os_SCB_FA_Inf, r21
	mov r21, r6
	jarl _Os_EnterISR1StackMonitor.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1638
	ld.bu 0x00000064[r21], r2
	ld.bu 0x0000005C[r21], r5
	add r5, r2
	shl 0x00000002, r2
	ld.w 0x0000000C[r21], r5
	add r2, r5
	st.w r20, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1641
	ld.b 0x0000005C[r21], r2
	add 0x00000001, r2
	st.b r2, 0x0000005C[r21]
	dispose 0x00000000, 0x00000061, [r31]
_Os_ExitISR1:
	.stack _Os_ExitISR1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1653
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1660
	mov #_Os_SCB_FA_Inf, r20
	ld.w 0x00000008[r20], r6
	jarl _Os_StackMonitor, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1664
	ld.b 0x0000005C[r20], r2
	add 0xFFFFFFFF, r2
	st.b r2, 0x0000005C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1665
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.30_2
.BB.LABEL.30_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1668
	mov #_Os_SCB_FA_Inf, r2
	ld.w 0x00000060[r2], r5
	st.w r5, 0x00000050[r2]
.BB.LABEL.30_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1676
	dispose 0x00000000, 0x00000041, [r31]
_Os_PrioToIpl:
	.stack _Os_PrioToIpl = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1686
	ld.hu 0x00000028[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1690
	addi 0xFFFFFFFF, r2, r5
	cmp r5, r7
	bl9 .BB.LABEL.31_2
.BB.LABEL.31_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1696
	sub r2, r7
	add 0x00000001, r7
	andi 0x0000FFFF, r7, r10
	jmp [r31]
.BB.LABEL.31_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1700
	jmp [r31]
_Os_IplToPrio:
	.stack _Os_IplToPrio = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1710
	ld.h 0x00000028[r6], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1713
	add r7, r10
	add 0xFFFFFFFF, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Interrupt.c", 1714
	zxh r10
	jmp [r31]
