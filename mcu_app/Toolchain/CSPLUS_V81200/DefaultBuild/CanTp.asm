#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\CAN\CanTp\CanTp.c -oDefaultBuild\CanTp.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_706c9bf64ba04115b81b7134bf4aab8elvakf21i.wg1
#@	compiled at Fri Mar 27 09:50:18 2026

	.file "..\..\Bsw\Communication\CAN\CanTp\CanTp.c"

	$reg_mode 32
	.dbl_size 8

	.extern _CanTp_Channels
	.public _CanTp_ConfigPtr, 4
	.public _CanTp_Timer, 4
	.extern _Det_ReportRuntimeError
	.extern _Det_ReportError
	.public _CanTp_Init
	.extern _SchM_Enter_CanTp_ExclusiveArea
	.extern _SchM_Exit_CanTp_ExclusiveArea
	.public _CanTp_Shutdown
	.public _CanTp_Transmit
	.extern _CanTp_CheckTxLengthInAddressMode
	.extern _CanTp_ResetTime
	.extern _CanTp_TxHandleTransmitReq
	.public _CanTp_ChangeParameter
	.public _CanTp_MainFunction
	.public _CanTp_RxIndication
	.public _CanTp_TxConfirmation
	.extern _PduR_TpTxConfirmation
	.public _CanTp_MatchDLC
	.public _CanTp_TxHandleSFStart
	.public _CanTp_TxHandleLargeStart
	.extern _CanTp_GetRxSduCfgByNpdu
	.extern _CanTp_GetTxSduCfgByFCNpdu
	.extern _CanTp_GetChannelFCInfo
	.extern _PduR_TpRxIndication
	.extern _CanTp_RxGetCFOffset
	.extern _PduR_TpCopyRxData
	.extern _CanTp_CompareBufferWithBs
	.extern _CanTp_RxGetFFDl
	.extern _PduR_TpStartOfReception
	.extern _CanTp_CalcBS
	.extern _CanTp_SendFC
	.extern _CanTp_RxGetSFDl
	.extern _CanTp_ConstructSFPci
	.extern _PduR_TpCopyTxData
	.extern _CanTp_TxSFPadding
	.extern _CanIf_Transmit
	.extern _CanTp_ConstructFFPci
	.extern _CanTp_ConstructCFPci
	.extern _CanTp_MemorySet
	.extern _CanTp_GetTimeSpan

	.section .text, text
_CANTP_DET_REPORTRUNTIMEERROR.1:
	.stack _CANTP_DET_REPORTRUNTIMEERROR.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 548
	prepare 0x00000001, 0x00000000
	mov r6, r8
	mov r7, r9
	mov 0x00000000, r7
	movea 0x00000023, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 550
	jarl _Det_ReportRuntimeError, r31
	dispose 0x00000000, 0x00000001, [r31]
_CANTP_DET_REPORTERROR.1:
	.stack _CANTP_DET_REPORTERROR.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 553
	prepare 0x00000001, 0x00000000
	mov r6, r8
	mov r7, r9
	mov 0x00000000, r7
	movea 0x00000023, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 555
	jarl _Det_ReportError, r31
	dispose 0x00000000, 0x00000001, [r31]
_CANTP_RXCHANNEL.1:
	.stack _CANTP_RXCHANNEL.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 560
	mulhi 0x000000C0, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 562
	mov #_CanTp_Channels, r10
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 563
	jmp [r31]
_CANTP_TXCHANNEL.1:
	.stack _CANTP_TXCHANNEL.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 566
	mulhi 0x000000C0, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 568
	mov #_CanTp_Channels, r5
	add r2, r5
	movea 0x00000040, r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 569
	jmp [r31]
_CANTP_TXSUBCHANNEL.1:
	.stack _CANTP_TXSUBCHANNEL.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 572
	mulhi 0x000000C0, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 574
	mov #_CanTp_Channels, r5
	add r2, r5
	movea 0x00000040, r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.h", 575
	jmp [r31]
_CanTp_Init:
	.stack _CanTp_Init = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 230
	prepare 0x00000061, 0x00000000
	addi 0x00000000, r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 234
	bnz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000003, r7
.BB.LABEL.6_2:	; if_then_bb
	mov 0x00000001, r6
	jarl _CANTP_DET_REPORTERROR.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 267
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.6_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 239
	ld.bu 0x00000000[r20], r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000004, r7
	br9 .BB.LABEL.6_2
