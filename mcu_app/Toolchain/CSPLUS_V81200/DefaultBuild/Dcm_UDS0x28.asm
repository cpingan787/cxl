#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x28.c -oDefaultBuild\Dcm_UDS0x28.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_f3785b74e76e435ca88ec8c9714e91d8dokmfgiu.yj1
#@	compiled at Fri Mar 27 09:49:57 2026

	.file "..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x28.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_Channel
	.extern _DcmPbCfgPtr
	.extern _Dcm_MkCtrl
	.public _DspInternalUDS0x28_CheckNewSes
	.extern _DsdInternal_SearchSidTabServiceIndex
	.extern _DsdInternal_SesCheck
	.extern _BswM_Dcm_CommunicationMode_CurrentState
	.public _Dcm_UDS0x28
	.extern _DsdInternal_SubSesCheck
	.extern _DsdInternal_SubSecurityCheck
	.extern _RTE_PreConditonCheck
	.extern _DsdInternal_ProcessingDone

	.section .text, text
_DspInternalUDS0x28GetReqMode_0x01.1:
	.stack _DspInternalUDS0x28GetReqMode_0x01.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 50
	cmp 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 54
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	cmp 0x00000002, r6
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; entry
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_3:	; switch_clause_bb4
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 60
	jmp [r31]
.BB.LABEL.1_4:	; switch_clause_bb5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 63
	jmp [r31]
.BB.LABEL.1_5:	; switch_clause_bb6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 66
	jmp [r31]
.BB.LABEL.1_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 73
	jmp [r31]
_DspInternalUDS0x28GetReqMode_0x02.1:
	.stack _DspInternalUDS0x28GetReqMode_0x02.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 89
	cmp 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 93
	bh9 .BB.LABEL.2_6
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.2_7[r6]
.SWITCH.LABEL.2_7:
	br9 .BB.LABEL.2_2
	br9 .BB.LABEL.2_3
	br9 .BB.LABEL.2_4
	br9 .BB.LABEL.2_5
.SWITCH.LABEL.2_7.END:
.BB.LABEL.2_2:	; switch_clause_bb
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 96
	jmp [r31]
.BB.LABEL.2_3:	; switch_clause_bb4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 99
	jmp [r31]
.BB.LABEL.2_4:	; switch_clause_bb5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000006, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 102
	jmp [r31]
.BB.LABEL.2_5:	; switch_clause_bb6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000007, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 105
	jmp [r31]
.BB.LABEL.2_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 112
	jmp [r31]
_DspInternalUDS0x28GetReqMode_0x03.1:
	.stack _DspInternalUDS0x28GetReqMode_0x03.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 128
	cmp 0x00000003, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 132
	bh9 .BB.LABEL.3_6
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.3_7[r6]
.SWITCH.LABEL.3_7:
	br9 .BB.LABEL.3_2
	br9 .BB.LABEL.3_3
	br9 .BB.LABEL.3_4
	br9 .BB.LABEL.3_5
.SWITCH.LABEL.3_7.END:
.BB.LABEL.3_2:	; switch_clause_bb
	mov 0x00000008, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 135
	jmp [r31]
.BB.LABEL.3_3:	; switch_clause_bb4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000009, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 138
	jmp [r31]
.BB.LABEL.3_4:	; switch_clause_bb5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x0000000A, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 141
	jmp [r31]
.BB.LABEL.3_5:	; switch_clause_bb6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x0000000B, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 144
	jmp [r31]
.BB.LABEL.3_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 151
	jmp [r31]
_DspInternalUDS0x28_0x00_0x03_GetReqMode.1:
	.stack _DspInternalUDS0x28_0x00_0x03_GetReqMode.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 166
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 170
	cmp 0x00000003, r7
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	cmp 0x00000002, r7
	bz9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; entry
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 173
	jarl _DspInternalUDS0x28GetReqMode_0x01.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_4:	; switch_clause_bb7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 176
	jarl _DspInternalUDS0x28GetReqMode_0x02.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_5:	; switch_clause_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 179
	jarl _DspInternalUDS0x28GetReqMode_0x03.1, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.4_6:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 186
	dispose 0x00000000, 0x00000001, [r31]
