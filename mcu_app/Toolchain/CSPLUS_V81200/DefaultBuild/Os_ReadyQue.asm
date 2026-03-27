#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\Os\Kernel\src\Os_ReadyQue.c -oDefaultBuild\Os_ReadyQue.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_4eb7f4d98df5447690e7f14f5ffe4465z02zpz0y.p0g
#@	compiled at Fri Mar 27 09:51:01 2026

	.file "..\..\Bsw\SystemServices\Os\Kernel\src\Os_ReadyQue.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Os_SCB_FA_Inf
	.public _Os_GetHighPrio
	.public _Os_ReadyQueueInsert
	.extern _Os_Panic
	.public _Os_ReadyQueueRemove
	.public _Os_ReadyQueueGetFirst
	.public _Os_InitReadyTable
	.public _Os_ClearPrioReadyMap
	.public _Os_ApplReadyQueueRemove

	.section .text, text
_Os_GetCurrentContext.1:
	.stack _Os_GetCurrentContext.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/inc/Os_Kernel.h", 135
	mov #_Os_SCB_FA_Inf, r10
	jmp [r31]
_Os_GetHighPrio:
	.stack _Os_GetHighPrio = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 81
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 86
	ld.bu 0x00000010[r6], r20
	addi 0xFFFFFFFF, r20, r2
	shr 0x00000004, r2
	add 0x00000001, r2
	cmp 0x00000002, r2
	ld.w 0x0000000C[r6], r2
	bl9 .BB.LABEL.2_7
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 92
	add 0xFFFFFFFF, r20
	mov 0xFFFFFFF0, r5
	and r5, r20
	mov r20, r5
	shr 0x00000003, r5
	add r2, r5
	br9 .BB.LABEL.2_5
.BB.LABEL.2_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 98
	add 0xFFFFFFFE, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 100
	cmp r2, r5
	bnc9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 102
	br9 .BB.LABEL.2_3
.BB.LABEL.2_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 111
	add 0xFFFFFFF0, r20
.BB.LABEL.2_5:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 96
	ld.hu 0x00000000[r5], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_6:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 114
	jarl _Os_GetHighPrioBit.1, r31
	add r20, r10
	zxh r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.2_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 118
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 120
	br9 .BB.LABEL.2_8
.BB.LABEL.2_9:	; if_break_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 126
	ld.hu 0x00000000[r2], r6
	jarl _Os_GetHighPrioBit.1, r31
	dispose 0x00000000, 0x00000041, [r31]
_Os_ReadyQueueInsert:
	.stack _Os_ReadyQueueInsert = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 139
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 144
	cmp 0x0000000A, r8
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	cmp 0x0000000C, r8
	bnz9 .BB.LABEL.3_9
.BB.LABEL.3_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 152
	ld.w 0x00000000[r6], r2
	mov r9, r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; switch_clause_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	mov r2, r5
	br9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 154
	ld.w 0x00000004[r6], r5
	mov r9, r8
	shl 0x00000002, r8
	add r8, r5
.BB.LABEL.3_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	ld.w 0x00000000[r5], r5
	add 0xFFFFFFFF, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 162
	mov r9, r2
	shl 0x00000002, r2
	ld.w 0x00000008[r6], r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov r9, r5
	shl 0x00000003, r5
	ld.w 0x00000000[r6], r8
	add r5, r8
	ld.w 0x00000000[r8], r5
	shl 0x00000002, r5
	add r5, r2
	st.w r7, 0x00000000[r2]
	br9 .BB.LABEL.3_8
.BB.LABEL.3_6:	; switch_clause_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 171
	mov r9, r2
	shl 0x00000002, r2
	ld.w 0x00000008[r6], r5
	add r2, r5
	ld.w 0x00000000[r5], r5
	mov r9, r8
	shl 0x00000003, r8
	ld.w 0x00000000[r6], r10
	add r8, r10
	ld.w 0x00000004[r10], r10
	shl 0x00000002, r10
	add r10, r5
	st.w r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 172
	ld.w 0x00000000[r6], r5
	add r8, r5
	ld.w 0x00000004[r5], r7
	add 0x00000001, r7
	st.w r7, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 173
	ld.w 0x00000000[r6], r5
	add r5, r8
	ld.w 0x00000004[r8], r7
	ld.w 0x00000004[r6], r8
	add r2, r8
	ld.w 0x00000000[r8], r2
	cmp r2, r7
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_then_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 175
	mov r9, r2
	shl 0x00000003, r2
	add r2, r5
	st.w r0, 0x00000004[r5]
