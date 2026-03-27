#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Task.c -oDefaultBuild\Os_Task.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_12c14f50c17142839b4b39a042f1a4853r5qgw0z.5xy
#@	compiled at Fri Mar 27 09:50:07 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Task.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Os_SCB_FA_Inf
	.extern _Os_ObjectIDMaxTable
	.extern _Os_TCB
	.extern _Os_TASK_IDLE_Inf
	.extern _Os_TaskIdRange
	.extern _Os_TaskCfg
	.extern _Os_TaskStack
	.extern _Os_CfgStdResourceMax_Inf
	.extern _Os_TCBTaskResourceStack
	.extern _Os_ReadyQueueInsert
	.extern _Os_FillStack
	.public _Os_InitTask
	.extern _Os_Panic
	.public _Os_ActivateTask
	.extern _Os_Hal_SuspendInt
	.extern _Os_Hal_RestoreInt
	.extern _Os_ReadyQueueRemove
	.public _GetTaskState
	.public _ActivateTask
	.public _ActivateTaskAsyn
	.public _TerminateTask
	.public _GetTaskID
	.public _Schedule
	.public _ChainTask
	.public _Os_SetTaskToReady
	.public _Os_SwitchTask
	.public _Os_UpdateHighPrioTask
	.extern _Os_StackMonitor
	.extern _Os_Hal_FirstEnterTask
	.extern _Os_GetHighPrio
	.extern _Os_ReadyQueueGetFirst

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
_Os_InitTaskTCB.1:
	.stack _Os_InitTaskTCB.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 155
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 157
	mov r7, r2
	shl 0x00000002, r2
	mov #_Os_TCB, r5
	add r2, r5
	ld.w 0x00000000[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 160
	mov r7, r2
	shl 0x00000005, r2
	mov #_Os_TaskCfg, r21
	add r2, r21
	ld.w 0x0000000C[r21], r2
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 161
	ld.w 0x00000010[r21], r2
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 164
	st.b r0, 0x00000020[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 167
	ld.hu 0x00000016[r21], r9
	st.h r9, 0x0000001A[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 183
	ld.h 0x00000018[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 160
	add 0x0000000C, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 183
	ld.h 0x00000020[r6], r5
	and r5, r2
	andi 0x0000FFFF, r2, r0
	mov r7, r22
	mov r6, r23
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 186
	st.b r2, 0x00000020[r20]
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 189
	st.w r2, 0x0000001C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 197
	ld.w 0x00000000[r23], r6
	mov 0x0000000A, r8
	mov r22, r7
	jarl _Os_ReadyQueueInsert, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 199
	ld.hu 0x00000022[r23], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	ld.hu 0x0000001A[r20], r5
	cmp r5, r2
	bnc9 .BB.LABEL.5_5
.BB.LABEL.5_3:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 201
	st.w r22, 0x00000038[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 202
	ld.h 0x0000001A[r20], r20
	st.h r20, 0x00000022[r23]
	br9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 207
	st.w r2, 0x0000001C[r20]
.BB.LABEL.5_5:	; if_break_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 224
	mov r21, r6
	jarl _Os_FillStack, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 227
	dispose 0x00000000, 0x00000079, [r31]
_Os_InitTask:
	.stack _Os_InitTask = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 238
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 241
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 242
	mov r20, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 244
	mov r20, r2
	shl 0x00000002, r2
	mov #_Os_TASK_IDLE_Inf, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	st.h r2, 0x00000036[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 245
	mov r20, r2
	mul 0x00000018, r2, r0
	mov #_Os_TaskIdRange, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 246
	ld.w 0x00000004[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 245
	ld.w 0x00000000[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 248
	mov r21, r2
	sub r22, r2
	st.h r2, 0x00000024[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 250
	cmp r21, r22
	mov r10, r23
	ble9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 252
	jarl _Os_Panic, r31
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 256
	add r20, r20
	mov #_Os_CfgStdResourceMax_Inf, r2
	add r20, r2
	ld.hu 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 257
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_3:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov r22, r2
	br9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 261
	andi 0x0000FFFF, r2, r5
	shl 0x00000002, r5
	mov #_Os_TCBTaskResourceStack, r6
	add r5, r6
	mov #_Os_TCB, r7
	add r7, r5
	ld.w 0x00000000[r5], r7
	st.w r6, 0x00000014[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 262
	ld.w 0x00000000[r5], r5
	st.b r0, 0x00000018[r5]
	add 0x00000001, r2
.BB.LABEL.6_5:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 259
	andi 0x0000FFFF, r2, r5
	andi 0x0000FFFF, r21, r6
	cmp r6, r5
	bl9 .BB.LABEL.6_4
	br9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 269
	andi 0x0000FFFF, r22, r7
	mov r23, r6
	jarl _Os_InitTaskTCB.1, r31
	add 0x00000001, r22
.BB.LABEL.6_7:	; bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 267
	andi 0x0000FFFF, r22, r2
	andi 0x0000FFFF, r21, r5
	cmp r5, r2
	bl9 .BB.LABEL.6_6
.BB.LABEL.6_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 273
	dispose 0x00000000, 0x00000079, [r31]
_Os_ActivateTask:
	.stack _Os_ActivateTask = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 283
	prepare 0x00000479, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 289
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 305
	mov r20, r2
	shl 0x00000005, r2
	mov #_Os_TaskCfg, r5
	add r2, r5
	ld.hu 0x00000014[r5], r2
	mov r20, r5
	shl 0x00000002, r5
	mov #_Os_TCB, r21
	add r5, r21
	ld.w 0x00000000[r21], r5
	ld.bu 0x00000020[r5], r5
	cmp r2, r5
	mov r10, r22
	bge9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 308
	mov r22, r6
	jarl _Os_Hal_RestoreInt, r31
	mov 0x00000004, r23
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 314
	cmp 0x00000000, r23
	bz9 .BB.LABEL.7_4
	jr .BB.LABEL.7_10
.BB.LABEL.7_4:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 317
	ld.w 0x00000000[r21], r2
	ld.b 0x00000020[r2], r5
	add 0x00000001, r5
	st.b r5, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 320
	ld.w 0x00000000[r21], r2
	ld.w 0x0000001C[r2], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 322
	st.w r5, 0x0000001C[r2]
.BB.LABEL.7_6:	; if_break_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 332
	mov r20, r2
	shl 0x00000005, r2
	mov #_Os_TaskCfg, r21
	add r2, r21
	ld.hu 0x00000016[r21], r9
	mov #_Os_SCB_FA_Inf, r24
	ld.w 0x00000000[r24], r6
	mov 0x0000000A, r8
	mov r20, r7
	jarl _Os_ReadyQueueInsert, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 334
	ld.hu 0x00000016[r21], r2
	ld.hu 0x00000022[r24], r5
	cmp r5, r2
	bh9 .BB.LABEL.7_7
	jr .BB.LABEL.7_9
.BB.LABEL.7_7:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 336
	mov #_Os_SCB_FA_Inf, r5
	st.w r20, 0x00000038[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 337
	st.h r2, 0x00000022[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 340
	ld.bu 0x0000004D[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_8
	jr .BB.LABEL.7_9
.BB.LABEL.7_8:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 342
	._line_top inline_asm
    trap 0x00;
	._line_end inline_asm
.BB.LABEL.7_9:	; if_break_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 346
	mov r22, r6
	jarl _Os_Hal_RestoreInt, r31
.BB.LABEL.7_10:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	andi 0x000000FF, r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 350
	dispose 0x00000000, 0x00000479, [r31]
_Os_TerminateTaskInternal.1:
	.stack _Os_TerminateTaskInternal.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 388
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 410
	ld.bu 0x00000020[r8], r2
	cmp 0x00000000, r2
	mov r8, r20
	mov r7, r21
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 412
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000020[r20]
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 415
	andi 0x000000FF, r2, r0
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 428
	cmov 0x00000002, 0x00000002, r2, r2
	st.w r2, 0x0000001C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 432
	mov r21, r2
	shl 0x00000002, r2
	mov #_Os_TCB, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.hu 0x0000001A[r2], r7
	ld.w 0x00000000[r6], r6
	jarl _Os_ReadyQueueRemove, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 435
	st.b r0, 0x00000018[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 438
	shl 0x00000005, r21
	mov #_Os_TaskCfg, r2
	add r21, r2
	ld.h 0x00000016[r2], r2
	st.h r2, 0x0000001A[r20]
	dispose 0x00000000, 0x00000061, [r31]
_Os_TerminateTask.1:
	.stack _Os_TerminateTask.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 460
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 465
	jarl _Os_Hal_SuspendInt, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 467
	mov #_Os_SCB_FA_Inf, r22
	ld.w 0x00000004[r22], r8
	mov r22, r6
	mov r20, r7
	jarl _Os_TerminateTaskInternal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 469
	ld.w 0x00000038[r22], r2
	cmp r2, r20
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 471
	mov #_Os_SCB_FA_Inf, r6
	jarl _Os_UpdateHighPrioTask, r31
.BB.LABEL.9_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 474
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x0000004D), r0, r2
	st.b r0, LOWW(#_Os_SCB_FA_Inf+0x0000004D)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 480
	._line_top inline_asm
    trap 0x00;
	._line_end inline_asm
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 481
	mov r21, r6
	jarl _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 483
	dispose 0x00000000, 0x00000071, [r31]
_Os_ChainTask.1:
	.stack _Os_ChainTask.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 495
	prepare 0x00000479, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 502
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x0000003C), r0, r2
	ld.w LOWW(#_Os_SCB_FA_Inf+0x0000003C)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 505
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 507
	mov r20, r2
	shl 0x00000005, r2
	mov #_Os_TaskCfg, r5
	add r2, r5
	ld.hu 0x00000014[r5], r2
	mov r20, r5
	shl 0x00000002, r5
	mov #_Os_TCB, r22
	add r5, r22
	ld.w 0x00000000[r22], r5
	ld.bu 0x00000020[r5], r5
	cmp r2, r5
	mov r10, r23
	blt9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	cmp r20, r21
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; entry.if_break_bb_crit_edge
	mov 0x00000000, r24
	br9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 513
	mov r23, r6
	jarl _Os_Hal_RestoreInt, r31
	mov 0x00000004, r24
.BB.LABEL.10_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 517
	cmp 0x00000000, r24
	bz9 .BB.LABEL.10_5
	jr .BB.LABEL.10_10
.BB.LABEL.10_5:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 519
	mov #_Os_SCB_FA_Inf, r6
	ld.w 0x00000004[r6], r8
	mov r21, r7
	jarl _Os_TerminateTaskInternal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 533
	ld.w 0x00000000[r22], r2
	ld.b 0x00000020[r2], r5
	add 0x00000001, r5
	st.b r5, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 535
	ld.w 0x00000000[r22], r2
	ld.w 0x0000001C[r2], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 537
	st.w r5, 0x0000001C[r2]
.BB.LABEL.10_7:	; if_break_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 557
	mov r20, r2
	shl 0x00000005, r2
	mov #_Os_TaskCfg, r5
	add r2, r5
	ld.hu 0x00000016[r5], r9
	mov #_Os_SCB_FA_Inf, r22
	ld.w 0x00000000[r22], r6
	mov 0x0000000A, r8
	mov r20, r7
	jarl _Os_ReadyQueueInsert, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 559
	ld.w 0x00000038[r22], r2
	cmp r2, r21
	bnz9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 561
	mov #_Os_SCB_FA_Inf, r6
	jarl _Os_UpdateHighPrioTask, r31
.BB.LABEL.10_9:	; if_break_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 564
	movhi HIGHW1(#_Os_SCB_FA_Inf+0x0000004D), r0, r2
	st.b r0, LOWW(#_Os_SCB_FA_Inf+0x0000004D)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 570
	._line_top inline_asm
    trap 0x00;
	._line_end inline_asm
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 572
	mov r23, r6
	jarl _Os_Hal_RestoreInt, r31
.BB.LABEL.10_10:	; if_break_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	andi 0x000000FF, r24, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 577
	dispose 0x00000000, 0x00000479, [r31]
_Os_GetTaskState.1:
	.stack _Os_GetTaskState.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 587
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 591
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 592
	shl 0x00000002, r20
	mov #_Os_TCB, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x0000001C[r2], r2
	cmp 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 598
	cmov 0x00000002, 0x00000001, r2, r2
	st.w r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 600
	mov r10, r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000061, [r31]
_GetTaskState:
	.stack _GetTaskState = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 612
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 623
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 642
	andi 0x0000FFFF, r20, r6
	mov 0x00000000, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 653
	mov r20, r6
	mov r21, r7
	jarl _Os_GetTaskState.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 675
	dispose 0x00000000, 0x00000061, [r31]
_ActivateTask:
	.stack _ActivateTask = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 685
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 695
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 714
	andi 0x0000FFFF, r20, r6
	mov 0x00000000, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 738
	mov r20, r6
	jarl _Os_ActivateTask, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.13_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 761
	dispose 0x00000000, 0x00000041, [r31]
_ActivateTaskAsyn:
	.stack _ActivateTaskAsyn = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 771
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 781
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 800
	andi 0x0000FFFF, r20, r6
	mov 0x00000000, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 824
	mov r20, r6
	jarl _Os_ActivateTask, r31
.BB.LABEL.14_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 845
	dispose 0x00000000, 0x00000041, [r31]
_TerminateTask:
	.stack _TerminateTask = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 855
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 865
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 884
	ld.w 0x00000050[r10], r2
	cmp 0x0000000A, r2
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; entry.if_break_bb40_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000002, r20
	br9 .BB.LABEL.15_4
.BB.LABEL.15_2:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 904
	ld.w 0x0000003C[r10], r6
	mov r6, r20
	shl 0x00000002, r20
	mov #_Os_TCB, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.bu 0x00000018[r20], r20
	cmp 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 906
	cmov 0x0000000A, 0x00000006, r20, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 916
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 918
	jarl _Os_TerminateTask.1, r31
.BB.LABEL.15_4:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 939
	dispose 0x00000000, 0x00000041, [r31]
_GetTaskID:
	.stack _GetTaskID = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 951
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 961
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 980
	ld.w 0x0000003C[r10], r2
	st.w r2, 0x00000000[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1001
	dispose 0x00000000, 0x00000041, [r31]
_Os_Schedule.1:
	.stack _Os_Schedule.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1014
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1018
	jarl _Os_Hal_SuspendInt, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1028
	mov r20, r6
	jarl _Os_UpdateHighPrioTask, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1030
	ld.w 0x00000038[r20], r2
	ld.w 0x0000003C[r20], r5
	cmp r5, r2
	bnz9 .BB.LABEL.17_1
	jr .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1032
	st.b r0, 0x0000004D[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1034
	._line_top inline_asm
    trap 0x00;
	._line_end inline_asm
.BB.LABEL.17_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1041
	mov r21, r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000061, [r31]
_Schedule:
	.stack _Schedule = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1056
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1065
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1083
	ld.w 0x00000050[r10], r2
	cmp 0x00000008, r2
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; entry.if_break_bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000002, r20
	br9 .BB.LABEL.18_9
.BB.LABEL.18_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1102
	cmp 0x0000000A, r2
	bz9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_else_bb.if_break_bb29_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000002, r20
	br9 .BB.LABEL.18_7
.BB.LABEL.18_4:	; if_else_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1110
	ld.w 0x0000003C[r10], r20
	shl 0x00000002, r20
	mov #_Os_TCB, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	ld.bu 0x00000018[r20], r20
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.18_6
.BB.LABEL.18_5:	; if_else_bb15.if_break_bb29_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.18_7
.BB.LABEL.18_6:	; if_then_bb27
	mov 0x00000006, r20
.BB.LABEL.18_7:	; if_break_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1124
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.18_9
.BB.LABEL.18_8:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1126
	mov r10, r6
	jarl _Os_Schedule.1, r31
.BB.LABEL.18_9:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	andi 0x000000FF, r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1147
	dispose 0x00000000, 0x00000041, [r31]
_ChainTask:
	.stack _ChainTask = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1158
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1169
	jarl _Os_GetCurrentContext.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1188
	andi 0x0000FFFF, r20, r6
	mov 0x00000000, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; entry.if_break_bb51_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.19_6
.BB.LABEL.19_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1192
	ld.w 0x00000050[r21], r2
	cmp 0x0000000A, r2
	bz9 .BB.LABEL.19_4
.BB.LABEL.19_3:	; if_else_bb.if_break_bb51_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.19_6
.BB.LABEL.19_4:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1212
	ld.w 0x0000003C[r21], r2
	shl 0x00000002, r2
	mov #_Os_TCB, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.bu 0x00000018[r2], r2
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1214
	cmov 0x0000000A, 0x00000006, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1225
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.19_6
.BB.LABEL.19_5:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1240
	mov r20, r6
	jarl _Os_ChainTask.1, r31
.BB.LABEL.19_6:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1262
	dispose 0x00000000, 0x00000061, [r31]
_Os_SetTaskToReady:
	.stack _Os_SetTaskToReady = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1272
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1276
	mov r20, r2
	shl 0x00000002, r2
	mov #_Os_TCB, r21
	add r2, r21
	ld.w 0x00000000[r21], r2
	mov 0x00000001, r5
	st.w r5, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1285
	ld.w 0x00000000[r21], r2
	ld.hu 0x0000001A[r2], r9
	mov #_Os_SCB_FA_Inf, r22
	ld.w 0x00000000[r22], r6
	mov 0x0000000A, r8
	mov r20, r7
	jarl _Os_ReadyQueueInsert, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1288
	ld.w 0x00000000[r21], r2
	ld.hu 0x0000001A[r2], r5
	ld.hu 0x00000022[r22], r6
	cmp r6, r5
	bh9 .BB.LABEL.20_1
	jr .BB.LABEL.20_3
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1290
	mov #_Os_SCB_FA_Inf, r5
	st.w r20, 0x00000038[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1291
	ld.h 0x0000001A[r2], r2
	st.h r2, 0x00000022[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1294
	ld.bu 0x0000004D[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.20_2
	jr .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1296
	._line_top inline_asm
    trap 0x00;
	._line_end inline_asm
.BB.LABEL.20_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1300
	dispose 0x00000000, 0x00000071, [r31]
_Os_SwitchTask:
	.stack _Os_SwitchTask = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1334
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1337
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1341
	ld.w 0x0000003C[r10], r2
	st.w r2, 0x00000040[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1346
	ld.w 0x00000004[r10], r5
	cmp 0x00000000, r5
	mov r10, r20
	bz9 .BB.LABEL.21_3
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1350
	shl 0x00000003, r2
	mov #_Os_TaskStack, r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1351
	jarl _Os_StackMonitor, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1354
	ld.w 0x00000004[r20], r2
	ld.w 0x0000001C[r2], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1359
	st.w r5, 0x0000001C[r2]
.BB.LABEL.21_3:	; if_break_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1371
	ld.w 0x00000038[r20], r2
	st.w r2, 0x0000003C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1372
	shl 0x00000002, r2
	mov #_Os_TCB, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	st.w r2, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1391
	ld.w 0x0000003C[r20], r2
	shl 0x00000005, r2
	mov #_Os_TaskCfg, r5
	add r2, r5
	ld.bu 0x0000001A[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1393
	st.b r2, 0x0000004D[r20]
.BB.LABEL.21_5:	; if_break_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1401
	ld.w 0x00000004[r20], r2
	ld.w 0x0000001C[r2], r5
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1403
	st.w r6, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1414
	cmp 0x00000004, r5
	bnz9 .BB.LABEL.21_7
.BB.LABEL.21_6:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1416
	ld.w 0x0000003C[r20], r2
	shl 0x00000005, r2
	mov #_Os_TaskCfg, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	ld.w 0x00000004[r20], r5
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1427
	ld.w 0x0000003C[r20], r6
	jarl _Os_Hal_FirstEnterTask, r31
.BB.LABEL.21_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1447
	dispose 0x00000000, 0x00000041, [r31]
_Os_UpdateHighPrioTask:
	.stack _Os_UpdateHighPrioTask = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1453
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1455
	ld.w 0x00000000[r20], r6
	jarl _Os_GetHighPrio, r31
	st.h r10, 0x00000022[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Task.c", 1456
	ld.hu 0x00000022[r20], r7
	ld.w 0x00000000[r20], r6
	jarl _Os_ReadyQueueGetFirst, r31
	st.w r10, 0x00000038[r20]
	dispose 0x00000000, 0x00000041, [r31]
