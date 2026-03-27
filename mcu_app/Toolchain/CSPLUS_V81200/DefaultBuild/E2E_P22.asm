#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Libraries\E2E\E2E_P22.c -oDefaultBuild\E2E_P22.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_5e7431e8d189486686be7d8f60279083wlnmecoj.upo
#@	compiled at Fri Mar 27 09:50:21 2026

	.file "..\..\Bsw\Libraries\E2E\E2E_P22.c"

	$reg_mode 32
	.dbl_size 8

	.public _E2E_P22Protect
	.extern _Crc_CalculateCRC8H2F
	.public _E2E_P22ProtectInit
	.public _E2E_P22Check
	.public _E2E_P22CheckInit
	.public _E2E_P22MapStatusToSM

	.section .text, text
_E2E_P22Protect:
	.stack _E2E_P22Protect = 28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 95
	prepare 0x00000679, 0x00000000
	mov r9, r20
	mov r8, r21
	addi 0x00000000, r6, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 107
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; entry
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; entry.if_break_bb64_crit_edge
	movea 0x00000013, r0, r23
	br9 .BB.LABEL.1_8
.BB.LABEL.1_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 110
	ld.hu 0x00000000[r22], r23
	shr 0x00000003, r23
	cmp r23, r20
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 109
	ld.hu 0x00000014[r22], r23
	shr 0x00000003, r23
	add 0x00000002, r23
	cmp r23, r20
	bl9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb46.if_break_bb64_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x00000000, r23
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_else_bb
	movea 0x00000017, r0, r23