.BB.LABEL.3_8:	; bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	andi 0x0000000F, r9, r2
	mov 0x00000001, r5
	shl r2, r5
	andi 0x0000FFF0, r9, r2
	shr 0x00000003, r2
	ld.w 0x0000000C[r6], r6
	add r2, r6
	ld.h 0x00000000[r6], r2
	or r5, r2
	st.h r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 209
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_9:	; switch_clause_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 204
	jarl _Os_Panic, r31
	dispose 0x00000000, 0x00000001, [r31]
_Os_ReadyQueueRemove:
	.stack _Os_ReadyQueueRemove = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 218
	mov r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 225
	shl 0x00000002, r2
	ld.w 0x00000008[r6], r5
	add r2, r5
	ld.w 0x00000000[r5], r5
	mov r7, r8
	shl 0x00000003, r8
	ld.w 0x00000000[r6], r9
	add r8, r9
	ld.w 0x00000000[r9], r9
	shl 0x00000002, r9
	add r9, r5
	ori 0x0000FFFF, r0, r9
	st.w r9, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 226
	ld.w 0x00000000[r6], r5
	add r8, r5
	ld.w 0x00000000[r5], r9
	add 0x00000001, r9
	st.w r9, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 228
	ld.w 0x00000000[r6], r5
	add r5, r8
	ld.w 0x00000000[r8], r8
	ld.w 0x00000004[r6], r9
	add r2, r9
	ld.w 0x00000000[r9], r2
	cmp r2, r8
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 230
	mov r7, r2
	shl 0x00000003, r2
	add r2, r5
	st.w r0, 0x00000000[r5]
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 233
	ld.w 0x00000000[r6], r2
	mov r7, r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	ld.w 0x00000004[r2], r2
	cmp r2, r5
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 235
	andi 0x0000000F, r7, r2
	mov 0x00000001, r5
	shl r2, r5
	not r5, r2
	andi 0x0000FFF0, r7, r5
	shr 0x00000003, r5
	ld.w 0x0000000C[r6], r6
	add r5, r6
	ld.h 0x00000000[r6], r5
	and r2, r5
	st.h r5, 0x00000000[r6]
.BB.LABEL.4_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 238
	jmp [r31]
