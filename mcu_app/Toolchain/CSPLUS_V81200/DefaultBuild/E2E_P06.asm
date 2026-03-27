#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Libraries\E2E\E2E_P06.c -oDefaultBuild\E2E_P06.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_8f082fffd345450e8793e1317d65cc87r4dbhjcr.v3q
#@	compiled at Fri Mar 27 09:50:18 2026

	.file "..\..\Bsw\Libraries\E2E\E2E_P06.c"

	$reg_mode 32
	.dbl_size 8

	.public _E2E_P06Protect
	.extern _Crc_CalculateCRC16
	.public _E2E_P06ProtectInit
	.public _E2E_P06Check
	.public _E2E_P06CheckInit
	.public _E2E_P06MapStatusToSM

	.section .text, text
_E2E_P06Protect:
	.stack _E2E_P06Protect = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 94
	prepare 0x00000479, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 107
	cmp 0x00000000, r6
	mov r9, r20
	mov r7, r21
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; entry
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; entry.if_break_bb61_crit_edge
	movea 0x00000013, r0, r22
	br9 .BB.LABEL.1_8
.BB.LABEL.1_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 109
	ld.hu 0x00000002[r6], r22
	shr 0x00000003, r22
	cmp r22, r20
	bl9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	ld.hu 0x00000004[r6], r22
	shr 0x00000003, r22
	cmp r22, r20
	bh9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb41.if_break_bb61_crit_edge
	mov 0x00000000, r22
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_else_bb
	movea 0x00000017, r0, r22