.BB.LABEL.1_8:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 123
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_9:	; if_then_bb70
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 128
	ld.b 0x00000000[r7], r2
	add 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 129
	andi 0x0000000F, r2, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 126
	ld.hu 0x00000014[r22], r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 129
	st.b r24, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 132
	ld.hu 0x00000014[r22], r2
	shr 0x00000003, r2
	add r21, r2
	ld.bu 0x00000001[r2], r5
	andi 0x000000F0, r5, r5
	or r24, r5
	st.b r5, 0x00000001[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 126
	shr 0x00000003, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 135
	ld.hu 0x00000014[r22], r2
	mov 0x00000001, r9
	movea 0x000000FF, r0, r8
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb122
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 137
	mov r21, r6
	mov r25, r7
	jarl _Crc_CalculateCRC8H2F, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 138
	sub r25, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 137
	add r21, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 138
	addi 0x00000001, r25, r6
	mov 0x00000000, r9
	mov r10, r8
	br9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_else_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 142
	addi 0x00000001, r21, r6
.BB.LABEL.1_12:	; if_else_bb141
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	addi 0xFFFFFFFF, r20, r7
	jarl _Crc_CalculateCRC8H2F, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 144
	add r22, r24
	addi 0x00000002, r24, r6
	mov 0x00000000, r9
	mov 0x00000001, r7
	mov r10, r8
	jarl _Crc_CalculateCRC8H2F, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 146
	ld.hu 0x00000014[r22], r2
	shr 0x00000003, r2
	add r2, r21
	st.b r10, 0x00000000[r21]
.BB.LABEL.1_13:	; if_break_bb165
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	andi 0x000000FF, r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 150
	dispose 0x00000000, 0x00000679, [r31]
_E2E_P22ProtectInit:
	.stack _E2E_P22ProtectInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 167
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 171
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 177
	st.b r0, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 178
	jmp [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 181
	jmp [r31]
_E2E_P22Check:
	.stack _E2E_P22Check = 44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 202
	prepare 0x000007FF, 0x00000000
	mov r9, r20
	mov r8, r21
	mov r7, r22
	addi 0x00000000, r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 218
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_2:	; entry.if_break_bb105_crit_edge
	movea 0x00000013, r0, r24
.BB.LABEL.3_3:	; entry.if_break_bb105_crit_edge
	mov 0x00000000, r25
	mov r25, r26
	br9 .BB.LABEL.3_15
.BB.LABEL.3_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 220
	cmp 0x00000000, r21
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_9
.BB.LABEL.3_6:	; bb38
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_8
.BB.LABEL.3_7:	; bb38
	cmp 0x00000000, r20
	bz9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; bb38.if_break_bb105_crit_edge
	movea 0x00000017, r0, r24
	br9 .BB.LABEL.3_3
.BB.LABEL.3_9:	; if_then_bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 222
	ld.hu 0x00000014[r23], r26
	shr 0x00000003, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 223
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_10:	; if_then_bb62.if_break_bb105_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x00000000, r25
	mov r25, r24
	br9 .BB.LABEL.3_15
.BB.LABEL.3_11:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 225
	ld.hu 0x00000000[r23], r24
	shr 0x00000003, r24
	cmp r24, r20
	bnz9 .BB.LABEL.3_14
.BB.LABEL.3_12:	; bb83
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	addi 0x00000002, r26, r24
	cmp r24, r20
	bl9 .BB.LABEL.3_14
.BB.LABEL.3_13:	; bb83.if_break_bb105_crit_edge
	mov 0x00000000, r24
	mov 0x00000001, r25
	br9 .BB.LABEL.3_15
.BB.LABEL.3_14:	; if_else_bb
	movea 0x00000017, r0, r24
	mov 0x00000000, r25
.BB.LABEL.3_15:	; if_break_bb105
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 250
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.3_40
.BB.LABEL.3_16:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 252
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_18
.BB.LABEL.3_17:	; if_then_bb116
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 254
	st.w r20, 0x00000000[r22]
	mov 0x00000000, r10
	mov r10, r27
	mov r10, r28
	br9 .BB.LABEL.3_22
.BB.LABEL.3_18:	; if_else_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 259
	ld.hu 0x00000014[r23], r2
	mov r2, r27
	shr 0x00000003, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 261
	add r21, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 263
	ld.bu 0x00000000[r27], r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 259
	ld.bu 0x00000001[r27], r29
	andi 0x0000000F, r29, r27
	mov 0x00000001, r9
	movea 0x000000FF, r0, r8
	cmp 0x00000000, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 263
	bz9 .BB.LABEL.3_20
.BB.LABEL.3_19:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 265
	zxh r26
	mov r21, r6
	mov r26, r7
	jarl _Crc_CalculateCRC8H2F, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 266
	sub r26, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 265
	add r21, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 266
	addi 0x00000001, r26, r6
	mov 0x00000000, r9
	mov r10, r8
	br9 .BB.LABEL.3_21
.BB.LABEL.3_20:	; if_else_bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 270
	addi 0x00000001, r21, r6
.BB.LABEL.3_21:	; if_else_bb166
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	addi 0xFFFFFFFF, r20, r7
	jarl _Crc_CalculateCRC8H2F, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 272
	andi 0x0000000F, r29, r6
	add r23, r6
	add 0x00000002, r6
	mov 0x00000000, r9
	mov 0x00000001, r7
	mov r10, r8
	jarl _Crc_CalculateCRC8H2F, r31
.BB.LABEL.3_22:	; if_break_bb182
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 276
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.3_39
.BB.LABEL.3_23:	; if_then_bb188
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 278
	cmp r10, r28
	bnz9 .BB.LABEL.3_37
.BB.LABEL.3_24:	; if_then_bb196
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 281
	ld.bu 0x00000004[r22], r2
	cmp r2, r27
	bl9 .BB.LABEL.3_26
.BB.LABEL.3_25:	; if_then_bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 283
	subr r27, r2
	br9 .BB.LABEL.3_27
.BB.LABEL.3_26:	; if_else_bb215
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 287
	addi 0x0000000F, r27, r5
	sub r2, r5
	add 0x00000001, r5
	mov r5, r2
.BB.LABEL.3_27:	; if_break_bb226
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 289
	andi 0x000000FF, r2, r5
	ld.bu 0x00000012[r23], r6
	cmp r6, r5
	bh9 .BB.LABEL.3_34
.BB.LABEL.3_28:	; if_then_bb236
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 291
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.3_32
.BB.LABEL.3_29:	; if_then_bb242
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 293
	andi 0x000000FF, r2, r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.3_31
.BB.LABEL.3_30:	; if_then_bb248
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 295
	st.w r0, 0x00000000[r22]
	br9 .BB.LABEL.3_32
.BB.LABEL.3_31:	; if_else_bb251
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	movea 0x00000020, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 299
	st.w r5, 0x00000000[r22]
.BB.LABEL.3_32:	; if_break_bb255
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 302
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.3_36
.BB.LABEL.3_33:	; if_then_bb261
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x00000008, r2
	br9 .BB.LABEL.3_35
.BB.LABEL.3_34:	; if_else_bb265
	movea 0x00000040, r0, r2
.BB.LABEL.3_35:	; if_else_bb265
	st.w r2, 0x00000000[r22]
.BB.LABEL.3_36:	; if_break_bb268
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 311
	st.b r27, 0x00000004[r22]
	andi 0x000000FF, r24, r10
	dispose 0x00000000, 0x000007FF, [r31]
.BB.LABEL.3_37:	; if_else_bb272
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x00000007, r2
.BB.LABEL.3_38:	; if_else_bb272
	st.w r2, 0x00000000[r22]
	andi 0x000000FF, r24, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 325
	dispose 0x00000000, 0x000007FF, [r31]
.BB.LABEL.3_39:	; if_else_bb276
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.3_38
.BB.LABEL.3_40:	; if_break_bb280
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 325
	andi 0x000000FF, r24, r10
	dispose 0x00000000, 0x000007FF, [r31]
_E2E_P22CheckInit:
	.stack _E2E_P22CheckInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 342
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 346
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x0000000F, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 352
	st.b r2, 0x00000004[r6]
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 353
	st.w r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 354
	jmp [r31]
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 357
	jmp [r31]
_E2E_P22MapStatusToSM:
	.stack _E2E_P22MapStatusToSM = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 371
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 375
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.5_12
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 381
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_11
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 397
	jmp [r31]
.BB.LABEL.5_8:	; switch_clause_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 391
	jmp [r31]
.BB.LABEL.5_9:	; switch_clause_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 394
	jmp [r31]
.BB.LABEL.5_10:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 400
	jmp [r31]
.BB.LABEL.5_11:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 0
	mov 0x00000000, r10
.BB.LABEL.5_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P22.c", 405
	zxb r10
	jmp [r31]
