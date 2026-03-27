#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\DcmDsd.c -oDefaultBuild\DcmDsd.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_1f6723653d614ea2a6680f93bea50c98ax3cytlb.ibe
#@	compiled at Fri Mar 27 09:50:31 2026

	.file "..\..\Bsw\Communication\Common\Dcm\DcmDsd.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_Channel
	.extern _DcmPbCfgPtr
	.public _DsdInternal_SearchSidTabServiceIndex
	.public _DsdInternal_SearchSidTabSubServiceIndex
	.extern _SchM_Enter_Dcm_ExclusiveArea
	.extern _SchM_Exit_Dcm_ExclusiveArea
	.extern _DsdInternal_SesCheck
	.extern _DsdInternal_SecurityCheck
	.public _DsdInternal_RxIndication
	.public _DsdInternal_ProcessingDone
	.extern _DslInternal_ProcessingDone
	.extern _DslInternal_ResetResource
	.extern _Dcm_GetSpecificCauseCode
	.extern _DsdInternal_ManufacturerConfirmation
	.extern _DsdInternal_SupplierConfirmation
	.extern _DspInternal_DcmConfirmation
	.public _DsdInternal_TxConfirmation
	.public _DsdInternal_ServiceAddressAndLengthFormatIdentifierCheck

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
_DsdInternal_SearchSidTabServiceIndex:
	.stack _DsdInternal_SearchSidTabServiceIndex = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 54
	cmp 0x00000000, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 68
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 70
	ld.w 0x00000000[r5], r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 72
	ld.hu 0x00000004[r5], r5
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	cmp 0x00000000, r9
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; entry.if_break_bb188_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.2_20
.BB.LABEL.2_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 67
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 75
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r2
	mulhi 0x00000024, r7, r7
	add r7, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 77
	ld.bu 0x00000018[r2], r2
	mov 0x00000000, r7
	mov r7, r10
	br9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 79
	andi 0x0000FFFF, r7, r12
	mul 0x0000000C, r12, r0
	add r11, r12
	ld.bu 0x00000000[r12], r12
	cmp r12, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 81
	cmov 0x00000002, 0x00000001, r10, r10
	add 0x00000001, r7
.BB.LABEL.2_5:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 77
	andi 0x0000FFFF, r7, r12
	cmp r5, r12
	bnc9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_7:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 84
	andi 0x000000FF, r10, r0
	bnz9 .BB.LABEL.2_9
.BB.LABEL.2_8:	; bb85.if_break_bb97_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 91
	addi 0xFFFFFFFF, r7, r2
	st.h r2, 0x00000000[r8]
	mov 0x00000000, r10
