#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Extend\src\Os_Adapt.c -oDefaultBuild\Os_Adapt.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_7b73b455c4db4010a55168e1afdeba131qz2q355.cgh
#@	compiled at Fri Mar 27 09:50:43 2026

	.file "..\..\Bsw\SystemServices\Os\Extend\src\Os_Adapt.c"

	$reg_mode 32
	.dbl_size 8

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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 89
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x00000026), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 91
	ld.hu LOWW(#_Os_SCB_FA_Inf+0x00000026)[r2], r10
	jmp [r31]
_Os_GetCurrentContext.1:
	.stack _Os_GetCurrentContext.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 135
	mov #_Os_SCB_FA_Inf, r10
	jmp [r31]
_Os_ObjectIDCheck.1:
	.stack _Os_ObjectIDCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 146
	add r7, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 149
	mov #_Os_ObjectIDMaxTable, r2
	add r7, r2
	ld.hu 0x00000000[r2], r2
	cmp r2, r6
	setf 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 155
	jmp [r31]
_Os_GetDetailedError:
	.stack _Os_GetDetailedError = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 60
	mov 0x00000009, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 90
	jmp [r31]
_Os_GetTaskStackUsage:
	.stack _Os_GetTaskStackUsage = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 101
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 111
	andi 0x0000FFFF, r6, r7
	mov 0x00000001, r6
	jarl _OSGetStackUsage, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 118
	dispose 0x00000000, 0x00000001, [r31]
_Os_DisableGlobalKM:
	.stack _Os_DisableGlobalKM = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 130
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 138
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 158
	ld.hu 0x00000026[r10], r20
	jarl _Os_Hal_SuspendInt, r31
	shl 0x00000002, r20
	mov #_Os_GlobalKMInt.1, r2
	add r20, r2
	st.w r10, 0x00000000[r2]
	dispose 0x00000000, 0x00000041, [r31]
_Os_EnableGlobalKM:
	.stack _Os_EnableGlobalKM = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 175
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 183
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 202
	ld.hu 0x00000026[r10], r2
	shl 0x00000002, r2
	mov #_Os_GlobalKMInt.1, r5
	add r2, r5
	ld.w 0x00000000[r5], r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_DisableLevelKM:
	.stack _Os_DisableLevelKM = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 219
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 228
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 247
	jarl _Os_Hal_SuspendInt, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 248
	jarl _Os_Hal_GetIpl, r31
	st.h r10, 0x00000030[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 249
	ld.hu 0x00000026[r20], r2
	add r2, r2
	mov #_Os_CfgIsr2ExcludeTplMax_Inf, r5
	add r2, r5
	ld.hu 0x00000000[r5], r6
	mov 0x00000001, r7
	jarl _Os_Hal_SetIpl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 250
	mov r21, r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000061, [r31]
_Os_EnableLevelKM:
	.stack _Os_EnableLevelKM = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 266
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 274
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 293
	ld.hu 0x00000030[r10], r6
	mov 0x00000000, r7
	jarl _Os_Hal_SetIpl, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_InitialEnableInterruptSources:
	.stack _Os_InitialEnableInterruptSources = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 308
	prepare 0x00000079, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 332
	jarl _Os_GetCoreIdLocal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 333
	mul 0x00000018, r10, r0
	mov #_Os_IsrIdRange, r2
	add r10, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 334
	ld.w 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 333
	ld.w 0x00000000[r2], r22
	br9 .BB.LABEL.10_4
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 338
	mov r22, r2
	mul 0x00000014, r2, r0
	mov #_Os_IsrCfg, r5
	add r2, r5
	ld.w 0x00000000[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 339
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 341
	mov r22, r2
	mul 0x00000014, r2, r0
	mov #_Os_IsrCfg, r5
	add r2, r5
	ld.w 0x00000004[r5], r7
	mov r23, r6
	jarl _Os_Hal_ClearPendingInterrupt, r31
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 343
	mov r23, r6
	jarl _Os_Hal_EnableInterruptSource, r31
	add 0x00000001, r22
.BB.LABEL.10_4:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 335
	cmp r21, r22
	bl9 .BB.LABEL.10_1
.BB.LABEL.10_5:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 356
	dispose 0x00000000, 0x00000079, [r31]
_Os_IsInterruptSourceEnabled:
	.stack _Os_IsInterruptSourceEnabled = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 366
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 381
	andi 0x0000FFFF, r20, r6
	mov 0x00000001, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_1:	; entry.if_break_bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000003, r10
.BB.LABEL.11_2:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 426
	zxb r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.11_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 385
	mov r20, r2
	mul 0x00000014, r2, r0
	mov #_Os_IsrCfg, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.11_1
.BB.LABEL.11_4:	; if_else_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 389
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_else_bb19.if_break_bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x0000000B, r10
	br9 .BB.LABEL.11_2
.BB.LABEL.11_6:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 408
	mul 0x00000014, r20, r0
	mov #_Os_IsrCfg, r2
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 409
	ld.w 0x00000004[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 408
	ld.w 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 410
	jarl _Os_Hal_GetIsrSourceState, r31
	cmp 0x00000000, r10
	mov 0x00000000, r10
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_7:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 412
	st.b r0, 0x00000000[r21]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.11_8:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 416
	st.b r2, 0x00000000[r21]
	dispose 0x00000000, 0x00000061, [r31]
_Os_UnhandledIrq:
	.stack _Os_UnhandledIrq = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 436
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 444
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 446
	jarl _Os_Hal_GetCurrentIrq, r31
	st.w r10, 0x00000010[r20]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 447
	st.b r2, 0x00000065[r20]
	dispose 0x00000000, 0x00000041, [r31]
_Os_GetUnhandledIrq:
	.stack _Os_GetUnhandledIrq = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 463
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 472
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 474
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; entry.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x0000000B, r10
	br9 .BB.LABEL.13_4
.BB.LABEL.13_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 487
	ld.bu 0x00000065[r10], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_3:	; if_else_bb.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000007, r10
.BB.LABEL.13_4:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 501
	zxb r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.13_5:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 493
	ld.w 0x00000010[r10], r2
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000041, [r31]
_Os_UnhandledExc:
	.stack _Os_UnhandledExc = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 511
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 519
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 521
	jarl _Os_Hal_GetCurrentExc, r31
	st.w r10, 0x00000014[r20]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 522
	st.b r2, 0x00000066[r20]
	dispose 0x00000000, 0x00000041, [r31]
_Os_GetUnhandledExc:
	.stack _Os_GetUnhandledExc = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 538
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 547
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 549
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; entry.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x0000000B, r10
	br9 .BB.LABEL.15_4
.BB.LABEL.15_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 562
	ld.bu 0x00000066[r10], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_5
.BB.LABEL.15_3:	; if_else_bb.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 0
	mov 0x00000007, r10
.BB.LABEL.15_4:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 576
	zxb r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.15_5:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Extend/src/Os_Adapt.c", 568
	ld.w 0x00000014[r10], r2
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000041, [r31]
	.section .bss, bss
	.align 4
_Os_GlobalKMInt.1:
	.ds (4)
