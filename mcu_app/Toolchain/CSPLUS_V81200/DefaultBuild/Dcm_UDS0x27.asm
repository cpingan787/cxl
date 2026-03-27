#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x27.c -oDefaultBuild\Dcm_UDS0x27.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_a5175bcb2aec4dd781f5673b649d02f8atfrvjnj.jba
#@	compiled at Fri Mar 27 09:49:56 2026

	.file "..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x27.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_SecCtrl
	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_Channel
	.extern _DcmPbCfgPtr
	.extern _DslInternal_GetSecurityCfgBySecLevel
	.extern _DsdInternal_ProcessingDone
	.extern _Dcm_ResetTime
	.extern _DslInternal_SetSecurityAccessStatus
	.public _Dcm_UDS0x27
	.extern _DsdInternal_SubSesCheck
	.extern _DsdInternal_SubSecurityCheck

	.section .text, text
_Dcm_Uds0x27ServiceSubfunctionCheck.1:
	.stack _Dcm_Uds0x27ServiceSubfunctionCheck.1 = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 58
	prepare 0x00000041, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 69
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 70
	ld.bu 0x00000002[r5], r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000001[r5], r6
	add 0x00000001, r6
	shr 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 72
	cmp 0x00000000, r6
	mov r8, r20
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	movea 0x00000012, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 75
	st.b r2, 0x00000000[r20]
	mov 0x00000001, r10
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 79
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; if_then_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 81
	jarl _DslInternal_GetSecurityCfgBySecLevel, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 82
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	movea 0x00000012, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 85
	st.b r2, 0x00000000[r20]
.BB.LABEL.1_6:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 95
	dispose 0x00000000, 0x00000041, [r31]
