#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Com\Com_TxInternal.c -oDefaultBuild\Com_TxInternal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b620d564d3e8426da2a9fa1e1a0b9651kpvedmip.1jr
#@	compiled at Fri Mar 27 09:50:28 2026

	.file "..\..\Bsw\Communication\Common\Com\Com_TxInternal.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Com_ConfigStd
	.extern _Com_IpduGroupEnable
	.extern _Com_TxIPduRunTimeState
	.extern _Com_TxIPduInitState
	.extern _Com_TxIPduGroupsRef
	.extern _Com_TxModeTruePeriod
	.extern _Com_TxModeTrueDirectRepetitions
	.extern _Com_TxSignalErrorAndNotification
	.extern _Com_TxSignalGroupErrorAndNotification
	.extern _Com_TxIPduRuntimeBuff
	.extern _Com_TxIPduInitValue
	.extern _Com_SignalBoolRuntimeBuff
	.extern _Com_Signal8BitRuntimeBuff
	.extern _Com_Signal16BitRuntimeBuff
	.extern _Com_Signal32BitRuntimeBuff
	.extern _Com_Signal64BitRuntimeBuff
	.extern _Com_Signal8BitInvalidValue
	.extern _Com_Signal16BitInvalidValue
	.extern _Com_TxSignalGroupState
	.public _activeEnable_Test, 1
	.public _txIpduStatePtr_Test, 20
	.extern _SchM_Enter_Com_Context
	.extern _ILib_memcpy
	.extern _SchM_Exit_Com_Context
	.extern _Com_InitSignalBuffer
	.extern _Com_TxSignalPackHandle
	.extern _PduR_Transmit
	.extern _ILib_memcmp
	.public _Com_TxIpduController
	.extern _SchM_Enter_Com_MultiCore_Lock
	.extern _SchM_Exit_Com_MultiCore_Lock
	.extern _PduR_CancelTransmit
	.public _Com_ConfirmationProcess
	.public _Com_SendSignalHandle
	.public _Com_SendDynSignalHandle
	.public _Com_SendSignalGroupHandle
	.extern _Com_TxIpduTMSHandle
	.public _Com_InvalidateSignalHandle
	.public _Com_InvalidateSignalGroupHandle
	.extern _Com_SendSignalGroup
	.public _Com_TriggerIPDUSendHandle
	.public _Com_MainFunctionTxHandle
	.public _Com_TriggerTransmitHandle
	.public _Com_TxConfirmationHandle

	.section .text, text
