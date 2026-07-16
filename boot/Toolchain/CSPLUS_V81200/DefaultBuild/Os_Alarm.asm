#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Alarm.c -oDefaultBuild\Os_Alarm.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_70e0c413b2a24aabaced0b807d426d30b4cflsnm.54c
#@	compiled at Thu Jul 16 13:41:50 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Alarm.c"

	$reg_mode 22
	.dbl_size 4

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
_Os_InitAlarm:
	.stack _Os_InitAlarm = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 284
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 288
	jarl _Os_GetCoreIdLocal.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 301
	shl 0x00000003, r10
	mov #_Os_AlarmIdRange, r5
	add r10, r5
	ld.w 0x00000000[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 302
	ld.w 0x00000004[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 304
	cmp r26, r25
	ble9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 306
	jarl32 _Os_Panic, r31
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 311
	andi 0x0000FFFF, r25, r5
	mov r5, r6
	shl 0x00000002, r6
	mov #_Os_ACB, r7
	add r6, r7
	ld.w 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 312
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 313
	st.w r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 315
	st.w r5, 0x00000008[r6]
	add 0x00000001, r25
.BB.LABEL.4_3:	; bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 309
	andi 0x0000FFFF, r25, r5
	andi 0x0000FFFF, r26, r6
	cmp r6, r5
	bl9 .BB.LABEL.4_2
.BB.LABEL.4_4:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 340
	dispose 0x00000000, 0x00000301, [r31]
_Os_GetAlarm.1:
	.stack _Os_GetAlarm.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 350
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 356
	jarl32 _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 357
	mov r25, r5
	shl 0x00000002, r5
	mov #_Os_ACB, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.w 0x00000008[r5], r6
	cmp r6, r25
	mov r10, r27
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000005, r25
	br9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 363
	shl 0x00000004, r25
	mov #_Os_AlarmCfg, r6
	add r25, r6
	ld.w 0x0000000C[r6], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 366
	mov r8, r25
	shl 0x00000002, r25
	mov #_Os_CCB, r6
	add r25, r6
	ld.w 0x00000000[r6], r25
	ld.w 0x00000000[r25], r6
	ld.w 0x00000000[r5], r7
	jarl32 _Os_GetDistance, r31
	st.w r10, 0x00000000[r26]
	mov 0x00000000, r25
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 370
	mov r27, r6
	jarl32 _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 373
	andi 0x000000FF, r25, r10
	dispose 0x00000000, 0x00000381, [r31]
_Os_ProcessAlarm.1:
	.stack _Os_ProcessAlarm.1 = 32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 383
	prepare 0x00000B87, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 391
	ld.w 0x00000000[r7], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 392
	mov r25, r26
	shl 0x00000002, r26
	mov #_Os_ACB, r5
	add r5, r26
	ld.w 0x00000000[r26], r5
	ld.w 0x00000008[r5], r5
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 398
	st.w r5, 0x00000008[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 399
	ld.w 0x00000000[r26], r5
	st.w r25, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 401
	mov r25, r5
	shl 0x00000004, r5
	mov #_Os_AlarmCfg, r27
	add r5, r27
	ld.w 0x00000004[r27], r5
	add 0x00000004, r27
	cmp 0x00000000, r5
	ld.w 0x00000020[r3], r28
	mov r9, r29
	mov r6, r30
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 418
	ld.w 0x00000000[r28], r6
	jarl32 _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 419
	ld.w 0x00000000[r27], r5
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 420
	jarl32 _Os_Hal_SuspendInt, r31
	st.w r10, 0x00000000[r28]
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 438
	ld.w 0x00000000[r26], r26
	ld.w 0x00000004[r26], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 440
	ld.w 0x00000000[r26], r6
	mov r30, r8
	jarl32 _Os_CalcAbsTicks, r31
	st.w r10, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 444
	ld.w 0x00000008[r29], r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 445
	ld.w 0x00000004[r29], r8
	mov r3, r7
	mov r25, r6
	jarl _Os_InsertAlarm.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 446
	ld.w 0x00000000[r3], r5
	st.w r5, 0x00000008[r29]
.BB.LABEL.6_4:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 450
	dispose 0x00000004, 0x00000B87, [r31]
_Os_WorkAlarm:
	.stack _Os_WorkAlarm = 36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 460
	prepare 0x00000B87, 0x00000008
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 471
	mov r25, r5
	mul 0x00000018, r5, r0
	mov #_Os_CounterCfg, r6
	add r5, r6
	ld.w 0x00000000[r6], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 473
	jarl32 _Os_Hal_SuspendInt, r31
	st.w r10, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 474
	mov r25, r5
	shl 0x00000002, r5
	mov #_Os_CCB, r6
	add r5, r6
	ld.w 0x00000000[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 475
	ld.w 0x00000000[r27], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 476
	addi 0x00000008, r27, r29
	mov 0x00000000, r30
	br9 .BB.LABEL.7_5
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 480
	ld.w 0x00000008[r27], r5
	ori 0x0000FFFF, r0, r6
	cmp r6, r5
	bnz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; bb.bb45_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000001, r30
	br9 .BB.LABEL.7_5
.BB.LABEL.7_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 484
	shl 0x00000002, r5
	mov #_Os_ACB, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.w 0x00000000[r5], r6
	mov r28, r7
	mov r25, r8
	jarl32 _Os_GetDistance, r31
	cmp r26, r10
	bh9 .BB.LABEL.7_2
.BB.LABEL.7_4:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	movea 0x00000004, r3, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 488
	st.w r5, 0x00000000[r3]
	mov #_Os_SCB_FA_Inf, r8
	mov r25, r6
	mov r29, r7
	mov r27, r9
	jarl _Os_ProcessAlarm.1, r31
.BB.LABEL.7_5:	; bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 478
	andi 0x000000FF, r30, r0
	bz9 .BB.LABEL.7_1
.BB.LABEL.7_6:	; bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 495
	ld.w 0x00000004[r3], r6
	jarl32 _Os_Hal_RestoreInt, r31
	dispose 0x00000008, 0x00000B87, [r31]
_Os_InsertAlarm.1:
	.stack _Os_InsertAlarm.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 510
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 513
	andi 0x0000FFFF, r25, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.8_17
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 515
	mov r25, r5
	shl 0x00000002, r5
	mov #_Os_ACB, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.w 0x00000000[r5], r5
	mov 0x00000000, r8
	ori 0x0000FFFF, r0, r9
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 520
	cmp r27, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 517
	ld.w 0x00000000[r26], r7
	bh9 .BB.LABEL.8_7
	br9 .BB.LABEL.8_13
.BB.LABEL.8_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	ori 0x0000FFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 524
	cmp r10, r7
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; bb.bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000001, r8
	br9 .BB.LABEL.8_7
.BB.LABEL.8_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 528
	mov r7, r10
	shl 0x00000002, r10
	mov #_Os_ACB, r11
	add r10, r11
	ld.w 0x00000000[r11], r10
	ld.w 0x00000000[r10], r11
	cmp r27, r11
	bl9 .BB.LABEL.8_3
.BB.LABEL.8_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	cmp r5, r11
	bh9 .BB.LABEL.8_3
.BB.LABEL.8_6:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 531
	ld.w 0x00000008[r10], r10
	mov r7, r9
	mov r10, r7
.BB.LABEL.8_7:	; bb64
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 522
	andi 0x000000FF, r8, r10
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.8_2
	br9 .BB.LABEL.8_14
.BB.LABEL.8_8:	; bb72
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	ori 0x0000FFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 543
	cmp r10, r7
	bnz9 .BB.LABEL.8_10
.BB.LABEL.8_9:	; bb72.bb114_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000001, r8
	br9 .BB.LABEL.8_13
.BB.LABEL.8_10:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 547
	mov r7, r10
	shl 0x00000002, r10
	mov #_Os_ACB, r11
	add r10, r11
	ld.w 0x00000000[r11], r10
	ld.w 0x00000000[r10], r11
	cmp r27, r11
	bnc9 .BB.LABEL.8_12
.BB.LABEL.8_11:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	cmp r5, r11
	bh9 .BB.LABEL.8_9
.BB.LABEL.8_12:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 550
	ld.w 0x00000008[r10], r10
	mov r7, r9
	mov r10, r7
.BB.LABEL.8_13:	; bb114
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 541
	andi 0x000000FF, r8, r10
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.8_8
.BB.LABEL.8_14:	; if_break_bb121
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 559
	ld.w 0x00000000[r6], r5
	st.w r7, 0x00000008[r5]
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 561
	cmp r5, r9
	bz9 .BB.LABEL.8_16
.BB.LABEL.8_15:	; if_then_bb131
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 563
	shl 0x00000002, r9
	mov #_Os_ACB, r26
	add r9, r26
	ld.w 0x00000000[r26], r26
	st.w r25, 0x00000008[r26]
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.8_16:	; if_else_bb137
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 567
	st.w r25, 0x00000000[r26]
.BB.LABEL.8_17:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 572
	dispose 0x00000000, 0x00000381, [r31]
_Os_DeleteAlarm.1:
	.stack _Os_DeleteAlarm.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 581
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 583
	andi 0x0000FFFF, r25, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.9_9
.BB.LABEL.9_1:	; entry.bb53_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	ori 0x0000FFFF, r0, r5
	mov r26, r6
	br9 .BB.LABEL.9_8
.BB.LABEL.9_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 594
	cmp r25, r5
	bnz9 .BB.LABEL.9_7
.BB.LABEL.9_3:	; if_then_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	ori 0x0000FFFF, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 596
	cmp r6, r7
	mov r5, r6
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 598
	shl 0x00000002, r6
	mov #_Os_ACB, r7
	add r7, r6
	ld.w 0x00000000[r6], r6
	ld.w 0x00000008[r6], r6
	st.w r6, 0x00000000[r26]
	br9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 602
	shl 0x00000002, r6
	mov #_Os_ACB, r25
	add r25, r6
	shl 0x00000002, r7
	add r7, r25
	ld.w 0x00000000[r25], r7
	ld.w 0x00000000[r6], r6
	ld.w 0x00000008[r6], r6
	st.w r6, 0x00000008[r7]
.BB.LABEL.9_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 604
	mov r5, r6
	shl 0x00000002, r6
	mov #_Os_ACB, r7
	add r7, r6
	ld.w 0x00000000[r6], r6
	st.w r5, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 605
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.9_7:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 610
	mov r5, r6
	shl 0x00000002, r6
	mov #_Os_ACB, r7
	add r7, r6
	ld.w 0x00000000[r6], r6
	add 0x00000008, r6
.BB.LABEL.9_8:	; bb53
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov r5, r7
	ld.w 0x00000000[r6], r5
	ori 0x0000FFFF, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 592
	cmp r6, r5
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_9:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 616
	dispose 0x00000000, 0x00000301, [r31]
_Os_CancelAlarm:
	.stack _Os_CancelAlarm = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 626
	prepare 0x00000381, 0x00000004
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 634
	jarl32 _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 635
	mov r25, r5
	shl 0x00000002, r5
	mov #_Os_ACB, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.w 0x00000008[r5], r5
	cmp r5, r25
	mov r10, r26
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000005, r25
	br9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 641
	mov r25, r5
	shl 0x00000004, r5
	mov #_Os_AlarmCfg, r6
	add r5, r6
	ld.w 0x0000000C[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 642
	shl 0x00000002, r5
	mov #_Os_CCB, r6
	add r5, r6
	ld.w 0x00000000[r6], r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 643
	ld.w 0x00000008[r27], r5
	st.w r5, 0x00000000[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 644
	mov r25, r6
	jarl _Os_DeleteAlarm.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 645
	ld.w 0x00000000[r3], r25
	st.w r25, 0x00000008[r27]
	mov 0x00000000, r25
.BB.LABEL.10_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 647
	mov r26, r6
	jarl32 _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 650
	andi 0x000000FF, r25, r10
	dispose 0x00000004, 0x00000381, [r31]
_Os_AbsAlarmCheckStatus.1:
	.stack _Os_AbsAlarmCheckStatus.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 659
	shl 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 667
	mov #_Os_AlarmCfg, r5
	add r6, r5
	ld.w 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 669
	mul 0x00000018, r5, r0
	mov #_Os_CounterCfg, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 671
	cmp r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 670
	ld.w 0x00000004[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 671
	bnc9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.if_break_bb52_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000008, r10
	br9 .BB.LABEL.11_4
.BB.LABEL.11_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 675
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_3:	; if_else_bb.if_break_bb52_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000000, r10
.BB.LABEL.11_4:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 689
	zxb r10
	jmp [r31]
.BB.LABEL.11_5:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	cmp r8, r5
	bl9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; bb
	cmp r8, r6
	bnh9 .BB.LABEL.11_3
.BB.LABEL.11_7:	; if_then_bb50
	mov 0x00000008, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 677
	jmp [r31]
_Os_SetAbsAlarm.1:
	.stack _Os_SetAbsAlarm.1 = 40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 699
	prepare 0x00000B87, 0x0000000C
	mov r6, r25
	mov r7, r26
	mov r8, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 702
	jarl _Os_AbsAlarmCheckStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 704
	addi 0x00000000, r10, r5
	st.w r5, 0x00000000[r3]
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 707
	jarl32 _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 708
	mov r25, r5
	shl 0x00000002, r5
	mov #_Os_ACB, r27
	add r5, r27
	ld.w 0x00000000[r27], r5
	ld.w 0x00000008[r5], r5
	cmp r5, r25
	mov r10, r28
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 710
	mov r28, r6
	jarl32 _Os_Hal_RestoreInt, r31
	mov 0x00000007, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 711
	dispose 0x0000000C, 0x00000B87, [r31]
.BB.LABEL.12_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 715
	mov r25, r5
	shl 0x00000004, r5
	mov #_Os_AlarmCfg, r6
	add r5, r6
	ld.w 0x0000000C[r6], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 716
	mov r8, r5
	mul 0x00000018, r5, r0
	mov #_Os_CounterCfg, r6
	add r5, r6
	ld.w 0x00000000[r6], r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 717
	mov r8, r5
	shl 0x00000002, r5
	mov #_Os_CCB, r6
	add r5, r6
	ld.w 0x00000000[r6], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 719
	ld.w 0x00000000[r30], r6
	mov r26, r7
	jarl32 _Os_GetDistance, r31
	cmp r29, r10
	ld.w 0x00000000[r27], r5
	bnh9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_else_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 725
	add r26, r29
	add 0x00000001, r29
	mov r29, r26
.BB.LABEL.12_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	st.w r26, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 728
	ld.w 0x00000000[r27], r5
	ld.w 0x00000004[r3], r6
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 729
	ld.w 0x00000008[r30], r5
	st.w r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 730
	ld.w 0x00000000[r30], r8
	movea 0x00000008, r3, r7
	mov r25, r6
	jarl _Os_InsertAlarm.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 731
	ld.w 0x00000008[r3], r5
	st.w r5, 0x00000008[r30]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 732
	mov r28, r6
	jarl32 _Os_Hal_RestoreInt, r31
.BB.LABEL.12_6:	; if_break_bb82
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	ld.w 0x00000000[r3], r5
	mov r5, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 737
	dispose 0x0000000C, 0x00000B87, [r31]
_Os_GetAlarmBase.1:
	.stack _Os_GetAlarmBase.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 747
	shl 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 749
	mov #_Os_AlarmCfg, r5
	add r6, r5
	ld.w 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 752
	mul 0x00000018, r5, r0
	mov #_Os_CounterCfg, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	st.w r5, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 753
	ld.w 0x00000004[r6], r5
	st.w r5, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 754
	ld.w 0x00000008[r6], r5
	st.w r5, 0x00000004[r7]
	jmp [r31]
_Os_RelAlarmCheckStatus.1:
	.stack _Os_RelAlarmCheckStatus.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 764
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 778
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; entry.if_break_bb59_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000008, r10
	br9 .BB.LABEL.14_5
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 785
	shl 0x00000004, r6
	mov #_Os_AlarmCfg, r5
	add r6, r5
	ld.w 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 787
	mul 0x00000018, r5, r0
	mov #_Os_CounterCfg, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 788
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 790
	cmp r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 787
	ld.w 0x00000004[r6], r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 790
	bl9 .BB.LABEL.14_1
.BB.LABEL.14_3:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 794
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.14_6
.BB.LABEL.14_4:	; if_else_bb29.if_break_bb59_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000000, r10
.BB.LABEL.14_5:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 808
	zxb r10
	jmp [r31]
.BB.LABEL.14_6:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	cmp r8, r5
	bl9 .BB.LABEL.14_8
.BB.LABEL.14_7:	; bb
	cmp r8, r6
	bnh9 .BB.LABEL.14_4
.BB.LABEL.14_8:	; if_then_bb56
	mov 0x00000008, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 796
	jmp [r31]
_Os_SetRelAlarm.1:
	.stack _Os_SetRelAlarm.1 = 40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 817
	prepare 0x00000B87, 0x0000000C
	mov r6, r25
	mov r7, r5
	st.w r5, 0x00000000[r3]
	mov r8, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 822
	jarl _Os_RelAlarmCheckStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 824
	addi 0x00000000, r10, r26
	bnz9 .BB.LABEL.15_4
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 827
	jarl32 _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 828
	mov r25, r5
	shl 0x00000002, r5
	mov #_Os_ACB, r27
	add r5, r27
	ld.w 0x00000000[r27], r28
	ld.w 0x00000008[r28], r5
	cmp r5, r25
	mov r10, r29
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 830
	mov r29, r6
	jarl32 _Os_Hal_RestoreInt, r31
	mov 0x00000007, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 831
	dispose 0x0000000C, 0x00000B87, [r31]
.BB.LABEL.15_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 835
	mov r25, r5
	shl 0x00000004, r5
	mov #_Os_AlarmCfg, r6
	add r5, r6
	ld.w 0x0000000C[r6], r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 836
	mov r8, r5
	shl 0x00000002, r5
	mov #_Os_CCB, r6
	add r5, r6
	ld.w 0x00000000[r6], r30
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 838
	ld.w 0x00000000[r30], r6
	ld.w 0x00000000[r3], r5
	mov r5, r7
	jarl32 _Os_CalcAbsTicks, r31
	st.w r10, 0x00000000[r28]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 840
	ld.w 0x00000000[r27], r5
	ld.w 0x00000004[r3], r6
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 841
	ld.w 0x00000008[r30], r5
	st.w r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 842
	ld.w 0x00000000[r30], r8
	movea 0x00000008, r3, r7
	mov r25, r6
	jarl _Os_InsertAlarm.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 843
	ld.w 0x00000008[r3], r5
	st.w r5, 0x00000008[r30]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 844
	mov r29, r6
	jarl32 _Os_Hal_RestoreInt, r31
.BB.LABEL.15_4:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov r26, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 849
	dispose 0x0000000C, 0x00000B87, [r31]
_GetAlarm:
	.stack _GetAlarm = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 895
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 905
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 915
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; entry.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x0000000B, r10
	br9 .BB.LABEL.16_4
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 919
	andi 0x0000FFFF, r25, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.16_5
.BB.LABEL.16_3:	; if_else_bb.if_break_bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000003, r10
.BB.LABEL.16_4:	; if_break_bb20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 974
	zxb r10
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.16_5:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 950
	mov r25, r6
	mov r26, r7
	jarl _Os_GetAlarm.1, r31
	dispose 0x00000000, 0x00000301, [r31]
_GetAlarmBase:
	.stack _GetAlarmBase = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 985
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 995
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1005
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; entry.if_break_bb19_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x0000000B, r10
	br9 .BB.LABEL.17_4
.BB.LABEL.17_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1009
	andi 0x0000FFFF, r25, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.17_5
.BB.LABEL.17_3:	; if_else_bb.if_break_bb19_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000003, r10
.BB.LABEL.17_4:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1053
	zxb r10
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.17_5:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1031
	mov r25, r6
	mov r26, r7
	jarl _Os_GetAlarmBase.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000301, [r31]
_CancelAlarm:
	.stack _CancelAlarm = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1092
	prepare 0x00000201, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1102
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1112
	andi 0x0000FFFF, r25, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1143
	mov r25, r6
	jarl _Os_CancelAlarm, r31
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1166
	dispose 0x00000000, 0x00000201, [r31]
_SetRelAlarm:
	.stack _SetRelAlarm = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1209
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1219
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1229
	andi 0x0000FFFF, r25, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1260
	mov r25, r6
	mov r26, r7
	mov r27, r8
	jarl _Os_SetRelAlarm.1, r31
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.19_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1283
	dispose 0x00000000, 0x00000381, [r31]
_SetAbsAlarm:
	.stack _SetAbsAlarm = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1326
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1336
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1346
	andi 0x0000FFFF, r25, r6
	mov 0x00000002, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1377
	mov r25, r6
	mov r26, r7
	mov r27, r8
	jarl _Os_SetAbsAlarm.1, r31
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.20_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Alarm.c", 1400
	dispose 0x00000000, 0x00000381, [r31]
