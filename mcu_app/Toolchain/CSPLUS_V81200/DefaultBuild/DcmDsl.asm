#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\DcmDsl.c -oDefaultBuild\DcmDsl.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_aaad94903d024559a7d02cd61a92742boxjg1pri.kuq
#@	compiled at Fri Mar 27 09:50:32 2026

	.file "..\..\Bsw\Communication\Common\Dcm\DcmDsl.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_CommCtrl
	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_ConnectionCtrl
	.extern _Dcm_Channel
	.extern _Dcm_FunctionalMessage
	.extern _Dcm_OBDMessage
	.extern _DcmPbCfgPtr
	.extern _Dcm_MkCtrl
	.extern _Det_ReportError
	.extern _Dcm_ResetTime
	.extern _Dcm_GetTimeSpan
	.extern _Dcm_GetChannelNum
	.public _Dcm_ComM_NoComModeEntered
	.extern _SchM_Enter_Dcm_ExclusiveArea
	.extern _SchM_Exit_Dcm_ExclusiveArea
	.public _Dcm_ComM_SilentComModeEntered
	.public _Dcm_ComM_FullComModeEntered
	.public _DslInternal_P2ServerTimeout
	.extern _DsdInternal_ProcessingDone
	.extern _DslInternal_ProtocolStartSession
	.public _DslInternal_ProtocolStop
	.public _DslInternal_ResetResource
	.extern _Dcm_GetProtocolMsgNum
	.extern _DslInternal_InitConnectionCtrl
	.extern _ComM_DCM_InactiveDiagnostic
	.extern _DslInternal_S3ServerStart
	.public _Dcm_StartOfReception_Checklength
	.extern _Dcm_StartOfReception_GetLen
	.extern _Dcm_StopS3timer
	.public _Dcm_StartOfReception
	.extern _Dcm_GetRxIdNum
	.extern _Dcm_InterStartOfReception
	.public _Dcm_CopyRxData
	.extern _Dcm_CopyRxData_SessionDeal
	.public _Dcm_TpRxIndication
	.extern _Dcm_RestartS3timer
	.extern _Dcm_TpRxIndication_SetTxPduId
	.extern _ComM_DCM_ActiveDiagnostic
	.public _Dcm_CopyTxData
	.extern _Dcm_GetTxIdNum
	.public _Dcm_TpTxConfirmation
	.extern _Dcm_CheckUDS0x86_TxConfirmation
	.extern _DsdInternal_TxConfirmation
	.public _Dcm_TxConfirmation
	.extern _Dcm_TxConfirmation_2A
	.public _DslInternal_ProcessingDone
	.extern _Dcm_GetConnectionNum
	.extern _PduR_Transmit
	.extern _Dcm_TpRxIndication_3E80
	.public _DslInternal_RxIndicationDeal
	.extern _DsdInternal_RxIndication
	.extern _DsdInternal_SearchSidTabServiceIndex

	.section .text, text
_Dcm_GetMainConnectionNum.1:
	.stack _Dcm_GetMainConnectionNum.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.h", 667
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.h", 670
	jmp [r31]