.BB.LABEL.1_8:	; if_break_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 123
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_9:	; if_then_bb67
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 125
	ld.b 0x00000006[r6], r2
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 126
	ld.hu 0x00000006[r6], r2
	shr 0x00000008, r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 128
	ld.hu 0x00000000[r6], r23
	shr 0x00000003, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 130
	mov r8, r24
	add r23, r24
	mov r20, r2
	shr 0x00000008, r2
	st.b r2, 0x00000002[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 131
	st.b r20, 0x00000003[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 133
	ld.b 0x00000000[r21], r2
	st.b r2, 0x00000004[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 135
	ld.hu 0x00000000[r6], r2
	mov 0x00000001, r9
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 137
	mov r8, r6
	mov r23, r7
	mov r2, r8
	jarl _Crc_CalculateCRC16, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 138
	sub r23, r20
	mov 0x00000000, r9
	mov r10, r8
	br9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_else_bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	ori 0x0000FFFF, r0, r8
.BB.LABEL.1_12:	; if_else_bb134
	addi 0xFFFFFFFE, r20, r7
	addi 0x00000002, r24, r6
	jarl _Crc_CalculateCRC16, r31
	mov 0x00000000, r20
	mov 0x00000001, r23
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 144
	mov r23, r7
	mov r10, r8
	mov r20, r9
	jarl _Crc_CalculateCRC16, r31
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 145
	mov r23, r7
	mov r10, r8
	mov r20, r9
	jarl _Crc_CalculateCRC16, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 147
	mov r10, r2
	shr 0x00000008, r2
	st.b r2, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 148
	st.b r10, 0x00000001[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 150
	ld.b 0x00000000[r21], r2
	add 0x00000001, r2
	st.b r2, 0x00000000[r21]
.BB.LABEL.1_13:	; if_break_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	andi 0x000000FF, r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 154
	dispose 0x00000004, 0x00000479, [r31]
_E2E_P06ProtectInit:
	.stack _E2E_P06ProtectInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 170
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 175
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 181
	st.b r0, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 182
	jmp [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 185
	jmp [r31]
_E2E_P06Check:
	.stack _E2E_P06Check = 48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 205
	prepare 0x000007FF, 0x00000004
	mov r9, r20
	mov r7, r21
	addi 0x00000000, r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 224
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; entry.if_break_bb104_crit_edge
	movea 0x00000013, r0, r23
	br9 .BB.LABEL.3_13
.BB.LABEL.3_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 226
	cmp 0x00000000, r8
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_5:	; bb41
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_6:	; bb41
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_7:	; if_then_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 228
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; if_then_bb65.if_break_bb104_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	mov 0x00000000, r24
	mov r24, r23
	br9 .BB.LABEL.3_14
.BB.LABEL.3_9:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 230
	ld.hu 0x00000002[r22], r23
	shr 0x00000003, r23
	cmp r23, r20
	bl9 .BB.LABEL.3_12
.BB.LABEL.3_10:	; bb80
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	ld.hu 0x00000004[r22], r23
	shr 0x00000003, r23
	cmp r23, r20
	bh9 .BB.LABEL.3_12
.BB.LABEL.3_11:	; bb80.if_break_bb104_crit_edge
	mov 0x00000000, r23
	mov 0x00000001, r24
	br9 .BB.LABEL.3_14
.BB.LABEL.3_12:	; if_else_bb
	movea 0x00000017, r0, r23
.BB.LABEL.3_13:	; if_else_bb
	mov 0x00000000, r24
.BB.LABEL.3_14:	; if_break_bb104
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 255
	cmp 0x00000000, r23
	bnz17 .BB.LABEL.3_38
.BB.LABEL.3_15:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 257
	ld.b 0x00000006[r22], r2
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 258
	ld.hu 0x00000006[r22], r2
	shr 0x00000008, r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 259
	cmp 0x00000001, r24
	bnz9 .BB.LABEL.3_20
.BB.LABEL.3_16:	; if_then_bb126
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 262
	ld.hu 0x00000000[r22], r2
	mov r2, r28
	shr 0x00000003, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 264
	mov r8, r29
	add r28, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 268
	ld.bu 0x00000001[r29], r26
	ld.b 0x00000000[r29], r25
	shl 0x00000008, r25
	or r26, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 264
	ld.bu 0x00000003[r29], r26
	ld.b 0x00000002[r29], r27
	shl 0x00000008, r27
	or r26, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 270
	ld.bu 0x00000004[r29], r26
	mov 0x00000001, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 262
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 270
	bz9 .BB.LABEL.3_18
.BB.LABEL.3_17:	; if_then_bb183
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	ori 0x0000FFFF, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 272
	mov r8, r6
	mov r28, r7
	mov r2, r8
	jarl _Crc_CalculateCRC16, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 273
	subr r20, r28
	addi 0xFFFFFFFE, r28, r7
	mov 0x00000000, r9
	mov r10, r8
	br9 .BB.LABEL.3_19
.BB.LABEL.3_18:	; if_else_bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 277
	addi 0xFFFFFFFE, r20, r7
	ori 0x0000FFFF, r0, r8
.BB.LABEL.3_19:	; if_else_bb202
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	addi 0x00000002, r29, r6
	jarl _Crc_CalculateCRC16, r31
	mov 0x00000000, r28
	mov 0x00000001, r29
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 279
	mov r29, r7
	mov r10, r8
	mov r28, r9
	jarl _Crc_CalculateCRC16, r31
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 280
	mov r29, r7
	mov r10, r8
	mov r28, r9
	jarl _Crc_CalculateCRC16, r31
.BB.LABEL.3_20:	; if_break_bb217
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 283
	cmp 0x00000001, r24
	bnz9 .BB.LABEL.3_37
.BB.LABEL.3_21:	; if_then_bb223
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 285
	zxh r25
	zxh r10
	cmp r10, r25
	bnz9 .BB.LABEL.3_35
.BB.LABEL.3_22:	; if_then_bb231
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 287
	zxh r27
	cmp r20, r27
	bnz9 .BB.LABEL.3_35
.BB.LABEL.3_23:	; if_then_bb239
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 290
	andi 0x000000FF, r26, r2
	ld.bu 0x00000004[r21], r5
	cmp r5, r2
	bl9 .BB.LABEL.3_25
.BB.LABEL.3_24:	; bb248
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	subr r26, r5
	br9 .BB.LABEL.3_26
.BB.LABEL.3_25:	; bb258
	not r5, r5
	add r26, r5
	add 0x00000001, r5
.BB.LABEL.3_26:	; bb273
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 294
	andi 0x000000FF, r5, r2
	ld.bu 0x00000008[r22], r6
	cmp r6, r2
	bh9 .BB.LABEL.3_32
.BB.LABEL.3_27:	; if_then_bb286
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 296
	andi 0x000000FF, r5, r0
	bz9 .BB.LABEL.3_31
.BB.LABEL.3_28:	; if_then_bb292
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 298
	zxb r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.3_30
.BB.LABEL.3_29:	; if_then_bb298
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 300
	st.w r0, 0x00000000[r21]
	br9 .BB.LABEL.3_34
.BB.LABEL.3_30:	; if_else_bb301
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	movea 0x00000020, r0, r2
	br9 .BB.LABEL.3_33
.BB.LABEL.3_31:	; if_else_bb305
	mov 0x00000008, r2
	br9 .BB.LABEL.3_33
.BB.LABEL.3_32:	; if_else_bb309
	movea 0x00000040, r0, r2
.BB.LABEL.3_33:	; if_else_bb309
	st.w r2, 0x00000000[r21]
.BB.LABEL.3_34:	; if_break_bb312
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 316
	st.b r26, 0x00000004[r21]
	andi 0x000000FF, r23, r10
	dispose 0x00000004, 0x000007FF, [r31]
.BB.LABEL.3_35:	; if_else_bb320
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	mov 0x00000007, r2
.BB.LABEL.3_36:	; if_else_bb320
	st.w r2, 0x00000000[r21]
	andi 0x000000FF, r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 335
	dispose 0x00000004, 0x000007FF, [r31]
.BB.LABEL.3_37:	; if_else_bb324
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.3_36
.BB.LABEL.3_38:	; if_break_bb328
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 335
	andi 0x000000FF, r23, r10
	dispose 0x00000004, 0x000007FF, [r31]
_E2E_P06CheckInit:
	.stack _E2E_P06CheckInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 351
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 356
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 362
	st.b r2, 0x00000004[r6]
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 363
	st.w r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 364
	jmp [r31]
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 367
	jmp [r31]
_E2E_P06MapStatusToSM:
	.stack _E2E_P06MapStatusToSM = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 380
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 385
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.5_12
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 392
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_11
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 408
	jmp [r31]
.BB.LABEL.5_8:	; switch_clause_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 402
	jmp [r31]
.BB.LABEL.5_9:	; switch_clause_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 405
	jmp [r31]
.BB.LABEL.5_10:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 411
	jmp [r31]
.BB.LABEL.5_11:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 0
	mov 0x00000000, r10
.BB.LABEL.5_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P06.c", 416
	zxb r10
	jmp [r31]
