#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\Dcm.c -oDefaultBuild\Dcm.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_be20790cb4ce4c0c93c02b17c4a6468cv04j2grb.vzd
#@	compiled at Fri Mar 27 09:50:29 2026

	.file "..\..\Bsw\Communication\Common\Dcm\Dcm.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_VIN
	.extern _Dcm_CommCtrl
	.extern _Dcm_SesCtrl
	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_FunctionalMessage
	.extern _Dcm_OBDMessage
	.extern _Dcm_GeneralCfg
	.public _DcmPbCfgPtr, 4
	.public _Dcm_MkCtrl, 12
	.public _gAppl_UpdataOK_ResponseFlag, 1
	.public _Dcm_ReqSetProgConditions, 1
	.public _Dcm_ProgConditions, 8
	.public _Dcm_DspProgram, 24
	.public _Dcm_Timer, 4
	.extern _Det_ReportError
	.extern _Dcm_GetChannelNum
	.public _Dcm_Init
	.extern _SchM_Enter_Dcm_ExclusiveArea
	.extern _SchM_Exit_Dcm_ExclusiveArea
	.extern _DslInternal_InitProtocolCtrl
	.extern _Dcm_InterInit
	.public _Dcm_GetVersionInfo
	.public _Dcm_GetVin
	.public _Dcm_DemTriggerOnDTCStatus
	.extern _Dcm_InterDemTriggerOnDTCStatus
	.public _Dcm_GetSecurityLevel
	.public _Dcm_GetSesCtrlType
	.public _Dcm_GetActiveProtocol
	.public _Dcm_ResetToDefaultSession
	.extern _DslInternal_SesRefresh
	.extern _SchM_Switch_DcmDiagnosticSessionControl
	.public _Dcm_TriggerOnEvent
	.public _Dcm_SetActiveDiagnostic
	.extern _ComM_DCM_ActiveDiagnostic
	.public _Dcm_MainFunction
	.extern _Dcm_InterMainFunction
	.extern _DslInternal_RxIndicationDeal
	.extern _DsdInternal_SearchSidTabServiceIndex
	.extern _DslInternal_ResetResource
	.extern _DsdInternal_ProcessingDone
	.extern _DslInternal_ProcessingDone
	.extern _Dcm_MainFunction_Pending2A
	.extern _Dcm_GetTimeSpan
	.extern _DslInternal_P2ServerTimeout
	.public _DslInternal_InitDspProgramInfo
	.extern _Dcm_SetProgConditions
	.extern _SchM_Switch_DcmEcuReset
	.extern _Dcm_GetProgConditions
	.extern _BswM_Dcm_ApplicationUpdated
	.extern _Dcm_StartOfReception
	.extern _Dcm_CopyRxData
	.extern _Dcm_TpRxIndication

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
_Dcm_MemoryCopy.1:
	.stack _Dcm_MemoryCopy.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 685
	mov 0x00000000, r2
	br9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 690
	mov r6, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r7, r9
	add r2, r9
	st.b r5, 0x00000000[r9]
	add 0x00000001, r2
.BB.LABEL.4_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 688
	cmp r8, r2
	bl9 .BB.LABEL.4_1
.BB.LABEL.4_3:	; return
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
	bnc9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
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
.BB.LABEL.5_2:	; return
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
	bnh9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
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
.BB.LABEL.6_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 794
	dispose 0x00000000, 0x00000041, [r31]
