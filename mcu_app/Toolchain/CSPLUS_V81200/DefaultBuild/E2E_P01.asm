#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Libraries\E2E\E2E_P01.c -oDefaultBuild\E2E_P01.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_ae4e34476aaf4658a4be2443470086433x11bw4a.bhw
#@	compiled at Fri Mar 27 09:50:14 2026

	.file "..\..\Bsw\Libraries\E2E\E2E_P01.c"

	$reg_mode 32
	.dbl_size 8

	.public _E2E_P01Protect
	.public _E2E_P01ProtectInit
	.public _E2E_P01Check
	.public _E2E_P01CheckInit
	.public _E2E_P01MapStatusToSM
	.public _E2E_P01CalculateCRC8
	.extern _Crc_CalculateCRC8

	.section .text, text
_E2E_P01_Min.1:
	.stack _E2E_P01_Min.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.h", 48
	cmp r7, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.h", 50
	cmov 0x0000000B, r7, r6, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.h", 51
	jmp [r31]
_E2E_P01Protect:
	.stack _E2E_P01Protect = 20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 142
	prepare 0x00000079, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 148
	jarl _E2E_P01ProtectVerifyInputs.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 150
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 155
	ld.hu 0x00000000[r20], r2
	mov r2, r5
	shr 0x00000003, r5
	add r22, r5
	ld.bu 0x00000000[r5], r6
	andi 0x00000007, r2, r0
	bnz9 .BB.LABEL.2_3
.BB.LABEL.2_2:	; if_then_bb21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 157
	ld.bu 0x00000000[r21], r2
	andi 0x0000000F, r2, r2
	andi 0x000000F0, r6, r6
	br9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 162
	ld.b 0x00000000[r21], r2
	shl 0x00000004, r2
	andi 0x0000000F, r6, r6
.BB.LABEL.2_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	or r2, r6
	st.b r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 166
	ld.w 0x00000008[r20], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.2_9
.BB.LABEL.2_5:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 168
	ld.hu 0x00000006[r20], r2
	mov r2, r5
	shr 0x00000003, r5
	zxb r5
	add r22, r5
	ld.bu 0x00000000[r5], r6
	andi 0x00000007, r2, r0
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_then_bb87
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 170
	ld.bu 0x00000005[r20], r2
	andi 0x0000000F, r2, r2
	andi 0x000000F0, r6, r6
	br9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_else_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 176
	ld.h 0x00000004[r20], r2
	shr 0x00000004, r2
	andi 0x000000F0, r2, r2
	andi 0x0000000F, r6, r6
.BB.LABEL.2_8:	; if_else_bb119
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	or r2, r6
	st.b r6, 0x00000000[r5]
.BB.LABEL.2_9:	; if_break_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 182
	ld.bu 0x00000000[r21], r7
	mov r20, r6
	mov r22, r8
	jarl _E2E_P01CalculateCRC8, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 184
	ld.hu 0x00000002[r20], r2
	shr 0x00000003, r2
	add r2, r22
	st.b r10, 0x00000000[r22]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 185
	ld.bu 0x00000000[r21], r2
	add 0x00000001, r2
	mov 0x0000000F, r5
	divhu r5, r2, r2
	st.b r2, 0x00000000[r21]
.BB.LABEL.2_10:	; if_break_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 188
	dispose 0x00000000, 0x00000079, [r31]
_E2E_P01ProtectInit:
	.stack _E2E_P01ProtectInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 205
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 211
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 217
	st.b r0, 0x00000000[r6]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 220
	jmp [r31]
