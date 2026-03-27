#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\Libraries\E2E\E2E.c -oDefaultBuild\E2E.obj -Xcpu=g3kh -Xno_warning=20188,20111 -g -g_line -I..\..\Srcode\app\diagnostic -I..\..\Srcode\app\parameter_store -I..\..\Cpu\port -I..\..\Cpu\uart -I..\..\Cpu\iic -I..\..\Srcode\app\vehicle_data_to_mpu -I..\..\Srcode\app\power_manage -I..\..\Srcode\app\mcu_cpu_sync -I..\..\Srcode\app\remote_control -I..\..\Srcode\app\can_cycle_send -I..\..\Srcode\app\project_configure -I..\..\Srcode\sdk\include -I..\..\Srcode\commonLib\include -I..\..\Srcode\hal\include -I..\..\Bsw\Mcal\icu\include -I..\..\Bsw\Config\MCAL_Config\Icu_OutPut\include -I..\..\Bsw\Crypto\CRYPTO\vss -I..\..\ASW\CDD_FVM -I..\..\Bsw\Memory\EEIf -I..\..\Bsw\Communication\CAN\CanTSyn -I..\..\Bsw\SystemServices\StbM -I..\..\Bsw\Crypto\CSM -I..\..\Bsw\Crypto\CRYPTO\RSA -I..\..\Bsw\Crypto\CRYPTO\RandomGen\CTR_DRBG -I..\..\Bsw\Crypto\CRYPTO\MAC\CMAC -I..\..\Bsw\Crypto\CRYPTO\Hash\sha256 -I..\..\Bsw\Crypto\CRYPTO\dh -I..\..\Bsw\Crypto\CRYPTO\AES -I..\..\Bsw\Crypto\CRYPTO -I..\..\Bsw\Crypto\CryInterface -I..\..\Bsw\Communication\Common\SecOC -I..\..\Bsw\Memory\NvM -I..\..\Bsw\Memory\MemIf -I..\..\Bsw\Memory\Fee -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\Communication\Common\IpduM -I..\..\ASW\APP -I..\..\Bsw\SystemServices\BswM -I..\..\ASW\BSW_Ext -I..\..\Bsw\Communication\Common\Dcm -I..\..\Bsw\Communication\CAN\CanTp -I..\..\Bsw\SystemServices\Dem -I..\..\Bsw\Libraries\E2E -I..\..\Bsw\Libraries\Crc -I..\..\Bsw\Communication\Common\NmIf -I..\..\Bsw\Communication\CAN\CanNm -I..\..\Bsw\Config\BSW_Config\RTE\Rte -I..\..\Bsw\Config\BSW_Config\RTE\SchM -I..\..\Bsw\Libraries\IStd -I..\..\Bsw\SystemServices\EcuM -I..\..\Bsw\SystemServices\ComM -I..\..\Bsw\Communication\CAN\CanSM -I..\..\Bsw\Communication\CAN\CanIf -I..\..\Bsw\Communication\Common\Com -I..\..\Bsw\Communication\Common\PDUR -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xfloat=fpu -Xround=zero -Xdiv -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_582aa8a223f5497c9461b74b4706aaecded0eopi.j5f
#@	compiled at Fri Mar 27 09:50:12 2026

	.file "..\..\Bsw\Libraries\E2E\E2E.c"

	$reg_mode 32
	.dbl_size 8

	.public _E2E_SMCheck
	.public _E2E_SMCheckInit

	.section .text, text
_E2E_SMCheck:
	.stack _E2E_SMCheck = 16
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 179
	prepare 0x00000071, 0x00000000
	mov r8, r20
	addi 0x00000000, r7, r21
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 188
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	cmp 0x00000000, r20
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; entry.if_break_bb209_crit_edge
	movea 0x00000013, r0, r10
	br9 .BB.LABEL.1_11
.BB.LABEL.1_3:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 192
	cmp 0x00000006, r6
	bl9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_else_bb.if_break_bb209_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	movea 0x00000017, r0, r10
	br9 .BB.LABEL.1_11
.BB.LABEL.1_5:	; if_else_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 198
	ld.bu 0x00000013[r20], r2
	cmp 0x00000004, r2
	bh9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_else_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.1_28[r2]
.SWITCH.LABEL.1_28:
	br9 .BB.LABEL.1_19
	br9 .BB.LABEL.1_7
	br9 .BB.LABEL.1_8
	br9 .BB.LABEL.1_14
	br9 .BB.LABEL.1_25
.SWITCH.LABEL.1_28.END:
.BB.LABEL.1_7:	; if_else_bb22.if_break_bb209_crit_edge
	movea 0x0000001A, r0, r10
	br9 .BB.LABEL.1_11
.BB.LABEL.1_8:	; switch_clause_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 204
	cmp 0x00000003, r6
	bz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; switch_clause_bb27
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	cmp 0x00000005, r6
	bnz9 .BB.LABEL.1_12
.BB.LABEL.1_10:	; switch_clause_bb27.if_break_bb209_crit_edge
	mov 0x00000000, r10
