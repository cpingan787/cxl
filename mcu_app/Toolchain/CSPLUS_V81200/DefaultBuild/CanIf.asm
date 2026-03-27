#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\CAN\CanIf\CanIf.c -oDefaultBuild\CanIf.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_4e173763e0a0468f81c120d7178d9775qokanp2u.0u2
#@	compiled at Fri Mar 27 09:50:13 2026

	.file "..\..\Bsw\Communication\CAN\CanIf\CanIf.c"

	$reg_mode 32
	.dbl_size 8

	.extern _CanIf_CanHoh2Hrh
	.extern _CanIf_DispatchConfigData
	.extern _CanIf_CtrlCfgData
	.extern _Can_DriverApi
	.extern _CanIf_UpRxIndicationArray
	.extern _CanIf_UpTxConfirmationArray
	.public _CanIf_ConfigStd, 4
	.public _test_can, 1
	.public _CanIf_Init
	.public _CanIf_DeInit
	.public _CanIf_SetControllerMode
	.public _CanIf_GetControllerMode
	.public _CanIf_Transmit
	.extern _Det_ReportRuntimeError
	.public _CanIf_SetPduMode
	.extern _SchM_Enter_CanIf_ExclusiveArea_Channel
	.extern _SchM_Exit_CanIf_ExclusiveArea_Channel
	.public _CanIf_GetPduMode
	.public _CanIf_CheckWakeup
	.public _CanIf_GetTxConfirmationState
	.public _CanIf_TxConfirmation
	.extern _CanIf_TransmitBufferedPdu
	.public _CanIf_RxIndication
	.extern _SaveCanMsgToBuffer
	.public _CanIf_ControllerBusOff
	.extern _CanIf_FreeControllerTxBuffer
	.public _CanIf_ControllerModeIndication
	.extern _CanIf_GetBaseCanIdHandle
	.extern _CanIf_FreeDynamicTxPduCanIds
	.extern _CanIf_InitTxBuffer
	.extern _CanIf_InitDynamicTxPduCanId
	.extern _CanIf_TxBusyHandle

	.section .text, text
