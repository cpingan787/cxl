#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Com\Com_Internal.c -oDefaultBuild\Com_Internal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_864fe49dc5cd47e1af9f6b207c0daa5daalnuedk.ugl
#@	compiled at Fri Mar 27 09:50:26 2026

	.file "..\..\Bsw\Communication\Common\Com\Com_Internal.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Com_TxModeTrueDirectRepetitions
	.extern _Com_SignalBoolRuntimeBuff
	.extern _Com_SignalBoolInitValue
	.extern _Com_Signal8BitRuntimeBuff
	.extern _Com_Signal8BitInitValue
	.extern _Com_Signal16BitRuntimeBuff
	.extern _Com_Signal16BitInitValue
	.extern _Com_Signal32BitRuntimeBuff
	.extern _Com_Signal32BitInitValue
	.extern _Com_Signal64BitRuntimeBuff
	.extern _Com_Signal64BitInitValue
	.public _Com_TxSignalGroupState, 32
	.public _Com_RxSignalTimeOutCnt, 12
	.public _Com_RxSignalGroupTimeOutCnt, 2
	.public _Com_TxSignalTMCStateInit
	.public _Com_TxSignalGroupTriggerFlagInit
	.public _Com_InitSignalBuffer
	.extern _SchM_Enter_Com_Context
	.extern _ILib_memcpy
	.extern _SchM_Exit_Com_Context
	.public _Com_SignalUnPackHandle
	.public _Com_TxSignalPackHandle
	.public _Com_TxIpduTMSHandle

	.section .text, text
_Com_EndianSwap.1:
	.stack _Com_EndianSwap.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 99
	movea 0x000000FF, r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 104
	shr 0x00000001, r7
	mov 0x00000000, r5
	br9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 110
	andi 0x000000FF, r5, r8
	mov r2, r9
	sub r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 112
	add r6, r8
	ld.b 0x00000000[r8], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 111
	zxb r9
	add r6, r9
	ld.b 0x00000000[r9], r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 112
	st.b r10, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 113
	st.b r11, 0x00000000[r8]
	add 0x00000001, r5
.BB.LABEL.1_2:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 108
	andi 0x000000FF, r5, r8
	andi 0x000000FF, r7, r9
	cmp r9, r8
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 115
	jmp [r31]
_Com_TxSignalTMCStateInit:
	.stack _Com_TxSignalTMCStateInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 137
	jmp [r31]
_Com_TxSignalGroupTriggerFlagInit:
	.stack _Com_TxSignalGroupTriggerFlagInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 162
	mov 0x00000000, r2
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 167
	andi 0x0000FFFF, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 168
	shl 0x00000002, r5
	mov #_Com_TxSignalGroupState, r6
	add r5, r6
	clr1 0x00000000, 0x00000002[r6]
	add 0x00000001, r2
.BB.LABEL.3_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 165
	andi 0x0000FFFF, r2, r5
	cmp 0x00000008, r5
	bl9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 170
	jmp [r31]
_Com_InitSignalBuffer:
	.stack _Com_InitSignalBuffer = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 187
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 189
	jarl _SchM_Enter_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 190
	cmp 0x0000000C, r20
	bh9 .BB.LABEL.4_8
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	shl 0x00000001, r20
	jmp #.SWITCH.LABEL.4_9[r20]
.SWITCH.LABEL.4_9:
	br9 .BB.LABEL.4_2
	br9 .BB.LABEL.4_6
	br9 .BB.LABEL.4_7
	br9 .BB.LABEL.4_5
	br9 .BB.LABEL.4_6
	br9 .BB.LABEL.4_7
	br9 .BB.LABEL.4_4
	br9 .BB.LABEL.4_5
	br9 .BB.LABEL.4_6
	br9 .BB.LABEL.4_7
	br9 .BB.LABEL.4_4
	br9 .BB.LABEL.4_3
	br9 .BB.LABEL.4_3
.SWITCH.LABEL.4_9.END:
.BB.LABEL.4_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 196
	mov #_Com_SignalBoolRuntimeBuff, r22
	add r21, r22
	mov #_Com_SignalBoolInitValue, r2
	add r2, r21
	ld.b 0x00000000[r21], r21
	st.b r21, 0x00000000[r22]
	br9 .BB.LABEL.4_8
