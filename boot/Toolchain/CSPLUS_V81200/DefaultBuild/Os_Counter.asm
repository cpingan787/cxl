#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Counter.c -oDefaultBuild\Os_Counter.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_64d8711ce6ea471793303e790c4789b7o1zpb42b.xoo
#@	compiled at Thu Jul 16 13:41:26 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Counter.c"

	$reg_mode 22
	.dbl_size 4

	.extern _Os_SCB_FA_Inf
	.extern _Os_ObjectIDMaxTable
	.extern _Os_CounterCfg
	.extern _Os_CCB
	.extern _Os_CounterRange
	.public _Os_InitCounter
	.extern _Os_Panic
	.public _Os_CalcAbsTicks
	.public _Os_GetDistance
	.extern _Os_Hal_SuspendInt
	.extern _Os_Hal_RestoreInt
	.extern _Os_WorkAlarm
	.public _Os_IncrementHardCounter
	.public _IncrementCounter
	.public _GetCounterValue
	.public _GetElapsedValue

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
_Os_InitCounter:
	.stack _Os_InitCounter = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 96
	prepare 0x00000301, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 99
	jarl _Os_GetCoreIdLocal.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 100
	shl 0x00000003, r10
	mov #_Os_CounterRange, r5
	add r10, r5
	ld.w 0x00000000[r5], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 101
	ld.w 0x00000004[r5], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 103
	cmp r26, r25
	ble9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 105
	jarl32 _Os_Panic, r31
	br9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 111
	andi 0x0000FFFF, r25, r5
	shl 0x00000002, r5
	mov #_Os_CCB, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 112
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 113
	st.w r0, 0x00000004[r5]
	ori 0x0000FFFF, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 115
	st.w r6, 0x00000008[r5]
	add 0x00000001, r25
.BB.LABEL.5_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 109
	andi 0x0000FFFF, r25, r5
	andi 0x0000FFFF, r26, r6
	cmp r6, r5
	bl9 .BB.LABEL.5_2
.BB.LABEL.5_4:	; return
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 122
	dispose 0x00000000, 0x00000301, [r31]
_Os_CalcAbsTicks:
	.stack _Os_CalcAbsTicks = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 132
	mul 0x00000018, r8, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 139
	mov #_Os_CounterCfg, r5
	add r8, r5
	ld.w 0x00000000[r5], r5
	add r5, r5
	ori 0x00000001, r5, r8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 142
	add r7, r6
	cmp r8, r6
	bnh9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 148
	add 0x00000002, r5
	sub r5, r6
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mov r6, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 152
	jmp [r31]
_Os_GetDistance:
	.stack _Os_GetDistance = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 162
	mov r7, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 170
	sub r6, r5
	cmp r7, r6
	bnh9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mul 0x00000018, r8, r0
	mov #_Os_CounterCfg, r6
	add r8, r6
	ld.w 0x00000000[r6], r10
	add r10, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 177
	add r5, r10
	add 0x00000002, r10
	jmp [r31]
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 182
	mov r5, r10
	jmp [r31]