_Os_ReadyQueueGetFirst:
	.stack _Os_ReadyQueueGetFirst = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 249
	ld.bu 0x00000010[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 254
	cmp r2, r7
	bge9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 263
	ld.w 0x00000008[r6], r2
	mov r7, r5
	shl 0x00000002, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000000[r6], r5
	shl 0x00000003, r7
	add r7, r5
	ld.w 0x00000000[r5], r5
	shl 0x00000002, r5
	add r5, r2
	ld.w 0x00000000[r2], r10
	jmp [r31]
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	ori 0x0000FFFF, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 268
	jmp [r31]
_Os_GetHighPrioBit.1:
	.stack _Os_GetHighPrioBit.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 277
	andi 0x0000FF00, r6, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 297
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 300
	shr 0x00000008, r6
	mov 0x00000008, r10
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 304
	andi 0x000000F0, r6, r0
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 307
	shr 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 306
	add 0x00000004, r10
.BB.LABEL.6_5:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 310
	mov #_mapTable.1.Os_GetHighPrioBit.1, r2
	add r6, r2
	ld.bu 0x00000000[r2], r2
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 311
	zxh r10
	jmp [r31]
_Os_InitReadyTable:
	.stack _Os_InitReadyTable = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 321
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 325
	jarl _Os_GetCurrentContext.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 326
	ld.w 0x00000000[r10], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 332
	andi 0x0000FFFF, r5, r6
	add r6, r6
	ld.w 0x0000000C[r2], r7
	add r6, r7
	st.h r0, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.7_2:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 329
	ld.bu 0x00000010[r2], r6
	add 0xFFFFFFFF, r6
	shr 0x00000004, r6
	add 0x00000001, r6
	andi 0x0000FFFF, r5, r7
	cmp r6, r7
	bl9 .BB.LABEL.7_1
.BB.LABEL.7_3:	; bb18.bb73_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.7_8
.BB.LABEL.7_4:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 341
	andi 0x0000FFFF, r5, r6
	shl 0x00000003, r6
	ld.w 0x00000000[r2], r7
	add r6, r7
	st.w r0, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 342
	ld.w 0x00000000[r2], r7
	add r6, r7
	st.w r0, 0x00000004[r7]
	mov 0x00000000, r6
	br9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 346
	andi 0x0000FFFF, r5, r7
	shl 0x00000002, r7
	ld.w 0x00000008[r2], r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	mov r6, r8
	shl 0x00000002, r8
	add r8, r7
	ori 0x0000FFFF, r0, r8
	st.w r8, 0x00000000[r7]
	add 0x00000001, r6
.BB.LABEL.7_6:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 344
	andi 0x0000FFFF, r5, r7
	shl 0x00000002, r7
	ld.w 0x00000004[r2], r8
	add r7, r8
	ld.w 0x00000000[r8], r7
	cmp r7, r6
	bl9 .BB.LABEL.7_5
.BB.LABEL.7_7:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	add 0x00000001, r5
.BB.LABEL.7_8:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 335
	andi 0x0000FFFF, r5, r6
	ld.bu 0x00000010[r2], r7
	cmp r7, r6
	blt9 .BB.LABEL.7_4
.BB.LABEL.7_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 350
	dispose 0x00000000, 0x00000001, [r31]
_Os_ClearPrioReadyMap:
	.stack _Os_ClearPrioReadyMap = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 360
	andi 0x0000000F, r7, r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 363
	shl r2, r5
	not r5, r2
	andi 0x0000FFF0, r7, r5
	shr 0x00000003, r5
	ld.w 0x0000000C[r6], r6
	add r5, r6
	ld.h 0x00000000[r6], r5
	and r2, r5
	st.h r5, 0x00000000[r6]
	jmp [r31]
_Os_ApplReadyQueueRemove:
	.stack _Os_ApplReadyQueueRemove = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 375
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 382
	ld.w 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 385
	mov r8, r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 386
	ld.w 0x00000004[r2], r9
	addi 0x00000004, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 381
	mov r8, r11
	shl 0x00000002, r11
	ld.w 0x00000008[r6], r12
	add r11, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 387
	ld.w 0x00000004[r6], r13
	add r11, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 393
	cmp r9, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 387
	ld.w 0x00000000[r13], r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 381
	ld.w 0x00000000[r12], r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 393
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 390
	mov r9, r13
	add r11, r13
	add 0xFFFFFFFF, r13
	divu r11, r13, r13
	shl 0x00000002, r13
	add r12, r13
	ld.w 0x00000000[r13], r13
	ori 0x0000FFFF, r0, r14
	cmp r14, r13
	bz9 .BB.LABEL.9_17
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	mov 0x00000000, r13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 401
	cmp r9, r5
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_else_bb.bb89_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	mov r11, r14
	br9 .BB.LABEL.9_6
.BB.LABEL.9_4:	; bb67
	mov r9, r14
	add r11, r14
	sub r5, r14
	divu r11, r14, r14
	br9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 413
	add r11, r9
	add 0xFFFFFFFF, r9
	divu r11, r9, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 412
	add 0x00000001, r13
.BB.LABEL.9_6:	; bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 409
	mov r5, r15
	add r13, r15
	divu r11, r15, r15
	shl 0x00000002, r15
	add r12, r15
	ld.w 0x00000000[r15], r15
	cmp r7, r15
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	cmp r14, r13
	bl9 .BB.LABEL.9_5
.BB.LABEL.9_8:	; bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 417
	cmp 0x00000000, r13
	bz9 .BB.LABEL.9_10
.BB.LABEL.9_9:	; bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 0
	cmp r9, r5
	bz9 .BB.LABEL.9_14
.BB.LABEL.9_10:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 422
	cmp 0x00000000, r13
	bz9 .BB.LABEL.9_12
.BB.LABEL.9_11:	; if_then_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 425
	mov r13, r15
	add r5, r15
	mov r5, r16
	shl 0x00000002, r16
	add r12, r16
	divu r11, r15, r15
	shl 0x00000002, r15
	add r12, r15
	ld.w 0x00000000[r15], r15
	st.w r15, 0x00000000[r16]
.BB.LABEL.9_12:	; if_break_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 429
	add 0x00000001, r5
	divu r11, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 405
	cmp r9, r5
	bnz9 .BB.LABEL.9_6
	br9 .BB.LABEL.9_14
.BB.LABEL.9_13:	; bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 437
	mov r9, r5
	add r13, r5
	divu r11, r5, r5
	shl 0x00000002, r5
	add r12, r5
	ori 0x0000FFFF, r0, r7
	st.w r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 439
	add 0xFFFFFFFF, r13
.BB.LABEL.9_14:	; bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 434
	cmp 0x00000000, r13
	bnz9 .BB.LABEL.9_13
.BB.LABEL.9_15:	; bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 442
	st.w r9, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 445
	ld.w 0x00000000[r2], r2
	cmp r2, r9
	bnz9 .BB.LABEL.9_17
.BB.LABEL.9_16:	; if_then_bb189
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 448
	mov r8, r7
	jarl _Os_ClearPrioReadyMap, r31
.BB.LABEL.9_17:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/SystemServices/Os/Kernel/src/Os_ReadyQue.c", 453
	dispose 0x00000000, 0x00000001, [r31]
	.section .const, const
_mapTable.1.Os_GetHighPrioBit.1:
	.ds (2)
	.db 0x01,0x01,0x02,0x02,0x02,0x02,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03
