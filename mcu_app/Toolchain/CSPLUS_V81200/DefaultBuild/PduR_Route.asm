#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\PDUR\PduR_Route.c -oDefaultBuild\PduR_Route.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_6646b99c43f343978a8c43ebde2d74dba4df5p3c.1c2
#@	compiled at Fri Mar 27 09:50:22 2026

	.file "..\..\Bsw\Communication\Common\PDUR\PduR_Route.c"

	$reg_mode 32
	.dbl_size 8

	.extern _PduR_ConfigStd
	.extern _PduR_BswModuleConfigData
	.extern _PduR_DestinationRouteStatus
	.extern _PduR_SourceRouteStatus
	.public _PduR_PduRIfTransmit
	.public _PduR_PduRTpTransmit
	.public _PduR_PduRCanceTransmit
	.public _PduR_PduRCancelReceive
	.public _PduR_PduRIfRxIndication
	.extern _Det_ReportRuntimeError
	.public _PduR_PduRIfTxConfirmation
	.public _PduR_PduRTriggerTransmit
	.public _PduR_PduRCopyTxData
	.public _PduR_PduRTpTxConfirmation
	.public _PduR_StartOfReceptionForward
	.public _PduR_CopyRxDataForward
	.public _PduR_TpRxIndicationForward
	.public _PduR_RouteInit

	.section .text, text
