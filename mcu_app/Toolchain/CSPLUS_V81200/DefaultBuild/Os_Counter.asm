#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_Counter.c -oDefaultBuild\Os_Counter.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_c0ef8fdaa92742ea8ca15598203b6e92bz4brtsu.ihs
#@	compiled at Fri Mar 27 09:51:00 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_Counter.c"

	$reg_mode 32
	.dbl_size 8

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
_Os_InitCounter:
	.stack _Os_InitCounter = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 96
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 99
	jarl _Os_GetCoreIdLocal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 100
	shl 0x00000003, r10
	mov #_Os_CounterRange, r2
	add r10, r2
	ld.w 0x00000000[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 101
	ld.w 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 103
	cmp r21, r20
	ble9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 105
	jarl _Os_Panic, r31
	br9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 111
	andi 0x0000FFFF, r20, r2
	shl 0x00000002, r2
	mov #_Os_CCB, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 112
	st.w r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 113
	st.w r0, 0x00000004[r2]
	ori 0x0000FFFF, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 115
	st.w r5, 0x00000008[r2]
	add 0x00000001, r20
.BB.LABEL.5_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 109
	andi 0x0000FFFF, r20, r2
	andi 0x0000FFFF, r21, r5
	cmp r5, r2
	bl9 .BB.LABEL.5_2
.BB.LABEL.5_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 122
	dispose 0x00000000, 0x00000061, [r31]
_Os_CalcAbsTicks:
	.stack _Os_CalcAbsTicks = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 132
	mul 0x00000018, r8, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 139
	mov #_Os_CounterCfg, r2
	add r8, r2
	ld.w 0x00000000[r2], r2
	add r2, r2
	ori 0x00000001, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 142
	add r7, r6
	cmp r5, r6
	bnh9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 148
	add 0x00000002, r2
	sub r2, r6
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mov r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 152
	jmp [r31]
_Os_GetDistance:
	.stack _Os_GetDistance = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 162
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 170
	sub r6, r2
	cmp r7, r6
	bnh9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mul 0x00000018, r8, r0
	mov #_Os_CounterCfg, r5
	add r8, r5
	ld.w 0x00000000[r5], r10
	add r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 177
	add r2, r10
	add 0x00000002, r10
	jmp [r31]
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 182
	mov r2, r10
	jmp [r31]
_Os_IncrementCounterInternal.1:
	.stack _Os_IncrementCounterInternal.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 191
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 193
	mov r20, r2
	shl 0x00000002, r2
	mov #_Os_CCB, r5
	add r2, r5
	ld.w 0x00000000[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 197
	jarl _Os_Hal_SuspendInt, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 198
	ld.w 0x00000000[r21], r2
	st.w r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 199
	ld.w 0x00000000[r21], r6
	mov 0x00000001, r7
	mov r20, r8
	jarl _Os_CalcAbsTicks, r31
	st.w r10, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 200
	mov r22, r6
	jarl _Os_Hal_RestoreInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 204
	mov r20, r6
	jarl _Os_WorkAlarm, r31
	dispose 0x00000000, 0x00000071, [r31]
_Os_IncrementHardCounter:
	.stack _Os_IncrementHardCounter = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 221
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 224
	jarl _Os_IncrementCounterInternal.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_GetCounterValue.1:
	.stack _Os_GetCounterValue.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 234
	prepare 0x00000061, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 239
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 241
	mov r20, r2
	shl 0x00000002, r2
	mov #_Os_CCB, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.w 0x00000000[r2], r2
	mul 0x00000018, r20, r0
	mov #_Os_CounterCfg, r5
	add r20, r5
	ld.w 0x00000000[r5], r5
	add 0x00000001, r5
	divu r5, r2, r2
	st.w r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 243
	mov r10, r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000061, [r31]
_Os_GetElapsedValue.1:
	.stack _Os_GetElapsedValue.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 253
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 259
	mov r20, r2
	mul 0x00000018, r2, r0
	mov #_Os_CounterCfg, r5
	add r2, r5
	ld.w 0x00000000[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 261
	jarl _Os_Hal_SuspendInt, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 263
	addi 0x00000001, r23, r2
	shl 0x00000002, r20
	mov #_Os_CCB, r5
	add r20, r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000000[r5], r5
	divu r2, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 266
	mov r5, r2
	add r23, r2
	ld.w 0x00000000[r21], r6
	sub r6, r2
	divu r23, r2, r2
	st.w r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 270
	st.w r5, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 271
	mov r10, r6
	jarl _Os_Hal_RestoreInt, r31
	dispose 0x00000000, 0x00000079, [r31]
_IncrementCounter:
	.stack _IncrementCounter = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 282
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 291
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 293
	mov r21, r6
	jarl _Os_GetSystemContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 318
	andi 0x0000FFFF, r20, r6
	mov 0x00000003, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; entry.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.12_5
.BB.LABEL.12_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 322
	mov r20, r2
	mul 0x00000018, r2, r0
	mov #_Os_CounterCfg, r5
	add r2, r5
	ld.w 0x00000014[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 330
	mov r20, r2
	mul 0x00000018, r2, r0
	mov #_Os_CounterCfg, r5
	add r2, r5
	ld.hu 0x00000010[r5], r2
	cmp r2, r21
	bz9 .BB.LABEL.12_6
.BB.LABEL.12_4:	; if_else_bb21.if_break_bb36_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	movea 0x00000015, r0, r10
.BB.LABEL.12_5:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 362
	zxb r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.12_6:	; if_else_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 341
	mov r20, r6
	jarl _Os_IncrementCounterInternal.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000061, [r31]
_GetCounterValue:
	.stack _GetCounterValue = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 372
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 382
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 405
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 406
	andi 0x0000FFFF, r20, r6
	mov 0x00000003, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; entry.if_break_bb27_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mov 0x00000003, r10
.BB.LABEL.13_2:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 444
	zxb r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.13_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 410
	mov r20, r2
	mul 0x00000018, r2, r0
	mov #_Os_CounterCfg, r5
	add r2, r5
	ld.hu 0x00000010[r5], r2
	cmp r2, r22
	bz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_else_bb.if_break_bb27_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	movea 0x00000015, r0, r10
	br9 .BB.LABEL.13_2
.BB.LABEL.13_5:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 423
	mov r20, r6
	mov r21, r7
	jarl _Os_GetCounterValue.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000071, [r31]
_GetElapsedValue:
	.stack _GetElapsedValue = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 454
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 464
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 486
	jarl _Os_GetCoreIdLocal.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 487
	andi 0x0000FFFF, r20, r6
	mov 0x00000003, r7
	jarl _Os_ObjectIDCheck.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_1:	; entry.if_break_bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mov 0x00000003, r10
.BB.LABEL.14_2:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 539
	zxb r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.14_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 491
	mov r20, r2
	mul 0x00000018, r2, r0
	mov #_Os_CounterCfg, r5
	add r2, r5
	ld.hu 0x00000010[r5], r2
	cmp r2, r23
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_else_bb.if_break_bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	movea 0x00000015, r0, r10
	br9 .BB.LABEL.14_2
.BB.LABEL.14_5:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 512
	mov r20, r2
	mul 0x00000018, r2, r0
	mov #_Os_CounterCfg, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.w 0x00000000[r21], r5
	cmp r2, r5
	bnh9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; if_else_bb25.if_break_bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 0
	mov 0x00000008, r10
	br9 .BB.LABEL.14_2
.BB.LABEL.14_7:	; if_else_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_Counter.c", 518
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _Os_GetElapsedValue.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000079, [r31]
