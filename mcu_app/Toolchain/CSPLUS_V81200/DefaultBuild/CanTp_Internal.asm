#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Communication\CAN\CanTp\CanTp_Internal.c -oDefaultBuild\CanTp_Internal.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_1177136974204c65b9fbee9d003880530zs5o2mo.qgx
#@	compiled at Fri Mar 27 09:50:20 2026

	.file "..\..\Bsw\Communication\CAN\CanTp\CanTp_Internal.c"

	$reg_mode 32
	.dbl_size 8

	.extern _CanTp_ConfigPtr
	.public _CanTp_Channels, 192
	.public _CanTp_GetRxSduCfgByNpdu
	.public _CanTp_RxGetSFDl
	.public _CanTp_RxGetFFDl
	.public _CanTp_CalcBS
	.public _CanTp_CompareBufferWithBs
	.public _CanTp_SendFC
	.public _CanTp_MemorySet
	.extern _SchM_Enter_CanTp_ExclusiveArea
	.extern _SchM_Exit_CanTp_ExclusiveArea
	.extern _CanIf_Transmit
	.public _CanTp_RxGetCFOffset
	.public _CanTp_GetTxSduCfgByFCNpdu
	.public _CanTp_GetChannelFCInfo
	.public _CanTp_CheckTxLengthInAddressMode
	.public _CanTp_TxHandleTransmitReq
	.public _CanTp_ConstructFFPci
	.public _CanTp_ConstructCFPci
	.public _CanTp_ConstructSFPci
	.public _CanTp_TxSFPadding
	.extern _CanTp_MatchDLC

	.section .text, text
_CanTp_GetRxSduCfgByNpdu:
	.stack _CanTp_GetRxSduCfgByNpdu = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 55
	mov 0x00000000, r10
	mov r10, r2
	br9 .BB.LABEL.1_12
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 70
	andi 0x000000FF, r2, r11
	ld.w 0x00000004[r5], r5
	mov 0x00000000, r12
	br9 .BB.LABEL.1_10
.BB.LABEL.1_2:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 73
	mov r11, r13
	shl 0x00000005, r13
	add r5, r13
	ld.w 0x00000014[r13], r13
	andi 0x000000FF, r12, r14
	mov r14, r15
	mul 0x00000044, r15, r0
	add r13, r15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 74
	ld.w 0x00000010[r15], r16
	cmp 0x00000000, r16
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; bb16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r16
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_4:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 78
	ld.w 0x00000000[r7], r16
	ld.b 0x00000000[r16], r16
	mov 0xFFFFFFF0, r17
	and r17, r16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 79
	mulhi 0x00000044, r14, r14
	add r14, r13
	ld.hu 0x00000018[r13], r13
	cmp r13, r6
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_5:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	andi 0x000000FF, r16, r13
	addi 0xFFFFFFE0, r13, r0
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_6:	; bb42
	andi 0x000000FF, r16, r0
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; bb42
	andi 0x000000FF, r16, r13
	add 0xFFFFFFF0, r13
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 84
	st.b r16, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 85
	st.b r2, 0x00000000[r9]
	mov r15, r10
.BB.LABEL.1_9:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	add 0x00000001, r12
.BB.LABEL.1_10:	; bb85
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 71
	mov r11, r13
	shl 0x00000005, r13
	add r5, r13
	ld.bu 0x00000011[r13], r13
	andi 0x000000FF, r12, r14
	cmp r13, r14
	bl9 .BB.LABEL.1_2
