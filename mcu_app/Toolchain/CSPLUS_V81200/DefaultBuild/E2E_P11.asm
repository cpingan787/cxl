#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Libraries\E2E\E2E_P11.c -oDefaultBuild\E2E_P11.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_6b6efa9de083400587ea6a16999cca762kt4cftp.pqa
#@	compiled at Fri Mar 27 09:50:20 2026

	.file "..\..\Bsw\Libraries\E2E\E2E_P11.c"

	$reg_mode 32
	.dbl_size 8

	.public _E2E_P11Protect
	.extern _Crc_CalculateCRC8
	.public _E2E_P11ProtectInit
	.public _E2E_P11Check
	.public _E2E_P11CheckInit
	.public _E2E_P11MapStatusToSM

	.section .text, text
_E2E_P11Protect:
	.stack _E2E_P11Protect = 40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 101
	prepare 0x000007F9, 0x00000004
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 112
	st.b r0, 0x00000001[r3]
	mov r9, r20
	mov r8, r21
	mov r7, r22
	addi 0x00000000, r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 115
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	cmp 0x00000000, r22
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; entry
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; entry.if_break_bb45_crit_edge
	movea 0x00000013, r0, r24
	br9 .BB.LABEL.1_7
.BB.LABEL.1_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 117
	ld.hu 0x00000000[r23], r24
	shr 0x00000003, r24
	cmp r24, r20
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb.if_break_bb45_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000000, r24
	br9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_else_bb
	movea 0x00000017, r0, r24
.BB.LABEL.1_7:	; if_break_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 130
	cmp 0x00000000, r24
	bnz17 .BB.LABEL.1_23