.BB.LABEL.1_11:	; if_break_bb209
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 271
	zxb r10
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_12:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	mov 0x00000003, r21
.BB.LABEL.1_13:	; if_then_bb45
	st.b r21, 0x00000013[r20]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 271
	dispose 0x00000000, 0x00000071, [r31]
.BB.LABEL.1_14:	; switch_clause_bb48
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 210
	mov r21, r7
	mov r20, r8
	jarl _E2E_SMAddStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 211
	ld.bu 0x00000012[r20], r2
	ld.bu 0x00000002[r21], r5
	cmp r5, r2
	bh9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	ld.bu 0x00000011[r20], r2
	ld.bu 0x00000001[r21], r5
	cmp r5, r2
	bnc9 .BB.LABEL.1_27
.BB.LABEL.1_16:	; if_else_bb86
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 217
	ld.bu 0x00000012[r20], r2
	ld.bu 0x00000002[r21], r5
	cmp r5, r2
	bnh9 .BB.LABEL.1_10
.BB.LABEL.1_17:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 219
	ld.bu 0x00000009[r21], r2
	mov r20, r6
	mov r21, r7
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_23
.BB.LABEL.1_18:	; if_then_bb106
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	jarl _E2E_SMClearStatus.1, r31
	br9 .BB.LABEL.1_24
.BB.LABEL.1_19:	; switch_clause_bb118
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 236
	mov r21, r7
	mov r20, r8
	jarl _E2E_SMAddStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 237
	ld.bu 0x00000012[r20], r2
	ld.bu 0x00000004[r21], r5
	cmp r5, r2
	bh9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; bb132
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	ld.bu 0x00000011[r20], r2
	ld.bu 0x00000003[r21], r5
	cmp r5, r2
	bnc9 .BB.LABEL.1_10
.BB.LABEL.1_21:	; if_else_bb152
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 244
	ld.bu 0x00000009[r21], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_24
.BB.LABEL.1_22:	; if_then_bb160
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 246
	mov r20, r6
	mov r21, r7
	br9 .BB.LABEL.1_18
.BB.LABEL.1_23:	; if_else_bb109
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	mov 0x00000004, r8
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 225
	jarl _E2E_SMClearRemainingStatus.1, r31
.BB.LABEL.1_24:	; if_break_bb163
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	mov 0x00000004, r21
	br9 .BB.LABEL.1_13
.BB.LABEL.1_25:	; switch_clause_bb167
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 252
	mov r21, r7
	mov r20, r8
	jarl _E2E_SMAddStatus.1, r31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 253
	ld.bu 0x00000012[r20], r2
	ld.bu 0x00000006[r21], r5
	cmp r5, r2
	bh9 .BB.LABEL.1_10
.BB.LABEL.1_26:	; bb181
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	ld.bu 0x00000011[r20], r2
	ld.bu 0x00000005[r21], r5
	cmp r5, r2
	bl9 .BB.LABEL.1_10
.BB.LABEL.1_27:	; if_then_bb200
	mov 0x00000000, r22
	mov r20, r6
	mov r21, r7
	mov r22, r8
	jarl _E2E_SMClearRemainingStatus.1, r31
	st.b r0, 0x00000013[r20]
	mov r22, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 271
	dispose 0x00000000, 0x00000071, [r31]
_E2E_SMCheckInit:
	.stack _E2E_SMCheckInit = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 288
	cmp 0x00000000, r6
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 297
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_1:	; entry
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.2_10
.BB.LABEL.2_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 303
	ld.bu 0x00000013[r6], r2
	mov 0x00000000, r5
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 305
	ld.bu 0x00000000[r7], r2
	br9 .BB.LABEL.2_8
.BB.LABEL.2_4:	; if_else_bb28
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 307
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.2_6
.BB.LABEL.2_5:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 309
	ld.bu 0x00000007[r7], r2
	br9 .BB.LABEL.2_8
.BB.LABEL.2_6:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 313
	ld.bu 0x00000008[r7], r2
	br9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 317
	andi 0x000000FF, r5, r7
	add r6, r7
	mov 0x00000004, r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.2_8:	; bb54
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 315
	andi 0x000000FF, r5, r7
	andi 0x000000FF, r2, r8
	cmp r8, r7
	bl9 .BB.LABEL.2_7
