#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\SecureProgram\SignatureHeader.c -oDefaultBuild\SignatureHeader.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_7651535d9eb24ab6a11e336d260dbb35nzmnktnh.qtd
#@	compiled at Thu Jul 16 13:41:31 2026

	.file "..\..\Bsw\SystemServices\SecureProgram\SignatureHeader.c"

	$reg_mode 22
	.dbl_size 4

	.public _g_pSignatureHeader, 12
	.public _ModuleAddressInfoSize, 4
	.public _g_cryptoTypeFlag, 1
	.public _SignatureHeader_DetermineCryptoType
	.public _SignatureHeader_Init

	.section .text, text
_IsAllFF.1:
	.stack _IsAllFF.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 32
	mov 0x00000000, r5
	br9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 36
	mov r6, r8
	add r5, r8
	ld.bu 0x00000000[r8], r8
	addi 0xFFFFFF01, r8, r0
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	add 0x00000001, r5
.BB.LABEL.1_3:	; bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 34
	cmp r7, r5
	bl9 .BB.LABEL.1_1
.BB.LABEL.1_4:	; bb14.bb22_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; bb.bb22_crit_edge
	mov 0x00000000, r10
.BB.LABEL.1_6:	; bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 42
	jmp [r31]
_ValidateModuleID.1:
	.stack _ValidateModuleID.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 49
	mov r6, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 51
	shr 0x00000008, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 55
	addi 0xFFFFFF5F, r5, r0
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 61
	andi 0x000000FF, r6, r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	andi 0x000000FF, r6, r5
	addi 0xFFFFFF70, r5, r0
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_3:	; if_break_bb
	andi 0x000000FF, r6, r5
	addi 0xFFFFFF6F, r5, r0
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_4:	; bb44
	andi 0x000000FF, r6, r5
	cmp 0x00000002, r5
	blt9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; bb50
	zxb r6
	addi 0xFFFFFFC0, r6, r0
	bgt9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_break_bb78
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 69
	jmp [r31]
.BB.LABEL.2_7:	; bb80
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 70
	jmp [r31]
_ValidateSingleModuleAddressInfo.1:
	.stack _ValidateSingleModuleAddressInfo.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 77
	ld.w 0x00000000[r6], r5
	movhi 0x00002000, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 80
	cmp r7, r5
	bnc9 .BB.LABEL.3_3
.BB.LABEL.3_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 86
	ld.w 0x00000004[r6], r6
	add r6, r5
	movhi 0x00002000, r0, r6
	cmp r6, r5
	bnc9 .BB.LABEL.3_3
.BB.LABEL.3_2:	; if_break_bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 91
	jmp [r31]
.BB.LABEL.3_3:	; bb21
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	mov 0x00000002, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 92
	jmp [r31]
_ValidateSignerInfo.1:
	.stack _ValidateSignerInfo.1 = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 99
	ld.bu 0x00000000[r6], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 102
	addi 0xFFFFFFE0, r5, r0
	bz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.bb235_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.4_13
.BB.LABEL.4_2:	; entry.bb28_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.4_5
.BB.LABEL.4_3:	; bb11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 110
	andi 0x000000FF, r5, r7
	add r6, r7
	ld.bu 0x00000001[r7], r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.4_1
.BB.LABEL.4_4:	; if_break_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	add 0x00000001, r5
.BB.LABEL.4_5:	; bb28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 108
	andi 0x000000FF, r5, r7
	cmp 0x00000008, r7
	blt9 .BB.LABEL.4_3
.BB.LABEL.4_6:	; bb28.bb52_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.4_9
.BB.LABEL.4_7:	; bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 119
	andi 0x000000FF, r5, r7
	add r6, r7
	ld.bu 0x00000009[r7], r7
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.4_1
.BB.LABEL.4_8:	; if_break_bb49
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	add 0x00000001, r5
.BB.LABEL.4_9:	; bb52
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 117
	andi 0x000000FF, r5, r7
	cmp 0x0000000F, r7
	ble9 .BB.LABEL.4_7
.BB.LABEL.4_10:	; bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 126
	ld.bu 0x00000020[r6], r5
	cmp 0x00000004, r5
	bz9 .BB.LABEL.4_14
.BB.LABEL.4_11:	; bb58
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	cmp 0x00000001, r5
	bz9 .BB.LABEL.4_14
.BB.LABEL.4_12:	; bb58.bb235_crit_edge
	mov 0x00000004, r10
.BB.LABEL.4_13:	; bb235
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 158
	zxb r10
	jmp [r31]
.BB.LABEL.4_14:	; if_break_bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 133
	ld.bu 0x00000021[r6], r5
	addi 0xFFFFFFEF, r5, r0
	bz9 .BB.LABEL.4_16
.BB.LABEL.4_15:	; if_break_bb87
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	addi 0xFFFFFFDF, r5, r0
	bnz9 .BB.LABEL.4_1
.BB.LABEL.4_16:	; if_break_bb117
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 140
	ld.bu 0x00000022[r6], r5
	cmp 0x00000002, r5
	bz9 .BB.LABEL.4_18
.BB.LABEL.4_17:	; if_break_bb117
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	cmp 0x00000007, r5
	bnz9 .BB.LABEL.4_1