_DCM_DET_REPORTERROR.1:
	.stack _DCM_DET_REPORTERROR.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 66
	prepare 0x00000001, 0x00000000
	mov r6, r8
	mov r7, r9
	mov 0x00000000, r7
	movea 0x00000035, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 68
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
_DsdInternal_SetNrc.1:
	.stack _DsdInternal_SetNrc.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 364
	mulhi 0x0000001C, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 368
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 369
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	st.b r7, 0x00000002[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 370
	st.w r2, 0x00000008[r5]
	jmp [r31]
_DslInternal_P2ServerStart.1:
	.stack _DslInternal_P2ServerStart.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 486
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 488
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 490
	mov r2, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r7
	add r5, r7
	ld.w 0x00000034[r7], r5
	cmp 0x00000001, r5
	mov r6, r20
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 492
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r21
	add r2, r21
	st.b r0, 0x00000030[r21]
	movea 0x00000028, r21, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 493
	jarl _Dcm_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 494
	mulhi 0x0000001C, r20, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	st.w r2, 0x0000002C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 495
	st.w r0, 0x00000034[r21]
.BB.LABEL.4_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 497
	dispose 0x00000000, 0x00000061, [r31]
_DslInternal_P2ServerStop.1:
	.stack _DslInternal_P2ServerStop.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 513
	mulhi 0x0000001C, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 515
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 516
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 517
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000034[r5], r2
	cmp 0x00000000, r2
	movea 0x00000034, r5, r2
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 519
	st.w r5, 0x00000000[r2]
.BB.LABEL.5_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 521
	jmp [r31]
_DslInternal_MinIsLargerThanP2Server.1:
	.stack _DslInternal_MinIsLargerThanP2Server.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 553
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 555
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 556
	ld.w 0x00000008[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 557
	ld.bu 0x00000002[r5], r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000028[r5], r6
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 561
	jarl _Dcm_GetTimeSpan, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 562
	ld.w 0x00000000[r3], r2
	cmp r20, r2
	setf 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 567
	dispose 0x00000004, 0x00000041, [r31]
_DslInternal_MaxIsLargerThanP2Server.1:
	.stack _DslInternal_MaxIsLargerThanP2Server.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 583
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 585
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 586
	ld.w 0x00000004[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 587
	ld.bu 0x00000002[r5], r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000028[r5], r6
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 591
	jarl _Dcm_GetTimeSpan, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 592
	ld.w 0x00000000[r3], r2
	cmp r20, r2
	setf 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 597
	dispose 0x00000004, 0x00000041, [r31]
_Dcm_MemoryCopy.1:
	.stack _Dcm_MemoryCopy.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 685
	mov 0x00000000, r2
	br9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 690
	mov r6, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r7, r9
	add r2, r9
	st.b r5, 0x00000000[r9]
	add 0x00000001, r2
.BB.LABEL.8_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 688
	cmp r8, r2
	bl9 .BB.LABEL.8_1
.BB.LABEL.8_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 692
	jmp [r31]
_DslInternal_InitMsgCtrl.1:
	.stack _DslInternal_InitMsgCtrl.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 708
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 710
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000014[r2], r2
	ld.bu 0x00000004[r2], r2
	cmp r2, r6
	bnc9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 713
	shl 0x00000006, r6
	mov #_Dcm_MsgCtrl, r2
	add r6, r2
	mov 0xFFFFFFFF, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 714
	st.b r5, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 715
	st.b r5, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 716
	st.b r0, 0x00000003[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 717
	st.w r0, 0x00000008[r2]
	movea 0x000000FF, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 718
	st.h r6, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 719
	st.b r5, 0x00000006[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 720
	st.b r5, 0x00000007[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 721
	st.h r6, 0x00000026[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 722
	st.w r0, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 723
	st.w r0, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 724
	st.w r0, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 725
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 726
	st.b r0, 0x0000001C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 727
	st.b r0, 0x0000001D[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 728
	st.b r0, 0x0000001E[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 729
	st.w r5, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 730
	st.b r5, 0x00000024[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 731
	st.w r5, 0x00000028[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 732
	st.w r5, 0x0000002C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 733
	st.b r0, 0x00000030[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 734
	st.w r5, 0x00000034[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 735
	st.w r0, 0x00000038[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 736
	st.b r5, 0x0000003C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 737
	st.b r0, 0x0000003D[r2]
.BB.LABEL.9_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 745
	jmp [r31]
_DslInternal_InitChannelCtrl.1:
	.stack _DslInternal_InitChannelCtrl.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 761
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 763
	jarl _Dcm_GetChannelNum, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 764
	cmp r20, r10
	bnh9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 766
	mulhi 0x00000014, r20, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	mov 0xFFFFFFFF, r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 786
	st.w r0, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 790
	st.w r0, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 791
	st.w r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 792
	st.w r0, 0x00000008[r5]
.BB.LABEL.10_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 794
	dispose 0x00000000, 0x00000041, [r31]
_Dcm_ClassifyServiceType.1:
	.stack _Dcm_ClassifyServiceType.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 876
	cmp 0x0000000B, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 879
	bh9 .BB.LABEL.11_5
.BB.LABEL.11_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.11_7[r6]
.SWITCH.LABEL.11_7:
	br9 .BB.LABEL.11_6
	br9 .BB.LABEL.11_6
	br9 .BB.LABEL.11_6
	br9 .BB.LABEL.11_2
	br9 .BB.LABEL.11_2
	br9 .BB.LABEL.11_2
	br9 .BB.LABEL.11_3
	br9 .BB.LABEL.11_3
	br9 .BB.LABEL.11_3
	br9 .BB.LABEL.11_4
	br9 .BB.LABEL.11_4
	br9 .BB.LABEL.11_4
.SWITCH.LABEL.11_7.END:
.BB.LABEL.11_2:	; switch_clause_bb4
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 889
	jmp [r31]
.BB.LABEL.11_3:	; switch_clause_bb5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 894
	jmp [r31]
.BB.LABEL.11_4:	; switch_clause_bb6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 899
	jmp [r31]
.BB.LABEL.11_5:	; switch_clause_bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 902
	jmp [r31]
.BB.LABEL.11_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 906
	jmp [r31]
_Dcm_ComM_NoComModeEntered:
	.stack _Dcm_ComM_NoComModeEntered = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 183
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 186
	jarl _Dcm_GetMainConnectionNum.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 189
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	mov r10, r21
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000005, r7
	movea 0x00000021, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 191
	jarl _DCM_DET_REPORTERROR.1, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.12_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 196
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.12_6
.BB.LABEL.12_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 199
	andi 0x000000FF, r2, r5
	mul 0x0000000C, r5, r0
	mov #_Dcm_CommCtrl, r6
	add r5, r6
	ld.bu 0x00000008[r6], r5
	cmp r5, r20
	bnz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 201
	andi 0x000000FF, r2, r5
	mul 0x0000000C, r5, r0
	mov #_Dcm_CommCtrl, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
.BB.LABEL.12_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	add 0x00000001, r2
.BB.LABEL.12_6:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 197
	andi 0x000000FF, r2, r5
	cmp r21, r5
	bl9 .BB.LABEL.12_3
.BB.LABEL.12_7:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 204
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	dispose 0x00000000, 0x00000061, [r31]
_Dcm_ComM_SilentComModeEntered:
	.stack _Dcm_ComM_SilentComModeEntered = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 227
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 230
	jarl _Dcm_GetMainConnectionNum.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 233
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	mov r10, r21
	bz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000005, r7
	movea 0x00000022, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 235
	jarl _DCM_DET_REPORTERROR.1, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.13_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 240
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.13_6
.BB.LABEL.13_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 243
	andi 0x000000FF, r2, r5
	mul 0x0000000C, r5, r0
	mov #_Dcm_CommCtrl, r6
	add r5, r6
	ld.bu 0x00000008[r6], r5
	cmp r5, r20
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 245
	andi 0x000000FF, r2, r5
	mul 0x0000000C, r5, r0
	mov #_Dcm_CommCtrl, r6
	add r5, r6
	mov 0x00000001, r5
	st.w r5, 0x00000000[r6]
.BB.LABEL.13_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	add 0x00000001, r2
.BB.LABEL.13_6:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 241
	andi 0x000000FF, r2, r5
	cmp r21, r5
	bl9 .BB.LABEL.13_3
.BB.LABEL.13_7:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 248
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	dispose 0x00000000, 0x00000061, [r31]
_Dcm_ComM_FullComModeEntered:
	.stack _Dcm_ComM_FullComModeEntered = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 271
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 274
	jarl _Dcm_GetMainConnectionNum.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 277
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	mov r10, r21
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000005, r7
	movea 0x00000023, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 279
	jarl _DCM_DET_REPORTERROR.1, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 284
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.14_6
.BB.LABEL.14_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 287
	andi 0x000000FF, r2, r5
	mul 0x0000000C, r5, r0
	mov #_Dcm_CommCtrl, r6
	add r5, r6
	ld.bu 0x00000008[r6], r5
	cmp r5, r20
	bnz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 289
	andi 0x000000FF, r2, r5
	mul 0x0000000C, r5, r0
	mov #_Dcm_CommCtrl, r6
	add r5, r6
	mov 0x00000002, r5
	st.w r5, 0x00000000[r6]
.BB.LABEL.14_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	add 0x00000001, r2
.BB.LABEL.14_6:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 285
	andi 0x000000FF, r2, r5
	cmp r21, r5
	bl9 .BB.LABEL.14_3
.BB.LABEL.14_7:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 292
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	dispose 0x00000000, 0x00000061, [r31]
_DslInternal_P2ServerTimeout:
	.stack _DslInternal_P2ServerTimeout = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 314
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 317
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 318
	ld.bu 0x00000002[r5], r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000030[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 316
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 319
	ld.w 0x00000010[r5], r5
	ld.bu 0x00000001[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 321
	cmp r2, r5
	mov r6, r20
	bh9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.15_4
.BB.LABEL.15_2:	; if_then_bb
	movea 0x00000078, r0, r7
.BB.LABEL.15_3:	; if_then_bb
	mov r20, r6
	jarl _DsdInternal_SetNrc.1, r31
	mov r20, r6
	jarl _DsdInternal_ProcessingDone, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 334
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.15_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 330
	mov r20, r6
	jarl _Dcm_CancelPendingService.1, r31
	movea 0x00000010, r0, r7
	br9 .BB.LABEL.15_3
_DslInternal_ProtocolStart.1:
	.stack _DslInternal_ProtocolStart.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 350
	prepare 0x000007F9, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 363
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.w 0x00000018[r5], r2
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 358
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 360
	ld.w 0x0000000C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 363
	ld.bu 0x00000008[r2], r21
	mov r6, r22
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_1:	; entry.if_break_bb121_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000000, r10
.BB.LABEL.16_2:	; if_break_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 422
	zxb r10
	dispose 0x00000000, 0x000007F9, [r31]
.BB.LABEL.16_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 365
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x00000024, r22, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 367
	ld.bu 0x00000000[r2], r23
	mov 0x00000000, r24
	mov r24, r25
	mov r24, r26
	mov r24, r27
	br9 .BB.LABEL.16_12
.BB.LABEL.16_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 369
	andi 0x000000FF, r26, r2
	shl 0x00000003, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.16_6
.BB.LABEL.16_5:	; bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000001, r27
	br9 .BB.LABEL.16_11
.BB.LABEL.16_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 376
	andi 0x000000FF, r26, r2
	shl 0x00000003, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	mov r23, r6
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 377
	cmp 0x00000000, r10
	bz9 .BB.LABEL.16_11
.BB.LABEL.16_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	add 0xFFFFFFFF, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.16_10
.BB.LABEL.16_8:	; if_else_bb
	cmp 0x00000004, r10
	bnz9 .BB.LABEL.16_10
.BB.LABEL.16_9:	; switch_clause_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 386
	add 0x00000001, r24
	br9 .BB.LABEL.16_11
.BB.LABEL.16_10:	; switch_clause_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	add 0x00000001, r25
.BB.LABEL.16_11:	; if_break_bb
	add 0x00000001, r26
.BB.LABEL.16_12:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 367
	andi 0x000000FF, r26, r2
	cmp r21, r2
	bnc9 .BB.LABEL.16_14
.BB.LABEL.16_13:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	andi 0x000000FF, r27, r0
	bz9 .BB.LABEL.16_4
.BB.LABEL.16_14:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 397
	andi 0x000000FF, r25, r0
	bnz9 .BB.LABEL.16_16
.BB.LABEL.16_15:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	zxb r27
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.16_17
.BB.LABEL.16_16:	; bb86.if_break_bb121_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.16_2
.BB.LABEL.16_17:	; if_else_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 401
	andi 0x000000FF, r24, r0
	bz9 .BB.LABEL.16_19
.BB.LABEL.16_18:	; if_else_bb105.if_break_bb121_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000005, r10
	br9 .BB.LABEL.16_2
.BB.LABEL.16_19:	; if_else_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 409
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 410
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000003), r0, r2
	st.b r22, LOWW(#_Dcm_MkCtrl+0x00000003)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 411
	mulhi 0x0000001C, r22, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 412
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 413
	jarl _DslInternal_ProtocolStartSession, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 414
	dispose 0x00000000, 0x000007F9, [r31]
_DslInternal_ProtocolStop:
	.stack _DslInternal_ProtocolStop = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 438
	prepare 0x000007F9, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 451
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.w 0x00000018[r5], r2
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 446
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 448
	ld.w 0x0000000C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 451
	ld.bu 0x00000008[r2], r21
	mov r6, r22
	bz9 .BB.LABEL.17_3
.BB.LABEL.17_1:	; entry.if_break_bb119_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000000, r10
.BB.LABEL.17_2:	; if_break_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 502
	zxb r10
	dispose 0x00000000, 0x000007F9, [r31]
.BB.LABEL.17_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 453
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x00000024, r22, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 455
	ld.bu 0x00000000[r2], r23
	mov 0x00000000, r24
	mov r24, r25
	mov r24, r26
	mov r24, r27
	br9 .BB.LABEL.17_12
.BB.LABEL.17_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 457
	andi 0x000000FF, r26, r2
	shl 0x00000003, r2
	add r20, r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.17_6
.BB.LABEL.17_5:	; bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000001, r27
	br9 .BB.LABEL.17_11
.BB.LABEL.17_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 464
	andi 0x000000FF, r26, r2
	shl 0x00000003, r2
	add r20, r2
	ld.w 0x00000004[r2], r2
	mov r23, r6
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 465
	cmp 0x00000000, r10
	bz9 .BB.LABEL.17_11
.BB.LABEL.17_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	add 0xFFFFFFFF, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.17_10
.BB.LABEL.17_8:	; if_else_bb
	cmp 0x00000004, r10
	bnz9 .BB.LABEL.17_10
.BB.LABEL.17_9:	; switch_clause_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 474
	add 0x00000001, r24
	br9 .BB.LABEL.17_11
.BB.LABEL.17_10:	; switch_clause_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	add 0x00000001, r25
.BB.LABEL.17_11:	; if_break_bb
	add 0x00000001, r26
.BB.LABEL.17_12:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 455
	andi 0x000000FF, r26, r2
	cmp r21, r2
	bnc9 .BB.LABEL.17_14
.BB.LABEL.17_13:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	andi 0x000000FF, r27, r0
	bz9 .BB.LABEL.17_4
.BB.LABEL.17_14:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 485
	andi 0x000000FF, r25, r0
	bnz9 .BB.LABEL.17_16
.BB.LABEL.17_15:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	zxb r27
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.17_17
.BB.LABEL.17_16:	; bb86.if_break_bb119_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.17_2
.BB.LABEL.17_17:	; if_else_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 489
	andi 0x000000FF, r24, r0
	bz9 .BB.LABEL.17_19
.BB.LABEL.17_18:	; if_else_bb105.if_break_bb119_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000005, r10
	br9 .BB.LABEL.17_2
.BB.LABEL.17_19:	; if_else_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 496
	mulhi 0x0000001C, r22, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	st.w r0, 0x00000018[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 497
	dispose 0x00000000, 0x000007F9, [r31]
_DslInternal_ResetResource:
	.stack _DslInternal_ResetResource = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 519
	prepare 0x00000779, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 531
	jarl _Dcm_GetProtocolMsgNum, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 533
	mulhi 0x0000001C, r20, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 535
	ld.bu 0x00000002[r5], r21
	mov r21, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 536
	ld.hu 0x00000004[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 534
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000008), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 536
	ld.bu LOWW(#_Dcm_MkCtrl+0x00000008)[r2], r23
	movea 0x000000FF, r0, r24
	mov 0x00000000, r25
	mov r10, r26
	br9 .BB.LABEL.18_4
.BB.LABEL.18_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 538
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000018[r2], r5
	andi 0x000000FF, r25, r6
	mul 0x00000006, r6, r0
	add r6, r5
	ld.hu 0x00000004[r5], r5
	cmp r5, r22
	bnz9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 540
	andi 0x000000FF, r25, r24
	mul 0x00000006, r24, r0
	ld.w 0x00000018[r2], r2
	add r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 541
	ld.bu 0x00000000[r2], r24
	mov r24, r6
	jarl _DslInternal_InitConnectionCtrl, r31
.BB.LABEL.18_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	add 0x00000001, r25
.BB.LABEL.18_4:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 536
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.18_1
.BB.LABEL.18_5:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 550
	addi 0xFFFFFF01, r23, r0
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r2
	ld.bu LOWW(#_Dcm_MkCtrl)[r2], r2
	bz9 .BB.LABEL.18_16
.BB.LABEL.18_6:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_16
.BB.LABEL.18_7:	; bb54.bb99_crit_edge
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.18_12
.BB.LABEL.18_8:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 555
	andi 0x000000FF, r2, r6
	cmp r20, r6
	bz9 .BB.LABEL.18_11
.BB.LABEL.18_9:	; bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	andi 0x000000FF, r2, r6
	shl 0x00000006, r6
	mov #_Dcm_MsgCtrl, r7
	add r6, r7
	ld.w 0x00000038[r7], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.18_11
.BB.LABEL.18_10:	; if_then_bb95
	mov 0x00000001, r5
.BB.LABEL.18_11:	; if_break_bb96
	add 0x00000001, r2
.BB.LABEL.18_12:	; bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 553
	andi 0x000000FF, r2, r6
	cmp r26, r6
	bnc9 .BB.LABEL.18_14
.BB.LABEL.18_13:	; bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.18_8
.BB.LABEL.18_14:	; bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 560
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.18_16
.BB.LABEL.18_15:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 567
	mov r23, r6
	jarl _ComM_DCM_InactiveDiagnostic, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 568
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000008), r0, r2
	mov 0xFFFFFFFF, r5
	st.b r5, LOWW(#_Dcm_MkCtrl+0x00000008)[r2]
.BB.LABEL.18_16:	; if_break_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 574
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r2
	ld.bu LOWW(#_Dcm_MkCtrl)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.18_26
.BB.LABEL.18_17:	; if_break_bb128.bb162_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.18_22
.BB.LABEL.18_18:	; bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 579
	andi 0x000000FF, r2, r6
	cmp r20, r6
	bz9 .BB.LABEL.18_21
.BB.LABEL.18_19:	; bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	andi 0x000000FF, r2, r6
	shl 0x00000006, r6
	mov #_Dcm_MsgCtrl, r7
	add r6, r7
	ld.w 0x00000038[r7], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.18_21
.BB.LABEL.18_20:	; if_then_bb158
	mov 0x00000001, r5
.BB.LABEL.18_21:	; if_break_bb159
	add 0x00000001, r2
.BB.LABEL.18_22:	; bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 577
	andi 0x000000FF, r2, r6
	cmp r26, r6
	bnc9 .BB.LABEL.18_24
.BB.LABEL.18_23:	; bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.18_18
.BB.LABEL.18_24:	; bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 584
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.18_26
.BB.LABEL.18_25:	; if_then_bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 587
	andi 0x000000FF, r24, r6
	jarl _DslInternal_S3ServerStart, r31
.BB.LABEL.18_26:	; if_break_bb191
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 592
	mov r21, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 597
	ld.bu 0x00000007[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 596
	ld.bu 0x00000006[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 595
	mov r21, r6
	jarl _DslInternal_InitMsgCtrl.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 596
	mov r23, r6
	jarl _DslInternal_InitChannelCtrl.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 597
	mov r22, r6
	jarl _DslInternal_InitChannelCtrl.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 598
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x00000024, r20, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 599
	ld.bu 0x00000000[r2], r6
	jarl _Dcm_ClassifyServiceType.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 600
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_28
.BB.LABEL.18_27:	; if_then_bb224
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 602
	movhi HIGHW1(#_Dcm_OBDMessage), r0, r2
	st.h r0, LOWW(#_Dcm_OBDMessage)[r2]
.BB.LABEL.18_28:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 604
	dispose 0x00000000, 0x00000779, [r31]
_Dcm_StartOfReception_Checklength:
	.stack _Dcm_StartOfReception_Checklength = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 621
	prepare 0x000007FF, 0x00000000
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 637
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 639
	ld.w 0x0000000C[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 645
	mul 0x0000000C, r6, r0
	add r6, r5
	ld.bu 0x00000000[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 646
	mov r23, r6
	shl 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 638
	ld.w 0x00000010[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 646
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 648
	ld.bu 0x00000000[r7], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 649
	mulhi 0x00000024, r24, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 637
	ld.w 0x00000000[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 648
	ld.w 0x00000014[r25], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 649
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 653
	ld.bu 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 649
	ld.w 0x00000010[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 654
	ld.bu 0x00000000[r7], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 651
	ld.w 0x00000004[r5], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 650
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 656
	ld.bu 0x00000000[r2], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 653
	jarl _Dcm_ClassifyServiceType.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 654
	mov r10, r6
	mov r26, r7
	jarl _Dcm_StartOfReception_GetLen, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 656
	cmp r21, r10
	mov r10, r29
	bnc9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; entry.if_break_bb175_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000003, r21
	br9 .BB.LABEL.19_14
.BB.LABEL.19_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 660
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.19_4
.BB.LABEL.19_3:	; if_else_bb.if_break_bb175_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.19_14
.BB.LABEL.19_4:	; if_else_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 666
	mulhi 0x00000014, r26, r21
	mov #_Dcm_ChannelCtrl, r2
	add r21, r2
	ld.w 0x0000000C[r2], r21
	cmp 0x00000001, r21
	bz9 .BB.LABEL.19_6
.BB.LABEL.19_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mulhi 0x00000014, r28, r21
	mov #_Dcm_ChannelCtrl, r2
	add r21, r2
	ld.w 0x00000010[r2], r21
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.19_13
.BB.LABEL.19_6:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 697
	add r23, r23
	mov #_Dcm_ConnectionCtrl, r21
	add r23, r21
	ld.bu 0x00000001[r21], r21
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.19_11
.BB.LABEL.19_7:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 700
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.19_9
.BB.LABEL.19_8:	; bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	movhi HIGHW1(#_Dcm_FunctionalMessage), r0, r21
	ld.hu LOWW(#_Dcm_FunctionalMessage)[r21], r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.19_13
.BB.LABEL.19_9:	; if_else_bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 708
	ld.w 0x00000010[r25], r21
	ld.bu 0x00000000[r21], r21
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.19_3
.BB.LABEL.19_10:	; if_then_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 711
	mulhi 0x0000001C, r24, r21
	mov #_Dcm_ProtocolCtrl, r27
	add r21, r27
	st.b r24, 0x00000002[r27]
	movea 0x00000021, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 712
	mov r24, r6
	jarl _DsdInternal_SetNrc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 720
	mov r24, r6
	jarl _DsdInternal_ProcessingDone, r31
	br9 .BB.LABEL.19_13
.BB.LABEL.19_11:	; if_else_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 728
	cmp 0x00000001, r27
	bnz9 .BB.LABEL.19_3
.BB.LABEL.19_12:	; bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	movhi HIGHW1(#_Dcm_FunctionalMessage), r0, r21
	ld.hu LOWW(#_Dcm_FunctionalMessage)[r21], r21
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.19_3
.BB.LABEL.19_13:	; if_then_bb169
	mov 0x00000000, r21
.BB.LABEL.19_14:	; if_break_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 744
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.19_19
.BB.LABEL.19_15:	; if_then_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 746
	cmp 0x00000000, r20
	bz9 .BB.LABEL.19_18
.BB.LABEL.19_16:	; bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	ld.hu 0x00000008[r20], r2
	cmp r2, r29
	bnc9 .BB.LABEL.19_18
.BB.LABEL.19_17:	; if_then_bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 748
	st.h r0, 0x00000000[r22]
	br9 .BB.LABEL.19_19
.BB.LABEL.19_18:	; if_else_bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 752
	st.h r29, 0x00000000[r22]
.BB.LABEL.19_19:	; if_break_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 758
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.19_21
.BB.LABEL.19_20:	; if_then_bb212
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 761
	jarl _Dcm_StopS3timer, r31
.BB.LABEL.19_21:	; if_break_bb213
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 767
	dispose 0x00000000, 0x000007FF, [r31]
_Dcm_StartOfReception:
	.stack _Dcm_StartOfReception = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 795
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 804
	jarl _Dcm_GetRxIdNum, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 806
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000005, r7
	br9 .BB.LABEL.20_4
.BB.LABEL.20_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 810
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.20_5
.BB.LABEL.20_3:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000007, r7
.BB.LABEL.20_4:	; if_then_bb15
	movea 0x00000046, r0, r6
	jarl _DCM_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 826
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.20_5:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 815
	cmp r20, r10
	bh9 .BB.LABEL.20_7
.BB.LABEL.20_6:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000006, r7
	br9 .BB.LABEL.20_4
.BB.LABEL.20_7:	; if_else_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 823
	mov r20, r6
	mov r21, r7
	mov r22, r8
	mov r23, r9
	jarl _Dcm_InterStartOfReception, r31
	dispose 0x00000000, 0x00000079, [r31]
_Dcm_CopyRxData:
	.stack _Dcm_CopyRxData = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 854
	prepare 0x00000779, 0x00000008
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 859
	st.b r0, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 879
	jarl _Dcm_GetRxIdNum, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 881
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000005, r7
	br9 .BB.LABEL.21_5
.BB.LABEL.21_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 885
	cmp 0x00000000, r21
	bz9 .BB.LABEL.21_4
.BB.LABEL.21_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.21_6
.BB.LABEL.21_4:	; if_then_bb37
	mov 0x00000007, r7
.BB.LABEL.21_5:	; if_then_bb37
	movea 0x00000044, r0, r6
	jarl _DCM_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 969
	dispose 0x00000008, 0x00000779, [r31]
.BB.LABEL.21_6:	; if_else_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 890
	cmp r20, r10
	bh9 .BB.LABEL.21_8
.BB.LABEL.21_7:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000006, r7
	br9 .BB.LABEL.21_5
.BB.LABEL.21_8:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 898
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 900
	ld.w 0x0000000C[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 901
	mul 0x0000000C, r20, r0
	add r20, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 902
	ld.bu 0x00000000[r23], r5
	shl 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 899
	ld.w 0x00000010[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 902
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 903
	ld.bu 0x00000000[r6], r20
	mulhi 0x00000024, r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 898
	ld.w 0x00000000[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 903
	ld.w 0x00000014[r24], r2
	ld.w 0x00000000[r2], r2
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 907
	ld.bu 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 903
	ld.w 0x00000010[r2], r2
	ld.bu 0x00000000[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 905
	ld.w 0x00000004[r24], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 907
	jarl _Dcm_ClassifyServiceType.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 908
	ld.w 0x00000004[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 910
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_9:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 912
	st.w r20, 0x00000000[r3]
	movea 0x00000006, r3, r9
	movea 0x00000007, r3, r8
	mov r21, r6
	mov r10, r7
	jarl _Dcm_CopyRxData_SessionDeal, r31
	dispose 0x00000008, 0x00000779, [r31]
.BB.LABEL.21_10:	; if_else_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 916
	mulhi 0x00000014, r25, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 928
	mulhi 0x0000000C, r25, r5
	add r5, r26
	ld.w 0x00000008[r26], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 916
	mov #_Dcm_ChannelCtrl, r6
	add r2, r6
	ld.w 0x00000004[r6], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 928
	sub r20, r5
	ld.w 0x00000004[r26], r2
	add r5, r2
	add 0x00000004, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 930
	ld.hu 0x00000008[r21], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.21_12
.BB.LABEL.21_11:	; if_then_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 932
	st.h r2, 0x00000000[r22]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 933
	dispose 0x00000008, 0x00000779, [r31]
.BB.LABEL.21_12:	; if_else_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 935
	cmp r2, r5
	bh9 .BB.LABEL.21_14
.BB.LABEL.21_13:	; if_else_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 945
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 946
	mulhi 0x00000014, r25, r2
	mov #_Dcm_ChannelCtrl, r23
	add r2, r23
	mov 0x00000001, r2
	st.w r2, 0x0000000C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 947
	ld.hu 0x00000008[r21], r8
	ld.w 0x00000000[r21], r6
	mov #_Dcm_Channel, r7
	add r20, r7
	jarl _Dcm_MemoryCopy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 948
	ld.hu 0x00000008[r21], r2
	add r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 949
	st.w r20, 0x00000004[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 950
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 951
	mulh 0x0000000C, r25
	ld.w 0x00000004[r24], r2
	add r25, r2
	ld.w 0x00000008[r2], r2
	sub r20, r2
	ld.w 0x00000000[r26], r5
	add r2, r5
	st.h r5, 0x00000000[r22]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 953
	dispose 0x00000008, 0x00000779, [r31]
.BB.LABEL.21_14:	; if_break_bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 969
	dispose 0x00000008, 0x00000779, [r31]
_Dcm_TpRxIndication:
	.stack _Dcm_TpRxIndication = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 993
	prepare 0x00000FFF, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1011
	jarl _Dcm_GetMainConnectionNum.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1018
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	mov r10, r22
	bz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000005, r7
	movea 0x00000045, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1020
	jarl _DCM_DET_REPORTERROR.1, r31
	dispose 0x00000000, 0x00000FFF, [r31]
.BB.LABEL.22_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1025
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1026
	ld.w 0x0000000C[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1027
	mov r20, r5
	mul 0x0000000C, r5, r0
	add r23, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1028
	ld.bu 0x00000000[r5], r24
	mov r24, r5
	shl 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1025
	ld.w 0x00000010[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1028
	add r25, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1029
	ld.bu 0x00000000[r5], r26
	mulhi 0x00000024, r26, r5
	ld.w 0x00000000[r2], r27
	ld.w 0x00000014[r27], r6
	ld.w 0x00000000[r6], r6
	add r5, r6
	ld.w 0x00000010[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1034
	ld.bu 0x00000000[r5], r28
	cmp 0x00000000, r21
	bz9 .BB.LABEL.22_6
.BB.LABEL.22_3:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1039
	movhi HIGHW1(#_Dcm_FunctionalMessage+0x00000042), r0, r2
	ld.bu LOWW(#_Dcm_FunctionalMessage+0x00000042)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_5
.BB.LABEL.22_4:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1043
	mov r24, r6
	jarl _Dcm_RestartS3timer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1044
	mov r28, r6
	jarl _DslInternal_InitChannelCtrl.1, r31
	dispose 0x00000000, 0x00000FFF, [r31]
.BB.LABEL.22_5:	; if_else_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1055
	movhi HIGHW1(#_Dcm_FunctionalMessage+0x00000042), r0, r2
	st.b r0, LOWW(#_Dcm_FunctionalMessage+0x00000042)[r2]
	dispose 0x00000000, 0x00000FFF, [r31]
.BB.LABEL.22_6:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1062
	ld.w 0x00000000[r2], r2
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x00000024, r26, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1064
	ld.bu 0x00000000[r2], r6
	jarl _Dcm_ClassifyServiceType.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1065
	cmp 0x00000001, r10
	mov r10, r21
	bnz9 .BB.LABEL.22_8
.BB.LABEL.22_7:	; if_then_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1068
	mov r20, r6
	jarl _Dcm_TpRxIndication_IsFuncAddress.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1070
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.22_26
.BB.LABEL.22_8:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1079
	mulhi 0x00000024, r26, r29
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r2
	add r29, r2
	ld.w 0x00000014[r2], r2
	ld.bu 0x00000000[r2], r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1083
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1084
	mulhi 0x0000001C, r26, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.w 0x00000014[r27], r2
	ld.w 0x00000000[r2], r2
	add r29, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1086
	ld.w 0x00000014[r27], r2
	ld.w 0x00000000[r2], r2
	add r29, r2
	ld.b 0x00000001[r2], r2
	st.b r2, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1088
	st.b r26, 0x00000002[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1089
	mov r26, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	st.b r28, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1090
	st.b r30, 0x00000007[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1091
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1092
	shl 0x00000004, r24
	add r24, r25
	ld.w 0x00000004[r25], r2
	ld.b 0x00000008[r2], r2
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000008), r0, r5
	st.b r2, LOWW(#_Dcm_MkCtrl+0x00000008)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1096
	mov r20, r2
	mul 0x0000000C, r2, r0
	add r2, r23
	ld.w 0x00000004[r23], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1094
	ld.w 0x00000014[r27], r2
	ld.w 0x00000000[r2], r2
	add r29, r2
	ld.w 0x0000001C[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1099
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1100
	mulhi 0x00000014, r30, r25
	mov #_Dcm_ChannelCtrl, r2
	add r2, r25
	st.b r30, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1101
	mulhi 0x00000014, r28, r5
	add r5, r2
	st.b r28, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1102
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1103
	ld.w 0x00000010[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1104
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_10
.BB.LABEL.22_9:	; if_then_bb204
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1107
	mov r26, r6
	jarl _DslInternal_ResetResource, r31
	dispose 0x00000000, 0x00000FFF, [r31]
.BB.LABEL.22_10:	; if_else_bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1111
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1112
	mulhi 0x00000014, r30, r2
	mov #_Dcm_ChannelCtrl, r5
	add r5, r2
	mov 0x00000001, r6
	st.w r6, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1113
	mulhi 0x00000014, r28, r2
	add r2, r5
	ld.w 0x0000000C[r5], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.22_12
.BB.LABEL.22_11:	; if_then_bb219
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1116
	mulhi 0x00000014, r28, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x0000000C[r5]
.BB.LABEL.22_12:	; if_break_bb224
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov r26, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1120
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.22_14
.BB.LABEL.22_13:	; if_then_bb230
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1122
	mov #_Dcm_OBDMessage, r6
	ld.hu 0x00000000[r6], r7
	st.w r7, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1123
	mov r26, r2
	shl 0x00000006, r2
	add r2, r5
	ld.b 0x00000002[r6], r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1124
	ld.b 0x00000003[r6], r2
	st.b r2, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1123
	add 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1125
	st.w r6, 0x0000000C[r5]
	br9 .BB.LABEL.22_15
.BB.LABEL.22_14:	; if_else_bb253
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1129
	mov r26, r6
	shl 0x00000006, r6
	add r6, r5
	ld.w 0x0000000C[r5], r6
	ld.b 0x00000000[r6], r6
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1130
	ld.w 0x0000000C[r5], r2
	ld.b 0x00000001[r2], r2
	st.b r2, 0x00000001[r5]
.BB.LABEL.22_15:	; if_break_bb278
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1133
	mov r26, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	st.b r23, 0x0000001C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1134
	st.h r20, 0x00000026[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1135
	st.b r28, 0x00000006[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1136
	st.b r30, 0x00000007[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1137
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1138
	ld.w 0x00000004[r24], r2
	ld.w 0x00000018[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_17
.BB.LABEL.22_16:	; if_then_bb311
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1140
	mov r26, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	movea 0x000000FF, r0, r2
	st.h r2, 0x00000004[r5]
	br9 .BB.LABEL.22_18
.BB.LABEL.22_17:	; if_else_bb316
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1144
	mov r26, r6
	mov r24, r7
	jarl _Dcm_TpRxIndication_SetTxPduId, r31
.BB.LABEL.22_18:	; if_break_bb319
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1146
	mov r26, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x00000038[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1147
	ld.w 0x00000004[r24], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1148
	ld.bu 0x00000008[r2], r20
	mov 0x00000000, r21
	br9 .BB.LABEL.22_24
.BB.LABEL.22_19:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1150
	andi 0x000000FF, r21, r2
	mul 0x0000000C, r2, r0
	mov #_Dcm_CommCtrl, r5
	add r2, r5
	ld.bu 0x00000008[r5], r2
	cmp r2, r20
	bnz9 .BB.LABEL.22_23
.BB.LABEL.22_20:	; if_then_bb340
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1153
	andi 0x000000FF, r21, r2
	mul 0x0000000C, r2, r0
	mov #_Dcm_CommCtrl, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_23
.BB.LABEL.22_21:	; bb348
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r2
	ld.bu LOWW(#_Dcm_MkCtrl)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_23
.BB.LABEL.22_22:	; if_then_bb360
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1157
	mov r20, r6
	jarl _ComM_DCM_ActiveDiagnostic, r31
.BB.LABEL.22_23:	; if_break_bb363
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	add 0x00000001, r21
.BB.LABEL.22_24:	; bb366
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1148
	andi 0x000000FF, r21, r2
	cmp r22, r2
	bl9 .BB.LABEL.22_19
.BB.LABEL.22_25:	; bb374
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1161
	shl 0x00000006, r26
	mov #_Dcm_MsgCtrl, r2
	add r26, r2
	mov 0x00000002, r5
	st.w r5, 0x00000038[r2]
.BB.LABEL.22_26:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1182
	dispose 0x00000000, 0x00000FFF, [r31]
_Dcm_CopyTxData:
	.stack _Dcm_CopyTxData = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1214
	prepare 0x00000479, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1233
	jarl _Dcm_GetTxIdNum, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1235
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000005, r7
	br9 .BB.LABEL.23_5
.BB.LABEL.23_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1240
	cmp 0x00000000, r21
	bz9 .BB.LABEL.23_4
.BB.LABEL.23_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.23_6
.BB.LABEL.23_4:	; if_then_bb34
	mov 0x00000007, r7
.BB.LABEL.23_5:	; if_then_bb34
	movea 0x00000043, r0, r6
	jarl _DCM_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1309
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.23_6:	; if_else_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1245
	cmp r20, r10
	bh9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000006, r7
	br9 .BB.LABEL.23_5
.BB.LABEL.23_8:	; if_else_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1252
	mov r20, r6
	jarl _Dcm_CopyTxData_CheckCtrlStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1253
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.23_10
.BB.LABEL.23_9:	; if_else_bb44.if_break_bb190_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.23_20
.BB.LABEL.23_10:	; if_else_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1259
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1260
	ld.w 0x00000018[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1261
	mul 0x00000006, r20, r0
	add r20, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1262
	ld.bu 0x00000000[r5], r5
	shl 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1259
	ld.w 0x00000010[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1262
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1263
	ld.bu 0x00000000[r2], r2
	mulhi 0x0000001C, r2, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1264
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000007[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1266
	mulhi 0x00000014, r2, r6
	mov #_Dcm_ChannelCtrl, r24
	add r6, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1267
	ld.w 0x00000004[r24], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1266
	add 0x00000004, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1267
	ld.hu 0x00000008[r21], r7
	add r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1277
	ld.w 0x00000018[r5], r5
	cmp r5, r6
	bnh9 .BB.LABEL.23_12
.BB.LABEL.23_11:	; if_else_bb53.if_break_bb190_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.23_20
.BB.LABEL.23_12:	; if_else_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1283
	cmp 0x00000000, r22
	bz9 .BB.LABEL.23_14
.BB.LABEL.23_13:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	ld.w 0x00000000[r22], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.23_15
.BB.LABEL.23_14:	; if_then_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1285
	mulhi 0x00000014, r2, r22
	mov #_Dcm_ChannelCtrl, r2
	add r22, r2
	ld.w 0x00000000[r24], r22
	st.w r22, 0x00000008[r2]
	br9 .BB.LABEL.23_17
.BB.LABEL.23_15:	; if_else_bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1287
	ld.w 0x00000000[r22], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.23_17
.BB.LABEL.23_16:	; if_then_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1289
	ld.w 0x00000000[r24], r2
	ld.hu 0x00000004[r22], r5
	sub r5, r2
	st.w r2, 0x00000000[r24]
.BB.LABEL.23_17:	; if_break_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1296
	ld.hu 0x00000008[r21], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.23_19
.BB.LABEL.23_18:	; if_then_bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1298
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000014[r5], r6
	ld.w 0x00000000[r21], r7
	ld.w 0x00000000[r24], r2
	add r2, r6
	jarl _Dcm_MemoryCopy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1299
	ld.w 0x00000000[r24], r2
	ld.hu 0x00000008[r21], r5
	add r5, r2
	st.w r2, 0x00000000[r24]
.BB.LABEL.23_19:	; if_break_bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1302
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	ld.w 0x00000020[r2], r2
	ld.w 0x00000000[r24], r5
	sub r5, r2
	st.h r2, 0x00000000[r23]
	mov 0x00000000, r10
.BB.LABEL.23_20:	; if_break_bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1309
	dispose 0x00000000, 0x00000479, [r31]
_Dcm_TpTxConfirmation:
	.stack _Dcm_TpTxConfirmation = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1332
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1342
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000005, r7
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1344
	jarl _DCM_DET_REPORTERROR.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.24_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1349
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1350
	ld.w 0x00000018[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1353
	mul 0x00000006, r6, r0
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1354
	ld.bu 0x00000000[r5], r5
	shl 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1349
	ld.w 0x00000010[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1354
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1356
	ld.bu 0x00000000[r2], r20
	mov r20, r6
	cmp 0x00000000, r7
	bz9 .BB.LABEL.24_5
.BB.LABEL.24_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	cmp 0x00000001, r7
	jarl _DslInternal_ResetResource, r31
.BB.LABEL.24_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1385
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.24_5:	; switch_clause_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1363
	jarl _Dcm_CheckUDS0x86_TxConfirmation, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.24_4
.BB.LABEL.24_6:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1368
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1369
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	mov 0x00000004, r2
	st.w r2, 0x00000038[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1376
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1377
	mov r20, r6
	jarl _DsdInternal_TxConfirmation, r31
	dispose 0x00000000, 0x00000041, [r31]
_Dcm_TxConfirmation:
	.stack _Dcm_TxConfirmation = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1406
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1410
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.25_2
.BB.LABEL.25_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000005, r7
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1412
	jarl _DCM_DET_REPORTERROR.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.25_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1417
	jarl _Dcm_TxConfirmation_2A, r31
	dispose 0x00000000, 0x00000001, [r31]
_DslInternal_ProcessingDone:
	.stack _DslInternal_ProcessingDone = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1440
	prepare 0x000007FF, 0x0000000C
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1449
	jarl _Dcm_GetConnectionNum, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1450
	jarl _Dcm_GetMainConnectionNum.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1462
	mulhi 0x0000001C, r20, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1463
	ld.bu 0x00000002[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1464
	mov r22, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1489
	ld.hu 0x00000004[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1451
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000010[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1486
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1488
	ld.w 0x00000020[r5], r2
	st.h r2, 0x00000008[r3]
	mov 0x00000000, r25
	mov 0x00000001, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1489
	mov r10, r27
	br9 .BB.LABEL.26_12
.BB.LABEL.26_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1491
	andi 0x000000FF, r25, r2
	shl 0x00000004, r2
	add r24, r2
	ld.bu 0x00000000[r2], r2
	cmp r2, r20
	bnz9 .BB.LABEL.26_11
.BB.LABEL.26_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1493
	andi 0x000000FF, r25, r2
	shl 0x00000004, r2
	add r24, r2
	ld.w 0x00000004[r2], r28
	mov 0x00000000, r29
.BB.LABEL.26_3:	; bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1494
	andi 0x000000FF, r29, r2
	cmp r27, r2
	bnc9 .BB.LABEL.26_11
.BB.LABEL.26_4:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1496
	cmp 0x00000000, r28
	bz9 .BB.LABEL.26_9
.BB.LABEL.26_5:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	andi 0x000000FF, r29, r2
	mul 0x0000000C, r2, r0
	mov #_Dcm_CommCtrl, r5
	add r2, r5
	ld.bu 0x00000008[r5], r2
	ld.bu 0x00000008[r28], r5
	cmp r2, r5
	bnz9 .BB.LABEL.26_9
.BB.LABEL.26_6:	; bb76
	andi 0x000000FF, r29, r2
	mul 0x0000000C, r2, r0
	mov #_Dcm_CommCtrl, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.26_9
.BB.LABEL.26_7:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1501
	mov r20, r6
	jarl _DslInternal_MaxIsLargerThanP2Server.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1502
	cmp 0x00000000, r10
	bz9 .BB.LABEL.26_10
.BB.LABEL.26_8:	; if_then_bb92.if_break_bb102_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000000, r26
.BB.LABEL.26_9:	; if_break_bb102
	add 0x00000001, r29
	br9 .BB.LABEL.26_3
.BB.LABEL.26_10:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1505
	mov r20, r6
	jarl _DslInternal_ResetResource, r31
	br9 .BB.LABEL.26_8
.BB.LABEL.26_11:	; if_break_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	add 0x00000001, r25
.BB.LABEL.26_12:	; bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1489
	andi 0x000000FF, r25, r2
	cmp r21, r2
	bl9 .BB.LABEL.26_1
.BB.LABEL.26_13:	; bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1513
	andi 0x000000FF, r26, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.26_16
.BB.LABEL.26_14:	; bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	addi 0xFFFFFF01, r23, r0
	bnz9 .BB.LABEL.26_16
.BB.LABEL.26_15:	; if_then_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1516
	mov r20, r6
	jarl _DslInternal_ResetResource, r31
	mov 0x00000000, r26
.BB.LABEL.26_16:	; if_break_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1520
	andi 0x000000FF, r26, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.26_19
.BB.LABEL.26_17:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1522
	mov r20, r6
	jarl _DslInternal_MinIsLargerThanP2Server.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1523
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.26_19
.BB.LABEL.26_18:	; if_then_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000000, r26
.BB.LABEL.26_19:	; if_break_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1529
	andi 0x000000FF, r26, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.26_22
.BB.LABEL.26_20:	; if_then_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1531
	mov r23, r6
	jarl _PduR_Transmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1532
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.26_22
.BB.LABEL.26_21:	; if_then_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1535
	mov r20, r6
	jarl _DslInternal_ResetResource, r31
	mov 0x00000000, r26
.BB.LABEL.26_22:	; if_break_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1539
	zxb r26
	cmp 0x00000001, r26
	bnz9 .BB.LABEL.26_24
.BB.LABEL.26_23:	; if_then_bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1541
	shl 0x00000006, r22
	mov #_Dcm_MsgCtrl, r2
	add r22, r2
	mov 0x00000001, r5
	st.b r5, 0x00000003[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1544
	mov r20, r6
	jarl _DslInternal_P2ServerStop.1, r31
.BB.LABEL.26_24:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1546
	dispose 0x0000000C, 0x000007FF, [r31]
_Dcm_CopyTxData_CheckCtrlStatus.1:
	.stack _Dcm_CopyTxData_CheckCtrlStatus.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1562
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1570
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1571
	ld.w 0x00000018[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1575
	mul 0x00000006, r6, r0
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1576
	ld.bu 0x00000000[r5], r5
	shl 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1570
	ld.w 0x00000010[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1576
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1577
	ld.bu 0x00000000[r2], r2
	mulhi 0x0000001C, r2, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1579
	ld.bu 0x00000002[r5], r2
	addi 0xFFFFFF01, r2, r0
	bnz9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.27_3
.BB.LABEL.27_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1585
	mov r2, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r7
	add r5, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1586
	ld.bu 0x00000007[r7], r6
	ld.bu 0x00000006[r7], r5
	mov 0x00000000, r10
.BB.LABEL.27_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1588
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.27_6
.BB.LABEL.27_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r7
	add r2, r7
	ld.w 0x00000038[r7], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.27_6
.BB.LABEL.27_5:	; if_then_bb64
	mov 0x00000001, r10
.BB.LABEL.27_6:	; if_break_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1599
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.27_9
.BB.LABEL.27_7:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	zxb r5
	mul 0x00000014, r5, r0
	mov #_Dcm_ChannelCtrl, r2
	add r5, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.27_9
.BB.LABEL.27_8:	; if_then_bb86
	mov 0x00000001, r10
.BB.LABEL.27_9:	; if_break_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1604
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.27_12
.BB.LABEL.27_10:	; bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	zxb r6
	mul 0x00000014, r6, r0
	mov #_Dcm_ChannelCtrl, r2
	add r6, r2
	ld.w 0x00000010[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.27_12
.BB.LABEL.27_11:	; if_then_bb108
	mov 0x00000001, r10
.BB.LABEL.27_12:	; if_break_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1610
	jmp [r31]
_Dcm_CheckProtocol.1:
	.stack _Dcm_CheckProtocol.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1627
	prepare 0x000007FD, 0x00000000
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1637
	jarl _Dcm_GetProtocolMsgNum, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1645
	mulhi 0x0000001C, r20, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.w 0x00000018[r5], r2
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1638
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1639
	ld.w 0x00000010[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1638
	ld.w 0x00000000[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1645
	mov r10, r24
	bz17 .BB.LABEL.28_27
.BB.LABEL.28_1:	; entry.bb87_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000000, r25
	mov r25, r27
	br9 .BB.LABEL.28_7
.BB.LABEL.28_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1650
	andi 0x000000FF, r27, r26
	shl 0x00000004, r26
	add r22, r26
	ld.bu 0x00000000[r26], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1652
	mulhi 0x00000024, r28, r26
	ld.w 0x00000014[r23], r2
	ld.w 0x00000000[r2], r2
	add r26, r2
	ld.bu 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1651
	mulhi 0x0000001C, r28, r26
	mov #_Dcm_ProtocolCtrl, r2
	add r26, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1654
	ld.bu 0x00000002[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1652
	jarl _Dcm_ClassifyServiceType.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1654
	cmp r20, r28
	bz9 .BB.LABEL.28_6
.BB.LABEL.28_3:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mulhi 0x0000001C, r28, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.w 0x00000018[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.28_6
.BB.LABEL.28_4:	; bb55
	cmp r21, r10
	bnz9 .BB.LABEL.28_6
.BB.LABEL.28_5:	; if_then_bb84
	mov 0x00000001, r25
.BB.LABEL.28_6:	; if_break_bb
	add 0x00000001, r27
.BB.LABEL.28_7:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1648
	andi 0x000000FF, r27, r2
	cmp r24, r2
	bnc9 .BB.LABEL.28_9
.BB.LABEL.28_8:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	andi 0x000000FF, r25, r0
	bz9 .BB.LABEL.28_2
.BB.LABEL.28_9:	; bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1661
	zxb r25
	cmp 0x00000001, r25
	bnz17 .BB.LABEL.28_27
.BB.LABEL.28_10:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1663
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.28_14
.BB.LABEL.28_11:	; if_then_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1665
	movhi HIGHW1(#_Dcm_OBDMessage+0x00000002), r0, r21
	ld.bu LOWW(#_Dcm_OBDMessage+0x00000002)[r21], r21
	addi 0xFFFFFFC2, r21, r0
	bnz9 .BB.LABEL.28_13
.BB.LABEL.28_12:	; if_then_bb119.if_break_bb259_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.28_28
.BB.LABEL.28_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1671
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r23
	add r20, r23
	st.b r21, 0x00000000[r23]
	mov 0x00000000, r10
	dispose 0x00000000, 0x000007FD, [r31]
.BB.LABEL.28_14:	; if_else_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1676
	mov r20, r21
	shl 0x00000006, r21
	mov #_Dcm_MsgCtrl, r2
	add r21, r2
	ld.w 0x0000000C[r2], r21
	ld.bu 0x00000000[r21], r21
	addi 0xFFFFFFC2, r21, r0
	bnz9 .BB.LABEL.28_16
.BB.LABEL.28_15:	; if_else_bb132.if_break_bb159_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.28_17
.BB.LABEL.28_16:	; if_else_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1682
	mov r20, r21
	shl 0x00000006, r21
	mov #_Dcm_MsgCtrl, r2
	add r21, r2
	ld.w 0x0000000C[r2], r21
	ld.b 0x00000000[r21], r21
	st.b r21, 0x00000000[r2]
	mov 0x00000000, r21
.BB.LABEL.28_17:	; if_break_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1687
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.28_28
.BB.LABEL.28_18:	; if_then_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1685
	ld.w 0x00000014[r23], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x00000024, r20, r5
	add r5, r2
	ld.bu 0x00000001[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1684
	andi 0x000000FF, r28, r5
	mul 0x0000001C, r5, r0
	mov #_Dcm_ProtocolCtrl, r6
	add r5, r6
	ld.bu 0x00000001[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1689
	cmp r5, r2
	bnc9 .BB.LABEL.28_22
.BB.LABEL.28_19:	; if_then_bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1691
	andi 0x000000FF, r28, r6
	jarl _DslInternal_ProtocolStop, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.28_26
.BB.LABEL.28_20:	; if_else_bb196
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1698
	zxb r26
	addi 0xFFFFFF01, r26, r0
	bz9 .BB.LABEL.28_28
.BB.LABEL.28_21:	; if_then_bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1716
	zxb r28
	mov r28, r6
	jarl _Dcm_CancelPendingService.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1717
	mov r28, r6
	jarl _DslInternal_ResetResource, r31
	mov r21, r10
	dispose 0x00000000, 0x000007FD, [r31]
.BB.LABEL.28_22:	; if_else_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1723
	andi 0x000000FF, r28, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000038[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.28_24
.BB.LABEL.28_23:	; bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	andi 0x000000FF, r28, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000038[r5], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.28_12
.BB.LABEL.28_24:	; bb230
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r2
	ld.bu LOWW(#_Dcm_MkCtrl)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.28_12
.BB.LABEL.28_25:	; if_then_bb243
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1730
	andi 0x000000FF, r28, r6
	jarl _DslInternal_ProtocolStop, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.28_28
.BB.LABEL.28_26:	; if_then_bb250
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000001, r10
	movhi HIGHW1(#_StopProtocolFaild.1), r0, r21
	st.b r10, LOWW(#_StopProtocolFaild.1)[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1750
	dispose 0x00000000, 0x000007FD, [r31]
.BB.LABEL.28_27:	; entry.if_break_bb259_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000000, r21
.BB.LABEL.28_28:	; if_break_bb259
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1750
	dispose 0x00000000, 0x000007FD, [r31]
_Dcm_TpRxIndication_IsFuncAddress.1:
	.stack _Dcm_TpRxIndication_IsFuncAddress.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1858
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1868
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1870
	ld.w 0x0000000C[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1873
	mul 0x0000000C, r6, r0
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1874
	ld.bu 0x00000000[r5], r6
	mov r6, r7
	shl 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1869
	ld.w 0x00000010[r2], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1874
	add r7, r8
	ld.bu 0x00000000[r8], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1876
	mulhi 0x00000024, r20, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1868
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1876
	ld.w 0x00000014[r2], r8
	ld.w 0x00000000[r8], r8
	add r7, r8
	ld.w 0x00000010[r8], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1879
	ld.bu 0x00000000[r7], r7
	mulh 0x0000000C, r7
	ld.w 0x00000004[r2], r2
	add r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1878
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1882
	cmp 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1879
	ld.w 0x00000008[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1882
	bz9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; entry.if_break_bb115_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.29_10
.BB.LABEL.29_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1884
	jarl _Dcm_TpRxIndication_3E80, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1886
	addi 0x00000000, r10, r22
	bnz9 .BB.LABEL.29_10
.BB.LABEL.29_3:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1888
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1889
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000038[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.29_5
.BB.LABEL.29_4:	; if_then_bb76.bb95_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.29_7
.BB.LABEL.29_5:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1897
	movhi HIGHW1(#_Dcm_FunctionalMessage), r0, r2
	st.h r0, LOWW(#_Dcm_FunctionalMessage)[r2]
	mov 0x00000001, r22
	br9 .BB.LABEL.29_9
.BB.LABEL.29_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1904
	andi 0x0000FFFF, r2, r5
	mov r21, r6
	add r5, r6
	mov #_Dcm_Channel, r7
	add r6, r7
	mov #_Dcm_FunctionalMessage, r6
	add r5, r6
	ld.b 0x00000002[r6], r5
	st.b r5, 0x00000000[r7]
	add 0x00000001, r2
.BB.LABEL.29_7:	; bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1902
	movhi HIGHW1(#_Dcm_FunctionalMessage), r0, r5
	ld.hu LOWW(#_Dcm_FunctionalMessage)[r5], r5
	andi 0x0000FFFF, r2, r6
	cmp r5, r6
	bl9 .BB.LABEL.29_6
.BB.LABEL.29_8:	; bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1906
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	st.w r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1907
	movhi HIGHW1(#_Dcm_FunctionalMessage), r0, r5
	st.h r0, LOWW(#_Dcm_FunctionalMessage)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1908
	mov #_Dcm_Channel, r5
	add r21, r5
	st.w r5, 0x0000000C[r2]
.BB.LABEL.29_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1916
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
.BB.LABEL.29_10:	; if_break_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1920
	dispose 0x00000000, 0x00000071, [r31]
_DslInternal_RxIndicationDeal:
	.stack _DslInternal_RxIndicationDeal = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1936
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1939
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x00000024, r20, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1942
	ld.bu 0x00000000[r2], r6
	jarl _Dcm_ClassifyServiceType.1, r31
	mov r20, r6
	mov r10, r7
	jarl _Dcm_CheckProtocol.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.30_7
.BB.LABEL.30_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1944
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1945
	movhi HIGHW1(#_StopProtocolFaild.1), r0, r2
	ld.bu LOWW(#_StopProtocolFaild.1)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.30_3
.BB.LABEL.30_2:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1947
	movhi HIGHW1(#_StopProtocolFaild.1), r0, r2
	st.b r0, LOWW(#_StopProtocolFaild.1)[r2]
	movea 0x00000022, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1948
	mov r20, r6
	jarl _DsdInternal_SetNrc.1, r31
	br9 .BB.LABEL.30_5
.BB.LABEL.30_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1951
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000010[r2], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.30_6
.BB.LABEL.30_4:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1953
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	movea 0x00000021, r0, r2
	st.b r2, 0x00000002[r5]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1954
	st.w r2, 0x00000008[r5]
.BB.LABEL.30_5:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov r20, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.30_6:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1961
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.30_7:	; if_else_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1966
	mov r20, r6
	jarl _DslInternal_ProtocolStart.1, r31
	mov r20, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1967
	addi 0x00000000, r10, r21
	bz9 .BB.LABEL.30_9
.BB.LABEL.30_8:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	movea 0x00000022, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1969
	jarl _DsdInternal_SetNrc.1, r31
	br9 .BB.LABEL.30_10
.BB.LABEL.30_9:	; if_else_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1975
	jarl _DslInternal_P2ServerStart.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1976
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	addi 0xFFFFFFDF, r2, r0
	bnz9 .BB.LABEL.30_11
.BB.LABEL.30_10:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 0
	mov r20, r6
	jarl _DsdInternal_ProcessingDone, r31
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1990
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.30_11:	; if_else_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1983
	mulhi 0x0000001C, r20, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.b 0x00000000[r5], r2
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000002), r0, r5
	st.b r2, LOWW(#_Dcm_MkCtrl+0x00000002)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 1985
	mov r20, r6
	jarl _DsdInternal_RxIndication, r31
	dispose 0x00000000, 0x00000061, [r31]
_Dcm_CancelPendingService.1:
	.stack _Dcm_CancelPendingService.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 2090
	prepare 0x00000041, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 2092
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 2093
	mov r2, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r7
	add r5, r7
	ld.bu 0x0000003D[r7], r5
	cmp 0x00000001, r5
	mov r6, r20
	bnz9 .BB.LABEL.31_2
.BB.LABEL.31_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 2104
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000000[r5], r6
	movea 0x00000002, r3, r9
	movea 0x00000004, r3, r8
	mov r20, r7
	jarl _DsdInternal_SearchSidTabServiceIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 2109
	ld.hu 0x00000004[r3], r2
	mul 0x0000000C, r2, r0
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	ld.w 0x00000000[r5], r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	ld.hu 0x00000002[r3], r5
	mul 0x00000034, r5, r0
	add r5, r2
	ld.w 0x00000004[r2], r2
	movea 0x00000007, r3, r8
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 2112
	mov r20, r7
	jarl [r2], r31
.BB.LABEL.31_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsl.c", 2114
	dispose 0x00000008, 0x00000041, [r31]
	.section .data, data
_StopProtocolFaild.1:
	.ds (1)
