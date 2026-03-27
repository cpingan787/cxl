#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x2E.c -oDefaultBuild\Dcm_UDS0x2E.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_44b3b431988141979963417269f51e6chbyuzwd5.dg4
#@	compiled at Fri Mar 27 09:50:02 2026

	.file "..\..\Bsw\Communication\Common\Dcm\UDS\Dcm_UDS0x2E.c"

	$reg_mode 32
	.dbl_size 8

	.extern _Dcm_ProtocolCtrl
	.extern _Dcm_ChannelCtrl
	.extern _Dcm_MsgCtrl
	.extern _Dcm_Channel
	.extern _DcmPbCfgPtr
	.extern _Dcm_MkCtrl
	.public _Dcm_UDS0x2E
	.extern _DsdInternal_ProcessingDone

	.section .text, text
_DspInternalUDS0x2E_DidCheck.1:
	.stack _DspInternalUDS0x2E_DidCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 59
	ld.w 0x00000008[r8], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 74
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	ld.w 0x00000008[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 75
	ld.w 0x00000030[r5], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 76
	st.b r0, 0x00000000[r2]
	mov 0x00000001, r10
	mov 0x00000000, r2
	mov r2, r11
	br9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 82
	andi 0x0000FFFF, r2, r12
	mul 0x00000014, r12, r0
	add r6, r12
	ld.hu 0x00000000[r12], r12
	cmp r12, r7
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	andi 0x0000FFFF, r2, r12
	mul 0x00000014, r12, r0
	add r6, r12
	ld.bu 0x00000002[r12], r12
	cmp 0x00000001, r12
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 85
	ld.w 0x00000004[r8], r11
	st.h r2, 0x00000000[r11]
	mov 0x00000000, r10
	mov 0x00000001, r11
.BB.LABEL.1_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	add 0x00000001, r2
.BB.LABEL.1_5:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 79
	andi 0x0000FFFF, r2, r12
	ld.hu 0x0000002C[r5], r13
	cmp r13, r12
	bnc9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	andi 0x000000FF, r11, r0
	bz9 .BB.LABEL.1_1
.BB.LABEL.1_7:	; bb75
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 138
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 141
	st.b r2, 0x00000000[r9]
.BB.LABEL.1_9:	; if_break_bb84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	zxb r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 144
	jmp [r31]
_DspInternalUDS0x2E_DidSesCheck.1:
	.stack _DspInternalUDS0x2E_DidSesCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 160
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 165
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 168
	ld.w 0x00000038[r2], r2
	shl 0x00000004, r6
	add r6, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 169
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry.if_break_bb67_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.2_8
.BB.LABEL.2_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 178
	ld.bu 0x00000008[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_else_bb.bb45_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	mov 0x00000001, r10
	mov 0x00000000, r6
	br9 .BB.LABEL.2_6
.BB.LABEL.2_4:	; if_else_bb.if_break_bb67_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.2_8
.BB.LABEL.2_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 182
	ld.w 0x0000000C[r2], r7
	andi 0x000000FF, r6, r8
	add r8, r7
	ld.bu 0x00000000[r7], r7
	movhi HIGHW1(#_Dcm_MkCtrl), r0, r8
	ld.bu LOWW(#_Dcm_MkCtrl)[r8], r8
	cmp r7, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 184
	cmov 0x00000002, 0x00000000, r10, r10
	add 0x00000001, r6
.BB.LABEL.2_6:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 180
	andi 0x000000FF, r6, r7
	cmp r5, r7
	bnc9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	andi 0x000000FF, r10, r7
	cmp 0x00000001, r7
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_8:	; if_break_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 194
	zxb r10
	jmp [r31]
_DspInternalUDS0x2E_DidSecCheck.1:
	.stack _DspInternalUDS0x2E_DidSecCheck.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 210
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 217
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 220
	ld.w 0x00000038[r2], r2
	shl 0x00000004, r6
	add r6, r2
	ld.w 0x0000000C[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 221
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 225
	st.b r2, 0x00000000[r7]
	mov 0x00000001, r10
	jmp [r31]
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 230
	ld.bu 0x00000000[r2], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_else_bb.bb47_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	mov 0x00000000, r6
	mov 0x00000001, r10
	br9 .BB.LABEL.3_6
.BB.LABEL.3_4:	; if_else_bb.if_break_bb77_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.3_10
.BB.LABEL.3_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 234
	ld.w 0x00000004[r2], r8
	andi 0x000000FF, r6, r9
	add r9, r8
	ld.bu 0x00000000[r8], r8
	movhi HIGHW1(#_Dcm_MkCtrl+0x00000001), r0, r9
	ld.bu LOWW(#_Dcm_MkCtrl+0x00000001)[r9], r9
	cmp r8, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 236
	cmov 0x00000002, 0x00000000, r10, r10
	add 0x00000001, r6
.BB.LABEL.3_6:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 232
	andi 0x000000FF, r6, r8
	cmp r5, r8
	bnc9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	andi 0x000000FF, r10, r8
	cmp 0x00000001, r8
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_8:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 239
	andi 0x000000FF, r10, r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; if_then_bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	movea 0x00000033, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 242
	st.b r2, 0x00000000[r7]
.BB.LABEL.3_10:	; if_break_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	zxb r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 251
	jmp [r31]
_DspInternalUDS0x2E_DidWriteDataLength.1:
	.stack _DspInternalUDS0x2E_DidWriteDataLength.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 267
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 274
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000030[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 275
	mov r6, r5
	mul 0x00000014, r5, r0
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 278
	ld.hu 0x0000000C[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 277
	st.h r0, 0x00000000[r7]
	mov 0x00000000, r8
	mov r8, r10
	br9 .BB.LABEL.4_5
.BB.LABEL.4_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 280
	mov r6, r9
	mul 0x00000014, r9, r0
	add r2, r9
	ld.w 0x00000010[r9], r9
	andi 0x0000FFFF, r8, r11
	shl 0x00000003, r11
	add r11, r9
	ld.w 0x00000004[r9], r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 281
	ld.w 0x00000038[r9], r11
	cmp 0x0000000C, r11
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 283
	ld.h 0x00000000[r7], r11
	ld.h 0x00000034[r9], r9
	add r9, r11
	st.h r11, 0x00000000[r7]
.BB.LABEL.4_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	add 0x00000001, r8
.BB.LABEL.4_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 278
	andi 0x0000FFFF, r8, r9
	cmp r5, r9
	bl9 .BB.LABEL.4_1
.BB.LABEL.4_6:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 291
	zxb r10
	jmp [r31]
_DspInternalUDS0x2E_DidWrite.1:
	.stack _DspInternalUDS0x2E_DidWrite.1 = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 307
	prepare 0x00000779, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 318
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	ld.w 0x00000030[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 319
	mul 0x00000014, r8, r0
	add r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 325
	ld.hu 0x0000000C[r2], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 319
	ld.w 0x00000010[r2], r21
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 325
	mov r7, r22
	mov r9, r23
	mov r7, r24
	mov r6, r25
	mov r10, r26
	br9 .BB.LABEL.5_9
.BB.LABEL.5_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 327
	andi 0x0000FFFF, r26, r2
	shl 0x00000003, r2
	add r21, r2
	ld.w 0x00000004[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 333
	ld.w 0x00000030[r2], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 336
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
	br9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 341
	mov r22, r6
	shl 0x00000006, r6
	mov #_Dcm_MsgCtrl, r7
	add r6, r7
	ld.w 0x0000000C[r7], r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 328
	andi 0x0000FFFF, r26, r6
	shl 0x00000003, r6
	add r21, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 341
	ld.hu 0x00000000[r6], r6
	ld.hu 0x00000034[r2], r7
	add r8, r6
	add 0x00000003, r6
	mov r25, r8
	mov r23, r9
	jarl [r5], r31
.BB.LABEL.5_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 348
	cmp 0x0000000A, r10
	bz9 .BB.LABEL.5_7
.BB.LABEL.5_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	cmp 0x00000001, r10
	bnh9 .BB.LABEL.5_8
.BB.LABEL.5_6:	; switch_clause_bb74
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 357
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
	br9 .BB.LABEL.5_8
.BB.LABEL.5_7:	; switch_clause_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 354
	mov r24, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x0000003D[r5]
.BB.LABEL.5_8:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	add 0x00000001, r26
.BB.LABEL.5_9:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 325
	andi 0x0000FFFF, r26, r2
	cmp r20, r2
	bnc9 .BB.LABEL.5_11
.BB.LABEL.5_10:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	andi 0x000000FF, r10, r0
	bz9 .BB.LABEL.5_1
.BB.LABEL.5_11:	; bb97
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 410
	zxb r10
	dispose 0x00000000, 0x00000779, [r31]
_Dcm_Uds0x2EServiceConditionCheck.1:
	.stack _Dcm_Uds0x2EServiceConditionCheck.1 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 427
	prepare 0x00000479, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 446
	mulhi 0x0000001C, r7, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	ld.bu 0x00000002[r5], r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 449
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x00000010[r5], r2
	cmp 0x00000004, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 438
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000008[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 442
	ld.w 0x00000038[r2], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 438
	ld.w 0x00000030[r2], r22
	mov r9, r23
	mov r8, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 449
	bl9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_then_bb
	movea 0x00000013, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 452
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 464
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_4:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 466
	mov r20, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	ld.w 0x0000000C[r5], r2
	ld.b 0x00000001[r2], r7
	ld.bu 0x00000002[r2], r2
	shl 0x00000008, r7
	or r2, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 468
	zxh r7
	mov r24, r8
	mov r23, r9
	jarl _DspInternalUDS0x2E_DidCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 469
	cmp 0x0000000A, r10
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 471
	shl 0x00000006, r20
	mov #_Dcm_MsgCtrl, r2
	add r20, r2
	mov 0x00000001, r5
	st.b r5, 0x0000003D[r2]
.BB.LABEL.6_6:	; if_break_bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 474
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_7:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 484
	ld.w 0x00000004[r24], r2
	ld.hu 0x00000000[r2], r2
	mul 0x00000014, r2, r0
	add r2, r22
	ld.h 0x00000004[r22], r2
	ld.w 0x0000000C[r24], r5
	st.h r2, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 487
	ld.w 0x0000000C[r24], r2
	ld.hu 0x00000000[r2], r2
	mov r2, r5
	shl 0x00000004, r5
	add r21, r5
	ld.bu 0x00000001[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.6_9
.BB.LABEL.6_8:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	shl 0x00000004, r2
	add r2, r21
	ld.w 0x0000000C[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; if_then_bb125
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 491
	st.b r2, 0x00000000[r23]
	mov 0x00000001, r10
.BB.LABEL.6_10:	; if_break_bb128
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 498
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_13
.BB.LABEL.6_11:	; if_then_bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 500
	ld.w 0x0000000C[r24], r2
	ld.hu 0x00000000[r2], r6
	jarl _DspInternalUDS0x2E_DidSesCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 501
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.6_13
.BB.LABEL.6_12:	; if_then_bb145
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	movea 0x00000031, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 504
	st.b r2, 0x00000000[r23]
.BB.LABEL.6_13:	; if_break_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 509
	dispose 0x00000000, 0x00000479, [r31]
_Dcm_UDS0x2ESubCheck.1:
	.stack _Dcm_UDS0x2ESubCheck.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 525
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 542
	mov r8, r6
	mov r9, r7
	jarl _DspInternalUDS0x2E_DidSecCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 552
	dispose 0x00000000, 0x00000001, [r31]
_Dcm_UDS0x2E:
	.stack _Dcm_UDS0x2E = 72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 569
	prepare 0x000007FF, 0x0000001C
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 576
	st.h r0, 0x0000001A[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 590
	mulhi 0x0000001C, r21, r2
	mov #_Dcm_ProtocolCtrl, r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 591
	ld.bu 0x00000002[r5], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 593
	mov r23, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r24
	add r2, r24
	ld.w 0x0000000C[r24], r2
	ld.bu 0x00000002[r2], r25
	ld.bu 0x00000001[r2], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 595
	ld.bu 0x00000007[r24], r2
	mulhi 0x00000014, r2, r2
	mov #_Dcm_ChannelCtrl, r5
	add r2, r5
	ld.bu 0x00000000[r5], r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 596
	mulhi 0x0000000C, r27, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 588
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r5
	ld.w LOWW(#_DcmPbCfgPtr)[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 596
	ld.w 0x00000000[r5], r8
	ld.w 0x00000004[r8], r8
	add r2, r8
	ld.w 0x00000008[r8], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 588
	ld.w 0x00000008[r5], r2
	ld.w 0x00000040[r2], r29
	movea 0x00000018, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 598
	st.w r2, 0x00000008[r3]
	movea 0x00000017, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 599
	st.w r2, 0x00000004[r3]
	movea 0x00000016, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 600
	st.w r2, 0x0000000C[r3]
	movea 0x00000014, r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 601
	st.w r2, 0x00000010[r3]
	movea 0x00000004, r3, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 602
	mov r22, r9
	jarl _Dcm_Uds0x2EServiceConditionCheck.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 593
	shl 0x00000008, r26
	or r25, r26
	add 0x0000000C, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 604
	cmp 0x00000000, r10
	bnz17 .BB.LABEL.8_23
.BB.LABEL.8_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 606
	ld.bu 0x00000016[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_9
.BB.LABEL.8_2:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 608
	ld.hu 0x00000018[r3], r6
	movea 0x0000001A, r3, r7
	jarl _DspInternalUDS0x2E_DidWriteDataLength.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 609
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_3:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	mov r23, r24
	shl 0x00000006, r24
	mov #_Dcm_MsgCtrl, r29
	add r24, r29
	ld.hu 0x00000010[r29], r24
	ld.hu 0x0000001A[r3], r29
	add 0x00000003, r29
	cmp r24, r29
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_then_bb111
	movea 0x00000013, r0, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 613
	st.b r24, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.8_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 616
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_7
.BB.LABEL.8_6:	; if_then_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 618
	ld.hu 0x00000014[r3], r8
	mov r21, r6
	mov r26, r7
	mov r22, r9
	jarl _Dcm_UDS0x2ESubCheck.1, r31
.BB.LABEL.8_7:	; if_break_bb124
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 620
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_23
.BB.LABEL.8_8:	; if_then_bb130
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 622
	ld.hu 0x00000018[r3], r8
	mov r20, r6
	mov r23, r7
	mov r22, r9
	jarl _DspInternalUDS0x2E_DidWrite.1, r31
	br9 .BB.LABEL.8_23
.BB.LABEL.8_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 628
	ld.bu 0x00000017[r3], r2
	mulhi 0x0000001C, r2, r2
	add r29, r2
	ld.w 0x0000000C[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_11
.BB.LABEL.8_10:	; if_then_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 631
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.8_11:	; if_break_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 634
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_17
.BB.LABEL.8_12:	; if_then_bb154
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 636
	ld.bu 0x00000017[r3], r2
	mulhi 0x0000001C, r2, r2
	add r29, r2
	ld.w 0x0000000C[r2], r2
	movea 0x0000001A, r3, r8
	mov r26, r6
	mov r20, r7
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 637
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.8_14
.BB.LABEL.8_13:	; if_then_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 639
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
	br9 .BB.LABEL.8_17
.BB.LABEL.8_14:	; if_else_bb171
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 642
	cmp 0x0000000A, r10
	bnz9 .BB.LABEL.8_16
.BB.LABEL.8_15:	; if_then_bb177
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 644
	mov r23, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x0000003D[r5]
	br9 .BB.LABEL.8_17
.BB.LABEL.8_16:	; if_else_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 648
	ld.hu 0x00000014[r3], r8
	mov r21, r6
	mov r26, r7
	mov r22, r9
	jarl _Dcm_UDS0x2ESubCheck.1, r31
.BB.LABEL.8_17:	; if_break_bb190
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 652
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_20
.BB.LABEL.8_18:	; bb195
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	ld.bu 0x00000017[r3], r2
	mulhi 0x0000001C, r2, r2
	add r29, r2
	ld.w 0x00000014[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.8_20
.BB.LABEL.8_19:	; if_then_bb212
	movea 0x00000022, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 654
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.8_20:	; if_break_bb214
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 657
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_23
.BB.LABEL.8_21:	; if_then_bb220
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 659
	ld.bu 0x00000017[r3], r2
	mulhi 0x0000001C, r2, r2
	add r2, r29
	ld.w 0x00000014[r29], r2
	ld.w 0x00000000[r24], r7
	ld.hu 0x0000001A[r3], r9
	st.w r22, 0x00000000[r3]
	add 0x00000003, r7
	mov r26, r6
	mov r20, r8
	jarl [r2], r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 661
	cmp 0x0000000A, r10
	bnz9 .BB.LABEL.8_23
.BB.LABEL.8_22:	; if_then_bb241
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 663
	mov r23, r2
	shl 0x00000006, r2
	mov #_Dcm_MsgCtrl, r5
	add r2, r5
	mov 0x00000001, r2
	st.b r2, 0x0000003D[r5]
.BB.LABEL.8_23:	; if_break_bb249
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 668
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.8_26
.BB.LABEL.8_24:	; bb254
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	movhi HIGHW1(#_DcmPbCfgPtr), r0, r2
	ld.w LOWW(#_DcmPbCfgPtr)[r2], r2
	ld.w 0x00000000[r2], r2
	ld.w 0x00000004[r2], r2
	mulh 0x0000000C, r27
	add r27, r2
	ld.w 0x00000004[r2], r2
	cmp 0x00000002, r2
	bh9 .BB.LABEL.8_26
.BB.LABEL.8_25:	; if_then_bb275
	movea 0x00000014, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 673
	st.b r2, 0x00000000[r22]
	mov 0x00000001, r10
.BB.LABEL.8_26:	; if_break_bb277
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	mov r10, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 676
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.8_28
.BB.LABEL.8_27:	; if_then_bb283
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 678
	mov #_Dcm_Channel, r2
	add r2, r28
	movea 0x0000006E, r0, r2
	st.b r2, 0x00000000[r28]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 679
	mov r26, r2
	shr 0x00000008, r2
	st.b r2, 0x00000001[r28]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 680
	st.b r26, 0x00000002[r28]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 681
	shl 0x00000006, r23
	mov #_Dcm_MsgCtrl, r2
	add r23, r2
	mov 0x00000003, r5
	st.w r5, 0x00000020[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 682
	st.w r5, 0x00000018[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 683
	st.w r28, 0x00000014[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 684
	mov r21, r6
	jarl _DsdInternal_ProcessingDone, r31
.BB.LABEL.8_28:	; if_break_bb307
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 0
	mov r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/Common/Dcm/UDS/Dcm_UDS0x2E.c", 688
	dispose 0x0000001C, 0x000007FF, [r31]
