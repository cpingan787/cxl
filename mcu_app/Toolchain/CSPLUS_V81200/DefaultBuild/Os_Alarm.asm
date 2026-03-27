#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Alarm.c -oDefaultBuild\Os_Alarm.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b17825513b78447692f8e6369e31aaa63rt4ia2r.rqo
#@	compiled at Fri Mar 27 09:50:55 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Alarm.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Os_SCB_FA_Inf
	.extern _Os_ObjectIDMaxTable
	.extern _Os_AlarmCfg
	.extern _Os_ACB
	.extern _Os_AlarmIdRange
	.extern _Os_CounterCfg
	.extern _Os_CCB
	.public _Os_InitAlarm
	.extern _Os_Panic
	.extern _Os_Hal_SuspendInt
	.extern _Os_GetDistance
	.extern _Os_Hal_RestoreInt
	.extern _Os_CalcAbsTicks
	.public _Os_WorkAlarm
	.public _Os_CancelAlarm
	.public _GetAlarm
	.public _GetAlarmBase
	.public _CancelAlarm
	.public _SetRelAlarm
	.public _SetAbsAlarm

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
_Os_InitAlarm:
	.stack _Os_InitAlarm = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 284
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 288
	jarl _Os_GetCoreIdLocal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 301
	shl 0x00000003, r10
	mov #_Os_AlarmIdRange, r2
	add r10, r2
	ld.w 0x00000000[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 302
	ld.w 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 304
	cmp r21, r20
	ble9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 306
	jarl _Os_Panic, r31
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 311
	andi 0x0000FFFF, r20, r2
	mov r2, r5
	shl 0x00000002, r5
	mov #_Os_ACB, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 312
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 313
	st.w r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 315
	st.w r2, 0x00000008[r5]
	add 0x00000001, r20
.BB.LABEL.4_3:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 309
	andi 0x0000FFFF, r20, r2
	andi 0x0000FFFF, r21, r5
	cmp r5, r2
	bl9 .BB.LABEL.4_2
.BB.LABEL.4_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 340
	dispose 0x00000000, 0x00000061, [r31]
_Os_GetAlarm.1:
	.stack _Os_GetAlarm.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 350
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 356
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 357
	mov r20, r2
	shl 0x00000002, r2
	mov #_Os_ACB, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.w 0x00000008[r2], r5
	cmp r5, r20
	mov r10, r22
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000005, r20
	br9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 363
	shl 0x00000004, r20
	mov #_Os_AlarmCfg, r5
	add r20, r5
	ld.w 0x0000000C[r5], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 366
	mov r8, r20
	shl 0x00000002, r20
	mov #_Os_CCB, r5
	add r20, r5
	ld.w 0x00000000[r5], r20
	ld.w 0x00000000[r20], r6
	ld.w 0x00000000[r2], r7
	jarl _Os_GetDistance, r31
	st.w r10, 0x00000000[r21]
	mov 0x00000000, r20
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 370
	mov r22, r6
	jarl _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 373
	andi 0x000000FF, r20, r10
	dispose 0x00000000, 0x00000071, [r31]
_Os_ProcessAlarm.1:
	.stack _Os_ProcessAlarm.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 383
	prepare 0x00000679, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 391
	ld.w 0x00000000[r7], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 392
	mov r20, r21
	shl 0x00000002, r21
	mov #_Os_ACB, r2
	add r2, r21
	ld.w 0x00000000[r21], r2
	ld.w 0x00000008[r2], r2
	st.w r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 398
	st.w r2, 0x00000008[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 399
	ld.w 0x00000000[r21], r2
	st.w r20, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 401
	mov r20, r2
	shl 0x00000004, r2
	mov #_Os_AlarmCfg, r22
	add r2, r22
	ld.w 0x00000004[r22], r2
	add 0x00000004, r22
	cmp 0x00000000, r2
	ld.w 0x00000020[r3], r23
	mov r9, r24
	mov r6, r25
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 418
	ld.w 0x00000000[r23], r6
	jarl _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 419
	ld.w 0x00000000[r22], r2
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 420
	jarl _Os_Hal_SuspendInt, r31
	st.w r10, 0x00000000[r23]
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 438
	ld.w 0x00000000[r21], r21
	ld.w 0x00000004[r21], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 440
	ld.w 0x00000000[r21], r6
	mov r25, r8
	jarl _Os_CalcAbsTicks, r31
	st.w r10, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 444
	ld.w 0x00000008[r24], r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 445
	ld.w 0x00000004[r24], r8
	mov r3, r7
	mov r20, r6
	jarl _Os_InsertAlarm.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 446
	ld.w 0x00000000[r3], r2
	st.w r2, 0x00000008[r24]
.BB.LABEL.6_4:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 450
	dispose 0x00000004, 0x00000679, [r31]
_Os_WorkAlarm:
	.stack _Os_WorkAlarm = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 460
	prepare 0x00000679, 0x00000008
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 471
	mov r20, r2
	mul 0x00000018, r2, r0
	mov #_Os_CounterCfg, r5
	add r2, r5
	ld.w 0x00000000[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 473
	jarl _Os_Hal_SuspendInt, r31
	st.w r10, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 474
	mov r20, r2
	shl 0x00000002, r2
	mov #_Os_CCB, r5
	add r2, r5
	ld.w 0x00000000[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 475
	ld.w 0x00000000[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 476
	addi 0x00000008, r22, r24
	mov 0x00000000, r25
	br9 .BB.LABEL.7_5
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 480
	ld.w 0x00000008[r22], r2
	ori 0x0000FFFF, r0, r5
	cmp r5, r2
	bnz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; bb.bb45_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000001, r25
	br9 .BB.LABEL.7_5
.BB.LABEL.7_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 484
	shl 0x00000002, r2
	mov #_Os_ACB, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.w 0x00000000[r2], r6
	mov r23, r7
	mov r20, r8
	jarl _Os_GetDistance, r31
	cmp r21, r10
	bh9 .BB.LABEL.7_2
.BB.LABEL.7_4:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	movea 0x00000004, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 488
	st.w r2, 0x00000000[r3]
	mov #_Os_SCB_FA_Inf, r8
	mov r20, r6
	mov r24, r7
	mov r22, r9
	jarl _Os_ProcessAlarm.1, r31
.BB.LABEL.7_5:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 478
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.7_1
.BB.LABEL.7_6:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 495
	ld.w 0x00000004[r3], r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000008, 0x00000679, [r31]
_Os_InsertAlarm.1:
	.stack _Os_InsertAlarm.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 510
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 513
	andi 0x0000FFFF, r20, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.8_17
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 515
	mov r20, r2
	shl 0x00000002, r2
	mov #_Os_ACB, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.w 0x00000000[r2], r2
	mov 0x00000000, r7
	ori 0x0000FFFF, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 520
	cmp r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 517
	ld.w 0x00000000[r21], r6
	bh9 .BB.LABEL.8_7
	br9 .BB.LABEL.8_13
.BB.LABEL.8_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	ori 0x0000FFFF, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 524
	cmp r9, r6
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.8_7
.BB.LABEL.8_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 528
	mov r6, r9
	shl 0x00000002, r9
	mov #_Os_ACB, r10
	add r9, r10
	ld.w 0x00000000[r10], r9
	ld.w 0x00000000[r9], r10
	cmp r22, r10
	bl9 .BB.LABEL.8_3
.BB.LABEL.8_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	cmp r2, r10
	bh9 .BB.LABEL.8_3
.BB.LABEL.8_6:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 531
	ld.w 0x00000008[r9], r9
	mov r6, r8
	mov r9, r6
.BB.LABEL.8_7:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 522
	andi 0x000000FF, r7, r9
	cmp 0x00000001, r9
	bnz9 .BB.LABEL.8_2
	br9 .BB.LABEL.8_14
.BB.LABEL.8_8:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	ori 0x0000FFFF, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 543
	cmp r9, r6
	bnz9 .BB.LABEL.8_10
.BB.LABEL.8_9:	; bb72.bb114_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000001, r7
	br9 .BB.LABEL.8_13
.BB.LABEL.8_10:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 547
	mov r6, r9
	shl 0x00000002, r9
	mov #_Os_ACB, r10
	add r9, r10
	ld.w 0x00000000[r10], r9
	ld.w 0x00000000[r9], r10
	cmp r22, r10
	bnc9 .BB.LABEL.8_12
.BB.LABEL.8_11:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	cmp r2, r10
	bh9 .BB.LABEL.8_9
.BB.LABEL.8_12:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 550
	ld.w 0x00000008[r9], r9
	mov r6, r8
	mov r9, r6
.BB.LABEL.8_13:	; bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 541
	andi 0x000000FF, r7, r9
	cmp 0x00000001, r9
	bnz9 .BB.LABEL.8_8
.BB.LABEL.8_14:	; if_break_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 559
	ld.w 0x00000000[r5], r2
	st.w r6, 0x00000008[r2]
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 561
	cmp r2, r8
	bz9 .BB.LABEL.8_16
.BB.LABEL.8_15:	; if_then_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 563
	shl 0x00000002, r8
	mov #_Os_ACB, r21
	add r8, r21
	ld.w 0x00000000[r21], r21
	st.w r20, 0x00000008[r21]
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.8_16:	; if_else_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 567
	st.w r20, 0x00000000[r21]
.BB.LABEL.8_17:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 572
	dispose 0x00000000, 0x00000071, [r31]
_Os_DeleteAlarm.1:
	.stack _Os_DeleteAlarm.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 581
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 583
	andi 0x0000FFFF, r20, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.9_9
.BB.LABEL.9_1:	; entry.bb53_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	ori 0x0000FFFF, r0, r2
	mov r21, r5
	br9 .BB.LABEL.9_8
.BB.LABEL.9_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 594
	cmp r20, r2
	bnz9 .BB.LABEL.9_7
.BB.LABEL.9_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 596
	cmp r5, r6
	mov r2, r5
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 598
	shl 0x00000002, r5
	mov #_Os_ACB, r6
	add r6, r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000008[r5], r5
	st.w r5, 0x00000000[r21]
	br9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 602
	shl 0x00000002, r5
	mov #_Os_ACB, r20
	add r20, r5
	shl 0x00000002, r6
	add r6, r20
	ld.w 0x00000000[r20], r6
	ld.w 0x00000000[r5], r5
	ld.w 0x00000008[r5], r5
	st.w r5, 0x00000008[r6]
.BB.LABEL.9_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 604
	mov r2, r5
	shl 0x00000002, r5
	mov #_Os_ACB, r6
	add r6, r5
	ld.w 0x00000000[r5], r5
	st.w r2, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 605
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.9_7:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 610
	mov r2, r5
	shl 0x00000002, r5
	mov #_Os_ACB, r6
	add r6, r5
	ld.w 0x00000000[r5], r5
	add 0x00000008, r5
.BB.LABEL.9_8:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov r2, r6
	ld.w 0x00000000[r5], r2
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 592
	cmp r5, r2
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 616
	dispose 0x00000000, 0x00000061, [r31]
_Os_CancelAlarm:
	.stack _Os_CancelAlarm = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 626
	prepare 0x00000071, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 634
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 635
	mov r20, r2
	shl 0x00000002, r2
	mov #_Os_ACB, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.w 0x00000008[r2], r2
	cmp r2, r20
	mov r10, r21
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000005, r20
	br9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 641
	mov r20, r2
	shl 0x00000004, r2
	mov #_Os_AlarmCfg, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 642
	shl 0x00000002, r2
	mov #_Os_CCB, r5
	add r2, r5
	ld.w 0x00000000[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 643
	ld.w 0x00000008[r22], r2
	st.w r2, 0x00000000[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 644
	mov r20, r6
	jarl _Os_DeleteAlarm.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 645
	ld.w 0x00000000[r3], r20
	st.w r20, 0x00000008[r22]
	mov 0x00000000, r20
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 647
	mov r21, r6
	jarl _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 650
	andi 0x000000FF, r20, r10
	dispose 0x00000004, 0x00000071, [r31]
_Os_AbsAlarmCheckStatus.1:
	.stack _Os_AbsAlarmCheckStatus.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 659
	shl 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 667
	mov #_Os_AlarmCfg, r2
	add r6, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 669
	mul 0x00000018, r2, r0
	mov #_Os_CounterCfg, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 671
	cmp r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 670
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 671
	bnc9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.if_break_bb52_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000008, r10
	br9 .BB.LABEL.11_4
.BB.LABEL.11_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 675
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_3:	; if_else_bb.if_break_bb52_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000000, r10
.BB.LABEL.11_4:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 689
	zxb r10
	jmp [r31]
.BB.LABEL.11_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	cmp r8, r2
	bl9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; bb
	cmp r8, r5
	bnh9 .BB.LABEL.11_3
.BB.LABEL.11_7:	; if_then_bb50
	mov 0x00000008, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 677
	jmp [r31]
_Os_SetAbsAlarm.1:
	.stack _Os_SetAbsAlarm.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 699
	prepare 0x000007F9, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 702
	jarl _Os_AbsAlarmCheckStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 704
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 707
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 708
	mov r20, r2
	shl 0x00000002, r2
	mov #_Os_ACB, r24
	add r2, r24
	ld.w 0x00000000[r24], r2
	ld.w 0x00000008[r2], r2
	cmp r2, r20
	mov r10, r25
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 710
	mov r25, r6
	jarl _Os_Hal_RestoreInt, r31
	mov 0x00000007, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 711
	dispose 0x00000004, 0x000007F9, [r31]
.BB.LABEL.12_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 715
	mov r20, r2
	shl 0x00000004, r2
	mov #_Os_AlarmCfg, r5
	add r2, r5
	ld.w 0x0000000C[r5], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 716
	mov r8, r2
	mul 0x00000018, r2, r0
	mov #_Os_CounterCfg, r5
	add r2, r5
	ld.w 0x00000000[r5], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 717
	mov r8, r2
	shl 0x00000002, r2
	mov #_Os_CCB, r5
	add r2, r5
	ld.w 0x00000000[r5], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 719
	ld.w 0x00000000[r27], r6
	mov r21, r7
	jarl _Os_GetDistance, r31
	cmp r26, r10
	ld.w 0x00000000[r24], r2
	bnh9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 725
	add r21, r26
	add 0x00000001, r26
	mov r26, r21
.BB.LABEL.12_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	st.w r21, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 728
	ld.w 0x00000000[r24], r2
	st.w r22, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 729
	ld.w 0x00000008[r27], r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 730
	ld.w 0x00000000[r27], r8
	mov r3, r7
	mov r20, r6
	jarl _Os_InsertAlarm.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 731
	ld.w 0x00000000[r3], r2
	st.w r2, 0x00000008[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 732
	mov r25, r6
	jarl _Os_Hal_RestoreInt, r31
.BB.LABEL.12_6:	; if_break_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 737
	dispose 0x00000004, 0x000007F9, [r31]
_Os_GetAlarmBase.1:
	.stack _Os_GetAlarmBase.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 747
	shl 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 749
	mov #_Os_AlarmCfg, r2
	add r6, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 752
	mul 0x00000018, r2, r0
	mov #_Os_CounterCfg, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	st.w r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 753
	ld.w 0x00000004[r5], r2
	st.w r2, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 754
	ld.w 0x00000008[r5], r2
	st.w r2, 0x00000004[r7]
	jmp [r31]
_Os_RelAlarmCheckStatus.1:
	.stack _Os_RelAlarmCheckStatus.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 764
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 778
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; entry.if_break_bb59_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000008, r10
	br9 .BB.LABEL.14_5
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 785
	shl 0x00000004, r6
	mov #_Os_AlarmCfg, r2
	add r6, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 787
	mul 0x00000018, r2, r0
	mov #_Os_CounterCfg, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 788
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 790
	cmp r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 787
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 790
	bl9 .BB.LABEL.14_1
.BB.LABEL.14_3:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 794
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.14_6
.BB.LABEL.14_4:	; if_else_bb29.if_break_bb59_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000000, r10
.BB.LABEL.14_5:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 808
	zxb r10
	jmp [r31]
.BB.LABEL.14_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	cmp r8, r2
	bl9 .BB.LABEL.14_8
.BB.LABEL.14_7:	; bb
	cmp r8, r5
	bnh9 .BB.LABEL.14_4
.BB.LABEL.14_8:	; if_then_bb56
	mov 0x00000008, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 796
	jmp [r31]
_Os_SetRelAlarm.1:
	.stack _Os_SetRelAlarm.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 817
	prepare 0x000007F9, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 822
	jarl _Os_RelAlarmCheckStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 824
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.15_4
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 827
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 828
	mov r20, r2
	shl 0x00000002, r2
	mov #_Os_ACB, r24
	add r2, r24
	ld.w 0x00000000[r24], r25
	ld.w 0x00000008[r25], r2
	cmp r2, r20
	mov r10, r26
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 830
	mov r26, r6
	jarl _Os_Hal_RestoreInt, r31
	mov 0x00000007, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 831
	dispose 0x00000004, 0x000007F9, [r31]
.BB.LABEL.15_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 835
	mov r20, r2
	shl 0x00000004, r2
	mov #_Os_AlarmCfg, r5
	add r2, r5
	ld.w 0x0000000C[r5], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 836
	mov r8, r2
	shl 0x00000002, r2
	mov #_Os_CCB, r5
	add r2, r5
	ld.w 0x00000000[r5], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 838
	ld.w 0x00000000[r27], r6
	mov r21, r7
	jarl _Os_CalcAbsTicks, r31
	st.w r10, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 840
	ld.w 0x00000000[r24], r2
	st.w r22, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 841
	ld.w 0x00000008[r27], r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 842
	ld.w 0x00000000[r27], r8
	mov r3, r7
	mov r20, r6
	jarl _Os_InsertAlarm.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 843
	ld.w 0x00000000[r3], r2
	st.w r2, 0x00000008[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 844
	mov r26, r6
	jarl _Os_Hal_RestoreInt, r31
.BB.LABEL.15_4:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 849
	dispose 0x00000004, 0x000007F9, [r31]
_GetAlarm:
	.stack _GetAlarm = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 895
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 905
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 915
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; entry.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x0000000B, r10
	br9 .BB.LABEL.16_4
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 919
	andi 0x0000FFFF, r20, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.16_5
.BB.LABEL.16_3:	; if_else_bb.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000003, r10
.BB.LABEL.16_4:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 974
	zxb r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.16_5:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 950
	mov r20, r6
	mov r21, r7
	jarl _Os_GetAlarm.1, r31
	dispose 0x00000000, 0x00000061, [r31]
_GetAlarmBase:
	.stack _GetAlarmBase = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 985
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 995
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1005
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; entry.if_break_bb19_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x0000000B, r10
	br9 .BB.LABEL.17_4
.BB.LABEL.17_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1009
	andi 0x0000FFFF, r20, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.17_5
.BB.LABEL.17_3:	; if_else_bb.if_break_bb19_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000003, r10
.BB.LABEL.17_4:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1053
	zxb r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.17_5:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1031
	mov r20, r6
	mov r21, r7
	jarl _Os_GetAlarmBase.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000061, [r31]
_CancelAlarm:
	.stack _CancelAlarm = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1092
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1102
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1112
	andi 0x0000FFFF, r20, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1143
	mov r20, r6
	jarl _Os_CancelAlarm, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1166
	dispose 0x00000000, 0x00000041, [r31]
_SetRelAlarm:
	.stack _SetRelAlarm = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1209
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1219
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1229
	andi 0x0000FFFF, r20, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1260
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _Os_SetRelAlarm.1, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.19_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1283
	dispose 0x00000000, 0x00000071, [r31]
_SetAbsAlarm:
	.stack _SetAbsAlarm = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1326
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1336
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1346
	andi 0x0000FFFF, r20, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1377
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _Os_SetAbsAlarm.1, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.20_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1400
	dispose 0x00000000, 0x00000071, [r31]
