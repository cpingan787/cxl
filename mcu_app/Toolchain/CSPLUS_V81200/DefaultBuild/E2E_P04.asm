#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Libraries\E2E\E2E_P04.c -oDefaultBuild\E2E_P04.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_143db4b995d842c49891e80862cd175btitemw44.2sz
#@	compiled at Fri Mar 27 09:50:16 2026

	.file "..\..\Bsw\Libraries\E2E\E2E_P04.c"

	$reg_mode 32
	.dbl_size 8

	.public _E2E_P04Protect
	.extern _Crc_CalculateCRC32P4
	.public _E2E_P04ProtectInit
	.public _E2E_P04Check
	.public _E2E_P04CheckInit
	.public _E2E_P04MapStatusToSM

	.section .text, text
_E2E_P04Protect:
	.stack _E2E_P04Protect = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 99
	prepare 0x00000079, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 110
	cmp 0x00000000, r6
	mov r9, r20
	mov r7, r21
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; entry
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; entry.if_break_bb203_crit_edge
	movea 0x00000013, r0, r10
	br9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 112
	ld.hu 0x00000006[r6], r2
	shr 0x00000003, r2
	cmp r2, r20
	bnc9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; if_then_bb.if_break_bb203_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	movea 0x00000017, r0, r10
.BB.LABEL.1_6:	; if_break_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 153
	zxb r10
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.1_7:	; bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	ld.hu 0x00000008[r6], r2
	shr 0x00000003, r2
	cmp r2, r20
	bh9 .BB.LABEL.1_5
