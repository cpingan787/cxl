#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.07.00  [06 Dec 2024]
#@	Command : ..\..\Bsw\SystemServices\vss\Vss.c -oDefaultBuild\Vss.obj -Xcpu=g3kh -Xreg_mode=22 -Xreserve_r2 -Xno_warning=20188,20111 -g -g_line -I..\..\Cpu\uart -I..\..\SrcCode -I..\..\Bsw\SystemServices\vss -I..\..\Bsw\SystemServices\FCL\user -I..\..\Bsw\SystemServices\FCL\lib -I..\..\Bsw\SystemServices\FCL -I..\..\Bsw\SystemServices\WdgM -I..\..\Bsw\SystemServices\WdgIf -I..\..\Bsw\Mcal\wdg\include -I..\..\Bsw\Config\MCAL_Config\Wdg_OutPut\include -I..\..\Bsw\SystemServices\SecureProgram -I..\..\Bsw\SystemServices\SecureBoot -I..\..\Bsw\Mcal\vss -I..\..\Bsw\SystemServices\BootServices\Crc -I..\..\FCL\user -I..\..\FCL\lib -I..\..\FCL -I..\..\Bsw\SystemServices\BootServices -I..\..\Bsw\Config\MCAL_Config\Gpt_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Fls_OutPut\include -I..\..\Bsw\Mcal\gpt\include -I..\..\Bsw\Mcal\fls\include -I..\..\Bsw\SystemServices\BootServices\SecurityManager -I..\..\Bsw\SystemServices\BootServices\MemoryManager -I..\..\Bsw\SystemServices\BootServices\FlsIf -I..\..\Bsw\SystemServices\BootServices\EEIf -I..\..\Bsw\SystemServices\BootServices\EcuMService -I..\..\Bsw\SystemServices\BootServices\Diag_Callout -I..\..\Bsw\SystemServices\BootServices\Dcm -I..\..\Bsw\SystemServices\BootServices\Common -I..\..\Bsw\SystemServices\BootServices\CanTp -I..\..\Bsw\SystemServices\BootServices\CanIf -I..\..\Bsw\SystemServices\BootManager -I..\..\Cpu -I..\..\Bsw\CommonInclude -I..\..\Bsw\Config\BSW_Config -I..\..\Bsw\Config\BSW_Config\RH850F1K -I..\..\Bsw\SystemServices\Os\Extend\inc -I..\..\Bsw\SystemServices\Os\Kernel\inc -I..\..\Bsw\SystemServices\Os\Portable\Mcu -I..\..\Bsw\SystemServices\Os\Portable\Processor -I..\..\Bsw\Config\MCAL_Config\Adc_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Can_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Dio_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Mcu_OutPut\include -I..\..\Bsw\Config\MCAL_Config\Port_OutPut\include -I..\..\Bsw\Mcal\adc\include -I..\..\Bsw\Mcal\can\include -I..\..\Bsw\Mcal\dio\include -I..\..\Bsw\Mcal\general -I..\..\Bsw\Mcal\mcu\include -I..\..\Bsw\Mcal\port\include -I..\..\Bsw\Mcal\stubs\CanGeneral\include -I..\..\Bsw\Mcal\stubs\CanIf\include -I..\..\Bsw\Mcal\stubs\Dem\include -I..\..\Bsw\Mcal\stubs\Det\include -I..\..\Bsw\Mcal\stubs\EcuM\include -I..\..\Bsw\Mcal\stubs\MemIf\include -I..\..\Bsw\Mcal\stubs\SchM\include -DRH850_F1KM_S1_2MB -lang=c99 -Xdbl_size=4 -Xcall_jump=32 -Xasm_path=DefaultBuild -Xasm_option=-Xprn_path=DefaultBuild -c -MAKEUD=DefaultBuild -Xexec_time=C:\Users\xlchen\AppData\Local\Temp\CSPlusBuildTool_977561e22a934eaca7cc6dc529d86af2saa1tfsn.jey
#@	compiled at Thu Jul 16 13:41:43 2026

	.file "..\..\Bsw\SystemServices\vss\Vss.c"

	$reg_mode 22
	.dbl_size 4

	.public _VssCryptoInit
	.extern _VssAdapter_InitSoft
	.public _VssSecocCmacGen
	.extern _VssAdapter_Sm4CMac
	.public _VssGenerateKeyByCode
	.public _VssGetAlgFlag
	.public _VssSetKeyActive
	.public _VssGetKeyActive
	.public _VssSetVSN
	.public _VssGetVSN
	.extern _memcmp
	.extern _memcpy
	.public _VssSM4CalcByKeyId
	.extern _VssAdapter_Sm4Calc
	.public _VssSM4CMacByKeyId
	.public _VssSM3Init
	.extern _VssAdapter_Sm3Init
	.public _VssSM3Update
	.extern _VssAdapter_Sm3Update
	.public _VssSM3Final
	.extern _Crypto_SM3_Final
	.public _VssSM3Calc
	.extern _VssAdapter_Sm3Calc
	.public _VssSHA256Calc
	.public _VssSHA256Init
	.public _VssSHA256Update
	.public _VssSHA256Final
	.extern _VssAdapter_SHA256_Init
	.extern _VssAdapter_SHA256_Update
	.extern _VssAdapter_SHA256_Final
	.public _VssSM2_Verify
	.extern _VssAdapter_SM2_Verify
	.public _VssEcc256_Verify
	.extern _VssAdapter_ECC_Verify
	.public _Vss_Crc32Init
	.extern _VssAdapter_Crc32Init
	.public _Vss_Crc32
	.extern _VssAdapter_Crc32
	.public _Vss_Crc32FinalResult
	.extern _VssAdapter_Crc32FinalResult
	.public _Vss_CRC16_CCITT_False
	.extern _VssAdapter_CRC16_CCITT_False
	.public _Vss_CRC32_CALC
	.extern _VssAdapter_CRC32_CALC
	.public _Vss_CRC8
	.extern _VssAdapter_CRC8

	.section .text, text
