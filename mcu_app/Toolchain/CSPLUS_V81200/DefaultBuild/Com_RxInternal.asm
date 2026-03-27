#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Com\Com_RxInternal.c -oDefaultBuild\Com_RxInternal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_a90908fdd7b44cda84a81a8dc9dc289305ud2dzg.ab2
#@	compiled at Fri Mar 27 09:50:28 2026

	.file "..\..\Bsw\Communication\Common\Com\Com_RxInternal.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Com_ConfigStd
	.extern _Com_IpduGroupDMEnable
	.extern _Com_IpduGroupEnable
	.extern _Com_RxIPduRunTimeState
	.extern _Com_RxIPduInitState
	.extern _Com_RxIPduGroupsRef
	.extern _Com_RxSignalTimeoutVal
	.extern _Com_TimeoutRxSignalRef
	.extern _Com_RxSignalTimeoutNotificationCfg
	.extern _Com_RxSigGrpTimeoutVal
	.extern _Com_TimeoutRxSigGrpRef
	.extern _Com_RxSigGrpTimeoutNotificationCfg
	.extern _Com_RxIPduRuntimeBuff
	.extern _Com_RxIPduInitValue
	.extern _Com_SignalBoolRuntimeBuff
	.extern _Com_Signal8BitRuntimeBuff
	.extern _Com_Signal16BitRuntimeBuff
	.extern _Com_Signal32BitRuntimeBuff
	.extern _Com_Signal64BitRuntimeBuff
	.extern _Com_RxGroupSignalBoolShadowBuff
	.extern _Com_RxGroupSignal8BitShadowBuff
	.extern _Com_RxGroupSignal16BitShadowBuff
	.extern _Com_RxGroupSignal32BitShadowBuff
	.extern _Com_RxSignalTimeOutCnt
	.extern _Com_RxSignalGroupTimeOutCnt
	.public _TestactiveEnable, 1
	.public _Com_ReceiveSignalGroupHandle
	.extern _SchM_Enter_Com_Context
	.extern _SchM_Exit_Com_Context
	.public _Com_ReceiveGroupSignalHandle
	.public _Com_ReceiveSignalHandle
	.extern _ILib_memcpy
	.extern _Com_InitSignalBuffer
	.extern _Com_SignalUnPackHandle
	.public _Com_RxIpduController
	.extern _SchM_Enter_Com_MultiCore_Lock
	.extern _SchM_Exit_Com_MultiCore_Lock
	.public _Com_RxIndicationHandle
	.public _Com_MainFunctionRxHandle
	.public _Com_RxPduDMCtrHandle

	.section .text, text
