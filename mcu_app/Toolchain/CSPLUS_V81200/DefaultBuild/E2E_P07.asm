#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Libraries\E2E\E2E_P07.c -oDefaultBuild\E2E_P07.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_086d0872d2e4440e9daa9945444f3c5e4bctziu3.tov
#@	compiled at Fri Mar 27 09:50:19 2026

	.file "..\..\Bsw\Libraries\E2E\E2E_P07.c"

	$reg_mode 32
	.dbl_size 8

	.public _E2E_P07Protect
	.extern _Crc_CalculateCRC64
	.public _E2E_P07ProtectInit
	.public _E2E_P07Check
	.public _E2E_P07CheckInit
	.public _E2E_P07MapStatusToSM

	.section .text, text
_E2E_P07Protect:
	.stack _E2E_P07Protect = 36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 101
	prepare 0x00000679, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 112
	cmp 0x00000000, r6
	mov r9, r20
	mov r7, r21
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	cmp 0x00000000, r21
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; entry
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; entry.if_break_bb55_crit_edge
	movea 0x00000013, r0, r22
	br9 .BB.LABEL.1_8
.BB.LABEL.1_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 114
	ld.w 0x00000008[r6], r22
	shr 0x00000003, r22
	cmp r20, r22
	bh9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	ld.w 0x0000000C[r6], r22
	shr 0x00000003, r22
	cmp r20, r22
	bl9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb37.if_break_bb55_crit_edge
	mov 0x00000000, r22
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_else_bb
	movea 0x00000017, r0, r22