.BB.LABEL.1_11:	; bb95
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	add 0x00000001, r2
.BB.LABEL.1_12:	; bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 68
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r5
	ld.w LOWW(#_CanTp_ConfigPtr)[r5], r5
	ld.bu 0x00000000[r5], r11
	andi 0x000000FF, r2, r12
	cmp r11, r12
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_14:	; bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 119
	jmp [r31]
_CanTp_RxGetSFDl:
	.stack _CanTp_RxGetSFDl = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 134
	ld.w 0x00000010[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 146
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; entry.switch_break_bb_crit_edge
	movea 0x000000FF, r0, r2
	br9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; switch_clause_bb
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 152
	st.b r2, 0x00000000[r9]
	mov 0x00000000, r2
.BB.LABEL.2_4:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 170
	ld.w 0x00000000[r6], r5
	add r2, r5
	ld.bu 0x00000000[r5], r5
	andi 0x0000000F, r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 172
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	ld.hu 0x00000008[r6], r5
	cmp 0x00000009, r5
	bl9 .BB.LABEL.2_8
.BB.LABEL.2_6:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 175
	ld.w 0x00000040[r7], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.2_11
.BB.LABEL.2_7:	; if_then_bb43
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 177
	ld.w 0x00000000[r6], r5
	add r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 178
	ld.bu 0x00000001[r5], r10
	ld.b 0x00000000[r9], r5
	add 0x00000001, r5
	st.b r5, 0x00000000[r9]
	br9 .BB.LABEL.2_11
.BB.LABEL.2_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 181
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_11
.BB.LABEL.2_9:	; bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	ld.hu 0x00000008[r6], r5
	cmp 0x00000009, r5
	bl9 .BB.LABEL.2_11
.BB.LABEL.2_10:	; if_then_bb76
	mov 0x00000000, r10
.BB.LABEL.2_11:	; if_break_bb79
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 189
	st.b r2, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 193
	jmp [r31]
_CanTp_RxGetFFDl:
	.stack _CanTp_RxGetFFDl = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 328
	ld.w 0x00000010[r8], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 337
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; entry.switch_break_bb_crit_edge
	movea 0x000000FF, r0, r2
	br9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; switch_clause_bb
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 342
	st.b r2, 0x00000000[r7]
	mov 0x00000000, r2
.BB.LABEL.3_4:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 359
	add r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 361
	ld.bu 0x00000001[r2], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 359
	ld.b 0x00000000[r2], r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 360
	shl 0x00000008, r6
	andi 0x00000F00, r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 361
	or r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 364
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 367
	ld.bu 0x00000002[r2], r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 368
	shl 0x00000008, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 369
	ld.bu 0x00000003[r2], r5
	or r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 370
	shl 0x00000008, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 371
	ld.bu 0x00000004[r2], r5
	or r5, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 372
	shl 0x00000008, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 373
	ld.bu 0x00000005[r2], r2
	or r2, r10
	movea 0x00000FFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 374
	cmp r2, r10
	bh9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; if_then_bb.if_break_bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 380
	ld.b 0x00000000[r7], r2
	add 0x00000004, r2
	st.b r2, 0x00000000[r7]
	zxh r10
.BB.LABEL.3_8:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 385
	jmp [r31]
_CanTp_CalcBS:
	.stack _CanTp_CalcBS = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 401
	ld.bu 0x00000034[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 417
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_18
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 420
	tst1 0x00000000, 0x0000003D[r7]
	bz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	ld.bu 0x00000038[r7], r2
	br9 .BB.LABEL.4_6
.BB.LABEL.4_3:	; bb25
	ld.w 0x00000000[r6], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; bb25.bb42_crit_edge
	mov 0x00000000, r2
	br9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; bb31
	ld.bu 0x00000000[r2], r2
.BB.LABEL.4_6:	; bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 423
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 426
	st.b r0, 0x00000034[r7]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.4_8:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 431
	ld.w 0x00000010[r6], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.4_11
.BB.LABEL.4_9:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r5
	bz9 .BB.LABEL.4_11
.BB.LABEL.4_10:	; if_else_bb.switch_break_bb_crit_edge
	movea 0x000000FF, r0, r5
	mov r5, r9
	br9 .BB.LABEL.4_12
.BB.LABEL.4_11:	; switch_clause_bb
	mov 0x00000007, r9
	mov 0x00000001, r5
.BB.LABEL.4_12:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 458
	ld.w 0x00000040[r6], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.4_14
.BB.LABEL.4_13:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	ld.hu 0x00000036[r7], r9
	sub r5, r9
.BB.LABEL.4_14:	; bb76
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 465
	mov r9, r5
	mul r2, r5, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 467
	zxh r5
	cmp r8, r5
	bnh9 .BB.LABEL.4_17
.BB.LABEL.4_15:	; bb93
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	ld.hu 0x0000002E[r7], r5
	cmp r5, r8
	bnc9 .BB.LABEL.4_17
.BB.LABEL.4_16:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 469
	divhu r9, r8, r0
	st.b r8, 0x00000034[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 470
	andi 0x000000FF, r8, r0
	setf 0x00000002, r10
	jmp [r31]
.BB.LABEL.4_17:	; if_else_bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 474
	st.b r2, 0x00000034[r7]
.BB.LABEL.4_18:	; if_break_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 482
	jmp [r31]
_CanTp_CompareBufferWithBs:
	.stack _CanTp_CompareBufferWithBs = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 497
	ld.w 0x00000010[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 506
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; entry.switch_break_bb_crit_edge
	movea 0x000000FF, r0, r2
	br9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; switch_clause_bb
	mov 0x00000001, r2
.BB.LABEL.5_4:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 528
	ld.w 0x00000040[r6], r5
	cmp 0x00000000, r5
	ld.bu 0x00000034[r7], r5
	bnz9 .BB.LABEL.5_6
.BB.LABEL.5_5:	; switch_break_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov 0x00000008, r6
	br9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 536
	ld.hu 0x00000036[r7], r6
.BB.LABEL.5_7:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	sub r2, r6
	mul r6, r5, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 544
	zxh r5
	cmp r8, r5
	bnh9 .BB.LABEL.5_10
.BB.LABEL.5_8:	; if_else_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 550
	ld.hu 0x0000002E[r7], r2
	cmp r2, r8
	bnc9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; if_else_bb47.if_break_bb59_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.5_11
.BB.LABEL.5_10:	; if_then_bb57
	mov 0x00000000, r10
.BB.LABEL.5_11:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 557
	jmp [r31]
_CanTp_SendFC:
	.stack _CanTp_SendFC = 96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 572
	prepare 0x00000061, 0x00000054
	mov r6, r20
	st.w r8, 0x0000004C[r3]
	st.w r9, 0x00000050[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 585
	jarl _SchM_Enter_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 599
	ld.w 0x00000010[r20], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; entry.switch_break_bb_crit_edge
	mov 0x00000000, r2
	movea 0x000000FF, r0, r5
	br9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; switch_clause_bb
	mov 0x00000003, r2
	mov 0x00000000, r5
.BB.LABEL.6_4:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 621
	addi 0xFFFFFF01, r5, r0
	bz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 623
	add r6, r5
	movea 0x0000004C, r3, r6
	ld.b 0x00000000[r6], r7
	ori 0x00000030, r7, r7
	st.b r7, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 624
	ld.b 0x00000001[r6], r6
	st.b r6, 0x00000001[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 625
	ld.w 0x00000050[r3], r6
	st.b r6, 0x00000002[r5]
.BB.LABEL.6_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 658
	ld.w 0x00000024[r20], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_then_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov 0x00000008, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 660
	mov r21, r8
	sub r2, r8
	zxh r2
	mov r3, r6
	add r2, r6
	zxh r8
	movea 0x000000AA, r0, r7
	jarl _CanTp_MemorySet, r31
	mov r21, r2
.BB.LABEL.6_8:	; if_break_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 663
	st.h r2, 0x00000048[r3]
	mov r3, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 664
	st.w r2, 0x00000040[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 665
	jarl _SchM_Exit_CanTp_ExclusiveArea, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 667
	ld.hu 0x0000001C[r20], r6
	movea 0x00000040, r3, r7
	jarl _CanIf_Transmit, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 674
	dispose 0x00000054, 0x00000061, [r31]
_CanTp_MemorySet:
	.stack _CanTp_MemorySet = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 689
	mov 0x00000000, r2
	br9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 694
	andi 0x0000FFFF, r2, r5
	add r6, r5
	st.b r7, 0x00000000[r5]
	add 0x00000001, r2
.BB.LABEL.7_2:	; bb11
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 692
	andi 0x0000FFFF, r2, r5
	cmp r8, r5
	bl9 .BB.LABEL.7_1
.BB.LABEL.7_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 696
	jmp [r31]
_CanTp_RxGetCFOffset:
	.stack _CanTp_RxGetCFOffset = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 789
	ld.w 0x00000010[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 794
	cmp 0x00000000, r2
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 798
	st.b r0, 0x00000000[r8]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 799
	st.b r2, 0x00000000[r7]
.BB.LABEL.8_3:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 816
	jmp [r31]
_CanTp_GetTxSduCfgByFCNpdu:
	.stack _CanTp_GetTxSduCfgByFCNpdu = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 831
	mov 0x00000000, r10
	mov r10, r2
	br9 .BB.LABEL.9_12
.BB.LABEL.9_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 845
	andi 0x000000FF, r2, r9
	ld.w 0x00000004[r5], r5
	mov 0x00000000, r11
	br9 .BB.LABEL.9_9
.BB.LABEL.9_2:	; bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 849
	mov r9, r12
	shl 0x00000005, r12
	add r5, r12
	ld.w 0x0000001C[r12], r12
	andi 0x000000FF, r11, r13
	mov r13, r14
	mul 0x00000038, r14, r0
	add r12, r14
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 850
	ld.w 0x00000024[r14], r15
	cmp 0x00000001, r15
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_3:	; bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mulhi 0x00000038, r13, r15
	add r12, r15
	ld.hu 0x00000016[r15], r15
	cmp r15, r6
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 852
	mulhi 0x00000038, r13, r13
	add r13, r12
	ld.w 0x0000000C[r12], r12
	cmp 0x00000000, r12
	bz9 .BB.LABEL.9_6
.BB.LABEL.9_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r12
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_6:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 857
	ld.w 0x00000000[r7], r12
	ld.bu 0x00000000[r12], r12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 858
	andi 0x000000F0, r12, r12
	addi 0xFFFFFFD0, r12, r0
	bnz9 .BB.LABEL.9_8
.BB.LABEL.9_7:	; if_then_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 861
	st.b r2, 0x00000000[r8]
	mov r14, r10
.BB.LABEL.9_8:	; if_break_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	add 0x00000001, r11
.BB.LABEL.9_9:	; bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 846
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_11
.BB.LABEL.9_10:	; bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov r9, r12
	shl 0x00000005, r12
	add r5, r12
	ld.bu 0x00000018[r12], r12
	andi 0x000000FF, r11, r13
	cmp r12, r13
	bl9 .BB.LABEL.9_2
.BB.LABEL.9_11:	; bb87
	add 0x00000001, r2
.BB.LABEL.9_12:	; bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 843
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_14
.BB.LABEL.9_13:	; bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	movhi HIGHW1(#_CanTp_ConfigPtr), r0, r5
	ld.w LOWW(#_CanTp_ConfigPtr)[r5], r5
	ld.bu 0x00000000[r5], r9
	andi 0x000000FF, r2, r11
	cmp r9, r11
	bl9 .BB.LABEL.9_1
.BB.LABEL.9_14:	; bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 895
	jmp [r31]
_CanTp_GetChannelFCInfo:
	.stack _CanTp_GetChannelFCInfo = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1002
	ld.w 0x00000000[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1031
	ld.bu 0x00000000[r2], r2
	andi 0x0000000F, r2, r2
	st.b r2, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1032
	ld.w 0x00000000[r7], r2
	ld.b 0x00000001[r2], r2
	st.b r2, 0x00000001[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1035
	ld.w 0x00000000[r7], r2
	ld.bu 0x00000002[r2], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1036
	addi 0xFFFFFF81, r2, r0
	bgt9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1039
	mulhi 0x000003E8, r2, r2
	br9 .BB.LABEL.10_6
.BB.LABEL.10_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1041
	addi 0xFFFFFF0F, r2, r0
	blt9 .BB.LABEL.10_4
.BB.LABEL.10_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	addi 0xFFFFFF06, r2, r0
	blt9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; if_else_bb.if_break_bb68_crit_edge
	mov 0x0001F018, r2
	br9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1044
	mulhi 0x00000064, r2, r2
	movea 0xFFFFA240, r2, r2
.BB.LABEL.10_6:	; if_break_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1052
	movea 0x000001F4, r2, r2
	movea 0x000003E8, r0, r5
	divhu r5, r2, r0
	st.w r2, 0x00000004[r8]
	jmp [r31]
_CanTp_CheckTxLengthInAddressMode:
	.stack _CanTp_CheckTxLengthInAddressMode = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1068
	ld.w 0x00000024[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1074
	cmp 0x00000001, r2
	bz9 .BB.LABEL.11_7
.BB.LABEL.11_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_2:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1078
	ld.w 0x0000000C[r6], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_4
.BB.LABEL.11_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r2
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_4:	; switch_clause_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1083
	ld.hu 0x00000008[r7], r2
	cmp 0x00000008, r2
	blt9 .BB.LABEL.11_7
.BB.LABEL.11_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	ld.w 0x00000034[r6], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_6:	; bb21
	ld.hu 0x0000001C[r6], r5
	add 0xFFFFFFFE, r5
	cmp r2, r5
	ble9 .BB.LABEL.11_8
.BB.LABEL.11_7:	; switch_clause_bb47
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1122
	jmp [r31]
.BB.LABEL.11_8:	; switch_break_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1122
	jmp [r31]
_CanTp_TxHandleTransmitReq:
	.stack _CanTp_TxHandleTransmitReq = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1216
	ld.w 0x0000000C[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1231
	cmp 0x00000000, r2
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.12_3
.BB.LABEL.12_2:	; entry.switch_break_bb_crit_edge
	movea 0x000000FF, r0, r2
	br9 .BB.LABEL.12_7
.BB.LABEL.12_3:	; switch_clause_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1238
	ld.w 0x00000034[r7], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.12_5
.BB.LABEL.12_4:	; switch_clause_bb.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.12_7
.BB.LABEL.12_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1242
	ld.hu 0x00000030[r6], r2
	cmp 0x00000008, r2
	bl9 .BB.LABEL.12_4
.BB.LABEL.12_6:	; if_then_bb19
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov 0x00000002, r2
.BB.LABEL.12_7:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1274
	addi 0xFFFFFF01, r2, r0
	bz9 .BB.LABEL.12_11
.BB.LABEL.12_8:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1276
	ld.hu 0x0000001C[r7], r5
	sub r2, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1277
	zxh r5
	ld.hu 0x00000030[r6], r2
	cmp r2, r5
	bnc9 .BB.LABEL.12_10
.BB.LABEL.12_9:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	movea 0x00000010, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1280
	st.b r2, 0x00000028[r6]
	mov 0x00000005, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1281
	st.w r2, 0x00000020[r6]
	mov 0x0000000A, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1282
	st.w r2, 0x00000024[r6]
	jmp [r31]
.BB.LABEL.12_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1290
	st.b r0, 0x00000028[r6]
	mov 0x00000003, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1291
	st.w r2, 0x00000020[r6]
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1292
	st.w r2, 0x00000024[r6]
.BB.LABEL.12_11:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1298
	jmp [r31]
_CanTp_ConstructFFPci:
	.stack _CanTp_ConstructFFPci = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1312
	ld.w 0x0000000C[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1322
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1321
	ld.hu 0x00000030[r6], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1322
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; entry.switch_break_bb_crit_edge
	movea 0x000000FF, r0, r2
	br9 .BB.LABEL.13_4
.BB.LABEL.13_3:	; switch_clause_bb
	mov 0x00000000, r2
.BB.LABEL.13_4:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1344
	mov r8, r6
	add r2, r6
	movea 0x00000FFF, r0, r7
	cmp r7, r5
	bh9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1348
	mov r5, r7
	shr 0x00000008, r7
	ori 0x00000010, r7, r7
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1349
	addi 0x00000001, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1351
	zxb r6
	add r6, r8
	st.b r5, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1352
	add 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1353
	st.b r2, 0x00000000[r9]
	jmp [r31]
.BB.LABEL.13_6:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1359
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1360
	addi 0x00000001, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1361
	zxb r6
	add r8, r6
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1362
	addi 0x00000002, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1363
	zxb r6
	add r8, r6
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1364
	addi 0x00000003, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1365
	zxb r6
	add r8, r6
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1366
	addi 0x00000004, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1367
	zxb r6
	add r8, r6
	mov r5, r7
	shr 0x00000008, r7
	st.b r7, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1368
	addi 0x00000005, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1369
	zxb r6
	add r6, r8
	st.b r5, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1370
	add 0x00000006, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1371
	st.b r2, 0x00000000[r9]
	jmp [r31]
_CanTp_ConstructCFPci:
	.stack _CanTp_ConstructCFPci = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1387
	ld.b 0x0000003B[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1416
	ori 0x00000020, r2, r2
	st.b r2, 0x00000000[r8]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1418
	st.b r2, 0x00000000[r9]
	jmp [r31]
_CanTp_ConstructSFPci:
	.stack _CanTp_ConstructSFPci = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1434
	ld.hu 0x00000030[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1448
	addi 0xFFFFFFF8, r2, r5
	zxh r5
	cmp 0x00000002, r5
	bh9 .BB.LABEL.15_2
.BB.LABEL.15_1:	; entry.if_break_bb143_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov 0x0000000C, r5
	br9 .BB.LABEL.15_15
.BB.LABEL.15_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1452
	addi 0xFFFFFFF5, r2, r5
	zxh r5
	cmp 0x00000003, r5
	bh9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_else_bb.if_break_bb143_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	movea 0x00000010, r0, r5
	br9 .BB.LABEL.15_15
.BB.LABEL.15_4:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1456
	addi 0xFFFFFFF1, r2, r5
	zxh r5
	cmp 0x00000003, r5
	bh9 .BB.LABEL.15_6
.BB.LABEL.15_5:	; if_else_bb42.if_break_bb143_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	movea 0x00000014, r0, r5
	br9 .BB.LABEL.15_15
.BB.LABEL.15_6:	; if_else_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1460
	movea 0xFFFFFFED, r2, r5
	zxh r5
	cmp 0x00000003, r5
	bh9 .BB.LABEL.15_8
.BB.LABEL.15_7:	; if_else_bb61.if_break_bb143_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	movea 0x00000018, r0, r5
	br9 .BB.LABEL.15_15
.BB.LABEL.15_8:	; if_else_bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1464
	movea 0xFFFFFFE9, r2, r5
	zxh r5
	cmp 0x00000007, r5
	bh9 .BB.LABEL.15_10
.BB.LABEL.15_9:	; if_else_bb80.if_break_bb143_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	movea 0x00000020, r0, r5
	br9 .BB.LABEL.15_15
.BB.LABEL.15_10:	; if_else_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1468
	movea 0xFFFFFFE1, r2, r5
	zxh r5
	cmp 0x0000000F, r5
	bh9 .BB.LABEL.15_12
.BB.LABEL.15_11:	; if_else_bb99.if_break_bb143_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	movea 0x00000030, r0, r5
	br9 .BB.LABEL.15_15
.BB.LABEL.15_12:	; if_else_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1472
	movea 0xFFFFFFD1, r2, r5
	zxh r5
	cmp 0x0000000F, r5
	bh9 .BB.LABEL.15_14
.BB.LABEL.15_13:	; if_else_bb118.if_break_bb143_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	movea 0x00000040, r0, r5
	br9 .BB.LABEL.15_15
.BB.LABEL.15_14:	; if_else_bb137
	mov 0x00000008, r5
.BB.LABEL.15_15:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1482
	ld.w 0x0000000C[r7], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.15_18
.BB.LABEL.15_16:	; if_break_bb143
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r6
	bz9 .BB.LABEL.15_18
.BB.LABEL.15_17:	; if_break_bb143.switch_break_bb_crit_edge
	movea 0x000000FF, r0, r6
	br9 .BB.LABEL.15_19
.BB.LABEL.15_18:	; switch_clause_bb
	mov 0x00000000, r6
.BB.LABEL.15_19:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1505
	mov r8, r7
	add r6, r7
	zxh r5
	cmp 0x00000008, r5
	bh9 .BB.LABEL.15_21
.BB.LABEL.15_20:	; if_then_bb153
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1509
	andi 0x0000000F, r2, r2
	st.b r2, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1510
	add 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1511
	st.b r6, 0x00000000[r9]
	jmp [r31]
.BB.LABEL.15_21:	; if_else_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1517
	st.b r0, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1518
	addi 0x00000001, r6, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1519
	zxb r5
	add r5, r8
	st.b r2, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1520
	add 0x00000002, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1521
	st.b r6, 0x00000000[r9]
	jmp [r31]
_CanTp_TxSFPadding:
	.stack _CanTp_TxSFPadding = 12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1603
	prepare 0x00000061, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1613
	ld.w 0x0000000C[r7], r2
	cmp 0x00000000, r2
	mov r8, r20
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	cmp 0x00000002, r2
	bz9 .BB.LABEL.16_3
.BB.LABEL.16_2:	; entry.switch_break_bb_crit_edge
	mov 0x00000000, r2
	mov r2, r5
	br9 .BB.LABEL.16_4
.BB.LABEL.16_3:	; switch_clause_bb
	mov 0x00000002, r5
	mov 0x00000007, r2
.BB.LABEL.16_4:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1637
	zxh r2
	ld.hu 0x00000030[r6], r8
	cmp r8, r2
	bnc9 .BB.LABEL.16_7
.BB.LABEL.16_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	ld.w 0x00000034[r7], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.16_7
.BB.LABEL.16_6:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1640
	ld.h 0x00000030[r6], r6
	add r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1642
	zxh r6
	jarl _CanTp_MatchDLC, r31
	mov r10, r21
	br9 .BB.LABEL.16_9
.BB.LABEL.16_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1654
	ld.w 0x00000020[r7], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.16_10
.BB.LABEL.16_8:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 0
	mov 0x00000008, r21
.BB.LABEL.16_9:	; if_then_bb64
	ld.hu 0x00000008[r20], r8
	ld.w 0x00000000[r20], r6
	add r8, r6
	subr r21, r8
	zxh r8
	movea 0x000000AA, r0, r7
	jarl _CanTp_MemorySet, r31
	st.h r21, 0x00000008[r20]
.BB.LABEL.16_10:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Communication/CAN/CanTp/CanTp_Internal.c", 1665
	dispose 0x00000000, 0x00000061, [r31]
	.section .bss, bss
	.align 4
_CanTp_Channels:
	.ds (192)
