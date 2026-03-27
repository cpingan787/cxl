#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\SecOC\SecOC.c -oDefaultBuild\SecOC.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_dd344a6b5b0d4f539e349d9c0ac44c86zvmzd0nh.54b
#@	compiled at Fri Mar 27 09:50:23 2026

	.file "..\..\Bsw\Communication\Common\SecOC\SecOC.c"

	$reg_mode 32
	.dbl_size 8

	.public _SecOC_AuthInfoShiftBits_test, 4
	.public _SecOC_authInfoTruncLenInBytes, 4
	.public _SecOC_Init
	.public _SecOC_DeInit
	.public _SecOC_GetVersionInfo
	.public _SecOC_IfTransmit
	.extern _ILib_memcpy
	.extern _SchM_Enter_SecOC_TxData
	.extern _SchM_Exit_SecOC_TxData
	.public _SecOC_TpTransmit
	.public _SecOC_IfCancelTransmit
	.extern _PduR_CancelTransmit
	.public _SecOC_TpCancelTransmit
	.public _SecOC_TpCancelReceive
	.public _SecOC_VerifyStatusOverride
	.extern _SchM_Enter_SecOC_RxData
	.extern _SchM_Exit_SecOC_RxData
	.public _SecOC_SendDefaultAuthenticationInformation
	.public _SecOC_RxIndication
	.public _SecOC_TpRxIndication
	.public _SecOC_TxConfirmation
	.extern _PduR_IfTxConfirmation
	.public _SecOC_TpTxConfirmation
	.public _SecOC_TriggerTransmit
	.public _SecOC_CopyRxData
	.public _SecOC_CopyTxData
	.public _SecOC_StartOfReception
	.public _SecOC_CsmGenerateJobFinishedIndication
	.public _SecOC_CsmVerifyJobFinishedIndication
	.public _SecOC_MainFunctionRx
	.public _SecOC_MainFunctionTx
	.extern _Csm_MacGenerate
	.extern _SchM_Enter_SecOC_Authentication
	.extern _ILib_memset
	.extern _SchM_Exit_SecOC_Authentication
	.extern _SecOC_GetTxFreshnessTruncData
	.extern _SecOC_GetTxFreshness
	.extern _PduR_TpTxConfirmation
	.extern _SecOC_SPduTxConfirmation
	.extern _PduR_Transmit
	.extern _Csm_MacVerify
	.extern _SecOC_GetRxFreshnessAuthData
	.extern _SecOC_GetRxFreshness
	.extern _PduR_IfRxIndication
	.extern _Det_ReportError
	.extern _Det_ReportRuntimeError

	.section .text, text
_SECOC_MOD_FROM_EIGHT.1:
	.stack _SECOC_MOD_FROM_EIGHT.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC_Internal.h", 69
	andi 0x00000007, r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC_Internal.h", 72
	jmp [r31]
_SECOC_DIV_SHIFT.1:
	.stack _SECOC_DIV_SHIFT.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC_Internal.h", 75
	shr r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC_Internal.h", 78
	andi 0x0000FFFF, r6, r10
	jmp [r31]