.BB.LABEL.2_10:	; if_break_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 93
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_20
.BB.LABEL.2_11:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 96
	zxh r7
	mul 0x0000000C, r7, r0
	add r11, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 100
	ld.bu 0xFFFFFFFC[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 96
	ld.w 0xFFFFFFF8[r7], r5
	mov 0x00000000, r7
	mov r7, r8
	br9 .BB.LABEL.2_16
.BB.LABEL.2_12:	; bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 102
	andi 0x0000FFFF, r7, r11
	mul 0x00000034, r11, r0
	add r5, r11
	ld.bu 0x00000008[r11], r11
	cmp r11, r6
	bnz9 .BB.LABEL.2_15
.BB.LABEL.2_13:	; bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	andi 0x0000FFFF, r7, r11
	mul 0x00000034, r11, r0
	add r5, r11
	ld.bu 0x00000000[r11], r11
	cmp 0x00000001, r11
	bnz9 .BB.LABEL.2_15
.BB.LABEL.2_14:	; if_then_bb148
	mov 0x00000001, r8
.BB.LABEL.2_15:	; if_break_bb149
	add 0x00000001, r7
.BB.LABEL.2_16:	; bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 100
	andi 0x0000FFFF, r7, r11
	cmp r2, r11
	bge9 .BB.LABEL.2_18
.BB.LABEL.2_17:	; bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	andi 0x000000FF, r8, r0
	bz9 .BB.LABEL.2_12
.BB.LABEL.2_18:	; bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 108
	andi 0x000000FF, r8, r0
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_19:	; if_else_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 115
	add 0xFFFFFFFF, r7
	st.h r7, 0x00000000[r9]
.BB.LABEL.2_20:	; if_break_bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 124
	jmp [r31]
_DsdInternal_SearchSidTabSubServiceIndex:
	.stack _DsdInternal_SearchSidTabSubServiceIndex = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 141
	mulhi 0x0000001C, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 156
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 157
	ld.bu 0x00000002[r5], r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 154
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 158
	mul 0x0000000C, r7, r0
	add r7, r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 159
	mov r8, r6
	mul 0x00000034, r6, r0
	add r2, r6
	ld.bu 0x00000024[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 160
	cmp 0x00000000, r6
	ld.bu 0x00000001[r5], r5
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.if_break_bb123_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	mov 0x00000001, r10
	ori 0x0000FFFF, r0, r7
	br9 .BB.LABEL.3_11
.BB.LABEL.3_2:	; bb
	mov r8, r7
	mul 0x00000034, r7, r0
	add r2, r7
	ld.bu 0x00000009[r7], r7
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; bb.bb89_crit_edge
	mov 0x00000000, r7
	mov r7, r10
	br9 .BB.LABEL.3_8
.BB.LABEL.3_4:	; bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 164
	mov r8, r11
	mul 0x00000034, r11, r0
	add r2, r11
	ld.w 0x00000028[r11], r11
	andi 0x0000FFFF, r7, r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 165
	mov r12, r13
	mul 0x00000024, r13, r0
	add r11, r13
	ld.bu 0x00000004[r13], r13
	cmp r13, r5
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_5:	; bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	mul 0x00000024, r12, r0
	add r12, r11
	ld.bu 0x00000005[r11], r11
	cmp 0x00000001, r11
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; if_then_bb86
	mov 0x00000001, r10
.BB.LABEL.3_7:	; if_break_bb
	add 0x00000001, r7
.BB.LABEL.3_8:	; bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 162
	andi 0x0000FFFF, r7, r11
	cmp r6, r11
	bge9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_10:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 170
	andi 0x000000FF, r10, r0
	setf 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 174
	add 0xFFFFFFFF, r7
.BB.LABEL.3_11:	; if_break_bb123
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	st.h r7, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 182
	jmp [r31]
_DsdInternal_SuppressPosRsp.1:
	.stack _DsdInternal_SuppressPosRsp.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 200
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 207
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 204
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 205
	mul 0x0000000C, r7, r0
	add r7, r2
	ld.w 0x00000004[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 208
	mov r8, r2
	mul 0x00000034, r2, r0
	add r20, r2
	ld.bu 0x00000009[r2], r2
	cmp 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 207
	ld.bu 0x00000002[r5], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 208
	mov r8, r22
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 210
	mov r21, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r23
	add r2, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 213
	ld.bu 0x00000001[r23], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 211
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 212
	st.b r0, 0x0000001D[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 213
	andi 0x00000080, r24, r0
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	mul 0x00000034, r22, r0
	add r22, r20
	ld.bu 0x0000000A[r20], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 215
	shl 0x00000006, r21
	mov #_Dcm_MsgCtrl, r2
	add r21, r2
	mov 0x00000001, r5
	st.b r5, 0x0000001D[r2]
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 217
	st.w r5, 0x00000008[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 219
	ld.w 0x0000000C[r2], r5
	andi 0x0000007F, r24, r6
	st.b r6, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 220
	st.b r6, 0x00000001[r2]
.BB.LABEL.4_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 222
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
.BB.LABEL.4_5:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 224
	dispose 0x00000000, 0x00000479, [r31]
_DsdInternal_AddressingFormatCheck.1:
	.stack _DsdInternal_AddressingFormatCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 242
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 248
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000004[r2], r2
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 249
	mul 0x0000000C, r7, r0
	add r7, r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 252
	mul 0x00000034, r8, r0
	add r8, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 253
	cmp 0x00000002, r2
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 256
	mulhi 0x0000001C, r6, r5
	mov #_Dcm_ProtocolCtrl, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 257
	ld.bu 0x00000002[r6], r5
	shl 0x00000006, r5
	mov #_Dcm_MsgCtrl, r6
	add r5, r6
	ld.bu 0x0000001C[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 258
	zxb r2
	cmp r5, r2
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 261
	jmp [r31]
.BB.LABEL.5_3:	; if_break_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 266
	jmp [r31]
_DsdInternal_RxIndication_Check.1:
	.stack _DsdInternal_RxIndication_Check.1 = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 283
	prepare 0x00000079, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 292
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 293
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 294
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r7
	add r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 292
	ld.w 0x00000018[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 296
	cmp 0x00000001, r2
	ld.bu 0x00000000[r7], r21
	mov r6, r22
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_then_bb
	movea 0x00000022, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 299
	mov r22, r6
	jarl _DsdInternal_SetNrc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 300
	mov r22, r6
	jarl _DsdInternal_ProcessingDone, r31
	mov 0x00000001, r23
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 312
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_4:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	movea 0x00000004, r3, r9
	movea 0x00000006, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 315
	mov r21, r6
	mov r22, r7
	jarl _DsdInternal_SearchSidTabServiceIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 316
	cmp 0x00000001, r10
	mov r10, r23
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	movea 0x00000011, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 319
	mov r22, r6
	jarl _DsdInternal_SetNrc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 320
	mov r22, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.6_6:	; if_break_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 323
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_7:	; if_then_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 326
	ld.hu 0x00000004[r3], r8
	ld.hu 0x00000006[r3], r7
	mov r22, r6
	jarl _DsdInternal_AddressingFormatCheck.1, r31
	mov r22, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 327
	cmp 0x00000001, r10
	mov r10, r23
	bnz9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	movea 0x00000011, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 330
	jarl _DsdInternal_SetNrc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 331
	mov r22, r6
	jarl _DsdInternal_ProcessingDone, r31
	br9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 336
	ld.hu 0x00000004[r3], r8
	ld.hu 0x00000006[r3], r7
	jarl _DsdInternal_SuppressPosRsp.1, r31
.BB.LABEL.6_10:	; if_break_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 357
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.6_13
.BB.LABEL.6_11:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 360
	ld.hu 0x00000004[r3], r7
	ld.hu 0x00000006[r3], r6
	jarl _DsdInternal_SesCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 361
	cmp 0x00000001, r10
	mov r10, r23
	bnz9 .BB.LABEL.6_13
.BB.LABEL.6_12:	; if_then_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	movea 0x0000007F, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 364
	mov r22, r6
	jarl _DsdInternal_SetNrc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 365
	mov r22, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.6_13:	; if_break_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 370
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.6_16
.BB.LABEL.6_14:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 373
	ld.hu 0x00000004[r3], r7
	ld.hu 0x00000006[r3], r6
	jarl _DsdInternal_SecurityCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 374
	cmp 0x00000001, r10
	mov r10, r23
	bnz9 .BB.LABEL.6_16
.BB.LABEL.6_15:	; if_then_bb103
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	movea 0x00000033, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 376
	mov r22, r6
	jarl _DsdInternal_SetNrc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 377
	mov r22, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.6_16:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 381
	addi 0xFFFFFFCF, r21, r0
	bz9 .BB.LABEL.6_25
.BB.LABEL.6_17:	; if_break_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.6_25
.BB.LABEL.6_18:	; if_break_bb107
	cmp 0x0000000F, r21
	bnh9 .BB.LABEL.6_25
.BB.LABEL.6_19:	; bb134
	ld.hu 0x00000006[r3], r2
	mul 0x0000000C, r2, r0
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000004[r5], r5
	ld.w 0x00000000[r5], r5
	add r2, r5
	ld.w 0x00000004[r5], r2
	ld.hu 0x00000004[r3], r5
	mul 0x00000034, r5, r0
	add r5, r2
	ld.bu 0x00000009[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_25
.BB.LABEL.6_20:	; if_then_bb161
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 387
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	ld.w 0x00000010[r2], r2
	cmp 0x00000002, r2
	bnc9 .BB.LABEL.6_22
.BB.LABEL.6_21:	; if_then_bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	movea 0x00000013, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 390
	mov r22, r6
	jarl _DsdInternal_SetNrc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 391
	mov r22, r6
	jarl _DsdInternal_ProcessingDone, r31
	mov 0x00000001, r23
.BB.LABEL.6_22:	; if_break_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 394
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.6_25
.BB.LABEL.6_23:	; if_then_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 397
	ld.hu 0x00000004[r3], r8
	ld.hu 0x00000006[r3], r7
	movea 0x00000002, r3, r9
	mov r22, r6
	jarl _DsdInternal_SearchSidTabSubServiceIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 402
	cmp 0x00000001, r10
	mov r10, r23
	bnz9 .BB.LABEL.6_25
.BB.LABEL.6_24:	; if_then_bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	movea 0x00000012, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 405
	mov r22, r6
	jarl _DsdInternal_SetNrc.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 406
	mov r22, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.6_25:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 411
	dispose 0x00000008, 0x00000079, [r31]
_DsdInternal_RxIndication:
	.stack _DsdInternal_RxIndication = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 427
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 438
	jarl _DsdInternal_RxIndication_Check.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 448
	dispose 0x00000000, 0x00000001, [r31]
_DsdInternal_ProcessingDone:
	.stack _DsdInternal_ProcessingDone = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 567
	prepare 0x00000079, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 580
	mulhi 0x0000001C, r6, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 582
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 578
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	mov 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 582
	st.w r7, 0x00000038[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 584
	ld.w 0x00000008[r5], r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 583
	ld.bu 0x00000007[r5], r5
	mov r6, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 585
	cmp 0x00000000, r7
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	add 0xFFFFFFFF, r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_2:	; entry
	cmp 0x00000001, r7
	bnz17 .BB.LABEL.8_18
.BB.LABEL.8_3:	; switch_clause_bb245
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 654
	mov r21, r6
	jarl _DsdInternal_ManufacturerConfirmation, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 655
	mov r21, r6
	jarl _DsdInternal_SupplierConfirmation, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 656
	mov r21, r6
	jarl _DspInternal_DcmConfirmation, r31
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.8_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 591
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r6
	add r20, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 588
	mulhi 0x00000014, r5, r5
	mov #_Dcm_ChannelCtrl, r20
	add r5, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 589
	ld.bu 0x00000000[r20], r5
	mulh 0x0000000C, r5
	ld.w 0x00000004[r2], r2
	add r5, r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 591
	mov #_Dcm_Channel, r5
	add r2, r5
	st.w r5, 0x00000014[r6]
	jr .BB.LABEL.8_17
.BB.LABEL.8_5:	; switch_clause_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 596
	mov r20, r6
	shl 0x00000006, r6
	mov #_Dcm_MsgCtrl, r7
	add r6, r7
	ld.bu 0x0000001C[r7], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 598
	cmp 0x00000001, r6
	ld.bu 0x00000002[r7], r6
	bnz9 .BB.LABEL.8_10
.BB.LABEL.8_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	movea 0xFFFFFFEF, r6, r7
	zxb r7
	cmp 0x00000002, r7
	bl17 .BB.LABEL.8_18
.BB.LABEL.8_7:	; bb
	addi 0xFFFFFFCF, r6, r0
	bz17 .BB.LABEL.8_18
.BB.LABEL.8_8:	; bb
	addi 0xFFFFFF82, r6, r0
	bz9 .BB.LABEL.8_18
.BB.LABEL.8_9:	; bb
	addi 0xFFFFFF81, r6, r0
	bz9 .BB.LABEL.8_18
.BB.LABEL.8_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 605
	addi 0xFFFFFF88, r6, r0
	bnz9 .BB.LABEL.8_12
.BB.LABEL.8_11:	; if_then_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 608
	mov #_Dcm_Nrc78Channel.1.DsdInternal_ProcessingDone, r22
	movea 0x0000007F, r0, r2
	st.b r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 609
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r23
	add r20, r23
	ld.b 0x00000000[r23], r2
	st.b r2, 0x00000001[r22]
	movea 0x00000078, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 610
	st.b r2, 0x00000002[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 611
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 612
	st.w r22, 0x00000014[r23]
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 613
	st.w r2, 0x00000018[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 614
	st.w r2, 0x00000020[r23]
	br9 .BB.LABEL.8_16
.BB.LABEL.8_12:	; if_else_bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 621
	mulhi 0x00000014, r5, r5
	mov #_Dcm_ChannelCtrl, r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 622
	ld.bu 0x00000000[r6], r5
	mulh 0x0000000C, r5
	ld.w 0x00000004[r2], r2
	add r5, r2
	ld.w 0x00000008[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 623
	jarl _SchM_Enter_Dcm_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 624
	mov #_Dcm_Channel, r2
	add r2, r22
	movea 0x0000007F, r0, r2
	st.b r2, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 625
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.b 0x00000000[r5], r2
	st.b r2, 0x00000001[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 626
	ld.b 0x00000002[r5], r2
	st.b r2, 0x00000002[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 628
	ld.bu 0x00000002[r5], r2
	addi 0xFFFFFFDE, r2, r0
	bnz9 .BB.LABEL.8_14
.BB.LABEL.8_13:	; if_then_bb198
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	movea 0x00000003, r3, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 631
	mov r23, r6
	jarl _Dcm_GetSpecificCauseCode, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 633
	ld.b 0x00000000[r23], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 631
	cmp 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 633
	cmov 0x0000000A, 0xFFFFFFFF, r2, r2
	st.b r2, 0x00000003[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 639
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	mov 0x00000004, r2
	br9 .BB.LABEL.8_15
.BB.LABEL.8_14:	; if_else_bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 645
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	mov 0x00000003, r2
.BB.LABEL.8_15:	; if_else_bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	st.w r2, 0x00000018[r5]
	st.w r2, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 648
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	st.w r22, 0x00000014[r2]
.BB.LABEL.8_16:	; if_break_bb234
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	jarl _SchM_Exit_Dcm_ExclusiveArea, r31
.BB.LABEL.8_17:	; if_break_bb234
	mov r21, r6
	jarl _DslInternal_ProcessingDone, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 663
	dispose 0x00000004, 0x00000079, [r31]
.BB.LABEL.8_18:	; switch_clause_bb249
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	mov r21, r6
	jarl _DslInternal_ResetResource, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 663
	dispose 0x00000004, 0x00000079, [r31]
_DsdInternal_TxConfirmation:
	.stack _DsdInternal_TxConfirmation = 8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 679
	prepare 0x00000041, 0x00000000
	mov r6, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 681
	jarl _DsdInternal_ManufacturerConfirmation, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 682
	mov r20, r6
	jarl _DsdInternal_SupplierConfirmation, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 683
	mov r20, r6
	jarl _DspInternal_DcmConfirmation, r31
	dispose 0x00000000, 0x00000041, [r31]
_DsdInternal_ServiceAddressAndLengthFormatIdentifierCheck:
	.stack _DsdInternal_ServiceAddressAndLengthFormatIdentifierCheck = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 701
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 705
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000044[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 708
	ld.bu 0x00000000[r2], r5
	mov 0x00000000, r7
	mov 0x00000001, r8
	br9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 710
	ld.w 0x00000004[r2], r9
	andi 0x000000FF, r7, r10
	add r10, r9
	ld.bu 0x00000000[r9], r9
	cmp r9, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 714
	cmov 0x00000002, 0x00000000, r8, r8
	add 0x00000001, r7
.BB.LABEL.10_2:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 708
	andi 0x000000FF, r7, r9
	cmp r5, r9
	bnc9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 0
	andi 0x000000FF, r8, r9
	cmp 0x00000001, r9
	bz9 .BB.LABEL.10_1
.BB.LABEL.10_4:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 717
	ld.bu 0x00000000[r2], r2
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 719
	cmov 0x00000002, 0x00000000, r8, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/DcmDsd.c", 722
	zxb r10
	jmp [r31]
	.section .data, data
_Dcm_Nrc78Channel.1.DsdInternal_ProcessingDone:
	.ds (8)