_VssCryptoInit:
	.stack _VssCryptoInit = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 71
	prepare 0x00000301, 0x00000004
	mov r6, r25
	mov r7, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 76
	jarl32 _VssAdapter_InitSoft, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 77
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 83
	mov #_gVssCtx.1, r5
	mov 0x00000001, r6
	st.w r6, 0x00000000[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 85
	st.w r25, 0x000000CC[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 87
	st.w r26, 0x000000D0[r5]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 90
	ld.w 0x000000CC[r5], r10
	st.w r6, 0x00000000[r3]
	movea 0x00000024, r5, r9
	mov 0x00000000, r25
	mov r25, r7
	mov r25, r8
	jarl [r10], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 92
	mov r25, r10
.BB.LABEL.1_2:	; bb14
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 93
	dispose 0x00000004, 0x00000301, [r31]
_VssSecocCmacGen:
	.stack _VssSecocCmacGen = 20
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 104
	prepare 0x00000001, 0x00000010
	mov r6, r5
	mov r7, r10
	mov r8, r9
	mov r3, r6
	movea 0x00000010, r0, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 153
	mov #.STR.1, r8
	add r6, r7
	mov r6, r11
	br9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; entry
	ld.b 0x00000000[r8], r12
	st.b r12, 0x00000000[r11]
	add 0x00000001, r8
	add 0x00000001, r11
.BB.LABEL.2_2:	; entry
	cmp r11, r7
	bnz9 .BB.LABEL.2_1
.BB.LABEL.2_3:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 154
	mov r5, r7
	mov r10, r8
	jarl32 _VssAdapter_Sm4CMac, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 158
	dispose 0x00000010, 0x00000001, [r31]
_VssGenerateKeyByCode:
	.stack _VssGenerateKeyByCode = 0
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 171
	movhi HIGHW1(#_gVssCtx.1), r0, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 174
	ld.w LOWW(#_gVssCtx.1)[r5], r5
	cmp 0x00000001, r5
	bz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; entry.bb38_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
	br9 .BB.LABEL.3_7
.BB.LABEL.3_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 180
	cmp 0x00000001, r9
	bh9 .BB.LABEL.3_5
.BB.LABEL.3_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.3_5
.BB.LABEL.3_4:	; if_break_bb
	addi 0xFFFFFFE0, r6, r0
	bz9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; if_break_bb.bb38_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.3_7
.BB.LABEL.3_6:	; if_break_bb36
	mov 0x00000000, r10
.BB.LABEL.3_7:	; bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 189
	jmp [r31]
_VssGetAlgFlag:
	.stack _VssGetAlgFlag = 44
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 200
	prepare 0x00000201, 0x00000024
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 203
	st.b r0, 0x00000023[r3]
	addi 0x00000000, r6, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 208
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; entry.bb62_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	br9 .BB.LABEL.4_9
.BB.LABEL.4_2:	; if_break_bb
	movea 0x00000023, r3, r8
	mov 0x00000000, r7
	mov 0x00000001, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 214
	jarl _VssGetKeyActive, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 215
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_3:	; if_break_bb17
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 221
	ld.bu 0x00000023[r3], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_then_bb23
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 223
	st.b r5, 0x00000000[r25]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 224
	dispose 0x00000024, 0x00000201, [r31]
.BB.LABEL.4_5:	; if_break_bb26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	movea 0x00000020, r0, r7
	movea 0x00000003, r3, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 228
	jarl _VssGetVSN, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 229
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.4_9
.BB.LABEL.4_6:	; if_break_bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 236
	tst1 0x00000000, 0x00000022[r3]
	bnz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000002, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 238
	st.b r5, 0x00000000[r25]
	dispose 0x00000024, 0x00000201, [r31]
.BB.LABEL.4_8:	; if_then_bb55
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000001, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 242
	st.b r5, 0x00000000[r25]
.BB.LABEL.4_9:	; bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 248
	dispose 0x00000024, 0x00000201, [r31]
_VssSetKeyActive:
	.stack _VssSetKeyActive = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 260
	prepare 0x00000001, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 265
	movhi HIGHW1(#_gVssCtx.1), r0, r5
	ld.w LOWW(#_gVssCtx.1)[r5], r5
	cmp 0x00000001, r5
	mov r7, r5
	bz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; entry.bb93_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
	br9 .BB.LABEL.5_15
.BB.LABEL.5_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 271
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r7
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r7], r7
	cmp 0x00000000, r7
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000008, r6
	blt9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_break_bb.bb93_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.5_15
.BB.LABEL.5_5:	; if_break_bb24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 277
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.5_10
.BB.LABEL.5_6:	; if_then_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 280
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.5_4
.BB.LABEL.5_7:	; if_break_bb37
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 286
	movhi HIGHW1(#_gVssCtx.1+0x00000024), r0, r7
	ld.bu LOWW(#_gVssCtx.1+0x00000024)[r7], r7
	cmp r7, r8
	bnz9 .BB.LABEL.5_9
.BB.LABEL.5_8:	; if_break_bb37.bb93_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.5_15
.BB.LABEL.5_9:	; if_then_bb45
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 288
	mov #_gVssCtx.1, r7
	st.b r8, 0x00000024[r7]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 289
	ld.w 0x000000CC[r7], r10
	mov 0x00000001, r8
	st.w r8, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 288
	movea 0x00000024, r7, r9
	br9 .BB.LABEL.5_14
.BB.LABEL.5_10:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 293
	cmp 0x00000003, r6
	bnz9 .BB.LABEL.5_8
.BB.LABEL.5_11:	; if_then_bb56
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 296
	cmp 0x00000001, r5
	bgt9 .BB.LABEL.5_4
.BB.LABEL.5_12:	; if_break_bb64
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 302
	mov #_gVssCtx.1, r7
	add r5, r7
	ld.bu 0x00000046[r7], r9
	cmp r9, r8
	movea 0x00000046, r7, r9
	bz9 .BB.LABEL.5_8
.BB.LABEL.5_13:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 304
	st.b r8, 0x00000000[r9]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 305
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r7
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r7], r10
	mov 0x00000001, r7
	st.w r7, 0x00000000[r3]
.BB.LABEL.5_14:	; if_then_bb75
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000000, r7
	mov r5, r8
	jarl [r10], r31
.BB.LABEL.5_15:	; bb93
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 310
	dispose 0x00000004, 0x00000001, [r31]
_VssGetKeyActive:
	.stack _VssGetKeyActive = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 321
	prepare 0x00000301, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 326
	movhi HIGHW1(#_gVssCtx.1), r0, r5
	ld.w LOWW(#_gVssCtx.1)[r5], r5
	cmp 0x00000001, r5
	mov r8, r25
	mov r7, r8
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_1:	; entry.bb110_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
.BB.LABEL.6_2:	; bb110
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 376
	dispose 0x00000004, 0x00000301, [r31]
.BB.LABEL.6_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 332
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r5
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.6_6
.BB.LABEL.6_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r25
	bz9 .BB.LABEL.6_6
.BB.LABEL.6_5:	; if_break_bb
	cmp 0x00000008, r6
	blt9 .BB.LABEL.6_7
.BB.LABEL.6_6:	; if_break_bb.bb110_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.6_2
.BB.LABEL.6_7:	; if_break_bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 338
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.6_12
.BB.LABEL.6_8:	; if_then_bb40
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 341
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.6_6
.BB.LABEL.6_9:	; if_break_bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 347
	mov #_gVssCtx.1, r5
	ld.w 0x000000CC[r5], r10
	mov 0x00000001, r7
	st.w r7, 0x00000000[r3]
	movea 0x00000024, r5, r9
	jarl [r10], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 348
	cmp 0x00000000, r10
	bz9 .BB.LABEL.6_11
.BB.LABEL.6_10:	; if_break_bb48.bb110_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.6_2
.BB.LABEL.6_11:	; if_break_bb59
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 352
	movhi HIGHW1(#_gVssCtx.1+0x00000024), r0, r5
	ld.b LOWW(#_gVssCtx.1+0x00000024)[r5], r5
	br9 .BB.LABEL.6_18
.BB.LABEL.6_12:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 355
	cmp 0x00000003, r6
	bz9 .BB.LABEL.6_14
.BB.LABEL.6_13:	; if_else_bb.bb110_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.6_2
.BB.LABEL.6_14:	; if_then_bb66
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 358
	cmp 0x00000001, r8
	bgt9 .BB.LABEL.6_6
.BB.LABEL.6_15:	; if_break_bb74
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 364
	mov #_gVssCtx.1, r5
	add r8, r5
	ld.bu 0x00000046[r5], r7
	cmp r25, r7
	movea 0x00000046, r5, r26
	bz9 .BB.LABEL.6_13
.BB.LABEL.6_16:	; if_then_bb85
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 366
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r5
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r5], r5
	mov 0x00000001, r7
	st.w r7, 0x00000000[r3]
	mov r26, r9
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 367
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.6_10
.BB.LABEL.6_17:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 371
	ld.b 0x00000000[r26], r5
.BB.LABEL.6_18:	; if_break_bb99
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	st.b r5, 0x00000000[r25]
	br9 .BB.LABEL.6_13
_VssSetVSN:
	.stack _VssSetVSN = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 387
	prepare 0x00000385, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 392
	movhi HIGHW1(#_gVssCtx.1), r0, r5
	ld.w LOWW(#_gVssCtx.1)[r5], r5
	cmp 0x00000001, r5
	mov r7, r25
	mov r6, r26
	bz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; entry.bb50_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
	br9 .BB.LABEL.7_9
.BB.LABEL.7_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 398
	addi 0xFFFFFFE0, r25, r0
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r5
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r5], r5
	bnz9 .BB.LABEL.7_5
.BB.LABEL.7_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r5
	bz9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_break_bb
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.7_6
.BB.LABEL.7_5:	; if_break_bb.bb50_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.7_9
.BB.LABEL.7_6:	; if_break_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 404
	mov #_gVssCtx.1, r6
	add 0x00000004, r6
	mov r26, r7
	mov r25, r8
	jarl32 _memcmp, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.7_8
.BB.LABEL.7_7:	; if_break_bb34.bb50_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.7_9
.BB.LABEL.7_8:	; if_then_bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 406
	mov #_gVssCtx.1, r27
	addi 0x00000004, r27, r28
	mov r28, r6
	mov r26, r7
	mov r25, r8
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 407
	ld.w 0x000000CC[r27], r5
	movea 0x00000020, r0, r6
	st.w r6, 0x00000000[r3]
	mov 0x00000000, r6
	mov r6, r7
	mov r6, r8
	mov r28, r9
	jarl [r5], r31
.BB.LABEL.7_9:	; bb50
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 411
	dispose 0x00000004, 0x00000385, [r31]
_VssGetVSN:
	.stack _VssGetVSN = 16
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 421
	prepare 0x00000301, 0x00000004
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 426
	movhi HIGHW1(#_gVssCtx.1), r0, r5
	ld.w LOWW(#_gVssCtx.1)[r5], r5
	cmp 0x00000001, r5
	mov r6, r25
	bz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; entry.bb48_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
	br9 .BB.LABEL.8_9
.BB.LABEL.8_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 432
	addi 0xFFFFFFE0, r7, r0
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r5
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r5], r5
	bnz9 .BB.LABEL.8_5
.BB.LABEL.8_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r5
	bz9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; if_break_bb
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.8_6
.BB.LABEL.8_5:	; if_break_bb.bb48_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.8_9
.BB.LABEL.8_6:	; if_break_bb34
	movea 0x00000020, r0, r6
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 438
	st.w r6, 0x00000000[r3]
	mov #_gVssCtx.1, r9
	add 0x00000004, r9
	mov 0x00000001, r7
	mov 0x00000000, r6
	mov r6, r8
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 439
	addi 0x00000000, r10, r26
	bz9 .BB.LABEL.8_8
.BB.LABEL.8_7:	; if_break_bb34.bb48_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.8_9
.BB.LABEL.8_8:	; if_break_bb43
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 445
	mov #_gVssCtx.1, r7
	add 0x00000004, r7
	movea 0x00000020, r0, r8
	mov r25, r6
	jarl32 _memcpy, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 447
	mov r26, r10
.BB.LABEL.8_9:	; bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 448
	dispose 0x00000004, 0x00000301, [r31]
_VssSM4CalcByKeyId:
	.stack _VssSM4CalcByKeyId = 48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 462
	prepare 0x00000B87, 0x00000014
	movea 0x00000010, r0, r5
	mov 0x00000000, r10
	movea 0x00000004, r3, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 465
	add r11, r5
	br9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; entry
	st.b r10, 0x00000000[r11]
	add 0x00000001, r11
.BB.LABEL.9_2:	; entry
	cmp r11, r5
	bnz9 .BB.LABEL.9_1
.BB.LABEL.9_3:	; entry
	st.b r0, 0x00000004[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 468
	movhi HIGHW1(#_gVssCtx.1), r0, r5
	ld.w LOWW(#_gVssCtx.1)[r5], r5
	cmp 0x00000001, r5
	ld.w 0x00000034[r3], r25
	ld.w 0x00000030[r3], r26
	mov r9, r27
	mov r8, r28
	mov r7, r29
	bz9 .BB.LABEL.9_5
.BB.LABEL.9_4:	; entry.bb229_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
	br9 .BB.LABEL.9_28
.BB.LABEL.9_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 474
	cmp 0x00000001, r27
	bgt9 .BB.LABEL.9_11
.BB.LABEL.9_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000008, r6
	bh9 .BB.LABEL.9_11
.BB.LABEL.9_7:	; if_break_bb
	cmp 0x00000000, r29
	bz9 .BB.LABEL.9_11
.BB.LABEL.9_8:	; if_break_bb
	cmp 0x00000000, r26
	bz9 .BB.LABEL.9_11
.BB.LABEL.9_9:	; if_break_bb
	cmp 0x00000000, r25
	bz9 .BB.LABEL.9_11
.BB.LABEL.9_10:	; if_break_bb
	cmp 0x00000000, r28
	bnz9 .BB.LABEL.9_12
.BB.LABEL.9_11:	; if_break_bb.bb229_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.9_28
.BB.LABEL.9_12:	; if_break_bb81
	movea 0x00000010, r0, r9
	movea 0x00000004, r3, r8
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 480
	jarl _VssGetKeyByKeyId.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 482
	andi 0x0000000F, r28, r30
	cmp 0x00000000, r27
	bnz9 .BB.LABEL.9_18
.BB.LABEL.9_13:	; if_then_bb89
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 489
	mov r26, r6
	mov r29, r7
	mov r28, r8
	jarl32 _memcpy, r31
	movea 0x00000010, r0, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 485
	sub r30, r29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 486
	andi 0x0000001F, r29, r30
	add r28, r30
	mov 0x00000000, r5
	br9 .BB.LABEL.9_15
.BB.LABEL.9_14:	; bb102
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 493
	mov r28, r6
	add r5, r6
	add r26, r6
	st.b r29, 0x00000000[r6]
	add 0x00000001, r5
.BB.LABEL.9_15:	; bb111
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 492
	andi 0x0000001F, r29, r6
	cmp r6, r5
	bl9 .BB.LABEL.9_14
.BB.LABEL.9_16:	; bb118
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 497
	st.w r26, 0x00000000[r3]
	mov 0x00000000, r9
	movea 0x00000004, r3, r6
	mov r26, r7
	mov r30, r8
	jarl32 _VssAdapter_Sm4Calc, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 498
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_28
.BB.LABEL.9_17:	; if_break_bb131
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 504
	st.w r30, 0x00000000[r25]
	mov 0x00000000, r10
	dispose 0x00000014, 0x00000B87, [r31]
.BB.LABEL.9_18:	; if_else_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 507
	cmp 0x00000000, r30
	bnz9 .BB.LABEL.9_11
.BB.LABEL.9_19:	; if_break_bb141
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 512
	st.w r26, 0x00000000[r3]
	mov 0x00000001, r9
	movea 0x00000004, r3, r6
	mov r29, r7
	mov r28, r8
	jarl32 _VssAdapter_Sm4Calc, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 513
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.9_28
.BB.LABEL.9_20:	; if_break_bb154
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 519
	mov r28, r5
	add r26, r5
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 522
	ld.bu 0xFFFFFFFF[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.9_27
.BB.LABEL.9_21:	; bb164
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	addi 0xFFFFFFF0, r5, r0
	bgt9 .BB.LABEL.9_27
.BB.LABEL.9_22:	; bb164.bb198_crit_edge
	mov 0x00000000, r6
	br9 .BB.LABEL.9_25
.BB.LABEL.9_23:	; bb178
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 526
	addi 0xFFFFFFFF, r28, r7
	andi 0x000000FF, r6, r8
	sub r8, r7
	add r26, r7
	ld.bu 0x00000000[r7], r7
	cmp r7, r5
	bnz9 .BB.LABEL.9_27
.BB.LABEL.9_24:	; if_break_bb195
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	add 0x00000001, r6
.BB.LABEL.9_25:	; bb198
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 525
	andi 0x000000FF, r6, r7
	cmp r5, r7
	bl9 .BB.LABEL.9_23
.BB.LABEL.9_26:	; if_then_bb213.critedge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 533
	sub r5, r28
.BB.LABEL.9_27:	; if_else_bb223
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	st.w r28, 0x00000000[r25]
	mov 0x00000000, r10
.BB.LABEL.9_28:	; bb229
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 545
	dispose 0x00000014, 0x00000B87, [r31]
_VssSM4CMacByKeyId:
	.stack _VssSM4CMacByKeyId = 36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 557
	prepare 0x00000385, 0x00000010
	movea 0x00000010, r0, r5
	mov 0x00000000, r10
	mov r3, r11
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 560
	add r11, r5
	br9 .BB.LABEL.10_2
.BB.LABEL.10_1:	; entry
	st.b r10, 0x00000000[r11]
	add 0x00000001, r11
.BB.LABEL.10_2:	; entry
	cmp r11, r5
	bnz9 .BB.LABEL.10_1
.BB.LABEL.10_3:	; entry
	st.b r0, 0x00000000[r3]
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 563
	movhi HIGHW1(#_gVssCtx.1), r0, r5
	ld.w LOWW(#_gVssCtx.1)[r5], r5
	cmp 0x00000001, r5
	mov r9, r25
	mov r8, r26
	mov r7, r27
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_4:	; entry.bb68_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	movea 0x0000001B, r0, r10
	br9 .BB.LABEL.10_11
.BB.LABEL.10_5:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 569
	cmp 0x00000008, r6
	bh9 .BB.LABEL.10_9
.BB.LABEL.10_6:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r27
	bz9 .BB.LABEL.10_9
.BB.LABEL.10_7:	; if_break_bb
	cmp 0x00000000, r25
	bz9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; if_break_bb
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.10_10
.BB.LABEL.10_9:	; if_break_bb.bb68_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.10_11
.BB.LABEL.10_10:	; if_break_bb50
	mov r3, r28
	movea 0x00000010, r0, r9
	mov 0x00000002, r7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 575
	mov r28, r8
	jarl _VssGetKeyByKeyId.1, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 578
	mov r28, r6
	mov r27, r7
	mov r26, r8
	mov r25, r9
	jarl32 _VssAdapter_Sm4CMac, r31
.BB.LABEL.10_11:	; bb68
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 584
	dispose 0x00000010, 0x00000385, [r31]
_VssSM3Init:
	.stack _VssSM3Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 594
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 597
	cmp 0x00000000, r6
	bz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 603
	jarl32 _VssAdapter_Sm3Init, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 604
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.11_2:	; bb7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 605
	dispose 0x00000000, 0x00000001, [r31]
_VssSM3Update:
	.stack _VssSM3Update = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 617
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 620
	cmp 0x00000000, r6
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_2:	; entry
	cmp 0x00000000, r8
	bz9 .BB.LABEL.12_4
.BB.LABEL.12_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 626
	jarl32 _VssAdapter_Sm3Update, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 627
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.12_4:	; bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 628
	dispose 0x00000000, 0x00000001, [r31]
_VssSM3Final:
	.stack _VssSM3Final = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 638
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 641
	cmp 0x00000000, r6
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.13_3
.BB.LABEL.13_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 647
	jarl32 _Crypto_SM3_Final, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 648
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.13_3:	; bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 649
	dispose 0x00000000, 0x00000001, [r31]
_VssSM3Calc:
	.stack _VssSM3Calc = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 660
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 663
	cmp 0x00000000, r8
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 669
	jarl32 _VssAdapter_Sm3Calc, r31
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.14_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 670
	dispose 0x00000000, 0x00000001, [r31]
_VssSHA256Calc:
	.stack _VssSHA256Calc = 128
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 681
	prepare 0x00000385, 0x0000006C
	mov r8, r25
	mov r7, r26
	addi 0x00000000, r6, r27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 684
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r25
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_2:	; entry
	cmp 0x00000000, r26
	bz9 .BB.LABEL.15_4
.BB.LABEL.15_3:	; if_break_bb
	mov r3, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 693
	mov r28, r6
	jarl _VssSHA256Init, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 696
	mov r28, r6
	mov r27, r7
	mov r26, r8
	jarl _VssSHA256Update, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 699
	mov r28, r6
	mov r25, r7
	jarl _VssSHA256Final, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 701
	dispose 0x0000006C, 0x00000385, [r31]
.BB.LABEL.15_4:	; bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 702
	dispose 0x0000006C, 0x00000385, [r31]
_VssSHA256Init:
	.stack _VssSHA256Init = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 712
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 715
	cmp 0x00000000, r6
	bz9 .BB.LABEL.16_2
.BB.LABEL.16_1:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 721
	jarl32 _VssAdapter_SHA256_Init, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 723
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.16_2:	; bb7
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 724
	dispose 0x00000000, 0x00000001, [r31]
_VssSHA256Update:
	.stack _VssSHA256Update = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 736
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 739
	cmp 0x00000000, r6
	bz9 .BB.LABEL.17_4
.BB.LABEL.17_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.17_4
.BB.LABEL.17_2:	; entry
	cmp 0x00000000, r8
	bz9 .BB.LABEL.17_4
.BB.LABEL.17_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 745
	jarl32 _VssAdapter_SHA256_Update, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 746
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.17_4:	; bb32
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 747
	dispose 0x00000000, 0x00000001, [r31]
_VssSHA256Final:
	.stack _VssSHA256Final = 4
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 757
	prepare 0x00000001, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 760
	cmp 0x00000000, r6
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.18_3
.BB.LABEL.18_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 766
	jarl32 _VssAdapter_SHA256_Final, r31
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 767
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.18_3:	; bb19
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 768
	dispose 0x00000000, 0x00000001, [r31]
_VssSM2_Verify:
	.stack _VssSM2_Verify = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 781
	prepare 0x00000385, 0x00000004
	mov r9, r25
	mov r8, r26
	mov r7, r27
	addi 0x00000000, r6, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 797
	bz9 .BB.LABEL.19_2
.BB.LABEL.19_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.19_3
.BB.LABEL.19_2:	; entry.bb41_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.19_8
.BB.LABEL.19_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 803
	mov #_gVssCtx.1, r5
	ld.w 0x000000CC[r5], r10
	movea 0x00000041, r0, r6
	st.w r6, 0x00000000[r3]
	movea 0x00000048, r5, r9
	mov 0x00000000, r8
	mov 0x00000001, r7
	mov 0x00000006, r6
	jarl [r10], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 804
	cmp 0x00000000, r10
	bz9 .BB.LABEL.19_5
.BB.LABEL.19_4:	; if_break_bb.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.19_8
.BB.LABEL.19_5:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 810
	mov #_gVssCtx.1, r5
	movea 0x00000048, r5, r5
	st.w r5, 0x00000000[r3]
	mov r28, r6
	mov r27, r7
	mov r26, r8
	mov r25, r9
	jarl32 _VssAdapter_SM2_Verify, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 811
	cmp 0x00000000, r10
	bz9 .BB.LABEL.19_7
.BB.LABEL.19_6:	; if_break_bb27.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	movea 0x00000084, r0, r10
	br9 .BB.LABEL.19_8
.BB.LABEL.19_7:	; if_break_bb39
	mov 0x00000000, r10
.BB.LABEL.19_8:	; bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 817
	dispose 0x00000004, 0x00000385, [r31]
_VssEcc256_Verify:
	.stack _VssEcc256_Verify = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 830
	prepare 0x00000385, 0x00000004
	mov r9, r25
	mov r8, r26
	mov r7, r27
	addi 0x00000000, r6, r28
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 835
	bz9 .BB.LABEL.20_2
.BB.LABEL.20_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r26
	bnz9 .BB.LABEL.20_3
.BB.LABEL.20_2:	; entry.bb41_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.20_8
.BB.LABEL.20_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 841
	mov #_gVssCtx.1, r5
	ld.w 0x000000CC[r5], r10
	movea 0x00000041, r0, r6
	st.w r6, 0x00000000[r3]
	movea 0x00000089, r5, r9
	mov 0x00000000, r8
	mov 0x00000001, r7
	mov 0x00000007, r6
	jarl [r10], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 842
	cmp 0x00000000, r10
	bz9 .BB.LABEL.20_5
.BB.LABEL.20_4:	; if_break_bb.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.20_8
.BB.LABEL.20_5:	; if_break_bb27
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 848
	mov #_gVssCtx.1, r5
	movea 0x00000089, r5, r5
	st.w r5, 0x00000000[r3]
	mov r28, r6
	mov r27, r7
	mov r26, r8
	mov r25, r9
	jarl32 _VssAdapter_ECC_Verify, r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 849
	cmp 0x00000000, r10
	bz9 .BB.LABEL.20_7
.BB.LABEL.20_6:	; if_break_bb27.bb41_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	movea 0x00000084, r0, r10
	br9 .BB.LABEL.20_8
.BB.LABEL.20_7:	; if_break_bb39
	mov 0x00000000, r10
.BB.LABEL.20_8:	; bb41
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 855
	dispose 0x00000004, 0x00000385, [r31]
_Vss_Crc32Init:
	.stack _Vss_Crc32Init = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 866
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 869
	cmp 0x00000000, r6
	mov r8, r25
	bz9 .BB.LABEL.21_3
.BB.LABEL.21_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r25
	bz9 .BB.LABEL.21_3
.BB.LABEL.21_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 875
	jarl32 _VssAdapter_Crc32Init, r31
	st.w r10, 0x00000000[r25]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 877
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.21_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 878
	dispose 0x00000000, 0x00000201, [r31]
_Vss_Crc32:
	.stack _Vss_Crc32 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 891
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 894
	cmp 0x00000000, r6
	ld.w 0x00000008[r3], r25
	bz9 .BB.LABEL.22_5
.BB.LABEL.22_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r25
	bz9 .BB.LABEL.22_5
.BB.LABEL.22_2:	; bb17
	cmp 0x00000000, r9
	bz9 .BB.LABEL.22_4
.BB.LABEL.22_3:	; bb17
	cmp 0x00000000, r8
	bz9 .BB.LABEL.22_5
.BB.LABEL.22_4:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 900
	jarl32 _VssAdapter_Crc32, r31
	st.w r10, 0x00000000[r25]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 902
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.22_5:	; bb48
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 903
	dispose 0x00000000, 0x00000201, [r31]
_Vss_Crc32FinalResult:
	.stack _Vss_Crc32FinalResult = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 914
	prepare 0x00000201, 0x00000000
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 917
	cmp 0x00000000, r6
	mov r8, r25
	bz9 .BB.LABEL.23_3
.BB.LABEL.23_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r25
	bz9 .BB.LABEL.23_3
.BB.LABEL.23_2:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 923
	jarl32 _VssAdapter_Crc32FinalResult, r31
	st.w r10, 0x00000000[r25]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 925
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.23_3:	; bb22
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 926
	dispose 0x00000000, 0x00000201, [r31]
_Vss_CRC16_CCITT_False:
	.stack _Vss_CRC16_CCITT_False = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 938
	prepare 0x00000201, 0x00000000
	addi 0x00000000, r9, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 941
	bz9 .BB.LABEL.24_4
.BB.LABEL.24_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.24_3
.BB.LABEL.24_2:	; bb
	cmp 0x00000000, r6
	bz9 .BB.LABEL.24_4
.BB.LABEL.24_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 947
	jarl32 _VssAdapter_CRC16_CCITT_False, r31
	st.h r10, 0x00000000[r25]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 949
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.24_4:	; bb36
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 950
	dispose 0x00000000, 0x00000201, [r31]
_Vss_CRC32_CALC:
	.stack _Vss_CRC32_CALC = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 962
	prepare 0x00000201, 0x00000000
	addi 0x00000000, r9, r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 965
	bz9 .BB.LABEL.25_4
.BB.LABEL.25_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.25_3
.BB.LABEL.25_2:	; bb
	cmp 0x00000000, r6
	bz9 .BB.LABEL.25_4
.BB.LABEL.25_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 971
	jarl32 _VssAdapter_CRC32_CALC, r31
	st.w r10, 0x00000000[r25]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 973
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.25_4:	; bb35
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 974
	dispose 0x00000000, 0x00000201, [r31]
_Vss_CRC8:
	.stack _Vss_CRC8 = 8
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 987
	prepare 0x00000201, 0x00000000
	ld.w 0x00000008[r3], r25
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 990
	cmp 0x00000000, r25
	bz9 .BB.LABEL.26_4
.BB.LABEL.26_1:	; bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.26_3
.BB.LABEL.26_2:	; bb
	cmp 0x00000000, r6
	bz9 .BB.LABEL.26_4
.BB.LABEL.26_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 996
	jarl32 _VssAdapter_CRC8, r31
	st.b r10, 0x00000000[r25]
	mov 0x00000000, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 998
	dispose 0x00000000, 0x00000201, [r31]
.BB.LABEL.26_4:	; bb38
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000004, r10
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 999
	dispose 0x00000000, 0x00000201, [r31]
_VssGetKeyByKeyId.1:
	.stack _VssGetKeyByKeyId.1 = 24
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 1011
	prepare 0x00000385, 0x00000004
	mov r9, r25
	addi 0x00000000, r8, r26
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 1017
	bz9 .BB.LABEL.27_2
.BB.LABEL.27_1:	; entry
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	cmp 0x00000000, r25
	bnz9 .BB.LABEL.27_3
.BB.LABEL.27_2:	; entry.bb62_crit_edge
	mov 0x00000004, r10
	br9 .BB.LABEL.27_9
.BB.LABEL.27_3:	; if_break_bb
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 1023
	movhi HIGHW1(#_gVssCtx.1+0x000000CC), r0, r5
	ld.w LOWW(#_gVssCtx.1+0x000000CC)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.27_5
.BB.LABEL.27_4:	; if_break_bb.bb62_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000009, r10
	br9 .BB.LABEL.27_9
.BB.LABEL.27_5:	; if_break_bb29
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 1029
	cmp 0x00000002, r7
	bz9 .BB.LABEL.27_7
.BB.LABEL.27_6:	; if_break_bb29.bb62_crit_edge
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 0
	mov 0x00000000, r10
	br9 .BB.LABEL.27_9
.BB.LABEL.27_7:	; if_then_bb34
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 1032
	st.w r25, 0x00000000[r3]
	mov r6, r8
	shl 0x00000004, r8
	mov #_gVssCtx.1, r9
	add r8, r9
	movea 0x00000026, r9, r27
	andi 0x000000FF, r6, r8
	mov 0x00000001, r9
	mov r7, r6
	mov r9, r7
	mov r27, r9
	jarl [r5], r31
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 1033
	addi 0x00000000, r10, r28
	bnz9 .BB.LABEL.27_4
.BB.LABEL.27_8:	; if_break_bb51
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 1038
	mov r26, r6
	mov r27, r7
	mov r25, r8
	jarl32 _memcpy, r31
	mov r28, r10
.BB.LABEL.27_9:	; bb62
	.line "D:/wk/sirun/project/dazhong/A/svw_vehicle_a_rh850/boot/Bsw/SystemServices/vss/Vss.c", 1042
	dispose 0x00000004, 0x00000385, [r31]
	.section .bss, bss
	.align 4
_gVssCtx.1:
	.ds (212)
	.section .const, const
.STR.1:
	.db 0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C,0x0D,0x0E,0x0F,0x10