_PduR_PduRIfTransmit:
	.stack _PduR_PduRIfTransmit = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 76
	prepare 0x00000041, 0x00000000
	mov r7, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 81
	mov r20, r6
	mov r8, r7
	jarl _PduR_IfTransmitForward.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 82
	cmp 0x00000001, r10
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mov r20, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.bu 0x00000001[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 84
	shl 0x00000002, r20
	mov #_PduR_DestinationRouteStatus, r2
	add r20, r2
	mov 0x00000001, r5
	st.w r5, 0x00000000[r2]
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 88
	dispose 0x00000000, 0x00000041, [r31]
_PduR_PduRTpTransmit:
	.stack _PduR_PduRTpTransmit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 95
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 101
	mov r7, r6
	mov r8, r7
	jarl _PduR_TpTransmitForward.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 104
	dispose 0x00000000, 0x00000001, [r31]
_PduR_PduRCanceTransmit:
	.stack _PduR_PduRCanceTransmit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 111
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 114
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mul 0x00000014, r7, r0
	add r7, r2
	ld.w 0x0000000C[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 126
	cmp 0x00000005, r5
	ld.hu 0x00000008[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 115
	ld.bu 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 126
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 133
	mulhi 0x00000038, r2, r2
	mov #_PduR_BswModuleConfigData, r5
	add r2, r5
	ld.w 0x00000008[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 135
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 137
	jarl [r2], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_4:	; switch_clause_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 146
	mulhi 0x00000038, r2, r2
	mov #_PduR_BswModuleConfigData, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 148
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 150
	jarl [r2], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.3_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 160
	dispose 0x00000000, 0x00000001, [r31]
_PduR_PduRCancelReceive:
	.stack _PduR_PduRCancelReceive = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 167
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 171
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r5
	mul 0x00000014, r7, r0
	add r7, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 172
	ld.w 0x00000010[r2], r7
	mov r6, r8
	shl 0x00000002, r8
	add r8, r7
	ld.bu 0x00000001[r7], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 183
	mulhi 0x00000038, r7, r7
	mov #_PduR_BswModuleConfigData, r8
	add r7, r8
	ld.w 0x00000004[r8], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 185
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 171
	ld.w 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 185
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	cmp 0x00000006, r5
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 173
	ld.w 0x00000010[r2], r2
	shl 0x00000002, r6
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 187
	ld.hu 0x00000002[r2], r6
	jarl [r7], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 191
	dispose 0x00000000, 0x00000001, [r31]
_PduR_PduRIfRxIndication:
	.stack _PduR_PduRIfRxIndication = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 199
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 202
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mov r7, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 208
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_1:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 212
	mov r7, r20
	shl 0x00000002, r20
	mov #_PduR_DestinationRouteStatus, r2
	add r2, r20
	ld.w 0x00000000[r20], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 214
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 215
	mov r7, r6
	mov r8, r7
	jarl _PduR_IfRxIndicationForward.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 216
	st.w r0, 0x00000000[r20]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x0000000A, r9
	movea 0x00000042, r0, r8
	mov 0x00000000, r7
	movea 0x00000033, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 222
	jarl _Det_ReportRuntimeError, r31
.BB.LABEL.5_4:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 360
	dispose 0x00000000, 0x00000041, [r31]
_PduR_PduRIfTxConfirmation:
	.stack _PduR_PduRIfTxConfirmation = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 368
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 372
	mov r7, r20
	shl 0x00000002, r20
	mov #_PduR_DestinationRouteStatus, r2
	add r2, r20
	ld.w 0x00000000[r20], r2
	cmp 0x00000001, r2
	mov r6, r21
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 374
	st.w r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 376
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mul 0x00000014, r7, r0
	add r7, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 377
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 381
	mov r21, r6
	jarl _PduR_EvaluateUpLayerConfirmationStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 382
	mov r21, r2
	shl 0x00000002, r2
	mov #_PduR_SourceRouteStatus, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 384
	st.w r0, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 385
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000010[r2], r2
	mov r21, r5
	shl 0x00000002, r5
	add r5, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 387
	mov r21, r6
	jarl _PduR_IfTxConfirmationForward.1, r31
.BB.LABEL.6_5:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 445
	ld.w 0x00000000[r20], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 447
	st.w r0, 0x00000000[r20]
.BB.LABEL.6_7:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 450
	dispose 0x00000000, 0x00000061, [r31]
_PduR_PduRTriggerTransmit:
	.stack _PduR_PduRTriggerTransmit = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 457
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 460
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mov r7, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 462
	cmp 0x00000000, r2
	mov r7, r20
	mov r6, r21
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.7_5
.BB.LABEL.7_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 466
	mov r21, r6
	mov r8, r7
	jarl _PduR_TriggerTransmitForward.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 467
	cmp 0x00000001, r10
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mov r20, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.bu 0x00000001[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 469
	shl 0x00000002, r21
	mov #_PduR_SourceRouteStatus, r2
	add r21, r2
	mov 0x00000001, r5
	st.w r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 470
	shl 0x00000002, r20
	mov #_PduR_DestinationRouteStatus, r2
	add r20, r2
	st.w r5, 0x00000000[r2]
.BB.LABEL.7_5:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 538
	dispose 0x00000000, 0x00000061, [r31]
_PduR_PduRCopyTxData:
	.stack _PduR_PduRCopyTxData = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 678
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 685
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r5
	mov r6, r10
	mul 0x00000014, r10, r0
	add r10, r5
	ld.w 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 688
	cmp 0x00000005, r5
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 692
	ld.w 0x00000014[r2], r2
	mul 0x00000014, r6, r0
	add r6, r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 693
	ld.hu 0x00000000[r2], r6
	jarl _PduR_CopyTxDataForward.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_2:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 766
	dispose 0x00000000, 0x00000001, [r31]
_PduR_PduRTpTxConfirmation:
	.stack _PduR_PduRTpTxConfirmation = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 773
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 775
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mul 0x00000014, r7, r0
	add r7, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 776
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 780
	mov r8, r7
	jarl _PduR_TpTxConfirmationForward.1, r31
.BB.LABEL.9_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 809
	dispose 0x00000000, 0x00000001, [r31]
_PduR_EvaluateUpLayerConfirmationStatus.1:
	.stack _PduR_EvaluateUpLayerConfirmationStatus.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 897
	mov r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 899
	shl 0x00000002, r2
	mov #_PduR_SourceRouteStatus, r5
	add r5, r2
	ld.w 0x00000000[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 901
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.10_10
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 903
	movhi HIGHW1(#_PduR_ConfigStd), r0, r7
	ld.w LOWW(#_PduR_ConfigStd)[r7], r7
	ld.w 0x0000000C[r7], r8
	ld.hu 0x00000000[r7], r7
	shl 0x00000002, r7
	add r7, r8
	ld.w 0x00000000[r8], r7
	mov r6, r8
	shl 0x00000003, r8
	add r8, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 904
	ld.bu 0x00000000[r7], r7
	mov 0x00000000, r8
	mov r8, r9
	br9 .BB.LABEL.10_8
.BB.LABEL.10_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 906
	movhi HIGHW1(#_PduR_ConfigStd), r0, r10
	ld.w LOWW(#_PduR_ConfigStd)[r10], r10
	ld.w 0x0000000C[r10], r11
	ld.hu 0x00000000[r10], r10
	shl 0x00000002, r10
	add r10, r11
	ld.w 0x00000000[r11], r10
	mov r6, r11
	shl 0x00000003, r11
	add r11, r10
	ld.w 0x00000004[r10], r10
	andi 0x000000FF, r9, r11
	add r11, r11
	add r11, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 907
	ld.hu 0x00000000[r10], r10
	shl 0x00000002, r10
	mov #_PduR_DestinationRouteStatus, r11
	add r11, r10
	ld.w 0x00000000[r10], r11
	cmp 0x00000003, r11
	bnz9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_then_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000003, r5
	mov 0x00000001, r8
.BB.LABEL.10_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 912
	ld.w 0x00000000[r10], r11
	cmp 0x00000001, r11
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r8
	mov r8, r5
.BB.LABEL.10_6:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 917
	ld.w 0x00000000[r10], r10
	cmp 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 919
	cmov 0x00000002, 0x00000002, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 921
	andi 0x000000FF, r8, r0
	bnz9 .BB.LABEL.10_9
.BB.LABEL.10_7:	; if_break_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	add 0x00000001, r9
.BB.LABEL.10_8:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 904
	andi 0x000000FF, r9, r10
	cmp r7, r10
	bl9 .BB.LABEL.10_2
.BB.LABEL.10_9:	; bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 927
	st.w r5, 0x00000000[r2]
.BB.LABEL.10_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 929
	jmp [r31]
_PduR_IfTransmitForward.1:
	.stack _PduR_IfTransmitForward.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 937
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 940
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r5
	mov r6, r8
	mul 0x00000014, r8, r0
	add r8, r5
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 952
	mulhi 0x00000038, r5, r5
	mov #_PduR_BswModuleConfigData, r8
	add r5, r8
	ld.w 0x00000014[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 954
	cmp 0x00000000, r5
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 941
	ld.w 0x00000014[r2], r2
	mul 0x00000014, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 956
	ld.hu 0x00000008[r2], r6
	jarl [r5], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 959
	dispose 0x00000000, 0x00000001, [r31]
_PduR_TriggerTransmitForward.1:
	.stack _PduR_TriggerTransmitForward.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 966
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 969
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000010[r2], r5
	mov r6, r8
	shl 0x00000002, r8
	add r8, r5
	ld.bu 0x00000001[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 980
	mulhi 0x00000038, r5, r5
	mov #_PduR_BswModuleConfigData, r8
	add r5, r8
	ld.w 0x00000010[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 982
	cmp 0x00000000, r5
	bz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 970
	ld.w 0x00000010[r2], r2
	shl 0x00000002, r6
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 984
	ld.hu 0x00000002[r2], r6
	jarl [r5], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 987
	dispose 0x00000000, 0x00000001, [r31]
_PduR_IfTxConfirmationForward.1:
	.stack _PduR_IfTxConfirmationForward.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 992
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 994
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000010[r2], r5
	mov r6, r7
	shl 0x00000002, r7
	add r7, r5
	ld.bu 0x00000001[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1005
	mulhi 0x00000038, r5, r5
	mov #_PduR_BswModuleConfigData, r7
	add r5, r7
	ld.w 0x00000018[r7], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1007
	cmp 0x00000000, r5
	bz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 995
	ld.w 0x00000010[r2], r2
	shl 0x00000002, r6
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1009
	ld.hu 0x00000002[r2], r6
	jarl [r5], r31
.BB.LABEL.13_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1011
	dispose 0x00000000, 0x00000001, [r31]
_PduR_IfRxIndicationForward.1:
	.stack _PduR_IfRxIndicationForward.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1016
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1018
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r5
	mov r6, r8
	mul 0x00000014, r8, r0
	add r8, r5
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1029
	mulhi 0x00000038, r5, r5
	mov #_PduR_BswModuleConfigData, r8
	add r5, r8
	ld.w 0x0000001C[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1031
	cmp 0x00000000, r5
	bz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1019
	ld.w 0x00000014[r2], r2
	mul 0x00000014, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1033
	ld.hu 0x00000008[r2], r6
	jarl [r5], r31
.BB.LABEL.14_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1035
	dispose 0x00000000, 0x00000001, [r31]
_PduR_TpTransmitForward.1:
	.stack _PduR_TpTransmitForward.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1043
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1045
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r5
	mov r6, r8
	mul 0x00000014, r8, r0
	add r8, r5
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1057
	mulhi 0x00000038, r5, r5
	mov #_PduR_BswModuleConfigData, r8
	add r5, r8
	ld.w 0x00000020[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1059
	cmp 0x00000000, r5
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1046
	ld.w 0x00000014[r2], r2
	mul 0x00000014, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1061
	ld.hu 0x00000008[r2], r6
	jarl [r5], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1064
	dispose 0x00000000, 0x00000001, [r31]
_PduR_CopyTxDataForward.1:
	.stack _PduR_CopyTxDataForward.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1072
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1078
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000010[r2], r5
	mov r6, r10
	shl 0x00000002, r10
	add r10, r5
	ld.bu 0x00000001[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1090
	mulhi 0x00000038, r5, r5
	mov #_PduR_BswModuleConfigData, r10
	add r5, r10
	ld.w 0x00000024[r10], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1092
	cmp 0x00000000, r5
	bz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1079
	ld.w 0x00000010[r2], r2
	shl 0x00000002, r6
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1094
	ld.hu 0x00000002[r2], r6
	jarl [r5], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1097
	dispose 0x00000000, 0x00000001, [r31]
_PduR_TpTxConfirmationForward.1:
	.stack _PduR_TpTxConfirmationForward.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1102
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1104
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000010[r2], r5
	mov r6, r8
	shl 0x00000002, r8
	add r8, r5
	ld.bu 0x00000001[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1115
	mulhi 0x00000038, r5, r5
	mov #_PduR_BswModuleConfigData, r8
	add r5, r8
	ld.w 0x00000028[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1117
	cmp 0x00000000, r5
	bz9 .BB.LABEL.17_2
.BB.LABEL.17_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1105
	ld.w 0x00000010[r2], r2
	shl 0x00000002, r6
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1119
	ld.hu 0x00000002[r2], r6
	jarl [r5], r31
.BB.LABEL.17_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1121
	dispose 0x00000000, 0x00000001, [r31]
_PduR_StartOfReceptionForward:
	.stack _PduR_StartOfReceptionForward = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1129
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1135
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r5
	mov r6, r10
	mul 0x00000014, r10, r0
	add r10, r5
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1147
	mulhi 0x00000038, r5, r5
	mov #_PduR_BswModuleConfigData, r10
	add r5, r10
	ld.w 0x0000002C[r10], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1149
	cmp 0x00000000, r5
	bz9 .BB.LABEL.18_2
.BB.LABEL.18_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1136
	ld.w 0x00000014[r2], r2
	mul 0x00000014, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1151
	ld.hu 0x00000008[r2], r6
	jarl [r5], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1154
	dispose 0x00000000, 0x00000001, [r31]
_PduR_CopyRxDataForward:
	.stack _PduR_CopyRxDataForward = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1162
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1167
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r5
	mov r6, r9
	mul 0x00000014, r9, r0
	add r9, r5
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1180
	mulhi 0x00000038, r5, r5
	mov #_PduR_BswModuleConfigData, r9
	add r5, r9
	ld.w 0x00000030[r9], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1182
	cmp 0x00000000, r5
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1168
	ld.w 0x00000014[r2], r2
	mul 0x00000014, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1185
	ld.hu 0x00000008[r2], r6
	jarl [r5], r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.19_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1188
	dispose 0x00000000, 0x00000001, [r31]
_PduR_TpRxIndicationForward:
	.stack _PduR_TpRxIndicationForward = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1196
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1198
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r5
	mov r6, r8
	mul 0x00000014, r8, r0
	add r8, r5
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1210
	mulhi 0x00000038, r5, r5
	mov #_PduR_BswModuleConfigData, r8
	add r5, r8
	ld.w 0x00000034[r8], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1212
	cmp 0x00000000, r5
	bz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1199
	ld.w 0x00000014[r2], r2
	mul 0x00000014, r6, r0
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1215
	ld.hu 0x00000008[r2], r6
	jarl [r5], r31
.BB.LABEL.20_2:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1217
	dispose 0x00000000, 0x00000001, [r31]
_PduR_RouteInit:
	.stack _PduR_RouteInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1223
	mov 0x00000000, r2
	br9 .BB.LABEL.21_2
.BB.LABEL.21_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1229
	andi 0x0000FFFF, r2, r5
	shl 0x00000002, r5
	mov #_PduR_DestinationRouteStatus, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.21_2:	; bb8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1227
	andi 0x0000FFFF, r2, r5
	movea 0x000000AD, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.21_1
.BB.LABEL.21_3:	; bb8.bb20_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.21_5
.BB.LABEL.21_4:	; bb14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1234
	andi 0x0000FFFF, r2, r5
	shl 0x00000002, r5
	mov #_PduR_SourceRouteStatus, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	add 0x00000001, r2
.BB.LABEL.21_5:	; bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1232
	andi 0x0000FFFF, r2, r5
	movea 0x000000AD, r0, r6
	cmp r6, r5
	bl9 .BB.LABEL.21_4
.BB.LABEL.21_6:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Route.c", 1237
	jmp [r31]
