#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x19.c -oDefaultBuild\Dcm_UDS0x19.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_b2c07d1eddf6490f858a225289295730nurrrqbb.pne
#@	compiled at Fri Mar 27 09:50:57 2026

	.file "..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x19.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_Channel
	.extern _DcmPbCfgPtr
	.extern _Dem_DcmGetDTCStatusAvailabilityMask
	.extern _Dem_DcmGetTranslationType
	.extern _Dem_DcmSetDTCFilter
	.extern _Dem_DcmGetNumberOfFilteredDTC
	.extern _DsdInternal_ProcessingDone
	.extern _Dem_DcmGetNextFilteredDTC
	.extern _Dem_DcmGetStatusOfDTC
	.extern _Dem_DcmDisableDTCRecordUpdate
	.extern _Dem_DcmGetFreezeFrameDataByDTC
	.extern _Dem_DcmEnableDTCRecordUpdate
	.extern _Dem_DcmGetExtendedDataRecordByDTC
	.public _Dcm_UDS0x19
	.extern _Dcm_UdsSubServicesCheck
	.extern _DsdInternal_SubSesCheck
	.extern _DsdInternal_SubSecurityCheck

	.section .text, text
_Dcm_UDS0x19_01.1:
	.stack _Dcm_UDS0x19_01.1 = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 62
	prepare 0x000007F9, 0x00000010
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 68
	st.h r0, 0x0000000E[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 79
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 83
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	cmp 0x00000003, r2
	mov r7, r21
	mov r6, r22
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	movea 0x00000013, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 86
	st.b r23, 0x00000000[r21]
	mov 0x00000001, r23
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 89
	cmp 0x00000000, r23
	bnz17 .BB.LABEL.1_24
.BB.LABEL.1_4:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 92
	mov r20, r23
	shl 0x00000006, r23
	mov #_Dcm_MsgCtrl, r2
	add r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 93
	ld.bu 0x00000007[r2], r23
	mulhi 0x00000014, r23, r23
	mov #_Dcm_ChannelCtrl, r5
	add r23, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 94
	ld.bu 0x00000000[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 95
	mulhi 0x0000000C, r24, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 94
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000004[r5], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 95
	add r25, r23
	ld.w 0x00000008[r23], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 98
	ld.w 0x0000000C[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 101
	ld.bu 0x00000002[r23], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 100
	mov #_Dcm_Channel, r23
	add r23, r26
	addi 0x00000002, r26, r6
	jarl _Dem_DcmGetDTCStatusAvailabilityMask, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 101
	addi 0x00000000, r10, r23
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; if_then_bb36.if_break_bb137_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000002, r27
.BB.LABEL.1_6:	; if_then_bb36.if_break_bb137_crit_edge
	mov 0x00000000, r2
	mov 0x00000001, r5
	br9 .BB.LABEL.1_16
.BB.LABEL.1_7:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 106
	jarl _Dem_DcmGetTranslationType, r31
	st.b r10, 0x00000003[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 108
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_8:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 110
	st.b r0, 0x00000004[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 112
	st.b r0, 0x00000005[r26]
.BB.LABEL.1_9:	; if_then_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000006, r27
	mov 0x00000000, r5
	mov r5, r2
	br9 .BB.LABEL.1_16
.BB.LABEL.1_10:	; if_else_bb
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 118
	st.w r2, 0x00000004[r3]
	st.w r0, 0x00000008[r3]
	st.w r0, 0x00000000[r3]
	mov 0x00000001, r7
	mov r27, r6
	mov r7, r8
	mov r7, r9
	jarl _Dem_DcmSetDTCFilter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 126
	cmp 0x00000000, r10
	bz9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_else_bb.if_break_bb137_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000004, r27
	br9 .BB.LABEL.1_6
.BB.LABEL.1_12:	; if_then_bb108
	movea 0x0000000E, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 129
	jarl _Dem_DcmGetNumberOfFilteredDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 130
	cmp 0x00000002, r10
	bz9 .BB.LABEL.1_15
.BB.LABEL.1_13:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_14:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 133
	ld.hu 0x0000000E[r3], r2
	shr 0x00000008, r2
	st.b r2, 0x00000004[r26]
	movea 0x0000000E, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 135
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000005[r26]
	br9 .BB.LABEL.1_9
.BB.LABEL.1_15:	; switch_clause_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000004, r27
	mov 0x00000001, r2
	mov 0x00000000, r5
.BB.LABEL.1_16:	; if_break_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 160
	xori 0x00000001, r5, r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; if_then_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 163
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 164
	dispose 0x00000010, 0x000007F9, [r31]
.BB.LABEL.1_18:	; if_else_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 166
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_20
.BB.LABEL.1_19:	; if_then_bb151
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 169
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r21
	add r20, r21
	mov 0x00000001, r20
	st.b r20, 0x0000003D[r21]
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 170
	dispose 0x00000010, 0x000007F9, [r31]
.BB.LABEL.1_20:	; if_else_bb156
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 175
	mulh 0x0000000C, r24
	add r24, r25
	ld.w 0x00000004[r25], r2
	cmp r2, r27
	bnh9 .BB.LABEL.1_22
.BB.LABEL.1_21:	; if_then_bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000014, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 178
	st.b r23, 0x00000000[r21]
	mov 0x00000001, r23
.BB.LABEL.1_22:	; if_break_bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 181
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.1_24
.BB.LABEL.1_23:	; if_then_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000059, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 184
	st.b r2, 0x00000000[r26]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 185
	st.b r2, 0x00000001[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 186
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	st.w r27, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 187
	st.w r27, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 188
	st.w r26, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 189
	mov r22, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.1_24:	; if_break_bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 194
	dispose 0x00000010, 0x000007F9, [r31]
_Dcm_UDS0x19_02_SubDealTwo.1:
	.stack _Dcm_UDS0x19_02_SubDealTwo.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 212
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 221
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 223
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 224
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r8
	add r2, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 225
	ld.bu 0x00000000[r8], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 226
	mulh 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 225
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r8
	ld.w LOWW(#_DcmPbCfgPtr)[r8], r8
	ld.w 0x00000000[r8], r8
	ld.w 0x00000004[r8], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 226
	add r2, r8
	ld.w 0x00000008[r8], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 227
	st.w r7, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 228
	st.w r7, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 229
	mov #_Dcm_Channel, r7
	add r2, r7
	st.w r7, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 230
	jarl _DsdInternal_ProcessingDone, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 232
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_UDS0x19_02_SubDealone.1:
	.stack _Dcm_UDS0x19_02_SubDealone.1 = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 248
	prepare 0x00000679, 0x00000014
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 267
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 268
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 273
	ld.bu 0x00000002[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 270
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 271
	ld.bu 0x00000000[r5], r22
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 265
	ld.w 0x00000010[r20], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 264
	ld.w 0x00000008[r20], r25
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 273
	st.w r2, 0x00000004[r3]
	st.w r0, 0x00000008[r3]
	st.w r0, 0x00000000[r3]
	mov 0x00000001, r7
	mov r7, r8
	mov r7, r9
	jarl _Dem_DcmSetDTCFilter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 281
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.3_18
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 283
	ld.w 0x00000014[r20], r6
	jarl _Dem_DcmGetNumberOfFilteredDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 285
	cmp 0x00000002, r10
	bz9 .BB.LABEL.3_15
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_17
.BB.LABEL.3_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 290
	mulh 0x0000000C, r22
	add r22, r23
	ld.w 0x00000004[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 289
	ld.w 0x00000014[r20], r5
	ld.hu 0x00000000[r5], r5
	shl 0x00000002, r5
	ori 0x00000003, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 290
	cmp r2, r5
	bh9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; switch_clause_bb.bb142_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000000, r21
	mov r21, r22
	br9 .BB.LABEL.3_13
.BB.LABEL.3_5:	; if_then_bb81
	movea 0x00000014, r0, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 298
	st.b r22, 0x00000000[r21]
	mov 0x00000000, r22
	mov 0x00000001, r21
	br9 .BB.LABEL.3_13
.BB.LABEL.3_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000013, r3, r7
	movea 0x0000000C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 312
	jarl _Dem_DcmGetNextFilteredDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 313
	cmp 0x00000002, r10
	bz9 .BB.LABEL.3_9
.BB.LABEL.3_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_10
.BB.LABEL.3_8:	; switch_clause_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 320
	ld.w 0x00000000[r25], r2
	add r24, r2
	mov #_Dcm_Channel, r5
	add r5, r2
	ld.w 0x0000000C[r3], r6
	shr 0x00000010, r6
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 321
	ld.w 0x00000000[r25], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 322
	add r24, r2
	add r5, r2
	ld.w 0x0000000C[r3], r6
	shr 0x00000008, r6
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 323
	ld.w 0x00000000[r25], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 324
	add r24, r2
	add r5, r2
	ld.w 0x0000000C[r3], r6
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 325
	ld.w 0x00000000[r25], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 326
	add r24, r2
	add r2, r5
	movea 0x00000013, r3, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 327
	ld.w 0x00000000[r25], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r25]
	br9 .BB.LABEL.3_12
.BB.LABEL.3_9:	; switch_clause_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 371
	ld.w 0x00000000[r20], r2
	br9 .BB.LABEL.3_11
.BB.LABEL.3_10:	; switch_clause_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 386
	ld.w 0x00000004[r20], r2
.BB.LABEL.3_11:	; switch_clause_bb136
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000001, r21
	st.b r21, 0x00000000[r2]
.BB.LABEL.3_12:	; switch_break_bb
	add 0x00000001, r22
.BB.LABEL.3_13:	; bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 304
	ld.w 0x00000014[r20], r2
	ld.hu 0x00000000[r2], r2
	andi 0x0000FFFF, r22, r5
	cmp r2, r5
	bnc9 .BB.LABEL.3_19
.BB.LABEL.3_14:	; bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	andi 0x000000FF, r21, r0
	bz9 .BB.LABEL.3_6
	br9 .BB.LABEL.3_19
.BB.LABEL.3_15:	; switch_clause_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 393
	ld.w 0x00000000[r20], r20
.BB.LABEL.3_16:	; switch_clause_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000001, r2
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 405
	dispose 0x00000014, 0x00000679, [r31]
.BB.LABEL.3_17:	; switch_clause_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 397
	ld.w 0x00000004[r20], r20
	br9 .BB.LABEL.3_16
.BB.LABEL.3_18:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 403
	ld.w 0x00000004[r20], r2
	mov 0x00000001, r5
	st.b r5, 0x00000000[r2]
.BB.LABEL.3_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 405
	dispose 0x00000014, 0x00000679, [r31]
_Dcm_UDS0x19_02.1:
	.stack _Dcm_UDS0x19_02.1 = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 422
	prepare 0x00000079, 0x00000024
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 428
	st.h r0, 0x00000022[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 429
	st.h r0, 0x00000020[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 430
	st.b r0, 0x0000001F[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 431
	st.b r0, 0x0000001E[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 438
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 440
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	cmp 0x00000003, r2
	mov r7, r21
	mov r6, r22
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 443
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 446
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.4_14
.BB.LABEL.4_4:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 449
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 450
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 451
	ld.bu 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 452
	mulh 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 451
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000004[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 452
	add r2, r5
	ld.w 0x00000008[r5], r23
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 453
	st.w r2, 0x00000018[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 462
	mov #_Dcm_Channel, r2
	mov r23, r5
	add r2, r5
	movea 0x00000059, r0, r6
	st.b r6, 0x00000000[r5]
	mov 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 463
	st.b r6, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 465
	ld.w 0x00000018[r3], r6
	add r23, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 462
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 465
	add 0xFFFFFFFF, r6
	jarl _Dem_DcmGetDTCStatusAvailabilityMask, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 468
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000001, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 470
	st.b r23, 0x0000001F[r3]
	br9 .BB.LABEL.4_9
.BB.LABEL.4_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 466
	ld.w 0x00000018[r3], r2
	add r23, r2
	mov #_Dcm_Channel, r5
	add r5, r2
	ld.bu 0xFFFFFFFF[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 475
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	ld.bu 0x00000002[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb101
	movea 0x0000001E, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 481
	st.w r2, 0x00000000[r3]
	movea 0x0000001F, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 482
	st.w r2, 0x00000004[r3]
	movea 0x00000018, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 483
	st.w r2, 0x00000008[r3]
	movea 0x00000022, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 484
	st.w r2, 0x0000000C[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 485
	st.w r23, 0x00000010[r3]
	movea 0x00000020, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 486
	st.w r2, 0x00000014[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 487
	mov r22, r6
	mov r21, r8
	jarl _Dcm_UDS0x19_02_SubDealone.1, r31
.BB.LABEL.4_9:	; if_break_bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 490
	ld.bu 0x0000001F[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_11
.BB.LABEL.4_10:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 493
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 494
	dispose 0x00000024, 0x00000079, [r31]
.BB.LABEL.4_11:	; if_else_bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 496
	ld.bu 0x0000001E[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_13
.BB.LABEL.4_12:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 499
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r22
	add r20, r22
	mov 0x00000001, r2
	st.b r2, 0x0000003D[r22]
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 500
	dispose 0x00000024, 0x00000079, [r31]
.BB.LABEL.4_13:	; if_else_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 508
	ld.w 0x00000018[r3], r7
	mov r22, r6
	jarl _Dcm_UDS0x19_02_SubDealTwo.1, r31
.BB.LABEL.4_14:	; if_break_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 513
	dispose 0x00000024, 0x00000079, [r31]
_Dcm_UDS0x19_04_SubSubDeal.1:
	.stack _Dcm_UDS0x19_04_SubSubDeal.1 = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 702
	prepare 0x000007FD, 0x00000008
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 726
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 729
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 730
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 731
	ld.bu 0x00000000[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 732
	mulh 0x0000000C, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 731
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r6
	ld.w LOWW(#_DcmPbCfgPtr)[r6], r6
	ld.w 0x00000000[r6], r6
	ld.w 0x00000004[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 732
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 733
	ld.w 0x00000008[r6], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 735
	ld.w 0x0000000C[r5], r2
	ld.bu 0x00000004[r2], r5
	ld.bu 0x00000003[r2], r7
	ld.bu 0x00000002[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 732
	ld.w 0x00000004[r6], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 724
	ld.w 0x00000008[r20], r25
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 737
	st.w r2, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 738
	mov #_Dcm_Channel, r2
	mov r22, r6
	add r2, r6
	st.b r23, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 739
	ld.w 0x00000000[r25], r6
	add 0x00000001, r6
	st.w r6, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 740
	add r22, r6
	add r2, r6
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 741
	ld.w 0x00000000[r25], r6
	add 0x00000001, r6
	st.w r6, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 742
	add r22, r6
	add r6, r2
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 743
	ld.w 0x00000000[r25], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 735
	shl 0x00000010, r23
	shl 0x00000008, r7
	or r7, r23
	or r5, r23
	movea 0x00000005, r3, r8
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 745
	mov r23, r6
	jarl _Dem_DcmGetStatusOfDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 746
	cmp 0x00000000, r10
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 748
	ld.w 0x00000004[r20], r20
	mov 0x00000001, r21
	st.b r21, 0x00000000[r20]
	mov 0x00000000, r10
	dispose 0x00000008, 0x000007FD, [r31]
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 753
	ld.w 0x00000000[r25], r2
	add r22, r2
	mov #_Dcm_Channel, r5
	add r2, r5
	movea 0x00000005, r3, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 754
	ld.w 0x00000000[r25], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r25]
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 755
	mov r23, r6
	jarl _Dem_DcmDisableDTCRecordUpdate, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 756
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_16
.BB.LABEL.5_3:	; if_else_bb.bb231_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000000, r26
	mov r26, r27
	mov r26, r28
	br9 .BB.LABEL.5_12
.BB.LABEL.5_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 761
	ld.w 0x00000000[r25], r2
	subr r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 762
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 763
	ld.w 0x00000000[r25], r9
	movea 0x00000006, r3, r2
	st.w r2, 0x00000000[r3]
	add r22, r9
	mov #_Dcm_Channel, r2
	add r2, r9
	add 0x00000001, r9
	andi 0x000000FF, r26, r8
	mov 0x00000001, r7
	mov r23, r6
	jarl _Dem_DcmGetFreezeFrameDataByDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 769
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_then_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 771
	ld.w 0x00000000[r25], r2
	add r22, r2
	mov #_Dcm_Channel, r5
	add r2, r5
	st.b r26, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 772
	ld.w 0x00000000[r25], r2
	ld.hu 0x00000006[r3], r5
	add r5, r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r25]
	br9 .BB.LABEL.5_11
.BB.LABEL.5_6:	; if_else_bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 774
	cmp 0x00000005, r10
	bnz9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; if_then_bb183
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 776
	ld.w 0x00000000[r20], r21
	mov 0x00000001, r22
	st.b r22, 0x00000000[r21]
	br9 .BB.LABEL.5_14
.BB.LABEL.5_8:	; if_else_bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 779
	addi 0xFFFFFFFF, r10, r2
	zxb r2
	cmp 0x00000001, r2
	bnh9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; if_else_bb208
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 790
	cmp 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 792
	adf 0x00000002, r0, r27, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 794
	andi 0x000000FF, r27, r2
	addi 0xFFFFFF01, r2, r0
	bnz9 .BB.LABEL.5_11
.BB.LABEL.5_10:	; if_then_bb222
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000031, r0, r28
	st.b r28, 0x00000000[r21]
	jarl _Dem_DcmEnableDTCRecordUpdate, r31
	mov 0x00000001, r28
.BB.LABEL.5_11:	; if_break_bb228
	add 0x00000001, r26
.BB.LABEL.5_12:	; bb231
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 758
	andi 0x000000FF, r28, r0
	bnz9 .BB.LABEL.5_14
.BB.LABEL.5_13:	; bb231
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	andi 0x000000FF, r26, r2
	addi 0xFFFFFF01, r2, r0
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_14:	; bb250
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 803
	jarl _Dem_DcmEnableDTCRecordUpdate, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.5_18
.BB.LABEL.5_15:	; if_then_bb256
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 805
	ld.w 0x00000004[r20], r20
	mov 0x00000001, r2
	st.b r2, 0x00000000[r20]
	andi 0x000000FF, r28, r10
	dispose 0x00000008, 0x000007FD, [r31]
.BB.LABEL.5_16:	; if_else_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 808
	cmp 0x00000001, r10
	bz9 .BB.LABEL.5_19
.BB.LABEL.5_17:	; if_else_bb261.if_break_bb274_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000000, r28
.BB.LABEL.5_18:	; if_break_bb274
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 818
	andi 0x000000FF, r28, r10
	dispose 0x00000008, 0x000007FD, [r31]
.BB.LABEL.5_19:	; if_then_bb267
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 810
	ld.w 0x00000004[r20], r28
	mov 0x00000001, r2
	st.b r2, 0x00000000[r28]
	mov 0x00000000, r10
	dispose 0x00000008, 0x000007FD, [r31]
_Dcm_UDS0x19_04_SubDeal.1:
	.stack _Dcm_UDS0x19_04_SubDeal.1 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 834
	prepare 0x00000779, 0x00000008
	mov r8, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 856
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 859
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 860
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r8
	add r2, r8
	ld.bu 0x00000000[r8], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 861
	mulh 0x0000000C, r2
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r8
	ld.w LOWW(#_DcmPbCfgPtr)[r8], r8
	ld.w 0x00000000[r8], r8
	ld.w 0x00000004[r8], r8
	add r2, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 862
	ld.w 0x00000008[r8], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 864
	ld.w 0x0000000C[r5], r2
	ld.bu 0x00000004[r2], r5
	ld.bu 0x00000003[r2], r9
	ld.bu 0x00000002[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 874
	ld.bu 0x00000005[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 861
	ld.w 0x00000004[r8], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 853
	ld.w 0x00000008[r7], r25
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 867
	st.w r2, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 868
	mov #_Dcm_Channel, r2
	mov r21, r8
	add r2, r8
	st.b r22, 0x00000002[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 869
	ld.w 0x00000000[r25], r8
	add 0x00000001, r8
	st.w r8, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 870
	add r21, r8
	add r2, r8
	st.b r9, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 871
	ld.w 0x00000000[r25], r8
	add 0x00000001, r8
	st.w r8, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 872
	add r21, r8
	add r8, r2
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 873
	ld.w 0x00000000[r25], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 864
	shl 0x00000010, r22
	shl 0x00000008, r9
	or r9, r22
	or r5, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 874
	addi 0xFFFFFF01, r23, r0
	mov r7, r26
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 876
	mov r26, r7
	mov r20, r8
	jarl _Dcm_UDS0x19_04_SubSubDeal.1, r31
	dispose 0x00000008, 0x00000779, [r31]
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000005, r3, r8
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 881
	mov r22, r6
	jarl _Dem_DcmGetStatusOfDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 882
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 884
	ld.w 0x00000004[r26], r20
	mov 0x00000001, r21
	st.b r21, 0x00000000[r20]
	mov 0x00000000, r10
	dispose 0x00000008, 0x00000779, [r31]
.BB.LABEL.6_4:	; if_else_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 889
	ld.w 0x00000000[r25], r2
	add r21, r2
	mov #_Dcm_Channel, r5
	add r2, r5
	movea 0x00000005, r3, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 890
	ld.w 0x00000000[r25], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r25]
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 892
	mov r22, r6
	jarl _Dem_DcmDisableDTCRecordUpdate, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 893
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_15
.BB.LABEL.6_5:	; if_then_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 896
	ld.w 0x00000000[r25], r2
	sub r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 897
	add 0xFFFFFFFF, r24
	st.h r24, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 898
	ld.w 0x00000000[r25], r9
	movea 0x00000006, r3, r2
	st.w r2, 0x00000000[r3]
	add r21, r9
	mov #_Dcm_Channel, r2
	add r2, r9
	add 0x00000001, r9
	mov 0x00000001, r7
	mov r22, r6
	mov r23, r8
	jarl _Dem_DcmGetFreezeFrameDataByDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 904
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb183
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 906
	ld.w 0x00000000[r25], r20
	add r20, r21
	mov #_Dcm_Channel, r20
	add r21, r20
	st.b r23, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 907
	ld.w 0x00000000[r25], r20
	ld.hu 0x00000006[r3], r2
	add r2, r20
	add 0x00000001, r20
	st.w r20, 0x00000000[r25]
	mov 0x00000000, r20
	br9 .BB.LABEL.6_13
.BB.LABEL.6_7:	; if_else_bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 909
	cmp 0x00000005, r10
	bnz9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; if_then_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 911
	ld.w 0x00000000[r26], r20
	mov 0x00000001, r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r20
	br9 .BB.LABEL.6_13
.BB.LABEL.6_9:	; if_else_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 913
	addi 0xFFFFFFFF, r10, r2
	zxb r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.6_12
.BB.LABEL.6_10:	; if_else_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	cmp 0x00000003, r10
	bz9 .BB.LABEL.6_12
.BB.LABEL.6_11:	; if_else_bb207.if_break_bb240_crit_edge
	mov 0x00000000, r20
	br9 .BB.LABEL.6_13
.BB.LABEL.6_12:	; if_then_bb235
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 919
	st.b r2, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 920
	jarl _Dem_DcmEnableDTCRecordUpdate, r31
	mov 0x00000001, r20
.BB.LABEL.6_13:	; if_break_bb240
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 927
	jarl _Dem_DcmEnableDTCRecordUpdate, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_17
.BB.LABEL.6_14:	; if_then_bb246
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 929
	ld.w 0x00000004[r26], r26
	mov 0x00000001, r2
	st.b r2, 0x00000000[r26]
	mov r20, r10
	dispose 0x00000008, 0x00000779, [r31]
.BB.LABEL.6_15:	; if_else_bb251
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 932
	cmp 0x00000001, r10
	bz9 .BB.LABEL.6_18
.BB.LABEL.6_16:	; if_else_bb251.if_break_bb265_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000000, r20
.BB.LABEL.6_17:	; if_break_bb265
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 943
	dispose 0x00000008, 0x00000779, [r31]
.BB.LABEL.6_18:	; if_then_bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 934
	ld.w 0x00000004[r26], r20
	mov 0x00000001, r2
	st.b r2, 0x00000000[r20]
	mov 0x00000000, r10
	dispose 0x00000008, 0x00000779, [r31]
_Dcm_UDS0x19_04.1:
	.stack _Dcm_UDS0x19_04.1 = 60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 960
	prepare 0x00000679, 0x00000020
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 966
	st.b r0, 0x0000001F[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 967
	st.b r0, 0x0000001E[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 974
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 976
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	cmp 0x00000006, r2
	mov r7, r21
	mov r6, r22
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 979
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 982
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_13
.BB.LABEL.7_4:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 985
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 986
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 987
	ld.bu 0x00000000[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 988
	mulhi 0x0000000C, r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 987
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000004[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 988
	add r24, r2
	ld.w 0x00000008[r2], r25
	movea 0x00000018, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 989
	st.w r2, 0x00000008[r3]
	movea 0x0000001F, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 990
	st.w r2, 0x00000004[r3]
	movea 0x0000001E, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 991
	st.w r2, 0x00000000[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 992
	mov r22, r6
	mov r21, r8
	jarl _Dcm_UDS0x19_04_SubDeal.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 993
	ld.bu 0x0000001F[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000031, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 996
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 997
	dispose 0x00000020, 0x00000679, [r31]
.BB.LABEL.7_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 999
	ld.bu 0x0000001E[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.7_8
.BB.LABEL.7_7:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1002
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r21
	add r20, r21
	mov 0x00000001, r20
	st.b r20, 0x0000003D[r21]
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1003
	dispose 0x00000020, 0x00000679, [r31]
.BB.LABEL.7_8:	; if_else_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1007
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_13
.BB.LABEL.7_9:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1010
	mulh 0x0000000C, r23
	add r23, r24
	ld.w 0x00000004[r24], r2
	ld.w 0x00000018[r3], r5
	cmp r2, r5
	bnh9 .BB.LABEL.7_11
.BB.LABEL.7_10:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1013
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
.BB.LABEL.7_11:	; if_break_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov r10, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1016
	cmp 0x00000000, r21
	bz9 .BB.LABEL.7_14
.BB.LABEL.7_12:	; if_break_bb94.if_break_bb121_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov r21, r10
.BB.LABEL.7_13:	; if_break_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1030
	dispose 0x00000020, 0x00000679, [r31]
.BB.LABEL.7_14:	; if_then_bb100
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1019
	mov #_Dcm_Channel, r2
	add r2, r25
	movea 0x00000059, r0, r2
	st.b r2, 0x00000000[r25]
	mov 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1020
	st.b r2, 0x00000001[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1021
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	ld.w 0x00000018[r3], r5
	st.w r5, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1022
	ld.w 0x00000018[r3], r5
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1023
	st.w r25, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1024
	mov r22, r6
	jarl _DsdInternal_ProcessingDone, r31
	br9 .BB.LABEL.7_12
_Dcm_UDS0x19_06SubDeal.1:
	.stack _Dcm_UDS0x19_06SubDeal.1 = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1048
	prepare 0x00000FFF, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1070
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1072
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1076
	ld.w 0x0000000C[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1078
	ld.bu 0x00000002[r2], r20
	shl 0x00000010, r20
	ld.bu 0x00000003[r2], r6
	shl 0x00000008, r6
	or r6, r20
	ld.bu 0x00000004[r2], r6
	or r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1073
	ld.bu 0x00000007[r5], r5
	mulhi 0x00000014, r5, r5
	mov #_Dcm_ChannelCtrl, r6
	add r5, r6
	ld.bu 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1074
	mulh 0x0000000C, r5
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r6
	ld.w LOWW(#_DcmPbCfgPtr)[r6], r6
	ld.w 0x00000000[r6], r6
	ld.w 0x00000004[r6], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1082
	ld.bu 0x00000005[r2], r21
	addi 0xFFFFFF02, r21, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1075
	ld.w 0x00000008[r6], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1074
	ld.w 0x00000004[r6], r23
	mov r9, r24
	mov r8, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1082
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry.bb195.preheader_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000060, r0, r27
	movea 0x00000090, r0, r28
	br9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; if_else_bb
	movea 0x000000EF, r0, r27
	mov 0x00000001, r28
.BB.LABEL.8_3:	; bb195.preheader
	mov 0x00000000, r29
	mov r29, r30
	br9 .BB.LABEL.8_14
.BB.LABEL.8_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1096
	ld.w 0x00000000[r25], r2
	subr r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1097
	add 0xFFFFFFFF, r2
	st.h r2, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1098
	ld.w 0x00000000[r25], r9
	movea 0x00000006, r3, r2
	st.w r2, 0x00000000[r3]
	add r22, r9
	mov #_Dcm_Channel, r2
	add r2, r9
	add 0x00000001, r9
	andi 0x000000FF, r28, r8
	mov 0x00000001, r7
	mov r20, r6
	jarl _Dem_DcmGetExtendedDataRecordByDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1104
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_7
.BB.LABEL.8_5:	; bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	ld.hu 0x00000006[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1107
	ld.w 0x00000000[r25], r2
	add r22, r2
	mov #_Dcm_Channel, r5
	add r2, r5
	st.b r28, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1108
	ld.w 0x00000000[r25], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1110
	ld.hu 0x00000006[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1108
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1110
	add 0x00000001, r2
	st.w r2, 0x00000000[r25]
	br9 .BB.LABEL.8_13
.BB.LABEL.8_7:	; if_else_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1112
	cmp 0x00000005, r10
	bnz9 .BB.LABEL.8_9
.BB.LABEL.8_8:	; if_then_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1114
	st.b r20, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1115
	andi 0x000000FF, r30, r10
	dispose 0x00000008, 0x00000FFF, [r31]
.BB.LABEL.8_9:	; if_else_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1117
	addi 0xFFFFFF01, r21, r0
	bnz9 .BB.LABEL.8_11
.BB.LABEL.8_10:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1119
	add 0xFFFFFFFF, r10
	zxb r10
	cmp 0x00000002, r10
	bl9 .BB.LABEL.8_12
	br9 .BB.LABEL.8_13
.BB.LABEL.8_11:	; if_else_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1130
	cmp 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1132
	adf 0x00000002, r0, r29, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1134
	andi 0x000000FF, r29, r2
	cmp r27, r2
	bnz9 .BB.LABEL.8_13
.BB.LABEL.8_12:	; if_then_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000031, r0, r30
	st.b r30, 0x00000000[r24]
	jarl _Dem_DcmEnableDTCRecordUpdate, r31
	mov 0x00000001, r30
.BB.LABEL.8_13:	; if_break_bb192
	add 0x00000001, r28
.BB.LABEL.8_14:	; bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1093
	andi 0x000000FF, r28, r2
	movea 0x000000F0, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.8_4
.BB.LABEL.8_15:	; bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1145
	andi 0x000000FF, r30, r10
	dispose 0x00000008, 0x00000FFF, [r31]
_Dcm_UDS0x19_06.1:
	.stack _Dcm_UDS0x19_06.1 = 52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1162
	prepare 0x000007FD, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1175
	st.b r0, 0x00000008[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1185
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1187
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1188
	ld.w 0x00000010[r5], r2
	cmp 0x00000006, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1187
	ld.w 0x0000000C[r5], r2
	mov r7, r21
	mov r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1188
	bz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1191
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1192
	dispose 0x0000000C, 0x000007FD, [r31]
.BB.LABEL.9_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1197
	mov r20, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1198
	ld.bu 0x00000007[r6], r5
	mulhi 0x00000014, r5, r5
	mov #_Dcm_ChannelCtrl, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1199
	ld.bu 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1200
	mulh 0x0000000C, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1199
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r6
	ld.w LOWW(#_DcmPbCfgPtr)[r6], r6
	ld.w 0x00000000[r6], r6
	ld.w 0x00000004[r6], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1200
	add r5, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1201
	ld.w 0x00000008[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1200
	ld.w 0x00000004[r23], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1203
	ld.bu 0x00000004[r2], r5
	ld.bu 0x00000003[r2], r6
	ld.bu 0x00000002[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1214
	ld.bu 0x00000005[r2], r27
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1205
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1206
	mov #_Dcm_Channel, r2
	mov r24, r28
	add r2, r28
	st.b r26, 0x00000002[r28]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1207
	ld.w 0x00000004[r3], r7
	add 0x00000001, r7
	st.w r7, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1208
	add r24, r7
	add r2, r7
	st.b r6, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1209
	ld.w 0x00000004[r3], r7
	add 0x00000001, r7
	st.w r7, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1210
	add r24, r7
	add r7, r2
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1211
	ld.w 0x00000004[r3], r2
	add 0x00000001, r2
	st.w r2, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1203
	shl 0x00000010, r26
	shl 0x00000008, r6
	or r6, r26
	or r5, r26
	movea 0x00000009, r3, r8
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1213
	mov r26, r6
	jarl _Dem_DcmGetStatusOfDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1200
	add 0x00000004, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1214
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_19
.BB.LABEL.9_3:	; if_else_bb117
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1221
	ld.w 0x00000004[r3], r2
	add r24, r2
	mov #_Dcm_Channel, r5
	add r2, r5
	movea 0x00000009, r3, r2
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1222
	ld.w 0x00000004[r3], r2
	add 0x00000001, r2
	st.w r2, 0x00000004[r3]
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1225
	mov r26, r6
	jarl _Dem_DcmDisableDTCRecordUpdate, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1226
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_17
.BB.LABEL.9_4:	; if_then_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1228
	addi 0x00000002, r27, r2
	zxb r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_then_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000004, r3, r8
	movea 0x00000008, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1230
	mov r22, r6
	mov r21, r9
	jarl _Dcm_UDS0x19_06SubDeal.1, r31
	br9 .BB.LABEL.9_15
.BB.LABEL.9_6:	; if_else_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1236
	ld.w 0x00000004[r3], r2
	sub r2, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1237
	add 0xFFFFFFFF, r25
	st.h r25, 0x0000000A[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1238
	ld.w 0x00000004[r3], r9
	movea 0x0000000A, r3, r2
	st.w r2, 0x00000000[r3]
	add r24, r9
	mov #_Dcm_Channel, r2
	add r2, r9
	add 0x00000001, r9
	mov 0x00000001, r7
	mov r26, r6
	mov r27, r8
	jarl _Dem_DcmGetExtendedDataRecordByDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1244
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_9
.BB.LABEL.9_7:	; bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	ld.hu 0x0000000A[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.9_9
.BB.LABEL.9_8:	; if_then_bb184
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1247
	ld.w 0x00000004[r3], r2
	add r2, r24
	mov #_Dcm_Channel, r2
	add r24, r2
	st.b r27, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1248
	ld.w 0x00000004[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1250
	ld.hu 0x0000000A[r3], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1248
	add r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1250
	add 0x00000001, r2
	st.w r2, 0x00000004[r3]
	mov 0x00000000, r10
	br9 .BB.LABEL.9_15
.BB.LABEL.9_9:	; if_else_bb196
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1252
	cmp 0x00000005, r10
	bnz9 .BB.LABEL.9_11
.BB.LABEL.9_10:	; if_then_bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1254
	st.b r2, 0x00000008[r3]
	mov 0x00000000, r10
	br9 .BB.LABEL.9_15
.BB.LABEL.9_11:	; if_else_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1256
	addi 0xFFFFFFFF, r10, r2
	zxb r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.9_14
.BB.LABEL.9_12:	; if_else_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	cmp 0x00000003, r10
	bz9 .BB.LABEL.9_14
.BB.LABEL.9_13:	; if_else_bb203.if_break_bb239_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.9_15
.BB.LABEL.9_14:	; if_then_bb233
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1261
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1262
	jarl _Dem_DcmEnableDTCRecordUpdate, r31
	mov 0x00000001, r10
.BB.LABEL.9_15:	; if_break_bb239
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1271
	jarl _Dem_DcmEnableDTCRecordUpdate, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.9_20
.BB.LABEL.9_16:	; if_break_bb239.if_break_bb257_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.9_21
.BB.LABEL.9_17:	; if_else_bb247
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1276
	cmp 0x00000001, r10
	bz9 .BB.LABEL.9_19
.BB.LABEL.9_18:	; if_else_bb247.if_break_bb257_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000000, r2
	mov r2, r24
	br9 .BB.LABEL.9_21
.BB.LABEL.9_19:	; if_then_bb253
	mov 0x00000000, r24
.BB.LABEL.9_20:	; if_then_bb245
	mov 0x00000001, r2
.BB.LABEL.9_21:	; if_break_bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1285
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.9_29
.BB.LABEL.9_22:	; if_then_bb263
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1287
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_24
.BB.LABEL.9_23:	; if_then_bb269
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000031, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1290
	st.b r20, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1291
	dispose 0x0000000C, 0x000007FD, [r31]
.BB.LABEL.9_24:	; if_else_bb271
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1293
	ld.bu 0x00000008[r3], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.9_26
.BB.LABEL.9_25:	; if_then_bb277
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1297
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r21
	add r20, r21
	mov 0x00000001, r20
	st.b r20, 0x0000003D[r21]
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1298
	dispose 0x0000000C, 0x000007FD, [r31]
.BB.LABEL.9_26:	; if_else_bb282
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1303
	ld.w 0x00000000[r23], r2
	ld.w 0x00000004[r3], r5
	cmp r2, r5
	bnh9 .BB.LABEL.9_28
.BB.LABEL.9_27:	; if_then_bb290
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000014, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1306
	st.b r5, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1307
	dispose 0x0000000C, 0x000007FD, [r31]
.BB.LABEL.9_28:	; if_else_bb292
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000059, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1312
	st.b r2, 0x00000000[r28]
	mov 0x00000006, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1313
	st.b r2, 0x00000001[r28]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1314
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	st.w r5, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1315
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1316
	st.w r28, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1317
	mov r22, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.9_29:	; if_break_bb313
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov r24, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1323
	dispose 0x0000000C, 0x000007FD, [r31]
_Dcm_UDS0x19_0ADeal.1:
	.stack _Dcm_UDS0x19_0ADeal.1 = 64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1341
	prepare 0x000007FF, 0x00000014
	mov r7, r20
	mov r8, r21
	mov r9, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1365
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1367
	mov r23, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1368
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1369
	ld.bu 0x00000000[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1370
	mulhi 0x0000000C, r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1369
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000004[r5], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1370
	add r25, r2
	ld.w 0x00000008[r2], r26
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1372
	st.w r2, 0x00000004[r3]
	st.w r0, 0x00000008[r3]
	st.w r0, 0x00000000[r3]
	mov 0x00000001, r7
	mov 0x00000000, r6
	mov r7, r8
	mov r7, r9
	jarl _Dem_DcmSetDTCFilter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1380
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_3
.BB.LABEL.10_1:	; entry.if_break_bb152_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000000, r27
.BB.LABEL.10_2:	; if_break_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1500
	andi 0x000000FF, r27, r10
	dispose 0x00000014, 0x000007FF, [r31]
.BB.LABEL.10_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1382
	mov r20, r6
	jarl _Dem_DcmGetNumberOfFilteredDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1384
	cmp 0x00000002, r10
	bz9 .BB.LABEL.10_18
.BB.LABEL.10_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.10_19
.BB.LABEL.10_5:	; if_then_bb.bb123_crit_edge
	mov 0x00000000, r27
	mov r27, r28
	mov r27, r29
	br9 .BB.LABEL.10_16
.BB.LABEL.10_6:	; bb
	movea 0x00000013, r3, r7
	movea 0x0000000C, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1395
	jarl _Dem_DcmGetNextFilteredDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1396
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_10
.BB.LABEL.10_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	add 0xFFFFFFFF, r10
	cmp 0x00000000, r10
	bz9 .BB.LABEL.10_13
.BB.LABEL.10_8:	; bb
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.10_13
.BB.LABEL.10_9:	; switch_clause_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1465
	mov r23, r27
	shl 0x00000006, r27
	mov #_Dcm_MsgCtrl, r2
	add r27, r2
	mov 0x00000001, r28
	st.b r28, 0x0000003D[r2]
	mov 0x0000000A, r27
	br9 .BB.LABEL.10_15
.BB.LABEL.10_10:	; switch_clause_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1399
	mulhi 0x0000000C, r24, r2
	add r25, r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000000[r21], r5
	addi 0x00000004, r5, r6
	cmp r2, r6
	bnh9 .BB.LABEL.10_12
.BB.LABEL.10_11:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000014, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1424
	st.b r5, 0x00000000[r22]
	br9 .BB.LABEL.10_14
.BB.LABEL.10_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1435
	add r26, r5
	mov #_Dcm_Channel, r2
	add r2, r5
	ld.w 0x0000000C[r3], r6
	shr 0x00000010, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1436
	ld.w 0x00000000[r21], r5
	add 0x00000001, r5
	st.w r5, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1437
	add r26, r5
	add r2, r5
	ld.w 0x0000000C[r3], r6
	shr 0x00000008, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1438
	ld.w 0x00000000[r21], r5
	add 0x00000001, r5
	st.w r5, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1439
	add r26, r5
	add r2, r5
	ld.w 0x0000000C[r3], r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1440
	ld.w 0x00000000[r21], r5
	add 0x00000001, r5
	st.w r5, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1441
	add r26, r5
	add r5, r2
	movea 0x00000013, r3, r5
	ld.b 0x00000000[r5], r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1442
	ld.w 0x00000000[r21], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r21]
	br9 .BB.LABEL.10_15
.BB.LABEL.10_13:	; switch_clause_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000022, r0, r27
	st.b r27, 0x00000000[r22]
.BB.LABEL.10_14:	; switch_clause_bb119
	mov 0x00000001, r27
	mov r27, r28
.BB.LABEL.10_15:	; switch_break_bb
	add 0x00000001, r29
.BB.LABEL.10_16:	; bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1388
	andi 0x0000FFFF, r29, r2
	ld.hu 0x00000000[r20], r5
	cmp r5, r2
	bnc9 .BB.LABEL.10_2
.BB.LABEL.10_17:	; bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	andi 0x000000FF, r28, r0
	bz9 .BB.LABEL.10_6
	br9 .BB.LABEL.10_2
.BB.LABEL.10_18:	; switch_clause_bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1488
	shl 0x00000006, r23
	mov #_Dcm_MsgCtrl, r22
	add r23, r22
	mov 0x00000001, r27
	st.b r27, 0x0000003D[r22]
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1489
	dispose 0x00000014, 0x000007FF, [r31]
.BB.LABEL.10_19:	; switch_clause_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000022, r0, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1494
	st.b r27, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1495
	dispose 0x00000014, 0x000007FF, [r31]
_Dcm_UDS0x19_0A.1:
	.stack _Dcm_UDS0x19_0A.1 = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1516
	prepare 0x00000679, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1522
	st.h r0, 0x00000006[r3]
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1524
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1528
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1529
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	cmp 0x00000002, r2
	mov r7, r21
	mov r6, r22
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb
	movea 0x00000013, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1532
	st.b r23, 0x00000000[r21]
	mov 0x00000001, r23
.BB.LABEL.11_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1535
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_4:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1538
	mov r20, r23
	shl 0x00000006, r23
	mov #_Dcm_MsgCtrl, r2
	add r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1539
	ld.bu 0x00000007[r2], r23
	mulhi 0x00000014, r23, r23
	mov #_Dcm_ChannelCtrl, r2
	add r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1540
	ld.bu 0x00000000[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1541
	mulh 0x0000000C, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1540
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1541
	add r23, r2
	ld.w 0x00000008[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1551
	mov #_Dcm_Channel, r24
	mov r23, r25
	add r24, r25
	movea 0x00000059, r0, r2
	st.b r2, 0x00000000[r25]
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1552
	st.b r2, 0x00000001[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1554
	ld.w 0x00000000[r3], r6
	add r23, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1551
	add r24, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1554
	add 0xFFFFFFFF, r6
	jarl _Dem_DcmGetDTCStatusAvailabilityMask, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1555
	ld.w 0x00000000[r3], r2
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1551
	add r24, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1555
	ld.b 0xFFFFFFFF[r23], r23
	movhi HIGHW1(#_mask.1.Dcm_UDS0x19_0A.1), r0, r2
	st.b r23, LOWW(#_mask.1.Dcm_UDS0x19_0A.1)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1557
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.11_7
.BB.LABEL.11_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movhi HIGHW1(#_mask.1.Dcm_UDS0x19_0A.1), r0, r23
	ld.bu LOWW(#_mask.1.Dcm_UDS0x19_0A.1)[r23], r23
	cmp 0x00000000, r23
	bz9 .BB.LABEL.11_7
.BB.LABEL.11_6:	; if_then_bb83
	mov r3, r8
	movea 0x00000006, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1559
	mov r22, r6
	mov r21, r9
	jarl _Dcm_UDS0x19_0ADeal.1, r31
.BB.LABEL.11_7:	; if_break_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1567
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.11_9
.BB.LABEL.11_8:	; if_then_bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1570
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	ld.w 0x00000000[r3], r5
	st.w r5, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1571
	ld.w 0x00000000[r3], r5
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1572
	st.w r25, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1573
	mov r22, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.11_9:	; if_break_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1577
	dispose 0x00000008, 0x00000679, [r31]
_Dcm_Uds0x19SubfunctionAnalyse.1:
	.stack _Dcm_Uds0x19SubfunctionAnalyse.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1680
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1688
	add 0xFFFFFFFF, r7
	cmp 0x00000009, r7
	bh9 .BB.LABEL.12_7
.BB.LABEL.12_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	shl 0x00000001, r7
	jmp #.SWITCH.LABEL.12_8[r7]
.SWITCH.LABEL.12_8:
	br9 .BB.LABEL.12_2
	br9 .BB.LABEL.12_3
	br9 .BB.LABEL.12_7
	br9 .BB.LABEL.12_4
	br9 .BB.LABEL.12_7
	br9 .BB.LABEL.12_5
	br9 .BB.LABEL.12_7
	br9 .BB.LABEL.12_7
	br9 .BB.LABEL.12_7
	br9 .BB.LABEL.12_6
.SWITCH.LABEL.12_8.END:
.BB.LABEL.12_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1693
	mov r8, r7
	jarl _Dcm_UDS0x19_01.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_3:	; switch_clause_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1699
	mov r8, r7
	jarl _Dcm_UDS0x19_02.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_4:	; switch_clause_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1711
	mov r8, r7
	jarl _Dcm_UDS0x19_04.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_5:	; switch_clause_bb17
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1717
	mov r8, r7
	jarl _Dcm_UDS0x19_06.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_6:	; switch_clause_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1723
	mov r8, r7
	jarl _Dcm_UDS0x19_0A.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_7:	; switch_clause_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000012, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1734
	st.b r2, 0x00000000[r8]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1735
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_UDS0x19:
	.stack _Dcm_UDS0x19 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1756
	prepare 0x00000071, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1767
	mulhi 0x0000001C, r20, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1771
	ld.bu 0x00000002[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1770
	mov r20, r6
	jarl _Dcm_UdsSubServicesCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1771
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000012, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1774
	st.b r2, 0x00000000[r21]
.BB.LABEL.13_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1783
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000019, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1785
	mov r20, r6
	mov r21, r8
	jarl _DsdInternal_SubSesCheck, r31
.BB.LABEL.13_4:	; if_break_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1789
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 0
	movea 0x00000019, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1792
	mov r20, r6
	mov r21, r8
	jarl _DsdInternal_SubSecurityCheck, r31
.BB.LABEL.13_6:	; if_break_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1796
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1798
	shl 0x00000006, r22
	mov #_Dcm_MsgCtrl, r2
	add r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1800
	ld.bu 0x00000001[r2], r7
	mov r20, r6
	mov r21, r8
	jarl _Dcm_Uds0x19SubfunctionAnalyse.1, r31
.BB.LABEL.13_8:	; if_break_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x19.c", 1803
	dispose 0x00000000, 0x00000071, [r31]
	.section .data, data
_mask.1.Dcm_UDS0x19_0A.1:
	.ds (1)
