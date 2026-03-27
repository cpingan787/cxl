#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\PDUR\PduR.c -oDefaultBuild\PduR.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_f59fd9d9f7e949ebacea3dc96ddc523d342gk3s2.gc5
#@	compiled at Fri Mar 27 09:50:19 2026

	.file "..\..\Bsw\Communication\Common\PDUR\PduR.c"

	$reg_mode 32
	.dbl_size 8

	.extern _PduR_RoutingPathEnabled
	.extern _PduR_DestinationRouteStatus
	.extern _PduR_SourceRouteStatus
	.public _PduR_ConfigStd, 4
	.public _PduR_Init
	.extern _PduR_RoutingPathGroupInit
	.extern _PduR_RouteInit
	.public _PduR_GetConfigurationId
	.public _PduR_EnableRouting
	.extern _SchM_Enter_PduR_ExclusiveArea_Group
	.extern _SchM_Exit_PduR_ExclusiveArea_Group
	.public _PduR_DisableRouting
	.public _PduR_Transmit
	.extern _PduR_PduRIfTransmit
	.extern _PduR_PduRTpTransmit
	.public _PduR_CancelTransmit
	.extern _PduR_PduRCanceTransmit
	.public _PduR_CancelReceive
	.extern _PduR_PduRCancelReceive
	.public _PduR_IfRxIndication
	.extern _PduR_PduRIfRxIndication
	.public _PduR_IfTxConfirmation
	.extern _PduR_PduRIfTxConfirmation
	.public _PduR_IfTriggerTransmit
	.extern _PduR_PduRTriggerTransmit
	.public _PduR_TpCopyRxData
	.extern _PduR_CopyRxDataForward
	.public _PduR_TpRxIndication
	.extern _PduR_TpRxIndicationForward
	.public _PduR_TpStartOfReception
	.extern _PduR_StartOfReceptionForward
	.public _PduR_TpCopyTxData
	.extern _PduR_PduRCopyTxData
	.public _PduR_TpTxConfirmation
	.extern _PduR_PduRTpTxConfirmation

	.section .text, text
_PduR_IsRoutingPathEnable.1:
	.stack _PduR_IsRoutingPathEnable.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.h", 178
	mov #_PduR_RoutingPathEnabled, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.h", 181
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR_Internal.h", 186
	ld.bu 0x00000000[r2], r10
	jmp [r31]