_SECOC_BIT_TO_BYTE.1:
	.stack _SECOC_BIT_TO_BYTE.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC_Internal.h", 80
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC_Internal.h", 82
	add 0x00000007, r6
	zxh r6
	mov 0x00000003, r7
	jarl _SECOC_DIV_SHIFT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC_Internal.h", 83
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_Init:
	.stack _SecOC_Init = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 371
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 374
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 376
	mov r6, r7
	jarl _SECOC_DET_REPORT.1, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 384
	movhi HIGHW1(#_SecOC_ConfigPtr.2), r0, r2
	st.w r6, LOWW(#_SecOC_ConfigPtr.2)[r2]
	mov 0x00000000, r20
	br9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 389
	andi 0x0000FFFF, r20, r6
	jarl _SecOC_TxChannelReset.1, r31
	add 0x00000001, r20
.BB.LABEL.4_4:	; bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 387
	andi 0x0000FFFF, r20, r2
	cmp 0x00000004, r2
	bl9 .BB.LABEL.4_3
.BB.LABEL.4_5:	; bb9.bb32_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 396
	andi 0x0000FFFF, r20, r21
	mov r21, r6
	jarl _SecOC_RxChannelReset.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 397
	mul 0x00000050, r21, r0
	mov #_SecOC_RxRtData.5, r2
	add r21, r2
	mov 0x00000002, r5
	st.w r5, 0x00000044[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 398
	st.b r0, 0x00000048[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 399
	st.b r0, 0x00000049[r2]
	add 0x00000001, r20
.BB.LABEL.4_7:	; bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 394
	andi 0x0000FFFF, r20, r0
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_8:	; bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 404
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_SecOC_InitStatus.1)[r2]
	dispose 0x00000000, 0x00000061, [r31]
_SecOC_DeInit:
	.stack _SecOC_DeInit = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 422
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 425
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.bb7_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; if_then_bb
	mov 0x00000002, r7
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 427
	jarl _SECOC_DET_REPORT.1, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.5_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 437
	andi 0x0000FFFF, r20, r6
	jarl _SecOC_TxChannelReset.1, r31
	add 0x00000001, r20
.BB.LABEL.5_4:	; bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 435
	andi 0x0000FFFF, r20, r2
	cmp 0x00000004, r2
	bl9 .BB.LABEL.5_3
.BB.LABEL.5_5:	; bb7.bb30_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 444
	andi 0x0000FFFF, r20, r21
	mov r21, r6
	jarl _SecOC_RxChannelReset.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 445
	mul 0x00000050, r21, r0
	mov #_SecOC_RxRtData.5, r2
	add r21, r2
	mov 0x00000002, r5
	st.w r5, 0x00000044[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 446
	st.b r0, 0x00000048[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 447
	st.b r0, 0x00000049[r2]
	add 0x00000001, r20
.BB.LABEL.5_7:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 442
	andi 0x0000FFFF, r20, r0
	bz9 .BB.LABEL.5_6
.BB.LABEL.5_8:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 452
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	st.w r0, LOWW(#_SecOC_InitStatus.1)[r2]
	dispose 0x00000000, 0x00000061, [r31]
_SecOC_GetVersionInfo:
	.stack _SecOC_GetVersionInfo = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 470
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 477
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r7
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 479
	jarl _SECOC_DET_REPORT.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x0000003E, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 484
	st.h r2, 0x00000000[r6]
	movea 0x00000096, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 485
	st.h r2, 0x00000002[r6]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 486
	st.b r2, 0x00000005[r6]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 487
	st.b r2, 0x00000006[r6]
	mov 0x0000000D, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 488
	st.b r2, 0x00000007[r6]
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_IfTransmit:
	.stack _SecOC_IfTransmit = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 508
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 515
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	mov 0x00000002, r7
	movea 0x00000049, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 517
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 521
	cmp 0x00000003, r21
	bnh9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x00000049, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 523
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.7_5:	; if_break_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 527
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r7
	movea 0x00000049, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 529
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.7_7:	; if_break_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 532
	cmp 0x00000001, r2
	bz9 .BB.LABEL.7_9
.BB.LABEL.7_8:	; if_break_bb21.if_break_bb145_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r22
	br9 .BB.LABEL.7_20
.BB.LABEL.7_9:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 537
	mov r21, r6
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 539
	ld.w 0x0000000C[r10], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 542
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.7_12
.BB.LABEL.7_10:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.hu 0x00000020[r10], r2
	ld.hu 0x00000008[r20], r5
	cmp r5, r2
	bl9 .BB.LABEL.7_12
.BB.LABEL.7_11:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 544
	ld.hu 0x00000008[r20], r8
	ld.w 0x00000000[r20], r7
	ld.w 0x00000024[r10], r6
	jarl _ILib_memcpy, r31
	br9 .BB.LABEL.7_17
.BB.LABEL.7_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 550
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.7_14
.BB.LABEL.7_13:	; if_else_bb.if_break_bb121_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r22
	br9 .BB.LABEL.7_18
.BB.LABEL.7_14:	; bb68
	ld.w 0x00000004[r22], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.7_13
.BB.LABEL.7_15:	; bb84
	ld.hu 0x00000008[r22], r2
	ld.hu 0x00000008[r20], r5
	cmp r5, r2
	bl9 .BB.LABEL.7_13
.BB.LABEL.7_16:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 554
	ld.hu 0x00000008[r20], r8
	ld.w 0x00000000[r20], r7
	ld.w 0x0000000C[r22], r6
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 555
	ld.w 0x00000004[r22], r22
	mov 0x00000001, r2
	st.b r2, 0x00000000[r22]
.BB.LABEL.7_17:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r22
.BB.LABEL.7_18:	; if_break_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 564
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.7_20
.BB.LABEL.7_19:	; if_then_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 566
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 567
	mov r21, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r23
	add r2, r23
	mov 0x00000001, r2
	st.w r2, 0x00000000[r23]
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 568
	mov r21, r6
	jarl _SECOC_SET_TX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 569
	ld.h 0x00000008[r20], r2
	st.h r2, 0x00000004[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 571
	st.h r0, 0x00000016[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 572
	jarl _SchM_Exit_SecOC_TxData, r31
.BB.LABEL.7_20:	; if_break_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 577
	dispose 0x00000000, 0x00000079, [r31]
_SecOC_TpTransmit:
	.stack _SecOC_TpTransmit = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 595
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 602
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	movea 0x00000049, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 604
	jarl _SECOC_DET_REPORT.1, r31
.BB.LABEL.8_2:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x00000049, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 610
	jarl _SECOC_DET_REPORT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 614
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r7
	movea 0x00000049, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 616
	jarl _SECOC_DET_REPORT.1, r31
.BB.LABEL.8_4:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 655
	dispose 0x00000000, 0x00000041, [r31]
_SecOC_IfCancelTransmit:
	.stack _SecOC_IfCancelTransmit = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 674
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 681
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb
	mov 0x00000002, r7
	movea 0x0000004A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 683
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.9_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 687
	cmp 0x00000003, r20
	bnh9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x0000004A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 689
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.9_5:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 693
	cmp 0x00000001, r2
	bz9 .BB.LABEL.9_7
.BB.LABEL.9_6:	; if_break_bb17.if_break_bb67_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r21
	br9 .BB.LABEL.9_13
.BB.LABEL.9_7:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 698
	mov r20, r6
	jarl _SecOC_GetTxSecuredPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 705
	cmp 0x00000000, r10
	bz9 .BB.LABEL.9_9
.BB.LABEL.9_8:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 707
	ld.hu 0x00000004[r10], r6
	jarl _PduR_CancelTransmit, r31
	mov 0x00000001, r2
	br9 .BB.LABEL.9_10
.BB.LABEL.9_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 711
	mov r20, r6
	jarl _SecOC_GetTxAuthenticPduPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 712
	mov r20, r6
	jarl _SecOC_GetTxCryptographicPduPtr.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 713
	ld.hu 0x00000004[r21], r6
	jarl _PduR_CancelTransmit, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 714
	ld.hu 0x00000002[r22], r6
	jarl _PduR_CancelTransmit, r31
	cmp 0x00000000, r10
	setf 0x00000002, r2
	mov r21, r10
.BB.LABEL.9_10:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 717
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.9_13
.BB.LABEL.9_11:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_13
.BB.LABEL.9_12:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 719
	mov r20, r6
	jarl _SecOC_TxChannelReset.1, r31
.BB.LABEL.9_13:	; if_break_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 729
	dispose 0x00000000, 0x00000071, [r31]
_SecOC_TpCancelTransmit:
	.stack _SecOC_TpCancelTransmit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 748
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 755
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	movea 0x0000004A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 757
	jarl _SECOC_DET_REPORT.1, r31
.BB.LABEL.10_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x0000004A, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 763
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 764
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_TpCancelReceive:
	.stack _SecOC_TpCancelReceive = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 824
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 831
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	movea 0x0000004C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 833
	jarl _SECOC_DET_REPORT.1, r31
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x0000004C, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 839
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 843
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_VerifyStatusOverride:
	.stack _SecOC_VerifyStatusOverride = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 912
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 917
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r8, r20
	mov r7, r21
	mov r6, r22
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	mov 0x0000000B, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 919
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.12_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 925
	mov r23, r6
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 929
	jarl _SchM_Enter_SecOC_RxData, r31
	mov 0x00000001, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 930
	mov #_SecOC_RxRtData.5, r2
	br9 .BB.LABEL.12_7
.BB.LABEL.12_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 935
	ld.hu 0x0000000C[r24], r5
	cmp r5, r22
	bnz9 .BB.LABEL.12_6
.BB.LABEL.12_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	cmp 0x00000003, r21
	bnc9 .BB.LABEL.12_6
.BB.LABEL.12_5:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 943
	st.w r21, 0x00000044[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 944
	st.b r20, 0x00000048[r2]
	mov 0x00000000, r25
.BB.LABEL.12_6:	; if_break_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 950
	add 0x00000001, r23
	movea 0x00000050, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 949
	movea 0x00000044, r24, r24
.BB.LABEL.12_7:	; bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 930
	andi 0x0000FFFF, r23, r0
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_8:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 953
	jarl _SchM_Exit_SecOC_RxData, r31
	andi 0x000000FF, r25, r10
	dispose 0x00000000, 0x00000679, [r31]
_SecOC_SendDefaultAuthenticationInformation:
	.stack _SecOC_SendDefaultAuthenticationInformation = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 982
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 987
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 989
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000001, r10
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.13_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 995
	mov r22, r6
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 996
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1001
	mov #_SecOC_TxRtData.7, r2
	mov 0x00000001, r24
	br9 .BB.LABEL.13_6
.BB.LABEL.13_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1003
	ld.hu 0x00000006[r23], r5
	cmp r5, r21
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1005
	st.b r20, 0x00000030[r2]
	mov 0x00000000, r24
.BB.LABEL.13_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1010
	add 0x00000001, r22
	movea 0x00000034, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1009
	movea 0x0000002C, r23, r23
.BB.LABEL.13_6:	; bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1001
	andi 0x0000FFFF, r22, r5
	cmp 0x00000004, r5
	bl9 .BB.LABEL.13_3
.BB.LABEL.13_7:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1013
	jarl _SchM_Exit_SecOC_TxData, r31
	andi 0x000000FF, r24, r10
	dispose 0x00000000, 0x00000479, [r31]
_SecOC_RxIndication:
	.stack _SecOC_RxIndication = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1041
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1045
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_then_bb
	mov 0x00000002, r7
	movea 0x00000042, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1047
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.14_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1050
	cmp 0x00000000, r21
	bz9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_then_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x00000042, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1052
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.14_5:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1055
	cmp 0x00000000, r20
	bz9 .BB.LABEL.14_7
.BB.LABEL.14_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.w 0x00000000[r20], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.14_8
.BB.LABEL.14_7:	; if_then_bb33
	mov 0x00000001, r7
	movea 0x00000042, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1057
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.14_8:	; if_break_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1060
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.14_21
.BB.LABEL.14_9:	; if_break_bb34.bb104_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r22
	mov r22, r23
	br9 .BB.LABEL.14_20
.BB.LABEL.14_10:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1074
	andi 0x0000FFFF, r22, r6
	jarl _SecOC_GetRxSecuredPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1075
	cmp 0x00000000, r10
	bz9 .BB.LABEL.14_13
.BB.LABEL.14_11:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1077
	ld.hu 0x00000002[r10], r2
	cmp r2, r21
	bnz9 .BB.LABEL.14_18
.BB.LABEL.14_12:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1079
	andi 0x0000FFFF, r22, r6
	mov r21, r7
	mov r20, r8
	jarl _SecOC_RxIfSecuredPduIndication.1, r31
	br9 .BB.LABEL.14_17
.BB.LABEL.14_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1085
	andi 0x0000FFFF, r22, r6
	jarl _SecOC_GetRxAuthenticPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1086
	ld.hu 0x00000002[r10], r2
	cmp r2, r21
	bnz9 .BB.LABEL.14_15
.BB.LABEL.14_14:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1088
	andi 0x0000FFFF, r22, r6
	mov r20, r7
	jarl _SecOC_RxIfAuthenticPduIndication.1, r31
	mov 0x00000001, r23
.BB.LABEL.14_15:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1092
	andi 0x0000FFFF, r22, r6
	jarl _SecOC_GetRxCryptographicPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1093
	ld.hu 0x00000000[r10], r2
	cmp r2, r21
	bnz9 .BB.LABEL.14_18
.BB.LABEL.14_16:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1095
	andi 0x0000FFFF, r22, r6
	mov r20, r7
	jarl _SecOC_RxIfCryptographicPduIndication.1, r31
.BB.LABEL.14_17:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r23
.BB.LABEL.14_18:	; if_break_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1099
	andi 0x000000FF, r23, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.14_21
.BB.LABEL.14_19:	; if_break_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	add 0x00000001, r22
.BB.LABEL.14_20:	; bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1072
	andi 0x0000FFFF, r22, r0
	bz9 .BB.LABEL.14_10
.BB.LABEL.14_21:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1106
	dispose 0x00000000, 0x00000079, [r31]
_SecOC_TpRxIndication:
	.stack _SecOC_TpRxIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1127
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1132
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	movea 0x00000045, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1134
	jarl _SECOC_DET_REPORT.1, r31
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x00000045, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1140
	jarl _SECOC_DET_REPORT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1144
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_TxConfirmation:
	.stack _SecOC_TxConfirmation = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1214
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1220
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r6, r20
	bz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_then_bb
	mov 0x00000002, r7
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1222
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.16_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1226
	cmp 0x00000003, r20
	bnh9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1228
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.16_5:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1231
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.16_26
.BB.LABEL.16_6:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1236
	mov r21, r6
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1246
	jarl _SchM_Enter_SecOC_TxData, r31
	mov r21, r23
.BB.LABEL.16_7:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1247
	andi 0x0000FFFF, r21, r2
	cmp 0x00000004, r2
	bnc9 .BB.LABEL.16_17
.BB.LABEL.16_8:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1249
	andi 0x0000FFFF, r21, r6
	jarl _SecOC_GetTxSecuredPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1250
	addi 0x00000000, r10, r24
	bz9 .BB.LABEL.16_13
.BB.LABEL.16_9:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1252
	ld.hu 0x00000002[r24], r2
	cmp r2, r20
	bnz9 .BB.LABEL.16_11
.BB.LABEL.16_10:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r23
.BB.LABEL.16_11:	; if_break_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1273
	andi 0x000000FF, r23, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.16_17
.BB.LABEL.16_12:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1278
	add 0x00000001, r21
	movea 0x0000002C, r22, r22
	br9 .BB.LABEL.16_7
.BB.LABEL.16_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1259
	andi 0x0000FFFF, r21, r6
	jarl _SecOC_GetTxAuthenticPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1260
	ld.hu 0x00000002[r10], r2
	cmp r2, r20
	bnz9 .BB.LABEL.16_15
.BB.LABEL.16_14:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1262
	andi 0x0000FFFF, r21, r6
	mov 0x00000004, r7
	jarl _SECOC_SET_TX_EVENT.1, r31
	mov 0x00000001, r23
.BB.LABEL.16_15:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1266
	andi 0x0000FFFF, r21, r6
	jarl _SecOC_GetTxCryptographicPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1267
	ld.hu 0x00000000[r10], r2
	cmp r2, r20
	bnz9 .BB.LABEL.16_11
.BB.LABEL.16_16:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1269
	andi 0x0000FFFF, r21, r6
	mov 0x00000008, r7
	jarl _SECOC_SET_TX_EVENT.1, r31
	br9 .BB.LABEL.16_10
.BB.LABEL.16_17:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1281
	andi 0x0000FFFF, r21, r2
	cmp 0x00000003, r2
	bh9 .BB.LABEL.16_25
.BB.LABEL.16_18:	; if_then_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1285
	cmp 0x00000000, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1284
	ld.w 0x00000014[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1285
	ld.hu 0x00000006[r2], r20
	bnz9 .BB.LABEL.16_21
.BB.LABEL.16_19:	; bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	andi 0x0000FFFF, r21, r6
	mov 0x00000004, r7
	jarl _SECOC_IS_TX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.16_22
.BB.LABEL.16_20:	; bb114
	andi 0x0000FFFF, r21, r6
	mov 0x00000008, r7
	jarl _SECOC_IS_TX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.16_22
.BB.LABEL.16_21:	; if_then_bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1289
	mov r20, r6
	jarl _PduR_IfTxConfirmation, r31
.BB.LABEL.16_22:	; if_break_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1294
	andi 0x0000FFFF, r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1295
	mov r2, r5
	mul 0x00000034, r5, r0
	mov #_SecOC_TxRtData.7, r6
	add r5, r6
	st.b r0, 0x00000014[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1296
	ld.w 0x0000000C[r22], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.16_24
.BB.LABEL.16_23:	; if_then_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1298
	ld.w 0x00000004[r5], r5
	st.b r0, 0x00000000[r5]
.BB.LABEL.16_24:	; if_break_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1302
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1303
	st.h r0, 0x00000016[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1305
	andi 0x0000FFFF, r21, r6
	movea 0x000000FF, r0, r7
	jarl _SECOC_CLR_TX_EVENT.1, r31
.BB.LABEL.16_25:	; if_break_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1307
	jarl _SchM_Exit_SecOC_TxData, r31
.BB.LABEL.16_26:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1310
	dispose 0x00000000, 0x00000479, [r31]
_SecOC_TpTxConfirmation:
	.stack _SecOC_TpTxConfirmation = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1332
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1337
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	movea 0x00000048, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1339
	jarl _SECOC_DET_REPORT.1, r31
.BB.LABEL.17_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x00000048, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1345
	jarl _SECOC_DET_REPORT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1346
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_TriggerTransmit:
	.stack _SecOC_TriggerTransmit = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1480
	prepare 0x00000FFF, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1487
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_then_bb
	mov 0x00000002, r7
	movea 0x00000041, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1489
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.18_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1493
	cmp 0x00000003, r21
	bnh9 .BB.LABEL.18_5
.BB.LABEL.18_4:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x00000041, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1495
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.18_5:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1499
	cmp 0x00000000, r20
	bz9 .BB.LABEL.18_7
.BB.LABEL.18_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.w 0x00000000[r20], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.18_8
.BB.LABEL.18_7:	; if_then_bb46
	mov 0x00000001, r7
	movea 0x00000041, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1501
	jarl _SECOC_DET_REPORT.1, r31
	mov 0x00000000, r2
.BB.LABEL.18_8:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1504
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.18_40
.BB.LABEL.18_9:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1509
	mov r22, r6
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1531
	mov #_SecOC_TxRtData.7, r23
	mov r22, r24
	mov r22, r25
	mov r10, r29
	mov r22, r30
.BB.LABEL.18_10:	; bb115
	andi 0x0000FFFF, r24, r2
	cmp 0x00000004, r2
	bnc9 .BB.LABEL.18_21
.BB.LABEL.18_11:	; bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1533
	andi 0x0000FFFF, r24, r6
	jarl _SecOC_GetTxSecuredPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1534
	addi 0x00000000, r10, r28
	bz9 .BB.LABEL.18_16
.BB.LABEL.18_12:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1536
	ld.hu 0x00000002[r28], r2
	cmp r2, r21
	bnz9 .BB.LABEL.18_14
.BB.LABEL.18_13:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r22
	mov r22, r30
.BB.LABEL.18_14:	; if_break_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1558
	andi 0x000000FF, r30, r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.18_21
.BB.LABEL.18_15:	; if_break_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1564
	add 0x00000001, r24
	movea 0x0000002C, r29, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1563
	movea 0x00000034, r23, r23
	br9 .BB.LABEL.18_10
.BB.LABEL.18_16:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1544
	andi 0x0000FFFF, r24, r6
	jarl _SecOC_GetTxAuthenticPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1545
	ld.hu 0x00000002[r10], r26
	cmp r26, r21
	mov r10, r27
	bnz9 .BB.LABEL.18_18
.BB.LABEL.18_17:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r25
	mov r25, r30
.BB.LABEL.18_18:	; if_break_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1551
	andi 0x0000FFFF, r24, r6
	jarl _SecOC_GetTxCryptographicPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1552
	ld.hu 0x00000000[r10], r26
	cmp r26, r21
	bz9 .BB.LABEL.18_20
.BB.LABEL.18_19:	; if_break_bb86.if_break_bb100_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov r10, r26
	br9 .BB.LABEL.18_14
.BB.LABEL.18_20:	; if_then_bb98
	mov 0x00000001, r30
	br9 .BB.LABEL.18_19
.BB.LABEL.18_21:	; bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1568
	andi 0x0000FFFF, r24, r2
	cmp 0x00000003, r2
	bh9 .BB.LABEL.18_40
.BB.LABEL.18_22:	; bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.bu 0x00000014[r23], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.18_40
.BB.LABEL.18_23:	; if_then_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1573
	zxb r22
	cmp 0x00000001, r22
	ld.bu 0x00000009[r29], r21
	ld.hu 0x00000002[r29], r22
	bnz9 .BB.LABEL.18_27
.BB.LABEL.18_24:	; if_then_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1577
	ld.bu 0x00000000[r28], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1576
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1577
	ld.h 0x00000004[r23], r23
	add r21, r22
	andi 0x0000FFFF, r22, r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1579
	jarl _SchM_Exit_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1577
	add r23, r24
	add r21, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1580
	ld.w 0x0000000C[r29], r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.18_26
.BB.LABEL.18_25:	; if_then_bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1582
	ld.w 0x00000014[r21], r7
	br9 .BB.LABEL.18_38
.BB.LABEL.18_26:	; if_else_bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1586
	ld.w 0x00000008[r28], r7
	br9 .BB.LABEL.18_38
.BB.LABEL.18_27:	; if_else_bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1589
	zxb r25
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.18_31
.BB.LABEL.18_28:	; if_then_bb198
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1593
	ld.bu 0x00000000[r27], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1592
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1593
	ld.h 0x00000004[r23], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1594
	jarl _SchM_Exit_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1593
	add r21, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1595
	ld.w 0x0000000C[r29], r21
	cmp 0x00000000, r21
	bz9 .BB.LABEL.18_30
.BB.LABEL.18_29:	; if_then_bb216
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1597
	ld.w 0x0000000C[r21], r7
	br9 .BB.LABEL.18_38
.BB.LABEL.18_30:	; if_else_bb222
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1601
	ld.w 0x00000008[r27], r7
	br9 .BB.LABEL.18_38
.BB.LABEL.18_31:	; if_then_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1606
	andi 0x0000FFFF, r24, r6
	jarl _SecOC_GetTxUseMessageLinkPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1607
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.18_33
.BB.LABEL.18_32:	; if_then_bb233.if_break_bb244_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r24
	br9 .BB.LABEL.18_34
.BB.LABEL.18_33:	; if_then_bb240
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1609
	ld.hu 0x00000000[r10], r24
.BB.LABEL.18_34:	; if_break_bb244
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1611
	add r22, r21
	add r24, r21
	andi 0x0000FFFF, r21, r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1612
	ld.w 0x0000000C[r29], r24
	cmp 0x00000000, r24
	bz9 .BB.LABEL.18_36
.BB.LABEL.18_35:	; if_then_bb262
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1614
	ld.w 0x00000024[r24], r7
	br9 .BB.LABEL.18_37
.BB.LABEL.18_36:	; if_else_bb268
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1618
	ld.w 0x00000008[r26], r7
.BB.LABEL.18_37:	; if_else_bb268
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov r10, r24
.BB.LABEL.18_38:	; if_break_bb276
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1626
	andi 0x0000FFFF, r24, r2
	ld.hu 0x00000008[r20], r5
	cmp r5, r2
	bh9 .BB.LABEL.18_40
.BB.LABEL.18_39:	; if_then_bb286
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1630
	ld.w 0x00000000[r20], r6
	andi 0x0000FFFF, r24, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1631
	st.h r24, 0x00000008[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1633
	dispose 0x00000000, 0x00000FFF, [r31]
.BB.LABEL.18_40:	; if_break_bb301
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1650
	dispose 0x00000000, 0x00000FFF, [r31]
_SecOC_CopyRxData:
	.stack _SecOC_CopyRxData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1681
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1694
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r8, r20
	mov r7, r21
	bnz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	movea 0x00000044, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1696
	jarl _SECOC_DET_REPORT.1, r31
.BB.LABEL.19_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x00000044, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1702
	jarl _SECOC_DET_REPORT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1706
	cmp 0x00000000, r21
	bz9 .BB.LABEL.19_4
.BB.LABEL.19_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; if_then_bb40
	mov 0x00000001, r20
	movea 0x00000044, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1708
	mov r20, r7
	jarl _SECOC_DET_REPORT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1709
	mov r20, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.19_5:	; if_break_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1712
	dispose 0x00000000, 0x00000061, [r31]
_SecOC_CopyTxData:
	.stack _SecOC_CopyTxData = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1804
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1818
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r9, r20
	mov r7, r21
	bnz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	movea 0x00000043, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1820
	jarl _SECOC_DET_REPORT.1, r31
.BB.LABEL.20_2:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x00000043, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1826
	jarl _SECOC_DET_REPORT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1830
	cmp 0x00000000, r21
	bz9 .BB.LABEL.20_4
.BB.LABEL.20_3:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_then_bb41
	mov 0x00000001, r20
	movea 0x00000043, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1832
	mov r20, r7
	jarl _SECOC_DET_REPORT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1833
	mov r20, r10
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.20_5:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 1835
	dispose 0x00000000, 0x00000061, [r31]
_SecOC_StartOfReception:
	.stack _SecOC_StartOfReception = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2007
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2021
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r9, r20
	bnz9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	movea 0x00000046, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2023
	jarl _SECOC_DET_REPORT.1, r31
.BB.LABEL.21_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000003, r7
	movea 0x00000046, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2029
	jarl _SECOC_DET_REPORT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2033
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.21_4
.BB.LABEL.21_3:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r20
	movea 0x00000046, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2035
	mov r20, r7
	jarl _SECOC_DET_REPORT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2036
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.21_4:	; if_break_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2039
	dispose 0x00000000, 0x00000041, [r31]
_SecOC_CsmGenerateJobFinishedIndication:
	.stack _SecOC_CsmGenerateJobFinishedIndication = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2118
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2123
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bnz9 .BB.LABEL.22_2
.BB.LABEL.22_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	movea 0x00000051, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2125
	jarl _SECOC_DET_REPORT.1, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.22_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2131
	mov r22, r6
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	br9 .BB.LABEL.22_11
.BB.LABEL.22_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2136
	ld.w 0x00000010[r10], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000000[r21], r5
	cmp r5, r2
	bnz9 .BB.LABEL.22_10
.BB.LABEL.22_4:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	andi 0x0000FFFF, r22, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2138
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.22_7
.BB.LABEL.22_5:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2140
	jarl _SECOC_IS_TX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.22_12
.BB.LABEL.22_6:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2142
	andi 0x0000FFFF, r22, r6
	movea 0x00000020, r0, r7
	jarl _SECOC_SET_TX_EVENT.1, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.22_7:	; if_else_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2145
	cmp 0x00000002, r20
	bnz9 .BB.LABEL.22_9
.BB.LABEL.22_8:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2149
	jarl _SecOC_TxGenerateAuthenticatorRetry.1, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.22_9:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2154
	jarl _SecOC_TxBuildAuthenticatorFailHandle.1, r31
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.22_10:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2158
	add 0x00000001, r22
	movea 0x0000002C, r10, r10
.BB.LABEL.22_11:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2134
	andi 0x0000FFFF, r22, r2
	cmp 0x00000004, r2
	bl9 .BB.LABEL.22_3
.BB.LABEL.22_12:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2161
	dispose 0x00000000, 0x00000071, [r31]
_SecOC_CsmVerifyJobFinishedIndication:
	.stack _SecOC_CsmVerifyJobFinishedIndication = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2182
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2185
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bnz9 .BB.LABEL.23_2
.BB.LABEL.23_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	movea 0x00000051, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2187
	jarl _SECOC_DET_REPORT.1, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.23_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2193
	mov r22, r6
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2198
	mov #_SecOC_RxRtData.5, r23
	br9 .BB.LABEL.23_16
.BB.LABEL.23_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2200
	ld.w 0x00000024[r10], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000000[r21], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_15
.BB.LABEL.23_4:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2202
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.23_8
.BB.LABEL.23_5:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2204
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2205
	andi 0x0000FFFF, r22, r6
	movea 0x00000020, r0, r7
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.23_7
.BB.LABEL.23_6:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2207
	andi 0x0000FFFF, r22, r6
	movea 0x00000040, r0, r7
	jarl _SECOC_SET_RX_EVENT.1, r31
.BB.LABEL.23_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2213
	st.h r0, 0x00000034[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2214
	jarl _SchM_Exit_SecOC_RxData, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.23_8:	; if_else_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2216
	cmp 0x00000002, r20
	bnz9 .BB.LABEL.23_10
.BB.LABEL.23_9:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2220
	andi 0x0000FFFF, r22, r6
	jarl _SecOC_RxAuthenticationBuildRetry.1, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.23_10:	; if_else_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2226
	ld.w 0x00000044[r23], r20
	addi 0xFFFFFFC0, r20, r0
	bz9 .BB.LABEL.23_13
.BB.LABEL.23_11:	; bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	addi 0xFFFFFFBE, r20, r0
	bnz9 .BB.LABEL.23_14
.BB.LABEL.23_12:	; bb57
	ld.bu 0x00000049[r23], r20
	cmp 0x00000000, r20
	bz9 .BB.LABEL.23_14
.BB.LABEL.23_13:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2230
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2232
	andi 0x0000FFFF, r22, r6
	movea 0x00000040, r0, r7
	jarl _SECOC_SET_RX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2233
	jarl _SchM_Exit_SecOC_RxData, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.23_14:	; if_else_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2237
	st.w r20, 0x0000004C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2239
	zxh r22
	mov r22, r6
	jarl _SecOC_RxReportVerifyStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2242
	mov r22, r6
	jarl _SecOC_RxChannelReset.1, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.23_15:	; if_break_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2249
	add 0x00000001, r22
	movea 0x00000044, r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2248
	movea 0x00000050, r23, r23
.BB.LABEL.23_16:	; bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2198
	andi 0x0000FFFF, r22, r0
	bz9 .BB.LABEL.23_3
.BB.LABEL.23_17:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2253
	dispose 0x00000000, 0x00000079, [r31]
_SecOC_MainFunctionRx:
	.stack _SecOC_MainFunctionRx = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2273
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2278
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.24_9
.BB.LABEL.24_1:	; entry.bb35_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.24_8
.BB.LABEL.24_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2283
	andi 0x0000FFFF, r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.24_4
.BB.LABEL.24_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2285
	andi 0x0000FFFF, r20, r6
	jarl _SecOC_RxLoadQueuedPdu.1, r31
.BB.LABEL.24_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2289
	andi 0x0000FFFF, r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.24_7
.BB.LABEL.24_5:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2291
	andi 0x0000FFFF, r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.24_7
.BB.LABEL.24_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2296
	andi 0x0000FFFF, r20, r21
	mov r21, r6
	jarl _SecOC_RxParseSecuredIpdu.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2297
	mov r21, r6
	jarl _SecOC_RxVerifyProcee.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2298
	mov r21, r6
	jarl _SecOC_RxPassAuthenticPduToUpperLayer.1, r31
.BB.LABEL.24_7:	; if_break_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	add 0x00000001, r20
.BB.LABEL.24_8:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2280
	andi 0x0000FFFF, r20, r0
	bz9 .BB.LABEL.24_2
.BB.LABEL.24_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2312
	dispose 0x00000000, 0x00000061, [r31]
_SecOC_MainFunctionTx:
	.stack _SecOC_MainFunctionTx = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2329
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2334
	movhi HIGHW1(#_SecOC_InitStatus.1), r0, r2
	ld.w LOWW(#_SecOC_InitStatus.1)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.25_8
.BB.LABEL.25_1:	; entry.bb23_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r20
	br9 .BB.LABEL.25_7
.BB.LABEL.25_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2340
	andi 0x0000FFFF, r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.25_6
.BB.LABEL.25_3:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2342
	andi 0x0000FFFF, r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.25_5
.BB.LABEL.25_4:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.25_6
.BB.LABEL.25_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2351
	andi 0x0000FFFF, r20, r21
	mov r21, r6
	jarl _SecOC_TxGenerateAuthenticator.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2354
	mov r21, r6
	jarl _SecOC_TxSendSecuredIPDU.1, r31
.BB.LABEL.25_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	add 0x00000001, r20
.BB.LABEL.25_7:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2338
	andi 0x0000FFFF, r20, r2
	cmp 0x00000004, r2
	bl9 .BB.LABEL.25_2
.BB.LABEL.25_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2365
	dispose 0x00000000, 0x00000061, [r31]
_SECOC_SET_TX_EVENT.1:
	.stack _SECOC_SET_TX_EVENT.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2390
	add r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2392
	mov #_SecOC_TxEvent.6, r2
	add r6, r2
	ld.h 0x00000000[r2], r5
	or r7, r5
	st.h r5, 0x00000000[r2]
	jmp [r31]
_SECOC_CLR_TX_EVENT.1:
	.stack _SECOC_CLR_TX_EVENT.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2408
	add r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2410
	mov #_SecOC_TxEvent.6, r2
	add r6, r2
	ld.h 0x00000000[r2], r5
	not r7, r6
	and r6, r5
	st.h r5, 0x00000000[r2]
	jmp [r31]
_SECOC_IS_TX_EVENT.1:
	.stack _SECOC_IS_TX_EVENT.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2426
	add r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2428
	mov #_SecOC_TxEvent.6, r2
	add r6, r2
	ld.hu 0x00000000[r2], r2
	tst r7, r2
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2429
	jmp [r31]
_SecOC_GetTxPduProcessingPtr.1:
	.stack _SecOC_GetTxPduProcessingPtr.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2444
	movhi HIGHW1(#_SecOC_ConfigPtr.2), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2446
	ld.w LOWW(#_SecOC_ConfigPtr.2)[r2], r2
	ld.w 0x00000008[r2], r10
	mul 0x0000002C, r6, r0
	add r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2447
	jmp [r31]
_SecOC_GetTxAuthenticPduLayerPtr.1:
	.stack _SecOC_GetTxAuthenticPduLayerPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2462
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2464
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	ld.w 0x00000014[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2465
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_GetTxSecuredPduLayerPtr.1:
	.stack _SecOC_GetTxSecuredPduLayerPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2480
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2482
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	ld.w 0x0000001C[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2483
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_GetTxSecuredPduPtr.1:
	.stack _SecOC_GetTxSecuredPduPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2497
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2499
	jarl _SecOC_GetTxSecuredPduLayerPtr.1, r31
	ld.w 0x00000000[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2500
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_GetTxSecuredPduCollectionPtr.1:
	.stack _SecOC_GetTxSecuredPduCollectionPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2514
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2516
	jarl _SecOC_GetTxSecuredPduLayerPtr.1, r31
	ld.w 0x00000004[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2517
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_GetTxAuthenticPduPtr.1:
	.stack _SecOC_GetTxAuthenticPduPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2531
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2533
	jarl _SecOC_GetTxSecuredPduCollectionPtr.1, r31
	ld.w 0x00000000[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2534
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_GetTxCryptographicPduPtr.1:
	.stack _SecOC_GetTxCryptographicPduPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2549
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2551
	jarl _SecOC_GetTxSecuredPduCollectionPtr.1, r31
	ld.w 0x00000004[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2552
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_GetTxUseMessageLinkPtr.1:
	.stack _SecOC_GetTxUseMessageLinkPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2567
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2569
	jarl _SecOC_GetTxSecuredPduCollectionPtr.1, r31
	ld.w 0x00000008[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2570
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_TxGenerateAuthenticator.1:
	.stack _SecOC_TxGenerateAuthenticator.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2584
	prepare 0x00000071, 0x00000008
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2587
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2589
	ld.w 0x00000010[r10], r21
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2597
	mov r20, r6
	jarl _SECOC_IS_TX_EVENT.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.37_19
.BB.LABEL.37_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	mov r20, r6
	jarl _SECOC_IS_TX_EVENT.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.37_19
.BB.LABEL.37_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2600
	mov r20, r6
	jarl _SecOC_TxCalcDataToAuthenticatorLength.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2601
	mov r20, r6
	jarl _SecOC_TxConstructDataToAuthenticator.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2602
	mov r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r5
	add r2, r5
	movea 0x00000011, r0, r2
	st.w r2, 0x0000002C[r5]
	movea 0x0000002C, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2603
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.37_13
.BB.LABEL.37_3:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2606
	ld.w 0x00000008[r21], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.37_5
.BB.LABEL.37_4:	; if_then_bb43.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.37_6
.BB.LABEL.37_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2610
	ld.w 0x00000000[r21], r6
	mov r20, r5
	mul 0x00000034, r5, r0
	mov #_SecOC_TxRtData.7, r7
	add r5, r7
	movea 0x00000018, r7, r5
	st.w r5, 0x00000000[r3]
	st.w r2, 0x00000004[r3]
	mov #_SecOC_DataToAuthenticator.3, r8
	mov 0x00000007, r7
	mov r22, r9
	jarl _Csm_MacGenerate, r31
.BB.LABEL.37_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2637
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.37_11
.BB.LABEL.37_7:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2639
	jarl _SchM_Enter_SecOC_TxData, r31
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2640
	mov r20, r6
	jarl _SECOC_CLR_TX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2641
	ld.w 0x00000004[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.37_9
.BB.LABEL.37_8:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x00000020, r0, r7
	br9 .BB.LABEL.37_10
.BB.LABEL.37_9:	; if_else_bb
	movea 0x00000010, r0, r7
.BB.LABEL.37_10:	; if_else_bb
	mov r20, r6
	jarl _SECOC_SET_TX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2649
	jarl _SchM_Exit_SecOC_TxData, r31
	mov 0x00000000, r2
	mov r2, r21
	br9 .BB.LABEL.37_15
.BB.LABEL.37_11:	; if_else_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2651
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.37_14
.BB.LABEL.37_12:	; if_else_bb75.if_break_bb94_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r21
	mov 0x00000001, r2
	br9 .BB.LABEL.37_15
.BB.LABEL.37_13:	; if_else_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2662
	cmp 0x00000002, r10
	bz9 .BB.LABEL.37_12
.BB.LABEL.37_14:	; if_else_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r21
	mov 0x00000000, r2
.BB.LABEL.37_15:	; if_break_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2673
	xori 0x00000001, r2, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.37_17
.BB.LABEL.37_16:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2676
	mov r20, r6
	jarl _SecOC_TxGenerateAuthenticatorRetry.1, r31
.BB.LABEL.37_17:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2679
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.37_19
.BB.LABEL.37_18:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2682
	mov r20, r6
	jarl _SecOC_TxBuildAuthenticatorFailHandle.1, r31
.BB.LABEL.37_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2685
	dispose 0x00000008, 0x00000071, [r31]
_SecOC_TxCalcDataToAuthenticatorLength.1:
	.stack _SecOC_TxCalcDataToAuthenticatorLength.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2699
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2702
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2706
	ld.w 0x00000018[r10], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2709
	cmp 0x00000000, r2
	mov r10, r21
	bz9 .BB.LABEL.38_2
.BB.LABEL.38_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2712
	ld.w 0x00000000[r2], r20
	mov 0x00000002, r22
	br9 .BB.LABEL.38_3
.BB.LABEL.38_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2716
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2718
	mul 0x00000034, r20, r0
	mov #_SecOC_TxRtData.7, r22
	add r20, r22
	ld.hu 0x00000004[r22], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2719
	jarl _SchM_Exit_SecOC_TxData, r31
	mov 0x00000002, r20
.BB.LABEL.38_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2722
	ld.bu 0x00000008[r21], r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	add r22, r20
	add r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2725
	dispose 0x00000000, 0x00000071, [r31]
_SecOC_TxConstructDataToAuthenticator.1:
	.stack _SecOC_TxConstructDataToAuthenticator.1 = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2739
	prepare 0x00000679, 0x00000018
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2742
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2747
	ld.w 0x00000018[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2756
	jarl _SchM_Enter_SecOC_Authentication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2758
	mov #_SecOC_DataToAuthenticator.3, r23
	movea 0x0000003A, r0, r8
	mov 0x00000000, r7
	mov r23, r6
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2767
	ld.h 0x00000004[r21], r2
	st.h r2, 0x00000006[r3]
	mov 0x00000002, r24
	movea 0x00000006, r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2770
	mov r25, r6
	mov r24, r7
	jarl _SecOC_EndianSwap.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2772
	mov r23, r6
	mov r25, r7
	mov r24, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2775
	ld.w 0x0000000C[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.39_2
.BB.LABEL.39_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2777
	movea 0x00000024, r21, r2
	br9 .BB.LABEL.39_3
.BB.LABEL.39_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2781
	add 0x0000000C, r2
.BB.LABEL.39_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2784
	cmp 0x00000000, r22
	ld.w 0x00000000[r2], r7
	bz9 .BB.LABEL.39_5
.BB.LABEL.39_4:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2788
	ld.w 0x00000004[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2787
	ld.w 0x00000000[r22], r22
	br9 .BB.LABEL.39_6
.BB.LABEL.39_5:	; if_else_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2793
	mov r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r22
	add r2, r22
	ld.hu 0x00000004[r22], r22
	mov 0x00000000, r2
.BB.LABEL.39_6:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2797
	add r2, r7
	mov #_SecOC_DataToAuthenticator.3, r6
	add 0x00000002, r6
	mov r22, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2803
	ld.bu 0x00000008[r21], r2
	st.w r2, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2804
	ld.bu 0x00000009[r21], r2
	st.w r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2805
	jarl _SchM_Exit_SecOC_Authentication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2807
	mul 0x00000034, r20, r0
	mov #_SecOC_TxRtData.7, r23
	add r20, r23
	add 0x0000000C, r23
	ld.bu 0x0000000A[r21], r2
	movea 0x0000000C, r3, r8
	mov r23, r7
	cmp 0x00000001, r2
	ld.hu 0x00000006[r21], r6
	bnz9 .BB.LABEL.39_8
.BB.LABEL.39_7:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x00000008, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2810
	st.w r2, 0x00000000[r3]
	movea 0x00000010, r3, r9
	jarl _SecOC_GetTxFreshnessTruncData, r31
	br9 .BB.LABEL.39_9
.BB.LABEL.39_8:	; if_else_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2820
	jarl _SecOC_GetTxFreshness, r31
.BB.LABEL.39_9:	; if_break_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2845
	jarl _SchM_Enter_SecOC_Authentication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2846
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.39_11
.BB.LABEL.39_10:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2848
	ld.bu 0x00000008[r21], r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	st.w r10, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2849
	mov #_SecOC_DataToAuthenticator.3, r2
	add r2, r22
	addi 0x00000002, r22, r6
	mov r23, r7
	mov r10, r8
	jarl _ILib_memcpy, r31
.BB.LABEL.39_11:	; if_break_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2854
	jarl _SchM_Exit_SecOC_Authentication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2857
	mov r20, r10
	dispose 0x00000018, 0x00000679, [r31]
_SecOC_TxGenerateAuthenticatorRetry.1:
	.stack _SecOC_TxGenerateAuthenticatorRetry.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2871
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2874
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2878
	mov r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r5
	add r2, r5
	ld.hu 0x00000016[r5], r2
	ld.hu 0x00000000[r10], r6
	cmp r6, r2
	movea 0x00000016, r5, r21
	bnc9 .BB.LABEL.40_2
.BB.LABEL.40_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2880
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2882
	ld.h 0x00000000[r21], r2
	add 0x00000001, r2
	st.h r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2883
	mul 0x00000034, r20, r0
	mov #_SecOC_TxRtData.7, r2
	add r20, r2
	mov 0x00000003, r20
	st.w r20, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2884
	jarl _SchM_Exit_SecOC_TxData, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.40_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2889
	mov r20, r6
	jarl _SecOC_TxBuildAuthenticatorFailHandle.1, r31
	mov 0x00000004, r7
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2893
	jarl _SECOC_DET_REPORT.1, r31
	dispose 0x00000000, 0x00000061, [r31]
_SecOC_TxBuildAuthenticatorFailHandle.1:
	.stack _SecOC_TxBuildAuthenticatorFailHandle.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2910
	prepare 0x00000079, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2913
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2915
	ld.w 0x0000000C[r10], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2920
	mov r20, r6
	jarl _SecOC_GetTxAuthenticPduLayerPtr.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2925
	ld.hu 0x00000006[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2924
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2925
	mov r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r5
	add r2, r5
	ld.bu 0x00000030[r5], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.41_2
.BB.LABEL.41_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2929
	mov r20, r21
	mul 0x00000034, r21, r0
	mov #_SecOC_TxRtData.7, r22
	add r21, r22
	addi 0x0000000C, r22, r6
	mov 0x00000000, r21
	mov 0x00000008, r8
	mov r21, r7
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2933
	movea 0x00000018, r22, r6
	movea 0x00000011, r0, r8
	mov r21, r7
	jarl _ILib_memset, r31
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2937
	mov r20, r6
	jarl _SECOC_CLR_TX_EVENT.1, r31
	movea 0x00000020, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2938
	mov r20, r6
	jarl _SECOC_SET_TX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2945
	jarl _SchM_Exit_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2951
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.41_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2945
	jarl _SchM_Exit_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2953
	jarl _SchM_Enter_SecOC_TxData, r31
	movea 0x000000FF, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2955
	mov r20, r6
	jarl _SECOC_CLR_TX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2956
	mov r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r5
	add r2, r5
	st.w r0, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2957
	st.h r0, 0x00000016[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2958
	jarl _SchM_Exit_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2960
	ld.w 0x00000000[r22], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.41_4
.BB.LABEL.41_3:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2962
	mov r23, r6
	jarl _PduR_TpTxConfirmation, r31
.BB.LABEL.41_4:	; if_break_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2964
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2966
	mul 0x00000034, r20, r0
	mov #_SecOC_TxRtData.7, r2
	add r20, r2
	st.b r0, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2967
	jarl _SchM_Exit_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2968
	cmp 0x00000000, r21
	bz9 .BB.LABEL.41_6
.BB.LABEL.41_5:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2970
	ld.w 0x00000004[r21], r2
	st.b r0, 0x00000000[r2]
.BB.LABEL.41_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2973
	dispose 0x00000000, 0x00000079, [r31]
_SecOC_TxSendSecuredIPDU.1:
	.stack _SecOC_TxSendSecuredIPDU.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2987
	prepare 0x00000071, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2990
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2992
	mov r20, r6
	jarl _SecOC_GetTxSecuredPduPtr.1, r31
	mov r10, r22
	movea 0x00000020, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2995
	mov r20, r6
	jarl _SECOC_IS_TX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.42_6
.BB.LABEL.42_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x00000020, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2997
	mov r20, r6
	jarl _SECOC_CLR_TX_EVENT.1, r31
	mov r20, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 2998
	cmp 0x00000000, r22
	bz9 .BB.LABEL.42_3
.BB.LABEL.42_2:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3001
	jarl _SecOC_TxConstructSecuredIPDU.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3002
	mov r20, r6
	jarl _SecOC_TxBroadcastSecuredIPDU.1, r31
	br9 .BB.LABEL.42_4
.BB.LABEL.42_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3014
	jarl _SecOC_TxConstructAuthenticIPDU.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3015
	mov r20, r6
	jarl _SecOC_TxBroadcastAuthenticIPDU.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3018
	mov r20, r6
	jarl _SecOC_TxConstructCryptographicIPDU.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3019
	mov r20, r6
	jarl _SecOC_TxBroadcastCryptographicIPDU.1, r31
.BB.LABEL.42_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3024
	ld.bu 0x0000000B[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.42_6
.BB.LABEL.42_5:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3028
	ld.hu 0x00000006[r21], r6
	jarl _SecOC_SPduTxConfirmation, r31
.BB.LABEL.42_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3034
	dispose 0x00000000, 0x00000071, [r31]
_SecOC_TxConstructSecuredIPDU.1:
	.stack _SecOC_TxConstructSecuredIPDU.1 = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3052
	prepare 0x000007FD, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3055
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3057
	ld.w 0x0000000C[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3059
	mov r20, r6
	jarl _SecOC_GetTxSecuredPduPtr.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3074
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3075
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.43_2
.BB.LABEL.43_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3079
	ld.hu 0x00000006[r23], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3077
	ld.w 0x00000008[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3078
	ld.w 0x00000024[r21], r22
	br9 .BB.LABEL.43_3
.BB.LABEL.43_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3085
	ld.hu 0x00000010[r22], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3083
	ld.w 0x00000014[r22], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3084
	ld.w 0x0000000C[r22], r22
.BB.LABEL.43_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r7
	mov r24, r6
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3096
	ld.bu 0x00000000[r23], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.43_5
.BB.LABEL.43_4:	; if_break_bb.if_break_bb72_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.43_6
.BB.LABEL.43_5:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3098
	mov r20, r23
	mul 0x00000034, r23, r0
	mov #_SecOC_TxRtData.7, r2
	add r23, r2
	ld.h 0x00000004[r2], r23
	st.h r23, 0x00000002[r3]
	mov 0x00000002, r23
	movea 0x00000002, r3, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3101
	mov r25, r6
	mov r23, r7
	jarl _SecOC_EndianSwap.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3103
	mov r24, r6
	mov r25, r7
	mov r23, r8
	jarl _ILib_memcpy, r31
.BB.LABEL.43_6:	; if_break_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3108
	mov r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r25
	add r2, r25
	ld.hu 0x00000004[r25], r8
	mov r24, r6
	add r23, r6
	mov r22, r7
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3109
	ld.hu 0x00000004[r25], r2
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3113
	ld.bu 0x00000009[r21], r22
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.43_8
.BB.LABEL.43_7:	; if_break_bb72.if_break_bb184_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.43_14
.BB.LABEL.43_8:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3115
	ld.bu 0x00000008[r21], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3117
	mov r25, r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3118
	mov r22, r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3119
	mov r25, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.43_10
.BB.LABEL.43_9:	; if_then_bb95.if_break_bb125_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.43_11
.BB.LABEL.43_10:	; if_then_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3121
	mov r25, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov 0x00000008, r2
	sub r10, r2
.BB.LABEL.43_11:	; if_break_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3126
	mov r20, r5
	mul 0x00000034, r5, r0
	mov #_SecOC_TxRtData.7, r28
	add r5, r28
	add 0x0000000C, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3124
	sub r22, r25
	add r2, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3126
	andi 0x0000FFFF, r25, r8
	andi 0x000000FF, r26, r7
	mov r28, r6
	jarl _SecOC_ArrayShiftLeft.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3127
	mov r24, r6
	add r23, r6
	zxb r27
	mov r28, r7
	mov r27, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3128
	mov r22, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.43_13
.BB.LABEL.43_12:	; if_then_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3131
	mov r22, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov 0x00000008, r2
	sub r10, r2
	movea 0x000000FF, r0, r5
	shl r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3130
	add r23, r27
	add 0xFFFFFFFF, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3131
	mov r24, r23
	add r27, r23
	ld.b 0x00000000[r23], r2
	and r5, r2
	st.b r2, 0x00000000[r23]
	mov r27, r23
	br9 .BB.LABEL.43_14
.BB.LABEL.43_13:	; if_else_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3135
	add r27, r23
.BB.LABEL.43_14:	; if_break_bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3143
	mov r22, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov r10, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3144
	ld.h 0x00000002[r21], r6
	add r25, r6
	zxh r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3147
	movhi HIGHW1(#_SecOC_AuthInfoShiftBits_test), r0, r2
	st.w r25, LOWW(#_SecOC_AuthInfoShiftBits_test)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3148
	movhi HIGHW1(#_SecOC_authInfoTruncLenInBytes), r0, r2
	st.w r26, LOWW(#_SecOC_authInfoTruncLenInBytes)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3149
	mul 0x00000034, r20, r0
	mov #_SecOC_TxRtData.7, r2
	add r20, r2
	movea 0x00000018, r2, r20
	mov r20, r6
	mov r26, r7
	mov r25, r8
	jarl _SecOC_ArrayShiftRight.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3150
	ld.h 0x00000002[r21], r6
	add r22, r6
	zxh r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov r20, r6
	mov r26, r7
	mov r10, r8
	jarl _SecOC_ClearLowBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3154
	mov r24, r6
	add r23, r6
	mov r20, r7
	mov r26, r8
	jarl _SecOC_ArrayOrOp.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3155
	jarl _SchM_Exit_SecOC_TxData, r31
	dispose 0x00000004, 0x000007FD, [r31]
_SecOC_TxConstructAuthenticIPDU.1:
	.stack _SecOC_TxConstructAuthenticIPDU.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3170
	prepare 0x00000479, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3173
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3175
	ld.w 0x0000000C[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3177
	mov r20, r6
	jarl _SecOC_GetTxAuthenticPduPtr.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3185
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3186
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.44_2
.BB.LABEL.44_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3190
	ld.hu 0x00000006[r23], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3188
	ld.w 0x00000008[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3189
	ld.w 0x00000024[r21], r22
	br9 .BB.LABEL.44_3
.BB.LABEL.44_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3196
	ld.hu 0x00000018[r22], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3194
	ld.w 0x0000001C[r22], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3195
	ld.w 0x0000000C[r22], r22
.BB.LABEL.44_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r7
	mov r24, r6
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3202
	ld.bu 0x00000000[r23], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.44_5
.BB.LABEL.44_4:	; if_break_bb.if_break_bb65_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r21
	br9 .BB.LABEL.44_6
.BB.LABEL.44_5:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3204
	mov r20, r21
	mul 0x00000034, r21, r0
	mov #_SecOC_TxRtData.7, r2
	add r21, r2
	ld.h 0x00000004[r2], r21
	st.h r21, 0x00000002[r3]
	mov 0x00000002, r21
	movea 0x00000002, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3206
	mov r23, r6
	mov r21, r7
	jarl _SecOC_EndianSwap.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3209
	mov r24, r6
	mov r23, r7
	mov r21, r8
	jarl _ILib_memcpy, r31
.BB.LABEL.44_6:	; if_break_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3214
	mul 0x00000034, r20, r0
	mov #_SecOC_TxRtData.7, r2
	add r20, r2
	ld.hu 0x00000004[r2], r8
	mov r24, r6
	add r21, r6
	mov r22, r7
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3215
	jarl _SchM_Exit_SecOC_TxData, r31
	dispose 0x00000004, 0x00000479, [r31]
_SecOC_TxConstructCryptographicIPDU.1:
	.stack _SecOC_TxConstructCryptographicIPDU.1 = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3230
	prepare 0x00000FFF, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3233
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3235
	ld.w 0x0000000C[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3237
	mov r20, r6
	jarl _SecOC_GetTxCryptographicPduPtr.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3239
	mov r20, r6
	jarl _SecOC_GetTxUseMessageLinkPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3257
	cmp 0x00000000, r22
	mov r10, r24
	bnz9 .BB.LABEL.45_2
.BB.LABEL.45_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3261
	ld.hu 0x00000004[r23], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3259
	ld.w 0x00000008[r23], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3260
	ld.w 0x00000024[r21], r22
	br9 .BB.LABEL.45_3
.BB.LABEL.45_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3267
	ld.hu 0x00000020[r22], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3265
	ld.w 0x00000024[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3266
	ld.w 0x0000000C[r22], r22
.BB.LABEL.45_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r7
	mov r23, r6
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3273
	ld.bu 0x00000009[r21], r25
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.45_5
.BB.LABEL.45_4:	; if_break_bb.if_break_bb156_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r26
	mov r26, r25
	br9 .BB.LABEL.45_10
.BB.LABEL.45_5:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3276
	ld.bu 0x00000008[r21], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3278
	mov r26, r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3279
	mov r25, r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3281
	mov r26, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.45_7
.BB.LABEL.45_6:	; if_then_bb67.if_break_bb97_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r29
	br9 .BB.LABEL.45_8
.BB.LABEL.45_7:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3283
	mov r26, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov 0x00000008, r29
	sub r10, r29
.BB.LABEL.45_8:	; if_break_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3288
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3289
	mov r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r30
	add r2, r30
	add 0x0000000C, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3286
	sub r25, r26
	add r29, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3289
	andi 0x0000FFFF, r26, r8
	andi 0x000000FF, r27, r7
	mov r30, r6
	jarl _SecOC_ArrayShiftLeft.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3292
	andi 0x000000FF, r28, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3290
	mov r23, r6
	mov r30, r7
	mov r26, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3291
	jarl _SchM_Exit_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3292
	mov r25, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.45_10
.BB.LABEL.45_9:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3295
	mov r25, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov 0x00000008, r26
	sub r10, r26
	movea 0x000000FF, r0, r2
	shl r26, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3294
	zxb r28
	add 0xFFFFFFFF, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3295
	andi 0x0000FFFF, r28, r26
	add r23, r26
	ld.b 0x00000000[r26], r5
	and r2, r5
	st.b r5, 0x00000000[r26]
	mov r28, r26
.BB.LABEL.45_10:	; if_break_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3302
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3304
	mov r25, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov r10, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3305
	ld.hu 0x00000002[r21], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3306
	mov r28, r6
	add r27, r6
	zxh r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3307
	mov r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r5
	add r2, r5
	movea 0x00000018, r5, r30
	mov r30, r6
	mov r29, r7
	mov r27, r8
	jarl _SecOC_ArrayShiftRight.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3308
	ld.h 0x00000002[r21], r6
	add r25, r6
	zxh r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov r30, r6
	mov r29, r7
	mov r10, r8
	jarl _SecOC_ClearLowBit.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3312
	andi 0x0000FFFF, r26, r6
	add r23, r6
	mov r30, r7
	mov r29, r8
	jarl _SecOC_ArrayOrOp.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3313
	mov r25, r6
	add r28, r6
	zxh r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.45_12
.BB.LABEL.45_11:	; if_then_bb213
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3316
	mov r28, r6
	add r25, r6
	zxh r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov 0x00000008, r2
	sub r10, r2
	movea 0x000000FF, r0, r5
	shl r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3315
	zxh r26
	add r26, r29
	add 0xFFFFFFFF, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3316
	andi 0x0000FFFF, r29, r26
	add r23, r26
	ld.b 0x00000000[r26], r2
	and r5, r2
	st.b r2, 0x00000000[r26]
	br9 .BB.LABEL.45_13
.BB.LABEL.45_12:	; if_else_bb239
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3320
	add r26, r29
.BB.LABEL.45_13:	; if_break_bb246
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3325
	cmp 0x00000000, r24
	bz9 .BB.LABEL.45_15
.BB.LABEL.45_14:	; if_then_bb251
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3329
	mul 0x00000034, r20, r0
	mov #_SecOC_TxRtData.7, r2
	add r20, r2
	ld.hu 0x00000004[r2], r7
	ld.hu 0x00000002[r24], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3327
	ld.h 0x00000000[r24], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3329
	mov r22, r6
	jarl _SecOC_ArrayShiftLeft.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3330
	add r28, r25
	andi 0x0000FFFF, r25, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3331
	add r21, r20
	andi 0x0000FFFF, r20, r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3332
	mov r22, r6
	mov r20, r7
	mov r21, r8
	jarl _SecOC_ArrayShiftRight.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3333
	zxh r29
	mov r23, r6
	add r29, r6
	mov r22, r7
	mov r20, r8
	jarl _SecOC_ArrayOrOp.1, r31
.BB.LABEL.45_15:	; if_break_bb288
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3335
	jarl _SchM_Exit_SecOC_TxData, r31
	dispose 0x00000000, 0x00000FFF, [r31]
_SecOC_TxBroadcastSecuredIPDU.1:
	.stack _SecOC_TxBroadcastSecuredIPDU.1 = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3350
	prepare 0x000007F9, 0x0000000C
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3353
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3355
	mov r20, r6
	jarl _SecOC_GetTxSecuredPduPtr.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3365
	ld.bu 0x00000000[r22], r23
	ld.bu 0x00000009[r21], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3360
	ld.h 0x00000002[r21], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3377
	ld.hu 0x00000004[r22], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3364
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3365
	mov r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r5
	add r2, r5
	ld.h 0x00000004[r5], r27
	add r24, r25
	andi 0x0000FFFF, r25, r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	add r27, r23
	add r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3367
	andi 0x0000FFFF, r23, r2
	ld.hu 0x00000006[r22], r5
	cmp r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3373
	cmov 0x00000001, r5, r23, r2
	st.h r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3375
	jarl _SchM_Exit_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3377
	ld.w 0x0000000C[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.46_2
.BB.LABEL.46_1:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3379
	add 0x00000008, r22
	br9 .BB.LABEL.46_3
.BB.LABEL.46_2:	; if_else_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3383
	movea 0x00000014, r2, r22
.BB.LABEL.46_3:	; if_break_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.w 0x00000000[r22], r2
	st.w r2, 0x00000000[r3]
	mov r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3387
	mov r26, r6
	mov r21, r7
	jarl _PduR_Transmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3389
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3390
	mul 0x00000034, r20, r0
	mov #_SecOC_TxRtData.7, r2
	add r20, r2
	ld.h 0x00000008[r21], r5
	st.h r5, 0x00000006[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3391
	st.b r5, 0x00000014[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3392
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3401
	jarl _SchM_Exit_SecOC_TxData, r31
	dispose 0x0000000C, 0x000007F9, [r31]
_SecOC_TxBroadcastAuthenticIPDU.1:
	.stack _SecOC_TxBroadcastAuthenticIPDU.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3416
	prepare 0x00000479, 0x0000000C
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3419
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3421
	mov r20, r6
	jarl _SecOC_GetTxAuthenticPduPtr.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3428
	ld.bu 0x00000000[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3430
	ld.hu 0x00000004[r22], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3427
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3428
	mov r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r5
	add r2, r5
	ld.h 0x00000004[r5], r2
	add r2, r23
	st.h r23, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3429
	jarl _SchM_Exit_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3430
	ld.w 0x0000000C[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.47_2
.BB.LABEL.47_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3432
	add 0x00000008, r22
	br9 .BB.LABEL.47_3
.BB.LABEL.47_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3436
	add 0x0000000C, r2
	mov r2, r22
.BB.LABEL.47_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.w 0x00000000[r22], r2
	st.w r2, 0x00000000[r3]
	mov r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3440
	mov r24, r6
	mov r21, r7
	jarl _PduR_Transmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3442
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3443
	mul 0x00000034, r20, r0
	mov #_SecOC_TxRtData.7, r2
	add r20, r2
	ld.h 0x00000008[r21], r5
	st.h r5, 0x00000008[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3444
	st.b r5, 0x00000014[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3445
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3454
	jarl _SchM_Exit_SecOC_TxData, r31
	dispose 0x0000000C, 0x00000479, [r31]
_SecOC_TxBroadcastCryptographicIPDU.1:
	.stack _SecOC_TxBroadcastCryptographicIPDU.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3469
	prepare 0x00000079, 0x0000000C
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3472
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3474
	mov r20, r6
	jarl _SecOC_GetTxCryptographicPduPtr.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3476
	mov r20, r6
	jarl _SecOC_GetTxUseMessageLinkPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3485
	cmp 0x00000000, r10
	ld.bu 0x00000009[r21], r6
	ld.hu 0x00000002[r21], r2
	ld.hu 0x00000002[r22], r23
	bnz9 .BB.LABEL.48_2
.BB.LABEL.48_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.48_3
.BB.LABEL.48_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3487
	ld.hu 0x00000000[r10], r5
.BB.LABEL.48_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3493
	add r2, r6
	add r5, r6
	zxh r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	st.h r10, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3494
	ld.w 0x0000000C[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.48_5
.BB.LABEL.48_4:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3496
	add 0x00000008, r22
	br9 .BB.LABEL.48_6
.BB.LABEL.48_5:	; if_else_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3500
	movea 0x00000024, r2, r22
.BB.LABEL.48_6:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.w 0x00000000[r22], r2
	st.w r2, 0x00000000[r3]
	mov r3, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3504
	mov r23, r6
	mov r21, r7
	jarl _PduR_Transmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3506
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3507
	mul 0x00000034, r20, r0
	mov #_SecOC_TxRtData.7, r2
	add r20, r2
	ld.h 0x00000008[r21], r5
	st.h r5, 0x0000000A[r2]
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3508
	st.b r5, 0x00000014[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3509
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3518
	jarl _SchM_Exit_SecOC_TxData, r31
	dispose 0x0000000C, 0x00000079, [r31]
_SecOC_TxChannelReset.1:
	.stack _SecOC_TxChannelReset.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3598
	prepare 0x00000079, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3601
	jarl _SecOC_GetTxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3605
	jarl _SchM_Enter_SecOC_TxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3606
	mov r20, r2
	mul 0x00000034, r2, r0
	mov #_SecOC_TxRtData.7, r22
	add r2, r22
	st.w r0, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3607
	st.h r0, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3608
	st.h r0, 0x00000006[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3609
	st.h r0, 0x00000008[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3610
	st.h r0, 0x0000000A[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3611
	addi 0x0000000C, r22, r6
	mov 0x00000000, r23
	mov 0x00000008, r8
	mov r23, r7
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3612
	st.b r0, 0x00000014[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3613
	st.h r0, 0x00000016[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3614
	movea 0x00000018, r22, r6
	movea 0x00000011, r0, r8
	mov r23, r7
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3615
	st.w r0, 0x0000002C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3616
	st.b r0, 0x00000030[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3622
	ld.w 0x0000000C[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.49_2
.BB.LABEL.49_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3624
	ld.w 0x00000004[r2], r2
	st.b r0, 0x00000000[r2]
.BB.LABEL.49_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x000000FF, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3628
	mov r20, r6
	jarl _SECOC_CLR_TX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3629
	jarl _SchM_Exit_SecOC_TxData, r31
	dispose 0x00000000, 0x00000079, [r31]
_SECOC_SET_RX_EVENT.1:
	.stack _SECOC_SET_RX_EVENT.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3647
	add r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3649
	mov #_SecOC_RxEvent.4, r2
	add r6, r2
	ld.h 0x00000000[r2], r5
	or r7, r5
	st.h r5, 0x00000000[r2]
	jmp [r31]
_SECOC_CLR_RX_EVENT.1:
	.stack _SECOC_CLR_RX_EVENT.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3665
	add r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3667
	mov #_SecOC_RxEvent.4, r2
	add r6, r2
	ld.h 0x00000000[r2], r5
	not r7, r6
	and r6, r5
	st.h r5, 0x00000000[r2]
	jmp [r31]
_SECOC_IS_RX_EVENT.1:
	.stack _SECOC_IS_RX_EVENT.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3683
	add r6, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3685
	mov #_SecOC_RxEvent.4, r2
	add r6, r2
	ld.hu 0x00000000[r2], r2
	tst r7, r2
	setf 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3686
	jmp [r31]
_SecOC_GetRxPduProcessingPtr.1:
	.stack _SecOC_GetRxPduProcessingPtr.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3700
	movhi HIGHW1(#_SecOC_ConfigPtr.2), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3702
	ld.w LOWW(#_SecOC_ConfigPtr.2)[r2], r2
	ld.w 0x00000000[r2], r10
	mul 0x00000044, r6, r0
	add r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3703
	jmp [r31]
_SecOC_GetRxAuthenticPduLayerPtr.1:
	.stack _SecOC_GetRxAuthenticPduLayerPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3718
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3720
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	ld.w 0x0000002C[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3721
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_GetRxSecuredPduLayerPtr.1:
	.stack _SecOC_GetRxSecuredPduLayerPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3736
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3738
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	ld.w 0x00000034[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3739
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_GetRxSecuredPduPtr.1:
	.stack _SecOC_GetRxSecuredPduPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3753
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3755
	jarl _SecOC_GetRxSecuredPduLayerPtr.1, r31
	ld.w 0x00000000[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3756
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_GetRxSecuredPduCollectionPtr.1:
	.stack _SecOC_GetRxSecuredPduCollectionPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3771
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3773
	jarl _SecOC_GetRxSecuredPduLayerPtr.1, r31
	ld.w 0x00000004[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3774
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_GetRxAuthenticPduPtr.1:
	.stack _SecOC_GetRxAuthenticPduPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3788
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3790
	jarl _SecOC_GetRxSecuredPduCollectionPtr.1, r31
	ld.w 0x00000004[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3791
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_GetRxCryptographicPduPtr.1:
	.stack _SecOC_GetRxCryptographicPduPtr.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3806
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3808
	jarl _SecOC_GetRxSecuredPduCollectionPtr.1, r31
	ld.w 0x00000008[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3809
	dispose 0x00000000, 0x00000001, [r31]
_SecOC_RxIfSecuredPduIndication.1:
	.stack _SecOC_RxIfSecuredPduIndication.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3828
	prepare 0x00000679, 0x0000000C
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3834
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3836
	ld.w 0x00000028[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3844
	mov r20, r6
	jarl _SecOC_GetRxSecuredPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3846
	ld.bu 0x00000007[r10], r2
	cmp 0x00000001, r2
	mov r10, r25
	bz9 .BB.LABEL.60_3
.BB.LABEL.60_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.60_20
.BB.LABEL.60_2:	; bb32
	ld.hu 0x00000008[r22], r2
	ld.hu 0x00000008[r25], r5
	cmp r5, r2
	bl9 .BB.LABEL.60_20
.BB.LABEL.60_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3851
	ld.w 0x00000000[r22], r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3852
	ld.hu 0x00000008[r22], r2
	st.h r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3857
	ld.hu 0x00000008[r25], r5
	cmp r2, r5
	bnc9 .BB.LABEL.60_5
.BB.LABEL.60_4:	; if_then_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3859
	st.h r5, 0x00000008[r3]
.BB.LABEL.60_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3862
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r22
	add r2, r22
	ld.w 0x00000000[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.60_10
.BB.LABEL.60_6:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3864
	ld.w 0x00000010[r23], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.60_9
.BB.LABEL.60_7:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.60_10
.BB.LABEL.60_8:	; switch_clause_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3874
	mov r20, r6
	jarl _SecOC_RxChannelReset.1, r31
	br9 .BB.LABEL.60_10
.BB.LABEL.60_9:	; switch_clause_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3880
	mov r20, r6
	mov r21, r7
	jarl _SecOC_DataInQueue.1, r31
.BB.LABEL.60_10:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3889
	ld.w 0x00000000[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.60_20
.BB.LABEL.60_11:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3891
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.60_13
.BB.LABEL.60_12:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3894
	addi 0x0000000A, r25, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3893
	add 0x0000000C, r25
	br9 .BB.LABEL.60_14
.BB.LABEL.60_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3899
	movea 0x00000010, r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3898
	movea 0x00000014, r24, r25
.BB.LABEL.60_14:	; if_break_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.hu 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3902
	ld.hu 0x00000008[r3], r5
	cmp r5, r2
	ld.w 0x00000000[r25], r21
	bl9 .BB.LABEL.60_20
.BB.LABEL.60_15:	; if_then_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3904
	cmp 0x00000000, r24
	bz9 .BB.LABEL.60_17
.BB.LABEL.60_16:	; bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.w 0x00000004[r24], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.60_20
.BB.LABEL.60_17:	; if_then_bb150
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3906
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3907
	ld.hu 0x00000008[r3], r8
	ld.w 0x00000000[r3], r7
	mov r21, r6
	jarl _ILib_memcpy, r31
	mov 0x00000001, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3909
	mov r20, r6
	mov r21, r7
	jarl _SECOC_SET_RX_EVENT.1, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3910
	mov r20, r6
	jarl _SECOC_SET_RX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3911
	st.w r21, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3912
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	mov r3, r5
	ld.h 0x00000008[r5], r5
	st.h r5, 0x00000006[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3914
	st.h r0, 0x00000036[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3915
	st.h r0, 0x00000034[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3916
	cmp 0x00000000, r24
	bz9 .BB.LABEL.60_19
.BB.LABEL.60_18:	; if_then_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3918
	ld.w 0x00000004[r24], r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.60_19:	; if_break_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3920
	jarl _SchM_Exit_SecOC_RxData, r31
.BB.LABEL.60_20:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3930
	dispose 0x0000000C, 0x00000679, [r31]
_SecOC_RxIfAuthenticPduIndication.1:
	.stack _SecOC_RxIfAuthenticPduIndication.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3948
	prepare 0x00000479, 0x0000000C
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3951
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3953
	ld.w 0x00000028[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3961
	mov r20, r6
	jarl _SecOC_GetRxAuthenticPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3963
	ld.bu 0x00000006[r10], r2
	cmp 0x00000001, r2
	mov r10, r24
	bz9 .BB.LABEL.61_3
.BB.LABEL.61_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.61_20
.BB.LABEL.61_2:	; bb31
	ld.hu 0x00000008[r21], r2
	ld.hu 0x00000008[r24], r5
	cmp r5, r2
	bl9 .BB.LABEL.61_20
.BB.LABEL.61_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3968
	ld.w 0x00000000[r21], r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3969
	ld.hu 0x00000008[r21], r2
	st.h r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3974
	ld.hu 0x00000008[r24], r5
	cmp r2, r5
	bnc9 .BB.LABEL.61_5
.BB.LABEL.61_4:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3976
	st.h r5, 0x00000008[r3]
.BB.LABEL.61_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3979
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r21
	add r2, r21
	ld.w 0x00000000[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.61_8
.BB.LABEL.61_6:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3981
	ld.w 0x00000010[r22], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.61_8
.BB.LABEL.61_7:	; switch_clause_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 3991
	mov r20, r6
	jarl _SecOC_RxChannelReset.1, r31
.BB.LABEL.61_8:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4004
	ld.w 0x00000000[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.61_20
.BB.LABEL.61_9:	; if_then_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4006
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.61_11
.BB.LABEL.61_10:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4009
	addi 0x0000000A, r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4008
	add 0x0000000C, r24
	br9 .BB.LABEL.61_12
.BB.LABEL.61_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4014
	movea 0x00000018, r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4013
	movea 0x0000001C, r23, r24
.BB.LABEL.61_12:	; if_break_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.hu 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4017
	ld.hu 0x00000008[r3], r5
	cmp r5, r2
	ld.w 0x00000000[r24], r22
	bl9 .BB.LABEL.61_20
.BB.LABEL.61_13:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4019
	cmp 0x00000000, r23
	bz9 .BB.LABEL.61_15
.BB.LABEL.61_14:	; bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.w 0x00000004[r23], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.61_20
.BB.LABEL.61_15:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4021
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4022
	ld.hu 0x00000008[r3], r8
	ld.w 0x00000000[r3], r7
	mov r22, r6
	jarl _ILib_memcpy, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4025
	mov r20, r6
	jarl _SECOC_SET_RX_EVENT.1, r31
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4026
	mov r20, r6
	jarl _SECOC_SET_RX_EVENT.1, r31
	mov 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4027
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.61_17
.BB.LABEL.61_16:	; if_then_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4029
	st.w r2, 0x00000000[r21]
.BB.LABEL.61_17:	; if_break_bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4031
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	mov r3, r5
	ld.h 0x00000008[r5], r5
	st.h r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4032
	st.h r0, 0x00000036[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4033
	cmp 0x00000000, r23
	bz9 .BB.LABEL.61_19
.BB.LABEL.61_18:	; if_then_bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4035
	ld.w 0x00000004[r23], r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.61_19:	; if_break_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4037
	jarl _SchM_Exit_SecOC_RxData, r31
.BB.LABEL.61_20:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4047
	dispose 0x0000000C, 0x00000479, [r31]
_SecOC_RxIfCryptographicPduIndication.1:
	.stack _SecOC_RxIfCryptographicPduIndication.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4065
	prepare 0x00000479, 0x0000000C
	mov r6, r20
	mov r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4068
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4070
	ld.w 0x00000028[r22], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4079
	mov r20, r6
	jarl _SecOC_GetRxCryptographicPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4081
	ld.bu 0x00000004[r10], r2
	cmp 0x00000001, r2
	mov r10, r24
	bz9 .BB.LABEL.62_3
.BB.LABEL.62_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.62_20
.BB.LABEL.62_2:	; bb31
	ld.hu 0x00000008[r21], r2
	ld.hu 0x00000006[r24], r5
	cmp r5, r2
	bl9 .BB.LABEL.62_20
.BB.LABEL.62_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4086
	ld.w 0x00000000[r21], r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4087
	ld.hu 0x00000008[r21], r2
	st.h r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4092
	ld.hu 0x00000006[r24], r5
	cmp r2, r5
	bnc9 .BB.LABEL.62_5
.BB.LABEL.62_4:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4094
	st.h r5, 0x00000008[r3]
.BB.LABEL.62_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4097
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r21
	add r2, r21
	ld.w 0x00000000[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.62_8
.BB.LABEL.62_6:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4099
	ld.w 0x00000010[r22], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.62_8
.BB.LABEL.62_7:	; switch_clause_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4109
	mov r20, r6
	jarl _SecOC_RxChannelReset.1, r31
.BB.LABEL.62_8:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4122
	ld.w 0x00000000[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.62_20
.BB.LABEL.62_9:	; if_then_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4124
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.62_11
.BB.LABEL.62_10:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4127
	addi 0x00000008, r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4126
	add 0x0000000C, r24
	br9 .BB.LABEL.62_12
.BB.LABEL.62_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4132
	movea 0x00000020, r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4131
	movea 0x00000024, r23, r24
.BB.LABEL.62_12:	; if_break_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.hu 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4135
	ld.hu 0x00000008[r3], r5
	cmp r5, r2
	ld.w 0x00000000[r24], r22
	bl9 .BB.LABEL.62_20
.BB.LABEL.62_13:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4137
	cmp 0x00000000, r23
	bz9 .BB.LABEL.62_15
.BB.LABEL.62_14:	; bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.w 0x00000004[r23], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.62_20
.BB.LABEL.62_15:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4139
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4140
	ld.hu 0x00000008[r3], r8
	ld.w 0x00000000[r3], r7
	mov r22, r6
	jarl _ILib_memcpy, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4143
	mov r20, r6
	jarl _SECOC_SET_RX_EVENT.1, r31
	mov 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4144
	mov r20, r6
	jarl _SECOC_SET_RX_EVENT.1, r31
	mov 0x00000004, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4145
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.62_17
.BB.LABEL.62_16:	; if_then_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4147
	st.w r2, 0x00000000[r21]
.BB.LABEL.62_17:	; if_break_bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4149
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	mov r3, r5
	ld.h 0x00000008[r5], r5
	st.h r5, 0x0000000A[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4150
	st.h r0, 0x00000036[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4151
	cmp 0x00000000, r23
	bz9 .BB.LABEL.62_19
.BB.LABEL.62_18:	; if_then_bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4153
	ld.w 0x00000004[r23], r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.62_19:	; if_break_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4155
	jarl _SchM_Exit_SecOC_RxData, r31
.BB.LABEL.62_20:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4165
	dispose 0x0000000C, 0x00000479, [r31]
_SecOC_RxParseSecuredIpdu.1:
	.stack _SecOC_RxParseSecuredIpdu.1 = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4181
	prepare 0x00000FFF, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4184
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4187
	ld.w 0x00000028[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4189
	mov r20, r6
	jarl _SecOC_GetRxSecuredPduPtr.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4204
	ld.bu 0x0000000F[r21], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4200
	ld.w 0x0000002C[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4211
	ld.hu 0x00000008[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4205
	mov r24, r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r26
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4211
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.63_2
.BB.LABEL.63_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000002, r7
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.63_8
.BB.LABEL.63_2:	; bb56
	mov 0x00000001, r7
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.63_5
.BB.LABEL.63_3:	; bb62
	mov 0x00000004, r7
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.63_5
.BB.LABEL.63_4:	; bb75
	mov 0x00000008, r7
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.63_8
.BB.LABEL.63_5:	; bb95
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.w 0x00000044[r5], r2
	addi 0xFFFFFFBF, r2, r0
	movea 0x00000044, r5, r2
	bnz9 .BB.LABEL.63_7
.BB.LABEL.63_6:	; bb101
	mov r20, r5
	mul 0x00000050, r5, r0
	mov #_SecOC_RxRtData.5, r6
	add r5, r6
	ld.bu 0x00000048[r6], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.63_8
.BB.LABEL.63_7:	; bb115
	ld.w 0x00000000[r2], r2
	addi 0xFFFFFFBD, r2, r0
	bnz17 .BB.LABEL.63_46
.BB.LABEL.63_8:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4225
	cmp 0x00000000, r23
	bz17 .BB.LABEL.63_23
.BB.LABEL.63_9:	; if_then_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4228
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	movea 0x00000030, r5, r27
	cmp 0x00000000, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4227
	ld.bu 0x00000006[r23], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4228
	bnz9 .BB.LABEL.63_11
.BB.LABEL.63_10:	; if_then_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4230
	ld.w 0x0000003C[r21], r22
	st.w r22, 0x00000000[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4231
	addi 0x0000000C, r23, r22
	br9 .BB.LABEL.63_12
.BB.LABEL.63_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4235
	ld.w 0x0000000C[r22], r2
	st.w r2, 0x00000000[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4236
	movea 0x00000014, r22, r22
.BB.LABEL.63_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4240
	ld.bu 0x00000000[r23], r29
	cmp 0x00000000, r29
	ld.w 0x00000000[r22], r22
	bnz9 .BB.LABEL.63_16
.BB.LABEL.63_13:	; if_then_bb173
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4244
	ld.bu 0x00000007[r23], r25
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.63_15
.BB.LABEL.63_14:	; if_then_bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4246
	mov r20, r6
	jarl _SecOC_GetRxAuthenticPduLayerPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4247
	ld.hu 0x00000008[r10], r10
	mov 0x00000000, r25
	br9 .BB.LABEL.63_19
.BB.LABEL.63_15:	; if_else_bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4253
	mov r20, r25
	mul 0x00000050, r25, r0
	mov #_SecOC_RxRtData.5, r2
	add r25, r2
	ld.h 0x00000006[r2], r10
	ld.h 0x00000040[r21], r25
	sub r25, r10
	mov 0x00000000, r25
	br9 .BB.LABEL.63_19
.BB.LABEL.63_16:	; if_else_bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4260
	mov r29, r6
	mov r22, r7
	jarl _SecOC_RxGetPduLength.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4264
	cmp r25, r10
	bh9 .BB.LABEL.63_18
.BB.LABEL.63_17:	; if_else_bb199.if_break_bb212_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r25
	br9 .BB.LABEL.63_19
.BB.LABEL.63_18:	; if_then_bb210
	mov 0x00000001, r25
.BB.LABEL.63_19:	; if_break_bb212
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4270
	cmp 0x00000000, r25
	bnz17 .BB.LABEL.63_40
.BB.LABEL.63_20:	; if_then_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4272
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4275
	ld.w 0x00000000[r27], r6
	mov r22, r7
	add r29, r7
	andi 0x0000FFFF, r23, r27
	mov r27, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4278
	ld.bu 0x0000000F[r21], r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	movea 0x00000016, r5, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4276
	add r27, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4278
	andi 0x0000FFFF, r29, r7
	add r22, r7
	mov r30, r6
	mov r10, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4282
	mov r24, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.63_22
.BB.LABEL.63_21:	; if_then_bb258
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4284
	mov r24, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov 0x00000008, r8
	sub r10, r8
	zxh r8
	andi 0x000000FF, r26, r7
	mov r30, r6
	jarl _SecOC_ArrayShiftRight.1, r31
.BB.LABEL.63_22:	; if_break_bb271
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4290
	ld.bu 0x0000000F[r21], r8
	ld.hu 0x00000040[r21], r7
	zxh r29
	add r29, r22
	mov r22, r6
	jarl _SecOC_ArrayShiftLeft.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4294
	ld.hu 0x00000008[r21], r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r20, r21
	mul 0x00000050, r21, r0
	mov #_SecOC_RxRtData.5, r24
	add r21, r24
	movea 0x0000001E, r24, r6
	mov r22, r7
	jr .BB.LABEL.63_38
.BB.LABEL.63_23:	; if_else_bb297
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4303
	mov r20, r6
	jarl _SecOC_GetRxAuthenticPduPtr.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4304
	mov r20, r6
	jarl _SecOC_GetRxCryptographicPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4308
	mov r20, r28
	mul 0x00000050, r28, r0
	mov #_SecOC_RxRtData.5, r2
	add r28, r2
	movea 0x00000030, r2, r27
	cmp 0x00000000, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4305
	ld.w 0x00000034[r21], r28
	ld.w 0x00000004[r28], r28
	ld.bu 0x00000000[r28], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4308
	bnz9 .BB.LABEL.63_25
.BB.LABEL.63_24:	; if_then_bb313
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4310
	ld.w 0x0000003C[r21], r22
	st.w r22, 0x00000000[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4312
	add 0x0000000C, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4311
	addi 0x0000000C, r23, r22
	br9 .BB.LABEL.63_26
.BB.LABEL.63_25:	; if_else_bb325
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4316
	ld.w 0x0000000C[r22], r2
	st.w r2, 0x00000000[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4318
	movea 0x00000024, r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4317
	movea 0x0000001C, r22, r22
.BB.LABEL.63_26:	; if_break_bb337
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4322
	ld.bu 0x00000000[r23], r29
	cmp 0x00000000, r29
	ld.w 0x00000000[r22], r22
	ld.w 0x00000000[r10], r30
	bnz9 .BB.LABEL.63_30
.BB.LABEL.63_27:	; if_then_bb346
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4326
	ld.bu 0x00000006[r23], r25
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.63_29
.BB.LABEL.63_28:	; if_then_bb354
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.hu 0x00000008[r23], r10
	mov 0x00000000, r25
	br9 .BB.LABEL.63_33
.BB.LABEL.63_29:	; if_else_bb358
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4334
	mov r20, r25
	mul 0x00000050, r25, r0
	mov #_SecOC_RxRtData.5, r23
	add r25, r23
	br9 .BB.LABEL.63_28
.BB.LABEL.63_30:	; if_else_bb363
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4341
	mov r29, r6
	mov r22, r7
	jarl _SecOC_RxGetPduLength.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4345
	cmp r25, r10
	bh9 .BB.LABEL.63_32
.BB.LABEL.63_31:	; if_else_bb363.if_break_bb376_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r25
	br9 .BB.LABEL.63_33
.BB.LABEL.63_32:	; if_then_bb374
	mov 0x00000001, r25
.BB.LABEL.63_33:	; if_break_bb376
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4351
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.63_40
.BB.LABEL.63_34:	; if_then_bb382
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4354
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4356
	ld.w 0x00000000[r27], r6
	mov r22, r7
	add r29, r7
	mov r23, r8
	jarl _ILib_memcpy, r31
	mov 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4358
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.63_39
.BB.LABEL.63_35:	; if_then_bb401
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4361
	ld.bu 0x0000000F[r21], r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	movea 0x00000016, r5, r22
	mov r22, r6
	mov r30, r7
	mov r10, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4365
	mov r24, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.63_37
.BB.LABEL.63_36:	; if_then_bb420
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4367
	mov r24, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	mov 0x00000008, r8
	sub r10, r8
	zxh r8
	andi 0x000000FF, r26, r7
	mov r22, r6
	jarl _SecOC_ArrayShiftRight.1, r31
.BB.LABEL.63_37:	; if_break_bb433
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4373
	ld.bu 0x0000000F[r21], r8
	ld.hu 0x00000040[r21], r7
	mov r30, r6
	jarl _SecOC_ArrayShiftLeft.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4377
	ld.hu 0x00000008[r21], r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	movea 0x0000001E, r5, r6
	mov r30, r7
.BB.LABEL.63_38:	; if_break_bb433
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov r10, r8
	jarl _ILib_memcpy, r31
.BB.LABEL.63_39:	; if_break_bb452
	jarl _SchM_Exit_SecOC_RxData, r31
.BB.LABEL.63_40:	; if_break_bb454
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4386
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	st.h r23, 0x0000000C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4388
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4389
	cmp 0x00000001, r28
	bnz9 .BB.LABEL.63_42
.BB.LABEL.63_41:	; if_then_bb463
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x00000010, r0, r7
	br9 .BB.LABEL.63_43
.BB.LABEL.63_42:	; if_else_bb465
	movea 0x00000040, r0, r7
.BB.LABEL.63_43:	; if_else_bb465
	mov r20, r6
	jarl _SECOC_SET_RX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4399
	jarl _SchM_Exit_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4412
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.63_45
.BB.LABEL.63_44:	; if_then_bb473
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4415
	mov r20, r6
	jarl _SecOC_RxChannelReset.1, r31
.BB.LABEL.63_45:	; if_break_bb475
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4417
	jarl _SchM_Enter_SecOC_RxData, r31
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4418
	mov r20, r6
	jarl _SECOC_CLR_RX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4419
	jarl _SchM_Exit_SecOC_RxData, r31
	dispose 0x00000000, 0x00000FFF, [r31]
.BB.LABEL.63_46:	; if_else_bb477
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4423
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	st.w r0, 0x00000000[r2]
	dispose 0x00000000, 0x00000FFF, [r31]
_SecOC_RxVerifyProcee.1:
	.stack _SecOC_RxVerifyProcee.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4440
	prepare 0x00000071, 0x00000000
	mov r6, r20
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4445
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.64_16
.BB.LABEL.64_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4448
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.bu 0x00000048[r5], r2
	st.b r2, 0x00000049[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4450
	ld.w 0x00000044[r5], r6
	cmp 0x00000001, r6
	movea 0x00000044, r5, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4448
	movea 0x00000048, r5, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4450
	bnz9 .BB.LABEL.64_3
.BB.LABEL.64_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	cmp 0x00000000, r2
	bz9 .BB.LABEL.64_8
.BB.LABEL.64_3:	; if_then_bb
	cmp 0x00000002, r6
	bz9 .BB.LABEL.64_8
.BB.LABEL.64_4:	; if_then_bb
	addi 0xFFFFFFC0, r6, r0
	bz9 .BB.LABEL.64_8
.BB.LABEL.64_5:	; bb58
	addi 0xFFFFFFBF, r6, r0
	bnz9 .BB.LABEL.64_7
.BB.LABEL.64_6:	; bb64
	ld.bu 0x00000000[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.64_8
.BB.LABEL.64_7:	; bb86
	ld.w 0x00000000[r21], r2
	addi 0xFFFFFFBE, r2, r0
	bnz9 .BB.LABEL.64_9
.BB.LABEL.64_8:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4457
	mov r20, r6
	jarl _SecOC_RxVerifyAuthenticationInfo.1, r31
	br9 .BB.LABEL.64_13
.BB.LABEL.64_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4462
	mov r20, r6
	jarl _SECOC_CLR_RX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4463
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	mov 0x00000004, r2
	st.w r2, 0x0000004C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4465
	ld.w 0x00000000[r21], r2
	addi 0xFFFFFFBF, r2, r0
	bz9 .BB.LABEL.64_11
.BB.LABEL.64_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	addi 0xFFFFFFBD, r2, r0
	bnz9 .BB.LABEL.64_12
.BB.LABEL.64_11:	; if_then_bb124
	movea 0x00000040, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4469
	mov r20, r6
	jarl _SECOC_SET_RX_EVENT.1, r31
	br9 .BB.LABEL.64_13
.BB.LABEL.64_12:	; if_else_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4475
	mov r20, r6
	jarl _SecOC_RxReportVerifyStatus.1, r31
.BB.LABEL.64_13:	; if_break_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4480
	ld.bu 0x00000000[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.64_16
.BB.LABEL.64_14:	; bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.64_16
.BB.LABEL.64_15:	; if_then_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4482
	ld.b 0x00000000[r22], r2
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000000[r22]
.BB.LABEL.64_16:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4485
	dispose 0x00000000, 0x00000071, [r31]
_SecOC_RxVerifyAuthenticationInfo.1:
	.stack _SecOC_RxVerifyAuthenticationInfo.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4499
	prepare 0x00000079, 0x0000000C
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4502
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4506
	ld.w 0x00000024[r21], r22
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4510
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz17 .BB.LABEL.65_17
.BB.LABEL.65_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4512
	mov r20, r6
	jarl _SecOC_RxCalcDataToAuthenticatorLength.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4513
	mov r20, r6
	jarl _SecOC_RxConstructDataToAuthenticator.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4514
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.65_17
.BB.LABEL.65_2:	; if_then_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4517
	ld.w 0x00000008[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.65_4
.BB.LABEL.65_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4521
	ld.hu 0x00000008[r21], r2
	ld.w 0x00000000[r22], r6
	mov r20, r5
	mul 0x00000050, r5, r0
	mov #_SecOC_RxRtData.5, r7
	add r5, r7
	movea 0x00000040, r7, r5
	st.w r5, 0x00000008[r3]
	st.w r2, 0x00000004[r3]
	movea 0x0000001E, r7, r2
	st.w r2, 0x00000000[r3]
	mov #_SecOC_DataToAuthenticator.3, r8
	mov 0x00000007, r7
	mov r23, r9
	jarl _Csm_MacVerify, r31
.BB.LABEL.65_4:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4550
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.65_9
.BB.LABEL.65_5:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4552
	mov r20, r6
	jarl _SECOC_CLR_RX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4553
	ld.w 0x00000004[r22], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.65_7
.BB.LABEL.65_6:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x00000040, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4555
	mov r20, r6
	jarl _SECOC_SET_RX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4560
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	st.h r0, 0x00000034[r2]
	dispose 0x0000000C, 0x00000079, [r31]
.BB.LABEL.65_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.65_8:	; if_else_bb
	mov r20, r6
	jarl _SECOC_SET_RX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4597
	dispose 0x0000000C, 0x00000079, [r31]
.BB.LABEL.65_9:	; if_else_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4567
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.65_11
.BB.LABEL.65_10:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4571
	mov r20, r6
	jarl _SecOC_RxAuthenticationBuildRetry.1, r31
	dispose 0x0000000C, 0x00000079, [r31]
.BB.LABEL.65_11:	; if_else_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4577
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.w 0x00000044[r5], r2
	addi 0xFFFFFFC0, r2, r0
	bz9 .BB.LABEL.65_15
.BB.LABEL.65_12:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	addi 0xFFFFFFBE, r2, r0
	bnz9 .BB.LABEL.65_14
.BB.LABEL.65_13:	; bb84
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.bu 0x00000049[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.65_15
.BB.LABEL.65_14:	; bb105
	movhi HIGHW1(#_SecOC_ConfigPtr.2), r0, r2
	ld.w LOWW(#_SecOC_ConfigPtr.2)[r2], r2
	ld.w 0x00000010[r2], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.65_16
.BB.LABEL.65_15:	; if_then_bb121
	movea 0x00000040, r0, r7
	br9 .BB.LABEL.65_8
.BB.LABEL.65_16:	; if_else_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4587
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x0000004C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4589
	mov r20, r6
	jarl _SecOC_RxReportVerifyStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4592
	mov r20, r6
	jarl _SecOC_RxChannelReset.1, r31
.BB.LABEL.65_17:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4597
	dispose 0x0000000C, 0x00000079, [r31]
_SecOC_RxCalcDataToAuthenticatorLength.1:
	.stack _SecOC_RxCalcDataToAuthenticatorLength.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4611
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4614
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4619
	ld.w 0x00000030[r10], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.66_2
.BB.LABEL.66_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4622
	ld.w 0x00000000[r2], r20
	mov 0x00000002, r21
	br9 .BB.LABEL.66_3
.BB.LABEL.66_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4627
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r21
	add r20, r21
	ld.hu 0x0000000C[r21], r21
	mov 0x00000002, r20
.BB.LABEL.66_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4630
	ld.bu 0x0000000E[r10], r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	add r21, r20
	add r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4633
	dispose 0x00000000, 0x00000061, [r31]
_SecOC_RxConstructDataToAuthenticator.1:
	.stack _SecOC_RxConstructDataToAuthenticator.1 = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4648
	prepare 0x00000779, 0x00000018
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4651
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4653
	ld.w 0x00000028[r21], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4657
	mov r20, r6
	jarl _SecOC_GetRxSecuredPduPtr.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4668
	jarl _SchM_Enter_SecOC_Authentication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4670
	mov #_SecOC_DataToAuthenticator.3, r24
	movea 0x0000003A, r0, r8
	mov 0x00000000, r7
	mov r24, r6
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4678
	ld.h 0x0000000A[r21], r2
	st.h r2, 0x00000012[r3]
	mov 0x00000002, r25
	movea 0x00000012, r3, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4680
	mov r26, r6
	mov r25, r7
	jarl _SecOC_EndianSwap.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4682
	mov r24, r6
	mov r26, r7
	mov r25, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4685
	ld.w 0x00000030[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.67_2
.BB.LABEL.67_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4689
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4688
	ld.w 0x00000000[r2], r24
	br9 .BB.LABEL.67_3
.BB.LABEL.67_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4695
	mov r20, r5
	mul 0x00000050, r5, r0
	mov #_SecOC_RxRtData.5, r24
	add r5, r24
	ld.hu 0x0000000C[r24], r24
	mov 0x00000000, r5
.BB.LABEL.67_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4699
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r6
	add r2, r6
	ld.w 0x00000030[r6], r7
	add r5, r7
	mov #_SecOC_DataToAuthenticator.3, r6
	add 0x00000002, r6
	mov r24, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4704
	jarl _SchM_Exit_SecOC_Authentication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4708
	ld.hu 0x00000000[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.67_5
.BB.LABEL.67_4:	; if_break_bb.if_break_bb127_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r25
	br9 .BB.LABEL.67_13
.BB.LABEL.67_5:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4710
	cmp 0x00000000, r23
	bz9 .BB.LABEL.67_9
.BB.LABEL.67_6:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4713
	cmp 0x00000000, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4712
	ld.bu 0x00000000[r23], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4713
	bnz9 .BB.LABEL.67_8
.BB.LABEL.67_7:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4715
	ld.w 0x0000000C[r23], r22
	add r22, r25
	br9 .BB.LABEL.67_12
.BB.LABEL.67_8:	; if_else_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4719
	ld.w 0x00000014[r22], r22
	add r22, r25
	br9 .BB.LABEL.67_12
.BB.LABEL.67_9:	; if_else_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4724
	mov r20, r6
	jarl _SecOC_GetRxAuthenticPduPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4726
	cmp 0x00000000, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4725
	ld.bu 0x00000000[r10], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4726
	bnz9 .BB.LABEL.67_11
.BB.LABEL.67_10:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4728
	ld.w 0x0000000C[r10], r22
	add r22, r25
	br9 .BB.LABEL.67_12
.BB.LABEL.67_11:	; if_else_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4732
	ld.w 0x0000001C[r22], r2
	add r2, r25
.BB.LABEL.67_12:	; if_break_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4735
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.hu 0x0000000C[r5], r7
	ld.hu 0x00000002[r21], r8
	mov r25, r6
	jarl _SecOC_ArrayShiftLeft.1, r31
.BB.LABEL.67_13:	; if_break_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4746
	ld.bu 0x0000000E[r21], r2
	st.w r2, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4748
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	movea 0x00000016, r5, r7
	ld.bu 0x0000001C[r21], r2
	mov #_SecOC_RxRtData.5, r5
	cmp 0x00000001, r2
	ld.bu 0x0000000F[r21], r8
	ld.hu 0x0000000C[r21], r6
	mov r20, r2
	mul 0x00000050, r2, r0
	bnz9 .BB.LABEL.67_15
.BB.LABEL.67_14:	; if_then_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4751
	add r5, r2
	ld.hu 0x00000036[r2], r2
	ld.hu 0x00000000[r21], r9
	movea 0x00000014, r3, r10
	st.w r10, 0x0000000C[r3]
	mov r20, r10
	mul 0x00000050, r10, r0
	add r10, r5
	movea 0x00000038, r5, r5
	st.w r5, 0x00000008[r3]
	st.w r2, 0x00000004[r3]
	st.w r9, 0x00000000[r3]
	mov r25, r9
	jarl _SecOC_GetRxFreshnessAuthData, r31
	br9 .BB.LABEL.67_16
.BB.LABEL.67_15:	; if_else_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4764
	add r5, r2
	ld.hu 0x00000036[r2], r9
	movea 0x00000014, r3, r2
	st.w r2, 0x00000004[r3]
	mov r20, r2
	mul 0x00000050, r2, r0
	add r2, r5
	movea 0x00000038, r5, r2
	st.w r2, 0x00000000[r3]
	jarl _SecOC_GetRxFreshness, r31
.BB.LABEL.67_16:	; if_break_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4799
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.67_18
.BB.LABEL.67_17:	; if_then_bb185
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4801
	jarl _SchM_Enter_SecOC_Authentication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4802
	ld.bu 0x0000000E[r21], r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	st.w r10, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4803
	mov #_SecOC_DataToAuthenticator.3, r2
	add r2, r24
	addi 0x00000002, r24, r6
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	movea 0x00000038, r2, r7
	mov r10, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4807
	jarl _SchM_Exit_SecOC_Authentication, r31
	mov r22, r10
	dispose 0x00000018, 0x00000779, [r31]
.BB.LABEL.67_18:	; if_else_bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov r20, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4809
	cmp 0x00000002, r22
	bnz9 .BB.LABEL.67_20
.BB.LABEL.67_19:	; if_then_bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4812
	jarl _SecOC_RxAuthenticationBuildRetry.1, r31
	mov r22, r10
	dispose 0x00000018, 0x00000779, [r31]
.BB.LABEL.67_20:	; if_else_bb208
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4817
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	mov 0x00000002, r2
	st.w r2, 0x0000004C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4819
	jarl _SecOC_RxReportVerifyStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4822
	mov r20, r6
	jarl _SecOC_RxChannelReset.1, r31
	mov r22, r10
	dispose 0x00000018, 0x00000779, [r31]
_SecOC_RxAuthenticationBuildRetry.1:
	.stack _SecOC_RxAuthenticationBuildRetry.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4840
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4843
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4848
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.hu 0x00000034[r5], r2
	ld.hu 0x00000004[r10], r6
	cmp r6, r2
	movea 0x00000034, r5, r21
	bnc9 .BB.LABEL.68_2
.BB.LABEL.68_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4850
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4851
	ld.h 0x00000000[r21], r2
	add 0x00000001, r2
	st.h r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4852
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	mov 0x00000002, r20
	st.w r20, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4853
	jarl _SchM_Exit_SecOC_RxData, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.68_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4858
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.w 0x00000044[r5], r2
	addi 0xFFFFFFC0, r2, r0
	bz9 .BB.LABEL.68_5
.BB.LABEL.68_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	addi 0xFFFFFFBE, r2, r0
	bnz9 .BB.LABEL.68_6
.BB.LABEL.68_4:	; bb34
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.bu 0x00000049[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.68_6
.BB.LABEL.68_5:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4862
	jarl _SchM_Enter_SecOC_RxData, r31
	movea 0x00000040, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4864
	mov r20, r6
	jarl _SECOC_SET_RX_EVENT.1, r31
	br9 .BB.LABEL.68_9
.BB.LABEL.68_6:	; if_else_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4869
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4871
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	mov 0x00000003, r2
	st.w r2, 0x0000004C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4872
	jarl _SchM_Exit_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4874
	mov r20, r6
	jarl _SecOC_RxReportVerifyStatus.1, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4877
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.68_8
.BB.LABEL.68_7:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4880
	mov r20, r6
	jarl _SecOC_RxChannelReset.1, r31
	br9 .BB.LABEL.68_10
.BB.LABEL.68_8:	; if_else_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4884
	jarl _SchM_Enter_SecOC_RxData, r31
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4887
	mov r20, r6
	jarl _SECOC_CLR_RX_EVENT.1, r31
.BB.LABEL.68_9:	; if_else_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	jarl _SchM_Exit_SecOC_RxData, r31
.BB.LABEL.68_10:	; if_break_bb72
	mov 0x00000008, r7
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4895
	jarl _SECOC_DET_REPORT_RUNTIMEERROR.1, r31
	dispose 0x00000000, 0x00000061, [r31]
_SecOC_RxVerifyAuthenticInfoRetry.1:
	.stack _SecOC_RxVerifyAuthenticInfoRetry.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4912
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4915
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4920
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.hu 0x00000036[r5], r2
	ld.hu 0x00000006[r10], r6
	cmp r6, r2
	movea 0x00000036, r5, r21
	bnc9 .BB.LABEL.69_2
.BB.LABEL.69_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4922
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4923
	ld.h 0x00000000[r21], r2
	add 0x00000001, r2
	st.h r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4924
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	mov 0x00000002, r20
	st.w r20, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4925
	jarl _SchM_Exit_SecOC_RxData, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.69_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4929
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.w 0x00000044[r5], r2
	addi 0xFFFFFFC0, r2, r0
	bz9 .BB.LABEL.69_5
.BB.LABEL.69_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	addi 0xFFFFFFBE, r2, r0
	bnz9 .BB.LABEL.69_6
.BB.LABEL.69_4:	; bb34
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.bu 0x00000049[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.69_6
.BB.LABEL.69_5:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4933
	jarl _SchM_Enter_SecOC_RxData, r31
	movea 0x00000040, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4935
	mov r20, r6
	jarl _SECOC_SET_RX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4936
	jarl _SchM_Exit_SecOC_RxData, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.69_6:	; if_else_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4940
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4942
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x0000004C[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4943
	jarl _SchM_Exit_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4945
	mov r20, r6
	jarl _SecOC_RxReportVerifyStatus.1, r31
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4948
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.69_8
.BB.LABEL.69_7:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4951
	mov r20, r6
	jarl _SecOC_RxChannelReset.1, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.69_8:	; if_else_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4955
	jarl _SchM_Enter_SecOC_RxData, r31
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4958
	mov r20, r6
	jarl _SECOC_CLR_RX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 4959
	jarl _SchM_Exit_SecOC_RxData, r31
	dispose 0x00000000, 0x00000061, [r31]
_SecOC_RxPassAuthenticPduToUpperLayer.1:
	.stack _SecOC_RxPassAuthenticPduToUpperLayer.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5097
	prepare 0x00000071, 0x0000000C
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5100
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5102
	mov r20, r6
	jarl _SecOC_GetRxAuthenticPduLayerPtr.1, r31
	mov r10, r21
	movea 0x00000040, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5109
	mov r20, r6
	jarl _SECOC_IS_RX_EVENT.1, r31
	cmp 0x00000000, r10
	bz17 .BB.LABEL.70_24
.BB.LABEL.70_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0x00000040, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5111
	mov r20, r6
	jarl _SECOC_CLR_RX_EVENT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5114
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.w 0x00000044[r5], r2
	addi 0xFFFFFFC0, r2, r0
	movea 0x00000044, r5, r22
	bz9 .BB.LABEL.70_9
.BB.LABEL.70_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	movea 0xFFFFFFBF, r2, r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.70_4
.BB.LABEL.70_3:	; bb42
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.bu 0x00000049[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.70_9
.BB.LABEL.70_4:	; bb63
	ld.w 0x00000000[r22], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.70_6
.BB.LABEL.70_5:	; bb69
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.bu 0x00000049[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.70_9
.BB.LABEL.70_6:	; bb90
	ld.w 0x00000000[r22], r2
	addi 0xFFFFFFBD, r2, r0
	bz9 .BB.LABEL.70_9
.BB.LABEL.70_7:	; bb103
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.bu 0x00000040[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.70_9
.BB.LABEL.70_8:	; bb117
	movhi HIGHW1(#_SecOC_ConfigPtr.2), r0, r2
	ld.w LOWW(#_SecOC_ConfigPtr.2)[r2], r2
	ld.w 0x00000010[r2], r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.70_11
.BB.LABEL.70_9:	; if_then_bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5124
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5126
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.h 0x0000000C[r5], r2
	st.h r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5127
	ld.w 0x00000030[r5], r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5128
	jarl _SchM_Exit_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5131
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.70_12
.BB.LABEL.70_10:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5134
	ld.hu 0x00000000[r21], r6
	mov r3, r7
	jarl _PduR_IfRxIndication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5137
	mov r20, r6
	jarl _SecOC_RxChannelReset.1, r31
	br9 .BB.LABEL.70_12
.BB.LABEL.70_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5170
	mov r20, r6
	jarl _SecOC_RxVerifyAuthenticInfoRetry.1, r31
.BB.LABEL.70_12:	; if_break_bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5172
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5173
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.bu 0x00000040[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.70_14
.BB.LABEL.70_13:	; if_then_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5176
	mov r20, r22
	mul 0x00000050, r22, r0
	mov #_SecOC_RxRtData.5, r2
	add r22, r2
	st.w r0, 0x0000004C[r2]
	br9 .BB.LABEL.70_23
.BB.LABEL.70_14:	; if_else_bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5180
	ld.w 0x00000000[r22], r2
	addi 0xFFFFFFC0, r2, r0
	bnz9 .BB.LABEL.70_16
.BB.LABEL.70_15:	; if_else_bb166.bb195_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.70_19
.BB.LABEL.70_16:	; bb172
	addi 0xFFFFFFBE, r2, r0
	bnz9 .BB.LABEL.70_18
.BB.LABEL.70_17:	; bb178
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r5
	add r2, r5
	ld.bu 0x00000049[r5], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.70_15
.BB.LABEL.70_18:	; bb194
	mov 0x00000001, r2
.BB.LABEL.70_19:	; bb195
	mov r20, r5
	mul 0x00000050, r5, r0
	mov #_SecOC_RxRtData.5, r6
	add r5, r6
	movea 0x0000004C, r6, r5
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.70_21
.BB.LABEL.70_20:	; if_then_bb200
	mov 0x00000005, r2
	br9 .BB.LABEL.70_22
.BB.LABEL.70_21:	; if_else_bb203
	mov 0x00000001, r2
.BB.LABEL.70_22:	; if_else_bb203
	st.w r2, 0x00000000[r5]
.BB.LABEL.70_23:	; if_break_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5191
	jarl _SchM_Exit_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5193
	mov r20, r6
	jarl _SecOC_RxReportVerifyStatus.1, r31
.BB.LABEL.70_24:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5195
	dispose 0x0000000C, 0x00000071, [r31]
_SecOC_RxLoadQueuedPdu.1:
	.stack _SecOC_RxLoadQueuedPdu.1 = 124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5689
	prepare 0x00000041, 0x00000074
	mov r6, r20
	movea 0x00000064, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5696
	st.h r2, 0x0000000C[r3]
	movea 0x00000010, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5697
	st.w r2, 0x00000004[r3]
	movea 0x00000004, r3, r8
	movea 0x00000002, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5698
	jarl _SecOC_DataOutQueue.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5699
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.71_2
.BB.LABEL.71_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5701
	ld.hu 0x00000002[r3], r7
	movea 0x00000004, r3, r8
	mov r20, r6
	jarl _SecOC_RxIfSecuredPduIndication.1, r31
.BB.LABEL.71_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5703
	dispose 0x00000074, 0x00000041, [r31]
_SecOC_RxReportVerifyStatus.1:
	.stack _SecOC_RxReportVerifyStatus.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5719
	prepare 0x00000061, 0x0000000C
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5723
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5733
	ld.w 0x00000020[r10], r2
	cmp 0x00000002, r2
	mov r10, r21
	bz9 .BB.LABEL.72_9
.BB.LABEL.72_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5735
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5736
	ld.h 0x0000000C[r21], r2
	st.h r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5737
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	ld.w 0x0000004C[r2], r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5738
	ld.h 0x0000000A[r21], r6
	st.h r6, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5737
	movea 0x0000004C, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5741
	ld.w 0x00000020[r21], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.72_5
.BB.LABEL.72_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5746
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.72_8
.BB.LABEL.72_3:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5748
	add 0xFFFFFFFF, r5
	cmp 0x00000002, r5
	bl9 .BB.LABEL.72_5
.BB.LABEL.72_4:	; bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	ld.w 0x00000000[r2], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.72_8
.BB.LABEL.72_5:	; if_then_bb81.critedge
	jarl _SchM_Exit_SecOC_RxData, r31
	mov 0x00000000, r20
	br9 .BB.LABEL.72_7
.BB.LABEL.72_6:	; bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5765
	movhi HIGHW1(#_SecOC_ConfigPtr.2), r0, r2
	ld.w LOWW(#_SecOC_ConfigPtr.2)[r2], r2
	ld.w 0x0000000C[r2], r2
	andi 0x0000FFFF, r20, r5
	shl 0x00000002, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000008[r3], r8
	ld.w 0x00000004[r3], r7
	ld.w 0x00000000[r3], r6
	jarl [r2], r31
	add 0x00000001, r20
.BB.LABEL.72_7:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5763
	andi 0x0000FFFF, r20, r0
	bz9 .BB.LABEL.72_6
	br9 .BB.LABEL.72_9
.BB.LABEL.72_8:	; return.critedge1
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	jarl _SchM_Exit_SecOC_RxData, r31
.BB.LABEL.72_9:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5772
	dispose 0x0000000C, 0x00000061, [r31]
_SecOC_RxChannelReset.1:
	.stack _SecOC_RxChannelReset.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5786
	prepare 0x00000479, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5788
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5790
	mov r20, r6
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5795
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r22
	add r2, r22
	st.w r0, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5796
	st.h r0, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5797
	st.h r0, 0x00000006[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5798
	st.h r0, 0x00000008[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5799
	st.h r0, 0x0000000A[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5800
	st.h r0, 0x0000000C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5801
	ld.h 0x00000014[r21], r2
	st.h r2, 0x00000010[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5802
	st.h r0, 0x00000012[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5803
	st.h r0, 0x00000014[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5804
	st.h r0, 0x0000000E[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5805
	movea 0x00000016, r22, r6
	mov 0x00000000, r23
	mov 0x00000008, r24
	mov r23, r7
	mov r24, r8
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5806
	movea 0x0000001E, r22, r6
	movea 0x00000011, r0, r8
	mov r23, r7
	jarl _ILib_memset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5807
	st.w r0, 0x00000030[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5808
	st.h r0, 0x00000034[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5809
	st.h r0, 0x00000036[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5810
	movea 0x00000038, r22, r6
	mov r23, r7
	mov r24, r8
	jarl _ILib_memset, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5811
	st.w r2, 0x0000004C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5820
	ld.w 0x00000028[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.73_2
.BB.LABEL.73_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5822
	ld.w 0x00000004[r2], r2
	st.b r0, 0x00000000[r2]
.BB.LABEL.73_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5824
	jarl _SchM_Exit_SecOC_RxData, r31
	movea 0x000001FF, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5827
	mov r20, r6
	jarl _SECOC_CLR_RX_EVENT.1, r31
	dispose 0x00000000, 0x00000479, [r31]
_SecOC_RxGetPduLength.1:
	.stack _SecOC_RxGetPduLength.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5844
	prepare 0x00000061, 0x00000004
	mov r6, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5846
	st.w r0, 0x00000000[r3]
	mov 0x00000004, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5849
	mov r20, r6
	sub r8, r6
	mov r3, r21
	add r21, r6
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5851
	mov r21, r6
	mov r20, r7
	jarl _SecOC_EndianSwap.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5855
	ld.hu 0x00000000[r3], r10
	dispose 0x00000004, 0x00000061, [r31]
_SecOC_EndianSwap.1:
	.stack _SecOC_EndianSwap.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5871
	movea 0x000000FF, r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5879
	shr 0x00000001, r7
	mov 0x00000000, r5
	br9 .BB.LABEL.75_2
.BB.LABEL.75_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5885
	andi 0x000000FF, r5, r8
	mov r2, r9
	sub r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5887
	add r6, r8
	ld.b 0x00000000[r8], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5886
	zxb r9
	add r6, r9
	ld.b 0x00000000[r9], r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5887
	st.b r10, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5888
	st.b r11, 0x00000000[r8]
	add 0x00000001, r5
.BB.LABEL.75_2:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5883
	andi 0x000000FF, r5, r8
	andi 0x000000FF, r7, r9
	cmp r9, r8
	bl9 .BB.LABEL.75_1
.BB.LABEL.75_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5890
	jmp [r31]
_SecOC_ArrayShiftLeft.1:
	.stack _SecOC_ArrayShiftLeft.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5905
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5912
	mov r21, r6
	shl 0x00000003, r6
	sub r22, r6
	zxh r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5913
	mov r22, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5914
	mov r21, r2
	sub r23, r2
	mov 0x00000000, r5
	br9 .BB.LABEL.76_4
.BB.LABEL.76_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5920
	andi 0x0000FFFF, r5, r6
	andi 0x0000FFFF, r2, r7
	add r6, r7
	mov r20, r8
	add r7, r8
	add r20, r6
	ld.bu 0x00000000[r8], r8
	shl r10, r8
	add 0x00000001, r7
	cmp r21, r7
	bnc9 .BB.LABEL.76_3
.BB.LABEL.76_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000008, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5922
	sub r10, r7
	andi 0x0000FFFF, r2, r9
	andi 0x0000FFFF, r5, r11
	add r11, r9
	add r20, r9
	ld.bu 0x00000001[r9], r9
	shr r7, r9
	or r9, r8
.BB.LABEL.76_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	st.b r8, 0x00000000[r6]
	add 0x00000001, r5
.BB.LABEL.76_4:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5918
	andi 0x0000FFFF, r5, r6
	cmp r23, r6
	bl9 .BB.LABEL.76_1
	br9 .BB.LABEL.76_6
.BB.LABEL.76_5:	; bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5933
	andi 0x0000FFFF, r23, r2
	add r20, r2
	st.b r0, 0x00000000[r2]
	add 0x00000001, r23
.BB.LABEL.76_6:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5931
	andi 0x0000FFFF, r23, r2
	cmp r21, r2
	bl9 .BB.LABEL.76_5
.BB.LABEL.76_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5935
	dispose 0x00000000, 0x00000079, [r31]
_SecOC_ArrayShiftRight.1:
	.stack _SecOC_ArrayShiftRight.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5950
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5957
	mov r21, r6
	shl 0x00000003, r6
	sub r22, r6
	zxh r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5958
	mov r22, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5959
	addi 0xFFFFFFFF, r23, r2
	mov 0x00000000, r5
	br9 .BB.LABEL.77_4
.BB.LABEL.77_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5965
	andi 0x0000FFFF, r5, r6
	addi 0xFFFFFFFF, r21, r7
	sub r6, r7
	andi 0x0000FFFF, r2, r8
	mov r8, r9
	sub r6, r9
	add r20, r9
	add r20, r7
	ld.bu 0x00000000[r9], r9
	shr r10, r9
	cmp r6, r8
	bz9 .BB.LABEL.77_3
.BB.LABEL.77_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000008, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5967
	sub r10, r6
	andi 0x0000FFFF, r2, r8
	andi 0x0000FFFF, r5, r11
	sub r11, r8
	add r20, r8
	ld.bu 0xFFFFFFFF[r8], r8
	shl r6, r8
	or r8, r9
.BB.LABEL.77_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	st.b r9, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.77_4:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5963
	andi 0x0000FFFF, r5, r6
	cmp r23, r6
	bl9 .BB.LABEL.77_1
.BB.LABEL.77_5:	; bb88.bb104_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.77_7
.BB.LABEL.77_6:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5978
	andi 0x0000FFFF, r2, r5
	add r20, r5
	st.b r0, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.77_7:	; bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5976
	mov r21, r5
	sub r23, r5
	andi 0x0000FFFF, r2, r6
	cmp r5, r6
	blt9 .BB.LABEL.77_6
.BB.LABEL.77_8:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5980
	dispose 0x00000000, 0x00000079, [r31]
_SecOC_ArrayOrOp.1:
	.stack _SecOC_ArrayOrOp.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 5995
	mov 0x00000000, r2
	br9 .BB.LABEL.78_2
.BB.LABEL.78_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6007
	andi 0x0000FFFF, r2, r5
	mov r6, r9
	add r5, r9
	ld.b 0x00000000[r9], r10
	add r7, r5
	ld.b 0x00000000[r5], r5
	or r5, r10
	st.b r10, 0x00000000[r9]
	add 0x00000001, r2
.BB.LABEL.78_2:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6005
	andi 0x0000FFFF, r2, r5
	cmp r8, r5
	bl9 .BB.LABEL.78_1
.BB.LABEL.78_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6009
	jmp [r31]
_SecOC_ClearLowBit.1:
	.stack _SecOC_ClearLowBit.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6025
	prepare 0x00000071, 0x00000000
	mov r6, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6032
	shl 0x00000003, r7
	sub r21, r7
	andi 0x0000FFFF, r7, r6
	jarl _SECOC_BIT_TO_BYTE.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6034
	mov r21, r6
	jarl _SECOC_MOD_FROM_EIGHT.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.79_2
.BB.LABEL.79_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6036
	add r20, r22
	ld.b 0xFFFFFFFF[r22], r2
	mov 0x00000001, r5
	shl r21, r5
	subr r0, r5
	and r5, r2
	st.b r2, 0xFFFFFFFF[r22]
.BB.LABEL.79_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6038
	dispose 0x00000000, 0x00000071, [r31]
_SecOC_DataInQueue.1:
	.stack _SecOC_DataInQueue.1 = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6056
	prepare 0x000007FD, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6059
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6069
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r23
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6077
	ld.hu 0x00000012[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6075
	ld.h 0x00000008[r22], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6068
	ld.hu 0x00000014[r10], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6065
	ld.w 0x00000018[r10], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6076
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6077
	ld.hu 0x00000010[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6075
	add 0x00000004, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6077
	andi 0x0000FFFF, r25, r5
	cmp r2, r5
	movea 0x00000010, r23, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6069
	movea 0x00000012, r23, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6077
	bh9 .BB.LABEL.80_8
.BB.LABEL.80_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6080
	st.h r21, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6081
	ld.h 0x00000008[r22], r2
	st.h r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6085
	mov r26, r2
	sub r24, r2
	mov r24, r6
	add r27, r6
	cmp 0x00000004, r2
	blt9 .BB.LABEL.80_3
.BB.LABEL.80_2:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000004, r8
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6087
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6088
	add 0x00000004, r24
	br9 .BB.LABEL.80_4
.BB.LABEL.80_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6092
	mov r24, r21
	subr r26, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6093
	zxh r21
	mov r3, r24
	mov r24, r7
	mov r21, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6096
	mov r24, r7
	add r21, r7
	mov 0x00000004, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6094
	sub r21, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6096
	andi 0x0000FFFF, r24, r8
	mov r27, r6
	jarl _ILib_memcpy, r31
.BB.LABEL.80_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6102
	andi 0x0000FFFF, r24, r6
	mov r26, r2
	sub r6, r2
	ld.hu 0x00000008[r22], r8
	ld.w 0x00000000[r22], r7
	cmp r8, r2
	blt9 .BB.LABEL.80_6
.BB.LABEL.80_5:	; if_then_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6104
	add r27, r6
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6105
	add 0x00000004, r24
	br9 .BB.LABEL.80_7
.BB.LABEL.80_6:	; if_else_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6109
	sub r6, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6110
	zxh r26
	zxh r24
	mov r24, r6
	add r27, r6
	mov r26, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6112
	ld.w 0x00000000[r22], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6111
	ld.hu 0x00000008[r22], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6112
	add r26, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6111
	sub r26, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6112
	andi 0x0000FFFF, r24, r8
	mov r27, r6
	jarl _ILib_memcpy, r31
.BB.LABEL.80_7:	; if_break_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6117
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	ld.h 0x00000014[r2], r5
	add 0x00000001, r5
	st.h r5, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6118
	st.h r24, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6119
	ld.h 0x00000000[r28], r2
	sub r25, r2
	st.h r2, 0x00000000[r28]
.BB.LABEL.80_8:	; if_break_bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6125
	jarl _SchM_Exit_SecOC_RxData, r31
	dispose 0x00000004, 0x000007FD, [r31]
_SecOC_DataOutQueue.1:
	.stack _SecOC_DataOutQueue.1 = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6144
	prepare 0x000007FF, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6153
	jarl _SecOC_GetRxPduProcessingPtr.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6162
	mov r20, r2
	mul 0x00000050, r2, r0
	mov #_SecOC_RxRtData.5, r23
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6169
	ld.hu 0x0000000E[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6161
	ld.hu 0x00000014[r10], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6159
	ld.w 0x00000018[r10], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6168
	jarl _SchM_Enter_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6169
	ld.hu 0x00000014[r23], r2
	movea 0x00000014, r23, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6162
	add 0x0000000E, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6169
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.81_2
.BB.LABEL.81_1:	; entry.if_break_bb207_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.81_10
.BB.LABEL.81_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6172
	mov r25, r2
	sub r24, r2
	cmp 0x00000004, r2
	blt9 .BB.LABEL.81_4
.BB.LABEL.81_3:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6174
	mov r26, r7
	add r24, r7
	mov 0x00000004, r8
	mov r3, r6
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6175
	add 0x00000004, r24
	br9 .BB.LABEL.81_5
.BB.LABEL.81_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6179
	mov r25, r28
	sub r24, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6180
	zxh r28
	mov r24, r7
	add r26, r7
	mov r3, r29
	mov r29, r6
	mov r28, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6183
	mov r29, r6
	add r28, r6
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6181
	subr r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6183
	andi 0x0000FFFF, r24, r8
	mov r26, r7
	jarl _ILib_memcpy, r31
.BB.LABEL.81_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6187
	ld.hu 0x00000002[r3], r2
	st.h r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6189
	ld.hu 0x00000008[r22], r5
	ld.hu 0x00000000[r3], r6
	cmp r5, r6
	bh9 .BB.LABEL.81_1
.BB.LABEL.81_6:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6192
	st.h r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6195
	st.h r6, 0x00000008[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6196
	andi 0x0000FFFF, r24, r2
	subr r25, r2
	ld.hu 0x00000008[r22], r8
	ld.w 0x00000000[r22], r6
	cmp r8, r2
	blt9 .BB.LABEL.81_8
.BB.LABEL.81_7:	; if_then_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6198
	andi 0x0000FFFF, r24, r7
	add r26, r7
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6199
	ld.h 0x00000008[r22], r22
	add r22, r24
	br9 .BB.LABEL.81_9
.BB.LABEL.81_8:	; if_else_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6203
	zxh r24
	sub r24, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6204
	zxh r25
	mov r24, r7
	add r26, r7
	mov r25, r8
	jarl _ILib_memcpy, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6206
	ld.w 0x00000000[r22], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6205
	ld.hu 0x00000008[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6206
	add r25, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6205
	subr r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6206
	andi 0x0000FFFF, r24, r8
	mov r26, r7
	jarl _ILib_memcpy, r31
.BB.LABEL.81_9:	; if_break_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6211
	ld.h 0x00000000[r27], r2
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000000[r27]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6212
	mul 0x00000050, r20, r0
	mov #_SecOC_RxRtData.5, r2
	add r20, r2
	st.h r24, 0x00000012[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6213
	ld.h 0x00000010[r2], r20
	mov r3, r5
	ld.h 0x00000000[r5], r5
	add r20, r5
	add 0x00000004, r5
	st.h r5, 0x00000010[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6214
	st.h r24, 0x00000000[r23]
	mov 0x00000000, r20
.BB.LABEL.81_10:	; if_break_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6224
	jarl _SchM_Exit_SecOC_RxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6227
	mov r20, r10
	dispose 0x00000004, 0x000007FF, [r31]
_SECOC_DET_REPORT.1:
	.stack _SECOC_DET_REPORT.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6230
	prepare 0x00000001, 0x00000000
	mov r6, r8
	mov r7, r9
	mov 0x00000000, r7
	movea 0x00000096, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6232
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
_SECOC_DET_REPORT_RUNTIMEERROR.1:
	.stack _SECOC_DET_REPORT_RUNTIMEERROR.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6234
	prepare 0x00000001, 0x00000000
	mov r6, r8
	mov r7, r9
	mov 0x00000000, r7
	movea 0x00000096, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/SecOC/SecOC.c", 6236
	jarl _Det_ReportRuntimeError, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
	.align 4
_SecOC_InitStatus.1:
	.ds (4)
	.align 4
_SecOC_ConfigPtr.2:
	.ds (4)
	.align 4
_SecOC_AuthInfoShiftBits_test:
	.ds (4)
	.align 4
_SecOC_authInfoTruncLenInBytes:
	.ds (4)
	.section .bss, bss
_SecOC_DataToAuthenticator.3:
	.ds (58)
	.align 2
_SecOC_RxEvent.4:
	.ds (2)
	.align 4
_SecOC_RxRtData.5:
	.ds (80)
	.align 2
_SecOC_TxEvent.6:
	.ds (8)
	.align 4
_SecOC_TxRtData.7:
	.ds (208)
