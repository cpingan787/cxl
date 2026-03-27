#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x31.c -oDefaultBuild\Dcm_UDS0x31.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_3d63b41f1dd644739da054faf5f64e8aauwwyjwu.k1l
#@	compiled at Fri Mar 27 09:50:05 2026

	.file "..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x31.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_RoutineControlState
	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_Channel
	.extern _DcmPbCfgPtr
	.extern _Dcm_MkCtrl
	.public _Dcm_UDS0x31
	.extern _DsdInternal_ProcessingDone

	.section .text, text
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
_Dcm_UdsSesAndSecCheck.1:
	.stack _Dcm_UdsSesAndSecCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 59
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 81
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.if_break_bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.2_9
.BB.LABEL.2_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 84
	ld.bu 0x00000008[r6], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; if_then_bb.bb35_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r5
	mov r5, r8
	br9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 88
	ld.w 0x0000000C[r6], r9
	andi 0x000000FF, r8, r10
	add r10, r9
	ld.bu 0x00000000[r9], r9
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r10
	ld.bu LOWW(#_Dcm_MkCtrl)[r10], r10
	cmp r9, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 90
	cmov 0x00000002, 0x00000001, r5, r5
	add 0x00000001, r8
.BB.LABEL.2_5:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 86
	andi 0x000000FF, r8, r9
	cmp r2, r9
	bnc9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_7:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 93
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.2_1
.BB.LABEL.2_8:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 95
	st.b r2, 0x00000000[r7]
	mov 0x00000001, r10
.BB.LABEL.2_9:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 111
	cmp 0x00000000, r6
	bz9 .BB.LABEL.2_18
.BB.LABEL.2_10:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 115
	cmp 0x00000000, r10
	ld.bu 0x00000000[r6], r2
	bnz9 .BB.LABEL.2_18
.BB.LABEL.2_11:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_18
.BB.LABEL.2_12:	; if_then_bb69.bb109_crit_edge
	mov 0x00000000, r5
	mov r5, r8
	br9 .BB.LABEL.2_14
.BB.LABEL.2_13:	; bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 119
	ld.w 0x00000004[r6], r9
	andi 0x000000FF, r8, r11
	add r11, r9
	ld.bu 0x00000000[r9], r9
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000001), r0, r11
	ld.bu LOWW(#_Dcm_MkCtrl+0x00000001)[r11], r11
	cmp r9, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 122
	cmov 0x00000002, 0x00000001, r5, r5
	add 0x00000001, r8
.BB.LABEL.2_14:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 117
	andi 0x000000FF, r8, r9
	cmp r2, r9
	bnc9 .BB.LABEL.2_16
.BB.LABEL.2_15:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.2_13
.BB.LABEL.2_16:	; bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 125
	andi 0x000000FF, r5, r0
	bnz9 .BB.LABEL.2_18
.BB.LABEL.2_17:	; if_then_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000033, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 128
	st.b r2, 0x00000000[r7]
	mov 0x00000001, r10
.BB.LABEL.2_18:	; if_break_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 135
	jmp [r31]
_Dcm_UdsRCSesAndSecCheck.1:
	.stack _Dcm_UdsRCSesAndSecCheck.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 151
	prepare 0x00000479, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 157
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000050[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 166
	mulhi 0x00000018, r20, r2
	add r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 172
	ld.w 0x00000008[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 166
	ld.w 0x0000000C[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 169
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r6
	add r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 170
	ld.bu 0x00000002[r6], r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r6
	add r2, r6
	ld.bu 0x00000001[r6], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 173
	mov r5, r6
	mov r21, r7
	jarl _Dcm_UdsSesAndSecCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 182
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	cmp 0x00000001, r24
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; bb52
	mulhi 0x00000018, r20, r2
	add r22, r2
	ld.w 0x00000010[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 184
	mulhi 0x00000018, r20, r2
	add r22, r2
	ld.w 0x00000010[r2], r2
	ld.w 0x00000004[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 185
	mov r21, r7
	jarl _Dcm_UdsSesAndSecCheck.1, r31
.BB.LABEL.3_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 195
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	cmp 0x00000002, r24
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_6:	; bb90
	mulhi 0x00000018, r20, r2
	add r22, r2
	ld.w 0x00000014[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_then_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 197
	mulhi 0x00000018, r20, r2
	add r22, r2
	ld.w 0x00000014[r2], r2
	ld.w 0x00000004[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 198
	mov r21, r7
	jarl _Dcm_UdsSesAndSecCheck.1, r31
.BB.LABEL.3_8:	; if_break_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 208
	cmp 0x00000000, r23
	bz9 .BB.LABEL.3_12
.BB.LABEL.3_9:	; if_break_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_10:	; if_break_bb113
	cmp 0x00000003, r24
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_11:	; if_then_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 211
	ld.w 0x00000004[r23], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 213
	mov r21, r7
	jarl _Dcm_UdsSesAndSecCheck.1, r31
.BB.LABEL.3_12:	; if_break_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 222
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_17
.BB.LABEL.3_13:	; if_break_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.3_17
.BB.LABEL.3_14:	; bb165
	mulhi 0x00000018, r20, r2
	add r22, r2
	ld.w 0x00000014[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_17
.BB.LABEL.3_15:	; bb178
	mulhi 0x00000018, r20, r2
	add r2, r22
	ld.w 0x00000010[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_17
.BB.LABEL.3_16:	; if_then_bb192
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 234
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
.BB.LABEL.3_17:	; if_break_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 238
	dispose 0x00000000, 0x00000479, [r31]
_Dcm_UdsRCStartRoutine.1:
	.stack _Dcm_UdsRCStartRoutine.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 257
	prepare 0x00000479, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 271
	mov r6, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 272
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	mulh 0x0000000C, r2
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000000[r5], r10
	ld.w 0x00000004[r10], r10
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 274
	ld.w 0x00000008[r5], r2
	ld.w 0x00000050[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 277
	ld.w 0x00000004[r7], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 278
	ld.bu 0x00000000[r20], r5
	mulhi 0x00000018, r5, r5
	add r5, r2
	ld.w 0x00000010[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 279
	cmp 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 272
	ld.w 0x00000008[r10], r2
	mov r8, r22
	mov r7, r23
	mov r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 279
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000012, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 282
	st.b r6, 0x00000000[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 283
	st.b r6, 0x00000000[r22]
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 285
	ld.bu 0x00000000[r22], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_break_bb.if_break_bb207_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r24
	mov r24, r7
	br9 .BB.LABEL.4_23
.BB.LABEL.4_4:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 287
	ld.w 0x00000010[r21], r24
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb65.if_break_bb103_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.4_9
.BB.LABEL.4_6:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 290
	ld.bu 0x00000000[r24], r6
	mov 0x00000000, r8
	mov r8, r7
	br9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 292
	andi 0x000000FF, r8, r10
	shl 0x00000004, r10
	ld.w 0x00000004[r24], r11
	add r10, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 294
	ld.hu 0x00000004[r11], r10
	add r10, r7
	add 0x00000001, r8
.BB.LABEL.4_8:	; bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 290
	andi 0x000000FF, r8, r10
	cmp r6, r10
	bl9 .BB.LABEL.4_7
.BB.LABEL.4_9:	; if_break_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 301
	ld.w 0x00000014[r21], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_11
.BB.LABEL.4_10:	; if_break_bb103.if_break_bb143_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r24
	br9 .BB.LABEL.4_14
.BB.LABEL.4_11:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 304
	ld.bu 0x00000000[r6], r8
	mov 0x00000000, r10
	mov r10, r24
	br9 .BB.LABEL.4_13
.BB.LABEL.4_12:	; bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 306
	andi 0x000000FF, r10, r11
	shl 0x00000004, r11
	ld.w 0x00000004[r6], r12
	add r11, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 308
	ld.hu 0x00000004[r12], r11
	add r11, r24
	add 0x00000001, r10
.BB.LABEL.4_13:	; bb133
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 304
	andi 0x000000FF, r10, r11
	cmp r8, r11
	bl9 .BB.LABEL.4_12
.BB.LABEL.4_14:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 317
	ld.w 0x00000010[r21], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_15:	; bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	ld.bu 0x00000000[r6], r8
	shl 0x00000004, r8
	ld.w 0x00000004[r6], r6
	add r6, r8
	ld.w 0xFFFFFFF8[r8], r6
	cmp 0x0000000E, r6
	bnz9 .BB.LABEL.4_17
.BB.LABEL.4_16:	; bb149.bb169_crit_edge
	mov 0x00000000, r6
	br9 .BB.LABEL.4_18
.BB.LABEL.4_17:	; bb168
	mov 0x00000001, r6
.BB.LABEL.4_18:	; bb169
	mov r5, r8
	shl 0x00000006, r8
	mov #_Dcm_MsgCtrl, r10
	add r8, r10
	ld.w 0x00000010[r10], r8
	addi 0x00000004, r7, r10
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_21
.BB.LABEL.4_19:	; if_then_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 323
	cmp r8, r10
	bnh9 .BB.LABEL.4_23
.BB.LABEL.4_20:	; if_then_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000013, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 326
	st.b r8, 0x00000000[r9]
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 327
	st.b r8, 0x00000000[r22]
	br9 .BB.LABEL.4_23
.BB.LABEL.4_21:	; if_else_bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 332
	cmp r8, r10
	bz9 .BB.LABEL.4_23
.BB.LABEL.4_22:	; if_then_bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000013, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 335
	st.b r6, 0x00000000[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 336
	st.b r6, 0x00000000[r22]
.BB.LABEL.4_23:	; if_break_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 341
	ld.bu 0x00000000[r22], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_26
.BB.LABEL.4_24:	; if_then_bb214
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 343
	ld.w 0x00000000[r21], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 344
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_26
.BB.LABEL.4_25:	; if_then_bb222
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000031, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 347
	st.b r6, 0x00000000[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 348
	st.b r6, 0x00000000[r22]
.BB.LABEL.4_26:	; if_break_bb226
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 359
	ld.bu 0x00000000[r22], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.4_41
.BB.LABEL.4_27:	; if_then_bb233
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 362
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.4_29
.BB.LABEL.4_28:	; if_then_bb233.if_break_bb246_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.4_30
.BB.LABEL.4_29:	; if_then_bb238
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 364
	mov r5, r6
	shl 0x00000006, r6
	mov #_Dcm_MsgCtrl, r8
	add r6, r8
	ld.w 0x0000000C[r8], r6
	add 0x00000004, r6
.BB.LABEL.4_30:	; if_break_bb246
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 367
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.4_32
.BB.LABEL.4_31:	; if_break_bb246.if_break_bb255_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.4_33
.BB.LABEL.4_32:	; if_then_bb251
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 369
	mov #_Dcm_Channel, r8
	add r8, r2
	add 0x00000004, r2
.BB.LABEL.4_33:	; if_break_bb255
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 371
	ld.w 0x00000010[r21], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.4_36
.BB.LABEL.4_34:	; bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	ld.bu 0x00000000[r8], r11
	shl 0x00000004, r11
	ld.w 0x00000004[r8], r8
	add r8, r11
	ld.w 0xFFFFFFF8[r11], r8
	cmp 0x0000000E, r8
	bnz9 .BB.LABEL.4_36
.BB.LABEL.4_35:	; if_then_bb287
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 377
	add 0xFFFFFFFF, r7
.BB.LABEL.4_36:	; if_break_bb290
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 379
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r8
	add r5, r8
	ld.w 0x00000010[r8], r5
	sub r7, r5
	add 0xFFFFFFFC, r5
	st.h r5, 0x0000000C[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 381
	ld.bu 0x00000001[r23], r7
	st.w r9, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 379
	addi 0x0000000C, r23, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 381
	mov r2, r8
	jarl [r10], r31
	st.b r10, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 387
	ld.w 0x00000014[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.4_39
.BB.LABEL.4_37:	; bb319
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	ld.bu 0x00000000[r2], r5
	shl 0x00000004, r5
	ld.w 0x00000004[r2], r2
	add r2, r5
	ld.w 0xFFFFFFF8[r5], r2
	cmp 0x0000000E, r2
	bnz9 .BB.LABEL.4_39
.BB.LABEL.4_38:	; if_then_bb345
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 394
	ld.hu 0x0000000C[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 393
	add r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 394
	add 0xFFFFFFFF, r24
.BB.LABEL.4_39:	; if_break_bb354
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 396
	ld.bu 0x00000000[r22], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_41
.BB.LABEL.4_40:	; if_then_bb361
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 398
	ld.bu 0x00000000[r20], r2
	shl 0x00000002, r2
	mov #_Dcm_RoutineControlState, r5
	add r2, r5
	mov 0x00000001, r2
	st.w r2, 0x00000000[r5]
.BB.LABEL.4_41:	; if_break_bb367
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov r24, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 402
	dispose 0x00000004, 0x00000479, [r31]
_Dcm_UdsRCStopRoutine.1:
	.stack _Dcm_UdsRCStopRoutine.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 421
	prepare 0x00000079, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 435
	mov r6, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	mulh 0x0000000C, r2
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000000[r5], r10
	ld.w 0x00000004[r10], r10
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 439
	ld.w 0x00000008[r5], r2
	ld.w 0x00000050[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 443
	ld.w 0x00000004[r7], r5
	ld.bu 0x00000000[r5], r5
	mulhi 0x00000018, r5, r5
	add r2, r5
	ld.w 0x00000014[r5], r5
	cmp 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 435
	ld.w 0x00000008[r10], r5
	mov r8, r20
	mov r7, r21
	mov r6, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 443
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000012, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 446
	st.b r6, 0x00000000[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 447
	st.b r6, 0x00000000[r20]
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 450
	ld.bu 0x00000000[r20], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_break_bb.if_break_bb211_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r22
	mov r22, r2
	br9 .BB.LABEL.5_23
.BB.LABEL.5_4:	; if_then_bb60
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 452
	ld.w 0x00000004[r21], r22
	ld.bu 0x00000000[r22], r22
	mulhi 0x00000018, r22, r22
	add r22, r2
	ld.w 0x00000014[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 453
	ld.w 0x00000010[r23], r22
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; if_then_bb60.if_break_bb107_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.5_9
.BB.LABEL.5_6:	; if_then_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 456
	ld.bu 0x00000000[r22], r6
	mov 0x00000000, r8
	mov r8, r2
	br9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 458
	andi 0x000000FF, r8, r10
	shl 0x00000004, r10
	ld.w 0x00000004[r22], r11
	add r10, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 460
	ld.hu 0x00000004[r11], r10
	add r10, r2
	add 0x00000001, r8
.BB.LABEL.5_8:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 456
	andi 0x000000FF, r8, r10
	cmp r6, r10
	bl9 .BB.LABEL.5_7
.BB.LABEL.5_9:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 467
	ld.w 0x00000014[r23], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.5_11
.BB.LABEL.5_10:	; if_break_bb107.if_break_bb147_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.5_14
.BB.LABEL.5_11:	; if_then_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 470
	ld.bu 0x00000000[r6], r8
	mov 0x00000000, r10
	mov r10, r22
	br9 .BB.LABEL.5_13
.BB.LABEL.5_12:	; bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 472
	andi 0x000000FF, r10, r11
	shl 0x00000004, r11
	ld.w 0x00000004[r6], r12
	add r11, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 474
	ld.hu 0x00000004[r12], r11
	add r11, r22
	add 0x00000001, r10
.BB.LABEL.5_13:	; bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 470
	andi 0x000000FF, r10, r11
	cmp r8, r11
	bl9 .BB.LABEL.5_12
.BB.LABEL.5_14:	; if_break_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 482
	ld.w 0x00000010[r23], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.5_17
.BB.LABEL.5_15:	; bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	ld.bu 0x00000000[r6], r8
	shl 0x00000004, r8
	ld.w 0x00000004[r6], r6
	add r6, r8
	ld.w 0xFFFFFFF8[r8], r6
	cmp 0x0000000E, r6
	bnz9 .BB.LABEL.5_17
.BB.LABEL.5_16:	; bb153.bb173_crit_edge
	mov 0x00000000, r6
	br9 .BB.LABEL.5_18
.BB.LABEL.5_17:	; bb172
	mov 0x00000001, r6
.BB.LABEL.5_18:	; bb173
	mov r7, r8
	shl 0x00000006, r8
	mov #_Dcm_MsgCtrl, r10
	add r8, r10
	ld.w 0x00000010[r10], r8
	addi 0x00000004, r2, r10
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.5_21
.BB.LABEL.5_19:	; if_then_bb178
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 488
	cmp r8, r10
	bnh9 .BB.LABEL.5_23
.BB.LABEL.5_20:	; if_then_bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000013, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 491
	st.b r8, 0x00000000[r9]
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 492
	st.b r8, 0x00000000[r20]
	br9 .BB.LABEL.5_23
.BB.LABEL.5_21:	; if_else_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 497
	cmp r8, r10
	bz9 .BB.LABEL.5_23
.BB.LABEL.5_22:	; if_then_bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000013, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 500
	st.b r6, 0x00000000[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 501
	st.b r6, 0x00000000[r20]
.BB.LABEL.5_23:	; if_break_bb211
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 506
	ld.bu 0x00000000[r20], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.5_26
.BB.LABEL.5_24:	; if_then_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 508
	ld.w 0x00000000[r23], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 509
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_26
.BB.LABEL.5_25:	; if_then_bb226
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000031, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 512
	st.b r6, 0x00000000[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 513
	st.b r6, 0x00000000[r20]
.BB.LABEL.5_26:	; if_break_bb230
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 517
	ld.bu 0x00000000[r20], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.5_29
.BB.LABEL.5_27:	; bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	ld.w 0x00000004[r21], r6
	ld.bu 0x00000000[r6], r6
	shl 0x00000002, r6
	mov #_Dcm_RoutineControlState, r8
	add r6, r8
	ld.w 0x00000000[r8], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.5_29
.BB.LABEL.5_28:	; if_then_bb254
	movea 0x00000024, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 520
	st.b r6, 0x00000000[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 521
	st.b r6, 0x00000000[r20]
.BB.LABEL.5_29:	; if_break_bb257
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 523
	ld.bu 0x00000000[r20], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.5_44
.BB.LABEL.5_30:	; if_then_bb264
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 526
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_32
.BB.LABEL.5_31:	; if_then_bb264.if_break_bb277_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.5_33
.BB.LABEL.5_32:	; if_then_bb269
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 528
	mov r7, r6
	shl 0x00000006, r6
	mov #_Dcm_MsgCtrl, r8
	add r6, r8
	ld.w 0x0000000C[r8], r6
	add 0x00000004, r6
.BB.LABEL.5_33:	; if_break_bb277
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 531
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.5_35
.BB.LABEL.5_34:	; if_break_bb277.if_break_bb286_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.5_36
.BB.LABEL.5_35:	; if_then_bb282
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 533
	mov #_Dcm_Channel, r8
	add r8, r5
	add 0x00000004, r5
.BB.LABEL.5_36:	; if_break_bb286
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 535
	ld.w 0x00000010[r23], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.5_39
.BB.LABEL.5_37:	; bb292
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	ld.bu 0x00000000[r8], r11
	shl 0x00000004, r11
	ld.w 0x00000004[r8], r8
	add r8, r11
	ld.w 0xFFFFFFF8[r11], r8
	cmp 0x0000000E, r8
	bnz9 .BB.LABEL.5_39
.BB.LABEL.5_38:	; if_then_bb318
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 541
	add 0xFFFFFFFF, r2
.BB.LABEL.5_39:	; if_break_bb321
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 543
	shl 0x00000006, r7
	mov #_Dcm_MsgCtrl, r8
	add r7, r8
	ld.w 0x00000010[r8], r7
	sub r2, r7
	add 0xFFFFFFFC, r7
	st.h r7, 0x0000000C[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 545
	ld.bu 0x00000001[r21], r7
	st.w r9, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 543
	addi 0x0000000C, r21, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 545
	mov r5, r8
	jarl [r10], r31
	st.b r10, 0x00000000[r20]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 551
	ld.w 0x00000014[r23], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_42
.BB.LABEL.5_40:	; bb350
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	ld.bu 0x00000000[r2], r5
	shl 0x00000004, r5
	ld.w 0x00000004[r2], r2
	add r2, r5
	ld.w 0xFFFFFFF8[r5], r2
	cmp 0x0000000E, r2
	bnz9 .BB.LABEL.5_42
.BB.LABEL.5_41:	; if_then_bb376
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 558
	ld.hu 0x0000000C[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 557
	add r2, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 558
	add 0xFFFFFFFF, r22
.BB.LABEL.5_42:	; if_break_bb385
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 560
	ld.bu 0x00000000[r20], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_44
.BB.LABEL.5_43:	; if_then_bb392
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 562
	ld.w 0x00000004[r21], r2
	ld.bu 0x00000000[r2], r2
	shl 0x00000002, r2
	mov #_Dcm_RoutineControlState, r5
	add r2, r5
	mov 0x00000002, r2
	st.w r2, 0x00000000[r5]
.BB.LABEL.5_44:	; if_break_bb400
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 566
	dispose 0x00000004, 0x00000079, [r31]
_Dcm_UdsRCReqRoutineResult.1:
	.stack _Dcm_UdsRCReqRoutineResult.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 585
	prepare 0x00000079, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 599
	mov r6, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	ld.bu 0x00000000[r5], r2
	mulh 0x0000000C, r2
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000000[r5], r10
	ld.w 0x00000004[r10], r10
	add r2, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 603
	ld.w 0x00000008[r5], r2
	ld.w 0x00000050[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 607
	ld.w 0x00000004[r7], r5
	ld.bu 0x00000000[r5], r5
	mulhi 0x00000018, r5, r5
	add r5, r2
	ld.w 0x0000000C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 608
	cmp 0x00000000, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 599
	ld.w 0x00000008[r10], r2
	mov r8, r21
	mov r7, r22
	mov r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 608
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000012, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 610
	st.b r6, 0x00000000[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 611
	st.b r6, 0x00000000[r21]
.BB.LABEL.6_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 614
	ld.bu 0x00000000[r21], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_break_bb.if_break_bb203_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r23
	mov r23, r7
	br9 .BB.LABEL.6_23
.BB.LABEL.6_4:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 616
	ld.w 0x00000010[r20], r23
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb61.if_break_bb99_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r7
	br9 .BB.LABEL.6_9
.BB.LABEL.6_6:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 619
	ld.bu 0x00000000[r23], r6
	mov 0x00000000, r8
	mov r8, r7
	br9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 621
	andi 0x000000FF, r8, r10
	shl 0x00000004, r10
	ld.w 0x00000004[r23], r11
	add r10, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 623
	ld.hu 0x00000004[r11], r10
	add r10, r7
	add 0x00000001, r8
.BB.LABEL.6_8:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 619
	andi 0x000000FF, r8, r10
	cmp r6, r10
	bl9 .BB.LABEL.6_7
.BB.LABEL.6_9:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 630
	ld.w 0x00000014[r20], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; if_break_bb99.if_break_bb139_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.6_14
.BB.LABEL.6_11:	; if_then_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 633
	ld.bu 0x00000000[r6], r8
	mov 0x00000000, r10
	mov r10, r23
	br9 .BB.LABEL.6_13
.BB.LABEL.6_12:	; bb112
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 635
	andi 0x000000FF, r10, r11
	shl 0x00000004, r11
	ld.w 0x00000004[r6], r12
	add r11, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 637
	ld.hu 0x00000004[r12], r11
	add r11, r23
	add 0x00000001, r10
.BB.LABEL.6_13:	; bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 633
	andi 0x000000FF, r10, r11
	cmp r8, r11
	bl9 .BB.LABEL.6_12
.BB.LABEL.6_14:	; if_break_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 644
	ld.w 0x00000010[r20], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.6_17
.BB.LABEL.6_15:	; bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	ld.bu 0x00000000[r6], r8
	shl 0x00000004, r8
	ld.w 0x00000004[r6], r6
	add r6, r8
	ld.w 0xFFFFFFF8[r8], r6
	cmp 0x0000000E, r6
	bnz9 .BB.LABEL.6_17
.BB.LABEL.6_16:	; bb145.bb165_crit_edge
	mov 0x00000000, r6
	br9 .BB.LABEL.6_18
.BB.LABEL.6_17:	; bb164
	mov 0x00000001, r6
.BB.LABEL.6_18:	; bb165
	mov r5, r8
	shl 0x00000006, r8
	mov #_Dcm_MsgCtrl, r10
	add r8, r10
	ld.w 0x00000010[r10], r8
	addi 0x00000004, r7, r10
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.6_21
.BB.LABEL.6_19:	; if_then_bb170
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 651
	cmp r8, r10
	bnh9 .BB.LABEL.6_23
.BB.LABEL.6_20:	; if_then_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000013, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 654
	st.b r8, 0x00000000[r9]
	mov 0x00000001, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 655
	st.b r8, 0x00000000[r21]
	br9 .BB.LABEL.6_23
.BB.LABEL.6_21:	; if_else_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 660
	cmp r8, r10
	bz9 .BB.LABEL.6_23
.BB.LABEL.6_22:	; if_then_bb198
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000013, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 663
	st.b r6, 0x00000000[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 664
	st.b r6, 0x00000000[r21]
.BB.LABEL.6_23:	; if_break_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 669
	ld.bu 0x00000000[r21], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.6_26
.BB.LABEL.6_24:	; if_then_bb210
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 671
	ld.w 0x00000000[r20], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 672
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_26
.BB.LABEL.6_25:	; if_then_bb218
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000031, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 674
	st.b r6, 0x00000000[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 675
	st.b r6, 0x00000000[r21]
.BB.LABEL.6_26:	; if_break_bb222
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 678
	ld.bu 0x00000000[r21], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.6_29
.BB.LABEL.6_27:	; bb228
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	ld.w 0x00000004[r22], r6
	ld.bu 0x00000000[r6], r6
	shl 0x00000002, r6
	mov #_Dcm_RoutineControlState, r8
	add r6, r8
	ld.w 0x00000000[r8], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.6_29
.BB.LABEL.6_28:	; if_then_bb246
	movea 0x00000024, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 681
	st.b r6, 0x00000000[r9]
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 682
	st.b r6, 0x00000000[r21]
.BB.LABEL.6_29:	; if_break_bb249
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 684
	ld.bu 0x00000000[r21], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.6_42
.BB.LABEL.6_30:	; if_then_bb256
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 687
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.6_32
.BB.LABEL.6_31:	; if_then_bb256.if_break_bb269_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r6
	br9 .BB.LABEL.6_33
.BB.LABEL.6_32:	; if_then_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 689
	mov r5, r6
	shl 0x00000006, r6
	mov #_Dcm_MsgCtrl, r8
	add r6, r8
	ld.w 0x0000000C[r8], r6
	add 0x00000004, r6
.BB.LABEL.6_33:	; if_break_bb269
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 692
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.6_35
.BB.LABEL.6_34:	; if_break_bb269.if_break_bb278_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.6_36
.BB.LABEL.6_35:	; if_then_bb274
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 694
	mov #_Dcm_Channel, r8
	add r8, r2
	add 0x00000004, r2
.BB.LABEL.6_36:	; if_break_bb278
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 696
	ld.w 0x00000010[r20], r8
	cmp 0x00000000, r8
	bz9 .BB.LABEL.6_39
.BB.LABEL.6_37:	; bb284
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	ld.bu 0x00000000[r8], r11
	shl 0x00000004, r11
	ld.w 0x00000004[r8], r8
	add r8, r11
	ld.w 0xFFFFFFF8[r11], r8
	cmp 0x0000000E, r8
	bnz9 .BB.LABEL.6_39
.BB.LABEL.6_38:	; if_then_bb310
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 703
	add 0xFFFFFFFF, r7
.BB.LABEL.6_39:	; if_break_bb313
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 706
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r8
	add r5, r8
	ld.w 0x00000010[r8], r5
	sub r7, r5
	add 0xFFFFFFFC, r5
	st.h r5, 0x0000000C[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 708
	ld.bu 0x00000001[r22], r7
	st.w r9, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 706
	addi 0x0000000C, r22, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 708
	mov r2, r8
	jarl [r10], r31
	st.b r10, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 714
	ld.w 0x00000014[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_42
.BB.LABEL.6_40:	; bb342
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	ld.bu 0x00000000[r2], r5
	shl 0x00000004, r5
	ld.w 0x00000004[r2], r2
	add r2, r5
	ld.w 0xFFFFFFF8[r5], r2
	cmp 0x0000000E, r2
	bnz9 .BB.LABEL.6_42
.BB.LABEL.6_41:	; if_then_bb368
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 722
	ld.hu 0x0000000C[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 721
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 722
	addi 0xFFFFFFFF, r23, r10
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.6_42:	; if_break_bb378
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 726
	mov r23, r10
	dispose 0x00000004, 0x00000079, [r31]
_Dcm_RCConditonCheck.1:
	.stack _Dcm_RCConditonCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1121
	mulhi 0x0000001C, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1131
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1139
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1142
	cmp 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1140
	ld.w 0x0000000C[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1137
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1138
	ld.w 0x00000050[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1142
	bl9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_then_bb
	movea 0x00000013, r0, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1145
	st.b r9, 0x00000000[r8]
	mov 0x00000001, r10
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1157
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_13
.BB.LABEL.7_4:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1160
	ld.b 0x00000002[r2], r9
	shl 0x00000008, r9
	ld.bu 0x00000003[r2], r2
	or r2, r9
	mov 0x00000000, r2
	mov r2, r11
	br9 .BB.LABEL.7_9
.BB.LABEL.7_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1163
	andi 0x000000FF, r11, r12
	mul 0x00000018, r12, r0
	add r6, r12
	ld.hu 0x00000000[r12], r12
	andi 0x0000FFFF, r9, r13
	cmp r12, r13
	bnz9 .BB.LABEL.7_8
.BB.LABEL.7_6:	; bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	andi 0x000000FF, r11, r12
	mul 0x00000018, r12, r0
	add r6, r12
	ld.bu 0x00000004[r12], r12
	cmp 0x00000001, r12
	bnz9 .BB.LABEL.7_8
.BB.LABEL.7_7:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1166
	ld.w 0x00000004[r7], r2
	st.b r11, 0x00000000[r2]
	mov 0x00000001, r2
.BB.LABEL.7_8:	; if_break_bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	add 0x00000001, r11
.BB.LABEL.7_9:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1161
	andi 0x000000FF, r11, r12
	ld.bu 0x0000004C[r5], r13
	cmp r13, r12
	bnc9 .BB.LABEL.7_11
.BB.LABEL.7_10:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_11:	; bb120
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1180
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.7_13
.BB.LABEL.7_12:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1183
	st.b r2, 0x00000000[r8]
	mov 0x00000001, r10
.BB.LABEL.7_13:	; if_break_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1190
	jmp [r31]
_Dcm_UDS0x31:
	.stack _Dcm_UDS0x31 = 64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1206
	prepare 0x000007FD, 0x00000018
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1216
	st.w r0, 0x00000014[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1226
	mulhi 0x0000001C, r20, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1227
	ld.bu 0x00000002[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1229
	mov r22, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1249
	ld.bu 0x00000001[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1230
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1231
	ld.bu 0x00000000[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1232
	mulhi 0x0000000C, r24, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1231
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000000[r5], r5
	ld.w 0x00000004[r5], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1232
	add r25, r2
	ld.w 0x00000008[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1235
	st.b r6, 0x00000001[r3]
	movea 0x00000013, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1236
	st.w r2, 0x00000004[r3]
	movea 0x00000014, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1237
	st.w r2, 0x00000008[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1239
	mov r20, r6
	jarl _Dcm_RCConditonCheck.1, r31
	st.b r10, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1249
	cmp 0x00000000, r10
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry.if_break_bb142_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mov 0x00000000, r27
	br9 .BB.LABEL.8_15
.BB.LABEL.8_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1252
	mov r22, r27
	shl 0x00000006, r27
	mov #_Dcm_MsgCtrl, r2
	add r27, r2
	ld.w 0x0000000C[r2], r27
	ld.bu 0x00000003[r27], r28
	ld.b 0x00000002[r27], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1258
	ld.bu 0x00000013[r3], r7
	mov r20, r6
	mov r21, r8
	jarl _Dcm_UdsRCSesAndSecCheck.1, r31
	st.b r10, 0x00000012[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1252
	shl 0x00000008, r27
	or r28, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1259
	cmp 0x00000001, r23
	bz9 .BB.LABEL.8_7
.BB.LABEL.8_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_7
.BB.LABEL.8_4:	; if_then_bb
	cmp 0x00000002, r23
	bz9 .BB.LABEL.8_7
.BB.LABEL.8_5:	; if_then_bb
	cmp 0x00000003, r23
	bz9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; if_then_bb117
	movea 0x00000012, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1266
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1267
	st.b r2, 0x00000012[r3]
.BB.LABEL.8_7:	; if_break_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1271
	ld.bu 0x00000012[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_15
.BB.LABEL.8_8:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1273
	cmp 0x00000003, r23
	bz9 .BB.LABEL.8_13
.BB.LABEL.8_9:	; if_then_bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	cmp 0x00000002, r23
	bz9 .BB.LABEL.8_12
.BB.LABEL.8_10:	; if_then_bb125
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.8_14
.BB.LABEL.8_11:	; switch_clause_bb
	movea 0x00000012, r3, r8
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1278
	mov r22, r6
	mov r21, r9
	jarl _Dcm_UdsRCStartRoutine.1, r31
	st.w r10, 0x00000014[r3]
	br9 .BB.LABEL.8_15
.BB.LABEL.8_12:	; switch_clause_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000012, r3, r8
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1284
	mov r22, r6
	mov r21, r9
	jarl _Dcm_UdsRCStopRoutine.1, r31
	st.w r10, 0x00000014[r3]
	br9 .BB.LABEL.8_15
.BB.LABEL.8_13:	; switch_clause_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000012, r3, r8
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1290
	mov r22, r6
	mov r21, r9
	jarl _Dcm_UdsRCReqRoutineResult.1, r31
	st.w r10, 0x00000014[r3]
	br9 .BB.LABEL.8_15
.BB.LABEL.8_14:	; switch_clause_bb139
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000012, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1295
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1296
	st.b r2, 0x00000012[r3]
.BB.LABEL.8_15:	; if_break_bb142
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1305
	ld.bu 0x00000012[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_18
.BB.LABEL.8_16:	; bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	mulh 0x0000000C, r24
	add r24, r25
	ld.w 0x00000004[r25], r2
	ld.w 0x00000014[r3], r5
	add 0x00000004, r5
	cmp r2, r5
	bnh9 .BB.LABEL.8_18
.BB.LABEL.8_17:	; if_then_bb163
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1308
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1309
	st.b r2, 0x00000012[r3]
.BB.LABEL.8_18:	; if_break_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1312
	ld.bu 0x00000012[r3], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_22
.BB.LABEL.8_19:	; if_break_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	add 0xFFFFFFFF, r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_24
.BB.LABEL.8_20:	; if_break_bb165
	cmp 0x00000009, r2
	bnz9 .BB.LABEL.8_23
.BB.LABEL.8_21:	; switch_clause_bb201
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1327
	shl 0x00000006, r22
	mov #_Dcm_MsgCtrl, r20
	add r22, r20
	mov 0x00000001, r2
	st.b r2, 0x0000003D[r20]
	br9 .BB.LABEL.8_24
.BB.LABEL.8_22:	; switch_clause_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1315
	mov #_Dcm_Channel, r2
	add r2, r26
	movea 0x00000071, r0, r2
	st.b r2, 0x00000000[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1316
	st.b r23, 0x00000001[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1317
	mov r27, r2
	shr 0x00000008, r2
	st.b r2, 0x00000002[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1318
	st.b r27, 0x00000003[r26]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1319
	shl 0x00000006, r22
	mov #_Dcm_MsgCtrl, r2
	add r22, r2
	ld.w 0x00000014[r3], r22
	add 0x00000004, r22
	st.w r22, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1320
	ld.w 0x00000014[r3], r22
	add 0x00000004, r22
	st.w r22, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1321
	st.w r26, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1322
	mov r20, r6
	jarl _DsdInternal_ProcessingDone, r31
	br9 .BB.LABEL.8_24
.BB.LABEL.8_23:	; switch_clause_bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 0
	movea 0x00000022, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1338
	mov r20, r6
	jarl _DsdInternal_SetNrc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1339
	mov r20, r6
	jarl _DsdInternal_ProcessingDone, r31
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1340
	st.b r2, 0x00000012[r3]
.BB.LABEL.8_24:	; switch_break_bb209
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x31.c", 1345
	ld.bu 0x00000012[r3], r10
	dispose 0x00000018, 0x000007FD, [r31]