_CanIf_Init:
	.stack _CanIf_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 277
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 302
	movhi HIGHW1(#_CanIf_InitStatus.1), r0, r2
	ld.w LOWW(#_CanIf_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 305
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	st.w r6, LOWW(#_CanIf_ConfigStd)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 307
	movhi HIGHW1(#_CanIf_InitStatus.1), r0, r2
	st.w r0, LOWW(#_CanIf_InitStatus.1)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 311
	andi 0x000000FF, r2, r5
	shl 0x00000002, r5
	mov #_CanIf_ControllerMode.4, r6
	add r5, r6
	mov 0x00000002, r7
	st.w r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 312
	mov #_CanIf_PduMode.3, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 318
	mov #_CanIf_TxConfirmationState.2, r6
	add r6, r5
	st.w r0, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.1_3:	; bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 309
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 331
	jarl _CanIf_InitAllBuffer.1, r31
.BB.LABEL.1_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 334
	dispose 0x00000000, 0x00000001, [r31]
_CanIf_DeInit:
	.stack _CanIf_DeInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 352
	movhi HIGHW1(#_CanIf_InitStatus.1), r0, r2
	ld.w LOWW(#_CanIf_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 354
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	st.w r0, LOWW(#_CanIf_ConfigStd)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 355
	movhi HIGHW1(#_CanIf_InitStatus.1), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_CanIf_InitStatus.1)[r2]
.BB.LABEL.2_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 357
	jmp [r31]
_CanIf_SetControllerMode:
	.stack _CanIf_SetControllerMode = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 378
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 403
	cmp 0x00000003, r7
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	cmp 0x00000002, r7
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_2:	; entry
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 406
	jarl _CanIf_SetControllStarted.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_4:	; switch_clause_bb6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 409
	jarl _CanIf_SetControllSleep.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_5:	; switch_clause_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 412
	jarl _CanIf_SetControllStopped.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 421
	dispose 0x00000000, 0x00000001, [r31]
_CanIf_GetControllerMode:
	.stack _CanIf_GetControllerMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 441
	shl 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 470
	mov #_CanIf_ControllerMode.4, r2
	add r6, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 474
	jmp [r31]
_CanIf_Transmit:
	.stack _CanIf_Transmit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 497
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 557
	ld.hu 0x00000008[r7], r2
	movea 0x00000040, r0, r5
	cmp r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 563
	bh9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 565
	jarl _CanIf_TransmitHandle.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	movea 0x0000003E, r0, r9
	mov 0x00000005, r8
	mov 0x00000000, r7
	movea 0x0000003C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 569
	jarl _Det_ReportRuntimeError, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
_CanIf_SetPduMode:
	.stack _CanIf_SetPduMode = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 754
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 781
	mov r6, r2
	shl 0x00000002, r2
	mov #_CanIf_ControllerMode.4, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000001, r2
	mov r7, r20
	mov r6, r21
	bnz9 .BB.LABEL.6_11
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 783
	jarl _SchM_Enter_CanIf_ExclusiveArea_Channel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 784
	cmp 0x00000000, r20
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	add 0xFFFFFFFF, r20
	cmp 0x00000000, r20
	bz9 .BB.LABEL.6_6
.BB.LABEL.6_3:	; if_then_bb
	cmp 0x00000002, r20
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_4:	; if_then_bb.switch_break_bb_crit_edge
	mov 0x00000001, r21
	br9 .BB.LABEL.6_10
.BB.LABEL.6_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 787
	shl 0x00000002, r21
	mov #_CanIf_PduMode.3, r2
	add r2, r21
	st.w r0, 0x00000000[r21]
	br9 .BB.LABEL.6_9
.BB.LABEL.6_6:	; switch_clause_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 791
	shl 0x00000002, r21
	mov #_CanIf_PduMode.3, r2
	add r2, r21
	mov 0x00000001, r2
	br9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 807
	shl 0x00000002, r21
	mov #_CanIf_PduMode.3, r2
	add r2, r21
	mov 0x00000003, r2
.BB.LABEL.6_8:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	st.w r2, 0x00000000[r21]
.BB.LABEL.6_9:	; switch_clause_bb17
	mov 0x00000000, r21
.BB.LABEL.6_10:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 815
	jarl _SchM_Exit_CanIf_ExclusiveArea_Channel, r31
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.6_11:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 819
	dispose 0x00000000, 0x00000061, [r31]
_CanIf_GetPduMode:
	.stack _CanIf_GetPduMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 839
	shl 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 861
	mov #_CanIf_PduMode.3, r2
	add r6, r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x00000000[r7]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 865
	jmp [r31]
_CanIf_CheckWakeup:
	.stack _CanIf_CheckWakeup = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1165
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1256
	jmp [r31]
_CanIf_GetTxConfirmationState:
	.stack _CanIf_GetTxConfirmationState = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1344
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1363
	jarl _SchM_Enter_CanIf_ExclusiveArea_Channel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1365
	shl 0x00000002, r20
	mov #_CanIf_TxConfirmationState.2, r2
	add r2, r20
	ld.w 0x00000000[r20], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1367
	st.w r0, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1368
	jarl _SchM_Exit_CanIf_ExclusiveArea_Channel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1371
	mov r21, r10
	dispose 0x00000000, 0x00000061, [r31]
_CanIf_TxConfirmation:
	.stack _CanIf_TxConfirmation = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1617
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1633
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1635
	mov r20, r5
	shl 0x00000005, r5
	add r21, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1636
	ld.hu 0x00000006[r5], r5
	shl 0x00000003, r5
	ld.w 0x00000010[r2], r2
	add r5, r2
	ld.bu 0x00000000[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1639
	jarl _CanIf_TransmitBufferedPdu, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1646
	mov r22, r2
	shl 0x00000002, r2
	mov #_CanIf_ControllerMode.4, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1648
	jarl _SchM_Enter_CanIf_ExclusiveArea_Channel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1649
	shl 0x00000002, r22
	mov #_CanIf_TxConfirmationState.2, r2
	add r2, r22
	mov 0x00000001, r2
	st.w r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1650
	jarl _SchM_Exit_CanIf_ExclusiveArea_Channel, r31
.BB.LABEL.10_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1653
	mov r20, r2
	shl 0x00000005, r2
	add r21, r2
	ld.bu 0x00000004[r2], r2
	shl 0x00000002, r2
	mov #_CanIf_UpTxConfirmationArray, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1656
	shl 0x00000005, r20
	add r20, r21
	ld.hu 0x00000008[r21], r6
	ld.w 0x00000000[r2], r2
	jarl [r2], r31
.BB.LABEL.10_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1667
	dispose 0x00000000, 0x00000071, [r31]
_CanIf_RxIndication:
	.stack _CanIf_RxIndication = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1689
	prepare 0x00000061, 0x00000004
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1717
	ld.bu 0x00000006[r20], r7
	movea 0x00000003, r3, r6
	jarl _CanIf_GetCanIfCtrlId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1750
	ld.bu 0x00000003[r3], r2
	shl 0x00000003, r2
	mov #_CanIf_CtrlCfgData, r5
	add r2, r5
	ld.bu 0x00000001[r5], r2
	shl 0x00000003, r2
	mov #_CanIf_CanHoh2Hrh, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	ld.hu 0x00000004[r20], r5
	add r5, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1754
	ld.hu 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1739
	ld.w 0x00000000[r20], r20
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1754
	mov r20, r7
	jarl _CanIf_CanIdRangCheck.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1758
	ld.hu 0x00000000[r3], r2
	mov r2, r5
	mul 0x0000001C, r5, r0
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r6
	ld.w LOWW(#_CanIf_ConfigStd)[r6], r6
	ld.w 0x00000014[r6], r7
	add r5, r7
	ld.bu 0x00000002[r7], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.11_4
.BB.LABEL.11_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	ld.w 0x00000014[r6], r5
	mul 0x0000001C, r2, r0
	add r2, r5
	ld.hu 0x00000008[r5], r2
	ld.hu 0x00000008[r21], r5
	cmp r2, r5
	bnc9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; if_then_bb66
	movea 0x0000003D, r0, r9
	movea 0x00000014, r0, r8
	mov 0x00000000, r7
	movea 0x0000003C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1761
	jarl _Det_ReportRuntimeError, r31
	br9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1766
	ld.w 0x00000000[r21], r9
	ld.bu 0x00000008[r21], r8
	mov 0x1FFFFFFF, r2
	mov r20, r7
	and r2, r7
	mov 0x00000000, r6
	jarl _SaveCanMsgToBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1771
	ld.hu 0x00000000[r3], r6
	mov r21, r7
	jarl _CanIf_RxIndicationHandle.1, r31
.BB.LABEL.11_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1778
	jarl _SchM_Enter_CanIf_ExclusiveArea_Channel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1798
	jarl _SchM_Exit_CanIf_ExclusiveArea_Channel, r31
.BB.LABEL.11_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1802
	dispose 0x00000004, 0x00000061, [r31]
_CanIf_ControllerBusOff:
	.stack _CanIf_ControllerBusOff = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1824
	prepare 0x00000001, 0x00000004
	mov r6, r7
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1835
	jarl _CanIf_GetCanIfCtrlId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1844
	jarl _SchM_Enter_CanIf_ExclusiveArea_Channel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1846
	ld.bu 0x00000003[r3], r2
	shl 0x00000002, r2
	mov #_CanIf_TxConfirmationState.2, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1849
	ld.bu 0x00000003[r3], r2
	shl 0x00000002, r2
	mov #_CanIf_ControllerMode.4, r5
	add r2, r5
	mov 0x00000002, r2
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1851
	ld.bu 0x00000003[r3], r2
	shl 0x00000002, r2
	mov #_CanIf_PduMode.3, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1854
	ld.bu 0x00000003[r3], r6
	jarl _CanIf_FreeControllerTxBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1856
	jarl _SchM_Exit_CanIf_ExclusiveArea_Channel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1857
	movhi HIGHW1(#_CanIf_DispatchConfigData), r0, r2
	ld.w LOWW(#_CanIf_DispatchConfigData)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1859
	ld.bu 0x00000003[r3], r6
	jarl [r2], r31
.BB.LABEL.12_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 1863
	dispose 0x00000004, 0x00000001, [r31]
_CanIf_ControllerModeIndication:
	.stack _CanIf_ControllerModeIndication = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2035
	prepare 0x00000041, 0x00000004
	mov r6, r2
	mov r7, r20
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2046
	mov r2, r7
	jarl _CanIf_GetCanIfCtrlId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2056
	jarl _SchM_Enter_CanIf_ExclusiveArea_Channel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2057
	ld.bu 0x00000003[r3], r2
	shl 0x00000002, r2
	mov #_CanIf_ControllerMode.4, r5
	add r2, r5
	st.w r20, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2058
	jarl _SchM_Exit_CanIf_ExclusiveArea_Channel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2059
	movhi HIGHW1(#_CanIf_DispatchConfigData+0x00000004), r0, r2
	ld.w LOWW(#_CanIf_DispatchConfigData+0x00000004)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2061
	ld.bu 0x00000003[r3], r6
	mov r20, r7
	jarl [r2], r31
.BB.LABEL.13_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2065
	dispose 0x00000004, 0x00000041, [r31]
_CanIf_SetControllStarted.1:
	.stack _CanIf_SetControllStarted.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2190
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2195
	shl 0x00000003, r6
	mov #_CanIf_CtrlCfgData, r2
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2201
	ld.bu 0x00000003[r2], r6
	ld.bu 0x00000001[r2], r2
	shl 0x00000003, r2
	mov #_Can_DriverApi, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov 0x00000000, r7
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2204
	cmp 0x00000000, r10
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2207
	dispose 0x00000000, 0x00000001, [r31]
_CanIf_SetControllSleep.1:
	.stack _CanIf_SetControllSleep.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2222
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2227
	mov r20, r2
	shl 0x00000003, r2
	mov #_CanIf_CtrlCfgData, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2233
	ld.bu 0x00000003[r5], r6
	ld.bu 0x00000001[r5], r2
	shl 0x00000003, r2
	mov #_Can_DriverApi, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov 0x00000002, r7
	jarl [r2], r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2236
	jarl _SchM_Enter_CanIf_ExclusiveArea_Channel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2242
	mov r20, r2
	shl 0x00000002, r2
	mov #_CanIf_PduMode.3, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2245
	mov r20, r6
	jarl _CanIf_FreeControllerTxBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2253
	jarl _SchM_Exit_CanIf_ExclusiveArea_Channel, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2254
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2257
	dispose 0x00000000, 0x00000041, [r31]
_CanIf_SetControllStopped.1:
	.stack _CanIf_SetControllStopped.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2272
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2277
	mov r6, r2
	shl 0x00000003, r2
	mov #_CanIf_CtrlCfgData, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2281
	ld.bu 0x00000001[r5], r2
	shl 0x00000003, r2
	mov #_Can_DriverApi, r7
	add r2, r7
	mov r6, r2
	shl 0x00000002, r2
	mov #_CanIf_ControllerMode.4, r8
	add r8, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000003, r2
	ld.bu 0x00000003[r5], r2
	ld.w 0x00000000[r7], r5
	mov r6, r20
	mov r2, r6
	bnz9 .BB.LABEL.16_3
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2287
	jarl [r5], r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_5
.BB.LABEL.16_2:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	jarl _SchM_Enter_CanIf_ExclusiveArea_Channel, r31
	shl 0x00000002, r20
	mov #_CanIf_PduMode.3, r2
	add r2, r20
	mov 0x00000001, r2
	st.w r2, 0x00000000[r20]
	jarl _SchM_Exit_CanIf_ExclusiveArea_Channel, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2315
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.16_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2303
	jarl [r5], r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2306
	mov r20, r6
	jarl _CanIf_FreeBufInStopped.1, r31
	br9 .BB.LABEL.16_2
.BB.LABEL.16_5:	; if_break_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2315
	dispose 0x00000000, 0x00000041, [r31]
_CanIf_CanIdRangCheck.1:
	.stack _CanIf_CanIdRangCheck.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2333
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2371
	jarl _CanIf_RxPduHrhSearchByLinear.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_CanIf_PduPack.1:
	.stack _CanIf_PduPack.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2401
	prepare 0x00000479, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2407
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2408
	mov r20, r2
	shl 0x00000005, r2
	add r23, r2
	ld.w 0x00000018[r2], r24
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2409
	jarl _CanIf_GetBaseCanIdHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2416
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2430
	ld.w 0x00000000[r3], r2
	movhi 0x00004000, r0, r5
	or r5, r2
	st.w r2, 0x00000000[r3]
.BB.LABEL.18_2:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2447
	ld.w 0x00000000[r3], r2
	st.w r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2450
	ld.hu 0x00000008[r21], r2
	st.b r2, 0x0000000A[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2451
	mov r20, r5
	shl 0x00000005, r5
	add r5, r23
	ld.hu 0x00000002[r23], r5
	zxb r2
	cmp r5, r2
	bnh9 .BB.LABEL.18_4
.BB.LABEL.18_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2453
	st.b r5, 0x0000000A[r22]
.BB.LABEL.18_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2456
	st.h r20, 0x00000008[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2458
	ld.w 0x00000000[r21], r2
	st.w r2, 0x00000000[r22]
	dispose 0x00000004, 0x00000479, [r31]
_CanIf_FreeBufInStopped.1:
	.stack _CanIf_FreeBufInStopped.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2474
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2477
	jarl _SchM_Enter_CanIf_ExclusiveArea_Channel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2479
	mov r20, r6
	jarl _CanIf_FreeControllerTxBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2490
	mov r20, r2
	shl 0x00000002, r2
	mov #_CanIf_TxConfirmationState.2, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2493
	mov r20, r6
	jarl _CanIf_FreeDynamicTxPduCanIds, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2494
	jarl _SchM_Exit_CanIf_ExclusiveArea_Channel, r31
	dispose 0x00000000, 0x00000041, [r31]
_CanIf_InitAllBuffer.1:
	.stack _CanIf_InitAllBuffer.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2510
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2514
	jarl _CanIf_InitTxBuffer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2526
	jarl _CanIf_InitDynamicTxPduCanId, r31
	dispose 0x00000000, 0x00000001, [r31]
_CanIf_RxPduHrhSearchByLinear.1:
	.stack _CanIf_RxPduHrhSearchByLinear.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2545
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2553
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2554
	mov r6, r2
	shl 0x00000004, r2
	add r20, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2555
	ld.hu 0x00000004[r2], r21
	mov 0x00000000, r22
	mov 0x00000001, r10
	mov r6, r23
	mov r8, r24
	mov r7, r25
	br9 .BB.LABEL.21_4
.BB.LABEL.21_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2557
	mov r23, r2
	shl 0x00000004, r2
	add r20, r2
	ld.w 0x0000000C[r2], r2
	andi 0x0000FFFF, r22, r5
	add r5, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2558
	ld.hu 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2559
	mov r6, r2
	mul 0x0000001C, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2558
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r5
	ld.w LOWW(#_CanIf_ConfigStd)[r5], r5
	ld.w 0x00000014[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2559
	add r2, r5
	ld.w 0x0000000C[r5], r2
	ld.w 0x00000010[r5], r5
	and r25, r5
	cmp r2, r5
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2561
	mov r25, r7
	mov r24, r8
	jarl _CanIf_GetPduHrh.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2562
	cmp 0x00000000, r10
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_3:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	add 0x00000001, r22
.BB.LABEL.21_4:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2555
	andi 0x0000FFFF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.21_1
.BB.LABEL.21_5:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2569
	zxb r10
	dispose 0x00000000, 0x00000679, [r31]
_CanIf_GetPduHrh.1:
	.stack _CanIf_GetPduHrh.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2643
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2646
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2648
	mov r6, r5
	mul 0x0000001C, r5, r0
	add r2, r5
	ld.w 0x00000018[r5], r9
	cmp 0x00000000, r9
	movea 0x00000018, r5, r5
	bz9 .BB.LABEL.22_4
.BB.LABEL.22_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	cmp 0x00000000, r9
	bz9 .BB.LABEL.22_8
.BB.LABEL.22_2:	; bb21
	mov 0x1FFFFFFF, r10
	and r7, r10
	ld.w 0x00000000[r9], r9
	cmp r9, r10
	bl9 .BB.LABEL.22_8
.BB.LABEL.22_3:	; bb37
	mov 0x1FFFFFFF, r9
	and r7, r9
	ld.w 0x00000000[r5], r5
	ld.w 0x00000004[r5], r5
	cmp r5, r9
	bh9 .BB.LABEL.22_8
.BB.LABEL.22_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2654
	mov r6, r5
	mul 0x0000001C, r5, r0
	add r5, r2
	ld.w 0x00000014[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_8
.BB.LABEL.22_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	cmp 0x00000000, r7
	bn9 .BB.LABEL.22_8
.BB.LABEL.22_6:	; if_then_bb
	movhi 0x00004000, r0, r2
	cmp r2, r7
	bl9 .BB.LABEL.22_8
.BB.LABEL.22_7:	; if_then_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2697
	st.h r6, 0x00000000[r8]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.22_8:	; if_break_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2716
	jmp [r31]
_CanIf_RxIndicationHandle.1:
	.stack _CanIf_RxIndicationHandle.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2736
	prepare 0x00000001, 0x0000000C
	mov 0x0000000C, r2
	mov r3, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2747
	add r5, r2
	br9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; entry
	ld.w 0x00000000[r7], r8
	st.w r8, 0x00000000[r5]
	add 0x00000004, r7
	add 0x00000004, r5
.BB.LABEL.23_2:	; entry
	cmp r5, r2
	bnz9 .BB.LABEL.23_1
.BB.LABEL.23_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2748
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2797
	mov r6, r5
	mul 0x0000001C, r5, r0
	add r2, r5
	ld.bu 0x00000003[r5], r5
	shl 0x00000002, r5
	mov #_CanIf_UpRxIndicationArray, r7
	add r7, r5
	ld.w 0x00000000[r5], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.23_5
.BB.LABEL.23_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2799
	mul 0x0000001C, r6, r0
	add r6, r2
	ld.hu 0x00000006[r2], r6
	ld.w 0x00000000[r5], r2
	mov r3, r7
	jarl [r2], r31
.BB.LABEL.23_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2801
	dispose 0x0000000C, 0x00000001, [r31]
_CanIf_TransmitHandle.1:
	.stack _CanIf_TransmitHandle.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2804
	prepare 0x00000679, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2812
	movhi HIGHW1(#_CanIf_ConfigStd), r0, r2
	ld.w LOWW(#_CanIf_ConfigStd)[r2], r2
	ld.w 0x00000018[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2814
	mov r6, r8
	shl 0x00000005, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2816
	ld.hu 0x00000006[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2818
	mov r20, r5
	shl 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2816
	ld.w 0x00000010[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2818
	add r21, r5
	ld.bu 0x00000000[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2819
	mov r22, r2
	shl 0x00000002, r2
	mov #_CanIf_ControllerMode.4, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	movhi HIGHW1(#_test_can), r0, r8
	st.b r5, LOWW(#_test_can)[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2820
	ld.w 0x00000000[r2], r2
	cmp 0x00000001, r2
	mov r7, r23
	mov r6, r24
	bnz9 .BB.LABEL.24_10
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2822
	mov r22, r2
	shl 0x00000002, r2
	mov #_CanIf_PduMode.3, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.24_10
.BB.LABEL.24_2:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2826
	jarl _SchM_Enter_CanIf_ExclusiveArea_Channel, r31
	mov r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2827
	mov r24, r6
	mov r23, r7
	mov r25, r8
	jarl _CanIf_PduPack.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2841
	shl 0x00000003, r20
	add r20, r21
	ld.hu 0x00000002[r21], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2829
	shl 0x00000003, r22
	mov #_CanIf_CtrlCfgData, r2
	add r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2841
	ld.bu 0x00000001[r2], r2
	shl 0x00000003, r2
	mov #_Can_DriverApi, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	mov r25, r7
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2843
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.24_4
.BB.LABEL.24_3:	; if_then_bb47.if_break_bb101_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.24_9
.BB.LABEL.24_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2849
	cmp 0x00000002, r10
	bz9 .BB.LABEL.24_6
.BB.LABEL.24_5:	; if_else_bb.if_break_bb101_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.24_9
.BB.LABEL.24_6:	; if_then_bb74
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2851
	jarl _CanIf_TxBusyHandle, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2852
	addi 0x00000000, r10, r20
	bnz9 .BB.LABEL.24_9
.BB.LABEL.24_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	ld.hu 0x00000008[r23], r2
	ld.bu 0x0000000A[r3], r5
	cmp r2, r5
	bnc9 .BB.LABEL.24_9
.BB.LABEL.24_8:	; if_then_bb97
	movea 0x0000003E, r0, r9
	mov 0x00000005, r8
	mov 0x00000000, r7
	movea 0x0000003C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2854
	jarl _Det_ReportRuntimeError, r31
.BB.LABEL.24_9:	; if_break_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2862
	jarl _SchM_Exit_CanIf_ExclusiveArea_Channel, r31
	mov r20, r10
	dispose 0x0000000C, 0x00000679, [r31]
.BB.LABEL.24_10:	; if_else_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	movea 0x00000046, r0, r9
	mov 0x00000005, r8
	mov 0x00000000, r7
	movea 0x0000003C, r0, r6
	jarl _Det_ReportRuntimeError, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2894
	dispose 0x0000000C, 0x00000679, [r31]
_CanIf_GetCanIfCtrlId.1:
	.stack _CanIf_GetCanIfCtrlId.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2896
	mov 0x00000000, r2
	br9 .BB.LABEL.25_3
.BB.LABEL.25_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2901
	andi 0x000000FF, r2, r5
	shl 0x00000003, r5
	mov #_CanIf_CtrlCfgData, r8
	add r5, r8
	ld.bu 0x00000003[r8], r5
	cmp r5, r7
	bz9 .BB.LABEL.25_4
.BB.LABEL.25_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 0
	add 0x00000001, r2
.BB.LABEL.25_3:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2899
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.25_1
.BB.LABEL.25_4:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanIf/CanIf.c", 2906
	st.b r2, 0x00000000[r6]
	jmp [r31]
	.section .data, data
	.align 4
_CanIf_InitStatus.1:
	.dw 0x00000001
	.align 4
_CanIf_ConfigStd:
	.ds (4)
_test_can:
	.db 0x09
	.section .bss, bss
	.align 4
_CanIf_TxConfirmationState.2:
	.ds (4)
	.align 4
_CanIf_PduMode.3:
	.ds (4)
	.align 4
_CanIf_ControllerMode.4:
	.ds (4)
