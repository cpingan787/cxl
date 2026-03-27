#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Libraries\E2E\E2E_P02.c -oDefaultBuild\E2E_P02.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_5a1026fca4b9444f963c4065e6299c415l1c0epz.eap
#@	compiled at Fri Mar 27 09:50:15 2026

	.file "..\..\Bsw\Libraries\E2E\E2E_P02.c"

	$reg_mode 32
	.dbl_size 8

	.public _E2E_P02Protect
	.extern _Crc_CalculateCRC8H2F
	.public _E2E_P02ProtectInit
	.public _E2E_P02Check
	.public _E2E_P02CheckInit
	.public _E2E_P02MapStatusToSM

	.section .text, text
_E2E_P02Protect:
	.stack _E2E_P02Protect = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 111
	prepare 0x00000079, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 116
	jarl _E2E_P02ProtectVerifyInputs.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 117
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 122
	cmp 0x00000000, r20
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb.if_break_bb91_crit_edge
	movea 0x00000013, r0, r23
	br9 .BB.LABEL.1_9
.BB.LABEL.1_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 128
	ld.bu 0x00000000[r21], r2
	cmp 0x0000000F, r2
	bl9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	mov 0x00000000, r2
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 130
	add 0x00000001, r2
.BB.LABEL.1_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	st.b r2, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 136
	ld.bu 0x00000001[r22], r5
	andi 0x000000F0, r5, r5
	or r2, r5
	st.b r5, 0x00000001[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 137
	ld.bu 0x00000000[r21], r2
	add r20, r2
	ld.b 0x00000002[r2], r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 138
	ld.hu 0x00000000[r20], r7
	shr 0x00000003, r7
	add 0xFFFFFFFF, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 136
	addi 0x00000001, r22, r6
	mov 0x00000001, r20
	movea 0x000000FF, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 138
	mov r20, r9
	jarl _Crc_CalculateCRC8H2F, r31
	mov 0x00000000, r9
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 139
	mov r20, r7
	mov r10, r8
	jarl _Crc_CalculateCRC8H2F, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 140
	st.b r10, 0x00000000[r22]
.BB.LABEL.1_9:	; if_break_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 145
	dispose 0x00000004, 0x00000079, [r31]
_E2E_P02ProtectInit:
	.stack _E2E_P02ProtectInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 161
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 166
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 172
	st.b r0, 0x00000000[r6]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 175
	jmp [r31]
_AnalysisDeltaCounter.1:
	.stack _AnalysisDeltaCounter.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 181
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 187
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 189
	ld.bu 0x0000000D[r7], r2
	cmp 0x0000000E, r2
	bh9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_then_bb15
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 191
	add 0x00000001, r2
	st.b r2, 0x0000000D[r7]
.BB.LABEL.3_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 193
	st.w r2, 0x00000008[r7]
	jmp [r31]
.BB.LABEL.3_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 195
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_5:	; if_then_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 197
	ld.b 0x00000012[r8], r2
	st.b r2, 0x00000001[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 198
	st.b r9, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 199
	st.b r0, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 200
	ld.bu 0x00000013[r8], r2
	ld.bu 0x0000000D[r7], r5
	st.b r0, 0x0000000D[r7]
	cmp r2, r5
	bh9 .BB.LABEL.3_15
.BB.LABEL.3_6:	; if_then_bb49
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 203
	ld.bu 0x0000000C[r7], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_7:	; if_else_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 210
	st.w r0, 0x00000008[r7]
	jmp [r31]
.BB.LABEL.3_8:	; if_else_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 220
	cmp 0x00000002, r6
	blt9 .BB.LABEL.3_16
.BB.LABEL.3_9:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	andi 0x000000FF, r6, r2
	ld.bu 0x00000001[r7], r5
	cmp r5, r2
	bh9 .BB.LABEL.3_16
.BB.LABEL.3_10:	; if_then_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 222
	ld.b 0x00000012[r8], r2
	st.b r2, 0x00000001[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 223
	st.b r9, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 224
	add 0xFFFFFFFF, r6
	st.b r6, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 225
	ld.bu 0x00000013[r8], r2
	ld.bu 0x0000000D[r7], r5
	st.b r0, 0x0000000D[r7]
	cmp r2, r5
	bh9 .BB.LABEL.3_15
.BB.LABEL.3_11:	; if_then_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 228
	ld.bu 0x0000000C[r7], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_14
.BB.LABEL.3_12:	; if_then_bb137
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	add 0xFFFFFFFF, r2
.BB.LABEL.3_13:	; if_then_bb137
	st.b r2, 0x0000000C[r7]
	mov 0x00000003, r2
	st.w r2, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 256
	jmp [r31]
.BB.LABEL.3_14:	; if_else_bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	movea 0x00000020, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 235
	st.w r2, 0x00000008[r7]
	jmp [r31]
.BB.LABEL.3_15:	; if_else_bb148
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	ld.b 0x00000014[r8], r2
	br9 .BB.LABEL.3_13
.BB.LABEL.3_16:	; if_else_bb159
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 247
	st.b r0, 0x0000000D[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 248
	ld.bu 0x00000014[r8], r2
	st.b r2, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 249
	cmp 0x00000000, r2
	bz9 .BB.LABEL.3_18
.BB.LABEL.3_17:	; if_then_bb174
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 251
	ld.b 0x00000012[r8], r2
	st.b r2, 0x00000001[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 252
	st.b r9, 0x00000000[r7]
	movea 0x00000040, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 253
	st.w r2, 0x00000008[r7]
.BB.LABEL.3_18:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 256
	jmp [r31]
_E2E_P02Check:
	.stack _E2E_P02Check = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 275
	prepare 0x00000779, 0x00000004
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 280
	jarl _E2E_P02CheckVerifyInputs.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 281
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.4_13
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 288
	ld.bu 0x00000001[r21], r2
	cmp 0x0000000E, r2
	bh9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 290
	add 0x00000001, r2
	st.b r2, 0x00000001[r21]
.BB.LABEL.4_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 293
	ld.bu 0x00000003[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_10
.BB.LABEL.4_4:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 295
	ld.bu 0x00000001[r22], r24
	andi 0x0000000F, r24, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 296
	mov r20, r2
	add r25, r2
	ld.b 0x00000002[r2], r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 297
	ld.hu 0x00000000[r20], r7
	shr 0x00000003, r7
	add 0xFFFFFFFF, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 295
	addi 0x00000001, r22, r6
	mov 0x00000001, r26
	movea 0x000000FF, r0, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 297
	mov r26, r9
	jarl _Crc_CalculateCRC8H2F, r31
	mov 0x00000000, r9
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 298
	mov r26, r7
	mov r10, r8
	jarl _Crc_CalculateCRC8H2F, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 300
	ld.bu 0x00000000[r22], r2
	cmp r2, r10
	bnz9 .BB.LABEL.4_8
.BB.LABEL.4_5:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 302
	ld.bu 0x00000002[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_6:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 304
	st.b r0, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 305
	ld.b 0x00000012[r20], r20
	st.b r20, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 306
	st.b r25, 0x00000000[r21]
	mov 0x00000004, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 307
	st.w r20, 0x00000008[r21]
	mov r23, r10
	dispose 0x00000004, 0x00000779, [r31]
.BB.LABEL.4_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 312
	ld.b 0x00000000[r21], r2
	andi 0x0000000F, r24, r5
	sub r2, r5
	movea 0x00000010, r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 315
	mov r5, r6
	sxb r6
	cmp 0x00000000, r6
	cmov 0x0000000C, r5, r2, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 317
	sxb r6
	mov r21, r7
	mov r20, r8
	mov r25, r9
	jarl _AnalysisDeltaCounter.1, r31
	mov r23, r10
	dispose 0x00000004, 0x00000779, [r31]
.BB.LABEL.4_8:	; if_else_bb114
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	mov 0x00000002, r2
.BB.LABEL.4_9:	; if_else_bb114
	st.w r2, 0x00000008[r21]
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 336
	dispose 0x00000004, 0x00000779, [r31]
.BB.LABEL.4_10:	; if_else_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 327
	ld.bu 0x0000000D[r21], r2
	cmp 0x0000000E, r2
	bh9 .BB.LABEL.4_12
.BB.LABEL.4_11:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 329
	add 0x00000001, r2
	st.b r2, 0x0000000D[r21]
.BB.LABEL.4_12:	; if_break_bb131
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.4_9
.BB.LABEL.4_13:	; if_break_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 336
	mov r23, r10
	dispose 0x00000004, 0x00000779, [r31]
_E2E_P02CheckInit:
	.stack _E2E_P02CheckInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 352
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 358
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 364
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 365
	st.b r0, 0x00000001[r6]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 366
	st.b r2, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 367
	st.b r2, 0x00000003[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 368
	st.b r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 369
	st.w r2, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 370
	st.b r0, 0x0000000D[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 371
	st.b r0, 0x0000000C[r6]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 374
	jmp [r31]
_E2E_P02MapStatusToSM:
	.stack _E2E_P02MapStatusToSM = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 390
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 395
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; entry.if_break_bb29_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	mov 0x00000003, r10
.BB.LABEL.6_2:	; if_break_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 456
	zxb r10
	jmp [r31]
.BB.LABEL.6_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 400
	cmp 0x00000001, r8
	bnz9 .BB.LABEL.6_18
.BB.LABEL.6_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 402
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.6_9
.BB.LABEL.6_5:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.6_15
.BB.LABEL.6_6:	; if_then_bb13
	cmp 0x00000001, r7
	bz9 .BB.LABEL.6_16
.BB.LABEL.6_7:	; if_then_bb13
	cmp 0x00000003, r7
	bz9 .BB.LABEL.6_15
.BB.LABEL.6_8:	; switch_clause_bb19
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 423
	jmp [r31]
.BB.LABEL.6_9:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	addi 0xFFFFFFE1, r7, r0
	bgt9 .BB.LABEL.6_13
.BB.LABEL.6_10:	; if_then_bb13
	cmp 0x00000004, r7
	bz9 .BB.LABEL.6_17
.BB.LABEL.6_11:	; if_then_bb13
	cmp 0x00000008, r7
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_12:	; switch_clause_bb16
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 413
	jmp [r31]
.BB.LABEL.6_13:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	addi 0xFFFFFFC0, r7, r0
	bz9 .BB.LABEL.6_17
.BB.LABEL.6_14:	; if_then_bb13
	addi 0xFFFFFFE0, r7, r0
	bnz9 .BB.LABEL.6_8
.BB.LABEL.6_15:	; if_then_bb13.if_break_bb29_crit_edge
	mov 0x00000000, r10
	br9 .BB.LABEL.6_2
.BB.LABEL.6_16:	; switch_clause_bb17
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 416
	jmp [r31]
.BB.LABEL.6_17:	; switch_clause_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 420
	jmp [r31]
.BB.LABEL.6_18:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 430
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.6_23
.BB.LABEL.6_19:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.6_15
.BB.LABEL.6_20:	; if_else_bb20
	cmp 0x00000001, r7
	bz9 .BB.LABEL.6_30
.BB.LABEL.6_21:	; if_else_bb20
	cmp 0x00000003, r7
	bz9 .BB.LABEL.6_29
.BB.LABEL.6_22:	; switch_clause_bb27
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 451
	jmp [r31]
.BB.LABEL.6_23:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	addi 0xFFFFFFE1, r7, r0
	bgt9 .BB.LABEL.6_27
.BB.LABEL.6_24:	; if_else_bb20
	cmp 0x00000004, r7
	bz9 .BB.LABEL.6_15
.BB.LABEL.6_25:	; if_else_bb20
	cmp 0x00000008, r7
	bnz9 .BB.LABEL.6_22
.BB.LABEL.6_26:	; switch_clause_bb24
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 441
	jmp [r31]
.BB.LABEL.6_27:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	addi 0xFFFFFFE0, r7, r0
	bz9 .BB.LABEL.6_15
.BB.LABEL.6_28:	; if_else_bb20
	addi 0xFFFFFFC0, r7, r0
	bnz9 .BB.LABEL.6_22
.BB.LABEL.6_29:	; switch_clause_bb26
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 448
	jmp [r31]
.BB.LABEL.6_30:	; switch_clause_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 444
	jmp [r31]
_E2E_P02ProtectVerifyInputs.1:
	.stack _E2E_P02ProtectVerifyInputs.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 466
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 474
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; entry
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.7_4
.BB.LABEL.7_3:	; entry.if_break_bb35_crit_edge
	movea 0x00000013, r0, r10
	br9 .BB.LABEL.7_6
.BB.LABEL.7_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 477
	ld.bu 0x00000000[r7], r2
	cmp 0x0000000F, r2
	bnh9 .BB.LABEL.7_7
.BB.LABEL.7_5:	; if_then_bb.if_break_bb35_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	movea 0x00000017, r0, r10
.BB.LABEL.7_6:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 487
	zxb r10
	jmp [r31]
.BB.LABEL.7_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 483
	jmp [r31]
_E2E_P02CheckVerifyInputs.1:
	.stack _E2E_P02CheckVerifyInputs.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 493
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 501
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; entry
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; entry.if_break_bb81_crit_edge
	movea 0x00000013, r0, r10
	br9 .BB.LABEL.8_6
.BB.LABEL.8_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 503
	ld.bu 0x00000000[r7], r2
	cmp 0x0000000F, r2
	bnh9 .BB.LABEL.8_7
.BB.LABEL.8_5:	; if_then_bb.if_break_bb81_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	movea 0x00000017, r0, r10
.BB.LABEL.8_6:	; if_break_bb81
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 516
	zxb r10
	jmp [r31]
.BB.LABEL.8_7:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 0
	ld.bu 0x00000001[r7], r2
	cmp 0x0000000F, r2
	bh9 .BB.LABEL.8_5
.BB.LABEL.8_8:	; bb47
	ld.bu 0x0000000C[r7], r2
	ld.bu 0x00000014[r6], r5
	cmp r5, r2
	bh9 .BB.LABEL.8_5
.BB.LABEL.8_9:	; bb65
	ld.bu 0x0000000D[r7], r2
	cmp 0x0000000F, r2
	bh9 .BB.LABEL.8_5
.BB.LABEL.8_10:	; if_else_bb
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P02.c", 512
	jmp [r31]