.BB.LABEL.6_5:	; if_else_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 247
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 249
	movhi HIGHW1(#_CanTp_ModuleState.1), r0, r2
	ld.w LOWW(#_CanTp_ModuleState.1)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 251
	movhi HIGHW1(#_CanTp_ModuleState.1), r0, r2
	st.w r0, LOWW(#_CanTp_ModuleState.1)[r2]
.BB.LABEL.6_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 253
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r2
	st.w r20, LOWW(#_CanTp_ConfigPtr)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 254
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	mov 0x00000000, r20
	br9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 259
	andi 0x000000FF, r20, r21
	mov r21, r6
	jarl _CANTP_RXCHANNEL.1, r31
	st.b r20, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 260
	mov r21, r6
	jarl _CANTP_RXCHANNEL.1, r31
	mov r10, r6
	jarl _CanTp_InitSubChannel.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 261
	mov r21, r6
	jarl _CANTP_TXSUBCHANNEL.1, r31
	st.b r20, 0x00000000[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 262
	mov r21, r6
	jarl _CANTP_TXSUBCHANNEL.1, r31
	mov r10, r6
	jarl _CanTp_InitTxChannel.1, r31
	add 0x00000001, r20
.BB.LABEL.6_9:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 257
	andi 0x000000FF, r20, r0
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_10:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 265
	movhi HIGHW1(#_CanTp_ModuleState.1), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_CanTp_ModuleState.1)[r2]
	dispose 0x00000000, 0x00000061, [r31]
_CanTp_Shutdown:
	.stack _CanTp_Shutdown = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 288
	movhi HIGHW1(#_CanTp_ModuleState.1), r0, r2
	st.w r0, LOWW(#_CanTp_ModuleState.1)[r2]
	jmp [r31]
_CanTp_Transmit:
	.stack _CanTp_Transmit = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 312
	prepare 0x00000071, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 322
	movhi HIGHW1(#_CanTp_ModuleState.1), r0, r2
	ld.w LOWW(#_CanTp_ModuleState.1)[r2], r2
	cmp 0x00000001, r2
	mov r7, r20
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.8_2:	; if_then_bb
	mov 0x00000003, r6
.BB.LABEL.8_3:	; if_then_bb
	jarl _CANTP_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 406
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.8_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 327
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 330
	mov r6, r7
	br9 .BB.LABEL.8_3
.BB.LABEL.8_6:	; if_else_bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 336
	jarl _CanTp_GetTxSduCfgByTxSduId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 337
	addi 0x00000000, r10, r21
	bz9 .BB.LABEL.8_16
.BB.LABEL.8_7:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 341
	mov r21, r6
	mov r20, r7
	jarl _CanTp_CheckTxLengthInAddressMode, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_15
.BB.LABEL.8_8:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 345
	ld.bu 0x00000003[r3], r6
	jarl _CANTP_TXSUBCHANNEL.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 346
	ld.bu 0x00000003[r3], r6
	jarl _CANTP_RXCHANNEL.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 352
	ld.w 0x00000020[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_17
.BB.LABEL.8_9:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.bu 0x00000003[r3], r2
	shl 0x00000005, r2
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r5
	ld.w LOWW(#_CanTp_ConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_11
.BB.LABEL.8_10:	; bb51
	ld.w 0x00000020[r10], r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.8_17
.BB.LABEL.8_11:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 357
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 358
	ld.h 0x00000012[r21], r2
	st.h r2, 0x0000002A[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 359
	ld.h 0x00000008[r20], r2
	st.h r2, 0x0000002E[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 360
	ld.h 0x00000008[r20], r2
	st.h r2, 0x00000030[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 361
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 369
	ld.w 0x00000008[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_13
.BB.LABEL.8_12:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 371
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 372
	st.w r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 373
	ld.w 0x00000008[r21], r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x0000000C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 374
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 375
	addi 0x00000008, r22, r6
	jarl _CanTp_ResetTime, r31
	br9 .BB.LABEL.8_14
.BB.LABEL.8_13:	; if_else_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 379
	st.w r0, 0x00000004[r22]
.BB.LABEL.8_14:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 384
	mov r22, r6
	mov r21, r7
	jarl _CanTp_TxHandleTransmitReq, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 386
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.8_15:	; if_else_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000090, r0, r7
	mov 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 393
	jarl _CANTP_DET_REPORTRUNTIMEERROR.1, r31
	mov 0x00000001, r10
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.8_16:	; if_else_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000030, r0, r7
	br9 .BB.LABEL.8_2
.BB.LABEL.8_17:	; if_break_bb130
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 406
	dispose 0x00000004, 0x00000071, [r31]
_CanTp_ChangeParameter:
	.stack _CanTp_ChangeParameter = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 583
	prepare 0x00000071, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 593
	movhi HIGHW1(#_CanTp_ModuleState.1), r0, r2
	ld.w LOWW(#_CanTp_ModuleState.1)[r2], r2
	cmp 0x00000001, r2
	mov r8, r20
	mov r7, r21
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.9_2:	; if_then_bb
	mov 0x0000000A, r6
	jarl _CANTP_DET_REPORTERROR.1, r31
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 644
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.9_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 600
	jarl _CanTp_GetRxSduCfgByNSduId.1, r31
	mov r10, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 601
	mov r21, r6
	mov r20, r7
	jarl _CanTP_CheckRxChangeParameter.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_then_bb28
	mov 0x00000002, r7
	br9 .BB.LABEL.9_2
.BB.LABEL.9_6:	; if_else_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 610
	ld.bu 0x00000003[r3], r6
	jarl _CANTP_RXCHANNEL.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 611
	ld.w 0x00000020[r10], r2
	cmp 0x00000004, r2
	bz9 .BB.LABEL.9_11
.BB.LABEL.9_7:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 613
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.9_9
.BB.LABEL.9_8:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 615
	st.b r20, 0x00000038[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 617
	set1 0x00000000, 0x0000003D[r10]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 619
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.9_9:	; if_else_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 623
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.9_11
.BB.LABEL.9_10:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 626
	st.b r20, 0x00000039[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 628
	set1 0x00000001, 0x0000003D[r10]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 630
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.9_11:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 644
	dispose 0x00000004, 0x00000071, [r31]
_CanTp_MainFunction:
	.stack _CanTp_MainFunction = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 748
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 759
	movhi HIGHW1(#_CanTp_ModuleState.1), r0, r2
	ld.w LOWW(#_CanTp_ModuleState.1)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 765
	movhi HIGHW1(#_CanTp_Timer), r0, r2
	ld.w LOWW(#_CanTp_Timer)[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 771
	cmp 0xFFFFFFF4, r5
	mov 0x0000000A, r6
	adf 0x0000000B, r6, r5, r5
	st.w r5, LOWW(#_CanTp_Timer)[r2]
	mov 0x00000000, r20
	br9 .BB.LABEL.10_3
.BB.LABEL.10_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 798
	andi 0x000000FF, r20, r2
	mul 0x000000C0, r2, r0
	mov #_CanTp_Channels, r21
	add r2, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 801
	mov r21, r6
	jarl _CanTp_HandleTimers.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 809
	mov r21, r6
	jarl _CanTp_DispatchRxEvent.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 812
	mov r21, r6
	jarl _CanTp_DispatchTxEvent.1, r31
	add 0x00000001, r20
.BB.LABEL.10_3:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 796
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r2
	ld.w LOWW(#_CanTp_ConfigPtr)[r2], r2
	ld.bu 0x00000000[r2], r2
	andi 0x000000FF, r20, r5
	cmp r2, r5
	bl9 .BB.LABEL.10_2
.BB.LABEL.10_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 815
	dispose 0x00000000, 0x00000061, [r31]
_CanTp_RxIndication:
	.stack _CanTp_RxIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 876
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 880
	movhi HIGHW1(#_CanTp_ModuleState.1), r0, r2
	ld.w LOWW(#_CanTp_ModuleState.1)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.11_3
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000020, r0, r7
.BB.LABEL.11_2:	; if_then_bb
	movea 0x00000042, r0, r6
	jarl _CANTP_DET_REPORTERROR.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 896
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 885
	cmp 0x00000000, r7
	bz9 .BB.LABEL.11_5
.BB.LABEL.11_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.w 0x00000000[r7], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_6
.BB.LABEL.11_5:	; if_then_bb20
	mov 0x00000003, r7
	br9 .BB.LABEL.11_2
.BB.LABEL.11_6:	; if_else_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 894
	jarl _CanTp_RxSubDeal.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_CanTp_TxConfirmation:
	.stack _CanTp_TxConfirmation = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 915
	prepare 0x00000061, 0x00000004
	mov r6, r20
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 918
	jarl _CanTp_GetTxSduCfgByTxNPdu.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 923
	movhi HIGHW1(#_CanTp_ModuleState.1), r0, r2
	ld.w LOWW(#_CanTp_ModuleState.1)[r2], r2
	cmp 0x00000001, r2
	mov r10, r21
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000020, r0, r7
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 926
	jarl _CANTP_DET_REPORTERROR.1, r31
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.12_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 932
	cmp 0x00000000, r21
	bz9 .BB.LABEL.12_7
.BB.LABEL.12_3:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 934
	ld.bu 0x00000003[r3], r6
	jarl _CANTP_TXSUBCHANNEL.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 938
	ld.w 0x00000024[r10], r2
	cmp 0x00000009, r2
	bz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x0000000B, r2
	bnz9 .BB.LABEL.12_7
.BB.LABEL.12_5:	; bb32
	ld.hu 0x00000012[r21], r2
	ld.hu 0x0000002A[r10], r5
	cmp r5, r2
	bnz9 .BB.LABEL.12_7
.BB.LABEL.12_6:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 942
	ld.bu 0x00000003[r3], r20
	mulhi 0x000000C0, r20, r20
	mov #_CanTp_Channels, r6
	add r20, r6
	mov r21, r7
	jarl _CanTp_SFCFTxConfirmationSubDealWith.1, r31
	dispose 0x00000004, 0x00000061, [r31]
.BB.LABEL.12_7:	; if_else_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov r20, r6
	jarl _CanTp_FCTxConfirmationSubDealWith.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 955
	dispose 0x00000004, 0x00000061, [r31]
_CanTp_SFCFTxConfirmationSubDealWith.1:
	.stack _CanTp_SFCFTxConfirmationSubDealWith.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 964
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 972
	ld.w 0x00000064[r6], r2
	cmp 0x00000009, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 970
	movea 0x00000040, r6, r2
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.13_7
.BB.LABEL.13_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 985
	ld.b 0x0000007B[r21], r5
	add 0x00000001, r5
	andi 0x0000000F, r5, r5
	st.b r5, 0x0000007B[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 986
	ld.bu 0x00000068[r21], r5
	add 0xFFFFFFF0, r5
	bnz9 .BB.LABEL.13_6
.BB.LABEL.13_2:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 989
	st.w r2, 0x00000064[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 991
	ld.w 0x00000004[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_5
.BB.LABEL.13_3:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 993
	st.w r2, 0x00000044[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 994
	ld.w 0x00000004[r20], r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x0000004C[r21]
.BB.LABEL.13_4:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000048, r21, r6
	jarl _CanTp_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1065
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.13_5:	; if_else_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 999
	st.w r0, 0x00000044[r21]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.13_6:	; if_else_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1004
	ld.hu 0x0000006E[r21], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	st.w r0, 0x00000060[r21]
	mov r2, r6
	jarl _CanTp_ReleaseTxChannel.1, r31
	ld.hu 0x00000010[r20], r6
	mov 0x00000000, r7
	jarl _PduR_TpTxConfirmation, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1065
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.13_8:	; if_else_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1017
	ld.bu 0x0000007A[r21], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.13_10
.BB.LABEL.13_9:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1019
	add 0x00000001, r2
	st.b r2, 0x0000007A[r21]
.BB.LABEL.13_10:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1021
	zxb r2
	ld.bu 0x00000074[r21], r5
	cmp r5, r2
	bnz9 .BB.LABEL.13_14
.BB.LABEL.13_11:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1024
	st.w r2, 0x00000064[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1025
	ld.w 0x00000004[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_13
.BB.LABEL.13_12:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1027
	st.w r2, 0x00000044[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1028
	ld.w 0x00000004[r20], r20
	ld.w 0x00000000[r20], r20
	st.w r20, 0x0000004C[r21]
	br9 .BB.LABEL.13_4
.BB.LABEL.13_13:	; if_else_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1033
	st.w r0, 0x00000044[r21]
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.13_14:	; if_else_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1039
	st.w r2, 0x00000064[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1040
	ld.w 0x00000008[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.13_16
.BB.LABEL.13_15:	; if_then_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1042
	st.w r2, 0x00000044[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1043
	ld.w 0x00000008[r20], r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x0000004C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1044
	movea 0x00000048, r21, r6
	jarl _CanTp_ResetTime, r31
	br9 .BB.LABEL.13_17
.BB.LABEL.13_16:	; if_else_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1048
	st.w r0, 0x00000044[r21]
.BB.LABEL.13_17:	; if_break_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1051
	st.b r2, 0x00000050[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1052
	ld.w 0x0000005C[r21], r2
	st.w r2, 0x00000054[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1053
	movea 0x00000058, r21, r6
	jarl _CanTp_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1055
	ld.w 0x0000005C[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.13_19
.BB.LABEL.13_18:	; if_then_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1058
	mov r21, r6
	jarl _CanTp_TxHandleLargeStart, r31
.BB.LABEL.13_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1065
	dispose 0x00000000, 0x00000061, [r31]
_CanTp_FCTxConfirmationSubDealWith.1:
	.stack _CanTp_FCTxConfirmationSubDealWith.1 = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1067
	prepare 0x00000041, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1069
	st.b r0, 0x00000003[r3]
	movea 0x00000003, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1070
	jarl _CanTp_GetRxSduCfgByTxFCNPdu.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1075
	addi 0x00000000, r10, r20
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000030, r0, r7
	movea 0x00000040, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1078
	jarl _CANTP_DET_REPORTERROR.1, r31
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.14_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1083
	ld.bu 0x00000003[r3], r6
	jarl _CANTP_RXCHANNEL.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1086
	ld.w 0x00000024[r10], r2
	add 0xFFFFFFFC, r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.14_11
.BB.LABEL.14_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.hu 0x00000016[r20], r2
	ld.hu 0x0000002A[r10], r5
	cmp r5, r2
	bnz9 .BB.LABEL.14_11
.BB.LABEL.14_4:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1092
	ld.w 0x00000024[r10], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.14_6
.BB.LABEL.14_5:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1095
	st.w r2, 0x00000024[r10]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1099
	st.w r2, 0x00000004[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1100
	ld.w 0x00000008[r20], r2
	br9 .BB.LABEL.14_9
.BB.LABEL.14_6:	; if_else_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1103
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.14_11
.BB.LABEL.14_7:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000006, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1106
	st.w r2, 0x00000024[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1107
	ld.w 0x0000000C[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.14_10
.BB.LABEL.14_8:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1109
	st.w r2, 0x00000004[r10]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1110
	ld.w 0x0000000C[r20], r2
	ld.w 0x00000000[r2], r2
.BB.LABEL.14_9:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	st.w r2, 0x0000000C[r10]
	add 0x00000008, r10
	mov r10, r6
	jarl _CanTp_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1124
	dispose 0x00000004, 0x00000041, [r31]
.BB.LABEL.14_10:	; if_else_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1115
	st.w r0, 0x00000004[r10]
.BB.LABEL.14_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1124
	dispose 0x00000004, 0x00000041, [r31]
_CanTp_InitSubChannel.1:
	.stack _CanTp_InitSubChannel.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1132
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1135
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1137
	st.w r0, 0x00000020[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1138
	st.w r0, 0x00000024[r20]
	mov 0xFFFFFFF0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1139
	st.b r2, 0x00000028[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1141
	st.w r0, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1142
	st.w r0, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1143
	st.w r0, 0x00000008[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1145
	st.b r0, 0x00000034[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1147
	st.h r0, 0x00000036[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1149
	movhi HIGHW1(#_CanTp_ModuleState.1), r0, r2
	ld.w LOWW(#_CanTp_ModuleState.1)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1151
	st.b r0, 0x00000038[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1152
	st.b r0, 0x00000039[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1153
	st.b r0, 0x0000003D[r20]
	br9 .BB.LABEL.15_3
.BB.LABEL.15_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1157
	ld.bu 0x0000003D[r20], r2
	andi 0x00000003, r2, r2
	st.b r2, 0x0000003D[r20]
.BB.LABEL.15_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1159
	st.b r0, 0x0000003B[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1160
	st.b r0, 0x0000003A[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1161
	st.b r0, 0x0000003C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1162
	st.b r0, 0x00000010[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1163
	st.w r0, 0x00000014[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1164
	st.w r0, 0x00000018[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1165
	st.w r0, 0x0000001C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1167
	st.h r0, 0x0000002A[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1168
	st.h r0, 0x0000002E[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1169
	st.h r0, 0x00000030[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1179
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	dispose 0x00000000, 0x00000041, [r31]
_CanTp_InitTxChannel.1:
	.stack _CanTp_InitTxChannel.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1183
	prepare 0x00000061, 0x00000004
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1185
	ld.bu 0x00000000[r20], r6
	jarl _CANTP_TXCHANNEL.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1192
	ld.w 0x00000020[r20], r2
	cmp 0x00000000, r2
	mov r10, r21
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1194
	ld.hu 0x0000002A[r20], r6
	movea 0x00000003, r3, r7
	jarl _CanTp_GetTxSduCfgByTxSduId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1195
	cmp 0x00000000, r10
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1197
	ld.hu 0x00000010[r10], r6
	mov 0x00000001, r7
	jarl _PduR_TpTxConfirmation, r31
.BB.LABEL.16_3:	; if_break_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1200
	mov r20, r6
	jarl _CanTp_InitSubChannel.1, r31
	mov 0x00000000, r2
	br9 .BB.LABEL.16_5
.BB.LABEL.16_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1210
	andi 0x000000FF, r2, r5
	add r21, r5
	st.b r0, 0x00000040[r5]
	add 0x00000001, r2
.BB.LABEL.16_5:	; bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1201
	andi 0x000000FF, r2, r5
	addi 0xFFFFFFC0, r5, r0
	blt9 .BB.LABEL.16_4
.BB.LABEL.16_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1227
	dispose 0x00000004, 0x00000061, [r31]
_CanTp_InitChannel.1:
	.stack _CanTp_InitChannel.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1230
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1232
	jarl _CanTp_InitSubChannel.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1233
	movea 0x00000040, r20, r6
	jarl _CanTp_InitTxChannel.1, r31
	dispose 0x00000000, 0x00000041, [r31]
_CanTp_ReleaseRxChannel.1:
	.stack _CanTp_ReleaseRxChannel.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1236
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1239
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r2
	ld.w LOWW(#_CanTp_ConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1238
	ld.bu 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1239
	mov r5, r7
	shl 0x00000005, r7
	add r7, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1241
	mulhi 0x000000C0, r5, r2
	mov #_CanTp_Channels, r6
	add r2, r6
	jarl _CanTp_InitChannel.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1245
	jarl _CanTp_InitSubChannel.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_CanTp_ReleaseTxChannel.1:
	.stack _CanTp_ReleaseTxChannel.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1249
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1252
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r2
	ld.w LOWW(#_CanTp_ConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1251
	ld.bu 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1252
	mov r5, r7
	shl 0x00000005, r7
	add r7, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1254
	mulhi 0x000000C0, r5, r2
	mov #_CanTp_Channels, r6
	add r2, r6
	jarl _CanTp_InitChannel.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1258
	jarl _CanTp_InitTxChannel.1, r31
	dispose 0x00000000, 0x00000001, [r31]
_CanTp_MatchDLC:
	.stack _CanTp_MatchDLC = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1275
	add 0xFFFFFFF8, r3
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1281
	mov #.STR.1, r5
	mov r3, r7
	add r7, r2
	br9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; entry
	ld.b 0x00000000[r5], r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r5
	add 0x00000001, r7
.BB.LABEL.20_2:	; entry
	cmp r7, r2
	bnz9 .BB.LABEL.20_1
.BB.LABEL.20_3:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1282
	cmp 0x00000009, r6
	mov r6, r10
	blt9 .BB.LABEL.20_9
.BB.LABEL.20_4:	; entry.bb31_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.20_8
.BB.LABEL.20_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1286
	andi 0x000000FF, r2, r5
	mov r3, r6
	add r6, r5
	ld.bu 0x00000000[r5], r6
	cmp r6, r10
	bgt9 .BB.LABEL.20_7
.BB.LABEL.20_6:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1288
	ld.bu 0x00000000[r5], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1289
	dispose 0x00000008, 0x00000000, [r31]
.BB.LABEL.20_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	add 0x00000001, r2
.BB.LABEL.20_8:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1284
	andi 0x000000FF, r2, r5
	cmp 0x00000008, r5
	bl9 .BB.LABEL.20_5
.BB.LABEL.20_9:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1294
	dispose 0x00000008, 0x00000000, [r31]
_CanTp_RxSubDeal.1:
	.stack _CanTp_RxSubDeal.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1300
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov 0xFFFFFFF0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1303
	st.b r2, 0x00000002[r3]
	movea 0x00000003, r3, r9
	movea 0x00000002, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1305
	jarl _CanTp_GetRxSduCfgByNpdu, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1308
	addi 0x00000000, r10, r22
	bz9 .BB.LABEL.21_7
.BB.LABEL.21_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1310
	ld.bu 0x00000002[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.21_6
.BB.LABEL.21_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	add 0xFFFFFFF0, r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.21_5
.BB.LABEL.21_3:	; if_then_bb
	add 0xFFFFFFF0, r2
	bnz9 .BB.LABEL.21_7
.BB.LABEL.21_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1313
	ld.bu 0x00000003[r3], r6
	jarl _CANTP_RXCHANNEL.1, r31
	mov r21, r6
	mov r22, r7
	mov r10, r8
	jarl _CanTp_RxSubDealWithCF.1, r31
	br9 .BB.LABEL.21_7
.BB.LABEL.21_5:	; switch_clause_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1316
	ld.bu 0x00000003[r3], r2
	mulhi 0x000000C0, r2, r2
	mov #_CanTp_Channels, r8
	add r2, r8
	mov r21, r6
	mov r22, r7
	jarl _CanTp_RxSubDealWithFF.1, r31
	br9 .BB.LABEL.21_7
.BB.LABEL.21_6:	; switch_clause_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1319
	ld.bu 0x00000003[r3], r2
	mulhi 0x000000C0, r2, r2
	mov #_CanTp_Channels, r8
	add r2, r8
	mov r21, r6
	mov r22, r7
	jarl _CanTp_RxSubDealWithSF.1, r31
.BB.LABEL.21_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1327
	ld.bu 0x00000002[r3], r2
	addi 0xFFFFFF10, r2, r0
	bnz9 .BB.LABEL.21_10
.BB.LABEL.21_8:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000003, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1330
	mov r20, r6
	mov r21, r7
	jarl _CanTp_GetTxSduCfgByFCNpdu, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1331
	addi 0x00000000, r10, r20
	bz9 .BB.LABEL.21_10
.BB.LABEL.21_9:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1334
	ld.bu 0x00000003[r3], r6
	jarl _CANTP_TXSUBCHANNEL.1, r31
	mov r21, r6
	mov r20, r7
	mov r10, r8
	jarl _CanTp_RxSubDealWithFC.1, r31
.BB.LABEL.21_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1337
	dispose 0x00000004, 0x00000071, [r31]
_CanTp_RxSubDealWithFC.1:
	.stack _CanTp_RxSubDealWithFC.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1351
	prepare 0x00000071, 0x00000008
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1363
	ld.hu 0x00000008[r20], r6
	jarl _CanTp_MatchDLC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1366
	ld.hu 0x00000008[r20], r2
	cmp 0x00000003, r2
	bl17 .BB.LABEL.22_20
.BB.LABEL.22_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp r2, r10
	bz9 .BB.LABEL.22_3
.BB.LABEL.22_2:	; bb
	cmp 0x00000007, r2
	bh17 .BB.LABEL.22_20
.BB.LABEL.22_3:	; bb44
	ld.hu 0x00000008[r20], r2
	ld.hu 0x0000001C[r21], r5
	cmp r5, r2
	bh17 .BB.LABEL.22_20
.BB.LABEL.22_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1375
	ld.hu 0x00000012[r21], r2
	ld.hu 0x0000002A[r22], r5
	cmp r5, r2
	bnz17 .BB.LABEL.22_20
.BB.LABEL.22_5:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.w 0x00000024[r22], r2
	cmp 0x0000000C, r2
	bnz17 .BB.LABEL.22_20
.BB.LABEL.22_6:	; bb86
	ld.w 0x00000020[r22], r2
	cmp 0x00000005, r2
	bnz17 .BB.LABEL.22_20
.BB.LABEL.22_7:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1378
	ld.hu 0x00000008[r20], r2
	cmp 0x00000007, r2
	bh9 .BB.LABEL.22_10
.BB.LABEL.22_8:	; bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.w 0x00000020[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.22_10
.BB.LABEL.22_9:	; if_then_bb121
	movea 0x00000070, r0, r7
	movea 0x00000042, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1380
	jarl _CANTP_DET_REPORTRUNTIMEERROR.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1381
	mov r22, r6
	jarl _CanTp_ReleaseTxChannel.1, r31
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.22_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1392
	mov r21, r6
	mov r20, r7
	jarl _CanTp_GetChannelFCInfo, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1394
	ld.bu 0x00000000[r3], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.22_16
.BB.LABEL.22_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.22_19
.BB.LABEL.22_12:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1398
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	mov r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1399
	ld.b 0x00000001[r2], r2
	st.b r2, 0x00000034[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1400
	st.b r0, 0x0000003A[r22]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1402
	st.b r2, 0x00000010[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1403
	ld.w 0x00000004[r3], r2
	st.w r2, 0x00000014[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1404
	ld.w 0x00000004[r3], r2
	st.w r2, 0x0000001C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1406
	movea 0x00000018, r22, r6
	jarl _CanTp_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1407
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1410
	ld.w 0x00000008[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_14
.BB.LABEL.22_13:	; if_then_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1412
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1413
	st.w r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1414
	ld.w 0x00000008[r21], r21
	ld.w 0x00000000[r21], r21
	st.w r21, 0x0000000C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1415
	addi 0x00000008, r22, r6
	jarl _CanTp_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1416
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	br9 .BB.LABEL.22_15
.BB.LABEL.22_14:	; if_else_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1420
	st.w r0, 0x00000004[r22]
.BB.LABEL.22_15:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1422
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	movea 0x00000020, r0, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1423
	st.b r21, 0x00000028[r22]
	mov 0x0000000A, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1424
	st.w r21, 0x00000024[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1425
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.22_16:	; switch_clause_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1430
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.22_18
.BB.LABEL.22_17:	; if_then_bb183
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1432
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1433
	st.w r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1434
	ld.w 0x00000004[r21], r21
	ld.w 0x00000000[r21], r21
	st.w r21, 0x0000000C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1435
	addi 0x00000008, r22, r6
	jarl _CanTp_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1436
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.22_18:	; if_else_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1440
	st.w r0, 0x00000004[r22]
	dispose 0x00000008, 0x00000071, [r31]
.BB.LABEL.22_19:	; switch_clause_bb198
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1447
	st.w r0, 0x00000020[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1449
	mov r22, r6
	jarl _CanTp_ReleaseTxChannel.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1451
	ld.hu 0x00000010[r21], r6
	mov 0x00000001, r7
	jarl _PduR_TpTxConfirmation, r31
.BB.LABEL.22_20:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1458
	dispose 0x00000008, 0x00000071, [r31]
_CanTp_RxSubDealWithCF.1:
	.stack _CanTp_RxSubDealWithCF.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1471
	prepare 0x00000071, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1480
	ld.hu 0x00000008[r20], r6
	jarl _CanTp_MatchDLC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1489
	ld.hu 0x00000008[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_15
.BB.LABEL.23_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.w 0x00000028[r21], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.23_15
.BB.LABEL.23_2:	; bb27
	ld.hu 0x00000016[r21], r2
	ld.hu 0x0000002A[r22], r5
	cmp r5, r2
	bnz9 .BB.LABEL.23_15
.BB.LABEL.23_3:	; bb45
	ld.w 0x00000020[r22], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.23_15
.BB.LABEL.23_4:	; bb58
	ld.w 0x00000024[r22], r2
	cmp 0x00000006, r2
	bnz9 .BB.LABEL.23_15
.BB.LABEL.23_5:	; bb71
	ld.hu 0x00000008[r20], r2
	ld.hu 0x00000020[r21], r5
	cmp r5, r2
	bh9 .BB.LABEL.23_15
.BB.LABEL.23_6:	; bb89
	cmp r10, r2
	bz9 .BB.LABEL.23_8
.BB.LABEL.23_7:	; bb89
	cmp 0x00000007, r2
	bh9 .BB.LABEL.23_15
.BB.LABEL.23_8:	; bb119
	ld.w 0x00000028[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.23_15
.BB.LABEL.23_9:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1498
	ld.hu 0x00000008[r20], r2
	cmp 0x00000007, r2
	bh9 .BB.LABEL.23_12
.BB.LABEL.23_10:	; bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.w 0x00000024[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.23_12
.BB.LABEL.23_11:	; if_then_bb153
	movea 0x00000070, r0, r7
	movea 0x00000042, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1501
	jarl _CANTP_DET_REPORTRUNTIMEERROR.1, r31
	br9 .BB.LABEL.23_13
.BB.LABEL.23_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000003, r3, r8
	movea 0x00000002, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1515
	mov r21, r6
	jarl _CanTp_RxGetCFOffset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1516
	ld.w 0x00000000[r20], r2
	ld.bu 0x00000003[r3], r5
	add r5, r2
	ld.bu 0x00000000[r2], r2
	andi 0x0000000F, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1517
	ld.bu 0x0000003B[r22], r5
	cmp r5, r2
	bz9 .BB.LABEL.23_14
.BB.LABEL.23_13:	; if_then_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.hu 0x00000014[r21], r6
	mov 0x00000001, r7
	jarl _PduR_TpRxIndication, r31
	mov r22, r6
	jarl _CanTp_ReleaseRxChannel.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1546
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.23_14:	; if_else_bb183
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1525
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _CanTp_RxSubDealWithCFToUp.1, r31
	dispose 0x00000004, 0x00000071, [r31]
.BB.LABEL.23_15:	; if_else_bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1531
	ld.w 0x00000028[r21], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.23_17
.BB.LABEL.23_16:	; if_else_bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.23_18
.BB.LABEL.23_17:	; if_then_bb208
	movea 0x00000090, r0, r7
	movea 0x00000042, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1539
	jarl _CANTP_DET_REPORTRUNTIMEERROR.1, r31
.BB.LABEL.23_18:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1546
	dispose 0x00000004, 0x00000071, [r31]
_CanTp_RxSubDealWithCFToUp.1:
	.stack _CanTp_RxSubDealWithCFToUp.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1560
	prepare 0x00000479, 0x00000010
	mov r6, r20
	mov r7, r21
	mov r8, r22
	movea 0x00000001, r3, r8
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1577
	mov r21, r6
	jarl _CanTp_RxGetCFOffset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1578
	ld.hu 0x00000008[r20], r23
	ld.bu 0x00000000[r3], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1579
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	movea 0x00000020, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1580
	st.b r2, 0x00000028[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1581
	st.w r0, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1578
	sub r24, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1582
	ld.bu 0x0000003A[r22], r2
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.24_2
.BB.LABEL.24_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1584
	add 0x00000001, r2
	st.b r2, 0x0000003A[r22]
.BB.LABEL.24_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1587
	ld.hu 0x0000002E[r22], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1591
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1593
	ld.w 0x00000000[r20], r2
	ld.bu 0x00000000[r3], r5
	add r5, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1587
	andi 0x0000FFFF, r23, r2
	cmp r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1589
	cmov 0x0000000B, r24, r23, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1594
	st.h r23, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1595
	ld.hu 0x00000014[r21], r6
	movea 0x00000002, r3, r8
	movea 0x00000004, r3, r7
	jarl _PduR_TpCopyRxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1596
	cmp 0x00000001, r10
	bz9 .BB.LABEL.24_8
.BB.LABEL.24_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1604
	ld.h 0x0000002E[r22], r2
	sub r23, r2
	st.h r2, 0x0000002E[r22]
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1605
	ld.bu 0x00000000[r3], r5
	sub r5, r2
	zxh r2
	andi 0x0000FFFF, r23, r5
	cmp r2, r5
	bl9 .BB.LABEL.24_5
.BB.LABEL.24_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.hu 0x00000008[r20], r2
	ld.hu 0x00000036[r22], r5
	cmp r5, r2
	bz9 .BB.LABEL.24_6
.BB.LABEL.24_5:	; bb109
	ld.hu 0x0000002E[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.24_8
.BB.LABEL.24_6:	; if_else_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1618
	ld.hu 0x0000002E[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.24_10
.BB.LABEL.24_7:	; if_then_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1622
	ld.hu 0x00000008[r20], r7
	ld.bu 0x00000001[r3], r8
	andi 0x0000FFFF, r23, r6
	jarl _CanTp_checkLastCF.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.24_9
.BB.LABEL.24_8:	; if_then_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.hu 0x00000014[r21], r6
	mov 0x00000001, r7
	jarl _PduR_TpRxIndication, r31
	mov r22, r6
	jarl _CanTp_ReleaseRxChannel.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1704
	dispose 0x00000010, 0x00000479, [r31]
.BB.LABEL.24_9:	; if_else_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1638
	set1 0x00000002, 0x0000003D[r22]
	dispose 0x00000010, 0x00000479, [r31]
.BB.LABEL.24_10:	; if_else_bb162
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1649
	ld.bu 0x00000034[r22], r2
	ld.bu 0x0000003A[r22], r5
	cmp r5, r2
	bnz9 .BB.LABEL.24_15
.BB.LABEL.24_11:	; if_then_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1655
	ld.hu 0x00000002[r3], r8
	mov r21, r6
	mov r22, r7
	jarl _CanTp_CompareBufferWithBs, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1657
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.24_13
.BB.LABEL.24_12:	; if_then_bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1660
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1661
	st.w r2, 0x00000024[r22]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1662
	st.w r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1663
	ld.w 0x00000008[r21], r21
	st.w r21, 0x0000000C[r22]
	br9 .BB.LABEL.24_17
.BB.LABEL.24_13:	; if_else_bb196
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1673
	mov r21, r6
	mov r22, r7
	jarl _CanTp_RxBlockStart.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1674
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.24_19
.BB.LABEL.24_14:	; if_then_bb205
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1676
	ld.hu 0x00000014[r21], r6
	mov 0x00000001, r7
	jarl _PduR_TpRxIndication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1677
	mov r22, r6
	jarl _CanTp_ReleaseRxChannel.1, r31
	br9 .BB.LABEL.24_19
.BB.LABEL.24_15:	; if_else_bb212
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000006, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1684
	st.w r2, 0x00000024[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1685
	ld.w 0x0000000C[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.24_18
.BB.LABEL.24_16:	; if_then_bb221
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1687
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1688
	ld.w 0x0000000C[r21], r2
	ld.w 0x00000000[r2], r2
	mov 0x00000003, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1689
	st.w r5, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1690
	st.w r2, 0x0000000C[r22]
.BB.LABEL.24_17:	; if_then_bb221
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	addi 0x00000008, r22, r6
	jarl _CanTp_ResetTime, r31
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	br9 .BB.LABEL.24_19
.BB.LABEL.24_18:	; if_else_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1696
	st.w r0, 0x00000004[r22]
.BB.LABEL.24_19:	; if_break_bb237
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1700
	ld.b 0x0000003B[r22], r2
	add 0x00000001, r2
	andi 0x0000000F, r2, r2
	st.b r2, 0x0000003B[r22]
	dispose 0x00000010, 0x00000479, [r31]
_CanTp_RxSubDealWithFF.1:
	.stack _CanTp_RxSubDealWithFF.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1718
	prepare 0x00000479, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1723
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1729
	ld.hu 0x00000008[r20], r6
	jarl _CanTp_MatchDLC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1739
	ld.hu 0x00000008[r20], r2
	cmp 0x00000008, r2
	mov r10, r23
	bl17 .BB.LABEL.25_17
.BB.LABEL.25_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r2
	ld.w LOWW(#_CanTp_ConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	ld.bu 0x00000040[r22], r5
	shl 0x00000005, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; bb36
	ld.w 0x00000060[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.25_17
.BB.LABEL.25_3:	; bb54
	ld.w 0x00000028[r21], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.25_17
.BB.LABEL.25_4:	; bb67
	ld.w 0x00000020[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.25_6
.BB.LABEL.25_5:	; bb67
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.25_17
.BB.LABEL.25_6:	; bb93
	ld.hu 0x00000008[r20], r2
	ld.hu 0x00000020[r21], r5
	cmp r5, r2
	bh9 .BB.LABEL.25_17
.BB.LABEL.25_7:	; bb111
	cmp r23, r2
	bz9 .BB.LABEL.25_9
.BB.LABEL.25_8:	; bb111
	cmp 0x00000008, r2
	bh9 .BB.LABEL.25_17
.BB.LABEL.25_9:	; bb141
	ld.w 0x00000028[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.25_17
.BB.LABEL.25_10:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1752
	ld.w 0x00000000[r20], r6
	movea 0x00000003, r3, r7
	mov r21, r8
	jarl _CanTp_RxGetFFDl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1756
	ld.hu 0x00000008[r20], r2
	cmp 0x00000009, r2
	mov r10, r24
	bl9 .BB.LABEL.25_12
.BB.LABEL.25_11:	; if_then_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000003, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1758
	ld.b 0x00000000[r2], r2
	add 0x00000001, r2
	st.b r2, 0x00000003[r3]
.BB.LABEL.25_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1762
	ld.hu 0x00000008[r20], r2
	ld.bu 0x00000003[r3], r5
	sub r5, r2
	add 0x00000001, r2
	cmp r2, r24
	bnh9 .BB.LABEL.25_20
.BB.LABEL.25_13:	; if_then_bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1780
	ld.w 0x00000020[r22], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.25_15
.BB.LABEL.25_14:	; if_then_bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.25_16
.BB.LABEL.25_15:	; if_then_bb204
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1785
	ld.hu 0x00000014[r21], r6
	mov 0x00000001, r7
	jarl _PduR_TpRxIndication, r31
.BB.LABEL.25_16:	; if_break_bb208
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1788
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1789
	st.w r2, 0x00000020[r22]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1790
	st.w r2, 0x00000024[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1791
	ld.h 0x00000016[r21], r5
	st.h r5, 0x0000002A[r22]
	movea 0x00000010, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1792
	st.b r5, 0x00000028[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1793
	st.h r24, 0x0000002E[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1794
	st.h r24, 0x00000030[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1796
	st.b r0, 0x00000034[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1798
	st.h r23, 0x00000036[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1800
	st.b r0, 0x0000003B[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1801
	st.b r0, 0x0000003A[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1802
	st.b r0, 0x0000003C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1806
	st.w r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1807
	ld.w 0x00000008[r21], r2
	st.w r2, 0x0000000C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1808
	addi 0x00000008, r22, r6
	jarl _CanTp_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1809
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1811
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _CanTp_RxSubDealWithFFToUp.1, r31
	dispose 0x00000004, 0x00000479, [r31]
.BB.LABEL.25_17:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1822
	ld.w 0x00000028[r21], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.25_19
.BB.LABEL.25_18:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.25_20
.BB.LABEL.25_19:	; if_then_bb271
	movea 0x00000090, r0, r7
	movea 0x00000042, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1830
	jarl _CANTP_DET_REPORTRUNTIMEERROR.1, r31
.BB.LABEL.25_20:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1837
	dispose 0x00000004, 0x00000479, [r31]
_CanTp_RxSubDealWithFFToUp.1:
	.stack _CanTp_RxSubDealWithFFToUp.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1851
	prepare 0x00000071, 0x00000018
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1858
	st.b r0, 0x0000000F[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1876
	st.h r0, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1877
	ld.w 0x00000000[r20], r6
	movea 0x0000000F, r3, r7
	mov r21, r8
	jarl _CanTp_RxGetFFDl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1878
	ld.hu 0x00000014[r21], r6
	movea 0x0000000C, r3, r9
	mov r3, r7
	mov r10, r8
	jarl _PduR_TpStartOfReception, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1879
	cmp 0x00000000, r10
	bz9 .BB.LABEL.26_5
.BB.LABEL.26_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	add 0xFFFFFFFF, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.26_11
.BB.LABEL.26_2:	; entry
	cmp 0x00000002, r10
	bnz9 .BB.LABEL.26_4
.BB.LABEL.26_3:	; switch_clause_bb123
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1934
	st.b r2, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1935
	st.b r0, 0x00000011[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1936
	st.w r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1937
	ld.w 0x00000010[r3], r8
	mov 0x00000000, r9
	mov r21, r6
	mov r22, r7
	jarl _CanTp_SendFC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1939
	mov r22, r6
	jarl _CanTp_ReleaseRxChannel.1, r31
.BB.LABEL.26_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1945
	dispose 0x00000018, 0x00000071, [r31]
.BB.LABEL.26_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1882
	ld.w 0x00000000[r20], r2
	ld.bu 0x0000000F[r3], r5
	add r5, r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1883
	ld.h 0x00000008[r20], r2
	ld.bu 0x0000000F[r3], r5
	sub r5, r2
	st.h r2, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1884
	ld.hu 0x00000014[r21], r6
	movea 0x0000000C, r3, r8
	mov r3, r7
	jarl _PduR_TpCopyRxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1885
	cmp 0x00000001, r10
	bz9 .BB.LABEL.26_9
.BB.LABEL.26_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1896
	ld.h 0x00000008[r20], r2
	ld.bu 0x0000000F[r3], r5
	sub r2, r5
	ld.h 0x0000002E[r22], r2
	add r5, r2
	st.h r2, 0x0000002E[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1898
	ld.hu 0x0000000C[r3], r8
	mov r21, r6
	mov r22, r7
	jarl _CanTp_CalcBS, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1899
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.26_8
.BB.LABEL.26_7:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1901
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1903
	st.w r2, 0x00000024[r22]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1905
	st.w r2, 0x00000004[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1906
	ld.w 0x00000008[r21], r21
	st.w r21, 0x0000000C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1907
	addi 0x00000008, r22, r6
	jarl _CanTp_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1908
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	br9 .BB.LABEL.26_10
.BB.LABEL.26_8:	; if_else_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1916
	mov r21, r6
	mov r22, r7
	jarl _CanTp_RxBlockStart.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1917
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.26_10
.BB.LABEL.26_9:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.hu 0x00000014[r21], r6
	mov 0x00000001, r7
	jarl _PduR_TpRxIndication, r31
	mov r22, r6
	jarl _CanTp_ReleaseRxChannel.1, r31
.BB.LABEL.26_10:	; if_break_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1925
	ld.b 0x0000003B[r22], r21
	add 0x00000001, r21
	andi 0x0000000F, r21, r21
	st.b r21, 0x0000003B[r22]
	dispose 0x00000018, 0x00000071, [r31]
.BB.LABEL.26_11:	; switch_clause_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1928
	mov r22, r6
	jarl _CanTp_InitSubChannel.1, r31
	dispose 0x00000018, 0x00000071, [r31]
_CanTp_RxSubDealWithSF.1:
	.stack _CanTp_RxSubDealWithSF.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1959
	prepare 0x00000479, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1964
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1969
	st.b r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1970
	ld.hu 0x00000008[r20], r6
	jarl _CanTp_MatchDLC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1976
	ld.hu 0x00000008[r20], r2
	cmp 0x00000000, r2
	mov r10, r23
	bz9 .BB.LABEL.27_15
.BB.LABEL.27_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r2
	ld.w LOWW(#_CanTp_ConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	ld.bu 0x00000040[r22], r5
	shl 0x00000005, r5
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.27_3
.BB.LABEL.27_2:	; bb36
	ld.w 0x00000060[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.27_15
.BB.LABEL.27_3:	; bb54
	ld.w 0x00000020[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.27_5
.BB.LABEL.27_4:	; bb54
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.27_15
.BB.LABEL.27_5:	; if_then_bb
	movea 0x00000003, r3, r9
	movea 0x00000002, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1982
	mov r20, r6
	mov r21, r7
	jarl _CanTp_RxGetSFDl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1990
	ld.hu 0x00000008[r20], r2
	cmp r23, r2
	mov r10, r24
	bz9 .BB.LABEL.27_7
.BB.LABEL.27_6:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x00000007, r2
	bh9 .BB.LABEL.27_15
.BB.LABEL.27_7:	; bb106
	ld.hu 0x00000020[r21], r5
	cmp r5, r2
	bh9 .BB.LABEL.27_15
.BB.LABEL.27_8:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1996
	cmp 0x00000007, r2
	bh9 .BB.LABEL.27_10
.BB.LABEL.27_9:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.w 0x00000024[r21], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.27_14
.BB.LABEL.27_10:	; if_then_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 1999
	cmp 0x00000000, r24
	bz9 .BB.LABEL.27_15
.BB.LABEL.27_11:	; if_then_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2002
	ld.bu 0x00000002[r3], r8
	mov r24, r6
	mov r23, r7
	jarl _CanTp_checkSF.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.27_15
.BB.LABEL.27_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2008
	ld.hu 0x00000008[r20], r2
	ld.bu 0x00000003[r3], r5
	sub r5, r2
	cmp r2, r24
	bgt9 .BB.LABEL.27_15
.BB.LABEL.27_13:	; if_then_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2010
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _CanTp_RxSubDealWithSFToUp.1, r31
	dispose 0x00000004, 0x00000479, [r31]
.BB.LABEL.27_14:	; if_else_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000070, r0, r7
	movea 0x00000042, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2023
	jarl _CANTP_DET_REPORTRUNTIMEERROR.1, r31
.BB.LABEL.27_15:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2028
	dispose 0x00000004, 0x00000479, [r31]
_CanTp_RxSubDealWithSFToUp.1:
	.stack _CanTp_RxSubDealWithSFToUp.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2042
	prepare 0x00000079, 0x00000014
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2051
	st.b r0, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2058
	st.b r0, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2066
	st.h r0, 0x0000000C[r3]
	movea 0x00000003, r3, r9
	movea 0x00000002, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2081
	jarl _CanTp_RxGetSFDl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2089
	ld.w 0x00000020[r22], r2
	cmp 0x00000002, r2
	mov r10, r23
	bz9 .BB.LABEL.28_2
.BB.LABEL.28_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.28_8
.BB.LABEL.28_2:	; bb32
	ld.w 0x00000000[r20], r2
	ld.bu 0x00000003[r3], r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	addi 0xFFFFFFC2, r2, r0
	bnz9 .BB.LABEL.28_7
.BB.LABEL.28_3:	; bb43
	ld.bu 0x00000001[r5], r2
	addi 0xFFFFFF80, r2, r0
	bnz9 .BB.LABEL.28_7
.BB.LABEL.28_4:	; bb62
	ld.w 0x00000028[r21], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.28_6
.BB.LABEL.28_5:	; bb62
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.28_7
.BB.LABEL.28_6:	; bb62
	cmp 0x00000002, r23
	bz9 .BB.LABEL.28_8
.BB.LABEL.28_7:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2099
	ld.hu 0x00000014[r21], r6
	mov 0x00000001, r7
	jarl _PduR_TpRxIndication, r31
.BB.LABEL.28_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2108
	ld.hu 0x00000014[r21], r6
	movea 0x00000012, r3, r9
	movea 0x00000004, r3, r7
	mov r23, r8
	jarl _PduR_TpStartOfReception, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2110
	cmp 0x00000001, r10
	bz9 .BB.LABEL.28_18
.BB.LABEL.28_9:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.28_19
.BB.LABEL.28_10:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2113
	ld.w 0x00000000[r20], r2
	ld.bu 0x00000003[r3], r5
	add r5, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2114
	st.h r23, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2115
	ld.hu 0x00000014[r21], r6
	movea 0x00000012, r3, r8
	movea 0x00000004, r3, r7
	jarl _PduR_TpCopyRxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2116
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.28_19
.BB.LABEL.28_11:	; if_then_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2118
	ld.w 0x00000000[r20], r2
	ld.bu 0x00000003[r3], r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	addi 0xFFFFFFC2, r2, r0
	bnz9 .BB.LABEL.28_17
.BB.LABEL.28_12:	; bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.bu 0x00000001[r5], r2
	addi 0xFFFFFF80, r2, r0
	bnz9 .BB.LABEL.28_17
.BB.LABEL.28_13:	; bb172
	ld.w 0x00000028[r21], r2
	cmp 0x00000002, r2
	bz9 .BB.LABEL.28_15
.BB.LABEL.28_14:	; bb172
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.28_17
.BB.LABEL.28_15:	; bb172
	cmp 0x00000002, r23
	bnz9 .BB.LABEL.28_17
.BB.LABEL.28_16:	; if_then_bb211
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2124
	ld.hu 0x00000014[r21], r6
	mov 0x00000000, r7
	jarl _PduR_TpRxIndication, r31
	dispose 0x00000014, 0x00000079, [r31]
.BB.LABEL.28_17:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2131
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2133
	st.w r2, 0x00000020[r22]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2134
	st.w r2, 0x00000024[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2135
	ld.h 0x00000016[r21], r21
	st.h r21, 0x0000002A[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2136
	st.b r0, 0x00000028[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2137
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2145
	set1 0x00000002, 0x0000003D[r22]
	dispose 0x00000014, 0x00000079, [r31]
.BB.LABEL.28_18:	; switch_clause_bb239
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2161
	mov r22, r6
	jarl _CanTp_InitSubChannel.1, r31
	dispose 0x00000014, 0x00000079, [r31]
.BB.LABEL.28_19:	; switch_clause_bb241
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.hu 0x00000014[r21], r6
	mov 0x00000001, r7
	jarl _PduR_TpRxIndication, r31
	mov r22, r6
	jarl _CanTp_ReleaseRxChannel.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2178
	dispose 0x00000014, 0x00000079, [r31]
_CanTp_checkSF.1:
	.stack _CanTp_checkSF.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2181
	addi 0xFFFFFFE9, r7, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2184
	bgt9 .BB.LABEL.29_7
.BB.LABEL.29_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x0000000C, r7
	bz9 .BB.LABEL.29_18
.BB.LABEL.29_2:	; entry
	addi 0xFFFFFFF0, r7, r0
	bz9 .BB.LABEL.29_4
.BB.LABEL.29_3:	; entry
	addi 0xFFFFFFEC, r7, r0
	bnz9 .BB.LABEL.29_24
.BB.LABEL.29_4:	; switch_clause_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2195
	addi 0xFFFFFFFB, r7, r2
	sub r8, r2
	cmp r2, r6
	bl9 .BB.LABEL.29_26
.BB.LABEL.29_5:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	add 0xFFFFFFFE, r7
	sub r8, r7
	cmp r7, r6
	bh9 .BB.LABEL.29_26
.BB.LABEL.29_6:	; if_then_bb56
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2197
	jmp [r31]
.BB.LABEL.29_7:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	addi 0xFFFFFFD1, r7, r0
	bgt9 .BB.LABEL.29_13
.BB.LABEL.29_8:	; entry
	addi 0xFFFFFFE8, r7, r0
	bz9 .BB.LABEL.29_4
.BB.LABEL.29_9:	; entry
	addi 0xFFFFFFE0, r7, r0
	bnz9 .BB.LABEL.29_24
.BB.LABEL.29_10:	; switch_clause_bb58
	movea 0x00000017, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2201
	sub r8, r2
	cmp r2, r6
	bl9 .BB.LABEL.29_26
.BB.LABEL.29_11:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x0000001E, r0, r2
	sub r8, r2
	cmp r2, r6
	bh9 .BB.LABEL.29_26
.BB.LABEL.29_12:	; if_then_bb83
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2203
	jmp [r31]
.BB.LABEL.29_13:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	addi 0xFFFFFFD0, r7, r0
	bz9 .BB.LABEL.29_21
.BB.LABEL.29_14:	; entry
	addi 0xFFFFFFC0, r7, r0
	bnz9 .BB.LABEL.29_24
.BB.LABEL.29_15:	; switch_clause_bb111
	movea 0x0000002F, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2213
	sub r8, r2
	cmp r2, r6
	bl9 .BB.LABEL.29_26
.BB.LABEL.29_16:	; bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x0000003E, r0, r2
	sub r8, r2
	cmp r2, r6
	bh9 .BB.LABEL.29_26
.BB.LABEL.29_17:	; if_then_bb135
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2215
	jmp [r31]
.BB.LABEL.29_18:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2187
	sub r8, r2
	cmp r2, r6
	bl9 .BB.LABEL.29_26
.BB.LABEL.29_19:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x0000000A, r2
	sub r8, r2
	cmp r2, r6
	bh9 .BB.LABEL.29_26
.BB.LABEL.29_20:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2189
	jmp [r31]
.BB.LABEL.29_21:	; switch_clause_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x0000001F, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2207
	sub r8, r2
	cmp r2, r6
	bl9 .BB.LABEL.29_26
.BB.LABEL.29_22:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x0000002E, r0, r2
	sub r8, r2
	cmp r2, r6
	bh9 .BB.LABEL.29_26
.BB.LABEL.29_23:	; if_then_bb109
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2209
	jmp [r31]
.BB.LABEL.29_24:	; switch_clause_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2219
	cmp 0x00000008, r7
	bh9 .BB.LABEL.29_26
.BB.LABEL.29_25:	; if_then_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2221
	jmp [r31]
.BB.LABEL.29_26:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2226
	jmp [r31]
_CanTp_checkLastCF.1:
	.stack _CanTp_checkLastCF.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2228
	addi 0xFFFFFFE9, r7, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2231
	bgt9 .BB.LABEL.30_7
.BB.LABEL.30_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x0000000C, r7
	bz9 .BB.LABEL.30_18
.BB.LABEL.30_2:	; entry
	addi 0xFFFFFFF0, r7, r0
	bz9 .BB.LABEL.30_4
.BB.LABEL.30_3:	; entry
	addi 0xFFFFFFEC, r7, r0
	bnz9 .BB.LABEL.30_24
.BB.LABEL.30_4:	; switch_clause_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2242
	addi 0xFFFFFFFC, r7, r2
	sub r8, r2
	cmp r2, r6
	bl9 .BB.LABEL.30_26
.BB.LABEL.30_5:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	add 0xFFFFFFFF, r7
	sub r8, r7
	cmp r7, r6
	bh9 .BB.LABEL.30_26
.BB.LABEL.30_6:	; if_then_bb56
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2244
	jmp [r31]
.BB.LABEL.30_7:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	addi 0xFFFFFFD1, r7, r0
	bgt9 .BB.LABEL.30_13
.BB.LABEL.30_8:	; entry
	addi 0xFFFFFFE8, r7, r0
	bz9 .BB.LABEL.30_4
.BB.LABEL.30_9:	; entry
	addi 0xFFFFFFE0, r7, r0
	bnz9 .BB.LABEL.30_24
.BB.LABEL.30_10:	; switch_clause_bb58
	movea 0x00000018, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2248
	sub r8, r2
	cmp r2, r6
	bl9 .BB.LABEL.30_26
.BB.LABEL.30_11:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x0000001F, r0, r2
	sub r8, r2
	cmp r2, r6
	bh9 .BB.LABEL.30_26
.BB.LABEL.30_12:	; if_then_bb83
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2250
	jmp [r31]
.BB.LABEL.30_13:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	addi 0xFFFFFFD0, r7, r0
	bz9 .BB.LABEL.30_21
.BB.LABEL.30_14:	; entry
	addi 0xFFFFFFC0, r7, r0
	bnz9 .BB.LABEL.30_24
.BB.LABEL.30_15:	; switch_clause_bb111
	movea 0x00000030, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2260
	sub r8, r2
	cmp r2, r6
	bl9 .BB.LABEL.30_26
.BB.LABEL.30_16:	; bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x0000003F, r0, r2
	sub r8, r2
	cmp r2, r6
	bh9 .BB.LABEL.30_26
.BB.LABEL.30_17:	; if_then_bb135
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2262
	jmp [r31]
.BB.LABEL.30_18:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2234
	sub r8, r2
	cmp r2, r6
	bl9 .BB.LABEL.30_26
.BB.LABEL.30_19:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x0000000B, r2
	sub r8, r2
	cmp r2, r6
	bh9 .BB.LABEL.30_26
.BB.LABEL.30_20:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2236
	jmp [r31]
.BB.LABEL.30_21:	; switch_clause_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000020, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2254
	sub r8, r2
	cmp r2, r6
	bl9 .BB.LABEL.30_26
.BB.LABEL.30_22:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x0000002F, r0, r2
	sub r8, r2
	cmp r2, r6
	bh9 .BB.LABEL.30_26
.BB.LABEL.30_23:	; if_then_bb109
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2256
	jmp [r31]
.BB.LABEL.30_24:	; switch_clause_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2266
	cmp 0x00000008, r7
	bh9 .BB.LABEL.30_26
.BB.LABEL.30_25:	; if_then_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2268
	jmp [r31]
.BB.LABEL.30_26:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2273
	jmp [r31]
_CanTp_RxBlockStart.1:
	.stack _CanTp_RxBlockStart.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2277
	prepare 0x00000071, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2288
	tst1 0x00000001, 0x0000003D[r7]
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.31_2
.BB.LABEL.31_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2290
	ld.bu 0x00000039[r20], r22
	br9 .BB.LABEL.31_5
.BB.LABEL.31_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2295
	ld.w 0x00000030[r21], r22
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.31_4
.BB.LABEL.31_3:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.31_5
.BB.LABEL.31_4:	; bb
	ld.bu 0x00000000[r22], r22
.BB.LABEL.31_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2298
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2299
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2300
	ld.b 0x00000034[r20], r2
	st.b r2, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2301
	st.w r22, 0x00000004[r3]
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2303
	st.w r2, 0x00000024[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2304
	st.b r0, 0x0000003C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2305
	st.b r0, 0x0000003A[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2306
	ld.w 0x00000004[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.31_7
.BB.LABEL.31_6:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2308
	ld.w 0x00000000[r2], r2
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2309
	st.w r5, 0x00000004[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2310
	st.w r2, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2311
	addi 0x00000008, r20, r6
	jarl _CanTp_ResetTime, r31
	br9 .BB.LABEL.31_8
.BB.LABEL.31_7:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2316
	st.w r0, 0x00000004[r20]
.BB.LABEL.31_8:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2320
	ld.w 0x00000004[r3], r9
	ld.w 0x00000000[r3], r8
	mov r21, r6
	mov r20, r7
	jarl _CanTp_SendFC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2323
	dispose 0x00000008, 0x00000071, [r31]
_CanTp_DispatchRxEvent.1:
	.stack _CanTp_DispatchRxEvent.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2326
	prepare 0x00000061, 0x00000014
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2336
	tst1 0x00000002, 0x0000003D[r6]
	mov r6, r20
	bz9 .BB.LABEL.32_4
.BB.LABEL.32_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2338
	ld.hu 0x0000002A[r20], r6
	movea 0x00000003, r3, r7
	jarl _CanTp_GetRxSduCfgByNSduId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2339
	cmp 0x00000000, r10
	bz9 .BB.LABEL.32_3
.BB.LABEL.32_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2361
	st.w r2, 0x00000020[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2362
	ld.hu 0x00000014[r10], r6
	mov 0x00000000, r7
	jarl _PduR_TpRxIndication, r31
.BB.LABEL.32_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2365
	mov r20, r6
	jarl _CanTp_InitSubChannel.1, r31
.BB.LABEL.32_4:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2369
	ld.w 0x00000024[r20], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.32_13
.BB.LABEL.32_5:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2371
	ld.hu 0x0000002A[r20], r6
	movea 0x00000003, r3, r7
	jarl _CanTp_GetRxSduCfgByNSduId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2372
	addi 0x00000000, r10, r21
	bz9 .BB.LABEL.32_13
.BB.LABEL.32_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.w 0x00000004[r20], r2
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.32_13
.BB.LABEL.32_7:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2374
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2375
	st.h r0, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2377
	ld.hu 0x00000014[r21], r6
	movea 0x00000012, r3, r8
	movea 0x00000004, r3, r7
	jarl _PduR_TpCopyRxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2378
	ld.hu 0x00000012[r3], r8
	mov r21, r6
	mov r20, r7
	jarl _CanTp_CalcBS, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2379
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.32_9
.BB.LABEL.32_8:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2382
	ld.hu 0x00000012[r3], r8
	mov r21, r6
	mov r20, r7
	jarl _CanTp_CompareBufferWithBs, r31
.BB.LABEL.32_9:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2384
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.32_11
.BB.LABEL.32_10:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2386
	mov r20, r6
	mov r21, r7
	jarl _CanTp_DispatchRxEventSubDeal.1, r31
	dispose 0x00000014, 0x00000061, [r31]
.BB.LABEL.32_11:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2392
	mov r21, r6
	mov r20, r7
	jarl _CanTp_RxBlockStart.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2393
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.32_13
.BB.LABEL.32_12:	; if_then_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2395
	ld.hu 0x00000014[r21], r6
	mov 0x00000001, r7
	jarl _PduR_TpRxIndication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2396
	mov r20, r6
	jarl _CanTp_ReleaseRxChannel.1, r31
.BB.LABEL.32_13:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2401
	dispose 0x00000014, 0x00000061, [r31]
_CanTp_DispatchRxEventSubDeal.1:
	.stack _CanTp_DispatchRxEventSubDeal.1 = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2404
	prepare 0x00000061, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2414
	ld.w 0x0000000C[r6], r2
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bnz9 .BB.LABEL.33_15
.BB.LABEL.33_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2416
	ld.w 0x0000002C[r20], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.33_3
.BB.LABEL.33_2:	; if_then_bb.bb24_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x000000FF, r0, r2
	br9 .BB.LABEL.33_4
.BB.LABEL.33_3:	; bb
	ld.bu 0x00000000[r2], r2
.BB.LABEL.33_4:	; bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2418
	cmp 0x00000000, r2
	bz9 .BB.LABEL.33_14
.BB.LABEL.33_5:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2424
	ld.bu 0x00000028[r21], r5
	add 0xFFFFFFF0, r5
	bz9 .BB.LABEL.33_8
.BB.LABEL.33_6:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.bu 0x00000034[r21], r5
	ld.bu 0x0000003A[r21], r6
	cmp r6, r5
	bnz9 .BB.LABEL.33_14
.BB.LABEL.33_7:	; bb51
	ld.hu 0x0000002E[r21], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.33_14
.BB.LABEL.33_8:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2428
	ld.bu 0x0000003C[r21], r5
	cmp r5, r2
	bh9 .BB.LABEL.33_10
.BB.LABEL.33_9:	; if_then_bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2430
	ld.hu 0x00000014[r20], r6
	mov 0x00000001, r7
	jarl _PduR_TpRxIndication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2433
	mov r21, r6
	jarl _CanTp_ReleaseRxChannel.1, r31
	br9 .BB.LABEL.33_14
.BB.LABEL.33_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2437
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2439
	st.b r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2440
	st.b r0, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2441
	st.w r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2443
	ld.b 0x0000003C[r21], r2
	add 0x00000001, r2
	st.b r2, 0x0000003C[r21]
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2445
	st.w r2, 0x00000024[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2446
	ld.w 0x00000004[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.33_12
.BB.LABEL.33_11:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2448
	st.w r2, 0x00000004[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2449
	ld.w 0x00000004[r20], r2
	ld.w 0x00000000[r2], r2
	st.w r2, 0x0000000C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2450
	addi 0x00000008, r21, r6
	jarl _CanTp_ResetTime, r31
	br9 .BB.LABEL.33_13
.BB.LABEL.33_12:	; if_else_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2455
	st.w r0, 0x00000004[r21]
.BB.LABEL.33_13:	; if_else_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2458
	ld.w 0x00000004[r3], r9
	ld.w 0x00000000[r3], r8
	mov r20, r6
	mov r21, r7
	jarl _CanTp_SendFC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2462
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.33_15
.BB.LABEL.33_14:	; if_then_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2464
	ld.hu 0x00000014[r20], r6
	mov 0x00000001, r7
	jarl _PduR_TpRxIndication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2466
	mov r21, r6
	jarl _CanTp_ReleaseRxChannel.1, r31
.BB.LABEL.33_15:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2469
	dispose 0x00000008, 0x00000061, [r31]
_CanTp_DispatchTxEvent.1:
	.stack _CanTp_DispatchTxEvent.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2472
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2477
	ld.w 0x00000024[r6], r2
	add 0xFFFFFFFC, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.34_5
.BB.LABEL.34_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2479
	ld.w 0x00000064[r6], r2
	cmp 0x0000000A, r2
	bz9 .BB.LABEL.34_4
.BB.LABEL.34_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x00000008, r2
	bnz9 .BB.LABEL.34_5
.BB.LABEL.34_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2483
	jarl _CanTp_TxHandleSFStart, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.34_4:	; switch_clause_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2487
	jarl _CanTp_TxHandleLargeStart, r31
.BB.LABEL.34_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2494
	dispose 0x00000000, 0x00000001, [r31]
_CanTp_TxHandleSFStart:
	.stack _CanTp_TxHandleSFStart = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2498
	prepare 0x00000479, 0x00000010
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2515
	ld.hu 0x0000006A[r20], r6
	movea 0x00000002, r3, r7
	jarl _CanTp_GetTxSduCfgByTxSduId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2511
	movea 0x00000080, r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2502
	movea 0x00000040, r20, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2518
	addi 0x00000000, r10, r23
	bz9 .BB.LABEL.35_6
.BB.LABEL.35_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000003, r3, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2521
	mov r22, r6
	mov r23, r7
	mov r21, r8
	jarl _CanTp_ConstructSFPci, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2522
	ld.bu 0x00000003[r3], r2
	add r20, r2
	movea 0x00000080, r2, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2523
	ld.h 0x0000006E[r20], r2
	st.h r2, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2525
	ld.hu 0x00000010[r23], r6
	mov r3, r9
	mov 0x00000000, r8
	movea 0x00000004, r3, r7
	jarl _PduR_TpCopyTxData, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2527
	cmp 0x00000001, r10
	bz9 .BB.LABEL.35_5
.BB.LABEL.35_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.35_6
.BB.LABEL.35_3:	; switch_clause_bb
	movea 0x00000004, r3, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2531
	ld.h 0x00000008[r24], r2
	ld.h 0x0000006E[r20], r5
	sub r2, r5
	st.h r5, 0x0000006E[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2534
	st.w r21, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2535
	ld.h 0x00000008[r24], r2
	ld.bu 0x00000003[r3], r5
	add r5, r2
	st.h r2, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2540
	mov r22, r6
	mov r23, r7
	mov r24, r8
	jarl _CanTp_TxSFPadding, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2541
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	mov 0x00000009, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2543
	st.w r2, 0x00000064[r20]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2545
	st.w r2, 0x00000044[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2546
	ld.w 0x00000000[r23], r2
	st.w r2, 0x0000004C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2547
	movea 0x00000048, r20, r6
	jarl _CanTp_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2548
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2550
	ld.hu 0x00000018[r23], r6
	mov r24, r7
	jarl _CanIf_Transmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2551
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.35_6
.BB.LABEL.35_4:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2554
	st.w r0, 0x00000060[r20]
.BB.LABEL.35_5:	; switch_clause_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov r22, r6
	jarl _CanTp_ReleaseTxChannel.1, r31
	ld.hu 0x00000010[r23], r6
	mov 0x00000001, r7
	jarl _PduR_TpTxConfirmation, r31
.BB.LABEL.35_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2577
	dispose 0x00000010, 0x00000479, [r31]
_CanTp_TxHandleLargeStart:
	.stack _CanTp_TxHandleLargeStart = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2581
	prepare 0x00000479, 0x00000010
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2602
	ld.hu 0x0000006A[r20], r6
	movea 0x00000002, r3, r7
	jarl _CanTp_GetTxSduCfgByTxSduId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2595
	movea 0x00000080, r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2585
	movea 0x00000040, r20, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2603
	addi 0x00000000, r10, r23
	bz9 .BB.LABEL.36_20
.BB.LABEL.36_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2605
	ld.bu 0x00000068[r20], r2
	movea 0x00000003, r3, r9
	mov r22, r6
	mov r23, r7
	mov r21, r8
	add 0xFFFFFFF0, r2
	bnz9 .BB.LABEL.36_3
.BB.LABEL.36_2:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2608
	jarl _CanTp_ConstructFFPci, r31
	br9 .BB.LABEL.36_4
.BB.LABEL.36_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2613
	jarl _CanTp_ConstructCFPci, r31
.BB.LABEL.36_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2617
	ld.hu 0x0000001C[r23], r6
	cmp 0x00000008, r6
	ble9 .BB.LABEL.36_8
.BB.LABEL.36_5:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.w 0x00000034[r23], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.36_7
.BB.LABEL.36_6:	; bb52.bb69_crit_edge
	mov 0x00000008, r6
	br9 .BB.LABEL.36_8
.BB.LABEL.36_7:	; bb59
	jarl _CanTp_MatchDLC, r31
	mov r10, r6
.BB.LABEL.36_8:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2627
	ld.bu 0x00000003[r3], r2
	mov r6, r5
	sub r2, r5
	st.h r5, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2629
	zxh r5
	ld.hu 0x0000006E[r20], r7
	cmp r7, r5
	bnh9 .BB.LABEL.36_10
.BB.LABEL.36_9:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2631
	st.h r7, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2633
	add r2, r7
	andi 0x0000FFFF, r7, r6
	jarl _CanTp_MatchDLC, r31
	mov r10, r6
.BB.LABEL.36_10:	; if_break_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov r6, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2636
	ld.bu 0x00000003[r3], r2
	add r20, r2
	movea 0x00000080, r2, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2638
	ld.bu 0x00000068[r20], r2
	add 0xFFFFFFF0, r2
	bz9 .BB.LABEL.36_14
.BB.LABEL.36_11:	; bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	tst1 0x00000003, 0x0000007D[r20]
	bz9 .BB.LABEL.36_13
.BB.LABEL.36_12:	; bb115.if_break_bb156_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.36_15
.BB.LABEL.36_13:	; bb129
	ld.bu 0x00000068[r20], r2
	addi 0xFFFFFFE0, r2, r0
	bnz9 .BB.LABEL.36_12
.BB.LABEL.36_14:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2642
	ld.hu 0x00000010[r23], r6
	mov r3, r9
	mov 0x00000000, r8
	movea 0x00000004, r3, r7
	jarl _PduR_TpCopyTxData, r31
.BB.LABEL.36_15:	; if_break_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2645
	cmp 0x00000000, r10
	bz9 .BB.LABEL.36_21
.BB.LABEL.36_16:	; if_break_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	add 0xFFFFFFFF, r10
	cmp 0x00000000, r10
	bz17 .BB.LABEL.36_30
.BB.LABEL.36_17:	; if_break_bb156
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.36_20
.BB.LABEL.36_18:	; switch_clause_bb363
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2741
	ld.w 0x00000044[r20], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.36_20
.BB.LABEL.36_19:	; bb370
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.w 0x0000004C[r20], r2
	cmp 0x00000000, r2
	bz17 .BB.LABEL.36_30
.BB.LABEL.36_20:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2758
	dispose 0x00000010, 0x00000479, [r31]
.BB.LABEL.36_21:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2650
	set1 0x00000003, 0x0000007D[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2652
	ld.bu 0x00000068[r20], r2
	add 0xFFFFFFF0, r2
	bnz9 .BB.LABEL.36_24
.BB.LABEL.36_22:	; if_then_bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000004, r3, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2655
	ld.h 0x00000008[r24], r2
	ld.h 0x0000006E[r20], r5
	sub r2, r5
	st.h r5, 0x0000006E[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2657
	st.w r21, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2659
	ld.h 0x00000008[r24], r21
	ld.bu 0x00000003[r3], r2
	add r2, r21
	st.h r21, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2663
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	mov 0x0000000B, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2665
	st.w r21, 0x00000064[r20]
	mov 0x00000001, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2667
	st.w r21, 0x00000044[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2668
	ld.w 0x00000000[r23], r21
	st.w r21, 0x0000004C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2669
	movea 0x00000048, r20, r6
	jarl _CanTp_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2670
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2671
	ld.hu 0x00000018[r23], r6
	mov r24, r7
	jarl _CanIf_Transmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2674
	clr1 0x00000003, 0x0000007D[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2676
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.36_20
.BB.LABEL.36_23:	; if_then_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov r22, r6
	jarl _CanTp_ReleaseTxChannel.1, r31
	ld.hu 0x00000010[r23], r6
	mov 0x00000001, r7
	jarl _PduR_TpTxConfirmation, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2758
	dispose 0x00000010, 0x00000479, [r31]
.BB.LABEL.36_24:	; if_else_bb224
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2688
	ld.bu 0x00000050[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.36_20
.BB.LABEL.36_25:	; bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.w 0x00000054[r20], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.36_20
.BB.LABEL.36_26:	; if_then_bb247
	movea 0x00000004, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2691
	ld.h 0x00000008[r2], r5
	ld.h 0x0000006E[r20], r6
	sub r5, r6
	st.h r6, 0x0000006E[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2692
	st.w r21, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2693
	ld.h 0x00000008[r2], r2
	ld.bu 0x00000003[r3], r5
	add r5, r2
	st.h r2, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2695
	ld.hu 0x0000006E[r20], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.36_29
.BB.LABEL.36_27:	; bb272
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.w 0x00000020[r23], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.36_29
.BB.LABEL.36_28:	; if_then_bb286
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2700
	ld.hu 0x0000000C[r3], r8
	ld.w 0x00000004[r3], r6
	add r8, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2699
	cmp 0x00000008, r24
	cmov 0x00000006, 0x00000008, r24, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2700
	subr r21, r8
	zxh r8
	movea 0x000000AA, r0, r7
	jarl _CanTp_MemorySet, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2704
	st.h r21, 0x0000000C[r3]
.BB.LABEL.36_29:	; if_break_bb315
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x0000000B, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2710
	st.w r2, 0x00000064[r20]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2712
	st.w r2, 0x00000044[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2713
	ld.w 0x00000000[r23], r2
	st.w r2, 0x0000004C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2714
	movea 0x00000048, r20, r6
	jarl _CanTp_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2715
	st.b r0, 0x00000050[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2716
	ld.hu 0x00000018[r23], r6
	movea 0x00000004, r3, r7
	jarl _CanIf_Transmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2719
	clr1 0x00000003, 0x0000007D[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2721
	cmp 0x00000001, r10
	bnz17 .BB.LABEL.36_20
.BB.LABEL.36_30:	; if_then_bb385
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	st.w r0, 0x00000060[r20]
	br9 .BB.LABEL.36_23
_CanTp_HandleTimers.1:
	.stack _CanTp_HandleTimers.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2861
	prepare 0x00000079, 0x00000008
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2871
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2872
	ld.w 0x00000020[r20], r2
	cmp 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2864
	movea 0x00000040, r20, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2872
	bz9 .BB.LABEL.37_2
.BB.LABEL.37_1:	; entry.if_break_bb59_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.37_7
.BB.LABEL.37_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2876
	ld.w 0x00000004[r20], r22
	cmp 0x00000000, r22
	bz9 .BB.LABEL.37_1
.BB.LABEL.37_3:	; if_then_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2879
	ld.w 0x00000008[r20], r6
	movea 0x00000004, r3, r7
	jarl _CanTp_GetTimeSpan, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2880
	ld.w 0x0000000C[r20], r22
	ld.w 0x00000004[r3], r23
	cmp r23, r22
	bh9 .BB.LABEL.37_1
.BB.LABEL.37_4:	; if_then_bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2882
	st.w r0, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2884
	ld.hu 0x0000002A[r20], r6
	movea 0x00000003, r3, r7
	jarl _CanTp_GetRxSduCfgByNSduId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2885
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.37_6
.BB.LABEL.37_5:	; if_then_bb37.if_break_bb59_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.37_7
.BB.LABEL.37_6:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2888
	ld.w 0x00000004[r20], r22
	movea 0x000000B0, r0, r7
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2893
	jarl _CANTP_DET_REPORTRUNTIMEERROR.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2890
	cmp 0x00000002, r22
	setf 0x0000000A, r22
.BB.LABEL.37_7:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2898
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2899
	xori 0x00000001, r22, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.37_9
.BB.LABEL.37_8:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2902
	ld.hu 0x00000014[r23], r6
	mov 0x00000001, r7
	jarl _PduR_TpRxIndication, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2904
	mov r20, r6
	jarl _CanTp_ReleaseRxChannel.1, r31
.BB.LABEL.37_9:	; if_break_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2906
	mov r21, r6
	jarl _CanTp_HandleTxTimers.1, r31
	dispose 0x00000008, 0x00000079, [r31]
_CanTp_HandleTxTimers.1:
	.stack _CanTp_HandleTxTimers.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2910
	prepare 0x00000071, 0x00000008
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2919
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2920
	ld.w 0x00000020[r20], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.38_3
.BB.LABEL.38_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	cmp 0x00000005, r2
	bz9 .BB.LABEL.38_3
.BB.LABEL.38_2:	; entry.if_break_bb102_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.38_12
.BB.LABEL.38_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2925
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.38_7
.BB.LABEL.38_4:	; bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	ld.bu 0x00000010[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.38_7
.BB.LABEL.38_5:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2927
	ld.w 0x00000018[r20], r6
	movea 0x00000004, r3, r7
	jarl _CanTp_GetTimeSpan, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2928
	ld.w 0x00000014[r20], r2
	ld.w 0x00000004[r3], r21
	cmp r21, r2
	bh9 .BB.LABEL.38_7
.BB.LABEL.38_6:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2930
	st.w r0, 0x00000014[r20]
.BB.LABEL.38_7:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2936
	ld.w 0x00000004[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.38_2
.BB.LABEL.38_8:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2939
	ld.w 0x00000008[r20], r6
	movea 0x00000004, r3, r7
	jarl _CanTp_GetTimeSpan, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2940
	ld.w 0x0000000C[r20], r2
	ld.w 0x00000004[r3], r21
	cmp r21, r2
	bh9 .BB.LABEL.38_2
.BB.LABEL.38_9:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2942
	st.w r0, 0x0000000C[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2944
	ld.hu 0x0000002A[r20], r6
	movea 0x00000003, r3, r7
	jarl _CanTp_GetTxSduCfgByTxSduId.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2945
	addi 0x00000000, r10, r21
	bnz9 .BB.LABEL.38_11
.BB.LABEL.38_10:	; if_then_bb79.if_break_bb102_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.38_12
.BB.LABEL.38_11:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2948
	ld.w 0x00000004[r20], r22
	movea 0x000000B0, r0, r7
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2953
	jarl _CANTP_DET_REPORTRUNTIMEERROR.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2950
	cmp 0x00000003, r22
	setf 0x0000000A, r2
.BB.LABEL.38_12:	; if_break_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2958
	xori 0x00000001, r2, r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.38_14
.BB.LABEL.38_13:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2962
	st.w r0, 0x00000020[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2964
	mov r20, r6
	jarl _CanTp_ReleaseTxChannel.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2966
	ld.hu 0x00000010[r21], r6
	mov 0x00000001, r7
	jarl _PduR_TpTxConfirmation, r31
.BB.LABEL.38_14:	; if_break_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2968
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	dispose 0x00000008, 0x00000071, [r31]
_CanTp_GetRxSduCfgByNSduId.1:
	.stack _CanTp_GetRxSduCfgByNSduId.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2984
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.39_8
.BB.LABEL.39_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2994
	andi 0x000000FF, r2, r8
	ld.w 0x00000004[r5], r9
	mov 0x00000000, r11
	br9 .BB.LABEL.39_5
.BB.LABEL.39_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2997
	mov r8, r5
	shl 0x00000005, r5
	add r9, r5
	ld.w 0x00000014[r5], r5
	andi 0x000000FF, r11, r12
	mul 0x00000044, r12, r0
	add r12, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2998
	ld.hu 0x00000016[r5], r12
	cmp r12, r6
	bnz9 .BB.LABEL.39_4
.BB.LABEL.39_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3001
	st.b r2, 0x00000000[r7]
	br9 .BB.LABEL.39_7
.BB.LABEL.39_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	add 0x00000001, r11
.BB.LABEL.39_5:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2995
	mov r8, r5
	shl 0x00000005, r5
	add r9, r5
	ld.bu 0x00000011[r5], r5
	andi 0x000000FF, r11, r12
	cmp r5, r12
	bl9 .BB.LABEL.39_2
.BB.LABEL.39_6:	; bb34.bb45_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov r10, r5
.BB.LABEL.39_7:	; bb45
	add 0x00000001, r2
.BB.LABEL.39_8:	; bb48
	mov r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 2992
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.39_10
.BB.LABEL.39_9:	; bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r5
	ld.w LOWW(#_CanTp_ConfigPtr)[r5], r5
	ld.bu 0x00000000[r5], r8
	andi 0x000000FF, r2, r9
	cmp r8, r9
	bl9 .BB.LABEL.39_1
.BB.LABEL.39_10:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3008
	jmp [r31]
_CanTp_GetTxSduCfgByTxSduId.1:
	.stack _CanTp_GetTxSduCfgByTxSduId.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3012
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.40_8
.BB.LABEL.40_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3022
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r2
	ld.w LOWW(#_CanTp_ConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r8
	andi 0x000000FF, r5, r9
	mov 0x00000000, r11
	br9 .BB.LABEL.40_5
.BB.LABEL.40_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3025
	mov r9, r2
	shl 0x00000005, r2
	add r8, r2
	ld.w 0x0000001C[r2], r2
	andi 0x000000FF, r11, r12
	mul 0x00000038, r12, r0
	add r12, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3026
	ld.hu 0x00000012[r2], r12
	cmp r12, r6
	bnz9 .BB.LABEL.40_4
.BB.LABEL.40_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3029
	st.b r5, 0x00000000[r7]
	br9 .BB.LABEL.40_7
.BB.LABEL.40_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	add 0x00000001, r11
.BB.LABEL.40_5:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3023
	mov r9, r2
	shl 0x00000005, r2
	add r8, r2
	ld.bu 0x00000018[r2], r2
	andi 0x000000FF, r11, r12
	cmp r2, r12
	bl9 .BB.LABEL.40_2
.BB.LABEL.40_6:	; bb34.bb45_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov r10, r2
.BB.LABEL.40_7:	; bb45
	add 0x00000001, r5
.BB.LABEL.40_8:	; bb48
	mov r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3020
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.40_10
.BB.LABEL.40_9:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.40_1
.BB.LABEL.40_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3035
	jmp [r31]
_CanTp_GetTxSduCfgByTxNPdu.1:
	.stack _CanTp_GetTxSduCfgByTxNPdu.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3050
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.41_8
.BB.LABEL.41_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3060
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r2
	ld.w LOWW(#_CanTp_ConfigPtr)[r2], r2
	ld.w 0x00000004[r2], r8
	andi 0x000000FF, r5, r9
	mov 0x00000000, r11
	br9 .BB.LABEL.41_5
.BB.LABEL.41_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3063
	mov r9, r2
	shl 0x00000005, r2
	add r8, r2
	ld.w 0x0000001C[r2], r2
	andi 0x000000FF, r11, r12
	mul 0x00000038, r12, r0
	add r12, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3064
	ld.hu 0x00000014[r2], r12
	cmp r12, r6
	bnz9 .BB.LABEL.41_4
.BB.LABEL.41_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3067
	st.b r5, 0x00000000[r7]
	br9 .BB.LABEL.41_7
.BB.LABEL.41_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	add 0x00000001, r11
.BB.LABEL.41_5:	; bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3061
	mov r9, r2
	shl 0x00000005, r2
	add r8, r2
	ld.bu 0x00000018[r2], r2
	andi 0x000000FF, r11, r12
	cmp r2, r12
	bl9 .BB.LABEL.41_2
.BB.LABEL.41_6:	; bb34.bb45_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov r10, r2
.BB.LABEL.41_7:	; bb45
	add 0x00000001, r5
.BB.LABEL.41_8:	; bb48
	mov r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3058
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.41_10
.BB.LABEL.41_9:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.41_1
.BB.LABEL.41_10:	; bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3073
	jmp [r31]
_CanTp_GetRxSduCfgByTxFCNPdu.1:
	.stack _CanTp_GetRxSduCfgByTxFCNPdu.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3088
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.42_10
.BB.LABEL.42_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3098
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r5
	ld.w LOWW(#_CanTp_ConfigPtr)[r5], r5
	ld.w 0x00000004[r5], r8
	andi 0x000000FF, r2, r9
	mov 0x00000000, r11
	br9 .BB.LABEL.42_7
.BB.LABEL.42_2:	; bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3101
	mov r9, r5
	shl 0x00000005, r5
	add r8, r5
	ld.w 0x00000014[r5], r12
	andi 0x000000FF, r11, r13
	mov r13, r5
	mul 0x00000044, r5, r0
	add r12, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3102
	ld.hu 0x0000001A[r5], r14
	cmp r14, r6
	bnz9 .BB.LABEL.42_6
.BB.LABEL.42_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mulhi 0x00000044, r13, r13
	add r13, r12
	ld.w 0x00000028[r12], r12
	cmp 0x00000003, r12
	bz9 .BB.LABEL.42_5
.BB.LABEL.42_4:	; bb28
	cmp 0x00000001, r12
	bnz9 .BB.LABEL.42_6
.BB.LABEL.42_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3110
	st.b r2, 0x00000000[r7]
	br9 .BB.LABEL.42_9
.BB.LABEL.42_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	add 0x00000001, r11
.BB.LABEL.42_7:	; bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3099
	mov r9, r5
	shl 0x00000005, r5
	add r8, r5
	ld.bu 0x00000011[r5], r5
	andi 0x000000FF, r11, r12
	cmp r5, r12
	bl9 .BB.LABEL.42_2
.BB.LABEL.42_8:	; bb59.bb70_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov r10, r5
.BB.LABEL.42_9:	; bb70
	add 0x00000001, r2
.BB.LABEL.42_10:	; bb73
	mov r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3096
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.42_12
.BB.LABEL.42_11:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.42_1
.BB.LABEL.42_12:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3116
	jmp [r31]
_CanTP_CheckRxChangeParameter.1:
	.stack _CanTP_CheckRxChangeParameter.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3123
	cmp 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3127
	bnz9 .BB.LABEL.43_2
.BB.LABEL.43_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	movea 0x00000100, r0, r2
	cmp r2, r7
	bl9 .BB.LABEL.43_4
.BB.LABEL.43_2:	; bb15
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.43_5
.BB.LABEL.43_3:	; bb15
	movea 0x0000007F, r0, r2
	cmp r2, r7
	bh9 .BB.LABEL.43_5
.BB.LABEL.43_4:	; if_then_bb
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3129
	jmp [r31]
.BB.LABEL.43_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp.c", 3133
	jmp [r31]
	.section .data, data
	.align 4
_CanTp_ModuleState.1:
	.ds (4)
	.align 4
_CanTp_ConfigPtr:
	.ds (4)
	.align 4
_CanTp_Timer:
	.ds (4)
	.section .const, const
.STR.1:
	.db 0x08,0x0C,0x10,0x14,0x18,0x20,0x30,0x40