_Os_IncrementCounterInternal.1:
	.stack _Os_IncrementCounterInternal.1 = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 191
	prepare 0x00000381, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 193
	mov r25, r5
	shl 0x00000002, r5
	mov #_Os_CCB, r6
	add r5, r6
	ld.w 0x00000000[r6], r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 197
	jarl32 _Os_Hal_SuspendInt, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 198
	ld.w 0x00000000[r26], r5
	st.w r5, 0x00000004[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 199
	ld.w 0x00000000[r26], r6
	mov 0x00000001, r7
	mov r25, r8
	jarl _Os_CalcAbsTicks, r31
	st.w r10, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 200
	mov r27, r6
	jarl32 _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 204
	mov r25, r6
	jarl32 _Os_WorkAlarm, r31
	dispose 0x00000000, 0x00000381, [r31]
_Os_IncrementHardCounter:
	.stack _Os_IncrementHardCounter = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 221
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 224
	jarl _Os_IncrementCounterInternal.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_GetCounterValue.1:
	.stack _Os_GetCounterValue.1 = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 234
	prepare 0x00000301, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 239
	jarl32 _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 241
	mov r25, r5
	shl 0x00000002, r5
	mov #_Os_CCB, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.w 0x00000000[r5], r5
	mul 0x00000018, r25, r0
	mov #_Os_CounterCfg, r6
	add r25, r6
	ld.w 0x00000000[r6], r6
	add 0x00000001, r6
	divqu r6, r5, r5
	st.w r5, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 243
	mov r10, r6
	jarl32 _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000301, [r31]
_Os_GetElapsedValue.1:
	.stack _Os_GetElapsedValue.1 = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 253
	prepare 0x00000385, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 259
	mov r25, r5
	mul 0x00000018, r5, r0
	mov #_Os_CounterCfg, r6
	add r5, r6
	ld.w 0x00000000[r6], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 261
	jarl32 _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 263
	addi 0x00000001, r28, r5
	shl 0x00000002, r25
	mov #_Os_CCB, r6
	add r25, r6
	ld.w 0x00000000[r6], r6
	ld.w 0x00000000[r6], r6
	divqu r5, r6, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 266
	mov r6, r5
	add r28, r5
	ld.w 0x00000000[r26], r7
	sub r7, r5
	divqu r28, r5, r5
	st.w r5, 0x00000000[r27]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 270
	st.w r6, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 271
	mov r10, r6
	jarl32 _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000385, [r31]
_IncrementCounter:
	.stack _IncrementCounter = 12
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 282
	prepare 0x00000301, 0x00000000
	mov r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 291
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 293
	mov r26, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 318
	andi 0x0000FFFF, r25, r6
	mov 0x00000003, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; entry.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.12_5
.BB.LABEL.12_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 322
	mov r25, r5
	mul 0x00000018, r5, r0
	mov #_Os_CounterCfg, r6
	add r5, r6
	ld.w 0x00000014[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 330
	mov r25, r5
	mul 0x00000018, r5, r0
	mov #_Os_CounterCfg, r6
	add r5, r6
	ld.hu 0x00000010[r6], r5
	cmp r5, r26
	bz9 .BB.LABEL.12_6
.BB.LABEL.12_4:	; if_else_bb21.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	movea 0x00000015, r0, r10
.BB.LABEL.12_5:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 362
	zxb r10
	dispose 0x00000000, 0x00000301, [r31]
.BB.LABEL.12_6:	; if_else_bb33
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 341
	mov r25, r6
	jarl _Os_IncrementCounterInternal.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000301, [r31]
_GetCounterValue:
	.stack _GetCounterValue = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 372
	prepare 0x00000381, 0x00000000
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 382
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 405
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 406
	andi 0x0000FFFF, r25, r6
	mov 0x00000003, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; entry.if_break_bb27_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mov 0x00000003, r10
.BB.LABEL.13_2:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 444
	zxb r10
	dispose 0x00000000, 0x00000381, [r31]
.BB.LABEL.13_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 410
	mov r25, r5
	mul 0x00000018, r5, r0
	mov #_Os_CounterCfg, r6
	add r5, r6
	ld.hu 0x00000010[r6], r5
	cmp r5, r27
	bz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_else_bb.if_break_bb27_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	movea 0x00000015, r0, r10
	br9 .BB.LABEL.13_2
.BB.LABEL.13_5:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 423
	mov r25, r6
	mov r26, r7
	jarl _Os_GetCounterValue.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000381, [r31]
_GetElapsedValue:
	.stack _GetElapsedValue = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 454
	prepare 0x00000385, 0x00000000
	mov r6, r25
	mov r7, r26
	mov r8, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 464
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 486
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 487
	andi 0x0000FFFF, r25, r6
	mov 0x00000003, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_1:	; entry.if_break_bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mov 0x00000003, r10
.BB.LABEL.14_2:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 539
	zxb r10
	dispose 0x00000000, 0x00000385, [r31]
.BB.LABEL.14_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 491
	mov r25, r5
	mul 0x00000018, r5, r0
	mov #_Os_CounterCfg, r6
	add r5, r6
	ld.hu 0x00000010[r6], r5
	cmp r5, r28
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_else_bb.if_break_bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	movea 0x00000015, r0, r10
	br9 .BB.LABEL.14_2
.BB.LABEL.14_5:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 512
	mov r25, r5
	mul 0x00000018, r5, r0
	mov #_Os_CounterCfg, r6
	add r5, r6
	ld.w 0x00000000[r6], r5
	ld.w 0x00000000[r26], r6
	cmp r5, r6
	bnh9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; if_else_bb25.if_break_bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mov 0x00000008, r10
	br9 .BB.LABEL.14_2
.BB.LABEL.14_7:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 518
	mov r25, r6
	mov r26, r7
	mov r27, r8
	jarl _Os_GetElapsedValue.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000385, [r31]