.BB.LABEL.4_3:	; switch_clause_bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 202
	mov #_Com_Signal8BitInitValue, r7
	add r21, r7
	mov #_Com_Signal8BitRuntimeBuff, r2
	mov r21, r6
	add r2, r6
	mov r22, r8
	jarl _ILib_memcpy, r31
	br9 .BB.LABEL.4_8
.BB.LABEL.4_4:	; switch_clause_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 209
	mov #_Com_Signal8BitRuntimeBuff, r2
	add r21, r2
	mov #_Com_Signal8BitInitValue, r5
	add r5, r21
	ld.b 0x00000000[r21], r21
	st.b r21, 0x00000000[r2]
	br9 .BB.LABEL.4_8
.BB.LABEL.4_5:	; switch_clause_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 215
	add r21, r21
	mov #_Com_Signal16BitRuntimeBuff, r2
	add r21, r2
	mov #_Com_Signal16BitInitValue, r5
	add r5, r21
	ld.h 0x00000000[r21], r21
	st.h r21, 0x00000000[r2]
	br9 .BB.LABEL.4_8
.BB.LABEL.4_6:	; switch_clause_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 222
	shl 0x00000002, r21
	mov #_Com_Signal32BitRuntimeBuff, r2
	add r21, r2
	mov #_Com_Signal32BitInitValue, r5
	add r5, r21
	ld.w 0x00000000[r21], r21
	st.w r21, 0x00000000[r2]
	br9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; switch_clause_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 229
	shl 0x00000003, r21
	mov #_Com_Signal64BitRuntimeBuff, r2
	add r21, r2
	mov #_Com_Signal64BitInitValue, r5
	add r5, r21
	ld.w 0x00000004[r21], r5
	ld.w 0x00000000[r21], r6
	st.w r5, 0x00000004[r2]
	st.w r6, 0x00000000[r2]
.BB.LABEL.4_8:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 236
	jarl _SchM_Exit_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 238
	dispose 0x00000000, 0x00000071, [r31]
_Com_SignalUnPackHandle:
	.stack _Com_SignalUnPackHandle = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 256
	prepare 0x000007FD, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 277
	st.w r0, 0x00000004[r3]
	st.w r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 287
	cmp 0x00000001, r7
	mov r9, r20
	mov r6, r21
	bz9 .BB.LABEL.5_6
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	cmp 0x00000003, r7
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; entry
	cmp 0x00000004, r7
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_3:	; entry.switch_break_bb_crit_edge
	mov 0x00000001, r2
	br9 .BB.LABEL.5_9
.BB.LABEL.5_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 296
	ld.w 0x00000018[r8], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 297
	ld.bu 0x00000012[r8], r22
	ld.bu 0x00000011[r8], r25
	ld.bu 0x00000010[r8], r23
	ld.hu 0x0000000C[r8], r24
	br9 .BB.LABEL.5_8
.BB.LABEL.5_5:	; switch_clause_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 308
	ld.bu 0x0000000D[r8], r22
	ld.bu 0x0000000C[r8], r25
	ld.bu 0x0000000B[r8], r23
	ld.hu 0x00000008[r8], r24
	br9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; switch_clause_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 330
	ld.bu 0x0000000F[r8], r22
	ld.bu 0x0000000E[r8], r25
	ld.bu 0x0000000D[r8], r23
	ld.hu 0x0000000A[r8], r24
.BB.LABEL.5_7:	; switch_clause_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	ld.w 0x00000010[r8], r26
.BB.LABEL.5_8:	; switch_clause_bb56
	mov 0x00000000, r2
.BB.LABEL.5_9:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 337
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.5_28
.BB.LABEL.5_10:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 340
	andi 0x000000FF, r22, r2
	cmp 0x00000009, r2
	bl9 .BB.LABEL.5_12
.BB.LABEL.5_11:	; if_then_bb.bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	mov 0x00000008, r27
	br9 .BB.LABEL.5_13
.BB.LABEL.5_12:	; bb83
	andi 0x000000FF, r22, r27
.BB.LABEL.5_13:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 349
	cmp 0x00000000, r26
	mov r24, r28
	zxh r28
	bnz9 .BB.LABEL.5_15
.BB.LABEL.5_14:	; bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	sub r27, r28
	add 0x00000001, r28
