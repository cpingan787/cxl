#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x10.c -oDefaultBuild\Dcm_UDS0x10.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_d8d749e4bf07404886aee576b6d7d50ezpqmjmej.ukr
#@	compiled at Fri Mar 27 09:50:52 2026

	.file "..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x10.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_SesCtrl
	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_Channel
	.extern _DcmPbCfgPtr
	.extern _Dcm_ProgConditions
	.extern _Dcm_SetProgConditions
	.extern _SchM_Switch_DcmEcuReset
	.extern _DsdInternal_SubSesCheck
	.extern _DsdInternal_SubSecurityCheck
	.public _Dcm_UDS0x10
	.extern _RTE_PreConditonCheck
	.extern _SchM_Switch_DcmDiagnosticSessionControl
	.extern _DsdInternal_ProcessingDone

	.section .text, text
_DspInternalUDS0x10_SessionSubDeal.1:
	.stack _DspInternalUDS0x10_SessionSubDeal.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 36
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 49
	mulhi 0x0000001C, r7, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 45
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r10
	ld.w 0x00000014[r10], r10
	ld.w 0x00000000[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 52
	mulhi 0x00000024, r7, r7
	add r7, r10
	ld.bu 0x00000008[r10], r7
	cmp 0x00000000, r7
	ld.bu 0x00000002[r5], r20
	mov r9, r21
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.if_break_bb95_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.1_10
.BB.LABEL.1_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 44
	ld.w 0x00000008[r2], r22
	ld.w 0x00000058[r22], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 47
	ld.w 0x00000000[r22], r22
	mulh 0x0000000C, r8
	add r8, r22
	ld.w 0x00000000[r22], r22
	cmp 0x00000003, r22
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.1_1
.BB.LABEL.1_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 55
	mov #_Dcm_ProgConditions, r7
	jarl _Dcm_SetProgConditions, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 56
	addi 0x00000000, r10, r22
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 60
	jarl _SchM_Switch_DcmEcuReset, r31
	mov r22, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 62
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	movea 0x00000022, r0, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 64
	st.b r20, 0x00000000[r21]
	mov r22, r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_8:	; if_else_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 66
	cmp 0x0000000A, r22
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 68
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	mov 0x00000001, r5
	st.b r5, 0x0000003D[r2]
.BB.LABEL.1_10:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 76
	dispose 0x00000000, 0x00000071, [r31]
_DspInternalUDS0x10_SessionDeal.1:
	.stack _DspInternalUDS0x10_SessionDeal.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 78
	prepare 0x00000779, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 92
	mulhi 0x0000001C, r7, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 86
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r10
	ld.w 0x00000058[r10], r10
	ld.w 0x00000000[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 88
	mulhi 0x0000000C, r8, r11
	add r11, r10
	ld.w 0x00000000[r10], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 93
	addi 0xFFFFFFFF, r10, r11
	cmp 0x00000001, r11
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 89
	ld.w 0x00000000[r2], r2
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 93
	mov r7, r22
	mov r9, r23
	mov r8, r24
	mov r7, r25
	mov r6, r26
	bh9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov 0x00000004, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 98
	jarl _SchM_Switch_DcmEcuReset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 99
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	movea 0x00000022, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 105
	st.b r10, 0x00000000[r23]
	br9 .BB.LABEL.2_8
.BB.LABEL.2_3:	; if_else_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 109
	add 0xFFFFFFFD, r10
	cmp 0x00000002, r10
	bl9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_else_bb62.if_break_bb96_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.2_9
.BB.LABEL.2_5:	; if_then_bb78
	mov 0x00000005, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 114
	jarl _SchM_Switch_DcmEcuReset, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 115
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov r26, r6
	mov r25, r7
	mov r24, r8
	mov r23, r9
	jarl _DspInternalUDS0x10_SessionSubDeal.1, r31
	br9 .BB.LABEL.2_9
.BB.LABEL.2_7:	; if_else_bb91
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 121
	st.b r2, 0x00000000[r23]
.BB.LABEL.2_8:	; if_else_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov 0x00000001, r10
.BB.LABEL.2_9:	; if_break_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 129
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_13
.BB.LABEL.2_10:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 132
	mulhi 0x00000024, r22, r2
	add r2, r21
	ld.bu 0x00000008[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_13
.BB.LABEL.2_11:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 134
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	mov 0x00000001, r5
	st.b r5, 0x0000003D[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 135
	cmp 0x00000001, r26
	bnz9 .BB.LABEL.2_14
.BB.LABEL.2_12:	; if_then_bb110.if_break_bb143_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov 0x0000000A, r10
.BB.LABEL.2_13:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 159
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.2_14:	; if_else_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	movea 0x00000078, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 141
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 142
	dispose 0x00000000, 0x00000779, [r31]
_Dcm_UDS0x10_ConditionCheck.1:
	.stack _Dcm_UDS0x10_ConditionCheck.1 = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 161
	prepare 0x00000071, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 178
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 184
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 188
	ld.bu 0x00000001[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 175
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000008[r5], r5
	ld.w 0x00000058[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 186
	ld.w 0x00000000[r5], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 188
	ld.bu 0x00000004[r5], r5
	mov 0x00000000, r10
	mov r8, r21
	mov r6, r22
	mov r10, r6
	br9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 190
	andi 0x000000FF, r6, r8
	mul 0x0000000C, r8, r0
	add r9, r8
	ld.bu 0x00000004[r8], r8
	cmp r8, r2
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 193
	st.b r6, 0x00000000[r7]
	mov 0x00000001, r10
.BB.LABEL.3_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	add 0x00000001, r6
.BB.LABEL.3_4:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 188
	andi 0x000000FF, r6, r8
	cmp r5, r8
	bnc9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.3_1
.BB.LABEL.3_6:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 197
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; bb66.if_break_bb74_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; if_then_bb72
	movea 0x00000012, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 199
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
.BB.LABEL.3_9:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 210
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_10:	; if_then_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 212
	mov r22, r6
	mov r21, r8
	jarl _DsdInternal_SubSesCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 213
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_11:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	movea 0x0000007E, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 216
	st.b r2, 0x00000000[r21]
.BB.LABEL.3_12:	; if_break_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 221
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_15
.BB.LABEL.3_13:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 224
	mov r22, r6
	mov r21, r8
	jarl _DsdInternal_SubSecurityCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 225
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.3_15
.BB.LABEL.3_14:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	movea 0x00000033, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 228
	st.b r2, 0x00000000[r21]
.BB.LABEL.3_15:	; if_break_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 232
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_18
.BB.LABEL.3_16:	; bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	ld.w 0x00000010[r2], r2
	cmp 0x00000003, r2
	bl9 .BB.LABEL.3_18
.BB.LABEL.3_17:	; if_then_bb132
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 235
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
.BB.LABEL.3_18:	; if_break_bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 239
	dispose 0x00000000, 0x00000071, [r31]
_Dcm_UDS0x10:
	.stack _Dcm_UDS0x10 = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 243
	prepare 0x00000FFF, 0x00000008
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 256
	st.b r0, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 266
	mulhi 0x0000001C, r21, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 267
	mov r23, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 274
	ld.bu 0x00000001[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 269
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 270
	ld.bu 0x00000000[r5], r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 271
	mulhi 0x0000000C, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 259
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 262
	ld.w 0x00000000[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 270
	ld.w 0x00000004[r6], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 271
	add r25, r2
	ld.w 0x00000008[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 262
	ld.w 0x00000014[r6], r2
	ld.w 0x00000000[r2], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 259
	ld.w 0x00000008[r5], r2
	ld.w 0x00000058[r2], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 274
	ld.bu 0x00000004[r28], r29
	movea 0x00000007, r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 272
	mov r21, r6
	jarl _Dcm_UDS0x10_ConditionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 274
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 276
	jarl _RTE_PreConditonCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 277
	cmp 0x00000000, r10
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 279
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.4_3:	; if_break_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 284
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_11
.BB.LABEL.4_4:	; if_break_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.4_11
.BB.LABEL.4_5:	; if_then_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 286
	movhi HIGHW1(#_Dcm_SesCtrl+0x00000001), r0, r2
	st.b r24, LOWW(#_Dcm_SesCtrl+0x00000001)[r2]
	mov 0x00000000, r30
	br9 .BB.LABEL.4_10
.BB.LABEL.4_6:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 291
	andi 0x000000FF, r30, r2
	mul 0x0000000C, r2, r0
	ld.w 0x00000000[r28], r5
	add r5, r2
	ld.bu 0x00000004[r2], r2
	cmp r2, r24
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_7:	; bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	andi 0x000000FF, r30, r2
	mul 0x0000000C, r2, r0
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_then_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 294
	andi 0x000000FF, r30, r8
	mov r20, r6
	mov r21, r7
	mov r22, r9
	jarl _DspInternalUDS0x10_SessionDeal.1, r31
.BB.LABEL.4_9:	; if_break_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	add 0x00000001, r30
.BB.LABEL.4_10:	; bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 289
	andi 0x000000FF, r30, r2
	cmp r29, r2
	bl9 .BB.LABEL.4_6
.BB.LABEL.4_11:	; if_break_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 298
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.4_26
.BB.LABEL.4_12:	; if_break_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	cmp 0x00000001, r20
	bnz9 .BB.LABEL.4_26
.BB.LABEL.4_13:	; bb166
	mulhi 0x00000024, r21, r2
	add r2, r27
	ld.bu 0x00000008[r27], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_26
.BB.LABEL.4_14:	; bb166.bb260_crit_edge
	mov 0x00000000, r27
	mov r10, r30
	br9 .BB.LABEL.4_24
.BB.LABEL.4_15:	; bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 302
	andi 0x000000FF, r27, r2
	mul 0x0000000C, r2, r0
	ld.w 0x00000000[r28], r5
	add r5, r2
	ld.bu 0x00000004[r2], r2
	cmp r2, r24
	bnz9 .BB.LABEL.4_23
.BB.LABEL.4_16:	; bb196
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	andi 0x000000FF, r27, r2
	mul 0x0000000C, r2, r0
	add r5, r2
	ld.w 0x00000000[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.4_18
.BB.LABEL.4_17:	; bb207
	andi 0x000000FF, r27, r2
	mul 0x0000000C, r2, r0
	add r2, r5
	ld.w 0x00000000[r5], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.4_23
.BB.LABEL.4_18:	; if_then_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 306
	mov #_Dcm_ProgConditions, r7
	mov r20, r6
	jarl _Dcm_SetProgConditions, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 307
	addi 0x00000000, r10, r30
	bnz9 .BB.LABEL.4_20
.BB.LABEL.4_19:	; if_then_bb241
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov 0x00000006, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 310
	jarl _SchM_Switch_DcmEcuReset, r31
	br9 .BB.LABEL.4_23
.BB.LABEL.4_20:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 312
	cmp 0x0000000A, r30
	bnz9 .BB.LABEL.4_22
.BB.LABEL.4_21:	; if_then_bb248
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 314
	mov r23, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x0000003D[r5]
	br9 .BB.LABEL.4_23
.BB.LABEL.4_22:	; if_else_bb253
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	movea 0x00000022, r0, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 318
	st.b r30, 0x00000000[r22]
	mov 0x00000001, r30
.BB.LABEL.4_23:	; if_break_bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	add 0x00000001, r27
.BB.LABEL.4_24:	; bb260
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 300
	andi 0x000000FF, r27, r2
	cmp r29, r2
	bl9 .BB.LABEL.4_15
.BB.LABEL.4_25:	; bb260.if_break_bb269_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov r30, r10
.BB.LABEL.4_26:	; if_break_bb269
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 324
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.4_29
.BB.LABEL.4_27:	; if_then_bb275
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	ld.w 0x00000000[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 327
	mulh 0x0000000C, r2
	add r2, r25
	ld.w 0x00000004[r25], r2
	cmp 0x00000005, r2
	bh9 .BB.LABEL.4_29
.BB.LABEL.4_28:	; if_then_bb282
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 330
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.4_29:	; if_break_bb285
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 334
	andi 0x000000FF, r20, r0
	bnz9 .BB.LABEL.4_31
.BB.LABEL.4_30:	; if_then_bb291
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 337
	mov #_Dcm_Channel, r2
	add r2, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 336
	ld.w 0x00000000[r28], r2
	movea 0x00000050, r0, r5
	ld.bu 0x00000007[r3], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 337
	st.b r5, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 338
	st.b r24, 0x00000001[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 339
	mulh 0x0000000C, r6
	add r6, r2
	ld.hu 0x00000006[r2], r5
	shr 0x00000008, r5
	st.b r5, 0x00000002[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 340
	ld.b 0x00000006[r2], r5
	st.b r5, 0x00000003[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 341
	ld.hu 0x00000008[r2], r5
	mov 0x0000000A, r6
	divhu r6, r5, r0
	shr 0x00000008, r5
	st.b r5, 0x00000004[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 342
	ld.hu 0x00000008[r2], r2
	divhu r6, r2, r0
	st.b r2, 0x00000005[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 343
	shl 0x00000006, r23
	mov #_Dcm_MsgCtrl, r2
	add r23, r2
	mov 0x00000006, r5
	st.w r5, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 344
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 345
	st.w r26, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 346
	movhi HIGHW1(#_Dcm_SesCtrl+0x00000001), r0, r2
	ld.bu LOWW(#_Dcm_SesCtrl+0x00000001)[r2], r6
	jarl _SchM_Switch_DcmDiagnosticSessionControl, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 347
	mov r21, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.4_31:	; if_break_bb359
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 0
	andi 0x000000FF, r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x10.c", 350
	dispose 0x00000008, 0x00000FFF, [r31]
