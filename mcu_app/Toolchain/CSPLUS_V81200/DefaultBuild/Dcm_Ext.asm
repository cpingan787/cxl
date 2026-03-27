#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\Dcm_Ext.c -oDefaultBuild\Dcm_Ext.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_71c54229107645e8995060afda3e0288eadje50a.g2o
#@	compiled at Fri Mar 27 09:50:35 2026

	.file "..\..\Bsw\Communication\Common\Dcm\Dcm_Ext.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_GeneralCfg
	.extern _DcmPbCfgPtr
	.extern _Dcm_MkCtrl
	.extern _gAppl_UpdataOK_ResponseFlag
	.extern _Dcm_ReqSetProgConditions
	.extern _Dcm_ProgConditions
	.public _Dcm_VIN, 18
	.public _Dcm_RoutineControlState, 44
	.public _Dcm_CommCtrl, 12
	.public _Dcm_SecCtrl, 28
	.public _Dcm_SesCtrl, 24
	.public _Dcm_ProtocolCtrl, 28
	.public _Dcm_ChannelCtrl, 40
	.public _Dcm_MsgCtrl, 64
	.public _Dcm_ConnectionCtrl, 2
	.public _Dcm_Channel, 2048
	.public _Dcm_FunctionalMessage, 68
	.public _Dcm_OBDMessage, 66
	.public _Dcm_InterInit
	.extern _SchM_Enter_Dcm_ExclusiveArea
	.extern _SchM_Exit_Dcm_ExclusiveArea
	.public _Dcm_InterDemTriggerOnDTCStatus
	.public _Dcm_InterMainFunction
	.public _Dcm_MainFunction_Pending2A
	.public _DspInternal_DcmConfirmation_0x27
	.public _DspInternal_DcmConfirmation_0x10
	.extern _Dcm_SetProgConditions
	.extern _SchM_Switch_DcmEcuReset
	.public _DspInternal_DcmConfirmation_0x11
	.public _DsdInternal_ManufacturerIndication
	.public _DsdInternal_ManufacturerConfirmation
	.public _DsdInternal_SupplierIndication
	.public _DsdInternal_SupplierConfirmation
	.public _DsdInternal_SesCheck
	.public _DsdInternal_SubSesCheck
	.extern _DsdInternal_SearchSidTabServiceIndex
	.extern _DsdInternal_SearchSidTabSubServiceIndex
	.public _DsdInternal_DidSessionCheck
	.public _DsdInternal_SecurityCheck
	.public _DsdInternal_SubSecurityCheck
	.public _DsdInternal_DidSecurityCheck
	.public _DslInternal_SetSecurityAccessStatus
	.public _DslInternal_GetSecurityCfgBySecLevel
	.extern _DslInternal_InitDspProgramInfo
	.public _DslInternal_S3ServerStart
	.extern _Dcm_ResetTime
	.public _DslInternal_SesRefresh
	.public _DslInternal_InitConnectionCtrl
	.extern _DspInternalUDS0x28_CheckNewSes
	.public _DslInternal_InitProtocolCtrl
	.public _DslInternal_ProtocolStartSession
	.extern _SchM_Switch_DcmDiagnosticSessionControl
	.public _Dcm_GetChannelNum
	.public _Dcm_GetProtocolMsgNum
	.public _Dcm_RestartS3timer
	.public _Dcm_StopS3timer
	.public _Dcm_StartOfReception_GetLen
	.public _Dcm_InterStartOfReception
	.extern _Dcm_StartOfReception_Checklength
	.public _Dcm_CopyRxData_SessionDeal
	.public _Dcm_TpRxIndication_SetTxPduId
	.public _Dcm_CheckUDS0x86_TxConfirmation
	.public _Dcm_TxConfirmation_2A
	.public _Dcm_GetConnectionNum
	.public _Dcm_GetRxIdNum
	.public _Dcm_GetTxIdNum
	.extern _Dcm_GetTimeSpan
	.extern _ComM_DCM_ActiveDiagnostic
	.extern _Rte_EnableAllDtcsRecord
	.extern _ComM_DCM_InactiveDiagnostic
	.extern _DslInternal_ProtocolStop
	.public _Dcm_TpRxIndication_3E80

	.section .text, text
_Dcm_GetMainConnectionNum.1:
	.stack _Dcm_GetMainConnectionNum.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.h", 667
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.h", 670
	jmp [r31]