.BB.LABEL.5_15:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 353
	jarl _SchM_Enter_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 354
	zxh r28
	mov r28, r7
	add r20, r7
	mov r3, r6
	mov r27, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 355
	jarl _SchM_Exit_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 370
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.5_17
.BB.LABEL.5_16:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 372
	mov r27, r7
	jarl _Com_EndianSwap.1, r31
.BB.LABEL.5_17:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 382
	andi 0x000000FF, r23, r8
	ld.w 0x00000004[r3], r7
	ld.w 0x00000000[r3], r6
	jarl __COM_shrl_64_32, r31
	mov r10, r27
	mov r11, r28
	andi 0x000000FF, r25, r2
	movea 0x00000040, r0, r8
	sub r2, r8
	mov 0xFFFFFFFF, r6
	mov r6, r7
	jarl __COM_shrl_64_32, r31
	and r11, r28
	st.w r28, 0x00000004[r3]
	and r10, r27
	st.w r27, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 385
	zxb r22
	cmp 0x00000009, r22
	bnz9 .BB.LABEL.5_22
.BB.LABEL.5_18:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 389
	jarl _SchM_Enter_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 388
	zxb r23
	andi 0x00000007, r25, r2
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 390
	cmp 0x00000000, r26
	zxh r24
	bnz9 .BB.LABEL.5_20
.BB.LABEL.5_19:	; bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	add r20, r24
	add 0xFFFFFFF8, r24
	br9 .BB.LABEL.5_21
.BB.LABEL.5_20:	; bb166
	add r20, r24
.BB.LABEL.5_21:	; bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 393
	zxb r23
	mov 0x00000008, r8
	sub r23, r8
	mov 0x00000000, r20
	movea 0x000000FF, r0, r6
	mov r20, r7
	jarl __COM_shrl_64_32, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 395
	andi 0x000000FF, r25, r8
	sub r23, r8
	ld.bu 0x00000000[r24], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 393
	and r10, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 395
	mov r20, r7
	jarl __COM_shll_64_32, r31
	mov r10, r20
	mov r11, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 392
	jarl _SchM_Exit_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 395
	ld.w 0x00000004[r3], r2
	or r22, r2
	ld.w 0x00000000[r3], r5
	st.w r2, 0x00000004[r3]
	or r20, r5
	st.w r5, 0x00000000[r3]
.BB.LABEL.5_22:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 401
	cmp 0x00000006, r21
	bz9 .BB.LABEL.5_26
.BB.LABEL.5_23:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	cmp 0x00000003, r21
	bz9 .BB.LABEL.5_26
.BB.LABEL.5_24:	; if_break_bb195
	cmp 0x00000004, r21
	bz9 .BB.LABEL.5_26
.BB.LABEL.5_25:	; if_break_bb195
	cmp 0x00000005, r21
	bnz9 .BB.LABEL.5_28
.BB.LABEL.5_26:	; bb232
	andi 0x000000FF, r25, r8
	add 0xFFFFFFFF, r8
	ld.w 0x00000004[r3], r20
	ld.w 0x00000000[r3], r21
	mov r21, r6
	mov r20, r7
	jarl __COM_shrl_64_32, r31
	or r11, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.5_28
.BB.LABEL.5_27:	; if_then_bb249
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 405
	andi 0x000000FF, r25, r8
	mov 0xFFFFFFFF, r6
	mov r6, r7
	jarl __COM_shll_64_32, r31
	or r11, r20
	st.w r20, 0x00000004[r3]
	or r21, r10
	st.w r10, 0x00000000[r3]
.BB.LABEL.5_28:	; if_break_bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 410
	ld.w 0x00000000[r3], r10
	ld.w 0x00000004[r3], r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 411
	dispose 0x00000008, 0x000007FD, [r31]
_Com_TxSignalPackHandle:
	.stack _Com_TxSignalPackHandle = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 430
	prepare 0x00000FFF, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 459
	cmp 0x00000000, r6
	ld.w 0x00000038[r3], r20
	mov r9, r21
	mov r8, r22
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	cmp 0x00000001, r6
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_2:	; entry.switch_break_bb_crit_edge
	mov 0x00000001, r2
	br9 .BB.LABEL.6_6
.BB.LABEL.6_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 469
	ld.bu 0x0000000D[r7], r25
	ld.bu 0x0000000C[r7], r26
	ld.bu 0x0000000B[r7], r23
	ld.hu 0x00000006[r7], r24
	br9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; switch_clause_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 480
	ld.bu 0x0000000F[r7], r25
	ld.bu 0x0000000E[r7], r26
	ld.bu 0x0000000D[r7], r23
	ld.hu 0x0000000A[r7], r24