_PduR_Init:
	.stack _PduR_Init = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 86
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 97
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	st.w r6, LOWW(#_PduR_ConfigStd)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 99
	jarl _PduR_RoutingPathGroupInit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 104
	jarl _PduR_RouteInit, r31
	dispose 0x00000000, 0x00000001, [r31]
_PduR_GetConfigurationId:
	.stack _PduR_GetConfigurationId = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 164
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 165
	ld.hu 0x00000000[r2], r10
	jmp [r31]
_PduR_EnableRouting:
	.stack _PduR_EnableRouting = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 179
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 194
	jarl _SchM_Enter_PduR_ExclusiveArea_Group, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 195
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000008[r2], r2
	mov r20, r5
	mul 0x0000000C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 196
	ld.hu 0x00000004[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.4_4
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 198
	movhi HIGHW1(#_PduR_ConfigStd), r0, r6
	ld.w LOWW(#_PduR_ConfigStd)[r6], r6
	ld.w 0x00000008[r6], r6
	mov r20, r7
	mul 0x0000000C, r7, r0
	add r7, r6
	ld.w 0x00000008[r6], r6
	andi 0x0000FFFF, r5, r7
	add r7, r7
	add r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 199
	ld.hu 0x00000000[r6], r6
	mov #_PduR_RoutingPathEnabled, r7
	add r7, r6
	ld.bu 0x00000000[r6], r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 201
	st.b r7, 0x00000000[r6]
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	add 0x00000001, r5
.BB.LABEL.4_4:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 196
	andi 0x0000FFFF, r5, r6
	cmp r2, r6
	bl9 .BB.LABEL.4_1
.BB.LABEL.4_5:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 204
	jarl _SchM_Exit_PduR_ExclusiveArea_Group, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 207
	dispose 0x00000000, 0x00000041, [r31]
_PduR_DisableRouting:
	.stack _PduR_DisableRouting = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 226
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 241
	jarl _SchM_Enter_PduR_ExclusiveArea_Group, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 242
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000008[r2], r2
	mov r20, r5
	mul 0x0000000C, r5, r0
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 243
	ld.hu 0x00000004[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.5_4
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 245
	movhi HIGHW1(#_PduR_ConfigStd), r0, r6
	ld.w LOWW(#_PduR_ConfigStd)[r6], r6
	ld.w 0x00000008[r6], r6
	mov r20, r7
	mul 0x0000000C, r7, r0
	add r7, r6
	ld.w 0x00000008[r6], r6
	andi 0x0000FFFF, r5, r7
	add r7, r7
	add r7, r6
	ld.hu 0x00000000[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 246
	mov r6, r7
	shl 0x00000002, r7
	mov #_PduR_DestinationRouteStatus, r8
	add r7, r8
	st.w r0, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 247
	mov #_PduR_RoutingPathEnabled, r7
	add r7, r6
	ld.bu 0x00000000[r6], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 289
	st.b r0, 0x00000000[r6]
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	add 0x00000001, r5
.BB.LABEL.5_4:	; bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 243
	andi 0x0000FFFF, r5, r6
	cmp r2, r6
	bl9 .BB.LABEL.5_1
.BB.LABEL.5_5:	; bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 292
	jarl _SchM_Exit_PduR_ExclusiveArea_Group, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 296
	dispose 0x00000000, 0x00000041, [r31]
_PduR_Transmit:
	.stack _PduR_Transmit = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 315
	prepare 0x00000479, 0x00000000
	mov 0x00000000, r20
	mov 0x00000001, r21
	mov r7, r22
	mov r6, r23
	br9 .BB.LABEL.6_10
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 339
	ld.hu 0x00000000[r2], r5
	shl 0x00000002, r5
	ld.w 0x0000000C[r2], r2
	add r5, r2
	ld.w 0x00000000[r2], r2
	mov r23, r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	andi 0x000000FF, r20, r5
	add r5, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 341
	ld.hu 0x00000000[r2], r24
	mov r24, r6
	jarl _PduR_IsRoutingPathEnable.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_9
.BB.LABEL.6_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 344
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mov r24, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_5
.BB.LABEL.6_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	cmp 0x00000005, r2
	bz9 .BB.LABEL.6_6
.BB.LABEL.6_4:	; if_then_bb.switch_break_bb_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.6_7
.BB.LABEL.6_5:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 347
	mov r23, r6
	mov r24, r7
	mov r22, r8
	jarl _PduR_PduRIfTransmit, r31
	br9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; switch_clause_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 350
	mov r23, r6
	mov r24, r7
	mov r22, r8
	jarl _PduR_PduRTpTransmit, r31
.BB.LABEL.6_7:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 359
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; if_then_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 362
	mov r23, r2
	shl 0x00000002, r2
	mov #_PduR_SourceRouteStatus, r21
	add r2, r21
	mov 0x00000001, r2
	st.w r2, 0x00000000[r21]
	mov 0x00000000, r21
.BB.LABEL.6_9:	; if_break_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	add 0x00000001, r20
.BB.LABEL.6_10:	; bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 337
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r5
	ld.hu 0x00000000[r2], r6
	shl 0x00000002, r6
	add r6, r5
	ld.w 0x00000000[r5], r5
	mov r23, r6
	shl 0x00000003, r6
	add r6, r5
	ld.bu 0x00000000[r5], r5
	andi 0x000000FF, r20, r6
	cmp r5, r6
	bl9 .BB.LABEL.6_1
.BB.LABEL.6_11:	; bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 368
	andi 0x000000FF, r21, r10
	dispose 0x00000000, 0x00000479, [r31]
_PduR_CancelTransmit:
	.stack _PduR_CancelTransmit = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 387
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 403
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r5
	ld.hu 0x00000000[r2], r2
	shl 0x00000002, r2
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov r6, r5
	shl 0x00000003, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 404
	ld.bu 0x00000000[r2], r20
	mov 0x00000000, r21
	mov 0x00000001, r22
	mov r6, r23
	br9 .BB.LABEL.7_5
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 406
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r5
	ld.hu 0x00000000[r2], r2
	shl 0x00000002, r2
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov r23, r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	andi 0x000000FF, r21, r5
	add r5, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 407
	ld.hu 0x00000000[r2], r24
	mov r24, r6
	jarl _PduR_IsRoutingPathEnable.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 409
	mov r23, r6
	mov r24, r7
	jarl _PduR_PduRCanceTransmit, r31
	mov r10, r22
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 412
	andi 0x000000FF, r22, r0
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_4:	; if_break_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	add 0x00000001, r21
.BB.LABEL.7_5:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 404
	andi 0x000000FF, r21, r2
	cmp r20, r2
	bl9 .BB.LABEL.7_1
.BB.LABEL.7_6:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 419
	andi 0x000000FF, r22, r10
	dispose 0x00000000, 0x00000479, [r31]
_PduR_CancelReceive:
	.stack _PduR_CancelReceive = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 432
	prepare 0x00000061, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 435
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mov r20, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 452
	ld.hu 0x00000000[r2], r21
	jarl _PduR_IsRoutingPathEnable.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 454
	mov r21, r6
	mov r20, r7
	jarl _PduR_PduRCancelReceive, r31
	dispose 0x00000000, 0x00000061, [r31]
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 458
	dispose 0x00000000, 0x00000061, [r31]
_PduR_IfRxIndication:
	.stack _PduR_IfRxIndication = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 473
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 493
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r5
	ld.hu 0x00000000[r2], r2
	shl 0x00000002, r2
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov r6, r5
	shl 0x00000003, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 494
	ld.bu 0x00000000[r2], r20
	mov 0x00000000, r21
	mov r7, r22
	mov r6, r23
	br9 .BB.LABEL.9_4
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 496
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r5
	ld.hu 0x00000000[r2], r2
	shl 0x00000002, r2
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov r23, r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	andi 0x000000FF, r21, r5
	add r5, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 497
	ld.hu 0x00000000[r2], r24
	mov r24, r6
	jarl _PduR_IsRoutingPathEnable.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 499
	mov r23, r6
	mov r24, r7
	mov r22, r8
	jarl _PduR_PduRIfRxIndication, r31
.BB.LABEL.9_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	add 0x00000001, r21
.BB.LABEL.9_4:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 494
	andi 0x000000FF, r21, r2
	cmp r20, r2
	bl9 .BB.LABEL.9_1
.BB.LABEL.9_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 503
	dispose 0x00000000, 0x00000479, [r31]
_PduR_IfTxConfirmation:
	.stack _PduR_IfTxConfirmation = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 519
	prepare 0x00000001, 0x00000000
	mov r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 534
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mov r7, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 535
	ld.hu 0x00000000[r2], r6
	mov 0x00000000, r8
	jarl _PduR_PduRIfTxConfirmation, r31
	dispose 0x00000000, 0x00000001, [r31]
_PduR_IfTriggerTransmit:
	.stack _PduR_IfTriggerTransmit = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 560
	prepare 0x00000001, 0x00000000
	mov r6, r2
	mov r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 579
	movhi HIGHW1(#_PduR_ConfigStd), r0, r5
	ld.w LOWW(#_PduR_ConfigStd)[r5], r5
	ld.w 0x00000014[r5], r5
	mov r2, r6
	mul 0x00000014, r6, r0
	add r6, r5
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 580
	ld.hu 0x00000000[r5], r6
	mov r2, r7
	jarl _PduR_PduRTriggerTransmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 583
	dispose 0x00000000, 0x00000001, [r31]
_PduR_TpCopyRxData:
	.stack _PduR_TpCopyRxData = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 600
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 619
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r5
	ld.hu 0x00000000[r2], r2
	shl 0x00000002, r2
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov r6, r5
	shl 0x00000003, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 624
	ld.bu 0x00000000[r2], r20
	mov 0x00000000, r21
	mov r8, r22
	mov r7, r23
	mov r6, r24
	br9 .BB.LABEL.12_5
.BB.LABEL.12_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 626
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r5
	ld.hu 0x00000000[r2], r2
	shl 0x00000002, r2
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov r24, r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	andi 0x000000FF, r21, r5
	add r5, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 627
	ld.hu 0x00000000[r2], r25
	mov r25, r6
	jarl _PduR_IsRoutingPathEnable.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 632
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mov r25, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 635
	cmp 0x00000006, r2
	bnz9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 637
	mov r25, r6
	mov r23, r7
	mov r22, r8
	jarl _PduR_CopyRxDataForward, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 638
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.12_4:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	add 0x00000001, r21
.BB.LABEL.12_5:	; bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 624
	andi 0x000000FF, r21, r2
	cmp r20, r2
	bl9 .BB.LABEL.12_1
.BB.LABEL.12_6:	; bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 671
	dispose 0x00000000, 0x00000679, [r31]
_PduR_TpRxIndication:
	.stack _PduR_TpRxIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 689
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 703
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r5
	ld.hu 0x00000000[r2], r2
	shl 0x00000002, r2
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov r6, r5
	shl 0x00000003, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 704
	ld.bu 0x00000000[r2], r2
	mov 0x00000000, r5
	br9 .BB.LABEL.13_4
.BB.LABEL.13_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 706
	movhi HIGHW1(#_PduR_ConfigStd), r0, r8
	ld.w LOWW(#_PduR_ConfigStd)[r8], r8
	ld.w 0x0000000C[r8], r9
	ld.hu 0x00000000[r8], r10
	shl 0x00000002, r10
	add r10, r9
	ld.w 0x00000000[r9], r9
	mov r6, r10
	shl 0x00000003, r10
	add r10, r9
	ld.w 0x00000004[r9], r9
	andi 0x000000FF, r5, r10
	add r10, r10
	add r10, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 707
	ld.hu 0x00000000[r9], r9
	mov r9, r10
	mul 0x00000014, r10, r0
	ld.w 0x00000014[r8], r8
	add r10, r8
	ld.w 0x0000000C[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 710
	cmp 0x00000006, r8
	bnz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 712
	mov r9, r6
	jarl _PduR_TpRxIndicationForward, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 713
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	add 0x00000001, r5
.BB.LABEL.13_4:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 704
	andi 0x000000FF, r5, r8
	cmp r2, r8
	bl9 .BB.LABEL.13_1
.BB.LABEL.13_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 736
	dispose 0x00000000, 0x00000001, [r31]
_PduR_TpStartOfReception:
	.stack _PduR_TpStartOfReception = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 772
	prepare 0x00000779, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 797
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r5
	ld.hu 0x00000000[r2], r2
	shl 0x00000002, r2
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov r6, r5
	shl 0x00000003, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 803
	ld.bu 0x00000000[r2], r20
	mov 0x00000000, r21
	mov r9, r22
	mov r8, r23
	mov r7, r24
	mov r6, r25
	br9 .BB.LABEL.14_5
.BB.LABEL.14_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 805
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x0000000C[r2], r5
	ld.hu 0x00000000[r2], r2
	shl 0x00000002, r2
	add r2, r5
	ld.w 0x00000000[r5], r2
	mov r25, r5
	shl 0x00000003, r5
	add r5, r2
	ld.w 0x00000004[r2], r2
	andi 0x000000FF, r21, r5
	add r5, r5
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 806
	ld.hu 0x00000000[r2], r26
	mov r26, r6
	jarl _PduR_IsRoutingPathEnable.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.14_4
.BB.LABEL.14_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 811
	movhi HIGHW1(#_PduR_ConfigStd), r0, r2
	ld.w LOWW(#_PduR_ConfigStd)[r2], r2
	ld.w 0x00000014[r2], r2
	mov r26, r5
	mul 0x00000014, r5, r0
	add r5, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 814
	cmp 0x00000006, r2
	bnz9 .BB.LABEL.14_4
.BB.LABEL.14_3:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 816
	mov r26, r6
	mov r24, r7
	mov r23, r8
	mov r22, r9
	jarl _PduR_StartOfReceptionForward, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 817
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.14_4:	; bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	add 0x00000001, r21
.BB.LABEL.14_5:	; bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 803
	andi 0x000000FF, r21, r2
	cmp r20, r2
	bl9 .BB.LABEL.14_1
.BB.LABEL.14_6:	; bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 858
	dispose 0x00000000, 0x00000779, [r31]
_PduR_TpCopyTxData:
	.stack _PduR_TpCopyTxData = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 895
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	mov r9, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 914
	jarl _PduR_IsRoutingPathEnable.1, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 916
	mov r20, r6
	mov r21, r7
	mov r22, r8
	mov r23, r9
	jarl _PduR_PduRCopyTxData, r31
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.15_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 920
	dispose 0x00000000, 0x00000079, [r31]
_PduR_TpTxConfirmation:
	.stack _PduR_TpTxConfirmation = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 938
	prepare 0x00000001, 0x00000000
	mov r6, r2
	mov r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 940
	movhi HIGHW1(#_PduR_ConfigStd), r0, r5
	ld.w LOWW(#_PduR_ConfigStd)[r5], r5
	ld.w 0x00000014[r5], r5
	mov r2, r6
	mul 0x00000014, r6, r0
	add r6, r5
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/PDUR/PduR.c", 956
	ld.hu 0x00000000[r5], r6
	mov r2, r7
	jarl _PduR_PduRTpTxConfirmation, r31
	dispose 0x00000000, 0x00000001, [r31]
	.section .data, data
	.align 4
_PduR_ConfigStd:
	.ds (4)