_DslInternal_SetProtocolLinkLayerTimer.1:
	.stack _DslInternal_SetProtocolLinkLayerTimer.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 630
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 640
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 641
	ld.w 0x00000014[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 646
	ld.bu 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 641
	ld.w 0x00000000[r2], r2
	mov 0x00000000, r8
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 650
	andi 0x000000FF, r8, r9
	mov r9, r10
	mul 0x00000024, r10, r0
	add r2, r10
	ld.hu 0x0000000A[r10], r11
	mov r6, r12
	sub r11, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 654
	cmp r6, r11
	cmov 0x00000009, r6, r12, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 660
	mul 0x0000001C, r9, r0
	mov #_Dcm_ProtocolCtrl, r12
	add r9, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 651
	ld.hu 0x0000000C[r10], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 660
	st.w r11, 0x00000004[r12]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 651
	mov r7, r10
	sub r9, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 658
	cmp r7, r9
	cmov 0x00000009, r7, r10, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 661
	st.w r9, 0x0000000C[r12]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 662
	st.w r0, 0x00000008[r12]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 663
	st.w r0, 0x00000010[r12]
	movea 0x00001388, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 664
	st.w r9, 0x00000014[r12]
	add 0x00000001, r8
.BB.LABEL.2_2:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 646
	andi 0x000000FF, r8, r9
	cmp r5, r9
	bl9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 666
	jmp [r31]
_Dcm_MemoryCopy.1:
	.stack _Dcm_MemoryCopy.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 685
	mov 0x00000000, r2
	br9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 690
	mov r6, r5
	add r2, r5
	ld.b 0x00000000[r5], r5
	mov r7, r9
	add r2, r9
	st.b r5, 0x00000000[r9]
	add 0x00000001, r2
.BB.LABEL.3_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 688
	cmp r8, r2
	bl9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 692
	jmp [r31]
_Dcm_ClassifyServiceType.1:
	.stack _Dcm_ClassifyServiceType.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 876
	cmp 0x0000000B, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 879
	bh9 .BB.LABEL.4_5
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.4_7[r6]
.SWITCH.LABEL.4_7:
	br9 .BB.LABEL.4_6
	br9 .BB.LABEL.4_6
	br9 .BB.LABEL.4_6
	br9 .BB.LABEL.4_2
	br9 .BB.LABEL.4_2
	br9 .BB.LABEL.4_2
	br9 .BB.LABEL.4_3
	br9 .BB.LABEL.4_3
	br9 .BB.LABEL.4_3
	br9 .BB.LABEL.4_4
	br9 .BB.LABEL.4_4
	br9 .BB.LABEL.4_4
.SWITCH.LABEL.4_7.END:
.BB.LABEL.4_2:	; switch_clause_bb4
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 889
	jmp [r31]
.BB.LABEL.4_3:	; switch_clause_bb5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 894
	jmp [r31]
.BB.LABEL.4_4:	; switch_clause_bb6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 899
	jmp [r31]
.BB.LABEL.4_5:	; switch_clause_bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 902
	jmp [r31]
.BB.LABEL.4_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 906
	jmp [r31]
_Dcm_MemSet.1:
	.stack _Dcm_MemSet.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 936
	br9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 941
	add 0xFFFFFFFF, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 942
	mov r6, r2
	add r8, r2
	st.b r7, 0x00000000[r2]
.BB.LABEL.5_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 939
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.5_1
.BB.LABEL.5_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Internal.h", 944
	jmp [r31]
_Dcm_InterInit:
	.stack _Dcm_InterInit = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 487
	prepare 0x00000479, 0x00000004
	mov 0x00000000, r20
	br9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 499
	andi 0x000000FF, r20, r6
	jarl _DslInternal_InitConnectionCtrl, r31
	add 0x00000001, r20
.BB.LABEL.6_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 497
	andi 0x0000FFFF, r20, r0
	bz9 .BB.LABEL.6_1
.BB.LABEL.6_3:	; bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 502
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	movea 0x00000800, r0, r8
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 503
	mov #_Dcm_Channel, r6
	mov r20, r7
	jarl _Dcm_MemSet.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 504
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 506
	jarl _DslInternal_InitSesCtrl.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 509
	jarl _DslInternal_InitSecCtrl.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 512
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	br9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 515
	andi 0x0000FFFF, r20, r2
	shl 0x00000002, r2
	mov #_Dcm_RoutineControlState, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	add 0x00000001, r20
.BB.LABEL.6_5:	; bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 513
	andi 0x0000FFFF, r20, r2
	cmp 0x0000000B, r2
	bl9 .BB.LABEL.6_4
.BB.LABEL.6_6:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 517
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 530
	movhi HIGHW1(#_Dcm_VIN+0x00000011), r0, r2
	st.b r0, LOWW(#_Dcm_VIN+0x00000011)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 532
	movhi HIGHW1(#_Dcm_GeneralCfg+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_GeneralCfg+0x00000004)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 533
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_18
.BB.LABEL.6_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 536
	ld.w 0x00000010[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 538
	ld.hu 0x0000000C[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 537
	movhi HIGHW1(#_Dcm_VIN+0x00000011), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Dcm_VIN+0x00000011)[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 540
	andi 0x0000FFFF, r2, r5
	mov #_Dcm_VIN, r6
	add r5, r6
	mov 0xFFFFFFFF, r5
	st.b r5, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.6_9:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 538
	andi 0x0000FFFF, r2, r5
	movea 0x00000011, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.6_8
.BB.LABEL.6_10:	; bb49.bb95_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r22
	mov r22, r23
	br9 .BB.LABEL.6_16
.BB.LABEL.6_11:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 544
	andi 0x0000FFFF, r23, r2
	shl 0x00000003, r2
	add r20, r2
	ld.w 0x00000004[r2], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 546
	ld.w 0x00000020[r24], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_15
.BB.LABEL.6_12:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 545
	andi 0x0000FFFF, r22, r5
	mov #_Dcm_VIN, r7
	add r5, r7
	movea 0x00000003, r3, r8
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 548
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 549
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_14
.BB.LABEL.6_13:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 551
	movhi HIGHW1(#_Dcm_VIN+0x00000011), r0, r24
	st.b r0, LOWW(#_Dcm_VIN+0x00000011)[r24]
	br9 .BB.LABEL.6_15
.BB.LABEL.6_14:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 555
	ld.h 0x00000034[r24], r2
	add r2, r22
.BB.LABEL.6_15:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	add 0x00000001, r23
.BB.LABEL.6_16:	; bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 542
	andi 0x0000FFFF, r23, r2
	cmp r21, r2
	bnc9 .BB.LABEL.6_18
.BB.LABEL.6_17:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	movhi HIGHW1(#_Dcm_VIN+0x00000011), r0, r2
	ld.bu LOWW(#_Dcm_VIN+0x00000011)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.6_11
.BB.LABEL.6_18:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 561
	dispose 0x00000004, 0x00000479, [r31]
_Dcm_InterDemTriggerOnDTCStatus:
	.stack _Dcm_InterDemTriggerOnDTCStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 581
	jmp [r31]
_Dcm_InterMainFunction:
	.stack _Dcm_InterMainFunction = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 606
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 610
	jarl _Dcm_MainFunction_S3Timer.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 614
	jarl _Dcm_MainFunction_SecTimer.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_MainFunction_Pending2A:
	.stack _Dcm_MainFunction_Pending2A = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 644
	jmp [r31]
_DspInternal_DcmConfirmation_0x27:
	.stack _DspInternal_DcmConfirmation_0x27 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 670
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 678
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 680
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	addi 0xFFFFFFD9, r2, r0
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_2:	; bb32
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	add 0xFFFFFFF0, r2
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_then_bb
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 684
	jarl _DslInternal_SetSecurityAccessStatus, r31
.BB.LABEL.10_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 686
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	addi 0xFFFFFFD9, r2, r0
	bnz9 .BB.LABEL.10_14
.BB.LABEL.10_5:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.10_7
.BB.LABEL.10_6:	; bb65
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	ld.w 0x00000008[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.10_14
.BB.LABEL.10_7:	; bb87
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_SecCtrl+0x00000004)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.10_14
.BB.LABEL.10_8:	; if_then_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 692
	mov #_Dcm_SecCtrl, r20
	ld.bu 0x00000003[r20], r6
	jarl _DslInternal_SetSecurityLevel.1, r31
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 693
	jarl _DslInternal_SetSecurityAccessStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 694
	ld.bu 0x00000002[r20], r6
	movea 0x00000003, r3, r7
	jarl _DslInternal_GetSecurityCfgBySecLevel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 695
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_14
.BB.LABEL.10_9:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 697
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 698
	mov #_Dcm_SecCtrl, r2
	st.b r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 699
	ld.bu 0x00000003[r3], r5
	shl 0x00000002, r5
	add r2, r5
	st.w r0, 0x00000010[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 700
	ld.bu 0x00000003[r3], r5
	add r5, r2
	st.b r0, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 701
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 702
	ld.bu 0x00000003[r3], r2
	mov r2, r5
	shl 0x00000005, r5
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r6
	ld.w LOWW(#_DcmPbCfgPtr)[r6], r6
	ld.w 0x00000008[r6], r6
	ld.w 0x00000054[r6], r6
	ld.w 0x00000000[r6], r6
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 703
	cmp 0x00000000, r5
	bz9 .BB.LABEL.10_14
.BB.LABEL.10_10:	; if_then_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 706
	mov r2, r5
	shl 0x00000005, r5
	add r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 708
	ld.bu 0x00000004[r5], r7
	cmp 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 706
	ld.w 0x00000018[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 708
	bnz9 .BB.LABEL.10_14
.BB.LABEL.10_11:	; bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 705
	shl 0x00000005, r2
	add r2, r6
	ld.w 0x0000001C[r6], r2
	cmp 0x00000000, r5
	bz9 .BB.LABEL.10_14
.BB.LABEL.10_12:	; bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	cmp 0x00000001, r2
	bh9 .BB.LABEL.10_14
.BB.LABEL.10_13:	; if_then_bb170
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 715
	mov #_Dcm_SecCtrl, r2
	ld.bu 0x00000014[r2], r6
	ld.bu 0x00000003[r3], r7
	add r7, r2
	ld.bu 0x00000001[r2], r7
	jarl [r5], r31
.BB.LABEL.10_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 726
	dispose 0x00000004, 0x00000041, [r31]
_DspInternal_DcmConfirmation_0x10:
	.stack _DspInternal_DcmConfirmation_0x10 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 742
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 752
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 754
	mov r2, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r6
	add r5, r6
	ld.w 0x00000008[r6], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 749
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000008[r5], r5
	ld.w 0x00000058[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 754
	ld.bu 0x00000004[r20], r21
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov r2, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r6
	add r5, r6
	ld.w 0x00000008[r6], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.11_14
.BB.LABEL.11_2:	; bb41
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	add 0xFFFFFFF0, r2
	bnz9 .BB.LABEL.11_14
.BB.LABEL.11_3:	; bb41.bb115_crit_edge
	mov 0x00000000, r22
	br9 .BB.LABEL.11_12
.BB.LABEL.11_4:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 759
	andi 0x000000FF, r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 760
	mul 0x0000000C, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 759
	ld.w 0x00000000[r20], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 760
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 761
	ld.bu 0x00000004[r5], r2
	movhi HIGHW1(#_Dcm_SesCtrl+0x00000001), r0, r6
	ld.bu LOWW(#_Dcm_SesCtrl+0x00000001)[r6], r6
	cmp r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 760
	ld.w 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 761
	bnz9 .BB.LABEL.11_11
.BB.LABEL.11_5:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 763
	cmp 0x00000004, r2
	bz9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.11_11
.BB.LABEL.11_7:	; if_then_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 765
	mov #_Dcm_ProgConditions, r7
	mov 0x00000000, r6
	jarl _Dcm_SetProgConditions, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 766
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_then_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 769
	jarl _SchM_Switch_DcmEcuReset, r31
	br9 .BB.LABEL.11_11
.BB.LABEL.11_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 771
	cmp 0x0000000A, r10
	bnz9 .BB.LABEL.11_11
.BB.LABEL.11_10:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 773
	movhi HIGHW1(#_Dcm_ReqSetProgConditions), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_Dcm_ReqSetProgConditions)[r2]
.BB.LABEL.11_11:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	add 0x00000001, r22
.BB.LABEL.11_12:	; bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 757
	andi 0x000000FF, r22, r2
	cmp r21, r2
	bl9 .BB.LABEL.11_4
.BB.LABEL.11_13:	; bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 783
	movhi HIGHW1(#_Dcm_SesCtrl+0x00000001), r0, r2
	ld.bu LOWW(#_Dcm_SesCtrl+0x00000001)[r2], r6
	jarl _DslInternal_SesRefresh, r31
.BB.LABEL.11_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 788
	dispose 0x00000000, 0x00000071, [r31]
_DspInternal_DcmConfirmation_0x11:
	.stack _DspInternal_DcmConfirmation_0x11 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 804
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 808
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 809
	mov r2, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r6
	add r5, r6
	ld.w 0x00000008[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov r2, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r6
	add r5, r6
	ld.w 0x00000008[r6], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_2:	; bb26
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	addi 0xFFFFFFEF, r2, r0
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 812
	movhi HIGHW1(#_gAppl_UpdataOK_ResponseFlag), r0, r2
	ld.bu LOWW(#_gAppl_UpdataOK_ResponseFlag)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 814
	movhi HIGHW1(#_gAppl_UpdataOK_ResponseFlag), r0, r2
	st.b r0, LOWW(#_gAppl_UpdataOK_ResponseFlag)[r2]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 815
	jarl _DslInternal_SesRefresh, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 820
	jarl _SchM_Switch_DcmEcuReset, r31
.BB.LABEL.12_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 826
	dispose 0x00000000, 0x00000001, [r31]
_DsdInternal_ManufacturerIndication:
	.stack _DsdInternal_ManufacturerIndication = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 844
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 932
	jmp [r31]
_DsdInternal_ManufacturerConfirmation:
	.stack _DsdInternal_ManufacturerConfirmation = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 948
	jmp [r31]
_DsdInternal_SupplierIndication:
	.stack _DsdInternal_SupplierIndication = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1003
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1089
	jmp [r31]
_DsdInternal_SupplierConfirmation:
	.stack _DsdInternal_SupplierConfirmation = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1105
	jmp [r31]
_DsdInternal_SesCheck:
	.stack _DsdInternal_SesCheck = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1157
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1164
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1165
	mul 0x0000000C, r6, r0
	add r6, r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1167
	mul 0x00000034, r7, r0
	add r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1170
	ld.bu 0x0000001C[r2], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1167
	ld.w 0x00000020[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1170
	bz9 .BB.LABEL.17_7
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1173
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1174
	ld.bu LOWW(#_Dcm_MkCtrl)[r6], r6
	mov 0x00000000, r7
	mov r7, r8
	br9 .BB.LABEL.17_3
.BB.LABEL.17_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1176
	andi 0x000000FF, r7, r9
	add r2, r9
	ld.bu 0x00000000[r9], r9
	cmp r9, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1178
	cmov 0x00000002, 0x00000001, r8, r8
	add 0x00000001, r7
.BB.LABEL.17_3:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1174
	andi 0x000000FF, r7, r9
	cmp r5, r9
	bnc9 .BB.LABEL.17_5
.BB.LABEL.17_4:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	andi 0x000000FF, r8, r0
	bz9 .BB.LABEL.17_2
.BB.LABEL.17_5:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1181
	andi 0x000000FF, r8, r0
	bnz9 .BB.LABEL.17_7
.BB.LABEL.17_6:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1184
	jmp [r31]
.BB.LABEL.17_7:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1188
	jmp [r31]
_DsdInternal_SubSesCheck:
	.stack _DsdInternal_SubSesCheck = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1205
	prepare 0x00000071, 0x00000008
	mov r6, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1219
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000000[r2], r22
	movea 0x00000004, r3, r9
	movea 0x00000006, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1223
	mov r7, r6
	mov r20, r7
	jarl _DsdInternal_SearchSidTabServiceIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1224
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1226
	ld.hu 0x00000004[r3], r8
	ld.hu 0x00000006[r3], r7
	movea 0x00000002, r3, r9
	mov r20, r6
	jarl _DsdInternal_SearchSidTabSubServiceIndex, r31
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1232
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_11
.BB.LABEL.18_3:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1234
	ld.hu 0x00000006[r3], r2
	mul 0x0000000C, r2, r0
	add r2, r22
	ld.w 0x00000004[r22], r2
	ld.hu 0x00000004[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1235
	mov r5, r6
	mul 0x00000034, r6, r0
	add r2, r6
	ld.bu 0x00000024[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1236
	cmp 0x00000000, r6
	bz9 .BB.LABEL.18_11
.BB.LABEL.18_4:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1238
	mul 0x00000034, r5, r0
	add r5, r2
	ld.w 0x00000028[r2], r2
	ld.hu 0x00000002[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1239
	mov r5, r6
	mul 0x00000024, r6, r0
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1240
	ld.bu 0x00000018[r6], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.18_11
.BB.LABEL.18_5:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1243
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1244
	ld.bu LOWW(#_Dcm_MkCtrl)[r7], r7
	mov 0x00000000, r8
	mov r8, r9
	br9 .BB.LABEL.18_7
.BB.LABEL.18_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1246
	mov r5, r11
	mul 0x00000024, r11, r0
	add r2, r11
	ld.w 0x00000014[r11], r11
	andi 0x000000FF, r8, r12
	add r12, r11
	ld.bu 0x00000000[r11], r11
	cmp r11, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1248
	cmov 0x00000002, 0x00000001, r9, r9
	add 0x00000001, r8
.BB.LABEL.18_7:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1244
	andi 0x000000FF, r8, r11
	cmp r6, r11
	bnc9 .BB.LABEL.18_9
.BB.LABEL.18_8:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	andi 0x000000FF, r9, r0
	bz9 .BB.LABEL.18_6
.BB.LABEL.18_9:	; bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1251
	andi 0x000000FF, r9, r0
	bnz9 .BB.LABEL.18_11
.BB.LABEL.18_10:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000001, r10
.BB.LABEL.18_11:	; if_break_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1259
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.18_13
.BB.LABEL.18_12:	; if_then_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	movea 0x0000007E, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1262
	st.b r2, 0x00000000[r21]
.BB.LABEL.18_13:	; if_break_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1265
	dispose 0x00000008, 0x00000071, [r31]
_DsdInternal_DidSessionCheck:
	.stack _DsdInternal_DidSessionCheck = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1283
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1291
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000038[r2], r2
	shl 0x00000004, r6
	add r6, r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1292
	cmp 0x00000000, r2
	bz9 .BB.LABEL.19_7
.BB.LABEL.19_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1301
	ld.bu 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.19_8
.BB.LABEL.19_2:	; if_else_bb.bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r6
	mov r6, r8
	br9 .BB.LABEL.19_4
.BB.LABEL.19_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1305
	ld.w 0x0000000C[r2], r9
	andi 0x000000FF, r6, r10
	add r10, r9
	ld.bu 0x00000000[r9], r9
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r10
	ld.bu LOWW(#_Dcm_MkCtrl)[r10], r10
	cmp r9, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1307
	cmov 0x00000002, 0x00000001, r8, r8
	add 0x00000001, r6
.BB.LABEL.19_4:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1303
	andi 0x000000FF, r6, r9
	cmp r5, r9
	bnc9 .BB.LABEL.19_6
.BB.LABEL.19_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	andi 0x000000FF, r8, r0
	bz9 .BB.LABEL.19_3
.BB.LABEL.19_6:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1310
	andi 0x000000FF, r8, r0
	bnz9 .BB.LABEL.19_8
.BB.LABEL.19_7:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	movea 0x00000031, r0, r2
	st.b r2, 0x00000000[r7]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1319
	jmp [r31]
.BB.LABEL.19_8:	; if_break_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1319
	jmp [r31]
_DsdInternal_SecurityCheck:
	.stack _DsdInternal_SecurityCheck = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1341
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1348
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1349
	mul 0x0000000C, r6, r0
	add r6, r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1352
	mov r7, r5
	mul 0x00000034, r5, r0
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1353
	ld.bu 0x00000014[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.20_7
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1355
	mul 0x00000034, r7, r0
	add r7, r2
	ld.w 0x00000018[r2], r2
	mov 0x00000000, r6
	mov r6, r7
	br9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1358
	andi 0x000000FF, r6, r8
	add r2, r8
	ld.bu 0x00000000[r8], r8
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000001), r0, r9
	ld.bu LOWW(#_Dcm_MkCtrl+0x00000001)[r9], r9
	cmp r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1360
	cmov 0x00000002, 0x00000001, r7, r7
	add 0x00000001, r6
.BB.LABEL.20_3:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1356
	andi 0x000000FF, r6, r8
	cmp r5, r8
	bnc9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	andi 0x000000FF, r7, r0
	bz9 .BB.LABEL.20_2
.BB.LABEL.20_5:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1363
	andi 0x000000FF, r7, r0
	bnz9 .BB.LABEL.20_7
.BB.LABEL.20_6:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1366
	jmp [r31]
.BB.LABEL.20_7:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1370
	jmp [r31]
_DsdInternal_SubSecurityCheck:
	.stack _DsdInternal_SubSecurityCheck = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1387
	prepare 0x00000061, 0x00000008
	mov r6, r20
	mov r8, r21
	movea 0x00000004, r3, r9
	movea 0x00000006, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1405
	mov r7, r6
	mov r20, r7
	jarl _DsdInternal_SearchSidTabServiceIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1406
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1408
	ld.hu 0x00000004[r3], r8
	ld.hu 0x00000006[r3], r7
	movea 0x00000002, r3, r9
	mov r20, r6
	jarl _DsdInternal_SearchSidTabSubServiceIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1413
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_2:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1415
	ld.hu 0x00000006[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1416
	mul 0x0000000C, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1415
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	ld.w 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1416
	add r2, r5
	ld.w 0x00000004[r5], r2
	ld.hu 0x00000004[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1419
	mov r5, r6
	mul 0x00000034, r6, r0
	add r2, r6
	ld.bu 0x00000024[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1420
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1418
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000001), r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1420
	ld.bu LOWW(#_Dcm_MkCtrl+0x00000001)[r6], r6
	bz9 .BB.LABEL.21_10
.BB.LABEL.21_3:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1422
	mul 0x00000034, r5, r0
	add r5, r2
	ld.w 0x00000028[r2], r2
	ld.hu 0x00000002[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1423
	mov r5, r7
	mul 0x00000024, r7, r0
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1424
	ld.bu 0x00000010[r7], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.21_10
.BB.LABEL.21_4:	; if_then_bb55.bb87_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r8
	mov r8, r9
	br9 .BB.LABEL.21_6
.BB.LABEL.21_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1428
	mov r5, r11
	mul 0x00000024, r11, r0
	add r2, r11
	ld.w 0x0000000C[r11], r11
	andi 0x000000FF, r8, r12
	add r12, r11
	ld.bu 0x00000000[r11], r11
	cmp r11, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1430
	cmov 0x00000002, 0x00000001, r9, r9
	add 0x00000001, r8
.BB.LABEL.21_6:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1426
	andi 0x000000FF, r8, r11
	cmp r7, r11
	bnc9 .BB.LABEL.21_8
.BB.LABEL.21_7:	; bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	andi 0x000000FF, r9, r0
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_8:	; bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1433
	andi 0x000000FF, r9, r0
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_9:	; if_then_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000001, r10
.BB.LABEL.21_10:	; if_break_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1442
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.21_12
.BB.LABEL.21_11:	; if_then_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	movea 0x00000033, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1445
	st.b r2, 0x00000000[r21]
.BB.LABEL.21_12:	; if_break_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1448
	dispose 0x00000008, 0x00000061, [r31]
_DsdInternal_DidSecurityCheck:
	.stack _DsdInternal_DidSecurityCheck = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1502
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1510
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000038[r2], r2
	shl 0x00000004, r6
	add r6, r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1511
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_3
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	movea 0x00000031, r0, r2
.BB.LABEL.22_2:	; if_then_bb
	st.b r2, 0x00000000[r7]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1539
	jmp [r31]
.BB.LABEL.22_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1520
	ld.bu 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.22_10
.BB.LABEL.22_4:	; if_else_bb.bb46_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r6
	mov r6, r8
	br9 .BB.LABEL.22_6
.BB.LABEL.22_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1524
	ld.w 0x00000004[r2], r9
	andi 0x000000FF, r6, r10
	add r10, r9
	ld.bu 0x00000000[r9], r9
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000001), r0, r10
	ld.bu LOWW(#_Dcm_MkCtrl+0x00000001)[r10], r10
	cmp r9, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1526
	cmov 0x00000002, 0x00000001, r8, r8
	add 0x00000001, r6
.BB.LABEL.22_6:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1522
	andi 0x000000FF, r6, r9
	cmp r5, r9
	bnc9 .BB.LABEL.22_8
.BB.LABEL.22_7:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	andi 0x000000FF, r8, r0
	bz9 .BB.LABEL.22_5
.BB.LABEL.22_8:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1529
	andi 0x000000FF, r8, r0
	bnz9 .BB.LABEL.22_10
.BB.LABEL.22_9:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	movea 0x00000033, r0, r2
	br9 .BB.LABEL.22_2
.BB.LABEL.22_10:	; if_break_bb75
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1539
	jmp [r31]
_DslInternal_SetSecurityLevel.1:
	.stack _DslInternal_SetSecurityLevel.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1641
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1643
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1644
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000002), r0, r2
	st.b r20, LOWW(#_Dcm_SecCtrl+0x00000002)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1645
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000001), r0, r2
	st.b r20, LOWW(#_Dcm_MkCtrl+0x00000001)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1646
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1657
	jarl _DslInternal_InitDspProgramInfo, r31
	dispose 0x00000000, 0x00000041, [r31]
_DslInternal_SetSecurityAccessStatus:
	.stack _DslInternal_SetSecurityAccessStatus = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1674
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000004), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1677
	st.w r6, LOWW(#_Dcm_SecCtrl+0x00000004)[r2]
	jmp [r31]
_DslInternal_GetSecurityCfgBySecLevel:
	.stack _DslInternal_GetSecurityCfgBySecLevel = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1695
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1699
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000054[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1701
	ld.w 0x00000000[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1703
	ld.bu 0x00000004[r2], r2
	mov 0x00000001, r10
	mov 0x00000000, r8
	br9 .BB.LABEL.25_4
.BB.LABEL.25_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1705
	andi 0x000000FF, r8, r9
	shl 0x00000005, r9
	add r5, r9
	ld.bu 0x00000000[r9], r9
	cmp r9, r6
	bnz9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1707
	st.b r8, 0x00000000[r7]
	mov 0x00000000, r10
.BB.LABEL.25_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	add 0x00000001, r8
.BB.LABEL.25_4:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1703
	andi 0x000000FF, r8, r9
	cmp r2, r9
	bnc9 .BB.LABEL.25_6
.BB.LABEL.25_5:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	andi 0x000000FF, r10, r9
	cmp 0x00000001, r9
	bz9 .BB.LABEL.25_1
.BB.LABEL.25_6:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1712
	zxb r10
	jmp [r31]
_DslInternal_S3ServerStart:
	.stack _DslInternal_S3ServerStart = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1730
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1732
	mov #_Dcm_SesCtrl, r21
	addi 0x00000004, r21, r6
	jarl _Dcm_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1733
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	movea 0x00001388, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1734
	st.w r2, 0x00000008[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1735
	st.w r0, 0x0000000C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1736
	st.b r20, 0x00000010[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1737
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	dispose 0x00000000, 0x00000061, [r31]
_DslInternal_S3ServerStop.1:
	.stack _DslInternal_S3ServerStop.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1756
	movhi HIGHW1(#_Dcm_SesCtrl+0x0000000C), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Dcm_SesCtrl+0x0000000C)[r2]
	jmp [r31]
_DslInternal_SesRefresh:
	.stack _DslInternal_SesRefresh = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1773
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1775
	jarl _DslInternal_SesTranslation.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1786
	mov r20, r6
	jarl _DspInternalUDS0x28_CheckNewSes, r31
	dispose 0x00000000, 0x00000041, [r31]
_DslInternal_InitConnectionCtrl:
	.stack _DslInternal_InitConnectionCtrl = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1805
	prepare 0x00000041, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1807
	bnz9 .BB.LABEL.29_2
.BB.LABEL.29_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1809
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1810
	add r20, r20
	mov #_Dcm_ConnectionCtrl, r2
	add r20, r2
	mov 0xFFFFFFFF, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1811
	st.b r0, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1812
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
.BB.LABEL.29_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1814
	dispose 0x00000000, 0x00000041, [r31]
_DslInternal_InitProtocolCtrl:
	.stack _DslInternal_InitProtocolCtrl = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1830
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1834
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000058[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1836
	ld.w 0x00000000[r2], r5
	mov 0x00000000, r7
	br9 .BB.LABEL.30_4
.BB.LABEL.30_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1840
	andi 0x000000FF, r7, r8
	mul 0x0000000C, r8, r0
	add r5, r8
	ld.bu 0x00000004[r8], r8
	cmp 0x00000001, r8
	bnz9 .BB.LABEL.30_3
.BB.LABEL.30_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1843
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r6
	add r2, r6
	zxb r7
	mul 0x0000000C, r7, r0
	add r7, r5
	ld.hu 0x00000006[r5], r2
	st.w r2, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1844
	ld.hu 0x00000008[r5], r2
	st.w r2, 0x0000000C[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1845
	jmp [r31]
.BB.LABEL.30_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	add 0x00000001, r7
.BB.LABEL.30_4:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1838
	andi 0x000000FF, r7, r8
	ld.bu 0x00000004[r2], r9
	cmp r9, r8
	bl9 .BB.LABEL.30_1
.BB.LABEL.30_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1851
	jmp [r31]
_DslInternal_ProtocolStartSession:
	.stack _DslInternal_ProtocolStartSession = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1867
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1870
	movhi HIGHW1(#_Dcm_SesCtrl+0x00000001), r0, r2
	st.b r6, LOWW(#_Dcm_SesCtrl+0x00000001)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1871
	jarl _DslInternal_SesRefresh, r31
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1872
	jarl _SchM_Switch_DcmDiagnosticSessionControl, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_GetChannelNum:
	.stack _Dcm_GetChannelNum = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1890
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1893
	jmp [r31]
_Dcm_GetProtocolMsgNum:
	.stack _Dcm_GetProtocolMsgNum = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1909
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1912
	jmp [r31]
_Dcm_RestartS3timer:
	.stack _Dcm_RestartS3timer = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1928
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1933
	jarl _Dcm_GetProtocolMsgNum, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1935
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r2
	ld.bu LOWW(#_Dcm_MkCtrl)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.34_7
.BB.LABEL.34_1:	; entry.bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.34_3
.BB.LABEL.34_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1940
	andi 0x000000FF, r5, r6
	shl 0x00000006, r6
	mov #_Dcm_MsgCtrl, r7
	add r6, r7
	ld.w 0x00000038[r7], r6
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1942
	cmov 0x0000000A, 0x00000001, r2, r2
	add 0x00000001, r5
.BB.LABEL.34_3:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1938
	andi 0x000000FF, r5, r6
	cmp r10, r6
	bnc9 .BB.LABEL.34_5
.BB.LABEL.34_4:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.34_2
.BB.LABEL.34_5:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1945
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.34_7
.BB.LABEL.34_6:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1948
	mov r20, r6
	jarl _DslInternal_S3ServerStart, r31
.BB.LABEL.34_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1952
	dispose 0x00000000, 0x00000041, [r31]
_Dcm_StopS3timer:
	.stack _Dcm_StopS3timer = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1968
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1973
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r2
	ld.bu LOWW(#_Dcm_MkCtrl)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.35_2
.BB.LABEL.35_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1976
	jarl _DslInternal_S3ServerStop.1, r31
.BB.LABEL.35_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1979
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_StartOfReception_GetLen:
	.stack _Dcm_StartOfReception_GetLen = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1996
	cmp 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2000
	bnz9 .BB.LABEL.36_2
.BB.LABEL.36_1:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 1999
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2004
	ld.w 0x00000004[r2], r2
	mulh 0x0000000C, r7
	add r7, r2
	ld.w 0x00000004[r2], r10
	jmp [r31]
.BB.LABEL.36_2:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2017
	jmp [r31]
_Dcm_InterStartOfReception:
	.stack _Dcm_InterStartOfReception = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2043
	prepare 0x000007FF, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2058
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2060
	ld.w 0x0000000C[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2063
	mov r20, r6
	mul 0x0000000C, r6, r0
	add r6, r5
	ld.bu 0x00000000[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2064
	mov r24, r6
	shl 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2059
	ld.w 0x00000010[r2], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2064
	add r6, r7
	ld.bu 0x00000000[r7], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2066
	mulhi 0x00000024, r25, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2058
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2066
	ld.w 0x00000014[r2], r7
	ld.w 0x00000000[r7], r7
	add r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2071
	ld.bu 0x00000000[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2068
	ld.w 0x00000004[r5], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2066
	ld.w 0x00000010[r7], r5
	ld.bu 0x00000000[r5], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2070
	ld.w 0x00000004[r2], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2071
	jarl _Dcm_ClassifyServiceType.1, r31
	mov r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2078
	mov r20, r6
	mov r21, r7
	mov r22, r8
	mov r23, r9
	jarl _Dcm_StartOfReception_Checklength, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2079
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.37_16
.BB.LABEL.37_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2081
	mulhi 0x0000000C, r27, r2
	add r2, r28
	ld.w 0x00000008[r28], r20
	add 0x00000008, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2082
	cmp 0x00000000, r21
	bz9 .BB.LABEL.37_11
.BB.LABEL.37_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	ld.hu 0x00000008[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.37_11
.BB.LABEL.37_3:	; if_then_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2084
	cmp 0x00000001, r26
	bnz9 .BB.LABEL.37_9
.BB.LABEL.37_4:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2086
	cmp 0x00000000, r29
	bz9 .BB.LABEL.37_8
.BB.LABEL.37_5:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	cmp 0x00000001, r29
	bnz9 .BB.LABEL.37_11
.BB.LABEL.37_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2090
	mov #_Dcm_FunctionalMessage, r23
.BB.LABEL.37_7:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	ld.hu 0x00000008[r21], r8
	ld.w 0x00000000[r21], r6
	addi 0x00000002, r23, r7
	jarl _Dcm_MemoryCopy.1, r31
	ld.h 0x00000008[r21], r2
	st.h r2, 0x00000000[r23]
	br9 .BB.LABEL.37_10
.BB.LABEL.37_8:	; switch_clause_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2098
	mov #_Dcm_OBDMessage, r23
	br9 .BB.LABEL.37_7
.BB.LABEL.37_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2114
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2115
	mulhi 0x00000014, r27, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2116
	ld.hu 0x00000008[r21], r8
	ld.w 0x00000000[r21], r6
	mov #_Dcm_Channel, r7
	add r20, r7
	jarl _Dcm_MemoryCopy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2117
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2118
	ld.hu 0x00000008[r21], r2
	add r2, r20
.BB.LABEL.37_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r10
.BB.LABEL.37_11:	; if_break_bb158
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2137
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2138
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.37_13
.BB.LABEL.37_12:	; if_then_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2140
	shl 0x00000006, r25
	mov #_Dcm_MsgCtrl, r21
	add r25, r21
	st.w r22, 0x00000010[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2141
	ld.w 0x00000000[r28], r2
	mov #_Dcm_Channel, r5
	add r2, r5
	st.w r5, 0x0000000C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2142
	mulhi 0x00000014, r27, r21
	mov #_Dcm_ChannelCtrl, r2
	add r21, r2
	st.w r20, 0x00000004[r2]
	br9 .BB.LABEL.37_15
.BB.LABEL.37_13:	; if_else_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2146
	cmp 0x00000000, r21
	bz9 .BB.LABEL.37_15
.BB.LABEL.37_14:	; if_then_bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2148
	ld.h 0x00000008[r21], r2
	movhi HIGHW1(#_Dcm_FunctionalMessage), r0, r5
	st.h r2, LOWW(#_Dcm_FunctionalMessage)[r5]
.BB.LABEL.37_15:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2151
	add r24, r24
	mov #_Dcm_ConnectionCtrl, r2
	add r24, r2
	mov 0x00000001, r5
	st.b r5, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2152
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	mov r23, r10
.BB.LABEL.37_16:	; if_break_bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2172
	dispose 0x00000000, 0x000007FF, [r31]
_Dcm_CopyRxData_SessionDeal:
	.stack _Dcm_CopyRxData_SessionDeal = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2201
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2210
	cmp 0x00000000, r7
	ld.w 0x00000018[r3], r20
	mov r9, r21
	mov r8, r22
	mov r6, r23
	bz9 .BB.LABEL.38_4
.BB.LABEL.38_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	cmp 0x00000001, r7
	bz9 .BB.LABEL.38_3
.BB.LABEL.38_2:	; entry.switch_break_bb_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.38_6
.BB.LABEL.38_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2214
	mov #_Dcm_FunctionalMessage, r24
	ld.hu 0x00000000[r24], r2
	ld.hu 0x00000008[r23], r8
	ld.w 0x00000000[r23], r6
	addi 0x00000002, r24, r7
	add r2, r7
	jarl _Dcm_MemoryCopy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2218
	ld.h 0x00000000[r24], r2
	ld.h 0x00000008[r23], r23
	add r23, r2
	st.h r2, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2219
	ld.b 0x00000002[r24], r23
	st.b r23, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2220
	ld.b 0x00000003[r24], r23
	st.b r23, 0x00000000[r21]
	br9 .BB.LABEL.38_5
.BB.LABEL.38_4:	; switch_clause_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2225
	mov #_Dcm_OBDMessage, r24
	ld.hu 0x00000000[r24], r7
	ld.hu 0x00000008[r23], r8
	ld.w 0x00000000[r23], r6
	add r24, r7
	add 0x00000002, r7
	jarl _Dcm_MemoryCopy.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2226
	ld.h 0x00000000[r24], r2
	ld.h 0x00000008[r23], r5
	add r5, r2
	st.h r2, 0x00000000[r24]
.BB.LABEL.38_5:	; switch_clause_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r10
.BB.LABEL.38_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2236
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	ld.w 0x00000038[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.38_11
.BB.LABEL.38_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	ld.bu 0x00000000[r22], r2
	addi 0xFFFFFFC2, r2, r0
	bnz9 .BB.LABEL.38_10
.BB.LABEL.38_8:	; bb64
	ld.bu 0x00000000[r21], r2
	addi 0xFFFFFF80, r2, r0
	bnz9 .BB.LABEL.38_10
.BB.LABEL.38_9:	; bb75
	movhi HIGHW1(#_Dcm_FunctionalMessage), r0, r2
	ld.hu LOWW(#_Dcm_FunctionalMessage)[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.38_11
.BB.LABEL.38_10:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2241
	mov #_Dcm_FunctionalMessage, r2
	st.h r0, 0x00000000[r2]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2242
	st.b r10, 0x00000042[r2]
.BB.LABEL.38_11:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2247
	dispose 0x00000000, 0x00000479, [r31]
_Dcm_TpRxIndication_SetTxPduId:
	.stack _Dcm_TpRxIndication_SetTxPduId = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2268
	shl 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2274
	mov #_Dcm_MsgCtrl, r2
	add r6, r2
	ld.w 0x00000004[r7], r5
	ld.w 0x00000018[r5], r5
	ld.h 0x00000004[r5], r5
	st.h r5, 0x00000004[r2]
	jmp [r31]
_Dcm_CheckUDS0x86_TxConfirmation:
	.stack _Dcm_CheckUDS0x86_TxConfirmation = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2293
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2303
	jmp [r31]
_Dcm_TxConfirmation_2A:
	.stack _Dcm_TxConfirmation_2A = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2324
	jmp [r31]
_Dcm_GetConnectionNum:
	.stack _Dcm_GetConnectionNum = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2399
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2402
	jmp [r31]
_Dcm_GetRxIdNum:
	.stack _Dcm_GetRxIdNum = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2771
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2774
	jmp [r31]
_Dcm_GetTxIdNum:
	.stack _Dcm_GetTxIdNum = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2790
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2793
	jmp [r31]
_Dcm_MainFunction_S3Timer.1:
	.stack _Dcm_MainFunction_S3Timer.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2813
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2820
	movhi HIGHW1(#_Dcm_SesCtrl+0x0000000C), r0, r2
	ld.w LOWW(#_Dcm_SesCtrl+0x0000000C)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.45_3
.BB.LABEL.45_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2822
	mov #_Dcm_SesCtrl, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2823
	ld.w 0x00000008[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2822
	ld.w 0x00000004[r2], r6
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2824
	jarl _Dcm_GetTimeSpan, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2825
	ld.w 0x00000000[r3], r2
	cmp r20, r2
	bl9 .BB.LABEL.45_3
.BB.LABEL.45_2:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2828
	jarl _DslInternal_S3ServerTimeout.1, r31
.BB.LABEL.45_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2831
	dispose 0x00000004, 0x00000041, [r31]
_Dcm_MainFunction_SecTimer.1:
	.stack _Dcm_MainFunction_SecTimer.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2849
	prepare 0x00000079, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2860
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000015), r0, r2
	tst1 0x00000001, LOWW(#_Dcm_SecCtrl+0x00000015)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2857
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000054[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2860
	bz9 .BB.LABEL.46_2
.BB.LABEL.46_1:	; entry.bb124_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.46_11
.BB.LABEL.46_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2862
	jarl _Dcm_MainFunction_ReadSecTimer.1, r31
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.46_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2869
	andi 0x000000FF, r21, r2
	shl 0x00000002, r2
	mov #_Dcm_SecCtrl, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	cmp 0x00000001, r2
	movea 0x00000010, r5, r22
	bnz9 .BB.LABEL.46_10
.BB.LABEL.46_4:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2871
	andi 0x000000FF, r21, r2
	shl 0x00000002, r2
	mov #_Dcm_SecCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2872
	ld.w 0x0000000C[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2871
	ld.w 0x00000008[r5], r6
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2873
	jarl _Dcm_GetTimeSpan, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2874
	ld.w 0x00000000[r3], r2
	cmp r23, r2
	bl9 .BB.LABEL.46_10
.BB.LABEL.46_5:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2877
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2878
	st.w r0, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2880
	andi 0x000000FF, r21, r22
	mov #_Dcm_SecCtrl, r2
	mov r2, r23
	add r22, r23
	st.b r0, 0x00000001[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2881
	st.b r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2882
	st.w r0, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2883
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2880
	add 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2884
	mov r22, r2
	shl 0x00000005, r2
	ld.w 0x00000000[r20], r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2885
	cmp 0x00000000, r2
	bz9 .BB.LABEL.46_10
.BB.LABEL.46_6:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2888
	mov r22, r2
	shl 0x00000005, r2
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2890
	ld.bu 0x00000004[r2], r6
	cmp 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2888
	ld.w 0x00000018[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2890
	bnz9 .BB.LABEL.46_10
.BB.LABEL.46_7:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2887
	shl 0x00000005, r22
	add r22, r5
	ld.w 0x0000001C[r5], r5
	cmp 0x00000000, r2
	bz9 .BB.LABEL.46_10
.BB.LABEL.46_8:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	cmp 0x00000001, r5
	bh9 .BB.LABEL.46_10
.BB.LABEL.46_9:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2896
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000014), r0, r5
	ld.bu LOWW(#_Dcm_SecCtrl+0x00000014)[r5], r6
	ld.bu 0x00000000[r23], r7
	jarl [r2], r31
.BB.LABEL.46_10:	; if_break_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	add 0x00000001, r21
.BB.LABEL.46_11:	; bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2867
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.46_3
.BB.LABEL.46_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2906
	dispose 0x00000004, 0x00000079, [r31]
_Dcm_MainFunction_ReadSecTimer.1:
	.stack _Dcm_MainFunction_ReadSecTimer.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2922
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2934
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000016), r0, r2
	ld.bu LOWW(#_Dcm_SecCtrl+0x00000016)[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2925
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000054[r2], r2
	ld.w 0x00000000[r2], r21
	br9 .BB.LABEL.47_12
.BB.LABEL.47_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2937
	ld.bu 0x00000004[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.47_10
.BB.LABEL.47_2:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	ld.w 0x0000001C[r21], r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.47_10
.BB.LABEL.47_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2941
	ld.w 0x00000014[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.47_11
.BB.LABEL.47_4:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2944
	mov #_Dcm_SecCtrl, r22
	ld.b 0x00000015[r22], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2948
	andi 0x000000FF, r20, r23
	add r22, r23
	add 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2946
	shr 0x00000002, r5
	andi 0x00000001, r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2948
	mov r23, r7
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2949
	cmp 0x0000000A, r10
	ld.bu 0x00000015[r22], r2
	bnz9 .BB.LABEL.47_6
.BB.LABEL.47_5:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2951
	ori 0x00000004, r2, r2
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000015), r0, r20
	st.b r2, LOWW(#_Dcm_SecCtrl+0x00000015)[r20]
	br9 .BB.LABEL.47_14
.BB.LABEL.47_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2956
	andi 0x000000FB, r2, r2
	mov #_Dcm_SecCtrl, r5
	st.b r2, 0x00000015[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2957
	ld.b 0x00000016[r5], r2
	add 0x00000001, r2
	st.b r2, 0x00000016[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2959
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.47_8
.BB.LABEL.47_7:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2961
	ld.b 0x00000005[r21], r2
	st.b r2, 0x00000000[r23]
.BB.LABEL.47_8:	; if_break_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2963
	ld.bu 0x00000000[r23], r2
	ld.bu 0x00000005[r21], r5
	cmp r5, r2
	bl9 .BB.LABEL.47_11
.BB.LABEL.47_9:	; if_then_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2965
	andi 0x000000FF, r20, r2
	shl 0x00000002, r2
	mov #_Dcm_SecCtrl, r22
	add r2, r22
	addi 0x00000008, r22, r6
	jarl _Dcm_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2966
	ld.hu 0x00000006[r21], r2
	ld.hu 0x00000008[r21], r5
	cmp r5, r2
	cmov 0x0000000B, r2, r5, r2
	zxh r2
	st.w r2, 0x0000000C[r22]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2970
	st.w r2, 0x00000010[r22]
	br9 .BB.LABEL.47_11
.BB.LABEL.47_10:	; if_else_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2976
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000016), r0, r2
	ld.b LOWW(#_Dcm_SecCtrl+0x00000016)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_Dcm_SecCtrl+0x00000016)[r2]
.BB.LABEL.47_11:	; if_break_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2978
	add 0x00000001, r20
	movea 0x00000020, r21, r21
.BB.LABEL.47_12:	; bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2934
	cmp 0x00000000, r21
	bz9 .BB.LABEL.47_14
.BB.LABEL.47_13:	; bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.47_1
.BB.LABEL.47_14:	; bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2980
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000016), r0, r2
	ld.bu LOWW(#_Dcm_SecCtrl+0x00000016)[r2], r7
	cmp 0x00000001, r7
	bz9 .BB.LABEL.47_21
.BB.LABEL.47_15:	; if_else_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2990
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000054[r2], r2
	ld.w 0x00000000[r2], r20
	mov r7, r2
	shl 0x00000005, r2
	add r2, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2991
	ld.w 0x00000014[r20], r2
	mov #_Dcm_SecCtrl, r21
	add r21, r7
	add 0x00000001, r7
	mov 0x00000002, r6
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2993
	ld.bu 0x00000016[r21], r21
	br9 .BB.LABEL.47_20
.BB.LABEL.47_16:	; bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2995
	ld.bu 0x00000004[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.47_19
.BB.LABEL.47_17:	; bb213
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	ld.w 0x0000001C[r20], r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.47_19
.BB.LABEL.47_18:	; if_then_bb240
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2999
	andi 0x000000FF, r21, r2
	mov #_Dcm_SecCtrl, r22
	mov r2, r5
	add r22, r5
	ld.b 0x00000005[r20], r6
	st.b r6, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3000
	shl 0x00000002, r2
	add r2, r22
	addi 0x00000008, r22, r6
	jarl _Dcm_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3001
	ld.hu 0x00000006[r20], r2
	ld.hu 0x00000008[r20], r5
	cmp r5, r2
	cmov 0x0000000B, r2, r5, r2
	zxh r2
	st.w r2, 0x0000000C[r22]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3005
	st.w r2, 0x00000010[r22]
.BB.LABEL.47_19:	; if_break_bb281
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3007
	add 0x00000001, r21
	movea 0x00000020, r20, r20
.BB.LABEL.47_20:	; bb286
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 2993
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.47_16
.BB.LABEL.47_21:	; bb292
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000015), r0, r2
	set1 0x00000001, LOWW(#_Dcm_SecCtrl+0x00000015)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3011
	dispose 0x00000000, 0x00000079, [r31]
_DslInternal_InitSecCtrl.1:
	.stack _DslInternal_InitSecCtrl.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3258
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3260
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3261
	mov #_Dcm_SecCtrl, r2
	st.b r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3262
	st.b r0, 0x00000002[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3263
	st.b r0, 0x00000003[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3264
	st.w r0, 0x00000004[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3265
	st.b r5, 0x00000015[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3266
	st.h r0, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3267
	st.b r0, 0x00000016[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3268
	st.b r0, 0x00000014[r2]
	mov 0x00000000, r2
	br9 .BB.LABEL.48_2
.BB.LABEL.48_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3271
	andi 0x000000FF, r2, r5
	mov #_Dcm_SecCtrl, r6
	add r5, r6
	st.b r0, 0x00000001[r6]
	add 0x00000001, r2
.BB.LABEL.48_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3269
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.48_1
.BB.LABEL.48_3:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3273
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	dispose 0x00000000, 0x00000001, [r31]
_DslInternal_SetSesCtrlType.1:
	.stack _DslInternal_SetSesCtrlType.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3293
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3295
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3296
	movhi HIGHW1(#_Dcm_SesCtrl), r0, r2
	st.b r20, LOWW(#_Dcm_SesCtrl)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3297
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r2
	st.b r20, LOWW(#_Dcm_MkCtrl)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3298
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	dispose 0x00000000, 0x00000041, [r31]
_DslInternal_GetSesTimingValues.1:
	.stack _DslInternal_GetSesTimingValues.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3316
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3326
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000058[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3328
	bz9 .BB.LABEL.50_8
.BB.LABEL.50_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.50_8
.BB.LABEL.50_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3333
	ld.bu 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3330
	ld.w 0x00000000[r2], r2
	mov 0x00000000, r9
	mov r9, r10
	br9 .BB.LABEL.50_4
.BB.LABEL.50_3:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3335
	andi 0x000000FF, r9, r11
	mul 0x0000000C, r11, r0
	add r2, r11
	ld.bu 0x00000004[r11], r11
	cmp r11, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3337
	cmov 0x00000002, 0x00000001, r10, r10
	add 0x00000001, r9
.BB.LABEL.50_4:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3333
	andi 0x000000FF, r9, r11
	cmp r5, r11
	bnc9 .BB.LABEL.50_6
.BB.LABEL.50_5:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.50_3
.BB.LABEL.50_6:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3340
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.50_8
.BB.LABEL.50_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3348
	zxb r9
	mul 0x0000000C, r9, r0
	add r2, r9
	ld.hu 0xFFFFFFFA[r9], r2
	st.w r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3349
	ld.hu 0xFFFFFFFC[r9], r2
	st.w r2, 0x00000000[r8]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.50_8:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3357
	jmp [r31]
_DslInternal_SetSesTimingValues.1:
	.stack _DslInternal_SetSesTimingValues.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3374
	prepare 0x00000001, 0x00000008
	mov r3, r8
	movea 0x00000004, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3381
	jarl _DslInternal_GetSesTimingValues.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3382
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.51_2
.BB.LABEL.51_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3386
	ld.w 0x00000000[r3], r7
	ld.w 0x00000004[r3], r6
	jarl _DslInternal_SetProtocolLinkLayerTimer.1, r31
.BB.LABEL.51_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3388
	dispose 0x00000008, 0x00000001, [r31]
_DslInternal_DefaultToDefault.1:
	.stack _DslInternal_DefaultToDefault.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3404
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3406
	jarl _DslInternal_SetSesCtrlType.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3408
	mov r20, r6
	jarl _DslInternal_SetSesTimingValues.1, r31
	dispose 0x00000000, 0x00000041, [r31]
_DslInternal_DefaultToUndefault.1:
	.stack _DslInternal_DefaultToUndefault.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3425
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3429
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000008), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3437
	ld.bu LOWW(#_Dcm_MkCtrl+0x00000008)[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3430
	jarl _Dcm_GetMainConnectionNum.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3432
	movhi HIGHW1(#_Dcm_SesCtrl+0x00000014), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_Dcm_SesCtrl+0x00000014)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3434
	mov r20, r6
	jarl _DslInternal_SetSesCtrlType.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3435
	mov r20, r6
	jarl _DslInternal_SetSesTimingValues.1, r31
	mov 0x00000000, r20
	br9 .BB.LABEL.53_5
.BB.LABEL.53_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3439
	andi 0x000000FF, r20, r2
	mul 0x0000000C, r2, r0
	mov #_Dcm_CommCtrl, r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.53_4
.BB.LABEL.53_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	andi 0x000000FF, r20, r2
	mul 0x0000000C, r2, r0
	mov #_Dcm_CommCtrl, r5
	add r2, r5
	ld.bu 0x00000008[r5], r2
	cmp r2, r21
	bnz9 .BB.LABEL.53_4
.BB.LABEL.53_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3442
	mov r21, r6
	jarl _ComM_DCM_ActiveDiagnostic, r31
.BB.LABEL.53_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	add 0x00000001, r20
.BB.LABEL.53_5:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3437
	andi 0x000000FF, r20, r2
	cmp r22, r2
	bl9 .BB.LABEL.53_1
.BB.LABEL.53_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3449
	dispose 0x00000000, 0x00000071, [r31]
_DslInternal_UndefaultToUndefault.1:
	.stack _DslInternal_UndefaultToUndefault.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3465
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3467
	jarl _DslInternal_SetSesCtrlType.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3468
	mov r20, r6
	jarl _DslInternal_SetSesTimingValues.1, r31
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3470
	mov r20, r6
	jarl _DslInternal_SetSecurityLevel.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3471
	mov r20, r6
	jarl _DslInternal_SetSecurityAccessStatus, r31
	dispose 0x00000000, 0x00000041, [r31]
_DslInternal_UndefaultTodefault.1:
	.stack _DslInternal_UndefaultTodefault.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3493
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3497
	mov #_Dcm_MkCtrl, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3516
	ld.bu 0x00000008[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3499
	movhi HIGHW1(#_Dcm_SesCtrl+0x00000014), r0, r2
	st.w r0, LOWW(#_Dcm_SesCtrl+0x00000014)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3501
	jarl _DslInternal_SetSesCtrlType.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3502
	mov r20, r6
	jarl _DslInternal_SetSesTimingValues.1, r31
	mov 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3505
	mov r20, r6
	jarl _DslInternal_SetSecurityLevel.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3506
	mov r20, r6
	jarl _DslInternal_SetSecurityAccessStatus, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3511
	jarl _Rte_EnableAllDtcsRecord, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3516
	mov r22, r6
	jarl _ComM_DCM_InactiveDiagnostic, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3522
	ld.bu 0x00000003[r21], r6
	jarl _DslInternal_ProtocolStop, r31
	dispose 0x00000000, 0x00000071, [r31]
_DslInternal_SesTranslation.1:
	.stack _DslInternal_SesTranslation.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3540
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3547
	jarl _DslInternal_InitDspProgramInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3548
	movhi HIGHW1(#_Dcm_SesCtrl+0x00000014), r0, r2
	ld.w LOWW(#_Dcm_SesCtrl+0x00000014)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.56_4
.BB.LABEL.56_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3550
	cmp 0x00000001, r20
	mov r20, r6
	bnz9 .BB.LABEL.56_3
.BB.LABEL.56_2:	; if_then_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3553
	jarl _DslInternal_DefaultToDefault.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.56_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3558
	jarl _DslInternal_DefaultToUndefault.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.56_4:	; if_else_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3563
	cmp 0x00000001, r20
	mov r20, r6
	bnz9 .BB.LABEL.56_6
.BB.LABEL.56_5:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3566
	jarl _DslInternal_UndefaultTodefault.1, r31
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.56_6:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3571
	jarl _DslInternal_UndefaultToUndefault.1, r31
	dispose 0x00000000, 0x00000041, [r31]
_DslInternal_S3ServerTimeout.1:
	.stack _DslInternal_S3ServerTimeout.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3590
	prepare 0x00000001, 0x00000000
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3593
	movhi HIGHW1(#_Dcm_SesCtrl+0x00000001), r0, r2
	st.b r6, LOWW(#_Dcm_SesCtrl+0x00000001)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3594
	jarl _DslInternal_SesRefresh, r31
	mov 0x00000007, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3595
	jarl _SchM_Switch_DcmDiagnosticSessionControl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3609
	jarl _DslInternal_S3ServerStop.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_DslInternal_InitSesCtrl.1:
	.stack _DslInternal_InitSesCtrl.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3634
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3636
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3637
	mov #_Dcm_SesCtrl, r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3638
	st.b r5, 0x00000001[r2]
	mov 0xFFFFFFFF, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3639
	st.w r6, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3640
	st.w r6, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3641
	st.w r5, 0x0000000C[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3642
	st.b r0, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3643
	st.w r0, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3644
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_TpRxIndication_3E80:
	.stack _Dcm_TpRxIndication_3E80 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3662
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3669
	movhi HIGHW1(#_Dcm_FunctionalMessage+0x00000002), r0, r2
	ld.bu LOWW(#_Dcm_FunctionalMessage+0x00000002)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3671
	addi 0xFFFFFFC2, r2, r0
	bnz9 .BB.LABEL.59_4
.BB.LABEL.59_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3670
	movhi HIGHW1(#_Dcm_FunctionalMessage+0x00000003), r0, r2
	ld.bu LOWW(#_Dcm_FunctionalMessage+0x00000003)[r2], r2
	addi 0xFFFFFF80, r2, r0
	bnz9 .BB.LABEL.59_4
.BB.LABEL.59_2:	; bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	movhi HIGHW1(#_Dcm_FunctionalMessage), r0, r2
	ld.hu LOWW(#_Dcm_FunctionalMessage)[r2], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.59_4
.BB.LABEL.59_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3675
	jarl _Dcm_RestartS3timer, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3677
	movhi HIGHW1(#_Dcm_FunctionalMessage), r0, r2
	st.h r0, LOWW(#_Dcm_FunctionalMessage)[r2]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3678
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.59_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/Dcm_Ext.c", 3682
	dispose 0x00000000, 0x00000001, [r31]
	.section .bss, bss
_Dcm_VIN:
	.ds (18)
	.align 4
_Dcm_RoutineControlState:
	.ds (44)
	.align 4
_Dcm_CommCtrl:
	.ds (12)
	.align 4
_Dcm_SecCtrl:
	.ds (28)
	.align 4
_Dcm_SesCtrl:
	.ds (24)
	.align 4
_Dcm_ProtocolCtrl:
	.ds (28)
	.align 4
_Dcm_ChannelCtrl:
	.ds (40)
	.align 4
_Dcm_MsgCtrl:
	.ds (64)
_Dcm_ConnectionCtrl:
	.ds (2)
_Dcm_Channel:
	.ds (2048)
	.align 2
_Dcm_FunctionalMessage:
	.ds (68)
	.align 2
_Dcm_OBDMessage:
	.ds (66)