_Com_GetTxModeOffset.1:
	.stack _Com_GetTxModeOffset.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 241
	ld.w 0x00000010[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 270
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 279
	ld.hu 0x00000010[r7], r2
	shl 0x00000002, r2
	mov #_Com_TxModeTruePeriod, r5
	add r2, r5
	ld.hu 0x00000000[r5], r2
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 283
	st.h r2, 0x00000008[r6]
	jmp [r31]
_Com_ResetTxPduBufferAndSignalBuffer.1:
	.stack _Com_ResetTxPduBufferAndSignalBuffer.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 372
	prepare 0x00000479, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 374
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 390
	mov r20, r22
	mul 0x00000030, r22, r0
	add r21, r22
	ld.hu 0x0000000C[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 391
	mov r20, r2
	mul 0x00000014, r2, r0
	mov #_Com_TxIPduInitState, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 393
	ld.hu 0x00000000[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 392
	jarl _SchM_Enter_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 393
	mov #_Com_TxIPduInitValue, r7
	add r23, r7
	mov #_Com_TxIPduRuntimeBuff, r2
	mov r23, r6
	add r2, r6
	mov r24, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 394
	jarl _SchM_Exit_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 400
	ld.bu 0x00000014[r22], r23
	ld.bu 0x00000015[r22], r22
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 403
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r2
	andi 0x000000FF, r23, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 404
	shl 0x00000005, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 405
	ld.w 0x00000014[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 419
	ld.hu 0x00000000[r2], r7
	mov 0x00000000, r8
	jarl _Com_InitSignalBuffer, r31
	add 0x00000001, r23
.BB.LABEL.2_2:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 401
	andi 0x000000FF, r23, r2
	cmp r22, r2
	bl9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 463
	mov r20, r2
	mul 0x00000030, r2, r0
	add r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 464
	ld.bu 0x00000016[r21], r22
	ld.bu 0x00000017[r21], r21
	br9 .BB.LABEL.2_8
.BB.LABEL.2_4:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 467
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	andi 0x000000FF, r22, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 468
	mul 0x0000000C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 469
	ld.bu 0x00000000[r2], r23
	ld.bu 0x00000001[r2], r24
	br9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 472
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x0000001C[r2], r2
	andi 0x000000FF, r23, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 473
	mul 0x0000001C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 474
	ld.w 0x00000014[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 488
	ld.hu 0x00000000[r2], r7
	mov 0x00000000, r8
	jarl _Com_InitSignalBuffer, r31
	add 0x00000001, r23
.BB.LABEL.2_6:	; bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 470
	andi 0x000000FF, r23, r2
	cmp r24, r2
	bl9 .BB.LABEL.2_5
.BB.LABEL.2_7:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	add 0x00000001, r22
.BB.LABEL.2_8:	; bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 465
	andi 0x000000FF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.2_4
.BB.LABEL.2_9:	; bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 500
	mov r20, r2
	mul 0x00000014, r2, r0
	mov #_Com_TxIPduRunTimeState, r5
	add r2, r5
	ld.b 0x0000000C[r5], r2
	mul 0x00000014, r20, r0
	mov #_Com_TxIPduInitState, r6
	add r20, r6
	ld.bu 0x0000000C[r6], r7
	andi 0x00000004, r7, r7
	or r7, r2
	st.b r2, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 501
	ld.w 0x00000010[r6], r2
	st.w r2, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 502
	ld.h 0x00000000[r6], r2
	st.h r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 503
	ld.bu 0x0000000C[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 505
	andi 0x000000E5, r2, r2
	st.b r2, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 506
	st.h r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 507
	st.h r0, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 508
	dispose 0x00000000, 0x00000479, [r31]
_Com_TxGroupSignalPack.1:
	.stack _Com_TxGroupSignalPack.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 525
	prepare 0x00000071, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 528
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r5
	ld.bu 0x0000000C[r6], r7
	mulh 0x0000000C, r7
	add r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 530
	ld.hu 0x00000002[r5], r5
	mul 0x00000030, r5, r0
	ld.w 0x00000004[r2], r2
	add r5, r2
	ld.hu 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 537
	ld.hu 0x0000000A[r6], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 538
	zxh r5
	mov #_Com_TxIPduRuntimeBuff, r20
	add r5, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 529
	ld.w 0x00000014[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 541
	cmp 0x0000000C, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 531
	ld.hu 0x00000000[r6], r21
	mov r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 541
	bz9 .BB.LABEL.3_14
.BB.LABEL.3_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 553
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_2:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 556
	ld.bu 0x0000000D[r7], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 557
	jarl _SchM_Enter_Com_Context, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 556
	shl r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 558
	mov #_Com_SignalBoolRuntimeBuff, r5
	add r5, r21
	ld.bu 0x00000000[r21], r5
	cmp 0x00000000, r5
	ld.b 0x00000000[r20], r5
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 560
	or r2, r5
	br9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_else_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 564
	not r2, r2
	and r2, r5
.BB.LABEL.3_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	st.b r5, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 566
	jarl _SchM_Exit_Com_Context, r31
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.3_6:	; if_else_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 572
	add 0xFFFFFFFF, r5
	cmp 0x00000009, r5
	bh9 .BB.LABEL.3_9
.BB.LABEL.3_7:	; if_else_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	shl 0x00000001, r5
	jmp #.SWITCH.LABEL.3_15[r5]
.SWITCH.LABEL.3_15:
	br9 .BB.LABEL.3_11
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_10
	br9 .BB.LABEL.3_11
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_8
	br9 .BB.LABEL.3_10
	br9 .BB.LABEL.3_11
	br9 .BB.LABEL.3_12
	br9 .BB.LABEL.3_8
.SWITCH.LABEL.3_15.END:
.BB.LABEL.3_8:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 577
	mov #_Com_Signal8BitRuntimeBuff, r5
	add r5, r21
	ld.bu 0x00000000[r21], r8
	mov 0x00000000, r9
	br9 .BB.LABEL.3_13
.BB.LABEL.3_9:	; if_else_bb84.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000000, r8
	mov r8, r9
	br9 .BB.LABEL.3_13
.BB.LABEL.3_10:	; switch_clause_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 583
	add r21, r21
	mov #_Com_Signal16BitRuntimeBuff, r5
	add r21, r5
	ld.hu 0x00000000[r5], r8
	mov 0x00000000, r9
	br9 .BB.LABEL.3_13
.BB.LABEL.3_11:	; switch_clause_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 590
	shl 0x00000002, r21
	mov #_Com_Signal32BitRuntimeBuff, r5
	add r21, r5
	ld.w 0x00000000[r5], r8
	mov 0x00000000, r9
	br9 .BB.LABEL.3_13
.BB.LABEL.3_12:	; switch_clause_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 597
	shl 0x00000003, r21
	mov #_Com_Signal64BitRuntimeBuff, r5
	add r21, r5
	ld.w 0x00000004[r5], r9
	ld.w 0x00000000[r5], r8
.BB.LABEL.3_13:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 605
	mov #_Com_TxIPduRuntimeBuff, r5
	add r2, r5
	st.w r5, 0x00000000[r3]
	mov 0x00000001, r6
	jarl _Com_TxSignalPackHandle, r31
.BB.LABEL.3_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 607
	dispose 0x00000004, 0x00000071, [r31]
_Com_TriggerIPDUSendInternalHandle.1:
	.stack _Com_TriggerIPDUSendInternalHandle.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 934
	prepare 0x00000079, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 936
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 938
	mov r6, r2
	mul 0x00000030, r2, r0
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 955
	ld.hu 0x0000000C[r2], r5
	mov #_Com_TxIPduRuntimeBuff, r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 939
	mov r6, r5
	mul 0x00000014, r5, r0
	mov #_Com_TxIPduRunTimeState, r8
	add r5, r8
	ld.h 0x00000000[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 955
	st.w r7, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 956
	st.h r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 968
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 973
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	mov r6, r21
	mov r6, r22
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 975
	movea 0x00000076, r6, r6
	zxh r6
	mov r3, r7
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 977
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; if_then_bb.if_break_bb73_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000001, r10
.BB.LABEL.4_3:	; if_break_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1038
	dispose 0x0000000C, 0x00000079, [r31]
.BB.LABEL.4_4:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 986
	mul 0x00000014, r21, r0
	mov #_Com_TxIPduRunTimeState, r23
	add r21, r23
	set1 0x00000003, 0x0000000C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 987
	st.h r0, 0x0000000A[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 988
	mul 0x00000030, r22, r0
	add r22, r20
	ld.hu 0x0000000E[r20], r6
	mov r3, r7
	jarl _PduR_Transmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 986
	add 0x0000000C, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 988
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb48.if_break_bb73_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.4_3
.BB.LABEL.4_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1007
	clr1 0x00000003, 0x00000000[r23]
	br9 .BB.LABEL.4_2
_Com_MainFuncTxDirect.1:
	.stack _Com_MainFuncTxDirect.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1148
	ld.bu 0x0000000C[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1153
	andi 0x00000010, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1158
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1160
	st.h r0, 0x00000004[r6]
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1162
	ld.hu 0x00000004[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1164
	add 0xFFFFFFFF, r5
	st.h r5, 0x00000004[r6]
.BB.LABEL.5_5:	; if_break_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1167
	andi 0x0000FFFF, r5, r0
	bz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_break_bb50.if_break_bb105_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.5_11
.BB.LABEL.5_7:	; bb57
	ld.hu 0x00000002[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_6
.BB.LABEL.5_8:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1229
	ld.w 0x0000001C[r7], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1230
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1228
	ld.hu 0x00000010[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1230
	bz9 .BB.LABEL.5_12
.BB.LABEL.5_9:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	cmp 0x00000002, r5
	bz9 .BB.LABEL.5_14
.BB.LABEL.5_10:	; if_then_bb72.if_break_bb105_crit_edge
	mov 0x00000001, r5
.BB.LABEL.5_11:	; if_break_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1268
	cmp 0x00000000, r2
	setf 0x00000002, r2
	cmp 0x00000000, r8
	setf 0x0000000A, r6
	or r6, r2
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1270
	cmov 0x00000002, 0x00000001, r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1273
	jmp [r31]
.BB.LABEL.5_12:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1234
	mov r7, r5
	shl 0x00000002, r5
	mov #_Com_TxModeTrueDirectRepetitions, r9
	add r5, r9
	ld.bu 0x00000000[r9], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1235
	cmp 0x00000001, r5
	bnh9 .BB.LABEL.5_14
.BB.LABEL.5_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1243
	shl 0x00000002, r7
	mov #_Com_TxModeTrueDirectRepetitions, r5
	add r7, r5
	ld.h 0x00000002[r5], r5
	st.h r5, 0x00000004[r6]
	br9 .BB.LABEL.5_10
.BB.LABEL.5_14:	; switch_clause_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	st.h r0, 0x00000002[r6]
	br9 .BB.LABEL.5_10
_Com_MainFuncTxPeriod.1:
	.stack _Com_MainFuncTxPeriod.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1294
	ld.hu 0x00000008[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1298
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1300
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000008[r6]
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1302
	andi 0x0000FFFF, r2, r0
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_3:	; if_break_bb.if_break_bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000000, r2
.BB.LABEL.6_4:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1353
	tst1 0x00000004, 0x0000000C[r6]
	setf 0x00000002, r5
	cmp 0x00000000, r8
	setf 0x0000000A, r8
	or r8, r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1355
	cmov 0x00000002, 0x00000001, r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1357
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_5:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	ld.hu 0x00000006[r6], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1360
	ld.h 0x00000008[r7], r2
	st.h r2, 0x00000006[r6]
.BB.LABEL.6_7:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1363
	jmp [r31]
.BB.LABEL.6_8:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1338
	ld.w 0x00000010[r6], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; if_then_bb25.if_break_bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.6_4
.BB.LABEL.6_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1347
	ld.hu 0x00000010[r7], r2
	shl 0x00000002, r2
	mov #_Com_TxModeTruePeriod, r5
	add r2, r5
	ld.h 0x00000002[r5], r2
	st.h r2, 0x00000008[r6]
	br9 .BB.LABEL.6_9
_Com_MainFunction_SendPdu.1:
	.stack _Com_MainFunction_SendPdu.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1466
	prepare 0x00000079, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1469
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1471
	mov r6, r2
	mul 0x00000030, r2, r0
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1486
	ld.hu 0x0000000C[r2], r5
	mov #_Com_TxIPduRuntimeBuff, r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1472
	mov r6, r5
	mul 0x00000014, r5, r0
	mov #_Com_TxIPduRunTimeState, r8
	add r5, r8
	ld.h 0x00000000[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1486
	st.w r7, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1487
	st.h r5, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1499
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1504
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	mov r6, r21
	mov r6, r22
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1506
	movea 0x00000076, r6, r6
	zxh r6
	mov r3, r7
	jarl [r2], r31
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1508
	bz9 .BB.LABEL.7_7
.BB.LABEL.7_2:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1519
	mov r22, r2
	mul 0x00000014, r2, r0
	mov #_Com_TxIPduRunTimeState, r23
	add r2, r23
	set1 0x00000003, 0x0000000C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1520
	mul 0x00000030, r21, r0
	add r21, r20
	ld.hu 0x0000000E[r20], r6
	mov r3, r7
	jarl _PduR_Transmit, r31
	ld.bu 0x0000000C[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1519
	add 0x0000000C, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1520
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_3:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1523
	andi 0x00000010, r2, r0
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1525
	andi 0x000000EF, r2, r2
	st.b r2, 0x00000000[r23]
.BB.LABEL.7_5:	; if_break_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1540
	mul 0x00000014, r22, r0
	mov #_Com_TxIPduRunTimeState, r2
	add r22, r2
	st.h r0, 0x0000000A[r2]
	dispose 0x0000000C, 0x00000079, [r31]
.BB.LABEL.7_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1544
	andi 0x000000F7, r2, r2
	st.b r2, 0x00000000[r23]
.BB.LABEL.7_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1574
	dispose 0x0000000C, 0x00000079, [r31]
_Com_SetTxSignalBuff.1:
	.stack _Com_SetTxSignalBuff.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1743
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1764
	jarl _SchM_Enter_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1765
	cmp 0x0000000C, r20
	ld.w 0x00000014[r3], r2
	bh9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov r20, r1
	shl 0x00000001, r1
	jmp #.SWITCH.LABEL.8_21[r1]
.SWITCH.LABEL.8_21:
	br9 .BB.LABEL.8_3
	br9 .BB.LABEL.8_11
	br9 .BB.LABEL.8_15
	br9 .BB.LABEL.8_9
	br9 .BB.LABEL.8_11
	br9 .BB.LABEL.8_15
	br9 .BB.LABEL.8_5
	br9 .BB.LABEL.8_9
	br9 .BB.LABEL.8_11
	br9 .BB.LABEL.8_15
	br9 .BB.LABEL.8_5
	br9 .BB.LABEL.8_2
	br9 .BB.LABEL.8_7
.SWITCH.LABEL.8_21.END:
.BB.LABEL.8_2:	; entry.switch_break_bb_crit_edge
	mov 0x00000000, r20
	jr .BB.LABEL.8_20
.BB.LABEL.8_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1769
	mov #_Com_SignalBoolRuntimeBuff, r20
	add r20, r22
	ld.bu 0x00000000[r22], r20
	ld.bu 0x00000000[r23], r2
	cmp r20, r2
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1771
	st.b r2, 0x00000000[r22]
	br9 .BB.LABEL.8_19
.BB.LABEL.8_5:	; switch_clause_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1780
	mov #_Com_Signal8BitRuntimeBuff, r20
	add r20, r22
	ld.bu 0x00000000[r22], r20
	mov 0x00000008, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1779
	sub r2, r21
	movea 0x000000FF, r0, r2
	shr r21, r2
	ld.b 0x00000000[r23], r21
	and r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1780
	andi 0x000000FF, r21, r2
	cmp r20, r2
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_6:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1782
	st.b r21, 0x00000000[r22]
	br9 .BB.LABEL.8_19
.BB.LABEL.8_7:	; switch_clause_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1788
	mov #_Com_Signal8BitRuntimeBuff, r20
	add r20, r22
	mov r22, r6
	mov r23, r7
	mov r21, r8
	jarl _ILib_memcmp, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_8:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1790
	mov r22, r6
	mov r23, r7
	mov r21, r8
	jarl _ILib_memcpy, r31
	br9 .BB.LABEL.8_19
.BB.LABEL.8_9:	; switch_clause_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1799
	add r22, r22
	mov #_Com_Signal16BitRuntimeBuff, r20
	add r20, r22
	ld.hu 0x00000000[r22], r20
	movea 0x00000010, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1798
	sub r2, r5
	ori 0x0000FFFF, r0, r2
	shr r5, r2
	ld.h 0x00000000[r23], r23
	and r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1799
	andi 0x0000FFFF, r23, r2
	cmp r20, r2
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_10:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1801
	st.h r23, 0x00000000[r22]
	br9 .BB.LABEL.8_19
.BB.LABEL.8_11:	; switch_clause_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1811
	cmp 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1810
	ld.w 0x00000000[r23], r20
	bz9 .BB.LABEL.8_13
.BB.LABEL.8_12:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	movea 0x00000020, r0, r23
	sub r2, r23
	mov 0xFFFFFFFF, r2
	shr r23, r2
	and r2, r20
.BB.LABEL.8_13:	; bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1813
	shl 0x00000002, r22
	mov #_Com_Signal32BitRuntimeBuff, r2
	add r2, r22
	ld.w 0x00000000[r22], r2
	cmp r2, r20
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_14:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1815
	st.w r20, 0x00000000[r22]
	br9 .BB.LABEL.8_19
.BB.LABEL.8_15:	; switch_clause_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1825
	cmp 0x00000002, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1824
	ld.w 0x00000004[r23], r20
	ld.w 0x00000000[r23], r21
	bz9 .BB.LABEL.8_17
.BB.LABEL.8_16:	; bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	movea 0x00000040, r0, r8
	sub r2, r8
	mov 0xFFFFFFFF, r6
	mov r6, r7
	jarl __COM_shrl_64_32, r31
	and r11, r20
	and r10, r21
.BB.LABEL.8_17:	; bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1827
	shl 0x00000003, r22
	mov #_Com_Signal64BitRuntimeBuff, r2
	add r2, r22
	ld.w 0x00000000[r22], r2
	xor r21, r2
	ld.w 0x00000004[r22], r5
	xor r20, r5
	or r5, r2
	cmp 0x00000000, r2
	bz17 .BB.LABEL.8_2
.BB.LABEL.8_18:	; if_then_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1829
	st.w r21, 0x00000000[r22]
	st.w r20, 0x00000004[r22]
.BB.LABEL.8_19:	; if_then_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000001, r20
.BB.LABEL.8_20:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1838
	jarl _SchM_Exit_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1843
	mov r20, r10
	dispose 0x00000000, 0x00000079, [r31]
_Com_TxSignalPack.1:
	.stack _Com_TxSignalPack.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1859
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1861
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r5
	mov r6, r7
	shl 0x00000005, r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1871
	ld.hu 0x00000006[r7], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1864
	ld.hu 0x00000008[r7], r9
	mul 0x00000030, r9, r0
	ld.w 0x00000004[r2], r2
	add r9, r2
	ld.hu 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1871
	add r2, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1872
	zxh r8
	mov #_Com_TxIPduRuntimeBuff, r9
	add r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1863
	ld.w 0x00000014[r7], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1875
	cmp 0x0000000C, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1865
	ld.hu 0x00000000[r7], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1875
	bz9 .BB.LABEL.9_13
.BB.LABEL.9_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1886
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_2:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1889
	shl 0x00000005, r6
	add r6, r5
	ld.bu 0x0000000B[r5], r2
	mov 0x00000001, r8
	shl r2, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1890
	mov #_Com_SignalBoolRuntimeBuff, r2
	add r2, r10
	ld.bu 0x00000000[r10], r2
	cmp 0x00000000, r2
	ld.b 0x00000000[r9], r2
	bz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1892
	or r8, r2
	st.b r2, 0x00000000[r9]
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.9_4:	; if_else_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1896
	not r8, r8
	and r8, r2
	st.b r2, 0x00000000[r9]
	dispose 0x00000004, 0x00000001, [r31]
.BB.LABEL.9_5:	; if_else_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1904
	add 0xFFFFFFFF, r8
	cmp 0x00000009, r8
	bh9 .BB.LABEL.9_8
.BB.LABEL.9_6:	; if_else_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	shl 0x00000001, r8
	jmp #.SWITCH.LABEL.9_14[r8]
.SWITCH.LABEL.9_14:
	br9 .BB.LABEL.9_10
	br9 .BB.LABEL.9_11
	br9 .BB.LABEL.9_9
	br9 .BB.LABEL.9_10
	br9 .BB.LABEL.9_11
	br9 .BB.LABEL.9_7
	br9 .BB.LABEL.9_9
	br9 .BB.LABEL.9_10
	br9 .BB.LABEL.9_11
	br9 .BB.LABEL.9_7
.SWITCH.LABEL.9_14.END:
.BB.LABEL.9_7:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1909
	mov #_Com_Signal8BitRuntimeBuff, r5
	add r5, r10
	ld.bu 0x00000000[r10], r8
	mov 0x00000000, r9
	br9 .BB.LABEL.9_12
.BB.LABEL.9_8:	; if_else_bb82.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000000, r8
	mov r8, r9
	br9 .BB.LABEL.9_12
.BB.LABEL.9_9:	; switch_clause_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1915
	add r10, r10
	mov #_Com_Signal16BitRuntimeBuff, r5
	add r10, r5
	ld.hu 0x00000000[r5], r8
	mov 0x00000000, r9
	br9 .BB.LABEL.9_12
.BB.LABEL.9_10:	; switch_clause_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1922
	shl 0x00000002, r10
	mov #_Com_Signal32BitRuntimeBuff, r5
	add r10, r5
	ld.w 0x00000000[r5], r8
	mov 0x00000000, r9
	br9 .BB.LABEL.9_12
.BB.LABEL.9_11:	; switch_clause_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1929
	shl 0x00000003, r10
	mov #_Com_Signal64BitRuntimeBuff, r5
	add r10, r5
	ld.w 0x00000004[r5], r9
	ld.w 0x00000000[r5], r8
.BB.LABEL.9_12:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1936
	mov #_Com_TxIPduRuntimeBuff, r5
	add r2, r5
	st.w r5, 0x00000000[r3]
	mov 0x00000000, r6
	jarl _Com_TxSignalPackHandle, r31
.BB.LABEL.9_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1938
	dispose 0x00000004, 0x00000001, [r31]
_Com_SendTxSignalHandle.1:
	.stack _Com_SendTxSignalHandle.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1956
	mov r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1969
	mul 0x00000014, r2, r0
	mov #_Com_TxIPduRunTimeState, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1975
	ld.hu 0x00000006[r5], r9
	add 0x00000006, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1964
	movhi HIGHW1(#_Com_ConfigStd), r0, r10
	ld.w LOWW(#_Com_ConfigStd)[r10], r10
	ld.w 0x00000004[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1966
	mov r6, r11
	mul 0x00000030, r11, r0
	add r10, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1975
	ld.hu 0x00000008[r11], r11
	cmp 0x00000000, r8
	bz9 .BB.LABEL.10_3
.BB.LABEL.10_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	cmp 0x00000000, r9
	bnz9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; entry
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; entry.if_break_bb_crit_edge
	mov 0x00000000, r9
	br9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1977
	st.h r11, 0x00000000[r5]
	mov 0x00000001, r9
.BB.LABEL.10_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1986
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_9
.BB.LABEL.10_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.10_9
.BB.LABEL.10_7:	; if_break_bb
	cmp 0x00000001, r2
	bz9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; if_break_bb
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.10_19
.BB.LABEL.10_9:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 1990
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_11
.BB.LABEL.10_10:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.10_12
.BB.LABEL.10_11:	; if_then_bb95
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_13
.BB.LABEL.10_12:	; if_then_bb95.if_break_bb126_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.10_14
.BB.LABEL.10_13:	; if_then_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2013
	mov r6, r2
	mul 0x00000030, r2, r0
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2017
	ld.hu 0x00000010[r10], r10
	shl 0x00000002, r10
	mov #_Com_TxModeTrueDirectRepetitions, r2
	add r10, r2
	ld.bu 0x00000000[r2], r10
.BB.LABEL.10_14:	; if_break_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2029
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.10_20
.BB.LABEL.10_15:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2033
	mul 0x00000014, r6, r0
	mov #_Com_TxIPduRunTimeState, r2
	add r6, r2
	st.h r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2034
	st.h r10, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2038
	cmp 0x00000000, r8
	bz9 .BB.LABEL.10_20
.BB.LABEL.10_16:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	cmp 0x00000002, r10
	bl9 .BB.LABEL.10_20
.BB.LABEL.10_17:	; switch_clause_bb
	cmp 0x00000000, r9
	bnz9 .BB.LABEL.10_20
.BB.LABEL.10_18:	; if_then_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2040
	st.h r11, 0x00000000[r5]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.10_19:	; if_else_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2083
	mul 0x00000014, r6, r0
	mov #_Com_TxIPduRunTimeState, r2
	add r6, r2
	st.h r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2084
	st.h r0, 0x00000002[r2]
.BB.LABEL.10_20:	; if_break_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2089
	jmp [r31]
_Com_SendTxGroupSignalHandle.1:
	.stack _Com_SendTxGroupSignalHandle.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2106
	prepare 0x00000001, 0x00000004
	mov r7, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2111
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x0000001C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2114
	mul 0x0000001C, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2146
	ld.bu 0x0000000E[r2], r5
	ld.hu 0x00000000[r2], r8
	ld.hu 0x00000002[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2114
	ld.w 0x00000014[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2146
	st.w r5, 0x00000000[r3]
	jarl _Com_SetTxSignalBuff.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2199
	dispose 0x00000004, 0x00000001, [r31]
_Com_TxIpduController:
	.stack _Com_TxIpduController = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2216
	prepare 0x00000FFF, 0x00000004
	mov 0x00000000, r20
	mov r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2226
	st.w r2, 0x00000000[r3]
	jr .BB.LABEL.12_20
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2232
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000004[r2], r21
	andi 0x0000FFFF, r20, r22
	mov r22, r23
	mul 0x00000030, r23, r0
	add r21, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2235
	ld.bu 0x00000019[r23], r24
	cmp 0x00000000, r24
	bz9 .BB.LABEL.12_19
.BB.LABEL.12_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2237
	mov r22, r2
	mul 0x00000030, r2, r0
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2242
	ld.bu 0x00000018[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2238
	jarl _SchM_Enter_Com_MultiCore_Lock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2239
	andi 0x0000FFFF, r20, r26
	mov r26, r2
	mul 0x00000014, r2, r0
	mov #_Com_TxIPduRunTimeState, r27
	add r2, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2241
	ld.bu 0x0000000C[r27], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2240
	ld.w 0x00000010[r27], r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2242
	jarl _SchM_Exit_Com_MultiCore_Lock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2241
	addi 0x0000000C, r27, r30
	andi 0x00000001, r28, r2
	br9 .BB.LABEL.12_5
.BB.LABEL.12_3:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2245
	andi 0x000000FF, r25, r5
	mov #_Com_TxIPduGroupsRef, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2246
	ld.bu 0x00000000[r6], r5
	mov #_Com_IpduGroupEnable, r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	add 0x00000001, r25
.BB.LABEL.12_5:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2243
	andi 0x000000FF, r25, r5
	cmp r24, r5
	bl9 .BB.LABEL.12_3
.BB.LABEL.12_6:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2252
	zxb r25
	cmp r24, r25
	bnc9 .BB.LABEL.12_13
.BB.LABEL.12_7:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2254
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.12_19
.BB.LABEL.12_8:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2256
	jarl _SchM_Enter_Com_MultiCore_Lock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2257
	set1 0x00000000, 0x00000000[r30]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2258
	jarl _SchM_Exit_Com_MultiCore_Lock, r31
	ld.w 0x00000000[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2283
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_19
.BB.LABEL.12_9:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2286
	andi 0x0000FFFF, r20, r6
	jarl _Com_ResetTxPduBufferAndSignalBuffer.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2287
	cmp 0x00000002, r29
	bz9 .BB.LABEL.12_12
.BB.LABEL.12_10:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	cmp 0x00000005, r29
	bz9 .BB.LABEL.12_12
.BB.LABEL.12_11:	; if_then_bb91
	cmp 0x00000003, r29
	bnz9 .BB.LABEL.12_19
.BB.LABEL.12_12:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2290
	ld.b 0x00000000[r30], r2
	shr 0x00000002, r2
	andi 0x00000001, r2, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2291
	mov r27, r6
	mov r23, r7
	jarl _Com_GetTxModeOffset.1, r31
	br9 .BB.LABEL.12_19
.BB.LABEL.12_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2305
	bz9 .BB.LABEL.12_19
.BB.LABEL.12_14:	; if_then_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2307
	jarl _SchM_Enter_Com_MultiCore_Lock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2308
	clr1 0x00000000, 0x00000000[r30]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2309
	jarl _SchM_Exit_Com_MultiCore_Lock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2311
	tst1 0x00000003, 0x00000000[r30]
	bz9 .BB.LABEL.12_18
.BB.LABEL.12_15:	; if_then_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2317
	mov r22, r2
	mul 0x00000030, r2, r0
	add r21, r2
	ld.bu 0x00000025[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_17
.BB.LABEL.12_16:	; if_then_bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2319
	mul 0x00000030, r22, r0
	add r22, r21
	ld.hu 0x0000000E[r21], r6
	jarl _PduR_CancelTransmit, r31
.BB.LABEL.12_17:	; if_break_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2322
	clr1 0x00000003, 0x00000000[r30]
.BB.LABEL.12_18:	; if_break_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2324
	mul 0x00000014, r26, r0
	mov #_Com_TxIPduRunTimeState, r2
	add r26, r2
	st.h r0, 0x00000006[r2]
.BB.LABEL.12_19:	; if_break_bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	add 0x00000001, r20
.BB.LABEL.12_20:	; bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2226
	andi 0x0000FFFF, r20, r2
	movea 0x0000002C, r0, r5
	cmp r5, r2
	bl17 .BB.LABEL.12_1
.BB.LABEL.12_21:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2330
	dispose 0x00000004, 0x00000FFF, [r31]
_Com_TxSignalGroupPack.1:
	.stack _Com_TxSignalGroupPack.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2426
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2428
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2430
	mul 0x0000000C, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2431
	ld.bu 0x00000000[r2], r20
	ld.bu 0x00000001[r2], r21
	br9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2446
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x0000001C[r2], r6
	andi 0x000000FF, r20, r2
	mul 0x0000001C, r2, r0
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2467
	jarl _Com_TxGroupSignalPack.1, r31
	add 0x00000001, r20
.BB.LABEL.13_2:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2444
	andi 0x000000FF, r20, r2
	cmp r21, r2
	bl9 .BB.LABEL.13_1
.BB.LABEL.13_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2471
	dispose 0x00000000, 0x00000061, [r31]
_Com_ConfirmationProcess:
	.stack _Com_ConfirmationProcess = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2915
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2921
	ld.bu 0x00000014[r6], r20
	ld.bu 0x00000015[r6], r21
	mov r6, r22
	br9 .BB.LABEL.14_4
.BB.LABEL.14_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2924
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r2
	andi 0x000000FF, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2926
	mov r5, r6
	shl 0x00000005, r6
	add r2, r6
	ld.bu 0x0000001C[r6], r6
	andi 0x00000001, r6, r0
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2928
	shl 0x00000005, r5
	add r5, r2
	ld.bu 0x0000000A[r2], r2
	cmp 0x00000003, r6
	adf 0x00000002, r0, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2932
	zxb r2
	shl 0x00000002, r2
	mov #_Com_TxSignalErrorAndNotification, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	jarl [r2], r31
.BB.LABEL.14_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	add 0x00000001, r20
.BB.LABEL.14_4:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2922
	andi 0x000000FF, r20, r2
	cmp r21, r2
	bl9 .BB.LABEL.14_1
.BB.LABEL.14_5:	; bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2939
	ld.bu 0x00000016[r22], r20
	ld.bu 0x00000017[r22], r21
	br9 .BB.LABEL.14_9
.BB.LABEL.14_6:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2943
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	andi 0x000000FF, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2945
	mov r5, r6
	mul 0x0000000C, r6, r0
	add r2, r6
	ld.bu 0x00000005[r6], r6
	andi 0x00000001, r6, r0
	bz9 .BB.LABEL.14_8
.BB.LABEL.14_7:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2948
	mulh 0x0000000C, r5
	add r5, r2
	ld.bu 0x00000004[r2], r2
	cmp 0x00000003, r6
	adf 0x00000002, r0, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2952
	zxb r2
	shl 0x00000002, r2
	mov #_Com_TxSignalGroupErrorAndNotification, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	jarl [r2], r31
.BB.LABEL.14_8:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	add 0x00000001, r20
.BB.LABEL.14_9:	; bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2941
	andi 0x000000FF, r20, r2
	cmp r21, r2
	bl9 .BB.LABEL.14_6
.BB.LABEL.14_10:	; bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2957
	dispose 0x00000000, 0x00000071, [r31]
_Com_SendSignalHandle:
	.stack _Com_SendSignalHandle = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2975
	prepare 0x00000079, 0x00000004
	movea 0x000000EF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2988
	cmp r2, r6
	mov r7, r9
	mov r6, r20
	bh9 .BB.LABEL.15_7
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2991
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2992
	mov r20, r2
	shl 0x00000005, r2
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3020
	ld.bu 0x0000000C[r2], r5
	ld.hu 0x00000000[r2], r8
	ld.hu 0x00000002[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 2992
	ld.w 0x00000014[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3002
	ld.hu 0x00000008[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3020
	st.w r5, 0x00000000[r3]
	jarl _Com_SetTxSignalBuff.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3026
	addi 0x00000000, r10, r23
	bz9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3029
	mov r20, r6
	jarl _Com_TxSignalPack.1, r31
.BB.LABEL.15_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3038
	mov r22, r2
	mul 0x00000014, r2, r0
	mov #_Com_TxIPduRunTimeState, r5
	add r2, r5
	tst1 0x00000000, 0x0000000C[r5]
	bz9 .BB.LABEL.15_5
.BB.LABEL.15_4:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3050
	shl 0x00000005, r20
	add r20, r21
	ld.w 0x00000018[r21], r7
	mov 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3051
	mov r22, r6
	mov r23, r9
	jarl _Com_SendTxSignalHandle.1, r31
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.15_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3058
	mov r20, r2
	shl 0x00000005, r2
	add r21, r2
	tst1 0x00000001, 0x0000001C[r2]
	bz9 .BB.LABEL.15_8
.BB.LABEL.15_6:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3061
	shl 0x00000005, r20
	add r20, r21
	ld.bu 0x0000000A[r21], r20
	shl 0x00000002, r20
	mov #_Com_TxSignalErrorAndNotification, r2
	add r20, r2
	ld.w 0x00000000[r2], r20
	jarl [r20], r31
	movea 0x00000080, r0, r10
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.15_7:	; if_else_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3073
	movea 0xFFFFFF10, r20, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3074
	zxh r6
	mov r9, r7
	jarl _Com_SendTxGroupSignalHandle.1, r31
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.15_8:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	movea 0x00000080, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3080
	dispose 0x00000004, 0x00000079, [r31]
_Com_SendDynSignalHandle:
	.stack _Com_SendDynSignalHandle = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3095
	movea 0x00000080, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3199
	jmp [r31]
_Com_SendSignalGroupHandle:
	.stack _Com_SendSignalGroupHandle = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3216
	prepare 0x00000079, 0x00000004
	mov r6, r20
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3220
	st.h r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3229
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3239
	mov r20, r5
	mul 0x0000000C, r5, r0
	add r21, r5
	ld.hu 0x00000002[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3240
	ld.w 0x00000004[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3254
	jarl _Com_TxSignalGroupPack.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3240
	mov r22, r2
	mul 0x00000030, r2, r0
	mov r23, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3256
	ld.h 0x00000004[r7], r2
	mov r20, r5
	shl 0x00000002, r5
	mov #_Com_TxSignalGroupState, r6
	add r5, r6
	ld.h 0x00000000[r6], r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3241
	mov r22, r5
	mul 0x00000014, r5, r0
	mov #_Com_TxIPduRunTimeState, r23
	add r5, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3256
	st.h r2, 0x00000000[r23]
	movea 0x00000002, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3266
	mov r23, r6
	jarl _Com_TxIpduTMSHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3268
	tst1 0x00000000, 0x0000000C[r23]
	bz9 .BB.LABEL.17_8
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3272
	mov r22, r21
	mul 0x00000014, r21, r0
	mov #_Com_TxIPduRunTimeState, r2
	add r21, r2
	ld.w 0x00000010[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3287
	cmp 0x00000000, r21
	bz9 .BB.LABEL.17_5
.BB.LABEL.17_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	cmp 0x00000002, r21
	bz9 .BB.LABEL.17_5
.BB.LABEL.17_3:	; if_then_bb
	cmp 0x00000001, r21
	bz9 .BB.LABEL.17_5
.BB.LABEL.17_4:	; if_then_bb
	cmp 0x00000003, r21
	bnz9 .BB.LABEL.17_7
.BB.LABEL.17_5:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3291
	shl 0x00000002, r20
	mov #_Com_TxSignalGroupState, r21
	add r20, r21
	ld.bu 0x00000002[r21], r20
	add 0x00000002, r21
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3293
	andi 0x00000001, r20, r0
	bz9 .BB.LABEL.17_10
.BB.LABEL.17_6:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3295
	mul 0x00000014, r22, r0
	mov #_Com_TxIPduRunTimeState, r2
	add r22, r2
	st.h r0, 0x00000004[r2]
	movea 0x00000002, r3, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3296
	ld.h 0x00000000[r22], r22
	andi 0x00000002, r20, r0
	cmov 0x0000000A, 0x00000001, r22, r20
	st.h r20, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3307
	clr1 0x00000000, 0x00000000[r21]
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.17_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3313
	mul 0x00000014, r22, r0
	mov #_Com_TxIPduRunTimeState, r20
	add r22, r20
	st.h r0, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3314
	st.h r0, 0x00000002[r20]
	mov 0x00000000, r10
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.17_8:	; if_else_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3322
	mov r20, r2
	mul 0x0000000C, r2, r0
	add r21, r2
	tst1 0x00000001, 0x00000005[r2]
	bnz9 .BB.LABEL.17_11
.BB.LABEL.17_9:	; if_else_bb139.if_break_bb156_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	movea 0x00000080, r0, r10
.BB.LABEL.17_10:	; if_break_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3332
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.17_11:	; if_then_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3325
	mul 0x0000000C, r20, r0
	add r20, r21
	ld.bu 0x00000004[r21], r2
	shl 0x00000002, r2
	mov #_Com_TxSignalGroupErrorAndNotification, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	jarl [r2], r31
	br9 .BB.LABEL.17_9
_Com_InvalidateSignalHandle:
	.stack _Com_InvalidateSignalHandle = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3350
	movea 0x00000080, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3420
	jmp [r31]
_Com_InvalidateSignalGroupHandle:
	.stack _Com_InvalidateSignalGroupHandle = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3436
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3441
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3466
	mov r6, r5
	mul 0x0000000C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3467
	ld.bu 0x00000000[r2], r20
	ld.bu 0x00000001[r2], r21
	mov r6, r22
	br9 .BB.LABEL.19_8
.BB.LABEL.19_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3470
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x0000001C[r2], r2
	andi 0x000000FF, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3472
	mov r5, r6
	mul 0x0000001C, r6, r0
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3473
	ld.hu 0x00000008[r6], r6
	ori 0x0000FFFF, r0, r7
	cmp r7, r6
	bz9 .BB.LABEL.19_7
.BB.LABEL.19_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3471
	mulhi 0x0000001C, r5, r5
	add r5, r2
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3490
	add 0xFFFFFFFD, r2
	cmp 0x00000009, r2
	bh9 .BB.LABEL.19_7
.BB.LABEL.19_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.19_10[r2]
.SWITCH.LABEL.19_10:
	br9 .BB.LABEL.19_5
	br9 .BB.LABEL.19_7
	br9 .BB.LABEL.19_7
	br9 .BB.LABEL.19_4
	br9 .BB.LABEL.19_5
	br9 .BB.LABEL.19_7
	br9 .BB.LABEL.19_7
	br9 .BB.LABEL.19_4
	br9 .BB.LABEL.19_7
	br9 .BB.LABEL.19_4
.SWITCH.LABEL.19_10.END:
.BB.LABEL.19_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3504
	mov #_Com_Signal8BitInvalidValue, r7
	br9 .BB.LABEL.19_6
.BB.LABEL.19_5:	; switch_clause_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3512
	add r6, r6
	mov #_Com_Signal16BitInvalidValue, r7
.BB.LABEL.19_6:	; switch_clause_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	add r6, r7
	andi 0x000000FF, r20, r6
	jarl _Com_SendTxGroupSignalHandle.1, r31
.BB.LABEL.19_7:	; if_break_bb
	add 0x00000001, r20
.BB.LABEL.19_8:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3468
	andi 0x000000FF, r20, r2
	cmp r21, r2
	bl9 .BB.LABEL.19_1
.BB.LABEL.19_9:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3543
	mov r22, r6
	jarl _Com_SendSignalGroup, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3547
	dispose 0x00000000, 0x00000071, [r31]
_Com_TriggerIPDUSendHandle:
	.stack _Com_TriggerIPDUSendHandle = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3564
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3567
	movea 0xFFFFFF8A, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3568
	andi 0x0000FFFF, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3571
	mul 0x00000014, r2, r0
	mov #_Com_TxIPduRunTimeState, r5
	add r2, r5
	ld.bu 0x0000000C[r5], r2
	add 0x0000000C, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3572
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.20_4
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3576
	andi 0x00000008, r2, r0
	bz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3582
	ori 0x00000010, r2, r2
	st.b r2, 0x00000000[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3583
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3587
	zxh r6
	jarl _Com_TriggerIPDUSendInternalHandle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.20_4:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3597
	dispose 0x00000000, 0x00000001, [r31]
_Com_MainFunctionTxHandle:
	.stack _Com_MainFunctionTxHandle = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3733
	prepare 0x00000679, 0x00000014
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3740
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; entry.bb97_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.21_17
.BB.LABEL.21_2:	; bb13
	movhi HIGHW1(#_Com_ConfigStd), r0, r21
	ld.w LOWW(#_Com_ConfigStd)[r21], r21
	ld.w 0x00000030[r21], r21
	mov r20, r2
	add r2, r2
	add r21, r2
	ld.hu 0xFFFFFFFE[r2], r21
	br9 .BB.LABEL.21_17
.BB.LABEL.21_3:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3743
	andi 0x0000FFFF, r21, r22
	mov r22, r2
	mul 0x00000014, r2, r0
	mov #_Com_TxIPduRunTimeState, r23
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3744
	ld.bu 0x0000000C[r23], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3745
	add r23, r2
	movea 0x00000014, r0, r6
	mov r3, r7
	add r7, r6
	br9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; bb26
	ld.w 0x00000000[r2], r8
	st.w r8, 0x00000000[r7]
	add 0x00000004, r2
	add 0x00000004, r7
.BB.LABEL.21_5:	; bb26
	cmp r7, r6
	bnz9 .BB.LABEL.21_4
.BB.LABEL.21_6:	; bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3744
	andi 0x00000001, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3746
	movhi HIGHW1(#_activeEnable_Test), r0, r5
	st.b r2, LOWW(#_activeEnable_Test)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3744
	addi 0x0000000C, r23, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3747
	cmp 0x00000000, r2
	bz9 .BB.LABEL.21_16
.BB.LABEL.21_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3749
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000004[r2], r25
	andi 0x0000FFFF, r21, r2
	mul 0x00000030, r2, r0
	add r2, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3755
	tst1 0x00000001, 0x00000000[r24]
	bz9 .BB.LABEL.21_9
.BB.LABEL.21_8:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3758
	mov r25, r6
	jarl _Com_ConfirmationProcess, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3759
	clr1 0x00000001, 0x00000000[r24]
.BB.LABEL.21_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3801
	mul 0x00000014, r22, r0
	mov #_Com_TxIPduRunTimeState, r2
	add r22, r2
	ld.w 0x00000010[r2], r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.21_12
.BB.LABEL.21_10:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	cmp 0x00000005, r2
	bz9 .BB.LABEL.21_13
.BB.LABEL.21_11:	; if_break_bb.switch_break_bb_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.21_14
.BB.LABEL.21_12:	; switch_clause_bb
	mov 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3807
	mov r23, r6
	mov r25, r7
	jarl _Com_MainFuncTxDirect.1, r31
	br9 .BB.LABEL.21_14
.BB.LABEL.21_13:	; switch_clause_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3821
	mov r23, r6
	mov r25, r7
	jarl _Com_MainFuncTxPeriod.1, r31
.BB.LABEL.21_14:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3828
	cmp 0x00000000, r10
	bz9 .BB.LABEL.21_16
.BB.LABEL.21_15:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3846
	andi 0x0000FFFF, r21, r6
	jarl _Com_MainFunction_SendPdu.1, r31
.BB.LABEL.21_16:	; if_break_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	add 0x00000001, r21
.BB.LABEL.21_17:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3740
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000030[r2], r2
	mov r20, r5
	add r5, r5
	add r5, r2
	ld.hu 0x00000000[r2], r2
	andi 0x0000FFFF, r21, r5
	cmp r2, r5
	bl9 .BB.LABEL.21_3
.BB.LABEL.21_18:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3851
	dispose 0x00000014, 0x00000679, [r31]
_Com_TriggerTransmitHandle:
	.stack _Com_TriggerTransmitHandle = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3867
	prepare 0x00000071, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3870
	movea 0xFFFFFF8A, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3871
	zxh r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3872
	mov r2, r5
	mul 0x00000014, r5, r0
	mov #_Com_TxIPduRunTimeState, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3877
	ld.hu 0x00000000[r6], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3875
	addi 0x0000000C, r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3873
	movhi HIGHW1(#_Com_ConfigStd), r0, r5
	ld.w LOWW(#_Com_ConfigStd)[r5], r5
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3874
	mul 0x00000030, r2, r0
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3877
	tst1 0x00000000, 0x0000000C[r6]
	ld.hu 0x0000000C[r5], r2
	mov r7, r22
	bz9 .BB.LABEL.22_3
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3879
	ld.hu 0x00000008[r22], r5
	cmp r5, r20
	bh9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3882
	st.h r20, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3883
	mov #_Com_TxIPduRuntimeBuff, r5
	add r2, r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3884
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3893
	jarl _SchM_Enter_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3902
	ld.w 0x00000000[r22], r6
	ld.w 0x00000000[r3], r7
	mov r20, r8
	jarl _ILib_memcpy, r31
	mov r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3904
	ld.h 0x00000008[r2], r2
	st.h r2, 0x00000008[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3912
	jarl _SchM_Exit_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3921
	set1 0x00000003, 0x00000000[r21]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3922
	dispose 0x0000000C, 0x00000071, [r31]
.BB.LABEL.22_3:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3932
	dispose 0x0000000C, 0x00000071, [r31]
_Com_TxConfirmationHandle:
	.stack _Com_TxConfirmationHandle = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3948
	movea 0xFFFFFF8A, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3951
	zxh r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3953
	mov r2, r5
	mul 0x00000014, r5, r0
	mov #_Com_TxIPduRunTimeState, r6
	add r5, r6
	addi 0x0000000C, r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3955
	tst1 0x00000000, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3951
	movhi HIGHW1(#_Com_ConfigStd), r0, r6
	ld.w LOWW(#_Com_ConfigStd)[r6], r6
	ld.w 0x00000004[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3955
	bz9 .BB.LABEL.23_10
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3967
	mov r2, r7
	mul 0x00000014, r7, r0
	mov #_Com_TxIPduRunTimeState, r8
	add r7, r8
	ld.hu 0x00000002[r8], r7
	add 0x00000002, r8
	cmp 0x00000000, r7
	bz9 .BB.LABEL.23_4
.BB.LABEL.23_2:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3969
	add 0xFFFFFFFF, r7
	st.h r7, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3970
	andi 0x0000FFFF, r7, r0
	bnz9 .BB.LABEL.23_5
.BB.LABEL.23_3:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3972
	mov r2, r8
	mul 0x00000014, r8, r0
	mov #_Com_TxIPduRunTimeState, r9
	add r8, r9
	st.h r0, 0x00000006[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3973
	st.h r0, 0x00000004[r9]
	br9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3980
	mov r2, r8
	mul 0x00000014, r8, r0
	mov #_Com_TxIPduRunTimeState, r9
	add r8, r9
	st.h r0, 0x00000006[r9]
.BB.LABEL.23_5:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3983
	andi 0x0000FFFF, r7, r0
	bnz9 .BB.LABEL.23_7
.BB.LABEL.23_6:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 3998
	set1 0x00000001, 0x00000000[r5]
.BB.LABEL.23_7:	; if_break_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 4012
	mov r2, r7
	mul 0x00000030, r7, r0
	add r6, r7
	ld.hu 0x00000012[r7], r7
	ori 0x0000FFFF, r0, r8
	cmp r8, r7
	bnz9 .BB.LABEL.23_10
.BB.LABEL.23_8:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 0
	mov r2, r7
	mul 0x00000030, r7, r0
	add r6, r7
	ld.w 0x0000001C[r7], r7
	cmp 0x00000004, r7
	bnz9 .BB.LABEL.23_10
.BB.LABEL.23_9:	; if_then_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 4015
	mov r2, r7
	mul 0x00000014, r7, r0
	mov #_Com_TxIPduRunTimeState, r8
	add r7, r8
	mul 0x00000030, r2, r0
	add r2, r6
	ld.h 0x00000008[r6], r2
	st.h r2, 0x00000006[r8]
.BB.LABEL.23_10:	; if_break_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_TxInternal.c", 4018
	clr1 0x00000003, 0x00000000[r5]
	jmp [r31]
	.section .bss, bss
_activeEnable_Test:
	.ds (1)
	.align 4
_txIpduStatePtr_Test:
	.ds (20)