.BB.LABEL.4_18:	; if_break_bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 147
	ld.bu 0x00000023[r6], r5
	addi 0xFFFFFFF0, r5, r6
	zxb r6
	cmp 0x00000002, r6
	bl9 .BB.LABEL.4_23
.BB.LABEL.4_19:	; if_break_bb147
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	addi 0xFFFFFFE0, r5, r0
	bz9 .BB.LABEL.4_23
.BB.LABEL.4_20:	; if_break_bb147
	addi 0xFFFFFFDF, r5, r0
	bz9 .BB.LABEL.4_23
.BB.LABEL.4_21:	; if_break_bb147
	addi 0xFFFFFFC0, r5, r0
	bz9 .BB.LABEL.4_23
.BB.LABEL.4_22:	; if_break_bb147
	addi 0xFFFFFFBF, r5, r0
	bnz9 .BB.LABEL.4_1
.BB.LABEL.4_23:	; if_break_bb233
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 157
	jmp [r31]
_SignatureHeader_DetermineCryptoType:
	.stack _SignatureHeader_DetermineCryptoType = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 165
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 170
	movhi HIGHW1(#_g_cryptoTypeFlag), r0, r5
	mov 0xFFFFFFFF, r6
	st.b r6, LOWW(#_g_cryptoTypeFlag)[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 173
	movhi HIGHW1(#_g_pSignatureHeader), r0, r5
	ld.w LOWW(#_g_pSignatureHeader)[r5], r5
	ld.hu 0x00000000[r5], r6
	jarl _ValidateModuleID.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 174
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 180
	movhi HIGHW1(#_g_pSignatureHeader), r0, r5
	ld.w LOWW(#_g_pSignatureHeader)[r5], r5
	ld.hu 0x00000002[r5], r6
	cmp 0x00000000, r6
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_2:	; if_break_bb.bb164_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	mov 0x00000002, r10
.BB.LABEL.5_3:	; bb164
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 265
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.5_4:	; if_break_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 187
	ld.hu 0x00000004[r5], r5
	cmp 0x00000009, r5
	bh9 .BB.LABEL.5_2
.BB.LABEL.5_5:	; if_break_bb22.bb51_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	mov 0x00000000, r25
	br9 .BB.LABEL.5_8
.BB.LABEL.5_6:	; bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 196
	movhi HIGHW1(#_g_pSignatureHeader+0x00000004), r0, r5
	ld.w LOWW(#_g_pSignatureHeader+0x00000004)[r5], r6
	andi 0x0000FFFF, r25, r5
	shl 0x00000003, r5
	add r5, r6
	jarl _ValidateSingleModuleAddressInfo.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 197
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_7:	; if_break_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 0
	add 0x00000001, r25
.BB.LABEL.5_8:	; bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 194
	movhi HIGHW1(#_g_pSignatureHeader), r0, r5
	ld.w LOWW(#_g_pSignatureHeader)[r5], r5
	ld.hu 0x00000004[r5], r5
	andi 0x0000FFFF, r25, r6
	cmp r5, r6
	bl9 .BB.LABEL.5_6
.BB.LABEL.5_9:	; bb61
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 205
	movhi HIGHW1(#_g_pSignatureHeader+0x00000008), r0, r5
	ld.w LOWW(#_g_pSignatureHeader+0x00000008)[r5], r5
	movea 0x000000A4, r5, r6
	movea 0x00000020, r0, r7
	jarl _IsAllFF.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_10:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 208
	movhi HIGHW1(#_g_pSignatureHeader+0x00000008), r0, r5
	ld.w LOWW(#_g_pSignatureHeader+0x00000008)[r5], r5
	movea 0x000000C4, r5, r6
	movea 0x00000040, r0, r7
	jarl _IsAllFF.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_11:	; if_then_bb90
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 211
	movhi HIGHW1(#_g_pSignatureHeader+0x00000008), r0, r5
	ld.w LOWW(#_g_pSignatureHeader+0x00000008)[r5], r6
	jarl _ValidateSignerInfo.1, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_12:	; if_then_bb98
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 213
	movhi HIGHW1(#_g_cryptoTypeFlag), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_g_cryptoTypeFlag)[r5]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 215
	dispose 0x00000000, 0x00000201, [r31]
_SignatureHeader_Init:
	.stack _SignatureHeader_Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 271
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 276
	mov #_g_pSignatureHeader, r5
	mov 0x00080200, r6
	st.w r6, 0x00000000[r5]
	mov 0x00080206, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 285
	ld23.hu 0x00080204[r0], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 280
	st.w r6, 0x00000004[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 285
	shl 0x00000003, r7
	movhi HIGHW1(#_ModuleAddressInfoSize), r0, r6
	st.w r7, LOWW(#_ModuleAddressInfoSize)[r6]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 288
	ld.w 0x00000004[r5], r6
	add r7, r6
	st.w r6, 0x00000008[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 294
	jarl _SignatureHeader_DetermineCryptoType, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SignatureHeader.c", 295
	dispose 0x00000000, 0x00000001, [r31]
	.section .bss, bss
	.align 4
_g_pSignatureHeader:
	.ds (12)
	.section .data, data
	.align 4
_ModuleAddressInfoSize:
	.ds (4)
_g_cryptoTypeFlag:
	.db 0xFF