_Dcm_Init:
	.stack _Dcm_Init = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 196
	prepare 0x00000079, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 199
	jarl _Dcm_GetMainConnectionNum.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 203
	cmp 0x00000000, r20
	mov r10, r21
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000007, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 205
	jarl _DCM_DET_REPORTERROR.1, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.7_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 210
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	st.w r20, LOWW(#_DcmPbCfgPtr)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 211
	ld.w 0x00000014[r20], r20
	mov 0x00000000, r22
	br9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 218
	andi 0x000000FF, r22, r6
	jarl _DslInternal_InitChannelCtrl.1, r31
	add 0x00000001, r22
.BB.LABEL.7_4:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 216
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.bu 0x00000000[r2], r2
	cmp r2, r22
	bl9 .BB.LABEL.7_3
.BB.LABEL.7_5:	; bb16.bb33_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 222
	andi 0x000000FF, r22, r6
	jarl _DslInternal_InitMsgCtrl.1, r31
	add 0x00000001, r22
.BB.LABEL.7_7:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 220
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000014[r2], r2
	ld.bu 0x00000004[r2], r2
	cmp r2, r22
	bl9 .BB.LABEL.7_6
.BB.LABEL.7_8:	; bb33.bb97_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.7_10
.BB.LABEL.7_9:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 226
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 227
	andi 0x000000FF, r22, r23
	mov r23, r2
	mul 0x0000001C, r2, r0
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	mov 0xFFFFFFFF, r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 228
	st.b r2, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 229
	st.b r2, 0x00000002[r5]
	movea 0x00000032, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 230
	st.w r2, 0x00000004[r5]
	movea 0x00001388, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 231
	st.w r2, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 232
	st.w r0, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 233
	st.w r0, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 234
	st.w r2, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 235
	st.w r0, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 236
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 237
	mov r23, r6
	jarl _DslInternal_InitProtocolCtrl, r31
	add 0x00000001, r22
.BB.LABEL.7_10:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 224
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000014[r2], r2
	ld.bu 0x00000004[r2], r2
	cmp r2, r22
	bl9 .BB.LABEL.7_9
.BB.LABEL.7_11:	; bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 239
	jarl _Dcm_InterInit, r31
	mov 0x00000000, r22
	br9 .BB.LABEL.7_13
.BB.LABEL.7_12:	; bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 242
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 243
	mov r22, r2
	mul 0x0000000C, r2, r0
	mov #_Dcm_CommCtrl, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 244
	st.w r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 245
	mov r22, r2
	shl 0x00000005, r2
	add r20, r2
	ld.b 0x00000008[r2], r2
	st.b r2, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 247
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	add 0x00000001, r22
.BB.LABEL.7_13:	; bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 240
	cmp r21, r22
	bl9 .BB.LABEL.7_12
.BB.LABEL.7_14:	; bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 250
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 251
	mov #_Dcm_MkCtrl, r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 252
	st.b r0, 0x00000001[r2]
	mov 0x0000000C, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 253
	st.b r6, 0x00000002[r2]
	mov 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 254
	st.b r6, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 255
	st.b r6, 0x00000003[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 256
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 258
	movhi HIGHW1(#_Dcm_OBDMessage), r0, r2
	st.h r0, LOWW(#_Dcm_OBDMessage)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 259
	movhi HIGHW1(#_Dcm_FunctionalMessage), r0, r2
	st.h r0, LOWW(#_Dcm_FunctionalMessage)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 260
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 268
	jarl _DslInternal_InitDspProgramInfo, r31
	dispose 0x00000000, 0x00000079, [r31]
_Dcm_GetVersionInfo:
	.stack _Dcm_GetVersionInfo = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 291
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 294
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000005, r7
.BB.LABEL.8_2:	; if_then_bb
	movea 0x00000024, r0, r6
	jarl _DCM_DET_REPORTERROR.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 311
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 298
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_then_bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000007, r7
	br9 .BB.LABEL.8_2
.BB.LABEL.8_5:	; if_else_bb9
	movea 0x0000003E, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 305
	st.h r2, 0x00000000[r6]
	movea 0x00000035, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 306
	st.h r2, 0x00000002[r6]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 307
	st.b r2, 0x00000005[r6]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 308
	st.b r2, 0x00000006[r6]
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 309
	st.b r2, 0x00000007[r6]
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_GetVin:
	.stack _Dcm_GetVin = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 328
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 332
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	mov r6, r7
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000005, r7
	mov 0x00000007, r6
.BB.LABEL.9_2:	; if_then_bb
	jarl _DCM_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 350
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 336
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 338
	mov r6, r7
	br9 .BB.LABEL.9_2
.BB.LABEL.9_5:	; if_else_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 343
	movhi HIGHW1(#_Dcm_VIN+0x00000011), r0, r2
	ld.bu LOWW(#_Dcm_VIN+0x00000011)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_7
.BB.LABEL.9_6:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	movea 0x00000011, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 345
	mov #_Dcm_VIN, r6
	jarl _Dcm_MemoryCopy.1, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 346
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_7:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 350
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_DemTriggerOnDTCStatus:
	.stack _Dcm_DemTriggerOnDTCStatus = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 371
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 375
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000005, r7
	movea 0x0000002B, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 377
	jarl _DCM_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 382
	jarl _Dcm_InterDemTriggerOnDTCStatus, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 383
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_GetSecurityLevel:
	.stack _Dcm_GetSecurityLevel = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 404
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 408
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000005, r7
.BB.LABEL.11_2:	; if_then_bb
	mov 0x0000000D, r6
	jarl _DCM_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 423
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 412
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000007, r7
	br9 .BB.LABEL.11_2
.BB.LABEL.11_5:	; if_else_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 419
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000001), r0, r2
	ld.b LOWW(#_Dcm_MkCtrl+0x00000001)[r2], r2
	st.b r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 420
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_GetSesCtrlType:
	.stack _Dcm_GetSesCtrlType = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 440
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 444
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000005, r7
.BB.LABEL.12_2:	; if_then_bb
	mov 0x00000006, r6
	jarl _DCM_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 459
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 448
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000007, r7
	br9 .BB.LABEL.12_2
.BB.LABEL.12_5:	; if_else_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 455
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r2
	ld.b LOWW(#_Dcm_MkCtrl)[r2], r2
	st.b r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 456
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_GetActiveProtocol:
	.stack _Dcm_GetActiveProtocol = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 476
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 480
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000005, r7
.BB.LABEL.13_2:	; if_then_bb
	mov 0x0000000F, r6
	jarl _DCM_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 500
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 484
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000007, r7
	br9 .BB.LABEL.13_2
.BB.LABEL.13_5:	; if_else_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 491
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000002), r0, r2
	ld.bu LOWW(#_Dcm_MkCtrl+0x00000002)[r2], r2
	st.b r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 492
	cmp 0x00000002, r2
	bl9 .BB.LABEL.13_7
.BB.LABEL.13_6:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	ld.bu 0x00000000[r6], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; if_then_bb43
	mov 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 495
	st.b r2, 0x00000000[r6]
.BB.LABEL.13_8:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 500
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_ResetToDefaultSession:
	.stack _Dcm_ResetToDefaultSession = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 517
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 520
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000005, r7
	movea 0x0000002A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 522
	jarl _DCM_DET_REPORTERROR.1, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 527
	movhi HIGHW1(#_Dcm_SesCtrl+0x00000001), r0, r2
	st.b r6, LOWW(#_Dcm_SesCtrl+0x00000001)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 528
	jarl _DslInternal_SesRefresh, r31
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 529
	jarl _SchM_Switch_DcmDiagnosticSessionControl, r31
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_TriggerOnEvent:
	.stack _Dcm_TriggerOnEvent = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 549
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 553
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000005, r7
	movea 0x0000002D, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 555
	jarl _DCM_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 556
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 568
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_SetActiveDiagnostic:
	.stack _Dcm_SetActiveDiagnostic = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 586
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 590
	jarl _Dcm_GetMainConnectionNum.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 592
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	mov r10, r21
	bz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000005, r7
	movea 0x00000056, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 594
	jarl _DCM_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.16_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 599
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.16_6
.BB.LABEL.16_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 601
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 604
	andi 0x000000FF, r2, r5
	mul 0x0000000C, r5, r0
	mov #_Dcm_CommCtrl, r6
	add r5, r6
	mov 0x00000001, r5
	st.w r5, 0x00000004[r6]
	add 0x00000001, r2
.BB.LABEL.16_5:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 602
	andi 0x000000FF, r2, r5
	cmp r21, r5
	bl9 .BB.LABEL.16_4
	br9 .BB.LABEL.16_9
.BB.LABEL.16_6:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 610
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	mov 0x00000000, r20
	br9 .BB.LABEL.16_8
.BB.LABEL.16_7:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 613
	andi 0x000000FF, r20, r2
	mul 0x0000000C, r2, r0
	mov #_Dcm_CommCtrl, r5
	add r2, r5
	st.w r0, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 614
	ld.bu 0x00000008[r5], r6
	jarl _ComM_DCM_ActiveDiagnostic, r31
	add 0x00000001, r20
.BB.LABEL.16_8:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 611
	andi 0x000000FF, r20, r2
	cmp r21, r2
	bl9 .BB.LABEL.16_7
.BB.LABEL.16_9:	; bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 621
	dispose 0x00000000, 0x00000061, [r31]
_Dcm_MainFunction:
	.stack _Dcm_MainFunction = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 637
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 639
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_MkCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.17_4
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 642
	movhi HIGHW1(#_Dcm_Timer), r0, r2
	ld.w LOWW(#_Dcm_Timer)[r2], r2
	movhi HIGHW1(#_Dcm_GeneralCfg), r0, r5
	ld.w LOWW(#_Dcm_GeneralCfg)[r5], r5
	not r5, r6
	cmp r6, r2
	bl9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 648
	addi 0x00000001, r2, r6
	mov r5, r2
	mov r6, r5
.BB.LABEL.17_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	add r5, r2
	movhi HIGHW1(#_Dcm_Timer), r0, r5
	st.w r2, LOWW(#_Dcm_Timer)[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 653
	jarl _Dcm_MainFunction_P2ServerTimer.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 656
	jarl _Dcm_MainFunction_PendingManage.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 658
	jarl _Dcm_InterMainFunction, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 660
	jarl _Dcm_BootloaderResponse.1, r31
.BB.LABEL.17_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 662
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_MainFunction_PendingManage.1:
	.stack _Dcm_MainFunction_PendingManage.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 681
	prepare 0x00000679, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 688
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 703
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 704
	ld.w 0x00000004[r2], r5
	ld.w 0x00000000[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 703
	ld.w 0x00000000[r2], r2
	ld.w 0x00000014[r2], r21
	mov 0x00000000, r22
	mov r22, r23
	jr .BB.LABEL.18_22
.BB.LABEL.18_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 753
	andi 0x000000FF, r23, r2
	mul 0x0000001C, r2, r0
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 754
	ld.bu 0x00000002[r5], r24
	addi 0xFFFFFF01, r24, r0
	bz17 .BB.LABEL.18_21
.BB.LABEL.18_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 756
	mov r24, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000038[r5], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.18_18
.BB.LABEL.18_3:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 758
	andi 0x000000FF, r23, r6
	jarl _DslInternal_RxIndicationDeal, r31
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.18_21
.BB.LABEL.18_4:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 761
	mov r24, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r25
	add r2, r25
	ld.bu 0x00000000[r25], r6
	andi 0x000000FF, r23, r7
	movea 0x00000004, r3, r9
	movea 0x00000006, r3, r8
	jarl _DsdInternal_SearchSidTabServiceIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 766
	ld.hu 0x00000006[r3], r2
	mul 0x0000000C, r2, r0
	add r20, r2
	ld.w 0x00000004[r2], r2
	ld.hu 0x00000004[r3], r5
	mul 0x00000034, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 769
	ld.bu 0x0000003D[r25], r5
	cmp 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 766
	ld.w 0x00000004[r2], r2
	mov r24, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 769
	bnz9 .BB.LABEL.18_6
.BB.LABEL.18_5:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 775
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r6
	add r5, r6
	mov 0x00000001, r5
	st.b r5, 0x0000003C[r6]
	br9 .BB.LABEL.18_9
.BB.LABEL.18_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 777
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r6
	add r5, r6
	ld.bu 0x0000003D[r6], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.18_9
.BB.LABEL.18_7:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov r24, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r6
	add r5, r6
	ld.bu 0x0000003D[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.18_9
.BB.LABEL.18_8:	; if_else_bb101
	mov 0x00000001, r22
.BB.LABEL.18_9:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 789
	andi 0x000000FF, r22, r0
	bnz9 .BB.LABEL.18_21
.BB.LABEL.18_10:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 791
	shl 0x00000006, r24
	mov #_Dcm_MsgCtrl, r22
	add r24, r22
	ld.bu 0x0000003D[r22], r6
	andi 0x000000FF, r23, r7
	movea 0x00000003, r3, r8
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 792
	addi 0x00000000, r10, r22
	bz9 .BB.LABEL.18_21
.BB.LABEL.18_11:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	cmp 0x0000000C, r22
	bz9 .BB.LABEL.18_21
.BB.LABEL.18_12:	; if_then_bb108
	cmp 0x0000000A, r22
	bz9 .BB.LABEL.18_21
.BB.LABEL.18_13:	; if_then_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 794
	ld.bu 0x00000003[r3], r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.18_17
.BB.LABEL.18_14:	; if_then_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 796
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.18_16
.BB.LABEL.18_15:	; if_then_bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 798
	andi 0x000000FF, r23, r6
	jarl _DslInternal_ResetResource, r31
	br9 .BB.LABEL.18_21
.BB.LABEL.18_16:	; if_else_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	movea 0x00000022, r0, r7
.BB.LABEL.18_17:	; if_else_bb164
	andi 0x000000FF, r23, r24
	mov r24, r6
	jarl _DsdInternal_SetNrc.1, r31
	mov r24, r6
	jarl _DsdInternal_ProcessingDone, r31
	br9 .BB.LABEL.18_21
.BB.LABEL.18_18:	; if_else_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 815
	mov r24, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000003[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.18_21
.BB.LABEL.18_19:	; bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	shl 0x00000006, r24
	mov #_Dcm_MsgCtrl, r2
	add r24, r2
	ld.w 0x00000038[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.18_21
.BB.LABEL.18_20:	; if_then_bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 819
	andi 0x000000FF, r23, r6
	jarl _DslInternal_ProcessingDone, r31
.BB.LABEL.18_21:	; if_break_bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 826
	andi 0x000000FF, r23, r6
	jarl _Dcm_MainFunction_Pending2A, r31
	add 0x00000001, r23
.BB.LABEL.18_22:	; bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 751
	andi 0x000000FF, r23, r2
	ld.bu 0x00000004[r21], r5
	cmp r5, r2
	bl17 .BB.LABEL.18_1
.BB.LABEL.18_23:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 828
	dispose 0x00000008, 0x00000679, [r31]
_Dcm_MainFunction_P2ServerTimer.1:
	.stack _Dcm_MainFunction_P2ServerTimer.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 844
	prepare 0x00000061, 0x00000004
	mov 0x00000000, r20
	br9 .BB.LABEL.19_6
.BB.LABEL.19_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 854
	andi 0x000000FF, r20, r2
	mul 0x0000001C, r2, r0
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 855
	ld.bu 0x00000002[r5], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.19_5
.BB.LABEL.19_2:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov r2, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r6
	add r5, r6
	ld.w 0x00000034[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.19_5
.BB.LABEL.19_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 857
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 858
	ld.w 0x0000002C[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 857
	ld.w 0x00000028[r5], r6
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 859
	jarl _Dcm_GetTimeSpan, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 860
	movhi HIGHW1(#_Dcm_GeneralCfg), r0, r2
	ld.w LOWW(#_Dcm_GeneralCfg)[r2], r2
	ld.w 0x00000000[r3], r5
	add r2, r5
	cmp r21, r5
	bl9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 863
	andi 0x000000FF, r20, r6
	jarl _DslInternal_P2ServerTimeout, r31
.BB.LABEL.19_5:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	add 0x00000001, r20
.BB.LABEL.19_6:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 852
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000014[r2], r2
	ld.bu 0x00000004[r2], r2
	andi 0x000000FF, r20, r5
	cmp r2, r5
	bl9 .BB.LABEL.19_1
.BB.LABEL.19_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 867
	dispose 0x00000004, 0x00000061, [r31]
_Dcm_GetUDSPhyPduID.1:
	.stack _Dcm_GetUDSPhyPduID.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 883
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 888
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 890
	ld.w 0x00000000[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 892
	ld.bu 0x00000004[r2], r2
	bz9 .BB.LABEL.20_10
.BB.LABEL.20_1:	; entry.bb84_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.20_9
.BB.LABEL.20_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 896
	andi 0x000000FF, r7, r8
	mul 0x00000024, r8, r0
	add r5, r8
	ld.bu 0x00000000[r8], r8
	cmp 0x00000003, r8
	bnz9 .BB.LABEL.20_8
.BB.LABEL.20_3:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 899
	zxb r7
	mul 0x00000024, r7, r0
	add r7, r5
	ld.w 0x0000001C[r5], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 902
	ld.w 0x00000010[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 903
	ld.bu 0x00000014[r2], r2
	mov 0x00000000, r7
	br9 .BB.LABEL.20_7
.BB.LABEL.20_4:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 905
	andi 0x000000FF, r7, r8
	mul 0x0000000C, r8, r0
	add r5, r8
	ld.w 0x00000004[r8], r8
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.20_6
.BB.LABEL.20_5:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 907
	zxb r7
	mul 0x0000000C, r7, r0
	add r7, r5
	ld.h 0x00000008[r5], r2
	st.h r2, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 908
	jmp [r31]
.BB.LABEL.20_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	add 0x00000001, r7
.BB.LABEL.20_7:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 903
	andi 0x000000FF, r7, r8
	cmp r2, r8
	bl9 .BB.LABEL.20_4
	br9 .BB.LABEL.20_10
.BB.LABEL.20_8:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	add 0x00000001, r7
.BB.LABEL.20_9:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 894
	andi 0x000000FF, r7, r8
	cmp r2, r8
	bl9 .BB.LABEL.20_2
.BB.LABEL.20_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 915
	jmp [r31]
_Dcm_BootloaderResponse.1:
	.stack _Dcm_BootloaderResponse.1 = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 931
	prepare 0x00000679, 0x00000014
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 935
	st.h r0, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 937
	st.b r0, 0x00000003[r3]
	st.b r0, 0x00000002[r3]
	st.b r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 940
	movhi HIGHW1(#_Dcm_ReqSetProgConditions), r0, r2
	ld.bu LOWW(#_Dcm_ReqSetProgConditions)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.21_5
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 942
	mov #_Dcm_ProgConditions, r7
	mov 0x00000001, r6
	jarl _Dcm_SetProgConditions, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 943
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 946
	jarl _SchM_Switch_DcmEcuReset, r31
	br9 .BB.LABEL.21_4
.BB.LABEL.21_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 949
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	movhi HIGHW1(#_Dcm_ReqSetProgConditions), r0, r2
	st.b r0, LOWW(#_Dcm_ReqSetProgConditions)[r2]
.BB.LABEL.21_5:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 959
	mov #_Dcm_ProgConditions, r6
	jarl _Dcm_GetProgConditions, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.21_8
.BB.LABEL.21_6:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 961
	movhi HIGHW1(#_Dcm_ProgConditions+0x00000006), r0, r2
	ld.bu LOWW(#_Dcm_ProgConditions+0x00000006)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.21_8
.BB.LABEL.21_7:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 0
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 963
	movhi HIGHW1(#_gAppl_UpdataOK_ResponseFlag), r0, r2
	st.b r20, LOWW(#_gAppl_UpdataOK_ResponseFlag)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 964
	movhi HIGHW1(#_Dcm_ProgConditions+0x00000006), r0, r2
	st.b r0, LOWW(#_Dcm_ProgConditions+0x00000006)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 967
	jarl _BswM_Dcm_ApplicationUpdated, r31
	movea 0x00000006, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 969
	jarl _Dcm_GetUDSPhyPduID.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 970
	st.h r0, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 971
	ld.hu 0x00000006[r3], r6
	movea 0x00000004, r3, r21
	mov 0x00000002, r22
	movea 0x00000008, r3, r23
	mov r23, r7
	mov r22, r8
	mov r21, r9
	jarl _Dcm_StartOfReception, r31
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 972
	st.b r2, 0x00000002[r3]
	movea 0xFFFFFF83, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 973
	st.b r2, 0x00000003[r3]
	movea 0x00000002, r3, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 974
	st.w r24, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 975
	st.h r22, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 976
	ld.hu 0x00000006[r3], r6
	mov r23, r7
	mov r21, r8
	jarl _Dcm_CopyRxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 977
	ld.hu 0x00000006[r3], r6
	mov 0x00000000, r25
	mov r25, r7
	jarl _Dcm_TpRxIndication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 979
	st.h r0, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 980
	ld.hu 0x00000006[r3], r6
	mov r23, r7
	mov r22, r8
	mov r21, r9
	jarl _Dcm_StartOfReception, r31
	movea 0x00000011, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 981
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 982
	st.b r20, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 983
	st.w r24, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 984
	st.h r22, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 985
	ld.hu 0x00000006[r3], r6
	mov r23, r7
	mov r21, r8
	jarl _Dcm_CopyRxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 986
	ld.hu 0x00000006[r3], r6
	mov r25, r7
	jarl _Dcm_TpRxIndication, r31
.BB.LABEL.21_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 989
	dispose 0x00000014, 0x00000679, [r31]
_DslInternal_InitDspProgramInfo:
	.stack _DslInternal_InitDspProgramInfo = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1045
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1047
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1048
	mov #_Dcm_DspProgram, r2
	st.w r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1049
	st.b r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1050
	st.b r0, 0x00000011[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1051
	st.b r0, 0x00000005[r2]
	mov 0xFFFFFFFF, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1052
	st.b r5, 0x00000006[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1053
	st.w r0, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1054
	st.w r0, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1055
	st.b r0, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1056
	st.w r0, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm.c", 1057
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
	.align 4
_DcmPbCfgPtr:
	.ds (4)
_gAppl_UpdataOK_ResponseFlag:
	.ds (1)
_Dcm_ReqSetProgConditions:
	.ds (1)
	.align 4
_Dcm_Timer:
	.ds (4)
	.section .bss, bss
	.align 4
_Dcm_MkCtrl:
	.ds (12)
	.align 2
_Dcm_ProgConditions:
	.ds (8)
	.align 4
_Dcm_DspProgram:
	.ds (24)