.BB.LABEL.1_8:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 132
	ld.b 0x00000002[r23], r2
	st.b r2, 0x00000002[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 133
	ld.hu 0x00000002[r23], r2
	mov r2, r5
	shr 0x00000008, r5
	st.b r5, 0x00000003[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 135
	ld.w 0x00000008[r23], r5
	cmp 0x00000003, r5
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb68
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 137
	ld.hu 0x0000000E[r23], r5
	andi 0x00000007, r5, r5
	mov 0x0000000F, r6
	shl r5, r6, r5
	ld.hu 0x00000010[r23], r7
	mov r7, r8
	shr 0x00000003, r8
	add r21, r8
	ld.b 0x00000000[r8], r9
	and r5, r9
	shr 0x00000008, r2
	andi 0x0000000F, r2, r2
	andi 0x00000007, r7, r5
	shl r5, r2
	add r2, r9
	st.b r9, 0x00000000[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 142
	ld.hu 0x00000010[r23], r2
	andi 0x00000007, r2, r2
	shl r2, r6
	ld.hu 0x0000000E[r23], r2
	mov r2, r5
	shr 0x00000003, r5
	add r21, r5
	ld.bu 0x00000000[r5], r7
	and r6, r7
	ld.bu 0x00000000[r22], r6
	andi 0x0000000F, r6, r6
	andi 0x00000007, r2, r2
	shl r2, r6
	add r6, r7
	st.b r7, 0x00000000[r5]
	br9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_else_bb144
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 150
	ld.hu 0x0000000E[r23], r2
	andi 0x00000007, r2, r5
	movea 0x000000F0, r0, r6
	shl r5, r6
	shr 0x00000003, r2
	add r21, r2
	ld.bu 0x00000000[r2], r7
	and r6, r7
	ld.bu 0x00000000[r22], r6
	andi 0x0000000F, r6, r6
	shl r5, r6
	add r6, r7
	st.b r7, 0x00000000[r2]
.BB.LABEL.1_11:	; if_break_bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 156
	ld.hu 0x0000000C[r23], r25
	shr 0x00000003, r25
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 157
	ld.w 0x00000008[r23], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; if_then_bb194
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000000, r26
	mov 0x00000001, r27
	movea 0x000000FF, r0, r8
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 159
	mov r27, r7
	mov r26, r9
	jarl _Crc_CalculateCRC8, r31
	movea 0x00000003, r3, r6
	br9 .BB.LABEL.1_16
.BB.LABEL.1_13:	; if_else_bb198
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 162
	cmp 0x00000003, r2
	bz9 .BB.LABEL.1_15
.BB.LABEL.1_14:	; if_else_bb198.if_break_bb211_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.1_17
.BB.LABEL.1_15:	; if_then_bb205
	mov 0x00000000, r26
	mov 0x00000001, r27
	movea 0x000000FF, r0, r8
	movea 0x00000002, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 164
	mov r27, r7
	mov r26, r9
	jarl _Crc_CalculateCRC8, r31
	movea 0x00000001, r3, r6
.BB.LABEL.1_16:	; if_then_bb205
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov r27, r7
	mov r10, r8
	mov r26, r9
	jarl _Crc_CalculateCRC8, r31
.BB.LABEL.1_17:	; if_break_bb211
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 171
	cmp 0x00000000, r25
	bz9 .BB.LABEL.1_20
.BB.LABEL.1_18:	; if_then_bb217
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000000, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 173
	mov r21, r6
	mov r25, r7
	mov r10, r8
	jarl _Crc_CalculateCRC8, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 174
	addi 0x00000001, r25, r2
	cmp r2, r20
	bnh9 .BB.LABEL.1_22
.BB.LABEL.1_19:	; if_then_bb232
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 176
	sub r25, r20
	add r21, r25
	addi 0x00000001, r25, r6
	br9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; if_else_bb247
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 181
	addi 0x00000001, r21, r6
.BB.LABEL.1_21:	; if_else_bb247
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	addi 0xFFFFFFFF, r20, r7
	mov 0x00000000, r9
	mov r10, r8
	jarl _Crc_CalculateCRC8, r31
.BB.LABEL.1_22:	; if_break_bb255
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 184
	ld.hu 0x0000000C[r23], r2
	shr 0x00000003, r2
	add r2, r21
	st.b r10, 0x00000000[r21]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 186
	ld.b 0x00000000[r22], r2
	add 0x00000001, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 187
	zxb r2
	mov 0x0000000F, r5
	divhu r5, r2, r2
	st.b r2, 0x00000000[r22]
.BB.LABEL.1_23:	; if_break_bb274
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	andi 0x000000FF, r24, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 191
	dispose 0x00000004, 0x000007F9, [r31]
_E2E_P11ProtectInit:
	.stack _E2E_P11ProtectInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 209
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 213
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 219
	st.b r0, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 220
	jmp [r31]
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 223
	jmp [r31]
_E2E_P11Check:
	.stack _E2E_P11Check = 56
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 244
	prepare 0x00000FFF, 0x00000008
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 260
	st.b r0, 0x00000005[r3]
	mov r9, r20
	mov r8, r21
	mov r7, r22
	addi 0x00000000, r6, r23
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 264
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	cmp 0x00000000, r22
	bnz9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; entry.if_break_bb88_crit_edge
	movea 0x00000013, r0, r24
	br9 .BB.LABEL.3_12
.BB.LABEL.3_3:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 266
	cmp 0x00000000, r21
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_7
.BB.LABEL.3_5:	; bb42
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_6:	; bb42
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_7:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 268
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_9
.BB.LABEL.3_8:	; if_then_bb66.if_break_bb88_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000000, r25
	mov r25, r24
	br9 .BB.LABEL.3_13
.BB.LABEL.3_9:	; if_then_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 270
	ld.hu 0x00000000[r23], r24
	shr 0x00000003, r24
	cmp r24, r20
	bnz9 .BB.LABEL.3_11
.BB.LABEL.3_10:	; if_then_bb71.if_break_bb88_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000000, r24
	mov 0x00000001, r25
	br9 .BB.LABEL.3_13
.BB.LABEL.3_11:	; if_else_bb
	movea 0x00000017, r0, r24
.BB.LABEL.3_12:	; if_else_bb
	mov 0x00000000, r25
.BB.LABEL.3_13:	; if_break_bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 295
	cmp 0x00000000, r24
	bnz9 .BB.LABEL.3_18
.BB.LABEL.3_14:	; if_then_bb94
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 297
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.3_16
.BB.LABEL.3_15:	; if_then_bb99
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000001, r20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 299
	st.w r20, 0x00000000[r22]
	mov 0x00000000, r10
	mov r10, r26
	mov r10, r27
	mov r10, r20
	st.w r20, 0x00000000[r3]
	br9 .BB.LABEL.3_30
.BB.LABEL.3_16:	; if_else_bb102
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 303
	ld.b 0x00000002[r23], r26
	st.b r26, 0x00000007[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 304
	ld.hu 0x00000002[r23], r26
	shr 0x00000008, r26
	st.b r26, 0x00000006[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 306
	ld.hu 0x00000010[r23], r26
	mov r26, r27
	shr 0x00000003, r27
	add r21, r27
	ld.bu 0x00000000[r27], r27
	andi 0x00000007, r26, r26
	shr r26, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 310
	andi 0x0000000F, r27, r26
	st.w r26, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 309
	ld.hu 0x0000000E[r23], r26
	mov r26, r27
	shr 0x00000003, r27
	add r21, r27
	ld.bu 0x00000000[r27], r27
	andi 0x00000007, r26, r26
	shr r26, r27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 310
	andi 0x0000000F, r27, r27
	cmp 0x0000000F, r27
	bnz9 .BB.LABEL.3_19
.BB.LABEL.3_17:	; if_else_bb102.bb311_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	movea 0x00000017, r0, r24
.BB.LABEL.3_18:	; bb311
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 374
	andi 0x000000FF, r24, r10
	dispose 0x00000008, 0x00000FFF, [r31]
.BB.LABEL.3_19:	; if_break_bb155
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 316
	ld.hu 0x0000000C[r23], r28
	shr 0x00000003, r28
	mov r21, r26
	add r28, r26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 319
	ld.bu 0x00000000[r26], r26
	ld.w 0x00000008[r23], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_21
.BB.LABEL.3_20:	; if_then_bb176
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000000, r29
	mov 0x00000001, r30
	movea 0x000000FF, r0, r8
	movea 0x00000007, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 321
	mov r30, r7
	mov r29, r9
	jarl _Crc_CalculateCRC8, r31
	movea 0x00000006, r3, r6
	br9 .BB.LABEL.3_24
.BB.LABEL.3_21:	; if_else_bb180
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 324
	cmp 0x00000003, r2
	bz9 .BB.LABEL.3_23
.BB.LABEL.3_22:	; if_else_bb180.if_break_bb193_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.3_25
.BB.LABEL.3_23:	; if_then_bb187
	mov 0x00000000, r29
	mov 0x00000001, r30
	movea 0x000000FF, r0, r8
	movea 0x00000007, r3, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 326
	mov r30, r7
	mov r29, r9
	jarl _Crc_CalculateCRC8, r31
	movea 0x00000005, r3, r6
.BB.LABEL.3_24:	; if_then_bb187
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov r30, r7
	mov r10, r8
	mov r29, r9
	jarl _Crc_CalculateCRC8, r31
.BB.LABEL.3_25:	; if_break_bb193
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 333
	cmp 0x00000000, r28
	bz9 .BB.LABEL.3_28
.BB.LABEL.3_26:	; if_then_bb199
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000000, r9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 335
	mov r21, r6
	mov r28, r7
	mov r10, r8
	jarl _Crc_CalculateCRC8, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 336
	addi 0x00000001, r28, r2
	cmp r2, r20
	bnh9 .BB.LABEL.3_30
.BB.LABEL.3_27:	; if_then_bb214
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 338
	sub r28, r20
	add r21, r28
	addi 0x00000001, r28, r6
	br9 .BB.LABEL.3_29
.BB.LABEL.3_28:	; if_else_bb229
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 343
	addi 0x00000001, r21, r6
.BB.LABEL.3_29:	; if_else_bb229
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	addi 0xFFFFFFFF, r20, r7
	mov 0x00000000, r9
	mov r10, r8
	jarl _Crc_CalculateCRC8, r31
.BB.LABEL.3_30:	; if_break_bb238
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 347
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.3_38
.BB.LABEL.3_31:	; if_then_bb244
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 349
	cmp r10, r26
	bnz9 .BB.LABEL.3_36
.BB.LABEL.3_32:	; if_then_bb252
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 351
	ld.w 0x00000008[r23], r2
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.3_34
.BB.LABEL.3_33:	; bb258
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	ld.hu 0x00000002[r23], r2
	shr 0x00000008, r2
	andi 0x0000000F, r2, r2
	ld.w 0x00000000[r3], r5
	cmp r2, r5
	bz9 .BB.LABEL.3_35
.BB.LABEL.3_34:	; bb278
	ld.w 0x00000008[r23], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_36
.BB.LABEL.3_35:	; if_then_bb292
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 355
	mov r23, r6
	mov r22, r7
	mov r27, r8
	jarl _E2E_P11Check_Seqence.1, r31
	andi 0x000000FF, r24, r10
	dispose 0x00000008, 0x00000FFF, [r31]
.BB.LABEL.3_36:	; if_else_bb300
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000007, r2
.BB.LABEL.3_37:	; if_else_bb300
	st.w r2, 0x00000000[r22]
	andi 0x000000FF, r24, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 374
	dispose 0x00000008, 0x00000FFF, [r31]
.BB.LABEL.3_38:	; if_else_bb304
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000001, r2
	br9 .BB.LABEL.3_37
_E2E_P11CheckInit:
	.stack _E2E_P11CheckInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 390
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 394
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x0000000E, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 400
	st.b r2, 0x00000004[r6]
	mov 0x00000007, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 401
	st.w r2, 0x00000000[r6]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 402
	jmp [r31]
.BB.LABEL.4_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 405
	jmp [r31]
_E2E_P11MapStatusToSM:
	.stack _E2E_P11MapStatusToSM = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 419
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 423
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000003, r10
	br9 .BB.LABEL.5_12
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 429
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_11
.BB.LABEL.5_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
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
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 445
	jmp [r31]
.BB.LABEL.5_8:	; switch_clause_bb9
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000001, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 439
	jmp [r31]
.BB.LABEL.5_9:	; switch_clause_bb10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 442
	jmp [r31]
.BB.LABEL.5_10:	; switch_clause_bb12
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000003, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 448
	jmp [r31]
.BB.LABEL.5_11:	; if_else_bb.if_break_bb_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000000, r10
.BB.LABEL.5_12:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 453
	zxb r10
	jmp [r31]
_E2E_P11Check_Seqence.1:
	.stack _E2E_P11Check_Seqence.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 462
	ld.bu 0x00000004[r7], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 470
	cmp r8, r2
	bh9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 472
	subr r8, r2
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 476
	addi 0x0000000E, r8, r5
	sub r2, r5
	add 0x00000001, r5
	mov r5, r2
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 478
	andi 0x000000FF, r2, r5
	ld.bu 0x00000004[r6], r6
	cmp r6, r5
	bh9 .BB.LABEL.6_10
.BB.LABEL.6_4:	; if_then_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 480
	andi 0x000000FF, r2, r0
	bz9 .BB.LABEL.6_8
.BB.LABEL.6_5:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 482
	andi 0x000000FF, r2, r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_then_bb51
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 484
	st.w r0, 0x00000000[r7]
	br9 .BB.LABEL.6_8
.BB.LABEL.6_7:	; if_else_bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	movea 0x00000020, r0, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 488
	st.w r5, 0x00000000[r7]
.BB.LABEL.6_8:	; if_break_bb58
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 491
	andi 0x000000FF, r2, r0
	bnz9 .BB.LABEL.6_12
.BB.LABEL.6_9:	; if_then_bb64
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 0
	mov 0x00000008, r2
	br9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; if_else_bb68
	movea 0x00000040, r0, r2
.BB.LABEL.6_11:	; if_else_bb68
	st.w r2, 0x00000000[r7]
.BB.LABEL.6_12:	; if_break_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E_P11.c", 500
	st.b r8, 0x00000004[r7]
	jmp [r31]