_Com_ReceiveSignalGroupHandle:
	.stack _Com_ReceiveSignalGroupHandle = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 438
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 440
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000010[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 442
	mul 0x0000000C, r7, r0
	add r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 450
	ld.hu 0x00000004[r2], r20
	ld.hu 0x00000006[r2], r21
	jarl _SchM_Enter_Com_Context, r31
	br9 .BB.LABEL.1_9
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 453
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r2
	andi 0x0000FFFF, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 454
	mul 0x00000018, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 455
	ld.w 0x00000014[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 456
	cmp 0x0000000A, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 454
	ld.hu 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 456
	bh9 .BB.LABEL.1_8
.BB.LABEL.1_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	shl 0x00000001, r5
	jmp #.SWITCH.LABEL.1_11[r5]
.SWITCH.LABEL.1_11:
	br9 .BB.LABEL.1_3
	br9 .BB.LABEL.1_7
	br9 .BB.LABEL.1_8
	br9 .BB.LABEL.1_6
	br9 .BB.LABEL.1_7
	br9 .BB.LABEL.1_8
	br9 .BB.LABEL.1_5
	br9 .BB.LABEL.1_6
	br9 .BB.LABEL.1_7
	br9 .BB.LABEL.1_8
	br9 .BB.LABEL.1_5
.SWITCH.LABEL.1_11.END:
.BB.LABEL.1_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 460
	mov #_Com_RxGroupSignalBoolShadowBuff, r5
	mov #_Com_SignalBoolRuntimeBuff, r6
.BB.LABEL.1_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add r2, r5
	add r6, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	br9 .BB.LABEL.1_8
.BB.LABEL.1_5:	; switch_clause_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 466
	mov #_Com_RxGroupSignal8BitShadowBuff, r5
	mov #_Com_Signal8BitRuntimeBuff, r6
	br9 .BB.LABEL.1_4
.BB.LABEL.1_6:	; switch_clause_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 472
	add r2, r2
	mov #_Com_RxGroupSignal16BitShadowBuff, r5
	add r2, r5
	mov #_Com_Signal16BitRuntimeBuff, r6
	add r6, r2
	ld.h 0x00000000[r2], r2
	st.h r2, 0x00000000[r5]
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; switch_clause_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 479
	shl 0x00000002, r2
	mov #_Com_RxGroupSignal32BitShadowBuff, r5
	add r2, r5
	mov #_Com_Signal32BitRuntimeBuff, r6
	add r6, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000000[r5]
.BB.LABEL.1_8:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add 0x00000001, r20
.BB.LABEL.1_9:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 451
	andi 0x0000FFFF, r20, r2
	cmp r21, r2
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_10:	; bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 513
	jarl _SchM_Exit_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 515
	dispose 0x00000000, 0x00000061, [r31]
_Com_ReceiveGroupSignalHandle:
	.stack _Com_ReceiveGroupSignalHandle = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 533
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 535
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r5
	movea 0xFFFFFE45, r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 536
	mov r6, r8
	mul 0x00000018, r8, r0
	add r5, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 537
	ld.bu 0x0000000A[r8], r8
	mulh 0x0000000C, r8
	ld.w 0x00000010[r2], r2
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 538
	ld.hu 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 543
	shl 0x00000003, r2
	mov #_Com_RxIPduRunTimeState, r8
	add r2, r8
	addi 0x00000006, r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 544
	tst1 0x00000002, 0x00000006[r8]
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.if_break_bb93_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	movea 0x00000081, r0, r10
	br9 .BB.LABEL.2_12
.BB.LABEL.2_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 546
	mul 0x00000018, r6, r0
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 548
	ld.w 0x00000014[r5], r6
	cmp 0x0000000A, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 546
	ld.hu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 548
	bh9 .BB.LABEL.2_9
.BB.LABEL.2_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.2_13[r6]
.SWITCH.LABEL.2_13:
	br9 .BB.LABEL.2_4
	br9 .BB.LABEL.2_8
	br9 .BB.LABEL.2_9
	br9 .BB.LABEL.2_7
	br9 .BB.LABEL.2_8
	br9 .BB.LABEL.2_9
	br9 .BB.LABEL.2_6
	br9 .BB.LABEL.2_7
	br9 .BB.LABEL.2_8
	br9 .BB.LABEL.2_9
	br9 .BB.LABEL.2_6
.SWITCH.LABEL.2_13.END:
.BB.LABEL.2_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 552
	mov #_Com_RxGroupSignalBoolShadowBuff, r6
.BB.LABEL.2_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add r6, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r7]
	br9 .BB.LABEL.2_9
.BB.LABEL.2_6:	; switch_clause_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 558
	mov #_Com_RxGroupSignal8BitShadowBuff, r6
	br9 .BB.LABEL.2_5
.BB.LABEL.2_7:	; switch_clause_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 573
	add r5, r5
	mov #_Com_RxGroupSignal16BitShadowBuff, r6
	add r5, r6
	ld.h 0x00000000[r6], r5
	st.h r5, 0x00000000[r7]
	br9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; switch_clause_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	shl 0x00000002, r5
	mov #_Com_RxGroupSignal32BitShadowBuff, r6
	add r6, r5
	ld.w 0x00000000[r5], r5
	st.w r5, 0x00000000[r7]
.BB.LABEL.2_9:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 600
	tst1 0x00000000, 0x00000000[r2]
	bnz9 .BB.LABEL.2_11
.BB.LABEL.2_10:	; switch_break_bb.if_break_bb93_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	movea 0x00000080, r0, r10
	br9 .BB.LABEL.2_12
.BB.LABEL.2_11:	; if_then_bb92
	mov 0x00000000, r10
.BB.LABEL.2_12:	; if_break_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 611
	jmp [r31]
_Com_ReceiveSignalHandle:
	.stack _Com_ReceiveSignalHandle = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 628
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 630
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000008[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 632
	mov r6, r2
	mul 0x0000001C, r2, r0
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 633
	ld.hu 0x0000000E[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 637
	shl 0x00000003, r2
	mov #_Com_RxIPduRunTimeState, r5
	add r2, r5
	addi 0x00000006, r5, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 638
	tst1 0x00000002, 0x00000006[r5]
	mov r7, r22
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.if_break_bb96_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	movea 0x00000081, r0, r10
	br9 .BB.LABEL.3_16
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 640
	mul 0x0000001C, r6, r0
	add r6, r20
	ld.hu 0x00000004[r20], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 642
	jarl _SchM_Enter_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 643
	ld.w 0x00000014[r20], r2
	cmp 0x0000000A, r2
	bh9 .BB.LABEL.3_13
.BB.LABEL.3_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.3_17[r2]
.SWITCH.LABEL.3_17:
	br9 .BB.LABEL.3_4
	br9 .BB.LABEL.3_9
	br9 .BB.LABEL.3_11
	br9 .BB.LABEL.3_7
	br9 .BB.LABEL.3_8
	br9 .BB.LABEL.3_10
	br9 .BB.LABEL.3_6
	br9 .BB.LABEL.3_7
	br9 .BB.LABEL.3_8
	br9 .BB.LABEL.3_10
	br9 .BB.LABEL.3_6
.SWITCH.LABEL.3_17.END:
.BB.LABEL.3_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 647
	mov #_Com_SignalBoolRuntimeBuff, r2
.BB.LABEL.3_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add r2, r23
	ld.b 0x00000000[r23], r23
	st.b r23, 0x00000000[r22]
	br9 .BB.LABEL.3_13
.BB.LABEL.3_6:	; switch_clause_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 653
	mov #_Com_Signal8BitRuntimeBuff, r2
	br9 .BB.LABEL.3_5
.BB.LABEL.3_7:	; switch_clause_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 668
	add r23, r23
	mov #_Com_Signal16BitRuntimeBuff, r2
	add r23, r2
	ld.h 0x00000000[r2], r23
	st.h r23, 0x00000000[r22]
	br9 .BB.LABEL.3_13
.BB.LABEL.3_8:	; switch_clause_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 674
	shl 0x00000002, r23
	mov #_Com_Signal32BitRuntimeBuff, r2
	add r2, r23
	ld.w 0x00000000[r23], r23
	st.w r23, 0x00000000[r22]
	br9 .BB.LABEL.3_13
.BB.LABEL.3_9:	; switch_clause_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 677
	shl 0x00000002, r23
	mov #_Com_Signal32BitRuntimeBuff, r2
	mov 0x00000004, r8
	br9 .BB.LABEL.3_12
.BB.LABEL.3_10:	; switch_clause_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 683
	shl 0x00000003, r23
	mov #_Com_Signal64BitRuntimeBuff, r2
	add r2, r23
	ld.w 0x00000004[r23], r2
	ld.w 0x00000000[r23], r23
	st.w r2, 0x00000004[r22]
	st.w r23, 0x00000000[r22]
	br9 .BB.LABEL.3_13
.BB.LABEL.3_11:	; switch_clause_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 686
	shl 0x00000003, r23
	mov #_Com_Signal64BitRuntimeBuff, r2
	mov 0x00000008, r8
.BB.LABEL.3_12:	; switch_clause_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	mov r23, r7
	add r2, r7
	mov r22, r6
	jarl _ILib_memcpy, r31
.BB.LABEL.3_13:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 693
	jarl _SchM_Exit_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 696
	tst1 0x00000000, 0x00000000[r21]
	bnz9 .BB.LABEL.3_15
.BB.LABEL.3_14:	; switch_break_bb.if_break_bb96_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	movea 0x00000080, r0, r10
	br9 .BB.LABEL.3_16
.BB.LABEL.3_15:	; if_then_bb95
	mov 0x00000000, r10
.BB.LABEL.3_16:	; if_break_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 707
	dispose 0x00000000, 0x00000079, [r31]
_Com_RxPduHandle.1:
	.stack _Com_RxPduHandle.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 724
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 727
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 733
	mov r6, r5
	mul 0x00000024, r5, r0
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 735
	jarl [r2], r31
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 737
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 752
	shl 0x00000003, r20
	mov #_Com_RxIPduRunTimeState, r2
	add r20, r2
	set1 0x00000003, 0x00000006[r2]
.BB.LABEL.4_3:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 757
	dispose 0x00000000, 0x00000041, [r31]
_Com_RxSignalGroupTimeOutHandle.1:
	.stack _Com_RxSignalGroupTimeOutHandle.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 774
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 788
	ld.bu 0x00000018[r7], r20
	ld.bu 0x00000019[r7], r21
	br9 .BB.LABEL.5_7
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 794
	andi 0x000000FF, r20, r22
	add r22, r22
	mov #_Com_RxSignalGroupTimeOutCnt, r2
	add r2, r22
	ld.hu 0x00000000[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_6
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 796
	ld.h 0x00000000[r22], r2
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 797
	ld.hu 0x00000000[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_6
.BB.LABEL.5_3:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 855
	andi 0x000000FF, r20, r2
	shl 0x00000002, r2
	mov #_Com_RxSigGrpTimeoutNotificationCfg, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 857
	ld.w 0x00000000[r2], r2
	jarl [r2], r31
.BB.LABEL.5_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 860
	andi 0x000000FF, r20, r2
	add r2, r2
	mov #_Com_RxSigGrpTimeoutVal, r5
	add r5, r2
	ld.h 0x00000000[r2], r2
	st.h r2, 0x00000000[r22]
.BB.LABEL.5_6:	; if_break_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add 0x00000001, r20
.BB.LABEL.5_7:	; bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 790
	andi 0x000000FF, r20, r2
	cmp r21, r2
	bl9 .BB.LABEL.5_1
.BB.LABEL.5_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 864
	dispose 0x00000000, 0x00000071, [r31]
_Com_ResetRxPduBufferAndSignalBuffer.1:
	.stack _Com_ResetRxPduBufferAndSignalBuffer.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 895
	prepare 0x00000479, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 897
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000000[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 904
	mov r20, r22
	mul 0x00000024, r22, r0
	add r21, r22
	ld.hu 0x0000000C[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 905
	mov r20, r2
	shl 0x00000003, r2
	mov #_Com_RxIPduInitState, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 908
	ld.hu 0x00000000[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 906
	jarl _SchM_Enter_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 908
	mov #_Com_RxIPduInitValue, r7
	add r23, r7
	mov #_Com_RxIPduRuntimeBuff, r2
	mov r23, r6
	add r2, r6
	mov r24, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 909
	jarl _SchM_Exit_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 916
	ld.hu 0x0000000E[r22], r23
	ld.hu 0x00000010[r22], r22
	br9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 919
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000008[r2], r2
	andi 0x0000FFFF, r23, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 920
	mul 0x0000001C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 921
	ld.w 0x00000014[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 935
	ld.hu 0x00000004[r2], r7
	mov 0x00000000, r8
	jarl _Com_InitSignalBuffer, r31
	add 0x00000001, r23
.BB.LABEL.6_2:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 917
	andi 0x0000FFFF, r23, r2
	cmp r22, r2
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 951
	mov r20, r2
	mul 0x00000024, r2, r0
	add r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 952
	ld.bu 0x00000016[r21], r22
	ld.bu 0x00000017[r21], r21
	br9 .BB.LABEL.6_8
.BB.LABEL.6_4:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 955
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000010[r2], r2
	andi 0x000000FF, r22, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 956
	mul 0x0000000C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 957
	ld.hu 0x00000004[r2], r23
	ld.hu 0x00000006[r2], r24
	br9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 960
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r2
	andi 0x0000FFFF, r23, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 961
	mul 0x00000018, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 962
	ld.w 0x00000014[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 985
	ld.hu 0x00000000[r2], r7
	mov 0x00000000, r8
	jarl _Com_InitSignalBuffer, r31
	add 0x00000001, r23
.BB.LABEL.6_6:	; bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 958
	andi 0x0000FFFF, r23, r2
	cmp r24, r2
	bl9 .BB.LABEL.6_5
.BB.LABEL.6_7:	; bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add 0x00000001, r22
.BB.LABEL.6_8:	; bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 953
	andi 0x000000FF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.6_4
.BB.LABEL.6_9:	; bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1004
	mov r20, r2
	shl 0x00000003, r2
	mov #_Com_RxIPduRunTimeState, r5
	add r2, r5
	ld.bu 0x00000006[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1005
	andi 0x000000F3, r2, r2
	st.b r2, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1006
	shl 0x00000003, r20
	mov #_Com_RxIPduInitState, r2
	add r20, r2
	ld.h 0x00000000[r2], r2
	st.h r2, 0x00000000[r5]
	dispose 0x00000000, 0x00000479, [r31]
_Com_SignalRxIndication.1:
	.stack _Com_SignalRxIndication.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1102
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1113
	jarl _Com_RxSignalHandle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Com_RxSignalHandle.1:
	.stack _Com_RxSignalHandle.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1399
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1405
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.hu 0x0000000E[r20], r5
	mul 0x00000024, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1406
	ld.hu 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1402
	ld.w 0x00000014[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1464
	ld.hu 0x00000004[r20], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1406
	mov #_Com_RxIPduRuntimeBuff, r9
	add r2, r9
	mov 0x00000003, r7
	mov r21, r6
	mov r20, r8
	jarl _Com_SignalUnPackHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1464
	mov r10, r6
	mov r11, r7
	mov r21, r8
	mov r22, r9
	jarl _Com_RxSignalBuffHandle.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1468
	ld.w 0x00000000[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1470
	jarl [r2], r31
.BB.LABEL.8_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1476
	dispose 0x00000000, 0x00000071, [r31]
_Com_RxSignalBuffHandle.1:
	.stack _Com_RxSignalBuffHandle.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1634
	cmp 0x0000000A, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1636
	bh9 .BB.LABEL.9_7
.BB.LABEL.9_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	shl 0x00000001, r8
	jmp #.SWITCH.LABEL.9_8[r8]
.SWITCH.LABEL.9_8:
	br9 .BB.LABEL.9_2
	br9 .BB.LABEL.9_5
	br9 .BB.LABEL.9_6
	br9 .BB.LABEL.9_4
	br9 .BB.LABEL.9_5
	br9 .BB.LABEL.9_6
	br9 .BB.LABEL.9_3
	br9 .BB.LABEL.9_4
	br9 .BB.LABEL.9_5
	br9 .BB.LABEL.9_6
	br9 .BB.LABEL.9_3
.SWITCH.LABEL.9_8.END:
.BB.LABEL.9_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1640
	mov #_Com_SignalBoolRuntimeBuff, r2
	add r2, r9
	add 0xFFFFFFFF, r6
	or r7, r6
	cmp 0x00000000, r6
	setf 0x00000002, r2
	st.b r2, 0x00000000[r9]
	jmp [r31]
.BB.LABEL.9_3:	; switch_clause_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1646
	mov #_Com_Signal8BitRuntimeBuff, r2
	add r2, r9
	st.b r6, 0x00000000[r9]
	jmp [r31]
.BB.LABEL.9_4:	; switch_clause_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1652
	add r9, r9
	mov #_Com_Signal16BitRuntimeBuff, r2
	add r9, r2
	st.h r6, 0x00000000[r2]
	jmp [r31]
.BB.LABEL.9_5:	; switch_clause_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1659
	shl 0x00000002, r9
	mov #_Com_Signal32BitRuntimeBuff, r2
	add r9, r2
	st.w r6, 0x00000000[r2]
	jmp [r31]
.BB.LABEL.9_6:	; switch_clause_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1666
	shl 0x00000003, r9
	mov #_Com_Signal64BitRuntimeBuff, r2
	add r9, r2
	st.w r7, 0x00000004[r2]
	st.w r6, 0x00000000[r2]
.BB.LABEL.9_7:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1676
	jmp [r31]
_Com_SignalGroupRxIndication.1:
	.stack _Com_SignalGroupRxIndication.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1756
	prepare 0x00000679, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1763
	mov r22, r7
	mov r21, r8
	jarl _Com_SignalGroupInvalidCalculate.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1797
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1804
	ld.hu 0x00000004[r20], r24
	ld.hu 0x00000006[r20], r25
	br9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1808
	andi 0x0000FFFF, r24, r7
	mov r23, r6
	mov r22, r8
	mov r21, r9
	jarl _Com_RxGroupSignalBuffHanlde.1, r31
	add 0x00000001, r24
.BB.LABEL.10_3:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1806
	andi 0x0000FFFF, r24, r2
	cmp r25, r2
	bl9 .BB.LABEL.10_2
.BB.LABEL.10_4:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1813
	ld.w 0x00000000[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1815
	jarl [r2], r31
.BB.LABEL.10_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1822
	dispose 0x00000000, 0x00000679, [r31]
_Com_RxGroupSignalBuffHanlde.1:
	.stack _Com_RxGroupSignalBuffHanlde.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1839
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1845
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r2
	mul 0x00000018, r7, r0
	add r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1847
	ld.w 0x00000014[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1893
	ld.hu 0x00000000[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1886
	mov #_Com_RxIPduRuntimeBuff, r9
	add r8, r9
	mov 0x00000004, r7
	mov r20, r6
	mov r2, r8
	jarl _Com_SignalUnPackHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1893
	mov r10, r6
	mov r11, r7
	mov r20, r8
	mov r21, r9
	jarl _Com_RxSignalBuffHandle.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 1912
	dispose 0x00000000, 0x00000061, [r31]
_Com_SignalGroupInvalidCalculate.1:
	.stack _Com_SignalGroupInvalidCalculate.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2217
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2234
	ld.hu 0x00000004[r6], r20
	ld.hu 0x00000006[r6], r21
	mov r7, r22
	br9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2238
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r8
	andi 0x0000FFFF, r20, r2
	mul 0x00000018, r2, r0
	add r2, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2242
	ld.w 0x00000014[r8], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2261
	mov #_Com_RxIPduRuntimeBuff, r9
	add r22, r9
	mov 0x00000004, r7
	jarl _Com_SignalUnPackHandle, r31
	add 0x00000001, r20
.BB.LABEL.12_2:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2236
	andi 0x0000FFFF, r20, r2
	cmp r21, r2
	bl9 .BB.LABEL.12_1
.BB.LABEL.12_3:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2296
	dispose 0x00000000, 0x00000071, [r31]
_Com_RxSignalTimeOutHandle.1:
	.stack _Com_RxSignalTimeOutHandle.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2313
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2317
	ld.bu 0x00000014[r7], r20
	ld.bu 0x00000015[r7], r21
	br9 .BB.LABEL.13_7
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2326
	andi 0x000000FF, r20, r22
	add r22, r22
	mov #_Com_RxSignalTimeOutCnt, r2
	add r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2327
	ld.hu 0x00000000[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_6
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2329
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2330
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.13_6
.BB.LABEL.13_3:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2361
	andi 0x000000FF, r20, r2
	shl 0x00000002, r2
	mov #_Com_RxSignalTimeoutNotificationCfg, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2363
	ld.w 0x00000000[r2], r2
	jarl [r2], r31
.BB.LABEL.13_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2366
	andi 0x000000FF, r20, r2
	add r2, r2
	mov #_Com_RxSignalTimeoutVal, r5
	add r5, r2
	ld.h 0x00000000[r2], r2
	st.h r2, 0x00000000[r22]
.BB.LABEL.13_6:	; if_break_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add 0x00000001, r20
.BB.LABEL.13_7:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2318
	andi 0x000000FF, r20, r2
	cmp r21, r2
	bl9 .BB.LABEL.13_1
.BB.LABEL.13_8:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2371
	dispose 0x00000000, 0x00000071, [r31]
_Com_RxIpduBaseDMTimeOutHandle.1:
	.stack _Com_RxIpduBaseDMTimeOutHandle.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2391
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2393
	ld.hu 0x00000002[r6], r2
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2395
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2396
	andi 0x0000FFFF, r2, r0
	bnz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2399
	mov r21, r6
	mov r20, r7
	jarl _Com_RxDMTimeOutHandleSignal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2403
	mov r21, r6
	mov r20, r7
	jarl _Com_RxDMTimeOutHandleSignalGroup.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2405
	ld.h 0x0000000A[r20], r2
	st.h r2, 0x00000002[r21]
.BB.LABEL.14_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2408
	dispose 0x00000000, 0x00000061, [r31]
_Com_RxDMTimeOutHandleSignal.1:
	.stack _Com_RxDMTimeOutHandleSignal.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2425
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2439
	ld.bu 0x00000014[r7], r20
	ld.bu 0x00000015[r7], r21
	br9 .BB.LABEL.15_5
.BB.LABEL.15_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2449
	andi 0x000000FF, r20, r2
	add r2, r2
	mov #_Com_RxSignalTimeoutVal, r5
	add r2, r5
	ld.hu 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2476
	andi 0x000000FF, r20, r2
	shl 0x00000002, r2
	mov #_Com_RxSignalTimeoutNotificationCfg, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2478
	ld.w 0x00000000[r2], r2
	jarl [r2], r31
.BB.LABEL.15_4:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add 0x00000001, r20
.BB.LABEL.15_5:	; bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2440
	andi 0x000000FF, r20, r2
	cmp r21, r2
	bl9 .BB.LABEL.15_1
.BB.LABEL.15_6:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2484
	dispose 0x00000000, 0x00000061, [r31]
_Com_RxDMTimeOutHandleSignalGroup.1:
	.stack _Com_RxDMTimeOutHandleSignalGroup.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2502
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2513
	ld.bu 0x00000018[r7], r20
	ld.bu 0x00000019[r7], r21
	br9 .BB.LABEL.16_5
.BB.LABEL.16_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2523
	andi 0x000000FF, r20, r2
	add r2, r2
	mov #_Com_RxSigGrpTimeoutVal, r5
	add r2, r5
	ld.hu 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2587
	andi 0x000000FF, r20, r2
	shl 0x00000002, r2
	mov #_Com_RxSigGrpTimeoutNotificationCfg, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2589
	ld.w 0x00000000[r2], r2
	jarl [r2], r31
.BB.LABEL.16_4:	; if_break_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add 0x00000001, r20
.BB.LABEL.16_5:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2514
	andi 0x000000FF, r20, r2
	cmp r21, r2
	bl9 .BB.LABEL.16_1
.BB.LABEL.16_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2595
	dispose 0x00000000, 0x00000061, [r31]
_Com_ResetRxPduTimeOut.1:
	.stack _Com_ResetRxPduTimeOut.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2613
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2615
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2622
	mov r6, r5
	mul 0x00000024, r5, r0
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2623
	ld.bu 0x00000014[r5], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2622
	ld.bu 0x00000015[r5], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2624
	cmp r8, r7
	setf 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2642
	shl 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2649
	ld.bu 0x00000018[r5], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2648
	ld.bu 0x00000019[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2650
	cmp r5, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2668
	cmov 0x00000001, 0x00000004, r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2677
	cmp 0x00000000, r5
	bz9 .BB.LABEL.17_4
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2680
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2682
	mov r6, r5
	shl 0x00000003, r5
	mov #_Com_RxIPduRunTimeState, r7
	add r5, r7
	mov r6, r5
	mul 0x00000024, r5, r0
	add r5, r2
	ld.h 0x00000008[r2], r2
	st.h r2, 0x00000002[r7]
.BB.LABEL.17_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2694
	shl 0x00000003, r6
	mov #_Com_RxIPduRunTimeState, r2
	add r6, r2
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2695
	st.b r5, 0x00000007[r2]
.BB.LABEL.17_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2699
	jmp [r31]
_Com_DisableRxPduTimeOut.1:
	.stack _Com_DisableRxPduTimeOut.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2716
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2718
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2722
	mov r6, r5
	mul 0x00000024, r5, r0
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2723
	ld.bu 0x00000014[r5], r7
	ld.bu 0x00000015[r5], r5
	br9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2726
	andi 0x000000FF, r7, r8
	add r8, r8
	mov #_Com_RxSignalTimeOutCnt, r9
	add r8, r9
	st.h r0, 0x00000000[r9]
	add 0x00000001, r7
.BB.LABEL.18_2:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2724
	andi 0x000000FF, r7, r8
	cmp r5, r8
	bl9 .BB.LABEL.18_1
.BB.LABEL.18_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2731
	mov r6, r5
	mul 0x00000024, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2732
	ld.bu 0x00000018[r2], r5
	ld.bu 0x00000019[r2], r2
	br9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2735
	andi 0x000000FF, r5, r7
	add r7, r7
	mov #_Com_RxSignalGroupTimeOutCnt, r8
	add r7, r8
	st.h r0, 0x00000000[r8]
	add 0x00000001, r5
.BB.LABEL.18_5:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2733
	andi 0x000000FF, r5, r7
	cmp r2, r7
	bl9 .BB.LABEL.18_4
.BB.LABEL.18_6:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2739
	shl 0x00000003, r6
	mov #_Com_RxIPduRunTimeState, r2
	add r6, r2
	st.b r0, 0x00000007[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2740
	st.h r0, 0x00000002[r2]
	jmp [r31]
_Com_ResetUpdateDMTime.1:
	.stack _Com_ResetUpdateDMTime.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2760
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2762
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2772
	mov r6, r5
	mul 0x00000024, r5, r0
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2773
	ld.bu 0x00000014[r5], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2772
	ld.bu 0x00000015[r5], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2774
	cmp r8, r7
	setf 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2797
	shl 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2805
	ld.bu 0x00000018[r5], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2804
	ld.bu 0x00000019[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2806
	cmp r5, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2829
	cmov 0x00000001, 0x00000004, r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2838
	cmp 0x00000000, r5
	bz9 .BB.LABEL.19_4
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2840
	andi 0x00000004, r5, r0
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2842
	mov r6, r5
	shl 0x00000003, r5
	mov #_Com_RxIPduRunTimeState, r7
	add r5, r7
	mov r6, r5
	mul 0x00000024, r5, r0
	add r5, r2
	ld.h 0x0000000A[r2], r2
	st.h r2, 0x00000002[r7]
.BB.LABEL.19_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2854
	shl 0x00000003, r6
	mov #_Com_RxIPduRunTimeState, r2
	add r6, r2
	mov 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2855
	st.b r5, 0x00000007[r2]
.BB.LABEL.19_4:	; if_break_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2861
	jmp [r31]
_Com_CopyPduDataToRxBuffer.1:
	.stack _Com_CopyPduDataToRxBuffer.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2976
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2978
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000000[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2979
	jarl _SchM_Enter_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2981
	mov r20, r2
	mul 0x00000024, r2, r0
	add r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2983
	ld.hu 0x0000000C[r22], r2
	ld.hu 0x00000008[r21], r8
	ld.w 0x00000000[r21], r7
	mov #_Com_RxIPduRuntimeBuff, r6
	add r2, r6
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2995
	jarl _SchM_Exit_Com_Context, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2998
	shl 0x00000003, r20
	mov #_Com_RxIPduRunTimeState, r2
	add r20, r2
	ld.h 0x00000008[r21], r5
	st.h r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 2999
	dispose 0x00000000, 0x00000071, [r31]
_Com_IndicationProcess.1:
	.stack _Com_IndicationProcess.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3015
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3017
	ld.h 0x00000000[r6], r20
	ld.h 0x00000004[r7], r2
	sub r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3030
	ld.hu 0x0000000E[r7], r21
	ld.hu 0x00000010[r7], r22
	ld.hu 0x0000000C[r7], r23
	mov r7, r24
	br9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3033
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000008[r2], r6
	andi 0x0000FFFF, r21, r2
	mul 0x0000001C, r2, r0
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3051
	andi 0x0000FFFF, r20, r7
	mov r23, r8
	jarl _Com_SignalRxIndication.1, r31
	add 0x00000001, r21
.BB.LABEL.21_2:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3031
	andi 0x0000FFFF, r21, r2
	cmp r22, r2
	bl9 .BB.LABEL.21_1
.BB.LABEL.21_3:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3059
	ld.bu 0x00000016[r24], r21
	ld.bu 0x00000017[r24], r22
	br9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3062
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000010[r2], r6
	andi 0x000000FF, r21, r2
	mul 0x0000000C, r2, r0
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3080
	andi 0x0000FFFF, r20, r7
	mov r23, r8
	jarl _Com_SignalGroupRxIndication.1, r31
	add 0x00000001, r21
.BB.LABEL.21_5:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3060
	andi 0x000000FF, r21, r2
	cmp r22, r2
	bl9 .BB.LABEL.21_4
.BB.LABEL.21_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3115
	dispose 0x00000000, 0x00000479, [r31]
_Com_RxIpduController:
	.stack _Com_RxIpduController = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3717
	prepare 0x00000071, 0x00000000
	mov 0x00000000, r20
	mov r6, r21
	br9 .BB.LABEL.22_13
.BB.LABEL.22_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3733
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000000[r2], r2
	andi 0x0000FFFF, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3734
	mov r5, r6
	mul 0x00000024, r6, r0
	add r2, r6
	ld.bu 0x00000013[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3736
	cmp 0x00000000, r6
	bz9 .BB.LABEL.22_12
.BB.LABEL.22_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3738
	mul 0x00000024, r5, r0
	add r5, r2
	ld.bu 0x00000012[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3739
	andi 0x0000FFFF, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3740
	shl 0x00000003, r5
	mov #_Com_RxIPduRunTimeState, r22
	add r5, r22
	ld.bu 0x00000006[r22], r5
	add 0x00000006, r22
	andi 0x00000001, r5, r5
	br9 .BB.LABEL.22_5
.BB.LABEL.22_3:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3743
	andi 0x0000FFFF, r2, r7
	mov #_Com_RxIPduGroupsRef, r8
	add r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3744
	ld.bu 0x00000000[r8], r7
	mov #_Com_IpduGroupEnable, r8
	add r7, r8
	ld.bu 0x00000000[r8], r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.22_6
.BB.LABEL.22_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add 0x00000001, r2
.BB.LABEL.22_5:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3741
	andi 0x0000FFFF, r2, r7
	cmp r6, r7
	bl9 .BB.LABEL.22_3
.BB.LABEL.22_6:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3750
	zxh r2
	cmp r6, r2
	bnc9 .BB.LABEL.22_10
.BB.LABEL.22_7:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3753
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.22_12
.BB.LABEL.22_8:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3755
	jarl _SchM_Enter_Com_MultiCore_Lock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3756
	set1 0x00000000, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3757
	jarl _SchM_Exit_Com_MultiCore_Lock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3760
	andi 0x0000FFFF, r20, r6
	jarl _Com_ResetRxPduTimeOut.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3766
	cmp 0x00000000, r21
	bz9 .BB.LABEL.22_12
.BB.LABEL.22_9:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3770
	andi 0x0000FFFF, r20, r6
	jarl _Com_ResetRxPduBufferAndSignalBuffer.1, r31
	br9 .BB.LABEL.22_12
.BB.LABEL.22_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3787
	bz9 .BB.LABEL.22_12
.BB.LABEL.22_11:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3789
	jarl _SchM_Enter_Com_MultiCore_Lock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3790
	clr1 0x00000000, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3791
	jarl _SchM_Exit_Com_MultiCore_Lock, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3794
	andi 0x0000FFFF, r20, r6
	jarl _Com_DisableRxPduTimeOut.1, r31
.BB.LABEL.22_12:	; if_break_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add 0x00000001, r20
.BB.LABEL.22_13:	; bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3727
	andi 0x0000FFFF, r20, r2
	movea 0x00000076, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.22_1
.BB.LABEL.22_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3801
	dispose 0x00000000, 0x00000071, [r31]
_Com_RxIndicationHandle:
	.stack _Com_RxIndicationHandle = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3819
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3825
	mov r6, r2
	shl 0x00000003, r2
	mov #_Com_RxIPduRunTimeState, r5
	add r2, r5
	ld.bu 0x00000006[r5], r2
	andi 0x00000001, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3821
	movhi HIGHW1(#_Com_ConfigStd), r0, r8
	ld.w LOWW(#_Com_ConfigStd)[r8], r8
	ld.w 0x00000000[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3823
	mov r6, r9
	mul 0x00000024, r9, r0
	add r9, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3824
	ld.h 0x00000006[r8], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3823
	ld.hu 0x00000004[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3826
	movhi HIGHW1(#_TestactiveEnable), r0, r10
	st.b r2, LOWW(#_TestactiveEnable)[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3824
	add r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3825
	add 0x00000006, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3828
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.23_6
.BB.LABEL.23_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	ld.hu 0x00000008[r20], r2
	cmp r2, r8
	bh9 .BB.LABEL.23_6
.BB.LABEL.23_2:	; bb52
	zxh r9
	ld.hu 0x00000008[r20], r2
	cmp r2, r9
	bl9 .BB.LABEL.23_6
.BB.LABEL.23_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3833
	tst1 0x00000001, 0x00000000[r5]
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3837
	mov r21, r6
	mov r20, r7
	jarl _Com_ResetUpdateDMTime.1, r31
.BB.LABEL.23_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3876
	mov r21, r6
	mov r20, r7
	jarl _Com_CopyPduDataToRxBuffer.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3877
	mov r21, r6
	mov r20, r7
	jarl _Com_RxPduHandle.1, r31
.BB.LABEL.23_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3880
	dispose 0x00000000, 0x00000061, [r31]
_Com_MainFunctionRxHandle:
	.stack _Com_MainFunctionRxHandle = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3896
	prepare 0x00000679, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3900
	bnz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; entry.bb132_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.24_15
.BB.LABEL.24_2:	; bb11
	movhi HIGHW1(#_Com_ConfigStd), r0, r21
	ld.w LOWW(#_Com_ConfigStd)[r21], r21
	ld.w 0x0000002C[r21], r21
	mov r20, r2
	add r2, r2
	add r21, r2
	ld.hu 0xFFFFFFFE[r2], r21
	br9 .BB.LABEL.24_15
.BB.LABEL.24_3:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3906
	andi 0x0000FFFF, r21, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3907
	mov r22, r5
	mul 0x00000024, r5, r0
	ld.w 0x00000000[r2], r23
	add r5, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3906
	mov r22, r2
	shl 0x00000003, r2
	mov #_Com_RxIPduRunTimeState, r24
	add r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3908
	ld.bu 0x00000006[r24], r2
	addi 0x00000006, r24, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3909
	andi 0x00000001, r2, r0
	bz9 .BB.LABEL.24_14
.BB.LABEL.24_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3913
	andi 0x00000008, r2, r0
	bz9 .BB.LABEL.24_6
.BB.LABEL.24_5:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3916
	mov r24, r6
	mov r23, r7
	jarl _Com_IndicationProcess.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3917
	ld.b 0x00000000[r25], r2
	mov 0xFFFFFFF7, r5
	and r5, r2
	st.b r2, 0x00000000[r25]
.BB.LABEL.24_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3923
	andi 0x00000002, r2, r0
	bz9 .BB.LABEL.24_14
.BB.LABEL.24_7:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3926
	shl 0x00000003, r22
	mov #_Com_RxIPduRunTimeState, r2
	add r22, r2
	addi 0x00000007, r2, r22
	tst1 0x00000000, 0x00000007[r2]
	bz9 .BB.LABEL.24_9
.BB.LABEL.24_8:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3928
	mov r24, r6
	mov r23, r7
	jarl _Com_RxSignalTimeOutHandle.1, r31
.BB.LABEL.24_9:	; if_break_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3933
	tst1 0x00000001, 0x00000000[r22]
	bz9 .BB.LABEL.24_11
.BB.LABEL.24_10:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3935
	mov r24, r6
	mov r23, r7
	jarl _Com_RxSignalGroupTimeOutHandle.1, r31
.BB.LABEL.24_11:	; if_break_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3940
	ld.bu 0x00000000[r22], r2
	andi 0x00000008, r2, r0
	bnz9 .BB.LABEL.24_13
.BB.LABEL.24_12:	; bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	andi 0x00000004, r2, r0
	bz9 .BB.LABEL.24_14
.BB.LABEL.24_13:	; if_then_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3943
	mov r24, r6
	mov r23, r7
	jarl _Com_RxIpduBaseDMTimeOutHandle.1, r31
.BB.LABEL.24_14:	; if_break_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add 0x00000001, r21
.BB.LABEL.24_15:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3904
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x0000002C[r2], r5
	mov r20, r6
	add r6, r6
	add r6, r5
	ld.hu 0x00000000[r5], r5
	andi 0x0000FFFF, r21, r6
	cmp r5, r6
	bl9 .BB.LABEL.24_3
.BB.LABEL.24_16:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 3950
	dispose 0x00000000, 0x00000679, [r31]
_Com_RxPduDMCtrHandle:
	.stack _Com_RxPduDMCtrHandle = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4036
	prepare 0x00000041, 0x00000000
	mov 0x00000000, r20
	br9 .BB.LABEL.25_12
.BB.LABEL.25_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4047
	movhi HIGHW1(#_Com_ConfigStd), r0, r2
	ld.w LOWW(#_Com_ConfigStd)[r2], r2
	ld.w 0x00000000[r2], r2
	andi 0x0000FFFF, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4048
	mul 0x00000024, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4049
	ld.bu 0x00000013[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4051
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4048
	ld.bu 0x00000012[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4051
	bz9 .BB.LABEL.25_11
.BB.LABEL.25_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4053
	andi 0x0000FFFF, r20, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4054
	shl 0x00000003, r6
	mov #_Com_RxIPduRunTimeState, r7
	add r6, r7
	ld.bu 0x00000006[r7], r6
	add 0x00000006, r7
	andi 0x00000002, r6, r6
	br9 .BB.LABEL.25_5
.BB.LABEL.25_3:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4057
	andi 0x0000FFFF, r2, r8
	mov #_Com_RxIPduGroupsRef, r9
	add r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4058
	ld.bu 0x00000000[r9], r8
	mov #_Com_IpduGroupDMEnable, r9
	add r8, r9
	ld.bu 0x00000000[r9], r8
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.25_6
.BB.LABEL.25_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add 0x00000001, r2
.BB.LABEL.25_5:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4055
	andi 0x0000FFFF, r2, r8
	cmp r5, r8
	bl9 .BB.LABEL.25_3
.BB.LABEL.25_6:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4063
	zxh r2
	cmp r5, r2
	bnc9 .BB.LABEL.25_9
.BB.LABEL.25_7:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4066
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.25_11
.BB.LABEL.25_8:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4068
	set1 0x00000001, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4072
	andi 0x0000FFFF, r20, r6
	jarl _Com_ResetRxPduTimeOut.1, r31
	br9 .BB.LABEL.25_11
.BB.LABEL.25_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4078
	bz9 .BB.LABEL.25_11
.BB.LABEL.25_10:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4080
	clr1 0x00000001, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4083
	andi 0x0000FFFF, r20, r6
	jarl _Com_DisableRxPduTimeOut.1, r31
.BB.LABEL.25_11:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 0
	add 0x00000001, r20
.BB.LABEL.25_12:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4045
	andi 0x0000FFFF, r20, r2
	movea 0x00000076, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.25_1
.BB.LABEL.25_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Com/Com_RxInternal.c", 4089
	dispose 0x00000000, 0x00000041, [r31]
	.section .data, data
_TestactiveEnable:
	.ds (1)