.BB.LABEL.1_8:	; if_break_bb55
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 127
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_9:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 130
	ld.w 0x00000004[r6], r23
	shr 0x00000003, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 132
	mov r8, r24
	add r23, r24
	mov r20, r2
	shr 0x00000018, r2
	st.b r2, 0x00000008[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 133
	mov r20, r2
	shr 0x00000010, r2
	st.b r2, 0x00000009[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 134
	mov r20, r2
	shr 0x00000008, r2
	st.b r2, 0x0000000A[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 135
	st.b r20, 0x0000000B[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 137
	ld.w 0x00000000[r21], r2
	shr 0x00000018, r2
	st.b r2, 0x0000000C[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 138
	ld.w 0x00000000[r21], r2
	shr 0x00000010, r2
	st.b r2, 0x0000000D[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 139
	ld.w 0x00000000[r21], r2
	shr 0x00000008, r2
	st.b r2, 0x0000000E[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 140
	ld.w 0x00000000[r21], r2
	st.b r2, 0x0000000F[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 142
	ld.w 0x00000000[r6], r2
	shr 0x00000018, r2
	st.b r2, 0x00000010[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 143
	ld.w 0x00000000[r6], r2
	shr 0x00000010, r2
	st.b r2, 0x00000011[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 144
	ld.w 0x00000000[r6], r2
	shr 0x00000008, r2
	st.b r2, 0x00000012[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 145
	ld.w 0x00000000[r6], r2
	st.b r2, 0x00000013[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 147
	ld.w 0x00000004[r6], r2
	mov 0xFFFFFFFF, r9
	st.w r9, 0x00000000[r3]
	cmp 0x00000000, r2
	mov 0x00000001, r2
	st.w r2, 0x00000004[r3]
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb169
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0x00000000, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 149
	mov r8, r6
	mov r23, r7
	mov r25, r8
	jarl _Crc_CalculateCRC64, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 150
	st.w r0, 0x00000004[r3]
	st.w r11, 0x00000000[r3]
	sub r23, r20
	mov r25, r8
	mov r10, r9
	br9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_else_bb186
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0x00000000, r8
.BB.LABEL.1_12:	; if_else_bb186
	addi 0xFFFFFFF8, r20, r7
	addi 0x00000008, r24, r6
	jarl _Crc_CalculateCRC64, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 157
	mov r11, r2
	shr 0x00000018, r2
	st.b r2, 0x00000000[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 158
	mov r11, r2
	shr 0x00000010, r2
	st.b r2, 0x00000001[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 159
	mov r11, r2
	shr 0x00000008, r2
	st.b r2, 0x00000002[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 160
	st.b r11, 0x00000003[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 161
	mov r10, r2
	shr 0x00000018, r2
	st.b r2, 0x00000004[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 162
	mov r10, r2
	shr 0x00000010, r2
	st.b r2, 0x00000005[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 163
	mov r10, r2
	shr 0x00000008, r2
	st.b r2, 0x00000006[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 164
	st.b r10, 0x00000007[r24]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 166
	ld.w 0x00000000[r21], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r21]
.BB.LABEL.1_13:	; if_break_bb254
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	andi 0x000000FF, r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 170
	dispose 0x00000008, 0x00000679, [r31]
_E2E_P07ProtectInit:
	.stack _E2E_P07ProtectInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 188
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 192
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 198
	st.w r0, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 199
	jmp [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 202
	jmp [r31]
_E2E_P07Check:
	.stack _E2E_P07Check = 64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 223
	prepare 0x00000FFF, 0x00000010
	mov r9, r20
	mov r7, r2
	st.w r2, 0x00000008[r3]
	addi 0x00000000, r6, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 240
	st.w r2, 0x0000000C[r3]
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	ld.w 0x00000008[r3], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; entry.if_break_bb96_crit_edge
	movea 0x00000013, r0, r21
	br9 .BB.LABEL.3_13
.BB.LABEL.3_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 242
	cmp 0x00000000, r8
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_5:	; bb38
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_6:	; bb38
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_7:	; if_then_bb61
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 244
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; if_then_bb61.if_break_bb96_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0x00000000, r22
	mov r22, r21
	br9 .BB.LABEL.3_14
.BB.LABEL.3_9:	; if_then_bb66
	ld.w 0x0000000C[r3], r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 246
	ld.w 0x00000008[r21], r21
	shr 0x00000003, r21
	cmp r20, r21
	bh9 .BB.LABEL.3_12
.BB.LABEL.3_10:	; bb74
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	ld.w 0x0000000C[r3], r21
	ld.w 0x0000000C[r21], r21
	shr 0x00000003, r21
	cmp r20, r21
	bl9 .BB.LABEL.3_12
.BB.LABEL.3_11:	; bb74.if_break_bb96_crit_edge
	mov 0x00000000, r21
	mov 0x00000001, r22
	br9 .BB.LABEL.3_14
.BB.LABEL.3_12:	; if_else_bb
	movea 0x00000017, r0, r21
.BB.LABEL.3_13:	; if_else_bb
	mov 0x00000000, r22
.BB.LABEL.3_14:	; if_break_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 271
	cmp 0x00000000, r21
	bnz17 .BB.LABEL.3_28
.BB.LABEL.3_15:	; if_then_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 273
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.3_20
.BB.LABEL.3_16:	; if_then_bb108
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	ld.w 0x0000000C[r3], r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 276
	ld.w 0x00000004[r23], r2
	mov r2, r28
	shr 0x00000003, r28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 278
	mov r8, r29
	add r28, r29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 287
	ld.b 0x00000000[r29], r24
	shl 0x00000018, r24
	ld.bu 0x00000001[r29], r23
	shl 0x00000010, r23
	or r23, r24
	ld.bu 0x00000002[r29], r23
	shl 0x00000008, r23
	or r23, r24
	ld.bu 0x00000003[r29], r23
	or r23, r24
	ld.bu 0x00000004[r29], r23
	shl 0x00000018, r23
	ld.bu 0x00000005[r29], r25
	shl 0x00000010, r25
	or r25, r23
	ld.bu 0x00000006[r29], r25
	shl 0x00000008, r25
	or r25, r23
	ld.bu 0x00000007[r29], r25
	or r25, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 284
	ld.b 0x00000010[r29], r25
	shl 0x00000018, r25
	ld.bu 0x00000011[r29], r26
	shl 0x00000010, r26
	or r26, r25
	ld.bu 0x00000012[r29], r26
	shl 0x00000008, r26
	or r26, r25
	ld.bu 0x00000013[r29], r26
	or r26, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 281
	ld.b 0x0000000C[r29], r26
	shl 0x00000018, r26
	ld.bu 0x0000000D[r29], r27
	shl 0x00000010, r27
	or r27, r26
	ld.bu 0x0000000E[r29], r27
	shl 0x00000008, r27
	or r27, r26
	ld.bu 0x0000000F[r29], r27
	or r27, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 278
	ld.b 0x00000008[r29], r27
	shl 0x00000018, r27
	ld.bu 0x00000009[r29], r5
	shl 0x00000010, r5
	or r5, r27
	ld.bu 0x0000000A[r29], r5
	shl 0x00000008, r5
	or r5, r27
	ld.bu 0x0000000B[r29], r5
	or r5, r27
	mov 0xFFFFFFFF, r9
	st.w r9, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 292
	cmp 0x00000000, r2
	mov 0x00000001, r2
	st.w r2, 0x00000004[r3]
	bz9 .BB.LABEL.3_18
.BB.LABEL.3_17:	; if_then_bb270
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0x00000000, r30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 294
	mov r8, r6
	mov r28, r7
	mov r30, r8
	jarl _Crc_CalculateCRC64, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 295
	st.w r0, 0x00000004[r3]
	st.w r11, 0x00000000[r3]
	subr r20, r28
	addi 0xFFFFFFF8, r28, r7
	mov r30, r8
	mov r10, r9
	br9 .BB.LABEL.3_19
.BB.LABEL.3_18:	; if_else_bb287
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 299
	addi 0xFFFFFFF8, r20, r7
	mov 0x00000000, r8
.BB.LABEL.3_19:	; if_else_bb287
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	addi 0x00000008, r29, r6
	jarl _Crc_CalculateCRC64, r31
.BB.LABEL.3_20:	; if_break_bb297
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 303
	cmp 0x00000001, r22
	bnz9 .BB.LABEL.3_27
.BB.LABEL.3_21:	; if_then_bb303
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 305
	xor r10, r23
	xor r11, r24
	or r24, r23
	cmp 0x00000000, r23
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_22:	; if_then_bb309
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	ld.w 0x0000000C[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 307
	ld.w 0x00000000[r2], r2
	cmp r2, r25
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_23:	; if_then_bb317
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 309
	cmp r20, r27
	bnz9 .BB.LABEL.3_25
.BB.LABEL.3_24:	; if_then_bb323
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	ld.w 0x0000000C[r3], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 311
	mov r2, r6
	ld.w 0x00000008[r3], r2
	mov r2, r7
	mov r26, r8
	jarl _E2E_P07Check_Seqence.1, r31
	andi 0x000000FF, r21, r10
	dispose 0x00000010, 0x00000FFF, [r31]
.BB.LABEL.3_25:	; if_else_bb335
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0x00000007, r2
.BB.LABEL.3_26:	; if_else_bb335
	ld.w 0x00000008[r3], r5
	st.w r2, 0x00000000[r5]
	andi 0x000000FF, r21, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 335
	dispose 0x00000010, 0x00000FFF, [r31]
.BB.LABEL.3_27:	; if_else_bb339
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.3_26
.BB.LABEL.3_28:	; if_break_bb343
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 335
	andi 0x000000FF, r21, r10
	dispose 0x00000010, 0x00000FFF, [r31]
_E2E_P07CheckInit:
	.stack _E2E_P07CheckInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 352
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 356
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0xFFFFFFFF, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 362
	st.w r2, 0x00000004[r6]
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 363
	st.w r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 364
	jmp [r31]
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 367
	jmp [r31]
_E2E_P07MapStatusToSM:
	.stack _E2E_P07MapStatusToSM = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 382
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 386
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.5_12
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 392
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_11
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 408
	jmp [r31]
.BB.LABEL.5_8:	; switch_clause_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 402
	jmp [r31]
.BB.LABEL.5_9:	; switch_clause_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 405
	jmp [r31]
.BB.LABEL.5_10:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 411
	jmp [r31]
.BB.LABEL.5_11:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	mov 0x00000000, r10
.BB.LABEL.5_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 416
	zxb r10
	jmp [r31]
_E2E_P07Check_Seqence.1:
	.stack _E2E_P07Check_Seqence.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 425
	ld.w 0x00000004[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 432
	cmp r8, r2
	bh9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	subr r8, r2
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; bb15
	not r2, r2
	add r8, r2
	add 0x00000001, r2
.BB.LABEL.6_3:	; bb23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 435
	ld.w 0x00000010[r6], r5
	cmp r5, r2
	bh9 .BB.LABEL.6_9
.BB.LABEL.6_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 437
	cmp 0x00000000, r2
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_5:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 439
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 441
	st.w r0, 0x00000000[r7]
	br9 .BB.LABEL.6_11
.BB.LABEL.6_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 0
	movea 0x00000020, r0, r2
	br9 .BB.LABEL.6_10
.BB.LABEL.6_8:	; if_else_bb46
	mov 0x00000008, r2
	br9 .BB.LABEL.6_10
.BB.LABEL.6_9:	; if_else_bb50
	movea 0x00000040, r0, r2
.BB.LABEL.6_10:	; if_else_bb50
	st.w r2, 0x00000000[r7]
.BB.LABEL.6_11:	; if_break_bb53
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P07.c", 457
	st.w r8, 0x00000004[r7]
	jmp [r31]