_E2E_P01Check:
	.stack _E2E_P01Check = 32
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 240
	prepare 0x00000779, 0x00000000
	mov r6, r20
	mov r7, r21
	mov r8, r22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 246
	jarl _E2E_P01CheckVerifyInputs.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 248
	addi 0x00000000, r10, r23
	bnz9 .BB.LABEL.4_21
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 254
	ld.b 0x00000001[r21], r6
	add 0x00000001, r6
	zxb r6
	mov 0x0000000E, r7
	jarl _E2E_P01_Min.1, r31
	st.b r10, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 256
	ld.bu 0x00000003[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_2:	; if_then_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 258
	ld.hu 0x00000000[r20], r2
	mov r2, r5
	shr 0x00000003, r5
	add r22, r5
	ld.bu 0x00000000[r5], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 260
	andi 0x0000000F, r5, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 264
	shr 0x00000004, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 258
	andi 0x00000007, r2, r0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 260
	cmov 0x00000002, r6, r5, r24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 276
	cmp 0x0000000F, r24
	bnz9 .BB.LABEL.4_7
.BB.LABEL.4_3:	; if_then_bb33.bb213_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	movea 0x00000017, r0, r23
	br9 .BB.LABEL.4_21
.BB.LABEL.4_4:	; if_else_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 269
	ld.bu 0x0000000D[r21], r20
	cmp 0x0000000D, r20
	bh9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb73
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 271
	add 0x00000001, r20
	st.b r20, 0x0000000D[r21]
.BB.LABEL.4_6:	; if_break_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov 0x00000001, r20
	br9 .BB.LABEL.4_16
.BB.LABEL.4_7:	; if_break_bb91
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 281
	ld.hu 0x00000002[r20], r2
	shr 0x00000003, r2
	add r22, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 283
	ld.bu 0x00000000[r2], r25
	ld.w 0x00000008[r20], r2
	cmp 0x00000003, r2
	bz9 .BB.LABEL.4_9
.BB.LABEL.4_8:	; if_break_bb91.if_break_bb140_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov 0x00000000, r26
	br9 .BB.LABEL.4_12
.BB.LABEL.4_9:	; if_then_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 285
	ld.hu 0x00000006[r20], r2
	mov r2, r26
	shr 0x00000003, r26
	add r22, r26
	ld.bu 0x00000000[r26], r26
	andi 0x00000007, r2, r0
	bnz9 .BB.LABEL.4_11
.BB.LABEL.4_10:	; if_then_bb115
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 288
	andi 0x0000000F, r26, r26
	br9 .BB.LABEL.4_12
.BB.LABEL.4_11:	; if_else_bb127
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 292
	shr 0x00000004, r26
.BB.LABEL.4_12:	; if_break_bb140
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 295
	mov r20, r6
	mov r24, r7
	mov r22, r8
	jarl _E2E_P01CalculateCRC8, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 297
	cmp r10, r25
	bnz9 .BB.LABEL.4_20
.BB.LABEL.4_13:	; if_then_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 299
	ld.w 0x00000008[r20], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.4_17
.BB.LABEL.4_14:	; bb158
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	ld.hu 0x00000004[r20], r2
	shr 0x00000008, r2
	andi 0x0000000F, r2, r2
	cmp r2, r26
	bz9 .BB.LABEL.4_17
.BB.LABEL.4_15:	; if_then_bb176
	mov 0x00000002, r20
.BB.LABEL.4_16:	; if_then_bb176
	st.w r20, 0x00000008[r21]
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 326
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.4_17:	; if_else_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 307
	ld.bu 0x00000002[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_19
.BB.LABEL.4_18:	; if_then_bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 309
	st.b r0, 0x00000002[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 310
	ld.b 0x0000000E[r20], r20
	st.b r20, 0x00000001[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 311
	st.b r24, 0x00000000[r21]
	mov 0x00000004, r20
	br9 .BB.LABEL.4_16
.BB.LABEL.4_19:	; if_else_bb200
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 316
	mov r20, r6
	mov r21, r7
	mov r24, r8
	jarl _E2E_P01Check_Seqence.1, r31
	mov r23, r10
	dispose 0x00000000, 0x00000779, [r31]
.BB.LABEL.4_20:	; if_else_bb206
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 322
	st.w r2, 0x00000008[r21]
.BB.LABEL.4_21:	; bb213
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov r23, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 326
	dispose 0x00000000, 0x00000779, [r31]
_E2E_P01CheckInit:
	.stack _E2E_P01CheckInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 343
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 349
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 355
	st.b r0, 0x00000000[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 356
	st.b r0, 0x00000001[r6]
	mov 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 357
	st.b r2, 0x00000002[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 358
	st.b r2, 0x00000003[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 359
	st.b r0, 0x00000004[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 360
	st.w r2, 0x00000008[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 361
	st.b r0, 0x0000000D[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 362
	st.b r0, 0x0000000C[r6]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 365
	jmp [r31]
_E2E_P01MapStatusToSM:
	.stack _E2E_P01MapStatusToSM = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 382
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 387
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; entry.if_break_bb29_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov 0x00000003, r10
.BB.LABEL.6_2:	; if_break_bb29
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 448
	zxb r10
	jmp [r31]
.BB.LABEL.6_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 392
	cmp 0x00000001, r8
	bnz9 .BB.LABEL.6_18
.BB.LABEL.6_4:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 394
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.6_9
.BB.LABEL.6_5:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 415
	jmp [r31]
.BB.LABEL.6_9:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 405
	jmp [r31]
.BB.LABEL.6_13:	; if_then_bb13
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 408
	jmp [r31]
.BB.LABEL.6_17:	; switch_clause_bb18
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 412
	jmp [r31]
.BB.LABEL.6_18:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 422
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.6_23
.BB.LABEL.6_19:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 443
	jmp [r31]
.BB.LABEL.6_23:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 433
	jmp [r31]
.BB.LABEL.6_27:	; if_else_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	addi 0xFFFFFFE0, r7, r0
	bz9 .BB.LABEL.6_15
.BB.LABEL.6_28:	; if_else_bb20
	addi 0xFFFFFFC0, r7, r0
	bnz9 .BB.LABEL.6_22
.BB.LABEL.6_29:	; switch_clause_bb26
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 440
	jmp [r31]
.BB.LABEL.6_30:	; switch_clause_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 436
	jmp [r31]
_E2E_P01CheckDataIDMode.1:
	.stack _E2E_P01CheckDataIDMode.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 458
	ld.w 0x00000008[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 462
	cmp 0x00000004, r2
	setf 0x0000000B, r10
	jmp [r31]
_E2E_P01ProtectVerifyInputs.1:
	.stack _E2E_P01ProtectVerifyInputs.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 494
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 502
	cmp 0x00000000, r6
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; entry
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.8_4
.BB.LABEL.8_3:	; entry.if_break_bb44_crit_edge
	movea 0x00000013, r0, r10
	br9 .BB.LABEL.8_6
.BB.LABEL.8_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 505
	ld.bu 0x00000000[r7], r2
	cmp 0x0000000F, r2
	bl9 .BB.LABEL.8_7
.BB.LABEL.8_5:	; if_then_bb.if_break_bb44_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	movea 0x00000017, r0, r10
.BB.LABEL.8_6:	; if_break_bb44
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 520
	zxb r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.8_7:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 509
	jarl _E2E_P01CheckDataIDMode.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_8:	; if_else_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 515
	dispose 0x00000000, 0x00000001, [r31]
_E2E_P01CheckVerifyInputs.1:
	.stack _E2E_P01CheckVerifyInputs.1 = 4
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 526
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 534
	cmp 0x00000000, r6
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; entry
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.9_4
.BB.LABEL.9_3:	; entry.if_break_bb90_crit_edge
	movea 0x00000013, r0, r10
	br9 .BB.LABEL.9_6
.BB.LABEL.9_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 537
	ld.bu 0x00000000[r7], r2
	cmp 0x0000000F, r2
	bl9 .BB.LABEL.9_7
.BB.LABEL.9_5:	; if_then_bb.if_break_bb90_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	movea 0x00000017, r0, r10
.BB.LABEL.9_6:	; if_break_bb90
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 555
	zxb r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.9_7:	; bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	ld.bu 0x00000001[r7], r2
	cmp 0x0000000E, r2
	bh9 .BB.LABEL.9_5
.BB.LABEL.9_8:	; bb47
	ld.bu 0x0000000C[r7], r2
	ld.bu 0x00000010[r6], r5
	cmp r5, r2
	bh9 .BB.LABEL.9_5
.BB.LABEL.9_9:	; bb65
	ld.bu 0x0000000D[r7], r2
	cmp 0x0000000E, r2
	bh9 .BB.LABEL.9_5
.BB.LABEL.9_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 544
	jarl _E2E_P01CheckDataIDMode.1, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.9_5
.BB.LABEL.9_11:	; if_else_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 550
	dispose 0x00000000, 0x00000001, [r31]
_E2E_P01CalculateCRC8:
	.stack _E2E_P01CalculateCRC8 = 24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 562
	prepare 0x00000079, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 570
	st.b r0, 0x00000001[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 572
	ld.hu 0x00000004[r6], r2
	shr 0x00000008, r2
	st.b r2, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 573
	ld.b 0x00000004[r6], r2
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 577
	ld.w 0x00000008[r6], r2
	cmp 0x00000003, r2
	mov r8, r20
	mov r6, r21
	bh9 .BB.LABEL.10_3
.BB.LABEL.10_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.10_20[r2]
.SWITCH.LABEL.10_20:
	br9 .BB.LABEL.10_2
	br9 .BB.LABEL.10_4
	br9 .BB.LABEL.10_5
	br9 .BB.LABEL.10_7
.SWITCH.LABEL.10_20.END:
.BB.LABEL.10_2:	; switch_clause_bb
	mov 0x00000000, r22
	mov 0x00000001, r23
	movea 0x000000FF, r0, r8
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 580
	mov r23, r7
	mov r22, r9
	jarl _Crc_CalculateCRC8, r31
	movea 0x00000003, r3, r6
	br9 .BB.LABEL.10_8
.BB.LABEL.10_3:	; entry.switch_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.10_10
.BB.LABEL.10_4:	; switch_clause_bb25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 587
	andi 0x00000001, r7, r0
	bnz9 .BB.LABEL.10_6
.BB.LABEL.10_5:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov 0x00000000, r9
	movea 0x000000FF, r0, r8
	mov 0x00000001, r7
	movea 0x00000002, r3, r6
	br9 .BB.LABEL.10_9
.BB.LABEL.10_6:	; if_else_bb
	mov 0x00000000, r9
	movea 0x000000FF, r0, r8
	mov 0x00000001, r7
	movea 0x00000003, r3, r6
	br9 .BB.LABEL.10_9
.BB.LABEL.10_7:	; switch_clause_bb33
	mov 0x00000000, r22
	mov 0x00000001, r23
	movea 0x000000FF, r0, r8
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 597
	mov r23, r7
	mov r22, r9
	jarl _Crc_CalculateCRC8, r31
	movea 0x00000001, r3, r6
.BB.LABEL.10_8:	; switch_clause_bb33
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov r23, r7
	mov r10, r8
	mov r22, r9
.BB.LABEL.10_9:	; switch_clause_bb33
	jarl _Crc_CalculateCRC8, r31
.BB.LABEL.10_10:	; switch_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 605
	ld.hu 0x00000002[r21], r2
	cmp 0x00000008, r2
	bl9 .BB.LABEL.10_13
.BB.LABEL.10_11:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	ld.w 0x00000008[r21], r2
	cmp 0x00000004, r2
	bz9 .BB.LABEL.10_13
.BB.LABEL.10_12:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 607
	mov r10, r8
	br9 .BB.LABEL.10_16
.BB.LABEL.10_13:	; if_else_bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 609
	ld.hu 0x00000002[r21], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.10_15
.BB.LABEL.10_14:	; bb72
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	ld.w 0x00000008[r21], r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.10_17
.BB.LABEL.10_15:	; if_else_bb87
	movea 0x000000FF, r0, r8
.BB.LABEL.10_16:	; if_else_bb87
	ld.hu 0x00000002[r21], r7
	shr 0x00000003, r7
	mov 0x00000000, r9
	mov r20, r6
	jarl _Crc_CalculateCRC8, r31
.BB.LABEL.10_17:	; if_break_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 619
	ld.hu 0x00000002[r21], r6
	mov r6, r2
	shr 0x00000003, r2
	ld.hu 0x0000000C[r21], r7
	mov r7, r5
	shr 0x00000003, r5
	add 0xFFFFFFFF, r5
	cmp r5, r2
	bnc9 .BB.LABEL.10_19
.BB.LABEL.10_18:	; if_then_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 621
	shr 0x00000003, r6
	shr 0x00000003, r7
	sub r6, r7
	add 0xFFFFFFFF, r7
	add r20, r6
	add 0x00000001, r6
	mov 0x00000000, r9
	mov r10, r8
	jarl _Crc_CalculateCRC8, r31
.BB.LABEL.10_19:	; if_break_bb134
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 627
	not r10, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 630
	zxb r10
	dispose 0x00000004, 0x00000079, [r31]
_E2E_P01Check_Seqence.1:
	.stack _E2E_P01Check_Seqence.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 636
	addi 0x0000000F, r8, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 644
	ld.bu 0x00000000[r7], r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 650
	cmp r8, r5
	cmov 0x00000003, r8, r2, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 653
	andi 0x000000FF, r2, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 650
	sub r5, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 653
	cmp r5, r9
	bnz9 .BB.LABEL.11_4
.BB.LABEL.11_1:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 655
	ld.bu 0x0000000D[r7], r2
	cmp 0x0000000D, r2
	bh9 .BB.LABEL.11_3
.BB.LABEL.11_2:	; if_then_bb42
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 657
	add 0x00000001, r2
	st.b r2, 0x0000000D[r7]
.BB.LABEL.11_3:	; if_break_bb47
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	mov 0x00000008, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 659
	st.w r2, 0x00000008[r7]
	jmp [r31]
.BB.LABEL.11_4:	; if_else_bb50
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 661
	andi 0x000000FF, r2, r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.11_8
.BB.LABEL.11_5:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 663
	ld.b 0x0000000E[r6], r2
	st.b r2, 0x00000001[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 664
	st.b r8, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 665
	st.b r0, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 666
	ld.bu 0x0000000F[r6], r2
	ld.bu 0x0000000D[r7], r5
	st.b r0, 0x0000000D[r7]
	cmp r2, r5
	bh9 .BB.LABEL.11_14
.BB.LABEL.11_6:	; if_then_bb78
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 669
	ld.bu 0x0000000C[r7], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.11_11
.BB.LABEL.11_7:	; if_else_bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 676
	st.w r0, 0x00000008[r7]
	jmp [r31]
.BB.LABEL.11_8:	; if_else_bb111
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 686
	andi 0x000000FF, r2, r5
	ld.bu 0x00000001[r7], r9
	cmp r9, r5
	bh9 .BB.LABEL.11_15
.BB.LABEL.11_9:	; if_then_bb121
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 688
	ld.b 0x0000000E[r6], r5
	st.b r5, 0x00000001[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 689
	st.b r8, 0x00000000[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 690
	add 0xFFFFFFFF, r2
	st.b r2, 0x00000004[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 691
	ld.bu 0x0000000F[r6], r2
	ld.bu 0x0000000D[r7], r5
	st.b r0, 0x0000000D[r7]
	cmp r2, r5
	bh9 .BB.LABEL.11_14
.BB.LABEL.11_10:	; if_then_bb147
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 694
	ld.bu 0x0000000C[r7], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_13
.BB.LABEL.11_11:	; if_then_bb157
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	add 0xFFFFFFFF, r2
.BB.LABEL.11_12:	; if_then_bb157
	st.b r2, 0x0000000C[r7]
	mov 0x00000003, r2
	st.w r2, 0x00000008[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 722
	jmp [r31]
.BB.LABEL.11_13:	; if_else_bb164
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	movea 0x00000020, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 701
	st.w r2, 0x00000008[r7]
	jmp [r31]
.BB.LABEL.11_14:	; if_else_bb168
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	ld.b 0x00000010[r6], r2
	br9 .BB.LABEL.11_12
.BB.LABEL.11_15:	; if_else_bb179
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 713
	st.b r0, 0x0000000D[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 714
	ld.bu 0x00000010[r6], r2
	st.b r2, 0x0000000C[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 715
	cmp 0x00000000, r2
	bz9 .BB.LABEL.11_17
.BB.LABEL.11_16:	; if_then_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 717
	ld.b 0x0000000E[r6], r2
	st.b r2, 0x00000001[r7]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 718
	st.b r8, 0x00000000[r7]
.BB.LABEL.11_17:	; if_break_bb203
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 0
	movea 0x00000040, r0, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P01.c", 720
	st.w r2, 0x00000008[r7]
	jmp [r31]