_DspInternalUDS0x28_CheckNewSes:
	.stack _DspInternalUDS0x28_CheckNewSes = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 202
	prepare 0x00000479, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 207
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000003), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 226
	ld.bu LOWW(#_Dcm_MkCtrl+0x00000003)[r2], r20
	addi 0xFFFFFF01, r20, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 221
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 222
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 223
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r22
	mov r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 226
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb42_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; if_then_bb
	mov r3, r9
	movea 0x00000002, r3, r8
	movea 0x00000028, r0, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 228
	mov r20, r7
	jarl _DsdInternal_SearchSidTabServiceIndex, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 233
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb38
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 235
	ld.hu 0x00000000[r3], r7
	ld.hu 0x00000002[r3], r6
	jarl _DsdInternal_SesCheck, r31
.BB.LABEL.5_4:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 238
	addi 0xFFFFFF01, r20, r0
	bz9 .BB.LABEL.5_19
.BB.LABEL.5_5:	; if_break_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	cmp 0x00000001, r10
	bz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_break_bb42
	cmp 0x00000001, r23
	bnz9 .BB.LABEL.5_19
.BB.LABEL.5_7:	; if_break_bb42
	cmp 0x00000000, r21
	bz9 .BB.LABEL.5_19
.BB.LABEL.5_8:	; bb73
	ld.w 0x00000018[r21], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_19
.BB.LABEL.5_9:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 241
	ld.w 0x00000018[r21], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 242
	ld.w 0x00000004[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 244
	cmp 0x00000000, r21
	bz9 .BB.LABEL.5_15
.BB.LABEL.5_10:	; if_then_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 247
	ld.bu 0x00000000[r2], r23
	mov 0x00000000, r24
	br9 .BB.LABEL.5_14
.BB.LABEL.5_11:	; bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 250
	andi 0x000000FF, r24, r2
	add r2, r2
	add r21, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.5_13
.BB.LABEL.5_12:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 249
	andi 0x000000FF, r24, r2
	add r2, r2
	add r21, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 253
	ld.bu 0x00000001[r2], r6
	mov 0x00000008, r7
	jarl _BswM_Dcm_CommunicationMode_CurrentState, r31
.BB.LABEL.5_13:	; if_break_bb129
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	add 0x00000001, r24
.BB.LABEL.5_14:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 247
	andi 0x000000FF, r24, r2
	cmp r23, r2
	bl9 .BB.LABEL.5_11
.BB.LABEL.5_15:	; if_break_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 261
	cmp 0x00000000, r22
	bz9 .BB.LABEL.5_19
.BB.LABEL.5_16:	; bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mulhi 0x00000024, r20, r2
	add r22, r2
	ld.w 0x0000001C[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_19
.BB.LABEL.5_17:	; bb161
	mulhi 0x00000024, r20, r2
	add r22, r2
	ld.w 0x0000001C[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_19
.BB.LABEL.5_18:	; if_then_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 264
	mulhi 0x00000024, r20, r2
	add r2, r22
	ld.w 0x0000001C[r22], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 266
	ld.bu 0x00000008[r2], r6
	mov 0x00000008, r7
	jarl _BswM_Dcm_CommunicationMode_CurrentState, r31
.BB.LABEL.5_19:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 317
	dispose 0x00000004, 0x00000479, [r31]
_DspInternalUDS0x28_0x00_0x03_SubFuction.1:
	.stack _DspInternalUDS0x28_0x00_0x03_SubFuction.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 334
	prepare 0x00000779, 0x00000000
	mov r6, r20
	mov r9, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 346
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 347
	ld.w 0x00000000[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 348
	ld.w 0x00000014[r2], r2
	ld.w 0x00000000[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 352
	mov r7, r6
	mov r8, r7
	jarl _DspInternalUDS0x28_0x00_0x03_GetReqMode.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 353
	cmp 0x00000000, r22
	mov r10, r24
	bnz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; entry.if_break_bb163_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000001, r10
.BB.LABEL.6_2:	; if_break_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 419
	zxb r10
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.6_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	ld.w 0x00000018[r22], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_1
.BB.LABEL.6_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 357
	cmp 0x00000000, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 355
	ld.w 0x00000018[r22], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 356
	ld.w 0x00000004[r2], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 357
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb.if_break_bb98_crit_edge
	mov 0x00000001, r10
	br9 .BB.LABEL.6_12
.BB.LABEL.6_7:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 360
	ld.bu 0x00000000[r2], r25
	mov 0x00000000, r26
	mov 0x00000001, r10
	br9 .BB.LABEL.6_11
.BB.LABEL.6_8:	; bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 362
	andi 0x000000FF, r26, r2
	add r2, r2
	add r22, r2
	ld.bu 0x00000000[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; if_then_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 365
	andi 0x000000FF, r26, r2
	add r2, r2
	add r22, r2
	ld.bu 0x00000001[r2], r6
	mov r24, r7
	jarl _BswM_Dcm_CommunicationMode_CurrentState, r31
	mov 0x00000000, r10
.BB.LABEL.6_10:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	add 0x00000001, r26
.BB.LABEL.6_11:	; bb89
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 360
	andi 0x000000FF, r26, r2
	cmp r25, r2
	bl9 .BB.LABEL.6_8
.BB.LABEL.6_12:	; if_break_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 378
	cmp 0x00000000, r23
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_13:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mulhi 0x00000024, r20, r2
	add r23, r2
	ld.w 0x0000001C[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_14:	; bb118
	mulhi 0x00000024, r20, r2
	add r23, r2
	ld.w 0x0000001C[r2], r2
	ld.w 0x00000004[r2], r2
	cmp 0x0000000F, r21
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_15:	; bb118
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_2
.BB.LABEL.6_16:	; if_then_bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 382
	mulhi 0x00000024, r20, r2
	add r2, r23
	ld.w 0x0000001C[r23], r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 384
	ld.bu 0x00000008[r2], r6
	mov r24, r7
	jarl _BswM_Dcm_CommunicationMode_CurrentState, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 388
	dispose 0x00000000, 0x00000779, [r31]
_Dcm_UDS0x28_ConditionCheck.1:
	.stack _Dcm_UDS0x28_ConditionCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 556
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 566
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 577
	ld.w 0x00000000[r2], r5
	ld.w 0x00000014[r5], r5
	ld.w 0x00000000[r5], r5
	mulhi 0x00000024, r6, r8
	add r8, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 579
	ld.bu 0x00000018[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 574
	mulhi 0x0000001C, r6, r6
	mov #_Dcm_ProtocolCtrl, r8
	add r6, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 576
	ld.bu 0x00000002[r8], r6
	shl 0x00000006, r6
	mov #_Dcm_MsgCtrl, r8
	add r6, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 579
	ld.bu 0x00000001[r8], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 566
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 568
	ld.w 0x00000000[r2], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 579
	ld.hu 0x00000004[r2], r2
	mov 0x00000000, r9
	mov r9, r10
	br9 .BB.LABEL.7_13
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 581
	andi 0x0000FFFF, r9, r11
	mul 0x0000000C, r11, r0
	add r8, r11
	ld.bu 0x00000000[r11], r11
	cmp r11, r5
	bnz9 .BB.LABEL.7_12
.BB.LABEL.7_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 583
	andi 0x0000FFFF, r9, r11
	mul 0x0000000C, r11, r0
	add r8, r11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 585
	ld.bu 0x00000008[r11], r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 583
	ld.w 0x00000004[r11], r11
	mov 0x00000000, r13
	br9 .BB.LABEL.7_10
.BB.LABEL.7_3:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 587
	andi 0x0000FFFF, r13, r14
	mul 0x00000034, r14, r0
	add r11, r14
	ld.bu 0x00000008[r14], r14
	addi 0xFFFFFFD8, r14, r0
	bnz9 .BB.LABEL.7_9
.BB.LABEL.7_4:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	andi 0x0000FFFF, r13, r14
	mul 0x00000034, r14, r0
	add r11, r14
	ld.bu 0x00000009[r14], r14
	cmp 0x00000001, r14
	bnz9 .BB.LABEL.7_9
.BB.LABEL.7_5:	; if_then_bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 590
	andi 0x0000FFFF, r13, r14
	mul 0x00000034, r14, r0
	add r11, r14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 591
	ld.bu 0x00000024[r14], r14
	mov 0x00000000, r15
	br9 .BB.LABEL.7_7
.BB.LABEL.7_6:	; bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 593
	andi 0x0000FFFF, r13, r16
	mul 0x00000034, r16, r0
	add r11, r16
	ld.w 0x00000028[r16], r16
	andi 0x000000FF, r15, r17
	mul 0x00000024, r17, r0
	add r17, r16
	ld.bu 0x00000004[r16], r16
	cmp r16, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 595
	cmov 0x00000002, 0x00000001, r10, r10
	add 0x00000001, r15
.BB.LABEL.7_7:	; bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 591
	andi 0x000000FF, r15, r16
	cmp r14, r16
	bnc9 .BB.LABEL.7_9
.BB.LABEL.7_8:	; bb125
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.7_6
.BB.LABEL.7_9:	; if_break_bb146
	add 0x00000001, r13
.BB.LABEL.7_10:	; bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 585
	andi 0x0000FFFF, r13, r14
	cmp r12, r14
	bge9 .BB.LABEL.7_12
.BB.LABEL.7_11:	; bb149
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_12:	; if_break_bb170
	add 0x00000001, r9
.BB.LABEL.7_13:	; bb173
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 579
	andi 0x0000FFFF, r9, r11
	cmp r2, r11
	bnc9 .BB.LABEL.7_15
.BB.LABEL.7_14:	; bb173
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.7_1
.BB.LABEL.7_15:	; bb193
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 602
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.7_17
.BB.LABEL.7_16:	; bb193
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	cmp 0x00000006, r6
	bl9 .BB.LABEL.7_18
.BB.LABEL.7_17:	; if_then_bb211
	movea 0x00000012, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 605
	st.b r2, 0x00000000[r7]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 606
	jmp [r31]
.BB.LABEL.7_18:	; if_break_bb213
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 615
	jmp [r31]
_Dcm_UDS0x28:
	.stack _Dcm_UDS0x28 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 632
	prepare 0x00000779, 0x00000000
	mov r7, r20
	mov r8, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 653
	mulhi 0x0000001C, r20, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 656
	mov r22, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	ld.bu 0x00000002[r2], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 660
	ld.w 0x00000010[r5], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 664
	ld.bu 0x00000001[r5], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 661
	mov r20, r6
	mov r21, r7
	jarl _Dcm_UDS0x28_ConditionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 656
	andi 0x0000000F, r23, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 657
	zxb r23
	shr 0x00000004, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 664
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	movea 0x00000028, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 667
	mov r20, r6
	mov r21, r8
	jarl _DsdInternal_SubSesCheck, r31
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 672
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	movea 0x00000028, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 675
	mov r20, r6
	mov r21, r8
	jarl _DsdInternal_SubSecurityCheck, r31
.BB.LABEL.8_4:	; if_break_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 679
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_10
.BB.LABEL.8_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	cmp 0x00000005, r24
	bz9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; bb76
	addi 0xFFFFFFFC, r25, r2
	zxb r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.8_9
.BB.LABEL.8_7:	; bb99
	cmp 0x00000003, r25
	bh9 .BB.LABEL.8_10
.BB.LABEL.8_8:	; bb99
	cmp 0x00000003, r24
	bz9 .BB.LABEL.8_10
.BB.LABEL.8_9:	; if_then_bb130
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 684
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
.BB.LABEL.8_10:	; if_break_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 687
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_14
.BB.LABEL.8_11:	; if_then_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 689
	cmp 0x00000000, r26
	bz9 .BB.LABEL.8_13
.BB.LABEL.8_12:	; if_then_bb138
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	cmp 0x00000004, r26
	bl9 .BB.LABEL.8_14
.BB.LABEL.8_13:	; if_then_bb156
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 692
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
.BB.LABEL.8_14:	; if_break_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 696
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_17
.BB.LABEL.8_15:	; if_then_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 698
	jarl _RTE_PreConditonCheck, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 699
	cmp 0x00000000, r10
	bz9 .BB.LABEL.8_17
.BB.LABEL.8_16:	; if_then_bb172
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 701
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
.BB.LABEL.8_17:	; if_break_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov r10, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 706
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.8_21
.BB.LABEL.8_18:	; if_break_bb175
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	cmp 0x00000004, r25
	bnc9 .BB.LABEL.8_21
.BB.LABEL.8_19:	; if_then_bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 710
	andi 0x0000FFFF, r23, r9
	mov r20, r6
	mov r25, r7
	mov r26, r8
	jarl _DspInternalUDS0x28_0x00_0x03_SubFuction.1, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.8_21
.BB.LABEL.8_20:	; if_then_bb197
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	movea 0x00000031, r0, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 712
	st.b r24, 0x00000000[r21]
	mov 0x00000001, r24
.BB.LABEL.8_21:	; if_break_bb201
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 734
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.8_25
.BB.LABEL.8_22:	; if_then_bb207
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 738
	mov r22, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 739
	ld.bu 0x00000007[r5], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 740
	ld.bu 0x00000000[r5], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 743
	mulhi 0x0000000C, r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 740
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r6
	ld.w LOWW(#_DcmPbCfgPtr)[r6], r6
	ld.w 0x00000000[r6], r6
	ld.w 0x00000004[r6], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 743
	add r6, r5
	ld.w 0x00000004[r5], r5
	cmp 0x00000001, r5
	bh9 .BB.LABEL.8_24
.BB.LABEL.8_23:	; if_then_bb235
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 746
	st.b r2, 0x00000000[r21]
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 747
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.8_24:	; if_else_bb237
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 741
	mulh 0x0000000C, r2
	add r2, r6
	ld.w 0x00000008[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 751
	mov #_Dcm_Channel, r5
	add r5, r2
	movea 0x00000068, r0, r5
	st.b r5, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 752
	st.b r25, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 753
	shl 0x00000006, r22
	mov #_Dcm_MsgCtrl, r5
	add r22, r5
	mov 0x00000002, r6
	st.w r6, 0x00000020[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 754
	st.w r6, 0x00000018[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 755
	st.w r2, 0x00000014[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 756
	mov r20, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.8_25:	; if_break_bb254
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 0
	mov r24, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x28.c", 760
	dispose 0x00000000, 0x00000779, [r31]