_Dcm_Uds0x27ServiceActiveSecLevelCheck.1:
	.stack _Dcm_Uds0x27ServiceActiveSecLevelCheck.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 113
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 117
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 120
	mov r2, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r8
	add r5, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 121
	ld.bu 0x00000007[r8], r5
	mulhi 0x00000014, r5, r5
	mov #_Dcm_ChannelCtrl, r9
	add r5, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 122
	ld.bu 0x00000000[r9], r5
	mulh 0x0000000C, r5
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r9
	ld.w LOWW(#_DcmPbCfgPtr)[r9], r9
	ld.w 0x00000000[r9], r9
	ld.w 0x00000004[r9], r9
	add r5, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 124
	ld.bu 0x00000001[r8], r5
	addi 0x00000001, r5, r8
	shr 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 126
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000002), r0, r10
	ld.bu LOWW(#_Dcm_SecCtrl+0x00000002)[r10], r10
	cmp r10, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 122
	ld.w 0x00000008[r9], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 126
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 129
	mov #_Dcm_Channel, r9
	add r8, r9
	movea 0x00000067, r0, r10
	st.b r10, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 130
	st.b r5, 0x00000001[r9]
	mov 0x00000000, r5
	br9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 133
	andi 0x000000FF, r5, r10
	add r8, r10
	mov #_Dcm_Channel, r11
	add r11, r10
	st.b r0, 0x00000002[r10]
	add 0x00000001, r5
.BB.LABEL.2_3:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 131
	andi 0x000000FF, r5, r10
	cmp r7, r10
	bl9 .BB.LABEL.2_2
.BB.LABEL.2_4:	; bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 135
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	add 0x00000002, r7
	st.w r7, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 136
	st.w r7, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 137
	st.w r9, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 138
	jarl _DsdInternal_ProcessingDone, r31
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 139
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 142
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_Uds0x27ServiceMsgLenCheck.1:
	.stack _Dcm_Uds0x27ServiceMsgLenCheck.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 160
	prepare 0x00000679, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 174
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000054[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 178
	ld.w 0x00000000[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 182
	mov r8, r2
	shl 0x00000005, r2
	add r20, r2
	addi 0x00000003, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 183
	add 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 180
	mulhi 0x0000001C, r7, r7
	mov #_Dcm_ProtocolCtrl, r10
	add r7, r10
	ld.bu 0x00000002[r10], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 181
	shl 0x00000006, r7
	mov #_Dcm_MsgCtrl, r10
	add r7, r10
	ld.bu 0x00000001[r10], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 186
	andi 0x00000001, r7, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 192
	cmov 0x00000002, r2, r5, r2
	ld.b 0x00000000[r2], r2
	add 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 194
	zxb r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 176
	mov #_Dcm_SecCtrl, r21
	add r8, r21
	add 0x00000001, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 184
	ld.bu 0x00000010[r10], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 194
	cmp r5, r2
	mov r8, r22
	mov r9, r23
	mov r6, r24
	bz9 .BB.LABEL.3_11
.BB.LABEL.3_1:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 198
	andi 0x00000001, r7, r0
	bnz9 .BB.LABEL.3_10
.BB.LABEL.3_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	movhi HIGHW1(#_Dcm_SecCtrl), r0, r2
	ld.bu LOWW(#_Dcm_SecCtrl)[r2], r2
	add 0x00000001, r2
	cmp r2, r7
	bnz9 .BB.LABEL.3_10
.BB.LABEL.3_3:	; bb91
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_SecCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.3_10
.BB.LABEL.3_4:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 201
	ld.b 0x00000000[r21], r2
	add 0x00000001, r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 202
	mov r22, r5
	shl 0x00000005, r5
	add r20, r5
	ld.bu 0x00000005[r5], r5
	zxb r2
	cmp r5, r2
	bl9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 204
	shl 0x00000002, r8
	mov #_Dcm_SecCtrl, r25
	add r8, r25
	addi 0x00000008, r25, r6
	jarl _Dcm_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 205
	mov r22, r2
	shl 0x00000005, r2
	add r20, r2
	ld.hu 0x00000006[r2], r2
	st.w r2, 0x0000000C[r25]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 206
	st.w r2, 0x00000010[r25]
.BB.LABEL.3_6:	; if_break_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 208
	mov r22, r2
	shl 0x00000005, r2
	add r20, r2
	ld.bu 0x00000004[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.3_10
.BB.LABEL.3_7:	; bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov r22, r2
	shl 0x00000005, r2
	add r20, r2
	ld.w 0x0000001C[r2], r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.3_10
.BB.LABEL.3_8:	; if_then_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 212
	shl 0x00000005, r22
	add r22, r20
	ld.w 0x00000018[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; if_then_bb183
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 214
	ld.bu 0x00000000[r21], r7
	mov r24, r6
	jarl [r2], r31
.BB.LABEL.3_10:	; if_break_bb193
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 218
	jarl _DslInternal_SetSecurityAccessStatus, r31
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 219
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 220
	dispose 0x00000000, 0x00000679, [r31]
.BB.LABEL.3_11:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 223
	dispose 0x00000000, 0x00000679, [r31]
_Dcm_UDS0x27_SubReqSeed.1:
	.stack _Dcm_UDS0x27_SubReqSeed.1 = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 241
	prepare 0x000007FF, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 266
	ld.bu 0x00000000[r8], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 270
	shl 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 253
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 264
	ld.w 0x00000008[r5], r10
	ld.w 0x00000054[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 266
	ld.w 0x00000000[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 270
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 275
	ld.bu 0x00000001[r10], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 249
	mulhi 0x0000001C, r7, r2
	mov #_Dcm_ProtocolCtrl, r10
	add r2, r10
	ld.bu 0x00000002[r10], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 251
	mov r21, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r10
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 275
	ld.bu 0x00000001[r10], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 252
	ld.bu 0x00000007[r10], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r10
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 253
	ld.bu 0x00000000[r10], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 254
	mulhi 0x0000000C, r23, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 253
	ld.w 0x00000000[r5], r5
	ld.w 0x00000004[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 254
	add r24, r2
	ld.w 0x00000008[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 275
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000015), r0, r2
	tst1 0x00000001, LOWW(#_Dcm_SecCtrl+0x00000015)[r2]
	mov r9, r26
	mov r8, r27
	mov r7, r28
	mov r6, r29
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 277
	st.b r2, 0x00000000[r26]
	mov 0x00000001, r10
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 283
	mov r28, r6
	mov r20, r7
	jarl _Dcm_Uds0x27ServiceActiveSecLevelCheck.1, r31
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 285
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_13
.BB.LABEL.4_4:	; if_then_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 293
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_SecCtrl+0x00000004)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb81.bb142_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov 0x00000000, r27
	br9 .BB.LABEL.4_12
.BB.LABEL.4_6:	; if_then_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 295
	ld.w 0x00000008[r27], r27
	mov #_Dcm_Channel, r7
	add r25, r7
	add 0x00000002, r7
	mov r29, r6
	mov r26, r8
	jarl [r27], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 302
	cmp 0x0000000A, r10
	bz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb86.bb119_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov 0x00000000, r27
	br9 .BB.LABEL.4_10
.BB.LABEL.4_8:	; if_then_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 304
	mov r21, r27
	shl 0x00000006, r27
	mov #_Dcm_MsgCtrl, r2
	add r27, r2
	mov 0x00000001, r27
	st.b r27, 0x0000003D[r2]
	mov 0x00000000, r27
	br9 .BB.LABEL.4_10
.BB.LABEL.4_9:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 308
	andi 0x000000FF, r27, r2
	mov #_Last_Seed.1.Dcm_UDS0x27_SubReqSeed.1, r5
	add r2, r5
	add r25, r2
	mov #_Dcm_Channel, r6
	add r6, r2
	ld.b 0x00000002[r2], r2
	st.b r2, 0x00000000[r5]
	add 0x00000001, r27
.BB.LABEL.4_10:	; bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 306
	andi 0x000000FF, r27, r2
	cmp r20, r2
	bl9 .BB.LABEL.4_9
	br9 .BB.LABEL.4_13
.BB.LABEL.4_11:	; bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 315
	andi 0x000000FF, r27, r2
	mov r25, r5
	add r2, r5
	mov #_Dcm_Channel, r6
	add r6, r5
	mov #_Last_Seed.1.Dcm_UDS0x27_SubReqSeed.1, r6
	add r2, r6
	ld.b 0x00000000[r6], r2
	st.b r2, 0x00000002[r5]
	add 0x00000001, r27
.BB.LABEL.4_12:	; bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 313
	andi 0x000000FF, r27, r2
	cmp r20, r2
	bl9 .BB.LABEL.4_11
.BB.LABEL.4_13:	; if_break_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 337
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_16
.BB.LABEL.4_14:	; bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mulh 0x0000000C, r23
	add r23, r24
	ld.w 0x00000004[r24], r2
	addi 0x00000002, r20, r5
	cmp r2, r5
	bnh9 .BB.LABEL.4_16
.BB.LABEL.4_15:	; if_then_bb173
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 341
	st.b r2, 0x00000000[r26]
	mov 0x00000001, r10
.BB.LABEL.4_16:	; if_break_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov r10, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 344
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.4_18
.BB.LABEL.4_17:	; if_then_bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 347
	mov #_Dcm_Channel, r2
	add r2, r25
	movea 0x00000067, r0, r2
	st.b r2, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 348
	st.b r22, 0x00000001[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 349
	shl 0x00000006, r21
	mov #_Dcm_MsgCtrl, r2
	add r21, r2
	add 0x00000002, r20
	st.w r20, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 350
	st.w r20, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 351
	st.w r25, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 352
	mov r28, r6
	jarl _DsdInternal_ProcessingDone, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 354
	mov #_Dcm_SecCtrl, r2
	mov 0x00000001, r5
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 355
	st.b r22, 0x00000000[r2]
.BB.LABEL.4_18:	; if_break_bb204
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 358
	dispose 0x00000000, 0x000007FF, [r31]
_Dcm_UDS0x27_SubCompareKey.1:
	.stack _Dcm_UDS0x27_SubCompareKey.1 = 60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 375
	prepare 0x00000FFF, 0x0000000C
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 392
	ld.bu 0x00000000[r8], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 393
	mov #_Dcm_SecCtrl, r2
	mov r20, r21
	add r2, r21
	add 0x00000001, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 382
	mulhi 0x0000001C, r7, r5
	mov #_Dcm_ProtocolCtrl, r10
	add r5, r10
	ld.bu 0x00000002[r10], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 383
	mov r22, r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r10
	add r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 387
	ld.bu 0x00000001[r10], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 388
	addi 0x00000001, r23, r5
	shr 0x00000001, r5
	st.w r5, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 384
	ld.bu 0x00000007[r10], r5
	mulhi 0x00000014, r5, r5
	mov #_Dcm_ChannelCtrl, r10
	add r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 385
	ld.bu 0x00000000[r10], r5
	st.w r5, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 386
	mulhi 0x0000000C, r5, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 385
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r10
	ld.w LOWW(#_DcmPbCfgPtr)[r10], r10
	ld.w 0x00000000[r10], r11
	ld.w 0x00000004[r11], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 386
	add r24, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 397
	ld.bu 0x00000000[r2], r2
	cmp r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 386
	ld.w 0x00000008[r5], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 390
	ld.w 0x00000008[r10], r5
	ld.w 0x00000054[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 395
	ld.w 0x00000000[r5], r26
	mov r9, r27
	mov r8, r28
	mov r7, r5
	st.w r5, 0x00000008[r3]
	mov r6, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 397
	bnh9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	subr r23, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; bb.if_break_bb188_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.5_10
.BB.LABEL.5_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 401
	ld.b 0x00000000[r21], r2
	add 0x00000001, r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 402
	mov r20, r5
	shl 0x00000005, r5
	add r26, r5
	ld.bu 0x00000005[r5], r5
	zxb r2
	cmp r5, r2
	bl9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 404
	mov r20, r2
	shl 0x00000002, r2
	mov #_Dcm_SecCtrl, r30
	add r2, r30
	addi 0x00000008, r30, r6
	jarl _Dcm_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 405
	mov r20, r2
	shl 0x00000005, r2
	add r26, r2
	ld.hu 0x00000006[r2], r2
	st.w r2, 0x0000000C[r30]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 406
	st.w r2, 0x00000010[r30]
.BB.LABEL.5_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 408
	mov r20, r2
	shl 0x00000005, r2
	add r26, r2
	ld.bu 0x00000004[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_9
.BB.LABEL.5_6:	; bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov r20, r2
	shl 0x00000005, r2
	add r26, r2
	ld.w 0x0000001C[r2], r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.5_9
.BB.LABEL.5_7:	; bb164
	mov r20, r2
	shl 0x00000005, r2
	add r26, r2
	ld.w 0x00000018[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_9
.BB.LABEL.5_8:	; if_then_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 413
	mov r20, r2
	shl 0x00000005, r2
	add r26, r2
	ld.w 0x00000018[r2], r2
	ld.bu 0x00000000[r21], r7
	mov r29, r6
	jarl [r2], r31
.BB.LABEL.5_9:	; if_break_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 415
	jarl _DslInternal_SetSecurityAccessStatus, r31
	movea 0x00000024, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 416
	st.b r2, 0x00000000[r27]
	mov 0x00000001, r10
.BB.LABEL.5_10:	; if_break_bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 419
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_21
.BB.LABEL.5_11:	; if_then_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 422
	mov r22, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x0000000C[r5], r6
	ld.w 0x00000004[r28], r2
	add 0x00000002, r6
	mov r29, r7
	mov r27, r8
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 423
	cmp 0x0000000A, r10
	bnz9 .BB.LABEL.5_13
.BB.LABEL.5_12:	; if_then_bb210
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 425
	mov r22, r20
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r21
	add r20, r21
	mov 0x00000001, r20
	st.b r20, 0x0000003D[r21]
	br9 .BB.LABEL.5_21
.BB.LABEL.5_13:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 427
	cmp 0x0000000B, r10
	bnz9 .BB.LABEL.5_21
.BB.LABEL.5_14:	; if_then_bb220
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 429
	movhi HIGHW1(#_Dcm_SecCtrl), r0, r2
	st.b r0, LOWW(#_Dcm_SecCtrl)[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 430
	ld.b 0x00000000[r21], r2
	add 0x00000001, r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 431
	mov r20, r2
	shl 0x00000005, r2
	add r26, r2
	ld.bu 0x00000004[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_18
.BB.LABEL.5_15:	; bb232
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov r20, r2
	shl 0x00000005, r2
	add r26, r2
	ld.w 0x0000001C[r2], r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.5_18
.BB.LABEL.5_16:	; bb258
	mov r20, r2
	shl 0x00000005, r2
	add r26, r2
	ld.w 0x00000018[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_18
.BB.LABEL.5_17:	; if_then_bb272
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 436
	mov r20, r2
	shl 0x00000005, r2
	add r26, r2
	ld.w 0x00000018[r2], r2
	ld.bu 0x00000000[r21], r7
	mov r29, r6
	jarl [r2], r31
.BB.LABEL.5_18:	; if_break_bb280
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 438
	mov r20, r2
	shl 0x00000005, r2
	add r26, r2
	ld.bu 0x00000005[r2], r2
	ld.bu 0x00000000[r21], r5
	cmp r2, r5
	bl9 .BB.LABEL.5_20
.BB.LABEL.5_19:	; if_then_bb291
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 440
	mov r20, r2
	shl 0x00000002, r2
	mov #_Dcm_SecCtrl, r21
	add r2, r21
	addi 0x00000008, r21, r6
	jarl _Dcm_ResetTime, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 441
	shl 0x00000005, r20
	add r20, r26
	ld.hu 0x00000006[r26], r2
	st.w r2, 0x0000000C[r21]
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 442
	st.w r20, 0x00000010[r21]
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 443
	jarl _DslInternal_SetSecurityAccessStatus, r31
	movea 0x00000036, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 444
	st.b r2, 0x00000000[r27]
	mov r20, r10
	br9 .BB.LABEL.5_21
.BB.LABEL.5_20:	; if_else_bb315
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 449
	jarl _DslInternal_SetSecurityAccessStatus, r31
	movea 0x00000035, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 450
	st.b r2, 0x00000000[r27]
	mov 0x00000001, r10
.BB.LABEL.5_21:	; if_break_bb321
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 459
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_24
.BB.LABEL.5_22:	; bb326
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	ld.w 0x00000000[r3], r2
	mulh 0x0000000C, r2
	add r2, r24
	ld.w 0x00000004[r24], r2
	cmp 0x00000001, r2
	bh9 .BB.LABEL.5_24
.BB.LABEL.5_23:	; if_then_bb340
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 463
	st.b r2, 0x00000000[r27]
	mov 0x00000001, r10
.BB.LABEL.5_24:	; if_break_bb342
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 467
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.5_26
.BB.LABEL.5_25:	; if_then_bb348
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 469
	mov #_Dcm_Channel, r2
	add r2, r25
	movea 0x00000067, r0, r2
	st.b r2, 0x00000000[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 470
	st.b r23, 0x00000001[r25]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 471
	shl 0x00000006, r22
	mov #_Dcm_MsgCtrl, r2
	add r22, r2
	mov 0x00000002, r5
	st.w r5, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 472
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 473
	st.w r25, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 474
	mov #_Dcm_SecCtrl, r2
	ld.w 0x00000004[r3], r6
	st.b r6, 0x00000003[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 475
	st.w r5, 0x00000004[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 476
	ld.w 0x00000008[r3], r2
	mov r2, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.5_26:	; if_break_bb365
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 479
	dispose 0x0000000C, 0x00000FFF, [r31]
_Dcm_UDS0x27:
	.stack _Dcm_UDS0x27 = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 496
	prepare 0x00000479, 0x00000010
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 504
	st.b r0, 0x0000000F[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 513
	mulhi 0x0000001C, r21, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 514
	ld.bu 0x00000002[r5], r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000001[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 510
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000054[r2], r24
	movea 0x0000000F, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 515
	mov r21, r6
	jarl _Dcm_Uds0x27ServiceSubfunctionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 517
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	movea 0x00000027, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 520
	mov r21, r6
	mov r22, r8
	jarl _DsdInternal_SubSesCheck, r31
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 524
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	movea 0x00000027, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 527
	mov r21, r6
	mov r22, r8
	jarl _DsdInternal_SubSecurityCheck, r31
.BB.LABEL.6_4:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 532
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	movhi HIGHW1(#_Dcm_SecCtrl+0x00000004), r0, r2
	ld.w LOWW(#_Dcm_SecCtrl+0x00000004)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_6:	; bb60
	andi 0x00000001, r23, r0
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_then_bb74
	mov 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 536
	jarl _DslInternal_SetSecurityAccessStatus, r31
	movea 0x00000024, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 537
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.6_8:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 541
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 544
	ld.bu 0x0000000F[r3], r8
	mov r20, r6
	mov r21, r7
	mov r22, r9
	jarl _Dcm_Uds0x27ServiceMsgLenCheck.1, r31
.BB.LABEL.6_10:	; if_break_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 555
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_14
.BB.LABEL.6_11:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	ld.bu 0x0000000F[r3], r2
	mov r2, r5
	shl 0x00000002, r5
	mov #_Dcm_SecCtrl, r6
	add r5, r6
	ld.w 0x00000010[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.6_14
.BB.LABEL.6_12:	; bb107
	mov #_Dcm_SecCtrl, r5
	add r2, r5
	ld.bu 0x00000001[r5], r5
	ld.w 0x00000000[r24], r6
	shl 0x00000005, r2
	add r2, r6
	ld.bu 0x00000005[r6], r2
	cmp r2, r5
	bl9 .BB.LABEL.6_14
.BB.LABEL.6_13:	; if_then_bb132
	movea 0x00000037, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 559
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.6_14:	; if_break_bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 563
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_16
.BB.LABEL.6_15:	; if_break_bb134.if_break_bb192_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov 0x00000000, r24
	mov r24, r2
	br9 .BB.LABEL.6_22
.BB.LABEL.6_16:	; if_then_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 565
	ld.bu 0x0000000F[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 566
	mov r2, r5
	shl 0x00000005, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 565
	ld.w 0x00000000[r24], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 566
	add r6, r5
	ld.w 0x0000001C[r5], r24
	cmp 0x00000002, r24
	bl9 .BB.LABEL.6_18
.BB.LABEL.6_17:	; if_then_bb140.if_break_bb173_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov 0x00000000, r24
	mov r24, r2
	br9 .BB.LABEL.6_19
.BB.LABEL.6_18:	; if_then_bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 569
	shl 0x00000005, r2
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 570
	ld.w 0x0000000C[r6], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 569
	ld.w 0x00000010[r6], r2
.BB.LABEL.6_19:	; if_break_bb173
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 572
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_21
.BB.LABEL.6_20:	; if_break_bb173
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.6_22
.BB.LABEL.6_21:	; if_then_bb189
	movea 0x00000022, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 575
	st.b r5, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.6_22:	; if_break_bb192
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 579
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_26
.BB.LABEL.6_23:	; if_then_bb198
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 0
	mov r3, r8
	mov r20, r6
	mov r21, r7
	mov r22, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 582
	andi 0x00000001, r23, r0
	bz9 .BB.LABEL.6_25
.BB.LABEL.6_24:	; if_then_bb205
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 584
	st.w r24, 0x00000008[r3]
	movea 0x0000000F, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 585
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 586
	jarl _Dcm_UDS0x27_SubReqSeed.1, r31
	dispose 0x00000010, 0x00000479, [r31]
.BB.LABEL.6_25:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 591
	st.w r2, 0x00000004[r3]
	movea 0x0000000F, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 592
	ld.b 0x00000000[r2], r2
	st.b r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 593
	jarl _Dcm_UDS0x27_SubCompareKey.1, r31
.BB.LABEL.6_26:	; if_break_bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x27.c", 598
	dispose 0x00000010, 0x00000479, [r31]
	.section .data, data
_Last_Seed.1.Dcm_UDS0x27_SubReqSeed.1:
	.ds (4)