.BB.LABEL.1_8:	; if_then_bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 115
	ld.hu 0x00000004[r6], r22
	shr 0x00000003, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 117
	mov r8, r23
	add r22, r23
	mov r20, r2
	shr 0x00000008, r2
	st.b r2, 0x00000000[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 118
	st.b r20, 0x00000001[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 120
	ld.hu 0x00000000[r21], r2
	shr 0x00000008, r2
	st.b r2, 0x00000002[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 121
	ld.b 0x00000000[r21], r2
	st.b r2, 0x00000003[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 123
	ld.w 0x00000000[r6], r2
	shr 0x00000018, r2
	st.b r2, 0x00000004[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 124
	ld.w 0x00000000[r6], r2
	shr 0x00000010, r2
	st.b r2, 0x00000005[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 125
	ld.w 0x00000000[r6], r2
	shr 0x00000008, r2
	st.b r2, 0x00000006[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 126
	ld.w 0x00000000[r6], r2
	st.b r2, 0x00000007[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 128
	addi 0x00000008, r22, r7
	mov 0x00000001, r9
	mov 0xFFFFFFFF, r2
	mov r8, r6
	mov r2, r8
	jarl _Crc_CalculateCRC32P4, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 129
	addi 0x0000000C, r22, r2
	cmp r20, r2
	bnc9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 131
	sub r22, r20
	addi 0xFFFFFFF4, r20, r7
	addi 0x0000000C, r23, r6
	mov 0x00000000, r9
	mov r10, r8
	jarl _Crc_CalculateCRC32P4, r31
.BB.LABEL.1_10:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 135
	mov r10, r2
	shr 0x00000018, r2
	st.b r2, 0x00000008[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 136
	mov r10, r2
	shr 0x00000010, r2
	st.b r2, 0x00000009[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 137
	mov r10, r2
	shr 0x00000008, r2
	st.b r2, 0x0000000A[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 138
	st.b r10, 0x0000000B[r23]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 140
	ld.h 0x00000000[r21], r2
	add 0x00000001, r2
	st.h r2, 0x00000000[r21]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000079, [r31]
_E2E_P04ProtectInit:
	.stack _E2E_P04ProtectInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 169
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 175
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 181
	st.h r0, 0x00000000[r6]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 184
	jmp [r31]
_E2E_P04Check:
	.stack _E2E_P04Check = 84
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 205
	prepare 0x00000FFF, 0x00000024
	mov r9, r2
	st.w r2, 0x00000014[r3]
	mov r7, r2
	st.w r2, 0x0000001C[r3]
	addi 0x00000000, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 221
	st.w r2, 0x00000020[r3]
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	ld.w 0x0000001C[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; entry.if_break_bb296_crit_edge
	movea 0x00000013, r0, r20
.BB.LABEL.3_3:	; if_break_bb296
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 309
	andi 0x000000FF, r20, r10
	dispose 0x00000024, 0x00000FFF, [r31]
.BB.LABEL.3_4:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 227
	cmp 0x00000000, r8
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	ld.w 0x00000014[r3], r20
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_6:	; bb39
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.3_13
.BB.LABEL.3_7:	; bb39
	ld.w 0x00000014[r3], r20
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_13
.BB.LABEL.3_8:	; if_then_bb63
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 229
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; if_then_bb63.if_break_bb101_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	mov 0x00000000, r2
	mov r2, r20
	br9 .BB.LABEL.3_14
.BB.LABEL.3_10:	; if_then_bb68
	ld.w 0x00000020[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 231
	ld.hu 0x00000006[r2], r2
	shr 0x00000003, r2
	ld.w 0x00000014[r3], r20
	cmp r2, r20
	bl9 .BB.LABEL.3_13
.BB.LABEL.3_11:	; bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	ld.w 0x00000020[r3], r2
	ld.hu 0x00000008[r2], r2
	shr 0x00000003, r2
	ld.w 0x00000014[r3], r20
	cmp r2, r20
	bh9 .BB.LABEL.3_13
.BB.LABEL.3_12:	; bb78.if_break_bb101_crit_edge
	mov 0x00000000, r20
	mov 0x00000001, r2
	br9 .BB.LABEL.3_14
.BB.LABEL.3_13:	; if_else_bb97
	movea 0x00000017, r0, r20
	mov 0x00000000, r2
.BB.LABEL.3_14:	; if_break_bb101
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 250
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_15:	; if_then_bb107
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 252
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.3_24
.BB.LABEL.3_16:	; if_then_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	ld.w 0x00000020[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 255
	ld.hu 0x00000004[r2], r21
	shr 0x00000003, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 257
	mov r8, r22
	add r21, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 264
	ld.bu 0x00000009[r22], r23
	ld.b 0x00000008[r22], r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 261
	ld.bu 0x00000005[r22], r2
	st.w r2, 0x00000008[r3]
	ld.b 0x00000004[r22], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 264
	ld.bu 0x0000000B[r22], r2
	st.w r2, 0x0000000C[r3]
	ld.bu 0x0000000A[r22], r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 261
	ld.bu 0x00000007[r22], r2
	st.w r2, 0x00000018[r3]
	ld.bu 0x00000006[r22], r2
	st.w r2, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 259
	ld.bu 0x00000003[r22], r27
	ld.b 0x00000002[r22], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 257
	ld.bu 0x00000001[r22], r29
	ld.b 0x00000000[r22], r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 267
	addi 0x00000008, r21, r7
	mov 0x00000001, r9
	mov 0xFFFFFFFF, r2
	mov r8, r6
	mov r2, r8
	jarl _Crc_CalculateCRC32P4, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 259
	shl 0x00000008, r28
	or r27, r28
	st.w r28, 0x00000010[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 257
	shl 0x00000008, r30
	or r29, r30
	st.w r30, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 264
	shl 0x00000018, r24
	shl 0x00000010, r23
	or r23, r24
	shl 0x00000008, r26
	or r26, r24
	ld.w 0x0000000C[r3], r2
	or r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 261
	shl 0x00000018, r25
	ld.w 0x00000008[r3], r2
	shl 0x00000010, r2
	or r2, r25
	ld.w 0x00000000[r3], r2
	shl 0x00000008, r2
	or r2, r25
	ld.w 0x00000018[r3], r2
	or r2, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 268
	addi 0x0000000C, r21, r2
	ld.w 0x00000014[r3], r5
	cmp r5, r2
	bnc9 .BB.LABEL.3_18
.BB.LABEL.3_17:	; if_then_bb239
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	ld.w 0x00000014[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 270
	subr r2, r21
	addi 0xFFFFFFF4, r21, r7
	addi 0x0000000C, r22, r6
	mov 0x00000000, r9
	mov r10, r8
	jarl _Crc_CalculateCRC32P4, r31
.BB.LABEL.3_18:	; if_break_bb253
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 277
	cmp r10, r24
	bnz9 .BB.LABEL.3_22
.BB.LABEL.3_19:	; if_then_bb259
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	ld.w 0x00000020[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 279
	ld.w 0x00000000[r2], r2
	cmp r2, r25
	bnz9 .BB.LABEL.3_22
.BB.LABEL.3_20:	; if_then_bb267
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	ld.w 0x00000004[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 281
	zxh r2
	ld.w 0x00000014[r3], r5
	cmp r5, r2
	bnz9 .BB.LABEL.3_22
.BB.LABEL.3_21:	; if_then_bb275
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	ld.w 0x00000010[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 283
	andi 0x0000FFFF, r2, r8
	ld.w 0x00000020[r3], r2
	mov r2, r6
	ld.w 0x0000001C[r3], r2
	mov r2, r7
	jarl _E2E_P04Check_Seqence.1, r31
	andi 0x000000FF, r20, r10
	dispose 0x00000024, 0x00000FFF, [r31]
.BB.LABEL.3_22:	; if_else_bb287
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	mov 0x00000007, r2
.BB.LABEL.3_23:	; if_else_bb287
	ld.w 0x0000001C[r3], r5
	st.w r2, 0x00000000[r5]
	andi 0x000000FF, r20, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 309
	dispose 0x00000024, 0x00000FFF, [r31]
.BB.LABEL.3_24:	; if_else_bb291
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.3_23
_E2E_P04CheckInit:
	.stack _E2E_P04CheckInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 325
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 330
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 336
	st.h r2, 0x00000004[r6]
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 337
	st.w r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 338
	jmp [r31]
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 341
	jmp [r31]
_E2E_P04MapStatusToSM:
	.stack _E2E_P04MapStatusToSM = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 354
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 359
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.5_12
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 366
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_11
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 382
	jmp [r31]
.BB.LABEL.5_8:	; switch_clause_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 376
	jmp [r31]
.BB.LABEL.5_9:	; switch_clause_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 379
	jmp [r31]
.BB.LABEL.5_10:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 385
	jmp [r31]
.BB.LABEL.5_11:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	mov 0x00000000, r10
.BB.LABEL.5_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 390
	zxb r10
	jmp [r31]
_E2E_P04Check_Seqence.1:
	.stack _E2E_P04Check_Seqence.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 399
	ld.h 0x00000004[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 407
	subr r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 409
	sxh r2
	cmp 0x00000000, r2
	ld.h 0x0000000A[r6], r5
	bn9 .BB.LABEL.6_7
.BB.LABEL.6_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	cmp r5, r2
	bgt9 .BB.LABEL.6_7
.BB.LABEL.6_2:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 411
	cmp 0x00000000, r2
	ble9 .BB.LABEL.6_6
.BB.LABEL.6_3:	; if_then_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 413
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 415
	st.w r0, 0x00000000[r7]
	br9 .BB.LABEL.6_9
.BB.LABEL.6_5:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 0
	movea 0x00000020, r0, r2
	br9 .BB.LABEL.6_8
.BB.LABEL.6_6:	; if_else_bb46
	mov 0x00000008, r2
	br9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_else_bb50
	movea 0x00000040, r0, r2
.BB.LABEL.6_8:	; if_else_bb50
	st.w r2, 0x00000000[r7]
.BB.LABEL.6_9:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P04.c", 431
	st.h r8, 0x00000004[r7]
	jmp [r31]