.BB.LABEL.2_9:	; bb62
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 319
	st.b r0, 0x00000010[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 320
	st.b r0, 0x00000011[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 321
	st.b r0, 0x00000012[r6]
	mov 0x00000002, r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 322
	st.b r2, 0x00000013[r6]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.2_10:	; if_break_bb71
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	movea 0x00000013, r0, r10
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 325
	jmp [r31]
_E2E_SMAddStatus.1:
	.stack _E2E_SMAddStatus.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 333
	ld.bu 0x00000010[r8], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 342
	add r8, r2
	st.b r6, 0x00000000[r2]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 343
	ld.bu 0x00000013[r8], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 345
	ld.bu 0x00000000[r7], r2
	br9 .BB.LABEL.3_5
.BB.LABEL.3_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 347
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb31
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 349
	ld.bu 0x00000007[r7], r2
	br9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_else_bb35
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 353
	ld.bu 0x00000008[r7], r2
.BB.LABEL.3_5:	; if_break_bb39
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	mov 0x00000000, r5
	mov r5, r6
	br9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 358
	andi 0x000000FF, r5, r7
	add r8, r7
	ld.bu 0x00000000[r7], r7
	cmp 0x00000000, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 360
	adf 0x00000002, r0, r6, r6
	add 0x00000001, r5
.BB.LABEL.3_7:	; bb57
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 356
	andi 0x000000FF, r5, r7
	cmp r2, r7
	bl9 .BB.LABEL.3_6
.BB.LABEL.3_8:	; bb65
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 363
	st.b r6, 0x00000011[r8]
	mov 0x00000000, r5
	mov r5, r6
	br9 .BB.LABEL.3_10
.BB.LABEL.3_9:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 368
	andi 0x000000FF, r5, r7
	add r8, r7
	ld.bu 0x00000000[r7], r7
	cmp 0x00000003, r7
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 370
	adf 0x00000002, r0, r6, r6
	add 0x00000001, r5
.BB.LABEL.3_10:	; bb88
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 366
	andi 0x000000FF, r5, r7
	cmp r2, r7
	bl9 .BB.LABEL.3_9
.BB.LABEL.3_11:	; bb96
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 373
	st.b r6, 0x00000012[r8]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 375
	ld.bu 0x00000010[r8], r5
	add 0xFFFFFFFF, r2
	cmp r2, r5
	blt9 .BB.LABEL.3_13
.BB.LABEL.3_12:	; if_then_bb110
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 377
	st.b r0, 0x00000010[r8]
	jmp [r31]
.BB.LABEL.3_13:	; if_else_bb113
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 381
	add 0x00000001, r5
	st.b r5, 0x00000010[r8]
	jmp [r31]
_E2E_SMClearStatus.1:
	.stack _E2E_SMClearStatus.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 385
	ld.bu 0x00000013[r6], r2
	mov 0x00000000, r5
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 392
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 394
	ld.bu 0x00000000[r7], r2
	br9 .BB.LABEL.4_6
.BB.LABEL.4_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 396
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_then_bb20
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 398
	ld.bu 0x00000007[r7], r2
	br9 .BB.LABEL.4_6
.BB.LABEL.4_4:	; if_else_bb24
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 402
	ld.bu 0x00000008[r7], r2
	br9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 406
	andi 0x000000FF, r5, r7
	add r6, r7
	mov 0x00000004, r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.4_6:	; bb37
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 404
	andi 0x000000FF, r5, r7
	andi 0x000000FF, r2, r8
	cmp r8, r7
	bl9 .BB.LABEL.4_5
.BB.LABEL.4_7:	; bb45
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 408
	st.b r0, 0x00000011[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 409
	st.b r0, 0x00000012[r6]
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 410
	st.b r0, 0x00000010[r6]
	jmp [r31]
_E2E_SMClearRemainingStatus.1:
	.stack _E2E_SMClearRemainingStatus.1 = 0
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 413
	ld.bu 0x00000013[r6], r2
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 422
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 424
	ld.bu 0x00000000[r7], r2
	br9 .BB.LABEL.5_5
.BB.LABEL.5_2:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 426
	cmp 0x00000003, r2
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 428
	ld.bu 0x00000007[r7], r2
	br9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_else_bb26
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 432
	ld.bu 0x00000008[r7], r2
.BB.LABEL.5_5:	; if_break_bb30
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 434
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.5_7
.BB.LABEL.5_6:	; if_then_bb36
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 436
	ld.bu 0x00000000[r7], r5
	br9 .BB.LABEL.5_10
.BB.LABEL.5_7:	; if_else_bb40
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 438
	cmp 0x00000004, r8
	bz9 .BB.LABEL.5_9
.BB.LABEL.5_8:	; if_else_bb40.if_break_bb52_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.5_10
.BB.LABEL.5_9:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 440
	ld.bu 0x00000008[r7], r5
.BB.LABEL.5_10:	; if_break_bb52
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 446
	cmp r5, r2
	bnc9 .BB.LABEL.5_14
.BB.LABEL.5_11:	; if_break_bb52.bb69_crit_edge
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.5_13
.BB.LABEL.5_12:	; bb
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 450
	andi 0x000000FF, r5, r7
	add r6, r7
	mov 0x00000004, r8
	st.b r8, 0x00000000[r7]
	add 0x00000001, r5
.BB.LABEL.5_13:	; bb69
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 448
	andi 0x000000FF, r5, r7
	addi 0xFFFFFFFF, r2, r8
	cmp r8, r7
	bl9 .BB.LABEL.5_12
.BB.LABEL.5_14:	; return
	.line "D:/wk/sirun/project/dazhong/code/mcu_app/Bsw/Libraries/E2E/E2E.c", 453
	jmp [r31]
