#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Libraries\E2E\E2E_P05.c -oDefaultBuild\E2E_P05.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_9b4d0e9f53aa4bc59d6fa52703422c52ooq133fi.f5b
#@	compiled at Fri Mar 27 09:50:17 2026

	.file "..\..\Bsw\Libraries\E2E\E2E_P05.c"

	$reg_mode 32
	.dbl_size 8

	.public _E2E_P05Protect
	.extern _Crc_CalculateCRC16
	.public _E2E_P05ProtectInit
	.public _E2E_P05Check
	.public _E2E_P05CheckInit
	.public _E2E_P05MapStatusToSM

	.section .text, text
_E2E_P05Protect:
	.stack _E2E_P05Protect = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 94
	prepare 0x00000479, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 107
	cmp 0x00000000, r6
	mov r9, r20
	mov r7, r21
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; entry
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; entry.if_break_bb44_crit_edge
	movea 0x00000013, r0, r22
	br9 .BB.LABEL.1_7
.BB.LABEL.1_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 109
	ld.hu 0x00000002[r6], r22
	shr 0x00000003, r22
	cmp r22, r20
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb.if_break_bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	mov 0x00000000, r22
	br9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_else_bb
	movea 0x00000017, r0, r22
.BB.LABEL.1_7:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 123
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.1_12
.BB.LABEL.1_8:	; if_then_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 125
	ld.b 0x00000004[r6], r2
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 126
	ld.hu 0x00000004[r6], r2
	shr 0x00000008, r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 128
	ld.hu 0x00000000[r6], r23
	shr 0x00000003, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 129
	mov r8, r24
	add r23, r24
	ld.b 0x00000000[r21], r2
	st.b r2, 0x00000002[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 131
	ld.hu 0x00000000[r6], r2
	mov 0x00000001, r9
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb82
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 133
	mov r8, r6
	mov r23, r7
	mov r2, r8
	jarl _Crc_CalculateCRC16, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 134
	sub r23, r20
	mov 0x00000000, r9
	mov r10, r8
	br9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_else_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	ori 0x0000FFFF, r0, r8
.BB.LABEL.1_11:	; if_else_bb101
	addi 0xFFFFFFFE, r20, r7
	addi 0x00000002, r24, r6
	jarl _Crc_CalculateCRC16, r31
	mov 0x00000000, r20
	mov 0x00000001, r23
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 140
	mov r23, r7
	mov r10, r8
	mov r20, r9
	jarl _Crc_CalculateCRC16, r31
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 141
	mov r23, r7
	mov r10, r8
	mov r20, r9
	jarl _Crc_CalculateCRC16, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 143
	st.b r10, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 144
	shr 0x00000008, r10
	st.b r10, 0x00000001[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 145
	ld.b 0x00000000[r21], r2
	add 0x00000001, r2
	st.b r2, 0x00000000[r21]
.BB.LABEL.1_12:	; if_break_bb135
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	andi 0x000000FF, r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 149
	dispose 0x00000004, 0x00000479, [r31]
_E2E_P05ProtectInit:
	.stack _E2E_P05ProtectInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 165
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 169
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 175
	st.b r0, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 176
	jmp [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 180
	jmp [r31]
_E2E_P05Check:
	.stack _E2E_P05Check = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 200
	prepare 0x000007FD, 0x00000004
	mov r9, r20
	mov r7, r21
	addi 0x00000000, r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 218
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; entry.if_break_bb86_crit_edge
	movea 0x00000013, r0, r23
	br9 .BB.LABEL.3_12
.BB.LABEL.3_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 220
	cmp 0x00000000, r8
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_5:	; bb40
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_6:	; bb40
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_7:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 222
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; if_then_bb64.if_break_bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	mov 0x00000000, r24
	mov r24, r23
	br9 .BB.LABEL.3_13
.BB.LABEL.3_9:	; if_then_bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 224
	ld.hu 0x00000002[r22], r23
	shr 0x00000003, r23
	cmp r23, r20
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_10:	; if_then_bb69.if_break_bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	mov 0x00000000, r23
	mov 0x00000001, r24
	br9 .BB.LABEL.3_13
.BB.LABEL.3_11:	; if_else_bb
	movea 0x00000017, r0, r23
.BB.LABEL.3_12:	; if_else_bb
	mov 0x00000000, r24
.BB.LABEL.3_13:	; if_break_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 249
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.3_36
.BB.LABEL.3_14:	; if_then_bb92
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 251
	ld.b 0x00000004[r22], r2
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 252
	ld.hu 0x00000004[r22], r2
	shr 0x00000008, r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 253
	cmp 0x00000001, r24
	bnz9 .BB.LABEL.3_19
.BB.LABEL.3_15:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 256
	ld.hu 0x00000000[r22], r2
	mov r2, r27
	shr 0x00000003, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 257
	mov r8, r28
	add r27, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 259
	ld.bu 0x00000000[r28], r25
	ld.b 0x00000001[r28], r26
	shl 0x00000008, r26
	or r26, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 261
	ld.bu 0x00000002[r28], r26
	mov 0x00000001, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 256
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 261
	bz9 .BB.LABEL.3_17
.BB.LABEL.3_16:	; if_then_bb146
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 263
	mov r8, r6
	mov r27, r7
	mov r2, r8
	jarl _Crc_CalculateCRC16, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 264
	sub r27, r20
	mov 0x00000000, r9
	mov r10, r8
	br9 .BB.LABEL.3_18
.BB.LABEL.3_17:	; if_else_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	ori 0x0000FFFF, r0, r8
.BB.LABEL.3_18:	; if_else_bb165
	addi 0xFFFFFFFE, r20, r7
	addi 0x00000002, r28, r6
	jarl _Crc_CalculateCRC16, r31
	mov 0x00000000, r20
	mov 0x00000001, r27
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 271
	mov r27, r7
	mov r10, r8
	mov r20, r9
	jarl _Crc_CalculateCRC16, r31
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 272
	mov r27, r7
	mov r10, r8
	mov r20, r9
	jarl _Crc_CalculateCRC16, r31
.BB.LABEL.3_19:	; if_break_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 275
	cmp 0x00000001, r24
	bnz9 .BB.LABEL.3_35
.BB.LABEL.3_20:	; if_then_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 277
	zxh r25
	zxh r10
	cmp r10, r25
	bnz9 .BB.LABEL.3_33
.BB.LABEL.3_21:	; if_then_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 280
	andi 0x000000FF, r26, r2
	ld.bu 0x00000004[r21], r5
	cmp r5, r2
	bl9 .BB.LABEL.3_23
.BB.LABEL.3_22:	; bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	subr r26, r5
	br9 .BB.LABEL.3_24
.BB.LABEL.3_23:	; bb213
	not r5, r5
	add r26, r5
	add 0x00000001, r5
.BB.LABEL.3_24:	; bb228
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 284
	andi 0x000000FF, r5, r2
	ld.bu 0x00000006[r22], r6
	cmp r6, r2
	bh9 .BB.LABEL.3_30
.BB.LABEL.3_25:	; if_then_bb241
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 286
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.3_29
.BB.LABEL.3_26:	; if_then_bb247
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 288
	zxb r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.3_28
.BB.LABEL.3_27:	; if_then_bb253
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 290
	st.w r0, 0x00000000[r21]
	br9 .BB.LABEL.3_32
.BB.LABEL.3_28:	; if_else_bb256
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	movea 0x00000020, r0, r2
	br9 .BB.LABEL.3_31
.BB.LABEL.3_29:	; if_else_bb260
	mov 0x00000008, r2
	br9 .BB.LABEL.3_31
.BB.LABEL.3_30:	; if_else_bb264
	movea 0x00000040, r0, r2
.BB.LABEL.3_31:	; if_else_bb264
	st.w r2, 0x00000000[r21]
.BB.LABEL.3_32:	; if_break_bb267
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 306
	st.b r26, 0x00000004[r21]
	andi 0x000000FF, r23, r10
	dispose 0x00000004, 0x000007FD, [r31]
.BB.LABEL.3_33:	; if_else_bb271
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	mov 0x00000007, r2
.BB.LABEL.3_34:	; if_else_bb271
	st.w r2, 0x00000000[r21]
	andi 0x000000FF, r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 320
	dispose 0x00000004, 0x000007FD, [r31]
.BB.LABEL.3_35:	; if_else_bb275
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.3_34
.BB.LABEL.3_36:	; if_break_bb279
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 320
	andi 0x000000FF, r23, r10
	dispose 0x00000004, 0x000007FD, [r31]
_E2E_P05CheckInit:
	.stack _E2E_P05CheckInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 336
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 341
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 347
	st.b r2, 0x00000004[r6]
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 348
	st.w r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 349
	jmp [r31]
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 352
	jmp [r31]
_E2E_P05MapStatusToSM:
	.stack _E2E_P05MapStatusToSM = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 365
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 370
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.5_12
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 377
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_11
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	add 0xFFFFFFFF, r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_9
.BB.LABEL.5_4:	; if_else_bb
	add 0xFFFFFFF9, r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_8
.BB.LABEL.5_5:	; if_else_bb
	movea 0xFFFFFFE8, r7, r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.5_11
.BB.LABEL.5_6:	; if_else_bb
	addi 0xFFFFFFE0, r2, r0
	bnz9 .BB.LABEL.5_10
.BB.LABEL.5_7:	; switch_clause_bb11
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 393
	jmp [r31]
.BB.LABEL.5_8:	; switch_clause_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 387
	jmp [r31]
.BB.LABEL.5_9:	; switch_clause_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 390
	jmp [r31]
.BB.LABEL.5_10:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 396
	jmp [r31]
.BB.LABEL.5_11:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 0
	mov 0x00000000, r10
.BB.LABEL.5_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P05.c", 401
	zxb r10
	jmp [r31]