.BB.LABEL.6_5:	; switch_clause_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	ld.w 0x00000010[r7], r27
	mov 0x00000000, r2
.BB.LABEL.6_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 499
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_19
.BB.LABEL.6_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 501
	andi 0x000000FF, r23, r8
	mov r22, r6
	mov r21, r7
	jarl __COM_shll_64_32, r31
	st.w r11, 0x00000004[r3]
	st.w r10, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 512
	andi 0x000000FF, r25, r2
	andi 0x0000FFFF, r24, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 513
	mov r5, r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 512
	add 0x00000001, r5
	sub r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 513
	add 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 514
	cmp 0x00000000, r27
	cmov 0x00000002, r5, r6, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 515
	cmp 0x00000009, r2
	bl9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; if_then_bb.bb107_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	mov 0x00000008, r29
	br9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; bb102
	andi 0x000000FF, r25, r29
.BB.LABEL.6_10:	; bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 519
	zxb r23
	mov 0x00000008, r2
	sub r23, r2
	movea 0x000000FF, r0, r5
	shr r2, r5
	andi 0x0000FFFF, r24, r2
	add r20, r2
	ld.b 0x00000000[r2], r2
	and r5, r2
	mov r3, r5
	ld.b 0x00000000[r5], r5
	or r2, r5
	st.b r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 524
	andi 0x000000FF, r26, r2
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 525
	andi 0x00000007, r23, r0
	bz9 .BB.LABEL.6_14
.BB.LABEL.6_11:	; if_then_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 527
	andi 0x00000007, r23, r2
	movea 0x000000FF, r0, r30
	shl r2, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 529
	andi 0x000000FF, r25, r2
	cmp 0x00000008, r2
	bh9 .BB.LABEL.6_13
.BB.LABEL.6_12:	; if_then_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 532
	zxb r25
	mov r3, r21
	add r21, r25
	ld.b 0xFFFFFFFF[r25], r21
	zxh r28
	add r20, r28
	ld.b 0x00000000[r28], r22
	and r30, r22
	or r22, r21
	st.b r21, 0xFFFFFFFF[r25]
	br9 .BB.LABEL.6_14
.BB.LABEL.6_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 539
	zxb r26
	andi 0x00000007, r23, r2
	mov r26, r8
	sub r2, r8
	mov r22, r6
	mov r21, r7
	jarl __COM_shrl_64_32, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 540
	zxh r28
	add r20, r28
	ld.b 0x00000000[r28], r2
	and r30, r2
	or r10, r2
	st.b r2, 0x00000000[r28]
.BB.LABEL.6_14:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 551
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.6_16
.BB.LABEL.6_15:	; if_then_bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 553
	mov r29, r7
	jarl _Com_EndianSwap.1, r31
.BB.LABEL.6_16:	; if_break_bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 563
	cmp 0x00000000, r27
	zxh r24
	bnz9 .BB.LABEL.6_18
.BB.LABEL.6_17:	; bb210
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 0
	add 0x00000001, r24
	sub r29, r24
.BB.LABEL.6_18:	; bb222
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 567
	jarl _SchM_Enter_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 568
	zxh r24
	mov r20, r6
	add r24, r6
	mov r3, r7
	mov r29, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 569
	jarl _SchM_Exit_Com_Context, r31
.BB.LABEL.6_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 572
	dispose 0x00000008, 0x00000FFF, [r31]
_Com_TxIpduTMSHandle:
	.stack _Com_TxIpduTMSHandle = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 880
	set1 0x00000002, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 933
	ld.w 0x0000001C[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 934
	ld.hu 0x00000010[r7], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 933
	st.w r2, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 934
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 938
	shl 0x00000002, r5
	mov #_Com_TxModeTrueDirectRepetitions, r2
	add r5, r2
	ld.bu 0x00000000[r2], r2
	st.h r2, 0x00000000[r8]
.BB.LABEL.7_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_Internal.c", 969
	jmp [r31]
	.section .bss, bss
	.align 2
_Com_TxSignalGroupState:
	.ds (32)
	.align 2
_Com_RxSignalTimeOutCnt:
	.ds (12)
	.align 2
_Com_RxSignalGroupTimeOutCnt:
	.ds (2)
