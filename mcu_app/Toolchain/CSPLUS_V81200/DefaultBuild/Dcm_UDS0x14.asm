#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x14.c -oDefaultBuild\Dcm_UDS0x14.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_9b81c1e3707044679d273abfb1d781ddc3gu44ih.zll
#@	compiled at Fri Mar 27 09:50:55 2026

	.file "..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x14.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_Channel
	.extern _DcmPbCfgPtr
	.extern _Dem_DcmCheckClearParameter
	.public _Dcm_UDS0x14
	.extern _Dem_DcmClearDTC
	.extern _DsdInternal_ProcessingDone

	.section .text, text
_Dcm_UDS0x14_ConditionCheck.1:
	.stack _Dcm_UDS0x14_ConditionCheck.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 38
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 51
	mulhi 0x0000001C, r7, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 54
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	cmp 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 47
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000014[r2], r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 54
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	movea 0x00000013, r0, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 57
	st.b r23, 0x00000000[r22]
	mov 0x00000001, r23
.BB.LABEL.1_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 60
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_5:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 63
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	ld.bu 0x00000002[r2], r5
	ld.bu 0x00000001[r2], r24
	ld.bu 0x00000003[r2], r2
	shl 0x00000010, r24
	shl 0x00000008, r5
	or r5, r24
	or r2, r24
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 65
	mov r24, r6
	mov r7, r8
	jarl _Dem_DcmCheckClearParameter, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 66
	cmp 0x00000004, r10
	bh9 .BB.LABEL.1_14
.BB.LABEL.1_6:	; if_then_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	shl 0x00000001, r10
	jmp #.SWITCH.LABEL.1_15[r10]
.SWITCH.LABEL.1_15:
	br9 .BB.LABEL.1_11
	br9 .BB.LABEL.1_8
	br9 .BB.LABEL.1_14
	br9 .BB.LABEL.1_10
	br9 .BB.LABEL.1_7
.SWITCH.LABEL.1_15.END:
.BB.LABEL.1_7:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 70
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r21
	add r20, r21
	mov 0x00000001, r22
	st.b r22, 0x0000003D[r21]
	mov 0x0000000A, r10
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.1_8:	; switch_clause_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	movea 0x00000031, r0, r21
.BB.LABEL.1_9:	; switch_clause_bb75
	st.b r21, 0x00000000[r22]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 95
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.1_10:	; switch_clause_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	movea 0x00000022, r0, r21
	br9 .BB.LABEL.1_9
.BB.LABEL.1_11:	; switch_clause_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 84
	cmp 0x00000000, r21
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_12:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	ld.w 0x00000000[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 86
	ld.w 0x00000000[r21], r23
	mov r24, r6
	mov r22, r7
	jarl [r23], r31
	dispose 0x00000000, 0x00000479, [r31]
.BB.LABEL.1_14:	; if_break_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 95
	mov r23, r10
	dispose 0x00000000, 0x00000479, [r31]
_Dcm_UDS0x14:
	.stack _Dcm_UDS0x14 = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 99
	prepare 0x000007FF, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 115
	mulhi 0x0000001C, r20, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 118
	mov r22, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 126
	ld.bu 0x00000003[r2], r23
	ld.bu 0x00000002[r2], r24
	ld.bu 0x00000001[r2], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 122
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 123
	ld.bu 0x00000000[r5], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 124
	mulhi 0x0000000C, r26, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 123
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000004[r5], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 124
	add r27, r2
	ld.w 0x00000008[r2], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 125
	jarl _Dcm_UDS0x14_ConditionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 126
	addi 0x00000000, r10, r29
	bnz9 .BB.LABEL.2_12
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	shl 0x00000010, r25
	shl 0x00000008, r24
	or r24, r25
	mov r25, r6
	or r23, r6
	mov 0x00000001, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 129
	mov r7, r8
	jarl _Dem_DcmClearDTC, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 130
	cmp 0x00000006, r10
	bh9 .BB.LABEL.2_11
.BB.LABEL.2_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	shl 0x00000001, r10
	jmp #.SWITCH.LABEL.2_13[r10]
.SWITCH.LABEL.2_13:
	br9 .BB.LABEL.2_3
	br9 .BB.LABEL.2_7
	br9 .BB.LABEL.2_11
	br9 .BB.LABEL.2_11
	br9 .BB.LABEL.2_8
	br9 .BB.LABEL.2_11
	br9 .BB.LABEL.2_9
.SWITCH.LABEL.2_13.END:
.BB.LABEL.2_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 135
	mulh 0x0000000C, r26
	add r26, r27
	ld.w 0x00000004[r27], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	movea 0x00000014, r0, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 138
	st.b r29, 0x00000000[r21]
	mov 0x00000001, r29
.BB.LABEL.2_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 141
	cmp 0x00000000, r29
	bnz9 .BB.LABEL.2_12
.BB.LABEL.2_6:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 143
	mov #_Dcm_Channel, r21
	add r28, r21
	movea 0x00000054, r0, r2
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 144
	shl 0x00000006, r22
	mov #_Dcm_MsgCtrl, r2
	add r22, r2
	mov 0x00000001, r22
	st.w r22, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 145
	st.w r22, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 146
	st.w r21, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 147
	mov r20, r6
	jarl _DsdInternal_ProcessingDone, r31
	mov r29, r10
	dispose 0x00000000, 0x000007FF, [r31]
.BB.LABEL.2_7:	; switch_clause_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	movea 0x00000031, r0, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 152
	st.b r22, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 153
	dispose 0x00000000, 0x000007FF, [r31]
.BB.LABEL.2_8:	; switch_clause_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 157
	shl 0x00000006, r22
	mov #_Dcm_MsgCtrl, r21
	add r22, r21
	mov 0x00000001, r29
	st.b r29, 0x0000003D[r21]
	mov 0x0000000A, r10
	dispose 0x00000000, 0x000007FF, [r31]
.BB.LABEL.2_9:	; switch_clause_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	movea 0x00000072, r0, r29
.BB.LABEL.2_10:	; switch_clause_bb109
	st.b r29, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 175
	dispose 0x00000000, 0x000007FF, [r31]
.BB.LABEL.2_11:	; switch_clause_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 0
	movea 0x00000022, r0, r29
	br9 .BB.LABEL.2_10
.BB.LABEL.2_12:	; if_break_bb113
	mov r29, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x14.c", 175
	dispose 0x00000000, 0x000007FF, [r31]
