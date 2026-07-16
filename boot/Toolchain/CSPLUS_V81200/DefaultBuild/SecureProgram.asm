#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\SecureProgram\SecureProgram.c -oDefaultBuild\SecureProgram.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_a51416c28e3942cd87ab2bb8f71a0583s3izuwis.qdh
#@	compiled at Thu Jul 16 13:41:30 2026

	.file "..\..\Bsw\SystemServices\SecureProgram\SecureProgram.c"

	$reg_mode 22
	.dbl_size 4

	.extern _g_pSignatureHeader
	.extern _ModuleAddressInfoSize
	.extern _g_cryptoTypeFlag
	.public _SecureProgram_ValidateSignerInfoSignature
	.extern _EEIf_Write
	.extern _VssSM2_Verify
	.extern _VssEcc256_Verify
	.public _SecureProgram_ValidateFileDigest
	.extern _VssSM3Calc
	.extern _VssSHA256Calc
	.public _SecureProgram_ValidateSignature
	.extern _malloc
	.extern _memcpy
	.extern _free
	.public _SecureProgram_CheckProgrammingIntegrity
	.extern _SignatureHeader_Init

	.section .text, text
_SecureProgram_ValidateSignerInfoSignature:
	.stack _SecureProgram_ValidateSignerInfoSignature = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 20
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 26
	movhi HIGHW1(#_g_pSignatureHeader+0x00000008), r0, r5
	ld.w LOWW(#_g_pSignatureHeader+0x00000008)[r5], r25
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000001, r10
	br9 .BB.LABEL.1_12
.BB.LABEL.1_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 32
	movhi HIGHW1(#_g_cryptoTypeFlag), r0, r5
	ld.bu LOWW(#_g_cryptoTypeFlag)[r5], r5
	addi 0xFFFFFF01, r5, r0
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_break_bb.bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000005, r10
	br9 .BB.LABEL.1_12
.BB.LABEL.1_4:	; if_break_bb16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 39
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_5:	; if_then_bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 45
	ld.bu 0x00000020[r25], r5
	cmp 0x00000004, r5
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_then_bb22.bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.1_12
.BB.LABEL.1_7:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 48
	movea 0x00000024, r25, r8
	movea 0x00000041, r0, r7
	movea 0x00000409, r0, r6
	jarl32 _EEIf_Write, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 51
	movea 0x00000064, r25, r8
	movea 0x00000040, r0, r9
	movea 0x00000064, r0, r7
	mov r25, r6
	jarl32 _VssSM2_Verify, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 54
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_then_bb32.bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.1_12
.BB.LABEL.1_9:	; if_then_bb47
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 56
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.1_10:	; if_else_bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 65
	cmp 0x00000002, r5
	bz9 .BB.LABEL.1_13
.BB.LABEL.1_11:	; if_else_bb50.bb86_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000002, r10
.BB.LABEL.1_12:	; bb86
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 95
	zxb r10
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.1_13:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 71
	ld.bu 0x00000124[r25], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_14:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 74
	movea 0x00000168, r25, r8
	movea 0x00000104, r25, r6
	movea 0x00000040, r0, r9
	movea 0x00000064, r0, r7
	jarl32 _VssEcc256_Verify, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 77
	cmp 0x00000000, r10
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_15:	; if_then_bb77
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 79
	dispose 0x00000000, 0x00000201, [r31]
_SecureProgram_ValidateFileDigest:
	.stack _SecureProgram_ValidateFileDigest = 68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 104
	prepare 0x00000001, 0x00000040
	movea 0x00000020, r0, r5
	mov 0x00000000, r6
	movea 0x00000020, r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 107
	mov r5, r8
	add r7, r8
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry
	st.b r6, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.2_2:	; entry
	cmp r7, r8
	bnz9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; entry
	st.b r0, 0x00000020[r3]
	mov r3, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 108
	add r7, r5
	br9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; entry
	st.b r6, 0x00000000[r7]
	add 0x00000001, r7
.BB.LABEL.2_5:	; entry
	cmp r7, r5
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_6:	; entry
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 113
	movhi HIGHW1(#_g_cryptoTypeFlag), r0, r5
	ld.bu LOWW(#_g_cryptoTypeFlag)[r5], r5
	addi 0xFFFFFF01, r5, r0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 110
	movhi HIGHW1(#_g_pSignatureHeader+0x00000004), r0, r6
	ld.w LOWW(#_g_pSignatureHeader+0x00000004)[r6], r6
	ld.w 0x00000004[r6], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 113
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; entry.bb122_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000005, r10
	br9 .BB.LABEL.2_23
.BB.LABEL.2_8:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 120
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.2_15
.BB.LABEL.2_9:	; if_then_bb25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	movea 0x00000020, r3, r8
	mov 0x00080600, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 124
	jarl32 _VssSM3Calc, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.2_11
.BB.LABEL.2_10:	; if_then_bb25.bb122_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x0000000A, r10
	br9 .BB.LABEL.2_23
.BB.LABEL.2_11:	; if_then_bb25.bb60_crit_edge
	mov 0x00000000, r5
	br9 .BB.LABEL.2_14
.BB.LABEL.2_12:	; bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 132
	andi 0x000000FF, r5, r6
	movea 0x00000020, r3, r7
	add r6, r7
	ld.bu 0x00000000[r7], r7
	movhi HIGHW1(#_g_pSignatureHeader+0x00000008), r0, r8
	ld.w LOWW(#_g_pSignatureHeader+0x00000008)[r8], r8
	add r8, r6
	ld.bu 0x000000A4[r6], r6
	cmp r6, r7
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_13:	; if_break_bb57
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	add 0x00000001, r5
.BB.LABEL.2_14:	; bb60
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 130
	andi 0x000000FF, r5, r6
	addi 0xFFFFFFE0, r6, r0
	blt9 .BB.LABEL.2_12
	br9 .BB.LABEL.2_22
.BB.LABEL.2_15:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 139
	cmp 0x00000002, r5
	bz9 .BB.LABEL.2_17
.BB.LABEL.2_16:	; if_else_bb.bb122_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.2_23
.BB.LABEL.2_17:	; if_then_bb73
	mov r3, r8
	mov 0x00080600, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 143
	jarl32 _VssSHA256Calc, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_18:	; if_then_bb73.bb108_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000000, r5
	br9 .BB.LABEL.2_21
.BB.LABEL.2_19:	; bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 151
	andi 0x000000FF, r5, r6
	mov r3, r7
	add r6, r7
	ld.bu 0x00000000[r7], r7
	movhi HIGHW1(#_g_pSignatureHeader+0x00000008), r0, r8
	ld.w LOWW(#_g_pSignatureHeader+0x00000008)[r8], r8
	add r8, r6
	ld.bu 0x000001A8[r6], r6
	cmp r6, r7
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_20:	; if_break_bb105
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	add 0x00000001, r5
.BB.LABEL.2_21:	; bb108
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 149
	andi 0x000000FF, r5, r6
	addi 0xFFFFFFE0, r6, r0
	blt9 .BB.LABEL.2_19
.BB.LABEL.2_22:	; bb60.bb122_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000000, r10
.BB.LABEL.2_23:	; bb122
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 165
	zxb r10
	dispose 0x00000040, 0x00000001, [r31]
_SecureProgram_ValidateSignature:
	.stack _SecureProgram_ValidateSignature = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 172
	prepare 0x00000385, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 177
	movhi HIGHW1(#_g_pSignatureHeader), r0, r5
	ld.w LOWW(#_g_pSignatureHeader)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.bb179_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.3_9
.BB.LABEL.3_2:	; bb
	movhi HIGHW1(#_g_pSignatureHeader+0x00000004), r0, r5
	ld.w LOWW(#_g_pSignatureHeader+0x00000004)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_1
.BB.LABEL.3_3:	; bb20
	movhi HIGHW1(#_g_pSignatureHeader+0x00000008), r0, r5
	ld.w LOWW(#_g_pSignatureHeader+0x00000008)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.3_1
.BB.LABEL.3_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 183
	movhi HIGHW1(#_g_cryptoTypeFlag), r0, r5
	ld.bu LOWW(#_g_cryptoTypeFlag)[r5], r5
	addi 0xFFFFFF01, r5, r0
	bnz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_break_bb.bb179_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000005, r10
	br9 .BB.LABEL.3_9
.BB.LABEL.3_6:	; if_break_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 190
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.3_12
.BB.LABEL.3_7:	; if_then_bb46
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 195
	movhi HIGHW1(#_ModuleAddressInfoSize), r0, r5
	ld.w LOWW(#_ModuleAddressInfoSize)[r5], r5
	movea 0x000000CA, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 201
	mov r25, r6
	jarl32 _malloc, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 202
	addi 0x00000000, r10, r26
	bnz9 .BB.LABEL.3_10
.BB.LABEL.3_8:	; if_then_bb46.bb179_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000007, r10
.BB.LABEL.3_9:	; bb179
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 293
	zxb r10
	dispose 0x00000000, 0x00000385, [r31]
.BB.LABEL.3_10:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 210
	mov #_g_pSignatureHeader, r27
	ld.w 0x00000000[r27], r7
	mov 0x00000006, r8
	mov r26, r6
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 214
	movhi HIGHW1(#_ModuleAddressInfoSize), r0, r28
	ld.w LOWW(#_ModuleAddressInfoSize)[r28], r8
	ld.w 0x00000004[r27], r7
	addi 0x00000006, r26, r6
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 218
	ld.w 0x00000008[r27], r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 215
	ld.w LOWW(#_ModuleAddressInfoSize)[r28], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 210
	add r26, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 218
	addi 0x00000006, r28, r6
	movea 0x000000A4, r0, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 223
	ld.w 0x00000008[r27], r5
	movea 0x000000AA, r28, r6
	movea 0x000000A4, r5, r7
	movea 0x00000020, r0, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 227
	ld.w 0x00000008[r27], r5
	movea 0x000000C4, r5, r8
	movea 0x00000040, r0, r9
	mov r26, r6
	mov r25, r7
	jarl32 _VssSM2_Verify, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.3_15
.BB.LABEL.3_11:	; if_break_bb171
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov r26, r6
	jarl32 _free, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 293
	dispose 0x00000000, 0x00000385, [r31]
.BB.LABEL.3_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 238
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.3_1
.BB.LABEL.3_13:	; if_then_bb112
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 243
	movhi HIGHW1(#_ModuleAddressInfoSize), r0, r5
	ld.w LOWW(#_ModuleAddressInfoSize)[r5], r5
	movea 0x000000CA, r5, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 249
	mov r25, r6
	jarl32 _malloc, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 250
	addi 0x00000000, r10, r26
	bz9 .BB.LABEL.3_8
.BB.LABEL.3_14:	; if_break_bb125
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 258
	mov #_g_pSignatureHeader, r27
	ld.w 0x00000000[r27], r7
	mov 0x00000006, r8
	mov r26, r6
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 262
	movhi HIGHW1(#_ModuleAddressInfoSize), r0, r28
	ld.w LOWW(#_ModuleAddressInfoSize)[r28], r8
	ld.w 0x00000004[r27], r7
	addi 0x00000006, r26, r6
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 266
	ld.w 0x00000008[r27], r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 263
	ld.w LOWW(#_ModuleAddressInfoSize)[r28], r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 258
	add r26, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 266
	addi 0x00000006, r28, r6
	movea 0x00000104, r5, r7
	movea 0x000000A4, r0, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 271
	ld.w 0x00000008[r27], r5
	movea 0x000000AA, r28, r6
	movea 0x000001A8, r5, r7
	movea 0x00000020, r0, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 275
	ld.w 0x00000008[r27], r5
	movea 0x000001C8, r5, r8
	movea 0x00000040, r0, r9
	mov r26, r6
	mov r25, r7
	jarl32 _VssEcc256_Verify, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.3_11
.BB.LABEL.3_15:	; if_then_bb167
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov r26, r6
	jarl32 _free, r31
	mov 0x00000005, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 293
	dispose 0x00000000, 0x00000385, [r31]
_SecureProgram_CheckProgrammingIntegrity:
	.stack _SecureProgram_CheckProgrammingIntegrity = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 300
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 305
	jarl32 _SignatureHeader_Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 306
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 312
	jarl _SecureProgram_ValidateSignerInfoSignature, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 313
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_2:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 319
	jarl _SecureProgram_ValidateSignature, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 320
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_3:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 326
	movhi HIGHW1(#_g_pSignatureHeader+0x00000004), r0, r5
	ld.w LOWW(#_g_pSignatureHeader+0x00000004)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_break_bb27.bb47_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 0
	mov 0x00000002, r10
	br9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 328
	jarl _SecureProgram_ValidateFileDigest, r31
.BB.LABEL.4_6:	; bb47
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/SecureProgram/SecureProgram.c", 340
	dispose 0x00000000, 0x00000001, [r31]
